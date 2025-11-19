uint64_t opus_decoder_init(_DWORD *a1, int a2, unsigned int a3)
{
  result = 0xFFFFFFFFLL;
  if (a2 <= 15999)
  {
    if (a2 != 8000)
    {
      v7 = 12000;
LABEL_7:
      if (a2 != v7)
      {
        return result;
      }
    }
  }

  else if (a2 != 16000 && a2 != 48000)
  {
    v7 = 24000;
    goto LABEL_7;
  }

  if (a3 - 3 >= 0xFFFFFFFE)
  {
    v17 = 0;
    size = opus_decoder_get_size(a3);
    bzero(a1, size);
    if (silk_Get_Decoder_Size(&v17))
    {
      return 4294967293;
    }

    v9 = (v17 + 7) & 0xFFFFFFFFFFFFFFF8;
    v17 = (v17 + 7) & 0xFFFFFFF8;
    v10 = v9 + 80;
    *a1 = v9 + 80;
    a1[1] = 80;
    a1[11] = a3;
    a1[2] = a3;
    a1[3] = a2;
    a1[6] = a2;
    a1[4] = a3;
    if (silk_InitDecoder((a1 + 20)) || celt_decoder_init((a1 + v10), a2, a3))
    {
      return 4294967293;
    }

    else
    {
      opus_custom_decoder_ctl((a1 + v10), 10016, v11, v12, v13, v14, v15, v16, 0);
      result = 0;
      a1[14] = 0;
      a1[15] = a2 / 0x190u;
    }
  }

  return result;
}

uint64_t opus_decode_native(int *a1, char *a2, int a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, _DWORD *a8, int a9)
{
  v42 = *MEMORY[0x1E69E9840];
  if (a6 > 1)
  {
    goto LABEL_22;
  }

  v10 = a7;
  if (!a2 || !a3 || a6)
  {
    if (a5 % (a1[3] / 400))
    {
      goto LABEL_22;
    }
  }

  if (!a2 || !a3)
  {
    LODWORD(v25) = 0;
    while (1)
    {
      v27 = opus_decode_frame(a1, 0, 0, (a4 + 2 * a1[2] * v25), (a5 - v25), 0, a7, a8);
      if ((v27 & 0x80000000) != 0)
      {
        break;
      }

      v25 = (v27 + v25);
      if (v25 >= a5)
      {
        goto LABEL_27;
      }
    }

LABEL_21:
    v25 = v27;
    goto LABEL_23;
  }

  if (a3 < 0)
  {
LABEL_22:
    v25 = 0xFFFFFFFFLL;
    goto LABEL_23;
  }

  v40 = 0;
  v39 = 0;
  v17 = *a2;
  v18 = v17;
  if ((~v17 & 0x60) != 0)
  {
    v19 = 1000;
  }

  else
  {
    v19 = 1001;
  }

  if ((v17 & 0x80u) == 0)
  {
    v20 = v19;
  }

  else
  {
    v20 = 1002;
  }

  v35 = v19;
  v36 = v20;
  bandwidth = opus_packet_get_bandwidth(a2);
  samples_per_frame = opus_packet_get_samples_per_frame(a2, a1[3]);
  nb_channels = opus_packet_get_nb_channels(a2);
  v22 = opus_packet_parse_impl(a2, a3, v10, &v39, 0, v41, &v40, a8);
  v25 = v22;
  if ((v22 & 0x80000000) == 0)
  {
    v26 = &a2[v40];
    if (a6)
    {
      if (a5 < samples_per_frame || v18 < 0 || a1[13] == 1002)
      {
        v27 = opus_decode_native(a1, 0, 0, a4, a5, 0, 0, 0, a9);
      }

      else
      {
        if (a5 != samples_per_frame)
        {
          v33 = a1[17];
          v34 = opus_decode_native(a1, 0, 0, a4, (a5 - samples_per_frame), 0, 0, 0, a9);
          if ((v34 & 0x80000000) != 0)
          {
            v25 = v34;
            a1[17] = v33;
            goto LABEL_23;
          }
        }

        a1[15] = samples_per_frame;
        a1[12] = bandwidth;
        a1[13] = v35;
        a1[11] = nb_channels;
        v27 = opus_decode_frame(a1, v26, v41[0], (a4 + 2 * a1[2] * (a5 - samples_per_frame)), samples_per_frame, 1, v23, v24);
        if ((v27 & 0x80000000) == 0)
        {
          a1[17] = a5;
          v25 = a5;
          goto LABEL_23;
        }
      }
    }

    else
    {
      if (v22 * samples_per_frame > a5)
      {
        v25 = 4294967294;
        goto LABEL_23;
      }

      a1[15] = samples_per_frame;
      a1[12] = bandwidth;
      a1[13] = v36;
      a1[11] = nb_channels;
      if (!v22)
      {
LABEL_27:
        a1[17] = v25;
        goto LABEL_23;
      }

      v30 = v22;
      v31 = v41;
      LODWORD(v25) = 0;
      while (1)
      {
        v27 = opus_decode_frame(a1, v26, *v31, (a4 + 2 * a1[2] * v25), (a5 - v25), 0, v23, v24);
        if ((v27 & 0x80000000) != 0)
        {
          break;
        }

        v32 = *v31++;
        v26 += v32;
        v25 = (v27 + v25);
        if (!--v30)
        {
          goto LABEL_27;
        }
      }
    }

    goto LABEL_21;
  }

LABEL_23:
  v28 = *MEMORY[0x1E69E9840];
  return v25;
}

