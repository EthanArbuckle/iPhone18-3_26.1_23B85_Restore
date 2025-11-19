int8x16_t *pixInGeneric<(PixelFormat)1647719521,(ChromaFormat)3>(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x2A1C7C4A8](a1, a2);
  v8 = v3;
  v9 = v2;
  v173 = *MEMORY[0x29EDCA608];
  if (v4 != 16 || v5 != 16)
  {
    if (v5 == 16)
    {
      v12 = 16 - v4;
      if (v4 <= 0)
      {
        v13 = v6;
        v14 = v172;
        goto LABEL_20;
      }

LABEL_18:
      v13 = v6;
      v24 = v4 + 1;
      v14 = v172;
      do
      {
        v25 = v9[1];
        *v14 = *v9;
        v14[1] = v25;
        v26 = v9[3];
        v14[2] = v9[2];
        v14[3] = v26;
        v27 = v9[5];
        v14[4] = v9[4];
        v14[5] = v27;
        v28 = v9[6];
        v29 = v9[7];
        v9 = (v9 + v6);
        v14[6] = v28;
        v14[7] = v29;
        v14 += 8;
        --v24;
      }

      while (v24 > 1);
LABEL_20:
      if (v12 >= 1)
      {
        v30 = (v9 - v13);
        v31 = *v30;
        v32 = v30[2];
        v33 = v30[3];
        v34 = v30[4];
        v35 = v30[5];
        v36 = v12 + 1;
        v37 = v30[6];
        v38 = v30[7];
        do
        {
          *v14 = v31;
          v14[1] = v30[1];
          v14[2] = v32;
          v14[3] = v33;
          v14[4] = v34;
          v14[5] = v35;
          v14[6] = v37;
          v14[7] = v38;
          v14 += 8;
          --v36;
        }

        while (v36 > 1);
      }

      goto LABEL_142;
    }

    if (v5 > 15)
    {
      goto LABEL_142;
    }

    v15 = v7;
    v16 = 8 * v5;
    v17 = v5;
    if (v4 <= 0)
    {
      v23 = &v2->i8[-v6];
      v22 = v172;
    }

    else
    {
      v18 = v16;
      v19 = v6;
      v20 = v4;
      v21 = v4 + 1;
      v22 = v172;
      do
      {
        memcpy(v22, v9, v16);
        v9 = (v9 + v19);
        v22 += 8;
        --v21;
      }

      while (v21 > 1);
      if (v20 > 15)
      {
        goto LABEL_27;
      }

      v4 = v20;
      v23 = &v9->i8[-v19];
    }

    v18 = v16;
    v39 = 17 - v4;
    do
    {
      memcpy(v22, v23, v18);
      v22 += 8;
      --v39;
    }

    while (v39 > 1);
LABEL_27:
    v40 = (v172[0].i64 + v18);
    v41 = &v172[-1].i8[v18 + 8];
    v42 = *(&v172[0].i64[-1] + v18);
    v43 = 16 - v17;
    if (16 - v17 <= 1)
    {
      v44 = 1;
    }

    else
    {
      v44 = v43;
    }

    if (v43 >= 4)
    {
      v45 = v44 & 0x7FFFFFFC;
      v41 += 8 * v45;
      v46 = vdupq_lane_s64(v42, 0);
      v47 = &v172[1].i8[v18];
      v48 = v45;
      do
      {
        v47[-1] = v46;
        *v47 = v46;
        v47 += 2;
        v48 -= 4;
      }

      while (v48);
      v7 = v15;
      if (v45 == v44)
      {
LABEL_37:
        v51 = v40 + 15;
        v52 = v40[15];
        if (v43 >= 4)
        {
          v53 = v44 & 0x7FFFFFFC;
          v51 += v53;
          v54 = vdupq_lane_s64(v52, 0);
          v55 = &v172[9].i8[v18];
          v56 = v53;
          do
          {
            v55[-1] = v54;
            *v55 = v54;
            v55 += 2;
            v56 -= 4;
          }

          while (v56);
          if (v53 == v44)
          {
LABEL_44:
            v59 = v40 + 31;
            v60 = v40[31];
            if (v43 >= 4)
            {
              v61 = v44 & 0x7FFFFFFC;
              v59 += v61;
              v62 = vdupq_lane_s64(v60, 0);
              v63 = &v172[17].i8[v18];
              v64 = v61;
              do
              {
                v63[-1] = v62;
                *v63 = v62;
                v63 += 2;
                v64 -= 4;
              }

              while (v64);
              if (v61 == v44)
              {
LABEL_51:
                v67 = v40 + 47;
                v68 = v40[47];
                if (v43 >= 4)
                {
                  v69 = v44 & 0x7FFFFFFC;
                  v67 += v69;
                  v70 = vdupq_lane_s64(v68, 0);
                  v71 = &v172[25].i8[v18];
                  v72 = v69;
                  do
                  {
                    v71[-1] = v70;
                    *v71 = v70;
                    v71 += 2;
                    v72 -= 4;
                  }

                  while (v72);
                  if (v69 == v44)
                  {
LABEL_58:
                    v75 = v40 + 63;
                    v76 = v40[63];
                    if (v43 >= 4)
                    {
                      v77 = v44 & 0x7FFFFFFC;
                      v75 += v77;
                      v78 = vdupq_lane_s64(v76, 0);
                      v79 = &v172[33].i8[v18];
                      v80 = v77;
                      do
                      {
                        v79[-1] = v78;
                        *v79 = v78;
                        v79 += 2;
                        v80 -= 4;
                      }

                      while (v80);
                      if (v77 == v44)
                      {
LABEL_65:
                        v83 = v40 + 79;
                        v84 = v40[79];
                        if (v43 >= 4)
                        {
                          v85 = v44 & 0x7FFFFFFC;
                          v83 += v85;
                          v86 = vdupq_lane_s64(v84, 0);
                          v87 = &v172[41].i8[v18];
                          v88 = v85;
                          do
                          {
                            v87[-1] = v86;
                            *v87 = v86;
                            v87 += 2;
                            v88 -= 4;
                          }

                          while (v88);
                          if (v85 == v44)
                          {
LABEL_72:
                            v91 = v40 + 95;
                            v92 = v40[95];
                            if (v43 >= 4)
                            {
                              v93 = v44 & 0x7FFFFFFC;
                              v91 += v93;
                              v94 = vdupq_lane_s64(v92, 0);
                              v95 = &v172[49].i8[v18];
                              v96 = v93;
                              do
                              {
                                v95[-1] = v94;
                                *v95 = v94;
                                v95 += 2;
                                v96 -= 4;
                              }

                              while (v96);
                              if (v93 == v44)
                              {
LABEL_79:
                                v99 = v40 + 111;
                                v100 = v40[111];
                                if (v43 >= 4)
                                {
                                  v101 = v44 & 0x7FFFFFFC;
                                  v99 += v101;
                                  v102 = vdupq_lane_s64(v100, 0);
                                  v103 = &v172[57].i8[v18];
                                  v104 = v101;
                                  do
                                  {
                                    v103[-1] = v102;
                                    *v103 = v102;
                                    v103 += 2;
                                    v104 -= 4;
                                  }

                                  while (v104);
                                  if (v101 == v44)
                                  {
LABEL_86:
                                    v107 = v40 + 127;
                                    v108 = v40[127];
                                    if (v43 >= 4)
                                    {
                                      v109 = v44 & 0x7FFFFFFC;
                                      v107 += v109;
                                      v110 = vdupq_lane_s64(v108, 0);
                                      v111 = &v172[65].i8[v18];
                                      v112 = v109;
                                      do
                                      {
                                        v111[-1] = v110;
                                        *v111 = v110;
                                        v111 += 2;
                                        v112 -= 4;
                                      }

                                      while (v112);
                                      if (v109 == v44)
                                      {
LABEL_93:
                                        v115 = v40 + 143;
                                        v116 = v40[143];
                                        if (v43 >= 4)
                                        {
                                          v117 = v44 & 0x7FFFFFFC;
                                          v115 += v117;
                                          v118 = vdupq_lane_s64(v116, 0);
                                          v119 = &v172[73].i8[v18];
                                          v120 = v117;
                                          do
                                          {
                                            v119[-1] = v118;
                                            *v119 = v118;
                                            v119 += 2;
                                            v120 -= 4;
                                          }

                                          while (v120);
                                          if (v117 == v44)
                                          {
LABEL_100:
                                            v123 = v40 + 159;
                                            v124 = v40[159];
                                            if (v43 >= 4)
                                            {
                                              v125 = v44 & 0x7FFFFFFC;
                                              v123 += v125;
                                              v126 = vdupq_lane_s64(v124, 0);
                                              v127 = &v172[81].i8[v18];
                                              v128 = v125;
                                              do
                                              {
                                                v127[-1] = v126;
                                                *v127 = v126;
                                                v127 += 2;
                                                v128 -= 4;
                                              }

                                              while (v128);
                                              if (v125 == v44)
                                              {
LABEL_107:
                                                v131 = v40 + 175;
                                                v132 = v40[175];
                                                if (v43 >= 4)
                                                {
                                                  v133 = v44 & 0x7FFFFFFC;
                                                  v131 += v133;
                                                  v134 = vdupq_lane_s64(v132, 0);
                                                  v135 = &v172[89].i8[v18];
                                                  v136 = v133;
                                                  do
                                                  {
                                                    v135[-1] = v134;
                                                    *v135 = v134;
                                                    v135 += 2;
                                                    v136 -= 4;
                                                  }

                                                  while (v136);
                                                  if (v133 == v44)
                                                  {
LABEL_114:
                                                    v139 = v40 + 191;
                                                    v140 = v40[191];
                                                    if (v43 >= 4)
                                                    {
                                                      v141 = v44 & 0x7FFFFFFC;
                                                      v139 += v141;
                                                      v142 = vdupq_lane_s64(v140, 0);
                                                      v143 = &v172[97].i8[v18];
                                                      v144 = v141;
                                                      do
                                                      {
                                                        v143[-1] = v142;
                                                        *v143 = v142;
                                                        v143 += 2;
                                                        v144 -= 4;
                                                      }

                                                      while (v144);
                                                      if (v141 == v44)
                                                      {
LABEL_121:
                                                        v147 = v40 + 207;
                                                        v148 = v40[207];
                                                        if (v43 >= 4)
                                                        {
                                                          v149 = v44 & 0x7FFFFFFC;
                                                          v147 += v149;
                                                          v150 = vdupq_lane_s64(v148, 0);
                                                          v151 = &v172[105].i8[v18];
                                                          v152 = v149;
                                                          do
                                                          {
                                                            v151[-1] = v150;
                                                            *v151 = v150;
                                                            v151 += 2;
                                                            v152 -= 4;
                                                          }

                                                          while (v152);
                                                          if (v149 == v44)
                                                          {
LABEL_128:
                                                            v155 = v40 + 223;
                                                            v156 = v40[223];
                                                            if (v43 >= 4)
                                                            {
                                                              v157 = v44 & 0x7FFFFFFC;
                                                              v155 += v157;
                                                              v158 = vdupq_lane_s64(v156, 0);
                                                              v159 = &v172[113].i8[v18];
                                                              v160 = v157;
                                                              do
                                                              {
                                                                v159[-1] = v158;
                                                                *v159 = v158;
                                                                v159 += 2;
                                                                v160 -= 4;
                                                              }

                                                              while (v160);
                                                              if (v157 == v44)
                                                              {
                                                                goto LABEL_135;
                                                              }
                                                            }

                                                            else
                                                            {
                                                              LODWORD(v157) = 0;
                                                            }

                                                            v161 = v44 - v157;
                                                            v162 = v155 + 1;
                                                            do
                                                            {
                                                              *v162++ = v156;
                                                              --v161;
                                                            }

                                                            while (v161);
LABEL_135:
                                                            v163 = v40 + 239;
                                                            v164 = v40[239];
                                                            if (v43 >= 4)
                                                            {
                                                              v165 = v44 & 0x7FFFFFFC;
                                                              v163 += v165;
                                                              v166 = vdupq_lane_s64(v164, 0);
                                                              v167 = &v172[121].i8[v18];
                                                              v168 = v165;
                                                              do
                                                              {
                                                                v167[-1] = v166;
                                                                *v167 = v166;
                                                                v167 += 2;
                                                                v168 -= 4;
                                                              }

                                                              while (v168);
                                                              if (v165 == v44)
                                                              {
                                                                goto LABEL_142;
                                                              }
                                                            }

                                                            else
                                                            {
                                                              LODWORD(v165) = 0;
                                                            }

                                                            v169 = v44 - v165;
                                                            v170 = v163 + 1;
                                                            do
                                                            {
                                                              *v170++ = v164;
                                                              --v169;
                                                            }

                                                            while (v169);
LABEL_142:
                                                            result = pixInFullMB<(PixelFormat)1647719521,(ChromaFormat)3>(v172, 128, v8, v7);
                                                            v171 = *MEMORY[0x29EDCA608];
                                                            return result;
                                                          }
                                                        }

                                                        else
                                                        {
                                                          LODWORD(v149) = 0;
                                                        }

                                                        v153 = v44 - v149;
                                                        v154 = v147 + 1;
                                                        do
                                                        {
                                                          *v154++ = v148;
                                                          --v153;
                                                        }

                                                        while (v153);
                                                        goto LABEL_128;
                                                      }
                                                    }

                                                    else
                                                    {
                                                      LODWORD(v141) = 0;
                                                    }

                                                    v145 = v44 - v141;
                                                    v146 = v139 + 1;
                                                    do
                                                    {
                                                      *v146++ = v140;
                                                      --v145;
                                                    }

                                                    while (v145);
                                                    goto LABEL_121;
                                                  }
                                                }

                                                else
                                                {
                                                  LODWORD(v133) = 0;
                                                }

                                                v137 = v44 - v133;
                                                v138 = v131 + 1;
                                                do
                                                {
                                                  *v138++ = v132;
                                                  --v137;
                                                }

                                                while (v137);
                                                goto LABEL_114;
                                              }
                                            }

                                            else
                                            {
                                              LODWORD(v125) = 0;
                                            }

                                            v129 = v44 - v125;
                                            v130 = v123 + 1;
                                            do
                                            {
                                              *v130++ = v124;
                                              --v129;
                                            }

                                            while (v129);
                                            goto LABEL_107;
                                          }
                                        }

                                        else
                                        {
                                          LODWORD(v117) = 0;
                                        }

                                        v121 = v44 - v117;
                                        v122 = v115 + 1;
                                        do
                                        {
                                          *v122++ = v116;
                                          --v121;
                                        }

                                        while (v121);
                                        goto LABEL_100;
                                      }
                                    }

                                    else
                                    {
                                      LODWORD(v109) = 0;
                                    }

                                    v113 = v44 - v109;
                                    v114 = v107 + 1;
                                    do
                                    {
                                      *v114++ = v108;
                                      --v113;
                                    }

                                    while (v113);
                                    goto LABEL_93;
                                  }
                                }

                                else
                                {
                                  LODWORD(v101) = 0;
                                }

                                v105 = v44 - v101;
                                v106 = v99 + 1;
                                do
                                {
                                  *v106++ = v100;
                                  --v105;
                                }

                                while (v105);
                                goto LABEL_86;
                              }
                            }

                            else
                            {
                              LODWORD(v93) = 0;
                            }

                            v97 = v44 - v93;
                            v98 = v91 + 1;
                            do
                            {
                              *v98++ = v92;
                              --v97;
                            }

                            while (v97);
                            goto LABEL_79;
                          }
                        }

                        else
                        {
                          LODWORD(v85) = 0;
                        }

                        v89 = v44 - v85;
                        v90 = v83 + 1;
                        do
                        {
                          *v90++ = v84;
                          --v89;
                        }

                        while (v89);
                        goto LABEL_72;
                      }
                    }

                    else
                    {
                      LODWORD(v77) = 0;
                    }

                    v81 = v44 - v77;
                    v82 = v75 + 1;
                    do
                    {
                      *v82++ = v76;
                      --v81;
                    }

                    while (v81);
                    goto LABEL_65;
                  }
                }

                else
                {
                  LODWORD(v69) = 0;
                }

                v73 = v44 - v69;
                v74 = v67 + 1;
                do
                {
                  *v74++ = v68;
                  --v73;
                }

                while (v73);
                goto LABEL_58;
              }
            }

            else
            {
              LODWORD(v61) = 0;
            }

            v65 = v44 - v61;
            v66 = v59 + 1;
            do
            {
              *v66++ = v60;
              --v65;
            }

            while (v65);
            goto LABEL_51;
          }
        }

        else
        {
          LODWORD(v53) = 0;
        }

        v57 = v44 - v53;
        v58 = v51 + 1;
        do
        {
          *v58++ = v52;
          --v57;
        }

        while (v57);
        goto LABEL_44;
      }
    }

    else
    {
      LODWORD(v45) = 0;
      v7 = v15;
    }

    v49 = v44 - v45;
    v50 = (v41 + 8);
    do
    {
      *v50++ = v42;
      --v49;
    }

    while (v49);
    goto LABEL_37;
  }

  if ((v2 & 0xF) != 0 || (v6 & 0xF) != 0)
  {
    v12 = 0;
    goto LABEL_18;
  }

  v10 = *MEMORY[0x29EDCA608];

  return pixInFullMB<(PixelFormat)1647719521,(ChromaFormat)3>(v2, v6, v3, v7);
}

