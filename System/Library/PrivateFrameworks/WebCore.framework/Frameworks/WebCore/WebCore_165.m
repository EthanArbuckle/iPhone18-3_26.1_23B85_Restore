uint64_t decode_block_0(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = mi_size_wide_7[a7];
  v14 = mi_size_high_6[a7];
  v15 = *(*(a1 + 39880) + 77);
  v16 = *(a1 + 15780);
  v17 = a4 + v16 * a3;
  *(a2 + 7864) = *(a1 + 15768) + 8 * v17;
  *(a2 + 7912) = *(a1 + 15784) + v17;
  *(a2 + 7920) = v16;
  v18 = 4 * v13;
  v19 = 4 * v14;
  v20 = ((4 * v13) >> *(a2 + 20));
  v21 = ((4 * v14) >> *(a2 + 24));
  if (v20 <= 4)
  {
    LOBYTE(v20) = 4;
  }

  *(a2 + 184) = v20;
  if (v21 <= 4)
  {
    LOBYTE(v21) = 4;
  }

  *(a2 + 185) = v21;
  if (v15)
  {
    v22 = 1;
  }

  else
  {
    v23 = (v18 >> *(a2 + 2628));
    v24 = (v19 >> *(a2 + 2632));
    if (v23 <= 4)
    {
      LOBYTE(v23) = 4;
    }

    *(a2 + 2792) = v23;
    if (v24 <= 4)
    {
      v25 = 4;
    }

    else
    {
      v25 = v24;
    }

    *(a2 + 2793) = v25;
    v26 = (v18 >> *(a2 + 5236));
    v27 = (v19 >> *(a2 + 5240));
    if (v26 <= 4)
    {
      LOBYTE(v26) = 4;
    }

    *(a2 + 5400) = v26;
    if (v27 <= 4)
    {
      LOBYTE(v27) = 4;
    }

    *(a2 + 5401) = v27;
    v22 = 3;
  }

  set_mi_row_col(a2, *(a2 + 7840), *(a2 + 7848), a3, v14, a4, v13, *(a1 + 15732), *(a1 + 15736));
  av1_setup_dst_planes(a2 + 16, a7, *(a1 + 15432) + 1248, a3, a4, 0, v22);

  return decode_token_recon_block(a1, a2, a5, a7);
}

uint64_t read_tx_size_vartx(uint64_t a1, unsigned __int8 *a2, unsigned int a3, int a4, int a5, uint64_t a6, uint64_t a7)
{
  v9 = a2;
  v11 = *a2;
  result = block_size_high_7[v11];
  v13 = *(a1 + 7936);
  v14 = block_size_high_7[v11];
  if (v13 < 0)
  {
    v14 = (v13 >> (*(a1 + 24) + 3)) + result;
  }

  v15 = v14 >> 2;
  v16 = block_size_wide_8[v11];
  v17 = *(a1 + 7928);
  if (v17 < 0)
  {
    if (v15 <= a5 || ((v17 >> (*(a1 + 20) + 3)) + v16) >> 2 <= a6)
    {
      return result;
    }
  }

  else if (v15 <= a5 || block_size_wide_8[v11] >> 2 <= a6)
  {
    return result;
  }

  v20 = sub_tx_size_map_0[max_txsize_rect_lookup_2[v11]];
  v21 = tx_size_wide_log2_2[v20] - 2;
  v22 = tx_size_high_log2_2[v20] - 2;
  v23 = mi_size_wide_log2_1[v11] - (LOBYTE(tx_size_wide_log2_2[v20]) - 2);
  if (a4 == 2)
  {
    v24 = 0;
    v25 = tx_size_wide_unit_2[a3];
    v26 = tx_size_wide_unit_2[v20];
    if (v26 <= v25)
    {
      v27 = tx_size_wide_unit_2[a3];
    }

    else
    {
      v27 = tx_size_wide_unit_2[v20];
    }

    if (v26 >= v25)
    {
      v28 = tx_size_wide_unit_2[v20];
    }

    else
    {
      v28 = v26 + 1;
    }

    v29 = v27 - v28;
    if (v26 <= 1)
    {
      v30 = 1;
    }

    else
    {
      v30 = tx_size_wide_unit_2[v20];
    }

    v31 = tx_size_high_unit_2[a3];
    v32 = v9 + 146;
    v33 = tx_size_high_unit_2[v20];
    v34 = v29 / v30;
    if (v26 < v25)
    {
      ++v34;
    }

    v35 = v34 + 1;
    v36 = v35 & 0xFFFFFFFE;
    while (1)
    {
      v37 = (v24 + a5) >> v22 << v23;
      if (v35 >= 2)
      {
        v39 = a6;
        v40 = v35 & 0xFFFFFFFE;
        do
        {
          v32[v37 + (v39 >> v21)] = a3;
          v32[v37 + ((v26 + v39) >> v21)] = a3;
          v39 += 2 * v26;
          v40 -= 2;
        }

        while (v40);
        v38 = v36 * v26;
        if (v35 == v36)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v38 = 0;
      }

      do
      {
        v32[((a6 + v38) >> v21) + v37] = a3;
        v38 += v26;
      }

      while (v38 < v25);
LABEL_27:
      v24 += v33;
      if (v24 >= v31)
      {
        v9[145] = a3;
        v52 = (*(a1 + 8128) + a6);
        v53 = (*(a1 + 8136) + a5);
        v54 = txsize_to_bsize_2[a3];
        v55 = mi_size_wide_7[v54];
        v56 = tx_size_wide_5[a3];
        v57 = tx_size_high_4[a3];
        v58 = mi_size_high_6[v54];
        if (v58 <= 1)
        {
          v59 = 1;
        }

        else
        {
          v59 = v58;
        }

        memset(v53, v57, v59);
        if (v55 <= 1)
        {
          v60 = 1;
        }

        else
        {
          v60 = v55;
        }

        v61 = v52;
        goto LABEL_152;
      }
    }
  }

  v41 = a6;
  v42 = a5;
  v43 = a3;
  v44 = a3;
  v45 = LOBYTE(tx_size_wide_5[v44]);
  v46 = LOBYTE(tx_size_high_4[v44]);
  v47 = v46 > *(*(a1 + 8136) + a5);
  if (a3)
  {
    if (v16 <= result)
    {
      v48 = result;
    }

    else
    {
      v48 = v16;
    }

    v49 = 63;
    if (v48 <= 31)
    {
      if (v48 == 8)
      {
        v51 = 0;
        v50 = 1;
        goto LABEL_56;
      }

      if (v48 == 16)
      {
        v50 = 2;
        v51 = 1;
        goto LABEL_56;
      }
    }

    else
    {
      v50 = 4;
      v51 = 1;
      if (v48 == 128 || v48 == 64)
      {
LABEL_56:
        if (txsize_sqr_up_map_0[a3] == v50)
        {
          v63 = 0;
        }

        else
        {
          v63 = v51;
        }

        v49 = (3 * (v63 - 2 * v50) + 24);
        goto LABEL_60;
      }

      if (v48 == 32)
      {
        v50 = 3;
        goto LABEL_56;
      }
    }

LABEL_60:
    v62 = v47 + (v45 > *(*(a1 + 8128) + a6)) + v49;
    goto LABEL_61;
  }

  v62 = 0;
LABEL_61:
  v64 = (*(a1 + 10648) + 6 * v62 + 11654);
  v65 = *(a7 + 48);
  v66 = *(a7 + 52);
  v67 = v66 >> 8;
  v68 = 8;
  v69 = 1;
  v70 = v64;
  do
  {
    v71 = v66;
    v72 = *v70++;
    v73 = v67 * (v72 >> 6);
    v68 -= 4;
    v66 = v68 + (v73 >> 1);
    --v69;
  }

  while (HIWORD(v65) < v66);
  v74 = v71 - (v73 >> 1) - v68;
  v75 = 15 - (__clz(v74) ^ 0x1F);
  v76 = *(a7 + 54) - v75;
  *(a7 + 54) = v76;
  v77 = ((v65 - (v66 << 16) + 1) << v75) - 1;
  *(a7 + 48) = v77;
  *(a7 + 52) = v74 << v75;
  if (v76 < 0)
  {
    v78 = *(a7 + 32);
    v79 = *(a7 + 40);
    if (v79 >= v78)
    {
      v83 = *(a7 + 40);
      goto LABEL_82;
    }

    v80 = 8 - v76;
    if (v80 >= 7)
    {
      v81 = 7;
    }

    else
    {
      v81 = 8 - v76;
    }

    v82 = ((v81 ^ 0xFu) - v76) >> 3;
    if (v82 >= ~v79 + v78)
    {
      v82 = ~v79 + v78;
    }

    if (v82 >= 0xF)
    {
      v166 = v9;
      v84 = v82 + 1;
      v85 = (v82 + 1) & 0x3FFFFFF0;
      v83 = &v79->u8[v85];
      v86 = 0uLL;
      v87 = v76;
      v88 = v77;
      v89 = vdupq_n_s32(v80);
      v90 = vaddq_s32(v89, xmmword_273BC3230);
      v91 = vaddq_s32(v89, xmmword_273BC3240);
      v92 = vaddq_s32(v89, xmmword_273BC3250);
      v93 = vaddq_s32(v89, xmmword_273BC3220);
      v94.i64[0] = 0x8000800080008;
      v94.i64[1] = 0x8000800080008;
      v95.i64[0] = 0x7F0000007FLL;
      v95.i64[1] = 0x7F0000007FLL;
      v96 = v85;
      v97 = 0uLL;
      v98 = 0uLL;
      v99 = 0uLL;
      do
      {
        v100 = *v79++;
        v98 = veorq_s8(vshlq_u32(vqtbl1q_s8(v100, xmmword_273B8E7B0), v91), v98);
        v97 = veorq_s8(vshlq_u32(vqtbl1q_s8(v100, xmmword_273B8E7C0), v92), v97);
        v88 = veorq_s8(vshlq_u32(vqtbl1q_s8(v100, xmmword_273B8E7D0), v93), v88);
        v99 = veorq_s8(vshlq_u32(vqtbl1q_s8(v100, xmmword_273B8E7A0), v90), v99);
        v87 = vaddq_s16(v87, v94);
        v86 = vaddq_s16(v86, v94);
        v93 = vaddq_s32(v93, v95);
        v92 = vaddq_s32(v92, v95);
        v91 = vaddq_s32(v91, v95);
        v90 = vaddq_s32(v90, v95);
        v96 -= 16;
      }

      while (v96);
      v101 = v79 < v78;
      v76 = vaddvq_s16(vaddq_s16(v87, v86));
      v102 = veorq_s8(veorq_s8(v88, v98), veorq_s8(v97, v99));
      *v102.i8 = veor_s8(*v102.i8, *&vextq_s8(v102, v102, 8uLL));
      v77 = v102.i32[0] ^ v102.i32[1];
      if (v84 == v85)
      {
        v9 = v166;
        goto LABEL_81;
      }

      v80 -= 8 * v85;
      v9 = v166;
    }

    else
    {
      v83 = *(a7 + 40);
    }

    do
    {
      v103 = *v83++;
      v77 ^= v103 << v80;
      v76 += 8;
      v101 = v83 < v78;
      v104 = v80 >= 8;
      v80 -= 8;
    }

    while (v104 && v83 < v78);
LABEL_81:
    if (v101)
    {
LABEL_83:
      *(a7 + 48) = v77;
      *(a7 + 54) = v76;
      *(a7 + 40) = v83;
      goto LABEL_84;
    }

LABEL_82:
    *(a7 + 24) = *(a7 + 24) - v76 + 0x4000;
    v76 = 0x4000;
    goto LABEL_83;
  }

LABEL_84:
  if (*(a7 + 56))
  {
    v105 = v64[2];
    v106 = (v105 >> 4) + 4;
    v107 = *v64;
    if (-v69 < 1)
    {
      v108 = v107 - (v107 >> v106);
    }

    else
    {
      v108 = v107 + ((0x8000 - v107) >> v106);
    }

    *v64 = v108;
    if (v105 < 0x20)
    {
      LOWORD(v105) = v105 + 1;
    }

    v64[2] = v105;
  }

  if (!v69)
  {
    v118 = 0;
    v119 = tx_size_wide_unit_2[a3];
    v120 = tx_size_wide_unit_2[v20];
    if (v120 <= v119)
    {
      v121 = tx_size_wide_unit_2[a3];
    }

    else
    {
      v121 = tx_size_wide_unit_2[v20];
    }

    if (v120 >= v119)
    {
      v122 = tx_size_wide_unit_2[v20];
    }

    else
    {
      v122 = v120 + 1;
    }

    v123 = v121 - v122;
    if (v120 <= 1)
    {
      v124 = 1;
    }

    else
    {
      v124 = tx_size_wide_unit_2[v20];
    }

    v125 = tx_size_high_unit_2[a3];
    v126 = v9 + 146;
    v127 = tx_size_high_unit_2[v20];
    v128 = v123 / v124;
    if (v120 < v119)
    {
      ++v128;
    }

    v129 = v128 + 1;
    v130 = v129 & 0xFFFFFFFE;
    while (1)
    {
      v131 = (v118 + a5) >> v22 << v23;
      if (v129 >= 2)
      {
        v133 = a6;
        v134 = v129 & 0xFFFFFFFE;
        do
        {
          v126[v131 + (v133 >> v21)] = a3;
          v126[v131 + ((v120 + v133) >> v21)] = a3;
          v133 += 2 * v120;
          v134 -= 2;
        }

        while (v134);
        v132 = v130 * v120;
        if (v129 == v130)
        {
          goto LABEL_110;
        }
      }

      else
      {
        v132 = 0;
      }

      do
      {
        v126[((a6 + v132) >> v21) + v131] = a3;
        v132 += v120;
      }

      while (v132 < v119);
LABEL_110:
      v118 += v127;
      if (v118 >= v125)
      {
        v9[145] = a3;
        v135 = *(a1 + 8128);
        v136 = *(a1 + 8136);
        v137 = txsize_to_bsize_2[a3];
        v138 = mi_size_wide_7[v137];
        v139 = mi_size_high_6[v137];
        if (v139 <= 1)
        {
          v140 = 1;
        }

        else
        {
          v140 = v139;
        }

        memset((v136 + v42), v46, v140);
        if (v138 <= 1)
        {
          v60 = 1;
        }

        else
        {
          v60 = v138;
        }

        v61 = (v135 + a6);
        v141 = v45;
        goto LABEL_153;
      }
    }
  }

  v109 = sub_tx_size_map_0[a3];
  v110 = tx_size_high_unit_2[v43];
  v111 = tx_size_wide_unit_2[v43];
  if (((0x63uLL >> v43) & 1) == 0)
  {
    v165 = tx_size_high_unit_2[v43];
    v167 = tx_size_wide_unit_2[v43];
    v112 = 0;
    v113 = tx_size_wide_unit_2[v109];
    v164 = tx_size_high_unit_2[v109];
    do
    {
      v114 = 0;
      do
      {
        v115 = a6;
        v116 = v109;
        v117 = a7;
        result = read_tx_size_vartx(a1, v9);
        a7 = v117;
        v109 = v116;
        a6 = v115;
        v114 += v113;
      }

      while (v114 < v167);
      v112 += v164;
    }

    while (v112 < v165);
    return result;
  }

  v142 = 0;
  v143 = tx_size_wide_unit_2[v20];
  if (v143 <= v111)
  {
    v144 = tx_size_wide_unit_2[v43];
  }

  else
  {
    v144 = tx_size_wide_unit_2[v20];
  }

  if (v143 >= v111)
  {
    v145 = tx_size_wide_unit_2[v20];
  }

  else
  {
    v145 = v143 + 1;
  }

  v146 = v144 - v145;
  if (v143 <= 1)
  {
    v147 = 1;
  }

  else
  {
    v147 = tx_size_wide_unit_2[v20];
  }

  v148 = v9 + 146;
  v149 = tx_size_high_unit_2[v20];
  v150 = v146 / v147;
  if (v143 < v111)
  {
    ++v150;
  }

  v151 = v150 + 1;
  v152 = v151 & 0xFFFFFFFE;
  do
  {
    v153 = (v142 + a5) >> v22 << v23;
    if (v151 < 2)
    {
      v154 = 0;
      do
      {
LABEL_143:
        v148[((a6 + v154) >> v21) + v153] = 0;
        v154 += v143;
      }

      while (v154 < v111);
      goto LABEL_137;
    }

    v155 = a6;
    v156 = v151 & 0xFFFFFFFE;
    do
    {
      v148[v153 + (v155 >> v21)] = 0;
      v148[v153 + ((v143 + v155) >> v21)] = 0;
      v155 += 2 * v143;
      v156 -= 2;
    }

    while (v156);
    v154 = v152 * v143;
    if (v151 != v152)
    {
      goto LABEL_143;
    }

LABEL_137:
    v142 += v149;
  }

  while (v142 < v110);
  v9[145] = v109;
  v157 = *(a1 + 8128);
  v158 = *(a1 + 8136);
  v159 = txsize_to_bsize_2[v43];
  v160 = mi_size_wide_7[v159];
  v56 = tx_size_wide_5[v109];
  v161 = tx_size_high_4[v109];
  v162 = mi_size_high_6[v159];
  if (v162 <= 1)
  {
    v163 = 1;
  }

  else
  {
    v163 = v162;
  }

  memset((v158 + v42), v161, v163);
  if (v160 <= 1)
  {
    v60 = 1;
  }

  else
  {
    v60 = v160;
  }

  v61 = (v157 + v41);
LABEL_152:
  v141 = v56;
LABEL_153:

  return memset(v61, v141, v60);
}

uint64_t decode_token_recon_block(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v6 = a2 + 256928;
  v134 = (a2 + 15028);
  v142 = result;
  v113 = *(*(result + 39880) + 77);
  v7 = **(a2 + 7864);
  if ((*(v7 + 167) & 0x80) != 0 || *(v7 + 16) > 0)
  {
    (*(a2 + 256960))(result + 15200, a2, a4);
    if (!*(v7 + 144))
    {
      v144[0] = 0;
      v8 = block_size_wide_8[v4];
      v9 = *(a2 + 7928);
      if (v9 < 0)
      {
        v8 += v9 >> (*(a2 + 20) + 3);
      }

      v138 = v7;
      v10 = v8 >> 2;
      v11 = block_size_high_7[v4];
      v12 = *(a2 + 7936);
      if (v12 < 0)
      {
        v11 += v12 >> (*(a2 + 24) + 3);
      }

      v13 = v11 >> 2;
      if (v10 >= 16)
      {
        v14 = 16;
      }

      else
      {
        v14 = v10;
      }

      v103 = v14;
      if (v13 >= 16)
      {
        v15 = 16;
      }

      else
      {
        v15 = v11 >> 2;
      }

      v98 = v15;
      if (v13 >= 1 && v10 >= 1)
      {
        v16 = 0;
        v107 = a2 + 10692;
        v105 = &av1_ss_size_lookup[4 * v4];
        v135 = v6;
        v101 = v10;
        v97 = v13;
        do
        {
          v17 = 0;
          v18 = v16 + v98;
          v99 = v16 + v98;
          if ((v16 + v98) >= v13)
          {
            v18 = v13;
          }

          v109 = v18;
          v111 = v16;
          do
          {
            v19 = v17 + v103;
            v116 = v17;
            v118 = v17 + v103;
            if ((v17 + v103) >= v10)
            {
              v19 = v10;
            }

            v114 = v19;
            v20 = *(a2 + 20);
            v21 = *(a2 + 24);
            v22 = v105[2 * v20 + v21];
            if (*(v107 + 4 * (*(**(a2 + 7864) + 167) & 7)))
            {
              v23 = 0;
            }

            else
            {
              v23 = max_txsize_rect_lookup_2[v22];
            }

            v29 = v16 >> v21;
            v130 = (v109 + (1 << v21 >> 1)) >> v21;
            if (v29 < v130)
            {
              v30 = (v114 + (1 << v20 >> 1)) >> v20;
              v124 = v116 >> v20;
              if ((v116 >> v20) < v30)
              {
                v31 = 0;
                v32 = tx_size_wide_unit_2[v23];
                v120 = tx_size_high_unit_2[v23];
                do
                {
                  v33 = v124;
                  do
                  {
                    decode_reconstruct_tx(v142 + 15200, a2, a3, v138, 0, v22, v29, v33, v31, v23, v144);
                    v31 += v32 * v120;
                    v33 = (v33 + v32);
                  }

                  while (v33 < v30);
                  v29 = (v29 + v120);
                }

                while (v29 < v130);
              }
            }

            if (!v113 && *(a2 + 12) == 1)
            {
              v24 = *(a2 + 2628);
              v25 = *(a2 + 2632);
              v26 = v105[2 * v24 + v25];
              if (*(v107 + 4 * (*(**(a2 + 7864) + 167) & 7)))
              {
                v27 = 0;
                v28 = v111;
              }

              else
              {
                v27 = max_txsize_rect_lookup_2[v26];
                if (v27 > 0x10)
                {
                  v28 = v111;
                  if (v27 == 18)
                  {
                    v27 = 10;
                  }

                  else if (v27 == 17)
                  {
                    v27 = 9;
                  }
                }

                else
                {
                  v34 = v27 - 11 < 2 || v27 == 4;
                  v28 = v111;
                  if (v34)
                  {
                    v27 = 3;
                  }
                }
              }

              v35 = v28 >> v25;
              v131 = (v109 + (1 << v25 >> 1)) >> v25;
              if (v35 < v131)
              {
                v36 = (v114 + (1 << v24 >> 1)) >> v24;
                v125 = v116 >> v24;
                if ((v116 >> v24) < v36)
                {
                  v37 = 0;
                  v38 = tx_size_wide_unit_2[v27];
                  v121 = tx_size_high_unit_2[v27];
                  do
                  {
                    v39 = v125;
                    do
                    {
                      decode_reconstruct_tx(v142 + 15200, a2, a3, v138, 1, v26, v35, v39, v37, v27, v144);
                      v37 += v38 * v121;
                      v39 = (v39 + v38);
                    }

                    while (v39 < v36);
                    v35 = (v35 + v121);
                  }

                  while (v35 < v131);
                }
              }

              if (*(a2 + 12) == 1)
              {
                v40 = *(a2 + 5236);
                v41 = *(a2 + 5240);
                v42 = v105[2 * v40 + v41];
                if (*(v107 + 4 * (*(**(a2 + 7864) + 167) & 7)))
                {
                  v43 = 0;
                  v44 = v111;
                }

                else
                {
                  v43 = max_txsize_rect_lookup_2[v42];
                  if (v43 > 0x10)
                  {
                    v44 = v111;
                    if (v43 == 18)
                    {
                      v43 = 10;
                    }

                    else if (v43 == 17)
                    {
                      v43 = 9;
                    }
                  }

                  else
                  {
                    v45 = v43 - 11 < 2 || v43 == 4;
                    v44 = v111;
                    if (v45)
                    {
                      v43 = 3;
                    }
                  }
                }

                v46 = v44 >> v41;
                v132 = (v109 + (1 << v41 >> 1)) >> v41;
                if (v46 < v132)
                {
                  v47 = (v114 + (1 << v40 >> 1)) >> v40;
                  v126 = v116 >> v40;
                  if ((v116 >> v40) < v47)
                  {
                    v48 = 0;
                    v49 = tx_size_wide_unit_2[v43];
                    v122 = tx_size_high_unit_2[v43];
                    do
                    {
                      v50 = v126;
                      do
                      {
                        decode_reconstruct_tx(v142 + 15200, a2, a3, v138, 2, v42, v46, v50, v48, v43, v144);
                        v48 += v49 * v122;
                        v50 = (v50 + v49);
                      }

                      while (v50 < v47);
                      v46 = (v46 + v122);
                    }

                    while (v46 < v132);
                  }
                }
              }
            }

            v17 = v118;
            v10 = v101;
            v6 = v135;
            v16 = v111;
          }

          while (v118 < v101);
          v16 = v99;
          v13 = v97;
        }

        while (v99 < v97);
      }
    }

    result = (*(v6 + 40))(v142 + 15200, a2);
  }

  else
  {
    v54 = block_size_wide_8[a4];
    v55 = *(a2 + 7928);
    if (v55 < 0)
    {
      v54 += v55 >> (*(a2 + 20) + 3);
    }

    v56 = v54 >> 2;
    v57 = block_size_high_7[a4];
    v58 = *(a2 + 7936);
    if (v58 < 0)
    {
      v57 += v58 >> (*(a2 + 24) + 3);
    }

    v59 = v57 >> 2;
    if (v56 >= 16)
    {
      v60 = 16;
    }

    else
    {
      v60 = v56;
    }

    v108 = v60;
    if (v59 >= 16)
    {
      v61 = 16;
    }

    else
    {
      v61 = v57 >> 2;
    }

    v102 = v61;
    if (v59 >= 1 && v56 >= 1)
    {
      v62 = 0;
      v110 = a2 + 10692;
      v136 = a2 + 256928;
      v106 = v56;
      v100 = v59;
      do
      {
        v63 = 0;
        v64 = v62 + v102;
        v104 = v62 + v102;
        if ((v62 + v102) >= v59)
        {
          v64 = v59;
        }

        v112 = v64;
        v115 = v62;
        do
        {
          if ((v63 + v108) >= v56)
          {
            v65 = v56;
          }

          else
          {
            v65 = v63 + v108;
          }

          v117 = v65;
          v66 = **(a2 + 7864);
          v133 = v63;
          v119 = v63 + v108;
          if (*(v110 + 4 * (*(v66 + 167) & 7)))
          {
            v67 = 0;
          }

          else
          {
            v67 = *(v66 + 145);
          }

          v71 = *(a2 + 24);
          v72 = v62 >> v71;
          v127 = (v112 + (1 << v71 >> 1)) >> v71;
          if (v72 < v127)
          {
            v73 = v67;
            v123 = tx_size_high_unit_2[v67];
            v74 = tx_size_wide_unit_2[v67];
            v75 = (v117 + (1 << *(a2 + 20) >> 1)) >> *(a2 + 20);
            do
            {
              v139 = v72;
              for (i = v63 >> *(a2 + 20); i < v75; i = (i + v74))
              {
                (*v136)(v142 + 15200, a2, a3, 0, v139, i, v73);
                result = (*(v136 + 8))(v142 + 15200, a2, a3, 0, v139, i, v73);
                v77 = v134[38] + tx_size_high_4[v73] * tx_size_wide_5[v73];
                v134[38] = v77;
                v134[54] = v77 >> 4;
              }

              v72 = v139 + v123;
              v63 = v133;
            }

            while ((v139 + v123) < v127);
          }

          if (!v113 && *(a2 + 12) == 1)
          {
            v68 = **(a2 + 7864);
            if (*(v110 + 4 * (*(v68 + 167) & 7)))
            {
              v69 = 0;
              v70 = v115;
            }

            else
            {
              v69 = max_txsize_rect_lookup_2[av1_ss_size_lookup[4 * *v68 + 2 * *(a2 + 2628) + *(a2 + 2632)]];
              if (v69 > 16)
              {
                v70 = v115;
                if (v69 == 18)
                {
                  v69 = 10;
                }

                else if (v69 == 17)
                {
                  v69 = 9;
                }
              }

              else
              {
                v78 = (v69 - 11) < 2 || v69 == 4;
                v70 = v115;
                if (v78)
                {
                  v69 = 3;
                }
              }
            }

            v79 = *(a2 + 2632);
            v80 = v70 >> v79;
            v140 = (v112 + (1 << v79 >> 1)) >> v79;
            if (v80 < v140)
            {
              v81 = v69;
              v128 = tx_size_high_unit_2[v69];
              v82 = tx_size_wide_unit_2[v69];
              v83 = (v117 + (1 << *(a2 + 2628) >> 1)) >> *(a2 + 2628);
              do
              {
                for (j = v63 >> *(a2 + 2628); j < v83; j = (j + v82))
                {
                  (*v136)(v142 + 15200, a2, a3, 1, v80, j, v81);
                  result = (*(v136 + 8))(v142 + 15200, a2, a3, 1, v80, j, v81);
                  v85 = v134[39] + tx_size_high_4[v81] * tx_size_wide_5[v81];
                  v134[39] = v85;
                  v134[55] = v85 >> 4;
                }

                v63 = v133;
                v80 = (v80 + v128);
              }

              while (v80 < v140);
            }

            if (*(a2 + 12) == 1)
            {
              v86 = **(a2 + 7864);
              if (*(v110 + 4 * (*(v86 + 167) & 7)))
              {
                v87 = 0;
                v88 = v115;
              }

              else
              {
                v87 = max_txsize_rect_lookup_2[av1_ss_size_lookup[4 * *v86 + 2 * *(a2 + 5236) + *(a2 + 5240)]];
                if (v87 > 16)
                {
                  v88 = v115;
                  if (v87 == 18)
                  {
                    v87 = 10;
                  }

                  else if (v87 == 17)
                  {
                    v87 = 9;
                  }
                }

                else
                {
                  v89 = (v87 - 11) < 2 || v87 == 4;
                  v88 = v115;
                  if (v89)
                  {
                    v87 = 3;
                  }
                }
              }

              v90 = *(a2 + 5240);
              v91 = v88 >> v90;
              v141 = (v112 + (1 << v90 >> 1)) >> v90;
              if (v91 < v141)
              {
                v92 = v87;
                v129 = tx_size_high_unit_2[v87];
                v93 = tx_size_wide_unit_2[v87];
                v94 = (v117 + (1 << *(a2 + 5236) >> 1)) >> *(a2 + 5236);
                do
                {
                  for (k = v63 >> *(a2 + 5236); k < v94; k = (k + v93))
                  {
                    (*v136)(v142 + 15200, a2, a3, 2, v91, k, v92);
                    result = (*(v136 + 8))(v142 + 15200, a2, a3, 2, v91, k, v92);
                    v96 = v134[40] + tx_size_high_4[v92] * tx_size_wide_5[v92];
                    v134[40] = v96;
                    v134[56] = v96 >> 4;
                  }

                  v63 = v133;
                  v91 = (v91 + v129);
                }

                while (v91 < v141);
              }
            }
          }

          v63 = v119;
          v56 = v106;
          v62 = v115;
        }

        while (v119 < v106);
        v62 = v104;
        v59 = v100;
      }

      while (v104 < v100);
    }
  }

  v51 = **(a2 + 7864);
  if ((*(v51 + 167) & 0x80) == 0 && v51[16] <= 0)
  {
    if (v51[142])
    {
      *v134 += (block_size_wide_8[*v51] >> *(a2 + 20)) * (block_size_high_7[*v51] >> *(a2 + 24));
    }

    if (!*(*(v142 + 39880) + 77) && *(a2 + 12) == 1)
    {
      if (v51[143])
      {
        v52 = *v51;
        v53 = block_size_high_7[v52] >> *(a2 + 2632);
        LODWORD(v52) = block_size_wide_8[v52] >> *(a2 + 2628);
        v134[1] += (v52 + 2 * (v52 < 4)) * (v53 + 2 * (v53 < 4));
      }
    }
  }

  return result;
}

uint64_t set_mi_row_col(uint64_t result, int a2, int a3, int a4, int a5, int a6, unsigned int a7, int a8, int a9)
{
  *(result + 7932) = -32 * a4;
  *(result + 7936) = 32 * (a8 - (a5 + a4));
  *(result + 7924) = -32 * a6;
  *(result + 7928) = 32 * (a9 - (a7 + a6));
  *result = a4;
  *(result + 4) = a6;
  v9 = a2 < a4;
  *(result + 7872) = v9;
  v10 = *(result + 2628);
  v11 = *(result + 2632);
  v12 = a3 < a6;
  *(result + 7873) = v12;
  *(result + 7874) = v9;
  if (v10)
  {
    v13 = a7 <= 1;
  }

  else
  {
    v13 = 0;
  }

  if (v13)
  {
    v12 = a6 - 1 > a3;
  }

  *(result + 7875) = v12;
  if (a5 <= 1 && v11)
  {
    v9 = a4 - 1 > a2;
    *(result + 7874) = v9;
  }

  if (a2 >= a4)
  {
    *(result + 7888) = 0;
    if (a3 >= a6)
    {
LABEL_12:
      *(result + 7880) = 0;
      if (a4)
      {
        goto LABEL_19;
      }

      goto LABEL_16;
    }
  }

  else
  {
    *(result + 7888) = *(*(result + 7864) - 8 * *(result + 8));
    if (a3 >= a6)
    {
      goto LABEL_12;
    }
  }

  *(result + 7880) = *(*(result + 7864) - 8);
  if (a4)
  {
    goto LABEL_19;
  }

LABEL_16:
  if ((a5 & 1) != 0 && v11)
  {
    *(result + 12) = 0;
    goto LABEL_29;
  }

LABEL_19:
  if ((a6 & 1) != 0 || (a7 & 1) == 0)
  {
    *(result + 12) = 1;
    goto LABEL_24;
  }

  *(result + 12) = v10 == 0;
  if (!v10)
  {
LABEL_24:
    v14 = *(result + 8);
    v15 = *(result + 7864) + 8 * -((v10 & a6) + v14 * (v11 & a4));
    if (v9)
    {
      *(result + 7904) = *(v15 + 8 * (v10 - v14));
      if (!v12)
      {
LABEL_26:
        *(result + 7896) = 0;
        goto LABEL_29;
      }
    }

    else
    {
      *(result + 7904) = 0;
      if (!v12)
      {
        goto LABEL_26;
      }
    }

    *(result + 7896) = *(v15 + 8 * v14 * v11 - 8);
  }

LABEL_29:
  *(result + 8309) = a5;
  *(result + 8308) = a7;
  *(result + 10632) = 0;
  if (a7 >= a5 || ((a7 + a6) & (a5 - 1)) != 0)
  {
    *(result + 10633) = 0;
    if (a7 <= a5)
    {
      return result;
    }
  }

  else
  {
    *(result + 10632) = 1;
    *(result + 10633) = 0;
    if (a7 <= a5)
    {
      return result;
    }
  }

  if (((a7 - 1) & a4) == 0)
  {
    *(result + 10633) = 1;
  }

  return result;
}

