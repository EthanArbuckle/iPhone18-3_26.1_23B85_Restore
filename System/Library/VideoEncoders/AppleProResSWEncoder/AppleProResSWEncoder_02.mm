int32x4_t *pixInGeneric<(PixelFormat)32,(ChromaFormat)2>(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x2A1C7C4A8](a1, a2);
  v8 = v3;
  v9 = v2;
  v166 = *MEMORY[0x29EDCA608];
  if (v4 != 16 || v5 != 16)
  {
    if (v5 == 16)
    {
      v12 = 16 - v4;
      if (v4 <= 0)
      {
        v13 = v6;
        v14 = v165;
        goto LABEL_20;
      }

LABEL_18:
      v13 = v6;
      v24 = v4 + 1;
      v14 = v165;
      do
      {
        v25 = v9[1];
        *v14 = *v9;
        v14[1] = v25;
        v26 = v9[3];
        v14[2] = v9[2];
        v14[3] = v26;
        v9 = (v9 + v6);
        v14 += 4;
        --v24;
      }

      while (v24 > 1);
LABEL_20:
      if (v12 >= 1)
      {
        v27 = (v9 - v13);
        v28 = *v27;
        v29 = v27[2];
        v30 = v27[3];
        v31 = v12 + 1;
        do
        {
          *v14 = v28;
          v14[1] = v27[1];
          v14[2] = v29;
          v14[3] = v30;
          v14 += 4;
          --v31;
        }

        while (v31 > 1);
      }

      goto LABEL_142;
    }

    if (v5 > 15)
    {
      goto LABEL_142;
    }

    v15 = v7;
    v16 = 4 * v5;
    v17 = v5;
    if (v4 <= 0)
    {
      v23 = &v2->i8[-v6];
      v22 = v165;
    }

    else
    {
      v18 = v16;
      v19 = v6;
      v20 = v4;
      v21 = v4 + 1;
      v22 = v165;
      do
      {
        memcpy(v22, v9, v16);
        v9 = (v9 + v19);
        v22 += 4;
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
    v32 = 17 - v4;
    do
    {
      memcpy(v22, v23, v18);
      v22 += 4;
      --v32;
    }

    while (v32 > 1);
LABEL_27:
    v33 = (v165[0].i32 + v18);
    v35 = &v165[-1].i8[v18 + 12];
    v34 = *(&v165[0].u32[-1] + v18);
    v36 = 16 - v17;
    if (16 - v17 <= 1)
    {
      v37 = 1;
    }

    else
    {
      v37 = v36;
    }

    if (v36 >= 8)
    {
      v38 = v37 & 0x7FFFFFF8;
      v35 += 4 * v38;
      v39 = vdupq_n_s32(v34);
      v40 = (&v165[1] + v18);
      v41 = v38;
      do
      {
        v40[-1] = v39;
        *v40 = v39;
        v40 += 2;
        v41 -= 8;
      }

      while (v41);
      v7 = v15;
      if (v38 == v37)
      {
LABEL_37:
        v45 = v33 + 15;
        v44 = v33[15];
        if (v36 >= 8)
        {
          v46 = v37 & 0x7FFFFFF8;
          v45 += v46;
          v47 = vdupq_n_s32(v44);
          v48 = (&v165[5] + v18);
          v49 = v46;
          do
          {
            v48[-1] = v47;
            *v48 = v47;
            v48 += 2;
            v49 -= 8;
          }

          while (v49);
          if (v46 == v37)
          {
LABEL_44:
            v53 = v33 + 31;
            v52 = v33[31];
            if (v36 >= 8)
            {
              v54 = v37 & 0x7FFFFFF8;
              v53 += v54;
              v55 = vdupq_n_s32(v52);
              v56 = (&v165[9] + v18);
              v57 = v54;
              do
              {
                v56[-1] = v55;
                *v56 = v55;
                v56 += 2;
                v57 -= 8;
              }

              while (v57);
              if (v54 == v37)
              {
LABEL_51:
                v61 = v33 + 47;
                v60 = v33[47];
                if (v36 >= 8)
                {
                  v62 = v37 & 0x7FFFFFF8;
                  v61 += v62;
                  v63 = vdupq_n_s32(v60);
                  v64 = (&v165[13] + v18);
                  v65 = v62;
                  do
                  {
                    v64[-1] = v63;
                    *v64 = v63;
                    v64 += 2;
                    v65 -= 8;
                  }

                  while (v65);
                  if (v62 == v37)
                  {
LABEL_58:
                    v69 = v33 + 63;
                    v68 = v33[63];
                    if (v36 >= 8)
                    {
                      v70 = v37 & 0x7FFFFFF8;
                      v69 += v70;
                      v71 = vdupq_n_s32(v68);
                      v72 = (&v165[17] + v18);
                      v73 = v70;
                      do
                      {
                        v72[-1] = v71;
                        *v72 = v71;
                        v72 += 2;
                        v73 -= 8;
                      }

                      while (v73);
                      if (v70 == v37)
                      {
LABEL_65:
                        v76 = v33 + 79;
                        v77 = v33[79];
                        if (v36 >= 8)
                        {
                          v78 = v37 & 0x7FFFFFF8;
                          v76 += v78;
                          v79 = vdupq_n_s32(v77);
                          v80 = (&v165[21] + v18);
                          v81 = v78;
                          do
                          {
                            v80[-1] = v79;
                            *v80 = v79;
                            v80 += 2;
                            v81 -= 8;
                          }

                          while (v81);
                          if (v78 == v37)
                          {
LABEL_72:
                            v84 = v33 + 95;
                            v85 = v33[95];
                            if (v36 >= 8)
                            {
                              v86 = v37 & 0x7FFFFFF8;
                              v84 += v86;
                              v87 = vdupq_n_s32(v85);
                              v88 = (&v165[25] + v18);
                              v89 = v86;
                              do
                              {
                                v88[-1] = v87;
                                *v88 = v87;
                                v88 += 2;
                                v89 -= 8;
                              }

                              while (v89);
                              if (v86 == v37)
                              {
LABEL_79:
                                v92 = v33 + 111;
                                v93 = v33[111];
                                if (v36 >= 8)
                                {
                                  v94 = v37 & 0x7FFFFFF8;
                                  v92 += v94;
                                  v95 = vdupq_n_s32(v93);
                                  v96 = (&v165[29] + v18);
                                  v97 = v94;
                                  do
                                  {
                                    v96[-1] = v95;
                                    *v96 = v95;
                                    v96 += 2;
                                    v97 -= 8;
                                  }

                                  while (v97);
                                  if (v94 == v37)
                                  {
LABEL_86:
                                    v100 = v33 + 127;
                                    v101 = v33[127];
                                    if (v36 >= 8)
                                    {
                                      v102 = v37 & 0x7FFFFFF8;
                                      v100 += v102;
                                      v103 = vdupq_n_s32(v101);
                                      v104 = (&v165[33] + v18);
                                      v105 = v102;
                                      do
                                      {
                                        v104[-1] = v103;
                                        *v104 = v103;
                                        v104 += 2;
                                        v105 -= 8;
                                      }

                                      while (v105);
                                      if (v102 == v37)
                                      {
LABEL_93:
                                        v108 = v33 + 143;
                                        v109 = v33[143];
                                        if (v36 >= 8)
                                        {
                                          v110 = v37 & 0x7FFFFFF8;
                                          v108 += v110;
                                          v111 = vdupq_n_s32(v109);
                                          v112 = (&v165[37] + v18);
                                          v113 = v110;
                                          do
                                          {
                                            v112[-1] = v111;
                                            *v112 = v111;
                                            v112 += 2;
                                            v113 -= 8;
                                          }

                                          while (v113);
                                          if (v110 == v37)
                                          {
LABEL_100:
                                            v116 = v33 + 159;
                                            v117 = v33[159];
                                            if (v36 >= 8)
                                            {
                                              v118 = v37 & 0x7FFFFFF8;
                                              v116 += v118;
                                              v119 = vdupq_n_s32(v117);
                                              v120 = (&v165[41] + v18);
                                              v121 = v118;
                                              do
                                              {
                                                v120[-1] = v119;
                                                *v120 = v119;
                                                v120 += 2;
                                                v121 -= 8;
                                              }

                                              while (v121);
                                              if (v118 == v37)
                                              {
LABEL_107:
                                                v124 = v33 + 175;
                                                v125 = v33[175];
                                                if (v36 >= 8)
                                                {
                                                  v126 = v37 & 0x7FFFFFF8;
                                                  v124 += v126;
                                                  v127 = vdupq_n_s32(v125);
                                                  v128 = (&v165[45] + v18);
                                                  v129 = v126;
                                                  do
                                                  {
                                                    v128[-1] = v127;
                                                    *v128 = v127;
                                                    v128 += 2;
                                                    v129 -= 8;
                                                  }

                                                  while (v129);
                                                  if (v126 == v37)
                                                  {
LABEL_114:
                                                    v132 = v33 + 191;
                                                    v133 = v33[191];
                                                    if (v36 >= 8)
                                                    {
                                                      v134 = v37 & 0x7FFFFFF8;
                                                      v132 += v134;
                                                      v135 = vdupq_n_s32(v133);
                                                      v136 = (&v165[49] + v18);
                                                      v137 = v134;
                                                      do
                                                      {
                                                        v136[-1] = v135;
                                                        *v136 = v135;
                                                        v136 += 2;
                                                        v137 -= 8;
                                                      }

                                                      while (v137);
                                                      if (v134 == v37)
                                                      {
LABEL_121:
                                                        v140 = v33 + 207;
                                                        v141 = v33[207];
                                                        if (v36 >= 8)
                                                        {
                                                          v142 = v37 & 0x7FFFFFF8;
                                                          v140 += v142;
                                                          v143 = vdupq_n_s32(v141);
                                                          v144 = (&v165[53] + v18);
                                                          v145 = v142;
                                                          do
                                                          {
                                                            v144[-1] = v143;
                                                            *v144 = v143;
                                                            v144 += 2;
                                                            v145 -= 8;
                                                          }

                                                          while (v145);
                                                          if (v142 == v37)
                                                          {
LABEL_128:
                                                            v148 = v33 + 223;
                                                            v149 = v33[223];
                                                            if (v36 >= 8)
                                                            {
                                                              v150 = v37 & 0x7FFFFFF8;
                                                              v148 += v150;
                                                              v151 = vdupq_n_s32(v149);
                                                              v152 = (&v165[57] + v18);
                                                              v153 = v150;
                                                              do
                                                              {
                                                                v152[-1] = v151;
                                                                *v152 = v151;
                                                                v152 += 2;
                                                                v153 -= 8;
                                                              }

                                                              while (v153);
                                                              if (v150 == v37)
                                                              {
                                                                goto LABEL_135;
                                                              }
                                                            }

                                                            else
                                                            {
                                                              LODWORD(v150) = 0;
                                                            }

                                                            v154 = v37 - v150;
                                                            v155 = v148 + 1;
                                                            do
                                                            {
                                                              *v155++ = v149;
                                                              --v154;
                                                            }

                                                            while (v154);
LABEL_135:
                                                            v156 = v33 + 239;
                                                            v157 = v33[239];
                                                            if (v36 >= 8)
                                                            {
                                                              v158 = v37 & 0x7FFFFFF8;
                                                              v156 += v158;
                                                              v159 = vdupq_n_s32(v157);
                                                              v160 = (&v165[61] + v18);
                                                              v161 = v158;
                                                              do
                                                              {
                                                                v160[-1] = v159;
                                                                *v160 = v159;
                                                                v160 += 2;
                                                                v161 -= 8;
                                                              }

                                                              while (v161);
                                                              if (v158 == v37)
                                                              {
                                                                goto LABEL_142;
                                                              }
                                                            }

                                                            else
                                                            {
                                                              LODWORD(v158) = 0;
                                                            }

                                                            v162 = v37 - v158;
                                                            v163 = v156 + 1;
                                                            do
                                                            {
                                                              *v163++ = v157;
                                                              --v162;
                                                            }

                                                            while (v162);
LABEL_142:
                                                            result = pixInFullMB<(PixelFormat)32,(ChromaFormat)2>(v165, 64, v8, v7);
                                                            v164 = *MEMORY[0x29EDCA608];
                                                            return result;
                                                          }
                                                        }

                                                        else
                                                        {
                                                          LODWORD(v142) = 0;
                                                        }

                                                        v146 = v37 - v142;
                                                        v147 = v140 + 1;
                                                        do
                                                        {
                                                          *v147++ = v141;
                                                          --v146;
                                                        }

                                                        while (v146);
                                                        goto LABEL_128;
                                                      }
                                                    }

                                                    else
                                                    {
                                                      LODWORD(v134) = 0;
                                                    }

                                                    v138 = v37 - v134;
                                                    v139 = v132 + 1;
                                                    do
                                                    {
                                                      *v139++ = v133;
                                                      --v138;
                                                    }

                                                    while (v138);
                                                    goto LABEL_121;
                                                  }
                                                }

                                                else
                                                {
                                                  LODWORD(v126) = 0;
                                                }

                                                v130 = v37 - v126;
                                                v131 = v124 + 1;
                                                do
                                                {
                                                  *v131++ = v125;
                                                  --v130;
                                                }

                                                while (v130);
                                                goto LABEL_114;
                                              }
                                            }

                                            else
                                            {
                                              LODWORD(v118) = 0;
                                            }

                                            v122 = v37 - v118;
                                            v123 = v116 + 1;
                                            do
                                            {
                                              *v123++ = v117;
                                              --v122;
                                            }

                                            while (v122);
                                            goto LABEL_107;
                                          }
                                        }

                                        else
                                        {
                                          LODWORD(v110) = 0;
                                        }

                                        v114 = v37 - v110;
                                        v115 = v108 + 1;
                                        do
                                        {
                                          *v115++ = v109;
                                          --v114;
                                        }

                                        while (v114);
                                        goto LABEL_100;
                                      }
                                    }

                                    else
                                    {
                                      LODWORD(v102) = 0;
                                    }

                                    v106 = v37 - v102;
                                    v107 = v100 + 1;
                                    do
                                    {
                                      *v107++ = v101;
                                      --v106;
                                    }

                                    while (v106);
                                    goto LABEL_93;
                                  }
                                }

                                else
                                {
                                  LODWORD(v94) = 0;
                                }

                                v98 = v37 - v94;
                                v99 = v92 + 1;
                                do
                                {
                                  *v99++ = v93;
                                  --v98;
                                }

                                while (v98);
                                goto LABEL_86;
                              }
                            }

                            else
                            {
                              LODWORD(v86) = 0;
                            }

                            v90 = v37 - v86;
                            v91 = v84 + 1;
                            do
                            {
                              *v91++ = v85;
                              --v90;
                            }

                            while (v90);
                            goto LABEL_79;
                          }
                        }

                        else
                        {
                          LODWORD(v78) = 0;
                        }

                        v82 = v37 - v78;
                        v83 = v76 + 1;
                        do
                        {
                          *v83++ = v77;
                          --v82;
                        }

                        while (v82);
                        goto LABEL_72;
                      }
                    }

                    else
                    {
                      LODWORD(v70) = 0;
                    }

                    v74 = v37 - v70;
                    v75 = v69 + 1;
                    do
                    {
                      *v75++ = v68;
                      --v74;
                    }

                    while (v74);
                    goto LABEL_65;
                  }
                }

                else
                {
                  LODWORD(v62) = 0;
                }

                v66 = v37 - v62;
                v67 = v61 + 1;
                do
                {
                  *v67++ = v60;
                  --v66;
                }

                while (v66);
                goto LABEL_58;
              }
            }

            else
            {
              LODWORD(v54) = 0;
            }

            v58 = v37 - v54;
            v59 = v53 + 1;
            do
            {
              *v59++ = v52;
              --v58;
            }

            while (v58);
            goto LABEL_51;
          }
        }

        else
        {
          LODWORD(v46) = 0;
        }

        v50 = v37 - v46;
        v51 = v45 + 1;
        do
        {
          *v51++ = v44;
          --v50;
        }

        while (v50);
        goto LABEL_44;
      }
    }

    else
    {
      LODWORD(v38) = 0;
      v7 = v15;
    }

    v42 = v37 - v38;
    v43 = (v35 + 4);
    do
    {
      *v43++ = v34;
      --v42;
    }

    while (v42);
    goto LABEL_37;
  }

  if ((v2 & 0xF) != 0 || (v6 & 0xF) != 0)
  {
    v12 = 0;
    goto LABEL_18;
  }

  v10 = *MEMORY[0x29EDCA608];

  return pixInFullMB<(PixelFormat)32,(ChromaFormat)2>(v2, v6, v3, v7);
}

int8x16_t *pixInGeneric<(PixelFormat)1647719521,(ChromaFormat)2>(uint64_t a1, uint64_t a2)
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
                                                            result = pixInFullMB<(PixelFormat)1647719521,(ChromaFormat)2>(v172, 128, v8, v7);
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

  return pixInFullMB<(PixelFormat)1647719521,(ChromaFormat)2>(v2, v6, v3, v7);
}

int8x16_t *pixInGeneric<(PixelFormat)1647719542,(ChromaFormat)2>(uint64_t a1, uint64_t a2)
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
                                                            result = pixInFullMB<(PixelFormat)1647719542,(ChromaFormat)2>(v172, 128, v8, v7);
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

  return pixInFullMB<(PixelFormat)1647719542,(ChromaFormat)2>(v2, v6, v3, v7);
}

uint64_t pixInGeneric<(PixelFormat)2033463352,(ChromaFormat)3>(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x2A1C7C4A8](a1, a2);
  v7 = result;
  v212 = *MEMORY[0x29EDCA608];
  if (v4 == 16 && v5 == 16)
  {
    if ((result & 0xF) == 0 && (v6 & 0xF) == 0)
    {
      v8 = 0;
      v9 = result + 32;
      v10.i64[0] = 0xFF000000FFLL;
      v10.i64[1] = 0xFF000000FFLL;
      v11.i64[0] = 0xF800F800F800F800;
      v11.i64[1] = 0xF800F800F800F800;
      v12.i64[0] = 0x8080808080808080;
      v12.i64[1] = 0x8080808080808080;
      do
      {
        v13 = v3 + v8;
        v14 = *(v9 - 32);
        v15 = *(v9 - 16);
        v16 = *(v9 + 16);
        v17 = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v14, 8uLL), v10)), vandq_s8(vshrq_n_u32(v15, 8uLL), v10)), 4uLL), v11);
        v18 = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(*v9, 8uLL), v10)), vandq_s8(vshrq_n_u32(v16, 8uLL), v10)), 4uLL), v11);
        v19 = veorq_s8(vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(v14, 0x10uLL)), vshrq_n_s32(v15, 0x10uLL)), v12);
        v20 = veorq_s8(vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(*v9, 0x10uLL)), vshrq_n_s32(v16, 0x10uLL)), v12);
        *v13 = v17;
        *(v13 + 128) = v18;
        *(v13 + 512) = vshrq_n_s16(vshlq_n_s16(v19, 8uLL), 4uLL);
        *(v13 + 1024) = vshrq_n_s16(vshlq_n_s16(v20, 8uLL), 4uLL);
        *(v13 + 640) = *&vshrq_n_s16(v19, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0);
        *(v13 + 1152) = *&vshrq_n_s16(v20, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0);
        v9 += v6;
        v8 += 16;
      }

      while (v8 != 128);
      v21 = 0;
      v22.i64[0] = 0xFF000000FFLL;
      v22.i64[1] = 0xFF000000FFLL;
      v23.i64[0] = 0xF800F800F800F800;
      v23.i64[1] = 0xF800F800F800F800;
      v24.i64[0] = 0x8080808080808080;
      v24.i64[1] = 0x8080808080808080;
      do
      {
        v25 = v3 + v21 + v8;
        v26 = *(v9 - 32);
        v27 = *(v9 - 16);
        v28 = *(v9 + 16);
        v29 = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v26, 8uLL), v22)), vandq_s8(vshrq_n_u32(v27, 8uLL), v22)), 4uLL), v23);
        v30 = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(*v9, 8uLL), v22)), vandq_s8(vshrq_n_u32(v28, 8uLL), v22)), 4uLL), v23);
        v31 = veorq_s8(vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(v26, 0x10uLL)), vshrq_n_s32(v27, 0x10uLL)), v24);
        v32 = veorq_s8(vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(*v9, 0x10uLL)), vshrq_n_s32(v28, 0x10uLL)), v24);
        *(v25 + 128) = v29;
        *(v25 + 256) = v30;
        *(v25 + 640) = vshrq_n_s16(vshlq_n_s16(v31, 8uLL), 4uLL);
        *(v25 + 1152) = vshrq_n_s16(vshlq_n_s16(v32, 8uLL), 4uLL);
        *(v25 + 768) = *&vshrq_n_s16(v31, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0);
        *(v25 + 1280) = *&vshrq_n_s16(v32, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0);
        v21 += 16;
        v9 += v6;
      }

      while (v21 != 128);
      goto LABEL_148;
    }

    v33 = 0;
    goto LABEL_20;
  }

  if (v5 == 16)
  {
    v33 = 16 - v4;
    if (v4 <= 0)
    {
      v34 = v6;
      v35 = v211;
      goto LABEL_22;
    }

LABEL_20:
    v34 = v6;
    v45 = v4 + 1;
    v35 = v211;
    do
    {
      v46 = v7[1];
      *v35 = *v7;
      v35[1] = v46;
      v47 = v7[3];
      v35[2] = v7[2];
      v35[3] = v47;
      v7 = (v7 + v6);
      v35 += 4;
      --v45;
    }

    while (v45 > 1);
LABEL_22:
    if (v33 >= 1)
    {
      v48 = (v7 - v34);
      v49 = *v48;
      v50 = v48[2];
      v51 = v48[3];
      v52 = v33 + 1;
      do
      {
        *v35 = v49;
        v35[1] = v48[1];
        v35[2] = v50;
        v35[3] = v51;
        v35 += 4;
        --v52;
      }

      while (v52 > 1);
    }

    goto LABEL_144;
  }

  if (v5 > 15)
  {
    goto LABEL_144;
  }

  v36 = v3;
  v37 = 4 * v5;
  v38 = v5;
  if (v4 <= 0)
  {
    v44 = (result - v6);
    v43 = v211;
  }

  else
  {
    v39 = v37;
    v40 = v6;
    v41 = v4;
    v42 = v4 + 1;
    v43 = v211;
    do
    {
      result = memcpy(v43, v7, v37);
      v7 = (v7 + v40);
      v43 += 64;
      --v42;
    }

    while (v42 > 1);
    if (v41 > 15)
    {
      goto LABEL_29;
    }

    v4 = v41;
    v44 = v7 - v40;
  }

  v39 = v37;
  v53 = 17 - v4;
  do
  {
    result = memcpy(v43, v44, v39);
    v43 += 64;
    --v53;
  }

  while (v53 > 1);
LABEL_29:
  v54 = &v211[v39];
  v56 = &v211[v39 - 4];
  v55 = *&v211[v39 - 4];
  v57 = 16 - v38;
  if (16 - v38 <= 1)
  {
    v58 = 1;
  }

  else
  {
    v58 = v57;
  }

  if (v57 < 8)
  {
    LODWORD(v59) = 0;
    v3 = v36;
LABEL_37:
    v63 = v58 - v59;
    v64 = (v56 + 4);
    do
    {
      *v64++ = v55;
      --v63;
    }

    while (v63);
    goto LABEL_39;
  }

  v59 = v58 & 0x7FFFFFF8;
  v56 += 4 * v59;
  v60 = vdupq_n_s32(v55);
  v61 = &v211[v39 + 16];
  v62 = v59;
  do
  {
    v61[-1] = v60;
    *v61 = v60;
    v61 += 2;
    v62 -= 8;
  }

  while (v62);
  v3 = v36;
  if (v59 != v58)
  {
    goto LABEL_37;
  }

LABEL_39:
  v66 = v54 + 15;
  v65 = v54[15];
  if (v57 < 8)
  {
    LODWORD(v67) = 0;
LABEL_44:
    v71 = v58 - v67;
    v72 = v66 + 1;
    do
    {
      *v72++ = v65;
      --v71;
    }

    while (v71);
    goto LABEL_46;
  }

  v67 = v58 & 0x7FFFFFF8;
  v66 += v67;
  v68 = vdupq_n_s32(v65);
  v69 = &v211[v39 + 80];
  v70 = v67;
  do
  {
    v69[-1] = v68;
    *v69 = v68;
    v69 += 2;
    v70 -= 8;
  }

  while (v70);
  if (v67 != v58)
  {
    goto LABEL_44;
  }