int8x16_t *pixInGeneric<(PixelFormat)1647719542,(ChromaFormat)3>(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x2A1C7C4A8](a1, a2);
  v8 = v3;
  v9 = v2;
  v173 = *MEMORY[0x29EDCA608];
  if (v4 != 16 || v5 != 16)
  {
    if (v5 == 16)
    {
      v12 = 16 - v4;
      if (v4 <= 0)
      {
        v13 = v6;
        v14 = v172;
        goto LABEL_20;
      }

LABEL_18:
      v13 = v6;
      v24 = v4 + 1;
      v14 = v172;
      do
      {
        v25 = v9[1];
        *v14 = *v9;
        v14[1] = v25;
        v26 = v9[3];
        v14[2] = v9[2];
        v14[3] = v26;
        v27 = v9[5];
        v14[4] = v9[4];
        v14[5] = v27;
        v28 = v9[6];
        v29 = v9[7];
        v9 = (v9 + v6);
        v14[6] = v28;
        v14[7] = v29;
        v14 += 8;
        --v24;
      }

      while (v24 > 1);
LABEL_20:
      if (v12 >= 1)
      {
        v30 = (v9 - v13);
        v31 = *v30;
        v32 = v30[2];
        v33 = v30[3];
        v34 = v30[4];
        v35 = v30[5];
        v36 = v12 + 1;
        v37 = v30[6];
        v38 = v30[7];
        do
        {
          *v14 = v31;
          v14[1] = v30[1];
          v14[2] = v32;
          v14[3] = v33;
          v14[4] = v34;
          v14[5] = v35;
          v14[6] = v37;
          v14[7] = v38;
          v14 += 8;
          --v36;
        }

        while (v36 > 1);
      }

      goto LABEL_142;
    }

    if (v5 > 15)
    {
      goto LABEL_142;
    }

    v15 = v7;
    v16 = 8 * v5;
    v17 = v5;
    if (v4 <= 0)
    {
      v23 = &v2->i8[-v6];
      v22 = v172;
    }

    else
    {
      v18 = v16;
      v19 = v6;
      v20 = v4;
      v21 = v4 + 1;
      v22 = v172;
      do
      {
        memcpy(v22, v9, v16);
        v9 = (v9 + v19);
        v22 += 8;
        --v21;
      }

      while (v21 > 1);
      if (v20 > 15)
      {
        goto LABEL_27;
      }

      v4 = v20;
      v23 = &v9->i8[-v19];
    }

    v18 = v16;
    v39 = 17 - v4;
    do
    {
      memcpy(v22, v23, v18);
      v22 += 8;
      --v39;
    }

    while (v39 > 1);
LABEL_27:
    v40 = (v172[0].i64 + v18);
    v41 = &v172[-1].i8[v18 + 8];
    v42 = *(&v172[0].i64[-1] + v18);
    v43 = 16 - v17;
    if (16 - v17 <= 1)
    {
      v44 = 1;
    }

    else
    {
      v44 = v43;
    }

    if (v43 >= 4)
    {
      v45 = v44 & 0x7FFFFFFC;
      v41 += 8 * v45;
      v46 = vdupq_lane_s64(v42, 0);
      v47 = &v172[1].i8[v18];
      v48 = v45;
      do
      {
        v47[-1] = v46;
        *v47 = v46;
        v47 += 2;
        v48 -= 4;
      }

      while (v48);
      v7 = v15;
      if (v45 == v44)
      {
LABEL_37:
        v51 = v40 + 15;
        v52 = v40[15];
        if (v43 >= 4)
        {
          v53 = v44 & 0x7FFFFFFC;
          v51 += v53;
          v54 = vdupq_lane_s64(v52, 0);
          v55 = &v172[9].i8[v18];
          v56 = v53;
          do
          {
            v55[-1] = v54;
            *v55 = v54;
            v55 += 2;
            v56 -= 4;
          }

          while (v56);
          if (v53 == v44)
          {
LABEL_44:
            v59 = v40 + 31;
            v60 = v40[31];
            if (v43 >= 4)
            {
              v61 = v44 & 0x7FFFFFFC;
              v59 += v61;
              v62 = vdupq_lane_s64(v60, 0);
              v63 = &v172[17].i8[v18];
              v64 = v61;
              do
              {
                v63[-1] = v62;
                *v63 = v62;
                v63 += 2;
                v64 -= 4;
              }

              while (v64);
              if (v61 == v44)
              {
LABEL_51:
                v67 = v40 + 47;
                v68 = v40[47];
                if (v43 >= 4)
                {
                  v69 = v44 & 0x7FFFFFFC;
                  v67 += v69;
                  v70 = vdupq_lane_s64(v68, 0);
                  v71 = &v172[25].i8[v18];
                  v72 = v69;
                  do
                  {
                    v71[-1] = v70;
                    *v71 = v70;
                    v71 += 2;
                    v72 -= 4;
                  }

                  while (v72);
                  if (v69 == v44)
                  {
LABEL_58:
                    v75 = v40 + 63;
                    v76 = v40[63];
                    if (v43 >= 4)
                    {
                      v77 = v44 & 0x7FFFFFFC;
                      v75 += v77;
                      v78 = vdupq_lane_s64(v76, 0);
                      v79 = &v172[33].i8[v18];
                      v80 = v77;
                      do
                      {
                        v79[-1] = v78;
                        *v79 = v78;
                        v79 += 2;
                        v80 -= 4;
                      }

                      while (v80);
                      if (v77 == v44)
                      {
LABEL_65:
                        v83 = v40 + 79;
                        v84 = v40[79];
                        if (v43 >= 4)
                        {
                          v85 = v44 & 0x7FFFFFFC;
                          v83 += v85;
                          v86 = vdupq_lane_s64(v84, 0);
                          v87 = &v172[41].i8[v18];
                          v88 = v85;
                          do
                          {
                            v87[-1] = v86;
                            *v87 = v86;
                            v87 += 2;
                            v88 -= 4;
                          }

                          while (v88);
                          if (v85 == v44)
                          {
LABEL_72:
                            v91 = v40 + 95;
                            v92 = v40[95];
                            if (v43 >= 4)
                            {
                              v93 = v44 & 0x7FFFFFFC;
                              v91 += v93;
                              v94 = vdupq_lane_s64(v92, 0);
                              v95 = &v172[49].i8[v18];
                              v96 = v93;
                              do
                              {
                                v95[-1] = v94;
                                *v95 = v94;
                                v95 += 2;
                                v96 -= 4;
                              }

                              while (v96);
                              if (v93 == v44)
                              {
LABEL_79:
                                v99 = v40 + 111;
                                v100 = v40[111];
                                if (v43 >= 4)
                                {
                                  v101 = v44 & 0x7FFFFFFC;
                                  v99 += v101;
                                  v102 = vdupq_lane_s64(v100, 0);
                                  v103 = &v172[57].i8[v18];
                                  v104 = v101;
                                  do
                                  {
                                    v103[-1] = v102;
                                    *v103 = v102;
                                    v103 += 2;
                                    v104 -= 4;
                                  }

                                  while (v104);
                                  if (v101 == v44)
                                  {
LABEL_86:
                                    v107 = v40 + 127;
                                    v108 = v40[127];
                                    if (v43 >= 4)
                                    {
                                      v109 = v44 & 0x7FFFFFFC;
                                      v107 += v109;
                                      v110 = vdupq_lane_s64(v108, 0);
                                      v111 = &v172[65].i8[v18];
                                      v112 = v109;
                                      do
                                      {
                                        v111[-1] = v110;
                                        *v111 = v110;
                                        v111 += 2;
                                        v112 -= 4;
                                      }

                                      while (v112);
                                      if (v109 == v44)
                                      {
LABEL_93:
                                        v115 = v40 + 143;
                                        v116 = v40[143];
                                        if (v43 >= 4)
                                        {
                                          v117 = v44 & 0x7FFFFFFC;
                                          v115 += v117;
                                          v118 = vdupq_lane_s64(v116, 0);
                                          v119 = &v172[73].i8[v18];
                                          v120 = v117;
                                          do
                                          {
                                            v119[-1] = v118;
                                            *v119 = v118;
                                            v119 += 2;
                                            v120 -= 4;
                                          }

                                          while (v120);
                                          if (v117 == v44)
                                          {
LABEL_100:
                                            v123 = v40 + 159;
                                            v124 = v40[159];
                                            if (v43 >= 4)
                                            {
                                              v125 = v44 & 0x7FFFFFFC;
                                              v123 += v125;
                                              v126 = vdupq_lane_s64(v124, 0);
                                              v127 = &v172[81].i8[v18];
                                              v128 = v125;
                                              do
                                              {
                                                v127[-1] = v126;
                                                *v127 = v126;
                                                v127 += 2;
                                                v128 -= 4;
                                              }

                                              while (v128);
                                              if (v125 == v44)
                                              {
LABEL_107:
                                                v131 = v40 + 175;
                                                v132 = v40[175];
                                                if (v43 >= 4)
                                                {
                                                  v133 = v44 & 0x7FFFFFFC;
                                                  v131 += v133;
                                                  v134 = vdupq_lane_s64(v132, 0);
                                                  v135 = &v172[89].i8[v18];
                                                  v136 = v133;
                                                  do
                                                  {
                                                    v135[-1] = v134;
                                                    *v135 = v134;
                                                    v135 += 2;
                                                    v136 -= 4;
                                                  }

                                                  while (v136);
                                                  if (v133 == v44)
                                                  {
LABEL_114:
                                                    v139 = v40 + 191;
                                                    v140 = v40[191];
                                                    if (v43 >= 4)
                                                    {
                                                      v141 = v44 & 0x7FFFFFFC;
                                                      v139 += v141;
                                                      v142 = vdupq_lane_s64(v140, 0);
                                                      v143 = &v172[97].i8[v18];
                                                      v144 = v141;
                                                      do
                                                      {
                                                        v143[-1] = v142;
                                                        *v143 = v142;
                                                        v143 += 2;
                                                        v144 -= 4;
                                                      }

                                                      while (v144);
                                                      if (v141 == v44)
                                                      {
LABEL_121:
                                                        v147 = v40 + 207;
                                                        v148 = v40[207];
                                                        if (v43 >= 4)
                                                        {
                                                          v149 = v44 & 0x7FFFFFFC;
                                                          v147 += v149;
                                                          v150 = vdupq_lane_s64(v148, 0);
                                                          v151 = &v172[105].i8[v18];
                                                          v152 = v149;
                                                          do
                                                          {
                                                            v151[-1] = v150;
                                                            *v151 = v150;
                                                            v151 += 2;
                                                            v152 -= 4;
                                                          }

                                                          while (v152);
                                                          if (v149 == v44)
                                                          {
LABEL_128:
                                                            v155 = v40 + 223;
                                                            v156 = v40[223];
                                                            if (v43 >= 4)
                                                            {
                                                              v157 = v44 & 0x7FFFFFFC;
                                                              v155 += v157;
                                                              v158 = vdupq_lane_s64(v156, 0);
                                                              v159 = &v172[113].i8[v18];
                                                              v160 = v157;
                                                              do
                                                              {
                                                                v159[-1] = v158;
                                                                *v159 = v158;
                                                                v159 += 2;
                                                                v160 -= 4;
                                                              }

                                                              while (v160);
                                                              if (v157 == v44)
                                                              {
                                                                goto LABEL_135;
                                                              }
                                                            }

                                                            else
                                                            {
                                                              LODWORD(v157) = 0;
                                                            }

                                                            v161 = v44 - v157;
                                                            v162 = v155 + 1;
                                                            do
                                                            {
                                                              *v162++ = v156;
                                                              --v161;
                                                            }

                                                            while (v161);
LABEL_135:
                                                            v163 = v40 + 239;
                                                            v164 = v40[239];
                                                            if (v43 >= 4)
                                                            {
                                                              v165 = v44 & 0x7FFFFFFC;
                                                              v163 += v165;
                                                              v166 = vdupq_lane_s64(v164, 0);
                                                              v167 = &v172[121].i8[v18];
                                                              v168 = v165;
                                                              do
                                                              {
                                                                v167[-1] = v166;
                                                                *v167 = v166;
                                                                v167 += 2;
                                                                v168 -= 4;
                                                              }

                                                              while (v168);
                                                              if (v165 == v44)
                                                              {
                                                                goto LABEL_142;
                                                              }
                                                            }

                                                            else
                                                            {
                                                              LODWORD(v165) = 0;
                                                            }

                                                            v169 = v44 - v165;
                                                            v170 = v163 + 1;
                                                            do
                                                            {
                                                              *v170++ = v164;
                                                              --v169;
                                                            }

                                                            while (v169);
LABEL_142:
                                                            result = pixInFullMB<(PixelFormat)1647719542,(ChromaFormat)3>(v172, 128, v8, v7);
                                                            v171 = *MEMORY[0x29EDCA608];
                                                            return result;
                                                          }
                                                        }

                                                        else
                                                        {
                                                          LODWORD(v149) = 0;
                                                        }

                                                        v153 = v44 - v149;
                                                        v154 = v147 + 1;
                                                        do
                                                        {
                                                          *v154++ = v148;
                                                          --v153;
                                                        }

                                                        while (v153);
                                                        goto LABEL_128;
                                                      }
                                                    }

                                                    else
                                                    {
                                                      LODWORD(v141) = 0;
                                                    }

                                                    v145 = v44 - v141;
                                                    v146 = v139 + 1;
                                                    do
                                                    {
                                                      *v146++ = v140;
                                                      --v145;
                                                    }

                                                    while (v145);
                                                    goto LABEL_121;
                                                  }
                                                }

                                                else
                                                {
                                                  LODWORD(v133) = 0;
                                                }

                                                v137 = v44 - v133;
                                                v138 = v131 + 1;
                                                do
                                                {
                                                  *v138++ = v132;
                                                  --v137;
                                                }

                                                while (v137);
                                                goto LABEL_114;
                                              }
                                            }

                                            else
                                            {
                                              LODWORD(v125) = 0;
                                            }

                                            v129 = v44 - v125;
                                            v130 = v123 + 1;
                                            do
                                            {
                                              *v130++ = v124;
                                              --v129;
                                            }

                                            while (v129);
                                            goto LABEL_107;
                                          }
                                        }

                                        else
                                        {
                                          LODWORD(v117) = 0;
                                        }

                                        v121 = v44 - v117;
                                        v122 = v115 + 1;
                                        do
                                        {
                                          *v122++ = v116;
                                          --v121;
                                        }

                                        while (v121);
                                        goto LABEL_100;
                                      }
                                    }

                                    else
                                    {
                                      LODWORD(v109) = 0;
                                    }

                                    v113 = v44 - v109;
                                    v114 = v107 + 1;
                                    do
                                    {
                                      *v114++ = v108;
                                      --v113;
                                    }

                                    while (v113);
                                    goto LABEL_93;
                                  }
                                }

                                else
                                {
                                  LODWORD(v101) = 0;
                                }

                                v105 = v44 - v101;
                                v106 = v99 + 1;
                                do
                                {
                                  *v106++ = v100;
                                  --v105;
                                }

                                while (v105);
                                goto LABEL_86;
                              }
                            }

                            else
                            {
                              LODWORD(v93) = 0;
                            }

                            v97 = v44 - v93;
                            v98 = v91 + 1;
                            do
                            {
                              *v98++ = v92;
                              --v97;
                            }

                            while (v97);
                            goto LABEL_79;
                          }
                        }

                        else
                        {
                          LODWORD(v85) = 0;
                        }

                        v89 = v44 - v85;
                        v90 = v83 + 1;
                        do
                        {
                          *v90++ = v84;
                          --v89;
                        }

                        while (v89);
                        goto LABEL_72;
                      }
                    }

                    else
                    {
                      LODWORD(v77) = 0;
                    }

                    v81 = v44 - v77;
                    v82 = v75 + 1;
                    do
                    {
                      *v82++ = v76;
                      --v81;
                    }

                    while (v81);
                    goto LABEL_65;
                  }
                }

                else
                {
                  LODWORD(v69) = 0;
                }

                v73 = v44 - v69;
                v74 = v67 + 1;
                do
                {
                  *v74++ = v68;
                  --v73;
                }

                while (v73);
                goto LABEL_58;
              }
            }

            else
            {
              LODWORD(v61) = 0;
            }

            v65 = v44 - v61;
            v66 = v59 + 1;
            do
            {
              *v66++ = v60;
              --v65;
            }

            while (v65);
            goto LABEL_51;
          }
        }

        else
        {
          LODWORD(v53) = 0;
        }

        v57 = v44 - v53;
        v58 = v51 + 1;
        do
        {
          *v58++ = v52;
          --v57;
        }

        while (v57);
        goto LABEL_44;
      }
    }

    else
    {
      LODWORD(v45) = 0;
      v7 = v15;
    }

    v49 = v44 - v45;
    v50 = (v41 + 8);
    do
    {
      *v50++ = v42;
      --v49;
    }

    while (v49);
    goto LABEL_37;
  }

  if ((v2 & 0xF) != 0 || (v6 & 0xF) != 0)
  {
    v12 = 0;
    goto LABEL_18;
  }

  v10 = *MEMORY[0x29EDCA608];

  return pixInFullMB<(PixelFormat)1647719542,(ChromaFormat)3>(v2, v6, v3, v7);
}

