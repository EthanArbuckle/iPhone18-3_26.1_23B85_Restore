void vp9_encode_block_intra(int a1, int a2, int a3, int a4, int a5, unsigned int a6, uint64_t a7)
{
  v179 = (*a7 + 25536);
  v11 = **(*a7 + 25360);
  v177 = *a7;
  v12 = *a7 + 8304 * a1;
  v13 = *a7 + 24912 + 136 * a1;
  v14 = b_width_log2_lookup[a5];
  v15 = 4 << v14;
  v16 = *(v12 + 8224);
  v178 = *(v13 + 24);
  v17 = *(v13 + 16) + 4 * (a4 + v178 * a3);
  v18 = *(v12 + 8216) + 4 * (a4 + v16 * a3);
  v19 = 4 * (a4 + (4 << v14) * a3);
  if (a6)
  {
    v20 = v11 + 6;
    if (!a1)
    {
      v20 = v11 + 1;
    }

    v21 = *v20;
    if (a6 == 3)
    {
      v22 = 0;
      v23 = &off_279EA2DC0;
    }

    else
    {
      if (a1 > 0 || *(*a7 + 25540) || v11[8] > 0)
      {
        v22 = 0;
      }

      else
      {
        v22 = intra_mode_to_tx_type_lookup[v11[1]];
      }

      v23 = &vp9_scan_orders + 12 * a6 + 3 * v22;
    }

    goto LABEL_17;
  }

  v23 = &vp9_scan_orders;
  if (a1 > 0)
  {
    v22 = 0;
LABEL_16:
    v21 = v11[6];
    goto LABEL_17;
  }

  if (*(*a7 + 25540) || v11[8] > 0)
  {
    v22 = 0;
    if (a1)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v123 = v11 + 1;
    if (*v11 < 3u)
    {
      v123 = &v11[12 * a2 + 20];
    }

    v22 = intra_mode_to_tx_type_lookup[*v123];
    v23 = &vp9_scan_orders + 3 * v22;
    if (a1)
    {
      goto LABEL_16;
    }
  }

  v124 = v11 + 1;
  v125 = *v11;
  v126 = &v11[12 * a2 + 20];
  if (v125 >= 3)
  {
    v126 = v124;
  }

  v21 = *v126;
LABEL_17:
  v165 = v23;
  v168 = v22;
  v159 = v19;
  v170 = (v12 + 2 * v19);
  v24 = v18;
  v25 = *(v12 + 8224);
  if (!*(*a7 + 82216))
  {
    v26 = *(*a7 + 82220);
    if (v26)
    {
      v24 = v18;
    }

    else
    {
      v24 = v17;
    }

    if (v26)
    {
      v25 = *(v12 + 8224);
    }

    else
    {
      v25 = *(v13 + 24);
    }
  }

  v174 = *a7 + 82212;
  v171 = *(v12 + 8208);
  v166 = *a7 + 24912 + 136 * a1;
  v167 = *(v12 + 8200);
  v163 = (*a7 + 8304 * a1);
  v164 = *(v12 + 0x2000);
  v169 = *v13;
  v27 = *(*a7 + 25592);
  v173 = v17;
  vp9_predict_intra_block(*a7 + 24912, v14, a6, v21, v24, v25, v17, v178, a4, a3, a1);
  if (!v179[14])
  {
    v157 = v14;
    v38 = (4 << a6);
    v33 = (4 << v14);
    v31 = a7;
    if ((*(*(v177 + 25440) + 152) & 8) != 0)
    {
      v40 = 2 * v18;
      v32 = v173;
      v39 = v174;
      v41 = 2 * v173;
      v30 = a1;
      if (v38 < 16)
      {
        if (v38 < 8)
        {
          if (v38 >= 4)
          {
            v51 = 0;
            v52 = (2 * v18);
            v53 = (2 * v173);
            v54 = v170;
            do
            {
              v55 = *v52++;
              v56 = v55;
              v57 = *v53++;
              *v54++ = vsub_s16(v56, v57);
              v51 += 4;
            }

            while (v51 < v38);
            v58 = 0;
            v59 = (v41 + 2 * v178);
            v60 = (v40 + 2 * v16);
            v61 = v60;
            v62 = v59;
            v63 = (v170 + 2 * v15);
            do
            {
              v64 = *v61++;
              v65 = v64;
              v66 = *v62++;
              *v63++ = vsub_s16(v65, v66);
              v58 += 4;
            }

            while (v58 < v38);
            v67 = 0;
            v68 = (v59 + 2 * v178);
            v69 = (v60 + 2 * v16);
            v70 = v69;
            v71 = v68;
            v72 = (v170 + 2 * v15 + 2 * v15);
            do
            {
              v73 = *v70++;
              v74 = v73;
              v75 = *v71++;
              *v72++ = vsub_s16(v74, v75);
              v67 += 4;
            }

            while (v67 < v38);
            v76 = 0;
            v77 = (v68 + 2 * v178);
            v78 = (v69 + 2 * v16);
            v79 = v78;
            v80 = v77;
            v81 = (v170->i64 + 2 * v15 + 2 * v15 + 2 * v15);
            do
            {
              v82 = *v79++;
              v83 = v82;
              v84 = *v80++;
              *v29.i8 = v84;
              *v28.i8 = vsub_s16(v83, v84);
              *v81++ = v28.i64[0];
              v76 += 4;
            }

            while (v76 < v38);
            if (a6)
            {
              v85 = 0;
              v86 = (v77 + 2 * v178);
              v87 = (v78 + 2 * v16);
              v88 = v87;
              v89 = v86;
              v90 = (v170 + 2 * v15 + 2 * v15 + 2 * v15 + 2 * v15);
              do
              {
                v91 = *v88++;
                v92 = v91;
                v93 = *v89++;
                *v90++ = vsub_s16(v92, v93);
                v85 += 4;
              }

              while (v85 < v38);
              v94 = 0;
              v95 = (v86 + 2 * v178);
              v96 = (v87 + 2 * v16);
              v97 = v96;
              v98 = v95;
              v99 = (v170 + 2 * v15 + 2 * v15 + 2 * v15 + 2 * v15 + 2 * v15);
              do
              {
                v100 = *v97++;
                v101 = v100;
                v102 = *v98++;
                *v99++ = vsub_s16(v101, v102);
                v94 += 4;
              }

              while (v94 < v38);
              v103 = 0;
              v104 = (v170->i64 + 2 * v15 + 2 * v15 + 2 * v15 + 2 * v15 + 2 * v15 + 2 * v15);
              v105 = (v95 + 2 * v178);
              v106 = (v96 + 2 * v16);
              do
              {
                v107 = *v106++;
                v108 = v107;
                v109 = *v105++;
                *v29.i8 = v109;
                *v28.i8 = vsub_s16(v108, v109);
                *v104++ = v28.i64[0];
                v103 += 4;
              }

              while (v103 < v38);
            }
          }
        }

        else
        {
          v47 = v170;
          v48 = 4 << a6;
          do
          {
            v49 = 0;
            for (i = 0; i < v38; i += 8)
            {
              v29 = *(v41 + v49 * 16);
              v28 = vsubq_s16(*(v40 + v49 * 16), v29);
              v47[v49++] = v28;
            }

            v47 = (v47 + 2 * v15);
            v41 += 2 * v178;
            v40 += 2 * v16;
            --v48;
          }

          while (v48);
        }
      }

      else
      {
        v42 = v170;
        v43 = 4 << a6;
        do
        {
          v44 = 0;
          for (j = 0; j < v38; j += 16)
          {
            v28 = vsubq_s16(*(v40 + v44), *(v41 + v44));
            v29 = vsubq_s16(*(v40 + v44 + 16), *(v41 + v44 + 16));
            v46 = &v42[v44 / 0x10];
            *v46 = v28;
            v46[1] = v29;
            v44 += 32;
          }

          v40 += 2 * v16;
          v41 += 2 * v178;
          v42 = (v42 + 2 * v15);
          --v43;
        }

        while (v43);
      }
    }

    else
    {
      vpx_subtract_block_neon(v38, 4 << a6, v170, v15, v18, v16, v173, v178);
      v32 = v173;
      v39 = v174;
      v30 = a1;
    }

    v37 = *(a7 + 8);
    if (!v37)
    {
      v34 = 0;
      v35 = 0;
      v36 = 0;
      goto LABEL_103;
    }

    v110 = *a7;
    if (v37 == 3)
    {
      if ((*(*(v110 + 25440) + 152) & 8) == 0)
      {
        v111 = *(a7 + 32);
        if (v111)
        {
          v112 = *(a7 + 24);
          if (v112)
          {
            v113 = txsize_to_bsize[a6];
            v114 = *(*(v166 + 120) + 2) >> 3;
            v115 = num_4x4_blocks_wide_lookup[v113];
            v116 = num_4x4_blocks_high_lookup[v113];
            if (a6 && ((v118 = v110 + 24576, v117 = *(v118 + 836), LODWORD(v118) = (*(v118 + 828) >> (*(v166 + 8) + 5)) - a4 + num_4x4_blocks_wide_lookup[a5], v119 = (v117 >> (*(v166 + 12) + 5)) - a3 + num_4x4_blocks_high_lookup[a5], v118 >= v115) ? (v120 = v119 < v116) : (v120 = 1), v120))
            {
              v153 = *(a7 + 32);
              v154 = *(*(v166 + 120) + 2) >> 3;
              v162 = a7;
              v121 = v119 >= v116 ? num_4x4_blocks_high_lookup[v113] : v119;
              v118 = v118 >= v115 ? num_4x4_blocks_wide_lookup[v113] : v118;
              v155 = *(a7 + 24);
              v156 = v118;
              if (v121 < 1 || v118 < 1)
              {
                v132 = 0;
              }

              else
              {
                v130 = 0;
                v131 = 0;
                v132 = 0;
                v133 = v159;
                v160 = 16 << v157;
                v158 = v177 + 8304 * a1 + 2 * v133;
                do
                {
                  v134 = v121;
                  v135 = v156;
                  v136 = (v158 + 2 * v130);
                  do
                  {
                    v132 += vpx_sum_squares_2d_i16_neon(v136++, v33, 4);
                    --v135;
                  }

                  while (v135);
                  ++v131;
                  v130 += v160;
                  v121 = v134;
                }

                while (v131 != v134);
              }

              v112 = v155;
              v127 = 4 * v156;
              v31 = v162;
              v114 = v154;
              v111 = v153;
            }

            else
            {
              v127 = 4 * v115;
              v128 = num_4x4_blocks_high_lookup[v113];
              v129 = vpx_sum_squares_2d_i16_neon(v170, v33, 4 * v115);
              LODWORD(v121) = v128;
              v132 = v129;
            }

            *v111 = v132;
            *v112 = 1;
            *v28.i64 = v132;
            *v29.i64 = *(v31 + 16) * (v114 * v114 * v127 * 4 * v121);
            v30 = a1;
            v32 = v173;
            if (*v29.i64 < v132)
            {
              goto LABEL_26;
            }
          }
        }
      }
    }

    else if (v37 == 2)
    {
      v28.i64[0] = *(a7 + 16);
      if (*v28.i64 > 0.0)
      {
        v29.i64[0] = *(v110 + 25608);
        if (*v29.i64 > *v28.i64)
        {
          goto LABEL_26;
        }
      }
    }

LABEL_98:
    v35 = (*(v31 + 40) + a4);
    v36 = (*(v31 + 48) + a3);
    if (*v36)
    {
      v37 = *v35 + 1;
    }

    else
    {
      v37 = *v35;
    }

    v34 = 1;
    goto LABEL_102;
  }

  v30 = a1;
  v31 = a7;
  v32 = v173;
  v33 = (4 << v14);
  if (!v27)
  {
    goto LABEL_98;
  }

LABEL_26:
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
LABEL_102:
  v39 = v174;
LABEL_103:
  v137 = a2 << 6;
  v175 = (v171 + 2 * a2);
  if ((*(*(v177 + 25440) + 152) & 8) != 0)
  {
    v140 = (2 * v32);
    v141 = v179[14];
    if (a6 != 1)
    {
      if (a6 != 2)
      {
        if (a6 == 3)
        {
          if (v141)
          {
            if (v34)
            {
              goto LABEL_116;
            }
          }

          else
          {
            if (*v39)
            {
              vpx_highbd_fdct32x32_rd_neon(v170, v167 + v137, v33);
            }

            else
            {
              vpx_highbd_fdct32x32_neon(v170, v167 + v137, v33);
            }

            vpx_highbd_quantize_b_32x32_neon((v167 + v137), v163, (v164 + v137), (v169 + v137), *(v166 + 120), v175, v165);
            v30 = a1;
            if (v34)
            {
LABEL_116:
              v142 = vp9_optimize_b(v177, v30, a2, 3u, v37) > 0;
              *v36 = v142;
              *v35 = v142;
              if (*(v39 + 4))
              {
                goto LABEL_194;
              }

              goto LABEL_182;
            }
          }

          if (*(v39 + 4))
          {
            goto LABEL_194;
          }

LABEL_182:
          v151 = *v175;
          if (!*v175)
          {
            return;
          }

          v152 = *v179;
          if (v151 == 1)
          {
            vpx_highbd_idct32x32_1_add_neon((v169 + v137), v140, v178, v152);
          }

          else if (v151 > 0x22)
          {
            if (v151 > 0x87)
            {
              vpx_highbd_idct32x32_1024_add_neon(v169 + v137, v140, v178);
            }

            else
            {
              vpx_highbd_idct32x32_135_add_neon((v169 + v137), v140, v178, v152);
            }
          }

          else
          {
            vpx_highbd_idct32x32_34_add_neon(v169 + v137, v140, v178, v152);
          }

          goto LABEL_194;
        }

        if (v141)
        {
          if (v34)
          {
            goto LABEL_140;
          }
        }

        else
        {
          if (v168)
          {
            vp9_highbd_fht4x4_neon(v170, (v167 + v137), v33, v168, v28, v29);
          }

          else
          {
            (*(v39 + 196))(v170, v167 + v137, v33);
          }

          vpx_highbd_quantize_b_neon((v167 + v137), 16, v163, (v164 + v137), (v169 + v137), *(v166 + 120), v175, v165);
          v30 = a1;
          if (v34)
          {
LABEL_140:
            v148 = vp9_optimize_b(v177, v30, a2, a6, v37) > 0;
            *v36 = v148;
            *v35 = v148;
            if (*(v39 + 4))
            {
              goto LABEL_194;
            }

LABEL_197:
            if (!*v175)
            {
              return;
            }

            if (v168)
            {
              vp9_highbd_iht4x4_16_add_neon((v169 + v137), v140->i64, v178, v168, *v179);
            }

            else
            {
              (*(v39 + 212))(v169 + v137, v140, v178);
            }

            goto LABEL_194;
          }
        }

        if (*(v39 + 4))
        {
          goto LABEL_194;
        }

        goto LABEL_197;
      }

      if (v141)
      {
        if (v34)
        {
          goto LABEL_124;
        }
      }

      else
      {
        if (v168)
        {
          vp9_highbd_fht16x16_neon(v170, v167 + v137, v33, v168);
        }

        else
        {
          vpx_highbd_fdct16x16_neon(v170, (v167 + v137), v33);
        }

        vpx_highbd_quantize_b_neon((v167 + v137), 256, v163, (v164 + v137), (v169 + v137), *(v166 + 120), v175, v165);
        v30 = a1;
        if (v34)
        {
LABEL_124:
          v144 = vp9_optimize_b(v177, v30, a2, 2u, v37) > 0;
          *v36 = v144;
          *v35 = v144;
          if (*(v39 + 4))
          {
            goto LABEL_194;
          }

          goto LABEL_166;
        }
      }

      if (*(v39 + 4))
      {
        goto LABEL_194;
      }

LABEL_166:
      if (!*v175)
      {
        return;
      }

      vp9_highbd_iht16x16_add(v168, (v169 + v137), v140, v178, *v175, *v179);
      goto LABEL_194;
    }

    if (v141)
    {
      if (v34)
      {
        goto LABEL_132;
      }
    }

    else
    {
      if (v168)
      {
        vp9_highbd_fht8x8_neon(v170, (v167 + v137), v33, v168);
      }

      else
      {
        vpx_highbd_fdct8x8_neon(v170, (v167 + v137), v33);
      }

      vpx_highbd_quantize_b_neon((v167 + v137), 64, v163, (v164 + v137), (v169 + v137), *(v166 + 120), v175, v165);
      v30 = a1;
      if (v34)
      {
LABEL_132:
        v146 = vp9_optimize_b(v177, v30, a2, 1u, v37) > 0;
        *v36 = v146;
        *v35 = v146;
        if (*(v39 + 4))
        {
          goto LABEL_194;
        }

        goto LABEL_171;
      }
    }

    if (*(v39 + 4))
    {
      goto LABEL_194;
    }

LABEL_171:
    v150 = *v175;
    if (!*v175)
    {
      return;
    }

    if (v168)
    {
      vp9_highbd_iht8x8_64_add_neon((v169 + v137), v140, v178, v168, *v179);
    }

    else if (v150 == 1)
    {
      vpx_highbd_idct8x8_1_add_neon((v169 + v137), v140, v178, *v179);
    }

    else if (v150 > 0xC)
    {
      vpx_highbd_idct8x8_64_add_neon((v169 + v137), v140, v178, *v179);
    }

    else
    {
      vpx_highbd_idct8x8_12_add_neon((v169 + v137), v140, v178, *v179);
    }

    goto LABEL_194;
  }

  v138 = v179[14];
  if (a6 == 1)
  {
    if (v138)
    {
      if (v34)
      {
        goto LABEL_128;
      }
    }

    else
    {
      vp9_fht8x8_neon(v170, (v167 + v137), v33, v168);
      vpx_quantize_b_neon((v167 + v137), 64, v163, (v164 + v137), (v169 + v137), *(v166 + 120), v175, v165);
      v32 = v173;
      v30 = a1;
      if (v34)
      {
LABEL_128:
        v145 = vp9_optimize_b(v177, v30, a2, 1u, v37);
        v32 = v173;
        *v36 = v145 > 0;
        *v35 = v145 > 0;
        if (*(v39 + 4))
        {
          goto LABEL_194;
        }

        goto LABEL_150;
      }
    }

    if (*(v39 + 4))
    {
      goto LABEL_194;
    }

LABEL_150:
    v149 = *v175;
    if (!*v175)
    {
      return;
    }

    if (v168)
    {
      vp9_iht8x8_64_add_neon((v169 + v137), v32, v178, v168);
    }

    else if (v149 == 1)
    {
      vpx_idct8x8_1_add_neon((v169 + v137), v32, v178);
    }

    else if (v149 > 0xC)
    {
      vpx_idct8x8_64_add_neon((v169 + v137), v32, v178);
    }

    else
    {
      vpx_idct8x8_12_add_neon((v169 + v137), v32, v178);
    }

    goto LABEL_194;
  }

  if (a6 == 2)
  {
    if (v138)
    {
      if (v34)
      {
        goto LABEL_120;
      }
    }

    else
    {
      vp9_fht16x16_neon(v170, v167 + v137, v33, v168);
      vpx_quantize_b_neon((v167 + v137), 256, v163, (v164 + v137), (v169 + v137), *(v166 + 120), v175, v165);
      v32 = v173;
      v30 = a1;
      if (v34)
      {
LABEL_120:
        v143 = vp9_optimize_b(v177, v30, a2, 2u, v37);
        v32 = v173;
        *v36 = v143 > 0;
        *v35 = v143 > 0;
        if (*(v39 + 4))
        {
          goto LABEL_194;
        }

        goto LABEL_144;
      }
    }

    if (*(v39 + 4))
    {
      goto LABEL_194;
    }

LABEL_144:
    if (!*v175)
    {
      return;
    }

    vp9_iht16x16_add(v168, (v169 + v137), v32, v178, *v175);
    goto LABEL_194;
  }

  if (a6 != 3)
  {
    if (v138)
    {
      if (v34)
      {
        goto LABEL_136;
      }
    }

    else
    {
      if (v168)
      {
        vp9_fht4x4_neon(v170, (v167 + v137), v33, v168, *v28.i8);
      }

      else
      {
        (*(v39 + 196))(v170, v167 + v137, v33);
      }

      vpx_quantize_b_neon((v167 + v137), 16, v163, (v164 + v137), (v169 + v137), *(v166 + 120), v175, v165);
      v30 = a1;
      v32 = v173;
      if (v34)
      {
LABEL_136:
        v147 = vp9_optimize_b(v177, v30, a2, a6, v37);
        v32 = v173;
        *v36 = v147 > 0;
        *v35 = v147 > 0;
        if (*(v39 + 4))
        {
          goto LABEL_194;
        }

        goto LABEL_188;
      }
    }

    if (*(v39 + 4))
    {
      goto LABEL_194;
    }

LABEL_188:
    if (!*v175)
    {
      return;
    }

    if (v168)
    {
      vp9_iht4x4_16_add_neon((v169 + v137), v32, v178, v168);
    }

    else
    {
      (*(v39 + 204))(v169 + v137, v32, v178);
    }

    goto LABEL_194;
  }

  if (v138)
  {
    if (v34)
    {
      goto LABEL_109;
    }
  }

  else
  {
    if (*v39)
    {
      vpx_fdct32x32_rd_neon(v170, (v167 + v137), v33);
    }

    else
    {
      vpx_fdct32x32_neon(v170, (v167 + v137), v33);
    }

    vpx_quantize_b_32x32_neon((v167 + v137), v163, (v164 + v137), (v169 + v137), *(v166 + 120), v175, v165);
    v30 = a1;
    v32 = v173;
    if (v34)
    {
LABEL_109:
      v139 = vp9_optimize_b(v177, v30, a2, 3u, v37);
      v32 = v173;
      *v36 = v139 > 0;
      *v35 = v139 > 0;
      if (!*(v39 + 4))
      {
        goto LABEL_177;
      }

      goto LABEL_194;
    }
  }

  if (!*(v39 + 4))
  {
LABEL_177:
    if (!*v175)
    {
      return;
    }

    vp9_idct32x32_add((v169 + v137), v32, v178, *v175);
  }

LABEL_194:
  if (*v175)
  {
    **(v31 + 56) = 0;
  }
}

void vp9_encode_intra_block_plane(uint64_t a1, uint64_t a2, int a3, unsigned int a4)
{
  v6 = (a1 + 25404);
  v7 = a1 + 24912;
  memset(v44, 0, 48);
  memset(v43, 0, sizeof(v43));
  v35 = a1;
  v36 = a4;
  v9 = &v43[a3];
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v40 = v9;
  v10 = &v44[a3];
  v11 = **(a1 + 25360);
  v41 = v10;
  v42 = v11 + 3;
  if (a4 && *(a1 + 82208) && (!*(a1 + 25592) || !*(a1 + 25596)))
  {
    v20 = v7 + 136 * a3;
    if (a3)
    {
      v22 = &uv_txsize_lookup[16 * *v11 + 4 * v11[2] + 2 * *(v20 + 8) + *(v20 + 12)];
    }

    else
    {
      v22 = v11 + 2;
    }

    v23 = a2;
    vp9_get_entropy_contexts(a2, *v22, v20, v9, v10);
    LODWORD(a2) = v23;
    v11 = **(a1 + 25360);
    v12 = v7 + 136 * a3;
    if (a3)
    {
      goto LABEL_6;
    }
  }

  else
  {
    LODWORD(v36) = 0;
    v12 = v7 + 136 * a3;
    if (a3)
    {
LABEL_6:
      v13 = *v11;
      v14 = v11[2];
      v16 = *(v12 + 8);
      v15 = *(v12 + 12);
      v17 = v16;
      v18 = v15;
      v19 = &uv_txsize_lookup[16 * v13 + 4 * v14 + 2 * v16 + v15];
      goto LABEL_12;
    }
  }

  v19 = v11 + 2;
  v16 = *(v12 + 8);
  v15 = *(v12 + 12);
  v17 = v16;
  v18 = v15;
LABEL_12:
  v24 = ss_size_lookup[4 * a2 + 2 * v17 + v18];
  v25 = (*v6 >> (v16 + 5)) & (*v6 >> 31);
  v26 = v25 + num_4x4_blocks_wide_lookup[v24];
  v34 = ((v6[2] >> (v15 + 5)) & (v6[2] >> 31)) + num_4x4_blocks_high_lookup[v24];
  if (v34 >= 1 && v26 >= 1)
  {
    v28 = 0;
    v29 = 0;
    v30 = *v19;
    v31 = -v25 >> v30 << (2 * v30);
    v32 = 1 << v30;
    do
    {
      v33 = 0;
      do
      {
        vp9_encode_block_intra(a3, v28, v29, v33, v24, v30, &v35);
        v28 += 1 << (2 * v30);
        v33 += v32;
      }

      while (v33 < v26);
      v28 += v31;
      v29 += v32;
    }

    while (v29 < v34);
  }
}

uint64_t vp9_write_nmv_probs(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 4904);
  convert_distribution(0, vp9_mv_joint_tree, &v16, a4);
  update_mv(a3, v16, v17, v6 + 1970);
  update_mv(a3, v18, v19, v6 + 1971);
  update_mv(a3, v20, v21, v6 + 1972);
  v7 = 0;
  v15 = a4;
  v8 = a4 + 16;
  v9 = 1;
  do
  {
    v10 = v9;
    v11 = &v6[33 * v7 + 1973];
    v12 = (v8 + 204 * v7);
    update_mv(a3, *v12, v12[1], v11);
    convert_distribution(0, vp9_mv_class_tree, &v16, (v12 + 2));
    update_mv(a3, v16, v17, v11 + 1);
    update_mv(a3, v18, v19, v11 + 2);
    update_mv(a3, v20, v21, v11 + 3);
    update_mv(a3, v22, v23, v11 + 4);
    update_mv(a3, v24, v25, v11 + 5);
    update_mv(a3, v26, v27, v11 + 6);
    update_mv(a3, v28, v29, v11 + 7);
    update_mv(a3, v30, v31, v11 + 8);
    update_mv(a3, v32, v33, v11 + 9);
    update_mv(a3, v34, v35, v11 + 10);
    convert_distribution(0, &vp9_mv_class0_tree, &v16, (v12 + 13));
    update_mv(a3, v16, v17, v11 + 11);
    update_mv(a3, v12[15], v12[16], v11 + 12);
    update_mv(a3, v12[17], v12[18], v11 + 13);
    update_mv(a3, v12[19], v12[20], v11 + 14);
    update_mv(a3, v12[21], v12[22], v11 + 15);
    update_mv(a3, v12[23], v12[24], v11 + 16);
    update_mv(a3, v12[25], v12[26], v11 + 17);
    update_mv(a3, v12[27], v12[28], v11 + 18);
    update_mv(a3, v12[29], v12[30], v11 + 19);
    update_mv(a3, v12[31], v12[32], v11 + 20);
    update_mv(a3, v12[33], v12[34], v11 + 21);
    v9 = 0;
    v7 = 1;
  }

  while ((v10 & 1) != 0);
  convert_distribution(0, vp9_mv_fp_tree, &v16, (v15 + 39));
  update_mv(a3, v16, v17, v6 + 1995);
  update_mv(a3, v18, v19, v6 + 1996);
  update_mv(a3, v20, v21, v6 + 1997);
  convert_distribution(0, vp9_mv_fp_tree, &v16, (v15 + 43));
  update_mv(a3, v16, v17, v6 + 1998);
  update_mv(a3, v18, v19, v6 + 1999);
  update_mv(a3, v20, v21, v6 + 2000);
  convert_distribution(0, vp9_mv_fp_tree, &v16, (v15 + 47));
  update_mv(a3, v16, v17, v6 + 2001);
  update_mv(a3, v18, v19, v6 + 2002);
  update_mv(a3, v20, v21, v6 + 2003);
  convert_distribution(0, vp9_mv_fp_tree, &v16, (v15 + 90));
  update_mv(a3, v16, v17, v6 + 2028);
  update_mv(a3, v18, v19, v6 + 2029);
  update_mv(a3, v20, v21, v6 + 2030);
  convert_distribution(0, vp9_mv_fp_tree, &v16, (v15 + 94));
  update_mv(a3, v16, v17, v6 + 2031);
  update_mv(a3, v18, v19, v6 + 2032);
  update_mv(a3, v20, v21, v6 + 2033);
  convert_distribution(0, vp9_mv_fp_tree, &v16, (v15 + 98));
  update_mv(a3, v16, v17, v6 + 2034);
  update_mv(a3, v18, v19, v6 + 2035);
  result = update_mv(a3, v20, v21, v6 + 2036);
  if (a2)
  {
    update_mv(a3, v15[51], v15[52], v6 + 2004);
    update_mv(a3, v15[53], v15[54], v6 + 2005);
    update_mv(a3, v15[102], v15[103], v6 + 2037);
    return update_mv(a3, v15[104], v15[105], v6 + 2038);
  }

  return result;
}

