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
  v243[2] = *MEMORY[0x277D85DE8];
  v241 = 0;
  memset(v240, 0, sizeof(v240));
  v243[0] = 0;
  v243[1] = 0;
  v242[0] = 0;
  v242[1] = 0;
  v239 = 0;
  v10 = a1[1].i32[1];
  v232 = a1[2].i32[0];
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
    v243[v9++] = v19;
    v19 += v16;
  }

  while (v17 != v9);
  v20 = v11[8];
  if ((v20 & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  v227 = v17;
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
      return 0xFFFFFFFFLL;
    }
  }

  result = 0xFFFFFFFFLL;
  if (a3 <= 0x4FB && a4)
  {
    v28 = v8[3].i32[1];
    if (v28 >= v11[3])
    {
      v28 = v11[3];
    }

    if (!a2 || a3 <= 1)
    {
      celt_decode_lost(v8, a4, v22, v21);
      return (v22 / v8[2].i32[1]);
    }

    v214 = v28;
    v209 = v16 * v10;
    v238 = 0;
    v208 = 24 * v10;
    v207 = 2 * v13;
    v224 = &v15[v209 + v208 / 2];
    v212 = &v23[v24];
    v211 = &v212[v24];
    v234 = v12;
    v226 = v14;
    LODWORD(v228) = a3;
    if (!a6)
    {
      a6 = v240;
      ec_dec_init(v240, a2, a3);
      a3 = v228;
      v23 = v224;
    }

    v30 = v232 == 1 && v13 > 0;
    v206 = v30;
    if (v30)
    {
      v31 = 0;
      v32 = v23;
      do
      {
        v33 = *v32;
        if (v33 <= v32[v13])
        {
          LOWORD(v33) = v32[v13];
        }

        *v32++ = v33;
        v31 += 2;
      }

      while (2 * v13 != v31);
    }

    v34 = 8 * a3;
    v35 = __clz(*(a6 + 8));
    v36 = *(a6 + 6) + v35 - 32;
    v223 = 8 * a3;
    v210 = a4;
    if (v36 < (8 * a3))
    {
      if (v36 != 1)
      {
        v201 = 1;
        goto LABEL_39;
      }

      if (!ec_dec_bit_logp(a6, 15))
      {
        v36 = 1;
        v201 = 1;
        v34 = v223;
        goto LABEL_39;
      }

      v35 = __clz(*(a6 + 8));
      v34 = v223;
    }

    v201 = 0;
    *(a6 + 6) = v34 - v35 + 32;
    v36 = v34;
LABEL_39:
    v37 = 0;
    v38 = v8[3].i32[0];
    v236 = a6;
    v220 = v13;
    if (v38)
    {
      v39 = 0;
      v40 = 0;
    }

    else
    {
      v39 = 0;
      v40 = 0;
      if (v36 + 16 <= v34)
      {
        v40 = ec_dec_bit_logp(a6, 1);
        if (v40)
        {
          v41 = ec_dec_uint(a6, 6u);
          a6 = v236;
          v37 = ec_dec_bits(v236, v41 + 4) + (16 << v41) - 1;
          v42 = ec_dec_bits(v236, 3u);
          v34 = v223;
          if ((*(a6 + 6) + __clz(*(a6 + 8)) - 30) <= v223)
          {
            v40 = ec_dec_icdf(v236, tapset_icdf, 2);
            v34 = v223;
          }

          else
          {
            v40 = 0;
          }

          v39 = 3072 * v42 + 3072;
          v13 = v220;
        }

        else
        {
          v37 = 0;
          v39 = 0;
          v34 = v223;
        }

        v36 = *(a6 + 6) + __clz(*(a6 + 8)) - 32;
      }
    }

    v219 = v39;
    v230 = v40;
    v231 = v37;
    v43 = 0;
    v44 = 1 << v21;
    v45 = v36 + 3;
    if (v21 && v45 <= v34)
    {
      v46 = ec_dec_bit_logp(a6, 3);
      v44 = 1 << v21;
      v34 = v223;
      v43 = v46;
      v45 = *(a6 + 6) + __clz(*(a6 + 8)) - 29;
    }

    v47 = 0;
    v215 = v44;
    if (v43)
    {
      v48 = v44;
    }

    else
    {
      v48 = 0;
    }

    v218 = v48;
    if (v45 <= v34)
    {
      v47 = ec_dec_bit_logp(a6, 3);
    }

    v233 = v22;
    v222 = v10;
    v49 = v8[3].i32[0];
    v50 = v8[3].i32[1];
    v235 = v11;
    unquant_coarse_energy(v11, v49, v50, v224, v47, a6, v232, v21);
    v51 = 4 * v13;
    v52 = &v200[-((4 * v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v217 = v51;
    bzero(v52, v51);
    v53 = v8[3].i32[0];
    v54 = v8[3].i32[1];
    v229 = v8;
    v55 = 8 * *(a6 + 2);
    v56 = *(a6 + 6) + __clz(*(a6 + 8)) - 32;
    if (v43)
    {
      v57 = 2;
    }

    else
    {
      v57 = 4;
    }

    if (v21)
    {
      v58 = v56 + v57 + 1 > v55;
    }

    else
    {
      v58 = 1;
    }

    v59 = !v58;
    v221 = v43;
    v213 = v52;
    v237 = v53;
    v225 = v54;
    v216 = v59;
    v60 = 0;
    if (v53 < v54)
    {
      v61 = 0;
      v62 = v55 - v59;
      if (v43)
      {
        v63 = 4;
      }

      else
      {
        v63 = 5;
      }

      v64 = v54 - v53;
      v65 = &v52[4 * v53];
      do
      {
        if (v57 + v56 <= v62)
        {
          v61 ^= ec_dec_bit_logp(a6, v57);
          v56 = *(a6 + 6) + __clz(*(a6 + 8)) - 32;
          v60 |= v61;
        }

        *v65++ = v61;
        v57 = v63;
        --v64;
      }

      while (v64);
    }

    v66 = v233;
    v67 = v216;
    if (v216)
    {
      v68 = v221;
      v69 = v26[v60 + (4 * v221)] == v26[4 * v221 + 2 + v60];
      v70 = v229;
      v71 = v235;
      v72 = v217;
      if (v69)
      {
        v67 = 0;
      }

      else
      {
        v67 = 2 * ec_dec_bit_logp(v236, 1);
      }

      v73 = v223;
    }

    else
    {
      v70 = v229;
      v71 = v235;
      v73 = v223;
      v68 = v221;
      v72 = v217;
    }

    if (v237 < v225)
    {
      v74 = v67 + 4 * v68;
      v75 = v225 - v237;
      v76 = &v213[4 * v237];
      do
      {
        *v76 = v26[*v76 + v74];
        ++v76;
        --v75;
      }

      while (v75);
    }

    v77 = v236;
    if ((*(v236 + 6) + __clz(*(v236 + 8)) - 28) <= v73)
    {
      v205 = ec_dec_icdf(v236, spread_icdf, 5);
    }

    else
    {
      v205 = 2;
    }

    v78 = (v72 + 15) & 0xFFFFFFFFFFFFFFF0;
    bzero(&v200[-v78], v72);
    v237 = &v200[-v78];
    init_caps(v71, &v200[-v78], v21, v232);
    v204 = v78;
    v79 = &v200[-v78];
    bzero(&v200[-v78], v72);
    v80 = v228 << 6;
    v81 = ec_tell_frac(v77);
    v82 = v70[3].i32[1];
    v83 = v70[3].i32[0];
    v216 = v80;
    v225 = v79;
    if (v83 < v82)
    {
      v84 = 6;
      v85 = v232;
      v86 = v226;
      do
      {
        v87 = v83 + 1;
        v88 = ((*(v86 + 2 * (v83 + 1)) - *(v86 + 2 * v83)) * v85) << v21;
        v89 = 8 * v88;
        if (v88 <= 48)
        {
          v88 = 48;
        }

        if (v89 >= v88)
        {
          v90 = v88;
        }

        else
        {
          v90 = v89;
        }

        if (v81 + 8 * v84 >= v80)
        {
          *&v79[4 * v83] = 0;
        }

        else
        {
          if (*(v237 + 4 * v83) < 1)
          {
            v92 = 0;
          }

          else
          {
            v91 = 0;
            LODWORD(v228) = v84;
            while (1)
            {
              v92 = v91;
              v93 = v236;
              v94 = ec_dec_bit_logp(v236, v84);
              v95 = ec_tell_frac(v93);
              v81 = v95;
              if (!v94)
              {
                break;
              }

              v96 = v80 - v90;
              if (v95 + 8 < v80 - v90)
              {
                v91 = v92 + v90;
                LOBYTE(v84) = 1;
                v80 -= v90;
                if (v92 + v90 < *(v237 + 4 * v83))
                {
                  continue;
                }
              }

              v92 += v90;
              v80 = v96;
              break;
            }

            v85 = v232;
            v86 = v226;
            v79 = v225;
            v84 = v228;
          }

          *&v79[4 * v83] = v92;
          v82 = v229[3].i32[1];
          if (v84 <= 3)
          {
            v97 = 3;
          }

          else
          {
            v97 = v84;
          }

          v98 = v97 - 1;
          if (v92 > 0)
          {
            v84 = v98;
          }

          v66 = v233;
        }

        ++v83;
      }

      while (v87 < v82);
    }

    v99 = &v200[-v204];
    v100 = v217;
    bzero(&v200[-v204], v217);
    v101 = v236;
    if (v81 + 48 <= v80)
    {
      v203 = ec_dec_icdf(v236, trim_icdf, 7);
    }

    else
    {
      v203 = 5;
    }

    v102 = v235;
    v103 = v216;
    v104 = ec_tell_frac(v101);
    v105 = 0;
    v106 = v103 + ~v104;
    v107 = v229;
    v108 = v99;
    v109 = 0;
    if (v21 >= 2 && v221)
    {
      v105 = v106 >= v25;
      v109 = 8 * v105;
    }

    v202 = v109;
    LODWORD(v204) = v105;
    v110 = v106 - v109;
    v111 = &v200[-((v100 + 15) & 0xFFFFFFFFFFFFFFF0)];
    bzero(v111, v100);
    bzero(v111, v100);
    v112 = v107[3].u32[0];
    v113 = v107[3].u32[1];
    v114 = v232;
    v228 = v111;
    v199 = v108;
    v115 = v108;
    v198 = v110;
    v116 = v236;
    v117 = v102;
    v118 = compute_allocation(v102, v112, v113, v225, v237, v203, &v239 + 1, &v239, v198, &v238, v111, v199, v111, v232, v21, v236, 0, 0, 0);
    v119 = v107[3].i32[0];
    v120 = v107[3].i32[1];
    v237 = v115;
    unquant_fine_energy(v117, v119, v120, v224, v115, v116, v114);
    v225 = (v220 * v114);
    v121 = &v200[-((v225 + 15) & 0xFFFFFFFFFFFFFFF0)];
    bzero(v121, v225);
    v217 = (v66 * v114);
    v122 = 2 * v217;
    v123 = &v200[-((v122 + 15) & 0xFFFFFFFFFFFFFFF0)];
    bzero(v123, v122);
    v124 = &v123[2 * v66];
    v125 = v111;
    if (v114 == 2)
    {
      v126 = v124;
    }

    else
    {
      v126 = 0;
    }

    quant_all_bands(0, v117, v107[3].i32[0], v107[3].u32[1], v123, v126, v121, 0, v111, v218, v205, v239, HIDWORD(v239), v213, v216 - v202, v238, v116, v21, v118, &v107[5]);
    if (v204)
    {
      v127 = ec_dec_bits(v116, 1u);
      unquant_energy_finalise(v117, v107[3].i32[0], v107[3].i32[1], v224, v237, v228, v223 - *(v116 + 6) - __clz(*(v116 + 8)) + 32, v116, v114);
      v128 = v201;
      v129 = v222;
      if (v127)
      {
        anti_collapse(v117, v123, v121, v21, v114, v233, v107[3].i32[0], v107[3].i32[1], v224, v212, v211, v125, v107[5].i32[0]);
      }
    }

    else
    {
      unquant_energy_finalise(v117, v107[3].i32[0], v107[3].i32[1], v224, v237, v228, v223 - *(v116 + 6) - __clz(*(v116 + 8)) + 32, v116, v114);
      v128 = v201;
      v129 = v222;
    }

    if (v129 <= v114)
    {
      v130 = v114;
    }

    else
    {
      v130 = v129;
    }

    v131 = 4 * v233 * v130;
    v132 = &v200[-((v131 + 15) & 0xFFFFFFFFFFFFFFF0)];
    bzero(v132, v131);
    if (v128)
    {
      denormalise_bands(v117, v123, v132, v224, v107[3].i32[0], v214, v114, v215);
      v133 = v233;
    }

    else
    {
      if (v225 >= 1)
      {
        memset_pattern16(v224, &unk_26ED6B850, (2 * v225));
      }

      v133 = v233;
      if (v217 >= 1)
      {
        bzero(v132, 4 * v217);
      }
    }

    v134 = 4 * (v234 / 2 - v133 + 2048);
    v135 = v243;
    v136 = v227;
    do
    {
      v137 = *v135++;
      memmove(v137, &v137[4 * v133], v134);
      --v136;
    }

    while (v136);
    v138 = 0;
    v139 = *(v226 + 2 * v214) << v21;
    v140 = v107[2].i32[1];
    if (v232 <= 1)
    {
      v141 = 1;
    }

    else
    {
      v141 = v232;
    }

    do
    {
      v142 = v139;
      if (v140 != 1)
      {
        if (v139 >= v133 / v140)
        {
          v142 = v133 / v140;
        }

        else
        {
          v142 = v139;
        }
      }

      if (v142 < v133)
      {
        bzero(&v132[4 * v142 + 4 * v138], 4 * (v133 + ~v142) + 4);
      }

      v138 += v133;
      --v141;
    }

    while (v141);
    v143 = 0;
    v144 = 8 * v227;
    do
    {
      v242[v143 / 8] = v243[v143 / 8] - 4 * v133 + 0x2000;
      v143 += 8;
    }

    while (v144 != v143);
    v145 = v222;
    v8 = v229;
    v146 = v232;
    if (v222 == 2 && v232 == 1 && v133 >= 1)
    {
      v147 = 0;
      v148 = v132;
      do
      {
        v148[v133] = *v148;
        ++v148;
        v147 += 4;
      }

      while (4 * v133 != v147);
    }

    if (v145 == 1 && v146 == 2 && v133 >= 1)
    {
      v149 = 0;
      v150 = v132;
      do
      {
        *v150 = (v150[v133] + *v150) >> 1;
        ++v150;
        v149 += 4;
      }

      while (4 * v133 != v149);
    }

    compute_inv_mdcts(v235, v218, v132, v242, v145, v21);
    v151 = 0;
    v152 = v219;
    do
    {
      v153 = vmax_s32(v8[7], 0xF0000000FLL);
      v8[7] = v153;
      v154 = v242[v151 / 8];
      v155 = v235;
      v156 = v234;
      comb_filter(v154, v154, v153.i32[1], v153.i32[0], v235[10], v8[8].i16[1], v8[8].i16[0], v8[9].i32[0], v8[8].i32[1], *(v235 + 8), v234);
      if (v21)
      {
        comb_filter(&v154[4 * v155[10]], &v154[4 * v155[10]], v8[7].i32[0], v231, v233 - v155[10], v8[8].i16[0], v152, v8[8].i32[1], v230, *(v155 + 8), v156);
      }

      v151 += 8;
    }

    while (v144 != v151);
    v157 = v8[7].i32[0];
    v8[8].i16[1] = v8[8].i16[0];
    v158 = v8[8].i32[1];
    v159 = v231;
    v8[7].i32[0] = v231;
    v8[7].i32[1] = v157;
    v160 = v219;
    v8[8].i16[0] = v219;
    v161 = v230;
    v8[8].i32[1] = v230;
    v8[9].i32[0] = v158;
    if (v21)
    {
      v8[7].i32[1] = v159;
      v8[8].i16[1] = v160;
      v8[9].i32[0] = v161;
    }

    v162 = v220;
    v163 = v208;
    v164 = v207;
    v165 = v224;
    v166 = v212;
    v167 = v211;
    v168 = v215;
    v169 = v221;
    if (v206)
    {
      v170 = 0;
      v171 = 2 * v220;
      v172 = v224;
      do
      {
        v172[v162] = *v172;
        ++v172;
        v170 += 2;
      }

      while (v171 != v170);
    }

    LODWORD(v22) = v233;
    if (v169)
    {
      if (v162 >= 1)
      {
        if (v164 <= 1)
        {
          v173 = 1;
        }

        else
        {
          v173 = v164;
        }

        do
        {
          v174 = v165[v164];
          if (v174 >= *v165)
          {
            LOWORD(v174) = *v165;
          }

          v165[v164] = v174;
          ++v165;
          --v173;
        }

        while (v173);
      }
    }

    else if (v162 >= 1)
    {
      if (v164 <= 1)
      {
        v175 = 1;
      }

      else
      {
        v175 = v164;
      }

      v176 = v175;
      do
      {
        v177 = *v166++;
        *v167++ = v177;
        --v176;
      }

      while (v176);
      v178 = v175;
      v179 = v165;
      do
      {
        v179[v164] = *v179;
        ++v179;
        --v178;
      }

      while (v178);
      do
      {
        v180 = v168 + v165[3 * v164];
        if (v180 >= *v165)
        {
          LOWORD(v180) = *v165;
        }

        v165[3 * v164] = v180;
        ++v165;
        --v175;
      }

      while (v175);
    }

    v181 = 0;
    v182 = &v8[10] + 4 * v209 + 2 * v163 + 4;
    v183 = v182 + 4 * v164;
    v184 = v182 + 2 * v164;
    v185 = v8[3].u32[0];
    v186 = v8[3].i32[1];
    v187 = 1;
    do
    {
      v188 = v187;
      if (v185 >= 1)
      {
        v189 = 0;
        do
        {
          *(v182 + 2 * v181 * v162 + v189) = 0;
          *(v183 + 2 * v181 * v162 + v189) = -28672;
          *(v184 + 2 * v181 * v162 + v189) = -28672;
          v189 += 2;
        }

        while (2 * v185 != v189);
      }

      if (v186 < v162)
      {
        v190 = 0;
        v191 = v186 + v181 * v162;
        v192 = v182 + 2 * v191;
        v193 = v183 + 2 * v191;
        v194 = v184 + 2 * v191;
        do
        {
          *(v192 + 2 * v190) = 0;
          *(v193 + 2 * v190) = -28672;
          *(v194 + 2 * v190++) = -28672;
        }

        while (v162 - v186 != v190);
      }

      v187 = 0;
      v181 = 1;
    }

    while ((v188 & 1) != 0);
    v195 = v235;
    v196 = v236;
    v197 = *(v236 + 8);
    v8[5].i32[0] = v197;
    deemphasis(v242, v210, v22, v222, v8[2].i32[1], v195 + 8, &v8[9] + 4, v132);
    v8[6].i32[1] = 0;
    if ((*(v196 + 6) + __clz(v197) - 32) > v223)
    {
      return 4294967293;
    }

    if (*(v196 + 12))
    {
      v8[5].i32[1] = 1;
    }

    return (v22 / v8[2].i32[1]);
  }

  return result;
}

uint64_t celt_decode_lost(_DWORD *a1, _WORD *a2, uint64_t a3, int a4)
{
  LODWORD(v193) = a4;
  v4 = a3;
  v7 = 0;
  v197[2] = *MEMORY[0x277D85DE8];
  v8 = a1[3];
  v197[0] = 0;
  v197[1] = 0;
  v196[0] = 0;
  v196[1] = 0;
  v9 = *a1;
  v190 = *(*a1 + 8);
  v191 = *(v9 + 4);
  v10 = v191 + 2048;
  v185 = a3;
  v182 = -a3;
  if (v8 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = v8;
  }

  LODWORD(v181) = v11;
  v167 = v9;
  v192 = *(v9 + 24);
  v183 = v11;
  v12 = 8 * v11;
  v13 = a1;
  do
  {
    v197[v7 / 8] = v13 + 21;
    v196[v7 / 8] = v13 + 8276 - 4 * a3;
    v7 += 8;
    v13 += v10;
  }

  while (v12 != v7);
  v14 = v10 * v8;
  v15 = &a1[v10 * v8 + 21];
  v16 = a1[13];
  v17 = a1[6];
  v165 = a1[5];
  v18 = v16 <= 4 && v17 == 0;
  v19 = !v18;
  v20 = v8 * a3;
  if (v18)
  {
    v21 = a3;
  }

  else
  {
    v21 = v8 * a3;
  }

  v22 = 4 * v21;
  v164 = &v164 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v164, v22);
  v186 = a1;
  v189 = v4;
  v178 = v8;
  v166 = a2;
  v184 = v16;
  if (v19 != 1)
  {
    v193 = v15;
    v194 = 0;
    if (v16)
    {
      v31 = a1[12];
      v32 = 26214;
    }

    else
    {
      bzero(&v164 - 256, 0x800uLL);
      pitch_downsample(v197, &v164 - 2048, 2048, v8);
      pitch_search(&v164 - 664, &v164 - 1024, 1328, 620, &v194);
      v31 = 720 - v194;
      a1[12] = 720 - v194;
      v32 = 0x7FFF;
    }

    v177 = v32;
    v69 = v193;
    v70 = v167;
    v194 = v31;
    v71 = v191;
    v72 = &v164 - ((4 * v191 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v72, 4 * v191);
    v181 = &v164;
    v73 = (&v164 - 256);
    bzero(&v164 - 256, 0x800uLL);
    v74 = 0;
    v75 = *(v70 + 64);
    v188 = 2048 - v185;
    v180 = 4 * (2048 - v185);
    v76 = (v71 + v189);
    v77 = (v71 / 2);
    v187 = v76;
    v168 = v71;
    v172 = (v76 + 3) & 0xFFFFFFFC;
    v190 = v76;
    v176 = vdupq_n_s64(v76 - 1);
    v179 = 2047 - v189;
    v175 = v71 - 1;
    v174 = xmmword_26ED6B840;
    v173 = xmmword_26ECC74D0;
    v171 = xmmword_26ECCE810;
    v170 = xmmword_26ECC7980;
    v169 = 8204 - 4 * v189;
    while (1)
    {
      v78 = 0;
      v79 = v197[v74];
      v80 = 1024;
      do
      {
        *&v73[v78] = vrshrn_high_n_s32(vrshrn_n_s32(*&v79[v80], 0xCuLL), *&v79[v80 + 4], 0xCuLL);
        v80 += 8;
        v78 += 2;
      }

      while (v78 != 256);
      if (!v184)
      {
        _celt_autocorr(&v164 - 2048, &v195, v75, v191, 24, 1024);
        v81.i64[0] = 0xFFFF0000FFFFLL;
        v81.i64[1] = 0xFFFF0000FFFFLL;
        v195 += v195 >> 13;
        v82 = 4;
        v83 = v173;
        v84 = v174;
        do
        {
          v85.i64[0] = (v83.i32[0] * v83.i32[0]);
          v85.i64[1] = (v83.i32[2] * v83.i32[2]);
          v86.i64[0] = (v84.i32[0] * v84.i32[0]);
          v86.i64[1] = (v84.i32[2] * v84.i32[2]);
          v87 = *(&v195 + v82);
          v88 = vuzp1q_s32(v85, v86);
          v89 = vaddq_s32(v88, v88);
          v90 = vshrq_n_u32(vmulq_s32(vandq_s8(v87, v81), v89), 0xFuLL);
          v91 = vmulq_s32(v89, vshrq_n_s32(v87, 0x10uLL));
          *(&v195 + v82) = vsubq_s32(vsubq_s32(v87, vaddq_s32(v91, v91)), v90);
          v92 = vdupq_n_s64(4uLL);
          v84 = vaddq_s64(v84, v92);
          v83 = vaddq_s64(v83, v92);
          v82 += 16;
        }

        while (v82 != 100);
        _celt_lpc((v69 + 48 * v74), &v195, 24);
      }

      v93 = 0;
      v94 = v194;
      v95 = 2 * v194;
      if (2 * v194 >= 1024)
      {
        v95 = 1024;
      }

      v96 = v95;
      v97 = 2047 - v95;
      do
      {
        *(&v195 + v93) = (v79[v97--] + 2048) >> 12;
        v93 += 2;
      }

      while (v93 != 48);
      v192 = (v193 + 48 * v74);
      celt_fir(&v181[-v96], v192, &v181[-v96], v96, 24, &v195);
      v98 = 1024 - v96;
      if (v94 < 1)
      {
        v107 = 0;
      }

      else
      {
        v99 = 0;
        v100 = 0;
        v101 = v73 + v98;
        v102 = v96;
        v103 = v101;
        v104 = v96;
        do
        {
          v106 = *v103++;
          v105 = v106;
          if (v100 <= v106)
          {
            v100 = v105;
          }

          if (v99 >= v105)
          {
            v99 = v105;
          }

          --v104;
        }

        while (v104);
        v107 = 0;
        if (v100 <= -v99)
        {
          v108 = -v99;
        }

        else
        {
          v108 = v100;
        }

        if (v108 >= 0x400)
        {
          v109 = 0;
          v110 = 0;
          do
          {
            v112 = *v101++;
            v111 = v112;
            if (v110 <= v112)
            {
              v110 = v111;
            }

            if (v109 >= v111)
            {
              v109 = v111;
            }

            --v102;
          }

          while (v102);
          if (v110 <= -v109)
          {
            v113 = -v109;
          }

          else
          {
            v113 = v110;
          }

          v114 = ((62 - 2 * __clz(v113)) & 0xFFFE) - 20;
          if (v113)
          {
            v107 = v114;
          }

          else
          {
            v107 = -20;
          }
        }
      }

      v115 = (v96 >> 1);
      if (v115 < 1)
      {
        v118 = 1;
        v117 = 1;
      }

      else
      {
        v116 = 1024 - v115;
        v117 = 1;
        v118 = 1;
        do
        {
          v119 = *(v73 + v116);
          v118 += (v119 * v119) >> v107;
          v120 = *(v73 + v98);
          v117 += (v120 * v120) >> v107;
          ++v98;
          ++v116;
          --v115;
        }

        while (v115);
      }

      if (v118 >= v117)
      {
        v121 = v117;
      }

      else
      {
        v121 = v118;
      }

      v122 = frac_div32(v121 >> 1, v117);
      v123 = celt_sqrt(v122);
      memmove(v79, &v79[v185], v180);
      v124 = v187;
      if (v187 < 1)
      {
        v126 = 0;
      }

      else
      {
        v125 = 0;
        v126 = 0;
        v127 = 1024 - v194;
        v128 = (v123 * v177) >> 15;
        v129 = 1024 - v194 - v189 + 1024;
        v130 = &v79[v188];
        v131 = v190;
        do
        {
          v132 = v194;
          if (v125 < v194)
          {
            v132 = 0;
          }

          else
          {
            LOWORD(v128) = (v123 * v128) >> 15;
          }

          v133 = v125 - v132;
          *v130++ = ((v128 * *(v73 + v133 + v127)) >> 3) & 0xFFFFF000;
          v134 = (16 * v79[v129 + v133] + 0x8000) >> 16;
          v126 += (v134 * v134) >> 8;
          v125 = v133 + 1;
          --v131;
        }

        while (v131);
      }

      v135 = 0;
      v136 = v179;
      do
      {
        *(&v195 + v135) = (v79[v136--] + 2048) >> 12;
        v135 += 2;
      }

      while (v135 != 48);
      v137 = v79 + 2048;
      celt_iir(&v79[v182 + 2048], v192, &v79[v182 + 2048], v124, 24, &v195);
      v138 = v190;
      if (v190 < 1)
      {
        if (v126)
        {
          v139 = 0;
LABEL_122:
          if (v126 < v139)
          {
            v149 = frac_div32((v126 >> 1) + 1, v139 + 1);
            v150 = celt_sqrt(v149);
            v151 = 2 * v150;
            v152 = &v79[v188];
            if (v191 >= 1)
            {
              v153 = v168;
              v154 = v75;
              v155 = &v79[v188];
              do
              {
                v156 = *v154++;
                *v155 = ((*v155 >> 15) & 0xFFFFFFFE) * ((((v151 ^ 0xFFFE) * v156) & 0xFFFF0000 ^ 0x7FFF0000) >> 16) + ((((((v151 ^ 0xFFFE) * v156) & 0xFFFF0000 ^ 0x7FFF0000) >> 16) * *v155) >> 15);
                ++v155;
                --v153;
              }

              while (v153);
            }

            v157 = v187;
            if (v189 >= 1)
            {
              v158 = v191;
              do
              {
                v152[v158] = v151 * (v152[v158] >> 16) + ((v152[v158] * v150) >> 15);
                ++v158;
              }

              while (v158 < v157);
            }
          }
        }
      }

      else
      {
        v139 = 0;
        v140 = &v79[v188];
        v141 = v176;
        do
        {
          v142 = *v140++;
          v139 += (((16 * v142 + 0x8000) >> 16) * ((16 * v142 + 0x8000) >> 16)) >> 8;
          --v138;
        }

        while (v138);
        if (v126 > v139 >> 2)
        {
          goto LABEL_122;
        }

        v143 = (v79 + v169);
        v144 = v172;
        v145 = v170;
        v146 = v171;
        do
        {
          v147 = vmovn_s64(vcgeq_u64(v141, v145));
          if (vuzp1_s16(v147, *v145.i8).u8[0])
          {
            *(v143 - 3) = 0;
          }

          if (vuzp1_s16(v147, *&v145).i8[2])
          {
            *(v143 - 2) = 0;
          }

          if (vuzp1_s16(*&v145, vmovn_s64(vcgeq_u64(v141, *&v146))).i32[1])
          {
            *(v143 - 1) = 0;
            *v143 = 0;
          }

          v148 = vdupq_n_s64(4uLL);
          v146 = vaddq_s64(v146, v148);
          v145 = vaddq_s64(v145, v148);
          v143 += 4;
          v144 -= 4;
        }

        while (v144);
      }

      v67 = v186;
      v159 = (v79 + 2048);
      v160 = v191;
      comb_filter(v72, v159, v186[14], v186[14], v191, -*(v186 + 32), -*(v186 + 32), v186[17], v186[17], 0, 0);
      if (v160 > 1)
      {
        v161 = 0;
        v162 = v175;
        do
        {
          v137[v161] = ((*&v72[4 * v161] * *(v75 + 2 * v162)) >> 15) + ((*&v72[4 * v162] * *(v75 + 2 * v161)) >> 15) + 2 * ((*&v72[4 * v162] >> 16) * *(v75 + 2 * v161) + (*&v72[4 * v161] >> 16) * *(v75 + 2 * v162));
          ++v161;
          --v162;
        }

        while (v77 != v161);
      }

      ++v74;
      v69 = v193;
      if (v74 == v183)
      {
        LODWORD(v4) = v189;
        v68 = v166;
        v8 = v178;
        v51 = v167;
        v57 = v165;
        v66 = v164;
        goto LABEL_134;
      }
    }
  }

  v182 = v15 + 48 * v8;
  v23 = v17;
  v24 = a1[7];
  LODWORD(v25) = *(v167 + 12);
  if (v24 < v25)
  {
    LODWORD(v25) = a1[7];
  }

  LODWORD(v188) = v25;
  if (v23 <= v25)
  {
    v25 = v25;
  }

  else
  {
    v25 = v23;
  }

  v180 = v25;
  v26 = 2 * v20;
  v27 = a1;
  v28 = &v164 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v28, v26);
  if (v16 <= 4)
  {
    v33 = 0;
    if (v16)
    {
      v34 = -512;
    }

    else
    {
      v34 = -1536;
    }

    v35 = &v27[12 * v8 + 21 + v14] + 2 * v23;
    v36 = 2 * v190;
    v37 = v183;
    v30 = v23;
    v29 = v182;
    do
    {
      if (v23 < v24)
      {
        v38 = v24 - v23;
        v39 = v35;
        do
        {
          *v39++ += v34;
          --v38;
        }

        while (v38);
      }

      ++v33;
      v35 += v36;
    }

    while (v33 != v37);
  }

  else
  {
    v29 = v182 + 4 * v190 + 4 * v190 + 4 * v190;
    v30 = v23;
  }

  v40 = v186[10];
  v182 = v29;
  if (v8 >= 1)
  {
    v41 = 0;
    v42 = 0;
    v43 = v180;
    v187 = v30;
    do
    {
      LODWORD(v190) = v42;
      if (v188 > v30)
      {
        v44 = v42 * v4;
        do
        {
          v45 = v192[v30];
          v46 = v45 << v193;
          v47 = (v192[++v30] - v45) << v193;
          if (v47 >= 1)
          {
            v48 = &v28[2 * v41 + 2 * v46];
            v49 = ((v192[v30] - v45) << v193);
            do
            {
              v40 = celt_lcg_rand(v40);
              *v48 = v40 >> 20;
              v48 += 2;
              --v49;
            }

            while (v49);
          }

          renormalise_vector(&v28[2 * v46 + 2 * v44], v47, 0x7FFF);
        }

        while (v30 != v43);
      }

      v42 = v190 + 1;
      LODWORD(v4) = v189;
      v41 += v189;
      v8 = v178;
      v30 = v187;
    }

    while (v190 + 1 != v178);
  }

  v186[10] = v40;
  v50 = v193;
  v51 = v167;
  v52 = v28;
  v53 = v164;
  v54 = v180;
  denormalise_bands(v167, v52, v164, v182, v30, v180, v8, 1 << v193);
  v55 = 0;
  v56 = v192[v54] << v50;
  v57 = v165;
  v58 = v4 / v165;
  v59 = v183;
  v60 = v181;
  do
  {
    v61 = v56;
    if (v57 != 1)
    {
      if (v56 >= v58)
      {
        v61 = v58;
      }

      else
      {
        v61 = v56;
      }
    }

    if (v61 < v4)
    {
      bzero(&v53[v61 + v55], 4 * (~v61 + v4) + 4);
    }

    v55 += v4;
    --v60;
  }

  while (v60);
  v62 = 4 * ((v191 >> 1) - v4 + 2048);
  v63 = v197;
  v64 = v185;
  do
  {
    v65 = *v63++;
    memmove(v65, &v65[4 * v64], v62);
    --v59;
  }

  while (v59);
  compute_inv_mdcts(v51, 0, v53, v196, v8, v193);
  v66 = v53;
  v67 = v186;
  v68 = v166;
LABEL_134:
  result = deemphasis(v196, v68, v4, v8, v57, (v51 + 16), (v67 + 19), v66);
  v67[13] = v184 + 1;
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

uint64_t quant_coarse_energy(uint64_t a1, int a2, int a3, int a4, uint64_t a5, char *a6, unsigned int a7, void *a8, uint64_t a9, int a10, unsigned int a11, int a12, int a13, int *a14, int a15, int a16, int a17)
{
  v81 = a8;
  v85 = a11;
  v86 = a6;
  v94 = *MEMORY[0x277D85DE8];
  v80 = a14;
  if (a13)
  {
    v69 = *a14;
    v18 = 1;
  }

  else
  {
    v19 = (a3 - a2) * a10;
    v69 = *a14;
    v18 = v69 > 2 * v19 && v19 < a12;
    if (a15)
    {
      v18 = 0;
    }
  }

  v20 = 0;
  v21 = 0;
  v68 = a16 * a7;
  v67 = a10 << 9;
  v22 = *(a1 + 8);
  if (a10 <= 1)
  {
    v23 = 1;
  }

  else
  {
    v23 = a10;
  }

  v24 = &v86[2 * a2];
  v25 = 2 * v22;
  v26 = (a5 + 2 * a2);
  do
  {
    if (a2 < a4)
    {
      v27 = v26;
      v28 = v24;
      v29 = a4 - a2;
      do
      {
        v30 = *v27++;
        v31 = v30 >> 3;
        v32 = *v28;
        v28 += 2;
        v21 += (v31 - (v32 >> 3)) * (v31 - (v32 >> 3));
        --v29;
      }

      while (v29);
    }

    ++v20;
    v24 += v25;
    v26 = (v26 + v25);
  }

  while (v20 != v23);
  v82 = a5;
  v84 = a1;
  v33 = (a9 + 32);
  v34 = __clz(*(a9 + 32));
  v35 = *(a9 + 24);
  v73 = *(a9 + 28);
  v36 = v35 + v34;
  v37 = a15 != 0;
  if (v36 - 29 > a7)
  {
    v37 = 0;
  }

  v72 = v37;
  v38 = v21 >> 14;
  v39 = v36 - 29 <= a7 && v18;
  v78 = a7;
  v70 = v39;
  if (a15)
  {
    v39 = v36 - 29 <= a7;
  }

  v76 = v39;
  if (v38 >= 200)
  {
    v38 = 200;
  }

  v79 = v38;
  v40 = a12 << 7;
  if (a12 << 7 >= 0x4000)
  {
    v40 = 0x4000;
  }

  v77 = v36 - 32;
  if (a3 - a2 <= 10)
  {
    v40 = 0x4000;
  }

  if (a17)
  {
    v40 = 3;
  }

  v41 = v40;
  v93[0] = *a9;
  *(v93 + 12) = *(a9 + 12);
  v92 = *(a9 + 48);
  v91 = *v33;
  v42 = 2 * v22 * a10;
  v44 = &v65 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v44, v42);
  v45 = v44;
  bzero(v44, v42);
  memcpy(v44, v86, v42);
  v75 = a3;
  v74 = a17;
  v71 = v41;
  v83 = v85;
  if (v76 == 1)
  {
    v64 = v41;
    v46 = v84;
    v49 = v78;
    v50 = v77;
    v47 = quant_coarse_energy_impl(v84, a2, a3, v82, v44, v78, v77, &e_prob_model + 84 * v85 + 42, v44, a9, a10, v85, 1, v64, a17);
    if (v70)
    {
      memcpy(v86, v44, 2 * *(v46 + 8) * a10);
      v48 = *(v46 + 8) * a10;
      goto LABEL_36;
    }

    v70 = v47;
    v66 = v44;
    v76 = a10;
  }

  else
  {
    v66 = &v65 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
    v76 = a10;
    v49 = v78;
    v70 = 0;
    v50 = v77;
  }

  v77 = ec_tell_frac(a9);
  v51 = *a9;
  v87 = *(a9 + 8);
  v52 = *(a9 + 28);
  v88 = *(a9 + 24);
  v89 = *v33;
  v90 = *(a9 + 48);
  v53 = v73;
  v78 = v52;
  v54 = (v52 - v73);
  v55 = &v65 - ((v54 + 15) & 0x1FFFFFFF0);
  bzero(v55, v54);
  memcpy(v55, (v51 + v53), v54);
  *a9 = v93[0];
  *(a9 + 12) = *(v93 + 12);
  *(a9 + 28) = v53;
  *v33 = v91;
  *(a9 + 48) = v92;
  result = quant_coarse_energy_impl(v84, a2, v75, v82, v86, v49, v50, &e_prob_model + 84 * v83, v81, a9, v76, v85, 0, v71, v74);
  if (!v72 || v70 >= result && (v70 != result || (v62 = v68 * v69 / v67, result = ec_tell_frac(a9), (result + v62) <= v77)))
  {
    v63 = ((pred_coef[v83] * pred_coef[v83]) >> 15);
    v60 = v80;
    v61 = v79 + ((*v80 >> 15) & 0xFFFFFFFE) * v63 + ((v63 * *v80) >> 15);
    goto LABEL_40;
  }

  *a9 = v51;
  *(a9 + 8) = v87;
  v57 = v78;
  *(a9 + 24) = v88;
  *(a9 + 28) = v57;
  *v33 = v89;
  *(a9 + 48) = v90;
  memcpy((v51 + v53), v55, v54);
  v58 = v84;
  v59 = v76;
  memcpy(v86, v66, 2 * *(v84 + 8) * v76);
  v48 = *(v58 + 8) * v59;
LABEL_36:
  result = memcpy(v81, v45, 2 * v48);
  v60 = v80;
  v61 = v79;
LABEL_40:
  *v60 = v61;
  return result;
}

uint64_t quant_coarse_energy_impl(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, int a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12, int a13, __int16 a14, int a15)
{
  v58[1] = *MEMORY[0x277D85DE8];
  v58[0] = 0;
  v50 = a2;
  if (a7 + 3 <= a6)
  {
    ec_enc_bit_logp(a10, a13, 3);
    a2 = v50;
  }

  if (a13)
  {
    v53 = 0;
    v54 = 4915;
  }

  else
  {
    v53 = pred_coef[a12];
    v54 = beta_coef[a12];
  }

  if (a2 >= a3)
  {
    v18 = 0;
    goto LABEL_65;
  }

  v18 = 0;
  v52 = a6 + 32;
  v45 = a3;
  if (a11 <= 1)
  {
    v19 = 1;
  }

  else
  {
    v19 = a11;
  }

  v51 = v19;
  v20 = *(a1 + 8);
  v21 = a2;
  do
  {
    v22 = 0;
    v49 = 3 * a11 * (v21 - a3);
    if (a15)
    {
      v23 = v21 <= 1;
    }

    else
    {
      v23 = 1;
    }

    v24 = !v23;
    if (v21 >= 20)
    {
      v25 = 20;
    }

    else
    {
      v25 = v21;
    }

    v47 = (2 * v25) | 1;
    v48 = 2 * v25;
    do
    {
      v26 = v21 + v20 * v22;
      v27 = *(a4 + 2 * v26);
      v28 = *(a5 + 2 * v26);
      if (v28 <= -9216)
      {
        v29 = -9216;
      }

      else
      {
        v29 = v28;
      }

      v30 = *(v58 + v22);
      v31 = v30 + ((v53 * v29 + 128) >> 8);
      v32 = (v27 << 7) - v31;
      v33 = (v32 + 0x10000) >> 17;
      v34 = v28 - a14;
      if (v34 >= -28672)
      {
        v34 = v34;
      }

      else
      {
        v34 = -28672;
      }

      v23 = v34 <= v27;
      v35 = (v33 + ((v34 - v27) >> 10)) & ((v33 + ((v34 - v27) >> 10)) >> 31);
      if (v23)
      {
        v35 = (v32 + 0x10000) >> 17;
      }

      if (v33 < 0)
      {
        v36 = v35;
      }

      else
      {
        v36 = (v32 + 0x10000) >> 17;
      }

      v57 = v36;
      v37 = v52 - *(a10 + 24) - __clz(*(a10 + 32));
      v38 = v36;
      if (v21 != a2)
      {
        v38 = v36;
        if (v37 + v49 <= 23)
        {
          v38 = v36 >= 1 ? 1 : v36;
          v57 = v38;
          if (v37 + v49 <= 15)
          {
            if (v38 < 0)
            {
              v38 = -1;
            }

            v57 = v38;
          }
        }
      }

      if (v24)
      {
        v38 &= v38 >> 31;
        v57 = v38;
      }

      if (v37 >= 15)
      {
        ec_laplace_encode(a10, &v57, *(a8 + v48) << 7, *(a8 + v47) << 6);
LABEL_54:
        a2 = v50;
        goto LABEL_55;
      }

      if (v37 >= 2)
      {
        if (v38 >= 1)
        {
          v39 = 1;
        }

        else
        {
          v39 = v38;
        }

        if (v39 < 0)
        {
          v39 = -1;
        }

        v57 = v39;
        ec_enc_icdf(a10, (2 * v39) ^ (v38 >> 31), small_energy_icdf, 2);
        goto LABEL_54;
      }

      if (v37 == 1)
      {
        v57 = v38 & (v38 >> 31);
        ec_enc_bit_logp(a10, -v57, 1);
        goto LABEL_54;
      }

      v57 = -1;
LABEL_55:
      v40 = v57;
      v20 = *(a1 + 8);
      v41 = v21 + v20 * v22;
      *(a9 + 2 * v41) = ((v32 + 64) >> 7) - (v57 << 10);
      v42 = v36 - v40;
      if (v36 - v40 < 0)
      {
        v42 = v40 - v36;
      }

      v18 += v42;
      v43 = v31 + (v40 << 17);
      if (v43 <= -3670016)
      {
        v43 = -3670016;
      }

      *(a5 + 2 * v41) = (v43 + 64) >> 7;
      *(v58 + v22++) = v30 + (v40 << 17) - v54 * (4 * v40);
    }

    while (v51 != v22);
    ++v21;
    a3 = v45;
  }

  while (v21 != v45);
LABEL_65:
  if (a15)
  {
    return 0;
  }

  else
  {
    return v18;
  }
}

uint64_t *quant_fine_energy(uint64_t *result, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, int a8)
{
  if (a2 < a3)
  {
    v12 = result;
    if (a8 <= 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = a8;
    }

    v14 = a2;
    do
    {
      v15 = *(a6 + 4 * v14);
      if (v15 >= 1)
      {
        v16 = 0;
        v23 = 0x10000 << v15 >> 16;
        v17 = *(v12 + 2);
        do
        {
          v18 = (*(a5 + 2 * v14 + 2 * v17 * v16) + 512) >> (10 - v15);
          if (v18 >= v23)
          {
            v18 = v23 - 1;
          }

          v19 = v18 & ~(v18 >> 31);
          result = ec_enc_bits(a7, v19, v15);
          v15 = *(a6 + 4 * v14);
          v17 = *(v12 + 2);
          v20 = v14 + v17 * v16;
          v21 = (((v19 << 10) | 0x200u) >> v15) - 512;
          *(a4 + 2 * v20) += v21;
          *(a5 + 2 * v20) -= v21;
          ++v16;
        }

        while (v13 != v16);
      }

      ++v14;
    }

    while (v14 != a3);
  }

  return result;
}

uint64_t *quant_energy_finalise(uint64_t *result, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t *a9, int a10)
{
  v11 = result;
  v12 = 0;
  v13 = a10;
  if (a10 <= 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = a10;
  }

  v23 = a2;
  v15 = a3;
  v16 = 1;
  v30 = a7;
  v27 = a3;
  do
  {
    v26 = v16;
    if (a2 < a3 && a8 >= v13)
    {
      v17 = v23;
      v31 = v12;
      do
      {
        if (*(a6 + 4 * v17) <= 7 && *(a7 + 4 * v17) == v12)
        {
          v32 = a8;
          v18 = 0;
          v19 = *(v11 + 2);
          do
          {
            v20 = *(a5 + 2 * v17 + 2 * v19 * v18);
            v21 = v20;
            result = ec_enc_bits(a9, (v20 >> 15) ^ 1, 1);
            if (v21 >= 0)
            {
              v22 = 512;
            }

            else
            {
              v22 = -512;
            }

            v19 = *(v11 + 2);
            *(a4 + 2 * v17 + 2 * v19 * v18++) += v22 >> (*(a6 + 4 * v17) + 1);
          }

          while (v14 != v18);
          v12 = v31;
          a8 = v32 - v14;
          a7 = v30;
          v13 = a10;
          v15 = v27;
        }

        ++v17;
      }

      while (v17 < v15 && a8 >= v13);
    }

    v16 = 0;
    v12 = 1;
  }

  while ((v26 & 1) != 0);
  return result;
}

uint64_t unquant_coarse_energy(uint64_t result, int a2, int a3, uint64_t a4, int a5, uint64_t a6, int a7, int a8)
{
  v10 = a2;
  v27 = result;
  v28[1] = *MEMORY[0x277D85DE8];
  v28[0] = 0;
  if (a5)
  {
    v25 = 0;
    v26 = 4915;
  }

  else
  {
    v25 = pred_coef[a8];
    v26 = beta_coef[a8];
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

      v23 = (2 * v15) | 1;
      v24 = 2 * v15;
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
          result = ec_laplace_decode(a6, v11[v24] << 7, v11[v23] << 6);
        }

        v18 = v10 + *(v27 + 8) * v14;
        v19 = *(a4 + 2 * v18);
        if (v19 <= -9216)
        {
          v19 = -9216;
        }

        v20 = *(v28 + v14) + (result << 17);
        v21 = v20 + ((v25 * v19 + 128) >> 8);
        if (v21 <= -3670016)
        {
          v21 = -3670016;
        }

        *(a4 + 2 * v18) = (v21 + 64) >> 7;
        *(v28 + v14++) = v20 - v26 * (4 * result);
      }

      while (v13 != v14);
      ++v10;
    }

    while (v10 != a3);
  }

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

  v20 = a2;
  v16 = a3;
  v17 = 1;
  v24 = a3;
  do
  {
    v23 = v17;
    if (a2 < a3 && a7 >= a9)
    {
      v18 = v20;
      v26 = v14;
      do
      {
        if (*(a5 + 4 * v18) <= 7 && *(a6 + 4 * v18) == v14)
        {
          for (i = 0; i != v15; ++i)
          {
            result = ec_dec_bits(a8, 1u);
            *(a4 + 2 * v18 + 2 * *(v13 + 8) * i) += ((result << 10) - 512) >> (*(a5 + 4 * v18) + 1);
          }

          a7 -= v15;
          v16 = v24;
          v14 = v26;
        }

        ++v18;
      }

      while (v18 < v16 && a7 >= a9);
    }

    v17 = 0;
    v14 = 1;
  }

  while ((v23 & 1) != 0);
  return result;
}