uint64_t PixelInputFunctor::PixelInputFunctor(uint64_t a1, int a2, int a3, int a4)
{
  *a1 = getPixelInputRoutine(a2, a3);
  *(a1 + 8) = a4;
  return a1;
}

uint64_t filterChroma_y408_r408(uint64_t result, int a2, int a3, int a4)
{
  if (a3 >= 1)
  {
    v4 = a4;
    if (a2 < 2)
    {
      if (a2 == 1)
      {
        if (a4 == 1)
        {
          v15 = *(result + 2);
          v16 = (result + 3);
          do
          {
            *(v16 - 1) = v15;
            v15 = *v16++;
            --a3;
          }

          while (a3);
        }

        else
        {
          v17 = result + 3;
          do
          {
            v17 += a4;
            --a3;
          }

          while (a3);
        }
      }
    }

    else
    {
      v5 = 0;
      v6 = (result + 3);
      do
      {
        v7 = *(result + 2);
        v8 = *(result + 3);
        v9 = v6;
        v10 = a2 + 2;
        do
        {
          v11 = *v9;
          v12 = v9[3];
          v13 = v9[4];
          v10 -= 2;
          *(v9 - 1) = (v7 + 2 * *(v9 - 1) + v12 + 2) >> 2;
          *v9 = (v8 + 2 * v11 + v13 + 2) >> 2;
          v9 += 8;
          v8 = v13;
          v7 = v12;
        }

        while (v10 > 3);
        if (v10 == 3)
        {
          v14 = *v9;
          *(v9 - 1) = (v12 + 3 * *(v9 - 1) + 2) >> 2;
          *v9 = (v13 + 3 * v14 + 2) >> 2;
        }

        result += v4;
        ++v5;
        v6 += v4;
      }

      while (v5 != a3);
    }
  }

  return result;
}