uint64_t update_mv(uint64_t result, unsigned int a2, unsigned int a3, _BYTE *a4)
{
  if (a3 + a2)
  {
    v4 = (((a3 + a2) >> 1) + (a2 << 8)) / (a3 + a2);
    v5 = v4 | ((255 - v4) >> 23);
  }

  else
  {
    LOBYTE(v5) = 0x80;
  }

  v6 = vp9_prob_cost[*a4] * a2 + vp9_prob_cost[256 - *a4] * a3 + 12;
  v7 = vp9_prob_cost[v5 | 1] * a2 + vp9_prob_cost[256 - (v5 | 1u)] * a3 + 6656;
  v8 = *(result + 4);
  v9 = *(result + 8);
  v10 = (252 * v8 - 252) >> 8;
  v11 = v8 - (v10 + 1);
  if (v6 <= v7)
  {
    v12 = v10 + 1;
  }

  else
  {
    v12 = v11;
  }

  if (v6 > v7)
  {
    v13 = v10 + 1;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13 + *result;
  v15 = vpx_norm[v12];
  v16 = v9 + v15;
  if (v9 + v15 >= 0)
  {
    if (*(result + 12))
    {
      goto LABEL_24;
    }

    if (((v14 << ~v9) & 0x80000000) != 0)
    {
      v19 = *(result + 16);
      v20 = v19 - 1;
      if (v19 >= 1)
      {
        while (1)
        {
          --v19;
          v21 = *(result + 24);
          if (*(v21 + v19) != 255)
          {
            break;
          }

          *(v21 + v19) = 0;
          if (v19 <= 0)
          {
            v20 = -1;
            goto LABEL_22;
          }
        }

        v20 = v19;
      }

LABEL_22:
      ++*(*(result + 24) + v20);
      v17 = *(result + 16);
      if (v17 < *(result + 20))
      {
        goto LABEL_14;
      }
    }

    else
    {
      v17 = *(result + 16);
      if (v17 < *(result + 20))
      {
LABEL_14:
        v18 = *(result + 24);
        *(result + 16) = v17 + 1;
        *(v18 + v17) = v14 >> (v9 + 24);
        goto LABEL_24;
      }
    }

    *(result + 12) = 1;
LABEL_24:
    *(result + 4) = v12 << v15;
    *(result + 8) = v16 - 8;
    *result = ((v14 << -v9) & 0xFFFFFF) << v16;
    if (v6 > v7)
    {
      goto LABEL_25;
    }

    return result;
  }

  *(result + 4) = v12 << v15;
  *(result + 8) = v9 + v15;
  *result = v14 << v15;
  if (v6 > v7)
  {
LABEL_25:
    *a4 = v5 | 1;
    v22 = v5 >> 1;
    v24 = *(result + 4);
    v23 = *(result + 8);
    v25 = *result;
    v26 = 6;
    do
    {
      while (1)
      {
        v28 = v26;
        v29 = ((v24 << 7) - 128) >> 8;
        v30 = v24 - (v29 + 1);
        if (((1 << v28) & v22) != 0)
        {
          v31 = v29 + 1;
        }

        else
        {
          v30 = v29 + 1;
          v31 = 0;
        }

        v32 = v31 + v25;
        v33 = vpx_norm[v30];
        v34 = v23 + v33;
        if (v23 + v33 >= 0)
        {
          break;
        }

        v23 += v33;
        v24 = v30 << v33;
        *(result + 4) = v24;
        *(result + 8) = v34;
        v25 = v32 << v33;
        *result = v25;
        v26 = v28 - 1;
        if (!v28)
        {
          return result;
        }
      }

      if (!*(result + 12))
      {
        v35 = *(result + 16);
        if (((v32 << ~v23) & 0x80000000) != 0)
        {
          v36 = v35 - 1;
          if (v35 >= 1)
          {
            while (1)
            {
              --v35;
              v37 = *(result + 24);
              if (*(v37 + v35) != 255)
              {
                break;
              }

              *(v37 + v35) = 0;
              if (v35 <= 0)
              {
                v36 = -1;
                goto LABEL_43;
              }
            }

            v36 = v35;
          }

LABEL_43:
          ++*(*(result + 24) + v36);
          v35 = *(result + 16);
          if (v35 < *(result + 20))
          {
LABEL_44:
            v38 = *(result + 24);
            *(result + 16) = v35 + 1;
            *(v38 + v35) = v32 >> (v23 + 24);
            goto LABEL_27;
          }
        }

        else if (v35 < *(result + 20))
        {
          goto LABEL_44;
        }

        *(result + 12) = 1;
      }

LABEL_27:
      v27 = (v32 << -v23) & 0xFFFFFF;
      v23 = v34 - 8;
      v24 = v30 << v33;
      *(result + 4) = v24;
      *(result + 8) = v34 - 8;
      v25 = v27 << v34;
      *result = v25;
      v26 = v28 - 1;
    }

    while (v28);
  }

  return result;
}

uint64_t vp9_encode_mv(uint64_t a1, uint64_t a2, __int16 *a3, unsigned __int16 *a4, uint64_t a5, int a6, unsigned int *a7)
{
  v12 = 0;
  v13 = *a3;
  v14 = *a4;
  LOWORD(v15) = *a4;
  v16 = a3[1];
  v17 = a4[1];
  v18 = v16 - v17;
  if (v16 == v17)
  {
    v19 = 2;
  }

  else
  {
    v19 = 3;
  }

  if (v13 == v14)
  {
    v20 = v16 != v17;
  }

  else
  {
    v20 = v19;
  }

  if ((v14 & 0x8000u) != 0)
  {
    v15 = -v14;
  }

  v17 = v17;
  if ((v17 & 0x8000u) != 0)
  {
    v17 = -v17;
  }

  v21 = v17 < 0x40;
  v22 = v15 <= 0x3Fu && v21;
  if (a6)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  v24 = (&mv_joint_encodings + 8 * v20);
  v25 = *v24;
  v26 = v24[1];
  v29 = a2 + 4;
  v27 = *(a2 + 4);
  v28 = *(v29 + 4);
  v30 = *a2;
  do
  {
    --v26;
    v32 = ((v27 - 1) * *(a5 + (v12 >> 1))) >> 8;
    v33 = v27 - (v32 + 1);
    result = (v25 >> v26) & 1;
    if (((v25 >> v26) & 1) == 0)
    {
      v33 = v32 + 1;
    }

    v31 = (((v25 >> v26 << 31) >> 31) & (v32 + 1)) + v30;
    v35 = vpx_norm[v33];
    v36 = v28 + v35;
    if (v28 + v35 >= 0)
    {
      if (!*(a2 + 12))
      {
        v37 = *(a2 + 16);
        if (((v31 << ~v28) & 0x80000000) != 0)
        {
          v38 = v37 - 1;
          if (v37 >= 1)
          {
            while (1)
            {
              --v37;
              v39 = *(a2 + 24);
              if (*(v39 + v37) != 255)
              {
                break;
              }

              *(v39 + v37) = 0;
              if (v37 <= 0)
              {
                v38 = -1;
                goto LABEL_34;
              }
            }

            v38 = v37;
          }

LABEL_34:
          ++*(*(a2 + 24) + v38);
          v37 = *(a2 + 16);
          if (v37 < *(a2 + 20))
          {
            goto LABEL_35;
          }
        }

        else if (v37 < *(a2 + 20))
        {
LABEL_35:
          v40 = *(a2 + 24);
          *(a2 + 16) = v37 + 1;
          *(v40 + v37) = v31 >> (v28 + 24);
          goto LABEL_19;
        }

        *(a2 + 12) = 1;
      }

LABEL_19:
      v31 = (v31 << -v28) & 0xFFFFFF;
      v28 = v36 - 8;
      goto LABEL_20;
    }

    v28 += v35;
    LOBYTE(v36) = vpx_norm[v33];
LABEL_20:
    v27 = v33 << v35;
    v30 = v31 << v36;
    *(a2 + 4) = v27;
    *(a2 + 8) = v28;
    *a2 = v30;
    v12 = vp9_mv_joint_tree[result + v12];
  }

  while (v26);
  if (v13 == v14)
  {
    if (!v20)
    {
      goto LABEL_38;
    }

LABEL_50:
    result = encode_mv_component(a2, v18, (a5 + 36), v23);
    if (!*(a1 + 739544))
    {
      return result;
    }

LABEL_39:
    v41 = *a3;
    if (v41 < 0)
    {
      v41 = -v41;
    }

    v42 = a3[1];
    if (v42 < 0)
    {
      v42 = -v42;
    }

    if (v41 <= v42)
    {
      v41 = v42;
    }

    v43 = v41 >> 3;
    if (*a7 > v43)
    {
      v43 = *a7;
    }

    *a7 = v43;
    return result;
  }

  result = encode_mv_component(a2, (v13 - v14), (a5 + 3), v23);
  if (v20)
  {
    goto LABEL_50;
  }

LABEL_38:
  if (*(a1 + 739544))
  {
    goto LABEL_39;
  }

  return result;
}

uint64_t encode_mv_component(uint64_t result, int a2, unsigned __int8 *a3, int a4)
{
  if (a2 >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = -a2;
  }

  v5 = v4 - 1;
  if (v4 <= 0x2000)
  {
    v6 = log_in_base_2[v5 >> 3];
  }

  else
  {
    v6 = 10;
  }

  v7 = -8 << v6;
  if (!v6)
  {
    v7 = 0;
  }

  v8 = v7 + v5;
  v10 = *(result + 4);
  v9 = *(result + 8);
  v11 = ((v10 - 1) * *a3) >> 8;
  v12 = v10 - (v11 + 1);
  if (a2 >= 0)
  {
    v13 = v11 + 1;
  }

  else
  {
    v13 = v12;
  }

  if (a2 < 0)
  {
    v14 = v11 + 1;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14 + *result;
  v16 = vpx_norm[v13];
  v17 = v9 + v16;
  if (v9 + v16 >= 0)
  {
    if (*(result + 12))
    {
LABEL_28:
      v15 = (v15 << -v9) & 0xFFFFFF;
      v20 = v17 - 8;
      goto LABEL_29;
    }

    if (((v15 << ~v9) & 0x80000000) != 0)
    {
      v21 = *(result + 16);
      v22 = v21 - 1;
      if (v21 >= 1)
      {
        while (1)
        {
          --v21;
          v23 = *(result + 24);
          if (*(v23 + v21) != 255)
          {
            break;
          }

          *(v23 + v21) = 0;
          if (v21 <= 0)
          {
            v22 = -1;
            goto LABEL_26;
          }
        }

        v22 = v21;
      }

LABEL_26:
      ++*(*(result + 24) + v22);
      v18 = *(result + 16);
      if (v18 < *(result + 20))
      {
        goto LABEL_19;
      }
    }

    else
    {
      v18 = *(result + 16);
      if (v18 < *(result + 20))
      {
LABEL_19:
        v19 = *(result + 24);
        *(result + 16) = v18 + 1;
        *(v19 + v18) = v15 >> (v9 + 24);
        goto LABEL_28;
      }
    }

    *(result + 12) = 1;
    goto LABEL_28;
  }

  v20 = v9 + v16;
  LOBYTE(v17) = vpx_norm[v13];
LABEL_29:
  v24 = 0;
  v25 = v8 >> 3;
  v26 = v13 << v16;
  v27 = v15 << v17;
  *(result + 4) = v26;
  *(result + 8) = v20;
  *result = v27;
  v28 = (&mv_class_encodings + 8 * v6);
  v29 = *v28;
  v30 = v28[1];
  do
  {
    --v30;
    v32 = ((v26 - 1) * a3[(v24 >> 1) + 1]) >> 8;
    v33 = v26 - (v32 + 1);
    if (((v29 >> v30) & 1) == 0)
    {
      v33 = v32 + 1;
    }

    v31 = (((v29 >> v30 << 31) >> 31) & (v32 + 1)) + v27;
    v34 = vpx_norm[v33];
    v35 = v20 + v34;
    if (v20 + v34 >= 0)
    {
      if (!*(result + 12))
      {
        v36 = *(result + 16);
        if (((v31 << ~v20) & 0x80000000) != 0)
        {
          v37 = v36 - 1;
          if (v36 >= 1)
          {
            while (1)
            {
              --v36;
              v38 = *(result + 24);
              if (*(v38 + v36) != 255)
              {
                break;
              }

              *(v38 + v36) = 0;
              if (v36 <= 0)
              {
                v37 = -1;
                goto LABEL_46;
              }
            }

            v37 = v36;
          }

LABEL_46:
          ++*(*(result + 24) + v37);
          v36 = *(result + 16);
          if (v36 < *(result + 20))
          {
            goto LABEL_47;
          }
        }

        else if (v36 < *(result + 20))
        {
LABEL_47:
          v39 = *(result + 24);
          *(result + 16) = v36 + 1;
          *(v39 + v36) = v31 >> (v20 + 24);
          goto LABEL_31;
        }

        *(result + 12) = 1;
      }

LABEL_31:
      v31 = (v31 << -v20) & 0xFFFFFF;
      v20 = v35 - 8;
      goto LABEL_32;
    }

    v20 += v34;
    LOBYTE(v35) = vpx_norm[v33];
LABEL_32:
    v26 = v33 << v34;
    v27 = v31 << v35;
    *(result + 4) = v26;
    *(result + 8) = v20;
    *result = v27;
    v24 = vp9_mv_class_tree[((v29 >> v30) & 1) + v24];
  }

  while (v30);
  if (v6)
  {
    v40 = 0;
    while (1)
    {
      v42 = ((v26 - 1) * a3[v40 + 12]) >> 8;
      v43 = v26 - (v42 + 1);
      if (((1 << v40) & v25) != 0)
      {
        v44 = v42 + 1;
      }

      else
      {
        v43 = v42 + 1;
        v44 = 0;
      }

      v41 = v44 + v27;
      v45 = vpx_norm[v43];
      v46 = v20 + v45;
      if (v20 + v45 < 0)
      {
        v20 += v45;
        LOBYTE(v46) = vpx_norm[v43];
        goto LABEL_52;
      }

      if (!*(result + 12))
      {
        v47 = *(result + 16);
        if (((v41 << ~v20) & 0x80000000) != 0)
        {
          v48 = v47 - 1;
          if (v47 >= 1)
          {
            while (1)
            {
              --v47;
              v49 = *(result + 24);
              if (*(v49 + v47) != 255)
              {
                break;
              }

              *(v49 + v47) = 0;
              if (v47 <= 0)
              {
                v48 = -1;
                goto LABEL_67;
              }
            }

            v48 = v47;
          }

LABEL_67:
          ++*(*(result + 24) + v48);
          v47 = *(result + 16);
          if (v47 < *(result + 20))
          {
LABEL_68:
            v50 = *(result + 24);
            *(result + 16) = v47 + 1;
            *(v50 + v47) = v41 >> (v20 + 24);
            goto LABEL_51;
          }
        }

        else if (v47 < *(result + 20))
        {
          goto LABEL_68;
        }

        *(result + 12) = 1;
      }

LABEL_51:
      v41 = (v41 << -v20) & 0xFFFFFF;
      v20 = v46 - 8;
LABEL_52:
      v26 = v43 << v45;
      v27 = v41 << v46;
      *(result + 4) = v26;
      *(result + 8) = v20;
      *result = v27;
      if (++v40 == v6)
      {
        goto LABEL_90;
      }
    }
  }

  v51 = ((v26 - 1) * a3[11]) >> 8;
  v52 = v26 - (v51 + 1);
  v53 = v8 >= 8;
  if (v8 < 8)
  {
    v54 = v51 + 1;
  }

  else
  {
    v54 = v52;
  }

  if (v53)
  {
    v55 = v51 + 1;
  }

  else
  {
    v55 = 0;
  }

  v56 = v55 + v27;
  v57 = vpx_norm[v54];
  v58 = v20 + v57;
  if (v20 + v57 < 0)
  {
    v20 += v57;
    LOBYTE(v58) = vpx_norm[v54];
  }

  else
  {
    if (!*(result + 12))
    {
      v59 = *(result + 16);
      if (((v56 << ~v20) & 0x80000000) != 0)
      {
        v61 = v59 - 1;
        if (v59 >= 1)
        {
          while (1)
          {
            --v59;
            v62 = *(result + 24);
            if (*(v62 + v59) != 255)
            {
              break;
            }

            *(v62 + v59) = 0;
            if (v59 <= 0)
            {
              v61 = -1;
              goto LABEL_86;
            }
          }

          v61 = v59;
        }

LABEL_86:
        ++*(*(result + 24) + v61);
        v59 = *(result + 16);
        if (v59 >= *(result + 20))
        {
          goto LABEL_87;
        }

LABEL_79:
        v60 = *(result + 24);
        *(result + 16) = v59 + 1;
        *(v60 + v59) = v56 >> (v20 + 24);
      }

      else
      {
        if (v59 < *(result + 20))
        {
          goto LABEL_79;
        }

LABEL_87:
        *(result + 12) = 1;
      }
    }

    v56 = (v56 << -v20) & 0xFFFFFF;
    v20 = v58 - 8;
  }

  v26 = v54 << v57;
  *(result + 4) = v26;
  *(result + 8) = v20;
  v27 = v56 << v58;
  *result = v27;
LABEL_90:
  v63 = 0;
  v64 = &a3[3 * v25 + 22];
  if (v6)
  {
    v64 = (a3 + 28);
  }

  v65 = (&mv_fp_encodings + 8 * ((v5 >> 1) & 3));
  v66 = *v65;
  v67 = v65[1];
  while (2)
  {
    --v67;
    v69 = ((v26 - 1) * *(v64 + (v63 >> 1))) >> 8;
    v70 = v26 - (v69 + 1);
    if (((v66 >> v67) & 1) == 0)
    {
      v70 = v69 + 1;
    }

    v68 = (((v66 >> v67 << 31) >> 31) & (v69 + 1)) + v27;
    v71 = vpx_norm[v70];
    v72 = v20 + v71;
    if (v20 + v71 < 0)
    {
      v20 += v71;
      LOBYTE(v72) = vpx_norm[v70];
    }

    else
    {
      if (!*(result + 12))
      {
        v73 = *(result + 16);
        if (((v68 << ~v20) & 0x80000000) != 0)
        {
          v74 = v73 - 1;
          if (v73 >= 1)
          {
            while (1)
            {
              --v73;
              v75 = *(result + 24);
              if (*(v75 + v73) != 255)
              {
                break;
              }

              *(v75 + v73) = 0;
              if (v73 <= 0)
              {
                v74 = -1;
                goto LABEL_109;
              }
            }

            v74 = v73;
          }

LABEL_109:
          ++*(*(result + 24) + v74);
          v73 = *(result + 16);
          if (v73 >= *(result + 20))
          {
            goto LABEL_93;
          }

LABEL_110:
          v76 = *(result + 24);
          *(result + 16) = v73 + 1;
          *(v76 + v73) = v68 >> (v20 + 24);
        }

        else
        {
          if (v73 < *(result + 20))
          {
            goto LABEL_110;
          }

LABEL_93:
          *(result + 12) = 1;
        }
      }

      v68 = (v68 << -v20) & 0xFFFFFF;
      v20 = v72 - 8;
    }

    v26 = v70 << v71;
    v27 = v68 << v72;
    *(result + 4) = v26;
    *(result + 8) = v20;
    *result = v27;
    v63 = vp9_mv_fp_tree[((v66 >> v67) & 1) + v63];
    if (v67)
    {
      continue;
    }

    break;
  }

  if (a4)
  {
    v77 = v6 == 0;
    v78 = 31;
    if (!v77)
    {
      v78 = 32;
    }

    v79 = ((v26 - 1) * a3[v78]) >> 8;
    v80 = v5 << 31 >> 31;
    if (v5)
    {
      v81 = v26 - (v79 + 1);
    }

    else
    {
      v81 = v79 + 1;
    }

    v82 = (v80 & (v79 + 1)) + v27;
    v83 = vpx_norm[v81];
    v84 = v20 + v83;
    if (v20 + v83 < 0)
    {
      v87 = v20 + v83;
      LOBYTE(v84) = vpx_norm[v81];
    }

    else
    {
      if (!*(result + 12))
      {
        v85 = *(result + 16);
        if (((v82 << ~v20) & 0x80000000) != 0)
        {
          v88 = v85 - 1;
          if (v85 >= 1)
          {
            while (1)
            {
              --v85;
              v89 = *(result + 24);
              if (*(v89 + v85) != 255)
              {
                break;
              }

              *(v89 + v85) = 0;
              if (v85 <= 0)
              {
                v88 = -1;
                goto LABEL_128;
              }
            }

            v88 = v85;
          }

LABEL_128:
          ++*(*(result + 24) + v88);
          v85 = *(result + 16);
          if (v85 >= *(result + 20))
          {
            goto LABEL_129;
          }

LABEL_121:
          v86 = *(result + 24);
          *(result + 16) = v85 + 1;
          *(v86 + v85) = v82 >> (v20 + 24);
        }

        else
        {
          if (v85 < *(result + 20))
          {
            goto LABEL_121;
          }

LABEL_129:
          *(result + 12) = 1;
        }
      }

      v82 = (v82 << -v20) & 0xFFFFFF;
      v87 = v84 - 8;
    }

    *(result + 4) = v81 << v83;
    *(result + 8) = v87;
    *result = v82 << v84;
  }

  return result;
}

uint64_t build_nmv_component_cost_table(uint64_t a1, unsigned __int8 *a2, int a3)
{
  v118 = *MEMORY[0x277D85DE8];
  v6 = *a2;
  v7 = vp9_prob_cost[v6];
  v8 = vp9_prob_cost[256 - v6];
  cost_0(v117, vp9_mv_class_tree, (a2 + 1), 0, 0);
  cost_0(&v116, &vp9_mv_class0_tree, (a2 + 11), 0, 0);
  v9 = a2[12];
  v10 = vp9_prob_cost[v9];
  LODWORD(v9) = vp9_prob_cost[256 - v9];
  v115[0] = v10;
  v115[1] = v9;
  v11 = a2[13];
  v12 = vp9_prob_cost[v11];
  LODWORD(v11) = vp9_prob_cost[256 - v11];
  v115[2] = v12;
  v115[3] = v11;
  v13 = a2[14];
  v14 = vp9_prob_cost[v13];
  LODWORD(v13) = vp9_prob_cost[256 - v13];
  v15 = a2[15];
  v16 = vp9_prob_cost[v15];
  v115[4] = v14;
  v115[5] = v13;
  LODWORD(v13) = vp9_prob_cost[256 - v15];
  v115[6] = v16;
  v115[7] = v13;
  v17 = a2[16];
  v18 = vp9_prob_cost[v17];
  LODWORD(v17) = vp9_prob_cost[256 - v17];
  v115[8] = v18;
  v115[9] = v17;
  v19 = a2[17];
  v20 = vp9_prob_cost[v19];
  LODWORD(v19) = vp9_prob_cost[256 - v19];
  v21 = a2[18];
  v22 = vp9_prob_cost[v21];
  v115[10] = v20;
  v115[11] = v19;
  LODWORD(v19) = vp9_prob_cost[256 - v21];
  v115[12] = v22;
  v115[13] = v19;
  v23 = a2[19];
  v24 = vp9_prob_cost[v23];
  LODWORD(v23) = vp9_prob_cost[256 - v23];
  v115[14] = v24;
  v115[15] = v23;
  v25 = a2[20];
  v26 = vp9_prob_cost[v25];
  LODWORD(v25) = vp9_prob_cost[256 - v25];
  v27 = a2[21];
  v28 = vp9_prob_cost[v27];
  v115[16] = v26;
  v115[17] = v25;
  LODWORD(v25) = vp9_prob_cost[256 - v27];
  v115[18] = v28;
  v115[19] = v25;
  cost_0(&v113, vp9_mv_fp_tree, (a2 + 22), 0, 0);
  cost_0(&v114, vp9_mv_fp_tree, (a2 + 25), 0, 0);
  cost_0(&v109, vp9_mv_fp_tree, (a2 + 28), 0, 0);
  v30 = a2[31];
  v31 = vp9_prob_cost[v30];
  v32 = vp9_prob_cost[256 - v30];
  v33 = a2[32];
  v34 = vp9_prob_cost[v33];
  v35 = vp9_prob_cost[256 - v33];
  *a1 = 0;
  v36 = v117[0];
  if (a3)
  {
    v37.i16[0] = v31;
    v37.i16[1] = v32;
    v37.i16[2] = v31;
    v37.i16[3] = v32;
    v38 = vadd_s32(v116, vdup_n_s32(v117[0]));
    v39 = vdupq_lane_s32(v38, 0);
    v40 = vaddq_s32(vdupq_lane_s32(v38, 1), v114);
    v41 = vaddq_s32(v39, v113);
    v42 = vzip1q_s32(v40, v40);
    v43 = vaddw_u16(vzip2q_s32(v40, v40), v37);
    v44 = vaddw_u16(vzip1q_s32(v41, v41), v37);
    v45 = vaddw_u16(v42, v37);
    v46 = vaddw_u16(vzip2q_s32(v41, v41), v37);
    v47 = vdupq_n_s32(v7);
    *(a1 - 8) = v44.i32[1] + v8;
    *(a1 - 4) = v44.i32[0] + v8;
    v48 = a1 + 8;
    *(a1 - 16) = v44.i32[3] + v8;
    *(a1 - 12) = v44.i32[2] + v8;
    *(a1 - 24) = v46.i32[1] + v8;
    *(a1 - 20) = v46.i32[0] + v8;
    *(a1 - 32) = v46.i32[3] + v8;
    *(a1 - 28) = v46.i32[2] + v8;
    *(a1 - 40) = v45.i32[1] + v8;
    *(a1 - 36) = v45.i32[0] + v8;
    *(a1 - 48) = v45.i32[3] + v8;
    *(a1 - 44) = v45.i32[2] + v8;
    *(a1 - 56) = v43.i32[1] + v8;
    *(a1 - 52) = v43.i32[0] + v8;
    *(a1 + 52) = vaddq_s32(v43, v47);
    *(a1 + 36) = vaddq_s32(v45, v47);
    *(a1 + 20) = vaddq_s32(v46, v47);
    *(a1 + 4) = vaddq_s32(v44, v47);
    *(a1 - 64) = v43.i32[3] + v8;
    *(a1 - 60) = v43.i32[2] + v8;
    v49 = v109;
    v50 = v110;
    v51 = 1;
    v52 = v111;
    v53 = v112;
    result = 20;
    do
    {
      v55 = 0;
      v56 = v117[v51];
      do
      {
        v57 = 0;
        v58 = v115;
        v59 = v56;
        do
        {
          v59 += v58[(v55 >> v57++) & 1];
          v58 += 2;
        }

        while (v51 != v57);
        v60 = (8 << v51) + 8 * v55;
        v61 = 4 * v60;
        v62 = (4 * v60) | 4;
        *(a1 + v62) = v59 + v49 + v34 + v7;
        *(a1 - v62) = v59 + v49 + v34 + v8;
        if (v60 <= 0x3FFD)
        {
          v63 = v59 + v49 + v35;
          *(v48 + 4 * v60) = v63 + v7;
          *(a1 + 4 * (v60 ^ 0x3FFFFFFFFFFFFFFELL)) = v63 + v8;
          *(a1 + (v61 | 0xC)) = v59 + v50 + v34 + v7;
          *(a1 - (v61 | 0xC)) = v59 + v50 + v34 + v8;
          if ((v60 | 2) <= 0x3FFD)
          {
            v64 = v59 + v50 + v35;
            *(v48 + 4 * (v60 | 2)) = v64 + v7;
            *(a1 + 4 * (v60 ^ 0x3FFFFFFFFFFFFFFCLL)) = v64 + v8;
            v65 = (4 * v60) | 0x14;
            *(a1 + v65) = v59 + v52 + v34 + v7;
            *(a1 - v65) = v59 + v52 + v34 + v8;
            if ((v60 | 4) <= 0x3FFD)
            {
              v66 = v59 + v52 + v35;
              *(v48 + 4 * (v60 | 4)) = v66 + v7;
              *(a1 + 4 * (v60 ^ 0x3FFFFFFFFFFFFFFALL)) = v66 + v8;
              v67 = v59 + v53;
              v68 = v61 | 0x1C;
              *(a1 + v68) = v59 + v53 + v34 + v7;
              *(a1 - v68) = v59 + v53 + v34 + v8;
              if ((v60 | 6) <= 0x3FFD)
              {
                *(v48 + 4 * (v60 | 6)) = v67 + v35 + v7;
                *(a1 + 4 * (v60 ^ 0x3FFFFFFFFFFFFFF8)) = v67 + v35 + v8;
              }
            }
          }
        }

        ++v55;
      }

      while (!(v55 >> v51));
      ++v51;
    }

    while (v51 != 11);
  }

  else
  {
    v69 = v116.i32[1];
    v70 = vdup_n_s32(v116.i32[0] + v117[0]);
    v71 = v113.u64[1];
    v72 = vadd_s32(v70, *v113.i8);
    v73 = vdup_n_s32(v7);
    *v29.i8 = vadd_s32(v72, v73);
    v74 = v72.i32[1];
    v75 = v72.i32[0];
    *(a1 + 4) = vzip1q_s32(v29, v29);
    v76 = (a1 + 20);
    v77 = vadd_s32(v71, v70);
    v119.val[0] = vadd_s32(v77, v73);
    v78 = v77.i32[1];
    v79 = v77.i32[0];
    v119.val[1] = v119.val[0];
    vst2_f32(v76, v119);
    v80 = vdup_n_s32(v69 + v36);
    v119.val[1] = v114.i64[1];
    v119.val[0] = vadd_s32(v80, *v114.i8);
    v120.val[0] = vadd_s32(v119.val[0], v73);
    v81 = a1 + 8;
    v82 = v75 + v8;
    *(a1 - 8) = v82;
    *(a1 - 4) = v82;
    v83 = v74 + v8;
    *(a1 - 16) = v83;
    *(a1 - 12) = v83;
    *(a1 - 24) = v79 + v8;
    *(a1 - 20) = v79 + v8;
    *(a1 - 32) = v78 + v8;
    *(a1 - 28) = v78 + v8;
    v84 = (a1 + 36);
    *(a1 - 40) = v119.val[0].i32[0] + v8;
    *(a1 - 36) = v119.val[0].i32[0] + v8;
    v120.val[1] = v120.val[0];
    vst2_f32(v84, v120);
    *(a1 - 48) = v119.val[0].i32[1] + v8;
    *(a1 - 44) = v119.val[0].i32[1] + v8;
    v85 = (a1 + 52);
    v86 = vadd_s32(v119.val[1], v80);
    v119.val[0] = vadd_s32(v86, v73);
    *(a1 - 56) = v86.i32[0] + v8;
    *(a1 - 52) = v86.i32[0] + v8;
    v119.val[1] = v119.val[0];
    vst2_f32(v85, v119);
    *(a1 - 64) = v86.i32[1] + v8;
    *(a1 - 60) = v86.i32[1] + v8;
    v87 = v109;
    v88 = v110;
    v89 = 1;
    v90 = v111;
    v91 = v112;
    do
    {
      result = 0;
      v92 = v117[v89];
      do
      {
        v93 = 0;
        v94 = v115;
        v95 = v92;
        do
        {
          v95 += v94[(result >> v93++) & 1];
          v94 += 2;
        }

        while (v89 != v93);
        v96 = (8 << v89) + 8 * result;
        v97 = 4 * v96;
        v98 = v95 + v87 + v7;
        v99 = (4 * v96) | 4;
        *(a1 + v99) = v98;
        v100 = v95 + v87 + v8;
        *(a1 - v99) = v100;
        if (v96 <= 0x3FFD)
        {
          *(v81 + 4 * v96) = v98;
          *(a1 + 4 * (v96 ^ 0x3FFFFFFFFFFFFFFELL)) = v100;
          v101 = v95 + v88 + v7;
          *(a1 + (v97 | 0xC)) = v101;
          v102 = v95 + v88 + v8;
          *(a1 - (v97 | 0xC)) = v102;
          if ((v96 | 2) <= 0x3FFD)
          {
            *(v81 + 4 * (v96 | 2)) = v101;
            *(a1 + 4 * (v96 ^ 0x3FFFFFFFFFFFFFFCLL)) = v102;
            v103 = v95 + v90 + v7;
            v104 = (4 * v96) | 0x14;
            *(a1 + v104) = v103;
            v105 = v95 + v90 + v8;
            *(a1 - v104) = v105;
            if ((v96 | 4) <= 0x3FFD)
            {
              *(v81 + 4 * (v96 | 4)) = v103;
              *(a1 + 4 * (v96 ^ 0x3FFFFFFFFFFFFFFALL)) = v105;
              v106 = v95 + v91 + v7;
              v107 = v97 | 0x1C;
              *(a1 + v107) = v106;
              v108 = v95 + v91 + v8;
              *(a1 - v107) = v108;
              if ((v96 | 6) <= 0x3FFD)
              {
                *(v81 + 4 * (v96 | 6)) = v106;
                *(a1 + 4 * (v96 ^ 0x3FFFFFFFFFFFFFF8)) = v108;
              }
            }
          }
        }

        ++result;
      }

      while (!(result >> v89));
      ++v89;
    }

    while (v89 != 11);
  }

  return result;
}

unint64_t vp9_update_mv_count(unint64_t result)
{
  v1 = result;
  v2 = **(result + 25360);
  v3 = *(result + 25568);
  v4 = *v2;
  if (v4 > 2)
  {
    if (v2[1] == 13)
    {
      v14 = *(result + 114248);
      v15 = (v3 + 8 * v2[8]);
      v24 = *(v2 + 6) - *v15;
      v25 = *(v2 + 7) - v15[1];
      result = vp9_inc_mv(&v24, v14 + 12800);
      v16 = v2[9];
      if (v16 >= 1)
      {
        v17 = (v3 + 8 * v16);
        v18 = v17[1];
        v24 = *(v2 + 8) - *v17;
        v25 = *(v2 + 9) - v18;
        return vp9_inc_mv(&v24, v14 + 12800);
      }
    }
  }

  else
  {
    v5 = 0;
    v6 = num_4x4_blocks_wide_lookup[v4];
    v7 = v2 + 30;
    v19 = num_4x4_blocks_high_lookup[v4];
    do
    {
      v20 = v7;
      v21 = v5;
      v8 = 0;
      do
      {
        if (*(v7 - 10) == 13)
        {
          v9 = *(v1 + 114248);
          v10 = (v3 + 8 * v2[8]);
          v22 = *(v7 - 3) - *v10;
          v23 = *(v7 - 2) - v10[1];
          result = vp9_inc_mv(&v22, v9 + 12800);
          v11 = v2[9];
          if (v11 >= 1)
          {
            v12 = (v3 + 8 * v11);
            v13 = v12[1];
            v22 = *(v7 - 1) - *v12;
            v23 = *v7 - v13;
            result = vp9_inc_mv(&v22, v9 + 12800);
          }
        }

        v8 += v6;
        v7 += 6 * v6;
      }

      while (v8 < 2);
      v5 = v21 + v19;
      v7 = &v20[12 * v19];
    }

    while ((v21 + v19) < 2);
  }

  return result;
}

uint64_t vp9_set_roi_map(uint64_t a1, const void *a2, int a3, int a4, _DWORD *a5, _DWORD *a6, _DWORD *a7, _DWORD *a8)
{
  v8 = a1 + 173008;
  if (*(a1 + 173008) != a3)
  {
    return 8;
  }

  if (*(a1 + 173016) != a4)
  {
    return 8;
  }

  v9 = *a5;
  if ((*a5 - 64) < 0xFFFFFF81)
  {
    return 8;
  }

  v10 = a5[1];
  if ((v10 - 64) < 0xFFFFFF81)
  {
    return 8;
  }

  v11 = a5[2];
  if ((v11 - 64) < 0xFFFFFF81)
  {
    return 8;
  }

  v12 = a5[3];
  if ((v12 - 64) < 0xFFFFFF81)
  {
    return 8;
  }

  v13 = a5[4];
  if ((v13 - 64) < 0xFFFFFF81)
  {
    return 8;
  }

  v14 = a5[5];
  if ((v14 - 64) < 0xFFFFFF81)
  {
    return 8;
  }

  v15 = a5[6];
  if ((v15 - 64) < 0xFFFFFF81)
  {
    return 8;
  }

  v16 = a5[7];
  if ((v16 - 64) < 0xFFFFFF81)
  {
    return 8;
  }

  v18 = *a6;
  if ((*a6 - 64) < 0xFFFFFF81)
  {
    return 8;
  }

  v19 = a6[1];
  if ((v19 - 64) < 0xFFFFFF81)
  {
    return 8;
  }

  v20 = a6[2];
  if ((v20 - 64) < 0xFFFFFF81)
  {
    return 8;
  }

  v21 = a6[3];
  if ((v21 - 64) < 0xFFFFFF81)
  {
    return 8;
  }

  v23 = a6[4];
  if ((v23 - 64) < 0xFFFFFF81)
  {
    return 8;
  }

  v26 = a6[5];
  if ((v26 - 64) < 0xFFFFFF81)
  {
    return 8;
  }

  v27 = a6[6];
  if ((v27 - 64) < 0xFFFFFF81)
  {
    return 8;
  }

  v29 = a6[7];
  if ((v29 - 64) < 0xFFFFFF81)
  {
    return 8;
  }

  v31 = *a8;
  if ((*a8 - 4) < 0xFFFFFFF9)
  {
    return 8;
  }

  v33 = a8[1];
  if ((v33 - 4) < 0xFFFFFFF9)
  {
    return 8;
  }

  v34 = a8[2];
  if ((v34 - 4) < 0xFFFFFFF9)
  {
    return 8;
  }

  v35 = a8[3];
  if ((v35 - 4) < 0xFFFFFFF9)
  {
    return 8;
  }

  v36 = a8[4];
  if ((v36 - 4) < 0xFFFFFFF9)
  {
    return 8;
  }

  v53 = a8[5];
  if ((v53 - 4) < 0xFFFFFFF9)
  {
    return 8;
  }

  v52 = a8[6];
  if ((v52 - 4) < 0xFFFFFFF9)
  {
    return 8;
  }

  v51 = a8[7];
  if ((v51 - 4) < 0xFFFFFFF9)
  {
    return 8;
  }

  if ((*a7 - 2) < 0xFFFFFFFD)
  {
    return 8;
  }

  v50 = a7[1];
  if ((v50 - 2) < 0xFFFFFFFD)
  {
    return 8;
  }

  v49 = a7[2];
  if ((v49 - 2) < 0xFFFFFFFD)
  {
    return 8;
  }

  v48 = a7[3];
  if ((v48 - 2) < 0xFFFFFFFD)
  {
    return 8;
  }

  v47 = a7[4];
  if ((v47 - 2) < 0xFFFFFFFD)
  {
    return 8;
  }

  v46 = a7[5];
  if ((v46 - 2) < 0xFFFFFFFD)
  {
    return 8;
  }

  v45 = a7[6];
  if ((v45 - 2) < 0xFFFFFFFD)
  {
    return 8;
  }

  v43 = a7[7];
  if ((v43 - 2) < 0xFFFFFFFD)
  {
    return 8;
  }

  v44 = (a1 + 942152);
  if (a2 && ((v33 & v31 & v34 & v35 & v36 & v53 & v52 & v51) != 0xFFFFFFFF || v10 | v9 | v11 | v12 | v13 | v14 | v15 | v16 | v18 | v19 | v20 | v21 | v23 | v26 | v27 | v29 | *a7 | v50 | v49 | v48 | v47 | v46 | v45 | v43))
  {
    v37 = *(a1 + 942160);
    if (v37)
    {
      free(*(v37 - 8));
      *(a1 + 942160) = 0;
    }

    v38 = vpx_malloc((a4 * a3));
    *(a1 + 942160) = v38;
    if (v38)
    {
      memcpy(v38, a2, (a4 * a3));
      result = 0;
      v39 = *(a5 + 1);
      *(a1 + 942176) = *a5;
      *(a1 + 942192) = v39;
      v40 = *(a6 + 1);
      *(a1 + 942208) = *a6;
      *(a1 + 942224) = v40;
      v41 = *(a7 + 1);
      *(a1 + 942240) = *a7;
      *(a1 + 942256) = v41;
      v42 = *(a8 + 1);
      *(a1 + 942272) = *a8;
      *(a1 + 942288) = v42;
      *v44 = 1;
      *(a1 + 942168) = a3;
      *(a1 + 942172) = a4;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    result = 0;
    *(v8 + 3464) = 0;
    *(v8 + 3466) = 0;
    *v44 = 0;
  }

  return result;
}

uint64_t initialize_enc_0()
{
  vp9_rtcd();
  vpx_dsp_rtcd();
  vpx_scale_rtcd();
  vp9_init_intra_predictors();
  v0 = 0;
  v1 = xmmword_273B92360;
  v2 = xmmword_273B90830;
  v3.i64[0] = 0xFF000000FFLL;
  v3.i64[1] = 0xFF000000FFLL;
  v4 = vdupq_n_s64(0x3FA566CF41F212D7uLL);
  v5 = vdupq_n_s64(0x4003491D14E3BCD3uLL);
  __asm { FMOV            V7.2D, #0.25 }

  v11 = vdupq_n_s64(0x3FB020C49BA5E354uLL);
  v12 = vdupq_n_s64(0x4005EF9DB22D0E56uLL);
  v13.i64[0] = 0x800000008;
  v13.i64[1] = 0x800000008;
  do
  {
    v14 = *&ac_qlookup_0[vminq_u32(v2, v3).u32[0]];
    v15 = vmovl_high_s16(v14);
    v16.i64[0] = v15.i32[0];
    v16.i64[1] = v15.i32[1];
    v17 = v16;
    v16.i64[0] = v15.i32[2];
    v16.i64[1] = v15.i32[3];
    v18 = vcvtq_f64_s64(v16);
    v19 = vmovl_s16(*v14.i8);
    v16.i64[0] = v19.i32[0];
    v16.i64[1] = v19.i32[1];
    v20 = vcvtq_f64_s64(v16);
    v16.i64[0] = v19.i32[2];
    v16.i64[1] = v19.i32[3];
    v21 = vmulq_f64(vcvtq_f64_s64(v16), _Q7);
    v22 = vmulq_f64(v20, _Q7);
    v23 = vmulq_f64(v18, _Q7);
    v24 = vmulq_f64(vcvtq_f64_s64(v17), _Q7);
    v25 = (&sad_per_bit16lut_8 + v0);
    v26 = (&sad_per_bit4lut_8 + v0);
    *v25 = vuzp1q_s32(vcvtq_s64_f64(vmlaq_f64(v5, v4, v22)), vcvtq_s64_f64(vmlaq_f64(v5, v4, v21)));
    v25[1] = vuzp1q_s32(vcvtq_s64_f64(vmlaq_f64(v5, v4, v24)), vcvtq_s64_f64(vmlaq_f64(v5, v4, v23)));
    *v26 = vuzp1q_s32(vcvtq_s64_f64(vmlaq_f64(v12, v11, v22)), vcvtq_s64_f64(vmlaq_f64(v12, v11, v21)));
    v26[1] = vuzp1q_s32(vcvtq_s64_f64(vmlaq_f64(v12, v11, v24)), vcvtq_s64_f64(vmlaq_f64(v12, v11, v23)));
    v2 = vaddq_s32(v2, v13);
    v1 = vaddq_s32(v1, v13);
    v0 += 32;
  }

  while (v0 != 1024);
  v27 = 0;
  v28 = xmmword_273B92360;
  v29 = xmmword_273B90830;
  v30 = vdupq_n_s64(0x3FB0000000000000uLL);
  v31.i64[0] = 0xFF000000FFLL;
  v31.i64[1] = 0xFF000000FFLL;
  v32.i64[0] = 0x800000008;
  v32.i64[1] = 0x800000008;
  do
  {
    v33 = *&ac_qlookup_10[vminq_u32(v29, v31).u32[0]];
    v34 = vmovl_high_s16(v33);
    v35.i64[0] = v34.i32[0];
    v35.i64[1] = v34.i32[1];
    v36 = v35;
    v35.i64[0] = v34.i32[2];
    v35.i64[1] = v34.i32[3];
    v37 = vcvtq_f64_s64(v35);
    v38 = vmovl_s16(*v33.i8);
    v35.i64[0] = v38.i32[0];
    v35.i64[1] = v38.i32[1];
    v39 = vcvtq_f64_s64(v35);
    v35.i64[0] = v38.i32[2];
    v35.i64[1] = v38.i32[3];
    v40 = vmulq_f64(vcvtq_f64_s64(v35), v30);
    v41 = vmulq_f64(v39, v30);
    v42 = vmulq_f64(v37, v30);
    v43 = vmulq_f64(vcvtq_f64_s64(v36), v30);
    v44 = (&sad_per_bit16lut_10 + v27);
    v45 = (&sad_per_bit4lut_10 + v27);
    *v44 = vuzp1q_s32(vcvtq_s64_f64(vmlaq_f64(v5, v4, v41)), vcvtq_s64_f64(vmlaq_f64(v5, v4, v40)));
    v44[1] = vuzp1q_s32(vcvtq_s64_f64(vmlaq_f64(v5, v4, v43)), vcvtq_s64_f64(vmlaq_f64(v5, v4, v42)));
    *v45 = vuzp1q_s32(vcvtq_s64_f64(vmlaq_f64(v12, v11, v41)), vcvtq_s64_f64(vmlaq_f64(v12, v11, v40)));
    v45[1] = vuzp1q_s32(vcvtq_s64_f64(vmlaq_f64(v12, v11, v43)), vcvtq_s64_f64(vmlaq_f64(v12, v11, v42)));
    v29 = vaddq_s32(v29, v32);
    v28 = vaddq_s32(v28, v32);
    v27 += 32;
  }

  while (v27 != 1024);
  v46 = 0;
  v47 = xmmword_273B92360;
  v48 = xmmword_273B90830;
  v49 = vdupq_n_s64(0x3F90000000000000uLL);
  v50.i64[0] = 0xFF000000FFLL;
  v50.i64[1] = 0xFF000000FFLL;
  v51.i64[0] = 0x800000008;
  v51.i64[1] = 0x800000008;
  do
  {
    v52 = *&ac_qlookup_12[vminq_u32(v48, v50).u32[0]];
    v53 = vmovl_high_s16(v52);
    v54.i64[0] = v53.i32[0];
    v54.i64[1] = v53.i32[1];
    v55 = v54;
    v54.i64[0] = v53.i32[2];
    v54.i64[1] = v53.i32[3];
    v56 = vcvtq_f64_s64(v54);
    v57 = vmovl_s16(*v52.i8);
    v54.i64[0] = v57.i32[0];
    v54.i64[1] = v57.i32[1];
    v58 = vcvtq_f64_s64(v54);
    v54.i64[0] = v57.i32[2];
    v54.i64[1] = v57.i32[3];
    v59 = vmulq_f64(vcvtq_f64_s64(v54), v49);
    v60 = vmulq_f64(v58, v49);
    v61 = vmulq_f64(v56, v49);
    v62 = vmulq_f64(vcvtq_f64_s64(v55), v49);
    v63 = (&sad_per_bit16lut_12 + v46);
    v64 = (&sad_per_bit4lut_12 + v46);
    *v63 = vuzp1q_s32(vcvtq_s64_f64(vmlaq_f64(v5, v4, v60)), vcvtq_s64_f64(vmlaq_f64(v5, v4, v59)));
    v63[1] = vuzp1q_s32(vcvtq_s64_f64(vmlaq_f64(v5, v4, v62)), vcvtq_s64_f64(vmlaq_f64(v5, v4, v61)));
    *v64 = vuzp1q_s32(vcvtq_s64_f64(vmlaq_f64(v12, v11, v60)), vcvtq_s64_f64(vmlaq_f64(v12, v11, v59)));
    v64[1] = vuzp1q_s32(vcvtq_s64_f64(vmlaq_f64(v12, v11, v62)), vcvtq_s64_f64(vmlaq_f64(v12, v11, v61)));
    v48 = vaddq_s32(v48, v51);
    v47 = vaddq_s32(v47, v51);
    v46 += 32;
  }

  while (v46 != 1024);
  init_minq_luts(&kf_low_motion_minq_8, &kf_high_motion_minq_8, &arfgf_low_motion_minq_8, &arfgf_high_motion_minq_8, &inter_minq_8, &rtc_minq_8, 8);
  init_minq_luts(&kf_low_motion_minq_10, &kf_high_motion_minq_10, &arfgf_low_motion_minq_10, &arfgf_high_motion_minq_10, &inter_minq_10, &rtc_minq_10, 10);
  init_minq_luts(&kf_low_motion_minq_12, &kf_high_motion_minq_12, &arfgf_low_motion_minq_12, &arfgf_high_motion_minq_12, &inter_minq_12, &rtc_minq_12, 12);
  tree2tok(&mv_joint_encodings, &vp9_mv_joint_tree, 0, 0, 0);
  tree2tok(&mv_class_encodings, vp9_mv_class_tree, 0, 0, 0);

  return tree2tok(&mv_fp_encodings, vp9_mv_fp_tree, 0, 0, 0);
}

char *vp9_change_config(uint64_t a1, _DWORD *a2)
{
  v124 = a1 + 942048;
  v4 = a1 + 933760;
  v5 = a1 + 189844;
  v6 = a1 + 171980;
  v7 = a1 + 74736;
  v8 = *(a1 + 189992);
  v123 = *(a1 + 189996);
  vp9_init_quantizer(a1);
  if (*(v5 + 8) != *a2)
  {
    *(v5 + 8) = *a2;
  }

  v9 = a2[1];
  *(v5 + 12) = v9;
  *v6 = *(a2 + 101);
  v10 = a2[93];
  *(v4 + 68) = v10;
  *(v4 + 296) = v10 != 255;
  v11 = v10 - 10;
  v12 = 0;
  switch(v11)
  {
    case 0:
      goto LABEL_17;
    case 1:
      v12 = 1;
      goto LABEL_17;
    case 10:
      v12 = 2;
      goto LABEL_17;
    case 11:
      v12 = 3;
      goto LABEL_17;
    case 20:
      v12 = 4;
      goto LABEL_17;
    case 21:
      v12 = 5;
      goto LABEL_17;
    case 30:
      v12 = 6;
      goto LABEL_17;
    case 31:
      v12 = 7;
      goto LABEL_17;
    case 40:
      v12 = 8;
      goto LABEL_17;
    case 41:
      v12 = 9;
      goto LABEL_17;
    case 42:
      v12 = 10;
      goto LABEL_17;
    case 50:
      v12 = 11;
      goto LABEL_17;
    case 51:
      v12 = 12;
      goto LABEL_17;
    case 52:
      v12 = 13;
LABEL_17:
      *(v124 + 64) = v12;
      *(v124 + 72) = *(&vp9_level_defs + 8 * v12 + 4) * 1000.0;
      break;
    default:
      *(v124 + 64) = -1;
      break;
  }

  memcpy((a1 + 189984), a2, 0x1B8uLL);
  *v7 = v9;
  if (a2[23] || a2[27] != 3)
  {
    v13 = 10;
  }

  else
  {
    v13 = 8;
  }

  *(a1 + 738564) = v13;
  v14 = v124;
  *(a1 + 194556) = 1;
  *(a1 + 176400) = 1;
  *(a1 + 176472) = 0;
  *(a1 + 176474) = 0;
  *(a1 + 176477) = -1;
  *(a1 + 176480) = -1;
  *(a1 + 176488) = 0u;
  *(a1 + 176504) = 0u;
  *(a1 + 176520) = 0u;
  *(a1 + 176536) = 0u;
  *(a1 + 176552) = 0u;
  *(a1 + 176568) = 0u;
  *(a1 + 176584) = 0;
  *(v6 + 1012) = 0;
  *(v7 + 240) = a1 + 74944;
  *(v7 + 296) = a1 + 75000;
  v15 = *(v5 + 464);
  v16 = vdupq_n_s32(v15);
  *(a1 + 740240) = v16;
  *(a1 + 740256) = v16;
  *(a1 + 740216) = v15;
  v17 = *(v5 + 196);
  v18 = *(v5 + 268);
  v19 = *(v5 + 276);
  *(a1 + 738744) = *(v5 + 260) * v17 / 1000;
  if (v18)
  {
    v20 = (v18 * v17 * 0x20C49BA5E353F7CFLL) >> 64;
    *(a1 + 738752) = (v20 >> 7) + (v20 >> 63);
    if (v19)
    {
LABEL_24:
      v21 = (v19 * v17 * 0x20C49BA5E353F7CFLL) >> 64;
      v22 = (v21 >> 7) + (v21 >> 63);
      goto LABEL_27;
    }
  }

  else
  {
    *(a1 + 738752) = v17 / 8;
    if (v19)
    {
      goto LABEL_24;
    }
  }

  v22 = v17 / 8;
LABEL_27:
  *(a1 + 738760) = v22;
  v23 = vdupq_n_s64(v22);
  *(a1 + 738648) = vbslq_s8(vcgtq_s64(v23, *(a1 + 738648)), *(a1 + 738648), v23);
  v24 = *(a1 + 739176);
  if (v24 < 0.1)
  {
    v24 = 30.0;
  }

  *(a1 + 739176) = v24;
  v25 = round(v17 / v24);
  if (v25 >= 2147483650.0)
  {
    v25 = 2147483650.0;
  }

  v26 = v25;
  v27 = *(v5 + 332) * v25 / 100;
  if (v27 >= 0x7FFFFFFF)
  {
    LODWORD(v27) = 0x7FFFFFFF;
  }

  if (v27 <= 200)
  {
    LODWORD(v27) = 200;
  }

  *(a1 + 738600) = v26;
  *(a1 + 738604) = v27;
  v28 = *(v5 + 336) * v26 / 100;
  if (v28 >= 0x7FFFFFFF)
  {
    LODWORD(v28) = 0x7FFFFFFF;
  }

  v29 = *(v6 + 1020);
  if (v29 <= 16000)
  {
    v30 = 4000000;
  }

  else
  {
    v30 = 250 * v29;
  }

  if (v30 > v28)
  {
    LODWORD(v28) = v30;
  }

  *(a1 + 738608) = v28;
  vp9_rc_set_gf_interval_range(a1, a1 + 738456);
  *(a1 + 738736) = *(v5 + 292);
  *(v6 + 1272) = *(a1 + 740024);
  v31 = *(v5 + 552);
  if (v31 < 1 || (v32 = *(v5 + 556), v32 < 1))
  {
    v33 = *(v5 + 148);
    v34 = *(v5 + 152);
    *(v6 + 16) = v33;
    *(v6 + 20) = v34;
    v35 = a1 + 754520;
    if (v8 != v33)
    {
      goto LABEL_49;
    }
  }

  else
  {
    *(v6 + 16) = v31;
    *(v6 + 20) = v32;
    v33 = *(v5 + 148);
    v34 = *(v5 + 152);
    v35 = a1 + 754520;
    if (v8 != v33)
    {
      goto LABEL_49;
    }
  }

  if (v123 == v34)
  {
    v37 = *(v6 + 8);
    v36 = *(v6 + 12);
    goto LABEL_50;
  }

LABEL_49:
  *(v6 + 8) = v33;
  *(v6 + 12) = v34;
  *(v4 + 40) = 1;
  v36 = v34;
  v37 = v33;
LABEL_50:
  v38 = v36 + 7;
  v39 = (v37 + 7) >> 3;
  *(v6 + 1036) = v39;
  v40 = v38 >> 3;
  *(v6 + 1028) = v38 >> 3;
  *(v6 + 1040) = v39 + 8;
  v41 = (v39 + 1) >> 1;
  *(v6 + 1032) = v41;
  v42 = ((v38 >> 3) + 1) >> 1;
  *(v6 + 1024) = v42;
  *(v6 + 1020) = v41 * v42;
  v43 = ((v38 >> 3) + 8) * (v39 + 8);
  v44 = *(v6 + 1128);
  v125 = v35;
  if (v44 >= v43)
  {
    if (v44 == v43 && (v33 > v8 || v34 > v123))
    {
      v46 = *(a1 + 176456);
      if (v46)
      {
        free(*(v46 - 8));
        v39 = *(v6 + 1036);
        v40 = *(v6 + 1028);
      }

      v47 = (v39 + 7) >> 3;
      *(a1 + 176464) = v47;
      v48 = ((v40 + 7) >> 3) * v47;
      if ((v48 & 0x80000000) == 0 && (v122 = 160 * v48, (v49 = malloc_type_malloc(v122 | 0x17, 0xD93B561uLL)) != 0) && (v50 = (v49 + 23) & 0xFFFFFFFFFFFFFFF0, *(v50 - 8) = v49, v50))
      {
        bzero(((v49 + 23) & 0xFFFFFFFFFFFFFFF0), v122);
        *(a1 + 176456) = v50;
      }

      else
      {
        *(a1 + 176456) = 0;
        vpx_internal_error(a1 + 171696, 2, "Failed to allocate loop filter data");
      }
    }
  }

  else
  {
    vp9_free_context_buffers(a1 + 171696);
    vp9_free_pc_tree(a1 + 49200);
    v45 = *(a1 + 163488);
    if (v45)
    {
      free(*(v45 - 8));
    }

    alloc_compressor_data(a1);
    realloc_segmentation_maps(a1);
    *v35 = 0;
    *(v4 + 40) = 0;
  }

  if (!*v5 || v8 != *(v5 + 148) || v123 != *(v5 + 152))
  {
    update_frame_size(a1);
    if (v8 != *(v5 + 148) || v123 != *(v5 + 152))
    {
      v51 = *(v4 + 112);
      if (v51)
      {
        free(*(v51 - 8));
      }

      v52 = *(v6 + 1036) * *(v6 + 1028);
      if (v52)
      {
        if ((v52 & 0x80000000) != 0)
        {
          goto LABEL_80;
        }

        if (v52 + 23 > 0x10000000000)
        {
          goto LABEL_80;
        }

        v53 = malloc_type_malloc(v52 + 23, 0xD93B561uLL);
        if (!v53)
        {
          goto LABEL_80;
        }
      }

      else
      {
        v53 = malloc_type_malloc(0x17uLL, 0xD93B561uLL);
        if (!v53)
        {
          goto LABEL_80;
        }
      }

      v54 = (v53 + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v54 - 8) = v53;
      if (v54)
      {
        bzero(((v53 + 23) & 0xFFFFFFFFFFFFFFF0), v52);
        *(v4 + 112) = v54;
        v55 = (a1 + 740232);
        v56 = *(a1 + 740232);
        if (!v56)
        {
LABEL_82:
          v57 = *(v6 + 1036) * *(v6 + 1028);
          if (v57)
          {
            if ((v57 & 0x80000000) != 0)
            {
              goto LABEL_91;
            }

            if (v57 + 23 > 0x10000000000)
            {
              goto LABEL_91;
            }

            v58 = malloc_type_malloc(v57 + 23, 0xD93B561uLL);
            if (!v58)
            {
              goto LABEL_91;
            }
          }

          else
          {
            v58 = malloc_type_malloc(0x17uLL, 0xD93B561uLL);
            if (!v58)
            {
              goto LABEL_91;
            }
          }

          v59 = (v58 + 23) & 0xFFFFFFFFFFFFFFF0;
          *(v59 - 8) = v58;
          if (v59)
          {
            bzero(((v58 + 23) & 0xFFFFFFFFFFFFFFF0), v57);
            *v55 = v59;
            v35 = v125;
            if (*(v125 + 32) >= 2)
            {
LABEL_92:
              if (*(v5 + 204) >= 1)
              {
                vp9_denoiser_free((a1 + 933584), v60);
                v61 = *(v5 + 204);
                if (v61 >= 1 && !*v4)
                {
                  v62 = vp9_denoiser_alloc((a1 + 171696), (a1 + 754544), a1 + 933584, *(v35 + 20), v61, *(v6 + 8), *(v6 + 12), *(v6 + 32), *(v6 + 36), *(v6 + 40), 160);
                  if (v63)
                  {
                    vpx_internal_error(a1 + 171696, 2, "Failed to allocate denoiser", v62);
                  }
                }
              }

              if (*(v5 + 304) == 3)
              {
                if (*(v35 + 32) >= 1)
                {
                  v64 = 0;
                  while (1)
                  {
                    v65 = a1 + 758936 + 13936 * *(v35 + 36) * v64;
                    *(v65 + 13864) = 0;
                    *(v65 + 13896) = 0;
                    *(v65 + 13904) = 0;
                    v66 = *(v65 + 13872);
                    if (v66)
                    {
                      free(*(v66 - 8));
                    }

                    v67 = *(v6 + 1036) * *(v6 + 1028);
                    if (v67)
                    {
                      if ((v67 & 0x80000000) != 0)
                      {
                        goto LABEL_112;
                      }

                      if (v67 + 23 > 0x10000000000)
                      {
                        goto LABEL_112;
                      }

                      v68 = malloc_type_malloc(v67 + 23, 0xD93B561uLL);
                      if (!v68)
                      {
                        goto LABEL_112;
                      }
                    }

                    else
                    {
                      v68 = malloc_type_malloc(0x17uLL, 0xD93B561uLL);
                      if (!v68)
                      {
                        goto LABEL_112;
                      }
                    }

                    v69 = (v68 + 23) & 0xFFFFFFFFFFFFFFF0;
                    *(v69 - 8) = v68;
                    if (v69)
                    {
                      bzero(((v68 + 23) & 0xFFFFFFFFFFFFFFF0), v67);
                      *(v65 + 13872) = v69;
                      v70 = *(v65 + 13880);
                      if (!v70)
                      {
                        goto LABEL_114;
                      }

LABEL_113:
                      free(*(v70 - 8));
                      goto LABEL_114;
                    }

LABEL_112:
                    *(v65 + 13872) = 0;
                    vpx_internal_error(a1 + 171696, 2, "Failed to allocate lc->map");
                    v70 = *(v65 + 13880);
                    if (v70)
                    {
                      goto LABEL_113;
                    }

LABEL_114:
                    v71 = *(v6 + 1036) * *(v6 + 1028) + 23;
                    if (v71 > 0x10000000000 || (v72 = malloc_type_malloc(v71, 0xD93B561uLL)) == 0)
                    {
                      *(v65 + 13880) = 0;
LABEL_119:
                      vpx_internal_error(a1 + 171696, 2, "Failed to allocate lc->last_coded_q_map");
                      v74 = *(v65 + 13880);
                      goto LABEL_120;
                    }

                    v73 = v72;
                    v74 = ((v72 + 23) & 0xFFFFFFFFFFFFFFF0);
                    *(v74 - 1) = v73;
                    *(v65 + 13880) = v74;
                    if (!v74)
                    {
                      goto LABEL_119;
                    }

LABEL_120:
                    memset(v74, 255, *(v6 + 1036) * *(v6 + 1028));
                    v75 = *(v65 + 13888);
                    if (v75)
                    {
                      free(*(v75 - 8));
                    }

                    v76 = *(v6 + 1036) * *(v6 + 1028);
                    if (v76)
                    {
                      if ((v76 & 0x80000000) != 0)
                      {
                        goto LABEL_100;
                      }

                      if (v76 + 23 > 0x10000000000)
                      {
                        goto LABEL_100;
                      }

                      v77 = malloc_type_malloc(v76 + 23, 0xD93B561uLL);
                      if (!v77)
                      {
                        goto LABEL_100;
                      }

LABEL_128:
                      v78 = (v77 + 23) & 0xFFFFFFFFFFFFFFF0;
                      *(v78 - 8) = v77;
                      if (!v78)
                      {
                        goto LABEL_100;
                      }

                      bzero(((v77 + 23) & 0xFFFFFFFFFFFFFFF0), v76);
                      *(v65 + 13888) = v78;
                      ++v64;
                      v35 = v125;
                      if (v64 >= *(v125 + 32))
                      {
                        break;
                      }
                    }

                    else
                    {
                      v77 = malloc_type_malloc(0x17uLL, 0xD93B561uLL);
                      if (v77)
                      {
                        goto LABEL_128;
                      }

LABEL_100:
                      *(v65 + 13888) = 0;
                      vpx_internal_error(a1 + 171696, 2, "Failed to allocate lc->consec_zero_mv");
                      ++v64;
                      v35 = v125;
                      if (v64 >= *(v125 + 32))
                      {
                        break;
                      }
                    }
                  }
                }

                v14 = v124;
                *(a1 + 194560) = 0x100000001;
              }
            }

LABEL_131:
            v79 = *(v14 + 8);
            if (v79)
            {
              free(*(v79 - 8));
            }

            *(v14 + 8) = 0;
            v80 = *(v14 + 16);
            if (v80)
            {
              free(*(v80 - 8));
            }

            *(v14 + 16) = 0;
            v81 = *(v14 + 24);
            if (v81)
            {
              free(*(v81 - 8));
            }

            *(v14 + 24) = 0;
            v82 = *(v14 + 32);
            if (v82)
            {
              free(*(v82 - 8));
            }

            *(v14 + 32) = 0;
            alloc_copy_partition_data(a1);
            if (*(v5 + 304) == 3 && *(v35 + 32) == 1)
            {
              v83 = *(a1 + 740272);
              bzero(*(v83 + 32), *(v6 + 1036) * *(v6 + 1028));
              memset(*(v83 + 40), 255, *(v6 + 1036) * *(v6 + 1028));
              *(v83 + 8) = 0;
              *(a1 + 194560) = 0x100000001;
              *(v83 + 124) = 0;
            }

            *(a1 + 738768) = 0;
            *(a1 + 738772) = 0;
            goto LABEL_143;
          }

LABEL_91:
          *v55 = 0;
          vpx_internal_error(a1 + 171696, 2, "Failed to allocate cpi->skin_map");
          v35 = v125;
          if (*(v125 + 32) >= 2)
          {
            goto LABEL_92;
          }

          goto LABEL_131;
        }

LABEL_81:
        free(*(v56 - 8));
        goto LABEL_82;
      }

LABEL_80:
      *(v4 + 112) = 0;
      vpx_internal_error(a1 + 171696, 2, "Failed to allocate cpi->consec_zero_mv");
      v55 = (a1 + 740232);
      v56 = *(a1 + 740232);
      if (!v56)
      {
        goto LABEL_82;
      }

      goto LABEL_81;
    }
  }

LABEL_143:
  if (*(v35 + 36) > 1 || (v84 = *(v35 + 32), v84 >= 2) && *(v5 + 232) != 1)
  {
    vp9_update_layer_context_change_config(a1, *(v5 + 196));
    v84 = *(v35 + 32);
  }

  if (*v5 > v84)
  {
    if (*(v35 + 20))
    {
      if (v84 >= 1)
      {
        v85 = *(v35 + 36);
        if (v85 >= 1)
        {
          v86 = 0;
          for (i = 0; i != v84; ++i)
          {
            v88 = v86;
            v89 = a1 + 758936 + 13936 * ((v85 - 1) + i * v85);
            v90 = *(v89 + 144);
            v91 = *(v89 + 328) >> 1;
            if (v90 / 3 <= v91 && v90 >= v91)
            {
              goto LABEL_152;
            }

            if (v85 == 1)
            {
              v93 = 0;
            }

            else
            {
              v94 = (a1 + 759128 + 13936 * v86);
              v95 = v85 & 0x7FFFFFFE;
              do
              {
                v94[15] = 0;
                v94[1757] = 0;
                v96 = v94[13];
                v97 = v94[1755];
                v94[1743] = v97;
                *v94 = v96;
                v94[1] = v96;
                v94[1742] = v97;
                v94 += 3484;
                v95 -= 2;
              }

              while (v95);
              v93 = v85 & 0x7FFFFFFE;
              if (v93 == v85)
              {
                goto LABEL_152;
              }
            }

            v98 = v85 - v93;
            v99 = (a1 + 759248 + 13936 * (v93 + v88));
            do
            {
              *v99 = 0;
              v100 = *(v99 - 2);
              *(v99 - 15) = v100;
              *(v99 - 14) = v100;
              v99 += 1742;
              --v98;
            }

            while (v98);
LABEL_152:
            v86 = v88 + v85;
          }
        }
      }
    }

    else
    {
      v101 = *(a1 + 738600);
      v102 = *(a1 + 738784) >> 1;
      if (v101 / 3 > v102 || v101 < v102)
      {
        *(a1 + 738768) = 0;
        *(a1 + 738772) = 0;
        v103 = *(a1 + 738752);
        *(a1 + 738656) = v103;
        *(a1 + 738648) = v103;
      }
    }
  }

  *(v5 + 588) = 0;
  *(a1 + 738596) = 0;
  v104 = (*(v6 + 1036) + 7) >> 3;
  v105 = -1;
  do
  {
    ++v105;
  }

  while (64 << v105 < v104);
  v106 = -1;
  do
  {
    v107 = v104 >> (v106++ + 2);
  }

  while (v107 > 3);
  v108 = *(v5 + 492);
  if (v108 < v106)
  {
    v106 = *(v5 + 492);
  }

  if (v108 >= v105)
  {
    v109 = v106;
  }

  else
  {
    v109 = v105;
  }

  v110 = *(v5 + 496);
  *(v5 + 84) = v109;
  *(v5 + 88) = v110;
  if (*(v5 + 512) == 1)
  {
    v111 = *(v6 + 8);
    v112 = *(v6 + 12);
    v113 = v112 * v111;
    if (v111 > v112)
    {
      v112 = *(v6 + 8);
    }

    v114 = &dword_273BCFFC0;
    v115 = 245;
    while (*v114 < v113 || v114[1] < v112)
    {
      v114 += 16;
      if (!--v115)
      {
        goto LABEL_189;
      }
    }

    v116 = __clz(*(v114 + 32)) ^ 0x1F;
    if (v109 > v116)
    {
      if (v116 > v105)
      {
        v105 = v116;
      }

      *(v5 + 84) = v105;
    }
  }

LABEL_189:
  *(a1 + 194568) = 0;
  *(a1 + 194584) = 0;
  result = highbd_set_var_fns(a1);
  *v14 = 0;
  v118 = *(v5 + 228);
  if (v118 > 1)
  {
    if (v118 == 2 && *(v5 + 212) >= 5 && *(v5 + 564))
    {
      goto LABEL_199;
    }

LABEL_203:
    v121 = 0;
    goto LABEL_204;
  }

  if (*(v5 + 212) > 4)
  {
    goto LABEL_203;
  }

  v119 = *(v5 + 232);
  if (v119 != 1)
  {
    v120 = 1;
LABEL_201:
    if (v118)
    {
      goto LABEL_202;
    }

    goto LABEL_208;
  }

  if (*(v5 + 564))
  {
    v120 = 1;
    if (!*(v35 + 20))
    {
      *v14 = 1;
      v120 = 0;
      if (v118)
      {
        goto LABEL_202;
      }

      goto LABEL_208;
    }

    goto LABEL_201;
  }

  v120 = 1;
  if (v118)
  {
    goto LABEL_202;
  }

LABEL_208:
  if ((v119 | 2) != 2 || !*(v5 + 564) || *(v35 + 20))
  {
LABEL_202:
    if ((v120 & 1) == 0)
    {
      v121 = 1;
      goto LABEL_204;
    }

    goto LABEL_203;
  }

LABEL_199:
  v121 = 1;
  *v14 = 1;
LABEL_204:
  *(v14 + 4) = v121;
  return result;
}

double alloc_compressor_data(uint64_t a1)
{
  v2 = (a1 + 194792);
  v3 = (a1 + 171988);
  if (vp9_alloc_context_buffers(a1 + 171696, *(a1 + 171988), *(a1 + 171992)))
  {
    vpx_internal_error(a1 + 171696, 2, "Failed to allocate context buffers");
  }

  v4 = v3[255] * v3[257];
  if ((v4 & 0x80000000) == 0)
  {
    v5 = 36 * v4;
    v6 = malloc_type_malloc(v5 + 23, 0xD93B561uLL);
    if (v6)
    {
      v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v7 - 8) = v6;
      if (v7)
      {
        bzero(((v6 + 23) & 0xFFFFFFFFFFFFFFF0), v5);
        *(a1 + 163488) = v7;
        v8 = *v2;
        if (!*v2)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }
    }
  }

  *(a1 + 163488) = 0;
  vpx_internal_error(a1 + 171696, 2, "Failed to allocate cpi->mbmi_ext_base");
  v8 = *v2;
  if (*v2)
  {
LABEL_9:
    free(*(v8 - 8));
  }

LABEL_10:
  v9 = 772 * ((v3[254] + 3) & 0x3FFFFFFC) * ((v3[256] + 3) & 0x3FFFFFFC);
  v10 = malloc_type_malloc(((v9 >> 6) << 10) | 0x17, 0xD93B561uLL);
  if (v10)
  {
    v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF0;
    *(v11 - 8) = v10;
    if (v11)
    {
      bzero(((v10 + 23) & 0xFFFFFFFFFFFFFFF0), 16 * v9);
      *v2 = v11;
      v12 = v3[255];
      v13 = v2[256];
      if (!v13)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  *v2 = 0;
  vpx_internal_error(a1 + 171696, 2, "Failed to allocate cpi->tile_tok[0][0]");
  v12 = v3[255];
  v13 = v2[256];
  if (v13)
  {
LABEL_15:
    free(*(v13 - 8));
  }

LABEL_16:
  if (32 * v12 + 224 >= 0 && (v14 = 24 * ((32 * v12 + 224) & 0x7FFFFF00), (v15 = malloc_type_malloc(v14 | 0x17, 0xD93B561uLL)) != 0) && (v16 = (v15 + 23) & 0xFFFFFFFFFFFFFFF0, *(v16 - 8) = v15, v16))
  {
    bzero(((v15 + 23) & 0xFFFFFFFFFFFFFFF0), v14);
    v2[256] = v16;
  }

  else
  {
    v2[256] = 0;
    vpx_internal_error(a1 + 171696, 2, "Failed to allocate cpi->tplist[0][0]");
  }

  *&result = vp9_setup_pc_tree(a1 + 171696, a1 + 49200).u64[0];
  return result;
}

void realloc_segmentation_maps(uint64_t a1)
{
  v2 = (a1 + 736304);
  v3 = (a1 + 173008);
  v4 = *(a1 + 740224);
  if (v4)
  {
    free(*(v4 - 8));
  }

  v5 = v3[2] * *v3;
  if (v5)
  {
    if ((v5 & 0x80000000) != 0)
    {
      goto LABEL_12;
    }

    if (v5 + 23 > 0x10000000000)
    {
      goto LABEL_12;
    }

    v6 = malloc_type_malloc(v5 + 23, 0xD93B561uLL);
    if (!v6)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v6 = malloc_type_malloc(0x17uLL, 0xD93B561uLL);
    if (!v6)
    {
      goto LABEL_12;
    }
  }

  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF0;
  *(v7 - 8) = v6;
  if (v7)
  {
    bzero(((v6 + 23) & 0xFFFFFFFFFFFFFFF0), v5);
    v2[490] = v7;
    v8 = v2[496];
    if (!v8)
    {
      goto LABEL_18;
    }

    goto LABEL_13;
  }

LABEL_12:
  v2[490] = 0;
  vpx_internal_error(a1 + 171696, 2, "Failed to allocate cpi->segmentation_map");
  v8 = v2[496];
  if (!v8)
  {
    goto LABEL_18;
  }

LABEL_13:
  v9 = *(v8 + 32);
  if (v9)
  {
    free(*(v9 - 8));
  }

  v10 = *(v8 + 40);
  if (v10)
  {
    free(*(v10 - 8));
  }

  free(*(v8 - 8));
LABEL_18:
  refreshed = vp9_cyclic_refresh_alloc(*v3, v3[2]);
  v2[496] = refreshed;
  if (!refreshed)
  {
    vpx_internal_error(a1 + 171696, 2, "Failed to allocate cpi->cyclic_refresh");
  }

  v12 = v2[498];
  if (v12)
  {
    free(*(v12 - 8));
  }

  v13 = v3[2] * *v3;
  if (v13)
  {
    if ((v13 & 0x80000000) != 0 || v13 + 23 > 0x10000000000 || (v14 = malloc_type_malloc(v13 + 23, 0xD93B561uLL)) == 0)
    {
LABEL_31:
      v2[498] = 0;
      vpx_internal_error(a1 + 171696, 2, "Failed to allocate cpi->active_map.map");
      v16 = *v2;
      if (!*v2)
      {
        goto LABEL_33;
      }

      goto LABEL_32;
    }
  }

  else
  {
    v14 = malloc_type_malloc(0x17uLL, 0xD93B561uLL);
    if (!v14)
    {
      goto LABEL_31;
    }
  }

  v15 = (v14 + 23) & 0xFFFFFFFFFFFFFFF0;
  *(v15 - 8) = v14;
  if (!v15)
  {
    goto LABEL_31;
  }

  bzero(((v14 + 23) & 0xFFFFFFFFFFFFFFF0), v13);
  v2[498] = v15;
  v16 = *v2;
  if (*v2)
  {
LABEL_32:
    free(*(v16 - 8));
  }

LABEL_33:
  v17 = v3[2] * *v3;
  if (v17)
  {
    if ((v17 & 0x80000000) != 0)
    {
      goto LABEL_41;
    }

    if (v17 + 23 > 0x10000000000)
    {
      goto LABEL_41;
    }

    v18 = malloc_type_malloc(v17 + 23, 0xD93B561uLL);
    if (!v18)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v18 = malloc_type_malloc(0x17uLL, 0xD93B561uLL);
    if (!v18)
    {
      goto LABEL_41;
    }
  }

  v19 = (v18 + 23) & 0xFFFFFFFFFFFFFFF0;
  *(v19 - 8) = v18;
  if (v19)
  {
    bzero(((v18 + 23) & 0xFFFFFFFFFFFFFFF0), v17);
    *v2 = v19;
    return;
  }

LABEL_41:
  *v2 = 0;

  vpx_internal_error(a1 + 171696, 2, "Failed to allocate cpi->coding_context.last_frame_seg_map_copy");
}

void update_frame_size(uint64_t a1)
{
  v2 = a1 + 189928;
  v3 = a1 + 171988;
  v4 = a1 + 74112;
  v5 = a1 + 171696;
  v6 = *(a1 + 171992) + 7;
  v7 = (*(a1 + 171988) + 7) >> 3;
  *(a1 + 173016) = v7;
  v6 >>= 3;
  *(a1 + 173008) = v6;
  *(a1 + 173020) = v7 + 8;
  v8 = (v7 + 1) >> 1;
  *(a1 + 173012) = v8;
  v9 = (v6 + 1) >> 1;
  *(a1 + 173004) = v9;
  *(a1 + 173000) = v9 * v8;
  (*(a1 + 173160))(a1 + 171696);
  v10 = *(a1 + 173232);
  if (v10)
  {
    bzero(v10, *(v3 + 1028) * *(v3 + 1020));
  }

  v11 = *(a1 + 173060);
  *(a1 + 74192) = *(a1 + 173044);
  *(a1 + 74208) = v11;
  v12 = *(v3 + 1028);
  v13 = (v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(v2 + 24);
  v14 = *(v2 + 32);
  *(v4 + 544) = v14 + 2 * v13;
  *v4 = 0;
  *(v4 + 536) = v14;
  v16 = *(a1 + 176600);
  *(v4 + 136) = 0;
  v17 = *(a1 + 173076);
  v18 = *(a1 + 173092);
  *(a1 + 74328) = v17;
  *(a1 + 74344) = v18;
  *(v4 + 272) = 0;
  *(v4 + 552) = v14 + 4 * v13;
  *(a1 + 74464) = v17;
  *(a1 + 74480) = v18;
  LODWORD(v14) = *(v3 + 984);
  LODWORD(v13) = *(v3 + 1032);
  *(v4 + 504) = v16;
  *(v4 + 608) = v15;
  *(v4 + 440) = v13;
  *(v4 + 640) = v5;
  v19 = &vp9_kf_partition_probs;
  if (v14)
  {
    v20 = (v16 + 126);
    if (!*(v3 + 1000))
    {
      v19 = v20;
    }
  }

  v21 = *(a1 + 163488);
  *(v4 + 480) = v19;
  *(v4 + 664) = v21;
  bzero(v21, 36 * *(v3 + 1020) * v12);
  v22 = (*(v3 + 1028) + 7) >> 3;
  v23 = -1;
  do
  {
    ++v23;
  }

  while (64 << v23 < v22);
  v24 = -1;
  do
  {
    v25 = v22 >> (v24++ + 2);
  }

  while (v25 > 3);
  v26 = *(v2 + 408);
  if (v26 < v24)
  {
    v24 = *(v2 + 408);
  }

  if (v26 >= v23)
  {
    v27 = v24;
  }

  else
  {
    v27 = v23;
  }

  v28 = *(v2 + 412);
  *v2 = v27;
  *(v2 + 4) = v28;
  if (*(v2 + 428) == 1)
  {
    v29 = *(v3 + 4);
    v30 = v29 * *v3;
    if (*v3 > v29)
    {
      v29 = *v3;
    }

    v31 = &dword_273BCFFC0;
    v32 = 245;
    while (*v31 < v30 || v31[1] < v29)
    {
      v31 += 16;
      if (!--v32)
      {
        return;
      }
    }

    v33 = __clz(*(v31 + 32)) ^ 0x1F;
    if (v27 > v33)
    {
      if (v33 > v23)
      {
        v23 = v33;
      }

      *v2 = v23;
    }
  }
}

void alloc_copy_partition_data(uint64_t a1)
{
  v2 = (a1 + 942056);
  v3 = (a1 + 173008);
  if (*(a1 + 942056))
  {
    if (*(a1 + 942064))
    {
      goto LABEL_3;
    }

LABEL_16:
    v7 = (v3[3] >> 3) + (v3[3] >> 3) * (*v3 >> 3);
    v8 = v7;
    if (v7)
    {
      if (v7 < 0)
      {
        goto LABEL_25;
      }

      if ((v7 + 23) > 0x10000000000)
      {
        goto LABEL_25;
      }

      v9 = malloc_type_malloc(v7 + 23, 0xD93B561uLL);
      if (!v9)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v9 = malloc_type_malloc(0x17uLL, 0xD93B561uLL);
      if (!v9)
      {
        goto LABEL_25;
      }
    }

    v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF0;
    *(v10 - 8) = v9;
    if (v10)
    {
      bzero(((v9 + 23) & 0xFFFFFFFFFFFFFFF0), v8);
      v2[1] = v10;
      if (!v2[2])
      {
        goto LABEL_26;
      }

LABEL_4:
      if (v2[3])
      {
        return;
      }

      goto LABEL_36;
    }

LABEL_25:
    v2[1] = 0;
    vpx_internal_error(a1 + 171696, 2, "Failed to allocate cpi->prev_segment_id");
    if (!v2[2])
    {
      goto LABEL_26;
    }

    goto LABEL_4;
  }

  v4 = *v3 * *(a1 + 173020);
  if (v4)
  {
    if ((v4 & 0x80000000) != 0 || v4 + 23 > 0x10000000000 || (v5 = malloc_type_malloc(v4 + 23, 0xD93B561uLL)) == 0)
    {
LABEL_15:
      *v2 = 0;
      vpx_internal_error(a1 + 171696, 2, "Failed to allocate cpi->prev_partition");
      if (!v2[1])
      {
        goto LABEL_16;
      }

      goto LABEL_3;
    }
  }

  else
  {
    v5 = malloc_type_malloc(0x17uLL, 0xD93B561uLL);
    if (!v5)
    {
      goto LABEL_15;
    }
  }

  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF0;
  *(v6 - 8) = v5;
  if (!v6)
  {
    goto LABEL_15;
  }

  bzero(((v5 + 23) & 0xFFFFFFFFFFFFFFF0), v4);
  *v2 = v6;
  if (!v2[1])
  {
    goto LABEL_16;
  }

LABEL_3:
  if (v2[2])
  {
    goto LABEL_4;
  }

LABEL_26:
  v11 = 25 * ((v3[3] >> 3) + (v3[3] >> 3) * (*v3 >> 3));
  v12 = v11;
  if (v11)
  {
    if (v11 < 0)
    {
      goto LABEL_35;
    }

    if ((v11 + 23) > 0x10000000000)
    {
      goto LABEL_35;
    }

    v13 = malloc_type_malloc(v11 + 23, 0xD93B561uLL);
    if (!v13)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v13 = malloc_type_malloc(0x17uLL, 0xD93B561uLL);
    if (!v13)
    {
      goto LABEL_35;
    }
  }

  v14 = (v13 + 23) & 0xFFFFFFFFFFFFFFF0;
  *(v14 - 8) = v13;
  if (v14)
  {
    bzero(((v13 + 23) & 0xFFFFFFFFFFFFFFF0), v12);
    v2[2] = v14;
    if (v2[3])
    {
      return;
    }

    goto LABEL_36;
  }

LABEL_35:
  v2[2] = 0;
  vpx_internal_error(a1 + 171696, 2, "Failed to allocate cpi->prev_variance_low");
  if (v2[3])
  {
    return;
  }

LABEL_36:
  v15 = (v3[3] >> 3) + (v3[3] >> 3) * (*v3 >> 3);
  v16 = v15;
  if (!v15)
  {
    v17 = malloc_type_malloc(0x17uLL, 0xD93B561uLL);
    if (!v17)
    {
      goto LABEL_44;
    }

LABEL_42:
    v18 = (v17 + 23) & 0xFFFFFFFFFFFFFFF0;
    *(v18 - 8) = v17;
    if (v18)
    {
      bzero(((v17 + 23) & 0xFFFFFFFFFFFFFFF0), v16);
      v2[3] = v18;
      return;
    }

    goto LABEL_44;
  }

  if ((v15 & 0x80000000) == 0 && (v15 + 23) <= 0x10000000000)
  {
    v17 = malloc_type_malloc(v15 + 23, 0xD93B561uLL);
    if (v17)
    {
      goto LABEL_42;
    }
  }

LABEL_44:
  v2[3] = 0;

  vpx_internal_error(a1 + 171696, 2, "Failed to allocate cpi->copied_frame_cnt");
}

char *highbd_set_var_fns(char *result)
{
  if (*(result + 43005))
  {
    v1 = *(result + 47464);
    v2 = (result + 740472);
    v105 = vpx_highbd_sad4x4x4d_bits8;
    v104 = vpx_highbd_8_sub_pixel_avg_variance4x4_neon;
    v103 = vpx_highbd_8_sub_pixel_variance4x4_neon;
    v102 = vpx_highbd_8_variance4x4_neon;
    v101 = vpx_highbd_sad4x4_avg_bits8;
    v100 = vpx_highbd_sad_skip_4x4_bits8;
    v99 = vpx_highbd_sad4x4_bits8;
    v98 = vpx_highbd_sad_skip_4x8x4d_bits8;
    v97 = vpx_highbd_sad4x8x4d_bits8;
    v96 = vpx_highbd_8_sub_pixel_avg_variance4x8_neon;
    v95 = vpx_highbd_8_sub_pixel_variance4x8_neon;
    v94 = vpx_highbd_8_variance4x8_neon;
    v93 = vpx_highbd_sad4x8_avg_bits8;
    v92 = vpx_highbd_sad_skip_4x8_bits8;
    v91 = vpx_highbd_sad4x8_bits8;
    v90 = vpx_highbd_sad_skip_8x4x4d_bits8;
    v89 = vpx_highbd_sad8x4x4d_bits8;
    v88 = vpx_highbd_8_sub_pixel_avg_variance8x4_neon;
    v87 = vpx_highbd_8_sub_pixel_variance8x4_neon;
    v86 = vpx_highbd_8_variance8x4_neon;
    v85 = vpx_highbd_sad8x4_avg_bits8;
    v84 = vpx_highbd_sad_skip_8x4_bits8;
    v83 = vpx_highbd_sad8x4_bits8;
    v82 = vpx_highbd_sad_skip_8x8x4d_bits8;
    v81 = vpx_highbd_sad8x8x4d_bits8;
    v80 = vpx_highbd_8_sub_pixel_avg_variance8x8_neon;
    v79 = vpx_highbd_8_sub_pixel_variance8x8_neon;
    v78 = vpx_highbd_8_variance8x8_neon;
    v77 = vpx_highbd_sad8x8_avg_bits8;
    v76 = vpx_highbd_sad_skip_8x8_bits8;
    v75 = vpx_highbd_sad8x8_bits8;
    v74 = vpx_highbd_sad_skip_8x16x4d_bits8;
    v73 = vpx_highbd_sad8x16x4d_bits8;
    v72 = vpx_highbd_8_sub_pixel_avg_variance8x16_neon;
    v71 = vpx_highbd_8_sub_pixel_variance8x16_neon;
    v70 = vpx_highbd_8_variance8x16_neon;
    v69 = vpx_highbd_sad8x16_avg_bits8;
    v68 = vpx_highbd_sad_skip_8x16_bits8;
    v67 = vpx_highbd_sad8x16_bits8;
    v66 = vpx_highbd_sad_skip_16x8x4d_bits8;
    v65 = vpx_highbd_sad16x8x4d_bits8;
    v64 = vpx_highbd_8_sub_pixel_avg_variance16x8_neon;
    v63 = vpx_highbd_8_sub_pixel_variance16x8_neon;
    v62 = vpx_highbd_8_variance16x8_neon;
    v61 = vpx_highbd_sad16x8_avg_bits8;
    v60 = vpx_highbd_sad_skip_16x8_bits8;
    v59 = vpx_highbd_sad16x8_bits8;
    v58 = vpx_highbd_sad_skip_16x16x4d_bits8;
    v57 = vpx_highbd_sad16x16x4d_bits8;
    v56 = vpx_highbd_8_sub_pixel_avg_variance16x16_neon;
    v55 = vpx_highbd_8_sub_pixel_variance16x16_neon;
    v54 = vpx_highbd_8_variance16x16_neon;
    v53 = vpx_highbd_sad16x16_avg_bits8;
    v52 = vpx_highbd_sad_skip_16x16_bits8;
    v51 = vpx_highbd_sad16x16_bits8;
    v50 = vpx_highbd_sad_skip_64x64x4d_bits8;
    v49 = vpx_highbd_sad64x64x4d_bits8;
    v48 = vpx_highbd_8_sub_pixel_avg_variance64x64_neon;
    v47 = vpx_highbd_8_sub_pixel_variance64x64_neon;
    v46 = vpx_highbd_8_variance64x64_neon;
    v45 = vpx_highbd_sad64x64_avg_bits8;
    v44 = vpx_highbd_sad_skip_64x64_bits8;
    v43 = vpx_highbd_sad64x64_bits8;
    v42 = vpx_highbd_sad_skip_32x32x4d_bits8;
    v41 = vpx_highbd_sad32x32x4d_bits8;
    v40 = vpx_highbd_8_sub_pixel_avg_variance32x32_neon;
    v39 = vpx_highbd_8_sub_pixel_variance32x32_neon;
    v38 = vpx_highbd_8_variance32x32_neon;
    v37 = vpx_highbd_sad32x32_avg_bits8;
    v36 = vpx_highbd_sad_skip_32x32_bits8;
    v35 = vpx_highbd_sad32x32_bits8;
    v34 = vpx_highbd_sad_skip_32x64x4d_bits8;
    v33 = vpx_highbd_sad32x64x4d_bits8;
    v32 = vpx_highbd_8_sub_pixel_avg_variance32x64_neon;
    v31 = vpx_highbd_8_sub_pixel_variance32x64_neon;
    v30 = vpx_highbd_8_variance32x64_neon;
    v29 = vpx_highbd_sad32x64_avg_bits8;
    v3 = vpx_highbd_sad_skip_32x64_bits8;
    v4 = vpx_highbd_sad32x64_bits8;
    v5 = vpx_highbd_sad_skip_64x32x4d_bits8;
    v6 = vpx_highbd_sad64x32x4d_bits8;
    v7 = vpx_highbd_8_sub_pixel_avg_variance64x32_neon;
    v8 = vpx_highbd_8_sub_pixel_variance64x32_neon;
    v9 = vpx_highbd_8_variance64x32_neon;
    v10 = vpx_highbd_sad64x32_avg_bits8;
    v11 = vpx_highbd_sad_skip_64x32_bits8;
    v12 = vpx_highbd_sad64x32_bits8;
    v13 = vpx_highbd_sad_skip_16x32x4d_bits8;
    result = vpx_highbd_sad16x32x4d_bits8;
    v14 = vpx_highbd_8_sub_pixel_avg_variance16x32_neon;
    v15 = vpx_highbd_8_sub_pixel_variance16x32_neon;
    v16 = vpx_highbd_8_variance16x32_neon;
    v17 = vpx_highbd_sad16x32_avg_bits8;
    v18 = vpx_highbd_sad_skip_16x32_bits8;
    v19 = vpx_highbd_sad16x32_bits8;
    v20 = vpx_highbd_sad_skip_32x16x4d_bits8;
    v21 = vpx_highbd_sad32x16x4d_bits8;
    v22 = vpx_highbd_8_sub_pixel_avg_variance32x16_neon;
    v23 = vpx_highbd_8_sub_pixel_variance32x16_neon;
    v24 = vpx_highbd_8_variance32x16_neon;
    v25 = vpx_highbd_sad32x16_avg_bits8;
    v26 = vpx_highbd_sad_skip_32x16_bits8;
    v27 = vpx_highbd_sad32x16_bits8;
    if (v1 == 8)
    {
      v28 = vpx_highbd_sad_skip_4x4x4d_bits8;
    }

    else if (v1 == 10)
    {
      v28 = vpx_highbd_sad_skip_4x4x4d_bits10;
      v105 = vpx_highbd_sad4x4x4d_bits10;
      v104 = vpx_highbd_10_sub_pixel_avg_variance4x4_neon;
      v103 = vpx_highbd_10_sub_pixel_variance4x4_neon;
      v102 = vpx_highbd_10_variance4x4_neon;
      v101 = vpx_highbd_sad4x4_avg_bits10;
      v100 = vpx_highbd_sad_skip_4x4_bits10;
      v99 = vpx_highbd_sad4x4_bits10;
      v98 = vpx_highbd_sad_skip_4x8x4d_bits10;
      v97 = vpx_highbd_sad4x8x4d_bits10;
      v96 = vpx_highbd_10_sub_pixel_avg_variance4x8_neon;
      v95 = vpx_highbd_10_sub_pixel_variance4x8_neon;
      v94 = vpx_highbd_10_variance4x8_neon;
      v93 = vpx_highbd_sad4x8_avg_bits10;
      v92 = vpx_highbd_sad_skip_4x8_bits10;
      v91 = vpx_highbd_sad4x8_bits10;
      v90 = vpx_highbd_sad_skip_8x4x4d_bits10;
      v89 = vpx_highbd_sad8x4x4d_bits10;
      v88 = vpx_highbd_10_sub_pixel_avg_variance8x4_neon;
      v87 = vpx_highbd_10_sub_pixel_variance8x4_neon;
      v86 = vpx_highbd_10_variance8x4_neon;
      v85 = vpx_highbd_sad8x4_avg_bits10;
      v84 = vpx_highbd_sad_skip_8x4_bits10;
      v83 = vpx_highbd_sad8x4_bits10;
      v82 = vpx_highbd_sad_skip_8x8x4d_bits10;
      v81 = vpx_highbd_sad8x8x4d_bits10;
      v80 = vpx_highbd_10_sub_pixel_avg_variance8x8_neon;
      v79 = vpx_highbd_10_sub_pixel_variance8x8_neon;
      v78 = vpx_highbd_10_variance8x8_neon;
      v77 = vpx_highbd_sad8x8_avg_bits10;
      v76 = vpx_highbd_sad_skip_8x8_bits10;
      v75 = vpx_highbd_sad8x8_bits10;
      v74 = vpx_highbd_sad_skip_8x16x4d_bits10;
      v73 = vpx_highbd_sad8x16x4d_bits10;
      v72 = vpx_highbd_10_sub_pixel_avg_variance8x16_neon;
      v71 = vpx_highbd_10_sub_pixel_variance8x16_neon;
      v70 = vpx_highbd_10_variance8x16_neon;
      v69 = vpx_highbd_sad8x16_avg_bits10;
      v68 = vpx_highbd_sad_skip_8x16_bits10;
      v67 = vpx_highbd_sad8x16_bits10;
      v66 = vpx_highbd_sad_skip_16x8x4d_bits10;
      v65 = vpx_highbd_sad16x8x4d_bits10;
      v64 = vpx_highbd_10_sub_pixel_avg_variance16x8_neon;
      v63 = vpx_highbd_10_sub_pixel_variance16x8_neon;
      v62 = vpx_highbd_10_variance16x8_neon;
      v61 = vpx_highbd_sad16x8_avg_bits10;
      v60 = vpx_highbd_sad_skip_16x8_bits10;
      v59 = vpx_highbd_sad16x8_bits10;
      v58 = vpx_highbd_sad_skip_16x16x4d_bits10;
      v57 = vpx_highbd_sad16x16x4d_bits10;
      v56 = vpx_highbd_10_sub_pixel_avg_variance16x16_neon;
      v55 = vpx_highbd_10_sub_pixel_variance16x16_neon;
      v54 = vpx_highbd_10_variance16x16_neon;
      v53 = vpx_highbd_sad16x16_avg_bits10;
      v52 = vpx_highbd_sad_skip_16x16_bits10;
      v51 = vpx_highbd_sad16x16_bits10;
      v50 = vpx_highbd_sad_skip_64x64x4d_bits10;
      v49 = vpx_highbd_sad64x64x4d_bits10;
      v48 = vpx_highbd_10_sub_pixel_avg_variance64x64_neon;
      v47 = vpx_highbd_10_sub_pixel_variance64x64_neon;
      v46 = vpx_highbd_10_variance64x64_neon;
      v45 = vpx_highbd_sad64x64_avg_bits10;
      v44 = vpx_highbd_sad_skip_64x64_bits10;
      v43 = vpx_highbd_sad64x64_bits10;
      v42 = vpx_highbd_sad_skip_32x32x4d_bits10;
      v41 = vpx_highbd_sad32x32x4d_bits10;
      v40 = vpx_highbd_10_sub_pixel_avg_variance32x32_neon;
      v39 = vpx_highbd_10_sub_pixel_variance32x32_neon;
      v38 = vpx_highbd_10_variance32x32_neon;
      v37 = vpx_highbd_sad32x32_avg_bits10;
      v36 = vpx_highbd_sad_skip_32x32_bits10;
      v35 = vpx_highbd_sad32x32_bits10;
      v34 = vpx_highbd_sad_skip_32x64x4d_bits10;
      v33 = vpx_highbd_sad32x64x4d_bits10;
      v32 = vpx_highbd_10_sub_pixel_avg_variance32x64_neon;
      v31 = vpx_highbd_10_sub_pixel_variance32x64_neon;
      v30 = vpx_highbd_10_variance32x64_neon;
      v29 = vpx_highbd_sad32x64_avg_bits10;
      v3 = vpx_highbd_sad_skip_32x64_bits10;
      v4 = vpx_highbd_sad32x64_bits10;
      v5 = vpx_highbd_sad_skip_64x32x4d_bits10;
      v6 = vpx_highbd_sad64x32x4d_bits10;
      v7 = vpx_highbd_10_sub_pixel_avg_variance64x32_neon;
      v8 = vpx_highbd_10_sub_pixel_variance64x32_neon;
      v9 = vpx_highbd_10_variance64x32_neon;
      v10 = vpx_highbd_sad64x32_avg_bits10;
      v11 = vpx_highbd_sad_skip_64x32_bits10;
      v12 = vpx_highbd_sad64x32_bits10;
      v13 = vpx_highbd_sad_skip_16x32x4d_bits10;
      result = vpx_highbd_sad16x32x4d_bits10;
      v14 = vpx_highbd_10_sub_pixel_avg_variance16x32_neon;
      v15 = vpx_highbd_10_sub_pixel_variance16x32_neon;
      v16 = vpx_highbd_10_variance16x32_neon;
      v17 = vpx_highbd_sad16x32_avg_bits10;
      v18 = vpx_highbd_sad_skip_16x32_bits10;
      v19 = vpx_highbd_sad16x32_bits10;
      v20 = vpx_highbd_sad_skip_32x16x4d_bits10;
      v21 = vpx_highbd_sad32x16x4d_bits10;
      v22 = vpx_highbd_10_sub_pixel_avg_variance32x16_neon;
      v23 = vpx_highbd_10_sub_pixel_variance32x16_neon;
      v24 = vpx_highbd_10_variance32x16_neon;
      v25 = vpx_highbd_sad32x16_avg_bits10;
      v26 = vpx_highbd_sad_skip_32x16_bits10;
      v27 = vpx_highbd_sad32x16_bits10;
    }

    else
    {
      v28 = vpx_highbd_sad_skip_4x4x4d_bits12;
      v105 = vpx_highbd_sad4x4x4d_bits12;
      v104 = vpx_highbd_12_sub_pixel_avg_variance4x4_neon;
      v103 = vpx_highbd_12_sub_pixel_variance4x4_neon;
      v102 = vpx_highbd_12_variance4x4_neon;
      v101 = vpx_highbd_sad4x4_avg_bits12;
      v100 = vpx_highbd_sad_skip_4x4_bits12;
      v99 = vpx_highbd_sad4x4_bits12;
      v98 = vpx_highbd_sad_skip_4x8x4d_bits12;
      v97 = vpx_highbd_sad4x8x4d_bits12;
      v96 = vpx_highbd_12_sub_pixel_avg_variance4x8_neon;
      v95 = vpx_highbd_12_sub_pixel_variance4x8_neon;
      v94 = vpx_highbd_12_variance4x8_neon;
      v93 = vpx_highbd_sad4x8_avg_bits12;
      v92 = vpx_highbd_sad_skip_4x8_bits12;
      v91 = vpx_highbd_sad4x8_bits12;
      v90 = vpx_highbd_sad_skip_8x4x4d_bits12;
      v89 = vpx_highbd_sad8x4x4d_bits12;
      v88 = vpx_highbd_12_sub_pixel_avg_variance8x4_neon;
      v87 = vpx_highbd_12_sub_pixel_variance8x4_neon;
      v86 = vpx_highbd_12_variance8x4_neon;
      v85 = vpx_highbd_sad8x4_avg_bits12;
      v84 = vpx_highbd_sad_skip_8x4_bits12;
      v83 = vpx_highbd_sad8x4_bits12;
      v82 = vpx_highbd_sad_skip_8x8x4d_bits12;
      v81 = vpx_highbd_sad8x8x4d_bits12;
      v80 = vpx_highbd_12_sub_pixel_avg_variance8x8_neon;
      v79 = vpx_highbd_12_sub_pixel_variance8x8_neon;
      v78 = vpx_highbd_12_variance8x8_neon;
      v77 = vpx_highbd_sad8x8_avg_bits12;
      v76 = vpx_highbd_sad_skip_8x8_bits12;
      v75 = vpx_highbd_sad8x8_bits12;
      v74 = vpx_highbd_sad_skip_8x16x4d_bits12;
      v73 = vpx_highbd_sad8x16x4d_bits12;
      v72 = vpx_highbd_12_sub_pixel_avg_variance8x16_neon;
      v71 = vpx_highbd_12_sub_pixel_variance8x16_neon;
      v70 = vpx_highbd_12_variance8x16_neon;
      v69 = vpx_highbd_sad8x16_avg_bits12;
      v68 = vpx_highbd_sad_skip_8x16_bits12;
      v67 = vpx_highbd_sad8x16_bits12;
      v66 = vpx_highbd_sad_skip_16x8x4d_bits12;
      v65 = vpx_highbd_sad16x8x4d_bits12;
      v64 = vpx_highbd_12_sub_pixel_avg_variance16x8_neon;
      v63 = vpx_highbd_12_sub_pixel_variance16x8_neon;
      v62 = vpx_highbd_12_variance16x8_neon;
      v61 = vpx_highbd_sad16x8_avg_bits12;
      v60 = vpx_highbd_sad_skip_16x8_bits12;
      v59 = vpx_highbd_sad16x8_bits12;
      v58 = vpx_highbd_sad_skip_16x16x4d_bits12;
      v57 = vpx_highbd_sad16x16x4d_bits12;
      v56 = vpx_highbd_12_sub_pixel_avg_variance16x16_neon;
      v55 = vpx_highbd_12_sub_pixel_variance16x16_neon;
      v54 = vpx_highbd_12_variance16x16_neon;
      v53 = vpx_highbd_sad16x16_avg_bits12;
      v52 = vpx_highbd_sad_skip_16x16_bits12;
      v51 = vpx_highbd_sad16x16_bits12;
      v50 = vpx_highbd_sad_skip_64x64x4d_bits12;
      v49 = vpx_highbd_sad64x64x4d_bits12;
      v48 = vpx_highbd_12_sub_pixel_avg_variance64x64_neon;
      v47 = vpx_highbd_12_sub_pixel_variance64x64_neon;
      v46 = vpx_highbd_12_variance64x64_neon;
      v45 = vpx_highbd_sad64x64_avg_bits12;
      v44 = vpx_highbd_sad_skip_64x64_bits12;
      v43 = vpx_highbd_sad64x64_bits12;
      v42 = vpx_highbd_sad_skip_32x32x4d_bits12;
      v41 = vpx_highbd_sad32x32x4d_bits12;
      v40 = vpx_highbd_12_sub_pixel_avg_variance32x32_neon;
      v39 = vpx_highbd_12_sub_pixel_variance32x32_neon;
      v38 = vpx_highbd_12_variance32x32_neon;
      v37 = vpx_highbd_sad32x32_avg_bits12;
      v36 = vpx_highbd_sad_skip_32x32_bits12;
      v35 = vpx_highbd_sad32x32_bits12;
      v34 = vpx_highbd_sad_skip_32x64x4d_bits12;
      v33 = vpx_highbd_sad32x64x4d_bits12;
      v32 = vpx_highbd_12_sub_pixel_avg_variance32x64_neon;
      v31 = vpx_highbd_12_sub_pixel_variance32x64_neon;
      v30 = vpx_highbd_12_variance32x64_neon;
      v29 = vpx_highbd_sad32x64_avg_bits12;
      v3 = vpx_highbd_sad_skip_32x64_bits12;
      v4 = vpx_highbd_sad32x64_bits12;
      v5 = vpx_highbd_sad_skip_64x32x4d_bits12;
      v6 = vpx_highbd_sad64x32x4d_bits12;
      v7 = vpx_highbd_12_sub_pixel_avg_variance64x32_neon;
      v8 = vpx_highbd_12_sub_pixel_variance64x32_neon;
      v9 = vpx_highbd_12_variance64x32_neon;
      v10 = vpx_highbd_sad64x32_avg_bits12;
      v11 = vpx_highbd_sad_skip_64x32_bits12;
      v12 = vpx_highbd_sad64x32_bits12;
      v13 = vpx_highbd_sad_skip_16x32x4d_bits12;
      result = vpx_highbd_sad16x32x4d_bits12;
      v14 = vpx_highbd_12_sub_pixel_avg_variance16x32_neon;
      v15 = vpx_highbd_12_sub_pixel_variance16x32_neon;
      v16 = vpx_highbd_12_variance16x32_neon;
      v17 = vpx_highbd_sad16x32_avg_bits12;
      v18 = vpx_highbd_sad_skip_16x32_bits12;
      v19 = vpx_highbd_sad16x32_bits12;
      v20 = vpx_highbd_sad_skip_32x16x4d_bits12;
      v21 = vpx_highbd_sad32x16x4d_bits12;
      v22 = vpx_highbd_12_sub_pixel_avg_variance32x16_neon;
      v23 = vpx_highbd_12_sub_pixel_variance32x16_neon;
      v24 = vpx_highbd_12_variance32x16_neon;
      v25 = vpx_highbd_sad32x16_avg_bits12;
      v26 = vpx_highbd_sad_skip_32x16_bits12;
      v27 = vpx_highbd_sad32x16_bits12;
    }

    v2[63] = v13;
    v2[64] = v27;
    v2[65] = v26;
    v2[66] = v25;
    v2[67] = v24;
    v2[68] = v23;
    v2[69] = v22;
    v2[70] = v21;
    v2[71] = v20;
    v2[56] = v19;
    v2[57] = v18;
    v2[58] = v17;
    v2[59] = v16;
    v2[60] = v15;
    v2[61] = v14;
    v2[62] = result;
    v2[88] = v12;
    v2[89] = v11;
    v2[90] = v10;
    v2[91] = v9;
    v2[92] = v8;
    v2[93] = v7;
    v2[94] = v6;
    v2[95] = v5;
    v2[80] = v4;
    v2[81] = v3;
    v2[82] = v29;
    v2[83] = v30;
    v2[84] = v31;
    v2[85] = v32;
    v2[86] = v33;
    v2[87] = v34;
    v2[72] = v35;
    v2[73] = v36;
    v2[74] = v37;
    v2[75] = v38;
    v2[76] = v39;
    v2[77] = v40;
    v2[78] = v41;
    v2[79] = v42;
    v2[96] = v43;
    v2[97] = v44;
    v2[98] = v45;
    v2[99] = v46;
    v2[100] = v47;
    v2[101] = v48;
    v2[102] = v49;
    v2[103] = v50;
    v2[48] = v51;
    v2[49] = v52;
    v2[50] = v53;
    v2[51] = v54;
    v2[52] = v55;
    v2[53] = v56;
    v2[54] = v57;
    v2[55] = v58;
    v2[40] = v59;
    v2[41] = v60;
    v2[42] = v61;
    v2[43] = v62;
    v2[44] = v63;
    v2[45] = v64;
    v2[46] = v65;
    v2[47] = v66;
    v2[32] = v67;
    v2[33] = v68;
    v2[34] = v69;
    v2[35] = v70;
    v2[36] = v71;
    v2[37] = v72;
    v2[38] = v73;
    v2[39] = v74;
    v2[24] = v75;
    v2[25] = v76;
    v2[26] = v77;
    v2[27] = v78;
    v2[28] = v79;
    v2[29] = v80;
    v2[30] = v81;
    v2[31] = v82;
    v2[16] = v83;
    v2[17] = v84;
    v2[18] = v85;
    v2[19] = v86;
    v2[20] = v87;
    v2[21] = v88;
    v2[22] = v89;
    v2[23] = v90;
    v2[8] = v91;
    v2[9] = v92;
    v2[10] = v93;
    v2[11] = v94;
    v2[12] = v95;
    v2[13] = v96;
    v2[14] = v97;
    v2[15] = v98;
    *v2 = v99;
    v2[1] = v100;
    v2[2] = v101;
    v2[3] = v102;
    v2[4] = v103;
    v2[5] = v104;
    v2[6] = v105;
    v2[7] = v28;
  }

  return result;
}

uint64_t alloc_raw_frame_buffers(uint64_t a1)
{
  v2 = a1 + 189936;
  v3 = (a1 + 172012);
  if (!*(a1 + 190424))
  {
    v4 = vp9_lookahead_init(*(a1 + 189992), *(a1 + 189996), *(a1 + 172012), *(a1 + 172016), *(a1 + 172020), *(a1 + 190088));
    *(v2 + 488) = v4;
    if (!v4)
    {
      vpx_internal_error(a1 + 171696, 2, "Failed to allocate lag buffers");
    }
  }

  result = vpx_realloc_frame_buffer(a1 + 754344, *(v2 + 56), *(v2 + 60), *v3, v3[1], v3[2], 160, *v2, 0, 0, 0);
  if (result)
  {

    return vpx_internal_error(a1 + 171696, 2, "Failed to allocate temporal filter buffer");
  }

  return result;
}

_OWORD *vp9_create_compressor(void *a1, uint64_t a2)
{
  v4 = malloc_type_malloc(0xE61F7uLL, 0xD93B561uLL);
  if (v4)
  {
    *(((v4 + 39) & 0xFFFFFFFFFFFFFFE0) - 8) = v4;
    v160 = ((v4 + 39) & 0xFFFFFFFFFFFFFFE0);
    v5 = v160;
    if (v160)
    {
      v5 = (v160 + 10731);
    }
  }

  else
  {
    v160 = 0;
    v5 = 0;
  }

  v159 = v5;
  if (!v5)
  {
    return 0;
  }

  bzero(v160, 0xE61D0uLL);
  if (setjmp(v159 + 23))
  {
    v159[22] = 0;
    vp9_remove_compressor(v160, v6);
    return 0;
  }

  v159[22] = 1;
  *(v159 + 181) = vp9_enc_alloc_mi;
  *(v159 + 182) = vp9_enc_free_mi;
  *(v159 + 183) = vp9_enc_setup_mi;
  v8 = malloc_type_malloc(0x813uLL, 0xD93B561uLL);
  if (v8 && (v9 = v8, v10 = ((v8 + 23) & 0xFFFFFFFFFFFFFFF0), *(v10 - 1) = v9, v10))
  {
    v11 = v10;
    bzero(v10, 0x7FCuLL);
    *(v159 + 613) = v11;
    if (!*(v159 + 613))
    {
      goto LABEL_14;
    }
  }

  else
  {
    *(v159 + 613) = 0;
    if (!*(v159 + 613))
    {
LABEL_14:
      vpx_internal_error(v159, 2, "Failed to allocate cm->fc");
    }
  }

  v12 = malloc_type_malloc(0x2007uLL, 0xD93B561uLL);
  if (v12 && (v13 = v12, v14 = ((v12 + 23) & 0xFFFFFFFFFFFFFFF0), *(v14 - 1) = v13, v14))
  {
    v15 = v14;
    bzero(v14, 0x1FF0uLL);
    __src = a1;
    *(v159 + 614) = v15;
    if (*(v159 + 614))
    {
      goto LABEL_21;
    }
  }

  else
  {
    __src = a1;
    *(v159 + 614) = 0;
    if (*(v159 + 614))
    {
      goto LABEL_21;
    }
  }

  vpx_internal_error(v159, 2, "Failed to allocate cm->frame_contexts");
LABEL_21:
  *(v160 + 235527) = 1;
  *(v160 + 188635) = 0;
  *(v160 + 233449) = 0;
  *(v160 + 233450) = 0;
  *(v160 + 233453) = 0;
  *(v160 + 233454) = 0;
  *(v160 + 233456) = 0;
  *(v160 + 23743) = a2;
  v16 = *(v159 + 2281);
  v159[236] = -1;
  *&v17 = -1;
  *(&v17 + 1) = -1;
  *(v159 + 22) = v17;
  *(v159 + 23) = v17;
  v16[6] = 0;
  v16[62] = 0;
  v16[118] = 0;
  v16[174] = 0;
  v16[230] = 0;
  v16[286] = 0;
  v16[342] = 0;
  v16[398] = 0;
  v16[454] = 0;
  v16[510] = 0;
  v16[566] = 0;
  v16[622] = 0;
  *(v160 + 754336) = 0;
  v157 = v160 + 58882;
  v156 = v160 + 12157;
  memcpy(v160 + 11874, __src, 0x1B8uLL);
  *(v160 + 92397) = __src[3];
  *(v160 + 189852) = *__src;
  *(v160 + 43005) = *(__src + 100);
  *(v160 + 171980) = *(__src + 404);
  v18 = *(__src + 93);
  *(v160 + 233457) = v18;
  *(v160 + 233514) = v18 != 255;
  v19 = v18 - 10;
  v20 = 0;
  switch(v19)
  {
    case 0:
      goto LABEL_35;
    case 1:
      v20 = 1;
      goto LABEL_35;
    case 10:
      v20 = 2;
      goto LABEL_35;
    case 11:
      v20 = 3;
      goto LABEL_35;
    case 20:
      v20 = 4;
      goto LABEL_35;
    case 21:
      v20 = 5;
      goto LABEL_35;
    case 30:
      v20 = 6;
      goto LABEL_35;
    case 31:
      v20 = 7;
      goto LABEL_35;
    case 40:
      v20 = 8;
      goto LABEL_35;
    case 41:
      v20 = 9;
      goto LABEL_35;
    case 42:
      v20 = 10;
      goto LABEL_35;
    case 50:
      v20 = 11;
      goto LABEL_35;
    case 51:
      v20 = 12;
      goto LABEL_35;
    case 52:
      v20 = 13;
LABEL_35:
      v21 = v160 + 58882;
      *v157 = v20;
      *(v160 + 117765) = *(&vp9_level_defs + 8 * v20 + 4) * 1000.0;
      break;
    default:
      v21 = v160 + 58882;
      *v157 = -1;
      break;
  }

  *(v160 + 171988) = __src[1];
  alloc_compressor_data(v160);
  *(v160 + 231542) = *(__src + 105);
  *(v160 + 20431) = v160 + 176620;
  v22 = *(__src + 51);
  v23 = *(__src + 52);
  *(v160 + 188638) = v22;
  *(v160 + 188639) = v23;
  if (v23 > 1 || v22 >= 2 && *(v160 + 47519) != 1)
  {
    vp9_init_layer_context(v160);
  }

  vp9_change_config(v160, __src);
  *(v160 + 739524) = 0;
  *(v160 + 24318) = 0x600000005;
  *(v160 + 48638) = 7;
  *v156 = xmmword_273BA3B40;
  v160[12158] = xmmword_273BCFCE0;
  v24 = *(v160 + 42998) * *(v160 + 42997);
  if (v24 >> 10 <= 0x7E8)
  {
    v25 = 140;
  }

  else
  {
    v25 = 200;
  }

  *(v160 + 116730) = 0x5A00000000;
  *(v160 + 933852) = 0;
  *(v160 + 233465) = 0;
  *(v160 + 233458) = 0;
  *(v160 + 233459) = v24 >= 921600;
  if (v24 >= 921600)
  {
    v26 = v25;
LABEL_47:
    *(v160 + 233461) = v26;
    goto LABEL_49;
  }

  if (v24 >= 230400)
  {
    v26 = 115;
    goto LABEL_47;
  }

  v26 = 90;
LABEL_49:
  *(v160 + 233466) = 15;
  *(v160 + 233462) = v26 + (v26 >> 1);
  *(v21 + 102) = 0;
  v27 = *(__src + 1);
  *&v28 = __src[1];
  *(&v28 + 1) = v28;
  v29 = (v28 + 7) >> 3;
  v30 = (DWORD1(v28) + 7) >> 3;
  v31 = (v29 + 1) >> 1;
  v32 = (v30 + 1) >> 1;
  *v160 = v28;
  *(v160 + 4) = v30;
  *(v160 + 5) = v29;
  *(v160 + 6) = v32;
  *(v160 + 7) = v31;
  *(v160 + 8) = v32 * v31;
  *(v160 + 9) = v27;
  vp9_rc_init((v160 + 11874), *(__src + 23), v160 + 738456);
  if (!*(v160 + 188559))
  {
    __asm { FMOV            V0.2D, #1.0 }

    v160[12431] = _Q0;
    *(v160 + 24864) = 0x3FF0000000000000;
  }

  *(v159 + 4537) = 0;
  *(v160 + 188630) = *(v160 + 47498);
  *(v160 + 188631) = *(v160 + 47499);
  *(v160 + 24311) = 0;
  realloc_segmentation_maps(v160);
  v38 = v159[330] * v159[328];
  if (!v38)
  {
    v40 = malloc_type_malloc(0x17uLL, 0xD93B561uLL);
    if (!v40)
    {
LABEL_59:
      v39 = 0;
      goto LABEL_60;
    }

LABEL_57:
    v41 = v40;
    v42 = ((v40 + 23) & 0xFFFFFFFFFFFFFFF0);
    *(v42 - 1) = v41;
    if (v42)
    {
      v43 = v38;
      v44 = v42;
      bzero(v42, v43);
      v39 = v44;
      goto LABEL_60;
    }

    goto LABEL_59;
  }

  v39 = 0;
  if ((v38 & 0x80000000) == 0 && (v38 + 23) <= 0x10000000000)
  {
    v40 = malloc_type_malloc(v38 + 23, 0xD93B561uLL);
    if (!v40)
    {
      goto LABEL_59;
    }

    goto LABEL_57;
  }

LABEL_60:
  *(v160 + 92529) = v39;
  if (!*(v160 + 92529))
  {
    vpx_internal_error(v159, 2, "Failed to allocate cpi->skin_map");
    v45 = v159[330] * v159[328];
    if (v45)
    {
      goto LABEL_62;
    }

LABEL_67:
    v47 = malloc_type_malloc(0x17uLL, 0xD93B561uLL);
    if (!v47)
    {
LABEL_70:
      v46 = 0;
      goto LABEL_71;
    }

LABEL_68:
    v48 = v47;
    v49 = ((v47 + 23) & 0xFFFFFFFFFFFFFFF0);
    *(v49 - 1) = v48;
    if (v49)
    {
      v50 = v45;
      v51 = v49;
      bzero(v49, v50);
      v46 = v51;
      goto LABEL_71;
    }

    goto LABEL_70;
  }

  v45 = v159[330] * v159[328];
  if (!v45)
  {
    goto LABEL_67;
  }

LABEL_62:
  v46 = 0;
  if ((v45 & 0x80000000) == 0 && (v45 + 23) <= 0x10000000000)
  {
    v47 = malloc_type_malloc(v45 + 23, 0xD93B561uLL);
    if (!v47)
    {
      goto LABEL_70;
    }

    goto LABEL_68;
  }

LABEL_71:
  *(v160 + 116734) = v46;
  if (!*(v160 + 116734))
  {
    vpx_internal_error(v159, 2, "Failed to allocate cpi->consec_zero_mv");
  }

  v52 = malloc_type_malloc(0x20013uLL, 0xD93B561uLL);
  if (v52 && (v53 = v52, v54 = ((v52 + 23) & 0xFFFFFFFFFFFFFFF0), *(v54 - 1) = v53, v54))
  {
    v55 = v54;
    bzero(v54, 0x1FFFCuLL);
    v56 = v55;
  }

  else
  {
    v56 = 0;
  }

  *(v160 + 92296) = v56;
  if (*(v160 + 92296))
  {
    v57 = malloc_type_malloc(0x20013uLL, 0xD93B561uLL);
    if (!v57)
    {
      goto LABEL_83;
    }
  }

  else
  {
    vpx_internal_error(v159, 2, "Failed to allocate cpi->nmvcosts[0]");
    v57 = malloc_type_malloc(0x20013uLL, 0xD93B561uLL);
    if (!v57)
    {
      goto LABEL_83;
    }
  }

  v58 = v57;
  v59 = ((v57 + 23) & 0xFFFFFFFFFFFFFFF0);
  *(v59 - 1) = v58;
  if (v59)
  {
    v60 = v59;
    bzero(v59, 0x1FFFCuLL);
    v61 = v60;
    goto LABEL_84;
  }

LABEL_83:
  v61 = 0;
LABEL_84:
  *(v160 + 92297) = v61;
  if (*(v160 + 92297))
  {
    v62 = malloc_type_malloc(0x20013uLL, 0xD93B561uLL);
    if (!v62)
    {
      goto LABEL_90;
    }
  }

  else
  {
    vpx_internal_error(v159, 2, "Failed to allocate cpi->nmvcosts[1]");
    v62 = malloc_type_malloc(0x20013uLL, 0xD93B561uLL);
    if (!v62)
    {
      goto LABEL_90;
    }
  }

  v63 = v62;
  v64 = ((v62 + 23) & 0xFFFFFFFFFFFFFFF0);
  *(v64 - 1) = v63;
  if (v64)
  {
    v65 = v64;
    bzero(v64, 0x1FFFCuLL);
    v66 = v65;
    goto LABEL_91;
  }

LABEL_90:
  v66 = 0;
LABEL_91:
  *(v160 + 92298) = v66;
  if (*(v160 + 92298))
  {
    v67 = malloc_type_malloc(0x20013uLL, 0xD93B561uLL);
    if (!v67)
    {
      goto LABEL_97;
    }
  }

  else
  {
    vpx_internal_error(v159, 2, "Failed to allocate cpi->nmvcosts_hp[0]");
    v67 = malloc_type_malloc(0x20013uLL, 0xD93B561uLL);
    if (!v67)
    {
      goto LABEL_97;
    }
  }

  v68 = v67;
  v69 = ((v67 + 23) & 0xFFFFFFFFFFFFFFF0);
  *(v69 - 1) = v68;
  if (v69)
  {
    v70 = v69;
    bzero(v69, 0x1FFFCuLL);
    v71 = v70;
    goto LABEL_98;
  }

LABEL_97:
  v71 = 0;
LABEL_98:
  *(v160 + 92299) = v71;
  if (*(v160 + 92299))
  {
    v72 = malloc_type_malloc(0x20013uLL, 0xD93B561uLL);
    if (!v72)
    {
      goto LABEL_104;
    }
  }

  else
  {
    vpx_internal_error(v159, 2, "Failed to allocate cpi->nmvcosts_hp[1]");
    v72 = malloc_type_malloc(0x20013uLL, 0xD93B561uLL);
    if (!v72)
    {
      goto LABEL_104;
    }
  }

  v73 = v72;
  v74 = ((v72 + 23) & 0xFFFFFFFFFFFFFFF0);
  *(v74 - 1) = v73;
  if (v74)
  {
    v75 = v74;
    bzero(v74, 0x1FFFCuLL);
    v76 = v75;
    goto LABEL_105;
  }

LABEL_104:
  v76 = 0;
LABEL_105:
  *(v160 + 92300) = v76;
  if (*(v160 + 92300))
  {
    v77 = malloc_type_malloc(0x20013uLL, 0xD93B561uLL);
    if (!v77)
    {
      goto LABEL_111;
    }
  }

  else
  {
    vpx_internal_error(v159, 2, "Failed to allocate cpi->nmvsadcosts[0]");
    v77 = malloc_type_malloc(0x20013uLL, 0xD93B561uLL);
    if (!v77)
    {
      goto LABEL_111;
    }
  }

  v78 = v77;
  v79 = ((v77 + 23) & 0xFFFFFFFFFFFFFFF0);
  *(v79 - 1) = v78;
  if (v79)
  {
    v80 = v79;
    bzero(v79, 0x1FFFCuLL);
    v81 = v80;
    goto LABEL_112;
  }

LABEL_111:
  v81 = 0;
LABEL_112:
  *(v160 + 92301) = v81;
  if (*(v160 + 92301))
  {
    v82 = malloc_type_malloc(0x20013uLL, 0xD93B561uLL);
    if (!v82)
    {
      goto LABEL_118;
    }
  }

  else
  {
    vpx_internal_error(v159, 2, "Failed to allocate cpi->nmvsadcosts[1]");
    v82 = malloc_type_malloc(0x20013uLL, 0xD93B561uLL);
    if (!v82)
    {
      goto LABEL_118;
    }
  }

  v83 = v82;
  v84 = ((v82 + 23) & 0xFFFFFFFFFFFFFFF0);
  *(v84 - 1) = v83;
  if (v84)
  {
    v85 = v84;
    bzero(v84, 0x1FFFCuLL);
    v86 = v85;
    goto LABEL_119;
  }

LABEL_118:
  v86 = 0;
LABEL_119:
  *(v160 + 92302) = v86;
  if (*(v160 + 92302))
  {
    v87 = malloc_type_malloc(0x20013uLL, 0xD93B561uLL);
    if (!v87)
    {
      goto LABEL_125;
    }
  }

  else
  {
    vpx_internal_error(v159, 2, "Failed to allocate cpi->nmvsadcosts_hp[0]");
    v87 = malloc_type_malloc(0x20013uLL, 0xD93B561uLL);
    if (!v87)
    {
LABEL_125:
      v91 = 0;
      goto LABEL_126;
    }
  }

  v88 = v87;
  v89 = ((v87 + 23) & 0xFFFFFFFFFFFFFFF0);
  *(v89 - 1) = v88;
  if (!v89)
  {
    goto LABEL_125;
  }

  v90 = v89;
  bzero(v89, 0x1FFFCuLL);
  v91 = v90;
LABEL_126:
  *(v160 + 92303) = v91;
  if (!*(v160 + 92303))
  {
    vpx_internal_error(v159, 2, "Failed to allocate cpi->nmvsadcosts_hp[1]");
  }

  v92 = 25;
  v93 = 739320;
  do
  {
    while (1)
    {
      v94 = v159[326];
      v95 = 32 * v94;
      if (!v94)
      {
        break;
      }

      if (v95 <= 0x10000000000 && (v95 | 0x17) <= 0x10000000000)
      {
        v97 = malloc_type_malloc(v95 | 0x17, 0xD93B561uLL);
        if (v97)
        {
          goto LABEL_139;
        }
      }

LABEL_129:
      *(v160 + v93) = 0;
      if (!*(v160 + v93))
      {
        goto LABEL_141;
      }

LABEL_130:
      v93 += 8;
      if (!--v92)
      {
        goto LABEL_142;
      }
    }

    v97 = malloc_type_malloc(0x17uLL, 0xD93B561uLL);
    if (!v97)
    {
      goto LABEL_129;
    }

LABEL_139:
    v98 = v97;
    v99 = ((v97 + 23) & 0xFFFFFFFFFFFFFFF0);
    *(v99 - 1) = v98;
    if (!v99)
    {
      goto LABEL_129;
    }

    v100 = v95;
    v101 = v99;
    bzero(v99, v100);
    *(v160 + v93) = v101;
    if (*(v160 + v93))
    {
      goto LABEL_130;
    }

LABEL_141:
    vpx_internal_error(v159, 2, "Failed to allocate cpi->mbgraph_stats[i].mb_stats", v156);
    v93 += 8;
    --v92;
  }

  while (v92);
LABEL_142:
  *(v160 + 48641) = 0;
  *(v160 + 188628) = 0;
  bzero(v160 + 58379, 0x830uLL);
  v160[58510] = 0u;
  v160[58513] = 0u;
  v160[58512] = 0u;
  v160[58511] = 0u;
  *(v160 + 234040) = 0;
  *(v160 + 234053) = 0x7FFFFFFF;
  *(v160 + 471056) = 255;
  *(v160 + 117765) = 0x41DFFFFFFFC00000;
  *(v160 + 235529) = 0x7FFFFFFF;
  *(v160 + 92306) = 0x7FFFFFFFFFFFFFFFLL;
  *(v160 + 74984) = xmmword_273BCFCF0;
  *(v160 + 9368) = *(v160 + 92296) + 65532;
  *(v160 + 9369) = *(v160 + 92297) + 65532;
  *(v160 + 9375) = *(v160 + 92300) + 65532;
  *(v160 + 9376) = *(v160 + 92301) + 65532;
  v102 = *(v160 + 9375);
  *v102 = 0;
  v103 = *(v160 + 9376);
  *v103 = 0;
  v104 = v103;
  v105 = -4;
  v106 = 8;
  v107 = 4;
  do
  {
    v108 = v107;
    v109 = v105;
    v110 = v106;
    v111 = log(v106);
    v112 = vcvtd_n_s64_f64(v111 / 0.693147182 + 0.6 + v111 / 0.693147182 + 0.6, 8uLL);
    *(v102 + v108) = v112;
    *(v104 + v108) = v112;
    *(v102 + v109) = v112;
    *(v104 + v109) = v112;
    v107 = v108 + 4;
    v105 = v109 - 4;
    v106 = v110 + 8;
  }

  while (v108 != 65532);
  *(v160 + 9370) = *(v160 + 92298) + 65532;
  *(v160 + 9371) = *(v160 + 92299) + 65532;
  *(v160 + 9377) = *(v160 + 92302) + 65532;
  *(v160 + 9378) = *(v160 + 92303) + 65532;
  v113 = *(v160 + 9377);
  *v113 = 0;
  v114 = *(v160 + 9378);
  *v114 = 0;
  v115 = -4;
  v116 = 8;
  v117 = 4;
  do
  {
    v118 = v117;
    v119 = v115;
    v120 = v116;
    v121 = log(v116);
    v122 = vcvtd_n_s64_f64(v121 / 0.693147182 + 0.6 + v121 / 0.693147182 + 0.6, 8uLL);
    *(v113 + v118) = v122;
    *(v114 + v118) = v122;
    *(v113 + v119) = v122;
    *(v114 + v119) = v122;
    v117 = v118 + 4;
    v115 = v119 - 4;
    v116 = v120 + 8;
  }

  while (v118 != 65532);
  v123 = 0;
  *(v160 + 185053) = 1;
  *(v160 + 942488) = 0u;
  *(v160 + 942504) = 0u;
  *(v160 + 942456) = 0u;
  *(v160 + 942472) = 0u;
  *(v160 + 942424) = 0u;
  *(v160 + 942440) = 0u;
  *(v160 + 942392) = 0u;
  *(v160 + 942408) = 0u;
  *(v160 + 942360) = 0u;
  *(v160 + 942376) = 0u;
  *(v160 + 942328) = 0u;
  *(v160 + 942344) = 0u;
  *(v160 + 48653) = 0;
  *(v160 + 48652) = 0;
  *(v160 + 24325) = 0;
  vp9_set_speed_features_framesize_independent(v160, *(__src + 18));
  vp9_set_speed_features_framesize_dependent(v160, *(__src + 18));
  v124 = (v159[328] + 1) / 2;
  if (v124 * ((v159[330] + 1) / 2) < 0)
  {
LABEL_150:
    v130 = v123;
  }

  else
  {
    v125 = 8 * (v124 * ((v159[330] + 1) / 2));
    v126 = malloc_type_malloc(v125 + 23, 0xD93B561uLL);
    if (v126)
    {
      v127 = v126;
      v128 = ((v126 + 23) & 0xFFFFFFFFFFFFFFF0);
      *(v128 - 1) = v127;
      if (v128)
      {
        v129 = v125;
        v123 = v128;
        bzero(v128, v129);
        goto LABEL_150;
      }
    }

    v130 = 0;
  }

  *(v160 + 24327) = v130;
  if (!*(v160 + 24327))
  {
    vpx_internal_error(v159, 2, "Failed to allocate cpi->mi_ssim_rdmult_scaling_factors");
  }

  *(v160 + 48574) = 0;
  *(v160 + 23852) = 0;
  *(v160 + 23857) = 0;
  *(v160 + 23862) = 0;
  *(v160 + 23867) = 0;
  *(v160 + 23872) = 0;
  *(v160 + 23877) = 0;
  *(v160 + 23882) = 0;
  *(v160 + 23887) = 0;
  *(v160 + 23892) = 0;
  *(v160 + 23897) = 0;
  *(v160 + 23902) = 0;
  *(v160 + 23907) = 0;
  *(v160 + 23912) = 0;
  *(v160 + 23917) = 0;
  *(v160 + 23922) = 0;
  *(v160 + 23927) = 0;
  *(v160 + 23932) = 0;
  *(v160 + 23937) = 0;
  *(v160 + 23942) = 0;
  *(v160 + 23947) = 0;
  *(v160 + 23952) = 0;
  *(v160 + 23957) = 0;
  *(v160 + 23962) = 0;
  *(v160 + 23967) = 0;
  *(v160 + 23972) = 0;
  *(v160 + 23977) = 0;
  *(v160 + 23982) = 0;
  *(v160 + 23987) = 0;
  *(v160 + 23992) = 0;
  *(v160 + 23997) = 0;
  *(v160 + 24002) = 0;
  *(v160 + 24007) = 0;
  *(v160 + 24012) = 0;
  *(v160 + 24017) = 0;
  *(v160 + 24022) = 0;
  *(v160 + 24027) = 0;
  *(v160 + 24032) = 0;
  *(v160 + 24037) = 0;
  *(v160 + 24042) = 0;
  *(v160 + 24047) = 0;
  *(v160 + 24052) = 0;
  *(v160 + 24057) = 0;
  *(v160 + 24062) = 0;
  *(v160 + 24067) = 0;
  *(v160 + 24072) = 0;
  *(v160 + 24077) = 0;
  *(v160 + 24082) = 0;
  *(v160 + 24087) = 0;
  *(v160 + 24092) = 0;
  *(v160 + 24097) = 0;
  v131 = v159[326];
  if ((v131 & 0x80000000) == 0 && (v132 = 12 * v131, (v133 = malloc_type_malloc(12 * v131 + 23, 0xD93B561uLL)) != 0) && (v134 = v133, v135 = ((v133 + 23) & 0xFFFFFFFFFFFFFFF0), *(v135 - 1) = v134, v135))
  {
    v136 = v135;
    bzero(v135, v132);
    v137 = v136;
  }

  else
  {
    v137 = 0;
  }

  *(v160 + 115893) = v137;
  if (!*(v160 + 115893))
  {
    vpx_internal_error(v159, 2, "Failed to allocate cpi->source_diff_var");
  }

  *(v160 + 231788) = 0;
  *(v160 + 231789) = 0;
  *(v160 + 92623) = vpx_sad32x16;
  *(v160 + 92624) = vpx_sad_skip_32x16;
  *(v160 + 92625) = vpx_sad32x16_avg;
  *(v160 + 92626) = vpx_variance32x16;
  *(v160 + 92627) = vpx_sub_pixel_variance32x16_neon;
  *(v160 + 92628) = vpx_sub_pixel_avg_variance32x16_neon;
  *(v160 + 92629) = vpx_sad32x16x4d;
  *(v160 + 92630) = vpx_sad_skip_32x16x4d;
  *(v160 + 92615) = vpx_sad16x32;
  *(v160 + 92616) = vpx_sad_skip_16x32;
  *(v160 + 92617) = vpx_sad16x32_avg;
  *(v160 + 92618) = vpx_variance16x32;
  *(v160 + 92619) = vpx_sub_pixel_variance16x32_neon;
  *(v160 + 92620) = vpx_sub_pixel_avg_variance16x32_neon;
  *(v160 + 92621) = vpx_sad16x32x4d;
  *(v160 + 92622) = vpx_sad_skip_16x32x4d;
  *(v160 + 92647) = vpx_sad64x32;
  *(v160 + 92648) = vpx_sad_skip_64x32;
  *(v160 + 92649) = vpx_sad64x32_avg;
  *(v160 + 92650) = vpx_variance64x32;
  *(v160 + 92651) = vpx_sub_pixel_variance64x32_neon;
  *(v160 + 92652) = vpx_sub_pixel_avg_variance64x32_neon;
  *(v160 + 92653) = vpx_sad64x32x4d;
  *(v160 + 92654) = vpx_sad_skip_64x32x4d;
  *(v160 + 92639) = vpx_sad32x64;
  *(v160 + 92640) = vpx_sad_skip_32x64;
  *(v160 + 92641) = vpx_sad32x64_avg;
  *(v160 + 92642) = vpx_variance32x64;
  *(v160 + 92643) = vpx_sub_pixel_variance32x64_neon;
  *(v160 + 92644) = vpx_sub_pixel_avg_variance32x64_neon;
  *(v160 + 92645) = vpx_sad32x64x4d;
  *(v160 + 92646) = vpx_sad_skip_32x64x4d;
  *(v160 + 92631) = vpx_sad32x32;
  *(v160 + 92632) = vpx_sad_skip_32x32;
  *(v160 + 92633) = vpx_sad32x32_avg;
  *(v160 + 92634) = vpx_variance32x32;
  *(v160 + 92635) = vpx_sub_pixel_variance32x32_neon;
  *(v160 + 92636) = vpx_sub_pixel_avg_variance32x32_neon;
  *(v160 + 92637) = vpx_sad32x32x4d;
  *(v160 + 92638) = vpx_sad_skip_32x32x4d;
  *(v160 + 92655) = vpx_sad64x64;
  *(v160 + 92656) = vpx_sad_skip_64x64;
  *(v160 + 92657) = vpx_sad64x64_avg;
  *(v160 + 92658) = vpx_variance64x64;
  *(v160 + 92659) = vpx_sub_pixel_variance64x64_neon;
  *(v160 + 92660) = vpx_sub_pixel_avg_variance64x64_neon;
  *(v160 + 92661) = vpx_sad64x64x4d;
  *(v160 + 92662) = vpx_sad_skip_64x64x4d;
  *(v160 + 92607) = vpx_sad16x16;
  *(v160 + 92608) = vpx_sad_skip_16x16;
  *(v160 + 92609) = vpx_sad16x16_avg;
  *(v160 + 92610) = vpx_variance16x16;
  *(v160 + 92611) = vpx_sub_pixel_variance16x16_neon;
  *(v160 + 92612) = vpx_sub_pixel_avg_variance16x16_neon;
  *(v160 + 92613) = vpx_sad16x16x4d;
  *(v160 + 92614) = vpx_sad_skip_16x16x4d;
  *(v160 + 92599) = vpx_sad16x8;
  *(v160 + 92600) = vpx_sad_skip_16x8;
  *(v160 + 92601) = vpx_sad16x8_avg;
  *(v160 + 92602) = vpx_variance16x8;
  *(v160 + 92603) = vpx_sub_pixel_variance16x8_neon;
  *(v160 + 92604) = vpx_sub_pixel_avg_variance16x8_neon;
  *(v160 + 92605) = vpx_sad16x8x4d;
  *(v160 + 92606) = vpx_sad_skip_16x8x4d;
  *(v160 + 92591) = vpx_sad8x16_neon;
  *(v160 + 92592) = vpx_sad_skip_8x16_neon;
  *(v160 + 92593) = vpx_sad8x16_avg_neon;
  *(v160 + 92594) = vpx_variance8x16;
  *(v160 + 92595) = vpx_sub_pixel_variance8x16_neon;
  *(v160 + 92596) = vpx_sub_pixel_avg_variance8x16_neon;
  *(v160 + 92597) = vpx_sad8x16x4d_neon;
  *(v160 + 92598) = vpx_sad_skip_8x16x4d_neon;
  *(v160 + 92583) = vpx_sad8x8_neon;
  *(v160 + 92584) = vpx_sad_skip_8x8_neon;
  *(v160 + 92585) = vpx_sad8x8_avg_neon;
  *(v160 + 92586) = vpx_variance8x8;
  *(v160 + 92587) = vpx_sub_pixel_variance8x8_neon;
  *(v160 + 92588) = vpx_sub_pixel_avg_variance8x8_neon;
  *(v160 + 92589) = vpx_sad8x8x4d_neon;
  *(v160 + 92590) = vpx_sad_skip_8x8x4d_neon;
  *(v160 + 92575) = vpx_sad8x4_neon;
  *(v160 + 92576) = vpx_sad_skip_8x4_neon;
  *(v160 + 92577) = vpx_sad8x4_avg_neon;
  *(v160 + 92578) = vpx_variance8x4;
  *(v160 + 92579) = vpx_sub_pixel_variance8x4_neon;
  *(v160 + 92580) = vpx_sub_pixel_avg_variance8x4_neon;
  *(v160 + 92581) = vpx_sad8x4x4d_neon;
  *(v160 + 92582) = vpx_sad_skip_8x4x4d_neon;
  *(v160 + 92567) = vpx_sad4x8_neon;
  *(v160 + 92568) = vpx_sad_skip_4x8_neon;
  *(v160 + 92569) = vpx_sad4x8_avg_neon;
  *(v160 + 92570) = vpx_variance4x8;
  *(v160 + 92571) = vpx_sub_pixel_variance4x8_neon;
  *(v160 + 92572) = vpx_sub_pixel_avg_variance4x8_neon;
  *(v160 + 92573) = vpx_sad4x8x4d_neon;
  *(v160 + 92574) = vpx_sad_skip_4x8x4d_neon;
  *(v160 + 92559) = vpx_sad4x4_neon;
  *(v160 + 92560) = vpx_sad_skip_4x4_neon;
  *(v160 + 92561) = vpx_sad4x4_avg_neon;
  *(v160 + 92562) = vpx_variance4x4;
  *(v160 + 92563) = vpx_sub_pixel_variance4x4_neon;
  *(v160 + 92564) = vpx_sub_pixel_avg_variance4x4_neon;
  *(v160 + 92565) = vpx_sad4x4x4d_neon;
  *(v160 + 92566) = vpx_sad_skip_4x4x4d_neon;
  highbd_set_var_fns(v160);
  vp9_init_quantizer(v160);
  v138 = v159[1184];
  v139 = v138 > 4;
  if (v138 <= 0)
  {
    v149 = (v159 + 396);
    v150 = 4;
    v151 = 0;
    do
    {
      v152 = v151 + 1;
      v153 = v151 >> v139;
      if (v153 <= 1)
      {
        LOBYTE(v153) = 1;
      }

      v154 = 0x101010101010101 * v153;
      *v149 = v154;
      v149[1] = v154;
      v155 = 0x101010101010101 * (v153 + v150);
      *(v149 - 2) = v155;
      *(v149 - 1) = v155;
      v151 = v152;
      v149 += 6;
      v150 += 2;
    }

    while (v152 != 64);
  }

  else
  {
    v140 = v139 + 1;
    v141 = 9 - v138;
    v142 = (v159 + 396);
    v143 = 4;
    v144 = 0;
    do
    {
      v145 = v144 + 1;
      v146 = v144 >> v140;
      if (v146 >= v141)
      {
        v146 = v141;
      }

      if (v146 <= 1)
      {
        LOBYTE(v146) = 1;
      }

      v147 = 0x101010101010101 * v146;
      *v142 = v147;
      v142[1] = v147;
      v148 = 0x101010101010101 * (v146 + v143);
      *(v142 - 2) = v148;
      *(v142 - 1) = v148;
      v144 = v145;
      v142 += 6;
      v143 += 2;
    }

    while (v145 != 64);
  }

  v159[1185] = v159[1184];
  *(v159 + 100) = 0u;
  *(v159 + 103) = 0u;
  *(v159 + 106) = 0u;
  *(v159 + 109) = 0u;
  *(v159 + 112) = 0u;
  *(v159 + 115) = 0u;
  *(v159 + 118) = 0u;
  *(v159 + 121) = 0u;
  *(v159 + 124) = 0u;
  *(v159 + 127) = 0u;
  *(v159 + 130) = 0u;
  *(v159 + 133) = 0u;
  *(v159 + 136) = 0u;
  *(v159 + 139) = 0u;
  *(v159 + 142) = 0u;
  *(v159 + 145) = 0u;
  *(v159 + 297) = 0x101010101010101;
  *(v159 + 296) = 0x101010101010101;
  *(v159 + 303) = 0x101010101010101;
  *(v159 + 302) = 0x101010101010101;
  *(v159 + 309) = 0x101010101010101;
  *(v159 + 308) = 0x101010101010101;
  *(v159 + 315) = 0x101010101010101;
  *(v159 + 314) = 0x101010101010101;
  *(v159 + 321) = 0x101010101010101;
  *(v159 + 320) = 0x101010101010101;
  *(v159 + 327) = 0x101010101010101;
  *(v159 + 326) = 0x101010101010101;
  *(v159 + 333) = 0x101010101010101;
  *(v159 + 332) = 0x101010101010101;
  *(v159 + 339) = 0x101010101010101;
  *(v159 + 338) = 0x101010101010101;
  *(v159 + 345) = 0x101010101010101;
  *(v159 + 344) = 0x101010101010101;
  *(v159 + 351) = 0x101010101010101;
  *(v159 + 350) = 0x101010101010101;
  *(v159 + 357) = 0x101010101010101;
  *(v159 + 356) = 0x101010101010101;
  *(v159 + 363) = 0x101010101010101;
  *(v159 + 362) = 0x101010101010101;
  *(v159 + 369) = 0x101010101010101;
  *(v159 + 368) = 0x101010101010101;
  *(v159 + 375) = 0x101010101010101;
  *(v159 + 374) = 0x101010101010101;
  *(v159 + 381) = 0x101010101010101;
  *(v159 + 380) = 0x101010101010101;
  *(v159 + 387) = 0x101010101010101;
  *(v159 + 386) = 0x101010101010101;
  *(v159 + 393) = 0x202020202020202;
  *(v159 + 392) = 0x202020202020202;
  *(v159 + 399) = 0x202020202020202;
  *(v159 + 398) = 0x202020202020202;
  *(v159 + 405) = 0x202020202020202;
  *(v159 + 404) = 0x202020202020202;
  *(v159 + 411) = 0x202020202020202;
  *(v159 + 410) = 0x202020202020202;
  *(v159 + 417) = 0x202020202020202;
  *(v159 + 416) = 0x202020202020202;
  *(v159 + 423) = 0x202020202020202;
  *(v159 + 422) = 0x202020202020202;
  *(v159 + 429) = 0x202020202020202;
  *(v159 + 428) = 0x202020202020202;
  *(v159 + 435) = 0x202020202020202;
  *(v159 + 434) = 0x202020202020202;
  *(v159 + 441) = 0x202020202020202;
  *(v159 + 440) = 0x202020202020202;
  *(v159 + 447) = 0x202020202020202;
  *(v159 + 446) = 0x202020202020202;
  *(v159 + 453) = 0x202020202020202;
  *(v159 + 452) = 0x202020202020202;
  *(v159 + 459) = 0x202020202020202;
  *(v159 + 458) = 0x202020202020202;
  *(v159 + 465) = 0x202020202020202;
  *(v159 + 464) = 0x202020202020202;
  *(v159 + 471) = 0x202020202020202;
  *(v159 + 470) = 0x202020202020202;
  *(v159 + 477) = 0x202020202020202;
  *(v159 + 476) = 0x202020202020202;
  *(v159 + 483) = 0x202020202020202;
  *(v159 + 482) = 0x202020202020202;
  *(v159 + 489) = 0x303030303030303;
  *(v159 + 488) = 0x303030303030303;
  *(v159 + 495) = 0x303030303030303;
  *(v159 + 494) = 0x303030303030303;
  *(v159 + 501) = 0x303030303030303;
  *(v159 + 500) = 0x303030303030303;
  *(v159 + 507) = 0x303030303030303;
  *(v159 + 506) = 0x303030303030303;
  *(v159 + 513) = 0x303030303030303;
  *(v159 + 512) = 0x303030303030303;
  *(v159 + 519) = 0x303030303030303;
  *(v159 + 518) = 0x303030303030303;
  *(v159 + 525) = 0x303030303030303;
  *(v159 + 524) = 0x303030303030303;
  *(v159 + 531) = 0x303030303030303;
  *(v159 + 530) = 0x303030303030303;
  *(v159 + 537) = 0x303030303030303;
  *(v159 + 536) = 0x303030303030303;
  *(v159 + 543) = 0x303030303030303;
  *(v159 + 542) = 0x303030303030303;
  *(v159 + 549) = 0x303030303030303;
  *(v159 + 548) = 0x303030303030303;
  *(v159 + 555) = 0x303030303030303;
  *(v159 + 554) = 0x303030303030303;
  *(v159 + 561) = 0x303030303030303;
  *(v159 + 560) = 0x303030303030303;
  *(v159 + 567) = 0x303030303030303;
  *(v159 + 566) = 0x303030303030303;
  *(v159 + 573) = 0x303030303030303;
  *(v159 + 572) = 0x303030303030303;
  *(v159 + 579) = 0x303030303030303;
  *(v159 + 578) = 0x303030303030303;
  vp9_setup_scale_factors_for_frame((v160 + 46269), v159[73], v159[74], v159[73], v159[74], v159[81]);
  *(v160 + 16966) = v160 + 46269;
  v159[22] = 0;
  return v160;
}

void vp9_remove_compressor(uint64_t a1, double a2)
{
  if (!a1)
  {
    return;
  }

  v3 = a1 + 933872;
  v160 = (a1 + 926440);
  v161 = a1 + 942056;
  v4 = (a1 + 772736);
  v5 = a1 + 754432;
  v6 = (a1 + 736304);
  v7 = a1 + 194296;
  v8 = a1 + 189904;
  v158 = (a1 + 758536);
  v159 = a1 + 171783;
  vp9_denoiser_free((a1 + 933584), a2);
  if (*v7)
  {
    pthread_mutex_destroy((a1 + 194232));
    v9 = *(v7 + 8);
    if (v9)
    {
      free(*(v9 - 8));
    }
  }

  v10 = (v8 + 912);
  v11 = 50;
  do
  {
    if (*v10)
    {
      free(*(*v10 - 8));
    }

    *(v10 - 8) = 0;
    v10 += 5;
    --v11;
  }

  while (v11);
  v12 = *(v8 + 2904);
  if (v12 >= 1)
  {
    v13 = 0;
    v14 = 16;
    do
    {
      v15 = *(*(v8 + 2912) + v14);
      if (v15)
      {
        free(*(v15 - 8));
        v12 = *(v8 + 2904);
      }

      ++v13;
      v14 += 24;
    }

    while (v13 < v12);
  }

  v16 = *(v8 + 2912);
  if (v16)
  {
    free(*(v16 - 8));
  }

  vp9_loop_filter_dealloc((a1 + 933960));
  v17 = *(v3 + 176);
  v19 = v159;
  v18 = v160;
  if (v17)
  {
    v20 = *(v3 + 68);
    if (v20 < 2)
    {
      goto LABEL_24;
    }

    v21 = 1;
    v22 = 736;
    do
    {
      v23 = *(*(v3 + 176) + v22);
      if (v23)
      {
        free(*(v23 - 8));
        v20 = *(v3 + 68);
      }

      ++v21;
      v22 += 736;
    }

    while (v21 < v20);
    v17 = *(v3 + 176);
    v19 = v159;
    v18 = v160;
    if (v17)
    {
LABEL_24:
      free(*(v17 - 8));
    }

    *(v3 + 176) = 0;
  }

  vp9_row_mt_mem_dealloc(a1);
  vp9_encode_free_mt_data(a1);
  v24 = *(a1 + 163488);
  if (v24)
  {
    free(*(v24 - 8));
  }

  *(a1 + 163488) = 0;
  v25 = *(v7 + 192);
  if (v25)
  {
    free(*(v25 - 8));
  }

  *(v7 + 192) = 0;
  v26 = v6[490];
  if (v26)
  {
    free(*(v26 - 8));
  }

  v6[490] = 0;
  if (*v6)
  {
    free(*(*v6 - 8));
  }

  *v6 = 0;
  v27 = v6[258];
  if (v27)
  {
    free(*(v27 - 8));
  }

  v28 = v6[259];
  if (v28)
  {
    free(*(v28 - 8));
  }

  v6[258] = 0;
  v6[259] = 0;
  v29 = v6[260];
  if (v29)
  {
    free(*(v29 - 8));
  }

  v30 = v6[261];
  if (v30)
  {
    free(*(v30 - 8));
  }

  v6[260] = 0;
  v6[261] = 0;
  v31 = v6[262];
  if (v31)
  {
    free(*(v31 - 8));
  }

  v32 = v6[263];
  if (v32)
  {
    free(*(v32 - 8));
  }

  v6[262] = 0;
  v6[263] = 0;
  v33 = v6[264];
  if (v33)
  {
    free(*(v33 - 8));
  }

  v34 = v6[265];
  if (v34)
  {
    free(*(v34 - 8));
  }

  v6[264] = 0;
  v6[265] = 0;
  v35 = v6[491];
  if (v35)
  {
    free(*(v35 - 8));
  }

  v6[491] = 0;
  v36 = v161;
  if (*v161)
  {
    free(*(*v161 - 8));
    v36 = v161;
  }

  *v36 = 0;
  if (*v18)
  {
    free(*(*v18 - 8));
    v36 = v161;
  }

  *v18 = 0;
  v37 = v36[1];
  if (v37)
  {
    free(*(v37 - 8));
    v36 = v161;
  }

  v36[1] = 0;
  v38 = v36[2];
  if (v38)
  {
    free(*(v38 - 8));
    v36 = v161;
  }

  v36[2] = 0;
  v39 = v36[3];
  if (v39)
  {
    free(*(v39 - 8));
    v36 = v161;
  }

  v36[3] = 0;
  v40 = v36[5];
  if (v40)
  {
    free(*(v40 - 8));
    v36 = v161;
  }

  v36[5] = 0;
  v41 = v36[9];
  if (v41)
  {
    free(*(v41 - 8));
    v36 = v161;
  }

  v36[9] = 0;
  v42 = v36[10];
  if (v42)
  {
    free(*(v42 - 8));
    v36 = v161;
  }

  v36[10] = 0;
  v43 = v6[496];
  if (v43)
  {
    v44 = *(v43 + 32);
    if (v44)
    {
      free(*(v44 - 8));
    }

    v45 = *(v43 + 40);
    if (v45)
    {
      free(*(v45 - 8));
    }

    free(*(v43 - 8));
    v36 = v161;
  }

  v6[496] = 0;
  v46 = v6[498];
  if (v46)
  {
    free(*(v46 - 8));
    v36 = v161;
  }

  v6[498] = 0;
  v47 = v36[13];
  v48 = v160;
  if (v47)
  {
    free(*(v47 - 8));
    v36 = v161;
  }

  v36[13] = 0;
  if (*v3)
  {
    free(*(*v3 - 8));
  }

  *v3 = 0;
  v49 = *(v7 + 304);
  if (v49)
  {
    free(*(v49 - 8));
  }

  *(v7 + 304) = 0;
  v50 = *(v7 + 328);
  if (v50)
  {
    free(*(v50 - 8));
  }

  *(v7 + 328) = 0;
  v51 = *(v7 + 320);
  if (v51)
  {
    free(*(v51 - 8));
  }

  *(v7 + 320) = 0;
  vp9_free_ref_frame_buffers(*(v8 + 40));
  v156 = (v19 + 961);
  if (*(v19 + 961))
  {
    v52 = *(v19 + 953);
    if (v52)
    {
      free(*(v52 - 8));
    }
  }

  v53 = 0uLL;
  *(a1 + 172776) = 0u;
  *(a1 + 172792) = 0u;
  *(a1 + 172744) = 0u;
  *(a1 + 172760) = 0u;
  *(a1 + 172712) = 0u;
  *(a1 + 172728) = 0u;
  *(a1 + 172680) = 0u;
  *(a1 + 172696) = 0u;
  *(a1 + 172648) = 0u;
  *(a1 + 172664) = 0u;
  v54 = (a1 + 172808);
  v155 = (v19 + 1121);
  if (*(v19 + 1121))
  {
    v55 = *(v19 + 1113);
    if (v55)
    {
      free(*(v55 - 8));
      v53 = 0uLL;
      v54 = (a1 + 172808);
    }
  }

  v54[8] = v53;
  v54[9] = v53;
  v54[6] = v53;
  v54[7] = v53;
  v54[4] = v53;
  v54[5] = v53;
  v54[2] = v53;
  v54[3] = v53;
  *v54 = v53;
  v54[1] = v53;
  v157 = v54;
  if (*v8)
  {
    free(*(*v8 - 8));
  }

  *v8 = 0;
  v56 = *(v8 + 8);
  if (v56)
  {
    free(*(v56 - 8));
  }

  *(v8 + 8) = 0;
  vp9_free_context_buffers(a1 + 171696);
  if (*(v7 + 432))
  {
    v57 = *(v7 + 424);
    if (v57)
    {
      free(*(v57 - 8));
    }
  }

  v58 = 0uLL;
  *(a1 + 194760) = 0u;
  *(a1 + 194776) = 0u;
  *(a1 + 194728) = 0u;
  *(a1 + 194744) = 0u;
  *(a1 + 194696) = 0u;
  *(a1 + 194712) = 0u;
  *(a1 + 194664) = 0u;
  *(a1 + 194680) = 0u;
  *(a1 + 194632) = 0u;
  *(a1 + 194648) = 0u;
  if (*(v8 + 656))
  {
    v59 = *(v8 + 648);
    if (v59)
    {
      free(*(v59 - 8));
      v58 = 0uLL;
    }
  }

  *(a1 + 190592) = v58;
  *(a1 + 190608) = v58;
  *(a1 + 190560) = v58;
  *(a1 + 190576) = v58;
  *(a1 + 190528) = v58;
  *(a1 + 190544) = v58;
  *(a1 + 190496) = v58;
  *(a1 + 190512) = v58;
  *(a1 + 190464) = v58;
  *(a1 + 190480) = v58;
  if (*(v8 + 824))
  {
    v60 = *(v8 + 816);
    if (v60)
    {
      free(*(v60 - 8));
    }
  }

  v61 = 0uLL;
  *(a1 + 190760) = 0u;
  *(a1 + 190776) = 0u;
  *(a1 + 190728) = 0u;
  *(a1 + 190744) = 0u;
  *(a1 + 190696) = 0u;
  *(a1 + 190712) = 0u;
  *(a1 + 190664) = 0u;
  *(a1 + 190680) = 0u;
  *(a1 + 190632) = 0u;
  *(a1 + 190648) = 0u;
  if (*(v5 + 8) && *v5)
  {
    free(*(*v5 - 8));
    v61 = 0uLL;
  }

  *(a1 + 754472) = v61;
  *(a1 + 754488) = v61;
  *(a1 + 754440) = v61;
  *(a1 + 754456) = v61;
  *(a1 + 754408) = v61;
  *(a1 + 754424) = v61;
  *(a1 + 754376) = v61;
  *(a1 + 754392) = v61;
  *(a1 + 754344) = v61;
  *(a1 + 754360) = v61;
  v62 = *(v8 + 520);
  if (v62)
  {
    v63 = v62[3];
    if (v63)
    {
      v64 = *v62;
      if (*v62 >= 1)
      {
        v65 = 0;
        v66 = 0;
        do
        {
          if (v63)
          {
            v67 = &v63[v65];
            if (*&v63[v65 + 96])
            {
              v68 = *&v63[v65 + 88];
              if (v68)
              {
                free(*(v68 - 8));
                v61 = 0uLL;
              }
            }

            *(v67 + 8) = v61;
            *(v67 + 9) = v61;
            *(v67 + 6) = v61;
            *(v67 + 7) = v61;
            *(v67 + 4) = v61;
            *(v67 + 5) = v61;
            *(v67 + 2) = v61;
            *(v67 + 3) = v61;
            *v67 = v61;
            *(v67 + 1) = v61;
            v64 = *v62;
          }

          ++v66;
          v63 = v62[3];
          v65 += 192;
        }

        while (v66 < v64);
      }

      free(v63);
      v19 = v159;
      v48 = v160;
    }

    free(v62);
  }

  v69 = *(v7 + 496);
  if (v69)
  {
    free(*(v69 - 8));
  }

  *(v7 + 496) = 0;
  v70 = *(v7 + 2544);
  if (v70)
  {
    free(*(v70 - 8));
  }

  *(v7 + 2544) = 0;
  vp9_free_pc_tree(a1 + 49200);
  v71 = *(v5 + 120);
  if (v71 >= 1)
  {
    v72 = 0;
    do
    {
      if (*v4)
      {
        free(*(*v4 - 8));
        v71 = *(v5 + 120);
      }

      ++v72;
      *v4 = 0;
      v4[1] = 0;
      v4 += 1742;
    }

    while (v72 < v71);
  }

  v73 = v48[88];
  if (v73)
  {
    free(*(v73 - 8));
    v48[88] = 0;
  }

  if (*(v5 + 432))
  {
    v74 = *(v5 + 424);
    if (v74)
    {
      free(*(v74 - 8));
    }
  }

  v75 = 0uLL;
  *(a1 + 754896) = 0u;
  *(a1 + 754912) = 0u;
  *(a1 + 754864) = 0u;
  *(a1 + 754880) = 0u;
  *(a1 + 754832) = 0u;
  *(a1 + 754848) = 0u;
  *(a1 + 754800) = 0u;
  *(a1 + 754816) = 0u;
  *(a1 + 754768) = 0u;
  *(a1 + 754784) = 0u;
  if (*(v5 + 592))
  {
    v76 = *(v5 + 584);
    if (v76)
    {
      free(*(v76 - 8));
      v75 = 0uLL;
    }
  }

  *(a1 + 755056) = v75;
  *(a1 + 755072) = v75;
  *(a1 + 755024) = v75;
  *(a1 + 755040) = v75;
  *(a1 + 754992) = v75;
  *(a1 + 755008) = v75;
  *(a1 + 754960) = v75;
  *(a1 + 754976) = v75;
  *(a1 + 754928) = v75;
  *(a1 + 754944) = v75;
  if (*(v5 + 752))
  {
    v77 = *(v5 + 744);
    if (v77)
    {
      free(*(v77 - 8));
    }
  }

  v78 = 0uLL;
  *(a1 + 755216) = 0u;
  *(a1 + 755232) = 0u;
  *(a1 + 755184) = 0u;
  *(a1 + 755200) = 0u;
  *(a1 + 755152) = 0u;
  *(a1 + 755168) = 0u;
  *(a1 + 755120) = 0u;
  *(a1 + 755136) = 0u;
  *(a1 + 755088) = 0u;
  *(a1 + 755104) = 0u;
  if (*(v5 + 912))
  {
    v79 = *(v5 + 904);
    if (v79)
    {
      free(*(v79 - 8));
      v78 = 0uLL;
    }
  }

  *(a1 + 755376) = v78;
  *(a1 + 755392) = v78;
  *(a1 + 755344) = v78;
  *(a1 + 755360) = v78;
  *(a1 + 755312) = v78;
  *(a1 + 755328) = v78;
  *(a1 + 755280) = v78;
  *(a1 + 755296) = v78;
  *(a1 + 755248) = v78;
  *(a1 + 755264) = v78;
  if (*(v5 + 1072))
  {
    v80 = *(v5 + 1064);
    if (v80)
    {
      free(*(v80 - 8));
    }
  }

  v81 = 0uLL;
  *(a1 + 755536) = 0u;
  *(a1 + 755552) = 0u;
  *(a1 + 755504) = 0u;
  *(a1 + 755520) = 0u;
  *(a1 + 755472) = 0u;
  *(a1 + 755488) = 0u;
  *(a1 + 755440) = 0u;
  *(a1 + 755456) = 0u;
  *(a1 + 755408) = 0u;
  *(a1 + 755424) = 0u;
  if (*(v5 + 1232))
  {
    v82 = *(v5 + 1224);
    if (v82)
    {
      free(*(v82 - 8));
      v81 = 0uLL;
    }
  }

  *(a1 + 755696) = v81;
  *(a1 + 755712) = v81;
  *(a1 + 755664) = v81;
  *(a1 + 755680) = v81;
  *(a1 + 755632) = v81;
  *(a1 + 755648) = v81;
  *(a1 + 755600) = v81;
  *(a1 + 755616) = v81;
  *(a1 + 755568) = v81;
  *(a1 + 755584) = v81;
  if (*(v5 + 1392))
  {
    v83 = *(v5 + 1384);
    if (v83)
    {
      free(*(v83 - 8));
    }
  }

  v84 = 0uLL;
  *(a1 + 755856) = 0u;
  *(a1 + 755872) = 0u;
  *(a1 + 755824) = 0u;
  *(a1 + 755840) = 0u;
  *(a1 + 755792) = 0u;
  *(a1 + 755808) = 0u;
  *(a1 + 755760) = 0u;
  *(a1 + 755776) = 0u;
  *(a1 + 755728) = 0u;
  *(a1 + 755744) = 0u;
  if (*(v5 + 1552))
  {
    v85 = *(v5 + 1544);
    if (v85)
    {
      free(*(v85 - 8));
      v84 = 0uLL;
    }
  }

  *(a1 + 756016) = v84;
  *(a1 + 756032) = v84;
  *(a1 + 755984) = v84;
  *(a1 + 756000) = v84;
  *(a1 + 755952) = v84;
  *(a1 + 755968) = v84;
  *(a1 + 755920) = v84;
  *(a1 + 755936) = v84;
  *(a1 + 755888) = v84;
  *(a1 + 755904) = v84;
  if (*(v5 + 1712))
  {
    v86 = *(v5 + 1704);
    if (v86)
    {
      free(*(v86 - 8));
    }
  }

  v87 = 0uLL;
  *(a1 + 756176) = 0u;
  *(a1 + 756192) = 0u;
  *(a1 + 756144) = 0u;
  *(a1 + 756160) = 0u;
  *(a1 + 756112) = 0u;
  *(a1 + 756128) = 0u;
  *(a1 + 756080) = 0u;
  *(a1 + 756096) = 0u;
  *(a1 + 756048) = 0u;
  *(a1 + 756064) = 0u;
  if (*(v5 + 1872))
  {
    v88 = *(v5 + 1864);
    if (v88)
    {
      free(*(v88 - 8));
      v87 = 0uLL;
    }
  }

  *(a1 + 756336) = v87;
  *(a1 + 756352) = v87;
  *(a1 + 756304) = v87;
  *(a1 + 756320) = v87;
  *(a1 + 756272) = v87;
  *(a1 + 756288) = v87;
  *(a1 + 756240) = v87;
  *(a1 + 756256) = v87;
  *(a1 + 756208) = v87;
  *(a1 + 756224) = v87;
  if (*(v5 + 2032))
  {
    v89 = *(v5 + 2024);
    if (v89)
    {
      free(*(v89 - 8));
    }
  }

  v90 = 0uLL;
  *(a1 + 756496) = 0u;
  *(a1 + 756512) = 0u;
  *(a1 + 756464) = 0u;
  *(a1 + 756480) = 0u;
  *(a1 + 756432) = 0u;
  *(a1 + 756448) = 0u;
  *(a1 + 756400) = 0u;
  *(a1 + 756416) = 0u;
  *(a1 + 756368) = 0u;
  *(a1 + 756384) = 0u;
  if (*(v5 + 2192))
  {
    v91 = *(v5 + 2184);
    if (v91)
    {
      free(*(v91 - 8));
      v90 = 0uLL;
    }
  }

  *(a1 + 756656) = v90;
  *(a1 + 756672) = v90;
  *(a1 + 756624) = v90;
  *(a1 + 756640) = v90;
  *(a1 + 756592) = v90;
  *(a1 + 756608) = v90;
  *(a1 + 756560) = v90;
  *(a1 + 756576) = v90;
  *(a1 + 756528) = v90;
  *(a1 + 756544) = v90;
  if (*(v5 + 2352))
  {
    v92 = *(v5 + 2344);
    if (v92)
    {
      free(*(v92 - 8));
    }
  }

  v93 = 0uLL;
  *(a1 + 756816) = 0u;
  *(a1 + 756832) = 0u;
  *(a1 + 756784) = 0u;
  *(a1 + 756800) = 0u;
  *(a1 + 756752) = 0u;
  *(a1 + 756768) = 0u;
  *(a1 + 756720) = 0u;
  *(a1 + 756736) = 0u;
  *(a1 + 756688) = 0u;
  *(a1 + 756704) = 0u;
  if (*(v5 + 2512))
  {
    v94 = *(v5 + 2504);
    if (v94)
    {
      free(*(v94 - 8));
      v93 = 0uLL;
    }
  }

  *(a1 + 756976) = v93;
  *(a1 + 756992) = v93;
  *(a1 + 756944) = v93;
  *(a1 + 756960) = v93;
  *(a1 + 756912) = v93;
  *(a1 + 756928) = v93;
  *(a1 + 756880) = v93;
  *(a1 + 756896) = v93;
  *(a1 + 756848) = v93;
  *(a1 + 756864) = v93;
  if (*(v5 + 2672))
  {
    v95 = *(v5 + 2664);
    if (v95)
    {
      free(*(v95 - 8));
    }
  }

  v96 = 0uLL;
  *(a1 + 757136) = 0u;
  *(a1 + 757152) = 0u;
  *(a1 + 757104) = 0u;
  *(a1 + 757120) = 0u;
  *(a1 + 757072) = 0u;
  *(a1 + 757088) = 0u;
  *(a1 + 757040) = 0u;
  *(a1 + 757056) = 0u;
  *(a1 + 757008) = 0u;
  *(a1 + 757024) = 0u;
  if (*(v5 + 2832))
  {
    v97 = *(v5 + 2824);
    if (v97)
    {
      free(*(v97 - 8));
      v96 = 0uLL;
    }
  }

  *(a1 + 757296) = v96;
  *(a1 + 757312) = v96;
  *(a1 + 757264) = v96;
  *(a1 + 757280) = v96;
  *(a1 + 757232) = v96;
  *(a1 + 757248) = v96;
  *(a1 + 757200) = v96;
  *(a1 + 757216) = v96;
  *(a1 + 757168) = v96;
  *(a1 + 757184) = v96;
  if (*(v5 + 2992))
  {
    v98 = *(v5 + 2984);
    if (v98)
    {
      free(*(v98 - 8));
    }
  }

  v99 = 0uLL;
  *(a1 + 757456) = 0u;
  *(a1 + 757472) = 0u;
  *(a1 + 757424) = 0u;
  *(a1 + 757440) = 0u;
  *(a1 + 757392) = 0u;
  *(a1 + 757408) = 0u;
  *(a1 + 757360) = 0u;
  *(a1 + 757376) = 0u;
  *(a1 + 757328) = 0u;
  *(a1 + 757344) = 0u;
  if (*(v5 + 3152))
  {
    v100 = *(v5 + 3144);
    if (v100)
    {
      free(*(v100 - 8));
      v99 = 0uLL;
    }
  }

  *(a1 + 757616) = v99;
  *(a1 + 757632) = v99;
  *(a1 + 757584) = v99;
  *(a1 + 757600) = v99;
  *(a1 + 757552) = v99;
  *(a1 + 757568) = v99;
  *(a1 + 757520) = v99;
  *(a1 + 757536) = v99;
  *(a1 + 757488) = v99;
  *(a1 + 757504) = v99;
  if (*(v5 + 3312))
  {
    v101 = *(v5 + 3304);
    if (v101)
    {
      free(*(v101 - 8));
    }
  }

  v102 = 0uLL;
  *(a1 + 757776) = 0u;
  *(a1 + 757792) = 0u;
  *(a1 + 757744) = 0u;
  *(a1 + 757760) = 0u;
  *(a1 + 757712) = 0u;
  *(a1 + 757728) = 0u;
  *(a1 + 757680) = 0u;
  *(a1 + 757696) = 0u;
  *(a1 + 757648) = 0u;
  *(a1 + 757664) = 0u;
  if (*(v5 + 3472))
  {
    v103 = *(v5 + 3464);
    if (v103)
    {
      free(*(v103 - 8));
      v102 = 0uLL;
    }
  }

  *(a1 + 757936) = v102;
  *(a1 + 757952) = v102;
  *(a1 + 757904) = v102;
  *(a1 + 757920) = v102;
  *(a1 + 757872) = v102;
  *(a1 + 757888) = v102;
  *(a1 + 757840) = v102;
  *(a1 + 757856) = v102;
  *(a1 + 757808) = v102;
  *(a1 + 757824) = v102;
  if (*(v5 + 3632))
  {
    v104 = *(v5 + 3624);
    if (v104)
    {
      free(*(v104 - 8));
    }
  }

  v105 = 0uLL;
  *(a1 + 758096) = 0u;
  *(a1 + 758112) = 0u;
  *(a1 + 758064) = 0u;
  *(a1 + 758080) = 0u;
  *(a1 + 758032) = 0u;
  *(a1 + 758048) = 0u;
  *(a1 + 758000) = 0u;
  *(a1 + 758016) = 0u;
  *(a1 + 757968) = 0u;
  *(a1 + 757984) = 0u;
  if (*(v5 + 3792))
  {
    v106 = *(v5 + 3784);
    if (v106)
    {
      free(*(v106 - 8));
      v105 = 0uLL;
    }
  }

  *(a1 + 758256) = v105;
  *(a1 + 758272) = v105;
  *(a1 + 758224) = v105;
  *(a1 + 758240) = v105;
  *(a1 + 758192) = v105;
  *(a1 + 758208) = v105;
  *(a1 + 758160) = v105;
  *(a1 + 758176) = v105;
  *(a1 + 758128) = v105;
  *(a1 + 758144) = v105;
  if (*(v5 + 3952))
  {
    v107 = *(v5 + 3944);
    if (v107)
    {
      free(*(v107 - 8));
    }
  }

  v108 = 0uLL;
  *(a1 + 758416) = 0u;
  *(a1 + 758432) = 0u;
  *(a1 + 758384) = 0u;
  *(a1 + 758400) = 0u;
  *(a1 + 758352) = 0u;
  *(a1 + 758368) = 0u;
  *(a1 + 758320) = 0u;
  *(a1 + 758336) = 0u;
  *(a1 + 758288) = 0u;
  *(a1 + 758304) = 0u;
  if (v158[1] && *v158)
  {
    free(*(*v158 - 8));
    v108 = 0uLL;
  }

  *(a1 + 758576) = v108;
  *(a1 + 758592) = v108;
  *(a1 + 758544) = v108;
  *(a1 + 758560) = v108;
  *(a1 + 758512) = v108;
  *(a1 + 758528) = v108;
  *(a1 + 758480) = v108;
  *(a1 + 758496) = v108;
  *(a1 + 758448) = v108;
  *(a1 + 758464) = v108;
  if (v158[21])
  {
    v109 = v158[20];
    if (v109)
    {
      free(*(v109 - 8));
    }
  }

  *(a1 + 758736) = 0u;
  *(a1 + 758752) = 0u;
  *(a1 + 758704) = 0u;
  *(a1 + 758720) = 0u;
  *(a1 + 758672) = 0u;
  *(a1 + 758688) = 0u;
  *(a1 + 758640) = 0u;
  *(a1 + 758656) = 0u;
  *(a1 + 758608) = 0u;
  *(a1 + 758624) = 0u;
  bzero((a1 + 754768), 0xFA0uLL);
  if (v158[41])
  {
    v110 = v158[40];
    if (v110)
    {
      free(*(v110 - 8));
    }
  }

  *(a1 + 758896) = 0u;
  *(a1 + 758912) = 0u;
  *(a1 + 758864) = 0u;
  *(a1 + 758880) = 0u;
  *(a1 + 758832) = 0u;
  *(a1 + 758848) = 0u;
  *(a1 + 758800) = 0u;
  *(a1 + 758816) = 0u;
  *(a1 + 758768) = 0u;
  *(a1 + 758784) = 0u;
  if (*(v5 + 232))
  {
    v111 = *(v5 + 224);
    if (v111)
    {
      free(*(v111 - 8));
    }
  }

  *(a1 + 754696) = 0u;
  *(a1 + 754712) = 0u;
  *(a1 + 754664) = 0u;
  *(a1 + 754680) = 0u;
  *(a1 + 754632) = 0u;
  *(a1 + 754648) = 0u;
  *(a1 + 754600) = 0u;
  *(a1 + 754616) = 0u;
  *(a1 + 754568) = 0u;
  *(a1 + 754584) = 0u;
  *(a1 + 754728) = 0u;
  *(a1 + 754744) = 0u;
  v112 = *(v8 + 284);
  if (v112 >= 1)
  {
    v113 = *(v8 + 288);
    if (v113 >= 1)
    {
      for (i = 0; i < v112; ++i)
      {
        if (v113 >= 1)
        {
          v115 = 0;
          do
          {
            v116 = (a1 + 758936 + 13936 * (v115 + i * v113));
            v117 = v116[1734];
            if (v117)
            {
              free(*(v117 - 8));
            }

            v118 = v116[1735];
            if (v118)
            {
              free(*(v118 - 8));
            }

            v119 = v116[1736];
            if (v119)
            {
              free(*(v119 - 8));
            }

            v113 = *(v8 + 288);
            ++v115;
          }

          while (v115 < v113);
          v112 = *(v8 + 284);
        }
      }
    }
  }

  v120 = v6[377];
  if (v120)
  {
    free(*(v120 - 8));
  }

  v121 = v6[378];
  if (v121)
  {
    free(*(v121 - 8));
  }

  v122 = v6[379];
  if (v122)
  {
    free(*(v122 - 8));
  }

  v123 = v6[380];
  if (v123)
  {
    free(*(v123 - 8));
  }

  v124 = v6[381];
  if (v124)
  {
    free(*(v124 - 8));
  }

  v125 = v6[382];
  if (v125)
  {
    free(*(v125 - 8));
  }

  v126 = v6[383];
  if (v126)
  {
    free(*(v126 - 8));
  }

  v127 = v6[384];
  if (v127)
  {
    free(*(v127 - 8));
  }

  v128 = v6[385];
  if (v128)
  {
    free(*(v128 - 8));
  }

  v129 = v6[386];
  if (v129)
  {
    free(*(v129 - 8));
  }

  v130 = v6[387];
  if (v130)
  {
    free(*(v130 - 8));
  }

  v131 = v6[388];
  if (v131)
  {
    free(*(v131 - 8));
  }

  v132 = v6[389];
  if (v132)
  {
    free(*(v132 - 8));
  }

  v133 = v6[390];
  if (v133)
  {
    free(*(v133 - 8));
  }

  v134 = v6[391];
  if (v134)
  {
    free(*(v134 - 8));
  }

  v135 = v6[392];
  if (v135)
  {
    free(*(v135 - 8));
  }

  v136 = v6[393];
  if (v136)
  {
    free(*(v136 - 8));
  }

  v137 = v6[394];
  if (v137)
  {
    free(*(v137 - 8));
  }

  v138 = v6[395];
  if (v138)
  {
    free(*(v138 - 8));
  }

  v139 = v6[396];
  if (v139)
  {
    free(*(v139 - 8));
  }

  v140 = v6[397];
  if (v140)
  {
    free(*(v140 - 8));
  }

  v141 = v6[398];
  if (v141)
  {
    free(*(v141 - 8));
  }

  v142 = v6[399];
  if (v142)
  {
    free(*(v142 - 8));
  }

  v143 = v6[400];
  if (v143)
  {
    free(*(v143 - 8));
  }

  v144 = v6[401];
  if (v144)
  {
    free(*(v144 - 8));
  }

  v145 = v161;
  if (*(v161 + 272))
  {
    v146 = *(v161 + 456);
    if (v146)
    {
      fclose(v146);
      v145 = v161;
    }

    v147 = v145;
    if ((*(v145 + 360))(*(v145 + 280)) == 1)
    {
      goto LABEL_283;
    }

    v148 = *(v147 + 440);
    v145 = v147;
    if (v148)
    {
      free(*(v148 - 8));
      v145 = v161;
    }
  }

  *(v145 + 432) = 0u;
  *(v145 + 448) = 0u;
  *(v145 + 400) = 0u;
  *(v145 + 416) = 0u;
  *(v145 + 368) = 0u;
  *(v145 + 384) = 0u;
  *(v145 + 336) = 0u;
  *(v145 + 352) = 0u;
  *(v145 + 304) = 0u;
  *(v145 + 320) = 0u;
  *(v145 + 272) = 0u;
  *(v145 + 288) = 0u;
LABEL_283:
  *&v149 = 0x4141414141414141;
  *(&v149 + 1) = 0x4141414141414141;
  *(a1 + 171767) = v149;
  *(a1 + 171736) = v149;
  *(a1 + 171752) = v149;
  *(a1 + 171704) = v149;
  *(a1 + 171720) = v149;
  *v19 = 0;
  vp9_remove_common(a1 + 171696);
  vp9_free_ref_frame_buffers(*(v8 + 40));
  if (*v156)
  {
    v150 = *(v19 + 953);
    if (v150)
    {
      free(*(v150 - 8));
    }
  }

  v151 = 0uLL;
  *(a1 + 172776) = 0u;
  *(a1 + 172792) = 0u;
  *(a1 + 172744) = 0u;
  *(a1 + 172760) = 0u;
  *(a1 + 172712) = 0u;
  *(a1 + 172728) = 0u;
  *(a1 + 172680) = 0u;
  *(a1 + 172696) = 0u;
  *(a1 + 172648) = 0u;
  *(a1 + 172664) = 0u;
  if (*v155)
  {
    v152 = *(v19 + 1113);
    if (v152)
    {
      free(*(v152 - 8));
      v151 = 0uLL;
    }
  }

  v157[8] = v151;
  v157[9] = v151;
  v157[6] = v151;
  v157[7] = v151;
  v157[4] = v151;
  v157[5] = v151;
  v157[2] = v151;
  v157[3] = v151;
  *v157 = v151;
  v157[1] = v151;
  if (*v8)
  {
    free(*(*v8 - 8));
  }

  *v8 = 0;
  v153 = *(v8 + 8);
  if (v153)
  {
    free(*(v153 - 8));
  }

  *(v8 + 8) = 0;
  v154 = *(a1 - 8);

  free(v154);
}

BOOL vp9_enc_alloc_mi(uint64_t a1, int a2)
{
  if ((a2 & 0x80000000) == 0 && (v4 = a2, v5 = 68 * a2, (v6 = malloc_type_malloc(v5 + 23, 0xD93B561uLL)) != 0) && (v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF0, *(v7 - 8) = v6, v7))
  {
    bzero(((v6 + 23) & 0xFFFFFFFFFFFFFFF0), v5);
    *(a1 + 1416) = v7;
    v8 = malloc_type_malloc(v5 + 23, 0xD93B561uLL);
    if (v8 && (v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF0, *(v9 - 8) = v8, v9))
    {
      bzero(((v8 + 23) & 0xFFFFFFFFFFFFFFF0), v5);
      *(a1 + 1432) = v9;
      *(a1 + 1412) = a2;
      v10 = malloc_type_malloc(8 * v4 + 23, 0xD93B561uLL);
      if (v10 && (v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF0, *(v11 - 8) = v10, v11))
      {
        bzero(((v10 + 23) & 0xFFFFFFFFFFFFFFF0), 8 * v4);
        *(a1 + 1472) = v11;
        v12 = malloc_type_malloc(8 * v4 + 23, 0xD93B561uLL);
        if (v12)
        {
          v13 = (v12 + 23) & 0xFFFFFFFFFFFFFFF0;
          *(v13 - 8) = v12;
          if (v13)
          {
            bzero(((v12 + 23) & 0xFFFFFFFFFFFFFFF0), 8 * v4);
          }
        }

        else
        {
          v13 = 0;
        }

        *(a1 + 1488) = v13;
        return v13 == 0;
      }

      else
      {
        *(a1 + 1472) = 0;
        return 1;
      }
    }

    else
    {
      *(a1 + 1432) = 0;
      return 1;
    }
  }

  else
  {
    *(a1 + 1416) = 0;
    return 1;
  }
}

void vp9_enc_free_mi(uint64_t a1)
{
  v2 = *(a1 + 1416);
  if (v2)
  {
    free(*(v2 - 8));
  }

  *(a1 + 1416) = 0;
  v3 = *(a1 + 1432);
  if (v3)
  {
    free(*(v3 - 8));
  }

  *(a1 + 1432) = 0;
  v4 = *(a1 + 1472);
  if (v4)
  {
    free(*(v4 - 8));
  }

  *(a1 + 1472) = 0;
  v5 = *(a1 + 1488);
  if (v5)
  {
    free(*(v5 - 8));
  }

  *(a1 + 1488) = 0;
  *(a1 + 1412) = 0;
}

void vp9_enc_setup_mi(uint64_t a1)
{
  v2 = *(a1 + 1416);
  v3 = 68 * *(a1 + 1324);
  *(a1 + 1424) = &v2[v3 + 68];
  bzero(v2, v3 + v3 * *(a1 + 1312));
  v4 = *(a1 + 1432);
  v5 = 68 * *(a1 + 1324);
  *(a1 + 1440) = &v4[v5 + 68];
  bzero(v4, v5);
  v6 = *(a1 + 1312);
  if (v6 >= 1)
  {
    v7 = 0;
    do
    {
      ++v7;
      v8 = *(a1 + 1432) + 68 * *(a1 + 1324) * v7;
      *(v8 + 64) = 0;
      *(v8 + 32) = 0uLL;
      *(v8 + 48) = 0uLL;
      *v8 = 0uLL;
      *(v8 + 16) = 0uLL;
      v6 = *(a1 + 1312);
    }

    while (v7 < v6);
  }

  v9 = *(a1 + 1472);
  v10 = *(a1 + 1324);
  *(a1 + 1480) = &v9[8 * v10 + 8];
  *(a1 + 1496) = *(a1 + 1488) + 8 * v10 + 8;

  bzero(v9, 8 * (v10 + v10 * v6));
}

unsigned __int8 *vp9_scale_and_extend_frame_nonnormative(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *(a1 + 56);
  v26 = *(a1 + 72);
  v7 = *(a1 + 12);
  v8 = *(a1 + 16);
  v10 = *(a1 + 32);
  v9 = *(a1 + 36);
  v11 = *(a1 + 8);
  v12 = *(a1 + 28);
  v13 = *(a2 + 56);
  v14 = *(a2 + 64);
  v24 = *(a1 + 64);
  v25 = *(a2 + 72);
  v15 = *(a2 + 12);
  v16 = *(a2 + 16);
  v17 = *(a2 + 32);
  v18 = *(a2 + 36);
  v19 = *(a2 + 8);
  v20 = *(a2 + 28);
  if ((*(a1 + 152) & 8) == 0)
  {
    v21 = a3;
    vp9_resize_plane(v6, v7, v11, v8, v13, v15, v19, v16);
    if ((*(a1 + 152) & 8) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    vp9_resize_plane(v24, v10, v12, v9, v14, v17, v20, v18);
    if ((*(a1 + 152) & 8) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v21 = a3;
  vp9_highbd_resize_plane(v6, v7, v11, v8, v13, v15, v19, v16, a3);
  if ((*(a1 + 152) & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  vp9_highbd_resize_plane(v24, v10, v12, v9, v14, v17, v20, v18, v21);
  if ((*(a1 + 152) & 8) != 0)
  {
LABEL_4:
    vp9_highbd_resize_plane(v26, v10, v12, v9, v25, v17, v20, v18, v21);
    goto LABEL_8;
  }

LABEL_7:
  vp9_resize_plane(v26, v10, v12, v9, v25, v17, v20, v18);
LABEL_8:
  v22 = *(a2 + 104);

  return extend_frame(a2, v22);
}

void vp9_scale_references(int *a1)
{
  v2 = 0;
  v3 = a1 + 47464;
  v4 = a1 + 42997;
  v30 = a1 + 43012;
  v5 = a1 + 48625;
  v6 = &dword_273BCFD20;
  do
  {
    if ((v6[v2] & a1[184882]) == 0)
    {
      if (!v3[55] && !a1[188635])
      {
        goto LABEL_4;
      }

LABEL_3:
      v5[v2] = -1;
      goto LABEL_4;
    }

    v7 = 194516;
    if (v2 != 1)
    {
      v7 = 194520;
    }

    if (v2 * 4)
    {
      v8 = v7;
    }

    else
    {
      v8 = 194512;
    }

    v9 = *(a1 + v8);
    if (v9 == -1)
    {
      goto LABEL_3;
    }

    v10 = v30[v9];
    if (v10 == -1)
    {
      goto LABEL_3;
    }

    v11 = *(v3 + 11);
    v12 = v11 + 6;
    v13 = &v11[56 * v10 + 6];
    v14 = *v4;
    if (*(v13 + 72) == *v4 && *(v13 + 76) == v4[1])
    {
      if (!v3[55] && !a1[188635])
      {
        v20 = v5[v2];
        if (v20 != -1)
        {
          --v12[56 * v20];
          v10 = -1;
          v5[v2] = -1;
          v21 = *(a1 + v8);
          if (v21 != -1)
          {
            v10 = v30[v21];
          }
        }
      }

      v15 = &v12[56 * v10];
      *(v15 + 9) = *(v13 + 72);
      v5[v2] = v10;
      ++*v15;
      goto LABEL_4;
    }

    v16 = v5[v2];
    if (v16 != -1)
    {
      v17 = v5[v2];
      v18 = &v12[56 * v16];
      v19 = v4[1];
      if (v18[18] == v14 && v18[19] == v19)
      {
        goto LABEL_4;
      }

      goto LABEL_52;
    }

    if (!*v12)
    {
      v16 = 0;
      goto LABEL_51;
    }

    if (!v11[62])
    {
      v16 = 1;
      goto LABEL_51;
    }

    if (!v11[118])
    {
      v16 = 2;
      goto LABEL_51;
    }

    if (!v11[174])
    {
      v16 = 3;
      goto LABEL_51;
    }

    if (!v11[230])
    {
      v16 = 4;
      goto LABEL_51;
    }

    if (!v11[286])
    {
      v16 = 5;
      goto LABEL_51;
    }

    if (!v11[342])
    {
      v16 = 6;
      goto LABEL_51;
    }

    if (!v11[398])
    {
      v16 = 7;
      goto LABEL_51;
    }

    if (!v11[454])
    {
      v16 = 8;
      goto LABEL_51;
    }

    if (!v11[510])
    {
      v16 = 9;
      goto LABEL_51;
    }

    if (!v11[566])
    {
      v16 = 10;
      goto LABEL_51;
    }

    if (v11[622])
    {
      break;
    }

    v16 = 11;
LABEL_51:
    v17 = v16;
    v18 = &v12[56 * v16];
    *v18 = 1;
    v19 = v4[1];
LABEL_52:
    v22 = v6;
    if (vpx_realloc_frame_buffer((v18 + 16), v14, v19, v4[6], v4[7], v4[8], 160, v3[20], 0, 0, 0))
    {
      vpx_internal_error((a1 + 42924), 2, "Failed to allocate frame buffer");
    }

    scale_and_extend_frame(v13 + 64, (v18 + 16), *v3, 0, 0);
    v5[v2] = v16;
    v23 = *(v3 + 11) + 224 * v17;
    v24 = *(v23 + 32);
    if (!v24)
    {
      goto LABEL_58;
    }

    if (*(v23 + 40) < v4[255] || (v6 = v22, *(v23 + 44) < v4[257]))
    {
      free(*(v24 - 8));
LABEL_58:
      v25 = v4[257] * v4[255];
      if ((v25 & 0x80000000) == 0 && (v26 = 12 * v25, (v27 = malloc_type_malloc(v26 + 23, 0xD93B561uLL)) != 0) && (v28 = (v27 + 23) & 0xFFFFFFFFFFFFFFF0, *(v28 - 8) = v27, v28))
      {
        bzero(((v27 + 23) & 0xFFFFFFFFFFFFFFF0), v26);
        *(v23 + 32) = v28;
      }

      else
      {
        *(v23 + 32) = 0;
        vpx_internal_error((a1 + 42924), 2, "Failed to allocate new_fb_ptr->mvs");
      }

      v29 = v4[257];
      *(v23 + 40) = v4[255];
      *(v23 + 44) = v29;
      v6 = v22;
    }

LABEL_4:
    ++v2;
  }

  while (v2 != 3);
}

unsigned __int8 *scale_and_extend_frame(uint64_t a1, uint64_t a2, int a3, unsigned int a4, int a5)
{
  v5 = *(a1 + 8);
  v7 = *(a2 + 8);
  v6 = *(a2 + 12);
  v66 = 16 * v5;
  v8 = (16 * v5 / v7);
  v62 = *(a1 + 12);
  v74 = 16 * v62 / v6;
  if (a3 == 8)
  {
    if (v8 > 64 || v74 > 64)
    {
      goto LABEL_17;
    }
  }

  else if (a3 >= 10 && (v8 > 32 || v74 >= 33))
  {
LABEL_17:

    return vp9_scale_and_extend_frame_nonnormative(a1, a2, a3);
  }

  if (v7 >= 1 && v6 >= 1)
  {
    v9 = 0;
    v51 = *(a1 + 56);
    v53 = *(a1 + 64);
    v55 = *(a1 + 72);
    v69 = *(a1 + 16);
    v72 = *(a1 + 36);
    v10 = *(a2 + 56);
    v52 = *(a2 + 64);
    v54 = *(a2 + 72);
    v11 = *(a2 + 16);
    v50 = 16 * v11;
    v12 = 2 * v10;
    v73 = *(&vp9_filter_kernels + a4);
    v63 = v11;
    v49 = 32 * v11;
    v47 = *(a1 + 8);
    v13 = v5 << 8;
    v71 = *(a2 + 36);
    v14 = (16 * v5 / v7);
    v61 = *(a2 + 12);
    do
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 16 * v62 * v9 / v6 + a5;
      v58 = v9;
      v19 = v51 + v62 * v9 / v6 * v69;
      v56 = v12;
      v57 = v10;
      do
      {
        v20 = v16 / v7 + a5;
        v21 = v19 + v15 / v7;
        if ((*(a1 + 152) & 8) != 0)
        {
          vpx_highbd_convolve8_neon(2 * v21, v69, v12, v63, v73, v20 & 0xF, v8, v18 & 0xF, v74, 0x10u, 0x10u, a3);
        }

        else
        {
          vpx_scaled_2d_neon(v21, v69, v10, v63, v73, v20 & 0xF, v8, v18 & 0xF, v74, 16, 16);
        }

        v17 += 16;
        v10 += 16;
        v12 += 32;
        v16 += v13;
        v15 += v66;
        v8 = v14;
      }

      while (v7 > v17);
      v9 = v58 + 16;
      v10 = v57 + v50;
      v12 = v56 + v49;
      v6 = v61;
    }

    while (v58 + 16 < v61);
    v23 = 0;
    v24 = 0;
    v67 = 8 * v62;
    v70 = 8 * v47;
    v25 = v47 << 7;
    do
    {
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v64 = v23;
      v29 = v52 + v23;
      v30 = 2 * v29;
      v31 = v67 * v24 / v6 + a5;
      v59 = v24;
      v32 = v53 + v72 * ((v62 * (v24 >> 1)) / v6);
      do
      {
        v33 = v26 / v7 + a5;
        v34 = v32 + v27 / v7;
        if ((*(a1 + 152) & 8) != 0)
        {
          vpx_highbd_convolve8_neon(2 * v34, v72, v30, v71, v73, v33 & 0xF, v8, v31 & 0xF, v74, 8u, 8u, a3);
        }

        else
        {
          vpx_scaled_2d_neon(v34, v72, v29, v71, v73, v33 & 0xF, v8, v31 & 0xF, v74, 8, 8);
        }

        v28 += 16;
        v29 += 8;
        v30 += 16;
        v27 += v70;
        v26 += v25;
        v8 = v14;
      }

      while (v7 > v28);
      v6 = v61;
      v24 = v59 + 16;
      v23 = v64 + 8 * v71;
    }

    while (v59 + 16 < v61);
    v35 = 0;
    v36 = 0;
    do
    {
      v37 = 0;
      v38 = 0;
      v39 = 0;
      v65 = v35;
      v40 = v54 + v35;
      v41 = 2 * v40;
      v42 = v67 * v36 / v6 + a5;
      v60 = v36;
      v43 = v55 + (v62 * (v36 >> 1)) / v6 * v72;
      do
      {
        v44 = v37 / v7 + a5;
        v45 = v43 + v38 / v7;
        if ((*(a1 + 152) & 8) != 0)
        {
          vpx_highbd_convolve8_neon(2 * v45, v72, v41, v71, v73, v44 & 0xF, v8, v42 & 0xF, v74, 8u, 8u, a3);
        }

        else
        {
          vpx_scaled_2d_neon(v45, v72, v40, v71, v73, v44 & 0xF, v8, v42 & 0xF, v74, 8, 8);
        }

        v39 += 16;
        v40 += 8;
        v41 += 16;
        v38 += v70;
        v37 += v25;
        v8 = v14;
      }

      while (v7 > v39);
      v6 = v61;
      v36 = v60 + 16;
      v35 = v65 + 8 * v71;
    }

    while (v60 + 16 < v61);
  }

  v46 = *(a2 + 104);

  return extend_frame(a2, v46);
}

uint64_t vp9_receive_raw_frame(int *a1, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5)
{
  v9 = a1 + 188630;
  v10 = a1 + 47463;
  v11 = a1 + 42995;
  v12 = a3[30];
  v13 = a3[31];
  v14 = (a3[38] >> 3) & 1;
  if (!a1[188630] || a1[43005] != v14 || a1[43003] != v12 || a1[43004] != v13)
  {
    a1[43003] = v12;
    a1[43004] = v13;
    a1[43005] = v14;
    alloc_util_frame_buffers(a1);
    v15 = v11[2];
    v16 = v11[3];
    if (v15 > *v9 || v16 > v9[1])
    {
      *v9 = v15;
      v9[1] = v16;
    }

    v9[2] = v11[255];
  }

  v17 = v10[49];
  if (v17 >= 1 && !a1[233440])
  {
    v18 = vp9_denoiser_alloc(a1 + 42924, a1 + 188636, (a1 + 233396), v9[5], v17, v11[2], v11[3], v11[8], v11[9], v11[10], 160);
    if (v19)
    {
      vpx_internal_error((a1 + 42924), 2, "Failed to allocate denoiser", v18);
    }
  }

  alloc_raw_frame_buffers(a1);
  if (vp9_lookahead_push(*(v10 + 143), a3, a4, a5, v14, a2))
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = 0;
  }

  v21 = *v10;
  if ((*v10 | 2) == 2)
  {
    if (v12 != 1 || v13 != 1)
    {
      vpx_internal_error((a1 + 42924), 8, "Non-4:2:0 color format requires profile 1 or 3");
      v21 = *v10;
      result = 0xFFFFFFFFLL;
    }

    if (v21 == 1)
    {
LABEL_21:
      if (v12 != 1 || v13 != 1)
      {
        goto LABEL_29;
      }

LABEL_28:
      vpx_internal_error((a1 + 42924), 8, "4:2:0 color format requires profile 0 or 2");
      result = 0xFFFFFFFFLL;
      goto LABEL_29;
    }
  }

  else if (v21 == 1)
  {
    goto LABEL_21;
  }

  if (v13 == 1 && v12 == 1 && v21 == 3)
  {
    goto LABEL_28;
  }

LABEL_29:
  if (*v11 == 7)
  {
    if ((*v10 | 2) == 2)
    {
      vpx_internal_error((a1 + 42924), 8, "SRGB color space requires profile 1 or 3");
      result = 0xFFFFFFFFLL;
    }

    if (v13 | v12)
    {
      vpx_internal_error((a1 + 42924), 8, "SRGB color space requires 4:4:4");
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t vp9_get_compressed_data(uint64_t a1, _DWORD *a2, uint64_t *a3, uint64_t a4, uint64_t a5, void *a6, void *a7, int a8)
{
  v10 = (a1 + 942112);
  v11 = (a1 + 754516);
  v12 = a1 + 738432;
  v13 = a1 + 194296;
  v14 = a1 + 189844;
  v15 = *(a1 + 189944);
  v16 = (a1 + 176400);
  v17 = *(a1 + 742156);
  v18 = a1 + 171988;
  if (*(a1 + 754540))
  {
    if (*(a1 + 190076))
    {
      v19 = 1;
    }

    else
    {
      v193 = v10;
      v20 = a7;
      v21 = a6;
      v185 = *(a1 + 742156);
      v22 = a2;
      v23 = a8;
      v24 = *(a1 + 189944);
      vp9_one_pass_svc_start_layer(a1);
      v15 = v24;
      v16 = (a1 + 176400);
      v10 = v193;
      a8 = v23;
      a2 = v22;
      v17 = v185;
      a6 = v21;
      v13 = a1 + 194296;
      v11 = (a1 + 754516);
      v18 = a1 + 171988;
      v12 = a1 + 738432;
      v14 = a1 + 189844;
      a7 = v20;
      v19 = *(a1 + 754540);
    }
  }

  else
  {
    v19 = 0;
  }

  *(v18 + 1004) = 1;
  *(a1 + 74976) = a1 + 74960;
  *(a1 + 75032) = a1 + 75016;
  v25 = *(v14 + 232);
  if (v25 == 2 && !v19 && *(v14 + 460) >= 2)
  {
    *(v10 + 8) = 1;
    *(v18 + 1008) = 0;
    *v16 = 1;
    goto LABEL_14;
  }

  *(v10 + 8) = 0;
  *(v18 + 1008) = 0;
  *v16 = 1;
  if (!v19 || v25)
  {
LABEL_14:
    *(v13 + 260) = 1;
    *(v13 + 268) = 0;
    if (*(v14 + 228) == 2)
    {
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  if (*(v14 + 228) == 2)
  {
LABEL_15:
    if (*(v14 + 248) == 1)
    {
      goto LABEL_22;
    }
  }

LABEL_16:
  if (*(v14 + 244) >= 4 && *(v14 + 460))
  {
    if (v25 != 2)
    {
      if (!*(v12 + 156))
      {
        v28 = 0;
        goto LABEL_37;
      }

      v28 = *(v12 + 116);
      if (!v28)
      {
        goto LABEL_37;
      }

LABEL_26:
      if ((v28 & 0x80000000) == 0)
      {
        v30 = 0;
        v31 = *(v14 + 580);
        do
        {
          if ((v31[1] & ~(v31[1] >> 31)) == v30)
          {
            break;
          }

          v32 = *(v31 + 3);
          if (!v32)
          {
            break;
          }

          v33 = v31[2];
          if (v30 + v33 >= *v31)
          {
            v34 = *v31;
          }

          else
          {
            v34 = 0;
          }

          if (*(v32 + 192 * (v30 + v33 - v34) + 184) == 1)
          {
            v28 = 0;
            a8 = 1;
            v29 = a1 + 926400;
            if (v17 == 1)
            {
              goto LABEL_38;
            }

            goto LABEL_39;
          }

          ++v30;
        }

        while (v28 + 1 != v30);
      }

LABEL_37:
      v29 = a1 + 926400;
      if (v17 != 1)
      {
        goto LABEL_39;
      }

      goto LABEL_38;
    }

    v26 = *(v12 + 3724);
    if (*(a1 + 4 * v26 + 743168) == 3)
    {
      v27 = a1 + v26;
      v28 = *(v27 + 744176);
      if (!*(v27 + 744176))
      {
        goto LABEL_37;
      }

      goto LABEL_26;
    }
  }

LABEL_22:
  v28 = 0;
  v29 = a1 + 926400;
  if (v17 == 1)
  {
LABEL_38:
    *(a1 + 748156) = -1;
    *&v35 = -1;
    *(&v35 + 1) = -1;
    *(a1 + 748124) = v35;
    *(a1 + 748140) = v35;
    *(a1 + 748092) = v35;
    *(a1 + 748108) = v35;
    *(a1 + 748060) = v35;
    *(a1 + 748076) = v35;
    *(a1 + 748028) = v35;
    *(a1 + 748044) = v35;
    *(a1 + 747996) = v35;
    *(a1 + 748012) = v35;
    *(a1 + 747964) = v35;
    *(a1 + 747980) = v35;
    *(a1 + 748168) = 0;
  }

LABEL_39:
  if (!v28)
  {
    goto LABEL_73;
  }

  v36 = *(v14 + 580);
  if (v28 < 0)
  {
    if (v28 == -1)
    {
      v40 = v36[2];
      v39 = v40 - 1;
      if (v40 <= 0)
      {
        v39 += *v36;
      }

LABEL_48:
      v41 = *(v36 + 3);
      if (v41)
      {
        v42 = 0;
        v43 = (v41 + 192 * v39);
        *(v14 + 588) = v43;
        *(v18 + 988) = 0;
        *(v18 + 1000) = 0;
        *(v13 + 268) = 1;
        *(v13 + 264) = 0;
        *(v13 + 260) = 0;
        *(v12 + 164) = 0;
        *(v12 + 156) = 0;
        v44 = v43[23];
        goto LABEL_50;
      }
    }
  }

  else if (v36[1] > v28)
  {
    v37 = v36[2] + v28;
    v38 = *v36;
    if (v37 < *v36)
    {
      v38 = 0;
    }

    v39 = v37 - v38;
    goto LABEL_48;
  }

  *(v12 + 156) = 0;
LABEL_73:
  if (*v14)
  {
    v62 = *(v14 + 580);
    v63 = *(v62 + 8);
    v64 = v63 - 1;
    if (v63 <= 0)
    {
      v64 += *v62;
      v65 = *(v62 + 24);
      if (!v65)
      {
        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      v65 = *(v62 + 24);
      if (!v65)
      {
        return 0xFFFFFFFFLL;
      }
    }

    v42 = v65 + 192 * v64;
    if (v19)
    {
      goto LABEL_82;
    }
  }

  else
  {
    v42 = 0;
    if (v19)
    {
      goto LABEL_82;
    }
  }

  if (!*(v29 + 592))
  {
    v66 = *(v14 + 580);
    if (!v66)
    {
      goto LABEL_121;
    }

    v67 = v66 + 1;
    v68 = v66[1];
    if (!v68)
    {
      goto LABEL_121;
    }

    v77 = *v66;
    if (!a8 && v68 != v77 - 1)
    {
      goto LABEL_121;
    }

    v78 = v66[2];
    if (v78 + 1 < v77)
    {
      v77 = 0;
    }

    v75 = v78 + 1 - v77;
    v43 = (*(v66 + 3) + 192 * v78);
    goto LABEL_111;
  }

LABEL_82:
  v66 = *(v14 + 580);
  v67 = v66 + 1;
  v68 = v66[1];
  if (!v68)
  {
    goto LABEL_121;
  }

  if (a8)
  {
    if (v68 >= 1)
    {
      v69 = *v66;
      goto LABEL_91;
    }

LABEL_121:
    *a3 = 0;
    return 0xFFFFFFFFLL;
  }

  v69 = *v66;
  v70 = v68 >= 1 && v68 == *v66 - 1;
  if (!v70)
  {
    goto LABEL_121;
  }

LABEL_91:
  v71 = v66[2];
  if (v71 >= v69)
  {
    v72 = v69;
  }

  else
  {
    v72 = 0;
  }

  v73 = *(v66 + 3);
  if (!v73)
  {
    goto LABEL_121;
  }

  v43 = (v73 + 192 * (v71 - v72));
  if (v11[7] == v11[9] - 1 && (a8 || v68 == v69 - 1))
  {
    v74 = v71 + 1;
    if (v74 < v69)
    {
      v69 = 0;
    }

    v75 = v74 - v69;
LABEL_111:
    v66[2] = v75;
    *v67 = v68 - 1;
  }

  if (!v43)
  {
    goto LABEL_121;
  }

  *(v18 + 988) = 1;
  *(v18 + 1000) = 0;
  v44 = v43[23];
  if ((v44 & 1) != 0 && v11[6] && v11[7] > *(v29 + 628))
  {
    v44 = v43[23] & 0xFFFFFFFELL;
    v43[23] = v44;
  }

  if (*(v14 + 232) == 2)
  {
    v70 = *(a1 + 4 * *(v12 + 3724) + 743168) == 4;
    *(v12 + 164) = v70;
    if (!v70)
    {
      goto LABEL_50;
    }

LABEL_128:
    *(v14 + 588) = 0;
    *(v13 + 260) = 0;
    goto LABEL_50;
  }

  v70 = *(v14 + 588) == v43;
  *(v12 + 164) = v70;
  if (v70)
  {
    goto LABEL_128;
  }

LABEL_50:
  *(v14 + 596) = v43;
  *(v14 + 612) = v43;
  *(v14 + 780) = v42;
  *a6 = v43[20];
  v45 = v43[21];
  *a7 = v45;
  *a2 = v44 & 1;
  v46 = v43[20];
  v47 = *(v12 + 16);
  if (v46 < v47)
  {
    *(v12 + 8) = v46;
    *(v12 + 16) = v46;
    v47 = v46;
  }

  if (*(v18 + 988))
  {
    if (v11[6])
    {
      if (*(v29 + 604))
      {
        v48 = *(a1 + 8 * v11[7] + 927032);
        if (v48 >= 1)
        {
          v49 = 10000000.0 / (*(v29 + 672) * v48);
          if (v49 < 0.1)
          {
            v49 = 30.0;
          }

          *(v12 + 744) = v49;
          v50 = round(*(v14 + 196) / v49);
          if (v50 >= 2147483650.0)
          {
            v50 = 2147483650.0;
          }

          v51 = v50;
          v52 = *(v14 + 332) * v50 / 100;
          if (v52 >= 0x7FFFFFFF)
          {
            LODWORD(v52) = 0x7FFFFFFF;
          }

          if (v52 <= 200)
          {
            LODWORD(v52) = 200;
          }

          *(v12 + 168) = v51;
          *(v12 + 172) = v52;
          v53 = *(v14 + 336) * v51 / 100;
          if (v53 >= 0x7FFFFFFF)
          {
            LODWORD(v53) = 0x7FFFFFFF;
          }

          v54 = *(v18 + 1012);
          if (v54 <= 16000)
          {
            v55 = 4000000;
          }

          else
          {
            v55 = 250 * v54;
          }

          if (v55 > v53)
          {
            LODWORD(v53) = v55;
          }

          *(v12 + 176) = v53;
          v56 = v16;
          v57 = v10;
          v190 = v28;
          v187 = v13;
          v58 = a2;
          v59 = v15;
          v60 = v11;
          v61 = v29;
          vp9_rc_set_gf_interval_range(a1, a1 + 738456);
          v29 = v61;
          v11 = v60;
          v15 = v59;
          a2 = v58;
          v13 = v187;
          v28 = v190;
          v16 = v56;
          v10 = v57;
          goto LABEL_152;
        }
      }
    }

    if (v46 == v47)
    {
      v76 = v45 - v46;
      if (v45 == v46)
      {
        goto LABEL_151;
      }

LABEL_131:
      v191 = v16;
      v194 = v29;
      v188 = v15;
      v82 = v10;
      v83 = 10000000.0 / v76;
LABEL_135:
      if (v83 < 0.1)
      {
        v83 = 30.0;
      }

      *(v12 + 744) = v83;
      v85 = round(*(v14 + 196) / v83);
      if (v85 >= 2147483650.0)
      {
        v85 = 2147483650.0;
      }

      v86 = v85;
      v87 = *(v14 + 332) * v85 / 100;
      if (v87 >= 0x7FFFFFFF)
      {
        LODWORD(v87) = 0x7FFFFFFF;
      }

      if (v87 <= 200)
      {
        LODWORD(v87) = 200;
      }

      *(v12 + 168) = v86;
      *(v12 + 172) = v87;
      v88 = *(v14 + 336) * v86 / 100;
      if (v88 >= 0x7FFFFFFF)
      {
        LODWORD(v88) = 0x7FFFFFFF;
      }

      v89 = *(v18 + 1012);
      if (v89 <= 16000)
      {
        v90 = 4000000;
      }

      else
      {
        v90 = 250 * v89;
      }

      if (v90 > v88)
      {
        LODWORD(v88) = v90;
      }

      *(v12 + 176) = v88;
      vp9_rc_set_gf_interval_range(a1, a1 + 738456);
      v46 = v43[20];
      v45 = v43[21];
      v10 = v82;
      v15 = v188;
      v16 = v191;
      v29 = v194;
      goto LABEL_151;
    }

    v80 = *(v12 + 8);
    v76 = v45 - v80;
    v81 = v80 - *v12;
    if (v81)
    {
      if (!v76)
      {
LABEL_151:
        *v12 = v46;
        *(v12 + 8) = v45;
        goto LABEL_152;
      }

      if ((10 * (v76 - v81) / v81))
      {
        goto LABEL_131;
      }
    }

    else if (!v76)
    {
      goto LABEL_151;
    }

    v191 = v16;
    v194 = v29;
    v188 = v15;
    v82 = v10;
    v84 = v45 - v47;
    if (v45 - v47 >= 10000000)
    {
      v84 = 10000000;
    }

    v83 = 10000000.0 / (10000000.0 / *(v12 + 744) * (v84 - 10000000.0 / *(v12 + 744) + v76) / v84);
    goto LABEL_135;
  }

LABEL_152:
  if (v11[6] && !*(v14 + 232))
  {
    v189 = a2;
    v91 = v11[8];
    v92 = v11[10] * v11[7];
    v93 = *(v12 + 744);
    v94 = v93 / *(a1 + 190284 + 4 * v91);
    v95 = *(a1 + 13936 * (v92 + v91) + 759656);
    *(a1 + 13936 * (v92 + v91) + 759664) = v94;
    v96 = round(v95 / v94);
    if (v96 >= 2147483650.0)
    {
      v96 = 2147483650.0;
    }

    v97 = v96;
    *(a1 + 13936 * (v92 + v91) + 759080) = v96;
    *(a1 + 13936 * (v92 + v91) + 759088) = *(v12 + 176);
    v195 = v29;
    v98 = v15;
    v99 = v16;
    v100 = v10;
    if (v91)
    {
      v97 = llround((v95 - *(a1 + 4 * (v91 - 1 + v92) + 190196)) / (v94 - v93 / *(a1 + 190284 + 4 * (v91 - 1))));
    }

    *(a1 + 13936 * (v92 + v91) + 759672) = v97;
    vp9_restore_layer_context(a1);
    v10 = v100;
    v16 = v99;
    a2 = v189;
    v15 = v98;
    v29 = v195;
  }

  v101 = *(v18 + 652);
  if (v101 != -1)
  {
    --*(v15 + 224 * v101 + 24);
  }

  v102 = *(v14 + 100);
  v103 = v102 + 6;
  if (v102[6])
  {
    if (v102[62])
    {
      if (v102[118])
      {
        if (v102[174])
        {
          if (v102[230])
          {
            if (v102[286])
            {
              if (v102[342])
              {
                if (v102[398])
                {
                  if (v102[454])
                  {
                    if (v102[510])
                    {
                      if (v102[566])
                      {
                        if (v102[622])
                        {
                          result = 0xFFFFFFFFLL;
                          *(v18 + 652) = -1;
                          return result;
                        }

                        v104 = 11;
                      }

                      else
                      {
                        v104 = 10;
                      }
                    }

                    else
                    {
                      v104 = 9;
                    }
                  }

                  else
                  {
                    v104 = 8;
                  }
                }

                else
                {
                  v104 = 7;
                }
              }

              else
              {
                v104 = 6;
              }
            }

            else
            {
              v104 = 5;
            }
          }

          else
          {
            v104 = 4;
          }
        }

        else
        {
          v104 = 3;
        }
      }

      else
      {
        v104 = 2;
      }
    }

    else
    {
      v104 = 1;
    }
  }

  else
  {
    v104 = 0;
  }

  v105 = 56 * v104;
  v103[v105] = 1;
  *(v18 + 652) = v104;
  v106 = v15 + v105 * 4 + 24;
  *(v18 + 52) = v106;
  if (v11[7] >= 1 && v106 == *(v18 + 44))
  {
    *v29 = 0;
  }

  *a3 = 0;
  *(v29 + 760) = *a2;
  v107 = *(v14 + 232);
  if (v107 == 1)
  {
    goto LABEL_204;
  }

  if ((*v10 & 0x80000000) == 0 && !v10[1])
  {
    v108 = *(v12 + 176);
    v109 = 0.5;
    if (*(v18 + 984) && !*(v18 + 1000))
    {
      v109 = dbl_273BCFD00[v28 > 0];
    }

    if (v108 >= *(v10 + 1))
    {
      v108 = *(v10 + 1);
    }

    if (v108 >= (*(v10 + 1) * v109))
    {
      v108 = (*(v10 + 1) * v109);
    }

    *(v12 + 176) = v108;
  }

  if (v107 || v11[6] || !*(v18 + 984) || *(v18 + 1000))
  {
LABEL_204:
    *(a1 + 194508) = -1;
    *(a1 + 194500) = -1;
  }

  if (!*v13)
  {
    v192 = v16;
    v196 = v10;
    v186 = v11;
    v110 = v13;
    v111 = (*(v18 + 1028) + 7) & 0xFFFFFFF8;
    v112 = (*(v18 + 1020) + 7) & 0x1FFFFFF8;
    pthread_mutex_init((a1 + 194232), 0);
    if (((v112 * v111) & 0x80000000) == 0 && (v113 = 16 * v112 * v111, (v114 = malloc_type_malloc(v113 | 0x17, 0xD93B561uLL)) != 0) && (v115 = (v114 + 23) & 0xFFFFFFFFFFFFFFF0, *(v115 - 8) = v114, v115))
    {
      bzero(((v114 + 23) & 0xFFFFFFFFFFFFFFF0), v113);
      v13 = v110;
      *(v110 + 8) = v115;
    }

    else
    {
      v13 = v110;
      *(v110 + 8) = 0;
      vpx_internal_error(a1 + 171696, 2, "Failed to allocate cpi->kmeans_data_arr");
    }

    *(v13 + 20) = v111;
    *v13 = 1;
    v11 = v186;
    v16 = v192;
    v10 = v196;
  }

  if (*(v12 + 1220) && (*(v12 + 3724) == 1 && *(a1 + 743172) == 3 || *(v10 + 54) && *(v10 + 32) && *(v12 + 116) == *(v12 + 132) && *(a1 + 743172) != 3))
  {
    v116 = v10;
    v117 = v16;
    vp9_init_tpl_buffer(a1);
    vp9_estimate_tpl_qp_gop(a1);
    vp9_setup_tpl_stats(a1);
    v16 = v117;
    v10 = v116;
  }

  *(a1 + 131420) = 0;
  if (v11[6])
  {
    v118 = v16;
    v119 = v10;
    vp9_rc_get_svc_params(a1);
  }

  else
  {
    v118 = v16;
    v119 = v10;
    if (*(v14 + 248) == 1)
    {
      vp9_rc_get_one_pass_cbr_params(a1);
    }

    else
    {
      vp9_rc_get_one_pass_vbr_params(a1);
    }
  }

  encode_frame_to_data_rate(a1, a3, a4);
  if (*(v18 + 988))
  {
    *(v18 + 656) = *(v18 + 652);
  }

  v121 = v118;
  if (*v118)
  {
    memcpy((*(v118 + 26) + 2044 * v118[54]), *(v118 + 25), 0x7FCuLL);
    v121 = v118;
  }

  if (*a3 || *(v18 + 984) && !*(v18 + 1000) && (v133 = v121, release_scaled_references(a1), v121 = v133, *a3))
  {
    v122 = *(v18 + 984);
    if (v122)
    {
      v122 = !*(v13 + 260) && !*(v13 + 264) && !*(v13 + 268) && !*v121 && !*(v121 + 41) && !*(v121 + 73) && *(v121 + 74) == 0;
    }

    *v11 = v122;
  }

  if (v11[6] && !*(v14 + 232) || (v11[10] > 1 || v11[9] >= 2) && *(v14 + 232) == 2)
  {
    vp9_save_layer_context(a1);
  }

  if (v11[7] == v11[9] - 1)
  {
    *(v119 + 102) = 0;
  }

  if (*(a1 + 934056) && *(v14 + 232) != 1)
  {
    v123 = *a3;
    v124 = *(v18 + 4);
    v125 = v124 * *v18;
    if (*v18 <= v124)
    {
      v126 = *(v18 + 4);
    }

    else
    {
      v126 = *v18;
    }

    v127 = *v119;
    *(a1 + 934072) += v123;
    if (*(v18 + 988))
    {
      *(a1 + 934080) += v125 + 2 * (v125 >> (*(v18 + 28) + *(v18 + 24)));
      *(a1 + 934088) = (*(v12 + 8) - *(v12 + 16)) / 10000000.0;
    }

    if (v28 < 1)
    {
      ++*(a1 + 934068);
      v129 = a1 + 934096;
      v130 = *(a1 + 936145);
      if (v130 > 0x7E)
      {
        goto LABEL_265;
      }
    }

    else
    {
      if (*(a1 + 934064))
      {
        v128 = *(a1 + 934068);
        if (v128 < *(a1 + 936212))
        {
          *(a1 + 936212) = v128;
        }

        *(a1 + 934068) = 0;
        v129 = a1 + 934096;
        v130 = *(a1 + 936145);
        if (v130 <= 0x7E)
        {
          goto LABEL_259;
        }

LABEL_265:
        v132 = *(a1 + 936144);
        *(a1 + 936144) = (v132 + 1) & 0x7F;
LABEL_266:
        v134 = v129 + 16 * v132;
        *v134 = *v12;
        *(v134 + 8) = v125;
        *(v134 + 12) = v123;
        v199 = v125;
        if (*(v18 + 984))
        {
          v135 = v127;
          v136 = *(a1 + 936152) | vp9_get_refresh_mask(a1);
          *(a1 + 936152) = v136;
          if (!*(v18 + 1000))
          {
            v136 |= (1 << *(v13 + 216)) | (1 << *(v13 + 220)) | (1 << *(v13 + 224));
            *(a1 + 936152) = v136;
          }

          v137.i64[0] = 0x100000001;
          v137.i64[1] = 0x100000001;
          v138 = vaddvq_s32(vandq_s8(vshlq_u32(vdupq_n_s32(v136), xmmword_273BCFD10), v137)) + ((v136 >> 1) & 1) + (v136 & 1) + ((v136 >> 6) & 1) + ((v136 >> 7) & 1);
          v127 = v135;
          if (v138 > *(a1 + 936216))
          {
            *(a1 + 936216) = v138;
          }
        }

        else
        {
          *(a1 + 936152) = 0;
        }

        v139 = *(a1 + 934072);
        v140 = *(a1 + 934088);
        *(a1 + 936184) = v139 / 125.0 / v140;
        v141 = *(a1 + 936145);
        if (!*(a1 + 936145))
        {
          v149 = (a1 + 936168);
          v153 = 0.0;
          v154 = v199;
          goto LABEL_300;
        }

        v142 = *(a1 + 936144);
        v143 = v129 + 16 * (v141 + v142 - 1 - ((v141 + v142 - 1 + (((v141 + v142 - 1) & 0xFE00) >> 9)) & 0xFFFFFF80));
        v144 = *(v143 + 8);
        if (v141 != 1)
        {
          v145 = *v143;
          v146 = 1 - v141;
          v147 = v142 + v141 - 2;
          do
          {
            if ((v145 - *(v129 + 16 * (v147 % 128))) > 0x98967F)
            {
              break;
            }

            v144 += *(v129 + 16 * (v147 % 128) + 8);
            --v147;
          }

          while (!__CFADD__(v146++, 1));
        }

        v149 = (a1 + 936168);
        if (v144 > *(a1 + 936168))
        {
          *v149 = v144;
        }

        if (v141 >= 4)
        {
          v150 = 4;
        }

        else
        {
          v150 = v141;
        }

        v151 = v142 + v141;
        if (v141 == 1)
        {
          v152 = 0;
          v153 = 0.0;
          v154 = v199;
        }

        else
        {
          v155 = 0;
          v152 = v150 & 6;
          v156 = v151 - 1;
          v153 = 0.0;
          do
          {
            v157 = v151 + (v155 ^ 0xFFFFFFFE);
            if (v156 <= 0)
            {
              v158 = -(-v156 & 0x7F);
            }

            else
            {
              v158 = v156 & 0x7F;
            }

            v159 = v157 & 0x7F;
            v161 = -v157;
            v160 = v161 < 0;
            v162 = v161 & 0x7F;
            if (v160)
            {
              v163 = v159;
            }

            else
            {
              v163 = -v162;
            }

            LODWORD(v140) = *(v129 + 16 * v158 + 12);
            v140 = *&v140;
            LODWORD(v120) = *(v129 + 16 * v163 + 12);
            v120 = *&v120;
            v153 = v153 + v140 + v120;
            v155 += 2;
            v156 -= 2;
          }

          while (v152 != v155);
          v154 = v199;
          if (v150 == v152)
          {
LABEL_300:
            v167 = v153 / 125.0;
            if (v167 <= *(a1 + 936192))
            {
              v168 = (a1 + 189856);
              v169 = *(a1 + 936176);
              if (v154 <= v169)
              {
LABEL_302:
                v170 = *(a1 + 936180);
                if (v126 <= v170)
                {
                  goto LABEL_304;
                }

                goto LABEL_303;
              }
            }

            else
            {
              *(a1 + 936192) = v167;
              v168 = (a1 + 189856);
              v169 = *(a1 + 936176);
              if (v154 <= v169)
              {
                goto LABEL_302;
              }
            }

            *(a1 + 936176) = v154;
            v169 = v154;
            v170 = *(a1 + 936180);
            if (v126 <= v170)
            {
LABEL_304:
              *(a1 + 936200) = *(a1 + 934080) * *v168 / v139 * 0.125;
              v171 = 1 << v168[18];
              if (v171 > *(a1 + 936208))
              {
                *(a1 + 936208) = v171;
              }

              if ((v127 & 0x80) != 0)
              {
                goto LABEL_334;
              }

              v172 = (a1 + 942113);
              if (*(a1 + 942113))
              {
                goto LABEL_334;
              }

              v173 = (&vp9_level_defs + 64 * v127);
              if (v169 > v173[4])
              {
                *v172 = 2;
                vpx_internal_error(a1 + 171696, 1, "Failed to encode to the target level %d. %s", *v173, "The picture size is too large.");
                v170 = *(a1 + 936180);
              }

              if (v170 > v173[5])
              {
                *v172 |= 4u;
                vpx_internal_error(a1 + 171696, 1, "Failed to encode to the target level %d. %s", *v173, "The picture width/height is too large.");
              }

              v174 = *(v173 + 1) * 1.015;
              if (v174 >= *v149)
              {
                if (*(a1 + 936208) <= *(v173 + 48))
                {
LABEL_314:
                  if (*(a1 + 936212) < v173[13])
                  {
                    goto LABEL_315;
                  }

                  goto LABEL_326;
                }
              }

              else
              {
                *v172 |= 8u;
                vpx_internal_error(a1 + 171696, 1, "Failed to encode to the target level %d. %s", *v173, "The luma sample rate is too large.");
                if (*(a1 + 936208) <= *(v173 + 48))
                {
                  goto LABEL_314;
                }
              }

              *v172 |= 0x40u;
              vpx_internal_error(a1 + 171696, 1, "Failed to encode to the target level %d. %s", *v173, "Too many column tiles are used.");
              if (*(a1 + 936212) < v173[13])
              {
LABEL_315:
                *v172 |= 0x80u;
                vpx_internal_error(a1 + 171696, 1, "Failed to encode to the target level %d. %s", *v173, "The alt-ref distance is too small.");
                if (*(a1 + 936216) <= *(v173 + 56))
                {
                  goto LABEL_316;
                }

                goto LABEL_327;
              }

LABEL_326:
              if (*(a1 + 936216) <= *(v173 + 56))
              {
LABEL_316:
                v175 = *(a1 + 936192);
                v176 = *(v173 + 4);
                if (v175 > v176)
                {
                  goto LABEL_317;
                }

                goto LABEL_328;
              }

LABEL_327:
              vpx_internal_error(a1 + 171696, 1, "Failed to encode to the target level %d. %s", *v173, "Too many reference buffers are used.");
              v175 = *(a1 + 936192);
              v176 = *(v173 + 4);
              if (v175 > v176)
              {
LABEL_317:
                *v172 |= 0x10u;
                vpx_internal_error(a1 + 171696, 1, "Failed to encode to the target level %d. %s", *v173, "The CPB size is too large.");
                v177 = *(a1 + 936145);
                if (!*(a1 + 936145))
                {
LABEL_318:
                  v178 = 0.0;
LABEL_332:
                  v182 = ((v176 + v178 / -125.0) * 1000.0);
                  *(a1 + 942116) = v182;
                  if (v177 <= 2)
                  {
                    *(a1 + 942116) = v182 >> 1;
                  }

                  goto LABEL_334;
                }

LABEL_329:
                v179 = *(a1 + 936144);
                v180 = v177 + v179;
                LODWORD(v175) = *(v129 + 16 * (v180 - 1 - ((v180 - 1 + (((v180 - 1) & 0xFE00u) >> 9)) & 0xFFFFFF80)) + 12);
                v178 = *&v175;
                if (v177 != 1)
                {
                  LODWORD(v174) = *(v129 + 16 * (v180 - 2 - ((v180 - 2 + (((v180 - 2) >> 24) & 0x7F)) & 0xFFFFFF80)) + 12);
                  v181 = *&v174;
                  v178 = v178 + v181;
                  if (v177 != 2)
                  {
                    LODWORD(v181) = *(v129 + 16 * (v177 + v179 - 3 - ((v177 + v179 - 3 + (((v177 + v179 - 3) >> 24) & 0x7F)) & 0xFFFFFF80)) + 12);
                    v178 = v178 + *&v181;
                  }
                }

                goto LABEL_332;
              }

LABEL_328:
              v177 = *(a1 + 936145);
              if (!*(a1 + 936145))
              {
                goto LABEL_318;
              }

              goto LABEL_329;
            }

LABEL_303:
            *(a1 + 936180) = v126;
            v170 = v126;
            goto LABEL_304;
          }
        }

        v164 = v150 - v152;
        v165 = ~v152 + v151;
        do
        {
          if (v165 <= 0)
          {
            v166 = -(-v165 & 0x7F);
          }

          else
          {
            v166 = v165 & 0x7F;
          }

          LODWORD(v140) = *(v129 + 16 * v166 + 12);
          v140 = *&v140;
          v153 = v153 + v140;
          --v165;
          --v164;
        }

        while (v164);
        goto LABEL_300;
      }

      *(a1 + 934064) = 1;
      *(a1 + 934068) = 0;
      v129 = a1 + 934096;
      v130 = *(a1 + 936145);
      if (v130 > 0x7E)
      {
        goto LABEL_265;
      }
    }

LABEL_259:
    v131 = *(a1 + 936144);
    *(a1 + 936145) = v130 + 1;
    v132 = (v131 + v130) & 0x7F;
    goto LABEL_266;
  }

LABEL_334:
  if (!v11[6] || *(v14 + 232) || !*(v18 + 988))
  {
    return 0;
  }

  result = 0;
  v183 = *(a1 + 754560);
  if (v183 + 1 < v11[9])
  {
    v184 = v183 + 1;
  }

  else
  {
    v184 = 0;
  }

  *(a1 + 754560) = v184;
  return result;
}

_DWORD *release_scaled_references(_DWORD *result)
{
  v1 = result + 48625;
  v2 = result + 47486;
  if (result[47519] || result[188635])
  {
    if (*v1 != -1)
    {
      --*(*v2 + 224 * *v1 + 24);
      *v1 = -1;
    }

    v3 = result[48626];
    if (v3 != -1)
    {
      --*(*v2 + 224 * v3 + 24);
      result[48626] = -1;
    }

    v4 = result[48627];
    if (v4 != -1)
    {
      v5 = (*v2 + 224 * v4 + 24);
      v6 = result + 48627;
LABEL_9:
      --*v5;
      *v6 = -1;
      return result;
    }

    return result;
  }

  v8 = result[48640];
  v7 = result[48641];
  v9 = result + 43012;
  if (*v1 != -1)
  {
    v10 = result[48639];
    v11 = *v2 + 24;
    v12 = (v11 + 224 * *v1);
    v13 = result[48628];
    if (v13 == -1)
    {
      v15 = 0;
      if (v10)
      {
LABEL_20:
        --*v12;
        *v1 = -1;
        goto LABEL_21;
      }
    }

    else
    {
      v14 = v9[v13];
      v15 = v11 + 224 * v14 + 64;
      if (v14 == -1)
      {
        v15 = 0;
      }

      if (v10)
      {
        goto LABEL_20;
      }
    }

    if (v12[18] == *(v15 + 8) && v12[19] == *(v15 + 12))
    {
      goto LABEL_20;
    }
  }

LABEL_21:
  v16 = result[48626];
  if (v16 == -1)
  {
    goto LABEL_31;
  }

  v17 = *v2 + 24;
  v18 = (v17 + 224 * v16);
  v19 = result[48629];
  if (v19 == -1)
  {
    v21 = 0;
    if (v8)
    {
LABEL_30:
      --*v18;
      result[48626] = -1;
      goto LABEL_31;
    }
  }

  else
  {
    v20 = v9[v19];
    v21 = v17 + 224 * v20 + 64;
    if (v20 == -1)
    {
      v21 = 0;
    }

    if (v8)
    {
      goto LABEL_30;
    }
  }

  if (v18[18] == *(v21 + 8) && v18[19] == *(v21 + 12))
  {
    goto LABEL_30;
  }

LABEL_31:
  v6 = result + 48627;
  v22 = result[48627];
  if (v22 != -1)
  {
    v23 = *v2 + 24;
    v5 = (v23 + 224 * v22);
    v24 = result[48630];
    if (v24 == -1)
    {
      v27 = 0;
      if (v7)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v25 = v9[v24];
      v26 = v25 == -1;
      v27 = v23 + 224 * v25 + 64;
      if (v26)
      {
        v27 = 0;
      }

      if (v7)
      {
        goto LABEL_9;
      }
    }

    if (v5[18] == *(v27 + 8) && v5[19] == *(v27 + 12))
    {
      goto LABEL_9;
    }
  }

  return result;
}

uint64_t vp9_set_size_literal(int *a1, int a2, int a3)
{
  v6 = a1 + 188630;
  v7 = a1 + 42997;
  if (!a1[188630])
  {
    alloc_util_frame_buffers(a1);
    v8 = v7[1];
    if (*v7 > *v6 || v8 > v6[1])
    {
      *v6 = *v7;
      v6[1] = v8;
    }

    v6[2] = v7[253];
  }

  v9 = a1[47512];
  if (v9 >= 1 && !a1[233440])
  {
    v10 = vp9_denoiser_alloc(a1 + 42924, a1 + 188636, (a1 + 233396), v6[5], v9, *v7, v7[1], v7[6], v7[7], v7[8], 160);
    if (v11)
    {
      vpx_internal_error((a1 + 42924), 2, "Failed to allocate denoiser", v10);
    }
  }

  alloc_raw_frame_buffers(a1);
  if (a2)
  {
    v12 = *v6;
    if (*v6 >= a2)
    {
      v12 = a2;
    }

    *v7 = v12;
  }

  if (a3)
  {
    v13 = v6[1];
    if (v13 >= a3)
    {
      v13 = a3;
    }

    v7[1] = v13;
  }

  update_frame_size(a1);
  return 0;
}

double vp9_apply_encoding_flags(uint64_t a1, int a2)
{
  if ((*&a2 & 0x230000) != 0)
  {
    if ((*&a2 & 0x10000) != 0)
    {
      v2 = 6;
    }

    else
    {
      v2 = 7;
    }

    if ((*&a2 & 0x20000) != 0)
    {
      v2 &= 5u;
    }

    if ((*&a2 & 0x200000) != 0)
    {
      v2 &= 3u;
    }

    *(a1 + 739528) = v2;
  }

  if ((a2 & 0x1CC0000) != 0)
  {
    if ((*&a2 & 0x40000) != 0)
    {
      v3 = 6;
    }

    else
    {
      v3 = 7;
    }

    if ((*&a2 & 0x400000) != 0)
    {
      v3 &= 5u;
    }

    if ((*&a2 & 0x800000) != 0)
    {
      v3 &= 3u;
    }

    *(a1 + 194576) = (v3 >> 1) & 1;
    *(a1 + 194580) = v3 >> 2;
    *(a1 + 194568) = 1;
    *(a1 + 194572) = v3 & 1;
  }

  if ((a2 & 0x100000) != 0)
  {
    *&result = 1;
    *(a1 + 194584) = 1;
  }

  return result;
}