LABEL_46:
  v74 = v54 + 31;
  v73 = v54[31];
  if (v57 < 8)
  {
    LODWORD(v75) = 0;
LABEL_51:
    v79 = v58 - v75;
    v80 = v74 + 1;
    do
    {
      *v80++ = v73;
      --v79;
    }

    while (v79);
    goto LABEL_53;
  }

  v75 = v58 & 0x7FFFFFF8;
  v74 += v75;
  v76 = vdupq_n_s32(v73);
  v77 = &v211[v39 + 144];
  v78 = v75;
  do
  {
    v77[-1] = v76;
    *v77 = v76;
    v77 += 2;
    v78 -= 8;
  }

  while (v78);
  if (v75 != v58)
  {
    goto LABEL_51;
  }

LABEL_53:
  v82 = v54 + 47;
  v81 = v54[47];
  if (v57 < 8)
  {
    LODWORD(v83) = 0;
LABEL_58:
    v87 = v58 - v83;
    v88 = v82 + 1;
    do
    {
      *v88++ = v81;
      --v87;
    }

    while (v87);
    goto LABEL_60;
  }

  v83 = v58 & 0x7FFFFFF8;
  v82 += v83;
  v84 = vdupq_n_s32(v81);
  v85 = &v211[v39 + 208];
  v86 = v83;
  do
  {
    v85[-1] = v84;
    *v85 = v84;
    v85 += 2;
    v86 -= 8;
  }

  while (v86);
  if (v83 != v58)
  {
    goto LABEL_58;
  }

LABEL_60:
  v90 = v54 + 63;
  v89 = v54[63];
  if (v57 < 8)
  {
    LODWORD(v91) = 0;
LABEL_65:
    v95 = v58 - v91;
    v96 = v90 + 1;
    do
    {
      *v96++ = v89;
      --v95;
    }

    while (v95);
    goto LABEL_67;
  }

  v91 = v58 & 0x7FFFFFF8;
  v90 += v91;
  v92 = vdupq_n_s32(v89);
  v93 = &v211[v39 + 272];
  v94 = v91;
  do
  {
    v93[-1] = v92;
    *v93 = v92;
    v93 += 2;
    v94 -= 8;
  }

  while (v94);
  if (v91 != v58)
  {
    goto LABEL_65;
  }

LABEL_67:
  v97 = v54 + 79;
  v98 = v54[79];
  if (v57 < 8)
  {
    LODWORD(v99) = 0;
LABEL_72:
    v103 = v58 - v99;
    v104 = v97 + 1;
    do
    {
      *v104++ = v98;
      --v103;
    }

    while (v103);
    goto LABEL_74;
  }

  v99 = v58 & 0x7FFFFFF8;
  v97 += v99;
  v100 = vdupq_n_s32(v98);
  v101 = &v211[v39 + 336];
  v102 = v99;
  do
  {
    v101[-1] = v100;
    *v101 = v100;
    v101 += 2;
    v102 -= 8;
  }

  while (v102);
  if (v99 != v58)
  {
    goto LABEL_72;
  }

LABEL_74:
  v105 = v54 + 95;
  v106 = v54[95];
  if (v57 < 8)
  {
    LODWORD(v107) = 0;
LABEL_79:
    v111 = v58 - v107;
    v112 = v105 + 1;
    do
    {
      *v112++ = v106;
      --v111;
    }

    while (v111);
    goto LABEL_81;
  }

  v107 = v58 & 0x7FFFFFF8;
  v105 += v107;
  v108 = vdupq_n_s32(v106);
  v109 = &v211[v39 + 400];
  v110 = v107;
  do
  {
    v109[-1] = v108;
    *v109 = v108;
    v109 += 2;
    v110 -= 8;
  }

  while (v110);
  if (v107 != v58)
  {
    goto LABEL_79;
  }

LABEL_81:
  v113 = v54 + 111;
  v114 = v54[111];
  if (v57 < 8)
  {
    LODWORD(v115) = 0;
LABEL_86:
    v119 = v58 - v115;
    v120 = v113 + 1;
    do
    {
      *v120++ = v114;
      --v119;
    }

    while (v119);
    goto LABEL_88;
  }

  v115 = v58 & 0x7FFFFFF8;
  v113 += v115;
  v116 = vdupq_n_s32(v114);
  v117 = &v211[v39 + 464];
  v118 = v115;
  do
  {
    v117[-1] = v116;
    *v117 = v116;
    v117 += 2;
    v118 -= 8;
  }

  while (v118);
  if (v115 != v58)
  {
    goto LABEL_86;
  }

LABEL_88:
  v121 = v54 + 127;
  v122 = v54[127];
  if (v57 < 8)
  {
    LODWORD(v123) = 0;
LABEL_93:
    v127 = v58 - v123;
    v128 = v121 + 1;
    do
    {
      *v128++ = v122;
      --v127;
    }

    while (v127);
    goto LABEL_95;
  }

  v123 = v58 & 0x7FFFFFF8;
  v121 += v123;
  v124 = vdupq_n_s32(v122);
  v125 = &v211[v39 + 528];
  v126 = v123;
  do
  {
    v125[-1] = v124;
    *v125 = v124;
    v125 += 2;
    v126 -= 8;
  }

  while (v126);
  if (v123 != v58)
  {
    goto LABEL_93;
  }

LABEL_95:
  v129 = v54 + 143;
  v130 = v54[143];
  if (v57 < 8)
  {
    LODWORD(v131) = 0;
LABEL_100:
    v135 = v58 - v131;
    v136 = v129 + 1;
    do
    {
      *v136++ = v130;
      --v135;
    }

    while (v135);
    goto LABEL_102;
  }

  v131 = v58 & 0x7FFFFFF8;
  v129 += v131;
  v132 = vdupq_n_s32(v130);
  v133 = &v211[v39 + 592];
  v134 = v131;
  do
  {
    v133[-1] = v132;
    *v133 = v132;
    v133 += 2;
    v134 -= 8;
  }

  while (v134);
  if (v131 != v58)
  {
    goto LABEL_100;
  }

LABEL_102:
  v137 = v54 + 159;
  v138 = v54[159];
  if (v57 < 8)
  {
    LODWORD(v139) = 0;
LABEL_107:
    v143 = v58 - v139;
    v144 = v137 + 1;
    do
    {
      *v144++ = v138;
      --v143;
    }

    while (v143);
    goto LABEL_109;
  }

  v139 = v58 & 0x7FFFFFF8;
  v137 += v139;
  v140 = vdupq_n_s32(v138);
  v141 = &v211[v39 + 656];
  v142 = v139;
  do
  {
    v141[-1] = v140;
    *v141 = v140;
    v141 += 2;
    v142 -= 8;
  }

  while (v142);
  if (v139 != v58)
  {
    goto LABEL_107;
  }

LABEL_109:
  v145 = v54 + 175;
  v146 = v54[175];
  if (v57 < 8)
  {
    LODWORD(v147) = 0;
LABEL_114:
    v151 = v58 - v147;
    v152 = v145 + 1;
    do
    {
      *v152++ = v146;
      --v151;
    }

    while (v151);
    goto LABEL_116;
  }

  v147 = v58 & 0x7FFFFFF8;
  v145 += v147;
  v148 = vdupq_n_s32(v146);
  v149 = &v211[v39 + 720];
  v150 = v147;
  do
  {
    v149[-1] = v148;
    *v149 = v148;
    v149 += 2;
    v150 -= 8;
  }

  while (v150);
  if (v147 != v58)
  {
    goto LABEL_114;
  }

LABEL_116:
  v153 = v54 + 191;
  v154 = v54[191];
  if (v57 < 8)
  {
    LODWORD(v155) = 0;
LABEL_121:
    v159 = v58 - v155;
    v160 = v153 + 1;
    do
    {
      *v160++ = v154;
      --v159;
    }

    while (v159);
    goto LABEL_123;
  }

  v155 = v58 & 0x7FFFFFF8;
  v153 += v155;
  v156 = vdupq_n_s32(v154);
  v157 = &v211[v39 + 784];
  v158 = v155;
  do
  {
    v157[-1] = v156;
    *v157 = v156;
    v157 += 2;
    v158 -= 8;
  }

  while (v158);
  if (v155 != v58)
  {
    goto LABEL_121;
  }

LABEL_123:
  v161 = v54 + 207;
  v162 = v54[207];
  if (v57 < 8)
  {
    LODWORD(v163) = 0;
LABEL_128:
    v167 = v58 - v163;
    v168 = v161 + 1;
    do
    {
      *v168++ = v162;
      --v167;
    }

    while (v167);
    goto LABEL_130;
  }

  v163 = v58 & 0x7FFFFFF8;
  v161 += v163;
  v164 = vdupq_n_s32(v162);
  v165 = &v211[v39 + 848];
  v166 = v163;
  do
  {
    v165[-1] = v164;
    *v165 = v164;
    v165 += 2;
    v166 -= 8;
  }

  while (v166);
  if (v163 != v58)
  {
    goto LABEL_128;
  }

LABEL_130:
  v169 = v54 + 223;
  v170 = v54[223];
  if (v57 >= 8)
  {
    v171 = v58 & 0x7FFFFFF8;
    v169 += v171;
    v172 = vdupq_n_s32(v170);
    v173 = &v211[v39 + 912];
    v174 = v171;
    do
    {
      v173[-1] = v172;
      *v173 = v172;
      v173 += 2;
      v174 -= 8;
    }

    while (v174);
    if (v171 == v58)
    {
      goto LABEL_137;
    }
  }

  else
  {
    LODWORD(v171) = 0;
  }

  v175 = v58 - v171;
  v176 = v169 + 1;
  do
  {
    *v176++ = v170;
    --v175;
  }

  while (v175);
LABEL_137:
  v177 = v54 + 239;
  v178 = v54[239];
  if (v57 >= 8)
  {
    v179 = v58 & 0x7FFFFFF8;
    v177 += v179;
    v180 = vdupq_n_s32(v178);
    v181 = &v211[v39 + 976];
    v182 = v179;
    do
    {
      v181[-1] = v180;
      *v181 = v180;
      v181 += 2;
      v182 -= 8;
    }

    while (v182);
    if (v179 == v58)
    {
      goto LABEL_144;
    }
  }

  else
  {
    LODWORD(v179) = 0;
  }

  v183 = v58 - v179;
  v184 = v177 + 1;
  do
  {
    *v184++ = v178;
    --v183;
  }

  while (v183);
LABEL_144:
  v185 = 0;
  v186 = 0;
  v187.i64[0] = 0xFF000000FFLL;
  v187.i64[1] = 0xFF000000FFLL;
  v188.i64[0] = 0xF800F800F800F800;
  v188.i64[1] = 0xF800F800F800F800;
  v189.i64[0] = 0x8080808080808080;
  v189.i64[1] = 0x8080808080808080;
  do
  {
    v190 = v3 + v185;
    v191 = *&v211[v186];
    v192 = *&v211[v186 + 16];
    v193 = *&v211[v186 + 32];
    v194 = *&v211[v186 + 48];
    v195 = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v191, 8uLL), v187)), vandq_s8(vshrq_n_u32(v192, 8uLL), v187)), 4uLL), v188);
    v196 = veorq_s8(vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(v191, 0x10uLL)), vshrq_n_s32(v192, 0x10uLL)), v189);
    v197 = veorq_s8(vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(v193, 0x10uLL)), vshrq_n_s32(v194, 0x10uLL)), v189);
    *v190 = v195;
    *(v190 + 128) = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v193, 8uLL), v187)), vandq_s8(vshrq_n_u32(v194, 8uLL), v187)), 4uLL), v188);
    *(v190 + 512) = vshrq_n_s16(vshlq_n_s16(v196, 8uLL), 4uLL);
    *(v190 + 1024) = vshrq_n_s16(vshlq_n_s16(v197, 8uLL), 4uLL);
    *(v190 + 640) = *&vshrq_n_s16(v196, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0);
    *(v190 + 1152) = *&vshrq_n_s16(v197, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0);
    v186 += 64;
    v185 += 16;
  }

  while (v185 != 128);
  v198 = 0;
  v199.i64[0] = 0xFF000000FFLL;
  v199.i64[1] = 0xFF000000FFLL;
  v200.i64[0] = 0xF800F800F800F800;
  v200.i64[1] = 0xF800F800F800F800;
  v201.i64[0] = 0x8080808080808080;
  v201.i64[1] = 0x8080808080808080;
  do
  {
    v202 = v3 + v198 + v185;
    v203 = *&v211[v186];
    v204 = *&v211[v186 + 16];
    v205 = *&v211[v186 + 32];
    v206 = *&v211[v186 + 48];
    v207 = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v203, 8uLL), v199)), vandq_s8(vshrq_n_u32(v204, 8uLL), v199)), 4uLL), v200);
    v208 = veorq_s8(vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(v203, 0x10uLL)), vshrq_n_s32(v204, 0x10uLL)), v201);
    v209 = veorq_s8(vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(v205, 0x10uLL)), vshrq_n_s32(v206, 0x10uLL)), v201);
    *(v202 + 128) = v207;
    *(v202 + 256) = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v205, 8uLL), v199)), vandq_s8(vshrq_n_u32(v206, 8uLL), v199)), 4uLL), v200);
    *(v202 + 640) = vshrq_n_s16(vshlq_n_s16(v208, 8uLL), 4uLL);
    *(v202 + 1152) = vshrq_n_s16(vshlq_n_s16(v209, 8uLL), 4uLL);
    *(v202 + 768) = *&vshrq_n_s16(v208, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0);
    *(v202 + 1280) = *&vshrq_n_s16(v209, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0);
    v198 += 16;
    v186 += 64;
  }

  while (v198 != 128);
LABEL_148:
  v210 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t pixInGeneric<(PixelFormat)1916022840,(ChromaFormat)3>(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x2A1C7C4A8](a1, a2);
  v7 = result;
  v216 = *MEMORY[0x29EDCA608];
  if (v4 == 16 && v5 == 16)
  {
    if ((result & 0xF) == 0 && (v6 & 0xF) == 0)
    {
      v8 = 0;
      v9 = result + 32;
      v10.i64[0] = 0xFF000000FFLL;
      v10.i64[1] = 0xFF000000FFLL;
      v11.i64[0] = 0x6F006F006F006FLL;
      v11.i64[1] = 0x6F006F006F006FLL;
      v12.i64[0] = 0x7F007F007F007FLL;
      v12.i64[1] = 0x7F007F007F007FLL;
      v13.i64[0] = 0x8080808080808080;
      v13.i64[1] = 0x8080808080808080;
      do
      {
        v14 = v3 + v8;
        v15 = *(v9 - 32);
        v16 = *(v9 - 16);
        v17 = *(v9 + 16);
        v18 = vshlq_n_s16(vminq_s16(vaddq_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v15, 8uLL), v10)), vandq_s8(vshrq_n_u32(v16, 8uLL), v10)), v11), v12), 4uLL);
        v19 = vshlq_n_s16(vminq_s16(vaddq_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(*v9, 8uLL), v10)), vandq_s8(vshrq_n_u32(v17, 8uLL), v10)), v11), v12), 4uLL);
        v20 = veorq_s8(vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(v15, 0x10uLL)), vshrq_n_s32(v16, 0x10uLL)), v13);
        v21 = veorq_s8(vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(*v9, 0x10uLL)), vshrq_n_s32(v17, 0x10uLL)), v13);
        *v14 = v18;
        *(v14 + 128) = v19;
        *(v14 + 512) = vshrq_n_s16(vshlq_n_s16(v20, 8uLL), 4uLL);
        *(v14 + 1024) = vshrq_n_s16(vshlq_n_s16(v21, 8uLL), 4uLL);
        *(v14 + 640) = *&vshrq_n_s16(v20, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0);
        *(v14 + 1152) = *&vshrq_n_s16(v21, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0);
        v9 += v6;
        v8 += 16;
      }

      while (v8 != 128);
      v22 = 0;
      v23.i64[0] = 0xFF000000FFLL;
      v23.i64[1] = 0xFF000000FFLL;
      v24.i64[0] = 0x6F006F006F006FLL;
      v24.i64[1] = 0x6F006F006F006FLL;
      v25.i64[0] = 0x7F007F007F007FLL;
      v25.i64[1] = 0x7F007F007F007FLL;
      v26.i64[0] = 0x8080808080808080;
      v26.i64[1] = 0x8080808080808080;
      do
      {
        v27 = v3 + v22 + v8;
        v28 = *(v9 - 32);
        v29 = *(v9 - 16);
        v30 = *(v9 + 16);
        v31 = vshlq_n_s16(vminq_s16(vaddq_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v28, 8uLL), v23)), vandq_s8(vshrq_n_u32(v29, 8uLL), v23)), v24), v25), 4uLL);
        v32 = vshlq_n_s16(vminq_s16(vaddq_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(*v9, 8uLL), v23)), vandq_s8(vshrq_n_u32(v30, 8uLL), v23)), v24), v25), 4uLL);
        v33 = veorq_s8(vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(v28, 0x10uLL)), vshrq_n_s32(v29, 0x10uLL)), v26);
        v34 = veorq_s8(vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(*v9, 0x10uLL)), vshrq_n_s32(v30, 0x10uLL)), v26);
        *(v27 + 128) = v31;
        *(v27 + 256) = v32;
        *(v27 + 640) = vshrq_n_s16(vshlq_n_s16(v33, 8uLL), 4uLL);
        *(v27 + 1152) = vshrq_n_s16(vshlq_n_s16(v34, 8uLL), 4uLL);
        *(v27 + 768) = *&vshrq_n_s16(v33, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0);
        *(v27 + 1280) = *&vshrq_n_s16(v34, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0);
        v22 += 16;
        v9 += v6;
      }

      while (v22 != 128);
      goto LABEL_148;
    }

    v35 = 0;
    goto LABEL_20;
  }

  if (v5 == 16)
  {
    v35 = 16 - v4;
    if (v4 <= 0)
    {
      v36 = v6;
      v37 = v215;
      goto LABEL_22;
    }

LABEL_20:
    v36 = v6;
    v47 = v4 + 1;
    v37 = v215;
    do
    {
      v48 = v7[1];
      *v37 = *v7;
      v37[1] = v48;
      v49 = v7[3];
      v37[2] = v7[2];
      v37[3] = v49;
      v7 = (v7 + v6);
      v37 += 4;
      --v47;
    }

    while (v47 > 1);
LABEL_22:
    if (v35 >= 1)
    {
      v50 = (v7 - v36);
      v51 = *v50;
      v52 = v50[2];
      v53 = v50[3];
      v54 = v35 + 1;
      do
      {
        *v37 = v51;
        v37[1] = v50[1];
        v37[2] = v52;
        v37[3] = v53;
        v37 += 4;
        --v54;
      }

      while (v54 > 1);
    }

    goto LABEL_144;
  }

  if (v5 > 15)
  {
    goto LABEL_144;
  }

  v38 = v3;
  v39 = 4 * v5;
  v40 = v5;
  if (v4 <= 0)
  {
    v46 = (result - v6);
    v45 = v215;
  }

  else
  {
    v41 = v39;
    v42 = v6;
    v43 = v4;
    v44 = v4 + 1;
    v45 = v215;
    do
    {
      result = memcpy(v45, v7, v39);
      v7 = (v7 + v42);
      v45 += 64;
      --v44;
    }

    while (v44 > 1);
    if (v43 > 15)
    {
      goto LABEL_29;
    }

    v4 = v43;
    v46 = v7 - v42;
  }

  v41 = v39;
  v55 = 17 - v4;
  do
  {
    result = memcpy(v45, v46, v41);
    v45 += 64;
    --v55;
  }

  while (v55 > 1);
LABEL_29:
  v56 = &v215[v41];
  v58 = &v215[v41 - 4];
  v57 = *&v215[v41 - 4];
  v59 = 16 - v40;
  if (16 - v40 <= 1)
  {
    v60 = 1;
  }

  else
  {
    v60 = v59;
  }

  if (v59 < 8)
  {
    LODWORD(v61) = 0;
    v3 = v38;
LABEL_37:
    v65 = v60 - v61;
    v66 = (v58 + 4);
    do
    {
      *v66++ = v57;
      --v65;
    }

    while (v65);
    goto LABEL_39;
  }

  v61 = v60 & 0x7FFFFFF8;
  v58 += 4 * v61;
  v62 = vdupq_n_s32(v57);
  v63 = &v215[v41 + 16];
  v64 = v61;
  do
  {
    v63[-1] = v62;
    *v63 = v62;
    v63 += 2;
    v64 -= 8;
  }

  while (v64);
  v3 = v38;
  if (v61 != v60)
  {
    goto LABEL_37;
  }

LABEL_39:
  v68 = v56 + 15;
  v67 = v56[15];
  if (v59 < 8)
  {
    LODWORD(v69) = 0;
LABEL_44:
    v73 = v60 - v69;
    v74 = v68 + 1;
    do
    {
      *v74++ = v67;
      --v73;
    }

    while (v73);
    goto LABEL_46;
  }

  v69 = v60 & 0x7FFFFFF8;
  v68 += v69;
  v70 = vdupq_n_s32(v67);
  v71 = &v215[v41 + 80];
  v72 = v69;
  do
  {
    v71[-1] = v70;
    *v71 = v70;
    v71 += 2;
    v72 -= 8;
  }

  while (v72);
  if (v69 != v60)
  {
    goto LABEL_44;
  }

LABEL_46:
  v76 = v56 + 31;
  v75 = v56[31];
  if (v59 < 8)
  {
    LODWORD(v77) = 0;
LABEL_51:
    v81 = v60 - v77;
    v82 = v76 + 1;
    do
    {
      *v82++ = v75;
      --v81;
    }

    while (v81);
    goto LABEL_53;
  }

  v77 = v60 & 0x7FFFFFF8;
  v76 += v77;
  v78 = vdupq_n_s32(v75);
  v79 = &v215[v41 + 144];
  v80 = v77;
  do
  {
    v79[-1] = v78;
    *v79 = v78;
    v79 += 2;
    v80 -= 8;
  }

  while (v80);
  if (v77 != v60)
  {
    goto LABEL_51;
  }

LABEL_53:
  v84 = v56 + 47;
  v83 = v56[47];
  if (v59 < 8)
  {
    LODWORD(v85) = 0;
LABEL_58:
    v89 = v60 - v85;
    v90 = v84 + 1;
    do
    {
      *v90++ = v83;
      --v89;
    }

    while (v89);
    goto LABEL_60;
  }

  v85 = v60 & 0x7FFFFFF8;
  v84 += v85;
  v86 = vdupq_n_s32(v83);
  v87 = &v215[v41 + 208];
  v88 = v85;
  do
  {
    v87[-1] = v86;
    *v87 = v86;
    v87 += 2;
    v88 -= 8;
  }

  while (v88);
  if (v85 != v60)
  {
    goto LABEL_58;
  }

LABEL_60:
  v92 = v56 + 63;
  v91 = v56[63];
  if (v59 < 8)
  {
    LODWORD(v93) = 0;
LABEL_65:
    v97 = v60 - v93;
    v98 = v92 + 1;
    do
    {
      *v98++ = v91;
      --v97;
    }

    while (v97);
    goto LABEL_67;
  }

  v93 = v60 & 0x7FFFFFF8;
  v92 += v93;
  v94 = vdupq_n_s32(v91);
  v95 = &v215[v41 + 272];
  v96 = v93;
  do
  {
    v95[-1] = v94;
    *v95 = v94;
    v95 += 2;
    v96 -= 8;
  }

  while (v96);
  if (v93 != v60)
  {
    goto LABEL_65;
  }

LABEL_67:
  v99 = v56 + 79;
  v100 = v56[79];
  if (v59 < 8)
  {
    LODWORD(v101) = 0;
LABEL_72:
    v105 = v60 - v101;
    v106 = v99 + 1;
    do
    {
      *v106++ = v100;
      --v105;
    }

    while (v105);
    goto LABEL_74;
  }

  v101 = v60 & 0x7FFFFFF8;
  v99 += v101;
  v102 = vdupq_n_s32(v100);
  v103 = &v215[v41 + 336];
  v104 = v101;
  do
  {
    v103[-1] = v102;
    *v103 = v102;
    v103 += 2;
    v104 -= 8;
  }

  while (v104);
  if (v101 != v60)
  {
    goto LABEL_72;
  }

LABEL_74:
  v107 = v56 + 95;
  v108 = v56[95];
  if (v59 < 8)
  {
    LODWORD(v109) = 0;
LABEL_79:
    v113 = v60 - v109;
    v114 = v107 + 1;
    do
    {
      *v114++ = v108;
      --v113;
    }

    while (v113);
    goto LABEL_81;
  }

  v109 = v60 & 0x7FFFFFF8;
  v107 += v109;
  v110 = vdupq_n_s32(v108);
  v111 = &v215[v41 + 400];
  v112 = v109;
  do
  {
    v111[-1] = v110;
    *v111 = v110;
    v111 += 2;
    v112 -= 8;
  }

  while (v112);
  if (v109 != v60)
  {
    goto LABEL_79;
  }