unsigned __int8 *filterChroma_v408(unsigned __int8 *result, int a2, int a3, int a4)
{
  if (a3 >= 1)
  {
    if (a2 < 2)
    {
      if (a2 == 1)
      {
        v14 = result + 2;
        do
        {
          v14 += a4;
          --a3;
        }

        while (a3);
      }
    }

    else
    {
      v4 = 0;
      v5 = a2 + 2;
      do
      {
        v6 = *result;
        v7 = result[2];
        v8 = v5;
        v9 = result;
        do
        {
          v10 = v9[2];
          v11 = v9[4];
          v12 = v9[6];
          *v9 = (v6 + 2 * *v9 + v11 + 2) >> 2;
          v9[2] = (v7 + 2 * v10 + v12 + 2) >> 2;
          v9 += 8;
          v8 -= 2;
          v7 = v12;
          v6 = v11;
        }

        while (v8 > 3);
        if (v8 == 3)
        {
          v13 = v9[2];
          *v9 = (v11 + 3 * *v9 + 2) >> 2;
          v9[2] = (v12 + 3 * v13 + 2) >> 2;
        }

        result += a4;
        ++v4;
      }

      while (v4 != a3);
    }
  }

  return result;
}

unsigned __int16 *filterChroma_y416(unsigned __int16 *result, int a2, int a3, int a4)
{
  if (a3 >= 1)
  {
    v4 = a4;
    if (a2 < 2)
    {
      if (a2 == 1)
      {
        v15 = result + 3;
        do
        {
          v15 = (v15 + a4);
          --a3;
        }

        while (a3);
      }
    }

    else
    {
      v5 = 0;
      v6 = result + 6;
      do
      {
        v7 = result[2];
        v8 = result[3];
        v9 = v6;
        v10 = a2 + 2;
        do
        {
          v11 = *(v9 - 3);
          v12 = *v9;
          v13 = v9[1];
          v10 -= 2;
          *(v9 - 4) = (v7 + 2 * *(v9 - 4) + v12 + 2) >> 2;
          *(v9 - 3) = (v8 + 2 * v11 + v13 + 2) >> 2;
          v9 += 8;
          v8 = v13;
          v7 = v12;
        }

        while (v10 > 3);
        if (v10 == 3)
        {
          v14 = (v13 + 3 * *(v9 - 3) + 2) >> 2;
          *(v9 - 4) = (v12 + 3 * *(v9 - 4) + 2) >> 2;
          *(v9 - 3) = v14;
        }

        result = (result + v4);
        ++v5;
        v6 = (v6 + v4);
      }

      while (v5 != a3);
    }
  }

  return result;
}