uint64_t decode_reconstruct_tx(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, unsigned __int8 a10, _DWORD *a11)
{
  v14 = result;
  v15 = a5;
  if (!a5)
  {
    v19 = a4[(a8 >> av1_get_txb_size_index_tw_w_log2_table_1[a6]) + 146 + (a7 >> av1_get_txb_size_index_tw_h_log2_table_1[a6] << av1_get_txb_size_index_stride_log2_table_1[a6])];
    v21 = block_size_high_7[a6];
    v22 = *(a2 + 7936);
    if (v22 < 0)
    {
      v21 += v22 >> (*(a2 + 24) + 3);
      v23 = block_size_wide_8[a6];
      v24 = *(a2 + 7928);
      if ((v24 & 0x80000000) == 0)
      {
LABEL_11:
        v25 = v21 >> 2;
        v26 = __OFSUB__(v25, a7);
        v27 = v25 - a7;
        if ((v27 < 0) ^ v26 | (v27 == 0))
        {
          return result;
        }

        goto LABEL_25;
      }
    }

    else
    {
      v23 = block_size_wide_8[a6];
      v24 = *(a2 + 7928);
      if ((v24 & 0x80000000) == 0)
      {
        goto LABEL_11;
      }
    }

    v23 += v24 >> (*(a2 + 20) + 3);
    v28 = v21 >> 2;
    v26 = __OFSUB__(v28, a7);
    v27 = v28 - a7;
    if ((v27 < 0) ^ v26 | (v27 == 0))
    {
      return result;
    }

    goto LABEL_25;
  }

  v16 = a2 + 2608 * a5;
  v17 = *(v16 + 20);
  v18 = *(v16 + 24);
  v19 = max_txsize_rect_lookup_2[av1_ss_size_lookup[4 * *a4 + 2 * v17 + v18]];
  if (v19 > 0x10)
  {
    if (v19 == 17)
    {
      v19 = 9;
    }

    else if (v19 == 18)
    {
      v19 = 10;
    }
  }

  else if (v19 - 11 < 2 || v19 == 4)
  {
    v19 = 3;
  }

  v29 = ((*(a2 + 7936) >> (v18 + 3)) & (*(a2 + 7936) >> 31)) + block_size_high_7[a6];
  v30 = *(a2 + 7928);
  v23 = (v30 >> (v17 + 3)) + block_size_wide_8[a6];
  if (v30 >= 0)
  {
    v23 = block_size_wide_8[a6];
  }

  v31 = v29 >> 2;
  v26 = __OFSUB__(v31, a7);
  v27 = v31 - a7;
  if (!((v27 < 0) ^ v26 | (v27 == 0)))
  {
LABEL_25:
    v32 = v23 >> 2;
    if (v32 > a8)
    {
      if (a5 || v19 == a10)
      {
        v46 = a2 + 253952;
        v47 = a2;
        v48 = a3;
        (*(a2 + 256944))(result);
        result = (*(v46 + 3000))(v14, v47, v48, a5, a7, a8, a10);
        v49 = v47 + 2 * v15;
        *a11 += *(*(v47 + 8 * v15 + 15112) + 4 * *(v49 + 15136));
        v50 = *(v49 + 15104) + tx_size_high_4[a10] * tx_size_wide_5[a10];
        *(v49 + 15104) = v50;
        *(v49 + 15136) = v50 >> 4;
      }

      else
      {
        v33 = tx_size_high_unit_2[a10];
        if (v33 >= v27)
        {
          v33 = v27;
        }

        if (tx_size_wide_unit_2[a10] >= v32 - a8)
        {
          v34 = v32 - a8;
        }

        else
        {
          v34 = tx_size_wide_unit_2[a10];
        }

        v52 = v33;
        if (v33 >= 1 && v34 >= 1)
        {
          v35 = 0;
          v36 = sub_tx_size_map_0[a10];
          v38 = tx_size_wide_unit_2[v36];
          v51 = tx_size_high_unit_2[v36];
          v53 = result;
          do
          {
            for (i = 0; i < v34; i += v38)
            {
              v40 = v14;
              v41 = a2;
              v42 = a3;
              v43 = a6;
              v44 = v35;
              v45 = v36;
              result = decode_reconstruct_tx(v40);
              v36 = v45;
              v35 = v44;
              a6 = v43;
              a3 = v42;
              v14 = v53;
              a2 = v41;
              a9 += v51 * v38;
            }

            v35 = (v44 + v51);
          }

          while (v35 < v52);
        }
      }
    }
  }

  return result;
}

BOOL tile_worker_hook_0(_DWORD *a1, unint64_t a2)
{
  v4 = *a1;
  if (setjmp(a1 + 57))
  {
    a1[56] = 0;
    *(*a1 + 15056) = 1;
    return 0;
  }

  else
  {
    v6 = v4;
    a1[56] = 1;
    if (*(a2 + 40484))
    {
      v7 = 0;
    }

    else
    {
      v7 = *(a2 + 15692) ^ 1;
    }

    *(v4 + 256928) = read_coeffs_tx_intra_block;
    *(v4 + 256944) = av1_read_coeffs_txb;
    *(v4 + 256936) = predict_and_reconstruct_intra_block;
    *(v4 + 256952) = inverse_transform_inter_block;
    *(v4 + 256960) = predict_inter_block;
    *(v4 + 256968) = cfl_store_inter_block;
    if (!*(v4 + 15056))
    {
      v8 = (a2 + 363792);
      while (1)
      {
        pthread_mutex_lock(*v8);
        v9 = *(a2 + 363812);
        if (v9 >= *(a2 + 363808))
        {
          break;
        }

        *(a2 + 363812) = v9 + 1;
        v10 = *(a2 + 363800);
        pthread_mutex_unlock(*v8);
        if (v10)
        {
          v11 = v10 + 16 * v9;
          v12 = *(v11 + 8);
          tile_worker_hook_init(a2, a1, *v11, v12, v7 & 1);
          decode_tile(a2, v6, *(v12 + 16), *(v12 + 20));
          if (!*(v6 + 15056))
          {
            continue;
          }
        }

        goto LABEL_7;
      }

      pthread_mutex_unlock(*v8);
    }

LABEL_7:
    a1[56] = 0;
    return *(v6 + 15056) == 0;
  }
}

void decode_tile(unint64_t a1, uint64_t a2, int a3, int a4)
{
  v7 = a2 + 8200;
  v8 = *(a1 + 39880);
  v9 = *(v8 + 77);
  v10 = *(v8 + 36);
  v11 = *(a1 + 4 * a3 + 40224);
  v12 = *(a1 + 4 * a3 + 40228);
  v13 = *(a1 + 15732);
  v14 = *(a1 + 4 * a4 + 39964) << v10;
  if (*(a1 + 4 * a4 + 39968) << v10 >= *(a1 + 15736))
  {
    v15 = *(a1 + 15736);
  }

  else
  {
    v15 = *(a1 + 4 * a4 + 39968) << v10;
  }

  v37 = v14;
  v38 = v15;
  av1_zero_above_context((a1 + 15200), a2, v14, v15, a3);
  *(v7 + 2552) = 0;
  if (v9)
  {
    v16 = 2;
  }

  else
  {
    v16 = 4;
  }

  bzero((a2 + 10753), v16);
  *(a2 + 0x2000) = 0xFFEA000FFFF90003;
  *(a2 + 8176) = 0xFFEA000FFFF90003;
  *v7 = 15;
  *(a2 + 8184) = 15;
  *(v7 + 2) = 262137;
  *(a2 + 8186) = 262137;
  *(v7 + 76) = 0x1FFFFFFFE0;
  if (v9)
  {
    v17 = (v11 << v10);
    if (v12 << v10 >= v13)
    {
      v18 = v13;
    }

    else
    {
      v18 = v12 << v10;
    }

    if (v17 >= v18)
    {
      goto LABEL_28;
    }
  }

  else
  {
    *(a2 + 8224) = 0xFFEA000FFFF90003;
    *(a2 + 8208) = 0xFFEA000FFFF90003;
    *(v7 + 32) = 15;
    *(v7 + 16) = 15;
    *(v7 + 34) = 262137;
    *(v7 + 18) = 262137;
    *(a2 + 8288) = 0x1FFFFFFFE0;
    *(a2 + 8256) = 0xFFEA000FFFF90003;
    *(a2 + 8240) = 0xFFEA000FFFF90003;
    *(v7 + 64) = 15;
    *(v7 + 48) = 15;
    *(v7 + 66) = 262137;
    *(v7 + 50) = 262137;
    *(v7 + 100) = 0x1FFFFFFFE0;
    v17 = (v11 << v10);
    if (v12 << v10 >= v13)
    {
      v18 = v13;
    }

    else
    {
      v18 = v12 << v10;
    }

    if (v17 >= v18)
    {
      goto LABEL_28;
    }
  }

  v19 = (a2 + 7992);
  v20 = (a2 + 8096);
  v21 = (a2 + 8144);
  if (v37 < v38)
  {
    v22 = 0uLL;
    *&v23 = 0x4040404040404040;
    *(&v23 + 1) = 0x4040404040404040;
    v36 = v18;
LABEL_19:
    *(a2 + 8056) = v22;
    *(a2 + 8072) = v22;
    *(a2 + 8024) = v22;
    *(a2 + 8040) = v22;
    *v19 = v22;
    *(a2 + 8008) = v22;
    *v20 = v22;
    *(a2 + 8112) = v22;
    v24 = v37;
    *v21 = v23;
    *(a2 + 8160) = v23;
    v25 = *(a1 + 39880);
    while (1)
    {
      *(a2 + 15080) = a2 + 15200;
      *(a2 + 15112) = a2 + 211808;
      *(a2 + 15104) = 0;
      *(a2 + 15136) = 0;
      if (!v9)
      {
        *(a2 + 15088) = a2 + 80736;
        *(a2 + 15120) = a2 + 215904;
        *(a2 + 15106) = 0;
        *(a2 + 15138) = 0;
        *(a2 + 15096) = a2 + 146272;
        *(a2 + 15128) = a2 + 220000;
      }

      *(a2 + 176) = a2 + 224096;
      *(a2 + 2784) = a2 + 240480;
      *(a2 + 15028) = 0;
      decode_partition_0(a1, a2, v17, v24, *(a2 + 256864), *(v25 + 28), 3u);
      v26 = *(a2 + 256864);
      if (*(v26 + 8) - *v26 < ((*(v26 + 24) - *(v26 + 54) + 8 * (*(v26 + 40) - *(v26 + 16)) + 7) >> 3))
      {
        goto LABEL_34;
      }

      v25 = *(a1 + 39880);
      v27 = *(v25 + 32);
      v24 = (v27 + v24);
      if (v24 >= v38)
      {
        v17 = (v27 + v17);
        v22 = 0uLL;
        *&v23 = 0x4040404040404040;
        *(&v23 + 1) = 0x4040404040404040;
        if (v17 < v36)
        {
          goto LABEL_19;
        }

        goto LABEL_28;
      }
    }
  }

  *&v28 = 0x4040404040404040;
  *(&v28 + 1) = 0x4040404040404040;
  do
  {
    *(a2 + 8056) = 0uLL;
    *(a2 + 8072) = 0uLL;
    *(a2 + 8024) = 0uLL;
    *(a2 + 8040) = 0uLL;
    *v19 = 0uLL;
    *(a2 + 8008) = 0uLL;
    *v20 = 0uLL;
    *(a2 + 8112) = 0uLL;
    *v21 = v28;
    *(a2 + 8160) = v28;
    LODWORD(v17) = *(*(a1 + 39880) + 32) + v17;
  }

  while (v17 < v18);
LABEL_28:
  v29 = *(a2 + 256864);
  v30 = *(v29 + 6) - *(v29 + 27) + 8 * (*(v29 + 10) - *(v29 + 4)) + 7;
  v31 = v30 >> 3;
  v33 = *v29;
  v32 = *(*(a2 + 256864) + 8);
  if ((v32 - v33) < v31 || (v34 = (v33 + v31), ((2 * (0x80u >> (v30 & 7)) - 1) & *(v34 - 1)) != 0x80u >> (v30 & 7)))
  {
LABEL_34:
    v35 = 1;
    goto LABEL_35;
  }

  if (v34 < v32)
  {
    while (!*v34)
    {
      if (++v34 >= v32)
      {
        goto LABEL_33;
      }
    }

    goto LABEL_34;
  }

LABEL_33:
  v35 = 0;
LABEL_35:
  *(a2 + 15056) |= v35;
}

uint64_t av1_read_tx_type(uint64_t result, uint64_t a2, int a3, int a4, unsigned int a5, uint64_t a6)
{
  v6 = **(a2 + 7864);
  v7 = *(a2 + 7912);
  v8 = a4 + *(a2 + 7920) * a3;
  *(v7 + v8) = 0;
  if (!*(v6 + 144))
  {
    v9 = *(v6 + 167);
    v10 = v9 & 7;
    if (!*(result + 18992) || (*(result + 4 * v10 + 19124) & 0x40) == 0)
    {
      if (*(a2 + 4 * v10 + 10660))
      {
        if ((v9 & 0x80) != 0)
        {
          v11 = 1;
          if ((0x61810uLL >> a5))
          {
            return result;
          }
        }

        else
        {
          v11 = *(v6 + 16) > 0;
          if ((0x61810uLL >> a5))
          {
            return result;
          }
        }

        if ((0x18608uLL >> a5))
        {
          if (v11)
          {
            v13 = ext_tx_set_index_0[6 * v11 + 1];
            v14 = txsize_sqr_map_1[a5];
            v15 = *(a2 + 10648);
            v12 = 1;
            goto LABEL_19;
          }
        }

        else
        {
          if (*(result + 501))
          {
            if (v11)
            {
              v12 = 1;
            }

            else
            {
              v12 = 2;
            }

LABEL_18:
            v16 = v12;
            v13 = ext_tx_set_index_0[6 * v11 + v12];
            v14 = txsize_sqr_map_1[a5];
            v15 = *(a2 + 10648);
            if (!v11)
            {
              if (*(v6 + 91))
              {
                v39 = &fimode_to_intradir_0 + *(v6 + 90);
              }

              else
              {
                v39 = (v6 + 2);
              }

              result = aom_read_symbol_(a6, (v15 + 1768 * v13 + 442 * txsize_sqr_map_1[a5] + 34 * *v39 + 15170), av1_num_ext_tx_set_0[v12]);
              goto LABEL_63;
            }

LABEL_19:
            v16 = v12;
            v17 = v14;
            v18 = v15 + 136 * v13 + 34 * v14 + 20474;
            v19 = av1_num_ext_tx_set_0[v16];
            v20 = *(a6 + 48);
            v21 = *(a6 + 52);
            v22 = v21 >> 8;
            v23 = 4 * v19;
            v24 = 0xFF00000000000000;
            LODWORD(result) = -1;
            v25 = v18;
            do
            {
              v26 = v21;
              v27 = *v25++;
              v28 = v22 * (v27 >> 6);
              v23 -= 4;
              v21 = v23 + (v28 >> 1);
              v24 += 0x100000000000000;
              result = (result + 1);
            }

            while (HIWORD(v20) < v21);
            v29 = v26 - (v28 >> 1) - v23;
            v30 = 15 - (__clz(v29) ^ 0x1F);
            v31 = *(a6 + 54) - v30;
            *(a6 + 54) = v31;
            v32 = ((v20 - (v21 << 16) + 1) << v30) - 1;
            *(a6 + 48) = v32;
            *(a6 + 52) = v29 << v30;
            if ((v31 & 0x8000) == 0)
            {
LABEL_45:
              if (!*(a6 + 56))
              {
LABEL_63:
                *(v7 + v8) = av1_ext_tx_inv[16 * v16 + result];
                return result;
              }

              v61 = *(v18 + 2 * v19);
              v62 = v61 >> 4;
              if (v16 > 1)
              {
                ++v62;
              }

              v63 = v62 + 4;
              v64 = v19 - 1;
              v65 = v24 >> 56;
              if (v19 - 1 <= 1)
              {
                v66 = 1;
              }

              else
              {
                v66 = v64;
              }

              if (v64 >= 8)
              {
                v68 = vdupq_n_s64(v65);
                v67 = v66 & 0x7FFFFFF8;
                v69 = xmmword_273BB9B30;
                v70 = xmmword_273BB9B40;
                v71 = xmmword_273B92120;
                v72 = xmmword_273B92130;
                v73 = vnegq_s32(vdupq_n_s32(v63));
                v74.i64[0] = 0x800000008000;
                v74.i64[1] = 0x800000008000;
                v75 = vdupq_n_s64(8uLL);
                v76 = v67;
                v77 = v18;
                do
                {
                  *v77 = vaddq_s16(*v77, vbslq_s8(vuzp1q_s16(vuzp1q_s32(vcgtq_s64(v68, v72), vcgtq_s64(v68, v71)), vuzp1q_s32(vcgtq_s64(v68, v70), vcgtq_s64(v68, v69))), vuzp1q_s16(vshlq_s32(vsubw_u16(v74, *v77->i8), v73), vshlq_s32(vsubw_high_u16(v74, *v77), v73)), vnegq_s16(vuzp1q_s16(vshlq_u32(vmovl_u16(*v77->i8), v73), vshlq_u32(vmovl_high_u16(*v77), v73)))));
                  ++v77;
                  v70 = vaddq_s64(v70, v75);
                  v71 = vaddq_s64(v71, v75);
                  v72 = vaddq_s64(v72, v75);
                  v69 = vaddq_s64(v69, v75);
                  v76 -= 8;
                }

                while (v76);
                if (v67 == v66)
                {
LABEL_60:
                  v82 = *(v18 + 2 * v19);
                  if (v61 < 0x20)
                  {
                    ++v82;
                  }

                  *(v18 + 2 * v19) = v82;
                  goto LABEL_63;
                }
              }

              else
              {
                v67 = 0;
              }

              v78 = (136 * v13 + 34 * v17 + 2 * v67 + v15 + 20474);
              do
              {
                v79 = *v78;
                v80 = v79 - (v79 >> v63);
                v81 = v79 + ((0x8000 - v79) >> v63);
                if (v67 >= v65)
                {
                  LOWORD(v81) = v80;
                }

                *v78++ = v81;
                ++v67;
              }

              while (v66 != v67);
              goto LABEL_60;
            }

            v34 = *(a6 + 32);
            v33 = *(a6 + 40);
            if (v33 >= v34)
            {
              v38 = *(a6 + 40);
              goto LABEL_43;
            }

            v35 = 8 - v31;
            if (v35 >= 7)
            {
              v36 = 7;
            }

            else
            {
              v36 = 8 - v31;
            }

            v37 = ((v36 ^ 0xFu) - v31) >> 3;
            if (v37 >= ~v33 + v34)
            {
              v37 = ~v33 + v34;
            }

            if (v37 >= 0xF)
            {
              v40 = v37 + 1;
              v41 = (v37 + 1) & 0x3FFFFFF0;
              v38 = &v33->u8[v41];
              v42 = 0uLL;
              v43 = v31;
              v44 = v32;
              v45 = vdupq_n_s32(v35);
              v46 = vaddq_s32(v45, xmmword_273BC3230);
              v47 = vaddq_s32(v45, xmmword_273BC3240);
              v48 = vaddq_s32(v45, xmmword_273BC3250);
              v49 = vaddq_s32(v45, xmmword_273BC3220);
              v50.i64[0] = 0x8000800080008;
              v50.i64[1] = 0x8000800080008;
              v51.i64[0] = 0x7F0000007FLL;
              v51.i64[1] = 0x7F0000007FLL;
              v52 = v41;
              v53 = 0uLL;
              v54 = 0uLL;
              v55 = 0uLL;
              do
              {
                v56 = *v33++;
                v54 = veorq_s8(vshlq_u32(vqtbl1q_s8(v56, xmmword_273B8E7B0), v47), v54);
                v53 = veorq_s8(vshlq_u32(vqtbl1q_s8(v56, xmmword_273B8E7C0), v48), v53);
                v44 = veorq_s8(vshlq_u32(vqtbl1q_s8(v56, xmmword_273B8E7D0), v49), v44);
                v55 = veorq_s8(vshlq_u32(vqtbl1q_s8(v56, xmmword_273B8E7A0), v46), v55);
                v43 = vaddq_s16(v43, v50);
                v42 = vaddq_s16(v42, v50);
                v49 = vaddq_s32(v49, v51);
                v48 = vaddq_s32(v48, v51);
                v47 = vaddq_s32(v47, v51);
                v46 = vaddq_s32(v46, v51);
                v52 -= 16;
              }

              while (v52);
              v57 = v33 < v34;
              v31 = vaddvq_s16(vaddq_s16(v43, v42));
              v58 = veorq_s8(veorq_s8(v44, v54), veorq_s8(v53, v55));
              *v58.i8 = veor_s8(*v58.i8, *&vextq_s8(v58, v58, 8uLL));
              v32 = v58.i32[0] ^ v58.i32[1];
              if (v40 == v41)
              {
                goto LABEL_42;
              }

              v35 -= 8 * v41;
            }

            else
            {
              v38 = *(a6 + 40);
            }

            do
            {
              v59 = *v38++;
              v32 ^= v59 << v35;
              v31 += 8;
              v57 = v38 < v34;
              v60 = v35 >= 8;
              v35 -= 8;
            }

            while (v60 && v38 < v34);
LABEL_42:
            if (v57)
            {
LABEL_44:
              *(a6 + 48) = v32;
              *(a6 + 54) = v31;
              *(a6 + 40) = v38;
              goto LABEL_45;
            }

LABEL_43:
            *(a6 + 24) = *(a6 + 24) - v31 + 0x4000;
            v31 = 0x4000;
            goto LABEL_44;
          }

          v12 = av1_ext_tx_set_lookup_1[2 * v11 + ((0x60604uLL >> a5) & 1)];
          if (v12)
          {
            goto LABEL_18;
          }
        }
      }
    }
  }

  return result;
}

uint64_t aom_read_symbol_(uint64_t result, int16x8_t *a2, int a3)
{
  v3 = result;
  v4 = *(result + 48);
  v5 = *(result + 52);
  v6 = v5 >> 8;
  v7 = 4 * a3;
  v8 = 0xFF00000000000000;
  LODWORD(result) = -1;
  v9 = a2;
  do
  {
    v10 = v5;
    v11 = v9->u16[0];
    v9 = (v9 + 2);
    v12 = v6 * (v11 >> 6);
    v7 -= 4;
    v5 = v7 + (v12 >> 1);
    v8 += 0x100000000000000;
    result = (result + 1);
  }

  while (HIWORD(v4) < v5);
  v13 = v10 - (v12 >> 1) - v7;
  v14 = 15 - (__clz(v13) ^ 0x1F);
  v15 = *(v3 + 54) - v14;
  *(v3 + 54) = v15;
  v16 = ((v4 - (v5 << 16) + 1) << v14) - 1;
  *(v3 + 48) = v16;
  *(v3 + 52) = v13 << v14;
  if (v15 < 0)
  {
    v17 = *(v3 + 32);
    v18 = *(v3 + 40);
    if (v18 >= v17)
    {
      v22 = *(v3 + 40);
      goto LABEL_21;
    }

    v19 = 8 - v15;
    if (v19 >= 7)
    {
      v20 = 7;
    }

    else
    {
      v20 = 8 - v15;
    }

    v21 = ((v20 ^ 0xFu) - v15) >> 3;
    if (v21 >= ~v18 + v17)
    {
      v21 = ~v18 + v17;
    }

    if (v21 >= 0xF)
    {
      v23 = v21 + 1;
      v24 = (v21 + 1) & 0x3FFFFFF0;
      v22 = &v18->u8[v24];
      v25 = 0uLL;
      v26 = v15;
      v27 = v16;
      v28 = vdupq_n_s32(v19);
      v29 = vaddq_s32(v28, xmmword_273BC3230);
      v30 = vaddq_s32(v28, xmmword_273BC3240);
      v31 = vaddq_s32(v28, xmmword_273BC3250);
      v32 = vaddq_s32(v28, xmmword_273BC3220);
      v33.i64[0] = 0x8000800080008;
      v33.i64[1] = 0x8000800080008;
      v34.i64[0] = 0x7F0000007FLL;
      v34.i64[1] = 0x7F0000007FLL;
      v35 = v24;
      v36 = 0uLL;
      v37 = 0uLL;
      v38 = 0uLL;
      do
      {
        v39 = *v18++;
        v37 = veorq_s8(vshlq_u32(vqtbl1q_s8(v39, xmmword_273B8E7B0), v30), v37);
        v36 = veorq_s8(vshlq_u32(vqtbl1q_s8(v39, xmmword_273B8E7C0), v31), v36);
        v27 = veorq_s8(vshlq_u32(vqtbl1q_s8(v39, xmmword_273B8E7D0), v32), v27);
        v38 = veorq_s8(vshlq_u32(vqtbl1q_s8(v39, xmmword_273B8E7A0), v29), v38);
        v26 = vaddq_s16(v26, v33);
        v25 = vaddq_s16(v25, v33);
        v32 = vaddq_s32(v32, v34);
        v31 = vaddq_s32(v31, v34);
        v30 = vaddq_s32(v30, v34);
        v29 = vaddq_s32(v29, v34);
        v35 -= 16;
      }

      while (v35);
      v40 = v18 < v17;
      v15 = vaddvq_s16(vaddq_s16(v26, v25));
      v41 = veorq_s8(veorq_s8(v27, v37), veorq_s8(v36, v38));
      *v41.i8 = veor_s8(*v41.i8, *&vextq_s8(v41, v41, 8uLL));
      v16 = v41.i32[0] ^ v41.i32[1];
      if (v23 == v24)
      {
        goto LABEL_20;
      }

      v19 -= 8 * v24;
    }

    else
    {
      v22 = *(v3 + 40);
    }

    do
    {
      v42 = *v22++;
      v16 ^= v42 << v19;
      v15 += 8;
      v40 = v22 < v17;
      v43 = v19 >= 8;
      v19 -= 8;
    }

    while (v43 && v22 < v17);
LABEL_20:
    if (v40)
    {
LABEL_22:
      *(v3 + 48) = v16;
      *(v3 + 54) = v15;
      *(v3 + 40) = v22;
      goto LABEL_23;
    }

LABEL_21:
    *(v3 + 24) = *(v3 + 24) - v15 + 0x4000;
    v15 = 0x4000;
    goto LABEL_22;
  }

LABEL_23:
  if (!*(v3 + 56))
  {
    return result;
  }

  v44 = a2->u16[a3];
  v45 = v44 >> 4;
  if (a3 > 3)
  {
    ++v45;
  }

  v46 = v45 + 4;
  v47 = a3 - 1;
  v48 = v8 >> 56;
  if (a3 - 1 <= 1)
  {
    v49 = 1;
  }

  else
  {
    v49 = v47;
  }

  if (v47 < 8)
  {
    v50 = 0;
    goto LABEL_34;
  }

  v51 = vdupq_n_s64(v48);
  v50 = v49 & 0x7FFFFFF8;
  v52 = xmmword_273BB9B30;
  v53 = xmmword_273BB9B40;
  v54 = xmmword_273B92120;
  v55 = xmmword_273B92130;
  v56 = vnegq_s32(vdupq_n_s32(v46));
  v57.i64[0] = 0x800000008000;
  v57.i64[1] = 0x800000008000;
  v58 = vdupq_n_s64(8uLL);
  v59 = v50;
  v60 = a2;
  do
  {
    *v60 = vaddq_s16(*v60, vbslq_s8(vuzp1q_s16(vuzp1q_s32(vcgtq_s64(v51, v55), vcgtq_s64(v51, v54)), vuzp1q_s32(vcgtq_s64(v51, v53), vcgtq_s64(v51, v52))), vuzp1q_s16(vshlq_s32(vsubw_u16(v57, *v60->i8), v56), vshlq_s32(vsubw_high_u16(v57, *v60), v56)), vnegq_s16(vuzp1q_s16(vshlq_u32(vmovl_u16(*v60->i8), v56), vshlq_u32(vmovl_high_u16(*v60), v56)))));
    ++v60;
    v53 = vaddq_s64(v53, v58);
    v54 = vaddq_s64(v54, v58);
    v55 = vaddq_s64(v55, v58);
    v52 = vaddq_s64(v52, v58);
    v59 -= 8;
  }

  while (v59);
  for (; v49 != v50; a2->i16[v50++] = v63)
  {
LABEL_34:
    v61 = a2->u16[v50];
    v62 = v61 - (v61 >> v46);
    v63 = v61 + ((0x8000 - v61) >> v46);
    if (v50 >= v48)
    {
      LOWORD(v63) = v62;
    }
  }

  v43 = v44 >= 0x20;
  v64 = a2->i16[a3];
  if (!v43)
  {
    ++v64;
  }

  a2->i16[a3] = v64;
  return result;
}

