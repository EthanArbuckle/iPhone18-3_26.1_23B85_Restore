void dec_free_mi(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    free(*(v2 - 8));
  }

  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v3 = *(a1 + 48);
  if (v3)
  {
    free(*(v3 - 8));
  }

  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v4 = *(a1 + 64);
  if (v4)
  {
    free(*(v4 - 8));
  }

  *(a1 + 64) = 0;
}

uint64_t dec_set_mb_mi(uint64_t result, int a2, int a3)
{
  v3 = (a2 + 7) >> 2;
  *(result + 16) = v3 & 0xFFFFFFFE;
  v4 = (a3 + 7) >> 2;
  v5 = v4 & 0xFFFFFFFE;
  v6 = ((v3 & 0xFFFFFFFE) + 31) & 0xFFFFFFE0;
  *(result + 60) = v6;
  v7 = (v3 + 2) >> 2;
  v8 = (v4 + 2) >> 2;
  *result = v8;
  *(result + 4) = v7;
  *(result + 8) = v8 * v7;
  *(result + 12) = v5;
  *(result + 40) = 0;
  *(result + 36) = v6;
  return result;
}

uint64_t av1_set_reference_dec(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  if (*(*(a1 + 24680) + 77))
  {
    v5 = 1;
  }

  else
  {
    v5 = 3;
  }

  if (a2 > 7 || (v6 = *(a1 + 8 * a2 + 416)) == 0)
  {
    aom_internal_error(*(a1 + 48), 1, "No reference frame");
    return 1;
  }

  v7 = (v6 + 1248);
  v8 = *(v6 + 1256);
  v9 = *(a4 + 8);
  if (a3)
  {
    if (v8 == v9 && *v7 == *a4 && *(v6 + 1260) == *(a4 + 12) && *(v6 + 1252) == *(a4 + 4) && *(v6 + 1280) == *(a4 + 32) && *(v6 + 1284) == *(a4 + 36) && *(v6 + 1360) == *(a4 + 112) && ((*(a4 + 176) ^ *(v6 + 1424)) & 8) == 0)
    {
      *(v6 + 1320) = *(v6 + 1288);
      *(v6 + 1336) = *(v6 + 1304);
      *(v6 + 1288) = *(a4 + 40);
      *(v6 + 1296) = *(a4 + 48);
      *(v6 + 1304) = *(a4 + 56);
      *(v6 + 1312) = 1;
      return **(a1 + 48);
    }

    goto LABEL_22;
  }

  if (v8 != v9 || *v7 != *a4 || *(v6 + 1260) != *(a4 + 12) || *(v6 + 1252) != *(a4 + 4))
  {
LABEL_22:
    v11 = a1;
    aom_internal_error(*(a1 + 48), 1, "Incorrect buffer dimensions");
    return **(v11 + 48);
  }

  v11 = a1;
  aom_yv12_copy_frame_c(a4, v7, v5);
  return **(v11 + 48);
}

uint64_t av1_copy_new_frame_dec(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (*(*(a1 + 24680) + 77))
  {
    v4 = 1;
  }

  else
  {
    v4 = 3;
  }

  if (*(a2 + 8) == a3[2] && *a2 == *a3 && *(a2 + 12) == a3[3] && *(a2 + 4) == a3[1] && *(a2 + 32) == a3[8] && *(a2 + 36) == a3[9] && *(a2 + 112) == a3[28] && ((a3[44] ^ *(a2 + 176)) & 8) == 0)
  {
    aom_yv12_copy_frame_c(a2, a3, v4);
    return **(a1 + 48);
  }

  else
  {
    aom_internal_error(*(a1 + 48), 1, "Incorrect buffer dimensions");
    return **(a1 + 48);
  }
}

uint64_t av1_receive_compressed_data(uint64_t a1, uint64_t a2, unsigned __int8 **a3)
{
  v6 = (a1 + 390868);
  v51 = a1 + 15200;
  v7 = *a3;
  *(a1 + 390868) = 0;
  if (!a2)
  {
    v15 = *(a1 + 15440);
    if (v15 != -1)
    {
      v16 = *(v51 + 8 * v15 + 416);
      if (v16)
      {
        *(v16 + 1420) = 1;
      }
    }
  }

  v8 = *(a1 + 15432);
  if (v8)
  {
    --*v8;
    *(a1 + 15432) = 0;
  }

  v9 = *(a1 + 40496);
  v10 = *(v9 + 88);
  pthread_mutex_lock(v9);
  v11 = *(v51 + 25296);
  v12 = v11[1].__opaque[24];
  if (!v11[1].__opaque[24])
  {
    goto LABEL_12;
  }

  v13 = v10;
  v14 = 0;
  while (*v13)
  {
    v13 += 5682;
    if (v12 == ++v14)
    {
      goto LABEL_12;
    }
  }

  v18 = v14;
  if (v14 == v12)
  {
LABEL_12:
    pthread_mutex_unlock(v11);
LABEL_13:
    *v6 = 2;
    return 1;
  }

  v19 = &v10[5682 * v14];
  if (v19[328])
  {
    *(v19 + 161) = *(v19 + 165);
    *(v19 + 81) = *(v19 + 83);
    v19[328] = 0;
    v11 = *(v51 + 25296);
  }

  *v19 = 1;
  pthread_mutex_unlock(v11);
  if (v18 == -1)
  {
    goto LABEL_13;
  }

  v20 = *(*(v51 + 25296) + 88) + 22728 * v18;
  *(v51 + 232) = v20;
  *(v20 + 1452) = 0u;
  if (!*(v51 + 232))
  {
    goto LABEL_13;
  }

  v21 = (a1 + 40496);
  if (setjmp((a1 + 391080)))
  {
    v6[52] = 0;
    off_28100B660[0]();
    if (*(a1 + 41224) >= 1)
    {
      v22 = 0;
      v23 = 0;
      do
      {
        v24 = v22;
        v25 = v23;
        off_28100B660[0]();
        v22 = v24 + 1;
        v23 = v25 + 56;
      }

      while (v24 + 1 < *(a1 + 41224));
    }

    v26 = *v21;
    v27 = *v21;
    *(*(a1 + 15432) + 1420) = 1;
    pthread_mutex_lock(v26);
    v28 = *(a1 + 15432);
    if (v28)
    {
      v29 = (*v28)-- == 1;
      if (v29)
      {
        if (*(v28 + 1224))
        {
          v30 = (v28 + 1224);
          (*&v27[1].__opaque[8])(v27[1].__sig, v28 + 1224);
          v30[1] = 0;
          v30[2] = 0;
          *v30 = 0;
        }
      }
    }

    pthread_mutex_unlock(v27);
    *(a1 + 15432) = 0;
    return 0xFFFFFFFFLL;
  }

  v6[52] = 1;
  v31 = aom_decode_frame_from_obus(a1, v7, &v7[a2], a3);
  v32 = *v21;
  if (v31 < 0)
  {
    *(*(a1 + 15432) + 1420) = 1;
    pthread_mutex_lock(v32);
    v37 = *(a1 + 15432);
    if (v37)
    {
      v29 = (*v37)-- == 1;
      if (v29)
      {
        if (*(v37 + 1224))
        {
          v38 = (v37 + 1224);
          (*&v32[1].__opaque[8])(v32[1].__sig, v37 + 1224);
          v38[1] = 0;
          v38[2] = 0;
          *v38 = 0;
        }
      }
    }

    pthread_mutex_unlock(v32);
    *(a1 + 15432) = 0;
    goto LABEL_77;
  }

  v33 = v31;
  pthread_mutex_lock(v32);
  if (v33)
  {
    if (!*(a1 + 363936))
    {
      v41 = *(a1 + 15236);
      if (v41)
      {
        v42 = (a1 + 15616);
        do
        {
          v44 = v41;
          if (v41)
          {
            v45 = *v42;
            if (*v42)
            {
              v29 = (*v45)-- == 1;
              if (v29)
              {
                if (*(v45 + 1224))
                {
                  v46 = (v45 + 1224);
                  (*&v32[1].__opaque[8])(v32[1].__sig, v45 + 1224);
                  v46[1] = 0;
                  v46[2] = 0;
                  *v46 = 0;
                }
              }
            }

            v43 = *(a1 + 15432);
            *v42 = v43;
            ++*v43;
          }

          v41 = v44 >> 1;
          ++v42;
        }

        while (v44 > 1);
      }
    }

    if (*(a1 + 15688) || *(a1 + 15680))
    {
      v34 = *(a1 + 363864);
      if (*(a1 + 363824))
      {
        v35 = *(a1 + 15432);
        if (v34 >= 4)
        {
          *(v35 + 1420) = 1;
          v29 = (*v35)-- == 1;
          if (v29 && *(v35 + 1224))
          {
            v36 = (v35 + 1224);
            (*&v32[1].__opaque[8])(v32[1].__sig, v35 + 1224);
            v36[1] = 0;
            v36[2] = 0;
            *v36 = 0;
          }

          *v6 = 5;
          goto LABEL_72;
        }

        *(a1 + 8 * v34 + 363832) = v35;
        v49 = v34 + 1;
      }

      else
      {
        if (v34)
        {
          v47 = *(a1 + 363832);
          if (v47)
          {
            v29 = (*v47)-- == 1;
            if (v29)
            {
              if (*(v47 + 1224))
              {
                v48 = (v47 + 1224);
                (*&v32[1].__opaque[8])(v32[1].__sig, v47 + 1224);
                v48[1] = 0;
                v48[2] = 0;
                *v48 = 0;
              }
            }
          }
        }

        *(a1 + 363832) = *(a1 + 15432);
        v49 = 1;
      }

      *(a1 + 363864) = v49;
      goto LABEL_72;
    }
  }

  v39 = *(a1 + 15432);
  if (v39)
  {
    v29 = (*v39)-- == 1;
    if (v29)
    {
      if (*(v39 + 1224))
      {
        v40 = (v39 + 1224);
        (*&v32[1].__opaque[8])(v32[1].__sig, v39 + 1224);
        v40[1] = 0;
        v40[2] = 0;
        *v40 = 0;
      }
    }
  }

LABEL_72:
  pthread_mutex_unlock(v32);
  *(a1 + 15432) = 0;
  if (!*(a1 + 363936))
  {
    *(a1 + 15456) = -1;
    *(a1 + 15448) = -1;
    *(a1 + 15440) = -1;
    *(a1 + 15464) = -1;
  }

  if (v33)
  {
    *(a1 + 363872) = 0;
  }

  if (*v6)
  {
LABEL_77:
    v6[52] = 0;
    return 1;
  }

  if (!*(v51 + 488) && *(v51 + 18992))
  {
    v50 = *(v51 + 224);
    if (v50)
    {
      if (*(v51 + 532) == *(*(v51 + 224) + 260) && *(v51 + 536) == *(*(v51 + 224) + 264))
      {
        v50 = *(*(v51 + 224) + 80);
      }

      else
      {
        v50 = 0;
      }
    }

    *(v51 + 19168) = v50;
  }

  v6[52] = 0;
  return 0;
}

void av1_read_coeffs_txb(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, unsigned int a7, double a8, int8x16_t a9)
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v1077 = *MEMORY[0x277D85DE8];
  v14 = **(a2 + 7864);
  v15 = a4;
  v1072 = a2 + 16;
  v16 = a2 + 16 + 2608 * a4;
  v1060 = v14;
  *v1061 = av1_ss_size_lookup[4 * *v14 + 2 * *(v16 + 4) + *(v16 + 8)];
  v17 = a6;
  v19 = *(v16 + 112);
  v18 = *(v16 + 120);
  v1059 = v16;
  v20 = (v19 + a6);
  v1057 = a5;
  v21 = (v18 + a5);
  if (a7 > 1)
  {
    if (a7 == 2)
    {
      v70 = *v20;
      v71 = v20[1];
      v72 = v20[2];
      v73 = v20[3];
      v74 = *v21;
      v75 = v21[1];
      v76 = v21[2];
      v77 = v21[3];
      v26 = get_txb_ctx_general_dc_sign_contexts[get_txb_ctx_general_signs[v71 >> 3] + 32 + get_txb_ctx_general_signs[v70 >> 3] + get_txb_ctx_general_signs[v72 >> 3] + get_txb_ctx_general_signs[v73 >> 3] + get_txb_ctx_general_signs[v74 >> 3] + get_txb_ctx_general_signs[v75 >> 3] + get_txb_ctx_general_signs[v76 >> 3] + get_txb_ctx_general_signs[v77 >> 3]];
      if (a4)
      {
        v78 = *v20;
        v28 = 10;
        if (((0x30FF80uLL >> SLOBYTE(v1061[0])) & 1) == 0)
        {
          v28 = 7;
        }

        v29 = v78 == 0;
        v30 = *v21;
        goto LABEL_41;
      }

      if (v1061[0] != 6)
      {
        v99 = v71 | v70 | v72 | v73;
        LODWORD(v100) = v99 & 7;
        v101 = v75 | v74 | v76 | v77;
        goto LABEL_93;
      }

LABEL_83:
      v55 = 0;
      goto LABEL_166;
    }

    if (a7 != 3)
    {
LABEL_20:
      LODWORD(v56) = tx_size_wide_unit_3[a7];
      LODWORD(v57) = tx_size_high_unit_3[a7];
      if (v56 <= 1)
      {
        v56 = 1;
      }

      else
      {
        v56 = v56;
      }

      if ((0x2021uLL >> a7))
      {
        v60 = 0;
        v65 = 0;
      }

      else
      {
        v58 = 0;
        v59 = 0;
        v60 = v56 & 0x7FFFFFFE;
        v61 = (a6 + v19 + 1);
        v62 = v60;
        do
        {
          v63 = *(v61 - 1);
          v64 = *v61;
          v61 += 2;
          v58 += get_txb_ctx_general_signs[v63 >> 3];
          v59 += get_txb_ctx_general_signs[v64 >> 3];
          v62 -= 2;
        }

        while (v62);
        v65 = v59 + v58;
        if (v60 == v56)
        {
          goto LABEL_50;
        }
      }

      v80 = v56 - v60;
      v81 = (v19 + v60 + a6);
      do
      {
        v82 = *v81++;
        v65 += get_txb_ctx_general_signs[v82 >> 3];
        --v80;
      }

      while (v80);
LABEL_50:
      if (v57 <= 1)
      {
        v57 = 1;
      }

      else
      {
        v57 = v57;
      }

      if ((0x4041uLL >> a7))
      {
        v84 = 0;
      }

      else
      {
        v83 = 0;
        v84 = v57 & 0x7FFFFFFE;
        v85 = (v1057 + v18 + 1);
        v86 = v84;
        do
        {
          v87 = *(v85 - 1);
          v88 = *v85;
          v85 += 2;
          v65 += get_txb_ctx_general_signs[v87 >> 3];
          v83 += get_txb_ctx_general_signs[v88 >> 3];
          v86 -= 2;
        }

        while (v86);
        v65 += v83;
        if (v84 == v57)
        {
LABEL_61:
          v26 = get_txb_ctx_general_dc_sign_contexts[v65 + 32];
          if (v11)
          {
            switch(a7)
            {
              case 0u:
                v92 = *v20;
                goto LABEL_145;
              case 1u:
                v131 = *v20;
                goto LABEL_154;
              case 2u:
                v127 = *v20 == 0;
                goto LABEL_149;
              case 3u:
                v125 = *v20;
                goto LABEL_130;
              case 4u:
                v123 = *(v20 + 1) | *v20;
                goto LABEL_123;
              case 5u:
                v131 = *v20;
                goto LABEL_154;
              case 6u:
                v92 = *v20;
                goto LABEL_145;
              case 7u:
                v127 = *v20 == 0;
                goto LABEL_149;
              case 8u:
                v131 = *v20;
LABEL_154:
                v122 = v131 == 0;
                goto LABEL_155;
              case 9u:
                v126 = *v20;
                goto LABEL_128;
              case 0xAu:
                v133 = *v20;
                goto LABEL_148;
              case 0xBu:
                v123 = *v20;
LABEL_123:
                v124 = v123 == 0;
                goto LABEL_138;
              case 0xCu:
                v125 = *(v20 + 1) | *v20;
LABEL_130:
                v128 = v125 == 0;
                goto LABEL_131;
              case 0xDu:
                v127 = *v20 == 0;
                goto LABEL_149;
              case 0xEu:
                v92 = *v20;
LABEL_145:
                v129 = v92 != 0;
                v132 = *v21;
                goto LABEL_159;
              case 0xFu:
                v126 = *v20;
LABEL_128:
                v128 = v126 == 0;
LABEL_131:
                v129 = !v128;
                v130 = *v21 == 0;
                goto LABEL_160;
              case 0x10u:
                v122 = *v20 == 0;
LABEL_155:
                v129 = !v122;
                v132 = *v21;
                goto LABEL_159;
              case 0x11u:
                v124 = *v20 == 0;
LABEL_138:
                v129 = !v124;
                v130 = *v21 == 0;
                goto LABEL_160;
              case 0x12u:
                v133 = *(v20 + 1) | *v20;
LABEL_148:
                v127 = v133 == 0;
LABEL_149:
                v129 = !v127;
                v132 = *v21;
LABEL_159:
                v130 = v132 == 0;
LABEL_160:
                v134 = !v130;
                break;
              default:
                v129 = 0;
                v134 = 0;
                break;
            }

            v135 = v134 + v129;
            v136 = 7;
            if (num_pels_log2_lookup_7[*v1061] > num_pels_log2_lookup_7[txsize_to_bsize_3[a7]])
            {
              v136 = 10;
            }

            v55 = v135 + v136;
            goto LABEL_166;
          }

          if (txsize_to_bsize_3[a7] == v1061[0])
          {
            goto LABEL_83;
          }

          if ((0xA0E3uLL >> a7))
          {
            v93 = 0;
            v98 = 0;
          }

          else
          {
            v93 = v56 & 0x7FFFFFFC;
            v94 = 0uLL;
            v95 = v93;
            do
            {
              v96 = *v20;
              v20 += 4;
              a9.i32[0] = v96;
              a9 = vmovl_u16(*&vmovl_u8(*a9.i8));
              v94 = vorrq_s8(v94, a9);
              v95 -= 4;
            }

            while (v95);
            a9.i64[0] = vextq_s8(v94, v94, 8uLL).u64[0];
            v97 = vorr_s8(*v94.i8, *a9.i8);
            v98 = v97.i8[0] | v97.i8[4];
            if (v93 == v56)
            {
LABEL_104:
              if ((0x14163uLL >> a7))
              {
                v111 = 0;
                v116 = 0;
              }

              else
              {
                v111 = v57 & 0x7FFFFFFC;
                v112 = 0uLL;
                v113 = v111;
                do
                {
                  v114 = *v21;
                  v21 += 4;
                  a9.i32[0] = v114;
                  a9 = vmovl_u16(*&vmovl_u8(*a9.i8));
                  v112 = vorrq_s8(v112, a9);
                  v113 -= 4;
                }

                while (v113);
                v115 = vorr_s8(*v112.i8, *&vextq_s8(v112, v112, 8uLL));
                v116 = v115.i8[0] | v115.i8[4];
                if (v111 == v57)
                {
LABEL_112:
                  if ((v98 & 4) != 0)
                  {
                    v120 = 4;
                  }

                  else
                  {
                    v120 = v98 & 7;
                  }

                  if ((v116 & 4) != 0)
                  {
                    v121 = 4;
                  }

                  else
                  {
                    v121 = v116 & 7;
                  }

                  v55 = get_txb_ctx_general_skip_contexts[4 * v120 + v120 + v121];
                  goto LABEL_166;
                }
              }

              v117 = v57 - v111;
              v118 = (v18 + v111 + v1057);
              do
              {
                v119 = *v118++;
                v116 |= v119;
                --v117;
              }

              while (v117);
              goto LABEL_112;
            }
          }

          v108 = v56 - v93;
          v109 = (v19 + v93 + a6);
          do
          {
            v110 = *v109++;
            v98 |= v110;
            --v108;
          }

          while (v108);
          goto LABEL_104;
        }
      }

      v89 = v57 - v84;
      v90 = (v18 + v84 + v1057);
      do
      {
        v91 = *v90++;
        v65 += get_txb_ctx_general_signs[v91 >> 3];
        --v89;
      }

      while (v89);
      goto LABEL_61;
    }

    v31 = a4;
    v34 = a6;
    v35 = *v20;
    v36 = v20[1];
    v37 = v20[2];
    v38 = v20[3];
    v39 = v20[4];
    v40 = v20[5];
    v41 = v20[6];
    v42 = v20[7];
    v43 = *v21;
    v44 = v21[1];
    v45 = v21[2];
    v46 = v21[3];
    v47 = v21[4];
    v48 = v21[5];
    v49 = v21[6];
    v50 = v21[7];
    v26 = get_txb_ctx_general_dc_sign_contexts[get_txb_ctx_general_signs[v36 >> 3] + 32 + get_txb_ctx_general_signs[v35 >> 3] + get_txb_ctx_general_signs[v37 >> 3] + get_txb_ctx_general_signs[v38 >> 3] + get_txb_ctx_general_signs[v39 >> 3] + get_txb_ctx_general_signs[v40 >> 3] + get_txb_ctx_general_signs[v41 >> 3] + get_txb_ctx_general_signs[v42 >> 3] + get_txb_ctx_general_signs[v43 >> 3] + get_txb_ctx_general_signs[v44 >> 3] + get_txb_ctx_general_signs[v45 >> 3] + get_txb_ctx_general_signs[v46 >> 3] + get_txb_ctx_general_signs[v47 >> 3] + get_txb_ctx_general_signs[v48 >> 3] + get_txb_ctx_general_signs[v49 >> 3] + get_txb_ctx_general_signs[v50 >> 3]];
    if (v11)
    {
      v51 = *v20;
      v52 = 7;
      if ((*v1061 - 10) < 6)
      {
        v52 = 10;
      }

      v29 = v51 == 0;
      v53 = *v21;
      if (v29)
      {
        v54 = v52;
      }

      else
      {
        v54 = v52 + 1;
      }

      if (v53)
      {
        v55 = v54 + 1;
      }

      else
      {
        v55 = v54;
      }

      v17 = v34;
      v10 = a5;
      v9 = a6;
      v14 = v1060;
      v15 = v31;
    }

    else
    {
      v15 = v31;
      if (v1061[0] == 9)
      {
        v55 = 0;
      }

      else
      {
        v105 = v36 | v35 | v37 | v38 | v39 | v40 | v41 | v42;
        if ((v105 & 4) != 0)
        {
          v106 = 4;
        }

        else
        {
          v106 = v105 & 7;
        }

        if ((((v44 | v43 | v45 | v46 | v47 | v48 | v49) | v50) & 4) != 0)
        {
          v107 = 4;
        }

        else
        {
          v107 = ((v44 | v43 | v45 | v46 | v47 | v48 | v49) | v50) & 7;
        }

        v55 = get_txb_ctx_general_skip_contexts[4 * v106 + v106 + v107];
      }

      v17 = v34;
      v10 = a5;
      v9 = a6;
      v14 = v1060;
    }
  }

  else
  {
    if (a7)
    {
      if (a7 == 1)
      {
        v22 = *v20;
        v23 = v20[1];
        v24 = *v21;
        v25 = v21[1];
        v26 = get_txb_ctx_general_dc_sign_contexts[get_txb_ctx_general_signs[v22 >> 3] + 32 + get_txb_ctx_general_signs[v23 >> 3] + get_txb_ctx_general_signs[v24 >> 3] + get_txb_ctx_general_signs[v25 >> 3]];
        if (a4)
        {
          v27 = *v20;
          v28 = 10;
          if (((0x3CFFF0uLL >> SLOBYTE(v1061[0])) & 1) == 0)
          {
            v28 = 7;
          }

          v29 = v27 == 0;
          v30 = *v21;
LABEL_41:
          if (v29)
          {
            v79 = v28;
          }

          else
          {
            v79 = v28 + 1;
          }

          if (v30)
          {
            v55 = v79 + 1;
          }

          else
          {
            v55 = v79;
          }

          goto LABEL_166;
        }

        if (v1061[0] != 3)
        {
          v99 = v23 | v22;
          LODWORD(v100) = v99 & 7;
          v101 = v25 | v24;
LABEL_93:
          if ((v99 & 4) != 0)
          {
            v100 = 4;
          }

          else
          {
            v100 = v100;
          }

          if ((v101 & 4) != 0)
          {
            v103 = 4;
          }

          else
          {
            v103 = v101 & 7;
          }

          v104 = v100 + 4 * v100;
LABEL_100:
          v55 = get_txb_ctx_general_skip_contexts[v104 + v103];
          goto LABEL_166;
        }

        goto LABEL_83;
      }

      goto LABEL_20;
    }

    v66 = *v20;
    v67 = *v21;
    v26 = get_txb_ctx_general_dc_sign_contexts[get_txb_ctx_general_signs[v66 >> 3] + 32 + get_txb_ctx_general_signs[v67 >> 3]];
    if (!a4)
    {
      if (av1_ss_size_lookup[4 * *v14 + 2 * *(v16 + 4) + *(v16 + 8)])
      {
        if ((v66 & 4) != 0)
        {
          v102 = 4;
        }

        else
        {
          v102 = v66 & 7;
        }

        if ((v67 & 4) != 0)
        {
          v103 = 4;
        }

        else
        {
          v103 = v67 & 7;
        }

        v104 = v102 + 4 * v102;
        goto LABEL_100;
      }

      goto LABEL_83;
    }

    v68 = 10;
    if (!av1_ss_size_lookup[4 * *v14 + 2 * *(v16 + 4) + *(v16 + 8)])
    {
      v68 = 7;
    }

    if (v66)
    {
      v69 = v68 + 1;
    }

    else
    {
      v69 = v68;
    }

    if (v67)
    {
      v55 = v69 + 1;
    }

    else
    {
      v55 = v69;
    }
  }

LABEL_166:
  v137 = *(a2 + 10648);
  v138 = 1 << (*(a2 + 10656) + 7);
  v139 = txsize_sqr_map_2[a7] + txsize_sqr_up_map_1[a7] + 1;
  v140 = v139 >> 1;
  v141 = v1072 + 2608 * v15 + 4 * (*(v14 + 167) & 7);
  v142 = a2 + 8 * v15;
  v143 = a2 + 2 * v15;
  v1070 = *(v142 + 15080) + 4 * *(v143 + 15104);
  if (a7 > 16)
  {
    if (a7 == 17)
    {
      LOBYTE(v1075) = 5;
      v145 = 16;
      goto LABEL_180;
    }

    if (a7 == 18)
    {
      LOBYTE(v1075) = 4;
      v145 = 32;
      goto LABEL_180;
    }

    goto LABEL_174;
  }

  v144 = 3;
  if (a7 - 11 >= 2 && a7 != 4)
  {
LABEL_174:
    v144 = a7;
  }

  v1075 = tx_size_high_log2_3[v144];
  if (a7 <= 16 && (a7 - 11 < 2 || a7 == 4))
  {
    v145 = 32;
  }

  else
  {
    v145 = tx_size_wide_6[a7];
  }

LABEL_180:
  v1069 = v138 - 1;
  v1068 = -v138;
  v146 = v141 + 128;
  v147 = (v137 + 78 * v140 + 6 * v55);
  v148 = *(a3 + 48);
  v149 = *(a3 + 52);
  v150 = v149 >> 8;
  v151 = 8;
  v152 = 1;
  v153 = v147;
  do
  {
    v154 = v149;
    v155 = *v153++;
    v156 = v150 * (v155 >> 6);
    v151 -= 4;
    v149 = v151 + (v156 >> 1);
    --v152;
  }

  while (HIWORD(v148) < v149);
  v157 = v154 - (v156 >> 1) - v151;
  v158 = 15 - (__clz(v157) ^ 0x1F);
  v159 = *(a3 + 54) - v158;
  *(a3 + 54) = v159;
  v160 = ((v148 - (v149 << 16) + 1) << v158) - 1;
  *(a3 + 48) = v160;
  *(a3 + 52) = v157 << v158;
  if (v159 < 0)
  {
    v161 = *(a3 + 32);
    v162 = *(a3 + 40);
    if (v162 >= v161)
    {
      v166 = *(a3 + 40);
      goto LABEL_200;
    }

    v163 = 8 - v159;
    if (v163 >= 7)
    {
      v164 = 7;
    }

    else
    {
      v164 = 8 - v159;
    }

    v165 = ((v164 ^ 0xFu) - v159) >> 3;
    if (v165 >= ~v162 + v161)
    {
      v165 = ~v162 + v161;
    }

    if (v165 >= 0xF)
    {
      v167 = v165 + 1;
      v168 = (v165 + 1) & 0x3FFFFFF0;
      v166 = &v162->u8[v168];
      v169 = 0uLL;
      v170 = v159;
      v171 = v160;
      v172 = vdupq_n_s32(v163);
      v173 = vaddq_s32(v172, xmmword_273BC3230);
      v174 = vaddq_s32(v172, xmmword_273BC3240);
      v175 = vaddq_s32(v172, xmmword_273BC3250);
      v176 = vaddq_s32(v172, xmmword_273BC3220);
      v177.i64[0] = 0x8000800080008;
      v177.i64[1] = 0x8000800080008;
      v178.i64[0] = 0x7F0000007FLL;
      v178.i64[1] = 0x7F0000007FLL;
      v179 = v168;
      v180 = 0uLL;
      v181 = 0uLL;
      v182 = 0uLL;
      do
      {
        v183 = *v162++;
        v181 = veorq_s8(vshlq_u32(vqtbl1q_s8(v183, xmmword_273B8E7B0), v174), v181);
        v180 = veorq_s8(vshlq_u32(vqtbl1q_s8(v183, xmmword_273B8E7C0), v175), v180);
        v171 = veorq_s8(vshlq_u32(vqtbl1q_s8(v183, xmmword_273B8E7D0), v176), v171);
        v182 = veorq_s8(vshlq_u32(vqtbl1q_s8(v183, xmmword_273B8E7A0), v173), v182);
        v170 = vaddq_s16(v170, v177);
        v169 = vaddq_s16(v169, v177);
        v176 = vaddq_s32(v176, v178);
        v175 = vaddq_s32(v175, v178);
        v174 = vaddq_s32(v174, v178);
        v173 = vaddq_s32(v173, v178);
        v179 -= 16;
      }

      while (v179);
      v184 = v162 < v161;
      v159 = vaddvq_s16(vaddq_s16(v170, v169));
      v185 = veorq_s8(veorq_s8(v171, v181), veorq_s8(v180, v182));
      *v185.i8 = veor_s8(*v185.i8, *&vextq_s8(v185, v185, 8uLL));
      v160 = v185.i32[0] ^ v185.i32[1];
      if (v167 == v168)
      {
        goto LABEL_199;
      }

      v163 -= 8 * v168;
    }

    else
    {
      v166 = *(a3 + 40);
    }

    do
    {
      v186 = *v166++;
      v160 ^= v186 << v163;
      v159 += 8;
      v184 = v166 < v161;
      v187 = v163 >= 8;
      v163 -= 8;
    }

    while (v187 && v166 < v161);
LABEL_199:
    if (v184)
    {
LABEL_201:
      *(a3 + 48) = v160;
      *(a3 + 54) = v159;
      *(a3 + 40) = v166;
      goto LABEL_202;
    }

LABEL_200:
    *(a3 + 24) = *(a3 + 24) - v159 + 0x4000;
    v159 = 0x4000;
    goto LABEL_201;
  }