float32x2_t *filterChroma_r4fl(float32x2_t *result, int a2, int a3, int a4)
{
  if (a3 >= 1)
  {
    if (a2 < 2)
    {
      if (a2 == 1)
      {
        v18 = result + 1;
        __asm
        {
          FMOV            V0.2D, #3.0
          FMOV            V1.2D, #0.25
        }

        do
        {
          v21 = vcvtq_f64_f32(*v18);
          *v18 = vcvt_f32_f64(vmulq_f64(vmlaq_f64(v21, _Q0, v21), _Q1));
          v18 = (v18 + a4);
          --a3;
        }

        while (a3);
      }
    }

    else
    {
      v4 = 0;
      v5 = result + 3;
      __asm
      {
        FMOV            V0.2D, #2.0
        FMOV            V1.2D, #0.25
        FMOV            V2.2D, #3.0
      }

      do
      {
        v13 = result[1];
        v14 = v5;
        v15 = a2 + 2;
        do
        {
          v16 = vcvtq_f64_f32(v13);
          v13 = *v14;
          v17 = vcvtq_f64_f32(*v14);
          v14[-2] = vcvt_f32_f64(vmulq_f64(vaddq_f64(vmlaq_f64(v16, _Q0, vcvtq_f64_f32(v14[-2])), v17), _Q1));
          v15 -= 2;
          v14 += 4;
        }

        while (v15 > 3);
        if (v15 == 3)
        {
          v14[-2] = vcvt_f32_f64(vmulq_f64(vmlaq_f64(v17, _Q2, vcvtq_f64_f32(v14[-2])), _Q1));
        }

        result = (result + a4);
        ++v4;
        v5 = (v5 + a4);
      }

      while (v4 != a3);
    }
  }

  return result;
}

uint32x4_t *convertARGBToV216WithChromaFiltering<(PixelFormat)32>(uint32x4_t *result, int a2, int32x4_t *a3, int a4, int a5, int a6, int a7)
{
  v51 = *MEMORY[0x29EDCA608];
  if (a5 >= 1)
  {
    if (a7 == 1)
    {
      v10 = vdupq_n_s32(0xC024F5DA);
      v11 = vdupq_n_s32(0x417DFB1Du);
      v12 = vdupq_n_s32(0xC1CC4226);
      v13 = vdupq_n_s32(0xC1AD594E);
      v14 = vdupq_n_s32(0x431D3E37u);
      v15 = vdupq_n_s32(0xC0CE1E4D);
      v16 = vdupq_n_s32(0x423AF7CBu);
      if (a6 < 1)
      {
        goto LABEL_27;
      }

      goto LABEL_9;
    }

    if (a7 == 9)
    {
      v10 = vdupq_n_s32(0xC010B178);
      v11 = vdupq_n_s32(0x41509A20u);
      v12 = vdupq_n_s32(0xC1CECAB2);
      v13 = vdupq_n_s32(0xC1A21430);
      v14 = vdupq_n_s32(0x43151075u);
      v15 = vdupq_n_s32(0xC0FB32C5);
      v16 = vdupq_n_s32(0x42670714u);
      if (a6 < 1)
      {
        goto LABEL_27;
      }

      goto LABEL_9;
    }

    v10 = vdupq_n_s32(0xC0924884);
    v11 = vdupq_n_s32(0x41C882E1u);
    v12 = vdupq_n_s32(0xC1BC4EC0);
    v13 = vdupq_n_s32(0xC194FD02);
    v14 = vdupq_n_s32(0x43010EA0u);
    v15 = vdupq_n_s32(0xC117C7BE);
    v16 = vdupq_n_s32(0x428379BFu);
    if (a6 >= 1)
    {
LABEL_9:
      v17 = 0;
      v18 = a2;
      v19 = vdupq_n_s32(0x41E0E0E1u);
      v20.i64[0] = 0xFF000000FFLL;
      v20.i64[1] = 0xFF000000FFLL;
      v21 = vdupq_n_s32(0xC6E00000);
      v22.i64[0] = 0x8000800080008000;
      v22.i64[1] = 0x8000800080008000;
      do
      {
        v23 = 0;
        v7.i8[0] = result->i8[1];
        v7.f32[0] = v7.u32[0];
        v8.i8[0] = result->i8[2];
        v9.i8[0] = result->i8[3];
        v9.f32[0] = v9.u32[0];
        *&v24 = v8.u32[0];
        v25 = vmulq_f32(v13, COERCE_UNSIGNED_INT(v8.u32[0]));
        v26 = vaddq_f32(vmulq_f32(v15, v7), v25);
        v25.f32[0] = v9.f32[0] * 28.11;
        v8 = vaddq_f32(v26, v25);
        v7.f32[0] = v7.f32[0] * 28.11;
        v9 = vmulq_f32(v10, v9);
        v7 = vdupq_lane_s64(vzip1q_s32(v8, vaddq_f32(vaddq_f32(v7, vmulq_f32(v12, v24)), v9)).i64[0], 0);
        v27 = result;
        v28 = a3;
        for (i = a5; ; i -= 4)
        {
          if (i >= 4)
          {
            v30 = v28;
            goto LABEL_14;
          }

          if (i < 1)
          {
            goto LABEL_11;
          }

          if (v23)
          {
            break;
          }

          v47 = v27->i32[0];
          if (i == 2)
          {
            v44 = v27->i32[1];
            v27 = (v27 + 4);
            v43 = v44;
LABEL_23:
            v48 = v43;
            goto LABEL_24;
          }

          if (i != 3)
          {
            v43 = v27->i32[0];
            goto LABEL_23;
          }

          v48 = v27->i32[1];
          v27 = (v27 + 8);
LABEL_24:
          v49 = v27->i32[0];
          v50 = v27->i32[0];
          i += 4;
          v30 = &v46;
          v27 = &v47;
          v23 = v28;
LABEL_14:
          v31 = *v27++;
          v32 = vcvtq_f32_u32(vandq_s8(vshrq_n_u32(v31, 8uLL), v20));
          v33 = vcvtq_f32_u32((*&vshrq_n_u32(v31, 0x10uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)));
          v34 = vcvtq_f32_u32(vshrq_n_u32(v31, 0x18uLL));
          v35 = vaddq_f32(vmulq_f32(v11, v34), vaddq_f32(vmulq_f32(v16, v32), vmulq_f32(v14, v33)));
          v36 = vaddq_f32(vmulq_f32(v34, v19), vaddq_f32(vmulq_f32(v15, v32), vmulq_f32(v13, v33)));
          v37 = vaddq_f32(vmulq_f32(v10, v34), vaddq_f32(vmulq_f32(v32, v19), vmulq_f32(v12, v33)));
          v38 = vaddq_f32(v35, v21);
          v39 = vzip1q_s32(v36, v37);
          v40 = vzip2q_s32(v36, v37);
          v41 = vzip2q_s64(v7, v39);
          v7 = vzip2q_s64(v39, v40);
          v39.i64[1] = v40.i64[0];
          v9 = vcvtnq_s32_f32(v38);
          v42 = vcvtnq_s32_f32(vaddq_f32(vaddq_f32(v39, v39), vaddq_f32(v41, v7)));
          *v9.f32 = vqmovn_s32(v9);
          *v42.i8 = vqmovn_s32(v42);
          v8 = veorq_s8(vzip1q_s16(v42, v9), v22);
          *v30 = v8;
          v28 = v30 + 1;
        }

        v7 = v46;
        if (i == 3)
        {
          *v23 = v46;
        }

        else
        {
          v23->i64[0] = v46.i64[0];
        }

LABEL_11:
        result = (result + v18);
        a3 = (a3 + a4);
        ++v17;
      }

      while (v17 != a6);
    }
  }

LABEL_27:
  v45 = *MEMORY[0x29EDCA608];
  return result;
}

