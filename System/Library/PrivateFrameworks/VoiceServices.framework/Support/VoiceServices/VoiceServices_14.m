uint64_t sub_100095CB8(uint64_t a1)
{
  sub_1000BFEC4(*(a1 + 192));
  v2 = *(a1 + 208);
  if (v2)
  {
    if (*(a1 + 168) >= 1)
    {
      v3 = 0;
      do
      {
        sub_1000BFEC4(*(*(a1 + 208) + 8 * v3++));
      }

      while (v3 < *(a1 + 168));
      v2 = *(a1 + 208);
    }

    sub_1000BFEC4(v2);
  }

  v4 = *(a1 + 176);
  if (v4)
  {
    if (*(a1 + 168) >= 1)
    {
      v5 = 0;
      do
      {
        sub_1000728C0(*(*(a1 + 176) + 8 * v5++));
      }

      while (v5 < *(a1 + 168));
      v4 = *(a1 + 176);
    }

    sub_1000BFEC4(v4);
  }

  return sub_100092DC4(a1);
}

BOOL sub_100095D6C(uint64_t a1, unsigned __int16 *a2, unsigned int a3, char *a4, unsigned int a5, uint64_t a6, uint64_t a7, int *a8)
{
  v78 = sub_1000CA0BC();
  if (a3 <= 2)
  {
    v13 = a3;
  }

  else
  {
    v13 = 0;
  }

  v82 = a4;
  v83 = a8;
  *a8 = 0;
  *a4 = -1;
  v14 = sub_1000CB75C(a2);
  v88 = a1;
  v15 = *(a1 + 168);
  v16 = v15;
  __b = sub_1000C9F54(4 * v15, v17, v18, v19, v20, v21, v22, v23);
  v81 = v15;
  v31 = 8 * v15;
  if (v13)
  {
    if (v13 == 1)
    {
      if (v16 >= 1)
      {
        v32 = 4 * v16;
        v33 = &unk_1000F1120;
LABEL_12:
        memset_pattern16(__b, v33, v32);
LABEL_13:
        v48 = sub_1000C9F54(v31, v34, v35, v36, v37, v38, v39, v40);
        v49 = 0;
        v50 = 2 * v14;
        do
        {
          *(v48 + 8 * v49++) = sub_1000C9F54(v50 + 2, v41, v42, v43, v44, v45, v46, v47);
        }

        while (v81 != v49);
        v87 = v48;
        v86 = 1;
        goto LABEL_17;
      }
    }

    else if (v16 >= 1)
    {
      v32 = 4 * v16;
      v33 = &unk_1000F1110;
      goto LABEL_12;
    }
  }

  else if (v16 >= 1)
  {
    bzero(__b, 4 * v16);
    goto LABEL_13;
  }

  v87 = sub_1000C9F54(v31, v24, v25, v26, v27, v28, v29, v30);
  v86 = 0;
LABEL_17:
  v89 = 0;
  v51 = 0;
  v52 = 0;
  LODWORD(v53) = 0;
  v79 = v16;
  v54 = v16 - 1;
  v55 = v82;
  v56 = a5;
  v57 = *a2;
  if (!*a2)
  {
    goto LABEL_28;
  }

LABEL_20:
  v51 = sub_1000CA104(v57, v51);
  if (v86)
  {
LABEL_21:
    v59 = *(v88 + 184);
    if (v51 == *v59)
    {
      LODWORD(v60) = 0;
      v61 = 1;
    }

    else
    {
      v60 = 0;
      v62 = v59 + 1;
      while (v54 != v60)
      {
        v63 = v62[v60++];
        if (v51 == v63)
        {
          v61 = v60 < v81;
          goto LABEL_30;
        }
      }

      v61 = v60 + 1 < v81;
      LODWORD(v60) = v79;
    }

    goto LABEL_30;
  }

  while (1)
  {
    LODWORD(v60) = 0;
    v61 = 0;
LABEL_30:
    v64 = v53 == 0 && v61 ? v60 : v52;
    v65 = v60 == v64 && v61;
    if (v53 < 1 || v65)
    {
      v52 = v64;
      if (v61)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v66 = *(*(v88 + 176) + 8 * v64);
      v90 = 0;
      v67 = (*(v66 + 16))(v66, *(v87 + 8 * v64), __b[v64], v55, v56, a6, 1, &v90, v78);
      if (v67 >= 1 && *(v66 + 152))
      {
        LODWORD(v67) = sub_100093498(v66, v67, v55, v56, v68, v69, v70, v71);
      }

      if (v89)
      {
        if (v90 <= 0)
        {
          if (*v55 != -1)
          {
            v72 = *v83 + 1;
            v73 = v55 + 1;
            do
            {
              *v83 = v72;
              v74 = *v73++;
              ++v72;
            }

            while (v74 != -1);
          }

          v89 = 1;
          v55 = v82;
          LODWORD(v53) = 0;
          if (v61)
          {
            v52 = v60;
            goto LABEL_19;
          }
        }

        else
        {
          *v83 += v90;
          v89 = 1;
          LODWORD(v53) = 0;
          if (v61)
          {
            v52 = v60;
            goto LABEL_19;
          }
        }
      }

      else if (v90 < 1)
      {
        if (v67 == 1 && *v55 != -1)
        {
          do
          {
            v75 = v55[1];
            ++v55;
            v56 = (v56 - 1);
          }

          while (v75 != -1);
        }

        v89 = 0;
        LODWORD(v53) = 0;
        if (v61)
        {
          v52 = v60;
LABEL_19:
          *(*(v87 + 8 * v52) + 2 * v53) = v57;
          v53 = v53 + 1;
          *(*(v87 + 8 * v52) + 2 * v53) = 0;
          v58 = a2[1];
          ++a2;
          v57 = v58;
          if (v58)
          {
            goto LABEL_20;
          }

          goto LABEL_28;
        }
      }

      else
      {
        *v83 = v90 + ((v55 - v82) >> 1);
        *v82 = -1;
        v89 = 1;
        v55 = v82;
        v56 = a5;
        LODWORD(v53) = 0;
        if (v61)
        {
          v52 = v60;
          goto LABEL_19;
        }
      }
    }

    if (!v57)
    {
      break;
    }

    v76 = a2[1];
    ++a2;
    v57 = v76;
    if (v76)
    {
      goto LABEL_20;
    }

LABEL_28:
    v51 = 0;
    if (v86)
    {
      goto LABEL_21;
    }
  }

  sub_1000CA0A0(v78);
  if (v89)
  {
    ++*v83;
  }

  return *v82 != -1;
}

void *sub_10009618C(uint64_t a1)
{
  v2 = sub_1000C0034(224);
  v3 = v2;
  if (!v2)
  {
    return v3;
  }

  if (!sub_100093680(v2, a1))
  {
LABEL_22:
    sub_1000BFEC4(v3);
    return 0;
  }

  if (!sub_1000BBD54(a1, v3 + 21))
  {
    goto LABEL_21;
  }

  v4 = sub_1000BFF20(4 * *(v3 + 42));
  v3[24] = v4;
  if (!v4)
  {
    goto LABEL_21;
  }

  LODWORD(v5) = *(v3 + 42);
  if (v5 >= 1)
  {
    v6 = 0;
    while (1)
    {
      v11 = 0;
      if (!sub_1000BBD54(a1, &v11))
      {
        break;
      }

      *(v3[24] + 4 * v6++) = v11;
      v5 = *(v3 + 42);
      if (v6 >= v5)
      {
        if (v6 >= v5)
        {
          goto LABEL_13;
        }

        goto LABEL_21;
      }
    }

    LODWORD(v5) = *(v3 + 42);
    if (v6 < v5)
    {
      goto LABEL_21;
    }
  }

LABEL_13:
  v3[23] = v3[24];
  v7 = sub_1000BFF20(8 * v5);
  v3[22] = v7;
  if (!v7)
  {
    goto LABEL_21;
  }

  v8 = *(v3 + 42);
  if (v8 < 1)
  {
    LODWORD(i) = 0;
  }

  else
  {
    for (i = 0; i < v8; ++i)
    {
      *(v3[22] + 8 * i) = sub_100092CBC(a1);
      v8 = *(v3 + 42);
      if (!*(v3[22] + 8 * i))
      {
        break;
      }
    }
  }

  if (i < v8)
  {
LABEL_21:
    sub_100095CB8(v3);
    goto LABEL_22;
  }

  v3[1] = sub_100095CB8;
  v3[3] = 0;
  v3[4] = 0;
  v3[2] = sub_100095D6C;
  return v3;
}

uint64_t sub_100096324(void *a1)
{
  sub_1000728C0(a1[70]);
  sub_1000BFEC4(a1[68]);
  sub_1000BFEC4(a1[65]);
  sub_100079240(a1[62]);
  sub_100079240(a1[60]);
  sub_100079240(a1[58]);
  sub_100079240(a1[56]);
  sub_100079240(a1[54]);
  sub_100079240(a1[52]);
  sub_1000BFEC4(a1[50]);
  sub_1000BFEC4(a1[47]);
  sub_1000BFEC4(a1[45]);
  sub_1000BFEC4(a1[43]);
  sub_1000BFEC4(a1[40]);
  sub_1000BFEC4(a1[37]);
  sub_1000BFEC4(a1[34]);
  sub_100078CEC(a1[29]);
  sub_100079240(a1[27]);
  sub_100078CEC(a1[25]);
  sub_100079240(a1[22]);

  return sub_100092DC4(a1);
}

uint64_t sub_1000963F8(uint64_t a1, unint64_t a2, unsigned int a3, _WORD *a4, unsigned int a5, uint64_t a6, int a7, unsigned int *a8)
{
  v14 = sub_1000CA0BC();
  if (a3 <= 3)
  {
    v15 = 3;
  }

  else
  {
    v15 = a3;
  }

  if (a3 <= 6)
  {
    v16 = v15;
  }

  else
  {
    v16 = 3;
  }

  v309 = v16;
  *a8 = 0;
  v307 = a2;
  v17 = sub_1000CB75C(a2);
  if (!v17)
  {
    return 0;
  }

  v25 = v17;
  v303 = *(a1 + 256);
  v313 = v303 / 2;
  if (*(a1 + 244))
  {
    v26 = 3 * v17 * *(a1 + 240);
  }

  else
  {
    v26 = *(a1 + 240) * v17;
  }

  v298 = a6;
  v299 = v14;
  v304 = sub_1000C9F54(2 * (v26 + 2 * v313 + 1), v18, v19, v20, v21, v22, v23, v24);
  if (v303 >= 2)
  {
    bzero(v304, 2 * (v313 - 1) + 2);
  }

  v301 = a8;
  v302 = a5;
  if (a7 >= 10)
  {
    v35 = 10;
  }

  else
  {
    v35 = a7;
  }

  v315 = v35;
  v36 = (v35 + 1);
  v37 = sub_1000C9F54(8 * v36, v28, v29, v30, v31, v32, v33, v34);
  v45 = sub_1000C9F54(8 * v36, v38, v39, v40, v41, v42, v43, v44);
  v53 = sub_1000C9F54(4 * v36, v46, v47, v48, v49, v50, v51, v52);
  v316 = v36;
  v320 = sub_1000C9F54(2 * v36, v54, v55, v56, v57, v58, v59, v60);
  v322 = sub_1000C9F54(v36, v61, v62, v63, v64, v65, v66, v67);
  v321 = sub_1000C9F54(20, v68, v69, v70, v71, v72, v73, v74);
  v89 = sub_1000C9F54(10, v75, v76, v77, v78, v79, v80, v81);
  v297 = a7;
  if ((a7 & 0x80000000) == 0)
  {
    v90 = v36;
    v91 = v45;
    v92 = v53;
    do
    {
      *v91++ = sub_1000C9F54(2 * *(a1 + 260) * (v25 + 1), v82, v83, v84, v85, v86, v87, v88);
      *v92++ = 0;
      --v90;
    }

    while (v90);
  }

  *v37 = 0;
  v93 = v307;
  v94 = v315;
  if (*v307)
  {
    v306 = v321 + 1;
    v305 = v89 + 1;
    v95 = 1;
    v310 = &v304[2 * v313];
    do
    {
      *v325 = 0;
      v308 = v93;
      v96 = sub_1000973BC(a1, v93, v309, v310, &v325[1], v325);
      v97 = v325[1];
      v98 = v325[1];
      if (v96)
      {
        if (v303 > 1)
        {
          bzero(&v304[2 * v325[1] + 2 * v313], 2 * (v313 - 1) + 2);
        }

        if (v98 >= 1)
        {
          v99 = &v304[2 * v97];
          v100 = v304;
          v101 = v316;
          v311 = v99;
          while (*&v100[2 * v313] == *(a1 + 184))
          {
            if (v95 >= 1)
            {
              v102 = v95;
              v103 = v45;
              v104 = v53;
              do
              {
                v105 = *(a1 + 68);
                v106 = *v103++;
                v107 = *v104;
                *v104++ = v107 + 1;
                *(v106 + 2 * v107) = v105;
                --v102;
              }

              while (v102);
            }

LABEL_30:
            v100 += 2;
            if (v100 >= v99)
            {
              goto LABEL_22;
            }
          }

          v312 = v100;
          v108 = v321;
          v109 = sub_100076A7C(*(a1 + 552));
          v110 = v320;
          if (v95 >= 1)
          {
            if (v95 < 4)
            {
              v111 = 0;
              goto LABEL_39;
            }

            v111 = 0;
            v203 = v320 + 2 * v95;
            v204 = v320 >= v306 || v321 >= v203;
            v205 = !v204;
            v206 = v320 >= v305 || v89 >= v203;
            v207 = !v206;
            v208 = v322 + v95;
            v209 = v322 >= v306 || v321 >= v208;
            v210 = !v209;
            v211 = v322 >= v305 || v89 >= v208;
            v212 = !v211;
            v213 = v322 >= v203 || v320 >= v208;
            if (!v213 || v205 || v207 || v210 || v212)
            {
              goto LABEL_39;
            }

            if (v95 < 0x20)
            {
              v111 = 0;
              goto LABEL_200;
            }

            v214 = vld1q_dup_s16(v321);
            v111 = v95 & 0x7FFFFFE0;
            v215 = vld1q_dup_s8(v89);
            v216 = v111;
            v217 = (v322 + 16);
            v218 = (v320 + 32);
            do
            {
              v218[-2] = v214;
              v218[-1] = v214;
              *v218 = v214;
              v218[1] = v214;
              v218 += 4;
              v217[-1] = v215;
              *v217 = v215;
              v217 += 2;
              v216 -= 32;
            }

            while (v216);
            if (v111 != v95)
            {
              if ((v95 & 0x1C) == 0)
              {
                goto LABEL_39;
              }

LABEL_200:
              v219 = v111;
              v111 = v95 & 0x7FFFFFFC;
              v220 = vld1_dup_s16(v321);
              v221 = (v320 + 2 * v219);
              v222 = (v322 + v219);
              v223 = v219 - v111;
              v224 = vuzp1_s8(vdup_n_s16(*v89), v220).u32[0];
              do
              {
                *v221++ = v220;
                *v222++ = v224;
                v223 += 4;
              }

              while (v223);
              if (v111 != v95)
              {
LABEL_39:
                v112 = (v322 + v111);
                v113 = (v320 + 2 * v111);
                v114 = v95 - v111;
                do
                {
                  *v113++ = *v321;
                  *v112++ = *v89;
                  --v114;
                }

                while (v114);
              }
            }
          }

          if (v109 > 1)
          {
            v314 = v109;
            for (i = 1; i < v314; ++i)
            {
              if (v95 < 1)
              {
                v117 = 0;
                goto LABEL_151;
              }

              v116 = 0;
              v117 = 0;
              while (*(v110 + 2 * v116) != *v108)
              {
LABEL_46:
                if (++v116 >= v95)
                {
                  goto LABEL_151;
                }
              }

              v118 = v95;
              if (v95 >= v116)
              {
                v119 = v116;
              }

              else
              {
                v119 = v95;
              }

              v120 = v95 + 1;
              while (v118 > v116)
              {
                v121 = v37[v118 - 1];
                v122 = *(v322 - 1 + v118--);
                --v120;
                if (v37[v116] + v89[i] >= v121 + v122)
                {
                  if (!v116)
                  {
                    v117 = v120;
                  }

                  if (v120 == v101)
                  {
                    goto LABEL_151;
                  }

LABEL_61:
                  if (v95 <= v94)
                  {
                    ++v95;
                  }

                  v123 = v95 - 1;
                  v124 = *(v45 + 8 * (v95 - 1));
                  v125 = v120;
                  if (v95 - 1 > v120)
                  {
                    v126 = v123;
                    if ((v123 - v125) < 4)
                    {
                      goto LABEL_65;
                    }

                    v319 = v123 - v125;
                    v137 = v45 + 8 * v125;
                    v138 = v110;
                    v139 = v45 + 8 + 8 * v123;
                    v140 = &v37[v125];
                    v317 = v123;
                    v141 = &v37[v317 + 1];
                    v142 = v53 + 4 * v125;
                    v143 = v53 + 4 + 4 * v123;
                    v144 = v138 + 2 * v125;
                    v145 = v320 + 2 + 2 * v123;
                    v146 = v322 + v125;
                    v147 = v322 + 1 + v123;
                    v149 = v137 < v143 && v142 < v139;
                    v151 = v137 < v145 && v144 < v139;
                    v153 = v137 < v147 && v146 < v139;
                    v155 = v140 < v143 && v142 < v141;
                    v157 = v140 < v145 && v144 < v141;
                    v159 = v140 < v147 && v146 < v141;
                    v86 = v142 < v145 && v144 < v143;
                    v162 = v142 < v147 && v146 < v143;
                    v88 = v144 < v147 && v146 < v145;
                    if (v140 < v139 && v137 < v141)
                    {
                      v94 = v315;
                      v101 = v316;
                      v110 = v320;
                      v124 = *(v45 + 8 * (v95 - 1));
                      goto LABEL_65;
                    }

                    v94 = v315;
                    v101 = v316;
                    v110 = v320;
                    v124 = *(v45 + 8 * (v95 - 1));
                    if (v149)
                    {
                      goto LABEL_65;
                    }

                    if (v151)
                    {
                      goto LABEL_65;
                    }

                    if (v153)
                    {
                      goto LABEL_65;
                    }

                    if (v155)
                    {
                      goto LABEL_65;
                    }

                    if (v157)
                    {
                      goto LABEL_65;
                    }

                    if (v159)
                    {
                      goto LABEL_65;
                    }

                    if (v86)
                    {
                      goto LABEL_65;
                    }

                    if (v162)
                    {
                      goto LABEL_65;
                    }

                    v87 = v319;
                    if (v88)
                    {
                      goto LABEL_65;
                    }

                    if (v319 < 0x10)
                    {
                      v165 = 0;
                      goto LABEL_145;
                    }

                    v165 = v319 & 0xFFFFFFFFFFFFFFF0;
                    v166 = (v45 - 128 + v317 * 8);
                    v167 = &v37[v317 - 16];
                    v168 = (v53 - 64 + 4 * v126);
                    v169 = (v322 - 16 + v126);
                    v85 = (v319 & 0xFFFFFFFFFFFFFFF0);
                    v86 = v320 - 32 + 2 * v126;
                    do
                    {
                      v171 = *v166;
                      v170 = v166[1];
                      v173 = v166[2];
                      v172 = v166[3];
                      v175 = v166[4];
                      v174 = v166[5];
                      v176 = v166[7];
                      *(v166 + 104) = v166[6];
                      *(v166 + 120) = v176;
                      *(v166 + 72) = v175;
                      *(v166 + 88) = v174;
                      *(v166 + 40) = v173;
                      *(v166 + 56) = v172;
                      *(v166 + 8) = v171;
                      *(v166 + 24) = v170;
                      v178 = *v167;
                      v177 = v167[1];
                      v180 = v167[2];
                      v179 = v167[3];
                      v182 = v167[4];
                      v181 = v167[5];
                      v183 = v167[7];
                      *(v167 + 104) = v167[6];
                      *(v167 + 120) = v183;
                      *(v167 + 72) = v182;
                      *(v167 + 88) = v181;
                      *(v167 + 40) = v180;
                      *(v167 + 56) = v179;
                      *(v167 + 8) = v178;
                      *(v167 + 24) = v177;
                      v185 = *v168;
                      v184 = v168[1];
                      v186 = v168[3];
                      *(v168 + 36) = v168[2];
                      *(v168 + 52) = v186;
                      *(v168 + 4) = v185;
                      *(v168 + 20) = v184;
                      v187 = *v86;
                      *(v86 + 18) = *(v86 + 16);
                      *(v86 + 2) = v187;
                      v166 -= 8;
                      v167 -= 8;
                      *(v169 + 1) = *v169;
                      v168 -= 4;
                      v86 -= 32;
                      --v169;
                      --v85;
                    }

                    while (v85);
                    if (v319 != v165)
                    {
                      if ((v319 & 0xC) == 0)
                      {
                        v126 -= v165;
                        goto LABEL_65;
                      }

LABEL_145:
                      v188 = v317 * 8 - 8 * v165;
                      v189 = v126 - (v319 & 0xFFFFFFFFFFFFFFFCLL);
                      v190 = v165 - (v319 & 0xFFFFFFFFFFFFFFFCLL);
                      v191 = (v45 - 32 + v188);
                      v192 = (v37 + v188 - 32);
                      v85 = (v53 - 16 - 4 * v165 + 4 * v126);
                      v193 = v320 - 8 - 2 * v165;
                      v194 = (v322 - 4 + v126 - v165);
                      v195 = (v193 + 2 * v126);
                      do
                      {
                        v196 = *v191;
                        *(v191 + 24) = v191[1];
                        *(v191 + 8) = v196;
                        v197 = *v192;
                        *(v192 + 24) = v192[1];
                        *(v192 + 8) = v197;
                        *(v85 + 4) = *v85;
                        *(v195 + 2) = *v195;
                        v191 -= 2;
                        v192 -= 2;
                        *(v194 + 1) = *v194;
                        --v85;
                        --v195;
                        --v194;
                        v190 += 4;
                      }

                      while (v190);
                      v126 = v189;
                      if (v319 != (v319 & 0xFFFFFFFFFFFFFFFCLL))
                      {
LABEL_65:
                        v87 = (v45 + 8 * v126);
                        v86 = &v37[v126];
                        v85 = (v53 + 4 * v126);
                        v127 = (v110 + 2 * v126);
                        v128 = (v322 + v126);
                        v129 = v87;
                        v130 = v86;
                        v131 = v85;
                        v132 = v127;
                        v133 = (v322 + v126);
                        do
                        {
                          --v126;
                          v134 = *--v129;
                          *v87 = v134;
                          v135 = *(v130 - 8);
                          v130 -= 8;
                          *v86 = v135;
                          LODWORD(v135) = *(v131 - 1);
                          v131 = (v131 - 4);
                          *v85 = v135;
                          LOWORD(v135) = *--v132;
                          *v127 = v135;
                          LOBYTE(v135) = *--v133;
                          *v128 = v135;
                          v128 = v133;
                          v127 = v132;
                          v85 = v131;
                          v86 = v130;
                          v87 = v129;
                        }

                        while (v126 > v125);
                      }
                    }
                  }

                  *(v45 + 8 * v125) = v124;
                  if (*(v53 + 4 * v116) >= 1)
                  {
                    v136 = 0;
                    do
                    {
                      *(*(v45 + 8 * v125) + 2 * v136) = *(*(v45 + 8 * v116) + 2 * v136);
                      ++v136;
                    }

                    while (v136 < *(v53 + 4 * v116));
                  }

                  v37[v125] = v37[v116];
                  *(v53 + 4 * v125) = *(v53 + 4 * v116);
                  v108 = v321;
                  *(v110 + 2 * v125) = v321[i];
                  *(v322 + v125) = v89[i];
                  goto LABEL_46;
                }
              }

              v120 = v119;
              if (!v116)
              {
                v117 = v119;
              }

              if (v119 != v101)
              {
                goto LABEL_61;
              }

LABEL_151:
              if (v117 > v94)
              {
                break;
              }
            }
          }

          if (v95 < 1)
          {
            v99 = v311;
          }

          else
          {
            v198 = 0;
            v99 = v311;
            do
            {
              v324 = 0;
              v323 = 0;
              sub_100078D3C(*(a1 + 48), *(v110 + 2 * v198), &v324, &v323);
              if (v323 >= 1)
              {
                for (j = 0; j < v323; ++j)
                {
                  v200 = v324;
                  v324 = (v324 + 2);
                  v201 = *(v45 + 8 * v198);
                  LOWORD(v200) = *v200;
                  v202 = *(v53 + 4 * v198);
                  *(v53 + 4 * v198) = v202 + 1;
                  *(v201 + 2 * v202) = v200;
                }
              }

              v37[v198] += *(v322 + v198);
              ++v198;
              v110 = v320;
            }

            while (v198 != v95);
            v101 = v316;
          }

          v100 = v312;
          goto LABEL_30;
        }
      }

      else if (v325[1] >= 1)
      {
        if (v95 <= 0)
        {
          v234 = &v304[2 * v313];
          do
          {
            v236 = *v234;
            v234 += 2;
            v235 = v236;
            v324 = 0;
            v323 = 0;
            if (v236 != 0xFFFF && (v309 != 6 || v235 != *(a1 + 184)))
            {
              sub_100078D3C(*(a1 + 192), v235, &v324, &v323);
            }

            --v97;
          }

          while (v97);
        }

        else
        {
          v225 = 0;
          do
          {
            v226 = v310[v225];
            v324 = 0;
            v323 = 0;
            if (v226 != 0xFFFF && (v309 != 6 || v226 != *(a1 + 184)))
            {
              sub_100078D3C(*(a1 + 192), v226, &v324, &v323);
              v227 = v323;
              if (v323 >= 1)
              {
                for (k = 0; k != v95; ++k)
                {
                  if (v227 >= 1)
                  {
                    v229 = 0;
                    v230 = v324;
                    do
                    {
                      v231 = v230->i16[v229];
                      v232 = *(v45 + 8 * k);
                      v233 = *(v53 + 4 * k);
                      *(v53 + 4 * k) = v233 + 1;
                      *(v232 + 2 * v233) = v231;
                      v227 = v323;
                      ++v229;
                    }

                    while (v229 < v323);
                  }
                }
              }
            }

            ++v225;
          }

          while (v225 != v97);
        }
      }

LABEL_22:
      v93 = &v308[v325[0]];
    }

    while (*v93);
    if (v95 <= 0)
    {
      v27 = 0;
      v237 = v302;
      *v301 = v302;
      if ((v302 & 0x80000000) == 0)
      {
        goto LABEL_284;
      }

      goto LABEL_287;
    }
  }

  else
  {
    v95 = 1;
  }

  v238 = 0;
  v239 = v95;
  v237 = v302;
  do
  {
    v240 = *(v53 + 4 * v238);
    if (v240 < 1)
    {
      goto LABEL_247;
    }

    v241 = 0;
    v242 = 0;
    do
    {
      v243 = *(v45 + 8 * v238);
      if (*(v243 + 2 * v241))
      {
        *(v243 + 2 * v242++) = *(v243 + 2 * v241);
        v240 = *(v53 + 4 * v238);
      }

      ++v241;
    }

    while (v241 < v240);
    *(v53 + 4 * v238) = v242;
    if (v242 < 1)
    {
LABEL_247:
      *(v53 + 4 * v238) = 0;
    }

    else
    {
      v244 = v242;
      v245 = *(v45 + 8 * v238);
      while (1)
      {
        v246 = *v245++;
        if (v246 != *(a1 + 68))
        {
          break;
        }

        if (!--v244)
        {
          goto LABEL_247;
        }
      }

      if (v238)
      {
        for (m = 0; m != v238; ++m)
        {
          if (*(v53 + 4 * m) == v242)
          {
            v248 = *(v45 + 8 * m);
            v249 = v242;
            v250 = *(v45 + 8 * v238);
            while (1)
            {
              v252 = *v248++;
              v251 = v252;
              v253 = *v250++;
              if (v251 != v253)
              {
                break;
              }

              if (!--v249)
              {
                goto LABEL_247;
              }
            }
          }
        }
      }
    }

    ++v238;
  }

  while (v238 != v95);
  *v301 = v302;
  if (!v297)
  {
    v27 = 0;
    if ((v302 & 0x80000000) != 0)
    {
      goto LABEL_287;
    }

LABEL_284:
    v285 = v298;
    v284 = v299;
    v286 = v302;
    *v301 = 0;
    if (v27 >= 1)
    {
      goto LABEL_288;
    }

    goto LABEL_299;
  }

  v254 = 0;
  v27 = 0;
  v255 = a4;
  do
  {
    v256 = *(v53 + 4 * v254);
    if (!v256)
    {
      goto LABEL_281;
    }

    v237 += ~v256;
    if (*(a1 + 104) >= 1)
    {
      v324 = 0;
      v325[1] = 0;
      sub_100078D3C(*(a1 + 80), *(a1 + 96), &v324, &v325[1]);
      v257 = *(v53 + 4 * v254);
      if (v257 >= 1 && v325[1] >= 1)
      {
        v258 = *(v45 + 8 * v254);
        if (v325[1] < 4u)
        {
          do
          {
            v260 = *v258++;
            v259 = v260;
            v237 -= v260 == v324->u16[0];
            if (v325[1] != 1)
            {
              v237 -= v259 == v324->u16[1];
              if (v325[1] != 2)
              {
                v237 -= v259 == v324->u16[2];
              }
            }

            --v257;
          }

          while (v257);
          goto LABEL_275;
        }

        v261 = 0;
        while (1)
        {
          v262 = v258[v261];
          if (v325[1] < 0x10u)
          {
            break;
          }

          v264 = 0uLL;
          v265 = v237;
          v266 = vdupq_n_s16(v262);
          v267 = v325[1] & 0x7FFFFFF0;
          v268 = v324 + 1;
          v269 = 0uLL;
          v270 = 0uLL;
          do
          {
            v271 = vceqq_s16(v266, v268[-1]);
            v272 = vceqq_s16(v266, *v268);
            v264 = vaddw_high_s16(v264, v271);
            v265 = vaddw_s16(v265, *v271.i8);
            v270 = vaddw_high_s16(v270, v272);
            v269 = vaddw_s16(v269, *v272.i8);
            v268 += 2;
            v267 -= 16;
          }

          while (v267);
          v237 = vaddvq_s32(vaddq_s32(vaddq_s32(v269, v265), vaddq_s32(v270, v264)));
          if ((v325[1] & 0x7FFFFFF0) == v325[1])
          {
            goto LABEL_262;
          }

          v263 = v325[1] & 0x7FFFFFF0;
          v273 = v263;
          if ((v325[1] & 0xC) != 0)
          {
            goto LABEL_269;
          }

LABEL_272:
          v279 = v324 + v273;
          v280 = v325[1] - v273;
          do
          {
            v281 = *v279++;
            v237 -= v262 == v281;
            --v280;
          }

          while (v280);
LABEL_262:
          if (++v261 == v257)
          {
            goto LABEL_275;
          }
        }

        v263 = 0;
LABEL_269:
        v274 = v237;
        v275 = vdup_n_s16(v262);
        v276 = (v324 + 2 * v263);
        v277 = v263 - (v325[1] & 0x7FFFFFFC);
        do
        {
          v278 = *v276++;
          v274 = vaddw_s16(v274, vceq_s16(v275, v278));
          v277 += 4;
        }

        while (v277);
        v237 = vaddvq_s32(v274);
        v273 = v325[1] & 0x7FFFFFFC;
        if (v273 == v325[1])
        {
          goto LABEL_262;
        }

        goto LABEL_272;
      }
    }

LABEL_275:
    if ((v237 & 0x80000000) == 0)
    {
      if (*(v53 + 4 * v254) >= 1)
      {
        v282 = 0;
        v283 = 0;
        do
        {
          v255[v283] = *(*(v45 + 8 * v254) + 2 * v283);
          ++v283;
          v282 += 2;
        }

        while (v283 < *(v53 + 4 * v254));
        v255 = (v255 + v282);
      }

      *v255++ = -1;
      v37[v27] = v37[v254];
      v27 = (v27 + 1);
    }

LABEL_281:
    ++v254;
  }

  while (v254 < v239 && v27 != v315);
  if ((v237 & 0x80000000) == 0)
  {
    goto LABEL_284;
  }

LABEL_287:
  v285 = v298;
  v284 = v299;
  v286 = v302;
  *v301 -= v237;
  if (v27 >= 1)
  {
LABEL_288:
    if (!*(a1 + 80) || (v27 = sub_100092E18(a1, a4, v286, v27), v27 >= 1))
    {
      if (*(a1 + 104) < 1 || (v27 = sub_100092F30(a1, a4, v286, v27, v85, v86, v87, v88), v27 >= 1))
      {
        v287 = 0;
        if (v27 < 4)
        {
          goto LABEL_297;
        }

        if ((v285 - v37) < 0x20)
        {
          goto LABEL_297;
        }

        v287 = v27 & 0x7FFFFFFC;
        v288 = (v37 + 2);
        v289 = (v285 + 16);
        v290 = v287;
        do
        {
          v291 = *v288;
          *(v289 - 1) = *(v288 - 1);
          *v289 = v291;
          v288 += 2;
          v289 += 2;
          v290 -= 4;
        }

        while (v290);
        if (v287 != v27)
        {
LABEL_297:
          v292 = (v285 + 8 * v287);
          v293 = &v37[v287];
          v294 = v27 - v287;
          do
          {
            v295 = *v293++;
            *v292++ = v295;
            --v294;
          }

          while (v294);
        }
      }
    }
  }

LABEL_299:
  sub_1000CA0A0(v284);
  return v27;
}