LABEL_81:
  v115 = v56 + 111;
  v116 = v56[111];
  if (v59 < 8)
  {
    LODWORD(v117) = 0;
LABEL_86:
    v121 = v60 - v117;
    v122 = v115 + 1;
    do
    {
      *v122++ = v116;
      --v121;
    }

    while (v121);
    goto LABEL_88;
  }

  v117 = v60 & 0x7FFFFFF8;
  v115 += v117;
  v118 = vdupq_n_s32(v116);
  v119 = &v215[v41 + 464];
  v120 = v117;
  do
  {
    v119[-1] = v118;
    *v119 = v118;
    v119 += 2;
    v120 -= 8;
  }

  while (v120);
  if (v117 != v60)
  {
    goto LABEL_86;
  }

LABEL_88:
  v123 = v56 + 127;
  v124 = v56[127];
  if (v59 < 8)
  {
    LODWORD(v125) = 0;
LABEL_93:
    v129 = v60 - v125;
    v130 = v123 + 1;
    do
    {
      *v130++ = v124;
      --v129;
    }

    while (v129);
    goto LABEL_95;
  }

  v125 = v60 & 0x7FFFFFF8;
  v123 += v125;
  v126 = vdupq_n_s32(v124);
  v127 = &v215[v41 + 528];
  v128 = v125;
  do
  {
    v127[-1] = v126;
    *v127 = v126;
    v127 += 2;
    v128 -= 8;
  }

  while (v128);
  if (v125 != v60)
  {
    goto LABEL_93;
  }

LABEL_95:
  v131 = v56 + 143;
  v132 = v56[143];
  if (v59 < 8)
  {
    LODWORD(v133) = 0;
LABEL_100:
    v137 = v60 - v133;
    v138 = v131 + 1;
    do
    {
      *v138++ = v132;
      --v137;
    }

    while (v137);
    goto LABEL_102;
  }

  v133 = v60 & 0x7FFFFFF8;
  v131 += v133;
  v134 = vdupq_n_s32(v132);
  v135 = &v215[v41 + 592];
  v136 = v133;
  do
  {
    v135[-1] = v134;
    *v135 = v134;
    v135 += 2;
    v136 -= 8;
  }

  while (v136);
  if (v133 != v60)
  {
    goto LABEL_100;
  }

LABEL_102:
  v139 = v56 + 159;
  v140 = v56[159];
  if (v59 < 8)
  {
    LODWORD(v141) = 0;
LABEL_107:
    v145 = v60 - v141;
    v146 = v139 + 1;
    do
    {
      *v146++ = v140;
      --v145;
    }

    while (v145);
    goto LABEL_109;
  }

  v141 = v60 & 0x7FFFFFF8;
  v139 += v141;
  v142 = vdupq_n_s32(v140);
  v143 = &v215[v41 + 656];
  v144 = v141;
  do
  {
    v143[-1] = v142;
    *v143 = v142;
    v143 += 2;
    v144 -= 8;
  }

  while (v144);
  if (v141 != v60)
  {
    goto LABEL_107;
  }

LABEL_109:
  v147 = v56 + 175;
  v148 = v56[175];
  if (v59 < 8)
  {
    LODWORD(v149) = 0;
LABEL_114:
    v153 = v60 - v149;
    v154 = v147 + 1;
    do
    {
      *v154++ = v148;
      --v153;
    }

    while (v153);
    goto LABEL_116;
  }

  v149 = v60 & 0x7FFFFFF8;
  v147 += v149;
  v150 = vdupq_n_s32(v148);
  v151 = &v215[v41 + 720];
  v152 = v149;
  do
  {
    v151[-1] = v150;
    *v151 = v150;
    v151 += 2;
    v152 -= 8;
  }

  while (v152);
  if (v149 != v60)
  {
    goto LABEL_114;
  }

LABEL_116:
  v155 = v56 + 191;
  v156 = v56[191];
  if (v59 < 8)
  {
    LODWORD(v157) = 0;
LABEL_121:
    v161 = v60 - v157;
    v162 = v155 + 1;
    do
    {
      *v162++ = v156;
      --v161;
    }

    while (v161);
    goto LABEL_123;
  }

  v157 = v60 & 0x7FFFFFF8;
  v155 += v157;
  v158 = vdupq_n_s32(v156);
  v159 = &v215[v41 + 784];
  v160 = v157;
  do
  {
    v159[-1] = v158;
    *v159 = v158;
    v159 += 2;
    v160 -= 8;
  }

  while (v160);
  if (v157 != v60)
  {
    goto LABEL_121;
  }

LABEL_123:
  v163 = v56 + 207;
  v164 = v56[207];
  if (v59 < 8)
  {
    LODWORD(v165) = 0;
LABEL_128:
    v169 = v60 - v165;
    v170 = v163 + 1;
    do
    {
      *v170++ = v164;
      --v169;
    }

    while (v169);
    goto LABEL_130;
  }

  v165 = v60 & 0x7FFFFFF8;
  v163 += v165;
  v166 = vdupq_n_s32(v164);
  v167 = &v215[v41 + 848];
  v168 = v165;
  do
  {
    v167[-1] = v166;
    *v167 = v166;
    v167 += 2;
    v168 -= 8;
  }

  while (v168);
  if (v165 != v60)
  {
    goto LABEL_128;
  }

LABEL_130:
  v171 = v56 + 223;
  v172 = v56[223];
  if (v59 >= 8)
  {
    v173 = v60 & 0x7FFFFFF8;
    v171 += v173;
    v174 = vdupq_n_s32(v172);
    v175 = &v215[v41 + 912];
    v176 = v173;
    do
    {
      v175[-1] = v174;
      *v175 = v174;
      v175 += 2;
      v176 -= 8;
    }

    while (v176);
    if (v173 == v60)
    {
      goto LABEL_137;
    }
  }

  else
  {
    LODWORD(v173) = 0;
  }

  v177 = v60 - v173;
  v178 = v171 + 1;
  do
  {
    *v178++ = v172;
    --v177;
  }

  while (v177);
LABEL_137:
  v179 = v56 + 239;
  v180 = v56[239];
  if (v59 >= 8)
  {
    v181 = v60 & 0x7FFFFFF8;
    v179 += v181;
    v182 = vdupq_n_s32(v180);
    v183 = &v215[v41 + 976];
    v184 = v181;
    do
    {
      v183[-1] = v182;
      *v183 = v182;
      v183 += 2;
      v184 -= 8;
    }

    while (v184);
    if (v181 == v60)
    {
      goto LABEL_144;
    }
  }

  else
  {
    LODWORD(v181) = 0;
  }

  v185 = v60 - v181;
  v186 = v179 + 1;
  do
  {
    *v186++ = v180;
    --v185;
  }

  while (v185);
LABEL_144:
  v187 = 0;
  v188 = 0;
  v189.i64[0] = 0xFF000000FFLL;
  v189.i64[1] = 0xFF000000FFLL;
  v190.i64[0] = 0x6F006F006F006FLL;
  v190.i64[1] = 0x6F006F006F006FLL;
  v191.i64[0] = 0x7F007F007F007FLL;
  v191.i64[1] = 0x7F007F007F007FLL;
  v192.i64[0] = 0x8080808080808080;
  v192.i64[1] = 0x8080808080808080;
  do
  {
    v193 = v3 + v187;
    v194 = *&v215[v188];
    v195 = *&v215[v188 + 16];
    v196 = *&v215[v188 + 32];
    v197 = *&v215[v188 + 48];
    v198 = vshlq_n_s16(vminq_s16(vaddq_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v194, 8uLL), v189)), vandq_s8(vshrq_n_u32(v195, 8uLL), v189)), v190), v191), 4uLL);
    v199 = veorq_s8(vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(v194, 0x10uLL)), vshrq_n_s32(v195, 0x10uLL)), v192);
    v200 = veorq_s8(vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(v196, 0x10uLL)), vshrq_n_s32(v197, 0x10uLL)), v192);
    *v193 = v198;
    *(v193 + 128) = vshlq_n_s16(vminq_s16(vaddq_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v196, 8uLL), v189)), vandq_s8(vshrq_n_u32(v197, 8uLL), v189)), v190), v191), 4uLL);
    *(v193 + 512) = vshrq_n_s16(vshlq_n_s16(v199, 8uLL), 4uLL);
    *(v193 + 1024) = vshrq_n_s16(vshlq_n_s16(v200, 8uLL), 4uLL);
    *(v193 + 640) = *&vshrq_n_s16(v199, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0);
    *(v193 + 1152) = *&vshrq_n_s16(v200, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0);
    v188 += 64;
    v187 += 16;
  }

  while (v187 != 128);
  v201 = 0;
  v202.i64[0] = 0xFF000000FFLL;
  v202.i64[1] = 0xFF000000FFLL;
  v203.i64[0] = 0x6F006F006F006FLL;
  v203.i64[1] = 0x6F006F006F006FLL;
  v204.i64[0] = 0x7F007F007F007FLL;
  v204.i64[1] = 0x7F007F007F007FLL;
  v205.i64[0] = 0x8080808080808080;
  v205.i64[1] = 0x8080808080808080;
  do
  {
    v206 = v3 + v201 + v187;
    v207 = *&v215[v188];
    v208 = *&v215[v188 + 16];
    v209 = *&v215[v188 + 32];
    v210 = *&v215[v188 + 48];
    v211 = vshlq_n_s16(vminq_s16(vaddq_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v207, 8uLL), v202)), vandq_s8(vshrq_n_u32(v208, 8uLL), v202)), v203), v204), 4uLL);
    v212 = veorq_s8(vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(v207, 0x10uLL)), vshrq_n_s32(v208, 0x10uLL)), v205);
    v213 = veorq_s8(vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(v209, 0x10uLL)), vshrq_n_s32(v210, 0x10uLL)), v205);
    *(v206 + 128) = v211;
    *(v206 + 256) = vshlq_n_s16(vminq_s16(vaddq_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v209, 8uLL), v202)), vandq_s8(vshrq_n_u32(v210, 8uLL), v202)), v203), v204), 4uLL);
    *(v206 + 640) = vshrq_n_s16(vshlq_n_s16(v212, 8uLL), 4uLL);
    *(v206 + 1152) = vshrq_n_s16(vshlq_n_s16(v213, 8uLL), 4uLL);
    *(v206 + 768) = *&vshrq_n_s16(v212, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0);
    *(v206 + 1280) = *&vshrq_n_s16(v213, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0);
    v201 += 16;
    v188 += 64;
  }

  while (v201 != 128);
LABEL_148:
  v214 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t pixInGeneric<(PixelFormat)1983131704,(ChromaFormat)3>(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x2A1C7C4A8](a1, a2);
  v7 = result;
  v212 = *MEMORY[0x29EDCA608];
  if (v4 == 16 && v5 == 16)
  {
    if ((result & 0xF) == 0 && (v6 & 0xF) == 0)
    {
      v8 = 0;
      v9 = (result + 32);
      v10.i64[0] = 0xFF000000FFLL;
      v10.i64[1] = 0xFF000000FFLL;
      v11.i64[0] = 0xF800F800F800F800;
      v11.i64[1] = 0xF800F800F800F800;
      v12.i64[0] = 0x8080808080808080;
      v12.i64[1] = 0x8080808080808080;
      do
      {
        v13 = v3 + v8;
        v14 = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(*v9, 8uLL), v10)), vandq_s8(vshrq_n_u32(v9[1], 8uLL), v10)), 4uLL), v11);
        v15.i16[0] = *&v9[-2];
        v15.i16[1] = BYTE2(*&v9[-2]);
        v15.i16[2] = BYTE4(v9[-2].i64[0]);
        v15.i16[3] = BYTE6(v9[-2].i64[0]);
        v15.i16[4] = v9[-2].i64[1];
        v15.i16[5] = BYTE2(v9[-2].i64[1]);
        v15.i16[6] = BYTE12(*&v9[-2]);
        v15.i16[7] = BYTE14(*&v9[-2]);
        v16.i16[0] = *&v9[-1];
        v16.i16[1] = BYTE2(*&v9[-1]);
        v16.i16[2] = BYTE4(v9[-1].i64[0]);
        v16.i16[3] = BYTE6(v9[-1].i64[0]);
        v16.i16[4] = v9[-1].i64[1];
        v16.i16[5] = BYTE2(v9[-1].i64[1]);
        v16.i16[6] = BYTE12(*&v9[-1]);
        v16.i16[7] = BYTE14(*&v9[-1]);
        v17.i16[0] = v9->u8[0];
        v17.i16[1] = BYTE2(v9->u32[0]);
        v17.i16[2] = BYTE4(v9->i64[0]);
        v17.i16[3] = BYTE6(v9->i64[0]);
        v17.i16[4] = v9->i64[1];
        v17.i16[5] = BYTE2(v9->i64[1]);
        v17.i16[6] = BYTE12(*v9);
        v17.i16[7] = BYTE14(*v9);
        v18.i16[0] = *&v9[1];
        v18.i16[1] = BYTE2(*&v9[1]);
        v18.i16[2] = BYTE4(v9[1].i64[0]);
        v18.i16[3] = BYTE6(v9[1].i64[0]);
        v18.i16[4] = v9[1].i64[1];
        v18.i16[5] = BYTE2(v9[1].i64[1]);
        v18.i16[6] = BYTE12(*&v9[1]);
        v18.i16[7] = BYTE14(*&v9[1]);
        v19 = veorq_s8(vqmovun_high_s16(vqmovun_s16(v15), v16), v12);
        v20 = veorq_s8(vqmovun_high_s16(vqmovun_s16(v17), v18), v12);
        *v13 = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v9[-2], 8uLL), v10)), vandq_s8(vshrq_n_u32(v9[-1], 8uLL), v10)), 4uLL), v11);
        *(v13 + 128) = v14;
        *(v13 + 512) = vshrq_n_s16(vshlq_n_s16(v19, 8uLL), 4uLL);
        *(v13 + 1024) = vshrq_n_s16(vshlq_n_s16(v20, 8uLL), 4uLL);
        *(v13 + 640) = *&vshrq_n_s16(v19, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0);
        *(v13 + 1152) = *&vshrq_n_s16(v20, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0);
        v9 = (v9 + v6);
        v8 += 16;
      }

      while (v8 != 128);
      v21 = 0;
      v22.i64[0] = 0xFF000000FFLL;
      v22.i64[1] = 0xFF000000FFLL;
      v23.i64[0] = 0xF800F800F800F800;
      v23.i64[1] = 0xF800F800F800F800;
      v24.i64[0] = 0x8080808080808080;
      v24.i64[1] = 0x8080808080808080;
      do
      {
        v25 = v3 + v21 + v8;
        v26 = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(*v9, 8uLL), v22)), vandq_s8(vshrq_n_u32(v9[1], 8uLL), v22)), 4uLL), v23);
        v27.i16[0] = *&v9[-2];
        v27.i16[1] = BYTE2(*&v9[-2]);
        v27.i16[2] = BYTE4(v9[-2].i64[0]);
        v27.i16[3] = BYTE6(v9[-2].i64[0]);
        v27.i16[4] = v9[-2].i64[1];
        v27.i16[5] = BYTE2(v9[-2].i64[1]);
        v27.i16[6] = BYTE12(*&v9[-2]);
        v27.i16[7] = BYTE14(*&v9[-2]);
        v28.i16[0] = *&v9[-1];
        v28.i16[1] = BYTE2(*&v9[-1]);
        v28.i16[2] = BYTE4(v9[-1].i64[0]);
        v28.i16[3] = BYTE6(v9[-1].i64[0]);
        v28.i16[4] = v9[-1].i64[1];
        v28.i16[5] = BYTE2(v9[-1].i64[1]);
        v28.i16[6] = BYTE12(*&v9[-1]);
        v28.i16[7] = BYTE14(*&v9[-1]);
        v29.i16[0] = v9->u8[0];
        v29.i16[1] = BYTE2(v9->u32[0]);
        v29.i16[2] = BYTE4(v9->i64[0]);
        v29.i16[3] = BYTE6(v9->i64[0]);
        v29.i16[4] = v9->i64[1];
        v29.i16[5] = BYTE2(v9->i64[1]);
        v29.i16[6] = BYTE12(*v9);
        v29.i16[7] = BYTE14(*v9);
        v30.i16[0] = *&v9[1];
        v30.i16[1] = BYTE2(*&v9[1]);
        v30.i16[2] = BYTE4(v9[1].i64[0]);
        v30.i16[3] = BYTE6(v9[1].i64[0]);
        v30.i16[4] = v9[1].i64[1];
        v30.i16[5] = BYTE2(v9[1].i64[1]);
        v30.i16[6] = BYTE12(*&v9[1]);
        v30.i16[7] = BYTE14(*&v9[1]);
        v31 = veorq_s8(vqmovun_high_s16(vqmovun_s16(v27), v28), v24);
        v32 = veorq_s8(vqmovun_high_s16(vqmovun_s16(v29), v30), v24);
        *(v25 + 128) = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(v9[-2], 8uLL), v22)), vandq_s8(vshrq_n_u32(v9[-1], 8uLL), v22)), 4uLL), v23);
        *(v25 + 256) = v26;
        *(v25 + 640) = vshrq_n_s16(vshlq_n_s16(v31, 8uLL), 4uLL);
        *(v25 + 1152) = vshrq_n_s16(vshlq_n_s16(v32, 8uLL), 4uLL);
        *(v25 + 768) = *&vshrq_n_s16(v31, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0);
        *(v25 + 1280) = *&vshrq_n_s16(v32, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0);
        v21 += 16;
        v9 = (v9 + v6);
      }

      while (v21 != 128);
      goto LABEL_148;
    }

    v33 = 0;
    goto LABEL_20;
  }

  if (v5 == 16)
  {
    v33 = 16 - v4;
    if (v4 <= 0)
    {
      v34 = v6;
      v35 = v211;
      goto LABEL_22;
    }

LABEL_20:
    v34 = v6;
    v45 = v4 + 1;
    v35 = v211;
    do
    {
      v46 = v7[1];
      *v35 = *v7;
      v35[1] = v46;
      v47 = v7[3];
      v35[2] = v7[2];
      v35[3] = v47;
      v7 = (v7 + v6);
      v35 += 4;
      --v45;
    }

    while (v45 > 1);
LABEL_22:
    if (v33 >= 1)
    {
      v48 = (v7 - v34);
      v49 = *v48;
      v50 = v48[2];
      v51 = v48[3];
      v52 = v33 + 1;
      do
      {
        *v35 = v49;
        v35[1] = v48[1];
        v35[2] = v50;
        v35[3] = v51;
        v35 += 4;
        --v52;
      }

      while (v52 > 1);
    }

    goto LABEL_144;
  }

  if (v5 > 15)
  {
    goto LABEL_144;
  }

  v36 = v3;
  v37 = 4 * v5;
  v38 = v5;
  if (v4 <= 0)
  {
    v44 = (result - v6);
    v43 = v211;
  }

  else
  {
    v39 = v37;
    v40 = v6;
    v41 = v4;
    v42 = v4 + 1;
    v43 = v211;
    do
    {
      result = memcpy(v43, v7, v37);
      v7 = (v7 + v40);
      v43 += 64;
      --v42;
    }

    while (v42 > 1);
    if (v41 > 15)
    {
      goto LABEL_29;
    }

    v4 = v41;
    v44 = v7 - v40;
  }

  v39 = v37;
  v53 = 17 - v4;
  do
  {
    result = memcpy(v43, v44, v39);
    v43 += 64;
    --v53;
  }

  while (v53 > 1);
LABEL_29:
  v54 = &v211[v39];
  v56 = &v211[v39 - 4];
  v55 = *&v211[v39 - 4];
  v57 = 16 - v38;
  if (16 - v38 <= 1)
  {
    v58 = 1;
  }

  else
  {
    v58 = v57;
  }

  if (v57 < 8)
  {
    LODWORD(v59) = 0;
    v3 = v36;
LABEL_37:
    v63 = v58 - v59;
    v64 = (v56 + 4);
    do
    {
      *v64++ = v55;
      --v63;
    }

    while (v63);
    goto LABEL_39;
  }

  v59 = v58 & 0x7FFFFFF8;
  v56 += 4 * v59;
  v60 = vdupq_n_s32(v55);
  v61 = &v211[v39 + 16];
  v62 = v59;
  do
  {
    v61[-1] = v60;
    *v61 = v60;
    v61 += 2;
    v62 -= 8;
  }

  while (v62);
  v3 = v36;
  if (v59 != v58)
  {
    goto LABEL_37;
  }

LABEL_39:
  v66 = v54 + 15;
  v65 = v54[15];
  if (v57 < 8)
  {
    LODWORD(v67) = 0;
LABEL_44:
    v71 = v58 - v67;
    v72 = v66 + 1;
    do
    {
      *v72++ = v65;
      --v71;
    }

    while (v71);
    goto LABEL_46;
  }

  v67 = v58 & 0x7FFFFFF8;
  v66 += v67;
  v68 = vdupq_n_s32(v65);
  v69 = &v211[v39 + 80];
  v70 = v67;
  do
  {
    v69[-1] = v68;
    *v69 = v68;
    v69 += 2;
    v70 -= 8;
  }

  while (v70);
  if (v67 != v58)
  {
    goto LABEL_44;
  }

LABEL_46:
  v74 = v54 + 31;
  v73 = v54[31];
  if (v57 < 8)
  {
    LODWORD(v75) = 0;
LABEL_51:
    v79 = v58 - v75;
    v80 = v74 + 1;
    do
    {
      *v80++ = v73;
      --v79;
    }

    while (v79);
    goto LABEL_53;
  }

  v75 = v58 & 0x7FFFFFF8;
  v74 += v75;
  v76 = vdupq_n_s32(v73);
  v77 = &v211[v39 + 144];
  v78 = v75;
  do
  {
    v77[-1] = v76;
    *v77 = v76;
    v77 += 2;
    v78 -= 8;
  }

  while (v78);
  if (v75 != v58)
  {
    goto LABEL_51;
  }

LABEL_53:
  v82 = v54 + 47;
  v81 = v54[47];
  if (v57 < 8)
  {
    LODWORD(v83) = 0;
LABEL_58:
    v87 = v58 - v83;
    v88 = v82 + 1;
    do
    {
      *v88++ = v81;
      --v87;
    }

    while (v87);
    goto LABEL_60;
  }

  v83 = v58 & 0x7FFFFFF8;
  v82 += v83;
  v84 = vdupq_n_s32(v81);
  v85 = &v211[v39 + 208];
  v86 = v83;
  do
  {
    v85[-1] = v84;
    *v85 = v84;
    v85 += 2;
    v86 -= 8;
  }

  while (v86);
  if (v83 != v58)
  {
    goto LABEL_58;
  }

LABEL_60:
  v90 = v54 + 63;
  v89 = v54[63];
  if (v57 < 8)
  {
    LODWORD(v91) = 0;
LABEL_65:
    v95 = v58 - v91;
    v96 = v90 + 1;
    do
    {
      *v96++ = v89;
      --v95;
    }

    while (v95);
    goto LABEL_67;
  }

  v91 = v58 & 0x7FFFFFF8;
  v90 += v91;
  v92 = vdupq_n_s32(v89);
  v93 = &v211[v39 + 272];
  v94 = v91;
  do
  {
    v93[-1] = v92;
    *v93 = v92;
    v93 += 2;
    v94 -= 8;
  }

  while (v94);
  if (v91 != v58)
  {
    goto LABEL_65;
  }

LABEL_67:
  v97 = v54 + 79;
  v98 = v54[79];
  if (v57 < 8)
  {
    LODWORD(v99) = 0;
LABEL_72:
    v103 = v58 - v99;
    v104 = v97 + 1;
    do
    {
      *v104++ = v98;
      --v103;
    }

    while (v103);
    goto LABEL_74;
  }

  v99 = v58 & 0x7FFFFFF8;
  v97 += v99;
  v100 = vdupq_n_s32(v98);
  v101 = &v211[v39 + 336];
  v102 = v99;
  do
  {
    v101[-1] = v100;
    *v101 = v100;
    v101 += 2;
    v102 -= 8;
  }

  while (v102);
  if (v99 != v58)
  {
    goto LABEL_72;
  }

LABEL_74:
  v105 = v54 + 95;
  v106 = v54[95];
  if (v57 < 8)
  {
    LODWORD(v107) = 0;
LABEL_79:
    v111 = v58 - v107;
    v112 = v105 + 1;
    do
    {
      *v112++ = v106;
      --v111;
    }

    while (v111);
    goto LABEL_81;
  }

  v107 = v58 & 0x7FFFFFF8;
  v105 += v107;
  v108 = vdupq_n_s32(v106);
  v109 = &v211[v39 + 400];
  v110 = v107;
  do
  {
    v109[-1] = v108;
    *v109 = v108;
    v109 += 2;
    v110 -= 8;
  }

  while (v110);
  if (v107 != v58)
  {
    goto LABEL_79;
  }

