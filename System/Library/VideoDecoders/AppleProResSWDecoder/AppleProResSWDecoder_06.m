unint64_t from_444_to_AYUV_UYVY_WxH<(PixelFormat)1916022840,(AlphaOutputMethod)2>(unint64_t result, int16x8_t *a2, int a3, int a4, unsigned int a5, int a6)
{
  v6 = (a6 - 1);
  if (a6 >= 1)
  {
    v208 = a5 - 1;
    if (a5 >= 1)
    {
      v7 = result;
      v8 = 0;
      v9 = a6 * a5;
      v10 = 2 * (4 * v9);
      v11 = &a2->i16[v10 / 2];
      v184 = v9;
      v12 = 2 * v9;
      v13 = a2 + 2 * v9 + v10;
      v14 = &a2->i16[v9];
      v15 = a4 & ~(a4 >> 31);
      v16 = a2->u64 + 2 * a5 * v6 + 2 * v208 + 2;
      v188 = 4 * (4 * v9);
      v200 = v16 + v188;
      v198 = v16 + v188 + 2 * v9;
      v196 = v16 + 2 * v9;
      v210 = a3;
      v185 = 4 * v208;
      v182 = a3 * v6;
      v183 = a5 * v6;
      v17 = result + v185 + v182 + 4;
      v19 = v16 + v10 > result && v11 < v17;
      if (v16 + v10 + v12 > result && v13 < v17)
      {
        v19 = 1;
      }

      v22 = v16 > result && v17 > a2 || v19;
      if (a3 < 0)
      {
        v22 = 1;
      }

      v194 = v22;
      v23 = 2 * (a5 & 0x7FFFFFF0);
      v24 = 4 * (a5 & 0x7FFFFFF0);
      v207 = a5 & 0x7FFFFFF0;
      v204 = v12;
      v190 = a5 & 0x7FFFFFF8;
      v25 = 2 * a5;
      v26.i64[0] = 0x6F006F006F006FLL;
      v26.i64[1] = 0x6F006F006F006FLL;
      v27 = v10 + v12;
      v191 = a5 & 0x7FFFFFF8;
      v192 = result + v185 + 8;
      v189 = 4 * v191;
      v28.i64[0] = 0x7F007F007F007FLL;
      v28.i64[1] = 0x7F007F007F007FLL;
      v29.i64[0] = -1;
      v29.i64[1] = -1;
      v30 = -1;
      v31.i64[0] = 0x7070707070707070;
      v31.i64[1] = 0x7070707070707070;
      v32.i64[0] = 0xEFEFEFEFEFEFEFEFLL;
      v32.i64[1] = 0xEFEFEFEFEFEFEFEFLL;
      v33.i64[0] = 0x8080808080808080;
      v33.i64[1] = 0x8080808080808080;
      v201 = v14;
      v203 = v13 + v10;
      v34 = (v13 + v10);
      v205 = a2->u64 + v10 + v10;
      v35 = v205;
      v36 = v14;
      while (v8 != v15)
      {
        if (a5 < 0x10 || (v194 & 1) != 0)
        {
          v37 = 0;
          v38 = 0;
          v39 = v13;
          v40 = v11;
          v41 = a2;
          v42 = v7;
        }

        else
        {
          v90 = 0;
          v39 = (v13 + v23);
          v40 = &v11[v23 / 2];
          v41 = &a2->i16[v23 / 2];
          v42 = &v7[v24];
          v91 = a2;
          do
          {
            v92 = (v91 + v27);
            v93 = (v91 + v10);
            v94 = &v7[v90];
            v96 = *v91;
            v95 = v91[1];
            v91 += 2;
            v97 = vbicq_s8(vbslq_s8(vuzp1q_s8(vcgtq_s16(v96, v28), vcgtq_s16(v95, v28)), v32, vaddq_s8(vuzp1q_s8(v96, v95), v31)), vuzp1q_s8(vcgtq_s16(v26, v96), vcgtq_s16(v26, v95)));
            v98 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*v92), v92[1]), v33);
            v99 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*v93), v93[1]), v33);
            vst4q_s8(v94, *v29.i8);
            v90 += 64;
          }

          while (v24 != v90);
          v37 = a5 & 0x7FFFFFF0;
          v38 = a5 & 0x7FFFFFF0;
          v44 = v37 - 1;
          if (v207 == a5)
          {
            goto LABEL_45;
          }
        }

        v43 = a5 - v38;
        v44 = v37 + (v208 - v38);
        do
        {
          v46 = *v41++;
          v45 = v46;
          v48 = *v40++;
          v47 = v48;
          v50 = *v39++;
          v49 = v50;
          *v42 = -1;
          v51 = v45 + 112;
          if (v45 > 127)
          {
            v51 = -17;
          }

          if (v45 >= -112)
          {
            v52 = v51;
          }

          else
          {
            v52 = 0;
          }

          v42[1] = v52;
          if (v47 >= 127)
          {
            v53 = 127;
          }

          else
          {
            v53 = v47;
          }

          if (v53 <= -128)
          {
            LOBYTE(v53) = 0x80;
          }

          v42[2] = v53 ^ 0x80;
          if (v49 >= 127)
          {
            v54 = 127;
          }

          else
          {
            v54 = v49;
          }

          if (v54 <= -128)
          {
            LOBYTE(v54) = 0x80;
          }

          v42[3] = v54 ^ 0x80;
          v42 += 4;
          --v43;
        }

        while (v43);
LABEL_45:
        if (a5 < 8)
        {
          v55 = 0;
LABEL_47:
          v56 = v34;
          v57 = v35;
          v58 = v36;
          v59 = v42;
LABEL_48:
          v60 = a5 - v55;
          do
          {
            v62 = *v58++;
            v61 = v62;
            v64 = *v57++;
            v63 = v64;
            v66 = *v56++;
            v65 = v66;
            *v59 = -1;
            v67 = v61 + 112;
            if (v61 > 127)
            {
              v67 = -17;
            }

            if (v61 >= -112)
            {
              v68 = v67;
            }

            else
            {
              v68 = 0;
            }

            v59[1] = v68;
            if (v63 >= 127)
            {
              v69 = 127;
            }

            else
            {
              v69 = v63;
            }

            if (v69 <= -128)
            {
              LOBYTE(v69) = 0x80;
            }

            v59[2] = v69 ^ 0x80;
            if (v65 >= 127)
            {
              v70 = 127;
            }

            else
            {
              v70 = v65;
            }

            if (v70 <= -128)
            {
              LOBYTE(v70) = 0x80;
            }

            v59[3] = v70 ^ 0x80;
            v59 += 4;
            --v60;
          }

          while (v60);
          goto LABEL_23;
        }

        v55 = 0;
        v71 = v192 + 4 * v44 + v8 * a3;
        v73 = v42 < v200 && v205 < v71;
        v75 = v42 < v196 && v201 < v71;
        v76 = v203 >= v71 || v42 >= v198;
        if (!v76 || v73 || v75)
        {
          goto LABEL_47;
        }

        if (a5 >= 0x10)
        {
          v100 = 0;
          v101 = v42;
          do
          {
            v211.val[1] = vbicq_s8(vbslq_s8(vuzp1q_s8(vcgtq_s16(*&v36[v100 / 2], v28), vcgtq_s16(*&v36[v100 / 2 + 8], v28)), v32, vaddq_s8(vuzp1q_s8(*&v36[v100 / 2], *&v36[v100 / 2 + 8]), v31)), vuzp1q_s8(vcgtq_s16(v26, *&v36[v100 / 2]), vcgtq_s16(v26, *&v36[v100 / 2 + 8])));
            v211.val[3] = veorq_s8(vqmovn_high_s16(vqmovn_s16(*&v36[v188 / 2 + v100 / 2]), *&v36[v188 / 2 + 8 + v100 / 2]), v33);
            v211.val[2] = veorq_s8(vqmovn_high_s16(vqmovn_s16(*(a2 + v188 + v100)), *(&a2[1] + v188 + v100)), v33);
            v211.val[0] = v29;
            vst4q_s8(v101, v211);
            v101 += 64;
            v100 += 32;
          }

          while (v23 != v100);
          if (v207 == a5)
          {
            goto LABEL_23;
          }

          v77 = a5 & 0x7FFFFFF0;
          if ((a5 & 8) == 0)
          {
            v59 = &v42[v24];
            v58 = &v36[v23 / 2];
            v57 = &v35[v23 / 2];
            v56 = &v34[v23 / 2];
            v55 = a5 & 0x7FFFFFF0;
            goto LABEL_48;
          }
        }

        else
        {
          v77 = 0;
        }

        v56 = &v34[v190];
        v57 = &v35[v190];
        v58 = &v36[v190];
        v59 = &v42[v189];
        v78 = v77;
        v79 = &v36[v77];
        v80 = &v35[v77];
        v81 = v77 - (a5 & 0x7FFFFFF8);
        v82 = &v42[4 * v77];
        do
        {
          v83 = *v79++;
          v84 = v83;
          v85 = vmovn_s16(v83);
          v86 = *v80++;
          v87 = vbic_s8(vbsl_s8(vmovn_s16(vcgtq_s16(v84, v28)), 0xEFEFEFEFEFEFEFEFLL, vadd_s8(v85, 0x7070707070707070)), vmovn_s16(vcgtq_s16(v26, v84)));
          v88 = veor_s8(vqmovn_s16(v86), 0x8080808080808080);
          v89 = veor_s8(vqmovn_s16(*&v34[v78]), 0x8080808080808080);
          vst4_s8(v82, *&v30);
          v82 += 32;
          v78 += 8;
          v81 += 8;
        }

        while (v81);
        v55 = a5 & 0x7FFFFFF8;
        if (v191 != a5)
        {
          goto LABEL_48;
        }

LABEL_23:
        v7 += a3;
        a2 = (a2 + v25);
        v36 = (v36 + v25);
        v11 = (v11 + v25);
        v35 = (v35 + v25);
        v13 += v25;
        v34 = (v34 + v25);
        if (++v8 == a6)
        {
          break;
        }
      }

      v102 = 0;
      v103 = (v13 + v204);
      v104 = a4;
      if (a6 > a4)
      {
        v104 = a6;
      }

      v206 = v104 - a6;
      v105 = 2 * (v183 + v208 + v184) + 2;
      v106 = 2 * (v183 + v208) + 2;
      v107 = &v7[v182 + 4 + v185];
      result = v36 + v106;
      v109 = v7 < v13 + v106 && v13 < v107;
      v111 = v7 < v13 + v105 && v103 < v107 || v109;
      if (v7 >= result || v36 >= v107)
      {
        v113 = v111;
      }

      else
      {
        v113 = 1;
      }

      v114 = (v34 + v204);
      v115 = (v36 + v204);
      v197 = v34 + v106;
      v199 = v34 + v105;
      v195 = v36 + v105;
      if (a3 < 0)
      {
        v116 = 1;
      }

      else
      {
        v116 = v113;
      }

      v193 = v116;
      v117.i64[0] = 0x6F006F006F006FLL;
      v117.i64[1] = 0x6F006F006F006FLL;
      v118.i64[0] = 0x7F007F007F007FLL;
      v118.i64[1] = 0x7F007F007F007FLL;
      v119.i64[0] = -1;
      v119.i64[1] = -1;
      v120 = -1;
      v121.i64[0] = 0x7070707070707070;
      v121.i64[1] = 0x7070707070707070;
      v122.i64[0] = 0xEFEFEFEFEFEFEFEFLL;
      v122.i64[1] = 0xEFEFEFEFEFEFEFEFLL;
      v123.i64[0] = 0x8080808080808080;
      v123.i64[1] = 0x8080808080808080;
      v124 = v34;
      v125 = v7;
      v202 = (v36 + v204);
      do
      {
        if (v102 == v206)
        {
          return result;
        }

        if (a5 < 0x10 || (v193 & 1) != 0)
        {
          v126 = 0;
          v127 = 0;
          v128 = v103;
          v129 = v13;
          v130 = v36;
          result = v125;
        }

        else
        {
          v172 = 0;
          v128 = &v103[v23 / 2];
          v129 = (v13 + v23);
          v130 = &v36[v23 / 2];
          result = &v125[v24];
          v173 = a5 & 0x7FFFFFF0;
          v174 = v125;
          do
          {
            v175 = vbicq_s8(vbslq_s8(vuzp1q_s8(vcgtq_s16(*&v36[v172], v118), vcgtq_s16(*&v36[v172 + 8], v118)), v122, vaddq_s8(vuzp1q_s8(*&v36[v172], *&v36[v172 + 8]), v121)), vuzp1q_s8(vcgtq_s16(v117, *&v36[v172]), vcgtq_s16(v117, *&v36[v172 + 8])));
            v176 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*(v13 + v204 + v172 * 2)), *(v13 + v204 + v172 * 2 + 16)), v123);
            v177 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*(v13 + v172 * 2)), *(v13 + v172 * 2 + 16)), v123);
            vst4q_s8(v174, *v119.i8);
            v174 += 64;
            v172 += 16;
            v173 -= 16;
          }

          while (v173);
          v126 = a5 & 0x7FFFFFF0;
          v127 = a5 & 0x7FFFFFF0;
          v132 = v126 - 1;
          if (v207 == a5)
          {
            goto LABEL_146;
          }
        }

        v131 = a5 - v127;
        v132 = v126 + (v208 - v127);
        do
        {
          v134 = *v130++;
          v133 = v134;
          v136 = *v129++;
          v135 = v136;
          v138 = *v128++;
          v137 = v138;
          *result = -1;
          v139 = v133 + 112;
          if (v133 > 127)
          {
            v139 = -17;
          }

          if (v133 >= -112)
          {
            v140 = v139;
          }

          else
          {
            v140 = 0;
          }

          *(result + 1) = v140;
          if (v135 >= 127)
          {
            v141 = 127;
          }

          else
          {
            v141 = v135;
          }

          if (v141 <= -128)
          {
            LOBYTE(v141) = 0x80;
          }

          *(result + 2) = v141 ^ 0x80;
          if (v137 >= 127)
          {
            v142 = 127;
          }

          else
          {
            v142 = v137;
          }

          if (v142 <= -128)
          {
            LOBYTE(v142) = 0x80;
          }

          *(result + 3) = v142 ^ 0x80;
          result += 4;
          --v131;
        }

        while (v131);
LABEL_146:
        if (a5 < 8)
        {
          v143 = 0;
LABEL_148:
          v144 = v114;
          v145 = v124;
          v146 = v115;
          v147 = result;
LABEL_149:
          LODWORD(result) = a5 - v143;
          do
          {
            v149 = *v146++;
            v148 = v149;
            v151 = *v145++;
            v150 = v151;
            v153 = *v144++;
            v152 = v153;
            *v147 = -1;
            v154 = v148 + 112;
            if (v148 > 127)
            {
              v154 = -17;
            }

            if (v148 >= -112)
            {
              v155 = v154;
            }

            else
            {
              v155 = 0;
            }

            v147[1] = v155;
            if (v150 >= 127)
            {
              v156 = 127;
            }

            else
            {
              v156 = v150;
            }

            if (v156 <= -128)
            {
              LOBYTE(v156) = 0x80;
            }

            v147[2] = v156 ^ 0x80;
            if (v152 >= 127)
            {
              v157 = 127;
            }

            else
            {
              v157 = v152;
            }

            if (v157 <= -128)
            {
              LOBYTE(v157) = 0x80;
            }

            v147[3] = v157 ^ 0x80;
            v147 += 4;
            result = (result - 1);
          }

          while (result);
          goto LABEL_124;
        }

        v143 = 0;
        v158 = &v7[4 * v132 + 8 + v185 + v102 * v210];
        v160 = result < v197 && v34 < v158;
        v162 = result < v195 && v202 < v158;
        v163 = (v34 + v204) >= v158 || result >= v199;
        if (!v163 || v160 || v162)
        {
          goto LABEL_148;
        }

        if (a5 >= 0x10)
        {
          v178 = 0;
          v179 = a5 & 0x7FFFFFF0;
          v180 = v204;
          v181 = result;
          do
          {
            v212.val[1] = vbicq_s8(vbslq_s8(vuzp1q_s8(vcgtq_s16(*(v36 + v180), v118), vcgtq_s16(*(v36 + v180 + 16), v118)), v122, vaddq_s8(vuzp1q_s8(*(v36 + v180), *(v36 + v180 + 16)), v121)), vuzp1q_s8(vcgtq_s16(v117, *(v36 + v180)), vcgtq_s16(v117, *(v36 + v180 + 16))));
            v212.val[3] = veorq_s8(vqmovn_high_s16(vqmovn_s16(*(v124 + v180)), *(v124 + v180 + 16)), v123);
            v212.val[2] = veorq_s8(vqmovn_high_s16(vqmovn_s16(*&v124[v178]), *&v124[v178 + 8]), v123);
            v212.val[0] = v119;
            vst4q_s8(v181, v212);
            v181 += 64;
            v180 += 32;
            v178 += 16;
            v179 -= 16;
          }

          while (v179);
          if (v207 == a5)
          {
            goto LABEL_124;
          }

          v164 = a5 & 0x7FFFFFF0;
          if ((a5 & 8) == 0)
          {
            v147 = (result + v24);
            v146 = &v115[v23 / 2];
            v145 = &v124[v23 / 2];
            v144 = &v114[v23 / 2];
            v143 = a5 & 0x7FFFFFF0;
            goto LABEL_149;
          }
        }

        else
        {
          v164 = 0;
        }

        v144 = &v114[v190];
        v145 = &v124[v190];
        v146 = &v115[v190];
        v147 = (result + v189);
        v165 = v164;
        v166 = v204 + 2 * v164;
        v167 = v164 - (a5 & 0x7FFFFFF8);
        v168 = (result + 4 * v164);
        do
        {
          v169 = vbic_s8(vbsl_s8(vmovn_s16(vcgtq_s16(*(v36 + v166), v118)), 0xEFEFEFEFEFEFEFEFLL, vadd_s8(vmovn_s16(*(v36 + v166)), 0x7070707070707070)), vmovn_s16(vcgtq_s16(v117, *(v36 + v166))));
          v170 = veor_s8(vqmovn_s16(*&v124[v165]), 0x8080808080808080);
          v171 = veor_s8(vqmovn_s16(*(v124 + v166)), 0x8080808080808080);
          vst4_s8(v168, *&v120);
          v168 += 32;
          v166 += 16;
          v165 += 8;
          v167 += 8;
        }

        while (v167);
        result = a5 & 0x7FFFFFF8;
        v143 = a5 & 0x7FFFFFF8;
        if (v191 != a5)
        {
          goto LABEL_149;
        }

LABEL_124:
        v125 += v210;
        v36 = (v36 + v25);
        v115 = (v115 + v25);
        v13 += v25;
        v124 = (v124 + v25);
        v103 = (v103 + v25);
        v114 = (v114 + v25);
        ++v102;
      }

      while (v102 != a6);
    }
  }

  return result;
}

int16x8_t *from_444_to_v216_8xH<(PixelFormat)1983000886,false,(PixelOutputStoreType)0>(int16x8_t *result, int16x8_t *a2, int a3, int a4, unsigned int a5)
{
  if (atomic_load_explicit(&qword_280A71980, memory_order_acquire))
  {
    if (atomic_load_explicit(&qword_280A71988, memory_order_acquire))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v70 = a5;
    v74 = a2;
    v66 = result;
    v82 = a3;
    v78 = a4;
    from_444_to_v216_8xH<(PixelFormat)1983000886,false,(PixelOutputStoreType)0>();
    a4 = v78;
    a5 = v70;
    a2 = v74;
    a3 = v82;
    result = v66;
    if (atomic_load_explicit(&qword_280A71988, memory_order_acquire))
    {
LABEL_3:
      if (atomic_load_explicit(&qword_280A71990, memory_order_acquire))
      {
        goto LABEL_4;
      }

LABEL_19:
      v72 = a5;
      v76 = a2;
      v68 = result;
      v84 = a3;
      v80 = a4;
      from_444_to_v216_8xH<(PixelFormat)1983000886,false,(PixelOutputStoreType)0>();
      a4 = v80;
      a5 = v72;
      a2 = v76;
      a3 = v84;
      result = v68;
      if (atomic_load_explicit(&qword_280A71998, memory_order_acquire))
      {
        goto LABEL_5;
      }

      goto LABEL_20;
    }
  }

  v71 = a5;
  v75 = a2;
  v67 = result;
  v83 = a3;
  v79 = a4;
  from_444_to_v216_8xH<(PixelFormat)1983000886,false,(PixelOutputStoreType)0>();
  a4 = v79;
  a5 = v71;
  a2 = v75;
  a3 = v83;
  result = v67;
  if ((atomic_load_explicit(&qword_280A71990, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_4:
  if (atomic_load_explicit(&qword_280A71998, memory_order_acquire))
  {
    goto LABEL_5;
  }

LABEL_20:
  v73 = a5;
  v77 = a2;
  v69 = result;
  v85 = a3;
  v81 = a4;
  from_444_to_v216_8xH<(PixelFormat)1983000886,false,(PixelOutputStoreType)0>();
  a4 = v81;
  a5 = v73;
  a2 = v77;
  a3 = v85;
  result = v69;
LABEL_5:
  v5 = xmmword_280A71F80;
  v6 = *algn_280A71F90;
  v7 = 4 * a5;
  v8 = 8 * a5;
  v9 = a4 - a5;
  if (a4 <= a5)
  {
    v10 = 0;
  }

  else
  {
    v10 = a4 - a5;
  }

  v11 = a4 - v10;
  if (v10 < 1)
  {
    v46 = a5;
    v41 = &a2[v46];
    v42 = &a2[v7];
    v43 = &v42[v46];
    v44 = &a2[v8];
    v45 = &v44[v46];
    if (v11 < 1)
    {
      return result;
    }

    goto LABEL_14;
  }

  v12 = (a5 * a3);
  v13 = a5;
  v14 = 2 * a5;
  v15 = v7;
  v16 = 6 * a5;
  v17 = v8;
  v18 = 10 * a5;
  v19 = v9 + 1;
  v20.i64[0] = 0x8000800080008000;
  v20.i64[1] = 0x8000800080008000;
  do
  {
    v21 = (result + v12);
    v22 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(*a2, v5), v6), 3uLL), v20);
    v23 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[v13], v5), v6), 3uLL), v20);
    v24 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(vuzp1q_s32(vzip1q_s16(a2[v15], a2[v13 + v15]), vzip2q_s16(a2[v15], a2[v13 + v15])), v5), v6), 3uLL), v20);
    v25 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(vuzp1q_s32(vzip1q_s16(a2[v17], a2[v13 + v17]), vzip2q_s16(a2[v17], a2[v13 + v17])), v5), v6), 3uLL), v20);
    *result = vzip1q_s16(v24, v22);
    result[1] = vzip2q_s16(v24, v22);
    result[2] = vzip1q_s16(v25, v23);
    result[3] = vzip2q_s16(v25, v23);
    v26 = a2[v16];
    v27 = a2[v13 + v16];
    v28 = vzip1q_s16(v26, v27);
    v29 = vzip2q_s16(v26, v27);
    v30 = a2[v18];
    v31 = a2[v13 + v18];
    v32 = a2[v14];
    v33 = a2[v13 + v14];
    ++a2;
    result = (result + a3);
    --v11;
    v34 = vuzp1q_s32(vzip1q_s16(v30, v31), vzip2q_s16(v30, v31));
    v35 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v32, v5), v6), 3uLL), v20);
    v36 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v33, v5), v6), 3uLL), v20);
    v37 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(vuzp1q_s32(v28, v29), v5), v6), 3uLL), v20);
    v38 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v34, v5), v6), 3uLL), v20);
    v39 = v21;
    vst2_s16(v39, *(&v35 - 8));
    v39 += 8;
    *v39 = vzip2q_s16(v37, v35);
    i16 = v21[2].i16;
    vst2_s16(i16, *(&v36 - 8));
    v21[3] = vzip2q_s16(v38, v36);
    --v19;
  }

  while (v19 > 1);
  v41 = &a2[v13];
  v42 = &a2[v15];
  v43 = &a2[v13 + v15];
  v44 = &a2[v17];
  v45 = &a2[v13 + v17];
  if (v11 >= 1)
  {
LABEL_14:
    v47 = result + 2;
    v48 = v11 + 1;
    v49.i64[0] = 0x8000800080008000;
    v49.i64[1] = 0x8000800080008000;
    v50 = result[2].i16;
    do
    {
      v51 = *v42++;
      v52 = v51;
      v53 = v47[-2].i16;
      v54 = *v43++;
      v55 = vuzp1q_s32(vzip1q_s16(v52, v54), vzip2q_s16(v52, v54));
      v56 = *v44++;
      v57 = v56;
      v58 = *v45++;
      v59 = vuzp1q_s32(vzip1q_s16(v57, v58), vzip2q_s16(v57, v58));
      v60 = *a2++;
      v61 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v60, v5), v6), 3uLL), v49);
      v62 = *v41++;
      v63 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v62, v5), v6), 3uLL), v49);
      v64 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v55, v5), v6), 3uLL), v49);
      vst2_s16(v53, *(&v61 - 8));
      v65 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v59, v5), v6), 3uLL), v49);
      v47[-1] = vzip2q_s16(v64, v61);
      vst2_s16(v50, *(&v63 - 8));
      v50 = (v50 + a3);
      v47[1] = vzip2q_s16(v65, v63);
      --v48;
      v47 = v50;
    }

    while (v48 > 1);
  }

  return result;
}

int16x8_t *from_444_to_v216_8xH<(PixelFormat)1983000886,true,(PixelOutputStoreType)0>(int16x8_t *result, int16x8_t *a2, int a3, int a4, unsigned int a5)
{
  if (atomic_load_explicit(&qword_280A719A0, memory_order_acquire))
  {
    if (atomic_load_explicit(&qword_280A719A8, memory_order_acquire))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v70 = a5;
    v74 = a2;
    v66 = result;
    v82 = a3;
    v78 = a4;
    from_444_to_v216_8xH<(PixelFormat)1983000886,true,(PixelOutputStoreType)0>();
    a4 = v78;
    a5 = v70;
    a2 = v74;
    a3 = v82;
    result = v66;
    if (atomic_load_explicit(&qword_280A719A8, memory_order_acquire))
    {
LABEL_3:
      if (atomic_load_explicit(&qword_280A719B0, memory_order_acquire))
      {
        goto LABEL_4;
      }

LABEL_19:
      v72 = a5;
      v76 = a2;
      v68 = result;
      v84 = a3;
      v80 = a4;
      from_444_to_v216_8xH<(PixelFormat)1983000886,true,(PixelOutputStoreType)0>();
      a4 = v80;
      a5 = v72;
      a2 = v76;
      a3 = v84;
      result = v68;
      if (atomic_load_explicit(&qword_280A719B8, memory_order_acquire))
      {
        goto LABEL_5;
      }

      goto LABEL_20;
    }
  }

  v71 = a5;
  v75 = a2;
  v67 = result;
  v83 = a3;
  v79 = a4;
  from_444_to_v216_8xH<(PixelFormat)1983000886,true,(PixelOutputStoreType)0>();
  a4 = v79;
  a5 = v71;
  a2 = v75;
  a3 = v83;
  result = v67;
  if ((atomic_load_explicit(&qword_280A719B0, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_4:
  if (atomic_load_explicit(&qword_280A719B8, memory_order_acquire))
  {
    goto LABEL_5;
  }

LABEL_20:
  v73 = a5;
  v77 = a2;
  v69 = result;
  v85 = a3;
  v81 = a4;
  from_444_to_v216_8xH<(PixelFormat)1983000886,true,(PixelOutputStoreType)0>();
  a4 = v81;
  a5 = v73;
  a2 = v77;
  a3 = v85;
  result = v69;
LABEL_5:
  v5 = xmmword_280A71FC0;
  v6 = *algn_280A71FD0;
  v7 = 4 * a5;
  v8 = 8 * a5;
  v9 = a4 - a5;
  if (a4 <= a5)
  {
    v10 = 0;
  }

  else
  {
    v10 = a4 - a5;
  }

  v11 = a4 - v10;
  if (v10 < 1)
  {
    v46 = a5;
    v41 = &a2[v46];
    v42 = &a2[v7];
    v43 = &v42[v46];
    v44 = &a2[v8];
    v45 = &v44[v46];
    if (v11 < 1)
    {
      return result;
    }

    goto LABEL_14;
  }

  v12 = (a5 * a3);
  v13 = a5;
  v14 = 2 * a5;
  v15 = v7;
  v16 = 6 * a5;
  v17 = v8;
  v18 = 10 * a5;
  v19 = v9 + 1;
  v20.i64[0] = 0x8000800080008000;
  v20.i64[1] = 0x8000800080008000;
  do
  {
    v21 = (result + v12);
    v22 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(*a2, v5), v6), 3uLL), v20);
    v23 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[v13], v5), v6), 3uLL), v20);
    v24 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(vuzp1q_s32(vzip1q_s16(a2[v15], a2[v13 + v15]), vzip2q_s16(a2[v15], a2[v13 + v15])), v5), v6), 3uLL), v20);
    v25 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(vuzp1q_s32(vzip1q_s16(a2[v17], a2[v13 + v17]), vzip2q_s16(a2[v17], a2[v13 + v17])), v5), v6), 3uLL), v20);
    *result = vzip1q_s16(v24, v22);
    result[1] = vzip2q_s16(v24, v22);
    result[2] = vzip1q_s16(v25, v23);
    result[3] = vzip2q_s16(v25, v23);
    v26 = a2[v16];
    v27 = a2[v13 + v16];
    v28 = vzip1q_s16(v26, v27);
    v29 = vzip2q_s16(v26, v27);
    v30 = a2[v18];
    v31 = a2[v13 + v18];
    v32 = a2[v14];
    v33 = a2[v13 + v14];
    ++a2;
    result = (result + a3);
    --v11;
    v34 = vuzp1q_s32(vzip1q_s16(v30, v31), vzip2q_s16(v30, v31));
    v35 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v32, v5), v6), 3uLL), v20);
    v36 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v33, v5), v6), 3uLL), v20);
    v37 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(vuzp1q_s32(v28, v29), v5), v6), 3uLL), v20);
    v38 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v34, v5), v6), 3uLL), v20);
    v39 = v21;
    vst2_s16(v39, *(&v35 - 8));
    v39 += 8;
    *v39 = vzip2q_s16(v37, v35);
    i16 = v21[2].i16;
    vst2_s16(i16, *(&v36 - 8));
    v21[3] = vzip2q_s16(v38, v36);
    --v19;
  }

  while (v19 > 1);
  v41 = &a2[v13];
  v42 = &a2[v15];
  v43 = &a2[v13 + v15];
  v44 = &a2[v17];
  v45 = &a2[v13 + v17];
  if (v11 >= 1)
  {
LABEL_14:
    v47 = result + 2;
    v48 = v11 + 1;
    v49.i64[0] = 0x8000800080008000;
    v49.i64[1] = 0x8000800080008000;
    v50 = result[2].i16;
    do
    {
      v51 = *v42++;
      v52 = v51;
      v53 = v47[-2].i16;
      v54 = *v43++;
      v55 = vuzp1q_s32(vzip1q_s16(v52, v54), vzip2q_s16(v52, v54));
      v56 = *v44++;
      v57 = v56;
      v58 = *v45++;
      v59 = vuzp1q_s32(vzip1q_s16(v57, v58), vzip2q_s16(v57, v58));
      v60 = *a2++;
      v61 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v60, v5), v6), 3uLL), v49);
      v62 = *v41++;
      v63 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v62, v5), v6), 3uLL), v49);
      v64 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v55, v5), v6), 3uLL), v49);
      vst2_s16(v53, *(&v61 - 8));
      v65 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v59, v5), v6), 3uLL), v49);
      v47[-1] = vzip2q_s16(v64, v61);
      vst2_s16(v50, *(&v63 - 8));
      v50 = (v50 + a3);
      v47[1] = vzip2q_s16(v65, v63);
      --v48;
      v47 = v50;
    }

    while (v48 > 1);
  }

  return result;
}

int32x4_t *from_444_to_y416_8xH<(PixelFormat)2033463606,(AlphaOutputMethod)1,false,(PixelOutputStoreType)0>(int32x4_t *result, int16x8_t *a2, int a3, int a4, int16x8_t *a5, unsigned int a6, unsigned int a7)
{
  if (atomic_load_explicit(&qword_280A71A40, memory_order_acquire))
  {
    if (atomic_load_explicit(&qword_280A71A48, memory_order_acquire))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v107 = a5;
    v108 = a6;
    v109 = a2;
    v110 = a3;
    v111 = result;
    v112 = a7;
    v113 = a4;
    from_444_to_y416_8xH<(PixelFormat)2033463606,(AlphaOutputMethod)1,false,(PixelOutputStoreType)0>();
    a4 = v113;
    a7 = v112;
    result = v111;
    a3 = v110;
    a2 = v109;
    a6 = v108;
    a5 = v107;
    if (atomic_load_explicit(&qword_280A71A48, memory_order_acquire))
    {
      goto LABEL_3;
    }
  }

  v114 = a5;
  v115 = a6;
  v116 = a2;
  v117 = a3;
  v118 = result;
  v119 = a7;
  v120 = a4;
  from_444_to_y416_8xH<(PixelFormat)2033463606,(AlphaOutputMethod)1,false,(PixelOutputStoreType)0>();
  a4 = v120;
  a7 = v119;
  result = v118;
  a3 = v117;
  a2 = v116;
  a6 = v115;
  a5 = v114;
LABEL_3:
  v7 = 4 * a7;
  v8 = 8 * a7;
  v9 = a4 - a7;
  if (a4 <= a7)
  {
    v10 = 0;
  }

  else
  {
    v10 = a4 - a7;
  }

  v11 = a4 - v10;
  if (v10 < 1)
  {
    v73 = a7;
    v68 = &a2[v73];
    v69 = &a2[v7];
    v70 = &v69[v73];
    v71 = &a2[v8];
    v72 = &v71[v73];
    if (v11 < 1)
    {
      return result;
    }

    goto LABEL_12;
  }

  v12 = a7 * a3;
  v13 = a7;
  v14 = 2 * a7;
  v15 = v7;
  v16 = 6 * a7;
  v17 = v8;
  v18 = 10 * a7;
  v19 = xmmword_280A72100;
  v20 = *algn_280A72110;
  v21 = result + 4;
  v22 = v9 + 1;
  v23.i64[0] = 0x8000800080008000;
  v23.i64[1] = 0x8000800080008000;
  i32 = result[4].i32;
  do
  {
    v25 = (a5 + 8 * a6 + 16);
    v26 = (v21 + v12);
    v27 = v26[-4].i32;
    v28 = v21[-4].i32;
    v29 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(*a2, v19), v20), 3uLL), v23);
    v30 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[v15], v19), v20), 3uLL), v23);
    v31 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[v13 + v15], v19), v20), 3uLL), v23);
    v32 = vzip1q_s16(*a5, v29);
    v33 = vzip2q_s16(*a5, v29);
    v34 = vzip1q_s16(v30, v31);
    v35 = vzip2q_s16(v30, v31);
    vst2_f32(v28, v32);
    v36 = v21[-2].i32;
    vst2_f32(v36, v33);
    v21[-3] = vzip2q_s32(v32, v34);
    v21[-1] = vzip2q_s32(v33, v35);
    v37 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[v13], v19), v20), 3uLL), v23);
    v38 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[v17], v19), v20), 3uLL), v23);
    v39 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[v13 + v17], v19), v20), 3uLL), v23);
    v40 = a5[1];
    v41 = vzip1q_s16(v40, v37);
    v42 = vzip2q_s16(v40, v37);
    v43 = vzip1q_s16(v38, v39);
    v44 = vzip2q_s16(v38, v39);
    vst2_f32(i32, v41);
    i32 = (i32 + a3);
    v21[1] = vzip2q_s32(v41, v43);
    v45 = v21[2].i32;
    vst2_f32(v45, v42);
    v21[3] = vzip2q_s32(v42, v44);
    v46 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[v14], v19), v20), 3uLL), v23);
    v47 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[v16], v19), v20), 3uLL), v23);
    v48 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[v13 + v16], v19), v20), 3uLL), v23);
    v49 = *(a5 + 8 * a6);
    v50 = vzip1q_s16(v49, v46);
    v51 = vzip2q_s16(v49, v46);
    v52 = vzip1q_s16(v47, v48);
    vst2_f32(v27, v50);
    v53 = vzip2q_s16(v47, v48);
    v26[-3] = vzip2q_s32(v50, v52);
    v54 = v26[-2].i32;
    vst2_f32(v54, v51);
    v26[-1] = vzip2q_s32(v51, v53);
    v55 = a2[v13 + v14];
    v56 = a2[v18];
    v57 = a2[v13 + v18];
    ++a2;
    --v11;
    a5 = (a5 + a6);
    v58 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v55, v19), v20), 3uLL), v23);
    v59 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v56, v19), v20), 3uLL), v23);
    v60 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v57, v19), v20), 3uLL), v23);
    v61 = *v25;
    v62 = vzip1q_s16(*v25, v58);
    v63 = vzip1q_s16(v59, v60);
    v64 = v26;
    vst2_f32(v64, v62);
    v64 += 4;
    v65 = vzip2q_s16(v61, v58);
    v66 = vzip2q_s16(v59, v60);
    v67 = v26[2].i32;
    vst2_f32(v67, v65);
    *v64 = vzip2q_s32(v62, v63);
    v26[3] = vzip2q_s32(v65, v66);
    --v22;
    v21 = i32;
  }

  while (v22 > 1);
  v68 = &a2[v13];
  v69 = &a2[v15];
  v70 = &a2[v13 + v15];
  v71 = &a2[v17];
  v72 = &a2[v13 + v17];
  result = (i32 - 16);
  if (v11 >= 1)
  {
LABEL_12:
    v74 = xmmword_280A72100;
    v75 = *algn_280A72110;
    v76 = a3;
    v77 = v11 + 1;
    v78 = a5 + 1;
    result += 4;
    v79.i64[0] = 0x8000800080008000;
    v79.i64[1] = 0x8000800080008000;
    v80 = result;
    do
    {
      v81 = *a2++;
      v82 = result[-4].i32;
      v83 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v81, v74), v75), 3uLL), v79);
      v84 = *v69++;
      v85 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v84, v74), v75), 3uLL), v79);
      v86 = *v70++;
      v87 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v86, v74), v75), 3uLL), v79);
      v88 = v78[-1];
      v89 = vzip1q_s16(v88, v83);
      v90 = vzip2q_s16(v88, v83);
      v91 = vzip1q_s16(v85, v87);
      v92 = vzip2q_s16(v85, v87);
      vst2_f32(v82, v89);
      result[-3] = vzip2q_s32(v89, v91);
      v93 = result[-2].i32;
      vst2_f32(v93, v90);
      result[-1] = vzip2q_s32(v90, v92);
      v94 = *v68++;
      v95 = vshlq_n_s16(vminq_s16(vmaxq_s16(v94, v74), v75), 3uLL);
      v96 = *v71++;
      v97 = veorq_s8(v95, v79);
      v98 = vshlq_n_s16(vminq_s16(vmaxq_s16(v96, v74), v75), 3uLL);
      v99 = *v72++;
      v100 = veorq_s8(v98, v79);
      v101 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v99, v74), v75), 3uLL), v79);
      v102 = vzip1q_s16(*v78, v97);
      v103 = vzip2q_s16(*v78, v97);
      v104 = vzip1q_s16(v100, v101);
      vst2_f32(v80, v102);
      v80 = (v80 + v76);
      v105 = vzip2q_s16(v100, v101);
      result[1] = vzip2q_s32(v102, v104);
      v106 = result[2].i32;
      vst2_f32(v106, v103);
      result[3] = vzip2q_s32(v103, v105);
      --v77;
      v78 = (v78 + a6);
      result = v80;
    }

    while (v77 > 1);
  }

  return result;
}

int32x4_t *from_444_to_y416_8xH<(PixelFormat)2033463606,(AlphaOutputMethod)1,true,(PixelOutputStoreType)0>(int32x4_t *result, int16x8_t *a2, int a3, int a4, int16x8_t *a5, unsigned int a6, unsigned int a7)
{
  if (atomic_load_explicit(&qword_280A71A50, memory_order_acquire))
  {
    if (atomic_load_explicit(&qword_280A71A58, memory_order_acquire))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v107 = a5;
    v108 = a6;
    v109 = a2;
    v110 = a3;
    v111 = result;
    v112 = a7;
    v113 = a4;
    from_444_to_y416_8xH<(PixelFormat)2033463606,(AlphaOutputMethod)1,true,(PixelOutputStoreType)0>();
    a4 = v113;
    a7 = v112;
    result = v111;
    a3 = v110;
    a2 = v109;
    a6 = v108;
    a5 = v107;
    if (atomic_load_explicit(&qword_280A71A58, memory_order_acquire))
    {
      goto LABEL_3;
    }
  }

  v114 = a5;
  v115 = a6;
  v116 = a2;
  v117 = a3;
  v118 = result;
  v119 = a7;
  v120 = a4;
  from_444_to_y416_8xH<(PixelFormat)2033463606,(AlphaOutputMethod)1,true,(PixelOutputStoreType)0>();
  a4 = v120;
  a7 = v119;
  result = v118;
  a3 = v117;
  a2 = v116;
  a6 = v115;
  a5 = v114;
LABEL_3:
  v7 = 4 * a7;
  v8 = 8 * a7;
  v9 = a4 - a7;
  if (a4 <= a7)
  {
    v10 = 0;
  }

  else
  {
    v10 = a4 - a7;
  }

  v11 = a4 - v10;
  if (v10 < 1)
  {
    v73 = a7;
    v68 = &a2[v73];
    v69 = &a2[v7];
    v70 = &v69[v73];
    v71 = &a2[v8];
    v72 = &v71[v73];
    if (v11 < 1)
    {
      return result;
    }

    goto LABEL_12;
  }

  v12 = a7 * a3;
  v13 = a7;
  v14 = 2 * a7;
  v15 = v7;
  v16 = 6 * a7;
  v17 = v8;
  v18 = 10 * a7;
  v19 = xmmword_280A72120;
  v20 = *algn_280A72130;
  v21 = result + 4;
  v22 = v9 + 1;
  v23.i64[0] = 0x8000800080008000;
  v23.i64[1] = 0x8000800080008000;
  i32 = result[4].i32;
  do
  {
    v25 = (a5 + 8 * a6 + 16);
    v26 = (v21 + v12);
    v27 = v26[-4].i32;
    v28 = v21[-4].i32;
    v29 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(*a2, v19), v20), 3uLL), v23);
    v30 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[v15], v19), v20), 3uLL), v23);
    v31 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[v13 + v15], v19), v20), 3uLL), v23);
    v32 = vzip1q_s16(*a5, v29);
    v33 = vzip2q_s16(*a5, v29);
    v34 = vzip1q_s16(v30, v31);
    v35 = vzip2q_s16(v30, v31);
    vst2_f32(v28, v32);
    v36 = v21[-2].i32;
    vst2_f32(v36, v33);
    v21[-3] = vzip2q_s32(v32, v34);
    v21[-1] = vzip2q_s32(v33, v35);
    v37 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[v13], v19), v20), 3uLL), v23);
    v38 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[v17], v19), v20), 3uLL), v23);
    v39 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[v13 + v17], v19), v20), 3uLL), v23);
    v40 = a5[1];
    v41 = vzip1q_s16(v40, v37);
    v42 = vzip2q_s16(v40, v37);
    v43 = vzip1q_s16(v38, v39);
    v44 = vzip2q_s16(v38, v39);
    vst2_f32(i32, v41);
    i32 = (i32 + a3);
    v21[1] = vzip2q_s32(v41, v43);
    v45 = v21[2].i32;
    vst2_f32(v45, v42);
    v21[3] = vzip2q_s32(v42, v44);
    v46 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[v14], v19), v20), 3uLL), v23);
    v47 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[v16], v19), v20), 3uLL), v23);
    v48 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[v13 + v16], v19), v20), 3uLL), v23);
    v49 = *(a5 + 8 * a6);
    v50 = vzip1q_s16(v49, v46);
    v51 = vzip2q_s16(v49, v46);
    v52 = vzip1q_s16(v47, v48);
    vst2_f32(v27, v50);
    v53 = vzip2q_s16(v47, v48);
    v26[-3] = vzip2q_s32(v50, v52);
    v54 = v26[-2].i32;
    vst2_f32(v54, v51);
    v26[-1] = vzip2q_s32(v51, v53);
    v55 = a2[v13 + v14];
    v56 = a2[v18];
    v57 = a2[v13 + v18];
    ++a2;
    --v11;
    a5 = (a5 + a6);
    v58 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v55, v19), v20), 3uLL), v23);
    v59 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v56, v19), v20), 3uLL), v23);
    v60 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v57, v19), v20), 3uLL), v23);
    v61 = *v25;
    v62 = vzip1q_s16(*v25, v58);
    v63 = vzip1q_s16(v59, v60);
    v64 = v26;
    vst2_f32(v64, v62);
    v64 += 4;
    v65 = vzip2q_s16(v61, v58);
    v66 = vzip2q_s16(v59, v60);
    v67 = v26[2].i32;
    vst2_f32(v67, v65);
    *v64 = vzip2q_s32(v62, v63);
    v26[3] = vzip2q_s32(v65, v66);
    --v22;
    v21 = i32;
  }

  while (v22 > 1);
  v68 = &a2[v13];
  v69 = &a2[v15];
  v70 = &a2[v13 + v15];
  v71 = &a2[v17];
  v72 = &a2[v13 + v17];
  result = (i32 - 16);
  if (v11 >= 1)
  {
LABEL_12:
    v74 = xmmword_280A72120;
    v75 = *algn_280A72130;
    v76 = a3;
    v77 = v11 + 1;
    v78 = a5 + 1;
    result += 4;
    v79.i64[0] = 0x8000800080008000;
    v79.i64[1] = 0x8000800080008000;
    v80 = result;
    do
    {
      v81 = *a2++;
      v82 = result[-4].i32;
      v83 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v81, v74), v75), 3uLL), v79);
      v84 = *v69++;
      v85 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v84, v74), v75), 3uLL), v79);
      v86 = *v70++;
      v87 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v86, v74), v75), 3uLL), v79);
      v88 = v78[-1];
      v89 = vzip1q_s16(v88, v83);
      v90 = vzip2q_s16(v88, v83);
      v91 = vzip1q_s16(v85, v87);
      v92 = vzip2q_s16(v85, v87);
      vst2_f32(v82, v89);
      result[-3] = vzip2q_s32(v89, v91);
      v93 = result[-2].i32;
      vst2_f32(v93, v90);
      result[-1] = vzip2q_s32(v90, v92);
      v94 = *v68++;
      v95 = vshlq_n_s16(vminq_s16(vmaxq_s16(v94, v74), v75), 3uLL);
      v96 = *v71++;
      v97 = veorq_s8(v95, v79);
      v98 = vshlq_n_s16(vminq_s16(vmaxq_s16(v96, v74), v75), 3uLL);
      v99 = *v72++;
      v100 = veorq_s8(v98, v79);
      v101 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v99, v74), v75), 3uLL), v79);
      v102 = vzip1q_s16(*v78, v97);
      v103 = vzip2q_s16(*v78, v97);
      v104 = vzip1q_s16(v100, v101);
      vst2_f32(v80, v102);
      v80 = (v80 + v76);
      v105 = vzip2q_s16(v100, v101);
      result[1] = vzip2q_s32(v102, v104);
      v106 = result[2].i32;
      vst2_f32(v106, v103);
      result[3] = vzip2q_s32(v103, v105);
      --v77;
      v78 = (v78 + a6);
      result = v80;
    }

    while (v77 > 1);
  }

  return result;
}

_WORD *from_444_to_AYUV_UYVY_WxH<(PixelFormat)2033463606,(AlphaOutputMethod)1>(_WORD *result, uint64_t a2, int a3, int a4, _WORD *a5, int a6, int a7, int a8)
{
  if (a8 >= 1 && a7 >= 1)
  {
    v8 = 0;
    v9 = (a8 * a7);
    v10 = 8u / a8 * a6;
    v11 = a3;
    v12 = 2 * (4 * v9);
    v13 = a2 + v12;
    v14 = a2 + v12 + v12;
    v15 = 2 * v9;
    v16 = a2 + v12 + 2 * v9;
    v17 = v16 + v12;
    v18 = a2 + v15;
    v19 = 2 * a7;
    v20 = 8u / a7;
    do
    {
      if (v8 == (a4 & ~(a4 >> 31)))
      {
        break;
      }

      v21 = 0;
      v22 = a5;
      v23 = result;
      do
      {
        v24 = *(a2 + 2 * v21);
        v25 = *(v13 + 2 * v21);
        v26 = *(v16 + 2 * v21);
        *v23 = *v22;
        if (v24 >= 4095)
        {
          v27 = 4095;
        }

        else
        {
          v27 = v24;
        }

        if (v27 <= -4096)
        {
          LOWORD(v27) = -4096;
        }

        v23[1] = (8 * v27) ^ 0x8000;
        if (v25 >= 4095)
        {
          v28 = 4095;
        }

        else
        {
          v28 = v25;
        }

        if (v28 <= -4096)
        {
          LOWORD(v28) = -4096;
        }

        v23[2] = (8 * v28) ^ 0x8000;
        if (v26 >= 4095)
        {
          v29 = 4095;
        }

        else
        {
          v29 = v26;
        }

        if (v29 <= -4096)
        {
          LOWORD(v29) = -4096;
        }

        v23[3] = (8 * v29) ^ 0x8000;
        v23 += 4;
        v22 += v20;
        ++v21;
      }

      while (a7 != v21);
      v30 = 0;
      do
      {
        v31 = *(v18 + 2 * v30);
        v32 = *(v14 + 2 * v30);
        v33 = *(v17 + 2 * v30);
        *v23 = *v22;
        if (v31 >= 4095)
        {
          v34 = 4095;
        }

        else
        {
          v34 = v31;
        }

        if (v34 <= -4096)
        {
          LOWORD(v34) = -4096;
        }

        v23[1] = (8 * v34) ^ 0x8000;
        if (v32 >= 4095)
        {
          v35 = 4095;
        }

        else
        {
          v35 = v32;
        }

        if (v35 <= -4096)
        {
          LOWORD(v35) = -4096;
        }

        v23[2] = (8 * v35) ^ 0x8000;
        if (v33 >= 4095)
        {
          v36 = 4095;
        }

        else
        {
          v36 = v33;
        }

        if (v36 <= -4096)
        {
          LOWORD(v36) = -4096;
        }

        v23[3] = (8 * v36) ^ 0x8000;
        v22 += v20;
        ++v30;
        v23 += 4;
      }

      while (a7 != v30);
      result = (result + v11);
      a5 = (a5 + v10);
      v18 += v19;
      v16 += v19;
      v17 += v19;
      ++v8;
      v13 += v19;
      a2 += v19;
      v14 += v19;
    }

    while (v8 != a8);
    v37 = 0;
    v38 = v16 + v15;
    v39 = v17 + v15;
    v40 = v18 + v15;
    if (a8 > a4)
    {
      a4 = a8;
    }

    v41 = a4 - a8;
    do
    {
      if (v37 == v41)
      {
        break;
      }

      v42 = 0;
      v43 = a5;
      v44 = result;
      do
      {
        v45 = *(v18 + 2 * v42);
        v46 = *(v16 + 2 * v42);
        v47 = *(v38 + 2 * v42);
        *v44 = *v43;
        if (v45 >= 4095)
        {
          v48 = 4095;
        }

        else
        {
          v48 = v45;
        }

        if (v48 <= -4096)
        {
          LOWORD(v48) = -4096;
        }

        v44[1] = (8 * v48) ^ 0x8000;
        if (v46 >= 4095)
        {
          v49 = 4095;
        }

        else
        {
          v49 = v46;
        }

        if (v49 <= -4096)
        {
          LOWORD(v49) = -4096;
        }

        v44[2] = (8 * v49) ^ 0x8000;
        if (v47 >= 4095)
        {
          v50 = 4095;
        }

        else
        {
          v50 = v47;
        }

        if (v50 <= -4096)
        {
          LOWORD(v50) = -4096;
        }

        v44[3] = (8 * v50) ^ 0x8000;
        v44 += 4;
        v43 += v20;
        ++v42;
      }

      while (a7 != v42);
      v51 = 0;
      do
      {
        v52 = *(v40 + 2 * v51);
        v53 = *(v17 + 2 * v51);
        v54 = *(v39 + 2 * v51);
        *v44 = *v43;
        if (v52 >= 4095)
        {
          v55 = 4095;
        }

        else
        {
          v55 = v52;
        }

        if (v55 <= -4096)
        {
          LOWORD(v55) = -4096;
        }

        v44[1] = (8 * v55) ^ 0x8000;
        if (v53 >= 4095)
        {
          v56 = 4095;
        }

        else
        {
          v56 = v53;
        }

        if (v56 <= -4096)
        {
          LOWORD(v56) = -4096;
        }

        v44[2] = (8 * v56) ^ 0x8000;
        if (v54 >= 4095)
        {
          v57 = 4095;
        }

        else
        {
          v57 = v54;
        }

        if (v57 <= -4096)
        {
          LOWORD(v57) = -4096;
        }

        v44[3] = (8 * v57) ^ 0x8000;
        v43 += v20;
        ++v51;
        v44 += 4;
      }

      while (a7 != v51);
      result = (result + v11);
      a5 = (a5 + v10);
      ++v37;
      v38 += v19;
      v16 += v19;
      v18 += v19;
      v39 += v19;
      v17 += v19;
      v40 += v19;
    }

    while (v37 != a8);
  }

  return result;
}

int32x4_t *from_444_to_y416_8xH<(PixelFormat)2033463606,(AlphaOutputMethod)2,false,(PixelOutputStoreType)0>(int32x4_t *result, int16x8_t *a2, int a3, int a4, unsigned int a5)
{
  if (atomic_load_explicit(&qword_280A71A60, memory_order_acquire))
  {
    if (atomic_load_explicit(&qword_280A71A68, memory_order_acquire))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v98 = a3;
    v100 = a2;
    v94 = result;
    v95 = a4;
    from_444_to_y416_8xH<(PixelFormat)2033463606,(AlphaOutputMethod)2,false,(PixelOutputStoreType)0>();
    a4 = v95;
    a3 = v98;
    a2 = v100;
    result = v94;
    if (atomic_load_explicit(&qword_280A71A68, memory_order_acquire))
    {
      goto LABEL_3;
    }
  }

  v99 = a3;
  v101 = a2;
  v96 = result;
  v97 = a4;
  from_444_to_y416_8xH<(PixelFormat)2033463606,(AlphaOutputMethod)2,false,(PixelOutputStoreType)0>();
  a4 = v97;
  a3 = v99;
  a2 = v101;
  result = v96;
LABEL_3:
  v6 = 4 * a5;
  v7 = 8 * a5;
  if (a4 <= a5)
  {
    v8 = 0;
  }

  else
  {
    v8 = a4 - a5;
  }

  v9 = a4 - v8;
  if (v8 < 1)
  {
    v63 = a5;
    v58 = &a2[v63];
    v59 = &a2[v6];
    v60 = &v59[v63];
    v61 = &a2[v7];
    v62 = &v61[v63];
    if (v9 < 1)
    {
      return result;
    }

    goto LABEL_12;
  }

  v10 = xmmword_280A72140;
  v11 = *algn_280A72150;
  v12 = a5;
  v13 = 2 * a5;
  v14 = v6;
  v15 = 6 * a5;
  v16 = v7;
  v17 = 10 * a5;
  v18 = a4 - a5 + 1;
  v19 = (a5 * a3) + 64;
  v20.i64[0] = 0x8000800080008000;
  v20.i64[1] = 0x8000800080008000;
  v21.i64[0] = -1;
  v21.i64[1] = -1;
  do
  {
    v22 = (result + v19);
    v23 = (result[-4].i32 + v19);
    v24 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(*a2, v10), v11), 3uLL), v20);
    v25 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[v14], v10), v11), 3uLL), v20);
    v26 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[v12 + v14], v10), v11), 3uLL), v20);
    v27 = vzip1q_s16(v21, v24);
    v28 = vzip2q_s16(v21, v24);
    v29 = vzip1q_s16(v25, v26);
    v30 = vzip2q_s16(v25, v26);
    *result = vzip1q_s32(v27, v29);
    result[1] = vzip2q_s32(v27, v29);
    result[2] = vzip1q_s32(v28, v30);
    result[3] = vzip2q_s32(v28, v30);
    v31 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[v12], v10), v11), 3uLL), v20);
    v32 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[v16], v10), v11), 3uLL), v20);
    v33 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[v12 + v16], v10), v11), 3uLL), v20);
    v34 = vzip1q_s16(v21, v31);
    v35 = vzip2q_s16(v21, v31);
    v36 = vzip1q_s16(v32, v33);
    v37 = vzip2q_s16(v32, v33);
    result[4] = vzip1q_s32(v34, v36);
    result[5] = vzip2q_s32(v34, v36);
    result[6] = vzip1q_s32(v35, v37);
    result[7] = vzip2q_s32(v35, v37);
    v38 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[v13], v10), v11), 3uLL), v20);
    v39 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[v15], v10), v11), 3uLL), v20);
    v40 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[v12 + v15], v10), v11), 3uLL), v20);
    v41 = vzip1q_s16(v21, v38);
    v42 = vzip2q_s16(v21, v38);
    v43 = vzip1q_s16(v39, v40);
    v44 = vzip2q_s16(v39, v40);
    vst2_f32(v23, v41);
    v22[-3] = vzip2q_s32(v41, v43);
    v45 = (result[-2].i32 + v19);
    vst2_f32(v45, v42);
    v22[-1] = vzip2q_s32(v42, v44);
    v46 = a2[v12 + v13];
    v47 = a2[v17];
    v48 = a2[v12 + v17];
    ++a2;
    result = (result + a3);
    --v9;
    v49 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v46, v10), v11), 3uLL), v20);
    v50 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v47, v10), v11), 3uLL), v20);
    v51 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v48, v10), v11), 3uLL), v20);
    v52 = vzip1q_s16(v21, v49);
    v53 = vzip2q_s16(v21, v49);
    v54 = vzip1q_s16(v50, v51);
    v55 = vzip2q_s16(v50, v51);
    v56 = v22;
    vst2_f32(v56, v52);
    v56 += 4;
    *v56 = vzip2q_s32(v52, v54);
    i32 = v22[2].i32;
    vst2_f32(i32, v53);
    v22[3] = vzip2q_s32(v53, v55);
    --v18;
  }

  while (v18 > 1);
  v58 = &a2[v12];
  v59 = &a2[v14];
  v60 = &a2[v12 + v14];
  v61 = &a2[v16];
  v62 = &a2[v12 + v16];
  if (v9 >= 1)
  {
LABEL_12:
    v64 = xmmword_280A72140;
    v65 = *algn_280A72150;
    v66 = v9 + 1;
    v67 = result + 4;
    v68.i64[0] = 0x8000800080008000;
    v68.i64[1] = 0x8000800080008000;
    v69.i64[0] = -1;
    v69.i64[1] = -1;
    v70 = result[4].i32;
    do
    {
      v71 = *a2++;
      v72 = v67[-4].i32;
      v73 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v71, v64), v65), 3uLL), v68);
      v74 = *v59++;
      v75 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v74, v64), v65), 3uLL), v68);
      v76 = *v60++;
      v77 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v76, v64), v65), 3uLL), v68);
      v78 = vzip1q_s16(v69, v73);
      v79 = vzip2q_s16(v69, v73);
      v80 = vzip1q_s16(v75, v77);
      v81 = vzip2q_s16(v75, v77);
      vst2_f32(v72, v78);
      v67[-3] = vzip2q_s32(v78, v80);
      v82 = v67[-2].i32;
      vst2_f32(v82, v79);
      v67[-1] = vzip2q_s32(v79, v81);
      v83 = *v58++;
      v84 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v83, v64), v65), 3uLL), v68);
      v85 = *v61++;
      v86 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v85, v64), v65), 3uLL), v68);
      v87 = *v62++;
      v88 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v87, v64), v65), 3uLL), v68);
      v89 = vzip1q_s16(v69, v84);
      v90 = vzip1q_s16(v86, v88);
      vst2_f32(v70, v89);
      v70 = (v70 + a3);
      v91 = vzip2q_s16(v69, v84);
      v92 = vzip2q_s16(v86, v88);
      v93 = v67[2].i32;
      vst2_f32(v93, v91);
      v67[1] = vzip2q_s32(v89, v90);
      v67[3] = vzip2q_s32(v91, v92);
      --v66;
      v67 = v70;
    }

    while (v66 > 1);
  }

  return result;
}

int32x4_t *from_444_to_y416_8xH<(PixelFormat)2033463606,(AlphaOutputMethod)2,true,(PixelOutputStoreType)0>(int32x4_t *result, int16x8_t *a2, int a3, int a4, unsigned int a5)
{
  if (atomic_load_explicit(&qword_280A71A70, memory_order_acquire))
  {
    if (atomic_load_explicit(&qword_280A71A78, memory_order_acquire))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v98 = a3;
    v100 = a2;
    v94 = result;
    v95 = a4;
    from_444_to_y416_8xH<(PixelFormat)2033463606,(AlphaOutputMethod)2,true,(PixelOutputStoreType)0>();
    a4 = v95;
    a3 = v98;
    a2 = v100;
    result = v94;
    if (atomic_load_explicit(&qword_280A71A78, memory_order_acquire))
    {
      goto LABEL_3;
    }
  }

  v99 = a3;
  v101 = a2;
  v96 = result;
  v97 = a4;
  from_444_to_y416_8xH<(PixelFormat)2033463606,(AlphaOutputMethod)2,true,(PixelOutputStoreType)0>();
  a4 = v97;
  a3 = v99;
  a2 = v101;
  result = v96;
LABEL_3:
  v6 = 4 * a5;
  v7 = 8 * a5;
  if (a4 <= a5)
  {
    v8 = 0;
  }

  else
  {
    v8 = a4 - a5;
  }

  v9 = a4 - v8;
  if (v8 < 1)
  {
    v63 = a5;
    v58 = &a2[v63];
    v59 = &a2[v6];
    v60 = &v59[v63];
    v61 = &a2[v7];
    v62 = &v61[v63];
    if (v9 < 1)
    {
      return result;
    }

    goto LABEL_12;
  }

  v10 = xmmword_280A72160;
  v11 = *algn_280A72170;
  v12 = a5;
  v13 = 2 * a5;
  v14 = v6;
  v15 = 6 * a5;
  v16 = v7;
  v17 = 10 * a5;
  v18 = a4 - a5 + 1;
  v19 = (a5 * a3) + 64;
  v20.i64[0] = 0x8000800080008000;
  v20.i64[1] = 0x8000800080008000;
  v21.i64[0] = -1;
  v21.i64[1] = -1;
  do
  {
    v22 = (result + v19);
    v23 = (result[-4].i32 + v19);
    v24 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(*a2, v10), v11), 3uLL), v20);
    v25 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[v14], v10), v11), 3uLL), v20);
    v26 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[v12 + v14], v10), v11), 3uLL), v20);
    v27 = vzip1q_s16(v21, v24);
    v28 = vzip2q_s16(v21, v24);
    v29 = vzip1q_s16(v25, v26);
    v30 = vzip2q_s16(v25, v26);
    *result = vzip1q_s32(v27, v29);
    result[1] = vzip2q_s32(v27, v29);
    result[2] = vzip1q_s32(v28, v30);
    result[3] = vzip2q_s32(v28, v30);
    v31 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[v12], v10), v11), 3uLL), v20);
    v32 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[v16], v10), v11), 3uLL), v20);
    v33 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[v12 + v16], v10), v11), 3uLL), v20);
    v34 = vzip1q_s16(v21, v31);
    v35 = vzip2q_s16(v21, v31);
    v36 = vzip1q_s16(v32, v33);
    v37 = vzip2q_s16(v32, v33);
    result[4] = vzip1q_s32(v34, v36);
    result[5] = vzip2q_s32(v34, v36);
    result[6] = vzip1q_s32(v35, v37);
    result[7] = vzip2q_s32(v35, v37);
    v38 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[v13], v10), v11), 3uLL), v20);
    v39 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[v15], v10), v11), 3uLL), v20);
    v40 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[v12 + v15], v10), v11), 3uLL), v20);
    v41 = vzip1q_s16(v21, v38);
    v42 = vzip2q_s16(v21, v38);
    v43 = vzip1q_s16(v39, v40);
    v44 = vzip2q_s16(v39, v40);
    vst2_f32(v23, v41);
    v22[-3] = vzip2q_s32(v41, v43);
    v45 = (result[-2].i32 + v19);
    vst2_f32(v45, v42);
    v22[-1] = vzip2q_s32(v42, v44);
    v46 = a2[v12 + v13];
    v47 = a2[v17];
    v48 = a2[v12 + v17];
    ++a2;
    result = (result + a3);
    --v9;
    v49 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v46, v10), v11), 3uLL), v20);
    v50 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v47, v10), v11), 3uLL), v20);
    v51 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v48, v10), v11), 3uLL), v20);
    v52 = vzip1q_s16(v21, v49);
    v53 = vzip2q_s16(v21, v49);
    v54 = vzip1q_s16(v50, v51);
    v55 = vzip2q_s16(v50, v51);
    v56 = v22;
    vst2_f32(v56, v52);
    v56 += 4;
    *v56 = vzip2q_s32(v52, v54);
    i32 = v22[2].i32;
    vst2_f32(i32, v53);
    v22[3] = vzip2q_s32(v53, v55);
    --v18;
  }

  while (v18 > 1);
  v58 = &a2[v12];
  v59 = &a2[v14];
  v60 = &a2[v12 + v14];
  v61 = &a2[v16];
  v62 = &a2[v12 + v16];
  if (v9 >= 1)
  {
LABEL_12:
    v64 = xmmword_280A72160;
    v65 = *algn_280A72170;
    v66 = v9 + 1;
    v67 = result + 4;
    v68.i64[0] = 0x8000800080008000;
    v68.i64[1] = 0x8000800080008000;
    v69.i64[0] = -1;
    v69.i64[1] = -1;
    v70 = result[4].i32;
    do
    {
      v71 = *a2++;
      v72 = v67[-4].i32;
      v73 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v71, v64), v65), 3uLL), v68);
      v74 = *v59++;
      v75 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v74, v64), v65), 3uLL), v68);
      v76 = *v60++;
      v77 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v76, v64), v65), 3uLL), v68);
      v78 = vzip1q_s16(v69, v73);
      v79 = vzip2q_s16(v69, v73);
      v80 = vzip1q_s16(v75, v77);
      v81 = vzip2q_s16(v75, v77);
      vst2_f32(v72, v78);
      v67[-3] = vzip2q_s32(v78, v80);
      v82 = v67[-2].i32;
      vst2_f32(v82, v79);
      v67[-1] = vzip2q_s32(v79, v81);
      v83 = *v58++;
      v84 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v83, v64), v65), 3uLL), v68);
      v85 = *v61++;
      v86 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v85, v64), v65), 3uLL), v68);
      v87 = *v62++;
      v88 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v87, v64), v65), 3uLL), v68);
      v89 = vzip1q_s16(v69, v84);
      v90 = vzip1q_s16(v86, v88);
      vst2_f32(v70, v89);
      v70 = (v70 + a3);
      v91 = vzip2q_s16(v69, v84);
      v92 = vzip2q_s16(v86, v88);
      v93 = v67[2].i32;
      vst2_f32(v93, v91);
      v67[1] = vzip2q_s32(v89, v90);
      v67[3] = vzip2q_s32(v91, v92);
      --v66;
      v67 = v70;
    }

    while (v66 > 1);
  }

  return result;
}

__int16 *from_444_to_AYUV_UYVY_WxH<(PixelFormat)2033463606,(AlphaOutputMethod)2>(__int16 *result, int16x8_t *a2, int a3, int a4, unsigned int a5, int a6)
{
  v6 = (a6 - 1);
  if (a6 >= 1)
  {
    v161 = a5 - 1;
    if (a5 >= 1)
    {
      v7 = result;
      v8 = 0;
      v9 = a6 * a5;
      v10 = 2 * (4 * v9);
      v11 = &a2->i16[v10 / 2];
      v12 = &a2->i16[v10 / 2 + v10 / 2];
      v146 = v9;
      v13 = 2 * v9;
      v14 = a2 + 2 * v9 + v10;
      v15 = &a2->i16[v9];
      v16 = a2->u64 + 2 * a5 * v6 + 2 * v161 + 2;
      v149 = 4 * (4 * v9);
      v157 = v16 + v149;
      v155 = v16 + v149 + 2 * v9;
      v153 = v16 + 2 * v9;
      v163 = a3;
      v147 = 4 * v161;
      v144 = a3 * v6;
      v145 = a5 * v6;
      v17 = &v7[v147 + 4] + v144;
      v19 = v16 + v10 > v7 && v11 < v17;
      if (v16 + v10 + v13 > v7 && v14 < v17)
      {
        v19 = 1;
      }

      v22 = v16 > v7 && v17 > a2 || v19;
      if (a3 < 0)
      {
        v22 = 1;
      }

      v151 = v22;
      v23 = a5 & 0x7FFFFFF8;
      v24 = 2 * v23;
      v25 = 8 * v23;
      v160 = v13;
      v150 = &v7[v147 + 8];
      v26 = 2 * a5;
      v27 = v10 + v13;
      v28.i64[0] = 0xF000F000F000F000;
      v28.i64[1] = 0xF000F000F000F000;
      v29.i64[0] = 0xF000F000F000F000;
      v29.i64[1] = 0xF000F000F000F000;
      v30.i64[0] = 0x8000800080008000;
      v30.i64[1] = 0x8000800080008000;
      v31.i64[0] = -1;
      v31.i64[1] = -1;
      v158 = v15;
      v159 = v14 + v10;
      v32 = v15;
      v33 = (v14 + v10);
      v34 = a2->u64 + v10 + v10;
      while (v8 != (a4 & ~(a4 >> 31)))
      {
        if (a5 < 8 || (v151 & 1) != 0)
        {
          v35 = 0;
          v36 = 0;
          v37 = v14;
          v38 = v11;
          v39 = a2;
          v40 = v7;
        }

        else
        {
          v71 = 0;
          v37 = (v14 + v24);
          v38 = &v11[v24 / 2];
          v39 = (a2 + v24);
          v40 = &v7[v25 / 2];
          v72 = a2;
          do
          {
            v73 = &v7[v71 / 2];
            v74 = veorq_s8(vshlq_n_s16(vmaxq_s16(vminq_s16(*v72, v28), v29), 3uLL), v30);
            v75 = veorq_s8(vshlq_n_s16(vmaxq_s16(vminq_s16(*(v72 + v27), v28), v29), 3uLL), v30);
            v76 = veorq_s8(vshlq_n_s16(vmaxq_s16(vminq_s16(*(v72 + v10), v28), v29), 3uLL), v30);
            vst4q_s16(v73, *v31.i8);
            v71 += 64;
            ++v72;
          }

          while (v25 != v71);
          v35 = a5 & 0x7FFFFFF8;
          v36 = a5 & 0x7FFFFFF8;
          v42 = v35 - 1;
          if (v23 == a5)
          {
            goto LABEL_42;
          }
        }

        v41 = a5 - v36;
        v42 = v35 + (v161 - v36);
        do
        {
          v44 = v39->i16[0];
          v39 = (v39 + 2);
          v43 = v44;
          v46 = *v38++;
          v45 = v46;
          v48 = *v37++;
          v47 = v48;
          *v40 = -1;
          if (v43 >= 4095)
          {
            v43 = 4095;
          }

          if (v43 <= -4096)
          {
            LOWORD(v43) = -4096;
          }

          v40[1] = (8 * v43) ^ 0x8000;
          if (v45 >= 4095)
          {
            v49 = 4095;
          }

          else
          {
            v49 = v45;
          }

          if (v49 <= -4096)
          {
            LOWORD(v49) = -4096;
          }

          v40[2] = (8 * v49) ^ 0x8000;
          if (v47 >= 4095)
          {
            v47 = 4095;
          }

          if (v47 <= -4096)
          {
            LOWORD(v47) = -4096;
          }

          v40[3] = (8 * v47) ^ 0x8000;
          v40 += 4;
          --v41;
        }

        while (v41);
LABEL_42:
        if (a5 < 8)
        {
          v50 = 0;
LABEL_44:
          v51 = v33;
          v52 = v12;
          v53 = v32;
          v54 = v40;
LABEL_45:
          v55 = a5 - v50;
          do
          {
            v57 = *v53++;
            v56 = v57;
            v59 = *v52++;
            v58 = v59;
            v61 = *v51++;
            v60 = v61;
            *v54 = -1;
            if (v56 >= 4095)
            {
              v56 = 4095;
            }

            if (v56 <= -4096)
            {
              LOWORD(v56) = -4096;
            }

            v54[1] = (8 * v56) ^ 0x8000;
            if (v58 >= 4095)
            {
              v62 = 4095;
            }

            else
            {
              v62 = v58;
            }

            if (v62 <= -4096)
            {
              LOWORD(v62) = -4096;
            }

            v54[2] = (8 * v62) ^ 0x8000;
            if (v60 >= 4095)
            {
              v63 = 4095;
            }

            else
            {
              v63 = v60;
            }

            if (v63 <= -4096)
            {
              LOWORD(v63) = -4096;
            }

            v54[3] = (8 * v63) ^ 0x8000;
            v54 += 4;
            --v55;
          }

          while (v55);
          goto LABEL_61;
        }

        v50 = 0;
        v64 = v150 + 8 * v42 + v8 * a3;
        v66 = v40 < v157 && v34 < v64;
        v68 = v40 < v153 && v158 < v64;
        v69 = v159 >= v64 || v40 >= v155;
        if (!v69 || v66 || v68)
        {
          goto LABEL_44;
        }

        v70 = 0;
        v51 = &v33[v24 / 2];
        v52 = &v12[v24 / 2];
        v53 = &v32[v24 / 2];
        v54 = &v40[v25 / 2];
        do
        {
          v164.val[1] = veorq_s8(vshlq_n_s16(vmaxq_s16(vminq_s16(*&v32[v70 / 2], v28), v29), 3uLL), v30);
          v164.val[3] = veorq_s8(vshlq_n_s16(vmaxq_s16(vminq_s16(*&v32[v149 / 2 + v70 / 2], v28), v29), 3uLL), v30);
          v164.val[2] = veorq_s8(vshlq_n_s16(vmaxq_s16(vminq_s16(*(a2 + v149 + v70), v28), v29), 3uLL), v30);
          v164.val[0] = v31;
          vst4q_s16(v40, v164);
          v40 += 32;
          v70 += 16;
        }

        while (v24 != v70);
        v50 = a5 & 0x7FFFFFF8;
        if (v23 != a5)
        {
          goto LABEL_45;
        }

LABEL_61:
        v7 = (v7 + a3);
        a2 = (a2 + v26);
        v32 = (v32 + v26);
        v11 = (v11 + v26);
        v12 = (v12 + v26);
        v14 += v26;
        v33 = (v33 + v26);
        if (++v8 == a6)
        {
          break;
        }
      }

      v77 = 0;
      v78 = (v14 + v160);
      v79 = a4;
      if (a6 > a4)
      {
        v79 = a6;
      }

      v80 = v79 - a6;
      v81 = 2 * (v145 + v161 + v146) + 2;
      v82 = 2 * (v145 + v161) + 2;
      v83 = v7 + v144 + v147 * 2 + 8;
      v85 = v7 < v14 + v82 && v14 < v83;
      v87 = v7 < v14 + v81 && v78 < v83 || v85;
      if (v7 >= (v32 + v82) || v32 >= v83)
      {
        v89 = v87;
      }

      else
      {
        v89 = 1;
      }

      v90 = v32 + v160;
      v156 = v33 + v82;
      v154 = v32 + v81;
      if (a3 < 0)
      {
        v91 = 1;
      }

      else
      {
        v91 = v89;
      }

      v152 = v91;
      v92.i64[0] = 0xF000F000F000F000;
      v92.i64[1] = 0xF000F000F000F000;
      v93.i64[0] = 0xF000F000F000F000;
      v93.i64[1] = 0xF000F000F000F000;
      v94.i64[0] = 0x8000800080008000;
      v94.i64[1] = 0x8000800080008000;
      v95.i64[0] = -1;
      v95.i64[1] = -1;
      v96 = v33;
      result = v7;
      v97 = (v32 + v160);
      v98 = (v33 + v160);
      do
      {
        if (v77 == v80)
        {
          return result;
        }

        if (a5 < 8 || (v152 & 1) != 0)
        {
          v99 = 0;
          v100 = 0;
          v101 = v78;
          v102 = v14;
          v103 = v32;
          v104 = result;
        }

        else
        {
          v138 = 0;
          v101 = &v78[v24 / 2];
          v102 = (v14 + v24);
          v103 = &v32[v24 / 2];
          v104 = &result[v25 / 2];
          v139 = a5 & 0x7FFFFFF8;
          v140 = result;
          do
          {
            v141 = veorq_s8(vshlq_n_s16(vmaxq_s16(vminq_s16(*&v32[v138], v92), v93), 3uLL), v94);
            v142 = veorq_s8(vshlq_n_s16(vmaxq_s16(vminq_s16(*(v14 + v160 + v138 * 2), v92), v93), 3uLL), v94);
            v143 = veorq_s8(vshlq_n_s16(vmaxq_s16(vminq_s16(*(v14 + v138 * 2), v92), v93), 3uLL), v94);
            vst4q_s16(v140, *v95.i8);
            v140 += 32;
            v138 += 8;
            v139 -= 8;
          }

          while (v139);
          v99 = a5 & 0x7FFFFFF8;
          v100 = a5 & 0x7FFFFFF8;
          v106 = v99 - 1;
          if (v23 == a5)
          {
            goto LABEL_134;
          }
        }

        v105 = a5 - v100;
        v106 = v99 + (v161 - v100);
        do
        {
          v108 = *v103++;
          v107 = v108;
          v110 = *v102++;
          v109 = v110;
          v112 = *v101++;
          v111 = v112;
          *v104 = -1;
          if (v107 >= 4095)
          {
            v107 = 4095;
          }

          if (v107 <= -4096)
          {
            LOWORD(v107) = -4096;
          }

          v104[1] = (8 * v107) ^ 0x8000;
          if (v109 >= 4095)
          {
            v113 = 4095;
          }

          else
          {
            v113 = v109;
          }

          if (v113 <= -4096)
          {
            LOWORD(v113) = -4096;
          }

          v104[2] = (8 * v113) ^ 0x8000;
          if (v111 >= 4095)
          {
            v114 = 4095;
          }

          else
          {
            v114 = v111;
          }

          if (v114 <= -4096)
          {
            LOWORD(v114) = -4096;
          }

          v104[3] = (8 * v114) ^ 0x8000;
          v104 += 4;
          --v105;
        }

        while (v105);
LABEL_134:
        if (a5 < 8)
        {
          v115 = 0;
LABEL_136:
          v116 = v98;
          v117 = v96;
          v118 = v97;
          v119 = v104;
LABEL_137:
          v120 = a5 - v115;
          do
          {
            v122 = *v118++;
            v121 = v122;
            v124 = *v117++;
            v123 = v124;
            v126 = *v116++;
            v125 = v126;
            *v119 = -1;
            if (v121 >= 4095)
            {
              v121 = 4095;
            }

            if (v121 <= -4096)
            {
              LOWORD(v121) = -4096;
            }

            v119[1] = (8 * v121) ^ 0x8000;
            if (v123 >= 4095)
            {
              v127 = 4095;
            }

            else
            {
              v127 = v123;
            }

            if (v127 <= -4096)
            {
              LOWORD(v127) = -4096;
            }

            v119[2] = (8 * v127) ^ 0x8000;
            if (v125 >= 4095)
            {
              v128 = 4095;
            }

            else
            {
              v128 = v125;
            }

            if (v128 <= -4096)
            {
              LOWORD(v128) = -4096;
            }

            v119[3] = (8 * v128) ^ 0x8000;
            v119 += 4;
            --v120;
          }

          while (v120);
          goto LABEL_153;
        }

        v115 = 0;
        v129 = (&v7[4 * v106 + 8 + v147] + v77 * v163);
        v131 = v104 < v156 && v33 < v129;
        v133 = v104 < v154 && v90 < v129;
        v134 = (v33 + v160) >= v129 || v104 >= (v33 + v81);
        if (!v134 || v131 || v133)
        {
          goto LABEL_136;
        }

        v135 = 0;
        v116 = &v98[v24 / 2];
        v117 = &v96[v24 / 2];
        v118 = &v97[v24 / 2];
        v119 = &v104[v25 / 2];
        v136 = a5 & 0x7FFFFFF8;
        v137 = v160;
        do
        {
          v165.val[1] = veorq_s8(vshlq_n_s16(vmaxq_s16(vminq_s16(*(v32 + v137), v92), v93), 3uLL), v94);
          v165.val[3] = veorq_s8(vshlq_n_s16(vmaxq_s16(vminq_s16(*(v96 + v137), v92), v93), 3uLL), v94);
          v165.val[2] = veorq_s8(vshlq_n_s16(vmaxq_s16(vminq_s16(*&v96[v135], v92), v93), 3uLL), v94);
          v165.val[0] = v95;
          vst4q_s16(v104, v165);
          v104 += 32;
          v137 += 16;
          v135 += 8;
          v136 -= 8;
        }

        while (v136);
        v115 = a5 & 0x7FFFFFF8;
        if (v23 != a5)
        {
          goto LABEL_137;
        }

LABEL_153:
        result = (result + v163);
        v32 = (v32 + v26);
        v97 = (v97 + v26);
        v14 += v26;
        v96 = (v96 + v26);
        v78 = (v78 + v26);
        v98 = (v98 + v26);
        ++v77;
      }

      while (v77 != a6);
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_0@<X0>(_OWORD *a1@<X8>)
{
  *&v2 = 0xFE00FE00FE00FE00;
  *(&v2 + 1) = 0xFE00FE00FE00FE00;
  *a1 = v2;
  return v1;
}

uint64_t OUTLINED_FUNCTION_3_0@<X0>(_OWORD *a1@<X8>)
{
  *&v2 = 0xF000F000F000F000;
  *(&v2 + 1) = 0xF000F000F000F000;
  *a1 = v2;
  return v1;
}

uint64_t OUTLINED_FUNCTION_4_0@<X0>(_OWORD *a1@<X8>)
{
  *&v2 = 0xF800F800F800F800;
  *(&v2 + 1) = 0xF800F800F800F800;
  *a1 = v2;
  return v1;
}

void from_422_to_v216_10bits_A<8,8,(AlphaOutputMethod)0,false>()
{
  if (__cxa_guard_acquire(&_MergedGlobals_5))
  {
    *&v0 = 0xFE00FE00FE00FE00;
    *(&v0 + 1) = 0xFE00FE00FE00FE00;
    xmmword_280A71A80 = v0;

    __cxa_guard_release(&_MergedGlobals_5);
  }
}

{
  if (__cxa_guard_acquire(&qword_280A71708))
  {
    v0 = OUTLINED_FUNCTION_2_0(algn_280A71A90);

    __cxa_guard_release(v0);
  }
}

{
  if (__cxa_guard_acquire(&qword_280A71710))
  {
    *&v0 = OUTLINED_FUNCTION_5();
    xmmword_280A71AA0 = v0;

    __cxa_guard_release(&qword_280A71710);
  }
}

{
  if (__cxa_guard_acquire(&qword_280A71718))
  {
    v0 = OUTLINED_FUNCTION_0_1(algn_280A71AB0);

    __cxa_guard_release(v0);
  }
}

void from_422_to_v216_10bits_A<8,8,(AlphaOutputMethod)0,true>()
{
  if (__cxa_guard_acquire(&qword_280A71720))
  {
    *&v0 = 0xFE00FE00FE00FE00;
    *(&v0 + 1) = 0xFE00FE00FE00FE00;
    xmmword_280A71AC0 = v0;

    __cxa_guard_release(&qword_280A71720);
  }
}

{
  if (__cxa_guard_acquire(&qword_280A71728))
  {
    v0 = OUTLINED_FUNCTION_2_0(algn_280A71AD0);

    __cxa_guard_release(v0);
  }
}

{
  if (__cxa_guard_acquire(&qword_280A71730))
  {
    *&v0 = OUTLINED_FUNCTION_5();
    xmmword_280A71AE0 = v0;

    __cxa_guard_release(&qword_280A71730);
  }
}

{
  if (__cxa_guard_acquire(&qword_280A71738))
  {
    v0 = OUTLINED_FUNCTION_0_1(algn_280A71AF0);

    __cxa_guard_release(v0);
  }
}

void from_422_to_v216_10bits_B<8,8,(AlphaOutputMethod)0,false>()
{
  if (__cxa_guard_acquire(&qword_280A71740))
  {
    *&v0 = 0xFE00FE00FE00FE00;
    *(&v0 + 1) = 0xFE00FE00FE00FE00;
    xmmword_280A71B00 = v0;

    __cxa_guard_release(&qword_280A71740);
  }
}

{
  if (__cxa_guard_acquire(&qword_280A71748))
  {
    v0 = OUTLINED_FUNCTION_2_0(algn_280A71B10);

    __cxa_guard_release(v0);
  }
}

{
  if (__cxa_guard_acquire(&qword_280A71750))
  {
    *&v0 = OUTLINED_FUNCTION_5();
    xmmword_280A71B20 = v0;

    __cxa_guard_release(&qword_280A71750);
  }
}

{
  if (__cxa_guard_acquire(&qword_280A71758))
  {
    v0 = OUTLINED_FUNCTION_0_1(algn_280A71B30);

    __cxa_guard_release(v0);
  }
}

void from_422_to_v216_10bits_B<8,8,(AlphaOutputMethod)0,true>()
{
  if (__cxa_guard_acquire(&qword_280A71760))
  {
    *&v0 = 0xFE00FE00FE00FE00;
    *(&v0 + 1) = 0xFE00FE00FE00FE00;
    xmmword_280A71B40 = v0;

    __cxa_guard_release(&qword_280A71760);
  }
}

{
  if (__cxa_guard_acquire(&qword_280A71768))
  {
    v0 = OUTLINED_FUNCTION_2_0(algn_280A71B50);

    __cxa_guard_release(v0);
  }
}

{
  if (__cxa_guard_acquire(&qword_280A71770))
  {
    *&v0 = OUTLINED_FUNCTION_5();
    xmmword_280A71B60 = v0;

    __cxa_guard_release(&qword_280A71770);
  }
}

{
  if (__cxa_guard_acquire(&qword_280A71778))
  {
    v0 = OUTLINED_FUNCTION_0_1(algn_280A71B70);

    __cxa_guard_release(v0);
  }
}

void from_422_to_v216_12bits<8,8,(AlphaOutputMethod)0,false>()
{
  if (__cxa_guard_acquire(&qword_280A71780))
  {
    *&v0 = 0xF800F800F800F800;
    *(&v0 + 1) = 0xF800F800F800F800;
    xmmword_280A71B80 = v0;

    __cxa_guard_release(&qword_280A71780);
  }
}

{
  if (__cxa_guard_acquire(&qword_280A71788))
  {
    v0 = OUTLINED_FUNCTION_4_0(algn_280A71B90);

    __cxa_guard_release(v0);
  }
}

{
  if (__cxa_guard_acquire(&qword_280A71790))
  {
    *&v0 = OUTLINED_FUNCTION_7();
    xmmword_280A71BA0 = v0;

    __cxa_guard_release(&qword_280A71790);
  }
}

{
  if (__cxa_guard_acquire(&qword_280A71798))
  {
    v0 = OUTLINED_FUNCTION_1_0(algn_280A71BB0);

    __cxa_guard_release(v0);
  }
}

void from_422_to_v216_12bits<8,8,(AlphaOutputMethod)0,true>()
{
  if (__cxa_guard_acquire(&qword_280A717A0))
  {
    *&v0 = 0xF800F800F800F800;
    *(&v0 + 1) = 0xF800F800F800F800;
    xmmword_280A71BC0 = v0;

    __cxa_guard_release(&qword_280A717A0);
  }
}

{
  if (__cxa_guard_acquire(&qword_280A717A8))
  {
    v0 = OUTLINED_FUNCTION_4_0(algn_280A71BD0);

    __cxa_guard_release(v0);
  }
}

{
  if (__cxa_guard_acquire(&qword_280A717B0))
  {
    *&v0 = OUTLINED_FUNCTION_7();
    xmmword_280A71BE0 = v0;

    __cxa_guard_release(&qword_280A717B0);
  }
}

{
  if (__cxa_guard_acquire(&qword_280A717B8))
  {
    v0 = OUTLINED_FUNCTION_1_0(algn_280A71BF0);

    __cxa_guard_release(v0);
  }
}

void from_422_to_y416_10bits<8,8,(AlphaOutputMethod)1,false>()
{
  if (__cxa_guard_acquire(&qword_280A71800))
  {
    *&v0 = 0xFE00FE00FE00FE00;
    *(&v0 + 1) = 0xFE00FE00FE00FE00;
    xmmword_280A71C80 = v0;

    __cxa_guard_release(&qword_280A71800);
  }
}

{
  if (__cxa_guard_acquire(&qword_280A71808))
  {
    v0 = OUTLINED_FUNCTION_2_0(algn_280A71C90);

    __cxa_guard_release(v0);
  }
}

void from_422_to_y416_10bits<8,8,(AlphaOutputMethod)1,true>()
{
  if (__cxa_guard_acquire(&qword_280A71810))
  {
    *&v0 = 0xFE00FE00FE00FE00;
    *(&v0 + 1) = 0xFE00FE00FE00FE00;
    xmmword_280A71CA0 = v0;

    __cxa_guard_release(&qword_280A71810);
  }
}

{
  if (__cxa_guard_acquire(&qword_280A71818))
  {
    v0 = OUTLINED_FUNCTION_2_0(algn_280A71CB0);

    __cxa_guard_release(v0);
  }
}

void from_422_to_y416_10bits<8,8,(AlphaOutputMethod)2,false>()
{
  if (__cxa_guard_acquire(&qword_280A71820))
  {
    *&v0 = 0xFE00FE00FE00FE00;
    *(&v0 + 1) = 0xFE00FE00FE00FE00;
    xmmword_280A71CC0 = v0;

    __cxa_guard_release(&qword_280A71820);
  }
}

{
  if (__cxa_guard_acquire(&qword_280A71828))
  {
    v0 = OUTLINED_FUNCTION_2_0(algn_280A71CD0);

    __cxa_guard_release(v0);
  }
}

void from_422_to_y416_10bits<8,8,(AlphaOutputMethod)2,true>()
{
  if (__cxa_guard_acquire(&qword_280A71830))
  {
    *&v0 = 0xFE00FE00FE00FE00;
    *(&v0 + 1) = 0xFE00FE00FE00FE00;
    xmmword_280A71CE0 = v0;

    __cxa_guard_release(&qword_280A71830);
  }
}

{
  if (__cxa_guard_acquire(&qword_280A71838))
  {
    v0 = OUTLINED_FUNCTION_2_0(algn_280A71CF0);

    __cxa_guard_release(v0);
  }
}

void from_422_to_y416_12bits<8,8,(AlphaOutputMethod)1,false>()
{
  if (__cxa_guard_acquire(&qword_280A71840))
  {
    *&v0 = 0xF800F800F800F800;
    *(&v0 + 1) = 0xF800F800F800F800;
    xmmword_280A71D00 = v0;

    __cxa_guard_release(&qword_280A71840);
  }
}

{
  if (__cxa_guard_acquire(&qword_280A71848))
  {
    v0 = OUTLINED_FUNCTION_4_0(algn_280A71D10);

    __cxa_guard_release(v0);
  }
}

void from_422_to_y416_12bits<8,8,(AlphaOutputMethod)1,true>()
{
  if (__cxa_guard_acquire(&qword_280A71850))
  {
    *&v0 = 0xF800F800F800F800;
    *(&v0 + 1) = 0xF800F800F800F800;
    xmmword_280A71D20 = v0;

    __cxa_guard_release(&qword_280A71850);
  }
}

{
  if (__cxa_guard_acquire(&qword_280A71858))
  {
    v0 = OUTLINED_FUNCTION_4_0(algn_280A71D30);

    __cxa_guard_release(v0);
  }
}

void from_422_to_y416_12bits<8,8,(AlphaOutputMethod)2,false>()
{
  if (__cxa_guard_acquire(&qword_280A71860))
  {
    *&v0 = 0xF800F800F800F800;
    *(&v0 + 1) = 0xF800F800F800F800;
    xmmword_280A71D40 = v0;

    __cxa_guard_release(&qword_280A71860);
  }
}

{
  if (__cxa_guard_acquire(&qword_280A71868))
  {
    v0 = OUTLINED_FUNCTION_4_0(algn_280A71D50);

    __cxa_guard_release(v0);
  }
}

void from_422_to_y416_12bits<8,8,(AlphaOutputMethod)2,true>()
{
  if (__cxa_guard_acquire(&qword_280A71870))
  {
    *&v0 = 0xF800F800F800F800;
    *(&v0 + 1) = 0xF800F800F800F800;
    xmmword_280A71D60 = v0;

    __cxa_guard_release(&qword_280A71870);
  }
}

{
  if (__cxa_guard_acquire(&qword_280A71878))
  {
    v0 = OUTLINED_FUNCTION_4_0(algn_280A71D70);

    __cxa_guard_release(v0);
  }
}

void from_444_to_v216_10bits_A<8,8,(AlphaOutputMethod)0,false>()
{
  if (__cxa_guard_acquire(&qword_280A718C0))
  {
    *&v0 = 0xFE00FE00FE00FE00;
    *(&v0 + 1) = 0xFE00FE00FE00FE00;
    xmmword_280A71E00 = v0;

    __cxa_guard_release(&qword_280A718C0);
  }
}

{
  if (__cxa_guard_acquire(&qword_280A718C8))
  {
    v0 = OUTLINED_FUNCTION_2_0(algn_280A71E10);

    __cxa_guard_release(v0);
  }
}

{
  if (__cxa_guard_acquire(&qword_280A718D0))
  {
    *&v0 = OUTLINED_FUNCTION_5();
    xmmword_280A71E20 = v0;

    __cxa_guard_release(&qword_280A718D0);
  }
}

{
  if (__cxa_guard_acquire(&qword_280A718D8))
  {
    v0 = OUTLINED_FUNCTION_0_1(algn_280A71E30);

    __cxa_guard_release(v0);
  }
}

void from_444_to_v216_10bits_A<8,8,(AlphaOutputMethod)0,true>()
{
  if (__cxa_guard_acquire(&qword_280A718E0))
  {
    *&v0 = 0xFE00FE00FE00FE00;
    *(&v0 + 1) = 0xFE00FE00FE00FE00;
    xmmword_280A71E40 = v0;

    __cxa_guard_release(&qword_280A718E0);
  }
}

{
  if (__cxa_guard_acquire(&qword_280A718E8))
  {
    v0 = OUTLINED_FUNCTION_2_0(algn_280A71E50);

    __cxa_guard_release(v0);
  }
}

{
  if (__cxa_guard_acquire(&qword_280A718F0))
  {
    *&v0 = OUTLINED_FUNCTION_5();
    xmmword_280A71E60 = v0;

    __cxa_guard_release(&qword_280A718F0);
  }
}

{
  if (__cxa_guard_acquire(&qword_280A718F8))
  {
    v0 = OUTLINED_FUNCTION_0_1(algn_280A71E70);

    __cxa_guard_release(v0);
  }
}

void from_444_to_v216_10bits_B<8,8,(AlphaOutputMethod)0,false>()
{
  if (__cxa_guard_acquire(&qword_280A71900))
  {
    *&v0 = 0xFE00FE00FE00FE00;
    *(&v0 + 1) = 0xFE00FE00FE00FE00;
    xmmword_280A71E80 = v0;

    __cxa_guard_release(&qword_280A71900);
  }
}

{
  if (__cxa_guard_acquire(&qword_280A71908))
  {
    v0 = OUTLINED_FUNCTION_2_0(algn_280A71E90);

    __cxa_guard_release(v0);
  }
}

{
  if (__cxa_guard_acquire(&qword_280A71910))
  {
    *&v0 = OUTLINED_FUNCTION_5();
    xmmword_280A71EA0 = v0;

    __cxa_guard_release(&qword_280A71910);
  }
}

{
  if (__cxa_guard_acquire(&qword_280A71918))
  {
    v0 = OUTLINED_FUNCTION_0_1(algn_280A71EB0);

    __cxa_guard_release(v0);
  }
}

void from_444_to_v216_10bits_B<8,8,(AlphaOutputMethod)0,true>()
{
  if (__cxa_guard_acquire(&qword_280A71920))
  {
    *&v0 = 0xFE00FE00FE00FE00;
    *(&v0 + 1) = 0xFE00FE00FE00FE00;
    xmmword_280A71EC0 = v0;

    __cxa_guard_release(&qword_280A71920);
  }
}

{
  if (__cxa_guard_acquire(&qword_280A71928))
  {
    v0 = OUTLINED_FUNCTION_2_0(algn_280A71ED0);

    __cxa_guard_release(v0);
  }
}

{
  if (__cxa_guard_acquire(&qword_280A71930))
  {
    *&v0 = OUTLINED_FUNCTION_5();
    xmmword_280A71EE0 = v0;

    __cxa_guard_release(&qword_280A71930);
  }
}

{
  if (__cxa_guard_acquire(&qword_280A71938))
  {
    v0 = OUTLINED_FUNCTION_0_1(algn_280A71EF0);

    __cxa_guard_release(v0);
  }
}

void from_444_to_v216_12bits<8,8,(AlphaOutputMethod)0,false>()
{
  if (__cxa_guard_acquire(&qword_280A71940))
  {
    *&v0 = 0xF800F800F800F800;
    *(&v0 + 1) = 0xF800F800F800F800;
    xmmword_280A71F00 = v0;

    __cxa_guard_release(&qword_280A71940);
  }
}

{
  if (__cxa_guard_acquire(&qword_280A71948))
  {
    v0 = OUTLINED_FUNCTION_4_0(algn_280A71F10);

    __cxa_guard_release(v0);
  }
}

{
  if (__cxa_guard_acquire(&qword_280A71950))
  {
    *&v0 = OUTLINED_FUNCTION_7();
    xmmword_280A71F20 = v0;

    __cxa_guard_release(&qword_280A71950);
  }
}

{
  if (__cxa_guard_acquire(&qword_280A71958))
  {
    v0 = OUTLINED_FUNCTION_1_0(algn_280A71F30);

    __cxa_guard_release(v0);
  }
}

void from_444_to_v216_12bits<8,8,(AlphaOutputMethod)0,true>()
{
  if (__cxa_guard_acquire(&qword_280A71960))
  {
    *&v0 = 0xF800F800F800F800;
    *(&v0 + 1) = 0xF800F800F800F800;
    xmmword_280A71F40 = v0;

    __cxa_guard_release(&qword_280A71960);
  }
}

{
  if (__cxa_guard_acquire(&qword_280A71968))
  {
    v0 = OUTLINED_FUNCTION_4_0(algn_280A71F50);

    __cxa_guard_release(v0);
  }
}

{
  if (__cxa_guard_acquire(&qword_280A71970))
  {
    *&v0 = OUTLINED_FUNCTION_7();
    xmmword_280A71F60 = v0;

    __cxa_guard_release(&qword_280A71970);
  }
}

{
  if (__cxa_guard_acquire(&qword_280A71978))
  {
    v0 = OUTLINED_FUNCTION_1_0(algn_280A71F70);

    __cxa_guard_release(v0);
  }
}

void from_444_to_y416_10bits<8,8,(AlphaOutputMethod)1,false>()
{
  if (__cxa_guard_acquire(&qword_280A719C0))
  {
    *&v0 = 0xFE00FE00FE00FE00;
    *(&v0 + 1) = 0xFE00FE00FE00FE00;
    xmmword_280A72000 = v0;

    __cxa_guard_release(&qword_280A719C0);
  }
}

{
  if (__cxa_guard_acquire(&qword_280A719C8))
  {
    v0 = OUTLINED_FUNCTION_2_0(algn_280A72010);

    __cxa_guard_release(v0);
  }
}

void from_444_to_y416_10bits<8,8,(AlphaOutputMethod)1,true>()
{
  if (__cxa_guard_acquire(&qword_280A719D0))
  {
    *&v0 = 0xFE00FE00FE00FE00;
    *(&v0 + 1) = 0xFE00FE00FE00FE00;
    xmmword_280A72020 = v0;

    __cxa_guard_release(&qword_280A719D0);
  }
}

{
  if (__cxa_guard_acquire(&qword_280A719D8))
  {
    v0 = OUTLINED_FUNCTION_2_0(algn_280A72030);

    __cxa_guard_release(v0);
  }
}

void from_444_to_y416_10bits<8,8,(AlphaOutputMethod)2,false>()
{
  if (__cxa_guard_acquire(&qword_280A719E0))
  {
    *&v0 = 0xFE00FE00FE00FE00;
    *(&v0 + 1) = 0xFE00FE00FE00FE00;
    xmmword_280A72040 = v0;

    __cxa_guard_release(&qword_280A719E0);
  }
}

{
  if (__cxa_guard_acquire(&qword_280A719E8))
  {
    v0 = OUTLINED_FUNCTION_2_0(algn_280A72050);

    __cxa_guard_release(v0);
  }
}

void from_444_to_y416_10bits<8,8,(AlphaOutputMethod)2,true>()
{
  if (__cxa_guard_acquire(&qword_280A719F0))
  {
    *&v0 = 0xFE00FE00FE00FE00;
    *(&v0 + 1) = 0xFE00FE00FE00FE00;
    xmmword_280A72060 = v0;

    __cxa_guard_release(&qword_280A719F0);
  }
}

{
  if (__cxa_guard_acquire(&qword_280A719F8))
  {
    v0 = OUTLINED_FUNCTION_2_0(algn_280A72070);

    __cxa_guard_release(v0);
  }
}

void from_444_to_y416_12bits<8,8,(AlphaOutputMethod)1,false>()
{
  if (__cxa_guard_acquire(&qword_280A71A00))
  {
    *&v0 = 0xF800F800F800F800;
    *(&v0 + 1) = 0xF800F800F800F800;
    xmmword_280A72080 = v0;

    __cxa_guard_release(&qword_280A71A00);
  }
}

{
  if (__cxa_guard_acquire(&qword_280A71A08))
  {
    v0 = OUTLINED_FUNCTION_4_0(algn_280A72090);

    __cxa_guard_release(v0);
  }
}

void from_444_to_y416_12bits<8,8,(AlphaOutputMethod)1,true>()
{
  if (__cxa_guard_acquire(&qword_280A71A10))
  {
    *&v0 = 0xF800F800F800F800;
    *(&v0 + 1) = 0xF800F800F800F800;
    xmmword_280A720A0 = v0;

    __cxa_guard_release(&qword_280A71A10);
  }
}

{
  if (__cxa_guard_acquire(&qword_280A71A18))
  {
    v0 = OUTLINED_FUNCTION_4_0(algn_280A720B0);

    __cxa_guard_release(v0);
  }
}

void from_444_to_y416_12bits<8,8,(AlphaOutputMethod)2,false>()
{
  if (__cxa_guard_acquire(&qword_280A71A20))
  {
    *&v0 = 0xF800F800F800F800;
    *(&v0 + 1) = 0xF800F800F800F800;
    xmmword_280A720C0 = v0;

    __cxa_guard_release(&qword_280A71A20);
  }
}

{
  if (__cxa_guard_acquire(&qword_280A71A28))
  {
    v0 = OUTLINED_FUNCTION_4_0(algn_280A720D0);

    __cxa_guard_release(v0);
  }
}

void from_444_to_y416_12bits<8,8,(AlphaOutputMethod)2,true>()
{
  if (__cxa_guard_acquire(&qword_280A71A30))
  {
    *&v0 = 0xF800F800F800F800;
    *(&v0 + 1) = 0xF800F800F800F800;
    xmmword_280A720E0 = v0;

    __cxa_guard_release(&qword_280A71A30);
  }
}

{
  if (__cxa_guard_acquire(&qword_280A71A38))
  {
    v0 = OUTLINED_FUNCTION_4_0(algn_280A720F0);

    __cxa_guard_release(v0);
  }
}

void from_422_to_v216_8xH<(PixelFormat)1983000886,false,(PixelOutputStoreType)0>()
{
  if (__cxa_guard_acquire(&qword_280A717C0))
  {
    *&v0 = 0xF000F000F000F000;
    *(&v0 + 1) = 0xF000F000F000F000;
    xmmword_280A71C00 = v0;

    __cxa_guard_release(&qword_280A717C0);
  }
}

{
  if (__cxa_guard_acquire(&qword_280A717C8))
  {
    v0 = OUTLINED_FUNCTION_3_0(algn_280A71C10);

    __cxa_guard_release(v0);
  }
}

{
  if (__cxa_guard_acquire(&qword_280A717D0))
  {
    *&v0 = OUTLINED_FUNCTION_6();
    xmmword_280A71C20 = v0;

    __cxa_guard_release(&qword_280A717D0);
  }
}

{
  if (__cxa_guard_acquire(&qword_280A717D8))
  {
    v0 = OUTLINED_FUNCTION_1_0(algn_280A71C30);

    __cxa_guard_release(v0);
  }
}

void from_422_to_v216_8xH<(PixelFormat)1983000886,true,(PixelOutputStoreType)0>()
{
  if (__cxa_guard_acquire(&qword_280A717E0))
  {
    *&v0 = 0xF000F000F000F000;
    *(&v0 + 1) = 0xF000F000F000F000;
    xmmword_280A71C40 = v0;

    __cxa_guard_release(&qword_280A717E0);
  }
}

{
  if (__cxa_guard_acquire(&qword_280A717E8))
  {
    v0 = OUTLINED_FUNCTION_3_0(algn_280A71C50);

    __cxa_guard_release(v0);
  }
}

{
  if (__cxa_guard_acquire(&qword_280A717F0))
  {
    *&v0 = OUTLINED_FUNCTION_6();
    xmmword_280A71C60 = v0;

    __cxa_guard_release(&qword_280A717F0);
  }
}

{
  if (__cxa_guard_acquire(&qword_280A717F8))
  {
    v0 = OUTLINED_FUNCTION_1_0(algn_280A71C70);

    __cxa_guard_release(v0);
  }
}

void from_422_to_y416_8xH<(PixelFormat)2033463606,(AlphaOutputMethod)1,false,(PixelOutputStoreType)0>()
{
  if (__cxa_guard_acquire(&qword_280A71880))
  {
    *&v0 = 0xF000F000F000F000;
    *(&v0 + 1) = 0xF000F000F000F000;
    xmmword_280A71D80 = v0;

    __cxa_guard_release(&qword_280A71880);
  }
}

{
  if (__cxa_guard_acquire(&qword_280A71888))
  {
    v0 = OUTLINED_FUNCTION_3_0(algn_280A71D90);

    __cxa_guard_release(v0);
  }
}

void from_422_to_y416_8xH<(PixelFormat)2033463606,(AlphaOutputMethod)1,true,(PixelOutputStoreType)0>()
{
  if (__cxa_guard_acquire(&qword_280A71890))
  {
    *&v0 = 0xF000F000F000F000;
    *(&v0 + 1) = 0xF000F000F000F000;
    xmmword_280A71DA0 = v0;

    __cxa_guard_release(&qword_280A71890);
  }
}

{
  if (__cxa_guard_acquire(&qword_280A71898))
  {
    v0 = OUTLINED_FUNCTION_3_0(algn_280A71DB0);

    __cxa_guard_release(v0);
  }
}

void from_422_to_y416_8xH<(PixelFormat)2033463606,(AlphaOutputMethod)2,false,(PixelOutputStoreType)0>()
{
  if (__cxa_guard_acquire(&qword_280A718A0))
  {
    *&v0 = 0xF000F000F000F000;
    *(&v0 + 1) = 0xF000F000F000F000;
    xmmword_280A71DC0 = v0;

    __cxa_guard_release(&qword_280A718A0);
  }
}

{
  if (__cxa_guard_acquire(&qword_280A718A8))
  {
    v0 = OUTLINED_FUNCTION_3_0(algn_280A71DD0);

    __cxa_guard_release(v0);
  }
}

void from_422_to_y416_8xH<(PixelFormat)2033463606,(AlphaOutputMethod)2,true,(PixelOutputStoreType)0>()
{
  if (__cxa_guard_acquire(&qword_280A718B0))
  {
    *&v0 = 0xF000F000F000F000;
    *(&v0 + 1) = 0xF000F000F000F000;
    xmmword_280A71DE0 = v0;

    __cxa_guard_release(&qword_280A718B0);
  }
}

{
  if (__cxa_guard_acquire(&qword_280A718B8))
  {
    v0 = OUTLINED_FUNCTION_3_0(algn_280A71DF0);

    __cxa_guard_release(v0);
  }
}

void from_444_to_v216_8xH<(PixelFormat)1983000886,false,(PixelOutputStoreType)0>()
{
  if (__cxa_guard_acquire(&qword_280A71980))
  {
    *&v0 = 0xF000F000F000F000;
    *(&v0 + 1) = 0xF000F000F000F000;
    xmmword_280A71F80 = v0;

    __cxa_guard_release(&qword_280A71980);
  }
}

{
  if (__cxa_guard_acquire(&qword_280A71988))
  {
    v0 = OUTLINED_FUNCTION_3_0(algn_280A71F90);

    __cxa_guard_release(v0);
  }
}

{
  if (__cxa_guard_acquire(&qword_280A71990))
  {
    *&v0 = OUTLINED_FUNCTION_6();
    xmmword_280A71FA0 = v0;

    __cxa_guard_release(&qword_280A71990);
  }
}

{
  if (__cxa_guard_acquire(&qword_280A71998))
  {
    v0 = OUTLINED_FUNCTION_1_0(algn_280A71FB0);

    __cxa_guard_release(v0);
  }
}

void from_444_to_v216_8xH<(PixelFormat)1983000886,true,(PixelOutputStoreType)0>()
{
  if (__cxa_guard_acquire(&qword_280A719A0))
  {
    *&v0 = 0xF000F000F000F000;
    *(&v0 + 1) = 0xF000F000F000F000;
    xmmword_280A71FC0 = v0;

    __cxa_guard_release(&qword_280A719A0);
  }
}

{
  if (__cxa_guard_acquire(&qword_280A719A8))
  {
    v0 = OUTLINED_FUNCTION_3_0(algn_280A71FD0);

    __cxa_guard_release(v0);
  }
}

{
  if (__cxa_guard_acquire(&qword_280A719B0))
  {
    *&v0 = OUTLINED_FUNCTION_6();
    xmmword_280A71FE0 = v0;

    __cxa_guard_release(&qword_280A719B0);
  }
}

{
  if (__cxa_guard_acquire(&qword_280A719B8))
  {
    v0 = OUTLINED_FUNCTION_1_0(algn_280A71FF0);

    __cxa_guard_release(v0);
  }
}

void from_444_to_y416_8xH<(PixelFormat)2033463606,(AlphaOutputMethod)1,false,(PixelOutputStoreType)0>()
{
  if (__cxa_guard_acquire(&qword_280A71A40))
  {
    *&v0 = 0xF000F000F000F000;
    *(&v0 + 1) = 0xF000F000F000F000;
    xmmword_280A72100 = v0;

    __cxa_guard_release(&qword_280A71A40);
  }
}

{
  if (__cxa_guard_acquire(&qword_280A71A48))
  {
    v0 = OUTLINED_FUNCTION_3_0(algn_280A72110);

    __cxa_guard_release(v0);
  }
}

void from_444_to_y416_8xH<(PixelFormat)2033463606,(AlphaOutputMethod)1,true,(PixelOutputStoreType)0>()
{
  if (__cxa_guard_acquire(&qword_280A71A50))
  {
    *&v0 = 0xF000F000F000F000;
    *(&v0 + 1) = 0xF000F000F000F000;
    xmmword_280A72120 = v0;

    __cxa_guard_release(&qword_280A71A50);
  }
}

{
  if (__cxa_guard_acquire(&qword_280A71A58))
  {
    v0 = OUTLINED_FUNCTION_3_0(algn_280A72130);

    __cxa_guard_release(v0);
  }
}

void from_444_to_y416_8xH<(PixelFormat)2033463606,(AlphaOutputMethod)2,false,(PixelOutputStoreType)0>()
{
  if (__cxa_guard_acquire(&qword_280A71A60))
  {
    *&v0 = 0xF000F000F000F000;
    *(&v0 + 1) = 0xF000F000F000F000;
    xmmword_280A72140 = v0;

    __cxa_guard_release(&qword_280A71A60);
  }
}

{
  if (__cxa_guard_acquire(&qword_280A71A68))
  {
    v0 = OUTLINED_FUNCTION_3_0(algn_280A72150);

    __cxa_guard_release(v0);
  }
}

void from_444_to_y416_8xH<(PixelFormat)2033463606,(AlphaOutputMethod)2,true,(PixelOutputStoreType)0>()
{
  if (__cxa_guard_acquire(&qword_280A71A70))
  {
    *&v0 = 0xF000F000F000F000;
    *(&v0 + 1) = 0xF000F000F000F000;
    xmmword_280A72160 = v0;

    __cxa_guard_release(&qword_280A71A70);
  }
}

{
  if (__cxa_guard_acquire(&qword_280A71A78))
  {
    v0 = OUTLINED_FUNCTION_3_0(algn_280A72170);

    __cxa_guard_release(v0);
  }
}

uint64_t scale_horizontal_3to4_2vuy()
{
  result = MEMORY[0x28223BE20]();
  v68[483] = *MEMORY[0x277D85DE8];
  if (*(result + 48) >= 1)
  {
    v1 = 0;
    v2 = *(result + 24);
    v3.i64[0] = 0xFF000000FFLL;
    v3.i64[1] = 0xFF000000FFLL;
    v4.i64[0] = 0x400000004000;
    v4.i64[1] = 0x400000004000;
    v5 = *result;
    do
    {
      v6 = vdupq_n_s16(v5->u8[0]);
      v67 = vdupq_n_s16(v5->u8[1]);
      v65 = v6;
      v7 = v64;
      v8 = *(result + 8);
      v63 = vdupq_n_s16(v5->u8[2]);
      v9 = v66;
      v10 = v68;
      v11 = v5;
      if (v8 >= 16)
      {
        v12 = 0;
        v13 = v8 + 16;
        v11 = v5;
        v10 = v68;
        do
        {
          v14 = *v11;
          v15 = v11[1];
          v11 += 2;
          *&v66[v12] = vqmovn_high_s32(vqmovn_s32(vandq_s8(v14, v3)), vandq_s8(v15, v3));
          *&v64[v12] = vqmovn_high_s32(vqmovn_s32((*&vshrq_n_u32(v14, 0x10uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL))), (*&vshrq_n_u32(v15, 0x10uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)));
          *v10 = vshrq_n_u16(v14, 8uLL);
          v10[1] = vshrq_n_u16(v15, 8uLL);
          v10 += 2;
          v13 -= 16;
          v12 += 16;
        }

        while (v13 > 0x1F);
        v8 -= v12;
        v9 = &v66[v12];
        v7 = &v64[v12];
      }

      if (v8 >= 2)
      {
        v16 = v8 + 2;
        do
        {
          *v9 = v11->u8[0];
          v9 += 2;
          v10->i16[0] = v11->u8[1];
          *v7 = v11->u8[2];
          v7 += 2;
          v10->i16[1] = v11->u8[3];
          v10 = (v10 + 4);
          v16 -= 2;
          v11 = (v11 + 4);
        }

        while (v16 > 3);
      }

      v17 = &v10[-1].i16[7];
      v18 = vld1q_dup_s16(v17);
      *v10 = v18;
      v19 = (v9 - 2);
      v20 = vld1q_dup_s16(v19);
      *v9 = v20;
      v21 = (v7 - 2);
      v22 = vld1q_dup_s16(v21);
      *v7 = v22;
      v23 = *(result + 8);
      if (v23 > 2)
      {
        v24 = v2 + 1;
        v25 = v23 + 3;
        v26 = v68;
        do
        {
          v27 = v26[-1];
          v28 = *v26;
          *v24 = *v26;
          v27.i64[0] = vextq_s8(v27, v27, 8uLL).u64[0];
          v29 = vextq_s8(v28, v28, 8uLL).u64[0];
          v30 = vaddq_s32(vpaddq_s32(vmull_s16(0x804EBF672852488, *v28.i8), vmull_s16(15006946, v29)), vpaddq_s32(0, vmull_s16(0xF3870519FE3A0059, *v27.i8)));
          v31 = vaddq_s32(vextq_s8(v30, v30, 8uLL), v30);
          v24[2] = vqmovun_s16(vshrq_n_s32(vaddq_s32(vaddq_s32(v31, v4), vrev64q_s32(v31)), 0xFuLL)).u8[0];
          v32 = vaddq_s32(vpaddq_s32(vmull_s16(0xE9D14FA74FA7E9D1, *v28.i8), vmull_s16(0xD3FCA30912, v29)), vpaddq_s32(0, vmull_s16(0x912FCA300D30000, *v27.i8)));
          v33 = vaddq_s32(vextq_s8(v32, v32, 8uLL), v32);
          v24[4] = vqmovun_s16(vshrq_n_s32(vaddq_s32(vaddq_s32(v33, v4), vrev64q_s32(v33)), 0xFuLL)).u8[0];
          v34 = vaddq_s32(vpaddq_s32(vmull_s16(0x24887285EBF60804, *v28.i8), vmull_s16(0x59FE3A0519F387, v29)), vpaddq_s32(0, vmull_s16(0xFCE200E400000000, *v27.i8)));
          v35 = vaddq_s32(vextq_s8(v34, v34, 8uLL), v34);
          v24[6] = vqmovun_s16(vshrq_n_s32(vaddq_s32(vaddq_s32(v35, v4), vrev64q_s32(v35)), 0xFuLL)).u8[0];
          v26 = (v26 + 6);
          v24 += 8;
          v25 -= 3;
        }

        while (v25 > 5);
        v36 = *(result + 8);
        if (v36 >= 6)
        {
          v37 = (v36 >> 1) + 3;
          v38 = v66;
          v39 = v2;
          do
          {
            v40 = v38[-1];
            v41 = *v38;
            *v39 = *v38;
            v40.i64[0] = vextq_s8(v40, v40, 8uLL).u64[0];
            v42 = vextq_s8(v41, v41, 8uLL).u64[0];
            v43 = vaddq_s32(vpaddq_s32(vmull_s16(0x804EBF672852488, *v41.i8), vmull_s16(15006946, v42)), vpaddq_s32(0, vmull_s16(0xF3870519FE3A0059, *v40.i8)));
            v44 = vaddq_s32(vextq_s8(v43, v43, 8uLL), v43);
            v39[4] = vqmovun_s16(vshrq_n_s32(vaddq_s32(vaddq_s32(v44, v4), vrev64q_s32(v44)), 0xFuLL)).u8[0];
            v45 = vaddq_s32(vpaddq_s32(vmull_s16(0xE9D14FA74FA7E9D1, *v41.i8), vmull_s16(0xD3FCA30912, v42)), vpaddq_s32(0, vmull_s16(0x912FCA300D30000, *v40.i8)));
            v46 = vaddq_s32(vextq_s8(v45, v45, 8uLL), v45);
            v39[8] = vqmovun_s16(vshrq_n_s32(vaddq_s32(vaddq_s32(v46, v4), vrev64q_s32(v46)), 0xFuLL)).u8[0];
            v47 = vaddq_s32(vpaddq_s32(vmull_s16(0x24887285EBF60804, *v41.i8), vmull_s16(0x59FE3A0519F387, v42)), vpaddq_s32(0, vmull_s16(0xFCE200E400000000, *v40.i8)));
            v48 = vaddq_s32(vextq_s8(v47, v47, 8uLL), v47);
            v39[12] = vqmovun_s16(vshrq_n_s32(vaddq_s32(vaddq_s32(v48, v4), vrev64q_s32(v48)), 0xFuLL)).u8[0];
            v38 = (v38 + 6);
            v39 += 16;
            v37 -= 3;
          }

          while (v37 > 5);
          v49 = *(result + 8);
          if (v49 >= 6)
          {
            v50 = v49 >> 1;
            v51 = v2 + 2;
            v52 = v50 + 3;
            v53 = v64;
            do
            {
              v54 = v53[-1];
              v55 = *v53;
              *v51 = *v53;
              v54.i64[0] = vextq_s8(v54, v54, 8uLL).u64[0];
              v56 = vextq_s8(v55, v55, 8uLL).u64[0];
              v57 = vaddq_s32(vpaddq_s32(vmull_s16(0x804EBF672852488, *v55.i8), vmull_s16(15006946, v56)), vpaddq_s32(0, vmull_s16(0xF3870519FE3A0059, *v54.i8)));
              v58 = vaddq_s32(vextq_s8(v57, v57, 8uLL), v57);
              v51[4] = vqmovun_s16(vshrq_n_s32(vaddq_s32(vaddq_s32(v58, v4), vrev64q_s32(v58)), 0xFuLL)).u8[0];
              v59 = vaddq_s32(vpaddq_s32(vmull_s16(0xE9D14FA74FA7E9D1, *v55.i8), vmull_s16(0xD3FCA30912, v56)), vpaddq_s32(0, vmull_s16(0x912FCA300D30000, *v54.i8)));
              v60 = vaddq_s32(vextq_s8(v59, v59, 8uLL), v59);
              v51[8] = vqmovun_s16(vshrq_n_s32(vaddq_s32(vaddq_s32(v60, v4), vrev64q_s32(v60)), 0xFuLL)).u8[0];
              v61 = vaddq_s32(vpaddq_s32(vmull_s16(0x24887285EBF60804, *v55.i8), vmull_s16(0x59FE3A0519F387, v56)), vpaddq_s32(0, vmull_s16(0xFCE200E400000000, *v54.i8)));
              v62 = vaddq_s32(vextq_s8(v61, v61, 8uLL), v61);
              v51[12] = vqmovun_s16(vshrq_n_s32(vaddq_s32(vaddq_s32(v62, v4), vrev64q_s32(v62)), 0xFuLL)).u8[0];
              v53 = (v53 + 6);
              v51 += 16;
              v52 -= 3;
            }

            while (v52 > 5);
          }
        }
      }

      v5 = (v5 + *(result + 16));
      v2 += *(result + 40);
      ++v1;
    }

    while (v1 < *(result + 48));
  }

  return result;
}

uint64_t scale_horizontal_3to4_v216()
{
  result = MEMORY[0x28223BE20]();
  v69[483] = *MEMORY[0x277D85DE8];
  if (*(result + 48) >= 1)
  {
    v1 = 0;
    v2 = *(result + 24);
    v3 = *result;
    v4.i64[0] = 0x8000800080008000;
    v4.i64[1] = 0x8000800080008000;
    v5.i64[0] = 0x400000004000;
    v5.i64[1] = 0x400000004000;
    v6 = *(result + 8);
    while (1)
    {
      v68 = vdupq_n_s16(v3->u16[1] ^ 0xFFFF8000);
      v66 = vdupq_n_s16(v3->u16[0] ^ 0xFFFF8000);
      v64 = vdupq_n_s16(v3->u16[2] ^ 0xFFFF8000);
      if (v6 >= 8)
      {
        break;
      }

      v20 = v65;
      v19 = v67;
      v10 = v69;
      v9 = v3;
      if (v6 >= 2)
      {
        goto LABEL_10;
      }

LABEL_12:
      v22 = v10 - 1;
      v23 = vld1q_dup_s16(v22);
      *v10 = v23;
      v24 = &v19[-1].i16[7];
      v25 = vld1q_dup_s16(v24);
      *v19 = v25;
      v26 = &v20[-1].i16[7];
      v27 = vld1q_dup_s16(v26);
      *v20 = v27;
      v6 = *(result + 8);
      if (v6 > 2)
      {
        v28 = v2 + 1;
        v29 = v6 + 3;
        v30 = v69;
        do
        {
          v32 = v30[-1];
          v31 = *v30;
          *v28 = *v30 ^ 0x8000;
          v32.i64[0] = vextq_s8(v32, v32, 8uLL).u64[0];
          v33 = vextq_s8(v31, v31, 8uLL).u64[0];
          v34 = vaddq_s32(vpaddq_s32(vmull_s16(0x804EBF672852488, *v31.i8), vmull_s16(15006946, v33)), vpaddq_s32(0, vmull_s16(0xF3870519FE3A0059, *v32.i8)));
          v35 = vaddq_s32(vextq_s8(v34, v34, 8uLL), v34);
          v36 = vaddq_s32(vpaddq_s32(vmull_s16(0xE9D14FA74FA7E9D1, *v31.i8), vmull_s16(0xD3FCA30912, v33)), vpaddq_s32(0, vmull_s16(0x912FCA300D30000, *v32.i8)));
          v37 = vaddq_s32(vextq_s8(v36, v36, 8uLL), v36);
          v38 = vaddq_s32(vpaddq_s32(vmull_s16(0x24887285EBF60804, *v31.i8), vmull_s16(0x59FE3A0519F387, v33)), vpaddq_s32(0, vmull_s16(0xFCE200E400000000, *v32.i8)));
          v39 = vaddq_s32(vextq_s8(v38, v38, 8uLL), v38);
          v28[2] = vqmovn_s32(vshrq_n_s32(vaddq_s32(vaddq_s32(v35, v5), vrev64q_s32(v35)), 0xFuLL)).u16[0] ^ 0x8000;
          v28[4] = vqmovn_s32(vshrq_n_s32(vaddq_s32(vaddq_s32(v37, v5), vrev64q_s32(v37)), 0xFuLL)).u16[0] ^ 0x8000;
          v28[6] = vqmovn_s32(vshrq_n_s32(vaddq_s32(vaddq_s32(v39, v5), vrev64q_s32(v39)), 0xFuLL)).u16[0] ^ 0x8000;
          v30 = (v30 + 6);
          v28 += 8;
          v29 -= 3;
        }

        while (v29 > 5);
        if (v6 >= 6)
        {
          v40 = (v6 >> 1) + 3;
          v41 = v40;
          v42 = v67;
          v43 = v2;
          do
          {
            v45 = v42[-1];
            v44 = *v42;
            *v43 = *v42 ^ 0x8000;
            v45.i64[0] = vextq_s8(v45, v45, 8uLL).u64[0];
            v46 = vextq_s8(v44, v44, 8uLL).u64[0];
            v47 = vaddq_s32(vpaddq_s32(vmull_s16(0x804EBF672852488, *v44.i8), vmull_s16(15006946, v46)), vpaddq_s32(0, vmull_s16(0xF3870519FE3A0059, *v45.i8)));
            v48 = vaddq_s32(vextq_s8(v47, v47, 8uLL), v47);
            v49 = vaddq_s32(vpaddq_s32(vmull_s16(0xE9D14FA74FA7E9D1, *v44.i8), vmull_s16(0xD3FCA30912, v46)), vpaddq_s32(0, vmull_s16(0x912FCA300D30000, *v45.i8)));
            v50 = vaddq_s32(vextq_s8(v49, v49, 8uLL), v49);
            v51 = vaddq_s32(vpaddq_s32(vmull_s16(0x24887285EBF60804, *v44.i8), vmull_s16(0x59FE3A0519F387, v46)), vpaddq_s32(0, vmull_s16(0xFCE200E400000000, *v45.i8)));
            v52 = vaddq_s32(vextq_s8(v51, v51, 8uLL), v51);
            v43[4] = vqmovn_s32(vshrq_n_s32(vaddq_s32(vaddq_s32(v48, v5), vrev64q_s32(v48)), 0xFuLL)).u16[0] ^ 0x8000;
            v43[8] = vqmovn_s32(vshrq_n_s32(vaddq_s32(vaddq_s32(v50, v5), vrev64q_s32(v50)), 0xFuLL)).u16[0] ^ 0x8000;
            v43[12] = vqmovn_s32(vshrq_n_s32(vaddq_s32(vaddq_s32(v52, v5), vrev64q_s32(v52)), 0xFuLL)).u16[0] ^ 0x8000;
            v42 = (v42 + 6);
            v43 += 16;
            v41 -= 3;
          }

          while (v41 > 5);
          v53 = v2 + 2;
          v54 = v65;
          do
          {
            v56 = v54[-1];
            v55 = *v54;
            *v53 = *v54 ^ 0x8000;
            v56.i64[0] = vextq_s8(v56, v56, 8uLL).u64[0];
            v57 = vextq_s8(v55, v55, 8uLL).u64[0];
            v58 = vaddq_s32(vpaddq_s32(vmull_s16(0x804EBF672852488, *v55.i8), vmull_s16(15006946, v57)), vpaddq_s32(0, vmull_s16(0xF3870519FE3A0059, *v56.i8)));
            v59 = vaddq_s32(vextq_s8(v58, v58, 8uLL), v58);
            v60 = vaddq_s32(vpaddq_s32(vmull_s16(0xE9D14FA74FA7E9D1, *v55.i8), vmull_s16(0xD3FCA30912, v57)), vpaddq_s32(0, vmull_s16(0x912FCA300D30000, *v56.i8)));
            v61 = vaddq_s32(vextq_s8(v60, v60, 8uLL), v60);
            v62 = vaddq_s32(vpaddq_s32(vmull_s16(0x24887285EBF60804, *v55.i8), vmull_s16(0x59FE3A0519F387, v57)), vpaddq_s32(0, vmull_s16(0xFCE200E400000000, *v56.i8)));
            v63 = vaddq_s32(vextq_s8(v62, v62, 8uLL), v62);
            v53[4] = vqmovn_s32(vshrq_n_s32(vaddq_s32(vaddq_s32(v59, v5), vrev64q_s32(v59)), 0xFuLL)).u16[0] ^ 0x8000;
            v53[8] = vqmovn_s32(vshrq_n_s32(vaddq_s32(vaddq_s32(v61, v5), vrev64q_s32(v61)), 0xFuLL)).u16[0] ^ 0x8000;
            v53[12] = vqmovn_s32(vshrq_n_s32(vaddq_s32(vaddq_s32(v63, v5), vrev64q_s32(v63)), 0xFuLL)).u16[0] ^ 0x8000;
            v54 = (v54 + 6);
            v53 += 16;
            v40 -= 3;
          }

          while (v40 > 5);
        }
      }

      v3 = (v3 + *(result + 16));
      v2 = (v2 + *(result + 40));
      if (++v1 >= *(result + 48))
      {
        return result;
      }
    }

    v7 = 0;
    v8 = v6 + 8;
    v9 = v3;
    v10 = v69;
    do
    {
      v11 = *v9;
      v12 = v9[1];
      v9 += 2;
      v13 = veorq_s8(v11, v4);
      v14 = veorq_s8(v12, v4);
      v15 = vzip1q_s16(v13, v14);
      v16 = vzip2q_s16(v13, v14);
      v17 = vzip1q_s16(v15, v16);
      v18 = vzip2q_s16(v15, v16);
      *&v67[v7] = v17.i64[0];
      *&v65[v7] = v18.i64[0];
      *v10 = vzip2q_s16(v17, v18);
      v10 += 2;
      v8 -= 8;
      v7 += 8;
    }

    while (v8 > 0xF);
    v6 -= v7;
    v19 = &v67[v7];
    v20 = &v65[v7];
    if (v6 < 2)
    {
      goto LABEL_12;
    }

LABEL_10:
    v21 = v6 + 2;
    do
    {
      v19->i16[0] = v9->i16[0] ^ 0x8000;
      v19 = (v19 + 2);
      *v10 = v9->i16[1] ^ 0x8000;
      v20->i16[0] = v9->i16[2] ^ 0x8000;
      v20 = (v20 + 2);
      *(v10 + 1) = v9->i16[3] ^ 0x8000;
      v10 = (v10 + 4);
      v21 -= 2;
      v9 = (v9 + 8);
    }

    while (v21 > 3);
    goto LABEL_12;
  }

  return result;
}

uint64_t scale_horizontal_3to4_4444_8b()
{
  result = MEMORY[0x28223BE20]();
  v84[241].i64[1] = *MEMORY[0x277D85DE8];
  if (*(result + 48) >= 1)
  {
    v1 = 0;
    v2 = *(result + 24);
    v3.i64[0] = 0xFF000000FFLL;
    v3.i64[1] = 0xFF000000FFLL;
    v4.i64[0] = 0x400000004000;
    v4.i64[1] = 0x400000004000;
    v5 = *result;
    while (1)
    {
      v6 = *(result + 8);
      v83[0] = vdupq_n_s16(*v5);
      v81[0] = vdupq_n_s16(v5[1]);
      v79[0] = vdupq_n_s16(v5[2]);
      v77 = vdupq_n_s16(v5[3]);
      if (v6 >= 8)
      {
        break;
      }

      v15 = v78;
      v14 = v80;
      v13 = v82;
      v12 = v84;
      v8 = v5;
      if (v6 >= 1)
      {
        goto LABEL_10;
      }

LABEL_12:
      v17 = &v12[-1].i16[7];
      v18 = vld1q_dup_s16(v17);
      v19 = &v13[-1].i16[7];
      v20 = vld1q_dup_s16(v19);
      *v12 = v18;
      *v13 = v20;
      v21 = &v14[-1].i16[7];
      v22 = vld1q_dup_s16(v21);
      *v14 = v22;
      v23 = &v15[-1].i16[7];
      v24 = vld1q_dup_s16(v23);
      *v15 = v24;
      v25 = *(result + 8);
      if (v25 >= 3)
      {
        v26 = v25 + 3;
        v27 = v84;
        v28 = v2;
        do
        {
          v29 = v27[-1];
          v30 = *v27;
          *v28 = *v27;
          v29.i64[0] = vextq_s8(v29, v29, 8uLL).u64[0];
          v31 = vextq_s8(v30, v30, 8uLL).u64[0];
          v32 = vaddq_s32(vpaddq_s32(vmull_s16(0x804EBF672852488, *v30.i8), vmull_s16(15006946, v31)), vpaddq_s32(0, vmull_s16(0xF3870519FE3A0059, *v29.i8)));
          v33 = vaddq_s32(vextq_s8(v32, v32, 8uLL), v32);
          v28[4] = vqmovun_s16(vshrq_n_s32(vaddq_s32(vaddq_s32(v33, v4), vrev64q_s32(v33)), 0xFuLL)).u8[0];
          v34 = vaddq_s32(vpaddq_s32(vmull_s16(0xE9D14FA74FA7E9D1, *v30.i8), vmull_s16(0xD3FCA30912, v31)), vpaddq_s32(0, vmull_s16(0x912FCA300D30000, *v29.i8)));
          v35 = vaddq_s32(vextq_s8(v34, v34, 8uLL), v34);
          v28[8] = vqmovun_s16(vshrq_n_s32(vaddq_s32(vaddq_s32(v35, v4), vrev64q_s32(v35)), 0xFuLL)).u8[0];
          v36 = vaddq_s32(vpaddq_s32(vmull_s16(0x24887285EBF60804, *v30.i8), vmull_s16(0x59FE3A0519F387, v31)), vpaddq_s32(0, vmull_s16(0xFCE200E400000000, *v29.i8)));
          v37 = vaddq_s32(vextq_s8(v36, v36, 8uLL), v36);
          v28[12] = vqmovun_s16(vshrq_n_s32(vaddq_s32(vaddq_s32(v37, v4), vrev64q_s32(v37)), 0xFuLL)).u8[0];
          v27 = (v27 + 6);
          v28 += 16;
          v26 -= 3;
        }

        while (v26 > 5);
        v38 = *(result + 8);
        if (v38 >= 3)
        {
          v39 = v2 + 1;
          v40 = v38 + 3;
          v41 = v82;
          do
          {
            v42 = v41[-1];
            v43 = *v41;
            *v39 = *v41;
            v42.i64[0] = vextq_s8(v42, v42, 8uLL).u64[0];
            v44 = vextq_s8(v43, v43, 8uLL).u64[0];
            v45 = vaddq_s32(vpaddq_s32(vmull_s16(0x804EBF672852488, *v43.i8), vmull_s16(15006946, v44)), vpaddq_s32(0, vmull_s16(0xF3870519FE3A0059, *v42.i8)));
            v46 = vaddq_s32(vextq_s8(v45, v45, 8uLL), v45);
            v39[4] = vqmovun_s16(vshrq_n_s32(vaddq_s32(vaddq_s32(v46, v4), vrev64q_s32(v46)), 0xFuLL)).u8[0];
            v47 = vaddq_s32(vpaddq_s32(vmull_s16(0xE9D14FA74FA7E9D1, *v43.i8), vmull_s16(0xD3FCA30912, v44)), vpaddq_s32(0, vmull_s16(0x912FCA300D30000, *v42.i8)));
            v48 = vaddq_s32(vextq_s8(v47, v47, 8uLL), v47);
            v39[8] = vqmovun_s16(vshrq_n_s32(vaddq_s32(vaddq_s32(v48, v4), vrev64q_s32(v48)), 0xFuLL)).u8[0];
            v49 = vaddq_s32(vpaddq_s32(vmull_s16(0x24887285EBF60804, *v43.i8), vmull_s16(0x59FE3A0519F387, v44)), vpaddq_s32(0, vmull_s16(0xFCE200E400000000, *v42.i8)));
            v50 = vaddq_s32(vextq_s8(v49, v49, 8uLL), v49);
            v39[12] = vqmovun_s16(vshrq_n_s32(vaddq_s32(vaddq_s32(v50, v4), vrev64q_s32(v50)), 0xFuLL)).u8[0];
            v41 = (v41 + 6);
            v39 += 16;
            v40 -= 3;
          }

          while (v40 > 5);
          v51 = *(result + 8);
          if (v51 >= 3)
          {
            v52 = v2 + 2;
            v53 = v51 + 3;
            v54 = v80;
            do
            {
              v55 = v54[-1];
              v56 = *v54;
              *v52 = *v54;
              v55.i64[0] = vextq_s8(v55, v55, 8uLL).u64[0];
              v57 = vextq_s8(v56, v56, 8uLL).u64[0];
              v58 = vaddq_s32(vpaddq_s32(vmull_s16(0x804EBF672852488, *v56.i8), vmull_s16(15006946, v57)), vpaddq_s32(0, vmull_s16(0xF3870519FE3A0059, *v55.i8)));
              v59 = vaddq_s32(vextq_s8(v58, v58, 8uLL), v58);
              v52[4] = vqmovun_s16(vshrq_n_s32(vaddq_s32(vaddq_s32(v59, v4), vrev64q_s32(v59)), 0xFuLL)).u8[0];
              v60 = vaddq_s32(vpaddq_s32(vmull_s16(0xE9D14FA74FA7E9D1, *v56.i8), vmull_s16(0xD3FCA30912, v57)), vpaddq_s32(0, vmull_s16(0x912FCA300D30000, *v55.i8)));
              v61 = vaddq_s32(vextq_s8(v60, v60, 8uLL), v60);
              v52[8] = vqmovun_s16(vshrq_n_s32(vaddq_s32(vaddq_s32(v61, v4), vrev64q_s32(v61)), 0xFuLL)).u8[0];
              v62 = vaddq_s32(vpaddq_s32(vmull_s16(0x24887285EBF60804, *v56.i8), vmull_s16(0x59FE3A0519F387, v57)), vpaddq_s32(0, vmull_s16(0xFCE200E400000000, *v55.i8)));
              v63 = vaddq_s32(vextq_s8(v62, v62, 8uLL), v62);
              v52[12] = vqmovun_s16(vshrq_n_s32(vaddq_s32(vaddq_s32(v63, v4), vrev64q_s32(v63)), 0xFuLL)).u8[0];
              v54 = (v54 + 6);
              v52 += 16;
              v53 -= 3;
            }

            while (v53 > 5);
            v64 = *(result + 8);
            if (v64 >= 3)
            {
              v65 = v2 + 3;
              v66 = v64 + 3;
              v67 = v78;
              do
              {
                v68 = v67[-1];
                v69 = *v67;
                *v65 = *v67;
                v68.i64[0] = vextq_s8(v68, v68, 8uLL).u64[0];
                v70 = vextq_s8(v69, v69, 8uLL).u64[0];
                v71 = vaddq_s32(vpaddq_s32(vmull_s16(0x804EBF672852488, *v69.i8), vmull_s16(15006946, v70)), vpaddq_s32(0, vmull_s16(0xF3870519FE3A0059, *v68.i8)));
                v72 = vaddq_s32(vextq_s8(v71, v71, 8uLL), v71);
                v65[4] = vqmovun_s16(vshrq_n_s32(vaddq_s32(vaddq_s32(v72, v4), vrev64q_s32(v72)), 0xFuLL)).u8[0];
                v73 = vaddq_s32(vpaddq_s32(vmull_s16(0xE9D14FA74FA7E9D1, *v69.i8), vmull_s16(0xD3FCA30912, v70)), vpaddq_s32(0, vmull_s16(0x912FCA300D30000, *v68.i8)));
                v74 = vaddq_s32(vextq_s8(v73, v73, 8uLL), v73);
                v65[8] = vqmovun_s16(vshrq_n_s32(vaddq_s32(vaddq_s32(v74, v4), vrev64q_s32(v74)), 0xFuLL)).u8[0];
                v75 = vaddq_s32(vpaddq_s32(vmull_s16(0x24887285EBF60804, *v69.i8), vmull_s16(0x59FE3A0519F387, v70)), vpaddq_s32(0, vmull_s16(0xFCE200E400000000, *v68.i8)));
                v76 = vaddq_s32(vextq_s8(v75, v75, 8uLL), v75);
                v65[12] = vqmovun_s16(vshrq_n_s32(vaddq_s32(vaddq_s32(v76, v4), vrev64q_s32(v76)), 0xFuLL)).u8[0];
                v67 = (v67 + 6);
                v65 += 16;
                v66 -= 3;
              }

              while (v66 > 5);
            }
          }
        }
      }

      v5 += *(result + 16);
      v2 += *(result + 40);
      if (++v1 >= *(result + 48))
      {
        return result;
      }
    }

    v7 = 1;
    v8 = v5;
    do
    {
      v9 = v6;
      v10 = *v8;
      v11 = v8[1];
      v8 += 2;
      v83[v7] = vqmovn_high_s32(vqmovn_s32(vandq_s8(v10, v3)), vandq_s8(v11, v3));
      v81[v7] = vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v10, 8uLL), v3)), vandq_s8(vshrq_n_u32(v11, 8uLL), v3));
      v79[v7] = vqmovn_high_s32(vqmovn_s32((*&vshrq_n_u32(v10, 0x10uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL))), (*&vshrq_n_u32(v11, 0x10uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)));
      *(&v77 + v7 * 16) = vqmovn_high_s32(vqmovn_s32(vshrq_n_u32(v10, 0x18uLL)), vshrq_n_u32(v11, 0x18uLL));
      v6 -= 8;
      ++v7;
    }

    while (v9 > 0xF);
    v12 = &v83[v7];
    v13 = &v81[v7];
    v14 = &v79[v7];
    v15 = (&v77 + v7 * 16);
    if (v6 < 1)
    {
      goto LABEL_12;
    }

LABEL_10:
    v16 = v6 + 1;
    do
    {
      v12->i16[0] = v8->u8[0];
      v12 = (v12 + 2);
      v13->i16[0] = v8->u8[1];
      v13 = (v13 + 2);
      v14->i16[0] = v8->u8[2];
      v14 = (v14 + 2);
      v15->i16[0] = v8->u8[3];
      v15 = (v15 + 2);
      --v16;
      v8 = (v8 + 4);
    }

    while (v16 > 1);
    goto LABEL_12;
  }

  return result;
}

uint64_t scale_horizontal_3to4_4444_16bBE()
{
  result = MEMORY[0x28223BE20]();
  v92[241].i64[1] = *MEMORY[0x277D85DE8];
  if (*(result + 48) >= 1)
  {
    v1 = 0;
    v2 = *(result + 24);
    v3 = *result;
    v4.i64[0] = 0x80008000800080;
    v4.i64[1] = 0x80008000800080;
    v5.i64[0] = 0x400000004000;
    v5.i64[1] = 0x400000004000;
    v6 = *(result + 8);
    while (1)
    {
      v91[0] = vdupq_n_s16(bswap32(*v3 ^ 0x80) >> 16);
      v89[0] = vdupq_n_s16(bswap32(v3[1] ^ 0x80) >> 16);
      v87[0] = vdupq_n_s16(bswap32(v3[2] ^ 0x80) >> 16);
      v85 = vdupq_n_s16(bswap32(v3[3] ^ 0x80) >> 16);
      if (v6 >= 8)
      {
        break;
      }

      v27 = v86;
      v26 = v88;
      v25 = v90;
      v24 = v92;
      v8 = v3;
      if (v6 >= 1)
      {
        goto LABEL_10;
      }

LABEL_12:
      v29 = &v24[-1].i16[7];
      v30 = vld1q_dup_s16(v29);
      v31 = &v25[-1].i16[7];
      v32 = vld1q_dup_s16(v31);
      *v24 = v30;
      *v25 = v32;
      v33 = &v26[-1].i16[7];
      v34 = vld1q_dup_s16(v33);
      *v26 = v34;
      v35 = &v27[-1].i16[7];
      v36 = vld1q_dup_s16(v35);
      *v27 = v36;
      v6 = *(result + 8);
      if (v6 >= 3)
      {
        v37 = v6 + 3;
        v38 = v6 + 3;
        v39 = v92;
        v40 = v2;
        do
        {
          v41 = *v39;
          v42 = vextq_s8(v39[-1], v39[-1], 8uLL).u64[0];
          *v40 = bswap32(v39->u16[0] ^ 0x8000) >> 16;
          v43 = vextq_s8(v41, v41, 8uLL).u64[0];
          v44 = vaddq_s32(vpaddq_s32(vmull_s16(0x804EBF672852488, *v41.i8), vmull_s16(15006946, v43)), vpaddq_s32(0, vmull_s16(0xF3870519FE3A0059, v42)));
          v45 = vaddq_s32(vextq_s8(v44, v44, 8uLL), v44);
          v46 = vaddq_s32(vpaddq_s32(vmull_s16(0xE9D14FA74FA7E9D1, *v41.i8), vmull_s16(0xD3FCA30912, v43)), vpaddq_s32(0, vmull_s16(0x912FCA300D30000, v42)));
          v47 = vaddq_s32(vextq_s8(v46, v46, 8uLL), v46);
          v48 = vaddq_s32(vpaddq_s32(vmull_s16(0x24887285EBF60804, *v41.i8), vmull_s16(0x59FE3A0519F387, v43)), vpaddq_s32(0, vmull_s16(0xFCE200E400000000, v42)));
          v49 = vaddq_s32(vextq_s8(v48, v48, 8uLL), v48);
          v40[4] = bswap32(vqmovn_s32(vshrq_n_s32(vaddq_s32(vaddq_s32(v45, v5), vrev64q_s32(v45)), 0xFuLL)).u16[0] ^ 0x8000) >> 16;
          v40[8] = bswap32(vqmovn_s32(vshrq_n_s32(vaddq_s32(vaddq_s32(v47, v5), vrev64q_s32(v47)), 0xFuLL)).u16[0] ^ 0x8000) >> 16;
          v40[12] = bswap32(vqmovn_s32(vshrq_n_s32(vaddq_s32(vaddq_s32(v49, v5), vrev64q_s32(v49)), 0xFuLL)).u16[0] ^ 0x8000) >> 16;
          v39 = (v39 + 6);
          v40 += 16;
          v38 -= 3;
        }

        while (v38 > 5);
        v50 = v2 + 1;
        v51 = v6 + 3;
        v52 = v90;
        do
        {
          v53 = *v52;
          v54 = vextq_s8(v52[-1], v52[-1], 8uLL).u64[0];
          *v50 = bswap32(v52->u16[0] ^ 0x8000) >> 16;
          v55 = vextq_s8(v53, v53, 8uLL).u64[0];
          v56 = vaddq_s32(vpaddq_s32(vmull_s16(0x804EBF672852488, *v53.i8), vmull_s16(15006946, v55)), vpaddq_s32(0, vmull_s16(0xF3870519FE3A0059, v54)));
          v57 = vaddq_s32(vextq_s8(v56, v56, 8uLL), v56);
          v58 = vaddq_s32(vpaddq_s32(vmull_s16(0xE9D14FA74FA7E9D1, *v53.i8), vmull_s16(0xD3FCA30912, v55)), vpaddq_s32(0, vmull_s16(0x912FCA300D30000, v54)));
          v59 = vaddq_s32(vextq_s8(v58, v58, 8uLL), v58);
          v60 = vaddq_s32(vpaddq_s32(vmull_s16(0x24887285EBF60804, *v53.i8), vmull_s16(0x59FE3A0519F387, v55)), vpaddq_s32(0, vmull_s16(0xFCE200E400000000, v54)));
          v61 = vaddq_s32(vextq_s8(v60, v60, 8uLL), v60);
          v50[4] = bswap32(vqmovn_s32(vshrq_n_s32(vaddq_s32(vaddq_s32(v57, v5), vrev64q_s32(v57)), 0xFuLL)).u16[0] ^ 0x8000) >> 16;
          v50[8] = bswap32(vqmovn_s32(vshrq_n_s32(vaddq_s32(vaddq_s32(v59, v5), vrev64q_s32(v59)), 0xFuLL)).u16[0] ^ 0x8000) >> 16;
          v50[12] = bswap32(vqmovn_s32(vshrq_n_s32(vaddq_s32(vaddq_s32(v61, v5), vrev64q_s32(v61)), 0xFuLL)).u16[0] ^ 0x8000) >> 16;
          v52 = (v52 + 6);
          v50 += 16;
          v51 -= 3;
        }

        while (v51 > 5);
        v62 = v2 + 2;
        v63 = v6 + 3;
        v64 = v88;
        do
        {
          v65 = *v64;
          v66 = vextq_s8(v64[-1], v64[-1], 8uLL).u64[0];
          *v62 = bswap32(v64->u16[0] ^ 0x8000) >> 16;
          v67 = vextq_s8(v65, v65, 8uLL).u64[0];
          v68 = vaddq_s32(vpaddq_s32(vmull_s16(0x804EBF672852488, *v65.i8), vmull_s16(15006946, v67)), vpaddq_s32(0, vmull_s16(0xF3870519FE3A0059, v66)));
          v69 = vaddq_s32(vextq_s8(v68, v68, 8uLL), v68);
          v70 = vaddq_s32(vpaddq_s32(vmull_s16(0xE9D14FA74FA7E9D1, *v65.i8), vmull_s16(0xD3FCA30912, v67)), vpaddq_s32(0, vmull_s16(0x912FCA300D30000, v66)));
          v71 = vaddq_s32(vextq_s8(v70, v70, 8uLL), v70);
          v72 = vaddq_s32(vpaddq_s32(vmull_s16(0x24887285EBF60804, *v65.i8), vmull_s16(0x59FE3A0519F387, v67)), vpaddq_s32(0, vmull_s16(0xFCE200E400000000, v66)));
          v73 = vaddq_s32(vextq_s8(v72, v72, 8uLL), v72);
          v62[4] = bswap32(vqmovn_s32(vshrq_n_s32(vaddq_s32(vaddq_s32(v69, v5), vrev64q_s32(v69)), 0xFuLL)).u16[0] ^ 0x8000) >> 16;
          v62[8] = bswap32(vqmovn_s32(vshrq_n_s32(vaddq_s32(vaddq_s32(v71, v5), vrev64q_s32(v71)), 0xFuLL)).u16[0] ^ 0x8000) >> 16;
          v62[12] = bswap32(vqmovn_s32(vshrq_n_s32(vaddq_s32(vaddq_s32(v73, v5), vrev64q_s32(v73)), 0xFuLL)).u16[0] ^ 0x8000) >> 16;
          v64 = (v64 + 6);
          v62 += 16;
          v63 -= 3;
        }

        while (v63 > 5);
        v74 = v2 + 3;
        v75 = v86;
        do
        {
          v76 = *v75;
          v77 = vextq_s8(v75[-1], v75[-1], 8uLL).u64[0];
          *v74 = bswap32(v75->u16[0] ^ 0x8000) >> 16;
          v78 = vextq_s8(v76, v76, 8uLL).u64[0];
          v79 = vaddq_s32(vpaddq_s32(vmull_s16(0x804EBF672852488, *v76.i8), vmull_s16(15006946, v78)), vpaddq_s32(0, vmull_s16(0xF3870519FE3A0059, v77)));
          v80 = vaddq_s32(vextq_s8(v79, v79, 8uLL), v79);
          v81 = vaddq_s32(vpaddq_s32(vmull_s16(0xE9D14FA74FA7E9D1, *v76.i8), vmull_s16(0xD3FCA30912, v78)), vpaddq_s32(0, vmull_s16(0x912FCA300D30000, v77)));
          v82 = vaddq_s32(vextq_s8(v81, v81, 8uLL), v81);
          v83 = vaddq_s32(vpaddq_s32(vmull_s16(0x24887285EBF60804, *v76.i8), vmull_s16(0x59FE3A0519F387, v78)), vpaddq_s32(0, vmull_s16(0xFCE200E400000000, v77)));
          v84 = vaddq_s32(vextq_s8(v83, v83, 8uLL), v83);
          v74[4] = bswap32(vqmovn_s32(vshrq_n_s32(vaddq_s32(vaddq_s32(v80, v5), vrev64q_s32(v80)), 0xFuLL)).u16[0] ^ 0x8000) >> 16;
          v74[8] = bswap32(vqmovn_s32(vshrq_n_s32(vaddq_s32(vaddq_s32(v82, v5), vrev64q_s32(v82)), 0xFuLL)).u16[0] ^ 0x8000) >> 16;
          v74[12] = bswap32(vqmovn_s32(vshrq_n_s32(vaddq_s32(vaddq_s32(v84, v5), vrev64q_s32(v84)), 0xFuLL)).u16[0] ^ 0x8000) >> 16;
          v75 = (v75 + 6);
          v74 += 16;
          v37 -= 3;
        }

        while (v37 > 5);
      }

      v3 = (v3 + *(result + 16));
      v2 = (v2 + *(result + 40));
      if (++v1 >= *(result + 48))
      {
        return result;
      }
    }

    v7 = 1;
    v8 = v3;
    do
    {
      v9 = v6;
      v10 = vrev16q_s8(veorq_s8(*v8, v4));
      v11 = vrev16q_s8(veorq_s8(v8[1], v4));
      v12 = vrev16q_s8(veorq_s8(v8[2], v4));
      v13 = vrev16q_s8(veorq_s8(v8[3], v4));
      v14 = vzip1q_s16(v10, v11);
      v15 = vzip2q_s16(v10, v11);
      v16 = vzip1q_s16(v12, v13);
      v17 = vzip2q_s16(v12, v13);
      v18 = vzip1q_s16(v14, v15);
      v19 = vzip2q_s16(v14, v15);
      v20 = vzip1q_s16(v16, v17);
      v21 = vzip2q_s16(v16, v17);
      v22 = vzip2q_s64(v18, v20);
      v18.i64[1] = v20.i64[0];
      v91[v7] = v18;
      v89[v7] = v22;
      v23 = vzip2q_s64(v19, v21);
      v19.i64[1] = v21.i64[0];
      v87[v7] = v19;
      *(&v85 + v7 * 16) = v23;
      v8 += 4;
      v6 -= 8;
      ++v7;
    }

    while (v9 > 0xF);
    v24 = &v91[v7];
    v25 = &v89[v7];
    v26 = &v87[v7];
    v27 = (&v85 + v7 * 16);
    if (v6 < 1)
    {
      goto LABEL_12;
    }

LABEL_10:
    v28 = v6 + 1;
    do
    {
      v24->i16[0] = bswap32(v8->u16[0] ^ 0x80) >> 16;
      v24 = (v24 + 2);
      v25->i16[0] = bswap32(v8->u16[1] ^ 0x80) >> 16;
      v25 = (v25 + 2);
      v26->i16[0] = bswap32(v8->u16[2] ^ 0x80) >> 16;
      v26 = (v26 + 2);
      v27->i16[0] = bswap32(v8->u16[3] ^ 0x80) >> 16;
      v27 = (v27 + 2);
      --v28;
      v8 = (v8 + 8);
    }

    while (v28 > 1);
    goto LABEL_12;
  }

  return result;
}

uint64_t scale_horizontal_3to4_4444_16bLE()
{
  result = MEMORY[0x28223BE20]();
  v92[241].i64[1] = *MEMORY[0x277D85DE8];
  if (*(result + 48) >= 1)
  {
    v1 = 0;
    v2 = *(result + 24);
    v3 = *result;
    v4.i64[0] = 0x8000800080008000;
    v4.i64[1] = 0x8000800080008000;
    v5.i64[0] = 0x400000004000;
    v5.i64[1] = 0x400000004000;
    v6 = *(result + 8);
    while (1)
    {
      v91[0] = vdupq_n_s16(*v3 ^ 0xFFFF8000);
      v89[0] = vdupq_n_s16(v3[1] ^ 0xFFFF8000);
      v87[0] = vdupq_n_s16(v3[2] ^ 0xFFFF8000);
      v85 = vdupq_n_s16(v3[3] ^ 0xFFFF8000);
      if (v6 >= 8)
      {
        break;
      }

      v27 = v86;
      v26 = v88;
      v25 = v90;
      v24 = v92;
      v8 = v3;
      if (v6 >= 1)
      {
        goto LABEL_10;
      }

LABEL_12:
      v29 = &v24[-1].i16[7];
      v30 = vld1q_dup_s16(v29);
      v31 = &v25[-1].i16[7];
      v32 = vld1q_dup_s16(v31);
      *v24 = v30;
      *v25 = v32;
      v33 = &v26[-1].i16[7];
      v34 = vld1q_dup_s16(v33);
      *v26 = v34;
      v35 = &v27[-1].i16[7];
      v36 = vld1q_dup_s16(v35);
      *v27 = v36;
      v6 = *(result + 8);
      if (v6 >= 3)
      {
        v37 = v6 + 3;
        v38 = v6 + 3;
        v39 = v92;
        v40 = v2;
        do
        {
          v42 = v39[-1];
          v41 = *v39;
          *v40 = *v39 ^ 0x8000;
          v42.i64[0] = vextq_s8(v42, v42, 8uLL).u64[0];
          v43 = vextq_s8(v41, v41, 8uLL).u64[0];
          v44 = vaddq_s32(vpaddq_s32(vmull_s16(0x804EBF672852488, *v41.i8), vmull_s16(15006946, v43)), vpaddq_s32(0, vmull_s16(0xF3870519FE3A0059, *v42.i8)));
          v45 = vaddq_s32(vextq_s8(v44, v44, 8uLL), v44);
          v46 = vaddq_s32(vpaddq_s32(vmull_s16(0xE9D14FA74FA7E9D1, *v41.i8), vmull_s16(0xD3FCA30912, v43)), vpaddq_s32(0, vmull_s16(0x912FCA300D30000, *v42.i8)));
          v47 = vaddq_s32(vextq_s8(v46, v46, 8uLL), v46);
          v48 = vaddq_s32(vpaddq_s32(vmull_s16(0x24887285EBF60804, *v41.i8), vmull_s16(0x59FE3A0519F387, v43)), vpaddq_s32(0, vmull_s16(0xFCE200E400000000, *v42.i8)));
          v49 = vaddq_s32(vextq_s8(v48, v48, 8uLL), v48);
          v40[4] = vqmovn_s32(vshrq_n_s32(vaddq_s32(vaddq_s32(v45, v5), vrev64q_s32(v45)), 0xFuLL)).u16[0] ^ 0x8000;
          v40[8] = vqmovn_s32(vshrq_n_s32(vaddq_s32(vaddq_s32(v47, v5), vrev64q_s32(v47)), 0xFuLL)).u16[0] ^ 0x8000;
          v40[12] = vqmovn_s32(vshrq_n_s32(vaddq_s32(vaddq_s32(v49, v5), vrev64q_s32(v49)), 0xFuLL)).u16[0] ^ 0x8000;
          v39 = (v39 + 6);
          v40 += 16;
          v38 -= 3;
        }

        while (v38 > 5);
        v50 = v2 + 1;
        v51 = v6 + 3;
        v52 = v90;
        do
        {
          v54 = v52[-1];
          v53 = *v52;
          *v50 = *v52 ^ 0x8000;
          v54.i64[0] = vextq_s8(v54, v54, 8uLL).u64[0];
          v55 = vextq_s8(v53, v53, 8uLL).u64[0];
          v56 = vaddq_s32(vpaddq_s32(vmull_s16(0x804EBF672852488, *v53.i8), vmull_s16(15006946, v55)), vpaddq_s32(0, vmull_s16(0xF3870519FE3A0059, *v54.i8)));
          v57 = vaddq_s32(vextq_s8(v56, v56, 8uLL), v56);
          v58 = vaddq_s32(vpaddq_s32(vmull_s16(0xE9D14FA74FA7E9D1, *v53.i8), vmull_s16(0xD3FCA30912, v55)), vpaddq_s32(0, vmull_s16(0x912FCA300D30000, *v54.i8)));
          v59 = vaddq_s32(vextq_s8(v58, v58, 8uLL), v58);
          v60 = vaddq_s32(vpaddq_s32(vmull_s16(0x24887285EBF60804, *v53.i8), vmull_s16(0x59FE3A0519F387, v55)), vpaddq_s32(0, vmull_s16(0xFCE200E400000000, *v54.i8)));
          v61 = vaddq_s32(vextq_s8(v60, v60, 8uLL), v60);
          v50[4] = vqmovn_s32(vshrq_n_s32(vaddq_s32(vaddq_s32(v57, v5), vrev64q_s32(v57)), 0xFuLL)).u16[0] ^ 0x8000;
          v50[8] = vqmovn_s32(vshrq_n_s32(vaddq_s32(vaddq_s32(v59, v5), vrev64q_s32(v59)), 0xFuLL)).u16[0] ^ 0x8000;
          v50[12] = vqmovn_s32(vshrq_n_s32(vaddq_s32(vaddq_s32(v61, v5), vrev64q_s32(v61)), 0xFuLL)).u16[0] ^ 0x8000;
          v52 = (v52 + 6);
          v50 += 16;
          v51 -= 3;
        }

        while (v51 > 5);
        v62 = v2 + 2;
        v63 = v6 + 3;
        v64 = v88;
        do
        {
          v66 = v64[-1];
          v65 = *v64;
          *v62 = *v64 ^ 0x8000;
          v66.i64[0] = vextq_s8(v66, v66, 8uLL).u64[0];
          v67 = vextq_s8(v65, v65, 8uLL).u64[0];
          v68 = vaddq_s32(vpaddq_s32(vmull_s16(0x804EBF672852488, *v65.i8), vmull_s16(15006946, v67)), vpaddq_s32(0, vmull_s16(0xF3870519FE3A0059, *v66.i8)));
          v69 = vaddq_s32(vextq_s8(v68, v68, 8uLL), v68);
          v70 = vaddq_s32(vpaddq_s32(vmull_s16(0xE9D14FA74FA7E9D1, *v65.i8), vmull_s16(0xD3FCA30912, v67)), vpaddq_s32(0, vmull_s16(0x912FCA300D30000, *v66.i8)));
          v71 = vaddq_s32(vextq_s8(v70, v70, 8uLL), v70);
          v72 = vaddq_s32(vpaddq_s32(vmull_s16(0x24887285EBF60804, *v65.i8), vmull_s16(0x59FE3A0519F387, v67)), vpaddq_s32(0, vmull_s16(0xFCE200E400000000, *v66.i8)));
          v73 = vaddq_s32(vextq_s8(v72, v72, 8uLL), v72);
          v62[4] = vqmovn_s32(vshrq_n_s32(vaddq_s32(vaddq_s32(v69, v5), vrev64q_s32(v69)), 0xFuLL)).u16[0] ^ 0x8000;
          v62[8] = vqmovn_s32(vshrq_n_s32(vaddq_s32(vaddq_s32(v71, v5), vrev64q_s32(v71)), 0xFuLL)).u16[0] ^ 0x8000;
          v62[12] = vqmovn_s32(vshrq_n_s32(vaddq_s32(vaddq_s32(v73, v5), vrev64q_s32(v73)), 0xFuLL)).u16[0] ^ 0x8000;
          v64 = (v64 + 6);
          v62 += 16;
          v63 -= 3;
        }

        while (v63 > 5);
        v74 = v2 + 3;
        v75 = v86;
        do
        {
          v77 = v75[-1];
          v76 = *v75;
          *v74 = *v75 ^ 0x8000;
          v77.i64[0] = vextq_s8(v77, v77, 8uLL).u64[0];
          v78 = vextq_s8(v76, v76, 8uLL).u64[0];
          v79 = vaddq_s32(vpaddq_s32(vmull_s16(0x804EBF672852488, *v76.i8), vmull_s16(15006946, v78)), vpaddq_s32(0, vmull_s16(0xF3870519FE3A0059, *v77.i8)));
          v80 = vaddq_s32(vextq_s8(v79, v79, 8uLL), v79);
          v81 = vaddq_s32(vpaddq_s32(vmull_s16(0xE9D14FA74FA7E9D1, *v76.i8), vmull_s16(0xD3FCA30912, v78)), vpaddq_s32(0, vmull_s16(0x912FCA300D30000, *v77.i8)));
          v82 = vaddq_s32(vextq_s8(v81, v81, 8uLL), v81);
          v83 = vaddq_s32(vpaddq_s32(vmull_s16(0x24887285EBF60804, *v76.i8), vmull_s16(0x59FE3A0519F387, v78)), vpaddq_s32(0, vmull_s16(0xFCE200E400000000, *v77.i8)));
          v84 = vaddq_s32(vextq_s8(v83, v83, 8uLL), v83);
          v74[4] = vqmovn_s32(vshrq_n_s32(vaddq_s32(vaddq_s32(v80, v5), vrev64q_s32(v80)), 0xFuLL)).u16[0] ^ 0x8000;
          v74[8] = vqmovn_s32(vshrq_n_s32(vaddq_s32(vaddq_s32(v82, v5), vrev64q_s32(v82)), 0xFuLL)).u16[0] ^ 0x8000;
          v74[12] = vqmovn_s32(vshrq_n_s32(vaddq_s32(vaddq_s32(v84, v5), vrev64q_s32(v84)), 0xFuLL)).u16[0] ^ 0x8000;
          v75 = (v75 + 6);
          v74 += 16;
          v37 -= 3;
        }

        while (v37 > 5);
      }

      v3 = (v3 + *(result + 16));
      v2 = (v2 + *(result + 40));
      if (++v1 >= *(result + 48))
      {
        return result;
      }
    }

    v7 = 1;
    v8 = v3;
    do
    {
      v9 = v6;
      v10 = veorq_s8(*v8, v4);
      v11 = veorq_s8(v8[1], v4);
      v12 = veorq_s8(v8[2], v4);
      v13 = veorq_s8(v8[3], v4);
      v14 = vzip1q_s16(v10, v11);
      v15 = vzip2q_s16(v10, v11);
      v16 = vzip1q_s16(v12, v13);
      v17 = vzip2q_s16(v12, v13);
      v18 = vzip1q_s16(v14, v15);
      v19 = vzip2q_s16(v14, v15);
      v20 = vzip1q_s16(v16, v17);
      v21 = vzip2q_s16(v16, v17);
      v22 = vzip2q_s64(v18, v20);
      v18.i64[1] = v20.i64[0];
      v91[v7] = v18;
      v89[v7] = v22;
      v23 = vzip2q_s64(v19, v21);
      v19.i64[1] = v21.i64[0];
      v87[v7] = v19;
      *(&v85 + v7 * 16) = v23;
      v8 += 4;
      v6 -= 8;
      ++v7;
    }

    while (v9 > 0xF);
    v24 = &v91[v7];
    v25 = &v89[v7];
    v26 = &v87[v7];
    v27 = (&v85 + v7 * 16);
    if (v6 < 1)
    {
      goto LABEL_12;
    }

LABEL_10:
    v28 = v6 + 1;
    do
    {
      v24->i16[0] = v8->i16[0] ^ 0x8000;
      v24 = (v24 + 2);
      v25->i16[0] = v8->i16[1] ^ 0x8000;
      v25 = (v25 + 2);
      v26->i16[0] = v8->i16[2] ^ 0x8000;
      v26 = (v26 + 2);
      v27->i16[0] = v8->i16[3] ^ 0x8000;
      v27 = (v27 + 2);
      --v28;
      v8 = (v8 + 8);
    }

    while (v28 > 1);
    goto LABEL_12;
  }

  return result;
}

uint64_t scale_horizontal_2to3_2vuy()
{
  result = MEMORY[0x28223BE20]();
  v65[483] = *MEMORY[0x277D85DE8];
  if (*(result + 48) >= 1)
  {
    v1 = 0;
    v2 = *(result + 24);
    v3.i64[0] = 0xFF000000FFLL;
    v3.i64[1] = 0xFF000000FFLL;
    v4.i64[0] = 0x400000004000;
    v4.i64[1] = 0x400000004000;
    v5 = *result;
    do
    {
      v6 = vdupq_n_s16(v5->u8[0]);
      v64 = vdupq_n_s16(v5->u8[1]);
      v62 = v6;
      v7 = v61;
      v8 = *(result + 8);
      v60 = vdupq_n_s16(v5->u8[2]);
      v9 = v63;
      v10 = v65;
      v11 = v5;
      if (v8 >= 16)
      {
        v12 = 0;
        v13 = v8 + 16;
        v11 = v5;
        v10 = v65;
        do
        {
          v14 = *v11;
          v15 = v11[1];
          v11 += 2;
          *&v63[v12] = vqmovn_high_s32(vqmovn_s32(vandq_s8(v14, v3)), vandq_s8(v15, v3));
          *&v61[v12] = vqmovn_high_s32(vqmovn_s32((*&vshrq_n_u32(v14, 0x10uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL))), (*&vshrq_n_u32(v15, 0x10uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)));
          *v10 = vshrq_n_u16(v14, 8uLL);
          v10[1] = vshrq_n_u16(v15, 8uLL);
          v10 += 2;
          v13 -= 16;
          v12 += 16;
        }

        while (v13 > 0x1F);
        v8 -= v12;
        v9 = &v63[v12];
        v7 = &v61[v12];
      }

      if (v8 >= 2)
      {
        v16 = v8 + 2;
        do
        {
          *v9 = v11->u8[0];
          v9 += 2;
          v10->i16[0] = v11->u8[1];
          *v7 = v11->u8[2];
          v7 += 2;
          v10->i16[1] = v11->u8[3];
          v10 = (v10 + 4);
          v16 -= 2;
          v11 = (v11 + 4);
        }

        while (v16 > 3);
      }

      v17 = &v10[-1].i16[7];
      v18 = vld1q_dup_s16(v17);
      *v10 = v18;
      v19 = (v9 - 2);
      v20 = vld1q_dup_s16(v19);
      *v9 = v20;
      v21 = (v7 - 2);
      v22 = vld1q_dup_s16(v21);
      *v7 = v22;
      v23 = *(result + 8);
      if (v23 >= 2)
      {
        v24 = v2 + 1;
        v25 = v23 + 2;
        v26 = v65;
        do
        {
          v27 = v26[-1];
          v28 = *v26;
          *v24 = *v26;
          v29 = vmull_s16(0xFF7F000000000000, *v27.i8);
          v27.i64[0] = vextq_s8(v27, v27, 8uLL).u64[0];
          v30 = vextq_s8(v28, v28, 8uLL).u64[0];
          v31 = vaddq_s32(vpaddq_s32(vmull_s16(0xB12E805696033B1, *v28.i8), vmull_s16(0xFF2C026EFA90, v30)), vpaddq_s32(v29, vmull_s16(0xEDE108C2FBC601C6, *v27.i8)));
          v32 = vaddq_s32(vextq_s8(v31, v31, 8uLL), v31);
          v24[2] = vqmovun_s16(vshrq_n_s32(vaddq_s32(vaddq_s32(v32, v4), vrev64q_s32(v32)), 0xFuLL)).u8[0];
          v33 = vaddq_s32(vpaddq_s32(vmull_s16(0xEDE133B16960E805, *v28.i8), vmull_s16(0xFF7F01C6FBC608C2, v30)), vpaddq_s32(0, vmull_s16(0xB12FA90026EFF2CLL, *v27.i8)));
          v34 = vaddq_s32(vextq_s8(v33, v33, 8uLL), v33);
          v24[4] = vqmovun_s16(vshrq_n_s32(vaddq_s32(vaddq_s32(v34, v4), vrev64q_s32(v34)), 0xFuLL)).u8[0];
          v26 = (v26 + 4);
          v24 += 6;
          v25 -= 2;
        }

        while (v25 > 3);
        v35 = *(result + 8);
        if (v35 >= 4)
        {
          v36 = (v35 >> 1) + 2;
          v37 = v63;
          v38 = v2;
          do
          {
            v39 = v37[-1];
            v40 = *v37;
            *v38 = *v37;
            v41 = vmull_s16(0xFF7F000000000000, *v39.i8);
            v39.i64[0] = vextq_s8(v39, v39, 8uLL).u64[0];
            v42 = vextq_s8(v40, v40, 8uLL).u64[0];
            v43 = vaddq_s32(vpaddq_s32(vmull_s16(0xB12E805696033B1, *v40.i8), vmull_s16(0xFF2C026EFA90, v42)), vpaddq_s32(v41, vmull_s16(0xEDE108C2FBC601C6, *v39.i8)));
            v44 = vaddq_s32(vextq_s8(v43, v43, 8uLL), v43);
            v38[4] = vqmovun_s16(vshrq_n_s32(vaddq_s32(vaddq_s32(v44, v4), vrev64q_s32(v44)), 0xFuLL)).u8[0];
            v45 = vaddq_s32(vpaddq_s32(vmull_s16(0xEDE133B16960E805, *v40.i8), vmull_s16(0xFF7F01C6FBC608C2, v42)), vpaddq_s32(0, vmull_s16(0xB12FA90026EFF2CLL, *v39.i8)));
            v46 = vaddq_s32(vextq_s8(v45, v45, 8uLL), v45);
            v38[8] = vqmovun_s16(vshrq_n_s32(vaddq_s32(vaddq_s32(v46, v4), vrev64q_s32(v46)), 0xFuLL)).u8[0];
            v37 = (v37 + 4);
            v38 += 12;
            v36 -= 2;
          }

          while (v36 > 3);
          v47 = *(result + 8);
          if (v47 >= 4)
          {
            v48 = v47 >> 1;
            v49 = v2 + 2;
            v50 = v48 + 2;
            v51 = v61;
            do
            {
              v52 = v51[-1];
              v53 = *v51;
              *v49 = *v51;
              v54 = vmull_s16(0xFF7F000000000000, *v52.i8);
              v52.i64[0] = vextq_s8(v52, v52, 8uLL).u64[0];
              v55 = vextq_s8(v53, v53, 8uLL).u64[0];
              v56 = vaddq_s32(vpaddq_s32(vmull_s16(0xB12E805696033B1, *v53.i8), vmull_s16(0xFF2C026EFA90, v55)), vpaddq_s32(v54, vmull_s16(0xEDE108C2FBC601C6, *v52.i8)));
              v57 = vaddq_s32(vextq_s8(v56, v56, 8uLL), v56);
              v49[4] = vqmovun_s16(vshrq_n_s32(vaddq_s32(vaddq_s32(v57, v4), vrev64q_s32(v57)), 0xFuLL)).u8[0];
              v58 = vaddq_s32(vpaddq_s32(vmull_s16(0xEDE133B16960E805, *v53.i8), vmull_s16(0xFF7F01C6FBC608C2, v55)), vpaddq_s32(0, vmull_s16(0xB12FA90026EFF2CLL, *v52.i8)));
              v59 = vaddq_s32(vextq_s8(v58, v58, 8uLL), v58);
              v49[8] = vqmovun_s16(vshrq_n_s32(vaddq_s32(vaddq_s32(v59, v4), vrev64q_s32(v59)), 0xFuLL)).u8[0];
              v51 = (v51 + 4);
              v49 += 12;
              v50 -= 2;
            }

            while (v50 > 3);
          }
        }
      }

      v5 = (v5 + *(result + 16));
      v2 += *(result + 40);
      ++v1;
    }

    while (v1 < *(result + 48));
  }

  return result;
}

uint64_t scale_horizontal_2to3_v216()
{
  result = MEMORY[0x28223BE20]();
  v66[483] = *MEMORY[0x277D85DE8];
  if (*(result + 48) >= 1)
  {
    v1 = 0;
    v2 = *(result + 24);
    v3 = *result;
    v4.i64[0] = 0x8000800080008000;
    v4.i64[1] = 0x8000800080008000;
    v5.i64[0] = 0x400000004000;
    v5.i64[1] = 0x400000004000;
    v6 = *(result + 8);
    while (1)
    {
      v65 = vdupq_n_s16(v3->u16[1] ^ 0xFFFF8000);
      v63 = vdupq_n_s16(v3->u16[0] ^ 0xFFFF8000);
      v61 = vdupq_n_s16(v3->u16[2] ^ 0xFFFF8000);
      if (v6 >= 8)
      {
        break;
      }

      v20 = v62;
      v19 = v64;
      v10 = v66;
      v9 = v3;
      if (v6 >= 2)
      {
        goto LABEL_10;
      }

LABEL_12:
      v22 = v10 - 1;
      v23 = vld1q_dup_s16(v22);
      *v10 = v23;
      v24 = &v19[-1].i16[7];
      v25 = vld1q_dup_s16(v24);
      *v19 = v25;
      v26 = &v20[-1].i16[7];
      v27 = vld1q_dup_s16(v26);
      *v20 = v27;
      v6 = *(result + 8);
      if (v6 >= 2)
      {
        v28 = v2 + 1;
        v29 = v6 + 2;
        v30 = v66;
        do
        {
          v31 = v30[-1];
          v32 = *v30;
          *v28 = *v30 ^ 0x8000;
          v33 = vmull_s16(0xFF7F000000000000, *v31.i8);
          v31.i64[0] = vextq_s8(v31, v31, 8uLL).u64[0];
          v34 = vextq_s8(v32, v32, 8uLL).u64[0];
          v35 = vaddq_s32(vpaddq_s32(vmull_s16(0xB12E805696033B1, *v32.i8), vmull_s16(0xFF2C026EFA90, v34)), vpaddq_s32(v33, vmull_s16(0xEDE108C2FBC601C6, *v31.i8)));
          v36 = vaddq_s32(vextq_s8(v35, v35, 8uLL), v35);
          v37 = vaddq_s32(vpaddq_s32(vmull_s16(0xEDE133B16960E805, *v32.i8), vmull_s16(0xFF7F01C6FBC608C2, v34)), vpaddq_s32(0, vmull_s16(0xB12FA90026EFF2CLL, *v31.i8)));
          v38 = vaddq_s32(vextq_s8(v37, v37, 8uLL), v37);
          v28[2] = vqmovn_s32(vshrq_n_s32(vaddq_s32(vaddq_s32(v36, v5), vrev64q_s32(v36)), 0xFuLL)).u16[0] ^ 0x8000;
          v28[4] = vqmovn_s32(vshrq_n_s32(vaddq_s32(vaddq_s32(v38, v5), vrev64q_s32(v38)), 0xFuLL)).u16[0] ^ 0x8000;
          v30 = (v30 + 4);
          v28 += 6;
          v29 -= 2;
        }

        while (v29 > 3);
        if (v6 >= 4)
        {
          v39 = (v6 >> 1) + 2;
          v40 = v39;
          v41 = v64;
          v42 = v2;
          do
          {
            v43 = v41[-1];
            v44 = *v41;
            *v42 = *v41 ^ 0x8000;
            v45 = vmull_s16(0xFF7F000000000000, *v43.i8);
            v43.i64[0] = vextq_s8(v43, v43, 8uLL).u64[0];
            v46 = vextq_s8(v44, v44, 8uLL).u64[0];
            v47 = vaddq_s32(vpaddq_s32(vmull_s16(0xB12E805696033B1, *v44.i8), vmull_s16(0xFF2C026EFA90, v46)), vpaddq_s32(v45, vmull_s16(0xEDE108C2FBC601C6, *v43.i8)));
            v48 = vaddq_s32(vextq_s8(v47, v47, 8uLL), v47);
            v49 = vaddq_s32(vpaddq_s32(vmull_s16(0xEDE133B16960E805, *v44.i8), vmull_s16(0xFF7F01C6FBC608C2, v46)), vpaddq_s32(0, vmull_s16(0xB12FA90026EFF2CLL, *v43.i8)));
            v50 = vaddq_s32(vextq_s8(v49, v49, 8uLL), v49);
            v42[4] = vqmovn_s32(vshrq_n_s32(vaddq_s32(vaddq_s32(v48, v5), vrev64q_s32(v48)), 0xFuLL)).u16[0] ^ 0x8000;
            v42[8] = vqmovn_s32(vshrq_n_s32(vaddq_s32(vaddq_s32(v50, v5), vrev64q_s32(v50)), 0xFuLL)).u16[0] ^ 0x8000;
            v41 = (v41 + 4);
            v42 += 12;
            v40 -= 2;
          }

          while (v40 > 3);
          v51 = v2 + 2;
          v52 = v62;
          do
          {
            v53 = v52[-1];
            v54 = *v52;
            *v51 = *v52 ^ 0x8000;
            v55 = vmull_s16(0xFF7F000000000000, *v53.i8);
            v53.i64[0] = vextq_s8(v53, v53, 8uLL).u64[0];
            v56 = vextq_s8(v54, v54, 8uLL).u64[0];
            v57 = vaddq_s32(vpaddq_s32(vmull_s16(0xB12E805696033B1, *v54.i8), vmull_s16(0xFF2C026EFA90, v56)), vpaddq_s32(v55, vmull_s16(0xEDE108C2FBC601C6, *v53.i8)));
            v58 = vaddq_s32(vextq_s8(v57, v57, 8uLL), v57);
            v59 = vaddq_s32(vpaddq_s32(vmull_s16(0xEDE133B16960E805, *v54.i8), vmull_s16(0xFF7F01C6FBC608C2, v56)), vpaddq_s32(0, vmull_s16(0xB12FA90026EFF2CLL, *v53.i8)));
            v60 = vaddq_s32(vextq_s8(v59, v59, 8uLL), v59);
            v51[4] = vqmovn_s32(vshrq_n_s32(vaddq_s32(vaddq_s32(v58, v5), vrev64q_s32(v58)), 0xFuLL)).u16[0] ^ 0x8000;
            v51[8] = vqmovn_s32(vshrq_n_s32(vaddq_s32(vaddq_s32(v60, v5), vrev64q_s32(v60)), 0xFuLL)).u16[0] ^ 0x8000;
            v52 = (v52 + 4);
            v51 += 12;
            v39 -= 2;
          }

          while (v39 > 3);
        }
      }

      v3 = (v3 + *(result + 16));
      v2 = (v2 + *(result + 40));
      if (++v1 >= *(result + 48))
      {
        return result;
      }
    }

    v7 = 0;
    v8 = v6 + 8;
    v9 = v3;
    v10 = v66;
    do
    {
      v11 = *v9;
      v12 = v9[1];
      v9 += 2;
      v13 = veorq_s8(v11, v4);
      v14 = veorq_s8(v12, v4);
      v15 = vzip1q_s16(v13, v14);
      v16 = vzip2q_s16(v13, v14);
      v17 = vzip1q_s16(v15, v16);
      v18 = vzip2q_s16(v15, v16);
      *&v64[v7] = v17.i64[0];
      *&v62[v7] = v18.i64[0];
      *v10 = vzip2q_s16(v17, v18);
      v10 += 2;
      v8 -= 8;
      v7 += 8;
    }

    while (v8 > 0xF);
    v6 -= v7;
    v19 = &v64[v7];
    v20 = &v62[v7];
    if (v6 < 2)
    {
      goto LABEL_12;
    }

LABEL_10:
    v21 = v6 + 2;
    do
    {
      v19->i16[0] = v9->i16[0] ^ 0x8000;
      v19 = (v19 + 2);
      *v10 = v9->i16[1] ^ 0x8000;
      v20->i16[0] = v9->i16[2] ^ 0x8000;
      v20 = (v20 + 2);
      *(v10 + 1) = v9->i16[3] ^ 0x8000;
      v10 = (v10 + 4);
      v21 -= 2;
      v9 = (v9 + 8);
    }

    while (v21 > 3);
    goto LABEL_12;
  }

  return result;
}

uint64_t scale_horizontal_2to3_4444_8b()
{
  result = MEMORY[0x28223BE20]();
  v80[241].i64[1] = *MEMORY[0x277D85DE8];
  if (*(result + 48) >= 1)
  {
    v1 = 0;
    v2 = *(result + 24);
    v3.i64[0] = 0xFF000000FFLL;
    v3.i64[1] = 0xFF000000FFLL;
    v4 = *result;
    v5.i64[0] = 0x400000004000;
    v5.i64[1] = 0x400000004000;
    while (1)
    {
      v6 = *(result + 8);
      v79[0] = vdupq_n_s16(*v4);
      v77[0] = vdupq_n_s16(v4[1]);
      v75[0] = vdupq_n_s16(v4[2]);
      v73 = vdupq_n_s16(v4[3]);
      if (v6 >= 8)
      {
        break;
      }

      v15 = v74;
      v14 = v76;
      v13 = v78;
      v12 = v80;
      v8 = v4;
      if (v6 >= 1)
      {
        goto LABEL_10;
      }

LABEL_12:
      v17 = &v12[-1].i16[7];
      v18 = vld1q_dup_s16(v17);
      v19 = &v13[-1].i16[7];
      v20 = vld1q_dup_s16(v19);
      *v12 = v18;
      *v13 = v20;
      v21 = &v14[-1].i16[7];
      v22 = vld1q_dup_s16(v21);
      *v14 = v22;
      v23 = &v15[-1].i16[7];
      v24 = vld1q_dup_s16(v23);
      *v15 = v24;
      v25 = *(result + 8);
      if (v25 > 1)
      {
        v26 = v25 + 2;
        v27 = v80;
        v28 = v2;
        do
        {
          v29 = v27[-1];
          v30 = *v27;
          *v28 = *v27;
          v31 = vmull_s16(0xFF7F000000000000, *v29.i8);
          v29.i64[0] = vextq_s8(v29, v29, 8uLL).u64[0];
          v32 = vextq_s8(v30, v30, 8uLL).u64[0];
          v33 = vaddq_s32(vpaddq_s32(vmull_s16(0xB12E805696033B1, *v30.i8), vmull_s16(0xFF2C026EFA90, v32)), vpaddq_s32(v31, vmull_s16(0xEDE108C2FBC601C6, *v29.i8)));
          v34 = vaddq_s32(vextq_s8(v33, v33, 8uLL), v33);
          v28[4] = vqmovun_s16(vshrq_n_s32(vaddq_s32(vaddq_s32(v34, v5), vrev64q_s32(v34)), 0xFuLL)).u8[0];
          v35 = vaddq_s32(vpaddq_s32(vmull_s16(0xEDE133B16960E805, *v30.i8), vmull_s16(0xFF7F01C6FBC608C2, v32)), vpaddq_s32(0, vmull_s16(0xB12FA90026EFF2CLL, *v29.i8)));
          v36 = vaddq_s32(vextq_s8(v35, v35, 8uLL), v35);
          v28[8] = vqmovun_s16(vshrq_n_s32(vaddq_s32(vaddq_s32(v36, v5), vrev64q_s32(v36)), 0xFuLL)).u8[0];
          v27 = (v27 + 4);
          v28 += 12;
          v26 -= 2;
        }

        while (v26 > 3);
        v37 = *(result + 8);
        if (v37 >= 2)
        {
          v38 = v2 + 1;
          v39 = v37 + 2;
          v40 = v78;
          do
          {
            v41 = v40[-1];
            v42 = *v40;
            *v38 = *v40;
            v43 = vmull_s16(0xFF7F000000000000, *v41.i8);
            v41.i64[0] = vextq_s8(v41, v41, 8uLL).u64[0];
            v44 = vextq_s8(v42, v42, 8uLL).u64[0];
            v45 = vaddq_s32(vpaddq_s32(vmull_s16(0xB12E805696033B1, *v42.i8), vmull_s16(0xFF2C026EFA90, v44)), vpaddq_s32(v43, vmull_s16(0xEDE108C2FBC601C6, *v41.i8)));
            v46 = vaddq_s32(vextq_s8(v45, v45, 8uLL), v45);
            v38[4] = vqmovun_s16(vshrq_n_s32(vaddq_s32(vaddq_s32(v46, v5), vrev64q_s32(v46)), 0xFuLL)).u8[0];
            v47 = vaddq_s32(vpaddq_s32(vmull_s16(0xEDE133B16960E805, *v42.i8), vmull_s16(0xFF7F01C6FBC608C2, v44)), vpaddq_s32(0, vmull_s16(0xB12FA90026EFF2CLL, *v41.i8)));
            v48 = vaddq_s32(vextq_s8(v47, v47, 8uLL), v47);
            v38[8] = vqmovun_s16(vshrq_n_s32(vaddq_s32(vaddq_s32(v48, v5), vrev64q_s32(v48)), 0xFuLL)).u8[0];
            v40 = (v40 + 4);
            v38 += 12;
            v39 -= 2;
          }

          while (v39 > 3);
          v49 = *(result + 8);
          if (v49 >= 2)
          {
            v50 = v2 + 2;
            v51 = v49 + 2;
            v52 = v76;
            do
            {
              v53 = v52[-1];
              v54 = *v52;
              *v50 = *v52;
              v55 = vmull_s16(0xFF7F000000000000, *v53.i8);
              v53.i64[0] = vextq_s8(v53, v53, 8uLL).u64[0];
              v56 = vextq_s8(v54, v54, 8uLL).u64[0];
              v57 = vaddq_s32(vpaddq_s32(vmull_s16(0xB12E805696033B1, *v54.i8), vmull_s16(0xFF2C026EFA90, v56)), vpaddq_s32(v55, vmull_s16(0xEDE108C2FBC601C6, *v53.i8)));
              v58 = vaddq_s32(vextq_s8(v57, v57, 8uLL), v57);
              v50[4] = vqmovun_s16(vshrq_n_s32(vaddq_s32(vaddq_s32(v58, v5), vrev64q_s32(v58)), 0xFuLL)).u8[0];
              v59 = vaddq_s32(vpaddq_s32(vmull_s16(0xEDE133B16960E805, *v54.i8), vmull_s16(0xFF7F01C6FBC608C2, v56)), vpaddq_s32(0, vmull_s16(0xB12FA90026EFF2CLL, *v53.i8)));
              v60 = vaddq_s32(vextq_s8(v59, v59, 8uLL), v59);
              v50[8] = vqmovun_s16(vshrq_n_s32(vaddq_s32(vaddq_s32(v60, v5), vrev64q_s32(v60)), 0xFuLL)).u8[0];
              v52 = (v52 + 4);
              v50 += 12;
              v51 -= 2;
            }

            while (v51 > 3);
            v61 = *(result + 8);
            if (v61 >= 2)
            {
              v62 = v2 + 3;
              v63 = v61 + 2;
              v64 = v74;
              do
              {
                v65 = v64[-1];
                v66 = *v64;
                *v62 = *v64;
                v67 = vmull_s16(0xFF7F000000000000, *v65.i8);
                v65.i64[0] = vextq_s8(v65, v65, 8uLL).u64[0];
                v68 = vextq_s8(v66, v66, 8uLL).u64[0];
                v69 = vaddq_s32(vpaddq_s32(vmull_s16(0xB12E805696033B1, *v66.i8), vmull_s16(0xFF2C026EFA90, v68)), vpaddq_s32(v67, vmull_s16(0xEDE108C2FBC601C6, *v65.i8)));
                v70 = vaddq_s32(vextq_s8(v69, v69, 8uLL), v69);
                v62[4] = vqmovun_s16(vshrq_n_s32(vaddq_s32(vaddq_s32(v70, v5), vrev64q_s32(v70)), 0xFuLL)).u8[0];
                v71 = vaddq_s32(vpaddq_s32(vmull_s16(0xEDE133B16960E805, *v66.i8), vmull_s16(0xFF7F01C6FBC608C2, v68)), vpaddq_s32(0, vmull_s16(0xB12FA90026EFF2CLL, *v65.i8)));
                v72 = vaddq_s32(vextq_s8(v71, v71, 8uLL), v71);
                v62[8] = vqmovun_s16(vshrq_n_s32(vaddq_s32(vaddq_s32(v72, v5), vrev64q_s32(v72)), 0xFuLL)).u8[0];
                v64 = (v64 + 4);
                v62 += 12;
                v63 -= 2;
              }

              while (v63 > 3);
            }
          }
        }
      }

      v4 += *(result + 16);
      v2 += *(result + 40);
      if (++v1 >= *(result + 48))
      {
        return result;
      }
    }

    v7 = 1;
    v8 = v4;
    do
    {
      v9 = v6;
      v10 = *v8;
      v11 = v8[1];
      v8 += 2;
      v79[v7] = vqmovn_high_s32(vqmovn_s32(vandq_s8(v10, v3)), vandq_s8(v11, v3));
      v77[v7] = vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v10, 8uLL), v3)), vandq_s8(vshrq_n_u32(v11, 8uLL), v3));
      v75[v7] = vqmovn_high_s32(vqmovn_s32((*&vshrq_n_u32(v10, 0x10uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL))), (*&vshrq_n_u32(v11, 0x10uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)));
      *(&v73 + v7 * 16) = vqmovn_high_s32(vqmovn_s32(vshrq_n_u32(v10, 0x18uLL)), vshrq_n_u32(v11, 0x18uLL));
      v6 -= 8;
      ++v7;
    }

    while (v9 > 0xF);
    v12 = &v79[v7];
    v13 = &v77[v7];
    v14 = &v75[v7];
    v15 = (&v73 + v7 * 16);
    if (v6 < 1)
    {
      goto LABEL_12;
    }

LABEL_10:
    v16 = v6 + 1;
    do
    {
      v12->i16[0] = v8->u8[0];
      v12 = (v12 + 2);
      v13->i16[0] = v8->u8[1];
      v13 = (v13 + 2);
      v14->i16[0] = v8->u8[2];
      v14 = (v14 + 2);
      v15->i16[0] = v8->u8[3];
      v15 = (v15 + 2);
      --v16;
      v8 = (v8 + 4);
    }

    while (v16 > 1);
    goto LABEL_12;
  }

  return result;
}

uint64_t scale_horizontal_2to3_4444_16bBE()
{
  result = MEMORY[0x28223BE20]();
  v88[241].i64[1] = *MEMORY[0x277D85DE8];
  if (*(result + 48) >= 1)
  {
    v1 = 0;
    v2 = *(result + 24);
    v3 = *result;
    v4.i64[0] = 0x80008000800080;
    v4.i64[1] = 0x80008000800080;
    v5.i64[0] = 0x400000004000;
    v5.i64[1] = 0x400000004000;
    v6 = *(result + 8);
    while (1)
    {
      v87[0] = vdupq_n_s16(bswap32(*v3 ^ 0x80) >> 16);
      v85[0] = vdupq_n_s16(bswap32(v3[1] ^ 0x80) >> 16);
      v83[0] = vdupq_n_s16(bswap32(v3[2] ^ 0x80) >> 16);
      v81 = vdupq_n_s16(bswap32(v3[3] ^ 0x80) >> 16);
      if (v6 >= 8)
      {
        break;
      }

      v27 = v82;
      v26 = v84;
      v25 = v86;
      v24 = v88;
      v8 = v3;
      if (v6 >= 1)
      {
        goto LABEL_10;
      }

LABEL_12:
      v29 = &v24[-1].i16[7];
      v30 = vld1q_dup_s16(v29);
      v31 = &v25[-1].i16[7];
      v32 = vld1q_dup_s16(v31);
      *v24 = v30;
      *v25 = v32;
      v33 = &v26[-1].i16[7];
      v34 = vld1q_dup_s16(v33);
      *v26 = v34;
      v35 = &v27[-1].i16[7];
      v36 = vld1q_dup_s16(v35);
      *v27 = v36;
      v6 = *(result + 8);
      if (v6 > 1)
      {
        v37 = v6 + 2;
        v38 = v6 + 2;
        v39 = v88;
        v40 = v2;
        do
        {
          v41 = v39[-1];
          v42 = *v39;
          v43 = vmull_s16(0xFF7F000000000000, *v41.i8);
          v41.i64[0] = vextq_s8(v41, v41, 8uLL).u64[0];
          *v40 = bswap32(v39->u16[0] ^ 0x8000) >> 16;
          v44 = vextq_s8(v42, v42, 8uLL).u64[0];
          v45 = vaddq_s32(vpaddq_s32(vmull_s16(0xB12E805696033B1, *v42.i8), vmull_s16(0xFF2C026EFA90, v44)), vpaddq_s32(v43, vmull_s16(0xEDE108C2FBC601C6, *v41.i8)));
          v46 = vaddq_s32(vextq_s8(v45, v45, 8uLL), v45);
          v47 = vaddq_s32(vpaddq_s32(vmull_s16(0xEDE133B16960E805, *v42.i8), vmull_s16(0xFF7F01C6FBC608C2, v44)), vpaddq_s32(0, vmull_s16(0xB12FA90026EFF2CLL, *v41.i8)));
          v48 = vaddq_s32(vextq_s8(v47, v47, 8uLL), v47);
          v40[4] = bswap32(vqmovn_s32(vshrq_n_s32(vaddq_s32(vaddq_s32(v46, v5), vrev64q_s32(v46)), 0xFuLL)).u16[0] ^ 0x8000) >> 16;
          v40[8] = bswap32(vqmovn_s32(vshrq_n_s32(vaddq_s32(vaddq_s32(v48, v5), vrev64q_s32(v48)), 0xFuLL)).u16[0] ^ 0x8000) >> 16;
          v39 = (v39 + 4);
          v40 += 12;
          v38 -= 2;
        }

        while (v38 > 3);
        v49 = v2 + 1;
        v50 = v6 + 2;
        v51 = v86;
        do
        {
          v52 = v51[-1];
          v53 = *v51;
          v54 = vmull_s16(0xFF7F000000000000, *v52.i8);
          v52.i64[0] = vextq_s8(v52, v52, 8uLL).u64[0];
          *v49 = bswap32(v51->u16[0] ^ 0x8000) >> 16;
          v55 = vextq_s8(v53, v53, 8uLL).u64[0];
          v56 = vaddq_s32(vpaddq_s32(vmull_s16(0xB12E805696033B1, *v53.i8), vmull_s16(0xFF2C026EFA90, v55)), vpaddq_s32(v54, vmull_s16(0xEDE108C2FBC601C6, *v52.i8)));
          v57 = vaddq_s32(vextq_s8(v56, v56, 8uLL), v56);
          v58 = vaddq_s32(vpaddq_s32(vmull_s16(0xEDE133B16960E805, *v53.i8), vmull_s16(0xFF7F01C6FBC608C2, v55)), vpaddq_s32(0, vmull_s16(0xB12FA90026EFF2CLL, *v52.i8)));
          v59 = vaddq_s32(vextq_s8(v58, v58, 8uLL), v58);
          v49[4] = bswap32(vqmovn_s32(vshrq_n_s32(vaddq_s32(vaddq_s32(v57, v5), vrev64q_s32(v57)), 0xFuLL)).u16[0] ^ 0x8000) >> 16;
          v49[8] = bswap32(vqmovn_s32(vshrq_n_s32(vaddq_s32(vaddq_s32(v59, v5), vrev64q_s32(v59)), 0xFuLL)).u16[0] ^ 0x8000) >> 16;
          v51 = (v51 + 4);
          v49 += 12;
          v50 -= 2;
        }

        while (v50 > 3);
        v60 = v2 + 2;
        v61 = v6 + 2;
        v62 = v84;
        do
        {
          v63 = v62[-1];
          v64 = *v62;
          v65 = vmull_s16(0xFF7F000000000000, *v63.i8);
          v63.i64[0] = vextq_s8(v63, v63, 8uLL).u64[0];
          *v60 = bswap32(v62->u16[0] ^ 0x8000) >> 16;
          v66 = vextq_s8(v64, v64, 8uLL).u64[0];
          v67 = vaddq_s32(vpaddq_s32(vmull_s16(0xB12E805696033B1, *v64.i8), vmull_s16(0xFF2C026EFA90, v66)), vpaddq_s32(v65, vmull_s16(0xEDE108C2FBC601C6, *v63.i8)));
          v68 = vaddq_s32(vextq_s8(v67, v67, 8uLL), v67);
          v69 = vaddq_s32(vpaddq_s32(vmull_s16(0xEDE133B16960E805, *v64.i8), vmull_s16(0xFF7F01C6FBC608C2, v66)), vpaddq_s32(0, vmull_s16(0xB12FA90026EFF2CLL, *v63.i8)));
          v70 = vaddq_s32(vextq_s8(v69, v69, 8uLL), v69);
          v60[4] = bswap32(vqmovn_s32(vshrq_n_s32(vaddq_s32(vaddq_s32(v68, v5), vrev64q_s32(v68)), 0xFuLL)).u16[0] ^ 0x8000) >> 16;
          v60[8] = bswap32(vqmovn_s32(vshrq_n_s32(vaddq_s32(vaddq_s32(v70, v5), vrev64q_s32(v70)), 0xFuLL)).u16[0] ^ 0x8000) >> 16;
          v62 = (v62 + 4);
          v60 += 12;
          v61 -= 2;
        }

        while (v61 > 3);
        v71 = v2 + 3;
        v72 = v82;
        do
        {
          v73 = v72[-1];
          v74 = *v72;
          v75 = vmull_s16(0xFF7F000000000000, *v73.i8);
          v73.i64[0] = vextq_s8(v73, v73, 8uLL).u64[0];
          *v71 = bswap32(v72->u16[0] ^ 0x8000) >> 16;
          v76 = vextq_s8(v74, v74, 8uLL).u64[0];
          v77 = vaddq_s32(vpaddq_s32(vmull_s16(0xB12E805696033B1, *v74.i8), vmull_s16(0xFF2C026EFA90, v76)), vpaddq_s32(v75, vmull_s16(0xEDE108C2FBC601C6, *v73.i8)));
          v78 = vaddq_s32(vextq_s8(v77, v77, 8uLL), v77);
          v79 = vaddq_s32(vpaddq_s32(vmull_s16(0xEDE133B16960E805, *v74.i8), vmull_s16(0xFF7F01C6FBC608C2, v76)), vpaddq_s32(0, vmull_s16(0xB12FA90026EFF2CLL, *v73.i8)));
          v80 = vaddq_s32(vextq_s8(v79, v79, 8uLL), v79);
          v71[4] = bswap32(vqmovn_s32(vshrq_n_s32(vaddq_s32(vaddq_s32(v78, v5), vrev64q_s32(v78)), 0xFuLL)).u16[0] ^ 0x8000) >> 16;
          v71[8] = bswap32(vqmovn_s32(vshrq_n_s32(vaddq_s32(vaddq_s32(v80, v5), vrev64q_s32(v80)), 0xFuLL)).u16[0] ^ 0x8000) >> 16;
          v72 = (v72 + 4);
          v71 += 12;
          v37 -= 2;
        }

        while (v37 > 3);
      }

      v3 = (v3 + *(result + 16));
      v2 = (v2 + *(result + 40));
      if (++v1 >= *(result + 48))
      {
        return result;
      }
    }

    v7 = 1;
    v8 = v3;
    do
    {
      v9 = v6;
      v10 = vrev16q_s8(veorq_s8(*v8, v4));
      v11 = vrev16q_s8(veorq_s8(v8[1], v4));
      v12 = vrev16q_s8(veorq_s8(v8[2], v4));
      v13 = vrev16q_s8(veorq_s8(v8[3], v4));
      v14 = vzip1q_s16(v10, v11);
      v15 = vzip2q_s16(v10, v11);
      v16 = vzip1q_s16(v12, v13);
      v17 = vzip2q_s16(v12, v13);
      v18 = vzip1q_s16(v14, v15);
      v19 = vzip2q_s16(v14, v15);
      v20 = vzip1q_s16(v16, v17);
      v21 = vzip2q_s16(v16, v17);
      v22 = vzip2q_s64(v18, v20);
      v18.i64[1] = v20.i64[0];
      v87[v7] = v18;
      v85[v7] = v22;
      v23 = vzip2q_s64(v19, v21);
      v19.i64[1] = v21.i64[0];
      v83[v7] = v19;
      *(&v81 + v7 * 16) = v23;
      v8 += 4;
      v6 -= 8;
      ++v7;
    }

    while (v9 > 0xF);
    v24 = &v87[v7];
    v25 = &v85[v7];
    v26 = &v83[v7];
    v27 = (&v81 + v7 * 16);
    if (v6 < 1)
    {
      goto LABEL_12;
    }

LABEL_10:
    v28 = v6 + 1;
    do
    {
      v24->i16[0] = bswap32(v8->u16[0] ^ 0x80) >> 16;
      v24 = (v24 + 2);
      v25->i16[0] = bswap32(v8->u16[1] ^ 0x80) >> 16;
      v25 = (v25 + 2);
      v26->i16[0] = bswap32(v8->u16[2] ^ 0x80) >> 16;
      v26 = (v26 + 2);
      v27->i16[0] = bswap32(v8->u16[3] ^ 0x80) >> 16;
      v27 = (v27 + 2);
      --v28;
      v8 = (v8 + 8);
    }

    while (v28 > 1);
    goto LABEL_12;
  }

  return result;
}

uint64_t scale_horizontal_2to3_4444_16bLE()
{
  result = MEMORY[0x28223BE20]();
  v88[241].i64[1] = *MEMORY[0x277D85DE8];
  if (*(result + 48) >= 1)
  {
    v1 = 0;
    v2 = *(result + 24);
    v3 = *result;
    v4.i64[0] = 0x8000800080008000;
    v4.i64[1] = 0x8000800080008000;
    v5.i64[0] = 0x400000004000;
    v5.i64[1] = 0x400000004000;
    v6 = *(result + 8);
    while (1)
    {
      v87[0] = vdupq_n_s16(*v3 ^ 0xFFFF8000);
      v85[0] = vdupq_n_s16(v3[1] ^ 0xFFFF8000);
      v83[0] = vdupq_n_s16(v3[2] ^ 0xFFFF8000);
      v81 = vdupq_n_s16(v3[3] ^ 0xFFFF8000);
      if (v6 >= 8)
      {
        break;
      }

      v27 = v82;
      v26 = v84;
      v25 = v86;
      v24 = v88;
      v8 = v3;
      if (v6 >= 1)
      {
        goto LABEL_10;
      }

LABEL_12:
      v29 = &v24[-1].i16[7];
      v30 = vld1q_dup_s16(v29);
      v31 = &v25[-1].i16[7];
      v32 = vld1q_dup_s16(v31);
      *v24 = v30;
      *v25 = v32;
      v33 = &v26[-1].i16[7];
      v34 = vld1q_dup_s16(v33);
      *v26 = v34;
      v35 = &v27[-1].i16[7];
      v36 = vld1q_dup_s16(v35);
      *v27 = v36;
      v6 = *(result + 8);
      if (v6 > 1)
      {
        v37 = v6 + 2;
        v38 = v6 + 2;
        v39 = v88;
        v40 = v2;
        do
        {
          v41 = v39[-1];
          v42 = *v39;
          *v40 = *v39 ^ 0x8000;
          v43 = vmull_s16(0xFF7F000000000000, *v41.i8);
          v41.i64[0] = vextq_s8(v41, v41, 8uLL).u64[0];
          v44 = vextq_s8(v42, v42, 8uLL).u64[0];
          v45 = vaddq_s32(vpaddq_s32(vmull_s16(0xB12E805696033B1, *v42.i8), vmull_s16(0xFF2C026EFA90, v44)), vpaddq_s32(v43, vmull_s16(0xEDE108C2FBC601C6, *v41.i8)));
          v46 = vaddq_s32(vextq_s8(v45, v45, 8uLL), v45);
          v47 = vaddq_s32(vpaddq_s32(vmull_s16(0xEDE133B16960E805, *v42.i8), vmull_s16(0xFF7F01C6FBC608C2, v44)), vpaddq_s32(0, vmull_s16(0xB12FA90026EFF2CLL, *v41.i8)));
          v48 = vaddq_s32(vextq_s8(v47, v47, 8uLL), v47);
          v40[4] = vqmovn_s32(vshrq_n_s32(vaddq_s32(vaddq_s32(v46, v5), vrev64q_s32(v46)), 0xFuLL)).u16[0] ^ 0x8000;
          v40[8] = vqmovn_s32(vshrq_n_s32(vaddq_s32(vaddq_s32(v48, v5), vrev64q_s32(v48)), 0xFuLL)).u16[0] ^ 0x8000;
          v39 = (v39 + 4);
          v40 += 12;
          v38 -= 2;
        }

        while (v38 > 3);
        v49 = v2 + 1;
        v50 = v6 + 2;
        v51 = v86;
        do
        {
          v52 = v51[-1];
          v53 = *v51;
          *v49 = *v51 ^ 0x8000;
          v54 = vmull_s16(0xFF7F000000000000, *v52.i8);
          v52.i64[0] = vextq_s8(v52, v52, 8uLL).u64[0];
          v55 = vextq_s8(v53, v53, 8uLL).u64[0];
          v56 = vaddq_s32(vpaddq_s32(vmull_s16(0xB12E805696033B1, *v53.i8), vmull_s16(0xFF2C026EFA90, v55)), vpaddq_s32(v54, vmull_s16(0xEDE108C2FBC601C6, *v52.i8)));
          v57 = vaddq_s32(vextq_s8(v56, v56, 8uLL), v56);
          v58 = vaddq_s32(vpaddq_s32(vmull_s16(0xEDE133B16960E805, *v53.i8), vmull_s16(0xFF7F01C6FBC608C2, v55)), vpaddq_s32(0, vmull_s16(0xB12FA90026EFF2CLL, *v52.i8)));
          v59 = vaddq_s32(vextq_s8(v58, v58, 8uLL), v58);
          v49[4] = vqmovn_s32(vshrq_n_s32(vaddq_s32(vaddq_s32(v57, v5), vrev64q_s32(v57)), 0xFuLL)).u16[0] ^ 0x8000;
          v49[8] = vqmovn_s32(vshrq_n_s32(vaddq_s32(vaddq_s32(v59, v5), vrev64q_s32(v59)), 0xFuLL)).u16[0] ^ 0x8000;
          v51 = (v51 + 4);
          v49 += 12;
          v50 -= 2;
        }

        while (v50 > 3);
        v60 = v2 + 2;
        v61 = v6 + 2;
        v62 = v84;
        do
        {
          v63 = v62[-1];
          v64 = *v62;
          *v60 = *v62 ^ 0x8000;
          v65 = vmull_s16(0xFF7F000000000000, *v63.i8);
          v63.i64[0] = vextq_s8(v63, v63, 8uLL).u64[0];
          v66 = vextq_s8(v64, v64, 8uLL).u64[0];
          v67 = vaddq_s32(vpaddq_s32(vmull_s16(0xB12E805696033B1, *v64.i8), vmull_s16(0xFF2C026EFA90, v66)), vpaddq_s32(v65, vmull_s16(0xEDE108C2FBC601C6, *v63.i8)));
          v68 = vaddq_s32(vextq_s8(v67, v67, 8uLL), v67);
          v69 = vaddq_s32(vpaddq_s32(vmull_s16(0xEDE133B16960E805, *v64.i8), vmull_s16(0xFF7F01C6FBC608C2, v66)), vpaddq_s32(0, vmull_s16(0xB12FA90026EFF2CLL, *v63.i8)));
          v70 = vaddq_s32(vextq_s8(v69, v69, 8uLL), v69);
          v60[4] = vqmovn_s32(vshrq_n_s32(vaddq_s32(vaddq_s32(v68, v5), vrev64q_s32(v68)), 0xFuLL)).u16[0] ^ 0x8000;
          v60[8] = vqmovn_s32(vshrq_n_s32(vaddq_s32(vaddq_s32(v70, v5), vrev64q_s32(v70)), 0xFuLL)).u16[0] ^ 0x8000;
          v62 = (v62 + 4);
          v60 += 12;
          v61 -= 2;
        }

        while (v61 > 3);
        v71 = v2 + 3;
        v72 = v82;
        do
        {
          v73 = v72[-1];
          v74 = *v72;
          *v71 = *v72 ^ 0x8000;
          v75 = vmull_s16(0xFF7F000000000000, *v73.i8);
          v73.i64[0] = vextq_s8(v73, v73, 8uLL).u64[0];
          v76 = vextq_s8(v74, v74, 8uLL).u64[0];
          v77 = vaddq_s32(vpaddq_s32(vmull_s16(0xB12E805696033B1, *v74.i8), vmull_s16(0xFF2C026EFA90, v76)), vpaddq_s32(v75, vmull_s16(0xEDE108C2FBC601C6, *v73.i8)));
          v78 = vaddq_s32(vextq_s8(v77, v77, 8uLL), v77);
          v79 = vaddq_s32(vpaddq_s32(vmull_s16(0xEDE133B16960E805, *v74.i8), vmull_s16(0xFF7F01C6FBC608C2, v76)), vpaddq_s32(0, vmull_s16(0xB12FA90026EFF2CLL, *v73.i8)));
          v80 = vaddq_s32(vextq_s8(v79, v79, 8uLL), v79);
          v71[4] = vqmovn_s32(vshrq_n_s32(vaddq_s32(vaddq_s32(v78, v5), vrev64q_s32(v78)), 0xFuLL)).u16[0] ^ 0x8000;
          v71[8] = vqmovn_s32(vshrq_n_s32(vaddq_s32(vaddq_s32(v80, v5), vrev64q_s32(v80)), 0xFuLL)).u16[0] ^ 0x8000;
          v72 = (v72 + 4);
          v71 += 12;
          v37 -= 2;
        }

        while (v37 > 3);
      }

      v3 = (v3 + *(result + 16));
      v2 = (v2 + *(result + 40));
      if (++v1 >= *(result + 48))
      {
        return result;
      }
    }

    v7 = 1;
    v8 = v3;
    do
    {
      v9 = v6;
      v10 = veorq_s8(*v8, v4);
      v11 = veorq_s8(v8[1], v4);
      v12 = veorq_s8(v8[2], v4);
      v13 = veorq_s8(v8[3], v4);
      v14 = vzip1q_s16(v10, v11);
      v15 = vzip2q_s16(v10, v11);
      v16 = vzip1q_s16(v12, v13);
      v17 = vzip2q_s16(v12, v13);
      v18 = vzip1q_s16(v14, v15);
      v19 = vzip2q_s16(v14, v15);
      v20 = vzip1q_s16(v16, v17);
      v21 = vzip2q_s16(v16, v17);
      v22 = vzip2q_s64(v18, v20);
      v18.i64[1] = v20.i64[0];
      v87[v7] = v18;
      v85[v7] = v22;
      v23 = vzip2q_s64(v19, v21);
      v19.i64[1] = v21.i64[0];
      v83[v7] = v19;
      *(&v81 + v7 * 16) = v23;
      v8 += 4;
      v6 -= 8;
      ++v7;
    }

    while (v9 > 0xF);
    v24 = &v87[v7];
    v25 = &v85[v7];
    v26 = &v83[v7];
    v27 = (&v81 + v7 * 16);
    if (v6 < 1)
    {
      goto LABEL_12;
    }

LABEL_10:
    v28 = v6 + 1;
    do
    {
      v24->i16[0] = v8->i16[0] ^ 0x8000;
      v24 = (v24 + 2);
      v25->i16[0] = v8->i16[1] ^ 0x8000;
      v25 = (v25 + 2);
      v26->i16[0] = v8->i16[2] ^ 0x8000;
      v26 = (v26 + 2);
      v27->i16[0] = v8->i16[3] ^ 0x8000;
      v27 = (v27 + 2);
      --v28;
      v8 = (v8 + 8);
    }

    while (v28 > 1);
    goto LABEL_12;
  }

  return result;
}

BOOL SliceHeader::parse(int *a1, Bytestream *a2)
{
  v4 = 0;
  v5 = (a2 + 8);
  v6 = (a2 + 8);
  do
  {
    v7 = v6[1];
    v6 = v6[2];
    v4 += v7;
  }

  while (v6);
  v8 = *(a2 + 2);
  if (v8)
  {
    v9 = *(a2 + 1);
    v10 = *v9;
    v11 = v8 - 1;
    *(a2 + 1) = v9 + 1;
    *(a2 + 2) = v11;
    *a1 = v10 >> 3;
    if (v11)
    {
      goto LABEL_5;
    }

LABEL_11:
    v25 = Bytestream::uSlow(a2, 1);
    v26 = *(a2 + 2);
    a1[1] = v25;
    v15 = v26 >= 2;
    v16 = v26 - 2;
    if (!v15)
    {
      goto LABEL_12;
    }

LABEL_7:
    v17 = *(a2 + 1);
    v18 = bswap32(*v17);
    *(a2 + 1) = v17 + 1;
    *(a2 + 2) = v16;
    a1[2] = HIWORD(v18);
    v15 = v16 >= 2;
    v19 = v16 - 2;
    if (!v15)
    {
      goto LABEL_8;
    }

LABEL_14:
    v29 = *(a2 + 1);
    v30 = *v29;
    *(a2 + 1) = v29 + 1;
    *(a2 + 2) = v19;
    a1[3] = bswap32(v30) >> 16;
    v15 = v19 >= 2;
    v22 = v19 - 2;
    if (!v15)
    {
      goto LABEL_9;
    }

LABEL_16:
    v31 = *(a2 + 1);
    v23 = bswap32(*v31) >> 16;
    *(a2 + 1) = v31 + 1;
    *(a2 + 2) = v22;
    goto LABEL_17;
  }

  v24 = Bytestream::uSlow(a2, 1);
  v11 = *(a2 + 2);
  *a1 = v24 >> 3;
  if (!v11)
  {
    goto LABEL_11;
  }

LABEL_5:
  v12 = *(a2 + 1);
  v13 = *v12;
  v14 = v11 - 1;
  *(a2 + 1) = v12 + 1;
  *(a2 + 2) = v14;
  a1[1] = v13;
  v15 = v14 >= 2;
  v16 = v14 - 2;
  if (v15)
  {
    goto LABEL_7;
  }

LABEL_12:
  v27 = Bytestream::uSlow(a2, 2);
  v28 = *(a2 + 2);
  a1[2] = v27;
  v15 = v28 >= 2;
  v19 = v28 - 2;
  if (v15)
  {
    goto LABEL_14;
  }

LABEL_8:
  v20 = Bytestream::uSlow(a2, 2);
  v21 = *(a2 + 2);
  a1[3] = v20;
  v15 = v21 >= 2;
  v22 = v21 - 2;
  if (v15)
  {
    goto LABEL_16;
  }

LABEL_9:
  v23 = Bytestream::uSlow(a2, 2);
LABEL_17:
  v32 = 0;
  a1[4] = v23;
  do
  {
    v33 = v5[1];
    v5 = v5[2];
    v32 += v33;
  }

  while (v5);
  if ((*a2 & 1) != 0 || v4 - v32 > *a1 || (a1[1] - 1) > 0xFE || !a1[2])
  {
    return 0;
  }

  if (a1[3])
  {
    v34 = v23 == 0;
  }

  else
  {
    v34 = 1;
  }

  return !v34;
}

uint64_t PRRSliceDecoder::decode(int16x8_t *a1, _OWORD *a2)
{
  v116 = a1;
  v127 = *MEMORY[0x277D85DE8];
  v2 = a2[1];
  v123 = *a2;
  v124 = v2;
  v114 = a2;
  v3 = a2[1];
  v117[0] = *a2;
  v117[1] = v3;
  result = SliceHeader::parse(&v118, v117);
  v5 = v114;
  if (!result)
  {
    return result;
  }

  v6 = v120;
  v7 = v121;
  v8 = v122;
  v9 = v120 + v118 + v121 + v122;
  v10 = v114[8];
  if (v9 >= v10)
  {
    return result;
  }

  if (v124 >= v118)
  {
    *(&v123 + 1) += v118;
    *&v124 = v124 - v118;
  }

  else
  {
    result = Bytestream::blockSkipOffsetAssign(&v123, v118);
    v5 = v114;
    v10 = v114[8];
  }

  v11 = *(v5 + 10);
  v113 = v11;
  v12 = *(v11 + 4);
  v13 = v5[9];
  v115 = 1 << v12;
  LODWORD(v112) = (1 << v12) << v13;
  MEMORY[0x28223BE20](result);
  v15 = (v105 - v14);
  bzero(v105 - v14, v16);
  LODWORD(v111) = *(v11 + 4);
  v105[1] = v105;
  if (v123)
  {
    v17 = 0;
  }

  else
  {
    if (v124 < v6)
    {
      operator new[]();
    }

    v17 = *(&v123 + 1);
    *(&v123 + 1) += v6;
    *&v124 = v124 - v6;
  }

  BitstreamReader::initialize(v117, v17, v6);
  v18 = v115;
  v19 = v113;
  scanned_coefficients_and_inverse_scanning(v117, v15, v114[9], v112, v111 + 2, *(v113 + 8), v20, v21, v22, v23, v24, v25);
  v26 = &v15[v18];
  if (*v19)
  {
    if (v124 >= v7)
    {
      *(&v123 + 1) += v7;
      *&v124 = v124 - v7;
    }

    else
    {
      Bytestream::blockSkipOffsetAssign(&v123, v7);
    }
  }

  else
  {
    if (v123)
    {
      v27 = 0;
    }

    else
    {
      if (v124 < v7)
      {
        operator new[]();
      }

      v27 = *(&v123 + 1);
      *(&v123 + 1) += v7;
      *&v124 = v124 - v7;
    }

    BitstreamReader::initialize(v117, v27, v7);
    scanned_coefficients_and_inverse_scanning(v117, &v15[v18], v114[9], v112, v111 + 2, *(v113 + 8), v28, v29, v30, v31, v32, v33);
  }

  if (v123)
  {
    v34 = 0;
  }

  else
  {
    if (v124 < v8)
    {
      operator new[]();
    }

    v34 = *(&v123 + 1);
    *(&v123 + 1) += v8;
    *&v124 = v124 - v8;
  }

  BitstreamReader::initialize(v117, v34, v8);
  v35 = &v26[v18];
  scanned_coefficients_and_inverse_scanning(v117, &v26[v18], v114[9], v112, v111 + 2, *(v113 + 8), v36, v37, v38, v39, v40, v41);
  v42 = v10 - v9;
  if (v123)
  {
    v43 = 0;
  }

  else
  {
    if (v124 < v42)
    {
      operator new[]();
    }

    v43 = *(&v123 + 1);
    *(&v123 + 1) += v42;
    *&v124 = v124 - v42;
  }

  BitstreamReader::initialize(v117, v43, v42);
  v110 = v12;
  v44 = v114;
  v45 = v113;
  v52 = scanned_coefficients_and_inverse_scanning(v117, &v35[v18], v114[9], v112, v111 + 2, *(v113 + 8), v46, v47, v48, v49, v50, v51);
  v53 = v119;
  if (v119 != v116[8].i32[0])
  {
    v54 = *(v45 + 32);
    v55 = vdupq_n_s16(v119);
    v56 = v116;
    *v116 = vmulq_s16(*v54, v55);
    v56[1] = vmulq_s16(v54[1], v55);
    v56[2] = vmulq_s16(v54[2], v55);
    v56[3] = vmulq_s16(v54[3], v55);
    v56[4] = vmulq_s16(v54[4], v55);
    v56[5] = vmulq_s16(v54[5], v55);
    v56[6] = vmulq_s16(v54[6], v55);
    v56[7] = vmulq_s16(v54[7], v55);
    v56[8].i32[0] = v53;
  }

  v57 = MEMORY[0x28223BE20](v52);
  v58 = v105 - ((v18 * 2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = MEMORY[0x28223BE20](v57);
  v111 = v105 - v60;
  v61 = MEMORY[0x28223BE20](v59);
  v63 = v105 - v62;
  MEMORY[0x28223BE20](v61);
  v65 = v105 - v64;
  v66 = *(v45 + 24);
  v67 = *v66;
  __dst = 0u;
  v126 = 0u;
  v112 = v67;
  if (v67 < 1)
  {
    v71 = 1 << v44[9];
    if (*v45)
    {
      v77 = 2 * (2 << v110);
      v112 = v66 + 12;
      v78 = v77 + 4 * v115;
      v79 = v77 + 2 * v115;
      do
      {
        v80 = (v113 + 16);
        (*(v113 + 16))(v15, v58, v116);
        (*v80)(&v15[v77 / 2], v63, v116);
        (*v80)((v15 + v79), v65, v116);
        result = (*(v66 + 3))(&__dst, v58, 0, v63, v65, *(v66 + 2), v114[10], v66 + 8, v112);
        v15 = (v15 + v78);
        --v71;
      }

      while (v71);
      return result;
    }

    v70 = *(v66 + 1);
    goto LABEL_55;
  }

  v68 = v67;
  memcpy(&__dst, v44 + 12, 8 * v67);
  v69 = v45;
  v70 = *(v66 + 1);
  v71 = 1 << v44[9];
  if (!*v69)
  {
    LODWORD(v67) = v68;
LABEL_55:
    v92 = 0;
    v110 = (v66 + 12);
    v108.i64[0] = v67 & 0x7FFFFFFC;
    v107 = &v126;
    v109 = vdupq_n_s64(v70);
    while (1)
    {
      v93 = v67 > 0;
      v94 = (v113 + 16);
      (*(v113 + 16))(v15, v58, v116);
      v95 = &v15[v115];
      (*v94)(v95, v111, v116);
      v96 = &v95[v115];
      (*v94)(v96, v63, v116);
      v97 = &v96[v115];
      (*v94)(v97, v65, v116);
      result = (*(v66 + 3))(&__dst, v58, v111, v63, v65, *(v66 + 2), v114[10], v66 + 8, v110);
      v67 = v112;
      v98 = v109;
      if (v93)
      {
        v99 = v108.i64[0];
        v100 = v107;
        if (v112 >= 4)
        {
          do
          {
            v102 = vaddq_s64(*v100, v98);
            v100[-1] = vaddq_s64(v100[-1], v98);
            *v100 = v102;
            v100 += 2;
            v99 -= 4;
          }

          while (v99);
          v101 = v108.i64[0];
          if (v108.i64[0] == v67)
          {
            goto LABEL_56;
          }
        }

        else
        {
          v101 = 0;
        }

        v103 = &__dst + v101;
        v104 = v67 - v101;
        do
        {
          *v103++ += v70;
          --v104;
        }

        while (v104);
      }

LABEL_56:
      v15 = &v97[v115];
      if (++v92 == v71)
      {
        return result;
      }
    }
  }

  v72 = (2 << v110);
  v111 = (v66 + 12);
  v73 = v68;
  if (v68 >= 4)
  {
    v110 = (2 << v110);
    v81 = 0;
    v82 = (v68 & 0x7FFFFFFC);
    v109.i64[0] = &v126;
    v107 = (&__dst + 2 * ((v68 >> 2) & 0x1FFFFFFF));
    v106 = v68 - v82;
    v108 = vdupq_n_s64(v70);
    do
    {
      v83 = (v113 + 16);
      (*(v113 + 16))(v15, v58, v116);
      v84 = &v15[v110];
      (*v83)(v84, v63, v116);
      v85 = &v84[v115];
      (*v83)(v85, v65, v116);
      result = (*(v66 + 3))(&__dst, v58, 0, v63, v65, *(v66 + 2), v114[10], v66 + 8, v111);
      v86 = v82;
      v87 = v109.i64[0];
      v88 = v108;
      do
      {
        v89 = vaddq_s64(*v87, v88);
        v87[-1] = vaddq_s64(v87[-1], v88);
        *v87 = v89;
        v87 += 2;
        --v86;
      }

      while (v86);
      if (v112 != v82)
      {
        v90 = v106;
        v91 = v107;
        do
        {
          *v91++ += v70;
          --v90;
        }

        while (v90);
      }

      v15 = &v85[v115];
      ++v81;
    }

    while (v81 != v71);
  }

  else
  {
    v74 = v72;
    v110 = 2 * v72 + 2 * v115;
    v115 = 2 * v72 + 4 * v115;
    do
    {
      v75 = v73 == 1;
      v76 = (v113 + 16);
      (*(v113 + 16))(v15, v58, v116);
      (*v76)(&v15[v74], v63, v116);
      (*v76)((v15 + v110), v65, v116);
      result = (*(v66 + 3))(&__dst, v58, 0, v63, v65, *(v66 + 2), v114[10], v66 + 8, v111);
      *&__dst = __dst + v70;
      v73 = v112;
      if (!v75)
      {
        *(&__dst + 1) += v70;
        if (v112 != 2)
        {
          *&v126 = v126 + v70;
        }
      }

      v15 = (v15 + v115);
      --v71;
    }

    while (v71);
  }

  return result;
}

uint64_t scanned_coefficients_and_inverse_scanning(uint64_t result, __int16 *a2, int a3, unsigned int a4, char a5, const unsigned __int8 *a6, double a7, double a8, double a9, double a10, double a11, uint32x4_t a12)
{
  v13 = *result;
  v14 = HIDWORD(*result);
  if (!v14)
  {
    return result;
  }

  v15 = unk_27A7183A2;
  v16 = word_27A7183A4[13];
  v325 = word_27A7183C0[15];
  v17 = word_27A7183E0[28];
  v19 = *(result + 16);
  v18 = *(result + 24);
  v20 = *(result + 8);
  v21 = __clz(v14);
  v22 = (v14 >> -(2 * v21 + 9)) + 10240;
  if (v21 <= 2)
  {
    v23 = v21 + 13;
  }

  else
  {
    v23 = 2 * v21 + 9;
  }

  if (v21 <= 2)
  {
    v22 = (v14 << (v21 + 1) >> 20) + (v21 << 12);
  }

  v24 = (v14 & 0x7FFFFFFF) >> 19;
  if (v13 >= 0)
  {
    v24 = v22;
  }

  else
  {
    v23 = 13;
  }

  v25 = (-(v24 & 1) ^ (((v24 & 1) + v24) >> 1)) + (v24 & 1);
  v26 = v13 << v23;
  v27 = v20 - v23;
  if (v20 - v23 < 0)
  {
    v87 = v23 - v20;
    if (v19 < v18)
    {
      v88 = *v19++;
      v89 = bswap32(v88);
      goto LABEL_71;
    }

    v90 = *(result + 32);
    if (v19 >= v90)
    {
      v89 = 0;
      goto LABEL_71;
    }

    v91 = v90 - v19;
    if ((v90 - v19) < 4)
    {
      v89 = 0;
      v92 = 32;
      v93 = *(result + 16);
      goto LABEL_68;
    }

    if (v91 >= 0x20)
    {
      v94 = v91 & 0xFFFFFFFFFFFFFFE0;
      v92 = 32 - 8 * (v91 & 0xFFFFFFE0);
      v95 = xmmword_277875230;
      v96 = xmmword_277875240;
      v97 = xmmword_277875250;
      v98 = xmmword_277875260;
      v99 = (v19 + 4);
      v100 = 0uLL;
      a12.i64[0] = 0x700000007;
      a12.i64[1] = 0x700000007;
      v101.i64[0] = 0x8700000087;
      v101.i64[1] = 0x8700000087;
      v102.i64[0] = 0xFFFFFF00FFFFFF00;
      v102.i64[1] = 0xFFFFFF00FFFFFF00;
      v103 = 0uLL;
      v104 = v91 & 0xFFFFFFFFFFFFFFE0;
      v105 = 0uLL;
      v12 = 0uLL;
      v106 = 0uLL;
      v107 = 0uLL;
      v108 = 0uLL;
      v109 = 0uLL;
      do
      {
        v110 = v99[-1];
        v103 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v110, xmmword_277875270), vaddq_s32(v97, a12)), v103);
        v100 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v110, xmmword_277875280), vaddq_s32(v98, a12)), v100);
        v105 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v110, xmmword_277875290), vaddq_s32(v96, a12)), v105);
        v12 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v110, xmmword_2778752A0), vaddq_s32(v95, a12)), v12);
        v107 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v99, xmmword_277875270), vaddq_s32(v97, v101)), v107);
        v106 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v99, xmmword_277875280), vaddq_s32(v98, v101)), v106);
        v108 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v99, xmmword_277875290), vaddq_s32(v96, v101)), v108);
        v109 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v99, xmmword_2778752A0), vaddq_s32(v95, v101)), v109);
        v98 = vaddq_s32(v98, v102);
        v97 = vaddq_s32(v97, v102);
        v96 = vaddq_s32(v96, v102);
        v99 += 2;
        v95 = vaddq_s32(v95, v102);
        v104 -= 32;
      }

      while (v104);
      v111 = vorrq_s8(vorrq_s8(vorrq_s8(v106, v100), vorrq_s8(v108, v105)), vorrq_s8(vorrq_s8(v107, v103), vorrq_s8(v109, v12)));
      *v111.i8 = vorr_s8(*v111.i8, *&vextq_s8(v111, v111, 8uLL));
      v89 = v111.i32[0] | v111.i32[1];
      if (v91 == v94)
      {
        goto LABEL_70;
      }

      if ((v91 & 0x1C) == 0)
      {
        v93 = v19 + v94;
LABEL_68:
        v121 = v92 - 8;
        do
        {
          v122 = *v93++;
          v89 |= v122 << v121;
          v121 -= 8;
        }

        while (v93 != v90);
LABEL_70:
        v19 = *(result + 32);
LABEL_71:
        v26 |= v89 << v87;
        v27 += 32;
        *a2 = v25;
        if (a3)
        {
          goto LABEL_13;
        }

        goto LABEL_72;
      }
    }

    else
    {
      v89 = 0;
      v94 = 0;
      v92 = 32;
    }

    v112 = vdupq_n_s32(v92);
    v93 = v19 + (v91 & 0xFFFFFFFFFFFFFFFCLL);
    v92 = 32 - 8 * (v91 & 0xFFFFFFFC);
    v113 = v89;
    v114 = vaddq_s32(v112, xmmword_277875250);
    v115 = (v19 + v94);
    v116 = v94 - (v91 & 0xFFFFFFFFFFFFFFFCLL);
    v117.i64[0] = 0x700000007;
    v117.i64[1] = 0x700000007;
    v118.i64[0] = 0x1F0000001FLL;
    v118.i64[1] = 0x1F0000001FLL;
    do
    {
      v119 = *v115++;
      a12.i32[0] = v119;
      a12 = vmovl_u16(*&vmovl_u8(*a12.i8));
      v113 = vorrq_s8(vshlq_u32(a12, vaddq_s32(v114, v117)), v113);
      v114 = vaddq_s32(v114, v118);
      v116 += 4;
    }

    while (v116);
    v120 = vorr_s8(*v113.i8, *&vextq_s8(v113, v113, 8uLL));
    v89 = v120.i32[0] | v120.i32[1];
    if (v91 == (v91 & 0xFFFFFFFFFFFFFFFCLL))
    {
      goto LABEL_70;
    }

    goto LABEL_68;
  }

  *a2 = v25;
  if (a3)
  {
LABEL_13:
    v28 = 0;
    v29 = 1;
    v30 = xmmword_277875250;
    v31.i64[0] = 0x700000007;
    v31.i64[1] = 0x700000007;
    v32.i64[0] = 0x1F0000001FLL;
    v32.i64[1] = 0x1F0000001FLL;
    v33 = xmmword_277875230;
    v34 = xmmword_277875240;
    v35 = xmmword_277875260;
    v36.i64[0] = 0x8700000087;
    v36.i64[1] = 0x8700000087;
    v37.i64[0] = 0xFFFFFF00FFFFFF00;
    v37.i64[1] = 0xFFFFFF00FFFFFF00;
    v38 = a2;
    while (1)
    {
      if (!HIDWORD(v26))
      {
        return result;
      }

      v44 = v15 >> 8;
      v45 = v15 & 0xF;
      v46 = __clz(HIDWORD(v26));
      v47 = v15 >> 4;
      v48 = v47 - (v15 >> 8) + 2 * v46;
      v49 = ((v44 + 1) << v45) + (-1 << v47) + (HIDWORD(v26) >> -(v47 - v44 + 2 * v46));
      v50 = v46 > v44;
      v51 = v46 <= v44 ? v46 + 1 + v45 : v48;
      v52 = v50 ? v49 : (HIDWORD(v26) << (v46 + 1) >> 1 >> (v45 ^ 0x1F)) + (v46 << v45);
      v53 = (HIDWORD(v26) & 0x7FFFFFFFu) >> (v45 ^ 0x1F);
      if ((v26 & 0x8000000000000000) == 0)
      {
        v53 = v52;
      }

      else
      {
        v51 = v45 + 1;
      }

      v54 = v53 & 1;
      v55 = (v54 + v53) >> 1;
      v56 = v55 >= 0xC ? 12 : ((v53 & 1) + v53) >> 1;
      v26 <<= v51;
      v27 -= v51;
      if (v27 < 0)
      {
        break;
      }

LABEL_16:
      v38 += (1 << a5);
      v41 = v54 ^ v28;
      v42 = v55 ^ -(v54 ^ v28);
      v15 = word_27A7183A4[v56];
      v43 = v42 + v41;
      v28 = v43 >> 31;
      v25 += v43;
      *v38 = v25;
      if (++v29 >> a3)
      {
        goto LABEL_73;
      }
    }

    if (v19 < v18)
    {
      v39 = *v19++;
      v40 = bswap32(v39);
    }

    else
    {
      v57 = *(result + 32);
      if (v19 >= v57)
      {
        v40 = 0;
      }

      else
      {
        v58 = v57 - v19;
        if ((v57 - v19) < 4)
        {
          v40 = 0;
          v59 = 32;
          v60 = v19;
          goto LABEL_48;
        }

        if (v58 < 0x20)
        {
          v40 = 0;
          v61 = 0;
          v59 = 32;
          goto LABEL_43;
        }

        v61 = v58 & 0xFFFFFFFFFFFFFFE0;
        v59 = 32 - 8 * (v58 & 0xFFFFFFE0);
        v62 = 0uLL;
        v63 = 0uLL;
        v64 = (v19 + 4);
        v65 = v58 & 0xFFFFFFFFFFFFFFE0;
        v66 = 0uLL;
        v67 = 0uLL;
        v68 = 0uLL;
        v69 = 0uLL;
        v322 = v35;
        v70 = v30;
        v71 = 0uLL;
        v72 = v34;
        v73 = 0uLL;
        v74 = v33;
        do
        {
          v75 = v64[-1];
          v63 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v75, xmmword_277875270), vaddq_s32(v30, v31)), v63);
          v62 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v75, xmmword_277875280), vaddq_s32(v35, v31)), v62);
          v66 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v75, xmmword_277875290), vaddq_s32(v34, v31)), v66);
          v67 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v75, xmmword_2778752A0), vaddq_s32(v33, v31)), v67);
          v69 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v64, xmmword_277875270), vaddq_s32(v30, v36)), v69);
          v68 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v64, xmmword_277875280), vaddq_s32(v35, v36)), v68);
          v71 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v64, xmmword_277875290), vaddq_s32(v34, v36)), v71);
          v73 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v64, xmmword_2778752A0), vaddq_s32(v33, v36)), v73);
          v35 = vaddq_s32(v35, v37);
          v30 = vaddq_s32(v30, v37);
          v34 = vaddq_s32(v34, v37);
          v64 += 2;
          v33 = vaddq_s32(v33, v37);
          v65 -= 32;
        }

        while (v65);
        v12 = vorrq_s8(v71, v66);
        v76 = vorrq_s8(vorrq_s8(vorrq_s8(v68, v62), v12), vorrq_s8(vorrq_s8(v69, v63), vorrq_s8(v73, v67)));
        v77 = vorr_s8(*v76.i8, *&vextq_s8(v76, v76, 8uLL));
        v40 = v77.i32[0] | v77.i32[1];
        if (v58 != v61)
        {
          v33 = v74;
          v34 = v72;
          v35 = v322;
          v30 = v70;
          if ((v58 & 0x1C) == 0)
          {
            v60 = (v19 + v61);
LABEL_48:
            v85 = v59 - 8;
            do
            {
              v86 = *v60;
              v60 = (v60 + 1);
              v40 |= v86 << v85;
              v85 -= 8;
            }

            while (v60 != v57);
LABEL_50:
            v19 = *(result + 32);
            goto LABEL_15;
          }

LABEL_43:
          v60 = (v19 + (v58 & 0xFFFFFFFFFFFFFFFCLL));
          v78 = vdupq_n_s32(v59);
          v59 = 32 - 8 * (v58 & 0xFFFFFFFC);
          v79 = v40;
          v80 = vaddq_s32(v78, v30);
          v81 = (v19 + v61);
          v82 = v61 - (v58 & 0xFFFFFFFFFFFFFFFCLL);
          do
          {
            v83 = *v81++;
            v12.i32[0] = v83;
            v12 = vmovl_u16(*&vmovl_u8(*v12.i8));
            v79 = vorrq_s8(vshlq_u32(v12, vaddq_s32(v80, v31)), v79);
            v80 = vaddq_s32(v80, v32);
            v82 += 4;
          }

          while (v82);
          v84 = vorr_s8(*v79.i8, *&vextq_s8(v79, v79, 8uLL));
          v40 = v84.i32[0] | v84.i32[1];
          if (v58 == (v58 & 0xFFFFFFFFFFFFFFFCLL))
          {
            goto LABEL_50;
          }

          goto LABEL_48;
        }

        v19 = *(result + 32);
        v33 = v74;
        v34 = v72;
        v35 = v322;
        v30 = v70;
      }
    }

LABEL_15:
    v26 |= v40 << -v27;
    v27 += 32;
    goto LABEL_16;
  }

LABEL_72:
  v29 = 1;
LABEL_73:
  if (v29 < a4 && HIDWORD(v26))
  {
    v123 = ~(-1 << a3);
    v124 = xmmword_277875250;
    v125.i64[0] = 0x700000007;
    v125.i64[1] = 0x700000007;
    v126.i64[0] = 0x1F0000001FLL;
    v126.i64[1] = 0x1F0000001FLL;
    v127 = xmmword_277875230;
    v128 = xmmword_277875240;
    v129 = xmmword_277875260;
    v130.i64[0] = 0x8700000087;
    v130.i64[1] = 0x8700000087;
    v131.i64[0] = 0xFFFFFF00FFFFFF00;
    v131.i64[1] = 0xFFFFFF00FFFFFF00;
    do
    {
      v132 = v16 & 0xF;
      if ((v26 & 0x8000000000000000) != 0)
      {
        v139 = (HIDWORD(v26) & 0x7FFFFFFFu) >> (v132 ^ 0x1F);
        v142 = v132 + 1;
        v140 = v26 << v142;
        v141 = v27 - v142;
        if (v27 - v142 < 0)
        {
          goto LABEL_87;
        }
      }

      else
      {
        v133 = __clz(HIDWORD(v26));
        v134 = v16 >> 4;
        v135 = v134 - (v16 >> 8) + 2 * v133;
        v136 = (((v16 >> 8) + 1) << v132) + (-1 << v134) + (HIDWORD(v26) >> -(v134 - BYTE1(v16) + 2 * v133));
        v137 = (HIDWORD(v26) << (v133 + 1) >> 1 >> (v132 ^ 0x1F)) + (v133 << v132);
        if (v133 <= v16 >> 8)
        {
          v138 = v133 + 1 + v132;
        }

        else
        {
          v138 = v135;
        }

        if (v133 <= v16 >> 8)
        {
          v139 = v137;
        }

        else
        {
          v139 = v136;
        }

        v140 = v26 << v138;
        v141 = v27 - v138;
        if (v27 - v138 < 0)
        {
LABEL_87:
          if (v19 < v18)
          {
            v143 = *v19++;
            v144 = bswap32(v143);
            goto LABEL_109;
          }

          v145 = *(result + 32);
          if (v19 >= v145)
          {
            v144 = 0;
          }

          else
          {
            v146 = v145 - v19;
            if ((v145 - v19) < 4)
            {
              v144 = 0;
              v147 = 32;
              v148 = v19;
              goto LABEL_106;
            }

            if (v146 < 0x20)
            {
              v144 = 0;
              v149 = 0;
              v147 = 32;
              goto LABEL_101;
            }

            v149 = v146 & 0xFFFFFFFFFFFFFFE0;
            v150 = (v19 + 4);
            v151 = 0uLL;
            v152 = 0uLL;
            v153 = v146 & 0xFFFFFFFFFFFFFFE0;
            v154 = v124;
            v155 = v129;
            v156 = v129;
            v323 = v154;
            v157 = v128;
            v158 = v128;
            v159 = v127;
            v160 = 0uLL;
            v161 = 0uLL;
            v162 = 0uLL;
            v147 = 32 - 8 * (v146 & 0xFFFFFFE0);
            v163 = 0uLL;
            v164 = 0uLL;
            v165 = 0uLL;
            do
            {
              v166 = v150[-1];
              v152 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v166, xmmword_277875270), vaddq_s32(v154, v125)), v152);
              v151 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v166, xmmword_277875280), vaddq_s32(v156, v125)), v151);
              v160 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v166, xmmword_277875290), vaddq_s32(v158, v125)), v160);
              v161 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v166, xmmword_2778752A0), vaddq_s32(v127, v125)), v161);
              v163 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v150, xmmword_277875270), vaddq_s32(v154, v130)), v163);
              v162 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v150, xmmword_277875280), vaddq_s32(v156, v130)), v162);
              v164 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v150, xmmword_277875290), vaddq_s32(v158, v130)), v164);
              v165 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v150, xmmword_2778752A0), vaddq_s32(v127, v130)), v165);
              v156 = vaddq_s32(v156, v131);
              v154 = vaddq_s32(v154, v131);
              v158 = vaddq_s32(v158, v131);
              v150 += 2;
              v127 = vaddq_s32(v127, v131);
              v153 -= 32;
            }

            while (v153);
            v12 = vorrq_s8(v164, v160);
            v167 = vorrq_s8(vorrq_s8(vorrq_s8(v162, v151), v12), vorrq_s8(vorrq_s8(v163, v152), vorrq_s8(v165, v161)));
            v168 = vorr_s8(*v167.i8, *&vextq_s8(v167, v167, 8uLL));
            v144 = v168.i32[0] | v168.i32[1];
            if (v146 == v149)
            {
              v19 = *(result + 32);
              v127 = v159;
              v128 = v157;
              v129 = v155;
              v124 = v323;
            }

            else
            {
              v127 = v159;
              if ((v146 & 0x1C) == 0)
              {
                v148 = (v19 + v149);
                v128 = v157;
                v129 = v155;
                v124 = v323;
                goto LABEL_106;
              }

              v128 = v157;
              v129 = v155;
              v124 = v323;
LABEL_101:
              v148 = (v19 + (v146 & 0xFFFFFFFFFFFFFFFCLL));
              v169 = vdupq_n_s32(v147);
              v147 = 32 - 8 * (v146 & 0xFFFFFFFC);
              v170 = vaddq_s32(v169, v124);
              v171 = v144;
              v172 = (v19 + v149);
              v173 = v149 - (v146 & 0xFFFFFFFFFFFFFFFCLL);
              do
              {
                v174 = *v172++;
                v12.i32[0] = v174;
                v12 = vmovl_u16(*&vmovl_u8(*v12.i8));
                v171 = vorrq_s8(vshlq_u32(v12, vaddq_s32(v170, v125)), v171);
                v170 = vaddq_s32(v170, v126);
                v173 += 4;
              }

              while (v173);
              v175 = vorr_s8(*v171.i8, *&vextq_s8(v171, v171, 8uLL));
              v144 = v175.i32[0] | v175.i32[1];
              if (v146 != (v146 & 0xFFFFFFFFFFFFFFFCLL))
              {
LABEL_106:
                v176 = v147 - 8;
                do
                {
                  v177 = *v148;
                  v148 = (v148 + 1);
                  v144 |= v177 << v176;
                  v176 -= 8;
                }

                while (v148 != v145);
              }

              v19 = *(result + 32);
            }
          }

LABEL_109:
          v140 |= v144 << -v141;
          v141 += 32;
          if (!v139)
          {
            goto LABEL_153;
          }

LABEL_110:
          v178 = 0;
          while (2)
          {
            v179 = HIDWORD(v140);
            if (!HIDWORD(v140))
            {
              return result;
            }

            v180 = v17 >> 8;
            v181 = v17 & 0xF;
            v182 = __clz(HIDWORD(v140));
            v183 = v17 >> 4;
            v184 = v183 - (v17 >> 8) + 2 * v182;
            v185 = ((v180 + 1) << v181) + (-1 << v183) + (HIDWORD(v140) >> -(v183 - v180 + 2 * v182));
            v186 = v182 > v180;
            if (v182 <= v180)
            {
              v187 = v182 + 1 + v181;
            }

            else
            {
              v187 = v184;
            }

            if (v186)
            {
              v188 = v185;
            }

            else
            {
              v188 = (HIDWORD(v140) << (v182 + 1) >> 1 >> (v181 ^ 0x1F)) + (v182 << v181);
            }

            if (v140 < 0)
            {
              v189 = v181 + 1;
            }

            else
            {
              v189 = v187;
            }

            if (v140 < 0)
            {
              v190 = (HIDWORD(v140) & 0x7FFFFFFFu) >> (v181 ^ 0x1F);
            }

            else
            {
              v190 = v188;
            }

            if (v190 >= 0x5E)
            {
              v191 = 94;
            }

            else
            {
              v191 = v190;
            }

            v140 <<= v189 + 1;
            v141 -= v189 + 1;
            if (v141 < 0)
            {
              if (v19 < v18)
              {
                v192 = *v19++;
                v193 = bswap32(v192);
                goto LABEL_150;
              }

              v194 = *(result + 32);
              if (v19 >= v194)
              {
                v193 = 0;
              }

              else
              {
                v195 = v194 - v19;
                if ((v194 - v19) < 4)
                {
                  v193 = 0;
                  v196 = 32;
                  v197 = v19;
                  goto LABEL_147;
                }

                if (v195 < 0x20)
                {
                  v193 = 0;
                  v198 = 0;
                  v196 = 32;
                  goto LABEL_142;
                }

                v324 = v124;
                v199 = v129;
                v200 = v128;
                v201 = v127;
                v198 = v195 & 0xFFFFFFFFFFFFFFE0;
                v196 = 32 - 8 * (v195 & 0xFFFFFFE0);
                v202 = xmmword_277875230;
                v203 = xmmword_277875240;
                v204 = xmmword_277875250;
                v205 = 0uLL;
                v206 = 0uLL;
                v207 = xmmword_277875260;
                v208 = (v19 + 4);
                v209 = v195 & 0xFFFFFFFFFFFFFFE0;
                v210 = 0uLL;
                v211 = 0uLL;
                v212 = 0uLL;
                v213 = 0uLL;
                v214 = 0uLL;
                v215 = 0uLL;
                do
                {
                  v216 = v208[-1];
                  v206 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v216, xmmword_277875270), vaddq_s32(v204, v125)), v206);
                  v205 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v216, xmmword_277875280), vaddq_s32(v207, v125)), v205);
                  v210 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v216, xmmword_277875290), vaddq_s32(v203, v125)), v210);
                  v211 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v216, xmmword_2778752A0), vaddq_s32(v202, v125)), v211);
                  v213 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v208, xmmword_277875270), vaddq_s32(v204, v130)), v213);
                  v212 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v208, xmmword_277875280), vaddq_s32(v207, v130)), v212);
                  v214 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v208, xmmword_277875290), vaddq_s32(v203, v130)), v214);
                  v215 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v208, xmmword_2778752A0), vaddq_s32(v202, v130)), v215);
                  v207 = vaddq_s32(v207, v131);
                  v204 = vaddq_s32(v204, v131);
                  v203 = vaddq_s32(v203, v131);
                  v208 += 2;
                  v202 = vaddq_s32(v202, v131);
                  v209 -= 32;
                }

                while (v209);
                v217 = vorrq_s8(v212, v205);
                v12 = vorrq_s8(v214, v210);
                v218 = vorrq_s8(vorrq_s8(v217, v12), vorrq_s8(vorrq_s8(v213, v206), vorrq_s8(v215, v211)));
                v219 = vorr_s8(*v218.i8, *&vextq_s8(v218, v218, 8uLL));
                v193 = v219.i32[0] | v219.i32[1];
                if (v195 == v198)
                {
                  v19 = *(result + 32);
                  v127 = v201;
                  v128 = v200;
                  v129 = v199;
                  v124 = v324;
                }

                else
                {
                  v127 = v201;
                  if ((v195 & 0x1C) == 0)
                  {
                    v197 = (v19 + v198);
                    v128 = v200;
                    v129 = v199;
                    v124 = v324;
                    goto LABEL_147;
                  }

                  v128 = v200;
                  v129 = v199;
                  v124 = v324;
LABEL_142:
                  v197 = (v19 + (v195 & 0xFFFFFFFFFFFFFFFCLL));
                  v220 = vdupq_n_s32(v196);
                  v196 = 32 - 8 * (v195 & 0xFFFFFFFC);
                  v221 = vaddq_s32(v220, v124);
                  v222 = v193;
                  v223 = (v19 + v198);
                  v224 = v198 - (v195 & 0xFFFFFFFFFFFFFFFCLL);
                  do
                  {
                    v225 = *v223++;
                    v12.i32[0] = v225;
                    v12 = vmovl_u16(*&vmovl_u8(*v12.i8));
                    v222 = vorrq_s8(vshlq_u32(v12, vaddq_s32(v221, v125)), v222);
                    v221 = vaddq_s32(v221, v126);
                    v224 += 4;
                  }

                  while (v224);
                  v226 = vorr_s8(*v222.i8, *&vextq_s8(v222, v222, 8uLL));
                  v193 = v226.i32[0] | v226.i32[1];
                  if (v195 != (v195 & 0xFFFFFFFFFFFFFFFCLL))
                  {
LABEL_147:
                    v227 = v196 - 8;
                    do
                    {
                      v228 = *v197;
                      v197 = (v197 + 1);
                      v193 |= v228 << v227;
                      v227 -= 8;
                    }

                    while (v197 != v194);
                  }

                  v19 = *(result + 32);
                }
              }

LABEL_150:
              v140 |= v193 << -v141;
              v141 += 32;
            }

            v17 = word_27A71841A[v191];
            a2[((v29 & v123) << a5) + a6[v29 >> a3]] = (((v179 << v189) >> 31) ^ (v190 + 1)) - ((v179 << v189) >> 31);
            if (++v29 == a4)
            {
              return result;
            }

            if (++v178 == v139)
            {
              goto LABEL_153;
            }

            continue;
          }
        }
      }

      if (v139)
      {
        goto LABEL_110;
      }

LABEL_153:
      if (!HIDWORD(v140))
      {
        return result;
      }

      v229 = __clz(HIDWORD(v140));
      v230 = v325 >> 4;
      v231 = v230 - (v325 >> 8) + 2 * v229;
      v232 = (((v325 >> 8) + 1) << (v325 & 0xF)) + (-1 << v230) + (HIDWORD(v140) >> -(v230 - BYTE1(v325) + 2 * v229));
      if (v229 <= v325 >> 8)
      {
        v233 = v229 + 1 + (v325 & 0xF);
      }

      else
      {
        v233 = v231;
      }

      if (v229 <= v325 >> 8)
      {
        v234 = (HIDWORD(v140) << (v229 + 1) >> 1 >> (v325 & 0xF ^ 0x1F)) + (v229 << (v325 & 0xF));
      }

      else
      {
        v234 = v232;
      }

      if (v140 >= 0)
      {
        v235 = v234;
      }

      else
      {
        v233 = (v325 & 0xF) + 1;
        v235 = (HIDWORD(v140) & 0x7FFFFFFFu) >> (v325 & 0xF ^ 0x1F);
      }

      if (v235 >= 0x1B)
      {
        v236 = 27;
      }

      else
      {
        v236 = v235;
      }

      v237 = v140 << v233;
      v238 = v141 - v233;
      if (v141 - v233 < 0)
      {
        if (v19 < v18)
        {
          v239 = *v19++;
          v240 = bswap32(v239);
LABEL_189:
          v237 |= v240 << -v238;
          v238 += 32;
          goto LABEL_190;
        }

        v241 = *(result + 32);
        if (v19 >= v241)
        {
          v240 = 0;
          goto LABEL_189;
        }

        v242 = v241 - v19;
        if ((v241 - v19) < 4)
        {
          v240 = 0;
          v243 = 32;
          v244 = v19;
          goto LABEL_186;
        }

        if (v242 >= 0x20)
        {
          v326 = v127;
          v245 = v242 & 0xFFFFFFFFFFFFFFE0;
          v243 = 32 - 8 * (v242 & 0xFFFFFFE0);
          v246 = xmmword_277875230;
          v247 = xmmword_277875240;
          v248 = xmmword_277875250;
          v249 = 0uLL;
          v250 = 0uLL;
          v251 = xmmword_277875260;
          v252 = (v19 + 4);
          v253 = v242 & 0xFFFFFFFFFFFFFFE0;
          v254 = 0uLL;
          v255 = 0uLL;
          v256 = 0uLL;
          v257 = 0uLL;
          v258 = 0uLL;
          v259 = 0uLL;
          do
          {
            v260 = v252[-1];
            v250 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v260, xmmword_277875270), vaddq_s32(v248, v125)), v250);
            v249 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v260, xmmword_277875280), vaddq_s32(v251, v125)), v249);
            v254 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v260, xmmword_277875290), vaddq_s32(v247, v125)), v254);
            v255 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v260, xmmword_2778752A0), vaddq_s32(v246, v125)), v255);
            v257 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v252, xmmword_277875270), vaddq_s32(v248, v130)), v257);
            v256 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v252, xmmword_277875280), vaddq_s32(v251, v130)), v256);
            v258 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v252, xmmword_277875290), vaddq_s32(v247, v130)), v258);
            v259 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v252, xmmword_2778752A0), vaddq_s32(v246, v130)), v259);
            v251 = vaddq_s32(v251, v131);
            v248 = vaddq_s32(v248, v131);
            v247 = vaddq_s32(v247, v131);
            v252 += 2;
            v246 = vaddq_s32(v246, v131);
            v253 -= 32;
          }

          while (v253);
          v261 = vorrq_s8(v256, v249);
          v12 = vorrq_s8(v258, v254);
          v262 = vorrq_s8(vorrq_s8(v261, v12), vorrq_s8(vorrq_s8(v257, v250), vorrq_s8(v259, v255)));
          v263 = vorr_s8(*v262.i8, *&vextq_s8(v262, v262, 8uLL));
          v240 = v263.i32[0] | v263.i32[1];
          if (v242 == v245)
          {
            v19 = *(result + 32);
            v127 = v326;
            goto LABEL_189;
          }

          if ((v242 & 0x1C) == 0)
          {
            v244 = (v19 + v245);
            v127 = v326;
            goto LABEL_186;
          }

          v127 = v326;
        }

        else
        {
          v240 = 0;
          v245 = 0;
          v243 = 32;
        }

        v244 = (v19 + (v242 & 0xFFFFFFFFFFFFFFFCLL));
        v264 = vdupq_n_s32(v243);
        v243 = 32 - 8 * (v242 & 0xFFFFFFFC);
        v265 = vaddq_s32(v264, v124);
        v266 = v240;
        v267 = (v19 + v245);
        v268 = v245 - (v242 & 0xFFFFFFFFFFFFFFFCLL);
        do
        {
          v269 = *v267++;
          v12.i32[0] = v269;
          v12 = vmovl_u16(*&vmovl_u8(*v12.i8));
          v266 = vorrq_s8(vshlq_u32(v12, vaddq_s32(v265, v125)), v266);
          v265 = vaddq_s32(v265, v126);
          v268 += 4;
        }

        while (v268);
        v270 = vorr_s8(*v266.i8, *&vextq_s8(v266, v266, 8uLL));
        v240 = v270.i32[0] | v270.i32[1];
        if (v242 != (v242 & 0xFFFFFFFFFFFFFFFCLL))
        {
LABEL_186:
          v271 = v243 - 8;
          do
          {
            v272 = *v244;
            v244 = (v244 + 1);
            v240 |= v272 << v271;
            v271 -= 8;
          }

          while (v244 != v241);
        }

        v19 = *(result + 32);
        goto LABEL_189;
      }

LABEL_190:
      v273 = v29 + v235 + 1;
      if (v273 >= a4)
      {
        return result;
      }

      v274 = HIDWORD(v237);
      if (!HIDWORD(v237))
      {
        return result;
      }

      v275 = v17 >> 8;
      v276 = v17 & 0xF;
      v277 = __clz(HIDWORD(v237));
      v278 = v17 >> 4;
      v279 = v278 - (v17 >> 8) + 2 * v277;
      v280 = ((v275 + 1) << v276) + (-1 << v278) + (HIDWORD(v237) >> -(v278 - v275 + 2 * v277));
      v281 = v277 > v275;
      if (v277 <= v275)
      {
        v282 = v277 + 1 + v276;
      }

      else
      {
        v282 = v279;
      }

      if (v281)
      {
        v283 = v280;
      }

      else
      {
        v283 = (HIDWORD(v237) << (v277 + 1) >> 1 >> (v276 ^ 0x1F)) + (v277 << v276);
      }

      if (v237 < 0)
      {
        v284 = v276 + 1;
      }

      else
      {
        v284 = v282;
      }

      if (v237 < 0)
      {
        v285 = (HIDWORD(v237) & 0x7FFFFFFFu) >> (v276 ^ 0x1F);
      }

      else
      {
        v285 = v283;
      }

      if (v285 >= 0x5E)
      {
        v286 = 94;
      }

      else
      {
        v286 = v285;
      }

      if (v285 >= 0xE)
      {
        v287 = 14;
      }

      else
      {
        v287 = v285;
      }

      v26 = v237 << (v284 + 1);
      v27 = v238 - (v284 + 1);
      if (v27 < 0)
      {
        if (v19 < v18)
        {
          v288 = *v19++;
          v289 = bswap32(v288);
LABEL_233:
          v26 |= v289 << -v27;
          v27 += 32;
          goto LABEL_234;
        }

        v290 = *(result + 32);
        if (v19 >= v290)
        {
          v289 = 0;
          goto LABEL_233;
        }

        v291 = v290 - v19;
        if (v290 - v19 < 4)
        {
          v289 = 0;
          v292 = 32;
          v293 = v19;
          goto LABEL_230;
        }

        if (v291 >= 0x20)
        {
          v327 = v127;
          v294 = v291 & 0xFFFFFFFFFFFFFFE0;
          v292 = 32 - 8 * (v291 & 0xFFFFFFE0);
          v295 = xmmword_277875230;
          v296 = xmmword_277875240;
          v297 = xmmword_277875250;
          v298 = 0uLL;
          v299 = 0uLL;
          v300 = xmmword_277875260;
          v301 = (v19 + 4);
          v302 = v291 & 0xFFFFFFFFFFFFFFE0;
          v303 = 0uLL;
          v304 = 0uLL;
          v305 = 0uLL;
          v306 = 0uLL;
          v307 = 0uLL;
          v308 = 0uLL;
          do
          {
            v309 = v301[-1];
            v299 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v309, xmmword_277875270), vaddq_s32(v297, v125)), v299);
            v298 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v309, xmmword_277875280), vaddq_s32(v300, v125)), v298);
            v303 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v309, xmmword_277875290), vaddq_s32(v296, v125)), v303);
            v304 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v309, xmmword_2778752A0), vaddq_s32(v295, v125)), v304);
            v306 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v301, xmmword_277875270), vaddq_s32(v297, v130)), v306);
            v305 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v301, xmmword_277875280), vaddq_s32(v300, v130)), v305);
            v307 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v301, xmmword_277875290), vaddq_s32(v296, v130)), v307);
            v308 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v301, xmmword_2778752A0), vaddq_s32(v295, v130)), v308);
            v300 = vaddq_s32(v300, v131);
            v297 = vaddq_s32(v297, v131);
            v296 = vaddq_s32(v296, v131);
            v301 += 2;
            v295 = vaddq_s32(v295, v131);
            v302 -= 32;
          }

          while (v302);
          v310 = vorrq_s8(v305, v298);
          v12 = vorrq_s8(v307, v303);
          v311 = vorrq_s8(vorrq_s8(v310, v12), vorrq_s8(vorrq_s8(v306, v299), vorrq_s8(v308, v304)));
          v312 = vorr_s8(*v311.i8, *&vextq_s8(v311, v311, 8uLL));
          v289 = v312.i32[0] | v312.i32[1];
          if (v291 == v294)
          {
            v19 = *(result + 32);
            v127 = v327;
            goto LABEL_233;
          }

          if ((v291 & 0x1C) == 0)
          {
            v293 = (v19 + v294);
            v127 = v327;
            goto LABEL_230;
          }

          v127 = v327;
        }

        else
        {
          v289 = 0;
          v294 = 0;
          v292 = 32;
        }

        v313 = vdupq_n_s32(v292);
        v292 = 32 - 8 * (v291 & 0xFFFFFFFC);
        v293 = (v19 + (v291 & 0xFFFFFFFFFFFFFFFCLL));
        v314 = vaddq_s32(v313, v124);
        v315 = v289;
        v316 = (v19 + v294);
        v317 = v294 - (v291 & 0xFFFFFFFFFFFFFFFCLL);
        do
        {
          v318 = *v316++;
          v12.i32[0] = v318;
          v12 = vmovl_u16(*&vmovl_u8(*v12.i8));
          v315 = vorrq_s8(vshlq_u32(v12, vaddq_s32(v314, v125)), v315);
          v314 = vaddq_s32(v314, v126);
          v317 += 4;
        }

        while (v317);
        v319 = vorr_s8(*v315.i8, *&vextq_s8(v315, v315, 8uLL));
        v289 = v319.i32[0] | v319.i32[1];
        if (v291 != (v291 & 0xFFFFFFFFFFFFFFFCLL))
        {
LABEL_230:
          v320 = v292 - 8;
          do
          {
            v321 = *v293;
            v293 = (v293 + 1);
            v289 |= v321 << v320;
            v320 -= 8;
          }

          while (v293 != *(result + 32));
        }

        v19 = *(result + 32);
        goto LABEL_233;
      }

LABEL_234:
      v325 = word_27A7183E0[v236];
      v17 = word_27A71841A[v286];
      v16 = word_27A7183C0[v287];
      a2[((v273 & v123) << a5) + a6[v273 >> a3]] = (((v274 << v284) >> 31) ^ (v285 + 1)) - ((v274 << v284) >> 31);
      v29 = v273 + 1;
    }

    while (v29 < a4 && HIDWORD(v26));
  }

  return result;
}

uint64_t PRRDecoderWorker::runJob(uint64_t result, int *a2)
{
  if (*(*a2 + 40))
  {
    v3 = result;
    *(result + 128) = 0;
    if (a2[2] >= 1)
    {
      v4 = 0;
      v5 = 0;
      do
      {
        result = PRRSliceDecoder::decode(v3, (*a2 + v4));
        ++v5;
        v4 += 88;
      }

      while (v5 < a2[2]);
    }
  }

  return result;
}

int8x16_t PRRDiscreteCosineTransform::idct_8x8(int16x8_t *this, int8x16_t *a2, int16x8_t *a3, const __int16 *a4, double a5, double a6, double a7, double a8, double a9, double a10, __n128 a11, __n128 a12)
{
  v22 = this[1];
  v23 = a3[1];
  v187.val[0] = vmulq_s16(*a3, *this);
  v187.val[1] = vmull_s16(*this->i8, *a3->i8);
  v24 = vuzp2q_s16(v187.val[1], vmull_high_s16(*this, *a3));
  v25 = vzip1q_s16(v187.val[0], v24);
  v26 = vzip2q_s16(v187.val[0], v24);
  *v187.val[0].i8 = vqmovn_s32(v25);
  *v187.val[1].i8 = vqmovn_s32(v26);
  v27 = vmulq_s16(v23, v22);
  v28 = vuzp2q_s16(vmull_s16(*v22.i8, *v23.i8), vmull_high_s16(v22, v23));
  a11.n128_u64[0] = vqmovn_s32(vzip1q_s16(v27, v28));
  a12.n128_u64[0] = vqmovn_s32(vzip2q_s16(v27, v28));
  v29 = this[2];
  v30 = this[3];
  v31 = a3[2];
  v32 = a3[3];
  v33 = vmulq_s16(v31, v29);
  v34 = vuzp2q_s16(vmull_s16(*v29.i8, *v31.i8), vmull_high_s16(v29, v31));
  v186.val[1] = vzip1q_s16(v33, v34);
  *&v18 = vqmovn_s32(v186.val[1]);
  *&v19 = vqmovn_s32(vzip2q_s16(v33, v34));
  v35 = vmulq_s16(v32, v30);
  v186.val[0] = vuzp2q_s16(vmull_s16(*v30.i8, *v32.i8), vmull_high_s16(v30, v32));
  v36 = vzip2q_s16(v35, v186.val[0]);
  *v186.val[0].i8 = vqmovn_s32(vzip1q_s16(v35, v186.val[0]));
  *v186.val[1].i8 = vqmovn_s32(v36);
  v37 = this[4];
  v38 = this[5];
  v39 = a3[4];
  v40 = a3[5];
  v41 = vmulq_s16(v39, v37);
  v42 = vuzp2q_s16(vmull_s16(*v37.i8, *v39.i8), vmull_high_s16(v37, v39));
  *&v14 = vqmovn_s32(vzip1q_s16(v41, v42));
  *&v15 = vqmovn_s32(vzip2q_s16(v41, v42));
  v43 = vmulq_s16(v40, v38);
  v44 = vuzp2q_s16(vmull_s16(*v38.i8, *v40.i8), vmull_high_s16(v38, v40));
  *&v16 = vqmovn_s32(vzip1q_s16(v43, v44));
  *&v17 = vqmovn_s32(vzip2q_s16(v43, v44));
  v45 = this[6];
  v46 = this[7];
  v47 = a3[6];
  v48 = a3[7];
  v49 = vmulq_s16(v47, v45);
  v50 = vuzp2q_s16(vmull_s16(*v45.i8, *v47.i8), vmull_high_s16(v45, v47));
  *&v20 = vqmovn_s32(vzip1q_s16(v49, v50));
  *&v21 = vqmovn_s32(vzip2q_s16(v49, v50));
  v51 = vmulq_s16(v48, v46);
  v52 = vuzp2q_s16(vmull_s16(*v46.i8, *v48.i8), vmull_high_s16(v46, v48));
  *&v12 = vqmovn_s32(vzip1q_s16(v51, v52));
  *&v13 = vqmovn_s32(vzip2q_s16(v51, v52));
  v53 = vqtbl2q_s8(v187, xmmword_2778DE600);
  v54 = vqtbl2q_s8(*a11.n128_u64, xmmword_2778DE600);
  v187.val[0] = vdupq_lane_s32(*v53.i8, 0);
  v187.val[1] = vdupq_lane_s32(*v54.i8, 0);
  v55 = vpaddq_s32(vmull_s16(*v187.val[1].i8, 0xC0316311CFF1631), vmull_s16(*&vextq_s8(v187.val[1], v187.val[1], 8uLL), 0xE3011631F3FD1631));
  v187.val[1] = vdupq_lane_s32(*v53.i8, 1);
  v56 = vpaddq_s32(vmull_s16(*v187.val[1].i8, 0xFB9612D012D01631), vmull_s16(*&vextq_s8(v187.val[1], v187.val[1], 8uLL), 0xF36E046AE9CF0C92));
  v187.val[1] = vdupq_lane_s32(*v54.i8, 1);
  v57 = vqtbl1q_s8(v53, xmmword_277875400);
  v58 = vqtbl1q_s8(v54, xmmword_277875400);
  v59 = vdupq_laneq_s32(v57, 2);
  v60 = vpaddq_s32(vmull_s16(*v59.i8, 0xEB18F00008A91000), vmull_s16(*&vextq_s8(v59, v59, 8uLL), 0xF757100014E8F000));
  v61 = vdupq_laneq_s32(v58, 2);
  v62 = vdupq_laneq_s32(v57, 3);
  v63 = vdupq_laneq_s32(v58, 3);
  v187.val[0] = vaddq_s32(v60, vpaddq_s32(vmull_s16(*v187.val[0].i8, 0x8A9100014E81000), vmull_s16(*&vextq_s8(v187.val[0], v187.val[0], 8uLL), 0xEB181000F7571000)));
  v64 = vaddq_s32(vpaddq_s32(vmull_s16(*v62.i8, 0xF36EE9CF046A0C92), vmull_s16(*&vextq_s8(v62, v62, 8uLL), 0xE9CF12D012D0046ALL)), v56);
  v65 = vaddq_s32(vpaddq_s32(vmull_s16(*v61.i8, 0xE301E9CF0C031631), vmull_s16(*&vextq_s8(v61, v61, 8uLL), 0xF3FD16311CFFE9CFLL)), v55);
  v66 = vaddq_s32(vpaddq_s32(vmull_s16(*v63.i8, 0xEE90E138061F1170), vmull_s16(*&vextq_s8(v63, v63, 8uLL), 0xE1381A191A19061FLL)), vpaddq_s32(vmull_s16(*v187.val[1].i8, 0xF9E11A191A191EC8), vmull_s16(*&vextq_s8(v187.val[1], v187.val[1], 8uLL), 0xEE90061FE1381170)));
  v185 = vsubq_s32(v187.val[0], v64);
  v183 = vaddq_s32(v64, v187.val[0]);
  v184 = vsubq_s32(v65, v66);
  v182 = vaddq_s32(v66, v65);
  v67 = vqtbl2q_s8(*&v18, xmmword_2778DE600);
  v68 = vqtbl2q_s8(v186, xmmword_2778DE600);
  v69 = vdupq_lane_s32(*v67.i8, 0);
  v181 = vpaddq_s32(vmull_s16(*v69.i8, 0xB5014E81B5014E8), vmull_s16(*&vextq_s8(v69, v69, 8uLL), 0xE4B014E8F4B014E8));
  v70 = vqtbl2q_s8(*&v14, xmmword_2778DE600);
  v71 = vqtbl2q_s8(*&v16, xmmword_2778DE600);
  v72 = vqtbl2q_s8(*&v20, xmmword_2778DE600);
  v73 = vqtbl2q_s8(*&v12, xmmword_2778DE600);
  v74 = vdupq_lane_s32(*v68.i8, 0);
  v75 = vpaddq_s32(vmull_s16(*v74.i8, 0xA2F12D0189512D0), vmull_s16(*&vextq_s8(v74, v74, 8uLL), 0xE76B12D0F5D112D0));
  v76 = vdupq_lane_s32(*v67.i8, 1);
  v77 = vpaddq_s32(vmull_s16(*v76.i8, 0xFA3B189518951CFFLL), vmull_s16(*&vextq_s8(v76, v76, 8uLL), 0xEF9305C5E301106DLL));
  v78 = vdupq_lane_s32(*v68.i8, 1);
  v79 = vpaddq_s32(vmull_s16(*v78.i8, 0xFACF161F161F1A19), vmull_s16(*&vextq_s8(v78, v78, 8uLL), 0xF1380531E5E70EC8));
  v80 = vqtbl1q_s8(v67, xmmword_277875400);
  v81 = vdupq_laneq_s32(v80, 2);
  v82 = vqtbl1q_s8(v68, xmmword_277875400);
  v83 = vdupq_laneq_s32(v82, 2);
  v187.val[0] = vpaddq_s32(vmull_s16(*v83.i8, 0xE76BED300A2F12D0), vmull_s16(*&vextq_s8(v83, v83, 8uLL), 0xF5D112D01895ED30));
  v84 = vdupq_laneq_s32(v80, 3);
  v186.val[0] = vdupq_laneq_s32(v82, 3);
  v85 = vpaddq_s32(vmull_s16(*v186.val[0].i8, 0xF138E5E705310EC8), vmull_s16(*&vextq_s8(v186.val[0], v186.val[0], 8uLL), 0xE5E7161F161F0531));
  v186.val[0] = vaddq_s32(vpaddq_s32(vmull_s16(*v81.i8, 0xE4B0EB180B5014E8), vmull_s16(*&vextq_s8(v81, v81, 8uLL), 0xF4B014E81B50EB18)), v181);
  v186.val[1] = vaddq_s32(vpaddq_s32(vmull_s16(*v84.i8, 0xEF93E30105C5106DLL), vmull_s16(*&vextq_s8(v84, v84, 8uLL), 0xE3011895189505C5)), v77);
  v187.val[0] = vaddq_s32(v187.val[0], v75);
  v86 = vaddq_s32(v85, v79);
  v87 = vsubq_s32(v186.val[0], v186.val[1]);
  v88 = vaddq_s32(v186.val[1], v186.val[0]);
  v89 = vsubq_s32(v187.val[0], v86);
  v186.val[1] = vaddq_s32(v86, v187.val[0]);
  v90 = vdupq_lane_s32(*v70.i8, 0);
  v186.val[0] = vdupq_lane_s32(*v71.i8, 0);
  v187.val[0] = vdupq_lane_s32(*v70.i8, 1);
  v91 = vdupq_lane_s32(*v71.i8, 1);
  v92 = vpaddq_s32(vmull_s16(*v91.i8, 0xFACF161F161F1A19), vmull_s16(*&vextq_s8(v91, v91, 8uLL), 0xF1380531E5E70EC8));
  v93 = vqtbl1q_s8(v70, xmmword_277875400);
  v94 = vdupq_laneq_s32(v93, 2);
  v95 = vqtbl1q_s8(v71, xmmword_277875400);
  v96 = vdupq_laneq_s32(v95, 2);
  v97 = vdupq_laneq_s32(v93, 3);
  v98 = vdupq_laneq_s32(v95, 3);
  v99 = vaddq_s32(vpaddq_s32(vmull_s16(*v94.i8, 0xEB18F00008A91000), vmull_s16(*&vextq_s8(v94, v94, 8uLL), 0xF757100014E8F000)), vpaddq_s32(vmull_s16(*v90.i8, 0x8A9100014E81000), vmull_s16(*&vextq_s8(v90, v90, 8uLL), 0xEB181000F7571000)));
  v187.val[0] = vaddq_s32(vpaddq_s32(vmull_s16(*v97.i8, 0xF36EE9CF046A0C92), vmull_s16(*&vextq_s8(v97, v97, 8uLL), 0xE9CF12D012D0046ALL)), vpaddq_s32(vmull_s16(*v187.val[0].i8, 0xFB9612D012D01631), vmull_s16(*&vextq_s8(v187.val[0], v187.val[0], 8uLL), 0xF36E046AE9CF0C92)));
  v186.val[0] = vaddq_s32(vpaddq_s32(vmull_s16(*v96.i8, 0xE76BED300A2F12D0), vmull_s16(*&vextq_s8(v96, v96, 8uLL), 0xF5D112D01895ED30)), vpaddq_s32(vmull_s16(*v186.val[0].i8, 0xA2F12D0189512D0), vmull_s16(*&vextq_s8(v186.val[0], v186.val[0], 8uLL), 0xE76B12D0F5D112D0)));
  v100 = vaddq_s32(vpaddq_s32(vmull_s16(*v98.i8, 0xF138E5E705310EC8), vmull_s16(*&vextq_s8(v98, v98, 8uLL), 0xE5E7161F161F0531)), v92);
  v101 = vsubq_s32(v99, v187.val[0]);
  v102 = vaddq_s32(v187.val[0], v99);
  v187.val[0] = vsubq_s32(v186.val[0], v100);
  v103 = vaddq_s32(v100, v186.val[0]);
  v186.val[0] = vdupq_lane_s32(*v72.i8, 0);
  v104 = vdupq_lane_s32(*v73.i8, 0);
  v187.val[1] = vdupq_lane_s32(*v72.i8, 1);
  v105 = vpaddq_s32(vmull_s16(*v187.val[1].i8, 0xFA3B189518951CFFLL), vmull_s16(*&vextq_s8(v187.val[1], v187.val[1], 8uLL), 0xEF9305C5E301106DLL));
  v187.val[1] = vdupq_lane_s32(*v73.i8, 1);
  v106 = vpaddq_s32(vmull_s16(*v187.val[1].i8, 0xF9E11A191A191EC8), vmull_s16(*&vextq_s8(v187.val[1], v187.val[1], 8uLL), 0xEE90061FE1381170));
  v187.val[1] = vqtbl1q_s8(v72, xmmword_277875400);
  v107 = vqtbl1q_s8(v73, xmmword_277875400);
  v108 = vdupq_laneq_s32(v187.val[1], 2);
  v109 = vdupq_laneq_s32(v107, 2);
  v187.val[1] = vdupq_laneq_s32(v187.val[1], 3);
  v110 = vpaddq_s32(vmull_s16(*v187.val[1].i8, 0xEF93E30105C5106DLL), vmull_s16(*&vextq_s8(v187.val[1], v187.val[1], 8uLL), 0xE3011895189505C5));
  v187.val[1] = vdupq_laneq_s32(v107, 3);
  v111 = vaddq_s32(vpaddq_s32(vmull_s16(*v108.i8, 0xE4B0EB180B5014E8), vmull_s16(*&vextq_s8(v108, v108, 8uLL), 0xF4B014E81B50EB18)), vpaddq_s32(vmull_s16(*v186.val[0].i8, 0xB5014E81B5014E8), vmull_s16(*&vextq_s8(v186.val[0], v186.val[0], 8uLL), 0xE4B014E8F4B014E8)));
  v112 = vcvtq_f32_s32(v88);
  v113 = vcvtq_f32_s32(v186.val[1]);
  v186.val[1] = vaddq_s32(v110, v105);
  v114 = vaddq_s32(vpaddq_s32(vmull_s16(*v109.i8, 0xE301E9CF0C031631), vmull_s16(*&vextq_s8(v109, v109, 8uLL), 0xF3FD16311CFFE9CFLL)), vpaddq_s32(vmull_s16(*v104.i8, 0xC0316311CFF1631), vmull_s16(*&vextq_s8(v104, v104, 8uLL), 0xE3011631F3FD1631)));
  v115 = vaddq_s32(vpaddq_s32(vmull_s16(*v187.val[1].i8, 0xEE90E138061F1170), vmull_s16(*&vextq_s8(v187.val[1], v187.val[1], 8uLL), 0xE1381A191A19061FLL)), v106);
  v116 = vsubq_s32(v111, v186.val[1]);
  v186.val[1] = vaddq_s32(v186.val[1], v111);
  v117 = vsubq_s32(v114, v115);
  v118 = vaddq_s32(v115, v114);
  v119 = vcvtq_f32_s32(v186.val[1]);
  v120 = vcvtq_f32_s32(v116);
  v186.val[1] = vdupq_n_s32(0x39800000u);
  v121 = vcvtq_f32_s32(v117);
  v122 = vmulq_f32(vcvtq_f32_s32(v103), v186.val[1]);
  v123 = vmulq_f32(v113, v186.val[1]);
  v124 = vdupq_n_s32(0x3F2B0DC1u);
  v125 = vaddq_f32(v123, vmulq_f32(v122, v124));
  v126 = vsubq_f32(v122, vmulq_f32(v123, v124));
  v187.val[0] = vrev64q_s32(vmulq_f32(vcvtq_f32_s32(v187.val[0]), v186.val[1]));
  v187.val[0] = vextq_s8(v187.val[0], v187.val[0], 8uLL);
  v127 = vrev64q_s32(vmulq_f32(vcvtq_f32_s32(v89), v186.val[1]));
  v128 = vextq_s8(v127, v127, 8uLL);
  v129 = vaddq_f32(v128, vmulq_f32(v187.val[0], v124));
  v187.val[0] = vsubq_f32(v187.val[0], vmulq_f32(v128, v124));
  v130 = vmulq_f32(vcvtq_f32_s32(v118), v186.val[1]);
  v131 = vdupq_n_s32(0x3E4BAFAFu);
  v132 = vmulq_f32(vcvtq_f32_s32(v182), v186.val[1]);
  v133 = vaddq_f32(v132, vmulq_f32(v130, v131));
  v134 = vsubq_f32(vmulq_f32(v132, v131), v130);
  v135 = vrev64q_s32(vmulq_f32(v121, v186.val[1]));
  v136 = vextq_s8(v135, v135, 8uLL);
  v137 = vrev64q_s32(vmulq_f32(vcvtq_f32_s32(v184), v186.val[1]));
  v138 = vextq_s8(v137, v137, 8uLL);
  v139 = vaddq_f32(v138, vmulq_f32(v136, v131));
  v140 = vsubq_f32(vmulq_f32(v138, v131), v136);
  v141 = vsubq_f32(v134, v126);
  v142 = vsubq_f32(v133, v125);
  v143 = vaddq_f32(v126, v134);
  v144 = vaddq_f32(v125, v133);
  v145 = vsubq_f32(v140, v187.val[0]);
  v146 = vsubq_f32(v139, v129);
  v147 = vaddq_f32(v187.val[0], v140);
  v187.val[0] = vaddq_f32(v129, v139);
  v148 = vdupq_n_s32(0x3F3504F3u);
  v149 = vmulq_f32(vaddq_f32(v141, v142), v148);
  v150 = vmulq_f32(vsubq_f32(v142, v141), v148);
  v151 = vmulq_f32(vaddq_f32(v145, v146), v148);
  v152 = vmulq_f32(vsubq_f32(v146, v145), v148);
  v153 = vmulq_f32(v119, v186.val[1]);
  v154 = vmulq_f32(v112, v186.val[1]);
  v155 = vdupq_n_s32(0x3ED413CDu);
  v156 = vaddq_f32(v154, vmulq_f32(v153, v155));
  v157 = vsubq_f32(vmulq_f32(v154, v155), v153);
  v158 = vrev64q_s32(vmulq_f32(v120, v186.val[1]));
  v159 = vextq_s8(v158, v158, 8uLL);
  v187.val[1] = vrev64q_s32(vmulq_f32(vcvtq_f32_s32(v87), v186.val[1]));
  v187.val[1] = vextq_s8(v187.val[1], v187.val[1], 8uLL);
  v160 = vaddq_f32(v187.val[1], vmulq_f32(v159, v155));
  v187.val[1] = vsubq_f32(vmulq_f32(v187.val[1], v155), v159);
  v161 = vdupq_n_s32(0x47000080u);
  v186.val[0] = vaddq_f32(vmulq_f32(vcvtq_f32_s32(v183), v186.val[1]), v161);
  v162 = vmulq_f32(vcvtq_f32_s32(v102), v186.val[1]);
  v163 = vaddq_f32(v186.val[0], v162);
  v164 = vsubq_f32(v186.val[0], v162);
  v186.val[0] = vrev64q_s32(vaddq_f32(vmulq_f32(vcvtq_f32_s32(v185), v186.val[1]), v161));
  v186.val[0] = vextq_s8(v186.val[0], v186.val[0], 8uLL);
  v186.val[1] = vrev64q_s32(vmulq_f32(vcvtq_f32_s32(v101), v186.val[1]));
  v186.val[1] = vextq_s8(v186.val[1], v186.val[1], 8uLL);
  v165 = vaddq_f32(v186.val[0], v186.val[1]);
  v186.val[0] = vsubq_f32(v186.val[0], v186.val[1]);
  v186.val[1] = vaddq_f32(v163, v156);
  v166 = vsubq_f32(v163, v156);
  v167 = vaddq_f32(v164, v157);
  v168 = vsubq_f32(v164, v157);
  v169 = vaddq_f32(v165, v160);
  v170 = vsubq_f32(v165, v160);
  v171 = vaddq_f32(v186.val[0], v187.val[1]);
  v186.val[0] = vsubq_f32(v186.val[0], v187.val[1]);
  v172 = vaddq_f32(v168, v150);
  v173 = vsubq_f32(v168, v150);
  v174 = vaddq_f32(v167, v149);
  v187.val[1] = vsubq_f32(v167, v149);
  v175 = vaddq_f32(v186.val[1], v144);
  v176 = vsubq_f32(v186.val[1], v144);
  v177 = vaddq_f32(v170, v147);
  v178 = vsubq_f32(v170, v147);
  v186.val[1].i64[0] = 0x7F0000007FLL;
  v186.val[1].i64[1] = 0x7F0000007FLL;
  v179 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vcvtq_s32_f32(vaddq_f32(v166, v143)), v186.val[1])), vaddq_s32(vcvtq_s32_f32(v177), v186.val[1]));
  v177.i64[0] = 0x8000800080008000;
  v177.i64[1] = 0x8000800080008000;
  *a2 = veorq_s8(vqmovn_high_s32(vqmovn_s32(vaddq_s32(vcvtq_s32_f32(v175), v186.val[1])), vaddq_s32(vcvtq_s32_f32(vaddq_f32(v169, v187.val[0])), v186.val[1])), v177);
  a2[1] = veorq_s8(vqmovn_high_s32(vqmovn_s32(vaddq_s32(vcvtq_s32_f32(v174), v186.val[1])), vaddq_s32(vcvtq_s32_f32(vaddq_f32(v171, v151)), v186.val[1])), v177);
  a2[2] = veorq_s8(vqmovn_high_s32(vqmovn_s32(vaddq_s32(vcvtq_s32_f32(v172), v186.val[1])), vaddq_s32(vcvtq_s32_f32(vaddq_f32(v186.val[0], v152)), v186.val[1])), v177);
  a2[3] = veorq_s8(v179, v177);
  a2[4] = veorq_s8(vqmovn_high_s32(vqmovn_s32(vaddq_s32(vcvtq_s32_f32(vsubq_f32(v166, v143)), v186.val[1])), vaddq_s32(vcvtq_s32_f32(v178), v186.val[1])), v177);
  a2[5] = veorq_s8(vqmovn_high_s32(vqmovn_s32(vaddq_s32(vcvtq_s32_f32(v173), v186.val[1])), vaddq_s32(vcvtq_s32_f32(vsubq_f32(v186.val[0], v152)), v186.val[1])), v177);
  result = veorq_s8(vqmovn_high_s32(vqmovn_s32(vaddq_s32(vcvtq_s32_f32(v176), v186.val[1])), vaddq_s32(vcvtq_s32_f32(vsubq_f32(v169, v187.val[0])), v186.val[1])), v177);
  a2[6] = veorq_s8(vqmovn_high_s32(vqmovn_s32(vaddq_s32(vcvtq_s32_f32(v187.val[1]), v186.val[1])), vaddq_s32(vcvtq_s32_f32(vsubq_f32(v171, v151)), v186.val[1])), v177);
  a2[7] = result;
  return result;
}

int8x16_t PRRDiscreteCosineTransform::idct_4x4(int16x8_t *this, int8x16_t *a2, int64x2_t *a3, const __int16 *a4)
{
  v4 = vzip1q_s64(*a3, a3[1]);
  v5 = vzip1q_s64(a3[2], a3[3]);
  v6 = this[1];
  v7 = vmulq_s16(*this, v4);
  v8 = vuzp2q_s16(vmull_s16(*this->i8, *v4.i8), vmull_high_s16(*this, v4));
  v9 = vqmovn_s32(vzip1q_s16(v7, v8));
  *v8.i8 = vqmovn_s32(vzip2q_s16(v7, v8));
  v10 = vmulq_s16(v6, v5);
  v11 = vuzp2q_s16(vmull_s16(*v6.i8, *v5.i8), vmull_high_s16(v6, v5));
  *v6.i8 = vqmovn_s32(vzip1q_s16(v10, v11));
  *v11.i8 = vqmovn_s32(vzip2q_s16(v10, v11));
  v12 = vpaddq_s32(vmull_s16(vuzp1_s16(v9, v9), 0xE000200020002000), vmull_s16(vuzp1_s16(*v8.i8, *v8.i8), 0xD63129CF29CF29CFLL));
  v13 = vpaddq_s32(vmull_s16(vuzp2_s16(v9, v9), 0xD6311151115129CFLL), vmull_s16(vuzp2_s16(*v8.i8, *v8.i8), 0xC95F16A116A136A1));
  v14 = vaddq_s32(v13, v12);
  v15 = vrev64q_s32(vsubq_s32(v12, v13));
  v12.i64[0] = v14.i64[0];
  v12.i64[1] = v15.i64[0];
  v15.i64[0] = v14.i64[1];
  v16 = vcvtq_f32_s32(v12);
  v17 = vpaddq_s32(vmull_s16(vuzp1_s16(*v6.i8, *v6.i8), 0xE000200020002000), vmull_s16(vuzp1_s16(*v11.i8, *v11.i8), 0xD63129CF29CF29CFLL));
  v18 = vpaddq_s32(vmull_s16(vuzp2_s16(*v6.i8, *v6.i8), 0xD6311151115129CFLL), vmull_s16(vuzp2_s16(*v11.i8, *v11.i8), 0xC95F16A116A136A1));
  v19 = vaddq_s32(v18, v17);
  v20 = vrev64q_s32(vsubq_s32(v17, v18));
  v17.i64[0] = v19.i64[0];
  v17.i64[1] = v20.i64[0];
  v20.i64[0] = v19.i64[1];
  v21 = vcvtq_f32_s32(v17);
  v17.i64[0] = 0x3900000039000000;
  v17.i64[1] = 0x3900000039000000;
  v22 = vaddq_f32(vmulq_f32(v16, v17), vdupq_n_s32(0x47000080u));
  v23 = vmulq_f32(v21, v17);
  v24 = vaddq_f32(v22, v23);
  v25 = vsubq_f32(v22, v23);
  v26 = vmulq_f32(vcvtq_f32_s32(v15), v17);
  v27 = vmulq_f32(vcvtq_f32_s32(v20), v17);
  v28 = vdupq_n_s32(0x3ED413CDu);
  v29 = vaddq_f32(v26, vmulq_f32(v27, v28));
  v30 = vsubq_f32(vmulq_f32(v26, v28), v27);
  v31 = vcvtq_s32_f32(vaddq_f32(v24, v29));
  v32 = vcvtq_s32_f32(vaddq_f32(v25, v30));
  v33 = vcvtq_s32_f32(vsubq_f32(v25, v30));
  v34 = vcvtq_s32_f32(vsubq_f32(v24, v29));
  v29.i64[0] = 0x7F0000007FLL;
  v29.i64[1] = 0x7F0000007FLL;
  v35 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(v31, v29)), vaddq_s32(v32, v29));
  v32.i64[0] = 0x8000800080008000;
  v32.i64[1] = 0x8000800080008000;
  result = veorq_s8(vqmovn_high_s32(vqmovn_s32(vaddq_s32(v33, v29)), vaddq_s32(v34, v29)), v32);
  *a2 = veorq_s8(v35, v32);
  a2[1] = result;
  return result;
}

int16x4_t PRRDiscreteCosineTransform::idct_2x2(int16x4_t *this, __int16 *a2, int32x4_t *a3, const __int16 *a4, double a5, double a6, int16x8_t a7)
{
  v7 = vzip1q_s32(*a3, a3[1]);
  *a7.i8 = *this;
  v14.val[1] = vmulq_s16(a7, v7);
  v8 = vmull_s16(*this, *v7.i8);
  v14.val[0] = vuzp2q_s16(v8, v8);
  v9 = vqtbl2q_s8(v14, xmmword_2778DE610);
  *v9.i8 = vqmovn_s32(v9);
  v10 = vzip1q_s32(v9, v9);
  v11 = vpaddq_s32(vmull_s16(*v10.i8, 0xFFFF000100010001), vmull_s16(*&vextq_s8(v10, v10, 8uLL), 0xFFFF000100010001));
  v12 = vdupq_laneq_s64(v11, 1).u64[0];
  *v14.val[0].i8 = vsub_s32(*v11.i8, v12);
  *v11.i8 = vadd_s32(v12, *v11.i8);
  v11.i64[1] = v14.val[0].i64[0];
  result = vqmovn_s32(v11);
  *a2 = *&result ^ 0x8000800080008000;
  return result;
}

int16x8_t PRRDiscreteCosineTransform::idct_8x8_AVX(int16x8_t *this, int16x8_t *a2, int16x8_t *a3, const __int16 *a4)
{
  v16 = this[1];
  v17 = a3[1];
  v171.val[1] = vmulq_s16(*a3, *this);
  v18 = vuzp2q_s16(vmull_s16(*this->i8, *a3->i8), vmull_high_s16(*this, *a3));
  v171.val[0] = vzip1q_s16(v171.val[1], v18);
  *v171.val[0].i8 = vqmovn_s32(v171.val[0]);
  *v171.val[1].i8 = vqmovn_s32(vzip2q_s16(v171.val[1], v18));
  v19 = vmulq_s16(v17, v16);
  v172.val[1] = vmull_s16(*v16.i8, *v17.i8);
  v20 = vuzp2q_s16(v172.val[1], vmull_high_s16(v16, v17));
  v172.val[0] = vzip1q_s16(v19, v20);
  *v172.val[0].i8 = vqmovn_s32(v172.val[0]);
  *v172.val[1].i8 = vqmovn_s32(vzip2q_s16(v19, v20));
  v21 = this[2];
  v22 = this[3];
  v23 = a3[2];
  v24 = a3[3];
  v25 = vmulq_s16(v23, v21);
  v26 = vuzp2q_s16(vmull_s16(*v21.i8, *v23.i8), vmull_high_s16(v21, v23));
  *&v12 = vqmovn_s32(vzip1q_s16(v25, v26));
  *&v13 = vqmovn_s32(vzip2q_s16(v25, v26));
  v27 = vmulq_s16(v24, v22);
  v28 = vuzp2q_s16(vmull_s16(*v22.i8, *v24.i8), vmull_high_s16(v22, v24));
  *&v6 = vqmovn_s32(vzip1q_s16(v27, v28));
  *&v7 = vqmovn_s32(vzip2q_s16(v27, v28));
  v29 = this[4];
  v30 = this[5];
  v31 = a3[4];
  v32 = a3[5];
  v33 = vmulq_s16(v31, v29);
  v34 = vuzp2q_s16(vmull_s16(*v29.i8, *v31.i8), vmull_high_s16(v29, v31));
  *&v8 = vqmovn_s32(vzip1q_s16(v33, v34));
  *&v9 = vqmovn_s32(vzip2q_s16(v33, v34));
  v35 = vmulq_s16(v32, v30);
  v36 = vuzp2q_s16(vmull_s16(*v30.i8, *v32.i8), vmull_high_s16(v30, v32));
  *&v10 = vqmovn_s32(vzip1q_s16(v35, v36));
  *&v11 = vqmovn_s32(vzip2q_s16(v35, v36));
  v37 = this[6];
  v38 = this[7];
  v39 = a3[6];
  v40 = a3[7];
  v41 = vmulq_s16(v39, v37);
  v42 = vuzp2q_s16(vmull_s16(*v37.i8, *v39.i8), vmull_high_s16(v37, v39));
  *&v14 = vqmovn_s32(vzip1q_s16(v41, v42));
  *&v15 = vqmovn_s32(vzip2q_s16(v41, v42));
  v43 = vmulq_s16(v40, v38);
  v44 = vuzp2q_s16(vmull_s16(*v38.i8, *v40.i8), vmull_high_s16(v38, v40));
  *&v4 = vqmovn_s32(vzip1q_s16(v43, v44));
  *&v5 = vqmovn_s32(vzip2q_s16(v43, v44));
  v45 = vqtbl2q_s8(v171, xmmword_2778DE600);
  v172.val[0] = vqtbl2q_s8(v172, xmmword_2778DE600);
  v171.val[0] = vdupq_lane_s32(*v45.i8, 0);
  v171.val[1] = vdupq_lane_s32(*v172.val[0].i8, 0);
  v172.val[1] = vdupq_lane_s32(*v45.i8, 1);
  v46 = vdupq_lane_s32(*v172.val[0].i8, 1);
  v47 = vqtbl1q_s8(v45, xmmword_277875400);
  v172.val[0] = vqtbl1q_s8(v172.val[0], xmmword_277875400);
  v48 = vdupq_laneq_s32(v47, 2);
  v49 = vdupq_laneq_s32(v172.val[0], 2);
  v50 = vdupq_laneq_s32(v47, 3);
  v172.val[0] = vdupq_laneq_s32(v172.val[0], 3);
  v171.val[0] = vaddq_s32(vpaddq_s32(vmull_s16(*v48.i8, 0xEB18F00008A91000), vmull_s16(*&vextq_s8(v48, v48, 8uLL), 0xF757100014E8F000)), vpaddq_s32(vmull_s16(*v171.val[0].i8, 0x8A9100014E81000), vmull_s16(*&vextq_s8(v171.val[0], v171.val[0], 8uLL), 0xEB181000F7571000)));
  v51 = vaddq_s32(vpaddq_s32(vmull_s16(*v50.i8, 0xF36EE9CF046A0C92), vmull_s16(*&vextq_s8(v50, v50, 8uLL), 0xE9CF12D012D0046ALL)), vpaddq_s32(vmull_s16(*v172.val[1].i8, 0xFB9612D012D01631), vmull_s16(*&vextq_s8(v172.val[1], v172.val[1], 8uLL), 0xF36E046AE9CF0C92)));
  v52 = vaddq_s32(vpaddq_s32(vmull_s16(*v49.i8, 0xE301E9CF0C031631), vmull_s16(*&vextq_s8(v49, v49, 8uLL), 0xF3FD16311CFFE9CFLL)), vpaddq_s32(vmull_s16(*v171.val[1].i8, 0xC0316311CFF1631), vmull_s16(*&vextq_s8(v171.val[1], v171.val[1], 8uLL), 0xE3011631F3FD1631)));
  v171.val[1] = vaddq_s32(vpaddq_s32(vmull_s16(*v172.val[0].i8, 0xEE90E138061F1170), vmull_s16(*&vextq_s8(v172.val[0], v172.val[0], 8uLL), 0xE1381A191A19061FLL)), vpaddq_s32(vmull_s16(*v46.i8, 0xF9E11A191A191EC8), vmull_s16(*&vextq_s8(v46, v46, 8uLL), 0xEE90061FE1381170)));
  v169 = vsubq_s32(v171.val[0], v51);
  v170 = vaddq_s32(v51, v171.val[0]);
  v167 = vsubq_s32(v52, v171.val[1]);
  v168 = vaddq_s32(v171.val[1], v52);
  v53 = vqtbl2q_s8(*&v12, xmmword_2778DE600);
  v172.val[1] = vqtbl2q_s8(*&v6, xmmword_2778DE600);
  v54 = vdupq_lane_s32(*v53.i8, 0);
  v166 = vpaddq_s32(vmull_s16(*v54.i8, 0xB5014E81B5014E8), vmull_s16(*&vextq_s8(v54, v54, 8uLL), 0xE4B014E8F4B014E8));
  v55 = vqtbl2q_s8(*&v8, xmmword_2778DE600);
  v56 = vqtbl2q_s8(*&v10, xmmword_2778DE600);
  v57 = vqtbl2q_s8(*&v14, xmmword_2778DE600);
  v58 = vqtbl2q_s8(*&v4, xmmword_2778DE600);
  v59 = vdupq_lane_s32(*v172.val[1].i8, 0);
  v60 = vpaddq_s32(vmull_s16(*v59.i8, 0xA2F12D0189512D0), vmull_s16(*&vextq_s8(v59, v59, 8uLL), 0xE76B12D0F5D112D0));
  v61 = vdupq_lane_s32(*v53.i8, 1);
  v62 = vpaddq_s32(vmull_s16(*v61.i8, 0xFA3B189518951CFFLL), vmull_s16(*&vextq_s8(v61, v61, 8uLL), 0xEF9305C5E301106DLL));
  v63 = vdupq_lane_s32(*v172.val[1].i8, 1);
  v64 = vpaddq_s32(vmull_s16(*v63.i8, 0xFACF161F161F1A19), vmull_s16(*&vextq_s8(v63, v63, 8uLL), 0xF1380531E5E70EC8));
  v65 = vqtbl1q_s8(v53, xmmword_277875400);
  v66 = vdupq_laneq_s32(v65, 2);
  v67 = vqtbl1q_s8(v172.val[1], xmmword_277875400);
  v172.val[1] = vdupq_laneq_s32(v67, 2);
  v171.val[1] = vpaddq_s32(vmull_s16(*v172.val[1].i8, 0xE76BED300A2F12D0), vmull_s16(*&vextq_s8(v172.val[1], v172.val[1], 8uLL), 0xF5D112D01895ED30));
  v172.val[1] = vdupq_laneq_s32(v65, 3);
  v68 = vdupq_laneq_s32(v67, 3);
  v69 = vpaddq_s32(vmull_s16(*v68.i8, 0xF138E5E705310EC8), vmull_s16(*&vextq_s8(v68, v68, 8uLL), 0xE5E7161F161F0531));
  v70 = vaddq_s32(vpaddq_s32(vmull_s16(*v66.i8, 0xE4B0EB180B5014E8), vmull_s16(*&vextq_s8(v66, v66, 8uLL), 0xF4B014E81B50EB18)), v166);
  v71 = vaddq_s32(vpaddq_s32(vmull_s16(*v172.val[1].i8, 0xEF93E30105C5106DLL), vmull_s16(*&vextq_s8(v172.val[1], v172.val[1], 8uLL), 0xE3011895189505C5)), v62);
  v171.val[1] = vaddq_s32(v171.val[1], v60);
  v72 = vaddq_s32(v69, v64);
  v171.val[0] = vsubq_s32(v70, v71);
  v73 = vaddq_s32(v71, v70);
  v74 = vsubq_s32(v171.val[1], v72);
  v171.val[1] = vaddq_s32(v72, v171.val[1]);
  v75 = vdupq_lane_s32(*v55.i8, 0);
  v76 = vdupq_lane_s32(*v56.i8, 0);
  v77 = vdupq_lane_s32(*v55.i8, 1);
  v78 = vdupq_lane_s32(*v56.i8, 1);
  v79 = vpaddq_s32(vmull_s16(*v78.i8, 0xFACF161F161F1A19), vmull_s16(*&vextq_s8(v78, v78, 8uLL), 0xF1380531E5E70EC8));
  v80 = vqtbl1q_s8(v55, xmmword_277875400);
  v81 = vdupq_laneq_s32(v80, 2);
  v82 = vqtbl1q_s8(v56, xmmword_277875400);
  v83 = vdupq_laneq_s32(v82, 2);
  v84 = vdupq_laneq_s32(v80, 3);
  v85 = vdupq_laneq_s32(v82, 3);
  v86 = vaddq_s32(vpaddq_s32(vmull_s16(*v81.i8, 0xEB18F00008A91000), vmull_s16(*&vextq_s8(v81, v81, 8uLL), 0xF757100014E8F000)), vpaddq_s32(vmull_s16(*v75.i8, 0x8A9100014E81000), vmull_s16(*&vextq_s8(v75, v75, 8uLL), 0xEB181000F7571000)));
  v87 = vaddq_s32(vpaddq_s32(vmull_s16(*v84.i8, 0xF36EE9CF046A0C92), vmull_s16(*&vextq_s8(v84, v84, 8uLL), 0xE9CF12D012D0046ALL)), vpaddq_s32(vmull_s16(*v77.i8, 0xFB9612D012D01631), vmull_s16(*&vextq_s8(v77, v77, 8uLL), 0xF36E046AE9CF0C92)));
  v88 = vaddq_s32(vpaddq_s32(vmull_s16(*v83.i8, 0xE76BED300A2F12D0), vmull_s16(*&vextq_s8(v83, v83, 8uLL), 0xF5D112D01895ED30)), vpaddq_s32(vmull_s16(*v76.i8, 0xA2F12D0189512D0), vmull_s16(*&vextq_s8(v76, v76, 8uLL), 0xE76B12D0F5D112D0)));
  v172.val[0] = vaddq_s32(vpaddq_s32(vmull_s16(*v85.i8, 0xF138E5E705310EC8), vmull_s16(*&vextq_s8(v85, v85, 8uLL), 0xE5E7161F161F0531)), v79);
  v89 = vsubq_s32(v86, v87);
  v90 = vaddq_s32(v87, v86);
  v91 = vsubq_s32(v88, v172.val[0]);
  v92 = vaddq_s32(v172.val[0], v88);
  v172.val[0] = vdupq_lane_s32(*v57.i8, 0);
  v93 = vpaddq_s32(vmull_s16(*v172.val[0].i8, 0xB5014E81B5014E8), vmull_s16(*&vextq_s8(v172.val[0], v172.val[0], 8uLL), 0xE4B014E8F4B014E8));
  v172.val[0] = vdupq_lane_s32(*v58.i8, 0);
  v94 = vpaddq_s32(vmull_s16(*v172.val[0].i8, 0xC0316311CFF1631), vmull_s16(*&vextq_s8(v172.val[0], v172.val[0], 8uLL), 0xE3011631F3FD1631));
  v172.val[0] = vdupq_lane_s32(*v57.i8, 1);
  v95 = vpaddq_s32(vmull_s16(*v172.val[0].i8, 0xFA3B189518951CFFLL), vmull_s16(*&vextq_s8(v172.val[0], v172.val[0], 8uLL), 0xEF9305C5E301106DLL));
  v172.val[0] = vdupq_lane_s32(*v58.i8, 1);
  v96 = vpaddq_s32(vmull_s16(*v172.val[0].i8, 0xF9E11A191A191EC8), vmull_s16(*&vextq_s8(v172.val[0], v172.val[0], 8uLL), 0xEE90061FE1381170));
  v172.val[0] = vqtbl1q_s8(v57, xmmword_277875400);
  v97 = vqtbl1q_s8(v58, xmmword_277875400);
  v98 = vdupq_laneq_s32(v172.val[0], 2);
  v99 = vdupq_laneq_s32(v97, 2);
  v172.val[0] = vdupq_laneq_s32(v172.val[0], 3);
  v172.val[1] = vpaddq_s32(vmull_s16(*v172.val[0].i8, 0xEF93E30105C5106DLL), vmull_s16(*&vextq_s8(v172.val[0], v172.val[0], 8uLL), 0xE3011895189505C5));
  v172.val[0] = vdupq_laneq_s32(v97, 3);
  v100 = vpaddq_s32(vmull_s16(*v172.val[0].i8, 0xEE90E138061F1170), vmull_s16(*&vextq_s8(v172.val[0], v172.val[0], 8uLL), 0xE1381A191A19061FLL));
  v172.val[0] = vrev64q_s32(v167);
  v101 = vcvtq_f32_s32(vextq_s8(v172.val[0], v172.val[0], 8uLL));
  v171.val[0] = vrev64q_s32(v171.val[0]);
  v172.val[0] = vrev64q_s32(v74);
  v102 = vextq_s8(v172.val[0], v172.val[0], 8uLL);
  v172.val[0] = vcvtq_f32_s32(v73);
  v103 = vrev64q_s32(v91);
  v104 = vcvtq_f32_s32(vextq_s8(v103, v103, 8uLL));
  v105 = vaddq_s32(vpaddq_s32(vmull_s16(*v98.i8, 0xE4B0EB180B5014E8), vmull_s16(*&vextq_s8(v98, v98, 8uLL), 0xF4B014E81B50EB18)), v93);
  v172.val[1] = vaddq_s32(v172.val[1], v95);
  v106 = vaddq_s32(vpaddq_s32(vmull_s16(*v99.i8, 0xE301E9CF0C031631), vmull_s16(*&vextq_s8(v99, v99, 8uLL), 0xF3FD16311CFFE9CFLL)), v94);
  v107 = vaddq_s32(v100, v96);
  v108 = vsubq_s32(v105, v172.val[1]);
  v109 = vaddq_s32(v172.val[1], v105);
  v172.val[1] = vrev64q_s32(v108);
  v110 = vsubq_s32(v106, v107);
  v111 = vaddq_s32(v107, v106);
  v112 = vrev64q_s32(v110);
  v113 = vcvtq_f32_s32(v109);
  v114 = vcvtq_f32_s32(vextq_s8(v172.val[1], v172.val[1], 8uLL));
  v172.val[1] = vcvtq_f32_s32(v111);
  v115 = vdupq_n_s32(0x39800000u);
  v116 = vcvtq_f32_s32(vextq_s8(v112, v112, 8uLL));
  v117 = vmulq_f32(v104, v115);
  v118 = vmulq_f32(vcvtq_f32_s32(v92), v115);
  v171.val[1] = vmulq_f32(vcvtq_f32_s32(v171.val[1]), v115);
  v119 = vmulq_f32(vcvtq_f32_s32(v102), v115);
  v120 = vdupq_n_s32(0x3F2B0DC1u);
  v121 = vaddq_f32(v119, vmulq_f32(v117, v120));
  v122 = vaddq_f32(v171.val[1], vmulq_f32(v118, v120));
  v123 = vsubq_f32(v117, vmulq_f32(v119, v120));
  v124 = vsubq_f32(v118, vmulq_f32(v171.val[1], v120));
  v171.val[1] = vmulq_f32(v116, v115);
  v172.val[1] = vmulq_f32(v172.val[1], v115);
  v125 = vmulq_f32(vcvtq_f32_s32(v168), v115);
  v126 = vmulq_f32(v101, v115);
  v127 = vdupq_n_s32(0x3E4BAFAFu);
  v128 = vaddq_f32(v126, vmulq_f32(v171.val[1], v127));
  v129 = vaddq_f32(v125, vmulq_f32(v172.val[1], v127));
  v171.val[1] = vsubq_f32(vmulq_f32(v126, v127), v171.val[1]);
  v172.val[1] = vsubq_f32(vmulq_f32(v125, v127), v172.val[1]);
  v130 = vsubq_f32(v172.val[1], v124);
  v131 = vsubq_f32(v171.val[1], v123);
  v132 = vsubq_f32(v129, v122);
  v172.val[1] = vaddq_f32(v124, v172.val[1]);
  v133 = vsubq_f32(v128, v121);
  v134 = vaddq_f32(v123, v171.val[1]);
  v135 = vaddq_f32(v122, v129);
  v171.val[1] = vaddq_f32(v121, v128);
  v136 = vdupq_n_s32(0x3F3504F3u);
  v137 = vmulq_f32(vaddq_f32(v130, v132), v136);
  v138 = vmulq_f32(vaddq_f32(v131, v133), v136);
  v139 = vmulq_f32(vsubq_f32(v132, v130), v136);
  v140 = vmulq_f32(vsubq_f32(v133, v131), v136);
  v141 = vmulq_f32(v114, v115);
  v142 = vmulq_f32(v113, v115);
  v172.val[0] = vmulq_f32(v172.val[0], v115);
  v171.val[0] = vmulq_f32(vcvtq_f32_s32(vextq_s8(v171.val[0], v171.val[0], 8uLL)), v115);
  v143 = vdupq_n_s32(0x3ED413CDu);
  v144 = vaddq_f32(v171.val[0], vmulq_f32(v141, v143));
  v145 = vaddq_f32(v172.val[0], vmulq_f32(v142, v143));
  v171.val[0] = vsubq_f32(vmulq_f32(v171.val[0], v143), v141);
  v146 = vrev64q_s32(v169);
  v172.val[0] = vsubq_f32(vmulq_f32(v172.val[0], v143), v142);
  v147 = vmulq_f32(vcvtq_f32_s32(vextq_s8(v146, v146, 8uLL)), v115);
  v148 = vdupq_n_s32(0x47000080u);
  v149 = vaddq_f32(vmulq_f32(vcvtq_f32_s32(v170), v115), v148);
  v150 = vaddq_f32(v147, v148);
  v151 = vrev64q_s32(v89);
  v152 = vmulq_f32(vcvtq_f32_s32(v90), v115);
  v153 = vmulq_f32(vcvtq_f32_s32(vextq_s8(v151, v151, 8uLL)), v115);
  v154 = vaddq_f32(v150, v153);
  v155 = vsubq_f32(v150, v153);
  v156 = vaddq_f32(v149, v152);
  v157 = vsubq_f32(v149, v152);
  v158 = vaddq_f32(v156, v145);
  v159 = vsubq_f32(v156, v145);
  v160 = vaddq_f32(v154, v144);
  v161 = vsubq_f32(v154, v144);
  v162 = vaddq_f32(v157, v172.val[0]);
  v172.val[0] = vsubq_f32(v157, v172.val[0]);
  v163 = vaddq_f32(v155, v171.val[0]);
  v164 = vsubq_f32(v155, v171.val[0]);
  *a2 = vqmovun_high_s32(vqmovun_s32(vcvtq_s32_f32(vaddq_f32(v158, v135))), vcvtq_s32_f32(vaddq_f32(v160, v171.val[1])));
  a2[1] = vqmovun_high_s32(vqmovun_s32(vcvtq_s32_f32(vaddq_f32(v162, v137))), vcvtq_s32_f32(vaddq_f32(v163, v138)));
  a2[2] = vqmovun_high_s32(vqmovun_s32(vcvtq_s32_f32(vaddq_f32(v172.val[0], v139))), vcvtq_s32_f32(vaddq_f32(v164, v140)));
  a2[3] = vqmovun_high_s32(vqmovun_s32(vcvtq_s32_f32(vaddq_f32(v159, v172.val[1]))), vcvtq_s32_f32(vaddq_f32(v161, v134)));
  a2[4] = vqmovun_high_s32(vqmovun_s32(vcvtq_s32_f32(vsubq_f32(v159, v172.val[1]))), vcvtq_s32_f32(vsubq_f32(v161, v134)));
  a2[5] = vqmovun_high_s32(vqmovun_s32(vcvtq_s32_f32(vsubq_f32(v172.val[0], v139))), vcvtq_s32_f32(vsubq_f32(v164, v140)));
  result = vqmovun_high_s32(vqmovun_s32(vcvtq_s32_f32(vsubq_f32(v158, v135))), vcvtq_s32_f32(vsubq_f32(v160, v171.val[1])));
  a2[6] = vqmovun_high_s32(vqmovun_s32(vcvtq_s32_f32(vsubq_f32(v162, v137))), vcvtq_s32_f32(vsubq_f32(v163, v138)));
  a2[7] = result;
  return result;
}

uint64_t Bytestream::Bytestream(uint64_t result, uint64_t a2)
{
  *(result + 8) = 0;
  *result = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  v2 = *a2;
  v3 = *(a2 + 8);
  if (*a2 == v3)
  {
    *result = 1;
  }

  else
  {
    v4 = v2[1];
    *(result + 8) = *v2;
    *(result + 16) = v4;
    if (v2 + 2 != v3)
    {
      operator new();
    }
  }

  return result;
}

uint64_t Bytestream::destroy(Bytestream *this)
{
  result = *(this + 3);
  if (result)
  {
    do
    {
      v2 = *(result + 16);
      MEMORY[0x277CB0040]();
      result = v2;
    }

    while (v2);
  }

  return result;
}

uint64_t Bytestream::uSlow(Bytestream *this, int a2)
{
  result = 0;
  while (1)
  {
    while (1)
    {
      v6 = *(this + 2);
      if (!v6)
      {
        break;
      }

      v4 = *(this + 1);
      v5 = *v4;
      *(this + 1) = v4 + 1;
      *(this + 2) = v6 - 1;
      result = v5 | (result << 8);
      if (!--a2)
      {
        return result;
      }
    }

    v7 = *(this + 3);
    if (!v7)
    {
      break;
    }

    v8 = *v7;
    *(this + 3) = *(v7 + 2);
    *(this + 8) = v8;
    if (!a2)
    {
      return result;
    }
  }

  result = 0;
  *this = 1;
  return result;
}

double Bytestream::fp32Slow(Bytestream *this)
{
  v1 = 0;
  v2 = 4;
  while (1)
  {
    while (1)
    {
      v5 = *(this + 2);
      if (!v5)
      {
        break;
      }

      v3 = *(this + 1);
      v4 = *v3;
      *(this + 1) = v3 + 1;
      *(this + 2) = v5 - 1;
      v1 = v4 | (v1 << 8);
      if (!--v2)
      {
        LODWORD(v7) = v1;
        return *&v7;
      }
    }

    v6 = *(this + 3);
    if (!v6)
    {
      break;
    }

    v7 = *v6;
    *(this + 3) = *(v6 + 2);
    *(this + 8) = v7;
  }

  *this = 1;
  *&v7 = 0;
  return *&v7;
}

uint64_t Bytestream::getCopiedBytes(Bytestream *this, size_t __n, unsigned __int8 *__dst)
{
  if (!__n)
  {
    return (*this ^ 1) & 1;
  }

  v5 = __n;
  v6 = *(this + 2);
  if (v6 >= __n)
  {
LABEL_5:
    memcpy(__dst, *(this + 1), v5);
    v10 = *(this + 2) - v5;
    *(this + 1) += v5;
    *(this + 2) = v10;
    return 1;
  }

  else
  {
    while (1)
    {
      memcpy(__dst, *(this + 1), v6);
      v8 = *(this + 2);
      v7 = *(this + 3);
      if (!v7)
      {
        break;
      }

      v5 -= v8;
      __dst += v8;
      v9 = *v7;
      *(this + 3) = *(v7 + 2);
      *(this + 8) = v9;
      v6 = *(this + 2);
      if (v5 <= v6)
      {
        goto LABEL_5;
      }
    }

    *this = 1;
    *(this + 1) += v8;
    *(this + 2) = 0;
    return 0;
  }
}

uint64_t Bytestream::blockSkipIndexing(Bytestream *this, unint64_t a2)
{
  v2 = this + 8;
  while (1)
  {
    v3 = *(v2 + 2);
    if (!v3)
    {
      break;
    }

    a2 -= *(v2 + 1);
    v2 = *(v2 + 2);
    if (a2 < v3[1])
    {
      return *(*v3 + a2);
    }
  }

  return 0;
}

uint64_t Bytestream::blockSkipOffsetAssign(uint64_t this, unint64_t a2)
{
  v2 = *(this + 16);
  while (1)
  {
    v3 = *(this + 24);
    if (!v3)
    {
      break;
    }

    a2 -= v2;
    v4 = *v3;
    *(this + 24) = *(v3 + 2);
    *(this + 8) = v4;
    v2 = *(this + 16);
    if (v2 >= a2)
    {
      *(this + 8) += a2;
      *(this + 16) = v2 - a2;
      return this;
    }
  }

  *this = 1;
  *(this + 8) += v2;
  *(this + 16) = 0;
  return this;
}

void PRRFrameDecoder::PRRFrameDecoder(PRRFrameDecoder *this, int a2, void (*a3)(void))
{
  NumProcessors = a2;
  *(this + 6) = 0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  if (a2 <= 0)
  {
    NumProcessors = IcpUtility::getNumProcessors(this);
    if (NumProcessors < 1)
    {
      goto LABEL_9;
    }
  }

  {
    ThreadPool<PRRDecoderWorker,PRRDecoderJob,void>::getBlockSize(void)::cacheLineSize = getCacheLineSize();
  }

  {
    PRRFrameDecoder::PRRFrameDecoder();
  }

  v5 = ThreadPool<PRRDecoderWorker,PRRDecoderJob,void>::getBlockSize(void)::blockSize;
  v6 = -ThreadPool<PRRDecoderWorker,PRRDecoderJob,void>::getBlockSize(void)::blockSize;
  v7 = malloc_type_malloc(((ThreadPool<PRRDecoderWorker,PRRDecoderJob,void>::getBlockSize(void)::blockSize + 47) & -ThreadPool<PRRDecoderWorker,PRRDecoderJob,void>::getBlockSize(void)::blockSize) + ThreadPool<PRRDecoderWorker,PRRDecoderJob,void>::getBlockSize(void)::blockSize, 0xAF2C8CB1uLL);
  if (!v7 || (v8 = (v7 + v5) & v6, *(v8 - 8) = v7, !v8))
  {
LABEL_9:
    *(this + 6) = 0;
    exception = __cxa_allocate_exception(8uLL);
    v12 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v12, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
  }

  *v8 = NumProcessors;
  *(v8 + 8) = dispatch_get_global_queue(0, 0);
  v9 = dispatch_group_create();
  *(v8 + 16) = v9;
  atomic_store(0, (v8 + 24));
  *(v8 + 36) = 0;
  *(v8 + 28) = 0;
  *(v8 + 44) = 0;
  *(this + 6) = v8;
  isAVXAvailable = IcpUtility::isAVXAvailable(v9);
  *(this + 14) = isAVXAvailable;
  *(this + 60) = IcpUtility::isAVXAvailable(isAVXAvailable);
}

void sub_277871A18(_Unwind_Exception *a1)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    *(v1 + 32) = v3;
    operator delete(v3);
    v4 = *v1;
    if (!*v1)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v4 = *v1;
    if (!*v1)
    {
      goto LABEL_3;
    }
  }

  *(v1 + 8) = v4;
  operator delete(v4);
  _Unwind_Resume(a1);
}

uint64_t FrameHeader::parse(unsigned int *a1, Bytestream *a2)
{
  v3 = a1;
  v4 = 0;
  v5 = (a2 + 8);
  v218 = (a2 + 8);
  do
  {
    v6 = v5[1];
    v5 = v5[2];
    v4 += v6;
  }

  while (v5);
  v217 = v4;
  v7 = *(a2 + 2);
  v143 = v7 >= 2;
  v8 = v7 - 2;
  if (v143)
  {
    v9 = *(a2 + 1);
    v10 = *v9;
    *(a2 + 1) = v9 + 1;
    *(a2 + 2) = v8;
    *a1 = bswap32(v10) >> 16;
    if (!v8)
    {
      goto LABEL_34;
    }

LABEL_6:
    v11 = v8 - 1;
    ++*(a2 + 1);
    *(a2 + 2) = v11;
    if (!v11)
    {
      goto LABEL_35;
    }

    goto LABEL_7;
  }

  v71 = Bytestream::uSlow(a2, 2);
  v8 = *(a2 + 2);
  *v3 = v71;
  if (v8)
  {
    goto LABEL_6;
  }

LABEL_34:
  Bytestream::uSlow(a2, 1);
  v11 = *(a2 + 2);
  if (!v11)
  {
LABEL_35:
    v72 = Bytestream::uSlow(a2, 1);
    v73 = *(a2 + 2);
    v3[1] = v72;
    v143 = v73 >= 4;
    v15 = v73 - 4;
    if (!v143)
    {
      goto LABEL_36;
    }

LABEL_9:
    v16 = *(a2 + 1);
    v17 = bswap32(*v16);
    *(a2 + 1) = v16 + 1;
    *(a2 + 2) = v15;
    v3[2] = v17;
    v143 = v15 >= 2;
    v18 = v15 - 2;
    if (!v143)
    {
      goto LABEL_10;
    }

    goto LABEL_38;
  }

LABEL_7:
  v12 = *(a2 + 1);
  v13 = *v12;
  v14 = v11 - 1;
  *(a2 + 1) = v12 + 1;
  *(a2 + 2) = v14;
  v3[1] = v13;
  v143 = v14 >= 4;
  v15 = v14 - 4;
  if (v143)
  {
    goto LABEL_9;
  }

LABEL_36:
  v74 = Bytestream::uSlow(a2, 4);
  v75 = *(a2 + 2);
  v3[2] = v74;
  v143 = v75 >= 2;
  v18 = v75 - 2;
  if (!v143)
  {
LABEL_10:
    v19 = Bytestream::uSlow(a2, 2);
    v20 = *(a2 + 2);
    v3[3] = v19;
    v143 = v20 >= 2;
    v21 = v20 - 2;
    if (!v143)
    {
      goto LABEL_11;
    }

    goto LABEL_40;
  }

LABEL_38:
  v76 = *(a2 + 1);
  v77 = *v76;
  *(a2 + 1) = v76 + 1;
  *(a2 + 2) = v18;
  v3[3] = bswap32(v77) >> 16;
  v143 = v18 >= 2;
  v21 = v18 - 2;
  if (!v143)
  {
LABEL_11:
    v22 = Bytestream::uSlow(a2, 2);
    v21 = *(a2 + 2);
    v3[4] = v22;
    if (v21)
    {
      goto LABEL_12;
    }

    goto LABEL_41;
  }

LABEL_40:
  v78 = *(a2 + 1);
  v79 = *v78;
  *(a2 + 1) = v78 + 1;
  *(a2 + 2) = v21;
  v3[4] = bswap32(v79) >> 16;
  if (v21)
  {
LABEL_12:
    v23 = *(a2 + 1);
    v24 = *v23;
    v25 = v21 - 1;
    *(a2 + 1) = v23 + 1;
    *(a2 + 2) = v25;
    v3[5] = v24;
    if (v25)
    {
      goto LABEL_13;
    }

    goto LABEL_42;
  }

LABEL_41:
  v80 = Bytestream::uSlow(a2, 1);
  v25 = *(a2 + 2);
  v3[5] = v80;
  if (v25)
  {
LABEL_13:
    v26 = *(a2 + 1);
    v27 = *v26;
    v28 = v25 - 1;
    *(a2 + 1) = v26 + 1;
    *(a2 + 2) = v28;
    v3[6] = v27;
    if (v28)
    {
      goto LABEL_14;
    }

    goto LABEL_43;
  }

LABEL_42:
  v81 = Bytestream::uSlow(a2, 1);
  v28 = *(a2 + 2);
  v3[6] = v81;
  if (v28)
  {
LABEL_14:
    v29 = *(a2 + 1);
    v30 = *v29;
    v31 = v28 - 1;
    *(a2 + 1) = v29 + 1;
    *(a2 + 2) = v31;
    v3[7] = v30;
    if (v31)
    {
      goto LABEL_15;
    }

LABEL_44:
    v83 = Bytestream::uSlow(a2, 1);
    v84 = *(a2 + 2);
    v3[8] = v83;
    v143 = v84 >= 2;
    v35 = v84 - 2;
    if (!v143)
    {
      goto LABEL_45;
    }

LABEL_17:
    v36 = *(a2 + 1);
    v37 = bswap32(*v36);
    *(a2 + 1) = v36 + 1;
    *(a2 + 2) = v35;
    v3[9] = HIWORD(v37) & 3;
    v143 = v35 >= 2;
    v38 = v35 - 2;
    if (!v143)
    {
      goto LABEL_18;
    }

    goto LABEL_47;
  }

LABEL_43:
  v82 = Bytestream::uSlow(a2, 1);
  v31 = *(a2 + 2);
  v3[7] = v82;
  if (!v31)
  {
    goto LABEL_44;
  }

LABEL_15:
  v32 = *(a2 + 1);
  v33 = *v32;
  v34 = v31 - 1;
  *(a2 + 1) = v32 + 1;
  *(a2 + 2) = v34;
  v3[8] = v33;
  v143 = v34 >= 2;
  v35 = v34 - 2;
  if (v143)
  {
    goto LABEL_17;
  }

LABEL_45:
  v85 = Bytestream::uSlow(a2, 2);
  v86 = *(a2 + 2);
  v3[9] = v85 & 3;
  v143 = v86 >= 2;
  v38 = v86 - 2;
  if (!v143)
  {
LABEL_18:
    v39 = Bytestream::uSlow(a2, 2);
    v40 = *(a2 + 2);
    v3[10] = v39;
    v143 = v40 >= 4;
    v41 = v40 - 4;
    if (!v143)
    {
      goto LABEL_19;
    }

    goto LABEL_49;
  }

LABEL_47:
  v87 = *(a2 + 1);
  v88 = *v87;
  *(a2 + 1) = v87 + 1;
  *(a2 + 2) = v38;
  v3[10] = bswap32(v88) >> 16;
  v143 = v38 >= 4;
  v41 = v38 - 4;
  if (!v143)
  {
LABEL_19:
    v42 = Bytestream::fp32Slow(a2);
    v43 = *(a2 + 2);
    v3[11] = LODWORD(v42);
    v143 = v43 >= 4;
    v44 = v43 - 4;
    if (!v143)
    {
      goto LABEL_20;
    }

    goto LABEL_51;
  }

LABEL_49:
  v89 = *(a2 + 1);
  v90 = *v89;
  *(a2 + 1) = v89 + 1;
  *(a2 + 2) = v41;
  v3[11] = bswap32(v90);
  v143 = v41 >= 4;
  v44 = v41 - 4;
  if (!v143)
  {
LABEL_20:
    v45 = Bytestream::fp32Slow(a2);
    v44 = *(a2 + 2);
    v3[12] = LODWORD(v45);
    if (v44 <= 3)
    {
      goto LABEL_21;
    }

    goto LABEL_52;
  }

LABEL_51:
  v91 = *(a2 + 1);
  v92 = bswap32(*v91);
  *(a2 + 1) = v91 + 1;
  *(a2 + 2) = v44;
  v3[12] = v92;
  if (v44 <= 3)
  {
LABEL_21:
    v46 = Bytestream::fp32Slow(a2);
    v47 = *(a2 + 2);
    v3[13] = LODWORD(v46);
    if (v47 <= 3)
    {
      goto LABEL_22;
    }

    goto LABEL_53;
  }

LABEL_52:
  v93 = *(a2 + 1);
  v94 = bswap32(*v93);
  v47 = v44 - 4;
  *(a2 + 1) = v93 + 1;
  *(a2 + 2) = v47;
  v3[13] = v94;
  if (v47 <= 3)
  {
LABEL_22:
    v48 = Bytestream::fp32Slow(a2);
    v49 = *(a2 + 2);
    v3[14] = LODWORD(v48);
    if (v49 <= 3)
    {
      goto LABEL_23;
    }

    goto LABEL_54;
  }

LABEL_53:
  v95 = *(a2 + 1);
  v96 = bswap32(*v95);
  v49 = v47 - 4;
  *(a2 + 1) = v95 + 1;
  *(a2 + 2) = v49;
  v3[14] = v96;
  if (v49 <= 3)
  {
LABEL_23:
    v50 = Bytestream::fp32Slow(a2);
    v51 = *(a2 + 2);
    v3[15] = LODWORD(v50);
    if (v51 <= 3)
    {
      goto LABEL_24;
    }

    goto LABEL_55;
  }

LABEL_54:
  v97 = *(a2 + 1);
  v98 = bswap32(*v97);
  v51 = v49 - 4;
  *(a2 + 1) = v97 + 1;
  *(a2 + 2) = v51;
  v3[15] = v98;
  if (v51 <= 3)
  {
LABEL_24:
    v52 = Bytestream::fp32Slow(a2);
    v53 = *(a2 + 2);
    v3[16] = LODWORD(v52);
    if (v53 <= 3)
    {
      goto LABEL_25;
    }

    goto LABEL_56;
  }

LABEL_55:
  v99 = *(a2 + 1);
  v100 = bswap32(*v99);
  v53 = v51 - 4;
  *(a2 + 1) = v99 + 1;
  *(a2 + 2) = v53;
  v3[16] = v100;
  if (v53 <= 3)
  {
LABEL_25:
    v54 = Bytestream::fp32Slow(a2);
    v55 = *(a2 + 2);
    v3[17] = LODWORD(v54);
    if (v55 <= 3)
    {
      goto LABEL_26;
    }

    goto LABEL_57;
  }

LABEL_56:
  v101 = *(a2 + 1);
  v102 = bswap32(*v101);
  v55 = v53 - 4;
  *(a2 + 1) = v101 + 1;
  *(a2 + 2) = v55;
  v3[17] = v102;
  if (v55 <= 3)
  {
LABEL_26:
    v56 = Bytestream::fp32Slow(a2);
    v57 = *(a2 + 2);
    v3[18] = LODWORD(v56);
    if (v57 <= 3)
    {
      goto LABEL_27;
    }

    goto LABEL_58;
  }

LABEL_57:
  v103 = *(a2 + 1);
  v104 = bswap32(*v103);
  v57 = v55 - 4;
  *(a2 + 1) = v103 + 1;
  *(a2 + 2) = v57;
  v3[18] = v104;
  if (v57 <= 3)
  {
LABEL_27:
    v58 = Bytestream::fp32Slow(a2);
    v59 = *(a2 + 2);
    v3[19] = LODWORD(v58);
    if (v59 <= 3)
    {
      goto LABEL_28;
    }

    goto LABEL_59;
  }

LABEL_58:
  v105 = *(a2 + 1);
  v106 = bswap32(*v105);
  v59 = v57 - 4;
  *(a2 + 1) = v105 + 1;
  *(a2 + 2) = v59;
  v3[19] = v106;
  if (v59 <= 3)
  {
LABEL_28:
    v60 = Bytestream::fp32Slow(a2);
    v61 = *(a2 + 2);
    v3[20] = LODWORD(v60);
    if (v61 <= 3)
    {
      goto LABEL_29;
    }

    goto LABEL_60;
  }

LABEL_59:
  v107 = *(a2 + 1);
  v108 = bswap32(*v107);
  v61 = v59 - 4;
  *(a2 + 1) = v107 + 1;
  *(a2 + 2) = v61;
  v3[20] = v108;
  if (v61 <= 3)
  {
LABEL_29:
    v62 = Bytestream::fp32Slow(a2);
    v63 = *(a2 + 2);
    v3[21] = LODWORD(v62);
    if (v63 <= 3)
    {
      goto LABEL_30;
    }

    goto LABEL_61;
  }

LABEL_60:
  v109 = *(a2 + 1);
  v110 = bswap32(*v109);
  v63 = v61 - 4;
  *(a2 + 1) = v109 + 1;
  *(a2 + 2) = v63;
  v3[21] = v110;
  if (v63 <= 3)
  {
LABEL_30:
    v64 = Bytestream::fp32Slow(a2);
    v65 = *(a2 + 2);
    v3[22] = LODWORD(v64);
    v143 = v65 >= 2;
    v66 = v65 - 2;
    if (!v143)
    {
      goto LABEL_31;
    }

LABEL_63:
    v114 = *(a2 + 1);
    v115 = *v114;
    *(a2 + 1) = v114 + 1;
    *(a2 + 2) = v66;
    v3[23] = bswap32(v115) >> 16;
    v143 = v66 >= 2;
    v69 = v66 - 2;
    if (!v143)
    {
      goto LABEL_32;
    }

LABEL_65:
    v116 = *(a2 + 1);
    v70 = bswap32(*v116) >> 16;
    *(a2 + 1) = v116 + 1;
    *(a2 + 2) = v69;
    goto LABEL_66;
  }

LABEL_61:
  v111 = *(a2 + 1);
  v112 = *v111;
  v113 = v63 - 4;
  *(a2 + 1) = v111 + 1;
  *(a2 + 2) = v113;
  v3[22] = bswap32(v112);
  v143 = v113 >= 2;
  v66 = v113 - 2;
  if (v143)
  {
    goto LABEL_63;
  }

LABEL_31:
  v67 = Bytestream::uSlow(a2, 2);
  v68 = *(a2 + 2);
  v3[23] = v67;
  v143 = v68 >= 2;
  v69 = v68 - 2;
  if (v143)
  {
    goto LABEL_65;
  }

LABEL_32:
  v70 = Bytestream::uSlow(a2, 2);
LABEL_66:
  v3[24] = (v70 >> 5) & 1;
  v117 = vand_s8(vshl_u32(vdup_n_s32(v70), -4), 0x700000001);
  *(v3 + 25) = v117;
  v3[27] = v70 & 1;
  v219 = v3;
  if ((v70 & 1) == 0)
  {
    v222 = 1;
    if (!v117.i32[0])
    {
      goto LABEL_121;
    }

LABEL_68:
    v118 = *(a2 + 2);
    v143 = v118 >= 2;
    v119 = v118 - 2;
    if (v143)
    {
      v120 = *(a2 + 1);
      v121 = bswap32(*v120);
      v122 = HIWORD(v121);
      *(a2 + 1) = v120 + 1;
      *(a2 + 2) = v119;
      *(v3 + 120) = HIWORD(v121);
      v143 = v119 >= 2;
      v123 = v119 - 2;
      if (!v143)
      {
        goto LABEL_71;
      }
    }

    else
    {
      v180 = Bytestream::uSlow(a2, 2);
      LOWORD(v122) = v180;
      v181 = *(a2 + 2);
      *(v3 + 120) = v180;
      v143 = v181 >= 2;
      v123 = v181 - 2;
      if (!v143)
      {
LABEL_71:
        LOWORD(v124) = Bytestream::uSlow(a2, 2);
        LOWORD(v122) = *(v3 + 120);
        v123 = *(a2 + 2);
        *(v3 + 121) = v124;
        if (v123 <= 1)
        {
          goto LABEL_72;
        }

        goto LABEL_125;
      }
    }

    v182 = *(a2 + 1);
    v183 = bswap32(*v182);
    v124 = HIWORD(v183);
    *(a2 + 1) = v182 + 1;
    *(a2 + 2) = v123;
    *(v3 + 121) = HIWORD(v183);
    if (v123 <= 1)
    {
LABEL_72:
      LOWORD(v125) = Bytestream::uSlow(a2, 2);
      v126 = *(v3 + 121);
      v127 = *(a2 + 2);
      *(v3 + 122) = v125;
      if (v127 <= 1)
      {
        goto LABEL_73;
      }

      goto LABEL_126;
    }

LABEL_125:
    v184 = *(a2 + 1);
    v185 = bswap32(*v184);
    v125 = HIWORD(v185);
    v127 = v123 - 2;
    *(a2 + 1) = v184 + 1;
    *(a2 + 2) = v127;
    v126 = v124;
    *(v3 + 122) = HIWORD(v185);
    if (v127 <= 1)
    {
LABEL_73:
      LOWORD(v128) = Bytestream::uSlow(a2, 2);
      v129 = *(v3 + 122);
      v130 = *(a2 + 2);
      *(v3 + 123) = v128;
      if (v130 <= 1)
      {
        goto LABEL_74;
      }

      goto LABEL_127;
    }

LABEL_126:
    v186 = *(a2 + 1);
    v187 = bswap32(*v186);
    v128 = HIWORD(v187);
    v130 = v127 - 2;
    *(a2 + 1) = v186 + 1;
    *(a2 + 2) = v130;
    v129 = v125;
    *(v3 + 123) = HIWORD(v187);
    if (v130 <= 1)
    {
LABEL_74:
      LOWORD(v131) = Bytestream::uSlow(a2, 2);
      v132 = *(v3 + 123);
      v133 = *(a2 + 2);
      *(v3 + 124) = v131;
      if (v133 <= 1)
      {
LABEL_75:
        LOWORD(v134) = Bytestream::uSlow(a2, 2);
        v135 = *(v3 + 124);
        v136 = *(a2 + 2);
        goto LABEL_129;
      }

LABEL_128:
      v190 = *(a2 + 1);
      v134 = bswap32(*v190) >> 16;
      v136 = v133 - 2;
      *(a2 + 1) = v190 + 1;
      *(a2 + 2) = v133 - 2;
      v135 = v131;
LABEL_129:
      v221 = v122;
      v215 = v126;
      v216 = v124;
      v214 = v125;
      *(v3 + 125) = v134;
      v191 = v135;
      v192 = v134;
      if (v136 <= 1)
      {
        LOWORD(v194) = Bytestream::uSlow(a2, 2);
        v199 = *(v3 + 125);
        v195 = *(a2 + 2);
        *(v3 + 126) = v194;
        v196 = v199;
        v197 = v194;
        if (v195 <= 1)
        {
          goto LABEL_131;
        }
      }

      else
      {
        v193 = *(a2 + 1);
        v194 = bswap32(*v193) >> 16;
        v195 = v136 - 2;
        *(a2 + 1) = v193 + 1;
        *(a2 + 2) = v195;
        *(v3 + 126) = v194;
        v196 = v134;
        v197 = v194;
        if (v195 <= 1)
        {
LABEL_131:
          LOWORD(v198) = Bytestream::uSlow(a2, 2);
          LOWORD(v194) = *(v3 + 126);
LABEL_134:
          *(v3 + 127) = v198;
          v179 = v198 > v194 && v197 > v196 && v192 > v191 && v131 > v132 && v128 > v129 && v214 > v215 && v216 > v221;
          goto LABEL_155;
        }
      }

      v200 = *(a2 + 1);
      v198 = bswap32(*v200) >> 16;
      *(a2 + 1) = v200 + 1;
      *(a2 + 2) = v195 - 2;
      goto LABEL_134;
    }

LABEL_127:
    v188 = *(a2 + 1);
    v189 = bswap32(*v188);
    v131 = HIWORD(v189);
    v133 = v130 - 2;
    *(a2 + 1) = v188 + 1;
    *(a2 + 2) = v133;
    v132 = v128;
    *(v3 + 124) = HIWORD(v189);
    if (v133 <= 1)
    {
      goto LABEL_75;
    }

    goto LABEL_128;
  }

  v137 = v3;
  v138 = 0;
  v220 = v137 + 28;
  v222 = 1;
  do
  {
    v151 = *(a2 + 2);
    if (v151)
    {
      v152 = *(a2 + 1);
      v154 = *v152;
      v153 = *v152;
      v155 = v151 - 1;
      *(a2 + 1) = v152 + 1;
      *(a2 + 2) = v155;
      v156 = &v220[v138];
      LOWORD(v220[v138]) = v154;
      if (v155)
      {
        goto LABEL_106;
      }
    }

    else
    {
      v153 = Bytestream::uSlow(a2, 1);
      v155 = *(a2 + 2);
      v156 = &v220[v138];
      LOWORD(v220[v138]) = v153;
      if (v155)
      {
LABEL_106:
        v157 = *(a2 + 1);
        v159 = *v157;
        v158 = *v157;
        v160 = v155 - 1;
        *(a2 + 1) = v157 + 1;
        *(a2 + 2) = v160;
        *(v156 + 1) = v159;
        if (v160)
        {
          goto LABEL_107;
        }

        goto LABEL_114;
      }
    }

    v158 = Bytestream::uSlow(a2, 1);
    v160 = *(a2 + 2);
    *(v156 + 1) = v158;
    if (v160)
    {
LABEL_107:
      v161 = *(a2 + 1);
      v163 = *v161;
      v162 = *v161;
      v164 = v160 - 1;
      *(a2 + 1) = v161 + 1;
      *(a2 + 2) = v164;
      *(v156 + 2) = v163;
      if (v164)
      {
        goto LABEL_108;
      }

      goto LABEL_115;
    }

LABEL_114:
    v162 = Bytestream::uSlow(a2, 1);
    v164 = *(a2 + 2);
    *(v156 + 2) = v162;
    if (v164)
    {
LABEL_108:
      v165 = *(a2 + 1);
      v167 = *v165;
      v166 = *v165;
      v168 = v164 - 1;
      *(a2 + 1) = v165 + 1;
      *(a2 + 2) = v168;
      *(v156 + 3) = v167;
      if (v168)
      {
        goto LABEL_109;
      }

      goto LABEL_116;
    }

LABEL_115:
    v166 = Bytestream::uSlow(a2, 1);
    v168 = *(a2 + 2);
    *(v156 + 3) = v166;
    if (v168)
    {
LABEL_109:
      v169 = *(a2 + 1);
      v171 = *v169;
      v170 = *v169;
      v172 = v168 - 1;
      *(a2 + 1) = v169 + 1;
      *(a2 + 2) = v172;
      *(v156 + 4) = v171;
      if (v172)
      {
        goto LABEL_110;
      }

      goto LABEL_117;
    }

LABEL_116:
    v170 = Bytestream::uSlow(a2, 1);
    v172 = *(a2 + 2);
    *(v156 + 4) = v170;
    if (v172)
    {
LABEL_110:
      v173 = *(a2 + 1);
      v175 = *v173;
      v174 = *v173;
      v176 = v172 - 1;
      *(a2 + 1) = v173 + 1;
      *(a2 + 2) = v176;
      *(v156 + 5) = v175;
      if (!v176)
      {
        goto LABEL_77;
      }

      goto LABEL_118;
    }

LABEL_117:
    v174 = Bytestream::uSlow(a2, 1);
    v176 = *(a2 + 2);
    *(v156 + 5) = v174;
    if (!v176)
    {
LABEL_77:
      v139 = Bytestream::uSlow(a2, 1);
      v140 = *(a2 + 2);
      *(v156 + 6) = v139;
      if (v140)
      {
        goto LABEL_78;
      }

      goto LABEL_119;
    }

LABEL_118:
    v177 = *(a2 + 1);
    v178 = *v177;
    v139 = *v177;
    v140 = v176 - 1;
    *(a2 + 1) = v177 + 1;
    *(a2 + 2) = v140;
    *(v156 + 6) = v178;
    if (v140)
    {
LABEL_78:
      v141 = *(a2 + 1);
      v142 = *v141;
      *(a2 + 1) = v141 + 1;
      *(a2 + 2) = v140 - 1;
      goto LABEL_79;
    }

LABEL_119:
    v142 = Bytestream::uSlow(a2, 1);
LABEL_79:
    *(v156 + 7) = v142;
    v143 = (v142 - 1) >= 0x3F || (v139 - 1) >= 0x3F;
    v150 = !v143 && (v174 - 1) < 0x3F && (v170 - 1) < 0x3F && (v166 - 1) < 0x3F && (v162 - 1) < 0x3F && (v158 - 1) < 0x3F && (v153 - 1) < 0x3F;
    v222 &= v150;
    v138 += 4;
  }

  while ((v138 * 4) != 128);
  v3 = v219;
  if (v219[25])
  {
    goto LABEL_68;
  }

LABEL_121:
  v179 = 1;
LABEL_155:
  v207 = 0;
  v208 = v218;
  do
  {
    v209 = v208[1];
    v208 = v208[2];
    v207 += v209;
  }

  while (v208);
  if (*a2)
  {
    return 0;
  }

  if (v217 - v207 > *v219)
  {
    return 0;
  }

  v210 = v219[1];
  if (v210 != 1 && (v210 || v219[25]))
  {
    return 0;
  }

  result = 0;
  v212 = v219[3];
  if (v212)
  {
    if ((v212 & 1) == 0)
    {
      result = 0;
      v213 = v219[4];
      if (v213)
      {
        if ((v213 & 1) == 0)
        {
          return (v219[26] < 5) & v222 & v179;
        }
      }
    }
  }

  return result;
}

uint64_t PRRFrameDecoder::decode(uint64_t *a1, int8x16_t *this, uint64_t a3, uint64_t a4, int a5)
{
  v10 = 0;
  v148 = *MEMORY[0x277D85DE8];
  v11 = &this->i8[8];
  v114 = &this->i8[8];
  do
  {
    v12 = *(v11 + 1);
    v11 = *(v11 + 2);
    v10 += v12;
  }

  while (v11);
  v13 = this[1].u64[0];
  v14 = v13 >= 4;
  v15 = v13 - 4;
  if (v14)
  {
    v16 = this->i64[1];
    v17 = bswap32(*v16);
    this->i64[1] = (v16 + 1);
    this[1].i64[0] = v15;
    result = 4294967294;
    if (!v17)
    {
      return result;
    }
  }

  else
  {
    v19 = Bytestream::uSlow(this, 4);
    v17 = v19;
    result = 4294967294;
    if (!v17)
    {
      return result;
    }
  }

  if (v10 < v17)
  {
    return result;
  }

  v20 = this[1].u64[0];
  v14 = v20 >= 4;
  v21 = v20 - 4;
  if (v14)
  {
    v22 = this->i64[1];
    v23 = bswap32(*v22);
    this->i64[1] = (v22 + 1);
    this[1].i64[0] = v21;
    if (v23 != 1886548582)
    {
      return 4294967294;
    }
  }

  else
  {
    v24 = Bytestream::uSlow(this, 4);
    if (v24 != 1886548582)
    {
      return 4294967294;
    }
  }

  v25 = this[1];
  v121 = *this;
  v122 = v25;
  if (!FrameHeader::parse(&v129, &v121))
  {
    return 4294967294;
  }

  v26 = this[1].u64[0];
  v14 = v26 >= v129;
  v27 = v26 - v129;
  if (!v14)
  {
    Bytestream::blockSkipOffsetAssign(this, v129);
    if ((this->i8[0] & 1) == 0)
    {
      goto LABEL_17;
    }

    return 4294967294;
  }

  this->i64[1] += v129;
  this[1].i64[0] = v27;
  if (this->i8[0])
  {
    return 4294967294;
  }

LABEL_17:
  v28 = vmovn_s32(v132);
  *(a3 + 56) = vuzp1_s8(v28, v28).u32[0];
  v29 = v134;
  *(a3 + 60) = v133;
  *(a3 + 64) = 256;
  *(a3 + 68) = v29 + 256;
  *(a3 + 72) = v135;
  *(a3 + 88) = v136;
  *(a3 + 104) = v137;
  v30 = v141;
  *(a3 + 120) = v138;
  v31 = v131;
  v106 = (v130 + 15) >> 4;
  v107 = calculateNumberOfSlicesPerMBRow(v106, v30);
  if (a4 > 3 || (a5 & 1) == 0 && (*(a3 + 40) < v130 >> a4 || *(a3 + 44) < v131 >> a4))
  {
    return 4294967293;
  }

  v123 = a4;
  v110 = v131 >> a4;
  if (a4 >= 2)
  {
    if (a4 == 3)
    {
      v124 = 2;
      v125 = &unk_2778DE5D0;
      v32 = PRRDiscreteCosineTransform::idct_2x2;
    }

    else
    {
      v124 = 4;
      v125 = &unk_2778DE5C0;
      v32 = PRRDiscreteCosineTransform::idct_4x4;
    }
  }

  else
  {
    v124 = 6;
    v125 = &kBlockScanTables;
    v32 = PRRDiscreteCosineTransform::idct_8x8_AVX;
    if (!*(a1 + 60))
    {
      v32 = PRRDiscreteCosineTransform::idct_8x8;
    }
  }

  v126 = v32;
  if (v140 == 1)
  {
    v33 = &v144;
  }

  else
  {
    v33 = 0;
  }

  PRRSenselWriter::PRRSenselWriter(&v121, *(a3 + 36), *(a3 + 60), a3, *(a3 + 32), v33, a4, *(a1 + 14));
  v127 = &v121;
  if (!v122.i64[1] && !a5)
  {
    return 0xFFFFFFFFLL;
  }

  v99 = v17;
  v100 = a5;
  v35 = v31 + 15;
  v36 = v35 >> 4;
  if (v142)
  {
    v37 = &v143;
  }

  else
  {
    v37 = &PRRMacroblock::DefaultQuantizationMatrix;
  }

  v128 = v37;
  v38 = (v36 * v107);
  v105 = v35 >> 4;
  std::vector<PRRDecoderJob>::resize(a1, v36);
  v101 = a1;
  std::vector<PRRSliceDecodeParams>::resize(a1 + 3, v38);
  v39 = this[1];
  v119 = *this;
  v120 = v39;
  v40 = 2 * v38;
  v41 = this[1].u64[0];
  v14 = v41 >= v40;
  v42 = v41 - v40;
  if (v14)
  {
    this->i64[1] += v40;
    this[1].i64[0] = v42;
  }

  else
  {
    Bytestream::blockSkipOffsetAssign(this, v40);
  }

  if (this->i8[0])
  {
    return 4294967294;
  }

  v43 = *(a3 + 36);
  v44 = v121.u32[0];
  memset(__dst, 0, sizeof(__dst));
  if (v121.i32[0] >= 1)
  {
    memcpy(__dst, a3, 8 * v121.u32[0]);
  }

  v104 = a3;
  if (v35 < 0x10)
  {
    v45 = 0;
    goto LABEL_108;
  }

  v46 = 0;
  v45 = 0;
  v112 = v121.i64[1];
  v102 = v43 == 1647392369;
  v103 = 0x10u >> a4;
  v47 = a1[3];
  v48 = *a1;
  v118 = v44 & 0x7FFFFFFC;
  v49 = v110;
  while (2)
  {
    *v48 = v47;
    *(v48 + 8) = v107;
    v145 = 0u;
    v146 = 0u;
    v109 = v46;
    v108 = v48;
    if (v44 == 1)
    {
      v145.i64[0] = __dst[0].i64[0];
    }

    else
    {
      v88 = *(a3 + 60);
      if (v88 > 1)
      {
        if (v88 == 2)
        {
          v146 = *(__dst + 8);
          v145.i64[0] = __dst[0].i64[0];
          v145.i64[1] = __dst[1].i64[1];
        }

        else if (v88 == 3)
        {
          v145 = *(__dst + 8);
          v146.i64[0] = __dst[0].i64[0];
          v146.i64[1] = __dst[1].i64[1];
        }
      }

      else if (v88)
      {
        if (v88 == 1)
        {
          v146 = vextq_s8(*(__dst + 8), *(__dst + 8), 8uLL);
          v145.i64[0] = __dst[1].i64[1];
          v145.i64[1] = __dst[0].i64[0];
        }
      }

      else
      {
        v145 = vextq_s8(*(__dst + 8), *(__dst + 8), 8uLL);
        v146.i64[0] = __dst[1].i64[1];
        v146.i64[1] = __dst[0].i64[0];
      }
    }

    v50 = v103;
    v111 = v49;
    if (v49 < v103)
    {
      v50 = v49;
    }

    v115 = v50;
    v51 = v141;
    v52 = v106;
    do
    {
      v53 = 1 << v51;
      v117 = v51;
      if (v52 >= 1 << v51)
      {
        v54 = 0;
        v55 = v112 << v51;
        v113 = v47 - &v145 + 48;
        v56 = (v47 + 64);
        v116 = vdupq_n_s64(v112 << v51);
        do
        {
          if (v120.i64[0] < 2uLL)
          {
            v57 = Bytestream::uSlow(&v119, 2);
          }

          else
          {
            v57 = bswap32(*v119.i64[1]) >> 16;
            v119.i64[1] += 2;
            v120.i64[0] -= 2;
          }

          v58 = this[1];
          *v47 = *this;
          *(v47 + 16) = v58;
          *(v47 + 32) = v57;
          *(v47 + 36) = v117;
          *(v47 + 40) = v115;
          if (v44 >= 1)
          {
            v59 = 0;
            if (v44 < 4)
            {
              goto LABEL_70;
            }

            v60 = v44 & 0x7FFFFFFC;
            v61 = v56;
            v62 = &v146;
            if ((v113 + 88 * v54) < 0x20)
            {
              goto LABEL_70;
            }

            do
            {
              v63 = *v62;
              v61[-1] = v62[-1];
              *v61 = v63;
              v62 += 2;
              v61 += 2;
              v60 -= 4;
            }

            while (v60);
            v59 = v44 & 0x7FFFFFFC;
            if (v118 != v44)
            {
LABEL_70:
              v64 = 8 * v59 + 48;
              v65 = &v145.i64[v59];
              v66 = v44 - v59;
              do
              {
                v67 = *v65++;
                *(v47 + v64) = v67;
                v64 += 8;
                --v66;
              }

              while (v66);
            }
          }

          *(v47 + 80) = &v123;
          v68 = this[1].u64[0];
          if (v68 < 2)
          {
            v72 = Bytestream::blockSkipIndexing(this, 1uLL);
            v73 = this[1].u64[0];
            if (v72 > v45)
            {
              v45 = v72;
            }

            v69 = v57;
            v14 = v73 >= v57;
            v70 = v73 - v57;
            if (!v14)
            {
LABEL_82:
              Bytestream::blockSkipOffsetAssign(this, v69);
              v71 = v116;
              if (v44 < 1)
              {
                goto LABEL_61;
              }

              goto LABEL_83;
            }
          }

          else
          {
            if (*(*v114 + 1) > v45)
            {
              v45 = *(*v114 + 1);
            }

            v69 = v57;
            v14 = v68 >= v57;
            v70 = v68 - v57;
            if (!v14)
            {
              goto LABEL_82;
            }
          }

          this->i64[1] += v69;
          this[1].i64[0] = v70;
          v71 = v116;
          if (v44 < 1)
          {
            goto LABEL_61;
          }

LABEL_83:
          v74 = v44 & 0x7FFFFFFC;
          v75 = &v146;
          if (v44 >= 4)
          {
            do
            {
              v77 = vaddq_s64(*v75, v71);
              v75[-1] = vaddq_s64(v75[-1], v71);
              *v75 = v77;
              v75 += 2;
              v74 -= 4;
            }

            while (v74);
            v76 = v44 & 0x7FFFFFFC;
            if (v118 == v44)
            {
              goto LABEL_61;
            }
          }

          else
          {
            v76 = 0;
          }

          v78 = &v145.i64[v76];
          v79 = v44 - v76;
          do
          {
            *v78++ += v55;
            --v79;
          }

          while (v79);
LABEL_61:
          v47 += 88;
          v52 -= v53;
          ++v54;
          v56 = (v56 + 88);
        }

        while (v52 >= v53);
      }

      v51 = v117 - 1;
    }

    while (v52);
    a3 = v104;
    if (v44 >= 1)
    {
      v80 = *(v104 + 32) * (v115 >> v102);
      v81 = v44 & 0x7FFFFFFC;
      v82 = &__dst[1];
      if (v44 < 4)
      {
        v83 = 0;
        goto LABEL_95;
      }

      do
      {
        v84 = vdupq_n_s64(v80);
        v85 = vaddq_s64(*v82, v84);
        v82[-1] = vaddq_s64(v82[-1], v84);
        *v82 = v85;
        v82 += 2;
        v81 -= 4;
      }

      while (v81);
      v83 = v44 & 0x7FFFFFFC;
      if (v118 != v44)
      {
LABEL_95:
        v86 = &__dst[0].i64[v83];
        v87 = v44 - v83;
        do
        {
          *v86++ += v80;
          --v87;
        }

        while (v87);
      }
    }

    v49 = v111 - v115;
    v48 = v108 + 16;
    v46 = v109 + 1;
    if (v109 + 1 != v105)
    {
      continue;
    }

    break;
  }

  if (this->i8[0])
  {
    return 4294967294;
  }

LABEL_108:
  *(a3 + 124) = v45 * *v128;
  SharedDataBuffer::reset((a3 + 128));
  v34 = v99;
  if (v139)
  {
    v89 = 0;
    v90 = this[1];
    v145 = *this;
    v146 = v90;
    while (1)
    {
      v91 = v146.i64[0] - 4;
      if (v146.i64[0] >= 4uLL)
      {
        v92 = bswap32(*v145.i64[1]);
        v145.i64[1] += 4;
        v146.i64[0] -= 4;
      }

      else
      {
        v92 = Bytestream::uSlow(&v145, 4);
        v91 = v146.i64[0];
      }

      v14 = v91 >= 4;
      v93 = v91 - 4;
      if (v14)
      {
        v94 = bswap32(*v145.i64[1]);
        v145.i64[1] += 4;
        v146.i64[0] = v93;
      }

      else
      {
        v94 = Bytestream::uSlow(&v145, 4);
      }

      if ((v145.i8[0] & 1) != 0 || v92 < 8)
      {
        break;
      }

      v95 = v92 - 8;
      if (v146.i64[0] >= v95)
      {
        v145.i64[1] += v95;
        v146.i64[0] -= v92 - 8;
      }

      else
      {
        Bytestream::blockSkipOffsetAssign(&v145, v95);
        if (v145.i8[0])
        {
          break;
        }
      }

      v89 += v92;
      if (v94 == 1701801316)
      {
        if (v89)
        {
          BackingBytes = SharedDataBuffer::allocateBackingBytes(v89);
          if (BackingBytes)
          {
            v97 = BackingBytes;
            Bytes = Bytestream::getBytes(this, v89, BackingBytes);
            if (Bytes != v97)
            {
              memcpy(v97, Bytes, v89);
            }

            SharedDataBuffer::reset((v104 + 128), v97, v89);
          }
        }

        break;
      }
    }
  }

  if ((v100 & 1) == 0)
  {
    ThreadPool<PRRDecoderWorker,PRRDecoderJob,void>::runJobs(v101[6], *v101, (v101[1] - *v101) >> 4);
  }

  return v34;
}

void std::vector<PRRDecoderJob>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<PRRDecoderJob>::__append(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 16 * a2;
  }
}

void std::vector<PRRSliceDecodeParams>::resize(void *a1, unint64_t a2)
{
  v2 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<PRRSliceDecodeParams>::__append(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 88 * a2;
  }
}

unsigned __int8 *Bytestream::getBytes(Bytestream *this, size_t a2, unsigned __int8 *a3)
{
  if (*this)
  {
    return 0;
  }

  v4 = *(this + 2);
  v5 = v4 >= a2;
  v6 = v4 - a2;
  if (v5)
  {
    v8 = *(this + 1);
    *(this + 1) = v8 + a2;
    *(this + 2) = v6;
    return v8;
  }

  else if (Bytestream::getCopiedBytes(this, a2, a3))
  {
    return a3;
  }

  else
  {
    return 0;
  }
}

intptr_t ThreadPool<PRRDecoderWorker,PRRDecoderJob,void>::runJobs(void *context, uint64_t a2, int a3)
{
  atomic_store(0, context + 6);
  *(context + 7) = a3;
  *(context + 4) = a2;
  if (*context >= 1)
  {
    v4 = 0;
    do
    {
      dispatch_group_async_f(*(context + 2), *(context + 1), context, ThreadPool<PRRDecoderWorker,PRRDecoderJob,void>::dispatch_routine);
      ++v4;
    }

    while (v4 < *context);
  }

  v5 = *(context + 2);

  return dispatch_group_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
}

void std::vector<PRRDecoderJob>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 4)
  {
    if (a2)
    {
      v10 = 16 * a2;
      bzero(*(a1 + 8), 16 * a2);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 4) + a2;
    if (v7 >> 60)
    {
      std::vector<__CVBuffer *>::__throw_length_error[abi:ne200100]();
    }

    v8 = v3 - v5;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 60))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = (16 * (v6 >> 4));
    v12 = 16 * a2;
    bzero(v11, 16 * a2);
    memcpy(0, v5, v6);
    *a1 = 0;
    *(a1 + 8) = &v11[v12];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void std::vector<PRRSliceDecodeParams>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (0x2E8BA2E8BA2E8BA3 * ((v3 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v9 = 88 * ((88 * a2 - 88) / 0x58) + 88;
      bzero(*(a1 + 8), v9);
      v4 += v9;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = 0x2E8BA2E8BA2E8BA3 * ((v4 - *a1) >> 3) + a2;
    if (v6 > 0x2E8BA2E8BA2E8BALL)
    {
      std::vector<__CVBuffer *>::__throw_length_error[abi:ne200100]();
    }

    v7 = 0x2E8BA2E8BA2E8BA3 * ((v3 - v5) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x1745D1745D1745DLL)
    {
      v8 = 0x2E8BA2E8BA2E8BALL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (v8 <= 0x2E8BA2E8BA2E8BALL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v10 = (8 * ((v4 - *a1) >> 3));
    v11 = 88 * ((88 * a2 - 88) / 0x58) + 88;
    bzero(v10, v11);
    v12 = v4 - v5;
    v13 = &v10[-(v4 - v5)];
    memcpy(v13, v5, v12);
    *a1 = v13;
    *(a1 + 8) = &v10[v11];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void ThreadPool<PRRDecoderWorker,PRRDecoderJob,void>::dispatch_routine(uint64_t a1)
{
  {
    ThreadPool<PRRDecoderWorker,PRRDecoderJob,void>::getBlockSize(void)::cacheLineSize = getCacheLineSize();
  }

  {
    PRRFrameDecoder::PRRFrameDecoder();
  }

  v2 = ThreadPool<PRRDecoderWorker,PRRDecoderJob,void>::getBlockSize(void)::blockSize;
  v3 = -ThreadPool<PRRDecoderWorker,PRRDecoderJob,void>::getBlockSize(void)::blockSize;
  v4 = malloc_type_malloc(((ThreadPool<PRRDecoderWorker,PRRDecoderJob,void>::getBlockSize(void)::blockSize + 143) & -ThreadPool<PRRDecoderWorker,PRRDecoderJob,void>::getBlockSize(void)::blockSize) + ThreadPool<PRRDecoderWorker,PRRDecoderJob,void>::getBlockSize(void)::blockSize, 0xAF2C8CB1uLL);
  if (v4)
  {
    v5 = ((v4 + v2) & v3);
    *(v5 - 1) = v4;
    if (v5)
    {
      PRRSliceDecoder::PRRSliceDecoder(v5);
      for (i = atomic_fetch_add_explicit((a1 + 24), 1u, memory_order_relaxed); i < *(a1 + 28); i = atomic_fetch_add_explicit((a1 + 24), 1u, memory_order_relaxed))
      {
        v7 = *(a1 + 32);
        if ((enabledSignpostCategories() & 0x1000000) != 0)
        {
          kdebug_trace();
          PRRDecoderWorker::runJob(v5, (v7 + 16 * i));
          if ((enabledSignpostCategories() & 0x1000000) != 0)
          {
LABEL_13:
            kdebug_trace();
          }
        }

        else
        {
          PRRDecoderWorker::runJob(v5, (v7 + 16 * i));
          if ((enabledSignpostCategories() & 0x1000000) != 0)
          {
            goto LABEL_13;
          }
        }
      }

      v8 = *(v5 - 1);

      free(v8);
    }
  }
}

void PRRFrameDecoder::PRRFrameDecoder()
{
  {
    v0 = ThreadPool<PRRDecoderWorker,PRRDecoderJob,void>::getBlockSize(void)::cacheLineSize;
    if (!ThreadPool<PRRDecoderWorker,PRRDecoderJob,void>::getBlockSize(void)::cacheLineSize)
    {
      v0 = 256;
    }

    ThreadPool<PRRDecoderWorker,PRRDecoderJob,void>::getBlockSize(void)::blockSize = v0;
  }
}

uint64_t PRRSenselWriter::PRRSenselWriter(uint64_t result, int a2, unsigned int a3, uint64_t a4, uint64_t a5, __int16 *a6, int a7)
{
  v7 = 0;
  *result = 0;
  *(result + 16) = a5;
  if (a2 == 1647392369)
  {
    v8 = 8;
  }

  else
  {
    v8 = 16;
  }

  v9 = v8 >> a7;
  if (a2 > 1647392368)
  {
    if (a2 == 1647392369 || a2 == 1651519798)
    {
      v7 = 2;
      goto LABEL_13;
    }

    if (a2 != 1651521076)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (a2 == 1380410945)
  {
    v10 = 0;
    *(result + 8) = 16 * v9;
    goto LABEL_27;
  }

  if (a2 == 1380411457)
  {
LABEL_11:
    v7 = 8;
  }

LABEL_13:
  *(result + 8) = v7 * v9;
  v10 = from_GbGrBR_to_b16q__scalar;
  switch(a2)
  {
    case 1647392369:
      v12 = 4;
      goto LABEL_24;
    case 1651521076:
      if ((a7 - 1) < 3)
      {
        v11 = (&off_28866B9F8 + (a7 - 1));
        goto LABEL_20;
      }

LABEL_21:
      v10 = 0;
      goto LABEL_22;
    case 1651519798:
      if (a3 < 4)
      {
        v11 = &off_28866B9D8[a3];
LABEL_20:
        v10 = *v11;
LABEL_22:
        v12 = 1;
LABEL_24:
        *result = v12;
        goto LABEL_27;
      }

      goto LABEL_21;
  }

  v10 = 0;
LABEL_27:
  *(result + 24) = v10;
  v13 = &PRRSenselWriter::defaultTransferFunction_x;
  if (a6)
  {
    v13 = a6;
  }

  v14 = *v13;
  *(result + 32) = *v13;
  *(result + 48) = v13[1] - v14;
  v15 = v13[1];
  *(result + 34) = v15;
  *(result + 50) = v13[2] - v15;
  v16 = v13[2];
  *(result + 36) = v16;
  *(result + 52) = v13[3] - v16;
  v17 = v13[3];
  *(result + 38) = v17;
  *(result + 54) = v13[4] - v17;
  v18 = v13[4];
  *(result + 40) = v18;
  *(result + 56) = v13[5] - v18;
  v19 = v13[5];
  *(result + 42) = v19;
  *(result + 58) = v13[6] - v19;
  v20 = v13[6];
  *(result + 44) = v20;
  *(result + 60) = v13[7] - v20;
  v21 = v13[7];
  *(result + 46) = v21;
  *(result + 62) = -v21;
  return result;
}

uint64_t *from_GbGrBR_to_b16q__scalar(uint64_t *result, const unsigned __int16 *a2, const unsigned __int16 *a3, const unsigned __int16 *a4, const unsigned __int16 *a5, uint64_t a6, unsigned int a7, const unsigned __int16 *a8, const unsigned __int16 *a9)
{
  if (a7 >= 2)
  {
    v9 = 0;
    v11 = result[2];
    v10 = result[3];
    v12 = *result;
    v13 = result[1];
    do
    {
      v14 = 0;
      result = (v13 + a6);
      do
      {
        v15 = ((a2[v14] & 0x1FFF) * *(a9 + ((a2[v14] >> 12) & 0xELL)) + (*(a8 + ((a2[v14] >> 12) & 0xELL)) << 13) + 4096) >> 13;
        if (v15 >= 0xFFFF)
        {
          LOWORD(v15) = -1;
        }

        *(v12 + v14 * 2) = v15;
        v16 = ((a3[v14] & 0x1FFF) * *(a9 + ((a3[v14] >> 12) & 0xELL)) + (*(a8 + ((a3[v14] >> 12) & 0xELL)) << 13) + 4096) >> 13;
        if (v16 >= 0xFFFF)
        {
          LOWORD(v16) = -1;
        }

        *(v13 + v14 * 2) = v16;
        v17 = ((a4[v14] & 0x1FFF) * *(a9 + ((a4[v14] >> 12) & 0xELL)) + (*(a8 + ((a4[v14] >> 12) & 0xELL)) << 13) + 4096) >> 13;
        if (v17 >= 0xFFFF)
        {
          LOWORD(v17) = -1;
        }

        *(v11 + v14 * 2) = v17;
        v18 = ((a5[v14] & 0x1FFF) * *(a9 + ((a5[v14] >> 12) & 0xELL)) + (*(a8 + ((a5[v14] >> 12) & 0xELL)) << 13) + 4096) >> 13;
        if (v18 >= 0xFFFF)
        {
          LOWORD(v18) = -1;
        }

        *(v10 + v14 * 2) = v18;
        ++v14;
      }

      while ((v14 * 2) != 16);
      ++v9;
      a2 = (a2 + v14 * 2);
      a3 = (a3 + v14 * 2);
      a4 = (a4 + v14 * 2);
      a5 = (a5 + v14 * 2);
      v12 += a6;
      v13 += a6;
      v11 += a6;
      v10 += a6;
    }

    while (v9 != a7 >> 1);
  }

  return result;
}

uint64_t *from_GBR_to_bp64_8x8__scalar(uint64_t *result, const unsigned __int16 *a2, const unsigned __int16 *a3, const unsigned __int16 *a4, const unsigned __int16 *a5, uint64_t a6, int a7, const unsigned __int16 *a8, const unsigned __int16 *a9)
{
  if (a7)
  {
    v9 = 0;
    v10 = *result;
    do
    {
      v11 = 0;
      do
      {
        v12 = (v10 + v11);
        v13 = ((*a5 & 0x1FFF) * *(a9 + ((*a5 >> 12) & 0xELL)) + (*(a8 + ((*a5 >> 12) & 0xELL)) << 13) + 4096) >> 13;
        if (v13 >= 0xFFFF)
        {
          LOWORD(v13) = -1;
        }

        *v12 = v13;
        v14 = ((*a2 & 0x1FFF) * *(a9 + ((*a2 >> 12) & 0xELL)) + (*(a8 + ((*a2 >> 12) & 0xELL)) << 13) + 4096) >> 13;
        if (v14 >= 0xFFFF)
        {
          LOWORD(v14) = -1;
        }

        v12[1] = v14;
        v15 = ((*a4 & 0x1FFF) * *(a9 + ((*a4 >> 12) & 0xELL)) + (*(a8 + ((*a4 >> 12) & 0xELL)) << 13) + 4096) >> 13;
        if (v15 >= 0xFFFF)
        {
          LOWORD(v15) = -1;
        }

        v12[3] = -1;
        v12[2] = v15;
        v16 = ((a5[1] & 0x1FFF) * *(a9 + ((a5[1] >> 12) & 0xELL)) + (*(a8 + ((a5[1] >> 12) & 0xELL)) << 13) + 4096) >> 13;
        if (v16 >= 0xFFFF)
        {
          LOWORD(v16) = -1;
        }

        v12[4] = v16;
        v17 = a2[1];
        v18 = v17 & 0x1FFF;
        v19 = (v17 >> 12) & 0xELL;
        v20 = *(a8 + v19);
        v21 = *(a9 + v19);
        v22 = a5 + 2;
        v23 = (v18 * v21 + (v20 << 13) + 4096) >> 13;
        v24 = a2 + 2;
        if (v23 >= 0xFFFF)
        {
          LOWORD(v23) = -1;
        }

        v12[5] = v23;
        v25 = a4[1];
        v26 = (v25 >> 12) & 0xELL;
        result = *(a8 + v26);
        LODWORD(v26) = (v25 & 0x1FFF) * *(a9 + v26);
        v27 = a4 + 2;
        v28 = (v26 + (result << 13) + 4096) >> 13;
        if (v28 >= 0xFFFF)
        {
          LOWORD(v28) = -1;
        }

        v12[6] = v28;
        v12[7] = -1;
        v11 += 16;
        a2 += 2;
        a4 += 2;
        a5 += 2;
      }

      while (v11 != 64);
      v10 += a6;
      ++v9;
      a2 = v24;
      a4 = v27;
      a5 = v22;
    }

    while (v9 != a7);
  }

  return result;
}

void *from_GBR_to_bp64_4x4__scalar(void *result, const unsigned __int16 *a2, const unsigned __int16 *a3, const unsigned __int16 *a4, const unsigned __int16 *a5, uint64_t a6, int a7, const unsigned __int16 *a8, const unsigned __int16 *a9)
{
  if (a7)
  {
    v9 = (*result + 16);
    do
    {
      v10 = ((*a5 & 0x1FFF) * *(a9 + ((*a5 >> 12) & 0xELL)) + (*(a8 + ((*a5 >> 12) & 0xELL)) << 13) + 4096) >> 13;
      if (v10 >= 0xFFFF)
      {
        LOWORD(v10) = -1;
      }

      *(v9 - 8) = v10;
      v11 = ((*a2 & 0x1FFF) * *(a9 + ((*a2 >> 12) & 0xELL)) + (*(a8 + ((*a2 >> 12) & 0xELL)) << 13) + 4096) >> 13;
      if (v11 >= 0xFFFF)
      {
        LOWORD(v11) = -1;
      }

      *(v9 - 7) = v11;
      v12 = ((*a4 & 0x1FFF) * *(a9 + ((*a4 >> 12) & 0xELL)) + (*(a8 + ((*a4 >> 12) & 0xELL)) << 13) + 4096) >> 13;
      if (v12 >= 0xFFFF)
      {
        LOWORD(v12) = -1;
      }

      *(v9 - 6) = v12;
      *(v9 - 5) = -1;
      v13 = ((a5[1] & 0x1FFF) * *(a9 + ((a5[1] >> 12) & 0xELL)) + (*(a8 + ((a5[1] >> 12) & 0xELL)) << 13) + 4096) >> 13;
      if (v13 >= 0xFFFF)
      {
        LOWORD(v13) = -1;
      }

      *(v9 - 4) = v13;
      v14 = ((a2[1] & 0x1FFF) * *(a9 + ((a2[1] >> 12) & 0xELL)) + (*(a8 + ((a2[1] >> 12) & 0xELL)) << 13) + 4096) >> 13;
      if (v14 >= 0xFFFF)
      {
        LOWORD(v14) = -1;
      }

      *(v9 - 3) = v14;
      v15 = ((a4[1] & 0x1FFF) * *(a9 + ((a4[1] >> 12) & 0xELL)) + (*(a8 + ((a4[1] >> 12) & 0xELL)) << 13) + 4096) >> 13;
      if (v15 >= 0xFFFF)
      {
        LOWORD(v15) = -1;
      }

      *(v9 - 2) = v15;
      *(v9 - 1) = -1;
      v16 = ((a5[2] & 0x1FFF) * *(a9 + ((a5[2] >> 12) & 0xELL)) + (*(a8 + ((a5[2] >> 12) & 0xELL)) << 13) + 4096) >> 13;
      if (v16 >= 0xFFFF)
      {
        LOWORD(v16) = -1;
      }

      *v9 = v16;
      v17 = ((a2[2] & 0x1FFF) * *(a9 + ((a2[2] >> 12) & 0xELL)) + (*(a8 + ((a2[2] >> 12) & 0xELL)) << 13) + 4096) >> 13;
      if (v17 >= 0xFFFF)
      {
        LOWORD(v17) = -1;
      }

      v9[1] = v17;
      v18 = ((a4[2] & 0x1FFF) * *(a9 + ((a4[2] >> 12) & 0xELL)) + (*(a8 + ((a4[2] >> 12) & 0xELL)) << 13) + 4096) >> 13;
      if (v18 >= 0xFFFF)
      {
        LOWORD(v18) = -1;
      }

      v9[2] = v18;
      v9[3] = -1;
      v19 = ((a5[3] & 0x1FFF) * *(a9 + ((a5[3] >> 12) & 0xELL)) + (*(a8 + ((a5[3] >> 12) & 0xELL)) << 13) + 4096) >> 13;
      if (v19 >= 0xFFFF)
      {
        LOWORD(v19) = -1;
      }

      v9[4] = v19;
      v20 = ((a2[3] & 0x1FFF) * *(a9 + ((a2[3] >> 12) & 0xELL)) + (*(a8 + ((a2[3] >> 12) & 0xELL)) << 13) + 4096) >> 13;
      if (v20 >= 0xFFFF)
      {
        LOWORD(v20) = -1;
      }

      v9[5] = v20;
      v21 = ((a4[3] & 0x1FFF) * *(a9 + ((a4[3] >> 12) & 0xELL)) + (*(a8 + ((a4[3] >> 12) & 0xELL)) << 13) + 4096) >> 13;
      if (v21 >= 0xFFFF)
      {
        LOWORD(v21) = -1;
      }

      v9[6] = v21;
      v9[7] = -1;
      v9 = (v9 + a6);
      a5 += 4;
      a2 += 4;
      a4 += 4;
      --a7;
    }

    while (a7);
  }

  return result;
}

void *from_GBR_to_bp64_2x2__scalar(void *result, const unsigned __int16 *a2, const unsigned __int16 *a3, const unsigned __int16 *a4, const unsigned __int16 *a5, uint64_t a6, int a7, const unsigned __int16 *a8, const unsigned __int16 *a9)
{
  if (a7)
  {
    v9 = (*result + 8);
    do
    {
      v10 = ((*a5 & 0x1FFF) * *(a9 + ((*a5 >> 12) & 0xELL)) + (*(a8 + ((*a5 >> 12) & 0xELL)) << 13) + 4096) >> 13;
      if (v10 >= 0xFFFF)
      {
        LOWORD(v10) = -1;
      }

      *(v9 - 4) = v10;
      v11 = ((*a2 & 0x1FFF) * *(a9 + ((*a2 >> 12) & 0xELL)) + (*(a8 + ((*a2 >> 12) & 0xELL)) << 13) + 4096) >> 13;
      if (v11 >= 0xFFFF)
      {
        LOWORD(v11) = -1;
      }

      *(v9 - 3) = v11;
      v12 = ((*a4 & 0x1FFF) * *(a9 + ((*a4 >> 12) & 0xELL)) + (*(a8 + ((*a4 >> 12) & 0xELL)) << 13) + 4096) >> 13;
      if (v12 >= 0xFFFF)
      {
        LOWORD(v12) = -1;
      }

      *(v9 - 2) = v12;
      *(v9 - 1) = -1;
      v13 = ((a5[1] & 0x1FFF) * *(a9 + ((a5[1] >> 12) & 0xELL)) + (*(a8 + ((a5[1] >> 12) & 0xELL)) << 13) + 4096) >> 13;
      if (v13 >= 0xFFFF)
      {
        LOWORD(v13) = -1;
      }

      *v9 = v13;
      v14 = ((a2[1] & 0x1FFF) * *(a9 + ((a2[1] >> 12) & 0xELL)) + (*(a8 + ((a2[1] >> 12) & 0xELL)) << 13) + 4096) >> 13;
      if (v14 >= 0xFFFF)
      {
        LOWORD(v14) = -1;
      }

      v9[1] = v14;
      v15 = ((a4[1] & 0x1FFF) * *(a9 + ((a4[1] >> 12) & 0xELL)) + (*(a8 + ((a4[1] >> 12) & 0xELL)) << 13) + 4096) >> 13;
      if (v15 >= 0xFFFF)
      {
        LOWORD(v15) = -1;
      }

      v9[2] = v15;
      v9[3] = -1;
      v9 = (v9 + a6);
      a5 += 2;
      a2 += 2;
      a4 += 2;
      --a7;
    }

    while (a7);
  }

  return result;
}

uint64_t from_GbGrBR_to_bp16__scalar<(CFAPattern)0>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, uint64_t a8, uint64_t a9)
{
  if (a7 >= 2)
  {
    v9 = 0;
    v10 = *result + 2;
    v11 = (v10 + a6);
    v12 = 2 * a6;
    do
    {
      v13 = 0;
      v14 = v10;
      v15 = v11;
      do
      {
        v16 = ((*(a5 + v13) & 0x1FFF) * *(a9 + ((*(a5 + v13) >> 12) & 0xELL)) + (*(a8 + ((*(a5 + v13) >> 12) & 0xELL)) << 13) + 4096) >> 13;
        if (v16 >= 0xFFFF)
        {
          LOWORD(v16) = -1;
        }

        *(v14 - 1) = v16;
        v17 = ((*(a3 + v13) & 0x1FFF) * *(a9 + ((*(a3 + v13) >> 12) & 0xELL)) + (*(a8 + ((*(a3 + v13) >> 12) & 0xELL)) << 13) + 4096) >> 13;
        if (v17 >= 0xFFFF)
        {
          LOWORD(v17) = -1;
        }

        *v14 = v17;
        v14 += 2;
        v18 = ((*(a2 + v13) & 0x1FFF) * *(a9 + ((*(a2 + v13) >> 12) & 0xELL)) + (*(a8 + ((*(a2 + v13) >> 12) & 0xELL)) << 13) + 4096) >> 13;
        if (v18 >= 0xFFFF)
        {
          LOWORD(v18) = -1;
        }

        *(v15 - 1) = v18;
        LODWORD(result) = ((*(a4 + v13) & 0x1FFF) * *(a9 + ((*(a4 + v13) >> 12) & 0xELL)) + (*(a8 + ((*(a4 + v13) >> 12) & 0xELL)) << 13) + 4096) >> 13;
        if (result >= 0xFFFF)
        {
          result = 0xFFFFLL;
        }

        else
        {
          result = result;
        }

        *v15 = result;
        v15 += 2;
        v13 += 2;
      }

      while (v13 != 16);
      ++v9;
      a5 += v13;
      v11 = (v11 + v12);
      v10 += v12;
      a2 += v13;
      a3 += v13;
      a4 += v13;
    }

    while (v9 != a7 >> 1);
  }

  return result;
}

uint64_t from_GbGrBR_to_bp16__scalar<(CFAPattern)1>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, uint64_t a8, uint64_t a9)
{
  if (a7 >= 2)
  {
    v9 = 0;
    v10 = *result + 2;
    v11 = (v10 + a6);
    v12 = 2 * a6;
    do
    {
      v13 = 0;
      v14 = v10;
      v15 = v11;
      do
      {
        v16 = ((*(a3 + v13) & 0x1FFF) * *(a9 + ((*(a3 + v13) >> 12) & 0xELL)) + (*(a8 + ((*(a3 + v13) >> 12) & 0xELL)) << 13) + 4096) >> 13;
        if (v16 >= 0xFFFF)
        {
          LOWORD(v16) = -1;
        }

        *(v14 - 1) = v16;
        v17 = ((*(a5 + v13) & 0x1FFF) * *(a9 + ((*(a5 + v13) >> 12) & 0xELL)) + (*(a8 + ((*(a5 + v13) >> 12) & 0xELL)) << 13) + 4096) >> 13;
        if (v17 >= 0xFFFF)
        {
          LOWORD(v17) = -1;
        }

        *v14 = v17;
        v14 += 2;
        v18 = ((*(a4 + v13) & 0x1FFF) * *(a9 + ((*(a4 + v13) >> 12) & 0xELL)) + (*(a8 + ((*(a4 + v13) >> 12) & 0xELL)) << 13) + 4096) >> 13;
        if (v18 >= 0xFFFF)
        {
          LOWORD(v18) = -1;
        }

        *(v15 - 1) = v18;
        LODWORD(result) = ((*(a2 + v13) & 0x1FFF) * *(a9 + ((*(a2 + v13) >> 12) & 0xELL)) + (*(a8 + ((*(a2 + v13) >> 12) & 0xELL)) << 13) + 4096) >> 13;
        if (result >= 0xFFFF)
        {
          result = 0xFFFFLL;
        }

        else
        {
          result = result;
        }

        *v15 = result;
        v15 += 2;
        v13 += 2;
      }

      while (v13 != 16);
      ++v9;
      a5 += v13;
      v11 = (v11 + v12);
      v10 += v12;
      a2 += v13;
      a3 += v13;
      a4 += v13;
    }

    while (v9 != a7 >> 1);
  }

  return result;
}

uint64_t from_GbGrBR_to_bp16__scalar<(CFAPattern)2>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, uint64_t a8, uint64_t a9)
{
  if (a7 >= 2)
  {
    v9 = 0;
    v10 = *result + 2;
    v11 = (v10 + a6);
    v12 = 2 * a6;
    do
    {
      v13 = 0;
      v14 = v10;
      v15 = v11;
      do
      {
        v16 = ((*(a2 + v13) & 0x1FFF) * *(a9 + ((*(a2 + v13) >> 12) & 0xELL)) + (*(a8 + ((*(a2 + v13) >> 12) & 0xELL)) << 13) + 4096) >> 13;
        if (v16 >= 0xFFFF)
        {
          LOWORD(v16) = -1;
        }

        *(v14 - 1) = v16;
        v17 = ((*(a4 + v13) & 0x1FFF) * *(a9 + ((*(a4 + v13) >> 12) & 0xELL)) + (*(a8 + ((*(a4 + v13) >> 12) & 0xELL)) << 13) + 4096) >> 13;
        if (v17 >= 0xFFFF)
        {
          LOWORD(v17) = -1;
        }

        *v14 = v17;
        v14 += 2;
        v18 = ((*(a5 + v13) & 0x1FFF) * *(a9 + ((*(a5 + v13) >> 12) & 0xELL)) + (*(a8 + ((*(a5 + v13) >> 12) & 0xELL)) << 13) + 4096) >> 13;
        if (v18 >= 0xFFFF)
        {
          LOWORD(v18) = -1;
        }

        *(v15 - 1) = v18;
        LODWORD(result) = ((*(a3 + v13) & 0x1FFF) * *(a9 + ((*(a3 + v13) >> 12) & 0xELL)) + (*(a8 + ((*(a3 + v13) >> 12) & 0xELL)) << 13) + 4096) >> 13;
        if (result >= 0xFFFF)
        {
          result = 0xFFFFLL;
        }

        else
        {
          result = result;
        }

        *v15 = result;
        v15 += 2;
        v13 += 2;
      }

      while (v13 != 16);
      ++v9;
      a5 += v13;
      v11 = (v11 + v12);
      v10 += v12;
      a2 += v13;
      a3 += v13;
      a4 += v13;
    }

    while (v9 != a7 >> 1);
  }

  return result;
}

uint64_t from_GbGrBR_to_bp16__scalar<(CFAPattern)3>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, uint64_t a8, uint64_t a9)
{
  if (a7 >= 2)
  {
    v9 = 0;
    v10 = *result + 2;
    v11 = (v10 + a6);
    v12 = 2 * a6;
    do
    {
      v13 = 0;
      v14 = v10;
      v15 = v11;
      do
      {
        v16 = ((*(a4 + v13) & 0x1FFF) * *(a9 + ((*(a4 + v13) >> 12) & 0xELL)) + (*(a8 + ((*(a4 + v13) >> 12) & 0xELL)) << 13) + 4096) >> 13;
        if (v16 >= 0xFFFF)
        {
          LOWORD(v16) = -1;
        }

        *(v14 - 1) = v16;
        v17 = ((*(a2 + v13) & 0x1FFF) * *(a9 + ((*(a2 + v13) >> 12) & 0xELL)) + (*(a8 + ((*(a2 + v13) >> 12) & 0xELL)) << 13) + 4096) >> 13;
        if (v17 >= 0xFFFF)
        {
          LOWORD(v17) = -1;
        }

        *v14 = v17;
        v14 += 2;
        v18 = ((*(a3 + v13) & 0x1FFF) * *(a9 + ((*(a3 + v13) >> 12) & 0xELL)) + (*(a8 + ((*(a3 + v13) >> 12) & 0xELL)) << 13) + 4096) >> 13;
        if (v18 >= 0xFFFF)
        {
          LOWORD(v18) = -1;
        }

        *(v15 - 1) = v18;
        LODWORD(result) = ((*(a5 + v13) & 0x1FFF) * *(a9 + ((*(a5 + v13) >> 12) & 0xELL)) + (*(a8 + ((*(a5 + v13) >> 12) & 0xELL)) << 13) + 4096) >> 13;
        if (result >= 0xFFFF)
        {
          result = 0xFFFFLL;
        }

        else
        {
          result = result;
        }

        *v15 = result;
        v15 += 2;
        v13 += 2;
      }

      while (v13 != 16);
      ++v9;
      a5 += v13;
      v11 = (v11 + v12);
      v10 += v12;
      a2 += v13;
      a3 += v13;
      a4 += v13;
    }

    while (v9 != a7 >> 1);
  }

  return result;
}

__n128 getSenselSitingOffsets(int a1, int a2, float *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v13[0] = -(0.5 / (1 << a2));
  v13[1] = v13[0];
  v13[2] = v13[0];
  v14 = 0.5 / (1 << a2);
  v15 = v14;
  v16 = v14;
  v17 = 0;
  v11[0] = v14;
  v11[1] = v13[0];
  v11[2] = v14;
  v11[3] = v14;
  v11[4] = v13[0];
  v11[5] = v14;
  v12 = 0;
  v9[0] = v13[0];
  v9[1] = v14;
  v9[2] = v13[0];
  v9[3] = v13[0];
  v9[4] = v14;
  v9[5] = v13[0];
  v10 = 0;
  v7[0] = v14;
  v7[1] = v14;
  v7[2] = v14;
  v7[3] = v13[0];
  v7[4] = v13[0];
  v7[5] = v13[0];
  v8 = 0;
  memset(v6, 0, sizeof(v6));
  if (!a2)
  {
    goto LABEL_9;
  }

  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v3 = v9;
      goto LABEL_10;
    }

    if (a1 == 3)
    {
      v3 = v7;
      goto LABEL_10;
    }

LABEL_9:
    v3 = v6;
    goto LABEL_10;
  }

  if (!a1)
  {
    v3 = v13;
    goto LABEL_10;
  }

  if (a1 != 1)
  {
    goto LABEL_9;
  }

  v3 = v11;
LABEL_10:
  result = *v3;
  v5 = *(v3 + 1);
  *a3 = *v3;
  *(a3 + 1) = v5;
  return result;
}

void IcpVideoDecoder::pixelFormatsOrderedByQuality()
{
  OUTLINED_FUNCTION_0();
  dispatch_once_f(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_0();
  dispatch_once_f(v0, v1, v2);
}

void IcpVideoDecoder::pixelFormatsOrderedByPerformance()
{
  OUTLINED_FUNCTION_0();
  dispatch_once_f(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_0();
  dispatch_once_f(v0, v1, v2);
}

void IcpVideoDecoder::pixelFormatsWithReducedResolutionSupport()
{
  OUTLINED_FUNCTION_0();
  dispatch_once_f(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_0();
  dispatch_once_f(v0, v1, v2);
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}