uint64_t sub_1000973BC(uint64_t a1, unint64_t a2, int a3, unsigned __int16 *a4, _DWORD *a5, _DWORD *a6)
{
  v12 = sub_1000CB75C(a2);
  v98 = 1;
  v101 = a3;
  if (a3 > 4)
  {
    if (a3 == 6)
    {
      goto LABEL_21;
    }

    if (a3 != 5)
    {
      goto LABEL_80;
    }

    if (v12 <= 0)
    {
      LODWORD(v29) = 0;
      *a6 = 0;
      v100 = -1;
      LODWORD(v103) = 0;
      *a4 = 0;
      goto LABEL_70;
    }

    v20 = 0;
    v21 = 0;
    v22 = a2;
    v99 = v12;
    v23 = v12;
    do
    {
      while (1)
      {
        v25 = *v22++;
        v24 = v25;
        if (!sub_1000CA374(v25))
        {
          break;
        }

        v20 = 1;
        if (!--v23)
        {
          goto LABEL_14;
        }
      }

      if (sub_1000CA4AC(v24))
      {
        v21 = 1;
      }

      --v23;
    }

    while (v23);
LABEL_14:
    if (v20)
    {
      v26 = v21 == 0;
    }

    else
    {
      v26 = 1;
    }

    v27 = v26;
    v98 = v27;
    v12 = v99;
    a3 = v101;
  }

  else if (a3 != 3)
  {
    if (a3 == 4)
    {
      v98 = 0;
      goto LABEL_21;
    }

LABEL_80:
    result = 0;
    *a5 = 0;
    *a6 = 0;
    return result;
  }

LABEL_21:
  *a6 = 0;
  if (v12 >= 1)
  {
    v28 = 0;
    LODWORD(v29) = 0;
    v96 = a4 + 8;
    v97 = a5;
    v100 = -1;
    v30 = v12;
    while (1)
    {
      while (1)
      {
        v31 = *(a2 + 2 * v28);
        v104 = 0;
        ++*a6;
        LOWORD(v104) = v31;
        if (a3 != 6 || v31 != 94)
        {
          break;
        }

        v100 = v29;
        if (++v28 == v30)
        {
LABEL_69:
          LODWORD(v103) = v29;
          a4[v29] = 0;
          if (v29 != 1)
          {
            goto LABEL_70;
          }

LABEL_96:
          result = 0;
          *a5 = 1;
          return result;
        }
      }

      v32 = sub_1000792A8(*(a1 + 208), &v104);
      if (v32 == 0xFFFF)
      {
        break;
      }

      v103 = 0;
      v102 = 0;
      sub_100078D3C(*(a1 + 224), v32, &v103, &v102);
      if (!v102)
      {
        goto LABEL_50;
      }

      v33 = *v103;
      if (v102 >= 2)
      {
        v34 = &a4[v29];
        v35 = v103 + 1;
        v36 = v102 - 1;
        do
        {
          *v34++ = v33;
          v37 = *v35++;
          v33 = v37;
          LODWORD(v29) = v29 + 1;
          --v36;
        }

        while (v36);
      }

LABEL_51:
      if (v29 < 1)
      {
        if (!v33)
        {
          v86 = sub_1000792A8(*(a1 + 168), &v104);
          result = 0;
          v87 = &a4[v29];
          *v87 = v86;
          v87[1] = 0;
          *a5 = 1;
          *a6 = 1;
          return result;
        }
      }

      else if (!v33 || (v98 & 1) == 0 && sub_1000CA4AC(v31))
      {
        LODWORD(v103) = v29;
        --*a6;
        a3 = v101;
        a4[v29] = 0;
        if (v29 != 1)
        {
          goto LABEL_70;
        }

        goto LABEL_96;
      }

      a4[v29] = v33;
      LODWORD(v29) = v29 + 1;
      a3 = v101;
      if (++v28 == v30)
      {
        goto LABEL_69;
      }
    }

    if (!*(a1 + 244) || sub_1000CA104(v31, 0) != 9)
    {
LABEL_50:
      v33 = 0;
      goto LABEL_51;
    }

    v103 = 0;
    v102 = 0;
    sub_100078D3C(*(a1 + 224), (*(a1 + 248) + (v31 + 21504) / 0x24Cu), &v103, &v102);
    v38 = v102;
    if (v102 >= 1)
    {
      v39 = v103;
      v29 = v29;
      if (v102 < 0x10 || (v40 = v29, (&a4[v40] - v103) < 0x20))
      {
        v41 = 0;
LABEL_41:
        v42 = &v39[v41];
        v43 = v38 - v41;
        v44 = v29;
        do
        {
          v45 = *v42++;
          LODWORD(v29) = v44 + 1;
          a4[v44++] = v45;
          --v43;
        }

        while (v43);
        goto LABEL_43;
      }

      v41 = v102 & 0x7FFFFFF0;
      v29 = v41 + v29;
      v58 = &v96[v40];
      v59 = (v103 + 8);
      v60 = v41;
      do
      {
        v61 = *v59;
        *(v58 - 1) = *(v59 - 1);
        *v58 = v61;
        v58 += 16;
        v59 += 2;
        v60 -= 16;
      }

      while (v60);
      if (v41 != v38)
      {
        goto LABEL_41;
      }
    }

LABEL_43:
    sub_100078D3C(*(a1 + 224), (*(a1 + 250) + (v31 + 21504) % 0x24Cu / 0x1C), &v103, &v102);
    v46 = v102;
    if (v102 < 1)
    {
      a5 = v97;
      goto LABEL_57;
    }

    v47 = v103;
    v29 = v29;
    a5 = v97;
    if (v102 >= 0x10 && (v48 = v29, (&a4[v48] - v103) >= 0x20))
    {
      v49 = v102 & 0x7FFFFFF0;
      v29 = v49 + v29;
      v62 = &v96[v48];
      v63 = (v103 + 8);
      v64 = v49;
      do
      {
        v65 = *v63;
        *(v62 - 1) = *(v63 - 1);
        *v62 = v65;
        v62 += 16;
        v63 += 2;
        v64 -= 16;
      }

      while (v64);
      if (v49 == v46)
      {
LABEL_57:
        sub_100078D3C(*(a1 + 224), (*(a1 + 252) + (v31 + 21504) % 0x1Cu), &v103, &v102);
        v33 = *v103;
        if (v102 > 1)
        {
          v54 = &a4[v29];
          v55 = v103 + 1;
          v56 = v102 - 1;
          do
          {
            *v54++ = v33;
            v57 = *v55++;
            v33 = v57;
            LODWORD(v29) = v29 + 1;
            --v56;
          }

          while (v56);
        }

        goto LABEL_51;
      }
    }

    else
    {
      v49 = 0;
    }

    v50 = &v47[v49];
    v51 = v46 - v49;
    v52 = v29;
    do
    {
      v53 = *v50++;
      LODWORD(v29) = v52 + 1;
      a4[v52++] = v53;
      --v51;
    }

    while (v51);
    goto LABEL_57;
  }

  LODWORD(v29) = 0;
  v100 = -1;
  LODWORD(v103) = 0;
  *a4 = 0;
LABEL_70:
  v66 = 2 * (v29 + 1);
  v67 = sub_1000C9F54(v66, v13, v14, v15, v16, v17, v18, v19);
  v68 = v67;
  *v67 = 0;
  if (v29 < 1)
  {
    if (!*(a1 + 408))
    {
      goto LABEL_89;
    }

    goto LABEL_82;
  }

  v69 = a5;
  v70 = v29;
  v71 = v29;
  v72 = v67;
  v73 = a4;
  do
  {
    v74 = *v73++;
    *v72++ = *sub_1000793B0(*(a1 + 168), v74);
    --v71;
  }

  while (v71);
  *(v68 + v29) = 0;
  a5 = v69;
  a3 = v101;
  if (*(a1 + 408) && v29 < 0x32)
  {
LABEL_82:
    if (sub_10009834C(a1, v68))
    {
      goto LABEL_83;
    }

LABEL_89:
    *a5 = v29;
    sub_1000CA03C(v68, v66);
    return 0;
  }

  v75 = a4;
  while (1)
  {
    v76 = *v75++;
    if (*(*(a1 + 264) + 2 * v76) != -1)
    {
      break;
    }

    if (!--v70)
    {
      goto LABEL_89;
    }
  }

LABEL_83:
  sub_1000CA03C(v68, v66);
  if (a3 != 6 || v100 == -1)
  {
    if (a3 != 6 && *(a1 + 312))
    {
      sub_100098870(a1, a4, &v103, v78, v79, v80, v81, v82);
      LODWORD(v29) = v103;
    }

    goto LABEL_110;
  }

  if (v29 > v100)
  {
    v83 = v29 - v100;
    v84 = v29;
    if (v83 >= 4)
    {
      if (v83 < 0x10)
      {
        v85 = 0;
        goto LABEL_102;
      }

      v85 = v83 & 0xFFFFFFFFFFFFFFF0;
      v88 = &a4[v29 - 8];
      v89 = v83 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v90 = *(v88 - 1);
        *(v88 + 1) = *v88;
        *(v88 - 7) = v90;
        v88 -= 16;
        v89 -= 16;
      }

      while (v89);
      if (v83 == v85)
      {
        goto LABEL_109;
      }

      if ((v83 & 0xC) != 0)
      {
LABEL_102:
        v84 = v29 - (v83 & 0xFFFFFFFFFFFFFFFCLL);
        v91 = v85 - (v83 & 0xFFFFFFFFFFFFFFFCLL);
        v92 = &a4[v29 - v85 - 4];
        do
        {
          *(v92 + 1) = *v92;
          v92 -= 4;
          v91 += 4;
        }

        while (v91);
        if (v83 == (v83 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_109;
        }

        goto LABEL_107;
      }

      v84 = v29 - v85;
    }

LABEL_107:
    v93 = &a4[v84];
    v94 = v93;
    do
    {
      v95 = *--v94;
      *v93 = v95;
      --v84;
      v93 = v94;
    }

    while (v84 > v100);
  }

LABEL_109:
  a4[v100] = *(a1 + 184);
  LODWORD(v29) = v29 + 1;
LABEL_110:
  *a5 = v29;
  return 1;
}