LABEL_202:
  if (*(a3 + 56))
  {
    v188 = v147[2];
    v189 = (v188 >> 4) + 4;
    v190 = *v147;
    if (-v152 < 1)
    {
      v191 = v190 - (v190 >> v189);
    }

    else
    {
      v191 = v190 + ((0x8000 - v190) >> v189);
    }

    *v147 = v191;
    if (v188 < 0x20)
    {
      LOWORD(v188) = v188 + 1;
    }

    v147[2] = v188;
  }

  v192 = (*(v142 + 15112) + 4 * *(v143 + 15136));
  *v192 = 0;
  if (v152)
  {
    v193 = 0;
    if (!v11)
    {
      *(*(a2 + 7912) + v17 + *(a2 + 7920) * v10) = 0;
    }

    goto LABEL_876;
  }

  v1071 = v192;
  v1064 = v137;
  v1053 = v17;
  v1054 = v139;
  v1058 = v146;
  if (!v11)
  {
    v194 = v145;
    av1_read_tx_type(a1, a2, v10, v9, a7, a3);
    v145 = v194;
    v17 = v1053;
    v137 = v1064;
  }

  v195 = **(a2 + 7864);
  v196 = *(v195 + 167);
  v197 = v196 & 7;
  v1047 = v26;
  if (*(a2 + 4 * (v196 & 7) + 10692) || ((0x61810uLL >> a7) & 1) != 0)
  {
    v198 = 0;
  }

  else if (v11)
  {
    if ((v196 & 0x80) != 0 || *(v195 + 16) > 0)
    {
      v198 = *(*(a2 + 7912) + (v9 << *(a2 + 2628)) + *(a2 + 7920) * (v10 << *(a2 + 2632)));
      v199 = (v196 & 0x80) != 0 || *(v195 + 16) > 0;
    }

    else
    {
      v199 = 0;
      v198 = intra_mode_to_tx_type__intra_mode_to_tx_type_0[get_uv_mode_uv2y_2[*(v195 + 3)]];
    }

    if (((0x18608uLL >> a7) & 1) == 0)
    {
      if (*(a1 + 501))
      {
        if (v199)
        {
          LOBYTE(v199) = 1;
        }

        else
        {
          LOBYTE(v199) = 2;
        }
      }

      else
      {
        LOBYTE(v199) = av1_ext_tx_set_lookup_2[2 * v199 + ((0x60604uLL >> a7) & 1)];
      }
    }

    if (!av1_ext_tx_used_0[16 * v199 + v198])
    {
      v198 = 0;
    }
  }

  else
  {
    v198 = *(*(a2 + 7912) + v17 + *(a2 + 7920) * v10);
  }

  v200 = v198;
  v201 = tx_type_to_class[v198];
  if (a7 > 16)
  {
    if (a7 == 17)
    {
      v202 = 9;
      goto LABEL_231;
    }

    if (a7 == 18)
    {
      v202 = 10;
      goto LABEL_231;
    }

    goto LABEL_230;
  }

  v202 = 3;
  if (a7 - 11 >= 2 && a7 != 4)
  {
LABEL_230:
    v202 = a7;
  }