LABEL_81:
  v113 = v54 + 111;
  v114 = v54[111];
  if (v57 < 8)
  {
    LODWORD(v115) = 0;
LABEL_86:
    v119 = v58 - v115;
    v120 = v113 + 1;
    do
    {
      *v120++ = v114;
      --v119;
    }

    while (v119);
    goto LABEL_88;
  }

  v115 = v58 & 0x7FFFFFF8;
  v113 += v115;
  v116 = vdupq_n_s32(v114);
  v117 = &v211[v39 + 464];
  v118 = v115;
  do
  {
    v117[-1] = v116;
    *v117 = v116;
    v117 += 2;
    v118 -= 8;
  }

  while (v118);
  if (v115 != v58)
  {
    goto LABEL_86;
  }

LABEL_88:
  v121 = v54 + 127;
  v122 = v54[127];
  if (v57 < 8)
  {
    LODWORD(v123) = 0;
LABEL_93:
    v127 = v58 - v123;
    v128 = v121 + 1;
    do
    {
      *v128++ = v122;
      --v127;
    }

    while (v127);
    goto LABEL_95;
  }

  v123 = v58 & 0x7FFFFFF8;
  v121 += v123;
  v124 = vdupq_n_s32(v122);
  v125 = &v211[v39 + 528];
  v126 = v123;
  do
  {
    v125[-1] = v124;
    *v125 = v124;
    v125 += 2;
    v126 -= 8;
  }

  while (v126);
  if (v123 != v58)
  {
    goto LABEL_93;
  }

LABEL_95:
  v129 = v54 + 143;
  v130 = v54[143];
  if (v57 < 8)
  {
    LODWORD(v131) = 0;
LABEL_100:
    v135 = v58 - v131;
    v136 = v129 + 1;
    do
    {
      *v136++ = v130;
      --v135;
    }

    while (v135);
    goto LABEL_102;
  }

  v131 = v58 & 0x7FFFFFF8;
  v129 += v131;
  v132 = vdupq_n_s32(v130);
  v133 = &v211[v39 + 592];
  v134 = v131;
  do
  {
    v133[-1] = v132;
    *v133 = v132;
    v133 += 2;
    v134 -= 8;
  }

  while (v134);
  if (v131 != v58)
  {
    goto LABEL_100;
  }

LABEL_102:
  v137 = v54 + 159;
  v138 = v54[159];
  if (v57 < 8)
  {
    LODWORD(v139) = 0;
LABEL_107:
    v143 = v58 - v139;
    v144 = v137 + 1;
    do
    {
      *v144++ = v138;
      --v143;
    }

    while (v143);
    goto LABEL_109;
  }

  v139 = v58 & 0x7FFFFFF8;
  v137 += v139;
  v140 = vdupq_n_s32(v138);
  v141 = &v211[v39 + 656];
  v142 = v139;
  do
  {
    v141[-1] = v140;
    *v141 = v140;
    v141 += 2;
    v142 -= 8;
  }

  while (v142);
  if (v139 != v58)
  {
    goto LABEL_107;
  }

LABEL_109:
  v145 = v54 + 175;
  v146 = v54[175];
  if (v57 < 8)
  {
    LODWORD(v147) = 0;
LABEL_114:
    v151 = v58 - v147;
    v152 = v145 + 1;
    do
    {
      *v152++ = v146;
      --v151;
    }

    while (v151);
    goto LABEL_116;
  }

  v147 = v58 & 0x7FFFFFF8;
  v145 += v147;
  v148 = vdupq_n_s32(v146);
  v149 = &v211[v39 + 720];
  v150 = v147;
  do
  {
    v149[-1] = v148;
    *v149 = v148;
    v149 += 2;
    v150 -= 8;
  }

  while (v150);
  if (v147 != v58)
  {
    goto LABEL_114;
  }

LABEL_116:
  v153 = v54 + 191;
  v154 = v54[191];
  if (v57 < 8)
  {
    LODWORD(v155) = 0;
LABEL_121:
    v159 = v58 - v155;
    v160 = v153 + 1;
    do
    {
      *v160++ = v154;
      --v159;
    }

    while (v159);
    goto LABEL_123;
  }

  v155 = v58 & 0x7FFFFFF8;
  v153 += v155;
  v156 = vdupq_n_s32(v154);
  v157 = &v211[v39 + 784];
  v158 = v155;
  do
  {
    v157[-1] = v156;
    *v157 = v156;
    v157 += 2;
    v158 -= 8;
  }

  while (v158);
  if (v155 != v58)
  {
    goto LABEL_121;
  }

LABEL_123:
  v161 = v54 + 207;
  v162 = v54[207];
  if (v57 < 8)
  {
    LODWORD(v163) = 0;
LABEL_128:
    v167 = v58 - v163;
    v168 = v161 + 1;
    do
    {
      *v168++ = v162;
      --v167;
    }

    while (v167);
    goto LABEL_130;
  }

  v163 = v58 & 0x7FFFFFF8;
  v161 += v163;
  v164 = vdupq_n_s32(v162);
  v165 = &v211[v39 + 848];
  v166 = v163;
  do
  {
    v165[-1] = v164;
    *v165 = v164;
    v165 += 2;
    v166 -= 8;
  }

  while (v166);
  if (v163 != v58)
  {
    goto LABEL_128;
  }

LABEL_130:
  v169 = v54 + 223;
  v170 = v54[223];
  if (v57 >= 8)
  {
    v171 = v58 & 0x7FFFFFF8;
    v169 += v171;
    v172 = vdupq_n_s32(v170);
    v173 = &v211[v39 + 912];
    v174 = v171;
    do
    {
      v173[-1] = v172;
      *v173 = v172;
      v173 += 2;
      v174 -= 8;
    }

    while (v174);
    if (v171 == v58)
    {
      goto LABEL_137;
    }
  }

  else
  {
    LODWORD(v171) = 0;
  }

  v175 = v58 - v171;
  v176 = v169 + 1;
  do
  {
    *v176++ = v170;
    --v175;
  }

  while (v175);
LABEL_137:
  v177 = v54 + 239;
  v178 = v54[239];
  if (v57 >= 8)
  {
    v179 = v58 & 0x7FFFFFF8;
    v177 += v179;
    v180 = vdupq_n_s32(v178);
    v181 = &v211[v39 + 976];
    v182 = v179;
    do
    {
      v181[-1] = v180;
      *v181 = v180;
      v181 += 2;
      v182 -= 8;
    }

    while (v182);
    if (v179 == v58)
    {
      goto LABEL_144;
    }
  }

  else
  {
    LODWORD(v179) = 0;
  }

  v183 = v58 - v179;
  v184 = v177 + 1;
  do
  {
    *v184++ = v178;
    --v183;
  }

  while (v183);
LABEL_144:
  v185 = 0;
  v186 = 0;
  v187.i64[0] = 0xFF000000FFLL;
  v187.i64[1] = 0xFF000000FFLL;
  v188.i64[0] = 0xF800F800F800F800;
  v188.i64[1] = 0xF800F800F800F800;
  v189.i64[0] = 0x8080808080808080;
  v189.i64[1] = 0x8080808080808080;
  do
  {
    v190 = v3 + v185;
    v191 = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(*&v211[v186 + 32], 8uLL), v187)), vandq_s8(vshrq_n_u32(*&v211[v186 + 48], 8uLL), v187)), 4uLL), v188);
    v192.i16[0] = *&v211[v186];
    v192.i16[1] = BYTE2(*&v211[v186]);
    v192.i16[2] = BYTE4(*&v211[v186]);
    v192.i16[3] = BYTE6(*&v211[v186]);
    v192.i16[4] = *&v211[v186 + 8];
    v192.i16[5] = BYTE2(*&v211[v186 + 8]);
    v192.i16[6] = BYTE12(*&v211[v186]);
    v192.i16[7] = BYTE14(*&v211[v186]);
    v193.i16[0] = *&v211[v186 + 16];
    v193.i16[1] = BYTE2(*&v211[v186 + 16]);
    v193.i16[2] = BYTE4(*&v211[v186 + 16]);
    v193.i16[3] = BYTE6(*&v211[v186 + 16]);
    v193.i16[4] = *&v211[v186 + 24];
    v193.i16[5] = BYTE2(*&v211[v186 + 24]);
    v193.i16[6] = BYTE12(*&v211[v186 + 16]);
    v193.i16[7] = BYTE14(*&v211[v186 + 16]);
    v194.i16[0] = *&v211[v186 + 32];
    v194.i16[1] = BYTE2(*&v211[v186 + 32]);
    v194.i16[2] = BYTE4(*&v211[v186 + 32]);
    v194.i16[3] = BYTE6(*&v211[v186 + 32]);
    v194.i16[4] = *&v211[v186 + 40];
    v194.i16[5] = BYTE2(*&v211[v186 + 40]);
    v194.i16[6] = BYTE12(*&v211[v186 + 32]);
    v194.i16[7] = BYTE14(*&v211[v186 + 32]);
    v195.i16[0] = *&v211[v186 + 48];
    v195.i16[1] = BYTE2(*&v211[v186 + 48]);
    v195.i16[2] = BYTE4(*&v211[v186 + 48]);
    v195.i16[3] = BYTE6(*&v211[v186 + 48]);
    v195.i16[4] = *&v211[v186 + 56];
    v195.i16[5] = BYTE2(*&v211[v186 + 56]);
    v195.i16[6] = BYTE12(*&v211[v186 + 48]);
    v195.i16[7] = BYTE14(*&v211[v186 + 48]);
    v196 = veorq_s8(vqmovun_high_s16(vqmovun_s16(v192), v193), v189);
    v197 = veorq_s8(vqmovun_high_s16(vqmovun_s16(v194), v195), v189);
    *v190 = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(*&v211[v186], 8uLL), v187)), vandq_s8(vshrq_n_u32(*&v211[v186 + 16], 8uLL), v187)), 4uLL), v188);
    *(v190 + 128) = v191;
    *(v190 + 512) = vshrq_n_s16(vshlq_n_s16(v196, 8uLL), 4uLL);
    *(v190 + 1024) = vshrq_n_s16(vshlq_n_s16(v197, 8uLL), 4uLL);
    *(v190 + 640) = *&vshrq_n_s16(v196, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0);
    *(v190 + 1152) = *&vshrq_n_s16(v197, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0);
    v186 += 64;
    v185 += 16;
  }

  while (v185 != 128);
  v198 = 0;
  v199.i64[0] = 0xFF000000FFLL;
  v199.i64[1] = 0xFF000000FFLL;
  v200.i64[0] = 0xF800F800F800F800;
  v200.i64[1] = 0xF800F800F800F800;
  v201.i64[0] = 0x8080808080808080;
  v201.i64[1] = 0x8080808080808080;
  do
  {
    v202 = v3 + v198 + v185;
    v203 = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(*&v211[v186 + 32], 8uLL), v199)), vandq_s8(vshrq_n_u32(*&v211[v186 + 48], 8uLL), v199)), 4uLL), v200);
    v204.i16[0] = *&v211[v186];
    v204.i16[1] = BYTE2(*&v211[v186]);
    v204.i16[2] = BYTE4(*&v211[v186]);
    v204.i16[3] = BYTE6(*&v211[v186]);
    v204.i16[4] = *&v211[v186 + 8];
    v204.i16[5] = BYTE2(*&v211[v186 + 8]);
    v204.i16[6] = BYTE12(*&v211[v186]);
    v204.i16[7] = BYTE14(*&v211[v186]);
    v205.i16[0] = *&v211[v186 + 16];
    v205.i16[1] = BYTE2(*&v211[v186 + 16]);
    v205.i16[2] = BYTE4(*&v211[v186 + 16]);
    v205.i16[3] = BYTE6(*&v211[v186 + 16]);
    v205.i16[4] = *&v211[v186 + 24];
    v205.i16[5] = BYTE2(*&v211[v186 + 24]);
    v205.i16[6] = BYTE12(*&v211[v186 + 16]);
    v205.i16[7] = BYTE14(*&v211[v186 + 16]);
    v206.i16[0] = *&v211[v186 + 32];
    v206.i16[1] = BYTE2(*&v211[v186 + 32]);
    v206.i16[2] = BYTE4(*&v211[v186 + 32]);
    v206.i16[3] = BYTE6(*&v211[v186 + 32]);
    v206.i16[4] = *&v211[v186 + 40];
    v206.i16[5] = BYTE2(*&v211[v186 + 40]);
    v206.i16[6] = BYTE12(*&v211[v186 + 32]);
    v206.i16[7] = BYTE14(*&v211[v186 + 32]);
    v207.i16[0] = *&v211[v186 + 48];
    v207.i16[1] = BYTE2(*&v211[v186 + 48]);
    v207.i16[2] = BYTE4(*&v211[v186 + 48]);
    v207.i16[3] = BYTE6(*&v211[v186 + 48]);
    v207.i16[4] = *&v211[v186 + 56];
    v207.i16[5] = BYTE2(*&v211[v186 + 56]);
    v207.i16[6] = BYTE12(*&v211[v186 + 48]);
    v207.i16[7] = BYTE14(*&v211[v186 + 48]);
    v208 = veorq_s8(vqmovun_high_s16(vqmovun_s16(v204), v205), v201);
    v209 = veorq_s8(vqmovun_high_s16(vqmovun_s16(v206), v207), v201);
    *(v202 + 128) = vaddq_s16(vshlq_n_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(vshrq_n_u32(*&v211[v186], 8uLL), v199)), vandq_s8(vshrq_n_u32(*&v211[v186 + 16], 8uLL), v199)), 4uLL), v200);
    *(v202 + 256) = v203;
    *(v202 + 640) = vshrq_n_s16(vshlq_n_s16(v208, 8uLL), 4uLL);
    *(v202 + 1152) = vshrq_n_s16(vshlq_n_s16(v209, 8uLL), 4uLL);
    *(v202 + 768) = *&vshrq_n_s16(v208, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0);
    *(v202 + 1280) = *&vshrq_n_s16(v209, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0);
    v198 += 16;
    v186 += 64;
  }

  while (v198 != 128);
LABEL_148:
  v210 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t pixInGeneric<(PixelFormat)2033463606,(ChromaFormat)3>(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x2A1C7C4A8](a1, a2);
  v7 = result;
  v303 = *MEMORY[0x29EDCA608];
  if (v4 == 16 && v5 == 16)
  {
    if ((result & 0xF) == 0 && (v6 & 0xF) == 0)
    {
      v8 = 0;
      v9 = (result + 64);
      v10.i64[0] = 0x8000800080008000;
      v10.i64[1] = 0x8000800080008000;
      v11.i64[0] = 0x8000800080008;
      v11.i64[1] = 0x8000800080008;
      do
      {
        v12 = (v3 + v8);
        v13 = v9[-4];
        v14 = v9[-3];
        v15 = v9[-2];
        v16 = v9[-1];
        v17 = vzip1q_s16(v13, v14);
        v18 = vzip2q_s16(v13, v14);
        v19 = vzip1q_s16(v15, v16);
        v20 = vzip2q_s16(v15, v16);
        v21 = vzip1q_s16(v17, v18);
        v22 = vzip2q_s16(v17, v18);
        v23 = vzip1q_s16(v19, v20);
        v24 = vzip2q_s16(v19, v20);
        v25 = vzip2q_s64(v21, v23);
        v26 = vzip2q_s64(v22, v24);
        v22.i64[1] = v24.i64[0];
        v27 = vshrq_n_s16(vqaddq_s16(veorq_s8(v25, v10), v11), 4uLL);
        v28 = vshrq_n_s16(vqaddq_s16(veorq_s8(v26, v10), v11), 4uLL);
        v29 = v9[1];
        v30 = v9[2];
        v31 = v9[3];
        v32 = vzip1q_s16(*v9, v29);
        v33 = vzip2q_s16(*v9, v29);
        v34 = vzip1q_s16(v30, v31);
        v35 = vzip2q_s16(v30, v31);
        v36 = vzip1q_s16(v32, v33);
        v37 = vzip2q_s16(v32, v33);
        v38 = vzip1q_s16(v34, v35);
        v39 = vzip2q_s16(v34, v35);
        v40 = vzip2q_s64(v36, v38);
        v41 = vzip2q_s64(v37, v39);
        v37.i64[1] = v39.i64[0];
        *v12 = v27;
        v12[8] = vshrq_n_s16(vqaddq_s16(veorq_s8(v40, v10), v11), 4uLL);
        v12[32] = vshrq_n_s16(vqaddq_s16(veorq_s8(v22, v10), v11), 4uLL);
        v12[64] = vshrq_n_s16(vqaddq_s16(veorq_s8(v37, v10), v11), 4uLL);
        v12[40] = v28;
        v12[72] = vshrq_n_s16(vqaddq_s16(veorq_s8(v41, v10), v11), 4uLL);
        v9 = (v9 + v6);
        v8 += 16;
      }

      while (v8 != 128);
      v42 = 0;
      v43.i64[0] = 0x8000800080008000;
      v43.i64[1] = 0x8000800080008000;
      v44.i64[0] = 0x8000800080008;
      v44.i64[1] = 0x8000800080008;
      do
      {
        v45 = (v3 + v42 + v8);
        v46 = v9[-4];
        v47 = v9[-3];
        v48 = v9[-2];
        v49 = v9[-1];
        v50 = vzip1q_s16(v46, v47);
        v51 = vzip2q_s16(v46, v47);
        v52 = vzip1q_s16(v48, v49);
        v53 = vzip2q_s16(v48, v49);
        v54 = vzip1q_s16(v50, v51);
        v55 = vzip2q_s16(v50, v51);
        v56 = vzip1q_s16(v52, v53);
        v57 = vzip2q_s16(v52, v53);
        v58 = vzip2q_s64(v54, v56);
        v59 = vzip2q_s64(v55, v57);
        v55.i64[1] = v57.i64[0];
        v60 = vshrq_n_s16(vqaddq_s16(veorq_s8(v58, v43), v44), 4uLL);
        v61 = vshrq_n_s16(vqaddq_s16(veorq_s8(v59, v43), v44), 4uLL);
        v62 = v9[1];
        v63 = v9[2];
        v64 = v9[3];
        v65 = vzip1q_s16(*v9, v62);
        v66 = vzip2q_s16(*v9, v62);
        v67 = vzip1q_s16(v63, v64);
        v68 = vzip2q_s16(v63, v64);
        v69 = vzip1q_s16(v65, v66);
        v70 = vzip2q_s16(v65, v66);
        v71 = vzip1q_s16(v67, v68);
        v72 = vzip2q_s16(v67, v68);
        v73 = vzip2q_s64(v69, v71);
        v74 = vzip2q_s64(v70, v72);
        v70.i64[1] = v72.i64[0];
        v45[8] = v60;
        v45[16] = vshrq_n_s16(vqaddq_s16(veorq_s8(v73, v43), v44), 4uLL);
        v45[40] = vshrq_n_s16(vqaddq_s16(veorq_s8(v55, v43), v44), 4uLL);
        v45[72] = vshrq_n_s16(vqaddq_s16(veorq_s8(v70, v43), v44), 4uLL);
        v45[48] = v61;
        v45[80] = vshrq_n_s16(vqaddq_s16(veorq_s8(v74, v43), v44), 4uLL);
        v42 += 16;
        v9 = (v9 + v6);
      }

      while (v42 != 128);
      goto LABEL_148;
    }

    v75 = 0;
    goto LABEL_20;
  }

  if (v5 == 16)
  {
    v75 = 16 - v4;
    if (v4 <= 0)
    {
      v76 = v6;
      v77 = v302;
      goto LABEL_22;
    }

LABEL_20:
    v76 = v6;
    v87 = v4 + 1;
    v77 = v302;
    do
    {
      v88 = v7[1];
      *v77 = *v7;
      v77[1] = v88;
      v89 = v7[3];
      v77[2] = v7[2];
      v77[3] = v89;
      v90 = v7[5];
      v77[4] = v7[4];
      v77[5] = v90;
      v91 = v7[6];
      v92 = v7[7];
      v7 = (v7 + v6);
      v77[6] = v91;
      v77[7] = v92;
      v77 += 8;
      --v87;
    }

    while (v87 > 1);
LABEL_22:
    if (v75 >= 1)
    {
      v93 = (v7 - v76);
      v94 = *v93;
      v95 = v93[2];
      v96 = v93[3];
      v97 = v93[4];
      v98 = v93[5];
      v99 = v75 + 1;
      v100 = v93[6];
      v101 = v93[7];
      do
      {
        *v77 = v94;
        v77[1] = v93[1];
        v77[2] = v95;
        v77[3] = v96;
        v77[4] = v97;
        v77[5] = v98;
        v77[6] = v100;
        v77[7] = v101;
        v77 += 8;
        --v99;
      }

      while (v99 > 1);
    }

    goto LABEL_144;
  }

  if (v5 > 15)
  {
    goto LABEL_144;
  }

  v78 = v3;
  v79 = 8 * v5;
  v80 = v5;
  if (v4 <= 0)
  {
    v86 = (result - v6);
    v85 = v302;
  }

  else
  {
    v81 = v79;
    v82 = v6;
    v83 = v4;
    v84 = v4 + 1;
    v85 = v302;
    do
    {
      result = memcpy(v85, v7, v79);
      v7 = (v7 + v82);
      v85 += 128;
      --v84;
    }

    while (v84 > 1);
    if (v83 > 15)
    {
      goto LABEL_29;
    }

    v4 = v83;
    v86 = v7 - v82;
  }

  v81 = v79;
  v102 = 17 - v4;
  do
  {
    result = memcpy(v85, v86, v81);
    v85 += 128;
    --v102;
  }

  while (v102 > 1);
LABEL_29:
  v103 = &v302[v81];
  v104 = &v302[v81 - 8];
  v105 = *&v302[v81 - 8];
  v106 = 16 - v80;
  if (16 - v80 <= 1)
  {
    v107 = 1;
  }

  else
  {
    v107 = v106;
  }

  if (v106 < 4)
  {
    LODWORD(v108) = 0;
    v3 = v78;
LABEL_37:
    v112 = v107 - v108;
    v113 = (v104 + 8);
    do
    {
      *v113++ = v105;
      --v112;
    }

    while (v112);
    goto LABEL_39;
  }

  v108 = v107 & 0x7FFFFFFC;
  v104 += 8 * v108;
  v109 = vdupq_lane_s64(v105, 0);
  v110 = &v302[v81 + 16];
  v111 = v108;
  do
  {
    v110[-1] = v109;
    *v110 = v109;
    v110 += 2;
    v111 -= 4;
  }

  while (v111);
  v3 = v78;
  if (v108 != v107)
  {
    goto LABEL_37;
  }

LABEL_39:
  v114 = v103 + 15;
  v115 = v103[15];
  if (v106 < 4)
  {
    LODWORD(v116) = 0;
LABEL_44:
    v120 = v107 - v116;
    v121 = v114 + 1;
    do
    {
      *v121++ = v115;
      --v120;
    }

    while (v120);
    goto LABEL_46;
  }

  v116 = v107 & 0x7FFFFFFC;
  v114 += v116;
  v117 = vdupq_lane_s64(v115, 0);
  v118 = &v302[v81 + 144];
  v119 = v116;
  do
  {
    v118[-1] = v117;
    *v118 = v117;
    v118 += 2;
    v119 -= 4;
  }

  while (v119);
  if (v116 != v107)
  {
    goto LABEL_44;
  }

LABEL_46:
  v122 = v103 + 31;
  v123 = v103[31];
  if (v106 < 4)
  {
    LODWORD(v124) = 0;
LABEL_51:
    v128 = v107 - v124;
    v129 = v122 + 1;
    do
    {
      *v129++ = v123;
      --v128;
    }

    while (v128);
    goto LABEL_53;
  }

  v124 = v107 & 0x7FFFFFFC;
  v122 += v124;
  v125 = vdupq_lane_s64(v123, 0);
  v126 = &v302[v81 + 272];
  v127 = v124;
  do
  {
    v126[-1] = v125;
    *v126 = v125;
    v126 += 2;
    v127 -= 4;
  }

  while (v127);
  if (v124 != v107)
  {
    goto LABEL_51;
  }

LABEL_53:
  v130 = v103 + 47;
  v131 = v103[47];
  if (v106 < 4)
  {
    LODWORD(v132) = 0;
LABEL_58:
    v136 = v107 - v132;
    v137 = v130 + 1;
    do
    {
      *v137++ = v131;
      --v136;
    }

    while (v136);
    goto LABEL_60;
  }

  v132 = v107 & 0x7FFFFFFC;
  v130 += v132;
  v133 = vdupq_lane_s64(v131, 0);
  v134 = &v302[v81 + 400];
  v135 = v132;
  do
  {
    v134[-1] = v133;
    *v134 = v133;
    v134 += 2;
    v135 -= 4;
  }

  while (v135);
  if (v132 != v107)
  {
    goto LABEL_58;
  }

LABEL_60:
  v138 = v103 + 63;
  v139 = v103[63];
  if (v106 < 4)
  {
    LODWORD(v140) = 0;
LABEL_65:
    v144 = v107 - v140;
    v145 = v138 + 1;
    do
    {
      *v145++ = v139;
      --v144;
    }

    while (v144);
    goto LABEL_67;
  }

  v140 = v107 & 0x7FFFFFFC;
  v138 += v140;
  v141 = vdupq_lane_s64(v139, 0);
  v142 = &v302[v81 + 528];
  v143 = v140;
  do
  {
    v142[-1] = v141;
    *v142 = v141;
    v142 += 2;
    v143 -= 4;
  }

  while (v143);
  if (v140 != v107)
  {
    goto LABEL_65;
  }