uint64_t amp2Log2(uint64_t result, int a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  v7 = 0;
  v22 = 2 * (~a2 + a3);
  v23 = a2;
  if (a6 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = a6;
  }

  v26 = a2;
  v25 = a3;
  v24 = result;
  v21 = a2;
  do
  {
    if (a2 >= 1)
    {
      v9 = *(result + 8) * v7;
      v10 = v26;
      v11 = (a4 + 4 * v9);
      v12 = (a5 + 2 * v9);
      v13 = eMeans;
      do
      {
        v14 = *v11++;
        v15 = 4 * v14;
        if (4 * v14)
        {
          v16 = __clz(v15) ^ 0x1F;
          v17 = v15 >> (v16 - 15);
          v18 = v15 << (15 - v16);
          if (v16 > 0xF)
          {
            v18 = v17;
          }

          v19 = (v16 << 10) + ((((((((((-2802 * (((v18 << 16) + 0x40000000) >> 16)) >> 16) + 2545) * (((v18 << 16) + 0x40000000) >> 15) - 341901312) >> 16) * (((v18 << 16) + 0x40000000) >> 16)) >> 15) + 15746) * (((v18 << 16) + 0x40000000) >> 15) - 445186048) >> 20) - 13312;
        }

        else
        {
          LOWORD(v19) = -32767;
        }

        v20 = *v13++;
        *v12++ = v19 - (v20 << 6);
        --v10;
      }

      while (v10);
    }

    if (a2 < a3)
    {
      memset_pattern16((a5 + 2 * (v23 + *(result + 8) * v7)), &unk_26ED6B9F0, v22 + 2);
      result = v24;
      a2 = v21;
      a3 = v25;
    }

    ++v7;
  }

  while (v7 != v8);
  return result;
}