LABEL_231:
  v203 = 8 * v202;
  v204 = (v1072 + 2608 * v15 + 152 * v197 + v203 + 176);
  v205 = (a1 + 7576 + v203);
  if (v200 >= 9)
  {
    v204 = v205;
  }

  v1062 = *v204;
  v1073 = *(&av1_scan_orders + 32 * a7 + 2 * v200);
  v206 = txsize_log2_minus4[a7];
  v207 = *(a3 + 48);
  v208 = *(a3 + 52);
  v209 = HIWORD(v207);
  v210 = v208 >> 8;
  v1050 = v9;
  v1046 = v201;
  v1065 = v145;
  if (v206 > 2)
  {
    if (v206 != 3)
    {
      if (v206 != 4)
      {
        if (v206 == 5)
        {
          v234 = 0;
          v235 = (v137 + 44 * (v11 != 0) + 22 * (v200 > 9) + 1286);
          v236 = 40;
          v217 = -1;
          v237 = v235;
          do
          {
            v238 = v208;
            v239 = *v237++;
            v240 = v210 * (v239 >> 6);
            v236 -= 4;
            v208 = v236 + (v240 >> 1);
            v234 -= 0x100000000000000;
            ++v217;
          }

          while (v209 < v208);
          v241 = v238 - (v240 >> 1) - v236;
          v242 = 15 - (__clz(v241) ^ 0x1F);
          v243 = *(a3 + 54) - v242;
          *(a3 + 54) = v243;
          v226 = ((v207 - (v208 << 16) + 1) << v242) - 1;
          *(a3 + 48) = v226;
          *(a3 + 52) = v241 << v242;
          if ((v243 & 0x8000) == 0)
          {
LABEL_444:
            if (!*(a3 + 56))
            {
              goto LABEL_504;
            }

            v361 = (v137 + 44 * (v11 != 0) + 22 * (v200 > 9) + 1306);
            v362 = *v361;
            v392 = (v362 >> 4) + 5;
            v481 = (0xFF00000000000000 - v234) >> 56;
            v482 = *v235;
            if (v481 <= 0)
            {
              *v235 = v482 - (v482 >> v392);
              v483 = *(v137 + 44 * (v11 != 0) + 22 * (v200 > 9) + 1288);
            }

            else
            {
              *v235 = v482 + ((0x8000 - v482) >> v392);
              v483 = *(v137 + 44 * (v11 != 0) + 22 * (v200 > 9) + 1288);
              if (v234 != 0xFE00000000000000)
              {
                *(v137 + 44 * (v11 != 0) + 22 * (v200 > 9) + 1288) = v483 + ((0x8000 - v483) >> v392);
                v484 = *(v137 + 44 * (v11 != 0) + 22 * (v200 > 9) + 1290);
                if (v481 > 2)
                {
                  *(v137 + 44 * (v11 != 0) + 22 * (v200 > 9) + 1290) = v484 + ((0x8000 - v484) >> v392);
                  v485 = *(v137 + 44 * (v11 != 0) + 22 * (v200 > 9) + 1292);
                  if (v234 != 0xFC00000000000000)
                  {
                    *(v137 + 44 * (v11 != 0) + 22 * (v200 > 9) + 1292) = v485 + ((0x8000 - v485) >> v392);
                    v486 = *(v137 + 44 * (v11 != 0) + 22 * (v200 > 9) + 1294);
                    if (v481 > 4)
                    {
                      *(v137 + 44 * (v11 != 0) + 22 * (v200 > 9) + 1294) = v486 + ((0x8000 - v486) >> v392);
                      v487 = *(v137 + 44 * (v11 != 0) + 22 * (v200 > 9) + 1296);
                      if (v234 != 0xFA00000000000000)
                      {
                        *(v137 + 44 * (v11 != 0) + 22 * (v200 > 9) + 1296) = v487 + ((0x8000 - v487) >> v392);
                        v488 = *(v137 + 44 * (v11 != 0) + 22 * (v200 > 9) + 1298);
                        v211 = v200;
                        if (v481 > 6)
                        {
                          *(v137 + 44 * (v11 != 0) + 22 * (v200 > 9) + 1298) = v488 + ((0x8000 - v488) >> v392);
                          v489 = *(v137 + 44 * (v11 != 0) + 22 * (v200 > 9) + 1300);
                          if (v234 != 0xF800000000000000)
                          {
                            v369 = (v137 + 44 * (v11 != 0) + 22 * (v200 > 9) + 1302);
                            v400 = *v369;
                            *(v137 + 44 * (v11 != 0) + 22 * (v200 > 9) + 1300) = v489 + ((0x8000 - v489) >> v392);
                            if (v481 > 8)
                            {
                              goto LABEL_476;
                            }

                            goto LABEL_482;
                          }

                          goto LABEL_459;
                        }

LABEL_458:
                        *(v137 + 44 * (v11 != 0) + 22 * (v200 > 9) + 1298) = v488 - (v488 >> v392);
                        v489 = *(v137 + 44 * (v11 != 0) + 22 * (v200 > 9) + 1300);
LABEL_459:
                        v401 = v489 - (v489 >> v392);
                        v369 = (v137 + 44 * (v11 != 0) + 22 * (v200 > 9) + 1302);
                        v400 = *v369;
                        goto LABEL_481;
                      }

                      v211 = v200;
LABEL_457:
                      *(v137 + 44 * (v11 != 0) + 22 * (v200 > 9) + 1296) = v487 - (v487 >> v392);
                      v488 = *(v137 + 44 * (v11 != 0) + 22 * (v200 > 9) + 1298);
                      goto LABEL_458;
                    }

LABEL_456:
                    v211 = v200;
                    *(v137 + 44 * (v11 != 0) + 22 * (v200 > 9) + 1294) = v486 - (v486 >> v392);
                    v487 = *(v137 + 44 * (v11 != 0) + 22 * (v200 > 9) + 1296);
                    goto LABEL_457;
                  }

LABEL_455:
                  *(v137 + 44 * (v11 != 0) + 22 * (v200 > 9) + 1292) = v485 - (v485 >> v392);
                  v486 = *(v137 + 44 * (v11 != 0) + 22 * (v200 > 9) + 1294);
                  goto LABEL_456;
                }

LABEL_454:
                *(v137 + 44 * (v11 != 0) + 22 * (v200 > 9) + 1290) = v484 - (v484 >> v392);
                v485 = *(v137 + 44 * (v11 != 0) + 22 * (v200 > 9) + 1292);
                goto LABEL_455;
              }
            }

            *(v137 + 44 * (v11 != 0) + 22 * (v200 > 9) + 1288) = v483 - (v483 >> v392);
            v484 = *(v137 + 44 * (v11 != 0) + 22 * (v200 > 9) + 1290);
            goto LABEL_454;
          }

          v244 = v243;
          v245 = *(a3 + 32);
          v246 = *(a3 + 40);
          if (v246 >= v245)
          {
            v250 = *(a3 + 40);
            goto LABEL_442;
          }

          v247 = 8 - v243;
          if (v247 >= 7)
          {
            v248 = 7;
          }

          else
          {
            v248 = 8 - v243;
          }

          v249 = ((v248 ^ 0xFu) - v244) >> 3;
          if (v249 >= ~v246 + v245)
          {
            v249 = ~v246 + v245;
          }

          if (v249 >= 0xF)
          {
            v461 = v249 + 1;
            v462 = (v249 + 1) & 0x3FFFFFF0;
            v250 = &v246->u8[v462];
            v463 = 0uLL;
            v464 = v244;
            v465 = v226;
            v466 = vdupq_n_s32(v247);
            v467 = vaddq_s32(v466, xmmword_273BC3230);
            v468 = vaddq_s32(v466, xmmword_273BC3240);
            v469 = vaddq_s32(v466, xmmword_273BC3250);
            v470 = vaddq_s32(v466, xmmword_273BC3220);
            v471.i64[0] = 0x8000800080008;
            v471.i64[1] = 0x8000800080008;
            v472.i64[0] = 0x7F0000007FLL;
            v472.i64[1] = 0x7F0000007FLL;
            v473 = v462;
            v474 = 0uLL;
            v475 = 0uLL;
            v476 = 0uLL;
            do
            {
              v477 = *v246++;
              v475 = veorq_s8(vshlq_u32(vqtbl1q_s8(v477, xmmword_273B8E7B0), v468), v475);
              v474 = veorq_s8(vshlq_u32(vqtbl1q_s8(v477, xmmword_273B8E7C0), v469), v474);
              v465 = veorq_s8(vshlq_u32(vqtbl1q_s8(v477, xmmword_273B8E7D0), v470), v465);
              v476 = veorq_s8(vshlq_u32(vqtbl1q_s8(v477, xmmword_273B8E7A0), v467), v476);
              v464 = vaddq_s16(v464, v471);
              v463 = vaddq_s16(v463, v471);
              v470 = vaddq_s32(v470, v472);
              v469 = vaddq_s32(v469, v472);
              v468 = vaddq_s32(v468, v472);
              v467 = vaddq_s32(v467, v472);
              v473 -= 16;
            }

            while (v473);
            v478 = v246 < v245;
            LOWORD(v244) = vaddvq_s16(vaddq_s16(v464, v463));
            v479 = veorq_s8(veorq_s8(v465, v475), veorq_s8(v474, v476));
            *v479.i8 = veor_s8(*v479.i8, *&vextq_s8(v479, v479, 8uLL));
            v226 = v479.i32[0] ^ v479.i32[1];
            if (v461 == v462)
            {
              goto LABEL_441;
            }

            v247 -= 8 * v462;
          }

          else
          {
            v250 = *(a3 + 40);
          }

          do
          {
            v480 = *v250++;
            v226 ^= v480 << v247;
            LOWORD(v244) = v244 + 8;
            v478 = v250 < v245;
            v187 = v247 >= 8;
            v247 -= 8;
          }

          while (v187 && v250 < v245);
LABEL_441:
          if (v478)
          {
LABEL_443:
            *(a3 + 48) = v226;
            *(a3 + 54) = v244;
            *(a3 + 40) = v250;
            goto LABEL_444;
          }

LABEL_442:
          *(a3 + 24) = *(a3 + 24) - v244 + 0x4000;
          LOWORD(v244) = 0x4000;
          goto LABEL_443;
        }

        v289 = 0;
        v290 = (v137 + 48 * (v11 != 0) + 24 * (v200 > 9) + 1374);
        v291 = 44;
        v217 = -1;
        v292 = v290;
        do
        {
          v293 = v208;
          v294 = *v292++;
          v295 = v210 * (v294 >> 6);
          v291 -= 4;
          v208 = v291 + (v295 >> 1);
          v289 -= 0x100000000000000;
          ++v217;
        }

        while (v209 < v208);
        v296 = v293 - (v295 >> 1) - v291;
        v297 = 15 - (__clz(v296) ^ 0x1F);
        v298 = *(a3 + 54) - v297;
        *(a3 + 54) = v298;
        v226 = ((v207 - (v208 << 16) + 1) << v297) - 1;
        *(a3 + 48) = v226;
        *(a3 + 52) = v296 << v297;
        if ((v298 & 0x8000) == 0)
        {
LABEL_389:
          if (!*(a3 + 56))
          {
            goto LABEL_504;
          }

          v361 = (v137 + 48 * (v11 != 0) + 24 * (v200 > 9) + 1396);
          v362 = *v361;
          v363 = (v362 >> 4) + 5;
          v422 = (0xFF00000000000000 - v289) >> 56;
          v423 = *v290;
          if (v422 <= 0)
          {
            *v290 = v423 - (v423 >> v363);
            v424 = *(v137 + 48 * (v11 != 0) + 24 * (v200 > 9) + 1376);
          }

          else
          {
            *v290 = v423 + ((0x8000 - v423) >> v363);
            v424 = *(v137 + 48 * (v11 != 0) + 24 * (v200 > 9) + 1376);
            if (v289 != 0xFE00000000000000)
            {
              *(v137 + 48 * (v11 != 0) + 24 * (v200 > 9) + 1376) = v424 + ((0x8000 - v424) >> v363);
              v425 = *(v137 + 48 * (v11 != 0) + 24 * (v200 > 9) + 1378);
              if (v422 > 2)
              {
                *(v137 + 48 * (v11 != 0) + 24 * (v200 > 9) + 1378) = v425 + ((0x8000 - v425) >> v363);
                v426 = *(v137 + 48 * (v11 != 0) + 24 * (v200 > 9) + 1380);
                if (v289 != 0xFC00000000000000)
                {
                  *(v137 + 48 * (v11 != 0) + 24 * (v200 > 9) + 1380) = v426 + ((0x8000 - v426) >> v363);
                  v427 = *(v137 + 48 * (v11 != 0) + 24 * (v200 > 9) + 1382);
                  if (v422 > 4)
                  {
                    *(v137 + 48 * (v11 != 0) + 24 * (v200 > 9) + 1382) = v427 + ((0x8000 - v427) >> v363);
                    v428 = *(v137 + 48 * (v11 != 0) + 24 * (v200 > 9) + 1384);
                    if (v289 != 0xFA00000000000000)
                    {
                      *(v137 + 48 * (v11 != 0) + 24 * (v200 > 9) + 1384) = v428 + ((0x8000 - v428) >> v363);
                      v429 = *(v137 + 48 * (v11 != 0) + 24 * (v200 > 9) + 1386);
                      if (v422 > 6)
                      {
                        *(v137 + 48 * (v11 != 0) + 24 * (v200 > 9) + 1386) = v429 + ((0x8000 - v429) >> v363);
                        v430 = *(v137 + 48 * (v11 != 0) + 24 * (v200 > 9) + 1388);
                        if (v289 != 0xF800000000000000)
                        {
                          v211 = v200;
                          *(v137 + 48 * (v11 != 0) + 24 * (v200 > 9) + 1388) = v430 + ((0x8000 - v430) >> v363);
                          v431 = *(v137 + 48 * (v11 != 0) + 24 * (v200 > 9) + 1390);
                          if (v422 > 8)
                          {
                            v369 = (v137 + 48 * (v11 != 0) + 24 * (v200 > 9) + 1392);
                            v370 = *v369;
                            *(v137 + 48 * (v11 != 0) + 24 * (v200 > 9) + 1390) = v431 + ((0x8000 - v431) >> v363);
                            v432 = 0xF600000000000000;
                            goto LABEL_502;
                          }

LABEL_408:
                          v371 = v431 - (v431 >> v363);
                          v369 = (v137 + 48 * (v11 != 0) + 24 * (v200 > 9) + 1392);
                          v370 = *v369;
                          goto LABEL_513;
                        }

LABEL_407:
                        v211 = v200;
                        *(v137 + 48 * (v11 != 0) + 24 * (v200 > 9) + 1388) = v430 - (v430 >> v363);
                        v431 = *(v137 + 48 * (v11 != 0) + 24 * (v200 > 9) + 1390);
                        goto LABEL_408;
                      }

LABEL_406:
                      *(v137 + 48 * (v11 != 0) + 24 * (v200 > 9) + 1386) = v429 - (v429 >> v363);
                      v430 = *(v137 + 48 * (v11 != 0) + 24 * (v200 > 9) + 1388);
                      goto LABEL_407;
                    }

LABEL_405:
                    *(v137 + 48 * (v11 != 0) + 24 * (v200 > 9) + 1384) = v428 - (v428 >> v363);
                    v429 = *(v137 + 48 * (v11 != 0) + 24 * (v200 > 9) + 1386);
                    goto LABEL_406;
                  }

LABEL_404:
                  *(v137 + 48 * (v11 != 0) + 24 * (v200 > 9) + 1382) = v427 - (v427 >> v363);
                  v428 = *(v137 + 48 * (v11 != 0) + 24 * (v200 > 9) + 1384);
                  goto LABEL_405;
                }

LABEL_403:
                *(v137 + 48 * (v11 != 0) + 24 * (v200 > 9) + 1380) = v426 - (v426 >> v363);
                v427 = *(v137 + 48 * (v11 != 0) + 24 * (v200 > 9) + 1382);
                goto LABEL_404;
              }

LABEL_402:
              *(v137 + 48 * (v11 != 0) + 24 * (v200 > 9) + 1378) = v425 - (v425 >> v363);
              v426 = *(v137 + 48 * (v11 != 0) + 24 * (v200 > 9) + 1380);
              goto LABEL_403;
            }
          }

          *(v137 + 48 * (v11 != 0) + 24 * (v200 > 9) + 1376) = v424 - (v424 >> v363);
          v425 = *(v137 + 48 * (v11 != 0) + 24 * (v200 > 9) + 1378);
          goto LABEL_402;
        }

        v299 = v298;
        v300 = *(a3 + 32);
        v301 = *(a3 + 40);
        if (v301 >= v300)
        {
          v305 = *(a3 + 40);
          goto LABEL_387;
        }

        v302 = 8 - v298;
        if (v302 >= 7)
        {
          v303 = 7;
        }

        else
        {
          v303 = 8 - v298;
        }

        v304 = ((v303 ^ 0xFu) - v299) >> 3;
        if (v304 >= ~v301 + v300)
        {
          v304 = ~v301 + v300;
        }

        if (v304 >= 0xF)
        {
          v402 = v304 + 1;
          v403 = (v304 + 1) & 0x3FFFFFF0;
          v305 = &v301->u8[v403];
          v404 = 0uLL;
          v405 = v299;
          v406 = v226;
          v407 = vdupq_n_s32(v302);
          v408 = vaddq_s32(v407, xmmword_273BC3230);
          v409 = vaddq_s32(v407, xmmword_273BC3240);
          v410 = vaddq_s32(v407, xmmword_273BC3250);
          v411 = vaddq_s32(v407, xmmword_273BC3220);
          v412.i64[0] = 0x8000800080008;
          v412.i64[1] = 0x8000800080008;
          v413.i64[0] = 0x7F0000007FLL;
          v413.i64[1] = 0x7F0000007FLL;
          v414 = v403;
          v415 = 0uLL;
          v416 = 0uLL;
          v417 = 0uLL;
          do
          {
            v418 = *v301++;
            v416 = veorq_s8(vshlq_u32(vqtbl1q_s8(v418, xmmword_273B8E7B0), v409), v416);
            v415 = veorq_s8(vshlq_u32(vqtbl1q_s8(v418, xmmword_273B8E7C0), v410), v415);
            v406 = veorq_s8(vshlq_u32(vqtbl1q_s8(v418, xmmword_273B8E7D0), v411), v406);
            v417 = veorq_s8(vshlq_u32(vqtbl1q_s8(v418, xmmword_273B8E7A0), v408), v417);
            v405 = vaddq_s16(v405, v412);
            v404 = vaddq_s16(v404, v412);
            v411 = vaddq_s32(v411, v413);
            v410 = vaddq_s32(v410, v413);
            v409 = vaddq_s32(v409, v413);
            v408 = vaddq_s32(v408, v413);
            v414 -= 16;
          }

          while (v414);
          v419 = v301 < v300;
          LOWORD(v299) = vaddvq_s16(vaddq_s16(v405, v404));
          v420 = veorq_s8(veorq_s8(v406, v416), veorq_s8(v415, v417));
          *v420.i8 = veor_s8(*v420.i8, *&vextq_s8(v420, v420, 8uLL));
          v226 = v420.i32[0] ^ v420.i32[1];
          if (v402 == v403)
          {
            goto LABEL_386;
          }

          v302 -= 8 * v403;
        }

        else
        {
          v305 = *(a3 + 40);
        }

        do
        {
          v421 = *v305++;
          v226 ^= v421 << v302;
          LOWORD(v299) = v299 + 8;
          v419 = v305 < v300;
          v187 = v302 >= 8;
          v302 -= 8;
        }

        while (v187 && v305 < v300);
LABEL_386:
        if (v419)
        {
LABEL_388:
          *(a3 + 48) = v226;
          *(a3 + 54) = v299;
          *(a3 + 40) = v305;
          goto LABEL_389;
        }

LABEL_387:
        *(a3 + 24) = *(a3 + 24) - v299 + 0x4000;
        LOWORD(v299) = 0x4000;
        goto LABEL_388;
      }

      v289 = 0;
      v325 = (v137 + 40 * (v11 != 0) + 20 * (v200 > 9) + 1206);
      v326 = 36;
      v217 = -1;
      v327 = v325;
      do
      {
        v328 = v208;
        v329 = *v327++;
        v330 = v210 * (v329 >> 6);
        v326 -= 4;
        v208 = v326 + (v330 >> 1);
        v289 -= 0x100000000000000;
        ++v217;
      }

      while (v209 < v208);
      v331 = v328 - (v330 >> 1) - v326;
      v332 = 15 - (__clz(v331) ^ 0x1F);
      v333 = *(a3 + 54) - v332;
      *(a3 + 54) = v333;
      v226 = ((v207 - (v208 << 16) + 1) << v332) - 1;
      *(a3 + 48) = v226;
      *(a3 + 52) = v331 << v332;
      if ((v333 & 0x8000) == 0)
      {
LABEL_493:
        if (!*(a3 + 56))
        {
          goto LABEL_504;
        }

        v361 = (v137 + 40 * (v11 != 0) + 20 * (v200 > 9) + 1224);
        v362 = *v361;
        v363 = (v362 >> 4) + 5;
        v535 = (0xFF00000000000000 - v289) >> 56;
        v536 = *v325;
        if (v535 <= 0)
        {
          *v325 = v536 - (v536 >> v363);
          v537 = *(v137 + 40 * (v11 != 0) + 20 * (v200 > 9) + 1208);
        }

        else
        {
          *v325 = v536 + ((0x8000 - v536) >> v363);
          v537 = *(v137 + 40 * (v11 != 0) + 20 * (v200 > 9) + 1208);
          if (v289 != 0xFE00000000000000)
          {
            *(v137 + 40 * (v11 != 0) + 20 * (v200 > 9) + 1208) = v537 + ((0x8000 - v537) >> v363);
            v538 = *(v137 + 40 * (v11 != 0) + 20 * (v200 > 9) + 1210);
            if (v535 > 2)
            {
              *(v137 + 40 * (v11 != 0) + 20 * (v200 > 9) + 1210) = v538 + ((0x8000 - v538) >> v363);
              v539 = *(v137 + 40 * (v11 != 0) + 20 * (v200 > 9) + 1212);
              if (v289 != 0xFC00000000000000)
              {
                *(v137 + 40 * (v11 != 0) + 20 * (v200 > 9) + 1212) = v539 + ((0x8000 - v539) >> v363);
                v540 = *(v137 + 40 * (v11 != 0) + 20 * (v200 > 9) + 1214);
                if (v535 > 4)
                {
                  *(v137 + 40 * (v11 != 0) + 20 * (v200 > 9) + 1214) = v540 + ((0x8000 - v540) >> v363);
                  v541 = *(v137 + 40 * (v11 != 0) + 20 * (v200 > 9) + 1216);
                  v211 = v200;
                  if (v289 != 0xFA00000000000000)
                  {
                    *(v137 + 40 * (v11 != 0) + 20 * (v200 > 9) + 1216) = v541 + ((0x8000 - v541) >> v363);
                    v542 = *(v137 + 40 * (v11 != 0) + 20 * (v200 > 9) + 1218);
                    if (v535 > 6)
                    {
                      v369 = (v137 + 40 * (v11 != 0) + 20 * (v200 > 9) + 1220);
                      v370 = *v369;
                      *(v137 + 40 * (v11 != 0) + 20 * (v200 > 9) + 1218) = v542 + ((0x8000 - v542) >> v363);
                      v432 = 0xF800000000000000;
LABEL_502:
                      if (v289 != v432)
                      {
                        v459 = 0x8000 - v370;
                        goto LABEL_428;
                      }

LABEL_514:
                      v460 = v370 - (v370 >> v363);
                      goto LABEL_515;
                    }

LABEL_512:
                    v371 = v542 - (v542 >> v363);
                    v369 = (v137 + 40 * (v11 != 0) + 20 * (v200 > 9) + 1220);
                    v370 = *v369;
                    goto LABEL_513;
                  }

LABEL_511:
                  *(v137 + 40 * (v11 != 0) + 20 * (v200 > 9) + 1216) = v541 - (v541 >> v363);
                  v542 = *(v137 + 40 * (v11 != 0) + 20 * (v200 > 9) + 1218);
                  goto LABEL_512;
                }

                v211 = v200;
LABEL_510:
                *(v137 + 40 * (v11 != 0) + 20 * (v200 > 9) + 1214) = v540 - (v540 >> v363);
                v541 = *(v137 + 40 * (v11 != 0) + 20 * (v200 > 9) + 1216);
                goto LABEL_511;
              }

LABEL_509:
              v211 = v200;
              *(v137 + 40 * (v11 != 0) + 20 * (v200 > 9) + 1212) = v539 - (v539 >> v363);
              v540 = *(v137 + 40 * (v11 != 0) + 20 * (v200 > 9) + 1214);
              goto LABEL_510;
            }

LABEL_508:
            *(v137 + 40 * (v11 != 0) + 20 * (v200 > 9) + 1210) = v538 - (v538 >> v363);
            v539 = *(v137 + 40 * (v11 != 0) + 20 * (v200 > 9) + 1212);
            goto LABEL_509;
          }
        }

        *(v137 + 40 * (v11 != 0) + 20 * (v200 > 9) + 1208) = v537 - (v537 >> v363);
        v538 = *(v137 + 40 * (v11 != 0) + 20 * (v200 > 9) + 1210);
        goto LABEL_508;
      }

      v334 = v333;
      v335 = *(a3 + 32);
      v336 = *(a3 + 40);
      if (v336 >= v335)
      {
        v340 = *(a3 + 40);
        goto LABEL_491;
      }

      v337 = 8 - v333;
      if (v337 >= 7)
      {
        v338 = 7;
      }

      else
      {
        v338 = 8 - v333;
      }

      v339 = ((v338 ^ 0xFu) - v334) >> 3;
      if (v339 >= ~v336 + v335)
      {
        v339 = ~v336 + v335;
      }

      if (v339 >= 0xF)
      {
        v515 = v339 + 1;
        v516 = (v339 + 1) & 0x3FFFFFF0;
        v340 = &v336->u8[v516];
        v517 = 0uLL;
        v518 = v334;
        v519 = v226;
        v520 = vdupq_n_s32(v337);
        v521 = vaddq_s32(v520, xmmword_273BC3230);
        v522 = vaddq_s32(v520, xmmword_273BC3240);
        v523 = vaddq_s32(v520, xmmword_273BC3250);
        v524 = vaddq_s32(v520, xmmword_273BC3220);
        v525.i64[0] = 0x8000800080008;
        v525.i64[1] = 0x8000800080008;
        v526.i64[0] = 0x7F0000007FLL;
        v526.i64[1] = 0x7F0000007FLL;
        v527 = v516;
        v528 = 0uLL;
        v529 = 0uLL;
        v530 = 0uLL;
        do
        {
          v531 = *v336++;
          v529 = veorq_s8(vshlq_u32(vqtbl1q_s8(v531, xmmword_273B8E7B0), v522), v529);
          v528 = veorq_s8(vshlq_u32(vqtbl1q_s8(v531, xmmword_273B8E7C0), v523), v528);
          v519 = veorq_s8(vshlq_u32(vqtbl1q_s8(v531, xmmword_273B8E7D0), v524), v519);
          v530 = veorq_s8(vshlq_u32(vqtbl1q_s8(v531, xmmword_273B8E7A0), v521), v530);
          v518 = vaddq_s16(v518, v525);
          v517 = vaddq_s16(v517, v525);
          v524 = vaddq_s32(v524, v526);
          v523 = vaddq_s32(v523, v526);
          v522 = vaddq_s32(v522, v526);
          v521 = vaddq_s32(v521, v526);
          v527 -= 16;
        }

        while (v527);
        v532 = v336 < v335;
        LOWORD(v334) = vaddvq_s16(vaddq_s16(v518, v517));
        v533 = veorq_s8(veorq_s8(v519, v529), veorq_s8(v528, v530));
        *v533.i8 = veor_s8(*v533.i8, *&vextq_s8(v533, v533, 8uLL));
        v226 = v533.i32[0] ^ v533.i32[1];
        if (v515 == v516)
        {
          goto LABEL_490;
        }

        v337 -= 8 * v516;
      }

      else
      {
        v340 = *(a3 + 40);
      }

      do
      {
        v534 = *v340++;
        v226 ^= v534 << v337;
        LOWORD(v334) = v334 + 8;
        v532 = v340 < v335;
        v187 = v337 >= 8;
        v337 -= 8;
      }

      while (v187 && v340 < v335);
LABEL_490:
      if (v532)
      {
LABEL_492:
        *(a3 + 48) = v226;
        *(a3 + 54) = v334;
        *(a3 + 40) = v340;
        goto LABEL_493;
      }

LABEL_491:
      *(a3 + 24) = *(a3 + 24) - v334 + 0x4000;
      LOWORD(v334) = 0x4000;
      goto LABEL_492;
    }

    v211 = v200;
    v269 = (v137 + 36 * (v11 != 0) + 18 * (v200 > 9) + 1134);
    v270 = 32;
    v271 = 0x600000000000000;
    v272 = 0x400000000000000;
    v273 = 0x200000000000000;
    v217 = -1;
    v274 = v269;
    v275 = 0xFF00000000000000;
    do
    {
      v276 = v208;
      v277 = *v274++;
      v278 = v210 * (v277 >> 6);
      v270 -= 4;
      v208 = v270 + (v278 >> 1);
      v271 -= 0x100000000000000;
      v272 -= 0x100000000000000;
      v273 -= 0x100000000000000;
      v275 += 0x100000000000000;
      ++v217;
    }

    while (v209 < v208);
    v279 = v276 - (v278 >> 1) - v270;
    v280 = 15 - (__clz(v279) ^ 0x1F);
    v281 = *(a3 + 54) - v280;
    *(a3 + 54) = v281;
    v226 = ((v207 - (v208 << 16) + 1) << v280) - 1;
    *(a3 + 48) = v226;
    *(a3 + 52) = v279 << v280;
    if ((v281 & 0x8000) == 0)
    {
LABEL_364:
      if (!*(a3 + 56))
      {
LABEL_505:
        v543 = 1;
        goto LABEL_518;
      }

      v361 = (v137 + 36 * (v11 != 0) + 18 * (v200 > 9) + 1150);
      v362 = *v361;
      v392 = (v362 >> 4) + 5;
      v393 = v275 >> 56;
      v394 = *v269;
      if (v393 <= 0)
      {
        *v269 = v394 - (v394 >> v392);
        v395 = *(v137 + 36 * (v11 != 0) + 18 * (v200 > 9) + 1136);
      }

      else
      {
        *v269 = v394 + ((0x8000 - v394) >> v392);
        v395 = *(v137 + 36 * (v11 != 0) + 18 * (v200 > 9) + 1136);
        if (v273)
        {
          *(v137 + 36 * (v11 != 0) + 18 * (v200 > 9) + 1136) = v395 + ((0x8000 - v395) >> v392);
          v396 = *(v137 + 36 * (v11 != 0) + 18 * (v200 > 9) + 1138);
          if (v393 > 2)
          {
            *(v137 + 36 * (v11 != 0) + 18 * (v200 > 9) + 1138) = v396 + ((0x8000 - v396) >> v392);
            v397 = *(v137 + 36 * (v11 != 0) + 18 * (v200 > 9) + 1140);
            if (v272)
            {
              *(v137 + 36 * (v11 != 0) + 18 * (v200 > 9) + 1140) = v397 + ((0x8000 - v397) >> v392);
              v398 = *(v137 + 36 * (v11 != 0) + 18 * (v200 > 9) + 1142);
              if (v393 > 4)
              {
                *(v137 + 36 * (v11 != 0) + 18 * (v200 > 9) + 1142) = v398 + ((0x8000 - v398) >> v392);
                v399 = *(v137 + 36 * (v11 != 0) + 18 * (v200 > 9) + 1144);
                if (v271)
                {
                  v369 = (v137 + 36 * (v11 != 0) + 18 * (v200 > 9) + 1146);
                  v400 = *v369;
                  *(v137 + 36 * (v11 != 0) + 18 * (v200 > 9) + 1144) = v399 + ((0x8000 - v399) >> v392);
                  if (v393 > 6)
                  {
LABEL_476:
                    v460 = v400 + ((0x8000 - v400) >> v392);
                    goto LABEL_515;
                  }

LABEL_482:
                  v460 = v400 - (v400 >> v392);
                  goto LABEL_515;
                }

                goto LABEL_378;
              }

LABEL_377:
              *(v137 + 36 * (v11 != 0) + 18 * (v200 > 9) + 1142) = v398 - (v398 >> v392);
              v399 = *(v137 + 36 * (v11 != 0) + 18 * (v200 > 9) + 1144);
LABEL_378:
              v401 = v399 - (v399 >> v392);
              v369 = (v137 + 36 * (v11 != 0) + 18 * (v200 > 9) + 1146);
              v400 = *v369;
LABEL_481:
              *(v369 - 1) = v401;
              goto LABEL_482;
            }

LABEL_376:
            *(v137 + 36 * (v11 != 0) + 18 * (v200 > 9) + 1140) = v397 - (v397 >> v392);
            v398 = *(v137 + 36 * (v11 != 0) + 18 * (v200 > 9) + 1142);
            goto LABEL_377;
          }

LABEL_375:
          *(v137 + 36 * (v11 != 0) + 18 * (v200 > 9) + 1138) = v396 - (v396 >> v392);
          v397 = *(v137 + 36 * (v11 != 0) + 18 * (v200 > 9) + 1140);
          goto LABEL_376;
        }
      }

      *(v137 + 36 * (v11 != 0) + 18 * (v200 > 9) + 1136) = v395 - (v395 >> v392);
      v396 = *(v137 + 36 * (v11 != 0) + 18 * (v200 > 9) + 1138);
      goto LABEL_375;
    }

    v282 = v281;
    v284 = *(a3 + 32);
    v283 = *(a3 + 40);
    if (v283 >= v284)
    {
      v288 = *(a3 + 40);
      goto LABEL_362;
    }

    v285 = 8 - v281;
    if (v285 >= 7)
    {
      v286 = 7;
    }

    else
    {
      v286 = 8 - v281;
    }

    v287 = ((v286 ^ 0xFu) - v282) >> 3;
    if (v287 >= ~v283 + v284)
    {
      v287 = ~v283 + v284;
    }

    if (v287 >= 0xF)
    {
      v372 = v287 + 1;
      v373 = (v287 + 1) & 0x3FFFFFF0;
      v288 = &v283->u8[v373];
      v374 = 0uLL;
      v375 = v282;
      v376 = v226;
      v377 = vdupq_n_s32(v285);
      v378 = vaddq_s32(v377, xmmword_273BC3230);
      v379 = vaddq_s32(v377, xmmword_273BC3240);
      v380 = vaddq_s32(v377, xmmword_273BC3250);
      v381 = vaddq_s32(v377, xmmword_273BC3220);
      v382.i64[0] = 0x8000800080008;
      v382.i64[1] = 0x8000800080008;
      v383.i64[0] = 0x7F0000007FLL;
      v383.i64[1] = 0x7F0000007FLL;
      v384 = v373;
      v385 = 0uLL;
      v386 = 0uLL;
      v387 = 0uLL;
      do
      {
        v388 = *v283++;
        v386 = veorq_s8(vshlq_u32(vqtbl1q_s8(v388, xmmword_273B8E7B0), v379), v386);
        v385 = veorq_s8(vshlq_u32(vqtbl1q_s8(v388, xmmword_273B8E7C0), v380), v385);
        v376 = veorq_s8(vshlq_u32(vqtbl1q_s8(v388, xmmword_273B8E7D0), v381), v376);
        v387 = veorq_s8(vshlq_u32(vqtbl1q_s8(v388, xmmword_273B8E7A0), v378), v387);
        v375 = vaddq_s16(v375, v382);
        v374 = vaddq_s16(v374, v382);
        v381 = vaddq_s32(v381, v383);
        v380 = vaddq_s32(v380, v383);
        v379 = vaddq_s32(v379, v383);
        v378 = vaddq_s32(v378, v383);
        v384 -= 16;
      }

      while (v384);
      v389 = v283 < v284;
      LOWORD(v282) = vaddvq_s16(vaddq_s16(v375, v374));
      v390 = veorq_s8(veorq_s8(v376, v386), veorq_s8(v385, v387));
      *v390.i8 = veor_s8(*v390.i8, *&vextq_s8(v390, v390, 8uLL));
      v226 = v390.i32[0] ^ v390.i32[1];
      if (v372 == v373)
      {
        goto LABEL_361;
      }

      v285 -= 8 * v373;
    }

    else
    {
      v288 = *(a3 + 40);
    }

    do
    {
      v391 = *v288++;
      v226 ^= v391 << v285;
      LOWORD(v282) = v282 + 8;
      v389 = v288 < v284;
      v187 = v285 >= 8;
      v285 -= 8;
    }

    while (v187 && v288 < v284);
LABEL_361:
    if (v389)
    {
LABEL_363:
      *(a3 + 48) = v226;
      *(a3 + 54) = v282;
      *(a3 + 40) = v288;
      goto LABEL_364;
    }

LABEL_362:
    *(a3 + 24) = *(a3 + 24) - v282 + 0x4000;
    LOWORD(v282) = 0x4000;
    goto LABEL_363;
  }

  if (!txsize_log2_minus4[a7])
  {
    v251 = (v137 + 24 * (v11 != 0) + 12 * (v200 > 9) + 966);
    v252 = 20;
    v214 = 0x400000000000000;
    v253 = 0x200000000000000;
    v217 = -1;
    v254 = v251;
    v255 = 0xFF00000000000000;
    do
    {
      v256 = v208;
      v257 = *v254++;
      v258 = v210 * (v257 >> 6);
      v252 -= 4;
      v208 = v252 + (v258 >> 1);
      v214 -= 0x100000000000000;
      v253 -= 0x100000000000000;
      v255 += 0x100000000000000;
      ++v217;
    }

    while (v209 < v208);
    v259 = v256 - (v258 >> 1) - v252;
    v260 = 15 - (__clz(v259) ^ 0x1F);
    v261 = *(a3 + 54) - v260;
    *(a3 + 54) = v261;
    v226 = ((v207 - (v208 << 16) + 1) << v260) - 1;
    *(a3 + 48) = v226;
    *(a3 + 52) = v259 << v260;
    if ((v261 & 0x8000) == 0)
    {
LABEL_346:
      if (!*(a3 + 56))
      {
        goto LABEL_504;
      }

      v361 = (v137 + 24 * (v11 != 0) + 12 * (v200 > 9) + 976);
      v362 = *v361;
      v363 = (v362 >> 4) + 5;
      v364 = v255 >> 56;
      v365 = *v251;
      if (v364 <= 0)
      {
        *v251 = v365 - (v365 >> v363);
        v366 = *(v137 + 24 * (v11 != 0) + 12 * (v200 > 9) + 968);
      }

      else
      {
        *v251 = v365 + ((0x8000 - v365) >> v363);
        v366 = *(v137 + 24 * (v11 != 0) + 12 * (v200 > 9) + 968);
        if (v253)
        {
          *(v137 + 24 * (v11 != 0) + 12 * (v200 > 9) + 968) = v366 + ((0x8000 - v366) >> v363);
          v367 = *(v137 + 24 * (v11 != 0) + 12 * (v200 > 9) + 970);
          v211 = v200;
          if (v364 > 2)
          {
            v368 = v367 + ((0x8000 - v367) >> v363);
            v369 = (v137 + 24 * (v11 != 0) + 12 * (v200 > 9) + 972);
            v370 = *v369;
            goto LABEL_426;
          }

          goto LABEL_353;
        }
      }

      v211 = v200;
      *(v137 + 24 * (v11 != 0) + 12 * (v200 > 9) + 968) = v366 - (v366 >> v363);
      v367 = *(v137 + 24 * (v11 != 0) + 12 * (v200 > 9) + 970);
LABEL_353:
      v371 = v367 - (v367 >> v363);
      v369 = (v137 + 24 * (v11 != 0) + 12 * (v200 > 9) + 972);
      v370 = *v369;
LABEL_513:
      *(v369 - 1) = v371;
      goto LABEL_514;
    }

    v262 = v261;
    v263 = *(a3 + 32);
    v264 = *(a3 + 40);
    if (v264 >= v263)
    {
      v268 = *(a3 + 40);
      goto LABEL_344;
    }

    v265 = 8 - v261;
    if (v265 >= 7)
    {
      v266 = 7;
    }

    else
    {
      v266 = 8 - v261;
    }

    v267 = ((v266 ^ 0xFu) - v262) >> 3;
    if (v267 >= ~v264 + v263)
    {
      v267 = ~v264 + v263;
    }

    if (v267 >= 0xF)
    {
      v341 = v267 + 1;
      v342 = (v267 + 1) & 0x3FFFFFF0;
      v268 = &v264->u8[v342];
      v343 = 0uLL;
      v344 = v262;
      v345 = v226;
      v346 = vdupq_n_s32(v265);
      v347 = vaddq_s32(v346, xmmword_273BC3230);
      v348 = vaddq_s32(v346, xmmword_273BC3240);
      v349 = vaddq_s32(v346, xmmword_273BC3250);
      v350 = vaddq_s32(v346, xmmword_273BC3220);
      v351.i64[0] = 0x8000800080008;
      v351.i64[1] = 0x8000800080008;
      v352.i64[0] = 0x7F0000007FLL;
      v352.i64[1] = 0x7F0000007FLL;
      v353 = v342;
      v354 = 0uLL;
      v355 = 0uLL;
      v356 = 0uLL;
      do
      {
        v357 = *v264++;
        v355 = veorq_s8(vshlq_u32(vqtbl1q_s8(v357, xmmword_273B8E7B0), v348), v355);
        v354 = veorq_s8(vshlq_u32(vqtbl1q_s8(v357, xmmword_273B8E7C0), v349), v354);
        v345 = veorq_s8(vshlq_u32(vqtbl1q_s8(v357, xmmword_273B8E7D0), v350), v345);
        v356 = veorq_s8(vshlq_u32(vqtbl1q_s8(v357, xmmword_273B8E7A0), v347), v356);
        v344 = vaddq_s16(v344, v351);
        v343 = vaddq_s16(v343, v351);
        v350 = vaddq_s32(v350, v352);
        v349 = vaddq_s32(v349, v352);
        v348 = vaddq_s32(v348, v352);
        v347 = vaddq_s32(v347, v352);
        v353 -= 16;
      }

      while (v353);
      v358 = v264 < v263;
      LOWORD(v262) = vaddvq_s16(vaddq_s16(v344, v343));
      v359 = veorq_s8(veorq_s8(v345, v355), veorq_s8(v354, v356));
      *v359.i8 = veor_s8(*v359.i8, *&vextq_s8(v359, v359, 8uLL));
      v226 = v359.i32[0] ^ v359.i32[1];
      if (v341 == v342)
      {
        goto LABEL_343;
      }

      v265 -= 8 * v342;
    }

    else
    {
      v268 = *(a3 + 40);
    }

    do
    {
      v360 = *v268++;
      v226 ^= v360 << v265;
      LOWORD(v262) = v262 + 8;
      v358 = v268 < v263;
      v187 = v265 >= 8;
      v265 -= 8;
    }

    while (v187 && v268 < v263);
LABEL_343:
    if (v358)
    {
LABEL_345:
      *(a3 + 48) = v226;
      *(a3 + 54) = v262;
      *(a3 + 40) = v268;
      goto LABEL_346;
    }

LABEL_344:
    *(a3 + 24) = *(a3 + 24) - v262 + 0x4000;
    LOWORD(v262) = 0x4000;
    goto LABEL_345;
  }

  if (v206 == 1)
  {
    v306 = (v137 + 28 * (v11 != 0) + 14 * (v200 > 9) + 1014);
    v307 = 24;
    v308 = 0x400000000000000;
    v309 = 0x200000000000000;
    v217 = -1;
    v310 = v306;
    v311 = 0xFF00000000000000;
    do
    {
      v312 = v208;
      v313 = *v310++;
      v314 = v210 * (v313 >> 6);
      v307 -= 4;
      v208 = v307 + (v314 >> 1);
      v308 -= 0x100000000000000;
      v309 -= 0x100000000000000;
      v311 += 0x100000000000000;
      ++v217;
    }

    while (v209 < v208);
    v315 = v312 - (v314 >> 1) - v307;
    v316 = 15 - (__clz(v315) ^ 0x1F);
    v317 = *(a3 + 54) - v316;
    *(a3 + 54) = v317;
    v226 = ((v207 - (v208 << 16) + 1) << v316) - 1;
    *(a3 + 48) = v226;
    *(a3 + 52) = v315 << v316;
    if ((v317 & 0x8000) == 0)
    {
LABEL_470:
      if (*(a3 + 56))
      {
        v361 = (v137 + 28 * (v11 != 0) + 14 * (v200 > 9) + 1026);
        v362 = *v361;
        v392 = (v362 >> 4) + 5;
        v510 = v311 >> 56;
        v511 = *v306;
        if (v510 <= 0)
        {
          *v306 = v511 - (v511 >> v392);
          v512 = *(v137 + 28 * (v11 != 0) + 14 * (v200 > 9) + 1016);
        }

        else
        {
          *v306 = v511 + ((0x8000 - v511) >> v392);
          v512 = *(v137 + 28 * (v11 != 0) + 14 * (v200 > 9) + 1016);
          if (v309)
          {
            *(v137 + 28 * (v11 != 0) + 14 * (v200 > 9) + 1016) = v512 + ((0x8000 - v512) >> v392);
            v513 = *(v137 + 28 * (v11 != 0) + 14 * (v200 > 9) + 1018);
            if (v510 > 2)
            {
              *(v137 + 28 * (v11 != 0) + 14 * (v200 > 9) + 1018) = v513 + ((0x8000 - v513) >> v392);
              v514 = *(v137 + 28 * (v11 != 0) + 14 * (v200 > 9) + 1020);
              v211 = v200;
              if (v308)
              {
                v369 = (v137 + 28 * (v11 != 0) + 14 * (v200 > 9) + 1022);
                v400 = *v369;
                *(v137 + 28 * (v11 != 0) + 14 * (v200 > 9) + 1020) = v514 + ((0x8000 - v514) >> v392);
                if (v510 > 4)
                {
                  goto LABEL_476;
                }

                goto LABEL_482;
              }

              goto LABEL_480;
            }

LABEL_479:
            v211 = v200;
            *(v137 + 28 * (v11 != 0) + 14 * (v200 > 9) + 1018) = v513 - (v513 >> v392);
            v514 = *(v137 + 28 * (v11 != 0) + 14 * (v200 > 9) + 1020);
LABEL_480:
            v401 = v514 - (v514 >> v392);
            v369 = (v137 + 28 * (v11 != 0) + 14 * (v200 > 9) + 1022);
            v400 = *v369;
            goto LABEL_481;
          }
        }

        *(v137 + 28 * (v11 != 0) + 14 * (v200 > 9) + 1016) = v512 - (v512 >> v392);
        v513 = *(v137 + 28 * (v11 != 0) + 14 * (v200 > 9) + 1018);
        goto LABEL_479;
      }

LABEL_504:
      v211 = v200;
      goto LABEL_505;
    }

    v318 = v317;
    v319 = *(a3 + 32);
    v320 = *(a3 + 40);
    if (v320 >= v319)
    {
      v324 = *(a3 + 40);
      goto LABEL_468;
    }

    v321 = 8 - v317;
    if (v321 >= 7)
    {
      v322 = 7;
    }

    else
    {
      v322 = 8 - v317;
    }

    v323 = ((v322 ^ 0xFu) - v318) >> 3;
    if (v323 >= ~v320 + v319)
    {
      v323 = ~v320 + v319;
    }

    if (v323 >= 0xF)
    {
      v490 = v323 + 1;
      v491 = (v323 + 1) & 0x3FFFFFF0;
      v324 = &v320->u8[v491];
      v492 = 0uLL;
      v493 = v318;
      v494 = v226;
      v495 = vdupq_n_s32(v321);
      v496 = vaddq_s32(v495, xmmword_273BC3230);
      v497 = vaddq_s32(v495, xmmword_273BC3240);
      v498 = vaddq_s32(v495, xmmword_273BC3250);
      v499 = vaddq_s32(v495, xmmword_273BC3220);
      v500.i64[0] = 0x8000800080008;
      v500.i64[1] = 0x8000800080008;
      v501.i64[0] = 0x7F0000007FLL;
      v501.i64[1] = 0x7F0000007FLL;
      v502 = v491;
      v503 = 0uLL;
      v504 = 0uLL;
      v505 = 0uLL;
      do
      {
        v506 = *v320++;
        v504 = veorq_s8(vshlq_u32(vqtbl1q_s8(v506, xmmword_273B8E7B0), v497), v504);
        v503 = veorq_s8(vshlq_u32(vqtbl1q_s8(v506, xmmword_273B8E7C0), v498), v503);
        v494 = veorq_s8(vshlq_u32(vqtbl1q_s8(v506, xmmword_273B8E7D0), v499), v494);
        v505 = veorq_s8(vshlq_u32(vqtbl1q_s8(v506, xmmword_273B8E7A0), v496), v505);
        v493 = vaddq_s16(v493, v500);
        v492 = vaddq_s16(v492, v500);
        v499 = vaddq_s32(v499, v501);
        v498 = vaddq_s32(v498, v501);
        v497 = vaddq_s32(v497, v501);
        v496 = vaddq_s32(v496, v501);
        v502 -= 16;
      }

      while (v502);
      v507 = v320 < v319;
      LOWORD(v318) = vaddvq_s16(vaddq_s16(v493, v492));
      v508 = veorq_s8(veorq_s8(v494, v504), veorq_s8(v503, v505));
      *v508.i8 = veor_s8(*v508.i8, *&vextq_s8(v508, v508, 8uLL));
      v226 = v508.i32[0] ^ v508.i32[1];
      if (v490 == v491)
      {
        goto LABEL_467;
      }

      v321 -= 8 * v491;
    }

    else
    {
      v324 = *(a3 + 40);
    }

    do
    {
      v509 = *v324++;
      v226 ^= v509 << v321;
      LOWORD(v318) = v318 + 8;
      v507 = v324 < v319;
      v187 = v321 >= 8;
      v321 -= 8;
    }

    while (v187 && v324 < v319);
LABEL_467:
    if (v507)
    {
LABEL_469:
      *(a3 + 48) = v226;
      *(a3 + 54) = v318;
      *(a3 + 40) = v324;
      goto LABEL_470;
    }

LABEL_468:
    *(a3 + 24) = *(a3 + 24) - v318 + 0x4000;
    LOWORD(v318) = 0x4000;
    goto LABEL_469;
  }

  v211 = v200;
  v212 = (v137 + 32 * (v11 != 0) + 16 * (v200 > 9) + 1070);
  v213 = 28;
  v214 = 0x600000000000000;
  v215 = 0x400000000000000;
  v216 = 0x200000000000000;
  v217 = -1;
  v218 = v212;
  v219 = 0xFF00000000000000;
  do
  {
    v220 = v208;
    v221 = *v218++;
    v222 = v210 * (v221 >> 6);
    v213 -= 4;
    v208 = v213 + (v222 >> 1);
    v214 -= 0x100000000000000;
    v215 -= 0x100000000000000;
    v216 -= 0x100000000000000;
    v219 += 0x100000000000000;
    ++v217;
  }

  while (v209 < v208);
  v223 = v220 - (v222 >> 1) - v213;
  v224 = 15 - (__clz(v223) ^ 0x1F);
  v225 = *(a3 + 54) - v224;
  *(a3 + 54) = v225;
  v226 = ((v207 - (v208 << 16) + 1) << v224) - 1;
  *(a3 + 48) = v226;
  *(a3 + 52) = v223 << v224;
  if (v225 < 0)
  {
    v227 = v225;
    v229 = *(a3 + 32);
    v228 = *(a3 + 40);
    if (v228 >= v229)
    {
      v233 = *(a3 + 40);
      goto LABEL_417;
    }

    v230 = 8 - v225;
    if (v230 >= 7)
    {
      v231 = 7;
    }

    else
    {
      v231 = 8 - v225;
    }

    v232 = ((v231 ^ 0xFu) - v227) >> 3;
    if (v232 >= ~v228 + v229)
    {
      v232 = ~v228 + v229;
    }

    if (v232 >= 0xF)
    {
      v433 = v232 + 1;
      v434 = (v232 + 1) & 0x3FFFFFF0;
      v233 = &v228->u8[v434];
      v435 = 0uLL;
      v436 = v227;
      v437 = v226;
      v438 = vdupq_n_s32(v230);
      v439 = vaddq_s32(v438, xmmword_273BC3230);
      v440 = vaddq_s32(v438, xmmword_273BC3240);
      v441 = vaddq_s32(v438, xmmword_273BC3250);
      v442 = vaddq_s32(v438, xmmword_273BC3220);
      v443.i64[0] = 0x8000800080008;
      v443.i64[1] = 0x8000800080008;
      v444.i64[0] = 0x7F0000007FLL;
      v444.i64[1] = 0x7F0000007FLL;
      v445 = v434;
      v446 = 0uLL;
      v447 = 0uLL;
      v448 = 0uLL;
      do
      {
        v449 = *v228++;
        v447 = veorq_s8(vshlq_u32(vqtbl1q_s8(v449, xmmword_273B8E7B0), v440), v447);
        v446 = veorq_s8(vshlq_u32(vqtbl1q_s8(v449, xmmword_273B8E7C0), v441), v446);
        v437 = veorq_s8(vshlq_u32(vqtbl1q_s8(v449, xmmword_273B8E7D0), v442), v437);
        v448 = veorq_s8(vshlq_u32(vqtbl1q_s8(v449, xmmword_273B8E7A0), v439), v448);
        v436 = vaddq_s16(v436, v443);
        v435 = vaddq_s16(v435, v443);
        v442 = vaddq_s32(v442, v444);
        v441 = vaddq_s32(v441, v444);
        v440 = vaddq_s32(v440, v444);
        v439 = vaddq_s32(v439, v444);
        v445 -= 16;
      }

      while (v445);
      v450 = v228 < v229;
      LOWORD(v227) = vaddvq_s16(vaddq_s16(v436, v435));
      v451 = veorq_s8(veorq_s8(v437, v447), veorq_s8(v446, v448));
      *v451.i8 = veor_s8(*v451.i8, *&vextq_s8(v451, v451, 8uLL));
      v226 = v451.i32[0] ^ v451.i32[1];
      if (v433 == v434)
      {
        goto LABEL_416;
      }

      v230 -= 8 * v434;
    }

    else
    {
      v233 = *(a3 + 40);
    }

    do
    {
      v452 = *v233++;
      v226 ^= v452 << v230;
      LOWORD(v227) = v227 + 8;
      v450 = v233 < v229;
      v187 = v230 >= 8;
      v230 -= 8;
    }

    while (v187 && v233 < v229);
LABEL_416:
    if (v450)
    {
LABEL_418:
      *(a3 + 48) = v226;
      *(a3 + 54) = v227;
      *(a3 + 40) = v233;
      goto LABEL_419;
    }

LABEL_417:
    *(a3 + 24) = *(a3 + 24) - v227 + 0x4000;
    LOWORD(v227) = 0x4000;
    goto LABEL_418;
  }

LABEL_419:
  if (!*(a3 + 56))
  {
    goto LABEL_505;
  }

  v361 = (v137 + 32 * (v11 != 0) + 16 * (v200 > 9) + 1084);
  v362 = *v361;
  v363 = (v362 >> 4) + 5;
  v453 = v219 >> 56;
  v454 = *v212;
  if (v453 <= 0)
  {
    *v212 = v454 - (v454 >> v363);
    v455 = *(v137 + 32 * (v11 != 0) + 16 * (v200 > 9) + 1072);
    goto LABEL_430;
  }

  *v212 = v454 + ((0x8000 - v454) >> v363);
  v455 = *(v137 + 32 * (v11 != 0) + 16 * (v200 > 9) + 1072);
  if (!v216)
  {
LABEL_430:
    *(v137 + 32 * (v11 != 0) + 16 * (v200 > 9) + 1072) = v455 - (v455 >> v363);
    v456 = *(v137 + 32 * (v11 != 0) + 16 * (v200 > 9) + 1074);
    goto LABEL_431;
  }

  *(v137 + 32 * (v11 != 0) + 16 * (v200 > 9) + 1072) = v455 + ((0x8000 - v455) >> v363);
  v456 = *(v137 + 32 * (v11 != 0) + 16 * (v200 > 9) + 1074);
  if (v453 <= 2)
  {
LABEL_431:
    *(v137 + 32 * (v11 != 0) + 16 * (v200 > 9) + 1074) = v456 - (v456 >> v363);
    v457 = *(v137 + 32 * (v11 != 0) + 16 * (v200 > 9) + 1076);
    goto LABEL_432;
  }

  *(v137 + 32 * (v11 != 0) + 16 * (v200 > 9) + 1074) = v456 + ((0x8000 - v456) >> v363);
  v457 = *(v137 + 32 * (v11 != 0) + 16 * (v200 > 9) + 1076);
  if (!v215)
  {
LABEL_432:
    *(v137 + 32 * (v11 != 0) + 16 * (v200 > 9) + 1076) = v457 - (v457 >> v363);
    v458 = *(v137 + 32 * (v11 != 0) + 16 * (v200 > 9) + 1078);
    goto LABEL_433;
  }

  *(v137 + 32 * (v11 != 0) + 16 * (v200 > 9) + 1076) = v457 + ((0x8000 - v457) >> v363);
  v458 = *(v137 + 32 * (v11 != 0) + 16 * (v200 > 9) + 1078);
  if (v453 <= 4)
  {
LABEL_433:
    v371 = v458 - (v458 >> v363);
    v369 = (v137 + 32 * (v11 != 0) + 16 * (v200 > 9) + 1080);
    v370 = *v369;
    goto LABEL_513;
  }

  v368 = v458 + ((0x8000 - v458) >> v363);
  v369 = (v137 + 32 * (v11 != 0) + 16 * (v200 > 9) + 1080);
  v370 = *v369;