uint64_t sub_100097AC4(uint64_t a1)
{
  v2 = sub_1000C0034(568);
  v3 = v2;
  if (v2)
  {
    if (!sub_100093680(v2, a1))
    {
LABEL_154:
      sub_1000BFEC4(v3);
      return 0;
    }

    if (sub_1000BBDFC(a1, (v3 + 184)))
    {
      if (sub_1000BBD54(a1, (v3 + 240)) && sub_1000BBD04(a1, (v3 + 244)))
      {
        if (sub_1000BBDFC(a1, (v3 + 248)))
        {
          if (sub_1000BBDFC(a1, (v3 + 250)))
          {
            if (sub_1000BBDFC(a1, (v3 + 252)))
            {
              if (sub_1000BBD54(a1, (v3 + 256)) && sub_1000BBD54(a1, (v3 + 260)) && sub_1000BBD54(a1, (v3 + 280)) && sub_1000BBD54(a1, (v3 + 304)))
              {
                v4 = (v3 + 328);
                if (sub_1000BBD54(a1, (v3 + 328)))
                {
                  v5 = (v3 + 504);
                  if (sub_1000BBD54(a1, (v3 + 504)) && sub_1000BBD54(a1, (v3 + 528)))
                  {
                    v6 = sub_1000794EC(a1);
                    *(v3 + 176) = v6;
                    if (v6)
                    {
                      *(v3 + 168) = v6;
                      v7 = sub_100078E20(a1);
                      *(v3 + 200) = v7;
                      if (v7)
                      {
                        *(v3 + 192) = v7;
                        v8 = sub_1000794EC(a1);
                        *(v3 + 216) = v8;
                        if (v8)
                        {
                          *(v3 + 208) = v8;
                          v9 = sub_100078E20(a1);
                          *(v3 + 232) = v9;
                          if (v9)
                          {
                            *(v3 + 224) = v9;
                            v10 = sub_1000792A0(*(v3 + 168));
                            v34 = 0;
                            if (sub_1000BBF0C(a1, 2, (v3 + 272), &v34))
                            {
                              v11 = *(v3 + 272);
                              if (v11)
                              {
                                if (v10 + 1 != v34)
                                {
                                  goto LABEL_153;
                                }

                                *(v3 + 264) = v11;
                              }

                              v34 = 0;
                              if (sub_1000BBF0C(a1, 2, (v3 + 296), &v34))
                              {
                                v12 = *(v3 + 296);
                                if (v12)
                                {
                                  if (v34 != *(v3 + 280))
                                  {
                                    goto LABEL_153;
                                  }

                                  *(v3 + 288) = v12;
                                }

                                if (*v5 >= 1)
                                {
                                  v13 = sub_1000794EC(a1);
                                  *(v3 + 416) = v13;
                                  if (!v13)
                                  {
                                    goto LABEL_153;
                                  }

                                  *(v3 + 408) = v13;
                                  v14 = sub_1000794EC(a1);
                                  *(v3 + 432) = v14;
                                  if (!v14)
                                  {
                                    goto LABEL_153;
                                  }

                                  *(v3 + 424) = v14;
                                  v15 = sub_1000794EC(a1);
                                  *(v3 + 448) = v15;
                                  if (!v15)
                                  {
                                    goto LABEL_153;
                                  }

                                  *(v3 + 440) = v15;
                                  v16 = sub_1000794EC(a1);
                                  *(v3 + 464) = v16;
                                  if (!v16)
                                  {
                                    goto LABEL_153;
                                  }

                                  *(v3 + 456) = v16;
                                  v17 = sub_1000794EC(a1);
                                  *(v3 + 480) = v17;
                                  if (!v17)
                                  {
                                    goto LABEL_153;
                                  }

                                  *(v3 + 472) = v17;
                                  v18 = sub_1000794EC(a1);
                                  *(v3 + 496) = v18;
                                  if (!v18)
                                  {
                                    goto LABEL_153;
                                  }

                                  *(v3 + 488) = v18;
                                  v34 = 0;
                                  v19 = (v3 + 520);
                                  if (!sub_1000BBF0C(a1, 2, (v3 + 520), &v34))
                                  {
                                    goto LABEL_153;
                                  }

                                  if (*v19)
                                  {
                                    if (v34 != *v5)
                                    {
                                      goto LABEL_153;
                                    }

                                    *(v3 + 512) = *v19;
                                  }

                                  v34 = 0;
                                  v20 = (v3 + 544);
                                  if (!sub_1000BBF0C(a1, 2, (v3 + 544), &v34))
                                  {
                                    goto LABEL_153;
                                  }

                                  if (*v20)
                                  {
                                    if (v34 != *(v3 + 528))
                                    {
                                      goto LABEL_153;
                                    }

                                    *(v3 + 536) = *v20;
                                  }
                                }

                                v21 = sub_100076A84(a1);
                                *(v3 + 560) = v21;
                                if (v21)
                                {
                                  *(v3 + 552) = v21;
                                  v34 = 0;
                                  if (sub_1000BBF0C(a1, 4, (v3 + 320), &v34))
                                  {
                                    v22 = *(v3 + 320);
                                    if (!v22)
                                    {
                                      if (!*(v3 + 312))
                                      {
                                        goto LABEL_152;
                                      }

                                      goto LABEL_49;
                                    }

                                    if (v34 == *(v3 + 304) + 1)
                                    {
                                      *(v3 + 312) = v22;
LABEL_49:
                                      v23 = *v4;
                                      if (v23)
                                      {
                                        v24 = sub_1000C0034(4 * v23);
                                        if (v24)
                                        {
                                          v25 = v24;
                                          v26 = *v4;
                                          if (*v4 < 1)
                                          {
                                            LODWORD(v27) = 0;
                                          }

                                          else
                                          {
                                            v27 = 0;
                                            v28 = v24;
                                            do
                                            {
                                              if (!sub_1000BBDFC(a1, v28))
                                              {
                                                break;
                                              }

                                              if (!sub_1000BBDA4(a1, (v28 + 2)))
                                              {
                                                break;
                                              }

                                              if (!sub_1000BBDA4(a1, (v28 + 3)))
                                              {
                                                break;
                                              }

                                              ++v27;
                                              v28 += 4;
                                            }

                                            while (v27 < *v4);
                                            v26 = *v4;
                                          }

                                          if (v27 >= v26)
                                          {
                                            v29 = sub_1000C0034(128);
                                            if (v29)
                                            {
                                              v30 = v29;
                                              v34 = 0;
                                              if (sub_1000BBD54(a1, &v34) && v34 >= -1 && v34 < *v4)
                                              {
                                                if (v34 != -1)
                                                {
                                                  *v30 = v25 + 4 * v34;
                                                }

                                                v34 = 0;
                                                if (sub_1000BBD54(a1, &v34) && v34 >= -1 && v34 < *v4)
                                                {
                                                  if (v34 != -1)
                                                  {
                                                    v30[1] = v25 + 4 * v34;
                                                  }

                                                  v34 = 0;
                                                  if (sub_1000BBD54(a1, &v34) && v34 >= -1 && v34 < *v4)
                                                  {
                                                    if (v34 != -1)
                                                    {
                                                      v30[2] = v25 + 4 * v34;
                                                    }

                                                    v34 = 0;
                                                    if (sub_1000BBD54(a1, &v34) && v34 >= -1 && v34 < *v4)
                                                    {
                                                      if (v34 != -1)
                                                      {
                                                        v30[3] = v25 + 4 * v34;
                                                      }

                                                      v34 = 0;
                                                      if (sub_1000BBD54(a1, &v34) && v34 >= -1 && v34 < *v4)
                                                      {
                                                        if (v34 != -1)
                                                        {
                                                          v30[4] = v25 + 4 * v34;
                                                        }

                                                        v34 = 0;
                                                        if (sub_1000BBD54(a1, &v34) && v34 >= -1 && v34 < *v4)
                                                        {
                                                          if (v34 != -1)
                                                          {
                                                            v30[5] = v25 + 4 * v34;
                                                          }

                                                          v34 = 0;
                                                          if (sub_1000BBD54(a1, &v34) && v34 >= -1 && v34 < *v4)
                                                          {
                                                            if (v34 != -1)
                                                            {
                                                              v30[6] = v25 + 4 * v34;
                                                            }

                                                            v34 = 0;
                                                            if (sub_1000BBD54(a1, &v34) && v34 >= -1 && v34 < *v4)
                                                            {
                                                              if (v34 != -1)
                                                              {
                                                                v30[7] = v25 + 4 * v34;
                                                              }

                                                              v34 = 0;
                                                              if (sub_1000BBD54(a1, &v34) && v34 >= -1 && v34 < *v4)
                                                              {
                                                                if (v34 != -1)
                                                                {
                                                                  v30[8] = v25 + 4 * v34;
                                                                }

                                                                v34 = 0;
                                                                if (sub_1000BBD54(a1, &v34) && v34 >= -1 && v34 < *v4)
                                                                {
                                                                  if (v34 != -1)
                                                                  {
                                                                    v30[9] = v25 + 4 * v34;
                                                                  }

                                                                  v34 = 0;
                                                                  if (sub_1000BBD54(a1, &v34) && v34 >= -1 && v34 < *v4)
                                                                  {
                                                                    if (v34 != -1)
                                                                    {
                                                                      v30[10] = v25 + 4 * v34;
                                                                    }

                                                                    v34 = 0;
                                                                    if (sub_1000BBD54(a1, &v34) && v34 >= -1 && v34 < *v4)
                                                                    {
                                                                      if (v34 != -1)
                                                                      {
                                                                        v30[11] = v25 + 4 * v34;
                                                                      }

                                                                      v34 = 0;
                                                                      if (sub_1000BBD54(a1, &v34) && v34 >= -1 && v34 < *v4)
                                                                      {
                                                                        if (v34 != -1)
                                                                        {
                                                                          v30[12] = v25 + 4 * v34;
                                                                        }

                                                                        v34 = 0;
                                                                        if (sub_1000BBD54(a1, &v34) && v34 >= -1 && v34 < *v4)
                                                                        {
                                                                          if (v34 != -1)
                                                                          {
                                                                            v30[13] = v25 + 4 * v34;
                                                                          }

                                                                          v34 = 0;
                                                                          if (sub_1000BBD54(a1, &v34) && v34 >= -1 && v34 < *v4)
                                                                          {
                                                                            if (v34 != -1)
                                                                            {
                                                                              v30[14] = v25 + 4 * v34;
                                                                            }

                                                                            v34 = 0;
                                                                            if (sub_1000BBD54(a1, &v34) && v34 >= -1 && v34 < *v4)
                                                                            {
                                                                              if (v34 != -1)
                                                                              {
                                                                                v30[15] = v25 + 4 * v34;
                                                                              }

                                                                              v34 = 0;
                                                                              if (sub_1000BBF0C(a1, 4, (v3 + 376), &v34))
                                                                              {
                                                                                v31 = *(v3 + 376);
                                                                                if (!v31 || v34 == 16)
                                                                                {
                                                                                  if (v31)
                                                                                  {
                                                                                    *(v3 + 368) = v31;
                                                                                  }

                                                                                  if (sub_1000BBD54(a1, (v3 + 384)))
                                                                                  {
                                                                                    v34 = 0;
                                                                                    if (sub_1000BBF0C(a1, 2, (v3 + 400), &v34))
                                                                                    {
                                                                                      v32 = *(v3 + 400);
                                                                                      if (!v32)
                                                                                      {
LABEL_151:
                                                                                        *(v3 + 336) = v25;
                                                                                        *(v3 + 344) = v25;
                                                                                        *(v3 + 352) = v30;
                                                                                        *(v3 + 360) = v30;
                                                                                        goto LABEL_152;
                                                                                      }

                                                                                      if (v34 == *(v3 + 384))
                                                                                      {
                                                                                        *(v3 + 392) = v32;
                                                                                        goto LABEL_151;
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
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }

                                        goto LABEL_153;
                                      }

LABEL_152:
                                      *(v3 + 8) = sub_100096324;
                                      *(v3 + 24) = 0;
                                      *(v3 + 32) = 0;
                                      *(v3 + 16) = sub_1000963F8;
                                      return v3;
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
      }
    }

LABEL_153:
    sub_100096324(v3);
    goto LABEL_154;
  }

  return v3;
}

BOOL sub_10009834C(uint64_t a1, unint64_t a2)
{
  if (qword_1001065A8)
  {
    v41 = *(qword_1001065A8 + 4288);
    LODWORD(v40) = *(qword_1001065A8 + 4280);
    HIDWORD(v40) = *(qword_1001065A8 + 4272);
  }

  else
  {
    v41 = 0;
    v40 = 0;
  }

  v45 = 0;
  v4 = 0;
  v42 = 0;
  v43 = 0;
  v46 = 0;
  v5 = a2;
  v6 = a2;
  v7 = a2 + 2 * sub_1000CB75C(a2);
  v44 = 0;
  if (a2 >= v7)
  {
    goto LABEL_5;
  }

  while (2)
  {
    while (2)
    {
      v27 = *(a1 + 504);
      if (!v27)
      {
        v32 = v5 + 2;
        if (v7 > v5 + 2)
        {
          v32 = v7;
        }

        v33 = v32 + ~v5;
        if (v33 >= 0x1E)
        {
          if (&v45 >= v5 + (v33 & 0xFFFFFFFFFFFFFFFELL) + 2 || v5 >= &v45 + 2)
          {
            v35 = (v33 >> 1) + 1;
            v9 = (v5 + 2 * (v35 & 0xFFFFFFFFFFFFFFF0));
            v36 = (v5 - 2);
            v37 = v35 & 0xFFFFFFFFFFFFFFF0;
            do
            {
              v36 += 16;
              v37 -= 16;
            }

            while (v37);
            v8 = *v36;
            LOWORD(v45) = *v36;
            if (v35 == (v35 & 0xFFFFFFFFFFFFFFF0))
            {
              goto LABEL_7;
            }
          }

          else
          {
            v9 = v5;
          }
        }

        else
        {
          v9 = v5;
        }

        do
        {
          v38 = *v9++;
          v8 = v38;
          LOWORD(v45) = v38;
        }

        while (v9 < v7);
        goto LABEL_7;
      }

      v8 = *v5;
LABEL_52:
      v28 = 0;
      while (1)
      {
        v29 = (v27 - 1) / 2;
        v30 = v29 + v28;
        v31 = *(*(a1 + 512) + 2 * (v29 + v28));
        if (v31 <= v8)
        {
          break;
        }

LABEL_53:
        v27 = v29;
        if (!v29)
        {
          goto LABEL_60;
        }
      }

      if (v31 != v8)
      {
        v29 = v27 + ~v29;
        v28 = v30 + 1;
        goto LABEL_53;
      }

      if (v5 != a2 && (!v4 || sub_1000792A8(*(a1 + 488), &v45) != 0xFFFF))
      {
LABEL_60:
        while (1)
        {
          v5 += 2;
          LOWORD(v45) = v8;
          if (v5 >= v7)
          {
            break;
          }

          v27 = *(a1 + 504);
          v4 = v8;
          v8 = *v5;
          if (v27)
          {
            goto LABEL_52;
          }
        }
      }

LABEL_6:
      v9 = v5;
LABEL_7:
      if (v9 == v7)
      {
        if (!v43)
        {
          return 0;
        }

        sub_1000CB778(&v46, v6, ((v7 - v6) >> 1) + 1);
        if (v46 && sub_1000792A8(*(a1 + 456), &v46) == 0xFFFF)
        {
          if (sub_1000CB75C(&v46) > v40)
          {
            return 0;
          }
        }

        else if (!v42)
        {
          return 1;
        }

        return sub_1000CB75C(a2) > SHIDWORD(v40);
      }

      v5 = v7;
      if (v7 <= v9)
      {
LABEL_9:
        v4 = 0;
        v10 = v5 - v9;
        if (v5 != v9)
        {
          break;
        }

        goto LABEL_30;
      }

LABEL_11:
      v11 = *(a1 + 528);
      if (!v11)
      {
        do
        {
          v18 = *(v5 - 2);
          v5 -= 2;
          v4 = v18;
          LOWORD(v44) = v18;
        }

        while (v5 > v9);
        goto LABEL_25;
      }

      v12 = v5 - 2;
      v4 = *(v5 - 2);
LABEL_14:
      v14 = 0;
      while (2)
      {
        v15 = (v11 - 1) / 2;
        v16 = v15 + v14;
        v17 = *(*(a1 + 536) + 2 * (v15 + v14));
        if (v17 > v4)
        {
LABEL_15:
          v11 = v15;
          if (!v15)
          {
            goto LABEL_22;
          }

          continue;
        }

        break;
      }

      if (v17 != v4)
      {
        v15 = v11 + ~v15;
        v14 = v16 + 1;
        goto LABEL_15;
      }

      if (v5 == v7)
      {
        v5 = v7;
        v10 = v7 - v9;
        if (v7 != v9)
        {
          break;
        }

        goto LABEL_30;
      }

      if (!v44 || sub_1000792A8(*(a1 + 488), &v44) != 0xFFFF)
      {
LABEL_22:
        while (1)
        {
          LOWORD(v44) = v4;
          if (v12 <= v9)
          {
            break;
          }

          v11 = *(a1 + 528);
          v5 = v12;
          v13 = *(v12 - 2);
          v12 -= 2;
          v4 = v13;
          if (v11)
          {
            goto LABEL_14;
          }
        }

        v5 = v12;
      }

LABEL_25:
      v10 = v5 - v9;
      if (v5 == v9)
      {
LABEL_30:
        v5 = (v9 + 1);
        LOWORD(v45) = v8;
        v4 = v8;
        v44 = 0;
        if ((v9 + 1) < v7)
        {
          continue;
        }

LABEL_5:
        v8 = 0;
        goto LABEL_6;
      }

      break;
    }

    sub_1000CB778(&v46, v9, (v10 >> 1) + 1);
    if (sub_1000792A8(*(a1 + 472), &v46) == 0xFFFF)
    {
      v5 -= 2;
      LOWORD(v44) = v4;
      if (v5 <= v9)
      {
        goto LABEL_9;
      }

      goto LABEL_11;
    }

    sub_1000CB778(&v46, v6, ((v9 - v6) >> 1) + 1);
    if (v43)
    {
      if (v46)
      {
        v19 = v42;
      }

      else
      {
        v19 = 1;
      }

      if (!v46)
      {
        goto LABEL_48;
      }

      if (sub_1000792A8(*(a1 + 440), &v46) != 0xFFFF || sub_1000792A8(*(a1 + 424), &v46) != 0xFFFF)
      {
        goto LABEL_49;
      }

      v20 = sub_1000CB75C(&v46);
      if (v20 < 2)
      {
        goto LABEL_48;
      }

      v21 = v20 - 1;
      v22 = &v47;
      while (1)
      {
        v23 = *v22;
        *v22 = 0;
        v24 = sub_1000792A8(*(a1 + 424), &v46);
        *v22 = v23;
        if (v24 != 0xFFFF)
        {
          v25 = *(v22 - 1);
          *(v22 - 1) = 0;
          v26 = sub_1000792A8(*(a1 + 440), v22);
          *(v22 - 1) = v25;
          if (v26 != 0xFFFF)
          {
            break;
          }
        }

        ++v22;
        v42 = 1;
        if (!--v21)
        {
          goto LABEL_49;
        }
      }

      v42 = v19;
LABEL_49:
      ++v43;
      v44 = 0;
      LOWORD(v45) = v4;
      v6 = v5;
      if (v5 >= v7)
      {
        goto LABEL_5;
      }

      continue;
    }

    break;
  }

  if (!v46 || sub_1000792A8(*(a1 + 408), &v46) != 0xFFFF)
  {
    goto LABEL_49;
  }

  if (sub_1000CB75C(&v46) <= v41)
  {
LABEL_48:
    v42 = 1;
    goto LABEL_49;
  }

  return 0;
}

void *sub_100098870(uint64_t a1, unsigned __int16 *a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *a3;
  v12 = v11 + 1;
  v13 = sub_1000C9F54(2 * (v11 + 1), a2, a3, a4, a5, a6, a7, a8);
  v14 = 0;
  *v13 = 0;
  v15 = a2;
  v16 = *a2;
  if (v16 == 0xFFFF)
  {
    do
    {
LABEL_4:
      v17 = v15[1];
      ++v15;
      v16 = v17;
    }

    while (v17 == 0xFFFF);
  }

  while (v16)
  {
    v18 = *(*(a1 + 264) + 2 * v16);
    if (v18 != 0xFFFF)
    {
      v19 = 0;
      v20 = 0;
      v21 = (*(a1 + 288) + 2 * v18);
      v22 = *v21;
      do
      {
        v23 = 0;
        v24 = v21 + 1;
        while (1)
        {
          v25 = v22;
          v21 = v24;
          v26 = v15[v23];
          if (v22 != v26)
          {
            break;
          }

          ++v24;
          v22 = *v21;
          ++v23;
          if (!*v21)
          {
            v19 = 1;
            break;
          }
        }

        if (v23 <= v20)
        {
          v27 = v20;
        }

        else
        {
          v27 = v23;
        }

        if (v25 == v26)
        {
          v20 = v27;
        }

        if (v23 < v20)
        {
          break;
        }

          ;
        }

        v22 = *v21;
      }

      while (*v21);
      if (v19)
      {
        *(v13 + ++v14) = (v15 - a2) >> 1;
        v15 += v20;
        v16 = *v15;
        if (v16 != 0xFFFF)
        {
          continue;
        }
      }
    }

    goto LABEL_4;
  }

  if (!v14)
  {

    return sub_1000CA03C(v13, 2 * v12);
  }

  if (v14 <= *(a1 + 304))
  {
    v29 = v14;
  }

  else
  {
    v29 = 0;
  }

  v30 = *(*(a1 + 312) + 4 * v29);
  if (v14 > 0xF)
  {
    goto LABEL_69;
  }

  v31 = *(a1 + 352);
  if (!v31)
  {
    goto LABEL_69;
  }

  v32 = *(v31 + 8 * v14);
  if (!v32)
  {
    goto LABEL_69;
  }

  v33 = *(*(a1 + 368) + 4 * v14);
  if (v33 < 1)
  {
    goto LABEL_69;
  }

  v34 = 0;
  v35 = *(a1 + 392);
  v36 = &a2[v11];
  v37 = v35 + 2;
  while (1)
  {
    v39 = (v32 + 4 * v34);
    v40 = *v39;
    v41 = (v35 + 2 * v40);
    v42 = *v41;
    if (*v41)
    {
      v43 = 0;
        ;
      }

      if (v43 > v11)
      {
        goto LABEL_35;
      }
    }

    else
    {
      LODWORD(v43) = 0;
      if (v11 < 0)
      {
        goto LABEL_35;
      }
    }

    v45 = *(v39 + 2);
    if (v45 != 1)
    {
      break;
    }

    if (v36[-v43] == v42)
    {
      v47 = v43;
      v48 = (v37 + 2 * v40);
      v49 = &v36[-v47 + 1];
      while (v42)
      {
        v50 = *v49++;
        v42 = v50;
        v51 = *v48++;
        if (v42 != v51)
        {
          goto LABEL_35;
        }
      }

LABEL_67:
      v30 = *(v39 + 3);
      goto LABEL_69;
    }

LABEL_35:
    if (++v34 == v33)
    {
      goto LABEL_69;
    }
  }

  if (v45 == 255)
  {
    v46 = a2;
    if (!v43)
    {
      goto LABEL_67;
    }

    while (*v46 == *v41)
    {
      ++v41;
      ++v46;
      LODWORD(v43) = v43 - 1;
      if (!v43)
      {
        goto LABEL_67;
      }
    }

    goto LABEL_35;
  }

  if (v43)
  {
    v52 = 0;
    do
    {
      v53 = &a2[v52];
      v54 = v43;
      v55 = (v35 + 2 * v40);
      while (*v53 == *v55)
      {
        ++v55;
        ++v53;
        if (!--v54)
        {
          goto LABEL_62;
        }
      }

      ++v52;
    }

    while (v52 != v12 - v43);
    goto LABEL_35;
  }

  LODWORD(v52) = 0;
LABEL_62:
  v56 = *(v39 + 3);
  if (v56)
  {
    v30 = v56;
  }

  else
  {
    v57 = v14;
    v58 = 1;
    while (v52 != *(v13 + v58))
    {
      ++v58;
      if (!--v57)
      {
        goto LABEL_35;
      }
    }

    v30 = v58;
  }

LABEL_69:
  if (v30 >= v14)
  {
    v59 = v14;
  }

  else
  {
    v59 = v30;
  }

  if (v30 < -v14)
  {
    v60 = 1;
  }

  else
  {
    v60 = v59;
  }

  v61 = v13 + v60 + v14 + 1;
  if (v60 >= 0)
  {
    v61 = v13 + v60;
  }

  v62 = *v61;
  v63 = &a2[v62];
  if (v11 > v62)
  {
    v64 = &a2[v11];
    v65 = v64;
    do
    {
      v66 = *--v65;
      *v64 = v66;
      v64 = v65;
    }

    while (v65 > v63);
  }

  *v63 = *(a1 + 184);
  result = sub_1000CA03C(v13, 2 * v12);
  ++*a3;
  return result;
}

unint64_t sub_100098BE4(unint64_t result)
{
  v1 = result;
  LODWORD(result) = -1;
  do
  {
    v2 = *v1++;
    result = (result + 1);
  }

  while (v2 != -1);
  return result;
}

unint64_t sub_100098C00(unint64_t result)
{
  v1 = result;
  LODWORD(result) = -1;
  do
  {
    v2 = *v1++;
    result = (result + 1);
  }

  while (v2 != 0x7FFF);
  return result;
}

uint64_t sub_100098C20(uint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_1000BFEC4(*(result + 192));
    sub_1000BFEC4(v1[21]);
    sub_1000BFEC4(v1[19]);
    sub_1000BFEC4(v1[17]);
    sub_1000BFEC4(v1[14]);
    sub_1000BFEC4(v1[11]);
    sub_1000BFEC4(v1[9]);
    sub_1000BFEC4(v1[6]);
    sub_100078808(v1[3]);

    return sub_1000BFEC4(v1);
  }

  return result;
}

uint64_t sub_100098CA8(uint64_t a1)
{
  v2 = -1;
  v3 = sub_1000BD6C8(*a1, 4, 0xFFFFFFFF);
  v4 = sub_1000BD6C8(*(a1 + 4), 4, v3);
  v5 = sub_1000BD6C8(*(a1 + 8), 4, v4);
  v6 = sub_1000BD6C8(*(a1 + 32), 4, v5);
  v7 = sub_1000BD6C8(*(a1 + 56), 4, v6);
  v8 = sub_1000BD6C8(*(a1 + 96), 4, v7);
  v9 = sub_1000BD6C8(*(a1 + 120), 4, v8);
  v10 = sub_1000BD6C8(*(a1 + 176), 4, v9);
  v11 = sub_10007885C(*(a1 + 16));
  v12 = sub_1000BD6C8(v11, 4, v10);
  v13 = sub_1000BD7F4(*(a1 + 40), 2, *(a1 + 32), 0xFFFFFFFFLL);
  v14 = sub_1000BD6C8(v13, 4, v12);
  v15 = sub_1000BD7F4(*(a1 + 64), 2, *(a1 + 56), 0xFFFFFFFFLL);
  v16 = sub_1000BD6C8(v15, 4, v14);
  v17 = sub_1000BD7F4(*(a1 + 80), 4, *(a1 + 56) + 1, 0xFFFFFFFFLL);
  v18 = sub_1000BD6C8(v17, 4, v16);
  v19 = sub_1000BD7F4(*(a1 + 104), 2, *(a1 + 96) + 1, 0xFFFFFFFFLL);
  v20 = sub_1000BD6C8(v19, 4, v18);
  if (*(a1 + 120) >= 1)
  {
    v21 = 0;
    v22 = 0;
    do
    {
      v23 = sub_1000BD6C8(*(*(a1 + 128) + v21), 2, 0xFFFFFFFF);
      v24 = sub_1000BD6C8(*(*(a1 + 128) + v21 + 2), 2, v23);
      v25 = sub_1000BD6C8(*(*(a1 + 128) + v21 + 4), 2, v24);
      v2 = sub_1000BD6C8(v25, 4, v2);
      ++v22;
      v21 += 6;
    }

    while (v22 < *(a1 + 120));
  }

  v26 = sub_1000BD6C8(v2, 4, v20);
  v27 = **(a1 + 144);
  if (v27)
  {
    v28 = -1431655765 * ((v27 - *(a1 + 128)) >> 1);
  }

  else
  {
    v28 = -1;
  }

  v29 = -1;
  v30 = sub_1000BD6C8(v28, 4, 0xFFFFFFFF);
  v31 = *(*(a1 + 144) + 8);
  if (v31)
  {
    v29 = -1431655765 * ((v31 - *(a1 + 128)) >> 1);
  }

  v32 = sub_1000BD6C8(v29, 4, v30);
  v33 = *(*(a1 + 144) + 16);
  if (v33)
  {
    v34 = sub_1000BD6C8(-1431655765 * ((v33 - *(a1 + 128)) >> 1), 4, v32);
    v35 = *(*(a1 + 144) + 24);
    if (v35)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v34 = sub_1000BD6C8(0xFFFFFFFF, 4, v32);
    v35 = *(*(a1 + 144) + 24);
    if (v35)
    {
LABEL_11:
      v36 = sub_1000BD6C8(-1431655765 * ((v35 - *(a1 + 128)) >> 1), 4, v34);
      v37 = *(*(a1 + 144) + 32);
      if (v37)
      {
        goto LABEL_12;
      }

      goto LABEL_27;
    }
  }

  v36 = sub_1000BD6C8(0xFFFFFFFF, 4, v34);
  v37 = *(*(a1 + 144) + 32);
  if (v37)
  {
LABEL_12:
    v38 = sub_1000BD6C8(-1431655765 * ((v37 - *(a1 + 128)) >> 1), 4, v36);
    v39 = *(*(a1 + 144) + 40);
    if (v39)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

LABEL_27:
  v38 = sub_1000BD6C8(0xFFFFFFFF, 4, v36);
  v39 = *(*(a1 + 144) + 40);
  if (v39)
  {
LABEL_13:
    v40 = sub_1000BD6C8(-1431655765 * ((v39 - *(a1 + 128)) >> 1), 4, v38);
    v41 = *(*(a1 + 144) + 48);
    if (v41)
    {
      goto LABEL_14;
    }

    goto LABEL_29;
  }

LABEL_28:
  v40 = sub_1000BD6C8(0xFFFFFFFF, 4, v38);
  v41 = *(*(a1 + 144) + 48);
  if (v41)
  {
LABEL_14:
    v42 = sub_1000BD6C8(-1431655765 * ((v41 - *(a1 + 128)) >> 1), 4, v40);
    v43 = *(*(a1 + 144) + 56);
    if (v43)
    {
      goto LABEL_15;
    }

    goto LABEL_30;
  }

LABEL_29:
  v42 = sub_1000BD6C8(0xFFFFFFFF, 4, v40);
  v43 = *(*(a1 + 144) + 56);
  if (v43)
  {
LABEL_15:
    v44 = sub_1000BD6C8(-1431655765 * ((v43 - *(a1 + 128)) >> 1), 4, v42);
    v45 = *(*(a1 + 144) + 64);
    if (v45)
    {
      goto LABEL_16;
    }

    goto LABEL_31;
  }

LABEL_30:
  v44 = sub_1000BD6C8(0xFFFFFFFF, 4, v42);
  v45 = *(*(a1 + 144) + 64);
  if (v45)
  {
LABEL_16:
    v46 = sub_1000BD6C8(-1431655765 * ((v45 - *(a1 + 128)) >> 1), 4, v44);
    v47 = *(*(a1 + 144) + 72);
    if (v47)
    {
      goto LABEL_17;
    }

    goto LABEL_32;
  }

LABEL_31:
  v46 = sub_1000BD6C8(0xFFFFFFFF, 4, v44);
  v47 = *(*(a1 + 144) + 72);
  if (v47)
  {
LABEL_17:
    v48 = sub_1000BD6C8(-1431655765 * ((v47 - *(a1 + 128)) >> 1), 4, v46);
    v49 = *(*(a1 + 144) + 80);
    if (v49)
    {
      goto LABEL_18;
    }

    goto LABEL_33;
  }

LABEL_32:
  v48 = sub_1000BD6C8(0xFFFFFFFF, 4, v46);
  v49 = *(*(a1 + 144) + 80);
  if (v49)
  {
LABEL_18:
    v50 = sub_1000BD6C8(-1431655765 * ((v49 - *(a1 + 128)) >> 1), 4, v48);
    v51 = *(*(a1 + 144) + 88);
    if (v51)
    {
      goto LABEL_19;
    }

    goto LABEL_34;
  }

LABEL_33:
  v50 = sub_1000BD6C8(0xFFFFFFFF, 4, v48);
  v51 = *(*(a1 + 144) + 88);
  if (v51)
  {
LABEL_19:
    v52 = sub_1000BD6C8(-1431655765 * ((v51 - *(a1 + 128)) >> 1), 4, v50);
    v53 = *(*(a1 + 144) + 96);
    if (v53)
    {
      goto LABEL_20;
    }

    goto LABEL_35;
  }

LABEL_34:
  v52 = sub_1000BD6C8(0xFFFFFFFF, 4, v50);
  v53 = *(*(a1 + 144) + 96);
  if (v53)
  {
LABEL_20:
    v54 = sub_1000BD6C8(-1431655765 * ((v53 - *(a1 + 128)) >> 1), 4, v52);
    v55 = *(*(a1 + 144) + 104);
    if (v55)
    {
      goto LABEL_21;
    }

    goto LABEL_36;
  }

LABEL_35:
  v54 = sub_1000BD6C8(0xFFFFFFFF, 4, v52);
  v55 = *(*(a1 + 144) + 104);
  if (v55)
  {
LABEL_21:
    v56 = sub_1000BD6C8(-1431655765 * ((v55 - *(a1 + 128)) >> 1), 4, v54);
    v57 = *(*(a1 + 144) + 112);
    if (v57)
    {
      goto LABEL_22;
    }

    goto LABEL_37;
  }

LABEL_36:
  v56 = sub_1000BD6C8(0xFFFFFFFF, 4, v54);
  v57 = *(*(a1 + 144) + 112);
  if (v57)
  {
LABEL_22:
    v58 = sub_1000BD6C8(-1431655765 * ((v57 - *(a1 + 128)) >> 1), 4, v56);
    v59 = *(*(a1 + 144) + 120);
    if (v59)
    {
      goto LABEL_23;
    }

LABEL_38:
    v60 = sub_1000BD6C8(0xFFFFFFFF, 4, v58);
    v61 = *(*(a1 + 144) + 128);
    if (v61)
    {
      goto LABEL_24;
    }

    goto LABEL_39;
  }

LABEL_37:
  v58 = sub_1000BD6C8(0xFFFFFFFF, 4, v56);
  v59 = *(*(a1 + 144) + 120);
  if (!v59)
  {
    goto LABEL_38;
  }

LABEL_23:
  v60 = sub_1000BD6C8(-1431655765 * ((v59 - *(a1 + 128)) >> 1), 4, v58);
  v61 = *(*(a1 + 144) + 128);
  if (v61)
  {
LABEL_24:
    v62 = -1431655765 * ((v61 - *(a1 + 128)) >> 1);
    goto LABEL_40;
  }

LABEL_39:
  v62 = -1;
LABEL_40:
  v63 = sub_1000BD6C8(v62, 4, v60);
  v64 = sub_1000BD6C8(v63, 4, v26);
  v65 = sub_1000BD7F4(*(a1 + 160), 4, 17, 0xFFFFFFFFLL);
  v66 = sub_1000BD6C8(v65, 4, v64);
  v67 = *(a1 + 184);
  if (!v67)
  {
    return v66;
  }

  v68 = sub_1000BD7F4(v67, 2, *(a1 + 176), 0xFFFFFFFFLL);

  return sub_1000BD6C8(v68, 4, v66);
}

_DWORD *sub_1000993EC(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_1000BBAE0(a1, "pm0", a2, a4, a5, a6, a7, a8);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = sub_1000C0034(200);
  if (v10)
  {
    v27 = 0;
    if (!sub_1000BBD54(v9, &v27))
    {
      goto LABEL_57;
    }

    *v10 = v27;
    if (!sub_1000BBD54(v9, v10 + 1))
    {
      goto LABEL_57;
    }

    if (!sub_1000BBD54(v9, v10 + 2))
    {
      goto LABEL_57;
    }

    if (!sub_1000BBD54(v9, v10 + 8))
    {
      goto LABEL_57;
    }

    if (!sub_1000BBD54(v9, v10 + 14))
    {
      goto LABEL_57;
    }

    if (!sub_1000BBD54(v9, v10 + 24))
    {
      goto LABEL_57;
    }

    if (!sub_1000BBD54(v9, v10 + 30))
    {
      goto LABEL_57;
    }

    if (!sub_1000BBD54(v9, v10 + 44))
    {
      goto LABEL_57;
    }

    v11 = sub_1000788B0(v9);
    *(v10 + 3) = v11;
    if (!v11)
    {
      goto LABEL_57;
    }

    *(v10 + 2) = v11;
    v27 = 0;
    if (!sub_1000BBF0C(v9, 2, v10 + 6, &v27))
    {
      goto LABEL_57;
    }

    v12 = *(v10 + 6);
    if (v12)
    {
      if (v27 != v10[8])
      {
        goto LABEL_57;
      }

      *(v10 + 5) = v12;
    }

    v27 = 0;
    if (sub_1000BBF0C(v9, 2, v10 + 9, &v27))
    {
      v13 = *(v10 + 9);
      if (v13)
      {
        if (v27 != v10[14])
        {
          goto LABEL_57;
        }

        *(v10 + 8) = v13;
      }

      v27 = 0;
      if (sub_1000BBF0C(v9, 4, v10 + 11, &v27))
      {
        v14 = *(v10 + 11);
        if (v14)
        {
          if (v27 != v10[14] + 1)
          {
            goto LABEL_57;
          }

          *(v10 + 10) = v14;
        }

        v27 = 0;
        if (sub_1000BBF0C(v9, 2, v10 + 14, &v27))
        {
          v15 = *(v10 + 14);
          if (!v15)
          {
LABEL_28:
            v16 = sub_1000C0034(6 * v10[30]);
            if (v16)
            {
              v17 = v16;
              v18 = v10[30];
              if (v18 < 1)
              {
                LODWORD(v19) = 0;
              }

              else
              {
                v19 = 0;
                v20 = v16;
                do
                {
                  if (!sub_1000BBDFC(v9, v20))
                  {
                    break;
                  }

                  if (!sub_1000BBDFC(v9, v20 + 1))
                  {
                    break;
                  }

                  if (!sub_1000BBDFC(v9, v20 + 2))
                  {
                    break;
                  }

                  ++v19;
                  v20 += 3;
                }

                while (v19 < v10[30]);
                v18 = v10[30];
              }

              if (v19 >= v18)
              {
                v21 = sub_1000C0034(136);
                if (v21)
                {
                  v22 = v21;
                  v23 = 0;
                  while (1)
                  {
                    v27 = 0;
                    if (!sub_1000BBD54(v9, &v27) || v27 < -1 || v27 >= v10[30])
                    {
                      break;
                    }

                    if (v27 != -1)
                    {
                      *(v22 + v23) = v17 + 6 * v27;
                    }

                    v23 += 8;
                    if (v23 == 136)
                    {
                      v27 = 0;
                      if (!sub_1000BBF0C(v9, 4, v10 + 21, &v27))
                      {
                        goto LABEL_57;
                      }

                      v24 = *(v10 + 21);
                      if (v24)
                      {
                        if (v27 != 17)
                        {
                          goto LABEL_57;
                        }
                      }

                      if (v24)
                      {
                        *(v10 + 20) = v24;
                      }

                      v27 = 0;
                      if (!sub_1000BBF0C(v9, 2, v10 + 24, &v27))
                      {
                        goto LABEL_57;
                      }

                      v25 = *(v10 + 24);
                      if (v25)
                      {
                        if (v27 != v10[44])
                        {
                          goto LABEL_57;
                        }

                        *(v10 + 23) = v25;
                      }

                      *(v10 + 16) = v17;
                      *(v10 + 17) = v17;
                      *(v10 + 18) = v22;
                      *(v10 + 19) = v22;
                      goto LABEL_56;
                    }
                  }
                }
              }
            }

            goto LABEL_57;
          }

          if (v27 == v10[24] + 1)
          {
            *(v10 + 13) = v15;
            goto LABEL_28;
          }
        }
      }
    }

LABEL_57:
    sub_1000BBBC4(v9);
    sub_100098C20(v10);
    return 0;
  }

LABEL_56:
  sub_1000BBBC4(v9);
  return v10;
}

uint64_t sub_10009977C(int a1, int a2, int a3, int a4, int a5, uint64_t *a6, uint64_t a7)
{
  result = sub_1000C0034(176);
  if (result)
  {
    *result = a6;
    *(result + 8) = a7;
    *(result + 104) = a1;
    *(result + 108) = a2;
    *(result + 112) = a3;
    *(result + 116) = a4;
    *(result + 120) = a5;
    if (qword_1001065A8 && *(qword_1001065A8 + 4320))
    {
      v15 = result;
      v16 = sub_1000B215C(a6);
      v17 = (v16 + 2);
      v18 = sub_1000C0034(2 * v17);
      if (v18)
      {
        v19 = v18;
        *(v15 + 136) = v16 + 1;
        *(v15 + 128) = v18;
        *(v15 + 16) = 1;
        if (v16 >= -1)
        {
          v21 = 0;
          do
          {
            if (sub_1000B811C(a6, v21, v19) == -1)
            {
              *v19 = -1;
            }

            ++v21;
            v19 = (v19 + 2);
            --v17;
          }

          while (v17);
          return v15;
        }

        else
        {
          return v15;
        }
      }

      else
      {
        sub_1000BFEC4(v15);
        return 0;
      }
    }

    else
    {
      *(result + 16) = 0;
      *(result + 24) = 0;
      *(result + 32) = 0;
      *(result + 80) = 0;
      *(result + 124) = -1;
      v20 = result;
      sub_1000998FC(result);
      return v20;
    }
  }

  return result;
}

uint64_t sub_1000998FC(uint64_t result)
{
  if (result && *(result + 124) && !*(result + 16))
  {
    *(result + 124) = 0;
    *(result + 80) = 0;
    if (*(result + 144) && *(result + 164) >= 1)
    {
      v1 = 0;
      do
      {
        for (i = 0; i != 512; i += 2)
        {
          *(*(*(result + 144) + 8 * v1) + i) = -1;
        }

        ++v1;
      }

      while (v1 < *(result + 164));
    }

    if (*(result + 152) && *(result + 164) >= 1)
    {
      v3 = 0;
      do
      {
        for (j = 0; j != 1024; j += 4)
        {
          *(*(*(result + 152) + 8 * v3) + j) = -1;
        }

        ++v3;
      }

      while (v3 < *(result + 164));
    }

    if (*(result + 108) && *(result + 100) >= 1)
    {
      v5 = 0;
      do
      {
        for (k = 0; k != 1024; k += 4)
        {
          *(*(*(result + 88) + 8 * v5) + k) = -1;
        }

        ++v5;
      }

      while (v5 < *(result + 100));
    }
  }

  return result;
}

uint64_t sub_1000999F8(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 16))
    {
      v2 = 128;
    }

    else
    {
      sub_100099A60(result);
      sub_1000BFEC4(*(v1 + 24));
      v2 = 40;
    }

    sub_1000BFEC4(*(v1 + v2));

    return sub_1000BFEC4(v1);
  }

  return result;
}

uint64_t sub_100099A60(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (!*(result + 16))
    {
      sub_1000C0B14(*(result + 48), *(result + 60), *(result + 56));
      *(v1 + 48) = 0;
      *(v1 + 56) = 0;
      sub_1000C0B14(*(v1 + 64), *(v1 + 76), *(v1 + 72));
      *(v1 + 64) = 0;
      *(v1 + 72) = 0;
      v2 = *(v1 + 144);
      if (v2)
      {
        sub_1000C0B14(v2, *(v1 + 164), *(v1 + 160));
        *(v1 + 144) = 0;
        *(v1 + 160) = 0;
      }

      v3 = *(v1 + 152);
      if (v3)
      {
        sub_1000C0B14(v3, *(v1 + 164), *(v1 + 160));
        *(v1 + 152) = 0;
        *(v1 + 164) = 0;
      }

      result = sub_1000C0B14(*(v1 + 88), *(v1 + 100), *(v1 + 96));
      *(v1 + 80) = 0;
      *(v1 + 124) = 0;
      *(v1 + 88) = 0;
      *(v1 + 96) = 0;
    }
  }

  return result;
}

uint64_t sub_100099B00(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  v2 = sub_1000B2164(*a1);
  if (*(a1 + 32) <= v2 && !*(a1 + 16))
  {
    v3 = 3 * v2;
    v4 = 6 * v2;
    result = sub_1000C0034(v4 + 2);
    if (!result)
    {
      return result;
    }

    v6 = result;
    if (*(a1 + 120))
    {
      result = sub_1000C0034(v4 + 2);
      if (!result)
      {
        return result;
      }

      v7 = result;
      sub_1000BFEC4(*(a1 + 40));
      *(a1 + 40) = v7;
    }

    sub_1000BFEC4(*(a1 + 24));
    *(a1 + 24) = v6;
    *(a1 + 32) = v3;
  }

  return 1;
}

uint64_t sub_100099BA4(uint64_t a1, int a2, int a3)
{
  if (*(a1 + 16))
  {
    return 1;
  }

  v4 = a3;
  if (*(a1 + 112))
  {
    v6 = sub_1000B215C(*a1);
    if (!*(a1 + 112))
    {
      goto LABEL_29;
    }

    v7 = *(a1 + 60);
    if (v7 <= *(a1 + 76))
    {
      v7 = *(a1 + 76);
    }

    if (v7 << 8 < 0x10000)
    {
      v15 = *(a1 + 164);
      *(a1 + 168) = 0;
      result = sub_1000C06E8((a1 + 144), (a1 + 160), (a1 + 164), 8, 2, v6 + 1);
      if (v15 < *(a1 + 164))
      {
        do
        {
          for (i = 0; i != 512; i += 2)
          {
            *(*(*(a1 + 144) + 8 * v15) + i) = -1;
          }

          ++v15;
        }

        while (v15 < *(a1 + 164));
      }
    }

    else
    {
      v8 = *(a1 + 152);
      *(a1 + 168) = 1;
      v9 = v6;
      sub_1000C0B14(v8, *(a1 + 164), *(a1 + 160));
      *(a1 + 152) = 0;
      *(a1 + 164) = 0;
      result = sub_1000C06E8((a1 + 152), (a1 + 160), (a1 + 164), 8, 4, v9 + 1);
      if (*(a1 + 164) >= 1)
      {
        v10 = 0;
        do
        {
          for (j = 0; j != 1024; j += 4)
          {
            *(*(*(a1 + 152) + 8 * v10) + j) = -1;
          }

          ++v10;
        }

        while (v10 < *(a1 + 164));
      }
    }
  }

  else
  {
    if (a3 >= 0xFFFF)
    {
      v4 = 0xFFFF;
    }

    else
    {
      v4 = a3;
    }

    v12 = (a1 + 100);
    v13 = *(a1 + 100);
    result = sub_1000C06E8((a1 + 88), (a1 + 96), (a1 + 100), 8, 4, a2);
    if (*(a1 + 108) && v13 < *v12)
    {
      do
      {
        for (k = 0; k != 1024; k += 4)
        {
          *(*(*(a1 + 88) + 8 * v13) + k) = -1;
        }

        ++v13;
      }

      while (v13 < *v12);
    }
  }

  if (!result)
  {
    return result;
  }

LABEL_29:
  v17 = (v4 + 255) >> 8;
  v18 = *(a1 + 116);
  if (v18 && !*(a1 + 48))
  {
    *(a1 + 56) = v17;
  }

  if (*(a1 + 120) && !*(a1 + 64))
  {
    *(a1 + 72) = v17;
  }

  if (v4 < 0x10000)
  {
    goto LABEL_47;
  }

  v19 = *(a1 + 144);
  if (!v19)
  {
    goto LABEL_47;
  }

  result = sub_1000C0034(8 * *(a1 + 160));
  if (!result)
  {
    return result;
  }

  v20 = result;
  if (*(a1 + 164) < 1)
  {
LABEL_46:
    *(a1 + 152) = v20;
    sub_1000BFEC4(v19);
    *(a1 + 144) = 0;
    v18 = *(a1 + 116);
LABEL_47:
    if (!v18 || (result = sub_1000C06E8((a1 + 48), (a1 + 56), (a1 + 60), 8, 2, v4), result))
    {
      if (!*(a1 + 120) || (result = sub_1000C06E8((a1 + 64), (a1 + 72), (a1 + 76), 8, 2, v4), result))
      {

        return sub_100099B00(a1);
      }
    }

    return result;
  }

  v21 = 0;
  v22 = 1;
  while (1)
  {
    v23 = sub_1000C0034(1024);
    *(v20 + 8 * v21) = v23;
    if (!v23)
    {
      break;
    }

    for (m = 0; m != 256; ++m)
    {
      v25 = *(*(v19 + 8 * v21) + 2 * m);
      if (v25 == 0xFFFF)
      {
        v25 = -1;
      }

      *(*(v20 + 8 * v21) + 4 * m) = v25;
    }

    sub_1000BFEC4(*(v19 + 8 * v21++));
    ++v22;
    if (v21 >= *(a1 + 164))
    {
      goto LABEL_46;
    }
  }

  if (v21)
  {
    do
    {
      sub_1000BFEC4(*(v20 + 8 * (v22-- - 2)));
    }

    while (v22 > 1);
  }

  sub_1000BFEC4(v20);
  return 0;
}

uint64_t sub_100099F24(uint64_t result, uint64_t a2, void *a3, unsigned __int16 **a4, int *a5)
{
  v32 = 0;
  if (*(result + 16))
  {
    *a3 = *(result + 128) + 2 * a2;
    v6 = 1;
    if (a4)
    {
      v7 = 0;
LABEL_39:
      *a4 = v7;
      goto LABEL_40;
    }

    goto LABEL_40;
  }

  v8 = *(result + 144);
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    v6 = 0;
    v32 = *(*(v8 + 8 * (a2 >> 8)) + 2 * a2);
    if (v32 != 0xFFFF)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v11 = *(result + 152);
    if (!v11)
    {
      if (*(result + 108))
      {
        v12 = *(result + 100) << 8;
        v13 = __ROR4__(dword_1000F2530[a2 >> 8], 31);
        v10 = (dword_1000F2530[a2] ^ v13) & (v12 - 1);
        v14 = *(result + 88);
        v15 = *(v14 + 8 * (v10 >> 8));
        v16 = (LOBYTE(dword_1000F2530[a2]) ^ v13);
        v17 = *(v15 + 4 * v16);
        if (v17 != a2)
        {
          v22 = 0;
          v9 = v10;
          while (v17 != 0xFFFF)
          {
            v9 = (v9 + 1);
            if (v9 == v12)
            {
              v9 = 0;
              if (v22)
              {
                goto LABEL_29;
              }

              v22 = 1;
            }

            v15 = *(v14 + 8 * (v9 >> 8));
            v16 = v9;
            v17 = *(v15 + 4 * v16);
            if (v17 == a2)
            {
              goto LABEL_12;
            }
          }

          goto LABEL_29;
        }

LABEL_12:
        v6 = 0;
        v18 = (v15 + 4 * v16);
      }

      else
      {
        v19 = *(result + 124);
        v9 = 0;
        v20 = v19 - 1;
        if (v19 >= 1)
        {
          do
          {
            v21 = (v9 + v20) >> 1;
            if (*(*(*(result + 88) + 8 * ((v9 + v20) >> 9)) + 4 * v21) < a2)
            {
              v9 = v21 + 1;
            }

            else
            {
              v20 = v21 - 1;
              v9 = v9;
            }
          }

          while (v9 <= v20);
        }

        if (v9 >= v19 || (v18 = (*(*(result + 88) + 8 * (v9 >> 8)) + 4 * v9), *v18 != a2))
        {
          v10 = 0;
          goto LABEL_29;
        }

        v6 = 0;
      }

      v32 = v18[1];
      goto LABEL_35;
    }

    v9 = 0;
    v10 = 0;
    v6 = 0;
    v32 = *(*(v11 + 8 * (a2 >> 8)) + 4 * a2);
    if (v32 != -1)
    {
      goto LABEL_35;
    }
  }

LABEL_29:
  v23 = a3;
  v24 = a4;
  v25 = a5;
  v26 = result;
  result = sub_1000B811C(*result, a2, *(result + 24));
  v6 = result;
  if (result < 256)
  {
    sub_10009A21C(v26, a2, v9, v10, *(v26 + 24), 0, result, &v32);
    result = v26;
    a5 = v25;
    a4 = v24;
    a3 = v23;
LABEL_35:
    if (a3)
    {
      v29 = (*(*(result + 48) + ((v32 >> 5) & 0x7FFFFF8)) + 2 * v32);
      v6 = *v29;
      *a3 = v29 + 1;
    }

    if (a4)
    {
      v30 = (*(*(result + 64) + ((v32 >> 5) & 0x7FFFFF8)) + 2 * v32);
      v31 = *v30;
      v7 = v30 + 1;
      v6 = v31;
      goto LABEL_39;
    }

    goto LABEL_40;
  }

  a5 = v25;
  if (v23)
  {
    *v23 = *(v26 + 24);
  }

  if (v24)
  {
    result = sub_100002454(*(v26 + 8), *(v26 + 24), result, *(v26 + 40), 0, 0, v27, v28);
    a4 = v24;
    a5 = v25;
    v7 = *(v26 + 40);
    goto LABEL_39;
  }

LABEL_40:
  *a5 = v6;
  return result;
}

uint64_t sub_10009A21C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int *a8)
{
  v9 = a7;
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a2;
  v14 = result;
  v15 = *(result + 80);
  v16 = 256 - v15;
  if (v16 <= a7)
  {
    *(result + 80) = v16 + v15;
  }

  v17 = (result + 88);
  if (*(result + 88))
  {
    v45 = a2;
    v18 = a3;
    v22 = (result + 100);
    v21 = *(result + 100);
    result = sub_1000C06E8((result + 88), (result + 96), (result + 100), 8, 4, *(result + 124) + 1);
    if (*(v14 + 108) && v21 < *v22)
    {
      do
      {
        for (i = 0; i != 1024; i += 4)
        {
          *(*(*v17 + 8 * v21) + i) = -1;
        }

        ++v21;
      }

      while (v21 < *v22);
    }

    v11 = a5;
    v12 = a4;
    a3 = v18;
    v13 = v45;
    if (!result)
    {
      result = sub_1000998FC(v14);
      a3 = a4;
    }
  }

  v24 = *(v14 + 80);
  if (*(v14 + 48) && (v9 + v24 + 2) > *(v14 + 60) << 8)
  {
    result = sub_1000998FC(v14);
    v24 = *(v14 + 80);
    a3 = v12;
  }

  if (*(v14 + 64) && (v9 + v24 + 2) > *(v14 + 76) << 8)
  {
    result = sub_1000998FC(v14);
    v24 = *(v14 + 80);
    a3 = v12;
  }

  *a8 = v24;
  v25 = *(v14 + 144);
  if (v25)
  {
    *(*(v25 + 8 * (v13 >> 8)) + 2 * v13) = v24;
    if (!v11)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v26 = *(v14 + 152);
    if (v26)
    {
      *(*(v26 + 8 * (v13 >> 8)) + 4 * v13) = v24;
      if (!v11)
      {
LABEL_35:
        *(*(*(v14 + 64) + 8 * (v24 >> 8)) + 2 * v24) = v9;
        if (v9 >= 1)
        {
          v42 = v9;
          v43 = v24 + 1;
          do
          {
            v44 = *v10++;
            *(*(*(v14 + 64) + 8 * (v43 >> 8)) + 2 * v43) = v44;
            ++v43;
            --v42;
          }

          while (v42);
        }

        *(*(*(v14 + 64) + 8 * ((v24 + 1 + v9) >> 8)) + 2 * (v24 + 1 + v9)) = 0x7FFF;
        goto LABEL_39;
      }
    }

    else
    {
      if (!*(v14 + 108))
      {
        v40 = a3;
        result = sub_1000C0C08(*(v14 + 88), *(v14 + 100), 256, 4, a3, *(v14 + 124) - a3, a3 + 1);
        a3 = v40;
      }

      v41 = (*(*v17 + 8 * (a3 >> 8)) + 4 * a3);
      *v41 = v13;
      v41[1] = v24;
      if (!v11)
      {
        goto LABEL_35;
      }
    }
  }

  v27 = *(v14 + 48);
  v28 = v24 >> 8;
  if (v27)
  {
    *(*(v27 + 8 * v28) + 2 * v24) = v9;
    if (v9 >= 1)
    {
      v29 = v24 + 1;
      v30 = v9;
      v31 = v11;
      do
      {
        v32 = *v31++;
        *(*(*(v14 + 48) + 8 * (v29 >> 8)) + 2 * v29) = v32;
        ++v29;
        --v30;
      }

      while (v30);
    }

    *(*(*(v14 + 48) + 8 * ((v9 + v24 + 1) >> 8)) + 2 * (v9 + v24 + 1)) = -1;
  }

  if (*(v14 + 64))
  {
    v33 = sub_1000C9F54(2 * v9, a2, a3, a4, a5, a6, a7, a8);
    sub_100002454(*(v14 + 8), v11, v9, v33, 0, 0, v34, v35);
    *(*(*(v14 + 64) + 8 * v28) + 2 * v24) = v9;
    if (v9 >= 1)
    {
      v36 = v24 + 1;
      v37 = v9;
      v38 = v33;
      do
      {
        v39 = *v38++;
        *(*(*(v14 + 64) + 8 * (v36 >> 8)) + 2 * v36) = v39;
        ++v36;
        --v37;
      }

      while (v37);
    }

    *(*(*(v14 + 64) + 8 * ((v9 + v24 + 1) >> 8)) + 2 * (v9 + v24 + 1)) = -1;
    result = sub_1000CA03C(v33, 2 * v9);
  }

LABEL_39:
  *(v14 + 80) += v9 + 2;
  ++*(v14 + 124);
  return result;
}

uint64_t sub_10009A5D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 144) || *(a1 + 152))
  {
    goto LABEL_3;
  }

  if (*(a1 + 108))
  {
    v9 = *(a1 + 100) << 8;
    v10 = __ROR4__(dword_1000F2530[a2 >> 8], 31);
    v6 = (dword_1000F2530[a2] ^ v10) & (v9 - 1);
    v11 = *(a1 + 88);
    v7 = v6;
    if (*(*(v11 + 8 * (v6 >> 8)) + 4 * (LOBYTE(dword_1000F2530[a2]) ^ v10)) != -1)
    {
      do
      {
        if (v7 + 1 == v9)
        {
          v7 = 0;
        }

        else
        {
          v7 = (v7 + 1);
        }
      }

      while (*(*(v11 + 8 * (v7 >> 8)) + 4 * v7) != -1);
    }

    return sub_10009A21C(a1, a2, v7, v6, 0, a3, a4, &v17);
  }

  v12 = *(a1 + 124);
  v13 = __OFSUB__(v12, 1);
  v14 = v12 - 1;
  if (v14 < 0 != v13)
  {
LABEL_3:
    v6 = 0;
    v7 = 0;
    return sub_10009A21C(a1, a2, v7, v6, 0, a3, a4, &v17);
  }

  LODWORD(v15) = 0;
  do
  {
    v16 = (v15 + v14) >> 1;
    if (*(*(*(a1 + 88) + 8 * ((v15 + v14) >> 9)) + 4 * v16) < a2)
    {
      v15 = v16 + 1;
    }

    else
    {
      v14 = v16 - 1;
      v15 = v15;
    }
  }

  while (v15 <= v14);
  return sub_10009A21C(a1, a2, v15, 0, 0, a3, a4, &v17);
}

uint64_t sub_10009A708(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 16))
  {
    return 1;
  }

  v3 = *(a1 + 144);
  if (v3)
  {
    v4 = *(*(v3 + 8 * (a2 >> 8)) + 2 * a2);
    if (v4 != 0xFFFF)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v6 = *(a1 + 152);
    if (!v6)
    {
      if (*(a1 + 108))
      {
        v7 = *(a1 + 100) << 8;
        v8 = __ROR4__(dword_1000F2530[a2 >> 8], 31);
        v9 = (dword_1000F2530[a2] ^ v8) & (v7 - 1);
        v10 = *(a1 + 88);
        v11 = *(v10 + 8 * (v9 >> 8));
        v12 = (LOBYTE(dword_1000F2530[a2]) ^ v8);
        v13 = *(v11 + 4 * v12);
        if (v13 != a2)
        {
          v19 = 0;
          while (v13 != 0xFFFF)
          {
            if (++v9 == v7)
            {
              if (v19)
              {
                return sub_1000B811C(*a1, a2, *(a1 + 24));
              }

              v9 = 0;
              v19 = 1;
            }

            v11 = *(v10 + 8 * (v9 >> 8));
            v12 = v9;
            v13 = *(v11 + 4 * v12);
            if (v13 == a2)
            {
              goto LABEL_12;
            }
          }

          return sub_1000B811C(*a1, a2, *(a1 + 24));
        }

LABEL_12:
        v14 = (v11 + 4 * v12);
      }

      else
      {
        v15 = *(a1 + 124);
        v16 = 0;
        v17 = v15 - 1;
        if (v15 >= 1)
        {
          do
          {
            v18 = (v17 + v16) >> 1;
            if (*(*(*(a1 + 88) + 8 * ((v17 + v16) >> 9)) + 4 * v18) >= a2)
            {
              v17 = v18 - 1;
            }

            else
            {
              v16 = v18 + 1;
            }
          }

          while (v16 <= v17);
        }

        if (v16 >= v15)
        {
          return sub_1000B811C(*a1, a2, *(a1 + 24));
        }

        v14 = (*(*(a1 + 88) + 8 * (v16 >> 8)) + 4 * v16);
        if (*v14 != a2)
        {
          return sub_1000B811C(*a1, a2, *(a1 + 24));
        }
      }

      v4 = v14[1];
      v5 = *(a1 + 48);
      if (v5)
      {
        return *(*(v5 + 8 * (v4 >> 8)) + 2 * v4);
      }

      return *(*(*(a1 + 64) + 8 * (v4 >> 8)) + 2 * v4);
    }

    v4 = *(*(v6 + 8 * (a2 >> 8)) + 4 * a2);
    if (v4 != -1)
    {
LABEL_5:
      v5 = *(a1 + 48);
      if (v5)
      {
        return *(*(v5 + 8 * (v4 >> 8)) + 2 * v4);
      }

      return *(*(*(a1 + 64) + 8 * (v4 >> 8)) + 2 * v4);
    }
  }

  return sub_1000B811C(*a1, a2, *(a1 + 24));
}

uint64_t sub_10009A8C8(uint64_t a1)
{
  v2 = sub_1000BD6C8(*(a1 + 16), 4, 0xFFFFFFFF);
  v3 = sub_1000BD6C8(*(a1 + 32), 4, v2);
  if (*(a1 + 48) && *(a1 + 60) >= 1)
  {
    v4 = 0;
    do
    {
      v3 = sub_1000BD7F4(*(*(a1 + 48) + 8 * v4++), 2, 256, v3);
    }

    while (v4 < *(a1 + 60));
  }

  v5 = sub_1000BD6C8(*(a1 + 56), 4, v3);
  v6 = sub_1000BD6C8(*(a1 + 60), 4, v5);
  if (*(a1 + 64) && *(a1 + 60) >= 1)
  {
    v7 = 0;
    do
    {
      v6 = sub_1000BD7F4(*(*(a1 + 64) + 8 * v7++), 2, 256, v6);
    }

    while (v7 < *(a1 + 60));
  }

  v8 = sub_1000BD6C8(*(a1 + 72), 4, v6);
  v9 = sub_1000BD6C8(*(a1 + 76), 4, v8);
  v10 = sub_1000BD6C8(*(a1 + 80), 4, v9);
  if (*(a1 + 88) && *(a1 + 100) >= 1)
  {
    v11 = 0;
    do
    {
      v12 = (*(*(a1 + 88) + 8 * v11) + 2);
      v13 = 256;
      do
      {
        v14 = sub_1000BD6C8(*(v12 - 1), 2, v10);
        v15 = *v12;
        v12 += 2;
        v10 = sub_1000BD6C8(v15, 2, v14);
        --v13;
      }

      while (v13);
      ++v11;
    }

    while (v11 < *(a1 + 100));
  }

  v16 = sub_1000BD6C8(*(a1 + 96), 4, v10);
  v17 = sub_1000BD6C8(*(a1 + 100), 4, v16);
  v18 = sub_1000BD6C8(*(a1 + 104), 4, v17);
  v19 = sub_1000BD6C8(*(a1 + 108), 4, v18);
  v20 = sub_1000BD6C8(*(a1 + 112), 4, v19);
  v21 = sub_1000BD6C8(*(a1 + 116), 4, v20);
  v22 = sub_1000BD6C8(*(a1 + 120), 4, v21);
  v23 = sub_1000BD6C8(*(a1 + 124), 4, v22);
  v24 = *(a1 + 128);
  if (v24)
  {
    LODWORD(v23) = sub_1000BD7F4(v24, 2, *(a1 + 136) + 1, v23);
  }

  v25 = sub_1000BD6C8(*(a1 + 136), 4, v23);
  if (*(a1 + 144) && *(a1 + 164) >= 1)
  {
    v26 = 0;
    do
    {
      v25 = sub_1000BD7F4(*(*(a1 + 144) + 8 * v26++), 2, 256, v25);
    }

    while (v26 < *(a1 + 164));
  }

  if (*(a1 + 152) && *(a1 + 164) >= 1)
  {
    v27 = 0;
    do
    {
      v25 = sub_1000BD7F4(*(*(a1 + 152) + 8 * v27++), 4, 256, v25);
    }

    while (v27 < *(a1 + 164));
  }

  v28 = sub_1000BD6C8(*(a1 + 160), 4, v25);
  v29 = *(a1 + 164);

  return sub_1000BD6C8(v29, 4, v28);
}

uint64_t sub_10009ABA8(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = sub_1000BCAA0(a2, "bpc0", a3);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  if (qword_1001065A8)
  {
    if (!sub_1000BCBAC(v4, *(qword_1001065A8 + 4516)))
    {
      goto LABEL_37;
    }

LABEL_7:
    if (qword_1001065A8 && *(qword_1001065A8 + 4516))
    {
      if (!sub_1000BCBAC(v5, *(a1 + 16)) || !sub_1000BCBAC(v5, *(a1 + 56)) || !sub_1000BCBAC(v5, *(a1 + 60)) || !sub_1000BCBAC(v5, *(a1 + 72)) || !sub_1000BCBAC(v5, *(a1 + 76)) || !sub_1000BCBAC(v5, *(a1 + 80)) || !sub_1000BCBAC(v5, *(a1 + 96)) || !sub_1000BCBAC(v5, *(a1 + 100)) || !sub_1000BCBAC(v5, *(a1 + 104)) || !sub_1000BCBAC(v5, *(a1 + 112)) || !sub_1000BCBAC(v5, *(a1 + 116)) || !sub_1000BCBAC(v5, *(a1 + 120)) || !sub_1000BCBAC(v5, *(a1 + 124)) || !sub_1000BCBAC(v5, *(a1 + 136)) || !sub_1000BCBAC(v5, *(a1 + 160)) || !sub_1000BCBAC(v5, *(a1 + 164)) || !sub_1000BCE4C(v5, *(a1 + 48), *(a1 + 60), 0x100u, 2) || !sub_1000BCE4C(v5, *(a1 + 64), *(a1 + 76), 0x100u, 2) || !sub_1000BCE4C(v5, *(a1 + 88), *(a1 + 100), 0x100u, 4))
      {
        goto LABEL_37;
      }

      v7 = *(a1 + 128);
      v8 = v7 ? *(a1 + 136) + 1 : 0;
      if (!sub_1000BCC04(v5, v7, v8, 2))
      {
        goto LABEL_37;
      }

      if (*(a1 + 112))
      {
        v9 = *(a1 + 60);
        if (v9 <= *(a1 + 76))
        {
          v9 = *(a1 + 76);
        }

        v10 = *(a1 + 164);
        if (v9 << 8 < 0x10000)
        {
          if (!sub_1000BCE4C(v5, *(a1 + 144), v10, 0x100u, 2))
          {
            goto LABEL_37;
          }
        }

        else if (!sub_1000BCE4C(v5, *(a1 + 152), v10, 0x100u, 4))
        {
          goto LABEL_37;
        }
      }
    }

    v11 = 1;
    goto LABEL_40;
  }

  if (sub_1000BCBAC(v4, 0))
  {
    goto LABEL_7;
  }

LABEL_37:
  v11 = 0;
LABEL_40:
  sub_1000BCB64(v5);
  return v11;
}

uint64_t sub_10009AE34(_DWORD *a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = sub_1000BBAE0(a2, "bpc0", a3, a4, a5, a6, a7, a8);
  if (v9)
  {
    v10 = v9;
    v19 = 0;
    if (sub_1000BBD54(v9, &v19))
    {
      if (v19)
      {
        v11 = a1 + 15;
        sub_1000C0B14(*(a1 + 6), a1[15], a1[15]);
        v12 = a1 + 19;
        sub_1000C0B14(*(a1 + 8), a1[19], a1[19]);
        sub_1000C0B14(*(a1 + 11), a1[25], a1[25]);
        v17 = (a1 + 36);
        v13 = a1 + 41;
        sub_1000C0B14(*(a1 + 18), a1[41], a1[41]);
        sub_1000C0B14(*(a1 + 19), *v13, *v13);
        if (!sub_1000BBD54(v10, a1 + 4))
        {
          goto LABEL_45;
        }

        if (!sub_1000BBD54(v10, a1 + 14))
        {
          goto LABEL_45;
        }

        if (!sub_1000BBD54(v10, a1 + 15))
        {
          goto LABEL_45;
        }

        if (!sub_1000BBD54(v10, a1 + 18))
        {
          goto LABEL_45;
        }

        if (!sub_1000BBD54(v10, a1 + 19))
        {
          goto LABEL_45;
        }

        if (!sub_1000BBD54(v10, a1 + 20))
        {
          goto LABEL_45;
        }

        if (!sub_1000BBD54(v10, a1 + 24))
        {
          goto LABEL_45;
        }

        if (!sub_1000BBD54(v10, a1 + 25))
        {
          goto LABEL_45;
        }

        if (!sub_1000BBD54(v10, a1 + 26))
        {
          goto LABEL_45;
        }

        if (!sub_1000BBD54(v10, a1 + 28))
        {
          goto LABEL_45;
        }

        if (!sub_1000BBD54(v10, a1 + 29))
        {
          goto LABEL_45;
        }

        if (!sub_1000BBD54(v10, a1 + 30))
        {
          goto LABEL_45;
        }

        if (!sub_1000BBD54(v10, a1 + 31))
        {
          goto LABEL_45;
        }

        if (!sub_1000BBD54(v10, a1 + 34))
        {
          goto LABEL_45;
        }

        if (!sub_1000BBD54(v10, a1 + 40))
        {
          goto LABEL_45;
        }

        if (!sub_1000BBD54(v10, a1 + 41))
        {
          goto LABEL_45;
        }

        v18 = 0;
        if (!sub_1000BC6E0(v10, a1 + 6, a1[14], 256, 2, &v18) || *(a1 + 6) && v18 != *v11)
        {
          goto LABEL_45;
        }

        v18 = 0;
        if (!sub_1000BC6E0(v10, a1 + 8, a1[18], 256, 2, &v18) || *(a1 + 8) && v18 != *v12)
        {
          goto LABEL_45;
        }

        v18 = 0;
        if (!sub_1000BC6E0(v10, a1 + 11, a1[24], 256, 4, &v18) || *(a1 + 11) && v18 != a1[25])
        {
          goto LABEL_45;
        }

        v18 = 0;
        if (!sub_1000BBF0C(v10, 2, a1 + 16, &v18) || *(a1 + 16) && v18 != a1[34] + 1)
        {
          goto LABEL_45;
        }

        if (a1[28])
        {
          v14 = *v11;
          if (*v11 <= *v12)
          {
            v14 = *v12;
          }

          if (v14 << 8 < 0x10000)
          {
            v18 = 0;
            if (!sub_1000BC6E0(v10, v17, a1[40], 256, 2, &v18) || *v17 && v18 != *v13)
            {
              goto LABEL_45;
            }
          }

          else
          {
            v18 = 0;
            if (!sub_1000BC6E0(v10, a1 + 19, a1[40], 256, 4, &v18) || *(a1 + 19) && v18 != *v13)
            {
              goto LABEL_45;
            }
          }
        }
      }

      v15 = 1;
LABEL_46:
      sub_1000BBBC4(v10);
      return v15;
    }

LABEL_45:
    v15 = 0;
    goto LABEL_46;
  }

  return 0;
}

void *sub_10009B1D8(int a1)
{
  result = sub_1000C0034(80);
  if (result)
  {
    result[2] = 0;
    *result = 0xFFFFFFFF00000000;
    *(result + 2) = 0x40000000;
    *(result + 6) = 0;
    *(result + 7) = (a1 + 1023) >> 10;
    if (qword_1001065A8)
    {
      v3 = *(qword_1001065A8 + 4624);
      if (v3 >= 1)
      {
        v4 = result;
        v5 = 1 << v3;
        result = sub_1000C0034(4 * (1 << v3));
        if (result)
        {
          v4[6] = result;
          *(v4 + 14) = v5;
          if (v3 != 31)
          {
            if (v5 <= 1)
            {
              v6 = 1;
            }

            else
            {
              v6 = 1 << v3;
            }

            memset_pattern16(result, &unk_1000F1190, 4 * v6);
          }

          return v4;
        }
      }
    }
  }

  return result;
}

uint64_t sub_10009B294(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 24) >= 1)
    {
      v2 = 0;
      do
      {
        sub_1000BFEC4(*(*(v1 + 16) + 8 * v2++));
      }

      while (v2 < *(v1 + 24));
    }

    sub_1000BFEC4(*(v1 + 16));
    sub_1000BFEC4(*(v1 + 48));

    return sub_1000BFEC4(v1);
  }

  return result;
}

void sub_10009B314(uint64_t a1)
{
  *a1 = 0xFFFFFFFF00000000;
  *(a1 + 8) = 0x40000000;
  *(a1 + 40) = 0;
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 56);
    if (v3 >= 1)
    {
      memset_pattern16(v2, &unk_1000F1190, 4 * v3);
    }
  }
}

void sub_10009B354(uint64_t a1, int a2, int a3)
{
  *a1 = 0xFFFFFFFF00000000;
  *(a1 + 8) = 0x40000000;
  *(a1 + 40) = 0;
  v6 = *(a1 + 48);
  if (v6)
  {
    v7 = *(a1 + 56);
    if (v7 >= 1)
    {
      memset_pattern16(v6, &unk_1000F1190, 4 * v7);
    }
  }

  *(a1 + 32) = a2;
  *(a1 + 36) = a3;
}

double sub_10009B3C0(uint64_t a1)
{
  result = 2.00000191;
  *(a1 + 4) = 0x40000000FFFFFFFFLL;
  return result;
}

uint64_t sub_10009B3D0(unsigned int *a1, unint64_t a2, int a3, uint64_t a4, int a5, int a6, __int16 a7)
{
  v7 = a4 & 0x7FFFFFFFFFFFFFFFLL;
  v8 = a4 & 0x7FFFFFFFFFFFFFFFLL | ((a5 != 0) << 63);
  v9 = *(a1 + 6);
  v10 = *a1;
  if (!v9)
  {
    goto LABEL_20;
  }

  v11 = a1[14];
  v12 = qword_1001065A8;
  if (qword_1001065A8)
  {
    v12 = *(qword_1001065A8 + 4632);
  }

  if (v11 - v12 > v10)
  {
    v13 = a1[8];
    v14 = v8;
    if (!v13)
    {
      if (a1[9])
      {
        v14 = v7;
      }

      else
      {
        v14 = 0;
      }
    }

    v15 = 0;
    v46 = a2;
    v45 = a3;
    v44 = v14;
    v16 = &v46 + 3;
    do
    {
      v17 = *v16--;
      v15 = dword_1000F2530[v17] ^ __ROR4__(v15, 31);
    }

    while (v16 >= &v46);
    v18 = &v45 + 1;
    do
    {
      v19 = *v18--;
      v15 = dword_1000F2530[v19] ^ __ROR4__(v15, 31);
    }

    while (v18 >= &v45);
    v20 = &v44 + 7;
    do
    {
      v21 = *v20--;
      v15 = dword_1000F2530[v21] ^ __ROR4__(v15, 31);
    }

    while (v20 >= &v44);
    v22 = v15 & (v11 - 1);
    v23 = *(v9 + 4 * v22);
    if (v23 == -2)
    {
LABEL_16:
      *(v9 + 4 * v22) = v10;
      v24 = v10;
      v25 = v10 < *a1;
      LODWORD(v10) = *a1;
      if (!v25)
      {
LABEL_17:
        if (v10 == 2147483646 || (v26 = a1, v27 = a2, v28 = a3, v29 = v8, v30 = a6, v32 = sub_1000C06E8(a1 + 2, v26 + 7, v26 + 6, 10, 24, v10 + 1), a1 = v26, !v32))
        {
          a1[10] = 1;
          return 0xFFFFFFFFLL;
        }

        else
        {
          v24 = *v26;
          *v26 = v24 + 1;
          v33 = *(*(v26 + 2) + ((v24 >> 7) & 0x1FFFFF8)) + 24 * (v24 & 0x3FF);
          *(v33 + 8) = v27;
          *(v33 + 12) = v28;
          *v33 = v29;
          *(v33 + 16) = a7;
          *(v33 + 14) = v30;
        }

        return v24;
      }
    }

    else
    {
      v37 = *(a1 + 2);
      if (v13)
      {
        while (1)
        {
          v38 = *(v37 + 8 * (v23 >> 10)) + 24 * (v23 & 0x3FF);
          if (*(v38 + 8) == a2 && *(v38 + 12) == a3 && *v38 == v14)
          {
            break;
          }

          if (v22 + 1 == v11)
          {
            v22 = 0;
          }

          else
          {
            ++v22;
          }

          v23 = *(v9 + 4 * v22);
          if (v23 == -2)
          {
            goto LABEL_16;
          }
        }
      }

      else if (a1[9])
      {
        while (1)
        {
          v42 = *(v37 + 8 * (v23 >> 10)) + 24 * (v23 & 0x3FF);
          if (*(v42 + 8) == a2 && *(v42 + 12) == a3 && ((*v42 ^ v14) & 0x7FFFFFFFFFFFFFFFLL) == 0)
          {
            break;
          }

          if (v22 + 1 == v11)
          {
            v22 = 0;
          }

          else
          {
            ++v22;
          }

          v23 = *(v9 + 4 * v22);
          if (v23 == -2)
          {
            goto LABEL_16;
          }
        }
      }

      else
      {
        while (1)
        {
          v43 = *(v37 + 8 * (v23 >> 10)) + 24 * (v23 & 0x3FF);
          if (*(v43 + 8) == a2 && *(v43 + 12) == a3)
          {
            break;
          }

          if (v22 + 1 == v11)
          {
            v22 = 0;
          }

          else
          {
            ++v22;
          }

          v23 = *(v9 + 4 * v22);
          if (v23 == -2)
          {
            goto LABEL_16;
          }
        }
      }

      v24 = v23;
      if (v23 >= v10)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
LABEL_20:
    v24 = (v10 - 1);
    v34 = a2 + 1;
    if (a1[8])
    {
      if (v10 > v34)
      {
        LODWORD(v24) = *a1;
        while (1)
        {
          v24 = (v24 - 1);
          v35 = *(*(a1 + 2) + 8 * (v24 >> 10)) + 24 * (v24 & 0x3FF);
          if (*(v35 + 8) == a2 && *(v35 + 12) == a3 && *v35 == v8)
          {
            break;
          }

          if (v24 <= v34)
          {
            goto LABEL_53;
          }
        }
      }
    }

    else if (a1[9])
    {
      if (v10 > v34)
      {
        LODWORD(v24) = *a1;
        while (1)
        {
          v24 = (v24 - 1);
          v36 = *(*(a1 + 2) + 8 * (v24 >> 10)) + 24 * (v24 & 0x3FF);
          if (*(v36 + 8) == a2 && *(v36 + 12) == a3 && (*v36 & 0x7FFFFFFFFFFFFFFFLL) == v7)
          {
            break;
          }

          if (v24 <= v34)
          {
            goto LABEL_53;
          }
        }
      }
    }

    else if (v10 > v34)
    {
      LODWORD(v24) = *a1;
      while (1)
      {
        v24 = (v24 - 1);
        v39 = *(*(a1 + 2) + 8 * (v24 >> 10)) + 24 * (v24 & 0x3FF);
        if (*(v39 + 8) == a2 && *(v39 + 12) == a3)
        {
          break;
        }

        if (v24 <= v34)
        {
LABEL_53:
          v24 = a2;
          break;
        }
      }
    }

    if (v24 < v34)
    {
      goto LABEL_17;
    }
  }

  v40 = *(*(a1 + 2) + 8 * (v24 >> 10)) + 24 * (v24 & 0x3FF);
  if (*(v40 + 14) > a6)
  {
    *(v40 + 16) = a7;
    *(v40 + 14) = a6;
  }

  return v24;
}

uint64_t sub_10009B824(uint64_t result, int a2, int a3)
{
  if (*(result + 8) > a3)
  {
    *(result + 4) = a2;
    *(result + 8) = a3;
  }

  return result;
}

uint64_t sub_10009B838(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  v5 = a1;
  v51 = sub_1000B2074(*(a1 + 64));
  v6 = *(a3 + 24);
  if (v6 == -1)
  {
    v8 = 0;
    v7 = 0;
    v10 = -1;
LABEL_21:
    v11 = a4[1];
    if (v11 == -1)
    {
      v11 = *a4;
    }

    else if (*(a4 + 4) || *a4 != -1)
    {
      return 0;
    }

    result = sub_10001CFA8(v51, *(*(*(v5 + 16) + 8 * (v11 >> 10)) + 24 * (v11 & 0x3FF) + 12), *(v7 + 12));
    if (!result)
    {
      return result;
    }

    if (v11 != -1 || v8 != 0)
    {
      goto LABEL_31;
    }

    return 0;
  }

  v7 = 0;
  v8 = 0;
  v9 = 1;
  v10 = -1;
  LODWORD(v11) = -2;
  v12 = &qword_1001065A8;
  while (1)
  {
    v13 = v10;
    v10 = v6;
    v14 = a4[1];
    v15 = v10 == v14 && v9;
    if (v15 != 1)
    {
      break;
    }

    v11 = *a4;
    if (!*(a4 + 4))
    {
      goto LABEL_10;
    }

    if (!v7)
    {
      goto LABEL_37;
    }

LABEL_15:
    if (v11 == -1)
    {
      v10 = v13;
      if (v8)
      {
        goto LABEL_31;
      }

      return 0;
    }

    v19 = v11 >> 10;
    v20 = v11 & 0x3FF;
    v21 = *(*(v5 + 16) + 8 * (v11 >> 10)) + 24 * (v11 & 0x3FF);
    if (!*v12 || !*(*v12 + 1288) || (v52 = v11, v22 = v13, v23 = v5, v24 = v12, v25 = sub_10001CFA8(v51, *(v21 + 12), *(v7 + 12)), v13 = v22, v11 = v52, v12 = v24, v5 = v23, v25))
    {
      if (((*v21 ^ *v7) & 0x7FE0000000000000) == 0)
      {
        v28 = *(v5 + 16);
        v30 = (*(*(v28 + 8 * v19) + 24 * v20) >> 35) & 0x3FFFFLL;
        LODWORD(v29) = v30;
        v10 = v13;
        v31 = a3;
        if (v8)
        {
          goto LABEL_47;
        }

        goto LABEL_35;
      }
    }

LABEL_4:
    v7 = *(*(v5 + 16) + 8 * (v10 >> 10)) + 24 * (v10 & 0x3FF);
    v9 = (*v7 & 0x3FF) == 0;
    ++v8;
    v6 = *(v7 + 8);
    if (v6 == -1)
    {
      goto LABEL_21;
    }
  }

  if (*(a4 + 4))
  {
    goto LABEL_4;
  }

LABEL_10:
  v16 = v10 == *a4 && v9;
  v17 = v15 | v16;
  if (v16)
  {
    v18 = v14;
  }

  else
  {
    v18 = v11;
  }

  if (v17 != 1)
  {
    goto LABEL_4;
  }

  v11 = v18;
  if (v7)
  {
    goto LABEL_15;
  }

LABEL_37:
  v10 = v13;
  if (v11 == -1 && v8 == 0)
  {
    return 0;
  }

LABEL_31:
  if (v11 == -1)
  {
    v31 = a3;
    if (!v8)
    {
      LODWORD(v11) = -1;
      result = sub_100026F84(*(a3 + 16), 0, 0);
      if (!result)
      {
        return result;
      }

LABEL_36:
      *(a2 + 24) = v11;
      *(a2 + 16) = *(v31 + 16);
      return 1;
    }

    LODWORD(v30) = 0;
    v28 = *(v5 + 16);
    v11 = 0xFFFFFFFFLL;
LABEL_47:
    result = sub_100026F84(*(v31 + 16), v30, (*(*(v28 + 8 * (v10 >> 10)) + 24 * (v10 & 0x3FF)) >> 35) & 0x3FFFF);
    if (!result)
    {
      return result;
    }

    v40 = sub_1000C9F54(4 * v8, v33, v34, v35, v36, v37, v38, v39);
    v41 = v40;
    v42 = 4 * v8 - 4;
    v43 = v8;
    v44 = (a3 + 24);
    do
    {
      v45 = *v44;
      *(v40 + v42) = v45;
      v44 = (*(*(v5 + 16) + ((v45 >> 7) & 0x1FFFFF8)) + 24 * (v45 & 0x3FF) + 8);
      v42 -= 4;
      --v43;
    }

    while (v43);
    for (i = 0; i != v8; ++i)
    {
      v47 = *(*(v5 + 16) + ((*(v41 + i) >> 7) & 0x1FFFFF8)) + 24 * (*(v41 + i) & 0x3FF);
      v48 = sub_10009B3D0(v5, v11, *(v47 + 12), *v47 & 0x7FFFFFFFFFFFFFFFLL, *v47 >> 63, 0x4000, -1);
      v11 = v48;
    }

    *(a2 + 24) = v48;
    *(a2 + 16) = *(v31 + 16);
    sub_1000CA03C(v41, 4 * v8);
    return 1;
  }

  v28 = *(v5 + 16);
  v29 = (*(*(v28 + 8 * (v11 >> 10)) + 24 * (v11 & 0x3FF)) >> 35) & 0x3FFFFLL;
  LODWORD(v30) = v29;
  v31 = a3;
  if (v8)
  {
    goto LABEL_47;
  }

LABEL_35:
  result = sub_100026F84(*(v31 + 16), v29, 0);
  if (result)
  {
    goto LABEL_36;
  }

  return result;
}

uint64_t sub_10009BC28(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _WORD *a7, uint64_t a8, int a9, _DWORD *a10)
{
  if (a2 == -1)
  {
    return 0;
  }

  v10 = *(*(a1 + 16) + 8 * (a2 >> 10)) + 24 * (a2 & 0x3FF);
  *a10 = (*v10 >> 53) & 0x3FF;
  v11 = *(a1 + 16);
  v12 = -1;
  v13 = a9;
  v14 = a2;
  do
  {
    v14 = *(*(v11 + 8 * (v14 >> 10)) + 24 * (v14 & 0x3FF) + 8);
    --v13;
    ++v12;
  }

  while (v14 != -1);
  if (v12 >= a9)
  {
    v15 = -v13;
    if (-v13 >= 1)
    {
      do
      {
        v10 = *(v11 + 8 * (a2 >> 10)) + 24 * (a2 & 0x3FF);
        a2 = *(v10 + 8);
        v37 = __CFADD__(v13++, 1);
      }

      while (!v37);
    }

    v38 = *v10;
    v16 = (v38 >> 10) & 0x1FFFFFF;
    v17 = v38 & 0x3FF;
    if (a2 == -1)
    {
      return 0;
    }
  }

  else
  {
    v15 = 0;
    LODWORD(v16) = -1;
    v17 = -1;
  }

  v18 = 0;
  v19 = v12 - v15 + 1;
  v20 = v19;
  v21 = v19;
  v22 = a3 + v20 * 2 - 2;
  v23 = 4 * v19;
  v24 = a4 + v23 - 4;
  v25 = a6 + v23 - 4;
  v26 = a5 + v21 - 1;
  v27 = &a7[v20 - 1];
  v28 = a8 + v21 - 1;
  do
  {
    v29 = v16;
    v30 = *(*(a1 + 16) + 8 * (a2 >> 10)) + 24 * (a2 & 0x3FF);
    *(v22 + 2 * v18) = *(v30 + 12);
    if (a4)
    {
      *(v24 + 4 * v18) = (*v30 >> 35) & 0x3FFFF;
    }

    v16 = (*v30 >> 10) & 0x1FFFFFFLL;
    v31 = *v30 & 0x3FFLL;
    if (a6)
    {
      *(v25 + 4 * v18) = (*v30 >> 10);
      v32 = !v31 && v17 == 1;
      if (v32 && v29 != v16)
      {
        *(v25 + 4 * v18) = v29;
      }
    }

    if (a5)
    {
      *(v26 + v18) = v31 == 0;
    }

    if (a7)
    {
      *(v27 + 2 * v18) = *(v30 + 16);
    }

    if (a8 && (*v30 & 0x8000000000000000) != 0)
    {
      *(v28 + v18) = 1;
    }

    a2 = *(v30 + 8);
    --v18;
    v17 = v31;
  }

  while (a2 != -1);
  result = -v18;
  if (a7)
  {
    if (*a7)
    {
      if (v18 != -1)
      {
LABEL_29:
        v35 = ~v18;
        if (~v18 < 8)
        {
          v36 = 1;
LABEL_60:
          v43 = &a7[v36 - 1];
          v44 = v36 + v18;
          v45 = v43;
          do
          {
            v47 = v45[1];
            ++v45;
            v46 = v47;
            if (*v43 >= v47)
            {
              *v43 = v46 - 1;
            }

            v43 = v45;
            v37 = __CFADD__(v44++, 1);
          }

          while (!v37);
          return result;
        }

        v36 = v35 & 0xFFFFFFFFFFFFFFF8 | 1;
        v39 = a7 + 4;
        v40 = v35 & 0xFFFFFFFFFFFFFFF8;
        while (1)
        {
          v41 = *(v39 - 3);
          v42 = vmovn_s16(vcgeq_s16(*(v39 - 4), v41));
          if (v42.i8[0])
          {
            *(v39 - 4) = v41.i16[0] - 1;
            if ((v42.i8[1] & 1) == 0)
            {
LABEL_44:
              if ((v42.i8[2] & 1) == 0)
              {
                goto LABEL_45;
              }

              goto LABEL_53;
            }
          }

          else if ((v42.i8[1] & 1) == 0)
          {
            goto LABEL_44;
          }

          *(v39 - 3) = v41.i16[1] - 1;
          if ((v42.i8[2] & 1) == 0)
          {
LABEL_45:
            if ((v42.i8[3] & 1) == 0)
            {
              goto LABEL_46;
            }

            goto LABEL_54;
          }

LABEL_53:
          *(v39 - 2) = v41.i16[2] - 1;
          if ((v42.i8[3] & 1) == 0)
          {
LABEL_46:
            if ((v42.i8[4] & 1) == 0)
            {
              goto LABEL_47;
            }

            goto LABEL_55;
          }

LABEL_54:
          *(v39 - 1) = v41.i16[3] - 1;
          if ((v42.i8[4] & 1) == 0)
          {
LABEL_47:
            if ((v42.i8[5] & 1) == 0)
            {
              goto LABEL_48;
            }

            goto LABEL_56;
          }

LABEL_55:
          *v39 = v41.i16[4] - 1;
          if ((v42.i8[5] & 1) == 0)
          {
LABEL_48:
            if ((v42.i8[6] & 1) == 0)
            {
              goto LABEL_49;
            }

            goto LABEL_57;
          }

LABEL_56:
          v39[1] = v41.i16[5] - 1;
          if ((v42.i8[6] & 1) == 0)
          {
LABEL_49:
            if (v42.i8[7])
            {
              goto LABEL_58;
            }

            goto LABEL_41;
          }

LABEL_57:
          v39[2] = v41.i16[6] - 1;
          if (v42.i8[7])
          {
LABEL_58:
            v39[3] = v41.i16[7] - 1;
          }

LABEL_41:
          v39 += 8;
          v40 -= 8;
          if (!v40)
          {
            if (v35 != (v35 & 0xFFFFFFFFFFFFFFF8))
            {
              goto LABEL_60;
            }

            return result;
          }
        }
      }
    }

    else
    {
      *a7 = 1;
      if (v18 != -1)
      {
        goto LABEL_29;
      }
    }

    return 1;
  }

  return result;
}

uint64_t sub_10009BFA8(uint64_t a1, unsigned int a2)
{
  if (a2 == -1)
  {
    return 0;
  }

  else
  {
    return *(*(*(a1 + 16) + 8 * (a2 >> 10)) + 24 * (a2 & 0x3FF)) & 0x7FFFFFFFFFFFFFFFLL;
  }
}

uint64_t sub_10009BFDC(uint64_t a1, unsigned int a2)
{
  if (a2 == -1)
  {
    return 65534;
  }

  v2 = *(*(a1 + 16) + 8 * (a2 >> 10)) + 24 * (a2 & 0x3FF);
  if ((*v2 & 0x8000000000000000) != 0)
  {
    return 65534;
  }

  else
  {
    return *(v2 + 12);
  }
}

uint64_t sub_10009C04C(uint64_t result, _DWORD *a2, _DWORD *a3)
{
  *a2 = *(result + 4);
  *a3 = *(result + 8);
  return result;
}

uint64_t sub_10009C060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _WORD *a6, int a7, _DWORD *a8, _DWORD *a9, _DWORD *a10, int a11, uint64_t a12, _DWORD *a13)
{
  v13 = *(a1 + 4);
  if (v13 == -1 || !*a1)
  {
    result = 0;
    *a9 = 0x40000000;
    *a8 = 0;
    return result;
  }

  LODWORD(v15) = 0;
  v16 = -a7;
  do
  {
    v17 = *(*(a1 + 16) + 8 * (v13 >> 10)) + 24 * (v13 & 0x3FF);
    v15 = (v15 + 1);
    v13 = *(v17 + 8);
    ++v16;
    --a7;
  }

  while (v13 != -1);
  *a8 = v15;
  *a9 = *(a1 + 8);
  v18 = *(a1 + 4);
  if (a10)
  {
    *a10 = v18;
  }

  if (v18 != -1 && *(a1 + 8) == 0x40000000)
  {
    *a9 -= 50000;
  }

  v19 = *(a1 + 4);
  if (-a7 < 1)
  {
    result = 1;
    if (a13)
    {
LABEL_14:
      *a13 = (*v17 >> 53) & 0x3FF;
    }
  }

  else
  {
    do
    {
      v17 = *(*(a1 + 16) + 8 * (v19 >> 10)) + 24 * (v19 & 0x3FF);
      v19 = *(v17 + 8);
    }

    while (!__CFADD__(a7++, 1));
    result = 0;
    if (a13)
    {
      goto LABEL_14;
    }
  }

  v22 = v15 - (v16 & ~(v16 >> 31));
  if (v19 != -1)
  {
    v23 = 0;
    v24 = v22;
    v25 = 4 * v22;
    v26 = a3 + v25 - 4;
    v27 = a4 + v25 - 4;
    v28 = v22;
    v29 = a2 + v28 * 2 - 2;
    v30 = -1;
    v31 = -1;
    do
    {
      v32 = *(*(a1 + 16) + 8 * (v19 >> 10)) + 24 * (v19 & 0x3FF);
      if (a11)
      {
        if (v24 == v15)
        {
          LOBYTE(v33) = 0;
        }

        else
        {
          v33 = *v32 >> 63;
        }

        *(a12 + v22 - 1 + v23) = v33;
      }

      if (a3)
      {
        *(v26 + 4 * v23) = (*v32 >> 35) & 0x3FFFF;
      }

      v34 = (*v32 >> 10) & 0x1FFFFFFLL;
      v35 = *v32 & 0x3FFLL;
      if (a4)
      {
        *(v27 + 4 * v23) = (*v32 >> 10);
        if (v31 == 1 && !v35 && v30 != v34)
        {
          *(v27 + 4 * v23) = v30;
        }
      }

      if (a5)
      {
        *(a5 + v22 - 1 + v23) = v35 == 0;
      }

      if (a6)
      {
        a6[v28 - 1 + v23] = *(v32 + 16);
      }

      *(v29 + 2 * v23--) = *(v32 + 12);
      v19 = *(v32 + 8);
      --v24;
      v30 = v34;
      v31 = v35;
    }

    while (v19 != -1);
  }

  if (!a6)
  {
    return result;
  }

  if (!*a6)
  {
    *a6 = 1;
  }

  if (v22 < 2)
  {
    return result;
  }

  if (v22 >= 9)
  {
    v38 = (v22 - 1) & 0xFFFFFFFFFFFFFFF8;
    v37 = v38 | 1;
    v39 = a6 + 4;
    v40 = v38;
    while (1)
    {
      v41 = *(v39 - 3);
      v42 = vmovn_s16(vcgeq_s16(*(v39 - 4), v41));
      if (v42.i8[0])
      {
        *(v39 - 4) = v41.i16[0] - 1;
        if ((v42.i8[1] & 1) == 0)
        {
LABEL_50:
          if ((v42.i8[2] & 1) == 0)
          {
            goto LABEL_51;
          }

          goto LABEL_59;
        }
      }

      else if ((v42.i8[1] & 1) == 0)
      {
        goto LABEL_50;
      }

      *(v39 - 3) = v41.i16[1] - 1;
      if ((v42.i8[2] & 1) == 0)
      {
LABEL_51:
        if ((v42.i8[3] & 1) == 0)
        {
          goto LABEL_52;
        }

        goto LABEL_60;
      }

LABEL_59:
      *(v39 - 2) = v41.i16[2] - 1;
      if ((v42.i8[3] & 1) == 0)
      {
LABEL_52:
        if ((v42.i8[4] & 1) == 0)
        {
          goto LABEL_53;
        }

        goto LABEL_61;
      }

LABEL_60:
      *(v39 - 1) = v41.i16[3] - 1;
      if ((v42.i8[4] & 1) == 0)
      {
LABEL_53:
        if ((v42.i8[5] & 1) == 0)
        {
          goto LABEL_54;
        }

        goto LABEL_62;
      }

LABEL_61:
      *v39 = v41.i16[4] - 1;
      if ((v42.i8[5] & 1) == 0)
      {
LABEL_54:
        if ((v42.i8[6] & 1) == 0)
        {
          goto LABEL_55;
        }

        goto LABEL_63;
      }

LABEL_62:
      v39[1] = v41.i16[5] - 1;
      if ((v42.i8[6] & 1) == 0)
      {
LABEL_55:
        if (v42.i8[7])
        {
          goto LABEL_64;
        }

        goto LABEL_47;
      }

LABEL_63:
      v39[2] = v41.i16[6] - 1;
      if (v42.i8[7])
      {
LABEL_64:
        v39[3] = v41.i16[7] - 1;
      }

LABEL_47:
      v39 += 8;
      v40 -= 8;
      if (!v40)
      {
        if (v22 - 1 != v38)
        {
          goto LABEL_66;
        }

        return result;
      }
    }
  }

  v37 = 1;
LABEL_66:
  v43 = &a6[v37 - 1];
  v44 = v22 - v37;
  v45 = v43;
  do
  {
    v47 = v45[1];
    ++v45;
    v46 = v47;
    if (*v43 >= v47)
    {
      *v43 = v46 - 1;
    }

    v43 = v45;
    --v44;
  }

  while (v44);
  return result;
}

uint64_t sub_10009C42C(uint64_t a1, uint64_t a2)
{
  *(a2 + 88) = 0u;
  v4 = a2 + 88;
  *(a2 + 120) = 0;
  *(a2 + 104) = 0u;
  if (sub_100036A44(a1) == 3)
  {
    v5 = (a2 + 12);
  }

  else
  {
    v5 = (a2 + 12);
    v6 = sub_10009C060(*(a1 + 688), a2 + 16, 0, 0, 0, 0, 36, (a2 + 4), (a2 + 12), 0, *(a1 + 648), v4, 0);
    v7 = *(a2 + 4);
    if (v7 && v7 <= 36 && v6)
    {
      return 1;
    }

    *(a1 + 548) = 3;
  }

  result = 0;
  *v5 = 0x40000000;
  return result;
}

_WORD *sub_10009C500(_WORD *result, __int16 a2)
{
  result[406] = a2;
  result[405] = a2;
  result[333] = a2;
  return result;
}

uint64_t sub_10009C510(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  *(result + 584) = a2;
  *(result + 568) = a3;
  *(result + 576) = a4;
  return result;
}

uint64_t sub_10009C520(uint64_t a1, uint64_t a2, __int16 *a3, int a4)
{
  if (sub_1000CEDA4())
  {

    return sub_100036B4C(a1);
  }

  if (a2)
  {
    sub_100003980(*(a1 + 384), a2, a3, *(a1 + 408), *(a1 + 812), a4, v8, v9, v10, v11, v12, v13);
  }

  sub_10009B3C0(*(a1 + 688));
  if ((*(a1 + 748) & 0x80000000) == 0 && (*(a1 + 750) & 0x80000000) == 0)
  {
    LOWORD(v15) = *(a1 + 736);
    goto LABEL_38;
  }

  v15 = *(a1 + 736);
  v16 = *(a1 + 604);
  if (v16 >= 1)
  {
    v17 = *(a1 + 592);
    v18 = v17 + 12 * v16;
    if (v18 <= v17 + 12)
    {
      v18 = v17 + 12;
    }

    v19 = v18 - 12;
    if (v19 == v17)
    {
      v20 = *(a1 + 592);
    }

    else
    {
      v20 = v17 + 1;
    }

    v21 = v19 - v20;
    v22 = v19 == v17;
    v23 = v19 != v17;
    v24 = v21 / 0xC;
    if (v22)
    {
      v25 = v24;
    }

    else
    {
      v25 = v24 + 1;
    }

    if (v25 < 4)
    {
      v26 = *(a1 + 592);
      goto LABEL_34;
    }

    v27 = v25 + 1;
    if (v25 >= 0x10)
    {
      v29 = 16;
      if ((v27 & 0xF) != 0)
      {
        v29 = v27 & 0xF;
      }

      v30 = vdupq_n_s16(v15);
      v28 = v27 - v29;
      v31 = ~v24 + v29 - v23;
      v32 = (v17 + 104);
      v33 = v30;
      do
      {
        v34.i16[0] = *(v32 - 48);
        v34.i16[1] = *(v32 - 42);
        v34.i16[2] = *(v32 - 36);
        v34.i16[3] = *(v32 - 30);
        v34.i16[4] = *(v32 - 24);
        v34.i16[5] = *(v32 - 18);
        v34.i16[6] = *(v32 - 12);
        v34.i16[7] = *(v32 - 6);
        v35.i16[0] = *v32;
        v35.i16[1] = v32[6];
        v35.i16[2] = v32[12];
        v35.i16[3] = v32[18];
        v35.i16[4] = v32[24];
        v35.i16[5] = v32[30];
        v35.i16[6] = v32[36];
        v35.i16[7] = v32[42];
        v30 = vminq_s16(v34, v30);
        v33 = vminq_s16(v35, v33);
        v32 += 96;
        v31 += 16;
      }

      while (v31);
      v36 = vminq_s16(v30, v33);
      v36.i16[0] = vminvq_s16(v36);
      v15 = v36.i32[0];
      if (v29 < 5)
      {
        v26 = v17 + 12 * v28;
LABEL_34:
        v42 = v17 + 12 * v16;
        do
        {
          if (*(v26 + 8) < v15)
          {
            LOWORD(v15) = *(v26 + 8);
          }

          v26 += 12;
        }

        while (v26 < v42);
        goto LABEL_38;
      }
    }

    else
    {
      v28 = 0;
    }

    v37 = v27 & 3;
    if ((v27 & 3) == 0)
    {
      v37 = 4;
    }

    v26 = v17 + 12 * (v27 - v37);
    v38 = vdup_n_s16(v15);
    v39 = ~v24 + v28 + v37 - v23;
    v40 = (v17 + 12 * v28 + 32);
    do
    {
      v41.i16[0] = *(v40 - 12);
      v41.i16[1] = *(v40 - 6);
      v41.i16[2] = *v40;
      v41.i16[3] = v40[6];
      v38 = vmin_s16(v41, v38);
      v40 += 24;
      v39 += 4;
    }

    while (v39);
    LOWORD(v15) = vminv_s16(v38);
    goto LABEL_34;
  }

LABEL_38:
  *(a1 + 740) = v15;
  *(a1 + 756) += v15;
  *(a1 + 736) = 0x4000;
  sub_10005B760(*(a1 + 824));
  (*(a1 + 520))(a1);
  if (*(a1 + 548) != 3)
  {
    (*(a1 + 528))(a1);
    if (*(a1 + 424))
    {
      sub_100036DD0(a1, v45, v46, v47, v48, v49, v50, v51);
    }

    sub_100003B68(*(a1 + 384), *(a1 + 812), (a1 + 436));
    if (qword_1001065A8 && *(qword_1001065A8 + 1492) && sub_100022AD4((a1 + 760)) == 3)
    {
      v52 = (*(a1 + 712) + 28 * (*(a1 + 728) - *(a1 + 732)));
      v53 = *(a1 + 662);
      v54 = 0x4000;
      while (v52 < *(a1 + 720))
      {
        if (*v52 == -1)
        {
          v52 += 14;
        }

        else if (*(v52 + 2))
        {
          if (v52[12] < v53)
          {
            v53 = v52[12];
          }

          v52 += 14;
        }

        else
        {
          if (v52[3] < v54)
          {
            v54 = v52[3];
          }

          v52 += 14;
        }
      }

      result = sub_1000B13FC((a1 + 760), v54 <= v53);
      if (*(a1 + 548) == 3)
      {
        goto LABEL_71;
      }
    }

    else
    {
      result = sub_1000B13FC((a1 + 760), *(a1 + 808) == *(a1 + 660));
      if (*(a1 + 548) == 3)
      {
LABEL_71:
        --*(a1 + 812);
        return result;
      }
    }

    result = sub_1000B1580((a1 + 760));
    if (result)
    {
      LOBYTE(v61) = 0;
      v62 = 0;
    }

    else
    {
      result = sub_100036B28(a1);
      LOBYTE(v61) = 0;
      v62 = result == 0;
      if (!result)
      {
LABEL_67:
        if ((v62 | v61))
        {
          v63 = 1;
        }

        else
        {
          v63 = 2;
        }

        *(a1 + 548) = v63;
        goto LABEL_71;
      }
    }

    if (qword_1001065A8)
    {
      v61 = *(qword_1001065A8 + 5364);
      if (v61)
      {
        result = sub_100036634(a1, *(qword_1001065A8 + 5376), v55, v56, v57, v58, v59, v60);
        LOBYTE(v61) = result != 0;
      }
    }

    goto LABEL_67;
  }

  v43 = *(a1 + 384);
  v44 = *(a1 + 812);

  return sub_100003B68(v43, v44, (a1 + 436));
}

uint64_t sub_10009C9BC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, unsigned __int16 a5, int a6, uint64_t a7, unsigned int a8, unsigned __int16 a9, void *a10, unsigned int a11)
{
  if (!a2)
  {
    a2 = *(a1 + 472);
  }

  return sub_1000D0728(a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
}

uint64_t sub_10009C9FC(uint64_t a1, uint64_t a2, int a3)
{
  if (sub_100001140(a2) > 2)
  {
    return 0;
  }

  v6 = sub_1000C0034(896);
  v7 = v6;
  if (!v6)
  {
    return v7;
  }

  memcpy(v6, &off_1000FDCE0, 0x208uLL);
  *(v7 + 376) = a1;
  *(v7 + 384) = a2;
  *(v7 + 432) = a3;
  *(v7 + 660) = sub_1000011A4(a2);
  v8 = qword_1001065A8 && *(qword_1001065A8 + 1480) && sub_100001138(*(v7 + 384)) != 0;
  *(v7 + 552) = v8;
  v9 = *(v7 + 432);
  *(v7 + 560) = sub_100001140(*(v7 + 384));
  *(v7 + 592) = 0;
  *(v7 + 584) = -1;
  *(v7 + 568) = 0u;
  *(v7 + 812) = -1;
  *(v7 + 712) = 0;
  v10 = qword_1001065A8;
  if (qword_1001065A8)
  {
    *(v7 + 728) = *(qword_1001065A8 + 4664);
    *(v7 + 746) = *(v10 + 1688);
    *(v7 + 750) = *(v10 + 1496);
    *(v7 + 752) = *(v10 + 1664);
    *(v7 + 814) = -1;
    *(v7 + 456) = 0xFFFFFFFFLL;
    *(v7 + 816) = 0;
    v11 = sub_10009B1D8(*(v10 + 4672));
    *(v7 + 688) = v11;
    sub_10009B30C(v11, *(v7 + 376));
    if (!*(v7 + 688))
    {
      goto LABEL_38;
    }
  }

  else
  {
    *(v7 + 728) = 0;
    *(v7 + 746) = 0;
    *(v7 + 750) = 0;
    *(v7 + 814) = -1;
    *(v7 + 456) = 0xFFFFFFFFLL;
    *(v7 + 816) = 0;
    v12 = sub_10009B1D8(0);
    *(v7 + 688) = v12;
    sub_10009B30C(v12, *(v7 + 376));
    if (!*(v7 + 688))
    {
      goto LABEL_38;
    }
  }

  *(v7 + 704) = 0u;
  v13 = sub_1000C0034(28 * *(v7 + 728));
  *(v7 + 712) = v13;
  if (!v13)
  {
    goto LABEL_38;
  }

  *(v7 + 720) = v13 + 28 * *(v7 + 728);
  if (qword_1001065A8)
  {
    v14 = *(qword_1001065A8 + 4704);
    v15 = *(qword_1001065A8 + 4708);
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  v16 = sub_10009977C(1, v14, v15, *(v7 + 552), 1, *(v7 + 376), *(v7 + 384));
  *(v7 + 840) = v16;
  if (!v16)
  {
    goto LABEL_38;
  }

  if (!*(v7 + 592))
  {
    v17 = qword_1001065A8;
    if (qword_1001065A8)
    {
      v17 = *(qword_1001065A8 + 4680);
    }

    *(v7 + 600) = v17;
    v18 = sub_1000C0034(12 * v17);
    *(v7 + 592) = v18;
    if (!v18)
    {
      goto LABEL_38;
    }
  }

  sub_100038200(v7);
  if (!*(v7 + 408))
  {
    goto LABEL_38;
  }

  *(v7 + 824) = sub_10005B6A4();
  sub_100001138(*(v7 + 384));
  if (v8)
  {
    v19 = sub_10009DAC0;
  }

  else
  {
    v19 = sub_10009EDDC;
  }

  if (v8)
  {
    v20 = sub_10009E624;
  }

  else
  {
    v20 = sub_10009F42C;
  }

  v21 = qword_1001065A8;
  *(v7 + 528) = v19;
  *(v7 + 536) = v20;
  *(v7 + 520) = sub_10009F838;
  if (!v21)
  {
    goto LABEL_41;
  }

  v22 = *(v21 + 4128);
  if (v22)
  {
    v23 = *(v21 + 4136);
    if (v23)
    {
      v24 = sub_1000CF474(*(v7 + 384), *(v7 + 376), v9, v23, v22, 1, 0, v8);
      *(v7 + 472) = v24;
      if (v24)
      {
        v21 = qword_1001065A8;
        if (qword_1001065A8)
        {
          goto LABEL_32;
        }

LABEL_41:
        *(v7 + 616) = 0;
        return v7;
      }

LABEL_38:
      sub_10009CDBC(v7);
      return 0;
    }
  }

LABEL_32:
  v25 = (*(v21 + 4448) != 0) & v8;
  *(v7 + 616) = v25;
  if (v25 != 1)
  {
    return v7;
  }

  v26 = sub_1000B215C(*(v7 + 376));
  if (!sub_1000C06E8((v7 + 624), (v7 + 636), (v7 + 632), 8, 2, v26 + 1))
  {
    goto LABEL_38;
  }

  v27 = 2 * sub_1000B2164(*(v7 + 376));
  v35 = sub_1000C9F54(v27 + 2, v28, v29, v30, v31, v32, v33, v34);
  if ((v26 & 0x80000000) == 0)
  {
    v36 = 0;
    v37 = v26 + 1;
    do
    {
      *(*(*(v7 + 624) + 8 * (v36 >> 8)) + 2 * v36) = *(v35 + sub_1000B811C(*(v7 + 376), v36, v35) - 1);
      ++v36;
    }

    while (v37 != v36);
  }

  sub_1000CA03C(v35, v27 + 2);
  return v7;
}

uint64_t sub_10009CDBC(uint64_t a1)
{
  v2 = *(a1 + 704);
  if (v2)
  {
    sub_100020F9C(v2);
    *(a1 + 704) = 0;
  }

  v3 = *(a1 + 472);
  if (v3)
  {
    sub_1000CF5EC(v3);
  }

  sub_10005B718(*(a1 + 824));
  sub_100003974(*(a1 + 408));
  sub_1000BFEC4(*(a1 + 592));
  sub_1000999F8(*(a1 + 840));
  sub_1000BFEC4(*(a1 + 712));
  sub_10009B294(*(a1 + 688));
  sub_1000BFEC4(*(a1 + 864));
  sub_1000C0B14(*(a1 + 624), *(a1 + 636), *(a1 + 632));

  return sub_1000BFEC4(a1);
}

uint64_t sub_10009CE54(uint64_t a1, uint64_t a2, char *a3)
{
  v3 = *(a1 + 840);
  if (!v3)
  {
    return 1;
  }

  result = sub_10009ABA8(v3, a2, a3);
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_10009CE80(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 840);
  if (!v8)
  {
    return 1;
  }

  result = sub_10009AE34(v8, a2, a3, a4, a5, a6, a7, a8);
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_10009CEAC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, int a6, int a7, int a8, int a9, int a10)
{
  if (a5)
  {
    goto LABEL_2;
  }

  if (a6 != 2)
  {
    if (a6 != 1)
    {
      goto LABEL_2;
    }

    if (*(a1 + 552))
    {
      return 0;
    }
  }

  v12 = *(a1 + 840);
  if (qword_1001065A8)
  {
    result = sub_100099BA4(v12, *(qword_1001065A8 + 4688), *(qword_1001065A8 + 4696));
    if (!result)
    {
      goto LABEL_3;
    }
  }

  else
  {
    result = sub_100099BA4(v12, 0, 0);
    if (!result)
    {
      goto LABEL_3;
    }
  }

  *(a1 + 544) = a6;
  *(a1 + 644) = 1;
  *(a1 + 848) = a8;
  *(a1 + 852) = a9;
  if (qword_1001065A8)
  {
    v18 = a3;
    v19 = a2;
    *(a1 + 748) = *(qword_1001065A8 + 1704);
    if (a3 >= 1)
    {
LABEL_14:
      *(a1 + 816) = 1;
      v20 = *(v19 + 2 * v18 - 2);
      goto LABEL_17;
    }
  }

  else
  {
    v18 = a3;
    v19 = a2;
    *(a1 + 748) = 0;
    if (a3 >= 1)
    {
      goto LABEL_14;
    }
  }

  *(a1 + 816) = 0;
  v20 = -1;
LABEL_17:
  *(a1 + 814) = v20;
  *(a1 + 732) = 1;
  *(*(a1 + 712) + 28 * *(a1 + 728) - 28) = -1;
  *(a1 + 548) = 1;
  *(a1 + 640) = 0;
  v21 = qword_1001065A8;
  if (qword_1001065A8)
  {
    *(a1 + 820) = *(qword_1001065A8 + 4656);
    v22 = a10;
    sub_1000361DC(a1, *(v21 + 5348), *(v21 + 5372));
    v23 = *(a1 + 472);
    if (!v23)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  *(a1 + 820) = 0;
  v22 = a10;
  sub_1000361DC(a1, 0, 0);
  v23 = *(a1 + 472);
  if (v23)
  {
LABEL_19:
    sub_1000D02A8(v23, a2, a3, v22);
  }

LABEL_20:
  if (a7 == 2)
  {
    v24 = qword_1001065A8;
    if (!qword_1001065A8)
    {
      goto LABEL_32;
    }

    v25 = (qword_1001065A8 + 968);
    goto LABEL_31;
  }

  if (a7 == 1)
  {
    v24 = qword_1001065A8;
    if (!qword_1001065A8)
    {
      goto LABEL_32;
    }

    v25 = (qword_1001065A8 + 4568);
    goto LABEL_31;
  }

  if (a7)
  {
    *(a1 + 742) = 0;
    *(a1 + 744) = 0;
    if (*(a1 + 750) > 0)
    {
      goto LABEL_2;
    }

    goto LABEL_33;
  }

  v24 = qword_1001065A8;
  if (qword_1001065A8)
  {
    v25 = (qword_1001065A8 + 1632);
LABEL_31:
    v24 = *v25;
  }

LABEL_32:
  *(a1 + 742) = v24;
  *(a1 + 744) = v24;
  if (*(a1 + 750) > v24)
  {
    goto LABEL_2;
  }

LABEL_33:
  if (*(a1 + 748) > 0x4000)
  {
    goto LABEL_2;
  }

  *(a1 + 656) = -1;
  *(a1 + 658) = -1;
  *(a1 + 660) = -1;
  memset_pattern16((a1 + 662), &unk_1000F0CE0, 4uLL);
  *(a1 + 662) = 0;
  *(a1 + 672) = 0xFFFFFFFF00000000;
  *(a1 + 680) = 0;
  *(a1 + 660) = sub_1000011A4(*(a1 + 384));
  *(a1 + 832) = sub_10000119C(*(a1 + 384));
  v26 = qword_1001065A8;
  if (qword_1001065A8)
  {
    v27 = *(qword_1001065A8 + 4552);
    v28 = *(a1 + 552);
    if (v28)
    {
      v27 = 0;
    }

    *(a1 + 696) = v27;
    if (v27)
    {
      v29 = *(v26 + 4040);
      if (v29)
      {
        v30 = *(a1 + 704);
        if (v30)
        {
          sub_100020FD8(v30);
        }

        else
        {
          *(a1 + 704) = sub_100020F18(*(a1 + 688), v29);
        }

        *(a1 + 648) = 0;
        v28 = *(a1 + 552);
        goto LABEL_48;
      }

LABEL_2:
      result = 0;
LABEL_3:
      *(a1 + 548) = 3;
      return result;
    }
  }

  else
  {
    v28 = *(a1 + 552);
    *(a1 + 696) = 0;
  }

  *(a1 + 648) = v22;
  if (v22)
  {
    v31 = 1;
    goto LABEL_49;
  }

LABEL_48:
  v31 = v28 != 0;
LABEL_49:
  *(a1 + 652) = v31;
  sub_10009B354(*(a1 + 688), v31, 0);
  if (a7 != 1)
  {
    if (!qword_1001065A8)
    {
      v34 = 0;
      v32 = 0;
      v35 = 0;
      v33 = *(a1 + 432);
      goto LABEL_56;
    }

    v32 = *(qword_1001065A8 + 1592);
    v33 = *(a1 + 432);
    goto LABEL_54;
  }

  v32 = 1000000;
  v33 = *(a1 + 432);
  if (qword_1001065A8)
  {
LABEL_54:
    v34 = *(qword_1001065A8 + 1600);
    v35 = *(qword_1001065A8 + 1440);
    goto LABEL_56;
  }

  v34 = 0;
  v35 = 0;
LABEL_56:
  sub_1000B1390(a1 + 760, v33, v34, v32, v35, 0);
  if (qword_1001065A8)
  {
    if (*(qword_1001065A8 + 4464))
    {
      sub_1000998FC(*(a1 + 840));
    }
  }

  *(a1 + 756) = 0;
  *(a1 + 612) = sub_1000B215C(*(a1 + 376));
  *(a1 + 604) = 0;
  *(a1 + 584) = 0;
  *(a1 + 856) = sub_1000B20FC(*(a1 + 376));
  *(a1 + 880) = sub_10009D8A0;
  *(a1 + 888) = sub_10009D96C;
  return 1;
}

uint64_t sub_10009D2B0(uint64_t a1, int a2)
{
  result = *(a1 + 548);
  if (result == 1)
  {
    v4 = sub_1000B162C((a1 + 760), a2, 0);
    result = 1;
    if (v4 == 2)
    {
      if (sub_10009C03C(*(a1 + 688)))
      {
        return 2;
      }

      else
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_10009D324(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a5 < 1)
  {
    return 0;
  }

  v8 = a7;
  v10 = a5;
  v12 = sub_100036C94(a1, a2, a3, a4, a5, a6, a7, a8);
  v13 = ~(*(a6 + 4 * v10 - 4) == -4) + v10;
  v14 = a1[375] + v12 + a1[374] * (~(*(a6 + 4 * v10 - 4) == -4) + v10);
  if (v8 && v13 >= 1)
  {
    do
    {
      if (*v8++)
      {
        v14 += a1[376];
      }

      --v13;
    }

    while (v13);
  }

  return v14;
}

uint64_t sub_10009D3C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a2;
  v15 = 0;
  v11 = 2 * a2;
  v12 = sub_1000C9F54(v11, a2, a3, a4, a5, a6, a7, a8);
  sub_10009C060(*(a1 + 688), v12, 0, 0, 0, 0, v9, &v15 + 1, &v15, 0, 0, 0, 0);
  if (SHIDWORD(v15) >= 1)
  {
    v13 = 0;
    do
    {
      *(a3 + 4 * v13) = sub_1000BA7FC(*(a1 + 376), *(v12 + v13));
      ++v13;
    }

    while (v13 < SHIDWORD(v15));
  }

  sub_1000CA03C(v12, v11);
  return HIDWORD(v15);
}

uint64_t sub_10009D498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, _BYTE *a13, int a14, unsigned int a15, _DWORD *a16)
{
  v34 = a7;
  v17 = a2;
  v35 = 2 * a2;
  v19 = sub_1000C9F54(v35, a2, a3, a4, a5, a6, a7, a8);
  v24 = v19;
  if (v17 >= 1)
  {
    v25 = v17;
    v26 = a3;
    v27 = v19;
    do
    {
      v28 = *v26++;
      *v27++ = sub_1000BA830(*(a1 + 376), v28);
      --v25;
    }

    while (v25);
  }

  v29 = sub_100059B08(a12, a13, a15, a3 + 4 * a14, v20, v21, v22, v23);
  if (v34 >= 1 && v29)
  {
    v29 = sub_100023194(a8, v34, v24, v17);
  }

  if (v29)
  {
    *a16 = 0;
    sub_1000CA03C(v24, v35);
  }

  else
  {
    v36 = 0;
    v37[0] = v17;
    if (sub_1000385EC(v24, a9, a10, a11, a4, v37, &v36) && v37[0] >= 1)
    {
      v30 = 0;
      do
      {
        *(a3 + 4 * v30) = sub_1000BA7FC(*(a1 + 376), v24[v30]);
        ++v30;
      }

      while (v30 < v37[0]);
    }

    *a16 = v36;
    sub_1000CA03C(v24, v35);
    return v37[0];
  }

  return v17;
}

uint64_t sub_10009D630(uint64_t a1)
{
  if (!sub_10009C03C(*(a1 + 688)))
  {
    *(a1 + 548) = 3;
  }

  *(a1 + 584) = -1;
  *(a1 + 812) = -1;
  result = sub_100036634(a1, *(a1 + 428), v2, v3, v4, v5, v6, v7);
  if (result)
  {

    return sub_100036B4C(a1);
  }

  return result;
}

int16x8_t *sub_10009D6A8(uint64_t a1, unsigned int a2)
{
  result = sub_100099B00(*(a1 + 840));
  if (*(a1 + 616))
  {
    v5 = result;
    v6 = sub_1000B2C18(*(a1 + 376), a2);
    result = sub_1000C0034(2 * v6);
    if (result)
    {
      v7 = result;
      sub_1000B28E4(*(a1 + 376), a2, result, v6);
      if (v6 >= 1)
      {
        v8 = v6;
        v9 = v7;
        while (1)
        {
          v10 = *v9++;
          v11 = sub_10009D764(a1, v10);
          if (!v11)
          {
            break;
          }

          if (!--v8)
          {
            v5 = v11;
            goto LABEL_9;
          }
        }

        v5 = 0;
      }

LABEL_9:
      sub_1000BFEC4(v7);
      return v5;
    }
  }

  return result;
}

uint64_t sub_10009D764(uint64_t a1, unsigned int a2)
{
  result = sub_100099B00(*(a1 + 840));
  if (result && *(a1 + 616))
  {
    result = sub_1000C06E8((a1 + 624), (a1 + 636), (a1 + 632), 8, 2, a2 + 1);
    if (result)
    {
      v5 = result;
      v6 = 2 * sub_1000B2164(*(a1 + 376));
      v14 = sub_1000C9F54(v6 + 2, v7, v8, v9, v10, v11, v12, v13);
      *(*(*(a1 + 624) + 8 * (a2 >> 8)) + 2 * a2) = *(v14 + sub_1000B811C(*(a1 + 376), a2, v14) - 1);
      sub_1000CA03C(v14, v6 + 2);
      return v5;
    }
  }

  return result;
}

uint64_t sub_10009D828(uint64_t a1)
{
  sub_1000998FC(*(a1 + 840));
  sub_10009B314(*(a1 + 688));
  *(a1 + 548) = 4;
  return 1;
}

uint64_t sub_10009D864(uint64_t a1)
{
  sub_1000998FC(*(a1 + 840));
  *(a1 + 548) = 4;
  return 1;
}

uint64_t sub_10009D8A0(uint64_t result, __int16 a2)
{
  if (*(result + 604) >= 1)
  {
    v9 = v2;
    v10 = v3;
    v4 = result;
    v5 = 0;
    v6 = *(result + 750) + a2;
    v8 = 0;
    v7 = (*(result + 592) + 8);
    do
    {
      if (!*(v4 + 856) || *(v4 + 456) == -1)
      {
        result = 0;
      }

      else
      {
        v8 = sub_1000BA7F4(*(v4 + 376), *(v7 - 1), 0);
        result = sub_1000BABCC(*(v4 + 376), &v8, 1u, *(v4 + 456));
      }

      *v7 = v6 + result;
      *(v7 - 2) = -1;
      ++v5;
      v7 += 6;
    }

    while (v5 < *(v4 + 604));
  }

  return result;
}

uint64_t sub_10009D96C(uint64_t a1, __int16 a2, unsigned int a3, int a4)
{
  v7 = *(a1 + 376);
  v8 = *(a1 + 592);
  result = sub_1000BA7F4(v7, a3, 0);
  if (*(a1 + 604) >= 1)
  {
    v10 = result;
    v11 = 0;
    v17 = 0;
    do
    {
      v12 = a2;
      if (*(a1 + 856))
      {
        v17 = sub_1000BA7F4(v7, *(v8 + 6), 0);
        result = sub_1000BABCC(v7, &v17, 1u, v10);
        v12 = result + a2;
      }

      v13 = *(v8 + 8);
      v14 = *(a1 + 696);
      if (v13 <= v12)
      {
        if (v14 && *v8 != a4)
        {
          result = sub_100020FE0(*(a1 + 704), a4, *v8, v12 - v13, v12 - *(a1 + 736));
        }
      }

      else
      {
        if (v14)
        {
          v15 = *v8;
          if (v13 != 0x4000 && v15 != a4)
          {
            result = sub_100020FE0(*(a1 + 704), v15, a4, v13 - v12, v13 - *(a1 + 736));
          }
        }

        *(v8 + 8) = v12;
        *v8 = a4;
      }

      v8 += 12;
      ++v11;
    }

    while (v11 < *(a1 + 604));
  }

  return result;
}

uint64_t sub_10009DAC0(uint64_t result)
{
  v1 = result;
  v110 = *(result + 472);
  v2 = *(result + 376);
  v97 = *(result + 384);
  *(*(result + 592) + 6) = -1;
  *(*(result + 592) + 8) = 0;
  *(result + 604) = 0;
  v3 = (*(result + 736) + *(result + 742));
  v4 = *(result + 820);
  if (*(result + 732) > v4)
  {
    result = sub_10005B794(*(result + 824), v4, *(result + 736), v3);
    v3 = result;
  }

  v120 = 0;
  *(v1 + 744) = v3;
  v5 = *(v1 + 662);
  if (v5 <= v3)
  {
    LODWORD(v118) = 0;
    LOWORD(v117) = 0;
    v121 = 0;
    if (*(v1 + 584) < 1)
    {
LABEL_16:
      *(*(v1 + 592) + 12 * *(v1 + 604) + 6) = -1;
      *(*(v1 + 592) + 12 * *(v1 + 604) + 8) = 0;
LABEL_17:
      if (!v110)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v6 = 0;
      v7 = *(v1 + 750) + v5;
      while (1)
      {
        while (1)
        {
          v9 = *(*(v1 + 568) + 2 * v6);
          if (!*(v1 + 856) || *(v1 + 456) == -1)
          {
            v10 = 0;
          }

          else
          {
            LOWORD(v117) = sub_1000BA7F4(*(v1 + 376), *(*(v1 + 568) + 2 * v6), 0);
            v10 = sub_1000BABCC(*(v1 + 376), &v117, 1u, *(v1 + 456));
          }

          v11 = (v7 + v10);
          result = sub_100099F24(*(v1 + 840), v9, &v121, 0, &v118);
          if (v118 >= 2)
          {
            break;
          }

          v8 = sub_100002528(*(v1 + 384), word_100101770, *v121, 0, v12, v13, v14, v15);
          result = sub_10009FBE0(v1, v9, v11, -1, v8, word_100101770[v8]);
          if (!result)
          {
            goto LABEL_17;
          }

          if (++v6 >= *(v1 + 584))
          {
            goto LABEL_16;
          }
        }

        v16 = *(v1 + 604);
        if (v16 == *(v1 + 600) - 1)
        {
          break;
        }

        v17 = *(v1 + 592) + 12 * v16;
        *(v1 + 604) = v16 + 1;
        *(v17 + 6) = v9;
        result = sub_10000223C(*(v1 + 384), v121[v118 - 2], v121[v118 - 1], 0, v12, v13, v14, v15);
        *(v17 + 4) = result;
        *(v17 + 8) = v11;
        *v17 = -1;
        *(v17 + 10) = 0;
        if (++v6 >= *(v1 + 584))
        {
          goto LABEL_16;
        }
      }

      *(v1 + 548) = 3;
      if (!v110)
      {
        goto LABEL_21;
      }
    }

    result = sub_1000CFF6C(v110, 0, 0, 0, *(v1 + 666), *(v1 + 812), 65534, *(v1 + 660), *(v1 + 756) + *(v1 + 662), 0x4000, &v120);
    if (v120)
    {
LABEL_19:
      *(v1 + 548) = 3;
      return result;
    }

    goto LABEL_21;
  }

  *(v1 + 662) = 0x4000;
  *(v1 + 680) = 0x4000;
LABEL_21:
  v18 = *(v1 + 712) + 28 * *(v1 + 732);
  v19 = *(v1 + 720);
  v20 = *(v18 - 28);
  *(v19 - 16) = *(v18 - 16);
  *(v19 - 28) = v20;
  if (*(v1 + 732) == 1)
  {
    return result;
  }

  v98 = v2;
  v21 = (v19 - 56);
  v22 = (v18 - 56);
  v23 = *(v1 + 746);
  if (v23 >= (*(v1 + 744) - *(v1 + 736)))
  {
    LOWORD(v23) = *(v1 + 744) - *(v1 + 736);
  }

  if (qword_1001065A8)
  {
    v24 = *(qword_1001065A8 + 1696);
    if (v24 >= v23)
    {
      LOWORD(v24) = v23;
    }
  }

  else
  {
    LODWORD(v24) = v23 & (v23 >> 31);
  }

  v102 = v24;
  v100 = v23;
  v25 = 0;
  v114 = 1;
  while (1)
  {
    while (1)
    {
      v119 = 0;
      v117 = 0;
      v118 = 0;
      v27 = *v22;
      result = sub_100099F24(*(v1 + 840), *v22, &v118, 0, &v119 + 1);
      v28 = HIDWORD(v119);
      if (*(v22 + 2) == 1 && HIDWORD(v119) != 1)
      {
        break;
      }

      if (v22[12] <= *(v1 + 744))
      {
LABEL_63:
        v113 = v25;
        v36 = *v22;
        *(v21 + 12) = *(v22 + 6);
        *v21 = v36;
        v37 = (v22[3] - *(v1 + 736));
        v38 = *(v22 + 2);
        v39 = *(v22 + 2) == 0;
        ++v114;
        v40 = *(v1 + 756) + v22[3];
        if (v38 < 2)
        {
          if (v37 > v100)
          {
            goto LABEL_31;
          }

          v115 = 0x40000000;
          v116 = -1;
          v41 = sub_1000BA7F4(*(v1 + 376), v27, 0);
          v111 = sub_1000BABCC(v98, v1 + 814, *(v1 + 816), v41);
          v101 = v21;
          v106 = *(v1 + 736);
          v104 = *(v1 + 756);
          if (!*(v1 + 696) || qword_1001065A8 && *(qword_1001065A8 + 4736))
          {
            v42 = 1;
          }

          else
          {
            sub_10009C04C(*(v1 + 688), &v116, &v115);
            v42 = v115 == 0x40000000;
          }

          result = sub_10009B3D0(*(v1 + 688), *(v22 + 4), v27, 0, v39, v37, *(v1 + 812));
          v109 = result;
          if (v110 && v37 <= v102)
          {
            v43 = 0;
            v44 = v22[2];
            if (v28 == 1 && !v22[2])
            {
              v45 = *v118;
              v46 = sub_10009BFDC(*(v1 + 688), *(v22 + 4));
              if (v46 == 65534)
              {
                v51 = 0;
              }

              else
              {
                sub_100099F24(*(v1 + 840), v46, &v117, 0, &v119);
                v51 = *v117;
              }

              v44 = sub_10000223C(v97, 0, v45, v51, v47, v48, v49, v50);
              v43 = 1;
            }

            result = sub_1000CFF6C(v110, 0, v28 == 1, v43, v22[5], *(v1 + 812), v27, v44, v40, 0x4000, &v120);
            if (v120)
            {
              goto LABEL_19;
            }
          }

          v52 = v109;
          v53 = v111 + v37 + v106 + v104;
          if (!v42)
          {
            v54 = v116;
            if (v109 != v116)
            {
              v55 = v115;
              v56 = v115 - v53;
              if (v115 <= v53)
              {
                v56 = v53 - v115;
                v60 = v37;
                v52 = v109;
                v61 = v109;
              }

              else
              {
                v107 = *(v1 + 756);
                v57 = *(v1 + 736);
                v58 = sub_10009C014(*(v1 + 688), v116);
                v59 = sub_1000BA7F4(v98, v58, 0);
                v60 = v55 - (v107 + v57 + sub_1000BABCC(v98, v1 + 814, *(v1 + 816), v59) - v111);
                v61 = v116;
                v52 = v109;
                v54 = v109;
              }

              result = sub_100020FE0(*(v1 + 704), v61, v54, v56, v60);
            }
          }

          if (v52 == -1)
          {
            goto LABEL_19;
          }

          if (!v38)
          {
            v63 = v109;
            result = sub_10009B824(*(v1 + 688), v109, v53);
            v62 = v101;
            if (!*(v1 + 848))
            {
              goto LABEL_94;
            }

LABEL_97:
            v64 = *v118;
            if (*(v22 + 2))
            {
              if (SHIDWORD(v119) >= 2)
              {
                v65 = v118 + 1;
                goto LABEL_104;
              }

              v67 = sub_10009BFDC(*(v1 + 688), *(v22 + 4));
              if (v67 == 65534)
              {
                v66 = 0;
              }

              else
              {
                sub_100099F24(*(v1 + 840), v67, &v117, 0, &v119);
                v65 = v117;
LABEL_104:
                v66 = *v65;
              }
            }

            else
            {
              v66 = *v118;
              v64 = 0;
            }

            v68 = *(v1 + 736);
            v69 = *(v1 + 748);
            v108 = v22[2];
            v105 = *(v1 + 376);
            result = sub_1000BA7F4(v105, v27, 0);
            v103 = result;
            if (*(v1 + 584) < 1)
            {
              goto LABEL_30;
            }

            v70 = 0;
            v123[0] = 0;
            v112 = v68 + v69 + v37;
            v122 = 0;
            v121 = 0;
            v99 = v66;
            while (1)
            {
              v72 = *(*(v1 + 568) + 2 * v70);
              v73 = *(*(v1 + 624) + ((v72 >> 5) & 0x7F8));
              v74 = *(*(v1 + 568) + 2 * v70);
              v75 = *(v73 + 2 * v74);
              if (!v64 || (result = sub_1000026C8(*(v1 + 384), *(v73 + 2 * v74), v64, v66, v108), result))
              {
                LOWORD(v76) = v112;
                if (!*(v1 + 856))
                {
                  break;
                }

                v122 = sub_1000BA7F4(v105, v72, 0);
                result = sub_1000BABCC(v105, &v122, 1u, v103);
                v76 = (result + v112);
                if (v76 <= *(v1 + 744))
                {
                  break;
                }
              }

LABEL_108:
              if (++v70 >= *(v1 + 584))
              {
                goto LABEL_30;
              }
            }

            sub_100099F24(*(v1 + 840), v72, &v121, 0, v123);
            v81 = *(v1 + 384);
            if (v123[0] < 2)
            {
              v71 = sub_100002528(v81, word_100101770, v75, v64, v77, v78, v79, v80);
              result = sub_10009FBE0(v1, v72, v76, v63, v71, word_100101770[v71]);
              if (!result)
              {
                goto LABEL_30;
              }

              goto LABEL_108;
            }

            result = sub_10000223C(v81, v121[v123[0] - 2], v75, v64, v77, v78, v79, v80);
            v82 = result;
            v83 = *(v1 + 604);
            v84 = *(v1 + 592);
            v85 = 0;
            v86 = v83 - 1;
            if (v83 < 1)
            {
LABEL_122:
              if (v83 != *(v1 + 600) - 1)
              {
                v88 = (v84 + 12 * v85);
                v91 = __OFSUB__(v83, v85);
                v92 = v83 - v85;
                if (!((v92 < 0) ^ v91 | (v92 == 0)))
                {
                  result = j__memmove(v88 + 3, v88, 12 * v92);
                }

                *(v88 + 3) = v72;
                *(v88 + 2) = v82;
                *(v88 + 4) = 0x4000;
                *(v88 + 10) = 0;
                *(v1 + 604) = v83 + 1;
                *(v84 + 12 * (v83 + 1) + 6) = 0xFFFF;
LABEL_126:
                v93 = *(v88 + 4);
                v94 = *(v1 + 696);
                if (v93 <= v76)
                {
                  v63 = v109;
                  v66 = v99;
                  if (v94 && *v88 != v109)
                  {
                    result = sub_100020FE0(*(v1 + 704), v109, *v88, v76 - v93, v76 - *(v1 + 736));
                  }
                }

                else
                {
                  v63 = v109;
                  v66 = v99;
                  if (v94)
                  {
                    v95 = *v88;
                    if (v93 != 0x4000 && v95 != v109)
                    {
                      result = sub_100020FE0(*(v1 + 704), v95, v109, v93 - v76, v93 - *(v1 + 736));
                    }
                  }

                  *(v88 + 4) = v76;
                  *v88 = v109;
                }

                goto LABEL_108;
              }

              *(v1 + 548) = 3;
LABEL_30:
              v21 = v101;
LABEL_31:
              if (v22 == *(v1 + 712))
              {
                goto LABEL_137;
              }

              v26 = v22 - 14;
              v21 = (v21 - 28);
              goto LABEL_33;
            }

            while (2)
            {
              while (1)
              {
                v87 = (v85 + v86) >> 1;
                v88 = (v84 + 12 * v87);
                v89 = *(v88 + 3);
                if (v89 > v72)
                {
                  break;
                }

                if (v89 >= v72)
                {
                  v90 = *(v88 + 2);
                  if (v90 > result)
                  {
                    break;
                  }

                  if (v90 >= result)
                  {
                    goto LABEL_126;
                  }
                }

                v85 = v87 + 1;
                if ((v87 + 1) > v86)
                {
                  goto LABEL_122;
                }
              }

              v86 = v87 - 1;
              if (v85 > (v87 - 1))
              {
                goto LABEL_122;
              }

              continue;
            }
          }

          v62 = v101;
          v63 = v109;
          if (!*(v1 + 852))
          {
            goto LABEL_97;
          }

LABEL_94:
          if (v22 == *(v1 + 712))
          {
            goto LABEL_137;
          }

          v22 -= 14;
          v21 = (v62 - 28);
          v25 = v113;
        }

        else
        {
          if (HIDWORD(v119) == v38)
          {
            if (v110)
            {
              if (v37 <= v102)
              {
                result = sub_1000CFF6C(v110, 1, v28 == 1, 0, v22[5], *(v1 + 812), v27, v22[2], v40, 0x4000, &v120);
                if (v120)
                {
                  goto LABEL_19;
                }
              }
            }
          }

          if (v22 == *(v1 + 712))
          {
            goto LABEL_137;
          }

          v26 = v22 - 14;
          v21 = (v21 - 28);
LABEL_33:
          v25 = v113;
          v22 = v26;
        }
      }

      else
      {
        if (v22 == *(v1 + 712))
        {
          goto LABEL_137;
        }

        v22 -= 14;
      }
    }

    v30 = v22[12];
    if (v25)
    {
      if (v30 <= *(v1 + 744))
      {
        goto LABEL_62;
      }

      goto LABEL_58;
    }

    v31 = *(v1 + 712);
    v32 = v22 - 14;
    if ((v22 - 14) < v31)
    {
      break;
    }

    v33 = v22[12];
    while (*v22 == *v32 && *(v32 + 2) == 1)
    {
      if (v32[12] < v33)
      {
        v33 = v32[12];
      }

      v32 -= 14;
      if (v32 < v31)
      {
        goto LABEL_53;
      }
    }

    v34 = *(v1 + 744);
    if (v34 >= v33)
    {
      goto LABEL_57;
    }

    v25 = 0;
    v22 = v32;
  }

  v33 = v22[12];
LABEL_53:
  v34 = *(v1 + 744);
  if (v34 >= v33)
  {
LABEL_57:
    v25 = -1227133513 * ((v22 - v32) >> 2);
    if (v30 <= v34)
    {
LABEL_62:
      --v25;
      goto LABEL_63;
    }

LABEL_58:
    if (*(v1 + 560) >= 1)
    {
      v35 = 0;
      do
      {
        v22[v35++ + 3] = 0x4000;
      }

      while (v35 < *(v1 + 560));
    }

    v22[12] = 0x4000;
    goto LABEL_62;
  }

LABEL_137:
  *(v1 + 732) = v114;
  return result;
}

uint64_t sub_10009E624(uint64_t a1, unsigned __int16 **a2, unint64_t *a3, uint64_t a4, void *a5)
{
  v78 = 0;
  v76 = 0;
  v77 = 0;
  v9 = *a2;
  v10 = *a3;
  v11 = *a5;
  result = sub_100099F24(*(a1 + 840), **a2, &v76, &v77, &v78);
  v17 = *(v11 + 6);
  v18 = *v9;
  v19 = *(v9 + 2);
  v20 = v17 == v18;
  if (v17 != v18)
  {
    v22 = v78;
    v23 = v78 == v19;
    v72 = a2;
    v73 = a3;
    if (v78 != v19)
    {
      v26 = -1;
      v25 = -1;
      v24 = 0x4000;
      *a5 = v11;
      if (v22 == v19 && v22 != 1)
      {
LABEL_39:
        v25 = *(a1 + 812);
      }

LABEL_40:
      v42 = v22 != 2 || v24 == 0x4000;
      if (v22 > v19)
      {
        v43 = *(v9 + 2);
        if (v43 < 2)
        {
          v24 = 0x4000;
          v26 = -1;
          v25 = -1;
          if (v43 == 1)
          {
            goto LABEL_80;
          }

          goto LABEL_76;
        }

        v44 = *v9;
        *(v10 + 12) = *(v9 + 6);
        *v10 = v44;
        result = sub_10009FF2C(a1, 0x4000, -1, -1, v10);
        v24 = v9[3];
        v25 = v9[5];
        v26 = *(v9 + 4);
        v9 += 14;
        v10 += 28;
      }

      v45 = *(v9 + 2);
      if (*(v9 - 26) - 1 == v45)
      {
        v46 = 0;
        while (1)
        {
          v47 = &v9[v46];
          v13 = (v10 + v46 * 2);
          if (v45 < 2 || *(v47 - 14) != *v47)
          {
            break;
          }

          v48 = *v47;
          *(v13 + 12) = *(v47 + 6);
          *v13 = v48;
          result = sub_10009FF2C(a1, v24, v25, v26, v13);
          v24 = v9[v46 + 3];
          v25 = v9[v46 + 5];
          v26 = *&v9[v46 + 8];
          v49 = LOBYTE(v9[v46 + 1]) - 1;
          v45 = LOBYTE(v9[v46 + 15]);
          v46 += 14;
          if (v49 != v45)
          {
            v9 = (v9 + v46 * 2);
            v50 = v9 - 14;
            v10 += v46 * 2;
            if (*(v9 - 26) >= 3u)
            {
              goto LABEL_57;
            }

            goto LABEL_73;
          }
        }

        v50 = v47 - 14;
        v9 = (v9 + v46 * 2);
        v10 += v46 * 2;
        if (*(v47 - 26) >= 3u)
        {
          goto LABEL_57;
        }
      }

      else
      {
        v50 = v9 - 14;
        if (*(v9 - 26) >= 3u)
        {
LABEL_57:
          if (v24 != 0x4000)
          {
            if ((v9 - 28) <= v10)
            {
LABEL_100:
              *v72 = v9;
              *v73 = v10;
              goto LABEL_101;
            }

            *(v10 + 6) = 1073758208;
            *(v10 + 4) = v77[*(v50 + 2) - 2];
            *v10 = *v50;
            *(v10 + 2) = *(v50 + 2) - 1;
            result = sub_10009FF2C(a1, v24, v25, v26, v10);
            v10 += 28;
          }

          goto LABEL_99;
        }
      }

LABEL_73:
      if (v78 >= 2)
      {
        if (v24 == 0x4000)
        {
          goto LABEL_99;
        }

        goto LABEL_80;
      }

LABEL_76:
      if (v42)
      {
        if (*v9 != v18)
        {
          goto LABEL_86;
        }

        goto LABEL_78;
      }

LABEL_80:
      if (*v9 != v18 || !*(v9 + 2))
      {
        result = sub_100002528(*(a1 + 384), word_100101770, *v76, v76[1], v13, v14, v15, v16);
        if ((result & 0x80000000) == 0)
        {
          v60 = 0;
          v61 = result;
          v75 = word_100101770[result];
          v62 = (result + 1);
          do
          {
            if (v60 >= v61 || word_100101770[v60] != v75)
            {
              if ((v9 - 28) <= v10)
              {
                goto LABEL_100;
              }

              *(v10 + 6) = 1073758208;
              *(v10 + 4) = word_100101770[v60];
              *v10 = v18;
              *(v10 + 2) = 1;
              result = sub_10009FF2C(a1, v24, v25, v26, v10);
              v10 += 28;
            }

            ++v60;
          }

          while (v62 != v60);
        }

        if (*v9 != v18)
        {
          goto LABEL_99;
        }

        v25 = -1;
        v26 = -1;
        v24 = 0x4000;
        v63 = *(v9 + 6);
        v64 = *v9;
        v9 += 14;
        *v10 = v64;
        *(v10 + 12) = v63;
        if (!*(v10 + 2))
        {
          goto LABEL_102;
        }

        goto LABEL_98;
      }

      v55 = 0;
      do
      {
        v56 = &v9[v55];
        v57 = (v10 + v55 * 2);
        v58 = *&v9[v55];
        *(v57 + 12) = *&v9[v55 + 6];
        *v57 = v58;
        result = sub_10009FF2C(a1, v24, v25, v26, v10 + v55 * 2);
        v59 = v9[v55 + 14];
        if (v59 != v18)
        {
          break;
        }

        v55 += 14;
      }

      while (*(v56 + 30) == 1);
      v24 = v56[3];
      v25 = v56[5];
      v9 = v56 + 14;
      v10 = v57 + 28;
      v26 = *(v56 + 4);
      if (v59 != v18)
      {
LABEL_86:
        if (v24 != 0x4000)
        {
          if ((v9 - 28) > v10)
          {
            *v10 = v18;
            *(v10 + 2) = 0;
            *(v10 + 4) = *(a1 + 660);
            *(v10 + 6) = 0x4000;
LABEL_102:
            v79 = 0;
            result = sub_100012628(*(a1 + 384), *(v10 + 4), &v79);
            v65 = *(v10 + 6);
            if (v65 >= v24)
            {
              *(v10 + 6) = v24;
              *(v10 + 10) = v25;
              LOWORD(v65) = v24;
              *(v10 + 16) = v26;
            }

            if (*(a1 + 744) >= v65)
            {
              v68 = *result;
              result = *(*(*(a1 + 384) + 1792) + 2 * v68);
              v67 = v72;
              v66 = v73;
              if (result == 0x4000)
              {
                result = sub_100012668(*(a1 + 384), v68);
                LOWORD(v65) = *(v10 + 6);
              }

              v69 = result - *(a1 + 740) + v65;
              *(v10 + 6) = v69;
              *(v10 + 24) = v69;
              if (v69 < *(a1 + 736))
              {
                *(a1 + 736) = v69;
                *(a1 + 808) = *(v10 + 4);
                v69 = *(v10 + 24);
              }

              v70 = *(a1 + 824);
              if (*v70 > v69)
              {
                ++*(*(v70 + 8) + 2 * v69);
              }

              goto LABEL_107;
            }

            *(v10 + 24) = 0x4000;
            *(v10 + 6) = 0x4000;
LABEL_106:
            v67 = v72;
            v66 = v73;
LABEL_107:
            *v67 = v9;
            *v66 = v10 + 28;
            return result;
          }

LABEL_101:
          *(a1 + 548) = 3;
          return result;
        }

LABEL_99:
        *v72 = v9;
        *v73 = v10;
        return result;
      }

LABEL_78:
      v53 = *(v9 + 6);
      v54 = *v9;
      v9 += 14;
      *v10 = v54;
      *(v10 + 12) = v53;
      if (!*(v10 + 2))
      {
        goto LABEL_102;
      }

LABEL_98:
      result = sub_10009FF2C(a1, v24, v25, v26, v10);
      goto LABEL_106;
    }

    v74 = a5;
LABEL_11:
    v24 = 0x4000;
    v25 = -1;
    v26 = -1;
    v27 = 1;
    v71 = *(v9 + 2);
    v28 = v20;
    v29 = 1;
    do
    {
      if (v20 && ((v30 = v22 > v19, v31 = *(v11 + 4), v32 = v9[2], v30 || !v27) || v31 <= v32))
      {
        v35 = *(v11 + 8);
        v36 = *v11;
        if (v31 != v32 || !v23)
        {
          if ((v9 - 28) <= v10)
          {
            goto LABEL_101;
          }

          *(v10 + 6) = 1073758208;
          *v10 = *(v11 + 6);
          *(v10 + 2) = v22;
          *(v10 + 4) = *(v11 + 4);
          *(v10 + 3) = *(v11 + 10);
        }

        else
        {
          v37 = *v9;
          *(v10 + 12) = *(v9 + 6);
          *v10 = v37;
          if (v9[3] < v24 && (v22 > 1 || *(v9 + 3)))
          {
            v25 = v9[5];
            v26 = *(v9 + 4);
            v24 = v9[3];
          }

          v38 = v9[14];
          v9 += 14;
          v29 = v38 == v18;
        }

        do
        {
          v39 = *(v11 + 20);
          v11 += 12;
        }

        while (v39 == 0x4000);
        v28 = *(v11 + 6) == v18;
      }

      else
      {
        v33 = *v9;
        *(v10 + 12) = *(v9 + 6);
        *v10 = v33;
        if (v9[3] < v24 && (v22 > 1 || *(v9 + 3)))
        {
          v25 = v9[5];
          v26 = *(v9 + 4);
          v24 = v9[3];
        }

        v34 = v9[14];
        v9 += 14;
        v29 = v34 == v18;
        v35 = 0x4000;
        v36 = -1;
      }

      result = sub_10009FF2C(a1, v35, *(a1 + 812), v36, v10);
      v10 += 28;
      v19 = *(v9 + 2);
      v22 = v78;
      v27 = v29;
      v23 = v29 && v78 == v19;
      LOBYTE(v20) = v28;
    }

    while (v23 || v28);
    v19 = v71;
    *v74 = v11;
    if (v22 == v71 && v22 != 1)
    {
      goto LABEL_39;
    }

    goto LABEL_40;
  }

  v22 = v78;
  if (v78 == v19 || v78 == 1)
  {
    v73 = a3;
    v74 = a5;
    v72 = a2;
    v23 = v78 == v19;
    goto LABEL_11;
  }

  if ((v9 - 28) <= v10)
  {
    goto LABEL_101;
  }

  *(v10 + 6) = 1073758208;
  *v10 = *(v11 + 6);
  *(v10 + 2) = v22;
  *(v10 + 4) = *(v11 + 4);
  result = sub_10009FF2C(a1, *(v11 + 8), *(a1 + 812), *v11, v10);
  *a3 += 28;
  do
  {
    v51 = *(v11 + 20);
    v11 += 12;
  }

  while (v51 == 0x4000);
  *a5 = v11;
  return result;
}

void sub_10009EDDC(uint64_t a1)
{
  v71 = 0x40000000;
  v72 = -1;
  v2 = *(a1 + 472);
  v3 = *(a1 + 376);
  v4 = (*(a1 + 736) + *(a1 + 742));
  v5 = *(a1 + 820);
  if (*(a1 + 732) > v5)
  {
    LOWORD(v4) = sub_10005B794(*(a1 + 824), v5, *(a1 + 736), v4);
  }

  v70 = 0;
  *(a1 + 744) = v4;
  v6 = *(a1 + 592);
  v7 = *(a1 + 584);
  *(a1 + 604) = v7;
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = v6 + 4;
    do
    {
      *(v9 - 1) = *(*(a1 + 568) + 2 * v8);
      *v9 = 0x4000;
      v9 += 6;
      ++v8;
    }

    while (v8 < *(a1 + 584));
    v7 = *(a1 + 604);
  }

  qsort(v6, v7, 0xCuLL, sub_1000A01F8);
  v10 = *(a1 + 662);
  *(a1 + 738) = *(a1 + 662);
  if (v10 <= *(a1 + 744))
  {
    (*(a1 + 880))(a1);
    if (v2)
    {
      sub_1000CFB6C(v2, *(a1 + 666), *(a1 + 812), 65534, *(a1 + 756) + *(a1 + 662), &v70);
      if (v70)
      {
LABEL_11:
        *(a1 + 548) = 3;
        return;
      }
    }
  }

  else
  {
    *(a1 + 662) = 0x4000;
    *(a1 + 680) = 0x4000;
  }

  v11 = *(a1 + 712) + 28 * *(a1 + 732);
  v12 = *(a1 + 720);
  v13 = *(v11 - 28);
  *(v12 - 16) = *(v11 - 16);
  *(v12 - 28) = v13;
  if (*(a1 + 732) == 1)
  {
    v14 = *(a1 + 592);
    v15 = *(a1 + 604);
    if (v15 < 1)
    {
      v24 = *(a1 + 592);
    }

    else
    {
      v16 = 0;
      v17 = (v14 + 8);
      do
      {
        if (*v17 < 0x4000)
        {
          v18 = *(v17 - 1);
          *(v14 + 8) = *v17;
          *v14 = v18;
          v14 += 12;
          v15 = *(a1 + 604);
        }

        ++v16;
        v17 += 6;
      }

      while (v16 < v15);
      v24 = *(a1 + 592);
    }

    *(a1 + 604) = -1431655765 * ((v14 - v24) >> 2);
    *(v14 + 6) = 0xFFFF;
    return;
  }

  v19 = (v12 - 56);
  v20 = (v11 - 56);
  v21 = *(a1 + 744);
  v22 = *(a1 + 746);
  if (v22 >= (v21 - *(a1 + 736)))
  {
    LOWORD(v22) = v21 - *(a1 + 736);
  }

  if (qword_1001065A8)
  {
    v23 = *(qword_1001065A8 + 1696);
    if (v23 >= v22)
    {
      LOWORD(v23) = v22;
    }
  }

  else
  {
    LODWORD(v23) = v22 & (v22 >> 31);
  }

  v67 = v23;
  v25 = 1;
  v69 = v22;
  while (v20[12] <= v21)
  {
    v26 = v20;
LABEL_36:
    v28 = *v26;
    *(v19 + 12) = *(v26 + 6);
    *v19 = v28;
    ++v25;
    v29 = *(v26 + 2);
    if (v29 >= 2)
    {
      v30 = v26[12];
      if (v30 < *(a1 + 738))
      {
        *(a1 + 738) = v30;
      }

      if (v26 == *(a1 + 712))
      {
        goto LABEL_70;
      }

      goto LABEL_29;
    }

    if (*(v26 + 2))
    {
      v31 = v26[12];
      if (v31 >= *(a1 + 738))
      {
        v32 = 0;
        v33 = v26[3];
        v34 = (v26[3] - *(a1 + 736));
        if (v34 > v22)
        {
          goto LABEL_68;
        }
      }

      else
      {
        v32 = 0;
        *(a1 + 738) = v31;
        v33 = v26[3];
        v34 = (v26[3] - *(a1 + 736));
        if (v34 > v22)
        {
          goto LABEL_68;
        }
      }
    }

    else
    {
      v32 = 1;
      v33 = v26[3];
      v34 = (v26[3] - *(a1 + 736));
      if (v34 > v22)
      {
        goto LABEL_68;
      }
    }

    v66 = v2;
    v35 = *(a1 + 756);
    v68 = *v26;
    v36 = sub_1000BA7F4(v3, v68, 0);
    v64 = sub_1000BABCC(v3, a1 + 814, *(a1 + 816), v36);
    v65 = v3;
    if (!*(a1 + 696) || qword_1001065A8 && *(qword_1001065A8 + 4736))
    {
      v37 = 1;
    }

    else
    {
      sub_10009C04C(*(a1 + 688), &v72, &v71);
      v37 = v71 == 0x40000000;
    }

    v38 = v35 + v33;
    v39 = sub_10009B3D0(*(a1 + 688), *(v26 + 4), v68, 0, v32, v34, *(a1 + 812));
    v2 = v66;
    if (v66)
    {
      if (v34 <= v67)
      {
        v40 = v32;
        v41 = v25;
        v42 = v37;
        v43 = v39;
        sub_1000CFB74(v66, v26[5], *(a1 + 812), v68, v38, &v70, v40);
        v39 = v43;
        v37 = v42;
        v25 = v41;
        if (v70)
        {
          goto LABEL_11;
        }
      }
    }

    v44 = v38 + v64;
    if (!v37)
    {
      v45 = v72;
      if (v39 != v72)
      {
        v46 = v71;
        v47 = v71 - v44;
        if (v71 <= v44)
        {
          v47 = v44 - v71;
          v51 = v34;
          v53 = v39;
          v52 = v39;
        }

        else
        {
          v62 = *(a1 + 736);
          v63 = *(a1 + 756);
          v61 = v39;
          v48 = sub_10009C014(*(a1 + 688), v72);
          v49 = sub_1000BA7F4(v65, v48, 0);
          v50 = sub_1000BABCC(v65, a1 + 814, *(a1 + 816), v49);
          v45 = v61;
          v51 = v46 - (v63 + v62 + v50 - v64);
          v52 = v72;
          v53 = v61;
        }

        sub_100020FE0(*(a1 + 704), v52, v45, v47, v51);
        v2 = v66;
        v39 = v53;
      }
    }

    v3 = v65;
    if (!(v29 | *(a1 + 848)))
    {
      goto LABEL_61;
    }

    if (!v29 || !*(a1 + 852))
    {
      if (*(a1 + 544) != 1 && (*(a1 + 736) + *(a1 + 748) + v34) <= *(a1 + 744))
      {
        v54 = v39;
        (*(a1 + 888))(a1);
        v39 = v54;
      }

      if (!v29)
      {
LABEL_61:
        sub_10009B824(*(a1 + 688), v39, v44);
      }
    }

LABEL_68:
    if (sub_10009C034(*(a1 + 688)))
    {
      goto LABEL_11;
    }

    LOWORD(v22) = v69;
    if (v26 == *(a1 + 712))
    {
      goto LABEL_70;
    }

LABEL_29:
    v19 = (v19 - 28);
    v20 = v26 - 14;
    v21 = *(a1 + 744);
  }

  while (v20 != *(a1 + 712))
  {
    v26 = v20 - 14;
    v27 = *(v20 - 2) <= v21;
    v20 -= 14;
    if (v27)
    {
      goto LABEL_36;
    }
  }

LABEL_70:
  v55 = *(a1 + 604);
  if (v55 >= *(a1 + 600) - 1)
  {
    *(a1 + 548) = 3;
  }

  v56 = *(a1 + 592);
  if (v55 < 1)
  {
    v60 = *(a1 + 592);
  }

  else
  {
    v57 = 0;
    v58 = (v56 + 8);
    do
    {
      if (*v58 < 0x4000)
      {
        v59 = *(v58 - 1);
        *(v56 + 8) = *v58;
        *v56 = v59;
        v56 += 12;
        v55 = *(a1 + 604);
      }

      ++v57;
      v58 += 6;
    }

    while (v57 < v55);
    v60 = *(a1 + 592);
  }

  *(a1 + 604) = -1431655765 * ((v56 - v60) >> 2);
  *(v56 + 6) = 0xFFFF;
  *(a1 + 732) = v25;
}

uint64_t sub_10009F42C(uint64_t a1, void *a2, unint64_t *a3, int a4, uint64_t *a5)
{
  v49 = 0;
  v48 = 0;
  v10 = *a2;
  v11 = *a3;
  v12 = *a5;
  v46[1] = 0;
  v46[0] = 0x4000000000FF0000;
  v47 = 0;
  v46[2] = 0xFFFFFFFFLL;
  result = sub_100099F24(*(a1 + 840), *v10, 0, &v48, &v49);
  if (*v10 == a4)
  {
    v14 = v49;
    if (v49 == *(v10 + 2))
    {
      v15 = *(v12 + 8);
      v16 = *v12;
      v17 = *v10;
      *(v11 + 12) = *(v10 + 6);
      *v11 = v17;
      do
      {
        v18 = *(v12 + 20);
        v12 += 12;
      }

      while (v18 == 0x4000);
      v44 = a2;
      v45 = a3;
      *a5 = v12;
      v19 = v10 + 14;
    }

    else
    {
      if ((v10 - 28) <= v11)
      {
LABEL_39:
        *(a1 + 548) = 3;
        return result;
      }

      *(v11 + 6) = 1073758208;
      *v11 = a4;
      *(v11 + 2) = v14;
      v42 = v48[v14 - 1];
      *(v11 + 4) = v42;
      v15 = *(v12 + 8);
      v16 = *v12;
      LOWORD(v46[0]) = a4;
      WORD2(v46[0]) = v42;
      do
      {
        v43 = *(v12 + 20);
        v12 += 12;
      }

      while (v43 == 0x4000);
      v44 = a2;
      v45 = a3;
      *a5 = v12;
      v19 = v10;
      v10 = v46;
    }
  }

  else
  {
    v44 = a2;
    v45 = a3;
    v20 = *v10;
    *(v11 + 12) = *(v10 + 6);
    *v11 = v20;
    v19 = v10 + 14;
    v15 = 0x4000;
    v16 = -1;
  }

  result = sub_10009FF2C(a1, v15, *(a1 + 812), v16, v11);
  v21 = (v11 + 28);
  v22 = *(v10 + 2);
  if (v22 - 1 != *(v19 + 2))
  {
    goto LABEL_30;
  }

LABEL_24:
  if (*v10 == *v19)
  {
    v32 = 0;
    do
    {
      v33 = &v19[v32];
      v34 = v11 + v32 * 2;
      v35 = v11 + v32 * 2 + 28;
      v36 = v10[3];
      v37 = v10[5];
      v38 = *(v10 + 4);
      v39 = *&v19[v32];
      *(v34 + 40) = *&v19[v32 + 6];
      *(v34 + 28) = v39;
      result = sub_10009FF2C(a1, v36, v37, v38, v35);
      v40 = LOBYTE(v19[v32 + 1]);
      if (v40 - 1 != LOBYTE(v19[v32 + 15]))
      {
        break;
      }

      v32 += 14;
      v10 = v33;
    }

    while (*v33 == v33[14]);
    v10 = v33 + 14;
    v21 = (v34 + 56);
    v11 = v35;
    if (v40)
    {
      goto LABEL_31;
    }
  }

  else
  {
LABEL_30:
    while (1)
    {
      v33 = v10;
      v10 = v19;
      if (!v22)
      {
        break;
      }

LABEL_31:
      v41 = v33[3];
      if (v41 == 0x4000)
      {
        break;
      }

      if (v10 - 28 <= v21)
      {
        *v44 = v10;
        *v45 = v21;
        goto LABEL_39;
      }

      v23 = v33[5];
      v24 = *(v33 + 4);
      *v21 = *v33;
      v25 = *(v33 + 2) - 1;
      *(v11 + 30) = v25;
      if (v25)
      {
        *(v11 + 34) = 1073758208;
        *(v11 + 32) = v48[v25 - 1];
        result = sub_10009FF2C(a1, v41, v23, v24, v21);
      }

      else
      {
        v26 = *(a1 + 660);
        *(v11 + 32) = v26;
        *(v11 + 34) = 0x4000;
        v50 = 0;
        result = sub_100012628(*(a1 + 384), v26, &v50);
        v27 = *(v11 + 34);
        if (v27 >= v41)
        {
          *(v11 + 34) = v41;
          *(v11 + 38) = v23;
          v27 = v41;
          *(v11 + 44) = v24;
        }

        if (v27 <= *(a1 + 744))
        {
          v28 = *result;
          result = *(*(*(a1 + 384) + 1792) + 2 * v28);
          if (result == 0x4000)
          {
            result = sub_100012668(*(a1 + 384), v28);
            LOWORD(v27) = *(v11 + 34);
          }

          v29 = result - *(a1 + 740) + v27;
          *(v11 + 34) = v29;
          *(v11 + 52) = v29;
          if (v29 < *(a1 + 736))
          {
            *(a1 + 736) = v29;
            *(a1 + 808) = *(v11 + 32);
            v29 = *(v11 + 52);
          }

          v30 = *(a1 + 824);
          if (*v30 > v29)
          {
            ++*(*(v30 + 8) + 2 * v29);
          }
        }

        else
        {
          *(v11 + 52) = 0x4000;
          *(v11 + 34) = 0x4000;
        }
      }

      v11 += 56;
      if (*v33 != *v10)
      {
        goto LABEL_33;
      }

LABEL_23:
      v31 = *v10;
      *(v11 + 12) = *(v10 + 6);
      *v11 = v31;
      result = sub_10009FF2C(a1, 0x4000, 0, -1, v11);
      v19 = v10 + 14;
      v21 = (v11 + 28);
      v22 = *(v10 + 2);
      if (v22 - 1 == *(v10 + 30))
      {
        goto LABEL_24;
      }
    }
  }

  v11 = v21;
  if (*v33 == *v10)
  {
    goto LABEL_23;
  }

LABEL_33:
  *v44 = v10;
  *v45 = v11;
  return result;
}

uint64_t sub_10009F838(uint64_t a1)
{
  *(*(a1 + 592) + 12 * *(a1 + 604) + 6) = -1;
  *(*(a1 + 592) + 12 * *(a1 + 604) + 8) = 0;
  LODWORD(v31) = 0;
  result = sub_100012628(*(a1 + 384), *(a1 + 660), &v31);
  v3 = *(a1 + 662);
  if (v3 >= 0x4000)
  {
    v3 = 0x4000;
    *(a1 + 662) = 0x4000;
    *(a1 + 666) = -1;
    *(a1 + 672) = -1;
  }

  if (v3 <= *(a1 + 744))
  {
    v4 = *result;
    result = *(*(*(a1 + 384) + 1792) + 2 * v4);
    if (result == 0x4000)
    {
      result = sub_100012668(*(a1 + 384), v4);
      LOWORD(v3) = *(a1 + 662);
    }

    v5 = result - *(a1 + 740) + v3;
    v6 = v5;
    *(a1 + 662) = v5;
    *(a1 + 680) = v5;
    if (v5 < *(a1 + 736))
    {
      *(a1 + 736) = v5;
      *(a1 + 808) = *(a1 + 660);
    }

    v7 = *(a1 + 824);
    if (*v7 > v6)
    {
      ++*(*(v7 + 8) + 2 * v6);
    }
  }

  else
  {
    *(a1 + 680) = 0x4000;
    *(a1 + 662) = 0x4000;
  }

  v29 = *(a1 + 712);
  v8 = &v29[14 * (*(a1 + 728) - *(a1 + 732))];
  v30 = v8;
  v9 = *(a1 + 592) - 12;
  do
  {
    v10 = *(v9 + 20);
    v9 += 12;
  }

  while (v10 == 0x4000);
  v28 = v9;
  v11 = *(v9 + 6);
  v12 = *(a1 + 612);
  v13 = *v8;
  if (v12 >= v11 || v12 >= v13)
  {
    do
    {
      if (v11 >= v13)
      {
        result = (*(a1 + 536))(a1, &v30, &v29);
        if (*(a1 + 548) == 3)
        {
          return result;
        }

        v9 = v28;
      }

      else
      {
        v17 = v29;
        if (*(v9 + 8) - *(a1 + 740) <= *(a1 + 746))
        {
          if (v8 - 28 <= v29)
          {
            *(a1 + 548) = 3;
            return result;
          }

          v31 = 0;
          v32 = 0;
          sub_100099F24(*(a1 + 840), v11, 0, &v31, &v32);
          v18 = v32;
          if (*(a1 + 552))
          {
            v19 = (v9 + 4);
          }

          else
          {
            v19 = &v31[v32 - 1];
          }

          v20 = *v19;
          v17[3] = 0x4000;
          v21 = v17 + 3;
          v17[4] = 0x4000;
          *(v17 + 2) = v18;
          *v17 = v11;
          v17[2] = v20;
          *(v17 + 3) = *(v9 + 10);
          result = sub_100012628(*(a1 + 384), v20, &v32 + 1);
          v22 = SHIDWORD(v32) - 1;
          v17[v22 + 3] = *(v9 + 8);
          v17[v22 + 5] = *(a1 + 812);
          *&v17[2 * v22 + 8] = *v9;
          v23 = v17[v22 + 3];
          if (v23 <= *(a1 + 744))
          {
            v24 = *(result + 2 * v22);
            result = *(*(*(a1 + 384) + 1792) + 2 * v24);
            if (result == 0x4000)
            {
              result = sub_100012668(*(a1 + 384), v24);
              v22 = SHIDWORD(v32) - 1;
              LOWORD(v23) = v21[v22];
            }

            v25 = result - *(a1 + 740) + v23;
            v21[v22] = v25;
            v17[12] = v25;
            if (v25 < *(a1 + 736))
            {
              *(a1 + 736) = v25;
              *(a1 + 808) = v17[2];
              v25 = v17[12];
            }

            v26 = *(a1 + 824);
            if (*v26 > v25)
            {
              ++*(*(v26 + 8) + 2 * v25);
            }
          }

          else
          {
            v17[12] = 0x4000;
            v21[v22] = 0x4000;
          }

          v17 += 14;
          v9 = v28;
        }

        v29 = v17;
        do
        {
          v27 = *(v9 + 20);
          v9 += 12;
        }

        while (v27 == 0x4000);
        v28 = v9;
      }

      v8 = v30;
      v11 = *(v9 + 6);
      v15 = *(a1 + 612);
      v13 = *v30;
    }

    while (v15 >= v11 || v15 >= v13);
  }

  *v29 = -1;
  *(a1 + 732) = -1227133513 * ((v29 - *(a1 + 712) + 28) >> 2);
  return result;
}

uint64_t sub_10009FBE0(uint64_t a1, unsigned int a2, int a3, int a4, int a5, int a6)
{
  v7 = a5;
  v11 = *(a1 + 592);
  v12 = *(a1 + 604);
  v13 = 0;
  v14 = __OFSUB__(v12, 1);
  v15 = v12 - 1;
  if (v15 < 0 == v14)
  {
    do
    {
      v16 = (v13 + v15) >> 1;
      if (*(v11 + 12 * v16 + 6) < a2)
      {
        v13 = v16 + 1;
      }

      else
      {
        v15 = v16 - 1;
      }
    }

    while (v13 <= v15);
  }

  if (a5 < 1)
  {
    return 1;
  }

  v42 = a1;
  v17 = (v11 + 12 * v13);
  v18 = &word_100101770;
  while (1)
  {
    v19 = v7;
    v20 = *(a1 + 604);
    v21 = v20 - v13;
    if (v20 <= v13)
    {
      break;
    }

    v22 = v17 + 6;
    if (*(v17 + 3) != a2)
    {
      break;
    }

    v23 = *(v17 + 2);
    v24 = *v18;
    if (v23 < v24)
    {
LABEL_10:
      ++v13;
      v17 += 3;
      if (v7 <= 0)
      {
        return 1;
      }
    }

    else
    {
      if (v23 <= v24)
      {
        v26 = *(v17 + 4);
        v27 = *(a1 + 696);
        if (v26 <= a3)
        {
          if (v27 && *v17 != a4)
          {
            sub_100020FE0(*(a1 + 704), a4, *v17, a3 - v26, a3 - *(a1 + 736));
            a1 = v42;
          }
        }

        else
        {
          if (v27 && v26 != 0x4000 && *v17 != a4)
          {
            sub_100020FE0(*(a1 + 704), *v17, a4, v26 - a3, v26 - *(a1 + 736));
            a1 = v42;
          }

          *(v17 + 4) = a3;
          *v17 = a4;
        }

        --v7;
        ++v18;
        goto LABEL_10;
      }

      v44 = v7;
      if (v7 < 2)
      {
        LODWORD(v25) = 1;
      }

      else
      {
        v25 = 1;
        while (v23 > v18[v25])
        {
          if (v19 == ++v25)
          {
            LODWORD(v25) = v19;
            break;
          }
        }
      }

      if (v25 + v20 >= *(a1 + 600))
      {
        goto LABEL_39;
      }

      v43 = *(a1 + 592);
      v28 = &v17[3 * v25];
      j__memmove(v28, v17, 12 * v21);
      v29 = v25;
      v30 = v18;
      v31 = v25;
      do
      {
        *v22 = a2;
        *(v22 - 1) = *v30;
        *(v22 + 1) = a3;
        *(v22 - 6) = a4;
        v32 = *v30++;
        v22[4] = v32 == a6;
        v22 += 12;
        --v31;
      }

      while (v31);
      a1 = v42;
      v33 = *(v42 + 604) + v25;
      *(v42 + 604) = v33;
      *(v43 + 12 * v33 + 6) = -1;
      *(v43 + 12 * *(v42 + 604) + 8) = 0;
      v13 += v25;
      v7 = v44 - v25;
      v18 += v29;
      v17 = v28;
      if (v7 <= 0)
      {
        return 1;
      }
    }
  }

  if (v20 + v7 >= *(a1 + 600))
  {
LABEL_39:
    v41 = a1;
    result = 0;
    *(v41 + 548) = 3;
    return result;
  }

  v34 = v7;
  v35 = *(a1 + 592);
  v36 = v34;
  j__memmove(&v17[3 * v34], v17, 12 * v21);
  v37 = v17 + 6;
  do
  {
    *v37 = a2;
    *(v37 - 1) = *v18;
    *(v37 + 1) = a3;
    *(v37 - 6) = a4;
    v38 = *v18++;
    v37[4] = v38 == a6;
    v37 += 12;
    --v19;
  }

  while (v19);
  v39 = *(v42 + 604) + v36;
  *(v42 + 604) = v39;
  *(v35 + 12 * v39 + 6) = -1;
  *(v35 + 12 * *(v42 + 604) + 8) = 0;
  return 1;
}

uint64_t sub_10009FF2C(uint64_t a1, int a2, __int16 a3, int a4, uint64_t a5)
{
  v10 = *(a5 + 4);
  if (v10 != *(a1 + 660))
  {
    result = sub_100012654(*(a1 + 384), v10);
    v13 = *(a5 + 8);
    v14 = *(a5 + 6);
    if (v13 <= v14)
    {
      *(a5 + 6) = *(a5 + 8);
      *(a5 + 10) = *(a5 + 12);
      *(a5 + 16) = *(a5 + 20);
      v14 = v13;
    }

    if (v14 <= *(a1 + 744))
    {
      v19 = *result;
      v20 = *(*(*(a1 + 384) + 1792) + 2 * v19);
      if (v20 == 0x4000)
      {
        v21 = result;
        LOWORD(v20) = sub_100012668(*(a1 + 384), v19);
        result = v21;
        LOWORD(v14) = *(a5 + 6);
        LOWORD(v13) = *(a5 + 8);
      }

      v15 = v20 - *(a1 + 740) + v14;
      *(a5 + 6) = v15;
      *(a5 + 24) = v15;
      if (a2 > v13)
      {
LABEL_22:
        if (*(a1 + 744) >= v13)
        {
          v22 = *(result + 2);
          result = *(*(*(a1 + 384) + 1792) + 2 * v22);
          if (result == 0x4000)
          {
            result = sub_100012668(*(a1 + 384), v22);
            LOWORD(v13) = *(a5 + 8);
            v15 = *(a5 + 24);
          }

          v23 = result - *(a1 + 740) + v13;
          *(a5 + 8) = v23;
          if (v23 < v15)
          {
            *(a5 + 24) = v23;
            v15 = v23;
            if (*(a1 + 736) > v23)
            {
              goto LABEL_32;
            }
          }

          else if (*(a1 + 736) > v15)
          {
            goto LABEL_32;
          }
        }

        else
        {
          *(a5 + 8) = 0x4000;
          if (*(a1 + 736) > v15)
          {
LABEL_32:
            *(a1 + 736) = v15;
            *(a1 + 808) = *(a5 + 4);
            v15 = *(a5 + 24);
            v24 = *(a1 + 824);
            if (*v24 <= v15)
            {
              return result;
            }

LABEL_33:
            ++*(*(v24 + 8) + 2 * v15);
            return result;
          }
        }

        v24 = *(a1 + 824);
        if (*v24 <= v15)
        {
          return result;
        }

        goto LABEL_33;
      }
    }

    else
    {
      v15 = 0x4000;
      *(a5 + 24) = 0x4000;
      *(a5 + 6) = 0x4000;
      if (a2 > v13)
      {
        goto LABEL_22;
      }
    }

    *(a5 + 8) = a2;
    *(a5 + 12) = a3;
    LOWORD(v13) = a2;
    *(a5 + 20) = a4;
    goto LABEL_22;
  }

  v25 = 0;
  result = sub_100012628(*(a1 + 384), v10, &v25);
  v12 = *(a5 + 6);
  if (v12 >= a2)
  {
    *(a5 + 6) = a2;
    *(a5 + 10) = a3;
    v12 = a2;
    *(a5 + 16) = a4;
  }

  if (v12 <= *(a1 + 744))
  {
    v16 = *result;
    result = *(*(*(a1 + 384) + 1792) + 2 * v16);
    if (result == 0x4000)
    {
      result = sub_100012668(*(a1 + 384), v16);
      LOWORD(v12) = *(a5 + 6);
    }

    v17 = result - *(a1 + 740) + v12;
    *(a5 + 6) = v17;
    *(a5 + 24) = v17;
    if (v17 < *(a1 + 736))
    {
      *(a1 + 736) = v17;
      *(a1 + 808) = *(a5 + 4);
      v17 = *(a5 + 24);
    }

    v18 = *(a1 + 824);
    if (*v18 > v17)
    {
      ++*(*(v18 + 8) + 2 * v17);
    }
  }

  else
  {
    *(a5 + 24) = 0x4000;
    *(a5 + 6) = 0x4000;
  }

  return result;
}

uint64_t sub_1000A0208(uint64_t a1)
{
  result = sub_1000C0034(2 * *(a1 + 128));
  *a1 = result;
  if (result)
  {
    result = sub_1000C0034(2 * *(a1 + 108) + 4);
    *(a1 + 8) = result;
    if (result)
    {
      result = sub_1000C0034(4 * (*(a1 + 108) / 2) + 4);
      *(a1 + 16) = result;
      if (result)
      {
        result = sub_1000C0034(2 * *(a1 + 112));
        *(a1 + 24) = result;
        if (result)
        {
          v3 = sub_1000C0034(2 * *(a1 + 124));
          *(a1 + 32) = v3;
          return v3 != 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1000A02A0(uint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_1000927FC(*(result + 88));
    sub_100034F78(v1[10]);
    sub_10007A390(v1[9]);
    sub_1000CEF50(v1[8]);
    sub_100003974(v1[7]);
    sub_100056790(v1[6]);
    sub_10005AC3C(v1[5]);
    sub_1000BFEC4(v1[4]);
    v1[4] = 0;
    sub_1000BFEC4(v1[3]);
    v1[3] = 0;
    sub_1000BFEC4(v1[2]);
    v1[2] = 0;
    sub_1000BFEC4(v1[1]);
    v1[1] = 0;
    sub_1000BFEC4(*v1);
    *v1 = 0;

    return sub_1000BFEC4(v1);
  }

  return result;
}