unsigned int *convertARGBToV216WithChromaFiltering<(PixelFormat)1378955371>(unsigned int *result, int a2, int8x16_t *a3, int a4, int a5, int a6, int a7)
{
  v53 = *MEMORY[0x29EDCA608];
  if (a5 >= 1)
  {
    if (a7 == 1)
    {
      v9 = vdupq_n_s32(0xBF247A02);
      v10 = vdupq_n_s32(0x407D3C71u);
      v11 = vdupq_n_s32(0xC0CBA8CE);
      v12 = vdupq_n_s32(0xC0ACD72A);
      v13 = vdupq_n_s32(0x421CC82Bu);
      v14 = vdupq_n_s32(0xBFCD8390);
      v15 = vdupq_n_s32(0x413A6B6Eu);
      if (a6 < 1)
      {
        goto LABEL_27;
      }

      goto LABEL_9;
    }

    if (a7 == 9)
    {
      v9 = vdupq_n_s32(0xBF1044D8);
      v10 = vdupq_n_s32(0x404FFD85u);
      v11 = vdupq_n_s32(0xC0CE2F73);
      v12 = vdupq_n_s32(0xC0A19A82);
      v13 = vdupq_n_s32(0x4214A08Cu);
      v14 = vdupq_n_s32(0xBFFA7630);
      v15 = vdupq_n_s32(0x416659A4u);
      if (a6 < 1)
      {
        goto LABEL_27;
      }

      goto LABEL_9;
    }

    v9 = vdupq_n_s32(0xBF91DAB2);
    v10 = vdupq_n_s32(0x40C7EC59u);
    v11 = vdupq_n_s32(0xC0BBC162);
    v12 = vdupq_n_s32(0xC0948D28);
    v13 = vdupq_n_s32(0x4200ADBDu);
    v14 = vdupq_n_s32(0xC01755CC);
    v15 = vdupq_n_s32(0x4183170Bu);
    if (a6 >= 1)
    {
LABEL_9:
      v16 = 0;
      v17 = a2;
      v18 = vdupq_n_s32(0x40E0380Eu);
      v19.i64[0] = 0x300000003;
      v19.i64[1] = 0x300000003;
      v20 = vdupq_n_s32(0xC6E00000);
      v21.i64[0] = 0x8000800080008000;
      v21.i64[1] = 0x8000800080008000;
      do
      {
        v22 = 0;
        v23 = bswap32(*result);
        v7.f32[0] = (v23 >> 22);
        v8.f32[0] = ((v23 >> 2) & 0x3FF);
        *&v24 = ((v23 >> 12) & 0x3FF);
        v25 = vmulq_f32(v12, v24);
        v26 = vaddq_f32(vmulq_f32(v14, v7), v25);
        v25.f32[0] = v8.f32[0] * 7.0068;
        v7.f32[0] = v7.f32[0] * 7.0068;
        v8 = vmulq_f32(v9, v8);
        v7 = vdupq_lane_s64(vzip1q_s32(vaddq_f32(v25, v26), vaddq_f32(v8, vaddq_f32(v7, vmulq_f32(v11, v24)))).i64[0], 0);
        v27 = result;
        v28 = a3;
        for (i = a5; ; i -= 4)
        {
          if (i >= 4)
          {
            v30 = v28;
            goto LABEL_14;
          }

          if (i < 1)
          {
            goto LABEL_11;
          }

          if (v22)
          {
            break;
          }

          v45 = *v27;
          v49 = *v27;
          if (i == 2)
          {
            v50 = v27[1];
            v51 = v50;
            v46 = v27[1];
          }

          else
          {
            if (i == 3)
            {
              v46 = v27[2];
              v50 = v27[1];
            }

            else
            {
              v50 = v45;
              v46 = *v27;
            }

            v51 = v46;
          }

          v52 = v46;
          i += 4;
          v30 = &v48;
          v27 = &v49;
          v22 = v28;
LABEL_14:
          v31 = *v27;
          v27 += 4;
          v32 = vrev16q_s8(v31);
          v33 = vsraq_n_u32(vshlq_n_s32(v32, 0x10uLL), v32, 0x10uLL);
          v34 = vcvtq_f32_u32(vshrq_n_u32(v33, 0x16uLL));
          v35 = vcvtq_f32_u32(vandq_s8(vshrq_n_u32(v33, 0xCuLL), v19));
          v36 = vcvtq_f32_u32(vandq_s8(vshrq_n_u32(v33, 2uLL), v19));
          v37 = vaddq_f32(vmulq_f32(v10, v36), vaddq_f32(vmulq_f32(v15, v34), vmulq_f32(v13, v35)));
          v38 = vaddq_f32(vmulq_f32(v36, v18), vaddq_f32(vmulq_f32(v14, v34), vmulq_f32(v12, v35)));
          v39 = vaddq_f32(vmulq_f32(v9, v36), vaddq_f32(vmulq_f32(v34, v18), vmulq_f32(v11, v35)));
          v40 = vaddq_f32(v37, v20);
          v41 = vzip1q_s32(v38, v39);
          v42 = vzip2q_s32(v38, v39);
          v43 = vzip2q_s64(v7, v41);
          v7 = vzip2q_s64(v41, v42);
          v41.i64[1] = v42.i64[0];
          v8 = vcvtnq_s32_f32(v40);
          v44 = vcvtnq_s32_f32(vaddq_f32(vaddq_f32(v41, v41), vaddq_f32(v43, v7)));
          *v8.f32 = vqmovn_s32(v8);
          *v44.i8 = vqmovn_s32(v44);
          *v30 = veorq_s8(vzip1q_s16(v44, v8), v21);
          v28 = v30 + 1;
        }

        v7 = v48;
        if (i == 3)
        {
          *v22 = v48;
        }

        else
        {
          *v22 = v48.i64[0];
        }

LABEL_11:
        result = (result + v17);
        a3 = (a3 + a4);
        ++v16;
      }

      while (v16 != a6);
    }
  }

LABEL_27:
  v47 = *MEMORY[0x29EDCA608];
  return result;
}