LABEL_426:
  *(v369 - 1) = v368;
  if (!v214)
  {
    goto LABEL_514;
  }

  v459 = 0x8000 - v370;
LABEL_428:
  v460 = v370 + (v459 >> v363);
LABEL_515:
  *v369 = v460;
  v543 = 0;
  if (v362 < 0x20)
  {
    LOWORD(v362) = v362 + 1;
  }

  *v361 = v362;
LABEL_518:
  v544 = v217;
  v545 = v217 + 1;
  v1063 = v11 != 0;
  v1051 = v11;
  if ((v217 - 2) > 8)
  {
    v567 = v140;
    v568 = v10;
    LOWORD(v569) = 0;
    goto LABEL_559;
  }

  v546 = av1_eob_offset_bits[v545];
  v547 = (v137 + 108 * v140 + 54 * (v11 != 0) + 6 * v544 + 378);
  v548 = *(a3 + 52);
  v549 = v548 >> 8;
  v550 = 8;
  v551 = 1;
  v552 = v547;
  do
  {
    v553 = v548;
    v554 = *v552++;
    v555 = v549 * (v554 >> 6);
    v550 -= 4;
    v548 = v550 + (v555 >> 1);
    --v551;
  }

  while (HIWORD(v226) < v548);
  v556 = v553 - (v555 >> 1) - v550;
  v557 = 15 - (__clz(v556) ^ 0x1F);
  v558 = *(a3 + 54) - v557;
  *(a3 + 54) = v558;
  v559 = ((v226 - (v548 << 16) + 1) << v557) - 1;
  *(a3 + 48) = v559;
  *(a3 + 52) = v556 << v557;
  if (v558 < 0)
  {
    v560 = v558;
    v561 = *(a3 + 32);
    v562 = *(a3 + 40);
    if (v562 >= v561)
    {
      v566 = *(a3 + 40);
      goto LABEL_540;
    }

    v563 = 8 - v560;
    if ((8 - v560) >= 7)
    {
      v564 = 7;
    }

    else
    {
      v564 = 8 - v560;
    }

    v565 = ((v564 ^ 0xFu) - v560) >> 3;
    if (v565 >= ~v562 + v561)
    {
      v565 = ~v562 + v561;
    }

    if (v565 >= 0xF)
    {
      v570 = v565 + 1;
      v571 = (v565 + 1) & 0x3FFFFFF0;
      v566 = &v562->u8[v571];
      v572 = 0uLL;
      v573 = v560;
      v574 = v559;
      v575 = vdupq_n_s32(v563);
      v576 = vaddq_s32(v575, xmmword_273BC3230);
      v577 = vaddq_s32(v575, xmmword_273BC3240);
      v578 = vaddq_s32(v575, xmmword_273BC3250);
      v579 = vaddq_s32(v575, xmmword_273BC3220);
      v580.i64[0] = 0x8000800080008;
      v580.i64[1] = 0x8000800080008;
      v581.i64[0] = 0x7F0000007FLL;
      v581.i64[1] = 0x7F0000007FLL;
      v582 = v571;
      v583 = 0uLL;
      v584 = 0uLL;
      v585 = 0uLL;
      do
      {
        v586 = *v562++;
        v584 = veorq_s8(vshlq_u32(vqtbl1q_s8(v586, xmmword_273B8E7B0), v577), v584);
        v583 = veorq_s8(vshlq_u32(vqtbl1q_s8(v586, xmmword_273B8E7C0), v578), v583);
        v574 = veorq_s8(vshlq_u32(vqtbl1q_s8(v586, xmmword_273B8E7D0), v579), v574);
        v585 = veorq_s8(vshlq_u32(vqtbl1q_s8(v586, xmmword_273B8E7A0), v576), v585);
        v573 = vaddq_s16(v573, v580);
        v572 = vaddq_s16(v572, v580);
        v579 = vaddq_s32(v579, v581);
        v578 = vaddq_s32(v578, v581);
        v577 = vaddq_s32(v577, v581);
        v576 = vaddq_s32(v576, v581);
        v582 -= 16;
      }

      while (v582);
      v587 = v562 < v561;
      LOWORD(v560) = vaddvq_s16(vaddq_s16(v573, v572));
      v588 = veorq_s8(veorq_s8(v574, v584), veorq_s8(v583, v585));
      *v588.i8 = veor_s8(*v588.i8, *&vextq_s8(v588, v588, 8uLL));
      v559 = v588.i32[0] ^ v588.i32[1];
      if (v570 == v571)
      {
        goto LABEL_539;
      }

      v563 -= 8 * v571;
    }

    else
    {
      v566 = *(a3 + 40);
    }

    do
    {
      v589 = *v566++;
      v559 ^= v589 << v563;
      LOWORD(v560) = v560 + 8;
      v587 = v566 < v561;
      v187 = v563 >= 8;
      v563 -= 8;
    }

    while (v187 && v566 < v561);
LABEL_539:
    if (v587)
    {
LABEL_541:
      *(a3 + 48) = v559;
      *(a3 + 54) = v560;
      *(a3 + 40) = v566;
      goto LABEL_542;
    }

LABEL_540:
    *(a3 + 24) = *(a3 + 24) - v560 + 0x4000;
    LOWORD(v560) = 0x4000;
    goto LABEL_541;
  }

LABEL_542:
  if ((v543 & 1) == 0)
  {
    v590 = v547[2];
    v591 = (v590 >> 4) + 4;
    v592 = *v547;
    if (-v551 < 1)
    {
      v593 = v592 - (v592 >> v591);
    }

    else
    {
      v593 = v592 + ((0x8000 - v592) >> v591);
    }

    *v547 = v593;
    if (v590 < 0x20)
    {
      LOWORD(v590) = v590 + 1;
    }

    v547[2] = v590;
  }

  v567 = v140;
  v568 = v10;
  if (v551)
  {
    v569 = 1 << (v546 - 1);
  }

  else
  {
    v569 = 0;
  }

  if (v545 != 3)
  {
    v594 = v546 - 2;
    if (v546 <= 2)
    {
      v546 = 2;
    }

    v595 = v546 - 1;
    do
    {
      v596 = od_ec_decode_BOOL_q15(a3 + 16, 0x4000u);
      v597 = 1 << v594;
      if (!v596)
      {
        v597 = 0;
      }

      v569 += v597;
      --v594;
      --v595;
    }

    while (v595);
  }

LABEL_559:
  v598 = v569 + av1_eob_group_start[v545];
  *v1071 = v598;
  if ((v598 & 0xFFFE) != 0)
  {
    __memset_chk();
    v598 = *v1071;
  }

  v10 = v568;
  v599 = v598 - 1;
  v600 = *(v1073 + 2 * v599);
  v601 = v1058;
  v602 = v1064;
  v603 = v1063;
  if (v599)
  {
    v604 = (v1065 << v1075) + 7;
    if (v1065 << v1075 >= 0)
    {
      v604 = v1065 << v1075;
    }

    v605 = 2;
    if (v599 > (v1065 << v1075) / 4)
    {
      v605 = 3;
    }

    if (v599 > v604 >> 3)
    {
      v606 = v605;
    }

    else
    {
      v606 = 1;
    }
  }

  else
  {
    v606 = 0;
  }

  v607 = 0;
  v608 = (v1064 + (v567 << 6) + 32 * v1063 + 8 * v606 + 1470);
  v609 = *(a3 + 48);
  v610 = *(a3 + 52);
  v611 = v610 >> 8;
  v612 = 12;
  v613 = 0x200000000000000;
  v614 = 0xFF00000000000000;
  do
  {
    v615 = v610;
    v616 = v611 * (v608[v607] >> 6);
    v612 -= 4;
    v610 = v612 + (v616 >> 1);
    ++v607;
    v613 -= 0x100000000000000;
    v614 += 0x100000000000000;
  }

  while (HIWORD(v609) < v610);
  v617 = v615 - (v616 >> 1) - v612;
  v618 = 15 - (__clz(v617) ^ 0x1F);
  v619 = *(a3 + 54) - v618;
  *(a3 + 54) = v619;
  v620 = ((v609 - (v610 << 16) + 1) << v618) - 1;
  *(a3 + 48) = v620;
  *(a3 + 52) = v617 << v618;
  if (v619 < 0)
  {
    v621 = v619;
    v622 = *(a3 + 32);
    v623 = *(a3 + 40);
    if (v623 >= v622)
    {
      v627 = *(a3 + 40);
      goto LABEL_590;
    }

    v624 = 8 - v621;
    if ((8 - v621) >= 7)
    {
      v625 = 7;
    }

    else
    {
      v625 = 8 - v621;
    }

    v626 = ((v625 ^ 0xFu) - v621) >> 3;
    if (v626 >= ~v623 + v622)
    {
      v626 = ~v623 + v622;
    }

    if (v626 >= 0xF)
    {
      v628 = v626 + 1;
      v629 = (v626 + 1) & 0x3FFFFFF0;
      v627 = &v623->u8[v629];
      v630 = 0uLL;
      v631 = v621;
      v632 = v620;
      v633 = vdupq_n_s32(v624);
      v634 = vaddq_s32(v633, xmmword_273BC3230);
      v635 = vaddq_s32(v633, xmmword_273BC3240);
      v636 = vaddq_s32(v633, xmmword_273BC3250);
      v637 = vaddq_s32(v633, xmmword_273BC3220);
      v638.i64[0] = 0x8000800080008;
      v638.i64[1] = 0x8000800080008;
      v639.i64[0] = 0x7F0000007FLL;
      v639.i64[1] = 0x7F0000007FLL;
      v640 = v629;
      v641 = 0uLL;
      v642 = 0uLL;
      v643 = 0uLL;
      do
      {
        v644 = *v623++;
        v642 = veorq_s8(vshlq_u32(vqtbl1q_s8(v644, xmmword_273B8E7B0), v635), v642);
        v641 = veorq_s8(vshlq_u32(vqtbl1q_s8(v644, xmmword_273B8E7C0), v636), v641);
        v632 = veorq_s8(vshlq_u32(vqtbl1q_s8(v644, xmmword_273B8E7D0), v637), v632);
        v643 = veorq_s8(vshlq_u32(vqtbl1q_s8(v644, xmmword_273B8E7A0), v634), v643);
        v631 = vaddq_s16(v631, v638);
        v630 = vaddq_s16(v630, v638);
        v637 = vaddq_s32(v637, v639);
        v636 = vaddq_s32(v636, v639);
        v635 = vaddq_s32(v635, v639);
        v634 = vaddq_s32(v634, v639);
        v640 -= 16;
      }

      while (v640);
      v645 = v623 < v622;
      LOWORD(v621) = vaddvq_s16(vaddq_s16(v631, v630));
      v646 = veorq_s8(veorq_s8(v632, v642), veorq_s8(v641, v643));
      *v646.i8 = veor_s8(*v646.i8, *&vextq_s8(v646, v646, 8uLL));
      v620 = v646.i32[0] ^ v646.i32[1];
      if (v628 == v629)
      {
        goto LABEL_589;
      }

      v624 -= 8 * v629;
    }

    else
    {
      v627 = *(a3 + 40);
    }

    do
    {
      v647 = *v627++;
      v620 ^= v647 << v624;
      LOWORD(v621) = v621 + 8;
      v645 = v627 < v622;
      v187 = v624 >= 8;
      v624 -= 8;
    }

    while (v187 && v627 < v622);
LABEL_589:
    if (v645)
    {
LABEL_591:
      *(a3 + 48) = v620;
      *(a3 + 54) = v621;
      *(a3 + 40) = v627;
      goto LABEL_592;
    }

LABEL_590:
    *(a3 + 24) = *(a3 + 24) - v621 + 0x4000;
    LOWORD(v621) = 0x4000;
    goto LABEL_591;
  }

LABEL_592:
  v648 = *(a3 + 56);
  if (!*(a3 + 56))
  {
    goto LABEL_602;
  }

  v649 = v608[3];
  v650 = (v649 >> 4) + 4;
  v651 = *v608;
  if (v614 <= 0)
  {
    *v608 = v651 - (v651 >> v650);
    v652 = v608[1];
    goto LABEL_597;
  }

  *v608 = v651 + ((0x8000 - v651) >> v650);
  v652 = v608[1];
  if (!v613)
  {
LABEL_597:
    v653 = v652 - (v652 >> v650);
    goto LABEL_598;
  }

  v653 = v652 + ((0x8000 - v652) >> v650);
LABEL_598:
  v608[1] = v653;
  if (v649 >= 0x20)
  {
    v654 = v649;
  }

  else
  {
    v654 = v649 + 1;
  }

  v608[3] = v654;
LABEL_602:
  v655 = v600 >> v1075;
  if (v607 - 2 <= 0)
  {
    goto LABEL_758;
  }

  LOBYTE(v607) = v607 - 4;
  if (v600)
  {
    v656 = v655 << v1075;
    if ((v211 > 9 || v600 - v656 > 1 || v655 >= 2) && (((0xA800uLL >> v211) & 1) == 0 || v655))
    {
      v29 = ((0x5400uLL >> v211) & (v600 == v656)) == 0;
      v657 = 14;
      if (!v29)
      {
        v657 = 7;
      }
    }

    else
    {
      v657 = 7;
    }
  }

  else
  {
    v657 = 0;
  }

  v658 = (v1054 >> 1);
  if (v658 >= 3)
  {
    v658 = 3;
  }

  v659 = (v1064 + 420 * v658 + 210 * v1063 + 10 * v657 + 5990);
  v660 = *(a3 + 52);
  v661 = v660 >> 8;
  v662 = -2;
  v663 = 16;
  v664 = 0x200000000000000;
  v665 = v659;
  v666 = 0xFF00000000000000;
  do
  {
    v667 = v660;
    v668 = *v665++;
    v669 = v661 * (v668 >> 6);
    v663 -= 4;
    v660 = v663 + (v669 >> 1);
    LOBYTE(v607) = v607 + 1;
    ++v662;
    v664 -= 0x100000000000000;
    v666 += 0x100000000000000;
  }

  while (HIWORD(v620) < v660);
  v670 = v667 - (v669 >> 1) - v663;
  v671 = 15 - (__clz(v670) ^ 0x1F);
  v672 = *(a3 + 54) - v671;
  *(a3 + 54) = v672;
  v620 = ((v620 - (v660 << 16) + 1) << v671) - 1;
  *(a3 + 48) = v620;
  *(a3 + 52) = v670 << v671;
  if (v672 < 0)
  {
    v673 = v672;
    v674 = *(a3 + 32);
    v675 = *(a3 + 40);
    if (v675 >= v674)
    {
      v679 = *(a3 + 40);
      goto LABEL_636;
    }

    v676 = 8 - v673;
    if ((8 - v673) >= 7)
    {
      v677 = 7;
    }

    else
    {
      v677 = 8 - v673;
    }

    v678 = ((v677 ^ 0xFu) - v673) >> 3;
    if (v678 >= ~v675 + v674)
    {
      v678 = ~v675 + v674;
    }

    if (v678 >= 0xF)
    {
      v680 = v678 + 1;
      v681 = (v678 + 1) & 0x3FFFFFF0;
      v679 = &v675->u8[v681];
      v682 = 0uLL;
      v683 = v673;
      v684 = v620;
      v685 = vdupq_n_s32(v676);
      v686 = vaddq_s32(v685, xmmword_273BC3230);
      v687 = vaddq_s32(v685, xmmword_273BC3240);
      v688 = vaddq_s32(v685, xmmword_273BC3250);
      v689 = vaddq_s32(v685, xmmword_273BC3220);
      v690.i64[0] = 0x8000800080008;
      v690.i64[1] = 0x8000800080008;
      v691.i64[0] = 0x7F0000007FLL;
      v691.i64[1] = 0x7F0000007FLL;
      v692 = v681;
      v693 = 0uLL;
      v694 = 0uLL;
      v695 = 0uLL;
      do
      {
        v696 = *v675++;
        v694 = veorq_s8(vshlq_u32(vqtbl1q_s8(v696, xmmword_273B8E7B0), v687), v694);
        v693 = veorq_s8(vshlq_u32(vqtbl1q_s8(v696, xmmword_273B8E7C0), v688), v693);
        v684 = veorq_s8(vshlq_u32(vqtbl1q_s8(v696, xmmword_273B8E7D0), v689), v684);
        v695 = veorq_s8(vshlq_u32(vqtbl1q_s8(v696, xmmword_273B8E7A0), v686), v695);
        v683 = vaddq_s16(v683, v690);
        v682 = vaddq_s16(v682, v690);
        v689 = vaddq_s32(v689, v691);
        v688 = vaddq_s32(v688, v691);
        v687 = vaddq_s32(v687, v691);
        v686 = vaddq_s32(v686, v691);
        v692 -= 16;
      }

      while (v692);
      v697 = v675 < v674;
      LOWORD(v673) = vaddvq_s16(vaddq_s16(v683, v682));
      v698 = veorq_s8(veorq_s8(v684, v694), veorq_s8(v693, v695));
      *v698.i8 = veor_s8(*v698.i8, *&vextq_s8(v698, v698, 8uLL));
      v620 = v698.i32[0] ^ v698.i32[1];
      if (v680 == v681)
      {
        goto LABEL_635;
      }

      v676 -= 8 * v681;
    }

    else
    {
      v679 = *(a3 + 40);
    }

    do
    {
      v699 = *v679++;
      v620 ^= v699 << v676;
      LOWORD(v673) = v673 + 8;
      v697 = v679 < v674;
      v187 = v676 >= 8;
      v676 -= 8;
    }

    while (v187 && v679 < v674);
LABEL_635:
    if (v697)
    {
LABEL_637:
      *(a3 + 48) = v620;
      *(a3 + 54) = v673;
      *(a3 + 40) = v679;
      goto LABEL_638;
    }

LABEL_636:
    *(a3 + 24) = *(a3 + 24) - v673 + 0x4000;
    LOWORD(v673) = 0x4000;
    goto LABEL_637;
  }

LABEL_638:
  if (!v648)
  {
    goto LABEL_650;
  }

  v700 = v659[4];
  v701 = (v700 >> 4) + 5;
  v702 = v666 >> 56;
  v703 = *v659;
  if (v702 <= 0)
  {
    *v659 = v703 - (v703 >> v701);
    v704 = v659[1];
    goto LABEL_644;
  }

  *v659 = v703 + ((0x8000 - v703) >> v701);
  v704 = v659[1];
  if (!v664)
  {
LABEL_644:
    v659[1] = v704 - (v704 >> v701);
    v705 = v659[2];
    goto LABEL_645;
  }

  v659[1] = v704 + ((0x8000 - v704) >> v701);
  v705 = v659[2];
  if (v702 <= 2)
  {
LABEL_645:
    v706 = v705 - (v705 >> v701);
    goto LABEL_646;
  }

  v706 = v705 + ((0x8000 - v705) >> v701);
LABEL_646:
  v659[2] = v706;
  if (v700 >= 0x20)
  {
    v707 = v700;
  }

  else
  {
    v707 = v700 + 1;
  }

  v659[4] = v707;
LABEL_650:
  if (v662 <= 1)
  {
    LOBYTE(v607) = v607 + 3;
    goto LABEL_758;
  }

  v708 = *(a3 + 52);
  v709 = v708 >> 8;
  v710 = -2;
  v711 = 16;
  v712 = 0x200000000000000;
  v713 = v659;
  v714 = 0xFF00000000000000;
  do
  {
    v715 = v708;
    v716 = *v713++;
    v717 = v709 * (v716 >> 6);
    v711 -= 4;
    v708 = v711 + (v717 >> 1);
    LOBYTE(v607) = v607 + 1;
    ++v710;
    v712 -= 0x100000000000000;
    v714 += 0x100000000000000;
  }

  while (HIWORD(v620) < v708);
  v718 = v715 - (v717 >> 1) - v711;
  v719 = 15 - (__clz(v718) ^ 0x1F);
  v720 = *(a3 + 54) - v719;
  *(a3 + 54) = v720;
  v620 = ((v620 - (v708 << 16) + 1) << v719) - 1;
  *(a3 + 48) = v620;
  *(a3 + 52) = v718 << v719;
  if (v720 < 0)
  {
    v721 = v720;
    v722 = *(a3 + 32);
    v723 = *(a3 + 40);
    if (v723 >= v722)
    {
      v727 = *(a3 + 40);
      goto LABEL_672;
    }

    v724 = 8 - v720;
    if (v724 >= 7)
    {
      v725 = 7;
    }

    else
    {
      v725 = 8 - v720;
    }

    v726 = ((v725 ^ 0xFu) - v721) >> 3;
    if (v726 >= ~v723 + v722)
    {
      v726 = ~v723 + v722;
    }

    if (v726 >= 0xF)
    {
      v728 = v726 + 1;
      v729 = (v726 + 1) & 0x3FFFFFF0;
      v727 = &v723->u8[v729];
      v730 = 0uLL;
      v731 = v721;
      v732 = v620;
      v733 = vdupq_n_s32(v724);
      v734 = vaddq_s32(v733, xmmword_273BC3230);
      v735 = vaddq_s32(v733, xmmword_273BC3240);
      v736 = vaddq_s32(v733, xmmword_273BC3250);
      v737 = vaddq_s32(v733, xmmword_273BC3220);
      v738.i64[0] = 0x8000800080008;
      v738.i64[1] = 0x8000800080008;
      v739.i64[0] = 0x7F0000007FLL;
      v739.i64[1] = 0x7F0000007FLL;
      v740 = v729;
      v741 = 0uLL;
      v742 = 0uLL;
      v743 = 0uLL;
      do
      {
        v744 = *v723++;
        v742 = veorq_s8(vshlq_u32(vqtbl1q_s8(v744, xmmword_273B8E7B0), v735), v742);
        v741 = veorq_s8(vshlq_u32(vqtbl1q_s8(v744, xmmword_273B8E7C0), v736), v741);
        v732 = veorq_s8(vshlq_u32(vqtbl1q_s8(v744, xmmword_273B8E7D0), v737), v732);
        v743 = veorq_s8(vshlq_u32(vqtbl1q_s8(v744, xmmword_273B8E7A0), v734), v743);
        v731 = vaddq_s16(v731, v738);
        v730 = vaddq_s16(v730, v738);
        v737 = vaddq_s32(v737, v739);
        v736 = vaddq_s32(v736, v739);
        v735 = vaddq_s32(v735, v739);
        v734 = vaddq_s32(v734, v739);
        v740 -= 16;
      }

      while (v740);
      v745 = v723 < v722;
      LOWORD(v721) = vaddvq_s16(vaddq_s16(v731, v730));
      v746 = veorq_s8(veorq_s8(v732, v742), veorq_s8(v741, v743));
      *v746.i8 = veor_s8(*v746.i8, *&vextq_s8(v746, v746, 8uLL));
      v620 = v746.i32[0] ^ v746.i32[1];
      if (v728 == v729)
      {
        goto LABEL_671;
      }

      v724 -= 8 * v729;
    }

    else
    {
      v727 = *(a3 + 40);
    }

    do
    {
      v747 = *v727++;
      v620 ^= v747 << v724;
      LOWORD(v721) = v721 + 8;
      v745 = v727 < v722;
      v187 = v724 >= 8;
      v724 -= 8;
    }

    while (v187 && v727 < v722);
LABEL_671:
    if (v745)
    {
LABEL_673:
      *(a3 + 48) = v620;
      *(a3 + 54) = v721;
      *(a3 + 40) = v727;
      goto LABEL_674;
    }

LABEL_672:
    *(a3 + 24) = *(a3 + 24) - v721 + 0x4000;
    LOWORD(v721) = 0x4000;
    goto LABEL_673;
  }

LABEL_674:
  if (!v648)
  {
    goto LABEL_686;
  }

  v748 = v659[4];
  v749 = (v748 >> 4) + 5;
  v750 = v714 >> 56;
  v751 = *v659;
  if (v750 <= 0)
  {
    *v659 = v751 - (v751 >> v749);
    v752 = v659[1];
    goto LABEL_680;
  }

  *v659 = v751 + ((0x8000 - v751) >> v749);
  v752 = v659[1];
  if (!v712)
  {
LABEL_680:
    v659[1] = v752 - (v752 >> v749);
    v753 = v659[2];
    goto LABEL_681;
  }

  v659[1] = v752 + ((0x8000 - v752) >> v749);
  v753 = v659[2];
  if (v750 <= 2)
  {
LABEL_681:
    v754 = v753 - (v753 >> v749);
    goto LABEL_682;
  }

  v754 = v753 + ((0x8000 - v753) >> v749);
LABEL_682:
  v659[2] = v754;
  if (v748 >= 0x20)
  {
    v755 = v748;
  }

  else
  {
    v755 = v748 + 1;
  }

  v659[4] = v755;
LABEL_686:
  if (v710 < 2)
  {
    LOBYTE(v607) = v607 + 2;
    goto LABEL_758;
  }

  v756 = *(a3 + 52);
  v757 = v756 >> 8;
  v758 = -2;
  v759 = 16;
  v760 = 0x200000000000000;
  v761 = v659;
  v762 = 0xFF00000000000000;
  do
  {
    v763 = v756;
    v764 = *v761++;
    v765 = v757 * (v764 >> 6);
    v759 -= 4;
    v756 = v759 + (v765 >> 1);
    LOBYTE(v607) = v607 + 1;
    ++v758;
    v760 -= 0x100000000000000;
    v762 += 0x100000000000000;
  }

  while (HIWORD(v620) < v756);
  v766 = v763 - (v765 >> 1) - v759;
  v767 = 15 - (__clz(v766) ^ 0x1F);
  v768 = *(a3 + 54) - v767;
  *(a3 + 54) = v768;
  v620 = ((v620 - (v756 << 16) + 1) << v767) - 1;
  *(a3 + 48) = v620;
  *(a3 + 52) = v766 << v767;
  if (v768 < 0)
  {
    v769 = v768;
    v770 = *(a3 + 32);
    v771 = *(a3 + 40);
    if (v771 >= v770)
    {
      v775 = *(a3 + 40);
      goto LABEL_708;
    }

    v772 = 8 - v768;
    if (v772 >= 7)
    {
      v773 = 7;
    }

    else
    {
      v773 = 8 - v768;
    }

    v774 = ((v773 ^ 0xFu) - v769) >> 3;
    if (v774 >= ~v771 + v770)
    {
      v774 = ~v771 + v770;
    }

    if (v774 >= 0xF)
    {
      v776 = v774 + 1;
      v777 = (v774 + 1) & 0x3FFFFFF0;
      v775 = &v771->u8[v777];
      v778 = 0uLL;
      v779 = v769;
      v780 = v620;
      v781 = vdupq_n_s32(v772);
      v782 = vaddq_s32(v781, xmmword_273BC3230);
      v783 = vaddq_s32(v781, xmmword_273BC3240);
      v784 = vaddq_s32(v781, xmmword_273BC3250);
      v785 = vaddq_s32(v781, xmmword_273BC3220);
      v786.i64[0] = 0x8000800080008;
      v786.i64[1] = 0x8000800080008;
      v787.i64[0] = 0x7F0000007FLL;
      v787.i64[1] = 0x7F0000007FLL;
      v788 = v777;
      v789 = 0uLL;
      v790 = 0uLL;
      v791 = 0uLL;
      do
      {
        v792 = *v771++;
        v790 = veorq_s8(vshlq_u32(vqtbl1q_s8(v792, xmmword_273B8E7B0), v783), v790);
        v789 = veorq_s8(vshlq_u32(vqtbl1q_s8(v792, xmmword_273B8E7C0), v784), v789);
        v780 = veorq_s8(vshlq_u32(vqtbl1q_s8(v792, xmmword_273B8E7D0), v785), v780);
        v791 = veorq_s8(vshlq_u32(vqtbl1q_s8(v792, xmmword_273B8E7A0), v782), v791);
        v779 = vaddq_s16(v779, v786);
        v778 = vaddq_s16(v778, v786);
        v785 = vaddq_s32(v785, v787);
        v784 = vaddq_s32(v784, v787);
        v783 = vaddq_s32(v783, v787);
        v782 = vaddq_s32(v782, v787);
        v788 -= 16;
      }

      while (v788);
      v793 = v771 < v770;
      LOWORD(v769) = vaddvq_s16(vaddq_s16(v779, v778));
      v794 = veorq_s8(veorq_s8(v780, v790), veorq_s8(v789, v791));
      *v794.i8 = veor_s8(*v794.i8, *&vextq_s8(v794, v794, 8uLL));
      v620 = v794.i32[0] ^ v794.i32[1];
      if (v776 == v777)
      {
        goto LABEL_707;
      }

      v772 -= 8 * v777;
    }

    else
    {
      v775 = *(a3 + 40);
    }

    do
    {
      v795 = *v775++;
      v620 ^= v795 << v772;
      LOWORD(v769) = v769 + 8;
      v793 = v775 < v770;
      v187 = v772 >= 8;
      v772 -= 8;
    }

    while (v187 && v775 < v770);
LABEL_707:
    if (v793)
    {
LABEL_709:
      *(a3 + 48) = v620;
      *(a3 + 54) = v769;
      *(a3 + 40) = v775;
      goto LABEL_710;
    }

LABEL_708:
    *(a3 + 24) = *(a3 + 24) - v769 + 0x4000;
    LOWORD(v769) = 0x4000;
    goto LABEL_709;
  }