void av1_read_mode_info(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, double a6, int32x4_t a7)
{
  v7 = a5;
  v8 = a4;
  v10 = a2;
  v11 = a1;
  v818 = *MEMORY[0x277D85DE8];
  v12 = (a1 + 39880);
  v13 = (a1 + 34192);
  v14 = (a1 + 15200);
  v15 = **(a2 + 7864);
  *(v15 + 167) &= ~0x80u;
  v16 = **(a2 + 7864);
  if ((*(a1 + 15200) & 0xFD) == 0)
  {
    v808 = *(a2 + 7880);
    v26 = *v16;
    v27 = *(a2 + 10648);
    v805 = *(a2 + 7888);
    v806 = v27;
    if (*(a1 + 34360))
    {
      if (*v13)
      {
        v780 = (a1 + 34192);
        v28 = a1 + 15200;
        v29 = v12;
        v795 = **(a2 + 7864);
        v800 = v28;
        v31 = *v16;
        v32 = *a2;
        v33 = *(a2 + 4);
        v34 = *(v11 + 15736);
        v35 = a3;
        v36 = mi_size_wide_8[v31];
        v787 = v31;
        v37 = mi_size_high_7[v31];
        v38 = *(v11 + 15732) - *a2;
        v39 = v11;
        if (v38 >= v37)
        {
          v40 = v37;
        }

        else
        {
          v40 = v38;
        }

        v41 = a2;
        v782 = v35;
        segment_id = read_segment_id(v28, a2, v35, 0);
        if (v40 < 1)
        {
          v11 = v39;
          v7 = a5;
          a3 = v782;
          v16 = v795;
          v8 = a4;
          v12 = v29;
          v14 = v800;
        }

        else
        {
          v43 = (*(*(v39 + 15432) + 80) + v33 + v34 * v32);
          v44 = v34 - v33;
          if (v34 - v33 >= v36)
          {
            v44 = v36;
          }

          v45 = v44;
          do
          {
            memset(v43, segment_id, v45);
            v43 += v34;
            --v40;
          }

          while (v40);
          v11 = v39;
          v8 = a4;
          v7 = a5;
          v12 = v29;
          v16 = v795;
          a3 = v782;
          v14 = v800;
        }

        v26 = v787;
        v13 = v780;
      }

      else
      {
        v41 = a2;
        LOBYTE(segment_id) = 0;
      }

      *(v16 + 167) = *(v16 + 167) & 0xFFF8 | segment_id & 7;
      v10 = v41;
      v27 = v806;
    }

    v92 = *v13;
    if (*v13 && (*(v11 + 4 * (*(v16 + 167) & 7) + 34324) & 0x40) != 0)
    {
      v99 = 1;
      v16[144] = 1;
      if (!v13[168])
      {
        goto LABEL_102;
      }

      goto LABEL_115;
    }

    v93 = *(v10 + 7880);
    v94 = *(v10 + 7888);
    if (v94)
    {
      LODWORD(v94) = *(v94 + 144);
    }

    if (v93)
    {
      LODWORD(v93) = *(v93 + 144);
    }

    v95 = (*(v10 + 10648) + 6 * (v93 + v94) + 11870);
    v96 = *(a3 + 48);
    v97 = *(a3 + 52);
    v98 = v97 >> 8;
    v99 = -1;
    v100 = 8;
    v101 = v95;
    do
    {
      v102 = v97;
      v103 = *v101++;
      ++v99;
      v104 = v98 * (v103 >> 6);
      v100 -= 4;
      v97 = v100 + (v104 >> 1);
    }

    while (HIWORD(v96) < v97);
    v105 = v102 - (v104 >> 1) - v100;
    v106 = 15 - (__clz(v105) ^ 0x1F);
    v107 = *(a3 + 54) - v106;
    *(a3 + 54) = v107;
    v108 = ((v96 - (v97 << 16) + 1) << v106) - 1;
    *(a3 + 48) = v108;
    *(a3 + 52) = v105 << v106;
    if ((v107 & 0x8000) == 0)
    {
      if (*(a3 + 56))
      {
        goto LABEL_71;
      }

      goto LABEL_100;
    }

    v113 = v107;
    v114 = *(a3 + 32);
    v115 = *(a3 + 40);
    if (v115 >= v114)
    {
      v119 = *(a3 + 40);
LABEL_98:
      *(a3 + 24) = *(a3 + 24) - v113 + 0x4000;
      LOWORD(v113) = 0x4000;
LABEL_99:
      *(a3 + 48) = v108;
      *(a3 + 54) = v113;
      *(a3 + 40) = v119;
      if (*(a3 + 56))
      {
LABEL_71:
        v109 = v95[2];
        v110 = (v109 >> 4) + 4;
        v111 = *v95;
        if (v99 < 1)
        {
          v112 = v111 - (v111 >> v110);
        }

        else
        {
          v112 = v111 + ((0x8000 - v111) >> v110);
        }

        *v95 = v112;
        if (v109 < 0x20)
        {
          LOWORD(v109) = v109 + 1;
        }

        v95[2] = v109;
        v16[144] = v99;
        if (!v13[168])
        {
LABEL_101:
          if (!v92)
          {
            v153 = v12;
            v149 = v10;
            LOBYTE(v10) = 0;
LABEL_114:
            *(v16 + 167) = *(v16 + 167) & 0xFFF8 | v10 & 7;
            v10 = v149;
            v12 = v153;
            goto LABEL_115;
          }

LABEL_102:
          v796 = v16;
          v801 = v14;
          v785 = v8;
          v141 = a3;
          v791 = v12;
          v811 = v7;
          v142 = v11;
          v143 = *v10;
          v144 = *(v10 + 4);
          v145 = *(v142 + 15736);
          v146 = mi_size_wide_8[v26];
          v147 = *(v142 + 15732) - *v10;
          if (v147 >= mi_size_high_7[v26])
          {
            v148 = mi_size_high_7[v26];
          }

          else
          {
            v148 = v147;
          }

          v149 = v10;
          LODWORD(v10) = read_segment_id(v801, v10, v141, v99);
          if (v148 < 1)
          {
            v11 = v142;
            v7 = v811;
            v153 = v791;
            v16 = v796;
            a3 = v141;
            v14 = v801;
            v8 = v785;
          }

          else
          {
            v788 = v26;
            v150 = (*(*(v142 + 15432) + 80) + v144 + v145 * v143);
            v151 = v145 - v144;
            if (v145 - v144 >= v146)
            {
              v151 = v146;
            }

            v152 = v151;
            do
            {
              memset(v150, v10, v152);
              v150 += v145;
              --v148;
            }

            while (v148);
            v11 = v142;
            v7 = v811;
            v153 = v791;
            v16 = v796;
            a3 = v141;
            v14 = v801;
            v8 = v785;
            v26 = v788;
          }

          v27 = v806;
          goto LABEL_114;
        }

LABEL_115:
        read_cdef(v14, a3, v10);
        read_delta_q_params(v14, v10, a3);
        *(v16 + 1) = *(v10 + 10724);
        *(v16 + 8) = -256;
        *(v16 + 71) = 0;
        v16[91] = 0;
        v155 = *v10;
        *(v10 + 8128) = *(v12[82] + 8 * *(v10 + 7856)) + *(v10 + 4);
        *(v10 + 8136) = v10 + 8144 + (v155 & 0x1F);
        v156 = v808;
        if ((*v14 & 0xFD) != 0 || v14[495] != 1 || !v14[496])
        {
          goto LABEL_351;
        }

        v157 = v10;
        v158 = **(v10 + 7864);
        v802 = v157;
        v159 = *(v157 + 10648);
        v160 = v159 + 12288;
        v161 = (v159 + 12484);
        v162 = *(a3 + 48);
        v163 = *(a3 + 52);
        v164 = v163 >> 8;
        v165 = -2;
        v166 = 8;
        do
        {
          v167 = v163;
          v168 = *v161++;
          v169 = v164 * (v168 >> 6);
          ++v165;
          v166 -= 4;
          v163 = v166 + (v169 >> 1);
        }

        while (HIWORD(v162) < v163);
        v170 = v167 - (v169 >> 1) - v166;
        v171 = 15 - (__clz(v170) ^ 0x1F);
        v172 = *(a3 + 54) - v171;
        *(a3 + 54) = v172;
        v173 = ((v162 - (v163 << 16) + 1) << v171) - 1;
        *(a3 + 48) = v173;
        *(a3 + 52) = v170 << v171;
        v174 = v165 + 1;
        if ((v172 & 0x8000) == 0)
        {
LABEL_332:
          if (*(a3 + 56))
          {
            v418 = *(v160 + 200);
            v419 = (v418 >> 4) + 4;
            v420 = *(v160 + 196);
            if (v174 < 1)
            {
              v421 = v420 - (v420 >> v419);
            }

            else
            {
              v421 = v420 + ((0x8000 - v420) >> v419);
            }

            *(v160 + 196) = v421;
            if (v418 < 0x20)
            {
              LOWORD(v418) = v418 + 1;
            }

            *(v160 + 200) = v418;
          }

          *(v158 + 167) = *(v158 + 167) & 0xFF7F | ((v174 & 1) << 7);
          if (v165)
          {
LABEL_350:
            v10 = v802;
            if ((*(v16 + 167) & 0x80) != 0)
            {
              goto LABEL_383;
            }

LABEL_351:
            v427 = v805;
            if (v805)
            {
              v427 = *(v805 + 2);
            }

            if (v156)
            {
              v428 = *(v156 + 2);
            }

            else
            {
              v428 = 0;
            }

            intra_mode = read_intra_mode(a3, &v27[70 * intra_mode_context_0[v427] + 7093 + 14 * intra_mode_context_0[v428]]);
            angle_delta = 0;
            v16[2] = intra_mode;
            if (v26 >= 3 && (intra_mode - 9) >= 0xFFFFFFF8)
            {
              angle_delta = read_angle_delta(a3, &v27[8 * intra_mode + 7435]);
            }

            v16[88] = angle_delta;
            v431 = *(*v12 + 77);
            if (*(*v12 + 77) || *(v10 + 12) != 1)
            {
              v16[3] = 0;
              v435 = **(v10 + 7864);
              if (v431)
              {
                goto LABEL_364;
              }

LABEL_699:
              if (*(v10 + 12) != 1)
              {
                *(v10 + 15024) = 1;
                if (!v14[495])
                {
                  goto LABEL_367;
                }

                goto LABEL_365;
              }

              if ((*(v435 + 167) & 0x80) == 0 && v435[16] <= 0)
              {
                *(v10 + 15024) = v435[3] == 13;
                if (!v14[495])
                {
                  goto LABEL_367;
                }

                goto LABEL_365;
              }

LABEL_364:
              *(v10 + 15024) = 0;
              if (!v14[495])
              {
                goto LABEL_367;
              }

LABEL_365:
              if (v26 > 0xF || ((1 << v26) & 0xE007) == 0)
              {
                read_palette_mode_info(v14, v10, a3);
                v435 = **(v10 + 7864);
                if (!v435[2])
                {
                  goto LABEL_368;
                }

                goto LABEL_382;
              }

LABEL_367:
              if (!v435[2])
              {
LABEL_368:
                if (!v435[142])
                {
                  v436 = *v435;
                  v437 = v436 == 255 || *(*v12 + 60) == 0;
                  if (!v437 && ((0x1F07FFuLL >> v436) & 1) != 0 && ((0x2F0BFFuLL >> v436) & 1) != 0)
                  {
                    v438 = a3;
                    v439 = v11;
                    v440 = (*(v10 + 10648) + 6 * *v435 + 12562);
                    v441 = od_ec_decode_cdf_q15(v438 + 16, v440, 2);
                    if (*(v438 + 56))
                    {
                      v442 = v440[2];
                      v443 = (v442 >> 4) + 4;
                      v444 = v441;
                      v445 = *v440;
                      v446 = v445 - (v445 >> v443);
                      v447 = v445 + ((0x8000 - v445) >> v443);
                      if (v441 < 1)
                      {
                        LOWORD(v447) = v446;
                      }

                      *v440 = v447;
                      if (v442 < 0x20)
                      {
                        LOWORD(v442) = v442 + 1;
                      }

                      v440[2] = v442;
                    }

                    else
                    {
                      v444 = v441;
                    }

                    v11 = v439;
                    v435[91] = v444;
                    if (v444)
                    {
                      v435[90] = aom_read_symbol_(v438, (*(v10 + 10648) + 12694), 5);
                    }

                    goto LABEL_383;
                  }
                }
              }

LABEL_382:
              v435[91] = 0;
LABEL_383:
              if (!*(*v12 + 52))
              {
                return;
              }

              v448 = (v7 + 1) >> 1;
              if (v448 < 1)
              {
                return;
              }

              v449 = ((v8 + 1) >> 1);
              if (v449 < 1)
              {
                return;
              }

              v450 = 0;
              v451 = (*(v11 + 15736) + 1) >> 1;
              v452 = *(*(v11 + 15432) + 72) + 8 * (*(v10 + 4) >> 1) + 8 * v451 * (*v10 >> 1);
              v453 = (v452 + 12);
              while (1)
              {
                if (v449 == 1)
                {
                  v454 = 0;
                  v455 = v452;
                }

                else
                {
                  v455 = v452 + 8 * (v449 & 0x7FFFFFFE);
                  v456 = v449 & 0x7FFFFFFE;
                  v457 = v453;
                  do
                  {
                    *(v457 - 8) = -1;
                    *v457 = -1;
                    v457 += 16;
                    v456 -= 2;
                  }

                  while (v456);
                  v454 = v449 & 0x7FFFFFFE;
                  if ((v449 & 0x7FFFFFFE) == v449)
                  {
                    goto LABEL_387;
                  }
                }

                v458 = v449 - v454;
                v459 = (v455 + 4);
                do
                {
                  *v459 = -1;
                  v459 += 8;
                  --v458;
                }

                while (v458);
LABEL_387:
                v452 += 8 * v451;
                ++v450;
                v453 += 8 * v451;
                if (v450 == v448)
                {
                  return;
                }
              }
            }

            v432 = **(v10 + 7864);
            v433 = *v432;
            if (*(v10 + 4 * (*(v432 + 167) & 7) + 10692))
            {
              v434 = av1_ss_size_lookup[4 * v433 + 2 * *(v10 + 2628) + *(v10 + 2632)] == 0;
            }

            else
            {
              v434 = (0x1F07FFuLL >> v433) & (0x2F0BFFuLL >> v433);
            }

            v460 = &v27[195 * (v434 & 1) + 6419 + 15 * v16[2]];
            if (v434)
            {
              v461 = 14;
            }

            else
            {
              v461 = 13;
            }

            v462 = *(a3 + 48);
            v463 = *(a3 + 52);
            v464 = v463 >> 8;
            v465 = 4 * v461;
            v466 = -1;
            v467 = 0xFF00000000000000;
            v468 = v460;
            do
            {
              v469 = v463;
              ++v466;
              v470 = *v468++;
              v471 = v464 * (v470 >> 6);
              v465 -= 4;
              v463 = v465 + (v471 >> 1);
              v467 += 0x100000000000000;
            }

            while (HIWORD(v462) < v463);
            v472 = v469 - (v471 >> 1) - v465;
            v473 = 15 - (__clz(v472) ^ 0x1F);
            v474 = *(a3 + 54) - v473;
            *(a3 + 54) = v474;
            v475 = ((v462 - (v463 << 16) + 1) << v473) - 1;
            *(a3 + 48) = v475;
            *(a3 + 52) = v472 << v473;
            if ((v474 & 0x8000) == 0)
            {
LABEL_428:
              v510 = *(a3 + 56);
              if (*(a3 + 56))
              {
                v511 = 0;
                v512 = *(v460 + 2 * v461);
                v513 = (v512 >> 4) + 5;
                v514 = v467 >> 56;
                do
                {
                  v515 = *(v460 + 2 * v511);
                  v516 = v515 - (v515 >> v513);
                  v517 = v515 + ((0x8000 - v515) >> v513);
                  if (v511 >= v514)
                  {
                    LOWORD(v517) = v516;
                  }

                  *(v460 + 2 * v511++) = v517;
                }

                while (v461 - 1 != v511);
                v518 = *(v460 + 2 * v461);
                if (v512 < 0x20)
                {
                  ++v518;
                }

                *(v460 + 2 * v461) = v518;
              }

              v16[3] = v466;
              if (v466 != 13)
              {
LABEL_695:
                v755 = 0;
                if (v26 >= 3)
                {
                  v756 = get_uv_mode_uv2y_1[v466];
                  if ((v756 - 9) >= 0xFFFFFFF8)
                  {
                    v755 = read_angle_delta(a3, &v27[8 * v756 + 7435]);
                  }
                }

                v16[89] = v755;
                v435 = **(v10 + 7864);
                if (*(*v12 + 77))
                {
                  goto LABEL_364;
                }

                goto LABEL_699;
              }

              v786 = v8;
              v789 = v26;
              v793 = v12;
              v799 = v16;
              v803 = v14;
              v519 = 0;
              v520 = v27 + 10509;
              v784 = a3;
              v521 = *(a3 + 52);
              v522 = v521 >> 8;
              v523 = -1;
              v524 = 32;
              v525 = 0x600000000000000;
              v526 = 0x400000000000000;
              v527 = 0x200000000000000;
              v528 = -16777216;
              v529 = 0xFF00000000000000;
              do
              {
                v530 = v521;
                v531 = v519;
                v532 = *v520++;
                ++v523;
                v533 = v522 * (v532 >> 6);
                v524 -= 4;
                v521 = v524 + (v533 >> 1);
                ++v519;
                v525 -= 0x100000000000000;
                v526 -= 0x100000000000000;
                v527 -= 0x100000000000000;
                v529 += 0x100000000000000;
                v528 += 0x1000000;
              }

              while (HIWORD(v475) < v521);
              v534 = v530 - (v533 >> 1) - v524;
              v535 = 15 - (__clz(v534) ^ 0x1F);
              a3 = v784;
              v536 = *(v784 + 54) - v535;
              *(v784 + 54) = v536;
              v537 = ((v475 - (v521 << 16) + 1) << v535) - 1;
              *(v784 + 48) = v537;
              *(v784 + 52) = v534 << v535;
              if ((v536 & 0x8000) == 0)
              {
LABEL_470:
                if (!v510)
                {
                  goto LABEL_490;
                }

                v574 = v27[10517];
                v575 = (v574 >> 4) + 5;
                v576 = v529 >> 56;
                v577 = v27[10509];
                if (v576 <= 0)
                {
                  v27[10509] = v577 - (v577 >> v575);
                  v578 = v27[10510];
                }

                else
                {
                  v27[10509] = v577 + ((0x8000 - v577) >> v575);
                  v578 = v27[10510];
                  if (v527)
                  {
                    v27[10510] = v578 + ((0x8000 - v578) >> v575);
                    v579 = v27[10511];
                    if (v576 > 2)
                    {
                      v27[10511] = v579 + ((0x8000 - v579) >> v575);
                      v580 = v27[10512];
                      if (v526)
                      {
                        v27[10512] = v580 + ((0x8000 - v580) >> v575);
                        v581 = v27[10513];
                        if (v576 > 4)
                        {
                          v27[10513] = v581 + ((0x8000 - v581) >> v575);
                          v582 = v27[10514];
                          if (v525)
                          {
                            v27[10514] = v582 + ((0x8000 - v582) >> v575);
                            v583 = v27[10515];
                            if (v576 > 6)
                            {
                              v584 = v583 + ((0x8000 - v583) >> v575);
LABEL_486:
                              v27[10515] = v584;
                              if (v574 >= 0x20)
                              {
                                v585 = v574;
                              }

                              else
                              {
                                v585 = v574 + 1;
                              }

                              v27[10517] = v585;
LABEL_490:
                              v586 = v27;
                              v587 = v7;
                              v588 = (v528 >> 24) + 1;
                              v589 = (11 * v588) >> 5;
                              if ((11 * v588) < 0x20)
                              {
                                v590 = 0;
                                goto LABEL_523;
                              }

                              v591 = v10;
                              v592 = &v586[17 * (v528 >> 24) + 10484];
                              v593 = od_ec_decode_cdf_q15(v784 + 16, v592, 16);
                              v510 = *(v784 + 56);
                              if (!*(v784 + 56))
                              {
LABEL_522:
                                v590 = 16 * v593;
                                v10 = v591;
LABEL_523:
                                if (!(-3 * v589 + v588))
                                {
                                  v16 = v799;
                                  v7 = v587;
                                  v27 = v586;
LABEL_694:
                                  v16[92] = v523;
                                  v16[93] = v590;
                                  v466 = v16[3];
                                  v14 = v803;
                                  v8 = v786;
                                  v26 = v789;
                                  v12 = v793;
                                  goto LABEL_695;
                                }

                                v613 = 0;
                                v614 = &v586[51 * v588 + 10467 + 17 * v589 + -153 * v589];
                                v615 = *(a3 + 48);
                                v616 = *(a3 + 52);
                                v617 = v616 >> 8;
                                v618 = &v586[17 * (3 * v531 - 8 * v589) + 10518];
                                v619 = -1;
                                v620 = 64;
                                v7 = v587;
                                do
                                {
                                  v621 = v616;
                                  ++v619;
                                  v622 = *v618++;
                                  v623 = v617 * (v622 >> 6);
                                  v620 -= 4;
                                  v616 = v620 + (v623 >> 1);
                                  v613 -= 0x100000000000000;
                                }

                                while (HIWORD(v615) < v616);
                                v624 = v621 - (v623 >> 1) - v620;
                                v625 = 15 - (__clz(v624) ^ 0x1F);
                                v626 = *(a3 + 54) - v625;
                                *(a3 + 54) = v626;
                                v627 = ((v615 - (v616 << 16) + 1) << v625) - 1;
                                *(a3 + 48) = v627;
                                *(a3 + 52) = v624 << v625;
                                v16 = v799;
                                v27 = v586;
                                if ((v626 & 0x8000) == 0)
                                {
LABEL_663:
                                  if (!v510)
                                  {
LABEL_693:
                                    v590 += v619;
                                    goto LABEL_694;
                                  }

                                  v736 = v614[16];
                                  v737 = (v736 >> 4) + 5;
                                  v738 = (0xFF00000000000000 - v613) >> 56;
                                  v739 = *v614;
                                  if (v738 <= 0)
                                  {
                                    *v614 = v739 - (v739 >> v737);
                                    v740 = v614[1];
                                  }

                                  else
                                  {
                                    *v614 = v739 + ((0x8000 - v739) >> v737);
                                    v740 = v614[1];
                                    if (v613 != 0xFE00000000000000)
                                    {
                                      v614[1] = v740 + ((0x8000 - v740) >> v737);
                                      v741 = v614[2];
                                      if (v738 > 2)
                                      {
                                        v614[2] = v741 + ((0x8000 - v741) >> v737);
                                        v742 = v614[3];
                                        if (v613 != 0xFC00000000000000)
                                        {
                                          v614[3] = v742 + ((0x8000 - v742) >> v737);
                                          v743 = v614[4];
                                          if (v738 > 4)
                                          {
                                            v614[4] = v743 + ((0x8000 - v743) >> v737);
                                            v744 = v614[5];
                                            if (v613 != 0xFA00000000000000)
                                            {
                                              v614[5] = v744 + ((0x8000 - v744) >> v737);
                                              v745 = v614[6];
                                              if (v738 > 6)
                                              {
                                                v614[6] = v745 + ((0x8000 - v745) >> v737);
                                                v746 = v614[7];
                                                if (v613 != 0xF800000000000000)
                                                {
                                                  v614[7] = v746 + ((0x8000 - v746) >> v737);
                                                  v747 = v614[8];
                                                  if (v738 > 8)
                                                  {
                                                    v614[8] = v747 + ((0x8000 - v747) >> v737);
                                                    v748 = v614[9];
                                                    if (v613 != 0xF600000000000000)
                                                    {
                                                      v614[9] = v748 + ((0x8000 - v748) >> v737);
                                                      v749 = v614[10];
                                                      if (v738 > 0xA)
                                                      {
                                                        v614[10] = v749 + ((0x8000 - v749) >> v737);
                                                        v750 = v614[11];
                                                        if (v613 != 0xF400000000000000)
                                                        {
                                                          v614[11] = v750 + ((0x8000 - v750) >> v737);
                                                          v751 = v614[12];
                                                          if (v738 > 0xC)
                                                          {
                                                            v614[12] = v751 + ((0x8000 - v751) >> v737);
                                                            v752 = v614[13];
                                                            if (v613 != 0xF200000000000000)
                                                            {
                                                              v614[13] = v752 + ((0x8000 - v752) >> v737);
                                                              v753 = v614[14];
                                                              if (v738 > 0xE)
                                                              {
                                                                v754 = v753 + ((0x8000 - v753) >> v737);
                                                                a3 = v784;
                                                                v16 = v799;
                                                                v27 = v586;
                                                                goto LABEL_690;
                                                              }

                                                              a3 = v784;
                                                              v16 = v799;
                                                              v27 = v586;
LABEL_689:
                                                              v754 = v753 - (v753 >> v737);
LABEL_690:
                                                              v614[14] = v754;
                                                              if (v736 < 0x20)
                                                              {
                                                                LOWORD(v736) = v736 + 1;
                                                              }

                                                              v614[16] = v736;
                                                              goto LABEL_693;
                                                            }

                                                            a3 = v784;
                                                            v16 = v799;
                                                            v27 = v586;
LABEL_688:
                                                            v614[13] = v752 - (v752 >> v737);
                                                            v753 = v614[14];
                                                            goto LABEL_689;
                                                          }

                                                          a3 = v784;
                                                          v16 = v799;
                                                          v27 = v586;
LABEL_687:
                                                          v614[12] = v751 - (v751 >> v737);
                                                          v752 = v614[13];
                                                          goto LABEL_688;
                                                        }

                                                        a3 = v784;
                                                        v16 = v799;
                                                        v27 = v586;
LABEL_686:
                                                        v614[11] = v750 - (v750 >> v737);
                                                        v751 = v614[12];
                                                        goto LABEL_687;
                                                      }

                                                      a3 = v784;
                                                      v16 = v799;
                                                      v27 = v586;
LABEL_685:
                                                      v614[10] = v749 - (v749 >> v737);
                                                      v750 = v614[11];
                                                      goto LABEL_686;
                                                    }

                                                    a3 = v784;
                                                    v16 = v799;
                                                    v27 = v586;
LABEL_684:
                                                    v614[9] = v748 - (v748 >> v737);
                                                    v749 = v614[10];
                                                    goto LABEL_685;
                                                  }

                                                  a3 = v784;
                                                  v16 = v799;
                                                  v27 = v586;
LABEL_683:
                                                  v614[8] = v747 - (v747 >> v737);
                                                  v748 = v614[9];
                                                  goto LABEL_684;
                                                }

LABEL_682:
                                                v614[7] = v746 - (v746 >> v737);
                                                v747 = v614[8];
                                                goto LABEL_683;
                                              }

LABEL_681:
                                              v614[6] = v745 - (v745 >> v737);
                                              v746 = v614[7];
                                              goto LABEL_682;
                                            }

LABEL_680:
                                            v614[5] = v744 - (v744 >> v737);
                                            v745 = v614[6];
                                            goto LABEL_681;
                                          }

LABEL_679:
                                          v614[4] = v743 - (v743 >> v737);
                                          v744 = v614[5];
                                          goto LABEL_680;
                                        }

LABEL_678:
                                        v614[3] = v742 - (v742 >> v737);
                                        v743 = v614[4];
                                        goto LABEL_679;
                                      }

LABEL_677:
                                      v614[2] = v741 - (v741 >> v737);
                                      v742 = v614[3];
                                      goto LABEL_678;
                                    }
                                  }

                                  v614[1] = v740 - (v740 >> v737);
                                  v741 = v614[2];
                                  goto LABEL_677;
                                }

                                v628 = v626;
                                v629 = *(a3 + 32);
                                v630 = *(a3 + 40);
                                if (v630 >= v629)
                                {
                                  v634 = *(a3 + 40);
                                  goto LABEL_661;
                                }

                                v631 = 8 - v628;
                                if ((8 - v628) >= 7)
                                {
                                  v632 = 7;
                                }

                                else
                                {
                                  v632 = 8 - v628;
                                }

                                v633 = ((v632 ^ 0xFu) - v628) >> 3;
                                if (v633 >= ~v630 + v629)
                                {
                                  v633 = ~v630 + v629;
                                }

                                if (v633 >= 0xF)
                                {
                                  v716 = v633 + 1;
                                  v717 = (v633 + 1) & 0x3FFFFFF0;
                                  v634 = &v630->u8[v717];
                                  v718 = 0uLL;
                                  v719 = v628;
                                  v720 = v627;
                                  v721 = vdupq_n_s32(v631);
                                  v722 = vaddq_s32(v721, xmmword_273BC3230);
                                  v723 = vaddq_s32(v721, xmmword_273BC3240);
                                  v724 = vaddq_s32(v721, xmmword_273BC3250);
                                  v725 = vaddq_s32(v721, xmmword_273BC3220);
                                  v726.i64[0] = 0x8000800080008;
                                  v726.i64[1] = 0x8000800080008;
                                  v727.i64[0] = 0x7F0000007FLL;
                                  v727.i64[1] = 0x7F0000007FLL;
                                  v728 = v717;
                                  v729 = 0uLL;
                                  v730 = 0uLL;
                                  v731 = 0uLL;
                                  do
                                  {
                                    v732 = *v630++;
                                    v730 = veorq_s8(vshlq_u32(vqtbl1q_s8(v732, xmmword_273B8E7B0), v723), v730);
                                    v729 = veorq_s8(vshlq_u32(vqtbl1q_s8(v732, xmmword_273B8E7C0), v724), v729);
                                    v720 = veorq_s8(vshlq_u32(vqtbl1q_s8(v732, xmmword_273B8E7D0), v725), v720);
                                    v731 = veorq_s8(vshlq_u32(vqtbl1q_s8(v732, xmmword_273B8E7A0), v722), v731);
                                    v719 = vaddq_s16(v719, v726);
                                    v718 = vaddq_s16(v718, v726);
                                    v725 = vaddq_s32(v725, v727);
                                    v724 = vaddq_s32(v724, v727);
                                    v723 = vaddq_s32(v723, v727);
                                    v722 = vaddq_s32(v722, v727);
                                    v728 -= 16;
                                  }

                                  while (v728);
                                  v733 = v630 < v629;
                                  LOWORD(v628) = vaddvq_s16(vaddq_s16(v719, v718));
                                  v734 = veorq_s8(veorq_s8(v720, v730), veorq_s8(v729, v731));
                                  *v734.i8 = veor_s8(*v734.i8, *&vextq_s8(v734, v734, 8uLL));
                                  v627 = v734.i32[0] ^ v734.i32[1];
                                  if (v716 == v717)
                                  {
                                    goto LABEL_660;
                                  }

                                  v631 -= 8 * v717;
                                }

                                else
                                {
                                  v634 = *(a3 + 40);
                                }

                                do
                                {
                                  v735 = *v634++;
                                  v627 ^= v735 << v631;
                                  LOWORD(v628) = v628 + 8;
                                  v733 = v634 < v629;
                                  v140 = v631 >= 8;
                                  v631 -= 8;
                                }

                                while (v140 && v634 < v629);
LABEL_660:
                                if (v733)
                                {
LABEL_662:
                                  *(a3 + 48) = v627;
                                  *(a3 + 54) = v628;
                                  *(a3 + 40) = v634;
                                  goto LABEL_663;
                                }

LABEL_661:
                                *(a3 + 24) = *(a3 + 24) - v628 + 0x4000;
                                LOWORD(v628) = 0x4000;
                                goto LABEL_662;
                              }

                              v594 = v592[16];
                              v595 = (v594 >> 4) + 5;
                              v596 = *v592;
                              if (v593 <= 0)
                              {
                                *v592 = v596 - (v596 >> v595);
                                v598 = v592[1];
                              }

                              else
                              {
                                v597 = v593 << 56;
                                *v592 = v596 + ((0x8000 - v596) >> v595);
                                v598 = v592[1];
                                if (v593 << 56 != 0x100000000000000)
                                {
                                  v592[1] = v598 + ((0x8000 - v598) >> v595);
                                  v599 = v592[2];
                                  if (v593 > 2)
                                  {
                                    v592[2] = v599 + ((0x8000 - v599) >> v595);
                                    v600 = v592[3];
                                    if (v597 != 0x300000000000000)
                                    {
                                      v592[3] = v600 + ((0x8000 - v600) >> v595);
                                      v601 = v592[4];
                                      if (v593 > 4)
                                      {
                                        v592[4] = v601 + ((0x8000 - v601) >> v595);
                                        v602 = v592[5];
                                        if (v597 != 0x500000000000000)
                                        {
                                          v592[5] = v602 + ((0x8000 - v602) >> v595);
                                          v603 = v592[6];
                                          if (v593 > 6)
                                          {
                                            v592[6] = v603 + ((0x8000 - v603) >> v595);
                                            v604 = v592[7];
                                            if (v597 != 0x700000000000000)
                                            {
                                              v592[7] = v604 + ((0x8000 - v604) >> v595);
                                              v605 = v592[8];
                                              if (v593 > 8)
                                              {
                                                v592[8] = v605 + ((0x8000 - v605) >> v595);
                                                v606 = v592[9];
                                                if (v597 != 0x900000000000000)
                                                {
                                                  v592[9] = v606 + ((0x8000 - v606) >> v595);
                                                  v607 = v592[10];
                                                  if (v593 > 0xA)
                                                  {
                                                    v592[10] = v607 + ((0x8000 - v607) >> v595);
                                                    v608 = v592[11];
                                                    if (v597 != 0xB00000000000000)
                                                    {
                                                      v592[11] = v608 + ((0x8000 - v608) >> v595);
                                                      v609 = v592[12];
                                                      if (v593 > 0xC)
                                                      {
                                                        v592[12] = v609 + ((0x8000 - v609) >> v595);
                                                        v610 = v592[13];
                                                        if (v597 != 0xD00000000000000)
                                                        {
                                                          v592[13] = v610 + ((0x8000 - v610) >> v595);
                                                          v611 = v592[14];
                                                          if (v593 > 0xE)
                                                          {
                                                            v612 = v611 + ((0x8000 - v611) >> v595);
                                                            a3 = v784;
                                                            goto LABEL_519;
                                                          }

                                                          a3 = v784;
LABEL_518:
                                                          v612 = v611 - (v611 >> v595);
LABEL_519:
                                                          v592[14] = v612;
                                                          if (v594 < 0x20)
                                                          {
                                                            LOWORD(v594) = v594 + 1;
                                                          }

                                                          v592[16] = v594;
                                                          goto LABEL_522;
                                                        }

                                                        a3 = v784;
LABEL_517:
                                                        v592[13] = v610 - (v610 >> v595);
                                                        v611 = v592[14];
                                                        goto LABEL_518;
                                                      }

                                                      a3 = v784;
LABEL_516:
                                                      v592[12] = v609 - (v609 >> v595);
                                                      v610 = v592[13];
                                                      goto LABEL_517;
                                                    }

                                                    a3 = v784;
LABEL_515:
                                                    v592[11] = v608 - (v608 >> v595);
                                                    v609 = v592[12];
                                                    goto LABEL_516;
                                                  }

                                                  a3 = v784;
LABEL_514:
                                                  v592[10] = v607 - (v607 >> v595);
                                                  v608 = v592[11];
                                                  goto LABEL_515;
                                                }

                                                a3 = v784;
LABEL_513:
                                                v592[9] = v606 - (v606 >> v595);
                                                v607 = v592[10];
                                                goto LABEL_514;
                                              }

                                              a3 = v784;
LABEL_512:
                                              v592[8] = v605 - (v605 >> v595);
                                              v606 = v592[9];
                                              goto LABEL_513;
                                            }

LABEL_511:
                                            v592[7] = v604 - (v604 >> v595);
                                            v605 = v592[8];
                                            goto LABEL_512;
                                          }

LABEL_510:
                                          v592[6] = v603 - (v603 >> v595);
                                          v604 = v592[7];
                                          goto LABEL_511;
                                        }

LABEL_509:
                                        v592[5] = v602 - (v602 >> v595);
                                        v603 = v592[6];
                                        goto LABEL_510;
                                      }

LABEL_508:
                                      v592[4] = v601 - (v601 >> v595);
                                      v602 = v592[5];
                                      goto LABEL_509;
                                    }

LABEL_507:
                                    v592[3] = v600 - (v600 >> v595);
                                    v601 = v592[4];
                                    goto LABEL_508;
                                  }

LABEL_506:
                                  v592[2] = v599 - (v599 >> v595);
                                  v600 = v592[3];
                                  goto LABEL_507;
                                }
                              }

                              v592[1] = v598 - (v598 >> v595);
                              v599 = v592[2];
                              goto LABEL_506;
                            }

LABEL_485:
                            v584 = v583 - (v583 >> v575);
                            goto LABEL_486;
                          }

LABEL_484:
                          v27[10514] = v582 - (v582 >> v575);
                          v583 = v27[10515];
                          goto LABEL_485;
                        }

LABEL_483:
                        v27[10513] = v581 - (v581 >> v575);
                        v582 = v27[10514];
                        goto LABEL_484;
                      }

LABEL_482:
                      v27[10512] = v580 - (v580 >> v575);
                      v581 = v27[10513];
                      goto LABEL_483;
                    }

LABEL_481:
                    v27[10511] = v579 - (v579 >> v575);
                    v580 = v27[10512];
                    goto LABEL_482;
                  }
                }

                v27[10510] = v578 - (v578 >> v575);
                v579 = v27[10511];
                goto LABEL_481;
              }

              v538 = v536;
              v540 = *(v784 + 32);
              v539 = *(v784 + 40);
              if (v539 >= v540)
              {
                v544 = *(v784 + 40);
                goto LABEL_468;
              }

              v541 = 8 - v538;
              if ((8 - v538) >= 7)
              {
                v542 = 7;
              }

              else
              {
                v542 = 8 - v538;
              }

              v543 = ((v542 ^ 0xFu) - v538) >> 3;
              if (v543 >= ~v539 + v540)
              {
                v543 = ~v539 + v540;
              }

              if (v543 >= 0xF)
              {
                v554 = v543 + 1;
                v555 = (v543 + 1) & 0x3FFFFFF0;
                v544 = &v539->u8[v555];
                v556 = 0uLL;
                v557 = v538;
                v558 = v537;
                v559 = vdupq_n_s32(v541);
                v560 = vaddq_s32(v559, xmmword_273BC3230);
                v561 = vaddq_s32(v559, xmmword_273BC3240);
                v562 = vaddq_s32(v559, xmmword_273BC3250);
                v563 = vaddq_s32(v559, xmmword_273BC3220);
                v564.i64[0] = 0x8000800080008;
                v564.i64[1] = 0x8000800080008;
                v565.i64[0] = 0x7F0000007FLL;
                v565.i64[1] = 0x7F0000007FLL;
                v566 = v555;
                v567 = 0uLL;
                v568 = 0uLL;
                v569 = 0uLL;
                do
                {
                  v570 = *v539++;
                  v568 = veorq_s8(vshlq_u32(vqtbl1q_s8(v570, xmmword_273B8E7B0), v561), v568);
                  v567 = veorq_s8(vshlq_u32(vqtbl1q_s8(v570, xmmword_273B8E7C0), v562), v567);
                  v558 = veorq_s8(vshlq_u32(vqtbl1q_s8(v570, xmmword_273B8E7D0), v563), v558);
                  v569 = veorq_s8(vshlq_u32(vqtbl1q_s8(v570, xmmword_273B8E7A0), v560), v569);
                  v557 = vaddq_s16(v557, v564);
                  v556 = vaddq_s16(v556, v564);
                  v563 = vaddq_s32(v563, v565);
                  v562 = vaddq_s32(v562, v565);
                  v561 = vaddq_s32(v561, v565);
                  v560 = vaddq_s32(v560, v565);
                  v566 -= 16;
                }

                while (v566);
                v571 = v539 < v540;
                LOWORD(v538) = vaddvq_s16(vaddq_s16(v557, v556));
                v572 = veorq_s8(veorq_s8(v558, v568), veorq_s8(v567, v569));
                *v572.i8 = veor_s8(*v572.i8, *&vextq_s8(v572, v572, 8uLL));
                v537 = v572.i32[0] ^ v572.i32[1];
                if (v554 == v555)
                {
                  goto LABEL_467;
                }

                v541 -= 8 * v555;
              }

              else
              {
                v544 = *(v784 + 40);
              }

              do
              {
                v573 = *v544++;
                v537 ^= v573 << v541;
                LOWORD(v538) = v538 + 8;
                v571 = v544 < v540;
                v140 = v541 >= 8;
                v541 -= 8;
              }

              while (v140 && v544 < v540);
LABEL_467:
              if (v571)
              {
LABEL_469:
                *(v784 + 48) = v537;
                *(v784 + 54) = v538;
                *(v784 + 40) = v544;
                goto LABEL_470;
              }

LABEL_468:
              *(v784 + 24) = *(v784 + 24) - v538 + 0x4000;
              LOWORD(v538) = 0x4000;
              goto LABEL_469;
            }

            v476 = v474;
            v477 = *(a3 + 32);
            v478 = *(a3 + 40);
            if (v478 >= v477)
            {
              v482 = *(a3 + 40);
              goto LABEL_426;
            }

            v479 = 8 - v476;
            if ((8 - v476) >= 7)
            {
              v480 = 7;
            }

            else
            {
              v480 = 8 - v476;
            }

            v481 = ((v480 ^ 0xFu) - v476) >> 3;
            if (v481 >= ~v478 + v477)
            {
              v481 = ~v478 + v477;
            }

            if (v481 >= 0xF)
            {
              v490 = v481 + 1;
              v491 = (v481 + 1) & 0x3FFFFFF0;
              v482 = &v478->u8[v491];
              v492 = 0uLL;
              v493 = v476;
              v494 = v475;
              v495 = vdupq_n_s32(v479);
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
                v506 = *v478++;
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
              v507 = v478 < v477;
              LOWORD(v476) = vaddvq_s16(vaddq_s16(v493, v492));
              v508 = veorq_s8(veorq_s8(v494, v504), veorq_s8(v503, v505));
              *v508.i8 = veor_s8(*v508.i8, *&vextq_s8(v508, v508, 8uLL));
              v475 = v508.i32[0] ^ v508.i32[1];
              if (v490 == v491)
              {
                goto LABEL_425;
              }

              v479 -= 8 * v491;
            }

            else
            {
              v482 = *(a3 + 40);
            }

            do
            {
              v509 = *v482++;
              v475 ^= v509 << v479;
              LOWORD(v476) = v476 + 8;
              v507 = v482 < v477;
              v140 = v479 >= 8;
              v479 -= 8;
            }

            while (v140 && v482 < v477);
LABEL_425:
            if (v507)
            {
LABEL_427:
              *(a3 + 48) = v475;
              *(a3 + 54) = v476;
              *(a3 + 40) = v482;
              goto LABEL_428;
            }

LABEL_426:
            *(a3 + 24) = *(a3 + 24) - v476 + 0x4000;
            LOWORD(v476) = 0x4000;
            goto LABEL_427;
          }

          v813 = v7;
          v798 = *v158;
          *(v158 + 1) = 0;
          *(v158 + 5) = 196611;
          v158[24] = 0;
          av1_find_mv_refs(v14, v802, v158, 0, v802 + 15142, v802 + 8312, v802 + 10168, v816, v154, 0, v817);
          v814 = 0;
          v815 = 0;
          av1_find_best_ref_mvs(0, v816, &v815, &v814, 0);
          if (v815)
          {
            v422 = v815;
          }

          else
          {
            v422 = v814;
          }

          if (!v422)
          {
            v423 = *(*v12 + 32);
            v424 = *v802 - v423;
            v425 = (-32 * v423) & 0xFFE0;
            v426 = -134217728 - (v423 << 21);
            if (v424 >= *(v802 + 7840))
            {
              v422 = v425;
            }

            else
            {
              v422 = v426;
            }
          }

          if (((BYTE2(v422) | v422) & 7) != 0)
          {
LABEL_348:
            aom_internal_error(*(v802 + 10736), 7, "Invalid intrabc dv");
LABEL_349:
            v7 = v813;
            v27 = v806;
            v156 = v808;
            goto LABEL_350;
          }

          v781 = *v802;
          v779 = *(v802 + 4);
          v783 = *(v802 + 10648);
          v483 = od_ec_decode_cdf_q15(a3 + 16, v783 + 6099, 4);
          if (!*(a3 + 56))
          {
LABEL_712:
            v790 = v26;
            v794 = v12;
            v757 = v16;
            v758 = v483;
            if ((v483 & 0xFE) == 2)
            {
              mv_component_0 = read_mv_component_0(a3, v783 + 6104, 0, 0);
            }

            else
            {
              mv_component_0 = 0;
            }

            if ((v758 & 0xFFFFFFFD) == 1)
            {
              v760 = read_mv_component_0(a3, v783 + 6173, 0, 0);
            }

            else
            {
              v760 = 0;
            }

            v16 = v757;
            v761 = (v760 + (HIWORD(v422) & 0xFFF8)) & 0xFFF8;
            *(v158 + 5) = v761;
            v762 = (mv_component_0 + (v422 & 0xFFF8)) & 0xFFF8;
            *(v158 + 4) = v762;
            v26 = v790;
            v12 = v794;
            if (((v762 - 0x4000) & 0xFFF8u) > 0x8000 && (v761 - 0x4000) > 0x8000u)
            {
              v763 = *(v158 + 2);
              if ((v763 & 7) == 0 && (v763 & 0x70000) == 0)
              {
                v764 = v763 + 32 * v781;
                v765 = 32 * *(v802 + 7840);
                if (v764 >= v765)
                {
                  v766 = (v763 >> 16) + 32 * v779;
                  v767 = *(v802 + 7848);
                  if (v766 >= 32 * v767)
                  {
                    v768 = v764 + 8 * block_size_high_8[v798];
                    if (v768 <= 32 * *(v802 + 7844))
                    {
                      v769 = v766 + 8 * block_size_wide_9[v798];
                      v770 = *(v802 + 7852);
                      if (v769 <= 32 * v770)
                      {
                        if ((v771 = *(*v794 + 36), *(v802 + 12) != 1) || *(*v794 + 77) || (((0x10003uLL >> v798) & 1) == 0 || !*(v802 + 2628) || v766 >= 32 * v767 + 32) && (((0x20005uLL >> v798) & 1) == 0 || !*(v802 + 2632) || v764 >= v765 + 32))
                        {
                          v772 = v781 >> v771;
                          v773 = 4 << v771;
                          v774 = ((v768 >> 3) - 1) / (4 << v771);
                          if (v772 >= v774)
                          {
                            v775 = ((v769 >> 3) - 1) >> 6;
                            v776 = ((v770 + ~v767) >> 4) + 1;
                            v777 = (v779 >> 4) - 4;
                            if (v775 + v774 * v776 < v777 + v776 * v772)
                            {
                              v778 = v773 <= 64 ? 5 : 6;
                              if (v775 < v777 + (v772 - v774) * v778)
                              {
                                goto LABEL_349;
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

            goto LABEL_348;
          }

          v484 = v783[6103];
          v485 = (v484 >> 4) + 5;
          v486 = v783[6099];
          if (v483 <= 0)
          {
            v783[6099] = v486 - (v486 >> v485);
            v487 = v783[6100];
          }

          else
          {
            v783[6099] = v486 + ((0x8000 - v486) >> v485);
            v487 = v783[6100];
            if (v483 << 56 != 0x100000000000000)
            {
              v783[6100] = v487 + ((0x8000 - v487) >> v485);
              v488 = v783[6101];
              if (v483 > 2)
              {
                v489 = v488 + ((0x8000 - v488) >> v485);
LABEL_709:
                v783[6101] = v489;
                if (v484 < 0x20)
                {
                  LOWORD(v484) = v484 + 1;
                }

                v783[6103] = v484;
                goto LABEL_712;
              }

LABEL_708:
              v489 = v488 - (v488 >> v485);
              goto LABEL_709;
            }
          }

          v783[6100] = v487 - (v487 >> v485);
          v488 = v783[6101];
          goto LABEL_708;
        }

        v175 = v172;
        v176 = *(a3 + 32);
        v177 = *(a3 + 40);
        if (v177 >= v176)
        {
          v181 = *(a3 + 40);
          goto LABEL_330;
        }

        v178 = 8 - v172;
        if (v178 >= 7)
        {
          v179 = 7;
        }

        else
        {
          v179 = 8 - v172;
        }

        v180 = ((v179 ^ 0xFu) - v175) >> 3;
        if (v180 >= ~v177 + v176)
        {
          v180 = ~v177 + v176;
        }

        if (v180 >= 0xF)
        {
          v399 = v180 + 1;
          v400 = (v180 + 1) & 0x3FFFFFF0;
          v181 = &v177->u8[v400];
          v401 = 0uLL;
          v402 = v175;
          v403 = v173;
          v404 = vdupq_n_s32(v178);
          v405 = vaddq_s32(v404, xmmword_273BC3230);
          v406 = vaddq_s32(v404, xmmword_273BC3240);
          v407 = vaddq_s32(v404, xmmword_273BC3250);
          v408 = vaddq_s32(v404, xmmword_273BC3220);
          v409.i64[0] = 0x8000800080008;
          v409.i64[1] = 0x8000800080008;
          v410.i64[0] = 0x7F0000007FLL;
          v410.i64[1] = 0x7F0000007FLL;
          v411 = v400;
          v412 = 0uLL;
          v413 = 0uLL;
          v414 = 0uLL;
          do
          {
            v415 = *v177++;
            v413 = veorq_s8(vshlq_u32(vqtbl1q_s8(v415, xmmword_273B8E7B0), v406), v413);
            v412 = veorq_s8(vshlq_u32(vqtbl1q_s8(v415, xmmword_273B8E7C0), v407), v412);
            v403 = veorq_s8(vshlq_u32(vqtbl1q_s8(v415, xmmword_273B8E7D0), v408), v403);
            v414 = veorq_s8(vshlq_u32(vqtbl1q_s8(v415, xmmword_273B8E7A0), v405), v414);
            v402 = vaddq_s16(v402, v409);
            v401 = vaddq_s16(v401, v409);
            v408 = vaddq_s32(v408, v410);
            v407 = vaddq_s32(v407, v410);
            v406 = vaddq_s32(v406, v410);
            v405 = vaddq_s32(v405, v410);
            v411 -= 16;
          }

          while (v411);
          v416 = v177 < v176;
          LOWORD(v175) = vaddvq_s16(vaddq_s16(v402, v401));
          v154 = veorq_s8(veorq_s8(v403, v413), veorq_s8(v412, v414));
          *v154.i8 = veor_s8(*v154.i8, *&vextq_s8(v154, v154, 8uLL));
          v173 = v154.i32[0] ^ v154.i32[1];
          if (v399 == v400)
          {
            goto LABEL_329;
          }

          v178 -= 8 * v400;
        }

        else
        {
          v181 = *(a3 + 40);
        }

        do
        {
          v417 = *v181++;
          v173 ^= v417 << v178;
          LOWORD(v175) = v175 + 8;
          v416 = v181 < v176;
          v140 = v178 >= 8;
          v178 -= 8;
        }

        while (v140 && v181 < v176);
LABEL_329:
        if (v416)
        {
LABEL_331:
          *(a3 + 48) = v173;
          *(a3 + 54) = v175;
          *(a3 + 40) = v181;
          goto LABEL_332;
        }

LABEL_330:
        *(a3 + 24) = *(a3 + 24) - v175 + 0x4000;
        LOWORD(v175) = 0x4000;
        goto LABEL_331;
      }

LABEL_100:
      v16[144] = v99;
      if (!v13[168])
      {
        goto LABEL_101;
      }

      goto LABEL_115;
    }

    v116 = 8 - v113;
    if ((8 - v113) >= 7)
    {
      v117 = 7;
    }

    else
    {
      v117 = 8 - v113;
    }

    v118 = ((v117 ^ 0xFu) - v113) >> 3;
    if (v118 >= ~v115 + v114)
    {
      v118 = ~v115 + v114;
    }

    if (v118 >= 0xF)
    {
      v120 = v118 + 1;
      v121 = (v118 + 1) & 0x3FFFFFF0;
      v119 = &v115->u8[v121];
      v122 = 0uLL;
      v123 = v113;
      v124 = v108;
      v125 = vdupq_n_s32(v116);
      v126 = vaddq_s32(v125, xmmword_273BC3230);
      v127 = vaddq_s32(v125, xmmword_273BC3240);
      v128 = vaddq_s32(v125, xmmword_273BC3250);
      v129 = vaddq_s32(v125, xmmword_273BC3220);
      v130.i64[0] = 0x8000800080008;
      v130.i64[1] = 0x8000800080008;
      v131.i64[0] = 0x7F0000007FLL;
      v131.i64[1] = 0x7F0000007FLL;
      v132 = v121;
      v133 = 0uLL;
      v134 = 0uLL;
      v135 = 0uLL;
      do
      {
        v136 = *v115++;
        v134 = veorq_s8(vshlq_u32(vqtbl1q_s8(v136, xmmword_273B8E7B0), v127), v134);
        v133 = veorq_s8(vshlq_u32(vqtbl1q_s8(v136, xmmword_273B8E7C0), v128), v133);
        v124 = veorq_s8(vshlq_u32(vqtbl1q_s8(v136, xmmword_273B8E7D0), v129), v124);
        v135 = veorq_s8(vshlq_u32(vqtbl1q_s8(v136, xmmword_273B8E7A0), v126), v135);
        v123 = vaddq_s16(v123, v130);
        v122 = vaddq_s16(v122, v130);
        v129 = vaddq_s32(v129, v131);
        v128 = vaddq_s32(v128, v131);
        v127 = vaddq_s32(v127, v131);
        v126 = vaddq_s32(v126, v131);
        v132 -= 16;
      }

      while (v132);
      v137 = v115 < v114;
      LOWORD(v113) = vaddvq_s16(vaddq_s16(v123, v122));
      v138 = veorq_s8(veorq_s8(v124, v134), veorq_s8(v133, v135));
      *v138.i8 = veor_s8(*v138.i8, *&vextq_s8(v138, v138, 8uLL));
      v108 = v138.i32[0] ^ v138.i32[1];
      if (v120 == v121)
      {
        goto LABEL_97;
      }

      v116 -= 8 * v121;
    }

    else
    {
      v119 = *(a3 + 40);
    }

    do
    {
      v139 = *v119++;
      v108 ^= v139 << v116;
      LOWORD(v113) = v113 + 8;
      v137 = v119 < v114;
      v140 = v116 >= 8;
      v116 -= 8;
    }

    while (v140 && v119 < v114);
LABEL_97:
    if (v137)
    {
      goto LABEL_99;
    }

    goto LABEL_98;
  }

  v17 = (a1 + 34192);
  *(v16 + 1) = 0;
  inter_segment_id = read_inter_segment_id(a1 + 15200, a2, 1, a3, a6, a7);
  *(v16 + 167) = *(v16 + 167) & 0xFFF8 | inter_segment_id & 7;
  v21 = *(v11 + 15224);
  if (!v21)
  {
    v22 = v17;
    goto LABEL_23;
  }

  v22 = v17;
  if (*v17 && (*(v11 + 4 * (inter_segment_id & 7) + 34324) & 0x40) != 0)
  {
    goto LABEL_10;
  }

  v23 = ***(v10 + 7864);
  v24 = block_size_wide_9[v23];
  v25 = block_size_high_8[v23];
  if (v24 < v25)
  {
    v25 = v24;
  }

  if (v25 < 8 || *v17 && (*(v11 + 4 * (inter_segment_id & 7) + 34324) & 0xA0) != 0)
  {
LABEL_10:
    LOBYTE(v21) = 0;
    goto LABEL_23;
  }

  v70 = *(v10 + 7880);
  v71 = *(v10 + 7888);
  if (v71)
  {
    v71 = (*(v71 + 167) >> 6) & 1;
  }

  if (v70)
  {
    v70 = (*(v70 + 167) >> 6) & 1;
  }

  v72 = (*(v10 + 10648) + 6 * (v70 + v71) + 11852);
  v73 = *(a3 + 48);
  v74 = *(a3 + 52);
  v75 = v74 >> 8;
  v21 = -1;
  v76 = 8;
  v77 = v72;
  do
  {
    v78 = v74;
    v79 = *v77++;
    ++v21;
    v80 = v75 * (v79 >> 6);
    v76 -= 4;
    v74 = v76 + (v80 >> 1);
  }

  while (HIWORD(v73) < v74);
  v81 = v78 - (v80 >> 1) - v76;
  v82 = 15 - (__clz(v81) ^ 0x1F);
  v83 = *(a3 + 54) - v82;
  *(a3 + 54) = v83;
  v84 = ((v73 - (v74 << 16) + 1) << v82) - 1;
  *(a3 + 48) = v84;
  *(a3 + 52) = v81 << v82;
  if (v83 < 0)
  {
    v85 = v83;
    v86 = *(a3 + 32);
    v87 = *(a3 + 40);
    if (v87 >= v86)
    {
      v91 = *(a3 + 40);
      goto LABEL_282;
    }

    v88 = 8 - v85;
    if ((8 - v85) >= 7)
    {
      v89 = 7;
    }

    else
    {
      v89 = 8 - v85;
    }

    v90 = ((v89 ^ 0xFu) - v85) >> 3;
    if (v90 >= ~v87 + v86)
    {
      v90 = ~v87 + v86;
    }

    if (v90 >= 0xF)
    {
      v321 = v90 + 1;
      v322 = (v90 + 1) & 0x3FFFFFF0;
      v91 = &v87->u8[v322];
      v323 = 0uLL;
      v324 = v85;
      v325 = v84;
      v326 = vdupq_n_s32(v88);
      v327 = vaddq_s32(v326, xmmword_273BC3230);
      v328 = vaddq_s32(v326, xmmword_273BC3240);
      v329 = vaddq_s32(v326, xmmword_273BC3250);
      v330 = vaddq_s32(v326, xmmword_273BC3220);
      v331.i64[0] = 0x8000800080008;
      v331.i64[1] = 0x8000800080008;
      v332.i64[0] = 0x7F0000007FLL;
      v332.i64[1] = 0x7F0000007FLL;
      v333 = v322;
      v334 = 0uLL;
      v335 = 0uLL;
      v336 = 0uLL;
      do
      {
        v337 = *v87++;
        v335 = veorq_s8(vshlq_u32(vqtbl1q_s8(v337, xmmword_273B8E7B0), v328), v335);
        v334 = veorq_s8(vshlq_u32(vqtbl1q_s8(v337, xmmword_273B8E7C0), v329), v334);
        v325 = veorq_s8(vshlq_u32(vqtbl1q_s8(v337, xmmword_273B8E7D0), v330), v325);
        v336 = veorq_s8(vshlq_u32(vqtbl1q_s8(v337, xmmword_273B8E7A0), v327), v336);
        v324 = vaddq_s16(v324, v331);
        v323 = vaddq_s16(v323, v331);
        v330 = vaddq_s32(v330, v332);
        v329 = vaddq_s32(v329, v332);
        v328 = vaddq_s32(v328, v332);
        v327 = vaddq_s32(v327, v332);
        v333 -= 16;
      }

      while (v333);
      v338 = v87 < v86;
      LOWORD(v85) = vaddvq_s16(vaddq_s16(v324, v323));
      v339 = veorq_s8(veorq_s8(v325, v335), veorq_s8(v334, v336));
      v20 = vextq_s8(v339, v339, 8uLL);
      v19 = veor_s8(*v339.i8, *v20.i8);
      v84 = v19.i32[0] ^ v19.i32[1];
      if (v321 == v322)
      {
        goto LABEL_281;
      }

      v88 -= 8 * v322;
    }

    else
    {
      v91 = *(a3 + 40);
    }

    do
    {
      v340 = *v91++;
      v84 ^= v340 << v88;
      LOWORD(v85) = v85 + 8;
      v338 = v91 < v86;
      v140 = v88 >= 8;
      v88 -= 8;
    }

    while (v140 && v91 < v86);
LABEL_281:
    if (v338)
    {
LABEL_283:
      *(a3 + 48) = v84;
      *(a3 + 54) = v85;
      *(a3 + 40) = v91;
      goto LABEL_284;
    }

LABEL_282:
    *(a3 + 24) = *(a3 + 24) - v85 + 0x4000;
    LOWORD(v85) = 0x4000;
    goto LABEL_283;
  }

LABEL_284:
  if (*(a3 + 56))
  {
    v341 = v72[2];
    v342 = (v341 >> 4) + 4;
    v343 = *v72;
    if (v21 < 1)
    {
      v344 = v343 - (v343 >> v342);
    }

    else
    {
      v344 = v343 + ((0x8000 - v343) >> v342);
    }

    *v72 = v344;
    if (v341 < 0x20)
    {
      LOWORD(v341) = v341 + 1;
    }

    v72[2] = v341;
  }

LABEL_23:
  v46 = *(v16 + 167);
  *(v16 + 167) = ((v21 & 1) << 6) | v46 & 0xFFBF;
  if ((v21 & 1) != 0 || *v22 && (*(v11 + 4 * (v46 & 7) + 34324) & 0x40) != 0)
  {
    LOBYTE(v53) = 1;
    goto LABEL_146;
  }

  v47 = *(v10 + 7880);
  v48 = *(v10 + 7888);
  if (v48)
  {
    LODWORD(v48) = *(v48 + 144);
  }

  if (v47)
  {
    LODWORD(v47) = *(v47 + 144);
  }

  v49 = (*(v10 + 10648) + 6 * (v47 + v48) + 11870);
  v50 = *(a3 + 48);
  v51 = *(a3 + 52);
  v52 = v51 >> 8;
  v53 = -1;
  v54 = 8;
  v55 = v49;
  do
  {
    v56 = v51;
    v57 = *v55++;
    ++v53;
    v58 = v52 * (v57 >> 6);
    v54 -= 4;
    v51 = v54 + (v58 >> 1);
  }

  while (HIWORD(v50) < v51);
  v59 = v56 - (v58 >> 1) - v54;
  v60 = 15 - (__clz(v59) ^ 0x1F);
  v61 = *(a3 + 54) - v60;
  *(a3 + 54) = v61;
  v62 = ((v50 - (v51 << 16) + 1) << v60) - 1;
  *(a3 + 48) = v62;
  *(a3 + 52) = v59 << v60;
  if (v61 < 0)
  {
    v63 = v61;
    v64 = *(a3 + 32);
    v65 = *(a3 + 40);
    if (v65 >= v64)
    {
      v69 = *(a3 + 40);
      goto LABEL_137;
    }

    v66 = 8 - v63;
    if ((8 - v63) >= 7)
    {
      v67 = 7;
    }

    else
    {
      v67 = 8 - v63;
    }

    v68 = ((v67 ^ 0xFu) - v63) >> 3;
    if (v68 >= ~v65 + v64)
    {
      v68 = ~v65 + v64;
    }

    if (v68 >= 0xF)
    {
      v182 = v68 + 1;
      v183 = (v68 + 1) & 0x3FFFFFF0;
      v69 = &v65->u8[v183];
      v184 = 0uLL;
      v185 = v63;
      v186 = v62;
      v187 = vdupq_n_s32(v66);
      v188 = vaddq_s32(v187, xmmword_273BC3230);
      v189 = vaddq_s32(v187, xmmword_273BC3240);
      v190 = vaddq_s32(v187, xmmword_273BC3250);
      v191 = vaddq_s32(v187, xmmword_273BC3220);
      v192.i64[0] = 0x8000800080008;
      v192.i64[1] = 0x8000800080008;
      v193.i64[0] = 0x7F0000007FLL;
      v193.i64[1] = 0x7F0000007FLL;
      v194 = v183;
      v195 = 0uLL;
      v196 = 0uLL;
      v197 = 0uLL;
      do
      {
        v198 = *v65++;
        v196 = veorq_s8(vshlq_u32(vqtbl1q_s8(v198, xmmword_273B8E7B0), v189), v196);
        v195 = veorq_s8(vshlq_u32(vqtbl1q_s8(v198, xmmword_273B8E7C0), v190), v195);
        v186 = veorq_s8(vshlq_u32(vqtbl1q_s8(v198, xmmword_273B8E7D0), v191), v186);
        v197 = veorq_s8(vshlq_u32(vqtbl1q_s8(v198, xmmword_273B8E7A0), v188), v197);
        v185 = vaddq_s16(v185, v192);
        v184 = vaddq_s16(v184, v192);
        v191 = vaddq_s32(v191, v193);
        v190 = vaddq_s32(v190, v193);
        v189 = vaddq_s32(v189, v193);
        v188 = vaddq_s32(v188, v193);
        v194 -= 16;
      }

      while (v194);
      v199 = v65 < v64;
      LOWORD(v63) = vaddvq_s16(vaddq_s16(v185, v184));
      v200 = veorq_s8(veorq_s8(v186, v196), veorq_s8(v195, v197));
      v20 = vextq_s8(v200, v200, 8uLL);
      v19 = veor_s8(*v200.i8, *v20.i8);
      v62 = v19.i32[0] ^ v19.i32[1];
      if (v182 == v183)
      {
        goto LABEL_136;
      }

      v66 -= 8 * v183;
    }

    else
    {
      v69 = *(a3 + 40);
    }

    do
    {
      v201 = *v69++;
      v62 ^= v201 << v66;
      LOWORD(v63) = v63 + 8;
      v199 = v69 < v64;
      v140 = v66 >= 8;
      v66 -= 8;
    }

    while (v140 && v69 < v64);
LABEL_136:
    if (v199)
    {
LABEL_138:
      *(a3 + 48) = v62;
      *(a3 + 54) = v63;
      *(a3 + 40) = v69;
      goto LABEL_139;
    }

LABEL_137:
    *(a3 + 24) = *(a3 + 24) - v63 + 0x4000;
    LOWORD(v63) = 0x4000;
    goto LABEL_138;
  }

LABEL_139:
  if (*(a3 + 56))
  {
    v202 = v49[2];
    v203 = (v202 >> 4) + 4;
    v204 = *v49;
    if (v53 < 1)
    {
      v205 = v204 - (v204 >> v203);
    }

    else
    {
      v205 = v204 + ((0x8000 - v204) >> v203);
    }

    *v49 = v205;
    if (v202 < 0x20)
    {
      LOWORD(v202) = v202 + 1;
    }

    v49[2] = v202;
  }

LABEL_146:
  v16[144] = v53;
  if (!v22[168])
  {
    *(v16 + 167) = *(v16 + 167) & 0xFFF8 | read_inter_segment_id(v14, v10, 0, a3, *&v19, v20) & 7;
  }

  read_cdef(v14, a3, v10);
  read_delta_q_params(v14, v10, a3);
  v206 = *(v16 + 167);
  if ((v206 & 0x40) != 0)
  {
    v214 = 0;
    goto LABEL_202;
  }

  if (!*v17)
  {
LABEL_152:
    v209 = *(v10 + 7888);
    v210 = *(v10 + 7880);
    v211 = *(v10 + 7872);
    if (v211 != 1 || !*(v10 + 7873))
    {
      if ((v211 & 1) == 0 && !*(v10 + 7873))
      {
        goto LABEL_165;
      }

      if (*(v10 + 7872))
      {
        v210 = *(v10 + 7888);
      }

      if ((*(v210 + 167) & 0x80) == 0)
      {
        v216 = 2 * (*(v210 + 16) < 1);
      }

      else
      {
LABEL_165:
        v216 = 0;
      }

LABEL_172:
      v218 = (*(v10 + 10648) + 6 * v216 + 11888);
      v219 = *(a3 + 48);
      v220 = *(a3 + 52);
      v221 = v220 >> 8;
      v215 = -1;
      v222 = 8;
      v223 = v218;
      do
      {
        v224 = v220;
        v225 = *v223++;
        ++v215;
        v226 = v221 * (v225 >> 6);
        v222 -= 4;
        v220 = v222 + (v226 >> 1);
      }

      while (HIWORD(v219) < v220);
      v227 = v224 - (v226 >> 1) - v222;
      v228 = 15 - (__clz(v227) ^ 0x1F);
      v229 = *(a3 + 54) - v228;
      *(a3 + 54) = v229;
      v230 = ((v219 - (v220 << 16) + 1) << v228) - 1;
      *(a3 + 48) = v230;
      *(a3 + 52) = v227 << v228;
      if ((v229 & 0x8000) == 0)
      {
LABEL_194:
        if (*(a3 + 56))
        {
          v258 = v218[2];
          v259 = (v258 >> 4) + 4;
          v260 = *v218;
          if (v215 < 1)
          {
            v261 = v260 - (v260 >> v259);
          }

          else
          {
            v261 = v260 + ((0x8000 - v260) >> v259);
          }

          *v218 = v261;
          if (v258 < 0x20)
          {
            LOWORD(v258) = v258 + 1;
          }

          v218[2] = v258;
        }

        goto LABEL_201;
      }

      v231 = v229;
      v232 = *(a3 + 32);
      v233 = *(a3 + 40);
      if (v233 >= v232)
      {
        v237 = *(a3 + 40);
        goto LABEL_192;
      }

      v234 = 8 - v231;
      if ((8 - v231) >= 7)
      {
        v235 = 7;
      }

      else
      {
        v235 = 8 - v231;
      }

      v236 = ((v235 ^ 0xFu) - v231) >> 3;
      if (v236 >= ~v233 + v232)
      {
        v236 = ~v233 + v232;
      }

      if (v236 >= 0xF)
      {
        v238 = v236 + 1;
        v239 = (v236 + 1) & 0x3FFFFFF0;
        v237 = &v233->u8[v239];
        v240 = 0uLL;
        v241 = v231;
        v242 = v230;
        v243 = vdupq_n_s32(v234);
        v244 = vaddq_s32(v243, xmmword_273BC3230);
        v245 = vaddq_s32(v243, xmmword_273BC3240);
        v246 = vaddq_s32(v243, xmmword_273BC3250);
        v247 = vaddq_s32(v243, xmmword_273BC3220);
        v248.i64[0] = 0x8000800080008;
        v248.i64[1] = 0x8000800080008;
        v249.i64[0] = 0x7F0000007FLL;
        v249.i64[1] = 0x7F0000007FLL;
        v250 = v239;
        v251 = 0uLL;
        v252 = 0uLL;
        v253 = 0uLL;
        do
        {
          v254 = *v233++;
          v252 = veorq_s8(vshlq_u32(vqtbl1q_s8(v254, xmmword_273B8E7B0), v245), v252);
          v251 = veorq_s8(vshlq_u32(vqtbl1q_s8(v254, xmmword_273B8E7C0), v246), v251);
          v242 = veorq_s8(vshlq_u32(vqtbl1q_s8(v254, xmmword_273B8E7D0), v247), v242);
          v253 = veorq_s8(vshlq_u32(vqtbl1q_s8(v254, xmmword_273B8E7A0), v244), v253);
          v241 = vaddq_s16(v241, v248);
          v240 = vaddq_s16(v240, v248);
          v247 = vaddq_s32(v247, v249);
          v246 = vaddq_s32(v246, v249);
          v245 = vaddq_s32(v245, v249);
          v244 = vaddq_s32(v244, v249);
          v250 -= 16;
        }

        while (v250);
        v255 = v233 < v232;
        LOWORD(v231) = vaddvq_s16(vaddq_s16(v241, v240));
        v256 = veorq_s8(veorq_s8(v242, v252), veorq_s8(v251, v253));
        *v256.i8 = veor_s8(*v256.i8, *&vextq_s8(v256, v256, 8uLL));
        v230 = v256.i32[0] ^ v256.i32[1];
        if (v238 == v239)
        {
          goto LABEL_191;
        }

        v234 -= 8 * v239;
      }

      else
      {
        v237 = *(a3 + 40);
      }

      do
      {
        v257 = *v237++;
        v230 ^= v257 << v234;
        LOWORD(v231) = v231 + 8;
        v255 = v237 < v232;
        v140 = v234 >= 8;
        v234 -= 8;
      }

      while (v140 && v237 < v232);
LABEL_191:
      if (v255)
      {
LABEL_193:
        *(a3 + 48) = v230;
        *(a3 + 54) = v231;
        *(a3 + 40) = v237;
        goto LABEL_194;
      }

LABEL_192:
      *(a3 + 24) = *(a3 + 24) - v231 + 0x4000;
      LOWORD(v231) = 0x4000;
      goto LABEL_193;
    }

    if ((*(v209 + 167) & 0x80) != 0)
    {
      v212 = 0;
      if ((*(v210 + 167) & 0x80) != 0)
      {
        goto LABEL_156;
      }
    }

    else
    {
      v212 = *(v209 + 16) < 1;
      if ((*(v210 + 167) & 0x80) != 0)
      {
LABEL_156:
        v213 = 0;
        goto LABEL_169;
      }
    }

    v213 = *(v210 + 16) < 1;
LABEL_169:
    v217 = v213 || v212;
    v273 = !v213 || !v212;
    v216 = 3;
    if (v273)
    {
      v216 = v217;
    }

    goto LABEL_172;
  }

  v207 = v206 & 7;
  v208 = *(v11 + 4 * v207 + 34324);
  if ((v208 & 0x20) != 0)
  {
    v215 = *(v11 + 16 * v207 + 34206) > 0;
  }

  else
  {
    if ((v208 & 0x80) == 0)
    {
      goto LABEL_152;
    }

    v215 = 1;
  }

LABEL_201:
  v214 = v215 == 0;
LABEL_202:
  *(v16 + 1) = *(v10 + 10724);
  v262 = *v10;
  *(v10 + 8128) = *(v12[82] + 8 * *(v10 + 7856)) + *(v10 + 4);
  *(v10 + 8136) = v10 + 8144 + (v262 & 0x1F);
  if (v214)
  {
    v812 = v7;
    v263 = *v16;
    *(v16 + 8) = -256;
    v264 = *(v10 + 10648);
    v265 = read_intra_mode(a3, (v264 + 28 * size_group_lookup_2[v263] + 12726));
    v266 = 0;
    v16[2] = v265;
    if (v263 >= 3 && v265 - 9 >= 0xFFFFFFF8)
    {
      v266 = read_angle_delta(a3, (v264 + 16 * v265 + 14870));
    }

    v16[88] = v266;
    v267 = *(*v12 + 77);
    if (*(*v12 + 77) || *(v10 + 12) != 1)
    {
      v16[3] = 0;
      v7 = v812;
      if (v267)
      {
        goto LABEL_212;
      }

LABEL_646:
      if (*(v10 + 12) != 1)
      {
        *(v10 + 15024) = 1;
        *(v16 + 71) = 0;
        if (!v14[495])
        {
          goto LABEL_215;
        }

        goto LABEL_213;
      }

      v715 = **(v10 + 7864);
      if ((*(v715 + 167) & 0x80) == 0 && *(v715 + 16) <= 0)
      {
        *(v10 + 15024) = *(v715 + 3) == 13;
        *(v16 + 71) = 0;
        if (!v14[495])
        {
          goto LABEL_215;
        }

        goto LABEL_213;
      }

LABEL_212:
      *(v10 + 15024) = 0;
      *(v16 + 71) = 0;
      if (!v14[495])
      {
        goto LABEL_215;
      }

LABEL_213:
      if (v263 > 0xF || ((1 << v263) & 0xE007) == 0)
      {
        read_palette_mode_info(v14, v10, a3);
        v271 = **(v10 + 7864);
        if (!v271[2])
        {
          goto LABEL_216;
        }

        goto LABEL_230;
      }

LABEL_215:
      v271 = **(v10 + 7864);
      if (!v271[2])
      {
LABEL_216:
        if (!v271[142])
        {
          v272 = *v271;
          v273 = v272 == 255 || *(*v12 + 60) == 0;
          if (!v273 && ((0x1F07FFuLL >> v272) & 1) != 0 && ((0x2F0BFFuLL >> v272) & 1) != 0)
          {
            v274 = a3;
            v275 = v11;
            v276 = (*(v10 + 10648) + 6 * *v271 + 12562);
            v277 = od_ec_decode_cdf_q15(v274 + 16, v276, 2);
            if (*(v274 + 56))
            {
              v278 = v276[2];
              v279 = (v278 >> 4) + 4;
              v280 = v277;
              v281 = *v276;
              v282 = v281 - (v281 >> v279);
              v283 = v281 + ((0x8000 - v281) >> v279);
              if (v277 < 1)
              {
                LOWORD(v283) = v282;
              }

              *v276 = v283;
              if (v278 < 0x20)
              {
                LOWORD(v278) = v278 + 1;
              }

              v276[2] = v278;
            }

            else
            {
              v280 = v277;
            }

            v11 = v275;
            v271[91] = v280;
            if (!v280)
            {
              goto LABEL_231;
            }

            v545 = *(v10 + 10648);
            v546 = od_ec_decode_cdf_q15(v274 + 16, v545 + 6347, 5);
            if (!*(v274 + 56))
            {
              goto LABEL_742;
            }

            v547 = v545[6352];
            v548 = (v547 >> 4) + 5;
            v549 = v545[6347];
            if (v546 <= 0)
            {
              v545[6347] = v549 - (v549 >> v548);
              v550 = v545[6348];
            }

            else
            {
              v545[6347] = v549 + ((0x8000 - v549) >> v548);
              v550 = v545[6348];
              if (v546 << 56 != 0x100000000000000)
              {
                v545[6348] = v550 + ((0x8000 - v550) >> v548);
                v551 = v545[6349];
                if (v546 > 2)
                {
                  v545[6349] = v551 + ((0x8000 - v551) >> v548);
                  v552 = v545[6350];
                  if (v546 << 56 != 0x300000000000000)
                  {
                    v553 = v552 + ((0x8000 - v552) >> v548);
LABEL_739:
                    v545[6350] = v553;
                    if (v547 < 0x20)
                    {
                      LOWORD(v547) = v547 + 1;
                    }

                    v545[6352] = v547;
LABEL_742:
                    v271[90] = v546;
                    goto LABEL_231;
                  }

LABEL_738:
                  v553 = v552 - (v552 >> v548);
                  goto LABEL_739;
                }

LABEL_737:
                v545[6349] = v551 - (v551 >> v548);
                v552 = v545[6350];
                goto LABEL_738;
              }
            }

            v545[6348] = v550 - (v550 >> v548);
            v551 = v545[6349];
            goto LABEL_737;
          }
        }
      }

LABEL_230:
      v271[91] = 0;
      goto LABEL_231;
    }

    v268 = **(v10 + 7864);
    v269 = *v268;
    if (*(v10 + 4 * (*(v268 + 167) & 7) + 10692))
    {
      v270 = av1_ss_size_lookup[4 * v269 + 2 * *(v10 + 2628) + *(v10 + 2632)] == 0;
    }

    else
    {
      v270 = (0x1F07FFuLL >> v269) & (0x2F0BFFuLL >> v269);
    }

    v298 = v264 + 390 * (v270 & 1) + 30 * v16[2] + 12838;
    if (v270)
    {
      v299 = 14;
    }

    else
    {
      v299 = 13;
    }

    v300 = *(a3 + 48);
    v301 = *(a3 + 52);
    v302 = v301 >> 8;
    v303 = 4 * v299;
    v304 = -1;
    v305 = 0xFF00000000000000;
    v306 = v298;
    do
    {
      v307 = v301;
      ++v304;
      v308 = *v306++;
      v309 = v302 * (v308 >> 6);
      v303 -= 4;
      v301 = v303 + (v309 >> 1);
      v305 += 0x100000000000000;
    }

    while (HIWORD(v300) < v301);
    v310 = v307 - (v309 >> 1) - v303;
    v311 = 15 - (__clz(v310) ^ 0x1F);
    v312 = *(a3 + 54) - v311;
    *(a3 + 54) = v312;
    v313 = ((v300 - (v301 << 16) + 1) << v311) - 1;
    *(a3 + 48) = v313;
    *(a3 + 52) = v310 << v311;
    if ((v312 & 0x8000) == 0)
    {
LABEL_301:
      v365 = *(a3 + 56);
      if (*(a3 + 56))
      {
        v366 = 0;
        v367 = *(v298 + 2 * v299);
        v368 = (v367 >> 4) + 5;
        v369 = v305 >> 56;
        do
        {
          v370 = *(v298 + 2 * v366);
          v371 = v370 - (v370 >> v368);
          v372 = v370 + ((0x8000 - v370) >> v368);
          if (v366 >= v369)
          {
            LOWORD(v372) = v371;
          }

          *(v298 + 2 * v366++) = v372;
        }

        while (v299 - 1 != v366);
        v373 = *(v298 + 2 * v299);
        if (v367 < 0x20)
        {
          ++v373;
        }

        *(v298 + 2 * v299) = v373;
      }

      v16[3] = v304;
      if (v304 != 13)
      {
LABEL_642:
        v713 = 0;
        if (v263 >= 3)
        {
          v714 = get_uv_mode_uv2y_1[v304];
          if ((v714 - 9) >= 0xFFFFFFF8)
          {
            v713 = read_angle_delta(a3, (v264 + 16 * v714 + 14870));
          }
        }

        v16[89] = v713;
        v7 = v812;
        if (*(*v12 + 77))
        {
          goto LABEL_212;
        }

        goto LABEL_646;
      }

      v792 = v12;
      v797 = v16;
      v374 = *(v10 + 10648);
      v375 = v374 + 10509;
      v376 = *(a3 + 52);
      v377 = v376 >> 8;
      v378 = -1;
      v379 = 32;
      v380 = 0x600000000000000;
      v381 = 0x400000000000000;
      v382 = 0x200000000000000;
      v383 = -16777216;
      v384 = 0xFF00000000000000;
      do
      {
        v385 = v376;
        ++v378;
        v386 = *v375++;
        v387 = v377 * (v386 >> 6);
        v379 -= 4;
        v376 = v379 + (v387 >> 1);
        v380 -= 0x100000000000000;
        v381 -= 0x100000000000000;
        v382 -= 0x100000000000000;
        v384 += 0x100000000000000;
        v383 += 0x1000000;
      }

      while (HIWORD(v313) < v376);
      v388 = v385 - (v387 >> 1) - v379;
      v389 = 15 - (__clz(v388) ^ 0x1F);
      v390 = *(a3 + 54) - v389;
      *(a3 + 54) = v390;
      v391 = ((v313 - (v376 << 16) + 1) << v389) - 1;
      *(a3 + 48) = v391;
      *(a3 + 52) = v388 << v389;
      if ((v390 & 0x8000) == 0)
      {
LABEL_547:
        if (!v365)
        {
          goto LABEL_566;
        }

        v655 = v374[10517];
        v656 = (v655 >> 4) + 5;
        v657 = v384 >> 56;
        v658 = v374[10509];
        if (v657 <= 0)
        {
          v374[10509] = v658 - (v658 >> v656);
          v659 = v374[10510];
        }

        else
        {
          v374[10509] = v658 + ((0x8000 - v658) >> v656);
          v659 = v374[10510];
          if (v382)
          {
            v374[10510] = v659 + ((0x8000 - v659) >> v656);
            v660 = v374[10511];
            if (v657 > 2)
            {
              v374[10511] = v660 + ((0x8000 - v660) >> v656);
              v661 = v374[10512];
              if (v381)
              {
                v374[10512] = v661 + ((0x8000 - v661) >> v656);
                v662 = v374[10513];
                if (v657 > 4)
                {
                  v374[10513] = v662 + ((0x8000 - v662) >> v656);
                  v663 = v374[10514];
                  if (v380)
                  {
                    v374[10514] = v663 + ((0x8000 - v663) >> v656);
                    v664 = v374[10515];
                    if (v657 > 6)
                    {
                      v665 = v664 + ((0x8000 - v664) >> v656);
LABEL_563:
                      v374[10515] = v665;
                      if (v655 < 0x20)
                      {
                        LOWORD(v655) = v655 + 1;
                      }

                      v374[10517] = v655;
LABEL_566:
                      v804 = v10;
                      v666 = (v383 >> 24) + 1;
                      v667 = (11 * v666) >> 5;
                      if ((11 * v666) < 0x20)
                      {
                        v668 = 0;
                        goto LABEL_604;
                      }

                      v807 = (v383 >> 24) + 1;
                      v809 = (11 * v666) >> 5;
                      v669 = &v374[17 * (v383 >> 24) + 10484];
                      v670 = od_ec_decode_cdf_q15(a3 + 16, v669, 16);
                      if (!*(a3 + 56))
                      {
LABEL_603:
                        v668 = 16 * v670;
                        v667 = v809;
                        v666 = v807;
LABEL_604:
                        v690 = -3 * v667 + v666;
                        if (!v690)
                        {
LABEL_641:
                          v10 = v804;
                          v797[92] = v378;
                          v16 = v797;
                          v797[93] = v668;
                          LOBYTE(v304) = v797[3];
                          v12 = v792;
                          goto LABEL_642;
                        }

                        v691 = v668;
                        v692 = &v374[51 * v690 + 10467 + 17 * v667];
                        v693 = od_ec_decode_cdf_q15(a3 + 16, v692, 16);
                        if (!*(a3 + 56))
                        {
LABEL_640:
                          v668 = v691 + v693;
                          goto LABEL_641;
                        }

                        v694 = v692[16];
                        v695 = (v694 >> 4) + 5;
                        v696 = *v692;
                        if (v693 <= 0)
                        {
                          *v692 = v696 - (v696 >> v695);
                          v698 = v692[1];
                        }

                        else
                        {
                          v697 = v693 << 56;
                          *v692 = v696 + ((0x8000 - v696) >> v695);
                          v698 = v692[1];
                          if (v693 << 56 != 0x100000000000000)
                          {
                            v692[1] = v698 + ((0x8000 - v698) >> v695);
                            v699 = v692[2];
                            if (v693 > 2)
                            {
                              v692[2] = v699 + ((0x8000 - v699) >> v695);
                              v700 = v692[3];
                              if (v697 != 0x300000000000000)
                              {
                                v692[3] = v700 + ((0x8000 - v700) >> v695);
                                v701 = v692[4];
                                if (v693 > 4)
                                {
                                  v692[4] = v701 + ((0x8000 - v701) >> v695);
                                  v702 = v692[5];
                                  if (v697 != 0x500000000000000)
                                  {
                                    v692[5] = v702 + ((0x8000 - v702) >> v695);
                                    v703 = v692[6];
                                    if (v693 > 6)
                                    {
                                      v692[6] = v703 + ((0x8000 - v703) >> v695);
                                      v704 = v692[7];
                                      if (v697 != 0x700000000000000)
                                      {
                                        v692[7] = v704 + ((0x8000 - v704) >> v695);
                                        v705 = v692[8];
                                        if (v693 > 8)
                                        {
                                          v692[8] = v705 + ((0x8000 - v705) >> v695);
                                          v706 = v692[9];
                                          if (v697 != 0x900000000000000)
                                          {
                                            v692[9] = v706 + ((0x8000 - v706) >> v695);
                                            v707 = v692[10];
                                            if (v693 > 0xA)
                                            {
                                              v692[10] = v707 + ((0x8000 - v707) >> v695);
                                              v708 = v692[11];
                                              if (v697 != 0xB00000000000000)
                                              {
                                                v692[11] = v708 + ((0x8000 - v708) >> v695);
                                                v709 = v692[12];
                                                if (v693 > 0xC)
                                                {
                                                  v692[12] = v709 + ((0x8000 - v709) >> v695);
                                                  v710 = v692[13];
                                                  if (v697 != 0xD00000000000000)
                                                  {
                                                    v692[13] = v710 + ((0x8000 - v710) >> v695);
                                                    v711 = v692[14];
                                                    if (v693 > 0xE)
                                                    {
                                                      v712 = v711 + ((0x8000 - v711) >> v695);
LABEL_637:
                                                      v692[14] = v712;
                                                      if (v694 < 0x20)
                                                      {
                                                        LOWORD(v694) = v694 + 1;
                                                      }

                                                      v692[16] = v694;
                                                      goto LABEL_640;
                                                    }

LABEL_636:
                                                    v712 = v711 - (v711 >> v695);
                                                    goto LABEL_637;
                                                  }

LABEL_635:
                                                  v692[13] = v710 - (v710 >> v695);
                                                  v711 = v692[14];
                                                  goto LABEL_636;
                                                }

LABEL_634:
                                                v692[12] = v709 - (v709 >> v695);
                                                v710 = v692[13];
                                                goto LABEL_635;
                                              }

LABEL_633:
                                              v692[11] = v708 - (v708 >> v695);
                                              v709 = v692[12];
                                              goto LABEL_634;
                                            }

LABEL_632:
                                            v692[10] = v707 - (v707 >> v695);
                                            v708 = v692[11];
                                            goto LABEL_633;
                                          }

LABEL_631:
                                          v692[9] = v706 - (v706 >> v695);
                                          v707 = v692[10];
                                          goto LABEL_632;
                                        }

LABEL_630:
                                        v692[8] = v705 - (v705 >> v695);
                                        v706 = v692[9];
                                        goto LABEL_631;
                                      }

LABEL_629:
                                      v692[7] = v704 - (v704 >> v695);
                                      v705 = v692[8];
                                      goto LABEL_630;
                                    }

LABEL_628:
                                    v692[6] = v703 - (v703 >> v695);
                                    v704 = v692[7];
                                    goto LABEL_629;
                                  }

LABEL_627:
                                  v692[5] = v702 - (v702 >> v695);
                                  v703 = v692[6];
                                  goto LABEL_628;
                                }

LABEL_626:
                                v692[4] = v701 - (v701 >> v695);
                                v702 = v692[5];
                                goto LABEL_627;
                              }

LABEL_625:
                              v692[3] = v700 - (v700 >> v695);
                              v701 = v692[4];
                              goto LABEL_626;
                            }

LABEL_624:
                            v692[2] = v699 - (v699 >> v695);
                            v700 = v692[3];
                            goto LABEL_625;
                          }
                        }

                        v692[1] = v698 - (v698 >> v695);
                        v699 = v692[2];
                        goto LABEL_624;
                      }

                      v671 = v669[16];
                      v672 = (v671 >> 4) + 5;
                      v673 = *v669;
                      if (v670 <= 0)
                      {
                        *v669 = v673 - (v673 >> v672);
                        v675 = v669[1];
                      }

                      else
                      {
                        v674 = v670 << 56;
                        *v669 = v673 + ((0x8000 - v673) >> v672);
                        v675 = v669[1];
                        if (v670 << 56 != 0x100000000000000)
                        {
                          v669[1] = v675 + ((0x8000 - v675) >> v672);
                          v676 = v669[2];
                          if (v670 > 2)
                          {
                            v669[2] = v676 + ((0x8000 - v676) >> v672);
                            v677 = v669[3];
                            if (v674 != 0x300000000000000)
                            {
                              v669[3] = v677 + ((0x8000 - v677) >> v672);
                              v678 = v669[4];
                              if (v670 > 4)
                              {
                                v669[4] = v678 + ((0x8000 - v678) >> v672);
                                v679 = v669[5];
                                if (v674 != 0x500000000000000)
                                {
                                  v669[5] = v679 + ((0x8000 - v679) >> v672);
                                  v680 = v669[6];
                                  if (v670 > 6)
                                  {
                                    v669[6] = v680 + ((0x8000 - v680) >> v672);
                                    v681 = v669[7];
                                    if (v674 != 0x700000000000000)
                                    {
                                      v669[7] = v681 + ((0x8000 - v681) >> v672);
                                      v682 = v669[8];
                                      if (v670 > 8)
                                      {
                                        v669[8] = v682 + ((0x8000 - v682) >> v672);
                                        v683 = v669[9];
                                        if (v674 != 0x900000000000000)
                                        {
                                          v669[9] = v683 + ((0x8000 - v683) >> v672);
                                          v684 = v669[10];
                                          if (v670 > 0xA)
                                          {
                                            v669[10] = v684 + ((0x8000 - v684) >> v672);
                                            v685 = v669[11];
                                            if (v674 != 0xB00000000000000)
                                            {
                                              v669[11] = v685 + ((0x8000 - v685) >> v672);
                                              v686 = v669[12];
                                              if (v670 > 0xC)
                                              {
                                                v669[12] = v686 + ((0x8000 - v686) >> v672);
                                                v687 = v669[13];
                                                if (v674 != 0xD00000000000000)
                                                {
                                                  v669[13] = v687 + ((0x8000 - v687) >> v672);
                                                  v688 = v669[14];
                                                  if (v670 > 0xE)
                                                  {
                                                    v689 = v688 + ((0x8000 - v688) >> v672);
LABEL_600:
                                                    v669[14] = v689;
                                                    if (v671 < 0x20)
                                                    {
                                                      LOWORD(v671) = v671 + 1;
                                                    }

                                                    v669[16] = v671;
                                                    goto LABEL_603;
                                                  }

LABEL_599:
                                                  v689 = v688 - (v688 >> v672);
                                                  goto LABEL_600;
                                                }

LABEL_598:
                                                v669[13] = v687 - (v687 >> v672);
                                                v688 = v669[14];
                                                goto LABEL_599;
                                              }

LABEL_597:
                                              v669[12] = v686 - (v686 >> v672);
                                              v687 = v669[13];
                                              goto LABEL_598;
                                            }

LABEL_596:
                                            v669[11] = v685 - (v685 >> v672);
                                            v686 = v669[12];
                                            goto LABEL_597;
                                          }

LABEL_595:
                                          v669[10] = v684 - (v684 >> v672);
                                          v685 = v669[11];
                                          goto LABEL_596;
                                        }

LABEL_594:
                                        v669[9] = v683 - (v683 >> v672);
                                        v684 = v669[10];
                                        goto LABEL_595;
                                      }

LABEL_593:
                                      v669[8] = v682 - (v682 >> v672);
                                      v683 = v669[9];
                                      goto LABEL_594;
                                    }

LABEL_592:
                                    v669[7] = v681 - (v681 >> v672);
                                    v682 = v669[8];
                                    goto LABEL_593;
                                  }

LABEL_591:
                                  v669[6] = v680 - (v680 >> v672);
                                  v681 = v669[7];
                                  goto LABEL_592;
                                }

LABEL_590:
                                v669[5] = v679 - (v679 >> v672);
                                v680 = v669[6];
                                goto LABEL_591;
                              }

LABEL_589:
                              v669[4] = v678 - (v678 >> v672);
                              v679 = v669[5];
                              goto LABEL_590;
                            }

LABEL_588:
                            v669[3] = v677 - (v677 >> v672);
                            v678 = v669[4];
                            goto LABEL_589;
                          }

LABEL_587:
                          v669[2] = v676 - (v676 >> v672);
                          v677 = v669[3];
                          goto LABEL_588;
                        }
                      }

                      v669[1] = v675 - (v675 >> v672);
                      v676 = v669[2];
                      goto LABEL_587;
                    }

LABEL_562:
                    v665 = v664 - (v664 >> v656);
                    goto LABEL_563;
                  }

LABEL_561:
                  v374[10514] = v663 - (v663 >> v656);
                  v664 = v374[10515];
                  goto LABEL_562;
                }

LABEL_560:
                v374[10513] = v662 - (v662 >> v656);
                v663 = v374[10514];
                goto LABEL_561;
              }

LABEL_559:
              v374[10512] = v661 - (v661 >> v656);
              v662 = v374[10513];
              goto LABEL_560;
            }

LABEL_558:
            v374[10511] = v660 - (v660 >> v656);
            v661 = v374[10512];
            goto LABEL_559;
          }
        }

        v374[10510] = v659 - (v659 >> v656);
        v660 = v374[10511];
        goto LABEL_558;
      }

      v392 = v390;
      v394 = *(a3 + 32);
      v393 = *(a3 + 40);
      if (v393 >= v394)
      {
        v398 = *(a3 + 40);
        goto LABEL_545;
      }

      v395 = 8 - v392;
      if ((8 - v392) >= 7)
      {
        v396 = 7;
      }

      else
      {
        v396 = 8 - v392;
      }

      v397 = ((v396 ^ 0xFu) - v392) >> 3;
      if (v397 >= ~v393 + v394)
      {
        v397 = ~v393 + v394;
      }

      if (v397 >= 0xF)
      {
        v635 = v397 + 1;
        v636 = (v397 + 1) & 0x3FFFFFF0;
        v398 = &v393->u8[v636];
        v637 = 0uLL;
        v638 = v392;
        v639 = v391;
        v640 = vdupq_n_s32(v395);
        v641 = vaddq_s32(v640, xmmword_273BC3230);
        v642 = vaddq_s32(v640, xmmword_273BC3240);
        v643 = vaddq_s32(v640, xmmword_273BC3250);
        v644 = vaddq_s32(v640, xmmword_273BC3220);
        v645.i64[0] = 0x8000800080008;
        v645.i64[1] = 0x8000800080008;
        v646.i64[0] = 0x7F0000007FLL;
        v646.i64[1] = 0x7F0000007FLL;
        v647 = v636;
        v648 = 0uLL;
        v649 = 0uLL;
        v650 = 0uLL;
        do
        {
          v651 = *v393++;
          v649 = veorq_s8(vshlq_u32(vqtbl1q_s8(v651, xmmword_273B8E7B0), v642), v649);
          v648 = veorq_s8(vshlq_u32(vqtbl1q_s8(v651, xmmword_273B8E7C0), v643), v648);
          v639 = veorq_s8(vshlq_u32(vqtbl1q_s8(v651, xmmword_273B8E7D0), v644), v639);
          v650 = veorq_s8(vshlq_u32(vqtbl1q_s8(v651, xmmword_273B8E7A0), v641), v650);
          v638 = vaddq_s16(v638, v645);
          v637 = vaddq_s16(v637, v645);
          v644 = vaddq_s32(v644, v646);
          v643 = vaddq_s32(v643, v646);
          v642 = vaddq_s32(v642, v646);
          v641 = vaddq_s32(v641, v646);
          v647 -= 16;
        }

        while (v647);
        v652 = v393 < v394;
        LOWORD(v392) = vaddvq_s16(vaddq_s16(v638, v637));
        v653 = veorq_s8(veorq_s8(v639, v649), veorq_s8(v648, v650));
        *v653.i8 = veor_s8(*v653.i8, *&vextq_s8(v653, v653, 8uLL));
        v391 = v653.i32[0] ^ v653.i32[1];
        if (v635 == v636)
        {
          goto LABEL_544;
        }

        v395 -= 8 * v636;
      }

      else
      {
        v398 = *(a3 + 40);
      }

      do
      {
        v654 = *v398++;
        v391 ^= v654 << v395;
        LOWORD(v392) = v392 + 8;
        v652 = v398 < v394;
        v140 = v395 >= 8;
        v395 -= 8;
      }

      while (v140 && v398 < v394);
LABEL_544:
      if (v652)
      {
LABEL_546:
        *(a3 + 48) = v391;
        *(a3 + 54) = v392;
        *(a3 + 40) = v398;
        goto LABEL_547;
      }

LABEL_545:
      *(a3 + 24) = *(a3 + 24) - v392 + 0x4000;
      LOWORD(v392) = 0x4000;
      goto LABEL_546;
    }

    v314 = v312;
    v315 = *(a3 + 32);
    v316 = *(a3 + 40);
    if (v316 >= v315)
    {
      v320 = *(a3 + 40);
      goto LABEL_299;
    }

    v317 = 8 - v314;
    if ((8 - v314) >= 7)
    {
      v318 = 7;
    }

    else
    {
      v318 = 8 - v314;
    }

    v319 = ((v318 ^ 0xFu) - v314) >> 3;
    if (v319 >= ~v316 + v315)
    {
      v319 = ~v316 + v315;
    }

    if (v319 >= 0xF)
    {
      v345 = v319 + 1;
      v346 = (v319 + 1) & 0x3FFFFFF0;
      v320 = &v316->u8[v346];
      v347 = 0uLL;
      v348 = v314;
      v349 = v313;
      v350 = vdupq_n_s32(v317);
      v351 = vaddq_s32(v350, xmmword_273BC3230);
      v352 = vaddq_s32(v350, xmmword_273BC3240);
      v353 = vaddq_s32(v350, xmmword_273BC3250);
      v354 = vaddq_s32(v350, xmmword_273BC3220);
      v355.i64[0] = 0x8000800080008;
      v355.i64[1] = 0x8000800080008;
      v356.i64[0] = 0x7F0000007FLL;
      v356.i64[1] = 0x7F0000007FLL;
      v357 = v346;
      v358 = 0uLL;
      v359 = 0uLL;
      v360 = 0uLL;
      do
      {
        v361 = *v316++;
        v359 = veorq_s8(vshlq_u32(vqtbl1q_s8(v361, xmmword_273B8E7B0), v352), v359);
        v358 = veorq_s8(vshlq_u32(vqtbl1q_s8(v361, xmmword_273B8E7C0), v353), v358);
        v349 = veorq_s8(vshlq_u32(vqtbl1q_s8(v361, xmmword_273B8E7D0), v354), v349);
        v360 = veorq_s8(vshlq_u32(vqtbl1q_s8(v361, xmmword_273B8E7A0), v351), v360);
        v348 = vaddq_s16(v348, v355);
        v347 = vaddq_s16(v347, v355);
        v354 = vaddq_s32(v354, v356);
        v353 = vaddq_s32(v353, v356);
        v352 = vaddq_s32(v352, v356);
        v351 = vaddq_s32(v351, v356);
        v357 -= 16;
      }

      while (v357);
      v362 = v316 < v315;
      LOWORD(v314) = vaddvq_s16(vaddq_s16(v348, v347));
      v363 = veorq_s8(veorq_s8(v349, v359), veorq_s8(v358, v360));
      *v363.i8 = veor_s8(*v363.i8, *&vextq_s8(v363, v363, 8uLL));
      v313 = v363.i32[0] ^ v363.i32[1];
      if (v345 == v346)
      {
        goto LABEL_298;
      }

      v317 -= 8 * v346;
    }

    else
    {
      v320 = *(a3 + 40);
    }

    do
    {
      v364 = *v320++;
      v313 ^= v364 << v317;
      LOWORD(v314) = v314 + 8;
      v362 = v320 < v315;
      v140 = v317 >= 8;
      v317 -= 8;
    }

    while (v140 && v320 < v315);
LABEL_298:
    if (v362)
    {
LABEL_300:
      *(a3 + 48) = v313;
      *(a3 + 54) = v314;
      *(a3 + 40) = v320;
      goto LABEL_301;
    }

LABEL_299:
    *(a3 + 24) = *(a3 + 24) - v314 + 0x4000;
    LOWORD(v314) = 0x4000;
    goto LABEL_300;
  }

  read_inter_block_mode_info(v11, v10, v16, a3);
LABEL_231:
  if (*(*v12 + 52))
  {
    v284 = (v7 + 1) >> 1;
    if (v284 >= 1 && (v8 + 1) >> 1 >= 1)
    {
      v285 = 0;
      v286 = (*(v11 + 15736) + 1) >> 1;
      v287 = v11 + 40644;
      v288 = 8 * (*(v10 + 4) >> 1) + 8 * v286 * (*v10 >> 1) + *(*(v11 + 15432) + 72) + 4;
      v289 = 8 * v286;
      do
      {
        v290 = (v8 + 1) >> 1;
        v291 = v288;
        do
        {
          *v291 = -1;
          *(v291 - 1) = 0;
          v292 = *(v15 + 16);
          if (v292 >= 1 && !*(v287 + v292))
          {
            v293 = *(v15 + 8);
            if (v293 < 0)
            {
              v293 = -v293;
            }

            if (v293 <= 0xFFF)
            {
              v294 = *(v15 + 10);
              if (v294 < 0)
              {
                v294 = -v294;
              }

              if (v294 <= 0xFFF)
              {
                *v291 = v292;
                *(v291 - 1) = *(v15 + 8);
              }
            }
          }

          v295 = *(v15 + 17);
          if (v295 >= 1 && !*(v287 + v295))
          {
            v296 = *(v15 + 12);
            if (v296 < 0)
            {
              v296 = -v296;
            }

            if (v296 <= 0xFFF)
            {
              v297 = *(v15 + 14);
              if (v297 < 0)
              {
                v297 = -v297;
              }

              if (v297 <= 0xFFF)
              {
                *v291 = v295;
                *(v291 - 1) = *(v15 + 12);
              }
            }
          }

          v291 += 8;
          --v290;
        }

        while (v290);
        ++v285;
        v288 += v289;
      }

      while (v285 != v284);
    }
  }
}

uint64_t read_cdef(uint64_t result, uint64_t a2, int *a3)
{
  if ((*(result + 499) & 1) == 0 && (*(result + 496) & 1) == 0)
  {
    v4 = *(**(a3 + 983) + 144);
    v5 = *(result + 24680);
    v6 = *a3;
    v7 = a3[1];
    if (!(*a3 & (*(v5 + 32) - 1) | v7 & (*(v5 + 32) - 1)))
    {
      *(a3 + 10757) = 0;
    }

    v8 = a3 + 10757;
    if (*(v5 + 28) == 15)
    {
      v9 = (v6 >> 3) & 2 | (v7 >> 4) & 1;
    }

    else
    {
      v9 = 0;
    }

    if ((*(v8 + v9) & 1) == 0 && !v4)
    {
      v10 = *(*(result + 568) + 8 * ((v7 & 0xFFFFFFF0) + *(result + 580) * (v6 & 0xFFFFFFF0)));
      v11 = *(result + 23704);
      if (v11 < 1)
      {
        v14 = 0;
      }

      else
      {
        v12 = 0;
        v13 = v11 + 1;
        do
        {
          result = od_ec_decode_BOOL_q15(a2 + 16, 0x4000u);
          v12 |= result << (v13-- - 2);
        }

        while (v13 > 1);
        v14 = (v12 & 0xF) << 11;
      }

      *(v10 + 167) = *(v10 + 167) & 0x87FF | v14;
      *(v8 + v9) = 1;
    }
  }

  return result;
}

uint64_t read_delta_q_params(uint64_t result, int *a2, uint64_t a3)
{
  v3 = (result + 20480);
  if (!*(result + 24368))
  {
    return result;
  }

  v6 = result;
  v7 = **(a2 + 983);
  v8 = *(result + 24680);
  if (*v7 == *(v8 + 28))
  {
    if (v7[144] != 0 || (a2[1] & (*(v8 + 32) - 1) | *a2 & (*(v8 + 32) - 1)) != 0)
    {
      goto LABEL_48;
    }
  }

  else if (a2[1] & (*(v8 + 32) - 1) | *a2 & (*(v8 + 32) - 1))
  {
LABEL_48:
    v68 = 0;
    goto LABEL_49;
  }

  v9 = (*(a2 + 1331) + 12288);
  v10 = (*(a2 + 1331) + 15110);
  v11 = *(a3 + 48);
  v12 = *(a3 + 52);
  v13 = v12 >> 8;
  v14 = 16;
  v15 = 0x200000000000000;
  result = 0xFF00000000000000;
  v16 = -1;
  v17 = 2;
  v18 = 0xFF00000000000000;
  do
  {
    v19 = v12;
    v20 = *v10++;
    v21 = v13 * (v20 >> 6);
    --v17;
    v14 -= 4;
    v12 = v14 + (v21 >> 1);
    v15 -= 0x100000000000000;
    v18 += 0x100000000000000;
    ++v16;
  }

  while (HIWORD(v11) < v12);
  v22 = v19 - (v21 >> 1) - v14;
  v23 = 15 - (__clz(v22) ^ 0x1F);
  v24 = *(a3 + 54) - v23;
  *(a3 + 54) = v24;
  v25 = ((v11 - (v12 << 16) + 1) << v23) - 1;
  *(a3 + 48) = v25;
  *(a3 + 52) = v22 << v23;
  if (v24 < 0)
  {
    v26 = v24;
    v27 = *(a3 + 32);
    v28 = *(a3 + 40);
    if (v28 >= v27)
    {
      v32 = *(a3 + 40);
      goto LABEL_26;
    }

    v29 = 8 - v26;
    if ((8 - v26) >= 7)
    {
      v30 = 7;
    }

    else
    {
      v30 = 8 - v26;
    }

    v31 = ((v30 ^ 0xFu) - v26) >> 3;
    if (v31 >= ~v28 + v27)
    {
      v31 = ~v28 + v27;
    }

    if (v31 >= 0xF)
    {
      result = v31 + 1;
      v33 = (v31 + 1) & 0x3FFFFFF0;
      v32 = &v28->u8[v33];
      v34 = 0uLL;
      v35 = v26;
      v36 = v25;
      v37 = vdupq_n_s32(v29);
      v38 = vaddq_s32(v37, xmmword_273BC3230);
      v39 = vaddq_s32(v37, xmmword_273BC3240);
      v40 = vaddq_s32(v37, xmmword_273BC3250);
      v41 = vaddq_s32(v37, xmmword_273BC3220);
      v42.i64[0] = 0x8000800080008;
      v42.i64[1] = 0x8000800080008;
      v43.i64[0] = 0x7F0000007FLL;
      v43.i64[1] = 0x7F0000007FLL;
      v44 = v33;
      v45 = 0uLL;
      v46 = 0uLL;
      v47 = 0uLL;
      do
      {
        v48 = *v28++;
        v46 = veorq_s8(vshlq_u32(vqtbl1q_s8(v48, xmmword_273B8E7B0), v39), v46);
        v45 = veorq_s8(vshlq_u32(vqtbl1q_s8(v48, xmmword_273B8E7C0), v40), v45);
        v36 = veorq_s8(vshlq_u32(vqtbl1q_s8(v48, xmmword_273B8E7D0), v41), v36);
        v47 = veorq_s8(vshlq_u32(vqtbl1q_s8(v48, xmmword_273B8E7A0), v38), v47);
        v35 = vaddq_s16(v35, v42);
        v34 = vaddq_s16(v34, v42);
        v41 = vaddq_s32(v41, v43);
        v40 = vaddq_s32(v40, v43);
        v39 = vaddq_s32(v39, v43);
        v38 = vaddq_s32(v38, v43);
        v44 -= 16;
      }

      while (v44);
      v49 = v28 < v27;
      LOWORD(v26) = vaddvq_s16(vaddq_s16(v35, v34));
      v50 = veorq_s8(veorq_s8(v36, v46), veorq_s8(v45, v47));
      *v50.i8 = veor_s8(*v50.i8, *&vextq_s8(v50, v50, 8uLL));
      v25 = v50.i32[0] ^ v50.i32[1];
      if (result == v33)
      {
        goto LABEL_25;
      }

      v29 -= 8 * v33;
    }

    else
    {
      v32 = *(a3 + 40);
    }

    do
    {
      v51 = *v32++;
      v25 ^= v51 << v29;
      LOWORD(v26) = v26 + 8;
      v49 = v32 < v27;
      v52 = v29 >= 8;
      v29 -= 8;
    }

    while (v52 && v32 < v27);
LABEL_25:
    if (v49)
    {
LABEL_27:
      *(a3 + 48) = v25;
      *(a3 + 54) = v26;
      *(a3 + 40) = v32;
      goto LABEL_28;
    }

LABEL_26:
    *(a3 + 24) = *(a3 + 24) - v26 + 0x4000;
    LOWORD(v26) = 0x4000;
    goto LABEL_27;
  }

LABEL_28:
  v53 = -v17;
  if (!*(a3 + 56))
  {
    goto LABEL_40;
  }

  v54 = v9[1415];
  v55 = (v54 >> 4) + 5;
  v56 = v18 >> 56;
  v57 = v9[1411];
  if (v56 <= 0)
  {
    v9[1411] = v57 - (v57 >> v55);
    v58 = v9[1412];
    goto LABEL_34;
  }

  v9[1411] = v57 + ((0x8000 - v57) >> v55);
  v58 = v9[1412];
  if (!v15)
  {
LABEL_34:
    v9[1412] = v58 - (v58 >> v55);
    v59 = v9[1413];
    goto LABEL_35;
  }

  v9[1412] = v58 + ((0x8000 - v58) >> v55);
  v59 = v9[1413];
  if (v56 <= 2)
  {
LABEL_35:
    v60 = v59 - (v59 >> v55);
    goto LABEL_36;
  }

  v60 = v59 + ((0x8000 - v59) >> v55);
LABEL_36:
  v9[1413] = v60;
  if (v54 >= 0x20)
  {
    v61 = v54;
  }

  else
  {
    v61 = v54 + 1;
  }

  v9[1415] = v61;
LABEL_40:
  if (v53 >= 2)
  {
    v62 = od_ec_decode_BOOL_q15(a3 + 16, 0x4000u);
    v63 = (2 * od_ec_decode_BOOL_q15(a3 + 16, 0x4000u)) | (4 * v62);
    result = od_ec_decode_BOOL_q15(a3 + 16, 0x4000u);
    v64 = v63 | result;
    v65 = (1 << ((v63 | result) + 1)) + 1;
    v66 = 0;
    if ((v64 & 0x80000000) == 0)
    {
      do
      {
        result = od_ec_decode_BOOL_q15(a3 + 16, 0x4000u);
        v66 |= result << v64;
        v67 = v64-- + 1;
      }

      while (v67 > 1);
    }

    v16 = v65 + v66;
  }

  if (!v16)
  {
    goto LABEL_48;
  }

  result = od_ec_decode_BOOL_q15(a3 + 16, 0x4000u);
  if (result)
  {
    v68 = -v16;
  }

  else
  {
    v68 = v16;
  }

LABEL_49:
  v69 = a2[2681] + v3[973] * v68;
  if (v69 >= 255)
  {
    v69 = 255;
  }

  if (v69 <= 1)
  {
    v69 = 1;
  }

  a2[2681] = v69;
  if (v3[974])
  {
    v70 = (*(a2 + 1331) + 12288);
    v71 = *a2;
    v72 = a2[1];
    if (v3[976])
    {
      v73 = 0;
      v74 = a2 + 10753;
      v75 = *(a2 + 1331) + 15120;
      v76 = v72 | v71;
      v77 = v7 + 163;
      if (*(*(v6 + 24680) + 77))
      {
        v78 = 2;
      }

      else
      {
        v78 = 4;
      }

      v79 = xmmword_273B8E7B0;
      v80 = xmmword_273B8E7C0;
      v81 = xmmword_273B8E7D0;
      v82 = xmmword_273B8E7A0;
      v83.i64[0] = 0x8000800080008;
      v83.i64[1] = 0x8000800080008;
      v84.i64[0] = 0x7F0000007FLL;
      v84.i64[1] = 0x7F0000007FLL;
      v216 = *(a2 + 1331) + 15120;
      v211 = a2 + 10753;
      v212 = v6;
      v215 = v72 | v71;
      v213 = v78;
      v214 = v7 + 163;
      while (1)
      {
        v87 = *(v74 + v73);
        v88 = *(v6 + 24680);
        v89 = *(v88 + 28);
        v90 = (*(v88 + 32) - 1) & v76;
        if (*v7 == v89)
        {
          if (v7[144])
          {
            v91 = 0;
          }

          else
          {
            v91 = v90 == 0;
          }

          if (v91)
          {
LABEL_72:
            v217 = *(v74 + v73);
            v92 = (v216 + 10 * v73);
            v93 = *(a3 + 48);
            v94 = *(a3 + 52);
            v95 = v94 >> 8;
            v96 = 16;
            v97 = 0x200000000000000;
            v98 = 0xFF00000000000000;
            v99 = -1;
            v100 = v75;
            v101 = 2;
            do
            {
              result = v94;
              v102 = *v100++;
              v103 = v95 * (v102 >> 6);
              --v101;
              v96 -= 4;
              v94 = v96 + (v103 >> 1);
              v97 -= 0x100000000000000;
              v98 += 0x100000000000000;
              ++v99;
            }

            while (HIWORD(v93) < v94);
            v104 = result - (v103 >> 1) - v96;
            v105 = 15 - (__clz(v104) ^ 0x1F);
            v106 = *(a3 + 54) - v105;
            *(a3 + 54) = v106;
            v107 = ((v93 - (v94 << 16) + 1) << v105) - 1;
            *(a3 + 48) = v107;
            *(a3 + 52) = v104 << v105;
            if ((v106 & 0x8000) == 0)
            {
              if (*(a3 + 56))
              {
                goto LABEL_76;
              }

LABEL_110:
              if (-v101 < 2)
              {
LABEL_111:
                if (v99)
                {
                  goto LABEL_112;
                }

LABEL_99:
                v85 = 0;
                goto LABEL_115;
              }

LABEL_95:
              v123 = v3;
              v124 = v7;
              v125 = od_ec_decode_BOOL_q15(a3 + 16, 0x4000u);
              v126 = (2 * od_ec_decode_BOOL_q15(a3 + 16, 0x4000u)) | (4 * v125);
              result = od_ec_decode_BOOL_q15(a3 + 16, 0x4000u);
              v127 = 0;
              v128 = v126 | result;
              if (((v126 | result) & 0x80000000) == 0)
              {
                v129 = v126 | result;
                do
                {
                  result = od_ec_decode_BOOL_q15(a3 + 16, 0x4000u);
                  v127 |= result << v129;
                  v130 = v129-- + 1;
                }

                while (v130 > 1);
              }

              v131 = (1 << (v128 + 1)) + v127;
              v99 = v131 + 1;
              v7 = v124;
              v3 = v123;
              v74 = v211;
              v6 = v212;
              v80 = xmmword_273B8E7C0;
              v79 = xmmword_273B8E7B0;
              v82 = xmmword_273B8E7A0;
              v81 = xmmword_273B8E7D0;
              v83.i64[0] = 0x8000800080008;
              v83.i64[1] = 0x8000800080008;
              v84.i64[0] = 0x7F0000007FLL;
              v84.i64[1] = 0x7F0000007FLL;
              if (v131 == -1)
              {
                goto LABEL_99;
              }

LABEL_112:
              result = od_ec_decode_BOOL_q15(a3 + 16, 0x4000u);
              v84.i64[0] = 0x7F0000007FLL;
              v84.i64[1] = 0x7F0000007FLL;
              v83.i64[0] = 0x8000800080008;
              v83.i64[1] = 0x8000800080008;
              v82 = xmmword_273B8E7A0;
              v81 = xmmword_273B8E7D0;
              v80 = xmmword_273B8E7C0;
              v79 = xmmword_273B8E7B0;
              if (result)
              {
                v85 = -v99;
              }

              else
              {
                v85 = v99;
              }

LABEL_115:
              v76 = v215;
              v78 = v213;
              v77 = v214;
              v87 = v217;
              goto LABEL_61;
            }

            v115 = v106;
            v116 = *(a3 + 32);
            v117 = *(a3 + 40);
            if (v117 >= v116)
            {
              v121 = *(a3 + 40);
              goto LABEL_108;
            }

            v118 = 8 - v115;
            if ((8 - v115) >= 7)
            {
              v119 = 7;
            }

            else
            {
              v119 = 8 - v115;
            }

            v120 = ((v119 ^ 0xFu) - v115) >> 3;
            if (v120 >= ~v117 + v116)
            {
              v120 = ~v117 + v116;
            }

            if (v120 >= 0xF)
            {
              v132 = v120 + 1;
              result = (v120 + 1) & 0x3FFFFFF0;
              v133 = 0uLL;
              v134 = v115;
              v135 = v107;
              v136 = vdupq_n_s32(v118);
              v121 = &v117->u8[result];
              v137 = vaddq_s32(v136, xmmword_273BC3230);
              v118 -= 8 * result;
              v138 = vaddq_s32(v136, xmmword_273BC3240);
              v139 = vaddq_s32(v136, xmmword_273BC3250);
              v140 = vaddq_s32(v136, xmmword_273BC3220);
              v141 = result;
              v142 = 0uLL;
              v143 = 0uLL;
              v144 = 0uLL;
              do
              {
                v145 = *v117++;
                v143 = veorq_s8(vshlq_u32(vqtbl1q_s8(v145, v79), v138), v143);
                v142 = veorq_s8(vshlq_u32(vqtbl1q_s8(v145, v80), v139), v142);
                v135 = veorq_s8(vshlq_u32(vqtbl1q_s8(v145, v81), v140), v135);
                v144 = veorq_s8(vshlq_u32(vqtbl1q_s8(v145, v82), v137), v144);
                v134 = vaddq_s16(v134, v83);
                v133 = vaddq_s16(v133, v83);
                v140 = vaddq_s32(v140, v84);
                v139 = vaddq_s32(v139, v84);
                v138 = vaddq_s32(v138, v84);
                v137 = vaddq_s32(v137, v84);
                v141 -= 16;
              }

              while (v141);
              v146 = v117 < v116;
              LOWORD(v115) = vaddvq_s16(vaddq_s16(v134, v133));
              v147 = veorq_s8(veorq_s8(v135, v143), veorq_s8(v142, v144));
              *v147.i8 = veor_s8(*v147.i8, *&vextq_s8(v147, v147, 8uLL));
              v107 = v147.i32[0] ^ v147.i32[1];
              if (v132 != result)
              {
                goto LABEL_104;
              }
            }

            else
            {
              v121 = *(a3 + 40);
              do
              {
LABEL_104:
                v148 = *v121++;
                v107 ^= v148 << v118;
                LOWORD(v115) = v115 + 8;
                v146 = v121 < v116;
                v52 = v118 >= 8;
                v118 -= 8;
              }

              while (v52 && v121 < v116);
            }

            if (!v146)
            {
LABEL_108:
              *(a3 + 24) = *(a3 + 24) - v115 + 0x4000;
              LOWORD(v115) = 0x4000;
            }

            *(a3 + 48) = v107;
            *(a3 + 54) = v115;
            *(a3 + 40) = v121;
            if (!*(a3 + 56))
            {
              goto LABEL_110;
            }

LABEL_76:
            v108 = v92[4];
            v109 = (v108 >> 4) + 5;
            v110 = v98 >> 56;
            v111 = *v92;
            if (v110 <= 0)
            {
              *v92 = v111 - (v111 >> v109);
              v112 = v92[1];
            }

            else
            {
              *v92 = v111 + ((0x8000 - v111) >> v109);
              v112 = v92[1];
              if (v97)
              {
                v92[1] = v112 + ((0x8000 - v112) >> v109);
                v113 = v92[2];
                if (v110 > 2)
                {
                  v114 = v113 + ((0x8000 - v113) >> v109);
                  goto LABEL_91;
                }

LABEL_90:
                v114 = v113 - (v113 >> v109);
LABEL_91:
                v92[2] = v114;
                if (v108 >= 0x20)
                {
                  v122 = v108;
                }

                else
                {
                  v122 = v108 + 1;
                }

                v92[4] = v122;
                if (-v101 < 2)
                {
                  goto LABEL_111;
                }

                goto LABEL_95;
              }
            }

            v92[1] = v112 - (v112 >> v109);
            v113 = v92[2];
            goto LABEL_90;
          }
        }

        else if (!v90)
        {
          goto LABEL_72;
        }

        v85 = 0;
LABEL_61:
        v86 = v87 + v3[975] * v85;
        if (v86 >= 63)
        {
          v86 = 63;
        }

        if (v86 <= -63)
        {
          LOBYTE(v86) = -63;
        }

        *(v74 + v73) = v86;
        v77[v73++] = v86;
        v75 += 10;
        if (v73 == v78)
        {
          return result;
        }
      }
    }

    v149 = *(a2 + 10752);
    v150 = *(v6 + 24680);
    v151 = (*(v150 + 32) - 1) & (v72 | v71);
    if (*v7 == *(v150 + 28))
    {
      v152 = 0;
      if (v7[144] || v151)
      {
        goto LABEL_164;
      }
    }

    else if (v151)
    {
      goto LABEL_163;
    }

    v153 = (*(a2 + 1331) + 15160);
    v154 = *(a3 + 48);
    v155 = *(a3 + 52);
    v156 = v155 >> 8;
    v157 = 16;
    v158 = 0x200000000000000;
    result = 0xFF00000000000000;
    v159 = -1;
    v160 = 2;
    v161 = 0xFF00000000000000;
    do
    {
      v162 = v155;
      v163 = *v153++;
      v164 = v156 * (v163 >> 6);
      --v160;
      v157 -= 4;
      v155 = v157 + (v164 >> 1);
      v158 -= 0x100000000000000;
      v161 += 0x100000000000000;
      ++v159;
    }

    while (HIWORD(v154) < v155);
    v165 = v162 - (v164 >> 1) - v157;
    v166 = 15 - (__clz(v165) ^ 0x1F);
    v167 = *(a3 + 54) - v166;
    *(a3 + 54) = v167;
    v168 = ((v154 - (v155 << 16) + 1) << v166) - 1;
    *(a3 + 48) = v168;
    *(a3 + 52) = v165 << v166;
    if ((v167 & 0x8000) == 0)
    {
LABEL_143:
      v195 = -v160;
      if (!*(a3 + 56))
      {
        goto LABEL_155;
      }

      v196 = v70[1440];
      v197 = (v196 >> 4) + 5;
      v198 = v161 >> 56;
      v199 = v70[1436];
      if (v198 <= 0)
      {
        v70[1436] = v199 - (v199 >> v197);
        v200 = v70[1437];
      }

      else
      {
        v70[1436] = v199 + ((0x8000 - v199) >> v197);
        v200 = v70[1437];
        if (v158)
        {
          v70[1437] = v200 + ((0x8000 - v200) >> v197);
          v201 = v70[1438];
          if (v198 > 2)
          {
            v202 = v201 + ((0x8000 - v201) >> v197);
LABEL_151:
            v70[1438] = v202;
            if (v196 >= 0x20)
            {
              v203 = v196;
            }

            else
            {
              v203 = v196 + 1;
            }

            v70[1440] = v203;
LABEL_155:
            if (v195 >= 2)
            {
              v204 = od_ec_decode_BOOL_q15(a3 + 16, 0x4000u);
              v205 = (2 * od_ec_decode_BOOL_q15(a3 + 16, 0x4000u)) | (4 * v204);
              result = od_ec_decode_BOOL_q15(a3 + 16, 0x4000u);
              v206 = v205 | result;
              v207 = 1 << ((v205 | result) + 1);
              v208 = 0;
              if ((v206 & 0x80000000) == 0)
              {
                do
                {
                  result = od_ec_decode_BOOL_q15(a3 + 16, 0x4000u);
                  v208 |= result << v206;
                  v209 = v206-- + 1;
                }

                while (v209 > 1);
              }

              v159 = v207 + v208 + 1;
            }

            if (v159)
            {
              result = od_ec_decode_BOOL_q15(a3 + 16, 0x4000u);
              if (result)
              {
                v152 = -v159;
              }

              else
              {
                v152 = v159;
              }

              goto LABEL_164;
            }

LABEL_163:
            v152 = 0;
LABEL_164:
            v210 = v149 + v3[975] * v152;
            if (v210 >= 63)
            {
              v210 = 63;
            }

            if (v210 <= -63)
            {
              LOBYTE(v210) = -63;
            }

            *(a2 + 10752) = v210;
            v7[162] = v210;
            return result;
          }

LABEL_150:
          v202 = v201 - (v201 >> v197);
          goto LABEL_151;
        }
      }

      v70[1437] = v200 - (v200 >> v197);
      v201 = v70[1438];
      goto LABEL_150;
    }

    v169 = v167;
    v170 = *(a3 + 32);
    v171 = *(a3 + 40);
    if (v171 >= v170)
    {
      v175 = *(a3 + 40);
      goto LABEL_141;
    }

    v172 = 8 - v169;
    if ((8 - v169) >= 7)
    {
      v173 = 7;
    }

    else
    {
      v173 = 8 - v169;
    }

    v174 = ((v173 ^ 0xFu) - v169) >> 3;
    if (v174 >= ~v171 + v170)
    {
      v174 = ~v171 + v170;
    }

    if (v174 >= 0xF)
    {
      result = v174 + 1;
      v176 = (v174 + 1) & 0x3FFFFFF0;
      v175 = &v171->u8[v176];
      v177 = 0uLL;
      v178 = v169;
      v179 = v168;
      v180 = vdupq_n_s32(v172);
      v181 = vaddq_s32(v180, xmmword_273BC3230);
      v182 = vaddq_s32(v180, xmmword_273BC3240);
      v183 = vaddq_s32(v180, xmmword_273BC3250);
      v184 = vaddq_s32(v180, xmmword_273BC3220);
      v185.i64[0] = 0x8000800080008;
      v185.i64[1] = 0x8000800080008;
      v186.i64[0] = 0x7F0000007FLL;
      v186.i64[1] = 0x7F0000007FLL;
      v187 = v176;
      v188 = 0uLL;
      v189 = 0uLL;
      v190 = 0uLL;
      do
      {
        v191 = *v171++;
        v189 = veorq_s8(vshlq_u32(vqtbl1q_s8(v191, xmmword_273B8E7B0), v182), v189);
        v188 = veorq_s8(vshlq_u32(vqtbl1q_s8(v191, xmmword_273B8E7C0), v183), v188);
        v179 = veorq_s8(vshlq_u32(vqtbl1q_s8(v191, xmmword_273B8E7D0), v184), v179);
        v190 = veorq_s8(vshlq_u32(vqtbl1q_s8(v191, xmmword_273B8E7A0), v181), v190);
        v178 = vaddq_s16(v178, v185);
        v177 = vaddq_s16(v177, v185);
        v184 = vaddq_s32(v184, v186);
        v183 = vaddq_s32(v183, v186);
        v182 = vaddq_s32(v182, v186);
        v181 = vaddq_s32(v181, v186);
        v187 -= 16;
      }

      while (v187);
      v192 = v171 < v170;
      LOWORD(v169) = vaddvq_s16(vaddq_s16(v178, v177));
      v193 = veorq_s8(veorq_s8(v179, v189), veorq_s8(v188, v190));
      *v193.i8 = veor_s8(*v193.i8, *&vextq_s8(v193, v193, 8uLL));
      v168 = v193.i32[0] ^ v193.i32[1];
      if (result == v176)
      {
        goto LABEL_140;
      }

      v172 -= 8 * v176;
    }

    else
    {
      v175 = *(a3 + 40);
    }

    do
    {
      v194 = *v175++;
      v168 ^= v194 << v172;
      LOWORD(v169) = v169 + 8;
      v192 = v175 < v170;
      v52 = v172 >= 8;
      v172 -= 8;
    }

    while (v52 && v175 < v170);
LABEL_140:
    if (v192)
    {
LABEL_142:
      *(a3 + 48) = v168;
      *(a3 + 54) = v169;
      *(a3 + 40) = v175;
      goto LABEL_143;
    }

LABEL_141:
    *(a3 + 24) = *(a3 + 24) - v169 + 0x4000;
    LOWORD(v169) = 0x4000;
    goto LABEL_142;
  }

  return result;
}

uint64_t read_intra_mode(uint64_t a1, unsigned __int16 *a2)
{
  v2 = 0;
  v3 = 0;
  v4 = *(a1 + 48);
  v5 = *(a1 + 52);
  v6 = v5 >> 8;
  v7 = 52;
  do
  {
    v8 = v5;
    v9 = v6 * (a2[v3] >> 6);
    v7 -= 4;
    v5 = v7 + (v9 >> 1);
    ++v3;
    v2 -= 0x100000000000000;
  }

  while (HIWORD(v4) < v5);
  v10 = v8 - (v9 >> 1) - v7;
  v11 = __clz(v10);
  v12 = 15 - (v11 ^ 0x1F);
  v13 = *(a1 + 54) - v12;
  *(a1 + 54) = v13;
  v14 = ((v4 - (v5 << 16) + 1) << (15 - (v11 ^ 0x1F))) - 1;
  *(a1 + 48) = v14;
  *(a1 + 52) = v10 << v12;
  v15 = v3 - 1;
  if (v13 < 0)
  {
    v16 = *(a1 + 32);
    v17 = *(a1 + 40);
    if (v17 >= v16)
    {
      v21 = *(a1 + 40);
      goto LABEL_21;
    }

    v18 = 8 - v13;
    if (v18 >= 7)
    {
      v19 = 7;
    }

    else
    {
      v19 = 8 - v13;
    }

    v20 = ((v19 ^ 0xFu) - v13) >> 3;
    if (v20 >= ~v17 + v16)
    {
      v20 = ~v17 + v16;
    }

    if (v20 >= 0xF)
    {
      v22 = v20 + 1;
      v23 = (v20 + 1) & 0x3FFFFFF0;
      v21 = &v17->u8[v23];
      v24 = 0uLL;
      v25 = v13;
      v26 = v14;
      v27 = vdupq_n_s32(v18);
      v28 = vaddq_s32(v27, xmmword_273BC3230);
      v29 = vaddq_s32(v27, xmmword_273BC3240);
      v30 = vaddq_s32(v27, xmmword_273BC3250);
      v31 = vaddq_s32(v27, xmmword_273BC3220);
      v32.i64[0] = 0x8000800080008;
      v32.i64[1] = 0x8000800080008;
      v33.i64[0] = 0x7F0000007FLL;
      v33.i64[1] = 0x7F0000007FLL;
      v34 = v23;
      v35 = 0uLL;
      v36 = 0uLL;
      v37 = 0uLL;
      do
      {
        v38 = *v17++;
        v36 = veorq_s8(vshlq_u32(vqtbl1q_s8(v38, xmmword_273B8E7B0), v29), v36);
        v35 = veorq_s8(vshlq_u32(vqtbl1q_s8(v38, xmmword_273B8E7C0), v30), v35);
        v26 = veorq_s8(vshlq_u32(vqtbl1q_s8(v38, xmmword_273B8E7D0), v31), v26);
        v37 = veorq_s8(vshlq_u32(vqtbl1q_s8(v38, xmmword_273B8E7A0), v28), v37);
        v25 = vaddq_s16(v25, v32);
        v24 = vaddq_s16(v24, v32);
        v31 = vaddq_s32(v31, v33);
        v30 = vaddq_s32(v30, v33);
        v29 = vaddq_s32(v29, v33);
        v28 = vaddq_s32(v28, v33);
        v34 -= 16;
      }

      while (v34);
      v39 = v17 < v16;
      v13 = vaddvq_s16(vaddq_s16(v25, v24));
      v40 = veorq_s8(veorq_s8(v26, v36), veorq_s8(v35, v37));
      *v40.i8 = veor_s8(*v40.i8, *&vextq_s8(v40, v40, 8uLL));
      v14 = v40.i32[0] ^ v40.i32[1];
      if (v22 == v23)
      {
        goto LABEL_20;
      }

      v18 -= 8 * v23;
    }

    else
    {
      v21 = *(a1 + 40);
    }

    do
    {
      v41 = *v21++;
      v14 ^= v41 << v18;
      v13 += 8;
      v39 = v21 < v16;
      v42 = v18 >= 8;
      v18 -= 8;
    }

    while (v42 && v21 < v16);
LABEL_20:
    if (v39)
    {
LABEL_22:
      *(a1 + 48) = v14;
      *(a1 + 54) = v13;
      *(a1 + 40) = v21;
      goto LABEL_23;
    }

LABEL_21:
    *(a1 + 24) = *(a1 + 24) - v13 + 0x4000;
    v13 = 0x4000;
    goto LABEL_22;
  }

LABEL_23:
  if (!*(a1 + 56))
  {
    return v15;
  }

  v43 = a2[13];
  v44 = (v43 >> 4) + 5;
  v45 = (0xFF00000000000000 - v2) >> 56;
  v46 = *a2;
  if (v45 <= 0)
  {
    *a2 = v46 - (v46 >> v44);
    v47 = a2[1];
    goto LABEL_38;
  }

  *a2 = v46 + ((0x8000 - v46) >> v44);
  v47 = a2[1];
  if (v2 == 0xFE00000000000000)
  {
LABEL_38:
    a2[1] = v47 - (v47 >> v44);
    v48 = a2[2];
    goto LABEL_39;
  }

  a2[1] = v47 + ((0x8000 - v47) >> v44);
  v48 = a2[2];
  if (v45 <= 2)
  {
LABEL_39:
    a2[2] = v48 - (v48 >> v44);
    v49 = a2[3];
    goto LABEL_40;
  }

  a2[2] = v48 + ((0x8000 - v48) >> v44);
  v49 = a2[3];
  if (v2 == 0xFC00000000000000)
  {
LABEL_40:
    a2[3] = v49 - (v49 >> v44);
    v50 = a2[4];
    goto LABEL_41;
  }

  a2[3] = v49 + ((0x8000 - v49) >> v44);
  v50 = a2[4];
  if (v45 <= 4)
  {
LABEL_41:
    a2[4] = v50 - (v50 >> v44);
    v51 = a2[5];
    goto LABEL_42;
  }

  a2[4] = v50 + ((0x8000 - v50) >> v44);
  v51 = a2[5];
  if (v2 == 0xFA00000000000000)
  {
LABEL_42:
    a2[5] = v51 - (v51 >> v44);
    v52 = a2[6];
    goto LABEL_43;
  }

  a2[5] = v51 + ((0x8000 - v51) >> v44);
  v52 = a2[6];
  if (v45 <= 6)
  {
LABEL_43:
    a2[6] = v52 - (v52 >> v44);
    v53 = a2[7];
    goto LABEL_44;
  }

  a2[6] = v52 + ((0x8000 - v52) >> v44);
  v53 = a2[7];
  if (v2 == 0xF800000000000000)
  {
LABEL_44:
    a2[7] = v53 - (v53 >> v44);
    v54 = a2[8];
    goto LABEL_45;
  }

  a2[7] = v53 + ((0x8000 - v53) >> v44);
  v54 = a2[8];
  if (v45 <= 8)
  {
LABEL_45:
    a2[8] = v54 - (v54 >> v44);
    v55 = a2[9];
    goto LABEL_46;
  }

  a2[8] = v54 + ((0x8000 - v54) >> v44);
  v55 = a2[9];
  if (v2 == 0xF600000000000000)
  {
LABEL_46:
    a2[9] = v55 - (v55 >> v44);
    v56 = a2[10];
    goto LABEL_47;
  }

  a2[9] = v55 + ((0x8000 - v55) >> v44);
  v56 = a2[10];
  if (v45 <= 0xA)
  {
LABEL_47:
    a2[10] = v56 - (v56 >> v44);
    v57 = a2[11];
    goto LABEL_48;
  }

  a2[10] = v56 + ((0x8000 - v56) >> v44);
  v57 = a2[11];
  if (v2 == 0xF400000000000000)
  {
LABEL_48:
    v58 = v57 - (v57 >> v44);
    goto LABEL_49;
  }

  v58 = v57 + ((0x8000 - v57) >> v44);
LABEL_49:
  a2[11] = v58;
  if (v43 >= 0x20)
  {
    v59 = v43;
  }

  else
  {
    v59 = v43 + 1;
  }

  a2[13] = v59;
  return v15;
}

uint64_t read_angle_delta(uint64_t result, unsigned __int16 *a2)
{
  v2 = result;
  v3 = *(result + 48);
  v4 = *(result + 52);
  v5 = v4 >> 8;
  v6 = 28;
  v7 = 0x600000000000000;
  v8 = 0x400000000000000;
  v9 = 0x200000000000000;
  LODWORD(result) = -4;
  v10 = a2;
  v11 = 0xFF00000000000000;
  do
  {
    v12 = v4;
    v13 = *v10++;
    v14 = v5 * (v13 >> 6);
    v6 -= 4;
    v4 = v6 + (v14 >> 1);
    v7 -= 0x100000000000000;
    v8 -= 0x100000000000000;
    v9 -= 0x100000000000000;
    v11 += 0x100000000000000;
    result = (result + 1);
  }

  while (HIWORD(v3) < v4);
  v15 = v12 - (v14 >> 1) - v6;
  v16 = 15 - (__clz(v15) ^ 0x1F);
  v17 = *(v2 + 54) - v16;
  *(v2 + 54) = v17;
  v18 = ((v3 - (v4 << 16) + 1) << v16) - 1;
  *(v2 + 48) = v18;
  *(v2 + 52) = v15 << v16;
  if (v17 < 0)
  {
    v19 = v17;
    v20 = *(v2 + 32);
    v21 = *(v2 + 40);
    if (v21 >= v20)
    {
      v25 = *(v2 + 40);
      goto LABEL_21;
    }

    v22 = 8 - v19;
    if ((8 - v19) >= 7)
    {
      v23 = 7;
    }

    else
    {
      v23 = 8 - v19;
    }

    v24 = ((v23 ^ 0xFu) - v19) >> 3;
    if (v24 >= ~v21 + v20)
    {
      v24 = ~v21 + v20;
    }

    if (v24 >= 0xF)
    {
      v26 = v24 + 1;
      v27 = (v24 + 1) & 0x3FFFFFF0;
      v25 = &v21->u8[v27];
      v28 = 0uLL;
      v29 = v19;
      v30 = v18;
      v31 = vdupq_n_s32(v22);
      v32 = vaddq_s32(v31, xmmword_273BC3230);
      v33 = vaddq_s32(v31, xmmword_273BC3240);
      v34 = vaddq_s32(v31, xmmword_273BC3250);
      v35 = vaddq_s32(v31, xmmword_273BC3220);
      v36.i64[0] = 0x8000800080008;
      v36.i64[1] = 0x8000800080008;
      v37.i64[0] = 0x7F0000007FLL;
      v37.i64[1] = 0x7F0000007FLL;
      v38 = v27;
      v39 = 0uLL;
      v40 = 0uLL;
      v41 = 0uLL;
      do
      {
        v42 = *v21++;
        v40 = veorq_s8(vshlq_u32(vqtbl1q_s8(v42, xmmword_273B8E7B0), v33), v40);
        v39 = veorq_s8(vshlq_u32(vqtbl1q_s8(v42, xmmword_273B8E7C0), v34), v39);
        v30 = veorq_s8(vshlq_u32(vqtbl1q_s8(v42, xmmword_273B8E7D0), v35), v30);
        v41 = veorq_s8(vshlq_u32(vqtbl1q_s8(v42, xmmword_273B8E7A0), v32), v41);
        v29 = vaddq_s16(v29, v36);
        v28 = vaddq_s16(v28, v36);
        v35 = vaddq_s32(v35, v37);
        v34 = vaddq_s32(v34, v37);
        v33 = vaddq_s32(v33, v37);
        v32 = vaddq_s32(v32, v37);
        v38 -= 16;
      }

      while (v38);
      v43 = v21 < v20;
      LOWORD(v19) = vaddvq_s16(vaddq_s16(v29, v28));
      v44 = veorq_s8(veorq_s8(v30, v40), veorq_s8(v39, v41));
      *v44.i8 = veor_s8(*v44.i8, *&vextq_s8(v44, v44, 8uLL));
      v18 = v44.i32[0] ^ v44.i32[1];
      if (v26 == v27)
      {
        goto LABEL_20;
      }

      v22 -= 8 * v27;
    }

    else
    {
      v25 = *(v2 + 40);
    }

    do
    {
      v45 = *v25++;
      v18 ^= v45 << v22;
      LOWORD(v19) = v19 + 8;
      v43 = v25 < v20;
      v46 = v22 >= 8;
      v22 -= 8;
    }

    while (v46 && v25 < v20);
LABEL_20:
    if (v43)
    {
LABEL_22:
      *(v2 + 48) = v18;
      *(v2 + 54) = v19;
      *(v2 + 40) = v25;
      goto LABEL_23;
    }

LABEL_21:
    *(v2 + 24) = *(v2 + 24) - v19 + 0x4000;
    LOWORD(v19) = 0x4000;
    goto LABEL_22;
  }

LABEL_23:
  if (!*(v2 + 56))
  {
    return result;
  }

  v47 = a2[7];
  v48 = (v47 >> 4) + 5;
  v49 = v11 >> 56;
  v50 = *a2;
  if (v49 <= 0)
  {
    *a2 = v50 - (v50 >> v48);
    v51 = a2[1];
    goto LABEL_32;
  }

  *a2 = v50 + ((0x8000 - v50) >> v48);
  v51 = a2[1];
  if (!v9)
  {
LABEL_32:
    a2[1] = v51 - (v51 >> v48);
    v52 = a2[2];
    goto LABEL_33;
  }

  a2[1] = v51 + ((0x8000 - v51) >> v48);
  v52 = a2[2];
  if (v49 <= 2)
  {
LABEL_33:
    a2[2] = v52 - (v52 >> v48);
    v53 = a2[3];
    goto LABEL_34;
  }

  a2[2] = v52 + ((0x8000 - v52) >> v48);
  v53 = a2[3];
  if (!v8)
  {
LABEL_34:
    a2[3] = v53 - (v53 >> v48);
    v54 = a2[4];
    goto LABEL_35;
  }

  a2[3] = v53 + ((0x8000 - v53) >> v48);
  v54 = a2[4];
  if (v49 <= 4)
  {
LABEL_35:
    a2[4] = v54 - (v54 >> v48);
    v55 = a2[5];
    goto LABEL_36;
  }

  a2[4] = v54 + ((0x8000 - v54) >> v48);
  v55 = a2[5];
  if (!v7)
  {
LABEL_36:
    v56 = v55 - (v55 >> v48);
    goto LABEL_37;
  }

  v56 = v55 + ((0x8000 - v55) >> v48);
LABEL_37:
  a2[5] = v56;
  if (v47 < 0x20)
  {
    LOWORD(v47) = v47 + 1;
  }

  a2[7] = v47;
  return result;
}

void read_palette_mode_info(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v327 = *MEMORY[0x277D85DE8];
  v5 = *(*(a1 + 24680) + 77);
  v6 = **(a2 + 7864);
  v7 = v6 + 94;
  v8 = num_pels_log2_lookup_6[*v6] - 6;
  if (v6[2])
  {
    goto LABEL_2;
  }

  v32 = *(a2 + 7880);
  v33 = *(a2 + 7888);
  if (v33)
  {
    LODWORD(v33) = *(v33 + 142) != 0;
  }

  if (v32 && *(v32 + 142))
  {
    LODWORD(v33) = v33 + 1;
  }

  v34 = *(a2 + 10648);
  v35 = (v34 + 18 * v8 + 6 * v33 + 11204);
  v36 = *(a3 + 48);
  v37 = *(a3 + 52);
  v38 = v37 >> 8;
  v39 = 8;
  v40 = 1;
  v41 = v35;
  do
  {
    v42 = v37;
    v43 = *v41++;
    v44 = v38 * (v43 >> 6);
    v39 -= 4;
    v37 = v39 + (v44 >> 1);
    --v40;
  }

  while (HIWORD(v36) < v37);
  v45 = v42 - (v44 >> 1) - v39;
  v46 = 15 - (__clz(v45) ^ 0x1F);
  v47 = *(a3 + 54) - v46;
  *(a3 + 54) = v47;
  v48 = ((v36 - (v37 << 16) + 1) << v46) - 1;
  *(a3 + 48) = v48;
  *(a3 + 52) = v45 << v46;
  if (v47 < 0)
  {
    v49 = v47;
    v50 = *(a3 + 32);
    v51 = *(a3 + 40);
    if (v51 >= v50)
    {
      v56 = *(a3 + 40);
      goto LABEL_41;
    }

    v52 = a2;
    v53 = 8 - v49;
    if ((8 - v49) >= 7)
    {
      v54 = 7;
    }

    else
    {
      v54 = 8 - v49;
    }

    v55 = ((v54 ^ 0xFu) - v49) >> 3;
    if (v55 >= ~v51 + v50)
    {
      v55 = ~v51 + v50;
    }

    if (v55 >= 0xF)
    {
      v57 = v55 + 1;
      v58 = (v55 + 1) & 0x3FFFFFF0;
      v56 = &v51->u8[v58];
      v59 = 0uLL;
      v60 = v49;
      v61 = v48;
      v62 = vdupq_n_s32(v53);
      v63 = vaddq_s32(v62, xmmword_273BC3230);
      v64 = vaddq_s32(v62, xmmword_273BC3240);
      v65 = vaddq_s32(v62, xmmword_273BC3250);
      v66 = vaddq_s32(v62, xmmword_273BC3220);
      v67.i64[0] = 0x8000800080008;
      v67.i64[1] = 0x8000800080008;
      v68.i64[0] = 0x7F0000007FLL;
      v68.i64[1] = 0x7F0000007FLL;
      v69 = v58;
      v70 = 0uLL;
      v71 = 0uLL;
      v72 = 0uLL;
      do
      {
        v73 = *v51++;
        v71 = veorq_s8(vshlq_u32(vqtbl1q_s8(v73, xmmword_273B8E7B0), v64), v71);
        v70 = veorq_s8(vshlq_u32(vqtbl1q_s8(v73, xmmword_273B8E7C0), v65), v70);
        v61 = veorq_s8(vshlq_u32(vqtbl1q_s8(v73, xmmword_273B8E7D0), v66), v61);
        v72 = veorq_s8(vshlq_u32(vqtbl1q_s8(v73, xmmword_273B8E7A0), v63), v72);
        v60 = vaddq_s16(v60, v67);
        v59 = vaddq_s16(v59, v67);
        v66 = vaddq_s32(v66, v68);
        v65 = vaddq_s32(v65, v68);
        v64 = vaddq_s32(v64, v68);
        v63 = vaddq_s32(v63, v68);
        v69 -= 16;
      }

      while (v69);
      v74 = v51 < v50;
      LOWORD(v49) = vaddvq_s16(vaddq_s16(v60, v59));
      v75 = veorq_s8(veorq_s8(v61, v71), veorq_s8(v70, v72));
      *v75.i8 = veor_s8(*v75.i8, *&vextq_s8(v75, v75, 8uLL));
      v48 = v75.i32[0] ^ v75.i32[1];
      if (v57 == v58)
      {
        goto LABEL_40;
      }

      v53 -= 8 * v58;
    }

    else
    {
      v56 = *(a3 + 40);
    }

    do
    {
      v76 = *v56++;
      v48 ^= v76 << v53;
      LOWORD(v49) = v49 + 8;
      v74 = v56 < v50;
      v77 = v53 >= 8;
      v53 -= 8;
    }

    while (v77 && v56 < v50);
LABEL_40:
    a2 = v52;
    if (v74)
    {
LABEL_42:
      *(a3 + 48) = v48;
      *(a3 + 54) = v49;
      *(a3 + 40) = v56;
      goto LABEL_43;
    }

LABEL_41:
    *(a3 + 24) = *(a3 + 24) - v49 + 0x4000;
    LOWORD(v49) = 0x4000;
    goto LABEL_42;
  }

LABEL_43:
  v78 = *(a3 + 56);
  if (*(a3 + 56))
  {
    v79 = v35[2];
    v80 = (v79 >> 4) + 4;
    v81 = *v35;
    v82 = v81 - (v81 >> v80);
    v83 = v81 + ((0x8000 - v81) >> v80);
    if (-v40 >= 1)
    {
      v84 = v83;
    }

    else
    {
      v84 = v82;
    }

    *v35 = v84;
    if (v79 >= 0x20)
    {
      v85 = v79;
    }

    else
    {
      v85 = v79 + 1;
    }

    v35[2] = v85;
  }

  if (!v40)
  {
    goto LABEL_2;
  }

  v86 = a2;
  v87 = (v34 + 16 * v8 + 9720);
  v88 = *(a3 + 52);
  v89 = v88 >> 8;
  v90 = -1;
  v91 = 28;
  v92 = 0x600000000000000;
  v93 = 0x400000000000000;
  v94 = 0x200000000000000;
  v95 = v87;
  v96 = 0xFF00000000000000;
  do
  {
    v97 = v88;
    ++v90;
    v98 = *v95++;
    v99 = v89 * (v98 >> 6);
    v91 -= 4;
    v88 = v91 + (v99 >> 1);
    v92 -= 0x100000000000000;
    v93 -= 0x100000000000000;
    v94 -= 0x100000000000000;
    v96 += 0x100000000000000;
  }

  while (HIWORD(v48) < v88);
  v100 = v97 - (v99 >> 1) - v91;
  v101 = 15 - (__clz(v100) ^ 0x1F);
  v102 = *(a3 + 54) - v101;
  *(a3 + 54) = v102;
  v103 = ((v48 - (v88 << 16) + 1) << v101) - 1;
  *(a3 + 48) = v103;
  *(a3 + 52) = v100 << v101;
  if (v102 < 0)
  {
    v104 = v102;
    v106 = *(a3 + 32);
    v105 = *(a3 + 40);
    if (v105 >= v106)
    {
      v110 = *(a3 + 40);
      goto LABEL_72;
    }

    v107 = 8 - v104;
    if ((8 - v104) >= 7)
    {
      v108 = 7;
    }

    else
    {
      v108 = 8 - v104;
    }

    v109 = ((v108 ^ 0xFu) - v104) >> 3;
    if (v109 >= ~v105 + v106)
    {
      v109 = ~v105 + v106;
    }

    if (v109 >= 0xF)
    {
      v111 = v109 + 1;
      v112 = (v109 + 1) & 0x3FFFFFF0;
      v110 = &v105->u8[v112];
      v113 = 0uLL;
      v114 = v104;
      v115 = v103;
      v116 = vdupq_n_s32(v107);
      v117 = vaddq_s32(v116, xmmword_273BC3230);
      v118 = vaddq_s32(v116, xmmword_273BC3240);
      v119 = vaddq_s32(v116, xmmword_273BC3250);
      v120 = vaddq_s32(v116, xmmword_273BC3220);
      v121.i64[0] = 0x8000800080008;
      v121.i64[1] = 0x8000800080008;
      v122.i64[0] = 0x7F0000007FLL;
      v122.i64[1] = 0x7F0000007FLL;
      v123 = v112;
      v124 = 0uLL;
      v125 = 0uLL;
      v126 = 0uLL;
      do
      {
        v127 = *v105++;
        v125 = veorq_s8(vshlq_u32(vqtbl1q_s8(v127, xmmword_273B8E7B0), v118), v125);
        v124 = veorq_s8(vshlq_u32(vqtbl1q_s8(v127, xmmword_273B8E7C0), v119), v124);
        v115 = veorq_s8(vshlq_u32(vqtbl1q_s8(v127, xmmword_273B8E7D0), v120), v115);
        v126 = veorq_s8(vshlq_u32(vqtbl1q_s8(v127, xmmword_273B8E7A0), v117), v126);
        v114 = vaddq_s16(v114, v121);
        v113 = vaddq_s16(v113, v121);
        v120 = vaddq_s32(v120, v122);
        v119 = vaddq_s32(v119, v122);
        v118 = vaddq_s32(v118, v122);
        v117 = vaddq_s32(v117, v122);
        v123 -= 16;
      }

      while (v123);
      v128 = v105 < v106;
      LOWORD(v104) = vaddvq_s16(vaddq_s16(v114, v113));
      v129 = veorq_s8(veorq_s8(v115, v125), veorq_s8(v124, v126));
      *v129.i8 = veor_s8(*v129.i8, *&vextq_s8(v129, v129, 8uLL));
      v103 = v129.i32[0] ^ v129.i32[1];
      if (v111 == v112)
      {
        goto LABEL_71;
      }

      v107 -= 8 * v112;
    }

    else
    {
      v110 = *(a3 + 40);
    }

    do
    {
      v130 = *v110++;
      v103 ^= v130 << v107;
      LOWORD(v104) = v104 + 8;
      v128 = v110 < v106;
      v77 = v107 >= 8;
      v107 -= 8;
    }

    while (v77 && v110 < v106);
LABEL_71:
    if (v128)
    {
LABEL_73:
      *(a3 + 48) = v103;
      *(a3 + 54) = v104;
      *(a3 + 40) = v110;
      goto LABEL_74;
    }

LABEL_72:
    *(a3 + 24) = *(a3 + 24) - v104 + 0x4000;
    LOWORD(v104) = 0x4000;
    goto LABEL_73;
  }

LABEL_74:
  if (!v78)
  {
    goto LABEL_92;
  }

  v131 = v87[7];
  v132 = (v131 >> 4) + 5;
  v133 = v96 >> 56;
  v134 = *v87;
  if (v133 <= 0)
  {
    *v87 = v134 - (v134 >> v132);
    v135 = v87[1];
    goto LABEL_83;
  }

  *v87 = v134 + ((0x8000 - v134) >> v132);
  v135 = v87[1];
  if (!v94)
  {
LABEL_83:
    v87[1] = v135 - (v135 >> v132);
    v136 = v87[2];
    goto LABEL_84;
  }

  v87[1] = v135 + ((0x8000 - v135) >> v132);
  v136 = v87[2];
  if (v133 <= 2)
  {
LABEL_84:
    v87[2] = v136 - (v136 >> v132);
    v137 = v87[3];
    goto LABEL_85;
  }

  v87[2] = v136 + ((0x8000 - v136) >> v132);
  v137 = v87[3];
  if (!v93)
  {
LABEL_85:
    v87[3] = v137 - (v137 >> v132);
    v138 = v87[4];
    goto LABEL_86;
  }

  v87[3] = v137 + ((0x8000 - v137) >> v132);
  v138 = v87[4];
  if (v133 <= 4)
  {
LABEL_86:
    v87[4] = v138 - (v138 >> v132);
    v139 = v87[5];
    goto LABEL_87;
  }

  v87[4] = v138 + ((0x8000 - v138) >> v132);
  v139 = v87[5];
  if (!v92)
  {
LABEL_87:
    v140 = v139 - (v139 >> v132);
    goto LABEL_88;
  }

  v140 = v139 + ((0x8000 - v139) >> v132);
LABEL_88:
  v87[5] = v140;
  if (v131 >= 0x20)
  {
    v141 = v131;
  }

  else
  {
    v141 = v131 + 1;
  }

  v87[7] = v141;
LABEL_92:
  v316 = v5;
  v318 = v8;
  v320 = v4;
  v6[142] = v90 + 2;
  v142 = *(*(v4 + 24680) + 72);
  v322 = v86;
  palette_cache = av1_get_palette_cache(v86, 0, v326);
  v144 = 0;
  v145 = v6[142];
  v146 = v6[142] != 0;
  if (palette_cache >= 1 && v6[142])
  {
    v144 = 0;
    v147 = v326;
    v148 = 1;
    v149 = palette_cache;
    do
    {
      if (od_ec_decode_BOOL_q15(a3 + 16, 0x4000u))
      {
        __src[v144++] = *v147;
      }

      v146 = v144 < v145;
      if (v148 >= v149)
      {
        break;
      }

      ++v148;
      ++v147;
    }

    while (v144 < v145);
  }

  if (v146)
  {
    v314 = v6;
    v150 = 0;
    if (v142 >= 1)
    {
      v151 = v142 + 1;
      do
      {
        v150 |= od_ec_decode_BOOL_q15(a3 + 16, 0x4000u) << (v151-- - 2);
      }

      while (v151 > 1);
    }

    *&v7[2 * v144] = v150;
    if (v144 + 1 < v145)
    {
      v152 = od_ec_decode_BOOL_q15(a3 + 16, 0x4000u);
      v153 = v142 + (od_ec_decode_BOOL_q15(a3 + 16, 0x4000u) | (2 * v152));
      v154 = 1 << v142;
      v155 = (1 << v142) + ~*&v7[2 * v144];
      v156 = v153 - 3;
      v323 = v154 - 1;
      v157 = v144 + 1;
      do
      {
        if (v156 < 1)
        {
          v158 = 1;
        }

        else
        {
          v166 = 0;
          v167 = v156 + 1;
          do
          {
            v166 |= od_ec_decode_BOOL_q15(a3 + 16, 0x4000u) << (v167-- - 2);
          }

          while (v167 > 1);
          v158 = v166 + 1;
        }

        v159 = &v7[2 * v157];
        v160 = *(v159 - 1);
        v161 = v158 + v160;
        v162 = v323;
        if (v161 < v323)
        {
          v162 = v161;
        }

        if (v161 >= 0)
        {
          v163 = v162;
        }

        else
        {
          v163 = 0;
        }

        *v159 = v163;
        v155 += v160 - v163;
        v164 = __clz(v155 - 1) ^ 0x1F;
        if (v155 >= 2)
        {
          v165 = v164 + 1;
        }

        else
        {
          v165 = 0;
        }

        if (v156 >= v165)
        {
          v156 = v165;
        }

        ++v157;
      }

      while (v157 != v145);
    }

    v6 = v314;
    v4 = v320;
    a2 = v322;
    LODWORD(v8) = v318;
    v5 = v316;
    if (v145 && v144)
    {
      v168 = 0;
      v169 = v7;
      v170 = v145;
      v171 = v144;
      do
      {
        while (v168 < v144)
        {
          v172 = __src[v168];
          if (v171 < v145 && (v173 = *&v7[2 * v171], v172 > v173))
          {
            ++v171;
            *v169 = v173;
            v169 += 2;
            if (!--v170)
            {
              goto LABEL_2;
            }
          }

          else
          {
            ++v168;
            *v169 = v172;
            v169 += 2;
            if (!--v170)
            {
              goto LABEL_2;
            }
          }
        }

        v174 = *&v7[2 * v171++];
        *v169 = v174;
        v169 += 2;
        --v170;
      }

      while (v170);
    }
  }

  else
  {
    memcpy(v6 + 94, __src, 2 * v145);
    v4 = v320;
    a2 = v322;
    LODWORD(v8) = v318;
  }

LABEL_2:
  if (v5 || v6[3] || *(a2 + 12) != 1)
  {
    return;
  }

  v9 = *(a2 + 10648);
  v10 = (v9 + 6 * (v6[142] != 0) + 11330);
  v11 = *(a3 + 48);
  v12 = *(a3 + 52);
  v13 = v12 >> 8;
  v14 = 8;
  v15 = 1;
  v16 = v10;
  do
  {
    v17 = v12;
    v18 = *v16++;
    v19 = v13 * (v18 >> 6);
    v14 -= 4;
    v12 = v14 + (v19 >> 1);
    --v15;
  }

  while (HIWORD(v11) < v12);
  v20 = v17 - (v19 >> 1) - v14;
  v21 = 15 - (__clz(v20) ^ 0x1F);
  v22 = *(a3 + 54) - v21;
  *(a3 + 54) = v22;
  v23 = ((v11 - (v12 << 16) + 1) << v21) - 1;
  *(a3 + 48) = v23;
  *(a3 + 52) = v20 << v21;
  if (v22 < 0)
  {
    v24 = v22;
    v25 = *(a3 + 32);
    v26 = *(a3 + 40);
    if (v26 >= v25)
    {
      v31 = *(a3 + 40);
      goto LABEL_142;
    }

    v27 = a2;
    v28 = 8 - v24;
    if ((8 - v24) >= 7)
    {
      v29 = 7;
    }

    else
    {
      v29 = 8 - v24;
    }

    v30 = ((v29 ^ 0xFu) - v24) >> 3;
    if (v30 >= ~v26 + v25)
    {
      v30 = ~v26 + v25;
    }

    if (v30 >= 0xF)
    {
      v175 = v30 + 1;
      v176 = (v30 + 1) & 0x3FFFFFF0;
      v31 = &v26->u8[v176];
      v177 = 0uLL;
      v178 = v24;
      v179 = v23;
      v180 = vdupq_n_s32(v28);
      v181 = vaddq_s32(v180, xmmword_273BC3230);
      v182 = vaddq_s32(v180, xmmword_273BC3240);
      v183 = vaddq_s32(v180, xmmword_273BC3250);
      v184 = vaddq_s32(v180, xmmword_273BC3220);
      v185.i64[0] = 0x8000800080008;
      v185.i64[1] = 0x8000800080008;
      v186.i64[0] = 0x7F0000007FLL;
      v186.i64[1] = 0x7F0000007FLL;
      v187 = v176;
      v188 = 0uLL;
      v189 = 0uLL;
      v190 = 0uLL;
      do
      {
        v191 = *v26++;
        v189 = veorq_s8(vshlq_u32(vqtbl1q_s8(v191, xmmword_273B8E7B0), v182), v189);
        v188 = veorq_s8(vshlq_u32(vqtbl1q_s8(v191, xmmword_273B8E7C0), v183), v188);
        v179 = veorq_s8(vshlq_u32(vqtbl1q_s8(v191, xmmword_273B8E7D0), v184), v179);
        v190 = veorq_s8(vshlq_u32(vqtbl1q_s8(v191, xmmword_273B8E7A0), v181), v190);
        v178 = vaddq_s16(v178, v185);
        v177 = vaddq_s16(v177, v185);
        v184 = vaddq_s32(v184, v186);
        v183 = vaddq_s32(v183, v186);
        v182 = vaddq_s32(v182, v186);
        v181 = vaddq_s32(v181, v186);
        v187 -= 16;
      }

      while (v187);
      v192 = v26 < v25;
      LOWORD(v24) = vaddvq_s16(vaddq_s16(v178, v177));
      v193 = veorq_s8(veorq_s8(v179, v189), veorq_s8(v188, v190));
      *v193.i8 = veor_s8(*v193.i8, *&vextq_s8(v193, v193, 8uLL));
      v23 = v193.i32[0] ^ v193.i32[1];
      if (v175 == v176)
      {
        goto LABEL_141;
      }

      v28 -= 8 * v176;
    }

    else
    {
      v31 = *(a3 + 40);
    }

    do
    {
      v194 = *v31++;
      v23 ^= v194 << v28;
      LOWORD(v24) = v24 + 8;
      v192 = v31 < v25;
      v77 = v28 >= 8;
      v28 -= 8;
    }

    while (v77 && v31 < v25);
LABEL_141:
    a2 = v27;
    if (v192)
    {
LABEL_143:
      *(a3 + 48) = v23;
      *(a3 + 54) = v24;
      *(a3 + 40) = v31;
      goto LABEL_144;
    }

LABEL_142:
    *(a3 + 24) = *(a3 + 24) - v24 + 0x4000;
    LOWORD(v24) = 0x4000;
    goto LABEL_143;
  }

LABEL_144:
  v195 = *(a3 + 56);
  if (*(a3 + 56))
  {
    v196 = v10[2];
    v197 = (v196 >> 4) + 4;
    v198 = *v10;
    v199 = v198 - (v198 >> v197);
    v200 = v198 + ((0x8000 - v198) >> v197);
    if (-v15 >= 1)
    {
      v201 = v200;
    }

    else
    {
      v201 = v199;
    }

    *v10 = v201;
    if (v196 >= 0x20)
    {
      v202 = v196;
    }

    else
    {
      v202 = v196 + 1;
    }

    v10[2] = v202;
  }

  if (!v15)
  {
    return;
  }

  v203 = a2;
  v204 = (v9 + 16 * v8 + 9832);
  v205 = *(a3 + 52);
  v206 = v205 >> 8;
  v207 = -1;
  v208 = 2;
  v209 = 28;
  v210 = 0x600000000000000;
  v211 = 0x400000000000000;
  v212 = 0x200000000000000;
  v213 = v204;
  v214 = 0xFF00000000000000;
  do
  {
    v215 = v205;
    v216 = v208;
    ++v207;
    v217 = *v213++;
    v218 = v206 * (v217 >> 6);
    v209 -= 4;
    v205 = v209 + (v218 >> 1);
    ++v208;
    v210 -= 0x100000000000000;
    v211 -= 0x100000000000000;
    v212 -= 0x100000000000000;
    v214 += 0x100000000000000;
  }

  while (HIWORD(v23) < v205);
  v219 = v215 - (v218 >> 1) - v209;
  v220 = 15 - (__clz(v219) ^ 0x1F);
  v221 = *(a3 + 54) - v220;
  *(a3 + 54) = v221;
  v222 = ((v23 - (v205 << 16) + 1) << v220) - 1;
  *(a3 + 48) = v222;
  *(a3 + 52) = v219 << v220;
  v223 = v203;
  if (v221 < 0)
  {
    v224 = v221;
    v226 = *(a3 + 32);
    v225 = *(a3 + 40);
    if (v225 >= v226)
    {
      v230 = *(a3 + 40);
      goto LABEL_175;
    }

    v227 = 8 - v224;
    if ((8 - v224) >= 7)
    {
      v228 = 7;
    }

    else
    {
      v228 = 8 - v224;
    }

    v229 = ((v228 ^ 0xFu) - v224) >> 3;
    if (v229 >= ~v225 + v226)
    {
      v229 = ~v225 + v226;
    }

    if (v229 >= 0xF)
    {
      v231 = v229 + 1;
      v232 = (v229 + 1) & 0x3FFFFFF0;
      v230 = &v225->u8[v232];
      v233 = 0uLL;
      v234 = v224;
      v235 = v222;
      v236 = vdupq_n_s32(v227);
      v237 = vaddq_s32(v236, xmmword_273BC3230);
      v238 = vaddq_s32(v236, xmmword_273BC3240);
      v239 = vaddq_s32(v236, xmmword_273BC3250);
      v240 = vaddq_s32(v236, xmmword_273BC3220);
      v241.i64[0] = 0x8000800080008;
      v241.i64[1] = 0x8000800080008;
      v242.i64[0] = 0x7F0000007FLL;
      v242.i64[1] = 0x7F0000007FLL;
      v243 = v232;
      v244 = 0uLL;
      v245 = 0uLL;
      v246 = 0uLL;
      do
      {
        v247 = *v225++;
        v245 = veorq_s8(vshlq_u32(vqtbl1q_s8(v247, xmmword_273B8E7B0), v238), v245);
        v244 = veorq_s8(vshlq_u32(vqtbl1q_s8(v247, xmmword_273B8E7C0), v239), v244);
        v235 = veorq_s8(vshlq_u32(vqtbl1q_s8(v247, xmmword_273B8E7D0), v240), v235);
        v246 = veorq_s8(vshlq_u32(vqtbl1q_s8(v247, xmmword_273B8E7A0), v237), v246);
        v234 = vaddq_s16(v234, v241);
        v233 = vaddq_s16(v233, v241);
        v240 = vaddq_s32(v240, v242);
        v239 = vaddq_s32(v239, v242);
        v238 = vaddq_s32(v238, v242);
        v237 = vaddq_s32(v237, v242);
        v243 -= 16;
      }

      while (v243);
      v248 = v225 < v226;
      LOWORD(v224) = vaddvq_s16(vaddq_s16(v234, v233));
      v249 = veorq_s8(veorq_s8(v235, v245), veorq_s8(v244, v246));
      *v249.i8 = veor_s8(*v249.i8, *&vextq_s8(v249, v249, 8uLL));
      v222 = v249.i32[0] ^ v249.i32[1];
      if (v231 == v232)
      {
        v223 = v203;
        goto LABEL_174;
      }

      v227 -= 8 * v232;
    }

    else
    {
      v230 = *(a3 + 40);
    }

    v223 = v203;
    do
    {
      v250 = *v230++;
      v222 ^= v250 << v227;
      LOWORD(v224) = v224 + 8;
      v248 = v230 < v226;
      v77 = v227 >= 8;
      v227 -= 8;
    }

    while (v77 && v230 < v226);
LABEL_174:
    if (v248)
    {
LABEL_176:
      *(a3 + 48) = v222;
      *(a3 + 54) = v224;
      *(a3 + 40) = v230;
      goto LABEL_177;
    }

LABEL_175:
    *(a3 + 24) = *(a3 + 24) - v224 + 0x4000;
    LOWORD(v224) = 0x4000;
    goto LABEL_176;
  }

LABEL_177:
  if (v195)
  {
    v251 = v204[7];
    v252 = (v251 >> 4) + 5;
    v253 = v214 >> 56;
    v254 = *v204;
    if (v253 <= 0)
    {
      *v204 = v254 - (v254 >> v252);
      v255 = v204[1];
    }

    else
    {
      *v204 = v254 + ((0x8000 - v254) >> v252);
      v255 = v204[1];
      if (v212)
      {
        v204[1] = v255 + ((0x8000 - v255) >> v252);
        v256 = v204[2];
        if (v253 > 2)
        {
          v204[2] = v256 + ((0x8000 - v256) >> v252);
          v257 = v204[3];
          if (v211)
          {
            v204[3] = v257 + ((0x8000 - v257) >> v252);
            v258 = v204[4];
            if (v253 > 4)
            {
              v204[4] = v258 + ((0x8000 - v258) >> v252);
              v259 = v204[5];
              if (v210)
              {
                v260 = v259 + ((0x8000 - v259) >> v252);
LABEL_191:
                v204[5] = v260;
                if (v251 >= 0x20)
                {
                  v261 = v251;
                }

                else
                {
                  v261 = v251 + 1;
                }

                v204[7] = v261;
                goto LABEL_195;
              }

LABEL_190:
              v260 = v259 - (v259 >> v252);
              goto LABEL_191;
            }

LABEL_189:
            v204[4] = v258 - (v258 >> v252);
            v259 = v204[5];
            goto LABEL_190;
          }

LABEL_188:
          v204[3] = v257 - (v257 >> v252);
          v258 = v204[4];
          goto LABEL_189;
        }

LABEL_187:
        v204[2] = v256 - (v256 >> v252);
        v257 = v204[3];
        goto LABEL_188;
      }
    }

    v204[1] = v255 - (v255 >> v252);
    v256 = v204[2];
    goto LABEL_187;
  }

LABEL_195:
  v324 = v7;
  v315 = v6;
  v6[143] = v207 + 2;
  v262 = *(*(v4 + 24680) + 72);
  v263 = av1_get_palette_cache(v223, 1, v326);
  v264 = 0;
  v265 = (v207 + 2);
  v266 = v265 != 0;
  if (v207 != 0xFE && v263 >= 1)
  {
    v264 = 0;
    v267 = v326;
    v268 = 1;
    v269 = v263;
    do
    {
      if (od_ec_decode_BOOL_q15(a3 + 16, 0x4000u))
      {
        __src[v264++] = *v267;
      }

      v266 = v264 < v265;
      if (v268 >= v269)
      {
        break;
      }

      ++v268;
      ++v267;
    }

    while (v264 < v265);
  }

  if (v266)
  {
    v270 = v264 + 8;
    v317 = v262;
    v319 = (v207 + 2);
    v271 = 0;
    if (v262 >= 1)
    {
      v272 = v262 + 1;
      do
      {
        v271 |= od_ec_decode_BOOL_q15(a3 + 16, 0x4000u) << (v272-- - 2);
      }

      while (v272 > 1);
    }

    *&v324[2 * v270] = v271;
    if (v264 + 9 < v265 + 8)
    {
      v273 = od_ec_decode_BOOL_q15(a3 + 16, 0x4000u);
      v274 = v262 + (od_ec_decode_BOOL_q15(a3 + 16, 0x4000u) | (2 * v273));
      v275 = (1 << v262) - *&v324[2 * v270];
      v276 = v274 - 3;
      v321 = (1 << v262) - 1;
      v277 = v264 + 9;
      do
      {
        if (v276 < 1)
        {
          v278 = 0;
        }

        else
        {
          v278 = 0;
          v285 = v276 + 1;
          do
          {
            v278 |= od_ec_decode_BOOL_q15(a3 + 16, 0x4000u) << (v285-- - 2);
          }

          while (v285 > 1);
        }

        v279 = &v324[2 * v277];
        v280 = *(v279 - 1);
        v281 = v321;
        if (v278 + v280 < v321)
        {
          v281 = v278 + v280;
        }

        if (v278 + v280 >= 0)
        {
          v282 = v281;
        }

        else
        {
          v282 = 0;
        }

        *v279 = v282;
        v275 += v280 - v282;
        v283 = __clz(v275 - 1) ^ 0x1F;
        if (v275 >= 2)
        {
          v284 = v283 + 1;
        }

        else
        {
          v284 = 0;
        }

        if (v276 >= v284)
        {
          v276 = v284;
        }

        ++v277;
      }

      while (v319 + 8 != v277);
    }

    LOBYTE(v265) = v207 + 2;
    v286 = v315;
    v262 = v317;
    if (v207 != 0xFE && v264)
    {
      v291 = 0;
      v292 = v315 + 110;
      v293 = v216;
      v294 = v315 + 110;
      v295 = v264;
      do
      {
        while (v291 < v264)
        {
          v296 = __src[v291];
          if (v295 < v319 && (v297 = *&v292[2 * v295], v296 > v297))
          {
            ++v295;
            *v294++ = v297;
            if (!--v293)
            {
              goto LABEL_225;
            }
          }

          else
          {
            ++v291;
            *v294++ = v296;
            if (!--v293)
            {
              goto LABEL_225;
            }
          }
        }

        v298 = *&v292[2 * v295++];
        *v294++ = v298;
        --v293;
      }

      while (v293);
    }
  }

  else
  {
    v286 = v315;
    memcpy(v315 + 110, __src, 2 * v265);
  }

LABEL_225:
  if (od_ec_decode_BOOL_q15(a3 + 16, 0x4000u))
  {
    v287 = od_ec_decode_BOOL_q15(a3 + 16, 0x4000u);
    v288 = od_ec_decode_BOOL_q15(a3 + 16, 0x4000u);
    if (v262 < 1)
    {
      LOWORD(v289) = 0;
    }

    else
    {
      v289 = 0;
      v290 = v262 + 1;
      do
      {
        v289 |= od_ec_decode_BOOL_q15(a3 + 16, 0x4000u) << (v290-- - 2);
      }

      while (v290 > 1);
    }

    *(v286 + 63) = v289;
    if (v207 <= 0xFDu)
    {
      v302 = v262 + (v288 | (2 * v287));
      v303 = 1 << v262;
      v304 = v302 - 4;
      v305 = v302 - 5;
      v306 = 1;
      do
      {
        if (v304 < 1)
        {
          goto LABEL_251;
        }

        v311 = 0;
        v312 = v305;
        do
        {
          v311 |= od_ec_decode_BOOL_q15(a3 + 16, 0x4000u) << v312;
          v313 = v312-- + 1;
        }

        while (v313 > 1);
        if (v311)
        {
          if (od_ec_decode_BOOL_q15(a3 + 16, 0x4000u))
          {
            v307 = -v311;
          }

          else
          {
            v307 = v311;
          }
        }

        else
        {
LABEL_251:
          v307 = 0;
        }

        v308 = &v324[2 * v306];
        v309 = (v303 & ((v307 + *(v308 + 15)) >> 31)) + v307 + *(v308 + 15);
        if (v309 >= v303)
        {
          v310 = 1 << v262;
        }

        else
        {
          v310 = 0;
        }

        *(v308 + 16) = v309 - v310;
        ++v306;
      }

      while (v306 != v265);
    }
  }

  else if (v265)
  {
    if (v262 <= 0)
    {
      bzero(v286 + 126, 2 * v265);
    }

    else
    {
      v299 = 0;
      do
      {
        v300 = 0;
        v301 = v262 + 1;
        do
        {
          v300 |= od_ec_decode_BOOL_q15(a3 + 16, 0x4000u) << (v301-- - 2);
        }

        while (v301 > 1);
        *&v324[2 * v299++ + 32] = v300;
      }

      while (v299 != v265);
    }
  }
}

uint64_t read_segment_id(uint64_t a1, int *a2, uint64_t a3, int a4)
{
  v8 = *a2;
  v9 = a2[1];
  v10 = *(*(a1 + 232) + 80);
  if ((a2[1968] & 1) == 0)
  {
    if (*(a2 + 7873))
    {
      v11 = *(a1 + 532);
      v12 = *(a1 + 536);
      v16 = 255;
      v13 = 255;
      goto LABEL_28;
    }

    v13 = 255;
    v16 = 255;
    goto LABEL_37;
  }

  v11 = *(a1 + 532);
  v12 = *(a1 + 536);
  if ((*(a2 + 7873) & 1) == 0)
  {
    v13 = 255;
    if (v11 >= v8 && v12 > v9)
    {
      goto LABEL_25;
    }

    v16 = 8;
LABEL_37:
    v21 = 0;
    v18 = v13;
    v13 = 255;
LABEL_38:
    v22 = v16;
    goto LABEL_39;
  }

  v13 = 8;
  if (v11 >= v8 && v12 >= v9)
  {
    if (*(v10 + v9 + v12 * (v8 - 1) - 1) >= 8u)
    {
      v13 = 8;
    }

    else
    {
      v13 = *(v10 + v9 + v12 * (v8 - 1) - 1);
    }
  }

  if (v11 < v8 || v12 <= v9)
  {
    v16 = 8;
    goto LABEL_28;
  }

LABEL_25:
  v16 = *(v10 + v9 + v12 * (v8 - 1));
  if (v16 >= 8)
  {
    v16 = 8;
  }

  if (*(a2 + 7873))
  {
LABEL_28:
    v18 = 8;
    if (v11 > v8 && v12 >= v9)
    {
      v20 = *(v10 + v9 + v12 * v8 - 1);
      if (v20 >= 8)
      {
        v18 = 8;
      }

      else
      {
        v18 = v20;
      }
    }

    if (v13 == 255)
    {
      goto LABEL_36;
    }

    goto LABEL_63;
  }

  v18 = 255;
  if (v13 == 255)
  {
LABEL_36:
    v13 = v18;
    goto LABEL_37;
  }

LABEL_63:
  if (v13 != v16 || v13 != v18)
  {
    v49 = v13 == v18 || v18 == v16;
    v21 = v13 == v16 || v49;
    goto LABEL_38;
  }

  v21 = 2;
  v18 = v13;
  v22 = v13;
LABEL_39:
  v84 = v4;
  if (v13 == v22)
  {
    LODWORD(v23) = v22;
  }

  else
  {
    LODWORD(v23) = v18;
  }

  if (v18 == 255)
  {
    LODWORD(v23) = v16;
    v24 = 0;
  }

  else
  {
    v24 = v18;
  }

  if (v16 == 255)
  {
    v23 = v24;
  }

  else
  {
    v23 = v23;
  }

  if (a4)
  {
    return v23;
  }

  v27 = 0;
  v28 = (*(a2 + 1331) + 18 * v21 + 12508);
  v29 = *(a3 + 48);
  v30 = *(a3 + 52);
  v31 = v30 >> 8;
  v32 = 32;
  LODWORD(v25) = -1;
  v33 = v28;
  do
  {
    v34 = v30;
    v35 = *v33++;
    v36 = v31 * (v35 >> 6);
    v32 -= 4;
    v30 = v32 + (v36 >> 1);
    v27 -= 0x100000000000000;
    v25 = (v25 + 1);
  }

  while (HIWORD(v29) < v30);
  v37 = v34 - (v36 >> 1) - v32;
  v38 = 15 - (__clz(v37) ^ 0x1F);
  v39 = *(a3 + 54) - v38;
  *(a3 + 54) = v39;
  v40 = ((v29 - (v30 << 16) + 1) << v38) - 1;
  *(a3 + 48) = v40;
  *(a3 + 52) = v37 << v38;
  if (v39 < 0)
  {
    v41 = v39;
    v42 = *(a3 + 32);
    v43 = *(a3 + 40);
    if (v43 >= v42)
    {
      v47 = *(a3 + 40);
      goto LABEL_82;
    }

    v44 = 8 - v41;
    if ((8 - v41) >= 7)
    {
      v45 = 7;
    }

    else
    {
      v45 = 8 - v41;
    }

    v46 = ((v45 ^ 0xFu) - v41) >> 3;
    if (v46 >= ~v43 + v42)
    {
      v46 = ~v43 + v42;
    }

    if (v46 >= 0xF)
    {
      v50 = v46 + 1;
      v51 = (v46 + 1) & 0x3FFFFFF0;
      v47 = &v43->u8[v51];
      v52 = 0uLL;
      v53 = v41;
      v54 = v40;
      v55 = vdupq_n_s32(v44);
      v56 = vaddq_s32(v55, xmmword_273BC3230);
      v57 = vaddq_s32(v55, xmmword_273BC3240);
      v58 = vaddq_s32(v55, xmmword_273BC3250);
      v59 = vaddq_s32(v55, xmmword_273BC3220);
      v60.i64[0] = 0x8000800080008;
      v60.i64[1] = 0x8000800080008;
      v61.i64[0] = 0x7F0000007FLL;
      v61.i64[1] = 0x7F0000007FLL;
      v62 = v51;
      v63 = 0uLL;
      v64 = 0uLL;
      v65 = 0uLL;
      do
      {
        v66 = *v43++;
        v64 = veorq_s8(vshlq_u32(vqtbl1q_s8(v66, xmmword_273B8E7B0), v57), v64);
        v63 = veorq_s8(vshlq_u32(vqtbl1q_s8(v66, xmmword_273B8E7C0), v58), v63);
        v54 = veorq_s8(vshlq_u32(vqtbl1q_s8(v66, xmmword_273B8E7D0), v59), v54);
        v65 = veorq_s8(vshlq_u32(vqtbl1q_s8(v66, xmmword_273B8E7A0), v56), v65);
        v53 = vaddq_s16(v53, v60);
        v52 = vaddq_s16(v52, v60);
        v59 = vaddq_s32(v59, v61);
        v58 = vaddq_s32(v58, v61);
        v57 = vaddq_s32(v57, v61);
        v56 = vaddq_s32(v56, v61);
        v62 -= 16;
      }

      while (v62);
      v67 = v43 < v42;
      LOWORD(v41) = vaddvq_s16(vaddq_s16(v53, v52));
      v68 = veorq_s8(veorq_s8(v54, v64), veorq_s8(v63, v65));
      *v68.i8 = veor_s8(*v68.i8, *&vextq_s8(v68, v68, 8uLL));
      v40 = v68.i32[0] ^ v68.i32[1];
      if (v50 == v51)
      {
        goto LABEL_81;
      }

      v44 -= 8 * v51;
    }

    else
    {
      v47 = *(a3 + 40);
    }

    do
    {
      v69 = *v47++;
      v40 ^= v69 << v44;
      LOWORD(v41) = v41 + 8;
      v67 = v47 < v42;
      v70 = v44 >= 8;
      v44 -= 8;
    }

    while (v70 && v47 < v42);
LABEL_81:
    if (v67)
    {
LABEL_83:
      *(a3 + 48) = v40;
      *(a3 + 54) = v41;
      *(a3 + 40) = v47;
      goto LABEL_84;
    }

LABEL_82:
    *(a3 + 24) = *(a3 + 24) - v41 + 0x4000;
    LOWORD(v41) = 0x4000;
    goto LABEL_83;
  }

LABEL_84:
  if (!*(a3 + 56))
  {
    goto LABEL_104;
  }

  v71 = v28[8];
  v72 = (v71 >> 4) + 5;
  v73 = (0xFF00000000000000 - v27) >> 56;
  v74 = *v28;
  if (v73 <= 0)
  {
    *v28 = v74 - (v74 >> v72);
    v75 = v28[1];
    goto LABEL_94;
  }

  *v28 = v74 + ((0x8000 - v74) >> v72);
  v75 = v28[1];
  if (v27 == 0xFE00000000000000)
  {
LABEL_94:
    v28[1] = v75 - (v75 >> v72);
    v76 = v28[2];
    goto LABEL_95;
  }

  v28[1] = v75 + ((0x8000 - v75) >> v72);
  v76 = v28[2];
  if (v73 <= 2)
  {
LABEL_95:
    v28[2] = v76 - (v76 >> v72);
    v77 = v28[3];
    goto LABEL_96;
  }

  v28[2] = v76 + ((0x8000 - v76) >> v72);
  v77 = v28[3];
  if (v27 == 0xFC00000000000000)
  {
LABEL_96:
    v28[3] = v77 - (v77 >> v72);
    v78 = v28[4];
    goto LABEL_97;
  }

  v28[3] = v77 + ((0x8000 - v77) >> v72);
  v78 = v28[4];
  if (v73 <= 4)
  {
LABEL_97:
    v28[4] = v78 - (v78 >> v72);
    v79 = v28[5];
    goto LABEL_98;
  }

  v28[4] = v78 + ((0x8000 - v78) >> v72);
  v79 = v28[5];
  if (v27 == 0xFA00000000000000)
  {
LABEL_98:
    v28[5] = v79 - (v79 >> v72);
    v80 = v28[6];
    goto LABEL_99;
  }

  v28[5] = v79 + ((0x8000 - v79) >> v72);
  v80 = v28[6];
  if (v73 <= 6)
  {
LABEL_99:
    v81 = v80 - (v80 >> v72);
    goto LABEL_100;
  }

  v81 = v80 + ((0x8000 - v80) >> v72);
LABEL_100:
  v28[6] = v81;
  if (v71 >= 0x20)
  {
    v82 = v71;
  }

  else
  {
    v82 = v71 + 1;
  }

  v28[8] = v82;
LABEL_104:
  v83 = *(a1 + 19156);
  if (!v23)
  {
    goto LABEL_111;
  }

  if (v83 <= v23)
  {
    goto LABEL_110;
  }

  if (2 * v23 >= (v83 + 1))
  {
    if (v25 <= 2 * (v83 - v23))
    {
      goto LABEL_114;
    }

LABEL_110:
    v25 = (v83 - v25);
    goto LABEL_111;
  }

  if (2 * v23 >= v25)
  {
LABEL_114:
    if (v25)
    {
      v25 = (v23 + ((v25 + 1) >> 1));
    }

    else
    {
      v25 = (v23 - (v25 >> 1));
    }

LABEL_111:
    if ((v25 & 0x80000000) != 0)
    {
      goto LABEL_113;
    }
  }

  if (v25 <= v83)
  {
    return v25;
  }

LABEL_113:
  aom_internal_error(*(a2 + 1342), 7, "Corrupted segment_ids", v5, v84, v6, v7);
  return v25;
}

uint64_t read_mv_component_0(uint64_t a1, unsigned __int16 *a2, int a3, int a4)
{
  v4 = *(a1 + 48);
  v5 = *(a1 + 52);
  v6 = v5 >> 8;
  v7 = 8;
  v8 = 27;
  do
  {
    v9 = v5;
    v10 = v6 * (a2[v8] >> 6);
    v7 -= 4;
    v5 = v7 + (v10 >> 1);
    ++v8;
  }

  while (HIWORD(v4) < v5);
  v11 = v9 - (v10 >> 1) - v7;
  v12 = 15 - (__clz(v11) ^ 0x1F);
  v13 = *(a1 + 54) - v12;
  *(a1 + 54) = v13;
  v14 = ((v4 - (v5 << 16) + 1) << v12) - 1;
  *(a1 + 48) = v14;
  v15 = v11 << v12;
  *(a1 + 52) = v15;
  if (v13 < 0)
  {
    v16 = *(a1 + 32);
    v17 = *(a1 + 40);
    if (v17 >= v16)
    {
      v21 = *(a1 + 40);
      goto LABEL_21;
    }

    v18 = 8 - v13;
    if (v18 >= 7)
    {
      v19 = 7;
    }

    else
    {
      v19 = 8 - v13;
    }

    v20 = ((v19 ^ 0xFu) - v13) >> 3;
    if (v20 >= ~v17 + v16)
    {
      v20 = ~v17 + v16;
    }

    if (v20 >= 0xF)
    {
      v22 = v20 + 1;
      v23 = (v20 + 1) & 0x3FFFFFF0;
      v21 = &v17->u8[v23];
      v24 = 0uLL;
      v25 = v13;
      v26 = v14;
      v27 = vdupq_n_s32(v18);
      v28 = vaddq_s32(v27, xmmword_273BC3230);
      v29 = vaddq_s32(v27, xmmword_273BC3240);
      v30 = vaddq_s32(v27, xmmword_273BC3250);
      v31 = vaddq_s32(v27, xmmword_273BC3220);
      v32.i64[0] = 0x8000800080008;
      v32.i64[1] = 0x8000800080008;
      v33.i64[0] = 0x7F0000007FLL;
      v33.i64[1] = 0x7F0000007FLL;
      v34 = v23;
      v35 = 0uLL;
      v36 = 0uLL;
      v37 = 0uLL;
      do
      {
        v38 = *v17++;
        v36 = veorq_s8(vshlq_u32(vqtbl1q_s8(v38, xmmword_273B8E7B0), v29), v36);
        v35 = veorq_s8(vshlq_u32(vqtbl1q_s8(v38, xmmword_273B8E7C0), v30), v35);
        v26 = veorq_s8(vshlq_u32(vqtbl1q_s8(v38, xmmword_273B8E7D0), v31), v26);
        v37 = veorq_s8(vshlq_u32(vqtbl1q_s8(v38, xmmword_273B8E7A0), v28), v37);
        v25 = vaddq_s16(v25, v32);
        v24 = vaddq_s16(v24, v32);
        v31 = vaddq_s32(v31, v33);
        v30 = vaddq_s32(v30, v33);
        v29 = vaddq_s32(v29, v33);
        v28 = vaddq_s32(v28, v33);
        v34 -= 16;
      }

      while (v34);
      v39 = v17 < v16;
      v13 = vaddvq_s16(vaddq_s16(v25, v24));
      v40 = veorq_s8(veorq_s8(v26, v36), veorq_s8(v35, v37));
      *v40.i8 = veor_s8(*v40.i8, *&vextq_s8(v40, v40, 8uLL));
      v14 = v40.i32[0] ^ v40.i32[1];
      if (v22 == v23)
      {
        goto LABEL_20;
      }

      v18 -= 8 * v23;
    }

    else
    {
      v21 = *(a1 + 40);
    }

    do
    {
      v41 = *v21++;
      v14 ^= v41 << v18;
      v13 += 8;
      v39 = v21 < v16;
      v42 = v18 >= 8;
      v18 -= 8;
    }

    while (v42 && v21 < v16);
LABEL_20:
    if (v39)
    {
LABEL_22:
      *(a1 + 54) = v13;
      *(a1 + 40) = v21;
      goto LABEL_23;
    }

LABEL_21:
    *(a1 + 24) = *(a1 + 24) - v13 + 0x4000;
    v13 = 0x4000;
    goto LABEL_22;
  }

LABEL_23:
  v43 = *(a1 + 56);
  if (*(a1 + 56))
  {
    v44 = a2[29];
    v45 = (v44 >> 4) + 4;
    v46 = a2[27];
    if ((v8 - 28) < 1)
    {
      v47 = v46 - (v46 >> v45);
    }

    else
    {
      v47 = v46 + ((0x8000 - v46) >> v45);
    }

    a2[27] = v47;
    if (v44 < 0x20)
    {
      LOWORD(v44) = v44 + 1;
    }

    a2[29] = v44;
    LOWORD(v15) = *(a1 + 52);
  }

  v48 = 0;
  v49 = 0;
  v50 = v15;
  v51 = BYTE1(v15);
  v52 = 44;
  do
  {
    v53 = v50;
    v54 = v51 * (a2[v49++] >> 6);
    v52 -= 4;
    v50 = v52 + (v54 >> 1);
    v48 -= 0x100000000000000;
  }

  while (HIWORD(v14) < v50);
  v55 = v53 - (v54 >> 1) - v52;
  v56 = __clz(v55);
  v57 = 15 - (v56 ^ 0x1F);
  v58 = *(a1 + 54) - v57;
  *(a1 + 54) = v58;
  v59 = ((v14 - (v50 << 16) + 1) << (15 - (v56 ^ 0x1F))) - 1;
  *(a1 + 48) = v59;
  *(a1 + 52) = v55 << v57;
  if (v58 < 0)
  {
    v60 = *(a1 + 32);
    v61 = *(a1 + 40);
    if (v61 >= v60)
    {
      v65 = *(a1 + 40);
      goto LABEL_50;
    }

    v62 = 8 - v58;
    if (v62 >= 7)
    {
      v63 = 7;
    }

    else
    {
      v63 = 8 - v58;
    }

    v64 = ((v63 ^ 0xFu) - v58) >> 3;
    if (v64 >= ~v61 + v60)
    {
      v64 = ~v61 + v60;
    }

    if (v64 >= 0xF)
    {
      v66 = v64 + 1;
      v67 = (v64 + 1) & 0x3FFFFFF0;
      v65 = &v61->u8[v67];
      v68 = 0uLL;
      v69 = v58;
      v70 = v59;
      v71 = vdupq_n_s32(v62);
      v72 = vaddq_s32(v71, xmmword_273BC3230);
      v73 = vaddq_s32(v71, xmmword_273BC3240);
      v74 = vaddq_s32(v71, xmmword_273BC3250);
      v75 = vaddq_s32(v71, xmmword_273BC3220);
      v76.i64[0] = 0x8000800080008;
      v76.i64[1] = 0x8000800080008;
      v77.i64[0] = 0x7F0000007FLL;
      v77.i64[1] = 0x7F0000007FLL;
      v78 = v67;
      v79 = 0uLL;
      v80 = 0uLL;
      v81 = 0uLL;
      do
      {
        v82 = *v61++;
        v80 = veorq_s8(vshlq_u32(vqtbl1q_s8(v82, xmmword_273B8E7B0), v73), v80);
        v79 = veorq_s8(vshlq_u32(vqtbl1q_s8(v82, xmmword_273B8E7C0), v74), v79);
        v70 = veorq_s8(vshlq_u32(vqtbl1q_s8(v82, xmmword_273B8E7D0), v75), v70);
        v81 = veorq_s8(vshlq_u32(vqtbl1q_s8(v82, xmmword_273B8E7A0), v72), v81);
        v69 = vaddq_s16(v69, v76);
        v68 = vaddq_s16(v68, v76);
        v75 = vaddq_s32(v75, v77);
        v74 = vaddq_s32(v74, v77);
        v73 = vaddq_s32(v73, v77);
        v72 = vaddq_s32(v72, v77);
        v78 -= 16;
      }

      while (v78);
      v83 = v61 < v60;
      v58 = vaddvq_s16(vaddq_s16(v69, v68));
      v84 = veorq_s8(veorq_s8(v70, v80), veorq_s8(v79, v81));
      *v84.i8 = veor_s8(*v84.i8, *&vextq_s8(v84, v84, 8uLL));
      v59 = v84.i32[0] ^ v84.i32[1];
      if (v66 == v67)
      {
        goto LABEL_49;
      }

      v62 -= 8 * v67;
    }

    else
    {
      v65 = *(a1 + 40);
    }

    do
    {
      v85 = *v65++;
      v59 ^= v85 << v62;
      v58 += 8;
      v83 = v65 < v60;
      v42 = v62 >= 8;
      v62 -= 8;
    }

    while (v42 && v65 < v60);
LABEL_49:
    if (v83)
    {
LABEL_51:
      *(a1 + 48) = v59;
      *(a1 + 54) = v58;
      *(a1 + 40) = v65;
      goto LABEL_52;
    }

LABEL_50:
    *(a1 + 24) = *(a1 + 24) - v58 + 0x4000;
    v58 = 0x4000;
    goto LABEL_51;
  }

LABEL_52:
  if (!v43)
  {
    goto LABEL_78;
  }

  v86 = a2[11];
  v87 = (v86 >> 4) + 5;
  v88 = (0xFF00000000000000 - v48) >> 56;
  v89 = *a2;
  if (v88 <= 0)
  {
    *a2 = v89 - (v89 >> v87);
    v90 = a2[1];
    goto LABEL_65;
  }

  *a2 = v89 + ((0x8000 - v89) >> v87);
  v90 = a2[1];
  if (v48 == 0xFE00000000000000)
  {
LABEL_65:
    a2[1] = v90 - (v90 >> v87);
    v91 = a2[2];
    goto LABEL_66;
  }

  a2[1] = v90 + ((0x8000 - v90) >> v87);
  v91 = a2[2];
  if (v88 <= 2)
  {
LABEL_66:
    a2[2] = v91 - (v91 >> v87);
    v92 = a2[3];
    goto LABEL_67;
  }

  a2[2] = v91 + ((0x8000 - v91) >> v87);
  v92 = a2[3];
  if (v48 == 0xFC00000000000000)
  {
LABEL_67:
    a2[3] = v92 - (v92 >> v87);
    v93 = a2[4];
    goto LABEL_68;
  }

  a2[3] = v92 + ((0x8000 - v92) >> v87);
  v93 = a2[4];
  if (v88 <= 4)
  {
LABEL_68:
    a2[4] = v93 - (v93 >> v87);
    v94 = a2[5];
    goto LABEL_69;
  }

  a2[4] = v93 + ((0x8000 - v93) >> v87);
  v94 = a2[5];
  if (v48 == 0xFA00000000000000)
  {
LABEL_69:
    a2[5] = v94 - (v94 >> v87);
    v95 = a2[6];
    goto LABEL_70;
  }

  a2[5] = v94 + ((0x8000 - v94) >> v87);
  v95 = a2[6];
  if (v88 <= 6)
  {
LABEL_70:
    a2[6] = v95 - (v95 >> v87);
    v96 = a2[7];
    goto LABEL_71;
  }

  a2[6] = v95 + ((0x8000 - v95) >> v87);
  v96 = a2[7];
  if (v48 == 0xF800000000000000)
  {
LABEL_71:
    a2[7] = v96 - (v96 >> v87);
    v97 = a2[8];
    goto LABEL_72;
  }

  a2[7] = v96 + ((0x8000 - v96) >> v87);
  v97 = a2[8];
  if (v88 <= 8)
  {
LABEL_72:
    a2[8] = v97 - (v97 >> v87);
    v98 = a2[9];
    goto LABEL_73;
  }

  a2[8] = v97 + ((0x8000 - v97) >> v87);
  v98 = a2[9];
  if (v48 == 0xF600000000000000)
  {
LABEL_73:
    v99 = v98 - (v98 >> v87);
    goto LABEL_74;
  }

  v99 = v98 + ((0x8000 - v98) >> v87);
LABEL_74:
  a2[9] = v99;
  if (v86 >= 0x20)
  {
    v100 = v86;
  }

  else
  {
    v100 = v86 + 1;
  }

  a2[11] = v100;
LABEL_78:
  if (v49 != 1)
  {
    if (v49 - 2 < 0)
    {
      v104 = 0;
LABEL_122:
      v165 = (2 << (v49 + 1)) | 1;
      if (!a3)
      {
        goto LABEL_192;
      }

      goto LABEL_123;
    }

    v119 = 0;
    v104 = 0;
    v120.i64[0] = 0x8000800080008;
    v120.i64[1] = 0x8000800080008;
    v121.i64[0] = 0x7F0000007FLL;
    v121.i64[1] = 0x7F0000007FLL;
    v122 = a2 + 39;
    while (1)
    {
      v123 = &a2[3 * v119 + 39];
      v124 = *(a1 + 52);
      v125 = v124 >> 8;
      v126 = -1;
      v127 = 8;
      v128 = v122;
      do
      {
        v129 = v124;
        v130 = *v128++;
        ++v126;
        v131 = v125 * (v130 >> 6);
        v127 -= 4;
        v124 = v127 + (v131 >> 1);
      }

      while (HIWORD(v59) < v124);
      v132 = v129 - (v131 >> 1) - v127;
      v133 = 15 - (__clz(v132) ^ 0x1F);
      v134 = *(a1 + 54) - v133;
      *(a1 + 54) = v134;
      v59 = ((v59 - (v124 << 16) + 1) << v133) - 1;
      *(a1 + 48) = v59;
      *(a1 + 52) = v132 << v133;
      if ((v134 & 0x8000) == 0)
      {
        if (v43)
        {
          goto LABEL_116;
        }

        goto LABEL_92;
      }

      v135 = v134;
      v136 = *(a1 + 32);
      v137 = *(a1 + 40);
      if (v137 < v136)
      {
        break;
      }

      v141 = *(a1 + 40);
LABEL_114:
      *(a1 + 24) = *(a1 + 24) - v135 + 0x4000;
      LOWORD(v135) = 0x4000;
LABEL_115:
      *(a1 + 48) = v59;
      *(a1 + 54) = v135;
      *(a1 + 40) = v141;
      if (v43)
      {
LABEL_116:
        v160 = v123[2];
        v161 = (v160 >> 4) + 4;
        v162 = *v123;
        v163 = v162 - (v162 >> v161);
        v164 = v162 + ((0x8000 - v162) >> v161);
        if (v126 < 1)
        {
          LOWORD(v164) = v163;
        }

        *v123 = v164;
        if (v160 < 0x20)
        {
          LOWORD(v160) = v160 + 1;
        }

        v123[2] = v160;
      }

LABEL_92:
      v104 |= v126 << v119++;
      v122 += 3;
      if (v119 == v49 - 1)
      {
        goto LABEL_122;
      }
    }

    v138 = 8 - v134;
    if (v138 >= 7)
    {
      v139 = 7;
    }

    else
    {
      v139 = 8 - v134;
    }

    v140 = ((v139 ^ 0xFu) - v135) >> 3;
    if (v140 >= ~v137 + v136)
    {
      v140 = ~v137 + v136;
    }

    if (v140 >= 0xF)
    {
      v142 = v140 + 1;
      v143 = (v140 + 1) & 0x3FFFFFF0;
      v144 = 0uLL;
      v145 = v135;
      v146 = v59;
      v147 = vdupq_n_s32(v138);
      v141 = &v137->u8[v143];
      v148 = vaddq_s32(v147, xmmword_273BC3230);
      v138 -= 8 * v143;
      v149 = vaddq_s32(v147, xmmword_273BC3240);
      v150 = vaddq_s32(v147, xmmword_273BC3250);
      v151 = vaddq_s32(v147, xmmword_273BC3220);
      v152 = v143;
      v153 = 0uLL;
      v154 = 0uLL;
      v155 = 0uLL;
      do
      {
        v156 = *v137++;
        v154 = veorq_s8(vshlq_u32(vqtbl1q_s8(v156, xmmword_273B8E7B0), v149), v154);
        v153 = veorq_s8(vshlq_u32(vqtbl1q_s8(v156, xmmword_273B8E7C0), v150), v153);
        v146 = veorq_s8(vshlq_u32(vqtbl1q_s8(v156, xmmword_273B8E7D0), v151), v146);
        v155 = veorq_s8(vshlq_u32(vqtbl1q_s8(v156, xmmword_273B8E7A0), v148), v155);
        v145 = vaddq_s16(v145, v120);
        v144 = vaddq_s16(v144, v120);
        v151 = vaddq_s32(v151, v121);
        v150 = vaddq_s32(v150, v121);
        v149 = vaddq_s32(v149, v121);
        v148 = vaddq_s32(v148, v121);
        v152 -= 16;
      }

      while (v152);
      v157 = v137 < v136;
      LOWORD(v135) = vaddvq_s16(vaddq_s16(v145, v144));
      v158 = veorq_s8(veorq_s8(v146, v154), veorq_s8(v153, v155));
      *v158.i8 = veor_s8(*v158.i8, *&vextq_s8(v158, v158, 8uLL));
      v59 = v158.i32[0] ^ v158.i32[1];
      if (v142 == v143)
      {
        goto LABEL_113;
      }
    }

    else
    {
      v141 = *(a1 + 40);
    }

    do
    {
      v159 = *v141++;
      v59 ^= v159 << v138;
      LOWORD(v135) = v135 + 8;
      v157 = v141 < v136;
      v42 = v138 >= 8;
      v138 -= 8;
    }

    while (v42 && v141 < v136);
LABEL_113:
    if (v157)
    {
      goto LABEL_115;
    }

    goto LABEL_114;
  }

  v101 = a2 + 36;
  v102 = *(a1 + 52);
  v103 = v102 >> 8;
  v104 = -1;
  v105 = 8;
  do
  {
    v106 = v102;
    v107 = *v101++;
    ++v104;
    v108 = v103 * (v107 >> 6);
    v105 -= 4;
    v102 = v105 + (v108 >> 1);
  }

  while (HIWORD(v59) < v102);
  v109 = v106 - (v108 >> 1) - v105;
  v110 = 15 - (__clz(v109) ^ 0x1F);
  v111 = *(a1 + 54) - v110;
  *(a1 + 54) = v111;
  v59 = ((v59 - (v102 << 16) + 1) << v110) - 1;
  *(a1 + 48) = v59;
  *(a1 + 52) = v109 << v110;
  if (v111 < 0)
  {
    v112 = v111;
    v113 = *(a1 + 32);
    v114 = *(a1 + 40);
    if (v114 >= v113)
    {
      v118 = *(a1 + 40);
      goto LABEL_183;
    }

    v115 = 8 - v111;
    if (v115 >= 7)
    {
      v116 = 7;
    }

    else
    {
      v116 = 8 - v111;
    }

    v117 = ((v116 ^ 0xFu) - v112) >> 3;
    if (v117 >= ~v114 + v113)
    {
      v117 = ~v114 + v113;
    }

    if (v117 >= 0xF)
    {
      v237 = v117 + 1;
      v238 = (v117 + 1) & 0x3FFFFFF0;
      v118 = &v114->u8[v238];
      v239 = 0uLL;
      v240 = v112;
      v241 = v59;
      v242 = vdupq_n_s32(v115);
      v243 = vaddq_s32(v242, xmmword_273BC3230);
      v244 = vaddq_s32(v242, xmmword_273BC3240);
      v245 = vaddq_s32(v242, xmmword_273BC3250);
      v246 = vaddq_s32(v242, xmmword_273BC3220);
      v247.i64[0] = 0x8000800080008;
      v247.i64[1] = 0x8000800080008;
      v248.i64[0] = 0x7F0000007FLL;
      v248.i64[1] = 0x7F0000007FLL;
      v249 = v238;
      v250 = 0uLL;
      v251 = 0uLL;
      v252 = 0uLL;
      do
      {
        v253 = *v114++;
        v251 = veorq_s8(vshlq_u32(vqtbl1q_s8(v253, xmmword_273B8E7B0), v244), v251);
        v250 = veorq_s8(vshlq_u32(vqtbl1q_s8(v253, xmmword_273B8E7C0), v245), v250);
        v241 = veorq_s8(vshlq_u32(vqtbl1q_s8(v253, xmmword_273B8E7D0), v246), v241);
        v252 = veorq_s8(vshlq_u32(vqtbl1q_s8(v253, xmmword_273B8E7A0), v243), v252);
        v240 = vaddq_s16(v240, v247);
        v239 = vaddq_s16(v239, v247);
        v246 = vaddq_s32(v246, v248);
        v245 = vaddq_s32(v245, v248);
        v244 = vaddq_s32(v244, v248);
        v243 = vaddq_s32(v243, v248);
        v249 -= 16;
      }

      while (v249);
      v254 = v114 < v113;
      LOWORD(v112) = vaddvq_s16(vaddq_s16(v240, v239));
      v255 = veorq_s8(veorq_s8(v241, v251), veorq_s8(v250, v252));
      *v255.i8 = veor_s8(*v255.i8, *&vextq_s8(v255, v255, 8uLL));
      v59 = v255.i32[0] ^ v255.i32[1];
      if (v237 == v238)
      {
        goto LABEL_182;
      }

      v115 -= 8 * v238;
    }

    else
    {
      v118 = *(a1 + 40);
    }

    do
    {
      v256 = *v118++;
      v59 ^= v256 << v115;
      LOWORD(v112) = v112 + 8;
      v254 = v118 < v113;
      v42 = v115 >= 8;
      v115 -= 8;
    }

    while (v42 && v118 < v113);
LABEL_182:
    if (v254)
    {
LABEL_184:
      *(a1 + 48) = v59;
      *(a1 + 54) = v112;
      *(a1 + 40) = v118;
      goto LABEL_185;
    }

LABEL_183:
    *(a1 + 24) = *(a1 + 24) - v112 + 0x4000;
    LOWORD(v112) = 0x4000;
    goto LABEL_184;
  }

LABEL_185:
  if (v43)
  {
    v257 = a2[38];
    v258 = (v257 >> 4) + 4;
    v259 = a2[36];
    v260 = v259 - (v259 >> v258);
    v261 = v259 + ((0x8000 - v259) >> v258);
    if (v104 < 1)
    {
      LOWORD(v261) = v260;
    }

    a2[36] = v261;
    if (v257 < 0x20)
    {
      LOWORD(v257) = v257 + 1;
    }

    a2[38] = v257;
  }

  v165 = 1;
  if (!a3)
  {
LABEL_192:
    v171 = 6;
    v220 = 1;
    goto LABEL_209;
  }

LABEL_123:
  v166 = a2 + 22;
  if (v49 == 1)
  {
    v166 = &a2[5 * v104 + 12];
  }

  v167 = *(a1 + 52);
  v168 = v167 >> 8;
  v169 = 16;
  v170 = 0x200000000000000;
  v171 = -2;
  v172 = v166;
  v173 = 0xFF00000000000000;
  do
  {
    v174 = v167;
    v175 = *v172++;
    v176 = v168 * (v175 >> 6);
    v169 -= 4;
    v167 = v169 + (v176 >> 1);
    v170 -= 0x100000000000000;
    v173 += 0x100000000000000;
    v171 += 2;
  }

  while (HIWORD(v59) < v167);
  v177 = v174 - (v176 >> 1) - v169;
  v178 = __clz(v177);
  v179 = 15 - (v178 ^ 0x1F);
  v180 = *(a1 + 54) - v179;
  *(a1 + 54) = v180;
  v181 = ((v59 - (v167 << 16) + 1) << (15 - (v178 ^ 0x1F))) - 1;
  *(a1 + 48) = v181;
  *(a1 + 52) = v177 << v179;
  if (v180 < 0)
  {
    v182 = *(a1 + 32);
    v183 = *(a1 + 40);
    if (v183 >= v182)
    {
      v187 = *(a1 + 40);
      goto LABEL_146;
    }

    v184 = 8 - v180;
    if (v184 >= 7)
    {
      v185 = 7;
    }

    else
    {
      v185 = 8 - v180;
    }

    v186 = ((v185 ^ 0xFu) - v180) >> 3;
    if (v186 >= ~v183 + v182)
    {
      v186 = ~v183 + v182;
    }

    if (v186 >= 0xF)
    {
      v188 = v186 + 1;
      v189 = (v186 + 1) & 0x3FFFFFF0;
      v187 = &v183->u8[v189];
      v190 = 0uLL;
      v191 = v180;
      v192 = v181;
      v193 = vdupq_n_s32(v184);
      v194 = vaddq_s32(v193, xmmword_273BC3230);
      v195 = vaddq_s32(v193, xmmword_273BC3240);
      v196 = vaddq_s32(v193, xmmword_273BC3250);
      v197 = vaddq_s32(v193, xmmword_273BC3220);
      v198.i64[0] = 0x8000800080008;
      v198.i64[1] = 0x8000800080008;
      v199.i64[0] = 0x7F0000007FLL;
      v199.i64[1] = 0x7F0000007FLL;
      v200 = v189;
      v201 = 0uLL;
      v202 = 0uLL;
      v203 = 0uLL;
      do
      {
        v204 = *v183++;
        v202 = veorq_s8(vshlq_u32(vqtbl1q_s8(v204, xmmword_273B8E7B0), v195), v202);
        v201 = veorq_s8(vshlq_u32(vqtbl1q_s8(v204, xmmword_273B8E7C0), v196), v201);
        v192 = veorq_s8(vshlq_u32(vqtbl1q_s8(v204, xmmword_273B8E7D0), v197), v192);
        v203 = veorq_s8(vshlq_u32(vqtbl1q_s8(v204, xmmword_273B8E7A0), v194), v203);
        v191 = vaddq_s16(v191, v198);
        v190 = vaddq_s16(v190, v198);
        v197 = vaddq_s32(v197, v199);
        v196 = vaddq_s32(v196, v199);
        v195 = vaddq_s32(v195, v199);
        v194 = vaddq_s32(v194, v199);
        v200 -= 16;
      }

      while (v200);
      v205 = v183 < v182;
      v180 = vaddvq_s16(vaddq_s16(v191, v190));
      v206 = veorq_s8(veorq_s8(v192, v202), veorq_s8(v201, v203));
      *v206.i8 = veor_s8(*v206.i8, *&vextq_s8(v206, v206, 8uLL));
      v181 = v206.i32[0] ^ v206.i32[1];
      if (v188 == v189)
      {
        goto LABEL_145;
      }

      v184 -= 8 * v189;
    }

    else
    {
      v187 = *(a1 + 40);
    }

    do
    {
      v207 = *v187++;
      v181 ^= v207 << v184;
      v180 += 8;
      v205 = v187 < v182;
      v42 = v184 >= 8;
      v184 -= 8;
    }

    while (v42 && v187 < v182);
LABEL_145:
    if (v205)
    {
LABEL_147:
      *(a1 + 48) = v181;
      *(a1 + 54) = v180;
      *(a1 + 40) = v187;
      goto LABEL_148;
    }

LABEL_146:
    *(a1 + 24) = *(a1 + 24) - v180 + 0x4000;
    v180 = 0x4000;
    goto LABEL_147;
  }

LABEL_148:
  if (!v43)
  {
    goto LABEL_159;
  }

  v208 = v166[4];
  v209 = (v208 >> 4) + 5;
  v210 = v173 >> 56;
  v211 = *v166;
  if (v210 <= 0)
  {
    *v166 = v211 - (v211 >> v209);
    v212 = v166[1];
    goto LABEL_154;
  }

  *v166 = v211 + ((0x8000 - v211) >> v209);
  v212 = v166[1];
  if (!v170)
  {
LABEL_154:
    v166[1] = v212 - (v212 >> v209);
    v213 = v166[2];
    goto LABEL_155;
  }

  v166[1] = v212 + ((0x8000 - v212) >> v209);
  v213 = v166[2];
  if (v210 <= 2)
  {
LABEL_155:
    v214 = v213 - (v213 >> v209);
    goto LABEL_156;
  }

  v214 = v213 + ((0x8000 - v213) >> v209);
LABEL_156:
  v166[2] = v214;
  if (v208 < 0x20)
  {
    LOWORD(v208) = v208 + 1;
  }

  v166[4] = v208;
LABEL_159:
  if (!a4)
  {
    v220 = 1;
    goto LABEL_209;
  }

  v215 = v49 == 1;
  v216 = 33;
  if (v215)
  {
    v216 = 30;
  }

  v217 = &a2[v216];
  v218 = *(a1 + 52);
  v219 = v218 >> 8;
  v220 = -1;
  v221 = 8;
  v222 = v217;
  do
  {
    v223 = v218;
    v224 = *v222++;
    ++v220;
    v225 = v219 * (v224 >> 6);
    v221 -= 4;
    v218 = v221 + (v225 >> 1);
  }

  while (HIWORD(v181) < v218);
  v226 = v223 - (v225 >> 1) - v221;
  v227 = 15 - (__clz(v226) ^ 0x1F);
  v228 = *(a1 + 54) - v227;
  *(a1 + 54) = v228;
  v229 = ((v181 - (v218 << 16) + 1) << v227) - 1;
  *(a1 + 48) = v229;
  *(a1 + 52) = v226 << v227;
  if ((v228 & 0x8000) == 0)
  {
    goto LABEL_203;
  }

  v230 = v228;
  v232 = *(a1 + 32);
  v231 = *(a1 + 40);
  if (v231 >= v232)
  {
    v236 = *(a1 + 40);
LABEL_201:
    *(a1 + 24) = *(a1 + 24) - v230 + 0x4000;
    LOWORD(v230) = 0x4000;
    goto LABEL_202;
  }

  v233 = 8 - v228;
  if (v233 >= 7)
  {
    v234 = 7;
  }

  else
  {
    v234 = 8 - v228;
  }

  v235 = ((v234 ^ 0xFu) - v230) >> 3;
  if (v235 >= ~v231 + v232)
  {
    v235 = ~v231 + v232;
  }

  if (v235 >= 0xF)
  {
    v262 = v235 + 1;
    v263 = (v235 + 1) & 0x3FFFFFF0;
    v236 = &v231->u8[v263];
    v264 = 0uLL;
    v265 = v230;
    v266 = v229;
    v267 = vdupq_n_s32(v233);
    v268 = vaddq_s32(v267, xmmword_273BC3230);
    v269 = vaddq_s32(v267, xmmword_273BC3240);
    v270 = vaddq_s32(v267, xmmword_273BC3250);
    v271 = vaddq_s32(v267, xmmword_273BC3220);
    v272.i64[0] = 0x8000800080008;
    v272.i64[1] = 0x8000800080008;
    v273.i64[0] = 0x7F0000007FLL;
    v273.i64[1] = 0x7F0000007FLL;
    v274 = v263;
    v275 = 0uLL;
    v276 = 0uLL;
    v277 = 0uLL;
    do
    {
      v278 = *v231++;
      v276 = veorq_s8(vshlq_u32(vqtbl1q_s8(v278, xmmword_273B8E7B0), v269), v276);
      v275 = veorq_s8(vshlq_u32(vqtbl1q_s8(v278, xmmword_273B8E7C0), v270), v275);
      v266 = veorq_s8(vshlq_u32(vqtbl1q_s8(v278, xmmword_273B8E7D0), v271), v266);
      v277 = veorq_s8(vshlq_u32(vqtbl1q_s8(v278, xmmword_273B8E7A0), v268), v277);
      v265 = vaddq_s16(v265, v272);
      v264 = vaddq_s16(v264, v272);
      v271 = vaddq_s32(v271, v273);
      v270 = vaddq_s32(v270, v273);
      v269 = vaddq_s32(v269, v273);
      v268 = vaddq_s32(v268, v273);
      v274 -= 16;
    }

    while (v274);
    v279 = v231 < v232;
    LOWORD(v230) = vaddvq_s16(vaddq_s16(v265, v264));
    v280 = veorq_s8(veorq_s8(v266, v276), veorq_s8(v275, v277));
    *v280.i8 = veor_s8(*v280.i8, *&vextq_s8(v280, v280, 8uLL));
    v229 = v280.i32[0] ^ v280.i32[1];
    if (v262 == v263)
    {
      goto LABEL_200;
    }

    v233 -= 8 * v263;
  }

  else
  {
    v236 = *(a1 + 40);
  }

  do
  {
    v281 = *v236++;
    v229 ^= v281 << v233;
    LOWORD(v230) = v230 + 8;
    v279 = v236 < v232;
    v42 = v233 >= 8;
    v233 -= 8;
  }

  while (v42 && v236 < v232);
LABEL_200:
  if (!v279)
  {
    goto LABEL_201;
  }

LABEL_202:
  *(a1 + 48) = v229;
  *(a1 + 54) = v230;
  *(a1 + 40) = v236;
LABEL_203:
  if (v43)
  {
    v282 = v217[2];
    v283 = (v282 >> 4) + 4;
    v284 = *v217;
    v285 = v284 - (v284 >> v283);
    v286 = v284 + ((0x8000 - v284) >> v283);
    if (v220 < 1)
    {
      LOWORD(v286) = v285;
    }

    *v217 = v286;
    if (v282 < 0x20)
    {
      LOWORD(v282) = v282 + 1;
    }

    v217[2] = v282;
  }

LABEL_209:
  v287 = (v220 | (8 * v104) | v171) + v165;
  if (v8 == 28)
  {
    return v287;
  }

  else
  {
    return -v287;
  }
}