unsigned int *convertARGBToV216WithChromaFiltering<(PixelFormat)1915892016>(unsigned int *result, int a2, int8x16_t *a3, int a4, int a5, int a6, int a7)
{
  v53 = *MEMORY[0x29EDCA608];
  if (a5 >= 1)
  {
    if (a7 == 1)
    {
      v9 = vdupq_n_s32(0xBF247A02);
      v10 = vdupq_n_s32(0x407D3C71u);
      v11 = vdupq_n_s32(0xC0CBA8CE);
      v12 = vdupq_n_s32(0xC0ACD72A);
      v13 = vdupq_n_s32(0x421CC82Bu);
      v14 = vdupq_n_s32(0xBFCD8390);
      v15 = vdupq_n_s32(0x413A6B6Eu);
      if (a6 < 1)
      {
        goto LABEL_27;
      }

      goto LABEL_9;
    }

    if (a7 == 9)
    {
      v9 = vdupq_n_s32(0xBF1044D8);
      v10 = vdupq_n_s32(0x404FFD85u);
      v11 = vdupq_n_s32(0xC0CE2F73);
      v12 = vdupq_n_s32(0xC0A19A82);
      v13 = vdupq_n_s32(0x4214A08Cu);
      v14 = vdupq_n_s32(0xBFFA7630);
      v15 = vdupq_n_s32(0x416659A4u);
      if (a6 < 1)
      {
        goto LABEL_27;
      }

      goto LABEL_9;
    }

    v9 = vdupq_n_s32(0xBF91DAB2);
    v10 = vdupq_n_s32(0x40C7EC59u);
    v11 = vdupq_n_s32(0xC0BBC162);
    v12 = vdupq_n_s32(0xC0948D28);
    v13 = vdupq_n_s32(0x4200ADBDu);
    v14 = vdupq_n_s32(0xC01755CC);
    v15 = vdupq_n_s32(0x4183170Bu);
    if (a6 >= 1)
    {
LABEL_9:
      v16 = 0;
      v17 = a2;
      v18 = vdupq_n_s32(0x40E0380Eu);
      v19.i64[0] = 0x300000003;
      v19.i64[1] = 0x300000003;
      v20 = vdupq_n_s32(0xC6E00000);
      v21.i64[0] = 0x8000800080008000;
      v21.i64[1] = 0x8000800080008000;
      do
      {
        v22 = 0;
        v23 = bswap32(*result);
        v7.f32[0] = (v23 >> 20);
        v8.f32[0] = (v23 & 0x3FF);
        *&v24 = ((v23 >> 10) & 0x3FF);
        v25 = vmulq_f32(v12, v24);
        v26 = vaddq_f32(vmulq_f32(v14, v7), v25);
        v25.f32[0] = v8.f32[0] * 7.0068;
        v7.f32[0] = v7.f32[0] * 7.0068;
        v8 = vmulq_f32(v9, v8);
        v7 = vdupq_lane_s64(vzip1q_s32(vaddq_f32(v25, v26), vaddq_f32(v8, vaddq_f32(v7, vmulq_f32(v11, v24)))).i64[0], 0);
        v27 = result;
        v28 = a3;
        for (i = a5; ; i -= 4)
        {
          if (i >= 4)
          {
            v30 = v28;
            goto LABEL_14;
          }

          if (i < 1)
          {
            goto LABEL_11;
          }

          if (v22)
          {
            break;
          }

          v45 = *v27;
          v49 = *v27;
          if (i == 2)
          {
            v50 = v27[1];
            v51 = v50;
            v46 = v27[1];
          }

          else
          {
            if (i == 3)
            {
              v46 = v27[2];
              v50 = v27[1];
            }

            else
            {
              v50 = v45;
              v46 = *v27;
            }

            v51 = v46;
          }

          v52 = v46;
          i += 4;
          v30 = &v48;
          v27 = &v49;
          v22 = v28;
LABEL_14:
          v31 = *v27;
          v27 += 4;
          v32 = vrev16q_s8(v31);
          v33 = vsraq_n_u32(vshlq_n_s32(v32, 0x10uLL), v32, 0x10uLL);
          v34 = vcvtq_f32_u32((*&vshrq_n_u32(v33, 0x14uLL) & __PAIR128__(0xFFFFF3FFFFFFF3FFLL, 0xFFFFF3FFFFFFF3FFLL)));
          v35 = vcvtq_f32_u32(vandq_s8(vshrq_n_u32(v33, 0xAuLL), v19));
          v36 = vcvtq_f32_u32(vandq_s8(v33, v19));
          v37 = vaddq_f32(vmulq_f32(v10, v36), vaddq_f32(vmulq_f32(v15, v34), vmulq_f32(v13, v35)));
          v38 = vaddq_f32(vmulq_f32(v36, v18), vaddq_f32(vmulq_f32(v14, v34), vmulq_f32(v12, v35)));
          v39 = vaddq_f32(vmulq_f32(v9, v36), vaddq_f32(vmulq_f32(v34, v18), vmulq_f32(v11, v35)));
          v40 = vaddq_f32(v37, v20);
          v41 = vzip1q_s32(v38, v39);
          v42 = vzip2q_s32(v38, v39);
          v43 = vzip2q_s64(v7, v41);
          v7 = vzip2q_s64(v41, v42);
          v41.i64[1] = v42.i64[0];
          v8 = vcvtnq_s32_f32(v40);
          v44 = vcvtnq_s32_f32(vaddq_f32(vaddq_f32(v41, v41), vaddq_f32(v43, v7)));
          *v8.f32 = vqmovn_s32(v8);
          *v44.i8 = vqmovn_s32(v44);
          *v30 = veorq_s8(vzip1q_s16(v44, v8), v21);
          v28 = v30 + 1;
        }

        v7 = v48;
        if (i == 3)
        {
          *v22 = v48;
        }

        else
        {
          *v22 = v48.i64[0];
        }

LABEL_11:
        result = (result + v17);
        a3 = (a3 + a4);
        ++v16;
      }

      while (v16 != a6);
    }
  }

LABEL_27:
  v47 = *MEMORY[0x29EDCA608];
  return result;
}

unsigned __int16 *convertARGBToV216WithChromaFiltering<(PixelFormat)1647719521>(unsigned __int16 *result, int a2, int8x16_t *a3, int a4, int a5, int a6, int a7)
{
  v56 = *MEMORY[0x29EDCA608];
  if (a5 >= 1)
  {
    if (a7 == 1)
    {
      v9 = vdupq_n_s32(0xBC245188);
      v10 = vdupq_n_s32(0x3D7CFE1Fu);
      v11 = vdupq_n_s32(0xBDCB76AF);
      v12 = vdupq_n_s32(0xBDACACA1);
      v13 = vdupq_n_s32(0x3F1CA196u);
      v14 = vdupq_n_s32(0xBCCD50FC);
      v15 = vdupq_n_s32(0x3E3A3D8Eu);
      if (a6 < 1)
      {
        goto LABEL_27;
      }

      goto LABEL_9;
    }

    if (a7 == 9)
    {
      v9 = vdupq_n_s32(0xBC102157);
      v10 = vdupq_n_s32(0x3D4FCA56u);
      v11 = vdupq_n_s32(0xBDCDFCB5);
      v12 = vdupq_n_s32(0xBDA172BD);
      v13 = vdupq_n_s32(0x3F147BF9u);
      v14 = vdupq_n_s32(0xBCFA388C);
      v15 = vdupq_n_s32(0x3E6620F3u);
      if (a6 < 1)
      {
        goto LABEL_27;
      }

      goto LABEL_9;
    }

    v9 = vdupq_n_s32(0xBC91B6CD);
    v10 = vdupq_n_s32(0x3DC7BB26u);
    v11 = vdupq_n_s32(0xBDBB932D);
    v12 = vdupq_n_s32(0xBD946899);
    v13 = vdupq_n_s32(0x3F008E12u);
    v14 = vdupq_n_s32(0xBD17308E);
    v15 = vdupq_n_s32(0x3E82F6C9u);
    if (a6 >= 1)
    {
LABEL_9:
      v16 = 0;
      v17 = a2;
      v18 = vdupq_n_s32(0x3DE000E0u);
      v19.i64[0] = 0xFFFF0000FFFFLL;
      v19.i64[1] = 0xFFFF0000FFFFLL;
      v20 = vdupq_n_s32(0xC6E00000);
      v21.i64[0] = 0x8000800080008000;
      v21.i64[1] = 0x8000800080008000;
      do
      {
        v22 = 0;
        v7.f32[0] = (bswap32(result[1]) >> 16);
        v8.f32[0] = (bswap32(result[3]) >> 16);
        *&v23 = (bswap32(result[2]) >> 16);
        v24 = vmulq_f32(v12, v23);
        v25 = vaddq_f32(vmulq_f32(v14, v7), v24);
        v24.f32[0] = v8.f32[0] * 0.10938;
        v7.f32[0] = v7.f32[0] * 0.10938;
        v8 = vmulq_f32(v9, v8);
        v7 = vdupq_lane_s64(vzip1q_s32(vaddq_f32(v25, v24), vaddq_f32(vaddq_f32(v7, vmulq_f32(v11, v23)), v8)).i64[0], 0);
        v26 = result;
        v27 = a3;
        for (i = a5; ; i -= 4)
        {
          if (i >= 4)
          {
            v29 = v27;
            goto LABEL_14;
          }

          if (i < 1)
          {
            goto LABEL_11;
          }

          if (v22)
          {
            break;
          }

          v52 = v26->i64[0];
          if (i == 2)
          {
            v49 = v26->i64[1];
            v26 = (v26 + 8);
            v48 = v49;
LABEL_23:
            v53 = v48;
            goto LABEL_24;
          }

          if (i != 3)
          {
            v48 = v26->i64[0];
            goto LABEL_23;
          }

          v53 = v26->i64[1];
          ++v26;
LABEL_24:
          v54 = v26->i64[0];
          v55 = v26->i64[0];
          i += 4;
          v29 = &v51;
          v26 = &v52;
          v22 = v27;
LABEL_14:
          v30 = *v26;
          v31 = v26[1];
          v26 += 2;
          v32 = vrev16q_s8(v30);
          v33 = vrev16q_s8(v31);
          v34 = vuzp1q_s32(v32, vrev64q_s32(v32));
          v35 = vuzp1q_s32(v33, vrev64q_s32(v33));
          v36 = vzip2q_s64(v34, v35);
          v34.i64[1] = v35.i64[0];
          v37 = vcvtq_f32_u32(vshrq_n_u32(v34, 0x10uLL));
          v38 = vcvtq_f32_u32(vandq_s8(v36, v19));
          v39 = vcvtq_f32_u32(vshrq_n_u32(v36, 0x10uLL));
          v40 = vaddq_f32(vmulq_f32(v10, v39), vaddq_f32(vmulq_f32(v15, v37), vmulq_f32(v13, v38)));
          v41 = vaddq_f32(vmulq_f32(v39, v18), vaddq_f32(vmulq_f32(v14, v37), vmulq_f32(v12, v38)));
          v42 = vaddq_f32(vmulq_f32(v9, v39), vaddq_f32(vmulq_f32(v37, v18), vmulq_f32(v11, v38)));
          v43 = vaddq_f32(v40, v20);
          v44 = vzip1q_s32(v41, v42);
          v45 = vzip2q_s32(v41, v42);
          v46 = vzip2q_s64(v7, v44);
          v7 = vzip2q_s64(v44, v45);
          v44.i64[1] = v45.i64[0];
          v8 = vcvtnq_s32_f32(v43);
          v47 = vcvtnq_s32_f32(vaddq_f32(vaddq_f32(v44, v44), vaddq_f32(v46, v7)));
          *v8.f32 = vqmovn_s32(v8);
          *v47.i8 = vqmovn_s32(v47);
          *v29 = veorq_s8(vzip1q_s16(v47, v8), v21);
          v27 = v29 + 1;
        }

        v7 = v51;
        if (i == 3)
        {
          *v22 = v51;
        }

        else
        {
          *v22 = v51.i64[0];
        }

LABEL_11:
        result = (result + v17);
        a3 = (a3 + a4);
        ++v16;
      }

      while (v16 != a6);
    }
  }

LABEL_27:
  v50 = *MEMORY[0x29EDCA608];
  return result;
}