LABEL_710:
  if (!v648)
  {
    goto LABEL_722;
  }

  v796 = v659[4];
  v797 = (v796 >> 4) + 5;
  v798 = v762 >> 56;
  v799 = *v659;
  if (v798 <= 0)
  {
    *v659 = v799 - (v799 >> v797);
    v800 = v659[1];
    goto LABEL_716;
  }

  *v659 = v799 + ((0x8000 - v799) >> v797);
  v800 = v659[1];
  if (!v760)
  {
LABEL_716:
    v659[1] = v800 - (v800 >> v797);
    v801 = v659[2];
    goto LABEL_717;
  }

  v659[1] = v800 + ((0x8000 - v800) >> v797);
  v801 = v659[2];
  if (v798 <= 2)
  {
LABEL_717:
    v802 = v801 - (v801 >> v797);
    goto LABEL_718;
  }

  v802 = v801 + ((0x8000 - v801) >> v797);
LABEL_718:
  v659[2] = v802;
  if (v796 >= 0x20)
  {
    v803 = v796;
  }

  else
  {
    v803 = v796 + 1;
  }

  v659[4] = v803;
LABEL_722:
  if (v758 < 2)
  {
    LOBYTE(v607) = v607 + 1;
    goto LABEL_758;
  }

  v804 = *(a3 + 52);
  v805 = v804 >> 8;
  v806 = 16;
  v807 = 0x200000000000000;
  v808 = v659;
  v809 = 0xFF00000000000000;
  do
  {
    v810 = v804;
    v811 = *v808++;
    v812 = v805 * (v811 >> 6);
    v806 -= 4;
    v804 = v806 + (v812 >> 1);
    v807 -= 0x100000000000000;
    v809 += 0x100000000000000;
    LOBYTE(v607) = v607 + 1;
  }

  while (HIWORD(v620) < v804);
  v813 = v810 - (v812 >> 1) - v806;
  v814 = 15 - (__clz(v813) ^ 0x1F);
  v815 = *(a3 + 54) - v814;
  *(a3 + 54) = v815;
  v620 = ((v620 - (v804 << 16) + 1) << v814) - 1;
  *(a3 + 48) = v620;
  *(a3 + 52) = v813 << v814;
  if (v815 < 0)
  {
    v816 = v815;
    v818 = *(a3 + 32);
    v817 = *(a3 + 40);
    if (v817 >= v818)
    {
      v822 = *(a3 + 40);
      goto LABEL_744;
    }

    v819 = 8 - v815;
    if (v819 >= 7)
    {
      v820 = 7;
    }

    else
    {
      v820 = 8 - v815;
    }

    v821 = ((v820 ^ 0xFu) - v816) >> 3;
    if (v821 >= ~v817 + v818)
    {
      v821 = ~v817 + v818;
    }

    if (v821 >= 0xF)
    {
      v823 = v821 + 1;
      v824 = (v821 + 1) & 0x3FFFFFF0;
      v822 = &v817->u8[v824];
      v825 = 0uLL;
      v826 = v816;
      v827 = v620;
      v828 = vdupq_n_s32(v819);
      v829 = vaddq_s32(v828, xmmword_273BC3230);
      v830 = vaddq_s32(v828, xmmword_273BC3240);
      v831 = vaddq_s32(v828, xmmword_273BC3250);
      v832 = vaddq_s32(v828, xmmword_273BC3220);
      v833.i64[0] = 0x8000800080008;
      v833.i64[1] = 0x8000800080008;
      v834.i64[0] = 0x7F0000007FLL;
      v834.i64[1] = 0x7F0000007FLL;
      v835 = v824;
      v836 = 0uLL;
      v837 = 0uLL;
      v838 = 0uLL;
      do
      {
        v839 = *v817++;
        v837 = veorq_s8(vshlq_u32(vqtbl1q_s8(v839, xmmword_273B8E7B0), v830), v837);
        v836 = veorq_s8(vshlq_u32(vqtbl1q_s8(v839, xmmword_273B8E7C0), v831), v836);
        v827 = veorq_s8(vshlq_u32(vqtbl1q_s8(v839, xmmword_273B8E7D0), v832), v827);
        v838 = veorq_s8(vshlq_u32(vqtbl1q_s8(v839, xmmword_273B8E7A0), v829), v838);
        v826 = vaddq_s16(v826, v833);
        v825 = vaddq_s16(v825, v833);
        v832 = vaddq_s32(v832, v834);
        v831 = vaddq_s32(v831, v834);
        v830 = vaddq_s32(v830, v834);
        v829 = vaddq_s32(v829, v834);
        v835 -= 16;
      }

      while (v835);
      v840 = v817 < v818;
      LOWORD(v816) = vaddvq_s16(vaddq_s16(v826, v825));
      v841 = veorq_s8(veorq_s8(v827, v837), veorq_s8(v836, v838));
      *v841.i8 = veor_s8(*v841.i8, *&vextq_s8(v841, v841, 8uLL));
      v620 = v841.i32[0] ^ v841.i32[1];
      if (v823 == v824)
      {
        goto LABEL_743;
      }

      v819 -= 8 * v824;
    }

    else
    {
      v822 = *(a3 + 40);
    }

    do
    {
      v842 = *v822++;
      v620 ^= v842 << v819;
      LOWORD(v816) = v816 + 8;
      v840 = v822 < v818;
      v187 = v819 >= 8;
      v819 -= 8;
    }

    while (v187 && v822 < v818);
LABEL_743:
    if (v840)
    {
LABEL_745:
      *(a3 + 48) = v620;
      *(a3 + 54) = v816;
      *(a3 + 40) = v822;
      goto LABEL_746;
    }

LABEL_744:
    *(a3 + 24) = *(a3 + 24) - v816 + 0x4000;
    LOWORD(v816) = 0x4000;
    goto LABEL_745;
  }

LABEL_746:
  if (!v648)
  {
    goto LABEL_758;
  }

  v843 = v659[4];
  v844 = (v843 >> 4) + 5;
  v845 = v809 >> 56;
  v846 = *v659;
  if (v845 <= 0)
  {
    *v659 = v846 - (v846 >> v844);
    v847 = v659[1];
    goto LABEL_752;
  }

  *v659 = v846 + ((0x8000 - v846) >> v844);
  v847 = v659[1];
  if (!v807)
  {
LABEL_752:
    v659[1] = v847 - (v847 >> v844);
    v848 = v659[2];
    goto LABEL_753;
  }

  v659[1] = v847 + ((0x8000 - v847) >> v844);
  v848 = v659[2];
  if (v845 <= 2)
  {
LABEL_753:
    v849 = v848 - (v848 >> v844);
    goto LABEL_754;
  }

  v849 = v848 + ((0x8000 - v848) >> v844);
LABEL_754:
  v659[2] = v849;
  if (v843 >= 0x20)
  {
    v850 = v843;
  }

  else
  {
    v850 = v843 + 1;
  }

  v659[4] = v850;
LABEL_758:
  v1076[4 * v655 + v600] = v607;
  v851 = *v1071;
  if (v851 >= 2)
  {
    v852 = (v1054 >> 1);
    v853 = v1064 + 840 * v567 + 420 * v1063 + 1790;
    if (v852 >= 3)
    {
      v852 = 3;
    }

    v854 = v1064 + 420 * v852 + 210 * v1063 + 5990;
    if (v211 > 9)
    {
      read_coeffs_reverse(a3, a7, v1046, v851 - 2, v1073, v1075, v1076, v853, v854);
LABEL_765:
      v851 = *v1071;
      v602 = v1064;
      v603 = v1063;
      goto LABEL_766;
    }

    v1055 = v854;
    v1048 = v10;
    v855 = v851 - 2;
    v856 = v1073;
    if (v851 == 2)
    {
LABEL_764:
      read_coeffs_reverse(a3, a7, v1046, 0, v856, v1075, v1076, v853, v1055);
      v10 = v1048;
      v601 = v1058;
      goto LABEL_765;
    }

    v1067 = 1 << v1075;
    v1052 = v1067 + 4;
    v936.i64[0] = 0x8000800080008;
    v936.i64[1] = 0x8000800080008;
    v937.i64[0] = 0x7F0000007FLL;
    v937.i64[1] = 0x7F0000007FLL;
    while (1)
    {
      v939 = *(v856 + 2 * v855);
      v940 = v939 >> v1075;
      v941 = &v1076[4 * (v939 >> v1075) + v939];
      v942 = v941[v1067 + 4];
      if (v942 >= 3)
      {
        v942 = 3;
      }

      v943 = v941[1];
      if (v943 >= 3)
      {
        v943 = 3;
      }

      v944 = v941[v1067 + 5];
      if (v944 >= 3)
      {
        v944 = 3;
      }

      v945 = v941[(2 << v1075) + 8];
      if (v945 >= 3)
      {
        v945 = 3;
      }

      v946 = v941[2];
      if (v946 >= 3)
      {
        v946 = 3;
      }

      v947 = (v946 + v942 + v943 + v944 + v945 + 1) >> 1;
      if (v947 >= 4)
      {
        v947 = 4;
      }

      v948 = v853;
      v949 = (v853 + 10 * v947 + 10 * *(*(&av1_nz_map_ctx_offset + a7) + v939));
      v950 = *(a3 + 52);
      v951 = v950 >> 8;
      v952 = 16;
      v953 = 0x200000000000000;
      v954 = 0xFF00000000000000;
      v955 = -1;
      v956 = v949;
      v957 = 2;
      do
      {
        v958 = v950;
        v959 = *v956++;
        v960 = v951 * (v959 >> 6);
        --v957;
        v952 -= 4;
        v950 = v952 + (v960 >> 1);
        v953 -= 0x100000000000000;
        v954 += 0x100000000000000;
        ++v955;
      }

      while (HIWORD(v620) < v950);
      v961 = v958 - (v960 >> 1) - v952;
      v962 = 15 - (__clz(v961) ^ 0x1F);
      v963 = *(a3 + 54) - v962;
      *(a3 + 54) = v963;
      v620 = ((v620 - (v950 << 16) + 1) << v962) - 1;
      *(a3 + 48) = v620;
      *(a3 + 52) = v961 << v962;
      if ((v963 & 0x8000) == 0)
      {
        if (!v648)
        {
          goto LABEL_939;
        }

        goto LABEL_909;
      }

      v970 = *(a3 + 32);
      v971 = *(a3 + 40);
      if (v971 < v970)
      {
        break;
      }

      v975 = *(a3 + 40);
LABEL_937:
      *(a3 + 24) = *(a3 + 24) - v963 + 0x4000;
      v963 = 0x4000;
LABEL_938:
      *(a3 + 48) = v620;
      *(a3 + 54) = v963;
      *(a3 + 40) = v975;
      if (!v648)
      {
LABEL_939:
        if (-v957 >= 2)
        {
          goto LABEL_940;
        }

        goto LABEL_892;
      }

LABEL_909:
      v964 = v949[4];
      v965 = (v964 >> 4) + 5;
      v966 = *v949;
      if (v954 >> 56 <= 0)
      {
        *v949 = v966 - (v966 >> v965);
        v967 = v949[1];
LABEL_922:
        v949[1] = v967 - (v967 >> v965);
        v968 = v949[2];
        goto LABEL_923;
      }

      *v949 = v966 + ((0x8000 - v966) >> v965);
      v967 = v949[1];
      if (!v953)
      {
        goto LABEL_922;
      }

      v949[1] = v967 + ((0x8000 - v967) >> v965);
      v968 = v949[2];
      if ((v954 >> 56) > 2)
      {
        v969 = v968 + ((0x8000 - v968) >> v965);
        goto LABEL_924;
      }

LABEL_923:
      v969 = v968 - (v968 >> v965);
LABEL_924:
      v949[2] = v969;
      if (v964 < 0x20)
      {
        LOWORD(v964) = v964 + 1;
      }

      v949[4] = v964;
      if (-v957 >= 2)
      {
LABEL_940:
        v993 = 0;
        v994 = v939 - (v940 << v1075);
        v995 = v994 + v940 * v1052;
        v996 = v995 + 1;
        v997 = v1076[v995 + 1];
        if (v997 >= 0xF)
        {
          v997 = 15;
        }

        v998 = v1076[v995 + v1052];
        if (v998 >= 0xF)
        {
          v998 = 15;
        }

        v999 = v997 + v998;
        v1000 = v1076[v996 + v1052];
        if (v1000 >= 0xF)
        {
          v1000 = 15;
        }

        v1001 = (v1000 + v999 + 1) >> 1;
        if (v1001 >= 6)
        {
          v1001 = 6;
        }

        v938 = (v994 | v940) < 2;
        v1002 = 140;
        if (v938)
        {
          v1002 = 70;
        }

        v1003 = (v1055 + v1002 + 10 * v1001);
        while (1)
        {
          v1004 = *(a3 + 52);
          v1005 = v1004 >> 8;
          --v955;
          v1006 = 16;
          v1007 = 0x200000000000000;
          v1008 = 0xFF00000000000000;
          v1009 = v1003;
          v1010 = 2;
          do
          {
            v1011 = v1004;
            v1012 = *v1009++;
            v1013 = v1005 * (v1012 >> 6);
            --v1010;
            v1006 -= 4;
            v1004 = v1006 + (v1013 >> 1);
            v1007 -= 0x100000000000000;
            v1008 += 0x100000000000000;
            ++v955;
          }

          while (HIWORD(v620) < v1004);
          v1014 = v1011 - (v1013 >> 1) - v1006;
          v1015 = 15 - (__clz(v1014) ^ 0x1F);
          v1016 = *(a3 + 54) - v1015;
          *(a3 + 54) = v1016;
          v620 = ((v620 - (v1004 << 16) + 1) << v1015) - 1;
          *(a3 + 48) = v620;
          *(a3 + 52) = v1014 << v1015;
          if ((v1016 & 0x8000) == 0)
          {
            if (!v648)
            {
              goto LABEL_984;
            }

            goto LABEL_955;
          }

          v1023 = *(a3 + 32);
          v1024 = *(a3 + 40);
          if (v1024 < v1023)
          {
            break;
          }

          v1028 = *(a3 + 40);
LABEL_982:
          *(a3 + 24) = *(a3 + 24) - v1016 + 0x4000;
          v1016 = 0x4000;
LABEL_983:
          *(a3 + 48) = v620;
          *(a3 + 54) = v1016;
          *(a3 + 40) = v1028;
          if (!v648)
          {
LABEL_984:
            if (-v1010 < 2)
            {
              goto LABEL_892;
            }

            goto LABEL_985;
          }

LABEL_955:
          v1017 = v1003[4];
          v1018 = (v1017 >> 4) + 5;
          v1019 = *v1003;
          if (v1008 >> 56 <= 0)
          {
            *v1003 = v1019 - (v1019 >> v1018);
            v1020 = v1003[1];
LABEL_968:
            v1003[1] = v1020 - (v1020 >> v1018);
            v1021 = v1003[2];
            goto LABEL_969;
          }

          *v1003 = v1019 + ((0x8000 - v1019) >> v1018);
          v1020 = v1003[1];
          if (!v1007)
          {
            goto LABEL_968;
          }

          v1003[1] = v1020 + ((0x8000 - v1020) >> v1018);
          v1021 = v1003[2];
          if ((v1008 >> 56) > 2)
          {
            v1022 = v1021 + ((0x8000 - v1021) >> v1018);
            goto LABEL_970;
          }

LABEL_969:
          v1022 = v1021 - (v1021 >> v1018);
LABEL_970:
          v1003[2] = v1022;
          if (v1017 < 0x20)
          {
            LOWORD(v1017) = v1017 + 1;
          }

          v1003[4] = v1017;
          if (-v1010 < 2)
          {
            goto LABEL_892;
          }

LABEL_985:
          v187 = v993 >= 9;
          v993 += 3;
          if (v187)
          {
            goto LABEL_892;
          }
        }

        v1025 = 8 - v1016;
        if (v1025 >= 7)
        {
          v1026 = 7;
        }

        else
        {
          v1026 = 8 - v1016;
        }

        v1027 = ((v1026 ^ 0xFu) - v1016) >> 3;
        if (v1027 >= ~v1024 + v1023)
        {
          v1027 = ~v1024 + v1023;
        }

        if (v1027 >= 0xF)
        {
          v1029 = v1027 + 1;
          v1030 = 0uLL;
          v1031 = v1016;
          v1032 = v620;
          v1033 = vdupq_n_s32(v1025);
          v1028 = &v1024->u8[v1029 & 0x3FFFFFF0];
          v1034 = vaddq_s32(v1033, xmmword_273BC3230);
          v1025 -= 8 * (v1029 & 0x3FFFFFF0);
          v1035 = vaddq_s32(v1033, xmmword_273BC3240);
          v1036 = vaddq_s32(v1033, xmmword_273BC3250);
          v1037 = vaddq_s32(v1033, xmmword_273BC3220);
          v1038 = v1029 & 0x3FFFFFF0;
          v1039 = 0uLL;
          v1040 = 0uLL;
          v1041 = 0uLL;
          do
          {
            v1042 = *v1024++;
            v1040 = veorq_s8(vshlq_u32(vqtbl1q_s8(v1042, xmmword_273B8E7B0), v1035), v1040);
            v1039 = veorq_s8(vshlq_u32(vqtbl1q_s8(v1042, xmmword_273B8E7C0), v1036), v1039);
            v1032 = veorq_s8(vshlq_u32(vqtbl1q_s8(v1042, xmmword_273B8E7D0), v1037), v1032);
            v1041 = veorq_s8(vshlq_u32(vqtbl1q_s8(v1042, xmmword_273B8E7A0), v1034), v1041);
            v1031 = vaddq_s16(v1031, v936);
            v1030 = vaddq_s16(v1030, v936);
            v1037 = vaddq_s32(v1037, v937);
            v1036 = vaddq_s32(v1036, v937);
            v1035 = vaddq_s32(v1035, v937);
            v1034 = vaddq_s32(v1034, v937);
            v1038 -= 16;
          }

          while (v1038);
          v1043 = v1024 < v1023;
          v1016 = vaddvq_s16(vaddq_s16(v1031, v1030));
          v1044 = veorq_s8(veorq_s8(v1032, v1040), veorq_s8(v1039, v1041));
          *v1044.i8 = veor_s8(*v1044.i8, *&vextq_s8(v1044, v1044, 8uLL));
          v620 = v1044.i32[0] ^ v1044.i32[1];
          if (v1029 != (v1029 & 0x3FFFFFF0))
          {
            goto LABEL_978;
          }
        }

        else
        {
          v1028 = *(a3 + 40);
          do
          {
LABEL_978:
            v1045 = *v1028++;
            v620 ^= v1045 << v1025;
            v1016 += 8;
            v1043 = v1028 < v1023;
            v187 = v1025 >= 8;
            v1025 -= 8;
          }

          while (v187 && v1028 < v1023);
        }

        if (v1043)
        {
          goto LABEL_983;
        }

        goto LABEL_982;
      }

LABEL_892:
      *v941 = v955;
      v938 = v855-- <= 1;
      v856 = v1073;
      v853 = v948;
      if (v938)
      {
        goto LABEL_764;
      }
    }

    v972 = 8 - v963;
    if (v972 >= 7)
    {
      v973 = 7;
    }

    else
    {
      v973 = 8 - v963;
    }

    v974 = ((v973 ^ 0xFu) - v963) >> 3;
    if (v974 >= ~v971 + v970)
    {
      v974 = ~v971 + v970;
    }

    if (v974 >= 0xF)
    {
      v976 = v974 + 1;
      v977 = 0uLL;
      v978 = v963;
      v979 = v620;
      v980 = vdupq_n_s32(v972);
      v975 = &v971->u8[v976 & 0x3FFFFFF0];
      v981 = vaddq_s32(v980, xmmword_273BC3230);
      v982 = vaddq_s32(v980, xmmword_273BC3240);
      v983 = vaddq_s32(v980, xmmword_273BC3250);
      v984 = vaddq_s32(v980, xmmword_273BC3220);
      v985 = v976 & 0x3FFFFFF0;
      v986 = 0uLL;
      v987 = 0uLL;
      v988 = 0uLL;
      do
      {
        v989 = *v971++;
        v987 = veorq_s8(vshlq_u32(vqtbl1q_s8(v989, xmmword_273B8E7B0), v982), v987);
        v986 = veorq_s8(vshlq_u32(vqtbl1q_s8(v989, xmmword_273B8E7C0), v983), v986);
        v979 = veorq_s8(vshlq_u32(vqtbl1q_s8(v989, xmmword_273B8E7D0), v984), v979);
        v988 = veorq_s8(vshlq_u32(vqtbl1q_s8(v989, xmmword_273B8E7A0), v981), v988);
        v978 = vaddq_s16(v978, v936);
        v977 = vaddq_s16(v977, v936);
        v984 = vaddq_s32(v984, v937);
        v983 = vaddq_s32(v983, v937);
        v982 = vaddq_s32(v982, v937);
        v981 = vaddq_s32(v981, v937);
        v985 -= 16;
      }

      while (v985);
      v990 = v971 < v970;
      v963 = vaddvq_s16(vaddq_s16(v978, v977));
      v991 = veorq_s8(veorq_s8(v979, v987), veorq_s8(v986, v988));
      *v991.i8 = veor_s8(*v991.i8, *&vextq_s8(v991, v991, 8uLL));
      v620 = v991.i32[0] ^ v991.i32[1];
      if (v976 == (v976 & 0x3FFFFFF0))
      {
        goto LABEL_936;
      }

      v972 -= 8 * (v976 & 0x3FFFFFF0);
    }

    else
    {
      v975 = *(a3 + 40);
    }

    do
    {
      v992 = *v975++;
      v620 ^= v992 << v972;
      v963 += 8;
      v990 = v975 < v970;
      v187 = v972 >= 8;
      v972 -= 8;
    }

    while (v187 && v975 < v970);
LABEL_936:
    if (v990)
    {
      goto LABEL_938;
    }

    goto LABEL_937;
  }

LABEL_766:
  if (!v851)
  {
    v193 = 0;
    v17 = v1053;
    goto LABEL_875;
  }

  v1049 = v10;
  v857 = 0;
  v858 = 0;
  v859 = 0;
  v860 = v1071;
  v861 = (v602 + 18 * v603 + 6 * v1047 + 930);
  v862 = xmmword_273B8E7B0;
  v863 = xmmword_273B8E7C0;
  v864 = xmmword_273B8E7D0;
  v865 = xmmword_273B8E7A0;
  v866.i64[0] = 0x8000800080008;
  v866.i64[1] = 0x8000800080008;
  v867.i64[0] = 0x7F0000007FLL;
  v867.i64[1] = 0x7F0000007FLL;
  v868 = v1073;
  v1056 = v861;
  do
  {
    v873 = *(v868 + 2 * v857);
    v874 = v873 + 4 * (v873 >> v1075);
    v875 = v1076[v874];
    if (!v1076[v874])
    {
      goto LABEL_777;
    }

    v876 = v860[1];
    if (v876 <= v873)
    {
      LOWORD(v876) = *(v868 + 2 * v857);
    }

    v860[1] = v876;
    if (v857)
    {
      v877 = od_ec_decode_BOOL_q15(a3 + 16, 0x4000u);
      v867.i64[0] = 0x7F0000007FLL;
      v867.i64[1] = 0x7F0000007FLL;
      v866.i64[0] = 0x8000800080008;
      v866.i64[1] = 0x8000800080008;
      v865 = xmmword_273B8E7A0;
      v864 = xmmword_273B8E7D0;
      v863 = xmmword_273B8E7C0;
      v862 = xmmword_273B8E7B0;
      v878 = v877;
      if (v875 >= 0xF)
      {
        goto LABEL_814;
      }

      goto LABEL_859;
    }

    v879 = *(a3 + 48);
    v880 = *(a3 + 52);
    v881 = v880 >> 8;
    v878 = -1;
    v882 = 8;
    v883 = v861;
    do
    {
      v884 = v880;
      v885 = *v883++;
      ++v878;
      v886 = v881 * (v885 >> 6);
      v882 -= 4;
      v880 = v882 + (v886 >> 1);
    }

    while (HIWORD(v879) < v880);
    v887 = v884 - (v886 >> 1) - v882;
    v888 = 15 - (__clz(v887) ^ 0x1F);
    v889 = *(a3 + 54) - v888;
    *(a3 + 54) = v889;
    v890 = ((v879 - (v880 << 16) + 1) << v888) - 1;
    *(a3 + 48) = v890;
    *(a3 + 52) = v887 << v888;
    if (v889 < 0)
    {
      v895 = v889;
      v896 = *(a3 + 32);
      v897 = *(a3 + 40);
      if (v897 >= v896)
      {
        v901 = *(a3 + 40);
LABEL_811:
        *(a3 + 24) = *(a3 + 24) - v895 + 0x4000;
        LOWORD(v895) = 0x4000;
LABEL_812:
        *(a3 + 48) = v890;
        *(a3 + 54) = v895;
        *(a3 + 40) = v901;
        if (*(a3 + 56))
        {
LABEL_788:
          v891 = v861[2];
          v892 = (v891 >> 4) + 4;
          v893 = *v861;
          if (v878 < 1)
          {
            v894 = v893 - (v893 >> v892);
          }

          else
          {
            v894 = v893 + ((0x8000 - v893) >> v892);
          }

          *v861 = v894;
          if (v891 < 0x20)
          {
            LOWORD(v891) = v891 + 1;
          }

          v861[2] = v891;
          if (v875 < 0xF)
          {
            goto LABEL_859;
          }

LABEL_814:
          if (od_ec_decode_BOOL_q15(a3 + 16, 0x4000u))
          {
            v920 = 0;
          }

          else
          {
            if (od_ec_decode_BOOL_q15(a3 + 16, 0x4000u))
            {
              v921 = 0;
            }

            else if (od_ec_decode_BOOL_q15(a3 + 16, 0x4000u))
            {
              v921 = 1;
            }

            else if (od_ec_decode_BOOL_q15(a3 + 16, 0x4000u))
            {
              v921 = 2;
            }

            else if (od_ec_decode_BOOL_q15(a3 + 16, 0x4000u))
            {
              v921 = 3;
            }

            else if (od_ec_decode_BOOL_q15(a3 + 16, 0x4000u))
            {
              v921 = 4;
            }

            else if (od_ec_decode_BOOL_q15(a3 + 16, 0x4000u))
            {
              v921 = 5;
            }

            else if (od_ec_decode_BOOL_q15(a3 + 16, 0x4000u))
            {
              v921 = 6;
            }

            else if (od_ec_decode_BOOL_q15(a3 + 16, 0x4000u))
            {
              v921 = 7;
            }

            else if (od_ec_decode_BOOL_q15(a3 + 16, 0x4000u))
            {
              v921 = 8;
            }

            else if (od_ec_decode_BOOL_q15(a3 + 16, 0x4000u))
            {
              v921 = 9;
            }

            else if (od_ec_decode_BOOL_q15(a3 + 16, 0x4000u))
            {
              v921 = 10;
            }

            else if (od_ec_decode_BOOL_q15(a3 + 16, 0x4000u))
            {
              v921 = 11;
            }

            else if (od_ec_decode_BOOL_q15(a3 + 16, 0x4000u))
            {
              v921 = 12;
            }

            else if (od_ec_decode_BOOL_q15(a3 + 16, 0x4000u))
            {
              v921 = 13;
            }

            else if (od_ec_decode_BOOL_q15(a3 + 16, 0x4000u))
            {
              v921 = 14;
            }

            else if (od_ec_decode_BOOL_q15(a3 + 16, 0x4000u))
            {
              v921 = 15;
            }

            else if (od_ec_decode_BOOL_q15(a3 + 16, 0x4000u))
            {
              v921 = 16;
            }

            else if (od_ec_decode_BOOL_q15(a3 + 16, 0x4000u))
            {
              v921 = 17;
            }

            else if (od_ec_decode_BOOL_q15(a3 + 16, 0x4000u))
            {
              v921 = 18;
            }

            else
            {
              od_ec_decode_BOOL_q15(a3 + 16, 0x4000u);
              aom_internal_error(*(a2 + 10736), 7, "Invalid length in read_golomb");
              v921 = 19;
            }

            v922 = v921 + 1;
            v923 = 1;
            do
            {
              v923 = od_ec_decode_BOOL_q15(a3 + 16, 0x4000u) + 2 * v923;
              --v922;
            }

            while (v922);
            v920 = v923 - 1;
            v601 = v1058;
            v861 = v1056;
          }

          v875 += v920;
          v863 = xmmword_273B8E7C0;
          v862 = xmmword_273B8E7B0;
          v865 = xmmword_273B8E7A0;
          v864 = xmmword_273B8E7D0;
          v866.i64[0] = 0x8000800080008;
          v866.i64[1] = 0x8000800080008;
          v867.i64[0] = 0x7F0000007FLL;
          v867.i64[1] = 0x7F0000007FLL;
          goto LABEL_859;
        }

        goto LABEL_813;
      }

      v898 = 8 - v895;
      if ((8 - v895) >= 7)
      {
        v899 = 7;
      }

      else
      {
        v899 = 8 - v895;
      }

      v900 = ((v899 ^ 0xFu) - v895) >> 3;
      if (v900 >= ~v897 + v896)
      {
        v900 = ~v897 + v896;
      }

      if (v900 >= 0xF)
      {
        v902 = v900 + 1;
        v903 = (v900 + 1) & 0x3FFFFFF0;
        v904 = 0uLL;
        v905 = v895;
        v906 = v890;
        v907 = vdupq_n_s32(v898);
        v901 = &v897->u8[v903];
        v908 = vaddq_s32(v907, xmmword_273BC3230);
        v898 -= 8 * v903;
        v909 = vaddq_s32(v907, xmmword_273BC3240);
        v910 = vaddq_s32(v907, xmmword_273BC3250);
        v911 = vaddq_s32(v907, xmmword_273BC3220);
        v912 = v903;
        v913 = 0uLL;
        v914 = 0uLL;
        v915 = 0uLL;
        do
        {
          v916 = *v897++;
          v914 = veorq_s8(vshlq_u32(vqtbl1q_s8(v916, v862), v909), v914);
          v913 = veorq_s8(vshlq_u32(vqtbl1q_s8(v916, v863), v910), v913);
          v906 = veorq_s8(vshlq_u32(vqtbl1q_s8(v916, v864), v911), v906);
          v915 = veorq_s8(vshlq_u32(vqtbl1q_s8(v916, v865), v908), v915);
          v905 = vaddq_s16(v905, v866);
          v904 = vaddq_s16(v904, v866);
          v911 = vaddq_s32(v911, v867);
          v910 = vaddq_s32(v910, v867);
          v909 = vaddq_s32(v909, v867);
          v908 = vaddq_s32(v908, v867);
          v912 -= 16;
        }

        while (v912);
        v917 = v897 < v896;
        LOWORD(v895) = vaddvq_s16(vaddq_s16(v905, v904));
        v918 = veorq_s8(veorq_s8(v906, v914), veorq_s8(v913, v915));
        *v918.i8 = veor_s8(*v918.i8, *&vextq_s8(v918, v918, 8uLL));
        v890 = v918.i32[0] ^ v918.i32[1];
        if (v902 == v903)
        {
          goto LABEL_810;
        }
      }

      else
      {
        v901 = *(a3 + 40);
      }

      do
      {
        v919 = *v901++;
        v890 ^= v919 << v898;
        LOWORD(v895) = v895 + 8;
        v917 = v901 < v896;
        v187 = v898 >= 8;
        v898 -= 8;
      }

      while (v187 && v901 < v896);
LABEL_810:
      if (v917)
      {
        goto LABEL_812;
      }

      goto LABEL_811;
    }

    if (*(a3 + 56))
    {
      goto LABEL_788;
    }

LABEL_813:
    if (v875 >= 0xF)
    {
      goto LABEL_814;
    }

LABEL_859:
    if (v878)
    {
      v924 = -v875;
    }

    else
    {
      v924 = v875;
    }

    if (!v857)
    {
      v858 = v924;
    }

    v868 = v1073;
    v925 = *(v601 + 2 * (*(v1073 + 2 * v857) != 0));
    if (v1062)
    {
      v925 = (*(v1062 + *(v1073 + 2 * v857)) * v925 + 16) >> 5;
    }

    v859 += v875 & 0xFFFFF;
    v869 = ((v925 * (v875 & 0xFFFFF)) & 0xFFFFFF) >> (((0x61E18uLL >> a7) & 1) + ((0x1810uLL >> a7) & 1));
    if (v878)
    {
      v870 = -v869;
    }

    else
    {
      v870 = v869;
    }

    v871 = v1069;
    if (v870 < v1069)
    {
      v871 = v870;
    }

    if (v870 >= v1068)
    {
      v872 = v871;
    }

    else
    {
      v872 = v1068;
    }

    v860 = v1071;
    *(v1070 + 4 * v873) = v872;
    v851 = *v1071;
LABEL_777:
    ++v857;
  }

  while (v857 < v851);
  if (v859 >= 7)
  {
    v926 = 7;
  }

  else
  {
    v926 = v859;
  }

  v927 = v926 | 8;
  if (v858)
  {
    v926 += 16;
  }

  if (v858 < 0)
  {
    v926 = v927;
  }

  v193 = v926;
  v17 = v1053;
  v10 = v1049;