LABEL_67:
  v146 = v103 + 79;
  v147 = v103[79];
  if (v106 < 4)
  {
    LODWORD(v148) = 0;
LABEL_72:
    v152 = v107 - v148;
    v153 = v146 + 1;
    do
    {
      *v153++ = v147;
      --v152;
    }

    while (v152);
    goto LABEL_74;
  }

  v148 = v107 & 0x7FFFFFFC;
  v146 += v148;
  v149 = vdupq_lane_s64(v147, 0);
  v150 = &v302[v81 + 656];
  v151 = v148;
  do
  {
    v150[-1] = v149;
    *v150 = v149;
    v150 += 2;
    v151 -= 4;
  }

  while (v151);
  if (v148 != v107)
  {
    goto LABEL_72;
  }

LABEL_74:
  v154 = v103 + 95;
  v155 = v103[95];
  if (v106 < 4)
  {
    LODWORD(v156) = 0;
LABEL_79:
    v160 = v107 - v156;
    v161 = v154 + 1;
    do
    {
      *v161++ = v155;
      --v160;
    }

    while (v160);
    goto LABEL_81;
  }

  v156 = v107 & 0x7FFFFFFC;
  v154 += v156;
  v157 = vdupq_lane_s64(v155, 0);
  v158 = &v302[v81 + 784];
  v159 = v156;
  do
  {
    v158[-1] = v157;
    *v158 = v157;
    v158 += 2;
    v159 -= 4;
  }

  while (v159);
  if (v156 != v107)
  {
    goto LABEL_79;
  }

LABEL_81:
  v162 = v103 + 111;
  v163 = v103[111];
  if (v106 < 4)
  {
    LODWORD(v164) = 0;
LABEL_86:
    v168 = v107 - v164;
    v169 = v162 + 1;
    do
    {
      *v169++ = v163;
      --v168;
    }

    while (v168);
    goto LABEL_88;
  }

  v164 = v107 & 0x7FFFFFFC;
  v162 += v164;
  v165 = vdupq_lane_s64(v163, 0);
  v166 = &v302[v81 + 912];
  v167 = v164;
  do
  {
    v166[-1] = v165;
    *v166 = v165;
    v166 += 2;
    v167 -= 4;
  }

  while (v167);
  if (v164 != v107)
  {
    goto LABEL_86;
  }

LABEL_88:
  v170 = v103 + 127;
  v171 = v103[127];
  if (v106 < 4)
  {
    LODWORD(v172) = 0;
LABEL_93:
    v176 = v107 - v172;
    v177 = v170 + 1;
    do
    {
      *v177++ = v171;
      --v176;
    }

    while (v176);
    goto LABEL_95;
  }

  v172 = v107 & 0x7FFFFFFC;
  v170 += v172;
  v173 = vdupq_lane_s64(v171, 0);
  v174 = &v302[v81 + 1040];
  v175 = v172;
  do
  {
    v174[-1] = v173;
    *v174 = v173;
    v174 += 2;
    v175 -= 4;
  }

  while (v175);
  if (v172 != v107)
  {
    goto LABEL_93;
  }

LABEL_95:
  v178 = v103 + 143;
  v179 = v103[143];
  if (v106 < 4)
  {
    LODWORD(v180) = 0;
LABEL_100:
    v184 = v107 - v180;
    v185 = v178 + 1;
    do
    {
      *v185++ = v179;
      --v184;
    }

    while (v184);
    goto LABEL_102;
  }

  v180 = v107 & 0x7FFFFFFC;
  v178 += v180;
  v181 = vdupq_lane_s64(v179, 0);
  v182 = &v302[v81 + 1168];
  v183 = v180;
  do
  {
    v182[-1] = v181;
    *v182 = v181;
    v182 += 2;
    v183 -= 4;
  }

  while (v183);
  if (v180 != v107)
  {
    goto LABEL_100;
  }

LABEL_102:
  v186 = v103 + 159;
  v187 = v103[159];
  if (v106 < 4)
  {
    LODWORD(v188) = 0;
LABEL_107:
    v192 = v107 - v188;
    v193 = v186 + 1;
    do
    {
      *v193++ = v187;
      --v192;
    }

    while (v192);
    goto LABEL_109;
  }

  v188 = v107 & 0x7FFFFFFC;
  v186 += v188;
  v189 = vdupq_lane_s64(v187, 0);
  v190 = &v302[v81 + 1296];
  v191 = v188;
  do
  {
    v190[-1] = v189;
    *v190 = v189;
    v190 += 2;
    v191 -= 4;
  }

  while (v191);
  if (v188 != v107)
  {
    goto LABEL_107;
  }

LABEL_109:
  v194 = v103 + 175;
  v195 = v103[175];
  if (v106 < 4)
  {
    LODWORD(v196) = 0;
LABEL_114:
    v200 = v107 - v196;
    v201 = v194 + 1;
    do
    {
      *v201++ = v195;
      --v200;
    }

    while (v200);
    goto LABEL_116;
  }

  v196 = v107 & 0x7FFFFFFC;
  v194 += v196;
  v197 = vdupq_lane_s64(v195, 0);
  v198 = &v302[v81 + 1424];
  v199 = v196;
  do
  {
    v198[-1] = v197;
    *v198 = v197;
    v198 += 2;
    v199 -= 4;
  }

  while (v199);
  if (v196 != v107)
  {
    goto LABEL_114;
  }

LABEL_116:
  v202 = v103 + 191;
  v203 = v103[191];
  if (v106 < 4)
  {
    LODWORD(v204) = 0;
LABEL_121:
    v208 = v107 - v204;
    v209 = v202 + 1;
    do
    {
      *v209++ = v203;
      --v208;
    }

    while (v208);
    goto LABEL_123;
  }

  v204 = v107 & 0x7FFFFFFC;
  v202 += v204;
  v205 = vdupq_lane_s64(v203, 0);
  v206 = &v302[v81 + 1552];
  v207 = v204;
  do
  {
    v206[-1] = v205;
    *v206 = v205;
    v206 += 2;
    v207 -= 4;
  }

  while (v207);
  if (v204 != v107)
  {
    goto LABEL_121;
  }

LABEL_123:
  v210 = v103 + 207;
  v211 = v103[207];
  if (v106 < 4)
  {
    LODWORD(v212) = 0;
LABEL_128:
    v216 = v107 - v212;
    v217 = v210 + 1;
    do
    {
      *v217++ = v211;
      --v216;
    }

    while (v216);
    goto LABEL_130;
  }

  v212 = v107 & 0x7FFFFFFC;
  v210 += v212;
  v213 = vdupq_lane_s64(v211, 0);
  v214 = &v302[v81 + 1680];
  v215 = v212;
  do
  {
    v214[-1] = v213;
    *v214 = v213;
    v214 += 2;
    v215 -= 4;
  }

  while (v215);
  if (v212 != v107)
  {
    goto LABEL_128;
  }

LABEL_130:
  v218 = v103 + 223;
  v219 = v103[223];
  if (v106 >= 4)
  {
    v220 = v107 & 0x7FFFFFFC;
    v218 += v220;
    v221 = vdupq_lane_s64(v219, 0);
    v222 = &v302[v81 + 1808];
    v223 = v220;
    do
    {
      v222[-1] = v221;
      *v222 = v221;
      v222 += 2;
      v223 -= 4;
    }

    while (v223);
    if (v220 == v107)
    {
      goto LABEL_137;
    }
  }

  else
  {
    LODWORD(v220) = 0;
  }

  v224 = v107 - v220;
  v225 = v218 + 1;
  do
  {
    *v225++ = v219;
    --v224;
  }

  while (v224);
LABEL_137:
  v226 = v103 + 239;
  v227 = v103[239];
  if (v106 >= 4)
  {
    v228 = v107 & 0x7FFFFFFC;
    v226 += v228;
    v229 = vdupq_lane_s64(v227, 0);
    v230 = &v302[v81 + 1936];
    v231 = v228;
    do
    {
      v230[-1] = v229;
      *v230 = v229;
      v230 += 2;
      v231 -= 4;
    }

    while (v231);
    if (v228 == v107)
    {
      goto LABEL_144;
    }
  }

  else
  {
    LODWORD(v228) = 0;
  }

  v232 = v107 - v228;
  v233 = v226 + 1;
  do
  {
    *v233++ = v227;
    --v232;
  }

  while (v232);
LABEL_144:
  v234 = 0;
  v235 = v302;
  v236.i64[0] = 0x8000800080008000;
  v236.i64[1] = 0x8000800080008000;
  v237.i64[0] = 0x8000800080008;
  v237.i64[1] = 0x8000800080008;
  do
  {
    v238 = (v3 + v234);
    v239 = v235[1];
    v240 = v235[2];
    v241 = v235[3];
    v242 = vzip1q_s16(*v235, v239);
    v243 = vzip2q_s16(*v235, v239);
    v244 = vzip1q_s16(v240, v241);
    v245 = vzip2q_s16(v240, v241);
    v246 = vzip1q_s16(v242, v243);
    v247 = vzip2q_s16(v242, v243);
    v248 = vzip1q_s16(v244, v245);
    v249 = vzip2q_s16(v244, v245);
    v250 = vzip2q_s64(v246, v248);
    v251 = vzip2q_s64(v247, v249);
    v247.i64[1] = v249.i64[0];
    v252 = vshrq_n_s16(vqaddq_s16(veorq_s8(v250, v236), v237), 4uLL);
    v253 = vshrq_n_s16(vqaddq_s16(veorq_s8(v251, v236), v237), 4uLL);
    v254 = v235[4];
    v255 = v235[5];
    v256 = v235[6];
    v257 = v235[7];
    v258 = vzip1q_s16(v254, v255);
    v259 = vzip2q_s16(v254, v255);
    v260 = vzip1q_s16(v256, v257);
    v261 = vzip2q_s16(v256, v257);
    v262 = vzip1q_s16(v258, v259);
    v263 = vzip2q_s16(v258, v259);
    v264 = vzip1q_s16(v260, v261);
    v265 = vzip2q_s16(v260, v261);
    v266 = vzip2q_s64(v262, v264);
    v267 = vzip2q_s64(v263, v265);
    v263.i64[1] = v265.i64[0];
    *v238 = v252;
    v238[8] = vshrq_n_s16(vqaddq_s16(veorq_s8(v266, v236), v237), 4uLL);
    v235 += 8;
    v238[32] = vshrq_n_s16(vqaddq_s16(veorq_s8(v247, v236), v237), 4uLL);
    v238[64] = vshrq_n_s16(vqaddq_s16(veorq_s8(v263, v236), v237), 4uLL);
    v238[40] = v253;
    v238[72] = vshrq_n_s16(vqaddq_s16(veorq_s8(v267, v236), v237), 4uLL);
    v234 += 16;
  }

  while (v234 != 128);
  v268 = 0;
  v269.i64[0] = 0x8000800080008000;
  v269.i64[1] = 0x8000800080008000;
  v270.i64[0] = 0x8000800080008;
  v270.i64[1] = 0x8000800080008;
  do
  {
    v271 = (v3 + v268 + v234);
    v272 = v235[1];
    v273 = v235[2];
    v274 = v235[3];
    v275 = vzip1q_s16(*v235, v272);
    v276 = vzip2q_s16(*v235, v272);
    v277 = vzip1q_s16(v273, v274);
    v278 = vzip2q_s16(v273, v274);
    v279 = vzip1q_s16(v275, v276);
    v280 = vzip2q_s16(v275, v276);
    v281 = vzip1q_s16(v277, v278);
    v282 = vzip2q_s16(v277, v278);
    v283 = vzip2q_s64(v279, v281);
    v284 = vzip2q_s64(v280, v282);
    v280.i64[1] = v282.i64[0];
    v285 = vshrq_n_s16(vqaddq_s16(veorq_s8(v283, v269), v270), 4uLL);
    v286 = vshrq_n_s16(vqaddq_s16(veorq_s8(v284, v269), v270), 4uLL);
    v287 = v235[4];
    v288 = v235[5];
    v289 = v235[6];
    v290 = v235[7];
    v291 = vzip1q_s16(v287, v288);
    v292 = vzip2q_s16(v287, v288);
    v293 = vzip1q_s16(v289, v290);
    v294 = vzip2q_s16(v289, v290);
    v295 = vzip1q_s16(v291, v292);
    v296 = vzip2q_s16(v291, v292);
    v297 = vzip1q_s16(v293, v294);
    v298 = vzip2q_s16(v293, v294);
    v299 = vzip2q_s64(v295, v297);
    v300 = vzip2q_s64(v296, v298);
    v296.i64[1] = v298.i64[0];
    v271[8] = v285;
    v271[16] = vshrq_n_s16(vqaddq_s16(veorq_s8(v299, v269), v270), 4uLL);
    v271[40] = vshrq_n_s16(vqaddq_s16(veorq_s8(v280, v269), v270), 4uLL);
    v271[72] = vshrq_n_s16(vqaddq_s16(veorq_s8(v296, v269), v270), 4uLL);
    v271[48] = v286;
    v271[80] = vshrq_n_s16(vqaddq_s16(veorq_s8(v300, v269), v270), 4uLL);
    v268 += 16;
    v235 += 8;
  }

  while (v268 != 128);
LABEL_148:
  v301 = *MEMORY[0x29EDCA608];
  return result;
}

int32x4_t *pixInGeneric<(PixelFormat)1916036716,(ChromaFormat)3>(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x2A1C7C4A8](a1, a2);
  v7 = v3;
  v8 = v2;
  v183 = *MEMORY[0x29EDCA608];
  if (v4 != 16 || v5 != 16)
  {
    if (v5 == 16)
    {
      v11 = 16 - v4;
      if (v4 <= 0)
      {
        v12 = v6;
        v13 = v182;
        goto LABEL_20;
      }

LABEL_18:
      v12 = v6;
      v22 = v4 + 1;
      v13 = v182;
      do
      {
        v23 = v8[1];
        *v13 = *v8;
        v13[1] = v23;
        v24 = v8[3];
        v13[2] = v8[2];
        v13[3] = v24;
        v25 = v8[5];
        v13[4] = v8[4];
        v13[5] = v25;
        v26 = v8[7];
        v13[6] = v8[6];
        v13[7] = v26;
        v27 = v8[9];
        v13[8] = v8[8];
        v13[9] = v27;
        v28 = v8[11];
        v13[10] = v8[10];
        v13[11] = v28;
        v29 = v8[13];
        v13[12] = v8[12];
        v13[13] = v29;
        v30 = v8[14];
        v31 = v8[15];
        v8 = (v8 + v6);
        v13[14] = v30;
        v13[15] = v31;
        v13 += 16;
        --v22;
      }

      while (v22 > 1);
LABEL_20:
      if (v11 >= 1)
      {
        v32 = (v8 - v12);
        v33 = *v32;
        v34 = v32[2];
        v35 = v32[3];
        v36 = v32[4];
        v37 = v32[5];
        v38 = v32[6];
        v39 = v32[7];
        v40 = v32[8];
        v41 = v32[9];
        v42 = v32[10];
        v43 = v32[11];
        v44 = v32[12];
        v45 = v32[13];
        v46 = v11 + 1;
        v47 = v32[14];
        v48 = v32[15];
        do
        {
          *v13 = v33;
          v13[1] = v32[1];
          v13[2] = v34;
          v13[3] = v35;
          v13[4] = v36;
          v13[5] = v37;
          v13[6] = v38;
          v13[7] = v39;
          v13[8] = v40;
          v13[9] = v41;
          v13[10] = v42;
          v13[11] = v43;
          v13[12] = v44;
          v13[13] = v45;
          v13[14] = v47;
          v13[15] = v48;
          v13 += 16;
          --v46;
        }

        while (v46 > 1);
      }

      goto LABEL_142;
    }

    if (v5 > 15)
    {
      goto LABEL_142;
    }

    v14 = 16 * v5;
    v15 = v5;
    if (v4 <= 0)
    {
      v21 = &v2->i8[-v6];
      v20 = v182;
    }

    else
    {
      v16 = v14;
      v17 = v6;
      v18 = v4;
      v19 = v4 + 1;
      v20 = v182;
      do
      {
        memcpy(v20, v8, v14);
        v8 = (v8 + v17);
        v20 += 16;
        --v19;
      }

      while (v19 > 1);
      if (v18 > 15)
      {
        goto LABEL_27;
      }

      v4 = v18;
      v21 = &v8->i8[-v17];
    }

    v16 = v14;
    v49 = 17 - v4;
    do
    {
      memcpy(v20, v21, v16);
      v20 += 16;
      --v49;
    }

    while (v49 > 1);
LABEL_27:
    v50 = &v182[0].i8[v16];
    v51 = &v182[-1].i8[v16];
    v52 = *(&v182[-1] + v16);
    v53 = 16 - v15;
    if (16 - v15 <= 1)
    {
      v54 = 1;
    }

    else
    {
      v54 = v53;
    }

    if (v53 >= 4)
    {
      v55 = v54 & 0x7FFFFFFC;
      v51 += 16 * v55;
      *&v56 = *(v182[-1].i64 + v16);
      *(&v56 + 1) = vdupq_laneq_s64(v52, 1).u64[0];
      v57 = &v182[2].i8[v16];
      v58 = v55;
      do
      {
        *(v57 - 2) = v56;
        *(v57 - 1) = v56;
        *v57 = v56;
        *(v57 + 1) = v56;
        v57 += 64;
        v58 -= 4;
      }

      while (v58);
      if (v55 == v54)
      {
LABEL_37:
        v61 = (v50 + 240);
        v62 = *(v50 + 15);
        if (v53 >= 4)
        {
          v63 = v54 & 0x7FFFFFFC;
          v61 += v63;
          *&v64 = *(v50 + 30);
          *(&v64 + 1) = vdupq_laneq_s64(v62, 1).u64[0];
          v65 = v50 + 288;
          v66 = v63;
          do
          {
            *(v65 - 2) = v64;
            *(v65 - 1) = v64;
            *v65 = v64;
            v65[1] = v64;
            v65 += 4;
            v66 -= 4;
          }

          while (v66);
          if (v63 == v54)
          {
LABEL_44:
            v69 = (v50 + 496);
            v70 = *(v50 + 31);
            if (v53 >= 4)
            {
              v71 = v54 & 0x7FFFFFFC;
              v69 += v71;
              *&v72 = *(v50 + 62);
              *(&v72 + 1) = vdupq_laneq_s64(v70, 1).u64[0];
              v73 = v50 + 544;
              v74 = v71;
              do
              {
                *(v73 - 2) = v72;
                *(v73 - 1) = v72;
                *v73 = v72;
                v73[1] = v72;
                v73 += 4;
                v74 -= 4;
              }

              while (v74);
              if (v71 == v54)
              {
LABEL_51:
                v77 = (v50 + 752);
                v78 = *(v50 + 47);
                if (v53 >= 4)
                {
                  v79 = v54 & 0x7FFFFFFC;
                  v77 += v79;
                  *&v80 = *(v50 + 94);
                  *(&v80 + 1) = vdupq_laneq_s64(v78, 1).u64[0];
                  v81 = v50 + 800;
                  v82 = v79;
                  do
                  {
                    *(v81 - 2) = v80;
                    *(v81 - 1) = v80;
                    *v81 = v80;
                    v81[1] = v80;
                    v81 += 4;
                    v82 -= 4;
                  }

                  while (v82);
                  if (v79 == v54)
                  {
LABEL_58:
                    v85 = (v50 + 1008);
                    v86 = *(v50 + 63);
                    if (v53 >= 4)
                    {
                      v87 = v54 & 0x7FFFFFFC;
                      v85 += v87;
                      *&v88 = *(v50 + 126);
                      *(&v88 + 1) = vdupq_laneq_s64(v86, 1).u64[0];
                      v89 = v50 + 1056;
                      v90 = v87;
                      do
                      {
                        *(v89 - 2) = v88;
                        *(v89 - 1) = v88;
                        *v89 = v88;
                        v89[1] = v88;
                        v89 += 4;
                        v90 -= 4;
                      }

                      while (v90);
                      if (v87 == v54)
                      {
LABEL_65:
                        v93 = (v50 + 1264);
                        v94 = *(v50 + 79);
                        if (v53 >= 4)
                        {
                          v95 = v54 & 0x7FFFFFFC;
                          v93 += v95;
                          *&v96 = *(v50 + 158);
                          *(&v96 + 1) = vdupq_laneq_s64(v94, 1).u64[0];
                          v97 = v50 + 1312;
                          v98 = v95;
                          do
                          {
                            *(v97 - 2) = v96;
                            *(v97 - 1) = v96;
                            *v97 = v96;
                            v97[1] = v96;
                            v97 += 4;
                            v98 -= 4;
                          }

                          while (v98);
                          if (v95 == v54)
                          {
LABEL_72:
                            v101 = (v50 + 1520);
                            v102 = *(v50 + 95);
                            if (v53 >= 4)
                            {
                              v103 = v54 & 0x7FFFFFFC;
                              v101 += v103;
                              *&v104 = *(v50 + 190);
                              *(&v104 + 1) = vdupq_laneq_s64(v102, 1).u64[0];
                              v105 = v50 + 1568;
                              v106 = v103;
                              do
                              {
                                *(v105 - 2) = v104;
                                *(v105 - 1) = v104;
                                *v105 = v104;
                                v105[1] = v104;
                                v105 += 4;
                                v106 -= 4;
                              }

                              while (v106);
                              if (v103 == v54)
                              {
LABEL_79:
                                v109 = (v50 + 1776);
                                v110 = *(v50 + 111);
                                if (v53 >= 4)
                                {
                                  v111 = v54 & 0x7FFFFFFC;
                                  v109 += v111;
                                  *&v112 = *(v50 + 222);
                                  *(&v112 + 1) = vdupq_laneq_s64(v110, 1).u64[0];
                                  v113 = v50 + 1824;
                                  v114 = v111;
                                  do
                                  {
                                    *(v113 - 2) = v112;
                                    *(v113 - 1) = v112;
                                    *v113 = v112;
                                    v113[1] = v112;
                                    v113 += 4;
                                    v114 -= 4;
                                  }

                                  while (v114);
                                  if (v111 == v54)
                                  {
LABEL_86:
                                    v117 = (v50 + 2032);
                                    v118 = *(v50 + 127);
                                    if (v53 >= 4)
                                    {
                                      v119 = v54 & 0x7FFFFFFC;
                                      v117 += v119;
                                      *&v120 = *(v50 + 254);
                                      *(&v120 + 1) = vdupq_laneq_s64(v118, 1).u64[0];
                                      v121 = v50 + 2080;
                                      v122 = v119;
                                      do
                                      {
                                        *(v121 - 2) = v120;
                                        *(v121 - 1) = v120;
                                        *v121 = v120;
                                        v121[1] = v120;
                                        v121 += 4;
                                        v122 -= 4;
                                      }

                                      while (v122);
                                      if (v119 == v54)
                                      {
LABEL_93:
                                        v125 = (v50 + 2288);
                                        v126 = *(v50 + 143);
                                        if (v53 >= 4)
                                        {
                                          v127 = v54 & 0x7FFFFFFC;
                                          v125 += v127;
                                          *&v128 = *(v50 + 286);
                                          *(&v128 + 1) = vdupq_laneq_s64(v126, 1).u64[0];
                                          v129 = v50 + 2336;
                                          v130 = v127;
                                          do
                                          {
                                            *(v129 - 2) = v128;
                                            *(v129 - 1) = v128;
                                            *v129 = v128;
                                            v129[1] = v128;
                                            v129 += 4;
                                            v130 -= 4;
                                          }

                                          while (v130);
                                          if (v127 == v54)
                                          {
LABEL_100:
                                            v133 = (v50 + 2544);
                                            v134 = *(v50 + 159);
                                            if (v53 >= 4)
                                            {
                                              v135 = v54 & 0x7FFFFFFC;
                                              v133 += v135;
                                              *&v136 = *(v50 + 318);
                                              *(&v136 + 1) = vdupq_laneq_s64(v134, 1).u64[0];
                                              v137 = v50 + 2592;
                                              v138 = v135;
                                              do
                                              {
                                                *(v137 - 2) = v136;
                                                *(v137 - 1) = v136;
                                                *v137 = v136;
                                                v137[1] = v136;
                                                v137 += 4;
                                                v138 -= 4;
                                              }

                                              while (v138);
                                              if (v135 == v54)
                                              {
LABEL_107:
                                                v141 = (v50 + 2800);
                                                v142 = *(v50 + 175);
                                                if (v53 >= 4)
                                                {
                                                  v143 = v54 & 0x7FFFFFFC;
                                                  v141 += v143;
                                                  *&v144 = *(v50 + 350);
                                                  *(&v144 + 1) = vdupq_laneq_s64(v142, 1).u64[0];
                                                  v145 = v50 + 2848;
                                                  v146 = v143;
                                                  do
                                                  {
                                                    *(v145 - 2) = v144;
                                                    *(v145 - 1) = v144;
                                                    *v145 = v144;
                                                    v145[1] = v144;
                                                    v145 += 4;
                                                    v146 -= 4;
                                                  }

                                                  while (v146);
                                                  if (v143 == v54)
                                                  {
LABEL_114:
                                                    v149 = (v50 + 3056);
                                                    v150 = *(v50 + 191);
                                                    if (v53 >= 4)
                                                    {
                                                      v151 = v54 & 0x7FFFFFFC;
                                                      v149 += v151;
                                                      *&v152 = *(v50 + 382);
                                                      *(&v152 + 1) = vdupq_laneq_s64(v150, 1).u64[0];
                                                      v153 = v50 + 3104;
                                                      v154 = v151;
                                                      do
                                                      {
                                                        *(v153 - 2) = v152;
                                                        *(v153 - 1) = v152;
                                                        *v153 = v152;
                                                        v153[1] = v152;
                                                        v153 += 4;
                                                        v154 -= 4;
                                                      }

                                                      while (v154);
                                                      if (v151 == v54)
                                                      {
LABEL_121:
                                                        v157 = (v50 + 3312);
                                                        v158 = *(v50 + 207);
                                                        if (v53 >= 4)
                                                        {
                                                          v159 = v54 & 0x7FFFFFFC;
                                                          v157 += v159;
                                                          *&v160 = *(v50 + 414);
                                                          *(&v160 + 1) = vdupq_laneq_s64(v158, 1).u64[0];
                                                          v161 = v50 + 3360;
                                                          v162 = v159;
                                                          do
                                                          {
                                                            *(v161 - 2) = v160;
                                                            *(v161 - 1) = v160;
                                                            *v161 = v160;
                                                            v161[1] = v160;
                                                            v161 += 4;
                                                            v162 -= 4;
                                                          }

                                                          while (v162);
                                                          if (v159 == v54)
                                                          {
LABEL_128:
                                                            v165 = (v50 + 3568);
                                                            v166 = *(v50 + 223);
                                                            if (v53 >= 4)
                                                            {
                                                              v167 = v54 & 0x7FFFFFFC;
                                                              v165 += v167;
                                                              *&v168 = *(v50 + 446);
                                                              *(&v168 + 1) = vdupq_laneq_s64(v166, 1).u64[0];
                                                              v169 = v50 + 3616;
                                                              v170 = v167;
                                                              do
                                                              {
                                                                *(v169 - 2) = v168;
                                                                *(v169 - 1) = v168;
                                                                *v169 = v168;
                                                                v169[1] = v168;
                                                                v169 += 4;
                                                                v170 -= 4;
                                                              }

                                                              while (v170);
                                                              if (v167 == v54)
                                                              {
                                                                goto LABEL_135;
                                                              }
                                                            }

                                                            else
                                                            {
                                                              LODWORD(v167) = 0;
                                                            }

                                                            v171 = v54 - v167;
                                                            v172 = v165 + 1;
                                                            do
                                                            {
                                                              *v172++ = v166;
                                                              --v171;
                                                            }

                                                            while (v171);
LABEL_135:
                                                            v173 = (v50 + 3824);
                                                            v174 = *(v50 + 239);
                                                            if (v53 >= 4)
                                                            {
                                                              v175 = v54 & 0x7FFFFFFC;
                                                              v173 += v175;
                                                              *&v176 = *(v50 + 478);
                                                              *(&v176 + 1) = vdupq_laneq_s64(v174, 1).u64[0];
                                                              v177 = v50 + 3872;
                                                              v178 = v175;
                                                              do
                                                              {
                                                                *(v177 - 2) = v176;
                                                                *(v177 - 1) = v176;
                                                                *v177 = v176;
                                                                v177[1] = v176;
                                                                v177 += 4;
                                                                v178 -= 4;
                                                              }

                                                              while (v178);
                                                              if (v175 == v54)
                                                              {
                                                                goto LABEL_142;
                                                              }
                                                            }

                                                            else
                                                            {
                                                              LODWORD(v175) = 0;
                                                            }

                                                            v179 = v54 - v175;
                                                            v180 = v173 + 1;
                                                            do
                                                            {
                                                              *v180++ = v174;
                                                              --v179;
                                                            }

                                                            while (v179);
LABEL_142:
                                                            result = pixInFullMB<(PixelFormat)1916036716,(ChromaFormat)3>(v182, 256, v7);
                                                            v181 = *MEMORY[0x29EDCA608];
                                                            return result;
                                                          }
                                                        }

                                                        else
                                                        {
                                                          LODWORD(v159) = 0;
                                                        }

                                                        v163 = v54 - v159;
                                                        v164 = v157 + 1;
                                                        do
                                                        {
                                                          *v164++ = v158;
                                                          --v163;
                                                        }

                                                        while (v163);
                                                        goto LABEL_128;
                                                      }
                                                    }

                                                    else
                                                    {
                                                      LODWORD(v151) = 0;
                                                    }

                                                    v155 = v54 - v151;
                                                    v156 = v149 + 1;
                                                    do
                                                    {
                                                      *v156++ = v150;
                                                      --v155;
                                                    }

                                                    while (v155);
                                                    goto LABEL_121;
                                                  }
                                                }

                                                else
                                                {
                                                  LODWORD(v143) = 0;
                                                }

                                                v147 = v54 - v143;
                                                v148 = v141 + 1;
                                                do
                                                {
                                                  *v148++ = v142;
                                                  --v147;
                                                }

                                                while (v147);
                                                goto LABEL_114;
                                              }
                                            }

                                            else
                                            {
                                              LODWORD(v135) = 0;
                                            }

                                            v139 = v54 - v135;
                                            v140 = v133 + 1;
                                            do
                                            {
                                              *v140++ = v134;
                                              --v139;
                                            }

                                            while (v139);
                                            goto LABEL_107;
                                          }
                                        }

                                        else
                                        {
                                          LODWORD(v127) = 0;
                                        }

                                        v131 = v54 - v127;
                                        v132 = v125 + 1;
                                        do
                                        {
                                          *v132++ = v126;
                                          --v131;
                                        }

                                        while (v131);
                                        goto LABEL_100;
                                      }
                                    }

                                    else
                                    {
                                      LODWORD(v119) = 0;
                                    }

                                    v123 = v54 - v119;
                                    v124 = v117 + 1;
                                    do
                                    {
                                      *v124++ = v118;
                                      --v123;
                                    }

                                    while (v123);
                                    goto LABEL_93;
                                  }
                                }

                                else
                                {
                                  LODWORD(v111) = 0;
                                }

                                v115 = v54 - v111;
                                v116 = v109 + 1;
                                do
                                {
                                  *v116++ = v110;
                                  --v115;
                                }

                                while (v115);
                                goto LABEL_86;
                              }
                            }

                            else
                            {
                              LODWORD(v103) = 0;
                            }

                            v107 = v54 - v103;
                            v108 = v101 + 1;
                            do
                            {
                              *v108++ = v102;
                              --v107;
                            }

                            while (v107);
                            goto LABEL_79;
                          }
                        }

                        else
                        {
                          LODWORD(v95) = 0;
                        }

                        v99 = v54 - v95;
                        v100 = v93 + 1;
                        do
                        {
                          *v100++ = v94;
                          --v99;
                        }

                        while (v99);
                        goto LABEL_72;
                      }
                    }

                    else
                    {
                      LODWORD(v87) = 0;
                    }

                    v91 = v54 - v87;
                    v92 = v85 + 1;
                    do
                    {
                      *v92++ = v86;
                      --v91;
                    }

                    while (v91);
                    goto LABEL_65;
                  }
                }

                else
                {
                  LODWORD(v79) = 0;
                }

                v83 = v54 - v79;
                v84 = v77 + 1;
                do
                {
                  *v84++ = v78;
                  --v83;
                }

                while (v83);
                goto LABEL_58;
              }
            }

            else
            {
              LODWORD(v71) = 0;
            }

            v75 = v54 - v71;
            v76 = v69 + 1;
            do
            {
              *v76++ = v70;
              --v75;
            }

            while (v75);
            goto LABEL_51;
          }
        }

        else
        {
          LODWORD(v63) = 0;
        }

        v67 = v54 - v63;
        v68 = v61 + 1;
        do
        {
          *v68++ = v62;
          --v67;
        }

        while (v67);
        goto LABEL_44;
      }
    }

    else
    {
      LODWORD(v55) = 0;
    }

    v59 = v54 - v55;
    v60 = (v51 + 16);
    do
    {
      *v60++ = v52;
      --v59;
    }

    while (v59);
    goto LABEL_37;
  }

  if ((v2 & 0xF) != 0 || (v6 & 0xF) != 0)
  {
    v11 = 0;
    goto LABEL_18;
  }

  v9 = *MEMORY[0x29EDCA608];

  return pixInFullMB<(PixelFormat)1916036716,(ChromaFormat)3>(v2, v6, v3);
}

