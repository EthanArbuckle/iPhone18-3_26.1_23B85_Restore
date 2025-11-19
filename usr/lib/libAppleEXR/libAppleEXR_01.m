uint64_t ExtractInterleaved4_B44<unsigned int,(StreamType)1,(StreamType)0,(StreamType)1,(StreamType)0>(uint64_t result, unint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int32x2_t *a11, unsigned int *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (!result)
  {
    return result;
  }

  v22 = result;
  if (*&a11[1] >= a2)
  {
    v23 = a2;
  }

  else
  {
    v23 = a11[1];
  }

  v24 = vmin_u32(vmls_s32(*(*(*(*(a3 + 8) + 40) + 8 * a11[7].u32[1]) + 16), *(*(a3 + 8) + 48), a11[3]), *(*(a3 + 8) + 48)).u32[0];
  AXRStreamB44<unsigned int,(StreamType)0>::AXRStreamB44(&v224, a4);
  v25 = vmin_u32(vmls_s32(*(*(*(*(a5 + 8) + 40) + 8 * a11[7].u32[1]) + 16), *(*(a5 + 8) + 48), a11[3]), *(*(a5 + 8) + 48)).u32[0];
  result = AXRStreamB44<unsigned int,(StreamType)0>::AXRStreamB44(&v223, a6);
  v27 = 12 * v25 + 16;
  if (12 * v24 + 16 > v27)
  {
    v27 = 12 * v24 + 16;
  }

  v28 = *&v23 - v27;
  if (*&v23 < v27)
  {
    return result;
  }

  v29 = *(a13 + 60);
  v30 = *(a3 + 8);
  if (v30)
  {
    v31 = a11[3];
    v32 = *(*(v30 + 40) + 8 * a11[7].u32[1]);
    v33 = *(v32 + 12) - 1;
    if (v33 >= (v31.i32[1] * v29))
    {
      v33 = (HIDWORD(*&a11[3]) * v29);
    }

    v34 = v32 + 8 * v31.u32[0];
    if (*(v30 + 104) == 1)
    {
      v35 = (*(v34 + 24) + 8 * v33);
    }

    else
    {
      v37 = (v33 * *(v30 + 108)) >> *(v30 + 112);
      v38 = *(v32 + 20) - 1;
      if (v37 >= v38)
      {
        LODWORD(v37) = v38;
      }

      v35 = (*(v34 + 24) + 8 * v37);
    }

    v36 = *v35;
  }

  else
  {
    v36 = 0;
  }

  v39 = a4[1];
  if (v39)
  {
    v40 = a11[3];
    v41 = *(*(v39 + 40) + 8 * a11[7].u32[1]);
    v42 = *(v41 + 12) - 1;
    if (v42 >= (v40.i32[1] * v29))
    {
      v42 = (HIDWORD(*&a11[3]) * v29);
    }

    v43 = v41 + 8 * v40.u32[0];
    if (*(v39 + 104) == 1)
    {
      v44 = (*(v43 + 24) + 8 * v42);
    }

    else
    {
      v46 = (v42 * *(v39 + 108)) >> *(v39 + 112);
      v47 = *(v41 + 20) - 1;
      if (v46 >= v47)
      {
        LODWORD(v46) = v47;
      }

      v44 = (*(v43 + 24) + 8 * v46);
    }

    v45 = *v44;
  }

  else
  {
    v45 = 0;
  }

  v48 = *(a5 + 8);
  if (v48)
  {
    v49 = a11[3];
    v50 = *(*(v48 + 40) + 8 * a11[7].u32[1]);
    v51 = *(v50 + 12) - 1;
    if (v51 >= (v49.i32[1] * v29))
    {
      v51 = (HIDWORD(*&a11[3]) * v29);
    }

    v52 = v50 + 8 * v49.u32[0];
    if (*(v48 + 104) == 1)
    {
      v53 = (*(v52 + 24) + 8 * v51);
    }

    else
    {
      v55 = (v51 * *(v48 + 108)) >> *(v48 + 112);
      v56 = *(v50 + 20) - 1;
      if (v55 >= v56)
      {
        LODWORD(v55) = v56;
      }

      v53 = (*(v52 + 24) + 8 * v55);
    }

    v54 = *v53;
  }

  else
  {
    v54 = 0;
  }

  v57 = v28 + v22;
  v58 = a6[1];
  if (v58)
  {
    v59 = a11[3];
    v60 = (v59.i32[1] * v29);
    v61 = *(*(v58 + 40) + 8 * a11[7].u32[1]);
    v62 = *(v61 + 12) - 1;
    if (v62 >= v60)
    {
      v62 = v60;
    }

    v63 = v61 + 8 * v59.u32[0];
    if (*(v58 + 104) == 1)
    {
      v64 = (*(v63 + 24) + 8 * v62);
    }

    else
    {
      v66 = (v62 * *(v58 + 108)) >> *(v58 + 112);
      v67 = *(v61 + 20) - 1;
      if (v66 < v67)
      {
        v67 = v66;
      }

      v64 = (*(v63 + 24) + 8 * v67);
    }

    v65 = *v64;
  }

  else
  {
    v65 = 0;
  }

  v68 = v45 + v22;
  v69 = v65 + v22;
  v70 = a12[2];
  v71 = v69 > v57;
  v72 = v68 > v57;
  v73 = v68 > v57;
  v74 = v72 || v71;
  v75 = a12[6];
  if (v70 > v75)
  {
    return result;
  }

  v77 = 4 * v24;
  v78 = 4 * v25;
  result = 16 * v24;
  v79.i64[0] = __PAIR64__(v223, v224);
  v79.i64[1] = __PAIR64__(v223, v224);
  v80 = 16 * v25;
  v81 = *a12;
  v82 = (v36 + v22 + 16 * v81 + 16 * v24 * v70);
  v83 = (v54 + v22 + 16 * v81 + 16 * v25 * v70);
  while (1)
  {
    v84 = a14 + a17;
    v85 = a14 + a17 + a17;
    v86 = v85 + a17;
    if (!a16)
    {
      v89 = v85 + a17;
      goto LABEL_69;
    }

    if (v70 == a12[2])
    {
      v87 = a12[3] + 1;
      v88 = a14;
      a14 += a17;
      v84 = v85;
      v85 += a17;
      do
      {
        v89 = v85;
        v85 = v84;
        v84 = a14;
        a14 = v88;
        v88 = a16;
        --v87;
      }

      while (v87);
    }

    else
    {
      v89 = v85 + a17;
    }

    if (v70 == v75)
    {
      v90 = a12[7];
      switch(v90)
      {
        case 1u:
          goto LABEL_67;
        case 2u:
          goto LABEL_66;
        case 3u:
          v84 = a16;
LABEL_66:
          v85 = a16;
LABEL_67:
          v86 = a16;
          goto LABEL_69;
      }
    }

    v86 = v89;
LABEL_69:
    v92 = *a12;
    v91 = a12[1];
    if (!v91)
    {
      v152 = a12[4];
      v153 = v82;
      v154 = v83;
      goto LABEL_89;
    }

    v93 = v82 > v57 || v73;
    if (v83 > v57)
    {
      v93 = 1;
    }

    if ((v93 | v71))
    {
      return result;
    }

    v26.i32[0] = 0;
    v94 = *(v82 + v77);
    v95 = (v82 + v77 + v77);
    v96 = *v95;
    v97 = *(v95 + v77);
    v98 = *v83;
    v99 = *(v83 + v78);
    v100 = (v83 + v78 + v78);
    v101 = *v100;
    v102 = *(v100 + v78);
    v103 = vuzp1q_s32(v94, v99);
    v104 = vzip1q_s32(vuzp1q_s32(v103, v103), v79);
    v105 = vuzp2q_s32(v94, v99);
    v99.i32[0] = *(&v82->i64[1] + v77);
    v106 = vzip1q_s32(vuzp1q_s32(v99, v99), v79);
    v107 = vzip2q_s32(vuzp1q_s32(v105, v105), v79);
    v108 = vtrn2q_s32(v105, v94);
    v109 = vzip2q_s32(vuzp1q_s32(v108, v108), v79);
    v110 = vuzp1q_s32(v96, *v100);
    v111 = vuzp2q_s32(v96, *v100);
    v101.i32[0] = v96.i32[2];
    v112 = vzip1q_s32(vuzp1q_s32(v110, v110), v79);
    v113 = vzip1q_s32(vuzp1q_s32(v101, v101), v79);
    v114 = vzip2q_s32(vuzp1q_s32(v111, v111), v79);
    v115 = vtrn2q_s32(v111, v96);
    v116 = vzip2q_s32(vuzp1q_s32(v115, v115), v79);
    v117 = vuzp1q_s32(v97, v102);
    v118 = vzip1q_s32(vuzp1q_s32(v117, v117), v79);
    v119 = vuzp2q_s32(v97, v102);
    v102.i32[0] = v97.i32[2];
    v120 = vzip1q_s32(vuzp1q_s32(v102, v102), v79);
    v121 = vzip2q_s32(vuzp1q_s32(v119, v119), v79);
    v122 = vtrn2q_s32(v119, v97);
    v123 = vzip2q_s32(vuzp1q_s32(v122, v122), v79);
    v124 = vuzp1q_s32(*v82, *v83);
    v125 = vzip1q_s32(vuzp1q_s32(v124, v124), v79);
    v126 = vuzp2q_s32(*v82, *v83);
    v98.i32[0] = v82->i64[1];
    v127 = vzip1q_s32(vuzp1q_s32(v98, v98), v79);
    v128 = vzip2q_s32(vuzp1q_s32(v126, v126), v79);
    v129 = vtrn2q_s32(v126, *v82);
    v130 = vuzp1q_s32(v129, v129);
    v131 = vzip2q_s32(v130, v79);
    if (a12[4] == v92)
    {
      v132 = 4 - a12[5];
    }

    else
    {
      v132 = 4;
    }

    v130.i32[0] = a12[1] & 2;
    v133 = vdupq_lane_s32(*&vceqq_s32(v130, v26), 0);
    v134 = vbslq_s8(v133, v121, v123);
    v135 = vbslq_s8(v133, v118, v120);
    v136 = vbslq_s8(v133, v114, v116);
    v137 = vbslq_s8(v133, v112, v113);
    v138 = vbslq_s8(v133, v107, v109);
    v139 = vbslq_s8(v133, v104, v106);
    v140 = vbslq_s8(v133, v128, v131);
    if ((v91 & 2) != 0)
    {
      v132 -= 2;
    }

    v141 = v91 & 1;
    v142 = v132 - v141;
    v17.i32[0] = v141;
    v17 = vdupq_lane_s32(*&vmvnq_s8(vceqq_s32(v17, v26)), 0);
    v143 = vbslq_s8(v17, v138, v139);
    v144 = vbslq_s8(v17, v136, v137);
    v26 = vbslq_s8(v17, v134, v135);
    v145 = vbslq_s8(v17, v140, vbslq_s8(v133, v125, v127));
    if (v132 - v141 <= 1)
    {
      v151 = 0;
    }

    else
    {
      v146 = vbslq_s8(v133, v120, v118);
      v147 = vbslq_s8(v133, v113, v112);
      v148 = vbslq_s8(v133, v106, v104);
      v149 = vbslq_s8(v133, v109, v107);
      v150 = vbslq_s8(v133, v127, v125);
      *a14 = v145;
      *(a14 + 16) = vbslq_s8(v17, v150, v140);
      v145 = vbslq_s8(v17, vbslq_s8(v133, v131, v128), v150);
      *v84 = v143;
      *(v84 + 16) = vbslq_s8(v17, v148, v138);
      *v85 = v144;
      *(v85 + 16) = vbslq_s8(v17, v147, v136);
      v142 -= 2;
      *v86 = v26;
      *(v86 + 16) = vbslq_s8(v17, v146, v134);
      v143 = vbslq_s8(v17, v149, v148);
      v144 = vbslq_s8(v17, vbslq_s8(v133, v116, v114), v147);
      v26 = vbslq_s8(v17, vbslq_s8(v133, v123, v121), v146);
      v151 = 32;
    }

    if (v142 >= 1)
    {
      *(v151 + a14) = v145;
      *(v151 + v84) = v143;
      *(v151 + v85) = v144;
      *(v151 + v86) = v26;
      v151 |= 0x10uLL;
    }

    v152 = a12[4];
    if (v152 != v92)
    {
      break;
    }

LABEL_133:
    a14 = v89 + a17;
    v83 = (v83 + v80);
    v82 = (v82 + result);
    v75 = a12[6];
    if (v70++ >= v75)
    {
      return result;
    }
  }

  v153 = v82 + 1;
  v154 = v83 + 1;
  a14 += v151;
  v84 += v151;
  v85 += v151;
  v86 += v151;
  ++v92;
LABEL_89:
  v155 = a12[5];
  v156 = v155 != 0;
  if (v152 == 0 && v156 || (v157 = v152 - v156, v92 > v157))
  {
    v181 = a14;
    v182 = v84;
    v183 = v85;
    v184 = v86;
    if (v155)
    {
LABEL_99:
      v185 = 4 - a12[7];
      if (v70 != a12[6])
      {
        v185 = 4;
      }

      v186 = v153 > v57 || v73;
      if (v154 > v57)
      {
        v186 = 1;
      }

      if ((v186 | v71))
      {
        return result;
      }

      if (v185 < 2)
      {
        v188 = 0;
        v187 = v153;
        v189 = v153;
      }

      else
      {
        v187 = (v153->i64 + v77);
        if (v185 == 2)
        {
          v188 = 0;
          v189 = (v153->i64 + v77);
        }

        else
        {
          v189 = (v153->i64 + v77);
          v187 = (v187 + v77);
          if (v185 <= 3)
          {
            v188 = 0;
          }

          else
          {
            v188 = v77;
          }
        }
      }

      v190 = (v187 + v188);
      v191 = 0uLL;
      v192 = 0uLL;
      v26 = 0uLL;
      v193 = 0uLL;
      if ((4 - v155))
      {
        v193.i32[0] = v153->i32[3 - v155];
        v191.i32[0] = *(v189 + 3 - v155);
        v192.i32[0] = *(v187 + 3 - v155);
        v26.i32[0] = *(v190 + 3 - v155);
      }

      if (((4 - v155) & 2) != 0)
      {
        v194.i64[0] = v153->i64[0];
        v194.i64[1] = v193.i64[0];
        v195.i64[0] = *v189;
        v195.i64[1] = v191.i64[0];
        v196.i64[0] = *v187;
        v196.i64[1] = v192.i64[0];
        v197.i64[0] = *v190;
        v197.i64[1] = v26.i64[0];
        v191 = v195;
        v192 = v196;
        v26 = v197;
        v193 = v194;
      }

      if (v185 < 2)
      {
        v199 = 0;
        v198 = v154;
        v200 = v154;
      }

      else
      {
        v198 = (v154->i64 + v78);
        if (v185 == 2)
        {
          v199 = 0;
          v200 = (v154->i64 + v78);
        }

        else
        {
          v200 = (v154->i64 + v78);
          v198 = (v198 + v78);
          if (v185 <= 3)
          {
            v199 = 0;
          }

          else
          {
            v199 = v78;
          }
        }
      }

      v201 = (v198 + v199);
      v202 = 0uLL;
      v203 = 0uLL;
      v204 = 0uLL;
      v205 = 0uLL;
      if ((4 - v155))
      {
        v205.i32[0] = v154->i32[3 - v155];
        v202.i32[0] = *(v200 + 3 - v155);
        v203.i32[0] = *(v198 + 3 - v155);
        v204.i32[0] = *(v201 + 3 - v155);
      }

      if (((4 - v155) & 2) != 0)
      {
        v206.i64[0] = v154->i64[0];
        v206.i64[1] = v205.i64[0];
        v207.i64[0] = *v200;
        v207.i64[1] = v202.i64[0];
        v208.i64[0] = *v198;
        v208.i64[1] = v203.i64[0];
        v209.i64[0] = *v201;
        v209.i64[1] = v204.i64[0];
        v202 = v207;
        v203 = v208;
        v204 = v209;
        v205 = v206;
      }

      v210 = vuzp1q_s32(v193, v205);
      v211 = vzip1q_s32(vuzp1q_s32(v210, v210), v79);
      v212 = vuzp1q_s32(v191, v202);
      v213 = vzip1q_s32(vuzp1q_s32(v212, v212), v79);
      v214 = vuzp1q_s32(v192, v203);
      v215 = vzip1q_s32(vuzp1q_s32(v214, v214), v79);
      v216 = vuzp1q_s32(v26, v204);
      v217 = vzip1q_s32(vuzp1q_s32(v216, v216), v79);
      if (((4 - v155) & 2) != 0)
      {
        v218 = vuzp2q_s32(v193, v205);
        v219 = vuzp2q_s32(v191, v202);
        v220 = vuzp2q_s32(v192, v203);
        v221 = vuzp2q_s32(v26, v204);
        *v181 = v211;
        v181[1] = vzip2q_s32(vuzp1q_s32(v218, v218), v79);
        *v182 = v213;
        v182[1] = vzip2q_s32(vuzp1q_s32(v219, v219), v79);
        *v183 = v215;
        v183[1] = vzip2q_s32(vuzp1q_s32(v220, v220), v79);
        *v184 = v217;
        v184[1] = vzip2q_s32(vuzp1q_s32(v221, v221), v79);
        if ((4 - v155))
        {
          v205.i32[0] = v193.i32[2];
          v202.i32[0] = v191.i32[2];
          v203.i32[0] = v192.i32[2];
          v204.i32[0] = v26.i32[2];
          v181[2] = vzip1q_s32(vuzp1q_s32(v205, v205), v79);
          v182[2] = vzip1q_s32(vuzp1q_s32(v202, v202), v79);
          v26 = vzip1q_s32(vuzp1q_s32(v204, v204), v79);
          v183[2] = vzip1q_s32(vuzp1q_s32(v203, v203), v79);
          v184[2] = v26;
        }
      }

      else
      {
        *v181 = v211;
        *v182 = v213;
        *v183 = v215;
        *v184 = v217;
      }
    }

    goto LABEL_133;
  }

  if (!v74)
  {
    v158 = v157 - v92 + 1;
    while (v153 <= v57 && v154 <= v57)
    {
      v159 = *v153;
      v160 = *(v153 + v77);
      v161 = (v153 + v77 + v77);
      v162 = *v161;
      v163 = *(v161 + v77);
      v164 = *v154;
      v165 = *(v154 + v78);
      v166 = (v154 + v78 + v78);
      v167 = *(v166 + v78);
      v168 = vuzp2q_s32(v163, v167);
      v26 = vzip2q_s32(vuzp1q_s32(v168, v168), v79);
      v169 = vuzp1q_s32(v163, v167);
      v170 = vtrn2q_s32(v168, v163);
      v171 = *v166;
      v167.i32[0] = v163.i32[2];
      v172 = vuzp2q_s32(v162, *v166);
      v173 = vuzp1q_s32(v162, *v166);
      v171.i32[0] = v162.i32[2];
      v174 = vuzp2q_s32(v160, v165);
      v175 = vuzp1q_s32(v160, v165);
      v165.i32[0] = *(&v153->i64[1] + v77);
      v176 = vuzp2q_s32(*v153, *v154);
      v177 = vuzp1q_s32(*v153, *v154);
      v164.i32[0] = v153->i64[1];
      *a14 = vzip1q_s32(vuzp1q_s32(v177, v177), v79);
      *(a14 + 16) = vzip2q_s32(vuzp1q_s32(v176, v176), v79);
      v178 = vtrn2q_s32(v172, v162);
      v179 = vtrn2q_s32(v176, v159);
      *(a14 + 32) = vzip1q_s32(vuzp1q_s32(v164, v164), v79);
      *(a14 + 48) = vzip2q_s32(vuzp1q_s32(v179, v179), v79);
      *v84 = vzip1q_s32(vuzp1q_s32(v175, v175), v79);
      *(v84 + 16) = vzip2q_s32(vuzp1q_s32(v174, v174), v79);
      v180 = vtrn2q_s32(v174, v160);
      *(v84 + 32) = vzip1q_s32(vuzp1q_s32(v165, v165), v79);
      *(v84 + 48) = vzip2q_s32(vuzp1q_s32(v180, v180), v79);
      *v85 = vzip1q_s32(vuzp1q_s32(v173, v173), v79);
      *(v85 + 16) = vzip2q_s32(vuzp1q_s32(v172, v172), v79);
      ++v154;
      ++v153;
      v181 = (a14 + 64);
      *(v85 + 32) = vzip1q_s32(vuzp1q_s32(v171, v171), v79);
      *(v85 + 48) = vzip2q_s32(vuzp1q_s32(v178, v178), v79);
      v182 = (v84 + 64);
      v183 = (v85 + 64);
      v184 = (v86 + 64);
      *(v86 + 32) = vzip1q_s32(vuzp1q_s32(v167, v167), v79);
      *(v86 + 48) = vzip2q_s32(vuzp1q_s32(v170, v170), v79);
      *v86 = vzip1q_s32(vuzp1q_s32(v169, v169), v79);
      *(v86 + 16) = v26;
      v86 += 64;
      v85 += 64;
      v84 += 64;
      a14 += 64;
      if (!--v158)
      {
        v155 = a12[5];
        if (v155)
        {
          goto LABEL_99;
        }

        goto LABEL_133;
      }
    }
  }

  return result;
}

int8x16_t *ExtractInterleaved4_B44<unsigned short,(StreamType)0,(StreamType)1,(StreamType)1,(StreamType)0>(int8x16_t *result, unint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int32x2_t *a11, unsigned int *a12, uint64_t a13, int8x16_t *a14, uint64_t a15, int8x16_t *a16, uint64_t a17)
{
  if (!result)
  {
    return result;
  }

  v23 = result;
  v24 = *&a11[1] >= a2 ? a2 : *&a11[1];
  AXRStreamB44<unsigned short,(StreamType)0>::AXRStreamB44(v236, a3);
  v25 = a11[7].u32[1];
  v26 = a11[3];
  v27 = vmin_u32(vmls_s32(*(*(*(*(a4 + 8) + 40) + 8 * v25) + 16), *(*(a4 + 8) + 48), v26), *(*(a4 + 8) + 48)).u32[0];
  v28 = v27 <= 0xFFFFFFFC ? (v27 + 3) >> 2 : 0x40000000;
  v29 = vmin_u32(vmls_s32(*(*(*(*(a5 + 8) + 40) + 8 * v25) + 16), *(*(a5 + 8) + 48), v26), *(*(a5 + 8) + 48)).u32[0];
  v30 = v29 <= 0xFFFFFFFC ? (v29 + 3) >> 2 : 0x40000000;
  result = AXRStreamB44<unsigned short,(StreamType)0>::AXRStreamB44(&v235, a6);
  if (v24 < 0xE)
  {
    return result;
  }

  v31 = *(a13 + 60);
  v32 = a3[1];
  if (v32)
  {
    v33 = a11[3];
    v34 = *(*(v32 + 40) + 8 * a11[7].u32[1]);
    v35 = *(v34 + 12) - 1;
    if (v35 >= (v33.i32[1] * v31))
    {
      v35 = (HIDWORD(*&a11[3]) * v31);
    }

    v36 = v34 + 8 * v33.u32[0];
    if (*(v32 + 104) == 1)
    {
      v37 = (*(v36 + 24) + 8 * v35);
    }

    else
    {
      v39 = (v35 * *(v32 + 108)) >> *(v32 + 112);
      v40 = *(v34 + 20) - 1;
      if (v39 >= v40)
      {
        LODWORD(v39) = v40;
      }

      v37 = (*(v36 + 24) + 8 * v39);
    }

    v38 = *v37;
  }

  else
  {
    v38 = 0;
  }

  v41 = *(a4 + 8);
  if (v41)
  {
    v42 = a11[3];
    v43 = *(*(v41 + 40) + 8 * a11[7].u32[1]);
    v44 = *(v43 + 12) - 1;
    if (v44 >= (v42.i32[1] * v31))
    {
      v44 = (HIDWORD(*&a11[3]) * v31);
    }

    v45 = v43 + 8 * v42.u32[0];
    if (*(v41 + 104) == 1)
    {
      v46 = (*(v45 + 24) + 8 * v44);
    }

    else
    {
      v48 = (v44 * *(v41 + 108)) >> *(v41 + 112);
      v49 = *(v43 + 20) - 1;
      if (v48 >= v49)
      {
        LODWORD(v48) = v49;
      }

      v46 = (*(v45 + 24) + 8 * v48);
    }

    v47 = *v46;
  }

  else
  {
    v47 = 0;
  }

  v50 = *(a5 + 8);
  if (v50)
  {
    v51 = a11[3];
    v52 = *(*(v50 + 40) + 8 * a11[7].u32[1]);
    v53 = *(v52 + 12) - 1;
    if (v53 >= (v51.i32[1] * v31))
    {
      v53 = (HIDWORD(*&a11[3]) * v31);
    }

    v54 = v52 + 8 * v51.u32[0];
    if (*(v50 + 104) == 1)
    {
      v55 = (*(v54 + 24) + 8 * v53);
    }

    else
    {
      v56 = (v53 * *(v50 + 108)) >> *(v50 + 112);
      v57 = *(v52 + 20) - 1;
      if (v56 >= v57)
      {
        LODWORD(v56) = v57;
      }

      v55 = (*(v54 + 24) + 8 * v56);
    }

    result = *v55;
  }

  else
  {
    result = 0;
  }

  v58 = v23 + v24 - 14;
  v59 = a6[1];
  if (v59)
  {
    v60 = a11[3];
    v61 = (v60.i32[1] * v31);
    v62 = *(*(v59 + 40) + 8 * a11[7].u32[1]);
    v63 = *(v62 + 12) - 1;
    if (v63 >= v61)
    {
      v63 = v61;
    }

    v64 = v62 + 8 * v60.u32[0];
    if (*(v59 + 104) == 1)
    {
      v65 = (*(v64 + 24) + 8 * v63);
    }

    else
    {
      v67 = (v63 * *(v59 + 108)) >> *(v59 + 112);
      v68 = *(v62 + 20) - 1;
      if (v67 < v68)
      {
        v68 = v67;
      }

      v65 = (*(v64 + 24) + 8 * v68);
    }

    v66 = *v65;
  }

  else
  {
    v66 = 0;
  }

  v69 = v23 + v38;
  v70 = v23 + v66;
  v71 = a12[2];
  v72 = v70 > v58;
  v233 = v69 > v58;
  v234 = v72;
  if (v69 > v58)
  {
    LOBYTE(v72) = 1;
  }

  v230 = v72;
  v73 = a12[6];
  if (v71 > v73)
  {
    return result;
  }

  v75 = v236;
  v76 = vld1q_dup_s16(v75);
  v77 = &v235;
  v78 = vld1q_dup_s16(v77);
  v79 = 14 * *a12;
  v231 = 14 * v30;
  v232 = 14 * v28;
  v80 = (v23 + v47 + v79 + v232 * v71);
  v81 = (v23 + result + v79 + v231 * v71);
  v82 = xmmword_296B6EDE0;
  v83 = xmmword_296B6EDF0;
  v84.i64[0] = 0xE0E0E0E0E0E0E0E0;
  v84.i64[1] = 0xE0E0E0E0E0E0E0E0;
  while (1)
  {
    v85 = (a14 + a17);
    v86 = (a14 + a17 + a17);
    v87 = (v86 + a17);
    if (!a16)
    {
      result = (v86 + a17);
      goto LABEL_72;
    }

    if (v71 == a12[2])
    {
      v88 = a12[3] + 1;
      v89 = a14;
      a14 = (a14 + a17);
      v85 = v86;
      v86 = (v86 + a17);
      do
      {
        result = v86;
        v86 = v85;
        v85 = a14;
        a14 = v89;
        v89 = a16;
        --v88;
      }

      while (v88);
    }

    else
    {
      result = (v86 + a17);
    }

    if (v71 == v73)
    {
      v90 = a12[7];
      switch(v90)
      {
        case 1u:
          goto LABEL_70;
        case 2u:
          goto LABEL_69;
        case 3u:
          v85 = a16;
LABEL_69:
          v86 = a16;
LABEL_70:
          v87 = a16;
          goto LABEL_72;
      }
    }

    v87 = result;
LABEL_72:
    v92 = *a12;
    v91 = a12[1];
    if (!v91)
    {
      v148 = a12[4];
      v149 = v80;
      v150 = v81;
      goto LABEL_98;
    }

    v93 = v80 > v58 || v233;
    if (v81 > v58)
    {
      v93 = 1;
    }

    if ((v93 | v234))
    {
      return result;
    }

    v94.i64[0] = *(v80 + 1);
    v94.i64[1] = *(v80 + 3);
    v95 = vqtbl1q_s8(v94, v82);
    v96 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v95, 8uLL), xmmword_296B6EE00), vshlq_u8(v95, v83)), xmmword_296B6EE10);
    v97 = vaddq_s8(v96, v84);
    v96.i8[1] = 0;
    v98 = vqtbl1q_s8(v97, xmmword_296B6EE20);
    v99 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v98, xmmword_296B6EE30), v98), vqtbl1q_s8(v98, xmmword_296B6EE40));
    v100 = vdupq_lane_s16(*v96.i8, 0);
    v101 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v99.i8), xmmword_296B6EE50), *v99.i8), v100);
    v102 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v99), xmmword_296B6EE50), v99), v100);
    v103 = vdupq_n_s16(bswap32(*v80) >> 16);
    v104 = vaddq_s16(v102, v103);
    v105 = vaddq_s16(v101, v103);
    v106 = veorq_s8((*&v104 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v104));
    v107 = veorq_s8((*&v105 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v105));
    if (a8)
    {
      v107.i64[0] = (*(a8 + ((v107.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a8 + 2 * v107.u16[2]) << 32) | (*(a8 + 2 * v107.u16[1]) << 16) | *(a8 + 2 * v107.u16[0]);
      v107.i64[1] = (*(a8 + ((v107.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a8 + 2 * v107.u16[6]) << 32) | (*(a8 + 2 * v107.u16[5]) << 16) | *(a8 + 2 * v107.u16[4]);
      v106.i64[0] = (*(a8 + ((v106.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a8 + 2 * v106.u16[2]) << 32) | (*(a8 + 2 * v106.u16[1]) << 16) | *(a8 + 2 * v106.u16[0]);
      v106.i64[1] = (*(a8 + ((v106.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a8 + 2 * v106.u16[6]) << 32) | (*(a8 + 2 * v106.u16[5]) << 16) | *(a8 + 2 * v106.u16[4]);
    }

    v108.i64[0] = *(v81 + 1);
    v108.i64[1] = *(v81 + 3);
    v109 = vqtbl1q_s8(v108, v82);
    v110 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v109, 8uLL), xmmword_296B6EE00), vshlq_u8(v109, v83)), xmmword_296B6EE10);
    v111 = vaddq_s8(v110, v84);
    v110.i8[1] = 0;
    v112 = vqtbl1q_s8(v111, xmmword_296B6EE20);
    v113 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v112, xmmword_296B6EE30), v112), vqtbl1q_s8(v112, xmmword_296B6EE40));
    v114 = vdupq_lane_s16(*v110.i8, 0);
    v115 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v113.i8), xmmword_296B6EE50), *v113.i8), v114);
    v116 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v113), xmmword_296B6EE50), v113), v114);
    v117 = vdupq_n_s16(bswap32(*v81) >> 16);
    v118 = vaddq_s16(v116, v117);
    v119 = vaddq_s16(v115, v117);
    v120 = veorq_s8((*&v118 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v118));
    v121 = veorq_s8((*&v119 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v119));
    if (a9)
    {
      v121.i64[0] = (*(a9 + ((v121.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a9 + 2 * v121.u16[2]) << 32) | (*(a9 + 2 * v121.u16[1]) << 16) | *(a9 + 2 * v121.u16[0]);
      v121.i64[1] = (*(a9 + ((v121.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a9 + 2 * v121.u16[6]) << 32) | (*(a9 + 2 * v121.u16[5]) << 16) | *(a9 + 2 * v121.u16[4]);
      v120.i64[0] = (*(a9 + ((v120.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a9 + 2 * v120.u16[2]) << 32) | (*(a9 + 2 * v120.u16[1]) << 16) | *(a9 + 2 * v120.u16[0]);
      v120.i64[1] = (*(a9 + ((v120.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a9 + 2 * v120.u16[6]) << 32) | (*(a9 + 2 * v120.u16[5]) << 16) | *(a9 + 2 * v120.u16[4]);
    }

    v17.i32[0] = 0;
    v122 = v78;
    v238.val[1] = vqtbl2q_s8(*v106.i8, xmmword_296B6EF40);
    v123 = v76;
    v238.val[0] = vqtbl2q_s8(*(&v120 - 1), xmmword_296B6EE70);
    v124 = vqtbl2q_s8(v238, xmmword_296B6EDD0);
    v241.val[1] = vqtbl2q_s8(*v106.i8, xmmword_296B6EF50);
    v241.val[0] = vqtbl2q_s8(*(&v120 - 1), xmmword_296B6EE90);
    v125 = vqtbl2q_s8(v241, xmmword_296B6EDD0);
    v244.val[1] = vqtbl2q_s8(*v106.i8, xmmword_296B6EF60);
    v244.val[0] = vqtbl2q_s8(*(&v120 - 1), xmmword_296B6EEA0);
    v126 = vqtbl2q_s8(v244, xmmword_296B6EDD0);
    v127 = vqtbl2q_s8(*v106.i8, xmmword_296B6EF70);
    v244.val[1] = vqtbl2q_s8(*(&v120 - 1), xmmword_296B6EEB0);
    v128 = vqtbl2q_s8(*(&v127 - 1), xmmword_296B6EDD0);
    if (a12[4] == v92)
    {
      v129 = 4 - a12[5];
    }

    else
    {
      v129 = 4;
    }

    v127.i32[0] = a12[1] & 2;
    v17 = vdupq_lane_s32(*&vceqq_s32(v127, v17), 0);
    v130 = v78;
    v248.val[1] = vqtbl2q_s8(*v107.i8, xmmword_296B6EF60);
    v131 = v76;
    v248.val[0] = vqtbl2q_s8(*(&v121 - 1), xmmword_296B6EEA0);
    v132 = v129 - 2;
    v133 = vqtbl2q_s8(v248, xmmword_296B6EDD0);
    v248.val[1] = vqtbl2q_s8(*v107.i8, xmmword_296B6EF70);
    v248.val[0] = vqtbl2q_s8(*(&v121 - 1), xmmword_296B6EEB0);
    v248.val[0] = vqtbl2q_s8(v248, xmmword_296B6EDD0);
    v134 = vbslq_s8(v17, v248.val[0], v133);
    v135 = vbslq_s8(v17, v133, v248.val[0]);
    v243.val[1] = vqtbl2q_s8(*v107.i8, xmmword_296B6EF40);
    v243.val[0] = vqtbl2q_s8(*(&v121 - 1), xmmword_296B6EE70);
    v243.val[1] = vqtbl2q_s8(v243, xmmword_296B6EDD0);
    v136 = vqtbl2q_s8(*v107.i8, xmmword_296B6EF50);
    v248.val[1] = vqtbl2q_s8(*(&v121 - 1), xmmword_296B6EE90);
    v248.val[1] = vqtbl2q_s8(*(&v248 + 16), xmmword_296B6EDD0);
    v137 = vbslq_s8(v17, v248.val[1], v243.val[1]);
    v138 = vbslq_s8(v17, v243.val[1], v248.val[1]);
    v139 = vbslq_s8(v17, v128, v126);
    v140 = vbslq_s8(v17, v126, v128);
    v141 = vbslq_s8(v17, v125, v124);
    v142 = vbslq_s8(v17, v124, v125);
    if ((v91 & 2) == 0)
    {
      v132 = v129;
    }

    if (v91)
    {
      v143 = vextq_s8(v137, v138, 8uLL).u64[0];
      v138 = vextq_s8(v138, v137, 8uLL);
      v144 = vextq_s8(v134, v135, 8uLL).u64[0];
      v135 = vextq_s8(v135, v134, 8uLL);
      v145 = vextq_s8(v141, v142, 8uLL).u64[0];
      v142 = vextq_s8(v142, v141, 8uLL);
      v146 = vextq_s8(v139, v140, 8uLL).u64[0];
      --v132;
      v140 = vextq_s8(v140, v139, 8uLL);
      v137.i64[0] = v143;
      v134.i64[0] = v144;
      v141.i64[0] = v145;
      v139.i64[0] = v146;
    }

    v84.i64[0] = 0xE0E0E0E0E0E0E0E0;
    v84.i64[1] = 0xE0E0E0E0E0E0E0E0;
    v83 = xmmword_296B6EDF0;
    v82 = xmmword_296B6EDE0;
    if (v132 <= 1)
    {
      v147 = 0;
    }

    else
    {
      *a14 = v138;
      *v85 = v135;
      v132 -= 2;
      v138.i64[0] = v137.i64[0];
      v135.i64[0] = v134.i64[0];
      *v86 = v142;
      v142.i64[0] = v141.i64[0];
      *v87 = v140;
      v140.i64[0] = v139.i64[0];
      v147 = 16;
    }

    if (v132 >= 1)
    {
      *(a14->i64 + v147) = v138.i64[0];
      *(v85->i64 + v147) = v135.i64[0];
      *(v86->i64 + v147) = v142.i64[0];
      *(v87->i64 + v147) = v140.i64[0];
      v147 |= 8uLL;
    }

    v148 = a12[4];
    if (v148 != v92)
    {
      break;
    }

LABEL_125:
    a14 = (result + a17);
    v81 = (v81 + v231);
    v80 = (v80 + v232);
    v73 = a12[6];
    if (v71++ >= v73)
    {
      return result;
    }
  }

  v149 = v80 + 7;
  v150 = v81 + 7;
  a14 = (a14 + v147);
  v85 = (v85 + v147);
  v86 = (v86 + v147);
  v87 = (v87 + v147);
  ++v92;
LABEL_98:
  v151 = a12[5];
  v152 = v151 != 0;
  if (v148 == 0 && v152 || (v153 = v148 - v152, v92 > v153))
  {
    v188 = a14;
    v189 = v85;
    v190 = v86;
    v191 = v87;
    if (v151)
    {
LABEL_112:
      v192 = v233;
      if (v149 > v58)
      {
        v192 = 1;
      }

      if (v150 > v58)
      {
        v192 = 1;
      }

      if ((v192 | v234))
      {
        return result;
      }

      v193.i64[0] = *(v149 + 1);
      v193.i64[1] = *(v149 + 3);
      v194 = vqtbl1q_s8(v193, v82);
      v195 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v194, 8uLL), xmmword_296B6EE00), vshlq_u8(v194, v83)), xmmword_296B6EE10);
      v196 = vaddq_s8(v195, v84);
      v195.i8[1] = 0;
      v197 = vqtbl1q_s8(v196, xmmword_296B6EE20);
      v198 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v197, xmmword_296B6EE30), v197), vqtbl1q_s8(v197, xmmword_296B6EE40));
      v199 = vdupq_lane_s16(*v195.i8, 0);
      v200 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v198.i8), xmmword_296B6EE50), *v198.i8), v199);
      v201 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v198), xmmword_296B6EE50), v198), v199);
      v202 = vdupq_n_s16(bswap32(*v149) >> 16);
      v203 = vaddq_s16(v201, v202);
      v204 = vaddq_s16(v200, v202);
      v205 = veorq_s8((*&v203 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v203));
      v206 = veorq_s8((*&v204 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v204));
      if (a8)
      {
        v206.i64[0] = (*(a8 + ((v206.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a8 + 2 * v206.u16[2]) << 32) | (*(a8 + 2 * v206.u16[1]) << 16) | *(a8 + 2 * v206.u16[0]);
        v206.i64[1] = (*(a8 + ((v206.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a8 + 2 * v206.u16[6]) << 32) | (*(a8 + 2 * v206.u16[5]) << 16) | *(a8 + 2 * v206.u16[4]);
        v205.i64[0] = (*(a8 + ((v205.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a8 + 2 * v205.u16[2]) << 32) | (*(a8 + 2 * v205.u16[1]) << 16) | *(a8 + 2 * v205.u16[0]);
        v205.i64[1] = (*(a8 + ((v205.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a8 + 2 * v205.u16[6]) << 32) | (*(a8 + 2 * v205.u16[5]) << 16) | *(a8 + 2 * v205.u16[4]);
      }

      v207.i64[0] = *(v150 + 1);
      v207.i64[1] = *(v150 + 3);
      v208 = vqtbl1q_s8(v207, v82);
      v209 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v208, 8uLL), xmmword_296B6EE00), vshlq_u8(v208, v83)), xmmword_296B6EE10);
      v210 = vaddq_s8(v209, v84);
      v209.i8[1] = 0;
      v211 = vqtbl1q_s8(v210, xmmword_296B6EE20);
      v212 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v211, xmmword_296B6EE30), v211), vqtbl1q_s8(v211, xmmword_296B6EE40));
      v213 = vdupq_lane_s16(*v209.i8, 0);
      v214 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v212.i8), xmmword_296B6EE50), *v212.i8), v213);
      v215 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v212), xmmword_296B6EE50), v212), v213);
      v216 = vdupq_n_s16(bswap32(*v150) >> 16);
      v217 = vaddq_s16(v215, v216);
      v218 = vaddq_s16(v214, v216);
      v219 = veorq_s8((*&v217 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v217));
      v220 = veorq_s8((*&v218 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v218));
      if (a9)
      {
        v220.i64[0] = (*(a9 + ((v220.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a9 + 2 * v220.u16[2]) << 32) | (*(a9 + 2 * v220.u16[1]) << 16) | *(a9 + 2 * v220.u16[0]);
        v220.i64[1] = (*(a9 + ((v220.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a9 + 2 * v220.u16[6]) << 32) | (*(a9 + 2 * v220.u16[5]) << 16) | *(a9 + 2 * v220.u16[4]);
        v219.i64[0] = (*(a9 + ((v219.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a9 + 2 * v219.u16[2]) << 32) | (*(a9 + 2 * v219.u16[1]) << 16) | *(a9 + 2 * v219.u16[0]);
        v219.i64[1] = (*(a9 + ((v219.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a9 + 2 * v219.u16[6]) << 32) | (*(a9 + 2 * v219.u16[5]) << 16) | *(a9 + 2 * v219.u16[4]);
      }

      v221 = v78;
      v222 = v76;
      v246.val[1] = vqtbl2q_s8(*v206.i8, xmmword_296B6EF60);
      v246.val[0] = vqtbl2q_s8(*(&v220 - 1), xmmword_296B6EEA0);
      v17 = vqtbl2q_s8(v246, xmmword_296B6EDD0);
      v239.val[1] = vqtbl2q_s8(*v206.i8, xmmword_296B6EF40);
      v239.val[0] = vqtbl2q_s8(*(&v220 - 1), xmmword_296B6EE70);
      v223 = vqtbl2q_s8(v239, xmmword_296B6EDD0);
      v224 = v78;
      v225 = v76;
      v239.val[1] = vqtbl2q_s8(*v205.i8, xmmword_296B6EF60);
      v239.val[0] = vqtbl2q_s8(*(&v219 - 1), xmmword_296B6EEA0);
      v226 = vqtbl2q_s8(v239, xmmword_296B6EDD0);
      v239.val[1] = vqtbl2q_s8(*v205.i8, xmmword_296B6EF40);
      v239.val[0] = vqtbl2q_s8(*(&v219 - 1), xmmword_296B6EE70);
      v227 = vqtbl2q_s8(v239, xmmword_296B6EDD0);
      v228 = 4 - v151;
      if ((v228 & 2) != 0)
      {
        *v188 = v223;
        *v189 = v17;
        *v190 = v227;
        *v191 = v226;
        if (v228)
        {
          v247.val[1] = vqtbl2q_s8(*v206.i8, xmmword_296B6EF70);
          v247.val[0] = vqtbl2q_s8(*(&v220 - 1), xmmword_296B6EEB0);
          v251.val[1] = vqtbl2q_s8(*v206.i8, xmmword_296B6EF50);
          v251.val[0] = vqtbl2q_s8(*(&v220 - 1), xmmword_296B6EE90);
          v252.val[1] = vqtbl2q_s8(*v205.i8, xmmword_296B6EF70);
          v252.val[0] = vqtbl2q_s8(*(&v219 - 1), xmmword_296B6EEB0);
          v250.val[1] = vqtbl2q_s8(*v205.i8, xmmword_296B6EF50);
          v250.val[0] = vqtbl2q_s8(*(&v219 - 1), xmmword_296B6EE90);
          v188[1].i64[0] = vqtbl2q_s8(v251, xmmword_296B6EDD0).u64[0];
          v189[1].i64[0] = vqtbl2q_s8(v247, xmmword_296B6EDD0).u64[0];
          v190[1].i64[0] = vqtbl2q_s8(v250, xmmword_296B6EDD0).u64[0];
          v191[1].i64[0] = vqtbl2q_s8(v252, xmmword_296B6EDD0).u64[0];
        }
      }

      else
      {
        v188->i64[0] = v223.i64[0];
        v189->i64[0] = v17.i64[0];
        v190->i64[0] = v227.i64[0];
        v191->i64[0] = v226.i64[0];
      }
    }

    goto LABEL_125;
  }

  if (!v230)
  {
    v154 = v153 - v92 + 1;
    while (v149 <= v58 && v150 <= v58)
    {
      v155.i64[0] = *(v149 + 1);
      v155.i64[1] = *(v149 + 3);
      v156 = vqtbl1q_s8(v155, v82);
      v157 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v156, 8uLL), xmmword_296B6EE00), vshlq_u8(v156, v83)), xmmword_296B6EE10);
      v158 = vaddq_s8(v157, v84);
      v157.i8[1] = 0;
      v159 = vqtbl1q_s8(v158, xmmword_296B6EE20);
      v160 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v159, xmmword_296B6EE30), v159), vqtbl1q_s8(v159, xmmword_296B6EE40));
      v161 = vdupq_lane_s16(*v157.i8, 0);
      v162 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v160.i8), xmmword_296B6EE50), *v160.i8), v161);
      v163 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v160), xmmword_296B6EE50), v160), v161);
      v164 = vdupq_n_s16(bswap32(*v149) >> 16);
      v165 = vaddq_s16(v163, v164);
      v166 = vaddq_s16(v162, v164);
      v167 = veorq_s8((*&v165 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v165));
      v168 = veorq_s8((*&v166 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v166));
      if (a8)
      {
        v168.i64[0] = (*(a8 + ((v168.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a8 + 2 * v168.u16[2]) << 32) | (*(a8 + 2 * v168.u16[1]) << 16) | *(a8 + 2 * v168.u16[0]);
        v168.i64[1] = (*(a8 + ((v168.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a8 + 2 * v168.u16[6]) << 32) | (*(a8 + 2 * v168.u16[5]) << 16) | *(a8 + 2 * v168.u16[4]);
        v167.i64[0] = (*(a8 + ((v167.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a8 + 2 * v167.u16[2]) << 32) | (*(a8 + 2 * v167.u16[1]) << 16) | *(a8 + 2 * v167.u16[0]);
        v167.i64[1] = (*(a8 + ((v167.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a8 + 2 * v167.u16[6]) << 32) | (*(a8 + 2 * v167.u16[5]) << 16) | *(a8 + 2 * v167.u16[4]);
      }

      v169.i64[0] = *(v150 + 1);
      v169.i64[1] = *(v150 + 3);
      v170 = vqtbl1q_s8(v169, v82);
      v171 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v170, 8uLL), xmmword_296B6EE00), vshlq_u8(v170, v83)), xmmword_296B6EE10);
      v172 = vaddq_s8(v171, v84);
      v171.i8[1] = 0;
      v173 = vqtbl1q_s8(v172, xmmword_296B6EE20);
      v174 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v173, xmmword_296B6EE30), v173), vqtbl1q_s8(v173, xmmword_296B6EE40));
      v175 = vdupq_lane_s16(*v171.i8, 0);
      v176 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v174.i8), xmmword_296B6EE50), *v174.i8), v175);
      v177 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v174), xmmword_296B6EE50), v174), v175);
      v178 = vdupq_n_s16(bswap32(*v150) >> 16);
      v179 = vaddq_s16(v177, v178);
      v180 = vaddq_s16(v176, v178);
      v181 = veorq_s8((*&v179 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v179));
      v182 = veorq_s8((*&v180 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v180));
      if (a9)
      {
        v182.i64[0] = (*(a9 + ((v182.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a9 + 2 * v182.u16[2]) << 32) | (*(a9 + 2 * v182.u16[1]) << 16) | *(a9 + 2 * v182.u16[0]);
        v182.i64[1] = (*(a9 + ((v182.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a9 + 2 * v182.u16[6]) << 32) | (*(a9 + 2 * v182.u16[5]) << 16) | *(a9 + 2 * v182.u16[4]);
        v181.i64[0] = (*(a9 + ((v181.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a9 + 2 * v181.u16[2]) << 32) | (*(a9 + 2 * v181.u16[1]) << 16) | *(a9 + 2 * v181.u16[0]);
        v181.i64[1] = (*(a9 + ((v181.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a9 + 2 * v181.u16[6]) << 32) | (*(a9 + 2 * v181.u16[5]) << 16) | *(a9 + 2 * v181.u16[4]);
      }

      v149 += 7;
      v245.val[1] = vqtbl2q_s8(*(&v78 - 1), xmmword_296B6EF60);
      v183 = v181;
      v245.val[0] = vqtbl2q_s8(*v76.i8, xmmword_296B6EEA0);
      v184 = vqtbl2q_s8(v245, xmmword_296B6EDD0);
      v245.val[1] = vqtbl2q_s8(*(&v78 - 1), xmmword_296B6EF70);
      v245.val[0] = vqtbl2q_s8(*v76.i8, xmmword_296B6EEB0);
      v253.val[1] = vqtbl2q_s8(*(&v78 - 1), xmmword_296B6EF40);
      v17 = xmmword_296B6EE70;
      v253.val[0] = vqtbl2q_s8(*v76.i8, xmmword_296B6EE70);
      v237.val[1] = vqtbl2q_s8(*(&v78 - 1), xmmword_296B6EF50);
      v237.val[0] = vqtbl2q_s8(*v76.i8, xmmword_296B6EE90);
      v185 = v78;
      v240.val[1] = vqtbl2q_s8(*v168.i8, xmmword_296B6EF60);
      v186 = v76;
      v240.val[0] = vqtbl2q_s8(*(&v182 - 1), xmmword_296B6EEA0);
      v187 = vqtbl2q_s8(v240, xmmword_296B6EDD0);
      v240.val[1] = vqtbl2q_s8(*v168.i8, xmmword_296B6EF40);
      v240.val[0] = vqtbl2q_s8(*(&v182 - 1), xmmword_296B6EE70);
      v242.val[1] = vqtbl2q_s8(*v168.i8, xmmword_296B6EF70);
      v249.val[1] = vqtbl2q_s8(*v168.i8, xmmword_296B6EF50);
      v249.val[0] = vqtbl2q_s8(*(&v182 - 1), xmmword_296B6EE90);
      *a14 = vqtbl2q_s8(v240, xmmword_296B6EDD0);
      a14[1] = vqtbl2q_s8(v249, xmmword_296B6EDD0);
      v242.val[0] = vqtbl2q_s8(*(&v182 - 1), xmmword_296B6EEB0);
      v150 += 7;
      v188 = a14 + 2;
      *v85 = v187;
      v85[1] = vqtbl2q_s8(v242, xmmword_296B6EDD0);
      v189 = &v85[2];
      v190 = v86 + 2;
      *v86 = vqtbl2q_s8(v253, xmmword_296B6EDD0);
      v86[1] = vqtbl2q_s8(v237, xmmword_296B6EDD0);
      v191 = v87 + 2;
      *v87 = v184;
      v87[1] = vqtbl2q_s8(v245, xmmword_296B6EDD0);
      v87 += 2;
      v86 += 2;
      v85 += 2;
      a14 += 2;
      --v154;
      v84.i64[0] = 0xE0E0E0E0E0E0E0E0;
      v84.i64[1] = 0xE0E0E0E0E0E0E0E0;
      v83 = xmmword_296B6EDF0;
      v82 = xmmword_296B6EDE0;
      if (!v154)
      {
        v151 = a12[5];
        if (v151)
        {
          goto LABEL_112;
        }

        goto LABEL_125;
      }
    }
  }

  return result;
}

uint64_t ExtractInterleaved4_B44<unsigned int,(StreamType)0,(StreamType)1,(StreamType)1,(StreamType)0>(uint64_t result, unint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int32x2_t *a11, unsigned int *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (!result)
  {
    return result;
  }

  v21 = result;
  if (*&a11[1] >= a2)
  {
    v22 = a2;
  }

  else
  {
    v22 = a11[1];
  }

  AXRStreamB44<unsigned int,(StreamType)0>::AXRStreamB44(&v244, a3);
  v23 = a11[3];
  v24 = a11[7].u32[1];
  v25 = vmin_u32(vmls_s32(*(*(*(*(a4 + 8) + 40) + 8 * v24) + 16), *(*(a4 + 8) + 48), v23), *(*(a4 + 8) + 48)).u32[0];
  v26 = vmin_u32(vmls_s32(*(*(*(*(a5 + 8) + 40) + 8 * v24) + 16), *(*(a5 + 8) + 48), v23), *(*(a5 + 8) + 48)).u32[0];
  result = AXRStreamB44<unsigned int,(StreamType)0>::AXRStreamB44(&v243, a6);
  v28 = 12 * v26 + 16;
  if (12 * v25 + 16 > v28)
  {
    v28 = 12 * v25 + 16;
  }

  v29 = *&v22 - v28;
  if (*&v22 < v28)
  {
    return result;
  }

  v30 = *(a13 + 60);
  v31 = a3[1];
  if (v31)
  {
    v32 = a11[3];
    v33 = *(*(v31 + 40) + 8 * a11[7].u32[1]);
    v34 = *(v33 + 12) - 1;
    if (v34 >= (v32.i32[1] * v30))
    {
      v34 = (HIDWORD(*&a11[3]) * v30);
    }

    v35 = v33 + 8 * v32.u32[0];
    if (*(v31 + 104) == 1)
    {
      v36 = (*(v35 + 24) + 8 * v34);
    }

    else
    {
      v38 = (v34 * *(v31 + 108)) >> *(v31 + 112);
      v39 = *(v33 + 20) - 1;
      if (v38 >= v39)
      {
        LODWORD(v38) = v39;
      }

      v36 = (*(v35 + 24) + 8 * v38);
    }

    v37 = *v36;
  }

  else
  {
    v37 = 0;
  }

  v40 = *(a4 + 8);
  if (v40)
  {
    v41 = a11[3];
    v42 = *(*(v40 + 40) + 8 * a11[7].u32[1]);
    v43 = *(v42 + 12) - 1;
    if (v43 >= (v41.i32[1] * v30))
    {
      v43 = (HIDWORD(*&a11[3]) * v30);
    }

    v44 = v42 + 8 * v41.u32[0];
    if (*(v40 + 104) == 1)
    {
      v45 = (*(v44 + 24) + 8 * v43);
    }

    else
    {
      v47 = (v43 * *(v40 + 108)) >> *(v40 + 112);
      v48 = *(v42 + 20) - 1;
      if (v47 >= v48)
      {
        LODWORD(v47) = v48;
      }

      v45 = (*(v44 + 24) + 8 * v47);
    }

    v46 = *v45;
  }

  else
  {
    v46 = 0;
  }

  v49 = *(a5 + 8);
  if (v49)
  {
    v50 = a11[3];
    v51 = *(*(v49 + 40) + 8 * a11[7].u32[1]);
    v52 = *(v51 + 12) - 1;
    if (v52 >= (v50.i32[1] * v30))
    {
      v52 = (HIDWORD(*&a11[3]) * v30);
    }

    v53 = v51 + 8 * v50.u32[0];
    if (*(v49 + 104) == 1)
    {
      v54 = (*(v53 + 24) + 8 * v52);
    }

    else
    {
      v56 = (v52 * *(v49 + 108)) >> *(v49 + 112);
      v57 = *(v51 + 20) - 1;
      if (v56 >= v57)
      {
        LODWORD(v56) = v57;
      }

      v54 = (*(v53 + 24) + 8 * v56);
    }

    v55 = *v54;
  }

  else
  {
    v55 = 0;
  }

  v58 = v29 + v21;
  v59 = a6[1];
  if (v59)
  {
    v60 = a11[3];
    v61 = (v60.i32[1] * v30);
    v62 = *(*(v59 + 40) + 8 * a11[7].u32[1]);
    v63 = *(v62 + 12) - 1;
    if (v63 >= v61)
    {
      v63 = v61;
    }

    v64 = v62 + 8 * v60.u32[0];
    if (*(v59 + 104) == 1)
    {
      v65 = (*(v64 + 24) + 8 * v63);
    }

    else
    {
      v67 = (v63 * *(v59 + 108)) >> *(v59 + 112);
      v68 = *(v62 + 20) - 1;
      if (v67 < v68)
      {
        v68 = v67;
      }

      v65 = (*(v64 + 24) + 8 * v68);
    }

    v66 = *v65;
  }

  else
  {
    v66 = 0;
  }

  v69 = v37 + v21;
  v70 = v66 + v21;
  v71 = a12[2];
  v72 = v70 > v58;
  v73 = v69 > v58;
  v74 = v69 > v58;
  v75 = v73 || v72;
  v76 = a12[6];
  if (v71 > v76)
  {
    return result;
  }

  v78 = 4 * v25;
  v79 = 4 * v26;
  result = 16 * v25;
  v80 = 16 * v26;
  v81 = &v244;
  v82 = vld1q_dup_f32(v81);
  v83 = &v243;
  v84 = vld1q_dup_f32(v83);
  v85 = *a12;
  v86 = (v46 + v21 + 16 * v85 + 16 * v25 * v71);
  v87 = (v55 + v21 + 16 * v85 + 16 * v26 * v71);
  while (1)
  {
    v88 = a14 + a17;
    v89 = a14 + a17 + a17;
    v90 = v89 + a17;
    if (!a16)
    {
      v93 = v89 + a17;
      goto LABEL_69;
    }

    if (v71 == a12[2])
    {
      v91 = a12[3] + 1;
      v92 = a14;
      a14 += a17;
      v88 = v89;
      v89 += a17;
      do
      {
        v93 = v89;
        v89 = v88;
        v88 = a14;
        a14 = v92;
        v92 = a16;
        --v91;
      }

      while (v91);
    }

    else
    {
      v93 = v89 + a17;
    }

    if (v71 == v76)
    {
      v94 = a12[7];
      switch(v94)
      {
        case 1u:
          goto LABEL_67;
        case 2u:
          goto LABEL_66;
        case 3u:
          v88 = a16;
LABEL_66:
          v89 = a16;
LABEL_67:
          v90 = a16;
          goto LABEL_69;
      }
    }

    v90 = v93;
LABEL_69:
    v96 = *a12;
    v95 = a12[1];
    if (!v95)
    {
      v161 = a12[4];
      v162 = v86;
      v163 = v87;
      goto LABEL_89;
    }

    v97 = v86 > v58 || v74;
    if (v87 > v58)
    {
      v97 = 1;
    }

    if ((v97 | v72))
    {
      return result;
    }

    v27.i32[0] = 0;
    v98 = (v86 + v78 + v78);
    v99 = *(v98 + v78);
    v100 = vuzp1q_s32(v99, v84);
    v101 = *(v86 + v78);
    v102 = (v87 + v79 + v79);
    v103 = *(v102 + v79);
    v104 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v82, v103)), vextq_s8(v99, v100, 0xCuLL));
    v105 = vuzp2q_s32(v82, v103);
    v103.i32[0] = v82.i32[2];
    v106 = vtrn2q_s32(vrev64q_s32(v103), v100);
    v107 = vuzp2q_s32(v99, v84);
    v99.i32[3] = v84.i32[1];
    v108 = *v86;
    v109 = *v98;
    v110 = *v87;
    v111 = *(v87 + v79);
    v112 = *v102;
    v113 = vtrn2q_s32(vrev64q_s32(v105), v99);
    v114 = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v105, v82)), v107);
    v115 = vuzp1q_s32(*v98, v84);
    v116 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v82, *v102)), vextq_s8(*v98, v115, 0xCuLL));
    v117 = vuzp2q_s32(v82, *v102);
    v112.i32[0] = v82.i32[2];
    v118 = vtrn2q_s32(vrev64q_s32(v112), v115);
    v119 = vuzp2q_s32(*v98, v84);
    v109.i32[3] = v84.i32[1];
    v120 = vtrn2q_s32(vrev64q_s32(v117), v109);
    v121 = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v117, v82)), v119);
    if (a12[4] == v96)
    {
      v122 = 4 - a12[5];
    }

    else
    {
      v122 = 4;
    }

    v119.i32[0] = a12[1] & 2;
    v123 = vdupq_lane_s32(*&vceqq_s32(v119, v27), 0);
    v124 = vbslq_s8(v123, v120, v121);
    v125 = vbslq_s8(v123, v116, v118);
    v126 = vbslq_s8(v123, v113, v114);
    v127 = vbslq_s8(v123, v104, v106);
    v128 = vuzp2q_s32(v101, v84);
    v129 = vuzp1q_s32(v101, v84);
    v130 = vextq_s8(v101, v129, 0xCuLL);
    v101.i32[3] = v84.i32[1];
    v131 = vuzp2q_s32(v82, v111);
    v132 = vtrn2q_s32(vrev64q_s32(v131), v101);
    v133 = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v131, v82)), v128);
    v134 = vbslq_s8(v123, v132, v133);
    v135 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v82, v111)), v130);
    v111.i32[0] = v82.i32[2];
    v136 = vtrn2q_s32(vrev64q_s32(v111), v129);
    v137 = vbslq_s8(v123, v135, v136);
    v138 = vuzp2q_s32(v108, v84);
    v139 = vuzp1q_s32(v108, v84);
    v140 = vextq_s8(v108, v139, 0xCuLL);
    v108.i32[3] = v84.i32[1];
    v141 = vuzp2q_s32(v82, v110);
    v142 = vtrn2q_s32(vrev64q_s32(v141), v108);
    v143 = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v141, v82)), v138);
    v144 = vbslq_s8(v123, v142, v143);
    v145 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v82, v110)), v140);
    v110.i32[0] = v82.i32[2];
    v146 = vrev64q_s32(v110);
    v147 = vtrn2q_s32(v146, v139);
    if ((v95 & 2) != 0)
    {
      v122 -= 2;
    }

    v148 = v95 & 1;
    v149 = v122 - v148;
    v146.i32[0] = v148;
    v150 = vdupq_lane_s32(*&vmvnq_s8(vceqq_s32(v146, v27)), 0);
    v151 = vbslq_s8(v150, v144, vbslq_s8(v123, v145, v147));
    v152 = vbslq_s8(v150, v134, v137);
    v27 = vbslq_s8(v150, v126, v127);
    v153 = vbslq_s8(v150, v124, v125);
    if (v122 - v148 <= 1)
    {
      v160 = 0;
    }

    else
    {
      v154 = vbslq_s8(v123, v118, v116);
      v155 = vbslq_s8(v123, v121, v120);
      v156 = vbslq_s8(v123, v106, v104);
      v157 = vbslq_s8(v123, v114, v113);
      v158 = vbslq_s8(v123, v136, v135);
      v159 = vbslq_s8(v123, v147, v145);
      *a14 = v151;
      *(a14 + 16) = vbslq_s8(v150, v159, v144);
      *v88 = v152;
      *(v88 + 16) = vbslq_s8(v150, v158, v134);
      *v89 = v153;
      *(v89 + 16) = vbslq_s8(v150, v154, v124);
      v149 -= 2;
      v151 = vbslq_s8(v150, vbslq_s8(v123, v143, v142), v159);
      *v90 = v27;
      *(v90 + 16) = vbslq_s8(v150, v156, v126);
      v152 = vbslq_s8(v150, vbslq_s8(v123, v133, v132), v158);
      v153 = vbslq_s8(v150, v155, v154);
      v27 = vbslq_s8(v150, v157, v156);
      v160 = 32;
    }

    if (v149 >= 1)
    {
      *(v160 + a14) = v151;
      *(v160 + v88) = v152;
      *(v160 + v89) = v153;
      *(v160 + v90) = v27;
      v160 |= 0x10uLL;
    }

    v161 = a12[4];
    if (v161 != v96)
    {
      break;
    }

LABEL_133:
    a14 = v93 + a17;
    v87 = (v87 + v80);
    v86 = (v86 + result);
    v76 = a12[6];
    if (v71++ >= v76)
    {
      return result;
    }
  }

  v162 = v86 + 1;
  v163 = v87 + 1;
  a14 += v160;
  v88 += v160;
  v89 += v160;
  v90 += v160;
  ++v96;
LABEL_89:
  v164 = a12[5];
  v165 = v164 != 0;
  if (v161 == 0 && v165 || (v166 = v161 - v165, v96 > v166))
  {
    v205 = a14;
    v206 = v88;
    v207 = v89;
    v208 = v90;
    if (v164)
    {
LABEL_99:
      v209 = 4 - a12[7];
      if (v71 != a12[6])
      {
        v209 = 4;
      }

      v210 = v162 > v58 || v74;
      if (v163 > v58)
      {
        v210 = 1;
      }

      if ((v210 | v72))
      {
        return result;
      }

      if (v209 < 2)
      {
        v212 = 0;
        v211 = v162;
        v213 = v162;
      }

      else
      {
        v211 = (v162->i64 + v78);
        if (v209 == 2)
        {
          v212 = 0;
          v213 = (v162->i64 + v78);
        }

        else
        {
          v213 = (v162->i64 + v78);
          v211 = (v211 + v78);
          if (v209 <= 3)
          {
            v212 = 0;
          }

          else
          {
            v212 = v78;
          }
        }
      }

      v214 = (v211 + v212);
      v215 = 0uLL;
      v216 = 0uLL;
      v27 = 0uLL;
      v217 = 0uLL;
      if ((4 - v164))
      {
        v217.i32[0] = v162->i32[3 - v164];
        v215.i32[0] = *(v213 + 3 - v164);
        v216.i32[0] = *(v211 + 3 - v164);
        v27.i32[0] = *(v214 + 3 - v164);
      }

      if (((4 - v164) & 2) != 0)
      {
        v218.i64[0] = v162->i64[0];
        v218.i64[1] = v217.i64[0];
        v219.i64[0] = *v213;
        v219.i64[1] = v215.i64[0];
        v220.i64[0] = *v211;
        v220.i64[1] = v216.i64[0];
        v221.i64[0] = *v214;
        v221.i64[1] = v27.i64[0];
        v215 = v219;
        v216 = v220;
        v27 = v221;
        v217 = v218;
      }

      if (v209 < 2)
      {
        v223 = 0;
        v222 = v163;
        v224 = v163;
      }

      else
      {
        v222 = (v163->i64 + v79);
        if (v209 == 2)
        {
          v223 = 0;
          v224 = (v163->i64 + v79);
        }

        else
        {
          v224 = (v163->i64 + v79);
          v222 = (v222 + v79);
          if (v209 <= 3)
          {
            v223 = 0;
          }

          else
          {
            v223 = v79;
          }
        }
      }

      v225 = (v222 + v223);
      v226 = 0uLL;
      v227 = 0uLL;
      v228 = 0uLL;
      v229 = 0uLL;
      if ((4 - v164))
      {
        v229.i32[0] = v163->i32[3 - v164];
        v226.i32[0] = *(v224 + 3 - v164);
        v227.i32[0] = *(v222 + 3 - v164);
        v228.i32[0] = *(v225 + 3 - v164);
      }

      if (((4 - v164) & 2) != 0)
      {
        v230.i64[0] = v163->i64[0];
        v230.i64[1] = v229.i64[0];
        v231.i64[0] = *v224;
        v231.i64[1] = v226.i64[0];
        v232.i64[0] = *v222;
        v232.i64[1] = v227.i64[0];
        v233.i64[0] = *v225;
        v233.i64[1] = v228.i64[0];
        v226 = v231;
        v227 = v232;
        v228 = v233;
        v229 = v230;
      }

      v234 = vuzp1q_s32(v217, v84);
      v235 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v82, v229)), vextq_s8(v217, v234, 0xCuLL));
      v236 = vuzp1q_s32(v215, v84);
      v237 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v82, v226)), vextq_s8(v215, v236, 0xCuLL));
      v238 = vuzp1q_s32(v216, v84);
      v239 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v82, v227)), vextq_s8(v216, v238, 0xCuLL));
      v240 = vuzp1q_s32(v27, v84);
      v241 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v82, v228)), vextq_s8(v27, v240, 0xCuLL));
      if (((4 - v164) & 2) != 0)
      {
        v217.i32[3] = v84.i32[1];
        v215.i32[3] = v84.i32[1];
        v216.i32[3] = v84.i32[1];
        v27.i32[3] = v84.i32[1];
        *v205 = v235;
        v205[1] = vtrn2q_s32(vrev64q_s32(vuzp2q_s32(v82, v229)), v217);
        *v206 = v237;
        v206[1] = vtrn2q_s32(vrev64q_s32(vuzp2q_s32(v82, v226)), v215);
        *v207 = v239;
        v207[1] = vtrn2q_s32(vrev64q_s32(vuzp2q_s32(v82, v227)), v216);
        v27 = vtrn2q_s32(vrev64q_s32(vuzp2q_s32(v82, v228)), v27);
        *v208 = v241;
        v208[1] = v27;
        if ((4 - v164))
        {
          v229.i32[0] = v82.i32[2];
          v226.i32[0] = v82.i32[2];
          v227.i32[0] = v82.i32[2];
          v228.i32[0] = v82.i32[2];
          v205[2] = vtrn2q_s32(vrev64q_s32(v229), v234);
          v206[2] = vtrn2q_s32(vrev64q_s32(v226), v236);
          v27 = vtrn2q_s32(vrev64q_s32(v228), v240);
          v207[2] = vtrn2q_s32(vrev64q_s32(v227), v238);
          v208[2] = v27;
        }
      }

      else
      {
        *v205 = v235;
        *v206 = v237;
        *v207 = v239;
        *v208 = v241;
      }
    }

    goto LABEL_133;
  }

  if (!v75)
  {
    v167 = v166 - v96 + 1;
    while (v162 <= v58 && v163 <= v58)
    {
      v168 = (v162 + v78);
      v169 = (v162 + v78 + v78);
      v170 = *(v169 + v78);
      v171 = vuzp1q_s32(v170, v84);
      v172 = vextq_s8(v170, v171, 0xCuLL);
      v173 = vuzp2q_s32(v170, v84);
      v170.i32[3] = v84.i32[1];
      v174 = (v163 + v79);
      v175 = (v163 + v79 + v79);
      v176 = *(v175 + v79);
      v177 = vuzp2q_s32(v82, v176);
      v178 = vuzp1q_s32(v82, v176);
      v179 = *v169;
      v180 = vuzp1q_s32(*v169, v84);
      v181 = *v175;
      v182 = vuzp2q_s32(v82, *v175);
      v181.i32[0] = v82.i32[2];
      v183 = *v162++;
      v184 = v183;
      v185 = *v168;
      v186 = *v163++;
      v187 = v186;
      v188 = vtrn2q_s32(vrev64q_s32(v181), v180);
      v179.i32[3] = v84.i32[1];
      v189 = vtrn2q_s32(vrev64q_s32(v182), v179);
      v190 = *v174;
      v191 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v82, *v175)), vextq_s8(*v169, v180, 0xCuLL));
      v192 = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v182, v82)), vuzp2q_s32(*v169, v84));
      v193 = vuzp2q_s32(v82, *v174);
      v194 = vuzp2q_s32(v82, v186);
      v195 = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v194, v82)), vuzp2q_s32(v184, v84));
      v196 = vuzp1q_s32(v184, v84);
      v197 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v82, v186)), vextq_s8(v184, v196, 0xCuLL));
      v198 = vuzp1q_s32(v82, *v174);
      v190.i32[0] = v82.i32[2];
      v184.i32[3] = v84.i32[1];
      v199 = vtrn2q_s32(vrev64q_s32(v194), v184);
      v200 = vuzp1q_s32(*v168, v84);
      v201 = vtrn2q_s32(vrev64q_s32(v190), v200);
      v202 = vextq_s8(*v168, v200, 0xCuLL);
      v187.i32[0] = v82.i32[2];
      v203 = vtrn2q_s32(vrev64q_s32(v187), v196);
      v204 = vuzp2q_s32(*v168, v84);
      v185.i32[3] = v84.i32[1];
      *a14 = v197;
      *(a14 + 16) = v199;
      v205 = (a14 + 64);
      *(a14 + 32) = v203;
      *(a14 + 48) = v195;
      v206 = (v88 + 64);
      *v88 = vtrn2q_s32(vrev64q_s32(v198), v202);
      *(v88 + 16) = vtrn2q_s32(vrev64q_s32(v193), v185);
      *(v88 + 32) = v201;
      *(v88 + 48) = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v193, v82)), v204);
      v207 = (v89 + 64);
      *v89 = v191;
      *(v89 + 16) = v189;
      *(v89 + 32) = v188;
      *(v89 + 48) = v192;
      v208 = (v90 + 64);
      v176.i32[0] = v82.i32[2];
      *(v90 + 32) = vtrn2q_s32(vrev64q_s32(v176), v171);
      *(v90 + 48) = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v177, v82)), v173);
      v27 = vtrn2q_s32(vrev64q_s32(v178), v172);
      *v90 = v27;
      *(v90 + 16) = vtrn2q_s32(vrev64q_s32(v177), v170);
      v90 += 64;
      v89 += 64;
      v88 += 64;
      a14 += 64;
      if (!--v167)
      {
        v164 = a12[5];
        if (v164)
        {
          goto LABEL_99;
        }

        goto LABEL_133;
      }
    }
  }

  return result;
}

__int16 *ExtractInterleaved4_B44<unsigned short,(StreamType)1,(StreamType)1,(StreamType)1,(StreamType)0>(__int16 *result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned int *a12, uint64_t a13, int8x16_t *a14, uint64_t a15, int8x16_t *a16, uint64_t a17)
{
  if (!result)
  {
    return result;
  }

  v23 = result;
  if (*(a11 + 8) >= a2)
  {
    v24 = a2;
  }

  else
  {
    v24 = *(a11 + 8);
  }

  v25 = *(a11 + 24);
  v26 = *(a11 + 60);
  v27 = vmin_u32(vmls_s32(*(*(*(*(a3 + 8) + 40) + 8 * v26) + 16), *(*(a3 + 8) + 48), v25), *(*(a3 + 8) + 48)).u32[0];
  v28 = (v27 + 3) >> 2;
  if (v27 > 0xFFFFFFFC)
  {
    v28 = 0x40000000;
  }

  v284 = v28;
  v29 = vmin_u32(vmls_s32(*(*(*(*(a4 + 8) + 40) + 8 * v26) + 16), *(*(a4 + 8) + 48), v25), *(*(a4 + 8) + 48)).u32[0];
  v30 = v29 <= 0xFFFFFFFC ? (v29 + 3) >> 2 : 0x40000000;
  v282 = v30;
  v31 = vmin_u32(vmls_s32(*(*(*(*(a5 + 8) + 40) + 8 * v26) + 16), *(*(a5 + 8) + 48), v25), *(*(a5 + 8) + 48)).u32[0];
  v32 = v31 <= 0xFFFFFFFC ? (v31 + 3) >> 2 : 0x40000000;
  result = AXRStreamB44<unsigned short,(StreamType)0>::AXRStreamB44(v286, a6);
  if (v24 < 0xE)
  {
    return result;
  }

  v33 = *(a13 + 60);
  v34 = *(a3 + 8);
  if (v34)
  {
    v35 = *(a11 + 24);
    v36 = *(*(v34 + 40) + 8 * *(a11 + 60));
    v37 = *(v36 + 12) - 1;
    if (v37 >= (HIDWORD(v35) * v33))
    {
      v37 = (HIDWORD(*(a11 + 24)) * v33);
    }

    v38 = v36 + 8 * v35;
    if (*(v34 + 104) == 1)
    {
      v39 = (*(v38 + 24) + 8 * v37);
    }

    else
    {
      v41 = (v37 * *(v34 + 108)) >> *(v34 + 112);
      v42 = *(v36 + 20) - 1;
      if (v41 >= v42)
      {
        LODWORD(v41) = v42;
      }

      v39 = (*(v38 + 24) + 8 * v41);
    }

    v40 = *v39;
  }

  else
  {
    v40 = 0;
  }

  v43 = *(a4 + 8);
  if (v43)
  {
    v44 = *(a11 + 24);
    v45 = *(*(v43 + 40) + 8 * *(a11 + 60));
    v46 = *(v45 + 12) - 1;
    if (v46 >= (HIDWORD(v44) * v33))
    {
      v46 = (HIDWORD(*(a11 + 24)) * v33);
    }

    v47 = v45 + 8 * v44;
    if (*(v43 + 104) == 1)
    {
      v48 = (*(v47 + 24) + 8 * v46);
    }

    else
    {
      v50 = (v46 * *(v43 + 108)) >> *(v43 + 112);
      v51 = *(v45 + 20) - 1;
      if (v50 >= v51)
      {
        LODWORD(v50) = v51;
      }

      v48 = (*(v47 + 24) + 8 * v50);
    }

    v49 = *v48;
  }

  else
  {
    v49 = 0;
  }

  v52 = *(a5 + 8);
  if (v52)
  {
    v53 = *(a11 + 24);
    v54 = *(*(v52 + 40) + 8 * *(a11 + 60));
    v55 = *(v54 + 12) - 1;
    if (v55 >= (HIDWORD(v53) * v33))
    {
      v55 = (HIDWORD(*(a11 + 24)) * v33);
    }

    v56 = v54 + 8 * v53;
    if (*(v52 + 104) == 1)
    {
      v57 = (*(v56 + 24) + 8 * v55);
    }

    else
    {
      v58 = (v55 * *(v52 + 108)) >> *(v52 + 112);
      v59 = *(v54 + 20) - 1;
      if (v58 >= v59)
      {
        LODWORD(v58) = v59;
      }

      v57 = (*(v56 + 24) + 8 * v58);
    }

    result = *v57;
  }

  else
  {
    result = 0;
  }

  v60 = v23 + v24 - 14;
  v61 = a6[1];
  if (v61)
  {
    v62 = *(a11 + 24);
    v63 = (HIDWORD(v62) * v33);
    v64 = *(*(v61 + 40) + 8 * *(a11 + 60));
    v65 = *(v64 + 12) - 1;
    if (v65 >= v63)
    {
      v65 = v63;
    }

    v66 = v64 + 8 * v62;
    if (*(v61 + 104) == 1)
    {
      v67 = (*(v66 + 24) + 8 * v65);
    }

    else
    {
      v69 = (v65 * *(v61 + 108)) >> *(v61 + 112);
      v70 = *(v64 + 20) - 1;
      if (v69 < v70)
      {
        v70 = v69;
      }

      v67 = (*(v66 + 24) + 8 * v70);
    }

    v68 = *v67;
  }

  else
  {
    v68 = 0;
  }

  v71 = v23 + v68;
  v72 = a12[2];
  v73 = a12[6];
  if (v72 > v73)
  {
    return result;
  }

  v75 = v286;
  v76 = vld1q_dup_s16(v75);
  v77 = 14 * *a12;
  v283 = 14 * v282;
  v285 = 14 * v284;
  v78 = (v23 + v40 + v77 + v285 * v72);
  v79 = (v23 + v49 + v77 + v283 * v72);
  v281 = 14 * v32;
  v80 = (v23 + result + v77 + v281 * v72);
  v81 = xmmword_296B6EDE0;
  v82 = xmmword_296B6EDF0;
  v83.i64[0] = 0xE0E0E0E0E0E0E0E0;
  v83.i64[1] = 0xE0E0E0E0E0E0E0E0;
  while (1)
  {
    v84 = (a14 + a17);
    v85 = (a14 + a17 + a17);
    v86 = (v85 + a17);
    if (!a16)
    {
      v89 = (v85 + a17);
      goto LABEL_72;
    }

    if (v72 == a12[2])
    {
      v87 = a12[3] + 1;
      v88 = a14;
      a14 = (a14 + a17);
      v84 = v85;
      v85 = (v85 + a17);
      do
      {
        v89 = v85;
        v85 = v84;
        v84 = a14;
        a14 = v88;
        v88 = a16;
        --v87;
      }

      while (v87);
    }

    else
    {
      v89 = (v85 + a17);
    }

    if (v72 == v73)
    {
      v90 = a12[7];
      switch(v90)
      {
        case 1u:
          goto LABEL_70;
        case 2u:
          goto LABEL_69;
        case 3u:
          v84 = a16;
LABEL_69:
          v85 = a16;
LABEL_70:
          v86 = a16;
          goto LABEL_72;
      }
    }

    v86 = v89;
LABEL_72:
    v91 = *a12;
    result = a12[1];
    if (!result)
    {
      v164 = a12[4];
      result = v78;
      v165 = v79;
      v166 = v80;
      goto LABEL_104;
    }

    v93 = v78 > v60 || v79 > v60 || v80 > v60;
    v94 = v71 > v60;
    if (v93)
    {
      v94 = 1;
    }

    if (v94)
    {
      return result;
    }

    v95.i64[0] = *(v78 + 1);
    v95.i64[1] = *(v78 + 3);
    v96 = vqtbl1q_s8(v95, v81);
    v97 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v96, 8uLL), xmmword_296B6EE00), vshlq_u8(v96, v82)), xmmword_296B6EE10);
    v98 = vaddq_s8(v97, v83);
    v97.i8[1] = 0;
    v99 = vqtbl1q_s8(v98, xmmword_296B6EE20);
    v100 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v99, xmmword_296B6EE30), v99), vqtbl1q_s8(v99, xmmword_296B6EE40));
    v101 = vdupq_lane_s16(*v97.i8, 0);
    v102 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v100.i8), xmmword_296B6EE50), *v100.i8), v101);
    v103 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v100), xmmword_296B6EE50), v100), v101);
    v104 = vdupq_n_s16(bswap32(*v78) >> 16);
    v105 = vaddq_s16(v103, v104);
    v106 = vaddq_s16(v102, v104);
    v107 = veorq_s8((*&v105 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v105));
    v108 = veorq_s8((*&v106 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v106));
    if (a7)
    {
      v108.i64[0] = (*(a7 + ((v108.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a7 + 2 * v108.u16[2]) << 32) | (*(a7 + 2 * v108.u16[1]) << 16) | *(a7 + 2 * v108.u16[0]);
      v108.i64[1] = (*(a7 + ((v108.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a7 + 2 * v108.u16[6]) << 32) | (*(a7 + 2 * v108.u16[5]) << 16) | *(a7 + 2 * v108.u16[4]);
      v107.i64[0] = (*(a7 + ((v107.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a7 + 2 * v107.u16[2]) << 32) | (*(a7 + 2 * v107.u16[1]) << 16) | *(a7 + 2 * v107.u16[0]);
      v107.i64[1] = (*(a7 + ((v107.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a7 + 2 * v107.u16[6]) << 32) | (*(a7 + 2 * v107.u16[5]) << 16) | *(a7 + 2 * v107.u16[4]);
    }

    v109.i64[0] = *(v79 + 1);
    v109.i64[1] = *(v79 + 3);
    v110 = vqtbl1q_s8(v109, v81);
    v111 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v110, 8uLL), xmmword_296B6EE00), vshlq_u8(v110, v82)), xmmword_296B6EE10);
    v112 = vaddq_s8(v111, v83);
    v111.i8[1] = 0;
    v113 = vqtbl1q_s8(v112, xmmword_296B6EE20);
    v114 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v113, xmmword_296B6EE30), v113), vqtbl1q_s8(v113, xmmword_296B6EE40));
    v115 = vdupq_lane_s16(*v111.i8, 0);
    v116 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v114.i8), xmmword_296B6EE50), *v114.i8), v115);
    v117 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v114), xmmword_296B6EE50), v114), v115);
    v118 = vdupq_n_s16(bswap32(*v79) >> 16);
    v119 = vaddq_s16(v117, v118);
    v120 = vaddq_s16(v116, v118);
    v121 = veorq_s8((*&v119 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v119));
    v122 = veorq_s8((*&v120 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v120));
    if (a8)
    {
      v122.i64[0] = (*(a8 + ((v122.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a8 + 2 * v122.u16[2]) << 32) | (*(a8 + 2 * v122.u16[1]) << 16) | *(a8 + 2 * v122.u16[0]);
      v122.i64[1] = (*(a8 + ((v122.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a8 + 2 * v122.u16[6]) << 32) | (*(a8 + 2 * v122.u16[5]) << 16) | *(a8 + 2 * v122.u16[4]);
      v121.i64[0] = (*(a8 + ((v121.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a8 + 2 * v121.u16[2]) << 32) | (*(a8 + 2 * v121.u16[1]) << 16) | *(a8 + 2 * v121.u16[0]);
      v121.i64[1] = (*(a8 + ((v121.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a8 + 2 * v121.u16[6]) << 32) | (*(a8 + 2 * v121.u16[5]) << 16) | *(a8 + 2 * v121.u16[4]);
    }

    v123.i64[0] = *(v80 + 1);
    v123.i64[1] = *(v80 + 3);
    v124 = vqtbl1q_s8(v123, v81);
    v125 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v124, 8uLL), xmmword_296B6EE00), vshlq_u8(v124, v82)), xmmword_296B6EE10);
    v126 = vaddq_s8(v125, v83);
    v125.i8[1] = 0;
    v127 = vqtbl1q_s8(v126, xmmword_296B6EE20);
    v128 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v127, xmmword_296B6EE30), v127), vqtbl1q_s8(v127, xmmword_296B6EE40));
    v129 = vdupq_lane_s16(*v125.i8, 0);
    v130 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v128.i8), xmmword_296B6EE50), *v128.i8), v129);
    v131 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v128), xmmword_296B6EE50), v128), v129);
    v132 = vdupq_n_s16(bswap32(*v80) >> 16);
    v133 = vaddq_s16(v131, v132);
    v134 = vaddq_s16(v130, v132);
    v135 = vcgezq_s16(v134);
    v136 = veorq_s8((*&v133 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v133));
    v137 = veorq_s8((*&v134 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), v135);
    if (a9)
    {
      v137.i64[0] = (*(a9 + ((v137.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a9 + 2 * v137.u16[2]) << 32) | (*(a9 + 2 * v137.u16[1]) << 16) | *(a9 + 2 * v137.u16[0]);
      v137.i64[1] = (*(a9 + ((v137.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a9 + 2 * v137.u16[6]) << 32) | (*(a9 + 2 * v137.u16[5]) << 16) | *(a9 + 2 * v137.u16[4]);
      v136.i64[0] = (*(a9 + ((v136.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a9 + 2 * v136.u16[2]) << 32) | (*(a9 + 2 * v136.u16[1]) << 16) | *(a9 + 2 * v136.u16[0]);
      v136.i64[1] = (*(a9 + ((v136.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a9 + 2 * v136.u16[6]) << 32) | (*(a9 + 2 * v136.u16[5]) << 16) | *(a9 + 2 * v136.u16[4]);
    }

    v135.i32[0] = 0;
    v138 = v76;
    v289.val[1] = vqtbl2q_s8(*v121.i8, xmmword_296B6EF40);
    v139 = v136;
    v289.val[0] = vqtbl2q_s8(*v107.i8, xmmword_296B6EE70);
    v292.val[1] = vqtbl2q_s8(*v121.i8, xmmword_296B6EF50);
    v292.val[0] = vqtbl2q_s8(*v107.i8, xmmword_296B6EE90);
    v294.val[1] = vqtbl2q_s8(*v121.i8, xmmword_296B6EF60);
    v294.val[0] = vqtbl2q_s8(*v107.i8, xmmword_296B6EEA0);
    v296.val[1] = vqtbl2q_s8(*v121.i8, xmmword_296B6EF70);
    v296.val[0] = vqtbl2q_s8(*v107.i8, xmmword_296B6EEB0);
    v140 = vqtbl2q_s8(v289, xmmword_296B6EDD0);
    v141 = vqtbl2q_s8(v292, xmmword_296B6EDD0);
    v142 = vqtbl2q_s8(v294, xmmword_296B6EDD0);
    v143 = vqtbl2q_s8(v296, xmmword_296B6EDD0);
    if (a12[4] == v91)
    {
      v144 = 4 - a12[5];
    }

    else
    {
      v144 = 4;
    }

    v107.i32[0] = a12[1] & 2;
    v145 = vdupq_lane_s32(*&vceqq_s32(v107, v135), 0);
    v146 = v76;
    v297.val[1] = vqtbl2q_s8(*v122.i8, xmmword_296B6EF60);
    v147 = v137;
    v297.val[0] = vqtbl2q_s8(*v108.i8, xmmword_296B6EEA0);
    v148 = vqtbl2q_s8(v297, xmmword_296B6EDD0);
    v297.val[1] = vqtbl2q_s8(*v122.i8, xmmword_296B6EF70);
    v297.val[0] = vqtbl2q_s8(*v108.i8, xmmword_296B6EEB0);
    v149 = vqtbl2q_s8(v297, xmmword_296B6EDD0);
    v150 = vbslq_s8(v145, v149, v148);
    v151 = vbslq_s8(v145, v148, v149);
    v287.val[1] = vqtbl2q_s8(*v122.i8, xmmword_296B6EF40);
    v287.val[0] = vqtbl2q_s8(*v108.i8, xmmword_296B6EE70);
    v287.val[0] = vqtbl2q_s8(v287, xmmword_296B6EDD0);
    v152 = vqtbl2q_s8(*v122.i8, xmmword_296B6EF50);
    v297.val[1] = vqtbl2q_s8(*v108.i8, xmmword_296B6EE90);
    v287.val[1] = vqtbl2q_s8(*(&v297 + 16), xmmword_296B6EDD0);
    v153 = vbslq_s8(v145, v287.val[1], v287.val[0]);
    v154 = vbslq_s8(v145, v287.val[0], v287.val[1]);
    v155 = vbslq_s8(v145, v143, v142);
    v156 = vbslq_s8(v145, v142, v143);
    v157 = vbslq_s8(v145, v141, v140);
    v158 = vbslq_s8(v145, v140, v141);
    if ((result & 2) != 0)
    {
      v144 -= 2;
    }

    if (result)
    {
      v159 = vextq_s8(v153, v154, 8uLL).u64[0];
      v154 = vextq_s8(v154, v153, 8uLL);
      v160 = vextq_s8(v150, v151, 8uLL).u64[0];
      v151 = vextq_s8(v151, v150, 8uLL);
      v161 = vextq_s8(v157, v158, 8uLL).u64[0];
      v158 = vextq_s8(v158, v157, 8uLL);
      v162 = vextq_s8(v155, v156, 8uLL).u64[0];
      --v144;
      v156 = vextq_s8(v156, v155, 8uLL);
      v153.i64[0] = v159;
      v150.i64[0] = v160;
      v157.i64[0] = v161;
      v155.i64[0] = v162;
    }

    v82 = xmmword_296B6EDF0;
    v81 = xmmword_296B6EDE0;
    v83.i64[0] = 0xE0E0E0E0E0E0E0E0;
    v83.i64[1] = 0xE0E0E0E0E0E0E0E0;
    if (v144 <= 1)
    {
      v163 = 0;
    }

    else
    {
      *a14 = v154;
      *v84 = v151;
      v144 -= 2;
      v154.i64[0] = v153.i64[0];
      v151.i64[0] = v150.i64[0];
      *v85 = v158;
      v158.i64[0] = v157.i64[0];
      *v86 = v156;
      v156.i64[0] = v155.i64[0];
      v163 = 16;
    }

    if (v144 >= 1)
    {
      *(a14->i64 + v163) = v154.i64[0];
      *(v84->i64 + v163) = v151.i64[0];
      *(v85->i64 + v163) = v158.i64[0];
      *(v86->i64 + v163) = v156.i64[0];
      v163 |= 8uLL;
    }

    v164 = a12[4];
    if (v164 != v91)
    {
      break;
    }

LABEL_141:
    a14 = (v89 + a17);
    v80 = (v80 + v281);
    v79 = (v79 + v283);
    v78 = (v78 + v285);
    result = (v72 + 1);
    v73 = a12[6];
    if (v72++ >= v73)
    {
      return result;
    }
  }

  result = (v78 + 7);
  v165 = v79 + 7;
  v166 = v80 + 7;
  a14 = (a14 + v163);
  v84 = (v84 + v163);
  v85 = (v85 + v163);
  v86 = (v86 + v163);
  ++v91;
LABEL_104:
  v167 = a12[5];
  v168 = v167 != 0;
  if (v164 == 0 && v168 || (v169 = v164 - v168, v91 > v169))
  {
    v221 = a14;
    v222 = v84;
    v223 = v85;
    v224 = v86;
    if (v167)
    {
LABEL_121:
      v226 = result > v60 || v165 > v60 || v166 > v60;
      v227 = v71 > v60;
      if (v226)
      {
        v227 = 1;
      }

      if (v227)
      {
        return result;
      }

      v228.i64[0] = *(result + 1);
      v228.i64[1] = *(result + 3);
      v229 = vqtbl1q_s8(v228, v81);
      v230 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v229, 8uLL), xmmword_296B6EE00), vshlq_u8(v229, v82)), xmmword_296B6EE10);
      v231 = vaddq_s8(v230, v83);
      v230.i8[1] = 0;
      v232 = vqtbl1q_s8(v231, xmmword_296B6EE20);
      v233 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v232, xmmword_296B6EE30), v232), vqtbl1q_s8(v232, xmmword_296B6EE40));
      v234 = vdupq_lane_s16(*v230.i8, 0);
      v235 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v233.i8), xmmword_296B6EE50), *v233.i8), v234);
      v236 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v233), xmmword_296B6EE50), v233), v234);
      v237 = vdupq_n_s16(bswap32(*result) >> 16);
      v238 = vaddq_s16(v236, v237);
      v239 = vaddq_s16(v235, v237);
      v240 = veorq_s8((*&v238 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v238));
      v241 = veorq_s8((*&v239 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v239));
      if (a7)
      {
        v241.i64[0] = (*(a7 + ((v241.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a7 + 2 * v241.u16[2]) << 32) | (*(a7 + 2 * v241.u16[1]) << 16) | *(a7 + 2 * v241.u16[0]);
        v241.i64[1] = (*(a7 + ((v241.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a7 + 2 * v241.u16[6]) << 32) | (*(a7 + 2 * v241.u16[5]) << 16) | *(a7 + 2 * v241.u16[4]);
        v240.i64[0] = (*(a7 + ((v240.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a7 + 2 * v240.u16[2]) << 32) | (*(a7 + 2 * v240.u16[1]) << 16) | *(a7 + 2 * v240.u16[0]);
        v240.i64[1] = (*(a7 + ((v240.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a7 + 2 * v240.u16[6]) << 32) | (*(a7 + 2 * v240.u16[5]) << 16) | *(a7 + 2 * v240.u16[4]);
      }

      v242.i64[0] = *(v165 + 1);
      v242.i64[1] = *(v165 + 3);
      v243 = vqtbl1q_s8(v242, v81);
      v244 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v243, 8uLL), xmmword_296B6EE00), vshlq_u8(v243, v82)), xmmword_296B6EE10);
      v245 = vaddq_s8(v244, v83);
      v244.i8[1] = 0;
      v246 = vqtbl1q_s8(v245, xmmword_296B6EE20);
      v247 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v246, xmmword_296B6EE30), v246), vqtbl1q_s8(v246, xmmword_296B6EE40));
      v248 = vdupq_lane_s16(*v244.i8, 0);
      v249 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v247.i8), xmmword_296B6EE50), *v247.i8), v248);
      v250 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v247), xmmword_296B6EE50), v247), v248);
      v251 = vdupq_n_s16(bswap32(*v165) >> 16);
      v252 = vaddq_s16(v250, v251);
      v253 = vaddq_s16(v249, v251);
      v254 = veorq_s8((*&v252 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v252));
      v255 = veorq_s8((*&v253 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v253));
      if (a8)
      {
        v255.i64[0] = (*(a8 + ((v255.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a8 + 2 * v255.u16[2]) << 32) | (*(a8 + 2 * v255.u16[1]) << 16) | *(a8 + 2 * v255.u16[0]);
        v255.i64[1] = (*(a8 + ((v255.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a8 + 2 * v255.u16[6]) << 32) | (*(a8 + 2 * v255.u16[5]) << 16) | *(a8 + 2 * v255.u16[4]);
        v254.i64[0] = (*(a8 + ((v254.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a8 + 2 * v254.u16[2]) << 32) | (*(a8 + 2 * v254.u16[1]) << 16) | *(a8 + 2 * v254.u16[0]);
        v254.i64[1] = (*(a8 + ((v254.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a8 + 2 * v254.u16[6]) << 32) | (*(a8 + 2 * v254.u16[5]) << 16) | *(a8 + 2 * v254.u16[4]);
      }

      v256.i64[0] = *(v166 + 1);
      v256.i64[1] = *(v166 + 3);
      v257 = vqtbl1q_s8(v256, v81);
      v258 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v257, 8uLL), xmmword_296B6EE00), vshlq_u8(v257, v82)), xmmword_296B6EE10);
      v259 = vaddq_s8(v258, v83);
      v258.i8[1] = 0;
      v260 = vqtbl1q_s8(v259, xmmword_296B6EE20);
      v261 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v260, xmmword_296B6EE30), v260), vqtbl1q_s8(v260, xmmword_296B6EE40));
      v262 = vdupq_lane_s16(*v258.i8, 0);
      v263 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v261.i8), xmmword_296B6EE50), *v261.i8), v262);
      v264 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v261), xmmword_296B6EE50), v261), v262);
      v265 = vdupq_n_s16(bswap32(*v166) >> 16);
      v266 = vaddq_s16(v264, v265);
      v267 = vaddq_s16(v263, v265);
      v268 = veorq_s8((*&v266 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v266));
      v269 = veorq_s8((*&v267 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v267));
      if (a9)
      {
        v269.i64[0] = (*(a9 + ((v269.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a9 + 2 * v269.u16[2]) << 32) | (*(a9 + 2 * v269.u16[1]) << 16) | *(a9 + 2 * v269.u16[0]);
        v269.i64[1] = (*(a9 + ((v269.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a9 + 2 * v269.u16[6]) << 32) | (*(a9 + 2 * v269.u16[5]) << 16) | *(a9 + 2 * v269.u16[4]);
        v268.i64[0] = (*(a9 + ((v268.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a9 + 2 * v268.u16[2]) << 32) | (*(a9 + 2 * v268.u16[1]) << 16) | *(a9 + 2 * v268.u16[0]);
        v268.i64[1] = (*(a9 + ((v268.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a9 + 2 * v268.u16[6]) << 32) | (*(a9 + 2 * v268.u16[5]) << 16) | *(a9 + 2 * v268.u16[4]);
      }

      v270 = v76;
      v271 = v269;
      v301.val[1] = vqtbl2q_s8(*v255.i8, xmmword_296B6EF60);
      v301.val[0] = vqtbl2q_s8(*v241.i8, xmmword_296B6EEA0);
      v272 = vqtbl2q_s8(v301, xmmword_296B6EDD0);
      v273 = vqtbl2q_s8(*v255.i8, xmmword_296B6EF40);
      v301.val[1] = vqtbl2q_s8(*v241.i8, xmmword_296B6EE70);
      v274 = vqtbl2q_s8(*(&v301 + 16), xmmword_296B6EDD0);
      v275 = v76;
      v276 = v268;
      v291.val[1] = vqtbl2q_s8(*v254.i8, xmmword_296B6EF60);
      v291.val[0] = vqtbl2q_s8(*v240.i8, xmmword_296B6EEA0);
      v277 = vqtbl2q_s8(v291, xmmword_296B6EDD0);
      v288.val[1] = vqtbl2q_s8(*v254.i8, xmmword_296B6EF40);
      v288.val[0] = vqtbl2q_s8(*v240.i8, xmmword_296B6EE70);
      v278 = vqtbl2q_s8(v288, xmmword_296B6EDD0);
      if (((4 - v167) & 2) != 0)
      {
        *v221 = v274;
        *v222 = v272;
        *v223 = v278;
        *v224 = v277;
        if ((4 - v167))
        {
          v302.val[1] = vqtbl2q_s8(*v255.i8, xmmword_296B6EF70);
          v302.val[0] = vqtbl2q_s8(*v241.i8, xmmword_296B6EEB0);
          v299.val[1] = vqtbl2q_s8(*v255.i8, xmmword_296B6EF50);
          v299.val[0] = vqtbl2q_s8(*v241.i8, xmmword_296B6EE90);
          v279 = vqtbl2q_s8(v299, xmmword_296B6EDD0).u64[0];
          v299.val[1] = vqtbl2q_s8(*v254.i8, xmmword_296B6EF70);
          v299.val[0] = vqtbl2q_s8(*v240.i8, xmmword_296B6EEB0);
          v295.val[1] = vqtbl2q_s8(*v254.i8, xmmword_296B6EF50);
          v295.val[0] = vqtbl2q_s8(*v240.i8, xmmword_296B6EE90);
          v221[1].i64[0] = v279;
          v222[1].i64[0] = vqtbl2q_s8(v302, xmmword_296B6EDD0).u64[0];
          v223[1].i64[0] = vqtbl2q_s8(v295, xmmword_296B6EDD0).u64[0];
          v224[1].i64[0] = vqtbl2q_s8(v299, xmmword_296B6EDD0).u64[0];
        }
      }

      else
      {
        v221->i64[0] = v274.i64[0];
        v222->i64[0] = v272.i64[0];
        v223->i64[0] = v278.i64[0];
        v224->i64[0] = v277.i64[0];
      }
    }

    goto LABEL_141;
  }

  if (v71 <= v60)
  {
    v170 = v169 - v91 + 1;
    while (result <= v60 && v165 <= v60 && v166 <= v60)
    {
      v171.i64[0] = *(result + 1);
      v171.i64[1] = *(result + 3);
      v172 = vqtbl1q_s8(v171, v81);
      v173 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v172, 8uLL), xmmword_296B6EE00), vshlq_u8(v172, v82)), xmmword_296B6EE10);
      v174 = vaddq_s8(v173, v83);
      v173.i8[1] = 0;
      v175 = vqtbl1q_s8(v174, xmmword_296B6EE20);
      v176 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v175, xmmword_296B6EE30), v175), vqtbl1q_s8(v175, xmmword_296B6EE40));
      v177 = vdupq_lane_s16(*v173.i8, 0);
      v178 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v176.i8), xmmword_296B6EE50), *v176.i8), v177);
      v179 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v176), xmmword_296B6EE50), v176), v177);
      v180 = vdupq_n_s16(bswap32(*result) >> 16);
      v181 = vaddq_s16(v179, v180);
      v182 = vaddq_s16(v178, v180);
      v183 = veorq_s8((*&v181 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v181));
      v184 = veorq_s8((*&v182 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v182));
      if (a7)
      {
        v184.i64[0] = (*(a7 + ((v184.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a7 + 2 * v184.u16[2]) << 32) | (*(a7 + 2 * v184.u16[1]) << 16) | *(a7 + 2 * v184.u16[0]);
        v184.i64[1] = (*(a7 + ((v184.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a7 + 2 * v184.u16[6]) << 32) | (*(a7 + 2 * v184.u16[5]) << 16) | *(a7 + 2 * v184.u16[4]);
        v183.i64[0] = (*(a7 + ((v183.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a7 + 2 * v183.u16[2]) << 32) | (*(a7 + 2 * v183.u16[1]) << 16) | *(a7 + 2 * v183.u16[0]);
        v183.i64[1] = (*(a7 + ((v183.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a7 + 2 * v183.u16[6]) << 32) | (*(a7 + 2 * v183.u16[5]) << 16) | *(a7 + 2 * v183.u16[4]);
      }

      v185.i64[0] = *(v165 + 1);
      v185.i64[1] = *(v165 + 3);
      v186 = vqtbl1q_s8(v185, v81);
      v187 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v186, 8uLL), xmmword_296B6EE00), vshlq_u8(v186, v82)), xmmword_296B6EE10);
      v188 = vaddq_s8(v187, v83);
      v187.i8[1] = 0;
      v189 = vqtbl1q_s8(v188, xmmword_296B6EE20);
      v190 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v189, xmmword_296B6EE30), v189), vqtbl1q_s8(v189, xmmword_296B6EE40));
      v191 = vdupq_lane_s16(*v187.i8, 0);
      v192 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v190.i8), xmmword_296B6EE50), *v190.i8), v191);
      v193 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v190), xmmword_296B6EE50), v190), v191);
      v194 = vdupq_n_s16(bswap32(*v165) >> 16);
      v195 = vaddq_s16(v193, v194);
      v196 = vaddq_s16(v192, v194);
      v197 = veorq_s8((*&v195 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v195));
      v198 = veorq_s8((*&v196 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v196));
      if (a8)
      {
        v198.i64[0] = (*(a8 + ((v198.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a8 + 2 * v198.u16[2]) << 32) | (*(a8 + 2 * v198.u16[1]) << 16) | *(a8 + 2 * v198.u16[0]);
        v198.i64[1] = (*(a8 + ((v198.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a8 + 2 * v198.u16[6]) << 32) | (*(a8 + 2 * v198.u16[5]) << 16) | *(a8 + 2 * v198.u16[4]);
        v197.i64[0] = (*(a8 + ((v197.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a8 + 2 * v197.u16[2]) << 32) | (*(a8 + 2 * v197.u16[1]) << 16) | *(a8 + 2 * v197.u16[0]);
        v197.i64[1] = (*(a8 + ((v197.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a8 + 2 * v197.u16[6]) << 32) | (*(a8 + 2 * v197.u16[5]) << 16) | *(a8 + 2 * v197.u16[4]);
      }

      v199.i64[0] = *(v166 + 1);
      v199.i64[1] = *(v166 + 3);
      v200 = vqtbl1q_s8(v199, v81);
      v201 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v200, 8uLL), xmmword_296B6EE00), vshlq_u8(v200, v82)), xmmword_296B6EE10);
      v202 = vaddq_s8(v201, v83);
      v201.i8[1] = 0;
      v203 = vqtbl1q_s8(v202, xmmword_296B6EE20);
      v204 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v203, xmmword_296B6EE30), v203), vqtbl1q_s8(v203, xmmword_296B6EE40));
      v205 = vdupq_lane_s16(*v201.i8, 0);
      v206 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v204.i8), xmmword_296B6EE50), *v204.i8), v205);
      v207 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v204), xmmword_296B6EE50), v204), v205);
      v208 = vdupq_n_s16(bswap32(*v166) >> 16);
      v209 = vaddq_s16(v207, v208);
      v210 = vaddq_s16(v206, v208);
      v211 = veorq_s8((*&v209 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v209));
      v212 = veorq_s8((*&v210 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v210));
      if (a9)
      {
        v212.i64[0] = (*(a9 + ((v212.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a9 + 2 * v212.u16[2]) << 32) | (*(a9 + 2 * v212.u16[1]) << 16) | *(a9 + 2 * v212.u16[0]);
        v212.i64[1] = (*(a9 + ((v212.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a9 + 2 * v212.u16[6]) << 32) | (*(a9 + 2 * v212.u16[5]) << 16) | *(a9 + 2 * v212.u16[4]);
        v211.i64[0] = (*(a9 + ((v211.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a9 + 2 * v211.u16[2]) << 32) | (*(a9 + 2 * v211.u16[1]) << 16) | *(a9 + 2 * v211.u16[0]);
        v211.i64[1] = (*(a9 + ((v211.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a9 + 2 * v211.u16[6]) << 32) | (*(a9 + 2 * v211.u16[5]) << 16) | *(a9 + 2 * v211.u16[4]);
      }

      result += 7;
      v165 += 7;
      v300.val[1] = vqtbl2q_s8(*(&v76 - 1), xmmword_296B6EF60);
      v213 = v211;
      v300.val[0] = vqtbl2q_s8(*v183.i8, xmmword_296B6EEA0);
      v214 = vqtbl2q_s8(v300, xmmword_296B6EDD0);
      v215 = vqtbl2q_s8(*(&v76 - 1), xmmword_296B6EF70);
      v300.val[1] = vqtbl2q_s8(*v183.i8, xmmword_296B6EEB0);
      v290.val[1] = vqtbl2q_s8(*(&v76 - 1), xmmword_296B6EF40);
      v290.val[0] = vqtbl2q_s8(*v183.i8, xmmword_296B6EE70);
      v293.val[1] = vqtbl2q_s8(*(&v76 - 1), xmmword_296B6EF50);
      v293.val[0] = vqtbl2q_s8(*v183.i8, xmmword_296B6EE90);
      v216 = vqtbl2q_s8(v293, xmmword_296B6EDD0);
      v217 = v76;
      v293.val[1] = vqtbl2q_s8(*v198.i8, xmmword_296B6EF60);
      v218 = v212;
      v293.val[0] = vqtbl2q_s8(*v184.i8, xmmword_296B6EEA0);
      v219 = vqtbl2q_s8(v293, xmmword_296B6EDD0);
      v300.val[0] = vqtbl2q_s8(*v198.i8, xmmword_296B6EF70);
      v293.val[1] = vqtbl2q_s8(*v198.i8, xmmword_296B6EF40);
      v293.val[0] = vqtbl2q_s8(*v184.i8, xmmword_296B6EE70);
      v298.val[1] = vqtbl2q_s8(*v198.i8, xmmword_296B6EF50);
      v298.val[0] = vqtbl2q_s8(*v184.i8, xmmword_296B6EE90);
      *a14 = vqtbl2q_s8(v293, xmmword_296B6EDD0);
      a14[1] = vqtbl2q_s8(v298, xmmword_296B6EDD0);
      v220 = vqtbl2q_s8(*v184.i8, xmmword_296B6EEB0);
      v166 += 7;
      v221 = a14 + 2;
      *v84 = v219;
      v84[1] = vqtbl2q_s8(v300, xmmword_296B6EDD0);
      v222 = v84 + 2;
      v223 = v85 + 2;
      *v85 = vqtbl2q_s8(v290, xmmword_296B6EDD0);
      v85[1] = v216;
      v224 = v86 + 2;
      *v86 = v214;
      v86[1] = vqtbl2q_s8(*(&v300 + 16), xmmword_296B6EDD0);
      v86 += 2;
      v85 += 2;
      v84 += 2;
      a14 += 2;
      if (!--v170)
      {
        v167 = a12[5];
        if (v167)
        {
          goto LABEL_121;
        }

        goto LABEL_141;
      }
    }
  }

  return result;
}

uint64_t ExtractInterleaved4_B44<unsigned int,(StreamType)1,(StreamType)1,(StreamType)1,(StreamType)0>(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int32x2_t *a11, unsigned int *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (!result)
  {
    return result;
  }

  v21 = result;
  if (*&a11[1] >= a2)
  {
    v22 = a2;
  }

  else
  {
    v22 = a11[1];
  }

  v23 = a11[7].u32[1];
  v24 = a11[3];
  v25 = vmin_u32(vmls_s32(*(*(*(*(a3 + 8) + 40) + 8 * v23) + 16), *(*(a3 + 8) + 48), v24), *(*(a3 + 8) + 48)).u32[0];
  v26 = vmin_u32(vmls_s32(*(*(*(*(a4 + 8) + 40) + 8 * v23) + 16), *(*(a4 + 8) + 48), v24), *(*(a4 + 8) + 48)).u32[0];
  v27 = vmin_u32(vmls_s32(*(*(*(*(a5 + 8) + 40) + 8 * v23) + 16), *(*(a5 + 8) + 48), v24), *(*(a5 + 8) + 48)).u32[0];
  result = AXRStreamB44<unsigned int,(StreamType)0>::AXRStreamB44(&v267, a6);
  v29 = 12 * v25 + 16;
  if (v29 <= 12 * v26 + 16)
  {
    v29 = 12 * v26 + 16;
  }

  v30 = 12 * v27 + 16;
  if (v29 > v30)
  {
    v30 = v29;
  }

  v31 = *&v22 - v30;
  if (*&v22 < v30)
  {
    return result;
  }

  v32 = *(a13 + 60);
  v33 = *(a3 + 8);
  if (v33)
  {
    v34 = a11[3];
    v35 = *(*(v33 + 40) + 8 * a11[7].u32[1]);
    v36 = *(v35 + 12) - 1;
    if (v36 >= (v34.i32[1] * v32))
    {
      v36 = (HIDWORD(*&a11[3]) * v32);
    }

    v37 = v35 + 8 * v34.u32[0];
    if (*(v33 + 104) == 1)
    {
      v38 = (*(v37 + 24) + 8 * v36);
    }

    else
    {
      v40 = (v36 * *(v33 + 108)) >> *(v33 + 112);
      v41 = *(v35 + 20) - 1;
      if (v40 >= v41)
      {
        LODWORD(v40) = v41;
      }

      v38 = (*(v37 + 24) + 8 * v40);
    }

    v39 = *v38;
  }

  else
  {
    v39 = 0;
  }

  v42 = *(a4 + 8);
  if (v42)
  {
    v43 = a11[3];
    v44 = *(*(v42 + 40) + 8 * a11[7].u32[1]);
    v45 = *(v44 + 12) - 1;
    if (v45 >= (v43.i32[1] * v32))
    {
      v45 = (HIDWORD(*&a11[3]) * v32);
    }

    v46 = v44 + 8 * v43.u32[0];
    if (*(v42 + 104) == 1)
    {
      v47 = (*(v46 + 24) + 8 * v45);
    }

    else
    {
      v49 = (v45 * *(v42 + 108)) >> *(v42 + 112);
      v50 = *(v44 + 20) - 1;
      if (v49 >= v50)
      {
        LODWORD(v49) = v50;
      }

      v47 = (*(v46 + 24) + 8 * v49);
    }

    v48 = *v47;
  }

  else
  {
    v48 = 0;
  }

  v51 = *(a5 + 8);
  if (v51)
  {
    v52 = a11[3];
    v53 = *(*(v51 + 40) + 8 * a11[7].u32[1]);
    v54 = *(v53 + 12) - 1;
    if (v54 >= (v52.i32[1] * v32))
    {
      v54 = (HIDWORD(*&a11[3]) * v32);
    }

    v55 = v53 + 8 * v52.u32[0];
    if (*(v51 + 104) == 1)
    {
      v56 = (*(v55 + 24) + 8 * v54);
    }

    else
    {
      v58 = (v54 * *(v51 + 108)) >> *(v51 + 112);
      v59 = *(v53 + 20) - 1;
      if (v58 >= v59)
      {
        LODWORD(v58) = v59;
      }

      v56 = (*(v55 + 24) + 8 * v58);
    }

    v57 = *v56;
  }

  else
  {
    v57 = 0;
  }

  v60 = v31 + v21;
  v61 = a6[1];
  if (v61)
  {
    v62 = a11[3];
    v63 = (v62.i32[1] * v32);
    v64 = *(*(v61 + 40) + 8 * a11[7].u32[1]);
    v65 = *(v64 + 12) - 1;
    if (v65 >= v63)
    {
      v65 = v63;
    }

    v66 = v64 + 8 * v62.u32[0];
    if (*(v61 + 104) == 1)
    {
      v67 = (*(v66 + 24) + 8 * v65);
    }

    else
    {
      v69 = (v65 * *(v61 + 108)) >> *(v61 + 112);
      v70 = *(v64 + 20) - 1;
      if (v69 < v70)
      {
        v70 = v69;
      }

      v67 = (*(v66 + 24) + 8 * v70);
    }

    v68 = *v67;
  }

  else
  {
    v68 = 0;
  }

  v71 = v68 + v21;
  v72 = a12[2];
  v73 = v71 > v60;
  v74 = a12[6];
  if (v72 > v74)
  {
    return result;
  }

  v76 = 4 * v25;
  v77 = 4 * v26;
  v78 = 4 * v27;
  result = 16 * v25;
  v79 = 16 * v27;
  v80 = &v267;
  v81 = vld1q_dup_f32(v80);
  v82 = *a12;
  v83 = v39 + v21 + 16 * v82 + 16 * v25 * v72;
  v265 = 16 * v25;
  v266 = 16 * v26;
  v84 = (v48 + v21 + 16 * v82 + 16 * v26 * v72);
  v85 = (v57 + v21 + 16 * v82 + 16 * v27 * v72);
  while (1)
  {
    v86 = a14 + a17;
    v87 = a14 + a17 + a17;
    v88 = v87 + a17;
    if (!a16)
    {
      v91 = v87 + a17;
      goto LABEL_68;
    }

    if (v72 == a12[2])
    {
      v89 = a12[3] + 1;
      v90 = a14;
      a14 += a17;
      v86 = v87;
      v87 += a17;
      do
      {
        v91 = v87;
        v87 = v86;
        v86 = a14;
        a14 = v90;
        v90 = a16;
        --v89;
      }

      while (v89);
    }

    else
    {
      v91 = v87 + a17;
    }

    if (v72 == v74)
    {
      v92 = a12[7];
      switch(v92)
      {
        case 1u:
          goto LABEL_66;
        case 2u:
          goto LABEL_65;
        case 3u:
          v86 = a16;
LABEL_65:
          v87 = a16;
LABEL_66:
          v88 = a16;
          goto LABEL_68;
      }
    }

    v88 = v91;
LABEL_68:
    v94 = *a12;
    v93 = a12[1];
    if (!v93)
    {
      v165 = a12[4];
      v166 = v83;
      v167 = v84;
      v168 = v85;
      goto LABEL_92;
    }

    v97 = v83 > v60 || v84 > v60 || v85 > v60 || v73;
    if (v97)
    {
      return result;
    }

    v28.i32[0] = 0;
    v98 = (v83 + v76 + v76);
    v99 = *(v98 + v76);
    v100 = (v84 + v77 + v77);
    v101 = *v100;
    v102 = *(v100 + v77);
    v103 = (v85 + v78 + v78);
    v104 = *v103;
    v105 = *(v103 + v78);
    v106 = vuzp1q_s32(v102, v81);
    v107 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v99, v105)), vextq_s8(v102, v106, 0xCuLL));
    v108 = vuzp1q_s32(*v100, v81);
    v109 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(*v98, *v103)), vextq_s8(*v100, v108, 0xCuLL));
    v110 = vuzp2q_s32(v99, v105);
    v105.i32[0] = *(&v98->i64[1] + v76);
    v111 = *v83;
    v112 = *(v83 + v76);
    v113 = *v84;
    v114 = *(v84 + v77);
    v115 = *v85;
    v116 = *(v85 + v78);
    v117 = vtrn2q_s32(vrev64q_s32(v105), v106);
    v118 = vuzp2q_s32(*v98, *v103);
    v104.i32[0] = v98->i64[1];
    v119 = vtrn2q_s32(vrev64q_s32(v104), v108);
    v120 = vuzp2q_s32(v102, v81);
    v102.i32[3] = v81.i32[1];
    v121 = vtrn2q_s32(vrev64q_s32(v110), v102);
    v122 = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v110, v99)), v120);
    v101.i32[3] = v81.i32[1];
    v123 = vtrn2q_s32(vrev64q_s32(v118), v101);
    v124 = vrev64q_s32(vtrn2q_s32(v118, *v98));
    v125 = vtrn2q_s32(v124, vuzp2q_s32(*v100, v81));
    v126 = 4 - a12[5];
    if (a12[4] != v94)
    {
      v126 = 4;
    }

    v124.i32[0] = a12[1] & 2;
    v127 = vdupq_lane_s32(*&vceqq_s32(v124, v28), 0);
    v128 = vbslq_s8(v127, v123, v125);
    v129 = vbslq_s8(v127, v121, v122);
    v130 = vuzp2q_s32(v112, v116);
    v131 = vuzp2q_s32(v114, v81);
    v132 = vuzp1q_s32(v114, v81);
    v133 = vextq_s8(v114, v132, 0xCuLL);
    v114.i32[3] = v81.i32[1];
    v134 = vtrn2q_s32(vrev64q_s32(v130), v114);
    v135 = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v130, v112)), v131);
    v136 = vbslq_s8(v127, v134, v135);
    v137 = vuzp2q_s32(v113, v81);
    v138 = vuzp1q_s32(v113, v81);
    v139 = vextq_s8(v113, v138, 0xCuLL);
    v113.i32[3] = v81.i32[1];
    v140 = vuzp2q_s32(v111, v115);
    v141 = vtrn2q_s32(vrev64q_s32(v140), v113);
    v142 = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v140, v111)), v137);
    v143 = vbslq_s8(v127, v141, v142);
    v144 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v111, v115)), v139);
    v115.i32[0] = *(v83 + 8);
    v145 = vtrn2q_s32(vrev64q_s32(v115), v138);
    v146 = vbslq_s8(v127, v144, v145);
    v147 = vbslq_s8(v127, v109, v119);
    v148 = vbslq_s8(v127, v107, v117);
    v149 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v112, v116)), v133);
    v116.i32[0] = *(v83 + v76 + 8);
    v150 = vrev64q_s32(v116);
    v151 = vtrn2q_s32(v150, v132);
    if ((v93 & 2) != 0)
    {
      v152 = v126 - 2;
    }

    else
    {
      v152 = v126;
    }

    v153 = v93 & 1;
    v154 = v152 - v153;
    v150.i32[0] = v153;
    v155 = vdupq_lane_s32(*&vmvnq_s8(vceqq_s32(v150, v28)), 0);
    v156 = vbslq_s8(v155, v143, v146);
    v157 = vbslq_s8(v155, v136, vbslq_s8(v127, v149, v151));
    v28 = vbslq_s8(v155, v129, v148);
    v158 = vbslq_s8(v155, v128, v147);
    if (v152 - v153 <= 1)
    {
      v164 = 0;
    }

    else
    {
      v159 = vbslq_s8(v127, v125, v123);
      v160 = vbslq_s8(v127, v145, v144);
      v161 = vbslq_s8(v127, v119, v109);
      v162 = vbslq_s8(v127, v117, v107);
      v163 = vbslq_s8(v127, v151, v149);
      *a14 = v156;
      *(a14 + 16) = vbslq_s8(v155, v160, v143);
      *v86 = v157;
      *(v86 + 16) = vbslq_s8(v155, v163, v136);
      *v87 = v158;
      *(v87 + 16) = vbslq_s8(v155, v161, v128);
      v154 -= 2;
      v156 = vbslq_s8(v155, vbslq_s8(v127, v142, v141), v160);
      *v88 = v28;
      *(v88 + 16) = vbslq_s8(v155, v162, v129);
      v157 = vbslq_s8(v155, vbslq_s8(v127, v135, v134), v163);
      v158 = vbslq_s8(v155, v159, v161);
      v28 = vbslq_s8(v155, vbslq_s8(v127, v122, v121), v162);
      v164 = 32;
    }

    if (v154 >= 1)
    {
      *(v164 + a14) = v156;
      *(v164 + v86) = v157;
      *(v164 + v87) = v158;
      *(v164 + v88) = v28;
      v164 |= 0x10uLL;
    }

    v165 = a12[4];
    if (v165 != v94)
    {
      break;
    }

LABEL_153:
    a14 = v91 + a17;
    v85 = (v85 + v79);
    v84 = (v84 + v266);
    v83 += result;
    v74 = a12[6];
    if (v72++ >= v74)
    {
      return result;
    }
  }

  v166 = (v83 + 16);
  v167 = v84 + 1;
  v168 = v85 + 1;
  a14 += v164;
  v86 += v164;
  v87 += v164;
  v88 += v164;
  ++v94;
LABEL_92:
  v169 = a12[5];
  v170 = v169 != 0;
  if (v165 == 0 && v170 || (v171 = v165 - v170, v94 > v171))
  {
    v210 = a14;
    v213 = v86;
    v214 = v87;
    v215 = v88;
    if (v169)
    {
LABEL_103:
      if (v72 == a12[6])
      {
        v217 = 4 - a12[7];
      }

      else
      {
        v217 = 4;
      }

      v220 = v166 > v60 || v167 > v60 || v168 > v60 || v73;
      if (v220)
      {
        return result;
      }

      if (v217 < 2)
      {
        v222 = 0;
        v221 = v166;
        v223 = v166;
      }

      else
      {
        v221 = (v166 + v76);
        if (v217 == 2)
        {
          v222 = 0;
          v223 = (v166 + v76);
        }

        else
        {
          v223 = (v166 + v76);
          v221 = (v221 + v76);
          if (v217 <= 3)
          {
            v222 = 0;
          }

          else
          {
            v222 = v76;
          }
        }
      }

      v224 = (v221 + v222);
      v225 = 0uLL;
      v226 = 0uLL;
      v28 = 0uLL;
      v227 = 0uLL;
      if ((4 - v169))
      {
        v227.i32[0] = *(v166 + 3 - v169);
        v225.i32[0] = *(v223 + 3 - v169);
        v226.i32[0] = *(v221 + 3 - v169);
        result = v265;
        v28.i32[0] = *(v224 + 3 - v169);
      }

      if (((4 - v169) & 2) != 0)
      {
        v228.i64[0] = *v166;
        v228.i64[1] = v227.i64[0];
        v229.i64[0] = *v223;
        v229.i64[1] = v225.i64[0];
        v230.i64[0] = *v221;
        v230.i64[1] = v226.i64[0];
        v231.i64[0] = *v224;
        v231.i64[1] = v28.i64[0];
        v225 = v229;
        v226 = v230;
        v28 = v231;
        v227 = v228;
      }

      if (v217 < 2)
      {
        v233 = 0;
        v232 = v167;
        v234 = v167;
      }

      else
      {
        v232 = (v167->i64 + v77);
        if (v217 == 2)
        {
          v233 = 0;
          v234 = (v167->i64 + v77);
        }

        else
        {
          v234 = (v167->i64 + v77);
          v232 = (v232 + v77);
          if (v217 <= 3)
          {
            v233 = 0;
          }

          else
          {
            v233 = v77;
          }
        }
      }

      v235 = (v232 + v233);
      v236 = 0uLL;
      v237 = 0uLL;
      v238 = 0uLL;
      v239 = 0uLL;
      if ((4 - v169))
      {
        v239.i32[0] = v167->i32[3 - v169];
        v236.i32[0] = *(v234 + 3 - v169);
        v237.i32[0] = *(v232 + 3 - v169);
        result = v265;
        v238.i32[0] = *(v235 + 3 - v169);
      }

      if (((4 - v169) & 2) != 0)
      {
        v240.i64[0] = v167->i64[0];
        v240.i64[1] = v239.i64[0];
        v241.i64[0] = *v234;
        v241.i64[1] = v236.i64[0];
        v242.i64[0] = *v232;
        v242.i64[1] = v237.i64[0];
        v243.i64[0] = *v235;
        v243.i64[1] = v238.i64[0];
        v236 = v241;
        v237 = v242;
        v238 = v243;
        v239 = v240;
      }

      if (v217 < 2)
      {
        v245 = 0;
        v244 = v168;
        v246 = v168;
      }

      else
      {
        v244 = (v168->i64 + v78);
        if (v217 == 2)
        {
          v245 = 0;
          v246 = (v168->i64 + v78);
        }

        else
        {
          v246 = (v168->i64 + v78);
          v244 = (v244 + v78);
          if (v217 <= 3)
          {
            v245 = 0;
          }

          else
          {
            v245 = v78;
          }
        }
      }

      v247 = (v244 + v245);
      v248 = 0uLL;
      v249 = 0uLL;
      v250 = 0uLL;
      v251 = 0uLL;
      if ((4 - v169))
      {
        v251.i32[0] = v168->i32[3 - v169];
        v248.i32[0] = *(v246 + 3 - v169);
        v249.i32[0] = *(v244 + 3 - v169);
        result = v265;
        v250.i32[0] = *(v247 + 3 - v169);
      }

      if (((4 - v169) & 2) != 0)
      {
        v252.i64[0] = v168->i64[0];
        v252.i64[1] = v251.i64[0];
        v253.i64[0] = *v246;
        v253.i64[1] = v248.i64[0];
        v254.i64[0] = *v244;
        v254.i64[1] = v249.i64[0];
        v255.i64[0] = *v247;
        v255.i64[1] = v250.i64[0];
        v248 = v253;
        v249 = v254;
        v250 = v255;
        v251 = v252;
      }

      v256 = vuzp1q_s32(v239, v81);
      v257 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v227, v251)), vextq_s8(v239, v256, 0xCuLL));
      v258 = vuzp1q_s32(v236, v81);
      v259 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v225, v248)), vextq_s8(v236, v258, 0xCuLL));
      v260 = vuzp1q_s32(v237, v81);
      v261 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v226, v249)), vextq_s8(v237, v260, 0xCuLL));
      v262 = vuzp1q_s32(v238, v81);
      v263 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v28, v250)), vextq_s8(v238, v262, 0xCuLL));
      if (((4 - v169) & 2) != 0)
      {
        v239.i32[3] = v81.i32[1];
        v236.i32[3] = v81.i32[1];
        v237.i32[3] = v81.i32[1];
        v238.i32[3] = v81.i32[1];
        *v210 = v257;
        v210[1] = vtrn2q_s32(vrev64q_s32(vuzp2q_s32(v227, v251)), v239);
        *v213 = v259;
        v213[1] = vtrn2q_s32(vrev64q_s32(vuzp2q_s32(v225, v248)), v236);
        *v214 = v261;
        v214[1] = vtrn2q_s32(vrev64q_s32(vuzp2q_s32(v226, v249)), v237);
        *v215 = v263;
        v215[1] = vtrn2q_s32(vrev64q_s32(vuzp2q_s32(v28, v250)), v238);
        if ((4 - v169))
        {
          v251.i32[0] = v227.i32[2];
          v248.i32[0] = v225.i32[2];
          v249.i32[0] = v226.i32[2];
          v250.i32[0] = v28.i32[2];
          v210[2] = vtrn2q_s32(vrev64q_s32(v251), v256);
          v213[2] = vtrn2q_s32(vrev64q_s32(v248), v258);
          v28 = vtrn2q_s32(vrev64q_s32(v250), v262);
          v214[2] = vtrn2q_s32(vrev64q_s32(v249), v260);
          v215[2] = v28;
        }
      }

      else
      {
        *v210 = v257;
        *v213 = v259;
        *v214 = v261;
        *v215 = v263;
      }
    }

    goto LABEL_153;
  }

  if (!v73)
  {
    v172 = v171 - v94 + 1;
    while (v166 <= v60 && v167 <= v60 && v168 <= v60)
    {
      v173 = (v167 + v77 + v77);
      v174 = *(v173 + v77);
      v175 = vuzp1q_s32(v174, v81);
      v176 = *v173;
      v177 = vuzp1q_s32(*v173, v81);
      v178 = (v166 + v76 + v76);
      v179 = *v178;
      v180 = *(v167 + v77);
      v181 = (v168 + v78 + v78);
      v182 = *v181;
      v183 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(*v178, *v181)), vextq_s8(*v173, v177, 0xCuLL));
      v184 = vuzp1q_s32(v180, v81);
      v185 = *(v166 + v76);
      v186 = *(v168 + v78);
      v187 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v185, v186)), vextq_s8(v180, v184, 0xCuLL));
      v188 = vuzp2q_s32(*v178, *v181);
      v189 = *v166;
      v166 += 2;
      v190 = v189;
      v191 = *(v178 + v76);
      v192 = *v167++;
      v193 = v192;
      v194 = *v168++;
      v195 = v194;
      v182.i32[0] = v178->i64[1];
      v196 = vtrn2q_s32(vrev64q_s32(v182), v177);
      v197 = vuzp2q_s32(v185, v186);
      v186.i32[0] = v185.i32[2];
      v198 = vtrn2q_s32(vrev64q_s32(v186), v184);
      v199 = vuzp2q_s32(v180, v81);
      v180.i32[3] = v81.i32[1];
      v200 = vtrn2q_s32(vrev64q_s32(v197), v180);
      v201 = *(v181 + v78);
      v202 = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v197, v185)), v199);
      v203 = vuzp2q_s32(v190, v194);
      v204 = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v203, v190)), vuzp2q_s32(v193, v81));
      v205 = vuzp1q_s32(v193, v81);
      v206 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v190, v194)), vextq_s8(v193, v205, 0xCuLL));
      v207 = vuzp1q_s32(v191, v201);
      v193.i32[3] = v81.i32[1];
      v208 = vtrn2q_s32(vrev64q_s32(v203), v193);
      v209 = vuzp2q_s32(v191, v201);
      v195.i32[0] = v190.i32[2];
      v201.i32[0] = *(&v178->i64[1] + v76);
      *a14 = v206;
      *(a14 + 16) = v208;
      v210 = (a14 + 64);
      v211 = vtrn2q_s32(vrev64q_s32(v195), v205);
      v212 = vuzp2q_s32(v176, v81);
      *(a14 + 32) = v211;
      *(a14 + 48) = v204;
      v213 = (v86 + 64);
      *v86 = v187;
      *(v86 + 16) = v200;
      *(v86 + 32) = v198;
      *(v86 + 48) = v202;
      v214 = (v87 + 64);
      v176.i32[3] = v81.i32[1];
      *v87 = v183;
      *(v87 + 16) = vtrn2q_s32(vrev64q_s32(v188), v176);
      *(v87 + 32) = v196;
      *(v87 + 48) = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v188, v179)), v212);
      v215 = (v88 + 64);
      *(v88 + 32) = vtrn2q_s32(vrev64q_s32(v201), v175);
      *(v88 + 48) = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v209, v191)), vuzp2q_s32(v174, v81));
      v216 = vtrn2q_s32(vrev64q_s32(v207), vextq_s8(v174, v175, 0xCuLL));
      v174.i32[3] = v81.i32[1];
      v28 = vtrn2q_s32(vrev64q_s32(v209), v174);
      *v88 = v216;
      *(v88 + 16) = v28;
      v88 += 64;
      v87 += 64;
      v86 += 64;
      a14 += 64;
      if (!--v172)
      {
        v169 = a12[5];
        if (v169)
        {
          goto LABEL_103;
        }

        goto LABEL_153;
      }
    }
  }

  return result;
}

int8x16_t *ExtractInterleaved4_B44<unsigned short,(StreamType)0,(StreamType)0,(StreamType)0,(StreamType)1>(int8x16_t *result, unint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int32x2_t *a11, unsigned int *a12, uint64_t a13, int8x16_t *a14, uint64_t a15, int8x16_t *a16, uint64_t a17)
{
  if (!result)
  {
    return result;
  }

  v21 = result;
  v22 = *&a11[1] >= a2 ? a2 : *&a11[1];
  AXRStreamB44<unsigned short,(StreamType)0>::AXRStreamB44(&v180, a3);
  AXRStreamB44<unsigned short,(StreamType)0>::AXRStreamB44(&v179, a4);
  result = AXRStreamB44<unsigned short,(StreamType)0>::AXRStreamB44(&v178, a5);
  v23 = a11[3];
  v24 = a11[7].u32[1];
  v25 = *(a6 + 8);
  v26 = *(*&v25[5] + 8 * v24);
  v27 = v26[2];
  v28 = vmin_u32(vmls_s32(v27, v25[6], v23), v25[6]).u32[0];
  v29 = v28 <= 0xFFFFFFFC ? (v28 + 3) >> 2 : 0x40000000;
  if (v22 < 0xE)
  {
    return result;
  }

  v30 = *(a13 + 60);
  v31 = a3[1];
  if (v31)
  {
    v32 = *(*(v31 + 40) + 8 * v24);
    v33 = *(v32 + 12) - 1;
    if (v33 >= (v23.i32[1] * v30))
    {
      v33 = (v23.i32[1] * v30);
    }

    v34 = v32 + 8 * v23.u32[0];
    if (*(v31 + 104) == 1)
    {
      v35 = (*(v34 + 24) + 8 * v33);
    }

    else
    {
      v37 = (v33 * *(v31 + 108)) >> *(v31 + 112);
      v38 = *(v32 + 20) - 1;
      if (v37 >= v38)
      {
        LODWORD(v37) = v38;
      }

      v35 = (*(v34 + 24) + 8 * v37);
    }

    v36 = *v35;
  }

  else
  {
    v36 = 0;
  }

  v39 = a4[1];
  if (v39)
  {
    v40 = *(*(v39 + 40) + 8 * v24);
    v41 = *(v40 + 12) - 1;
    if (v41 >= (v23.i32[1] * v30))
    {
      v41 = (v23.i32[1] * v30);
    }

    v42 = v40 + 8 * v23.u32[0];
    if (*(v39 + 104) == 1)
    {
      v43 = (*(v42 + 24) + 8 * v41);
    }

    else
    {
      v45 = (v41 * *(v39 + 108)) >> *(v39 + 112);
      v46 = *(v40 + 20) - 1;
      if (v45 >= v46)
      {
        LODWORD(v45) = v46;
      }

      v43 = (*(v42 + 24) + 8 * v45);
    }

    v44 = *v43;
  }

  else
  {
    v44 = 0;
  }

  result = a5[1];
  v47 = (v23.i32[1] * v30);
  if (result)
  {
    v48 = *(result[2].i64[1] + 8 * v24);
    if (*(v48 + 12) - 1 >= v47)
    {
      v49 = v47;
    }

    else
    {
      v49 = *(v48 + 12) - 1;
    }

    v50 = v48 + 8 * v23.u32[0];
    if (result[6].i32[2] == 1)
    {
      v51 = (*(v50 + 24) + 8 * v49);
    }

    else
    {
      v52 = (v49 * result[6].u32[3]) >> result[7].i32[0];
      v53 = *(v48 + 20) - 1;
      if (v52 < v53)
      {
        v53 = v52;
      }

      v51 = (*(v50 + 24) + 8 * v53);
    }

    result = *v51;
  }

  v54 = v21 + v22 - 14;
  if (v26[1].u32[1] - 1 < v47)
  {
    v47 = v26[1].u32[1] - 1;
  }

  v55 = &v26[v23.u32[0]];
  if (v25[13].i32[0] == 1)
  {
    v56 = (*&v55[3] + 8 * v47);
  }

  else
  {
    v57 = (v47 * v25[13].u32[1]) >> v25[14].i32[0];
    if (v57 >= v27.i32[1] - 1)
    {
      LODWORD(v57) = v27.i32[1] - 1;
    }

    v56 = (*&v55[3] + 8 * v57);
  }

  v58 = a12[2];
  v59 = v21 + v36 > v54 || v21 + v44 > v54;
  v60 = v59 || (v21 + result) > v54;
  v61 = v60;
  v62 = a12[6];
  if (v58 > v62)
  {
    return result;
  }

  v64 = 14 * v29;
  v65 = &v179;
  v66 = vld1q_dup_s16(v65);
  v67 = &v178;
  v181.val[1] = vld1q_dup_s16(v67);
  v68 = &v180;
  v181.val[0] = vld1q_dup_s16(v68);
  v69 = vqtbl2q_s8(v181, xmmword_296B6EDD0);
  v70 = (&v21[7 * *a12] + *v56 + v64 * v58);
  v71 = xmmword_296B6EDE0;
  v72.i64[0] = 0xE0E0E0E0E0E0E0E0;
  v72.i64[1] = 0xE0E0E0E0E0E0E0E0;
  v73 = xmmword_296B6EF20;
  v74 = xmmword_296B6EEE0;
  while (1)
  {
    v75 = (a14 + a17);
    v76 = (a14 + a17 + a17);
    v77 = (v76 + a17);
    if (!a16)
    {
      result = (v76 + a17);
      goto LABEL_73;
    }

    if (v58 == a12[2])
    {
      v78 = a12[3] + 1;
      v79 = a14;
      a14 = (a14 + a17);
      v75 = v76;
      v76 = (v76 + a17);
      do
      {
        result = v76;
        v76 = v75;
        v75 = a14;
        a14 = v79;
        v79 = a16;
        --v78;
      }

      while (v78);
    }

    else
    {
      result = (v76 + a17);
    }

    if (v58 == v62)
    {
      v80 = a12[7];
      switch(v80)
      {
        case 1u:
          goto LABEL_71;
        case 2u:
          goto LABEL_70;
        case 3u:
          v75 = a16;
LABEL_70:
          v76 = a16;
LABEL_71:
          v77 = a16;
          goto LABEL_73;
      }
    }

    v77 = result;
LABEL_73:
    v81 = *a12;
    v82 = a12[1];
    if (!v82)
    {
      v126 = a12[4];
      v127 = v70;
      goto LABEL_95;
    }

    if (v70 > v54)
    {
      v83 = 1;
    }

    else
    {
      v83 = v61;
    }

    if (v83)
    {
      return result;
    }

    v84 = v71;
    v85 = v74;
    v86.i64[0] = *(v70 + 1);
    v86.i64[1] = *(v70 + 3);
    v87 = vqtbl1q_s8(v86, v84);
    v88 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v87, 8uLL), xmmword_296B6EE00), vshlq_u8(v87, xmmword_296B6EDF0)), xmmword_296B6EE10);
    v89 = vaddq_s8(v88, v72);
    v88.i8[1] = 0;
    v90 = vqtbl1q_s8(v89, xmmword_296B6EE20);
    v91 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v90, xmmword_296B6EE30), v90), vqtbl1q_s8(v90, xmmword_296B6EE40));
    v92 = vdupq_lane_s16(*v88.i8, 0);
    v93 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v91.i8), xmmword_296B6EE50), *v91.i8), v92);
    v94 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v91), xmmword_296B6EE50), v91), v92);
    v95 = vdupq_n_s16(bswap32(*v70) >> 16);
    v96 = vaddq_s16(v94, v95);
    v97 = vaddq_s16(v93, v95);
    v98 = vcgezq_s16(v97);
    v99 = veorq_s8((*&v96 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v96));
    v100 = veorq_s8((*&v97 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), v98);
    v101 = v73;
    if (a10)
    {
      v100.i64[0] = (*(a10 + ((v100.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a10 + 2 * v100.u16[2]) << 32) | (*(a10 + 2 * v100.u16[1]) << 16) | *(a10 + 2 * v100.u16[0]);
      v100.i64[1] = (*(a10 + ((v100.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a10 + 2 * v100.u16[6]) << 32) | (*(a10 + 2 * v100.u16[5]) << 16) | *(a10 + 2 * v100.u16[4]);
      v99.i64[0] = (*(a10 + ((v99.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a10 + 2 * v99.u16[2]) << 32) | (*(a10 + 2 * v99.u16[1]) << 16) | *(a10 + 2 * v99.u16[0]);
      v99.i64[1] = (*(a10 + ((v99.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a10 + 2 * v99.u16[6]) << 32) | (*(a10 + 2 * v99.u16[5]) << 16) | *(a10 + 2 * v99.u16[4]);
    }

    v98.i32[0] = 0;
    v182.val[0] = vqtbl2q_s8(*v69.i8, xmmword_296B6EEC0);
    v102 = vqtbl2q_s8(*(&v99 - 1), xmmword_296B6EED0);
    v184.val[0] = vqtbl2q_s8(*v69.i8, v85);
    v184.val[1] = v99;
    v103 = vqtbl2q_s8(v184, xmmword_296B6EEF0);
    v188.val[0] = vqtbl2q_s8(*v69.i8, xmmword_296B6EF00);
    v188.val[1] = v99;
    v104 = vqtbl2q_s8(v188, xmmword_296B6EF10);
    v189.val[0] = vqtbl2q_s8(*v69.i8, v101);
    v189.val[1] = v99;
    v182.val[1] = v100;
    v105 = vqtbl2q_s8(v182, xmmword_296B6EED0);
    v106 = vqtbl2q_s8(v189, xmmword_296B6EF30);
    v184.val[1] = v100;
    v107 = vqtbl2q_s8(v184, xmmword_296B6EEF0);
    v188.val[1] = v100;
    v108 = vqtbl2q_s8(v188, xmmword_296B6EF10);
    v109 = v100;
    v110 = vqtbl2q_s8(*(&v109 - 1), xmmword_296B6EF30);
    if (a12[4] == v81)
    {
      v111 = 4 - a12[5];
    }

    else
    {
      v111 = 4;
    }

    v109.i32[0] = a12[1] & 2;
    v112 = vdupq_lane_s32(*&vceqq_s32(v109, v98), 0);
    v113 = vbslq_s8(v112, v110, v108);
    v114 = vbslq_s8(v112, v108, v110);
    v115 = vbslq_s8(v112, v107, v105);
    v116 = vbslq_s8(v112, v105, v107);
    v117 = vbslq_s8(v112, v106, v104);
    v118 = vbslq_s8(v112, v104, v106);
    v119 = vbslq_s8(v112, v103, v102);
    v120 = vbslq_s8(v112, v102, v103);
    if ((v82 & 2) != 0)
    {
      v111 -= 2;
    }

    if (v82)
    {
      v121 = vextq_s8(v113, v114, 8uLL).u64[0];
      v114 = vextq_s8(v114, v113, 8uLL);
      v122 = vextq_s8(v115, v116, 8uLL).u64[0];
      v116 = vextq_s8(v116, v115, 8uLL);
      v123 = vextq_s8(v117, v118, 8uLL).u64[0];
      v118 = vextq_s8(v118, v117, 8uLL);
      v124 = vextq_s8(v119, v120, 8uLL).u64[0];
      --v111;
      v120 = vextq_s8(v120, v119, 8uLL);
      v113.i64[0] = v121;
      v115.i64[0] = v122;
      v117.i64[0] = v123;
      v119.i64[0] = v124;
    }

    v72.i64[0] = 0xE0E0E0E0E0E0E0E0;
    v72.i64[1] = 0xE0E0E0E0E0E0E0E0;
    v73 = v101;
    if (v111 <= 1)
    {
      v125 = 0;
    }

    else
    {
      *a14 = v114;
      *v75 = v116;
      v111 -= 2;
      v114.i64[0] = v113.i64[0];
      v116.i64[0] = v115.i64[0];
      *v76 = v118;
      v118.i64[0] = v117.i64[0];
      *v77 = v120;
      v120.i64[0] = v119.i64[0];
      v125 = 16;
    }

    v74 = v85;
    v71 = xmmword_296B6EDE0;
    if (v111 >= 1)
    {
      *(a14->i64 + v125) = v114.i64[0];
      *(v75->i64 + v125) = v116.i64[0];
      *(v76->i64 + v125) = v118.i64[0];
      *(v77->i64 + v125) = v120.i64[0];
      v125 |= 8uLL;
    }

    v126 = a12[4];
    if (v126 != v81)
    {
      break;
    }

LABEL_116:
    a14 = (result + a17);
    v70 = (v70 + v64);
    result = (v58 + 1);
    v62 = a12[6];
    if (v58++ >= v62)
    {
      return result;
    }
  }

  v127 = v70 + 7;
  a14 = (a14 + v125);
  v75 = (v75 + v125);
  v76 = (v76 + v125);
  v77 = (v77 + v125);
  ++v81;
LABEL_95:
  v128 = a12[5];
  v129 = v128 != 0;
  if (v126 == 0 && v129 || (v130 = v126 - v129, v81 > v130))
  {
    v150 = a14;
    v151 = v75;
    v152 = v76;
    v153 = v77;
    if (v128)
    {
LABEL_106:
      if (v127 > v54)
      {
        v154 = 1;
      }

      else
      {
        v154 = v61;
      }

      if (v154)
      {
        return result;
      }

      v155.i64[0] = *(v127 + 1);
      v155.i64[1] = *(v127 + 3);
      v156 = vqtbl1q_s8(v155, v71);
      v157 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v156, 8uLL), xmmword_296B6EE00), vshlq_u8(v156, xmmword_296B6EDF0)), xmmword_296B6EE10);
      v158 = vaddq_s8(v157, v72);
      v157.i8[1] = 0;
      v159 = vqtbl1q_s8(v158, xmmword_296B6EE20);
      v160 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v159, xmmword_296B6EE30), v159), vqtbl1q_s8(v159, xmmword_296B6EE40));
      v161 = vdupq_lane_s16(*v157.i8, 0);
      v162 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v160.i8), xmmword_296B6EE50), *v160.i8), v161);
      v163 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v160), xmmword_296B6EE50), v160), v161);
      v164 = vdupq_n_s16(bswap32(*v127) >> 16);
      v165 = vaddq_s16(v163, v164);
      v166 = vaddq_s16(v162, v164);
      v167 = veorq_s8((*&v165 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v165));
      v168 = veorq_s8((*&v166 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v166));
      if (a10)
      {
        v168.i64[0] = (*(a10 + ((v168.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a10 + 2 * v168.u16[2]) << 32) | (*(a10 + 2 * v168.u16[1]) << 16) | *(a10 + 2 * v168.u16[0]);
        v168.i64[1] = (*(a10 + ((v168.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a10 + 2 * v168.u16[6]) << 32) | (*(a10 + 2 * v168.u16[5]) << 16) | *(a10 + 2 * v168.u16[4]);
        v167.i64[0] = (*(a10 + ((v167.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a10 + 2 * v167.u16[2]) << 32) | (*(a10 + 2 * v167.u16[1]) << 16) | *(a10 + 2 * v167.u16[0]);
        v167.i64[1] = (*(a10 + ((v167.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a10 + 2 * v167.u16[6]) << 32) | (*(a10 + 2 * v167.u16[5]) << 16) | *(a10 + 2 * v167.u16[4]);
      }

      v169 = vqtbl2q_s8(*v69.i8, xmmword_296B6EF00);
      v170 = vqtbl2q_s8(*(&v168 - 1), xmmword_296B6EF10);
      v183.val[0] = vqtbl2q_s8(*v69.i8, xmmword_296B6EEC0);
      v183.val[1] = v168;
      v171 = vqtbl2q_s8(v183, xmmword_296B6EED0);
      v172 = v169;
      v173 = vqtbl2q_s8(*(&v167 - 1), xmmword_296B6EF10);
      v183.val[1] = v167;
      v174 = vqtbl2q_s8(v183, xmmword_296B6EED0);
      if (((4 - v128) & 2) != 0)
      {
        *v150 = v170;
        *v151 = v171;
        *v152 = v173;
        *v153 = v174;
        if ((4 - v128))
        {
          v191.val[0] = vqtbl2q_s8(*v69.i8, v73);
          v175 = vqtbl2q_s8(*(&v168 - 1), xmmword_296B6EF30).u64[0];
          v186.val[0] = vqtbl2q_s8(*v69.i8, v74);
          v186.val[1] = v168;
          v176 = vqtbl2q_s8(v186, xmmword_296B6EEF0).u64[0];
          v191.val[1] = v167;
          v186.val[1] = v167;
          v150[1].i64[0] = v175;
          v151[1].i64[0] = v176;
          v152[1].i64[0] = vqtbl2q_s8(v191, xmmword_296B6EF30).u64[0];
          v153[1].i64[0] = vqtbl2q_s8(v186, xmmword_296B6EEF0).u64[0];
        }
      }

      else
      {
        v150->i64[0] = v170.i64[0];
        v151->i64[0] = v171.i64[0];
        v152->i64[0] = v173.i64[0];
        v153->i64[0] = v174.i64[0];
      }
    }

    goto LABEL_116;
  }

  if ((v61 & 1) == 0)
  {
    v131 = v130 - v81 + 1;
    while (v127 <= v54)
    {
      v132.i64[0] = *(v127 + 1);
      v132.i64[1] = *(v127 + 3);
      v133 = vqtbl1q_s8(v132, v71);
      v134 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v133, 8uLL), xmmword_296B6EE00), vshlq_u8(v133, xmmword_296B6EDF0)), xmmword_296B6EE10);
      v135 = vaddq_s8(v134, v72);
      v134.i8[1] = 0;
      v136 = vqtbl1q_s8(v135, xmmword_296B6EE20);
      v137 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v136, xmmword_296B6EE30), v136), vqtbl1q_s8(v136, xmmword_296B6EE40));
      v138 = vdupq_lane_s16(*v134.i8, 0);
      v139 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v137.i8), xmmword_296B6EE50), *v137.i8), v138);
      v140 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v137), xmmword_296B6EE50), v137), v138);
      v141 = vdupq_n_s16(bswap32(*v127) >> 16);
      v142 = vaddq_s16(v140, v141);
      v143 = vaddq_s16(v139, v141);
      v144 = veorq_s8((*&v142 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v142));
      v145 = veorq_s8((*&v143 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v143));
      if (a10)
      {
        v145.i64[0] = (*(a10 + ((v145.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a10 + 2 * v145.u16[2]) << 32) | (*(a10 + 2 * v145.u16[1]) << 16) | *(a10 + 2 * v145.u16[0]);
        v145.i64[1] = (*(a10 + ((v145.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a10 + 2 * v145.u16[6]) << 32) | (*(a10 + 2 * v145.u16[5]) << 16) | *(a10 + 2 * v145.u16[4]);
        v144.i64[0] = (*(a10 + ((v144.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a10 + 2 * v144.u16[2]) << 32) | (*(a10 + 2 * v144.u16[1]) << 16) | *(a10 + 2 * v144.u16[0]);
        v144.i64[1] = (*(a10 + ((v144.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a10 + 2 * v144.u16[6]) << 32) | (*(a10 + 2 * v144.u16[5]) << 16) | *(a10 + 2 * v144.u16[4]);
      }

      v190.val[0] = vqtbl2q_s8(*v69.i8, xmmword_296B6EEC0);
      v146 = vqtbl2q_s8(*(&v144 - 1), xmmword_296B6EED0);
      v192.val[0] = vqtbl2q_s8(*v69.i8, v74);
      v192.val[1] = v144;
      v147 = vqtbl2q_s8(v192, xmmword_296B6EEF0);
      v185.val[0] = vqtbl2q_s8(*v69.i8, xmmword_296B6EF00);
      v185.val[1] = v144;
      v148 = vqtbl2q_s8(v185, xmmword_296B6EF10);
      v187.val[0] = vqtbl2q_s8(*v69.i8, v73);
      v187.val[1] = v144;
      v149 = vqtbl2q_s8(v187, xmmword_296B6EF30);
      v190.val[1] = v145;
      v185.val[1] = v145;
      v187.val[1] = v145;
      *a14 = vqtbl2q_s8(v185, xmmword_296B6EF10);
      a14[1] = vqtbl2q_s8(v187, xmmword_296B6EF30);
      v192.val[1] = v145;
      v127 += 7;
      v150 = a14 + 2;
      *v75 = vqtbl2q_s8(v190, xmmword_296B6EED0);
      v75[1] = vqtbl2q_s8(v192, xmmword_296B6EEF0);
      v151 = v75 + 2;
      v152 = v76 + 2;
      *v76 = v148;
      v76[1] = v149;
      v153 = v77 + 2;
      *v77 = v146;
      v77[1] = v147;
      v77 += 2;
      v76 += 2;
      v75 += 2;
      a14 += 2;
      if (!--v131)
      {
        v128 = a12[5];
        if (v128)
        {
          goto LABEL_106;
        }

        goto LABEL_116;
      }
    }
  }

  return result;
}

uint64_t ExtractInterleaved4_B44<unsigned int,(StreamType)0,(StreamType)0,(StreamType)0,(StreamType)1>(uint64_t result, unint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int32x2_t *a11, unsigned int *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (!result)
  {
    return result;
  }

  v22 = result;
  v23 = *&a11[1] >= a2 ? a2 : *&a11[1];
  AXRStreamB44<unsigned int,(StreamType)0>::AXRStreamB44(&v185, a3);
  AXRStreamB44<unsigned int,(StreamType)0>::AXRStreamB44(&v184, a4);
  result = AXRStreamB44<unsigned int,(StreamType)0>::AXRStreamB44(&v183, a5);
  v25 = a11[3];
  v26 = a11[7].u32[1];
  v27 = *(a6 + 8);
  v28 = *(*&v27[5] + 8 * v26);
  v29 = v28[2];
  v30 = vmin_u32(vmls_s32(v29, v27[6], v25), v27[6]).u32[0];
  v31 = 12 * v30 + 16;
  v32 = v23 - v31;
  if (v23 < v31)
  {
    return result;
  }

  v33 = *(a13 + 60);
  v34 = a3[1];
  if (v34)
  {
    v35 = *(*(v34 + 40) + 8 * v26);
    v36 = *(v35 + 12) - 1;
    if (v36 >= (v25.i32[1] * v33))
    {
      v36 = (v25.i32[1] * v33);
    }

    v37 = v35 + 8 * v25.u32[0];
    if (*(v34 + 104) == 1)
    {
      v38 = (*(v37 + 24) + 8 * v36);
    }

    else
    {
      v40 = (v36 * *(v34 + 108)) >> *(v34 + 112);
      v41 = *(v35 + 20) - 1;
      if (v40 >= v41)
      {
        LODWORD(v40) = v41;
      }

      v38 = (*(v37 + 24) + 8 * v40);
    }

    v39 = *v38;
  }

  else
  {
    v39 = 0;
  }

  v42 = a4[1];
  if (v42)
  {
    v43 = *(*(v42 + 40) + 8 * v26);
    v44 = *(v43 + 12) - 1;
    if (v44 >= (v25.i32[1] * v33))
    {
      v44 = (v25.i32[1] * v33);
    }

    v45 = v43 + 8 * v25.u32[0];
    if (*(v42 + 104) == 1)
    {
      v46 = (*(v45 + 24) + 8 * v44);
    }

    else
    {
      v48 = (v44 * *(v42 + 108)) >> *(v42 + 112);
      v49 = *(v43 + 20) - 1;
      if (v48 >= v49)
      {
        LODWORD(v48) = v49;
      }

      v46 = (*(v45 + 24) + 8 * v48);
    }

    v47 = *v46;
  }

  else
  {
    v47 = 0;
  }

  v50 = a5[1];
  v51 = (v25.i32[1] * v33);
  if (v50)
  {
    v52 = *(*(v50 + 40) + 8 * v26);
    v53 = *(v52 + 12) - 1 >= v51 ? v51 : *(v52 + 12) - 1;
    v54 = v52 + 8 * v25.u32[0];
    if (*(v50 + 104) == 1)
    {
      v55 = (*(v54 + 24) + 8 * v53);
    }

    else
    {
      v57 = (v53 * *(v50 + 108)) >> *(v50 + 112);
      v58 = *(v52 + 20) - 1;
      if (v57 < v58)
      {
        v58 = v57;
      }

      v55 = (*(v54 + 24) + 8 * v58);
    }

    v56 = *v55;
  }

  else
  {
    v56 = 0;
  }

  v59 = v32 + v22;
  if (v28[1].u32[1] - 1 < v51)
  {
    v51 = v28[1].u32[1] - 1;
  }

  result = v27[13].u32[0];
  v60 = &v28[v25.u32[0]];
  if (result == 1)
  {
    v61 = (*&v60[3] + 8 * v51);
  }

  else
  {
    result = v27[13].u32[1];
    v62 = (v51 * result) >> v27[14].i32[0];
    if (v62 >= v29.i32[1] - 1)
    {
      LODWORD(v62) = v29.i32[1] - 1;
    }

    v61 = (*&v60[3] + 8 * v62);
  }

  v63 = v56 + v22;
  v64 = a12[2];
  v65 = v39 + v22 > v59 || v47 + v22 > v59;
  v66 = v65 || v63 > v59;
  v67 = v66;
  v68 = a12[6];
  if (v64 > v68)
  {
    return result;
  }

  v70 = 4 * v30;
  v71 = 16 * v30;
  v72 = &v184;
  v73 = vld1q_dup_f32(v72);
  v74.i64[0] = __PAIR64__(v183, v185);
  v74.i64[1] = __PAIR64__(v183, v185);
  v75 = *v61 + v22 + 16 * *a12 + v71 * v64;
  v76 = vzip1q_s32(v74, v73);
  v77 = vzip2q_s32(v74, vuzp2q_s32(v74, v73));
  v78 = vzip2q_s32(vextq_s8(v74, v74, 8uLL), v73);
  result = 3;
  v182 = v73;
  while (1)
  {
    v79 = a14 + a17;
    v80 = a14 + a17 + a17;
    v81 = v80 + a17;
    if (!a16)
    {
      v84 = v80 + a17;
      goto LABEL_71;
    }

    if (v64 == a12[2])
    {
      v82 = a12[3] + 1;
      v83 = a14;
      a14 += a17;
      v79 = v80;
      v80 += a17;
      do
      {
        v84 = v80;
        v80 = v79;
        v79 = a14;
        a14 = v83;
        v83 = a16;
        --v82;
      }

      while (v82);
    }

    else
    {
      v84 = v80 + a17;
    }

    if (v64 == v68)
    {
      v85 = a12[7];
      switch(v85)
      {
        case 1u:
          goto LABEL_69;
        case 2u:
          goto LABEL_68;
        case 3u:
          v79 = a16;
LABEL_68:
          v80 = a16;
LABEL_69:
          v81 = a16;
          goto LABEL_71;
      }
    }

    v81 = v84;
LABEL_71:
    v87 = *a12;
    v86 = a12[1];
    v88 = vzip2q_s32(v73, v74);
    if (!v86)
    {
      v128 = a12[4];
      v129 = v75;
      goto LABEL_89;
    }

    if (v75 > v59)
    {
      v89 = 1;
    }

    else
    {
      v89 = v67;
    }

    if (v89)
    {
      return result;
    }

    v24.i32[0] = 0;
    v90 = *v75;
    v91 = v75 + v70 + v70;
    v92 = v76;
    v92.i32[3] = *(v75 + v70);
    v93 = v78;
    v93.i32[3] = *(v75 + v70 + 8);
    v94 = v77;
    v94.i32[3] = HIDWORD(*(v75 + v70));
    v107 = vextq_s8(v88, v74, 4uLL);
    v95 = v107;
    v95.i32[3] = HIDWORD(*(v75 + v70));
    v96 = v76;
    v96.i32[3] = *v91;
    v97 = v78;
    v97.i32[3] = *(v91 + 8);
    v98 = v77;
    v98.i32[3] = HIDWORD(*v91);
    v99 = v107;
    v99.i32[3] = HIDWORD(*v91);
    v100 = v76;
    v100.i32[3] = *(v91 + v70);
    v101 = v78;
    v101.i32[3] = *(v91 + v70 + 8);
    v102 = v77;
    v102.i32[3] = HIDWORD(*(v91 + v70));
    v103 = v107;
    v103.i32[3] = HIDWORD(*(v91 + v70));
    v104 = v76;
    v104.i32[3] = *v75;
    v105 = v78;
    v105.i32[3] = *(v75 + 8);
    v106 = v77;
    v106.i32[3] = HIDWORD(*v75);
    v107.i32[3] = HIDWORD(*v75);
    if (a12[4] == v87)
    {
      v108 = 4 - a12[5];
    }

    else
    {
      v108 = 4;
    }

    v90.i32[0] = a12[1] & 2;
    v109 = vdupq_lane_s32(*&vceqq_s32(v90, v24), 0);
    v110 = vbslq_s8(v109, v102, v103);
    v111 = vbslq_s8(v109, v100, v101);
    v112 = vbslq_s8(v109, v98, v99);
    v113 = vbslq_s8(v109, v96, v97);
    v114 = vbslq_s8(v109, v94, v95);
    v115 = vbslq_s8(v109, v92, v93);
    v116 = vbslq_s8(v109, v106, v107);
    if ((v86 & 2) != 0)
    {
      v108 -= 2;
    }

    v117 = v86 & 1;
    v118 = v108 - v117;
    v17.i32[0] = v117;
    v17 = vdupq_lane_s32(*&vmvnq_s8(vceqq_s32(v17, v24)), 0);
    v119 = vbslq_s8(v17, v114, v115);
    v120 = vbslq_s8(v17, v112, v113);
    v24 = vbslq_s8(v17, v110, v111);
    v121 = vbslq_s8(v17, v116, vbslq_s8(v109, v104, v105));
    if (v108 - v117 <= 1)
    {
      v127 = 0;
    }

    else
    {
      v122 = vbslq_s8(v109, v101, v100);
      v123 = vbslq_s8(v109, v97, v96);
      v124 = vbslq_s8(v109, v93, v92);
      v125 = vbslq_s8(v109, v95, v94);
      v126 = vbslq_s8(v109, v105, v104);
      *a14 = v121;
      *(a14 + 16) = vbslq_s8(v17, v126, v116);
      v121 = vbslq_s8(v17, vbslq_s8(v109, v107, v106), v126);
      *v79 = v119;
      *(v79 + 16) = vbslq_s8(v17, v124, v114);
      *v80 = v120;
      *(v80 + 16) = vbslq_s8(v17, v123, v112);
      v118 -= 2;
      *v81 = v24;
      *(v81 + 16) = vbslq_s8(v17, v122, v110);
      v119 = vbslq_s8(v17, v125, v124);
      v120 = vbslq_s8(v17, vbslq_s8(v109, v99, v98), v123);
      v24 = vbslq_s8(v17, vbslq_s8(v109, v103, v102), v122);
      v127 = 32;
    }

    v73 = v182;
    if (v118 >= 1)
    {
      *(v127 + a14) = v121;
      *(v127 + v79) = v119;
      *(v127 + v80) = v120;
      *(v127 + v81) = v24;
      v127 |= 0x10uLL;
    }

    v128 = a12[4];
    if (v128 != v87)
    {
      break;
    }

LABEL_120:
    a14 = v84 + a17;
    v75 += v71;
    v68 = a12[6];
    if (v64++ >= v68)
    {
      return result;
    }
  }

  v129 = (v75 + 16);
  a14 += v127;
  v79 += v127;
  v80 += v127;
  v81 += v127;
  ++v87;
LABEL_89:
  v130 = a12[5];
  v131 = v130 != 0;
  if (v128 == 0 && v131 || (v132 = v128 - v131, v87 > v132))
  {
    v150 = a14;
    v151 = v79;
    v152 = v80;
    v153 = v81;
    if (v130)
    {
LABEL_98:
      if (v64 == a12[6])
      {
        v154 = 4 - a12[7];
      }

      else
      {
        v154 = 4;
      }

      if (v129 > v59)
      {
        v155 = 1;
      }

      else
      {
        v155 = v67;
      }

      if (v155)
      {
        return result;
      }

      if (v154 < 2)
      {
        v157 = 0;
        v156 = v129;
        v158 = v129;
      }

      else
      {
        v156 = (v129 + v70);
        if (v154 == 2)
        {
          v157 = 0;
          v158 = (v129 + v70);
        }

        else
        {
          v158 = (v129 + v70);
          v156 = (v156 + v70);
          if (v154 <= 3)
          {
            v157 = 0;
          }

          else
          {
            v157 = v70;
          }
        }
      }

      v159 = 4 - v130;
      v160 = (v156 + v157);
      *&v161 = 0;
      DWORD2(v161) = 0;
      *&v162 = 0;
      DWORD2(v162) = 0;
      *&v163 = 0;
      DWORD2(v163) = 0;
      *&v164 = 0;
      DWORD2(v164) = 0;
      if ((4 - v130))
      {
        v165 = 3 - v130;
        LODWORD(v164) = *(v129 + v165);
        LODWORD(v161) = *(v158 + v165);
        LODWORD(v162) = *(v156 + v165);
        LODWORD(v163) = *(v160 + v165);
      }

      if ((v159 & 2) != 0)
      {
        *&v166 = *v129;
        *(&v166 + 1) = v164;
        *&v167 = *v158;
        *(&v167 + 1) = v161;
        *&v168 = *v156;
        *(&v168 + 1) = v162;
        *&v169 = *v160;
        *(&v169 + 1) = v163;
        v161 = v167;
        v162 = v168;
        v163 = v169;
        v164 = v166;
      }

      v170 = v76;
      v170.i32[3] = v164;
      v24 = v76;
      v24.i32[3] = v161;
      v171 = v76;
      v171.i32[3] = v162;
      v172 = v76;
      v172.i32[3] = v163;
      if ((v159 & 2) != 0)
      {
        v173 = v77;
        v173.i32[3] = DWORD1(v164);
        v174 = v77;
        v174.i32[3] = DWORD1(v161);
        v175 = v77;
        v175.i32[3] = DWORD1(v162);
        v176 = v77;
        v176.i32[3] = DWORD1(v163);
        *v150 = v170;
        v150[1] = v173;
        *v151 = v24;
        v151[1] = v174;
        *v152 = v171;
        v152[1] = v175;
        *v153 = v172;
        v153[1] = v176;
        if (v159)
        {
          v177 = v78;
          v177.i32[3] = DWORD2(v164);
          v178 = v78;
          v178.i32[3] = DWORD2(v161);
          v179 = v78;
          v179.i32[3] = DWORD2(v162);
          v180 = v78;
          v180.i32[3] = DWORD2(v163);
          v150[2] = v177;
          v151[2] = v178;
          v152[2] = v179;
          v153[2] = v180;
        }
      }

      else
      {
        *v150 = v170;
        *v151 = v24;
        *v152 = v171;
        *v153 = v172;
      }
    }

    goto LABEL_120;
  }

  if ((v67 & 1) == 0)
  {
    v133 = v132 - v87 + 1;
    while (v129 <= v59)
    {
      v134 = v129 + v70 + v70;
      v135 = vextq_s8(v88, v74, 4uLL);
      v136 = v135;
      v136.i32[3] = HIDWORD(*&v134[v70]);
      v24 = v78;
      v24.i32[3] = *&v134[v70 + 8];
      v137 = v77;
      v137.i32[3] = HIDWORD(*&v134[v70]);
      v138 = v76;
      v138.i32[3] = *&v134[v70];
      v139 = v78;
      v139.i32[3] = *(v134 + 1);
      v140 = v135;
      v140.i32[3] = HIDWORD(*v134);
      v141 = v77;
      v141.i32[3] = HIDWORD(*v134);
      v142 = v76;
      v142.i32[3] = *v134;
      v143 = v78;
      v143.i32[3] = *(v129 + v70 + 8);
      v144 = v135;
      v144.i32[3] = HIDWORD(*(v129 + v70));
      v145 = v77;
      v145.i32[3] = HIDWORD(*(v129 + v70));
      v146 = v76;
      v146.i32[3] = *(v129 + v70);
      v147 = v78;
      v147.i32[3] = v129[1];
      v135.i32[3] = HIDWORD(*v129);
      v148 = v76;
      v148.i32[3] = *v129;
      v149 = v77;
      v149.i32[3] = HIDWORD(*v129);
      v129 += 2;
      v150 = (a14 + 64);
      *a14 = v148;
      *(a14 + 16) = v149;
      *(a14 + 32) = v147;
      *(a14 + 48) = v135;
      v151 = (v79 + 64);
      *v79 = v146;
      *(v79 + 16) = v145;
      *(v79 + 32) = v143;
      *(v79 + 48) = v144;
      v152 = (v80 + 64);
      *v80 = v142;
      *(v80 + 16) = v141;
      *(v80 + 32) = v139;
      *(v80 + 48) = v140;
      v153 = (v81 + 64);
      *v81 = v138;
      *(v81 + 16) = v137;
      *(v81 + 32) = v24;
      *(v81 + 48) = v136;
      v81 += 64;
      v80 += 64;
      v79 += 64;
      a14 += 64;
      if (!--v133)
      {
        v130 = a12[5];
        if (v130)
        {
          goto LABEL_98;
        }

        goto LABEL_120;
      }
    }
  }

  return result;
}

__int16 *ExtractInterleaved4_B44<unsigned short,(StreamType)1,(StreamType)0,(StreamType)0,(StreamType)1>(__int16 *result, unint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int32x2_t *a11, unsigned int *a12, uint64_t a13, int8x16_t *a14, uint64_t a15, int8x16_t *a16, uint64_t a17)
{
  if (!result)
  {
    return result;
  }

  v23 = result;
  if (*&a11[1] >= a2)
  {
    v24 = a2;
  }

  else
  {
    v24 = a11[1];
  }

  v25 = vmin_u32(vmls_s32(*(*(*(*(a3 + 8) + 40) + 8 * a11[7].u32[1]) + 16), *(*(a3 + 8) + 48), a11[3]), *(*(a3 + 8) + 48)).u32[0];
  if (v25 <= 0xFFFFFFFC)
  {
    v26 = (v25 + 3) >> 2;
  }

  else
  {
    v26 = 0x40000000;
  }

  AXRStreamB44<unsigned short,(StreamType)0>::AXRStreamB44(v219, a4);
  result = AXRStreamB44<unsigned short,(StreamType)0>::AXRStreamB44(&v218, a5);
  v27 = a11[7].u32[1];
  v28 = *(a6 + 8);
  v29 = *(*&v28[5] + 8 * v27);
  v30 = a11[3];
  v31 = v29[2];
  v32 = vmin_u32(vmls_s32(v31, v28[6], v30), v28[6]).u32[0];
  v33 = (v32 + 3) >> 2;
  if (v32 > 0xFFFFFFFC)
  {
    v33 = 0x40000000;
  }

  if (v24 < 0xE)
  {
    return result;
  }

  v34 = *(a13 + 60);
  v35 = *(a3 + 8);
  if (v35)
  {
    v36 = (v30.i32[1] * v34);
    v37 = *(*(v35 + 40) + 8 * v27);
    if (*(v37 + 12) - 1 < v36)
    {
      v36 = *(v37 + 12) - 1;
    }

    if (*(v35 + 104) == 1)
    {
      v38 = (*(v37 + 8 * v30.u32[0] + 24) + 8 * v36);
    }

    else
    {
      v39 = (v36 * *(v35 + 108)) >> *(v35 + 112);
      if (v39 >= *(v37 + 20) - 1)
      {
        LODWORD(v39) = *(v37 + 20) - 1;
      }

      v38 = (*(v37 + 8 * v30.u32[0] + 24) + 8 * v39);
    }

    v35 = *v38;
  }

  v40 = a4[1];
  if (v40)
  {
    v41 = (v30.i32[1] * v34);
    v42 = *(*(v40 + 40) + 8 * v27);
    if (*(v42 + 12) - 1 < v41)
    {
      v41 = *(v42 + 12) - 1;
    }

    if (*(v40 + 104) == 1)
    {
      v43 = (*(v42 + 8 * v30.u32[0] + 24) + 8 * v41);
    }

    else
    {
      v44 = (v41 * *(v40 + 108)) >> *(v40 + 112);
      if (v44 >= *(v42 + 20) - 1)
      {
        LODWORD(v44) = *(v42 + 20) - 1;
      }

      v43 = (*(v42 + 8 * v30.u32[0] + 24) + 8 * v44);
    }

    v40 = *v43;
  }

  v45 = a5[1];
  v46 = (v30.i32[1] * v34);
  if (v45)
  {
    v47 = *(*(v45 + 40) + 8 * v27);
    v48 = *(v47 + 12) - 1;
    if (v48 >= v46)
    {
      v48 = (v30.i32[1] * v34);
    }

    if (*(v45 + 104) == 1)
    {
      v49 = (*(v47 + 8 * v30.u32[0] + 24) + 8 * v48);
    }

    else
    {
      v51 = (v48 * *(v45 + 108)) >> *(v45 + 112);
      if (v51 >= *(v47 + 20) - 1)
      {
        LODWORD(v51) = *(v47 + 20) - 1;
      }

      v49 = (*(v47 + 8 * v30.u32[0] + 24) + 8 * v51);
    }

    v50 = *v49;
  }

  else
  {
    v50 = 0;
  }

  v52 = v23 + v24 - 14;
  v53 = v29[1].u32[1] - 1;
  if (v53 >= v46)
  {
    v53 = (v30.i32[1] * v34);
  }

  if (v28[13].i32[0] == 1)
  {
    result = (*&v29[v30.u32[0] + 3] + 8 * v53);
  }

  else
  {
    v54 = (v53 * v28[13].u32[1]) >> v28[14].i32[0];
    if (v54 >= v31.i32[1] - 1)
    {
      LODWORD(v54) = v31.i32[1] - 1;
    }

    result = (*&v29[v30.u32[0] + 3] + 8 * v54);
  }

  v55 = a12[2];
  v56 = v23 + v50 > v52;
  v217 = v56;
  if (v23 + v40 > v52)
  {
    v56 = 1;
  }

  v214 = v56;
  v57 = a12[6];
  if (v55 > v57)
  {
    return result;
  }

  v59 = 14 * v33;
  v60 = v219;
  v61 = vld1q_dup_s16(v60);
  v62 = &v218;
  v63 = vld1q_dup_s16(v62);
  v64 = 7 * *a12;
  v215 = v59;
  v216 = 14 * v26;
  v65 = (v23 + v35 + v64 * 2 + v216 * v55);
  v66 = (&v23[v64] + *result + v59 * v55);
  v67 = xmmword_296B6EDE0;
  v68 = xmmword_296B6EDF0;
  v69.i64[0] = 0xE0E0E0E0E0E0E0E0;
  v69.i64[1] = 0xE0E0E0E0E0E0E0E0;
  while (1)
  {
    v70 = (a14 + a17);
    v71 = (a14 + a17 + a17);
    v72 = (v71 + a17);
    if (!a16)
    {
      result = (v71->i16 + a17);
      goto LABEL_66;
    }

    if (v55 == a12[2])
    {
      v73 = a12[3] + 1;
      v74 = a14;
      a14 = (a14 + a17);
      v70 = v71;
      v71 = (v71 + a17);
      do
      {
        result = v71;
        v71 = v70;
        v70 = a14;
        a14 = v74;
        v74 = a16;
        --v73;
      }

      while (v73);
    }

    else
    {
      result = (v71->i16 + a17);
    }

    if (v55 == v57)
    {
      v75 = a12[7];
      switch(v75)
      {
        case 1u:
          goto LABEL_64;
        case 2u:
          goto LABEL_63;
        case 3u:
          v70 = a16;
LABEL_63:
          v71 = a16;
LABEL_64:
          v72 = a16;
          goto LABEL_66;
      }
    }

    v72 = result;
LABEL_66:
    v77 = *a12;
    v76 = a12[1];
    if (v76)
    {
      v78 = v65 > v52 || v23 + v40 > v52;
      if (v78 || v217 || v66 > v52)
      {
        return result;
      }

      v79.i64[0] = *(v65 + 1);
      v79.i64[1] = *(v65 + 3);
      v80 = vqtbl1q_s8(v79, v67);
      v81 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v80, 8uLL), xmmword_296B6EE00), vshlq_u8(v80, v68)), xmmword_296B6EE10);
      v82 = vaddq_s8(v81, v69);
      v81.i8[1] = 0;
      v83 = vqtbl1q_s8(v82, xmmword_296B6EE20);
      v84 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v83, xmmword_296B6EE30), v83), vqtbl1q_s8(v83, xmmword_296B6EE40));
      v85 = vdupq_lane_s16(*v81.i8, 0);
      v86 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v84.i8), xmmword_296B6EE50), *v84.i8), v85);
      v87 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v84), xmmword_296B6EE50), v84), v85);
      v88 = vdupq_n_s16(bswap32(*v65) >> 16);
      v89 = vaddq_s16(v87, v88);
      v90 = vaddq_s16(v86, v88);
      v91 = veorq_s8((*&v89 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v89));
      v92 = veorq_s8((*&v90 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v90));
      if (a7)
      {
        v92.i64[0] = (*(a7 + ((v92.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a7 + 2 * v92.u16[2]) << 32) | (*(a7 + 2 * v92.u16[1]) << 16) | *(a7 + 2 * v92.u16[0]);
        v92.i64[1] = (*(a7 + ((v92.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a7 + 2 * v92.u16[6]) << 32) | (*(a7 + 2 * v92.u16[5]) << 16) | *(a7 + 2 * v92.u16[4]);
        v91.i64[0] = (*(a7 + ((v91.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a7 + 2 * v91.u16[2]) << 32) | (*(a7 + 2 * v91.u16[1]) << 16) | *(a7 + 2 * v91.u16[0]);
        v91.i64[1] = (*(a7 + ((v91.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a7 + 2 * v91.u16[6]) << 32) | (*(a7 + 2 * v91.u16[5]) << 16) | *(a7 + 2 * v91.u16[4]);
      }

      v93.i64[0] = *(v66 + 1);
      v93.i64[1] = *(v66 + 3);
      v94 = vqtbl1q_s8(v93, v67);
      v95 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v94, 8uLL), xmmword_296B6EE00), vshlq_u8(v94, v68)), xmmword_296B6EE10);
      v96 = vaddq_s8(v95, v69);
      v95.i8[1] = 0;
      v97 = vqtbl1q_s8(v96, xmmword_296B6EE20);
      v98 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v97, xmmword_296B6EE30), v97), vqtbl1q_s8(v97, xmmword_296B6EE40));
      v99 = vdupq_lane_s16(*v95.i8, 0);
      v100 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v98.i8), xmmword_296B6EE50), *v98.i8), v99);
      v101 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v98), xmmword_296B6EE50), v98), v99);
      v102 = vdupq_n_s16(bswap32(*v66) >> 16);
      v103 = vaddq_s16(v101, v102);
      v104 = vaddq_s16(v100, v102);
      v105 = veorq_s8((*&v103 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v103));
      v106 = veorq_s8((*&v104 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v104));
      if (a10)
      {
        v106.i64[0] = (*(a10 + ((v106.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a10 + 2 * v106.u16[2]) << 32) | (*(a10 + 2 * v106.u16[1]) << 16) | *(a10 + 2 * v106.u16[0]);
        v106.i64[1] = (*(a10 + ((v106.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a10 + 2 * v106.u16[6]) << 32) | (*(a10 + 2 * v106.u16[5]) << 16) | *(a10 + 2 * v106.u16[4]);
        v105.i64[0] = (*(a10 + ((v105.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a10 + 2 * v105.u16[2]) << 32) | (*(a10 + 2 * v105.u16[1]) << 16) | *(a10 + 2 * v105.u16[0]);
        v105.i64[1] = (*(a10 + ((v105.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a10 + 2 * v105.u16[6]) << 32) | (*(a10 + 2 * v105.u16[5]) << 16) | *(a10 + 2 * v105.u16[4]);
      }

      v17.i32[0] = 0;
      v107 = v61;
      v221.val[1] = vqtbl2q_s8(*(&v105 - 1), xmmword_296B6EF40);
      v108 = v63;
      v221.val[0] = vqtbl2q_s8(*v91.i8, xmmword_296B6EE70);
      v109 = vqtbl2q_s8(v221, xmmword_296B6EDD0);
      v224.val[1] = vqtbl2q_s8(*(&v105 - 1), xmmword_296B6EF50);
      v224.val[0] = vqtbl2q_s8(*v91.i8, xmmword_296B6EE90);
      v110 = vqtbl2q_s8(v224, xmmword_296B6EDD0);
      v227.val[1] = vqtbl2q_s8(*(&v105 - 1), xmmword_296B6EF60);
      v227.val[0] = vqtbl2q_s8(*v91.i8, xmmword_296B6EEA0);
      v111 = vqtbl2q_s8(v227, xmmword_296B6EDD0);
      v233.val[1] = vqtbl2q_s8(*(&v105 - 1), xmmword_296B6EF70);
      v233.val[0] = vqtbl2q_s8(*v91.i8, xmmword_296B6EEB0);
      v112 = vqtbl2q_s8(v233, xmmword_296B6EDD0);
      if (a12[4] == v77)
      {
        v113 = 4 - a12[5];
      }

      else
      {
        v113 = 4;
      }

      v91.i32[0] = a12[1] & 2;
      v17 = vdupq_lane_s32(*&vceqq_s32(v91, v17), 0);
      v114 = v61;
      v231.val[1] = vqtbl2q_s8(*(&v106 - 1), xmmword_296B6EF60);
      v115 = v63;
      v231.val[0] = vqtbl2q_s8(*v92.i8, xmmword_296B6EEA0);
      v116 = v113 - 2;
      v117 = vqtbl2q_s8(v231, xmmword_296B6EDD0);
      v231.val[1] = vqtbl2q_s8(*(&v106 - 1), xmmword_296B6EF70);
      v231.val[0] = vqtbl2q_s8(*v92.i8, xmmword_296B6EEB0);
      v231.val[0] = vqtbl2q_s8(v231, xmmword_296B6EDD0);
      v118 = vbslq_s8(v17, v231.val[0], v117);
      v119 = vbslq_s8(v17, v117, v231.val[0]);
      v226.val[1] = vqtbl2q_s8(*(&v106 - 1), xmmword_296B6EF40);
      v226.val[0] = vqtbl2q_s8(*v92.i8, xmmword_296B6EE70);
      v226.val[1] = vqtbl2q_s8(v226, xmmword_296B6EDD0);
      v235.val[1] = vqtbl2q_s8(*(&v106 - 1), xmmword_296B6EF50);
      v235.val[0] = vqtbl2q_s8(*v92.i8, xmmword_296B6EE90);
      v231.val[1] = vqtbl2q_s8(v235, xmmword_296B6EDD0);
      v120 = vbslq_s8(v17, v231.val[1], v226.val[1]);
      v121 = vbslq_s8(v17, v226.val[1], v231.val[1]);
      v122 = vbslq_s8(v17, v112, v111);
      v123 = vbslq_s8(v17, v111, v112);
      v124 = vbslq_s8(v17, v110, v109);
      v125 = vbslq_s8(v17, v109, v110);
      if ((v76 & 2) == 0)
      {
        v116 = v113;
      }

      if (v76)
      {
        v126 = vextq_s8(v120, v121, 8uLL).u64[0];
        v121 = vextq_s8(v121, v120, 8uLL);
        v127 = vextq_s8(v118, v119, 8uLL).u64[0];
        v119 = vextq_s8(v119, v118, 8uLL);
        v128 = vextq_s8(v124, v125, 8uLL).u64[0];
        v125 = vextq_s8(v125, v124, 8uLL);
        v129 = vextq_s8(v122, v123, 8uLL).u64[0];
        --v116;
        v123 = vextq_s8(v123, v122, 8uLL);
        v120.i64[0] = v126;
        v118.i64[0] = v127;
        v124.i64[0] = v128;
        v122.i64[0] = v129;
      }

      v69.i64[0] = 0xE0E0E0E0E0E0E0E0;
      v69.i64[1] = 0xE0E0E0E0E0E0E0E0;
      v68 = xmmword_296B6EDF0;
      v67 = xmmword_296B6EDE0;
      if (v116 <= 1)
      {
        v130 = 0;
      }

      else
      {
        *a14 = v121;
        *v70 = v119;
        v116 -= 2;
        v121.i64[0] = v120.i64[0];
        v119.i64[0] = v118.i64[0];
        *v71 = v125;
        v125.i64[0] = v124.i64[0];
        *v72 = v123;
        v123.i64[0] = v122.i64[0];
        v130 = 16;
      }

      if (v116 >= 1)
      {
        *(a14->i64 + v130) = v121.i64[0];
        *(v70->i64 + v130) = v119.i64[0];
        *(v71->i64 + v130) = v125.i64[0];
        *(v72->i64 + v130) = v123.i64[0];
        v130 |= 8uLL;
      }

      v131 = a12[4];
      if (v131 == v77)
      {
        goto LABEL_117;
      }

      v132 = v65 + 7;
      v133 = v66 + 7;
      a14 = (a14 + v130);
      v70 = (v70 + v130);
      v71 = (v71 + v130);
      v72 = (v72 + v130);
      ++v77;
    }

    else
    {
      v131 = a12[4];
      v132 = v65;
      v133 = v66;
    }

    v134 = a12[5];
    v135 = v134 != 0;
    if (v131 != 0 || !v135)
    {
      v136 = v131 - v135;
      if (v77 <= v136)
      {
        break;
      }
    }

    v171 = a14;
    v172 = v70;
    v173 = v71;
    v174 = v72;
    if (v134)
    {
LABEL_105:
      v175 = v23 + v40 > v52;
      if (v132 > v52)
      {
        v175 = 1;
      }

      if (v175 || v217 || v133 > v52)
      {
        return result;
      }

      v176.i64[0] = *(v132 + 1);
      v176.i64[1] = *(v132 + 3);
      v177 = vqtbl1q_s8(v176, v67);
      v178 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v177, 8uLL), xmmword_296B6EE00), vshlq_u8(v177, v68)), xmmword_296B6EE10);
      v179 = vaddq_s8(v178, v69);
      v178.i8[1] = 0;
      v180 = vqtbl1q_s8(v179, xmmword_296B6EE20);
      v181 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v180, xmmword_296B6EE30), v180), vqtbl1q_s8(v180, xmmword_296B6EE40));
      v182 = vdupq_lane_s16(*v178.i8, 0);
      v183 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v181.i8), xmmword_296B6EE50), *v181.i8), v182);
      v184 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v181), xmmword_296B6EE50), v181), v182);
      v185 = vdupq_n_s16(bswap32(*v132) >> 16);
      v186 = vaddq_s16(v184, v185);
      v187 = vaddq_s16(v183, v185);
      v188 = veorq_s8((*&v186 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v186));
      v189 = veorq_s8((*&v187 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v187));
      if (a7)
      {
        v189.i64[0] = (*(a7 + ((v189.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a7 + 2 * v189.u16[2]) << 32) | (*(a7 + 2 * v189.u16[1]) << 16) | *(a7 + 2 * v189.u16[0]);
        v189.i64[1] = (*(a7 + ((v189.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a7 + 2 * v189.u16[6]) << 32) | (*(a7 + 2 * v189.u16[5]) << 16) | *(a7 + 2 * v189.u16[4]);
        v188.i64[0] = (*(a7 + ((v188.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a7 + 2 * v188.u16[2]) << 32) | (*(a7 + 2 * v188.u16[1]) << 16) | *(a7 + 2 * v188.u16[0]);
        v188.i64[1] = (*(a7 + ((v188.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a7 + 2 * v188.u16[6]) << 32) | (*(a7 + 2 * v188.u16[5]) << 16) | *(a7 + 2 * v188.u16[4]);
      }

      v190.i64[0] = *(v133 + 1);
      v190.i64[1] = *(v133 + 3);
      v191 = vqtbl1q_s8(v190, v67);
      v192 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v191, 8uLL), xmmword_296B6EE00), vshlq_u8(v191, v68)), xmmword_296B6EE10);
      v193 = vaddq_s8(v192, v69);
      v192.i8[1] = 0;
      v194 = vqtbl1q_s8(v193, xmmword_296B6EE20);
      v195 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v194, xmmword_296B6EE30), v194), vqtbl1q_s8(v194, xmmword_296B6EE40));
      v196 = vdupq_lane_s16(*v192.i8, 0);
      v197 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v195.i8), xmmword_296B6EE50), *v195.i8), v196);
      v198 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v195), xmmword_296B6EE50), v195), v196);
      v199 = vdupq_n_s16(bswap32(*v133) >> 16);
      v200 = vaddq_s16(v198, v199);
      v201 = vaddq_s16(v197, v199);
      v202 = veorq_s8((*&v200 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v200));
      v203 = veorq_s8((*&v201 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v201));
      if (a10)
      {
        v203.i64[0] = (*(a10 + ((v203.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a10 + 2 * v203.u16[2]) << 32) | (*(a10 + 2 * v203.u16[1]) << 16) | *(a10 + 2 * v203.u16[0]);
        v203.i64[1] = (*(a10 + ((v203.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a10 + 2 * v203.u16[6]) << 32) | (*(a10 + 2 * v203.u16[5]) << 16) | *(a10 + 2 * v203.u16[4]);
        v202.i64[0] = (*(a10 + ((v202.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a10 + 2 * v202.u16[2]) << 32) | (*(a10 + 2 * v202.u16[1]) << 16) | *(a10 + 2 * v202.u16[0]);
        v202.i64[1] = (*(a10 + ((v202.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a10 + 2 * v202.u16[6]) << 32) | (*(a10 + 2 * v202.u16[5]) << 16) | *(a10 + 2 * v202.u16[4]);
      }

      v204 = v61;
      v205 = v63;
      v229.val[1] = vqtbl2q_s8(*(&v203 - 1), xmmword_296B6EF60);
      v229.val[0] = vqtbl2q_s8(*v189.i8, xmmword_296B6EEA0);
      v17 = vqtbl2q_s8(v229, xmmword_296B6EDD0);
      v222.val[1] = vqtbl2q_s8(*(&v203 - 1), xmmword_296B6EF40);
      v222.val[0] = vqtbl2q_s8(*v189.i8, xmmword_296B6EE70);
      v206 = vqtbl2q_s8(v222, xmmword_296B6EDD0);
      v207 = v61;
      v208 = v63;
      v222.val[1] = vqtbl2q_s8(*(&v202 - 1), xmmword_296B6EF60);
      v222.val[0] = vqtbl2q_s8(*v188.i8, xmmword_296B6EEA0);
      v209 = vqtbl2q_s8(v222, xmmword_296B6EDD0);
      v222.val[1] = vqtbl2q_s8(*(&v202 - 1), xmmword_296B6EF40);
      v222.val[0] = vqtbl2q_s8(*v188.i8, xmmword_296B6EE70);
      v210 = vqtbl2q_s8(v222, xmmword_296B6EDD0);
      v211 = 4 - v134;
      if ((v211 & 2) != 0)
      {
        *v171 = v206;
        *v172 = v17;
        *v173 = v210;
        *v174 = v209;
        if (v211)
        {
          v230.val[1] = vqtbl2q_s8(*(&v203 - 1), xmmword_296B6EF70);
          v230.val[0] = vqtbl2q_s8(*v189.i8, xmmword_296B6EEB0);
          v236.val[1] = vqtbl2q_s8(*(&v203 - 1), xmmword_296B6EF50);
          v236.val[0] = vqtbl2q_s8(*v189.i8, xmmword_296B6EE90);
          v212 = vqtbl2q_s8(v236, xmmword_296B6EDD0).u64[0];
          v236.val[1] = vqtbl2q_s8(*(&v202 - 1), xmmword_296B6EF70);
          v236.val[0] = vqtbl2q_s8(*v188.i8, xmmword_296B6EEB0);
          v234.val[1] = vqtbl2q_s8(*(&v202 - 1), xmmword_296B6EF50);
          v234.val[0] = vqtbl2q_s8(*v188.i8, xmmword_296B6EE90);
          v171[1].i64[0] = v212;
          v172[1].i64[0] = vqtbl2q_s8(v230, xmmword_296B6EDD0).u64[0];
          v173[1].i64[0] = vqtbl2q_s8(v234, xmmword_296B6EDD0).u64[0];
          v174[1].i64[0] = vqtbl2q_s8(v236, xmmword_296B6EDD0).u64[0];
        }
      }

      else
      {
        v171->i64[0] = v206.i64[0];
        v172->i64[0] = v17.i64[0];
        v173->i64[0] = v210.i64[0];
        v174->i64[0] = v209.i64[0];
      }
    }

LABEL_117:
    a14 = (result + a17);
    v66 = (v66 + v215);
    v65 = (v65 + v216);
    v57 = a12[6];
    if (v55++ >= v57)
    {
      return result;
    }
  }

  if (!v214)
  {
    v137 = v136 - v77 + 1;
    while (v132 <= v52 && v133 <= v52)
    {
      v138.i64[0] = *(v132 + 1);
      v138.i64[1] = *(v132 + 3);
      v139 = vqtbl1q_s8(v138, v67);
      v140 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v139, 8uLL), xmmword_296B6EE00), vshlq_u8(v139, v68)), xmmword_296B6EE10);
      v141 = vaddq_s8(v140, v69);
      v140.i8[1] = 0;
      v142 = vqtbl1q_s8(v141, xmmword_296B6EE20);
      v143 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v142, xmmword_296B6EE30), v142), vqtbl1q_s8(v142, xmmword_296B6EE40));
      v144 = vdupq_lane_s16(*v140.i8, 0);
      v145 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v143.i8), xmmword_296B6EE50), *v143.i8), v144);
      v146 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v143), xmmword_296B6EE50), v143), v144);
      v147 = vdupq_n_s16(bswap32(*v132) >> 16);
      v148 = vaddq_s16(v146, v147);
      v149 = vaddq_s16(v145, v147);
      v150 = veorq_s8((*&v148 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v148));
      v151 = veorq_s8((*&v149 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v149));
      if (a7)
      {
        v151.i64[0] = (*(a7 + ((v151.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a7 + 2 * v151.u16[2]) << 32) | (*(a7 + 2 * v151.u16[1]) << 16) | *(a7 + 2 * v151.u16[0]);
        v151.i64[1] = (*(a7 + ((v151.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a7 + 2 * v151.u16[6]) << 32) | (*(a7 + 2 * v151.u16[5]) << 16) | *(a7 + 2 * v151.u16[4]);
        v150.i64[0] = (*(a7 + ((v150.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a7 + 2 * v150.u16[2]) << 32) | (*(a7 + 2 * v150.u16[1]) << 16) | *(a7 + 2 * v150.u16[0]);
        v150.i64[1] = (*(a7 + ((v150.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a7 + 2 * v150.u16[6]) << 32) | (*(a7 + 2 * v150.u16[5]) << 16) | *(a7 + 2 * v150.u16[4]);
      }

      v152.i64[0] = *(v133 + 1);
      v152.i64[1] = *(v133 + 3);
      v153 = vqtbl1q_s8(v152, v67);
      v154 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v153, 8uLL), xmmword_296B6EE00), vshlq_u8(v153, v68)), xmmword_296B6EE10);
      v155 = vaddq_s8(v154, v69);
      v154.i8[1] = 0;
      v156 = vqtbl1q_s8(v155, xmmword_296B6EE20);
      v157 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v156, xmmword_296B6EE30), v156), vqtbl1q_s8(v156, xmmword_296B6EE40));
      v158 = vdupq_lane_s16(*v154.i8, 0);
      v159 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v157.i8), xmmword_296B6EE50), *v157.i8), v158);
      v160 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v157), xmmword_296B6EE50), v157), v158);
      v161 = vdupq_n_s16(bswap32(*v133) >> 16);
      v162 = vaddq_s16(v160, v161);
      v163 = vaddq_s16(v159, v161);
      v164 = veorq_s8((*&v162 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v162));
      v165 = veorq_s8((*&v163 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v163));
      if (a10)
      {
        v165.i64[0] = (*(a10 + ((v165.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a10 + 2 * v165.u16[2]) << 32) | (*(a10 + 2 * v165.u16[1]) << 16) | *(a10 + 2 * v165.u16[0]);
        v165.i64[1] = (*(a10 + ((v165.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a10 + 2 * v165.u16[6]) << 32) | (*(a10 + 2 * v165.u16[5]) << 16) | *(a10 + 2 * v165.u16[4]);
        v164.i64[0] = (*(a10 + ((v164.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a10 + 2 * v164.u16[2]) << 32) | (*(a10 + 2 * v164.u16[1]) << 16) | *(a10 + 2 * v164.u16[0]);
        v164.i64[1] = (*(a10 + ((v164.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a10 + 2 * v164.u16[6]) << 32) | (*(a10 + 2 * v164.u16[5]) << 16) | *(a10 + 2 * v164.u16[4]);
      }

      v132 += 7;
      v166 = v164;
      v228.val[1] = vqtbl2q_s8(*v61.i8, xmmword_296B6EF60);
      v228.val[0] = vqtbl2q_s8(*(&v63 - 1), xmmword_296B6EEA0);
      v167 = vqtbl2q_s8(v228, xmmword_296B6EDD0);
      v228.val[1] = vqtbl2q_s8(*v61.i8, xmmword_296B6EF70);
      v228.val[0] = vqtbl2q_s8(*(&v63 - 1), xmmword_296B6EEB0);
      v237.val[1] = vqtbl2q_s8(*v61.i8, xmmword_296B6EF40);
      v17 = xmmword_296B6EE70;
      v237.val[0] = vqtbl2q_s8(*(&v63 - 1), xmmword_296B6EE70);
      v220.val[1] = vqtbl2q_s8(*v61.i8, xmmword_296B6EF50);
      v220.val[0] = vqtbl2q_s8(*(&v63 - 1), xmmword_296B6EE90);
      v168 = v61;
      v223.val[1] = vqtbl2q_s8(*(&v165 - 1), xmmword_296B6EF60);
      v169 = v63;
      v223.val[0] = vqtbl2q_s8(*v151.i8, xmmword_296B6EEA0);
      v170 = vqtbl2q_s8(v223, xmmword_296B6EDD0);
      v223.val[1] = vqtbl2q_s8(*(&v165 - 1), xmmword_296B6EF40);
      v223.val[0] = vqtbl2q_s8(*v151.i8, xmmword_296B6EE70);
      v225.val[1] = vqtbl2q_s8(*(&v165 - 1), xmmword_296B6EF70);
      v232.val[1] = vqtbl2q_s8(*(&v165 - 1), xmmword_296B6EF50);
      v232.val[0] = vqtbl2q_s8(*v151.i8, xmmword_296B6EE90);
      *a14 = vqtbl2q_s8(v223, xmmword_296B6EDD0);
      a14[1] = vqtbl2q_s8(v232, xmmword_296B6EDD0);
      v225.val[0] = vqtbl2q_s8(*v151.i8, xmmword_296B6EEB0);
      v133 += 7;
      v171 = a14 + 2;
      *v70 = v170;
      v70[1] = vqtbl2q_s8(v225, xmmword_296B6EDD0);
      v172 = &v70[2];
      v173 = v71 + 2;
      *v71 = vqtbl2q_s8(v237, xmmword_296B6EDD0);
      v71[1] = vqtbl2q_s8(v220, xmmword_296B6EDD0);
      v174 = v72 + 2;
      *v72 = v167;
      v72[1] = vqtbl2q_s8(v228, xmmword_296B6EDD0);
      v72 += 2;
      v71 += 2;
      v70 += 2;
      a14 += 2;
      --v137;
      v69.i64[0] = 0xE0E0E0E0E0E0E0E0;
      v69.i64[1] = 0xE0E0E0E0E0E0E0E0;
      v68 = xmmword_296B6EDF0;
      v67 = xmmword_296B6EDE0;
      if (!v137)
      {
        v134 = a12[5];
        if (v134)
        {
          goto LABEL_105;
        }

        goto LABEL_117;
      }
    }
  }

  return result;
}

uint64_t ExtractInterleaved4_B44<unsigned int,(StreamType)1,(StreamType)0,(StreamType)0,(StreamType)1>(uint64_t result, unint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int32x2_t *a11, unsigned int *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (!result)
  {
    return result;
  }

  v21 = result;
  if (*&a11[1] >= a2)
  {
    v22 = a2;
  }

  else
  {
    v22 = a11[1];
  }

  v23 = vmin_u32(vmls_s32(*(*(*(*(a3 + 8) + 40) + 8 * a11[7].u32[1]) + 16), *(*(a3 + 8) + 48), a11[3]), *(*(a3 + 8) + 48)).u32[0];
  AXRStreamB44<unsigned int,(StreamType)0>::AXRStreamB44(&v239, a4);
  result = AXRStreamB44<unsigned int,(StreamType)0>::AXRStreamB44(&v238, a5);
  v24 = a11[3];
  v25 = a11[7].u32[1];
  v26 = *(a6 + 8);
  v27 = *(*&v26[5] + 8 * v25);
  v28 = v27[2];
  *v29.i8 = vmin_u32(vmls_s32(v28, v26[6], v24), v26[6]);
  v30 = 12 * v29.u32[0] + 16;
  if (12 * v23 + 16 > v30)
  {
    v30 = 12 * v23 + 16;
  }

  v31 = *&v22 - v30;
  if (*&v22 < v30)
  {
    return result;
  }

  v32 = *(a13 + 60);
  v33 = *(a3 + 8);
  if (v33)
  {
    v34 = (v24.i32[1] * v32);
    v35 = *(*(v33 + 40) + 8 * v25);
    if (*(v35 + 12) - 1 < v34)
    {
      v34 = *(v35 + 12) - 1;
    }

    if (*(v33 + 104) == 1)
    {
      v36 = (*(v35 + 8 * v24.u32[0] + 24) + 8 * v34);
    }

    else
    {
      v38 = (v34 * *(v33 + 108)) >> *(v33 + 112);
      if (v38 >= *(v35 + 20) - 1)
      {
        LODWORD(v38) = *(v35 + 20) - 1;
      }

      v36 = (*(v35 + 8 * v24.u32[0] + 24) + 8 * v38);
    }

    v37 = *v36;
  }

  else
  {
    v37 = 0;
  }

  v39 = a4[1];
  if (v39)
  {
    v40 = (v24.i32[1] * v32);
    v41 = *(*(v39 + 40) + 8 * v25);
    if (*(v41 + 12) - 1 < v40)
    {
      v40 = *(v41 + 12) - 1;
    }

    if (*(v39 + 104) == 1)
    {
      v42 = (*(v41 + 8 * v24.u32[0] + 24) + 8 * v40);
    }

    else
    {
      v43 = (v40 * *(v39 + 108)) >> *(v39 + 112);
      if (v43 >= *(v41 + 20) - 1)
      {
        LODWORD(v43) = *(v41 + 20) - 1;
      }

      v42 = (*(v41 + 8 * v24.u32[0] + 24) + 8 * v43);
    }

    v39 = *v42;
  }

  v44 = a5[1];
  v45 = (v24.i32[1] * v32);
  if (v44)
  {
    v46 = *(*(v44 + 40) + 8 * v25);
    v47 = *(v46 + 12) - 1;
    if (v47 >= v45)
    {
      v47 = (v24.i32[1] * v32);
    }

    result = *(v44 + 104);
    if (result == 1)
    {
      v48 = (*(v46 + 8 * v24.u32[0] + 24) + 8 * v47);
    }

    else
    {
      result = *(v44 + 108);
      v50 = (v47 * result) >> *(v44 + 112);
      if (v50 >= *(v46 + 20) - 1)
      {
        LODWORD(v50) = *(v46 + 20) - 1;
      }

      v48 = (*(v46 + 8 * v24.u32[0] + 24) + 8 * v50);
    }

    v49 = *v48;
  }

  else
  {
    v49 = 0;
  }

  v51 = v31 + v21;
  if (v27[1].u32[1] - 1 < v45)
  {
    v45 = v27[1].u32[1] - 1;
  }

  if (v26[13].i32[0] == 1)
  {
    v52 = (*&v27[v24.u32[0] + 3] + 8 * v45);
  }

  else
  {
    v53 = (v45 * v26[13].u32[1]) >> v26[14].i32[0];
    if (v53 >= v28.i32[1] - 1)
    {
      LODWORD(v53) = v28.i32[1] - 1;
    }

    v52 = (*&v27[v24.u32[0] + 3] + 8 * v53);
  }

  v54 = a12[2];
  v55 = v49 + v21 > v51;
  v56 = v39 + v21 > v51;
  v57 = v39 + v21 > v51 || v55;
  v58 = a12[6];
  if (v54 > v58)
  {
    return result;
  }

  v60 = 4 * v23;
  v61 = 4 * v29.u32[0];
  result = 16 * v23;
  v62 = 16 * v29.u32[0];
  v63 = &v239;
  v64 = vld1q_dup_f32(v63);
  v65 = &v238;
  v66 = vld1q_dup_f32(v65);
  v67 = *a12;
  v68 = v37 + v21 + 16 * v67 + 16 * v23 * v54;
  v69 = (v21 + 16 * v67 + *v52 + v62 * v54);
  while (1)
  {
    v70 = a14 + a17;
    v71 = a14 + a17 + a17;
    v72 = v71 + a17;
    if (!a16)
    {
      v75 = v71 + a17;
      goto LABEL_65;
    }

    if (v54 == a12[2])
    {
      v73 = a12[3] + 1;
      v74 = a14;
      a14 += a17;
      v70 = v71;
      v71 += a17;
      do
      {
        v75 = v71;
        v71 = v70;
        v70 = a14;
        a14 = v74;
        v74 = a16;
        --v73;
      }

      while (v73);
    }

    else
    {
      v75 = v71 + a17;
    }

    if (v54 == v58)
    {
      v76 = a12[7];
      switch(v76)
      {
        case 1u:
          goto LABEL_63;
        case 2u:
          goto LABEL_62;
        case 3u:
          v70 = a16;
LABEL_62:
          v71 = a16;
LABEL_63:
          v72 = a16;
          goto LABEL_65;
      }
    }

    v72 = v75;
LABEL_65:
    v78 = *a12;
    v77 = a12[1];
    if (v77)
    {
      v79 = v68 > v51 || v56;
      if (((v79 | v55) & 1) != 0 || v69 > v51)
      {
        return result;
      }

      v29.i32[0] = 0;
      v80 = (v69 + v61 + v61);
      v81 = *(v80 + v61);
      v82 = vuzp1q_s32(v64, v81);
      v83 = *(v68 + v60);
      v84 = (v68 + v60 + v60);
      v85 = *(v84 + v60);
      v86 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v85, v66)), vextq_s8(v64, v82, 0xCuLL));
      v87 = v66;
      v87.i32[0] = *(&v84->i64[1] + v60);
      v88 = vtrn2q_s32(vrev64q_s32(v87), v82);
      v89 = v64;
      v89.i32[3] = HIDWORD(*(v80->i64 + v61));
      v90 = vuzp2q_s32(v85, v66);
      v91 = vtrn2q_s32(vrev64q_s32(v90), v89);
      v92 = *v68;
      v93 = *v69;
      v94 = *(v69 + v61);
      v95 = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v90, v85)), vuzp2q_s32(v64, v81));
      v96 = vuzp1q_s32(v64, *v80);
      v97 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(*v84, v66)), vextq_s8(v64, v96, 0xCuLL));
      v98 = v66;
      v98.i32[0] = v84->i64[1];
      v99 = vtrn2q_s32(vrev64q_s32(v98), v96);
      v100 = v64;
      v100.i32[3] = HIDWORD(v80->i64[0]);
      v101 = vuzp2q_s32(*v84, v66);
      v102 = vtrn2q_s32(vrev64q_s32(v101), v100);
      v103 = vrev64q_s32(vtrn2q_s32(v101, *v84));
      v104 = vtrn2q_s32(v103, vuzp2q_s32(v64, *v80));
      if (a12[4] == v78)
      {
        v105 = 4 - a12[5];
      }

      else
      {
        v105 = 4;
      }

      v103.i32[0] = a12[1] & 2;
      v106 = vdupq_lane_s32(*&vceqq_s32(v103, v29), 0);
      v107 = vbslq_s8(v106, v102, v104);
      v108 = vbslq_s8(v106, v97, v99);
      v109 = vbslq_s8(v106, v91, v95);
      v110 = vbslq_s8(v106, v86, v88);
      v111 = v64;
      v111.i32[3] = HIDWORD(*(v69->i64 + v61));
      v112 = vuzp2q_s32(v83, v66);
      v113 = vtrn2q_s32(vrev64q_s32(v112), v111);
      v114 = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v112, v83)), vuzp2q_s32(v64, v94));
      v115 = vbslq_s8(v106, v113, v114);
      v116 = vuzp1q_s32(v64, v94);
      v117 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v83, v66)), vextq_s8(v64, v116, 0xCuLL));
      v118 = v66;
      v118.i32[0] = *(v68 + v60 + 8);
      v119 = vtrn2q_s32(vrev64q_s32(v118), v116);
      v120 = vbslq_s8(v106, v117, v119);
      v121 = v64;
      v121.i32[3] = HIDWORD(v69->i64[0]);
      v122 = vuzp2q_s32(v92, v66);
      v123 = vtrn2q_s32(vrev64q_s32(v122), v121);
      v124 = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v122, v92)), vuzp2q_s32(v64, v93));
      v125 = vbslq_s8(v106, v123, v124);
      v126 = vuzp1q_s32(v64, v93);
      v127 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v92, v66)), vextq_s8(v64, v126, 0xCuLL));
      v128 = v66;
      v128.i32[0] = *(v68 + 8);
      v129 = vrev64q_s32(v128);
      v130 = vtrn2q_s32(v129, v126);
      if ((v77 & 2) != 0)
      {
        v105 -= 2;
      }

      v131 = v77 & 1;
      v132 = v105 - v131;
      v129.i32[0] = v131;
      v133 = vdupq_lane_s32(*&vmvnq_s8(vceqq_s32(v129, v29)), 0);
      v134 = vbslq_s8(v133, v125, vbslq_s8(v106, v127, v130));
      v135 = vbslq_s8(v133, v115, v120);
      v29 = vbslq_s8(v133, v109, v110);
      v136 = vbslq_s8(v133, v107, v108);
      if (v105 - v131 <= 1)
      {
        v143 = 0;
      }

      else
      {
        v137 = vbslq_s8(v106, v99, v97);
        v138 = vbslq_s8(v106, v104, v102);
        v139 = vbslq_s8(v106, v88, v86);
        v140 = vbslq_s8(v106, v95, v91);
        v141 = vbslq_s8(v106, v119, v117);
        v142 = vbslq_s8(v106, v130, v127);
        *a14 = v134;
        *(a14 + 16) = vbslq_s8(v133, v142, v125);
        *v70 = v135;
        *(v70 + 16) = vbslq_s8(v133, v141, v115);
        *v71 = v136;
        *(v71 + 16) = vbslq_s8(v133, v137, v107);
        v132 -= 2;
        v134 = vbslq_s8(v133, vbslq_s8(v106, v124, v123), v142);
        *v72 = v29;
        *(v72 + 16) = vbslq_s8(v133, v139, v109);
        v135 = vbslq_s8(v133, vbslq_s8(v106, v114, v113), v141);
        v136 = vbslq_s8(v133, v138, v137);
        v29 = vbslq_s8(v133, v140, v139);
        v143 = 32;
      }

      if (v132 >= 1)
      {
        *(v143 + a14) = v134;
        *(v143 + v70) = v135;
        *(v143 + v71) = v136;
        *(v143 + v72) = v29;
        v143 |= 0x10uLL;
      }

      v144 = a12[4];
      if (v144 == v78)
      {
        goto LABEL_127;
      }

      v145 = (v68 + 16);
      v146 = v69 + 1;
      a14 += v143;
      v70 += v143;
      v71 += v143;
      v72 += v143;
      ++v78;
    }

    else
    {
      v144 = a12[4];
      v145 = v68;
      v146 = v69;
    }

    v147 = a12[5];
    v148 = v147 != 0;
    if (v144 != 0 || !v148)
    {
      v149 = v144 - v148;
      if (v78 <= v149)
      {
        break;
      }
    }

    v186 = a14;
    v187 = v70;
    v188 = v71;
    v189 = v72;
    if (v147)
    {
LABEL_94:
      v190 = 4 - a12[7];
      if (v54 != a12[6])
      {
        v190 = 4;
      }

      v191 = v145 > v51 || v56;
      if (((v191 | v55) & 1) != 0 || v146 > v51)
      {
        return result;
      }

      if (v190 < 2)
      {
        v193 = 0;
        v192 = v145;
        v194 = v145;
      }

      else
      {
        v192 = (v145 + v60);
        if (v190 == 2)
        {
          v193 = 0;
          v194 = (v145 + v60);
        }

        else
        {
          v194 = (v145 + v60);
          v192 = (v192 + v60);
          if (v190 <= 3)
          {
            v193 = 0;
          }

          else
          {
            v193 = v60;
          }
        }
      }

      v195 = (v192 + v193);
      v196 = 0uLL;
      v197 = 0uLL;
      v29 = 0uLL;
      v198 = 0uLL;
      if ((4 - v147))
      {
        v198.i32[0] = *(v145 + 3 - v147);
        v196.i32[0] = *(v194 + 3 - v147);
        v197.i32[0] = *(v192 + 3 - v147);
        v29.i32[0] = *(v195 + 3 - v147);
      }

      if (((4 - v147) & 2) != 0)
      {
        v199.i64[0] = *v145;
        v199.i64[1] = v198.i64[0];
        v200.i64[0] = *v194;
        v200.i64[1] = v196.i64[0];
        v201.i64[0] = *v192;
        v201.i64[1] = v197.i64[0];
        v202.i64[0] = *v195;
        v202.i64[1] = v29.i64[0];
        v196 = v200;
        v197 = v201;
        v29 = v202;
        v198 = v199;
      }

      if (v190 < 2)
      {
        v204 = 0;
        v203 = v146;
        v205 = v146;
      }

      else
      {
        v203 = (v146->i64 + v61);
        if (v190 == 2)
        {
          v204 = 0;
          v205 = (v146->i64 + v61);
        }

        else
        {
          v205 = (v146->i64 + v61);
          v203 = (v203 + v61);
          if (v190 <= 3)
          {
            v204 = 0;
          }

          else
          {
            v204 = v61;
          }
        }
      }

      v206 = (v203 + v204);
      v207 = 0uLL;
      v208 = 0uLL;
      v209 = 0uLL;
      v210 = 0uLL;
      if ((4 - v147))
      {
        v210.i32[0] = v146->i32[3 - v147];
        v207.i32[0] = *(v205 + 3 - v147);
        v208.i32[0] = *(v203 + 3 - v147);
        v209.i32[0] = *(v206 + 3 - v147);
      }

      if (((4 - v147) & 2) != 0)
      {
        v211.i64[0] = v146->i64[0];
        v211.i64[1] = v210.i64[0];
        v212.i64[0] = *v205;
        v212.i64[1] = v207.i64[0];
        v213.i64[0] = *v203;
        v213.i64[1] = v208.i64[0];
        v214.i64[0] = *v206;
        v214.i64[1] = v209.i64[0];
        v207 = v212;
        v208 = v213;
        v209 = v214;
        v210 = v211;
      }

      v215 = vuzp1q_s32(v64, v210);
      v216 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v198, v66)), vextq_s8(v64, v215, 0xCuLL));
      v217 = vuzp1q_s32(v64, v207);
      v218 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v196, v66)), vextq_s8(v64, v217, 0xCuLL));
      v219 = vuzp1q_s32(v64, v208);
      v220 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v197, v66)), vextq_s8(v64, v219, 0xCuLL));
      v221 = vuzp1q_s32(v64, v209);
      v222 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v29, v66)), vextq_s8(v64, v221, 0xCuLL));
      if (((4 - v147) & 2) != 0)
      {
        v223 = v64;
        v223.i32[3] = v210.i32[1];
        v224 = v64;
        v224.i32[3] = v207.i32[1];
        v225 = vtrn2q_s32(vrev64q_s32(vuzp2q_s32(v198, v66)), v223);
        v226 = v64;
        v226.i32[3] = v208.i32[1];
        v227 = vtrn2q_s32(vrev64q_s32(vuzp2q_s32(v196, v66)), v224);
        v228 = v64;
        v228.i32[3] = v209.i32[1];
        *v186 = v216;
        v186[1] = v225;
        *v187 = v218;
        v187[1] = v227;
        *v188 = v220;
        v188[1] = vtrn2q_s32(vrev64q_s32(vuzp2q_s32(v197, v66)), v226);
        *v189 = v222;
        v189[1] = vtrn2q_s32(vrev64q_s32(vuzp2q_s32(v29, v66)), v228);
        if ((4 - v147))
        {
          v229 = v66;
          v229.i32[0] = v198.i32[2];
          v230 = vtrn2q_s32(vrev64q_s32(v229), v215);
          v231 = v66;
          v231.i32[0] = v196.i32[2];
          v232 = vrev64q_s32(v231);
          v233 = v66;
          v233.i32[0] = v197.i32[2];
          v234 = vtrn2q_s32(v232, v217);
          v235 = vtrn2q_s32(vrev64q_s32(v233), v219);
          v236 = v66;
          v236.i32[0] = v29.i32[2];
          v186[2] = v230;
          v187[2] = v234;
          v29 = vtrn2q_s32(vrev64q_s32(v236), v221);
          v188[2] = v235;
          v189[2] = v29;
        }
      }

      else
      {
        *v186 = v216;
        *v187 = v218;
        *v188 = v220;
        *v189 = v222;
      }
    }

LABEL_127:
    a14 = v75 + a17;
    v69 = (v69 + v62);
    v68 += result;
    v58 = a12[6];
    if (v54++ >= v58)
    {
      return result;
    }
  }

  if (!v57)
  {
    v150 = v149 - v78 + 1;
    while (v145 <= v51 && v146 <= v51)
    {
      v151 = (v146 + v61 + v61);
      v152 = *(v151 + v61);
      v153 = v64;
      v153.i32[3] = HIDWORD(*(v151->i64 + v61));
      v154 = (v145 + v60 + v60);
      v155 = *(v154 + v60);
      v156 = vuzp2q_s32(v155, v66);
      v29 = vtrn2q_s32(vrev64q_s32(v156), v153);
      v157 = vuzp1q_s32(v64, v152);
      v158 = *v151;
      v159 = v64;
      v159.i32[3] = HIDWORD(v151->i64[0]);
      v160 = *v154;
      v161 = vuzp2q_s32(*v154, v66);
      v162 = *(v145 + v60);
      v163 = v66;
      v163.i32[0] = *(v145 + v60 + 8);
      v164 = *(v146 + v61);
      v165 = vuzp1q_s32(v64, v164);
      v166 = vtrn2q_s32(vrev64q_s32(v163), v165);
      v167 = v64;
      v167.i32[3] = HIDWORD(*(v146->i64 + v61));
      v168 = vuzp2q_s32(v162, v66);
      v169 = vtrn2q_s32(vrev64q_s32(v168), v167);
      v170 = *v145;
      v145 += 2;
      v171 = v170;
      v172 = *v146++;
      v173 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v162, v66)), vextq_s8(v64, v165, 0xCuLL));
      v174 = vtrn2q_s32(v168, v162);
      v175 = vuzp2q_s32(v171, v66);
      v176 = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v175, v171)), vuzp2q_s32(v64, v172));
      v177 = vuzp1q_s32(v64, v172);
      v178 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v171, v66)), vextq_s8(v64, v177, 0xCuLL));
      v179 = v64;
      v179.i32[3] = v172.i32[1];
      v180 = v66;
      v181 = vtrn2q_s32(vrev64q_s32(v175), v179);
      v182 = v66;
      v182.i32[0] = v171.i32[2];
      v183 = vuzp1q_s32(v64, *v151);
      v184 = vtrn2q_s32(vrev64q_s32(v182), v177);
      v185 = v66;
      v185.i32[0] = v154->i64[1];
      *a14 = v178;
      *(a14 + 16) = v181;
      v186 = (a14 + 64);
      *(a14 + 32) = v184;
      *(a14 + 48) = v176;
      v187 = (v70 + 64);
      *v70 = v173;
      *(v70 + 16) = v169;
      *(v70 + 32) = v166;
      *(v70 + 48) = vtrn2q_s32(vrev64q_s32(v174), vuzp2q_s32(v64, v164));
      v188 = (v71 + 64);
      *v71 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v160, v66)), vextq_s8(v64, v183, 0xCuLL));
      *(v71 + 16) = vtrn2q_s32(vrev64q_s32(v161), v159);
      *(v71 + 32) = vtrn2q_s32(vrev64q_s32(v185), v183);
      *(v71 + 48) = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v161, v160)), vuzp2q_s32(v64, v158));
      v189 = (v72 + 64);
      v180.i32[0] = v155.i32[2];
      *(v72 + 32) = vtrn2q_s32(vrev64q_s32(v180), v157);
      *(v72 + 48) = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v156, v155)), vuzp2q_s32(v64, v152));
      *v72 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v155, v66)), vextq_s8(v64, v157, 0xCuLL));
      *(v72 + 16) = v29;
      v72 += 64;
      v71 += 64;
      v70 += 64;
      a14 += 64;
      if (!--v150)
      {
        v147 = a12[5];
        if (v147)
        {
          goto LABEL_94;
        }

        goto LABEL_127;
      }
    }
  }

  return result;
}

int8x16_t *ExtractInterleaved4_B44<unsigned short,(StreamType)0,(StreamType)1,(StreamType)0,(StreamType)1>(int8x16_t *result, unint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int32x2_t *a11, unsigned int *a12, uint64_t a13, int8x16_t *a14, uint64_t a15, int8x16_t *a16, uint64_t a17)
{
  if (!result)
  {
    return result;
  }

  v22 = result;
  if (*&a11[1] >= a2)
  {
    v23 = a2;
  }

  else
  {
    v23 = a11[1];
  }

  AXRStreamB44<unsigned short,(StreamType)0>::AXRStreamB44(v242, a3);
  v24 = vmin_u32(vmls_s32(*(*(*(*(a4 + 8) + 40) + 8 * a11[7].u32[1]) + 16), *(*(a4 + 8) + 48), a11[3]), *(*(a4 + 8) + 48)).u32[0];
  if (v24 <= 0xFFFFFFFC)
  {
    v25 = (v24 + 3) >> 2;
  }

  else
  {
    v25 = 0x40000000;
  }

  result = AXRStreamB44<unsigned short,(StreamType)0>::AXRStreamB44(&v241, a5);
  v27 = a11[7].u32[1];
  v28 = *(a6 + 8);
  v29 = *(*&v28[5] + 8 * v27);
  v30 = a11[3];
  v31 = v29[2];
  v32 = vmin_u32(vmls_s32(v31, v28[6], v30), v28[6]).u32[0];
  v33 = (v32 + 3) >> 2;
  if (v32 > 0xFFFFFFFC)
  {
    v33 = 0x40000000;
  }

  if (v23 < 0xE)
  {
    return result;
  }

  v34 = *(a13 + 60);
  v35 = a3[1];
  if (v35)
  {
    v36 = (v30.i32[1] * v34);
    v37 = *(*(v35 + 40) + 8 * v27);
    if (*(v37 + 12) - 1 < v36)
    {
      v36 = *(v37 + 12) - 1;
    }

    if (*(v35 + 104) == 1)
    {
      v38 = (*(v37 + 8 * v30.u32[0] + 24) + 8 * v36);
    }

    else
    {
      v39 = (v36 * *(v35 + 108)) >> *(v35 + 112);
      if (v39 >= *(v37 + 20) - 1)
      {
        LODWORD(v39) = *(v37 + 20) - 1;
      }

      v38 = (*(v37 + 8 * v30.u32[0] + 24) + 8 * v39);
    }

    v35 = *v38;
  }

  v40 = *(a4 + 8);
  if (v40)
  {
    v41 = (v30.i32[1] * v34);
    v42 = *(*(v40 + 40) + 8 * v27);
    if (*(v42 + 12) - 1 < v41)
    {
      v41 = *(v42 + 12) - 1;
    }

    if (*(v40 + 104) == 1)
    {
      v43 = (*(v42 + 8 * v30.u32[0] + 24) + 8 * v41);
    }

    else
    {
      v44 = (v41 * *(v40 + 108)) >> *(v40 + 112);
      if (v44 >= *(v42 + 20) - 1)
      {
        LODWORD(v44) = *(v42 + 20) - 1;
      }

      v43 = (*(v42 + 8 * v30.u32[0] + 24) + 8 * v44);
    }

    result = *v43;
  }

  else
  {
    result = 0;
  }

  v45 = a5[1];
  v46 = (v30.i32[1] * v34);
  if (v45)
  {
    v47 = *(*(v45 + 40) + 8 * v27);
    v48 = *(v47 + 12) - 1;
    if (v48 >= v46)
    {
      v48 = (v30.i32[1] * v34);
    }

    if (*(v45 + 104) == 1)
    {
      v49 = (*(v47 + 8 * v30.u32[0] + 24) + 8 * v48);
    }

    else
    {
      v50 = (v48 * *(v45 + 108)) >> *(v45 + 112);
      if (v50 >= *(v47 + 20) - 1)
      {
        LODWORD(v50) = *(v47 + 20) - 1;
      }

      v49 = (*(v47 + 8 * v30.u32[0] + 24) + 8 * v50);
    }

    v45 = *v49;
  }

  v51 = v22 + v23 - 14;
  v52 = v29[1].u32[1] - 1;
  if (v52 >= v46)
  {
    v52 = (v30.i32[1] * v34);
  }

  if (v28[13].i32[0] == 1)
  {
    v53 = (*&v29[v30.u32[0] + 3] + 8 * v52);
  }

  else
  {
    v54 = (v52 * v28[13].u32[1]) >> v28[14].i32[0];
    if (v54 >= v31.i32[1] - 1)
    {
      LODWORD(v54) = v31.i32[1] - 1;
    }

    v53 = (*&v29[v30.u32[0] + 3] + 8 * v54);
  }

  v55 = a12[2];
  v56 = v22 + v45 > v51;
  v239 = v22 + v35 > v51;
  v240 = v56;
  if (v22 + v35 > v51)
  {
    v56 = 1;
  }

  v236 = v56;
  v57 = a12[6];
  if (v55 > v57)
  {
    return result;
  }

  v59 = 14 * v33;
  v60 = &v241;
  v243.val[1] = vld1q_dup_s16(v60);
  v61 = v242;
  v243.val[0] = vld1q_dup_s16(v61);
  v62 = vqtbl2q_s8(v243, xmmword_296B6EDD0);
  v63 = v22 + result;
  v64 = 7 * *a12;
  v237 = v59;
  v238 = 14 * v25;
  v65 = &v63[v64 * 2 + v238 * v55];
  v66 = (&v22[v64] + *v53 + v59 * v55);
  v67.i64[0] = 0xE0E0E0E0E0E0E0E0;
  v67.i64[1] = 0xE0E0E0E0E0E0E0E0;
  while (1)
  {
    v68 = (a14 + a17);
    v69 = (a14 + a17 + a17);
    v70 = (v69 + a17);
    if (!a16)
    {
      result = (v69 + a17);
      goto LABEL_66;
    }

    if (v55 == a12[2])
    {
      v71 = a12[3] + 1;
      v72 = a14;
      a14 = (a14 + a17);
      v68 = v69;
      v69 = (v69 + a17);
      do
      {
        result = v69;
        v69 = v68;
        v68 = a14;
        a14 = v72;
        v72 = a16;
        --v71;
      }

      while (v71);
    }

    else
    {
      result = (v69 + a17);
    }

    if (v55 == v57)
    {
      v73 = a12[7];
      switch(v73)
      {
        case 1u:
          goto LABEL_64;
        case 2u:
          goto LABEL_63;
        case 3u:
          v68 = a16;
LABEL_63:
          v69 = a16;
LABEL_64:
          v70 = a16;
          goto LABEL_66;
      }
    }

    v70 = result;
LABEL_66:
    v75 = *a12;
    v74 = a12[1];
    if (v74)
    {
      v76 = v65 > v51 || v239;
      if (((v76 | v240) & 1) != 0 || v66 > v51)
      {
        return result;
      }

      v77.i64[0] = *(v65 + 2);
      v77.i64[1] = *(v65 + 6);
      v78 = vqtbl1q_s8(v77, xmmword_296B6EDE0);
      v79 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v78, 8uLL), xmmword_296B6EE00), vshlq_u8(v78, xmmword_296B6EDF0)), xmmword_296B6EE10);
      v80 = vaddq_s8(v79, v67);
      v79.i8[1] = 0;
      v81 = vqtbl1q_s8(v80, xmmword_296B6EE20);
      v82 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v81, xmmword_296B6EE30), v81), vqtbl1q_s8(v81, xmmword_296B6EE40));
      v83 = vdupq_lane_s16(*v79.i8, 0);
      v84 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v82.i8), xmmword_296B6EE50), *v82.i8), v83);
      v85 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v82), xmmword_296B6EE50), v82), v83);
      v86 = vdupq_n_s16(bswap32(*v65) >> 16);
      v87 = vaddq_s16(v85, v86);
      v88 = vaddq_s16(v84, v86);
      v89 = veorq_s8((*&v87 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v87));
      v90 = veorq_s8((*&v88 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v88));
      if (a8)
      {
        v90.i64[0] = (*(a8 + ((v90.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a8 + 2 * v90.u16[2]) << 32) | (*(a8 + 2 * v90.u16[1]) << 16) | *(a8 + 2 * v90.u16[0]);
        v90.i64[1] = (*(a8 + ((v90.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a8 + 2 * v90.u16[6]) << 32) | (*(a8 + 2 * v90.u16[5]) << 16) | *(a8 + 2 * v90.u16[4]);
        v89.i64[0] = (*(a8 + ((v89.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a8 + 2 * v89.u16[2]) << 32) | (*(a8 + 2 * v89.u16[1]) << 16) | *(a8 + 2 * v89.u16[0]);
        v89.i64[1] = (*(a8 + ((v89.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a8 + 2 * v89.u16[6]) << 32) | (*(a8 + 2 * v89.u16[5]) << 16) | *(a8 + 2 * v89.u16[4]);
      }

      v91.i64[0] = *(v66 + 1);
      v91.i64[1] = *(v66 + 3);
      v92 = vqtbl1q_s8(v91, xmmword_296B6EDE0);
      v93 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v92, 8uLL), xmmword_296B6EE00), vshlq_u8(v92, xmmword_296B6EDF0)), xmmword_296B6EE10);
      v94 = vaddq_s8(v93, v67);
      v93.i8[1] = 0;
      v95 = vqtbl1q_s8(v94, xmmword_296B6EE20);
      v96 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v95, xmmword_296B6EE30), v95), vqtbl1q_s8(v95, xmmword_296B6EE40));
      v97 = vdupq_lane_s16(*v93.i8, 0);
      v98 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v96.i8), xmmword_296B6EE50), *v96.i8), v97);
      v99 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v96), xmmword_296B6EE50), v96), v97);
      v100 = vdupq_n_s16(bswap32(*v66) >> 16);
      v101 = vaddq_s16(v99, v100);
      v102 = vaddq_s16(v98, v100);
      v103 = veorq_s8((*&v101 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v101));
      v104 = veorq_s8((*&v102 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v102));
      if (a10)
      {
        v104.i64[0] = (*(a10 + ((v104.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a10 + 2 * v104.u16[2]) << 32) | (*(a10 + 2 * v104.u16[1]) << 16) | *(a10 + 2 * v104.u16[0]);
        v104.i64[1] = (*(a10 + ((v104.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a10 + 2 * v104.u16[6]) << 32) | (*(a10 + 2 * v104.u16[5]) << 16) | *(a10 + 2 * v104.u16[4]);
        v103.i64[0] = (*(a10 + ((v103.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a10 + 2 * v103.u16[2]) << 32) | (*(a10 + 2 * v103.u16[1]) << 16) | *(a10 + 2 * v103.u16[0]);
        v103.i64[1] = (*(a10 + ((v103.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a10 + 2 * v103.u16[6]) << 32) | (*(a10 + 2 * v103.u16[5]) << 16) | *(a10 + 2 * v103.u16[4]);
      }

      v26.i32[0] = 0;
      v105 = v62;
      v106 = vqtbl2q_s8(*(&v89 - 1), xmmword_296B6EEC0);
      v107 = vqtbl2q_s8(*(&v103 - 1), xmmword_296B6EED0);
      v108 = vqtbl2q_s8(*(&v89 - 1), xmmword_296B6EEE0);
      v109 = vqtbl2q_s8(*(&v103 - 1), xmmword_296B6EEF0);
      v110 = vqtbl2q_s8(*(&v89 - 1), xmmword_296B6EF00);
      v111 = vqtbl2q_s8(*(&v103 - 1), xmmword_296B6EF10);
      v112 = vqtbl2q_s8(*(&v89 - 1), xmmword_296B6EF20);
      v113 = vqtbl2q_s8(*(&v103 - 1), xmmword_296B6EF30);
      v114 = v62;
      v115 = vqtbl2q_s8(*(&v90 - 1), xmmword_296B6EEC0);
      v116 = vqtbl2q_s8(*(&v104 - 1), xmmword_296B6EED0);
      v117 = vqtbl2q_s8(*(&v90 - 1), xmmword_296B6EEE0);
      v118 = vqtbl2q_s8(*(&v104 - 1), xmmword_296B6EEF0);
      v119 = vqtbl2q_s8(*(&v90 - 1), xmmword_296B6EF00);
      v120 = vqtbl2q_s8(*(&v104 - 1), xmmword_296B6EF10);
      v121 = vqtbl2q_s8(*(&v90 - 1), xmmword_296B6EF20);
      v122 = vqtbl2q_s8(*(&v104 - 1), xmmword_296B6EF30);
      if (a12[4] == v75)
      {
        v123 = 4 - a12[5];
      }

      else
      {
        v123 = 4;
      }

      v114.i32[0] = a12[1] & 2;
      v26 = vdupq_lane_s32(*&vceqq_s32(v114, v26), 0);
      v124 = vbslq_s8(v26, v122, v120);
      v125 = v123 - 2;
      v126 = vbslq_s8(v26, v120, v122);
      v127 = vbslq_s8(v26, v118, v116);
      v128 = vbslq_s8(v26, v116, v118);
      v129 = vbslq_s8(v26, v113, v111);
      v130 = vbslq_s8(v26, v111, v113);
      v131 = vbslq_s8(v26, v109, v107);
      v132 = vbslq_s8(v26, v107, v109);
      if ((v74 & 2) == 0)
      {
        v125 = v123;
      }

      if (v74)
      {
        v26 = vextq_s8(v124, v126, 8uLL);
        v126 = vextq_s8(v126, v124, 8uLL);
        v133 = vextq_s8(v127, v128, 8uLL).u64[0];
        v128 = vextq_s8(v128, v127, 8uLL);
        v134 = vextq_s8(v129, v130, 8uLL).u64[0];
        v130 = vextq_s8(v130, v129, 8uLL);
        v135 = vextq_s8(v131, v132, 8uLL).u64[0];
        --v125;
        v132 = vextq_s8(v132, v131, 8uLL);
        v124.i64[0] = v26.i64[0];
        v127.i64[0] = v133;
        v129.i64[0] = v134;
        v131.i64[0] = v135;
      }

      if (v125 <= 1)
      {
        v136 = 0;
      }

      else
      {
        *a14 = v126;
        *v68 = v128;
        v125 -= 2;
        v126.i64[0] = v124.i64[0];
        v128.i64[0] = v127.i64[0];
        *v69 = v130;
        v130.i64[0] = v129.i64[0];
        *v70 = v132;
        v132.i64[0] = v131.i64[0];
        v136 = 16;
      }

      if (v125 >= 1)
      {
        *(a14->i64 + v136) = v126.i64[0];
        *(v68->i64 + v136) = v128.i64[0];
        *(v69->i64 + v136) = v130.i64[0];
        *(v70->i64 + v136) = v132.i64[0];
        v136 |= 8uLL;
      }

      v137 = a12[4];
      if (v137 == v75)
      {
        goto LABEL_117;
      }

      v138 = v65 + 14;
      v139 = v66 + 7;
      a14 = (a14 + v136);
      v68 = (v68 + v136);
      v69 = (v69 + v136);
      v70 = (v70 + v136);
      ++v75;
    }

    else
    {
      v137 = a12[4];
      v138 = v65;
      v139 = v66;
    }

    v140 = a12[5];
    v141 = v140 != 0;
    if (v137 != 0 || !v141)
    {
      v142 = v137 - v141;
      if (v75 <= v142)
      {
        break;
      }
    }

    v187 = a14;
    v188 = v68;
    v189 = v69;
    v190 = v70;
    if (v140)
    {
LABEL_105:
      v191 = v239;
      if (v138 > v51)
      {
        v191 = 1;
      }

      if (((v191 | v240) & 1) != 0 || v139 > v51)
      {
        return result;
      }

      v192.i64[0] = *(v138 + 2);
      v192.i64[1] = *(v138 + 6);
      v193 = vqtbl1q_s8(v192, xmmword_296B6EDE0);
      v194 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v193, 8uLL), xmmword_296B6EE00), vshlq_u8(v193, xmmword_296B6EDF0)), xmmword_296B6EE10);
      v195 = vaddq_s8(v194, v67);
      v194.i8[1] = 0;
      v196 = vqtbl1q_s8(v195, xmmword_296B6EE20);
      v197 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v196, xmmword_296B6EE30), v196), vqtbl1q_s8(v196, xmmword_296B6EE40));
      v198 = vdupq_lane_s16(*v194.i8, 0);
      v199 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v197.i8), xmmword_296B6EE50), *v197.i8), v198);
      v200 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v197), xmmword_296B6EE50), v197), v198);
      v201 = vdupq_n_s16(bswap32(*v138) >> 16);
      v202 = vaddq_s16(v200, v201);
      v203 = vaddq_s16(v199, v201);
      v204 = veorq_s8((*&v202 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v202));
      v205 = veorq_s8((*&v203 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v203));
      if (a8)
      {
        v205.i64[0] = (*(a8 + ((v205.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a8 + 2 * v205.u16[2]) << 32) | (*(a8 + 2 * v205.u16[1]) << 16) | *(a8 + 2 * v205.u16[0]);
        v205.i64[1] = (*(a8 + ((v205.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a8 + 2 * v205.u16[6]) << 32) | (*(a8 + 2 * v205.u16[5]) << 16) | *(a8 + 2 * v205.u16[4]);
        v204.i64[0] = (*(a8 + ((v204.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a8 + 2 * v204.u16[2]) << 32) | (*(a8 + 2 * v204.u16[1]) << 16) | *(a8 + 2 * v204.u16[0]);
        v204.i64[1] = (*(a8 + ((v204.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a8 + 2 * v204.u16[6]) << 32) | (*(a8 + 2 * v204.u16[5]) << 16) | *(a8 + 2 * v204.u16[4]);
      }

      v206.i64[0] = *(v139 + 1);
      v206.i64[1] = *(v139 + 3);
      v207 = vqtbl1q_s8(v206, xmmword_296B6EDE0);
      v208 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v207, 8uLL), xmmword_296B6EE00), vshlq_u8(v207, xmmword_296B6EDF0)), xmmword_296B6EE10);
      v209 = vaddq_s8(v208, v67);
      v208.i8[1] = 0;
      v210 = vqtbl1q_s8(v209, xmmword_296B6EE20);
      v211 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v210, xmmword_296B6EE30), v210), vqtbl1q_s8(v210, xmmword_296B6EE40));
      v212 = vdupq_lane_s16(*v208.i8, 0);
      v213 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v211.i8), xmmword_296B6EE50), *v211.i8), v212);
      v214 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v211), xmmword_296B6EE50), v211), v212);
      v215 = vdupq_n_s16(bswap32(*v139) >> 16);
      v216 = vaddq_s16(v214, v215);
      v217 = vaddq_s16(v213, v215);
      v218 = veorq_s8((*&v216 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v216));
      v219 = veorq_s8((*&v217 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v217));
      if (a10)
      {
        v219.i64[0] = (*(a10 + ((v219.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a10 + 2 * v219.u16[2]) << 32) | (*(a10 + 2 * v219.u16[1]) << 16) | *(a10 + 2 * v219.u16[0]);
        v219.i64[1] = (*(a10 + ((v219.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a10 + 2 * v219.u16[6]) << 32) | (*(a10 + 2 * v219.u16[5]) << 16) | *(a10 + 2 * v219.u16[4]);
        v218.i64[0] = (*(a10 + ((v218.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a10 + 2 * v218.u16[2]) << 32) | (*(a10 + 2 * v218.u16[1]) << 16) | *(a10 + 2 * v218.u16[0]);
        v218.i64[1] = (*(a10 + ((v218.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a10 + 2 * v218.u16[6]) << 32) | (*(a10 + 2 * v218.u16[5]) << 16) | *(a10 + 2 * v218.u16[4]);
      }

      v220 = v62;
      v221 = vqtbl2q_s8(*(&v205 - 1), xmmword_296B6EF00);
      v26 = vqtbl2q_s8(*(&v219 - 1), xmmword_296B6EF10);
      v244.val[0] = vqtbl2q_s8(*(&v205 - 1), xmmword_296B6EEC0);
      v244.val[1] = v219;
      v222 = vqtbl2q_s8(v244, xmmword_296B6EED0);
      v223 = v62;
      v224 = vqtbl2q_s8(*(&v204 - 1), xmmword_296B6EF00);
      v225 = vqtbl2q_s8(*(&v218 - 1), xmmword_296B6EF10);
      v226 = vqtbl2q_s8(*(&v204 - 1), xmmword_296B6EEC0);
      v244.val[0] = v218;
      v227 = vqtbl2q_s8(v244, xmmword_296B6EED0);
      v228 = 4 - v140;
      if ((v228 & 2) != 0)
      {
        *v187 = v26;
        *v188 = v222;
        *v189 = v225;
        *v190 = v227;
        if (v228)
        {
          v229 = vqtbl2q_s8(*(&v205 - 1), xmmword_296B6EF20);
          v26 = xmmword_296B6EF30;
          v230 = vqtbl2q_s8(*(&v219 - 1), xmmword_296B6EF30).u64[0];
          v231 = vqtbl2q_s8(*(&v205 - 1), xmmword_296B6EEE0);
          v232 = vqtbl2q_s8(*(&v219 - 1), xmmword_296B6EEF0).u64[0];
          v233 = vqtbl2q_s8(*(&v204 - 1), xmmword_296B6EF20);
          v231.i64[0] = vqtbl2q_s8(*(&v218 - 1), xmmword_296B6EF30).u64[0];
          v234 = vqtbl2q_s8(*(&v204 - 1), xmmword_296B6EEE0);
          v187[1].i64[0] = v230;
          v188[1].i64[0] = v232;
          v189[1].i64[0] = v231.i64[0];
          v190[1].i64[0] = vqtbl2q_s8(*(&v218 - 1), xmmword_296B6EEF0).u64[0];
        }
      }

      else
      {
        v187->i64[0] = v26.i64[0];
        v188->i64[0] = v222.i64[0];
        v189->i64[0] = v225.i64[0];
        v190->i64[0] = v227.i64[0];
      }
    }

LABEL_117:
    a14 = (result + a17);
    v66 = (v66 + v237);
    v65 += v238;
    v57 = a12[6];
    if (v55++ >= v57)
    {
      return result;
    }
  }

  if (!v236)
  {
    v143 = v142 - v75 + 1;
    while (v138 <= v51 && v139 <= v51)
    {
      v144.i64[0] = *(v138 + 2);
      v144.i64[1] = *(v138 + 6);
      v145 = vqtbl1q_s8(v144, xmmword_296B6EDE0);
      v146 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v145, 8uLL), xmmword_296B6EE00), vshlq_u8(v145, xmmword_296B6EDF0)), xmmword_296B6EE10);
      v147 = vaddq_s8(v146, v67);
      v146.i8[1] = 0;
      v148 = vqtbl1q_s8(v147, xmmword_296B6EE20);
      v149 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v148, xmmword_296B6EE30), v148), vqtbl1q_s8(v148, xmmword_296B6EE40));
      v150 = vdupq_lane_s16(*v146.i8, 0);
      v151 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v149.i8), xmmword_296B6EE50), *v149.i8), v150);
      v152 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v149), xmmword_296B6EE50), v149), v150);
      v153 = vdupq_n_s16(bswap32(*v138) >> 16);
      v154 = vaddq_s16(v152, v153);
      v155 = vaddq_s16(v151, v153);
      v156 = veorq_s8((*&v154 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v154));
      v157 = veorq_s8((*&v155 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v155));
      if (a8)
      {
        v157.i64[0] = (*(a8 + ((v157.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a8 + 2 * v157.u16[2]) << 32) | (*(a8 + 2 * v157.u16[1]) << 16) | *(a8 + 2 * v157.u16[0]);
        v157.i64[1] = (*(a8 + ((v157.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a8 + 2 * v157.u16[6]) << 32) | (*(a8 + 2 * v157.u16[5]) << 16) | *(a8 + 2 * v157.u16[4]);
        v156.i64[0] = (*(a8 + ((v156.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a8 + 2 * v156.u16[2]) << 32) | (*(a8 + 2 * v156.u16[1]) << 16) | *(a8 + 2 * v156.u16[0]);
        v156.i64[1] = (*(a8 + ((v156.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a8 + 2 * v156.u16[6]) << 32) | (*(a8 + 2 * v156.u16[5]) << 16) | *(a8 + 2 * v156.u16[4]);
      }

      v158.i64[0] = *(v139 + 1);
      v158.i64[1] = *(v139 + 3);
      v159 = vqtbl1q_s8(v158, xmmword_296B6EDE0);
      v160 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v159, 8uLL), xmmword_296B6EE00), vshlq_u8(v159, xmmword_296B6EDF0)), xmmword_296B6EE10);
      v161 = vaddq_s8(v160, v67);
      v160.i8[1] = 0;
      v162 = vqtbl1q_s8(v161, xmmword_296B6EE20);
      v163 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v162, xmmword_296B6EE30), v162), vqtbl1q_s8(v162, xmmword_296B6EE40));
      v164 = vdupq_lane_s16(*v160.i8, 0);
      v165 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v163.i8), xmmword_296B6EE50), *v163.i8), v164);
      v166 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v163), xmmword_296B6EE50), v163), v164);
      v167 = vdupq_n_s16(bswap32(*v139) >> 16);
      v168 = vaddq_s16(v166, v167);
      v169 = vaddq_s16(v165, v167);
      v170 = veorq_s8((*&v168 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v168));
      v171 = veorq_s8((*&v169 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v169));
      if (a10)
      {
        v171.i64[0] = (*(a10 + ((v171.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a10 + 2 * v171.u16[2]) << 32) | (*(a10 + 2 * v171.u16[1]) << 16) | *(a10 + 2 * v171.u16[0]);
        v171.i64[1] = (*(a10 + ((v171.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a10 + 2 * v171.u16[6]) << 32) | (*(a10 + 2 * v171.u16[5]) << 16) | *(a10 + 2 * v171.u16[4]);
        v170.i64[0] = (*(a10 + ((v170.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a10 + 2 * v170.u16[2]) << 32) | (*(a10 + 2 * v170.u16[1]) << 16) | *(a10 + 2 * v170.u16[0]);
        v170.i64[1] = (*(a10 + ((v170.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a10 + 2 * v170.u16[6]) << 32) | (*(a10 + 2 * v170.u16[5]) << 16) | *(a10 + 2 * v170.u16[4]);
      }

      v138 += 14;
      v172 = v156;
      v173 = vqtbl2q_s8(*v62.i8, xmmword_296B6EEC0);
      v26 = vqtbl2q_s8(*(&v170 - 1), xmmword_296B6EED0);
      v174 = vqtbl2q_s8(*v62.i8, xmmword_296B6EEE0);
      v175 = vqtbl2q_s8(*(&v170 - 1), xmmword_296B6EEF0);
      v176 = vqtbl2q_s8(*v62.i8, xmmword_296B6EF00);
      v177 = vqtbl2q_s8(*(&v170 - 1), xmmword_296B6EF10);
      v178 = v62;
      v179 = vqtbl2q_s8(*(&v157 - 1), xmmword_296B6EEC0);
      v180 = vqtbl2q_s8(*(&v171 - 1), xmmword_296B6EED0);
      v181 = vqtbl2q_s8(*(&v157 - 1), xmmword_296B6EEE0);
      v182 = vqtbl2q_s8(*(&v171 - 1), xmmword_296B6EEF0);
      v183 = vqtbl2q_s8(*(&v157 - 1), xmmword_296B6EF00);
      v184 = vqtbl2q_s8(*(&v171 - 1), xmmword_296B6EF10);
      v185 = vqtbl2q_s8(*(&v157 - 1), xmmword_296B6EF20);
      *a14 = v184;
      a14[1] = vqtbl2q_s8(*(&v171 - 1), xmmword_296B6EF30);
      v186 = vqtbl2q_s8(*v62.i8, xmmword_296B6EF20);
      v139 += 7;
      v187 = &a14[2];
      *v68 = v180;
      v68[1] = v182;
      v188 = v68 + 2;
      v189 = v69 + 2;
      *v69 = v177;
      v69[1] = vqtbl2q_s8(*(&v170 - 1), xmmword_296B6EF30);
      v190 = v70 + 2;
      *v70 = v26;
      v70[1] = v175;
      v70 += 2;
      v69 += 2;
      v68 += 2;
      a14 += 2;
      if (!--v143)
      {
        v140 = a12[5];
        if (v140)
        {
          goto LABEL_105;
        }

        goto LABEL_117;
      }
    }
  }

  return result;
}

uint64_t ExtractInterleaved4_B44<unsigned int,(StreamType)0,(StreamType)1,(StreamType)0,(StreamType)1>(uint64_t result, unint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int32x2_t *a11, unsigned int *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (!result)
  {
    return result;
  }

  v22 = result;
  if (*&a11[1] >= a2)
  {
    v23 = a2;
  }

  else
  {
    v23 = a11[1];
  }

  AXRStreamB44<unsigned int,(StreamType)0>::AXRStreamB44(&v196, a3);
  v24 = vmin_u32(vmls_s32(*(*(*(*(a4 + 8) + 40) + 8 * a11[7].u32[1]) + 16), *(*(a4 + 8) + 48), a11[3]), *(*(a4 + 8) + 48)).u32[0];
  result = AXRStreamB44<unsigned int,(StreamType)0>::AXRStreamB44(&v195, a5);
  v25 = a11[3];
  v26 = a11[7].u32[1];
  v27 = *(a6 + 8);
  v28 = *(*&v27[5] + 8 * v26);
  v29 = v27[6];
  v30 = v28[2];
  *v31.i8 = vmls_s32(v30, v29, v25);
  v32 = vmin_u32(*v31.i8, v29).u32[0];
  v33 = 12 * v32 + 16;
  if (12 * v24 + 16 > v33)
  {
    v33 = 12 * v24 + 16;
  }

  v34 = *&v23 - v33;
  if (*&v23 < v33)
  {
    return result;
  }

  v35 = *(a13 + 60);
  v36 = a3[1];
  if (v36)
  {
    v37 = (v25.i32[1] * v35);
    v38 = *(*(v36 + 40) + 8 * v26);
    if (*(v38 + 12) - 1 < v37)
    {
      v37 = *(v38 + 12) - 1;
    }

    if (*(v36 + 104) == 1)
    {
      v39 = (*(v38 + 8 * v25.u32[0] + 24) + 8 * v37);
    }

    else
    {
      v40 = (v37 * *(v36 + 108)) >> *(v36 + 112);
      if (v40 >= *(v38 + 20) - 1)
      {
        LODWORD(v40) = *(v38 + 20) - 1;
      }

      v39 = (*(v38 + 8 * v25.u32[0] + 24) + 8 * v40);
    }

    v36 = *v39;
  }

  v41 = *(a4 + 8);
  if (v41)
  {
    v42 = (v25.i32[1] * v35);
    v43 = *(*(v41 + 40) + 8 * v26);
    if (*(v43 + 12) - 1 < v42)
    {
      v42 = *(v43 + 12) - 1;
    }

    result = *(v41 + 104);
    if (result == 1)
    {
      v44 = (*(v43 + 8 * v25.u32[0] + 24) + 8 * v42);
    }

    else
    {
      result = *(v41 + 108);
      v46 = (v42 * result) >> *(v41 + 112);
      if (v46 >= *(v43 + 20) - 1)
      {
        LODWORD(v46) = *(v43 + 20) - 1;
      }

      v44 = (*(v43 + 8 * v25.u32[0] + 24) + 8 * v46);
    }

    v45 = *v44;
  }

  else
  {
    v45 = 0;
  }

  v47 = a5[1];
  v48 = (v25.i32[1] * v35);
  if (v47)
  {
    v49 = *(*(v47 + 40) + 8 * v26);
    v50 = *(v49 + 12) - 1;
    if (v50 >= v48)
    {
      v50 = (v25.i32[1] * v35);
    }

    result = *(v47 + 104);
    if (result == 1)
    {
      v51 = (*(v49 + 8 * v25.u32[0] + 24) + 8 * v50);
    }

    else
    {
      result = *(v47 + 108);
      v53 = (v50 * result) >> *(v47 + 112);
      if (v53 >= *(v49 + 20) - 1)
      {
        LODWORD(v53) = *(v49 + 20) - 1;
      }

      v51 = (*(v49 + 8 * v25.u32[0] + 24) + 8 * v53);
    }

    v52 = *v51;
  }

  else
  {
    v52 = 0;
  }

  v54 = v34 + v22;
  if (v28[1].u32[1] - 1 < v48)
  {
    v48 = v28[1].u32[1] - 1;
  }

  if (v27[13].i32[0] == 1)
  {
    v55 = (*&v28[v25.u32[0] + 3] + 8 * v48);
  }

  else
  {
    v56 = (v48 * v27[13].u32[1]) >> v27[14].i32[0];
    if (v56 >= v30.i32[1] - 1)
    {
      LODWORD(v56) = v30.i32[1] - 1;
    }

    v55 = (*&v28[v25.u32[0] + 3] + 8 * v56);
  }

  v57 = a12[2];
  v58 = v52 + v22 > v54;
  v59 = v36 + v22 > v54;
  v60 = v59 || (v52 + v22 > v54);
  v61 = a12[6];
  if (v57 > v61)
  {
    return result;
  }

  v63 = 4 * v24;
  v64 = 4 * v32;
  result = 16 * v24;
  v65.i64[0] = __PAIR64__(v195, v196);
  v65.i64[1] = __PAIR64__(v195, v196);
  v66 = 16 * v32;
  v67 = *a12;
  v68 = (v45 + v22 + 16 * v67 + 16 * v24 * v57);
  v69 = v22 + 16 * v67 + *v55 + v66 * v57;
  v70 = vextq_s8(v65, v65, 8uLL);
  while (1)
  {
    v71 = a14 + a17;
    v72 = a14 + a17 + a17;
    v73 = v72 + a17;
    if (!a16)
    {
      v76 = v72 + a17;
      goto LABEL_65;
    }

    if (v57 == a12[2])
    {
      v74 = a12[3] + 1;
      v75 = a14;
      a14 += a17;
      v71 = v72;
      v72 += a17;
      do
      {
        v76 = v72;
        v72 = v71;
        v71 = a14;
        a14 = v75;
        v75 = a16;
        --v74;
      }

      while (v74);
    }

    else
    {
      v76 = v72 + a17;
    }

    if (v57 == v61)
    {
      v77 = a12[7];
      switch(v77)
      {
        case 1u:
          goto LABEL_63;
        case 2u:
          goto LABEL_62;
        case 3u:
          v71 = a16;
LABEL_62:
          v72 = a16;
LABEL_63:
          v73 = a16;
          goto LABEL_65;
      }
    }

    v73 = v76;
LABEL_65:
    v79 = *a12;
    v78 = a12[1];
    if (v78)
    {
      v80 = v68 > v54 || v59;
      if (((v80 | v58) & 1) != 0 || v69 > v54)
      {
        return result;
      }

      v31.i32[0] = 0;
      v81 = *(v68 + v63);
      v82 = (v68 + v63 + v63);
      v83 = *(v82 + v63);
      v84 = *v82;
      v85 = v69 + v64 + v64;
      v86 = vzip1q_s32(v65, v81);
      v86.i32[3] = *(v69 + v64);
      v87 = vzip2q_s32(v70, v81);
      v87.i32[3] = *(v69 + v64 + 8);
      v88 = vzip2q_s32(v65, vuzp2q_s32(v65, v81));
      v88.i32[3] = HIDWORD(*(v69 + v64));
      v89 = vextq_s8(vzip2q_s32(v81, v65), v65, 4uLL);
      v89.i32[3] = HIDWORD(*(v69 + v64));
      v90 = vzip1q_s32(v65, v84);
      v90.i32[3] = *v85;
      v91 = vzip2q_s32(v70, v84);
      v91.i32[3] = *(v85 + 8);
      v92 = vzip2q_s32(v65, vuzp2q_s32(v65, v84));
      v92.i32[3] = HIDWORD(*v85);
      v93 = vextq_s8(vzip2q_s32(v84, v65), v65, 4uLL);
      v93.i32[3] = HIDWORD(*v85);
      v94 = vzip1q_s32(v65, v83);
      v94.i32[3] = *(v85 + v64);
      v95 = vzip2q_s32(v70, v83);
      v95.i32[3] = *(v85 + v64 + 8);
      v96 = vzip2q_s32(v65, vuzp2q_s32(v65, v83));
      v96.i32[3] = HIDWORD(*(v85 + v64));
      v97 = vextq_s8(vzip2q_s32(v83, v65), v65, 4uLL);
      v97.i32[3] = HIDWORD(*(v85 + v64));
      v98 = vzip1q_s32(v65, *v68);
      v98.i32[3] = *v69;
      v99 = vzip2q_s32(v70, *v68);
      v99.i32[3] = *(v69 + 8);
      v100 = vextq_s8(vzip2q_s32(*v68, v65), v65, 4uLL);
      v100.i32[3] = HIDWORD(*v69);
      v101 = vuzp2q_s32(v65, *v68);
      v102 = vzip2q_s32(v65, v101);
      v102.i32[3] = HIDWORD(*v69);
      if (a12[4] == v79)
      {
        v103 = 4 - a12[5];
      }

      else
      {
        v103 = 4;
      }

      v101.i32[0] = a12[1] & 2;
      v104 = vdupq_lane_s32(*&vceqq_s32(v101, v31), 0);
      v105 = vbslq_s8(v104, v96, v97);
      v106 = vbslq_s8(v104, v94, v95);
      v107 = vbslq_s8(v104, v92, v93);
      v108 = vbslq_s8(v104, v90, v91);
      v109 = vbslq_s8(v104, v88, v89);
      v110 = vbslq_s8(v104, v86, v87);
      v111 = vbslq_s8(v104, v102, v100);
      if ((v78 & 2) != 0)
      {
        v103 -= 2;
      }

      v112 = v78 & 1;
      v113 = v103 - v112;
      v17.i32[0] = v112;
      v17 = vdupq_lane_s32(*&vmvnq_s8(vceqq_s32(v17, v31)), 0);
      v114 = vbslq_s8(v17, v109, v110);
      v115 = vbslq_s8(v17, v107, v108);
      v31 = vbslq_s8(v17, v105, v106);
      v116 = vbslq_s8(v17, v111, vbslq_s8(v104, v98, v99));
      if (v103 - v112 <= 1)
      {
        v122 = 0;
      }

      else
      {
        v117 = vbslq_s8(v104, v95, v94);
        v118 = vbslq_s8(v104, v91, v90);
        v119 = vbslq_s8(v104, v87, v86);
        v120 = vbslq_s8(v104, v89, v88);
        v121 = vbslq_s8(v104, v99, v98);
        *a14 = v116;
        *(a14 + 16) = vbslq_s8(v17, v121, v111);
        v116 = vbslq_s8(v17, vbslq_s8(v104, v100, v102), v121);
        *v71 = v114;
        *(v71 + 16) = vbslq_s8(v17, v119, v109);
        *v72 = v115;
        *(v72 + 16) = vbslq_s8(v17, v118, v107);
        v113 -= 2;
        *v73 = v31;
        *(v73 + 16) = vbslq_s8(v17, v117, v105);
        v114 = vbslq_s8(v17, v120, v119);
        v115 = vbslq_s8(v17, vbslq_s8(v104, v93, v92), v118);
        v31 = vbslq_s8(v17, vbslq_s8(v104, v97, v96), v117);
        v122 = 32;
      }

      if (v113 >= 1)
      {
        *(v122 + a14) = v116;
        *(v122 + v71) = v114;
        *(v122 + v72) = v115;
        *(v122 + v73) = v31;
        v122 |= 0x10uLL;
      }

      v123 = a12[4];
      if (v123 == v79)
      {
        goto LABEL_127;
      }

      v124 = v68 + 1;
      v125 = (v69 + 16);
      a14 += v122;
      v71 += v122;
      v72 += v122;
      v73 += v122;
      ++v79;
    }

    else
    {
      v123 = a12[4];
      v124 = v68;
      v125 = v69;
    }

    v126 = a12[5];
    v127 = v126 != 0;
    if (v123 != 0 || !v127)
    {
      v128 = v123 - v127;
      if (v79 <= v128)
      {
        break;
      }
    }

    v153 = a14;
    v154 = v71;
    v155 = v72;
    v156 = v73;
    if (v126)
    {
LABEL_94:
      v157 = 4 - a12[7];
      if (v57 != a12[6])
      {
        v157 = 4;
      }

      v158 = v124 > v54 || v59;
      if (((v158 | v58) & 1) != 0 || v125 > v54)
      {
        return result;
      }

      v159 = v60;
      if (v157 < 2)
      {
        v161 = 0;
        v160 = v124;
        v162 = v124;
      }

      else
      {
        v160 = (v124->i64 + v63);
        if (v157 == 2)
        {
          v161 = 0;
          v162 = (v124->i64 + v63);
        }

        else
        {
          v162 = (v124->i64 + v63);
          v160 = (v160 + v63);
          if (v157 <= 3)
          {
            v161 = 0;
          }

          else
          {
            v161 = v63;
          }
        }
      }

      v163 = (v160 + v161);
      v164 = 0uLL;
      v31 = 0uLL;
      v165 = 0uLL;
      v166 = 0uLL;
      if ((4 - v126))
      {
        v166.i32[0] = v124->i32[3 - v126];
        v164.i32[0] = *(v162 + 3 - v126);
        v31.i32[0] = *(v160 + 3 - v126);
        v165.i32[0] = *(v163 + 3 - v126);
      }

      if (((4 - v126) & 2) != 0)
      {
        v167.i64[0] = v124->i64[0];
        v167.i64[1] = v166.i64[0];
        v168.i64[0] = *v162;
        v168.i64[1] = v164.i64[0];
        v169.i64[0] = *v160;
        v169.i64[1] = v31.i64[0];
        v170.i64[0] = *v163;
        v170.i64[1] = v165.i64[0];
        v164 = v168;
        v31 = v169;
        v165 = v170;
        v166 = v167;
      }

      v60 = v159;
      if (v157 < 2)
      {
        v172 = 0;
        v171 = v125;
        v173 = v125;
      }

      else
      {
        v171 = (v125 + v64);
        if (v157 == 2)
        {
          v172 = 0;
          v173 = (v125 + v64);
        }

        else
        {
          v173 = (v125 + v64);
          v171 = (v171 + v64);
          if (v157 <= 3)
          {
            v172 = 0;
          }

          else
          {
            v172 = v64;
          }
        }
      }

      v174 = (v171 + v172);
      *&v175 = 0;
      DWORD2(v175) = 0;
      *&v176 = 0;
      DWORD2(v176) = 0;
      *&v177 = 0;
      DWORD2(v177) = 0;
      *&v178 = 0;
      DWORD2(v178) = 0;
      if ((4 - v126))
      {
        LODWORD(v178) = *(v125 + 3 - v126);
        LODWORD(v175) = *(v173 + 3 - v126);
        LODWORD(v176) = *(v171 + 3 - v126);
        LODWORD(v177) = *(v174 + 3 - v126);
      }

      if (((4 - v126) & 2) != 0)
      {
        *&v179 = *v125;
        *(&v179 + 1) = v178;
        *&v180 = *v173;
        *(&v180 + 1) = v175;
        *&v181 = *v171;
        *(&v181 + 1) = v176;
        *&v182 = *v174;
        *(&v182 + 1) = v177;
        v175 = v180;
        v176 = v181;
        v177 = v182;
        v178 = v179;
      }

      v183 = vzip1q_s32(v65, v166);
      v183.i32[3] = v178;
      v184 = vzip1q_s32(v65, v164);
      v184.i32[3] = v175;
      v185 = vzip1q_s32(v65, v31);
      v185.i32[3] = v176;
      v186 = vzip1q_s32(v65, v165);
      v186.i32[3] = v177;
      if (((4 - v126) & 2) != 0)
      {
        v187 = vzip2q_s32(v65, vuzp2q_s32(v65, v166));
        v187.i32[3] = DWORD1(v178);
        v188 = vzip2q_s32(v65, vuzp2q_s32(v65, v164));
        v188.i32[3] = DWORD1(v175);
        v189 = vzip2q_s32(v65, vuzp2q_s32(v65, v31));
        v189.i32[3] = DWORD1(v176);
        v190 = vzip2q_s32(v65, vuzp2q_s32(v65, v165));
        v190.i32[3] = DWORD1(v177);
        *v153 = v183;
        v153[1] = v187;
        *v154 = v184;
        v154[1] = v188;
        *v155 = v185;
        v155[1] = v189;
        *v156 = v186;
        v156[1] = v190;
        if ((4 - v126))
        {
          v191 = vzip2q_s32(v70, v166);
          v191.i32[3] = DWORD2(v178);
          v192 = vzip2q_s32(v70, v164);
          v192.i32[3] = DWORD2(v175);
          v31 = vzip2q_s32(v70, v31);
          v31.i32[3] = DWORD2(v176);
          v193 = vzip2q_s32(v70, v165);
          v193.i32[3] = DWORD2(v177);
          v153[2] = v191;
          v154[2] = v192;
          v155[2] = v31;
          v156[2] = v193;
        }
      }

      else
      {
        *v153 = v183;
        *v154 = v184;
        *v155 = v185;
        *v156 = v186;
      }
    }

LABEL_127:
    a14 = v76 + a17;
    v69 += v66;
    v68 = (v68 + result);
    v61 = a12[6];
    if (v57++ >= v61)
    {
      return result;
    }
  }

  if (!v60)
  {
    v129 = v128 - v79 + 1;
    while (v124 <= v54 && v125 <= v54)
    {
      v130 = *(v124 + v63);
      v131 = (v124 + v63 + v63);
      v132 = *v131;
      v133 = *(v131 + v63);
      v134 = v125 + v64 + v64;
      v135 = vextq_s8(vzip2q_s32(v133, v65), v65, 4uLL);
      v135.i32[3] = HIDWORD(*&v134[v64]);
      v31 = vzip2q_s32(v70, v133);
      v31.i32[3] = *&v134[v64 + 8];
      v136 = vzip2q_s32(v65, vuzp2q_s32(v65, v133));
      v136.i32[3] = HIDWORD(*&v134[v64]);
      v137 = vzip1q_s32(v65, v133);
      v137.i32[3] = *&v134[v64];
      v138 = vzip2q_s32(v70, v132);
      v138.i32[3] = *(v134 + 1);
      v139 = vextq_s8(vzip2q_s32(v132, v65), v65, 4uLL);
      v139.i32[3] = HIDWORD(*v134);
      v140 = vzip2q_s32(v65, vuzp2q_s32(v65, v132));
      v140.i32[3] = HIDWORD(*v134);
      v141 = vzip1q_s32(v65, v132);
      v141.i32[3] = *v134;
      v142 = vzip2q_s32(v70, v130);
      v142.i32[3] = *(v125 + v64 + 8);
      v143 = *v124++;
      v144 = v143;
      v145 = vextq_s8(vzip2q_s32(v130, v65), v65, 4uLL);
      v145.i32[3] = HIDWORD(*(v125 + v64));
      v146 = vzip2q_s32(v65, vuzp2q_s32(v65, v130));
      v146.i32[3] = HIDWORD(*(v125 + v64));
      v147 = vzip1q_s32(v65, v130);
      v147.i32[3] = *(v125 + v64);
      v148 = *v125;
      v125 += 2;
      v149 = vzip2q_s32(v65, vuzp2q_s32(v65, v144));
      v149.i32[3] = DWORD1(v148);
      v150 = vzip2q_s32(v70, v144);
      v150.i32[3] = DWORD2(v148);
      v151 = vextq_s8(vzip2q_s32(v144, v65), v65, 4uLL);
      v151.i32[3] = HIDWORD(v148);
      v152 = vzip1q_s32(v65, v144);
      v152.i32[3] = v148;
      *(a14 + 32) = v150;
      *(a14 + 48) = v151;
      v153 = (a14 + 64);
      *a14 = v152;
      *(a14 + 16) = v149;
      v154 = (v71 + 64);
      *v71 = v147;
      *(v71 + 16) = v146;
      *(v71 + 32) = v142;
      *(v71 + 48) = v145;
      v155 = (v72 + 64);
      *v72 = v141;
      *(v72 + 16) = v140;
      *(v72 + 32) = v138;
      *(v72 + 48) = v139;
      v156 = (v73 + 64);
      *v73 = v137;
      *(v73 + 16) = v136;
      *(v73 + 32) = v31;
      *(v73 + 48) = v135;
      v73 += 64;
      v72 += 64;
      v71 += 64;
      a14 += 64;
      if (!--v129)
      {
        v126 = a12[5];
        if (v126)
        {
          goto LABEL_94;
        }

        goto LABEL_127;
      }
    }
  }

  return result;
}

unint64_t ExtractInterleaved4_B44<unsigned short,(StreamType)1,(StreamType)1,(StreamType)0,(StreamType)1>(unint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned int *a12, uint64_t a13, int8x16_t *a14, uint64_t a15, int8x16_t *a16, uint64_t a17)
{
  if (!result)
  {
    return result;
  }

  v23 = result;
  if (*(a11 + 8) >= a2)
  {
    v24 = a2;
  }

  else
  {
    v24 = *(a11 + 8);
  }

  v25 = *(a11 + 60);
  v26 = *(a11 + 24);
  v27 = vmin_u32(vmls_s32(*(*(*(*(a3 + 8) + 40) + 8 * v25) + 16), *(*(a3 + 8) + 48), v26), *(*(a3 + 8) + 48)).u32[0];
  if (v27 <= 0xFFFFFFFC)
  {
    v28 = (v27 + 3) >> 2;
  }

  else
  {
    v28 = 0x40000000;
  }

  v274 = v28;
  v29 = vmin_u32(vmls_s32(*(*(*(*(a4 + 8) + 40) + 8 * v25) + 16), *(*(a4 + 8) + 48), v26), *(*(a4 + 8) + 48)).u32[0];
  if (v29 <= 0xFFFFFFFC)
  {
    v30 = (v29 + 3) >> 2;
  }

  else
  {
    v30 = 0x40000000;
  }

  v272 = v30;
  result = AXRStreamB44<unsigned short,(StreamType)0>::AXRStreamB44(v277, a5);
  v31 = *(a11 + 60);
  v32 = *(a6 + 8);
  v33 = *(*&v32[5] + 8 * v31);
  v34 = *(a11 + 24);
  v35 = v33[2];
  v36 = vmin_u32(vmls_s32(v35, v32[6], v34), v32[6]).u32[0];
  v37 = (v36 + 3) >> 2;
  if (v36 > 0xFFFFFFFC)
  {
    v37 = 0x40000000;
  }

  if (v24 < 0xE)
  {
    return result;
  }

  v38 = *(a13 + 60);
  v39 = *(a3 + 8);
  if (v39)
  {
    v40 = (v34.i32[1] * v38);
    v41 = *(*(v39 + 40) + 8 * v31);
    if (*(v41 + 12) - 1 < v40)
    {
      v40 = *(v41 + 12) - 1;
    }

    if (*(v39 + 104) == 1)
    {
      v42 = (*(v41 + 8 * v34.u32[0] + 24) + 8 * v40);
    }

    else
    {
      v44 = (v40 * *(v39 + 108)) >> *(v39 + 112);
      if (v44 >= *(v41 + 20) - 1)
      {
        LODWORD(v44) = *(v41 + 20) - 1;
      }

      v42 = (*(v41 + 8 * v34.u32[0] + 24) + 8 * v44);
    }

    v43 = *v42;
  }

  else
  {
    v43 = 0;
  }

  v45 = *(a4 + 8);
  if (v45)
  {
    v46 = (v34.i32[1] * v38);
    v47 = *(*(v45 + 40) + 8 * v31);
    if (*(v47 + 12) - 1 < v46)
    {
      v46 = *(v47 + 12) - 1;
    }

    if (*(v45 + 104) == 1)
    {
      v48 = (*(v47 + 8 * v34.u32[0] + 24) + 8 * v46);
    }

    else
    {
      v50 = (v46 * *(v45 + 108)) >> *(v45 + 112);
      if (v50 >= *(v47 + 20) - 1)
      {
        LODWORD(v50) = *(v47 + 20) - 1;
      }

      v48 = (*(v47 + 8 * v34.u32[0] + 24) + 8 * v50);
    }

    v49 = *v48;
  }

  else
  {
    v49 = 0;
  }

  v51 = a5[1];
  v52 = (v34.i32[1] * v38);
  if (v51)
  {
    v53 = *(*(v51 + 40) + 8 * v31);
    v54 = *(v53 + 12) - 1;
    if (v54 >= v52)
    {
      v54 = (v34.i32[1] * v38);
    }

    if (*(v51 + 104) == 1)
    {
      v55 = (*(v53 + 8 * v34.u32[0] + 24) + 8 * v54);
    }

    else
    {
      v57 = (v54 * *(v51 + 108)) >> *(v51 + 112);
      if (v57 >= *(v53 + 20) - 1)
      {
        LODWORD(v57) = *(v53 + 20) - 1;
      }

      v55 = (*(v53 + 8 * v34.u32[0] + 24) + 8 * v57);
    }

    v56 = *v55;
  }

  else
  {
    v56 = 0;
  }

  v58 = v23 + v24 - 14;
  v59 = v33[1].u32[1] - 1;
  if (v59 >= v52)
  {
    v59 = (v34.i32[1] * v38);
  }

  if (v32[13].i32[0] == 1)
  {
    result = *&v33[v34.u32[0] + 3] + 8 * v59;
  }

  else
  {
    v60 = (v59 * v32[13].u32[1]) >> v32[14].i32[0];
    if (v60 >= v35.i32[1] - 1)
    {
      LODWORD(v60) = v35.i32[1] - 1;
    }

    result = *&v33[v34.u32[0] + 3] + 8 * v60;
  }

  v61 = a12[2];
  v276 = v56 + v23 > v58;
  v62 = a12[6];
  if (v61 > v62)
  {
    return result;
  }

  v64 = 14 * v37;
  v65 = v277;
  v66 = vld1q_dup_s16(v65);
  v67 = v43 + v23;
  v68 = 14 * *a12;
  v273 = 14 * v272;
  v275 = 14 * v274;
  v69 = (v67 + v68 + v275 * v61);
  v70 = (v49 + v23 + v68 + v273 * v61);
  v271 = v64;
  v71 = (v68 + v23 + *result + v64 * v61);
  v72 = xmmword_296B6EDE0;
  v73 = xmmword_296B6EDF0;
  v74.i64[0] = 0xE0E0E0E0E0E0E0E0;
  v74.i64[1] = 0xE0E0E0E0E0E0E0E0;
  while (1)
  {
    v75 = (a14 + a17);
    v76 = (a14 + a17 + a17);
    v77 = (v76 + a17);
    if (!a16)
    {
      v80 = (v76 + a17);
      goto LABEL_69;
    }

    if (v61 == a12[2])
    {
      v78 = a12[3] + 1;
      v79 = a14;
      a14 = (a14 + a17);
      v75 = v76;
      v76 = (v76 + a17);
      do
      {
        v80 = v76;
        v76 = v75;
        v75 = a14;
        a14 = v79;
        v79 = a16;
        --v78;
      }

      while (v78);
    }

    else
    {
      v80 = (v76 + a17);
    }

    if (v61 == v62)
    {
      v81 = a12[7];
      switch(v81)
      {
        case 1u:
          goto LABEL_67;
        case 2u:
          goto LABEL_66;
        case 3u:
          v75 = a16;
LABEL_66:
          v76 = a16;
LABEL_67:
          v77 = a16;
          goto LABEL_69;
      }
    }

    v77 = v80;
LABEL_69:
    v82 = *a12;
    result = a12[1];
    if (!result)
    {
      v155 = a12[4];
      result = v69;
      v156 = v70;
      v157 = v71;
      goto LABEL_99;
    }

    v83 = v69 > v58 || v70 > v58;
    v84 = v276;
    if (v83)
    {
      v84 = 1;
    }

    if ((v84 & 1) != 0 || v71 > v58)
    {
      return result;
    }

    v85.i64[0] = *(v69 + 1);
    v85.i64[1] = *(v69 + 3);
    v86 = vqtbl1q_s8(v85, v72);
    v87 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v86, 8uLL), xmmword_296B6EE00), vshlq_u8(v86, v73)), xmmword_296B6EE10);
    v88 = vaddq_s8(v87, v74);
    v87.i8[1] = 0;
    v89 = vqtbl1q_s8(v88, xmmword_296B6EE20);
    v90 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v89, xmmword_296B6EE30), v89), vqtbl1q_s8(v89, xmmword_296B6EE40));
    v91 = vdupq_lane_s16(*v87.i8, 0);
    v92 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v90.i8), xmmword_296B6EE50), *v90.i8), v91);
    v93 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v90), xmmword_296B6EE50), v90), v91);
    v94 = vdupq_n_s16(bswap32(*v69) >> 16);
    v95 = vaddq_s16(v93, v94);
    v96 = vaddq_s16(v92, v94);
    v97 = veorq_s8((*&v95 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v95));
    v98 = veorq_s8((*&v96 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v96));
    if (a7)
    {
      v98.i64[0] = (*(a7 + ((v98.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a7 + 2 * v98.u16[2]) << 32) | (*(a7 + 2 * v98.u16[1]) << 16) | *(a7 + 2 * v98.u16[0]);
      v98.i64[1] = (*(a7 + ((v98.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a7 + 2 * v98.u16[6]) << 32) | (*(a7 + 2 * v98.u16[5]) << 16) | *(a7 + 2 * v98.u16[4]);
      v97.i64[0] = (*(a7 + ((v97.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a7 + 2 * v97.u16[2]) << 32) | (*(a7 + 2 * v97.u16[1]) << 16) | *(a7 + 2 * v97.u16[0]);
      v97.i64[1] = (*(a7 + ((v97.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a7 + 2 * v97.u16[6]) << 32) | (*(a7 + 2 * v97.u16[5]) << 16) | *(a7 + 2 * v97.u16[4]);
    }

    v99.i64[0] = *(v70 + 1);
    v99.i64[1] = *(v70 + 3);
    v100 = vqtbl1q_s8(v99, v72);
    v101 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v100, 8uLL), xmmword_296B6EE00), vshlq_u8(v100, v73)), xmmword_296B6EE10);
    v102 = vaddq_s8(v101, v74);
    v101.i8[1] = 0;
    v103 = vqtbl1q_s8(v102, xmmword_296B6EE20);
    v104 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v103, xmmword_296B6EE30), v103), vqtbl1q_s8(v103, xmmword_296B6EE40));
    v105 = vdupq_lane_s16(*v101.i8, 0);
    v106 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v104.i8), xmmword_296B6EE50), *v104.i8), v105);
    v107 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v104), xmmword_296B6EE50), v104), v105);
    v108 = vdupq_n_s16(bswap32(*v70) >> 16);
    v109 = vaddq_s16(v107, v108);
    v110 = vaddq_s16(v106, v108);
    v111 = veorq_s8((*&v109 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v109));
    v112 = veorq_s8((*&v110 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v110));
    if (a8)
    {
      v112.i64[0] = (*(a8 + ((v112.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a8 + 2 * v112.u16[2]) << 32) | (*(a8 + 2 * v112.u16[1]) << 16) | *(a8 + 2 * v112.u16[0]);
      v112.i64[1] = (*(a8 + ((v112.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a8 + 2 * v112.u16[6]) << 32) | (*(a8 + 2 * v112.u16[5]) << 16) | *(a8 + 2 * v112.u16[4]);
      v111.i64[0] = (*(a8 + ((v111.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a8 + 2 * v111.u16[2]) << 32) | (*(a8 + 2 * v111.u16[1]) << 16) | *(a8 + 2 * v111.u16[0]);
      v111.i64[1] = (*(a8 + ((v111.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a8 + 2 * v111.u16[6]) << 32) | (*(a8 + 2 * v111.u16[5]) << 16) | *(a8 + 2 * v111.u16[4]);
    }

    v113.i64[0] = *(v71 + 1);
    v113.i64[1] = *(v71 + 3);
    v114 = vqtbl1q_s8(v113, v72);
    v115 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v114, 8uLL), xmmword_296B6EE00), vshlq_u8(v114, v73)), xmmword_296B6EE10);
    v116 = vaddq_s8(v115, v74);
    v115.i8[1] = 0;
    v117 = vqtbl1q_s8(v116, xmmword_296B6EE20);
    v118 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v117, xmmword_296B6EE30), v117), vqtbl1q_s8(v117, xmmword_296B6EE40));
    v119 = vdupq_lane_s16(*v115.i8, 0);
    v120 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v118.i8), xmmword_296B6EE50), *v118.i8), v119);
    v121 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v118), xmmword_296B6EE50), v118), v119);
    v122 = vdupq_n_s16(bswap32(*v71) >> 16);
    v123 = vaddq_s16(v121, v122);
    v124 = vaddq_s16(v120, v122);
    v125 = vcgezq_s16(v124);
    v126 = *&v124 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL);
    v127 = veorq_s8((*&v123 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v123));
    v128 = veorq_s8(v126, v125);
    if (a10)
    {
      v128.i64[0] = (*(a10 + ((v128.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a10 + 2 * v128.u16[2]) << 32) | (*(a10 + 2 * v128.u16[1]) << 16) | *(a10 + 2 * v128.u16[0]);
      v128.i64[1] = (*(a10 + ((v128.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a10 + 2 * v128.u16[6]) << 32) | (*(a10 + 2 * v128.u16[5]) << 16) | *(a10 + 2 * v128.u16[4]);
      v127.i64[0] = (*(a10 + ((v127.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a10 + 2 * v127.u16[2]) << 32) | (*(a10 + 2 * v127.u16[1]) << 16) | *(a10 + 2 * v127.u16[0]);
      v127.i64[1] = (*(a10 + ((v127.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a10 + 2 * v127.u16[6]) << 32) | (*(a10 + 2 * v127.u16[5]) << 16) | *(a10 + 2 * v127.u16[4]);
    }

    LODWORD(v126) = 0;
    v129 = v127;
    v293.val[1] = vqtbl2q_s8(*v111.i8, xmmword_296B6EF40);
    v130 = v66;
    v293.val[0] = vqtbl2q_s8(*v97.i8, xmmword_296B6EE70);
    v282.val[1] = vqtbl2q_s8(*v111.i8, xmmword_296B6EF50);
    v282.val[0] = vqtbl2q_s8(*v97.i8, xmmword_296B6EE90);
    v284.val[1] = vqtbl2q_s8(*v111.i8, xmmword_296B6EF60);
    v284.val[0] = vqtbl2q_s8(*v97.i8, xmmword_296B6EEA0);
    v287.val[1] = vqtbl2q_s8(*v111.i8, xmmword_296B6EF70);
    v287.val[0] = vqtbl2q_s8(*v97.i8, xmmword_296B6EEB0);
    v131 = vqtbl2q_s8(v293, xmmword_296B6EDD0);
    v132 = vqtbl2q_s8(v282, xmmword_296B6EDD0);
    v133 = vqtbl2q_s8(v284, xmmword_296B6EDD0);
    v134 = vqtbl2q_s8(v287, xmmword_296B6EDD0);
    if (a12[4] == v82)
    {
      v135 = 4 - a12[5];
    }

    else
    {
      v135 = 4;
    }

    v97.i32[0] = a12[1] & 2;
    v136 = vdupq_lane_s32(*&vceqq_s32(v97, v126), 0);
    v137 = v128;
    v288.val[1] = vqtbl2q_s8(*v112.i8, xmmword_296B6EF60);
    v138 = v66;
    v288.val[0] = vqtbl2q_s8(*v98.i8, xmmword_296B6EEA0);
    v139 = vqtbl2q_s8(v288, xmmword_296B6EDD0);
    v288.val[1] = vqtbl2q_s8(*v112.i8, xmmword_296B6EF70);
    v288.val[0] = vqtbl2q_s8(*v98.i8, xmmword_296B6EEB0);
    v140 = vqtbl2q_s8(v288, xmmword_296B6EDD0);
    v141 = vbslq_s8(v136, v140, v139);
    v142 = vbslq_s8(v136, v139, v140);
    v278.val[1] = vqtbl2q_s8(*v112.i8, xmmword_296B6EF40);
    v278.val[0] = vqtbl2q_s8(*v98.i8, xmmword_296B6EE70);
    v278.val[0] = vqtbl2q_s8(v278, xmmword_296B6EDD0);
    v143 = vqtbl2q_s8(*v112.i8, xmmword_296B6EF50);
    v288.val[1] = vqtbl2q_s8(*v98.i8, xmmword_296B6EE90);
    v278.val[1] = vqtbl2q_s8(*(&v288 + 16), xmmword_296B6EDD0);
    v144 = vbslq_s8(v136, v278.val[1], v278.val[0]);
    v145 = vbslq_s8(v136, v278.val[0], v278.val[1]);
    v146 = vbslq_s8(v136, v134, v133);
    v147 = vbslq_s8(v136, v133, v134);
    v148 = vbslq_s8(v136, v132, v131);
    v149 = vbslq_s8(v136, v131, v132);
    if ((result & 2) != 0)
    {
      v135 -= 2;
    }

    if (result)
    {
      v150 = vextq_s8(v144, v145, 8uLL).u64[0];
      v145 = vextq_s8(v145, v144, 8uLL);
      v151 = vextq_s8(v141, v142, 8uLL).u64[0];
      v142 = vextq_s8(v142, v141, 8uLL);
      v152 = vextq_s8(v148, v149, 8uLL).u64[0];
      v149 = vextq_s8(v149, v148, 8uLL);
      v153 = vextq_s8(v146, v147, 8uLL).u64[0];
      --v135;
      v147 = vextq_s8(v147, v146, 8uLL);
      v144.i64[0] = v150;
      v141.i64[0] = v151;
      v148.i64[0] = v152;
      v146.i64[0] = v153;
    }

    v73 = xmmword_296B6EDF0;
    v72 = xmmword_296B6EDE0;
    v74.i64[0] = 0xE0E0E0E0E0E0E0E0;
    v74.i64[1] = 0xE0E0E0E0E0E0E0E0;
    if (v135 <= 1)
    {
      v154 = 0;
    }

    else
    {
      *a14 = v145;
      *v75 = v142;
      v135 -= 2;
      v145.i64[0] = v144.i64[0];
      v142.i64[0] = v141.i64[0];
      *v76 = v149;
      v149.i64[0] = v148.i64[0];
      *v77 = v147;
      v147.i64[0] = v146.i64[0];
      v154 = 16;
    }

    if (v135 >= 1)
    {
      *(a14->i64 + v154) = v145.i64[0];
      *(v75->i64 + v154) = v142.i64[0];
      *(v76->i64 + v154) = v149.i64[0];
      *(v77->i64 + v154) = v147.i64[0];
      v154 |= 8uLL;
    }

    v155 = a12[4];
    if (v155 != v82)
    {
      break;
    }

LABEL_134:
    a14 = (v80 + a17);
    v71 = (v71 + v271);
    v70 = (v70 + v273);
    v69 = (v69 + v275);
    result = v61 + 1;
    v62 = a12[6];
    if (v61++ >= v62)
    {
      return result;
    }
  }

  result = (v69 + 7);
  v156 = v70 + 7;
  v157 = v71 + 7;
  a14 = (a14 + v154);
  v75 = (v75 + v154);
  v76 = (v76 + v154);
  v77 = (v77 + v154);
  ++v82;
LABEL_99:
  v158 = a12[5];
  v159 = v158 != 0;
  if (v155 == 0 && v159 || (v160 = v155 - v159, v82 > v160))
  {
    v212 = a14;
    v213 = v75;
    v214 = v76;
    v215 = v77;
    if (v158)
    {
LABEL_116:
      v216 = result > v58 || v156 > v58;
      v217 = v276;
      if (v216)
      {
        v217 = 1;
      }

      if ((v217 & 1) != 0 || v157 > v58)
      {
        return result;
      }

      v218.i64[0] = *(result + 2);
      v218.i64[1] = *(result + 6);
      v219 = vqtbl1q_s8(v218, v72);
      v220 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v219, 8uLL), xmmword_296B6EE00), vshlq_u8(v219, v73)), xmmword_296B6EE10);
      v221 = vaddq_s8(v220, v74);
      v220.i8[1] = 0;
      v222 = vqtbl1q_s8(v221, xmmword_296B6EE20);
      v223 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v222, xmmword_296B6EE30), v222), vqtbl1q_s8(v222, xmmword_296B6EE40));
      v224 = vdupq_lane_s16(*v220.i8, 0);
      v225 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v223.i8), xmmword_296B6EE50), *v223.i8), v224);
      v226 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v223), xmmword_296B6EE50), v223), v224);
      v227 = vdupq_n_s16(bswap32(*result) >> 16);
      v228 = vaddq_s16(v226, v227);
      v229 = vaddq_s16(v225, v227);
      v230 = veorq_s8((*&v228 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v228));
      v231 = veorq_s8((*&v229 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v229));
      if (a7)
      {
        v231.i64[0] = (*(a7 + ((v231.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a7 + 2 * v231.u16[2]) << 32) | (*(a7 + 2 * v231.u16[1]) << 16) | *(a7 + 2 * v231.u16[0]);
        v231.i64[1] = (*(a7 + ((v231.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a7 + 2 * v231.u16[6]) << 32) | (*(a7 + 2 * v231.u16[5]) << 16) | *(a7 + 2 * v231.u16[4]);
        v230.i64[0] = (*(a7 + ((v230.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a7 + 2 * v230.u16[2]) << 32) | (*(a7 + 2 * v230.u16[1]) << 16) | *(a7 + 2 * v230.u16[0]);
        v230.i64[1] = (*(a7 + ((v230.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a7 + 2 * v230.u16[6]) << 32) | (*(a7 + 2 * v230.u16[5]) << 16) | *(a7 + 2 * v230.u16[4]);
      }

      v232.i64[0] = *(v156 + 1);
      v232.i64[1] = *(v156 + 3);
      v233 = vqtbl1q_s8(v232, v72);
      v234 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v233, 8uLL), xmmword_296B6EE00), vshlq_u8(v233, v73)), xmmword_296B6EE10);
      v235 = vaddq_s8(v234, v74);
      v234.i8[1] = 0;
      v236 = vqtbl1q_s8(v235, xmmword_296B6EE20);
      v237 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v236, xmmword_296B6EE30), v236), vqtbl1q_s8(v236, xmmword_296B6EE40));
      v238 = vdupq_lane_s16(*v234.i8, 0);
      v239 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v237.i8), xmmword_296B6EE50), *v237.i8), v238);
      v240 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v237), xmmword_296B6EE50), v237), v238);
      v241 = vdupq_n_s16(bswap32(*v156) >> 16);
      v242 = vaddq_s16(v240, v241);
      v243 = vaddq_s16(v239, v241);
      v244 = veorq_s8((*&v242 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v242));
      v245 = veorq_s8((*&v243 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v243));
      if (a8)
      {
        v245.i64[0] = (*(a8 + ((v245.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a8 + 2 * v245.u16[2]) << 32) | (*(a8 + 2 * v245.u16[1]) << 16) | *(a8 + 2 * v245.u16[0]);
        v245.i64[1] = (*(a8 + ((v245.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a8 + 2 * v245.u16[6]) << 32) | (*(a8 + 2 * v245.u16[5]) << 16) | *(a8 + 2 * v245.u16[4]);
        v244.i64[0] = (*(a8 + ((v244.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a8 + 2 * v244.u16[2]) << 32) | (*(a8 + 2 * v244.u16[1]) << 16) | *(a8 + 2 * v244.u16[0]);
        v244.i64[1] = (*(a8 + ((v244.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a8 + 2 * v244.u16[6]) << 32) | (*(a8 + 2 * v244.u16[5]) << 16) | *(a8 + 2 * v244.u16[4]);
      }

      v246.i64[0] = *(v157 + 1);
      v246.i64[1] = *(v157 + 3);
      v247 = vqtbl1q_s8(v246, v72);
      v248 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v247, 8uLL), xmmword_296B6EE00), vshlq_u8(v247, v73)), xmmword_296B6EE10);
      v249 = vaddq_s8(v248, v74);
      v248.i8[1] = 0;
      v250 = vqtbl1q_s8(v249, xmmword_296B6EE20);
      v251 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v250, xmmword_296B6EE30), v250), vqtbl1q_s8(v250, xmmword_296B6EE40));
      v252 = vdupq_lane_s16(*v248.i8, 0);
      v253 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v251.i8), xmmword_296B6EE50), *v251.i8), v252);
      v254 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v251), xmmword_296B6EE50), v251), v252);
      v255 = vdupq_n_s16(bswap32(*v157) >> 16);
      v256 = vaddq_s16(v254, v255);
      v257 = vaddq_s16(v253, v255);
      v258 = veorq_s8((*&v256 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v256));
      v259 = veorq_s8((*&v257 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v257));
      if (a10)
      {
        v259.i64[0] = (*(a10 + ((v259.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a10 + 2 * v259.u16[2]) << 32) | (*(a10 + 2 * v259.u16[1]) << 16) | *(a10 + 2 * v259.u16[0]);
        v259.i64[1] = (*(a10 + ((v259.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a10 + 2 * v259.u16[6]) << 32) | (*(a10 + 2 * v259.u16[5]) << 16) | *(a10 + 2 * v259.u16[4]);
        v258.i64[0] = (*(a10 + ((v258.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a10 + 2 * v258.u16[2]) << 32) | (*(a10 + 2 * v258.u16[1]) << 16) | *(a10 + 2 * v258.u16[0]);
        v258.i64[1] = (*(a10 + ((v258.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a10 + 2 * v258.u16[6]) << 32) | (*(a10 + 2 * v258.u16[5]) << 16) | *(a10 + 2 * v258.u16[4]);
      }

      v260 = v259;
      v261 = v66;
      v291.val[1] = vqtbl2q_s8(*v245.i8, xmmword_296B6EF60);
      v291.val[0] = vqtbl2q_s8(*v231.i8, xmmword_296B6EEA0);
      v262 = vqtbl2q_s8(v291, xmmword_296B6EDD0);
      v263 = vqtbl2q_s8(*v245.i8, xmmword_296B6EF40);
      v291.val[1] = vqtbl2q_s8(*v231.i8, xmmword_296B6EE70);
      v264 = vqtbl2q_s8(*(&v291 + 16), xmmword_296B6EDD0);
      v265 = v258;
      v266 = v66;
      v281.val[1] = vqtbl2q_s8(*v244.i8, xmmword_296B6EF60);
      v281.val[0] = vqtbl2q_s8(*v230.i8, xmmword_296B6EEA0);
      v267 = vqtbl2q_s8(v281, xmmword_296B6EDD0);
      v279.val[1] = vqtbl2q_s8(*v244.i8, xmmword_296B6EF40);
      v279.val[0] = vqtbl2q_s8(*v230.i8, xmmword_296B6EE70);
      v268 = vqtbl2q_s8(v279, xmmword_296B6EDD0);
      if (((4 - v158) & 2) != 0)
      {
        *v212 = v264;
        *v213 = v262;
        *v214 = v268;
        *v215 = v267;
        if ((4 - v158))
        {
          v292.val[1] = vqtbl2q_s8(*v245.i8, xmmword_296B6EF70);
          v292.val[0] = vqtbl2q_s8(*v231.i8, xmmword_296B6EEB0);
          v289.val[1] = vqtbl2q_s8(*v245.i8, xmmword_296B6EF50);
          v289.val[0] = vqtbl2q_s8(*v231.i8, xmmword_296B6EE90);
          v269 = vqtbl2q_s8(v289, xmmword_296B6EDD0).u64[0];
          v289.val[1] = vqtbl2q_s8(*v244.i8, xmmword_296B6EF70);
          v289.val[0] = vqtbl2q_s8(*v230.i8, xmmword_296B6EEB0);
          v286.val[1] = vqtbl2q_s8(*v244.i8, xmmword_296B6EF50);
          v286.val[0] = vqtbl2q_s8(*v230.i8, xmmword_296B6EE90);
          v212[1].i64[0] = v269;
          v213[1].i64[0] = vqtbl2q_s8(v292, xmmword_296B6EDD0).u64[0];
          v214[1].i64[0] = vqtbl2q_s8(v286, xmmword_296B6EDD0).u64[0];
          v215[1].i64[0] = vqtbl2q_s8(v289, xmmword_296B6EDD0).u64[0];
        }
      }

      else
      {
        v212->i64[0] = v264.i64[0];
        v213->i64[0] = v262.i64[0];
        v214->i64[0] = v268.i64[0];
        v215->i64[0] = v267.i64[0];
      }
    }

    goto LABEL_134;
  }

  if (!v276)
  {
    v161 = v160 - v82 + 1;
    while (result <= v58 && v156 <= v58 && v157 <= v58)
    {
      v162.i64[0] = *(result + 2);
      v162.i64[1] = *(result + 6);
      v163 = vqtbl1q_s8(v162, v72);
      v164 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v163, 8uLL), xmmword_296B6EE00), vshlq_u8(v163, v73)), xmmword_296B6EE10);
      v165 = vaddq_s8(v164, v74);
      v164.i8[1] = 0;
      v166 = vqtbl1q_s8(v165, xmmword_296B6EE20);
      v167 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v166, xmmword_296B6EE30), v166), vqtbl1q_s8(v166, xmmword_296B6EE40));
      v168 = vdupq_lane_s16(*v164.i8, 0);
      v169 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v167.i8), xmmword_296B6EE50), *v167.i8), v168);
      v170 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v167), xmmword_296B6EE50), v167), v168);
      v171 = vdupq_n_s16(bswap32(*result) >> 16);
      v172 = vaddq_s16(v170, v171);
      v173 = vaddq_s16(v169, v171);
      v174 = veorq_s8((*&v172 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v172));
      v175 = veorq_s8((*&v173 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v173));
      if (a7)
      {
        v175.i64[0] = (*(a7 + ((v175.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a7 + 2 * v175.u16[2]) << 32) | (*(a7 + 2 * v175.u16[1]) << 16) | *(a7 + 2 * v175.u16[0]);
        v175.i64[1] = (*(a7 + ((v175.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a7 + 2 * v175.u16[6]) << 32) | (*(a7 + 2 * v175.u16[5]) << 16) | *(a7 + 2 * v175.u16[4]);
        v174.i64[0] = (*(a7 + ((v174.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a7 + 2 * v174.u16[2]) << 32) | (*(a7 + 2 * v174.u16[1]) << 16) | *(a7 + 2 * v174.u16[0]);
        v174.i64[1] = (*(a7 + ((v174.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a7 + 2 * v174.u16[6]) << 32) | (*(a7 + 2 * v174.u16[5]) << 16) | *(a7 + 2 * v174.u16[4]);
      }

      v176.i64[0] = *(v156 + 1);
      v176.i64[1] = *(v156 + 3);
      v177 = vqtbl1q_s8(v176, v72);
      v178 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v177, 8uLL), xmmword_296B6EE00), vshlq_u8(v177, v73)), xmmword_296B6EE10);
      v179 = vaddq_s8(v178, v74);
      v178.i8[1] = 0;
      v180 = vqtbl1q_s8(v179, xmmword_296B6EE20);
      v181 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v180, xmmword_296B6EE30), v180), vqtbl1q_s8(v180, xmmword_296B6EE40));
      v182 = vdupq_lane_s16(*v178.i8, 0);
      v183 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v181.i8), xmmword_296B6EE50), *v181.i8), v182);
      v184 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v181), xmmword_296B6EE50), v181), v182);
      v185 = vdupq_n_s16(bswap32(*v156) >> 16);
      v186 = vaddq_s16(v184, v185);
      v187 = vaddq_s16(v183, v185);
      v188 = veorq_s8((*&v186 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v186));
      v189 = veorq_s8((*&v187 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v187));
      if (a8)
      {
        v189.i64[0] = (*(a8 + ((v189.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a8 + 2 * v189.u16[2]) << 32) | (*(a8 + 2 * v189.u16[1]) << 16) | *(a8 + 2 * v189.u16[0]);
        v189.i64[1] = (*(a8 + ((v189.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a8 + 2 * v189.u16[6]) << 32) | (*(a8 + 2 * v189.u16[5]) << 16) | *(a8 + 2 * v189.u16[4]);
        v188.i64[0] = (*(a8 + ((v188.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a8 + 2 * v188.u16[2]) << 32) | (*(a8 + 2 * v188.u16[1]) << 16) | *(a8 + 2 * v188.u16[0]);
        v188.i64[1] = (*(a8 + ((v188.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a8 + 2 * v188.u16[6]) << 32) | (*(a8 + 2 * v188.u16[5]) << 16) | *(a8 + 2 * v188.u16[4]);
      }

      v190.i64[0] = *(v157 + 1);
      v190.i64[1] = *(v157 + 3);
      v191 = vqtbl1q_s8(v190, v72);
      v192 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v191, 8uLL), xmmword_296B6EE00), vshlq_u8(v191, v73)), xmmword_296B6EE10);
      v193 = vaddq_s8(v192, v74);
      v192.i8[1] = 0;
      v194 = vqtbl1q_s8(v193, xmmword_296B6EE20);
      v195 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v194, xmmword_296B6EE30), v194), vqtbl1q_s8(v194, xmmword_296B6EE40));
      v196 = vdupq_lane_s16(*v192.i8, 0);
      v197 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v195.i8), xmmword_296B6EE50), *v195.i8), v196);
      v198 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v195), xmmword_296B6EE50), v195), v196);
      v199 = vdupq_n_s16(bswap32(*v157) >> 16);
      v200 = vaddq_s16(v198, v199);
      v201 = vaddq_s16(v197, v199);
      v202 = veorq_s8((*&v200 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v200));
      v203 = veorq_s8((*&v201 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v201));
      if (a10)
      {
        v203.i64[0] = (*(a10 + ((v203.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a10 + 2 * v203.u16[2]) << 32) | (*(a10 + 2 * v203.u16[1]) << 16) | *(a10 + 2 * v203.u16[0]);
        v203.i64[1] = (*(a10 + ((v203.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a10 + 2 * v203.u16[6]) << 32) | (*(a10 + 2 * v203.u16[5]) << 16) | *(a10 + 2 * v203.u16[4]);
        v202.i64[0] = (*(a10 + ((v202.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a10 + 2 * v202.u16[2]) << 32) | (*(a10 + 2 * v202.u16[1]) << 16) | *(a10 + 2 * v202.u16[0]);
        v202.i64[1] = (*(a10 + ((v202.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a10 + 2 * v202.u16[6]) << 32) | (*(a10 + 2 * v202.u16[5]) << 16) | *(a10 + 2 * v202.u16[4]);
      }

      result += 14;
      v156 += 7;
      v204 = v202;
      v290.val[1] = vqtbl2q_s8(*v188.i8, xmmword_296B6EF60);
      v290.val[0] = vqtbl2q_s8(*(&v66 - 1), xmmword_296B6EEA0);
      v205 = vqtbl2q_s8(v290, xmmword_296B6EDD0);
      v206 = vqtbl2q_s8(*v188.i8, xmmword_296B6EF70);
      v290.val[1] = vqtbl2q_s8(*(&v66 - 1), xmmword_296B6EEB0);
      v280.val[1] = vqtbl2q_s8(*v188.i8, xmmword_296B6EF40);
      v280.val[0] = vqtbl2q_s8(*(&v66 - 1), xmmword_296B6EE70);
      v285.val[1] = vqtbl2q_s8(*v188.i8, xmmword_296B6EF50);
      v285.val[0] = vqtbl2q_s8(*(&v66 - 1), xmmword_296B6EE90);
      v285.val[0] = vqtbl2q_s8(v285, xmmword_296B6EDD0);
      v207 = v203;
      v283.val[1] = vqtbl2q_s8(*v189.i8, xmmword_296B6EF60);
      v208 = v66;
      v283.val[0] = vqtbl2q_s8(*v175.i8, xmmword_296B6EEA0);
      v209 = vqtbl2q_s8(v283, xmmword_296B6EDD0);
      v290.val[0] = vqtbl2q_s8(*v189.i8, xmmword_296B6EF70);
      v283.val[1] = vqtbl2q_s8(*v189.i8, xmmword_296B6EF40);
      v283.val[0] = vqtbl2q_s8(*v175.i8, xmmword_296B6EE70);
      v210 = vqtbl2q_s8(*v189.i8, xmmword_296B6EF50);
      v285.val[1] = vqtbl2q_s8(*v175.i8, xmmword_296B6EE90);
      *a14 = vqtbl2q_s8(v283, xmmword_296B6EDD0);
      a14[1] = vqtbl2q_s8(*(&v285 + 16), xmmword_296B6EDD0);
      v211 = vqtbl2q_s8(*v175.i8, xmmword_296B6EEB0);
      v157 += 7;
      v212 = a14 + 2;
      *v75 = v209;
      v75[1] = vqtbl2q_s8(v290, xmmword_296B6EDD0);
      v213 = v75 + 2;
      v214 = v76 + 2;
      *v76 = vqtbl2q_s8(v280, xmmword_296B6EDD0);
      v76[1] = v285.val[0];
      v215 = v77 + 2;
      *v77 = v205;
      v77[1] = vqtbl2q_s8(*(&v290 + 16), xmmword_296B6EDD0);
      v77 += 2;
      v76 += 2;
      v75 += 2;
      a14 += 2;
      if (!--v161)
      {
        v158 = a12[5];
        if (v158)
        {
          goto LABEL_116;
        }

        goto LABEL_134;
      }
    }
  }

  return result;
}

uint64_t ExtractInterleaved4_B44<unsigned int,(StreamType)1,(StreamType)1,(StreamType)0,(StreamType)1>(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int32x2_t *a11, unsigned int *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (!result)
  {
    return result;
  }

  v21 = result;
  if (*&a11[1] >= a2)
  {
    v22 = a2;
  }

  else
  {
    v22 = a11[1];
  }

  v23 = a11[3];
  v24 = a11[7].u32[1];
  v25 = vmin_u32(vmls_s32(*(*(*(*(a3 + 8) + 40) + 8 * v24) + 16), *(*(a3 + 8) + 48), v23), *(*(a3 + 8) + 48)).u32[0];
  v26 = vmin_u32(vmls_s32(*(*(*(*(a4 + 8) + 40) + 8 * v24) + 16), *(*(a4 + 8) + 48), v23), *(*(a4 + 8) + 48)).u32[0];
  result = AXRStreamB44<unsigned int,(StreamType)0>::AXRStreamB44(v263, a5);
  *v27.i8 = a11[3];
  v28 = a11[7].u32[1];
  v29 = *(a6 + 8);
  v30 = *(*&v29[5] + 8 * v28);
  v31 = v30[2];
  v32 = vmin_u32(vmls_s32(v31, v29[6], *v27.i8), v29[6]).u32[0];
  v33 = 12 * v25 + 16;
  if (v33 <= 12 * v26 + 16)
  {
    v33 = 12 * v26 + 16;
  }

  v34 = 12 * v32 + 16;
  if (v33 > v34)
  {
    v34 = v33;
  }

  v35 = *&v22 - v34;
  if (*&v22 < v34)
  {
    return result;
  }

  v36 = *(a13 + 60);
  v37 = *(a3 + 8);
  if (v37)
  {
    v38 = (v27.i32[1] * v36);
    v39 = *(*(v37 + 40) + 8 * v28);
    if (*(v39 + 12) - 1 < v38)
    {
      v38 = *(v39 + 12) - 1;
    }

    if (*(v37 + 104) == 1)
    {
      v40 = (*(v39 + 8 * v27.u32[0] + 24) + 8 * v38);
    }

    else
    {
      v42 = (v38 * *(v37 + 108)) >> *(v37 + 112);
      if (v42 >= *(v39 + 20) - 1)
      {
        LODWORD(v42) = *(v39 + 20) - 1;
      }

      v40 = (*(v39 + 8 * v27.u32[0] + 24) + 8 * v42);
    }

    v41 = *v40;
  }

  else
  {
    v41 = 0;
  }

  v43 = *(a4 + 8);
  if (v43)
  {
    v44 = (v27.i32[1] * v36);
    v45 = *(*(v43 + 40) + 8 * v28);
    if (*(v45 + 12) - 1 < v44)
    {
      v44 = *(v45 + 12) - 1;
    }

    if (*(v43 + 104) == 1)
    {
      v46 = (*(v45 + 8 * v27.u32[0] + 24) + 8 * v44);
    }

    else
    {
      v48 = (v44 * *(v43 + 108)) >> *(v43 + 112);
      if (v48 >= *(v45 + 20) - 1)
      {
        LODWORD(v48) = *(v45 + 20) - 1;
      }

      v46 = (*(v45 + 8 * v27.u32[0] + 24) + 8 * v48);
    }

    v47 = *v46;
  }

  else
  {
    v47 = 0;
  }

  v49 = a5[1];
  v50 = (v27.i32[1] * v36);
  if (v49)
  {
    v51 = *(*(v49 + 40) + 8 * v28);
    v52 = *(v51 + 12) - 1;
    if (v52 >= v50)
    {
      v52 = (v27.i32[1] * v36);
    }

    if (*(v49 + 104) == 1)
    {
      v53 = (*(v51 + 8 * v27.u32[0] + 24) + 8 * v52);
    }

    else
    {
      v55 = (v52 * *(v49 + 108)) >> *(v49 + 112);
      if (v55 >= *(v51 + 20) - 1)
      {
        LODWORD(v55) = *(v51 + 20) - 1;
      }

      v53 = (*(v51 + 8 * v27.u32[0] + 24) + 8 * v55);
    }

    v54 = *v53;
  }

  else
  {
    v54 = 0;
  }

  v56 = v35 + v21;
  if (v30[1].u32[1] - 1 < v50)
  {
    v50 = v30[1].u32[1] - 1;
  }

  if (v29[13].i32[0] == 1)
  {
    v57 = (*&v30[v27.u32[0] + 3] + 8 * v50);
  }

  else
  {
    v58 = (v50 * v29[13].u32[1]) >> v29[14].i32[0];
    if (v58 >= v31.i32[1] - 1)
    {
      LODWORD(v58) = v31.i32[1] - 1;
    }

    v57 = (*&v30[v27.u32[0] + 3] + 8 * v58);
  }

  v59 = a12[2];
  v60 = v54 + v21 > v56;
  v61 = a12[6];
  if (v59 > v61)
  {
    return result;
  }

  v63 = 4 * v25;
  v64 = 4 * v26;
  v65 = 4 * v32;
  result = 16 * v25;
  v66 = 16 * v32;
  v67 = v263;
  v68 = vld1q_dup_f32(v67);
  v69 = *a12;
  v70 = v41 + v21 + 16 * v69 + 16 * v25 * v59;
  v261 = 16 * v25;
  v262 = 16 * v26;
  v71 = (v47 + v21 + 16 * v69 + 16 * v26 * v59);
  v72 = (v21 + 16 * v69 + *v57 + v66 * v59);
  while (1)
  {
    v73 = a14 + a17;
    v74 = a14 + a17 + a17;
    v75 = v74 + a17;
    if (!a16)
    {
      v78 = v74 + a17;
      goto LABEL_65;
    }

    if (v59 == a12[2])
    {
      v76 = a12[3] + 1;
      v77 = a14;
      a14 += a17;
      v73 = v74;
      v74 += a17;
      do
      {
        v78 = v74;
        v74 = v73;
        v73 = a14;
        a14 = v77;
        v77 = a16;
        --v76;
      }

      while (v76);
    }

    else
    {
      v78 = v74 + a17;
    }

    if (v59 == v61)
    {
      v79 = a12[7];
      switch(v79)
      {
        case 1u:
          goto LABEL_63;
        case 2u:
          goto LABEL_62;
        case 3u:
          v73 = a16;
LABEL_62:
          v74 = a16;
LABEL_63:
          v75 = a16;
          goto LABEL_65;
      }
    }

    v75 = v78;
LABEL_65:
    v81 = *a12;
    v80 = a12[1];
    if (!v80)
    {
      v151 = a12[4];
      v152 = v70;
      v153 = v71;
      v154 = v72;
      goto LABEL_86;
    }

    v83 = v70 > v56 || v71 > v56 || v60;
    if ((v83 & 1) != 0 || v72 > v56)
    {
      return result;
    }

    v27.i32[0] = 0;
    v84 = (v70 + v63 + v63);
    v85 = *(v84 + v63);
    v86 = (v71 + v64 + v64);
    v87 = *(v86 + v64);
    v88 = (v72 + v65 + v65);
    v89 = *(v88 + v65);
    v90 = vuzp2q_s32(v85, v68);
    v91 = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v90, v85)), vuzp2q_s32(v87, v89));
    v92 = vuzp2q_s32(*v84, v68);
    v93 = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v92, *v84)), vuzp2q_s32(*v86, *v88));
    v94 = vuzp1q_s32(v87, v89);
    v95 = vextq_s8(v87, v94, 0xCuLL);
    v96 = *v70;
    v97 = *(v70 + v63);
    v98 = *v71;
    v99 = *(v71 + v64);
    v100 = *v72;
    v101 = *(v72 + v65);
    v87.i32[3] = HIDWORD(*(v88->i64 + v65));
    v102 = vrev64q_s32(v90);
    v103 = vuzp1q_s32(*v86, *v88);
    v104 = *v86;
    v104.i32[3] = HIDWORD(v88->i64[0]);
    v105 = vtrn2q_s32(v102, v87);
    v106 = vtrn2q_s32(vrev64q_s32(v92), v104);
    v107 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v85, v68)), v95);
    v108 = v68;
    v108.i32[0] = *(&v84->i64[1] + v63);
    v109 = vtrn2q_s32(vrev64q_s32(v108), v94);
    v110 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(*v84, v68)), vextq_s8(*v86, v103, 0xCuLL));
    v111 = v68;
    v111.i32[0] = v84->i64[1];
    v112 = vtrn2q_s32(vrev64q_s32(v111), v103);
    v113 = 4 - a12[5];
    if (a12[4] != v81)
    {
      v113 = 4;
    }

    v103.i32[0] = a12[1] & 2;
    v114 = v113 - 2;
    v115 = vdupq_lane_s32(*&vceqq_s32(v103, v27), 0);
    v116 = vbslq_s8(v115, v110, v112);
    v117 = vbslq_s8(v115, v107, v109);
    v118 = vuzp1q_s32(v99, v101);
    v119 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v97, v68)), vextq_s8(v99, v118, 0xCuLL));
    v120 = v68;
    v120.i32[0] = *(v70 + v63 + 8);
    v121 = vtrn2q_s32(vrev64q_s32(v120), v118);
    v122 = vuzp2q_s32(v98, v100);
    v123 = vuzp1q_s32(v98, v100);
    v124 = vextq_s8(v98, v123, 0xCuLL);
    v98.i32[3] = HIDWORD(v72->i64[0]);
    v125 = vbslq_s8(v115, v119, v121);
    v126 = vuzp2q_s32(v96, v68);
    v127 = vtrn2q_s32(vrev64q_s32(v126), v98);
    v128 = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v126, v96)), v122);
    v129 = vbslq_s8(v115, v127, v128);
    v130 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v96, v68)), v124);
    v131 = v68;
    v131.i32[0] = *(v70 + 8);
    v132 = vtrn2q_s32(vrev64q_s32(v131), v123);
    v133 = vbslq_s8(v115, v130, v132);
    v134 = vbslq_s8(v115, v106, v93);
    v135 = vbslq_s8(v115, v105, v91);
    v136 = vuzp2q_s32(v97, v68);
    v137 = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v136, v97)), vuzp2q_s32(v99, v101));
    v99.i32[3] = HIDWORD(*(v72->i64 + v65));
    v138 = vtrn2q_s32(vrev64q_s32(v136), v99);
    if ((v80 & 2) == 0)
    {
      v114 = v113;
    }

    v139 = v80 & 1;
    v140 = v114 - v139;
    v99.i32[0] = v139;
    v141 = vdupq_lane_s32(*&vmvnq_s8(vceqq_s32(v99, v27)), 0);
    v142 = vbslq_s8(v115, v138, v137);
    v143 = vbslq_s8(v141, v129, v133);
    v144 = vbslq_s8(v141, v142, v125);
    v27 = vbslq_s8(v141, v135, v117);
    v145 = vbslq_s8(v141, v134, v116);
    if (v114 - v139 <= 1)
    {
      v150 = 0;
    }

    else
    {
      v146 = vbslq_s8(v115, v112, v110);
      v147 = vbslq_s8(v115, v109, v107);
      v148 = vbslq_s8(v115, v121, v119);
      v149 = vbslq_s8(v115, v132, v130);
      *a14 = v143;
      *(a14 + 16) = vbslq_s8(v141, v149, v129);
      *v73 = v144;
      *(v73 + 16) = vbslq_s8(v141, v148, v142);
      *v74 = v145;
      *(v74 + 16) = vbslq_s8(v141, v146, v134);
      v140 -= 2;
      v143 = vbslq_s8(v141, vbslq_s8(v115, v128, v127), v149);
      *v75 = v27;
      *(v75 + 16) = vbslq_s8(v141, v147, v135);
      v144 = vbslq_s8(v141, vbslq_s8(v115, v137, v138), v148);
      v145 = vbslq_s8(v141, vbslq_s8(v115, v93, v106), v146);
      v27 = vbslq_s8(v141, vbslq_s8(v115, v91, v105), v147);
      v150 = 32;
    }

    if (v140 >= 1)
    {
      *(v150 + a14) = v143;
      *(v150 + v73) = v144;
      *(v150 + v74) = v145;
      *(v150 + v75) = v27;
      v150 |= 0x10uLL;
    }

    v151 = a12[4];
    if (v151 != v81)
    {
      break;
    }

LABEL_145:
    a14 = v78 + a17;
    v72 = (v72 + v66);
    v71 = (v71 + v262);
    v70 += result;
    v61 = a12[6];
    if (v59++ >= v61)
    {
      return result;
    }
  }

  v152 = (v70 + 16);
  v153 = v71 + 1;
  v154 = v72 + 1;
  a14 += v150;
  v73 += v150;
  v74 += v150;
  v75 += v150;
  ++v81;
LABEL_86:
  v155 = a12[5];
  v156 = v155 != 0;
  if (v151 == 0 && v156 || (v157 = v151 - v156, v81 > v157))
  {
    v202 = a14;
    v203 = v73;
    v204 = v74;
    v205 = v75;
    if (v155)
    {
LABEL_97:
      if (v59 == a12[6])
      {
        v206 = 4 - a12[7];
      }

      else
      {
        v206 = 4;
      }

      v208 = v152 > v56 || v153 > v56 || v60;
      if ((v208 & 1) != 0 || v154 > v56)
      {
        return result;
      }

      if (v206 < 2)
      {
        v210 = 0;
        v209 = v152;
        v211 = v152;
      }

      else
      {
        v209 = (v152 + v63);
        if (v206 == 2)
        {
          v210 = 0;
          v211 = (v152 + v63);
        }

        else
        {
          v211 = (v152 + v63);
          v209 = (v209 + v63);
          if (v206 <= 3)
          {
            v210 = 0;
          }

          else
          {
            v210 = v63;
          }
        }
      }

      v212 = (v209 + v210);
      v213 = 0uLL;
      v214 = 0uLL;
      v27 = 0uLL;
      v215 = 0uLL;
      if ((4 - v155))
      {
        v215.i32[0] = *(v152 + 3 - v155);
        v213.i32[0] = *(v211 + 3 - v155);
        v214.i32[0] = *(v209 + 3 - v155);
        result = v261;
        v27.i32[0] = *(v212 + 3 - v155);
      }

      if (((4 - v155) & 2) != 0)
      {
        v216.i64[0] = *v152;
        v216.i64[1] = v215.i64[0];
        v217.i64[0] = *v211;
        v217.i64[1] = v213.i64[0];
        v218.i64[0] = *v209;
        v218.i64[1] = v214.i64[0];
        v219.i64[0] = *v212;
        v219.i64[1] = v27.i64[0];
        v213 = v217;
        v214 = v218;
        v27 = v219;
        v215 = v216;
      }

      if (v206 < 2)
      {
        v221 = 0;
        v220 = v153;
        v222 = v153;
      }

      else
      {
        v220 = (v153->i64 + v64);
        if (v206 == 2)
        {
          v221 = 0;
          v222 = (v153->i64 + v64);
        }

        else
        {
          v222 = (v153->i64 + v64);
          v220 = (v220 + v64);
          if (v206 <= 3)
          {
            v221 = 0;
          }

          else
          {
            v221 = v64;
          }
        }
      }

      v223 = (v220 + v221);
      v224 = 0uLL;
      v225 = 0uLL;
      v226 = 0uLL;
      v227 = 0uLL;
      if ((4 - v155))
      {
        v227.i32[0] = v153->i32[3 - v155];
        v224.i32[0] = *(v222 + 3 - v155);
        v225.i32[0] = *(v220 + 3 - v155);
        result = v261;
        v226.i32[0] = *(v223 + 3 - v155);
      }

      if (((4 - v155) & 2) != 0)
      {
        v228.i64[0] = v153->i64[0];
        v228.i64[1] = v227.i64[0];
        v229.i64[0] = *v222;
        v229.i64[1] = v224.i64[0];
        v230.i64[0] = *v220;
        v230.i64[1] = v225.i64[0];
        v231.i64[0] = *v223;
        v231.i64[1] = v226.i64[0];
        v224 = v229;
        v225 = v230;
        v226 = v231;
        v227 = v228;
      }

      if (v206 < 2)
      {
        v233 = 0;
        v232 = v154;
        v234 = v154;
      }

      else
      {
        v232 = (v154->i64 + v65);
        if (v206 == 2)
        {
          v233 = 0;
          v234 = (v154->i64 + v65);
        }

        else
        {
          v234 = (v154->i64 + v65);
          v232 = (v232 + v65);
          if (v206 <= 3)
          {
            v233 = 0;
          }

          else
          {
            v233 = v65;
          }
        }
      }

      v235 = (v232 + v233);
      v236 = 0uLL;
      v237 = 0uLL;
      v238 = 0uLL;
      v239 = 0uLL;
      if ((4 - v155))
      {
        v239.i32[0] = v154->i32[3 - v155];
        v236.i32[0] = *(v234 + 3 - v155);
        v237.i32[0] = *(v232 + 3 - v155);
        result = v261;
        v238.i32[0] = *(v235 + 3 - v155);
      }

      if (((4 - v155) & 2) != 0)
      {
        v240.i64[0] = v154->i64[0];
        v240.i64[1] = v239.i64[0];
        v241.i64[0] = *v234;
        v241.i64[1] = v236.i64[0];
        v242.i64[0] = *v232;
        v242.i64[1] = v237.i64[0];
        v243.i64[0] = *v235;
        v243.i64[1] = v238.i64[0];
        v236 = v241;
        v237 = v242;
        v238 = v243;
        v239 = v240;
      }

      v244 = vuzp1q_s32(v227, v239);
      v245 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v215, v68)), vextq_s8(v227, v244, 0xCuLL));
      v246 = vuzp1q_s32(v224, v236);
      v247 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v213, v68)), vextq_s8(v224, v246, 0xCuLL));
      v248 = vuzp1q_s32(v225, v237);
      v249 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v214, v68)), vextq_s8(v225, v248, 0xCuLL));
      v250 = vuzp1q_s32(v226, v238);
      v251 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v27, v68)), vextq_s8(v226, v250, 0xCuLL));
      if (((4 - v155) & 2) != 0)
      {
        v227.i32[3] = v239.i32[1];
        v224.i32[3] = v236.i32[1];
        v225.i32[3] = v237.i32[1];
        v226.i32[3] = v238.i32[1];
        *v202 = v245;
        v202[1] = vtrn2q_s32(vrev64q_s32(vuzp2q_s32(v215, v68)), v227);
        *v203 = v247;
        v203[1] = vtrn2q_s32(vrev64q_s32(vuzp2q_s32(v213, v68)), v224);
        *v204 = v249;
        v204[1] = vtrn2q_s32(vrev64q_s32(vuzp2q_s32(v214, v68)), v225);
        *v205 = v251;
        v205[1] = vtrn2q_s32(vrev64q_s32(vuzp2q_s32(v27, v68)), v226);
        if ((4 - v155))
        {
          v252 = v68;
          v252.i32[0] = v215.i32[2];
          v253 = vtrn2q_s32(vrev64q_s32(v252), v244);
          v254 = v68;
          v254.i32[0] = v213.i32[2];
          v255 = vrev64q_s32(v254);
          v256 = v68;
          v256.i32[0] = v214.i32[2];
          v257 = vtrn2q_s32(v255, v246);
          v258 = vtrn2q_s32(vrev64q_s32(v256), v248);
          v259 = v68;
          v259.i32[0] = v27.i32[2];
          v202[2] = v253;
          v203[2] = v257;
          v27 = vtrn2q_s32(vrev64q_s32(v259), v250);
          v204[2] = v258;
          v205[2] = v27;
        }
      }

      else
      {
        *v202 = v245;
        *v203 = v247;
        *v204 = v249;
        *v205 = v251;
      }
    }

    goto LABEL_145;
  }

  if (!v60)
  {
    v158 = v157 - v81 + 1;
    while (v152 <= v56 && v153 <= v56 && v154 <= v56)
    {
      v159 = (v153 + v64 + v64);
      v160 = *(v159 + v64);
      v161 = (v154 + v65 + v65);
      v162 = *(v161 + v65);
      v163 = *v159;
      v164 = *v161;
      v165 = (v152 + v63 + v63);
      v166 = *(v165 + v63);
      v167 = vuzp2q_s32(v166, v68);
      v168 = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v167, v166)), vuzp2q_s32(v160, v162));
      v169 = *v165;
      v170 = vuzp2q_s32(*v165, v68);
      v171 = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v170, *v165)), vuzp2q_s32(*v159, v164));
      v172 = *(v153 + v64);
      v173 = *(v154 + v65);
      v174 = *(v152 + v63);
      v175 = vuzp2q_s32(v174, v68);
      v176 = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v175, v174)), vuzp2q_s32(v172, v173));
      v177 = vuzp1q_s32(v160, v162);
      v178 = *v152;
      v152 += 2;
      v179 = v178;
      v180 = *v153++;
      v181 = v180;
      v182 = vextq_s8(v160, v177, 0xCuLL);
      v160.i32[3] = v162.i32[1];
      v183 = vuzp1q_s32(*v159, v164);
      v184 = vextq_s8(*v159, v183, 0xCuLL);
      v163.i32[3] = v164.i32[1];
      v185 = vtrn2q_s32(vrev64q_s32(v170), v163);
      v186 = vuzp1q_s32(v172, v173);
      v187 = v68;
      v187.i32[0] = v174.i32[2];
      v188 = *v154++;
      v189 = vtrn2q_s32(vrev64q_s32(v187), v186);
      v190 = vextq_s8(v172, v186, 0xCuLL);
      v172.i32[3] = v173.i32[1];
      v191 = vtrn2q_s32(vrev64q_s32(v175), v172);
      v192 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v174, v68)), v190);
      v193 = vuzp2q_s32(v179, v68);
      v194 = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v193, v179)), vuzp2q_s32(v181, v188));
      v195 = vuzp1q_s32(v181, v188);
      v196 = vextq_s8(v181, v195, 0xCuLL);
      v181.i32[3] = v188.i32[1];
      v197 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v179, v68)), v196);
      v198 = vtrn2q_s32(vrev64q_s32(v193), v181);
      v199 = v68;
      v199.i32[0] = v179.i32[2];
      v200 = v68;
      *a14 = v197;
      *(a14 + 16) = v198;
      v201 = v68;
      v202 = (a14 + 64);
      v201.i32[0] = v169.i32[2];
      *(a14 + 32) = vtrn2q_s32(vrev64q_s32(v199), v195);
      *(a14 + 48) = v194;
      v203 = (v73 + 64);
      *v73 = v192;
      *(v73 + 16) = v191;
      *(v73 + 32) = v189;
      *(v73 + 48) = v176;
      v204 = (v74 + 64);
      *v74 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v169, v68)), v184);
      *(v74 + 16) = v185;
      *(v74 + 32) = vtrn2q_s32(vrev64q_s32(v201), v183);
      *(v74 + 48) = v171;
      v205 = (v75 + 64);
      v200.i32[0] = v166.i32[2];
      *(v75 + 32) = vtrn2q_s32(vrev64q_s32(v200), v177);
      *(v75 + 48) = v168;
      v27 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v166, v68)), v182);
      *v75 = v27;
      *(v75 + 16) = vtrn2q_s32(vrev64q_s32(v167), v160);
      v75 += 64;
      v74 += 64;
      v73 += 64;
      a14 += 64;
      if (!--v158)
      {
        v155 = a12[5];
        if (v155)
        {
          goto LABEL_97;
        }

        goto LABEL_145;
      }
    }
  }

  return result;
}

__int16 *ExtractInterleaved4_B44<unsigned short,(StreamType)0,(StreamType)0,(StreamType)1,(StreamType)1>(__int16 *result, unint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int32x2_t *a11, unsigned int *a12, uint64_t a13, int8x16_t *a14, uint64_t a15, int8x16_t *a16, uint64_t a17)
{
  if (!result)
  {
    return result;
  }

  v22 = result;
  v23 = *&a11[1] >= a2 ? a2 : *&a11[1];
  AXRStreamB44<unsigned short,(StreamType)0>::AXRStreamB44(v219, a3);
  result = AXRStreamB44<unsigned short,(StreamType)0>::AXRStreamB44(&v218, a4);
  v24 = a11[3];
  v25 = a11[7].u32[1];
  v26 = *(a5 + 8);
  v27 = *(*&v26[5] + 8 * v25);
  v28 = v27[2];
  v29 = vmin_u32(vmls_s32(v28, v26[6], v24), v26[6]).u32[0];
  v30 = *(a6 + 8);
  v31 = *(*&v30[5] + 8 * v25);
  v32 = v29 <= 0xFFFFFFFC ? (v29 + 3) >> 2 : 0x40000000;
  v33 = v31[2];
  v34 = vmin_u32(vmls_s32(v33, v30[6], v24), v30[6]).u32[0];
  v35 = v34 <= 0xFFFFFFFC ? (v34 + 3) >> 2 : 0x40000000;
  if (v23 < 0xE)
  {
    return result;
  }

  v36 = *(a13 + 60);
  v37 = a3[1];
  if (v37)
  {
    v38 = (v24.i32[1] * v36);
    v39 = *(*(v37 + 40) + 8 * v25);
    if (*(v39 + 12) - 1 < v38)
    {
      v38 = *(v39 + 12) - 1;
    }

    if (*(v37 + 104) == 1)
    {
      v40 = (*(v39 + 8 * v24.u32[0] + 24) + 8 * v38);
    }

    else
    {
      v42 = (v38 * *(v37 + 108)) >> *(v37 + 112);
      if (v42 >= *(v39 + 20) - 1)
      {
        LODWORD(v42) = *(v39 + 20) - 1;
      }

      v40 = (*(v39 + 8 * v24.u32[0] + 24) + 8 * v42);
    }

    v41 = *v40;
  }

  else
  {
    v41 = 0;
  }

  result = a4[1];
  v43 = (v24.i32[1] * v36);
  if (result)
  {
    v44 = *(*(result + 5) + 8 * v25);
    v45 = *(v44 + 12) - 1;
    if (v45 >= v43)
    {
      v45 = (v24.i32[1] * v36);
    }

    if (*(result + 26) == 1)
    {
      v46 = (*(v44 + 8 * v24.u32[0] + 24) + 8 * v45);
    }

    else
    {
      v47 = (v45 * *(result + 27)) >> *(result + 28);
      if (v47 >= *(v44 + 20) - 1)
      {
        LODWORD(v47) = *(v44 + 20) - 1;
      }

      v46 = (*(v44 + 8 * v24.u32[0] + 24) + 8 * v47);
    }

    result = *v46;
  }

  v48 = v27[1].u32[1] - 1;
  if (v48 >= v43)
  {
    v48 = (v24.i32[1] * v36);
  }

  if (v26[13].i32[0] == 1)
  {
    v49 = (*&v27[v24.u32[0] + 3] + 8 * v48);
  }

  else
  {
    v50 = (v48 * v26[13].u32[1]) >> v26[14].i32[0];
    if (v50 >= v28.i32[1] - 1)
    {
      LODWORD(v50) = v28.i32[1] - 1;
    }

    v49 = (*&v27[v24.u32[0] + 3] + 8 * v50);
  }

  v51 = v22 + v23 - 14;
  v52 = v31[1].u32[1] - 1;
  if (v52 >= v43)
  {
    v52 = (v24.i32[1] * v36);
  }

  if (v30[13].i32[0] == 1)
  {
    v53 = (*&v31[v24.u32[0] + 3] + 8 * v52);
  }

  else
  {
    v54 = (v52 * v30[13].u32[1]) >> v30[14].i32[0];
    if (v54 >= v33.i32[1] - 1)
    {
      LODWORD(v54) = v33.i32[1] - 1;
    }

    v53 = (*&v31[v24.u32[0] + 3] + 8 * v54);
  }

  v55 = a12[2];
  v56 = v22 + v41 > v51 || (v22 + result) > v51;
  v57 = v56;
  v217 = v57;
  v58 = a12[6];
  if (v55 > v58)
  {
    return result;
  }

  v60 = 14 * v32;
  v61 = 14 * v35;
  v62 = v219;
  v63 = vld1q_dup_s16(v62);
  v64 = &v218;
  v65 = vld1q_dup_s16(v64);
  v66 = 7 * *a12;
  v216 = v60;
  result = (v22 + *v49 + v66 * 2 + v60 * v55);
  v67 = (&v22[v66] + *v53 + v61 * v55);
  v68 = xmmword_296B6EDE0;
  v69 = xmmword_296B6EDF0;
  v70.i64[0] = 0xE0E0E0E0E0E0E0E0;
  v70.i64[1] = 0xE0E0E0E0E0E0E0E0;
  while (1)
  {
    v71 = (a14 + a17);
    v72 = (a14 + a17 + a17);
    v73 = (v72 + a17);
    if (!a16)
    {
      v76 = (v72 + a17);
      goto LABEL_69;
    }

    if (v55 == a12[2])
    {
      v74 = a12[3] + 1;
      v75 = a14;
      a14 = (a14 + a17);
      v71 = v72;
      v72 = (v72 + a17);
      do
      {
        v76 = v72;
        v72 = v71;
        v71 = a14;
        a14 = v75;
        v75 = a16;
        --v74;
      }

      while (v74);
    }

    else
    {
      v76 = (v72 + a17);
    }

    if (v55 == v58)
    {
      v77 = a12[7];
      switch(v77)
      {
        case 1u:
          goto LABEL_67;
        case 2u:
          goto LABEL_66;
        case 3u:
          v71 = a16;
LABEL_66:
          v72 = a16;
LABEL_67:
          v73 = a16;
          goto LABEL_69;
      }
    }

    v73 = v76;
LABEL_69:
    v79 = *a12;
    v78 = a12[1];
    if (v78)
    {
      if (result > v51)
      {
        v80 = 1;
      }

      else
      {
        v80 = v217;
      }

      if ((v80 & 1) != 0 || v67 > v51)
      {
        return result;
      }

      v81.i64[0] = *(result + 1);
      v81.i64[1] = *(result + 3);
      v82 = vqtbl1q_s8(v81, v68);
      v83 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v82, 8uLL), xmmword_296B6EE00), vshlq_u8(v82, v69)), xmmword_296B6EE10);
      v84 = vaddq_s8(v83, v70);
      v83.i8[1] = 0;
      v85 = vqtbl1q_s8(v84, xmmword_296B6EE20);
      v86 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v85, xmmword_296B6EE30), v85), vqtbl1q_s8(v85, xmmword_296B6EE40));
      v87 = vdupq_lane_s16(*v83.i8, 0);
      v88 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v86.i8), xmmword_296B6EE50), *v86.i8), v87);
      v89 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v86), xmmword_296B6EE50), v86), v87);
      v90 = vdupq_n_s16(bswap32(*result) >> 16);
      v91 = vaddq_s16(v89, v90);
      v92 = vaddq_s16(v88, v90);
      v93 = veorq_s8((*&v91 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v91));
      v94 = veorq_s8((*&v92 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v92));
      if (a9)
      {
        v94.i64[0] = (*(a9 + ((v94.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a9 + 2 * v94.u16[2]) << 32) | (*(a9 + 2 * v94.u16[1]) << 16) | *(a9 + 2 * v94.u16[0]);
        v94.i64[1] = (*(a9 + ((v94.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a9 + 2 * v94.u16[6]) << 32) | (*(a9 + 2 * v94.u16[5]) << 16) | *(a9 + 2 * v94.u16[4]);
        v93.i64[0] = (*(a9 + ((v93.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a9 + 2 * v93.u16[2]) << 32) | (*(a9 + 2 * v93.u16[1]) << 16) | *(a9 + 2 * v93.u16[0]);
        v93.i64[1] = (*(a9 + ((v93.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a9 + 2 * v93.u16[6]) << 32) | (*(a9 + 2 * v93.u16[5]) << 16) | *(a9 + 2 * v93.u16[4]);
      }

      v95.i64[0] = *(v67 + 1);
      v95.i64[1] = *(v67 + 3);
      v96 = vqtbl1q_s8(v95, v68);
      v97 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v96, 8uLL), xmmword_296B6EE00), vshlq_u8(v96, v69)), xmmword_296B6EE10);
      v98 = vaddq_s8(v97, v70);
      v97.i8[1] = 0;
      v99 = vqtbl1q_s8(v98, xmmword_296B6EE20);
      v100 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v99, xmmword_296B6EE30), v99), vqtbl1q_s8(v99, xmmword_296B6EE40));
      v101 = vdupq_lane_s16(*v97.i8, 0);
      v102 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v100.i8), xmmword_296B6EE50), *v100.i8), v101);
      v103 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v100), xmmword_296B6EE50), v100), v101);
      v104 = vdupq_n_s16(bswap32(*v67) >> 16);
      v105 = vaddq_s16(v103, v104);
      v106 = vaddq_s16(v102, v104);
      v107 = veorq_s8((*&v105 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v105));
      v108 = veorq_s8((*&v106 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v106));
      if (a10)
      {
        v108.i64[0] = (*(a10 + ((v108.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a10 + 2 * v108.u16[2]) << 32) | (*(a10 + 2 * v108.u16[1]) << 16) | *(a10 + 2 * v108.u16[0]);
        v108.i64[1] = (*(a10 + ((v108.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a10 + 2 * v108.u16[6]) << 32) | (*(a10 + 2 * v108.u16[5]) << 16) | *(a10 + 2 * v108.u16[4]);
        v107.i64[0] = (*(a10 + ((v107.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a10 + 2 * v107.u16[2]) << 32) | (*(a10 + 2 * v107.u16[1]) << 16) | *(a10 + 2 * v107.u16[0]);
        v107.i64[1] = (*(a10 + ((v107.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a10 + 2 * v107.u16[6]) << 32) | (*(a10 + 2 * v107.u16[5]) << 16) | *(a10 + 2 * v107.u16[4]);
      }

      v17.i32[0] = 0;
      v109 = v65;
      v221.val[1] = vqtbl2q_s8(*(&v107 - 1), xmmword_296B6EF40);
      v110 = v63;
      v221.val[0] = vqtbl2q_s8(*(&v93 - 1), xmmword_296B6EE70);
      v111 = vqtbl2q_s8(v221, xmmword_296B6EDD0);
      v224.val[1] = vqtbl2q_s8(*(&v107 - 1), xmmword_296B6EF50);
      v224.val[0] = vqtbl2q_s8(*(&v93 - 1), xmmword_296B6EE90);
      v112 = vqtbl2q_s8(v224, xmmword_296B6EDD0);
      v227.val[1] = vqtbl2q_s8(*(&v107 - 1), xmmword_296B6EF60);
      v227.val[0] = vqtbl2q_s8(*(&v93 - 1), xmmword_296B6EEA0);
      v113 = vqtbl2q_s8(v227, xmmword_296B6EDD0);
      v233.val[1] = vqtbl2q_s8(*(&v107 - 1), xmmword_296B6EF70);
      v233.val[0] = vqtbl2q_s8(*(&v93 - 1), xmmword_296B6EEB0);
      v114 = vqtbl2q_s8(v233, xmmword_296B6EDD0);
      if (a12[4] == v79)
      {
        v115 = 4 - a12[5];
      }

      else
      {
        v115 = 4;
      }

      v110.i32[0] = a12[1] & 2;
      v17 = vdupq_lane_s32(*&vceqq_s32(v110, v17), 0);
      v116 = v65;
      v231.val[1] = vqtbl2q_s8(*(&v108 - 1), xmmword_296B6EF60);
      v117 = v63;
      v231.val[0] = vqtbl2q_s8(*(&v94 - 1), xmmword_296B6EEA0);
      v118 = vqtbl2q_s8(v231, xmmword_296B6EDD0);
      v231.val[1] = vqtbl2q_s8(*(&v108 - 1), xmmword_296B6EF70);
      v231.val[0] = vqtbl2q_s8(*(&v94 - 1), xmmword_296B6EEB0);
      v231.val[0] = vqtbl2q_s8(v231, xmmword_296B6EDD0);
      v119 = vbslq_s8(v17, v231.val[0], v118);
      v120 = vbslq_s8(v17, v118, v231.val[0]);
      v226.val[1] = vqtbl2q_s8(*(&v108 - 1), xmmword_296B6EF40);
      v226.val[0] = vqtbl2q_s8(*(&v94 - 1), xmmword_296B6EE70);
      v226.val[1] = vqtbl2q_s8(v226, xmmword_296B6EDD0);
      v235.val[1] = vqtbl2q_s8(*(&v108 - 1), xmmword_296B6EF50);
      v235.val[0] = vqtbl2q_s8(*(&v94 - 1), xmmword_296B6EE90);
      v231.val[1] = vqtbl2q_s8(v235, xmmword_296B6EDD0);
      v121 = vbslq_s8(v17, v231.val[1], v226.val[1]);
      v122 = vbslq_s8(v17, v226.val[1], v231.val[1]);
      v123 = vbslq_s8(v17, v114, v113);
      v124 = vbslq_s8(v17, v113, v114);
      v125 = vbslq_s8(v17, v112, v111);
      v126 = vbslq_s8(v17, v111, v112);
      if ((v78 & 2) != 0)
      {
        v127 = v115 - 2;
      }

      else
      {
        v127 = v115;
      }

      if (v78)
      {
        v128 = vextq_s8(v121, v122, 8uLL).u64[0];
        v122 = vextq_s8(v122, v121, 8uLL);
        v129 = vextq_s8(v119, v120, 8uLL).u64[0];
        v120 = vextq_s8(v120, v119, 8uLL);
        v130 = vextq_s8(v125, v126, 8uLL).u64[0];
        v126 = vextq_s8(v126, v125, 8uLL);
        v131 = vextq_s8(v123, v124, 8uLL).u64[0];
        --v127;
        v124 = vextq_s8(v124, v123, 8uLL);
        v121.i64[0] = v128;
        v119.i64[0] = v129;
        v125.i64[0] = v130;
        v123.i64[0] = v131;
      }

      v70.i64[0] = 0xE0E0E0E0E0E0E0E0;
      v70.i64[1] = 0xE0E0E0E0E0E0E0E0;
      v69 = xmmword_296B6EDF0;
      v68 = xmmword_296B6EDE0;
      if (v127 <= 1)
      {
        v132 = 0;
      }

      else
      {
        *a14 = v122;
        *v71 = v120;
        v127 -= 2;
        v122.i64[0] = v121.i64[0];
        v120.i64[0] = v119.i64[0];
        *v72 = v126;
        v126.i64[0] = v125.i64[0];
        *v73 = v124;
        v124.i64[0] = v123.i64[0];
        v132 = 16;
      }

      if (v127 >= 1)
      {
        *(a14->i64 + v132) = v122.i64[0];
        *(v71->i64 + v132) = v120.i64[0];
        *(v72->i64 + v132) = v126.i64[0];
        *(v73->i64 + v132) = v124.i64[0];
        v132 |= 8uLL;
      }

      v133 = a12[4];
      if (v133 == v79)
      {
        goto LABEL_121;
      }

      v134 = (result + 7);
      v135 = v67 + 7;
      a14 = (a14 + v132);
      v71 = (v71 + v132);
      v72 = (v72 + v132);
      v73 = (v73 + v132);
      ++v79;
    }

    else
    {
      v133 = a12[4];
      v134 = result;
      v135 = v67;
    }

    v136 = a12[5];
    v137 = v136 != 0;
    if (v133 != 0 || !v137)
    {
      v138 = v133 - v137;
      if (v79 <= v138)
      {
        break;
      }
    }

    v174 = a14;
    v175 = v71;
    v176 = v72;
    v177 = v73;
    if (v136)
    {
LABEL_109:
      v178 = v217;
      if (v134 > v51)
      {
        v178 = 1;
      }

      if ((v178 & 1) != 0 || v135 > v51)
      {
        return result;
      }

      v179.i64[0] = *(v134 + 1);
      v179.i64[1] = *(v134 + 3);
      v180 = vqtbl1q_s8(v179, v68);
      v181 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v180, 8uLL), xmmword_296B6EE00), vshlq_u8(v180, v69)), xmmword_296B6EE10);
      v182 = vaddq_s8(v181, v70);
      v181.i8[1] = 0;
      v183 = vqtbl1q_s8(v182, xmmword_296B6EE20);
      v184 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v183, xmmword_296B6EE30), v183), vqtbl1q_s8(v183, xmmword_296B6EE40));
      v185 = vdupq_lane_s16(*v181.i8, 0);
      v186 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v184.i8), xmmword_296B6EE50), *v184.i8), v185);
      v187 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v184), xmmword_296B6EE50), v184), v185);
      v188 = vdupq_n_s16(bswap32(*v134) >> 16);
      v189 = vaddq_s16(v187, v188);
      v190 = vaddq_s16(v186, v188);
      v191 = veorq_s8((*&v189 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v189));
      v192 = veorq_s8((*&v190 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v190));
      if (a9)
      {
        v192.i64[0] = (*(a9 + ((v192.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a9 + 2 * v192.u16[2]) << 32) | (*(a9 + 2 * v192.u16[1]) << 16) | *(a9 + 2 * v192.u16[0]);
        v192.i64[1] = (*(a9 + ((v192.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a9 + 2 * v192.u16[6]) << 32) | (*(a9 + 2 * v192.u16[5]) << 16) | *(a9 + 2 * v192.u16[4]);
        v191.i64[0] = (*(a9 + ((v191.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a9 + 2 * v191.u16[2]) << 32) | (*(a9 + 2 * v191.u16[1]) << 16) | *(a9 + 2 * v191.u16[0]);
        v191.i64[1] = (*(a9 + ((v191.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a9 + 2 * v191.u16[6]) << 32) | (*(a9 + 2 * v191.u16[5]) << 16) | *(a9 + 2 * v191.u16[4]);
      }

      v193.i64[0] = *(v135 + 1);
      v193.i64[1] = *(v135 + 3);
      v194 = vqtbl1q_s8(v193, v68);
      v195 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v194, 8uLL), xmmword_296B6EE00), vshlq_u8(v194, v69)), xmmword_296B6EE10);
      v196 = vaddq_s8(v195, v70);
      v195.i8[1] = 0;
      v197 = vqtbl1q_s8(v196, xmmword_296B6EE20);
      v198 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v197, xmmword_296B6EE30), v197), vqtbl1q_s8(v197, xmmword_296B6EE40));
      v199 = vdupq_lane_s16(*v195.i8, 0);
      v200 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v198.i8), xmmword_296B6EE50), *v198.i8), v199);
      v201 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v198), xmmword_296B6EE50), v198), v199);
      v202 = vdupq_n_s16(bswap32(*v135) >> 16);
      v203 = vaddq_s16(v201, v202);
      v204 = vaddq_s16(v200, v202);
      v205 = veorq_s8((*&v203 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v203));
      v206 = veorq_s8((*&v204 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v204));
      if (a10)
      {
        v206.i64[0] = (*(a10 + ((v206.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a10 + 2 * v206.u16[2]) << 32) | (*(a10 + 2 * v206.u16[1]) << 16) | *(a10 + 2 * v206.u16[0]);
        v206.i64[1] = (*(a10 + ((v206.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a10 + 2 * v206.u16[6]) << 32) | (*(a10 + 2 * v206.u16[5]) << 16) | *(a10 + 2 * v206.u16[4]);
        v205.i64[0] = (*(a10 + ((v205.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a10 + 2 * v205.u16[2]) << 32) | (*(a10 + 2 * v205.u16[1]) << 16) | *(a10 + 2 * v205.u16[0]);
        v205.i64[1] = (*(a10 + ((v205.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a10 + 2 * v205.u16[6]) << 32) | (*(a10 + 2 * v205.u16[5]) << 16) | *(a10 + 2 * v205.u16[4]);
      }

      v207 = v65;
      v208 = v63;
      v229.val[1] = vqtbl2q_s8(*(&v206 - 1), xmmword_296B6EF60);
      v229.val[0] = vqtbl2q_s8(*(&v192 - 1), xmmword_296B6EEA0);
      v17 = vqtbl2q_s8(v229, xmmword_296B6EDD0);
      v222.val[1] = vqtbl2q_s8(*(&v206 - 1), xmmword_296B6EF40);
      v222.val[0] = vqtbl2q_s8(*(&v192 - 1), xmmword_296B6EE70);
      v209 = vqtbl2q_s8(v222, xmmword_296B6EDD0);
      v210 = v65;
      v211 = v63;
      v222.val[1] = vqtbl2q_s8(*(&v205 - 1), xmmword_296B6EF60);
      v222.val[0] = vqtbl2q_s8(*(&v191 - 1), xmmword_296B6EEA0);
      v212 = vqtbl2q_s8(v222, xmmword_296B6EDD0);
      v222.val[1] = vqtbl2q_s8(*(&v205 - 1), xmmword_296B6EF40);
      v222.val[0] = vqtbl2q_s8(*(&v191 - 1), xmmword_296B6EE70);
      v213 = vqtbl2q_s8(v222, xmmword_296B6EDD0);
      v214 = 4 - v136;
      if ((v214 & 2) != 0)
      {
        *v174 = v209;
        *v175 = v17;
        *v176 = v213;
        *v177 = v212;
        if (v214)
        {
          v230.val[1] = vqtbl2q_s8(*(&v206 - 1), xmmword_296B6EF70);
          v230.val[0] = vqtbl2q_s8(*(&v192 - 1), xmmword_296B6EEB0);
          v236.val[1] = vqtbl2q_s8(*(&v206 - 1), xmmword_296B6EF50);
          v236.val[0] = vqtbl2q_s8(*(&v192 - 1), xmmword_296B6EE90);
          v208.i64[0] = vqtbl2q_s8(v236, xmmword_296B6EDD0).u64[0];
          v236.val[1] = vqtbl2q_s8(*(&v205 - 1), xmmword_296B6EF70);
          v236.val[0] = vqtbl2q_s8(*(&v191 - 1), xmmword_296B6EEB0);
          v234.val[1] = vqtbl2q_s8(*(&v205 - 1), xmmword_296B6EF50);
          v234.val[0] = vqtbl2q_s8(*(&v191 - 1), xmmword_296B6EE90);
          v174[1].i64[0] = v208.i64[0];
          v175[1].i64[0] = vqtbl2q_s8(v230, xmmword_296B6EDD0).u64[0];
          v176[1].i64[0] = vqtbl2q_s8(v234, xmmword_296B6EDD0).u64[0];
          v177[1].i64[0] = vqtbl2q_s8(v236, xmmword_296B6EDD0).u64[0];
        }
      }

      else
      {
        v174->i64[0] = v209.i64[0];
        v175->i64[0] = v17.i64[0];
        v176->i64[0] = v213.i64[0];
        v177->i64[0] = v212.i64[0];
      }
    }

LABEL_121:
    a14 = (v76 + a17);
    v67 = (v67 + v61);
    result = (result + v216);
    v58 = a12[6];
    if (v55++ >= v58)
    {
      return result;
    }
  }

  if ((v217 & 1) == 0)
  {
    v139 = v138 - v79 + 1;
    while (v134 <= v51 && v135 <= v51)
    {
      v140.i64[0] = *(v134 + 1);
      v140.i64[1] = *(v134 + 3);
      v141 = vqtbl1q_s8(v140, v68);
      v142 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v141, 8uLL), xmmword_296B6EE00), vshlq_u8(v141, v69)), xmmword_296B6EE10);
      v143 = vaddq_s8(v142, v70);
      v142.i8[1] = 0;
      v144 = vqtbl1q_s8(v143, xmmword_296B6EE20);
      v145 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v144, xmmword_296B6EE30), v144), vqtbl1q_s8(v144, xmmword_296B6EE40));
      v146 = vdupq_lane_s16(*v142.i8, 0);
      v147 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v145.i8), xmmword_296B6EE50), *v145.i8), v146);
      v148 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v145), xmmword_296B6EE50), v145), v146);
      v149 = vdupq_n_s16(bswap32(*v134) >> 16);
      v150 = vaddq_s16(v148, v149);
      v151 = vaddq_s16(v147, v149);
      v152 = veorq_s8((*&v150 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v150));
      v153 = veorq_s8((*&v151 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v151));
      if (a9)
      {
        v153.i64[0] = (*(a9 + ((v153.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a9 + 2 * v153.u16[2]) << 32) | (*(a9 + 2 * v153.u16[1]) << 16) | *(a9 + 2 * v153.u16[0]);
        v153.i64[1] = (*(a9 + ((v153.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a9 + 2 * v153.u16[6]) << 32) | (*(a9 + 2 * v153.u16[5]) << 16) | *(a9 + 2 * v153.u16[4]);
        v152.i64[0] = (*(a9 + ((v152.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a9 + 2 * v152.u16[2]) << 32) | (*(a9 + 2 * v152.u16[1]) << 16) | *(a9 + 2 * v152.u16[0]);
        v152.i64[1] = (*(a9 + ((v152.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a9 + 2 * v152.u16[6]) << 32) | (*(a9 + 2 * v152.u16[5]) << 16) | *(a9 + 2 * v152.u16[4]);
      }

      v154.i64[0] = *(v135 + 1);
      v154.i64[1] = *(v135 + 3);
      v155 = vqtbl1q_s8(v154, v68);
      v156 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v155, 8uLL), xmmword_296B6EE00), vshlq_u8(v155, v69)), xmmword_296B6EE10);
      v157 = vaddq_s8(v156, v70);
      v156.i8[1] = 0;
      v158 = vqtbl1q_s8(v157, xmmword_296B6EE20);
      v159 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v158, xmmword_296B6EE30), v158), vqtbl1q_s8(v158, xmmword_296B6EE40));
      v160 = vdupq_lane_s16(*v156.i8, 0);
      v161 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v159.i8), xmmword_296B6EE50), *v159.i8), v160);
      v162 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v159), xmmword_296B6EE50), v159), v160);
      v163 = vdupq_n_s16(bswap32(*v135) >> 16);
      v164 = vaddq_s16(v162, v163);
      v165 = vaddq_s16(v161, v163);
      v166 = veorq_s8((*&v164 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v164));
      v167 = veorq_s8((*&v165 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v165));
      if (a10)
      {
        v167.i64[0] = (*(a10 + ((v167.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a10 + 2 * v167.u16[2]) << 32) | (*(a10 + 2 * v167.u16[1]) << 16) | *(a10 + 2 * v167.u16[0]);
        v167.i64[1] = (*(a10 + ((v167.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a10 + 2 * v167.u16[6]) << 32) | (*(a10 + 2 * v167.u16[5]) << 16) | *(a10 + 2 * v167.u16[4]);
        v166.i64[0] = (*(a10 + ((v166.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a10 + 2 * v166.u16[2]) << 32) | (*(a10 + 2 * v166.u16[1]) << 16) | *(a10 + 2 * v166.u16[0]);
        v166.i64[1] = (*(a10 + ((v166.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a10 + 2 * v166.u16[6]) << 32) | (*(a10 + 2 * v166.u16[5]) << 16) | *(a10 + 2 * v166.u16[4]);
      }

      v134 += 7;
      v168 = v166;
      v228.val[1] = vqtbl2q_s8(*v65.i8, xmmword_296B6EF60);
      v169 = v152;
      v228.val[0] = vqtbl2q_s8(*v63.i8, xmmword_296B6EEA0);
      v170 = vqtbl2q_s8(v228, xmmword_296B6EDD0);
      v228.val[1] = vqtbl2q_s8(*v65.i8, xmmword_296B6EF70);
      v228.val[0] = vqtbl2q_s8(*v63.i8, xmmword_296B6EEB0);
      v237.val[1] = vqtbl2q_s8(*v65.i8, xmmword_296B6EF40);
      v17 = xmmword_296B6EE70;
      v237.val[0] = vqtbl2q_s8(*v63.i8, xmmword_296B6EE70);
      v220.val[1] = vqtbl2q_s8(*v65.i8, xmmword_296B6EF50);
      v220.val[0] = vqtbl2q_s8(*v63.i8, xmmword_296B6EE90);
      v171 = v65;
      v223.val[1] = vqtbl2q_s8(*(&v167 - 1), xmmword_296B6EF60);
      v172 = v63;
      v223.val[0] = vqtbl2q_s8(*(&v153 - 1), xmmword_296B6EEA0);
      v173 = vqtbl2q_s8(v223, xmmword_296B6EDD0);
      v223.val[1] = vqtbl2q_s8(*(&v167 - 1), xmmword_296B6EF40);
      v223.val[0] = vqtbl2q_s8(*(&v153 - 1), xmmword_296B6EE70);
      v225.val[1] = vqtbl2q_s8(*(&v167 - 1), xmmword_296B6EF70);
      v232.val[1] = vqtbl2q_s8(*(&v167 - 1), xmmword_296B6EF50);
      v232.val[0] = vqtbl2q_s8(*(&v153 - 1), xmmword_296B6EE90);
      *a14 = vqtbl2q_s8(v223, xmmword_296B6EDD0);
      a14[1] = vqtbl2q_s8(v232, xmmword_296B6EDD0);
      v225.val[0] = vqtbl2q_s8(*(&v153 - 1), xmmword_296B6EEB0);
      v135 += 7;
      v174 = a14 + 2;
      *v71 = v173;
      v71[1] = vqtbl2q_s8(v225, xmmword_296B6EDD0);
      v175 = &v71[2];
      v176 = v72 + 2;
      *v72 = vqtbl2q_s8(v237, xmmword_296B6EDD0);
      v72[1] = vqtbl2q_s8(v220, xmmword_296B6EDD0);
      v177 = v73 + 2;
      *v73 = v170;
      v73[1] = vqtbl2q_s8(v228, xmmword_296B6EDD0);
      v73 += 2;
      v72 += 2;
      v71 += 2;
      a14 += 2;
      --v139;
      v70.i64[0] = 0xE0E0E0E0E0E0E0E0;
      v70.i64[1] = 0xE0E0E0E0E0E0E0E0;
      v69 = xmmword_296B6EDF0;
      v68 = xmmword_296B6EDE0;
      if (!v139)
      {
        v136 = a12[5];
        if (v136)
        {
          goto LABEL_109;
        }

        goto LABEL_121;
      }
    }
  }

  return result;
}

unint64_t ExtractInterleaved4_B44<unsigned int,(StreamType)0,(StreamType)0,(StreamType)1,(StreamType)1>(unint64_t result, unint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned int *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (!result)
  {
    return result;
  }

  v21 = result;
  if (*(a11 + 8) >= a2)
  {
    v22 = a2;
  }

  else
  {
    v22 = *(a11 + 8);
  }

  AXRStreamB44<unsigned int,(StreamType)0>::AXRStreamB44(&v228, a3);
  result = AXRStreamB44<unsigned int,(StreamType)0>::AXRStreamB44(&v227, a4);
  v23.i64[0] = *(a11 + 24);
  v24 = *(a11 + 60);
  v25 = *(a5 + 8);
  v26 = *(*&v25[5] + 8 * v24);
  v27 = v26[2];
  v28 = vmin_u32(vmls_s32(v27, v25[6], *v23.i8), v25[6]).u32[0];
  v29 = *(a6 + 8);
  v30 = *(*&v29[5] + 8 * v24);
  v31 = v30[2];
  v32 = vmin_u32(vmls_s32(v31, v29[6], *v23.i8), v29[6]).u32[0];
  v33 = 12 * v32 + 16;
  if (12 * v28 + 16 > v33)
  {
    v33 = 12 * v28 + 16;
  }

  v34 = v22 >= v33;
  v35 = v22 - v33;
  if (!v34)
  {
    return result;
  }

  v36 = *(a13 + 60);
  v37 = a3[1];
  if (v37)
  {
    v38 = (v23.i32[1] * v36);
    v39 = *(*(v37 + 40) + 8 * v24);
    if (*(v39 + 12) - 1 < v38)
    {
      v38 = *(v39 + 12) - 1;
    }

    if (*(v37 + 104) == 1)
    {
      v40 = (*(v39 + 8 * v23.u32[0] + 24) + 8 * v38);
    }

    else
    {
      v42 = (v38 * *(v37 + 108)) >> *(v37 + 112);
      if (v42 >= *(v39 + 20) - 1)
      {
        LODWORD(v42) = *(v39 + 20) - 1;
      }

      v40 = (*(v39 + 8 * v23.u32[0] + 24) + 8 * v42);
    }

    v41 = *v40;
  }

  else
  {
    v41 = 0;
  }

  v43 = a4[1];
  result = (v23.i32[1] * v36);
  if (v43)
  {
    v44 = *(*(v43 + 40) + 8 * v24);
    v45 = *(v44 + 12) - 1;
    if (v45 >= result)
    {
      v45 = (v23.i32[1] * v36);
    }

    if (*(v43 + 104) == 1)
    {
      v46 = (*(v44 + 8 * v23.u32[0] + 24) + 8 * v45);
    }

    else
    {
      v47 = (v45 * *(v43 + 108)) >> *(v43 + 112);
      if (v47 >= *(v44 + 20) - 1)
      {
        LODWORD(v47) = *(v44 + 20) - 1;
      }

      v46 = (*(v44 + 8 * v23.u32[0] + 24) + 8 * v47);
    }

    v43 = *v46;
  }

  v48 = v26[1].u32[1] - 1;
  if (v48 >= result)
  {
    v48 = (v23.i32[1] * v36);
  }

  if (v25[13].i32[0] == 1)
  {
    v49 = (*&v26[v23.u32[0] + 3] + 8 * v48);
  }

  else
  {
    v50 = (v48 * v25[13].u32[1]) >> v25[14].i32[0];
    if (v50 >= v27.i32[1] - 1)
    {
      LODWORD(v50) = v27.i32[1] - 1;
    }

    v49 = (*&v26[v23.u32[0] + 3] + 8 * v50);
  }

  v51 = v35 + v21;
  v52 = v30[1].u32[1] - 1;
  if (v52 >= result)
  {
    v52 = (v23.i32[1] * v36);
  }

  if (v29[13].i32[0] == 1)
  {
    v53 = (*&v30[v23.u32[0] + 3] + 8 * v52);
  }

  else
  {
    result = v29[13].u32[1];
    v54 = (v52 * result) >> v29[14].i32[0];
    if (v54 >= v31.i32[1] - 1)
    {
      LODWORD(v54) = v31.i32[1] - 1;
    }

    v53 = (*&v30[v23.u32[0] + 3] + 8 * v54);
  }

  v55 = a12[2];
  v56 = v41 + v21 > v51 || v43 + v21 > v51;
  v57 = v56;
  v58 = a12[6];
  if (v55 > v58)
  {
    return result;
  }

  v60 = 4 * v28;
  v61 = 4 * v32;
  v62 = 16 * v28;
  v63 = 16 * v32;
  v64 = &v228;
  v65 = vld1q_dup_f32(v64);
  v66 = &v227;
  v67 = vld1q_dup_f32(v66);
  v68 = *a12;
  result = *v49 + v21 + 16 * v68 + v62 * v55;
  v69 = (v21 + 16 * v68 + *v53 + v63 * v55);
  while (1)
  {
    v70 = a14 + a17;
    v71 = a14 + a17 + a17;
    v72 = v71 + a17;
    if (!a16)
    {
      v75 = v71 + a17;
      goto LABEL_66;
    }

    if (v55 == a12[2])
    {
      v73 = a12[3] + 1;
      v74 = a14;
      a14 += a17;
      v70 = v71;
      v71 += a17;
      do
      {
        v75 = v71;
        v71 = v70;
        v70 = a14;
        a14 = v74;
        v74 = a16;
        --v73;
      }

      while (v73);
    }

    else
    {
      v75 = v71 + a17;
    }

    if (v55 == v58)
    {
      v76 = a12[7];
      switch(v76)
      {
        case 1u:
          goto LABEL_64;
        case 2u:
          goto LABEL_63;
        case 3u:
          v70 = a16;
LABEL_63:
          v71 = a16;
LABEL_64:
          v72 = a16;
          goto LABEL_66;
      }
    }

    v72 = v75;
LABEL_66:
    v78 = *a12;
    v77 = a12[1];
    if (v77)
    {
      if (result > v51)
      {
        v79 = 1;
      }

      else
      {
        v79 = v57;
      }

      if ((v79 & 1) != 0 || v69 > v51)
      {
        return result;
      }

      v23.i32[0] = 0;
      v80 = (v69 + v61 + v61);
      v81 = *(v80 + v61);
      v82 = vuzp1q_s32(v67, v81);
      v83 = *(result + v60);
      v84 = (result + v60 + v60);
      v85 = *(v84 + v60);
      v86 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v65, v85)), vextq_s8(v67, v82, 0xCuLL));
      v87 = vuzp2q_s32(v65, v85);
      v85.i32[0] = v65.i32[2];
      v88 = vtrn2q_s32(vrev64q_s32(v85), v82);
      v89 = v67;
      v89.i32[3] = HIDWORD(*(v80->i64 + v61));
      v90 = vtrn2q_s32(vrev64q_s32(v87), v89);
      v91 = *result;
      v92 = *v84;
      v93 = *v69;
      v94 = *(v69 + v61);
      v95 = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v87, v65)), vuzp2q_s32(v67, v81));
      v96 = vuzp1q_s32(v67, *v80);
      v97 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v65, *v84)), vextq_s8(v67, v96, 0xCuLL));
      v98 = vuzp2q_s32(v65, *v84);
      v92.i32[0] = v65.i32[2];
      v99 = vtrn2q_s32(vrev64q_s32(v92), v96);
      v100 = v67;
      v100.i32[3] = HIDWORD(v80->i64[0]);
      v101 = vtrn2q_s32(vrev64q_s32(v98), v100);
      v102 = vuzp2q_s32(v67, *v80);
      v103 = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v98, v65)), v102);
      if (a12[4] == v78)
      {
        v104 = 4 - a12[5];
      }

      else
      {
        v104 = 4;
      }

      v102.i32[0] = a12[1] & 2;
      v105 = vdupq_lane_s32(*&vceqq_s32(v102, v23), 0);
      v106 = vbslq_s8(v105, v101, v103);
      v107 = vbslq_s8(v105, v97, v99);
      v108 = vbslq_s8(v105, v90, v95);
      v109 = vbslq_s8(v105, v86, v88);
      v110 = v67;
      v110.i32[3] = HIDWORD(*(v69->i64 + v61));
      v111 = vuzp2q_s32(v65, v83);
      v112 = vtrn2q_s32(vrev64q_s32(v111), v110);
      v113 = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v111, v65)), vuzp2q_s32(v67, v94));
      v114 = vbslq_s8(v105, v112, v113);
      v115 = vuzp1q_s32(v67, v94);
      v116 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v65, v83)), vextq_s8(v67, v115, 0xCuLL));
      v83.i32[0] = v65.i32[2];
      v117 = vtrn2q_s32(vrev64q_s32(v83), v115);
      v118 = vbslq_s8(v105, v116, v117);
      v119 = v67;
      v119.i32[3] = HIDWORD(v69->i64[0]);
      v120 = vuzp2q_s32(v65, v91);
      v121 = vtrn2q_s32(vrev64q_s32(v120), v119);
      v122 = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v120, v65)), vuzp2q_s32(v67, v93));
      v123 = vbslq_s8(v105, v121, v122);
      v124 = vuzp1q_s32(v67, v93);
      v125 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v65, v91)), vextq_s8(v67, v124, 0xCuLL));
      v91.i32[0] = v65.i32[2];
      v126 = vrev64q_s32(v91);
      v127 = vtrn2q_s32(v126, v124);
      if ((v77 & 2) != 0)
      {
        v104 -= 2;
      }

      v128 = v77 & 1;
      v129 = v104 - v128;
      v126.i32[0] = v128;
      v130 = vdupq_lane_s32(*&vmvnq_s8(vceqq_s32(v126, v23)), 0);
      v131 = vbslq_s8(v130, v123, vbslq_s8(v105, v125, v127));
      v132 = vbslq_s8(v130, v114, v118);
      v23 = vbslq_s8(v130, v108, v109);
      v133 = vbslq_s8(v130, v106, v107);
      if (v104 - v128 <= 1)
      {
        v140 = 0;
      }

      else
      {
        v134 = vbslq_s8(v105, v99, v97);
        v135 = vbslq_s8(v105, v103, v101);
        v136 = vbslq_s8(v105, v88, v86);
        v137 = vbslq_s8(v105, v95, v90);
        v138 = vbslq_s8(v105, v117, v116);
        v139 = vbslq_s8(v105, v127, v125);
        *a14 = v131;
        *(a14 + 16) = vbslq_s8(v130, v139, v123);
        *v70 = v132;
        *(v70 + 16) = vbslq_s8(v130, v138, v114);
        *v71 = v133;
        *(v71 + 16) = vbslq_s8(v130, v134, v106);
        v129 -= 2;
        v131 = vbslq_s8(v130, vbslq_s8(v105, v122, v121), v139);
        *v72 = v23;
        *(v72 + 16) = vbslq_s8(v130, v136, v108);
        v132 = vbslq_s8(v130, vbslq_s8(v105, v113, v112), v138);
        v133 = vbslq_s8(v130, v135, v134);
        v23 = vbslq_s8(v130, v137, v136);
        v140 = 32;
      }

      if (v129 >= 1)
      {
        *(v140 + a14) = v131;
        *(v140 + v70) = v132;
        *(v140 + v71) = v133;
        *(v140 + v72) = v23;
        v140 |= 0x10uLL;
      }

      v141 = a12[4];
      if (v141 == v78)
      {
        goto LABEL_128;
      }

      v142 = (result + 16);
      v143 = v69 + 1;
      a14 += v140;
      v70 += v140;
      v71 += v140;
      v72 += v140;
      ++v78;
    }

    else
    {
      v141 = a12[4];
      v142 = result;
      v143 = v69;
    }

    v144 = a12[5];
    v145 = v144 != 0;
    if (v141 != 0 || !v145)
    {
      v146 = v141 - v145;
      if (v78 <= v146)
      {
        break;
      }
    }

    v184 = a14;
    v185 = v70;
    v186 = v71;
    v187 = v72;
    if (v144)
    {
LABEL_95:
      v188 = 4 - a12[7];
      if (v55 != a12[6])
      {
        v188 = 4;
      }

      if (v142 > v51)
      {
        v189 = 1;
      }

      else
      {
        v189 = v57;
      }

      if ((v189 & 1) != 0 || v143 > v51)
      {
        return result;
      }

      if (v188 < 2)
      {
        v191 = 0;
        v190 = v142;
        v192 = v142;
      }

      else
      {
        v190 = (v142 + v60);
        if (v188 == 2)
        {
          v191 = 0;
          v192 = (v142 + v60);
        }

        else
        {
          v192 = (v142 + v60);
          v190 = (v190 + v60);
          if (v188 <= 3)
          {
            v191 = 0;
          }

          else
          {
            v191 = v60;
          }
        }
      }

      v193 = (v190 + v191);
      v194 = 0uLL;
      v195 = 0uLL;
      v23 = 0uLL;
      v196 = 0uLL;
      if ((4 - v144))
      {
        v196.i32[0] = *(v142 + 3 - v144);
        v194.i32[0] = *(v192 + 3 - v144);
        v195.i32[0] = *(v190 + 3 - v144);
        v23.i32[0] = *(v193 + 3 - v144);
      }

      if (((4 - v144) & 2) != 0)
      {
        v197.i64[0] = *v142;
        v197.i64[1] = v196.i64[0];
        v198.i64[0] = *v192;
        v198.i64[1] = v194.i64[0];
        v199.i64[0] = *v190;
        v199.i64[1] = v195.i64[0];
        v200.i64[0] = *v193;
        v200.i64[1] = v23.i64[0];
        v194 = v198;
        v195 = v199;
        v23 = v200;
        v196 = v197;
      }

      if (v188 < 2)
      {
        v202 = 0;
        v201 = v143;
        v203 = v143;
      }

      else
      {
        v201 = (v143->i64 + v61);
        if (v188 == 2)
        {
          v202 = 0;
          v203 = (v143->i64 + v61);
        }

        else
        {
          v203 = (v143->i64 + v61);
          v201 = (v201 + v61);
          if (v188 <= 3)
          {
            v202 = 0;
          }

          else
          {
            v202 = v61;
          }
        }
      }

      v204 = (v201 + v202);
      v205 = 0uLL;
      v206 = 0uLL;
      v207 = 0uLL;
      v208 = 0uLL;
      if ((4 - v144))
      {
        v208.i32[0] = v143->i32[3 - v144];
        v205.i32[0] = *(v203 + 3 - v144);
        v206.i32[0] = *(v201 + 3 - v144);
        v207.i32[0] = *(v204 + 3 - v144);
      }

      if (((4 - v144) & 2) != 0)
      {
        v209.i64[0] = v143->i64[0];
        v209.i64[1] = v208.i64[0];
        v210.i64[0] = *v203;
        v210.i64[1] = v205.i64[0];
        v211.i64[0] = *v201;
        v211.i64[1] = v206.i64[0];
        v212.i64[0] = *v204;
        v212.i64[1] = v207.i64[0];
        v205 = v210;
        v206 = v211;
        v207 = v212;
        v208 = v209;
      }

      v213 = vuzp1q_s32(v67, v208);
      v214 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v65, v196)), vextq_s8(v67, v213, 0xCuLL));
      v215 = vuzp1q_s32(v67, v205);
      v216 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v65, v194)), vextq_s8(v67, v215, 0xCuLL));
      v217 = vuzp1q_s32(v67, v206);
      v218 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v65, v195)), vextq_s8(v67, v217, 0xCuLL));
      v219 = vuzp1q_s32(v67, v207);
      v220 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v65, v23)), vextq_s8(v67, v219, 0xCuLL));
      if (((4 - v144) & 2) != 0)
      {
        v221 = v67;
        v221.i32[3] = v208.i32[1];
        v222 = v67;
        v222.i32[3] = v205.i32[1];
        v223 = vtrn2q_s32(vrev64q_s32(vuzp2q_s32(v65, v196)), v221);
        v224 = v67;
        v224.i32[3] = v206.i32[1];
        v225 = vtrn2q_s32(vrev64q_s32(vuzp2q_s32(v65, v194)), v222);
        v226 = v67;
        v226.i32[3] = v207.i32[1];
        *v184 = v214;
        v184[1] = v223;
        *v185 = v216;
        v185[1] = v225;
        *v186 = v218;
        v186[1] = vtrn2q_s32(vrev64q_s32(vuzp2q_s32(v65, v195)), v224);
        *v187 = v220;
        v187[1] = vtrn2q_s32(vrev64q_s32(vuzp2q_s32(v65, v23)), v226);
        if ((4 - v144))
        {
          v196.i32[0] = v65.i32[2];
          v194.i32[0] = v65.i32[2];
          v195.i32[0] = v65.i32[2];
          v23.i32[0] = v65.i32[2];
          v184[2] = vtrn2q_s32(vrev64q_s32(v196), v213);
          v185[2] = vtrn2q_s32(vrev64q_s32(v194), v215);
          v23 = vtrn2q_s32(vrev64q_s32(v23), v219);
          v186[2] = vtrn2q_s32(vrev64q_s32(v195), v217);
          v187[2] = v23;
        }
      }

      else
      {
        *v184 = v214;
        *v185 = v216;
        *v186 = v218;
        *v187 = v220;
      }
    }

LABEL_128:
    a14 = v75 + a17;
    v69 = (v69 + v63);
    result += v62;
    v58 = a12[6];
    v34 = v55++ >= v58;
    if (v34)
    {
      return result;
    }
  }

  if ((v57 & 1) == 0)
  {
    v147 = v146 - v78 + 1;
    while (v142 <= v51 && v143 <= v51)
    {
      v148 = (v143 + v61);
      v149 = (v143 + v61 + v61);
      v150 = *(v149 + v61);
      v151 = v67;
      v151.i32[3] = HIDWORD(*(v149->i64 + v61));
      v152 = (v142 + v60);
      v153 = (v142 + v60 + v60);
      v154 = *(v153 + v60);
      v155 = vuzp2q_s32(v65, v154);
      v156 = vrev64q_s32(v155);
      v157 = vuzp1q_s32(v67, v150);
      v158 = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v155, v65)), vuzp2q_s32(v67, v150));
      v159 = vuzp1q_s32(v67, *v149);
      v160 = *v153;
      v161 = vuzp2q_s32(v65, *v153);
      v160.i32[0] = v65.i32[2];
      v162 = *v142;
      v142 += 2;
      v163 = v162;
      v164 = vtrn2q_s32(vrev64q_s32(v160), v159);
      v165 = v67;
      v165.i32[3] = HIDWORD(v149->i64[0]);
      v166 = vtrn2q_s32(vrev64q_s32(v161), v165);
      v167 = *v152;
      v168 = *v143++;
      v169 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v65, *v153)), vextq_s8(v67, v159, 0xCuLL));
      v170 = *v148;
      v171 = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v161, v65)), vuzp2q_s32(v67, *v149));
      v172 = v67;
      v172.i32[3] = HIDWORD(v148->i64[0]);
      v173 = vuzp2q_s32(v65, *v152);
      v174 = vuzp2q_s32(v65, v163);
      v175 = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v174, v65)), vuzp2q_s32(v67, v168));
      v176 = vuzp1q_s32(v67, v168);
      v177 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v65, v163)), vextq_s8(v67, v176, 0xCuLL));
      v178 = v67;
      v178.i32[3] = v168.i32[1];
      v179 = vuzp1q_s32(v65, v154);
      v180 = vtrn2q_s32(vrev64q_s32(v174), v178);
      v181 = vuzp1q_s32(v67, *v148);
      v163.i32[0] = v65.i32[2];
      v182 = vtrn2q_s32(vrev64q_s32(v163), v176);
      v183 = vuzp1q_s32(v65, *v152);
      v167.i32[0] = v65.i32[2];
      v184 = (a14 + 64);
      *a14 = v177;
      *(a14 + 16) = v180;
      *(a14 + 32) = v182;
      *(a14 + 48) = v175;
      v185 = (v70 + 64);
      *v70 = vtrn2q_s32(vrev64q_s32(v183), vextq_s8(v67, v181, 0xCuLL));
      *(v70 + 16) = vtrn2q_s32(vrev64q_s32(v173), v172);
      *(v70 + 32) = vtrn2q_s32(vrev64q_s32(v167), v181);
      *(v70 + 48) = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v173, v65)), vuzp2q_s32(v67, v170));
      v186 = (v71 + 64);
      *v71 = v169;
      *(v71 + 16) = v166;
      *(v71 + 32) = v164;
      *(v71 + 48) = v171;
      v187 = (v72 + 64);
      v154.i32[0] = v65.i32[2];
      *(v72 + 32) = vtrn2q_s32(vrev64q_s32(v154), v157);
      *(v72 + 48) = v158;
      v23 = vtrn2q_s32(v156, v151);
      *v72 = vtrn2q_s32(vrev64q_s32(v179), vextq_s8(v67, v157, 0xCuLL));
      *(v72 + 16) = v23;
      v72 += 64;
      v71 += 64;
      v70 += 64;
      a14 += 64;
      if (!--v147)
      {
        v144 = a12[5];
        if (v144)
        {
          goto LABEL_95;
        }

        goto LABEL_128;
      }
    }
  }

  return result;
}