LABEL_875:
  v9 = v1050;
  v11 = v1051;
LABEL_876:
  av1_set_entropy_contexts(a2, v1059, v11, v1061[0], a7, v193, v9, v10);
  if ((*(v1060 + 167) & 0x80) != 0 || v1060[16] >= 1)
  {
    if (*(a2 + 4 * (*(**(a2 + 7864) + 167) & 7) + 10692) || ((0x61810uLL >> a7) & 1) != 0)
    {
      if (!v11)
      {
        v928 = 0;
LABEL_884:
        v929 = tx_size_wide_unit_3[a7];
        v930 = tx_size_high_unit_3[a7];
        if ((0x41010uLL >> a7) & 1) != 0 || ((0x20810uLL >> a7))
        {
          v931 = 0;
          v932 = *(a2 + 7920);
          v933 = v17 + v932 * v1057;
          v934 = 4 * v932;
          do
          {
            v935 = 0;
            do
            {
              *(*(a2 + 7912) + v933 + v935) = v928;
              v935 += 4;
            }

            while (v935 < v929);
            v931 += 4;
            v933 += v934;
          }

          while (v931 < v930);
        }
      }
    }

    else if (!v11)
    {
      v928 = *(*(a2 + 7912) + v17 + *(a2 + 7920) * v10);
      goto LABEL_884;
    }
  }
}

uint64_t read_coeffs_reverse(uint64_t result, unsigned int a2, int a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if ((a4 & 0x80000000) == 0)
  {
    v128 = 1 << a6;
    v9 = v128 + 4;
    v129 = 2 << a6;
    a4 = a4;
    v10.i64[0] = 0x8000800080008;
    v10.i64[1] = 0x8000800080008;
    v11.i64[0] = 0x7F0000007FLL;
    v11.i64[1] = 0x7F0000007FLL;
    do
    {
      v13 = *(a5 + 2 * a4);
      v14 = *(a5 + 2 * a4);
      v15 = v13 >> a6;
      v16 = (a7 + v14 + 4 * (v13 >> a6));
      v17 = clip_max3[v16[1]] + clip_max3[v16[v9]];
      if (a3 == 2)
      {
        v18 = v17 + clip_max3[v16[2]] + clip_max3[v16[3]];
        v19 = v16 + 4;
        v20 = v15;
        v21 = v13 | 2;
        if (!(v13 | 2))
        {
          goto LABEL_21;
        }
      }

      else if (a3)
      {
        v18 = v17 + clip_max3[v16[v129 + 8]] + clip_max3[v16[(3 << a6) + 12]];
        v19 = &v16[(4 << a6) + 16];
        v20 = v15;
        v21 = v13 | a3;
        if (!(v13 | a3))
        {
          goto LABEL_21;
        }
      }

      else
      {
        v18 = v17 + clip_max3[v16[v128 + 5]] + clip_max3[v16[v129 + 8]];
        v19 = v16 + 2;
        v20 = v15;
        v21 = *(a5 + 2 * a4);
        if (!*(a5 + 2 * a4))
        {
          goto LABEL_21;
        }
      }

      v22 = (v18 + clip_max3[*v19] + 1) >> 1;
      if (v22 >= 4)
      {
        v22 = 4;
      }

      if (a3 == 2)
      {
        v23 = nz_map_ctx_offset_1d[v13 & ~(-1 << a6)];
        goto LABEL_19;
      }

      if (a3 == 1)
      {
        v23 = nz_map_ctx_offset_1d[v20];
LABEL_19:
        v21 = v23 + v22;
        goto LABEL_21;
      }

      if (a3)
      {
        v21 = 0;
      }

      else
      {
        v21 = v22 + *(*(&av1_nz_map_ctx_offset + a2) + v14);
      }

LABEL_21:
      v24 = (a8 + 10 * v21);
      v25 = *(result + 48);
      v26 = *(result + 52);
      v27 = v26 >> 8;
      v28 = 16;
      v29 = 0x200000000000000;
      v30 = 0xFF00000000000000;
      v31 = -1;
      v32 = v24;
      v33 = 2;
      do
      {
        v34 = v26;
        v35 = *v32++;
        v36 = v27 * (v35 >> 6);
        --v33;
        v28 -= 4;
        v26 = v28 + (v36 >> 1);
        v29 -= 0x100000000000000;
        v30 += 0x100000000000000;
        ++v31;
      }

      while (HIWORD(v25) < v26);
      v37 = v34 - (v36 >> 1) - v28;
      v38 = 15 - (__clz(v37) ^ 0x1F);
      v39 = *(result + 54) - v38;
      *(result + 54) = v39;
      v40 = ((v25 - (v26 << 16) + 1) << v38) - 1;
      *(result + 48) = v40;
      *(result + 52) = v37 << v38;
      if ((v39 & 0x8000) == 0)
      {
        v41 = *(result + 56);
        if (!*(result + 56))
        {
          goto LABEL_56;
        }

        goto LABEL_25;
      }

      v49 = v39;
      v50 = *(result + 32);
      v51 = *(result + 40);
      if (v51 < v50)
      {
        v52 = 8 - v49;
        if ((8 - v49) >= 7)
        {
          v53 = 7;
        }

        else
        {
          v53 = 8 - v49;
        }

        v54 = ((v53 ^ 0xFu) - v49) >> 3;
        if (v54 >= ~v51 + v50)
        {
          v54 = ~v51 + v50;
        }

        if (v54 < 0xF)
        {
          v55 = *(result + 40);
          goto LABEL_50;
        }

        v57 = v54 + 1;
        v58 = (v54 + 1) & 0x3FFFFFF0;
        v59 = 0uLL;
        v60 = v49;
        v61 = v40;
        v62 = vdupq_n_s32(v52);
        v55 = &v51->u8[v58];
        v63 = vaddq_s32(v62, xmmword_273BC3230);
        v64 = vaddq_s32(v62, xmmword_273BC3240);
        v65 = vaddq_s32(v62, xmmword_273BC3250);
        v66 = vaddq_s32(v62, xmmword_273BC3220);
        v67 = v58;
        v68 = 0uLL;
        v69 = 0uLL;
        v70 = 0uLL;
        do
        {
          v71 = *v51++;
          v69 = veorq_s8(vshlq_u32(vqtbl1q_s8(v71, xmmword_273B8E7B0), v64), v69);
          v68 = veorq_s8(vshlq_u32(vqtbl1q_s8(v71, xmmword_273B8E7C0), v65), v68);
          v61 = veorq_s8(vshlq_u32(vqtbl1q_s8(v71, xmmword_273B8E7D0), v66), v61);
          v70 = veorq_s8(vshlq_u32(vqtbl1q_s8(v71, xmmword_273B8E7A0), v63), v70);
          v60 = vaddq_s16(v60, v10);
          v59 = vaddq_s16(v59, v10);
          v66 = vaddq_s32(v66, v11);
          v65 = vaddq_s32(v65, v11);
          v64 = vaddq_s32(v64, v11);
          v63 = vaddq_s32(v63, v11);
          v67 -= 16;
        }

        while (v67);
        v72 = v51 < v50;
        LOWORD(v49) = vaddvq_s16(vaddq_s16(v60, v59));
        v73 = veorq_s8(veorq_s8(v61, v69), veorq_s8(v68, v70));
        *v73.i8 = veor_s8(*v73.i8, *&vextq_s8(v73, v73, 8uLL));
        v40 = v73.i32[0] ^ v73.i32[1];
        if (v57 != v58)
        {
          v52 -= 8 * v58;
          do
          {
LABEL_50:
            v74 = *v55++;
            v40 ^= v74 << v52;
            LOWORD(v49) = v49 + 8;
            v72 = v55 < v50;
            v75 = v52 >= 8;
            v52 -= 8;
          }

          while (v75 && v55 < v50);
        }

        if (v72)
        {
          goto LABEL_55;
        }

        goto LABEL_54;
      }

      v55 = *(result + 40);
LABEL_54:
      *(result + 24) = *(result + 24) - v49 + 0x4000;
      LOWORD(v49) = 0x4000;
LABEL_55:
      *(result + 48) = v40;
      *(result + 54) = v49;
      *(result + 40) = v55;
      v41 = *(result + 56);
      if (!*(result + 56))
      {
LABEL_56:
        if (-v33 > 1)
        {
          goto LABEL_57;
        }

        goto LABEL_3;
      }

LABEL_25:
      v42 = v24[4];
      v43 = (v42 >> 4) + 5;
      v44 = v30 >> 56;
      v45 = *v24;
      if (v44 <= 0)
      {
        *v24 = v45 - (v45 >> v43);
        v46 = v24[1];
LABEL_38:
        v24[1] = v46 - (v46 >> v43);
        v47 = v24[2];
        goto LABEL_39;
      }

      *v24 = v45 + ((0x8000 - v45) >> v43);
      v46 = v24[1];
      if (!v29)
      {
        goto LABEL_38;
      }

      v24[1] = v46 + ((0x8000 - v46) >> v43);
      v47 = v24[2];
      if (v44 > 2)
      {
        v48 = v47 + ((0x8000 - v47) >> v43);
        goto LABEL_40;
      }

LABEL_39:
      v48 = v47 - (v47 >> v43);
LABEL_40:
      v24[2] = v48;
      if (v42 >= 0x20)
      {
        v56 = v42;
      }

      else
      {
        v56 = v42 + 1;
      }

      v24[4] = v56;
      if (-v33 > 1)
      {
LABEL_57:
        v76 = v13 - (v20 << a6);
        v77 = v76 + v20 * v9;
        v78 = (a7 + v77 + v9);
        v79 = *v78 + *(a7 + v77 + 1);
        if (a3 == 2)
        {
          v79 = (v79 + *(a7 + v77 + 2) + 1) >> 1;
          if (v79 >= 6)
          {
            v79 = 6;
          }

          if (v13)
          {
            if (v13 != v20 << a6)
            {
              goto LABEL_70;
            }

            goto LABEL_75;
          }
        }

        else if (a3 == 1)
        {
          v79 = (v79 + *(a7 + v77 + 2 * (v128 + 4)) + 1) >> 1;
          if (v79 >= 6)
          {
            v79 = 6;
          }

          if (v14)
          {
            if (v20)
            {
              goto LABEL_70;
            }

            goto LABEL_75;
          }
        }

        else
        {
          if (a3)
          {
            goto LABEL_70;
          }

          v79 = (v79 + v78[1] + 1) >> 1;
          if (v79 >= 6)
          {
            v79 = 6;
          }

          if (v14)
          {
            if (v20 > 1 || v76 > 1)
            {
LABEL_70:
              v79 += 14;
              goto LABEL_76;
            }

LABEL_75:
            v79 += 7;
          }
        }

LABEL_76:
        v80 = 0;
        v81 = (a9 + 10 * v79);
        while (2)
        {
          v82 = *(result + 52);
          v83 = v82 >> 8;
          --v31;
          v84 = 16;
          v85 = 0x200000000000000;
          v86 = 0xFF00000000000000;
          v87 = v81;
          v88 = 2;
          do
          {
            v89 = v82;
            v90 = *v87++;
            v91 = v83 * (v90 >> 6);
            --v88;
            v84 -= 4;
            v82 = v84 + (v91 >> 1);
            v85 -= 0x100000000000000;
            v86 += 0x100000000000000;
            ++v31;
          }

          while (HIWORD(v40) < v82);
          v92 = v89 - (v91 >> 1) - v84;
          v93 = 15 - (__clz(v92) ^ 0x1F);
          v94 = *(result + 54) - v93;
          *(result + 54) = v94;
          v40 = ((v40 - (v82 << 16) + 1) << v93) - 1;
          *(result + 48) = v40;
          *(result + 52) = v92 << v93;
          if ((v94 & 0x8000) == 0)
          {
            if (v41)
            {
              goto LABEL_81;
            }

LABEL_111:
            if (-v88 < 2)
            {
              goto LABEL_3;
            }

LABEL_112:
            v75 = v80 >= 9;
            v80 += 3;
            if (v75)
            {
              goto LABEL_3;
            }

            continue;
          }

          break;
        }

        v102 = *(result + 32);
        v103 = *(result + 40);
        if (v103 >= v102)
        {
          v107 = *(result + 40);
          goto LABEL_109;
        }

        v104 = 8 - v94;
        if (v104 >= 7)
        {
          v105 = 7;
        }

        else
        {
          v105 = 8 - v94;
        }

        v106 = ((v105 ^ 0xFu) - v94) >> 3;
        if (v106 >= ~v103 + v102)
        {
          v106 = ~v103 + v102;
        }

        if (v106 >= 0xF)
        {
          v109 = v106 + 1;
          v110 = (v106 + 1) & 0x3FFFFFF0;
          v111 = 0uLL;
          v112 = v94;
          v113 = v40;
          v114 = vdupq_n_s32(v104);
          v107 = &v103->u8[v110];
          v115 = vaddq_s32(v114, xmmword_273BC3230);
          v104 -= 8 * v110;
          v116 = vaddq_s32(v114, xmmword_273BC3240);
          v117 = vaddq_s32(v114, xmmword_273BC3250);
          v118 = vaddq_s32(v114, xmmword_273BC3220);
          v119 = v110;
          v120 = 0uLL;
          v121 = 0uLL;
          v122 = 0uLL;
          do
          {
            v123 = *v103++;
            v121 = veorq_s8(vshlq_u32(vqtbl1q_s8(v123, xmmword_273B8E7B0), v116), v121);
            v120 = veorq_s8(vshlq_u32(vqtbl1q_s8(v123, xmmword_273B8E7C0), v117), v120);
            v113 = veorq_s8(vshlq_u32(vqtbl1q_s8(v123, xmmword_273B8E7D0), v118), v113);
            v122 = veorq_s8(vshlq_u32(vqtbl1q_s8(v123, xmmword_273B8E7A0), v115), v122);
            v112 = vaddq_s16(v112, v10);
            v111 = vaddq_s16(v111, v10);
            v118 = vaddq_s32(v118, v11);
            v117 = vaddq_s32(v117, v11);
            v116 = vaddq_s32(v116, v11);
            v115 = vaddq_s32(v115, v11);
            v119 -= 16;
          }

          while (v119);
          v124 = v103 < v102;
          v94 = vaddvq_s16(vaddq_s16(v112, v111));
          v125 = veorq_s8(veorq_s8(v113, v121), veorq_s8(v120, v122));
          *v125.i8 = veor_s8(*v125.i8, *&vextq_s8(v125, v125, 8uLL));
          v40 = v125.i32[0] ^ v125.i32[1];
          if (v109 != v110)
          {
            goto LABEL_105;
          }
        }

        else
        {
          v107 = *(result + 40);
          do
          {
LABEL_105:
            v126 = *v107++;
            v40 ^= v126 << v104;
            v94 += 8;
            v124 = v107 < v102;
            v75 = v104 >= 8;
            v104 -= 8;
          }

          while (v75 && v107 < v102);
        }

        if (!v124)
        {
LABEL_109:
          *(result + 24) = *(result + 24) - v94 + 0x4000;
          v94 = 0x4000;
        }

        *(result + 48) = v40;
        *(result + 54) = v94;
        *(result + 40) = v107;
        if (!v41)
        {
          goto LABEL_111;
        }

LABEL_81:
        v95 = v81[4];
        v96 = (v95 >> 4) + 5;
        v97 = v86 >> 56;
        v98 = *v81;
        if (v97 <= 0)
        {
          *v81 = v98 - (v98 >> v96);
          v99 = v81[1];
        }

        else
        {
          *v81 = v98 + ((0x8000 - v98) >> v96);
          v99 = v81[1];
          if (v85)
          {
            v81[1] = v99 + ((0x8000 - v99) >> v96);
            v100 = v81[2];
            if (v97 > 2)
            {
              v101 = v100 + ((0x8000 - v100) >> v96);
              goto LABEL_96;
            }

LABEL_95:
            v101 = v100 - (v100 >> v96);
LABEL_96:
            v81[2] = v101;
            if (v95 >= 0x20)
            {
              v108 = v95;
            }

            else
            {
              v108 = v95 + 1;
            }

            v81[4] = v108;
            if (-v88 < 2)
            {
              goto LABEL_3;
            }

            goto LABEL_112;
          }
        }

        v81[1] = v99 - (v99 >> v96);
        v100 = v81[2];
        goto LABEL_95;
      }

LABEL_3:
      *v16 = v31;
    }

    while (a4-- >= 1);
  }

  return result;
}

void *av1_decode_palette_tokens(uint64_t a1, int a2, uint64_t a3)
{
  v4 = 0;
  v123 = *MEMORY[0x277D85DE8];
  v5 = a1 + 2608 * a2;
  v6 = *(v5 + 176);
  if (a2)
  {
    v7 = 10574;
  }

  else
  {
    v7 = 9944;
  }

  v8 = **(a1 + 7864);
  v9 = *v8;
  v10 = block_size_high_9[v9];
  v11 = block_size_wide_10[v9];
  v12 = &v8[a2];
  v13 = ((*(a1 + 7936) >> 31) & (*(a1 + 7936) >> 3)) + v10;
  v15 = *(v5 + 20);
  v14 = *(v5 + 24);
  v16 = v10 >> v14;
  v17 = a2 > 0;
  v111 = v11 >> v15;
  v109 = v16;
  v18 = v16 < 4;
  if (v17 && v11 >> v15 < 4)
  {
    v19 = 2;
  }

  else
  {
    v19 = 0;
  }

  v106 = *(a1 + 2 * a2 + 15028);
  v107 = v6;
  v119 = (v6 + v106);
  v20 = *(a1 + 10648);
  v21 = v12[142];
  if (v17 && v18)
  {
    v22 = 2;
  }

  else
  {
    v22 = 0;
  }

  v112 = v13 >> v14;
  v110 = (((*(a1 + 7928) >> 31) & (*(a1 + 7928) >> 3)) + v11) >> v15;
  v23 = __clz(v21) ^ 0x1F;
  if (v12[142])
  {
    v24 = v23 + 1;
  }

  else
  {
    v24 = 0;
  }

  v25 = (1 << v24) - v21;
  if (v24 >= 2)
  {
    v4 = 0;
    do
    {
      v4 |= od_ec_decode_BOOL_q15(a3 + 16, 0x4000u) << (v24-- - 2);
    }

    while (v24 > 1);
  }

  v114 = (v22 + v112);
  v26 = v19 + v110;
  if (v4 >= v25)
  {
    LOBYTE(v4) = od_ec_decode_BOOL_q15(a3 + 16, 0x4000u) - v25 + 2 * v4;
  }

  result = v119;
  v28 = (v19 + v111);
  *v119 = v4;
  v108 = v19 + v110;
  v113 = (v114 - 1 + v26);
  v121 = v28;
  if (v113 >= 2)
  {
    v29 = v26 - 1;
    v118 = v20 + v7 - 180;
    if (v21 <= 2)
    {
      v30 = 2;
    }

    else
    {
      v30 = v21;
    }

    v31 = (v30 - 1);
    v115 = v29;
    v117 = v7 + 90 * v21 + v20 - 180;
    v32 = 1;
    while (1)
    {
      if (v32 >= v115)
      {
        v33 = v115;
      }

      else
      {
        v33 = v32;
      }

      v116 = v32;
      v34 = v32 - v114;
      if (v32 < v114)
      {
        v34 = -1;
      }

      if (v33 > v34)
      {
        break;
      }

LABEL_23:
      v32 = v116 + 1;
      if (v116 + 1 == v113)
      {
        goto LABEL_74;
      }
    }

    if (v32 >= v115)
    {
      v35 = v115;
    }

    else
    {
      v35 = v32;
    }

    if (v32 >= v115)
    {
      v36 = v115;
    }

    else
    {
      v36 = v32;
    }

    v120 = v34;
    while (1)
    {
      palette_color_index_context = av1_get_palette_color_index_context(result, v28, v116 - v35, v36, v21, v122, 0);
      v39 = v118 + 90 * v21 + 18 * palette_color_index_context;
      v40 = *(a3 + 48);
      v41 = *(a3 + 52);
      v42 = v41 >> 8;
      v43 = 0xFFFFFFFF00000000;
      v44 = 0xFF00000000000000;
      v45 = v39;
      v46 = 4 * v21;
      do
      {
        v47 = v41;
        v48 = *v45++;
        v49 = v42 * (v48 >> 6);
        v46 -= 4;
        v41 = v46 + (v49 >> 1);
        v43 += 0x100000000;
        v44 += 0x100000000000000;
      }

      while (HIWORD(v40) < v41);
      v50 = v47 - (v49 >> 1) - v46;
      v51 = 15 - (__clz(v50) ^ 0x1F);
      v52 = *(a3 + 54) - v51;
      *(a3 + 54) = v52;
      v53 = ((v40 - (v41 << 16) + 1) << v51) - 1;
      *(a3 + 48) = v53;
      *(a3 + 52) = v50 << v51;
      v54.i64[0] = 0x8000800080008;
      v54.i64[1] = 0x8000800080008;
      v55.i64[0] = 0x7F0000007FLL;
      v55.i64[1] = 0x7F0000007FLL;
      if ((v52 & 0x8000) == 0)
      {
        v56.i64[0] = 0x800000008000;
        v56.i64[1] = 0x800000008000;
        if (*(a3 + 56))
        {
          goto LABEL_64;
        }

        goto LABEL_40;
      }

      v57 = v52;
      v58 = *(a3 + 32);
      v59 = *(a3 + 40);
      if (v59 < v58)
      {
        break;
      }

      v63 = *(a3 + 40);
LABEL_62:
      *(a3 + 24) = *(a3 + 24) - v57 + 0x4000;
      LOWORD(v57) = 0x4000;
LABEL_63:
      *(a3 + 48) = v53;
      *(a3 + 54) = v57;
      *(a3 + 40) = v63;
      v56.i64[0] = 0x800000008000;
      v56.i64[1] = 0x800000008000;
      if (*(a3 + 56))
      {
LABEL_64:
        v83 = *(v39 + 2 * v21);
        v84 = (v21 > 3) + (v83 >> 4) + 4;
        v85 = v44 >> 56;
        if (v21 >= 9)
        {
          v87 = vdupq_n_s64(v85);
          v88 = xmmword_273B92120;
          v89 = xmmword_273B92130;
          v90 = vnegq_s32(vdupq_n_s32(v84));
          v91 = v31 & 0xFFFFFFF8;
          v92 = (v118 + 90 * v21 + 18 * palette_color_index_context);
          v93 = xmmword_273BB9B40;
          v94 = xmmword_273BB9B30;
          do
          {
            *v92 = vaddq_s16(*v92, vbslq_s8(vuzp1q_s16(vuzp1q_s32(vcgtq_s64(v87, v89), vcgtq_s64(v87, v88)), vuzp1q_s32(vcgtq_s64(v87, v93), vcgtq_s64(v87, v94))), vuzp1q_s16(vshlq_s32(vsubw_u16(v56, *v92->i8), v90), vshlq_s32(vsubw_high_u16(v56, *v92), v90)), vnegq_s16(vuzp1q_s16(vshlq_u32(vmovl_u16(*v92->i8), v90), vshlq_u32(vmovl_high_u16(*v92), v90)))));
            ++v92;
            v95 = vdupq_n_s64(8uLL);
            v93 = vaddq_s64(v93, v95);
            v88 = vaddq_s64(v88, v95);
            v89 = vaddq_s64(v89, v95);
            v94 = vaddq_s64(v94, v95);
            v91 -= 8;
          }

          while (v91);
          v86 = v31 & 0xFFFFFFF8;
          if (v86 != v31)
          {
            goto LABEL_69;
          }
        }

        else
        {
          v86 = 0;
LABEL_69:
          v96 = (v117 + 18 * palette_color_index_context + 2 * v86);
          do
          {
            v97 = *v96;
            v98 = v97 - (v97 >> v84);
            v99 = v97 + ((0x8000 - v97) >> v84);
            if (v86 >= v85)
            {
              LOWORD(v99) = v98;
            }

            *v96++ = v99;
            ++v86;
          }

          while (v31 != v86);
        }

        v37 = *(v39 + 2 * v21);
        if (v83 < 0x20)
        {
          ++v37;
        }

        *(v39 + 2 * v21) = v37;
      }

LABEL_40:
      v28 = (v19 + v111);
      result = v119;
      v119[v36-- + (v116 - v35--) * v121] = v122[v43 >> 32];
      if (v36 <= v120)
      {
        goto LABEL_23;
      }
    }

    v60 = 8 - v57;
    if ((8 - v57) >= 7)
    {
      v61 = 7;
    }

    else
    {
      v61 = 8 - v57;
    }

    v62 = ((v61 ^ 0xFu) - v57) >> 3;
    if (v62 >= ~v59 + v58)
    {
      v62 = ~v59 + v58;
    }

    if (v62 >= 0xF)
    {
      v64 = v62 + 1;
      v65 = (v62 + 1) & 0x3FFFFFF0;
      v66 = 0uLL;
      v67 = v57;
      v68 = v53;
      v69 = vdupq_n_s32(v60);
      v63 = &v59->u8[v65];
      v70 = vaddq_s32(v69, xmmword_273BC3230);
      v60 -= 8 * v65;
      v71 = vaddq_s32(v69, xmmword_273BC3240);
      v72 = vaddq_s32(v69, xmmword_273BC3250);
      v73 = vaddq_s32(v69, xmmword_273BC3220);
      v74 = v65;
      v75 = 0uLL;
      v76 = 0uLL;
      v77 = 0uLL;
      do
      {
        v78 = *v59++;
        v76 = veorq_s8(vshlq_u32(vqtbl1q_s8(v78, xmmword_273B8E7B0), v71), v76);
        v75 = veorq_s8(vshlq_u32(vqtbl1q_s8(v78, xmmword_273B8E7C0), v72), v75);
        v68 = veorq_s8(vshlq_u32(vqtbl1q_s8(v78, xmmword_273B8E7D0), v73), v68);
        v77 = veorq_s8(vshlq_u32(vqtbl1q_s8(v78, xmmword_273B8E7A0), v70), v77);
        v67 = vaddq_s16(v67, v54);
        v66 = vaddq_s16(v66, v54);
        v73 = vaddq_s32(v73, v55);
        v72 = vaddq_s32(v72, v55);
        v71 = vaddq_s32(v71, v55);
        v70 = vaddq_s32(v70, v55);
        v74 -= 16;
      }

      while (v74);
      v79 = v59 < v58;
      LOWORD(v57) = vaddvq_s16(vaddq_s16(v67, v66));
      v80 = veorq_s8(veorq_s8(v68, v76), veorq_s8(v75, v77));
      *v80.i8 = veor_s8(*v80.i8, *&vextq_s8(v80, v80, 8uLL));
      v53 = v80.i32[0] ^ v80.i32[1];
      if (v64 == v65)
      {
        goto LABEL_61;
      }
    }

    else
    {
      v63 = *(a3 + 40);
    }

    do
    {
      v81 = *v63++;
      v53 ^= v81 << v60;
      LOWORD(v57) = v57 + 8;
      v79 = v63 < v58;
      v82 = v60 >= 8;
      v60 -= 8;
    }

    while (v82 && v63 < v58);
LABEL_61:
    if (v79)
    {
      goto LABEL_63;
    }

    goto LABEL_62;
  }

LABEL_74:
  if (v110 < v111 && v114 >= 1)
  {
    v100 = &v119[v108];
    v101 = v28 - v108;
    v102 = v114;
    do
    {
      result = memset(v100, *(v100 - 1), v101);
      v28 = (v19 + v111);
      v100 += v121;
      --v102;
    }

    while (v102);
  }

  v103 = v109 - v112;
  if (v109 > v112)
  {
    v104 = &v119[(v114 - 1) * v28];
    v105 = (v107 + v106 + v114 * v28);
    do
    {
      result = memcpy(v105, v104, v28);
      v28 = (v19 + v111);
      v105 += v121;
      --v103;
    }

    while (v103);
  }

  return result;
}