uint64_t opus_decode_frame(int *a1, unsigned __int8 *a2, uint64_t a3, __int16 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v190 = *MEMORY[0x1E69E9840];
  v183 = 0;
  v8 = a1[3];
  v9 = v8 / 50;
  if ((v8 / 50) >> 3 > a5)
  {
    v10 = 4294967294;
    goto LABEL_188;
  }

  v11 = a6;
  v12 = a4;
  v13 = a3;
  v14 = a1;
  v179 = ((v8 / 50) >> 3);
  v15 = a1[1];
  v180 = *a1;
  v16 = v9 >> 1;
  v17 = v9 >> 2;
  v188 = 0;
  v186 = 0u;
  v187 = 0u;
  v185 = 0u;
  v184 = 0;
  v18 = 3 * (v8 / 25);
  if (v18 >= a5)
  {
    v10 = a5;
  }

  else
  {
    v10 = v18;
  }

  if (a3 > 1)
  {
    if (!a2)
    {
      goto LABEL_16;
    }

    v181 = v9 >> 2;
    v177 = a6;
    v20 = a1[15];
    v21 = a1[13];
    a1 = ec_dec_init(&v185, a2, a3);
    v23 = v14[14];
    if (v23 < 1)
    {
      v25 = 0;
      v172 = 0;
      v173 = 0;
      v174 = 1;
      v24 = a2;
    }

    else
    {
      if (v21 != 1002 || v23 == 1002)
      {
        v24 = a2;
        if (v21 != 1002)
        {
          v11 = v177;
          if (v23 == 1002)
          {
            v173 = 0;
            v172 = v14[2] * v181;
            v25 = 1;
          }

          else
          {
            v25 = 0;
            v172 = 0;
            v173 = 0;
          }

          v174 = 1;
LABEL_46:
          v65 = v20 <= v10;
          LODWORD(v10) = v20;
          v17 = v181;
          if (!v65)
          {
            v10 = 0xFFFFFFFFLL;
            goto LABEL_188;
          }

          goto LABEL_54;
        }

        v25 = 0;
        v172 = 0;
        v173 = 0;
      }

      else if (v14[16])
      {
        v24 = a2;
        v25 = 0;
        v172 = 0;
        v173 = 0;
        v21 = 1002;
      }

      else
      {
        v31 = 2 * v14[2] * v181;
        MEMORY[0x1EEE9AC00](a1);
        v33 = &v169[-v32];
        bzero(&v169[-v32], v34);
        if (v181 >= v20)
        {
          v35 = v20;
        }

        else
        {
          v35 = v181;
        }

        v173 = v33;
        a1 = opus_decode_frame(v14, 0, 0, v33, v35, 0);
        v24 = a2;
        v172 = 0;
        v21 = 1002;
        v25 = 1;
      }

      v174 = 1;
    }

    v11 = v177;
    goto LABEL_46;
  }

  v19 = a1[15];
  if (v10 >= v19)
  {
    v10 = v19;
  }

  else
  {
    v10 = v10;
  }

LABEL_16:
  v21 = a1[14];
  if (!v21)
  {
    v30 = a1[2] * v10;
    if (v30 >= 1)
    {
      bzero(a4, (2 * v30));
    }

    goto LABEL_188;
  }

  if (v10 <= v9)
  {
    if (v10 >= v9)
    {
      v173 = 0;
      v24 = 0;
      v174 = 0;
      v172 = 0;
      v25 = 0;
    }

    else
    {
      if (v10 > v16)
      {
        v181 = v9 >> 2;
        v25 = 0;
        v172 = 0;
        v174 = 0;
        v24 = 0;
        v173 = 0;
        v20 = v9 >> 1;
        goto LABEL_46;
      }

      if (v21 == 1000)
      {
        v170 = 0;
        v172 = 0;
        v174 = 0;
        v178 = 0;
        v173 = 0;
LABEL_58:
        if (v16 <= v10)
        {
          v41 = v10;
        }

        else
        {
          v41 = v9 >> 1;
        }

        v42 = 2 * v14[2] * v41;
        MEMORY[0x1EEE9AC00](a1);
        v39 = &v169[-v43];
        bzero(&v169[-v43], v44);
        if (v14[14] == 1002)
        {
          silk_InitDecoder(v14 + v15);
        }

        v177 = v11;
        v45 = 1000 * v10 / v14[3];
        if (v45 <= 10)
        {
          v45 = 10;
        }

        v14[8] = v45;
        v46 = v178;
        if (!v174)
        {
          goto LABEL_73;
        }

        v14[5] = v14[11];
        if (v21 != 1000)
        {
          goto LABEL_71;
        }

        v47 = v14[12];
        switch(v47)
        {
          case 1103:
            goto LABEL_71;
          case 1102:
            v48 = 12000;
            break;
          case 1101:
            v48 = 8000;
            break;
          default:
LABEL_71:
            v48 = 16000;
            break;
        }

        v14[7] = v48;
LABEL_73:
        v181 = v17;
        v175 = v21;
        v176 = v13;
        v49 = 0;
        if (v46)
        {
          v50 = 2 * v177;
        }

        else
        {
          v50 = 1;
        }

        v51 = v39;
        do
        {
          if (silk_Decode(v14 + v15, v14 + 4, v50, v49 == 0, &v185, v51, &v184))
          {
            if (!v50)
            {
              v10 = 4294967293;
              goto LABEL_188;
            }

            v184 = v10;
            v52 = v14[2] * v10;
            if (v52 >= 1)
            {
              bzero(v51, (2 * v52));
            }

            v53 = v10;
          }

          else
          {
            v53 = v184;
            v52 = v14[2] * v184;
          }

          v51 += 2 * v52;
          v49 += v53;
        }

        while (v49 < v10);
        v54 = v174;
        if (v177)
        {
          v54 = 0;
        }

        if (v54 != 1)
        {
          *&v169[4] = v177 == 0;
          *&v169[8] = 0;
          v38 = 0;
          v171 = 0;
          v37 = 17;
          v174 = 1;
LABEL_108:
          v40 = v180;
          v24 = v178;
          goto LABEL_109;
        }

        v55 = __clz(v187);
        if (v14[13] == 1001)
        {
          v56 = 20;
        }

        else
        {
          v56 = 0;
        }

        v57 = DWORD2(v186) + v55 + v56 - 15;
        v58 = v176;
        v24 = v178;
        if (v57 > 8 * v176)
        {
          v38 = 0;
          v171 = 0;
          v37 = 17;
          v174 = 1;
          *&v169[4] = 1;
          goto LABEL_56;
        }

        if (v175 == 1001)
        {
          v38 = ec_dec_bit_logp(&v185, 12);
          if (!v38)
          {
            *&v169[8] = 0;
            v171 = 0;
            v37 = 17;
            v175 = 1001;
LABEL_107:
            v174 = 1;
            *&v169[4] = 1;
            goto LABEL_108;
          }

          v59 = ec_dec_bit_logp(&v185, 1);
          v60 = ec_dec_uint(&v185, 0x100u) + 2;
          v61 = DWORD2(v186);
          v62 = __clz(v187);
        }

        else
        {
          v38 = 1;
          v59 = ec_dec_bit_logp(&v185, 1);
          v61 = DWORD2(v186);
          v62 = __clz(v187);
          v60 = v58 - ((DWORD2(v186) + v62 - 25) >> 3);
        }

        v63 = 8 * (v58 - v60);
        v64 = v61 + v62 - 32;
        v65 = v63 < v64;
        if (v63 >= v64)
        {
          v66 = v60;
        }

        else
        {
          v38 = 0;
          v66 = 0;
        }

        if (v65)
        {
          v67 = 0;
        }

        else
        {
          v67 = v58 - v60;
        }

        v176 = v67;
        *&v169[8] = v66;
        DWORD2(v185) -= v66;
        v171 = v59;
        v37 = 17;
        goto LABEL_107;
      }

      v173 = 0;
      v24 = 0;
      v174 = 0;
      v172 = 0;
      if (v10 >= v17)
      {
        v36 = v9 >> 2;
      }

      else
      {
        v36 = v10;
      }

      if (v10 < v16)
      {
        LODWORD(v10) = v36;
      }

      v25 = 0;
    }

LABEL_54:
    v170 = v25;
    if (v21 == 1002)
    {
      v181 = v17;
      v174 = 0;
      v37 = 0;
      v38 = 0;
      v171 = 0;
      *&v169[4] = v11 == 0;
      *&v169[8] = 0;
      v39 = &v189;
      v175 = 1002;
      v176 = v13;
LABEL_56:
      v40 = v180;
LABEL_109:
      v178 = v24;
      v68 = v14[12] - 1101;
      v69 = v37;
      if (v68 > 3)
      {
        v70 = 21;
      }

      else
      {
        v70 = dword_1C382B390[v68];
      }

      opus_custom_decoder_ctl((v14 + v40), 10012, a3, a4, a5, a6, a7, a8, v70);
      v77 = opus_custom_decoder_ctl((v14 + v40), 10008, v71, v72, v73, v74, v75, v76, v14[11]);
      if (v38)
      {
        v78 = 0;
      }

      else
      {
        v78 = v170;
      }

      MEMORY[0x1EEE9AC00](v77);
      v80 = &v169[-v79];
      bzero(&v169[-v79], v81);
      v177 = v38;
      v172 = v78;
      if ((v174 & v78) == 1)
      {
        if (v181 >= v10)
        {
          v89 = v10;
        }

        else
        {
          v89 = v181;
        }

        opus_decode_frame(v14, 0, 0, v80, v89, 0);
        v90 = 0;
        v91 = &v189;
        v173 = v80;
      }

      else if (v38)
      {
        v92 = v181;
        v93 = 2 * v14[2] * v181;
        MEMORY[0x1EEE9AC00](v82);
        v91 = &v169[-v94];
        bzero(&v169[-v94], v95);
        if (v171)
        {
          v96 = v180;
          opus_custom_decoder_ctl((v14 + v180), 10010, v83, v84, v85, v86, v87, v88, 0);
          v97 = v92;
          v40 = v96;
          celt_decode_with_ec((v14 + v96), &v178[v176], *&v169[8], v91, v97, 0);
          opus_custom_decoder_ctl((v14 + v96), 4031, v98, v99, v100, v101, v102, v103, &v183);
          v90 = 1;
        }

        else
        {
          v90 = 0;
          v40 = v180;
        }
      }

      else
      {
        v90 = 0;
        v91 = &v189;
      }

      opus_custom_decoder_ctl((v14 + v40), 10010, v83, v84, v85, v86, v87, v88, v69);
      if (v175 == 1000)
      {
        LOWORD(v182) = -1;
        v110 = v14[2] * v10;
        if (v110 >= 1)
        {
          bzero(v12, (2 * v110));
        }

        if (v14[14] == 1001 && (!v90 || !v14[16]))
        {
          opus_custom_decoder_ctl((v14 + v40), 10010, v104, v105, v106, v107, v108, v109, 0);
          celt_decode_with_ec((v14 + v40), &v182, 2u, v12, v179, 0);
        }

        v111 = 0;
      }

      else
      {
        if (v9 >= v10)
        {
          v112 = v10;
        }

        else
        {
          v112 = v9;
        }

        v113 = v14[14];
        v114 = v178;
        if (v175 != v113 && v113 >= 1 && !v14[16])
        {
          opus_custom_decoder_ctl((v14 + v40), 4028, v104, v105, v106, v107, v108, v109, *v169);
          v114 = v178;
        }

        if (*&v169[4])
        {
          v115 = v114;
        }

        else
        {
          v115 = 0;
        }

        v111 = celt_decode_with_ec((v14 + v40), v115, v176, v12, v112, &v185);
        if (!v174)
        {
          goto LABEL_151;
        }
      }

      v116 = (v14[2] * v10);
      if (v116 >= 1)
      {
        v117 = v12;
        do
        {
          v118 = *v39;
          v39 += 2;
          v119 = *v117 + v118;
          if (v119 >= 0x7FFF)
          {
            v119 = 0x7FFF;
          }

          if (v119 <= -32768)
          {
            LOWORD(v119) = 0x8000;
          }

          *v117++ = v119;
          --v116;
        }

        while (v116);
      }

LABEL_151:
      v182 = 0;
      opus_custom_decoder_ctl((v14 + v40), 10015, v104, v105, v106, v107, v108, v109, &v182);
      v126 = *(v182 + 64);
      v127 = v171;
      v128 = v179;
      if (v177 != 0 && !v171)
      {
        opus_custom_decoder_ctl((v14 + v40), 4028, v120, v121, v122, v123, v124, v125, *v169);
        opus_custom_decoder_ctl((v14 + v40), 10010, v129, v130, v131, v132, v133, v134, 0);
        celt_decode_with_ec((v14 + v40), &v178[v176], *&v169[8], v91, v181, 0);
        opus_custom_decoder_ctl((v14 + v40), 4031, v135, v136, v137, v138, v139, v140, &v183);
        smooth_fade(&v12[v14[2] * (v10 - v128)], &v91[2 * v14[2] * v128], &v12[v14[2] * (v10 - v128)], v128, v14[2], v126, v14[3]);
      }

      if (v90)
      {
        v141 = v14[2];
        if (v141 >= 1)
        {
          v142 = 0;
          v143 = v91;
          v144 = v12;
          do
          {
            if (v128 >= 1)
            {
              v145 = 0;
              v146 = v128;
              do
              {
                v144[v145] = *&v143[v145 * 2];
                v145 += v141;
                --v146;
              }

              while (v146);
            }

            ++v142;
            ++v144;
            v143 += 2;
          }

          while (v142 != v141);
        }

        smooth_fade(&v91[2 * v141 * v128], &v12[v141 * v128], &v12[v141 * v128], v128, v141, v126, v14[3]);
      }

      v147 = v177;
      if (v172)
      {
        v148 = v14[2];
        if (v10 >= v181)
        {
          v153 = v148 * v128;
          v154 = v173;
          if (v148 * v128 >= 1)
          {
            v155 = (v148 * v128);
            v156 = v173;
            v157 = v12;
            do
            {
              v158 = *v156++;
              *v157++ = v158;
              --v155;
            }

            while (v155);
          }

          v150 = &v154[2 * v153];
          v149 = v14[3];
          v151 = &v12[v153];
          v152 = v151;
        }

        else
        {
          v149 = v14[3];
          v150 = v173;
          v151 = v12;
          v152 = v12;
        }

        smooth_fade(v150, v151, v152, v128, v148, v126, v149);
      }

      v159 = v14[10];
      if (v159)
      {
        v160 = (21771 * v159 + 0x4000) >> 15;
        v161 = v160 >> 10;
        if (v161 <= 14)
        {
          if (v161 >= -15)
          {
            v163 = ((((((326528 * (v160 & 0x3FF)) >> 16) + 14819) * 32 * (v160 & 0x3FF) + 1494482944) >> 16) * 32 * (v160 & 0x3FF) + 1073676288) >> 16;
            v162 = v161 > -3 ? v163 << (v161 + 2) : v163 >> (-2 - v161);
          }

          else
          {
            v162 = 0;
          }
        }

        else
        {
          v162 = 2130706432;
        }

        v164 = (v14[2] * v10);
        if (v164 >= 1)
        {
          do
          {
            v165 = HIWORD(v162) * *v12 + ((v162 * *v12 + 0x8000) >> 16);
            if (v165 <= -32767)
            {
              v165 = -32767;
            }

            if (v165 >= 0x7FFF)
            {
              LOWORD(v165) = 0x7FFF;
            }

            *v12++ = v165;
            --v164;
          }

          while (v164);
        }
      }

      v166 = v183 ^ v187;
      if (v176 < 2)
      {
        v166 = 0;
      }

      v14[18] = v166;
      v14[14] = v175;
      v14[16] = v147 != 0 && !v127;
      if (v111 >= 0)
      {
        v10 = v10;
      }

      else
      {
        v10 = v111;
      }

      goto LABEL_188;
    }

    v178 = v24;
    goto LABEL_58;
  }

  v26 = v10;
  while (1)
  {
    v27 = v26 >= v9 ? v9 : v26;
    v28 = opus_decode_frame(v14, 0, 0, v12, v27, 0);
    if ((v28 & 0x80000000) != 0)
    {
      break;
    }

    v12 += v14[2] * v28;
    v29 = __OFSUB__(v26, v28);
    v26 -= v28;
    if ((v26 < 0) ^ v29 | (v26 == 0))
    {
      goto LABEL_188;
    }
  }

  v10 = v28;
LABEL_188:
  v167 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t opus_decode(int *a1, char *a2, int a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  if (a5 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return opus_decode_native(a1, a2, a3, a4, a5, a6, 0, 0, 0);
  }
}

uint64_t opus_decoder_ctl(int *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int *a9)
{
  v10 = *a1;
  v11 = a1[1];
  result = 4294967291;
  if (a2 <= 4032)
  {
    if (a2 <= 4028)
    {
      if (a2 != 4009)
      {
        if (a2 == 4028)
        {
          *(a1 + 15) = 0u;
          *(a1 + 11) = 0u;
          opus_custom_decoder_ctl((a1 + v10), 4028, a3, a4, a5, a6, a7, a8, v16);
          silk_InitDecoder(a1 + v11);
          result = 0;
          v13 = a1[3];
          a1[11] = a1[2];
          a1[15] = v13 / 400;
        }

        return result;
      }

      v14 = a9;
      if (a9)
      {
        result = 0;
        v15 = a1[12];
        goto LABEL_28;
      }

      return 0xFFFFFFFFLL;
    }

    if (a2 == 4029)
    {
      v14 = a9;
      if (a9)
      {
        result = 0;
        v15 = a1[3];
        goto LABEL_28;
      }

      return 0xFFFFFFFFLL;
    }

    if (a2 != 4031)
    {
      return result;
    }

    v14 = a9;
    if (!a9)
    {
      return 0xFFFFFFFFLL;
    }

    result = 0;
    v15 = a1[18];
LABEL_28:
    *v14 = v15;
    return result;
  }

  if (a2 > 4038)
  {
    if (a2 == 4039)
    {
      v14 = a9;
      if (a9)
      {
        result = 0;
        v15 = a1[17];
        goto LABEL_28;
      }

      return 0xFFFFFFFFLL;
    }

    if (a2 != 4045)
    {
      return result;
    }

    v14 = a9;
    if (!a9)
    {
      return 0xFFFFFFFFLL;
    }

    result = 0;
    v15 = a1[10];
    goto LABEL_28;
  }

  if (a2 != 4033)
  {
    if (a2 != 4034)
    {
      return result;
    }

    if (a9 == a9)
    {
      result = 0;
      a1[10] = a9;
      return result;
    }

    return 0xFFFFFFFFLL;
  }

  if (!a9)
  {
    return 0xFFFFFFFFLL;
  }

  if (a1[14] == 1002)
  {
    opus_custom_decoder_ctl((a1 + v10), 4033, a3, a4, a5, a6, a7, a8, a9);
    return 0;
  }

  else
  {
    result = 0;
    *a9 = a1[9];
  }

  return result;
}

uint64_t smooth_fade(uint64_t result, uint64_t a2, uint64_t a3, int a4, int a5, __int16 *a6, int a7)
{
  if (a5 >= 1)
  {
    v7 = 0;
    do
    {
      if (a4 >= 1)
      {
        v8 = 0;
        v9 = a4;
        v10 = a6;
        do
        {
          v11 = *v10 * *v10;
          *(a3 + v8) = ((v11 >> 15) * *(a2 + v8) + (((2 * v11) & 0xFFFF0000 ^ 0x7FFF0000) >> 16) * *(result + v8)) >> 15;
          v8 += 2 * a5;
          v10 += 48000 / a7;
          --v9;
        }

        while (v9);
      }

      ++v7;
      a3 += 2;
      result += 2;
      a2 += 2;
    }

    while (v7 != a5);
  }

  return result;
}

uint64_t opus_packet_parse_impl(char *a1, int a2, int a3, _BYTE *a4, char **a5, __int16 *a6, _DWORD *a7, _DWORD *a8)
{
  if (!a6)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = a6;
  samples_per_frame = opus_packet_get_samples_per_frame(a1, 48000);
  v18 = a1 + 1;
  v17 = *a1;
  v19 = a2 - 1;
  v20 = *a1 & 3;
  if (v20 <= 1)
  {
    if ((*a1 & 3) == 0)
    {
      v21 = 0;
      v22 = 1;
      v23 = a2 - 1;
      goto LABEL_5;
    }

    if (a3)
    {
      v20 = 0;
      v22 = 2;
      v21 = 1;
      v23 = a2 - 1;
LABEL_13:
      if (v23 < 1)
      {
        goto LABEL_32;
      }

      v26 = *v18;
      if (v26 < 0xFC)
      {
        v27 = 1;
        goto LABEL_42;
      }

      if (v23 == 1)
      {
LABEL_32:
        v27 = -1;
        LOWORD(v26) = -1;
      }

      else
      {
        LOWORD(v26) = v26 + 4 * v18[1];
        v27 = 2;
      }

LABEL_42:
      v10[v22 - 1] = v26;
      v35 = (v22 - 1);
      v36 = v10[v35];
      result = 4294967292;
      if (v36 < 0)
      {
        return result;
      }

      v37 = v23 - v27;
      if (v37 < v36)
      {
        return result;
      }

      v18 += v27;
      if (v21)
      {
        if (v22 * v36 > v37)
        {
          return result;
        }

        if (v22 >= 2)
        {
          v38 = (v35 + 7) & 0x1FFFFFFF8;
          v39 = vdupq_n_s64(v35 - 1);
          v40 = xmmword_1C37BDD80;
          v41 = xmmword_1C37BDD90;
          v42 = xmmword_1C378AEF0;
          v43 = xmmword_1C378AF00;
          v44 = v10 + 4;
          v45 = vdupq_n_s64(8uLL);
          do
          {
            v46 = vmovn_s64(vcgeq_u64(v39, v43));
            if (vuzp1_s8(vuzp1_s16(v46, *v39.i8), *v39.i8).u8[0])
            {
              *(v44 - 4) = v36;
            }

            if (vuzp1_s8(vuzp1_s16(v46, *&v39), *&v39).i8[1])
            {
              *(v44 - 3) = v36;
            }

            if (vuzp1_s8(vuzp1_s16(*&v39, vmovn_s64(vcgeq_u64(v39, *&v42))), *&v39).i8[2])
            {
              *(v44 - 2) = v36;
              *(v44 - 1) = v36;
            }

            v47 = vmovn_s64(vcgeq_u64(v39, v41));
            if (vuzp1_s8(*&v39, vuzp1_s16(v47, *&v39)).i32[1])
            {
              *v44 = v36;
            }

            if (vuzp1_s8(*&v39, vuzp1_s16(v47, *&v39)).i8[5])
            {
              v44[1] = v36;
            }

            if (vuzp1_s8(*&v39, vuzp1_s16(*&v39, vmovn_s64(vcgeq_u64(v39, *&v40)))).i8[6])
            {
              v44[2] = v36;
              v44[3] = v36;
            }

            v41 = vaddq_s64(v41, v45);
            v42 = vaddq_s64(v42, v45);
            v43 = vaddq_s64(v43, v45);
            v44 += 8;
            v40 = vaddq_s64(v40, v45);
            v38 -= 8;
          }

          while (v38);
        }
      }

      else if (v27 + v36 > v19)
      {
        return result;
      }

      goto LABEL_63;
    }

    if ((v19 & 1) == 0)
    {
      v20 = 0;
      v24 = v19 >> 1;
      *v10 = v19 >> 1;
      v22 = 2;
      goto LABEL_35;
    }

    return 4294967292;
  }

  if (v20 == 2)
  {
    if (a2 < 2)
    {
LABEL_10:
      *v10 = -1;
      return 4294967292;
    }

    v33 = *v18;
    if (v33 >= 0xFC)
    {
      if (a2 == 2)
      {
        goto LABEL_10;
      }

      v33 += 4 * a1[2];
      v34 = 2;
    }

    else
    {
      v34 = 1;
    }

    *v10 = v33;
    v19 -= v34;
    v23 = v19 - v33;
    if (v19 < v33)
    {
      return 4294967292;
    }

    v21 = 0;
    v20 = 0;
    v22 = 2;
    v18 += v34;
LABEL_5:
    v24 = v23;
    v23 = v19;
    v19 = v24;
    if (!a3)
    {
      goto LABEL_35;
    }

    goto LABEL_13;
  }

  v23 = a2 - 2;
  if (a2 < 2)
  {
    return 4294967292;
  }

  v28 = samples_per_frame;
  v29 = *v18;
  result = 4294967292;
  v22 = *v18 & 0x3F;
  if ((*v18 & 0x3F) == 0 || v22 * v28 > 5760)
  {
    return result;
  }

  v18 = a1 + 2;
  v20 = 0;
  if ((v29 & 0x40) != 0)
  {
    while (v23 >= 1)
    {
      v31 = *v18++;
      v30 = v31;
      if (v31 >= 0xFE)
      {
        v32 = 254;
      }

      else
      {
        v32 = v30;
      }

      v23 += ~v32;
      v20 += v32;
      if (v30 != 255)
      {
        if (v23 < 0)
        {
          return 4294967292;
        }

        goto LABEL_26;
      }
    }

    return 4294967292;
  }

LABEL_26:
  if (v29 < 0)
  {
    if (v22 < 2)
    {
      v21 = 0;
      v19 = v23;
    }

    else
    {
      v51 = (v22 - 1);
      v52 = v10;
      v19 = v23;
      do
      {
        if (!v19)
        {
LABEL_106:
          *v52 = -1;
          return 4294967292;
        }

        v53 = *v18;
        if (v53 >= 0xFC)
        {
          if (v19 == 1)
          {
            goto LABEL_106;
          }

          v53 += 4 * v18[1];
          v54 = 2;
        }

        else
        {
          v54 = 1;
        }

        *v52 = v53;
        v19 -= v54;
        if (v19 < v53)
        {
          return 4294967292;
        }

        v18 += v54;
        v23 = v23 - v54 - v53;
        ++v52;
        --v51;
      }

      while (v51);
      if (v23 < 0)
      {
        return 4294967292;
      }

      v21 = 0;
    }

    goto LABEL_5;
  }

  if (a3)
  {
    v21 = 1;
    goto LABEL_13;
  }

  v24 = v23 / v22;
  if (v23 / v22 * v22 != v23)
  {
    return 4294967292;
  }

  if (v22 >= 2)
  {
    v55 = (v22 - 1);
    v56 = (v55 + 7) & 0x1FFFFFFF8;
    v57 = vdupq_n_s64(v55 - 1);
    v58 = xmmword_1C37BDD80;
    v59 = xmmword_1C37BDD90;
    v60 = xmmword_1C378AEF0;
    v61 = xmmword_1C378AF00;
    v62 = v10 + 4;
    v63 = vdupq_n_s64(8uLL);
    do
    {
      v64 = vmovn_s64(vcgeq_u64(v57, v61));
      if (vuzp1_s8(vuzp1_s16(v64, *v57.i8), *v57.i8).u8[0])
      {
        *(v62 - 4) = v24;
      }

      if (vuzp1_s8(vuzp1_s16(v64, *&v57), *&v57).i8[1])
      {
        *(v62 - 3) = v24;
      }

      if (vuzp1_s8(vuzp1_s16(*&v57, vmovn_s64(vcgeq_u64(v57, *&v60))), *&v57).i8[2])
      {
        *(v62 - 2) = v24;
        *(v62 - 1) = v24;
      }

      v65 = vmovn_s64(vcgeq_u64(v57, v59));
      if (vuzp1_s8(*&v57, vuzp1_s16(v65, *&v57)).i32[1])
      {
        *v62 = v24;
      }

      if (vuzp1_s8(*&v57, vuzp1_s16(v65, *&v57)).i8[5])
      {
        v62[1] = v24;
      }

      if (vuzp1_s8(*&v57, vuzp1_s16(*&v57, vmovn_s64(vcgeq_u64(v57, *&v58)))).i8[6])
      {
        v62[2] = v24;
        v62[3] = v24;
      }

      v59 = vaddq_s64(v59, v63);
      v60 = vaddq_s64(v60, v63);
      v61 = vaddq_s64(v61, v63);
      v62 += 8;
      v21 = 1;
      v58 = vaddq_s64(v58, v63);
      v56 -= 8;
    }

    while (v56);
    v19 = v23;
    v23 /= v22;
    goto LABEL_5;
  }

LABEL_35:
  if (v24 > 1275)
  {
    return 4294967292;
  }

  v10[v22 - 1] = v24;
LABEL_63:
  if (a7)
  {
    *a7 = v18 - a1;
  }

  if (v22)
  {
    v48 = v22;
    v49 = a5;
    do
    {
      if (a5)
      {
        *v49 = v18;
      }

      v50 = *v10++;
      v18 += v50;
      ++v49;
      --v48;
    }

    while (v48);
  }

  if (a8)
  {
    *a8 = v20 + v18 - a1;
  }

  if (a4)
  {
    *a4 = v17;
  }

  return v22;
}

unint64_t opus_packet_get_samples_per_frame(_BYTE *a1, int a2)
{
  v2 = *a1;
  if (*a1 < 0)
  {
    v8 = 1374389535 * (a2 << ((*a1 >> 3) & 3));
    return (v8 >> 39) + (v8 >> 63);
  }

  else
  {
    v3 = 1374389535 * (a2 << ((*a1 >> 3) & 3));
    v4 = (v3 >> 37) + (v3 >> 63);
    if (((v2 >> 3) & 3) == 3)
    {
      v5 = 60 * a2 / 1000;
    }

    else
    {
      v5 = v4;
    }

    v6 = a2 / 50;
    if ((v2 & 8) == 0)
    {
      v6 = a2 / 100;
    }

    if ((~v2 & 0x60) != 0)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }
}

uint64_t opus_packet_get_bandwidth(char *a1)
{
  v1 = *a1;
  if ((v1 & 0x10) != 0)
  {
    v2 = 1105;
  }

  else
  {
    v2 = 1104;
  }

  if ((~v1 & 0x60) != 0)
  {
    v3 = (v1 >> 5) + 1101;
  }

  else
  {
    v3 = v2;
  }

  v5 = (v1 >> 5) & 3;
  v4 = v5 == 0;
  v6 = v5 + 1102;
  if (v4)
  {
    v6 = 1101;
  }

  if (*a1 < 0)
  {
    return v6;
  }

  else
  {
    return v3;
  }
}

uint64_t opus_packet_get_nb_channels(_BYTE *a1)
{
  if ((*a1 & 4) != 0)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

unint64_t opus_ifft(unint64_t result, uint64_t a2, uint64_t a3)
{
  v234 = *MEMORY[0x1E69E9840];
  v3 = *(result + 4);
  if (*result >= 1)
  {
    v4 = 0;
    do
    {
      *(a3 + 8 * *(*(result + 40) + 2 * v4)) = *(a2 + 8 * v4);
      ++v4;
    }

    while (v4 < *result);
  }

  v201 = v3 & ~(v3 >> 31);
  v5 = 1;
  v233[0] = 1;
  v6 = (result + 8);
  v202 = result;
  v7 = (result + 10);
  v8 = -1;
  v9 = 1;
  do
  {
    v9 *= *(v7 - 1);
    v233[v5] = v9;
    v10 = *v7;
    v7 += 2;
    ++v5;
    v8 += 2;
  }

  while (v10 != 1);
  v205 = *(v6 + v8);
  v200 = (a3 + 4);
  v11 = v5 - 2;
  v203 = (result + 8);
  do
  {
    v12 = v205;
    if (v11)
    {
      v13 = v11;
      v14 = *(v6 + (2 * v11 - 1));
    }

    else
    {
      v13 = 0;
      v14 = 1;
    }

    v204 = v11;
    v205 = v14;
    v15 = LOWORD(v6[v13]);
    if (v15 > 3)
    {
      v211 = v12;
      if (v15 == 4)
      {
        v151 = v233[v11];
        if (v151 >= 1)
        {
          v152 = 0;
          v153 = (v151 << v201);
          v154 = 8 * v153;
          v155 = 12 * v153;
          v156 = *(v202 + 48) + 2;
          v157 = (24 * v12) | 4;
          v158 = 4 * v153;
          v159 = (16 * v12) | 4;
          v160 = (8 * v12) | 4;
          do
          {
            if (v12 >= 1)
            {
              result = a3 + 8 * v152 * v205;
              v161 = v211;
              v162 = v156;
              v163 = v156;
              v164 = v156;
              do
              {
                v165 = *(v162 - 1);
                v166 = (result + v160);
                v167 = *(result + v160 - 4) >> 16;
                v168 = *(result + v160 - 4);
                v169 = *v162;
                v170 = *(result + v160) >> 16;
                v171 = *(result + v160);
                v172 = ((v171 * v169) >> 15) + ((v168 * v165) >> 15) + 2 * (v167 * v165 + v170 * v169);
                v173 = ((v171 * v165) >> 15) - ((v168 * v169) >> 15) + 2 * (v170 * v165 - v167 * v169);
                v174 = *(v163 - 1);
                v175 = (result + v159);
                v176 = *(result + v159 - 4) >> 16;
                v177 = *(result + v159 - 4);
                v178 = *v163;
                v179 = *(result + v159) >> 16;
                v180 = *(result + v159);
                v181 = ((v180 * v178) >> 15) + ((v177 * v174) >> 15) + 2 * (v176 * v174 + v179 * v178);
                v182 = ((v180 * v174) >> 15) - ((v177 * v178) >> 15) + 2 * (v179 * v174 - v176 * v178);
                v183 = *(v164 - 1);
                v184 = (result + v157);
                v185 = *(result + v157 - 4) >> 16;
                v186 = *(result + v157 - 4);
                v187 = *v164;
                v188 = *(result + v157) >> 16;
                v189 = *(result + v157);
                v190 = ((v189 * v187) >> 15) + ((v186 * v183) >> 15) + 2 * (v185 * v183 + v188 * v187);
                v191 = ((v189 * v183) >> 15) - ((v186 * v187) >> 15) + 2 * (v188 * v183 - v185 * v187);
                v192 = *(result + 4);
                v193 = *result - v181;
                v194 = v192 - v182;
                v195 = *result + v181;
                v196 = v192 + v182;
                v197 = v190 + v172;
                v198 = v172 - v190;
                *(v175 - 1) = v195 - v197;
                *v175 = v196 - (v191 + v173);
                *result = v197 + v195;
                *(result + 4) = v191 + v173 + v196;
                result += 8;
                *(v166 - 1) = v193 - (v173 - v191);
                *v166 = v198 + v194;
                *(v184 - 1) = v173 - v191 + v193;
                *v184 = v194 - v198;
                v164 = (v164 + v155);
                v163 = (v163 + v154);
                v162 = (v162 + v158);
                --v161;
              }

              while (v161);
            }

            ++v152;
            v12 = v211;
          }

          while (v152 != v151);
        }
      }

      else if (v15 == 5)
      {
        v208 = v233[v11];
        if (v208 >= 1)
        {
          v59 = 0;
          v60 = (v208 << v201);
          v61 = *(v202 + 48);
          v62 = v60 * v12;
          v63 = (v61 + 8 * v62);
          v64 = v63[1];
          v65 = (v61 + 4 * v62);
          v66 = v65[1];
          v67 = *v65;
          v223 = *v63;
          v68 = (2 * v223);
          result = (2 * v67);
          v212 = -2 * v64;
          v69 = -2 * v66;
          v70 = 2 * v64;
          v71 = a3 + 32 * v12;
          v206 = (v61 + 2);
          v207 = 8 * v205;
          v72 = a3 + 24 * v12;
          v73 = a3 + 16 * v12;
          v74 = a3;
          v75 = a3 + 8 * v12;
          v230 = 2 * v66;
          v216 = 8 * v60;
          v217 = 4 * v60;
          v214 = 8 * v12;
          v215 = 4 * v60;
          v213 = 12 * v60;
          do
          {
            v210 = v59;
            v76 = v223;
            if (v12 >= 1)
            {
              v77 = 0;
              v78 = v206;
              v79 = v206;
              v80 = v206;
              v81 = v206;
              v221 = v72;
              v222 = v71;
              v219 = v74;
              v220 = v73;
              v218 = v75;
              do
              {
                v227 = (v75 + v77);
                v82 = *(v79 - 1);
                v83 = *(v75 + v77) >> 16;
                v84 = (v71 + v77);
                v85 = (v73 + v77);
                v86 = *(v75 + v77);
                v87 = (v74 + v77);
                v231 = *(v74 + v77);
                v232 = *(v74 + v77 + 4);
                v88 = *v79;
                v89 = ((*(v75 + v77 + 4) * v88) >> 15) + ((v86 * v82) >> 15) + 2 * (v83 * v82 + (*(v75 + v77 + 4) >> 16) * v88);
                v90 = ((*(v75 + v77 + 4) * v82) >> 15) - ((v86 * v88) >> 15) + 2 * ((*(v75 + v77 + 4) >> 16) * v82 - v83 * v88);
                v91 = *(v81 - 1);
                v228 = v85;
                v229 = v81;
                v92 = *v85 >> 16;
                v93 = *v85;
                v94 = *v81;
                v95 = v85[1] >> 16;
                v96 = v85[1];
                v97 = ((v96 * v94) >> 15) + ((v93 * v91) >> 15) + 2 * (v92 * v91 + v95 * v94);
                v98 = ((v96 * v91) >> 15) - ((v93 * v94) >> 15) + 2 * (v95 * v91 - v92 * v94);
                v99 = *(v80 - 1);
                v226 = (v72 + v77);
                v100 = *(v72 + v77) >> 16;
                v101 = *(v72 + v77);
                v102 = *v80;
                LODWORD(v85) = *(v72 + v77 + 4) >> 16;
                v103 = *(v72 + v77 + 4);
                v104 = ((v103 * v102) >> 15) + ((v101 * v99) >> 15) + 2 * (v100 * v99 + v85 * v102);
                v105 = ((v103 * v99) >> 15) - ((v101 * v102) >> 15) + 2 * (v85 * v99 - v100 * v102);
                v106 = *(v78 - 1);
                v225 = v78;
                v224 = v84;
                v107 = *v84 >> 16;
                v108 = *v84;
                v109 = *v78;
                v110 = v84[1] >> 16;
                LODWORD(v85) = v84[1];
                LODWORD(v84) = ((v85 * v109) >> 15) + ((v108 * v106) >> 15) + 2 * (v107 * v106 + v110 * v109);
                v111 = ((v85 * v106) >> 15) - ((v108 * v109) >> 15) + 2 * (v110 * v106 - v107 * v109);
                v112 = v84 + v89;
                LODWORD(v85) = v111 + v90;
                v113 = v89 - v84;
                v114 = v90 - v111;
                LODWORD(v84) = v104 + v97;
                v115 = v105 + v98;
                v116 = v97 - v104;
                v117 = v98 - v105;
                *v87 = v84 + v231 + v112;
                v87[1] = v115 + v232 + v85;
                v118 = v231 + (v84 >> 16) * v68 + ((v84 * v76) >> 15) + (v112 >> 16) * result + ((v112 * v67) >> 15);
                v119 = v232 + (v115 >> 16) * v68 + ((v115 * v76) >> 15) + (v85 >> 16) * result + ((v85 * v67) >> 15);
                v120 = result;
                v121 = v68;
                v122 = v69 * (v114 >> 16) + (v117 >> 16) * v212 - (((v117 * v64) >> 15) + ((v114 * v66) >> 15));
                v123 = v113 >> 16;
                v124 = v70 * (v116 >> 16);
                v125 = v67;
                v126 = v124 + ((v116 * v64) >> 15) + (v113 >> 16) * v230 + ((v113 * v66) >> 15);
                *v227 = v118 - v122;
                v227[1] = v119 - v126;
                v127 = v118 + v122;
                v71 = v222;
                *v224 = v127;
                v224[1] = v119 + v126;
                v76 = v223;
                v128 = v231 + (v84 >> 16) * v120 + ((v84 * v125) >> 15) + (v112 >> 16) * v121 + ((v112 * v223) >> 15);
                v129 = v232 + (v115 >> 16) * v120 + ((v115 * v125) >> 15) + (v85 >> 16) * v121 + ((v85 * v223) >> 15);
                v69 = -2 * v66;
                v130 = ((v114 * v64) >> 15) - ((v117 * v66) >> 15) + 2 * ((v114 >> 16) * v64 - (v117 >> 16) * v66);
                v75 = v218;
                v74 = v219;
                v131 = v113 * v64;
                v72 = v221;
                v132 = (v116 >> 16) * v230 + ((v116 * v66) >> 15) + v123 * v212 - (v131 >> 15);
                *v228 = v130 + v128;
                v228[1] = v132 + v129;
                v68 = v121;
                result = v120;
                v133 = v129 - v132;
                v67 = v125;
                v70 = 2 * v64;
                *v226 = v128 - v130;
                v226[1] = v133;
                v73 = v220;
                v77 += 8;
                v78 = &v225[v216];
                v81 = &v229[v215];
                v80 = (v80 + v213);
                v79 = (v79 + v217);
              }

              while (v214 != v77);
            }

            v12 = v211;
            v59 = v210 + 1;
            v71 += v207;
            v72 += v207;
            v73 += v207;
            v75 += v207;
            v74 += v207;
          }

          while (v210 + 1 != v208);
        }
      }
    }

    else if (v15 == 2)
    {
      v134 = v233[v11];
      if (v134 >= 1)
      {
        v135 = 0;
        v136 = *(v202 + 48) + 2;
        v137 = v200;
        do
        {
          if (v12 >= 1)
          {
            v138 = (a3 + 8 * v135 * v205 + 8 * v12);
            v139 = v136;
            LODWORD(result) = v12;
            v140 = v137;
            do
            {
              v141 = *(v139 - 1);
              v142 = *v138 >> 16;
              v143 = *v138;
              v144 = *v139;
              v145 = v138[1] >> 16;
              v146 = v138[1];
              v147 = ((v146 * v144) >> 15) + ((v143 * v141) >> 15) + 2 * (v142 * v141 + v145 * v144);
              v148 = ((v146 * v141) >> 15) - ((v143 * v144) >> 15) + 2 * (v145 * v141 - v142 * v144);
              v149 = *(v140 - 1);
              v150 = *v140;
              *v138 = v149 - v147;
              v138[1] = v150 - v148;
              v138 += 2;
              *(v140 - 1) = v147 + v149;
              *v140 = v148 + v150;
              v140 += 2;
              v139 += 2 * (v134 << v201);
              result = (result - 1);
            }

            while (result);
          }

          ++v135;
          v137 += 2 * v205;
        }

        while (v135 != v134);
      }
    }

    else if (v15 == 3)
    {
      v16 = v233[v11];
      if (v16 >= 1)
      {
        v17 = 0;
        v18 = (v16 << v201);
        v19 = *(v202 + 48);
        v20 = 8 * v18;
        v21 = -*(v19 + 4 * v18 * v12 + 2);
        v22 = (-65536 * *(v19 + 4 * v18 * v12 + 2)) >> 15;
        v23 = (a3 + 8 * v12);
        v24 = 8 * v205;
        v25 = (v19 + 2);
        v26 = (a3 + 16 * v12);
        v27 = 4 * v18;
        result = v200;
        do
        {
          v28 = result;
          v29 = v25;
          v30 = v26;
          v31 = v25;
          v32 = v23;
          v33 = v12;
          do
          {
            v34 = *(v29 - 1);
            v35 = *v32 >> 16;
            v36 = *v32;
            v37 = *v29;
            v38 = v32[1] >> 16;
            v39 = v32[1];
            v40 = ((v39 * v37) >> 15) + ((v36 * v34) >> 15) + 2 * (v35 * v34 + v38 * v37);
            v41 = ((v39 * v34) >> 15) - ((v36 * v37) >> 15) + 2 * (v38 * v34 - v35 * v37);
            v42 = *(v31 - 1);
            v43 = *v30 >> 16;
            v44 = *v30;
            v45 = *v31;
            v46 = v30[1] >> 16;
            v47 = v30[1];
            v48 = ((v47 * v45) >> 15) + ((v44 * v42) >> 15) + 2 * (v43 * v42 + v46 * v45);
            v49 = ((v47 * v42) >> 15) - ((v44 * v45) >> 15) + 2 * (v46 * v42 - v43 * v45);
            v50 = v49 + v41;
            v51 = v41 - v49;
            v52 = *v28 - (v50 >> 1);
            *v32 = *(v28 - 1) - ((v48 + v40) >> 1);
            v32[1] = v52;
            v53 = ((v40 - v48) >> 16) * v22 + (((v40 - v48) * v21) >> 15);
            v54 = (v51 >> 16) * v22 + ((v51 * v21) >> 15);
            v55 = v48 + v40 + *(v28 - 1);
            v56 = *v28;
            *(v28 - 1) = v55;
            *v28 = v56 + v50;
            v57 = v32[1] - v53;
            *v30 = v54 + *v32;
            v30[1] = v57;
            v30 += 2;
            v58 = v32[1] + v53;
            *v32 -= v54;
            v32[1] = v58;
            v32 += 2;
            v31 = (v31 + v20);
            v29 = (v29 + v27);
            v28 += 2;
            --v33;
          }

          while (v33);
          ++v17;
          v23 = (v23 + v24);
          v26 = (v26 + v24);
          result += v24;
        }

        while (v17 != v16);
      }
    }

    v6 = v203;
    v11 = v204 - 1;
  }

  while (v204 > 0);
  v199 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t compute_allocation(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int *a7, int *a8, int a9, unsigned int *a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15, uint64_t *a16, _BOOL4 a17, int a18, unsigned int a19)
{
  v202 = a8;
  v208 = a7;
  v205 = a5;
  v21 = a2;
  v215 = a1;
  v219 = *MEMORY[0x1E69E9840];
  v217 = *(a1 + 8);
  v212 = a9 > 7;
  v22 = (a9 & ~(a9 >> 31)) - 8 * v212;
  v207 = a4;
  if (a14 == 2)
  {
    v23 = LOG2_FRAC_TABLE[a3 - a2];
    v24 = 8 * (v22 - v23 > 7);
    v25 = v22 - v23 - v24;
    v26 = v22 < v23;
    if (v22 < v23)
    {
      v23 = 0;
    }

    v196 = v23;
    if (v26)
    {
      v27 = 0;
    }

    else
    {
      v27 = v24;
    }

    v198 = v27;
    if (!v26)
    {
      v22 = v25;
    }
  }

  else
  {
    v196 = 0;
    v198 = 0;
  }

  v213 = a16;
  v200 = a13;
  v201 = a12;
  v216 = a11;
  v199 = a10;
  v28 = 4 * v217;
  MEMORY[0x1EEE9AC00](a1);
  v29 = (4 * v217 + 15) & 0xFFFFFFFFFFFFFFF0;
  v218 = &v194 - v29;
  bzero(&v194 - v29, 4 * v217);
  MEMORY[0x1EEE9AC00](v30);
  v210 = &v194 - v29;
  bzero(&v194 - v29, v28);
  MEMORY[0x1EEE9AC00](v31);
  v32 = &v194 - v29;
  bzero(&v194 - v29, v28);
  MEMORY[0x1EEE9AC00](v33);
  v209 = &v194 - v29;
  bzero(&v194 - v29, v28);
  v34 = 8 * a14;
  v214 = &v194 - v29;
  if (v21 >= a3)
  {
    v38 = a3;
    v37 = v21;
    v49 = v205;
    v35 = v215;
    v57 = v218;
    v50 = v207;
    v44 = v209;
  }

  else
  {
    v35 = v215;
    v36 = a6 - a15 - 5;
    v37 = v21;
    v38 = a3;
    v39 = (*(v215 + 24) + 2 * v21);
    v42 = *v39;
    v40 = v39 + 1;
    v41 = v42;
    v43 = &v32[4 * v21];
    v44 = v209;
    v45 = &v209[4 * v21];
    v46 = a14 * v36;
    v47 = v46 * (~v21 + a3);
    v48 = a3 - v21;
    v49 = v205;
    v50 = v207;
    do
    {
      v51 = *v40++;
      v52 = v51 - v41;
      v53 = v51;
      v54 = (8 * ((3 * v52) << a15)) >> 4;
      if (v34 > v54)
      {
        v54 = 8 * a14;
      }

      *v43++ = v54;
      v55 = (v47 * v52) << (a15 + 3) >> 6;
      if (v52 << a15 == 1)
      {
        v56 = 8 * a14;
      }

      else
      {
        v56 = 0;
      }

      *v45 = v55 - v56;
      v45 += 4;
      v47 -= v46;
      v41 = v53;
      --v48;
    }

    while (v48);
    v57 = v218;
  }

  v206 = a19;
  v195 = 8 * v212;
  v58 = *(v35 + 44);
  v59 = v58 - 1;
  v60 = v44 - 4;
  LODWORD(v209) = a18;
  v212 = a17;
  v61 = v214 - 4;
  v62 = v49 - 4;
  v63 = 1;
  v204 = v38;
  v218 = v21;
  do
  {
    while (1)
    {
      v64 = (v63 + v59) >> 1;
      if (v21 < a3)
      {
        break;
      }

      if (v22 >= 0)
      {
        v63 = v64 + 1;
      }

      else
      {
        v59 = v64 - 1;
      }

      if (v63 > v59)
      {
        v87 = v21;
        goto LABEL_57;
      }
    }

    v65 = v44;
    v66 = 0;
    v67 = 0;
    v68 = *(v35 + 24);
    LOWORD(v69) = *(v68 + 2 * v38);
    v70 = v68 - 2;
    v71 = v38;
    do
    {
      v72 = v69;
      v69 = *(v70 + 2 * v71);
      v73 = ((v72 - v69) * a14 * *(*(v35 + 48) + v217 * v64 - 1 + v71)) << a15 >> 2;
      if (v73 >= 1)
      {
        v73 = (*&v60[4 * v71] + v73) & ~((*&v60[4 * v71] + v73) >> 31);
      }

      v74 = *(v50 - 4 + 4 * v71) + v73;
      if (v67 || v74 >= *&v61[4 * v71])
      {
        if (v74 >= *(v62 + 4 * v71))
        {
          v74 = *(v62 + 4 * v71);
        }

        v67 = 1;
      }

      else
      {
        v67 = 0;
        if (v74 >= v34)
        {
          v74 = 8 * a14;
        }

        else
        {
          v74 = 0;
        }
      }

      --v71;
      v66 += v74;
    }

    while (v71 > v37);
    if (v66 <= v22)
    {
      v63 = v64 + 1;
    }

    else
    {
      v59 = v64 - 1;
    }

    v44 = v65;
  }

  while (v63 <= v59);
  v75 = 0;
  v76 = (*(v35 + 24) + 2 * v37);
  v77 = *(v35 + 48) + v37;
  v78 = v77 + v63 * v217;
  v79 = v77 + (v63 - 1) * v217;
  v82 = *v76;
  v81 = v76 + 1;
  v80 = v82;
  v83 = v49 + 4 * v37;
  v84 = &v65[4 * v37];
  v85 = v50 + 4 * v37;
  v86 = v37 - v38;
  v87 = v21;
  v88 = (v210 + 4 * v37);
  do
  {
    v89 = (v81[v75] - v80) * a14;
    if (v63 >= v58)
    {
      v90 = *(v83 + 4 * v75);
    }

    else
    {
      v90 = (v89 * *(v78 + v75)) << a15 >> 2;
    }

    v91 = (v89 * *(v79 + v75)) << a15 >> 2;
    if (v91 >= 1)
    {
      v91 = (*&v84[4 * v75] + v91) & ~((*&v84[4 * v75] + v91) >> 31);
    }

    if (v90 >= 1)
    {
      v90 = (*&v84[4 * v75] + v90) & ~((*&v84[4 * v75] + v90) >> 31);
    }

    v80 = v81[v75];
    v92 = *(v85 + 4 * v75);
    if (v63 <= 1)
    {
      v93 = 0;
    }

    else
    {
      v93 = *(v85 + 4 * v75);
    }

    v94 = v91 + v93;
    if (v92 > 0)
    {
      v87 = v37 + v75;
    }

    *&v57[4 * v37 + 4 * v75] = v94;
    *&v88[4 * v75++] = (v90 - v94 + v92) & ~((v90 - v94 + v92) >> 31);
    LODWORD(v21) = v218;
  }

  while (v86 + v75);
LABEL_57:
  v95 = 0;
  v96 = 0;
  v197 = a14 > 1;
  v97 = (v210 - 4);
  v98 = v57 - 4;
  v99 = 64;
  v100 = v216;
  do
  {
    while (v21 >= a3)
    {
      if (v22 < 0)
      {
        v99 = (v96 + v99) >> 1;
      }

      else
      {
        v96 = (v96 + v99) >> 1;
      }

      if (++v95 == 6)
      {
        v105 = 0;
        goto LABEL_87;
      }
    }

    v101 = 0;
    v102 = 0;
    v103 = v204;
    do
    {
      v104 = *&v98[4 * v103] + ((*&v97[4 * v103] * ((v96 + v99) >> 1)) >> 6);
      if (v102 || v104 >= *&v61[4 * v103])
      {
        if (v104 >= *(v62 + 4 * v103))
        {
          v104 = *(v62 + 4 * v103);
        }

        v102 = 1;
      }

      else
      {
        v102 = 0;
        if (v104 >= v34)
        {
          v104 = 8 * a14;
        }

        else
        {
          v104 = 0;
        }
      }

      --v103;
      v101 += v104;
    }

    while (v103 > v37);
    if (v101 > v22)
    {
      v99 = (v96 + v99) >> 1;
    }

    else
    {
      v96 = (v96 + v99) >> 1;
    }

    ++v95;
  }

  while (v95 != 6);
  v105 = 0;
  v106 = 0;
  v107 = v204;
  do
  {
    v108 = *&v98[4 * v107] + ((*&v97[4 * v107] * v96) >> 6);
    v106 |= v108 >= *&v61[4 * v107];
    if (v108 >= v34)
    {
      v109 = 8 * a14;
    }

    else
    {
      v109 = 0;
    }

    if ((v106 & 1) == 0)
    {
      v108 = v109;
    }

    if (v108 >= *(v62 + 4 * v107))
    {
      v108 = *(v62 + 4 * v107);
    }

    *(v100 - 4 + 4 * v107) = v108;
    v105 += v108;
    --v107;
  }

  while (v107 > v37);
LABEL_87:
  v203 = a3;
  if (a3 - 1 <= v87)
  {
    v110 = a3;
    v127 = v196;
LABEL_111:
    v129 = v22 + v195;
LABEL_112:
    v130 = v202;
    if (v127 > 0)
    {
      if (!v212)
      {
        goto LABEL_119;
      }

      v131 = v208;
      v132 = *v208;
      if (*v208 >= v110)
      {
        v132 = v110;
      }

      *v208 = v132;
      v133 = v218;
      ec_enc_uint(v213, v132 - v218, v110 - v218 + 1);
      v35 = v215;
      v100 = v216;
      v134 = *v131;
LABEL_127:
      if (v134 <= v133)
      {
        v137 = v198;
      }

      else
      {
        v137 = 0;
      }

      if (v198 && v134 > v133)
      {
        v138 = v197;
        if (!v212)
        {
          goto LABEL_134;
        }

        ec_enc_bit_logp(v213, *v130, 1);
        v35 = v215;
        v100 = v216;
        goto LABEL_138;
      }

LABEL_136:
      v138 = v197;
      goto LABEL_137;
    }

LABEL_126:
    v134 = 0;
    *v208 = 0;
    v133 = v218;
    goto LABEL_127;
  }

  LODWORD(v207) = v21 + 2;
  v110 = a3;
  v111 = a3 - 1;
  v206 = v206;
  v112 = v87;
  v217 = &LOG2_FRAC_TABLE[-v37];
  v113 = v196;
  v114 = v214;
  v210 = v87;
  v211 = v22;
  while (1)
  {
    v115 = *(v35 + 24);
    v116 = *(v115 + 2 * v110);
    v117 = *(v115 + 2 * v37);
    v118 = (v22 - v105) / (v116 - v117);
    LODWORD(v115) = *(v115 + 2 * v111);
    v119 = v22 - v105 + v117 - (v115 + (v116 - v117) * v118);
    v120 = v119 & ~(v119 >> 31);
    v121 = v116 - v115;
    v122 = *(v100 + 4 * v111);
    v123 = v122 + v121 * v118 + v120;
    v124 = *&v114[4 * v111];
    if (v124 <= v34 + 8)
    {
      v124 = v34 + 8;
    }

    if (v123 < v124)
    {
      goto LABEL_102;
    }

    if (v212)
    {
      v125 = v113;
      if (v110 <= v207 || (v110 <= v209 ? (v126 = 7) : (v126 = 9), v111 <= v206 && v123 > (8 * ((v121 * v126) << a15)) >> 4))
      {
        ec_enc_bit_logp(v213, 1, 1);
        v35 = v215;
        v100 = v216;
        v127 = v125;
        v129 = v211;
        goto LABEL_112;
      }

      ec_enc_bit_logp(v213, 0, 1);
      goto LABEL_101;
    }

    v125 = v113;
    if (ec_dec_bit_logp(v213, 1))
    {
      break;
    }

LABEL_101:
    v105 += 8;
    v123 -= 8;
    v35 = v215;
    v100 = v216;
    v122 = *(v216 + 4 * v111);
    v113 = v125;
    v22 = v211;
    v114 = v214;
    v112 = v210;
LABEL_102:
    if (v113)
    {
      v127 = v217[v111];
    }

    else
    {
      v127 = 0;
    }

    if (v123 >= v34)
    {
      v128 = 8 * a14;
    }

    else
    {
      v128 = 0;
    }

    v105 = v105 - v113 - v122 + v127 + v128;
    *(v100 + 4 * v111--) = v128;
    v110 = (v110 - 1);
    v113 = v127;
    if (v111 <= v112)
    {
      goto LABEL_111;
    }
  }

  v26 = v125 <= 0;
  v130 = v202;
  v35 = v215;
  v100 = v216;
  v129 = v211;
  if (v26)
  {
    goto LABEL_126;
  }

LABEL_119:
  v135 = v218;
  v136 = ec_dec_uint(v213, v110 - v218 + 1);
  *v208 = v136 + v135;
  if (v136 + v135 <= v135)
  {
    v137 = v198;
  }

  else
  {
    v137 = 0;
  }

  if (!v198)
  {
    v35 = v215;
    v100 = v216;
    goto LABEL_136;
  }

  v26 = v136 + v135 <= v135;
  v35 = v215;
  v100 = v216;
  v138 = v197;
  if (!v26)
  {
LABEL_134:
    v139 = ec_dec_bit_logp(v213, 1);
    v35 = v215;
    v100 = v216;
    *v130 = v139;
    goto LABEL_138;
  }

LABEL_137:
  *v130 = 0;
LABEL_138:
  if (v110 > v218)
  {
    v140 = v129 - v105 + v137;
    v141 = *(v35 + 24);
    v142 = *(v141 + 2 * v37);
    v143 = *(v141 + 2 * v110) - v142;
    v144 = v140 / v143;
    v145 = v140 % v143;
    v146 = (v100 + 4 * v37);
    v147 = v141 + 2 * v37;
    v148 = v110 - v37;
    v149 = (v147 + 2);
    v150 = v148;
    v151 = v146;
    v152 = v142;
    do
    {
      v153 = *v149++;
      *v151++ += (v153 - v152) * v144;
      v152 = v153;
      --v150;
    }

    while (v150);
    v154 = (v147 + 2);
    v155 = v142;
    v156 = v205;
    v158 = v200;
    v157 = v201;
    do
    {
      v159 = *v154++;
      v160 = v159 - v155;
      v161 = v159;
      if (v145 < v160)
      {
        v160 = v145;
      }

      *v146++ += v160;
      v145 -= v160;
      v155 = v161;
      --v148;
    }

    while (v148);
    v162 = 0;
    if (a14 <= 1)
    {
      v163 = 3;
    }

    else
    {
      v163 = 4;
    }

    v164 = v141 + 2;
    while (1)
    {
      v165 = *(v164 + 2 * v37);
      v166 = (v165 - v142) << a15;
      v167 = *(v100 + 4 * v37) + v162;
      if (v166 < 2)
      {
        v171 = (v167 - v34) & ~((v167 - v34) >> 31);
        if (v167 >= v34)
        {
          v167 = 8 * a14;
        }

        *(v100 + 4 * v37) = v167;
        *(v157 + 4 * v37) = 0;
        *(v158 + 4 * v37) = 1;
        if (v171)
        {
LABEL_159:
          v172 = v171 >> v163;
          v173 = *(v157 + 4 * v37);
          if ((v171 >> v163) >= 8 - v173)
          {
            v172 = 8 - v173;
          }

          *(v157 + 4 * v37) = v172 + v173;
          v174 = v172 * v34;
          *(v158 + 4 * v37) = v174 >= (v171 - v162);
          v162 = v171 - v174;
          goto LABEL_176;
        }
      }

      else
      {
        v168 = 0;
        v169 = *(v156 + 4 * v37);
        v170 = v167 - v169;
        if (v167 >= v169)
        {
          v167 = *(v156 + 4 * v37);
        }

        *(v100 + 4 * v37) = v167;
        if (a14 == 2 && v166 != 2)
        {
          if (*v130)
          {
            v168 = 0;
          }

          else
          {
            v168 = v37 < *v208;
          }
        }

        v175 = v168 + v166 * a14;
        v176 = (8 * a15 + *(*(v35 + 56) + 2 * v37)) * v175;
        v177 = 8 * v175;
        if (v166 == 2)
        {
          v178 = (8 * v175) >> 2;
        }

        else
        {
          v178 = 0;
        }

        v179 = v178 - 21 * v175 + (v176 >> 1);
        v180 = v179 + v167;
        v181 = v179 + (v176 >> 3);
        if (v179 + v167 >= 24 * v175)
        {
          v181 = v179;
        }

        v182 = v179 + (v176 >> 2);
        if (v180 >= 16 * v175)
        {
          v182 = v181;
        }

        v183 = ((v167 + 4 * v175 + v182) / v177) & ~(((v167 + 4 * v175 + v182) / v177) >> 31);
        *(v157 + 4 * v37) = v183;
        v100 = v216;
        v184 = *(v216 + 4 * v37);
        if (v183 * a14 > v184 >> 3)
        {
          v183 = v184 >> v138 >> 3;
        }

        if (v183 >= 8)
        {
          v183 = 8;
        }

        *(v157 + 4 * v37) = v183;
        *(v158 + 4 * v37) = v183 * v177 >= *(v100 + 4 * v37) + v182;
        v171 = v170 & ~(v170 >> 31);
        *(v100 + 4 * v37) -= *(v157 + 4 * v37) * v34;
        if (v171)
        {
          goto LABEL_159;
        }
      }

      v162 = 0;
LABEL_176:
      ++v37;
      v142 = v165;
      if (v110 == v37)
      {
        v185 = v110;
        goto LABEL_179;
      }
    }
  }

  v162 = 0;
  v158 = v200;
  v157 = v201;
  v185 = v218;
LABEL_179:
  v186 = v203;
  *v199 = v162;
  if (v185 < v186)
  {
    v187 = v204 - v185;
    v188 = (v158 + 4 * v185);
    v189 = (v157 + 4 * v185);
    v190 = (v100 + 4 * v185);
    do
    {
      *v189 = *v190 >> v138 >> 3;
      *v190++ = 0;
      v191 = *v189++;
      *v188++ = v191 < 1;
      --v187;
    }

    while (v187);
  }

  v192 = *MEMORY[0x1E69E9840];
  return v110;
}

unint64_t clt_mdct_backward(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v68 = a5;
  v70 = *MEMORY[0x1E69E9840];
  v13 = *a1 >> a6;
  v14 = v13 >> 2;
  v69 = v13 >> 1;
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v67 - v15;
  bzero(&v67 - v15, v17);
  v18 = ((v13 >> 1) + 25736) / v13;
  v19 = v18;
  v20 = 2 * v18;
  if (v14 >= 1)
  {
    v21 = 0;
    v22 = &a2[(v69 - 1) * a7];
    v23 = v18 << 16;
    v24 = *(a1 + 40);
    v25 = -(v23 >> 15);
    v26 = v14;
    v27 = v16;
    do
    {
      v28 = *(v24 + 2 * (v21 << a6));
      v29 = *v22 >> 16;
      v30 = *v22;
      v31 = *(v24 + 2 * (v26 << a6));
      v32 = *a2 >> 16;
      v33 = *a2;
      v34 = 2 * v31 * v32 - (2 * v29 * v28 + ((v30 * v28) >> 15)) + ((v33 * v31) >> 15);
      v35 = ((v33 * v28) >> 15) + ((v30 * v31) >> 15) + 2 * (v29 * v31 + v32 * v28);
      ++v21;
      *v27 = v34 + v25 * (-v35 >> 16) - ((-v35 * v19) >> 15);
      v27[1] = v20 * (v34 >> 16) - v35 + ((v34 * v19) >> 15);
      v27 += 2;
      a2 += 2 * a7;
      v22 -= 2 * a7;
      --v26;
    }

    while (v26);
  }

  v36 = v68;
  v37 = (a3 + 4 * (v68 >> 1));
  result = opus_ifft(*(a1 + 8 * a6 + 8), v16, v37);
  v39 = (v14 + 1) >> 1;
  if (v39 >= 1)
  {
    v40 = 0;
    v41 = *(a1 + 40);
    v42 = (4 * v69 + 4 * (v36 >> 1) + a3 - 4);
    do
    {
      v43 = *(v41 + 2 * (v40 << a6));
      v44 = *(v41 + 2 * (v14 << a6));
      v45 = *v37 >> 16;
      v46 = *v37;
      v47 = v37[1] >> 16;
      v48 = v37[1];
      v49 = ((v46 * v43) >> 15) - ((v48 * v44) >> 15) + 2 * (v45 * v43 - v47 * v44);
      v50 = ((v46 * v44) >> 15) + ((v48 * v43) >> 15) + 2 * (v47 * v43 + v45 * v44);
      v51 = *(v42 - 1);
      v52 = *v42;
      *v37 = v20 * (v50 >> 16) - v49 + ((v50 * v19) >> 15);
      v53 = v49 * v19;
      v54 = v50 + v20 * (v49 >> 16);
      v55 = *(v41 + 2 * (--v14 << a6));
      v56 = *(v41 + 2 * (++v40 << a6));
      v57 = v52;
      v52 >>= 16;
      result = (((v51 * v55) >> 15) - ((v57 * v56) >> 15) + 2 * ((v51 >> 16) * v55 - v52 * v56));
      v58 = ((v51 * v56) >> 15) + ((v57 * v55) >> 15) + 2 * (v52 * v55 + (v51 >> 16) * v56);
      *(v42 - 1) = v20 * (v58 >> 16) - result + ((v58 * v19) >> 15);
      *v42 = v54 + (v53 >> 15);
      v37[1] = v58 + v20 * (result >> 16) + ((result * v19) >> 15);
      v37 += 2;
      v42 -= 2;
    }

    while (v39 != v40);
  }

  if (v36 > 1)
  {
    v59 = 0;
    v60 = v36 - 1;
    do
    {
      v61 = *(a4 + 2 * v60);
      v62 = *(a3 + 4 * v59) >> 16;
      v63 = *(a3 + 4 * v59);
      v64 = *(a4 + 2 * v59);
      result = (*(a3 + 4 * v60) >> 16);
      v65 = *(a3 + 4 * v60);
      *(a3 + 4 * v59) = ((v63 * v61) >> 15) - ((v65 * v64) >> 15) + 2 * (v62 * v61 - result * v64);
      *(a3 + 4 * v60) = ((v63 * v64) >> 15) + ((v65 * v61) >> 15) + 2 * (result * v61 + v62 * v64);
      ++v59;
      --v60;
    }

    while (v36 / 2 != v59);
  }

  v66 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t *encode_pulses(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  v4 = a2;
  v5 = *(a1 + 4 * a2 - 4);
  v6 = v5 >> 31;
  if (v5 >= 0)
  {
    v7 = *(a1 + 4 * a2 - 4);
  }

  else
  {
    v7 = -v5;
  }

  v8 = 2;
  do
  {
    if (v8 >= v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    v10 = *(&CELT_PVQ_U_ROW + v9);
    if (v8 <= v7)
    {
      v11 = v7;
    }

    else
    {
      v11 = v8;
    }

    v6 += *(v10 + 4 * v11);
    v12 = *(a1 - 8 + 4 * v4);
    if (v12 >= 0)
    {
      v13 = *(a1 - 8 + 4 * v4);
    }

    else
    {
      v13 = -v12;
    }

    v7 += v13;
    if (v12 < 0)
    {
      if (v8 > v7)
      {
        v14 = v7 + 1;
      }

      else
      {
        v14 = v8;
      }

      v15 = *(&CELT_PVQ_U_ROW + v14);
      if (v8 <= v7 + 1)
      {
        v16 = v7 + 1;
      }

      else
      {
        v16 = v8;
      }

      v6 += *(v15 + 4 * v16);
    }

    --v4;
    ++v8;
  }

  while (v4 > 1);
  if (a2 >= a3)
  {
    v17 = a3;
  }

  else
  {
    v17 = a2;
  }

  v18 = *(&CELT_PVQ_U_ROW + v17);
  if (a2 <= a3)
  {
    v19 = a3;
  }

  else
  {
    v19 = a2;
  }

  v20 = *(v18 + 4 * v19);
  if (a3 + 1 < a2)
  {
    v21 = a3 + 1;
  }

  else
  {
    v21 = a2;
  }

  v22 = *(&CELT_PVQ_U_ROW + v21);
  if (a3 + 1 > a2)
  {
    v23 = a3 + 1;
  }

  else
  {
    v23 = a2;
  }

  return ec_enc_uint(a4, v6, *(v22 + 4 * v23) + v20);
}

uint64_t decode_pulses(int *a1, int a2, int a3, uint64_t a4)
{
  v4 = a3;
  if (a2 >= a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = a2;
  }

  v8 = *(&CELT_PVQ_U_ROW + v7);
  if (a2 <= a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = a2;
  }

  v10 = *(v8 + 4 * v9);
  if (a3 + 1 < a2)
  {
    v11 = a3 + 1;
  }

  else
  {
    v11 = a2;
  }

  v12 = *(&CELT_PVQ_U_ROW + v11);
  if (a3 + 1 > a2)
  {
    v13 = a3 + 1;
  }

  else
  {
    v13 = a2;
  }

  result = ec_dec_uint(a4, *(v12 + 4 * v13) + v10);
  if (a2 >= 3)
  {
    v15 = a2;
    do
    {
      if (v15 <= v4)
      {
        v27 = *(&CELT_PVQ_U_ROW + v15);
        v28 = *(v27 + 4 * v4 + 4);
        if (result >= v28)
        {
          v29 = *(v27 + 4 * v4 + 4);
        }

        else
        {
          v29 = 0;
        }

        v30 = result - v29;
        if (*(v27 + 4 * v15) <= v30)
        {
          v35 = v4;
          v31 = v4 + 1;
          do
          {
            v33 = *(v27 + 4 * v35);
            v35 = v31 - 2;
            --v31;
          }

          while (v33 > v30);
        }

        else
        {
          v31 = v15;
          do
          {
            v32 = &CELT_PVQ_U_ROW + v31--;
            v33 = *(*(v32 - 1) + v15);
          }

          while (v33 > v30);
        }

        v19 = result >= v28;
        result = v30 - v33;
        v34 = v4 - v31;
        if (v19)
        {
          v34 = v31 - v4;
        }

        v4 = v31;
      }

      else
      {
        v16 = &CELT_PVQ_U_ROW + v4;
        v17 = *(*v16 + v15);
        v18 = *(v16[1] + v15);
        v19 = result < v17 || result >= v18;
        if (v19)
        {
          v20 = 0;
          if (result >= v18)
          {
            v21 = *(v16[1] + v15);
          }

          else
          {
            v21 = 0;
          }

          v22 = result - v21;
          v23 = (v16 - 1);
          do
          {
            v24 = *v23--;
            v25 = *(v24 + 4 * v15);
            ++v20;
            v19 = v22 >= v25;
            v26 = v22 - v25;
          }

          while (!v19);
          v4 -= v20;
          if (result < v18)
          {
            v34 = v20;
          }

          else
          {
            v34 = -v20;
          }

          result = v26;
        }

        else
        {
          v34 = 0;
          result = result - v17;
        }
      }

      *a1++ = v34;
    }

    while (v15-- > 3);
  }

  if (result > 2 * v4)
  {
    v37 = ~(2 * v4);
  }

  else
  {
    v37 = 0;
  }

  v38 = v37 + result;
  v39 = v38 + 1;
  v40 = v4 - ((v38 + 1) >> 1);
  if (result > 2 * v4)
  {
    v40 = ((v38 + 1) >> 1) - v4;
  }

  v41 = ((v38 + 1) & 0xFFFFFFFE) - 1;
  v19 = v39 >= 2;
  v42 = v39 >> 1;
  if (!v19)
  {
    v41 = 0;
  }

  *a1 = v40;
  a1[1] = (v42 - (v38 - v41)) ^ (v41 - v38);
  return result;
}

void *opus_custom_mode_create(int a1, int a2, int *a3)
{
  v3 = 0;
  while (a1 != 48000 || a2 << v3 != 960)
  {
    if (++v3 == 4)
    {
      result = 0;
      if (!a3)
      {
        return result;
      }

      v5 = -1;
      goto LABEL_9;
    }
  }

  result = &mode48000_960_120;
  if (!a3)
  {
    return result;
  }

  v5 = 0;
LABEL_9:
  *a3 = v5;
  return result;
}

uint64_t celt_decoder_init(void *a1, int a2, unsigned int a3)
{
  v6 = opus_custom_mode_create(48000, 960, 0);
  if (a3 > 2)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a1)
  {
    return 4294967289;
  }

  v8 = v6;
  v9 = vadd_s32(vshl_u32(*(v6 + 4), 0x400000002), 0x5400002030);
  bzero(a1, (v9.i32[1] + v9.i32[0] * a3));
  *a1 = v8;
  *(a1 + 2) = *(v8 + 1);
  *(a1 + 3) = a3;
  *(a1 + 4) = a3;
  *(a1 + 20) = 1;
  *(a1 + 7) = *(v8 + 3);
  a1[4] = 1;
  *(a1 + 13) = 0;
  opus_custom_decoder_ctl(a1, 4028, v10, v11, v12, v13, v14, v15, v17);
  v16 = resampling_factor(a2);
  *(a1 + 5) = v16;
  if (v16)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t celt_decode_with_ec(int32x2_t *a1, unsigned __int8 *a2, unsigned int a3, _WORD *a4, int a5, uint64_t *a6)
{
  v8 = a1;
  v9 = 0;
  v250[2] = *MEMORY[0x1E69E9840];
  v248 = 0;
  memset(v247, 0, sizeof(v247));
  v250[0] = 0;
  v250[1] = 0;
  v249[0] = 0;
  v249[1] = 0;
  v246 = 0;
  v10 = a1[1].i32[1];
  v239 = a1[2].i32[0];
  v11 = *a1;
  v12 = *(*a1 + 4);
  v13 = *(*a1 + 8);
  v14 = *(*a1 + 24);
  v16 = v12 + 2048;
  if (v10 <= 1)
  {
    v17 = 1;
  }

  else
  {
    v17 = v10;
  }

  v18 = a1[2].i32[1];
  v19 = &a1[10] + 1;
  do
  {
    v250[v9++] = v19;
    v19 += v16;
  }

  while (v17 != v9);
  v20 = v11[8];
  if ((v20 & 0x80000000) != 0)
  {
LABEL_10:
    result = 0xFFFFFFFFLL;
  }

  else
  {
    v234 = v17;
    v21 = 0;
    v22 = (v18 * a5);
    v15 = &a1[10] + 1;
    v23 = &a1[6 * v10 + 10] + 2 * v16 * v10 + 2;
    v24 = 2 * v13;
    v25 = 16;
    v26 = &tf_select_table;
    while (v11[10] << v21 != v22)
    {
      ++v21;
      v25 += 8;
      v26 += 8;
      if (v20 + 1 == v21)
      {
        goto LABEL_10;
      }
    }

    result = 0xFFFFFFFFLL;
    if (a3 <= 0x4FB && a4)
    {
      v29 = v8[3].i32[1];
      if (v29 >= v11[3])
      {
        v29 = v11[3];
      }

      if (!a2 || a3 <= 1)
      {
        celt_decode_lost(v8, a4, v22, v21);
        goto LABEL_194;
      }

      v221 = v29;
      v216 = v16 * v10;
      v245 = 0;
      v215 = 24 * v10;
      v214 = 2 * v13;
      v231 = &v15[v216 + v215 / 2];
      v219 = &v23[v24];
      v218 = &v219[v24];
      v241 = v12;
      v233 = v14;
      LODWORD(v235) = a3;
      if (!a6)
      {
        a6 = v247;
        ec_dec_init(v247, a2, a3);
        a3 = v235;
        v23 = v231;
      }

      v31 = v239 == 1 && v13 > 0;
      v213 = v31;
      if (v31)
      {
        v32 = 0;
        v33 = v23;
        do
        {
          v34 = *v33;
          if (v34 <= v33[v13])
          {
            LOWORD(v34) = v33[v13];
          }

          *v33++ = v34;
          v32 += 2;
        }

        while (2 * v13 != v32);
      }

      v35 = 8 * a3;
      v36 = __clz(*(a6 + 8));
      v37 = *(a6 + 6) + v36 - 32;
      v230 = 8 * a3;
      v217 = a4;
      if (v37 < (8 * a3))
      {
        if (v37 != 1)
        {
          v208 = 1;
          goto LABEL_39;
        }

        if (!ec_dec_bit_logp(a6, 15))
        {
          v37 = 1;
          v208 = 1;
          v35 = v230;
          goto LABEL_39;
        }

        v36 = __clz(*(a6 + 8));
        v35 = v230;
      }

      v208 = 0;
      *(a6 + 6) = v35 - v36 + 32;
      v37 = v35;
LABEL_39:
      v38 = 0;
      v39 = v8[3].i32[0];
      v243 = a6;
      v227 = v13;
      if (v39)
      {
        v40 = 0;
        v41 = 0;
      }

      else
      {
        v40 = 0;
        v41 = 0;
        if (v37 + 16 <= v35)
        {
          v41 = ec_dec_bit_logp(a6, 1);
          if (v41)
          {
            v42 = ec_dec_uint(a6, 6u);
            a6 = v243;
            v38 = ec_dec_bits(v243, v42 + 4) + (16 << v42) - 1;
            v43 = ec_dec_bits(v243, 3u);
            v35 = v230;
            if ((*(a6 + 6) + __clz(*(a6 + 8)) - 30) <= v230)
            {
              v41 = ec_dec_icdf(v243, tapset_icdf, 2);
              v35 = v230;
            }

            else
            {
              v41 = 0;
            }

            v40 = 3072 * v43 + 3072;
          }

          else
          {
            v38 = 0;
            v40 = 0;
            v35 = v230;
          }

          v37 = *(a6 + 6) + __clz(*(a6 + 8)) - 32;
        }
      }

      v226 = v40;
      v237 = v41;
      v238 = v38;
      v44 = 0;
      v45 = 1 << v21;
      v46 = v37 + 3;
      if (v21 && v46 <= v35)
      {
        v47 = ec_dec_bit_logp(a6, 3);
        v45 = 1 << v21;
        v35 = v230;
        v44 = v47;
        v46 = *(a6 + 6) + __clz(*(a6 + 8)) - 29;
      }

      v48 = 0;
      v222 = v45;
      if (v44)
      {
        v49 = v45;
      }

      else
      {
        v49 = 0;
      }

      v225 = v49;
      if (v46 <= v35)
      {
        v48 = ec_dec_bit_logp(a6, 3);
      }

      v240 = v22;
      v229 = v10;
      v50 = v8[3].i32[0];
      v51 = v8[3].i32[1];
      v242 = v11;
      v52 = unquant_coarse_energy(v11, v50, v51, v231, v48, a6, v239, v21);
      MEMORY[0x1EEE9AC00](v52);
      v54 = &v207[-((v53 + 15) & 0xFFFFFFFFFFFFFFF0)];
      v224 = v53;
      bzero(v54, v53);
      v56 = v8[3].i32[0];
      v57 = v8[3].i32[1];
      v236 = v8;
      v58 = 8 * *(a6 + 2);
      v59 = *(a6 + 6) + __clz(*(a6 + 8)) - 32;
      if (v44)
      {
        v60 = 2;
      }

      else
      {
        v60 = 4;
      }

      if (v21)
      {
        v61 = v59 + v60 + 1 > v58;
      }

      else
      {
        v61 = 1;
      }

      v62 = !v61;
      v228 = v44;
      v220 = v54;
      v244 = v56;
      v232 = v57;
      v223 = v62;
      v63 = 0;
      if (v56 < v57)
      {
        v64 = 0;
        v65 = v58 - v62;
        if (v44)
        {
          v66 = 4;
        }

        else
        {
          v66 = 5;
        }

        v67 = v57 - v56;
        v68 = &v54[4 * v56];
        do
        {
          if (v60 + v59 <= v65)
          {
            v55 = ec_dec_bit_logp(a6, v60);
            v64 ^= v55;
            v59 = *(a6 + 6) + __clz(*(a6 + 8)) - 32;
            v63 |= v64;
          }

          *v68++ = v64;
          v60 = v66;
          --v67;
        }

        while (v67);
      }

      v69 = v240;
      v70 = v223;
      if (v223)
      {
        v71 = v228;
        v72 = v26[v63 + (4 * v228)] == v26[4 * v228 + 2 + v63];
        v73 = v236;
        v74 = v242;
        v75 = v224;
        if (v72)
        {
          v70 = 0;
        }

        else
        {
          v55 = ec_dec_bit_logp(v243, 1);
          v70 = 2 * v55;
        }

        v76 = v230;
      }

      else
      {
        v73 = v236;
        v74 = v242;
        v76 = v230;
        v71 = v228;
        v75 = v224;
      }

      if (v244 < v232)
      {
        v77 = v70 + 4 * v71;
        v78 = v232 - v244;
        v79 = &v220[4 * v244];
        do
        {
          *v79 = v26[*v79 + v77];
          ++v79;
          --v78;
        }

        while (v78);
      }

      v80 = v243;
      if ((*(v243 + 6) + __clz(*(v243 + 8)) - 28) <= v76)
      {
        v55 = ec_dec_icdf(v243, spread_icdf, 5);
        v212 = v55;
      }

      else
      {
        v212 = 2;
      }

      MEMORY[0x1EEE9AC00](v55);
      v81 = (v75 + 15) & 0xFFFFFFFFFFFFFFF0;
      bzero(&v207[-v81], v75);
      v244 = &v207[-v81];
      inited = init_caps(v74, &v207[-v81], v21, v239);
      MEMORY[0x1EEE9AC00](inited);
      v211 = v81;
      v83 = &v207[-v81];
      bzero(&v207[-v81], v75);
      v84 = v235 << 6;
      v85 = ec_tell_frac(v80);
      v86 = v85;
      v87 = v73[3].i32[1];
      v88 = v73[3].i32[0];
      v223 = v84;
      v232 = v83;
      if (v88 < v87)
      {
        v89 = 6;
        v90 = v239;
        v91 = v233;
        do
        {
          v92 = v88 + 1;
          v93 = ((*(v91 + 2 * (v88 + 1)) - *(v91 + 2 * v88)) * v90) << v21;
          v94 = 8 * v93;
          if (v93 <= 48)
          {
            v93 = 48;
          }

          if (v94 >= v93)
          {
            v95 = v93;
          }

          else
          {
            v95 = v94;
          }

          if (v86 + 8 * v89 >= v84)
          {
            *&v83[4 * v88] = 0;
          }

          else
          {
            if (*(v244 + 4 * v88) < 1)
            {
              v97 = 0;
            }

            else
            {
              v96 = 0;
              LODWORD(v235) = v89;
              while (1)
              {
                v97 = v96;
                v98 = v243;
                v99 = ec_dec_bit_logp(v243, v89);
                v85 = ec_tell_frac(v98);
                v86 = v85;
                if (!v99)
                {
                  break;
                }

                v100 = v84 - v95;
                if (v85 + 8 < v84 - v95)
                {
                  v96 = v97 + v95;
                  LOBYTE(v89) = 1;
                  v84 -= v95;
                  if (v97 + v95 < *(v244 + 4 * v88))
                  {
                    continue;
                  }
                }

                v97 += v95;
                v84 = v100;
                break;
              }

              v90 = v239;
              v91 = v233;
              v83 = v232;
              v89 = v235;
            }

            *&v83[4 * v88] = v97;
            v87 = v236[3].i32[1];
            if (v89 <= 3)
            {
              v101 = 3;
            }

            else
            {
              v101 = v89;
            }

            v102 = v101 - 1;
            if (v97 > 0)
            {
              v89 = v102;
            }

            v69 = v240;
          }

          ++v88;
        }

        while (v92 < v87);
      }

      v103 = v224;
      MEMORY[0x1EEE9AC00](v85);
      v104 = &v207[-v211];
      bzero(&v207[-v211], v103);
      v105 = v243;
      if (v86 + 48 <= v84)
      {
        v209 = ec_dec_icdf(v243, trim_icdf, 7);
      }

      else
      {
        v209 = 5;
      }

      v106 = v242;
      v107 = v223;
      v108 = ec_tell_frac(v105);
      v109 = 0;
      v110 = v107 + ~v108;
      v111 = v236;
      v112 = 0;
      if (v21 >= 2 && v228)
      {
        v109 = v110 >= v25;
        v112 = 8 * v109;
      }

      v210 = v112;
      LODWORD(v211) = v109;
      v113 = v110 - v112;
      MEMORY[0x1EEE9AC00](v108);
      v114 = &v207[-((v103 + 15) & 0xFFFFFFFFFFFFFFF0)];
      bzero(v114, v103);
      MEMORY[0x1EEE9AC00](v115);
      bzero(v114, v103);
      v116 = v111[3].u32[0];
      v117 = v111[3].u32[1];
      v118 = v243;
      v119 = v239;
      v235 = v114;
      v120 = compute_allocation(v106, v116, v117, v232, v244, v209, &v246 + 1, &v246, v113, &v245, v114, v104, v114, v239, v21, v243, 0, 0, 0);
      v121 = v104;
      v122 = v120;
      v123 = v111[3].i32[0];
      v124 = v111[3].i32[1];
      v244 = v121;
      v125 = unquant_fine_energy(v106, v123, v124, v231, v121, v118, v119);
      v232 = (v227 * v119);
      MEMORY[0x1EEE9AC00](v125);
      v127 = &v207[-v126];
      bzero(&v207[-v126], v128);
      v224 = (v69 * v119);
      MEMORY[0x1EEE9AC00](v129);
      v131 = &v207[-v130];
      bzero(&v207[-v130], v132);
      v133 = &v131[2 * v69];
      v134 = v114;
      if (v119 == 2)
      {
        v135 = v133;
      }

      else
      {
        v135 = 0;
      }

      quant_all_bands(0, v106, v111[3].i32[0], v111[3].u32[1], v131, v135, v127, 0, v114, v225, v212, v246, HIDWORD(v246), v220, v223 - v210, v245, v118, v21, v122, &v111[5]);
      if (v211)
      {
        v136 = ec_dec_bits(v118, 1u);
        v137 = unquant_energy_finalise(v106, v111[3].i32[0], v111[3].i32[1], v231, v244, v235, v230 - *(v118 + 6) - __clz(*(v118 + 8)) + 32, v118, v119);
        v138 = v208;
        if (v136)
        {
          v137 = anti_collapse(v106, v131, v127, v21, v119, v240, v111[3].i32[0], v111[3].i32[1], v231, v219, v218, v134, v111[5].i32[0]);
        }
      }

      else
      {
        v137 = unquant_energy_finalise(v106, v111[3].i32[0], v111[3].i32[1], v231, v244, v235, v230 - *(v118 + 6) - __clz(*(v118 + 8)) + 32, v118, v119);
        v138 = v208;
      }

      MEMORY[0x1EEE9AC00](v137);
      v140 = &v207[-v139];
      bzero(&v207[-v139], v141);
      if (v138)
      {
        denormalise_bands(v106, v131, v140, v231, v111[3].i32[0], v221, v119, v222);
        v142 = v240;
      }

      else
      {
        if (v232 >= 1)
        {
          memset_pattern16(v231, &unk_1C382DF50, (2 * v232));
        }

        v142 = v240;
        if (v224 >= 1)
        {
          bzero(v140, 4 * v224);
        }
      }

      v143 = 4 * (v241 / 2 - v142 + 2048);
      v144 = v250;
      v145 = v234;
      do
      {
        v146 = *v144++;
        memmove(v146, &v146[4 * v142], v143);
        --v145;
      }

      while (v145);
      v147 = 0;
      v148 = *(v233 + 2 * v221) << v21;
      v149 = v111[2].i32[1];
      if (v239 <= 1)
      {
        v150 = 1;
      }

      else
      {
        v150 = v239;
      }

      do
      {
        v151 = v148;
        if (v149 != 1)
        {
          if (v148 >= v142 / v149)
          {
            v151 = v142 / v149;
          }

          else
          {
            v151 = v148;
          }
        }

        if (v151 < v142)
        {
          bzero(&v140[4 * v151 + 4 * v147], 4 * (v142 + ~v151) + 4);
        }

        v147 += v142;
        --v150;
      }

      while (v150);
      v152 = 0;
      v153 = 8 * v234;
      do
      {
        v249[v152 / 8] = v250[v152 / 8] - 4 * v142 + 0x2000;
        v152 += 8;
      }

      while (v153 != v152);
      v154 = v229;
      v8 = v236;
      v155 = v239;
      if (v229 == 2 && v239 == 1 && v142 >= 1)
      {
        v156 = 0;
        v157 = v140;
        do
        {
          v157[v142] = *v157;
          ++v157;
          v156 += 4;
        }

        while (4 * v142 != v156);
      }

      if (v154 == 1 && v155 == 2 && v142 >= 1)
      {
        v158 = 0;
        v159 = v140;
        do
        {
          *v159 = (v159[v142] + *v159) >> 1;
          ++v159;
          v158 += 4;
        }

        while (4 * v142 != v158);
      }

      compute_inv_mdcts(v242, v225, v140, v249, v154, v21);
      v160 = 0;
      v161 = v226;
      do
      {
        v162 = vmax_s32(v8[7], 0xF0000000FLL);
        v8[7] = v162;
        v163 = v249[v160 / 8];
        v164 = v242;
        v165 = v241;
        comb_filter(v163, v163, v162.i32[1], v162.i32[0], v242[10], v8[8].i16[1], v8[8].i16[0], v8[9].i32[0], v8[8].i32[1], *(v242 + 8), v241);
        if (v21)
        {
          comb_filter(&v163[4 * v164[10]], &v163[4 * v164[10]], v8[7].i32[0], v238, v240 - v164[10], v8[8].i16[0], v161, v8[8].i32[1], v237, *(v164 + 8), v165);
        }

        v160 += 8;
      }

      while (v153 != v160);
      v166 = v8[7].i32[0];
      v8[8].i16[1] = v8[8].i16[0];
      v167 = v8[8].i32[1];
      v168 = v238;
      v8[7].i32[0] = v238;
      v8[7].i32[1] = v166;
      v169 = v226;
      v8[8].i16[0] = v226;
      v170 = v237;
      v8[8].i32[1] = v237;
      v8[9].i32[0] = v167;
      if (v21)
      {
        v8[7].i32[1] = v168;
        v8[8].i16[1] = v169;
        v8[9].i32[0] = v170;
      }

      v171 = v227;
      v172 = v215;
      v173 = v214;
      v174 = v231;
      v175 = v219;
      v176 = v218;
      v177 = v222;
      v178 = v228;
      if (v213)
      {
        v179 = 0;
        v180 = 2 * v227;
        v181 = v231;
        do
        {
          v181[v171] = *v181;
          ++v181;
          v179 += 2;
        }

        while (v180 != v179);
      }

      LODWORD(v22) = v240;
      if (v178)
      {
        if (v171 >= 1)
        {
          if (v173 <= 1)
          {
            v182 = 1;
          }

          else
          {
            v182 = v173;
          }

          do
          {
            v183 = v174[v173];
            if (v183 >= *v174)
            {
              LOWORD(v183) = *v174;
            }

            v174[v173] = v183;
            ++v174;
            --v182;
          }

          while (v182);
        }
      }

      else if (v171 >= 1)
      {
        if (v173 <= 1)
        {
          v184 = 1;
        }

        else
        {
          v184 = v173;
        }

        v185 = v184;
        do
        {
          v186 = *v175++;
          *v176++ = v186;
          --v185;
        }

        while (v185);
        v187 = v184;
        v188 = v174;
        do
        {
          v188[v173] = *v188;
          ++v188;
          --v187;
        }

        while (v187);
        do
        {
          v189 = v177 + v174[3 * v173];
          if (v189 >= *v174)
          {
            LOWORD(v189) = *v174;
          }

          v174[3 * v173] = v189;
          ++v174;
          --v184;
        }

        while (v184);
      }

      v190 = 0;
      v191 = &v8[10] + 4 * v216 + 2 * v172 + 4;
      v192 = v191 + 4 * v173;
      v193 = v191 + 2 * v173;
      v194 = v8[3].u32[0];
      v195 = v8[3].i32[1];
      v196 = 1;
      do
      {
        v197 = v196;
        if (v194 >= 1)
        {
          v198 = 0;
          do
          {
            *(v191 + 2 * v190 * v171 + v198) = 0;
            *(v192 + 2 * v190 * v171 + v198) = -28672;
            *(v193 + 2 * v190 * v171 + v198) = -28672;
            v198 += 2;
          }

          while (2 * v194 != v198);
        }

        if (v195 < v171)
        {
          v199 = 0;
          v200 = v195 + v190 * v171;
          v201 = v191 + 2 * v200;
          v202 = v192 + 2 * v200;
          v203 = v193 + 2 * v200;
          do
          {
            *(v201 + 2 * v199) = 0;
            *(v202 + 2 * v199) = -28672;
            *(v203 + 2 * v199++) = -28672;
          }

          while (v171 - v195 != v199);
        }

        v196 = 0;
        v190 = 1;
      }

      while ((v197 & 1) != 0);
      v204 = v242;
      v205 = v243;
      v206 = *(v243 + 8);
      v8[5].i32[0] = v206;
      deemphasis(v249, v217, v22, v229, v8[2].i32[1], v204 + 8, &v8[9] + 4, v140);
      v8[6].i32[1] = 0;
      if ((*(v205 + 6) + __clz(v206) - 32) > v230)
      {
        result = 4294967293;
        goto LABEL_11;
      }

      if (*(v205 + 12))
      {
        v8[5].i32[1] = 1;
      }

LABEL_194:
      result = (v22 / v8[2].i32[1]);
    }
  }

LABEL_11:
  v28 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t celt_decode_lost(_DWORD *a1, _WORD *a2, uint64_t a3, int a4)
{
  LODWORD(v197) = a4;
  v4 = a3;
  v170 = a2;
  v5 = a1;
  v6 = 0;
  v201[2] = *MEMORY[0x1E69E9840];
  v7 = a1[3];
  v201[0] = 0;
  v201[1] = 0;
  v200[0] = 0;
  v200[1] = 0;
  v8 = *a1;
  v193 = *(*a1 + 8);
  v195 = *(v8 + 4);
  v9 = v195 + 2048;
  v189 = a3;
  v186 = -a3;
  if (v7 <= 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = v7;
  }

  LODWORD(v185) = v10;
  v196 = *(v8 + 24);
  v187 = v10;
  v11 = 8 * v10;
  v12 = a1;
  do
  {
    v201[v6 / 8] = v12 + 21;
    v200[v6 / 8] = v12 + 8276 - 4 * a3;
    v6 += 8;
    v12 += v9;
  }

  while (v11 != v6);
  v13 = v9 * v7;
  v14 = &a1[v9 * v7 + 21];
  v15 = a1[13];
  v16 = a1[6];
  v169 = a1[5];
  v18 = v15 > 4 || v16 != 0;
  MEMORY[0x1EEE9AC00](a1);
  v168 = (&v168 - v19);
  bzero(&v168 - v19, v20);
  v190 = v5;
  v194 = v4;
  v182 = v7;
  v171 = v8;
  v188 = v15;
  if (!v18)
  {
    v192 = v14;
    v198 = 0;
    if (v15)
    {
      v30 = v5[12];
      v31 = 26214;
    }

    else
    {
      MEMORY[0x1EEE9AC00](v21);
      bzero(&v168 - 256, 0x800uLL);
      v69 = v5[9];
      pitch_downsample(v201, &v168 - 2048, 2048, v7);
      v70 = v5[9];
      v21 = pitch_search(&v168 - 664, &v168 - 1024, 1328, 620, &v198);
      v30 = 720 - v198;
      v5[12] = 720 - v198;
      v31 = 0x7FFF;
    }

    v181 = v31;
    v71 = v189;
    v198 = v30;
    v72 = v195;
    MEMORY[0x1EEE9AC00](v21);
    v74 = &v168 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v74, v73);
    MEMORY[0x1EEE9AC00](v75);
    v185 = &v168;
    v76 = (&v168 - 256);
    bzero(&v168 - 256, 0x800uLL);
    v77 = 0;
    v78 = *(v8 + 64);
    v193 = 2048 - v71;
    v184 = 4 * (2048 - v71);
    v79 = (v72 + v194);
    v191 = v79;
    v172 = v72;
    v176 = (v79 + 3) & 0xFFFFFFFC;
    v196 = v79;
    v180 = vdupq_n_s64(v79 - 1);
    v183 = 2047 - v194;
    v179 = v72 - 1;
    v178 = xmmword_1C382DF30;
    v177 = xmmword_1C382DF40;
    v175 = xmmword_1C378AEF0;
    v174 = xmmword_1C378AF00;
    v173 = 8204 - 4 * v194;
    while (1)
    {
      v80 = 0;
      v81 = v201[v77];
      v82 = 1024;
      do
      {
        *&v76[v80] = vrshrn_high_n_s32(vrshrn_n_s32(*&v81[v82], 0xCuLL), *&v81[v82 + 4], 0xCuLL);
        v82 += 8;
        v80 += 2;
      }

      while (v80 != 256);
      if (!v188)
      {
        v83 = v5[9];
        _celt_autocorr(&v168 - 2048, &v199, v78, v195, 24, 1024);
        v84.i64[0] = 0xFFFF0000FFFFLL;
        v84.i64[1] = 0xFFFF0000FFFFLL;
        v199 += v199 >> 13;
        v85 = 4;
        v86 = v177;
        v87 = v178;
        do
        {
          v88.i64[0] = (v86.i32[0] * v86.i32[0]);
          v88.i64[1] = (v86.i32[2] * v86.i32[2]);
          v89.i64[0] = (v87.i32[0] * v87.i32[0]);
          v89.i64[1] = (v87.i32[2] * v87.i32[2]);
          v90 = *(&v199 + v85);
          v91 = vuzp1q_s32(v88, v89);
          v92 = vaddq_s32(v91, v91);
          v93 = vshrq_n_u32(vmulq_s32(vandq_s8(v90, v84), v92), 0xFuLL);
          v94 = vmulq_s32(v92, vshrq_n_s32(v90, 0x10uLL));
          *(&v199 + v85) = vsubq_s32(vsubq_s32(v90, vaddq_s32(v94, v94)), v93);
          v95 = vdupq_n_s64(4uLL);
          v87 = vaddq_s64(v87, v95);
          v86 = vaddq_s64(v86, v95);
          v85 += 16;
        }

        while (v85 != 100);
        _celt_lpc((v192 + 48 * v77), &v199, 24);
      }

      v96 = 0;
      v97 = v198;
      v98 = 2 * v198;
      if (2 * v198 >= 1024)
      {
        v98 = 1024;
      }

      v99 = v98;
      v100 = 2047 - v98;
      do
      {
        *(&v199 + v96) = (v81[v100--] + 2048) >> 12;
        v96 += 2;
      }

      while (v96 != 48);
      v197 = (v192 + 48 * v77);
      celt_fir(v185 - v99, v197, v185 - 2 * v99, v99, 24, &v199);
      v101 = 1024 - v99;
      if (v97 < 1)
      {
        v110 = 0;
      }

      else
      {
        v102 = 0;
        v103 = 0;
        v104 = v76 + v101;
        v105 = v99;
        v106 = v104;
        v107 = v99;
        do
        {
          v109 = *v106++;
          v108 = v109;
          if (v103 <= v109)
          {
            v103 = v108;
          }

          if (v102 >= v108)
          {
            v102 = v108;
          }

          --v107;
        }

        while (v107);
        v110 = 0;
        if (v103 <= -v102)
        {
          v111 = -v102;
        }

        else
        {
          v111 = v103;
        }

        if (v111 >= 0x400)
        {
          v112 = 0;
          v113 = 0;
          do
          {
            v115 = *v104++;
            v114 = v115;
            if (v113 <= v115)
            {
              v113 = v114;
            }

            if (v112 >= v114)
            {
              v112 = v114;
            }

            --v105;
          }

          while (v105);
          if (v113 <= -v112)
          {
            v116 = -v112;
          }

          else
          {
            v116 = v113;
          }

          v117 = ((62 - 2 * __clz(v116)) & 0xFFFE) - 20;
          if (v116)
          {
            v110 = v117;
          }

          else
          {
            v110 = -20;
          }
        }
      }

      v118 = (v99 >> 1);
      if (v118 < 1)
      {
        v121 = 1;
        v120 = 1;
      }

      else
      {
        v119 = 1024 - v118;
        v120 = 1;
        v121 = 1;
        do
        {
          v122 = *(v76 + v119);
          v121 += (v122 * v122) >> v110;
          v123 = *(v76 + v101);
          v120 += (v123 * v123) >> v110;
          ++v101;
          ++v119;
          --v118;
        }

        while (v118);
      }

      if (v121 >= v120)
      {
        v124 = v120;
      }

      else
      {
        v124 = v121;
      }

      v125 = frac_div32(v124 >> 1, v120);
      v126 = celt_sqrt(v125);
      memmove(v81, &v81[v189], v184);
      v127 = v191;
      if (v191 < 1)
      {
        v129 = 0;
      }

      else
      {
        v128 = 0;
        v129 = 0;
        v130 = 1024 - v198;
        v131 = (v126 * v181) >> 15;
        v132 = 1024 - v198 - v194 + 1024;
        v133 = &v81[v193];
        v134 = v196;
        do
        {
          v135 = v198;
          if (v128 < v198)
          {
            v135 = 0;
          }

          else
          {
            LOWORD(v131) = (v126 * v131) >> 15;
          }

          v136 = v128 - v135;
          *v133++ = ((v131 * *(v76 + v136 + v130)) >> 3) & 0xFFFFF000;
          v137 = (16 * v81[v132 + v136] + 0x8000) >> 16;
          v129 += (v137 * v137) >> 8;
          v128 = v136 + 1;
          --v134;
        }

        while (v134);
      }

      v138 = 0;
      v139 = v183;
      do
      {
        *(&v199 + v138) = (v81[v139--] + 2048) >> 12;
        v138 += 2;
      }

      while (v138 != 48);
      v140 = v81 + 2048;
      celt_iir(&v81[v186 + 2048], v197, &v81[v186 + 2048], v127, 24, &v199);
      v141 = v196;
      if (v196 < 1)
      {
        if (v129)
        {
          v142 = 0;
LABEL_120:
          if (v129 < v142)
          {
            v152 = frac_div32((v129 >> 1) + 1, v142 + 1);
            v153 = celt_sqrt(v152);
            v154 = 2 * v153;
            v155 = &v81[v193];
            if (v195 >= 1)
            {
              v156 = v172;
              v157 = v78;
              v158 = &v81[v193];
              do
              {
                v159 = *v157++;
                *v158 = ((*v158 >> 15) & 0xFFFFFFFE) * ((((v154 ^ 0xFFFE) * v159) & 0xFFFF0000 ^ 0x7FFF0000) >> 16) + ((((((v154 ^ 0xFFFE) * v159) & 0xFFFF0000 ^ 0x7FFF0000) >> 16) * *v158) >> 15);
                ++v158;
                --v156;
              }

              while (v156);
            }

            v160 = v191;
            if (v194 >= 1)
            {
              v161 = v195;
              do
              {
                v155[v161] = v154 * (v155[v161] >> 16) + ((v155[v161] * v153) >> 15);
                ++v161;
              }

              while (v161 < v160);
            }
          }
        }
      }

      else
      {
        v142 = 0;
        v143 = &v81[v193];
        v144 = v180;
        do
        {
          v145 = *v143++;
          v142 += (((16 * v145 + 0x8000) >> 16) * ((16 * v145 + 0x8000) >> 16)) >> 8;
          --v141;
        }

        while (v141);
        if (v129 > v142 >> 2)
        {
          goto LABEL_120;
        }

        v146 = (v81 + v173);
        v147 = v176;
        v148 = v174;
        v149 = v175;
        do
        {
          v150 = vmovn_s64(vcgeq_u64(v144, v148));
          if (vuzp1_s16(v150, *v148.i8).u8[0])
          {
            *(v146 - 3) = 0;
          }

          if (vuzp1_s16(v150, *&v148).i8[2])
          {
            *(v146 - 2) = 0;
          }

          if (vuzp1_s16(*&v148, vmovn_s64(vcgeq_u64(v144, *&v149))).i32[1])
          {
            *(v146 - 1) = 0;
            *v146 = 0;
          }

          v151 = vdupq_n_s64(4uLL);
          v149 = vaddq_s64(v149, v151);
          v148 = vaddq_s64(v148, v151);
          v146 += 4;
          v147 -= 4;
        }

        while (v147);
      }

      v5 = v190;
      v162 = (v81 + 2048);
      v163 = v195;
      comb_filter(v74, v162, v190[14], v190[14], v195, -*(v190 + 32), -*(v190 + 32), v190[17], v190[17], 0, 0);
      if (v163 > 1)
      {
        v164 = 0;
        v165 = v179;
        do
        {
          v140[v164] = ((*&v74[4 * v164] * *(v78 + 2 * v165)) >> 15) + ((*&v74[4 * v165] * *(v78 + 2 * v164)) >> 15) + 2 * ((*&v74[4 * v165] >> 16) * *(v78 + 2 * v164) + (*&v74[4 * v164] >> 16) * *(v78 + 2 * v165));
          ++v164;
          --v165;
        }

        while (v72 / 2 != v164);
      }

      if (++v77 == v187)
      {
        LODWORD(v4) = v194;
        v68 = v170;
        v7 = v182;
        v65 = v171;
        v67 = v188;
        v56 = v169;
        v66 = v168;
        goto LABEL_132;
      }
    }
  }

  v22 = v14 + 48 * v7;
  v23 = v16;
  v24 = v5[7];
  LODWORD(v25) = *(v8 + 12);
  if (v24 < v25)
  {
    LODWORD(v25) = v5[7];
  }

  LODWORD(v191) = v25;
  if (v23 <= v25)
  {
    v25 = v25;
  }

  else
  {
    v25 = v23;
  }

  v186 = v25;
  MEMORY[0x1EEE9AC00](v21);
  v26 = v5;
  v28 = &v168 - v27;
  bzero(&v168 - v27, v29);
  if (v15 <= 4)
  {
    v32 = 0;
    if (v15)
    {
      v33 = -512;
    }

    else
    {
      v33 = -1536;
    }

    v34 = &v26[12 * v7 + 21 + v13] + 2 * v23;
    v35 = 2 * v193;
    v36 = v187;
    do
    {
      if (v23 < v24)
      {
        v37 = v24 - v23;
        v38 = v34;
        do
        {
          *v38++ += v33;
          --v37;
        }

        while (v37);
      }

      ++v32;
      v34 += v35;
    }

    while (v32 != v36);
    v184 = v22;
  }

  else
  {
    v184 = v22 + 4 * v193 + 4 * v193 + 4 * v193;
  }

  v39 = v190[10];
  v192 = v23;
  if (v7 >= 1)
  {
    v40 = 0;
    v41 = 0;
    v42 = v186;
    do
    {
      v43 = v192;
      LODWORD(v193) = v41;
      if (v191 > v192)
      {
        v44 = v41 * v4;
        do
        {
          v45 = *(v196 + 2 * v43);
          v46 = v45 << v197;
          ++v43;
          v47 = (*(v196 + 2 * v43) - v45) << v197;
          if (v47 >= 1)
          {
            v48 = &v28[2 * v40 + 2 * v46];
            v49 = ((*(v196 + 2 * v43) - v45) << v197);
            do
            {
              v39 = celt_lcg_rand(v39);
              *v48 = v39 >> 20;
              v48 += 2;
              --v49;
            }

            while (v49);
          }

          renormalise_vector(&v28[2 * v46 + 2 * v44], v47, 0x7FFF);
        }

        while (v43 != v42);
      }

      v41 = v193 + 1;
      LODWORD(v4) = v194;
      v40 += v194;
      v7 = v182;
    }

    while (v193 + 1 != v182);
  }

  v190[10] = v39;
  v50 = v197;
  v51 = v28;
  v52 = v168;
  v53 = v186;
  denormalise_bands(v171, v51, v168, v184, v192, v186, v7, 1 << v197);
  v54 = 0;
  v55 = *(v196 + 2 * v53) << v50;
  v56 = v169;
  v57 = v4 / v169;
  v58 = v189;
  v59 = v187;
  v60 = v185;
  do
  {
    v61 = v55;
    if (v56 != 1)
    {
      if (v55 >= v57)
      {
        v61 = v57;
      }

      else
      {
        v61 = v55;
      }
    }

    if (v61 < v4)
    {
      bzero((v52 + 4 * (v61 + v54)), 4 * (~v61 + v4) + 4);
    }

    v54 += v4;
    --v60;
  }

  while (v60);
  v62 = 4 * ((v195 >> 1) - v4 + 2048);
  v63 = v201;
  do
  {
    v64 = *v63++;
    memmove(v64, &v64[4 * v58], v62);
    --v59;
  }

  while (v59);
  v65 = v171;
  compute_inv_mdcts(v171, 0, v52, v200, v7, v197);
  v66 = v52;
  v5 = v190;
  v67 = v188;
  v68 = v170;
LABEL_132:
  result = deemphasis(v200, v68, v4, v7, v56, v65 + 8, (v5 + 19), v66);
  v5[13] = v67 + 1;
  v167 = *MEMORY[0x1E69E9840];
  return result;
}

unsigned int *compute_inv_mdcts(unsigned int *result, unsigned int a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v7 = result;
  v8 = result[1];
  v9 = result[10];
  if (a2)
  {
    v10 = result[8];
  }

  else
  {
    v9 <<= a6;
    v10 = result[8] - a6;
    a2 = 1;
  }

  v21 = 0;
  v11 = 0;
  if (a5 <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = a5;
  }

  v20 = v12;
  v13 = a2;
  v19 = v9 * a2;
  v14 = 4 * v9;
  do
  {
    if (v13 >= 1)
    {
      v15 = 0;
      v16 = (a3 + 4 * v21);
      v17 = v13;
      do
      {
        result = clt_mdct_backward((v7 + 18), v16++, *(a4 + 8 * v11) + v15, *(v7 + 8), v8, v10, v13);
        v15 += v14;
        --v17;
      }

      while (v17);
    }

    ++v11;
    v21 += v19;
  }

  while (v11 != v20);
  return result;
}

uint64_t deemphasis(uint64_t result, _WORD *a2, int a3, int a4, int a5, __int16 *a6, uint64_t a7, _DWORD *a8)
{
  v8 = 0;
  v9 = 0;
  v10 = *a6;
  v11 = 2 * v10;
  if (a4 <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = a4;
  }

  v13 = 2 * a4;
  do
  {
    v14 = *(a7 + 4 * v8);
    v15 = *(result + 8 * v8);
    if (a5 <= 1)
    {
      v20 = a3;
      v21 = a2;
      if (a3 >= 1)
      {
        do
        {
          v22 = *v15++;
          v23 = v22 + v14;
          v14 = v11 * ((v22 + v14) >> 16) + (((v22 + v14) * v10) >> 15);
          v24 = (v23 + 2048) >> 12;
          if (v24 <= -32768)
          {
            v24 = -32768;
          }

          if (v24 >= 0x7FFF)
          {
            LOWORD(v24) = 0x7FFF;
          }

          *v21 = v24;
          v21 = (v21 + v13);
          --v20;
        }

        while (v20);
      }
    }

    else
    {
      if (a3 >= 1)
      {
        v16 = a3;
        v17 = a8;
        do
        {
          v18 = *v15++;
          v19 = v18 + v14;
          v14 = v11 * ((v18 + v14) >> 16) + (((v18 + v14) * v10) >> 15);
          *v17++ = v19;
          --v16;
        }

        while (v16);
      }

      v9 = 1;
    }

    *(a7 + 4 * v8) = v14;
    if (v9 && a3 / a5 >= 1)
    {
      v25 = (a3 / a5);
      v26 = a8;
      v27 = a2;
      do
      {
        v28 = (*v26 + 2048) >> 12;
        if (v28 <= -32768)
        {
          v28 = -32768;
        }

        if (v28 >= 0x7FFF)
        {
          LOWORD(v28) = 0x7FFF;
        }

        *v27 = v28;
        v27 = (v27 + v13);
        v26 += a5;
        --v25;
      }

      while (v25);
    }

    ++v8;
    ++a2;
  }

  while (v8 != v12);
  return result;
}

uint64_t opus_custom_decoder_ctl(_DWORD *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int *a9)
{
  result = 4294967291;
  if (a2 > 10007)
  {
    if (a2 <= 10011)
    {
      if (a2 == 10008)
      {
        if ((a9 - 3) >= 0xFFFFFFFE)
        {
          result = 0;
          a1[4] = a9;
          return result;
        }
      }

      else
      {
        if (a2 != 10010)
        {
          return result;
        }

        if ((a9 & 0x80000000) == 0 && a9 < *(*a1 + 8))
        {
          result = 0;
          a1[6] = a9;
          return result;
        }
      }

      return 0xFFFFFFFFLL;
    }

    switch(a2)
    {
      case 10012:
        if (a9 >= 1 && a9 <= *(*a1 + 8))
        {
          result = 0;
          a1[7] = a9;
          return result;
        }

        return 0xFFFFFFFFLL;
      case 10015:
        if (a9)
        {
          result = 0;
          *a9 = *a1;
          return result;
        }

        return 0xFFFFFFFFLL;
      case 10016:
        result = 0;
        a1[8] = a9;
        break;
    }
  }

  else
  {
    if (a2 > 4030)
    {
      if (a2 != 4031)
      {
        if (a2 != 4033)
        {
          if (a2 != 10007)
          {
            return result;
          }

          if (a9)
          {
            result = 0;
            *a9 = a1[11];
            a1[11] = 0;
            return result;
          }

          return 0xFFFFFFFFLL;
        }

        v17 = a9;
        if (a9)
        {
          result = 0;
          v18 = a1[14];
          goto LABEL_37;
        }

        return 0xFFFFFFFFLL;
      }

      v17 = a9;
      if (!a9)
      {
        return 0xFFFFFFFFLL;
      }

      result = 0;
      v18 = a1[10];
LABEL_37:
      *v17 = v18;
      return result;
    }

    if (a2 == 4027)
    {
      v17 = a9;
      if (!a9)
      {
        return 0xFFFFFFFFLL;
      }

      result = 0;
      v18 = a1[2] / a1[5];
      goto LABEL_37;
    }

    if (a2 == 4028)
    {
      v12 = a1[2];
      v11 = a1[3];
      v13 = *(*a1 + 8);
      bzero(a1 + 10, (4 * *(*a1 + 4) + 8240) * v11 + 16 * v13 + 84 - 40);
      if (v13 >= 1)
      {
        LODWORD(v14) = 2 * v13;
        v15 = &a1[12 * v11 + 21 + (v12 + 2048) * v11 + v13];
        v16 = &v15[2 * v13];
        if (2 * v13 <= 1)
        {
          v14 = 1;
        }

        else
        {
          v14 = v14;
        }

        do
        {
          *v16++ = -28672;
          *v15++ = -28672;
          --v14;
        }

        while (v14);
      }

      return 0;
    }
  }

  return result;
}

uint64_t unquant_coarse_energy(uint64_t result, int a2, int a3, uint64_t a4, int a5, uint64_t a6, int a7, int a8)
{
  v10 = a2;
  v28 = result;
  v29[1] = *MEMORY[0x1E69E9840];
  v29[0] = 0;
  if (a5)
  {
    v26 = 0;
    v27 = 4915;
  }

  else
  {
    v26 = pred_coef[a8];
    v27 = beta_coef[a8];
  }

  if (a2 < a3)
  {
    v11 = &e_prob_model + 84 * a8 + 42 * a5;
    v12 = 8 * *(a6 + 8) + 32;
    if (a7 <= 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = a7;
    }

    do
    {
      v14 = 0;
      if (v10 >= 20)
      {
        v15 = 20;
      }

      else
      {
        v15 = v10;
      }

      v24 = (2 * v15) | 1;
      v25 = 2 * v15;
      do
      {
        v16 = v12 - *(a6 + 24) - __clz(*(a6 + 32));
        if (v16 < 15)
        {
          if (v16 < 2)
          {
            if (v16 == 1)
            {
              result = -ec_dec_bit_logp(a6, 1);
            }

            else
            {
              result = 0xFFFFFFFFLL;
            }
          }

          else
          {
            v17 = ec_dec_icdf(a6, small_energy_icdf, 2);
            result = -(v17 & 1) ^ (v17 >> 1);
          }
        }

        else
        {
          result = ec_laplace_decode(a6, v11[v25] << 7, v11[v24] << 6);
        }

        v18 = v10 + *(v28 + 8) * v14;
        v19 = *(a4 + 2 * v18);
        if (v19 <= -9216)
        {
          v19 = -9216;
        }

        v20 = *(v29 + v14) + (result << 17);
        v21 = v20 + ((v26 * v19 + 128) >> 8);
        if (v21 <= -3670016)
        {
          v21 = -3670016;
        }

        *(a4 + 2 * v18) = (v21 + 64) >> 7;
        *(v29 + v14++) = v20 - v27 * (4 * result);
      }

      while (v13 != v14);
      ++v10;
    }

    while (v10 != a3);
  }

  v22 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t unquant_fine_energy(uint64_t result, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t *a6, int a7)
{
  if (a2 < a3)
  {
    v11 = result;
    if (a7 <= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = a7;
    }

    v13 = a2;
    do
    {
      v14 = *(a5 + 4 * v13);
      if (v14 >= 1)
      {
        for (i = 0; i != v12; ++i)
        {
          result = ec_dec_bits(a6, v14);
          v14 = *(a5 + 4 * v13);
          *(a4 + 2 * v13 + 2 * *(v11 + 8) * i) = *(a4 + 2 * v13 + 2 * *(v11 + 8) * i) + (((result << 10) | 0x200) >> v14) - 512;
        }
      }

      ++v13;
    }

    while (v13 != a3);
  }

  return result;
}

uint64_t unquant_energy_finalise(uint64_t result, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t *a8, int a9)
{
  v13 = result;
  v14 = 0;
  if (a9 <= 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = a9;
  }

  v21 = a2;
  v16 = a3;
  v17 = 1;
  v25 = a3;
  do
  {
    v24 = v17;
    if (a2 < a3 && a7 >= a9)
    {
      v18 = v21;
      v27 = v14;
      do
      {
        if (*(a5 + 4 * v18) <= 7 && *(a6 + 4 * v18) == v14)
        {
          for (i = 0; i != v15; ++i)
          {
            result = ec_dec_bits(a8, 1u);
            v20 = (*(a5 + 4 * v18) + 1);
            *(a4 + 2 * v18 + 2 * *(v13 + 8) * i) += ((result << 10) - 512) >> (*(a5 + 4 * v18) + 1);
          }

          a7 -= v15;
          v16 = v25;
          v14 = v27;
        }

        ++v18;
      }

      while (v18 < v16 && a7 >= a9);
    }

    v17 = 0;
    v14 = 1;
  }

  while ((v24 & 1) != 0);
  return result;
}

uint64_t alg_quant(__int16 *a1, int a2, int a3, int a4, int a5, uint64_t *a6)
{
  v60 = a6;
  v61 = *MEMORY[0x1E69E9840];
  v11 = 2 * a2;
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v58[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  bzero(v12, v11);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v58[-v14];
  bzero(&v58[-v14], v16);
  MEMORY[0x1EEE9AC00](v17);
  bzero(v12, v11);
  exp_rotation(a1, a2, 1, a5, a3, a4);
  v18 = 0;
  if (a2 <= 1)
  {
    v19 = 1;
  }

  else
  {
    v19 = a2;
  }

  do
  {
    v20 = a1[v18];
    if (v20 <= 0)
    {
      a1[v18] = -v20;
      v21 = -1;
    }

    else
    {
      v21 = 1;
    }

    *&v12[2 * v18] = v21;
    v15[v18] = 0;
    *&v12[2 * v18++] = 0;
  }

  while (v19 != v18);
  if (a3 <= a2 >> 1)
  {
    v27 = 0;
    v28 = 0;
    v34 = a3;
  }

  else
  {
    v22 = 0;
    v23 = 0;
    do
    {
      v23 += a1[v22++];
    }

    while (v19 != v22);
    v59 = a5;
    if (v23 <= a3)
    {
      v23 = 0x4000;
      *a1 = 0x4000;
      if (a2 <= 2)
      {
        v24 = 2;
      }

      else
      {
        v24 = a2;
      }

      bzero(a1 + 1, 2 * (v24 - 1));
    }

    v25 = celt_rcp(v23);
    v26 = celt_rcp(v23);
    v27 = 0;
    LOWORD(v28) = 0;
    v29 = ((v25 & 0xFFFF0000 | v26) * (a3 - 1)) >> 16;
    v30 = v19;
    v31 = a1;
    v32 = v15;
    v33 = v12;
    v34 = a3;
    do
    {
      v35 = *v31++;
      v36 = (v29 * v35) >> 15;
      *v32++ = v36;
      v28 = v36 * v36 + v28;
      v27 += v36 * v35;
      *v33++ = 2 * v36;
      v34 -= v36;
      --v30;
    }

    while (v30);
    a5 = v59;
  }

  if (v34 <= a2 + 3)
  {
    if (v34 >= 1)
    {
      for (i = 0; i != v34; ++i)
      {
        v38 = 0;
        v39 = 0;
        v40 = 0;
        v41 = 32 - __clz(a3 - v34 + 1 + i);
        v42 = v28 + 1;
        v43 = -32767;
        do
        {
          v44 = (v27 + a1[v38]) >> v41;
          v45 = (2 * v44 * v44) >> 16;
          if (v45 * v40 > v43 * (*&v12[2 * v38] + v42))
          {
            v39 = v38;
            v43 = v45;
            v40 = *&v12[2 * v38] + v42;
          }

          ++v38;
        }

        while (v19 != v38);
        v46 = *&v12[2 * v39];
        v27 += a1[v39];
        *&v12[2 * v39] = v46 + 2;
        v28 = v46 + v42;
        ++v15[v39];
      }
    }
  }

  else
  {
    *v15 += v34;
  }

  for (j = 0; j != v19; ++j)
  {
    v48 = *&v12[2 * j];
    a1[j] *= *&v12[2 * j];
    if (v48 < 0)
    {
      v15[j] = -v15[j];
    }
  }

  encode_pulses(v15, a2, a3, v60);
  if (a5 >= 2)
  {
    v50 = 0;
    LODWORD(result) = 0;
    v51 = a2 / a5;
    if (a2 / a5 <= 1)
    {
      v52 = 1;
    }

    else
    {
      v52 = v51;
    }

    v53 = 4 * v51;
    do
    {
      v54 = v15;
      v55 = v52;
      do
      {
        v56 = *v54++;
        result = ((v56 != 0) << v50) | result;
        --v55;
      }

      while (v55);
      ++v50;
      v15 = (v15 + v53);
    }

    while (v50 != a5);
  }

  else
  {
    result = 1;
  }

  v57 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t exp_rotation(uint64_t result, int a2, int a3, int a4, int a5, int a6)
{
  if (a2 > 2 * a5 && a6)
  {
    LODWORD(v6) = a4;
    v9 = result;
    v10 = (a2 << 16 >> 1) - a2;
    v11 = a2 + exp_rotation_SPREAD_FACTOR[a6 - 1] * a5;
    v12 = (v10 >> 16) * (celt_rcp(v11) >> 16);
    v13 = ((celt_rcp(v11) * (v10 >> 16)) >> 15) + 2 * v12;
    v14 = (v13 + (((celt_rcp(v11) >> 16) * v10) >> 15));
    v15 = (v14 * v14) >> 16;
    v16 = celt_cos_norm(v15);
    result = celt_cos_norm(v15 ^ 0x7FFF);
    v17 = result;
    if (a2 >= 8 * v6)
    {
      v18 = 0;
      v19 = v6;
      do
      {
        v20 = (v6 >> 2) + v19 * (v18 + 2);
        ++v18;
        v19 += v6;
      }

      while (v20 < a2);
    }

    else
    {
      v18 = 0;
    }

    if (v6 >= 1)
    {
      v21 = a2 / v6;
      v6 = v6;
      while ((a3 & 0x80000000) == 0)
      {
        result = exp_rotation1(v9, v21, 1, v16, -v17);
        if (v18)
        {
          v22 = v9;
          v23 = v21;
          v24 = v18;
          v25 = v17;
          v26 = -v16;
LABEL_15:
          result = exp_rotation1(v22, v23, v24, v25, v26);
        }

        v9 += v21;
        if (!--v6)
        {
          return result;
        }
      }

      if (v18)
      {
        exp_rotation1(v9, v21, v18, v17, v16);
      }

      v22 = v9;
      v23 = v21;
      v24 = 1;
      v25 = v16;
      v26 = v17;
      goto LABEL_15;
    }
  }

  return result;
}

uint64_t alg_unquant(uint64_t a1, int a2, int a3, int a4, int a5, uint64_t a6, int a7)
{
  v38[1] = *MEMORY[0x1E69E9840];
  MEMORY[0x1EEE9AC00](a1);
  v15 = (v38 - v14);
  bzero(v38 - v14, v16);
  decode_pulses(v15, a2, a3, a6);
  v17 = 0;
  if (a2 <= 1)
  {
    v18 = 1;
  }

  else
  {
    v18 = a2;
  }

  v19 = v18;
  v20 = v15;
  do
  {
    v21 = *v20++;
    v17 += v21 * v21;
    --v19;
  }

  while (v19);
  v22 = 31 - __clz(v17);
  v23 = v22 >> 1;
  LOBYTE(v22) = v22 & 0xFE;
  v24 = v17 >> (v22 - 14);
  v25 = v17 << (14 - v22);
  if (v23 <= 7)
  {
    v26 = v25;
  }

  else
  {
    v26 = v24;
  }

  v27 = celt_rsqrt_norm(v26);
  for (i = 0; i != v18; ++i)
  {
    *(a1 + 2 * i) = (((1 << (v23 + 1)) >> 1) + SLOWORD(v15[i]) * ((2 * a7 * v27 + 0x8000) >> 16)) >> (v23 + 1);
  }

  exp_rotation(a1, a2, -1, a5, a3, a4);
  if (a5 >= 2)
  {
    v30 = 0;
    LODWORD(result) = 0;
    v31 = a2 / a5;
    if (a2 / a5 <= 1)
    {
      v32 = 1;
    }

    else
    {
      v32 = v31;
    }

    v33 = 4 * v31;
    do
    {
      v34 = v15;
      v35 = v32;
      do
      {
        v36 = *v34++;
        result = ((v36 != 0) << v30) | result;
        --v35;
      }

      while (v35);
      ++v30;
      v15 = (v15 + v33);
    }

    while (v30 != a5);
  }

  else
  {
    result = 1;
  }

  v37 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t renormalise_vector(__int16 *a1, int a2, int a3)
{
  v4 = a2;
  v5 = a1;
  v6 = 1;
  if (a2 >= 1)
  {
    v7 = a2;
    v8 = a1;
    do
    {
      v9 = *v8++;
      v6 += v9 * v9;
      --v7;
    }

    while (v7);
  }

  v10 = __clz(v6);
  v11 = (v10 >> 1) ^ 0xF;
  v12 = v6 >> (2 * ((v10 >> 1) ^ 0xF) - 14);
  v13 = v6 << (14 - 2 * v11);
  if (v11 <= 7)
  {
    v14 = v13;
  }

  else
  {
    v14 = v12;
  }

  result = celt_rsqrt_norm(v14);
  if (v4 >= 1)
  {
    do
    {
      *v5 = (((2 << v11) >> 1) + ((2 * a3 * result + 0x8000) >> 16) * *v5) >> (v11 + 1);
      ++v5;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t stereo_itheta(__int16 *a1, __int16 *a2, int a3, int a4)
{
  if (a3)
  {
    if (a4 >= 1)
    {
      v4 = a4;
      LODWORD(v5) = 1;
      LODWORD(v6) = 1;
      do
      {
        v8 = *a1++;
        v7 = v8;
        v9 = v8 >> 1;
        v10 = *a2++;
        v6 = (v6 + ((v10 >> 1) + (v7 >> 1)) * ((v10 >> 1) + (v7 >> 1)));
        v5 = (v5 + (v9 - (v10 >> 1)) * (v9 - (v10 >> 1)));
        --v4;
      }

      while (v4);
      goto LABEL_11;
    }

LABEL_10:
    v6 = 1;
    v5 = 1;
    goto LABEL_11;
  }

  if (a4 < 1)
  {
    goto LABEL_10;
  }

  v11 = a4;
  LODWORD(v5) = 1;
  LODWORD(v6) = 1;
  do
  {
    v13 = *a1++;
    v12 = v13;
    v14 = *a2++;
    v6 = (v6 + v12 * v12);
    v5 = (v5 + v14 * v14);
    --v11;
  }

  while (v11);
LABEL_11:
  v15 = celt_sqrt(v6);
  v16 = celt_sqrt(v5);
  v17 = v16;
  if (v16 >= v15)
  {
    v24 = v15 >> 1;
    v25 = v24 * (celt_rcp(v16) >> 16);
    v26 = ((celt_rcp(v17) * v24) >> 15) + 2 * v25;
    v27 = v26 + (((celt_rcp(v17) >> 16) * ((v15 & 1) << 15)) >> 15);
    if (v27 >= 0x7FFF)
    {
      LOWORD(v27) = 0x7FFF;
    }

    v23 = 25736 - (((((((((9872 * v27 - 782663680) >> 16) * 2 * v27 - 1343488) >> 16) * 2 * v27 + 2147450880) >> 16) * v27 + 0x4000) >> 15) >> 1);
  }

  else
  {
    v18 = v16;
    v19 = v16 >> 1;
    v20 = v19 * (celt_rcp(v15) >> 16);
    v21 = ((celt_rcp(v15) * v19) >> 15) + 2 * v20;
    v22 = v21 + (((celt_rcp(v15) >> 16) * ((v18 & 1) << 15)) >> 15);
    if (v22 >= 0x7FFF)
    {
      LOWORD(v22) = 0x7FFF;
    }

    v23 = ((((((((9872 * v22 - 782663680) >> 16) * 2 * v22 - 1343488) >> 16) * 2 * v22 + 2147450880) >> 16) * v22 + 0x4000) >> 15 << 16) >> 17;
  }

  return ((20861 * v23) >> 15);
}

__int16 *exp_rotation1(__int16 *result, int a2, int a3, int a4, int a5)
{
  v5 = a2 - a3;
  if (a2 - a3 >= 1)
  {
    v6 = result;
    do
    {
      v7 = *v6;
      v8 = v6[a3];
      v6[a3] = (v7 * a5 + v8 * a4) >> 15;
      *v6++ = (v7 * a4 - v8 * a5) >> 15;
      --v5;
    }

    while (v5);
  }

  v9 = ~(2 * a3) + a2;
  if (v9 >= 0)
  {
    v10 = &result[v9];
    v11 = a2 - 2 * a3;
    do
    {
      v12 = *v10;
      v13 = v10[a3];
      v10[a3] = (v12 * a5 + v13 * a4) >> 15;
      *v10-- = (v12 * a4 - v13 * a5) >> 15;
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t isqrt32(unsigned int a1)
{
  LODWORD(result) = 0;
  v3 = (31 - __clz(a1)) >> 1;
  v4 = 1 << v3;
  do
  {
    v5 = (v4 + 2 * result) << v3;
    if (v5 <= a1)
    {
      v6 = v4;
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }

    a1 -= v5;
    result = v6 + result;
    v4 >>= 1;
  }

  while (v3-- > 0);
  return result;
}

uint64_t frac_div32(int a1, unsigned int a2)
{
  v2 = __clz(a2);
  v3 = v2 - 2;
  v4 = 2 - v2;
  if (a2 >> 30)
  {
    v5 = a1 >> v4;
  }

  else
  {
    v5 = a1 << v3;
  }

  v6 = a2 >> v4;
  v7 = a2 << v3;
  if (a2 >> 30)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  v9 = ((celt_rcp((v8 + 0x8000) >> 16) << 13) + 0x8000) >> 16;
  v10 = ((v5 >> 15) & 0xFFFFFFFE) * v9 + ((v9 * v5) >> 15);
  v11 = (((v5 >> 15) & 0xFFFE) * v9 + ((v9 * v5) >> 15)) * (v8 >> 16);
  v12 = v10 + 8 * v9 * ((((v5 + 2) >> 2) - 2 * (v8 >> 16) * (v10 >> 16) - ((((v10 >> 16) * v8) >> 15) + (v11 >> 15))) >> 16) + 4 * (((((v5 + 2) >> 2) - 2 * HIWORD(v8) * HIWORD(v10) - ((((v10 >> 16) * v8) >> 15) + (v11 >> 15))) * v9) >> 15);
  v13 = 4 * v12;
  if (v12 < -536870911)
  {
    v13 = -2147483647;
  }

  if (v12 <= 0x1FFFFFFF)
  {
    return v13;
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t celt_rcp(unsigned int a1)
{
  v1 = __clz(a1);
  v2 = a1 >> (16 - v1);
  if (!HIWORD(a1))
  {
    LOWORD(v2) = a1 << (v1 - 16);
  }

  v3 = v2 ^ 0xFFFF8000;
  v4 = ((-30840 * v3 + 2021130240) >> 16) - ((((((-30840 * v3 + 2021130240) >> 16) ^ 0x8000) + ((((-30840 * v3 + 2021130240) >> 16) * v3) >> 15)) * ((-30840 * v3 + 2021130240) >> 16)) >> 15);
  v5 = (v4 - ((2 * v4 * ((v4 ^ 0x8000) + ((v4 * v3) >> 15)) + 0x10000) >> 16));
  v6 = v5 << (v1 - 15);
  v7 = v5 >> (15 - v1);
  if (a1 >= 0x20000)
  {
    return v7;
  }

  else
  {
    return v6;
  }
}

uint64_t celt_rsqrt_norm(__int16 a1)
{
  v1 = a1 ^ 0xFFFF8000;
  v2 = 2 * v1 * ((13426 * v1 - 884080640) >> 16) + 1543831552;
  v3 = ((2 * ((((((v2 >> 16) * (v2 >> 16)) >> 15) * v1) >> 15) + (((v2 >> 16) * (v2 >> 16)) >> 15))) ^ 0x8000);
  return (((((((24576 * v3 - 0x40000000) >> 16) * v3) >> 15) * (v2 >> 16)) >> 15) + HIWORD(v2));
}

uint64_t celt_sqrt(uint64_t result)
{
  if (result)
  {
    if (result <= 0x3FFFFFFF)
    {
      v1 = __clz(result);
      v2 = (v1 >> 1) ^ 0xF;
      v3 = result >> (2 * (8 - (v1 >> 1)));
      if (v2 <= 7)
      {
        LOWORD(v3) = result << (-2 * (8 - (v1 >> 1)));
      }

      v4 = (2 * (v3 ^ 0xFFFF8000) * (((((2 * (v3 ^ 0xFFFF8000) * (((-1328 * (v3 ^ 0xFFFF8000)) >> 16) + 1699) - 197328896) >> 16) * (v3 ^ 0xFFFF8000)) >> 15) + 11561) + 1518796800) >> 16;
      v5 = v4 >> ((v1 >> 1) - 1);
      v6 = v4 << (1 - (v1 >> 1));
      if (v2 >= 0xE)
      {
        return v6;
      }

      else
      {
        return v5;
      }
    }

    else
    {
      return 0x7FFFLL;
    }
  }

  return result;
}

uint64_t celt_cos_norm(int a1)
{
  if ((a1 & 0x1FFFFu) <= 0x10000)
  {
    v1 = a1 & 0x1FFFF;
  }

  else
  {
    v1 = 0x20000 - (a1 & 0x1FFFF);
  }

  if ((v1 & 0x7FFF) != 0)
  {
    if (v1 >> 15)
    {
      v4 = ((-65536 * v1) >> 15) * -v1 + 0x8000;
      v5 = ((((2 * (v4 >> 16) * (((2147483022 * (v4 >> 16) + 0x4000) >> 15) + 8277) - 501383168) >> 16) * (v4 >> 16) + 0x4000) >> 15) - (v4 >> 16);
      if (v5 < 0)
      {
        return ((v5 ^ 0x7FFF) + 1);
      }

      else
      {
        return -32767;
      }
    }

    else
    {
      v2 = ((((2 * ((2 * v1 * v1 + 0x8000) >> 16) * (((2147483022 * ((2 * v1 * v1 + 0x8000) >> 16) + 0x4000) >> 15) + 8277) - 501383168) >> 16) * ((2 * v1 * v1 + 0x8000) >> 16) + 0x4000) >> 15) - ((2 * v1 * v1 + 0x8000) >> 16);
      if (v2 < 0)
      {
        return (v2 ^ 0x8000);
      }

      else
      {
        return 0x7FFF;
      }
    }
  }

  else
  {
    if ((v1 & 0x10000) != 0)
    {
      v3 = -32767;
    }

    else
    {
      v3 = 0x7FFF;
    }

    if ((v1 & 0x8000) != 0)
    {
      return 0;
    }
  }

  return v3;
}

void _celt_lpc(_WORD *a1, signed int *a2, int a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = *a2;
  if (a3 >= 1)
  {
    bzero(v26, 4 * a3);
  }

  if (v6)
  {
    v7 = 0;
    v8 = 0;
    v9 = -4;
    do
    {
      if (v8 == (a3 & ~(a3 >> 31)))
      {
        break;
      }

      v10 = 0;
      if (v8)
      {
        v11 = v26;
        v12 = v7;
        do
        {
          v13 = *v11++;
          v10 += 2 * (v13 >> 16) * (*(a2 + v12) >> 16) + ((*(a2 + v12) * (v13 >> 16)) >> 15) + (((*(a2 + v12) >> 16) * v13) >> 15);
          v12 -= 4;
        }

        while (v12);
        v10 *= 8;
      }

      v14 = -frac_div32((a2[v8 + 1] + v10) & 0xFFFFFFF8, v6);
      v26[v8] = v14 >> 3;
      v15 = v14 >> 16;
      if (v8)
      {
        v16 = 0;
        v17 = 2 * v15;
        v14 = v14;
        v18 = v9;
        do
        {
          v19 = v26[v16];
          v20 = *(v26 + v18);
          v26[v16] = v19 + v17 * (v20 >> 16) + ((v20 * v15) >> 15) + (((v20 >> 16) * v14) >> 15);
          *(v26 + v18) = v20 + v17 * (v19 >> 16) + ((v19 * v15) >> 15) + (((v19 >> 16) * v14) >> 15);
          ++v16;
          v18 -= 4;
        }

        while (v16 < (v8 + 1) >> 1);
      }

      else
      {
        v17 = 2 * v15;
        v14 = v14;
      }

      v21 = v17 * v15 + 2 * ((v15 * v14) >> 15);
      v6 = v6 - 2 * (v6 >> 16) * (v21 >> 16) - ((((v21 >> 16) * v6) >> 15) + (((v21 & 0xFFFE) * (v6 >> 16)) >> 15));
      v7 += 4;
      v9 += 4;
      ++v8;
    }

    while (v6 >= *a2 >> 10);
  }

  if (a3 >= 1)
  {
    v22 = a3;
    v23 = v26;
    do
    {
      v24 = *v23++;
      *a1++ = (v24 + 0x8000) >> 16;
      --v22;
    }

    while (v22);
  }

  v25 = *MEMORY[0x1E69E9840];
}

uint64_t celt_fir(__int16 *a1, uint64_t a2, uint64_t a3, int a4, int a5, _WORD *a6)
{
  v62 = *MEMORY[0x1E69E9840];
  v12 = 2 * a5;
  MEMORY[0x1EEE9AC00](a1);
  v14 = (&v56 - v13);
  bzero(&v56 - v13, v12);
  MEMORY[0x1EEE9AC00](v15);
  v60 = &v56 - v16;
  bzero(&v56 - v16, v17);
  if (a5 >= 1)
  {
    v21 = (a2 + 2 * a5 - 2);
    v22 = a5;
    v23 = v14;
    do
    {
      v24 = *v21--;
      *v23++ = v24;
      --v22;
    }

    while (v22);
    v25 = &a6[a5 - 1];
    v26 = a5;
    v27 = v60;
    do
    {
      v28 = *v25--;
      *v27++ = v28;
      --v26;
    }

    while (v26);
  }

  v29 = a4 - 1;
  if (a4 >= 1)
  {
    memcpy(&v60[v12], a1, (2 * a4));
  }

  if (a5 >= 1)
  {
    v30 = a5;
    do
    {
      *a6++ = a1[v29--];
      --v30;
    }

    while (v30);
  }

  v57 = a5;
  v58 = a3;
  v59 = a4;
  v31 = 0;
  if (a4 >= 4)
  {
    v32 = a1 + 2;
    v33 = (a3 + 4);
    v34 = v60;
    do
    {
      v61 = 0uLL;
      xcorr_kernel(v14, v34, &v61, a5, v18, v19, v20);
      v35 = v61.i32[1];
      v36 = *(v32 - 2) + ((v61.i32[0] + 2048) >> 12);
      if (v36 <= -32768)
      {
        v36 = -32768;
      }

      if (v36 >= 0x7FFF)
      {
        LOWORD(v36) = 0x7FFF;
      }

      *(v33 - 2) = v36;
      v37 = *(v32 - 1) + ((v35 + 2048) >> 12);
      if (v37 <= -32768)
      {
        v37 = -32768;
      }

      if (v37 >= 0x7FFF)
      {
        LOWORD(v37) = 0x7FFF;
      }

      *(v33 - 1) = v37;
      v38 = v61.i32[3];
      v39 = *v32 + ((v61.i32[2] + 2048) >> 12);
      if (v39 <= -32768)
      {
        v39 = -32768;
      }

      if (v39 >= 0x7FFF)
      {
        LOWORD(v39) = 0x7FFF;
      }

      *v33 = v39;
      v40 = v32[1] + ((v38 + 2048) >> 12);
      if (v40 <= -32768)
      {
        v40 = -32768;
      }

      if (v40 >= 0x7FFF)
      {
        LOWORD(v40) = 0x7FFF;
      }

      v33[1] = v40;
      v31 += 4;
      v32 += 4;
      v34 += 4;
      v33 += 4;
    }

    while (a4 - 3 > v31);
  }

  result = v59;
  v43 = v57;
  v42 = v58;
  if (v31 < v59)
  {
    v44 = v31;
    v45 = &v60[2 * v31];
    do
    {
      if (a5 < 1)
      {
        v53 = 0;
      }

      else
      {
        v46 = 0;
        v47 = v43;
        v48 = v14;
        v49 = v45;
        do
        {
          v51 = *v48++;
          v50 = v51;
          v52 = *v49;
          v49 += 2;
          v46 += v52 * v50;
          --v47;
        }

        while (v47);
        v53 = (v46 + 2048) >> 12;
      }

      v54 = v53 + a1[v44];
      if (v54 <= -32768)
      {
        v54 = -32768;
      }

      if (v54 >= 0x7FFF)
      {
        LOWORD(v54) = 0x7FFF;
      }

      *(v42 + 2 * v44++) = v54;
      v45 += 2;
    }

    while (v44 < result);
  }

  v55 = *MEMORY[0x1E69E9840];
  return result;
}

const __int16 *xcorr_kernel(const __int16 *result, __int16 *a2, int32x4_t *a3, int a4, double a5, double a6, int32x2_t a7)
{
  a7.i16[0] = *a2;
  a7.i16[2] = a2[1];
  v7 = (a2 + 3);
  v8 = a2[2];
  if (a4 < 4)
  {
    v27 = 0;
    v11 = 0;
    v28 = *a2;
    v29 = a2[1];
  }

  else
  {
    v9 = 0;
    v10 = *a3;
    v11 = a4 & 0x7FFFFFFC;
    do
    {
      *v12.i8 = vshr_n_s32(vshl_n_s32(a7, 0x10uLL), 0x10uLL);
      v13 = result + 2;
      v14 = result + 3;
      v15 = result + 4;
      v16 = *v7++;
      v17 = v16;
      v18 = vmovl_s16(v16);
      v20 = vld1_dup_s16(result);
      v19 = result + 1;
      v12.i32[2] = v8;
      v12.i32[3] = v18.i32[0];
      v21 = vmlaq_s32(v10, vmovl_s16(v20), v12);
      v22 = vld1_dup_s16(v19);
      v23 = vextq_s8(v12, vtrn2q_s32(v18, v12), 4uLL);
      v24 = vmlaq_s32(v21, vmovl_s16(v22), v23);
      v25 = vld1_dup_s16(v13);
      v26 = vmlaq_s32(v24, vmovl_s16(v25), vtrn2q_s32(v23, vuzp1q_s32(v23, v18)));
      *v23.i8 = vld1_dup_s16(v14);
      v10 = vmlal_s16(v26, *v23.i8, v16);
      v9 += 4;
      v8 = v16.i16[3];
      a7.i32[0] = v16.u16[1];
      a7.i32[1] = v16.u16[2];
      result = v15;
    }

    while (v9 < a4 - 3);
    v27 = v17.i16[0];
    *a3 = v10;
    v28 = v17.i16[1];
    result = v15;
    v29 = v17.i16[2];
  }

  v30 = v11 | 1;
  if (v11 < a4)
  {
    v32 = *result++;
    v31 = v32;
    v33 = v7->i16[0];
    v7 = (v7 + 2);
    v27 = v33;
    v34 = a3->i32[1] + v31 * v29;
    a3->i32[0] += v31 * v28;
    a3->i32[1] = v34;
    v35 = a3->i32[2] + v31 * v8;
    v36 = a3->i32[3] + v33 * v31;
    a3->i32[2] = v35;
    a3->i32[3] = v36;
  }

  v37 = v11 | 2;
  v38 = v27;
  if (v30 < a4)
  {
    v40 = *result++;
    v39 = v40;
    v41 = v7->i16[0];
    v7 = (v7 + 2);
    v28 = v41;
    v42 = a3->i32[1] + v39 * v8;
    a3->i32[0] += v39 * v29;
    a3->i32[1] = v42;
    v43 = a3->i32[2] + v39 * v38;
    v44 = a3->i32[3] + v41 * v39;
    a3->i32[2] = v43;
    a3->i32[3] = v44;
  }

  if (v37 < a4)
  {
    v45 = *result;
    v46 = a3->i32[1];
    v47 = v7->i16[0];
    a3->i32[0] += v45 * v8;
    a3->i32[1] = v46 + v45 * v38;
    v48 = a3->i32[3] + v47 * v45;
    a3->i32[2] += v45 * v28;
    a3->i32[3] = v48;
  }

  return result;
}

void celt_iir(int32x4_t *a1, __int16 *a2, uint64_t a3, uint64_t a4, int a5, _WORD *a6)
{
  v11 = a1;
  v67 = *MEMORY[0x1E69E9840];
  v12 = a5;
  MEMORY[0x1EEE9AC00](a1);
  v14 = (&v60 - v13);
  bzero(&v60 - v13, v15);
  v16 = a5 + a4;
  MEMORY[0x1EEE9AC00](v17);
  v64 = (&v60 - v18);
  bzero(&v60 - v18, v19);
  v22 = a5;
  if (a5 < 1)
  {
    v32 = 0;
    v29 = v64;
  }

  else
  {
    v23 = &a2[v12 - 1];
    v24 = a5;
    v25 = v14;
    do
    {
      v26 = *v23--;
      *v25++ = v26;
      --v24;
    }

    while (v24);
    v27 = &a6[v12 - 1];
    v28 = a5;
    v29 = v64;
    v30 = v64;
    do
    {
      v31 = *v27--;
      *v30++ = -v31;
      --v28;
    }

    while (v28);
    v32 = a5;
  }

  if (v32 < v16)
  {
    bzero(v64 + (2 * v32), 2 * (v16 + ~v32) + 2);
    v29 = v64;
  }

  v63 = v12;
  if (a4 < 4)
  {
    LODWORD(v33) = 0;
  }

  else
  {
    v33 = 0;
    v61 = a4;
    v62 = a3;
    v65 = (a4 - 3);
    v34 = &v29[v63 + 2];
    v35 = (a3 + 8);
    v60 = v11;
    v36 = v11;
    v37 = v29;
    do
    {
      v38 = *v36++;
      v66 = v38;
      xcorr_kernel(v14, v37, &v66, a5, *v38.i64, v20, v21);
      v39 = v66.i64[0];
      v40 = -((16 * v66.i32[0] + 0x8000) >> 16);
      *(v34 - 2) = v40;
      v41 = *a2;
      v42 = HIDWORD(v39) + v40 * v41;
      v43 = -((16 * v42 + 0x8000) >> 16);
      *(v35 - 2) = v39;
      *(v35 - 1) = v42;
      *(v34 - 1) = v43;
      v44 = a2[1];
      v45 = v66.i32[2] + v43 * v41 + v44 * v40;
      v46 = v66.i32[3] + v43 * v44 + -((16 * v45 + 0x8000) >> 16) * v41;
      v47 = a2[2];
      *v34 = -((16 * v45 + 0x8000) >> 16);
      v48 = v46 + v47 * v40;
      v33 += 4;
      v34[1] = -((16 * v48 + 0x8000) >> 16);
      *v35 = v45;
      v35[1] = v48;
      v35 += 4;
      v34 += 4;
      v37 += 4;
    }

    while (v33 < v65);
    LODWORD(a4) = v61;
    a3 = v62;
    v11 = v60;
    v29 = v64;
  }

  if (v33 < a4)
  {
    v49 = v33;
    v50 = &v29[v63];
    do
    {
      v51 = v11->i32[v49];
      if (a5 >= 1)
      {
        v52 = &v29[v49];
        v53 = a5;
        v54 = v14;
        do
        {
          v56 = *v54++;
          v55 = v56;
          v57 = *v52++;
          v51 -= v57 * v55;
          --v53;
        }

        while (v53);
      }

      v50[v49] = (v51 + 2048) >> 12;
      *(a3 + 4 * v49++) = v51;
    }

    while (v49 != a4);
  }

  if (a5 >= 1)
  {
    v58 = a4 - 1;
    do
    {
      *a6++ = *(a3 + 4 * v58--);
      --v22;
    }

    while (v22);
  }

  v59 = *MEMORY[0x1E69E9840];
}

uint64_t _celt_autocorr(char *a1, unsigned int *a2, uint64_t a3, int a4, int a5, int a6)
{
  v47[1] = *MEMORY[0x1E69E9840];
  MEMORY[0x1EEE9AC00](a1);
  v13 = v47 - v12;
  bzero(v47 - v12, v14);
  if (a4)
  {
    v15 = a6 - 1;
    if (a6 >= 1)
    {
      memcpy(v13, a1, (2 * a6));
    }

    v16 = v13;
    if (a4 >= 1)
    {
      v17 = 0;
      do
      {
        v18 = *(a3 + v17);
        *&v13[v17] = (v18 * *&a1[v17]) >> 15;
        *&v13[2 * v15] = (*&a1[2 * v15] * v18) >> 15;
        --v15;
        v17 += 2;
      }

      while (2 * a4 != v17);
      v16 = v13;
    }
  }

  else
  {
    v16 = a1;
  }

  v19 = (a6 << 7) | 1;
  if (a6)
  {
    v19 += (*v16 * *v16) >> 9;
  }

  v20 = a6 - a5;
  v21 = a6;
  if (a6 >= 2)
  {
    v22 = a6 & 1;
    v23 = &v16[2 * v22 + 2];
    do
    {
      v19 += ((*(v23 - 1) * *(v23 - 1)) >> 9) + ((*v23 * *v23) >> 9);
      v22 += 2;
      v23 += 2;
    }

    while (v22 < a6);
  }

  if (v19 < 0x400000)
  {
    v29 = 0;
    v13 = v16;
  }

  else
  {
    v24 = __clz(v19);
    v25 = ((11 - v24 + (((11 - v24) & 0x80) >> 7)) << 24) >> 25;
    if (a6 >= 1)
    {
      v26 = a6;
      v27 = v13;
      do
      {
        v28 = *v16;
        v16 += 2;
        *v27++ = (((1 << v25) >> 1) + v28) >> v25;
        --v26;
      }

      while (v26);
    }

    v29 = (2 * v25);
  }

  v30 = (a5 + 1);
  celt_pitch_xcorr_c(v13, v13, a2, v20, a5 + 1);
  if ((a5 & 0x80000000) == 0)
  {
    v31 = 0;
    v32 = 0;
    v33 = a5;
    v34 = v21 - v20;
    do
    {
      if (v32 >= v34)
      {
        v35 = 0;
      }

      else
      {
        v35 = 0;
        v36 = &v13[2 * v31 + 2 * v20];
        v37 = &v13[2 * v20];
        v38 = v33;
        do
        {
          v40 = *v37;
          v37 += 2;
          v39 = v40;
          v41 = *v36;
          v36 += 2;
          v35 += v41 * v39;
          --v38;
        }

        while (v38);
      }

      a2[v32++] += v35;
      ++v20;
      --v31;
      --v33;
    }

    while (v32 != v30);
  }

  v42 = *a2;
  if (!v29)
  {
    *a2 = ++v42;
  }

  if (v42 > 0xFFFFFFF)
  {
    if (v42 >> 29)
    {
      if (v42 >> 30)
      {
        v44 = 2;
      }

      else
      {
        v44 = 1;
      }

      if ((a5 & 0x80000000) == 0)
      {
        do
        {
          *a2 = *a2 >> v44;
          ++a2;
          --v30;
        }

        while (v30);
      }

      v29 = (v44 + v29);
    }
  }

  else
  {
    v43 = __clz(v42) - 3;
    if ((a5 & 0x80000000) == 0)
    {
      do
      {
        *a2++ <<= v43;
        --v30;
      }

      while (v30);
    }

    v29 = v29 - v43;
  }

  v45 = *MEMORY[0x1E69E9840];
  return v29;
}

void pitch_downsample(int **a1, char *a2, int a3, int a4)
{
  v4 = a2;
  v52 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  if (a3 < 1)
  {
    if (a4 != 2)
    {
      v19 = 0;
      v7 = 0;
      goto LABEL_28;
    }

    v7 = 0;
    v14 = 0;
    v13 = 0;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = a3;
    v9 = *a1;
    v10 = a3;
    do
    {
      v12 = *v9++;
      v11 = v12;
      if (v7 <= v12)
      {
        v7 = v11;
      }

      if (v6 >= v11)
      {
        v6 = v11;
      }

      --v10;
    }

    while (v10);
    if (v7 <= -v6)
    {
      v7 = -v6;
    }

    if (a4 != 2)
    {
      v19 = 0;
      goto LABEL_28;
    }

    v13 = 0;
    v14 = 0;
    v15 = a1[1];
    do
    {
      v17 = *v15++;
      v16 = v17;
      if (v14 <= v17)
      {
        v14 = v16;
      }

      if (v13 >= v16)
      {
        v13 = v16;
      }

      --v8;
    }

    while (v8);
  }

  if (v14 <= -v13)
  {
    v18 = -v13;
  }

  else
  {
    v18 = v14;
  }

  if (v7 <= v18)
  {
    v7 = v18;
  }

  v19 = 1;
LABEL_28:
  if (v7 <= 1)
  {
    v20 = 1;
  }

  else
  {
    v20 = v7;
  }

  v21 = __clz(v20) ^ 0x1F;
  if (v21 <= 0xA)
  {
    LOBYTE(v21) = 10;
  }

  v22 = v19 + v21 - 10;
  v23 = (a3 >> 1);
  if (v23 >= 2)
  {
    v24 = v5 + 3;
    v25 = a2 + 2;
    v26 = v23 - 1;
    do
    {
      *v25++ = (*(v24 - 1) + ((*v24 + *(v24 - 2)) >> 1)) >> 1 >> v22;
      v24 += 2;
      --v26;
    }

    while (v26);
  }

  v27 = (*v5 + (v5[1] >> 1)) >> 1 >> v22;
  *a2 = v27;
  if (v19)
  {
    v28 = a1[1];
    if (v23 >= 2)
    {
      v29 = v28 + 3;
      v30 = a2 + 2;
      v31 = v23 - 1;
      do
      {
        *v30++ += (*(v29 - 1) + ((*v29 + *(v29 - 2)) >> 1)) >> 1 >> v22;
        v29 += 2;
        --v31;
      }

      while (v31);
    }

    *a2 = ((*v28 + (v28[1] >> 1)) >> 1 >> v22) + v27;
  }

  _celt_autocorr(a2, &v50, 0, 0, 4, v23);
  v50 += v50 >> 13;
  v51 = vsubq_s32(vmlaq_s32(v51, vshrq_n_s32(v51, 0x10uLL), xmmword_1C382E110), vshrq_n_u32(vmull_u16(vmovn_s32(v51), 0x20001200080002), 0xFuLL));
  _celt_lpc(&v46, &v50, 4);
  v32 = 0;
  LOWORD(v33) = 0x7FFF;
  do
  {
    v33 = (29491 * v33) >> 15;
    *(&v46 + v32) = (v33 * *(&v46 + v32)) >> 15;
    v32 += 2;
  }

  while (v32 != 8);
  if (v23 >= 1)
  {
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = (v46 + 3277);
    v40 = (v47 + ((26214 * v46) >> 15));
    v41 = (v48 + ((26214 * v47) >> 15));
    v42 = (v49 + ((26214 * v48) >> 15));
    v43 = (52428 * v49) >> 16;
    do
    {
      v44 = v35 * v42 + v34 * v43 + v36 * v41 + v37 * v40;
      v34 = v35;
      v35 = v36;
      v36 = v37;
      v37 = v38;
      v38 = *v4;
      *v4 += (v44 + v37 * v39 + 2048) >> 12;
      v4 += 2;
      --v23;
    }

    while (v23);
  }

  v45 = *MEMORY[0x1E69E9840];
}

uint64_t celt_pitch_xcorr_c(__int16 *a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  if (a5 < 4)
  {
    LODWORD(v5) = 0;
    v6 = 1;
  }

  else
  {
    v5 = 0;
    LODWORD(v6) = 1;
    do
    {
      v7 = (a2 + 2 * v5);
      v8 = *v7;
      v9 = v7[1];
      v10 = v7 + 3;
      v11 = v7[2];
      if (a4 < 4)
      {
        v15 = 0;
        v14 = 0;
        v13 = 0;
        v12 = 0;
        v40 = 0;
        v41 = 0;
        v36 = a1;
      }

      else
      {
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = a1;
        do
        {
          v18 = *v17;
          v19 = *v10;
          v20 = v15 + v18 * v8;
          v21 = v14 + v18 * v9;
          v22 = v13 + v18 * v11;
          v23 = v12 + v19 * v18;
          v24 = v17[1];
          v25 = v10[1];
          v8 = v10[1];
          v26 = v20 + v24 * v9;
          v27 = v21 + v24 * v11;
          v28 = v22 + v24 * v19;
          v29 = v23 + v25 * v24;
          v30 = v17[2];
          v31 = v10[2];
          v9 = v10[2];
          v32 = v26 + v30 * v11;
          v33 = v27 + v30 * v19;
          v34 = v28 + v30 * v25;
          v35 = v29 + v31 * v30;
          v36 = v17 + 4;
          v37 = v17[3];
          v38 = v10 + 4;
          v39 = v10[3];
          v11 = v39;
          v15 = v32 + v37 * v19;
          v14 = v33 + v37 * v25;
          v13 = v34 + v37 * v31;
          v12 = v35 + v39 * v37;
          v16 += 4;
          v17 = v36;
          v10 = v38;
        }

        while (v16 < a4 - 3);
        v40 = v19;
        v41 = a4 & 0x7FFFFFFC;
        v10 = v38;
      }

      if (v41 < a4)
      {
        v43 = *v36++;
        v42 = v43;
        v44 = *v10++;
        v40 = v44;
        v15 += v42 * v8;
        v14 += v42 * v9;
        v13 += v42 * v11;
        v12 += v44 * v42;
      }

      if ((v41 | 1) < a4)
      {
        v46 = *v36++;
        v45 = v46;
        v47 = *v10++;
        v8 = v47;
        v15 += v45 * v9;
        v14 += v45 * v11;
        v13 += v45 * v40;
        v12 += v47 * v45;
      }

      if ((v41 | 2) < a4)
      {
        v48 = *v36;
        v15 += v48 * v11;
        v14 += v48 * v40;
        v13 += v48 * v8;
        v12 += *v10 * v48;
      }

      v49 = (a3 + 4 * v5);
      *v49 = v15;
      v49[1] = v14;
      v49[2] = v13;
      v49[3] = v12;
      if (v15 <= v14)
      {
        v50 = v14;
      }

      else
      {
        v50 = v15;
      }

      if (v13 <= v12)
      {
        v13 = v12;
      }

      if (v50 <= v13)
      {
        v50 = v13;
      }

      if (v6 <= v50)
      {
        v6 = v50;
      }

      else
      {
        v6 = v6;
      }

      v5 += 4;
    }

    while (v5 < (a5 - 3));
  }

  if (v5 < a5)
  {
    v51 = v5;
    v52 = (a2 + 2 * v5);
    do
    {
      if (a4 < 1)
      {
        v53 = 0;
      }

      else
      {
        v53 = 0;
        v54 = a4;
        v55 = a1;
        v56 = v52;
        do
        {
          v58 = *v55++;
          v57 = v58;
          v59 = *v56++;
          v53 += v59 * v57;
          --v54;
        }

        while (v54);
      }

      *(a3 + 4 * v51) = v53;
      if (v6 <= v53)
      {
        v6 = v53;
      }

      else
      {
        v6 = v6;
      }

      ++v51;
      ++v52;
    }

    while (v51 != a5);
  }

  return v6;
}

uint64_t pitch_search(__int16 *a1, __int16 *a2, int a3, int a4, _DWORD *a5)
{
  v76 = a5;
  v77 = a2;
  v78[1] = *MEMORY[0x1E69E9840];
  v78[0] = 0;
  v7 = a4 + a3;
  v75 = a3;
  v8 = (a3 >> 2);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v74[-v9];
  bzero(&v74[-v9], v11);
  v12 = (v7 >> 2);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v74[-v15];
  v17 = (a4 >> 1);
  MEMORY[0x1EEE9AC00](v14);
  v20 = &v74[-v19];
  if (v8 >= 1)
  {
    v21 = v8;
    v22 = v10;
    v23 = a1;
    do
    {
      v24 = *v23;
      v23 += 2;
      *v22++ = v24;
      --v21;
    }

    while (v21);
  }

  bzero(v16, v18);
  if (v12 >= 1)
  {
    v25 = (v7 >> 2);
    v26 = v16;
    v27 = v77;
    do
    {
      v28 = *v27;
      v27 += 2;
      *v26++ = v28;
      --v25;
    }

    while (v25);
  }

  if (v8 < 1)
  {
    v30 = 0;
    v29 = 0;
  }

  else
  {
    LOWORD(v29) = 0;
    LOWORD(v30) = 0;
    v31 = v10;
    v32 = v8;
    do
    {
      v34 = *v31++;
      v33 = v34;
      if (v30 <= v34)
      {
        LOWORD(v30) = v33;
      }

      if (v29 >= v33)
      {
        LOWORD(v29) = v33;
      }

      --v32;
    }

    while (v32);
    v30 = v30;
    v29 = v29;
  }

  if (v30 <= -v29)
  {
    v35 = -v29;
  }

  else
  {
    v35 = v30;
  }

  if (v12 < 1)
  {
    v37 = 0;
    v36 = 0;
  }

  else
  {
    LOWORD(v36) = 0;
    LOWORD(v37) = 0;
    v38 = v16;
    v39 = (v7 >> 2);
    do
    {
      v41 = *v38++;
      v40 = v41;
      if (v37 <= v41)
      {
        LOWORD(v37) = v40;
      }

      if (v36 >= v40)
      {
        LOWORD(v36) = v40;
      }

      --v39;
    }

    while (v39);
    v37 = v37;
    v36 = v36;
  }

  v42 = 0;
  if (v37 <= -v36)
  {
    v43 = -v36;
  }

  else
  {
    v43 = v37;
  }

  if (v35 <= v43)
  {
    v35 = v43;
  }

  if (v35 <= 1)
  {
    v35 = 1;
  }

  v44 = __clz(v35);
  if ((v44 ^ 0x1C) >= 0xC)
  {
    v45 = 20 - v44;
    if (v8 >= 1)
    {
      v46 = v8;
      v47 = v10;
      do
      {
        *v47++ >>= v45;
        --v46;
      }

      while (v46);
    }

    if (v12 >= 1)
    {
      v48 = v16;
      do
      {
        *v48++ >>= v45;
        --v12;
      }

      while (v12);
    }

    v42 = 2 * v45;
  }

  bzero(v20, 4 * v17);
  v49 = celt_pitch_xcorr_c(v10, v16, v20, v8, a4 >> 2);
  find_best_pitch(v20, v16, v8, a4 >> 2, v78, 0, v49);
  if (v17 <= 0)
  {
    LODWORD(v53) = v75 >> 1;
    v54 = 1;
  }

  else
  {
    v50 = 0;
    v51 = 2 * LODWORD(v78[0]);
    v52 = 2 * HIDWORD(v78[0]);
    v53 = (v75 >> 1);
    v54 = 1;
    v55 = v77;
    do
    {
      *&v20[4 * v50] = 0;
      v56 = v50 - v51;
      if (v50 - v51 < 0)
      {
        v56 = v51 - v50;
      }

      if (v56 < 3)
      {
        goto LABEL_51;
      }

      v57 = v50 - v52;
      if (v50 - v52 < 0)
      {
        v57 = v52 - v50;
      }

      if (v57 <= 2)
      {
LABEL_51:
        if (v53 < 1)
        {
          v58 = 0;
        }

        else
        {
          v58 = 0;
          v59 = v53;
          v60 = a1;
          v61 = v55;
          do
          {
            v63 = *v60++;
            v62 = v63;
            v64 = *v61++;
            v58 += (v64 * v62) >> v42;
            --v59;
          }

          while (v59);
        }

        if (v58 < 0)
        {
          v65 = -1;
        }

        else
        {
          v65 = v58;
        }

        *&v20[4 * v50] = v65;
        if (v54 <= v58)
        {
          v54 = v58;
        }
      }

      ++v50;
      ++v55;
    }

    while (v50 != v17);
  }

  result = find_best_pitch(v20, v77, v53, a4 >> 1, v78, v42 | 1u, v54);
  v67 = 0;
  if (SLODWORD(v78[0]) < 1)
  {
    v68 = v76;
  }

  else
  {
    v68 = v76;
    if (SLODWORD(v78[0]) < v17 - 1)
    {
      v69 = &v20[4 * LODWORD(v78[0])];
      v70 = *(v69 - 1);
      v71 = *v69;
      v72 = v69[1];
      if (v72 - v70 <= (45876 * ((v71 - v70) >> 16) + ((22938 * (v71 - v70)) >> 15)))
      {
        v67 = v70 - v72 > (45876 * ((v71 - v72) >> 16) + ((22938 * (v71 - v72)) >> 15));
      }

      else
      {
        v67 = -1;
      }
    }
  }

  *v68 = v67 + 2 * LODWORD(v78[0]);
  v73 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t find_best_pitch(uint64_t result, __int16 *a2, int a3, int a4, uint64_t a5, char a6, unsigned int a7)
{
  *a5 = 0x100000000;
  if (a3 < 1)
  {
    v8 = 1;
  }

  else
  {
    v7 = a3;
    v8 = 1;
    v9 = a2;
    do
    {
      v10 = *v9++;
      v8 += (v10 * v10) >> a6;
      --v7;
    }

    while (v7);
  }

  if (a4 >= 1)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = __clz(a7);
    v16 = a7 >> 15;
    v17 = v15 - 17;
    v18 = 17 - v15;
    v19 = -1;
    v20 = -1;
    v21 = a4;
    v22 = &a2[a3];
    do
    {
      v23 = *(result + 4 * v12);
      if (v23 >= 1)
      {
        v24 = v23 >> v18;
        v25 = v23 << v17;
        if (v16)
        {
          LOWORD(v25) = v24;
        }

        v26 = v25 * v25;
        v27 = (v26 >> 15);
        v28 = (v8 >> 15) & 0xFFFFFFFE;
        if ((((v14 >> 15) & 0xFFFFFFFE) * v27 + ((v27 * v14) >> 15)) > (v28 * v20 + ((v8 * v20) >> 15)))
        {
          v29 = v26 >> 15;
          if ((((v13 >> 15) & 0xFFFFFFFE) * v27 + ((v27 * v13) >> 15)) <= (v28 * v19 + ((v8 * v19) >> 15)))
          {
            *(a5 + 4) = v12;
            v20 = v29;
            v14 = v8;
          }

          else
          {
            *a5 = v12;
            *(a5 + 4) = v11;
            v11 = v12;
            v20 = v19;
            v19 = v29;
            v14 = v13;
            v13 = v8;
          }
        }
      }

      v8 = ((v22[v12] * v22[v12]) >> a6) + v8 - ((a2[v12] * a2[v12]) >> a6);
      if (v8 <= 1)
      {
        v8 = 1;
      }

      ++v12;
    }

    while (v21 != v12);
  }

  return result;
}

uint64_t ec_laplace_decode(uint64_t *a1, unsigned int a2, int a3)
{
  v6 = ec_decode_bin(a1, 15);
  if (v6 >= a2)
  {
    v9 = (0x4000 - a3) * (32736 - a2);
    v10 = (v9 >> 15) + 1;
    if (v9 >= 0x8000)
    {
      v11 = 1;
      v12 = a2;
      while (1)
      {
        a2 = v12 + 2 * v10;
        if (v6 < a2)
        {
          break;
        }

        ++v11;
        v13 = ((2 * v10 - 2) * a3) >> 15;
        v10 = v13 + 1;
        v12 = a2;
        if (!v13)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
      v11 = 1;
LABEL_8:
      v11 += (v6 - a2) >> 1;
      v12 = ((v6 - a2) & 0xFFFFFFFE) + a2;
    }

    if (v6 >= v12 + v10)
    {
      v7 = v11;
    }

    else
    {
      v7 = -v11;
    }

    if (v6 >= v12 + v10)
    {
      v8 = v12 + v10;
    }

    else
    {
      v8 = v12;
    }

    a2 = v10;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  if (a2 + v8 >= 0x8000)
  {
    v14 = 0x8000;
  }

  else
  {
    v14 = a2 + v8;
  }

  ec_dec_update(a1, v8, v14, 0x8000);
  return v7;
}

uint64_t *ec_encode(uint64_t *result, int a2, int a3, unsigned int a4)
{
  v4 = *(result + 8);
  v5 = v4 / a4;
  if (a2)
  {
    *(result + 9) += v4 + v5 * (a2 - a4);
    v6 = v5 * (a3 - a2);
  }

  else
  {
    v6 = v4 + v5 * (a3 - a4);
  }

  *(result + 8) = v6;
  return ec_enc_normalize(result);
}

uint64_t *ec_enc_normalize(uint64_t *result)
{
  if (*(result + 8) <= 0x800000u)
  {
    v1 = result;
    v2 = *(result + 9);
    do
    {
      result = ec_enc_carry_out(v1, v2 >> 23);
      v2 = (*(v1 + 9) & 0x7FFFFF) << 8;
      v3 = *(v1 + 8) << 8;
      *(v1 + 8) = v3;
      *(v1 + 9) = v2;
      *(v1 + 6) += 8;
    }

    while (v3 < 0x800001);
  }

  return result;
}

uint64_t *ec_enc_bit_logp(uint64_t *result, int a2, char a3)
{
  v3 = *(result + 8);
  v4 = v3 >> a3;
  v5 = v3 - (v3 >> a3);
  if (a2)
  {
    *(result + 9) += v5;
    v5 = v4;
  }

  *(result + 8) = v5;
  return ec_enc_normalize(result);
}

uint64_t *ec_enc_uint(uint64_t *a1, unsigned int a2, unsigned int a3)
{
  v5 = a3 - 1;
  if (a3 - 1 < 0x100)
  {

    return ec_encode(a1, a2, a2 + 1, a3);
  }

  else
  {
    v6 = __clz(v5);
    v7 = 24 - v6;
    ec_encode(a1, a2 >> (24 - v6), (a2 >> (24 - v6)) + 1, (v5 >> (24 - v6)) + 1);

    return ec_enc_bits(a1, a2 & ~(-1 << v7), v7);
  }
}

uint64_t *ec_enc_bits(uint64_t *result, int a2, int a3)
{
  v3 = *(result + 4);
  v4 = *(result + 5);
  v5 = v4 + a3;
  if ((v4 + a3) < 0x21)
  {
    v11 = *(result + 5);
  }

  else
  {
    do
    {
      v7 = *(result + 2);
      v6 = *(result + 3);
      if (v6 + *(result + 7) >= v7)
      {
        v8 = -1;
      }

      else
      {
        v8 = 0;
        v9 = *result;
        v10 = v6 + 1;
        *(result + 3) = v10;
        *(v9 + v7 - v10) = v3;
      }

      *(result + 12) |= v8;
      v3 >>= 8;
      v11 = v4 - 8;
      v12 = v4 <= 15;
      v4 -= 8;
    }

    while (!v12);
    v5 = a3 + v11;
  }

  *(result + 4) = (a2 << v11) | v3;
  *(result + 5) = v5;
  *(result + 6) += a3;
  return result;
}

uint64_t *ec_enc_carry_out(uint64_t *result, int a2)
{
  if (a2 == 255)
  {
    ++*(result + 10);
  }

  else
  {
    v2 = *(result + 11);
    if ((v2 & 0x80000000) == 0)
    {
      v3 = *(result + 7);
      if ((*(result + 3) + v3) >= *(result + 2))
      {
        v4 = -1;
      }

      else
      {
        v4 = 0;
        v5 = *result;
        *(result + 7) = v3 + 1;
        *(v5 + v3) = v2 + BYTE1(a2);
      }

      *(result + 12) |= v4;
    }

    for (i = *(result + 10); i; *(result + 10) = i)
    {
      v7 = *(result + 7);
      if ((*(result + 3) + v7) >= *(result + 2))
      {
        v8 = -1;
      }

      else
      {
        v8 = 0;
        v9 = *result;
        *(result + 7) = v7 + 1;
        *(v9 + v7) = BYTE1(a2) - 1;
        i = *(result + 10);
      }

      *(result + 12) |= v8;
      --i;
    }

    *(result + 11) = a2;
  }

  return result;
}

uint64_t *ec_dec_init(uint64_t *result, unsigned __int8 *a2, int a3)
{
  *result = a2;
  *(result + 2) = a3;
  *(result + 12) = xmmword_1C382E120;
  *(result + 28) = 0x8000000000;
  if (a3)
  {
    *(result + 7) = 1;
    v3 = *a2;
  }

  else
  {
    v3 = 0;
  }

  *(result + 9) = (v3 >> 1) ^ 0x7F;
  *(result + 11) = v3;
  *(result + 12) = 0;
  return ec_dec_normalize(result);
}

uint64_t *ec_dec_normalize(uint64_t *result)
{
  v1 = *(result + 8);
  if (v1 <= 0x800000)
  {
    v2 = *(result + 2);
    v3 = *(result + 11);
    v4 = *(result + 7);
    v5 = *(result + 9);
    v6 = *(result + 6) + 8;
    do
    {
      *(result + 6) = v6;
      *(result + 8) = v1 << 8;
      if (v4 >= v2)
      {
        v8 = 0;
      }

      else
      {
        v7 = *result;
        *(result + 7) = v4 + 1;
        v8 = *(v7 + v4++);
      }

      v5 = (((v8 | (v3 << 8)) >> 1) | ((v5 & 0x7FFFFF) << 8)) ^ 0xFF;
      *(result + 11) = v8;
      *(result + 9) = v5;
      v6 += 8;
      v3 = v8;
      v9 = v1 > 0x8000;
      v1 <<= 8;
    }

    while (!v9);
  }

  return result;
}

uint64_t ec_decode(_DWORD *a1, unsigned int a2)
{
  v2 = a1[9];
  v3 = a1[8] / a2;
  a1[10] = v3;
  v4 = v2 / v3 + 1;
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v5)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t ec_decode_bin(_DWORD *a1, char a2)
{
  v2 = a1[9];
  v3 = a1[8] >> a2;
  a1[10] = v3;
  v4 = v2 / v3 + 1;
  v5 = 1 << a2 >= v4;
  v6 = (1 << a2) - v4;
  if (v5)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t *ec_dec_update(uint64_t *result, int a2, int a3, int a4)
{
  v4 = *(result + 10);
  v5 = v4 * (a4 - a3);
  *(result + 9) -= v5;
  if (a2)
  {
    v6 = v4 * (a3 - a2);
  }

  else
  {
    v6 = *(result + 8) - v5;
  }

  *(result + 8) = v6;
  return ec_dec_normalize(result);
}

BOOL ec_dec_bit_logp(uint64_t a1, char a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 36);
  v4 = v2 >> a2;
  if (v3 >= v2 >> a2)
  {
    *(a1 + 36) = v3 - (v2 >> a2);
  }

  v5 = v2 - v4;
  v6 = v3 < v4;
  if (v3 >= v4)
  {
    v4 = v5;
  }

  *(a1 + 32) = v4;
  ec_dec_normalize(a1);
  return v6;
}

uint64_t ec_dec_icdf(uint64_t a1, unsigned __int8 *a2, char a3)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 36);
  v5 = v4 >> a3;
  LODWORD(v6) = -1;
  do
  {
    v7 = v4;
    v8 = *a2++;
    v4 = v5 * v8;
    v6 = (v6 + 1);
  }

  while (v3 < v5 * v8);
  *(a1 + 32) = v7 - v4;
  *(a1 + 36) = v3 - v4;
  ec_dec_normalize(a1);
  return v6;
}

uint64_t ec_dec_uint(uint64_t a1, unsigned int a2)
{
  v3 = a2 - 1;
  if (v3 < 0x100)
  {
    v14 = *(a1 + 36);
    v15 = *(a1 + 32) / a2;
    *(a1 + 40) = v15;
    v16 = v14 / v15 + 1;
    v10 = a2 >= v16;
    v17 = a2 - v16;
    if (v10)
    {
      v13 = v17;
    }

    else
    {
      v13 = 0;
    }

    ec_dec_update(a1, v13, v13 + 1, a2);
  }

  else
  {
    v4 = __clz(v3);
    v5 = 24 - v4;
    v6 = (v3 >> (24 - v4)) + 1;
    v7 = *(a1 + 36);
    v8 = *(a1 + 32) / v6;
    *(a1 + 40) = v8;
    v9 = v7 / v8 + 1;
    v10 = v6 >= v9;
    v11 = v6 - v9;
    if (v10)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    ec_dec_update(a1, v12, v12 + 1, v6);
    v13 = (v12 << v5) | ec_dec_bits(a1, v5);
    if (v13 > v3)
    {
      *(a1 + 48) = 1;
      return v3;
    }
  }

  return v13;
}

uint64_t ec_dec_bits(uint64_t *a1, unsigned int a2)
{
  v2 = *(a1 + 4);
  v3 = *(a1 + 5);
  if (v3 >= a2)
  {
    v8 = *(a1 + 5);
  }

  else
  {
    v4 = *(a1 + 2);
    v5 = *(a1 + 3);
    do
    {
      if (v5 >= v4)
      {
        v7 = 0;
      }

      else
      {
        v6 = *a1;
        *(a1 + 3) = ++v5;
        v7 = *(v6 + v4 - v5);
      }

      v2 |= v7 << v3;
      v8 = v3 + 8;
      v9 = v3 < 17;
      v3 += 8;
    }

    while (v9);
  }

  *(a1 + 4) = v2 >> a2;
  *(a1 + 5) = v8 - a2;
  *(a1 + 6) += a2;
  return v2 & ~(-1 << a2);
}

uint64_t ec_tell_frac(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = __clz(v1);
  v3 = 32 - v2;
  v4 = v1 >> (16 - v2);
  for (i = 4; i > 1; --i)
  {
    v6 = v4 * v4;
    v3 = __PAIR64__(v3, v6) >> 31;
    v4 = v6 >> 15 >> (v6 < 0);
  }

  return 8 * *(a1 + 24) - v3;
}

void denormalise_bands(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8)
{
  v11 = 0;
  v12 = 0;
  v13 = *(a1 + 24);
  v14 = *(a1 + 40);
  v40 = a5;
  v39 = *(v13 + 2 * a5);
  v15 = v39 * a8;
  v38 = a2 + 2 * v15;
  v16 = a6;
  v17 = *(v13 + 2 * a6);
  v44 = v17 * a8;
  v45 = v15;
  v41 = a3 + 4 * (v15 - 1) + 4;
  v42 = 4 * v15;
  v37 = 4 * ((v14 - v17) * a8 - 1);
  v18 = v14 * a8;
  if (a7 <= 1)
  {
    v19 = 1;
  }

  else
  {
    v19 = a7;
  }

  v43 = v19;
  v49 = v18;
  do
  {
    v20 = v11 * v18;
    if (v45 < 1)
    {
      v21 = (a3 + 4 * v20);
    }

    else
    {
      v21 = (v41 + 4 * v12);
      bzero((a3 + 4 * v18 * v11), v42);
    }

    if (a5 < a6)
    {
      v22 = (v38 + 2 * v20);
      LOWORD(v23) = v39;
      v24 = v40;
      do
      {
        v25 = v23;
        v26 = v24 + 1;
        v23 = *(v13 + 2 * (v24 + 1));
        v27 = v25 * a8;
        v28 = v23 * a8;
        v29 = *(a4 + 2 * v11 * *(a1 + 8) + 2 * v24) + (eMeans[v24] << 6);
        v30 = v29 >> 10;
        if (v30 >= -15)
        {
          v31 = 16 - v30;
          v32 = ((((((326528 * (v29 & 0x3FFu)) >> 16) + 14819) * 32 * (v29 & 0x3FF) + 1494482944) >> 16) * 32 * (v29 & 0x3FF) + 1073676288) >> 16;
          if (v30 > 16)
          {
            if (v31 == -1)
            {
              v33 = -1;
            }

            else
            {
              v33 = -2;
            }

            if (v31 >= 0xFFFFFFFE)
            {
              v34 = v32;
            }

            else
            {
              v34 = 0x7FFF;
            }

            do
            {
              v35 = *v22++;
              *v21++ = (v34 * v35) << -v33;
              ++v27;
            }

            while (v27 < v28);
            goto LABEL_22;
          }
        }

        else
        {
          LOBYTE(v31) = 0;
          v32 = 0;
        }

        do
        {
          v36 = *v22++;
          *v21++ = (v32 * v36) >> v31;
          ++v27;
        }

        while (v27 < v28);
LABEL_22:
        v24 = v26;
      }

      while (v26 != v16);
    }

    v18 = v49;
    if (v44 < v49)
    {
      bzero(v21, v37 + 4);
      v18 = v49;
    }

    ++v11;
    v12 += v18;
  }

  while (v11 != v43);
}

__int16 *anti_collapse(__int16 *result, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13)
{
  if (a7 < a8)
  {
    v14 = result;
    v15 = 1 << a4;
    if (1 << a4 <= 1)
    {
      v15 = 1;
    }

    v72 = a6;
    if (a5 <= 1)
    {
      v17 = 1;
    }

    else
    {
      v17 = a5;
    }

    v68 = v17;
    v18 = a7;
    v63 = a8;
    v64 = a5;
    v19 = -v15;
    v69 = result;
    do
    {
      v66 = v18 + 1;
      v20 = *(*(v14 + 3) + 2 * (v18 + 1)) - *(*(v14 + 3) + 2 * v18);
      v71 = v20 << a4;
      v21 = (*(a12 + 4 * v18) + 1) / (v20 << a4);
      v22 = (-8388608 * v21) >> 26;
      if (v22 <= 14)
      {
        if (v22 >= -15)
        {
          v24 = ((((((20408 * ((-2048 * v21) & 0x3800u)) >> 16) + 14819) * 2 * ((-2048 * v21) & 0x3800) + 1494482944) >> 16) * 2 * ((-2048 * v21) & 0x3800) + 1073676288) >> 16;
          if (v22 > -3)
          {
            v23 = v24 << (v22 + 2);
          }

          else
          {
            v23 = v24 >> (-2 - v22);
          }
        }

        else
        {
          v23 = 0;
        }
      }

      else
      {
        v23 = 2130706432;
      }

      v25 = v23 >> 1;
      if (v25 >= 0x7FFF)
      {
        v26 = 0x7FFF;
      }

      else
      {
        v26 = v25;
      }

      v75 = (__clz(v71) >> 1) ^ 0xF;
      result = celt_rsqrt_norm(v71 << (14 - 2 * v75));
      v74 = result;
      v27 = 0;
      v28 = (v26 >> 1);
      v29 = a3 + v18 * v64;
      v14 = v69;
      v30 = a5;
      v32 = v68;
      v31 = a11;
      v34 = a9;
      v33 = a10;
      v67 = v28;
      do
      {
        v35 = *(v14 + 2);
        v36 = v18 + v35 * v27;
        LOWORD(v37) = *(v33 + 2 * v36);
        v38 = *(v31 + 2 * v36);
        if (v30 == 1)
        {
          v39 = v18 + v35;
          if (v37 <= *(v33 + 2 * v39))
          {
            LOWORD(v37) = *(v33 + 2 * v39);
          }

          v40 = *(v31 + 2 * v39);
          if (v38 <= v40)
          {
            v38 = v40;
          }
        }

        v41 = *(v34 + 2 * v36);
        v37 = v37;
        if (v37 >= v38)
        {
          v37 = v38;
        }

        v42 = v41 - v37;
        if (v42 >= 0x4000)
        {
          LOWORD(v47) = 0;
        }

        else
        {
          v43 = 0;
          v44 = -(v42 & ~(v42 >> 31));
          v45 = (-65536 * (v42 & ~(v42 >> 31))) >> 26;
          if (v45 >= -15)
          {
            v46 = ((((((326528 * (v44 & 0x3FFu)) >> 16) + 14819) * 32 * (v44 & 0x3FF) + 1494482944) >> 16) * 32 * (v44 & 0x3FF) + 1073676288) >> 16;
            if (v45 > -3)
            {
              v43 = v46 << (v45 + 2);
            }

            else
            {
              v43 = v46 >> (-2 - v45);
            }
          }

          v47 = v43 >> 1;
          if (v47 >= 0x3FFF)
          {
            LOWORD(v47) = 0x3FFF;
          }

          LOWORD(v47) = 2 * v47;
        }

        v48 = v47;
        if (v47 >= 23169)
        {
          v48 = 23169;
        }

        v49 = (23170 * v48) >> 14;
        if (a4 == 3)
        {
          LOWORD(v47) = v49;
        }

        if (v28 >= v47)
        {
          v47 = v47;
        }

        else
        {
          v47 = v28;
        }

        if (a4 != 31)
        {
          v50 = 0;
          v51 = 0;
          v52 = ((v47 >> 1) * v74) >> 15 >> v75;
          result = (a2 + 2 * v27 * v72 + 2 * (*(*(v14 + 3) + 2 * v18) << a4));
          while (2)
          {
            v53 = 0;
            while (1)
            {
              v54 = (1 << (v51 + v53)) & *(v29 + v27);
              if (!v54 && v20 >= 1)
              {
                break;
              }

              if (!v54)
              {
                v50 = 1;
              }

              if (!(v19 + v51 + ++v53))
              {
                if (!v50)
                {
                  goto LABEL_62;
                }

                goto LABEL_61;
              }
            }

            v56 = 0;
            do
            {
              a13 = 1664525 * a13 + 1013904223;
              if ((a13 & 0x8000) != 0)
              {
                v57 = v52;
              }

              else
              {
                v57 = -v52;
              }

              result[v53 + v51 + (v56++ << a4)] = v57;
            }

            while (v20 != v56);
            v58 = v51 + v53;
            v51 += v53 + 1;
            v59 = v58 + v19;
            v50 = 1;
            if (v59 != -1)
            {
              continue;
            }

            break;
          }

LABEL_61:
          v60 = v18;
          v61 = v19;
          v62 = v29;
          result = renormalise_vector(result, v71, 0x7FFF);
          v29 = v62;
          v19 = v61;
          v18 = v60;
          v28 = v67;
          v34 = a9;
          v33 = a10;
          v32 = v68;
          v31 = a11;
          v14 = v69;
          v30 = a5;
        }

LABEL_62:
        ++v27;
      }

      while (v27 != v32);
      v18 = v66;
    }

    while (v66 != v63);
  }

  return result;
}

__int16 *haar1(__int16 *result, int a2, unsigned int a3)
{
  if (a3 >= 1)
  {
    v3 = 0;
    v4 = (a2 >> 1);
    v5 = a3;
    v6 = 4 * a3;
    v7 = 4 * a3;
    v8 = &result[a3];
    do
    {
      if (v4 >= 1)
      {
        v9 = v4;
        v10 = v8;
        v11 = result;
        do
        {
          v12 = 46340 * *v11;
          v13 = 46340 * *v10;
          *v11 = HIWORD(v13) + HIWORD(v12);
          *v10 = HIWORD(v12) - HIWORD(v13);
          v11 = (v11 + v6);
          v10 = (v10 + v7);
          --v9;
        }

        while (v9);
      }

      ++v3;
      ++result;
      ++v8;
    }

    while (v3 != v5);
  }

  return result;
}

void quant_all_bands(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __int16 *a8, uint64_t a9, int a10, int a11, int a12, unsigned int a13, uint64_t a14, int a15, int a16, uint64_t a17, int a18, unsigned int a19, _DWORD *a20)
{
  v212 = a8;
  v197 = a5;
  v211 = a4;
  v23 = a1;
  v208 = a13;
  LODWORD(v209) = a11;
  v222 = *MEMORY[0x1E69E9840];
  v24 = *(a2 + 24);
  v198 = a6;
  v25 = a6 != 0;
  if (a6)
  {
    v26 = 2;
  }

  else
  {
    v26 = 1;
  }

  v202 = v26;
  v215 = 0u;
  v216 = 0u;
  v213 = 0u;
  v214 = 0u;
  if (a10)
  {
    v27 = 1 << a18;
  }

  else
  {
    v27 = 1;
  }

  v183 = v27;
  v28 = *(v24 + 2 * a3);
  v29 = *(a2 + 8);
  v199 = v24;
  v30 = v24 + 2 * v29;
  v31 = 2 * ((*(v30 - 2) - v28) << a18 << v25);
  MEMORY[0x1EEE9AC00](a1);
  v196 = (&v166 - v32);
  bzero(&v166 - v32, v33);
  v34 = *(v30 - 2);
  *&v216 = v212;
  v193 = a17;
  *&v215 = a17;
  v204 = v23;
  LODWORD(v213) = v23;
  v194 = a2;
  *(&v213 + 1) = a2;
  v167 = a20;
  v35 = *a20;
  DWORD2(v216) = *a20;
  *(&v214 + 4) = __PAIR64__(v209, v208);
  if (a3 < v211)
  {
    v210 = 0;
    v36 = v34 << a18;
    v192 = v28;
    v37 = v28 << a18;
    v38 = &v196[v36 - (v28 << a18)];
    v39 = a3;
    v40 = a7 - 1;
    if (v198)
    {
      v41 = v196;
    }

    else
    {
      v41 = 0;
    }

    v190 = v41;
    v42 = v209 == 3 && v183 <= 1;
    v43 = !v42;
    v189 = v43;
    v188 = ~(-1 << v183);
    v180 = a19;
    v187 = a19;
    v209 = v211 - 1;
    v182 = v208;
    v44 = v199;
    v179 = v199 - 2;
    v186 = v211;
    v185 = a15;
    v184 = a14;
    v205 = a12;
    v178 = v199 + 2;
    v212 = (v197 + 2 * v36);
    v203 = a9;
    v201 = v39;
    v46 = 1;
    v177 = &v196[-v37];
    v181 = v37;
    v191 = v38;
    v166 = v38 - 2 * v37;
    v195 = a7;
    while (1)
    {
      LODWORD(v214) = v39;
      v47 = v44;
      v48 = *(v44 + 2 * v39);
      v49 = v48 << a18;
      if (v198)
      {
        v50 = (v198 + 2 * v49);
      }

      else
      {
        v50 = 0;
      }

      v208 = v39 + 1;
      v51 = *(v47 + 2 * (v39 + 1));
      v52 = ec_tell_frac(v193);
      v53 = 0;
      if (v39 == v201)
      {
        v54 = 0;
      }

      else
      {
        v54 = v52;
      }

      v55 = a16 - v54;
      v207 = v52;
      v56 = v185 - v52;
      DWORD2(v215) = v185 - v52 - 1;
      if (v39 < v187)
      {
        v57 = v180 - v39;
        if (v180 - v39 >= 3)
        {
          v57 = 3;
        }

        v58 = *(v203 + 4 * v39) + v55 / v57;
        if (v56 >= v58)
        {
          v56 = v58;
        }

        v59 = v56 & ~(v56 >> 31);
        if (v59 >= 0x3FFF)
        {
          v53 = 0x3FFF;
        }

        else
        {
          v53 = v59;
        }
      }

      v60 = v51 - v48;
      v61 = v210;
      if (v204)
      {
        v62 = v195;
        v63 = v197;
        v44 = v199;
      }

      else
      {
        v44 = v199;
        if ((*(v199 + 2 * v39) - v60) << a18 >= *(v199 + 2 * v201) << a18 && (v46 || v210 == 0))
        {
          v61 = v39;
        }

        v62 = v195;
        v63 = v197;
      }

      v64 = v192;
      v65 = v196;
      v66 = v191;
      v206 = v55;
      v67 = (v63 + 2 * v49);
      v68 = *(v184 + 4 * v39);
      v69 = (v60 << a18);
      HIDWORD(v214) = v68;
      v70 = v212;
      if (v39 < *(v194 + 12))
      {
        v71 = v67;
      }

      else
      {
        v70 = 0;
        v71 = v196;
      }

      if (v39 >= *(v194 + 12))
      {
        v72 = v190;
      }

      else
      {
        v72 = v50;
      }

      if (v39 == v209)
      {
        v73 = 0;
      }

      else
      {
        v73 = v70;
      }

      v212 = v73;
      if (v68 < 0)
      {
        v74 = 1;
      }

      else
      {
        v74 = v189;
      }

      v75 = -1;
      if (v61)
      {
        v76 = v188;
        v77 = v188;
        v78 = v202;
        if (v74)
        {
          v79 = (*(v44 + 2 * v61) - v192 - v60) << a18;
          v75 = v79 & ~(v79 >> 31);
          v80 = v75 + v181;
          v81 = (v179 + 2 * v61);
          v82 = v61;
          do
          {
            v83 = *v81--;
            --v82;
          }

          while (v83 << a18 > v80);
          v84 = v80 + v69;
          v85 = v61 - 2;
          v86 = (v178 + 2 * (v61 - 1));
          do
          {
            v87 = *v86++;
            ++v85;
          }

          while (v87 << a18 < v84);
          v77 = 0;
          v76 = 0;
          do
          {
            v77 |= *(v62 + (v82 << v25));
            v76 |= *(v40 + (v82 << v25) + v202);
            v42 = v82++ < v85;
          }

          while (v42);
        }
      }

      else
      {
        v76 = v188;
        v77 = v188;
        v78 = v202;
      }

      v210 = v61;
      v211 = v69;
      if (v205)
      {
        if (v204 || v39 != v182)
        {
          if (v39 != v182)
          {
            v200 = v53;
            v89 = v53 >> 1;
            if (v75 == -1)
            {
              v90 = 0;
            }

            else
            {
              v90 = &v196[v75];
            }

            v173 = (v191 + 2 * v75);
            LODWORD(v175) = v53 >> 1;
            if (v39 == v209)
            {
              v122 = v183;
              LODWORD(v176) = quant_band(&v213, v71, v69, v89, v183, v90, a18, 0, 0x7FFF, 0, v77);
              v91 = 0;
              if (v75 == -1)
              {
                v92 = 0;
              }

              else
              {
                v92 = v173;
              }
            }

            else
            {
              v122 = v183;
              v123 = quant_band(&v213, v71, v69, v89, v183, v90, a18, &v177[2 * (*(v44 + 2 * v39) << a18)], 0x7FFF, v70, v77);
              LODWORD(v176) = v123;
              if (v75 == -1)
              {
                v92 = 0;
              }

              else
              {
                v92 = v173;
              }

              v91 = (v166 + 2 * (*(v44 + 2 * v39) << a18));
            }

            v124 = v72;
            v125 = v211;
            v110 = quant_band(&v213, v124, v211, v175, v122, v92, a18, v91, 0x7FFF, v212, v76);
            v78 = v202;
            v99 = v206;
            v100 = v200;
            LODWORD(v97) = v125;
            LOBYTE(v98) = v176;
            goto LABEL_136;
          }
        }

        else if ((*(v44 + 2 * v39) - v192) << a18 >= 1)
        {
          v88 = 0;
          do
          {
            v65[v88] = (*(v66 + 2 * v88) + v65[v88]) >> 1;
            ++v88;
          }

          while (v88 < (*(v44 + 2 * v39) - v64) << a18);
        }
      }

      if (v75 == -1)
      {
        v93 = 0;
      }

      else
      {
        v93 = &v65[v75];
      }

      if (!v72)
      {
        if (v39 == v209)
        {
          v95 = 0;
        }

        else
        {
          v95 = &v177[2 * (*(v44 + 2 * v39) << a18)];
        }

        v109 = v53;
        v110 = quant_band(&v213, v71, v69, v53, v183, v93, a18, v95, 0x7FFF, v212, v76 | v77);
        LODWORD(v97) = v211;
        v100 = v109;
        LOBYTE(v98) = v110;
        v205 = 0;
        v99 = v206;
        goto LABEL_136;
      }

      if (v39 == v209)
      {
        v94 = 0;
      }

      else
      {
        v94 = &v177[2 * (*(v44 + 2 * v39) << a18)];
      }

      v96 = v76 | v77;
      v200 = v53;
      v220 = v96;
      v221 = v53;
      if (v69 == 1)
      {
        quant_band_n1(&v213, v71, v72, v94);
        LODWORD(v97) = v211;
        LOBYTE(v98) = 1;
        v99 = v206;
        v100 = v200;
      }

      else
      {
        v175 = v94;
        v176 = v93;
        v205 = v213;
        v172 = v215;
        v217 = 0;
        v218 = 0;
        v219 = 0;
        v101 = v71;
        v102 = v183;
        compute_theta(&v213, &v217, v71, v72, v69, &v221, v183, v183, a18, 1, &v220);
        LODWORD(v173) = HIDWORD(v217);
        v171 = v217;
        v174 = v101;
        if (v211 == 2)
        {
          v103 = v221;
          if ((v219 & 0xFFFFBFFF) != 0)
          {
            v104 = -8;
          }

          else
          {
            v104 = 0;
          }

          DWORD2(v215) += v104 - HIDWORD(v219);
          if (v219 <= 0x2000)
          {
            v105 = v101;
          }

          else
          {
            v105 = v72;
          }

          if (v219 <= 0x2000)
          {
            v106 = v72;
          }

          else
          {
            v106 = v101;
          }

          v170 = v218;
          if ((v219 & 0xFFFFBFFF) != 0)
          {
            v168 = v104;
            v169 = v221;
            v107 = v106;
            if (v205)
            {
              v108 = v172;
              LODWORD(v172) = v106[1] * *v105 < *v106 * v105[1];
              ec_enc_bits(v108, v172, 1);
            }

            else
            {
              LODWORD(v172) = ec_dec_bits(v172, 1u);
            }

            v103 = v169;
            v104 = v168;
          }

          else
          {
            LODWORD(v172) = 0;
            v107 = v106;
          }

          LOBYTE(v98) = quant_band(&v213, v105, 2, v103 + v104, v183, v176, a18, v175, 0x7FFF, v212, v96);
          v140 = 2 * v172;
          *v107 = (2 * v172 - 1) * v105[1];
          v107[1] = *v105 - *v105 * v140;
          if (!v205)
          {
            v141 = v173;
            v142 = v174;
            *v174 = (v173 * *v174) >> 15;
            v142[1] = (v141 * v142[1]) >> 15;
            v143 = v170;
            v144 = v170 * *v72;
            *v72 = v144 >> 15;
            v72[1] = (v143 * v72[1]) >> 15;
            LOWORD(v143) = *v142;
            *v142 -= v144 >> 15;
            *v72 += v143;
            LOWORD(v143) = v142[1];
            v142[1] = v143 - v72[1];
            v72[1] += v143;
            v78 = v202;
            v99 = v206;
            v100 = v200;
            v97 = v211;
            goto LABEL_153;
          }

          v78 = v202;
          v99 = v206;
          v100 = v200;
LABEL_134:
          LODWORD(v97) = v211;
          goto LABEL_135;
        }

        LODWORD(v172) = v219;
        v111 = v220;
        if (v221 >= (v221 - HIDWORD(v218)) / 2)
        {
          v112 = (v221 - HIDWORD(v218)) / 2;
        }

        else
        {
          v112 = v221;
        }

        v113 = v112 & ~(v112 >> 31);
        v114 = DWORD2(v215) - HIDWORD(v219);
        DWORD2(v215) -= HIDWORD(v219);
        v115 = v102;
        if (v113 >= v221 - v113)
        {
          v168 = v220 >> v102;
          v169 = v221 - v113;
          v126 = v102;
          v127 = v218;
          LODWORD(v176) = quant_band(&v213, v174, v211, v113, v115, v176, a18, v175, 0x7FFF, v212, v220);
          v128 = DWORD2(v215) - v114 + v113;
          if (v172)
          {
            v129 = v128 <= 24;
          }

          else
          {
            v129 = 1;
          }

          if (v129)
          {
            v130 = 0;
          }

          else
          {
            v130 = v128 - 24;
          }

          v120 = quant_band(&v213, v72, v211, v130 + v169, v126, 0, a18, 0, v127, 0, v168);
          v121 = &v211;
        }

        else
        {
          v165 = v220 >> v102;
          v116 = v221 - v113;
          v170 = quant_band(&v213, v72, v211, v221 - v113, v115, 0, a18, 0, v218, 0, v165);
          v117 = DWORD2(v215) - v114 + v116;
          if (v172 == 0x4000 || v117 <= 24)
          {
            v119 = 0;
          }

          else
          {
            v119 = v117 - 24;
          }

          v120 = quant_band(&v213, v174, v211, v119 + v113, v183, v176, a18, v175, 0x7FFF, v212, v111);
          v121 = &v204;
        }

        v98 = v120 | *(v121 - 64);
        v44 = v199;
        v78 = v202;
        v100 = v200;
        v99 = v206;
        if (v205)
        {
          goto LABEL_134;
        }

        v97 = v211;
        if (v211 < 1)
        {
          v132 = 0;
          v131 = 0;
          v134 = v174;
        }

        else
        {
          v131 = 0;
          v132 = 0;
          v133 = v72;
          v134 = v174;
          v135 = v174;
          v136 = v211;
          do
          {
            v138 = *v133++;
            v137 = v138;
            v139 = *v135++;
            v132 += v139 * v137;
            v131 += v137 * v137;
            --v136;
          }

          while (v136);
        }

        v145 = v173;
        v146 = v131 + (v173 >> 1) * (v173 >> 1);
        v147 = (v132 >> 16) * 4 * v173 + 2 * ((v132 * v173) >> 15);
        v148 = v146 - v147;
        v149 = v147 + v146;
        if (v147 + v146 < 161061 || v148 < 161061)
        {
          v62 = v195;
          if (v211 >= 1)
          {
            v151 = v72;
            v152 = v211;
            do
            {
              v153 = *v134++;
              *v151++ = v153;
              --v152;
            }

            while (v152);
LABEL_153:
            if (v97 >= 1 && v171)
            {
              v163 = v97;
              do
              {
                *v72 = -*v72;
                ++v72;
                --v163;
              }

              while (v163);
            }
          }
        }

        else
        {
          LODWORD(v176) = v98;
          v154 = 31 - __clz(v148);
          v155 = 31 - __clz(v149);
          v205 = celt_rsqrt_norm(v148 >> ((v154 & 0x1E) - 14));
          v156 = celt_rsqrt_norm(v149 >> ((v155 & 0x1E) - 14));
          v97 = v211;
          if (v211 >= 1)
          {
            v157 = v72;
            v158 = v211;
            v62 = v195;
            v100 = v200;
            v159 = v174;
            v160 = v205;
            do
            {
              v161 = v145 * *v159;
              v162 = *v157;
              *v159++ = (((2 << (v154 >> 1)) >> 1) + ((v161 >> 15) - *v157) * v160) >> ((v154 >> 1) + 1);
              *v157++ = (((2 << (v155 >> 1)) >> 1) + (v162 + (v161 >> 15)) * v156) >> ((v155 >> 1) + 1);
              --v158;
            }

            while (v158);
            v44 = v199;
            v78 = v202;
            LOBYTE(v98) = v176;
            goto LABEL_153;
          }

          v62 = v195;
          v44 = v199;
          v78 = v202;
          v100 = v200;
          LOBYTE(v98) = v176;
        }
      }

LABEL_135:
      v205 = 0;
      v110 = v98;
LABEL_136:
      *(v62 + (v39 << v25)) = v98;
      *(v40 + (v39 << v25) + v78) = v110;
      a16 = v99 + v207 + *(v203 + 4 * v39);
      v46 = v100 > 8 * v97;
      v39 = v208;
      if (v208 == v186)
      {
        v35 = DWORD2(v216);
        break;
      }
    }
  }

  *v167 = v35;
  v164 = *MEMORY[0x1E69E9840];
}

uint64_t quant_band(int *a1, __int16 *a2, int a3, int a4, int a5, __int16 *a6, int a7, _WORD *a8, __int16 a9, __int16 *a10, int a11)
{
  v11 = a2;
  if (a3 == 1)
  {
    quant_band_n1(a1, a2, 0, a8);
    return 1;
  }

  v13 = a6;
  v39 = a5 == 1;
  v16 = *a1;
  v17 = a1[7];
  v44 = v17 & ~(v17 >> 31);
  v45 = v17;
  v18 = a3 / a5;
  if (a6 && a10)
  {
    if (v17 <= 0)
    {
      v21 = (v18 & 1) != 0 || v17 == 0;
      v22 = !v21;
      if (a5 <= 1 && !v22)
      {
        goto LABEL_26;
      }
    }

    if (a3 >= 1)
    {
      for (i = 0; i != a3; ++i)
      {
        a10[i] = a6[i];
      }
    }

    v13 = a10;
  }

  if (v17 < 1)
  {
LABEL_26:
    v37 = 0;
    goto LABEL_27;
  }

  v35 = a3 / a5;
  v40 = a5;
  for (j = 0; j != v17; ++j)
  {
    if (v16)
    {
      haar1(v11, a3 >> j, 1 << j);
    }

    if (v13)
    {
      haar1(v13, a3 >> j, 1 << j);
    }

    a11 = quant_band_bit_interleave_table[a11 & 0xF] | (4 * quant_band_bit_interleave_table[a11 >> 4]);
  }

  v37 = 1;
  a5 = v40;
  v18 = v35;
LABEL_27:
  v23 = 0;
  v24 = a5 >> v44;
  v25 = v18 << v44;
  if (((v18 << v44) & 1) != 0 || (v17 & 0x80000000) == 0)
  {
    v26 = v18 << v44;
  }

  else
  {
    v23 = 0;
    do
    {
      if (v16)
      {
        haar1(v11, v25, v24);
      }

      if (v13)
      {
        haar1(v13, v25, v24);
      }

      a11 |= a11 << v24;
      v24 *= 2;
      v26 = v25 >> 1;
      ++v23;
      if ((v25 & 2) != 0)
      {
        break;
      }

      v25 >>= 1;
    }

    while (v17++ < -1);
  }

  if (v24 < 2)
  {
    v12 = quant_partition(a1, v11, a3, a4, v24, v13, a7, a9, a11);
    if (v16)
    {
      return v12;
    }

LABEL_46:
    if (v23)
    {
      v29 = a8;
      do
      {
        v24 >>= 1;
        v26 *= 2;
        LODWORD(v12) = (v12 >> v24) | v12;
        haar1(v11, v26, v24);
        --v23;
      }

      while (v23);
      if (!v37)
      {
        goto LABEL_54;
      }
    }

    else
    {
      v29 = a8;
      if (!v37)
      {
LABEL_54:
        if (v29)
        {
          v31 = celt_sqrt((a3 << 22));
          if (a3 >= 1)
          {
            v32 = a3;
            do
            {
              v33 = *v11++;
              *v29++ = (v31 * v33) >> 15;
              --v32;
            }

            while (v32);
          }
        }

        return v12 & ~(-1 << (v24 << v44));
      }
    }

    v30 = 0;
    do
    {
      LODWORD(v12) = quant_band_bit_deinterleave_table[v12];
      haar1(v11, a3 >> v30, 1 << v30);
      ++v30;
    }

    while (v45 != v30);
    goto LABEL_54;
  }

  v28 = v26 >> v44;
  v36 = v24 << v44;
  if (v16)
  {
    deinterleave_hadamard(v11, v26 >> v44, v36, v39);
  }

  if (v13)
  {
    deinterleave_hadamard(v13, v28, v36, v39);
  }

  v12 = quant_partition(a1, v11, a3, a4, v24, v13, a7, a9, a11);
  if (!v16)
  {
    interleave_hadamard(v11, v28, v36, v39);
    goto LABEL_46;
  }

  return v12;
}

uint64_t quant_band_n1(uint64_t result, __int16 *a2, __int16 *a3, _WORD *a4)
{
  v7 = result;
  v8 = *result;
  v9 = *(result + 32);
  v10 = *(result + 40);
  v11 = 1;
  v12 = a2;
  do
  {
    if (v10 < 8)
    {
      v14 = 0x4000;
      if (v8)
      {
        goto LABEL_13;
      }

LABEL_12:
      *v12 = v14;
      goto LABEL_13;
    }

    if (v8)
    {
      v13 = *v12 >> 15;
      result = ec_enc_bits(v9, v13, 1);
    }

    else
    {
      result = ec_dec_bits(v9, 1u);
      v13 = result;
    }

    v10 = *(v7 + 40) - 8;
    *(v7 + 40) = v10;
    if (v13)
    {
      v14 = -16384;
    }

    else
    {
      v14 = 0x4000;
    }

    if (!v8)
    {
      goto LABEL_12;
    }

LABEL_13:
    v15 = (a3 != 0) & v11;
    v12 = a3;
    v11 = 0;
  }

  while ((v15 & 1) != 0);
  if (a4)
  {
    *a4 = *a2 >> 4;
  }

  return result;
}

void deinterleave_hadamard(_WORD *a1, int a2, int a3, int a4)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v8 = a3 * a2;
  MEMORY[0x1EEE9AC00](a1);
  v10 = v24 - v9;
  bzero(v24 - v9, v11);
  if (a4)
  {
    if (a3 >= 1)
    {
      v12 = 0;
      v13 = a1;
      do
      {
        if (a2 >= 1)
        {
          v14 = &v10[2 * ordery_table[a3 - 2 + v12] * a2];
          v15 = a2;
          v16 = v13;
          do
          {
            *v14 = *v16;
            v14 += 2;
            v16 += a3;
            --v15;
          }

          while (v15);
        }

        ++v12;
        ++v13;
      }

      while (v12 != a3);
    }
  }

  else if (a3 >= 1)
  {
    v17 = 0;
    v18 = a1;
    v19 = v10;
    do
    {
      if (a2 >= 1)
      {
        v20 = a2;
        v21 = v18;
        v22 = v19;
        do
        {
          *v22++ = *v21;
          v21 += a3;
          --v20;
        }

        while (v20);
      }

      ++v17;
      v19 += a2;
      ++v18;
    }

    while (v17 != a3);
  }

  if (v8 >= 1)
  {
    memcpy(a1, v10, (2 * v8));
  }

  v23 = *MEMORY[0x1E69E9840];
}