uint64_t alg_quant(__int16 *a1, int a2, int a3, int a4, int a5, uint64_t *a6)
{
  v56 = a6;
  v57 = *MEMORY[0x277D85DE8];
  v11 = 2 * a2;
  v12 = &v54[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  bzero(v12, v11);
  v13 = 4 * a2;
  v14 = &v54[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  bzero(v14, v13);
  bzero(v12, v11);
  exp_rotation(a1, a2, 1, a5, a3, a4);
  v15 = 0;
  if (a2 <= 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = a2;
  }

  do
  {
    v17 = a1[v15];
    if (v17 <= 0)
    {
      a1[v15] = -v17;
      v18 = -1;
    }

    else
    {
      v18 = 1;
    }

    *&v12[2 * v15] = v18;
    v14[v15] = 0;
    *&v12[2 * v15++] = 0;
  }

  while (v16 != v15);
  if (a3 <= a2 >> 1)
  {
    v24 = 0;
    v25 = 0;
    v31 = a3;
  }

  else
  {
    v19 = 0;
    v20 = 0;
    do
    {
      v20 += a1[v19++];
    }

    while (v16 != v19);
    v55 = a5;
    if (v20 <= a3)
    {
      v20 = 0x4000;
      *a1 = 0x4000;
      if (a2 <= 2)
      {
        v21 = 2;
      }

      else
      {
        v21 = a2;
      }

      bzero(a1 + 1, 2 * (v21 - 1));
    }

    v22 = celt_rcp(v20);
    v23 = celt_rcp(v20);
    v24 = 0;
    LOWORD(v25) = 0;
    v26 = ((v22 & 0xFFFF0000 | v23) * (a3 - 1)) >> 16;
    v27 = v16;
    v28 = a1;
    v29 = v14;
    v30 = v12;
    v31 = a3;
    do
    {
      v32 = *v28++;
      v33 = (v26 * v32) >> 15;
      *v29++ = v33;
      v25 = v33 * v33 + v25;
      v24 += v33 * v32;
      *v30++ = 2 * v33;
      v31 -= v33;
      --v27;
    }

    while (v27);
    a5 = v55;
  }

  if (v31 <= a2 + 3)
  {
    if (v31 >= 1)
    {
      for (i = 0; i != v31; ++i)
      {
        v35 = 0;
        v36 = 0;
        v37 = 0;
        v38 = 32 - __clz(a3 - v31 + 1 + i);
        v39 = v25 + 1;
        v40 = -32767;
        do
        {
          v41 = (v24 + a1[v35]) >> v38;
          v42 = (2 * v41 * v41) >> 16;
          if (v42 * v37 > v40 * (*&v12[2 * v35] + v39))
          {
            v36 = v35;
            v40 = v42;
            v37 = *&v12[2 * v35] + v39;
          }

          ++v35;
        }

        while (v16 != v35);
        v43 = *&v12[2 * v36];
        v24 += a1[v36];
        *&v12[2 * v36] = v43 + 2;
        v25 = v43 + v39;
        ++v14[v36];
      }
    }
  }

  else
  {
    *v14 += v31;
  }

  for (j = 0; j != v16; ++j)
  {
    v45 = *&v12[2 * j];
    a1[j] *= *&v12[2 * j];
    if (v45 < 0)
    {
      v14[j] = -v14[j];
    }
  }

  encode_pulses(v14, a2, a3, v56);
  if (a5 < 2)
  {
    return 1;
  }

  v47 = 0;
  LODWORD(result) = 0;
  v48 = a2 / a5;
  if (a2 / a5 <= 1)
  {
    v49 = 1;
  }

  else
  {
    v49 = v48;
  }

  v50 = 4 * v48;
  do
  {
    v51 = v14;
    v52 = v49;
    do
    {
      v53 = *v51++;
      result = ((v53 != 0) << v47) | result;
      --v52;
    }

    while (v52);
    ++v47;
    v14 = (v14 + v50);
  }

  while (v47 != a5);
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
  v36[1] = *MEMORY[0x277D85DE8];
  v14 = 4 * a2;
  v15 = v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v15, v14);
  decode_pulses(v15, a2, a3, a6);
  v16 = 0;
  if (a2 <= 1)
  {
    v17 = 1;
  }

  else
  {
    v17 = a2;
  }

  v18 = v17;
  v19 = v15;
  do
  {
    v20 = *v19;
    v19 += 2;
    v16 += v20 * v20;
    --v18;
  }

  while (v18);
  v21 = 31 - __clz(v16);
  v22 = v21 >> 1;
  LOBYTE(v21) = v21 & 0xFE;
  v23 = v16 >> (v21 - 14);
  v24 = v16 << (14 - v21);
  if (v22 <= 7)
  {
    v25 = v24;
  }

  else
  {
    v25 = v23;
  }

  v26 = celt_rsqrt_norm(v25);
  for (i = 0; i != v17; ++i)
  {
    *(a1 + 2 * i) = (((1 << (v22 + 1)) >> 1) + *&v15[4 * i] * ((2 * a7 * v26 + 0x8000) >> 16)) >> (v22 + 1);
  }

  exp_rotation(a1, a2, -1, a5, a3, a4);
  if (a5 < 2)
  {
    return 1;
  }

  v29 = 0;
  LODWORD(result) = 0;
  v30 = a2 / a5;
  if (a2 / a5 <= 1)
  {
    v31 = 1;
  }

  else
  {
    v31 = v30;
  }

  v32 = 4 * v30;
  do
  {
    v33 = v15;
    v34 = v31;
    do
    {
      v35 = *v33++;
      result = ((v35 != 0) << v29) | result;
      --v34;
    }

    while (v34);
    ++v29;
    v15 += v32;
  }

  while (v29 != a5);
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
  v26 = *MEMORY[0x277D85DE8];
  v6 = *a2;
  if (a3 >= 1)
  {
    bzero(v25, 4 * a3);
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
        v11 = v25;
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
      v25[v8] = v14 >> 3;
      v15 = v14 >> 16;
      if (v8)
      {
        v16 = 0;
        v17 = 2 * v15;
        v14 = v14;
        v18 = v9;
        do
        {
          v19 = v25[v16];
          v20 = *(v25 + v18);
          v25[v16] = v19 + v17 * (v20 >> 16) + ((v20 * v15) >> 15) + (((v20 >> 16) * v14) >> 15);
          *(v25 + v18) = v20 + v17 * (v19 >> 16) + ((v19 * v15) >> 15) + (((v19 >> 16) * v14) >> 15);
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
    v23 = v25;
    do
    {
      v24 = *v23++;
      *a1++ = (v24 + 0x8000) >> 16;
      --v22;
    }

    while (v22);
  }
}

uint64_t celt_fir(__int16 *a1, uint64_t a2, uint64_t a3, int a4, int a5, _WORD *a6)
{
  v58 = *MEMORY[0x277D85DE8];
  v12 = 2 * a5;
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v13, v12);
  v14 = 2 * (a5 + a4);
  v56 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v56, v14);
  if (a5 >= 1)
  {
    v18 = (a2 + 2 * a5 - 2);
    v19 = a5;
    v20 = (&v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    do
    {
      v21 = *v18--;
      *v20++ = v21;
      --v19;
    }

    while (v19);
    v22 = &a6[a5 - 1];
    v23 = a5;
    v24 = v56;
    do
    {
      v25 = *v22--;
      *v24++ = v25;
      --v23;
    }

    while (v23);
  }

  v26 = a4 - 1;
  if (a4 >= 1)
  {
    memcpy(&v56[v12], a1, (2 * a4));
  }

  if (a5 >= 1)
  {
    v27 = a5;
    do
    {
      *a6++ = a1[v26--];
      --v27;
    }

    while (v27);
  }

  v53 = a5;
  v54 = a3;
  v55 = a4;
  v28 = 0;
  if (a4 >= 4)
  {
    v29 = a1 + 2;
    v30 = (a3 + 4);
    v31 = v56;
    do
    {
      v57 = 0uLL;
      xcorr_kernel(v13, v31, &v57, a5, v15, v16, v17);
      v32 = v57.i32[1];
      v33 = *(v29 - 2) + ((v57.i32[0] + 2048) >> 12);
      if (v33 <= -32768)
      {
        v33 = -32768;
      }

      if (v33 >= 0x7FFF)
      {
        LOWORD(v33) = 0x7FFF;
      }

      *(v30 - 2) = v33;
      v34 = *(v29 - 1) + ((v32 + 2048) >> 12);
      if (v34 <= -32768)
      {
        v34 = -32768;
      }

      if (v34 >= 0x7FFF)
      {
        LOWORD(v34) = 0x7FFF;
      }

      *(v30 - 1) = v34;
      v35 = v57.i32[3];
      v36 = *v29 + ((v57.i32[2] + 2048) >> 12);
      if (v36 <= -32768)
      {
        v36 = -32768;
      }

      if (v36 >= 0x7FFF)
      {
        LOWORD(v36) = 0x7FFF;
      }

      *v30 = v36;
      v37 = v29[1] + ((v35 + 2048) >> 12);
      if (v37 <= -32768)
      {
        v37 = -32768;
      }

      if (v37 >= 0x7FFF)
      {
        LOWORD(v37) = 0x7FFF;
      }

      v30[1] = v37;
      v28 += 4;
      v29 += 4;
      v31 += 4;
      v30 += 4;
    }

    while (a4 - 3 > v28);
  }

  result = v55;
  v40 = v53;
  v39 = v54;
  if (v28 < v55)
  {
    v41 = v28;
    v42 = &v56[2 * v28];
    do
    {
      if (a5 < 1)
      {
        v50 = 0;
      }

      else
      {
        v43 = 0;
        v44 = v40;
        v45 = v13;
        v46 = v42;
        do
        {
          v48 = *v45++;
          v47 = v48;
          v49 = *v46;
          v46 += 2;
          v43 += v49 * v47;
          --v44;
        }

        while (v44);
        v50 = (v43 + 2048) >> 12;
      }

      v51 = v50 + a1[v41];
      if (v51 <= -32768)
      {
        v51 = -32768;
      }

      if (v51 >= 0x7FFF)
      {
        LOWORD(v51) = 0x7FFF;
      }

      *(v39 + 2 * v41++) = v51;
      v42 += 2;
    }

    while (v41 < result);
  }

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
  v63 = *MEMORY[0x277D85DE8];
  v12 = a5;
  v13 = 2 * a5;
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v14, v13);
  v15 = a5 + a4;
  v16 = 2 * (a5 + a4);
  v60 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v60, v16);
  v19 = a5;
  if (a5 < 1)
  {
    v29 = 0;
    v26 = v60;
  }

  else
  {
    v20 = &a2[v12 - 1];
    v21 = a5;
    v22 = v14;
    do
    {
      v23 = *v20--;
      *v22++ = v23;
      --v21;
    }

    while (v21);
    v24 = &a6[v12 - 1];
    v25 = a5;
    v26 = v60;
    v27 = v60;
    do
    {
      v28 = *v24--;
      *v27++ = -v28;
      --v25;
    }

    while (v25);
    v29 = a5;
  }

  if (v29 < v15)
  {
    bzero(&v60[2 * v29], 2 * (v15 + ~v29) + 2);
    v26 = v60;
  }

  v59 = v12;
  if (a4 < 4)
  {
    LODWORD(v30) = 0;
  }

  else
  {
    v30 = 0;
    v57 = a4;
    v58 = a3;
    v61 = (a4 - 3);
    v31 = &v26[v59 + 2];
    v32 = (a3 + 8);
    v56 = a1;
    v33 = a1;
    v34 = v26;
    do
    {
      v35 = *v33++;
      v62 = v35;
      xcorr_kernel(v14, v34, &v62, a5, *v35.i64, v17, v18);
      v36 = v62.i64[0];
      v37 = -((16 * v62.i32[0] + 0x8000) >> 16);
      *(v31 - 2) = v37;
      v38 = *a2;
      v39 = HIDWORD(v36) + v37 * v38;
      v40 = -((16 * v39 + 0x8000) >> 16);
      *(v32 - 2) = v36;
      *(v32 - 1) = v39;
      *(v31 - 1) = v40;
      v41 = a2[1];
      v42 = v62.i32[2] + v40 * v38 + v41 * v37;
      v43 = v62.i32[3] + v40 * v41 + -((16 * v42 + 0x8000) >> 16) * v38;
      v44 = a2[2];
      *v31 = -((16 * v42 + 0x8000) >> 16);
      v45 = v43 + v44 * v37;
      v30 += 4;
      *(v31 + 1) = -((16 * v45 + 0x8000) >> 16);
      *v32 = v42;
      v32[1] = v45;
      v32 += 4;
      v31 += 8;
      v34 += 4;
    }

    while (v30 < v61);
    LODWORD(a4) = v57;
    a3 = v58;
    a1 = v56;
    v26 = v60;
  }

  if (v30 < a4)
  {
    v46 = v30;
    v47 = &v26[v59];
    do
    {
      v48 = a1->i32[v46];
      if (a5 >= 1)
      {
        v49 = &v26[v46];
        v50 = a5;
        v51 = v14;
        do
        {
          v53 = *v51++;
          v52 = v53;
          v54 = *v49;
          v49 += 2;
          v48 -= v54 * v52;
          --v50;
        }

        while (v50);
      }

      *&v47[2 * v46] = (v48 + 2048) >> 12;
      *(a3 + 4 * v46++) = v48;
    }

    while (v46 != a4);
  }

  if (a5 >= 1)
  {
    v55 = a4 - 1;
    do
    {
      *a6++ = *(a3 + 4 * v55--);
      --v19;
    }

    while (v19);
  }
}