uint64_t get_refresh_idx(int *a1, int a2, uint64_t a3, int a4, int a5, int a6)
{
  v6 = a6 - 3;
  if (!a5)
  {
    v13 = a1[1];
    v14 = 0x7FFFFFFF;
    if (v13 != -1 && v13 <= v6)
    {
      v11 = *a1 == 1;
      if (*a1 == 1)
      {
        v16 = 0;
      }

      else
      {
        v16 = 0xFFFFFFFFLL;
      }

      if (*a1 == 1)
      {
        v18 = a1[1];
      }

      else
      {
        v18 = 0x7FFFFFFF;
      }

      if (*a1 == 1)
      {
        v14 = 0x7FFFFFFF;
      }

      else
      {
        v14 = a1[1];
      }

      if (*a1 == 1)
      {
        v17 = 0xFFFFFFFFLL;
      }

      else
      {
        v17 = 0;
      }

      v19 = a1[3];
      if (v19 == -1 || v19 > v6)
      {
        goto LABEL_73;
      }
    }

    else
    {
      v11 = 0;
      v16 = 0xFFFFFFFFLL;
      v17 = 0xFFFFFFFFLL;
      v18 = 0x7FFFFFFF;
      v19 = a1[3];
      if (v19 == -1 || v19 > v6)
      {
        goto LABEL_73;
      }
    }

    v32 = a1[2];
    if (v19 < v18)
    {
      v33 = 1;
    }

    else
    {
      v33 = v16;
    }

    if (v19 >= v18)
    {
      v34 = v18;
    }

    else
    {
      v34 = v19;
    }

    if (v19 < v14)
    {
      v35 = 1;
    }

    else
    {
      v19 = v14;
      v35 = v17;
    }

    if (v32 == 1)
    {
      v16 = v33;
    }

    else
    {
      v16 = v16;
    }

    if (v32 == 1)
    {
      v17 = v17;
    }

    else
    {
      v14 = v19;
      v17 = v35;
    }

    if (v32 == 1)
    {
      v18 = v34;
      ++v11;
    }

LABEL_73:
    v36 = a1[5];
    if (v36 != -1 && v36 <= v6)
    {
      v37 = a1[4];
      v38 = v36 >= v18 ? v16 : 2;
      v39 = v36 >= v18 ? v18 : a1[5];
      if (v36 < v14)
      {
        v40 = 2;
      }

      else
      {
        v36 = v14;
        v40 = v17;
      }

      v16 = v37 == 1 ? v38 : v16;
      if (v37 == 1)
      {
        v17 = v17;
      }

      else
      {
        v14 = v36;
        v17 = v40;
      }

      if (v37 == 1)
      {
        v18 = v39;
        ++v11;
      }
    }

    v41 = a1[7];
    if (v41 != -1 && v41 <= v6)
    {
      v42 = a1[6];
      v43 = v41 >= v18 ? v16 : 3;
      v44 = v41 >= v18 ? v18 : a1[7];
      if (v41 < v14)
      {
        v45 = 3;
      }

      else
      {
        v41 = v14;
        v45 = v17;
      }

      v16 = v42 == 1 ? v43 : v16;
      if (v42 == 1)
      {
        v17 = v17;
      }

      else
      {
        v14 = v41;
        v17 = v45;
      }

      if (v42 == 1)
      {
        v18 = v44;
        ++v11;
      }
    }

    v46 = a1[9];
    if (v46 != -1 && v46 <= v6)
    {
      v47 = a1[8];
      v48 = v46 >= v18 ? v16 : 4;
      v49 = v46 >= v18 ? v18 : a1[9];
      if (v46 < v14)
      {
        v50 = 4;
      }

      else
      {
        v46 = v14;
        v50 = v17;
      }

      v16 = v47 == 1 ? v48 : v16;
      if (v47 == 1)
      {
        v17 = v17;
      }

      else
      {
        v14 = v46;
        v17 = v50;
      }

      if (v47 == 1)
      {
        v18 = v49;
        ++v11;
      }
    }

    v51 = a1[11];
    if (v51 != -1 && v51 <= v6)
    {
      v52 = a1[10];
      v53 = v51 >= v18 ? v16 : 5;
      v54 = v51 >= v18 ? v18 : a1[11];
      if (v51 < v14)
      {
        v55 = 5;
      }

      else
      {
        v51 = v14;
        v55 = v17;
      }

      v16 = v52 == 1 ? v53 : v16;
      if (v52 == 1)
      {
        v17 = v17;
      }

      else
      {
        v14 = v51;
        v17 = v55;
      }

      if (v52 == 1)
      {
        v18 = v54;
        ++v11;
      }
    }

    v56 = a1[13];
    if (v56 != -1 && v56 <= v6)
    {
      v57 = a1[12];
      v58 = v56 >= v18 ? v16 : 6;
      v59 = v56 >= v18 ? v18 : a1[13];
      if (v56 < v14)
      {
        v60 = 6;
      }

      else
      {
        v56 = v14;
        v60 = v17;
      }

      v16 = v57 == 1 ? v58 : v16;
      if (v57 == 1)
      {
        v17 = v17;
      }

      else
      {
        v14 = v56;
        v17 = v60;
      }

      if (v57 == 1)
      {
        v18 = v59;
        ++v11;
      }
    }

    v61 = a1[15];
    if (v61 != -1 && v61 <= v6)
    {
      v62 = a1[14];
      if (v61 >= v18)
      {
        v63 = v16;
      }

      else
      {
        v63 = 7;
      }

      if (v61 >= v14)
      {
        v64 = v17;
      }

      else
      {
        v64 = 7;
      }

      if (v62 == 1)
      {
        v16 = v63;
      }

      else
      {
        v16 = v16;
      }

      if (v62 == 1)
      {
        v17 = v17;
      }

      else
      {
        v17 = v64;
      }

      if (v62 == 1)
      {
        ++v11;
      }

      if (!a2)
      {
        goto LABEL_473;
      }

      goto LABEL_467;
    }

    goto LABEL_466;
  }

  v7 = a3 + 13768;
  v8 = a4;
  v9 = a1[1];
  if (v9 != -1 && v9 <= v6)
  {
    v21 = *(v7 + 32 * a4);
    if (v21 == -1)
    {
      v22 = 0;
    }

    else
    {
      v80 = v9 == v21;
      v22 = v9 == v21;
      if (!v80)
      {
        v23 = (v7 + 32 * a4);
        v24 = v23[1];
        if (v24 != -1)
        {
          if (v9 == v24)
          {
            v22 = 1;
          }

          else
          {
            v25 = v23[2];
            if (v25 != -1)
            {
              if (v9 == v25)
              {
                v22 = 1;
              }

              else
              {
                v26 = v23[3];
                if (v26 != -1)
                {
                  if (v9 == v26)
                  {
                    v22 = 1;
                  }

                  else
                  {
                    v27 = v23[4];
                    if (v27 != -1)
                    {
                      if (v9 == v27)
                      {
                        v22 = 1;
                      }

                      else
                      {
                        v28 = v23[5];
                        if (v28 != -1)
                        {
                          if (v9 == v28)
                          {
                            v22 = 1;
                          }

                          else
                          {
                            v29 = v23[6];
                            if (v29 != -1)
                            {
                              if (v9 == v29)
                              {
                                v22 = 1;
                              }

                              else
                              {
                                v30 = v23[7];
                                if (v30 != -1 && v9 == v30)
                                {
                                  v22 = 1;
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

    v12 = 0x7FFFFFFF;
    if (!v22)
    {
      v78 = *a1;
      if (v9 == 0x7FFFFFFF)
      {
        v79 = -1;
      }

      else
      {
        v79 = 0;
      }

      v80 = v78 == 1;
      v11 = v78 == 1;
      if (v78 == 1)
      {
        v16 = v79;
      }

      else
      {
        v16 = 0xFFFFFFFFLL;
      }

      if (v80)
      {
        v65 = a1[1];
      }

      else
      {
        v65 = 0x7FFFFFFF;
      }

      if (v80)
      {
        v12 = 0x7FFFFFFF;
      }

      else
      {
        v12 = a1[1];
      }

      if (v80)
      {
        v17 = 0xFFFFFFFFLL;
      }

      else
      {
        v17 = v79;
      }

      v66 = a1[3];
      if (v66 == -1 || v66 > v6)
      {
        goto LABEL_249;
      }

      goto LABEL_194;
    }

    v11 = 0;
  }

  else
  {
    v11 = 0;
    v12 = 0x7FFFFFFF;
  }

  v16 = 0xFFFFFFFFLL;
  v17 = 0xFFFFFFFFLL;
  v65 = 0x7FFFFFFF;
  v66 = a1[3];
  if (v66 == -1 || v66 > v6)
  {
    goto LABEL_249;
  }

LABEL_194:
  v68 = *(v7 + 32 * a4);
  if (v68 == -1)
  {
    v69 = 0;
  }

  else
  {
    v80 = v66 == v68;
    v69 = v66 == v68;
    if (!v80)
    {
      v70 = (v7 + 32 * a4);
      v71 = v70[1];
      if (v71 != -1)
      {
        if (v66 == v71)
        {
          v69 = 1;
        }

        else
        {
          v72 = v70[2];
          if (v72 != -1)
          {
            if (v66 == v72)
            {
              v69 = 1;
            }

            else
            {
              v73 = v70[3];
              if (v73 != -1)
              {
                if (v66 == v73)
                {
                  v69 = 1;
                }

                else
                {
                  v74 = v70[4];
                  if (v74 != -1)
                  {
                    if (v66 == v74)
                    {
                      v69 = 1;
                    }

                    else
                    {
                      v75 = v70[5];
                      if (v75 != -1)
                      {
                        if (v66 == v75)
                        {
                          v69 = 1;
                        }

                        else
                        {
                          v76 = v70[6];
                          if (v76 != -1)
                          {
                            if (v66 == v76)
                            {
                              v69 = 1;
                            }

                            else
                            {
                              v77 = v70[7];
                              if (v77 != -1 && v66 == v77)
                              {
                                v69 = 1;
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

  if (!v69)
  {
    if (a1[2] == 1)
    {
      if (v66 < v65)
      {
        v16 = 1;
      }

      else
      {
        v16 = v16;
      }

      if (v66 < v65)
      {
        v65 = v66;
      }

      ++v11;
    }

    else if (v66 >= v12)
    {
      v17 = v17;
    }

    else
    {
      v12 = v66;
      v17 = 1;
    }
  }

LABEL_249:
  v82 = a1[5];
  if (v82 != -1 && v82 <= v6)
  {
    v83 = *(v7 + 32 * v8);
    if (v83 == -1)
    {
      v84 = 0;
    }

    else
    {
      v80 = v82 == v83;
      v84 = v82 == v83;
      if (!v80)
      {
        v85 = (v7 + 32 * v8);
        v86 = v85[1];
        if (v86 != -1)
        {
          if (v82 == v86)
          {
            v84 = 1;
          }

          else
          {
            v87 = v85[2];
            if (v87 != -1)
            {
              if (v82 == v87)
              {
                v84 = 1;
              }

              else
              {
                v88 = v85[3];
                if (v88 != -1)
                {
                  if (v82 == v88)
                  {
                    v84 = 1;
                  }

                  else
                  {
                    v89 = v85[4];
                    if (v89 != -1)
                    {
                      if (v82 == v89)
                      {
                        v84 = 1;
                      }

                      else
                      {
                        v90 = v85[5];
                        if (v90 != -1)
                        {
                          if (v82 == v90)
                          {
                            v84 = 1;
                          }

                          else
                          {
                            v91 = v85[6];
                            if (v91 != -1)
                            {
                              if (v82 == v91)
                              {
                                v84 = 1;
                              }

                              else
                              {
                                v92 = v85[7];
                                if (v92 != -1 && v82 == v92)
                                {
                                  v84 = 1;
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

    if (!v84)
    {
      if (a1[4] == 1)
      {
        if (v82 >= v65)
        {
          v16 = v16;
        }

        else
        {
          v16 = 2;
        }

        if (v82 < v65)
        {
          v65 = a1[5];
        }

        ++v11;
      }

      else if (v82 >= v12)
      {
        v17 = v17;
      }

      else
      {
        v12 = a1[5];
        v17 = 2;
      }
    }
  }

  v93 = a1[7];
  if (v93 != -1 && v93 <= v6)
  {
    v94 = *(v7 + 32 * v8);
    if (v94 == -1)
    {
      v95 = 0;
    }

    else
    {
      v80 = v93 == v94;
      v95 = v93 == v94;
      if (!v80)
      {
        v96 = (v7 + 32 * v8);
        v97 = v96[1];
        if (v97 != -1)
        {
          if (v93 == v97)
          {
            v95 = 1;
          }

          else
          {
            v98 = v96[2];
            if (v98 != -1)
            {
              if (v93 == v98)
              {
                v95 = 1;
              }

              else
              {
                v99 = v96[3];
                if (v99 != -1)
                {
                  if (v93 == v99)
                  {
                    v95 = 1;
                  }

                  else
                  {
                    v100 = v96[4];
                    if (v100 != -1)
                    {
                      if (v93 == v100)
                      {
                        v95 = 1;
                      }

                      else
                      {
                        v101 = v96[5];
                        if (v101 != -1)
                        {
                          if (v93 == v101)
                          {
                            v95 = 1;
                          }

                          else
                          {
                            v102 = v96[6];
                            if (v102 != -1)
                            {
                              if (v93 == v102)
                              {
                                v95 = 1;
                              }

                              else
                              {
                                v103 = v96[7];
                                if (v103 != -1 && v93 == v103)
                                {
                                  v95 = 1;
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

    if (!v95)
    {
      if (a1[6] == 1)
      {
        if (v93 >= v65)
        {
          v16 = v16;
        }

        else
        {
          v16 = 3;
        }

        if (v93 < v65)
        {
          v65 = a1[7];
        }

        ++v11;
      }

      else if (v93 >= v12)
      {
        v17 = v17;
      }

      else
      {
        v12 = a1[7];
        v17 = 3;
      }
    }
  }

  v104 = a1[9];
  if (v104 != -1 && v104 <= v6)
  {
    v105 = *(v7 + 32 * v8);
    if (v105 == -1)
    {
      v106 = 0;
    }

    else
    {
      v80 = v104 == v105;
      v106 = v104 == v105;
      if (!v80)
      {
        v107 = (v7 + 32 * v8);
        v108 = v107[1];
        if (v108 != -1)
        {
          if (v104 == v108)
          {
            v106 = 1;
          }

          else
          {
            v109 = v107[2];
            if (v109 != -1)
            {
              if (v104 == v109)
              {
                v106 = 1;
              }

              else
              {
                v110 = v107[3];
                if (v110 != -1)
                {
                  if (v104 == v110)
                  {
                    v106 = 1;
                  }

                  else
                  {
                    v111 = v107[4];
                    if (v111 != -1)
                    {
                      if (v104 == v111)
                      {
                        v106 = 1;
                      }

                      else
                      {
                        v112 = v107[5];
                        if (v112 != -1)
                        {
                          if (v104 == v112)
                          {
                            v106 = 1;
                          }

                          else
                          {
                            v113 = v107[6];
                            if (v113 != -1)
                            {
                              if (v104 == v113)
                              {
                                v106 = 1;
                              }

                              else
                              {
                                v114 = v107[7];
                                if (v114 != -1 && v104 == v114)
                                {
                                  v106 = 1;
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

    if (!v106)
    {
      if (a1[8] == 1)
      {
        if (v104 >= v65)
        {
          v16 = v16;
        }

        else
        {
          v16 = 4;
        }

        if (v104 < v65)
        {
          v65 = a1[9];
        }

        ++v11;
      }

      else if (v104 >= v12)
      {
        v17 = v17;
      }

      else
      {
        v12 = a1[9];
        v17 = 4;
      }
    }
  }

  v115 = a1[11];
  if (v115 != -1 && v115 <= v6)
  {
    v116 = *(v7 + 32 * v8);
    if (v116 == -1)
    {
      v117 = 0;
    }

    else
    {
      v80 = v115 == v116;
      v117 = v115 == v116;
      if (!v80)
      {
        v118 = (v7 + 32 * v8);
        v119 = v118[1];
        if (v119 != -1)
        {
          if (v115 == v119)
          {
            v117 = 1;
          }

          else
          {
            v120 = v118[2];
            if (v120 != -1)
            {
              if (v115 == v120)
              {
                v117 = 1;
              }

              else
              {
                v121 = v118[3];
                if (v121 != -1)
                {
                  if (v115 == v121)
                  {
                    v117 = 1;
                  }

                  else
                  {
                    v122 = v118[4];
                    if (v122 != -1)
                    {
                      if (v115 == v122)
                      {
                        v117 = 1;
                      }

                      else
                      {
                        v123 = v118[5];
                        if (v123 != -1)
                        {
                          if (v115 == v123)
                          {
                            v117 = 1;
                          }

                          else
                          {
                            v124 = v118[6];
                            if (v124 != -1)
                            {
                              if (v115 == v124)
                              {
                                v117 = 1;
                              }

                              else
                              {
                                v125 = v118[7];
                                if (v125 != -1 && v115 == v125)
                                {
                                  v117 = 1;
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

    if (!v117)
    {
      if (a1[10] == 1)
      {
        if (v115 >= v65)
        {
          v16 = v16;
        }

        else
        {
          v16 = 5;
        }

        if (v115 < v65)
        {
          v65 = a1[11];
        }

        ++v11;
      }

      else if (v115 >= v12)
      {
        v17 = v17;
      }

      else
      {
        v12 = a1[11];
        v17 = 5;
      }
    }
  }

  v126 = a1[13];
  if (v126 != -1 && v126 <= v6)
  {
    v127 = *(v7 + 32 * v8);
    if (v127 == -1)
    {
      v128 = 0;
    }

    else
    {
      v80 = v126 == v127;
      v128 = v126 == v127;
      if (!v80)
      {
        v129 = (v7 + 32 * v8);
        v130 = v129[1];
        if (v130 != -1)
        {
          if (v126 == v130)
          {
            v128 = 1;
          }

          else
          {
            v131 = v129[2];
            if (v131 != -1)
            {
              if (v126 == v131)
              {
                v128 = 1;
              }

              else
              {
                v132 = v129[3];
                if (v132 != -1)
                {
                  if (v126 == v132)
                  {
                    v128 = 1;
                  }

                  else
                  {
                    v133 = v129[4];
                    if (v133 != -1)
                    {
                      if (v126 == v133)
                      {
                        v128 = 1;
                      }

                      else
                      {
                        v134 = v129[5];
                        if (v134 != -1)
                        {
                          if (v126 == v134)
                          {
                            v128 = 1;
                          }

                          else
                          {
                            v135 = v129[6];
                            if (v135 != -1)
                            {
                              if (v126 == v135)
                              {
                                v128 = 1;
                              }

                              else
                              {
                                v136 = v129[7];
                                if (v136 != -1 && v126 == v136)
                                {
                                  v128 = 1;
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

    if (!v128)
    {
      if (a1[12] == 1)
      {
        if (v126 >= v65)
        {
          v16 = v16;
        }

        else
        {
          v16 = 6;
        }

        if (v126 < v65)
        {
          v65 = a1[13];
        }

        ++v11;
      }

      else if (v126 >= v12)
      {
        v17 = v17;
      }

      else
      {
        v12 = a1[13];
        v17 = 6;
      }
    }
  }

  v137 = a1[15];
  if (v137 != -1 && v137 <= v6)
  {
    v138 = *(v7 + 32 * v8);
    if (v138 == -1)
    {
      v139 = 0;
    }

    else
    {
      v80 = v137 == v138;
      v139 = v137 == v138;
      if (!v80)
      {
        v140 = (v7 + 32 * v8);
        v141 = v140[1];
        if (v141 != -1)
        {
          if (v137 == v141)
          {
            v139 = 1;
          }

          else
          {
            v142 = v140[2];
            if (v142 != -1)
            {
              if (v137 == v142)
              {
                v139 = 1;
              }

              else
              {
                v143 = v140[3];
                if (v143 != -1)
                {
                  if (v137 == v143)
                  {
                    v139 = 1;
                  }

                  else
                  {
                    v144 = v140[4];
                    if (v144 != -1)
                    {
                      if (v137 == v144)
                      {
                        v139 = 1;
                      }

                      else
                      {
                        v145 = v140[5];
                        if (v145 != -1)
                        {
                          if (v137 == v145)
                          {
                            v139 = 1;
                          }

                          else
                          {
                            v146 = v140[6];
                            if (v146 != -1)
                            {
                              if (v137 == v146)
                              {
                                v139 = 1;
                              }

                              else
                              {
                                v147 = v140[7];
                                if (v147 != -1 && v137 == v147)
                                {
                                  v139 = 1;
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

    if (!v139)
    {
      if (a1[14] != 1)
      {
        if (v137 >= v12)
        {
          v17 = v17;
        }

        else
        {
          v17 = 7;
        }

        if (!a2)
        {
          goto LABEL_473;
        }

        goto LABEL_467;
      }

      if (v137 >= v65)
      {
        v16 = v16;
      }

      else
      {
        v16 = 7;
      }

      ++v11;
    }
  }

LABEL_466:
  if (!a2)
  {
    goto LABEL_473;
  }

LABEL_467:
  if (v11 > 2)
  {
    return v16;
  }

LABEL_473:
  if ((v17 & 0x80000000) == 0)
  {
    return v17;
  }

  if ((v16 & 0x80000000) == 0)
  {
    return v16;
  }

  if (v17 == -1)
  {
    return v16;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

BOOL use_rtc_reference_structure_one_layer(uint64_t a1)
{
  if (*(a1 + 265608))
  {
    return 0;
  }

  v1 = *a1;
  return !*(*a1 + 23172) && *(a1 + 265632) == 1 && !*(a1 + 264832) && v1[12745] == 1 && v1[12744] == 1 && v1[21240] == 0;
}

void av1_get_ref_frames(unsigned int *a1, signed int a2, uint64_t *a3, int a4, int a5, int *a6)
{
  v159 = *MEMORY[0x277D85DE8];
  *&v11 = -1;
  *(&v11 + 1) = -1;
  *a6 = v11;
  *(a6 + 1) = v11;
  v157 = 0u;
  v158 = 0u;
  v155 = 0u;
  v156 = 0u;
  v153 = 0u;
  v154 = 0u;
  v151 = 0u;
  v152 = 0u;
  v12 = *a3;
  if (*(a3 + 66402) || *(v12 + 23172) || *(a3 + 265632) != 1)
  {
    v13 = 1;
    v14 = a1[1];
    if (v14 == -1)
    {
      goto LABEL_5;
    }

LABEL_8:
    v18 = *a1;
    if (*a1 >= 6)
    {
      v17 = 6;
    }

    else
    {
      v17 = *a1;
    }

    DWORD1(v151) = v14;
    *(&v151 + 1) = v18;
    v15 = a1[3];
    v16 = 1;
    if (v15 == -1 || v14 == v15)
    {
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  v13 = *(a3 + 66208) != 0;
  v14 = a1[1];
  if (v14 != -1)
  {
    goto LABEL_8;
  }

LABEL_5:
  v15 = a1[3];
  if (v15 == -1)
  {
    v21 = a1[5];
    if (v21 == -1)
    {
      v24 = a1[7];
      if (v24 == -1)
      {
        v27 = a1[9];
        if (v27 == -1)
        {
          v32 = a1[11];
          if (v32 == -1)
          {
            v36 = a1[13];
            if (v36 == -1)
            {
              v40 = a1[15];
              if (v40 == -1)
              {
                qsort(&v151, 0, 0x10uLL, compare_map_idx_pair_asc);
                v70 = *a6;
                if (*a6 != -1)
                {
                  v71 = a6 + 1;
                  if (a6[1] != -1)
                  {
                    v72 = a6 + 2;
                    if (a6[2] != -1)
                    {
                      v48 = a6 + 4;
                      v73 = a6[4];
                      if (v73 != -1)
                      {
                        v74 = a6 + 5;
                        if (a6[5] != -1)
                        {
                          v49 = a6 + 6;
                          v143 = a6[6];
                          if (v143 != -1)
                          {
                            goto LABEL_471;
                          }

                          v59 = -1;
                          v42 = -1;
                          v134 = &v151;
                          if (HIDWORD(v151))
                          {
                            goto LABEL_360;
                          }

                          goto LABEL_359;
                        }

                        v81 = 0;
                        v54 = 0xFFFFFFFFLL;
                        v42 = -1;
                        v59 = -1;
                        v133 = &v151;
                        if (HIDWORD(v151))
                        {
                          goto LABEL_360;
                        }

LABEL_356:
                        *v74 = *v133;
                        *(v133 + 3) = 1;
                        v49 = a6 + 6;
                        if (a6[6] != -1)
                        {
                          goto LABEL_360;
                        }

LABEL_326:
                        if (v81)
                        {
LABEL_327:
                          v121 = 0;
                          v122 = ((&v151 + v54) | 0xC);
                          v123 = 0x7FFFFFFF;
                          do
                          {
                            if (!*v122 && *(v122 - 2) > a2 && *(v122 - 2) < v123)
                            {
                              v121 = v54;
                              v123 = *(v122 - 2);
                            }

                            v122 -= 4;
                            v60 = v54-- <= 0;
                          }

                          while (!v60);
                          v134 = &v151 + v121;
                          if (*(v134 + 3))
                          {
                            goto LABEL_360;
                          }

                          goto LABEL_359;
                        }

LABEL_358:
                        v134 = &v151;
                        if (!HIDWORD(v151))
                        {
LABEL_359:
                          *v49 = *v134;
                          *(v134 + 3) = 1;
                        }

LABEL_360:
                        if (v70 != -1)
                        {
                          v91 = v59;
                          goto LABEL_362;
                        }

                        if (v59 < 0)
                        {
LABEL_377:
                          v70 = -1;
                          goto LABEL_412;
                        }

                        v91 = v59;
                        while (*(&v151 + 4 * v91 + 3))
                        {
                          v60 = v91-- <= 0;
                          if (v60)
                          {
                            goto LABEL_377;
                          }
                        }

                        v136 = (&v151 + v91);
                        v70 = *v136;
                        *a6 = *v136;
                        v136[3] = 1;
                        if (a6[1] != -1)
                        {
                          goto LABEL_363;
                        }

                        goto LABEL_379;
                      }

                      v81 = 0;
                      v54 = 0xFFFFFFFFLL;
                      v59 = -1;
                      v42 = -1;
                      v128 = &v151;
                      if (!HIDWORD(v151))
                      {
                        goto LABEL_343;
                      }

                      goto LABEL_341;
                    }

                    v81 = 0;
                    v54 = 0xFFFFFFFFLL;
                    v42 = -1;
                    v59 = -1;
                    v103 = &v151;
                    if (!HIDWORD(v151))
                    {
                      goto LABEL_322;
                    }

                    goto LABEL_323;
                  }

                  v81 = 0;
                  v54 = 0xFFFFFFFFLL;
                  v59 = -1;
                  v42 = -1;
                  v83 = &v151;
                  if (HIDWORD(v151))
                  {
                    goto LABEL_323;
                  }

                  goto LABEL_266;
                }

                v81 = 0;
                v59 = -1;
                v42 = -1;
                v54 = 0xFFFFFFFFLL;
                v82 = &v151;
                if (!HIDWORD(v151))
                {
                  goto LABEL_200;
                }

                goto LABEL_318;
              }

              v16 = 0;
              v41 = a1[14];
              v17 = 6;
              goto LABEL_93;
            }

            v16 = 0;
            v37 = a1[12];
            v17 = 6;
            goto LABEL_80;
          }

          v16 = 0;
          v33 = a1[10];
          v17 = 6;
          goto LABEL_68;
        }

        v16 = 0;
        v28 = a1[8];
        v17 = 6;
        goto LABEL_56;
      }

      v16 = 0;
      v25 = a1[6];
      v17 = 6;
      goto LABEL_44;
    }

    v16 = 0;
    v22 = a1[4];
    v17 = 6;
    goto LABEL_26;
  }

  v16 = 0;
  v17 = 6;
LABEL_13:
  v19 = a1[2];
  v20 = &v151 + v16;
  *v20 = 1;
  *(v20 + 1) = v15;
  if (v19 < v17)
  {
    v17 = v19;
  }

  *(v20 + 2) = v19;
  *(v20 + 3) = 0;
  ++v16;
LABEL_16:
  v21 = a1[5];
  if (v21 == -1 || DWORD1(v151) == v21)
  {
    goto LABEL_29;
  }

  v22 = a1[4];
  if (v16 == 1)
  {
    goto LABEL_26;
  }

  if (DWORD1(v152) != v21)
  {
    if (v16 != 2 && v16 > 2uLL)
    {
      goto LABEL_29;
    }

LABEL_26:
    v23 = &v151 + v16;
    *v23 = 2;
    *(v23 + 1) = v21;
    if (v22 < v17)
    {
      v17 = v22;
    }

    *(v23 + 2) = v22;
    *(v23 + 3) = 0;
    ++v16;
    goto LABEL_29;
  }

  if (v16 <= 1uLL)
  {
    goto LABEL_26;
  }

LABEL_29:
  v24 = a1[7];
  if (v24 == -1 || DWORD1(v151) == v24)
  {
    goto LABEL_47;
  }

  v25 = a1[6];
  if (v16 != 1)
  {
    if (DWORD1(v152) == v24)
    {
      v26 = 1;
      goto LABEL_34;
    }

    if (v16 != 2)
    {
      if (DWORD1(v153) == v24)
      {
        v26 = 2;
        goto LABEL_34;
      }

      if (v16 != 3)
      {
        v26 = 3;
LABEL_34:
        if (v26 < v16)
        {
          goto LABEL_47;
        }
      }
    }
  }

LABEL_44:
  v29 = &v151 + v16;
  *v29 = 3;
  *(v29 + 1) = v24;
  if (v25 < v17)
  {
    v17 = v25;
  }

  *(v29 + 2) = v25;
  *(v29 + 3) = 0;
  ++v16;
LABEL_47:
  v27 = a1[9];
  if (v27 == -1)
  {
    goto LABEL_59;
  }

  v28 = a1[8];
  if (v16 >= 1)
  {
    if (DWORD1(v151) == v27)
    {
      goto LABEL_59;
    }

    if (v16 != 1)
    {
      if (DWORD1(v152) == v27)
      {
        v30 = 1;
        goto LABEL_53;
      }

      if (v16 != 2)
      {
        if (DWORD1(v153) == v27)
        {
          v30 = 2;
        }

        else
        {
          if (v16 == 3)
          {
            goto LABEL_56;
          }

          if (DWORD1(v154) == v27)
          {
            v30 = 3;
          }

          else
          {
            if (v16 == 4)
            {
              goto LABEL_56;
            }

            v30 = 4;
          }
        }

LABEL_53:
        if (v30 < v16)
        {
          goto LABEL_59;
        }
      }
    }
  }

LABEL_56:
  v31 = &v151 + v16;
  *v31 = 4;
  *(v31 + 1) = v27;
  if (v28 < v17)
  {
    v17 = v28;
  }

  *(v31 + 2) = v28;
  *(v31 + 3) = 0;
  ++v16;
LABEL_59:
  v32 = a1[11];
  if (v32 == -1)
  {
    goto LABEL_71;
  }

  v33 = a1[10];
  if (v16 >= 1)
  {
    if (DWORD1(v151) == v32)
    {
      goto LABEL_71;
    }

    if (v16 != 1)
    {
      if (DWORD1(v152) == v32)
      {
        v34 = 1;
        goto LABEL_65;
      }

      if (v16 != 2)
      {
        if (DWORD1(v153) == v32)
        {
          v34 = 2;
        }

        else
        {
          if (v16 == 3)
          {
            goto LABEL_68;
          }

          if (DWORD1(v154) == v32)
          {
            v34 = 3;
          }

          else
          {
            if (v16 == 4)
            {
              goto LABEL_68;
            }

            if (DWORD1(v155) == v32)
            {
              v34 = 4;
            }

            else
            {
              if (v16 == 5)
              {
                goto LABEL_68;
              }

              v34 = 5;
            }
          }
        }

LABEL_65:
        if (v34 < v16)
        {
          goto LABEL_71;
        }
      }
    }
  }

LABEL_68:
  v35 = &v151 + v16;
  *v35 = 5;
  *(v35 + 1) = v32;
  if (v33 < v17)
  {
    v17 = v33;
  }

  *(v35 + 2) = v33;
  *(v35 + 3) = 0;
  ++v16;
LABEL_71:
  v36 = a1[13];
  if (v36 == -1)
  {
    goto LABEL_83;
  }

  v37 = a1[12];
  if (v16 >= 1)
  {
    if (DWORD1(v151) == v36)
    {
      goto LABEL_83;
    }

    if (v16 != 1)
    {
      if (DWORD1(v152) == v36)
      {
        v38 = 1;
        goto LABEL_77;
      }

      if (v16 != 2)
      {
        if (DWORD1(v153) == v36)
        {
          v38 = 2;
        }

        else
        {
          if (v16 == 3)
          {
            goto LABEL_80;
          }

          if (DWORD1(v154) == v36)
          {
            v38 = 3;
          }

          else
          {
            if (v16 == 4)
            {
              goto LABEL_80;
            }

            if (DWORD1(v155) == v36)
            {
              v38 = 4;
            }

            else
            {
              if (v16 == 5)
              {
                goto LABEL_80;
              }

              if (DWORD1(v156) == v36)
              {
                v38 = 5;
              }

              else
              {
                if (v16 == 6)
                {
                  goto LABEL_80;
                }

                v38 = 6;
              }
            }
          }
        }

LABEL_77:
        if (v38 < v16)
        {
          goto LABEL_83;
        }
      }
    }
  }

LABEL_80:
  v39 = &v151 + v16;
  *v39 = 6;
  *(v39 + 1) = v36;
  if (v37 < v17)
  {
    v17 = v37;
  }

  *(v39 + 2) = v37;
  *(v39 + 3) = 0;
  ++v16;
LABEL_83:
  v40 = a1[15];
  if (v40 == -1)
  {
LABEL_96:
    qsort(&v151, v16, 0x10uLL, compare_map_idx_pair_asc);
    v42 = v16 - 1;
    if (v16 > 0)
    {
      goto LABEL_97;
    }

    v70 = *a6;
    if (*a6 != -1)
    {
      v71 = a6 + 1;
      if (a6[1] != -1)
      {
        v72 = a6 + 2;
        if (a6[2] != -1)
        {
          v48 = a6 + 4;
          v73 = a6[4];
          if (v73 != -1)
          {
            v74 = a6 + 5;
            if (a6[5] != -1)
            {
              v49 = a6 + 6;
              v59 = -1;
              if (a6[6] != -1)
              {
                goto LABEL_412;
              }

              goto LABEL_358;
            }

            v81 = 0;
            v59 = -1;
            v54 = v16 - 1;
            v133 = &v151;
            if (HIDWORD(v151))
            {
              goto LABEL_360;
            }

            goto LABEL_356;
          }

          v81 = 0;
          v59 = -1;
          v54 = v16 - 1;
          v128 = &v151;
          if (!HIDWORD(v151))
          {
            goto LABEL_343;
          }

          goto LABEL_341;
        }

        v81 = 0;
        v59 = -1;
        v54 = v16 - 1;
        v103 = &v151;
        if (HIDWORD(v151))
        {
          goto LABEL_323;
        }

        goto LABEL_322;
      }

      v81 = 0;
      v59 = -1;
      v54 = v16 - 1;
      v83 = &v151;
      if (HIDWORD(v151))
      {
        goto LABEL_323;
      }

      goto LABEL_266;
    }

    v81 = 0;
    v59 = -1;
    v54 = v16 - 1;
    v82 = &v151;
    if (!HIDWORD(v151))
    {
      goto LABEL_200;
    }

LABEL_318:
    v70 = -1;
    goto LABEL_323;
  }

  v41 = a1[14];
  v42 = v16 - 1;
  if (v16 < 1)
  {
    goto LABEL_93;
  }

  if (DWORD1(v151) != v40)
  {
    if (v16 != 1)
    {
      if (DWORD1(v152) == v40)
      {
        v43 = 1;
      }

      else
      {
        if (v16 == 2)
        {
          goto LABEL_93;
        }

        if (DWORD1(v153) == v40)
        {
          v43 = 2;
        }

        else
        {
          if (v16 == 3)
          {
            goto LABEL_93;
          }

          if (DWORD1(v154) == v40)
          {
            v43 = 3;
          }

          else
          {
            if (v16 == 4)
            {
              goto LABEL_93;
            }

            if (DWORD1(v155) == v40)
            {
              v43 = 4;
            }

            else
            {
              if (v16 == 5)
              {
                goto LABEL_93;
              }

              if (DWORD1(v156) == v40)
              {
                v43 = 5;
              }

              else
              {
                if (v16 == 6)
                {
                  goto LABEL_93;
                }

                if (DWORD1(v157) == v40)
                {
                  v43 = 6;
                }

                else
                {
                  if (v16 == 7)
                  {
                    goto LABEL_93;
                  }

                  v43 = 7;
                }
              }
            }
          }
        }
      }

      if (v43 < v16)
      {
        goto LABEL_96;
      }
    }

LABEL_93:
    v44 = &v151 + v16;
    *v44 = 7;
    *(v44 + 1) = v40;
    if (v41 < v17)
    {
      v17 = v41;
    }

    *(v44 + 2) = v41;
    *(v44 + 3) = 0;
    ++v16;
    goto LABEL_96;
  }

  qsort(&v151, v16, 0x10uLL, compare_map_idx_pair_asc);
LABEL_97:
  v45 = 0;
  v46 = 0;
  v47 = a3 + 159505;
  v48 = a6 + 4;
  v49 = a6 + 6;
  v50 = v12 + 12668;
  v51 = a4;
  v52 = a4 - 1;
  v53 = v12 + 4 * a4 + 22168;
  v54 = v42;
  v55 = ((&v151 + v42) | 0xC);
  v56 = -1;
  v57 = v42;
  v58 = -1;
  v59 = -1;
  do
  {
    if (*(v55 - 1) == v17)
    {
      ++v45;
      v61 = *(v55 - 2);
      v62 = v61 < a2 && v58 == -1;
      if (v62 && a6[3] == -1)
      {
        v58 = v57;
        if (!v13)
        {
          goto LABEL_101;
        }

        goto LABEL_127;
      }

      if (v61 > a2 && v56 == -1)
      {
        if (*v49 == -1)
        {
          v56 = v57;
        }

        else
        {
          v56 = -1;
        }

        if (!v13)
        {
          goto LABEL_101;
        }

        goto LABEL_127;
      }
    }

    else
    {
      v61 = *(v55 - 2);
      if (v61 == a2)
      {
        *v48 = *(v55 - 3);
        *v55 = 1;
        v61 = a2;
      }
    }

    if (!v13)
    {
      goto LABEL_101;
    }

LABEL_127:
    if (*(v50 + 4 * v51) == 2 && *(v50 + 4 * v52) == 1 && *(v12 + 400 + v52) == 6)
    {
      v64 = v53;
      v65 = v61;
      if (a5)
      {
        v65 = *(v55 - 3);
        v64 = v47;
      }

      v62 = v65 == *v64;
      *v55 = v62;
      if (v62)
      {
        v46 = 1;
      }
    }

LABEL_101:
    v55 -= 4;
    v60 = v59 < 0 && v61 < a2;
    if (v60)
    {
      v59 = v57;
    }

    v60 = v57-- <= 0;
  }

  while (!v60);
  if (v45 <= v16)
  {
    if ((v58 & 0x80000000) == 0)
    {
      v66 = (&v151 + v58);
      a6[3] = *v66;
      v66[3] = 1;
    }

    if ((v56 & 0x80000000) == 0)
    {
      v67 = (&v151 + v56);
      *v49 = *v67;
      v67[3] = 1;
    }
  }

  if (v16 >= 8 && !v46)
  {
    if (v45 < 5)
    {
      v68 = 0;
      v69 = -1;
      if (!HIDWORD(v151) && DWORD2(v151) != v17)
      {
        v68 = a2 - DWORD1(v151);
        v69 = a2 == DWORD1(v151) ? -1 : 0;
        if (a2 - DWORD1(v151) < 0)
        {
          v68 = DWORD1(v151) - a2;
        }
      }

      if (!HIDWORD(v152) && DWORD2(v152) != v17)
      {
        v75 = a2 - DWORD1(v152);
        if (a2 - DWORD1(v152) < 0)
        {
          v75 = DWORD1(v152) - a2;
        }

        if (v75 > v68)
        {
          v69 = 1;
        }

        if (v75 > v68)
        {
          v68 = v75;
        }
      }

      if (!HIDWORD(v153) && DWORD2(v153) != v17)
      {
        v76 = a2 - DWORD1(v153);
        if (a2 - DWORD1(v153) < 0)
        {
          v76 = DWORD1(v153) - a2;
        }

        if (v76 > v68)
        {
          v69 = 2;
          v68 = v76;
        }
      }

      if (!HIDWORD(v154) && DWORD2(v154) != v17)
      {
        v77 = a2 - DWORD1(v154);
        if (a2 - DWORD1(v154) < 0)
        {
          v77 = DWORD1(v154) - a2;
        }

        if (v77 > v68)
        {
          v69 = 3;
          v68 = v77;
        }
      }

      if (!HIDWORD(v155) && DWORD2(v155) != v17)
      {
        v78 = a2 - DWORD1(v155);
        if (a2 - DWORD1(v155) < 0)
        {
          v78 = DWORD1(v155) - a2;
        }

        if (v78 > v68)
        {
          v69 = 4;
          v68 = v78;
        }
      }

      if (!HIDWORD(v156) && DWORD2(v156) != v17)
      {
        v79 = a2 - DWORD1(v156);
        if (a2 - DWORD1(v156) < 0)
        {
          v79 = DWORD1(v156) - a2;
        }

        if (v79 > v68)
        {
          v69 = 5;
          v68 = v79;
        }
      }

      if (!HIDWORD(v157) && DWORD2(v157) != v17)
      {
        v80 = a2 - DWORD1(v157);
        if (a2 - DWORD1(v157) < 0)
        {
          v80 = DWORD1(v157) - a2;
        }

        if (v80 > v68)
        {
          v69 = 6;
          v68 = v80;
        }
      }

      if (!HIDWORD(v158) && DWORD2(v158) != v17)
      {
LABEL_244:
        v90 = a2 - DWORD1(v158);
        if (a2 - DWORD1(v158) < 0)
        {
          v90 = DWORD1(v158) - a2;
        }

        if (v90 > v68)
        {
          v69 = 7;
        }
      }
    }

    else
    {
      if (HIDWORD(v151))
      {
        v68 = 0;
        v69 = -1;
      }

      else
      {
        v68 = a2 - DWORD1(v151);
        if (a2 == DWORD1(v151))
        {
          v69 = -1;
        }

        else
        {
          v69 = 0;
        }

        if (a2 - DWORD1(v151) < 0)
        {
          v68 = DWORD1(v151) - a2;
        }
      }

      if (!HIDWORD(v152))
      {
        v84 = a2 - DWORD1(v152);
        if (a2 - DWORD1(v152) < 0)
        {
          v84 = DWORD1(v152) - a2;
        }

        if (v84 > v68)
        {
          v69 = 1;
        }

        if (v84 > v68)
        {
          v68 = v84;
        }
      }

      if (!HIDWORD(v153))
      {
        v85 = a2 - DWORD1(v153);
        if (a2 - DWORD1(v153) < 0)
        {
          v85 = DWORD1(v153) - a2;
        }

        if (v85 > v68)
        {
          v69 = 2;
          v68 = v85;
        }
      }

      if (!HIDWORD(v154))
      {
        v86 = a2 - DWORD1(v154);
        if (a2 - DWORD1(v154) < 0)
        {
          v86 = DWORD1(v154) - a2;
        }

        if (v86 > v68)
        {
          v69 = 3;
          v68 = v86;
        }
      }

      if (!HIDWORD(v155))
      {
        v87 = a2 - DWORD1(v155);
        if (a2 - DWORD1(v155) < 0)
        {
          v87 = DWORD1(v155) - a2;
        }

        if (v87 > v68)
        {
          v69 = 4;
          v68 = v87;
        }
      }

      if (!HIDWORD(v156))
      {
        v88 = a2 - DWORD1(v156);
        if (a2 - DWORD1(v156) < 0)
        {
          v88 = DWORD1(v156) - a2;
        }

        if (v88 > v68)
        {
          v69 = 5;
          v68 = v88;
        }
      }

      if (!HIDWORD(v157))
      {
        v89 = a2 - DWORD1(v157);
        if (a2 - DWORD1(v157) < 0)
        {
          v89 = DWORD1(v157) - a2;
        }

        if (v89 > v68)
        {
          v69 = 6;
          v68 = v89;
        }
      }

      if (!HIDWORD(v158))
      {
        goto LABEL_244;
      }
    }

    *(&v151 + 4 * v69 + 3) = 1;
  }

  v70 = *a6;
  if (*a6 == -1)
  {
    v92 = &v151 + v42;
    v93 = 0x80000000;
    if (*(v92 + 3))
    {
      v94 = 0;
      if (!v42)
      {
        goto LABEL_317;
      }
    }

    else
    {
      v104 = *(v92 + 1);
      if (v104 != 0x80000000 && v104 < a2)
      {
        v94 = v42;
      }

      else
      {
        v94 = 0;
      }

      if (v104 >= a2)
      {
        v93 = 0x80000000;
      }

      else
      {
        v93 = v104;
      }

      if (!v42)
      {
        goto LABEL_317;
      }
    }

    v106 = &v151 + v42 - 1;
    if (!*(v106 + 3))
    {
      v107 = *(v106 + 1);
      if (v107 < a2 && v107 > v93)
      {
        v94 = v42 - 1;
        v93 = v107;
      }
    }

    if (v42 != 1)
    {
      v108 = &v151 + v42 - 2;
      if (!*(v108 + 3))
      {
        v109 = *(v108 + 1);
        if (v109 < a2 && v109 > v93)
        {
          v94 = v42 - 2;
          v93 = v109;
        }
      }

      if (v42 >= 3)
      {
        v110 = &v151 + v42 - 3;
        if (!*(v110 + 3))
        {
          v111 = *(v110 + 1);
          if (v111 < a2 && v111 > v93)
          {
            v94 = v42 - 3;
            v93 = v111;
          }
        }

        if (v42 != 3)
        {
          v112 = &v151 + v42 - 4;
          if (!*(v112 + 3))
          {
            v113 = *(v112 + 1);
            if (v113 < a2 && v113 > v93)
            {
              v94 = v42 - 4;
              v93 = v113;
            }
          }

          if (v42 >= 5)
          {
            v114 = &v151 + v42 - 5;
            if (!*(v114 + 3))
            {
              v115 = *(v114 + 1);
              if (v115 < a2 && v115 > v93)
              {
                v94 = v42 - 5;
                v93 = v115;
              }
            }

            if (v42 != 5)
            {
              v116 = &v151 + v42 - 6;
              if (!*(v116 + 3))
              {
                v117 = *(v116 + 1);
                if (v117 < a2 && v117 > v93)
                {
                  v94 = v42 - 6;
                  v93 = v117;
                }
              }

              if (v42 >= 7)
              {
                v118 = &v151 + v42 - 7;
                if (!*(v118 + 3))
                {
                  v119 = *(v118 + 1);
                  if (v119 > v93 && v119 < a2)
                  {
                    v94 = v42 - 7;
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_317:
    v81 = 1;
    v82 = (&v151 + v94);
    if (v82[3])
    {
      goto LABEL_318;
    }

LABEL_200:
    v70 = *v82;
    *a6 = *v82;
    v82[3] = 1;
    v71 = a6 + 1;
    if (a6[1] != -1)
    {
LABEL_267:
      v72 = a6 + 2;
      if (a6[2] == -1)
      {
        if (v81)
        {
          goto LABEL_269;
        }

        v103 = &v151;
        if (!HIDWORD(v151))
        {
LABEL_322:
          *v72 = *v103;
          *(v103 + 3) = 1;
        }
      }

LABEL_323:
      v48 = a6 + 4;
      v73 = a6[4];
      if (v73 != -1)
      {
        v74 = a6 + 5;
        if (a6[5] == -1)
        {
          goto LABEL_344;
        }

        goto LABEL_325;
      }

      if (v81)
      {
        goto LABEL_334;
      }

      v128 = &v151;
      if (!HIDWORD(v151))
      {
        goto LABEL_343;
      }

LABEL_341:
      v73 = -1;
      goto LABEL_360;
    }

    if (!v81)
    {
      v83 = &v151;
      if (HIDWORD(v151))
      {
        goto LABEL_323;
      }

      goto LABEL_266;
    }

LABEL_259:
    v95 = 0;
    v96 = ((&v151 + v54) | 0xC);
    v97 = 0x80000000;
    v98 = v54;
    do
    {
      if (!*v96 && *(v96 - 2) < a2 && *(v96 - 2) > v97)
      {
        v95 = v98;
        v97 = *(v96 - 2);
      }

      v96 -= 4;
      v60 = v98-- <= 0;
    }

    while (!v60);
    v81 = 1;
    v83 = &v151 + v95;
    if (*(v83 + 3))
    {
      goto LABEL_323;
    }

LABEL_266:
    *v71 = *v83;
    *(v83 + 3) = 1;
    goto LABEL_267;
  }

  v71 = a6 + 1;
  if (a6[1] == -1)
  {
    goto LABEL_259;
  }

  v72 = a6 + 2;
  if (a6[2] == -1)
  {
LABEL_269:
    v99 = 0;
    v100 = ((&v151 + v54) | 0xC);
    v101 = 0x80000000;
    v102 = v54;
    do
    {
      if (!*v100 && *(v100 - 2) < a2 && *(v100 - 2) > v101)
      {
        v99 = v102;
        v101 = *(v100 - 2);
      }

      v100 -= 4;
      v60 = v102-- <= 0;
    }

    while (!v60);
    v81 = 1;
    v103 = &v151 + v99;
    if (*(v103 + 3))
    {
      goto LABEL_323;
    }

    goto LABEL_322;
  }

  v73 = *v48;
  if (*v48 == -1)
  {
LABEL_334:
    v124 = 0;
    v125 = ((&v151 + v54) | 0xC);
    v126 = 0x7FFFFFFF;
    v127 = v54;
    do
    {
      if (!*v125 && *(v125 - 2) > a2 && *(v125 - 2) < v126)
      {
        v124 = v127;
        v126 = *(v125 - 2);
      }

      v125 -= 4;
      v60 = v127-- <= 0;
    }

    while (!v60);
    v81 = 1;
    v128 = (&v151 + v124);
    if (v128[3])
    {
      goto LABEL_341;
    }

LABEL_343:
    v73 = *v128;
    *v48 = *v128;
    v128[3] = 1;
    v74 = a6 + 5;
    if (a6[5] == -1)
    {
LABEL_344:
      if (!v81)
      {
        v133 = &v151;
        if (HIDWORD(v151))
        {
          goto LABEL_360;
        }

        goto LABEL_356;
      }

      goto LABEL_345;
    }

LABEL_325:
    v49 = a6 + 6;
    if (a6[6] != -1)
    {
      goto LABEL_360;
    }

    goto LABEL_326;
  }

  v74 = a6 + 5;
  if (a6[5] == -1)
  {
LABEL_345:
    v129 = 0;
    v130 = ((&v151 + v54) | 0xC);
    v131 = 0x7FFFFFFF;
    v132 = v54;
    do
    {
      if (!*v130 && *(v130 - 2) > a2 && *(v130 - 2) < v131)
      {
        v129 = v132;
        v131 = *(v130 - 2);
      }

      v130 -= 4;
      v60 = v132-- <= 0;
    }

    while (!v60);
    v81 = 1;
    v133 = &v151 + v129;
    if (*(v133 + 3))
    {
      goto LABEL_360;
    }

    goto LABEL_356;
  }

  v91 = v59;
  if (*v49 == -1)
  {
    goto LABEL_327;
  }

LABEL_362:
  if (a6[1] == -1)
  {
LABEL_379:
    if ((v91 & 0x80000000) != 0)
    {
      goto LABEL_412;
    }

    while (*(&v151 + 4 * v91 + 3))
    {
      v60 = v91-- <= 0;
      if (v60)
      {
        goto LABEL_412;
      }
    }

    v137 = (&v151 + v91);
    a6[1] = *v137;
    v137[3] = 1;
    if (a6[2] == -1)
    {
      goto LABEL_385;
    }

LABEL_364:
    if (a6[3] != -1)
    {
      goto LABEL_365;
    }

LABEL_391:
    if ((v91 & 0x80000000) != 0)
    {
      goto LABEL_412;
    }

    while (*(&v151 + 4 * v91 + 3))
    {
      v60 = v91-- <= 0;
      if (v60)
      {
        goto LABEL_412;
      }
    }

    v139 = (&v151 + v91);
    a6[3] = *v139;
    v139[3] = 1;
    if (v73 != -1)
    {
      goto LABEL_366;
    }

    goto LABEL_397;
  }

LABEL_363:
  if (a6[2] != -1)
  {
    goto LABEL_364;
  }

LABEL_385:
  if ((v91 & 0x80000000) != 0)
  {
    goto LABEL_412;
  }

  while (*(&v151 + 4 * v91 + 3))
  {
    v60 = v91-- <= 0;
    if (v60)
    {
      goto LABEL_412;
    }
  }

  v138 = (&v151 + v91);
  a6[2] = *v138;
  v138[3] = 1;
  if (a6[3] == -1)
  {
    goto LABEL_391;
  }

LABEL_365:
  if (v73 != -1)
  {
LABEL_366:
    if (a6[5] != -1)
    {
      goto LABEL_367;
    }

LABEL_404:
    if ((v91 & 0x80000000) != 0)
    {
      goto LABEL_412;
    }

    while (*(&v151 + 4 * v91 + 3))
    {
      v60 = v91-- <= 0;
      if (v60)
      {
        goto LABEL_412;
      }
    }

    v142 = (&v151 + v91);
    a6[5] = *v142;
    v142[3] = 1;
    if (a6[6] != -1)
    {
      goto LABEL_412;
    }

LABEL_368:
    if ((v91 & 0x80000000) == 0)
    {
      while (1)
      {
        v135 = v91;
        if (!*(&v151 + 4 * v91 + 3))
        {
          break;
        }

        --v91;
        if (v135 <= 0)
        {
          goto LABEL_412;
        }
      }

      v140 = (&v151 + v91);
      a6[6] = *v140;
      v140[3] = 1;
    }

    goto LABEL_412;
  }

LABEL_397:
  if ((v91 & 0x80000000) != 0)
  {
LABEL_401:
    v73 = -1;
    goto LABEL_412;
  }

  while (*(&v151 + 4 * v91 + 3))
  {
    v60 = v91-- <= 0;
    if (v60)
    {
      goto LABEL_401;
    }
  }

  v141 = (&v151 + v91);
  v73 = *v141;
  *v48 = *v141;
  v141[3] = 1;
  if (a6[5] == -1)
  {
    goto LABEL_404;
  }

LABEL_367:
  if (a6[6] == -1)
  {
    goto LABEL_368;
  }

LABEL_412:
  v49 = a6 + 6;
  v143 = a6[6];
  if (v143 == -1)
  {
    if (v42 > v59)
    {
      while (*(&v151 + 4 * v42 + 3))
      {
        if (--v42 <= v59)
        {
          v42 = v59;
          break;
        }
      }
    }

    if ((v42 & 0x80000000) != 0 || (v145 = (&v151 + v42), v145[3]))
    {
      v143 = -1;
      goto LABEL_469;
    }

    v143 = *v145;
    *v49 = *v145;
    v145[3] = 1;
    if (a6[5] == -1)
    {
      goto LABEL_434;
    }

LABEL_414:
    if (v73 != -1)
    {
      goto LABEL_415;
    }

LABEL_441:
    if (v42 > v59)
    {
      while (*(&v151 + 4 * v42 + 3))
      {
        if (--v42 <= v59)
        {
          v42 = v59;
          break;
        }
      }
    }

    if ((v42 & 0x80000000) != 0 || (v147 = (&v151 + v42), v147[3]))
    {
      v73 = -1;
      goto LABEL_469;
    }

    v73 = *v147;
    *v48 = *v147;
    v147[3] = 1;
    if (a6[3] != -1)
    {
      goto LABEL_416;
    }

    goto LABEL_449;
  }

  if (a6[5] != -1)
  {
    goto LABEL_414;
  }

LABEL_434:
  if (v42 > v59)
  {
    while (*(&v151 + 4 * v42 + 3))
    {
      if (--v42 <= v59)
      {
        v42 = v59;
        break;
      }
    }
  }

  if ((v42 & 0x80000000) != 0)
  {
    goto LABEL_469;
  }

  v146 = (&v151 + v42);
  if (v146[3])
  {
    goto LABEL_469;
  }

  a6[5] = *v146;
  v146[3] = 1;
  if (v73 == -1)
  {
    goto LABEL_441;
  }

LABEL_415:
  if (a6[3] == -1)
  {
LABEL_449:
    if (v42 > v59)
    {
      while (*(&v151 + 4 * v42 + 3))
      {
        if (--v42 <= v59)
        {
          v42 = v59;
          break;
        }
      }
    }

    if ((v42 & 0x80000000) == 0)
    {
      v148 = (&v151 + v42);
      if (!v148[3])
      {
        a6[3] = *v148;
        v148[3] = 1;
        if (a6[2] == -1)
        {
          goto LABEL_456;
        }

LABEL_417:
        if (a6[1] != -1)
        {
          goto LABEL_418;
        }

LABEL_463:
        if (v42 > v59)
        {
          while (*(&v151 + 4 * v42 + 3))
          {
            if (--v42 <= v59)
            {
              v42 = v59;
              break;
            }
          }
        }

        if ((v42 & 0x80000000) == 0)
        {
          v150 = (&v151 + v42);
          if (!v150[3])
          {
            a6[1] = *v150;
            v150[3] = 1;
            if (v70 == -1)
            {
              goto LABEL_419;
            }

            goto LABEL_471;
          }
        }
      }
    }

    goto LABEL_469;
  }

LABEL_416:
  if (a6[2] != -1)
  {
    goto LABEL_417;
  }

LABEL_456:
  if (v42 > v59)
  {
    while (*(&v151 + 4 * v42 + 3))
    {
      if (--v42 <= v59)
      {
        v42 = v59;
        break;
      }
    }
  }

  if ((v42 & 0x80000000) != 0 || (v149 = (&v151 + v42), v149[3]))
  {
LABEL_469:
    if (v70 == -1)
    {
      goto LABEL_470;
    }

    goto LABEL_471;
  }

  a6[2] = *v149;
  v149[3] = 1;
  if (a6[1] == -1)
  {
    goto LABEL_463;
  }

LABEL_418:
  if (v70 == -1)
  {
LABEL_419:
    if (v42 > v59)
    {
      while (*(&v151 + 4 * v42 + 3))
      {
        if (--v42 <= v59)
        {
          v42 = v59;
          break;
        }
      }
    }

    if ((v42 & 0x80000000) == 0)
    {
      v144 = (&v151 + v42);
      if (!v144[3])
      {
        v70 = *v144;
        *a6 = *v144;
        goto LABEL_469;
      }
    }

LABEL_470:
    *a6 = 0;
  }

LABEL_471:
  if (a6[1] == -1)
  {
    a6[1] = 0;
    if (a6[2] == -1)
    {
      goto LABEL_480;
    }

LABEL_473:
    if (a6[3] != -1)
    {
      goto LABEL_474;
    }

LABEL_481:
    a6[3] = 0;
    if (v73 == -1)
    {
      goto LABEL_482;
    }

LABEL_475:
    if (a6[5] != -1)
    {
      goto LABEL_476;
    }

LABEL_483:
    a6[5] = 0;
    if (v143 == -1)
    {
      goto LABEL_484;
    }

LABEL_477:
    if (a6[7] == -1)
    {
LABEL_485:
      a6[7] = 0;
    }
  }

  else
  {
    if (a6[2] != -1)
    {
      goto LABEL_473;
    }

LABEL_480:
    a6[2] = 0;
    if (a6[3] == -1)
    {
      goto LABEL_481;
    }

LABEL_474:
    if (v73 != -1)
    {
      goto LABEL_475;
    }

LABEL_482:
    a6[4] = 0;
    if (a6[5] == -1)
    {
      goto LABEL_483;
    }

LABEL_476:
    if (v143 != -1)
    {
      goto LABEL_477;
    }

LABEL_484:
    *v49 = 0;
    if (a6[7] == -1)
    {
      goto LABEL_485;
    }
  }
}