uint32x4_t *pixInGeneric<(PixelFormat)32,(ChromaFormat)3>(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x2A1C7C4A8](a1, a2);
  v8 = v3;
  v9 = v2;
  v166 = *MEMORY[0x29EDCA608];
  if (v4 != 16 || v5 != 16)
  {
    if (v5 == 16)
    {
      v12 = 16 - v4;
      if (v4 <= 0)
      {
        v13 = v6;
        v14 = v165;
        goto LABEL_20;
      }

LABEL_18:
      v13 = v6;
      v24 = v4 + 1;
      v14 = v165;
      do
      {
        v25 = v9[1];
        *v14 = *v9;
        v14[1] = v25;
        v26 = v9[3];
        v14[2] = v9[2];
        v14[3] = v26;
        v9 = (v9 + v6);
        v14 += 4;
        --v24;
      }

      while (v24 > 1);
LABEL_20:
      if (v12 >= 1)
      {
        v27 = (v9 - v13);
        v28 = *v27;
        v29 = v27[2];
        v30 = v27[3];
        v31 = v12 + 1;
        do
        {
          *v14 = v28;
          v14[1] = v27[1];
          v14[2] = v29;
          v14[3] = v30;
          v14 += 4;
          --v31;
        }

        while (v31 > 1);
      }

      goto LABEL_142;
    }

    if (v5 > 15)
    {
      goto LABEL_142;
    }

    v15 = v7;
    v16 = 4 * v5;
    v17 = v5;
    if (v4 <= 0)
    {
      v23 = &v2->i8[-v6];
      v22 = v165;
    }

    else
    {
      v18 = v16;
      v19 = v6;
      v20 = v4;
      v21 = v4 + 1;
      v22 = v165;
      do
      {
        memcpy(v22, v9, v16);
        v9 = (v9 + v19);
        v22 += 4;
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
    v32 = 17 - v4;
    do
    {
      memcpy(v22, v23, v18);
      v22 += 4;
      --v32;
    }

    while (v32 > 1);
LABEL_27:
    v33 = (v165[0].i32 + v18);
    v35 = &v165[-1].i8[v18 + 12];
    v34 = *(&v165[0].u32[-1] + v18);
    v36 = 16 - v17;
    if (16 - v17 <= 1)
    {
      v37 = 1;
    }

    else
    {
      v37 = v36;
    }

    if (v36 >= 8)
    {
      v38 = v37 & 0x7FFFFFF8;
      v35 += 4 * v38;
      v39 = vdupq_n_s32(v34);
      v40 = &v165[1].i8[v18];
      v41 = v38;
      do
      {
        v40[-1] = v39;
        *v40 = v39;
        v40 += 2;
        v41 -= 8;
      }

      while (v41);
      v7 = v15;
      if (v38 == v37)
      {
LABEL_37:
        v45 = v33 + 15;
        v44 = v33[15];
        if (v36 >= 8)
        {
          v46 = v37 & 0x7FFFFFF8;
          v45 += v46;
          v47 = vdupq_n_s32(v44);
          v48 = &v165[5].i8[v18];
          v49 = v46;
          do
          {
            v48[-1] = v47;
            *v48 = v47;
            v48 += 2;
            v49 -= 8;
          }

          while (v49);
          if (v46 == v37)
          {
LABEL_44:
            v53 = v33 + 31;
            v52 = v33[31];
            if (v36 >= 8)
            {
              v54 = v37 & 0x7FFFFFF8;
              v53 += v54;
              v55 = vdupq_n_s32(v52);
              v56 = &v165[9].i8[v18];
              v57 = v54;
              do
              {
                v56[-1] = v55;
                *v56 = v55;
                v56 += 2;
                v57 -= 8;
              }

              while (v57);
              if (v54 == v37)
              {
LABEL_51:
                v61 = v33 + 47;
                v60 = v33[47];
                if (v36 >= 8)
                {
                  v62 = v37 & 0x7FFFFFF8;
                  v61 += v62;
                  v63 = vdupq_n_s32(v60);
                  v64 = &v165[13].i8[v18];
                  v65 = v62;
                  do
                  {
                    v64[-1] = v63;
                    *v64 = v63;
                    v64 += 2;
                    v65 -= 8;
                  }

                  while (v65);
                  if (v62 == v37)
                  {
LABEL_58:
                    v69 = v33 + 63;
                    v68 = v33[63];
                    if (v36 >= 8)
                    {
                      v70 = v37 & 0x7FFFFFF8;
                      v69 += v70;
                      v71 = vdupq_n_s32(v68);
                      v72 = &v165[17].i8[v18];
                      v73 = v70;
                      do
                      {
                        v72[-1] = v71;
                        *v72 = v71;
                        v72 += 2;
                        v73 -= 8;
                      }

                      while (v73);
                      if (v70 == v37)
                      {
LABEL_65:
                        v76 = v33 + 79;
                        v77 = v33[79];
                        if (v36 >= 8)
                        {
                          v78 = v37 & 0x7FFFFFF8;
                          v76 += v78;
                          v79 = vdupq_n_s32(v77);
                          v80 = &v165[21].i8[v18];
                          v81 = v78;
                          do
                          {
                            v80[-1] = v79;
                            *v80 = v79;
                            v80 += 2;
                            v81 -= 8;
                          }

                          while (v81);
                          if (v78 == v37)
                          {
LABEL_72:
                            v84 = v33 + 95;
                            v85 = v33[95];
                            if (v36 >= 8)
                            {
                              v86 = v37 & 0x7FFFFFF8;
                              v84 += v86;
                              v87 = vdupq_n_s32(v85);
                              v88 = &v165[25].i8[v18];
                              v89 = v86;
                              do
                              {
                                v88[-1] = v87;
                                *v88 = v87;
                                v88 += 2;
                                v89 -= 8;
                              }

                              while (v89);
                              if (v86 == v37)
                              {
LABEL_79:
                                v92 = v33 + 111;
                                v93 = v33[111];
                                if (v36 >= 8)
                                {
                                  v94 = v37 & 0x7FFFFFF8;
                                  v92 += v94;
                                  v95 = vdupq_n_s32(v93);
                                  v96 = &v165[29].i8[v18];
                                  v97 = v94;
                                  do
                                  {
                                    v96[-1] = v95;
                                    *v96 = v95;
                                    v96 += 2;
                                    v97 -= 8;
                                  }

                                  while (v97);
                                  if (v94 == v37)
                                  {
LABEL_86:
                                    v100 = v33 + 127;
                                    v101 = v33[127];
                                    if (v36 >= 8)
                                    {
                                      v102 = v37 & 0x7FFFFFF8;
                                      v100 += v102;
                                      v103 = vdupq_n_s32(v101);
                                      v104 = &v165[33].i8[v18];
                                      v105 = v102;
                                      do
                                      {
                                        v104[-1] = v103;
                                        *v104 = v103;
                                        v104 += 2;
                                        v105 -= 8;
                                      }

                                      while (v105);
                                      if (v102 == v37)
                                      {
LABEL_93:
                                        v108 = v33 + 143;
                                        v109 = v33[143];
                                        if (v36 >= 8)
                                        {
                                          v110 = v37 & 0x7FFFFFF8;
                                          v108 += v110;
                                          v111 = vdupq_n_s32(v109);
                                          v112 = &v165[37].i8[v18];
                                          v113 = v110;
                                          do
                                          {
                                            v112[-1] = v111;
                                            *v112 = v111;
                                            v112 += 2;
                                            v113 -= 8;
                                          }

                                          while (v113);
                                          if (v110 == v37)
                                          {
LABEL_100:
                                            v116 = v33 + 159;
                                            v117 = v33[159];
                                            if (v36 >= 8)
                                            {
                                              v118 = v37 & 0x7FFFFFF8;
                                              v116 += v118;
                                              v119 = vdupq_n_s32(v117);
                                              v120 = &v165[41].i8[v18];
                                              v121 = v118;
                                              do
                                              {
                                                v120[-1] = v119;
                                                *v120 = v119;
                                                v120 += 2;
                                                v121 -= 8;
                                              }

                                              while (v121);
                                              if (v118 == v37)
                                              {
LABEL_107:
                                                v124 = v33 + 175;
                                                v125 = v33[175];
                                                if (v36 >= 8)
                                                {
                                                  v126 = v37 & 0x7FFFFFF8;
                                                  v124 += v126;
                                                  v127 = vdupq_n_s32(v125);
                                                  v128 = &v165[45].i8[v18];
                                                  v129 = v126;
                                                  do
                                                  {
                                                    v128[-1] = v127;
                                                    *v128 = v127;
                                                    v128 += 2;
                                                    v129 -= 8;
                                                  }

                                                  while (v129);
                                                  if (v126 == v37)
                                                  {
LABEL_114:
                                                    v132 = v33 + 191;
                                                    v133 = v33[191];
                                                    if (v36 >= 8)
                                                    {
                                                      v134 = v37 & 0x7FFFFFF8;
                                                      v132 += v134;
                                                      v135 = vdupq_n_s32(v133);
                                                      v136 = &v165[49].i8[v18];
                                                      v137 = v134;
                                                      do
                                                      {
                                                        v136[-1] = v135;
                                                        *v136 = v135;
                                                        v136 += 2;
                                                        v137 -= 8;
                                                      }

                                                      while (v137);
                                                      if (v134 == v37)
                                                      {
LABEL_121:
                                                        v140 = v33 + 207;
                                                        v141 = v33[207];
                                                        if (v36 >= 8)
                                                        {
                                                          v142 = v37 & 0x7FFFFFF8;
                                                          v140 += v142;
                                                          v143 = vdupq_n_s32(v141);
                                                          v144 = &v165[53].i8[v18];
                                                          v145 = v142;
                                                          do
                                                          {
                                                            v144[-1] = v143;
                                                            *v144 = v143;
                                                            v144 += 2;
                                                            v145 -= 8;
                                                          }

                                                          while (v145);
                                                          if (v142 == v37)
                                                          {
LABEL_128:
                                                            v148 = v33 + 223;
                                                            v149 = v33[223];
                                                            if (v36 >= 8)
                                                            {
                                                              v150 = v37 & 0x7FFFFFF8;
                                                              v148 += v150;
                                                              v151 = vdupq_n_s32(v149);
                                                              v152 = &v165[57].i8[v18];
                                                              v153 = v150;
                                                              do
                                                              {
                                                                v152[-1] = v151;
                                                                *v152 = v151;
                                                                v152 += 2;
                                                                v153 -= 8;
                                                              }

                                                              while (v153);
                                                              if (v150 == v37)
                                                              {
                                                                goto LABEL_135;
                                                              }
                                                            }

                                                            else
                                                            {
                                                              LODWORD(v150) = 0;
                                                            }

                                                            v154 = v37 - v150;
                                                            v155 = v148 + 1;
                                                            do
                                                            {
                                                              *v155++ = v149;
                                                              --v154;
                                                            }

                                                            while (v154);
LABEL_135:
                                                            v156 = v33 + 239;
                                                            v157 = v33[239];
                                                            if (v36 >= 8)
                                                            {
                                                              v158 = v37 & 0x7FFFFFF8;
                                                              v156 += v158;
                                                              v159 = vdupq_n_s32(v157);
                                                              v160 = &v165[61].i8[v18];
                                                              v161 = v158;
                                                              do
                                                              {
                                                                v160[-1] = v159;
                                                                *v160 = v159;
                                                                v160 += 2;
                                                                v161 -= 8;
                                                              }

                                                              while (v161);
                                                              if (v158 == v37)
                                                              {
                                                                goto LABEL_142;
                                                              }
                                                            }

                                                            else
                                                            {
                                                              LODWORD(v158) = 0;
                                                            }

                                                            v162 = v37 - v158;
                                                            v163 = v156 + 1;
                                                            do
                                                            {
                                                              *v163++ = v157;
                                                              --v162;
                                                            }

                                                            while (v162);
LABEL_142:
                                                            result = pixInFullMB<(PixelFormat)32,(ChromaFormat)3>(v165, 64, v8, v7);
                                                            v164 = *MEMORY[0x29EDCA608];
                                                            return result;
                                                          }
                                                        }

                                                        else
                                                        {
                                                          LODWORD(v142) = 0;
                                                        }

                                                        v146 = v37 - v142;
                                                        v147 = v140 + 1;
                                                        do
                                                        {
                                                          *v147++ = v141;
                                                          --v146;
                                                        }

                                                        while (v146);
                                                        goto LABEL_128;
                                                      }
                                                    }

                                                    else
                                                    {
                                                      LODWORD(v134) = 0;
                                                    }

                                                    v138 = v37 - v134;
                                                    v139 = v132 + 1;
                                                    do
                                                    {
                                                      *v139++ = v133;
                                                      --v138;
                                                    }

                                                    while (v138);
                                                    goto LABEL_121;
                                                  }
                                                }

                                                else
                                                {
                                                  LODWORD(v126) = 0;
                                                }

                                                v130 = v37 - v126;
                                                v131 = v124 + 1;
                                                do
                                                {
                                                  *v131++ = v125;
                                                  --v130;
                                                }

                                                while (v130);
                                                goto LABEL_114;
                                              }
                                            }

                                            else
                                            {
                                              LODWORD(v118) = 0;
                                            }

                                            v122 = v37 - v118;
                                            v123 = v116 + 1;
                                            do
                                            {
                                              *v123++ = v117;
                                              --v122;
                                            }

                                            while (v122);
                                            goto LABEL_107;
                                          }
                                        }

                                        else
                                        {
                                          LODWORD(v110) = 0;
                                        }

                                        v114 = v37 - v110;
                                        v115 = v108 + 1;
                                        do
                                        {
                                          *v115++ = v109;
                                          --v114;
                                        }

                                        while (v114);
                                        goto LABEL_100;
                                      }
                                    }

                                    else
                                    {
                                      LODWORD(v102) = 0;
                                    }

                                    v106 = v37 - v102;
                                    v107 = v100 + 1;
                                    do
                                    {
                                      *v107++ = v101;
                                      --v106;
                                    }

                                    while (v106);
                                    goto LABEL_93;
                                  }
                                }

                                else
                                {
                                  LODWORD(v94) = 0;
                                }

                                v98 = v37 - v94;
                                v99 = v92 + 1;
                                do
                                {
                                  *v99++ = v93;
                                  --v98;
                                }

                                while (v98);
                                goto LABEL_86;
                              }
                            }

                            else
                            {
                              LODWORD(v86) = 0;
                            }

                            v90 = v37 - v86;
                            v91 = v84 + 1;
                            do
                            {
                              *v91++ = v85;
                              --v90;
                            }

                            while (v90);
                            goto LABEL_79;
                          }
                        }

                        else
                        {
                          LODWORD(v78) = 0;
                        }

                        v82 = v37 - v78;
                        v83 = v76 + 1;
                        do
                        {
                          *v83++ = v77;
                          --v82;
                        }

                        while (v82);
                        goto LABEL_72;
                      }
                    }

                    else
                    {
                      LODWORD(v70) = 0;
                    }

                    v74 = v37 - v70;
                    v75 = v69 + 1;
                    do
                    {
                      *v75++ = v68;
                      --v74;
                    }

                    while (v74);
                    goto LABEL_65;
                  }
                }

                else
                {
                  LODWORD(v62) = 0;
                }

                v66 = v37 - v62;
                v67 = v61 + 1;
                do
                {
                  *v67++ = v60;
                  --v66;
                }

                while (v66);
                goto LABEL_58;
              }
            }

            else
            {
              LODWORD(v54) = 0;
            }

            v58 = v37 - v54;
            v59 = v53 + 1;
            do
            {
              *v59++ = v52;
              --v58;
            }

            while (v58);
            goto LABEL_51;
          }
        }

        else
        {
          LODWORD(v46) = 0;
        }

        v50 = v37 - v46;
        v51 = v45 + 1;
        do
        {
          *v51++ = v44;
          --v50;
        }

        while (v50);
        goto LABEL_44;
      }
    }

    else
    {
      LODWORD(v38) = 0;
      v7 = v15;
    }

    v42 = v37 - v38;
    v43 = (v35 + 4);
    do
    {
      *v43++ = v34;
      --v42;
    }

    while (v42);
    goto LABEL_37;
  }

  if ((v2 & 0xF) != 0 || (v6 & 0xF) != 0)
  {
    v12 = 0;
    goto LABEL_18;
  }

  v10 = *MEMORY[0x29EDCA608];

  return pixInFullMB<(PixelFormat)32,(ChromaFormat)3>(v2, v6, v3, v7);
}

uint32x4_t *pixInGeneric<(PixelFormat)1848848434,(ChromaFormat)3>(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x2A1C7C4A8](a1, a2);
  v8 = v3;
  v9 = v2;
  v166 = *MEMORY[0x29EDCA608];
  if (v4 != 16 || v5 != 16)
  {
    if (v5 == 16)
    {
      v12 = 16 - v4;
      if (v4 <= 0)
      {
        v13 = v6;
        v14 = v165;
        goto LABEL_20;
      }

LABEL_18:
      v13 = v6;
      v24 = v4 + 1;
      v14 = v165;
      do
      {
        v25 = v9[1];
        *v14 = *v9;
        v14[1] = v25;
        v26 = v9[3];
        v14[2] = v9[2];
        v14[3] = v26;
        v9 = (v9 + v6);
        v14 += 4;
        --v24;
      }

      while (v24 > 1);
LABEL_20:
      if (v12 >= 1)
      {
        v27 = (v9 - v13);
        v28 = *v27;
        v29 = v27[2];
        v30 = v27[3];
        v31 = v12 + 1;
        do
        {
          *v14 = v28;
          v14[1] = v27[1];
          v14[2] = v29;
          v14[3] = v30;
          v14 += 4;
          --v31;
        }

        while (v31 > 1);
      }

      goto LABEL_142;
    }

    if (v5 > 15)
    {
      goto LABEL_142;
    }

    v15 = v7;
    v16 = 4 * v5;
    v17 = v5;
    if (v4 <= 0)
    {
      v23 = &v2->i8[-v6];
      v22 = v165;
    }

    else
    {
      v18 = v16;
      v19 = v6;
      v20 = v4;
      v21 = v4 + 1;
      v22 = v165;
      do
      {
        memcpy(v22, v9, v16);
        v9 = (v9 + v19);
        v22 += 4;
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
    v32 = 17 - v4;
    do
    {
      memcpy(v22, v23, v18);
      v22 += 4;
      --v32;
    }

    while (v32 > 1);
LABEL_27:
    v33 = (v165[0].i32 + v18);
    v35 = &v165[-1].i8[v18 + 12];
    v34 = *(&v165[0].u32[-1] + v18);
    v36 = 16 - v17;
    if (16 - v17 <= 1)
    {
      v37 = 1;
    }

    else
    {
      v37 = v36;
    }

    if (v36 >= 8)
    {
      v38 = v37 & 0x7FFFFFF8;
      v35 += 4 * v38;
      v39 = vdupq_n_s32(v34);
      v40 = &v165[1].i8[v18];
      v41 = v38;
      do
      {
        v40[-1] = v39;
        *v40 = v39;
        v40 += 2;
        v41 -= 8;
      }

      while (v41);
      v7 = v15;
      if (v38 == v37)
      {
LABEL_37:
        v45 = v33 + 15;
        v44 = v33[15];
        if (v36 >= 8)
        {
          v46 = v37 & 0x7FFFFFF8;
          v45 += v46;
          v47 = vdupq_n_s32(v44);
          v48 = &v165[5].i8[v18];
          v49 = v46;
          do
          {
            v48[-1] = v47;
            *v48 = v47;
            v48 += 2;
            v49 -= 8;
          }

          while (v49);
          if (v46 == v37)
          {
LABEL_44:
            v53 = v33 + 31;
            v52 = v33[31];
            if (v36 >= 8)
            {
              v54 = v37 & 0x7FFFFFF8;
              v53 += v54;
              v55 = vdupq_n_s32(v52);
              v56 = &v165[9].i8[v18];
              v57 = v54;
              do
              {
                v56[-1] = v55;
                *v56 = v55;
                v56 += 2;
                v57 -= 8;
              }

              while (v57);
              if (v54 == v37)
              {
LABEL_51:
                v61 = v33 + 47;
                v60 = v33[47];
                if (v36 >= 8)
                {
                  v62 = v37 & 0x7FFFFFF8;
                  v61 += v62;
                  v63 = vdupq_n_s32(v60);
                  v64 = &v165[13].i8[v18];
                  v65 = v62;
                  do
                  {
                    v64[-1] = v63;
                    *v64 = v63;
                    v64 += 2;
                    v65 -= 8;
                  }

                  while (v65);
                  if (v62 == v37)
                  {
LABEL_58:
                    v69 = v33 + 63;
                    v68 = v33[63];
                    if (v36 >= 8)
                    {
                      v70 = v37 & 0x7FFFFFF8;
                      v69 += v70;
                      v71 = vdupq_n_s32(v68);
                      v72 = &v165[17].i8[v18];
                      v73 = v70;
                      do
                      {
                        v72[-1] = v71;
                        *v72 = v71;
                        v72 += 2;
                        v73 -= 8;
                      }

                      while (v73);
                      if (v70 == v37)
                      {
LABEL_65:
                        v76 = v33 + 79;
                        v77 = v33[79];
                        if (v36 >= 8)
                        {
                          v78 = v37 & 0x7FFFFFF8;
                          v76 += v78;
                          v79 = vdupq_n_s32(v77);
                          v80 = &v165[21].i8[v18];
                          v81 = v78;
                          do
                          {
                            v80[-1] = v79;
                            *v80 = v79;
                            v80 += 2;
                            v81 -= 8;
                          }

                          while (v81);
                          if (v78 == v37)
                          {
LABEL_72:
                            v84 = v33 + 95;
                            v85 = v33[95];
                            if (v36 >= 8)
                            {
                              v86 = v37 & 0x7FFFFFF8;
                              v84 += v86;
                              v87 = vdupq_n_s32(v85);
                              v88 = &v165[25].i8[v18];
                              v89 = v86;
                              do
                              {
                                v88[-1] = v87;
                                *v88 = v87;
                                v88 += 2;
                                v89 -= 8;
                              }

                              while (v89);
                              if (v86 == v37)
                              {
LABEL_79:
                                v92 = v33 + 111;
                                v93 = v33[111];
                                if (v36 >= 8)
                                {
                                  v94 = v37 & 0x7FFFFFF8;
                                  v92 += v94;
                                  v95 = vdupq_n_s32(v93);
                                  v96 = &v165[29].i8[v18];
                                  v97 = v94;
                                  do
                                  {
                                    v96[-1] = v95;
                                    *v96 = v95;
                                    v96 += 2;
                                    v97 -= 8;
                                  }

                                  while (v97);
                                  if (v94 == v37)
                                  {
LABEL_86:
                                    v100 = v33 + 127;
                                    v101 = v33[127];
                                    if (v36 >= 8)
                                    {
                                      v102 = v37 & 0x7FFFFFF8;
                                      v100 += v102;
                                      v103 = vdupq_n_s32(v101);
                                      v104 = &v165[33].i8[v18];
                                      v105 = v102;
                                      do
                                      {
                                        v104[-1] = v103;
                                        *v104 = v103;
                                        v104 += 2;
                                        v105 -= 8;
                                      }

                                      while (v105);
                                      if (v102 == v37)
                                      {
LABEL_93:
                                        v108 = v33 + 143;
                                        v109 = v33[143];
                                        if (v36 >= 8)
                                        {
                                          v110 = v37 & 0x7FFFFFF8;
                                          v108 += v110;
                                          v111 = vdupq_n_s32(v109);
                                          v112 = &v165[37].i8[v18];
                                          v113 = v110;
                                          do
                                          {
                                            v112[-1] = v111;
                                            *v112 = v111;
                                            v112 += 2;
                                            v113 -= 8;
                                          }

                                          while (v113);
                                          if (v110 == v37)
                                          {
LABEL_100:
                                            v116 = v33 + 159;
                                            v117 = v33[159];
                                            if (v36 >= 8)
                                            {
                                              v118 = v37 & 0x7FFFFFF8;
                                              v116 += v118;
                                              v119 = vdupq_n_s32(v117);
                                              v120 = &v165[41].i8[v18];
                                              v121 = v118;
                                              do
                                              {
                                                v120[-1] = v119;
                                                *v120 = v119;
                                                v120 += 2;
                                                v121 -= 8;
                                              }

                                              while (v121);
                                              if (v118 == v37)
                                              {
LABEL_107:
                                                v124 = v33 + 175;
                                                v125 = v33[175];
                                                if (v36 >= 8)
                                                {
                                                  v126 = v37 & 0x7FFFFFF8;
                                                  v124 += v126;
                                                  v127 = vdupq_n_s32(v125);
                                                  v128 = &v165[45].i8[v18];
                                                  v129 = v126;
                                                  do
                                                  {
                                                    v128[-1] = v127;
                                                    *v128 = v127;
                                                    v128 += 2;
                                                    v129 -= 8;
                                                  }

                                                  while (v129);
                                                  if (v126 == v37)
                                                  {
LABEL_114:
                                                    v132 = v33 + 191;
                                                    v133 = v33[191];
                                                    if (v36 >= 8)
                                                    {
                                                      v134 = v37 & 0x7FFFFFF8;
                                                      v132 += v134;
                                                      v135 = vdupq_n_s32(v133);
                                                      v136 = &v165[49].i8[v18];
                                                      v137 = v134;
                                                      do
                                                      {
                                                        v136[-1] = v135;
                                                        *v136 = v135;
                                                        v136 += 2;
                                                        v137 -= 8;
                                                      }

                                                      while (v137);
                                                      if (v134 == v37)
                                                      {
LABEL_121:
                                                        v140 = v33 + 207;
                                                        v141 = v33[207];
                                                        if (v36 >= 8)
                                                        {
                                                          v142 = v37 & 0x7FFFFFF8;
                                                          v140 += v142;
                                                          v143 = vdupq_n_s32(v141);
                                                          v144 = &v165[53].i8[v18];
                                                          v145 = v142;
                                                          do
                                                          {
                                                            v144[-1] = v143;
                                                            *v144 = v143;
                                                            v144 += 2;
                                                            v145 -= 8;
                                                          }

                                                          while (v145);
                                                          if (v142 == v37)
                                                          {
LABEL_128:
                                                            v148 = v33 + 223;
                                                            v149 = v33[223];
                                                            if (v36 >= 8)
                                                            {
                                                              v150 = v37 & 0x7FFFFFF8;
                                                              v148 += v150;
                                                              v151 = vdupq_n_s32(v149);
                                                              v152 = &v165[57].i8[v18];
                                                              v153 = v150;
                                                              do
                                                              {
                                                                v152[-1] = v151;
                                                                *v152 = v151;
                                                                v152 += 2;
                                                                v153 -= 8;
                                                              }

                                                              while (v153);
                                                              if (v150 == v37)
                                                              {
                                                                goto LABEL_135;
                                                              }
                                                            }

                                                            else
                                                            {
                                                              LODWORD(v150) = 0;
                                                            }

                                                            v154 = v37 - v150;
                                                            v155 = v148 + 1;
                                                            do
                                                            {
                                                              *v155++ = v149;
                                                              --v154;
                                                            }

                                                            while (v154);
LABEL_135:
                                                            v156 = v33 + 239;
                                                            v157 = v33[239];
                                                            if (v36 >= 8)
                                                            {
                                                              v158 = v37 & 0x7FFFFFF8;
                                                              v156 += v158;
                                                              v159 = vdupq_n_s32(v157);
                                                              v160 = &v165[61].i8[v18];
                                                              v161 = v158;
                                                              do
                                                              {
                                                                v160[-1] = v159;
                                                                *v160 = v159;
                                                                v160 += 2;
                                                                v161 -= 8;
                                                              }

                                                              while (v161);
                                                              if (v158 == v37)
                                                              {
                                                                goto LABEL_142;
                                                              }
                                                            }

                                                            else
                                                            {
                                                              LODWORD(v158) = 0;
                                                            }

                                                            v162 = v37 - v158;
                                                            v163 = v156 + 1;
                                                            do
                                                            {
                                                              *v163++ = v157;
                                                              --v162;
                                                            }

                                                            while (v162);
LABEL_142:
                                                            result = pixInFullMB<(PixelFormat)1848848434,(ChromaFormat)3>(v165, 64, v8, v7);
                                                            v164 = *MEMORY[0x29EDCA608];
                                                            return result;
                                                          }
                                                        }

                                                        else
                                                        {
                                                          LODWORD(v142) = 0;
                                                        }

                                                        v146 = v37 - v142;
                                                        v147 = v140 + 1;
                                                        do
                                                        {
                                                          *v147++ = v141;
                                                          --v146;
                                                        }

                                                        while (v146);
                                                        goto LABEL_128;
                                                      }
                                                    }

                                                    else
                                                    {
                                                      LODWORD(v134) = 0;
                                                    }

                                                    v138 = v37 - v134;
                                                    v139 = v132 + 1;
                                                    do
                                                    {
                                                      *v139++ = v133;
                                                      --v138;
                                                    }

                                                    while (v138);
                                                    goto LABEL_121;
                                                  }
                                                }

                                                else
                                                {
                                                  LODWORD(v126) = 0;
                                                }

                                                v130 = v37 - v126;
                                                v131 = v124 + 1;
                                                do
                                                {
                                                  *v131++ = v125;
                                                  --v130;
                                                }

                                                while (v130);
                                                goto LABEL_114;
                                              }
                                            }

                                            else
                                            {
                                              LODWORD(v118) = 0;
                                            }

                                            v122 = v37 - v118;
                                            v123 = v116 + 1;
                                            do
                                            {
                                              *v123++ = v117;
                                              --v122;
                                            }

                                            while (v122);
                                            goto LABEL_107;
                                          }
                                        }

                                        else
                                        {
                                          LODWORD(v110) = 0;
                                        }

                                        v114 = v37 - v110;
                                        v115 = v108 + 1;
                                        do
                                        {
                                          *v115++ = v109;
                                          --v114;
                                        }

                                        while (v114);
                                        goto LABEL_100;
                                      }
                                    }

                                    else
                                    {
                                      LODWORD(v102) = 0;
                                    }

                                    v106 = v37 - v102;
                                    v107 = v100 + 1;
                                    do
                                    {
                                      *v107++ = v101;
                                      --v106;
                                    }

                                    while (v106);
                                    goto LABEL_93;
                                  }
                                }

                                else
                                {
                                  LODWORD(v94) = 0;
                                }

                                v98 = v37 - v94;
                                v99 = v92 + 1;
                                do
                                {
                                  *v99++ = v93;
                                  --v98;
                                }

                                while (v98);
                                goto LABEL_86;
                              }
                            }

                            else
                            {
                              LODWORD(v86) = 0;
                            }

                            v90 = v37 - v86;
                            v91 = v84 + 1;
                            do
                            {
                              *v91++ = v85;
                              --v90;
                            }

                            while (v90);
                            goto LABEL_79;
                          }
                        }

                        else
                        {
                          LODWORD(v78) = 0;
                        }

                        v82 = v37 - v78;
                        v83 = v76 + 1;
                        do
                        {
                          *v83++ = v77;
                          --v82;
                        }

                        while (v82);
                        goto LABEL_72;
                      }
                    }

                    else
                    {
                      LODWORD(v70) = 0;
                    }

                    v74 = v37 - v70;
                    v75 = v69 + 1;
                    do
                    {
                      *v75++ = v68;
                      --v74;
                    }

                    while (v74);
                    goto LABEL_65;
                  }
                }

                else
                {
                  LODWORD(v62) = 0;
                }

                v66 = v37 - v62;
                v67 = v61 + 1;
                do
                {
                  *v67++ = v60;
                  --v66;
                }

                while (v66);
                goto LABEL_58;
              }
            }

            else
            {
              LODWORD(v54) = 0;
            }

            v58 = v37 - v54;
            v59 = v53 + 1;
            do
            {
              *v59++ = v52;
              --v58;
            }

            while (v58);
            goto LABEL_51;
          }
        }

        else
        {
          LODWORD(v46) = 0;
        }

        v50 = v37 - v46;
        v51 = v45 + 1;
        do
        {
          *v51++ = v44;
          --v50;
        }

        while (v50);
        goto LABEL_44;
      }
    }

    else
    {
      LODWORD(v38) = 0;
      v7 = v15;
    }

    v42 = v37 - v38;
    v43 = (v35 + 4);
    do
    {
      *v43++ = v34;
      --v42;
    }

    while (v42);
    goto LABEL_37;
  }

  if ((v2 & 0xF) != 0 || (v6 & 0xF) != 0)
  {
    v12 = 0;
    goto LABEL_18;
  }

  v10 = *MEMORY[0x29EDCA608];

  return pixInFullMB<(PixelFormat)1848848434,(ChromaFormat)3>(v2, v6, v3, v7);
}

int8x16_t *pixInGeneric<(PixelFormat)1378955371,(ChromaFormat)3>(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x2A1C7C4A8](a1, a2);
  v8 = v3;
  v9 = v2;
  v166 = *MEMORY[0x29EDCA608];
  if (v4 != 16 || v5 != 16)
  {
    if (v5 == 16)
    {
      v12 = 16 - v4;
      if (v4 <= 0)
      {
        v13 = v6;
        v14 = v165;
        goto LABEL_20;
      }

LABEL_18:
      v13 = v6;
      v24 = v4 + 1;
      v14 = v165;
      do
      {
        v25 = v9[1];
        *v14 = *v9;
        v14[1] = v25;
        v26 = v9[3];
        v14[2] = v9[2];
        v14[3] = v26;
        v9 = (v9 + v6);
        v14 += 4;
        --v24;
      }

      while (v24 > 1);
LABEL_20:
      if (v12 >= 1)
      {
        v27 = (v9 - v13);
        v28 = *v27;
        v29 = v27[2];
        v30 = v27[3];
        v31 = v12 + 1;
        do
        {
          *v14 = v28;
          v14[1] = v27[1];
          v14[2] = v29;
          v14[3] = v30;
          v14 += 4;
          --v31;
        }

        while (v31 > 1);
      }

      goto LABEL_142;
    }

    if (v5 > 15)
    {
      goto LABEL_142;
    }

    v15 = v7;
    v16 = 4 * v5;
    v17 = v5;
    if (v4 <= 0)
    {
      v23 = &v2->i8[-v6];
      v22 = v165;
    }

    else
    {
      v18 = v16;
      v19 = v6;
      v20 = v4;
      v21 = v4 + 1;
      v22 = v165;
      do
      {
        memcpy(v22, v9, v16);
        v9 = (v9 + v19);
        v22 += 4;
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
    v32 = 17 - v4;
    do
    {
      memcpy(v22, v23, v18);
      v22 += 4;
      --v32;
    }

    while (v32 > 1);
LABEL_27:
    v33 = (v165[0].i32 + v18);
    v35 = &v165[-1].i8[v18 + 12];
    v34 = *(&v165[0].u32[-1] + v18);
    v36 = 16 - v17;
    if (16 - v17 <= 1)
    {
      v37 = 1;
    }

    else
    {
      v37 = v36;
    }

    if (v36 >= 8)
    {
      v38 = v37 & 0x7FFFFFF8;
      v35 += 4 * v38;
      v39 = vdupq_n_s32(v34);
      v40 = &v165[1].i8[v18];
      v41 = v38;
      do
      {
        v40[-1] = v39;
        *v40 = v39;
        v40 += 2;
        v41 -= 8;
      }

      while (v41);
      v7 = v15;
      if (v38 == v37)
      {
LABEL_37:
        v45 = v33 + 15;
        v44 = v33[15];
        if (v36 >= 8)
        {
          v46 = v37 & 0x7FFFFFF8;
          v45 += v46;
          v47 = vdupq_n_s32(v44);
          v48 = &v165[5].i8[v18];
          v49 = v46;
          do
          {
            v48[-1] = v47;
            *v48 = v47;
            v48 += 2;
            v49 -= 8;
          }

          while (v49);
          if (v46 == v37)
          {
LABEL_44:
            v53 = v33 + 31;
            v52 = v33[31];
            if (v36 >= 8)
            {
              v54 = v37 & 0x7FFFFFF8;
              v53 += v54;
              v55 = vdupq_n_s32(v52);
              v56 = &v165[9].i8[v18];
              v57 = v54;
              do
              {
                v56[-1] = v55;
                *v56 = v55;
                v56 += 2;
                v57 -= 8;
              }

              while (v57);
              if (v54 == v37)
              {
LABEL_51:
                v61 = v33 + 47;
                v60 = v33[47];
                if (v36 >= 8)
                {
                  v62 = v37 & 0x7FFFFFF8;
                  v61 += v62;
                  v63 = vdupq_n_s32(v60);
                  v64 = &v165[13].i8[v18];
                  v65 = v62;
                  do
                  {
                    v64[-1] = v63;
                    *v64 = v63;
                    v64 += 2;
                    v65 -= 8;
                  }

                  while (v65);
                  if (v62 == v37)
                  {
LABEL_58:
                    v69 = v33 + 63;
                    v68 = v33[63];
                    if (v36 >= 8)
                    {
                      v70 = v37 & 0x7FFFFFF8;
                      v69 += v70;
                      v71 = vdupq_n_s32(v68);
                      v72 = &v165[17].i8[v18];
                      v73 = v70;
                      do
                      {
                        v72[-1] = v71;
                        *v72 = v71;
                        v72 += 2;
                        v73 -= 8;
                      }

                      while (v73);
                      if (v70 == v37)
                      {
LABEL_65:
                        v76 = v33 + 79;
                        v77 = v33[79];
                        if (v36 >= 8)
                        {
                          v78 = v37 & 0x7FFFFFF8;
                          v76 += v78;
                          v79 = vdupq_n_s32(v77);
                          v80 = &v165[21].i8[v18];
                          v81 = v78;
                          do
                          {
                            v80[-1] = v79;
                            *v80 = v79;
                            v80 += 2;
                            v81 -= 8;
                          }

                          while (v81);
                          if (v78 == v37)
                          {
LABEL_72:
                            v84 = v33 + 95;
                            v85 = v33[95];
                            if (v36 >= 8)
                            {
                              v86 = v37 & 0x7FFFFFF8;
                              v84 += v86;
                              v87 = vdupq_n_s32(v85);
                              v88 = &v165[25].i8[v18];
                              v89 = v86;
                              do
                              {
                                v88[-1] = v87;
                                *v88 = v87;
                                v88 += 2;
                                v89 -= 8;
                              }

                              while (v89);
                              if (v86 == v37)
                              {
LABEL_79:
                                v92 = v33 + 111;
                                v93 = v33[111];
                                if (v36 >= 8)
                                {
                                  v94 = v37 & 0x7FFFFFF8;
                                  v92 += v94;
                                  v95 = vdupq_n_s32(v93);
                                  v96 = &v165[29].i8[v18];
                                  v97 = v94;
                                  do
                                  {
                                    v96[-1] = v95;
                                    *v96 = v95;
                                    v96 += 2;
                                    v97 -= 8;
                                  }

                                  while (v97);
                                  if (v94 == v37)
                                  {
LABEL_86:
                                    v100 = v33 + 127;
                                    v101 = v33[127];
                                    if (v36 >= 8)
                                    {
                                      v102 = v37 & 0x7FFFFFF8;
                                      v100 += v102;
                                      v103 = vdupq_n_s32(v101);
                                      v104 = &v165[33].i8[v18];
                                      v105 = v102;
                                      do
                                      {
                                        v104[-1] = v103;
                                        *v104 = v103;
                                        v104 += 2;
                                        v105 -= 8;
                                      }

                                      while (v105);
                                      if (v102 == v37)
                                      {
LABEL_93:
                                        v108 = v33 + 143;
                                        v109 = v33[143];
                                        if (v36 >= 8)
                                        {
                                          v110 = v37 & 0x7FFFFFF8;
                                          v108 += v110;
                                          v111 = vdupq_n_s32(v109);
                                          v112 = &v165[37].i8[v18];
                                          v113 = v110;
                                          do
                                          {
                                            v112[-1] = v111;
                                            *v112 = v111;
                                            v112 += 2;
                                            v113 -= 8;
                                          }

                                          while (v113);
                                          if (v110 == v37)
                                          {
LABEL_100:
                                            v116 = v33 + 159;
                                            v117 = v33[159];
                                            if (v36 >= 8)
                                            {
                                              v118 = v37 & 0x7FFFFFF8;
                                              v116 += v118;
                                              v119 = vdupq_n_s32(v117);
                                              v120 = &v165[41].i8[v18];
                                              v121 = v118;
                                              do
                                              {
                                                v120[-1] = v119;
                                                *v120 = v119;
                                                v120 += 2;
                                                v121 -= 8;
                                              }

                                              while (v121);
                                              if (v118 == v37)
                                              {
LABEL_107:
                                                v124 = v33 + 175;
                                                v125 = v33[175];
                                                if (v36 >= 8)
                                                {
                                                  v126 = v37 & 0x7FFFFFF8;
                                                  v124 += v126;
                                                  v127 = vdupq_n_s32(v125);
                                                  v128 = &v165[45].i8[v18];
                                                  v129 = v126;
                                                  do
                                                  {
                                                    v128[-1] = v127;
                                                    *v128 = v127;
                                                    v128 += 2;
                                                    v129 -= 8;
                                                  }

                                                  while (v129);
                                                  if (v126 == v37)
                                                  {
LABEL_114:
                                                    v132 = v33 + 191;
                                                    v133 = v33[191];
                                                    if (v36 >= 8)
                                                    {
                                                      v134 = v37 & 0x7FFFFFF8;
                                                      v132 += v134;
                                                      v135 = vdupq_n_s32(v133);
                                                      v136 = &v165[49].i8[v18];
                                                      v137 = v134;
                                                      do
                                                      {
                                                        v136[-1] = v135;
                                                        *v136 = v135;
                                                        v136 += 2;
                                                        v137 -= 8;
                                                      }

                                                      while (v137);
                                                      if (v134 == v37)
                                                      {
LABEL_121:
                                                        v140 = v33 + 207;
                                                        v141 = v33[207];
                                                        if (v36 >= 8)
                                                        {
                                                          v142 = v37 & 0x7FFFFFF8;
                                                          v140 += v142;
                                                          v143 = vdupq_n_s32(v141);
                                                          v144 = &v165[53].i8[v18];
                                                          v145 = v142;
                                                          do
                                                          {
                                                            v144[-1] = v143;
                                                            *v144 = v143;
                                                            v144 += 2;
                                                            v145 -= 8;
                                                          }

                                                          while (v145);
                                                          if (v142 == v37)
                                                          {
LABEL_128:
                                                            v148 = v33 + 223;
                                                            v149 = v33[223];
                                                            if (v36 >= 8)
                                                            {
                                                              v150 = v37 & 0x7FFFFFF8;
                                                              v148 += v150;
                                                              v151 = vdupq_n_s32(v149);
                                                              v152 = &v165[57].i8[v18];
                                                              v153 = v150;
                                                              do
                                                              {
                                                                v152[-1] = v151;
                                                                *v152 = v151;
                                                                v152 += 2;
                                                                v153 -= 8;
                                                              }

                                                              while (v153);
                                                              if (v150 == v37)
                                                              {
                                                                goto LABEL_135;
                                                              }
                                                            }

                                                            else
                                                            {
                                                              LODWORD(v150) = 0;
                                                            }

                                                            v154 = v37 - v150;
                                                            v155 = v148 + 1;
                                                            do
                                                            {
                                                              *v155++ = v149;
                                                              --v154;
                                                            }

                                                            while (v154);
LABEL_135:
                                                            v156 = v33 + 239;
                                                            v157 = v33[239];
                                                            if (v36 >= 8)
                                                            {
                                                              v158 = v37 & 0x7FFFFFF8;
                                                              v156 += v158;
                                                              v159 = vdupq_n_s32(v157);
                                                              v160 = &v165[61].i8[v18];
                                                              v161 = v158;
                                                              do
                                                              {
                                                                v160[-1] = v159;
                                                                *v160 = v159;
                                                                v160 += 2;
                                                                v161 -= 8;
                                                              }

                                                              while (v161);
                                                              if (v158 == v37)
                                                              {
                                                                goto LABEL_142;
                                                              }
                                                            }

                                                            else
                                                            {
                                                              LODWORD(v158) = 0;
                                                            }

                                                            v162 = v37 - v158;
                                                            v163 = v156 + 1;
                                                            do
                                                            {
                                                              *v163++ = v157;
                                                              --v162;
                                                            }

                                                            while (v162);
LABEL_142:
                                                            result = pixInFullMB<(PixelFormat)1378955371,(ChromaFormat)3>(v165, 64, v8, v7);
                                                            v164 = *MEMORY[0x29EDCA608];
                                                            return result;
                                                          }
                                                        }

                                                        else
                                                        {
                                                          LODWORD(v142) = 0;
                                                        }

                                                        v146 = v37 - v142;
                                                        v147 = v140 + 1;
                                                        do
                                                        {
                                                          *v147++ = v141;
                                                          --v146;
                                                        }

                                                        while (v146);
                                                        goto LABEL_128;
                                                      }
                                                    }

                                                    else
                                                    {
                                                      LODWORD(v134) = 0;
                                                    }

                                                    v138 = v37 - v134;
                                                    v139 = v132 + 1;
                                                    do
                                                    {
                                                      *v139++ = v133;
                                                      --v138;
                                                    }

                                                    while (v138);
                                                    goto LABEL_121;
                                                  }
                                                }

                                                else
                                                {
                                                  LODWORD(v126) = 0;
                                                }

                                                v130 = v37 - v126;
                                                v131 = v124 + 1;
                                                do
                                                {
                                                  *v131++ = v125;
                                                  --v130;
                                                }

                                                while (v130);
                                                goto LABEL_114;
                                              }
                                            }

                                            else
                                            {
                                              LODWORD(v118) = 0;
                                            }

                                            v122 = v37 - v118;
                                            v123 = v116 + 1;
                                            do
                                            {
                                              *v123++ = v117;
                                              --v122;
                                            }

                                            while (v122);
                                            goto LABEL_107;
                                          }
                                        }

                                        else
                                        {
                                          LODWORD(v110) = 0;
                                        }

                                        v114 = v37 - v110;
                                        v115 = v108 + 1;
                                        do
                                        {
                                          *v115++ = v109;
                                          --v114;
                                        }

                                        while (v114);
                                        goto LABEL_100;
                                      }
                                    }

                                    else
                                    {
                                      LODWORD(v102) = 0;
                                    }

                                    v106 = v37 - v102;
                                    v107 = v100 + 1;
                                    do
                                    {
                                      *v107++ = v101;
                                      --v106;
                                    }

                                    while (v106);
                                    goto LABEL_93;
                                  }
                                }

                                else
                                {
                                  LODWORD(v94) = 0;
                                }

                                v98 = v37 - v94;
                                v99 = v92 + 1;
                                do
                                {
                                  *v99++ = v93;
                                  --v98;
                                }

                                while (v98);
                                goto LABEL_86;
                              }
                            }

                            else
                            {
                              LODWORD(v86) = 0;
                            }

                            v90 = v37 - v86;
                            v91 = v84 + 1;
                            do
                            {
                              *v91++ = v85;
                              --v90;
                            }

                            while (v90);
                            goto LABEL_79;
                          }
                        }

                        else
                        {
                          LODWORD(v78) = 0;
                        }

                        v82 = v37 - v78;
                        v83 = v76 + 1;
                        do
                        {
                          *v83++ = v77;
                          --v82;
                        }

                        while (v82);
                        goto LABEL_72;
                      }
                    }

                    else
                    {
                      LODWORD(v70) = 0;
                    }

                    v74 = v37 - v70;
                    v75 = v69 + 1;
                    do
                    {
                      *v75++ = v68;
                      --v74;
                    }

                    while (v74);
                    goto LABEL_65;
                  }
                }

                else
                {
                  LODWORD(v62) = 0;
                }

                v66 = v37 - v62;
                v67 = v61 + 1;
                do
                {
                  *v67++ = v60;
                  --v66;
                }

                while (v66);
                goto LABEL_58;
              }
            }

            else
            {
              LODWORD(v54) = 0;
            }

            v58 = v37 - v54;
            v59 = v53 + 1;
            do
            {
              *v59++ = v52;
              --v58;
            }

            while (v58);
            goto LABEL_51;
          }
        }

        else
        {
          LODWORD(v46) = 0;
        }

        v50 = v37 - v46;
        v51 = v45 + 1;
        do
        {
          *v51++ = v44;
          --v50;
        }

        while (v50);
        goto LABEL_44;
      }
    }

    else
    {
      LODWORD(v38) = 0;
      v7 = v15;
    }

    v42 = v37 - v38;
    v43 = (v35 + 4);
    do
    {
      *v43++ = v34;
      --v42;
    }

    while (v42);
    goto LABEL_37;
  }

  if ((v2 & 0xF) != 0 || (v6 & 0xF) != 0)
  {
    v12 = 0;
    goto LABEL_18;
  }

  v10 = *MEMORY[0x29EDCA608];

  return pixInFullMB<(PixelFormat)1378955371,(ChromaFormat)3>(v2, v6, v3, v7);
}

int8x16_t *pixInGeneric<(PixelFormat)1915892016,(ChromaFormat)3>(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x2A1C7C4A8](a1, a2);
  v8 = v3;
  v9 = v2;
  v166 = *MEMORY[0x29EDCA608];
  if (v4 != 16 || v5 != 16)
  {
    if (v5 == 16)
    {
      v12 = 16 - v4;
      if (v4 <= 0)
      {
        v13 = v6;
        v14 = v165;
        goto LABEL_20;
      }

LABEL_18:
      v13 = v6;
      v24 = v4 + 1;
      v14 = v165;
      do
      {
        v25 = v9[1];
        *v14 = *v9;
        v14[1] = v25;
        v26 = v9[3];
        v14[2] = v9[2];
        v14[3] = v26;
        v9 = (v9 + v6);
        v14 += 4;
        --v24;
      }

      while (v24 > 1);
LABEL_20:
      if (v12 >= 1)
      {
        v27 = (v9 - v13);
        v28 = *v27;
        v29 = v27[2];
        v30 = v27[3];
        v31 = v12 + 1;
        do
        {
          *v14 = v28;
          v14[1] = v27[1];
          v14[2] = v29;
          v14[3] = v30;
          v14 += 4;
          --v31;
        }

        while (v31 > 1);
      }

      goto LABEL_142;
    }

    if (v5 > 15)
    {
      goto LABEL_142;
    }

    v15 = v7;
    v16 = 4 * v5;
    v17 = v5;
    if (v4 <= 0)
    {
      v23 = &v2->i8[-v6];
      v22 = v165;
    }

    else
    {
      v18 = v16;
      v19 = v6;
      v20 = v4;
      v21 = v4 + 1;
      v22 = v165;
      do
      {
        memcpy(v22, v9, v16);
        v9 = (v9 + v19);
        v22 += 4;
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
    v32 = 17 - v4;
    do
    {
      memcpy(v22, v23, v18);
      v22 += 4;
      --v32;
    }

    while (v32 > 1);
LABEL_27:
    v33 = (v165[0].i32 + v18);
    v35 = &v165[-1].i8[v18 + 12];
    v34 = *(&v165[0].u32[-1] + v18);
    v36 = 16 - v17;
    if (16 - v17 <= 1)
    {
      v37 = 1;
    }

    else
    {
      v37 = v36;
    }

    if (v36 >= 8)
    {
      v38 = v37 & 0x7FFFFFF8;
      v35 += 4 * v38;
      v39 = vdupq_n_s32(v34);
      v40 = &v165[1].i8[v18];
      v41 = v38;
      do
      {
        v40[-1] = v39;
        *v40 = v39;
        v40 += 2;
        v41 -= 8;
      }

      while (v41);
      v7 = v15;
      if (v38 == v37)
      {
LABEL_37:
        v45 = v33 + 15;
        v44 = v33[15];
        if (v36 >= 8)
        {
          v46 = v37 & 0x7FFFFFF8;
          v45 += v46;
          v47 = vdupq_n_s32(v44);
          v48 = &v165[5].i8[v18];
          v49 = v46;
          do
          {
            v48[-1] = v47;
            *v48 = v47;
            v48 += 2;
            v49 -= 8;
          }

          while (v49);
          if (v46 == v37)
          {
LABEL_44:
            v53 = v33 + 31;
            v52 = v33[31];
            if (v36 >= 8)
            {
              v54 = v37 & 0x7FFFFFF8;
              v53 += v54;
              v55 = vdupq_n_s32(v52);
              v56 = &v165[9].i8[v18];
              v57 = v54;
              do
              {
                v56[-1] = v55;
                *v56 = v55;
                v56 += 2;
                v57 -= 8;
              }

              while (v57);
              if (v54 == v37)
              {
LABEL_51:
                v61 = v33 + 47;
                v60 = v33[47];
                if (v36 >= 8)
                {
                  v62 = v37 & 0x7FFFFFF8;
                  v61 += v62;
                  v63 = vdupq_n_s32(v60);
                  v64 = &v165[13].i8[v18];
                  v65 = v62;
                  do
                  {
                    v64[-1] = v63;
                    *v64 = v63;
                    v64 += 2;
                    v65 -= 8;
                  }

                  while (v65);
                  if (v62 == v37)
                  {
LABEL_58:
                    v69 = v33 + 63;
                    v68 = v33[63];
                    if (v36 >= 8)
                    {
                      v70 = v37 & 0x7FFFFFF8;
                      v69 += v70;
                      v71 = vdupq_n_s32(v68);
                      v72 = &v165[17].i8[v18];
                      v73 = v70;
                      do
                      {
                        v72[-1] = v71;
                        *v72 = v71;
                        v72 += 2;
                        v73 -= 8;
                      }

                      while (v73);
                      if (v70 == v37)
                      {
LABEL_65:
                        v76 = v33 + 79;
                        v77 = v33[79];
                        if (v36 >= 8)
                        {
                          v78 = v37 & 0x7FFFFFF8;
                          v76 += v78;
                          v79 = vdupq_n_s32(v77);
                          v80 = &v165[21].i8[v18];
                          v81 = v78;
                          do
                          {
                            v80[-1] = v79;
                            *v80 = v79;
                            v80 += 2;
                            v81 -= 8;
                          }

                          while (v81);
                          if (v78 == v37)
                          {
LABEL_72:
                            v84 = v33 + 95;
                            v85 = v33[95];
                            if (v36 >= 8)
                            {
                              v86 = v37 & 0x7FFFFFF8;
                              v84 += v86;
                              v87 = vdupq_n_s32(v85);
                              v88 = &v165[25].i8[v18];
                              v89 = v86;
                              do
                              {
                                v88[-1] = v87;
                                *v88 = v87;
                                v88 += 2;
                                v89 -= 8;
                              }

                              while (v89);
                              if (v86 == v37)
                              {
LABEL_79:
                                v92 = v33 + 111;
                                v93 = v33[111];
                                if (v36 >= 8)
                                {
                                  v94 = v37 & 0x7FFFFFF8;
                                  v92 += v94;
                                  v95 = vdupq_n_s32(v93);
                                  v96 = &v165[29].i8[v18];
                                  v97 = v94;
                                  do
                                  {
                                    v96[-1] = v95;
                                    *v96 = v95;
                                    v96 += 2;
                                    v97 -= 8;
                                  }

                                  while (v97);
                                  if (v94 == v37)
                                  {
LABEL_86:
                                    v100 = v33 + 127;
                                    v101 = v33[127];
                                    if (v36 >= 8)
                                    {
                                      v102 = v37 & 0x7FFFFFF8;
                                      v100 += v102;
                                      v103 = vdupq_n_s32(v101);
                                      v104 = &v165[33].i8[v18];
                                      v105 = v102;
                                      do
                                      {
                                        v104[-1] = v103;
                                        *v104 = v103;
                                        v104 += 2;
                                        v105 -= 8;
                                      }

                                      while (v105);
                                      if (v102 == v37)
                                      {
LABEL_93:
                                        v108 = v33 + 143;
                                        v109 = v33[143];
                                        if (v36 >= 8)
                                        {
                                          v110 = v37 & 0x7FFFFFF8;
                                          v108 += v110;
                                          v111 = vdupq_n_s32(v109);
                                          v112 = &v165[37].i8[v18];
                                          v113 = v110;
                                          do
                                          {
                                            v112[-1] = v111;
                                            *v112 = v111;
                                            v112 += 2;
                                            v113 -= 8;
                                          }

                                          while (v113);
                                          if (v110 == v37)
                                          {
LABEL_100:
                                            v116 = v33 + 159;
                                            v117 = v33[159];
                                            if (v36 >= 8)
                                            {
                                              v118 = v37 & 0x7FFFFFF8;
                                              v116 += v118;
                                              v119 = vdupq_n_s32(v117);
                                              v120 = &v165[41].i8[v18];
                                              v121 = v118;
                                              do
                                              {
                                                v120[-1] = v119;
                                                *v120 = v119;
                                                v120 += 2;
                                                v121 -= 8;
                                              }

                                              while (v121);
                                              if (v118 == v37)
                                              {
LABEL_107:
                                                v124 = v33 + 175;
                                                v125 = v33[175];
                                                if (v36 >= 8)
                                                {
                                                  v126 = v37 & 0x7FFFFFF8;
                                                  v124 += v126;
                                                  v127 = vdupq_n_s32(v125);
                                                  v128 = &v165[45].i8[v18];
                                                  v129 = v126;
                                                  do
                                                  {
                                                    v128[-1] = v127;
                                                    *v128 = v127;
                                                    v128 += 2;
                                                    v129 -= 8;
                                                  }

                                                  while (v129);
                                                  if (v126 == v37)
                                                  {
LABEL_114:
                                                    v132 = v33 + 191;
                                                    v133 = v33[191];
                                                    if (v36 >= 8)
                                                    {
                                                      v134 = v37 & 0x7FFFFFF8;
                                                      v132 += v134;
                                                      v135 = vdupq_n_s32(v133);
                                                      v136 = &v165[49].i8[v18];
                                                      v137 = v134;
                                                      do
                                                      {
                                                        v136[-1] = v135;
                                                        *v136 = v135;
                                                        v136 += 2;
                                                        v137 -= 8;
                                                      }

                                                      while (v137);
                                                      if (v134 == v37)
                                                      {
LABEL_121:
                                                        v140 = v33 + 207;
                                                        v141 = v33[207];
                                                        if (v36 >= 8)
                                                        {
                                                          v142 = v37 & 0x7FFFFFF8;
                                                          v140 += v142;
                                                          v143 = vdupq_n_s32(v141);
                                                          v144 = &v165[53].i8[v18];
                                                          v145 = v142;
                                                          do
                                                          {
                                                            v144[-1] = v143;
                                                            *v144 = v143;
                                                            v144 += 2;
                                                            v145 -= 8;
                                                          }

                                                          while (v145);
                                                          if (v142 == v37)
                                                          {
LABEL_128:
                                                            v148 = v33 + 223;
                                                            v149 = v33[223];
                                                            if (v36 >= 8)
                                                            {
                                                              v150 = v37 & 0x7FFFFFF8;
                                                              v148 += v150;
                                                              v151 = vdupq_n_s32(v149);
                                                              v152 = &v165[57].i8[v18];
                                                              v153 = v150;
                                                              do
                                                              {
                                                                v152[-1] = v151;
                                                                *v152 = v151;
                                                                v152 += 2;
                                                                v153 -= 8;
                                                              }

                                                              while (v153);
                                                              if (v150 == v37)
                                                              {
                                                                goto LABEL_135;
                                                              }
                                                            }

                                                            else
                                                            {
                                                              LODWORD(v150) = 0;
                                                            }

                                                            v154 = v37 - v150;
                                                            v155 = v148 + 1;
                                                            do
                                                            {
                                                              *v155++ = v149;
                                                              --v154;
                                                            }

                                                            while (v154);
LABEL_135:
                                                            v156 = v33 + 239;
                                                            v157 = v33[239];
                                                            if (v36 >= 8)
                                                            {
                                                              v158 = v37 & 0x7FFFFFF8;
                                                              v156 += v158;
                                                              v159 = vdupq_n_s32(v157);
                                                              v160 = &v165[61].i8[v18];
                                                              v161 = v158;
                                                              do
                                                              {
                                                                v160[-1] = v159;
                                                                *v160 = v159;
                                                                v160 += 2;
                                                                v161 -= 8;
                                                              }

                                                              while (v161);
                                                              if (v158 == v37)
                                                              {
                                                                goto LABEL_142;
                                                              }
                                                            }

                                                            else
                                                            {
                                                              LODWORD(v158) = 0;
                                                            }

                                                            v162 = v37 - v158;
                                                            v163 = v156 + 1;
                                                            do
                                                            {
                                                              *v163++ = v157;
                                                              --v162;
                                                            }

                                                            while (v162);
LABEL_142:
                                                            result = pixInFullMB<(PixelFormat)1915892016,(ChromaFormat)3>(v165, 64, v8, v7);
                                                            v164 = *MEMORY[0x29EDCA608];
                                                            return result;
                                                          }
                                                        }

                                                        else
                                                        {
                                                          LODWORD(v142) = 0;
                                                        }

                                                        v146 = v37 - v142;
                                                        v147 = v140 + 1;
                                                        do
                                                        {
                                                          *v147++ = v141;
                                                          --v146;
                                                        }

                                                        while (v146);
                                                        goto LABEL_128;
                                                      }
                                                    }

                                                    else
                                                    {
                                                      LODWORD(v134) = 0;
                                                    }

                                                    v138 = v37 - v134;
                                                    v139 = v132 + 1;
                                                    do
                                                    {
                                                      *v139++ = v133;
                                                      --v138;
                                                    }

                                                    while (v138);
                                                    goto LABEL_121;
                                                  }
                                                }

                                                else
                                                {
                                                  LODWORD(v126) = 0;
                                                }

                                                v130 = v37 - v126;
                                                v131 = v124 + 1;
                                                do
                                                {
                                                  *v131++ = v125;
                                                  --v130;
                                                }

                                                while (v130);
                                                goto LABEL_114;
                                              }
                                            }

                                            else
                                            {
                                              LODWORD(v118) = 0;
                                            }

                                            v122 = v37 - v118;
                                            v123 = v116 + 1;
                                            do
                                            {
                                              *v123++ = v117;
                                              --v122;
                                            }

                                            while (v122);
                                            goto LABEL_107;
                                          }
                                        }

                                        else
                                        {
                                          LODWORD(v110) = 0;
                                        }

                                        v114 = v37 - v110;
                                        v115 = v108 + 1;
                                        do
                                        {
                                          *v115++ = v109;
                                          --v114;
                                        }

                                        while (v114);
                                        goto LABEL_100;
                                      }
                                    }

                                    else
                                    {
                                      LODWORD(v102) = 0;
                                    }

                                    v106 = v37 - v102;
                                    v107 = v100 + 1;
                                    do
                                    {
                                      *v107++ = v101;
                                      --v106;
                                    }

                                    while (v106);
                                    goto LABEL_93;
                                  }
                                }

                                else
                                {
                                  LODWORD(v94) = 0;
                                }

                                v98 = v37 - v94;
                                v99 = v92 + 1;
                                do
                                {
                                  *v99++ = v93;
                                  --v98;
                                }

                                while (v98);
                                goto LABEL_86;
                              }
                            }

                            else
                            {
                              LODWORD(v86) = 0;
                            }

                            v90 = v37 - v86;
                            v91 = v84 + 1;
                            do
                            {
                              *v91++ = v85;
                              --v90;
                            }

                            while (v90);
                            goto LABEL_79;
                          }
                        }

                        else
                        {
                          LODWORD(v78) = 0;
                        }

                        v82 = v37 - v78;
                        v83 = v76 + 1;
                        do
                        {
                          *v83++ = v77;
                          --v82;
                        }

                        while (v82);
                        goto LABEL_72;
                      }
                    }

                    else
                    {
                      LODWORD(v70) = 0;
                    }

                    v74 = v37 - v70;
                    v75 = v69 + 1;
                    do
                    {
                      *v75++ = v68;
                      --v74;
                    }

                    while (v74);
                    goto LABEL_65;
                  }
                }

                else
                {
                  LODWORD(v62) = 0;
                }

                v66 = v37 - v62;
                v67 = v61 + 1;
                do
                {
                  *v67++ = v60;
                  --v66;
                }

                while (v66);
                goto LABEL_58;
              }
            }

            else
            {
              LODWORD(v54) = 0;
            }

            v58 = v37 - v54;
            v59 = v53 + 1;
            do
            {
              *v59++ = v52;
              --v58;
            }

            while (v58);
            goto LABEL_51;
          }
        }

        else
        {
          LODWORD(v46) = 0;
        }

        v50 = v37 - v46;
        v51 = v45 + 1;
        do
        {
          *v51++ = v44;
          --v50;
        }

        while (v50);
        goto LABEL_44;
      }
    }

    else
    {
      LODWORD(v38) = 0;
      v7 = v15;
    }

    v42 = v37 - v38;
    v43 = (v35 + 4);
    do
    {
      *v43++ = v34;
      --v42;
    }

    while (v42);
    goto LABEL_37;
  }

  if ((v2 & 0xF) != 0 || (v6 & 0xF) != 0)
  {
    v12 = 0;
    goto LABEL_18;
  }

  v10 = *MEMORY[0x29EDCA608];

  return pixInFullMB<(PixelFormat)1915892016,(ChromaFormat)3>(v2, v6, v3, v7);
}