uint64_t _celt_autocorr(char *a1, unsigned int *a2, uint64_t a3, int a4, int a5, int a6)
{
  v45[1] = *MEMORY[0x277D85DE8];
  v12 = 2 * a6;
  v13 = v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v13, v12);
  if (a4)
  {
    v14 = a6 - 1;
    if (a6 >= 1)
    {
      memcpy(v13, a1, (2 * a6));
    }

    v15 = v13;
    if (a4 >= 1)
    {
      v16 = 0;
      do
      {
        v17 = *(a3 + v16);
        *&v13[v16] = (v17 * *&a1[v16]) >> 15;
        *&v13[2 * v14] = (*&a1[2 * v14] * v17) >> 15;
        --v14;
        v16 += 2;
      }

      while (2 * a4 != v16);
      v15 = v13;
    }
  }

  else
  {
    v15 = a1;
  }

  v18 = (a6 << 7) | 1;
  if (a6)
  {
    v18 += (*v15 * *v15) >> 9;
  }

  v19 = a6 - a5;
  v20 = a6;
  if (a6 >= 2)
  {
    v21 = a6 & 1;
    v22 = &v15[2 * v21 + 2];
    do
    {
      v18 += ((*(v22 - 1) * *(v22 - 1)) >> 9) + ((*v22 * *v22) >> 9);
      v21 += 2;
      v22 += 2;
    }

    while (v21 < a6);
  }

  if (v18 < 0x400000)
  {
    v28 = 0;
    v13 = v15;
  }

  else
  {
    v23 = __clz(v18);
    v24 = ((11 - v23 + (((11 - v23) & 0x80) >> 7)) << 24) >> 25;
    if (a6 >= 1)
    {
      v25 = a6;
      v26 = v13;
      do
      {
        v27 = *v15;
        v15 += 2;
        *v26++ = (((1 << v24) >> 1) + v27) >> v24;
        --v25;
      }

      while (v25);
    }

    v28 = (2 * v24);
  }

  v29 = (a5 + 1);
  celt_pitch_xcorr_c(v13, v13, a2, v19, a5 + 1);
  if ((a5 & 0x80000000) == 0)
  {
    v30 = 0;
    v31 = 0;
    v32 = a5;
    v33 = v20 - v19;
    do
    {
      if (v31 >= v33)
      {
        v34 = 0;
      }

      else
      {
        v34 = 0;
        v35 = &v13[2 * v30 + 2 * v19];
        v36 = &v13[2 * v19];
        v37 = v32;
        do
        {
          v39 = *v36;
          v36 += 2;
          v38 = v39;
          v40 = *v35;
          v35 += 2;
          v34 += v40 * v38;
          --v37;
        }

        while (v37);
      }

      a2[v31++] += v34;
      ++v19;
      --v30;
      --v32;
    }

    while (v31 != v29);
  }

  v41 = *a2;
  if (!v28)
  {
    *a2 = ++v41;
  }

  if (v41 > 0xFFFFFFF)
  {
    if (v41 >> 29)
    {
      if (v41 >> 30)
      {
        v43 = 2;
      }

      else
      {
        v43 = 1;
      }

      if ((a5 & 0x80000000) == 0)
      {
        do
        {
          *a2 = *a2 >> v43;
          ++a2;
          --v29;
        }

        while (v29);
      }

      return (v43 + v28);
    }
  }

  else
  {
    v42 = __clz(v41) - 3;
    if ((a5 & 0x80000000) == 0)
    {
      do
      {
        *a2++ <<= v42;
        --v29;
      }

      while (v29);
    }

    return v28 - v42;
  }

  return v28;
}