unsigned __int16 *convertARGBToV216WithChromaFiltering<(PixelFormat)1647719542>(unsigned __int16 *result, int a2, int8x16_t *a3, int a4, int a5, int a6, int a7)
{
  v61 = *MEMORY[0x29EDCA608];
  if (a5 >= 1)
  {
    if (a7 == 1)
    {
      v9 = vdupq_n_s32(0xBC4013BE);
      v10 = vdupq_n_s32(0x3D93DD98u);
      v11 = vdupq_n_s32(0xBDEDD5CA);
      v12 = vdupq_n_s32(0xBDC9D834);
      v13 = vdupq_n_s32(0x3F371759u);
      v14 = vdupq_n_s32(0xBCF00037);
      v15 = vdupq_n_s32(0x3E59B3D0u);
      if (a6 < 1)
      {
        goto LABEL_27;
      }

      goto LABEL_9;
    }

    if (a7 == 9)
    {
      v9 = vdupq_n_s32(0xBC287A7B);
      v10 = vdupq_n_s32(0x3D72E48Fu);
      v11 = vdupq_n_s32(0xBDF0C8F2);
      v12 = vdupq_n_s32(0xBDBCB8D2);
      v13 = vdupq_n_s32(0x3F2D9168u);
      v14 = vdupq_n_s32(0xBD123EDF);
      v15 = vdupq_n_s32(0x3E86809Du);
      if (a6 < 1)
      {
        goto LABEL_27;
      }

      goto LABEL_9;
    }

    v9 = vdupq_n_s32(0xBCAA546F);
    v10 = vdupq_n_s32(0x3DE978D5u);
    v11 = vdupq_n_s32(0xBDDB4326);
    v12 = vdupq_n_s32(0xBDAD7AC3);
    v13 = vdupq_n_s32(0x3F1645A2u);
    v14 = vdupq_n_s32(0xBD30BAFD);
    v15 = vdupq_n_s32(0x3E991687u);
    if (a6 >= 1)
    {
LABEL_9:
      v16 = 0;
      v17 = a2;
      v18 = vdupq_n_s32(0x3E02EC21u);
      v19.i64[0] = 0xFFFF0000FFFFLL;
      v19.i64[1] = 0xFFFF0000FFFFLL;
      v20.i64[0] = 0xF0000000FLL;
      v20.i64[1] = 0xF0000000FLL;
      v21 = vdupq_n_s32(0xC6E00000);
      v22.i64[0] = 0x8000800080008000;
      v22.i64[1] = 0x8000800080008000;
      do
      {
        v23 = 0;
        v7.f32[0] = ((bswap32(result[1]) >> 16) - 4096);
        v8.f32[0] = ((bswap32(result[3]) >> 16) - 4096);
        *&v24 = ((bswap32(result[2]) >> 16) - 4096);
        v25 = vmulq_f32(v12, v24);
        v26 = vaddq_f32(vmulq_f32(v14, v7), v25);
        v25.f32[0] = v8.f32[0] * 0.12785;
        v7.f32[0] = v7.f32[0] * 0.12785;
        v8 = vmulq_f32(v9, v8);
        v7 = vdupq_lane_s64(vzip1q_s32(vaddq_f32(v26, v25), vaddq_f32(vaddq_f32(v7, vmulq_f32(v11, v24)), v8)).i64[0], 0);
        v27 = result;
        v28 = a3;
        for (i = a5; ; i -= 4)
        {
          if (i >= 4)
          {
            v30 = v28;
            goto LABEL_14;
          }

          if (i < 1)
          {
            goto LABEL_11;
          }

          if (v23)
          {
            break;
          }

          v57 = v27->i64[0];
          if (i == 2)
          {
            v54 = v27->i64[1];
            v27 = (v27 + 8);
            v53 = v54;
LABEL_23:
            v58 = v53;
            goto LABEL_24;
          }

          if (i != 3)
          {
            v53 = v27->i64[0];
            goto LABEL_23;
          }

          v58 = v27->i64[1];
          ++v27;
LABEL_24:
          v59 = v27->i64[0];
          v60 = v27->i64[0];
          i += 4;
          v30 = &v56;
          v27 = &v57;
          v23 = v28;
LABEL_14:
          v31 = *v27;
          v32 = v27[1];
          v27 += 2;
          v33 = vrev16q_s8(v31);
          v34 = vrev16q_s8(v32);
          v35 = vuzp1q_s32(v33, vrev64q_s32(v33));
          v36 = vuzp1q_s32(v34, vrev64q_s32(v34));
          v37 = vzip2q_s64(v35, v36);
          v35.i64[1] = v36.i64[0];
          v38.i64[0] = 0xF0000000FLL;
          v38.i64[1] = 0xF0000000FLL;
          v39 = vsraq_n_u32(v38, v35, 0x10uLL);
          v40 = vaddq_s32(vandq_s8(v37, v19), v20);
          v36.i64[0] = 0xF0000000FLL;
          v36.i64[1] = 0xF0000000FLL;
          v41 = vsraq_n_u32(v36, v37, 0x10uLL);
          v42 = vcvtq_f32_s32(v39);
          v43 = vcvtq_f32_s32(v40);
          v44 = vcvtq_f32_s32(v41);
          v45 = vaddq_f32(vmulq_f32(v10, v44), vaddq_f32(vmulq_f32(v15, v42), vmulq_f32(v13, v43)));
          v46 = vaddq_f32(vmulq_f32(v44, v18), vaddq_f32(vmulq_f32(v14, v42), vmulq_f32(v12, v43)));
          v47 = vaddq_f32(vmulq_f32(v9, v44), vaddq_f32(vmulq_f32(v42, v18), vmulq_f32(v11, v43)));
          v48 = vaddq_f32(v45, v21);
          v49 = vzip1q_s32(v46, v47);
          v50 = vzip2q_s32(v46, v47);
          v51 = vzip2q_s64(v7, v49);
          v7 = vzip2q_s64(v49, v50);
          v49.i64[1] = v50.i64[0];
          v8 = vcvtnq_s32_f32(v48);
          v52 = vcvtnq_s32_f32(vaddq_f32(vaddq_f32(v49, v49), vaddq_f32(v51, v7)));
          *v8.f32 = vqmovn_s32(v8);
          *v52.i8 = vqmovn_s32(v52);
          *v30 = veorq_s8(vzip1q_s16(v52, v8), v22);
          v28 = v30 + 1;
        }

        v7 = v56;
        if (i == 3)
        {
          *v23 = v56;
        }

        else
        {
          *v23 = v56.i64[0];
        }

LABEL_11:
        result = (result + v17);
        a3 = (a3 + a4);
        ++v16;
      }

      while (v16 != a6);
    }
  }

LABEL_27:
  v55 = *MEMORY[0x29EDCA608];
  return result;
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