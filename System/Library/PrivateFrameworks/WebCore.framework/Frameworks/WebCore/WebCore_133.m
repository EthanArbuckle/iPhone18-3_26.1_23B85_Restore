uint64_t read_tx_size(uint64_t a1, uint64_t a2, int a3, unint64_t *a4)
{
  v4 = *(a1 + 1328);
  v5 = ***(a2 + 448);
  v6 = max_txsize_lookup[v5];
  if (!a3 || (v4 == 4 ? (v7 = v5 >= 3) : (v7 = 0), !v7))
  {
    v27 = tx_mode_to_biggest_tx_size[v4];
    if (v6 >= v27)
    {
      return v27;
    }

    else
    {
      return max_txsize_lookup[v5];
    }
  }

  v9 = *(a2 + 456);
  v8 = *(a2 + 464);
  v10 = max_txsize_lookup[v5];
  if (v8)
  {
    v10 = max_txsize_lookup[v5];
    if (!*(v8 + 3))
    {
      v10 = *(v8 + 2);
    }
  }

  v11 = v10;
  if (v9)
  {
    v11 = max_txsize_lookup[v5];
    if (!*(v9 + 3))
    {
      v11 = *(v9 + 2);
    }
  }

  v12 = *(a2 + 416);
  if (v8)
  {
    v13 = v10;
  }

  else
  {
    v13 = v11;
  }

  v14 = v13 + v11;
  v15 = *(a1 + 4904);
  v16 = v15 + ((v14 > v6) | (2 * (v14 > v6))) + 1955;
  v17 = v15 + 2 * (v14 > v6) + 1961;
  if (v14 > v6)
  {
    ++v15;
  }

  v18 = (v15 + 1965);
  if (v6 != 1)
  {
    v18 = 0;
  }

  if (v6 == 2)
  {
    v18 = v17;
  }

  if (v6 == 3)
  {
    v19 = v16;
  }

  else
  {
    v19 = v18;
  }

  v20 = *(a4 + 3);
  v21 = ((*(a4 + 2) - 1) * *v19 + 256) >> 8;
  v22 = *a4;
  if ((v20 & 0x80000000) != 0)
  {
    v28 = a4[3];
    v29 = a4[2] - v28;
    v30 = 8 * v29;
    v31 = a4[4];
    v245 = a4;
    if (v31)
    {
      v32 = a4 + 6;
      v243 = max_txsize_lookup[v5];
      v33 = v19;
      v34 = v12;
      v35 = v14;
      v36 = v5;
      v31(a4[5]);
      v19 = v33;
      v6 = v243;
      v5 = v36;
      v14 = v35;
      v12 = v34;
      v28 = v32;
    }

    v37 = 48 - v20;
    if (v30 < 0x41)
    {
      v41 = 56 - v20 - v30;
      if (v41 < 0)
      {
        v39 = v20;
      }

      else
      {
        v39 = v20 + 0x40000000;
      }

      if (v30)
      {
        v42 = 1;
      }

      else
      {
        v42 = v41 <= -1;
      }

      a4 = v245;
      if (v42 && (v43 = v41 & ~(v41 >> 31), v37 >= v43))
      {
        v44 = v43 - 1;
        if (v43 - 1 >= (40 - v20))
        {
          v44 = 40 - v20;
        }

        v45 = 47 - v20 - v44;
        v40 = v28;
        v46 = 48 - v20;
        if (v45 < 0x78)
        {
          goto LABEL_121;
        }

        v47 = v22;
        v48 = v39;
        v49 = vdupq_n_s32(v37);
        v50 = 0uLL;
        v51 = vaddq_s32(v49, xmmword_273BC3230);
        v52 = vaddq_s32(v49, xmmword_273BC3240);
        v53 = vaddq_s32(v49, xmmword_273BC3250);
        v54 = vaddq_s32(v49, xmmword_273BC3220);
        v55.i64[0] = 0x800000008;
        v55.i64[1] = 0x800000008;
        v56.i64[0] = 0x7F0000007FLL;
        v56.i64[1] = 0x7F0000007FLL;
        v57 = (v45 >> 3) + 1;
        v58 = 0uLL;
        v59 = 0uLL;
        v60 = 0uLL;
        v40 = (v28 + (v57 & 0x3FFFFFF0));
        v46 = v37 - 8 * (v57 & 0x3FFFFFF0);
        v61 = v57 & 0x3FFFFFF0;
        v62 = v28;
        v63 = 0uLL;
        v64 = 0uLL;
        v65 = 0uLL;
        v66 = 0uLL;
        v67 = 0uLL;
        v68 = 0uLL;
        do
        {
          v69 = *v62++;
          v70 = vmovl_high_u8(v69);
          v71 = vmovl_high_u16(v70);
          v72.i64[0] = v71.u32[0];
          v72.i64[1] = v71.u32[1];
          v73 = v72;
          v74 = vmovl_u16(*v70.i8);
          v72.i64[0] = v74.u32[2];
          v72.i64[1] = v74.u32[3];
          v75 = v72;
          v76 = vmovl_u8(*v69.i8);
          v77 = vmovl_high_u16(v76);
          v72.i64[0] = v77.u32[2];
          v72.i64[1] = v77.u32[3];
          v78 = v72;
          v72.i64[0] = v71.u32[2];
          v72.i64[1] = v71.u32[3];
          v79 = v72;
          v72.i64[0] = v74.u32[0];
          v72.i64[1] = v74.u32[1];
          v80 = v72;
          v72.i64[0] = v77.u32[0];
          v72.i64[1] = v77.u32[1];
          v81 = v72;
          v82 = vmovl_u16(*v76.i8);
          v72.i64[0] = v82.u32[2];
          v72.i64[1] = v82.u32[3];
          v83 = v72;
          v72.i64[0] = v82.u32[0];
          v72.i64[1] = v82.u32[1];
          v84 = v72;
          v72.i64[0] = v54.u32[0];
          v72.i64[1] = v54.u32[1];
          v85 = vshlq_u64(v84, v72);
          v72.i64[0] = v54.u32[2];
          v72.i64[1] = v54.u32[3];
          v86 = vshlq_u64(v83, v72);
          v72.i64[0] = v53.u32[0];
          v72.i64[1] = v53.u32[1];
          v87 = vshlq_u64(v81, v72);
          v72.i64[0] = v52.u32[0];
          v72.i64[1] = v52.u32[1];
          v88 = vshlq_u64(v80, v72);
          v72.i64[0] = v51.u32[2];
          v72.i64[1] = v51.u32[3];
          v89 = vshlq_u64(v79, v72);
          v72.i64[0] = v53.u32[2];
          v72.i64[1] = v53.u32[3];
          v90 = vshlq_u64(v78, v72);
          v72.i64[0] = v52.u32[2];
          v72.i64[1] = v52.u32[3];
          v91 = vshlq_u64(v75, v72);
          v72.i64[0] = v51.u32[0];
          v72.i64[1] = v51.u32[1];
          v64 = vorrq_s8(vshlq_u64(v73, v72), v64);
          v63 = vorrq_s8(v91, v63);
          v59 = vorrq_s8(v90, v59);
          v65 = vorrq_s8(v89, v65);
          v60 = vorrq_s8(v88, v60);
          v58 = vorrq_s8(v87, v58);
          v50 = vorrq_s8(v86, v50);
          v47 = vorrq_s8(v85, v47);
          v48 = vaddq_s32(v48, v55);
          v66 = vaddq_s32(v66, v55);
          v67 = vaddq_s32(v67, v55);
          v68 = vaddq_s32(v68, v55);
          v54 = vaddq_s32(v54, v56);
          v53 = vaddq_s32(v53, v56);
          v52 = vaddq_s32(v52, v56);
          v51 = vaddq_s32(v51, v56);
          v61 -= 16;
        }

        while (v61);
        v92 = vorrq_s8(vorrq_s8(vorrq_s8(v47, v60), vorrq_s8(v58, v64)), vorrq_s8(vorrq_s8(v50, v63), vorrq_s8(v59, v65)));
        v22 = vorr_s8(*v92.i8, *&vextq_s8(v92, v92, 8uLL));
        v39 = vaddvq_s32(vaddq_s32(vaddq_s32(v48, v67), vaddq_s32(v66, v68)));
        if ((v57 & 0x3FFFFFF0) != v57)
        {
LABEL_121:
          do
          {
            v39 += 8;
            v93 = *v40;
            v40 = (v40 + 1);
            v22 |= v93 << v46;
            v46 -= 8;
          }

          while (v46 >= v43);
        }
      }

      else
      {
        v40 = v28;
      }
    }

    else
    {
      v38 = (v37 & 0x7FFFFFF8) + 8;
      v39 = v38 + v20;
      v40 = (v28 + (v38 >> 3));
      a4 = v245;
      v22 = (bswap64(*v28) >> (56 - (v37 & 0xF8u)) << (v37 & 7)) | *v245;
    }

    a4[3] += v40 - v28;
    v20 = v39;
    v23 = v21 << 56;
    v24 = v22 - (v21 << 56);
    if (v22 >= v21 << 56)
    {
      goto LABEL_27;
    }

LABEL_54:
    result = 0;
    v25 = v21;
    v24 = v22;
    goto LABEL_55;
  }

  v23 = v21 << 56;
  v24 = v22 - (v21 << 56);
  if (v22 < v21 << 56)
  {
    goto LABEL_54;
  }

LABEL_27:
  v25 = *(a4 + 2) - v21;
  result = 1;
LABEL_55:
  v94 = vpx_norm[v25];
  v95 = v25 << v94;
  v96 = v24 << v94;
  v97 = v20 - v94;
  *a4 = v24 << v94;
  *(a4 + 2) = v95;
  *(a4 + 3) = v20 - v94;
  if ((v5 - 6) > 6 || v22 < v23)
  {
    goto LABEL_112;
  }

  v98 = ((v95 - 1) * v19[1] + 256) >> 8;
  if ((v97 & 0x80000000) != 0)
  {
    v101 = a4[3];
    v102 = a4[2] - v101;
    v103 = 8 * v102;
    v104 = a4[4];
    v246 = a4;
    if (v104)
    {
      v105 = a4 + 6;
      v241 = result;
      v239 = v98;
      v240 = v19;
      v106 = v12;
      v107 = v14;
      v108 = v5;
      v104(a4[5]);
      LODWORD(result) = v241;
      v5 = v108;
      v14 = v107;
      v12 = v106;
      v98 = v239;
      v19 = v240;
      v101 = v105;
    }

    v109 = 48 - v97;
    if (v103 < 0x41)
    {
      v112 = 56 - v103 - v97;
      if (v112 >= 0)
      {
        v97 += 0x40000000;
      }

      if (v103)
      {
        v113 = 1;
      }

      else
      {
        v113 = v112 <= -1;
      }

      a4 = v246;
      if (v113 && (v114 = v112 & ~(v112 >> 31), v109 >= v114))
      {
        v115 = v94 - v20 + 40;
        if (v115 >= v114 - 1)
        {
          v115 = v114 - 1;
        }

        v116 = v94 - v20 - v115 + 47;
        v111 = v101;
        v117 = v109;
        if (v116 < 0x78)
        {
          goto LABEL_122;
        }

        v118 = v96;
        v119 = v97;
        v120 = vdupq_n_s32(v109);
        v121 = 0uLL;
        v122 = vaddq_s32(v120, xmmword_273BC3230);
        v123 = vaddq_s32(v120, xmmword_273BC3240);
        v124 = vaddq_s32(v120, xmmword_273BC3250);
        v125 = vaddq_s32(v120, xmmword_273BC3220);
        v126.i64[0] = 0x800000008;
        v126.i64[1] = 0x800000008;
        v127.i64[0] = 0x7F0000007FLL;
        v127.i64[1] = 0x7F0000007FLL;
        v128 = (v116 >> 3) + 1;
        v129 = 0uLL;
        v130 = 0uLL;
        v131 = 0uLL;
        v111 = (v101 + (v128 & 0x3FFFFFF0));
        v117 = v109 - 8 * (v128 & 0x3FFFFFF0);
        v132 = v128 & 0x3FFFFFF0;
        v133 = v101;
        v134 = 0uLL;
        v135 = 0uLL;
        v136 = 0uLL;
        v137 = 0uLL;
        v138 = 0uLL;
        v139 = 0uLL;
        do
        {
          v140 = *v133++;
          v141 = vmovl_high_u8(v140);
          v142 = vmovl_high_u16(v141);
          v143.i64[0] = v142.u32[0];
          v143.i64[1] = v142.u32[1];
          v144 = v143;
          v145 = vmovl_u16(*v141.i8);
          v143.i64[0] = v145.u32[2];
          v143.i64[1] = v145.u32[3];
          v146 = v143;
          v147 = vmovl_u8(*v140.i8);
          v148 = vmovl_high_u16(v147);
          v143.i64[0] = v148.u32[2];
          v143.i64[1] = v148.u32[3];
          v149 = v143;
          v143.i64[0] = v142.u32[2];
          v143.i64[1] = v142.u32[3];
          v150 = v143;
          v143.i64[0] = v145.u32[0];
          v143.i64[1] = v145.u32[1];
          v151 = v143;
          v143.i64[0] = v148.u32[0];
          v143.i64[1] = v148.u32[1];
          v152 = v143;
          v153 = vmovl_u16(*v147.i8);
          v143.i64[0] = v153.u32[2];
          v143.i64[1] = v153.u32[3];
          v154 = v143;
          v143.i64[0] = v153.u32[0];
          v143.i64[1] = v153.u32[1];
          v155 = v143;
          v143.i64[0] = v125.u32[0];
          v143.i64[1] = v125.u32[1];
          v156 = vshlq_u64(v155, v143);
          v143.i64[0] = v125.u32[2];
          v143.i64[1] = v125.u32[3];
          v157 = vshlq_u64(v154, v143);
          v143.i64[0] = v124.u32[0];
          v143.i64[1] = v124.u32[1];
          v158 = vshlq_u64(v152, v143);
          v143.i64[0] = v123.u32[0];
          v143.i64[1] = v123.u32[1];
          v159 = vshlq_u64(v151, v143);
          v143.i64[0] = v122.u32[2];
          v143.i64[1] = v122.u32[3];
          v160 = vshlq_u64(v150, v143);
          v143.i64[0] = v124.u32[2];
          v143.i64[1] = v124.u32[3];
          v161 = vshlq_u64(v149, v143);
          v143.i64[0] = v123.u32[2];
          v143.i64[1] = v123.u32[3];
          v162 = vshlq_u64(v146, v143);
          v143.i64[0] = v122.u32[0];
          v143.i64[1] = v122.u32[1];
          v135 = vorrq_s8(vshlq_u64(v144, v143), v135);
          v134 = vorrq_s8(v162, v134);
          v130 = vorrq_s8(v161, v130);
          v136 = vorrq_s8(v160, v136);
          v131 = vorrq_s8(v159, v131);
          v129 = vorrq_s8(v158, v129);
          v121 = vorrq_s8(v157, v121);
          v118 = vorrq_s8(v156, v118);
          v119 = vaddq_s32(v119, v126);
          v137 = vaddq_s32(v137, v126);
          v138 = vaddq_s32(v138, v126);
          v139 = vaddq_s32(v139, v126);
          v125 = vaddq_s32(v125, v127);
          v124 = vaddq_s32(v124, v127);
          v123 = vaddq_s32(v123, v127);
          v122 = vaddq_s32(v122, v127);
          v132 -= 16;
        }

        while (v132);
        v163 = vorrq_s8(vorrq_s8(vorrq_s8(v118, v131), vorrq_s8(v129, v135)), vorrq_s8(vorrq_s8(v121, v134), vorrq_s8(v130, v136)));
        v96 = vorr_s8(*v163.i8, *&vextq_s8(v163, v163, 8uLL));
        v97 = vaddvq_s32(vaddq_s32(vaddq_s32(v119, v138), vaddq_s32(v137, v139)));
        if ((v128 & 0x3FFFFFF0) != v128)
        {
LABEL_122:
          do
          {
            v97 += 8;
            v164 = *v111;
            v111 = (v111 + 1);
            v96 |= v164 << v117;
            v117 -= 8;
          }

          while (v117 >= v114);
        }
      }

      else
      {
        v111 = v101;
      }
    }

    else
    {
      v110 = (v109 & 0x7FFFFFF8) + 8;
      v97 += v110;
      v111 = (v101 + (v110 >> 3));
      a4 = v246;
      v96 = (bswap64(*v101) >> (56 - (v109 & 0xF8u)) << (v109 & 7)) | *v246;
    }

    a4[3] += v111 - v101;
    v99 = v96 - (v98 << 56);
    if (v96 < v98 << 56)
    {
      goto LABEL_59;
    }

LABEL_82:
    LODWORD(v98) = *(a4 + 2) - v98;
    v100 = 1;
    v96 = v99;
    goto LABEL_83;
  }

  v99 = v96 - (v98 << 56);
  if (v96 >= v98 << 56)
  {
    goto LABEL_82;
  }

LABEL_59:
  v100 = 0;
LABEL_83:
  v165 = vpx_norm[v98];
  v166 = v98 << v165;
  v167 = v96 << v165;
  v168 = v97 - v165;
  *a4 = v167;
  *(a4 + 2) = v166;
  *(a4 + 3) = v97 - v165;
  result = (v100 + result);
  if ((v5 - 9) <= 3 && result != 1)
  {
    v169 = ((v166 - 1) * v19[2] + 256) >> 8;
    if ((v168 & 0x80000000) != 0)
    {
      v172 = a4[3];
      v173 = a4[2] - v172;
      v174 = 8 * v173;
      v175 = a4[4];
      v247 = a4;
      if (v175)
      {
        v176 = a4 + 6;
        v242 = result;
        v177 = v12;
        v244 = ((v166 - 1) * v19[2] + 256) >> 8;
        v178 = v14;
        v175(a4[5]);
        v14 = v178;
        v169 = v244;
        v12 = v177;
        LODWORD(result) = v242;
        v172 = v176;
      }

      v179 = 48 - v168;
      if (v174 < 0x41)
      {
        v182 = 56 - v174 - v168;
        if (v182 >= 0)
        {
          v168 += 0x40000000;
        }

        if (v174)
        {
          v183 = 1;
        }

        else
        {
          v183 = v182 <= -1;
        }

        a4 = v247;
        if (v183 && (v184 = v182 & ~(v182 >> 31), v179 >= v184))
        {
          v185 = v165 - v97 + 40;
          if (v185 >= v184 - 1)
          {
            v185 = v184 - 1;
          }

          v186 = v165 - v97 - v185 + 47;
          v181 = v172;
          v187 = v179;
          if (v186 < 0x78)
          {
            goto LABEL_123;
          }

          v188 = v167;
          v189 = v168;
          v190 = vdupq_n_s32(v179);
          v191 = 0uLL;
          v192 = vaddq_s32(v190, xmmword_273BC3230);
          v193 = vaddq_s32(v190, xmmword_273BC3240);
          v194 = vaddq_s32(v190, xmmword_273BC3250);
          v195 = vaddq_s32(v190, xmmword_273BC3220);
          v196.i64[0] = 0x800000008;
          v196.i64[1] = 0x800000008;
          v197.i64[0] = 0x7F0000007FLL;
          v197.i64[1] = 0x7F0000007FLL;
          v198 = (v186 >> 3) + 1;
          v199 = 0uLL;
          v200 = 0uLL;
          v201 = 0uLL;
          v181 = (v172 + (v198 & 0x3FFFFFF0));
          v187 = v179 - 8 * (v198 & 0x3FFFFFF0);
          v202 = v198 & 0x3FFFFFF0;
          v203 = v172;
          v204 = 0uLL;
          v205 = 0uLL;
          v206 = 0uLL;
          v207 = 0uLL;
          v208 = 0uLL;
          v209 = 0uLL;
          do
          {
            v210 = *v203++;
            v211 = vmovl_high_u8(v210);
            v212 = vmovl_high_u16(v211);
            v213.i64[0] = v212.u32[0];
            v213.i64[1] = v212.u32[1];
            v214 = v213;
            v215 = vmovl_u16(*v211.i8);
            v213.i64[0] = v215.u32[2];
            v213.i64[1] = v215.u32[3];
            v216 = v213;
            v217 = vmovl_u8(*v210.i8);
            v218 = vmovl_high_u16(v217);
            v213.i64[0] = v218.u32[2];
            v213.i64[1] = v218.u32[3];
            v219 = v213;
            v213.i64[0] = v212.u32[2];
            v213.i64[1] = v212.u32[3];
            v220 = v213;
            v213.i64[0] = v215.u32[0];
            v213.i64[1] = v215.u32[1];
            v221 = v213;
            v213.i64[0] = v218.u32[0];
            v213.i64[1] = v218.u32[1];
            v222 = v213;
            v223 = vmovl_u16(*v217.i8);
            v213.i64[0] = v223.u32[2];
            v213.i64[1] = v223.u32[3];
            v224 = v213;
            v213.i64[0] = v223.u32[0];
            v213.i64[1] = v223.u32[1];
            v225 = v213;
            v213.i64[0] = v195.u32[0];
            v213.i64[1] = v195.u32[1];
            v226 = vshlq_u64(v225, v213);
            v213.i64[0] = v195.u32[2];
            v213.i64[1] = v195.u32[3];
            v227 = vshlq_u64(v224, v213);
            v213.i64[0] = v194.u32[0];
            v213.i64[1] = v194.u32[1];
            v228 = vshlq_u64(v222, v213);
            v213.i64[0] = v193.u32[0];
            v213.i64[1] = v193.u32[1];
            v229 = vshlq_u64(v221, v213);
            v213.i64[0] = v192.u32[2];
            v213.i64[1] = v192.u32[3];
            v230 = vshlq_u64(v220, v213);
            v213.i64[0] = v194.u32[2];
            v213.i64[1] = v194.u32[3];
            v231 = vshlq_u64(v219, v213);
            v213.i64[0] = v193.u32[2];
            v213.i64[1] = v193.u32[3];
            v232 = vshlq_u64(v216, v213);
            v213.i64[0] = v192.u32[0];
            v213.i64[1] = v192.u32[1];
            v205 = vorrq_s8(vshlq_u64(v214, v213), v205);
            v204 = vorrq_s8(v232, v204);
            v200 = vorrq_s8(v231, v200);
            v206 = vorrq_s8(v230, v206);
            v201 = vorrq_s8(v229, v201);
            v199 = vorrq_s8(v228, v199);
            v191 = vorrq_s8(v227, v191);
            v188 = vorrq_s8(v226, v188);
            v189 = vaddq_s32(v189, v196);
            v207 = vaddq_s32(v207, v196);
            v208 = vaddq_s32(v208, v196);
            v209 = vaddq_s32(v209, v196);
            v195 = vaddq_s32(v195, v197);
            v194 = vaddq_s32(v194, v197);
            v193 = vaddq_s32(v193, v197);
            v192 = vaddq_s32(v192, v197);
            v202 -= 16;
          }

          while (v202);
          v233 = vorrq_s8(vorrq_s8(vorrq_s8(v188, v201), vorrq_s8(v199, v205)), vorrq_s8(vorrq_s8(v191, v204), vorrq_s8(v200, v206)));
          v167 = vorr_s8(*v233.i8, *&vextq_s8(v233, v233, 8uLL));
          v168 = vaddvq_s32(vaddq_s32(vaddq_s32(v189, v208), vaddq_s32(v207, v209)));
          if ((v198 & 0x3FFFFFF0) != v198)
          {
LABEL_123:
            do
            {
              v168 += 8;
              v234 = *v181;
              v181 = (v181 + 1);
              v167 |= v234 << v187;
              v187 -= 8;
            }

            while (v187 >= v184);
          }
        }

        else
        {
          v181 = v172;
        }
      }

      else
      {
        v180 = (v179 & 0x7FFFFFF8) + 8;
        v168 += v180;
        v181 = (v172 + (v180 >> 3));
        a4 = v247;
        v167 = (bswap64(*v172) >> (56 - (v179 & 0xF8u)) << (v179 & 7)) | *v247;
      }

      a4[3] += v181 - v172;
      v170 = v167 - (v169 << 56);
      if (v167 < v169 << 56)
      {
        goto LABEL_87;
      }
    }

    else
    {
      v170 = v167 - (v169 << 56);
      if (v167 < v169 << 56)
      {
LABEL_87:
        v171 = 0;
LABEL_111:
        v235 = vpx_norm[v169];
        *a4 = v167 << v235;
        *(a4 + 2) = v169 << v235;
        *(a4 + 3) = v168 - v235;
        result = (v171 + result);
        goto LABEL_112;
      }
    }

    LODWORD(v169) = *(a4 + 2) - v169;
    v171 = 1;
    v167 = v170;
    goto LABEL_111;
  }

LABEL_112:
  if (v12)
  {
    v236 = v14 > v6;
    if (v6 == 3)
    {
      v237 = v12 + 16 * v236;
      v238 = 12688;
    }

    else if (v6 == 2)
    {
      v237 = v12 + 12 * (v14 > v6);
      v238 = 12720;
    }

    else
    {
      v237 = v12 + 8 * v236;
      v238 = 12744;
    }

    ++*(v237 + v238 + 4 * result);
  }

  return result;
}

uint64_t dec_find_mv_refs(uint64_t a1, _DWORD *a2, int a3, int a4, _DWORD *a5, uint64_t a6, int a7, int a8, unsigned int a9)
{
  if (*(a1 + 1504))
  {
    v9 = (*(*(a1 + 336) + 8) + 12 * *(a1 + 1320) * a7 + 12 * a8);
    *a6 = 0;
    if ((a9 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = 0;
    *a6 = 0;
    if ((a9 & 0x80000000) == 0)
    {
LABEL_3:
      v10 = (a1 + 1312);
      v11 = a2 + 108;
      v12 = a2 + 109;
      v13 = a2 + 112;
      v14 = a2 + 110;
      v15 = 0;
      if (*a5 + a7 < 0)
      {
        v18 = 0;
        v16 = 1;
      }

      else
      {
        v16 = 1;
        if (*a5 + a7 >= *v10)
        {
          v18 = 0;
        }

        else
        {
          v17 = a5[1];
          v18 = 0;
          if (v17 + a8 >= *v11)
          {
            if (v17 + a8 >= *v12)
            {
              v15 = 0;
              v18 = 0;
            }

            else
            {
              v19 = *(*v13 + 8 * (v17 + *v14 * *a5));
              if (v19[8] == a4)
              {
                if (*v19 > 2u)
                {
                  *a6 = *(v19 + 3);
                  v15 = 1;
                  if (a3 != 11)
                  {
                    goto LABEL_178;
                  }
                }

                else
                {
                  *a6 = *&v19[12 * idx_n_column_to_subblock[2 * a9 + (v17 == 0)] + 24];
                  v15 = 1;
                  if (a3 != 11)
                  {
                    goto LABEL_178;
                  }
                }

                goto LABEL_24;
              }

              if (v19[9] == a4)
              {
                if (*v19 > 2u)
                {
                  v21 = v19 + 16;
                }

                else
                {
                  v21 = &v19[12 * idx_n_column_to_subblock[2 * a9 + (v17 == 0)] + 28];
                }

                *a6 = *v21;
                v15 = 1;
                if (a3 != 11)
                {
                  goto LABEL_178;
                }

LABEL_24:
                v16 = 0;
                v18 = 1;
                goto LABEL_25;
              }

              v18 = 0;
              v15 = 1;
            }
          }
        }
      }

LABEL_25:
      v22 = a5[2];
      if (v22 + a7 < 0)
      {
        goto LABEL_49;
      }

      v20 = 2;
      if (v22 + a7 >= *v10)
      {
        goto LABEL_50;
      }

      v23 = a5[3];
      if (v23 + a8 < *v11)
      {
        goto LABEL_50;
      }

      if (v23 + a8 >= *v12)
      {
        goto LABEL_49;
      }

      v24 = *(*v13 + 8 * (v23 + *v14 * v22));
      if (v24[8] == a4)
      {
        v25 = *v24;
        if (v16)
        {
          if (v25 >= 3)
          {
            v26 = v24 + 12;
          }

          else
          {
            v26 = &v24[12 * idx_n_column_to_subblock[2 * a9 + (v23 == 0)] + 24];
          }

LABEL_44:
          *a6 = *v26;
          v18 = 1;
          if (a3 != 11)
          {
            goto LABEL_160;
          }

          v20 = 2;
          v15 = 1;
          goto LABEL_51;
        }

        if (v25 >= 3)
        {
          v28 = *(v24 + 3);
        }

        else
        {
          v28 = *&v24[12 * idx_n_column_to_subblock[2 * a9 + (v23 == 0)] + 24];
        }
      }

      else
      {
        if (v24[9] != a4)
        {
LABEL_48:
          v15 = 1;
LABEL_49:
          v20 = 2;
          goto LABEL_50;
        }

        v27 = *v24;
        if (v16)
        {
          if (v27 >= 3)
          {
            v26 = v24 + 16;
          }

          else
          {
            v26 = &v24[12 * idx_n_column_to_subblock[2 * a9 + (v23 == 0)] + 28];
          }

          goto LABEL_44;
        }

        if (v27 >= 3)
        {
          v28 = *(v24 + 4);
        }

        else
        {
          v28 = *&v24[12 * idx_n_column_to_subblock[2 * a9 + (v23 == 0)] + 28];
        }
      }

      if (v28 != *a6)
      {
        *(a6 + 4 * v18++) = v28;
        goto LABEL_160;
      }

      goto LABEL_48;
    }
  }

  v15 = 0;
  v18 = 0;
  v20 = 0;
LABEL_50:
  v10 = (a1 + 1312);
  v11 = a2 + 108;
  v12 = a2 + 109;
  v13 = a2 + 112;
  v14 = a2 + 110;
  if (a3 == 11)
  {
LABEL_51:
    v29 = v20 | 0xFFFFFFFFFFFFFFF8;
    v30 = &a5[2 * v20 + 1];
    while (1)
    {
      v32 = *(v30 - 1);
      if (v32 + a7 < 0)
      {
        goto LABEL_53;
      }

      v33 = *v30 + a8;
      v34 = v32 + a7 >= *v10 || v33 < *v11;
      if (v34 || v33 >= *v12)
      {
        goto LABEL_53;
      }

      v35 = *(*v13 + 8 * (*v30 + *v14 * v32));
      if (*(v35 + 8) == a4)
      {
        break;
      }

      if (*(v35 + 9) == a4)
      {
        v36 = *(v35 + 16);
        if (!v18)
        {
LABEL_66:
          *a6 = v36;
LABEL_67:
          v15 = 1;
          v18 = 1;
          goto LABEL_53;
        }

LABEL_62:
        if (v36 != *a6)
        {
          goto LABEL_141;
        }

        goto LABEL_67;
      }

      v15 = 1;
LABEL_53:
      v30 += 2;
      v31 = __CFADD__(v29++, 1);
      if (v31)
      {
        goto LABEL_84;
      }
    }

    v36 = *(v35 + 12);
    if (!v18)
    {
      goto LABEL_66;
    }

    goto LABEL_62;
  }

  v37 = v20 | 0xFFFFFFFFFFFFFFF8;
  v38 = &a5[2 * v20 + 1];
  do
  {
    v39 = *(v38 - 1);
    if (v39 + a7 >= 0)
    {
      v40 = *v38 + a8;
      v41 = v39 + a7 >= *v10 || v40 < *v11;
      if (!v41 && v40 < *v12)
      {
        v42 = *(*v13 + 8 * (*v38 + *v14 * v39));
        if (*(v42 + 8) == a4)
        {
          v36 = *(v42 + 12);
          if (!v18)
          {
            goto LABEL_155;
          }
        }

        else
        {
          if (*(v42 + 9) != a4)
          {
            v15 = 1;
            goto LABEL_70;
          }

          v36 = *(v42 + 16);
          if (!v18)
          {
LABEL_155:
            *a6 = v36;
            v18 = 1;
            goto LABEL_160;
          }
        }

        if (v36 != *a6)
        {
LABEL_141:
          *(a6 + 4) = v36;
          v18 = 2;
          goto LABEL_160;
        }

        v15 = 1;
        v18 = 1;
      }
    }

LABEL_70:
    v38 += 2;
    v31 = __CFADD__(v37++, 1);
  }

  while (!v31);
LABEL_84:
  if (v9)
  {
    if (*(v9 + 8) == a4)
    {
      v43 = *v9;
      if (v18)
      {
        if (v43 == *a6)
        {
          goto LABEL_88;
        }

LABEL_92:
        *(a6 + 4) = v43;
        v18 = 2;
        goto LABEL_160;
      }

LABEL_93:
      *a6 = v43;
      v18 = 1;
      if (a3 != 11)
      {
        goto LABEL_160;
      }
    }

    else if (*(v9 + 9) == a4)
    {
      v43 = *(v9 + 1);
      if (!v18)
      {
        goto LABEL_93;
      }

      if (v43 != *a6)
      {
        goto LABEL_92;
      }

LABEL_88:
      v18 = 1;
    }
  }

  v44 = a1 + 4708;
  if (v15)
  {
    v45 = a5 + 1;
    for (i = 8; i; --i)
    {
      v47 = *(v45 - 1);
      if (v47 + a7 >= 0)
      {
        v48 = *v45 + a8;
        if (v47 + a7 < *v10 && v48 >= *v11 && v48 < *v12)
        {
          v50 = *(*v13 + 8 * (*v45 + *v14 * v47));
          v51 = *(v50 + 8);
          if (v51 >= 1)
          {
            if (v51 != a4)
            {
              v52 = *(v50 + 14);
              if (*(v44 + 4 * v51) == *(v44 + 4 * a4))
              {
                LOWORD(v53) = *(v50 + 12);
              }

              else
              {
                v52 = -v52;
                v53 = -*(v50 + 12);
              }

              v54 = v53 | (v52 << 16);
              if (v18)
              {
                if (v54 != *a6)
                {
                  *(a6 + 4) = v54;
                  v18 = 2;
                  goto LABEL_160;
                }

                v18 = 1;
              }

              else
              {
                *a6 = v54;
                v18 = 1;
                if (a3 != 11)
                {
                  goto LABEL_160;
                }
              }
            }

            v55 = *(v50 + 9);
            if (v55 >= 1 && v55 != a4)
            {
              v57 = *(v50 + 16);
              if (v57 != *(v50 + 12))
              {
                v58 = *(v44 + 4 * *(v50 + 9));
                v59 = *(v44 + 4 * a4);
                v60 = v58 == v59;
                if (v58 == v59)
                {
                  LOWORD(v61) = HIWORD(*(v50 + 16));
                }

                else
                {
                  v61 = -HIWORD(v57);
                }

                if (v60)
                {
                  LOWORD(v50) = *(v50 + 16);
                }

                else
                {
                  LODWORD(v50) = -v57;
                }

                v62 = v50 | (v61 << 16);
                if (v18)
                {
                  if (v62 != *a6)
                  {
                    *(a6 + 4) = v62;
                    v18 = 2;
                    goto LABEL_160;
                  }

                  v18 = 1;
                }

                else
                {
                  *a6 = v62;
                  v18 = 1;
                  if (a3 != 11)
                  {
                    goto LABEL_160;
                  }
                }
              }
            }
          }
        }
      }

      v45 += 2;
    }
  }

  if (v9)
  {
    v63 = *(v9 + 8);
    if (v63 != a4 && v63 >= 1)
    {
      v65 = *(v44 + 4 * *(v9 + 8));
      v66 = *(v44 + 4 * a4);
      v67 = v65 == v66;
      if (v65 == v66)
      {
        LOWORD(v68) = *v9;
      }

      else
      {
        v68 = -*v9;
      }

      if (v67)
      {
        LOWORD(v69) = v9[1];
      }

      else
      {
        v69 = -v9[1];
      }

      if (v18)
      {
        if ((v68 | (v69 << 16)) != *a6)
        {
          *(a6 + 4) = v68;
          *(a6 + 6) = v69;
          v18 = 2;
          goto LABEL_160;
        }

        v18 = 1;
      }

      else
      {
        *a6 = v68;
        *(a6 + 2) = v69;
        v18 = 1;
        if (a3 != 11)
        {
          goto LABEL_160;
        }
      }
    }

    v70 = *(v9 + 9);
    if (v70 >= 1 && v70 != a4)
    {
      v71 = *(v9 + 1);
      if (v71 != *v9)
      {
        v72 = *(v44 + 4 * *(v9 + 9));
        v73 = HIWORD(v71);
        v74 = *(v44 + 4 * a4);
        v75 = v72 == v74;
        if (v72 == v74)
        {
          LOWORD(v76) = v71;
        }

        else
        {
          v76 = -v71;
        }

        if (!v75)
        {
          v73 = -v73;
        }

        if (v18)
        {
          if ((v76 | (v73 << 16)) != *a6)
          {
            *(a6 + 4) = v76;
            *(a6 + 6) = v73;
            v18 = 2;
            goto LABEL_160;
          }

          goto LABEL_157;
        }

        *a6 = v76;
        *(a6 + 2) = v73;
        if (a3 != 11)
        {
LABEL_178:
          v18 = 1;
          goto LABEL_160;
        }
      }
    }
  }

LABEL_157:
  if (a3 == 11)
  {
    v18 = 2;
  }

  else
  {
    v18 = 1;
  }

LABEL_160:
  v77 = a2[122] - 128;
  v78 = a2[123] + 128;
  v79 = a2[124] - 128;
  v80 = a2[125] + 128;
  result = v18;
  if (v18 >= 8)
  {
    v83 = vdupq_n_s32(v77);
    v84 = vdupq_n_s32(v78);
    v85 = vdupq_n_s32(v79);
    v86 = vdupq_n_s32(v80);
    v99 = vld2q_s16(a6);
    v82 = v18 & 0x7FFFFFF8;
    v87 = vmovl_high_s16(v99.val[1]);
    v88 = vmovl_s16(*v99.val[1].i8);
    v98.val[1] = vuzp1q_s16(vbslq_s8(vcgtq_s32(v83, v88), v83, vminq_s32(v88, v84)), vbslq_s8(vcgtq_s32(v83, v87), v83, vminq_s32(v87, v84)));
    v89 = vmovl_high_s16(v99.val[0]);
    v99.val[0] = vmovl_s16(*v99.val[0].i8);
    v98.val[0] = vuzp1q_s16(vbslq_s8(vcgtq_s32(v85, v99.val[0]), v85, vminq_s32(v99.val[0], v86)), vbslq_s8(vcgtq_s32(v85, v89), v85, vminq_s32(v89, v86)));
    vst2q_s16(a6, v98);
    if ((result & 0x7FFFFFF8) != result)
    {
      goto LABEL_163;
    }
  }

  else
  {
    v82 = 0;
LABEL_163:
    v90 = result - v82;
    v91 = (a6 + 4 * v82 + 2);
    do
    {
      v92 = *v91;
      if (v92 >= v78)
      {
        v93 = v78;
      }

      else
      {
        v93 = *v91;
      }

      if (v77 <= v92)
      {
        v94 = v93;
      }

      else
      {
        v94 = v77;
      }

      *v91 = v94;
      v95 = *(v91 - 1);
      if (v95 >= v80)
      {
        v96 = v80;
      }

      else
      {
        v96 = *(v91 - 1);
      }

      if (v79 <= v95)
      {
        v97 = v96;
      }

      else
      {
        v97 = v79;
      }

      *(v91 - 1) = v97;
      v91 += 2;
      --v90;
    }

    while (v90);
  }

  return result;
}

uint64_t assign_mv(uint64_t a1, uint64_t a2, int a3, void *a4, uint64_t a5, void *a6, int a7, int a8, void *a9)
{
  if ((a3 - 10) < 2)
  {
    *a4 = *a6;
    return 1;
  }

  if (a3 == 12)
  {
    *a4 = 0;
    return 1;
  }

  if (a3 == 13)
  {
    v9 = 0;
    v10 = *(a2 + 416);
    v11 = a9;
    if (v10)
    {
      v12 = v10 + 12800;
    }

    else
    {
      v12 = 0;
    }

    v96 = (a7 + 1);
    v97 = v12;
    LOBYTE(result) = 1;
    v14.i64[0] = 0x800000008;
    v14.i64[1] = 0x800000008;
    v15.i64[0] = 0x7F0000007FLL;
    for (v15.i64[1] = 0x7F0000007FLL; ; v15.i64[1] = 0x7F0000007FLL)
    {
      v103 = result;
      v104 = v9;
      LOBYTE(v20) = 0;
      v102 = *(a1 + 4904);
      v21 = *(v11 + 8);
      v22 = *(v11 + 12);
      v23 = *v11;
      do
      {
        v27 = *(v102 + 1970 + (v20 >> 1));
        if ((v22 & 0x80000000) == 0)
        {
          v24 = ((v21 - 1) * v27 + 256) >> 8;
          v28 = v23 - (v24 << 56);
          if (v23 >= v24 << 56)
          {
            goto LABEL_13;
          }

          goto LABEL_46;
        }

        v29 = *(v11 + 24);
        v30 = *(v11 + 16) - v29;
        v31 = *(v11 + 32);
        if (v31)
        {
          if (v30 >= 9)
          {
            v32 = 9;
          }

          else
          {
            v32 = *(v11 + 16) - v29;
          }

          v33 = *(v11 + 40);
          v34 = *(v102 + 1970 + (v20 >> 1));
          v31(v33, v29, a9 + 6, v32);
          v27 = v34;
          v15.i64[0] = 0x7F0000007FLL;
          v15.i64[1] = 0x7F0000007FLL;
          v14.i64[0] = 0x800000008;
          v14.i64[1] = 0x800000008;
          v29 = a9 + 6;
        }

        v35 = 8 * v30;
        v36 = 48 - v22;
        if (8 * v30 >= 0x41)
        {
          v37 = (v36 & 0x7FFFFFF8) + 8;
          v38 = v37 + v22;
          v39 = (v29 + (v37 >> 3));
          v11 = a9;
          v23 = (bswap64(*v29) >> (56 - (v36 & 0xF8u)) << (v36 & 7)) | *a9;
          goto LABEL_45;
        }

        v40 = 56 - v22 - v35;
        if (v40 < 0)
        {
          v38 = v22;
        }

        else
        {
          v38 = v22 + 0x40000000;
        }

        if (v35)
        {
          v41 = 1;
        }

        else
        {
          v41 = v40 <= -1;
        }

        v42 = v40 & ~(v40 >> 31);
        v43 = !v41 || v36 < v42;
        v11 = a9;
        if (v43)
        {
          v39 = v29;
          goto LABEL_45;
        }

        v44 = v42 - 1;
        if (v42 - 1 >= (40 - v22))
        {
          v44 = 40 - v22;
        }

        v45 = 47 - v22 - v44;
        if (v45 < 0x78)
        {
          v39 = v29;
          do
          {
LABEL_44:
            v38 += 8;
            v90 = *v39;
            v39 = (v39 + 1);
            v23 |= v90 << v36;
            v36 -= 8;
          }

          while (v36 >= v42);
          goto LABEL_45;
        }

        v46 = (v45 >> 3) + 1;
        v47 = v23;
        v48 = 0uLL;
        v49 = v38;
        v50 = vdupq_n_s32(v36);
        v51 = vaddq_s32(v50, xmmword_273BC3230);
        v39 = (v29 + (v46 & 0x3FFFFFF0));
        v52 = vaddq_s32(v50, xmmword_273BC3240);
        v36 -= 8 * (v46 & 0x3FFFFFF0);
        v53 = vaddq_s32(v50, xmmword_273BC3250);
        v54 = vaddq_s32(v50, xmmword_273BC3220);
        v55 = v46 & 0x3FFFFFF0;
        v56 = v29;
        v57 = 0uLL;
        v58 = 0uLL;
        v59 = 0uLL;
        v60 = 0uLL;
        v61 = 0uLL;
        v62 = 0uLL;
        v63 = 0uLL;
        v64 = 0uLL;
        v65 = 0uLL;
        do
        {
          v66 = *v56++;
          v67 = vmovl_high_u8(v66);
          v68 = vmovl_high_u16(v67);
          v69.i64[0] = v68.u32[0];
          v69.i64[1] = v68.u32[1];
          v70 = v69;
          v71 = vmovl_u16(*v67.i8);
          v69.i64[0] = v71.u32[2];
          v69.i64[1] = v71.u32[3];
          v72 = v69;
          v73 = vmovl_u8(*v66.i8);
          v74 = vmovl_high_u16(v73);
          v69.i64[0] = v74.u32[2];
          v69.i64[1] = v74.u32[3];
          v75 = v69;
          v69.i64[0] = v68.u32[2];
          v69.i64[1] = v68.u32[3];
          v76 = v69;
          v69.i64[0] = v71.u32[0];
          v69.i64[1] = v71.u32[1];
          v77 = v69;
          v69.i64[0] = v74.u32[0];
          v69.i64[1] = v74.u32[1];
          v78 = v69;
          v79 = vmovl_u16(*v73.i8);
          v69.i64[0] = v79.u32[2];
          v69.i64[1] = v79.u32[3];
          v80 = v69;
          v69.i64[0] = v79.u32[0];
          v69.i64[1] = v79.u32[1];
          v81 = v69;
          v69.i64[0] = v54.u32[0];
          v69.i64[1] = v54.u32[1];
          v82 = vshlq_u64(v81, v69);
          v69.i64[0] = v54.u32[2];
          v69.i64[1] = v54.u32[3];
          v83 = vshlq_u64(v80, v69);
          v69.i64[0] = v53.u32[0];
          v69.i64[1] = v53.u32[1];
          v84 = vshlq_u64(v78, v69);
          v69.i64[0] = v52.u32[0];
          v69.i64[1] = v52.u32[1];
          v85 = vshlq_u64(v77, v69);
          v69.i64[0] = v51.u32[2];
          v69.i64[1] = v51.u32[3];
          v86 = vshlq_u64(v76, v69);
          v69.i64[0] = v53.u32[2];
          v69.i64[1] = v53.u32[3];
          v87 = vshlq_u64(v75, v69);
          v69.i64[0] = v52.u32[2];
          v69.i64[1] = v52.u32[3];
          v88 = vshlq_u64(v72, v69);
          v69.i64[0] = v51.u32[0];
          v69.i64[1] = v51.u32[1];
          v61 = vorrq_s8(vshlq_u64(v70, v69), v61);
          v60 = vorrq_s8(v88, v60);
          v58 = vorrq_s8(v87, v58);
          v62 = vorrq_s8(v86, v62);
          v59 = vorrq_s8(v85, v59);
          v57 = vorrq_s8(v84, v57);
          v48 = vorrq_s8(v83, v48);
          v47 = vorrq_s8(v82, v47);
          v49 = vaddq_s32(v49, v14);
          v63 = vaddq_s32(v63, v14);
          v64 = vaddq_s32(v64, v14);
          v65 = vaddq_s32(v65, v14);
          v54 = vaddq_s32(v54, v15);
          v53 = vaddq_s32(v53, v15);
          v52 = vaddq_s32(v52, v15);
          v51 = vaddq_s32(v51, v15);
          v55 -= 16;
        }

        while (v55);
        v89 = vorrq_s8(vorrq_s8(vorrq_s8(v47, v59), vorrq_s8(v57, v61)), vorrq_s8(vorrq_s8(v48, v60), vorrq_s8(v58, v62)));
        v23 = vorr_s8(*v89.i8, *&vextq_s8(v89, v89, 8uLL));
        v38 = vaddvq_s32(vaddq_s32(vaddq_s32(v49, v64), vaddq_s32(v63, v65)));
        if ((v46 & 0x3FFFFFF0) != v46)
        {
          goto LABEL_44;
        }

LABEL_45:
        *(v11 + 24) += v39 - v29;
        v22 = v38;
        v24 = ((v21 - 1) * v27 + 256) >> 8;
        v28 = v23 - (v24 << 56);
        if (v23 >= v24 << 56)
        {
LABEL_13:
          LODWORD(v24) = *(v11 + 8) - v24;
          v25 = 1;
          v23 = v28;
          goto LABEL_14;
        }

LABEL_46:
        v25 = 0;
LABEL_14:
        v26 = vpx_norm[v24];
        v21 = v24 << v26;
        v23 <<= v26;
        v22 -= v26;
        *v11 = v23;
        *(v11 + 8) = v24 << v26;
        *(v11 + 12) = v22;
        v20 = vp9_mv_joint_tree[v25 + v20];
      }

      while (v20 > 0);
      v91 = (a5 + 4 * v104);
      if (!a8)
      {
        goto LABEL_55;
      }

      v92 = *v91;
      if (v92 < 0)
      {
        v92 = -v92;
      }

      if (v92 > 0x3F)
      {
LABEL_55:
        v94 = 0;
        v95 = -v20;
        v105 = 0;
        if ((-v20 & 0xFFFFFFFE) != 2)
        {
          goto LABEL_57;
        }

LABEL_56:
        LOWORD(v105) = read_mv_component(v11, (v102 + 1973), v94);
        goto LABEL_57;
      }

      v93 = v91[1];
      if (v93 < 0)
      {
        v93 = -v93;
      }

      v94 = v93 < 0x40;
      v95 = -v20;
      v105 = 0;
      if ((-v20 & 0xFFFFFFFE) == 2)
      {
        goto LABEL_56;
      }

LABEL_57:
      if ((v95 & 0xFFFFFFFD) == 1)
      {
        HIWORD(v105) = read_mv_component(v11, (v102 + 2006), v94);
      }

      v16 = a4 + 2 * v104;
      vp9_inc_mv(&v105, v97);
      v17 = v105 + *v91;
      *v16 = v17;
      v18 = HIWORD(v105) + v91[1];
      v16[1] = v18;
      v19 = v103 & ((v17 + 0x3FFF) < 0x7FFEu);
      if ((v18 + 0x3FFF) < 0x7FFEu)
      {
        result = v19;
      }

      else
      {
        result = 0;
      }

      v9 = v104 + 1;
      v14.i64[0] = 0x800000008;
      v14.i64[1] = 0x800000008;
      v15.i64[0] = 0x7F0000007FLL;
      if (v104 + 1 == v96)
      {
        return result;
      }
    }
  }

  return 0;
}

uint64_t read_mv_component(uint64_t a1, unsigned __int8 *a2, int a3)
{
  v3 = a1;
  v4 = *(a1 + 12);
  v5 = ((*(a1 + 8) - 1) * *a2 + 256) >> 8;
  v6 = *a1;
  if ((v4 & 0x80000000) != 0)
  {
    v154 = *(a1 + 24);
    v155 = *(a1 + 16) - v154;
    v156 = 8 * v155;
    v157 = *(a1 + 32);
    if (v157)
    {
      if (v155 >= 9)
      {
        v158 = 9;
      }

      else
      {
        v158 = *(a1 + 16) - v154;
      }

      v157(*(a1 + 40), v154, a1 + 48, v158);
      v154 = v3 + 6;
    }

    v159 = 48 - v4;
    if (v156 < 0x41)
    {
      v165 = 56 - v4 - v156;
      if (v165 < 0)
      {
        v161 = v4;
      }

      else
      {
        v161 = v4 + 0x40000000;
      }

      if (v156)
      {
        v166 = 1;
      }

      else
      {
        v166 = v165 <= -1;
      }

      v167 = v165 & ~(v165 >> 31);
      if (!v166 || v159 < v167)
      {
        v162 = v154;
      }

      else
      {
        v177 = v167 - 1;
        if (v167 - 1 >= (40 - v4))
        {
          v177 = 40 - v4;
        }

        v178 = 47 - v4 - v177;
        v162 = v154;
        v179 = 48 - v4;
        if (v178 < 0x78)
        {
          goto LABEL_218;
        }

        v180 = 0uLL;
        v181 = v6;
        v182 = v161;
        v183 = vdupq_n_s32(v159);
        v184 = vaddq_s32(v183, xmmword_273BC3230);
        v185 = vaddq_s32(v183, xmmword_273BC3240);
        v186 = vaddq_s32(v183, xmmword_273BC3250);
        v187 = vaddq_s32(v183, xmmword_273BC3220);
        v188 = (v178 >> 3) + 1;
        v189.i64[0] = 0x800000008;
        v189.i64[1] = 0x800000008;
        v162 = (v154 + (v188 & 0x3FFFFFF0));
        v190.i64[0] = 0x7F0000007FLL;
        v190.i64[1] = 0x7F0000007FLL;
        v179 = v159 - 8 * (v188 & 0x3FFFFFF0);
        v191 = 0uLL;
        v192 = v188 & 0x3FFFFFF0;
        v193 = 0uLL;
        v194 = v154;
        v195 = 0uLL;
        v196 = 0uLL;
        v197 = 0uLL;
        v198 = 0uLL;
        v199 = 0uLL;
        v200 = 0uLL;
        v201 = 0uLL;
        do
        {
          v202 = *v194++;
          v203 = vmovl_high_u8(v202);
          v204 = vmovl_high_u16(v203);
          v205.i64[0] = v204.u32[0];
          v205.i64[1] = v204.u32[1];
          v206 = v205;
          v207 = vmovl_u16(*v203.i8);
          v205.i64[0] = v207.u32[2];
          v205.i64[1] = v207.u32[3];
          v208 = v205;
          v209 = vmovl_u8(*v202.i8);
          v210 = vmovl_high_u16(v209);
          v205.i64[0] = v210.u32[2];
          v205.i64[1] = v210.u32[3];
          v211 = v205;
          v205.i64[0] = v204.u32[2];
          v205.i64[1] = v204.u32[3];
          v212 = v205;
          v205.i64[0] = v207.u32[0];
          v205.i64[1] = v207.u32[1];
          v213 = v205;
          v205.i64[0] = v210.u32[0];
          v205.i64[1] = v210.u32[1];
          v214 = v205;
          v215 = vmovl_u16(*v209.i8);
          v205.i64[0] = v215.u32[2];
          v205.i64[1] = v215.u32[3];
          v216 = v205;
          v205.i64[0] = v215.u32[0];
          v205.i64[1] = v215.u32[1];
          v217 = v205;
          v205.i64[0] = v187.u32[0];
          v205.i64[1] = v187.u32[1];
          v218 = vshlq_u64(v217, v205);
          v205.i64[0] = v187.u32[2];
          v205.i64[1] = v187.u32[3];
          v219 = vshlq_u64(v216, v205);
          v205.i64[0] = v186.u32[0];
          v205.i64[1] = v186.u32[1];
          v220 = vshlq_u64(v214, v205);
          v205.i64[0] = v185.u32[0];
          v205.i64[1] = v185.u32[1];
          v221 = vshlq_u64(v213, v205);
          v205.i64[0] = v184.u32[2];
          v205.i64[1] = v184.u32[3];
          v222 = vshlq_u64(v212, v205);
          v205.i64[0] = v186.u32[2];
          v205.i64[1] = v186.u32[3];
          v223 = vshlq_u64(v211, v205);
          v205.i64[0] = v185.u32[2];
          v205.i64[1] = v185.u32[3];
          v224 = vshlq_u64(v208, v205);
          v205.i64[0] = v184.u32[0];
          v205.i64[1] = v184.u32[1];
          v197 = vorrq_s8(vshlq_u64(v206, v205), v197);
          v196 = vorrq_s8(v224, v196);
          v193 = vorrq_s8(v223, v193);
          v198 = vorrq_s8(v222, v198);
          v195 = vorrq_s8(v221, v195);
          v191 = vorrq_s8(v220, v191);
          v180 = vorrq_s8(v219, v180);
          v181 = vorrq_s8(v218, v181);
          v182 = vaddq_s32(v182, v189);
          v199 = vaddq_s32(v199, v189);
          v200 = vaddq_s32(v200, v189);
          v201 = vaddq_s32(v201, v189);
          v187 = vaddq_s32(v187, v190);
          v186 = vaddq_s32(v186, v190);
          v185 = vaddq_s32(v185, v190);
          v184 = vaddq_s32(v184, v190);
          v192 -= 16;
        }

        while (v192);
        v225 = vorrq_s8(vorrq_s8(vorrq_s8(v181, v195), vorrq_s8(v191, v197)), vorrq_s8(vorrq_s8(v180, v196), vorrq_s8(v193, v198)));
        v6 = vorr_s8(*v225.i8, *&vextq_s8(v225, v225, 8uLL));
        v161 = vaddvq_s32(vaddq_s32(vaddq_s32(v182, v200), vaddq_s32(v199, v201)));
        if ((v188 & 0x3FFFFFF0) != v188)
        {
LABEL_218:
          do
          {
            v161 += 8;
            v226 = *v162;
            v162 = (v162 + 1);
            v6 |= v226 << v179;
            v179 -= 8;
          }

          while (v179 >= v167);
        }
      }
    }

    else
    {
      v160 = (v159 & 0x7FFFFFF8) + 8;
      v161 = v160 + v4;
      v162 = (v154 + (v160 >> 3));
      v6 = (bswap64(*v154) >> (56 - (v159 & 0xF8u)) << (v159 & 7)) | *v3;
    }

    v3[3] += v162 - v154;
    v4 = v161;
    v7 = v6;
    v424 = v5 << 56;
    v425 = v6;
    v8 = v6 - (v5 << 56);
    if (v6 < v5 << 56)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = *a1;
  v424 = v5 << 56;
  v425 = *a1;
  v8 = v6 - (v5 << 56);
  if (v6 >= v5 << 56)
  {
LABEL_3:
    LODWORD(v5) = *(v3 + 2) - v5;
    v7 = v8;
  }

LABEL_4:
  LOBYTE(v431) = 0;
  v9 = vpx_norm[v5];
  v10 = v5 << v9;
  v11 = v7 << v9;
  v12 = v4 - v9;
  *v3 = v7 << v9;
  *(v3 + 2) = v5 << v9;
  *(v3 + 3) = v4 - v9;
  v429 = v3 + 6;
  v13.i64[0] = 0x800000008;
  v13.i64[1] = 0x800000008;
  v14.i64[0] = 0x7F0000007FLL;
  v14.i64[1] = 0x7F0000007FLL;
  do
  {
    v18 = a2[(v431 >> 1) + 1];
    if ((v12 & 0x80000000) == 0)
    {
      v19 = v12;
      v15 = ((v10 - 1) * v18 + 256) >> 8;
      v20 = v11 - (v15 << 56);
      if (v11 >= v15 << 56)
      {
        goto LABEL_5;
      }

      goto LABEL_38;
    }

    v21 = v3[3];
    v22 = v3[2] - v21;
    v23 = v3[4];
    if (v23)
    {
      if (v22 >= 9)
      {
        v24 = 9;
      }

      else
      {
        v24 = v3[2] - v21;
      }

      v21 = v3 + 6;
      v23(v3[5], v3[3], v429, v24);
      v14.i64[0] = 0x7F0000007FLL;
      v14.i64[1] = 0x7F0000007FLL;
      v13.i64[0] = 0x800000008;
      v13.i64[1] = 0x800000008;
    }

    v25 = 8 * v22;
    v26 = 48 - v12;
    if (8 * v22 >= 0x41)
    {
      v27 = (v26 & 0x7FFFFFF8) + 8;
      v19 = v27 + v12;
      v28 = (v21 + (v27 >> 3));
      v11 = (bswap64(*v21) >> (56 - (v26 & 0xF8u)) << (v26 & 7)) | *v3;
      goto LABEL_37;
    }

    v29 = 56 - v12 - v25;
    if (v29 < 0)
    {
      v19 = v12;
    }

    else
    {
      v19 = v12 + 0x40000000;
    }

    if (v25)
    {
      v30 = 1;
    }

    else
    {
      v30 = v29 <= -1;
    }

    v31 = v29 & ~(v29 >> 31);
    if (!v30 || v26 < v31)
    {
      v28 = v21;
      goto LABEL_37;
    }

    v33 = v31 - 1;
    if (v31 - 1 >= (40 - v12))
    {
      v33 = 40 - v12;
    }

    v34 = 47 - v12 - v33;
    if (v34 < 0x78)
    {
      v28 = v21;
      do
      {
LABEL_36:
        v19 += 8;
        v79 = *v28;
        v28 = (v28 + 1);
        v11 |= v79 << v26;
        v26 -= 8;
      }

      while (v26 >= v31);
      goto LABEL_37;
    }

    v35 = (v34 >> 3) + 1;
    v36 = v11;
    v37 = 0uLL;
    v38 = v19;
    v39 = vdupq_n_s32(v26);
    v40 = vaddq_s32(v39, xmmword_273BC3230);
    v28 = (v21 + (v35 & 0x3FFFFFF0));
    v41 = vaddq_s32(v39, xmmword_273BC3240);
    v26 -= 8 * (v35 & 0x3FFFFFF0);
    v42 = vaddq_s32(v39, xmmword_273BC3250);
    v43 = vaddq_s32(v39, xmmword_273BC3220);
    v44 = v35 & 0x3FFFFFF0;
    v45 = v21;
    v46 = 0uLL;
    v47 = 0uLL;
    v48 = 0uLL;
    v49 = 0uLL;
    v50 = 0uLL;
    v51 = 0uLL;
    v52 = 0uLL;
    v53 = 0uLL;
    v54 = 0uLL;
    do
    {
      v55 = *v45++;
      v56 = vmovl_high_u8(v55);
      v57 = vmovl_high_u16(v56);
      v58.i64[0] = v57.u32[0];
      v58.i64[1] = v57.u32[1];
      v59 = v58;
      v60 = vmovl_u16(*v56.i8);
      v58.i64[0] = v60.u32[2];
      v58.i64[1] = v60.u32[3];
      v61 = v58;
      v62 = vmovl_u8(*v55.i8);
      v63 = vmovl_high_u16(v62);
      v58.i64[0] = v63.u32[2];
      v58.i64[1] = v63.u32[3];
      v64 = v58;
      v58.i64[0] = v57.u32[2];
      v58.i64[1] = v57.u32[3];
      v65 = v58;
      v58.i64[0] = v60.u32[0];
      v58.i64[1] = v60.u32[1];
      v66 = v58;
      v58.i64[0] = v63.u32[0];
      v58.i64[1] = v63.u32[1];
      v67 = v58;
      v68 = vmovl_u16(*v62.i8);
      v58.i64[0] = v68.u32[2];
      v58.i64[1] = v68.u32[3];
      v69 = v58;
      v58.i64[0] = v68.u32[0];
      v58.i64[1] = v68.u32[1];
      v70 = v58;
      v58.i64[0] = v43.u32[0];
      v58.i64[1] = v43.u32[1];
      v71 = vshlq_u64(v70, v58);
      v58.i64[0] = v43.u32[2];
      v58.i64[1] = v43.u32[3];
      v72 = vshlq_u64(v69, v58);
      v58.i64[0] = v42.u32[0];
      v58.i64[1] = v42.u32[1];
      v73 = vshlq_u64(v67, v58);
      v58.i64[0] = v41.u32[0];
      v58.i64[1] = v41.u32[1];
      v74 = vshlq_u64(v66, v58);
      v58.i64[0] = v40.u32[2];
      v58.i64[1] = v40.u32[3];
      v75 = vshlq_u64(v65, v58);
      v58.i64[0] = v42.u32[2];
      v58.i64[1] = v42.u32[3];
      v76 = vshlq_u64(v64, v58);
      v58.i64[0] = v41.u32[2];
      v58.i64[1] = v41.u32[3];
      v77 = vshlq_u64(v61, v58);
      v58.i64[0] = v40.u32[0];
      v58.i64[1] = v40.u32[1];
      v50 = vorrq_s8(vshlq_u64(v59, v58), v50);
      v49 = vorrq_s8(v77, v49);
      v47 = vorrq_s8(v76, v47);
      v51 = vorrq_s8(v75, v51);
      v48 = vorrq_s8(v74, v48);
      v46 = vorrq_s8(v73, v46);
      v37 = vorrq_s8(v72, v37);
      v36 = vorrq_s8(v71, v36);
      v38 = vaddq_s32(v38, v13);
      v52 = vaddq_s32(v52, v13);
      v53 = vaddq_s32(v53, v13);
      v54 = vaddq_s32(v54, v13);
      v43 = vaddq_s32(v43, v14);
      v42 = vaddq_s32(v42, v14);
      v41 = vaddq_s32(v41, v14);
      v40 = vaddq_s32(v40, v14);
      v44 -= 16;
    }

    while (v44);
    v78 = vorrq_s8(vorrq_s8(vorrq_s8(v36, v48), vorrq_s8(v46, v50)), vorrq_s8(vorrq_s8(v37, v49), vorrq_s8(v47, v51)));
    v11 = vorr_s8(*v78.i8, *&vextq_s8(v78, v78, 8uLL));
    v19 = vaddvq_s32(vaddq_s32(vaddq_s32(v38, v53), vaddq_s32(v52, v54)));
    if ((v35 & 0x3FFFFFF0) != v35)
    {
      goto LABEL_36;
    }

LABEL_37:
    v3[3] += v28 - v21;
    v15 = ((v10 - 1) * v18 + 256) >> 8;
    v20 = v11 - (v15 << 56);
    if (v11 >= v15 << 56)
    {
LABEL_5:
      LODWORD(v15) = *(v3 + 2) - v15;
      v16 = 1;
      v11 = v20;
      goto LABEL_6;
    }

LABEL_38:
    v16 = 0;
LABEL_6:
    v17 = vpx_norm[v15];
    v10 = v15 << v17;
    v11 <<= v17;
    v12 = v19 - v17;
    *v3 = v11;
    *(v3 + 2) = v15 << v17;
    *(v3 + 3) = v19 - v17;
    v431 = vp9_mv_class_tree[v16 + v431];
  }

  while (v431 > 0);
  if (v431)
  {
    v80 = 0;
    v430 = 0;
    v81 = a2 + 12;
    if (-v431 != 1 && v431 != 0)
    {
      v82 = -v431;
    }

    else
    {
      v82 = 1;
    }

    v83.i64[0] = 0x800000008;
    v83.i64[1] = 0x800000008;
    v84.i64[0] = 0x7F0000007FLL;
    v84.i64[1] = 0x7F0000007FLL;
    v427 = v3;
    while (1)
    {
      v88 = v81[v80];
      if ((v12 & 0x80000000) == 0)
      {
        v85 = ((v10 - 1) * v88 + 256) >> 8;
        v89 = v11 - (v85 << 56);
        if (v11 < v85 << 56)
        {
          goto LABEL_77;
        }

        goto LABEL_44;
      }

      v90 = v3[3];
      v91 = v3[2] - v90;
      v92 = v3[4];
      if (v92)
      {
        if (v91 >= 9)
        {
          v93 = 9;
        }

        else
        {
          v93 = v3[2] - v90;
        }

        v94 = v3[5];
        v95 = v3[3];
        v90 = v429;
        v96 = v81[v80];
        v92(v94, v95, v429, v93);
        v88 = v96;
        v84.i64[0] = 0x7F0000007FLL;
        v84.i64[1] = 0x7F0000007FLL;
        v83.i64[0] = 0x800000008;
        v83.i64[1] = 0x800000008;
      }

      v97 = 8 * v91;
      v98 = 48 - v12;
      if (8 * v91 >= 0x41)
      {
        v99 = (v98 & 0x7FFFFFF8) + 8;
        v100 = v99 + v12;
        v101 = (v90 + (v99 >> 3));
        v3 = v427;
        v11 = (bswap64(*v90) >> (56 - (v98 & 0xF8u)) << (v98 & 7)) | *v427;
        goto LABEL_76;
      }

      v102 = 56 - v12 - v97;
      if (v102 < 0)
      {
        v100 = v12;
      }

      else
      {
        v100 = v12 + 0x40000000;
      }

      if (v97)
      {
        v103 = 1;
      }

      else
      {
        v103 = v102 <= -1;
      }

      v104 = v102 & ~(v102 >> 31);
      v105 = !v103 || v98 < v104;
      v3 = v427;
      if (v105)
      {
        v101 = v90;
        goto LABEL_76;
      }

      v106 = v104 - 1;
      if (v104 - 1 >= (40 - v12))
      {
        v106 = 40 - v12;
      }

      v107 = 47 - v12 - v106;
      if (v107 < 0x78)
      {
        break;
      }

      v108 = (v107 >> 3) + 1;
      v109 = v11;
      v110 = 0uLL;
      v111 = v100;
      v112 = vdupq_n_s32(v98);
      v113 = vaddq_s32(v112, xmmword_273BC3230);
      v101 = (v90 + (v108 & 0x3FFFFFF0));
      v114 = vaddq_s32(v112, xmmword_273BC3240);
      v98 -= 8 * (v108 & 0x3FFFFFF0);
      v115 = vaddq_s32(v112, xmmword_273BC3250);
      v116 = vaddq_s32(v112, xmmword_273BC3220);
      v117 = v108 & 0x3FFFFFF0;
      v118 = v90;
      v119 = 0uLL;
      v120 = 0uLL;
      v121 = 0uLL;
      v122 = 0uLL;
      v123 = 0uLL;
      v124 = 0uLL;
      v125 = 0uLL;
      v126 = 0uLL;
      v127 = 0uLL;
      do
      {
        v128 = *v118++;
        v129 = vmovl_high_u8(v128);
        v130 = vmovl_high_u16(v129);
        v131.i64[0] = v130.u32[0];
        v131.i64[1] = v130.u32[1];
        v132 = v131;
        v133 = vmovl_u16(*v129.i8);
        v131.i64[0] = v133.u32[2];
        v131.i64[1] = v133.u32[3];
        v134 = v131;
        v135 = vmovl_u8(*v128.i8);
        v136 = vmovl_high_u16(v135);
        v131.i64[0] = v136.u32[2];
        v131.i64[1] = v136.u32[3];
        v137 = v131;
        v131.i64[0] = v130.u32[2];
        v131.i64[1] = v130.u32[3];
        v138 = v131;
        v131.i64[0] = v133.u32[0];
        v131.i64[1] = v133.u32[1];
        v139 = v131;
        v131.i64[0] = v136.u32[0];
        v131.i64[1] = v136.u32[1];
        v140 = v131;
        v141 = vmovl_u16(*v135.i8);
        v131.i64[0] = v141.u32[2];
        v131.i64[1] = v141.u32[3];
        v142 = v131;
        v131.i64[0] = v141.u32[0];
        v131.i64[1] = v141.u32[1];
        v143 = v131;
        v131.i64[0] = v116.u32[0];
        v131.i64[1] = v116.u32[1];
        v144 = vshlq_u64(v143, v131);
        v131.i64[0] = v116.u32[2];
        v131.i64[1] = v116.u32[3];
        v145 = vshlq_u64(v142, v131);
        v131.i64[0] = v115.u32[0];
        v131.i64[1] = v115.u32[1];
        v146 = vshlq_u64(v140, v131);
        v131.i64[0] = v114.u32[0];
        v131.i64[1] = v114.u32[1];
        v147 = vshlq_u64(v139, v131);
        v131.i64[0] = v113.u32[2];
        v131.i64[1] = v113.u32[3];
        v148 = vshlq_u64(v138, v131);
        v131.i64[0] = v115.u32[2];
        v131.i64[1] = v115.u32[3];
        v149 = vshlq_u64(v137, v131);
        v131.i64[0] = v114.u32[2];
        v131.i64[1] = v114.u32[3];
        v150 = vshlq_u64(v134, v131);
        v131.i64[0] = v113.u32[0];
        v131.i64[1] = v113.u32[1];
        v123 = vorrq_s8(vshlq_u64(v132, v131), v123);
        v122 = vorrq_s8(v150, v122);
        v120 = vorrq_s8(v149, v120);
        v124 = vorrq_s8(v148, v124);
        v121 = vorrq_s8(v147, v121);
        v119 = vorrq_s8(v146, v119);
        v110 = vorrq_s8(v145, v110);
        v109 = vorrq_s8(v144, v109);
        v111 = vaddq_s32(v111, v83);
        v125 = vaddq_s32(v125, v83);
        v126 = vaddq_s32(v126, v83);
        v127 = vaddq_s32(v127, v83);
        v116 = vaddq_s32(v116, v84);
        v115 = vaddq_s32(v115, v84);
        v114 = vaddq_s32(v114, v84);
        v113 = vaddq_s32(v113, v84);
        v117 -= 16;
      }

      while (v117);
      v151 = vorrq_s8(vorrq_s8(vorrq_s8(v109, v121), vorrq_s8(v119, v123)), vorrq_s8(vorrq_s8(v110, v122), vorrq_s8(v120, v124)));
      v11 = vorr_s8(*v151.i8, *&vextq_s8(v151, v151, 8uLL));
      v100 = vaddvq_s32(vaddq_s32(vaddq_s32(v111, v126), vaddq_s32(v125, v127)));
      if ((v108 & 0x3FFFFFF0) != v108)
      {
        goto LABEL_75;
      }

LABEL_76:
      v3[3] += v101 - v90;
      v12 = v100;
      v85 = ((v10 - 1) * v88 + 256) >> 8;
      v89 = v11 - (v85 << 56);
      if (v11 < v85 << 56)
      {
LABEL_77:
        v86 = 0;
        goto LABEL_45;
      }

LABEL_44:
      LODWORD(v85) = *(v3 + 2) - v85;
      v86 = 1;
      v11 = v89;
LABEL_45:
      v87 = vpx_norm[v85];
      v10 = v85 << v87;
      v11 <<= v87;
      v12 -= v87;
      *v3 = v11;
      *(v3 + 2) = v85 << v87;
      *(v3 + 3) = v12;
      v430 |= v86 << v80++;
      if (v80 == v82)
      {
        v153 = (8 << -v431) | 1;
        goto LABEL_138;
      }
    }

    v101 = v90;
    do
    {
LABEL_75:
      v100 += 8;
      v152 = *v101;
      v101 = (v101 + 1);
      v11 |= v152 << v98;
      v98 -= 8;
    }

    while (v98 >= v104);
    goto LABEL_76;
  }

  v163 = ((v10 - 1) * a2[11] + 256) >> 8;
  if ((v12 & 0x80000000) != 0)
  {
    v169 = v3[3];
    v170 = v3[2] - v169;
    v171 = 8 * v170;
    v172 = v3[4];
    if (v172)
    {
      if (v170 >= 9)
      {
        v173 = 9;
      }

      else
      {
        v173 = v3[2] - v169;
      }

      v169 = v3 + 6;
      v172(v3[5], v3[3], v429, v173);
    }

    v174 = 48 - v12;
    if (v171 < 0x41)
    {
      v227 = 56 - v171 - v12;
      if (v227 >= 0)
      {
        v12 += 0x40000000;
      }

      if (v171)
      {
        v228 = 1;
      }

      else
      {
        v228 = v227 <= -1;
      }

      v229 = v227 & ~(v227 >> 31);
      if (!v228 || v174 < v229)
      {
        v176 = v169;
      }

      else
      {
        v231 = v17 - v19 + 40;
        if (v231 >= v229 - 1)
        {
          v231 = v229 - 1;
        }

        v232 = v17 - v19 - v231 + 47;
        v176 = v169;
        v233 = v174;
        if (v232 < 0x78)
        {
          goto LABEL_219;
        }

        v234 = (v232 >> 3) + 1;
        v235 = 0uLL;
        v236 = v11;
        v237 = v12;
        v238 = vdupq_n_s32(v174);
        v239 = vaddq_s32(v238, xmmword_273BC3230);
        v176 = (v169 + (v234 & 0x3FFFFFF0));
        v240 = vaddq_s32(v238, xmmword_273BC3240);
        v233 = v174 - 8 * (v234 & 0x3FFFFFF0);
        v241 = vaddq_s32(v238, xmmword_273BC3250);
        v242 = vaddq_s32(v238, xmmword_273BC3220);
        v243.i64[0] = 0x800000008;
        v243.i64[1] = 0x800000008;
        v244.i64[0] = 0x7F0000007FLL;
        v244.i64[1] = 0x7F0000007FLL;
        v245 = v234 & 0x3FFFFFF0;
        v246 = v169;
        v247 = 0uLL;
        v248 = 0uLL;
        v249 = 0uLL;
        v250 = 0uLL;
        v251 = 0uLL;
        v252 = 0uLL;
        v253 = 0uLL;
        v254 = 0uLL;
        v255 = 0uLL;
        do
        {
          v256 = *v246++;
          v257 = vmovl_high_u8(v256);
          v258 = vmovl_high_u16(v257);
          v259.i64[0] = v258.u32[0];
          v259.i64[1] = v258.u32[1];
          v260 = v259;
          v261 = vmovl_u16(*v257.i8);
          v259.i64[0] = v261.u32[2];
          v259.i64[1] = v261.u32[3];
          v262 = v259;
          v263 = vmovl_u8(*v256.i8);
          v264 = vmovl_high_u16(v263);
          v259.i64[0] = v264.u32[2];
          v259.i64[1] = v264.u32[3];
          v265 = v259;
          v259.i64[0] = v258.u32[2];
          v259.i64[1] = v258.u32[3];
          v266 = v259;
          v259.i64[0] = v261.u32[0];
          v259.i64[1] = v261.u32[1];
          v267 = v259;
          v259.i64[0] = v264.u32[0];
          v259.i64[1] = v264.u32[1];
          v268 = v259;
          v269 = vmovl_u16(*v263.i8);
          v259.i64[0] = v269.u32[2];
          v259.i64[1] = v269.u32[3];
          v270 = v259;
          v259.i64[0] = v269.u32[0];
          v259.i64[1] = v269.u32[1];
          v271 = v259;
          v259.i64[0] = v242.u32[0];
          v259.i64[1] = v242.u32[1];
          v272 = vshlq_u64(v271, v259);
          v259.i64[0] = v242.u32[2];
          v259.i64[1] = v242.u32[3];
          v273 = vshlq_u64(v270, v259);
          v259.i64[0] = v241.u32[0];
          v259.i64[1] = v241.u32[1];
          v274 = vshlq_u64(v268, v259);
          v259.i64[0] = v240.u32[0];
          v259.i64[1] = v240.u32[1];
          v275 = vshlq_u64(v267, v259);
          v259.i64[0] = v239.u32[2];
          v259.i64[1] = v239.u32[3];
          v276 = vshlq_u64(v266, v259);
          v259.i64[0] = v241.u32[2];
          v259.i64[1] = v241.u32[3];
          v277 = vshlq_u64(v265, v259);
          v259.i64[0] = v240.u32[2];
          v259.i64[1] = v240.u32[3];
          v278 = vshlq_u64(v262, v259);
          v259.i64[0] = v239.u32[0];
          v259.i64[1] = v239.u32[1];
          v251 = vorrq_s8(vshlq_u64(v260, v259), v251);
          v250 = vorrq_s8(v278, v250);
          v248 = vorrq_s8(v277, v248);
          v252 = vorrq_s8(v276, v252);
          v249 = vorrq_s8(v275, v249);
          v247 = vorrq_s8(v274, v247);
          v235 = vorrq_s8(v273, v235);
          v236 = vorrq_s8(v272, v236);
          v237 = vaddq_s32(v237, v243);
          v253 = vaddq_s32(v253, v243);
          v254 = vaddq_s32(v254, v243);
          v255 = vaddq_s32(v255, v243);
          v242 = vaddq_s32(v242, v244);
          v241 = vaddq_s32(v241, v244);
          v240 = vaddq_s32(v240, v244);
          v239 = vaddq_s32(v239, v244);
          v245 -= 16;
        }

        while (v245);
        v279 = vorrq_s8(vorrq_s8(vorrq_s8(v236, v249), vorrq_s8(v247, v251)), vorrq_s8(vorrq_s8(v235, v250), vorrq_s8(v248, v252)));
        v11 = vorr_s8(*v279.i8, *&vextq_s8(v279, v279, 8uLL));
        v12 = vaddvq_s32(vaddq_s32(vaddq_s32(v237, v254), vaddq_s32(v253, v255)));
        if ((v234 & 0x3FFFFFF0) != v234)
        {
LABEL_219:
          do
          {
            v12 += 8;
            v280 = *v176;
            v176 = (v176 + 1);
            v11 |= v280 << v233;
            v233 -= 8;
          }

          while (v233 >= v229);
        }
      }
    }

    else
    {
      v175 = (v174 & 0x7FFFFFF8) + 8;
      v12 += v175;
      v176 = (v169 + (v175 >> 3));
      v11 = (bswap64(*v169) >> (56 - (v174 & 0xF8u)) << (v174 & 7)) | *v3;
    }

    v3[3] += v176 - v169;
    v164 = v11 - (v163 << 56);
    if (v11 >= v163 << 56)
    {
      goto LABEL_136;
    }

LABEL_88:
    v430 = 0;
  }

  else
  {
    v164 = v11 - (v163 << 56);
    if (v11 < v163 << 56)
    {
      goto LABEL_88;
    }

LABEL_136:
    LODWORD(v163) = *(v3 + 2) - v163;
    v430 = 1;
    v11 = v164;
  }

  v281 = vpx_norm[v163];
  v10 = v163 << v281;
  v11 <<= v281;
  *v3 = v11;
  v12 -= v281;
  *(v3 + 2) = v10;
  *(v3 + 3) = v12;
  v153 = 1;
LABEL_138:
  v428 = v153;
  LOBYTE(v282) = 0;
  if (v431)
  {
    v283 = (a2 + 28);
  }

  else
  {
    v283 = &a2[3 * v430 + 22];
  }

  v284.i64[0] = 0x800000008;
  v284.i64[1] = 0x800000008;
  v285.i64[0] = 0x7F0000007FLL;
  v285.i64[1] = 0x7F0000007FLL;
  while (2)
  {
    v289 = *(v283 + (v282 >> 1));
    if ((v12 & 0x80000000) != 0)
    {
      v292 = v3[3];
      v293 = v3[2] - v292;
      v294 = v3[4];
      if (v294)
      {
        if (v293 >= 9)
        {
          v295 = 9;
        }

        else
        {
          v295 = v3[2] - v292;
        }

        v292 = v429;
        v294(v3[5], v3[3], v429, v295);
        v285.i64[0] = 0x7F0000007FLL;
        v285.i64[1] = 0x7F0000007FLL;
        v284.i64[0] = 0x800000008;
        v284.i64[1] = 0x800000008;
      }

      v296 = 8 * v293;
      v297 = 48 - v12;
      if (8 * v293 >= 0x41)
      {
        v298 = (v297 & 0x7FFFFFF8) + 8;
        v290 = v298 + v12;
        v299 = (v292 + (v298 >> 3));
        v11 = (bswap64(*v292) >> (56 - (v297 & 0xF8u)) << (v297 & 7)) | *v3;
        goto LABEL_174;
      }

      v300 = 56 - v12 - v296;
      if (v300 < 0)
      {
        v290 = v12;
      }

      else
      {
        v290 = v12 + 0x40000000;
      }

      if (v296)
      {
        v301 = 1;
      }

      else
      {
        v301 = v300 <= -1;
      }

      v302 = v300 & ~(v300 >> 31);
      if (!v301 || v297 < v302)
      {
        v299 = v292;
        goto LABEL_174;
      }

      v304 = v302 - 1;
      if (v302 - 1 >= (40 - v12))
      {
        v304 = 40 - v12;
      }

      v305 = 47 - v12 - v304;
      if (v305 >= 0x78)
      {
        v306 = (v305 >> 3) + 1;
        v307 = v11;
        v308 = 0uLL;
        v309 = v290;
        v310 = vdupq_n_s32(v297);
        v311 = vaddq_s32(v310, xmmword_273BC3230);
        v299 = (v292 + (v306 & 0x3FFFFFF0));
        v312 = vaddq_s32(v310, xmmword_273BC3240);
        v297 -= 8 * (v306 & 0x3FFFFFF0);
        v313 = vaddq_s32(v310, xmmword_273BC3250);
        v314 = vaddq_s32(v310, xmmword_273BC3220);
        v315 = v306 & 0x3FFFFFF0;
        v316 = v292;
        v317 = 0uLL;
        v318 = 0uLL;
        v319 = 0uLL;
        v320 = 0uLL;
        v321 = 0uLL;
        v322 = 0uLL;
        v323 = 0uLL;
        v324 = 0uLL;
        v325 = 0uLL;
        do
        {
          v326 = *v316++;
          v327 = vmovl_high_u8(v326);
          v328 = vmovl_high_u16(v327);
          v329.i64[0] = v328.u32[0];
          v329.i64[1] = v328.u32[1];
          v330 = v329;
          v331 = vmovl_u16(*v327.i8);
          v329.i64[0] = v331.u32[2];
          v329.i64[1] = v331.u32[3];
          v332 = v329;
          v333 = vmovl_u8(*v326.i8);
          v334 = vmovl_high_u16(v333);
          v329.i64[0] = v334.u32[2];
          v329.i64[1] = v334.u32[3];
          v335 = v329;
          v329.i64[0] = v328.u32[2];
          v329.i64[1] = v328.u32[3];
          v336 = v329;
          v329.i64[0] = v331.u32[0];
          v329.i64[1] = v331.u32[1];
          v337 = v329;
          v329.i64[0] = v334.u32[0];
          v329.i64[1] = v334.u32[1];
          v338 = v329;
          v339 = vmovl_u16(*v333.i8);
          v329.i64[0] = v339.u32[2];
          v329.i64[1] = v339.u32[3];
          v340 = v329;
          v329.i64[0] = v339.u32[0];
          v329.i64[1] = v339.u32[1];
          v341 = v329;
          v329.i64[0] = v314.u32[0];
          v329.i64[1] = v314.u32[1];
          v342 = vshlq_u64(v341, v329);
          v329.i64[0] = v314.u32[2];
          v329.i64[1] = v314.u32[3];
          v343 = vshlq_u64(v340, v329);
          v329.i64[0] = v313.u32[0];
          v329.i64[1] = v313.u32[1];
          v344 = vshlq_u64(v338, v329);
          v329.i64[0] = v312.u32[0];
          v329.i64[1] = v312.u32[1];
          v345 = vshlq_u64(v337, v329);
          v329.i64[0] = v311.u32[2];
          v329.i64[1] = v311.u32[3];
          v346 = vshlq_u64(v336, v329);
          v329.i64[0] = v313.u32[2];
          v329.i64[1] = v313.u32[3];
          v347 = vshlq_u64(v335, v329);
          v329.i64[0] = v312.u32[2];
          v329.i64[1] = v312.u32[3];
          v348 = vshlq_u64(v332, v329);
          v329.i64[0] = v311.u32[0];
          v329.i64[1] = v311.u32[1];
          v321 = vorrq_s8(vshlq_u64(v330, v329), v321);
          v320 = vorrq_s8(v348, v320);
          v318 = vorrq_s8(v347, v318);
          v322 = vorrq_s8(v346, v322);
          v319 = vorrq_s8(v345, v319);
          v317 = vorrq_s8(v344, v317);
          v308 = vorrq_s8(v343, v308);
          v307 = vorrq_s8(v342, v307);
          v309 = vaddq_s32(v309, v284);
          v323 = vaddq_s32(v323, v284);
          v324 = vaddq_s32(v324, v284);
          v325 = vaddq_s32(v325, v284);
          v314 = vaddq_s32(v314, v285);
          v313 = vaddq_s32(v313, v285);
          v312 = vaddq_s32(v312, v285);
          v311 = vaddq_s32(v311, v285);
          v315 -= 16;
        }

        while (v315);
        v349 = vorrq_s8(vorrq_s8(vorrq_s8(v307, v319), vorrq_s8(v317, v321)), vorrq_s8(vorrq_s8(v308, v320), vorrq_s8(v318, v322)));
        v11 = vorr_s8(*v349.i8, *&vextq_s8(v349, v349, 8uLL));
        v290 = vaddvq_s32(vaddq_s32(vaddq_s32(v309, v324), vaddq_s32(v323, v325)));
        if ((v306 & 0x3FFFFFF0) == v306)
        {
LABEL_174:
          v3[3] += v299 - v292;
          v286 = ((v10 - 1) * v289 + 256) >> 8;
          v291 = v11 - (v286 << 56);
          if (v11 < v286 << 56)
          {
            goto LABEL_175;
          }

          goto LABEL_142;
        }
      }

      else
      {
        v299 = v292;
      }

      do
      {
        v290 += 8;
        v350 = *v299;
        v299 = (v299 + 1);
        v11 |= v350 << v297;
        v297 -= 8;
      }

      while (v297 >= v302);
      goto LABEL_174;
    }

    v290 = v12;
    v286 = ((v10 - 1) * v289 + 256) >> 8;
    v291 = v11 - (v286 << 56);
    if (v11 >= v286 << 56)
    {
LABEL_142:
      LODWORD(v286) = *(v3 + 2) - v286;
      v287 = 1;
      v11 = v291;
      goto LABEL_143;
    }

LABEL_175:
    v287 = 0;
LABEL_143:
    v288 = vpx_norm[v286];
    v10 = v286 << v288;
    v11 <<= v288;
    v12 = v290 - v288;
    *v3 = v11;
    *(v3 + 2) = v286 << v288;
    *(v3 + 3) = v290 - v288;
    v282 = vp9_mv_fp_tree[v287 + v282];
    if (v282 > 0)
    {
      continue;
    }

    break;
  }

  if (a3)
  {
    v351 = 31;
    if (v431)
    {
      v351 = 32;
    }

    v352 = ((v10 - 1) * a2[v351] + 256) >> 8;
    if ((v12 & 0x80000000) == 0)
    {
      v354 = v424;
      v353 = v425;
      v355 = v428;
      v356 = v11 - (v352 << 56);
      if (v11 < v352 << 56)
      {
        goto LABEL_181;
      }

LABEL_203:
      LODWORD(v352) = *(v3 + 2) - v352;
      v357 = 1;
      v11 = v356;
      goto LABEL_204;
    }

    v358 = v3[3];
    v359 = v3[2] - v358;
    v360 = 8 * v359;
    v361 = v3[4];
    if (v361)
    {
      if (v359 >= 9)
      {
        v362 = 9;
      }

      else
      {
        v362 = v3[2] - v358;
      }

      v361(v3[5], v358, v429, v362);
      v363 = 48 - v12;
      if (v360 >= 0x41)
      {
LABEL_188:
        v364 = (v363 & 0x7FFFFFF8) + 8;
        v12 += v364;
        v365 = (v429 + (v364 >> 3));
        v11 = (bswap64(*v429) >> (56 - (v363 & 0xF8u)) << (v363 & 7)) | *v3;
        goto LABEL_201;
      }
    }

    else
    {
      v429 = v3[3];
      v363 = 48 - v12;
      if (v360 >= 0x41)
      {
        goto LABEL_188;
      }
    }

    v366 = 56 - v360 - v12;
    if (v366 >= 0)
    {
      v12 += 0x40000000;
    }

    if (v360)
    {
      v367 = 1;
    }

    else
    {
      v367 = v366 <= -1;
    }

    v368 = v366 & ~(v366 >> 31);
    if (!v367 || v363 < v368)
    {
      v365 = v429;
LABEL_201:
      v354 = v424;
      v353 = v425;
      v355 = v428;
    }

    else
    {
      v373 = v288 - v290 + 40;
      if (v373 >= v368 - 1)
      {
        v373 = v368 - 1;
      }

      v374 = v288 - v290 - v373 + 47;
      v365 = v429;
      v375 = v363;
      v354 = v424;
      v353 = v425;
      v355 = v428;
      if (v374 < 0x78)
      {
        goto LABEL_220;
      }

      v376 = (v374 >> 3) + 1;
      v377 = 0uLL;
      v378 = v11;
      v379 = v12;
      v380 = vdupq_n_s32(v363);
      v381 = vaddq_s32(v380, xmmword_273BC3230);
      v382 = v429;
      v365 = (v429 + (v376 & 0x3FFFFFF0));
      v383 = vaddq_s32(v380, xmmword_273BC3240);
      v375 = v363 - 8 * (v376 & 0x3FFFFFF0);
      v384 = vaddq_s32(v380, xmmword_273BC3250);
      v385 = vaddq_s32(v380, xmmword_273BC3220);
      v386.i64[0] = 0x800000008;
      v386.i64[1] = 0x800000008;
      v387.i64[0] = 0x7F0000007FLL;
      v387.i64[1] = 0x7F0000007FLL;
      v388 = v376 & 0x3FFFFFF0;
      v389 = 0uLL;
      v390 = 0uLL;
      v391 = 0uLL;
      v392 = 0uLL;
      v393 = 0uLL;
      v394 = 0uLL;
      v395 = 0uLL;
      v396 = 0uLL;
      v397 = 0uLL;
      do
      {
        v398 = *v382++;
        v399 = vmovl_high_u8(v398);
        v400 = vmovl_high_u16(v399);
        v401.i64[0] = v400.u32[0];
        v401.i64[1] = v400.u32[1];
        v402 = v401;
        v403 = vmovl_u16(*v399.i8);
        v401.i64[0] = v403.u32[2];
        v401.i64[1] = v403.u32[3];
        v404 = v401;
        v405 = vmovl_u8(*v398.i8);
        v406 = vmovl_high_u16(v405);
        v401.i64[0] = v406.u32[2];
        v401.i64[1] = v406.u32[3];
        v407 = v401;
        v401.i64[0] = v400.u32[2];
        v401.i64[1] = v400.u32[3];
        v408 = v401;
        v401.i64[0] = v403.u32[0];
        v401.i64[1] = v403.u32[1];
        v409 = v401;
        v401.i64[0] = v406.u32[0];
        v401.i64[1] = v406.u32[1];
        v410 = v401;
        v411 = vmovl_u16(*v405.i8);
        v401.i64[0] = v411.u32[2];
        v401.i64[1] = v411.u32[3];
        v412 = v401;
        v401.i64[0] = v411.u32[0];
        v401.i64[1] = v411.u32[1];
        v413 = v401;
        v401.i64[0] = v385.u32[0];
        v401.i64[1] = v385.u32[1];
        v414 = vshlq_u64(v413, v401);
        v401.i64[0] = v385.u32[2];
        v401.i64[1] = v385.u32[3];
        v415 = vshlq_u64(v412, v401);
        v401.i64[0] = v384.u32[0];
        v401.i64[1] = v384.u32[1];
        v416 = vshlq_u64(v410, v401);
        v401.i64[0] = v383.u32[0];
        v401.i64[1] = v383.u32[1];
        v417 = vshlq_u64(v409, v401);
        v401.i64[0] = v381.u32[2];
        v401.i64[1] = v381.u32[3];
        v418 = vshlq_u64(v408, v401);
        v401.i64[0] = v384.u32[2];
        v401.i64[1] = v384.u32[3];
        v419 = vshlq_u64(v407, v401);
        v401.i64[0] = v383.u32[2];
        v401.i64[1] = v383.u32[3];
        v420 = vshlq_u64(v404, v401);
        v401.i64[0] = v381.u32[0];
        v401.i64[1] = v381.u32[1];
        v393 = vorrq_s8(vshlq_u64(v402, v401), v393);
        v392 = vorrq_s8(v420, v392);
        v390 = vorrq_s8(v419, v390);
        v394 = vorrq_s8(v418, v394);
        v391 = vorrq_s8(v417, v391);
        v389 = vorrq_s8(v416, v389);
        v377 = vorrq_s8(v415, v377);
        v378 = vorrq_s8(v414, v378);
        v379 = vaddq_s32(v379, v386);
        v395 = vaddq_s32(v395, v386);
        v396 = vaddq_s32(v396, v386);
        v397 = vaddq_s32(v397, v386);
        v385 = vaddq_s32(v385, v387);
        v384 = vaddq_s32(v384, v387);
        v383 = vaddq_s32(v383, v387);
        v381 = vaddq_s32(v381, v387);
        v388 -= 16;
      }

      while (v388);
      v421 = vorrq_s8(vorrq_s8(vorrq_s8(v378, v391), vorrq_s8(v389, v393)), vorrq_s8(vorrq_s8(v377, v392), vorrq_s8(v390, v394)));
      v11 = vorr_s8(*v421.i8, *&vextq_s8(v421, v421, 8uLL));
      v12 = vaddvq_s32(vaddq_s32(vaddq_s32(v379, v396), vaddq_s32(v395, v397)));
      if ((v376 & 0x3FFFFFF0) != v376)
      {
LABEL_220:
        do
        {
          v12 += 8;
          v422 = *v365;
          v365 = (v365 + 1);
          v11 |= v422 << v375;
          v375 -= 8;
        }

        while (v375 >= v368);
      }
    }

    v3[3] += v365 - v429;
    v356 = v11 - (v352 << 56);
    if (v11 >= v352 << 56)
    {
      goto LABEL_203;
    }

LABEL_181:
    v357 = 0;
LABEL_204:
    v370 = vpx_norm[v352];
    *v3 = v11 << v370;
    *(v3 + 2) = v352 << v370;
    *(v3 + 3) = v12 - v370;
  }

  else
  {
    v357 = 1;
    v354 = v424;
    v353 = v425;
    v355 = v428;
  }

  v371 = ((-2 * v282) | (8 * v430)) + v355 + v357;
  if (v353 < v354)
  {
    return v371;
  }

  else
  {
    return -v371;
  }
}

void vp9_dec_alloc_row_mt_mem(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  LODWORD(v5) = a5;
  v10 = a3 << 12;
  *(a1 + 252) = a5;
  v12 = (a5 << 6) | 0x17;
  if (v12 <= 0x10000000000 && (v13 = malloc_type_malloc(v12, 0xD93B561uLL)) != 0)
  {
    v14 = (a1 + 320);
    v15 = (v13 + 23) & 0xFFFFFFFFFFFFFFF0;
    *(v15 - 8) = v13;
    *(a1 + 320) = v15;
    if (v15)
    {
      if (v5 < 1)
      {
        goto LABEL_11;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v14 = (a1 + 320);
    *(a1 + 320) = 0;
  }

  vpx_internal_error(a2, 2, "Failed to allocate row_mt_worker_data->recon_sync_mutex");
  if (v5 >= 1 && *v14)
  {
LABEL_9:
    v16 = 0;
    v17 = v5;
    do
    {
      pthread_mutex_init((*v14 + v16), 0);
      v16 += 64;
      --v17;
    }

    while (v17);
  }

LABEL_11:
  v18 = 4 * v10;
  v19 = 48 * a5 + 23;
  if (v19 <= 0x10000000000 && (v20 = malloc_type_malloc(v19, 0xD93B561uLL)) != 0)
  {
    v21 = (a1 + 328);
    v22 = (v20 + 23) & 0xFFFFFFFFFFFFFFF0;
    *(v22 - 8) = v20;
    *(a1 + 328) = v22;
    if (v22)
    {
      if (v5 < 1)
      {
        goto LABEL_21;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v21 = (a1 + 328);
    *(a1 + 328) = 0;
  }

  vpx_internal_error(a2, 2, "Failed to allocate row_mt_worker_data->recon_sync_cond");
  if (v5 >= 1 && *v21)
  {
LABEL_19:
    v23 = 0;
    v5 = v5;
    do
    {
      pthread_cond_init((*v21 + v23), 0);
      v23 += 48;
      --v5;
    }

    while (v5);
  }

LABEL_21:
  *a1 = a3;
  v24 = a3 << 8;
  v25 = v18 | 0x27;
  if ((v18 | 0x27) <= 0x10000000000 && (v26 = malloc_type_malloc(v18 | 0x27, 0xD93B561uLL)) != 0)
  {
    v27 = v26;
    v28 = ((v26 + 39) & 0xFFFFFFFFFFFFFFE0);
    *(v28 - 1) = v27;
    *(a1 + 40) = v28;
    if (v28)
    {
      bzero(v28, v18);
      v29 = 4 * v24;
      if ((v24 & 0x80000000) != 0)
      {
        goto LABEL_33;
      }

      goto LABEL_28;
    }
  }

  else
  {
    *(a1 + 40) = 0;
  }

  vpx_internal_error(a2, 2, "Failed to allocate row_mt_worker_data->dqcoeff[plane]");
  bzero(*(a1 + 40), v18);
  v29 = 4 * v24;
  if ((v24 & 0x80000000) != 0)
  {
    goto LABEL_33;
  }

LABEL_28:
  if ((v29 | 0x17) <= 0x10000000000)
  {
    v30 = malloc_type_malloc(v29 | 0x17, 0xD93B561uLL);
    if (v30)
    {
      v31 = (v30 + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v31 - 8) = v30;
      if (v31)
      {
        bzero(((v30 + 23) & 0xFFFFFFFFFFFFFFF0), v29);
        *(a1 + 8) = v31;
        if (v25 > 0x10000000000)
        {
          goto LABEL_38;
        }

        goto LABEL_34;
      }
    }
  }

LABEL_33:
  *(a1 + 8) = 0;
  vpx_internal_error(a2, 2, "Failed to allocate row_mt_worker_data->eob[plane]");
  if (v25 > 0x10000000000)
  {
LABEL_38:
    *(a1 + 48) = 0;
    v35 = (a1 + 48);
    goto LABEL_39;
  }

LABEL_34:
  v32 = malloc_type_malloc(v18 | 0x27, 0xD93B561uLL);
  if (!v32)
  {
    goto LABEL_38;
  }

  v33 = v32;
  v34 = ((v32 + 39) & 0xFFFFFFFFFFFFFFE0);
  *(v34 - 1) = v33;
  *(a1 + 48) = v34;
  v35 = (a1 + 48);
  if (v34)
  {
    bzero(v34, v18);
    if ((v24 & 0x80000000) != 0)
    {
      goto LABEL_45;
    }

    goto LABEL_40;
  }

LABEL_39:
  vpx_internal_error(a2, 2, "Failed to allocate row_mt_worker_data->dqcoeff[plane]");
  bzero(*v35, v18);
  if ((v24 & 0x80000000) != 0)
  {
    goto LABEL_45;
  }

LABEL_40:
  if ((v29 | 0x17) <= 0x10000000000)
  {
    v36 = malloc_type_malloc(v29 | 0x17, 0xD93B561uLL);
    if (v36)
    {
      v37 = (v36 + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v37 - 8) = v36;
      if (v37)
      {
        bzero(((v36 + 23) & 0xFFFFFFFFFFFFFFF0), v29);
        *(a1 + 16) = v37;
        if (v25 > 0x10000000000)
        {
          goto LABEL_50;
        }

        goto LABEL_46;
      }
    }
  }

LABEL_45:
  *(a1 + 16) = 0;
  vpx_internal_error(a2, 2, "Failed to allocate row_mt_worker_data->eob[plane]");
  if (v25 > 0x10000000000)
  {
LABEL_50:
    *(a1 + 56) = 0;
    v41 = (a1 + 56);
LABEL_51:
    vpx_internal_error(a2, 2, "Failed to allocate row_mt_worker_data->dqcoeff[plane]");
    bzero(*v41, v18);
    if ((v24 & 0x80000000) != 0)
    {
      goto LABEL_57;
    }

    goto LABEL_52;
  }

LABEL_46:
  v38 = malloc_type_malloc(v18 | 0x27, 0xD93B561uLL);
  if (!v38)
  {
    goto LABEL_50;
  }

  v39 = v38;
  v40 = ((v38 + 39) & 0xFFFFFFFFFFFFFFE0);
  *(v40 - 1) = v39;
  *(a1 + 56) = v40;
  v41 = (a1 + 56);
  if (!v40)
  {
    goto LABEL_51;
  }

  bzero(v40, v18);
  if ((v24 & 0x80000000) != 0)
  {
    goto LABEL_57;
  }

LABEL_52:
  if ((v29 | 0x17) > 0x10000000000 || (v42 = malloc_type_malloc(v29 | 0x17, 0xD93B561uLL)) == 0 || (v43 = (v42 + 23) & 0xFFFFFFFFFFFFFFF0, *(v43 - 8) = v42, !v43))
  {
LABEL_57:
    *(a1 + 24) = 0;
    vpx_internal_error(a2, 2, "Failed to allocate row_mt_worker_data->eob[plane]");
    if (a3 < 0)
    {
      goto LABEL_62;
    }

    goto LABEL_58;
  }

  bzero(((v42 + 23) & 0xFFFFFFFFFFFFFFF0), v29);
  *(a1 + 24) = v43;
  if (a3 < 0)
  {
    goto LABEL_62;
  }

LABEL_58:
  v44 = malloc_type_malloc(4 * (85 * a3) + 23, 0xD93B561uLL);
  if (!v44 || (v45 = (v44 + 23) & 0xFFFFFFFFFFFFFFF0, *(v45 - 8) = v44, !v45))
  {
LABEL_62:
    *(a1 + 32) = 0;
    vpx_internal_error(a2, 2, "Failed to allocate row_mt_worker_data->partition");
    v46 = a3;
    if (!a3)
    {
      goto LABEL_61;
    }

LABEL_63:
    if (a3 < 0)
    {
      goto LABEL_69;
    }

    v47 = v46 + 23;
    if (v46 + 23 > 0x10000000000)
    {
      goto LABEL_69;
    }

    goto LABEL_65;
  }

  bzero(((v44 + 23) & 0xFFFFFFFFFFFFFFF0), 4 * (85 * a3));
  *(a1 + 32) = v45;
  v46 = a3;
  if (a3)
  {
    goto LABEL_63;
  }

LABEL_61:
  v47 = 23;
LABEL_65:
  v48 = malloc_type_malloc(v47, 0xD93B561uLL);
  if (v48)
  {
    v49 = (v48 + 23) & 0xFFFFFFFFFFFFFFF0;
    *(v49 - 8) = v48;
    if (v49)
    {
      bzero(((v48 + 23) & 0xFFFFFFFFFFFFFFF0), v46);
      *(a1 + 64) = v49;
      if (*(a1 + 336))
      {
        return;
      }

      goto LABEL_71;
    }
  }

LABEL_69:
  *(a1 + 64) = 0;
  vpx_internal_error(a2, 2, "Failed to allocate row_mt_worker_data->recon_map");
  if (*(a1 + 336))
  {
    return;
  }

LABEL_71:
  v50 = 24 * a4 + 39;
  if (v50 <= 0x10000000000 && (v51 = malloc_type_malloc(v50, 0xD93B561uLL)) != 0)
  {
    v52 = (v51 + 39) & 0xFFFFFFFFFFFFFFE0;
    *(v52 - 8) = v51;
    *(a1 + 336) = v52;
    if (v52)
    {
      return;
    }
  }

  else
  {
    *(a1 + 336) = 0;
  }

  vpx_internal_error(a2, 2, "Failed to allocate row_mt_worker_data->thread_data");
}

void vp9_dec_free_row_mt_mem(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 320);
    if (v2)
    {
      if (*(a1 + 252) < 1)
      {
        goto LABEL_7;
      }

      v3 = 0;
      v4 = 0;
      do
      {
        pthread_mutex_destroy((*(a1 + 320) + v3));
        ++v4;
        v3 += 64;
      }

      while (v4 < *(a1 + 252));
      v2 = *(a1 + 320);
      if (v2)
      {
LABEL_7:
        free(*(v2 - 8));
      }

      *(a1 + 320) = 0;
    }

    v5 = *(a1 + 328);
    if (v5)
    {
      if (*(a1 + 252) < 1)
      {
        goto LABEL_14;
      }

      v6 = 0;
      v7 = 0;
      do
      {
        pthread_cond_destroy((*(a1 + 328) + v6));
        ++v7;
        v6 += 48;
      }

      while (v7 < *(a1 + 252));
      v5 = *(a1 + 328);
      if (v5)
      {
LABEL_14:
        free(*(v5 - 8));
      }

      *(a1 + 328) = 0;
    }

    v8 = *(a1 + 8);
    if (v8)
    {
      free(*(v8 - 8));
    }

    *(a1 + 8) = 0;
    v9 = *(a1 + 40);
    if (v9)
    {
      free(*(v9 - 8));
    }

    *(a1 + 40) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      free(*(v10 - 8));
    }

    *(a1 + 16) = 0;
    v11 = *(a1 + 48);
    if (v11)
    {
      free(*(v11 - 8));
    }

    *(a1 + 48) = 0;
    v12 = *(a1 + 24);
    if (v12)
    {
      free(*(v12 - 8));
    }

    *(a1 + 24) = 0;
    v13 = *(a1 + 56);
    if (v13)
    {
      free(*(v13 - 8));
    }

    *(a1 + 56) = 0;
    v14 = *(a1 + 32);
    if (v14)
    {
      free(*(v14 - 8));
    }

    *(a1 + 32) = 0;
    v15 = *(a1 + 64);
    if (v15)
    {
      free(*(v15 - 8));
    }

    *(a1 + 64) = 0;
    v16 = *(a1 + 336);
    if (v16)
    {
      free(*(v16 - 8));
    }

    *(a1 + 336) = 0;
  }
}

char *vp9_decoder_create(uint64_t a1)
{
  v2 = malloc_type_malloc(0x5117uLL, 0xD93B561uLL);
  if (v2)
  {
    *(((v2 + 39) & 0xFFFFFFFFFFFFFFE0) - 8) = v2;
    v33 = ((v2 + 39) & 0xFFFFFFFFFFFFFFE0);
    v3 = v33;
    if (v33)
    {
      v3 = v33 + 164;
    }
  }

  else
  {
    v33 = 0;
    v3 = 0;
  }

  v32 = v3;
  if (!v3)
  {
    return 0;
  }

  bzero(v33, 0x50F0uLL);
  if (setjmp(v32 + 23))
  {
    v32[22] = 0;
    vp9_decoder_remove(v33);
    return 0;
  }

  v32[22] = 1;
  v5 = malloc_type_malloc(0x813uLL, 0xD93B561uLL);
  if (v5 && (v6 = v5, v7 = ((v5 + 23) & 0xFFFFFFFFFFFFFFF0), *(v7 - 1) = v6, v7))
  {
    v8 = v7;
    bzero(v7, 0x7FCuLL);
    *(v32 + 613) = v8;
    if (!*(v32 + 613))
    {
      goto LABEL_14;
    }
  }

  else
  {
    *(v32 + 613) = 0;
    if (!*(v32 + 613))
    {
LABEL_14:
      vpx_internal_error(v32, 2, "Failed to allocate cm->fc", v32);
    }
  }

  v9 = malloc_type_malloc(0x2007uLL, 0xD93B561uLL);
  if (v9 && (v10 = v9, v11 = ((v9 + 23) & 0xFFFFFFFFFFFFFFF0), *(v11 - 1) = v10, v11))
  {
    v12 = v11;
    bzero(v11, 0x1FF0uLL);
    *(v32 + 614) = v12;
    if (!*(v32 + 614))
    {
      goto LABEL_20;
    }
  }

  else
  {
    *(v32 + 614) = 0;
    if (!*(v32 + 614))
    {
LABEL_20:
      vpx_internal_error(v32, 2, "Failed to allocate cm->frame_contexts", v32);
    }
  }

  v33[5172] = 1;
  pthread_once(&once_lock_3, initialize_dec_0);
  *&v13 = -1;
  *(&v13 + 1) = -1;
  *(v32 + 22) = v13;
  *(v32 + 23) = v13;
  *(v32 + 24) = v13;
  *(v32 + 25) = v13;
  *(v32 + 4537) = 0;
  v33[4736] = 1;
  *(v33 + 2363) = a1;
  v32[4540] = 8;
  v32[4541] = 8;
  *(v32 + 181) = vp9_dec_alloc_mi;
  *(v32 + 182) = vp9_dec_free_mi;
  *(v32 + 183) = vp9_dec_setup_mi;
  v14 = v32[1184];
  v15 = v14 > 4;
  if (v14 <= 0)
  {
    v25 = (v32 + 396);
    v26 = 4;
    v27 = 0;
    do
    {
      v28 = v27 + 1;
      v29 = v27 >> v15;
      if (v29 <= 1)
      {
        LOBYTE(v29) = 1;
      }

      v30 = 0x101010101010101 * v29;
      *v25 = v30;
      v25[1] = v30;
      v31 = 0x101010101010101 * (v29 + v26);
      *(v25 - 2) = v31;
      *(v25 - 1) = v31;
      v27 = v28;
      v25 += 6;
      v26 += 2;
    }

    while (v28 != 64);
  }

  else
  {
    v16 = v15 + 1;
    v17 = 9 - v14;
    v18 = (v32 + 396);
    v19 = 4;
    v20 = 0;
    do
    {
      v21 = v20 + 1;
      v22 = v20 >> v16;
      if (v22 >= v17)
      {
        v22 = v17;
      }

      if (v22 <= 1)
      {
        LOBYTE(v22) = 1;
      }

      v23 = 0x101010101010101 * v22;
      *v18 = v23;
      v18[1] = v23;
      v24 = 0x101010101010101 * (v22 + v19);
      *(v18 - 2) = v24;
      *(v18 - 1) = v24;
      v20 = v21;
      v18 += 6;
      v19 += 2;
    }

    while (v21 != 64);
  }

  v32[1185] = v32[1184];
  *(v32 + 100) = 0u;
  *(v32 + 103) = 0u;
  *(v32 + 106) = 0u;
  *(v32 + 109) = 0u;
  *(v32 + 112) = 0u;
  *(v32 + 115) = 0u;
  *(v32 + 118) = 0u;
  *(v32 + 121) = 0u;
  *(v32 + 124) = 0u;
  *(v32 + 127) = 0u;
  *(v32 + 130) = 0u;
  *(v32 + 133) = 0u;
  *(v32 + 136) = 0u;
  *(v32 + 139) = 0u;
  *(v32 + 142) = 0u;
  *(v32 + 145) = 0u;
  *(v32 + 297) = 0x101010101010101;
  *(v32 + 296) = 0x101010101010101;
  *(v32 + 303) = 0x101010101010101;
  *(v32 + 302) = 0x101010101010101;
  *(v32 + 309) = 0x101010101010101;
  *(v32 + 308) = 0x101010101010101;
  *(v32 + 315) = 0x101010101010101;
  *(v32 + 314) = 0x101010101010101;
  *(v32 + 321) = 0x101010101010101;
  *(v32 + 320) = 0x101010101010101;
  *(v32 + 327) = 0x101010101010101;
  *(v32 + 326) = 0x101010101010101;
  *(v32 + 333) = 0x101010101010101;
  *(v32 + 332) = 0x101010101010101;
  *(v32 + 339) = 0x101010101010101;
  *(v32 + 338) = 0x101010101010101;
  *(v32 + 345) = 0x101010101010101;
  *(v32 + 344) = 0x101010101010101;
  *(v32 + 351) = 0x101010101010101;
  *(v32 + 350) = 0x101010101010101;
  *(v32 + 357) = 0x101010101010101;
  *(v32 + 356) = 0x101010101010101;
  *(v32 + 363) = 0x101010101010101;
  *(v32 + 362) = 0x101010101010101;
  *(v32 + 369) = 0x101010101010101;
  *(v32 + 368) = 0x101010101010101;
  *(v32 + 375) = 0x101010101010101;
  *(v32 + 374) = 0x101010101010101;
  *(v32 + 381) = 0x101010101010101;
  *(v32 + 380) = 0x101010101010101;
  *(v32 + 387) = 0x101010101010101;
  *(v32 + 386) = 0x101010101010101;
  *(v32 + 393) = 0x202020202020202;
  *(v32 + 392) = 0x202020202020202;
  *(v32 + 399) = 0x202020202020202;
  *(v32 + 398) = 0x202020202020202;
  *(v32 + 405) = 0x202020202020202;
  *(v32 + 404) = 0x202020202020202;
  *(v32 + 411) = 0x202020202020202;
  *(v32 + 410) = 0x202020202020202;
  *(v32 + 417) = 0x202020202020202;
  *(v32 + 416) = 0x202020202020202;
  *(v32 + 423) = 0x202020202020202;
  *(v32 + 422) = 0x202020202020202;
  *(v32 + 429) = 0x202020202020202;
  *(v32 + 428) = 0x202020202020202;
  *(v32 + 435) = 0x202020202020202;
  *(v32 + 434) = 0x202020202020202;
  *(v32 + 441) = 0x202020202020202;
  *(v32 + 440) = 0x202020202020202;
  *(v32 + 447) = 0x202020202020202;
  *(v32 + 446) = 0x202020202020202;
  *(v32 + 453) = 0x202020202020202;
  *(v32 + 452) = 0x202020202020202;
  *(v32 + 459) = 0x202020202020202;
  *(v32 + 458) = 0x202020202020202;
  *(v32 + 465) = 0x202020202020202;
  *(v32 + 464) = 0x202020202020202;
  *(v32 + 471) = 0x202020202020202;
  *(v32 + 470) = 0x202020202020202;
  *(v32 + 477) = 0x202020202020202;
  *(v32 + 476) = 0x202020202020202;
  *(v32 + 483) = 0x202020202020202;
  *(v32 + 482) = 0x202020202020202;
  *(v32 + 489) = 0x303030303030303;
  *(v32 + 488) = 0x303030303030303;
  *(v32 + 495) = 0x303030303030303;
  *(v32 + 494) = 0x303030303030303;
  *(v32 + 501) = 0x303030303030303;
  *(v32 + 500) = 0x303030303030303;
  *(v32 + 507) = 0x303030303030303;
  *(v32 + 506) = 0x303030303030303;
  *(v32 + 513) = 0x303030303030303;
  *(v32 + 512) = 0x303030303030303;
  *(v32 + 519) = 0x303030303030303;
  *(v32 + 518) = 0x303030303030303;
  *(v32 + 525) = 0x303030303030303;
  *(v32 + 524) = 0x303030303030303;
  *(v32 + 531) = 0x303030303030303;
  *(v32 + 530) = 0x303030303030303;
  *(v32 + 537) = 0x303030303030303;
  *(v32 + 536) = 0x303030303030303;
  *(v32 + 543) = 0x303030303030303;
  *(v32 + 542) = 0x303030303030303;
  *(v32 + 549) = 0x303030303030303;
  *(v32 + 548) = 0x303030303030303;
  *(v32 + 555) = 0x303030303030303;
  *(v32 + 554) = 0x303030303030303;
  *(v32 + 561) = 0x303030303030303;
  *(v32 + 560) = 0x303030303030303;
  *(v32 + 567) = 0x303030303030303;
  *(v32 + 566) = 0x303030303030303;
  *(v32 + 573) = 0x303030303030303;
  *(v32 + 572) = 0x303030303030303;
  *(v32 + 579) = 0x303030303030303;
  *(v32 + 578) = 0x303030303030303;
  v32[22] = 0;
  (g_worker_interface[0])((v33 + 4740));
  *(v33 + 2372) = "vpx lf worker";
  return v33;
}

void vp9_decoder_remove(uint64_t a1)
{
  if (a1)
  {
    v2 = a1 + 20480;
    (off_28100B648[0])(off_28100B648[0], (a1 + 18960));
    v3 = *(a1 + 18992);
    if (v3)
    {
      free(*(v3 - 8));
    }

    if (*(v2 + 88) >= 1)
    {
      v4 = 0;
      v5 = 0;
      do
      {
        (off_28100B648[0])(*(a1 + 19016), (*(a1 + 19016) + v4));
        ++v5;
        v4 += 56;
      }

      while (v5 < *(v2 + 88));
    }

    v6 = *(a1 + 19024);
    if (v6)
    {
      free(*(v6 - 8));
    }

    v7 = *(a1 + 19016);
    if (v7)
    {
      free(*(v7 - 8));
    }

    if (*(v2 + 88) >= 1)
    {
      vp9_loop_filter_dealloc((a1 + 20576));
    }

    if (*(v2 + 216) == 1)
    {
      vp9_dec_free_row_mt_mem(*(a1 + 20704));
      v8 = *(a1 + 20704);
      if (v8)
      {
        pthread_mutex_lock((v8 + 128));
        v9 = *(v8 + 88);
        *(v8 + 96) = v9;
        *(v8 + 104) = v9;
        *(v8 + 120) = 0;
        pthread_mutex_unlock((v8 + 128));
        pthread_mutex_destroy((v8 + 128));
        pthread_cond_destroy((v8 + 192));
        v10 = *(a1 + 20704);
        v11 = *(v10 + 80);
        if (v11)
        {
          free(*(v11 - 8));
          v10 = *(a1 + 20704);
        }

        pthread_mutex_destroy((v10 + 256));
        v12 = *(a1 + 20704);
        if (v12)
        {
          free(*(v12 - 8));
        }
      }
    }

    vp9_remove_common(a1 + 656);
    v13 = *(a1 - 8);

    free(v13);
  }
}

uint64_t initialize_dec_0()
{
  if (!initialize_dec_init_done_0)
  {
    vp9_rtcd();
    vpx_dsp_rtcd();
    vpx_scale_rtcd();
    result = vp9_init_intra_predictors();
    initialize_dec_init_done_0 = 1;
  }

  return result;
}

BOOL vp9_dec_alloc_mi(uint64_t a1, int a2)
{
  if ((a2 & 0x80000000) == 0 && (v4 = a2, v5 = 68 * a2, (v6 = malloc_type_malloc(v5 + 23, 0xD93B561uLL)) != 0) && (v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF0, *(v7 - 8) = v6, v7))
  {
    bzero(((v6 + 23) & 0xFFFFFFFFFFFFFFF0), v5);
    *(a1 + 1416) = v7;
    *(a1 + 1412) = a2;
    v8 = malloc_type_malloc(8 * v4 + 23, 0xD93B561uLL);
    if (v8)
    {
      v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v9 - 8) = v8;
      if (v9)
      {
        bzero(((v8 + 23) & 0xFFFFFFFFFFFFFFF0), 8 * v4);
      }
    }

    else
    {
      v9 = 0;
    }

    *(a1 + 1472) = v9;
    return v9 == 0;
  }

  else
  {
    *(a1 + 1416) = 0;
    return 1;
  }
}

void vp9_dec_free_mi(uint64_t a1)
{
  v2 = *(a1 + 18184);
  if (v2)
  {
    free(*(v2 - 8));
  }

  *(a1 + 18184) = 0;
  v3 = *(a1 + 1416);
  if (v3)
  {
    free(*(v3 - 8));
  }

  *(a1 + 1416) = 0;
  v4 = *(a1 + 1472);
  if (v4)
  {
    free(*(v4 - 8));
  }

  *(a1 + 1472) = 0;
  *(a1 + 1412) = 0;
}

void vp9_dec_setup_mi(uint64_t a1)
{
  v1 = *(a1 + 1324);
  *(a1 + 1424) = *(a1 + 1416) + 68 * v1 + 68;
  v2 = *(a1 + 1472);
  *(a1 + 1480) = &v2[8 * v1 + 8];
  bzero(v2, 8 * (v1 + v1 * *(a1 + 1312)));
}

uint64_t vp9_copy_reference_dec(uint64_t a1, int a2, _DWORD *a3)
{
  v3 = (a1 + 656);
  if (a2 != 1)
  {
    vpx_internal_error(a1 + 656, 1, "Invalid reference frame");
    return *v3;
  }

  v4 = *(a1 + 1008);
  if ((v4 & 0x80000000) == 0)
  {
    v5 = (*(a1 + 18904) + 224 * v4);
    if (v5[23] == a3[1] && v5[22] == *a3 && v5[28] == a3[6] && v5[27] == a3[5])
    {
      vpx_yv12_copy_frame_c(v5 + 22, a3);
      return *v3;
    }

    vpx_internal_error(a1 + 656, 1, "Incorrect buffer dimensions");
    return *v3;
  }

  vpx_internal_error(a1 + 656, 1, "No 'last' reference frame");
  return 1;
}

uint64_t vp9_set_reference_dec(jmp_buf a1, int a2, int *a3)
{
  switch(a2)
  {
    case 1:
      v4 = a1[88];
      if (v4 >= 0xC)
      {
        goto LABEL_7;
      }

      break;
    case 4:
      v4 = a1[90];
      if (v4 >= 0xC)
      {
        goto LABEL_7;
      }

      break;
    case 2:
      v4 = a1[89];
      if (v4 < 0xC)
      {
        break;
      }

LABEL_7:
      vpx_internal_error(a1, 1, "Invalid reference frame map");
      return *a1;
    default:
      vpx_internal_error(a1, 1, "Invalid reference frame");
      return *a1;
  }

  v5 = *(a1 + 2281) + 224 * v4;
  if (*(v5 + 88) == *a3 && *(v5 + 112) == a3[6] && *(v5 + 108) == a3[5])
  {
    vpx_yv12_copy_frame_c(a3, v5 + 88);
    return *a1;
  }

  vpx_internal_error(a1, 1, "Incorrect buffer dimensions");
  return *a1;
}

uint64_t vp9_receive_compressed_data(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = (a1 + 18944);
  v45 = (a1 + 656);
  v44 = *(a1 + 18904);
  v43 = v44 + 3;
  v6 = *a3;
  *(a1 + 656) = 0;
  if (!a2 && *(a1 + 1072) >= 1)
  {
    *(*(a1 + 1080) + 148) = 1;
  }

  *v5 = 0;
  if ((*(a1 + 1600) & 0x80000000) != 0 || LODWORD(v43[28 * *(a1 + 1600)]) || LOBYTE(v43[28 * *(a1 + 1600) + 3]))
  {
    v7 = *(a1 + 18904);
    v8 = v7 + 6;
    if (v7[6])
    {
      goto LABEL_8;
    }

LABEL_24:
    v10 = 0;
    goto LABEL_25;
  }

  (v44[2])(*v44, &v43[28 * *(a1 + 1600) + 5]);
  LOBYTE(v43[28 * v45[236] + 3]) = 1;
  v7 = *(v45 + 2281);
  v8 = v7 + 6;
  if (!v7[6])
  {
    goto LABEL_24;
  }

LABEL_8:
  if (v7[62])
  {
    if (v7[118])
    {
      if (v7[174])
      {
        if (v7[230])
        {
          if (v7[286])
          {
            if (v7[342])
            {
              if (v7[398])
              {
                if (v7[454])
                {
                  if (v7[510])
                  {
                    if (v7[566])
                    {
                      if (v7[622])
                      {
                        v9 = -1;
                        goto LABEL_26;
                      }

                      v10 = 11;
                    }

                    else
                    {
                      v10 = 10;
                    }
                  }

                  else
                  {
                    v10 = 9;
                  }
                }

                else
                {
                  v10 = 8;
                }
              }

              else
              {
                v10 = 7;
              }
            }

            else
            {
              v10 = 6;
            }
          }

          else
          {
            v10 = 5;
          }
        }

        else
        {
          v10 = 4;
        }
      }

      else
      {
        v10 = 3;
      }
    }

    else
    {
      v10 = 2;
    }
  }

  else
  {
    v10 = 1;
  }

LABEL_25:
  v8[56 * v10] = 1;
  v9 = v10;
LABEL_26:
  v45[236] = v9;
  if (v45[236] == -1)
  {
    *v5 = 1;
    release_fb_on_decoder_exit(a1);
    vpx_internal_error(v45, 2, "Unable to find free frame buffer");
    return *v45;
  }

  *(v45 + 43) = &v44[28 * v45[236] + 3];
  v5[437] = 0;
  *(a1 + 18952) = &v43[28 * v45[236]];
  if (!setjmp(v45 + 23))
  {
    v45[22] = 1;
    vp9_decode_frame(a1, v6, v6 + a2);
    v16 = *(a1 + 18904);
    v17 = v16 + 3;
    v18 = v16 + 3;
    if (v5[1])
    {
      v19 = (a1 + 1008);
      v20 = -1;
      v21 = v5[1];
      do
      {
        v23 = v21;
        if ((*v19 & 0x80000000) == 0)
        {
          v24 = &v17[28 * *v19];
          v25 = *v24 - 1;
          if (*v24 >= 1)
          {
            *v24 = v25;
            v26 = !*(v24 + 24) && v25 == 0;
            if (v26 && v24[7])
            {
              (v16[2])(*v16, v24 + 5);
              *(v24 + 24) = 1;
            }
          }

          if (v23)
          {
            v27 = *v24 - 1;
            if (*v24 >= 1)
            {
              *v24 = v27;
              v28 = !*(v24 + 24) && v27 == 0;
              if (v28 && v24[7])
              {
                (v16[2])(*v16, v24 + 5);
                *(v24 + 24) = 1;
              }
            }
          }
        }

        *v19 = v19[8];
        ++v19;
        v21 = v23 >> 1;
        v22 = ++v20;
      }

      while (v23 >= 2);
      v18 = v16 + 3;
      if (v22 > 6)
      {
        goto LABEL_72;
      }

      v29 = v22 + 1;
    }

    else
    {
      v29 = 0;
    }

    v30 = v29 + 1;
    v31 = (a1 + 4 * v29 + 1008);
    do
    {
      if (*(a1 + 1944))
      {
        break;
      }

      v33 = *v31;
      if ((*v31 & 0x80000000) == 0)
      {
        v34 = &v17[28 * v33];
        v35 = *v34 - 1;
        if (*v34 >= 1)
        {
          *v34 = v35;
          if (!*(v34 + 24) && v35 == 0)
          {
            v37 = &v17[28 * v33];
            if (v34[7])
            {
              (v16[2])(*v16, v34 + 5);
              *(v37 + 24) = 1;
            }
          }
        }
      }

      *v31 = v31[8];
      ++v31;
      v32 = v30++;
    }

    while (v32 != 8);
LABEL_72:
    v5[437] = 0;
    v38 = 28 * *(a1 + 1600);
    *(a1 + 984) = *(a1 + 18904) + v38 * 8 + 88;
    --LODWORD(v18[v38]);
    *(a1 + 1072) = -1;
    *(a1 + 1248) = -1;
    *(a1 + 1424) = -1;
    if (!v45[322])
    {
      v45[321] = v45[320];
      *(v45 + 42) = *(v45 + 43);
      if (*(v45 + 4776))
      {
        v39 = v45[377];
        v40 = v45[378];
        v41 = *&v45[2 * v40 + 380];
        v45[377] = v40;
        *(v45 + 193) = v41;
        v42 = *&v45[2 * v39 + 380];
        v45[378] = v39;
        *(v45 + 192) = v42;
      }
    }

    if (v45[320])
    {
      v45[237] = v45[236];
    }

    v45[77] = v45[73];
    v45[78] = v45[74];
    if (v45[320])
    {
      ++v45[4537];
    }

    v45[22] = 0;
    return 0;
  }

  v45[22] = 0;
  *v5 = 1;
  release_fb_on_decoder_exit(a1);
  v11 = v45[236];
  if ((v11 & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  v12 = &v43[28 * v11];
  v13 = *v12 - 1;
  if (*v12 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  *v12 = v13;
  result = 0xFFFFFFFFLL;
  if (!*(v12 + 24) && !v13)
  {
    v15 = v12;
    if (v12[7])
    {
      (v44[2])(*v44, v12 + 5);
      *(v15 + 24) = 1;
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

void release_fb_on_decoder_exit(uint64_t a1)
{
  v1 = (a1 + 18948);
  v21 = a1 + 656;
  v20 = *(a1 + 18904);
  v19 = v20 + 3;
  off_28100B630();
  if (v1[405] >= 1)
  {
    v2 = 0;
    v3 = 0;
    do
    {
      off_28100B630();
      ++v3;
      v2 += 56;
    }

    while (v3 < v1[405]);
  }

  if (v1[436] == 1)
  {
    v4 = *v1;
    if (*v1)
    {
      v5 = 0;
      do
      {
        v7 = *(v21 + 4 * v5 + 352);
        if ((v7 & 0x80000000) == 0)
        {
          v8 = &v19[28 * v7];
          v9 = *v8 - 1;
          if (*v8 >= 1)
          {
            *v8 = v9;
            v10 = !*(v8 + 24) && v9 == 0;
            if (v10 && v8[7])
            {
              (v20[2])(*v20, v8 + 5);
              *(v8 + 24) = 1;
            }
          }

          if (v4)
          {
            v11 = &v19[28 * v7];
            v12 = *v11 - 1;
            if (*v11 >= 1)
            {
              *v11 = v12;
              v13 = !*(v11 + 24) && v12 == 0;
              if (v13 && v11[7])
              {
                (v20[2])(*v20, v11 + 5);
                *(v11 + 24) = 1;
              }
            }
          }
        }

        ++v5;
        v6 = v4 >= 2;
        v4 >>= 1;
      }

      while (v6);
      if ((v5 - 1) >= 7)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v5 = 0;
    }

    v14 = v5 + 88;
    do
    {
      if (*(v21 + 1288))
      {
        break;
      }

      v15 = *(v21 + 4 * v14);
      if ((v15 & 0x80000000) == 0)
      {
        v16 = &v19[28 * v15];
        v17 = *v16 - 1;
        if (*v16 >= 1)
        {
          *v16 = v17;
          if (*(v16 + 24))
          {
            v18 = 0;
          }

          else
          {
            v18 = v17 == 0;
          }

          if (v18)
          {
            if (v16[7])
            {
              (v20[2])(*v20, v16 + 5);
              *(v16 + 24) = 1;
            }
          }
        }
      }

      v10 = v14++ == 95;
    }

    while (!v10);
LABEL_29:
    v1[436] = 0;
  }
}

BOOL vp9_denoiser_denoise(uint64_t a1, uint64_t a2, int a3, int a4, unsigned int a5, uint64_t a6, int *a7, int a8)
{
  v8 = a1 + 933584;
  v9 = (a1 + 754540);
  v10 = *(a1 + 754552);
  v11 = *(a1 + 754544);
  if (v10 - v11 == 2)
  {
    v12 = *(a1 + 933768);
  }

  else
  {
    v12 = 0;
  }

  v13 = 0;
  v14 = *v8 + 160 * v12;
  v15 = *(v14 + 16);
  v16 = *(v14 + 56);
  v17 = *(a1 + 933592) + 160 * (v10 + ~v11);
  v18 = *(v17 + 16);
  v19 = *(v17 + 56);
  v20 = 8 * a3;
  v21 = v15 * 8 * a3;
  v22 = 8 * a4;
  v23 = v16 + v22 + v21;
  v24 = *(a2 + 8216);
  v25 = *(a6 + 810) * *(a6 + 810) + *(a6 + 808) * *(a6 + 808);
  v26 = *(a2 + 8224);
  v27 = *(a1 + 739528);
  if (a5 > 9 || !*(a1 + 933824))
  {
    goto LABEL_37;
  }

  if (*(a1 + 933780) > 2u)
  {
    v13 = 0;
    goto LABEL_37;
  }

  v122 = 8 * a3;
  v119 = v19;
  if (v25 <= 0xF)
  {
    v28 = *(a1 + 173016);
    if (v28 - a4 >= num_8x8_blocks_wide_lookup[a5])
    {
      v29 = num_8x8_blocks_wide_lookup[a5];
    }

    else
    {
      v29 = (v28 - a4);
    }

    v30 = *(a1 + 173008) - a3;
    if (v30 >= num_8x8_blocks_high_lookup[a5])
    {
      v30 = num_8x8_blocks_high_lookup[a5];
    }

    v13 = 100;
    if (v30 >= 1 && v29 >= 1)
    {
      for (i = 0; i < v30; ++i)
      {
        v32 = a4 + (i + a3) * v28;
        v33 = v29;
        while (1)
        {
          if (v13 >= *(*(a1 + 933872) + v32))
          {
            v13 = *(*(a1 + 933872) + v32);
          }

          if (v13 <= 3)
          {
            break;
          }

          ++v32;
          if (!--v33)
          {
            goto LABEL_19;
          }
        }

        i = v30;
LABEL_19:
        ;
      }
    }

    v25 = *(a6 + 810) * *(a6 + 810) + *(a6 + 808) * *(a6 + 808);
    v20 = 8 * a3;
    if (v13 > 60)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v13 = 0;
  }

  v111 = v18;
  v103 = 8 * a4;
  v104 = v16;
  v109 = a8;
  v107 = a6;
  v108 = a1;
  v105 = a3;
  v106 = a4;
  v114 = a7;
  v117 = v25;
  v41 = v25 > 0xF;
  v34 = *(a2 + 24824);
  v35 = a2;
  v36 = 4 << b_width_log2_lookup[a5];
  v37 = a5;
  v38 = 4 << b_height_log2_lookup[a5];
  v39 = (v38 >> 2) * *(a2 + 16528) + (v36 >> 2);
  v40 = *(*(a2 + 16520) + v39);
  v41 = v41 || v13 < 26;
  v42 = v41;
  if (vpx_skin_pixel(*(v24 + (v38 >> 1) * v26 + (v36 >> 1)), v40, *(v34 + v39), v42))
  {
    v43 = 0;
    v44 = 0;
    a7 = v114;
    a5 = v37;
    a2 = v35;
    a3 = v105;
    a4 = v106;
    a6 = v107;
    a1 = v108;
    a8 = v109;
    v22 = v103;
    v16 = v104;
    v18 = v111;
    v25 = v117;
    v20 = v122;
    v19 = v119;
    if ((v27 & 1) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_38;
  }

  a7 = v114;
  a5 = v37;
  a2 = v35;
  a3 = v105;
  a4 = v106;
  a6 = v107;
  a1 = v108;
  a8 = v109;
  v22 = v103;
  v16 = v104;
  v18 = v111;
  v25 = v117;
  v20 = v122;
  v19 = v119;
LABEL_37:
  v44 = *(v8 + 196) == 3;
  v43 = 1;
  if ((v27 & 1) == 0)
  {
LABEL_40:
    result = 0;
    v47 = 0;
    goto LABEL_41;
  }

LABEL_38:
  v45 = *(v8 + 196);
  if (!v45 || *(a6 + 816))
  {
    goto LABEL_40;
  }

  v110 = v44;
  v120 = v19;
  v123 = v20;
  v118 = v25;
  v58 = *(a6 + 792);
  v59 = v22;
  if (v58 == -1)
  {
    v60 = 0;
  }

  else
  {
    v60 = *(a6 + 796) - v58;
  }

  v69 = v9[3];
  v112 = *(a1 + 194516);
  v115 = *(a1 + 194512);
  v70 = *v9;
  v71 = v9[1];
  v72 = **(a2 + 25360);
  v73 = *(a6 + 812);
  v127 = v72[2];
  v128 = v72[3];
  v129 = *(v72 + 16);
  v74 = v72;
  v125 = *v72;
  v126 = v72[1];
  if (v43)
  {
    v75 = v118;
    if (a5 - 3 < 3)
    {
LABEL_77:
      v47 = 0;
LABEL_126:
      result = 0;
      v22 = v59;
      goto LABEL_41;
    }
  }

  else
  {
    v47 = 0;
    if (a5 - 3 < 3)
    {
      goto LABEL_126;
    }

    v75 = v118;
    if (v118 || v13 < 4)
    {
      goto LABEL_126;
    }
  }

  if (v45 == 1 && a5 == 6 && **(a1 + 190440) > 480)
  {
    goto LABEL_77;
  }

  if (*(a6 + 812) <= 3u && *(a6 + 812) != 1)
  {
    goto LABEL_80;
  }

  if (v75 < 0x272)
  {
    v85 = v18;
    v86 = 16;
  }

  else
  {
    v84 = v110;
    if (!v110)
    {
      goto LABEL_111;
    }

    v85 = v18;
    v86 = 4;
  }

  v84 = v86 << num_pels_log2_lookup[a5];
  v18 = v85;
  v75 = v118;
LABEL_111:
  if (v60 > v84)
  {
    v47 = 0;
    v79 = **(a2 + 25360);
    *(v74 + 8) = v73;
    *(v74 + 1) = *(a6 + 804);
    *(v74 + 3) = *(a6 + 808);
    v81 = v75;
    if (v70)
    {
      goto LABEL_98;
    }

LABEL_113:
    v88 = 0;
    v82 = v73;
    goto LABEL_114;
  }

LABEL_80:
  v73 = *(a6 + 813);
  v76 = a8 != 0;
  v77 = v69 < 2 || a8 != 0;
  v78 = *(a6 + 796);
  *(a6 + 792) = v78;
  if (v73 != 2)
  {
    v76 = 0;
  }

  if (!v77 || v73 == 3 || v76)
  {
    v80 = *(a6 + 800);
    v79 = v74;
  }

  else
  {
    v73 = v73;
    v79 = v74;
    if (v73 == 1)
    {
      goto LABEL_94;
    }

    v80 = *(a6 + 800);
    if (v45 <= 2 && v80 >= (5 * v78) >> 2)
    {
      goto LABEL_94;
    }
  }

  *(a6 + 792) = v80;
  v73 = 1;
LABEL_94:
  *(v79 + 8) = v73;
  *(v79 + 1) = 12;
  *(v79 + 3) = 0;
  *(a6 + 804) = 12;
  *(a6 + 808) = 0;
  if (*(v8 + 196) <= 2u)
  {
    v81 = v75;
  }

  else
  {
    v81 = 0;
  }

  v47 = 1;
  if (!v70)
  {
    goto LABEL_113;
  }

LABEL_98:
  if (v73 == 2)
  {
    v83 = v112;
    goto LABEL_105;
  }

  v82 = v73;
  if (v73 == 1)
  {
    v83 = v115;
LABEL_105:
    v82 = v83 + 1;
  }

  v87 = v69 - v71;
  if (v87 == 2)
  {
    v82 += *(v8 + 184);
  }

  v88 = v87 - 1;
LABEL_114:
  if (!*(*v8 + 160 * v82 + 88) || (v110 ? (v89 = 80) : (v89 = 40), *(a6 + 792) > (v89 << num_pels_log2_lookup[a5]) || v81 >= 5001))
  {
    v79[2] = v127;
    v79[3] = v128;
    *(v79 + 16) = v129;
    *v79 = v125;
    v79[1] = v126;
    goto LABEL_126;
  }

  v116 = a7;
  v113 = v18;
  v121 = v120 + v18 * v123;
  v130 = *(a2 + 24944);
  v131 = *(a2 + 25080);
  v133 = *(a2 + 24928);
  v134 = *(a2 + 25064);
  v132 = *(a2 + 25216);
  v135 = *(a2 + 25200);
  v90 = *v8 + 160 * v82;
  v91 = *(v90 + 16);
  v92 = v79;
  v93 = *(v90 + 64);
  v94 = *(a2 + 25424);
  *(a2 + 24944) = *(v90 + 56) + v91 * v123 + v59;
  *(a2 + 24952) = v91;
  v95 = *(v90 + 36);
  v96 = v95 * v123;
  *(a2 + 25080) = v93 + v59 + v96;
  *(a2 + 25088) = v95;
  *(a2 + 25216) = *(v90 + 72) + v59 + v96;
  *(a2 + 25224) = v95;
  v97 = *(v8 + 8) + 160 * v88;
  LODWORD(v90) = *(v97 + 16);
  v98 = *(v97 + 64);
  *(a2 + 24928) = *(v97 + 56) + v90 * v123 + v59;
  *(a2 + 24936) = v90;
  LODWORD(v90) = *(v97 + 36);
  v99 = v90 * v123;
  *(a2 + 25064) = v98 + v59 + v99;
  *(a2 + 25072) = v90;
  *(a2 + 25200) = *(v97 + 72) + v59 + v99;
  *(a2 + 25208) = v90;
  v100 = a1 + 172112;
  if (v73 <= 0)
  {
    v101 = 0;
  }

  else
  {
    v101 = v73 - 1;
  }

  *(a2 + 25424) = v100 + 176 * v101;
  *(a2 + 25432) = v100;
  v102 = a2;
  v124 = a5;
  build_inter_predictors_for_planes(a2 + 24912, a5, a3, a4, 0, 0);
  v92[2] = v127;
  v92[3] = v128;
  *(v92 + 16) = v129;
  *v92 = v125;
  v92[1] = v126;
  *(v102 + 24944) = v130;
  *(v102 + 24928) = v133;
  *(v102 + 25080) = v131;
  *(v102 + 25424) = v94;
  *(v102 + 25064) = v134;
  *(v102 + 25216) = v132;
  *(v102 + 25200) = v135;
  result = vp9_denoiser_filter_neon(v24, v26, (v121 + v59), v113, v23, v15, v110, v124, v118);
  if (!result)
  {
    a7 = v116;
    a5 = v124;
    v22 = v59;
LABEL_41:
    v48 = num_4x4_blocks_high_lookup[a5];
    if (a5 > 1)
    {
      if (a5 - 2 > 2)
      {
        if (a5 > 7)
        {
          if (a5 - 8 >= 3)
          {
            v61 = -4 * v48;
            v62 = (v24 + 32);
            v63 = (v21 + v22 + v16 + 32);
            do
            {
              v64 = *(v62 - 1);
              v65 = *v62;
              v66 = v62[1];
              *(v63 - 2) = *(v62 - 2);
              *(v63 - 1) = v64;
              *v63 = v65;
              v63[1] = v66;
              v62 = (v62 + v26);
              v63 = (v63 + v15);
            }

            while (!__CFADD__(v61++, 1));
            v49 = 0;
          }

          else
          {
            v49 = -4 * v48;
            do
            {
              v54 = *(v24 + 16);
              v55 = *(v24 + v26);
              v56 = *(v24 + v26 + 16);
              *v23 = *v24;
              *(v23 + 16) = v54;
              v57 = (v23 + v15);
              *v57 = v55;
              v57[1] = v56;
              v23 += v15 + v15;
              v24 += v26 + v26;
              v49 += 2;
            }

            while (v49);
          }
        }

        else
        {
          v49 = -4 * v48;
          do
          {
            v52 = *v24;
            v53 = *(v24 + v26);
            v24 += v26 + v26;
            *v23 = v52;
            *(v23 + v15) = v53;
            v23 += v15 + v15;
            v49 += 2;
          }

          while (v49);
        }
      }

      else
      {
        v49 = -4 * v48;
        do
        {
          v50 = *v24;
          v51 = *(v24 + v26);
          v24 += v26 + v26;
          *v23 = v50;
          *(v23 + v15) = v51;
          v23 += v15 + v15;
          v49 += 2;
        }

        while (v49);
      }
    }

    else
    {
      v49 = -4 * v48;
      do
      {
        *v23 = *v24;
        *(v23 + v15) = *(v24 + v26);
        v24 += v26 + v26;
        v23 += v15 + v15;
        v49 += 2;
      }

      while (v49);
    }

    goto LABEL_63;
  }

  vpx_convolve_copy_neon(v23, v15, v24, v26, 0, 0, 0, 0, 0, 4 * num_4x4_blocks_wide_lookup[v124], 4 * num_4x4_blocks_high_lookup[v124]);
  v49 = 1;
  result = 1;
  a7 = v116;
LABEL_63:
  if ((v49 & v47) != 0)
  {
    v68 = 2;
  }

  else
  {
    v68 = result;
  }

  *a7 = v68;
  return result;
}

uint64_t vp9_denoiser_update_frame_stats(uint64_t result, unsigned int a2, char a3, uint64_t a4)
{
  if (*(result + 12))
  {
    goto LABEL_6;
  }

  if (*(a4 + 796) > a2)
  {
    *(a4 + 796) = a2;
    v4 = *(result + 8);
    *(a4 + 813) = v4;
    if (v4 == 1)
    {
      *(a4 + 800) = a2;
    }
  }

  if (*(result + 12))
  {
LABEL_6:
    if (*(a4 + 792) > a2)
    {
      *(a4 + 792) = a2;
      *(a4 + 804) = a3;
      *(a4 + 808) = *(result + 12);
      *(a4 + 812) = *(result + 8);
    }
  }

  return result;
}

double vp9_denoiser_alloc(jmp_buf a1, _DWORD *a2, uint64_t a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10, int a11)
{
  if (!a4)
  {
    v30 = 1;
    v61 = a7;
    v62 = a6;
    *(a3 + 184) = 3;
    *(a3 + 188) = 1;
    v31 = 3;
    goto LABEL_23;
  }

  v15 = &a2[3484 * a2[1] + 3484 * a2[3] * *a2];
  v16 = v15[1285];
  v17 = v15[1286];
  if (v16)
  {
    v18 = v17 == 0;
  }

  else
  {
    v18 = 1;
  }

  v61 = a7;
  v62 = a6;
  if (!v18)
  {
    v19 = v16 * a6 / v17;
    v20 = v16 * a7;
    v21 = v19 & 1;
    if (v19 < 0)
    {
      v21 = -v21;
    }

    v22 = v21 + v19;
    v23 = v20 / v17;
    v24 = v23 & 1;
    if (v23 < 0)
    {
      v24 = -v24;
    }

    v61 = v24 + v23;
    v62 = v22;
  }

  v25 = a2[2];
  if (a5 <= 1)
  {
    v26 = 1;
  }

  else
  {
    v26 = 2;
  }

  if (a5 > 1)
  {
    v27 = -2;
  }

  else
  {
    v27 = -1;
  }

  v28 = v25 + v27;
  if (v25 <= v26)
  {
    v29 = 0;
  }

  else
  {
    v29 = v28;
  }

  a2[43012] = v29;
  v30 = v25 - v29;
  *(a3 + 184) = 9;
  *(a3 + 188) = v25 - v29;
  v31 = 9 * (v25 - v29);
  if (v30)
  {
LABEL_23:
    if (v31 < 0)
    {
      goto LABEL_29;
    }
  }

  v32 = 160 * v31;
  if ((v32 | 0x17) <= 0x10000000000)
  {
    v33 = malloc_type_malloc(v32 | 0x17, 0xD93B561uLL);
    if (v33)
    {
      v34 = (v33 + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v34 - 8) = v33;
      if (v34)
      {
        bzero(((v33 + 23) & 0xFFFFFFFFFFFFFFF0), v32);
        *a3 = v34;
        v36 = a10;
        v35 = a11;
        v37 = a9;
        v64 = a7;
        if (v30 < 0)
        {
          goto LABEL_34;
        }

        goto LABEL_30;
      }
    }
  }

LABEL_29:
  *a3 = 0;
  vpx_internal_error(a1, 2, "Failed to allocate denoiser->running_avg_y");
  v36 = a10;
  v35 = a11;
  v37 = a9;
  v64 = a7;
  if (v30 < 0)
  {
    goto LABEL_34;
  }

LABEL_30:
  v38 = malloc_type_malloc((160 * v30) | 0x17, 0xD93B561uLL);
  if (v38)
  {
    v39 = (v38 + 23) & 0xFFFFFFFFFFFFFFF0;
    *(v39 - 8) = v38;
    if (v39)
    {
      bzero(((v38 + 23) & 0xFFFFFFFFFFFFFFF0), 160 * v30);
      *(a3 + 8) = v39;
      v59 = (a3 + 8);
      if (v30 >= 1)
      {
        goto LABEL_35;
      }

      goto LABEL_69;
    }
  }

LABEL_34:
  *(a3 + 8) = 0;
  v59 = (a3 + 8);
  vpx_internal_error(a1, 2, "Failed to allocate denoiser->mc_running_avg_y");
  if (v30 >= 1)
  {
LABEL_35:
    v41 = 0;
    v42 = 0;
    v58 = 160 * v30;
    while (1)
    {
      v43 = v42 ? v62 : a6;
      v44 = v42 ? v61 : v64;
      if (!*a3)
      {
        break;
      }

      v45 = *a3 + 160 * *(a3 + 184) * v41;
      if (*(v45 + 96))
      {
        v46 = *(v45 + 88);
        if (v46)
        {
          free(*(v46 - 8));
        }
      }

      *(v45 + 128) = 0u;
      *(v45 + 144) = 0u;
      *(v45 + 96) = 0u;
      *(v45 + 112) = 0u;
      *(v45 + 64) = 0u;
      *(v45 + 80) = 0u;
      *(v45 + 32) = 0u;
      *(v45 + 48) = 0u;
      *v45 = 0u;
      *(v45 + 16) = 0u;
      if (vpx_realloc_frame_buffer(v45, v43, v44, a8, v37, v36, v35, 0, 0, 0, 0) || !*a3)
      {
        break;
      }

      v47 = *a3 + 160 * *(a3 + 184) * v41;
      if (*(v47 + 256))
      {
        v48 = *(v47 + 248);
        if (v48)
        {
          free(*(v48 - 8));
        }
      }

      *(v47 + 288) = 0u;
      *(v47 + 304) = 0u;
      *(v47 + 256) = 0u;
      *(v47 + 272) = 0u;
      *(v47 + 224) = 0u;
      *(v47 + 240) = 0u;
      *(v47 + 192) = 0u;
      *(v47 + 208) = 0u;
      *(v47 + 160) = 0u;
      *(v47 + 176) = 0u;
      if (vpx_realloc_frame_buffer(v47 + 160, v43, v44, a8, v37, v36, v35, 0, 0, 0, 0) || !*a3)
      {
        break;
      }

      v49 = *a3 + 160 * *(a3 + 184) * v41;
      if (*(v49 + 416))
      {
        v50 = *(v49 + 408);
        if (v50)
        {
          free(*(v50 - 8));
        }
      }

      *(v49 + 448) = 0u;
      *(v49 + 464) = 0u;
      *(v49 + 416) = 0u;
      *(v49 + 432) = 0u;
      *(v49 + 384) = 0u;
      *(v49 + 400) = 0u;
      *(v49 + 352) = 0u;
      *(v49 + 368) = 0u;
      *(v49 + 320) = 0u;
      *(v49 + 336) = 0u;
      if (vpx_realloc_frame_buffer(v49 + 320, v43, v44, a8, v37, v36, v35, 0, 0, 0, 0))
      {
        break;
      }

      if (a4)
      {
        if (!*a3)
        {
          break;
        }

        v51 = *a3 + 160 * *(a3 + 184) * v41;
        if (*(v51 + 576))
        {
          v52 = *(v51 + 568);
          if (v52)
          {
            free(*(v52 - 8));
          }
        }

        *(v51 + 608) = 0u;
        *(v51 + 624) = 0u;
        *(v51 + 576) = 0u;
        *(v51 + 592) = 0u;
        *(v51 + 544) = 0u;
        *(v51 + 560) = 0u;
        *(v51 + 512) = 0u;
        *(v51 + 528) = 0u;
        *(v51 + 480) = 0u;
        *(v51 + 496) = 0u;
        if (vpx_realloc_frame_buffer(v51 + 480, v43, v44, a8, v37, v36, v35, 0, 0, 0, 0))
        {
          break;
        }
      }

      v53 = *v59;
      if (!*v59)
      {
        break;
      }

      v54 = (v53 + v42);
      if (*(v53 + v42 + 96))
      {
        v55 = *(v53 + v42 + 88);
        if (v55)
        {
          free(*(v55 - 8));
        }
      }

      v54[8] = 0u;
      v54[9] = 0u;
      v54[6] = 0u;
      v54[7] = 0u;
      v54[4] = 0u;
      v54[5] = 0u;
      v54[2] = 0u;
      v54[3] = 0u;
      *v54 = 0u;
      v54[1] = 0u;
      if (vpx_realloc_frame_buffer(v54, v43, v44, a8, v37, v36, v35, 0, 0, 0, 0))
      {
        break;
      }

      v42 += 160;
      ++v41;
      if (v58 == v42)
      {
        goto LABEL_69;
      }
    }

    return vp9_denoiser_free(a3, v40);
  }

LABEL_69:
  if (*(a3 + 112))
  {
    v56 = *(a3 + 104);
    if (v56)
    {
      free(*(v56 - 8));
    }
  }

  *(a3 + 144) = 0u;
  *(a3 + 160) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  if (vpx_realloc_frame_buffer(a3 + 16, a6, v64, a8, v37, v36, v35, 0, 0, 0, 0))
  {
    return vp9_denoiser_free(a3, v40);
  }

  *(a3 + 200) = 2;
  *(a3 + 176) = 1;
  *&result = 0x200000000;
  *(a3 + 192) = 0x200000000;
  return result;
}

double vp9_denoiser_free(uint64_t *a1, double result)
{
  if (!a1)
  {
    return result;
  }

  *(a1 + 44) = 0;
  v4 = *(a1 + 46);
  v3 = *(a1 + 47);
  v5 = *a1;
  if (v3 * v4 < 1)
  {
    goto LABEL_11;
  }

  if (v5)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0uLL;
    do
    {
      if (v5)
      {
        v9 = (v5 + v6);
        if (*(v5 + v6 + 96))
        {
          v10 = *(v5 + v6 + 88);
          if (v10)
          {
            free(*(v10 - 8));
            v8 = 0uLL;
          }
        }

        v9[8] = v8;
        v9[9] = v8;
        v9[6] = v8;
        v9[7] = v8;
        v9[4] = v8;
        v9[5] = v8;
        v9[2] = v8;
        v9[3] = v8;
        *v9 = v8;
        v9[1] = v8;
        v4 = *(a1 + 46);
        v3 = *(a1 + 47);
      }

      ++v7;
      v5 = *a1;
      v6 += 160;
    }

    while (v7 < v3 * v4);
LABEL_11:
    if (v5)
    {
      free(*(v5 - 8));
      v3 = *(a1 + 47);
    }
  }

  *a1 = 0;
  if (v3 >= 1)
  {
    v11 = a1[1];
    if (v11)
    {
      v12 = 0;
      v13 = 1;
      v14 = 0uLL;
LABEL_16:
      v15 = (v11 + v12);
      if (*(v11 + v12 + 96))
      {
        v16 = *(v11 + v12 + 88);
        if (v16)
        {
          free(*(v16 - 8));
          v14 = 0uLL;
        }
      }

      v15[8] = v14;
      v15[9] = v14;
      v15[6] = v14;
      v15[7] = v14;
      v15[4] = v14;
      v15[5] = v14;
      v15[2] = v14;
      v15[3] = v14;
      *v15 = v14;
      v15[1] = v14;
      while (v13 < *(a1 + 47))
      {
        v11 = a1[1];
        ++v13;
        v12 += 160;
        if (v11)
        {
          goto LABEL_16;
        }
      }
    }
  }

  v17 = a1[1];
  if (v17)
  {
    free(*(v17 - 8));
  }

  a1[1] = 0;
  if (a1[14])
  {
    v18 = a1[13];
    if (v18)
    {
      free(*(v18 - 8));
    }
  }

  result = 0.0;
  *(a1 + 9) = 0u;
  *(a1 + 10) = 0u;
  *(a1 + 7) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 5) = 0u;
  *(a1 + 6) = 0u;
  *(a1 + 3) = 0u;
  *(a1 + 4) = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  return result;
}

int *vp9_denoiser_update_ref_frame(int *result)
{
  v1 = (result + 47512);
  if (result[47512] < 1)
  {
    return result;
  }

  v2 = result + 231542;
  v3 = (result + 188635);
  v4 = result[188635];
  if (v4)
  {
    if (result[188636] < result[231648])
    {
      return result;
    }
  }

  v5 = (result + 233396);
  if (!result[233445])
  {
    return result;
  }

  v6 = result + 48628;
  v7 = result + 42997;
  if (*(result + 172988))
  {
    v8 = 1;
    ++result[233444];
    if (v4)
    {
      goto LABEL_7;
    }

LABEL_11:
    v10 = 0;
    v11 = *(result + 23805);
    v12 = result[233448];
    goto LABEL_12;
  }

  v8 = result[43243] == 0;
  ++result[233444];
  if (!v4)
  {
    goto LABEL_11;
  }

LABEL_7:
  v9 = result[188636];
  v199 = result[188638] - v9 == 2;
  v200 = v8;
  if (result[188638] - v9 == 2)
  {
    v17 = result[233442];
  }

  else
  {
    v17 = 0;
  }

  if (result[3484 * result[188637] + 193189 + 3484 * result[188639] * v9])
  {
    v18 = 1;
  }

  else
  {
    v18 = result[v9 + 231738] != 0;
  }

  v198 = v18;
  v19 = result[48640];
  v20 = result[48639];
  v21 = result[48629];
  v22 = *v6;
  v202 = result;
  v201 = v17;
  if (*v2 == 1 && result[231751])
  {
    v23 = (result + 231716);
    if (!result[43243] || (*&v23[4 * v9] & 1) != 0)
    {
      v24 = *v5 + 160 * (v17 + 1);
      if (!*(v24 + 88))
      {
        v25 = *v7;
        v26 = result[42998];
        v27 = result[43003];
        v28 = result[43004];
        v29 = result[43005];
        *(v24 + 128) = 0u;
        *(v24 + 144) = 0u;
        *(v24 + 96) = 0u;
        *(v24 + 112) = 0u;
        *(v24 + 64) = 0u;
        *(v24 + 80) = 0u;
        *(v24 + 32) = 0u;
        *(v24 + 48) = 0u;
        *v24 = 0u;
        *(v24 + 16) = 0u;
        v30 = vpx_realloc_frame_buffer(v24, v25, v26, v27, v28, v29, 160, 0, 0, 0, 0);
        v17 = v201;
        v32 = v30;
        result = v202;
        if (v32)
        {
          vp9_denoiser_free(v5, v31);
          v17 = v201;
          result = v202;
        }
      }
    }

    if (!v7[246] || (*&v23[4 * *(v3 + 1)] & 2) != 0)
    {
      v33 = *v5 + 160 * (v17 + 2);
      if (!*(v33 + 88))
      {
        v34 = *v7;
        v35 = v7[1];
        v36 = v7[6];
        v37 = v7[7];
        v38 = v7[8];
        *(v33 + 128) = 0u;
        *(v33 + 144) = 0u;
        *(v33 + 96) = 0u;
        *(v33 + 112) = 0u;
        *(v33 + 64) = 0u;
        *(v33 + 80) = 0u;
        *(v33 + 32) = 0u;
        *(v33 + 48) = 0u;
        *v33 = 0u;
        *(v33 + 16) = 0u;
        v39 = vpx_realloc_frame_buffer(v33, v34, v35, v36, v37, v38, 160, 0, 0, 0, 0);
        v17 = v201;
        v41 = v39;
        result = v202;
        if (v41)
        {
          vp9_denoiser_free(v5, v40);
          v17 = v201;
          result = v202;
        }
      }
    }

    if (!v7[246] || (*&v23[4 * *(v3 + 1)] & 4) != 0)
    {
      v42 = *v5 + 160 * (v17 + 3);
      if (!*(v42 + 88))
      {
        v43 = *v7;
        v44 = v7[1];
        v45 = v7[6];
        v46 = v7[7];
        v47 = v7[8];
        *(v42 + 128) = 0u;
        *(v42 + 144) = 0u;
        *(v42 + 96) = 0u;
        *(v42 + 112) = 0u;
        *(v42 + 64) = 0u;
        *(v42 + 80) = 0u;
        *(v42 + 32) = 0u;
        *(v42 + 48) = 0u;
        *v42 = 0u;
        *(v42 + 16) = 0u;
        v48 = vpx_realloc_frame_buffer(v42, v43, v44, v45, v46, v47, 160, 0, 0, 0, 0);
        v17 = v201;
        v50 = v48;
        result = v202;
        if (v50)
        {
          vp9_denoiser_free(v5, v49);
          v17 = v201;
          result = v202;
        }
      }
    }

    if (!v7[246] || (*&v23[4 * *(v3 + 1)] & 8) != 0)
    {
      v51 = *v5 + 160 * (v17 + 4);
      if (!*(v51 + 88))
      {
        v52 = *v7;
        v53 = v7[1];
        v54 = v7[6];
        v55 = v7[7];
        v56 = v7[8];
        *(v51 + 128) = 0u;
        *(v51 + 144) = 0u;
        *(v51 + 96) = 0u;
        *(v51 + 112) = 0u;
        *(v51 + 64) = 0u;
        *(v51 + 80) = 0u;
        *(v51 + 32) = 0u;
        *(v51 + 48) = 0u;
        *v51 = 0u;
        *(v51 + 16) = 0u;
        v57 = vpx_realloc_frame_buffer(v51, v52, v53, v54, v55, v56, 160, 0, 0, 0, 0);
        v17 = v201;
        v59 = v57;
        result = v202;
        if (v59)
        {
          vp9_denoiser_free(v5, v58);
          v17 = v201;
          result = v202;
        }
      }
    }

    if (!v7[246] || (*&v23[4 * *(v3 + 1)] & 0x10) != 0)
    {
      v60 = *v5 + 160 * (v17 + 5);
      if (!*(v60 + 88))
      {
        v61 = *v7;
        v62 = v7[1];
        v63 = v7[6];
        v64 = v7[7];
        v65 = v7[8];
        *(v60 + 128) = 0u;
        *(v60 + 144) = 0u;
        *(v60 + 96) = 0u;
        *(v60 + 112) = 0u;
        *(v60 + 64) = 0u;
        *(v60 + 80) = 0u;
        *(v60 + 32) = 0u;
        *(v60 + 48) = 0u;
        *v60 = 0u;
        *(v60 + 16) = 0u;
        v66 = vpx_realloc_frame_buffer(v60, v61, v62, v63, v64, v65, 160, 0, 0, 0, 0);
        v17 = v201;
        v68 = v66;
        result = v202;
        if (v68)
        {
          vp9_denoiser_free(v5, v67);
          v17 = v201;
          result = v202;
        }
      }
    }

    if (!v7[246] || (*&v23[4 * *(v3 + 1)] & 0x20) != 0)
    {
      v69 = *v5 + 160 * (v17 + 6);
      if (!*(v69 + 88))
      {
        v70 = *v7;
        v71 = v7[1];
        v72 = v7[6];
        v73 = v7[7];
        v74 = v7[8];
        *(v69 + 128) = 0u;
        *(v69 + 144) = 0u;
        *(v69 + 96) = 0u;
        *(v69 + 112) = 0u;
        *(v69 + 64) = 0u;
        *(v69 + 80) = 0u;
        *(v69 + 32) = 0u;
        *(v69 + 48) = 0u;
        *v69 = 0u;
        *(v69 + 16) = 0u;
        v75 = vpx_realloc_frame_buffer(v69, v70, v71, v72, v73, v74, 160, 0, 0, 0, 0);
        v17 = v201;
        v77 = v75;
        result = v202;
        if (v77)
        {
          vp9_denoiser_free(v5, v76);
          v17 = v201;
          result = v202;
        }
      }
    }

    if (!v7[246] || (*&v23[4 * *(v3 + 1)] & 0x40) != 0)
    {
      v78 = *v5 + 160 * (v17 + 7);
      if (!*(v78 + 88))
      {
        v79 = *v7;
        v80 = v7[1];
        v81 = v7[6];
        v82 = v7[7];
        v83 = v7[8];
        *(v78 + 128) = 0u;
        *(v78 + 144) = 0u;
        *(v78 + 96) = 0u;
        *(v78 + 112) = 0u;
        *(v78 + 64) = 0u;
        *(v78 + 80) = 0u;
        *(v78 + 32) = 0u;
        *(v78 + 48) = 0u;
        *v78 = 0u;
        *(v78 + 16) = 0u;
        v84 = vpx_realloc_frame_buffer(v78, v79, v80, v81, v82, v83, 160, 0, 0, 0, 0);
        v17 = v201;
        v86 = v84;
        result = v202;
        if (v86)
        {
          vp9_denoiser_free(v5, v85);
          v17 = v201;
          result = v202;
        }
      }
    }

    if (!v7[246] || (*&v23[4 * *(v3 + 1)] & 0x80) != 0)
    {
      v87 = *v5 + 160 * (v17 + 8);
      if (!*(v87 + 88))
      {
        v88 = *v7;
        v89 = v7[1];
        v90 = v7[6];
        v91 = v7[7];
        v92 = v7[8];
        *(v87 + 128) = 0u;
        *(v87 + 144) = 0u;
        *(v87 + 96) = 0u;
        *(v87 + 112) = 0u;
        *(v87 + 64) = 0u;
        *(v87 + 80) = 0u;
        *(v87 + 32) = 0u;
        *(v87 + 48) = 0u;
        *v87 = 0u;
        *(v87 + 16) = 0u;
        if (vpx_realloc_frame_buffer(v87, v88, v89, v90, v91, v92, 160, 0, 0, 0, 0))
        {
          vp9_denoiser_free(v5, v93);
        }

        goto LABEL_74;
      }
    }
  }

  else if (result[48641] && (v94 = *v5 + 160 * (v17 + result[48630] + 1), !*(v94 + 88)) && (v104 = *v7, v105 = result[42998], v106 = result[43003], v107 = result[43004], v108 = result[43005], *(v94 + 128) = 0u, *(v94 + 144) = 0u, *(v94 + 96) = 0u, *(v94 + 112) = 0u, *(v94 + 64) = 0u, *(v94 + 80) = 0u, *(v94 + 32) = 0u, *(v94 + 48) = 0u, *v94 = 0u, *(v94 + 16) = 0u, v109 = vpx_realloc_frame_buffer(v94, v104, v105, v106, v107, v108, 160, 0, 0, 0, 0), v17 = v201, v110 = v109, result = v202, v110) || v19 && (v95 = *v5 + 160 * (v17 + v21 + 1), !*(v95 + 88)) && (v111 = *v7, v112 = v7[1], v113 = v7[6], v114 = v7[7], v115 = v7[8], *(v95 + 128) = 0u, *(v95 + 144) = 0u, *(v95 + 96) = 0u, *(v95 + 112) = 0u, *(v95 + 64) = 0u, *(v95 + 80) = 0u, *(v95 + 32) = 0u, *(v95 + 48) = 0u, *v95 = 0u, *(v95 + 16) = 0u, v116 = vpx_realloc_frame_buffer(v95, v111, v112, v113, v114, v115, 160, 0, 0, 0, 0), v17 = v201, v117 = v116, result = v202, v117) || v20 && (v96 = *v5 + 160 * (v17 + v22 + 1), !*(v96 + 88)) && (v97 = *v7, v98 = v7[1], v99 = v7[6], v100 = v7[7], v101 = v7[8], *(v96 + 128) = 0u, *(v96 + 144) = 0u, *(v96 + 96) = 0u, *(v96 + 112) = 0u, *(v96 + 64) = 0u, *(v96 + 80) = 0u, *(v96 + 32) = 0u, *(v96 + 48) = 0u, *v96 = 0u, *(v96 + 16) = 0u, v102 = vpx_realloc_frame_buffer(v96, v97, v98, v99, v100, v101, 160, 0, 0, 0, 0), result = v202, v102))
  {
    v118 = vp9_denoiser_free(v5, v103);
    vpx_internal_error((v202 + 42924), 2, "Failed to re-allocate denoiser for SVC", v118);
LABEL_74:
    result = v202;
  }

  v8 = v200;
  v10 = v198;
  v11 = *(v1 + 49);
  v12 = *(v5 + 52);
  if (!v199)
  {
LABEL_12:
    v13 = 0;
    v14 = *(v11 + 56);
    v15 = *(v11 + 16);
    if (v12)
    {
      v16 = 1;
    }

    else
    {
      v16 = v8;
    }

    if (v16)
    {
      goto LABEL_81;
    }

    goto LABEL_80;
  }

  v13 = *(v5 + 46);
  v14 = *(v11 + 56);
  v15 = *(v11 + 16);
  if (v12)
  {
    v119 = 1;
  }

  else
  {
    v119 = v200;
  }

  if (v119)
  {
    goto LABEL_81;
  }

LABEL_80:
  if (*(v5 + 45) | v10)
  {
LABEL_81:
    v120 = *(v5 + 46);
    if (v120 >= 2)
    {
      for (i = 1; i < v120; ++i)
      {
        v122 = (*v5 + 160 * i + 160 * v13);
        if (*(v122 + 11) && v122[1] >= 1)
        {
          v123 = 0;
          v124 = *(v122 + 7);
          v125 = v14;
          do
          {
            result = memcpy(v124, v125, *v122);
            v124 += v122[4];
            v125 += v15;
            ++v123;
          }

          while (v123 < v122[1]);
          v120 = *(v5 + 46);
        }
      }
    }

    *(v5 + 45) = 0;
    return result;
  }

  v127 = v6[12];
  v126 = v6[13];
  v128 = v6[11];
  v130 = v6[1];
  v129 = v6[2];
  v131 = *v6;
  if (*v2 == 1 && v2[209])
  {
    v132 = (result + 231716);
    v133 = result[*(v3 + 1) + 231716];
    if (v133)
    {
      v134 = (*v5 + 160 * (v13 + 1));
      if (v134[1] >= 1)
      {
        v135 = 0;
        v136 = *v5 + 160 * v13;
        v137 = *(v134 + 7);
        v138 = *(v136 + 56);
        do
        {
          result = memcpy(v137, v138, *v134);
          v137 += v134[4];
          v138 += *(v136 + 16);
          ++v135;
        }

        while (v135 < v134[1]);
        v133 = *&v132[4 * *(v3 + 1)];
      }
    }

    if ((v133 & 2) != 0)
    {
      v139 = (*v5 + 160 * (v13 + 2));
      if (v139[1] >= 1)
      {
        v140 = 0;
        v141 = *v5 + 160 * v13;
        v142 = *(v139 + 7);
        v143 = *(v141 + 56);
        do
        {
          result = memcpy(v142, v143, *v139);
          v142 += v139[4];
          v143 += *(v141 + 16);
          ++v140;
        }

        while (v140 < v139[1]);
        v133 = *&v132[4 * *(v3 + 1)];
      }
    }

    if ((v133 & 4) != 0)
    {
      v144 = (*v5 + 160 * (v13 + 3));
      if (v144[1] >= 1)
      {
        v145 = 0;
        v146 = *v5 + 160 * v13;
        v147 = *(v144 + 7);
        v148 = *(v146 + 56);
        do
        {
          result = memcpy(v147, v148, *v144);
          v147 += v144[4];
          v148 += *(v146 + 16);
          ++v145;
        }

        while (v145 < v144[1]);
        v133 = *&v132[4 * *(v3 + 1)];
      }
    }

    if ((v133 & 8) != 0)
    {
      v149 = (*v5 + 160 * (v13 + 4));
      if (v149[1] >= 1)
      {
        v150 = 0;
        v151 = *v5 + 160 * v13;
        v152 = *(v149 + 7);
        v153 = *(v151 + 56);
        do
        {
          result = memcpy(v152, v153, *v149);
          v152 += v149[4];
          v153 += *(v151 + 16);
          ++v150;
        }

        while (v150 < v149[1]);
        v133 = *&v132[4 * *(v3 + 1)];
      }
    }

    if ((v133 & 0x10) != 0)
    {
      v154 = (*v5 + 160 * (v13 + 5));
      if (v154[1] >= 1)
      {
        v155 = 0;
        v156 = *v5 + 160 * v13;
        v157 = *(v154 + 7);
        v158 = *(v156 + 56);
        do
        {
          result = memcpy(v157, v158, *v154);
          v157 += v154[4];
          v158 += *(v156 + 16);
          ++v155;
        }

        while (v155 < v154[1]);
        v133 = *&v132[4 * *(v3 + 1)];
      }
    }

    if ((v133 & 0x20) != 0)
    {
      v159 = (*v5 + 160 * (v13 + 6));
      if (v159[1] >= 1)
      {
        v160 = 0;
        v161 = *v5 + 160 * v13;
        v162 = *(v159 + 7);
        v163 = *(v161 + 56);
        do
        {
          result = memcpy(v162, v163, *v159);
          v162 += v159[4];
          v163 += *(v161 + 16);
          ++v160;
        }

        while (v160 < v159[1]);
        v133 = *&v132[4 * *(v3 + 1)];
      }
    }

    if ((v133 & 0x40) != 0)
    {
      v164 = (*v5 + 160 * (v13 + 7));
      if (v164[1] >= 1)
      {
        v165 = 0;
        v166 = *v5 + 160 * v13;
        v167 = *(v164 + 7);
        v168 = *(v166 + 56);
        do
        {
          result = memcpy(v167, v168, *v164);
          v167 += v164[4];
          v168 += *(v166 + 16);
          ++v165;
        }

        while (v165 < v164[1]);
        v133 = *&v132[4 * *(v3 + 1)];
      }
    }

    if ((v133 & 0x80) != 0)
    {
      v169 = (*v5 + 160 * (v13 + 8));
      if (v169[1] >= 1)
      {
        v170 = 0;
        v171 = *v5 + 160 * v13;
        v172 = *(v169 + 7);
        v173 = *(v171 + 56);
        do
        {
          result = memcpy(v172, v173, *v169);
          v172 += v169[4];
          v173 += *(v171 + 16);
          ++v170;
        }

        while (v170 < v169[1]);
      }
    }
  }

  else if (v127 + v126 + v128 < 2)
  {
    if (v126)
    {
      v189 = *v5 + 160 * (v129 + v13);
      v190 = *(v189 + 216);
      v191 = *v5 + 160 * v13;
      *(v189 + 216) = *(v191 + 56);
      *(v191 + 56) = v190;
    }

    if (v127)
    {
      v192 = *v5 + 160 * (v130 + v13);
      v193 = *(v192 + 216);
      v194 = *v5 + 160 * v13;
      *(v192 + 216) = *(v194 + 56);
      *(v194 + 56) = v193;
    }

    if (v128)
    {
      v195 = *v5 + 160 * (v131 + v13);
      v196 = *(v195 + 216);
      v197 = *v5 + 160 * v13;
      *(v195 + 216) = *(v197 + 56);
      *(v197 + 56) = v196;
    }
  }

  else
  {
    v203 = *v6;
    if (v126)
    {
      v174 = *v5 + 160 * (v129 + v13);
      if (*(v174 + 164) >= 1)
      {
        v175 = 0;
        v176 = *v5 + 160 * v13;
        v177 = *(v174 + 216);
        v178 = *(v176 + 56);
        do
        {
          result = memcpy(v177, v178, *(v174 + 160));
          v177 += *(v174 + 176);
          v178 += *(v176 + 16);
          ++v175;
        }

        while (v175 < *(v174 + 164));
      }
    }

    if (v127)
    {
      v179 = *v5 + 160 * (v130 + v13);
      if (*(v179 + 164) >= 1)
      {
        v180 = 0;
        v181 = *v5 + 160 * v13;
        v182 = *(v179 + 216);
        v183 = *(v181 + 56);
        do
        {
          result = memcpy(v182, v183, *(v179 + 160));
          v182 += *(v179 + 176);
          v183 += *(v181 + 16);
          ++v180;
        }

        while (v180 < *(v179 + 164));
      }
    }

    if (v128)
    {
      v184 = *v5 + 160 * (v203 + v13);
      if (*(v184 + 164) >= 1)
      {
        v185 = 0;
        v186 = *v5 + 160 * v13;
        v187 = *(v184 + 216);
        v188 = *(v186 + 56);
        do
        {
          result = memcpy(v187, v188, *(v184 + 160));
          v187 += *(v184 + 176);
          v188 += *(v186 + 16);
          ++v185;
        }

        while (v185 < *(v184 + 164));
      }
    }
  }

  return result;
}

BOOL vp9_denoiser_filter_neon(void *a1, int a2, void *a3, int a4, void *a5, int a6, int a7, unsigned int a8, int a9)
{
  v126 = *MEMORY[0x277D85DE8];
  if (a8 - 5 > 7)
  {
    if (a8 - 3 > 1)
    {
      return 0;
    }

    if (a9 >= 25 || a7 == 0)
    {
      v46 = 4;
    }

    else
    {
      v46 = 5;
    }

    if (a9 >= 25)
    {
      v47 = 3;
    }

    else
    {
      v47 = v46;
    }

    v48 = 4 << b_height_log2_lookup[a8];
    v49 = (v48 >> 1);
    if (v49 < 1)
    {
      v53 = 0uLL;
    }

    else
    {
      v50 = 0;
      v51 = vdupq_n_s8(v47);
      v52 = vdupq_n_s8(v46);
      v53 = 0uLL;
      v54.i64[0] = 0x707070707070707;
      v54.i64[1] = 0x707070707070707;
      v55.i64[0] = 0x1010101010101010;
      v55.i64[1] = 0x1010101010101010;
      v56.i64[0] = 0x202020202020202;
      v56.i64[1] = 0x202020202020202;
      do
      {
        v57 = &v120[v50];
        v58 = *(a1 + a2);
        *v57 = *a1;
        v57[1] = v58;
        v59 = &v125[v50];
        v60 = *(a3 + a4);
        *v59 = *a3;
        v59[1] = v60;
        v61 = *&v120[v50];
        v62 = *&v125[v50];
        v63 = vabdq_u8(v61, v62);
        v64 = vbslq_s8(vcgtq_u8(v52, v63), v63, vaddq_s8(vsubq_s8(v51, vcgtq_u8(v63, v54)), vbicq_s8(v56, vcgtq_u8(v55, v63))));
        v65 = vandq_s8(v64, vcgtq_u8(v62, v61));
        v66 = vandq_s8(v64, vcgtq_u8(v61, v62));
        v67 = vqsubq_u8(vqaddq_u8(v61, v65), v66);
        *&v124[v50] = v67;
        *a5 = v67.i64[0];
        *(a5 + a6) = vextq_s8(v67, v67, 8uLL).u64[0];
        v53 = vaddq_s8(vqsubq_s8(v65, v66), v53);
        a1 = (a1 + 2 * a2);
        a3 = (a3 + 2 * a4);
        a5 = (a5 + 2 * a6);
        v50 += 16;
      }

      while (16 * (v48 >> 1) != v50);
    }

    v100 = vaddlvq_s8(v53);
    v101 = num_pels_log2_lookup[a8];
    if (a7)
    {
      v102 = 3;
    }

    else
    {
      v102 = 2;
    }

    v103 = v102 << v101;
    if (v100 < 0)
    {
      v100 = -v100;
    }

    if (v100 > v103)
    {
      v104 = (v100 - v103) >> v101;
      if (v104 > 2)
      {
        return 0;
      }

      if (v49 >= 1)
      {
        v105 = vdupq_n_s8(v104 + 1);
        v106 = (a5 - v48 * a6);
        v107 = v124;
        v108 = v125;
        v109 = v120;
        do
        {
          v110 = *v109++;
          v111 = v110;
          v112 = *v108++;
          v113 = vminq_u8(vabdq_u8(v111, v112), v105);
          v114 = vandq_s8(v113, vcgtq_u8(v112, v111));
          v115 = vandq_s8(v113, vcgtq_u8(v111, v112));
          v116 = vqaddq_u8(vqsubq_u8(*v107, v114), v115);
          *v107++ = v116;
          v53 = vaddq_s8(vqsubq_s8(v115, v114), v53);
          *v106 = v116.i64[0];
          *(v106 + a6) = vextq_s8(v116, v116, 8uLL).u64[0];
          v106 = (v106 + 2 * a6);
          --v49;
        }

        while (v49);
        v117 = vaddlvq_s8(v53);
        if (v117 >= 0)
        {
          v100 = v117;
        }

        else
        {
          v100 = -v117;
        }
      }

      if (v100 > v103)
      {
        return 0;
      }
    }

    return 1;
  }

  if (a9 >= 25 || a7 == 0)
  {
    v10 = 4;
  }

  else
  {
    v10 = 5;
  }

  if (a9 >= 25)
  {
    v11 = 3;
  }

  else
  {
    v11 = v10;
  }

  v12 = 4 << b_width_log2_lookup[a8];
  v13 = 4 << b_height_log2_lookup[a8];
  v14 = (v12 >> 4);
  if (v14 >= 1)
  {
    v15 = v120;
    v16 = (v12 >> 4);
    do
    {
      *v15 = 0uLL;
      v15 += 4;
      --v16;
    }

    while (v16);
    v17 = &v121;
    v18 = (v12 >> 4);
    do
    {
      *v17 = 0uLL;
      v17 += 8;
      --v18;
    }

    while (v18);
    v19 = &v122;
    v20 = (v12 >> 4);
    do
    {
      *v19 = 0uLL;
      v19 += 8;
      --v20;
    }

    while (v20);
    v21 = &v123;
    v22 = (v12 >> 4);
    do
    {
      *v21 = 0uLL;
      v21 += 8;
      --v22;
    }

    while (v22);
  }

  v23 = (v13 - 1);
  if (v13 < 1)
  {
    v25 = 0;
  }

  else
  {
    if (v14 >= 1)
    {
      v24 = 0;
      v25 = 0;
      v26 = vdupq_n_s8(v11);
      v27 = vdupq_n_s8(v10);
      v28.i64[0] = 0x707070707070707;
      v28.i64[1] = 0x707070707070707;
      v29.i64[0] = 0x1010101010101010;
      v29.i64[1] = 0x1010101010101010;
      v30.i64[0] = 0x202020202020202;
      v30.i64[1] = 0x202020202020202;
      while (1)
      {
        v31 = 0;
        v32 = &v120[v24 & 0xFFFFFFFFFFFFFFF0];
        v33 = v32;
        do
        {
          v34 = *v33;
          v35 = *&a1[v31];
          v36 = *&a3[v31];
          v37 = vabdq_u8(v35, v36);
          v38 = vbslq_s8(vcgtq_u8(v27, v37), v37, vaddq_s8(vsubq_s8(v26, vcgtq_u8(v37, v28)), vbicq_s8(v30, vcgtq_u8(v29, v37))));
          v39 = vandq_s8(v38, vcgtq_u8(v36, v35));
          v40 = vandq_s8(v38, vcgtq_u8(v35, v36));
          *&a5[v31] = vqsubq_u8(vqaddq_u8(v35, v39), v40);
          *v33 = vaddq_s8(vqsubq_s8(v39, v40), v34);
          v33 += 4;
          v31 += 2;
        }

        while (2 * (v12 >> 4) != v31);
        v41 = a8 == 5 && v24 == 7;
        v42 = v41;
        if ((~v24 & 0xF) == 0)
        {
          break;
        }

        v43 = (v12 >> 4);
        if (v42)
        {
          goto LABEL_36;
        }

LABEL_23:
        a1 = (a1 + a2 - v12 + v31 * 8);
        a3 = (a3 + a4 - v12 + v31 * 8);
        a5 = (a5 + a6 - v12 + v31 * 8);
        if (++v24 == v13)
        {
          goto LABEL_54;
        }
      }

      v43 = (v12 >> 4);
      do
      {
LABEL_36:
        v44 = *v32;
        v32 += 4;
        v25 += vaddlvq_s8(v44);
        --v43;
      }

      while (v43);
      goto LABEL_23;
    }

    v25 = 0;
    a1 = (a1 + a2 - v12 + (a2 - v12) * v23);
    a3 = (a3 + a4 - v12 + (a4 - v12) * v23);
    a5 = (a5 + a6 - v12 + (a6 - v12) * v23);
  }

LABEL_54:
  v68 = num_pels_log2_lookup[a8];
  if (a7)
  {
    v69 = 3;
  }

  else
  {
    v69 = 2;
  }

  v70 = v69 << v68;
  if (v25 < 0)
  {
    v25 = -v25;
  }

  v71 = __OFSUB__(v25, v70);
  v72 = v25 - v70;
  if ((v72 < 0) ^ v71 | (v72 == 0))
  {
    return 1;
  }

  v73 = v72 >> v68;
  if (v72 >> v68 <= 2)
  {
    if (v13 < 1)
    {
      v75 = 0;
      goto LABEL_95;
    }

    if (v14 >= 1)
    {
      v74 = 0;
      v75 = 0;
      v76 = v73 + 1;
      v77 = v12;
      v78 = a1 - v13 * a2;
      v79 = a3 - v13 * a4;
      v80 = a5 - v13 * a6;
      v81 = a2 - v77;
      v82 = vdupq_n_s8(v76);
      v83 = a6 - v77;
      do
      {
        v84 = 0;
        v85 = &v120[v74 & 0xFFFFFFFFFFFFFFF0];
        v86 = v85;
        do
        {
          v87 = *v86;
          v88 = *&v78[v84];
          v89 = *&v79[v84];
          v90 = vabdq_u8(v88, v89);
          v91 = vcgtq_u8(v89, v88);
          v92 = vcgtq_u8(v88, v89);
          v93 = vminq_u8(v90, v82);
          v94 = vandq_s8(v93, v91);
          v95 = vandq_s8(v93, v92);
          *&v80[v84] = vqaddq_u8(vqsubq_u8(*&v80[v84], v94), v95);
          *v86 = vaddq_s8(vqsubq_s8(v95, v94), v87);
          v86 += 4;
          v84 += 16;
        }

        while (16 * v14 != v84);
        v97 = a8 != 5 || v74 != 7;
        if ((~v74 & 0xF) == 0 || !v97)
        {
          v98 = v14;
          do
          {
            v99 = *v85;
            v85 += 4;
            v75 += vaddlvq_s8(v99);
            --v98;
          }

          while (v98);
        }

        v78 += v81 + v84;
        v79 += a4 - v77 + v84;
        v80 += v83 + v84;
        ++v74;
      }

      while (v74 != v13);
LABEL_95:
      if (v75 >= 0)
      {
        v119 = v75;
      }

      else
      {
        v119 = -v75;
      }

      return v119 <= v70;
    }

    if (v70 >= 0)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t vp9_decode_block_tokens(uint64_t a1, int a2, uint64_t *a3, int a4, int a5, int a6, int a7)
{
  v10 = 0;
  v11 = a1 + 16;
  v12 = a1 + 13328;
  v13 = (v12 + 136 * a2);
  v14 = v13 + 2 * a7;
  v16 = v13[8];
  v15 = v13[9];
  if (a6 > 1)
  {
    if (a6 == 2)
    {
      v42 = *(a1 + 13800);
      v43 = a4 + 4 <= v42 || v42 == 0;
      v44 = 8 * (a4 + 4 - v42);
      if (v43)
      {
        v45 = 0;
      }

      else
      {
        v45 = v44;
      }

      v46 = *(a1 + 13804);
      v47 = a5 + 4 <= v46 || v46 == 0;
      v48 = 8 * (a5 + 4 - v46);
      if (v47)
      {
        v50 = 0;
      }

      else
      {
        v50 = v48;
      }

      v49 = *(v16 + a4);
      if (*(v15 + a5))
      {
        v51 = (v49 != 0) + 1;
      }

      else
      {
        v51 = v49 != 0;
      }

      v10 = decode_coefs(v12, a2 > 0, *v13, 2u, v14 + 40, v51, *a3, a3[2], v11);
      if (v10 <= 0)
      {
        v52 = 0;
      }

      else
      {
        v52 = 16843009;
      }

      *(v16 + a4) = v52 >> v45;
      *(v15 + a5) = v52 >> v50;
    }

    else if (a6 == 3)
    {
      v28 = *(a1 + 13800);
      v29 = a4 + 8;
      v30 = *(a1 + 13804);
      if (*(v15 + a5))
      {
        v31 = (*(v16 + a4) != 0) + 1;
      }

      else
      {
        v31 = *(v16 + a4) != 0;
      }

      v10 = decode_coefs(v12, a2 > 0, *v13, 3u, v14 + 40, v31, *a3, a3[2], v11);
      v32 = 0x101010101010101;
      if (v10 <= 0)
      {
        v32 = 0;
      }

      v33 = v29 <= v28 || v28 == 0;
      v34 = 8 * (v29 - v28);
      v35 = a5 + 8;
      if (v33)
      {
        v34 = 0;
      }

      v36 = v35 >= v30;
      v37 = v35 - v30;
      v38 = v37 == 0 || !v36 || v30 == 0;
      v39 = 8 * v37;
      *(v16 + a4) = v32 >> v34;
      if (v38)
      {
        v40 = 0;
      }

      else
      {
        v40 = v39;
      }

      *(v15 + a5) = v32 >> v40;
    }
  }

  else if (a6)
  {
    if (a6 == 1)
    {
      v17 = *(a1 + 13800);
      v18 = a4 + 2 <= v17 || v17 == 0;
      v19 = 8 * (a4 + 2 - v17);
      if (v18)
      {
        v20 = 0;
      }

      else
      {
        v20 = v19;
      }

      v21 = *(a1 + 13804);
      v22 = a5 + 2 <= v21 || v21 == 0;
      v23 = 8 * (a5 + 2 - v21);
      if (v22)
      {
        v25 = 0;
      }

      else
      {
        v25 = v23;
      }

      v24 = *(v16 + a4);
      if (*(v15 + a5))
      {
        v26 = (v24 != 0) + 1;
      }

      else
      {
        v26 = v24 != 0;
      }

      v10 = decode_coefs(v12, a2 > 0, *v13, 1u, v14 + 40, v26, *a3, a3[2], v11);
      if (v10 <= 0)
      {
        v27 = 0;
      }

      else
      {
        v27 = 257;
      }

      *(v16 + a4) = v27 >> v20;
      *(v15 + a5) = v27 >> v25;
    }
  }

  else
  {
    if (*(v15 + a5))
    {
      v41 = (*(v16 + a4) != 0) + 1;
    }

    else
    {
      v41 = *(v16 + a4) != 0;
    }

    v10 = decode_coefs(v12, a2 > 0, *v13, 0, v14 + 40, v41, *a3, a3[2], v11);
    *(v15 + a5) = v10 > 0;
    *(v16 + a4) = v10 > 0;
  }

  return v10;
}

uint64_t decode_coefs(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4, unsigned __int16 *a5, unsigned int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = 0;
  v10 = a9;
  v1284 = *MEMORY[0x277D85DE8];
  v11 = a6;
  v12 = *(a1 + 416);
  v13 = (16 << (2 * a4));
  v14 = *(**(a1 + 448) + 8) > 0;
  v15 = *(a1 + 504) + 432 * a4 + 216 * a2 + 108 * (*(**(a1 + 448) + 8) > 0) + 174;
  v1266 = a4 == 3;
  v16 = *(a1 + 624);
  v17 = &vp9_cat6_prob;
  if (v16 == 10)
  {
    v17 = &unk_273BD0132;
  }

  v18 = 14;
  if (v16 == 10)
  {
    v18 = 16;
  }

  v19 = v16 == 12;
  if (v16 == 12)
  {
    v20 = &vp9_cat6_prob_high12;
  }

  else
  {
    v20 = v17;
  }

  v1264 = v20;
  if (v19)
  {
    v21 = 18;
  }

  else
  {
    v21 = v18;
  }

  v1263 = v21;
  v22 = v12 + 2304 * a4 + 1152 * a2 + 576 * (*(**(a1 + 448) + 8) > 0) + 816;
  v1267 = v12 + 576 * a4 + 288 * a2 + 144 * v14 + 10032;
  v23 = *(a9 + 8);
  v24 = *(a9 + 12);
  v25 = *a9;
  if (a4)
  {
    v26 = &vp9_coefband_trans_8x8plus;
  }

  else
  {
    v26 = &vp9_coefband_trans_4x4;
  }

  v27 = a5 + 1;
  v1268 = a9 + 48;
  v28.i64[0] = 0x800000008;
  v28.i64[1] = 0x800000008;
  v29.i64[0] = 0x7F0000007FLL;
  v29.i64[1] = 0x7F0000007FLL;
  v1274 = a7;
  v1275 = a8;
  v1272 = v13;
  v1273 = v12;
  v1270 = v22;
  v1271 = v15;
  v1269 = a5 + 1;
  while (1)
  {
    v30 = *a5;
    v31 = *v26;
    if (v12)
    {
      ++*(v1267 + 24 * *v26 + 4 * v11);
    }

    v32 = (v15 + 18 * v31 + 3 * v11);
    v33 = *v32;
    if ((v24 & 0x80000000) != 0)
    {
      v1280 = *v32;
      *v10 = v25;
      *(v10 + 12) = v24;
      v34 = *(v10 + 24);
      v35 = *(v10 + 16) - v34;
      v36 = *(v10 + 32);
      if (v36)
      {
        if (v35 >= 9)
        {
          v37 = 9;
        }

        else
        {
          v37 = *(v10 + 16) - v34;
        }

        v1276 = v23;
        v38 = v30;
        v39 = v11;
        v36(*(v10 + 40), v34, v1268, v37);
        v11 = v39;
        v30 = v38;
        v23 = v1276;
        v29.i64[0] = 0x7F0000007FLL;
        v29.i64[1] = 0x7F0000007FLL;
        v28.i64[0] = 0x800000008;
        v28.i64[1] = 0x800000008;
        v27 = v1269;
        v22 = v1270;
        v15 = v1271;
        v13 = v1272;
        v12 = v1273;
        a7 = v1274;
        v34 = (a9 + 48);
        a8 = v1275;
      }

      v40 = 8 * v35;
      v41 = 48 - v24;
      if (8 * v35 < 0x41)
      {
        v45 = 56 - v24 - v40;
        if (v45 < 0)
        {
          v43 = v24;
        }

        else
        {
          v43 = v24 + 0x40000000;
        }

        if (v40)
        {
          v46 = 1;
        }

        else
        {
          v46 = v45 <= -1;
        }

        v10 = a9;
        if (v46 && (v47 = v45 & ~(v45 >> 31), v41 >= v47))
        {
          v48 = v47 - 1;
          if (v47 - 1 >= (40 - v24))
          {
            v48 = 40 - v24;
          }

          v49 = 47 - v24 - v48;
          if (v49 >= 0x78)
          {
            v50 = v11;
            v51 = (v49 >> 3) + 1;
            v52 = v25;
            v53 = 0uLL;
            v54 = v43;
            v55 = vdupq_n_s32(v41);
            v56 = vaddq_s32(v55, xmmword_273BC3230);
            v44 = (v34 + (v51 & 0x3FFFFFF0));
            v57 = vaddq_s32(v55, xmmword_273BC3240);
            v41 -= 8 * (v51 & 0x3FFFFFF0);
            v58 = vaddq_s32(v55, xmmword_273BC3250);
            v59 = vaddq_s32(v55, xmmword_273BC3220);
            v60 = v51 & 0x3FFFFFF0;
            v61 = v34;
            v62 = 0uLL;
            v63 = 0uLL;
            v64 = 0uLL;
            v65 = 0uLL;
            v66 = 0uLL;
            v67 = 0uLL;
            v68 = 0uLL;
            v69 = 0uLL;
            v70 = 0uLL;
            do
            {
              v71 = *v61++;
              v72 = vmovl_high_u8(v71);
              v73 = vmovl_high_u16(v72);
              v74.i64[0] = v73.u32[0];
              v74.i64[1] = v73.u32[1];
              v75 = v74;
              v76 = vmovl_u16(*v72.i8);
              v74.i64[0] = v76.u32[2];
              v74.i64[1] = v76.u32[3];
              v77 = v74;
              v78 = vmovl_u8(*v71.i8);
              v79 = vmovl_high_u16(v78);
              v74.i64[0] = v79.u32[2];
              v74.i64[1] = v79.u32[3];
              v80 = v74;
              v74.i64[0] = v73.u32[2];
              v74.i64[1] = v73.u32[3];
              v81 = v74;
              v74.i64[0] = v76.u32[0];
              v74.i64[1] = v76.u32[1];
              v82 = v74;
              v74.i64[0] = v79.u32[0];
              v74.i64[1] = v79.u32[1];
              v83 = v74;
              v84 = vmovl_u16(*v78.i8);
              v74.i64[0] = v84.u32[2];
              v74.i64[1] = v84.u32[3];
              v85 = v74;
              v74.i64[0] = v84.u32[0];
              v74.i64[1] = v84.u32[1];
              v86 = v74;
              v74.i64[0] = v59.u32[0];
              v74.i64[1] = v59.u32[1];
              v87 = vshlq_u64(v86, v74);
              v74.i64[0] = v59.u32[2];
              v74.i64[1] = v59.u32[3];
              v88 = vshlq_u64(v85, v74);
              v74.i64[0] = v58.u32[0];
              v74.i64[1] = v58.u32[1];
              v89 = vshlq_u64(v83, v74);
              v74.i64[0] = v57.u32[0];
              v74.i64[1] = v57.u32[1];
              v90 = vshlq_u64(v82, v74);
              v74.i64[0] = v56.u32[2];
              v74.i64[1] = v56.u32[3];
              v91 = vshlq_u64(v81, v74);
              v74.i64[0] = v58.u32[2];
              v74.i64[1] = v58.u32[3];
              v92 = vshlq_u64(v80, v74);
              v74.i64[0] = v57.u32[2];
              v74.i64[1] = v57.u32[3];
              v93 = vshlq_u64(v77, v74);
              v74.i64[0] = v56.u32[0];
              v74.i64[1] = v56.u32[1];
              v66 = vorrq_s8(vshlq_u64(v75, v74), v66);
              v65 = vorrq_s8(v93, v65);
              v63 = vorrq_s8(v92, v63);
              v67 = vorrq_s8(v91, v67);
              v64 = vorrq_s8(v90, v64);
              v62 = vorrq_s8(v89, v62);
              v53 = vorrq_s8(v88, v53);
              v52 = vorrq_s8(v87, v52);
              v54 = vaddq_s32(v54, v28);
              v68 = vaddq_s32(v68, v28);
              v69 = vaddq_s32(v69, v28);
              v70 = vaddq_s32(v70, v28);
              v59 = vaddq_s32(v59, v29);
              v58 = vaddq_s32(v58, v29);
              v57 = vaddq_s32(v57, v29);
              v56 = vaddq_s32(v56, v29);
              v60 -= 16;
            }

            while (v60);
            v94 = vorrq_s8(vorrq_s8(vorrq_s8(v52, v64), vorrq_s8(v62, v66)), vorrq_s8(vorrq_s8(v53, v65), vorrq_s8(v63, v67)));
            v25 = vorr_s8(*v94.i8, *&vextq_s8(v94, v94, 8uLL));
            v43 = vaddvq_s32(vaddq_s32(vaddq_s32(v54, v69), vaddq_s32(v68, v70)));
            v11 = v50;
            if ((v51 & 0x3FFFFFF0) == v51)
            {
              goto LABEL_43;
            }
          }

          else
          {
            v44 = v34;
          }

          do
          {
            v43 += 8;
            v95 = *v44;
            v44 = (v44 + 1);
            v25 |= v95 << v41;
            v41 -= 8;
          }

          while (v41 >= v47);
        }

        else
        {
          v44 = v34;
        }
      }

      else
      {
        v42 = (v41 & 0x7FFFFFF8) + 8;
        v43 = v42 + v24;
        v44 = (v34 + (v42 >> 3));
        v10 = a9;
        v25 = (bswap64(*v34) >> (56 - (v41 & 0xF8u)) << (v41 & 7)) | *a9;
      }

LABEL_43:
      *(v10 + 24) += v44 - v34;
      *v10 = v25;
      *(v10 + 12) = v43;
      v24 = v43;
      v33 = v1280;
    }

    v96 = ((v23 - 1) * v33 + 256) >> 8;
    v97 = v25 - (v96 << 56);
    if (v25 < v96 << 56)
    {
      break;
    }

    v98 = v23 - v96;
    v99 = vpx_norm[v98];
    v25 = v97 << v99;
    v24 -= v99;
    v9 = v9;
    v23 = v98 << v99;
    v100 = v32[1];
    if ((v24 & 0x80000000) == 0)
    {
      goto LABEL_79;
    }

LABEL_51:
    v1281 = v100;
    *v10 = v25;
    *(v10 + 12) = v24;
    v102 = *(v10 + 24);
    v103 = *(v10 + 16) - v102;
    v104 = *(v10 + 32);
    if (v104)
    {
      if (v103 >= 9)
      {
        v105 = 9;
      }

      else
      {
        v105 = *(v10 + 16) - v102;
      }

      v106 = v30;
      v107 = v23;
      v108 = v9;
      v109 = v32;
      v110 = v31;
      v111 = v11;
      v104(*(v10 + 40), v102, v1268, v105);
      v11 = v111;
      v31 = v110;
      v32 = v109;
      v9 = v108;
      v23 = v107;
      v30 = v106;
      v29.i64[0] = 0x7F0000007FLL;
      v29.i64[1] = 0x7F0000007FLL;
      v28.i64[0] = 0x800000008;
      v28.i64[1] = 0x800000008;
      v27 = v1269;
      v22 = v1270;
      v15 = v1271;
      v13 = v1272;
      v12 = v1273;
      a7 = v1274;
      a8 = v1275;
      v102 = (a9 + 48);
    }

    v112 = 8 * v103;
    v113 = 48 - v24;
    if (8 * v103 < 0x41)
    {
      v117 = 56 - v24 - v112;
      if (v117 < 0)
      {
        v115 = v24;
      }

      else
      {
        v115 = v24 + 0x40000000;
      }

      if (v112)
      {
        v118 = 1;
      }

      else
      {
        v118 = v117 <= -1;
      }

      v119 = v117 & ~(v117 >> 31);
      v120 = !v118 || v113 < v119;
      v10 = a9;
      if (v120)
      {
        v116 = v102;
        v100 = v1281;
      }

      else
      {
        v121 = v119 - 1;
        if (v119 - 1 >= (40 - v24))
        {
          v121 = 40 - v24;
        }

        v122 = 47 - v24 - v121;
        if (v122 >= 0x78)
        {
          v123 = v11;
          v124 = (v122 >> 3) + 1;
          v125 = v25;
          v126 = 0uLL;
          v127 = v115;
          v128 = vdupq_n_s32(v113);
          v129 = vaddq_s32(v128, xmmword_273BC3230);
          v116 = (v102 + (v124 & 0x3FFFFFF0));
          v130 = vaddq_s32(v128, xmmword_273BC3240);
          v113 -= 8 * (v124 & 0x3FFFFFF0);
          v131 = vaddq_s32(v128, xmmword_273BC3250);
          v132 = vaddq_s32(v128, xmmword_273BC3220);
          v133 = v124 & 0x3FFFFFF0;
          v134 = v102;
          v135 = 0uLL;
          v136 = 0uLL;
          v137 = 0uLL;
          v138 = 0uLL;
          v139 = 0uLL;
          v140 = 0uLL;
          v141 = 0uLL;
          v142 = 0uLL;
          v143 = 0uLL;
          do
          {
            v144 = *v134++;
            v145 = vmovl_high_u8(v144);
            v146 = vmovl_high_u16(v145);
            v147.i64[0] = v146.u32[0];
            v147.i64[1] = v146.u32[1];
            v148 = v147;
            v149 = vmovl_u16(*v145.i8);
            v147.i64[0] = v149.u32[2];
            v147.i64[1] = v149.u32[3];
            v150 = v147;
            v151 = vmovl_u8(*v144.i8);
            v152 = vmovl_high_u16(v151);
            v147.i64[0] = v152.u32[2];
            v147.i64[1] = v152.u32[3];
            v153 = v147;
            v147.i64[0] = v146.u32[2];
            v147.i64[1] = v146.u32[3];
            v154 = v147;
            v147.i64[0] = v149.u32[0];
            v147.i64[1] = v149.u32[1];
            v155 = v147;
            v147.i64[0] = v152.u32[0];
            v147.i64[1] = v152.u32[1];
            v156 = v147;
            v157 = vmovl_u16(*v151.i8);
            v147.i64[0] = v157.u32[2];
            v147.i64[1] = v157.u32[3];
            v158 = v147;
            v147.i64[0] = v157.u32[0];
            v147.i64[1] = v157.u32[1];
            v159 = v147;
            v147.i64[0] = v132.u32[0];
            v147.i64[1] = v132.u32[1];
            v160 = vshlq_u64(v159, v147);
            v147.i64[0] = v132.u32[2];
            v147.i64[1] = v132.u32[3];
            v161 = vshlq_u64(v158, v147);
            v147.i64[0] = v131.u32[0];
            v147.i64[1] = v131.u32[1];
            v162 = vshlq_u64(v156, v147);
            v147.i64[0] = v130.u32[0];
            v147.i64[1] = v130.u32[1];
            v163 = vshlq_u64(v155, v147);
            v147.i64[0] = v129.u32[2];
            v147.i64[1] = v129.u32[3];
            v164 = vshlq_u64(v154, v147);
            v147.i64[0] = v131.u32[2];
            v147.i64[1] = v131.u32[3];
            v165 = vshlq_u64(v153, v147);
            v147.i64[0] = v130.u32[2];
            v147.i64[1] = v130.u32[3];
            v166 = vshlq_u64(v150, v147);
            v147.i64[0] = v129.u32[0];
            v147.i64[1] = v129.u32[1];
            v139 = vorrq_s8(vshlq_u64(v148, v147), v139);
            v138 = vorrq_s8(v166, v138);
            v136 = vorrq_s8(v165, v136);
            v140 = vorrq_s8(v164, v140);
            v137 = vorrq_s8(v163, v137);
            v135 = vorrq_s8(v162, v135);
            v126 = vorrq_s8(v161, v126);
            v125 = vorrq_s8(v160, v125);
            v127 = vaddq_s32(v127, v28);
            v141 = vaddq_s32(v141, v28);
            v142 = vaddq_s32(v142, v28);
            v143 = vaddq_s32(v143, v28);
            v132 = vaddq_s32(v132, v29);
            v131 = vaddq_s32(v131, v29);
            v130 = vaddq_s32(v130, v29);
            v129 = vaddq_s32(v129, v29);
            v133 -= 16;
          }

          while (v133);
          v167 = vorrq_s8(vorrq_s8(vorrq_s8(v125, v137), vorrq_s8(v135, v139)), vorrq_s8(vorrq_s8(v126, v138), vorrq_s8(v136, v140)));
          v25 = vorr_s8(*v167.i8, *&vextq_s8(v167, v167, 8uLL));
          v115 = vaddvq_s32(vaddq_s32(vaddq_s32(v127, v142), vaddq_s32(v141, v143)));
          v11 = v123;
          v100 = v1281;
          if ((v124 & 0x3FFFFFF0) == v124)
          {
            goto LABEL_78;
          }
        }

        else
        {
          v116 = v102;
          v100 = v1281;
        }

        do
        {
          v115 += 8;
          v168 = *v116;
          v116 = (v116 + 1);
          v25 |= v168 << v113;
          v113 -= 8;
        }

        while (v113 >= v119);
      }
    }

    else
    {
      v114 = (v113 & 0x7FFFFFF8) + 8;
      v115 = v114 + v24;
      v116 = (v102 + (v114 >> 3));
      v10 = a9;
      v25 = (bswap64(*v102) >> (56 - (v113 & 0xF8u)) << (v113 & 7)) | *a9;
      v100 = v1281;
    }

LABEL_78:
    *(v10 + 24) += v116 - v102;
    *v10 = v25;
    *(v10 + 12) = v115;
    v24 = v115;
LABEL_79:
    while (1)
    {
      ++v26;
      v169 = ((v23 - 1) * v100 + 256) >> 8;
      v170 = v25 - (v169 << 56);
      if (v25 >= v169 << 56)
      {
        break;
      }

      v101 = vpx_norm[v169];
      if (v12)
      {
        ++*(v22 + 96 * v31 + 16 * v11);
      }

      v23 = v169 << v101;
      v25 <<= v101;
      v24 -= v101;
      v30 = *v27;
      v1283[*(a7 + 2 * v9++)] = 0;
      if (v9 >= v13)
      {
        goto LABEL_666;
      }

      v11 = (v1283[*(a8 + 4 * v9)] + v1283[*(a8 + 4 * v9 + 2)] + 1) >> 1;
      v31 = *v26;
      v32 = (v15 + 18 * v31 + v11 + 2 * v11);
      v100 = v32[1];
      if ((v24 & 0x80000000) != 0)
      {
        goto LABEL_51;
      }
    }

    v1282 = v9;
    v171 = v23 - v169;
    v172 = vpx_norm[v171];
    v173 = v170 << v172;
    v174 = v32;
    v175 = v24 - v172;
    v1277 = v174;
    v176 = v174[2];
    v1262 = v11;
    if (((v24 - v172) & 0x80000000) != 0)
    {
      *v10 = v173;
      *(v10 + 12) = v175;
      v177 = *(v10 + 24);
      v178 = *(v10 + 16) - v177;
      v179 = *(v10 + 32);
      if (v179)
      {
        if (v178 >= 9)
        {
          v180 = 9;
        }

        else
        {
          v180 = *(v10 + 16) - v177;
        }

        v181 = v30;
        v179(*(v10 + 40), v177, v1268, v180);
        v30 = v181;
        v29.i64[0] = 0x7F0000007FLL;
        v29.i64[1] = 0x7F0000007FLL;
        v28.i64[0] = 0x800000008;
        v28.i64[1] = 0x800000008;
        v27 = v1269;
        v22 = v1270;
        v15 = v1271;
        v13 = v1272;
        v12 = v1273;
        a7 = v1274;
        a8 = v1275;
        v177 = (a9 + 48);
      }

      v182 = 8 * v178;
      v183 = 48 - v175;
      if (8 * v178 < 0x41)
      {
        v186 = 56 - v182 - v175;
        if (v186 >= 0)
        {
          v175 += 0x40000000;
        }

        if (v182)
        {
          v187 = 1;
        }

        else
        {
          v187 = v186 <= -1;
        }

        v188 = v186 & ~(v186 >> 31);
        v189 = !v187 || v183 < v188;
        v10 = a9;
        if (v189)
        {
          v185 = v177;
        }

        else
        {
          v190 = v172 - v24 + 40;
          if (v190 >= v188 - 1)
          {
            v190 = v188 - 1;
          }

          v191 = v172 - v24 - v190 + 47;
          v185 = v177;
          v192 = v183;
          if (v191 < 0x78)
          {
            goto LABEL_671;
          }

          v193 = (v191 >> 3) + 1;
          v194 = v173;
          v195 = 0uLL;
          v196 = v175;
          v197 = vdupq_n_s32(v183);
          v198 = vaddq_s32(v197, xmmword_273BC3230);
          v185 = (v177 + (v193 & 0x3FFFFFF0));
          v199 = vaddq_s32(v197, xmmword_273BC3240);
          v192 = v183 - 8 * (v193 & 0x3FFFFFF0);
          v200 = vaddq_s32(v197, xmmword_273BC3250);
          v201 = vaddq_s32(v197, xmmword_273BC3220);
          v202 = v193 & 0x3FFFFFF0;
          v203 = v177;
          v204 = 0uLL;
          v205 = 0uLL;
          v206 = 0uLL;
          v207 = 0uLL;
          v208 = 0uLL;
          v209 = 0uLL;
          v210 = 0uLL;
          v211 = 0uLL;
          v212 = 0uLL;
          do
          {
            v213 = *v203++;
            v214 = vmovl_high_u8(v213);
            v215 = vmovl_high_u16(v214);
            v216.i64[0] = v215.u32[0];
            v216.i64[1] = v215.u32[1];
            v217 = v216;
            v218 = vmovl_u16(*v214.i8);
            v216.i64[0] = v218.u32[2];
            v216.i64[1] = v218.u32[3];
            v219 = v216;
            v220 = vmovl_u8(*v213.i8);
            v221 = vmovl_high_u16(v220);
            v216.i64[0] = v221.u32[2];
            v216.i64[1] = v221.u32[3];
            v222 = v216;
            v216.i64[0] = v215.u32[2];
            v216.i64[1] = v215.u32[3];
            v223 = v216;
            v216.i64[0] = v218.u32[0];
            v216.i64[1] = v218.u32[1];
            v224 = v216;
            v216.i64[0] = v221.u32[0];
            v216.i64[1] = v221.u32[1];
            v225 = v216;
            v226 = vmovl_u16(*v220.i8);
            v216.i64[0] = v226.u32[2];
            v216.i64[1] = v226.u32[3];
            v227 = v216;
            v216.i64[0] = v226.u32[0];
            v216.i64[1] = v226.u32[1];
            v228 = v216;
            v216.i64[0] = v201.u32[0];
            v216.i64[1] = v201.u32[1];
            v229 = vshlq_u64(v228, v216);
            v216.i64[0] = v201.u32[2];
            v216.i64[1] = v201.u32[3];
            v230 = vshlq_u64(v227, v216);
            v216.i64[0] = v200.u32[0];
            v216.i64[1] = v200.u32[1];
            v231 = vshlq_u64(v225, v216);
            v216.i64[0] = v199.u32[0];
            v216.i64[1] = v199.u32[1];
            v232 = vshlq_u64(v224, v216);
            v216.i64[0] = v198.u32[2];
            v216.i64[1] = v198.u32[3];
            v233 = vshlq_u64(v223, v216);
            v216.i64[0] = v200.u32[2];
            v216.i64[1] = v200.u32[3];
            v234 = vshlq_u64(v222, v216);
            v216.i64[0] = v199.u32[2];
            v216.i64[1] = v199.u32[3];
            v235 = vshlq_u64(v219, v216);
            v216.i64[0] = v198.u32[0];
            v216.i64[1] = v198.u32[1];
            v208 = vorrq_s8(vshlq_u64(v217, v216), v208);
            v207 = vorrq_s8(v235, v207);
            v205 = vorrq_s8(v234, v205);
            v209 = vorrq_s8(v233, v209);
            v206 = vorrq_s8(v232, v206);
            v204 = vorrq_s8(v231, v204);
            v195 = vorrq_s8(v230, v195);
            v194 = vorrq_s8(v229, v194);
            v196 = vaddq_s32(v196, v28);
            v210 = vaddq_s32(v210, v28);
            v211 = vaddq_s32(v211, v28);
            v212 = vaddq_s32(v212, v28);
            v201 = vaddq_s32(v201, v29);
            v200 = vaddq_s32(v200, v29);
            v199 = vaddq_s32(v199, v29);
            v198 = vaddq_s32(v198, v29);
            v202 -= 16;
          }

          while (v202);
          v236 = vorrq_s8(vorrq_s8(vorrq_s8(v194, v206), vorrq_s8(v204, v208)), vorrq_s8(vorrq_s8(v195, v207), vorrq_s8(v205, v209)));
          v173 = vorr_s8(*v236.i8, *&vextq_s8(v236, v236, 8uLL));
          v175 = vaddvq_s32(vaddq_s32(vaddq_s32(v196, v211), vaddq_s32(v210, v212)));
          if ((v193 & 0x3FFFFFF0) != v193)
          {
LABEL_671:
            do
            {
              v175 += 8;
              v237 = *v185;
              v185 = (v185 + 1);
              v173 |= v237 << v192;
              v192 -= 8;
            }

            while (v192 >= v188);
          }
        }
      }

      else
      {
        v184 = (v183 & 0x7FFFFFF8) + 8;
        v175 += v184;
        v185 = (v177 + (v184 >> 3));
        v10 = a9;
        v173 = (bswap64(*v177) >> (56 - (v183 & 0xF8u)) << (v183 & 7)) | *a9;
      }

      *(v10 + 24) += v185 - v177;
      *v10 = v173;
      *(v10 + 12) = v175;
    }

    v238 = v171 << v172;
    v239 = (((v171 << v172) - 1) * v176 + 256) >> 8;
    v240 = 2 * v1282;
    v241 = v173 - (v239 << 56);
    if (v173 >= v239 << 56)
    {
      v253 = v238 - v239;
      v254 = vpx_norm[(v238 - v239)];
      v255 = v1277[2];
      if (v12)
      {
        ++*(v22 + 96 * v31 + 16 * v1262 + 8);
      }

      v256 = v241 << v254;
      v257 = v175 - v254;
      v258 = &vp9_pareto8_full[v255 - 1];
      v259 = *v258;
      if (((v175 - v254) & 0x80000000) != 0)
      {
        *v10 = v256;
        *(v10 + 12) = v257;
        v260 = *(v10 + 24);
        v261 = *(v10 + 16) - v260;
        v262 = *(v10 + 32);
        if (v262)
        {
          if (v261 >= 9)
          {
            v263 = 9;
          }

          else
          {
            v263 = *(v10 + 16) - v260;
          }

          v264 = v30;
          v265 = v258;
          v262(*(v10 + 40), v260, v1268, v263);
          v258 = v265;
          v240 = 2 * v1282;
          v30 = v264;
          v29.i64[0] = 0x7F0000007FLL;
          v29.i64[1] = 0x7F0000007FLL;
          v28.i64[0] = 0x800000008;
          v28.i64[1] = 0x800000008;
          v27 = v1269;
          v22 = v1270;
          v15 = v1271;
          v13 = v1272;
          v12 = v1273;
          a7 = v1274;
          a8 = v1275;
          v260 = (a9 + 48);
        }

        v266 = 8 * v261;
        v267 = 48 - v257;
        if (8 * v261 < 0x41)
        {
          v270 = 56 - v266 - v257;
          if (v270 >= 0)
          {
            v257 += 0x40000000;
          }

          if (v266)
          {
            v271 = 1;
          }

          else
          {
            v271 = v270 <= -1;
          }

          v10 = a9;
          if (v271 && (v272 = v270 & ~(v270 >> 31), v267 >= v272))
          {
            v273 = v254 - v175 + 40;
            if (v273 >= v272 - 1)
            {
              v273 = v272 - 1;
            }

            v274 = v254 - v175 - v273 + 47;
            v269 = v260;
            v275 = v267;
            if (v274 < 0x78)
            {
              goto LABEL_672;
            }

            v276 = (v274 >> 3) + 1;
            v277 = v256;
            v278 = 0uLL;
            v279 = v257;
            v280 = vdupq_n_s32(v267);
            v281 = vaddq_s32(v280, xmmword_273BC3230);
            v269 = (v260 + (v276 & 0x3FFFFFF0));
            v282 = vaddq_s32(v280, xmmword_273BC3240);
            v275 = v267 - 8 * (v276 & 0x3FFFFFF0);
            v283 = vaddq_s32(v280, xmmword_273BC3250);
            v284 = vaddq_s32(v280, xmmword_273BC3220);
            v285 = v276 & 0x3FFFFFF0;
            v286 = v260;
            v287 = 0uLL;
            v288 = 0uLL;
            v289 = 0uLL;
            v290 = 0uLL;
            v291 = 0uLL;
            v292 = 0uLL;
            v293 = 0uLL;
            v294 = 0uLL;
            v295 = 0uLL;
            do
            {
              v296 = *v286++;
              v297 = vmovl_high_u8(v296);
              v298 = vmovl_high_u16(v297);
              v299.i64[0] = v298.u32[0];
              v299.i64[1] = v298.u32[1];
              v300 = v299;
              v301 = vmovl_u16(*v297.i8);
              v299.i64[0] = v301.u32[2];
              v299.i64[1] = v301.u32[3];
              v302 = v299;
              v303 = vmovl_u8(*v296.i8);
              v304 = vmovl_high_u16(v303);
              v299.i64[0] = v304.u32[2];
              v299.i64[1] = v304.u32[3];
              v305 = v299;
              v299.i64[0] = v298.u32[2];
              v299.i64[1] = v298.u32[3];
              v306 = v299;
              v299.i64[0] = v301.u32[0];
              v299.i64[1] = v301.u32[1];
              v307 = v299;
              v299.i64[0] = v304.u32[0];
              v299.i64[1] = v304.u32[1];
              v308 = v299;
              v309 = vmovl_u16(*v303.i8);
              v299.i64[0] = v309.u32[2];
              v299.i64[1] = v309.u32[3];
              v310 = v299;
              v299.i64[0] = v309.u32[0];
              v299.i64[1] = v309.u32[1];
              v311 = v299;
              v299.i64[0] = v284.u32[0];
              v299.i64[1] = v284.u32[1];
              v312 = vshlq_u64(v311, v299);
              v299.i64[0] = v284.u32[2];
              v299.i64[1] = v284.u32[3];
              v313 = vshlq_u64(v310, v299);
              v299.i64[0] = v283.u32[0];
              v299.i64[1] = v283.u32[1];
              v314 = vshlq_u64(v308, v299);
              v299.i64[0] = v282.u32[0];
              v299.i64[1] = v282.u32[1];
              v315 = vshlq_u64(v307, v299);
              v299.i64[0] = v281.u32[2];
              v299.i64[1] = v281.u32[3];
              v316 = vshlq_u64(v306, v299);
              v299.i64[0] = v283.u32[2];
              v299.i64[1] = v283.u32[3];
              v317 = vshlq_u64(v305, v299);
              v299.i64[0] = v282.u32[2];
              v299.i64[1] = v282.u32[3];
              v318 = vshlq_u64(v302, v299);
              v299.i64[0] = v281.u32[0];
              v299.i64[1] = v281.u32[1];
              v291 = vorrq_s8(vshlq_u64(v300, v299), v291);
              v290 = vorrq_s8(v318, v290);
              v288 = vorrq_s8(v317, v288);
              v292 = vorrq_s8(v316, v292);
              v289 = vorrq_s8(v315, v289);
              v287 = vorrq_s8(v314, v287);
              v278 = vorrq_s8(v313, v278);
              v277 = vorrq_s8(v312, v277);
              v279 = vaddq_s32(v279, v28);
              v293 = vaddq_s32(v293, v28);
              v294 = vaddq_s32(v294, v28);
              v295 = vaddq_s32(v295, v28);
              v284 = vaddq_s32(v284, v29);
              v283 = vaddq_s32(v283, v29);
              v282 = vaddq_s32(v282, v29);
              v281 = vaddq_s32(v281, v29);
              v285 -= 16;
            }

            while (v285);
            v319 = vorrq_s8(vorrq_s8(vorrq_s8(v277, v289), vorrq_s8(v287, v291)), vorrq_s8(vorrq_s8(v278, v290), vorrq_s8(v288, v292)));
            v256 = vorr_s8(*v319.i8, *&vextq_s8(v319, v319, 8uLL));
            v257 = vaddvq_s32(vaddq_s32(vaddq_s32(v279, v294), vaddq_s32(v293, v295)));
            v240 = 2 * v1282;
            if ((v276 & 0x3FFFFFF0) != v276)
            {
LABEL_672:
              do
              {
                v257 += 8;
                v320 = *v269;
                v269 = (v269 + 1);
                v256 |= v320 << v275;
                v275 -= 8;
              }

              while (v275 >= v272);
            }
          }

          else
          {
            v269 = v260;
          }
        }

        else
        {
          v268 = (v267 & 0x7FFFFFF8) + 8;
          v257 += v268;
          v269 = (v260 + (v268 >> 3));
          v10 = a9;
          v256 = (bswap64(*v260) >> (56 - (v267 & 0xF8u)) << (v267 & 7)) | *a9;
        }

        *(v10 + 24) += v269 - v260;
        *v10 = v256;
        *(v10 + 12) = v257;
      }

      v321 = v253 << v254;
      v322 = (((v253 << v254) - 1) * v259 + 256) >> 8;
      v323 = v256 - (v322 << 56);
      if (v256 >= v322 << 56)
      {
        v328 = v321 - v322;
        v329 = vpx_norm[(v321 - v322)];
        v330 = v323 << v329;
        v331 = v257 - v329;
        v332 = v258[3];
        if (((v257 - v329) & 0x80000000) != 0)
        {
          *v10 = v330;
          *(v10 + 12) = v331;
          v333 = *(v10 + 24);
          v334 = *(v10 + 16) - v333;
          v335 = *(v10 + 32);
          if (v335)
          {
            if (v334 >= 9)
            {
              v336 = 9;
            }

            else
            {
              v336 = *(v10 + 16) - v333;
            }

            v1278 = v329;
            v337 = v328;
            v338 = v30;
            v339 = v258;
            v335(*(v10 + 40), v333, v1268, v336);
            v258 = v339;
            v240 = 2 * v1282;
            v30 = v338;
            v328 = v337;
            v329 = v1278;
            v29.i64[0] = 0x7F0000007FLL;
            v29.i64[1] = 0x7F0000007FLL;
            v28.i64[0] = 0x800000008;
            v28.i64[1] = 0x800000008;
            v27 = v1269;
            v22 = v1270;
            v15 = v1271;
            v13 = v1272;
            v12 = v1273;
            a7 = v1274;
            a8 = v1275;
            v333 = (a9 + 48);
          }

          v340 = 8 * v334;
          v341 = 48 - v331;
          if (8 * v334 < 0x41)
          {
            v355 = 56 - v340 - v331;
            if (v355 >= 0)
            {
              v331 += 0x40000000;
            }

            if (v340)
            {
              v356 = 1;
            }

            else
            {
              v356 = v355 <= -1;
            }

            v10 = a9;
            if (v356 && (v357 = v355 & ~(v355 >> 31), v341 >= v357))
            {
              v358 = v329 - v257 + 40;
              if (v358 >= v357 - 1)
              {
                v358 = v357 - 1;
              }

              v359 = v329 - v257 - v358 + 47;
              v343 = v333;
              v360 = v341;
              if (v359 < 0x78)
              {
                goto LABEL_673;
              }

              v361 = (v359 >> 3) + 1;
              v362 = v330;
              v363 = 0uLL;
              v364 = v331;
              v365 = vdupq_n_s32(v341);
              v366 = vaddq_s32(v365, xmmword_273BC3230);
              v343 = (v333 + (v361 & 0x3FFFFFF0));
              v367 = vaddq_s32(v365, xmmword_273BC3240);
              v360 = v341 - 8 * (v361 & 0x3FFFFFF0);
              v368 = vaddq_s32(v365, xmmword_273BC3250);
              v369 = vaddq_s32(v365, xmmword_273BC3220);
              v370 = v361 & 0x3FFFFFF0;
              v371 = v333;
              v372 = 0uLL;
              v373 = 0uLL;
              v374 = 0uLL;
              v375 = 0uLL;
              v376 = 0uLL;
              v377 = 0uLL;
              v378 = 0uLL;
              v379 = 0uLL;
              v380 = 0uLL;
              do
              {
                v381 = *v371++;
                v382 = vmovl_high_u8(v381);
                v383 = vmovl_high_u16(v382);
                v384.i64[0] = v383.u32[0];
                v384.i64[1] = v383.u32[1];
                v385 = v384;
                v386 = vmovl_u16(*v382.i8);
                v384.i64[0] = v386.u32[2];
                v384.i64[1] = v386.u32[3];
                v387 = v384;
                v388 = vmovl_u8(*v381.i8);
                v389 = vmovl_high_u16(v388);
                v384.i64[0] = v389.u32[2];
                v384.i64[1] = v389.u32[3];
                v390 = v384;
                v384.i64[0] = v383.u32[2];
                v384.i64[1] = v383.u32[3];
                v391 = v384;
                v384.i64[0] = v386.u32[0];
                v384.i64[1] = v386.u32[1];
                v392 = v384;
                v384.i64[0] = v389.u32[0];
                v384.i64[1] = v389.u32[1];
                v393 = v384;
                v394 = vmovl_u16(*v388.i8);
                v384.i64[0] = v394.u32[2];
                v384.i64[1] = v394.u32[3];
                v395 = v384;
                v384.i64[0] = v394.u32[0];
                v384.i64[1] = v394.u32[1];
                v396 = v384;
                v384.i64[0] = v369.u32[0];
                v384.i64[1] = v369.u32[1];
                v397 = vshlq_u64(v396, v384);
                v384.i64[0] = v369.u32[2];
                v384.i64[1] = v369.u32[3];
                v398 = vshlq_u64(v395, v384);
                v384.i64[0] = v368.u32[0];
                v384.i64[1] = v368.u32[1];
                v399 = vshlq_u64(v393, v384);
                v384.i64[0] = v367.u32[0];
                v384.i64[1] = v367.u32[1];
                v400 = vshlq_u64(v392, v384);
                v384.i64[0] = v366.u32[2];
                v384.i64[1] = v366.u32[3];
                v401 = vshlq_u64(v391, v384);
                v384.i64[0] = v368.u32[2];
                v384.i64[1] = v368.u32[3];
                v402 = vshlq_u64(v390, v384);
                v384.i64[0] = v367.u32[2];
                v384.i64[1] = v367.u32[3];
                v403 = vshlq_u64(v387, v384);
                v384.i64[0] = v366.u32[0];
                v384.i64[1] = v366.u32[1];
                v376 = vorrq_s8(vshlq_u64(v385, v384), v376);
                v375 = vorrq_s8(v403, v375);
                v373 = vorrq_s8(v402, v373);
                v377 = vorrq_s8(v401, v377);
                v374 = vorrq_s8(v400, v374);
                v372 = vorrq_s8(v399, v372);
                v363 = vorrq_s8(v398, v363);
                v362 = vorrq_s8(v397, v362);
                v364 = vaddq_s32(v364, v28);
                v378 = vaddq_s32(v378, v28);
                v379 = vaddq_s32(v379, v28);
                v380 = vaddq_s32(v380, v28);
                v369 = vaddq_s32(v369, v29);
                v368 = vaddq_s32(v368, v29);
                v367 = vaddq_s32(v367, v29);
                v366 = vaddq_s32(v366, v29);
                v370 -= 16;
              }

              while (v370);
              v404 = vorrq_s8(vorrq_s8(vorrq_s8(v362, v374), vorrq_s8(v372, v376)), vorrq_s8(vorrq_s8(v363, v375), vorrq_s8(v373, v377)));
              v330 = vorr_s8(*v404.i8, *&vextq_s8(v404, v404, 8uLL));
              v331 = vaddvq_s32(vaddq_s32(vaddq_s32(v364, v379), vaddq_s32(v378, v380)));
              v240 = 2 * v1282;
              if ((v361 & 0x3FFFFFF0) != v361)
              {
LABEL_673:
                do
                {
                  v331 += 8;
                  v405 = *v343;
                  v343 = (v343 + 1);
                  v330 |= v405 << v360;
                  v360 -= 8;
                }

                while (v360 >= v357);
              }
            }

            else
            {
              v343 = v333;
            }
          }

          else
          {
            v342 = (v341 & 0x7FFFFFF8) + 8;
            v331 += v342;
            v343 = (v333 + (v342 >> 3));
            v10 = a9;
            v330 = (bswap64(*v333) >> (56 - (v341 & 0xF8u)) << (v341 & 7)) | *a9;
          }

          *(v10 + 24) += v343 - v333;
          *v10 = v330;
          *(v10 + 12) = v331;
        }

        v410 = v328 << v329;
        v411 = (((v328 << v329) - 1) * v332 + 256) >> 8;
        if (v330 < v411 << 56)
        {
          v412 = vpx_norm[v411];
          v413 = v330 << v412;
          v414 = v331 - v412;
          v1283[*(a7 + v240)] = 4;
          v415 = v258[4];
          if (((v331 - v412) & 0x80000000) != 0)
          {
            *v10 = v413;
            *(v10 + 12) = v414;
            v416 = *(v10 + 24);
            v417 = *(v10 + 16) - v416;
            v418 = *(v10 + 32);
            if (v418)
            {
              if (v417 >= 9)
              {
                v419 = 9;
              }

              else
              {
                v419 = *(v10 + 16) - v416;
              }

              v420 = v30;
              v418(*(v10 + 40), v416, v1268, v419);
              v240 = 2 * v1282;
              LOWORD(v30) = v420;
              v29.i64[0] = 0x7F0000007FLL;
              v29.i64[1] = 0x7F0000007FLL;
              v28.i64[0] = 0x800000008;
              v28.i64[1] = 0x800000008;
              v27 = v1269;
              v22 = v1270;
              v15 = v1271;
              v13 = v1272;
              v12 = v1273;
              a7 = v1274;
              a8 = v1275;
              v416 = (a9 + 48);
            }

            v421 = 8 * v417;
            v422 = 48 - v414;
            if (8 * v417 < 0x41)
            {
              v506 = 56 - v421 - v414;
              if (v506 >= 0)
              {
                v414 += 0x40000000;
              }

              if (v421)
              {
                v507 = 1;
              }

              else
              {
                v507 = v506 <= -1;
              }

              v10 = a9;
              if (v507 && (v508 = v506 & ~(v506 >> 31), v422 >= v508))
              {
                v509 = v412 - v331 + 40;
                if (v509 >= v508 - 1)
                {
                  v509 = v508 - 1;
                }

                v510 = v412 - v331 - v509 + 47;
                v424 = v416;
                v511 = v422;
                if (v510 < 0x78)
                {
                  goto LABEL_674;
                }

                v512 = (v510 >> 3) + 1;
                v513 = v413;
                v514 = 0uLL;
                v515 = v414;
                v516 = vdupq_n_s32(v422);
                v517 = vaddq_s32(v516, xmmword_273BC3230);
                v424 = (v416 + (v512 & 0x3FFFFFF0));
                v518 = vaddq_s32(v516, xmmword_273BC3240);
                v511 = v422 - 8 * (v512 & 0x3FFFFFF0);
                v519 = vaddq_s32(v516, xmmword_273BC3250);
                v520 = vaddq_s32(v516, xmmword_273BC3220);
                v521 = v512 & 0x3FFFFFF0;
                v522 = v416;
                v523 = 0uLL;
                v524 = 0uLL;
                v525 = 0uLL;
                v526 = 0uLL;
                v527 = 0uLL;
                v528 = 0uLL;
                v529 = 0uLL;
                v530 = 0uLL;
                v531 = 0uLL;
                do
                {
                  v532 = *v522++;
                  v533 = vmovl_high_u8(v532);
                  v534 = vmovl_high_u16(v533);
                  v535.i64[0] = v534.u32[0];
                  v535.i64[1] = v534.u32[1];
                  v536 = v535;
                  v537 = vmovl_u16(*v533.i8);
                  v535.i64[0] = v537.u32[2];
                  v535.i64[1] = v537.u32[3];
                  v538 = v535;
                  v539 = vmovl_u8(*v532.i8);
                  v540 = vmovl_high_u16(v539);
                  v535.i64[0] = v540.u32[2];
                  v535.i64[1] = v540.u32[3];
                  v541 = v535;
                  v535.i64[0] = v534.u32[2];
                  v535.i64[1] = v534.u32[3];
                  v542 = v535;
                  v535.i64[0] = v537.u32[0];
                  v535.i64[1] = v537.u32[1];
                  v543 = v535;
                  v535.i64[0] = v540.u32[0];
                  v535.i64[1] = v540.u32[1];
                  v544 = v535;
                  v545 = vmovl_u16(*v539.i8);
                  v535.i64[0] = v545.u32[2];
                  v535.i64[1] = v545.u32[3];
                  v546 = v535;
                  v535.i64[0] = v545.u32[0];
                  v535.i64[1] = v545.u32[1];
                  v547 = v535;
                  v535.i64[0] = v520.u32[0];
                  v535.i64[1] = v520.u32[1];
                  v548 = vshlq_u64(v547, v535);
                  v535.i64[0] = v520.u32[2];
                  v535.i64[1] = v520.u32[3];
                  v549 = vshlq_u64(v546, v535);
                  v535.i64[0] = v519.u32[0];
                  v535.i64[1] = v519.u32[1];
                  v550 = vshlq_u64(v544, v535);
                  v535.i64[0] = v518.u32[0];
                  v535.i64[1] = v518.u32[1];
                  v551 = vshlq_u64(v543, v535);
                  v535.i64[0] = v517.u32[2];
                  v535.i64[1] = v517.u32[3];
                  v552 = vshlq_u64(v542, v535);
                  v535.i64[0] = v519.u32[2];
                  v535.i64[1] = v519.u32[3];
                  v553 = vshlq_u64(v541, v535);
                  v535.i64[0] = v518.u32[2];
                  v535.i64[1] = v518.u32[3];
                  v554 = vshlq_u64(v538, v535);
                  v535.i64[0] = v517.u32[0];
                  v535.i64[1] = v517.u32[1];
                  v527 = vorrq_s8(vshlq_u64(v536, v535), v527);
                  v526 = vorrq_s8(v554, v526);
                  v524 = vorrq_s8(v553, v524);
                  v528 = vorrq_s8(v552, v528);
                  v525 = vorrq_s8(v551, v525);
                  v523 = vorrq_s8(v550, v523);
                  v514 = vorrq_s8(v549, v514);
                  v513 = vorrq_s8(v548, v513);
                  v515 = vaddq_s32(v515, v28);
                  v529 = vaddq_s32(v529, v28);
                  v530 = vaddq_s32(v530, v28);
                  v531 = vaddq_s32(v531, v28);
                  v520 = vaddq_s32(v520, v29);
                  v519 = vaddq_s32(v519, v29);
                  v518 = vaddq_s32(v518, v29);
                  v517 = vaddq_s32(v517, v29);
                  v521 -= 16;
                }

                while (v521);
                v555 = vorrq_s8(vorrq_s8(vorrq_s8(v513, v525), vorrq_s8(v523, v527)), vorrq_s8(vorrq_s8(v514, v526), vorrq_s8(v524, v528)));
                v413 = vorr_s8(*v555.i8, *&vextq_s8(v555, v555, 8uLL));
                v414 = vaddvq_s32(vaddq_s32(vaddq_s32(v515, v530), vaddq_s32(v529, v531)));
                v240 = 2 * v1282;
                if ((v512 & 0x3FFFFFF0) != v512)
                {
LABEL_674:
                  do
                  {
                    v414 += 8;
                    v556 = *v424;
                    v424 = (v424 + 1);
                    v413 |= v556 << v511;
                    v511 -= 8;
                  }

                  while (v511 >= v508);
                }
              }

              else
              {
                v424 = v416;
              }
            }

            else
            {
              v423 = (v422 & 0x7FFFFFF8) + 8;
              v414 += v423;
              v424 = (v416 + (v423 >> 3));
              v10 = a9;
              v413 = (bswap64(*v416) >> (56 - (v422 & 0xF8u)) << (v422 & 7)) | *a9;
            }

            *(v10 + 24) += v424 - v416;
            *v10 = v413;
            *(v10 + 12) = v414;
          }

          v659 = v411 << v412;
          v660 = (((v411 << v412) - 1) * v415 + 256) >> 8;
          v661 = v413 - (v660 << 56);
          if (v413 < v660 << 56)
          {
            v662 = vpx_norm[v660];
            v663 = v413 << v662;
            v664 = v414 - v662;
            if ((v414 - v662) < 0)
            {
              *v10 = v663;
              *(v10 + 12) = v664;
              v678 = *(v10 + 24);
              v679 = *(v10 + 16) - v678;
              v680 = *(v10 + 32);
              if (v680)
              {
                if (v679 >= 9)
                {
                  v681 = 9;
                }

                else
                {
                  v681 = *(v10 + 16) - v678;
                }

                v682 = v30;
                v680(*(v10 + 40), v678, v1268, v681);
                v240 = 2 * v1282;
                LOWORD(v30) = v682;
                v29.i64[0] = 0x7F0000007FLL;
                v29.i64[1] = 0x7F0000007FLL;
                v28.i64[0] = 0x800000008;
                v28.i64[1] = 0x800000008;
                v27 = v1269;
                v22 = v1270;
                v15 = v1271;
                v13 = v1272;
                v12 = v1273;
                a7 = v1274;
                a8 = v1275;
                v678 = (a9 + 48);
              }

              v683 = 8 * v679;
              v684 = 48 - v664;
              v247 = v1282;
              if (8 * v679 < 0x41)
              {
                v774 = 56 - v683 - v664;
                if (v774 >= 0)
                {
                  v664 += 0x40000000;
                }

                if (v683)
                {
                  v775 = 1;
                }

                else
                {
                  v775 = v774 <= -1;
                }

                v776 = v774 & ~(v774 >> 31);
                v777 = !v775 || v684 < v776;
                v10 = a9;
                if (v777)
                {
                  v686 = v678;
                }

                else
                {
                  v1027 = v662 - v414 + 40;
                  if (v1027 >= v776 - 1)
                  {
                    v1027 = v776 - 1;
                  }

                  v1028 = v662 - v414 - v1027 + 47;
                  v686 = v678;
                  v1029 = v684;
                  if (v1028 < 0x78)
                  {
                    goto LABEL_675;
                  }

                  v1030 = (v1028 >> 3) + 1;
                  v1031 = v663;
                  v1032 = 0uLL;
                  v1033 = v664;
                  v1034 = vdupq_n_s32(v684);
                  v1035 = vaddq_s32(v1034, xmmword_273BC3230);
                  v686 = (v678 + (v1030 & 0x3FFFFFF0));
                  v1036 = vaddq_s32(v1034, xmmword_273BC3240);
                  v1029 = v684 - 8 * (v1030 & 0x3FFFFFF0);
                  v1037 = vaddq_s32(v1034, xmmword_273BC3250);
                  v1038 = vaddq_s32(v1034, xmmword_273BC3220);
                  v1039 = v1030 & 0x3FFFFFF0;
                  v1040 = v678;
                  v1041 = 0uLL;
                  v1042 = 0uLL;
                  v1043 = 0uLL;
                  v1044 = 0uLL;
                  v1045 = 0uLL;
                  v1046 = 0uLL;
                  v1047 = 0uLL;
                  v1048 = 0uLL;
                  v1049 = 0uLL;
                  do
                  {
                    v1050 = *v1040++;
                    v1051 = vmovl_high_u8(v1050);
                    v1052 = vmovl_high_u16(v1051);
                    v1053.i64[0] = v1052.u32[0];
                    v1053.i64[1] = v1052.u32[1];
                    v1054 = v1053;
                    v1055 = vmovl_u16(*v1051.i8);
                    v1053.i64[0] = v1055.u32[2];
                    v1053.i64[1] = v1055.u32[3];
                    v1056 = v1053;
                    v1057 = vmovl_u8(*v1050.i8);
                    v1058 = vmovl_high_u16(v1057);
                    v1053.i64[0] = v1058.u32[2];
                    v1053.i64[1] = v1058.u32[3];
                    v1059 = v1053;
                    v1053.i64[0] = v1052.u32[2];
                    v1053.i64[1] = v1052.u32[3];
                    v1060 = v1053;
                    v1053.i64[0] = v1055.u32[0];
                    v1053.i64[1] = v1055.u32[1];
                    v1061 = v1053;
                    v1053.i64[0] = v1058.u32[0];
                    v1053.i64[1] = v1058.u32[1];
                    v1062 = v1053;
                    v1063 = vmovl_u16(*v1057.i8);
                    v1053.i64[0] = v1063.u32[2];
                    v1053.i64[1] = v1063.u32[3];
                    v1064 = v1053;
                    v1053.i64[0] = v1063.u32[0];
                    v1053.i64[1] = v1063.u32[1];
                    v1065 = v1053;
                    v1053.i64[0] = v1038.u32[0];
                    v1053.i64[1] = v1038.u32[1];
                    v1066 = vshlq_u64(v1065, v1053);
                    v1053.i64[0] = v1038.u32[2];
                    v1053.i64[1] = v1038.u32[3];
                    v1067 = vshlq_u64(v1064, v1053);
                    v1053.i64[0] = v1037.u32[0];
                    v1053.i64[1] = v1037.u32[1];
                    v1068 = vshlq_u64(v1062, v1053);
                    v1053.i64[0] = v1036.u32[0];
                    v1053.i64[1] = v1036.u32[1];
                    v1069 = vshlq_u64(v1061, v1053);
                    v1053.i64[0] = v1035.u32[2];
                    v1053.i64[1] = v1035.u32[3];
                    v1070 = vshlq_u64(v1060, v1053);
                    v1053.i64[0] = v1037.u32[2];
                    v1053.i64[1] = v1037.u32[3];
                    v1071 = vshlq_u64(v1059, v1053);
                    v1053.i64[0] = v1036.u32[2];
                    v1053.i64[1] = v1036.u32[3];
                    v1072 = vshlq_u64(v1056, v1053);
                    v1053.i64[0] = v1035.u32[0];
                    v1053.i64[1] = v1035.u32[1];
                    v1045 = vorrq_s8(vshlq_u64(v1054, v1053), v1045);
                    v1044 = vorrq_s8(v1072, v1044);
                    v1042 = vorrq_s8(v1071, v1042);
                    v1046 = vorrq_s8(v1070, v1046);
                    v1043 = vorrq_s8(v1069, v1043);
                    v1041 = vorrq_s8(v1068, v1041);
                    v1032 = vorrq_s8(v1067, v1032);
                    v1031 = vorrq_s8(v1066, v1031);
                    v1033 = vaddq_s32(v1033, v28);
                    v1047 = vaddq_s32(v1047, v28);
                    v1048 = vaddq_s32(v1048, v28);
                    v1049 = vaddq_s32(v1049, v28);
                    v1038 = vaddq_s32(v1038, v29);
                    v1037 = vaddq_s32(v1037, v29);
                    v1036 = vaddq_s32(v1036, v29);
                    v1035 = vaddq_s32(v1035, v29);
                    v1039 -= 16;
                  }

                  while (v1039);
                  v1073 = vorrq_s8(vorrq_s8(vorrq_s8(v1031, v1043), vorrq_s8(v1041, v1045)), vorrq_s8(vorrq_s8(v1032, v1044), vorrq_s8(v1042, v1046)));
                  v663 = vorr_s8(*v1073.i8, *&vextq_s8(v1073, v1073, 8uLL));
                  v664 = vaddvq_s32(vaddq_s32(vaddq_s32(v1033, v1048), vaddq_s32(v1047, v1049)));
                  v240 = 2 * v1282;
                  if ((v1030 & 0x3FFFFFF0) != v1030)
                  {
LABEL_675:
                    do
                    {
                      v664 += 8;
                      v1074 = *v686;
                      v686 = (v686 + 1);
                      v663 |= v1074 << v1029;
                      v1029 -= 8;
                    }

                    while (v1029 >= v776);
                  }
                }
              }

              else
              {
                v685 = (v684 & 0x7FFFFFF8) + 8;
                v664 += v685;
                v686 = (v678 + (v685 >> 3));
                v10 = a9;
                v663 = (bswap64(*v678) >> (56 - (v684 & 0xF8u)) << (v684 & 7)) | *a9;
              }

              *(v10 + 24) += v686 - v678;
              *v10 = v663;
              *(v10 + 12) = v664;
            }

            else
            {
              v247 = v1282;
            }

            v1075 = (159 * (v660 << v662) + 97) >> 8;
            v1076 = v663 >= v1075 << 56;
            v1077 = v663 - (v1075 << 56);
            if (v663 >= v1075 << 56)
            {
              v1078 = ((v660 << v662) - v1075);
            }

            else
            {
              v1078 = (159 * (v660 << v662) + 97) >> 8;
            }

            v1079 = vpx_norm[v1078];
            if (v663 >= v1075 << 56)
            {
              LODWORD(v1075) = (v660 << v662) - v1075;
            }

            if (v1076)
            {
              v950 = 6;
            }

            else
            {
              v1077 = v663;
              v950 = 5;
            }

            v243 = v1075 << v1079;
            v244 = v1077 << v1079;
            v245 = v664 - v1079;
            goto LABEL_637;
          }

          v665 = v659 - v660;
          v666 = vpx_norm[v665];
          v667 = v661 << v666;
          v668 = v414 - v666;
          if ((v414 - v666) < 0)
          {
            *v10 = v667;
            *(v10 + 12) = v668;
            v669 = *(v10 + 24);
            v670 = *(v10 + 16) - v669;
            v671 = *(v10 + 32);
            if (v671)
            {
              if (v670 >= 9)
              {
                v672 = 9;
              }

              else
              {
                v672 = *(v10 + 16) - v669;
              }

              v673 = v30;
              v671(*(v10 + 40), v669, v1268, v672);
              v240 = 2 * v1282;
              LOWORD(v30) = v673;
              v29.i64[0] = 0x7F0000007FLL;
              v29.i64[1] = 0x7F0000007FLL;
              v28.i64[0] = 0x800000008;
              v28.i64[1] = 0x800000008;
              v27 = v1269;
              v22 = v1270;
              v15 = v1271;
              v13 = v1272;
              v12 = v1273;
              a7 = v1274;
              a8 = v1275;
              v669 = (a9 + 48);
            }

            v674 = 8 * v670;
            v675 = 48 - v668;
            if (8 * v670 < 0x41)
            {
              v723 = 56 - v674 - v668;
              if (v723 >= 0)
              {
                v668 += 0x40000000;
              }

              if (v674)
              {
                v724 = 1;
              }

              else
              {
                v724 = v723 <= -1;
              }

              v10 = a9;
              if (v724 && (v725 = v723 & ~(v723 >> 31), v675 >= v725))
              {
                v726 = v666 - v414 + 40;
                if (v726 >= v725 - 1)
                {
                  v726 = v725 - 1;
                }

                v727 = v666 - v414 - v726 + 47;
                v677 = v669;
                v728 = v675;
                if (v727 < 0x78)
                {
                  goto LABEL_676;
                }

                v729 = (v727 >> 3) + 1;
                v730 = v667;
                v731 = 0uLL;
                v732 = v668;
                v733 = vdupq_n_s32(v675);
                v734 = vaddq_s32(v733, xmmword_273BC3230);
                v677 = (v669 + (v729 & 0x3FFFFFF0));
                v735 = vaddq_s32(v733, xmmword_273BC3240);
                v728 = v675 - 8 * (v729 & 0x3FFFFFF0);
                v736 = vaddq_s32(v733, xmmword_273BC3250);
                v737 = vaddq_s32(v733, xmmword_273BC3220);
                v738 = v729 & 0x3FFFFFF0;
                v739 = v669;
                v740 = 0uLL;
                v741 = 0uLL;
                v742 = 0uLL;
                v743 = 0uLL;
                v744 = 0uLL;
                v745 = 0uLL;
                v746 = 0uLL;
                v747 = 0uLL;
                v748 = 0uLL;
                do
                {
                  v749 = *v739++;
                  v750 = vmovl_high_u8(v749);
                  v751 = vmovl_high_u16(v750);
                  v752.i64[0] = v751.u32[0];
                  v752.i64[1] = v751.u32[1];
                  v753 = v752;
                  v754 = vmovl_u16(*v750.i8);
                  v752.i64[0] = v754.u32[2];
                  v752.i64[1] = v754.u32[3];
                  v755 = v752;
                  v756 = vmovl_u8(*v749.i8);
                  v757 = vmovl_high_u16(v756);
                  v752.i64[0] = v757.u32[2];
                  v752.i64[1] = v757.u32[3];
                  v758 = v752;
                  v752.i64[0] = v751.u32[2];
                  v752.i64[1] = v751.u32[3];
                  v759 = v752;
                  v752.i64[0] = v754.u32[0];
                  v752.i64[1] = v754.u32[1];
                  v760 = v752;
                  v752.i64[0] = v757.u32[0];
                  v752.i64[1] = v757.u32[1];
                  v761 = v752;
                  v762 = vmovl_u16(*v756.i8);
                  v752.i64[0] = v762.u32[2];
                  v752.i64[1] = v762.u32[3];
                  v763 = v752;
                  v752.i64[0] = v762.u32[0];
                  v752.i64[1] = v762.u32[1];
                  v764 = v752;
                  v752.i64[0] = v737.u32[0];
                  v752.i64[1] = v737.u32[1];
                  v765 = vshlq_u64(v764, v752);
                  v752.i64[0] = v737.u32[2];
                  v752.i64[1] = v737.u32[3];
                  v766 = vshlq_u64(v763, v752);
                  v752.i64[0] = v736.u32[0];
                  v752.i64[1] = v736.u32[1];
                  v767 = vshlq_u64(v761, v752);
                  v752.i64[0] = v735.u32[0];
                  v752.i64[1] = v735.u32[1];
                  v768 = vshlq_u64(v760, v752);
                  v752.i64[0] = v734.u32[2];
                  v752.i64[1] = v734.u32[3];
                  v769 = vshlq_u64(v759, v752);
                  v752.i64[0] = v736.u32[2];
                  v752.i64[1] = v736.u32[3];
                  v770 = vshlq_u64(v758, v752);
                  v752.i64[0] = v735.u32[2];
                  v752.i64[1] = v735.u32[3];
                  v771 = vshlq_u64(v755, v752);
                  v752.i64[0] = v734.u32[0];
                  v752.i64[1] = v734.u32[1];
                  v744 = vorrq_s8(vshlq_u64(v753, v752), v744);
                  v743 = vorrq_s8(v771, v743);
                  v741 = vorrq_s8(v770, v741);
                  v745 = vorrq_s8(v769, v745);
                  v742 = vorrq_s8(v768, v742);
                  v740 = vorrq_s8(v767, v740);
                  v731 = vorrq_s8(v766, v731);
                  v730 = vorrq_s8(v765, v730);
                  v732 = vaddq_s32(v732, v28);
                  v746 = vaddq_s32(v746, v28);
                  v747 = vaddq_s32(v747, v28);
                  v748 = vaddq_s32(v748, v28);
                  v737 = vaddq_s32(v737, v29);
                  v736 = vaddq_s32(v736, v29);
                  v735 = vaddq_s32(v735, v29);
                  v734 = vaddq_s32(v734, v29);
                  v738 -= 16;
                }

                while (v738);
                v772 = vorrq_s8(vorrq_s8(vorrq_s8(v730, v742), vorrq_s8(v740, v744)), vorrq_s8(vorrq_s8(v731, v743), vorrq_s8(v741, v745)));
                v667 = vorr_s8(*v772.i8, *&vextq_s8(v772, v772, 8uLL));
                v668 = vaddvq_s32(vaddq_s32(vaddq_s32(v732, v747), vaddq_s32(v746, v748)));
                v240 = 2 * v1282;
                if ((v729 & 0x3FFFFFF0) != v729)
                {
LABEL_676:
                  do
                  {
                    v668 += 8;
                    v773 = *v677;
                    v677 = (v677 + 1);
                    v667 |= v773 << v728;
                    v728 -= 8;
                  }

                  while (v728 >= v725);
                }
              }

              else
              {
                v677 = v669;
              }
            }

            else
            {
              v676 = (v675 & 0x7FFFFFF8) + 8;
              v668 += v676;
              v677 = (v669 + (v676 >> 3));
              v10 = a9;
              v667 = (bswap64(*v669) >> (56 - (v675 & 0xF8u)) << (v675 & 7)) | *a9;
            }

            *(v10 + 24) += v677 - v669;
            *v10 = v667;
            *(v10 + 12) = v668;
          }

          v833 = v665 << v666;
          v834 = (165 * (v665 << v666) + 91) >> 8;
          v835 = v667 - (v834 << 56);
          if (v667 >= v834 << 56)
          {
            v834 = (v833 - v834);
            v836 = 9;
            v667 = v835;
          }

          else
          {
            v836 = 7;
          }

          v837 = vpx_norm[v834];
          v838 = v667 << v837;
          v839 = v668 - v837;
          if ((v668 - v837) < 0)
          {
            *v10 = v838;
            *(v10 + 12) = v839;
            v840 = *(v10 + 24);
            v841 = *(v10 + 16) - v840;
            v842 = *(v10 + 32);
            if (v842)
            {
              if (v841 >= 9)
              {
                v843 = 9;
              }

              else
              {
                v843 = *(v10 + 16) - v840;
              }

              v844 = v30;
              v842(*(v10 + 40), v840, v1268, v843);
              v240 = 2 * v1282;
              LOWORD(v30) = v844;
              v29.i64[0] = 0x7F0000007FLL;
              v29.i64[1] = 0x7F0000007FLL;
              v28.i64[0] = 0x800000008;
              v28.i64[1] = 0x800000008;
              v27 = v1269;
              v22 = v1270;
              v15 = v1271;
              v13 = v1272;
              v12 = v1273;
              a7 = v1274;
              a8 = v1275;
              v840 = (a9 + 48);
            }

            v845 = 8 * v841;
            v846 = 48 - v839;
            if (8 * v841 < 0x41)
            {
              v849 = 56 - v845 - v839;
              if (v849 >= 0)
              {
                v839 += 0x40000000;
              }

              if (v845)
              {
                v850 = 1;
              }

              else
              {
                v850 = v849 <= -1;
              }

              v10 = a9;
              if (v850 && (v851 = v849 & ~(v849 >> 31), v846 >= v851))
              {
                v852 = v837 - v668 + 40;
                if (v852 >= v851 - 1)
                {
                  v852 = v851 - 1;
                }

                v853 = v837 - v668 - v852 + 47;
                v848 = v840;
                v854 = v846;
                if (v853 < 0x78)
                {
                  goto LABEL_677;
                }

                v855 = (v853 >> 3) + 1;
                v856 = v838;
                v857 = 0uLL;
                v858 = v839;
                v859 = vdupq_n_s32(v846);
                v860 = vaddq_s32(v859, xmmword_273BC3230);
                v848 = (v840 + (v855 & 0x3FFFFFF0));
                v861 = vaddq_s32(v859, xmmword_273BC3240);
                v854 = v846 - 8 * (v855 & 0x3FFFFFF0);
                v862 = vaddq_s32(v859, xmmword_273BC3250);
                v863 = vaddq_s32(v859, xmmword_273BC3220);
                v864 = v855 & 0x3FFFFFF0;
                v865 = v840;
                v866 = 0uLL;
                v867 = 0uLL;
                v868 = 0uLL;
                v869 = 0uLL;
                v870 = 0uLL;
                v871 = 0uLL;
                v872 = 0uLL;
                v873 = 0uLL;
                v874 = 0uLL;
                do
                {
                  v875 = *v865++;
                  v876 = vmovl_high_u8(v875);
                  v877 = vmovl_high_u16(v876);
                  v878.i64[0] = v877.u32[0];
                  v878.i64[1] = v877.u32[1];
                  v879 = v878;
                  v880 = vmovl_u16(*v876.i8);
                  v878.i64[0] = v880.u32[2];
                  v878.i64[1] = v880.u32[3];
                  v881 = v878;
                  v882 = vmovl_u8(*v875.i8);
                  v883 = vmovl_high_u16(v882);
                  v878.i64[0] = v883.u32[2];
                  v878.i64[1] = v883.u32[3];
                  v884 = v878;
                  v878.i64[0] = v877.u32[2];
                  v878.i64[1] = v877.u32[3];
                  v885 = v878;
                  v878.i64[0] = v880.u32[0];
                  v878.i64[1] = v880.u32[1];
                  v886 = v878;
                  v878.i64[0] = v883.u32[0];
                  v878.i64[1] = v883.u32[1];
                  v887 = v878;
                  v888 = vmovl_u16(*v882.i8);
                  v878.i64[0] = v888.u32[2];
                  v878.i64[1] = v888.u32[3];
                  v889 = v878;
                  v878.i64[0] = v888.u32[0];
                  v878.i64[1] = v888.u32[1];
                  v890 = v878;
                  v878.i64[0] = v863.u32[0];
                  v878.i64[1] = v863.u32[1];
                  v891 = vshlq_u64(v890, v878);
                  v878.i64[0] = v863.u32[2];
                  v878.i64[1] = v863.u32[3];
                  v892 = vshlq_u64(v889, v878);
                  v878.i64[0] = v862.u32[0];
                  v878.i64[1] = v862.u32[1];
                  v893 = vshlq_u64(v887, v878);
                  v878.i64[0] = v861.u32[0];
                  v878.i64[1] = v861.u32[1];
                  v894 = vshlq_u64(v886, v878);
                  v878.i64[0] = v860.u32[2];
                  v878.i64[1] = v860.u32[3];
                  v895 = vshlq_u64(v885, v878);
                  v878.i64[0] = v862.u32[2];
                  v878.i64[1] = v862.u32[3];
                  v896 = vshlq_u64(v884, v878);
                  v878.i64[0] = v861.u32[2];
                  v878.i64[1] = v861.u32[3];
                  v897 = vshlq_u64(v881, v878);
                  v878.i64[0] = v860.u32[0];
                  v878.i64[1] = v860.u32[1];
                  v870 = vorrq_s8(vshlq_u64(v879, v878), v870);
                  v869 = vorrq_s8(v897, v869);
                  v867 = vorrq_s8(v896, v867);
                  v871 = vorrq_s8(v895, v871);
                  v868 = vorrq_s8(v894, v868);
                  v866 = vorrq_s8(v893, v866);
                  v857 = vorrq_s8(v892, v857);
                  v856 = vorrq_s8(v891, v856);
                  v858 = vaddq_s32(v858, v28);
                  v872 = vaddq_s32(v872, v28);
                  v873 = vaddq_s32(v873, v28);
                  v874 = vaddq_s32(v874, v28);
                  v863 = vaddq_s32(v863, v29);
                  v862 = vaddq_s32(v862, v29);
                  v861 = vaddq_s32(v861, v29);
                  v860 = vaddq_s32(v860, v29);
                  v864 -= 16;
                }

                while (v864);
                v898 = vorrq_s8(vorrq_s8(vorrq_s8(v856, v868), vorrq_s8(v866, v870)), vorrq_s8(vorrq_s8(v857, v869), vorrq_s8(v867, v871)));
                v838 = vorr_s8(*v898.i8, *&vextq_s8(v898, v898, 8uLL));
                v839 = vaddvq_s32(vaddq_s32(vaddq_s32(v858, v873), vaddq_s32(v872, v874)));
                v240 = 2 * v1282;
                if ((v855 & 0x3FFFFFF0) != v855)
                {
LABEL_677:
                  do
                  {
                    v839 += 8;
                    v899 = *v848;
                    v848 = (v848 + 1);
                    v838 |= v899 << v854;
                    v854 -= 8;
                  }

                  while (v854 >= v851);
                }
              }

              else
              {
                v848 = v840;
              }
            }

            else
            {
              v847 = (v846 & 0x7FFFFFF8) + 8;
              v839 += v847;
              v848 = (v840 + (v847 >> 3));
              v10 = a9;
              v838 = (bswap64(*v840) >> (56 - (v846 & 0xF8u)) << (v846 & 7)) | *a9;
            }

            *(v10 + 24) += v848 - v840;
            *v10 = v838;
            *(v10 + 12) = v839;
          }

          v1023 = (145 * (v834 << v837) + 111) >> 8;
          v1024 = v838 - (v1023 << 56);
          if (v838 >= v1023 << 56)
          {
            v1023 = ((v834 << v837) - v1023);
            v1025 = 1;
            v838 = v1024;
          }

          else
          {
            v1025 = 0;
          }

          v1026 = vpx_norm[v1023];
          v243 = v1023 << v1026;
          v244 = v838 << v1026;
          v245 = v839 - v1026;
          v950 = v836 + v1025;
LABEL_521:
          v247 = v1282;
          goto LABEL_637;
        }

        v425 = v410 - v411;
        v426 = vpx_norm[(v410 - v411)];
        v427 = (v330 - (v411 << 56)) << v426;
        v428 = v331 - v426;
        v1283[*(a7 + v240)] = 5;
        v429 = v258[5];
        if (((v331 - v426) & 0x80000000) != 0)
        {
          *v10 = v427;
          *(v10 + 12) = v428;
          v430 = *(v10 + 24);
          v431 = *(v10 + 16) - v430;
          v432 = *(v10 + 32);
          if (v432)
          {
            if (v431 >= 9)
            {
              v433 = 9;
            }

            else
            {
              v433 = *(v10 + 16) - v430;
            }

            v1279 = v426;
            v434 = v425;
            v435 = v30;
            v436 = v258;
            v432(*(v10 + 40), v430, v1268, v433);
            v258 = v436;
            v240 = 2 * v1282;
            v30 = v435;
            v425 = v434;
            v426 = v1279;
            v29.i64[0] = 0x7F0000007FLL;
            v29.i64[1] = 0x7F0000007FLL;
            v28.i64[0] = 0x800000008;
            v28.i64[1] = 0x800000008;
            v27 = v1269;
            v22 = v1270;
            v15 = v1271;
            v13 = v1272;
            v12 = v1273;
            a7 = v1274;
            a8 = v1275;
            v430 = (a9 + 48);
          }

          v437 = 8 * v431;
          v438 = 48 - v428;
          if (8 * v431 < 0x41)
          {
            v557 = 56 - v437 - v428;
            if (v557 >= 0)
            {
              v428 += 0x40000000;
            }

            if (v437)
            {
              v558 = 1;
            }

            else
            {
              v558 = v557 <= -1;
            }

            v10 = a9;
            if (v558 && (v559 = v557 & ~(v557 >> 31), v438 >= v559))
            {
              v560 = v426 - v331 + 40;
              if (v560 >= v559 - 1)
              {
                v560 = v559 - 1;
              }

              v561 = v426 - v331 - v560 + 47;
              v440 = v430;
              v562 = v438;
              if (v561 < 0x78)
              {
                goto LABEL_678;
              }

              v563 = (v561 >> 3) + 1;
              v564 = v427;
              v565 = 0uLL;
              v566 = v428;
              v567 = vdupq_n_s32(v438);
              v568 = vaddq_s32(v567, xmmword_273BC3230);
              v440 = (v430 + (v563 & 0x3FFFFFF0));
              v569 = vaddq_s32(v567, xmmword_273BC3240);
              v562 = v438 - 8 * (v563 & 0x3FFFFFF0);
              v570 = vaddq_s32(v567, xmmword_273BC3250);
              v571 = vaddq_s32(v567, xmmword_273BC3220);
              v572 = v563 & 0x3FFFFFF0;
              v573 = v430;
              v574 = 0uLL;
              v575 = 0uLL;
              v576 = 0uLL;
              v577 = 0uLL;
              v578 = 0uLL;
              v579 = 0uLL;
              v580 = 0uLL;
              v581 = 0uLL;
              v582 = 0uLL;
              do
              {
                v583 = *v573++;
                v584 = vmovl_high_u8(v583);
                v585 = vmovl_high_u16(v584);
                v586.i64[0] = v585.u32[0];
                v586.i64[1] = v585.u32[1];
                v587 = v586;
                v588 = vmovl_u16(*v584.i8);
                v586.i64[0] = v588.u32[2];
                v586.i64[1] = v588.u32[3];
                v589 = v586;
                v590 = vmovl_u8(*v583.i8);
                v591 = vmovl_high_u16(v590);
                v586.i64[0] = v591.u32[2];
                v586.i64[1] = v591.u32[3];
                v592 = v586;
                v586.i64[0] = v585.u32[2];
                v586.i64[1] = v585.u32[3];
                v593 = v586;
                v586.i64[0] = v588.u32[0];
                v586.i64[1] = v588.u32[1];
                v594 = v586;
                v586.i64[0] = v591.u32[0];
                v586.i64[1] = v591.u32[1];
                v595 = v586;
                v596 = vmovl_u16(*v590.i8);
                v586.i64[0] = v596.u32[2];
                v586.i64[1] = v596.u32[3];
                v597 = v586;
                v586.i64[0] = v596.u32[0];
                v586.i64[1] = v596.u32[1];
                v598 = v586;
                v586.i64[0] = v571.u32[0];
                v586.i64[1] = v571.u32[1];
                v599 = vshlq_u64(v598, v586);
                v586.i64[0] = v571.u32[2];
                v586.i64[1] = v571.u32[3];
                v600 = vshlq_u64(v597, v586);
                v586.i64[0] = v570.u32[0];
                v586.i64[1] = v570.u32[1];
                v601 = vshlq_u64(v595, v586);
                v586.i64[0] = v569.u32[0];
                v586.i64[1] = v569.u32[1];
                v602 = vshlq_u64(v594, v586);
                v586.i64[0] = v568.u32[2];
                v586.i64[1] = v568.u32[3];
                v603 = vshlq_u64(v593, v586);
                v586.i64[0] = v570.u32[2];
                v586.i64[1] = v570.u32[3];
                v604 = vshlq_u64(v592, v586);
                v586.i64[0] = v569.u32[2];
                v586.i64[1] = v569.u32[3];
                v605 = vshlq_u64(v589, v586);
                v586.i64[0] = v568.u32[0];
                v586.i64[1] = v568.u32[1];
                v578 = vorrq_s8(vshlq_u64(v587, v586), v578);
                v577 = vorrq_s8(v605, v577);
                v575 = vorrq_s8(v604, v575);
                v579 = vorrq_s8(v603, v579);
                v576 = vorrq_s8(v602, v576);
                v574 = vorrq_s8(v601, v574);
                v565 = vorrq_s8(v600, v565);
                v564 = vorrq_s8(v599, v564);
                v566 = vaddq_s32(v566, v28);
                v580 = vaddq_s32(v580, v28);
                v581 = vaddq_s32(v581, v28);
                v582 = vaddq_s32(v582, v28);
                v571 = vaddq_s32(v571, v29);
                v570 = vaddq_s32(v570, v29);
                v569 = vaddq_s32(v569, v29);
                v568 = vaddq_s32(v568, v29);
                v572 -= 16;
              }

              while (v572);
              v606 = vorrq_s8(vorrq_s8(vorrq_s8(v564, v576), vorrq_s8(v574, v578)), vorrq_s8(vorrq_s8(v565, v577), vorrq_s8(v575, v579)));
              v427 = vorr_s8(*v606.i8, *&vextq_s8(v606, v606, 8uLL));
              v428 = vaddvq_s32(vaddq_s32(vaddq_s32(v566, v581), vaddq_s32(v580, v582)));
              v240 = 2 * v1282;
              if ((v563 & 0x3FFFFFF0) != v563)
              {
LABEL_678:
                do
                {
                  v428 += 8;
                  v607 = *v440;
                  v440 = (v440 + 1);
                  v427 |= v607 << v562;
                  v562 -= 8;
                }

                while (v562 >= v559);
              }
            }

            else
            {
              v440 = v430;
            }
          }

          else
          {
            v439 = (v438 & 0x7FFFFFF8) + 8;
            v428 += v439;
            v440 = (v430 + (v439 >> 3));
            v10 = a9;
            v427 = (bswap64(*v430) >> (56 - (v438 & 0xF8u)) << (v438 & 7)) | *a9;
          }

          *(v10 + 24) += v440 - v430;
          *v10 = v427;
          *(v10 + 12) = v428;
        }

        v687 = (((v425 << v426) - 1) * v429 + 256) >> 8;
        v688 = v427 - (v687 << 56);
        if (v427 < v687 << 56)
        {
          v689 = vpx_norm[v687];
          v690 = v427 << v689;
          v691 = v428 - v689;
          v692 = v258[6];
          if (((v428 - v689) & 0x80000000) != 0)
          {
            *v10 = v690;
            *(v10 + 12) = v691;
            v693 = *(v10 + 24);
            v694 = *(v10 + 16) - v693;
            v695 = *(v10 + 32);
            if (v695)
            {
              if (v694 >= 9)
              {
                v696 = 9;
              }

              else
              {
                v696 = *(v10 + 16) - v693;
              }

              v697 = v30;
              v695(*(v10 + 40), v693, v1268, v696);
              LOWORD(v30) = v697;
              v29.i64[0] = 0x7F0000007FLL;
              v29.i64[1] = 0x7F0000007FLL;
              v28.i64[0] = 0x800000008;
              v28.i64[1] = 0x800000008;
              v27 = v1269;
              v22 = v1270;
              v15 = v1271;
              v13 = v1272;
              v12 = v1273;
              a7 = v1274;
              a8 = v1275;
              v693 = (a9 + 48);
            }

            v698 = 8 * v694;
            v699 = 48 - v691;
            if (8 * v694 < 0x41)
            {
              v778 = 56 - v698 - v691;
              if (v778 >= 0)
              {
                v691 += 0x40000000;
              }

              if (v698)
              {
                v779 = 1;
              }

              else
              {
                v779 = v778 <= -1;
              }

              v780 = v778 & ~(v778 >> 31);
              v781 = !v779 || v699 < v780;
              v10 = a9;
              if (v781)
              {
                v701 = v693;
              }

              else
              {
                v1080 = v689 - v428 + 40;
                if (v1080 >= v780 - 1)
                {
                  v1080 = v780 - 1;
                }

                v1081 = v689 - v428 - v1080 + 47;
                v701 = v693;
                v1082 = v699;
                if (v1081 < 0x78)
                {
                  goto LABEL_679;
                }

                v1083 = (v1081 >> 3) + 1;
                v1084 = v690;
                v1085 = 0uLL;
                v1086 = v691;
                v1087 = vdupq_n_s32(v699);
                v1088 = vaddq_s32(v1087, xmmword_273BC3230);
                v701 = (v693 + (v1083 & 0x3FFFFFF0));
                v1089 = vaddq_s32(v1087, xmmword_273BC3240);
                v1082 = v699 - 8 * (v1083 & 0x3FFFFFF0);
                v1090 = vaddq_s32(v1087, xmmword_273BC3250);
                v1091 = vaddq_s32(v1087, xmmword_273BC3220);
                v1092 = v1083 & 0x3FFFFFF0;
                v1093 = v693;
                v1094 = 0uLL;
                v1095 = 0uLL;
                v1096 = 0uLL;
                v1097 = 0uLL;
                v1098 = 0uLL;
                v1099 = 0uLL;
                v1100 = 0uLL;
                v1101 = 0uLL;
                v1102 = 0uLL;
                do
                {
                  v1103 = *v1093++;
                  v1104 = vmovl_high_u8(v1103);
                  v1105 = vmovl_high_u16(v1104);
                  v1106.i64[0] = v1105.u32[0];
                  v1106.i64[1] = v1105.u32[1];
                  v1107 = v1106;
                  v1108 = vmovl_u16(*v1104.i8);
                  v1106.i64[0] = v1108.u32[2];
                  v1106.i64[1] = v1108.u32[3];
                  v1109 = v1106;
                  v1110 = vmovl_u8(*v1103.i8);
                  v1111 = vmovl_high_u16(v1110);
                  v1106.i64[0] = v1111.u32[2];
                  v1106.i64[1] = v1111.u32[3];
                  v1112 = v1106;
                  v1106.i64[0] = v1105.u32[2];
                  v1106.i64[1] = v1105.u32[3];
                  v1113 = v1106;
                  v1106.i64[0] = v1108.u32[0];
                  v1106.i64[1] = v1108.u32[1];
                  v1114 = v1106;
                  v1106.i64[0] = v1111.u32[0];
                  v1106.i64[1] = v1111.u32[1];
                  v1115 = v1106;
                  v1116 = vmovl_u16(*v1110.i8);
                  v1106.i64[0] = v1116.u32[2];
                  v1106.i64[1] = v1116.u32[3];
                  v1117 = v1106;
                  v1106.i64[0] = v1116.u32[0];
                  v1106.i64[1] = v1116.u32[1];
                  v1118 = v1106;
                  v1106.i64[0] = v1091.u32[0];
                  v1106.i64[1] = v1091.u32[1];
                  v1119 = vshlq_u64(v1118, v1106);
                  v1106.i64[0] = v1091.u32[2];
                  v1106.i64[1] = v1091.u32[3];
                  v1120 = vshlq_u64(v1117, v1106);
                  v1106.i64[0] = v1090.u32[0];
                  v1106.i64[1] = v1090.u32[1];
                  v1121 = vshlq_u64(v1115, v1106);
                  v1106.i64[0] = v1089.u32[0];
                  v1106.i64[1] = v1089.u32[1];
                  v1122 = vshlq_u64(v1114, v1106);
                  v1106.i64[0] = v1088.u32[2];
                  v1106.i64[1] = v1088.u32[3];
                  v1123 = vshlq_u64(v1113, v1106);
                  v1106.i64[0] = v1090.u32[2];
                  v1106.i64[1] = v1090.u32[3];
                  v1124 = vshlq_u64(v1112, v1106);
                  v1106.i64[0] = v1089.u32[2];
                  v1106.i64[1] = v1089.u32[3];
                  v1125 = vshlq_u64(v1109, v1106);
                  v1106.i64[0] = v1088.u32[0];
                  v1106.i64[1] = v1088.u32[1];
                  v1098 = vorrq_s8(vshlq_u64(v1107, v1106), v1098);
                  v1097 = vorrq_s8(v1125, v1097);
                  v1095 = vorrq_s8(v1124, v1095);
                  v1099 = vorrq_s8(v1123, v1099);
                  v1096 = vorrq_s8(v1122, v1096);
                  v1094 = vorrq_s8(v1121, v1094);
                  v1085 = vorrq_s8(v1120, v1085);
                  v1084 = vorrq_s8(v1119, v1084);
                  v1086 = vaddq_s32(v1086, v28);
                  v1100 = vaddq_s32(v1100, v28);
                  v1101 = vaddq_s32(v1101, v28);
                  v1102 = vaddq_s32(v1102, v28);
                  v1091 = vaddq_s32(v1091, v29);
                  v1090 = vaddq_s32(v1090, v29);
                  v1089 = vaddq_s32(v1089, v29);
                  v1088 = vaddq_s32(v1088, v29);
                  v1092 -= 16;
                }

                while (v1092);
                v1126 = vorrq_s8(vorrq_s8(vorrq_s8(v1084, v1096), vorrq_s8(v1094, v1098)), vorrq_s8(vorrq_s8(v1085, v1097), vorrq_s8(v1095, v1099)));
                v690 = vorr_s8(*v1126.i8, *&vextq_s8(v1126, v1126, 8uLL));
                v691 = vaddvq_s32(vaddq_s32(vaddq_s32(v1086, v1101), vaddq_s32(v1100, v1102)));
                if ((v1083 & 0x3FFFFFF0) != v1083)
                {
LABEL_679:
                  do
                  {
                    v691 += 8;
                    v1127 = *v701;
                    v701 = (v701 + 1);
                    v690 |= v1127 << v1082;
                    v1082 -= 8;
                  }

                  while (v1082 >= v780);
                }
              }
            }

            else
            {
              v700 = (v699 & 0x7FFFFFF8) + 8;
              v691 += v700;
              v701 = (v693 + (v700 >> 3));
              v10 = a9;
              v690 = (bswap64(*v693) >> (56 - (v699 & 0xF8u)) << (v699 & 7)) | *a9;
            }

            *(v10 + 24) += v701 - v693;
            *v10 = v690;
            *(v10 + 12) = v691;
          }

          v1128 = v687 << v689;
          v1129 = (((v687 << v689) - 1) * v692 + 256) >> 8;
          v1130 = v690 - (v1129 << 56);
          if (v690 >= v1129 << 56)
          {
            v1160 = v1128 - v1129;
            v1161 = vpx_norm[v1160];
            v1162 = v1130 << v1161;
            v1163 = v691 - v1161;
            if ((v691 - v1161) < 0)
            {
              *v10 = v1162;
              *(v10 + 12) = v1163;
              v1164 = v30;
              vpx_reader_fill(v10);
              LOWORD(v30) = v1164;
              v29.i64[0] = 0x7F0000007FLL;
              v29.i64[1] = 0x7F0000007FLL;
              v28.i64[0] = 0x800000008;
              v28.i64[1] = 0x800000008;
              v27 = v1269;
              v22 = v1270;
              v15 = v1271;
              v13 = v1272;
              v12 = v1273;
              a7 = v1274;
              a8 = v1275;
              v10 = a9;
              v1162 = *a9;
              v1163 = *(a9 + 12);
            }

            v247 = v1282;
            v1165 = (176 * (v1160 << v1161) + 80) >> 8;
            v1166 = v1162 >= v1165 << 56;
            if (v1162 >= v1165 << 56)
            {
              v1167 = ((v1160 << v1161) - v1165);
            }

            else
            {
              v1167 = (176 * (v1160 << v1161) + 80) >> 8;
            }

            if (v1162 >= v1165 << 56)
            {
              v1168 = (v1160 << v1161) - v1165;
            }

            else
            {
              v1168 = (176 * (v1160 << v1161) + 80) >> 8;
            }

            if (v1162 >= v1165 << 56)
            {
              v1162 -= v1165 << 56;
            }

            if (v1166)
            {
              v1169 = 8;
            }

            else
            {
              v1169 = 0;
            }

            v1170 = vpx_norm[v1167];
            v1171 = v1162 << v1170;
            v1172 = v1163 - v1170;
            if (v1172 < 0)
            {
              *v10 = v1171;
              *(v10 + 12) = v1172;
              v1173 = v30;
              vpx_reader_fill(v10);
              LOWORD(v30) = v1173;
              v29.i64[0] = 0x7F0000007FLL;
              v29.i64[1] = 0x7F0000007FLL;
              v28.i64[0] = 0x800000008;
              v28.i64[1] = 0x800000008;
              v27 = v1269;
              v22 = v1270;
              v15 = v1271;
              v13 = v1272;
              v12 = v1273;
              a7 = v1274;
              a8 = v1275;
              v10 = a9;
              v1171 = *a9;
              v1172 = *(a9 + 12);
            }

            v1174 = (155 * (v1168 << v1170) + 101) >> 8;
            v1175 = v1171 >= v1174 << 56;
            if (v1171 >= v1174 << 56)
            {
              v1176 = (v1168 << v1170) - v1174;
            }

            else
            {
              v1176 = (155 * (v1168 << v1170) + 101) >> 8;
            }

            if (v1171 >= v1174 << 56)
            {
              v1177 = (v1168 << v1170) - v1174;
            }

            else
            {
              v1177 = (155 * (v1168 << v1170) + 101) >> 8;
            }

            if (v1171 >= v1174 << 56)
            {
              v1171 -= v1174 << 56;
            }

            if (v1175)
            {
              v1178 = 4;
            }

            else
            {
              v1178 = 0;
            }

            v1179 = vpx_norm[v1176];
            v1180 = v1171 << v1179;
            v1181 = v1172 - v1179;
            if (v1181 < 0)
            {
              *v10 = v1180;
              *(v10 + 12) = v1181;
              v1182 = v30;
              vpx_reader_fill(v10);
              LOWORD(v30) = v1182;
              v29.i64[0] = 0x7F0000007FLL;
              v29.i64[1] = 0x7F0000007FLL;
              v28.i64[0] = 0x800000008;
              v28.i64[1] = 0x800000008;
              v27 = v1269;
              v22 = v1270;
              v15 = v1271;
              v13 = v1272;
              v12 = v1273;
              a7 = v1274;
              a8 = v1275;
              v10 = a9;
              v1180 = *a9;
              v1181 = *(a9 + 12);
            }

            v1183 = (140 * (v1177 << v1179) + 116) >> 8;
            v1184 = v1180 >= v1183 << 56;
            if (v1180 >= v1183 << 56)
            {
              v1185 = (v1177 << v1179) - v1183;
            }

            else
            {
              v1185 = (140 * (v1177 << v1179) + 116) >> 8;
            }

            if (v1180 >= v1183 << 56)
            {
              v1186 = (v1177 << v1179) - v1183;
            }

            else
            {
              v1186 = (140 * (v1177 << v1179) + 116) >> 8;
            }

            if (v1180 >= v1183 << 56)
            {
              v1180 -= v1183 << 56;
            }

            if (v1184)
            {
              v1187 = 2;
            }

            else
            {
              v1187 = 0;
            }

            v1188 = vpx_norm[v1185];
            v1189 = v1180 << v1188;
            v1190 = v1181 - v1188;
            if (v1190 < 0)
            {
              *v10 = v1189;
              *(v10 + 12) = v1190;
              v1191 = v30;
              vpx_reader_fill(v10);
              LOWORD(v30) = v1191;
              v29.i64[0] = 0x7F0000007FLL;
              v29.i64[1] = 0x7F0000007FLL;
              v28.i64[0] = 0x800000008;
              v28.i64[1] = 0x800000008;
              v27 = v1269;
              v22 = v1270;
              v15 = v1271;
              v13 = v1272;
              v12 = v1273;
              a7 = v1274;
              a8 = v1275;
              v10 = a9;
              v1189 = *a9;
              v1190 = *(a9 + 12);
            }

            v1192 = v1169 | v1178 | v1187;
            v1193 = (135 * (v1186 << v1188) + 121) >> 8;
            v1194 = (v1186 << v1188) - v1193;
            v1195 = v1189 >= v1193 << 56;
            if (v1189 >= v1193 << 56)
            {
              v1196 = (v1186 << v1188) - v1193;
            }

            else
            {
              v1196 = (135 * (v1186 << v1188) + 121) >> 8;
            }

            if (v1189 >= v1193 << 56)
            {
              v1189 -= v1193 << 56;
            }

            else
            {
              v1194 = (135 * (v1186 << v1188) + 121) >> 8;
            }

            v1197 = vpx_norm[v1196];
            v1198 = v1195;
            v243 = v1194 << v1197;
            v244 = v1189 << v1197;
            v245 = v1190 - v1197;
            v950 = v1192 + v1198 + 19;
            v240 = 2 * v1282;
          }

          else
          {
            v1131 = vpx_norm[v1129];
            v1132 = v690 << v1131;
            v1133 = v691 - v1131;
            if ((v691 - v1131) < 0)
            {
              *v10 = v1132;
              *(v10 + 12) = v1133;
              v1134 = v30;
              vpx_reader_fill(v10);
              LOWORD(v30) = v1134;
              v29.i64[0] = 0x7F0000007FLL;
              v29.i64[1] = 0x7F0000007FLL;
              v28.i64[0] = 0x800000008;
              v28.i64[1] = 0x800000008;
              v27 = v1269;
              v22 = v1270;
              v15 = v1271;
              v13 = v1272;
              v12 = v1273;
              a7 = v1274;
              a8 = v1275;
              v10 = a9;
              v1132 = *a9;
              v1133 = *(a9 + 12);
            }

            v247 = v1282;
            v1135 = (173 * (v1129 << v1131) + 83) >> 8;
            v1136 = v1132 >= v1135 << 56;
            if (v1132 >= v1135 << 56)
            {
              v1137 = ((v1129 << v1131) - v1135);
            }

            else
            {
              v1137 = (173 * (v1129 << v1131) + 83) >> 8;
            }

            if (v1132 >= v1135 << 56)
            {
              v1138 = (v1129 << v1131) - v1135;
            }

            else
            {
              v1138 = (173 * (v1129 << v1131) + 83) >> 8;
            }

            if (v1132 >= v1135 << 56)
            {
              v1132 -= v1135 << 56;
            }

            if (v1136)
            {
              v1139 = 4;
            }

            else
            {
              v1139 = 0;
            }

            v1140 = vpx_norm[v1137];
            v1141 = v1132 << v1140;
            v1142 = v1133 - v1140;
            if (v1142 < 0)
            {
              *v10 = v1141;
              *(v10 + 12) = v1142;
              v1143 = v30;
              vpx_reader_fill(v10);
              LOWORD(v30) = v1143;
              v29.i64[0] = 0x7F0000007FLL;
              v29.i64[1] = 0x7F0000007FLL;
              v28.i64[0] = 0x800000008;
              v28.i64[1] = 0x800000008;
              v27 = v1269;
              v22 = v1270;
              v15 = v1271;
              v13 = v1272;
              v12 = v1273;
              a7 = v1274;
              a8 = v1275;
              v10 = a9;
              v1141 = *a9;
              v1142 = *(a9 + 12);
            }

            v1144 = (148 * (v1138 << v1140) + 108) >> 8;
            v1145 = v1141 >= v1144 << 56;
            if (v1141 >= v1144 << 56)
            {
              v1146 = (v1138 << v1140) - v1144;
            }

            else
            {
              v1146 = (148 * (v1138 << v1140) + 108) >> 8;
            }

            if (v1141 >= v1144 << 56)
            {
              v1147 = (v1138 << v1140) - v1144;
            }

            else
            {
              v1147 = (148 * (v1138 << v1140) + 108) >> 8;
            }

            if (v1141 >= v1144 << 56)
            {
              v1141 -= v1144 << 56;
            }

            if (v1145)
            {
              v1148 = 2;
            }

            else
            {
              v1148 = 0;
            }

            v1149 = vpx_norm[v1146];
            v1150 = v1141 << v1149;
            v1151 = v1142 - v1149;
            if (v1151 < 0)
            {
              *v10 = v1150;
              *(v10 + 12) = v1151;
              v1152 = v30;
              vpx_reader_fill(v10);
              LOWORD(v30) = v1152;
              v29.i64[0] = 0x7F0000007FLL;
              v29.i64[1] = 0x7F0000007FLL;
              v28.i64[0] = 0x800000008;
              v28.i64[1] = 0x800000008;
              v27 = v1269;
              v22 = v1270;
              v15 = v1271;
              v13 = v1272;
              v12 = v1273;
              a7 = v1274;
              a8 = v1275;
              v10 = a9;
              v1150 = *a9;
              v1151 = *(a9 + 12);
            }

            v1153 = v1139 | v1148;
            v1154 = (140 * (v1147 << v1149) + 116) >> 8;
            v1155 = (v1147 << v1149) - v1154;
            v1156 = v1150 >= v1154 << 56;
            if (v1150 >= v1154 << 56)
            {
              v1157 = (v1147 << v1149) - v1154;
            }

            else
            {
              v1157 = (140 * (v1147 << v1149) + 116) >> 8;
            }

            if (v1150 >= v1154 << 56)
            {
              v1150 -= v1154 << 56;
            }

            else
            {
              v1155 = (140 * (v1147 << v1149) + 116) >> 8;
            }

            v1158 = vpx_norm[v1157];
            v1159 = v1156;
            v243 = v1155 << v1158;
            v244 = v1150 << v1158;
            v245 = v1151 - v1158;
            v950 = v1153 + v1159 + 11;
            v240 = 2 * v1282;
          }

LABEL_637:
          v246 = (v30 * v950) >> v1266;
          if ((v245 & 0x80000000) == 0)
          {
            goto LABEL_111;
          }

          goto LABEL_638;
        }

        v702 = (v425 << v426) - v687;
        v703 = vpx_norm[v702];
        v704 = v688 << v703;
        v705 = v428 - v703;
        v706 = v258[7];
        if (((v428 - v703) & 0x80000000) != 0)
        {
          *v10 = v704;
          *(v10 + 12) = v705;
          v707 = *(v10 + 24);
          v708 = *(v10 + 16) - v707;
          v709 = *(v10 + 32);
          if (v709)
          {
            if (v708 >= 9)
            {
              v710 = 9;
            }

            else
            {
              v710 = *(v10 + 16) - v707;
            }

            v711 = v30;
            v709(*(v10 + 40), v707, v1268, v710);
            v240 = 2 * v1282;
            v30 = v711;
            v29.i64[0] = 0x7F0000007FLL;
            v29.i64[1] = 0x7F0000007FLL;
            v28.i64[0] = 0x800000008;
            v28.i64[1] = 0x800000008;
            v27 = v1269;
            v22 = v1270;
            v15 = v1271;
            v13 = v1272;
            v12 = v1273;
            a7 = v1274;
            a8 = v1275;
            v707 = (a9 + 48);
          }

          v712 = 8 * v708;
          v713 = 48 - v705;
          if (8 * v708 < 0x41)
          {
            v782 = 56 - v712 - v705;
            if (v782 >= 0)
            {
              v705 += 0x40000000;
            }

            if (v712)
            {
              v783 = 1;
            }

            else
            {
              v783 = v782 <= -1;
            }

            v10 = a9;
            if (v783 && (v784 = v782 & ~(v782 >> 31), v713 >= v784))
            {
              v785 = v703 - v428 + 40;
              if (v785 >= v784 - 1)
              {
                v785 = v784 - 1;
              }

              v786 = v703 - v428 - v785 + 47;
              v715 = v707;
              v787 = v713;
              if (v786 < 0x78)
              {
                goto LABEL_680;
              }

              v788 = (v786 >> 3) + 1;
              v789 = v704;
              v790 = 0uLL;
              v791 = v705;
              v792 = vdupq_n_s32(v713);
              v793 = vaddq_s32(v792, xmmword_273BC3230);
              v715 = (v707 + (v788 & 0x3FFFFFF0));
              v794 = vaddq_s32(v792, xmmword_273BC3240);
              v787 = v713 - 8 * (v788 & 0x3FFFFFF0);
              v795 = vaddq_s32(v792, xmmword_273BC3250);
              v796 = vaddq_s32(v792, xmmword_273BC3220);
              v797 = v788 & 0x3FFFFFF0;
              v798 = v707;
              v799 = 0uLL;
              v800 = 0uLL;
              v801 = 0uLL;
              v802 = 0uLL;
              v803 = 0uLL;
              v804 = 0uLL;
              v805 = 0uLL;
              v806 = 0uLL;
              v807 = 0uLL;
              do
              {
                v808 = *v798++;
                v809 = vmovl_high_u8(v808);
                v810 = vmovl_high_u16(v809);
                v811.i64[0] = v810.u32[0];
                v811.i64[1] = v810.u32[1];
                v812 = v811;
                v813 = vmovl_u16(*v809.i8);
                v811.i64[0] = v813.u32[2];
                v811.i64[1] = v813.u32[3];
                v814 = v811;
                v815 = vmovl_u8(*v808.i8);
                v816 = vmovl_high_u16(v815);
                v811.i64[0] = v816.u32[2];
                v811.i64[1] = v816.u32[3];
                v817 = v811;
                v811.i64[0] = v810.u32[2];
                v811.i64[1] = v810.u32[3];
                v818 = v811;
                v811.i64[0] = v813.u32[0];
                v811.i64[1] = v813.u32[1];
                v819 = v811;
                v811.i64[0] = v816.u32[0];
                v811.i64[1] = v816.u32[1];
                v820 = v811;
                v821 = vmovl_u16(*v815.i8);
                v811.i64[0] = v821.u32[2];
                v811.i64[1] = v821.u32[3];
                v822 = v811;
                v811.i64[0] = v821.u32[0];
                v811.i64[1] = v821.u32[1];
                v823 = v811;
                v811.i64[0] = v796.u32[0];
                v811.i64[1] = v796.u32[1];
                v824 = vshlq_u64(v823, v811);
                v811.i64[0] = v796.u32[2];
                v811.i64[1] = v796.u32[3];
                v825 = vshlq_u64(v822, v811);
                v811.i64[0] = v795.u32[0];
                v811.i64[1] = v795.u32[1];
                v826 = vshlq_u64(v820, v811);
                v811.i64[0] = v794.u32[0];
                v811.i64[1] = v794.u32[1];
                v827 = vshlq_u64(v819, v811);
                v811.i64[0] = v793.u32[2];
                v811.i64[1] = v793.u32[3];
                v828 = vshlq_u64(v818, v811);
                v811.i64[0] = v795.u32[2];
                v811.i64[1] = v795.u32[3];
                v829 = vshlq_u64(v817, v811);
                v811.i64[0] = v794.u32[2];
                v811.i64[1] = v794.u32[3];
                v830 = vshlq_u64(v814, v811);
                v811.i64[0] = v793.u32[0];
                v811.i64[1] = v793.u32[1];
                v803 = vorrq_s8(vshlq_u64(v812, v811), v803);
                v802 = vorrq_s8(v830, v802);
                v800 = vorrq_s8(v829, v800);
                v804 = vorrq_s8(v828, v804);
                v801 = vorrq_s8(v827, v801);
                v799 = vorrq_s8(v826, v799);
                v790 = vorrq_s8(v825, v790);
                v789 = vorrq_s8(v824, v789);
                v791 = vaddq_s32(v791, v28);
                v805 = vaddq_s32(v805, v28);
                v806 = vaddq_s32(v806, v28);
                v807 = vaddq_s32(v807, v28);
                v796 = vaddq_s32(v796, v29);
                v795 = vaddq_s32(v795, v29);
                v794 = vaddq_s32(v794, v29);
                v793 = vaddq_s32(v793, v29);
                v797 -= 16;
              }

              while (v797);
              v831 = vorrq_s8(vorrq_s8(vorrq_s8(v789, v801), vorrq_s8(v799, v803)), vorrq_s8(vorrq_s8(v790, v802), vorrq_s8(v800, v804)));
              v704 = vorr_s8(*v831.i8, *&vextq_s8(v831, v831, 8uLL));
              v705 = vaddvq_s32(vaddq_s32(vaddq_s32(v791, v806), vaddq_s32(v805, v807)));
              v240 = 2 * v1282;
              if ((v788 & 0x3FFFFFF0) != v788)
              {
LABEL_680:
                do
                {
                  v705 += 8;
                  v832 = *v715;
                  v715 = (v715 + 1);
                  v704 |= v832 << v787;
                  v787 -= 8;
                }

                while (v787 >= v784);
              }
            }

            else
            {
              v715 = v707;
            }
          }

          else
          {
            v714 = (v713 & 0x7FFFFFF8) + 8;
            v705 += v714;
            v715 = (v707 + (v714 >> 3));
            v10 = a9;
            v704 = (bswap64(*v707) >> (56 - (v713 & 0xF8u)) << (v713 & 7)) | *a9;
          }

          *(v10 + 24) += v715 - v707;
          *v10 = v704;
          *(v10 + 12) = v705;
        }

        v900 = v702 << v703;
        v901 = (((v702 << v703) - 1) * v706 + 256) >> 8;
        v902 = v704 - (v901 << 56);
        if (v704 < v901 << 56)
        {
          v903 = vpx_norm[v901];
          v904 = v704 << v903;
          v905 = v705 - v903;
          if ((v705 - v903) < 0)
          {
            *v10 = v904;
            *(v10 + 12) = v905;
            v906 = v30;
            vpx_reader_fill(v10);
            LOWORD(v30) = v906;
            v29.i64[0] = 0x7F0000007FLL;
            v29.i64[1] = 0x7F0000007FLL;
            v28.i64[0] = 0x800000008;
            v28.i64[1] = 0x800000008;
            v27 = v1269;
            v22 = v1270;
            v15 = v1271;
            v13 = v1272;
            v12 = v1273;
            a7 = v1274;
            a8 = v1275;
            v10 = a9;
            v904 = *a9;
            v905 = *(a9 + 12);
          }

          v907 = (180 * (v901 << v903) + 76) >> 8;
          v908 = v904 >= v907 << 56;
          if (v904 >= v907 << 56)
          {
            v909 = ((v901 << v903) - v907);
          }

          else
          {
            v909 = (180 * (v901 << v903) + 76) >> 8;
          }

          if (v904 >= v907 << 56)
          {
            v910 = (v901 << v903) - v907;
          }

          else
          {
            v910 = (180 * (v901 << v903) + 76) >> 8;
          }

          if (v904 >= v907 << 56)
          {
            v904 -= v907 << 56;
          }

          if (v908)
          {
            v911 = 16;
          }

          else
          {
            v911 = 0;
          }

          v912 = vpx_norm[v909];
          v913 = v904 << v912;
          v914 = v905 - v912;
          if (v914 < 0)
          {
            *v10 = v913;
            *(v10 + 12) = v914;
            v915 = v30;
            vpx_reader_fill(v10);
            LOWORD(v30) = v915;
            v29.i64[0] = 0x7F0000007FLL;
            v29.i64[1] = 0x7F0000007FLL;
            v28.i64[0] = 0x800000008;
            v28.i64[1] = 0x800000008;
            v27 = v1269;
            v22 = v1270;
            v15 = v1271;
            v13 = v1272;
            v12 = v1273;
            a7 = v1274;
            a8 = v1275;
            v10 = a9;
            v913 = *a9;
            v914 = *(a9 + 12);
          }

          v916 = (157 * (v910 << v912) + 99) >> 8;
          v917 = v913 >= v916 << 56;
          if (v913 >= v916 << 56)
          {
            v918 = (v910 << v912) - v916;
          }

          else
          {
            v918 = (157 * (v910 << v912) + 99) >> 8;
          }

          if (v913 >= v916 << 56)
          {
            v919 = (v910 << v912) - v916;
          }

          else
          {
            v919 = (157 * (v910 << v912) + 99) >> 8;
          }

          if (v913 >= v916 << 56)
          {
            v913 -= v916 << 56;
          }

          if (v917)
          {
            v920 = 8;
          }

          else
          {
            v920 = 0;
          }

          v921 = vpx_norm[v918];
          v922 = v913 << v921;
          v923 = v914 - v921;
          if (v923 < 0)
          {
            *v10 = v922;
            *(v10 + 12) = v923;
            v924 = v30;
            vpx_reader_fill(v10);
            LOWORD(v30) = v924;
            v29.i64[0] = 0x7F0000007FLL;
            v29.i64[1] = 0x7F0000007FLL;
            v28.i64[0] = 0x800000008;
            v28.i64[1] = 0x800000008;
            v27 = v1269;
            v22 = v1270;
            v15 = v1271;
            v13 = v1272;
            v12 = v1273;
            a7 = v1274;
            a8 = v1275;
            v10 = a9;
            v922 = *a9;
            v923 = *(a9 + 12);
          }

          v925 = (141 * (v919 << v921) + 115) >> 8;
          v926 = v922 >= v925 << 56;
          if (v922 >= v925 << 56)
          {
            v927 = (v919 << v921) - v925;
          }

          else
          {
            v927 = (141 * (v919 << v921) + 115) >> 8;
          }

          if (v922 >= v925 << 56)
          {
            v928 = (v919 << v921) - v925;
          }

          else
          {
            v928 = (141 * (v919 << v921) + 115) >> 8;
          }

          if (v922 >= v925 << 56)
          {
            v922 -= v925 << 56;
          }

          if (v926)
          {
            v929 = 4;
          }

          else
          {
            v929 = 0;
          }

          v930 = vpx_norm[v927];
          v931 = v922 << v930;
          v932 = v923 - v930;
          if (v932 < 0)
          {
            *v10 = v931;
            *(v10 + 12) = v932;
            v933 = v30;
            vpx_reader_fill(v10);
            LOWORD(v30) = v933;
            v29.i64[0] = 0x7F0000007FLL;
            v29.i64[1] = 0x7F0000007FLL;
            v28.i64[0] = 0x800000008;
            v28.i64[1] = 0x800000008;
            v27 = v1269;
            v22 = v1270;
            v15 = v1271;
            v13 = v1272;
            v12 = v1273;
            a7 = v1274;
            a8 = v1275;
            v10 = a9;
            v931 = *a9;
            v932 = *(a9 + 12);
          }

          v934 = (134 * (v928 << v930) + 122) >> 8;
          v935 = v931 >= v934 << 56;
          if (v931 >= v934 << 56)
          {
            v936 = (v928 << v930) - v934;
          }

          else
          {
            v936 = (134 * (v928 << v930) + 122) >> 8;
          }

          if (v931 >= v934 << 56)
          {
            v937 = (v928 << v930) - v934;
          }

          else
          {
            v937 = (134 * (v928 << v930) + 122) >> 8;
          }

          if (v931 >= v934 << 56)
          {
            v931 -= v934 << 56;
          }

          if (v935)
          {
            v938 = 2;
          }

          else
          {
            v938 = 0;
          }

          v939 = vpx_norm[v936];
          v940 = v931 << v939;
          v941 = v932 - v939;
          if (v941 < 0)
          {
            *v10 = v940;
            *(v10 + 12) = v941;
            v942 = v30;
            vpx_reader_fill(v10);
            LOWORD(v30) = v942;
            v29.i64[0] = 0x7F0000007FLL;
            v29.i64[1] = 0x7F0000007FLL;
            v28.i64[0] = 0x800000008;
            v28.i64[1] = 0x800000008;
            v27 = v1269;
            v22 = v1270;
            v15 = v1271;
            v13 = v1272;
            v12 = v1273;
            a7 = v1274;
            a8 = v1275;
            v10 = a9;
            v940 = *a9;
            v941 = *(a9 + 12);
          }

          v943 = v911 | v920 | v929 | v938;
          v944 = (130 * (v937 << v939) + 126) >> 8;
          v945 = (v937 << v939) - v944;
          v946 = v940 >= v944 << 56;
          if (v940 >= v944 << 56)
          {
            v947 = (v937 << v939) - v944;
          }

          else
          {
            v947 = (130 * (v937 << v939) + 126) >> 8;
          }

          if (v940 >= v944 << 56)
          {
            v940 -= v944 << 56;
          }

          else
          {
            v945 = (130 * (v937 << v939) + 126) >> 8;
          }

          v948 = vpx_norm[v947];
          v949 = v946;
          v243 = v945 << v948;
          v244 = v940 << v948;
          v245 = v941 - v948;
          v950 = v943 + v949 + 35;
          v240 = 2 * v1282;
          goto LABEL_521;
        }

        v951 = 0;
        v952 = 0;
        v953 = v900 - v901;
        v954 = vpx_norm[v953];
        v243 = v953 << v954;
        v244 = v902 << v954;
        v245 = v705 - v954;
        v247 = v1282;
        while (2)
        {
          v964 = v1264[v951];
          if ((v245 & 0x80000000) != 0)
          {
            *v10 = v244;
            *(v10 + 12) = v245;
            v965 = *(v10 + 24);
            v966 = *(v10 + 16) - v965;
            v967 = *(v10 + 32);
            if (v967)
            {
              if (v966 >= 9)
              {
                v968 = 9;
              }

              else
              {
                v968 = *(v10 + 16) - v965;
              }

              v969 = v30;
              v967(*(v10 + 40), v965, v1268, v968);
              v240 = 2 * v1282;
              v30 = v969;
              v29.i64[0] = 0x7F0000007FLL;
              v29.i64[1] = 0x7F0000007FLL;
              v28.i64[0] = 0x800000008;
              v28.i64[1] = 0x800000008;
              v27 = v1269;
              v22 = v1270;
              v15 = v1271;
              v13 = v1272;
              v12 = v1273;
              a7 = v1274;
              a8 = v1275;
              v965 = (a9 + 48);
              v247 = v1282;
            }

            v970 = 8 * v966;
            v971 = 48 - v245;
            if (8 * v966 >= 0x41)
            {
              v955 = (v971 & 0x7FFFFFF8) + 8;
              v956 = v955 + v245;
              v957 = (v965 + (v955 >> 3));
              v10 = a9;
              v244 = (bswap64(*v965) >> (56 - (v971 & 0xF8u)) << (v971 & 7)) | *a9;
            }

            else
            {
              v972 = 56 - v245 - v970;
              if (v972 < 0)
              {
                v956 = v245;
              }

              else
              {
                v956 = v245 + 0x40000000;
              }

              if (v970)
              {
                v973 = 1;
              }

              else
              {
                v973 = v972 <= -1;
              }

              v974 = v972 & ~(v972 >> 31);
              v975 = !v973 || v971 < v974;
              v10 = a9;
              if (v975)
              {
                v957 = v965;
              }

              else
              {
                v976 = v974 - 1;
                if (v974 - 1 >= (40 - v245))
                {
                  v976 = 40 - v245;
                }

                v977 = 47 - v245 - v976;
                if (v977 < 0x78)
                {
                  v957 = v965;
                  goto LABEL_512;
                }

                v978 = (v977 >> 3) + 1;
                v979 = v244;
                v980 = 0uLL;
                v981 = v956;
                v982 = vdupq_n_s32(v971);
                v983 = vaddq_s32(v982, xmmword_273BC3230);
                v957 = (v965 + (v978 & 0x3FFFFFF0));
                v984 = vaddq_s32(v982, xmmword_273BC3240);
                v971 -= 8 * (v978 & 0x3FFFFFF0);
                v985 = vaddq_s32(v982, xmmword_273BC3250);
                v986 = vaddq_s32(v982, xmmword_273BC3220);
                v987 = v978 & 0x3FFFFFF0;
                v988 = v965;
                v989 = 0uLL;
                v990 = 0uLL;
                v991 = 0uLL;
                v992 = 0uLL;
                v993 = 0uLL;
                v994 = 0uLL;
                v995 = 0uLL;
                v996 = 0uLL;
                v997 = 0uLL;
                do
                {
                  v998 = *v988++;
                  v999 = vmovl_high_u8(v998);
                  v1000 = vmovl_high_u16(v999);
                  v1001.i64[0] = v1000.u32[0];
                  v1001.i64[1] = v1000.u32[1];
                  v1002 = v1001;
                  v1003 = vmovl_u16(*v999.i8);
                  v1001.i64[0] = v1003.u32[2];
                  v1001.i64[1] = v1003.u32[3];
                  v1004 = v1001;
                  v1005 = vmovl_u8(*v998.i8);
                  v1006 = vmovl_high_u16(v1005);
                  v1001.i64[0] = v1006.u32[2];
                  v1001.i64[1] = v1006.u32[3];
                  v1007 = v1001;
                  v1001.i64[0] = v1000.u32[2];
                  v1001.i64[1] = v1000.u32[3];
                  v1008 = v1001;
                  v1001.i64[0] = v1003.u32[0];
                  v1001.i64[1] = v1003.u32[1];
                  v1009 = v1001;
                  v1001.i64[0] = v1006.u32[0];
                  v1001.i64[1] = v1006.u32[1];
                  v1010 = v1001;
                  v1011 = vmovl_u16(*v1005.i8);
                  v1001.i64[0] = v1011.u32[2];
                  v1001.i64[1] = v1011.u32[3];
                  v1012 = v1001;
                  v1001.i64[0] = v1011.u32[0];
                  v1001.i64[1] = v1011.u32[1];
                  v1013 = v1001;
                  v1001.i64[0] = v986.u32[0];
                  v1001.i64[1] = v986.u32[1];
                  v1014 = vshlq_u64(v1013, v1001);
                  v1001.i64[0] = v986.u32[2];
                  v1001.i64[1] = v986.u32[3];
                  v1015 = vshlq_u64(v1012, v1001);
                  v1001.i64[0] = v985.u32[0];
                  v1001.i64[1] = v985.u32[1];
                  v1016 = vshlq_u64(v1010, v1001);
                  v1001.i64[0] = v984.u32[0];
                  v1001.i64[1] = v984.u32[1];
                  v1017 = vshlq_u64(v1009, v1001);
                  v1001.i64[0] = v983.u32[2];
                  v1001.i64[1] = v983.u32[3];
                  v1018 = vshlq_u64(v1008, v1001);
                  v1001.i64[0] = v985.u32[2];
                  v1001.i64[1] = v985.u32[3];
                  v1019 = vshlq_u64(v1007, v1001);
                  v1001.i64[0] = v984.u32[2];
                  v1001.i64[1] = v984.u32[3];
                  v1020 = vshlq_u64(v1004, v1001);
                  v1001.i64[0] = v983.u32[0];
                  v1001.i64[1] = v983.u32[1];
                  v993 = vorrq_s8(vshlq_u64(v1002, v1001), v993);
                  v992 = vorrq_s8(v1020, v992);
                  v990 = vorrq_s8(v1019, v990);
                  v994 = vorrq_s8(v1018, v994);
                  v991 = vorrq_s8(v1017, v991);
                  v989 = vorrq_s8(v1016, v989);
                  v980 = vorrq_s8(v1015, v980);
                  v979 = vorrq_s8(v1014, v979);
                  v981 = vaddq_s32(v981, v28);
                  v995 = vaddq_s32(v995, v28);
                  v996 = vaddq_s32(v996, v28);
                  v997 = vaddq_s32(v997, v28);
                  v986 = vaddq_s32(v986, v29);
                  v985 = vaddq_s32(v985, v29);
                  v984 = vaddq_s32(v984, v29);
                  v983 = vaddq_s32(v983, v29);
                  v987 -= 16;
                }

                while (v987);
                v1021 = vorrq_s8(vorrq_s8(vorrq_s8(v979, v991), vorrq_s8(v989, v993)), vorrq_s8(vorrq_s8(v980, v992), vorrq_s8(v990, v994)));
                v244 = vorr_s8(*v1021.i8, *&vextq_s8(v1021, v1021, 8uLL));
                v956 = vaddvq_s32(vaddq_s32(vaddq_s32(v981, v996), vaddq_s32(v995, v997)));
                v240 = 2 * v1282;
                if ((v978 & 0x3FFFFFF0) != v978)
                {
                  do
                  {
LABEL_512:
                    v956 += 8;
                    v1022 = *v957;
                    v957 = (v957 + 1);
                    v244 |= v1022 << v971;
                    v971 -= 8;
                  }

                  while (v971 >= v974);
                }
              }
            }

            *(v10 + 24) += v957 - v965;
            *v10 = v244;
            *(v10 + 12) = v956;
            v245 = v956;
          }

          v958 = ((v243 - 1) * v964 + 256) >> 8;
          v959 = v244 >= v958 << 56;
          v960 = v244 - (v958 << 56);
          if (v244 >= v958 << 56)
          {
            v961 = v243 - v958;
          }

          else
          {
            v961 = ((v243 - 1) * v964 + 256) >> 8;
          }

          if (v244 >= v958 << 56)
          {
            LODWORD(v958) = v243 - v958;
          }

          if (v959)
          {
            v962 = 1;
          }

          else
          {
            v960 = v244;
            v962 = 0;
          }

          v963 = vpx_norm[v961];
          v243 = v958 << v963;
          v244 = v960 << v963;
          v245 -= v963;
          v952 = v962 | (2 * v952);
          if (++v951 == v1263)
          {
            v950 = v952 + 67;
            goto LABEL_637;
          }

          continue;
        }
      }

      v324 = vpx_norm[v322];
      v325 = v256 << v324;
      v326 = v257 - v324;
      v327 = v258[1];
      if (((v257 - v324) & 0x80000000) != 0)
      {
        *v10 = v325;
        *(v10 + 12) = v326;
        v344 = *(v10 + 24);
        v345 = *(v10 + 16) - v344;
        v346 = *(v10 + 32);
        if (v346)
        {
          if (v345 >= 9)
          {
            v347 = 9;
          }

          else
          {
            v347 = *(v10 + 16) - v344;
          }

          v348 = v30;
          v349 = v327;
          v350 = v258;
          v346(*(v10 + 40), v344, v1268, v347);
          v258 = v350;
          v327 = v349;
          v240 = 2 * v1282;
          LOWORD(v30) = v348;
          v29.i64[0] = 0x7F0000007FLL;
          v29.i64[1] = 0x7F0000007FLL;
          v28.i64[0] = 0x800000008;
          v28.i64[1] = 0x800000008;
          v27 = v1269;
          v22 = v1270;
          v15 = v1271;
          v13 = v1272;
          v12 = v1273;
          a7 = v1274;
          a8 = v1275;
          v344 = (a9 + 48);
        }

        v351 = 8 * v345;
        v352 = 48 - v326;
        if (8 * v345 < 0x41)
        {
          v406 = 56 - v351 - v326;
          if (v406 >= 0)
          {
            v326 += 0x40000000;
          }

          if (v351)
          {
            v407 = 1;
          }

          else
          {
            v407 = v406 <= -1;
          }

          v408 = v406 & ~(v406 >> 31);
          v409 = !v407 || v352 < v408;
          v10 = a9;
          if (v409)
          {
            v354 = v344;
            v247 = v1282;
          }

          else
          {
            v441 = v324 - v257 + 40;
            if (v441 >= v408 - 1)
            {
              v441 = v408 - 1;
            }

            v442 = v324 - v257 - v441 + 47;
            v354 = v344;
            v443 = v352;
            v247 = v1282;
            if (v442 < 0x78)
            {
              goto LABEL_681;
            }

            v444 = (v442 >> 3) + 1;
            v445 = v325;
            v446 = 0uLL;
            v447 = v326;
            v448 = vdupq_n_s32(v352);
            v449 = vaddq_s32(v448, xmmword_273BC3230);
            v354 = (v344 + (v444 & 0x3FFFFFF0));
            v450 = vaddq_s32(v448, xmmword_273BC3240);
            v443 = v352 - 8 * (v444 & 0x3FFFFFF0);
            v451 = vaddq_s32(v448, xmmword_273BC3250);
            v452 = vaddq_s32(v448, xmmword_273BC3220);
            v453 = v444 & 0x3FFFFFF0;
            v454 = v344;
            v455 = 0uLL;
            v456 = 0uLL;
            v457 = 0uLL;
            v458 = 0uLL;
            v459 = 0uLL;
            v460 = 0uLL;
            v461 = 0uLL;
            v462 = 0uLL;
            v463 = 0uLL;
            do
            {
              v464 = *v454++;
              v465 = vmovl_high_u8(v464);
              v466 = vmovl_high_u16(v465);
              v467.i64[0] = v466.u32[0];
              v467.i64[1] = v466.u32[1];
              v468 = v467;
              v469 = vmovl_u16(*v465.i8);
              v467.i64[0] = v469.u32[2];
              v467.i64[1] = v469.u32[3];
              v470 = v467;
              v471 = vmovl_u8(*v464.i8);
              v472 = vmovl_high_u16(v471);
              v467.i64[0] = v472.u32[2];
              v467.i64[1] = v472.u32[3];
              v473 = v467;
              v467.i64[0] = v466.u32[2];
              v467.i64[1] = v466.u32[3];
              v474 = v467;
              v467.i64[0] = v469.u32[0];
              v467.i64[1] = v469.u32[1];
              v475 = v467;
              v467.i64[0] = v472.u32[0];
              v467.i64[1] = v472.u32[1];
              v476 = v467;
              v477 = vmovl_u16(*v471.i8);
              v467.i64[0] = v477.u32[2];
              v467.i64[1] = v477.u32[3];
              v478 = v467;
              v467.i64[0] = v477.u32[0];
              v467.i64[1] = v477.u32[1];
              v479 = v467;
              v467.i64[0] = v452.u32[0];
              v467.i64[1] = v452.u32[1];
              v480 = vshlq_u64(v479, v467);
              v467.i64[0] = v452.u32[2];
              v467.i64[1] = v452.u32[3];
              v481 = vshlq_u64(v478, v467);
              v467.i64[0] = v451.u32[0];
              v467.i64[1] = v451.u32[1];
              v482 = vshlq_u64(v476, v467);
              v467.i64[0] = v450.u32[0];
              v467.i64[1] = v450.u32[1];
              v483 = vshlq_u64(v475, v467);
              v467.i64[0] = v449.u32[2];
              v467.i64[1] = v449.u32[3];
              v484 = vshlq_u64(v474, v467);
              v467.i64[0] = v451.u32[2];
              v467.i64[1] = v451.u32[3];
              v485 = vshlq_u64(v473, v467);
              v467.i64[0] = v450.u32[2];
              v467.i64[1] = v450.u32[3];
              v486 = vshlq_u64(v470, v467);
              v467.i64[0] = v449.u32[0];
              v467.i64[1] = v449.u32[1];
              v459 = vorrq_s8(vshlq_u64(v468, v467), v459);
              v458 = vorrq_s8(v486, v458);
              v456 = vorrq_s8(v485, v456);
              v460 = vorrq_s8(v484, v460);
              v457 = vorrq_s8(v483, v457);
              v455 = vorrq_s8(v482, v455);
              v446 = vorrq_s8(v481, v446);
              v445 = vorrq_s8(v480, v445);
              v447 = vaddq_s32(v447, v28);
              v461 = vaddq_s32(v461, v28);
              v462 = vaddq_s32(v462, v28);
              v463 = vaddq_s32(v463, v28);
              v452 = vaddq_s32(v452, v29);
              v451 = vaddq_s32(v451, v29);
              v450 = vaddq_s32(v450, v29);
              v449 = vaddq_s32(v449, v29);
              v453 -= 16;
            }

            while (v453);
            v487 = vorrq_s8(vorrq_s8(vorrq_s8(v445, v457), vorrq_s8(v455, v459)), vorrq_s8(vorrq_s8(v446, v458), vorrq_s8(v456, v460)));
            v325 = vorr_s8(*v487.i8, *&vextq_s8(v487, v487, 8uLL));
            v326 = vaddvq_s32(vaddq_s32(vaddq_s32(v447, v462), vaddq_s32(v461, v463)));
            v240 = 2 * v1282;
            if ((v444 & 0x3FFFFFF0) != v444)
            {
LABEL_681:
              do
              {
                v326 += 8;
                v488 = *v354;
                v354 = (v354 + 1);
                v325 |= v488 << v443;
                v443 -= 8;
              }

              while (v443 >= v408);
            }
          }
        }

        else
        {
          v353 = (v352 & 0x7FFFFFF8) + 8;
          v326 += v353;
          v354 = (v344 + (v353 >> 3));
          v10 = a9;
          v247 = v1282;
          v325 = (bswap64(*v344) >> (56 - (v352 & 0xF8u)) << (v352 & 7)) | *a9;
        }

        *(v10 + 24) += v354 - v344;
        *v10 = v325;
        *(v10 + 12) = v326;
      }

      else
      {
        v247 = v1282;
      }

      v489 = v322 << v324;
      v490 = (((v322 << v324) - 1) * v327 + 256) >> 8;
      if (v325 >= v490 << 56)
      {
        v492 = v489 - v490;
        v493 = vpx_norm[(v489 - v490)];
        v494 = (v325 - (v490 << 56)) << v493;
        v495 = v326 - v493;
        v1283[*(a7 + v240)] = 3;
        v496 = v258[2];
        if (((v326 - v493) & 0x80000000) != 0)
        {
          *v10 = v494;
          *(v10 + 12) = v495;
          v497 = *(v10 + 24);
          v498 = *(v10 + 16) - v497;
          v499 = *(v10 + 32);
          if (v499)
          {
            if (v498 >= 9)
            {
              v500 = 9;
            }

            else
            {
              v500 = *(v10 + 16) - v497;
            }

            v501 = v30;
            v499(*(v10 + 40), v497, v1268, v500);
            v240 = 2 * v1282;
            LOWORD(v30) = v501;
            v29.i64[0] = 0x7F0000007FLL;
            v29.i64[1] = 0x7F0000007FLL;
            v28.i64[0] = 0x800000008;
            v28.i64[1] = 0x800000008;
            v27 = v1269;
            v22 = v1270;
            v15 = v1271;
            v13 = v1272;
            v12 = v1273;
            a7 = v1274;
            a8 = v1275;
            v497 = (a9 + 48);
          }

          v502 = 8 * v498;
          v503 = 48 - v495;
          if (8 * v498 < 0x41)
          {
            v608 = 56 - v502 - v495;
            if (v608 >= 0)
            {
              v495 += 0x40000000;
            }

            if (v502)
            {
              v609 = 1;
            }

            else
            {
              v609 = v608 <= -1;
            }

            v10 = a9;
            if (v609 && (v610 = v608 & ~(v608 >> 31), v503 >= v610))
            {
              v611 = v493 - v326 + 40;
              if (v611 >= v610 - 1)
              {
                v611 = v610 - 1;
              }

              v612 = v493 - v326 - v611 + 47;
              v505 = v497;
              v613 = v503;
              if (v612 < 0x78)
              {
                goto LABEL_682;
              }

              v614 = (v612 >> 3) + 1;
              v615 = v494;
              v616 = 0uLL;
              v617 = v495;
              v618 = vdupq_n_s32(v503);
              v619 = vaddq_s32(v618, xmmword_273BC3230);
              v505 = (v497 + (v614 & 0x3FFFFFF0));
              v620 = vaddq_s32(v618, xmmword_273BC3240);
              v613 = v503 - 8 * (v614 & 0x3FFFFFF0);
              v621 = vaddq_s32(v618, xmmword_273BC3250);
              v622 = vaddq_s32(v618, xmmword_273BC3220);
              v623 = v614 & 0x3FFFFFF0;
              v624 = v497;
              v625 = 0uLL;
              v626 = 0uLL;
              v627 = 0uLL;
              v628 = 0uLL;
              v629 = 0uLL;
              v630 = 0uLL;
              v631 = 0uLL;
              v632 = 0uLL;
              v633 = 0uLL;
              do
              {
                v634 = *v624++;
                v635 = vmovl_high_u8(v634);
                v636 = vmovl_high_u16(v635);
                v637.i64[0] = v636.u32[0];
                v637.i64[1] = v636.u32[1];
                v638 = v637;
                v639 = vmovl_u16(*v635.i8);
                v637.i64[0] = v639.u32[2];
                v637.i64[1] = v639.u32[3];
                v640 = v637;
                v641 = vmovl_u8(*v634.i8);
                v642 = vmovl_high_u16(v641);
                v637.i64[0] = v642.u32[2];
                v637.i64[1] = v642.u32[3];
                v643 = v637;
                v637.i64[0] = v636.u32[2];
                v637.i64[1] = v636.u32[3];
                v644 = v637;
                v637.i64[0] = v639.u32[0];
                v637.i64[1] = v639.u32[1];
                v645 = v637;
                v637.i64[0] = v642.u32[0];
                v637.i64[1] = v642.u32[1];
                v646 = v637;
                v647 = vmovl_u16(*v641.i8);
                v637.i64[0] = v647.u32[2];
                v637.i64[1] = v647.u32[3];
                v648 = v637;
                v637.i64[0] = v647.u32[0];
                v637.i64[1] = v647.u32[1];
                v649 = v637;
                v637.i64[0] = v622.u32[0];
                v637.i64[1] = v622.u32[1];
                v650 = vshlq_u64(v649, v637);
                v637.i64[0] = v622.u32[2];
                v637.i64[1] = v622.u32[3];
                v651 = vshlq_u64(v648, v637);
                v637.i64[0] = v621.u32[0];
                v637.i64[1] = v621.u32[1];
                v652 = vshlq_u64(v646, v637);
                v637.i64[0] = v620.u32[0];
                v637.i64[1] = v620.u32[1];
                v653 = vshlq_u64(v645, v637);
                v637.i64[0] = v619.u32[2];
                v637.i64[1] = v619.u32[3];
                v654 = vshlq_u64(v644, v637);
                v637.i64[0] = v621.u32[2];
                v637.i64[1] = v621.u32[3];
                v655 = vshlq_u64(v643, v637);
                v637.i64[0] = v620.u32[2];
                v637.i64[1] = v620.u32[3];
                v656 = vshlq_u64(v640, v637);
                v637.i64[0] = v619.u32[0];
                v637.i64[1] = v619.u32[1];
                v629 = vorrq_s8(vshlq_u64(v638, v637), v629);
                v628 = vorrq_s8(v656, v628);
                v626 = vorrq_s8(v655, v626);
                v630 = vorrq_s8(v654, v630);
                v627 = vorrq_s8(v653, v627);
                v625 = vorrq_s8(v652, v625);
                v616 = vorrq_s8(v651, v616);
                v615 = vorrq_s8(v650, v615);
                v617 = vaddq_s32(v617, v28);
                v631 = vaddq_s32(v631, v28);
                v632 = vaddq_s32(v632, v28);
                v633 = vaddq_s32(v633, v28);
                v622 = vaddq_s32(v622, v29);
                v621 = vaddq_s32(v621, v29);
                v620 = vaddq_s32(v620, v29);
                v619 = vaddq_s32(v619, v29);
                v623 -= 16;
              }

              while (v623);
              v657 = vorrq_s8(vorrq_s8(vorrq_s8(v615, v627), vorrq_s8(v625, v629)), vorrq_s8(vorrq_s8(v616, v628), vorrq_s8(v626, v630)));
              v494 = vorr_s8(*v657.i8, *&vextq_s8(v657, v657, 8uLL));
              v495 = vaddvq_s32(vaddq_s32(vaddq_s32(v617, v632), vaddq_s32(v631, v633)));
              v240 = 2 * v1282;
              if ((v614 & 0x3FFFFFF0) != v614)
              {
LABEL_682:
                do
                {
                  v495 += 8;
                  v658 = *v505;
                  v505 = (v505 + 1);
                  v494 |= v658 << v613;
                  v613 -= 8;
                }

                while (v613 >= v610);
              }
            }

            else
            {
              v505 = v497;
            }
          }

          else
          {
            v504 = (v503 & 0x7FFFFFF8) + 8;
            v495 += v504;
            v505 = (v497 + (v504 >> 3));
            v10 = a9;
            v494 = (bswap64(*v497) >> (56 - (v503 & 0xF8u)) << (v503 & 7)) | *a9;
          }

          *(v10 + 24) += v505 - v497;
          *v10 = v494;
          *(v10 + 12) = v495;
        }

        v716 = (((v492 << v493) - 1) * v496 + 256) >> 8;
        v717 = (v492 << v493) - v716;
        v718 = v494 >= v716 << 56;
        if (v494 >= v716 << 56)
        {
          v719 = ((v492 << v493) - v716);
        }

        else
        {
          v719 = (((v492 << v493) - 1) * v496 + 256) >> 8;
        }

        if (v494 >= v716 << 56)
        {
          v720 = v494 - (v716 << 56);
        }

        else
        {
          v717 = (((v492 << v493) - 1) * v496 + 256) >> 8;
          v720 = v494;
        }

        if (v718)
        {
          v721 = 4;
        }

        else
        {
          v721 = 3;
        }

        v722 = vpx_norm[v719];
        v243 = v717 << v722;
        v244 = v720 << v722;
        v245 = v495 - v722;
        LODWORD(v246) = (v721 * v30) >> v1266;
        v247 = v1282;
        if (((v495 - v722) & 0x80000000) == 0)
        {
LABEL_111:
          v248 = ((v243 << 7) + 128) >> 8;
          v249 = v244 - (v248 << 56);
          if (v244 >= v248 << 56)
          {
            goto LABEL_664;
          }

          goto LABEL_112;
        }
      }

      else
      {
        v491 = vpx_norm[v490];
        v243 = v490 << v491;
        v244 = v325 << v491;
        v245 = v326 - v491;
        v1283[*(a7 + v240)] = 2;
        LODWORD(v246) = (2 * v30) >> v1266;
        if (((v326 - v491) & 0x80000000) == 0)
        {
          goto LABEL_111;
        }
      }
    }

    else
    {
      v242 = vpx_norm[v239];
      if (v12)
      {
        ++*(v22 + 96 * v31 + 16 * v1262 + 4);
      }

      v243 = v239 << v242;
      v244 = v173 << v242;
      v245 = v175 - v242;
      v1283[*(a7 + 2 * v1282)] = 1;
      LODWORD(v246) = v30 >> v1266;
      v247 = v1282;
      if (((v175 - v242) & 0x80000000) == 0)
      {
        goto LABEL_111;
      }
    }

LABEL_638:
    *v10 = v244;
    *(v10 + 12) = v245;
    v1199 = *(v10 + 24);
    v1200 = *(v10 + 16) - v1199;
    v1201 = *(v10 + 32);
    if (v1201)
    {
      if (v1200 >= 9)
      {
        v1202 = 9;
      }

      else
      {
        v1202 = *(v10 + 16) - v1199;
      }

      v1201(*(v10 + 40), v1199, v1268, v1202);
      v240 = 2 * v1282;
      v29.i64[0] = 0x7F0000007FLL;
      v29.i64[1] = 0x7F0000007FLL;
      v28.i64[0] = 0x800000008;
      v28.i64[1] = 0x800000008;
      v27 = v1269;
      v22 = v1270;
      v15 = v1271;
      v13 = v1272;
      v12 = v1273;
      a7 = v1274;
      a8 = v1275;
      v1199 = (a9 + 48);
    }

    v1203 = 8 * v1200;
    v1204 = 48 - v245;
    if (8 * v1200 >= 0x41)
    {
      v1205 = (v1204 & 0x7FFFFFF8) + 8;
      v1206 = v1205 + v245;
      v1207 = (v1199 + (v1205 >> 3));
      v10 = a9;
      v244 = (bswap64(*v1199) >> (56 - (v1204 & 0xF8u)) << (v1204 & 7)) | *a9;
      goto LABEL_663;
    }

    v1208 = 56 - v1203 - v245;
    if (v1208 < 0)
    {
      v1206 = v245;
    }

    else
    {
      v1206 = v245 + 0x40000000;
    }

    if (v1203)
    {
      v1209 = 1;
    }

    else
    {
      v1209 = v1208 <= -1;
    }

    v10 = a9;
    if (!v1209 || (v1210 = v1208 & ~(v1208 >> 31), v1204 < v1210))
    {
      v1207 = v1199;
      goto LABEL_663;
    }

    v1211 = v1210 - 1;
    if (v1210 - 1 >= (40 - v245))
    {
      v1211 = 40 - v245;
    }

    v1212 = 47 - v245 - v1211;
    if (v1212 < 0x78)
    {
      v1207 = v1199;
      do
      {
LABEL_662:
        v1206 += 8;
        v1257 = *v1207;
        v1207 = (v1207 + 1);
        v244 |= v1257 << v1204;
        v1204 -= 8;
      }

      while (v1204 >= v1210);
      goto LABEL_663;
    }

    v1213 = (v1212 >> 3) + 1;
    v1214 = v244;
    v1215 = 0uLL;
    v1216 = v1206;
    v1217 = vdupq_n_s32(v1204);
    v1218 = vaddq_s32(v1217, xmmword_273BC3230);
    v1207 = (v1199 + (v1213 & 0x3FFFFFF0));
    v1219 = vaddq_s32(v1217, xmmword_273BC3240);
    v1204 -= 8 * (v1213 & 0x3FFFFFF0);
    v1220 = vaddq_s32(v1217, xmmword_273BC3250);
    v1221 = vaddq_s32(v1217, xmmword_273BC3220);
    v1222 = v1213 & 0x3FFFFFF0;
    v1223 = v1199;
    v1224 = 0uLL;
    v1225 = 0uLL;
    v1226 = 0uLL;
    v1227 = 0uLL;
    v1228 = 0uLL;
    v1229 = 0uLL;
    v1230 = 0uLL;
    v1231 = 0uLL;
    v1232 = 0uLL;
    do
    {
      v1233 = *v1223++;
      v1234 = vmovl_high_u8(v1233);
      v1235 = vmovl_high_u16(v1234);
      v1236.i64[0] = v1235.u32[0];
      v1236.i64[1] = v1235.u32[1];
      v1237 = v1236;
      v1238 = vmovl_u16(*v1234.i8);
      v1236.i64[0] = v1238.u32[2];
      v1236.i64[1] = v1238.u32[3];
      v1239 = v1236;
      v1240 = vmovl_u8(*v1233.i8);
      v1241 = vmovl_high_u16(v1240);
      v1236.i64[0] = v1241.u32[2];
      v1236.i64[1] = v1241.u32[3];
      v1242 = v1236;
      v1236.i64[0] = v1235.u32[2];
      v1236.i64[1] = v1235.u32[3];
      v1243 = v1236;
      v1236.i64[0] = v1238.u32[0];
      v1236.i64[1] = v1238.u32[1];
      v1244 = v1236;
      v1236.i64[0] = v1241.u32[0];
      v1236.i64[1] = v1241.u32[1];
      v1245 = v1236;
      v1246 = vmovl_u16(*v1240.i8);
      v1236.i64[0] = v1246.u32[2];
      v1236.i64[1] = v1246.u32[3];
      v1247 = v1236;
      v1236.i64[0] = v1246.u32[0];
      v1236.i64[1] = v1246.u32[1];
      v1248 = v1236;
      v1236.i64[0] = v1221.u32[0];
      v1236.i64[1] = v1221.u32[1];
      v1249 = vshlq_u64(v1248, v1236);
      v1236.i64[0] = v1221.u32[2];
      v1236.i64[1] = v1221.u32[3];
      v1250 = vshlq_u64(v1247, v1236);
      v1236.i64[0] = v1220.u32[0];
      v1236.i64[1] = v1220.u32[1];
      v1251 = vshlq_u64(v1245, v1236);
      v1236.i64[0] = v1219.u32[0];
      v1236.i64[1] = v1219.u32[1];
      v1252 = vshlq_u64(v1244, v1236);
      v1236.i64[0] = v1218.u32[2];
      v1236.i64[1] = v1218.u32[3];
      v1253 = vshlq_u64(v1243, v1236);
      v1236.i64[0] = v1220.u32[2];
      v1236.i64[1] = v1220.u32[3];
      v1254 = vshlq_u64(v1242, v1236);
      v1236.i64[0] = v1219.u32[2];
      v1236.i64[1] = v1219.u32[3];
      v1255 = vshlq_u64(v1239, v1236);
      v1236.i64[0] = v1218.u32[0];
      v1236.i64[1] = v1218.u32[1];
      v1228 = vorrq_s8(vshlq_u64(v1237, v1236), v1228);
      v1227 = vorrq_s8(v1255, v1227);
      v1225 = vorrq_s8(v1254, v1225);
      v1229 = vorrq_s8(v1253, v1229);
      v1226 = vorrq_s8(v1252, v1226);
      v1224 = vorrq_s8(v1251, v1224);
      v1215 = vorrq_s8(v1250, v1215);
      v1214 = vorrq_s8(v1249, v1214);
      v1216 = vaddq_s32(v1216, v28);
      v1230 = vaddq_s32(v1230, v28);
      v1231 = vaddq_s32(v1231, v28);
      v1232 = vaddq_s32(v1232, v28);
      v1221 = vaddq_s32(v1221, v29);
      v1220 = vaddq_s32(v1220, v29);
      v1219 = vaddq_s32(v1219, v29);
      v1218 = vaddq_s32(v1218, v29);
      v1222 -= 16;
    }

    while (v1222);
    v1256 = vorrq_s8(vorrq_s8(vorrq_s8(v1214, v1226), vorrq_s8(v1224, v1228)), vorrq_s8(vorrq_s8(v1215, v1227), vorrq_s8(v1225, v1229)));
    v244 = vorr_s8(*v1256.i8, *&vextq_s8(v1256, v1256, 8uLL));
    v1206 = vaddvq_s32(vaddq_s32(vaddq_s32(v1216, v1231), vaddq_s32(v1230, v1232)));
    v240 = 2 * v1282;
    if ((v1213 & 0x3FFFFFF0) != v1213)
    {
      goto LABEL_662;
    }

LABEL_663:
    *(v10 + 24) += v1207 - v1199;
    *v10 = v244;
    *(v10 + 12) = v1206;
    v245 = v1206;
    v248 = ((v243 << 7) + 128) >> 8;
    v249 = v244 - (v248 << 56);
    if (v244 >= v248 << 56)
    {
LABEL_664:
      v1258 = v243 - v248;
      v252 = vpx_norm[v243 - v248];
      v251 = v1258 << v252;
      v25 = v249 << v252;
      LODWORD(v246) = -v246;
      goto LABEL_665;
    }

LABEL_112:
    v250 = vpx_norm[v248];
    v251 = v248 << v250;
    v25 = v244 << v250;
    v252 = v250;
LABEL_665:
    *(a3 + 4 * *(a7 + v240)) = v246;
    v9 = v247 + 1;
    v24 = v245 - v252;
    v11 = (v1283[*(a8 + 4 * v9)] + v1283[*(a8 + 4 * v9 + 2)] + 1) >> 1;
    a5 = v27;
    v23 = v251;
    if (v9 >= v13)
    {
      goto LABEL_666;
    }
  }

  v1260 = vpx_norm[v96];
  v23 = v96 << v1260;
  v25 <<= v1260;
  v24 -= v1260;
  if (v12)
  {
    v1261 = v22 + 96 * v31 + 16 * v11;
    ++*(v1261 + 12);
  }

LABEL_666:
  *v10 = v25;
  *(v10 + 8) = v23;
  *(v10 + 12) = v24;
  return v9;
}