void pitch_downsample(int **a1, char *a2, int a3, int a4)
{
  v4 = a2;
  v51 = *MEMORY[0x277D85DE8];
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

  _celt_autocorr(a2, &v49, 0, 0, 4, v23);
  v49 += v49 >> 13;
  v50 = vsubq_s32(vmlaq_s32(v50, vshrq_n_s32(v50, 0x10uLL), xmmword_26ED6BA20), vshrq_n_u32(vmull_u16(vmovn_s32(v50), 0x20001200080002), 0xFuLL));
  _celt_lpc(&v45, &v49, 4);
  v32 = 0;
  LOWORD(v33) = 0x7FFF;
  do
  {
    v33 = (29491 * v33) >> 15;
    *(&v45 + v32) = (v33 * *(&v45 + v32)) >> 15;
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
    v39 = (v45 + 3277);
    v40 = (v46 + ((26214 * v45) >> 15));
    v41 = (v47 + ((26214 * v46) >> 15));
    v42 = (v48 + ((26214 * v47) >> 15));
    v43 = (52428 * v48) >> 16;
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
  v70 = a5;
  v71 = a2;
  v72[1] = *MEMORY[0x277D85DE8];
  v72[0] = 0;
  v7 = a4 + a3;
  v69 = a3;
  v8 = (a3 >> 2);
  v9 = 2 * v8;
  v10 = &v68[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  bzero(v10, v9);
  v11 = (v7 >> 2);
  v12 = 2 * v11;
  v13 = &v68[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = (a4 >> 1);
  v15 = &v68[-((4 * v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (v8 >= 1)
  {
    v16 = v8;
    v17 = v10;
    v18 = a1;
    do
    {
      v19 = *v18;
      v18 += 2;
      *v17++ = v19;
      --v16;
    }

    while (v16);
  }

  bzero(&v68[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)], v12);
  if (v11 >= 1)
  {
    v20 = (v7 >> 2);
    v21 = v13;
    v22 = v71;
    do
    {
      v23 = *v22;
      v22 += 2;
      *v21++ = v23;
      --v20;
    }

    while (v20);
  }

  if (v8 < 1)
  {
    v25 = 0;
    v24 = 0;
  }

  else
  {
    LOWORD(v24) = 0;
    LOWORD(v25) = 0;
    v26 = v10;
    v27 = v8;
    do
    {
      v29 = *v26++;
      v28 = v29;
      if (v25 <= v29)
      {
        LOWORD(v25) = v28;
      }

      if (v24 >= v28)
      {
        LOWORD(v24) = v28;
      }

      --v27;
    }

    while (v27);
    v25 = v25;
    v24 = v24;
  }

  if (v25 <= -v24)
  {
    v30 = -v24;
  }

  else
  {
    v30 = v25;
  }

  if (v11 < 1)
  {
    v32 = 0;
    v31 = 0;
  }

  else
  {
    LOWORD(v31) = 0;
    LOWORD(v32) = 0;
    v33 = v13;
    v34 = (v7 >> 2);
    do
    {
      v36 = *v33++;
      v35 = v36;
      if (v32 <= v36)
      {
        LOWORD(v32) = v35;
      }

      if (v31 >= v35)
      {
        LOWORD(v31) = v35;
      }

      --v34;
    }

    while (v34);
    v32 = v32;
    v31 = v31;
  }

  v37 = 0;
  if (v32 <= -v31)
  {
    v38 = -v31;
  }

  else
  {
    v38 = v32;
  }

  if (v30 <= v38)
  {
    v30 = v38;
  }

  if (v30 <= 1)
  {
    v30 = 1;
  }

  v39 = __clz(v30);
  if ((v39 ^ 0x1C) >= 0xC)
  {
    v40 = 20 - v39;
    if (v8 >= 1)
    {
      v41 = v8;
      v42 = v10;
      do
      {
        *v42++ >>= v40;
        --v41;
      }

      while (v41);
    }

    if (v11 >= 1)
    {
      v43 = v13;
      do
      {
        *v43++ >>= v40;
        --v11;
      }

      while (v11);
    }

    v37 = 2 * v40;
  }

  bzero(v15, 4 * v14);
  v44 = celt_pitch_xcorr_c(v10, v13, v15, v8, a4 >> 2);
  find_best_pitch(v15, v13, v8, a4 >> 2, v72, 0, v44);
  if (v14 <= 0)
  {
    LODWORD(v48) = v69 >> 1;
    v49 = 1;
  }

  else
  {
    v45 = 0;
    v46 = 2 * LODWORD(v72[0]);
    v47 = 2 * HIDWORD(v72[0]);
    v48 = (v69 >> 1);
    v49 = 1;
    v50 = v71;
    do
    {
      *&v15[4 * v45] = 0;
      v51 = v45 - v46;
      if (v45 - v46 < 0)
      {
        v51 = v46 - v45;
      }

      if (v51 < 3)
      {
        goto LABEL_51;
      }

      v52 = v45 - v47;
      if (v45 - v47 < 0)
      {
        v52 = v47 - v45;
      }

      if (v52 <= 2)
      {
LABEL_51:
        if (v48 < 1)
        {
          v53 = 0;
        }

        else
        {
          v53 = 0;
          v54 = v48;
          v55 = a1;
          v56 = v50;
          do
          {
            v58 = *v55++;
            v57 = v58;
            v59 = *v56++;
            v53 += (v59 * v57) >> v37;
            --v54;
          }

          while (v54);
        }

        if (v53 < 0)
        {
          v60 = -1;
        }

        else
        {
          v60 = v53;
        }

        *&v15[4 * v45] = v60;
        if (v49 <= v53)
        {
          v49 = v53;
        }
      }

      ++v45;
      ++v50;
    }

    while (v45 != v14);
  }

  result = find_best_pitch(v15, v71, v48, a4 >> 1, v72, v37 | 1u, v49);
  v62 = 0;
  if (SLODWORD(v72[0]) < 1)
  {
    v63 = v70;
  }

  else
  {
    v63 = v70;
    if (SLODWORD(v72[0]) < v14 - 1)
    {
      v64 = &v15[4 * LODWORD(v72[0])];
      v65 = *(v64 - 1);
      v66 = *v64;
      v67 = v64[1];
      if (v67 - v65 <= (45876 * ((v66 - v65) >> 16) + ((22938 * (v66 - v65)) >> 15)))
      {
        v62 = v65 - v67 > (45876 * ((v66 - v67) >> 16) + ((22938 * (v66 - v67)) >> 15));
      }

      else
      {
        v62 = -1;
      }
    }
  }

  *v63 = v62 + 2 * LODWORD(v72[0]);
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

uint64_t remove_doubling(uint64_t a1, int a2, unsigned int a3, int a4, int *a5, unsigned int a6, int a7)
{
  v102 = a7;
  v109 = *MEMORY[0x277D85DE8];
  v10 = a2 + (a2 >> 31);
  v11 = *a5 / 2;
  v94 = (a4 / 2);
  v12 = (a1 + 2 * (a2 / 2));
  LODWORD(v13) = a2 / 2 - 1;
  if (v11 >= a2 / 2)
  {
    v13 = v13;
  }

  else
  {
    v13 = v11;
  }

  v86 = a5;
  *a5 = v13;
  v14 = (a2 / 2 + 1);
  v15 = 4 * v14;
  v104 = (&v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = 0;
  v17 = 0;
  v96 = v13;
  v18 = v13;
  v95 = a4;
  if (a4 >= 2)
  {
    v17 = 0;
    v16 = 0;
    v19 = v12;
    v20 = v94;
    do
    {
      v21 = *v19;
      v16 += v21 * v21;
      v17 += v19[-v13] * v21;
      ++v19;
      --v20;
    }

    while (v20);
  }

  v90 = v10 >> 1;
  HIDWORD(v85) = a3;
  v22 = a3 + (a3 >> 31);
  v23 = v104;
  bzero(v104, v15);
  *v23 = v16;
  v24 = v94;
  if (a2 >= 2)
  {
    v25 = (a1 + 2 * v90 - 2);
    v26 = v104 + 1;
    v27 = v14 - 1;
    v28 = v16;
    do
    {
      v29 = v25[v24];
      v28 = v28 + *v25 * *v25 - v29 * v29;
      *v26++ = v28 & ~(v28 >> 31);
      --v25;
      --v27;
    }

    while (v27);
  }

  v30 = a6 + (a6 >> 31);
  v103 = v22 >> 1;
  v31 = v104[v18];
  v100 = 2 * (v16 >> 16);
  v101 = v16 >> 16;
  v91 = v31;
  v99 = v16;
  v32 = ((v100 * (v31 >> 16) + ((v31 * (v16 >> 16)) >> 15) + (((v31 >> 16) * v16) >> 15)) >> 1) + 1;
  v33 = 31 - __clz(v32);
  v34 = v33 >> 1;
  v35 = v33 & 0xFE;
  v36 = v32 << (14 - v35);
  v37 = v17 >> 15;
  if ((v34 & 0x80000000) != 0)
  {
    v42 = (v37 & 0xFFFFFFFE) * celt_rsqrt_norm(v32 << (14 - v35));
    v41 = v42 + ((v17 * celt_rsqrt_norm(v36)) >> 15);
  }

  else
  {
    v38 = v32 >> (v35 - 14);
    if (v34 > 7)
    {
      LOWORD(v36) = v38;
    }

    v39 = v34 + 1;
    v40 = (v37 & 0xFFFFFFFE) * celt_rsqrt_norm(v36);
    v41 = (v40 + ((v17 * celt_rsqrt_norm(v36)) >> 15)) >> v39;
  }

  v43 = v95;
  v105 = 2 * v96;
  v87 = v102 >> 1;
  v92 = v96;
  v93 = v41;
  v97 = 3 * v103;
  v98 = -(v30 >> 1);
  v88 = (27853 * v41) >> 15;
  v89 = (22938 * v41) >> 15;
  v44 = 2;
  v45 = 2;
  do
  {
    v46 = (v45 + v105) / (2 * v44);
    if (v46 < v103)
    {
      break;
    }

    if (v44 == 2)
    {
      v47 = v46 + v96;
      if (v46 + v96 > v90)
      {
        v47 = v96;
      }
    }

    else
    {
      v47 = (v44 + v105 * second_check[v44]) / (2 * v44);
    }

    if (v43 < 2)
    {
      v53 = 0;
    }

    else
    {
      v48 = 0;
      v49 = 0;
      v50 = v12;
      v51 = v94;
      do
      {
        v52 = *v50;
        v49 += v50[-v46] * v52;
        v48 += v50[-v47] * v52;
        ++v50;
        --v51;
      }

      while (v51);
      v53 = v48 + v49;
    }

    v54 = v104[v47] + v104[v46];
    v55 = v100 * (v54 >> 16) + ((v54 * v101) >> 15) + (((v54 >> 16) * v99) >> 15) + 1;
    v56 = 31 - __clz(v55);
    v57 = v56 >> 1;
    v58 = v56 & 0xFE;
    v59 = v55 << (14 - v58);
    v60 = v53 >> 15;
    if ((v57 & 0x80000000) != 0)
    {
      v65 = (v60 & 0xFFFFFFFE) * celt_rsqrt_norm(v55 << (14 - v58));
      v64 = v65 + ((v53 * celt_rsqrt_norm(v59)) >> 15);
    }

    else
    {
      v61 = v55 >> (v58 - 14);
      if (v57 > 7)
      {
        LOWORD(v59) = v61;
      }

      v62 = v57 + 1;
      v63 = (v60 & 0xFFFFFFFE) * celt_rsqrt_norm(v59);
      v64 = (v63 + ((v53 * celt_rsqrt_norm(v59)) >> 15)) >> v62;
      v43 = v95;
    }

    if (v46 + v98 >= 0)
    {
      v66 = v46 + v98;
    }

    else
    {
      v66 = -(v46 + v98);
    }

    v67 = v102;
    if (v66 >= 2)
    {
      if (v66 == 2)
      {
        v67 = v87;
        if (5 * v45 * v44 >= v96)
        {
          v67 = 0;
        }
      }

      else
      {
        v67 = 0;
      }
    }

    if (v46 >= v97)
    {
      v68 = v89 - v67;
      v69 = 9830;
    }

    else
    {
      v68 = v88 - v67;
      v69 = 13107;
    }

    if (v68 <= v69)
    {
      v68 = v69;
    }

    if (v64 << 16 > v68 << 16)
    {
      v92 = v46;
      v93 = v64;
      v17 = v53;
      v91 = v54;
    }

    ++v44;
    ++v45;
  }

  while (v44 != 16);
  v70 = v17 & ~(v17 >> 31);
  if (v91 <= v70)
  {
    LOWORD(v71) = 0x7FFF;
  }

  else
  {
    v71 = frac_div32(v70, v91 + 1) >> 16;
  }

  v72 = HIDWORD(v85);
  v73 = v94;
  v74 = v92;
  v75 = 0;
  v76 = 1 - v92;
  do
  {
    if (v43 < 2)
    {
      v77 = 0;
    }

    else
    {
      v77 = 0;
      v78 = v73;
      v79 = v12;
      v80 = v76;
      do
      {
        v81 = *v79++;
        v77 += v12[v80++] * v81;
        --v78;
      }

      while (v78);
    }

    *(&v106 + v75++) = v77;
    --v76;
  }

  while (v75 != 3);
  if (v108 - v106 <= (45876 * ((v107 - v106) >> 16) + ((22938 * (v107 - v106)) >> 15)))
  {
    if (v106 - v108 <= (45876 * ((v107 - v108) >> 16) + ((22938 * (v107 - v108)) >> 15)))
    {
      v82 = 0;
    }

    else
    {
      v82 = -1;
    }
  }

  else
  {
    v82 = 1;
  }

  if (v71 >= v93)
  {
    result = v93;
  }

  else
  {
    result = v71;
  }

  v84 = v82 + 2 * v74;
  if (v84 <= v72)
  {
    v84 = v72;
  }

  *v86 = v84;
  return result;
}

uint64_t *ec_laplace_encode(uint64_t *a1, int *a2, unsigned int a3, int a4)
{
  v4 = *a2;
  if (*a2)
  {
    if (v4 >= 0)
    {
      v5 = *a2;
    }

    else
    {
      v5 = -v4;
    }

    v6 = (0x4000 - a4) * (32736 - a3);
    v7 = v6 >> 15;
    v8 = 1;
    if (v6 >= 0x8000)
    {
      v10 = __OFSUB__(v5, 2);
      v9 = v5 - 2 < 0;
    }

    else
    {
      v10 = 0;
      v9 = 1;
    }

    if (v9 == v10)
    {
      do
      {
        a3 += 2 * v7 + 2;
        v6 = 2 * v7 * a4;
        ++v8;
        v7 = v6 >> 15;
        if (v6 >= 0x8000)
        {
          v12 = __OFSUB__(v8, v5);
          v11 = v8 - v5 < 0;
        }

        else
        {
          v12 = 0;
          v11 = 0;
        }
      }

      while (v11 != v12);
    }

    if (v6 >> 15)
    {
      if (v4 >= 0)
      {
        v16 = v7 + 1;
      }

      else
      {
        v16 = 0;
      }

      v4 = v16 + a3;
      a3 = v7 + 1;
    }

    else
    {
      v13 = v4 >> 31;
      v14 = v5 - v8;
      v15 = ((((v4 >> 31) | 0x8000) - a3) >> 1) - 1;
      if (v14 >= v15)
      {
        v14 = v15;
      }

      v4 = v13 + a3 + 2 * v14 + 1;
      a3 = v13 + a3 + 2 * v14 != 0x7FFF;
      *a2 = (v8 + v13 + v14) ^ v13;
    }
  }

  return ec_encode_bin(a1, v4, v4 + a3, 15);
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

double ec_enc_init(uint64_t a1, uint64_t a2, int a3)
{
  *a1 = a2;
  *(a1 + 12) = xmmword_26ED6BA70;
  *(a1 + 28) = xmmword_26ED6BA80;
  *(a1 + 8) = a3;
  *&result = 0xFFFFFFFFLL;
  *(a1 + 44) = 0xFFFFFFFFLL;
  return result;
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

uint64_t *ec_encode_bin(uint64_t *result, int a2, int a3, char a4)
{
  v4 = *(result + 8);
  v5 = v4 >> a4;
  v6 = -1 << a4;
  if (a2)
  {
    *(result + 9) += v4 + v5 * (v6 + a2);
    v7 = v5 * (a3 - a2);
  }

  else
  {
    v7 = v4 + v5 * (v6 + a3);
  }

  *(result + 8) = v7;
  return ec_enc_normalize(result);
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

uint64_t *ec_enc_icdf(uint64_t *result, int a2, uint64_t a3, char a4)
{
  v4 = *(result + 8);
  v5 = v4 >> a4;
  if (a2 < 1)
  {
    v7 = v4 - v5 * *(a3 + a2);
  }

  else
  {
    v6 = (a3 + a2);
    *(result + 9) = *(result + 9) + v4 - v5 * *(v6 - 1);
    v7 = (*(v6 - 1) - *v6) * v5;
  }

  *(result + 8) = v7;
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

uint64_t ec_enc_patch_initial_bits(uint64_t result, int a2, char a3)
{
  v3 = 8 - a3;
  v4 = ~(-1 << a3) << (8 - a3);
  if (*(result + 28))
  {
    **result = **result & ~v4 | (a2 << v3);
  }

  else
  {
    v5 = *(result + 44);
    if (v5 < 0)
    {
      if (*(result + 32) <= 0x80000000 >> a3)
      {
        *(result + 36) = *(result + 36) & ~(v4 << 23) | (a2 << ~a3);
      }

      else
      {
        *(result + 48) = -1;
      }
    }

    else
    {
      *(result + 44) = v5 & ~v4 | (a2 << v3);
    }
  }

  return result;
}

void *ec_enc_shrink(uint64_t a1, unsigned int a2)
{
  result = memmove((*a1 + a2 - *(a1 + 12)), (*a1 + *(a1 + 8) - *(a1 + 12)), *(a1 + 12));
  *(a1 + 8) = a2;
  return result;
}

void ec_enc_done(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 36);
  v4 = __clz(v3);
  v5 = ((0x7FFFFFFFu >> v4) + v2) & (0x80000000 >> v4);
  if ((v5 | (0x7FFFFFFFu >> v4)) >= v2 + v3)
  {
    v6 = 0x3FFFFFFFu >> v4;
    v7 = -1073741824 >> v4++;
    v5 = (v6 + v2) & v7;
  }

  else if (!v4)
  {
    goto LABEL_6;
  }

  do
  {
    ec_enc_carry_out(a1, v5 >> 23);
    v5 = (v5 & 0x7FFFFF) << 8;
    v8 = v4 >= 8;
    v4 -= 8;
  }

  while (v4 != 0 && v8);
LABEL_6:
  if ((*(a1 + 44) & 0x80000000) == 0 || *(a1 + 40))
  {
    ec_enc_carry_out(a1, 0);
  }

  v9 = *(a1 + 16);
  v10 = *(a1 + 20);
  if (v10 <= 7)
  {
    if (*(a1 + 48))
    {
      return;
    }

    goto LABEL_18;
  }

  do
  {
    v12 = *(a1 + 8);
    v11 = *(a1 + 12);
    if (v11 + *(a1 + 28) >= v12)
    {
      v13 = -1;
    }

    else
    {
      v13 = 0;
      v14 = *a1;
      v15 = v11 + 1;
      *(a1 + 12) = v15;
      *(v14 + v12 - v15) = v9;
    }

    v16 = *(a1 + 48) | v13;
    *(a1 + 48) = v16;
    v9 >>= 8;
    v17 = v10 - 8;
    v18 = v10 <= 15;
    v10 -= 8;
  }

  while (!v18);
  v10 = v17;
  if (!v16)
  {
LABEL_18:
    bzero((*a1 + *(a1 + 28)), (*(a1 + 8) - (*(a1 + 28) + *(a1 + 12))));
    if (v10 >= 1)
    {
      v20 = *(a1 + 8);
      v19 = *(a1 + 12);
      if (v19 >= v20)
      {
        *(a1 + 48) = -1;
      }

      else
      {
        if (*(a1 + 28) + v19 >= v20 && v10 > -v4)
        {
          v9 &= ~(-1 << -v4);
          *(a1 + 48) = -1;
        }

        *(*a1 + v20 + ~v19) |= v9;
      }
    }
  }
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
  *(result + 12) = xmmword_26ED6BA90;
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

uint64_t hysteresis_decision(int a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  if (a4 < 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    while (*(a2 + 2 * v5) <= a1)
    {
      if (a4 == ++v5)
      {
        v5 = a4;
        break;
      }
    }
  }

  if (v5 > a5)
  {
    if (*(a3 + 2 * a5) + *(a2 + 2 * a5) <= a1)
    {
      v5 = v5;
    }

    else
    {
      v5 = a5;
    }
  }

  if (v5 < a5)
  {
    if (*(a2 + 2 * a5 - 2) - *(a3 + 2 * a5 - 2) >= a1)
    {
      return v5;
    }

    else
    {
      return a5;
    }
  }

  return v5;
}

uint64_t compute_band_energies(uint64_t result, uint64_t a2, uint64_t a3, int a4, int a5, int a6)
{
  v32 = result;
  v8 = 0;
  v9 = *(result + 24);
  if (a5 <= 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = a5;
  }

  v11 = a4;
  v29 = 4 * *(result + 40) * a6;
  v30 = v10;
  do
  {
    if (a4 >= 1)
    {
      v12 = 0;
      do
      {
        v13 = 0;
        v14 = v12;
        LODWORD(v16) = *(v9 + 2 * v12++) * a6;
        v15 = *(v9 + 2 * v12) * a6;
        v16 = v16;
        v17 = v16;
        do
        {
          v18 = *(a2 + 4 * v17);
          if (v13 <= v18)
          {
            v13 = *(a2 + 4 * v17);
          }

          if (v13 <= -v18)
          {
            v13 = -v18;
          }

          ++v17;
        }

        while (v17 < v15);
        if (v13 < 1)
        {
          v28 = 1;
        }

        else
        {
          LODWORD(v19) = 0;
          v20 = __clz(v13);
          v21 = v20 ^ 0x1F;
          v22 = v20 - 21;
          v23 = 21 - v20;
          do
          {
            v24 = *(a2 + 4 * v16);
            v25 = v24 >> v23;
            v26 = v24 << v22;
            if (v21 > 0xA)
            {
              LOWORD(v26) = v25;
            }

            v19 = (v19 + v26 * v26);
            ++v16;
          }

          while (v16 < v15);
          result = celt_sqrt(v19);
          v27 = result >> v22;
          if (v21 >= 0xA)
          {
            v27 = result << v23;
          }

          v28 = v27 + 1;
        }

        *(a3 + 4 * (v14 + *(v32 + 8) * v8)) = v28;
      }

      while (v12 != v11);
    }

    ++v8;
    a2 += v29;
  }

  while (v8 != v30);
  return result;
}

uint64_t normalise_bands(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7)
{
  v12 = 0;
  v13 = *(a1 + 24);
  v14 = *(a1 + 40) * a7;
  if (a5 <= 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = a5;
  }

  if (a6 <= 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = a6;
  }

  v31 = v16;
  v29 = 4 * v14;
  v30 = 2 * v14;
  do
  {
    v17 = 0;
    do
    {
      v18 = *(a4 + 4 * (v17 + *(a1 + 8) * v12));
      v19 = 31 - __clz(v18);
      if (v18 >= 1)
      {
        v20 = v19;
      }

      else
      {
        v20 = 0;
      }

      v21 = v18 >> (v20 - 13);
      v22 = v18 << (13 - v20);
      if (v20 > 0xD)
      {
        LOWORD(v22) = v21;
      }

      result = celt_rcp(8 * v22);
      LODWORD(v25) = *(v13 + 2 * v17++) * a7;
      v24 = *(v13 + 2 * v17) * a7;
      v25 = v25;
      do
      {
        v26 = *(a2 + 4 * v25);
        v27 = v26 << (14 - v20);
        v28 = v26 >> (v20 - 14);
        if (v20 <= 0xEu)
        {
          LOWORD(v28) = v27;
        }

        *(a3 + 2 * v25++) = (v28 * result) >> 15;
      }

      while (v25 < v24);
    }

    while (v17 != v15);
    ++v12;
    a3 += v30;
    a2 += v29;
  }

  while (v12 != v31);
  return result;
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

uint64_t spreading_decision(uint64_t a1, uint64_t a2, _DWORD *a3, int a4, _DWORD *a5, int *a6, int a7, int a8, int a9, int a10)
{
  v10 = *(a1 + 24);
  if ((v10[a8] - v10[a8 - 1]) * a10 < 9)
  {
    return 0;
  }

  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  if (a9 <= 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = a9;
  }

  do
  {
    if (a8 >= 1)
    {
      v17 = 0;
      v18 = *v10;
      do
      {
        v19 = v17 + 1;
        v20 = v10[v17 + 1];
        v21 = ((v20 - v18) * a10);
        if (v21 >= 9)
        {
          v22 = 0;
          v23 = 0;
          v24 = 0;
          v25 = v18 * a10;
          v26 = ((v20 - v18) * a10);
          v27 = (a2 + 2 * v25);
          v28 = v21;
          do
          {
            v29 = *v27++;
            v30 = ((v29 * v29) >> 15) * v26;
            if (v30 < 2048)
            {
              ++v24;
            }

            if (v30 < 512)
            {
              ++v23;
            }

            if (v30 < 128)
            {
              ++v22;
            }

            --v28;
          }

          while (v28);
          if (v17 > *(a1 + 8) - 4)
          {
            v15 += 32 * (v23 + v24) / v21;
          }

          v31 = v21 <= 2 * v24;
          if (v21 <= 2 * v23)
          {
            ++v31;
          }

          if (v21 <= 2 * v22)
          {
            ++v31;
          }

          v13 += v31 << 8;
          ++v14;
        }

        v18 = v20;
        v17 = v19;
      }

      while (v19 != a8);
    }

    ++v12;
    a2 += 2 * *(a1 + 40) * a10;
  }

  while (v12 != v16);
  if (a7)
  {
    if (v15)
    {
      v32 = v15 / ((a8 - *(a1 + 8) + 4) * a9);
    }

    else
    {
      v32 = 0;
    }

    v33 = (*a5 + v32) >> 1;
    *a5 = v33;
    v34 = v33 - 4;
    if (*a6 == 2)
    {
      v33 += 4;
    }

    if (!*a6)
    {
      v33 = v34;
    }

    if (v33 <= 22)
    {
      v35 = v33 > 18;
    }

    else
    {
      v35 = 2;
    }

    *a6 = v35;
  }

  v36 = *a3 + v13 / v14;
  *a3 = v36 >> 1;
  v37 = ((v36 & 0xFFFFFFFE) + (v36 >> 1) - (a4 << 7) + 450) >> 2;
  if (v37 < 80)
  {
    return 3;
  }

  if (v37 >= 0x100)
  {
    return v37 < 0x180;
  }

  return 2;
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

void quant_all_bands(int a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __int16 *a8, uint64_t a9, int a10, int a11, int a12, unsigned int a13, uint64_t a14, int a15, int a16, uint64_t a17, int a18, unsigned int a19, _DWORD *a20)
{
  v209 = a8;
  v194 = a5;
  v208 = a4;
  v205 = a13;
  LODWORD(v206) = a11;
  v219 = *MEMORY[0x277D85DE8];
  v24 = *(a2 + 24);
  v195 = a6;
  v25 = a6 != 0;
  if (a6)
  {
    v26 = 2;
  }

  else
  {
    v26 = 1;
  }

  v199 = v26;
  v212 = 0u;
  v213 = 0u;
  v210 = 0u;
  v211 = 0u;
  if (a10)
  {
    v27 = 1 << a18;
  }

  else
  {
    v27 = 1;
  }

  v180 = v27;
  v28 = *(v24 + 2 * a3);
  v29 = *(a2 + 8);
  v196 = v24;
  v30 = v24 + 2 * v29;
  v31 = 2 * ((*(v30 - 2) - v28) << a18 << v25);
  v193 = &v163 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v193, v31);
  v32 = *(v30 - 2);
  *&v213 = v209;
  v190 = a17;
  *&v212 = a17;
  v201 = a1;
  LODWORD(v210) = a1;
  v191 = a2;
  *(&v210 + 1) = a2;
  v164 = a20;
  v33 = *a20;
  DWORD2(v213) = *a20;
  *(&v211 + 4) = __PAIR64__(v206, v205);
  if (a3 < v208)
  {
    v207 = 0;
    v34 = v32 << a18;
    v189 = v28;
    v35 = v28 << a18;
    v36 = &v193[2 * v34 + -2 * (v28 << a18)];
    v37 = a3;
    v38 = a7 - 1;
    if (v195)
    {
      v39 = v193;
    }

    else
    {
      v39 = 0;
    }

    v187 = v39;
    v40 = v206 == 3 && v180 <= 1;
    v41 = !v40;
    v186 = v41;
    v185 = ~(-1 << v180);
    v177 = a19;
    v184 = a19;
    v206 = v208 - 1;
    v179 = v205;
    v42 = v196;
    v176 = v196 - 2;
    v183 = v208;
    v182 = a15;
    v181 = a14;
    v202 = a12;
    v175 = v196 + 2;
    v209 = (v194 + 2 * v34);
    v200 = a9;
    v198 = v37;
    v44 = 1;
    v174 = &v193[-2 * v35];
    v178 = v35;
    v188 = v36;
    v163 = &v36[-2 * v35];
    v192 = a7;
    while (1)
    {
      LODWORD(v211) = v37;
      v45 = v42;
      v46 = *(v42 + 2 * v37);
      v47 = v46 << a18;
      if (v195)
      {
        v48 = (v195 + 2 * v47);
      }

      else
      {
        v48 = 0;
      }

      v205 = v37 + 1;
      v49 = *(v45 + 2 * (v37 + 1));
      v50 = ec_tell_frac(v190);
      v51 = 0;
      if (v37 == v198)
      {
        v52 = 0;
      }

      else
      {
        v52 = v50;
      }

      v53 = a16 - v52;
      v204 = v50;
      v54 = v182 - v50;
      DWORD2(v212) = v182 - v50 - 1;
      if (v37 < v184)
      {
        v55 = v177 - v37;
        if (v177 - v37 >= 3)
        {
          v55 = 3;
        }

        v56 = *(v200 + 4 * v37) + v53 / v55;
        if (v54 >= v56)
        {
          v54 = v56;
        }

        v57 = v54 & ~(v54 >> 31);
        if (v57 >= 0x3FFF)
        {
          v51 = 0x3FFF;
        }

        else
        {
          v51 = v57;
        }
      }

      v58 = v49 - v46;
      v59 = v207;
      if (v201)
      {
        v60 = v192;
        v61 = v194;
        v42 = v196;
      }

      else
      {
        v42 = v196;
        if ((*(v196 + 2 * v37) - v58) << a18 >= *(v196 + 2 * v198) << a18 && (v44 || v207 == 0))
        {
          v59 = v37;
        }

        v60 = v192;
        v61 = v194;
      }

      v62 = v189;
      v63 = v193;
      v64 = v188;
      v203 = v53;
      v65 = (v61 + 2 * v47);
      v66 = *(v181 + 4 * v37);
      v67 = (v58 << a18);
      HIDWORD(v211) = v66;
      v68 = v209;
      if (v37 < *(v191 + 12))
      {
        v69 = v65;
      }

      else
      {
        v68 = 0;
        v69 = v193;
      }

      if (v37 >= *(v191 + 12))
      {
        v70 = v187;
      }

      else
      {
        v70 = v48;
      }

      if (v37 == v206)
      {
        v71 = 0;
      }

      else
      {
        v71 = v68;
      }

      v209 = v71;
      if (v66 < 0)
      {
        v72 = 1;
      }

      else
      {
        v72 = v186;
      }

      v73 = -1;
      if (v59)
      {
        v74 = v185;
        v75 = v185;
        v76 = v199;
        if (v72)
        {
          v77 = (*(v42 + 2 * v59) - v189 - v58) << a18;
          v73 = v77 & ~(v77 >> 31);
          v78 = v73 + v178;
          v79 = (v176 + 2 * v59);
          v80 = v59;
          do
          {
            v81 = *v79--;
            --v80;
          }

          while (v81 << a18 > v78);
          v82 = v78 + v67;
          v83 = v59 - 2;
          v84 = (v175 + 2 * (v59 - 1));
          do
          {
            v85 = *v84++;
            ++v83;
          }

          while (v85 << a18 < v82);
          v75 = 0;
          v74 = 0;
          do
          {
            v75 |= *(v60 + (v80 << v25));
            v74 |= *(v38 + (v80 << v25) + v199);
            v40 = v80++ < v83;
          }

          while (v40);
        }
      }

      else
      {
        v74 = v185;
        v75 = v185;
        v76 = v199;
      }

      v207 = v59;
      v208 = v67;
      if (v202)
      {
        if (v201 || v37 != v179)
        {
          if (v37 != v179)
          {
            v197 = v51;
            v87 = v51 >> 1;
            if (v73 == -1)
            {
              v88 = 0;
            }

            else
            {
              v88 = &v193[2 * v73];
            }

            v170 = &v188[2 * v73];
            LODWORD(v172) = v51 >> 1;
            if (v37 == v206)
            {
              v120 = v180;
              LODWORD(v173) = quant_band(&v210, v69, v67, v87, v180, v88, a18, 0, 0x7FFF, 0, v75);
              v89 = 0;
              if (v73 == -1)
              {
                v90 = 0;
              }

              else
              {
                v90 = v170;
              }
            }

            else
            {
              v120 = v180;
              v121 = quant_band(&v210, v69, v67, v87, v180, v88, a18, &v174[2 * (*(v42 + 2 * v37) << a18)], 0x7FFF, v68, v75);
              LODWORD(v173) = v121;
              if (v73 == -1)
              {
                v90 = 0;
              }

              else
              {
                v90 = v170;
              }

              v89 = &v163[2 * (*(v42 + 2 * v37) << a18)];
            }

            v122 = v70;
            v123 = v208;
            v108 = quant_band(&v210, v122, v208, v172, v120, v90, a18, v89, 0x7FFF, v209, v74);
            v76 = v199;
            v97 = v203;
            v98 = v197;
            LODWORD(v95) = v123;
            LOBYTE(v96) = v173;
            goto LABEL_136;
          }
        }

        else if ((*(v42 + 2 * v37) - v189) << a18 >= 1)
        {
          v86 = 0;
          do
          {
            *&v63[2 * v86] = (*&v64[2 * v86] + *&v63[2 * v86]) >> 1;
            ++v86;
          }

          while (v86 < (*(v42 + 2 * v37) - v62) << a18);
        }
      }

      if (v73 == -1)
      {
        v91 = 0;
      }

      else
      {
        v91 = &v63[2 * v73];
      }

      if (!v70)
      {
        if (v37 == v206)
        {
          v93 = 0;
        }

        else
        {
          v93 = &v174[2 * (*(v42 + 2 * v37) << a18)];
        }

        v107 = v51;
        v108 = quant_band(&v210, v69, v67, v51, v180, v91, a18, v93, 0x7FFF, v209, v74 | v75);
        LODWORD(v95) = v208;
        v98 = v107;
        LOBYTE(v96) = v108;
        v202 = 0;
        v97 = v203;
        goto LABEL_136;
      }

      if (v37 == v206)
      {
        v92 = 0;
      }

      else
      {
        v92 = &v174[2 * (*(v42 + 2 * v37) << a18)];
      }

      v94 = v74 | v75;
      v197 = v51;
      v217 = v94;
      v218 = v51;
      if (v67 == 1)
      {
        quant_band_n1(&v210, v69, v70, v92);
        LODWORD(v95) = v208;
        LOBYTE(v96) = 1;
        v97 = v203;
        v98 = v197;
      }

      else
      {
        v172 = v92;
        v173 = v91;
        v202 = v210;
        v169 = v212;
        v214 = 0;
        v215 = 0;
        v216 = 0;
        v99 = v69;
        v100 = v180;
        compute_theta(&v210, &v214, v69, v70, v67, &v218, v180, v180, a18, 1, &v217);
        LODWORD(v170) = HIDWORD(v214);
        v168 = v214;
        v171 = v99;
        if (v208 == 2)
        {
          v101 = v218;
          if ((v216 & 0xFFFFBFFF) != 0)
          {
            v102 = -8;
          }

          else
          {
            v102 = 0;
          }

          DWORD2(v212) += v102 - HIDWORD(v216);
          if (v216 <= 0x2000)
          {
            v103 = v99;
          }

          else
          {
            v103 = v70;
          }

          if (v216 <= 0x2000)
          {
            v104 = v70;
          }

          else
          {
            v104 = v99;
          }

          v167 = v215;
          if ((v216 & 0xFFFFBFFF) != 0)
          {
            v165 = v102;
            v166 = v218;
            v105 = v104;
            if (v202)
            {
              v106 = v169;
              LODWORD(v169) = v104[1] * *v103 < *v104 * v103[1];
              ec_enc_bits(v106, v169, 1);
            }

            else
            {
              LODWORD(v169) = ec_dec_bits(v169, 1u);
            }

            v101 = v166;
            v102 = v165;
          }

          else
          {
            LODWORD(v169) = 0;
            v105 = v104;
          }

          LOBYTE(v96) = quant_band(&v210, v103, 2, v101 + v102, v180, v173, a18, v172, 0x7FFF, v209, v94);
          v138 = 2 * v169;
          *v105 = (2 * v169 - 1) * v103[1];
          v105[1] = *v103 - *v103 * v138;
          if (!v202)
          {
            v139 = v170;
            v140 = v171;
            *v171 = (v170 * *v171) >> 15;
            v140[1] = (v139 * v140[1]) >> 15;
            v141 = v167;
            v142 = v167 * *v70;
            *v70 = v142 >> 15;
            v70[1] = (v141 * v70[1]) >> 15;
            LOWORD(v141) = *v140;
            *v140 -= v142 >> 15;
            *v70 += v141;
            LOWORD(v141) = v140[1];
            v140[1] = v141 - v70[1];
            v70[1] += v141;
            v76 = v199;
            v97 = v203;
            v98 = v197;
            v95 = v208;
            goto LABEL_153;
          }

          v76 = v199;
          v97 = v203;
          v98 = v197;
LABEL_134:
          LODWORD(v95) = v208;
          goto LABEL_135;
        }

        LODWORD(v169) = v216;
        v109 = v217;
        if (v218 >= (v218 - HIDWORD(v215)) / 2)
        {
          v110 = (v218 - HIDWORD(v215)) / 2;
        }

        else
        {
          v110 = v218;
        }

        v111 = v110 & ~(v110 >> 31);
        v112 = DWORD2(v212) - HIDWORD(v216);
        DWORD2(v212) -= HIDWORD(v216);
        v113 = v100;
        if (v111 >= v218 - v111)
        {
          v165 = v217 >> v100;
          v166 = v218 - v111;
          v124 = v100;
          v125 = v215;
          LODWORD(v173) = quant_band(&v210, v171, v208, v111, v113, v173, a18, v172, 0x7FFF, v209, v217);
          v126 = DWORD2(v212) - v112 + v111;
          if (v169)
          {
            v127 = v126 <= 24;
          }

          else
          {
            v127 = 1;
          }

          if (v127)
          {
            v128 = 0;
          }

          else
          {
            v128 = v126 - 24;
          }

          v118 = quant_band(&v210, v70, v208, v128 + v166, v124, 0, a18, 0, v125, 0, v165);
          v119 = &v208;
        }

        else
        {
          v162 = v217 >> v100;
          v114 = v218 - v111;
          v167 = quant_band(&v210, v70, v208, v218 - v111, v113, 0, a18, 0, v215, 0, v162);
          v115 = DWORD2(v212) - v112 + v114;
          if (v169 == 0x4000 || v115 <= 24)
          {
            v117 = 0;
          }

          else
          {
            v117 = v115 - 24;
          }

          v118 = quant_band(&v210, v171, v208, v117 + v111, v180, v173, a18, v172, 0x7FFF, v209, v109);
          v119 = &v201;
        }

        v96 = v118 | *(v119 - 64);
        v42 = v196;
        v76 = v199;
        v98 = v197;
        v97 = v203;
        if (v202)
        {
          goto LABEL_134;
        }

        v95 = v208;
        if (v208 < 1)
        {
          v130 = 0;
          v129 = 0;
          v132 = v171;
        }

        else
        {
          v129 = 0;
          v130 = 0;
          v131 = v70;
          v132 = v171;
          v133 = v171;
          v134 = v208;
          do
          {
            v136 = *v131++;
            v135 = v136;
            v137 = *v133++;
            v130 += v137 * v135;
            v129 += v135 * v135;
            --v134;
          }

          while (v134);
        }

        v143 = v170;
        v144 = v129 + (v170 >> 1) * (v170 >> 1);
        v145 = (v130 >> 16) * 4 * v170 + 2 * ((v130 * v170) >> 15);
        v146 = v144 - v145;
        v147 = v145 + v144;
        if (v145 + v144 < 161061 || v146 < 161061)
        {
          v60 = v192;
          if (v208 >= 1)
          {
            v149 = v70;
            v150 = v208;
            do
            {
              v151 = *v132++;
              *v149++ = v151;
              --v150;
            }

            while (v150);
LABEL_153:
            if (v95 >= 1 && v168)
            {
              v161 = v95;
              do
              {
                *v70 = -*v70;
                ++v70;
                --v161;
              }

              while (v161);
            }
          }
        }

        else
        {
          LODWORD(v173) = v96;
          v152 = 31 - __clz(v146);
          v153 = 31 - __clz(v147);
          v202 = celt_rsqrt_norm(v146 >> ((v152 & 0x1E) - 14));
          v154 = celt_rsqrt_norm(v147 >> ((v153 & 0x1E) - 14));
          v95 = v208;
          if (v208 >= 1)
          {
            v155 = v70;
            v156 = v208;
            v60 = v192;
            v98 = v197;
            v157 = v171;
            v158 = v202;
            do
            {
              v159 = v143 * *v157;
              v160 = *v155;
              *v157++ = (((2 << (v152 >> 1)) >> 1) + ((v159 >> 15) - *v155) * v158) >> ((v152 >> 1) + 1);
              *v155++ = (((2 << (v153 >> 1)) >> 1) + (v160 + (v159 >> 15)) * v154) >> ((v153 >> 1) + 1);
              --v156;
            }

            while (v156);
            v42 = v196;
            v76 = v199;
            LOBYTE(v96) = v173;
            goto LABEL_153;
          }

          v60 = v192;
          v42 = v196;
          v76 = v199;
          v98 = v197;
          LOBYTE(v96) = v173;
        }
      }

LABEL_135:
      v202 = 0;
      v108 = v96;
LABEL_136:
      *(v60 + (v37 << v25)) = v96;
      *(v38 + (v37 << v25) + v76) = v108;
      a16 = v97 + v204 + *(v200 + 4 * v37);
      v44 = v98 > 8 * v95;
      v37 = v205;
      if (v205 == v183)
      {
        v33 = DWORD2(v213);
        break;
      }
    }
  }

  *v164 = v33;
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
  v22[1] = *MEMORY[0x277D85DE8];
  v8 = a3 * a2;
  v9 = 2 * a3 * a2;
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v10, v9);
  if (a4)
  {
    if (a3 >= 1)
    {
      v11 = 0;
      v12 = a1;
      do
      {
        if (a2 >= 1)
        {
          v13 = &v10[2 * ordery_table[a3 - 2 + v11] * a2];
          v14 = a2;
          v15 = v12;
          do
          {
            *v13 = *v15;
            v13 += 2;
            v15 += a3;
            --v14;
          }

          while (v14);
        }

        ++v11;
        ++v12;
      }

      while (v11 != a3);
    }
  }

  else if (a3 >= 1)
  {
    v16 = 0;
    v17 = a1;
    v18 = v10;
    do
    {
      if (a2 >= 1)
      {
        v19 = a2;
        v20 = v17;
        v21 = v18;
        do
        {
          *v21++ = *v20;
          v20 += a3;
          --v19;
        }

        while (v19);
      }

      ++v16;
      v18 += a2;
      ++v17;
    }

    while (v16 != a3);
  }

  if (v8 >= 1)
  {
    memcpy(a1, v10, (2 * v8));
  }
}

uint64_t quant_partition(uint64_t a1, __int16 *a2, int a3, int a4, int a5, __int16 *a6, int a7, int a8, int a9)
{
  v13 = a9;
  v80 = a4;
  v14 = *a1;
  v15 = *(a1 + 8);
  v16 = *(a1 + 16);
  v17 = *(a1 + 24);
  v18 = *(a1 + 32);
  v20 = *(v15 + 128);
  v19 = *(v15 + 136);
  if (a7 != -1)
  {
    v21 = a7;
    v22 = *(v15 + 8) + *(v15 + 8) * a7 + v16;
    v16 = v22;
    if (a3 >= 3)
    {
      v23 = (v19 + *(v20 + 2 * v22));
      if (v23[*v23] + 12 < a4)
      {
        v77 = 0;
        v78 = 0;
        v79 = 0;
        v24 = a3 >> 1;
        if (a5 == 1)
        {
          a9 = a9 & 1 | (2 * a9);
        }

        v76 = a7 - 1;
        v73 = &a2[v24];
        v25 = ((a5 + 1) >> 1);
        compute_theta(a1, &v77, a2, v73, v24, &v80, (a5 + 1) >> 1, a5, a7 - 1, 0, &a9);
        v26 = WORD2(v77);
        v27 = v78;
        v28 = HIDWORD(v78);
        v29 = v79;
        v30 = (HIDWORD(v78) + ((8 * v24) >> (6 - v21))) & ((HIDWORD(v78) + ((8 * v24) >> (6 - v21))) >> 31);
        if (v79 > 0x2000)
        {
          v30 = HIDWORD(v78) - (SHIDWORD(v78) >> (5 - v21));
        }

        if ((v79 & 0x3FFF) != 0)
        {
          v31 = v30;
        }

        else
        {
          v31 = HIDWORD(v78);
        }

        if (a5 >= 2)
        {
          v28 = v31;
        }

        v32 = v80;
        if (v80 >= (v80 - v28) / 2)
        {
          v33 = (v80 - v28) / 2;
        }

        else
        {
          v33 = v80;
        }

        v34 = v33 & ~(v33 >> 31);
        v70 = a5;
        v35 = v80 - v34;
        v36 = *(a1 + 40) - HIDWORD(v79);
        *(a1 + 40) = v36;
        if (a6)
        {
          v37 = &a6[v24];
        }

        else
        {
          v37 = 0;
        }

        v38 = a9;
        if (v34 >= v35)
        {
          v67 = v27;
          v69 = v37;
          v72 = quant_partition(a1, a2, v24, v34, v25, a6, v76, ((v26 * a8 + 0x4000) >> 15), a9);
          v55 = *(a1 + 40) - v36 + v34;
          if (v29)
          {
            v56 = v55 <= 24;
          }

          else
          {
            v56 = 1;
          }

          if (v56)
          {
            v57 = 0;
          }

          else
          {
            v57 = v55 - 24;
          }

          return (quant_partition(a1, v73, v24, (v57 + v35), v25, v69, v76, ((v67 * a8 + 0x4000) >> 15), v38 >> v25) << (v70 >> 1)) | v72;
        }

        else
        {
          v68 = v26;
          v74 = quant_partition(a1, v73, v24, (v32 - v34), v25, v37, v76, ((v27 * a8 + 0x4000) >> 15), a9 >> v25) << (v70 >> 1);
          v39 = *(a1 + 40) - v36 + v35;
          if (v29 == 0x4000 || v39 <= 24)
          {
            v41 = 0;
          }

          else
          {
            v41 = v39 - 24;
          }

          return quant_partition(a1, a2, v24, (v41 + v34), v25, a6, v76, ((v68 * a8 + 0x4000) >> 15), v38) | v74;
        }
      }
    }
  }

  v43 = 0;
  v44 = (v19 + *(v20 + 2 * v16));
  v45 = *v44;
  v46 = a4 - 1;
  v47 = 6;
  do
  {
    if (v46 <= v44[(v45 + v43 + 1) >> 1])
    {
      v45 = (v45 + v43 + 1) >> 1;
    }

    else
    {
      v43 = (v45 + v43 + 1) >> 1;
    }

    --v47;
  }

  while (v47);
  if (v43)
  {
    v48 = v44[v43];
  }

  else
  {
    v48 = -1;
  }

  if (v46 - v48 <= v44[v45] - v46)
  {
    v49 = v43;
  }

  else
  {
    v49 = v45;
  }

  if (!v49)
  {
LABEL_50:
    if (!v14)
    {
      v42 = (1 << a5) - 1;
      if ((v42 & v13) != 0)
      {
        if (a6)
        {
          if (a3 >= 1)
          {
            v58 = *(a1 + 56);
            v59 = a2;
            v60 = a3;
            do
            {
              v58 = 1664525 * v58 + 1013904223;
              v62 = *a6++;
              v61 = v62;
              if ((v58 & 0x8000) != 0)
              {
                v63 = 4;
              }

              else
              {
                v63 = -4;
              }

              *v59++ = v63 + v61;
              --v60;
            }

            while (v60);
            *(a1 + 56) = v58;
          }

          v42 = v42 & v13;
        }

        else if (a3 >= 1)
        {
          v64 = *(a1 + 56);
          v65 = a2;
          v66 = a3;
          do
          {
            v64 = 1664525 * v64 + 1013904223;
            *v65++ = v64 >> 20;
            --v66;
          }

          while (v66);
          *(a1 + 56) = v64;
        }

        renormalise_vector(a2, a3, a8);
        return v42;
      }

      if (a3 >= 1)
      {
        bzero(a2, (2 * a3));
      }
    }

    return 0;
  }

  v50 = v44[v49] + 1;
  v51 = *(a1 + 40) - v50;
  *(a1 + 40) = v51;
  if (v51 < 0 && v49 >= 1)
  {
    v52 = v49 - 1;
    do
    {
      v53 = v50 + v51;
      *(a1 + 40) = v53;
      if (!v52)
      {
        goto LABEL_50;
      }

      v50 = v44[v52] + 1;
      v51 = v53 - v50;
      *(a1 + 40) = v51;
      LODWORD(v49) = v49 - 1;
      --v52;
    }

    while (v51 < 0);
  }

  if (v49 >= 8)
  {
    LODWORD(v49) = (v49 & 7 | 8) << ((v49 >> 3) - 1);
  }

  if (v14)
  {

    return alg_quant(a2, a3, v49, v17, a5, v18);
  }

  else
  {

    return alg_unquant(a2, a3, v49, v17, a5, v18, a8);
  }
}

void interleave_hadamard(char *a1, int a2, int a3, int a4)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v8 = a3 * a2;
  v9 = 2 * a3 * a2;
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v10, v9);
  if (a4)
  {
    if (a3 >= 1)
    {
      v11 = 0;
      v12 = v10;
      do
      {
        if (a2 >= 1)
        {
          v13 = &a1[2 * ordery_table[a3 - 2 + v11] * a2];
          v14 = a2;
          v15 = v12;
          do
          {
            v16 = *v13;
            v13 += 2;
            *v15 = v16;
            v15 += a3;
            --v14;
          }

          while (v14);
        }

        ++v11;
        ++v12;
      }

      while (v11 != a3);
    }
  }

  else if (a3 >= 1)
  {
    v17 = 0;
    v18 = v10;
    v19 = a1;
    do
    {
      if (a2 >= 1)
      {
        v20 = a2;
        v21 = v18;
        v22 = v19;
        do
        {
          v23 = *v22++;
          *v21 = v23;
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
}

uint64_t compute_theta(int *a1, uint64_t a2, __int16 *a3, __int16 *a4, int a5, int *a6, char a7, int a8, int a9, int a10, _DWORD *a11)
{
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v17 = a1[4];
  v84 = *(a1 + 4);
  v78 = *(a1 + 1);
  v18 = *(*(v78 + 56) + 2 * v17) + 8 * a9;
  v19 = a10 != 0;
  v20 = a5 == 2;
  v21 = !v20 || !v19;
  if (v20 && v19)
  {
    v22 = -16;
  }

  else
  {
    v22 = -4;
  }

  v23 = v22 + (v18 >> 1);
  v24 = *a6;
  if (v21)
  {
    v25 = -1;
  }

  else
  {
    v25 = -2;
  }

  v26 = v24 - v18 - 32;
  v27 = (v24 + v23 * (v25 + 2 * a5)) / (v25 + 2 * a5);
  if (v26 >= v27)
  {
    v26 = v27;
  }

  if (v26 >= 4)
  {
    if (v26 >= 0x40)
    {
      v26 = 64;
    }

    v28 = ((compute_qn_exp2_table8[v26 & 7] >> (14 - (v26 >> 3))) + 1) & 0xFFFFFFFE;
  }

  else
  {
    v28 = 1;
  }

  v77 = *(a1 + 6);
  if (v17 < a1[5] || a10 == 0)
  {
    v30 = v28;
  }

  else
  {
    v30 = 1;
  }

  v83 = *a1;
  if (*a1)
  {
    v31 = stereo_itheta(a3, a4, a10, a5);
  }

  else
  {
    v31 = 0;
  }

  v81 = ec_tell_frac(v84);
  if (v30 != 1)
  {
    v35 = v31 * v30 + 0x2000;
    v36 = v35 >> 14;
    if (v12 > 2 && a10)
    {
      v75 = v12;
      v76 = a7;
      v80 = a2;
      v37 = v30 / 2;
      v38 = v30 / 2 + 1;
      v39 = 3 * v38;
      if (v83)
      {
        if (v36 <= v37)
        {
          v40 = 3 * v36;
        }

        else
        {
          v40 = v39 + ~v37 + v36;
        }

        if (v36 <= v37)
        {
          v41 = 3 * v36 + 3;
        }

        else
        {
          v41 = v39 - v37 + v36;
        }

        ec_encode(v84, v40, v41, 3 * v38 + v30 / 2);
        a2 = v80;
        v12 = v75;
        a7 = v76;
LABEL_50:
        v31 = (v35 & 0xFFFFC000) / v30;
        if (a10)
        {
          if (!v31)
          {
            intensity_stereo(v78, v14, v13, v77, v17, v12);
            v54 = a6;
            v55 = a11;
            v56 = v81;
LABEL_62:
            result = ec_tell_frac(v84);
            v58 = result - v56;
            *v54 -= result - v56;
            goto LABEL_84;
          }

          if (v12 >= 1)
          {
            v49 = v12;
            do
            {
              v50 = 46340 * *v14;
              v51 = (46340 * *v13) >> 16;
              *v14++ = ((46340 * *v13) >> 16) + HIWORD(v50);
              *v13++ = v51 - HIWORD(v50);
              --v49;
            }

            while (v49);
          }
        }

        goto LABEL_55;
      }

      v59 = ec_decode(v84, v39 + v30 / 2);
      if (v59 < v39)
      {
        v36 = v59 / 3;
      }

      else
      {
        v36 = v59 - 2 * v38;
      }

      if (v36 <= v37)
      {
        v60 = 3 * v36;
      }

      else
      {
        v60 = v39 + ~v37 + v36;
      }

      if (v36 <= v37)
      {
        v61 = 3 * v36 + 3;
      }

      else
      {
        v61 = v39 - v37 + v36;
      }

      ec_dec_update(v84, v60, v61, v39 + v30 / 2);
      a2 = v80;
      LOWORD(v12) = v75;
      a7 = v76;
    }

    else if (a8 >= 2 || a10)
    {
      if (v83)
      {
        ec_enc_uint(v84, v35 >> 14, v30 + 1);
        goto LABEL_50;
      }

      v36 = ec_dec_uint(v84, v30 + 1);
    }

    else
    {
      v42 = v12;
      v43 = a7;
      v44 = a2;
      v45 = v30 >> 1;
      v12 = (v30 >> 1) + 1;
      v46 = v12 * v12;
      if (v83)
      {
        v47 = v30 - v36 + 1;
        if (v36 > v45)
        {
          v48 = v46 - ((v47 * (v30 - v36 + 2)) >> 1);
        }

        else
        {
          v47 = v36 + 1;
          v48 = ((v36 + 1) * v36) >> 1;
        }

        ec_encode(v84, v48, v48 + v47, v12 * v12);
        a2 = v44;
        a7 = v43;
        LOWORD(v12) = v42;
      }

      else
      {
        v62 = ec_decode(v84, v12 * v12);
        if (v62 >= (v12 * v45) >> 1)
        {
          v36 = (2 * (v30 + 1) - isqrt32((8 * (v46 + ~v62)) | 1u)) >> 1;
          v63 = v30 + 1 - v36;
          v64 = v46 - ((v63 * (v30 - v36 + 2)) >> 1);
        }

        else
        {
          v36 = (isqrt32((8 * v62) | 1u) - 1) >> 1;
          v63 = v36 + 1;
          v64 = ((v36 + 1) * v36) >> 1;
        }

        a7 = v43;
        LOWORD(v12) = v42;
        ec_dec_update(v84, v64, v64 + v63, v46);
        a2 = v44;
      }
    }

    v52 = a6;
    v53 = v81;
    v31 = (v36 << 14) / v30;
    goto LABEL_81;
  }

  if (a10)
  {
    if (v83)
    {
      v32 = v31 <= 0x2000;
      v31 = v31 > 0x2000;
      if (!v32 && v12 >= 1)
      {
        v33 = v12;
        v34 = v13;
        do
        {
          *v34 = -*v34;
          ++v34;
          --v33;
        }

        while (v33);
      }

      intensity_stereo(v78, v14, v13, v77, v17, v12);
    }

    else
    {
      v31 = 0;
    }

    v54 = a6;
    v55 = a11;
    v56 = v81;
    if (*a6 < 17 || a1[10] < 17)
    {
      v31 = 0;
    }

    else if (v83)
    {
      ec_enc_bit_logp(v84, v31, 2);
    }

    else
    {
      v31 = ec_dec_bit_logp(v84, 2);
    }

    goto LABEL_62;
  }

LABEL_55:
  v52 = a6;
  v53 = v81;
LABEL_81:
  result = ec_tell_frac(v84);
  v58 = result - v53;
  *v52 -= result - v53;
  if (v31 == 0x4000)
  {
    v65 = 0;
    *a11 &= ~(-1 << a7) << a7;
    v66 = 0x7FFF00000000;
    v67 = 0x4000;
    goto LABEL_87;
  }

  if (v31)
  {
    v65 = 0;
    v68.i32[0] = v31 << 16;
    v68.i32[1] = 0x40000000 - (v31 << 16);
    v69 = vshr_n_s32(vmla_s32(0x800000008000, vshl_s32(v68, 0xFFFFFFF0FFFFFFF3), vshl_s32(v68, 0xFFFFFFF3FFFFFFF0)), 0x10uLL);
    v70 = vmul_s32(v69, (*&vsra_n_u32(vdup_n_s32(0x2055u), vmla_s32(0x400000004000, v69, vdup_n_s32(0x7FFFFD8Eu)), 0xFuLL) & 0xFFFCFFFFFFFCFFFFLL));
    v66 = veor_s8(vshr_n_s32(vshl_n_s32(vsub_s32(vshr_n_u32(vmla_s32(0x400000004000, vshr_n_s32(vadd_s32(vadd_s32(v70, v70), vdup_n_s32(0xE21D8000)), 0x10uLL), v69), 0xFuLL), v69), 0x10uLL), 0x10uLL), 0x7F0000007FLL);
    v71 = vclz_s32(v66);
    v72 = vsub_s32(v71, vdup_lane_s32(v71, 1)).u16[0];
    v73 = vshr_n_s32(vshl_n_s32(vshl_u32(v66, vadd_s32(v71, 0x1000000010)), 0x10uLL), 0x10uLL);
    v74 = vshr_n_u32(vmla_s32(0x400000004000, (*&vsra_n_u32(vdup_n_s32(0x1EFCu), vmla_s32(0x400000004000, v73, vdup_n_s32(0x7FFFF5DBu)), 0xFuLL) & 0xFFFCFFFFFFFCFFFFLL), v73), 0xFuLL);
    v67 = ((v74.i16[2] - v74.i16[0] + (v72 << 11)) * ((v12 << 7) - 128) + 0x4000) >> 15;
    goto LABEL_87;
  }

  v55 = a11;
LABEL_84:
  v65 = v31;
  *v55 &= ~(-1 << a7);
  v66 = 0x7FFFLL;
  v67 = -16384;
  v31 = 0;
LABEL_87:
  *a2 = v65;
  *(a2 + 4) = v66;
  *(a2 + 12) = v67;
  *(a2 + 16) = v31;
  *(a2 + 20) = v58;
  return result;
}

uint64_t intensity_stereo(uint64_t a1, __int16 *a2, __int16 *a3, uint64_t a4, int a5, int a6)
{
  v9 = *(a4 + 4 * a5);
  v10 = *(a4 + 4 * (*(a1 + 8) + a5));
  if (v9 <= v10)
  {
    v11 = *(a4 + 4 * (*(a1 + 8) + a5));
  }

  else
  {
    v11 = *(a4 + 4 * a5);
  }

  v12 = 31 - __clz(v11);
  if (v11 >= 1)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v9 << (13 - v13);
  v15 = v10 << (13 - v13);
  v16 = v9 >> (v13 - 13);
  v17 = v10 >> (v13 - 13);
  if (v13 >= 0xE)
  {
    v18 = v16;
  }

  else
  {
    v18 = v14;
  }

  if (v13 >= 0xE)
  {
    v19 = v17;
  }

  else
  {
    v19 = v15;
  }

  result = celt_sqrt((v19 * v19 + v18 * v18 + 1));
  if (a6 >= 1)
  {
    v21 = (result + 1);
    v22 = ((v18 << 16 >> 2) / v21);
    v23 = ((v19 << 16 >> 2) / v21);
    v24 = a6;
    do
    {
      v25 = *a3++;
      *a2 = ((v23 * v25) >> 14) + ((v22 * *a2) >> 14);
      ++a2;
      --v24;
    }

    while (v24);
  }

  return result;
}

uint64_t resampling_factor(int a1)
{
  if (a1 <= 15999)
  {
    if (a1 == 8000)
    {
      return 6;
    }

    if (a1 == 12000)
    {
      return 4;
    }
  }

  else
  {
    switch(a1)
    {
      case 16000:
        return 3;
      case 48000:
        return 1;
      case 24000:
        return 2;
    }
  }

  return 0;
}

char *comb_filter(char *result, char *a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, __int16 *a10, int a11)
{
  if (a7 | a6)
  {
    v11 = (&comb_filter_gains + 6 * a9);
    v12 = (*v11 * a7) >> 15;
    v13 = (v11[1] * a7) >> 15;
    v14 = (v11[2] * a7) >> 15;
    v15 = -a4;
    v16 = a11;
    v17 = 1 - a4;
    v18 = ~a4;
    v19 = 2 * v12;
    v20 = -2 - a4;
    v21 = 2 * v13;
    v22 = 2 * v14;
    if (a11 < 1)
    {
      v49 = 0;
      if (a7)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v59 = v14;
      v60 = a5;
      v24 = a2 + 8;
      v25 = (&comb_filter_gains + 6 * a8);
      v26 = a6 * v25[2];
      v27 = *&a2[4 * v20];
      v28 = *&a2[4 * v18];
      v29 = *&a2[4 * v15];
      v30 = *&a2[4 * v17];
      v31 = a6 * v25[1];
      v32 = ((2 * a6 * *v25) >> 15) & 0xFFFFFFFE;
      v33 = ((2 * v31) >> 15) & 0xFFFFFFFE;
      v34 = ((2 * v26) >> 15) & 0xFFFFFFFE;
      v35 = &a2[-4 * a3];
      v36 = result;
      v37 = v35;
      do
      {
        v38 = *&v24[-4 * a4];
        v39 = *a10++;
        v40 = ((v39 * v39) >> 15);
        v41 = ((2 * v39 * v39) & 0xFFFF0000 ^ 0x7FFF0000) >> 16;
        v42 = (2 * v12 * v40) >> 16;
        v43 = (v32 * v41) >> 16;
        v44 = (v21 * v40) >> 16;
        v45 = (v22 * v40) >> 16;
        v46 = v38 + v27;
        v47 = *(v37 + 1);
        v37 += 4;
        v48 = (v33 * v41) >> 16;
        *v36 = *(v24 - 2) + ((v45 * v46) >> 15) + ((v44 * (v28 + v30)) >> 15) + ((v42 * v29) >> 15) + ((((v34 * v41) >> 16) * (*(v35 - 4) + *(v35 + 4))) >> 15) + ((v48 * (*(v35 - 2) + v47)) >> 15) + ((v43 * *v35) >> 15) + 2 * (v42 * (v29 >> 16) + v44 * ((v28 + v30) >> 16) + v45 * (v46 >> 16) + v43 * (*v35 >> 16) + v48 * ((*(v35 - 1) + v47) >> 16) + ((v34 * v41) >> 16) * ((*(v35 - 2) + *(v35 + 2)) >> 16));
        v36 += 4;
        v24 += 4;
        v35 = v37;
        v27 = v28;
        v28 = v29;
        v29 = v30;
        v30 = v38;
        --v16;
      }

      while (v16);
      LODWORD(v16) = a11;
      v49 = a11;
      v19 = 2 * v12;
      a5 = v60;
      LOWORD(v14) = v59;
      v18 = ~a4;
      v15 = -a4;
      v20 = -2 - a4;
      v17 = 1 - a4;
      if (a7)
      {
LABEL_6:
        v50 = a5 - v49;
        if (v50 >= 1)
        {
          v51 = &a2[4 * v49];
          v52 = *&v51[4 * v17];
          v53 = *&v51[4 * v15];
          v54 = *&v51[4 * v18];
          v55 = *&v51[4 * v20];
          result += 4 * v49;
          do
          {
            v56 = *&v51[8 - 4 * a4];
            v57 = *v51;
            v51 += 4;
            *result = (v53 >> 16) * v19 + ((v53 * v12) >> 15) + v57 + ((v52 + v54) >> 16) * v21 + ((v56 + v55) >> 16) * v22 + (((v52 + v54) * v13) >> 15) + (((v56 + v55) * v14) >> 15);
            result += 4;
            v55 = v54;
            v54 = v53;
            v53 = v52;
            v52 = v56;
            --v50;
          }

          while (v50);
        }

        return result;
      }
    }

    if (a2 == result)
    {
      return result;
    }

    result += 4 * v16;
    a2 += 4 * v16;
    v58 = 4 * (a5 - v16);
  }

  else
  {
    if (a2 == result)
    {
      return result;
    }

    v58 = 4 * a5;
  }

  return memmove(result, a2, v58);
}

uint64_t init_caps(uint64_t result, uint64_t a2, int a3, int a4)
{
  LODWORD(v4) = *(result + 8);
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = *(result + 24);
    v7 = *(result + 144);
    v10 = *v6;
    v8 = v6 + 1;
    v9 = v10;
    do
    {
      v11 = v8[v5];
      *(a2 + 4 * v5) = (((v11 - v9) << a3) * a4 * (*(v7 + v4 * (a4 + 2 * a3 - 1)) + 64)) >> 2;
      v9 = v11;
      v4 = *(result + 8);
      ++v7;
      ++v5;
    }

    while (v5 < v4);
  }

  return result;
}

const char *opus_strerror(int a1)
{
  if ((a1 - 1) >= 0xFFFFFFF8)
  {
    return opus_strerror_error_strings[-a1];
  }

  else
  {
    return "unknown error";
  }
}

void silk_decode_parameters(uint64_t a1, uint64_t a2, int a3)
{
  v24 = *MEMORY[0x277D85DE8];
  silk_gains_dequant(a2 + 16, (a1 + 2760), (a1 + 2312), a3 == 2, *(a1 + 2324));
  silk_NLSF_decode(__src, (a1 + 2768), *(a1 + 2752));
  silk_NLSF2A((a2 + 64), __src, *(a1 + 2340));
  if (*(a1 + 2376) == 1)
  {
    *(a1 + 2791) = 4;
LABEL_8:
    memcpy((a2 + 32), (a2 + 64), 2 * *(a1 + 2340));
    goto LABEL_9;
  }

  v5 = *(a1 + 2791);
  if (v5 > 3)
  {
    goto LABEL_8;
  }

  v6 = *(a1 + 2340);
  if (v6 >= 1)
  {
    v7 = (a1 + 2344);
    v8 = v22;
    v9 = __src;
    v10 = *(a1 + 2340);
    do
    {
      v12 = *v7++;
      v11 = v12;
      v13 = *v9++;
      *v8++ = v11 + (((v13 - v11) * v5) >> 2);
      --v10;
    }

    while (v10);
  }

  silk_NLSF2A((a2 + 32), v22, v6);
LABEL_9:
  v14 = *(a1 + 2340);
  memcpy((a1 + 2344), __src, 2 * v14);
  if (*(a1 + 4184))
  {
    silk_bwexpander((a2 + 32), v14, 63570);
    silk_bwexpander((a2 + 64), *(a1 + 2340), 63570);
  }

  if (*(a1 + 2789) == 2)
  {
    silk_decode_pitch(*(a1 + 2786), *(a1 + 2788), a2, *(a1 + 2316), *(a1 + 2324));
    v15 = *(a1 + 2324);
    if (v15 >= 1)
    {
      v16 = 0;
      v17 = *(&silk_LTP_vq_ptrs_Q7 + *(a1 + 2792));
      v18 = a2 + 96;
      do
      {
        v19 = 0;
        v20 = v17 + 5 * *(a1 + 2764 + v16);
        do
        {
          *(v18 + 2 * v19) = *(v20 + v19) << 7;
          ++v19;
        }

        while (v19 != 5);
        ++v16;
        v18 += 10;
      }

      while (v16 != v15);
    }

    v21 = silk_LTPScales_table_Q14[*(a1 + 2793)];
  }

  else
  {
    bzero(a2, 4 * *(a1 + 2324));
    bzero((a2 + 96), 10 * *(a1 + 2324));
    v21 = 0;
    *(a1 + 2792) = 0;
  }

  *(a2 + 136) = v21;
}

uint64_t silk_gains_quant(uint64_t result, uint64_t a2, _BYTE *a3, int a4, int a5)
{
  if (a5 >= 1)
  {
    v8 = result;
    v9 = 0;
    v10 = a5;
    do
    {
      silk_lin2log(*(a2 + 4 * v9));
      v11 = silk_lin2log(*(a2 + 4 * v9));
      v12 = (2251 * (v11 - 2090)) >> 16;
      *(v8 + v9) = (2251 * (v11 - 2090)) >> 16;
      if (*a3 > ((2251 * (v11 - 2090)) >> 16))
      {
        LOBYTE(v12) = v12 + 1;
      }

      v13 = v12 & ~(v12 >> 31);
      if (v13 >= 63)
      {
        LOBYTE(v13) = 63;
      }

      *(v8 + v9) = v13;
      v14 = *a3;
      if (v9 | a4)
      {
        LOBYTE(v14) = v13 - v14;
        *(v8 + v9) = v14;
        v15 = *a3;
        v16 = v15 + 8;
        v17 = v15 + 8 + ((v14 - v15 + 505) >> 1);
        if (v16 < v14)
        {
          LOBYTE(v14) = v17;
        }

        v14 = v14;
        if (v14 <= -4)
        {
          v14 = -4;
        }

        if (v14 >= 36)
        {
          v14 = 36;
        }

        *(v8 + v9) = v14;
        if (v16 >= v14)
        {
          v18 = *a3 + v14;
        }

        else
        {
          v18 = *a3 - v16 + 2 * v14;
        }

        *a3 = v18;
        *(v8 + v9) += 4;
        LOBYTE(v13) = *a3;
      }

      else
      {
        if (v14 - 4 > v13)
        {
          LOBYTE(v13) = v14 - 4;
        }

        if (v14 > 67)
        {
          LOBYTE(v13) = 63;
        }

        *(v8 + v9) = v13;
        *a3 = v13;
      }

      v19 = 29 * v13 + ((7281 * v13) >> 16);
      if (v19 >= 1877)
      {
        v19 = 1877;
      }

      result = silk_log2lin(v19 + 2090);
      *(a2 + 4 * v9++) = result;
    }

    while (v10 != v9);
  }

  return result;
}

uint64_t silk_gains_dequant(uint64_t result, char *a2, _BYTE *a3, int a4, int a5)
{
  if (a5 >= 1)
  {
    v8 = result;
    v9 = 0;
    v10 = a5;
    do
    {
      if (v9 | a4)
      {
        v11 = a2[v9] - 4;
        if (v11 > *a3 + 8)
        {
          LOBYTE(v11) = 2 * v11 - 8;
        }

        else
        {
          LOBYTE(v11) = *a3 + v11;
        }
      }

      else
      {
        v11 = *a2;
        if (v11 <= *a3 - 16)
        {
          LOBYTE(v11) = *a3 - 16;
        }
      }

      v12 = v11 & ~(v11 >> 31);
      if (v12 >= 63)
      {
        v12 = 63;
      }

      *a3 = v12;
      result = silk_log2lin(29 * v12 + ((7281 * v12) >> 16) + 2090);
      *(v8 + 4 * v9++) = result;
    }

    while (v10 != v9);
  }

  return result;
}

uint64_t silk_gains_ID(char *a1, int a2)
{
  if (a2 < 1)
  {
    return 0;
  }

  LODWORD(v2) = 0;
  v3 = a2;
  do
  {
    v4 = *a1++;
    v2 = (v4 + (v2 << 8));
    --v3;
  }

  while (v3);
  return v2;
}

_BYTE *silk_VQ_WMat_EC(_BYTE *result, int *a2, _DWORD *a3, _WORD *a4, int32x2_t *a5, char *a6, uint64_t a7, uint64_t a8, double a9, int32x2_t a10, __int16 a11, int a12, int a13)
{
  *a2 = 0x7FFFFFFF;
  if (a13 >= 1)
  {
    for (i = 0; i != a13; ++i)
    {
      v14 = *(a7 + i);
      v15 = (a4[1] - (a6[1] << 7));
      v16 = (a4[2] - (a6[2] << 7));
      v17 = (*a4 - (*a6 << 7));
      a10.i16[0] = a4[3];
      a10.i16[2] = a4[4];
      v18.i32[0] = a6[3];
      v18.i32[1] = a6[4];
      v19 = vshr_n_s32(vshl_n_s32(vsub_s32(a10, vshl_n_s32(v18, 7uLL)), 0x10uLL), 0x10uLL);
      v20 = v19.i32[1];
      v21 = v19.i32[0];
      v22 = a5[2].i32[0];
      v23 = a11 * *(a8 + i) + (((v14 - a12) & ~((v14 - a12) >> 31)) << 10) + (((a5->i32[0] >> 16) * v17 + ((a5->i32[0] * v17) >> 16) + 2 * ((a5->i32[1] >> 16) * v15 + ((a5->i32[1] * v15) >> 16) + (a5[1].i32[0] >> 16) * v16 + ((a5[1].i32[0] * v16) >> 16) + (a5[1].i32[1] >> 16) * v19.i32[0] + ((a5[1].i32[1] * v19.i32[0]) >> 16) + (v22 >> 16) * v19.i32[1] + ((v22 * v19.i32[1]) >> 16))) >> 16) * v17;
      v24 = (HIWORD(a5->i32[0]) * v17 + ((a5->i32[0] * v17) >> 16) + 2 * (HIWORD(a5->i32[1]) * v15 + ((a5->i32[1] * v15) >> 16) + HIWORD(a5[1].i32[0]) * v16 + ((a5[1].i32[0] * v16) >> 16) + HIWORD(a5[1].i32[1]) * v19.i16[0] + ((a5[1].i32[1] * v19.i32[0]) >> 16) + HIWORD(v22) * v19.i16[2] + ((v22 * v19.i32[1]) >> 16))) * v17;
      v25 = (a5[3].i32[0] >> 16) * v15 + ((a5[3].i32[0] * v15) >> 16) + 2 * ((a5[3].i32[1] >> 16) * v16 + ((a5[3].i32[1] * v16) >> 16) + (a5[4].i32[0] >> 16) * v19.i32[0] + ((a5[4].i32[0] * v19.i32[0]) >> 16) + (a5[4].i32[1] >> 16) * v19.i32[1] + ((a5[4].i32[1] * v19.i32[1]) >> 16));
      v26 = (a5[6].i32[0] >> 16) * v16 + ((a5[6].i32[0] * v16) >> 16) + 2 * ((a5[6].i32[1] >> 16) * v19.i32[0] + ((a5[6].i32[1] * v19.i32[0]) >> 16) + (a5[7].i32[0] >> 16) * v19.i32[1] + ((a5[7].i32[0] * v19.i32[1]) >> 16));
      v27 = a5[9];
      v28 = vmul_s32(vshr_n_s32(v27, 0x10uLL), v19);
      a10 = vmul_s32(vand_s8(v27, 0xFFFF0000FFFFLL), v19);
      v29 = vsra_n_s32(v28, a10, 0x10uLL);
      v30 = v23 + (v24 >> 16) + (v25 >> 16) * v15 + ((v25 * v15) >> 16) + (v26 >> 16) * v16 + ((v26 * v16) >> 16) + (((a5[12].i32[0] >> 16) * v20 + ((a5[12].i32[0] * v20) >> 16)) >> 16) * v20 + ((v29.i32[0] + 2 * v29.i32[1]) >> 16) * v21 + (((HIWORD(a5[12].i32[0]) * v20 + ((a5[12].i32[0] * v20) >> 16)) * v20) >> 16) + (((v29.i16[0] + 2 * v29.i16[2]) * v21) >> 16);
      if (v30 < *a2)
      {
        *a2 = v30;
        *result = i;
        *a3 = v14;
      }

      a6 += 5;
    }
  }

  return result;
}

uint64_t silk_init_encoder(_DWORD *a1, int a2)
{
  bzero(a1, 0x2648uLL);
  a1[1285] = a2;
  v4 = (silk_lin2log(0x3C0000u) << 8) - 0x80000;
  a1[2] = v4;
  a1[3] = v4;
  a1[1174] = 1;

  return silk_VAD_Init((a1 + 8));
}

uint64_t silk_NLSF_encode(char *a1, __int16 *a2, __int16 *a3, __int16 *a4, int a5, uint64_t a6, int a7)
{
  v66 = a5;
  v62 = a4;
  v60 = a1;
  v77 = *MEMORY[0x277D85DE8];
  v69 = 0;
  silk_NLSF_stabilize(a2, *(a3 + 7), a3[1]);
  v11 = *a3;
  v12 = 4 * *a3;
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v13, v12);
  v14 = *(a3 + 1);
  v15 = a3[1];
  v63 = a2;
  silk_NLSF_VQ(v13, a2, v14, v11, v15);
  v16 = &v59 - ((4 * a6 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v16, 4 * a6);
  v17 = *a3;
  v68 = v16;
  silk_insertion_sort_increasing(v13, v16, v17, a6);
  v67 = v16;
  bzero(v16, 4 * a6);
  v18 = 16 * a6;
  v19 = &v59 - v18;
  bzero(&v59 - v18, v18);
  v61 = a6;
  if (a6 >= 1)
  {
    v20 = 0;
    v65 = a7 >> 1;
    v64 = (v66 >> 2);
    v21 = v61;
    do
    {
      v22 = *&v68[4 * v20];
      v23 = a3[1];
      if (v23 >= 1)
      {
        v24 = (*(a3 + 1) + v22 * v23);
        v25 = &v76;
        v26 = v74;
        v27 = a3[1];
        v28 = v63;
        do
        {
          v30 = *v24++;
          v29 = v30;
          *v26++ = v30 << 7;
          v31 = *v28++;
          *v25 = v31 - (v29 << 7);
          v25 += 2;
          --v27;
        }

        while (v27);
      }

      silk_NLSF_VQ_weights_laroia(v73, v74, v23);
      v32 = a3[1];
      if (v32 >= 1)
      {
        v33 = v75;
        v34 = &v76;
        v35 = v73;
        v36 = a3[1];
        do
        {
          v38 = *v35++;
          v37 = v38;
          if (v38 < 1)
          {
            v43 = 0;
          }

          else
          {
            v39 = v37 << 16;
            v40 = __clz(v39);
            v41 = (v39 >> (24 - v40)) & 0x7F;
            if (v40)
            {
              v42 = 0x8000;
            }

            else
            {
              v42 = 46214;
            }

            v43 = (((213 * v41) | 0x10000) * (v42 >> (v40 >> 1))) >> 16;
          }

          v44 = *v34;
          v34 += 2;
          *v33++ = (v43 * v44) >> 14;
          --v36;
        }

        while (v36);
        v45 = v72;
        v46 = v73;
        v47 = v62;
        do
        {
          v48 = *v47++;
          v49 = 32 * v48;
          v50 = *v46++;
          *v45++ = v49 / v50;
          --v32;
        }

        while (v32);
      }

      silk_NLSF_unpack(v70, v71, a3, v22);
      v51 = silk_NLSF_del_dec_quant(&v19[16 * v20], v75, v72, v71, v70, *(a3 + 6), a3[2], a3[3], v66, SHIWORD(v66), a3[1]);
      v52 = (*(a3 + 2) + *a3 * v65);
      if (v22)
      {
        v52 += v22;
        v53 = *(v52 - 1);
      }

      else
      {
        v53 = 256;
      }

      v67[v20++] = v51 + (1024 - silk_lin2log(v53 - *v52)) * v64;
    }

    while (v20 != v21);
  }

  v54 = v67;
  silk_insertion_sort_increasing(v67, &v69, v61, 1);
  v55 = v69;
  v56 = v60;
  v57 = v60;
  *v60 = *&v68[4 * v69];
  memcpy(v57 + 1, &v19[16 * v55], a3[1]);
  silk_NLSF_decode(v63, v56, a3);
  return *v54;
}

uint64_t check_control_input(_DWORD *a1)
{
  v1 = a1[2];
  v2 = 4294967194;
  if (v1 <= 23999)
  {
    v3 = v1 == 8000 || v1 == 12000;
    v4 = 16000;
  }

  else if (v1 > 44099)
  {
    v3 = v1 == 48000;
    v4 = 44100;
  }

  else
  {
    v3 = v1 == 24000;
    v4 = 32000;
  }

  if (v3 || v1 == v4)
  {
    v6 = a1[5];
    if ((v6 == 8000 || v6 == 16000 || v6 == 12000) && ((v7 = a1[3], v7 == 8000) || v7 == 16000 || v7 == 12000) && ((v8 = a1[4], v8 == 8000) || v8 == 16000 || v8 == 12000))
    {
      v2 = 4294967194;
      if (v8 <= v6 && v7 >= v6)
      {
        v9 = a1[6];
        v2 = 4294967193;
        if (v9 <= 0x3C && ((1 << v9) & 0x1000010000100400) != 0)
        {
          if (a1[8] <= 0x64u)
          {
            if (a1[11] <= 1u)
            {
              if (a1[12] <= 1u)
              {
                if (a1[10] <= 1u)
                {
                  if ((*a1 - 3) >= 0xFFFFFFFE)
                  {
                    v11 = a1[1];
                    v2 = 4294967185;
                    if (v11 <= *a1 && (v11 - 3) >= 0xFFFFFFFE)
                    {
                      if (a1[9] <= 0xAu)
                      {
                        return 0;
                      }

                      else
                      {
                        return 4294967190;
                      }
                    }
                  }

                  else
                  {
                    return 4294967185;
                  }
                }

                else
                {
                  return 4294967189;
                }
              }

              else
              {
                return 4294967187;
              }
            }

            else
            {
              return 4294967188;
            }
          }

          else
          {
            return 4294967191;
          }
        }
      }
    }

    else
    {
      return 4294967194;
    }
  }

  return v2;
}

uint64_t silk_control_audio_bandwidth(uint64_t a1, _DWORD *a2)
{
  result = *(a1 + 4600);
  if (!(result << 16))
  {
    v12 = *(a1 + 4596);
    v11 = *(a1 + 4580);
    if (v12 < v11)
    {
      v11 = v12;
    }

    return (v11 / 1000);
  }

  v4 = 1000 * result;
  v5 = *(a1 + 4580);
  v6 = *(a1 + 4588);
  if (v4 <= v5)
  {
    v9 = __OFSUB__(v4, v6);
    v7 = v4 == v6;
    v8 = v4 - v6 < 0;
  }

  else
  {
    v9 = 0;
    v7 = 0;
    v8 = 0;
  }

  if (!(v8 ^ v9 | v7) || v4 < *(a1 + 4592))
  {
    if (v5 >= v6)
    {
      v10 = *(a1 + 4588);
    }

    else
    {
      v10 = *(a1 + 4580);
    }

    v11 = *(a1 + 4592);
    if (v10 > v11)
    {
      v11 = v10;
    }

    return (v11 / 1000);
  }

  v13 = *(a1 + 24);
  if (v13 >= 256)
  {
    *(a1 + 28) = 0;
  }

  if (*(a1 + 4560) || a2[15])
  {
    v14 = *(a1 + 4596);
    if (v4 <= v14)
    {
      if (v4 >= v14)
      {
        if ((*(a1 + 28) & 0x80000000) == 0)
        {
          return result;
        }
      }

      else
      {
        if (a2[15])
        {
          if (result == 8)
          {
            result = 12;
          }

          else
          {
            result = 16;
          }

          *(a1 + 16) = 0;
          *(a1 + 24) = 0x100000000;
          return result;
        }

        if (!*(a1 + 28))
        {
LABEL_42:
          a2[21] = 1;
          a2[13] -= 5 * a2[13] / (a2[6] + 5);
          return result;
        }
      }

      v15 = 1;
      goto LABEL_41;
    }

    if (*(a1 + 28))
    {
      if (!a2[15])
      {
        if (v13 <= 0)
        {
          goto LABEL_42;
        }

        goto LABEL_38;
      }
    }

    else
    {
      *(a1 + 24) = 256;
      *(a1 + 16) = 0;
      if (!a2[15])
      {
LABEL_38:
        v15 = -2;
LABEL_41:
        *(a1 + 28) = v15;
        return result;
      }
    }

    *(a1 + 28) = 0;
    if (result == 16)
    {
      return 12;
    }

    else
    {
      return 8;
    }
  }

  return result;
}

_WORD *silk_interpolate(_WORD *result, __int16 *a2, __int16 *a3, __int16 a4, int a5)
{
  if (a5 >= 1)
  {
    v5 = a5;
    do
    {
      v7 = *a2++;
      v6 = v7;
      v8 = *a3++;
      *result++ = v6 + ((a4 * (v8 - v6)) >> 2);
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t silk_NLSF_decode(__int16 *a1, char *a2, uint64_t a3)
{
  v30 = *MEMORY[0x277D85DE8];
  if (*(a3 + 2) < 1)
  {
    v8 = *a2;
  }

  else
  {
    v6 = 0;
    v7 = *(a3 + 8) + *(a3 + 2) * *a2;
    do
    {
      a1[v6] = *(v7 + v6) << 7;
      ++v6;
    }

    while (v6 < *(a3 + 2));
    v8 = *a2;
  }

  silk_NLSF_unpack(v28, v29, a3, v8);
  v9 = *(a3 + 2);
  if (v9 >= 1)
  {
    LOWORD(v10) = 0;
    v11 = *(a3 + 4);
    v12 = *(a3 + 2);
    do
    {
      v13 = a2[v12];
      if (v13 <= 0)
      {
        v14 = ((v13 << 10) | 0x66) & (v13 >> 31);
      }

      else
      {
        v14 = (v13 << 10) - 102;
      }

      v10 = (v14 >> 16) * v11 + ((v10 * v28[v12 + 31]) >> 8) + (((v14 & 0xFFFE) * v11) >> 16);
      v27[v12 + 15] = v10;
    }

    while (v12-- > 1);
  }

  silk_NLSF_VQ_weights_laroia(v27, a1, v9);
  v16 = *(a3 + 2);
  if (v16 >= 1)
  {
    v17 = 0;
    do
    {
      v18 = v27[v17];
      if (v18 < 1)
      {
        v23 = 0;
      }

      else
      {
        v19 = v18 << 16;
        v20 = __clz(v19);
        v21 = (v19 >> (24 - v20)) & 0x7F;
        if (v20)
        {
          v22 = 0x8000;
        }

        else
        {
          v22 = 46214;
        }

        v23 = (v22 >> (v20 >> 1)) + ((213 * (v22 >> (v20 >> 1)) * v21) >> 16);
      }

      v24 = v27[v17 + 16] << 14;
      v25 = (v24 / v23 + a1[v17]) & ~((v24 / v23 + a1[v17]) >> 31);
      if (v25 >= 0x7FFF)
      {
        LOWORD(v25) = 0x7FFF;
      }

      a1[v17++] = v25;
    }

    while (v17 < *(a3 + 2));
    LOWORD(v16) = *(a3 + 2);
  }

  return silk_NLSF_stabilize(a1, *(a3 + 56), v16);
}