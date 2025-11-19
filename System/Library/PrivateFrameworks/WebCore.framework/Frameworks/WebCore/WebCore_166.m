uint64_t read_inter_segment_id(uint64_t a1, uint64_t a2, int a3, uint64_t a4, double a5, int32x4_t a6)
{
  v6 = **(a2 + 7864);
  v7 = *a2;
  v8 = *(a2 + 4);
  v9 = *(a1 + 536);
  v10 = *v6;
  v11 = mi_size_wide_8[v10];
  v12 = mi_size_high_7[v10];
  if (v9 - v8 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = (v9 - v8);
  }

  v14 = *(a1 + 532) - v7;
  if (v14 >= v12)
  {
    v15 = v12;
  }

  else
  {
    v15 = v14;
  }

  if (!*(a1 + 18992))
  {
    return 0;
  }

  v17 = v8 + v9 * v7;
  if (!*(a1 + 18993))
  {
    v18 = *(a1 + 19168);
    v19 = *(*(a1 + 232) + 80);
    if (v18)
    {
      if (v15 >= 1)
      {
        v20 = v17;
        v21 = v15;
        do
        {
          memcpy((v19 + v20), (v18 + v20), v13);
          v20 += v9;
          --v21;
        }

        while (v21);
      }
    }

    else if (v15 >= 1)
    {
      v50 = v15;
      v51 = (v19 + v17);
      do
      {
        bzero(v51, v13);
        v51 += v9;
        --v50;
      }

      while (v50);
    }

    v52 = *(a1 + 19168);
    if (!v52)
    {
      return 0;
    }

    result = 0x7FFFFFFFLL;
    if (v13 < 1 || v15 < 1)
    {
      return result;
    }

    v53 = 0;
    v54 = *(a1 + 536);
    v55 = v13 & 0x7FFFFFE0;
    v56 = v17;
    while (v13 >= 4)
    {
      if (v17 + v54 * v53 + v13 - 1 < v17 + v54 * v53 || (v13 - 1) >> 32 != 0)
      {
        break;
      }

      if (v13 >= 0x20)
      {
        v62 = v17 + v53 * v54;
        v63 = vdupq_n_s32(result);
        v64 = v52 + v62;
        v65 = *(v64 + 16);
        v66 = vmovl_u8(*v64);
        v67 = vmovl_high_u8(*v64);
        v68 = vmovl_u8(*v65.i8);
        v69 = vmovl_u16(*v68.i8);
        v70 = vmovl_high_u16(v68);
        v71 = vmovl_high_u8(v65);
        v72 = vmovl_u16(*v71.i8);
        v73 = vmovl_high_u16(v71);
        v74 = vminq_s32(v63, vmovl_high_u16(v67));
        v75 = vminq_s32(v63, vmovl_u16(*v67.i8));
        v76 = vminq_s32(v63, vmovl_high_u16(v66));
        v77 = vminq_s32(v63, vmovl_u16(*v66.i8));
        v78 = vminq_s32(v63, v73);
        v79 = vminq_s32(v63, v72);
        v80 = vminq_s32(v63, v70);
        v81 = vminq_s32(v63, v69);
        if (v55 != 32)
        {
          v82 = v52 + v62 + 32;
          v83 = *(v82 + 16);
          v84 = vmovl_u8(*v82);
          v85 = vmovl_high_u8(*v82);
          v86 = vmovl_u8(*v83.i8);
          v87 = vmovl_high_u8(v83);
          v74 = vminq_s32(v74, vmovl_high_u16(v85));
          v75 = vminq_s32(v75, vmovl_u16(*v85.i8));
          v76 = vminq_s32(v76, vmovl_high_u16(v84));
          v77 = vminq_s32(v77, vmovl_u16(*v84.i8));
          v78 = vminq_s32(v78, vmovl_high_u16(v87));
          v79 = vminq_s32(v79, vmovl_u16(*v87.i8));
          v80 = vminq_s32(v80, vmovl_high_u16(v86));
          v81 = vminq_s32(v81, vmovl_u16(*v86.i8));
          if (v55 != 64)
          {
            v88 = v52 + v62 + 64;
            v89 = *(v88 + 16);
            v90 = vmovl_u8(*v88);
            v91 = vmovl_high_u8(*v88);
            v92 = vmovl_u8(*v89.i8);
            v93 = vmovl_high_u8(v89);
            v74 = vminq_s32(v74, vmovl_high_u16(v91));
            v75 = vminq_s32(v75, vmovl_u16(*v91.i8));
            v76 = vminq_s32(v76, vmovl_high_u16(v90));
            v77 = vminq_s32(v77, vmovl_u16(*v90.i8));
            v78 = vminq_s32(v78, vmovl_high_u16(v93));
            v79 = vminq_s32(v79, vmovl_u16(*v93.i8));
            v80 = vminq_s32(v80, vmovl_high_u16(v92));
            v81 = vminq_s32(v81, vmovl_u16(*v92.i8));
            if (v55 != 96)
            {
              v94 = v52 + v62 + 96;
              v95 = *(v94 + 16);
              v96 = vmovl_u8(*v94);
              v97 = vmovl_high_u8(*v94);
              v98 = vmovl_u8(*v95.i8);
              v99 = vmovl_high_u8(v95);
              v74 = vminq_s32(v74, vmovl_high_u16(v97));
              v75 = vminq_s32(v75, vmovl_u16(*v97.i8));
              v76 = vminq_s32(v76, vmovl_high_u16(v96));
              v77 = vminq_s32(v77, vmovl_u16(*v96.i8));
              v78 = vminq_s32(v78, vmovl_high_u16(v99));
              v79 = vminq_s32(v79, vmovl_u16(*v99.i8));
              v80 = vminq_s32(v80, vmovl_high_u16(v98));
              v81 = vminq_s32(v81, vmovl_u16(*v98.i8));
              if (v55 != 128)
              {
                v100 = v52 + v62 + 128;
                v101 = *(v100 + 16);
                v102 = vmovl_u8(*v100);
                v103 = vmovl_high_u8(*v100);
                v104 = vmovl_u8(*v101.i8);
                v105 = vmovl_high_u8(v101);
                v74 = vminq_s32(v74, vmovl_high_u16(v103));
                v75 = vminq_s32(v75, vmovl_u16(*v103.i8));
                v76 = vminq_s32(v76, vmovl_high_u16(v102));
                v77 = vminq_s32(v77, vmovl_u16(*v102.i8));
                v78 = vminq_s32(v78, vmovl_high_u16(v105));
                v79 = vminq_s32(v79, vmovl_u16(*v105.i8));
                v80 = vminq_s32(v80, vmovl_high_u16(v104));
                v81 = vminq_s32(v81, vmovl_u16(*v104.i8));
                if (v55 != 160)
                {
                  v106 = v52 + v62 + 160;
                  v107 = *(v106 + 16);
                  v108 = vmovl_u8(*v106);
                  v109 = vmovl_high_u8(*v106);
                  v110 = vmovl_u8(*v107.i8);
                  v111 = vmovl_high_u8(v107);
                  v74 = vminq_s32(v74, vmovl_high_u16(v109));
                  v75 = vminq_s32(v75, vmovl_u16(*v109.i8));
                  v76 = vminq_s32(v76, vmovl_high_u16(v108));
                  v77 = vminq_s32(v77, vmovl_u16(*v108.i8));
                  v78 = vminq_s32(v78, vmovl_high_u16(v111));
                  v79 = vminq_s32(v79, vmovl_u16(*v111.i8));
                  v80 = vminq_s32(v80, vmovl_high_u16(v110));
                  v81 = vminq_s32(v81, vmovl_u16(*v110.i8));
                  if (v55 != 192)
                  {
                    v112 = v52 + v62 + 192;
                    v113 = *(v112 + 16);
                    v114 = vmovl_u8(*v112);
                    v115 = vmovl_high_u8(*v112);
                    v116 = vmovl_u8(*v113.i8);
                    v117 = vmovl_high_u8(v113);
                    v74 = vminq_s32(v74, vmovl_high_u16(v115));
                    v75 = vminq_s32(v75, vmovl_u16(*v115.i8));
                    v76 = vminq_s32(v76, vmovl_high_u16(v114));
                    v77 = vminq_s32(v77, vmovl_u16(*v114.i8));
                    v78 = vminq_s32(v78, vmovl_high_u16(v117));
                    v79 = vminq_s32(v79, vmovl_u16(*v117.i8));
                    v80 = vminq_s32(v80, vmovl_high_u16(v116));
                    v81 = vminq_s32(v81, vmovl_u16(*v116.i8));
                  }
                }
              }
            }
          }
        }

        a6 = vminq_s32(vminq_s32(v76, v80), vminq_s32(v74, v78));
        result = vminvq_s32(vminq_s32(vminq_s32(vminq_s32(v77, v81), vminq_s32(v75, v79)), a6));
        if (v55 == v13)
        {
          goto LABEL_47;
        }

        v61 = v13 & 0x7FFFFFE0;
        v58 = v61;
        if ((v13 & 0x1C) == 0)
        {
          goto LABEL_54;
        }
      }

      else
      {
        v61 = 0;
      }

      v118 = vdupq_n_s32(result);
      v119 = v61 - (v13 & 0x7FFFFFFC);
      v120 = v56 + v61;
      do
      {
        a6.i32[0] = *(v52 + v120);
        a6 = vmovl_u16(*&vmovl_u8(*a6.i8));
        v118 = vminq_s32(v118, a6);
        v120 += 4;
        v119 += 4;
      }

      while (v119);
      result = vminvq_s32(v118);
      v58 = v13 & 0x7FFFFFFC;
      if (v58 != v13)
      {
        goto LABEL_54;
      }

LABEL_47:
      ++v53;
      v56 += v54;
      if (v53 == v15)
      {
        return result;
      }
    }

    v58 = 0;
LABEL_54:
    v59 = v13 - v58;
    v60 = v56 + v58;
    do
    {
      if (result >= *(v52 + v60))
      {
        result = *(v52 + v60);
      }

      else
      {
        result = result;
      }

      ++v60;
      --v59;
    }

    while (v59);
    goto LABEL_47;
  }

  if (a3)
  {
    if (!*(a1 + 19160))
    {
      return 0;
    }

LABEL_24:
    if (!*(a1 + 18995))
    {
      goto LABEL_126;
    }

    v26 = *(a2 + 7880);
    v27 = *(a2 + 7888);
    if (v27)
    {
      v27 = (*(v27 + 167) >> 3) & 1;
    }

    if (v26)
    {
      v26 = (*(v26 + 167) >> 3) & 1;
    }

    v28 = (*(a2 + 10648) + 6 * (v26 + v27) + 12490);
    v29 = *(a4 + 48);
    v30 = *(a4 + 52);
    v31 = v30 >> 8;
    v32 = -2;
    v33 = 8;
    v34 = v28;
    do
    {
      v35 = v30;
      v36 = *v34++;
      v37 = v31 * (v36 >> 6);
      ++v32;
      v33 -= 4;
      v30 = v33 + (v37 >> 1);
    }

    while (HIWORD(v29) < v30);
    v38 = v35 - (v37 >> 1) - v33;
    v39 = 15 - (__clz(v38) ^ 0x1F);
    v40 = *(a4 + 54) - v39;
    *(a4 + 54) = v40;
    v41 = ((v29 - (v30 << 16) + 1) << v39) - 1;
    *(a4 + 48) = v41;
    *(a4 + 52) = v38 << v39;
    v42 = v32 + 1;
    if ((v40 & 0x8000) == 0)
    {
LABEL_87:
      if (*(a4 + 56))
      {
        v142 = v28[2];
        v143 = (v142 >> 4) + 4;
        v144 = *v28;
        if (v42 < 1)
        {
          v145 = v144 - (v144 >> v143);
        }

        else
        {
          v145 = v144 + ((0x8000 - v144) >> v143);
        }

        *v28 = v145;
        if (v142 < 0x20)
        {
          LOWORD(v142) = v142 + 1;
        }

        v28[2] = v142;
      }

      *(v6 + 167) = *(v6 + 167) & 0xFFF7 | (8 * (v42 & 1));
      if ((v32 & 1) == 0)
      {
        v146 = *(a1 + 19168);
        if (!v146)
        {
          segment_id = 0;
          result = 0;
          if (v15 < 1)
          {
            return result;
          }

LABEL_128:
          v24 = result;
          v216 = (*(*(a1 + 232) + 80) + v17);
          do
          {
            memset(v216, segment_id, v13);
            v216 += v9;
            --v15;
          }

          while (v15);
          return v24;
        }

        segment_id = 0x7FFFFFFF;
        if (v13 >= 1 && v15 >= 1)
        {
          v148 = 0;
          v149 = *(a1 + 536);
          v150 = v13 & 0x7FFFFFE0;
          v151 = v17;
          while (v13 >= 4)
          {
            if (v17 + v149 * v148 + v13 - 1 < v17 + v149 * v148 || (v13 - 1) >> 32 != 0)
            {
              break;
            }

            if (v13 >= 0x20)
            {
              v157 = v17 + v148 * v149;
              v158 = vdupq_n_s32(segment_id);
              v159 = v146 + v157;
              v160 = *(v159 + 16);
              v161 = vmovl_u8(*v159);
              v162 = vmovl_high_u8(*v159);
              v163 = vmovl_u8(*v160.i8);
              v164 = vmovl_u16(*v163.i8);
              v165 = vmovl_high_u16(v163);
              v166 = vmovl_high_u8(v160);
              v167 = vmovl_u16(*v166.i8);
              v168 = vmovl_high_u16(v166);
              v169 = vminq_s32(v158, vmovl_high_u16(v162));
              v170 = vminq_s32(v158, vmovl_u16(*v162.i8));
              v171 = vminq_s32(v158, vmovl_high_u16(v161));
              v172 = vminq_s32(v158, vmovl_u16(*v161.i8));
              v173 = vminq_s32(v158, v168);
              v174 = vminq_s32(v158, v167);
              v175 = vminq_s32(v158, v165);
              v176 = vminq_s32(v158, v164);
              if (v150 != 32)
              {
                v177 = v146 + v157 + 32;
                v178 = *(v177 + 16);
                v179 = vmovl_u8(*v177);
                v180 = vmovl_high_u8(*v177);
                v181 = vmovl_u8(*v178.i8);
                v182 = vmovl_high_u8(v178);
                v169 = vminq_s32(v169, vmovl_high_u16(v180));
                v170 = vminq_s32(v170, vmovl_u16(*v180.i8));
                v171 = vminq_s32(v171, vmovl_high_u16(v179));
                v172 = vminq_s32(v172, vmovl_u16(*v179.i8));
                v173 = vminq_s32(v173, vmovl_high_u16(v182));
                v174 = vminq_s32(v174, vmovl_u16(*v182.i8));
                v175 = vminq_s32(v175, vmovl_high_u16(v181));
                v176 = vminq_s32(v176, vmovl_u16(*v181.i8));
                if (v150 != 64)
                {
                  v183 = v146 + v157 + 64;
                  v184 = *(v183 + 16);
                  v185 = vmovl_u8(*v183);
                  v186 = vmovl_high_u8(*v183);
                  v187 = vmovl_u8(*v184.i8);
                  v188 = vmovl_high_u8(v184);
                  v169 = vminq_s32(v169, vmovl_high_u16(v186));
                  v170 = vminq_s32(v170, vmovl_u16(*v186.i8));
                  v171 = vminq_s32(v171, vmovl_high_u16(v185));
                  v172 = vminq_s32(v172, vmovl_u16(*v185.i8));
                  v173 = vminq_s32(v173, vmovl_high_u16(v188));
                  v174 = vminq_s32(v174, vmovl_u16(*v188.i8));
                  v175 = vminq_s32(v175, vmovl_high_u16(v187));
                  v176 = vminq_s32(v176, vmovl_u16(*v187.i8));
                  if (v150 != 96)
                  {
                    v189 = v146 + v157 + 96;
                    v190 = *(v189 + 16);
                    v191 = vmovl_u8(*v189);
                    v192 = vmovl_high_u8(*v189);
                    v193 = vmovl_u8(*v190.i8);
                    v194 = vmovl_high_u8(v190);
                    v169 = vminq_s32(v169, vmovl_high_u16(v192));
                    v170 = vminq_s32(v170, vmovl_u16(*v192.i8));
                    v171 = vminq_s32(v171, vmovl_high_u16(v191));
                    v172 = vminq_s32(v172, vmovl_u16(*v191.i8));
                    v173 = vminq_s32(v173, vmovl_high_u16(v194));
                    v174 = vminq_s32(v174, vmovl_u16(*v194.i8));
                    v175 = vminq_s32(v175, vmovl_high_u16(v193));
                    v176 = vminq_s32(v176, vmovl_u16(*v193.i8));
                    if (v150 != 128)
                    {
                      v195 = v146 + v157 + 128;
                      v196 = *(v195 + 16);
                      v197 = vmovl_u8(*v195);
                      v198 = vmovl_high_u8(*v195);
                      v199 = vmovl_u8(*v196.i8);
                      v200 = vmovl_high_u8(v196);
                      v169 = vminq_s32(v169, vmovl_high_u16(v198));
                      v170 = vminq_s32(v170, vmovl_u16(*v198.i8));
                      v171 = vminq_s32(v171, vmovl_high_u16(v197));
                      v172 = vminq_s32(v172, vmovl_u16(*v197.i8));
                      v173 = vminq_s32(v173, vmovl_high_u16(v200));
                      v174 = vminq_s32(v174, vmovl_u16(*v200.i8));
                      v175 = vminq_s32(v175, vmovl_high_u16(v199));
                      v176 = vminq_s32(v176, vmovl_u16(*v199.i8));
                      if (v150 != 160)
                      {
                        v201 = v146 + v157 + 160;
                        v202 = *(v201 + 16);
                        v203 = vmovl_u8(*v201);
                        v204 = vmovl_high_u8(*v201);
                        v205 = vmovl_u8(*v202.i8);
                        v206 = vmovl_high_u8(v202);
                        v169 = vminq_s32(v169, vmovl_high_u16(v204));
                        v170 = vminq_s32(v170, vmovl_u16(*v204.i8));
                        v171 = vminq_s32(v171, vmovl_high_u16(v203));
                        v172 = vminq_s32(v172, vmovl_u16(*v203.i8));
                        v173 = vminq_s32(v173, vmovl_high_u16(v206));
                        v174 = vminq_s32(v174, vmovl_u16(*v206.i8));
                        v175 = vminq_s32(v175, vmovl_high_u16(v205));
                        v176 = vminq_s32(v176, vmovl_u16(*v205.i8));
                        if (v150 != 192)
                        {
                          v207 = v146 + v157 + 192;
                          v208 = *(v207 + 16);
                          v209 = vmovl_u8(*v207);
                          v210 = vmovl_high_u8(*v207);
                          v211 = vmovl_u8(*v208.i8);
                          v212 = vmovl_high_u8(v208);
                          v169 = vminq_s32(v169, vmovl_high_u16(v210));
                          v170 = vminq_s32(v170, vmovl_u16(*v210.i8));
                          v171 = vminq_s32(v171, vmovl_high_u16(v209));
                          v172 = vminq_s32(v172, vmovl_u16(*v209.i8));
                          v173 = vminq_s32(v173, vmovl_high_u16(v212));
                          v174 = vminq_s32(v174, vmovl_u16(*v212.i8));
                          v175 = vminq_s32(v175, vmovl_high_u16(v211));
                          v176 = vminq_s32(v176, vmovl_u16(*v211.i8));
                        }
                      }
                    }
                  }
                }
              }

              a6 = vminq_s32(vminq_s32(v171, v175), vminq_s32(v169, v173));
              segment_id = vminvq_s32(vminq_s32(vminq_s32(vminq_s32(v172, v176), vminq_s32(v170, v174)), a6));
              if (v150 == v13)
              {
                goto LABEL_99;
              }

              v156 = v13 & 0x7FFFFFE0;
              v153 = v156;
              if ((v13 & 0x1C) == 0)
              {
                goto LABEL_106;
              }
            }

            else
            {
              v156 = 0;
            }

            v213 = vdupq_n_s32(segment_id);
            v214 = v156 - (v13 & 0x7FFFFFFC);
            v215 = v151 + v156;
            do
            {
              a6.i32[0] = *(v146 + v215);
              a6 = vmovl_u16(*&vmovl_u8(*a6.i8));
              v213 = vminq_s32(v213, a6);
              v215 += 4;
              v214 += 4;
            }

            while (v214);
            segment_id = vminvq_s32(v213);
            v153 = v13 & 0x7FFFFFFC;
            if (v153 != v13)
            {
              goto LABEL_106;
            }

LABEL_99:
            ++v148;
            v151 += v149;
            if (v148 == v15)
            {
              goto LABEL_127;
            }
          }

          v153 = 0;
LABEL_106:
          v154 = v13 - v153;
          v155 = v151 + v153;
          do
          {
            if (segment_id >= *(v146 + v155))
            {
              segment_id = *(v146 + v155);
            }

            ++v155;
            --v154;
          }

          while (v154);
          goto LABEL_99;
        }

LABEL_127:
        result = segment_id;
        if (v15 < 1)
        {
          return result;
        }

        goto LABEL_128;
      }

LABEL_126:
      segment_id = read_segment_id(a1, a2, a4, 0);
      goto LABEL_127;
    }

    v43 = v40;
    v44 = *(a4 + 32);
    v45 = *(a4 + 40);
    if (v45 >= v44)
    {
      v49 = *(a4 + 40);
      goto LABEL_85;
    }

    v46 = 8 - v40;
    if (v46 >= 7)
    {
      v47 = 7;
    }

    else
    {
      v47 = 8 - v40;
    }

    v48 = ((v47 ^ 0xFu) - v43) >> 3;
    if (v48 >= ~v45 + v44)
    {
      v48 = ~v45 + v44;
    }

    if (v48 >= 0xF)
    {
      v121 = v48 + 1;
      v122 = (v48 + 1) & 0x3FFFFFF0;
      v49 = &v45->u8[v122];
      v123 = 0uLL;
      v124 = v43;
      v125 = v41;
      v126 = vdupq_n_s32(v46);
      v127 = vaddq_s32(v126, xmmword_273BC3230);
      v128 = vaddq_s32(v126, xmmword_273BC3240);
      v129 = vaddq_s32(v126, xmmword_273BC3250);
      v130 = vaddq_s32(v126, xmmword_273BC3220);
      v131.i64[0] = 0x8000800080008;
      v131.i64[1] = 0x8000800080008;
      v132.i64[0] = 0x7F0000007FLL;
      v132.i64[1] = 0x7F0000007FLL;
      v133 = v122;
      v134 = 0uLL;
      v135 = 0uLL;
      v136 = 0uLL;
      do
      {
        v137 = *v45++;
        v135 = veorq_s8(vshlq_u32(vqtbl1q_s8(v137, xmmword_273B8E7B0), v128), v135);
        v134 = veorq_s8(vshlq_u32(vqtbl1q_s8(v137, xmmword_273B8E7C0), v129), v134);
        v125 = veorq_s8(vshlq_u32(vqtbl1q_s8(v137, xmmword_273B8E7D0), v130), v125);
        v136 = veorq_s8(vshlq_u32(vqtbl1q_s8(v137, xmmword_273B8E7A0), v127), v136);
        v124 = vaddq_s16(v124, v131);
        v123 = vaddq_s16(v123, v131);
        v130 = vaddq_s32(v130, v132);
        v129 = vaddq_s32(v129, v132);
        v128 = vaddq_s32(v128, v132);
        v127 = vaddq_s32(v127, v132);
        v133 -= 16;
      }

      while (v133);
      v138 = v45 < v44;
      LOWORD(v43) = vaddvq_s16(vaddq_s16(v124, v123));
      v139 = veorq_s8(veorq_s8(v125, v135), veorq_s8(v134, v136));
      a6.i64[0] = vextq_s8(v139, v139, 8uLL).u64[0];
      *v139.i8 = veor_s8(*v139.i8, *a6.i8);
      v41 = v139.i32[0] ^ v139.i32[1];
      if (v121 == v122)
      {
        goto LABEL_84;
      }

      v46 -= 8 * v122;
    }

    else
    {
      v49 = *(a4 + 40);
    }

    do
    {
      v140 = *v49++;
      v41 ^= v140 << v46;
      LOWORD(v43) = v43 + 8;
      v138 = v49 < v44;
      v141 = v46 >= 8;
      v46 -= 8;
    }

    while (v141 && v49 < v44);
LABEL_84:
    if (v138)
    {
LABEL_86:
      *(a4 + 48) = v41;
      *(a4 + 54) = v43;
      *(a4 + 40) = v49;
      goto LABEL_87;
    }

LABEL_85:
    *(a4 + 24) = *(a4 + 24) - v43 + 0x4000;
    LOWORD(v43) = 0x4000;
    goto LABEL_86;
  }

  if (!v6[144])
  {
    goto LABEL_24;
  }

  if (*(a1 + 18995))
  {
    *(v6 + 167) &= ~8u;
  }

  v22 = read_segment_id(a1, a2, a4, 1);
  result = v22;
  if (v15 >= 1)
  {
    v24 = v22;
    v25 = (*(*(a1 + 232) + 80) + v17);
    do
    {
      memset(v25, v22, v13);
      v25 += v9;
      --v15;
    }

    while (v15);
    return v24;
  }

  return result;
}

unint64_t read_inter_block_mode_info(_BYTE *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  v6 = a2;
  v7 = a1;
  v1901 = *MEMORY[0x277D85DE8];
  v8 = *a3;
  v1893 = a1 + 15201;
  v1888 = a1[15693];
  v9 = (a2 + 7872);
  v10 = 0uLL;
  memset(v1897, 0, sizeof(v1897));
  v1887 = *(a2 + 10648);
  a3[3] = 0;
  *(a3 + 71) = 0;
  v11 = a2 + 10634;
  *(a2 + 10634) = 0;
  v12 = *(a2 + 7888);
  v13 = *(a2 + 7880);
  v14 = *(a2 + 7872);
  v15 = *(a2 + 7873);
  if (v14 == 1 && ((*(v12 + 167) & 0x80) != 0 || *(v12 + 16) >= 1))
  {
    ++*(v11 + *(v12 + 16));
    v16 = *(v12 + 17);
    if (v16 >= 1)
    {
      ++*(v11 + v16);
    }
  }

  if (v15 && ((*(v13 + 167) & 0x80) != 0 || *(v13 + 16) >= 1))
  {
    ++*(v11 + *(v13 + 16));
    v17 = *(v13 + 17);
    if (v17 >= 1)
    {
      ++*(v11 + v17);
    }
  }

  v18 = **(a2 + 7864);
  v1883 = (a2 + 7872);
  v1891 = v8;
  if ((*(v18 + 167) & 0x40) != 0)
  {
    v21 = a1[15228] + 1;
    a3[16] = v21;
    v22 = a1[15232] + 1;
    a3[17] = v22;
    v23 = (a3 + 17);
    if (v22 < 1)
    {
      goto LABEL_105;
    }

    goto LABEL_17;
  }

  if (!a1[34192])
  {
    goto LABEL_20;
  }

  v19 = *(a3 + 167) & 7;
  v20 = *&a1[4 * v19 + 34324];
  if ((v20 & 0x20) != 0)
  {
    v21 = a1[16 * v19 + 34206];
    goto LABEL_436;
  }

  if ((v20 & 0xC0) == 0)
  {
LABEL_20:
    v24 = *v18;
    v25 = block_size_wide_9[v24];
    v26 = block_size_high_8[v24];
    if (v25 < v26)
    {
      v26 = v25;
    }

    if (v26 < 8)
    {
      goto LABEL_91;
    }

    v27 = *v1893;
    if (v27 != 2)
    {
LABEL_78:
      if (v27)
      {
        if (v27 == 1)
        {
          comp_reference_type_context = av1_get_comp_reference_type_context(a2);
          v84 = *(v6 + 10648);
          v85 = (v84 + 6 * comp_reference_type_context + 11480);
          v86 = *(a4 + 48);
          v87 = *(a4 + 52);
          v88 = v87 >> 8;
          v89 = -1;
          v90 = 8;
          v91 = v85;
          do
          {
            v92 = v87;
            v93 = *v91++;
            ++v89;
            v94 = v88 * (v93 >> 6);
            v90 -= 4;
            v87 = v90 + (v94 >> 1);
          }

          while (HIWORD(v86) < v87);
          v95 = v92 - (v94 >> 1) - v90;
          v96 = 15 - (__clz(v95) ^ 0x1F);
          v97 = *(a4 + 54) - v96;
          *(a4 + 54) = v97;
          v98 = ((v86 - (v87 << 16) + 1) << v96) - 1;
          *(a4 + 48) = v98;
          *(a4 + 52) = v95 << v96;
          if ((v97 & 0x8000) == 0)
          {
LABEL_248:
            v335 = *(a4 + 56);
            if (*(a4 + 56))
            {
              v336 = v85[2];
              v337 = (v336 >> 4) + 4;
              v89 = v89;
              v338 = *v85;
              if (v89 < 1)
              {
                v339 = v338 - (v338 >> v337);
              }

              else
              {
                v339 = v338 + ((0x8000 - v338) >> v337);
              }

              *v85 = v339;
              if (v336 < 0x20)
              {
                LOWORD(v336) = v336 + 1;
              }

              v85[2] = v336;
            }

            else
            {
              v89 = v89;
            }

            if (!v89)
            {
              pred_context_uni_comp_ref_p = av1_get_pred_context_uni_comp_ref_p(v6, v83);
              if (aom_read_symbol_(a4, (v84 + 18 * pred_context_uni_comp_ref_p + 11510), 2))
              {
                *(a3 + 8) = 1797;
                v22 = 7;
              }

              else
              {
                v365 = v1883[2764];
                v366 = v1883[2766] + v1883[2765];
                v396 = v366 == v365;
                v367 = 2 * (v366 <= v365);
                if (v396)
                {
                  v367 = 1;
                }

                if (aom_read_symbol_(a4, (*(v6 + 10648) + 18 * v367 + 11516), 2))
                {
                  v368 = v1883[2765];
                  v369 = v1883[2766];
                  v396 = v368 == v369;
                  v370 = 2 * (v368 >= v369);
                  if (v396)
                  {
                    v370 = 1;
                  }

                  symbol = aom_read_symbol_(a4, (*(v6 + 10648) + 18 * v370 + 11522), 2);
                  a3[16] = 1;
                  if (symbol)
                  {
                    v22 = 4;
                    a3[17] = 4;
                  }

                  else
                  {
                    v22 = 3;
                    a3[17] = 3;
                  }
                }

                else
                {
                  *(a3 + 8) = 513;
                  v22 = 2;
                }
              }

LABEL_388:
              v23 = (a3 + 17);
              v21 = a3[16];
              if (v21 > 4)
              {
                goto LABEL_389;
              }

              goto LABEL_18;
            }

            v340 = v1883[2764] + v1883[2763];
            v341 = v1883[2766] + v1883[2765];
            v396 = v340 == v341;
            v342 = 2 * (v340 >= v341);
            if (v396)
            {
              v343 = 1;
            }

            else
            {
              v343 = v342;
            }

            v344 = v84 + 11564;
            v345 = (v84 + 11564 + 18 * v343);
            v346 = *(a4 + 52);
            v347 = v346 >> 8;
            v348 = 8;
            v349 = 1;
            v350 = v345;
            do
            {
              v351 = v346;
              v352 = *v350++;
              v353 = v347 * (v352 >> 6);
              v348 -= 4;
              v346 = v348 + (v353 >> 1);
              --v349;
            }

            while (HIWORD(v98) < v346);
            v354 = v351 - (v353 >> 1) - v348;
            v355 = 15 - (__clz(v354) ^ 0x1F);
            v356 = *(a4 + 54) - v355;
            *(a4 + 54) = v356;
            v357 = ((v98 - (v346 << 16) + 1) << v355) - 1;
            *(a4 + 48) = v357;
            *(a4 + 52) = v354 << v355;
            if ((v356 & 0x8000) == 0)
            {
LABEL_329:
              if (v335)
              {
                v442 = v345[2];
                v443 = (v442 >> 4) + 4;
                v444 = *v345;
                if (-v349 < 1)
                {
                  v445 = v444 - (v444 >> v443);
                }

                else
                {
                  v445 = v444 + ((0x8000 - v444) >> v443);
                }

                *v345 = v445;
                if (v442 < 0x20)
                {
                  LOWORD(v442) = v442 + 1;
                }

                v345[2] = v442;
              }

              if (v349)
              {
                v446 = v1883[2765];
                v447 = v1883[2766];
                v396 = v446 == v447;
                v448 = 2 * (v446 >= v447);
                if (v396)
                {
                  v448 = 1;
                }

                v449 = aom_read_symbol_(a4, (v344 + 18 * v448 + 12), 2) == 0;
                v450 = 3;
              }

              else
              {
                v451 = v1883[2763];
                v452 = v1883[2764];
                v396 = v451 == v452;
                v453 = 2 * (v451 >= v452);
                if (v396)
                {
                  v453 = 1;
                }

                v449 = aom_read_symbol_(a4, (v344 + 18 * v453 + 6), 2) == 0;
                v450 = 1;
              }

              if (!v449)
              {
                ++v450;
              }

              a3[16] = v450;
              v454 = v1883[2768] + v1883[2767];
              v455 = v1883[2769];
              v396 = v454 == v455;
              v456 = 2 * (v454 >= v455);
              if (v396)
              {
                v457 = 1;
              }

              else
              {
                v457 = v456;
              }

              v458 = *(v6 + 10648) + 11618;
              v459 = (v458 + 12 * v457);
              v460 = *(a4 + 48);
              v461 = *(a4 + 52);
              v462 = v461 >> 8;
              v463 = 8;
              v464 = 1;
              v465 = v459;
              do
              {
                v466 = v461;
                v467 = *v465++;
                v468 = v462 * (v467 >> 6);
                v463 -= 4;
                v461 = v463 + (v468 >> 1);
                --v464;
              }

              while (HIWORD(v460) < v461);
              v469 = v466 - (v468 >> 1) - v463;
              v470 = 15 - (__clz(v469) ^ 0x1F);
              v471 = *(a4 + 54) - v470;
              *(a4 + 54) = v471;
              v472 = ((v460 - (v461 << 16) + 1) << v470) - 1;
              *(a4 + 48) = v472;
              *(a4 + 52) = v469 << v470;
              if ((v471 & 0x8000) == 0)
              {
                goto LABEL_372;
              }

              v473 = v471;
              v474 = *(a4 + 32);
              v475 = *(a4 + 40);
              if (v475 >= v474)
              {
                v479 = *(a4 + 40);
                goto LABEL_370;
              }

              v476 = 8 - v473;
              if ((8 - v473) >= 7)
              {
                v477 = 7;
              }

              else
              {
                v477 = 8 - v473;
              }

              v478 = ((v477 ^ 0xFu) - v473) >> 3;
              if (v478 >= ~v475 + v474)
              {
                v478 = ~v475 + v474;
              }

              if (v478 >= 0xF)
              {
                v480 = v478 + 1;
                v481 = (v478 + 1) & 0x3FFFFFF0;
                v479 = &v475->u8[v481];
                v482 = 0uLL;
                v483 = v473;
                v484 = v472;
                v485 = vdupq_n_s32(v476);
                v486 = vaddq_s32(v485, xmmword_273BC3230);
                v487 = vaddq_s32(v485, xmmword_273BC3240);
                v488 = vaddq_s32(v485, xmmword_273BC3250);
                v489 = vaddq_s32(v485, xmmword_273BC3220);
                v490.i64[0] = 0x8000800080008;
                v490.i64[1] = 0x8000800080008;
                v491.i64[0] = 0x7F0000007FLL;
                v491.i64[1] = 0x7F0000007FLL;
                v492 = v481;
                v493 = 0uLL;
                v494 = 0uLL;
                v495 = 0uLL;
                do
                {
                  v496 = *v475++;
                  v494 = veorq_s8(vshlq_u32(vqtbl1q_s8(v496, xmmword_273B8E7B0), v487), v494);
                  v493 = veorq_s8(vshlq_u32(vqtbl1q_s8(v496, xmmword_273B8E7C0), v488), v493);
                  v484 = veorq_s8(vshlq_u32(vqtbl1q_s8(v496, xmmword_273B8E7D0), v489), v484);
                  v495 = veorq_s8(vshlq_u32(vqtbl1q_s8(v496, xmmword_273B8E7A0), v486), v495);
                  v483 = vaddq_s16(v483, v490);
                  v482 = vaddq_s16(v482, v490);
                  v489 = vaddq_s32(v489, v491);
                  v488 = vaddq_s32(v488, v491);
                  v487 = vaddq_s32(v487, v491);
                  v486 = vaddq_s32(v486, v491);
                  v492 -= 16;
                }

                while (v492);
                v497 = v475 < v474;
                v498 = vaddq_s16(v483, v482);
                v498.i16[0] = vaddvq_s16(v498);
                v473 = v498.i32[0];
                v10 = veorq_s8(veorq_s8(v484, v494), veorq_s8(v493, v495));
                *v10.i8 = veor_s8(*v10.i8, *&vextq_s8(v10, v10, 8uLL));
                v472 = v10.i32[0] ^ v10.i32[1];
                if (v480 == v481)
                {
                  goto LABEL_369;
                }

                v476 -= 8 * v481;
              }

              else
              {
                v479 = *(a4 + 40);
              }

              do
              {
                v499 = *v479++;
                v472 ^= v499 << v476;
                v473 += 8;
                v497 = v479 < v474;
                v75 = v476 >= 8;
                v476 -= 8;
              }

              while (v75 && v479 < v474);
LABEL_369:
              if (v497)
              {
LABEL_371:
                *(a4 + 48) = v472;
                *(a4 + 54) = v473;
                *(a4 + 40) = v479;
LABEL_372:
                if (*(a4 + 56))
                {
                  v500 = v459[2];
                  v501 = (v500 >> 4) + 4;
                  v502 = *v459;
                  if (-v464 < 1)
                  {
                    v503 = v502 - (v502 >> v501);
                  }

                  else
                  {
                    v503 = v502 + ((0x8000 - v502) >> v501);
                  }

                  *v459 = v503;
                  if (v500 < 0x20)
                  {
                    LOWORD(v500) = v500 + 1;
                  }

                  v459[2] = v500;
                }

                if (v464)
                {
                  v22 = 7;
                }

                else
                {
                  v504 = v1883[2767];
                  v505 = v1883[2768];
                  v396 = v504 == v505;
                  v506 = 2 * (v504 >= v505);
                  if (v396)
                  {
                    v506 = 1;
                  }

                  if (aom_read_symbol_(a4, (v458 + 12 * v506 + 6), 2))
                  {
                    v22 = 6;
                  }

                  else
                  {
                    v22 = 5;
                  }
                }

                a3[17] = v22;
                goto LABEL_388;
              }

LABEL_370:
              *(a4 + 24) = *(a4 + 24) - v473 + 0x4000;
              LOWORD(v473) = 0x4000;
              goto LABEL_371;
            }

            v358 = *(a4 + 32);
            v359 = *(a4 + 40);
            if (v359 >= v358)
            {
              v363 = *(a4 + 40);
              goto LABEL_327;
            }

            v360 = 8 - v356;
            if (v360 >= 7)
            {
              v361 = 7;
            }

            else
            {
              v361 = 8 - v356;
            }

            v362 = ((v361 ^ 0xFu) - v356) >> 3;
            if (v362 >= ~v359 + v358)
            {
              v362 = ~v359 + v358;
            }

            if (v362 >= 0xF)
            {
              v422 = v362 + 1;
              v423 = (v362 + 1) & 0x3FFFFFF0;
              v363 = &v359->u8[v423];
              v424 = 0uLL;
              v425 = v356;
              v426 = v357;
              v427 = vdupq_n_s32(v360);
              v428 = vaddq_s32(v427, xmmword_273BC3230);
              v429 = vaddq_s32(v427, xmmword_273BC3240);
              v430 = vaddq_s32(v427, xmmword_273BC3250);
              v431 = vaddq_s32(v427, xmmword_273BC3220);
              v432.i64[0] = 0x8000800080008;
              v432.i64[1] = 0x8000800080008;
              v433.i64[0] = 0x7F0000007FLL;
              v433.i64[1] = 0x7F0000007FLL;
              v434 = v423;
              v435 = 0uLL;
              v436 = 0uLL;
              v437 = 0uLL;
              do
              {
                v438 = *v359++;
                v436 = veorq_s8(vshlq_u32(vqtbl1q_s8(v438, xmmword_273B8E7B0), v429), v436);
                v435 = veorq_s8(vshlq_u32(vqtbl1q_s8(v438, xmmword_273B8E7C0), v430), v435);
                v426 = veorq_s8(vshlq_u32(vqtbl1q_s8(v438, xmmword_273B8E7D0), v431), v426);
                v437 = veorq_s8(vshlq_u32(vqtbl1q_s8(v438, xmmword_273B8E7A0), v428), v437);
                v425 = vaddq_s16(v425, v432);
                v424 = vaddq_s16(v424, v432);
                v431 = vaddq_s32(v431, v433);
                v430 = vaddq_s32(v430, v433);
                v429 = vaddq_s32(v429, v433);
                v428 = vaddq_s32(v428, v433);
                v434 -= 16;
              }

              while (v434);
              v439 = v359 < v358;
              v356 = vaddvq_s16(vaddq_s16(v425, v424));
              v440 = veorq_s8(veorq_s8(v426, v436), veorq_s8(v435, v437));
              *v440.i8 = veor_s8(*v440.i8, *&vextq_s8(v440, v440, 8uLL));
              v357 = v440.i32[0] ^ v440.i32[1];
              if (v422 == v423)
              {
                goto LABEL_326;
              }

              v360 -= 8 * v423;
            }

            else
            {
              v363 = *(a4 + 40);
            }

            do
            {
              v441 = *v363++;
              v357 ^= v441 << v360;
              v356 += 8;
              v439 = v363 < v358;
              v75 = v360 >= 8;
              v360 -= 8;
            }

            while (v75 && v363 < v358);
LABEL_326:
            if (v439)
            {
LABEL_328:
              *(a4 + 48) = v357;
              *(a4 + 54) = v356;
              *(a4 + 40) = v363;
              goto LABEL_329;
            }

LABEL_327:
            *(a4 + 24) = *(a4 + 24) - v356 + 0x4000;
            v356 = 0x4000;
            goto LABEL_328;
          }

          v99 = v97;
          v100 = *(a4 + 32);
          v101 = *(a4 + 40);
          if (v101 >= v100)
          {
            v105 = *(a4 + 40);
            goto LABEL_246;
          }

          v102 = 8 - v99;
          if ((8 - v99) >= 7)
          {
            v103 = 7;
          }

          else
          {
            v103 = 8 - v99;
          }

          v104 = ((v103 ^ 0xFu) - v99) >> 3;
          if (v104 >= ~v101 + v100)
          {
            v104 = ~v101 + v100;
          }

          if (v104 >= 0xF)
          {
            v314 = v104 + 1;
            v315 = (v104 + 1) & 0x3FFFFFF0;
            v105 = &v101->u8[v315];
            v316 = 0uLL;
            v317 = v99;
            v318 = v98;
            v319 = vdupq_n_s32(v102);
            v320 = vaddq_s32(v319, xmmword_273BC3230);
            v321 = vaddq_s32(v319, xmmword_273BC3240);
            v322 = vaddq_s32(v319, xmmword_273BC3250);
            v323 = vaddq_s32(v319, xmmword_273BC3220);
            v324.i64[0] = 0x8000800080008;
            v324.i64[1] = 0x8000800080008;
            v325.i64[0] = 0x7F0000007FLL;
            v325.i64[1] = 0x7F0000007FLL;
            v326 = v315;
            v327 = 0uLL;
            v328 = 0uLL;
            v329 = 0uLL;
            do
            {
              v330 = *v101++;
              v328 = veorq_s8(vshlq_u32(vqtbl1q_s8(v330, xmmword_273B8E7B0), v321), v328);
              v327 = veorq_s8(vshlq_u32(vqtbl1q_s8(v330, xmmword_273B8E7C0), v322), v327);
              v318 = veorq_s8(vshlq_u32(vqtbl1q_s8(v330, xmmword_273B8E7D0), v323), v318);
              v329 = veorq_s8(vshlq_u32(vqtbl1q_s8(v330, xmmword_273B8E7A0), v320), v329);
              v317 = vaddq_s16(v317, v324);
              v316 = vaddq_s16(v316, v324);
              v323 = vaddq_s32(v323, v325);
              v322 = vaddq_s32(v322, v325);
              v321 = vaddq_s32(v321, v325);
              v320 = vaddq_s32(v320, v325);
              v326 -= 16;
            }

            while (v326);
            v331 = v101 < v100;
            v332 = vaddq_s16(v317, v316);
            v332.i16[0] = vaddvq_s16(v332);
            v99 = v332.i32[0];
            v333 = veorq_s8(veorq_s8(v318, v328), veorq_s8(v327, v329));
            v83 = veor_s8(*v333.i8, *&vextq_s8(v333, v333, 8uLL));
            v98 = v83.i32[0] ^ v83.i32[1];
            if (v314 == v315)
            {
              goto LABEL_245;
            }

            v102 -= 8 * v315;
          }

          else
          {
            v105 = *(a4 + 40);
          }

          do
          {
            v334 = *v105++;
            v98 ^= v334 << v102;
            v99 += 8;
            v331 = v105 < v100;
            v75 = v102 >= 8;
            v102 -= 8;
          }

          while (v75 && v105 < v100);
LABEL_245:
          if (v331)
          {
LABEL_247:
            *(a4 + 48) = v98;
            *(a4 + 54) = v99;
            *(a4 + 40) = v105;
            goto LABEL_248;
          }

LABEL_246:
          *(a4 + 24) = *(a4 + 24) - v99 + 0x4000;
          LOWORD(v99) = 0x4000;
          goto LABEL_247;
        }

        v22 = a3[17];
        v21 = a3[16];
        v23 = (a3 + 17);
        if (v22 < 1)
        {
LABEL_105:
          v1892 = 0;
          goto LABEL_437;
        }

LABEL_17:
        if (v21 > 4)
        {
          goto LABEL_389;
        }

LABEL_18:
        if (v22 > 4u)
        {
          goto LABEL_19;
        }

LABEL_389:
        if (v21 <= 2u)
        {
          if (v21 == 1)
          {
            v507 = v22 - 2;
            if ((v22 - 2) < 3u)
            {
              goto LABEL_412;
            }

            goto LABEL_19;
          }

          if (v21 != 2)
          {
            goto LABEL_19;
          }

          if (v22 == 4)
          {
            v507 = 5;
          }

          else
          {
            v507 = -1;
          }

          if (v22 == 3)
          {
            v507 = 4;
            goto LABEL_412;
          }
        }

        else
        {
          if (v21 == 3)
          {
            if (v22 == 4)
            {
              v507 = 6;
              goto LABEL_412;
            }

            goto LABEL_19;
          }

          if (v21 != 5)
          {
            if (v21 == 6 && v22 == 7)
            {
              v507 = 8;
LABEL_412:
              v21 = v507 + 20;
              goto LABEL_413;
            }

LABEL_19:
            v21 = v21 + 4 * v22 - 13;
LABEL_413:
            v1892 = 1;
            goto LABEL_437;
          }

          if (v22 == 6)
          {
            v507 = 7;
          }

          else
          {
            v507 = -1;
          }

          if (v22 == 7)
          {
            v507 = 3;
            goto LABEL_412;
          }
        }

        if ((v507 & 0x80) == 0)
        {
          goto LABEL_412;
        }

        goto LABEL_19;
      }

LABEL_91:
      v106 = *(a2 + 10648) + 11372;
      v10.i32[0] = *(a2 + 10635);
      v10 = vmovl_u8(*v10.i8);
      v10.i16[0] = vaddv_s16(*v10.i8);
      v107 = *(a2 + 10640) + *(a2 + 10639) + *(a2 + 10641);
      v108 = 2 * (v107 <= v10.u16[0]);
      if (v107 == v10.u16[0])
      {
        v108 = 1;
      }

      v109 = (v106 + 36 * v108);
      v110 = *(a4 + 48);
      v111 = *(a4 + 52);
      v112 = v111 >> 8;
      v113 = 8;
      v114 = 1;
      v115 = v109;
      do
      {
        v116 = v111;
        v117 = *v115++;
        v118 = v112 * (v117 >> 6);
        v113 -= 4;
        v111 = v113 + (v118 >> 1);
        --v114;
      }

      while (HIWORD(v110) < v111);
      v119 = v116 - (v118 >> 1) - v113;
      v120 = __clz(v119);
      v121 = 15 - (v120 ^ 0x1F);
      v122 = *(a4 + 54) - v121;
      *(a4 + 54) = v122;
      v123 = ((v110 - (v111 << 16) + 1) << (15 - (v120 ^ 0x1F))) - 1;
      *(a4 + 48) = v123;
      *(a4 + 52) = v119 << v121;
      if ((v122 & 0x8000) == 0)
      {
LABEL_117:
        v150 = *(a4 + 56);
        if (*(a4 + 56))
        {
          v151 = v109[2];
          v152 = (v151 >> 4) + 4;
          v153 = *v109;
          if (-v114 < 1)
          {
            v154 = v153 - (v153 >> v152);
          }

          else
          {
            v154 = v153 + ((0x8000 - v153) >> v152);
          }

          *v109 = v154;
          if (v151 < 0x20)
          {
            LOWORD(v151) = v151 + 1;
          }

          v109[2] = v151;
        }

        v155 = HIWORD(v123);
        if (v114)
        {
          v156 = v9[2768] + v9[2767];
          v157 = v9[2769];
          v396 = v156 == v157;
          v158 = 2 * (v156 >= v157);
          if (v396)
          {
            v158 = 1;
          }

          v159 = (v106 + 36 * v158 + 6);
          v160 = *(a4 + 52);
          v161 = v160 >> 8;
          v162 = 8;
          v163 = 1;
          v164 = v159;
          do
          {
            v165 = v160;
            v166 = *v164++;
            v167 = v161 * (v166 >> 6);
            v162 -= 4;
            v160 = v162 + (v167 >> 1);
            --v163;
          }

          while (v155 < v160);
          v168 = v165 - (v167 >> 1) - v162;
          v169 = 15 - (__clz(v168) ^ 0x1F);
          v170 = *(a4 + 54) - v169;
          *(a4 + 54) = v170;
          v171 = ((v123 - (v160 << 16) + 1) << v169) - 1;
          *(a4 + 48) = v171;
          *(a4 + 52) = v168 << v169;
          if ((v170 & 0x8000) == 0)
          {
LABEL_165:
            if (v150)
            {
              v221 = v159[2];
              v222 = (v221 >> 4) + 4;
              v223 = *v159;
              if (-v163 < 1)
              {
                v224 = v223 - (v223 >> v222);
              }

              else
              {
                v224 = v223 + ((0x8000 - v223) >> v222);
              }

              *v159 = v224;
              if (v221 < 0x20)
              {
                LOWORD(v221) = v221 + 1;
              }

              v159[2] = v221;
            }

            if (v163)
            {
              v21 = 7;
              goto LABEL_436;
            }

            v225 = v9[2767];
            v226 = v9[2768];
            v396 = v225 == v226;
            v227 = 2 * (v225 >= v226);
            if (v396)
            {
              v227 = 1;
            }

            v228 = (v106 + 36 * v227 + 30);
            v229 = *(a4 + 52);
            v230 = v229 >> 8;
            v231 = 8;
            v232 = 1;
            v233 = v228;
            do
            {
              v234 = v229;
              v235 = *v233++;
              v236 = v230 * (v235 >> 6);
              v231 -= 4;
              v229 = v231 + (v236 >> 1);
              --v232;
            }

            while (HIWORD(v171) < v229);
            v237 = v234 - (v236 >> 1) - v231;
            v238 = 15 - (__clz(v237) ^ 0x1F);
            LOWORD(v231) = *(a4 + 54) - v238;
            *(a4 + 54) = v231;
            v239 = ((v171 - (v229 << 16) + 1) << v238) - 1;
            *(a4 + 48) = v239;
            *(a4 + 52) = v237 << v238;
            if ((v231 & 0x8000) == 0)
            {
              goto LABEL_293;
            }

            v231 = v231;
            v240 = *(a4 + 32);
            v241 = *(a4 + 40);
            if (v241 >= v240)
            {
              v245 = *(a4 + 40);
              goto LABEL_291;
            }

            v242 = 8 - v231;
            if ((8 - v231) >= 7)
            {
              v243 = 7;
            }

            else
            {
              v243 = 8 - v231;
            }

            v244 = ((v243 ^ 0xFu) - v231) >> 3;
            if (v244 >= ~v241 + v240)
            {
              v244 = ~v241 + v240;
            }

            if (v244 >= 0xF)
            {
              v372 = v244 + 1;
              v373 = (v244 + 1) & 0x3FFFFFF0;
              v245 = &v241->u8[v373];
              v374 = 0uLL;
              v375 = v231;
              v376 = v239;
              v377 = vdupq_n_s32(v242);
              v378 = vaddq_s32(v377, xmmword_273BC3230);
              v379 = vaddq_s32(v377, xmmword_273BC3240);
              v380 = vaddq_s32(v377, xmmword_273BC3250);
              v381 = vaddq_s32(v377, xmmword_273BC3220);
              v382.i64[0] = 0x8000800080008;
              v382.i64[1] = 0x8000800080008;
              v383.i64[0] = 0x7F0000007FLL;
              v383.i64[1] = 0x7F0000007FLL;
              v384 = v373;
              v385 = 0uLL;
              v386 = 0uLL;
              v387 = 0uLL;
              do
              {
                v388 = *v241++;
                v386 = veorq_s8(vshlq_u32(vqtbl1q_s8(v388, xmmword_273B8E7B0), v379), v386);
                v385 = veorq_s8(vshlq_u32(vqtbl1q_s8(v388, xmmword_273B8E7C0), v380), v385);
                v376 = veorq_s8(vshlq_u32(vqtbl1q_s8(v388, xmmword_273B8E7D0), v381), v376);
                v387 = veorq_s8(vshlq_u32(vqtbl1q_s8(v388, xmmword_273B8E7A0), v378), v387);
                v375 = vaddq_s16(v375, v382);
                v374 = vaddq_s16(v374, v382);
                v381 = vaddq_s32(v381, v383);
                v380 = vaddq_s32(v380, v383);
                v379 = vaddq_s32(v379, v383);
                v378 = vaddq_s32(v378, v383);
                v384 -= 16;
              }

              while (v384);
              v389 = v241 < v240;
              v390 = vaddq_s16(v375, v374);
              v390.i16[0] = vaddvq_s16(v390);
              v231 = v390.i32[0];
              v10 = veorq_s8(veorq_s8(v376, v386), veorq_s8(v385, v387));
              *v10.i8 = veor_s8(*v10.i8, *&vextq_s8(v10, v10, 8uLL));
              v239 = v10.i32[0] ^ v10.i32[1];
              if (v372 == v373)
              {
                goto LABEL_290;
              }

              v242 -= 8 * v373;
            }

            else
            {
              v245 = *(a4 + 40);
            }

            do
            {
              v391 = *v245++;
              v239 ^= v391 << v242;
              v231 += 8;
              v389 = v245 < v240;
              v75 = v242 >= 8;
              v242 -= 8;
            }

            while (v75 && v245 < v240);
LABEL_290:
            if (v389)
            {
LABEL_292:
              *(a4 + 48) = v239;
              *(a4 + 54) = v231;
              *(a4 + 40) = v245;
LABEL_293:
              if (v150)
              {
                v392 = v228[2];
                v393 = (v392 >> 4) + 4;
                v394 = *v228;
                if (-v232 < 1)
                {
                  v395 = v394 - (v394 >> v393);
                }

                else
                {
                  v395 = v394 + ((0x8000 - v394) >> v393);
                }

                *v228 = v395;
                if (v392 < 0x20)
                {
                  LOWORD(v392) = v392 + 1;
                }

                v228[2] = v392;
              }

              v396 = v232 == 0;
              v397 = 5;
LABEL_433:
              if (v396)
              {
                v21 = v397;
              }

              else
              {
                v21 = v397 + 1;
              }

              goto LABEL_436;
            }

LABEL_291:
            *(a4 + 24) = *(a4 + 24) - v231 + 0x4000;
            LOWORD(v231) = 0x4000;
            goto LABEL_292;
          }

          v172 = v170;
          v173 = *(a4 + 32);
          v174 = *(a4 + 40);
          if (v174 >= v173)
          {
            v178 = *(a4 + 40);
            goto LABEL_163;
          }

          v175 = 8 - v170;
          if (v175 >= 7)
          {
            v176 = 7;
          }

          else
          {
            v176 = 8 - v170;
          }

          v177 = ((v176 ^ 0xFu) - v172) >> 3;
          if (v177 >= ~v174 + v173)
          {
            v177 = ~v174 + v173;
          }

          if (v177 >= 0xF)
          {
            v202 = v177 + 1;
            v203 = (v177 + 1) & 0x3FFFFFF0;
            v178 = &v174->u8[v203];
            v204 = 0uLL;
            v205 = v172;
            v206 = v171;
            v207 = vdupq_n_s32(v175);
            v208 = vaddq_s32(v207, xmmword_273BC3230);
            v209 = vaddq_s32(v207, xmmword_273BC3240);
            v210 = vaddq_s32(v207, xmmword_273BC3250);
            v211 = vaddq_s32(v207, xmmword_273BC3220);
            v212.i64[0] = 0x8000800080008;
            v212.i64[1] = 0x8000800080008;
            v213.i64[0] = 0x7F0000007FLL;
            v213.i64[1] = 0x7F0000007FLL;
            v214 = v203;
            v215 = 0uLL;
            v216 = 0uLL;
            v217 = 0uLL;
            do
            {
              v218 = *v174++;
              v216 = veorq_s8(vshlq_u32(vqtbl1q_s8(v218, xmmword_273B8E7B0), v209), v216);
              v215 = veorq_s8(vshlq_u32(vqtbl1q_s8(v218, xmmword_273B8E7C0), v210), v215);
              v206 = veorq_s8(vshlq_u32(vqtbl1q_s8(v218, xmmword_273B8E7D0), v211), v206);
              v217 = veorq_s8(vshlq_u32(vqtbl1q_s8(v218, xmmword_273B8E7A0), v208), v217);
              v205 = vaddq_s16(v205, v212);
              v204 = vaddq_s16(v204, v212);
              v211 = vaddq_s32(v211, v213);
              v210 = vaddq_s32(v210, v213);
              v209 = vaddq_s32(v209, v213);
              v208 = vaddq_s32(v208, v213);
              v214 -= 16;
            }

            while (v214);
            v219 = v174 < v173;
            LOWORD(v172) = vaddvq_s16(vaddq_s16(v205, v204));
            v10 = veorq_s8(veorq_s8(v206, v216), veorq_s8(v215, v217));
            *v10.i8 = veor_s8(*v10.i8, *&vextq_s8(v10, v10, 8uLL));
            v171 = v10.i32[0] ^ v10.i32[1];
            if (v202 == v203)
            {
              goto LABEL_162;
            }

            v175 -= 8 * v203;
          }

          else
          {
            v178 = *(a4 + 40);
          }

          do
          {
            v220 = *v178++;
            v171 ^= v220 << v175;
            LOWORD(v172) = v172 + 8;
            v219 = v178 < v173;
            v75 = v175 >= 8;
            v175 -= 8;
          }

          while (v75 && v178 < v173);
LABEL_162:
          if (v219)
          {
LABEL_164:
            *(a4 + 48) = v171;
            *(a4 + 54) = v172;
            *(a4 + 40) = v178;
            goto LABEL_165;
          }

LABEL_163:
          *(a4 + 24) = *(a4 + 24) - v172 + 0x4000;
          LOWORD(v172) = 0x4000;
          goto LABEL_164;
        }

        v179 = v9[2764] + v9[2763];
        v180 = v9[2766] + v9[2765];
        v396 = v179 == v180;
        v181 = 2 * (v179 >= v180);
        if (v396)
        {
          v181 = 1;
        }

        v182 = (v106 + 36 * v181 + 12);
        v183 = *(a4 + 52);
        v184 = v183 >> 8;
        v185 = 8;
        v186 = 1;
        v187 = v182;
        do
        {
          v188 = v183;
          v189 = *v187++;
          v190 = v184 * (v189 >> 6);
          v185 -= 4;
          v183 = v185 + (v190 >> 1);
          --v186;
        }

        while (v155 < v183);
        v191 = v188 - (v190 >> 1) - v185;
        v192 = 15 - (__clz(v191) ^ 0x1F);
        v193 = *(a4 + 54) - v192;
        *(a4 + 54) = v193;
        v194 = ((v123 - (v183 << 16) + 1) << v192) - 1;
        *(a4 + 48) = v194;
        *(a4 + 52) = v191 << v192;
        if ((v193 & 0x8000) == 0)
        {
LABEL_200:
          if (v150)
          {
            v265 = v182[2];
            v266 = (v265 >> 4) + 4;
            v267 = *v182;
            if (-v186 < 1)
            {
              v268 = v267 - (v267 >> v266);
            }

            else
            {
              v268 = v267 + ((0x8000 - v267) >> v266);
            }

            *v182 = v268;
            if (v265 < 0x20)
            {
              LOWORD(v265) = v265 + 1;
            }

            v182[2] = v265;
          }

          v269 = *(a4 + 52);
          v270 = HIWORD(v194);
          v271 = v269 >> 8;
          if (v186)
          {
            v272 = v9[2765];
            v273 = v9[2766];
            v396 = v272 == v273;
            v274 = 2 * (v272 >= v273);
            if (v396)
            {
              v274 = 1;
            }

            v275 = (v106 + 36 * v274 + 24);
            v276 = 8;
            v277 = 1;
            v278 = v275;
            do
            {
              v279 = v269;
              v280 = *v278++;
              v281 = v271 * (v280 >> 6);
              v276 -= 4;
              v269 = v276 + (v281 >> 1);
              --v277;
            }

            while (v270 < v269);
            v282 = v279 - (v281 >> 1) - v276;
            v283 = 15 - (__clz(v282) ^ 0x1F);
            v284 = *(a4 + 54) - v283;
            *(a4 + 54) = v284;
            v285 = ((v194 - (v269 << 16) + 1) << v283) - 1;
            *(a4 + 48) = v285;
            *(a4 + 52) = v282 << v283;
            if ((v284 & 0x8000) == 0)
            {
              goto LABEL_311;
            }

            v286 = v284;
            v287 = *(a4 + 32);
            v288 = *(a4 + 40);
            if (v288 >= v287)
            {
              v292 = *(a4 + 40);
              goto LABEL_309;
            }

            v289 = 8 - v284;
            if (v289 >= 7)
            {
              v290 = 7;
            }

            else
            {
              v290 = 8 - v284;
            }

            v291 = ((v290 ^ 0xFu) - v286) >> 3;
            if (v291 >= ~v288 + v287)
            {
              v291 = ~v288 + v287;
            }

            if (v291 >= 0xF)
            {
              v398 = v291 + 1;
              v399 = (v291 + 1) & 0x3FFFFFF0;
              v292 = &v288->u8[v399];
              v400 = 0uLL;
              v401 = v286;
              v402 = v285;
              v403 = vdupq_n_s32(v289);
              v404 = vaddq_s32(v403, xmmword_273BC3230);
              v405 = vaddq_s32(v403, xmmword_273BC3240);
              v406 = vaddq_s32(v403, xmmword_273BC3250);
              v407 = vaddq_s32(v403, xmmword_273BC3220);
              v408.i64[0] = 0x8000800080008;
              v408.i64[1] = 0x8000800080008;
              v409.i64[0] = 0x7F0000007FLL;
              v409.i64[1] = 0x7F0000007FLL;
              v410 = v399;
              v411 = 0uLL;
              v412 = 0uLL;
              v413 = 0uLL;
              do
              {
                v414 = *v288++;
                v412 = veorq_s8(vshlq_u32(vqtbl1q_s8(v414, xmmword_273B8E7B0), v405), v412);
                v411 = veorq_s8(vshlq_u32(vqtbl1q_s8(v414, xmmword_273B8E7C0), v406), v411);
                v402 = veorq_s8(vshlq_u32(vqtbl1q_s8(v414, xmmword_273B8E7D0), v407), v402);
                v413 = veorq_s8(vshlq_u32(vqtbl1q_s8(v414, xmmword_273B8E7A0), v404), v413);
                v401 = vaddq_s16(v401, v408);
                v400 = vaddq_s16(v400, v408);
                v407 = vaddq_s32(v407, v409);
                v406 = vaddq_s32(v406, v409);
                v405 = vaddq_s32(v405, v409);
                v404 = vaddq_s32(v404, v409);
                v410 -= 16;
              }

              while (v410);
              v415 = v288 < v287;
              v416 = vaddq_s16(v401, v400);
              v416.i16[0] = vaddvq_s16(v416);
              v286 = v416.i32[0];
              v10 = veorq_s8(veorq_s8(v402, v412), veorq_s8(v411, v413));
              *v10.i8 = veor_s8(*v10.i8, *&vextq_s8(v10, v10, 8uLL));
              v285 = v10.i32[0] ^ v10.i32[1];
              if (v398 == v399)
              {
                goto LABEL_308;
              }

              v289 -= 8 * v399;
            }

            else
            {
              v292 = *(a4 + 40);
            }

            do
            {
              v417 = *v292++;
              v285 ^= v417 << v289;
              v286 += 8;
              v415 = v292 < v287;
              v75 = v289 >= 8;
              v289 -= 8;
            }

            while (v75 && v292 < v287);
LABEL_308:
            if (v415)
            {
LABEL_310:
              *(a4 + 48) = v285;
              *(a4 + 54) = v286;
              *(a4 + 40) = v292;
LABEL_311:
              if (v150)
              {
                v418 = v275[2];
                v419 = (v418 >> 4) + 4;
                v420 = *v275;
                if (-v277 < 1)
                {
                  v421 = v420 - (v420 >> v419);
                }

                else
                {
                  v421 = v420 + ((0x8000 - v420) >> v419);
                }

                *v275 = v421;
                if (v418 < 0x20)
                {
                  LOWORD(v418) = v418 + 1;
                }

                v275[2] = v418;
              }

              v396 = v277 == 0;
              v397 = 3;
              goto LABEL_433;
            }

LABEL_309:
            *(a4 + 24) = *(a4 + 24) - v286 + 0x4000;
            LOWORD(v286) = 0x4000;
            goto LABEL_310;
          }

          v293 = v9[2763];
          v294 = v9[2764];
          v396 = v293 == v294;
          v295 = 2 * (v293 >= v294);
          if (v396)
          {
            v295 = 1;
          }

          v296 = (v106 + 36 * v295 + 18);
          v297 = 8;
          v298 = 1;
          v299 = v296;
          do
          {
            v300 = v269;
            v301 = *v299++;
            v302 = v271 * (v301 >> 6);
            v297 -= 4;
            v269 = v297 + (v302 >> 1);
            --v298;
          }

          while (v270 < v269);
          v303 = v300 - (v302 >> 1) - v297;
          v304 = 15 - (__clz(v303) ^ 0x1F);
          v305 = *(a4 + 54) - v304;
          *(a4 + 54) = v305;
          v306 = ((v194 - (v269 << 16) + 1) << v304) - 1;
          *(a4 + 48) = v306;
          *(a4 + 52) = v303 << v304;
          if ((v305 & 0x8000) == 0)
          {
LABEL_425:
            if (v150)
            {
              v528 = v296[2];
              v529 = (v528 >> 4) + 4;
              v530 = *v296;
              if (-v298 < 1)
              {
                v531 = v530 - (v530 >> v529);
              }

              else
              {
                v531 = v530 + ((0x8000 - v530) >> v529);
              }

              *v296 = v531;
              if (v528 < 0x20)
              {
                LOWORD(v528) = v528 + 1;
              }

              v296[2] = v528;
            }

            v396 = v298 == 0;
            v397 = 1;
            goto LABEL_433;
          }

          v307 = v305;
          v308 = *(a4 + 32);
          v309 = *(a4 + 40);
          if (v309 >= v308)
          {
            v313 = *(a4 + 40);
            goto LABEL_423;
          }

          v310 = 8 - v305;
          if (v310 >= 7)
          {
            v311 = 7;
          }

          else
          {
            v311 = 8 - v305;
          }

          v312 = ((v311 ^ 0xFu) - v307) >> 3;
          if (v312 >= ~v309 + v308)
          {
            v312 = ~v309 + v308;
          }

          if (v312 >= 0xF)
          {
            v508 = v312 + 1;
            v509 = (v312 + 1) & 0x3FFFFFF0;
            v313 = &v309->u8[v509];
            v510 = 0uLL;
            v511 = v307;
            v512 = v306;
            v513 = vdupq_n_s32(v310);
            v514 = vaddq_s32(v513, xmmword_273BC3230);
            v515 = vaddq_s32(v513, xmmword_273BC3240);
            v516 = vaddq_s32(v513, xmmword_273BC3250);
            v517 = vaddq_s32(v513, xmmword_273BC3220);
            v518.i64[0] = 0x8000800080008;
            v518.i64[1] = 0x8000800080008;
            v519.i64[0] = 0x7F0000007FLL;
            v519.i64[1] = 0x7F0000007FLL;
            v520 = v509;
            v521 = 0uLL;
            v522 = 0uLL;
            v523 = 0uLL;
            do
            {
              v524 = *v309++;
              v522 = veorq_s8(vshlq_u32(vqtbl1q_s8(v524, xmmword_273B8E7B0), v515), v522);
              v521 = veorq_s8(vshlq_u32(vqtbl1q_s8(v524, xmmword_273B8E7C0), v516), v521);
              v512 = veorq_s8(vshlq_u32(vqtbl1q_s8(v524, xmmword_273B8E7D0), v517), v512);
              v523 = veorq_s8(vshlq_u32(vqtbl1q_s8(v524, xmmword_273B8E7A0), v514), v523);
              v511 = vaddq_s16(v511, v518);
              v510 = vaddq_s16(v510, v518);
              v517 = vaddq_s32(v517, v519);
              v516 = vaddq_s32(v516, v519);
              v515 = vaddq_s32(v515, v519);
              v514 = vaddq_s32(v514, v519);
              v520 -= 16;
            }

            while (v520);
            v525 = v309 < v308;
            v526 = vaddq_s16(v511, v510);
            v526.i16[0] = vaddvq_s16(v526);
            v307 = v526.i32[0];
            v10 = veorq_s8(veorq_s8(v512, v522), veorq_s8(v521, v523));
            *v10.i8 = veor_s8(*v10.i8, *&vextq_s8(v10, v10, 8uLL));
            v306 = v10.i32[0] ^ v10.i32[1];
            if (v508 == v509)
            {
              goto LABEL_422;
            }

            v310 -= 8 * v509;
          }

          else
          {
            v313 = *(a4 + 40);
          }

          do
          {
            v527 = *v313++;
            v306 ^= v527 << v310;
            v307 += 8;
            v525 = v313 < v308;
            v75 = v310 >= 8;
            v310 -= 8;
          }

          while (v75 && v313 < v308);
LABEL_422:
          if (v525)
          {
LABEL_424:
            *(a4 + 48) = v306;
            *(a4 + 54) = v307;
            *(a4 + 40) = v313;
            goto LABEL_425;
          }

LABEL_423:
          *(a4 + 24) = *(a4 + 24) - v307 + 0x4000;
          LOWORD(v307) = 0x4000;
          goto LABEL_424;
        }

        v195 = v193;
        v196 = *(a4 + 32);
        v197 = *(a4 + 40);
        if (v197 >= v196)
        {
          v201 = *(a4 + 40);
          goto LABEL_198;
        }

        v198 = 8 - v193;
        if (v198 >= 7)
        {
          v199 = 7;
        }

        else
        {
          v199 = 8 - v193;
        }

        v200 = ((v199 ^ 0xFu) - v195) >> 3;
        if (v200 >= ~v197 + v196)
        {
          v200 = ~v197 + v196;
        }

        if (v200 >= 0xF)
        {
          v246 = v200 + 1;
          v247 = (v200 + 1) & 0x3FFFFFF0;
          v201 = &v197->u8[v247];
          v248 = 0uLL;
          v249 = v195;
          v250 = v194;
          v251 = vdupq_n_s32(v198);
          v252 = vaddq_s32(v251, xmmword_273BC3230);
          v253 = vaddq_s32(v251, xmmword_273BC3240);
          v254 = vaddq_s32(v251, xmmword_273BC3250);
          v255 = vaddq_s32(v251, xmmword_273BC3220);
          v256.i64[0] = 0x8000800080008;
          v256.i64[1] = 0x8000800080008;
          v257.i64[0] = 0x7F0000007FLL;
          v257.i64[1] = 0x7F0000007FLL;
          v258 = v247;
          v259 = 0uLL;
          v260 = 0uLL;
          v261 = 0uLL;
          do
          {
            v262 = *v197++;
            v260 = veorq_s8(vshlq_u32(vqtbl1q_s8(v262, xmmword_273B8E7B0), v253), v260);
            v259 = veorq_s8(vshlq_u32(vqtbl1q_s8(v262, xmmword_273B8E7C0), v254), v259);
            v250 = veorq_s8(vshlq_u32(vqtbl1q_s8(v262, xmmword_273B8E7D0), v255), v250);
            v261 = veorq_s8(vshlq_u32(vqtbl1q_s8(v262, xmmword_273B8E7A0), v252), v261);
            v249 = vaddq_s16(v249, v256);
            v248 = vaddq_s16(v248, v256);
            v255 = vaddq_s32(v255, v257);
            v254 = vaddq_s32(v254, v257);
            v253 = vaddq_s32(v253, v257);
            v252 = vaddq_s32(v252, v257);
            v258 -= 16;
          }

          while (v258);
          v263 = v197 < v196;
          LOWORD(v195) = vaddvq_s16(vaddq_s16(v249, v248));
          v10 = veorq_s8(veorq_s8(v250, v260), veorq_s8(v259, v261));
          *v10.i8 = veor_s8(*v10.i8, *&vextq_s8(v10, v10, 8uLL));
          v194 = v10.i32[0] ^ v10.i32[1];
          if (v246 == v247)
          {
            goto LABEL_197;
          }

          v198 -= 8 * v247;
        }

        else
        {
          v201 = *(a4 + 40);
        }

        do
        {
          v264 = *v201++;
          v194 ^= v264 << v198;
          LOWORD(v195) = v195 + 8;
          v263 = v201 < v196;
          v75 = v198 >= 8;
          v198 -= 8;
        }

        while (v75 && v201 < v196);
LABEL_197:
        if (v263)
        {
LABEL_199:
          *(a4 + 48) = v194;
          *(a4 + 54) = v195;
          *(a4 + 40) = v201;
          goto LABEL_200;
        }

LABEL_198:
        *(a4 + 24) = *(a4 + 24) - v195 + 0x4000;
        LOWORD(v195) = 0x4000;
        goto LABEL_199;
      }

      v124 = v122;
      v125 = *(a4 + 32);
      v126 = *(a4 + 40);
      if (v126 >= v125)
      {
        v130 = *(a4 + 40);
        goto LABEL_115;
      }

      v127 = 8 - v124;
      if ((8 - v124) >= 7)
      {
        v128 = 7;
      }

      else
      {
        v128 = 8 - v124;
      }

      v129 = ((v128 ^ 0xFu) - v124) >> 3;
      if (v129 >= ~v126 + v125)
      {
        v129 = ~v126 + v125;
      }

      if (v129 >= 0xF)
      {
        v131 = v129 + 1;
        v132 = (v129 + 1) & 0x3FFFFFF0;
        v130 = &v126->u8[v132];
        v133 = 0uLL;
        v134 = v124;
        v135 = v123;
        v136 = vdupq_n_s32(v127);
        v137 = vaddq_s32(v136, xmmword_273BC3230);
        v138 = vaddq_s32(v136, xmmword_273BC3240);
        v139 = vaddq_s32(v136, xmmword_273BC3250);
        v140 = vaddq_s32(v136, xmmword_273BC3220);
        v141.i64[0] = 0x8000800080008;
        v141.i64[1] = 0x8000800080008;
        v142.i64[0] = 0x7F0000007FLL;
        v142.i64[1] = 0x7F0000007FLL;
        v143 = v132;
        v144 = 0uLL;
        v145 = 0uLL;
        v146 = 0uLL;
        do
        {
          v147 = *v126++;
          v145 = veorq_s8(vshlq_u32(vqtbl1q_s8(v147, xmmword_273B8E7B0), v138), v145);
          v144 = veorq_s8(vshlq_u32(vqtbl1q_s8(v147, xmmword_273B8E7C0), v139), v144);
          v135 = veorq_s8(vshlq_u32(vqtbl1q_s8(v147, xmmword_273B8E7D0), v140), v135);
          v146 = veorq_s8(vshlq_u32(vqtbl1q_s8(v147, xmmword_273B8E7A0), v137), v146);
          v134 = vaddq_s16(v134, v141);
          v133 = vaddq_s16(v133, v141);
          v140 = vaddq_s32(v140, v142);
          v139 = vaddq_s32(v139, v142);
          v138 = vaddq_s32(v138, v142);
          v137 = vaddq_s32(v137, v142);
          v143 -= 16;
        }

        while (v143);
        v148 = v126 < v125;
        LOWORD(v124) = vaddvq_s16(vaddq_s16(v134, v133));
        v10 = veorq_s8(veorq_s8(v135, v145), veorq_s8(v144, v146));
        *v10.i8 = veor_s8(*v10.i8, *&vextq_s8(v10, v10, 8uLL));
        v123 = v10.i32[0] ^ v10.i32[1];
        if (v131 == v132)
        {
          goto LABEL_114;
        }

        v127 -= 8 * v132;
      }

      else
      {
        v130 = *(a4 + 40);
      }

      do
      {
        v149 = *v130++;
        v123 ^= v149 << v127;
        LOWORD(v124) = v124 + 8;
        v148 = v130 < v125;
        v75 = v127 >= 8;
        v127 -= 8;
      }

      while (v75 && v130 < v125);
LABEL_114:
      if (v148)
      {
LABEL_116:
        *(a4 + 48) = v123;
        *(a4 + 54) = v124;
        *(a4 + 40) = v130;
        goto LABEL_117;
      }

LABEL_115:
      *(a4 + 24) = *(a4 + 24) - v124 + 0x4000;
      LOWORD(v124) = 0x4000;
      goto LABEL_116;
    }

    if (v14 && v15)
    {
      v28 = *(v13 + 17);
      if (*(v12 + 17) <= 0)
      {
        v30 = *(v12 + 16);
        v31 = v30 - 5;
        if (v28 <= 0)
        {
          v29 = (v31 < 3) ^ (*(v13 + 16) - 5 < 3);
          goto LABEL_47;
        }

        if (v31 < 3)
        {
          goto LABEL_41;
        }

        v32 = (*(v12 + 167) >> 7) & 1;
        v33 = v30;
      }

      else
      {
        if (v28 > 0)
        {
          v29 = 4;
          goto LABEL_47;
        }

        v33 = *(v13 + 16);
        if ((v33 - 5) < 3)
        {
LABEL_41:
          v29 = 3;
          goto LABEL_47;
        }

        v32 = (*(v13 + 167) >> 7) & 1;
        v33 = v33;
      }

      if (v33 > 0)
      {
        v32 = 1;
      }

      v29 = v32 ^ 3;
LABEL_47:
      v34 = (*(a2 + 10648) + 6 * v29 + 11342);
      v35 = *(a4 + 48);
      v36 = *(a4 + 52);
      v37 = v36 >> 8;
      v38 = -1;
      v39 = 8;
      v40 = v34;
      do
      {
        v41 = v36;
        v42 = *v40++;
        ++v38;
        v43 = v37 * (v42 >> 6);
        v39 -= 4;
        v36 = v39 + (v43 >> 1);
      }

      while (HIWORD(v35) < v36);
      v44 = v41 - (v43 >> 1) - v39;
      v45 = 15 - (__clz(v44) ^ 0x1F);
      v46 = *(a4 + 54) - v45;
      *(a4 + 54) = v46;
      v47 = ((v35 - (v36 << 16) + 1) << v45) - 1;
      *(a4 + 48) = v47;
      *(a4 + 52) = v44 << v45;
      if ((v46 & 0x8000) == 0)
      {
LABEL_69:
        if (*(a4 + 56))
        {
          v76 = v34[2];
          v77 = (v76 >> 4) + 4;
          v78 = v38;
          v27 = v38;
          v79 = *v34;
          if (v78 < 1)
          {
            v80 = v79 - (v79 >> v77);
          }

          else
          {
            v80 = v79 + ((0x8000 - v79) >> v77);
          }

          *v34 = v80;
          if (v76 >= 0x20)
          {
            v81 = v76;
          }

          else
          {
            v81 = v76 + 1;
          }

          v34[2] = v81;
        }

        else
        {
          v27 = v38;
        }

        goto LABEL_78;
      }

      v48 = v46;
      v49 = *(a4 + 32);
      v50 = *(a4 + 40);
      if (v50 >= v49)
      {
        v54 = *(a4 + 40);
        goto LABEL_67;
      }

      v51 = 8 - v48;
      if ((8 - v48) >= 7)
      {
        v52 = 7;
      }

      else
      {
        v52 = 8 - v48;
      }

      v53 = ((v52 ^ 0xFu) - v48) >> 3;
      if (v53 >= ~v50 + v49)
      {
        v53 = ~v50 + v49;
      }

      if (v53 >= 0xF)
      {
        v55 = v53 + 1;
        v56 = (v53 + 1) & 0x3FFFFFF0;
        v54 = &v50->u8[v56];
        v57 = 0uLL;
        v58 = v48;
        v59 = v47;
        v60 = vdupq_n_s32(v51);
        v61 = vaddq_s32(v60, xmmword_273BC3230);
        v62 = vaddq_s32(v60, xmmword_273BC3240);
        v63 = vaddq_s32(v60, xmmword_273BC3250);
        v64 = vaddq_s32(v60, xmmword_273BC3220);
        v65.i64[0] = 0x8000800080008;
        v65.i64[1] = 0x8000800080008;
        v66.i64[0] = 0x7F0000007FLL;
        v66.i64[1] = 0x7F0000007FLL;
        v67 = v56;
        v68 = 0uLL;
        v69 = 0uLL;
        v70 = 0uLL;
        do
        {
          v71 = *v50++;
          v69 = veorq_s8(vshlq_u32(vqtbl1q_s8(v71, xmmword_273B8E7B0), v62), v69);
          v68 = veorq_s8(vshlq_u32(vqtbl1q_s8(v71, xmmword_273B8E7C0), v63), v68);
          v59 = veorq_s8(vshlq_u32(vqtbl1q_s8(v71, xmmword_273B8E7D0), v64), v59);
          v70 = veorq_s8(vshlq_u32(vqtbl1q_s8(v71, xmmword_273B8E7A0), v61), v70);
          v58 = vaddq_s16(v58, v65);
          v57 = vaddq_s16(v57, v65);
          v64 = vaddq_s32(v64, v66);
          v63 = vaddq_s32(v63, v66);
          v62 = vaddq_s32(v62, v66);
          v61 = vaddq_s32(v61, v66);
          v67 -= 16;
        }

        while (v67);
        v72 = v50 < v49;
        v73 = vaddq_s16(v58, v57);
        v73.i16[0] = vaddvq_s16(v73);
        v48 = v73.i32[0];
        v10 = veorq_s8(veorq_s8(v59, v69), veorq_s8(v68, v70));
        *v10.i8 = veor_s8(*v10.i8, *&vextq_s8(v10, v10, 8uLL));
        v47 = v10.i32[0] ^ v10.i32[1];
        if (v55 == v56)
        {
          goto LABEL_66;
        }

        v51 -= 8 * v56;
      }

      else
      {
        v54 = *(a4 + 40);
      }

      do
      {
        v74 = *v54++;
        v47 ^= v74 << v51;
        v48 += 8;
        v72 = v54 < v49;
        v75 = v51 >= 8;
        v51 -= 8;
      }

      while (v75 && v54 < v49);
LABEL_66:
      if (v72)
      {
LABEL_68:
        *(a4 + 48) = v47;
        *(a4 + 54) = v48;
        *(a4 + 40) = v54;
        goto LABEL_69;
      }

LABEL_67:
      *(a4 + 24) = *(a4 + 24) - v48 + 0x4000;
      LOWORD(v48) = 0x4000;
      goto LABEL_68;
    }

    if ((v14 & 1) == 0 && !v15)
    {
      v29 = 1;
      goto LABEL_47;
    }

    if (v14)
    {
      v13 = v12;
    }

    if (*(v13 + 17) <= 0)
    {
      v29 = *(v13 + 16) - 5 < 3;
      goto LABEL_47;
    }

    goto LABEL_41;
  }

  v21 = 1;
LABEL_436:
  v1892 = 0;
  a3[17] = -1;
  v23 = (a3 + 17);
  a3[16] = v21;
LABEL_437:
  v532 = v6 + 8312;
  v533 = v6 + 10168;
  v1885 = v6 + 15142;
  av1_find_mv_refs((v7 + 15200), v6, a3, v21, v6 + 15142, v6 + 8312, v6 + 10168, v1897, v10, 0, v1896);
  v534 = *(a3 + 167);
  *(a3 + 167) = v534 & 0xFFCF;
  if ((v534 & 0x40) != 0)
  {
    LOBYTE(v535) = 17;
    a3[2] = 17;
    v1884 = a3 + 2;
    if (v1892)
    {
      goto LABEL_795;
    }

    goto LABEL_791;
  }

  if (!v7[34192] || (*&v7[4 * (v534 & 7) + 34324] & 0xC0) == 0)
  {
    v536 = a3[16];
    if (*v23 < 1)
    {
      v542 = &v1896[v536];
      goto LABEL_453;
    }

    v537 = *v23;
    if (v536 <= 4 && v537 > 4)
    {
      goto LABEL_447;
    }

    v588 = a3[16];
    if (v588 <= 2)
    {
      if (v588 == 1)
      {
        v589 = v537 - 2;
        if (v537 - 2 >= 3)
        {
          goto LABEL_447;
        }

LABEL_501:
        v538 = v589 + 20;
        goto LABEL_448;
      }

      if (v588 != 2)
      {
        goto LABEL_447;
      }

      if (v537 == 4)
      {
        v589 = 5;
      }

      else
      {
        v589 = -1;
      }

      if (v537 == 3)
      {
        v538 = 24;
        goto LABEL_448;
      }
    }

    else
    {
      if (v588 == 3)
      {
        if (v537 == 4)
        {
          v538 = 26;
          goto LABEL_448;
        }

        goto LABEL_447;
      }

      if (v588 != 5)
      {
        if (v588 == 6 && v537 == 7)
        {
          v538 = 28;
          goto LABEL_448;
        }

LABEL_447:
        v538 = v536 + 4 * v537 - 13;
LABEL_448:
        v539 = v1896[v538];
        v540 = v539 >> 5;
        if ((v539 & 4) != 0)
        {
          v541 = 4;
        }

        else
        {
          v541 = v539 & 7;
        }

        v542 = (&compound_mode_ctx_map_0 + 10 * v540 + 2 * v541);
LABEL_453:
        v543 = *v542;
        v544 = *(a4 + 48);
        v545 = *(a4 + 52);
        v546 = HIWORD(v544);
        v547 = v545 >> 8;
        if (v1892)
        {
          v548 = (*(v6 + 10648) + 18 * v543 + 0x2000);
          v549 = -1;
          v550 = 32;
          v551 = 0x600000000000000;
          v552 = 0x400000000000000;
          v553 = 0x200000000000000;
          v554 = v548;
          v555 = 0xFF00000000000000;
          do
          {
            v556 = v545;
            ++v549;
            v557 = *v554++;
            v558 = v547 * (v557 >> 6);
            v550 -= 4;
            v545 = v550 + (v558 >> 1);
            v551 -= 0x100000000000000;
            v552 -= 0x100000000000000;
            v553 -= 0x100000000000000;
            v555 += 0x100000000000000;
          }

          while (v546 < v545);
          v559 = v556 - (v558 >> 1) - v550;
          v560 = 15 - (__clz(v559) ^ 0x1F);
          v561 = *(a4 + 54) - v560;
          *(a4 + 54) = v561;
          v562 = ((v544 - (v545 << 16) + 1) << v560) - 1;
          *(a4 + 48) = v562;
          *(a4 + 52) = v559 << v560;
          if ((v561 & 0x8000) == 0)
          {
LABEL_512:
            if (!*(a4 + 56))
            {
              goto LABEL_532;
            }

            v610 = v548[8];
            v611 = (v610 >> 4) + 5;
            v612 = v555 >> 56;
            v613 = *v548;
            if (v612 <= 0)
            {
              *v548 = v613 - (v613 >> v611);
              v614 = v548[1];
            }

            else
            {
              *v548 = v613 + ((0x8000 - v613) >> v611);
              v614 = v548[1];
              if (v553)
              {
                v548[1] = v614 + ((0x8000 - v614) >> v611);
                v615 = v548[2];
                if (v612 > 2)
                {
                  v548[2] = v615 + ((0x8000 - v615) >> v611);
                  v616 = v548[3];
                  if (v552)
                  {
                    v548[3] = v616 + ((0x8000 - v616) >> v611);
                    v617 = v548[4];
                    if (v612 > 4)
                    {
                      v548[4] = v617 + ((0x8000 - v617) >> v611);
                      v618 = v548[5];
                      if (v551)
                      {
                        v548[5] = v618 + ((0x8000 - v618) >> v611);
                        v619 = v548[6];
                        if (v612 > 6)
                        {
                          v620 = v619 + ((0x8000 - v619) >> v611);
LABEL_528:
                          v548[6] = v620;
                          if (v610 >= 0x20)
                          {
                            v621 = v610;
                          }

                          else
                          {
                            v621 = v610 + 1;
                          }

                          v548[8] = v621;
LABEL_532:
                          LOBYTE(v535) = v549 + 17;
                          a3[2] = v549 + 17;
                          if ((v549 > 7u || ((1 << v549) & 0xB2) == 0) && v549 != 255 && v549 != 253)
                          {
                            goto LABEL_790;
                          }

LABEL_567:
                          v667 = *v23;
                          v668 = a3[16];
                          v669 = v668;
                          if (v667 < 1)
                          {
                            goto LABEL_571;
                          }

LABEL_568:
                          if (v667 >= 5u && v669 < 5)
                          {
                            goto LABEL_570;
                          }

                          if (v668 <= 2)
                          {
                            if (v668 == 1)
                            {
                              v695 = v667 - 2;
                              if (v667 - 2 >= 3)
                              {
                                goto LABEL_570;
                              }

                              goto LABEL_613;
                            }

                            if (v668 != 2)
                            {
                              goto LABEL_570;
                            }

                            if (v667 == 4)
                            {
                              v695 = 5;
                            }

                            else
                            {
                              v695 = -1;
                            }

                            if (v667 == 3)
                            {
                              LOBYTE(v669) = 24;
                              goto LABEL_571;
                            }

LABEL_612:
                            if (v695 < 0)
                            {
                              goto LABEL_570;
                            }

LABEL_613:
                            LOBYTE(v669) = v695 + 20;
                            goto LABEL_571;
                          }

                          if (v668 != 3)
                          {
                            if (v668 != 5)
                            {
                              if (v668 == 6 && v667 == 7)
                              {
                                LOBYTE(v669) = 28;
                                goto LABEL_571;
                              }

LABEL_570:
                              LOBYTE(v669) = v669 + 4 * v667 - 13;
                              goto LABEL_571;
                            }

                            if (v667 == 6)
                            {
                              v695 = 7;
                            }

                            else
                            {
                              v695 = -1;
                            }

                            if (v667 == 7)
                            {
                              LOBYTE(v669) = 23;
                              goto LABEL_571;
                            }

                            goto LABEL_612;
                          }

                          if (v667 != 4)
                          {
                            goto LABEL_570;
                          }

                          LOBYTE(v669) = 26;
LABEL_571:
                          *(a3 + 167) &= 0xFFCFu;
                          if (v535 > 0x18u)
                          {
                            goto LABEL_790;
                          }

                          if (((1 << v535) & 0x644000) != 0)
                          {
                            goto LABEL_722;
                          }

                          if (((1 << v535) & 0x1010000) == 0)
                          {
                            goto LABEL_790;
                          }

                          if (*(v1885 + v669) < 2u)
                          {
LABEL_720:
                            if (v535 > 0x16u || ((1 << v535) & 0x644000) == 0)
                            {
                              goto LABEL_790;
                            }

LABEL_722:
                            v835 = v669;
                            if (*(v1885 + v669) < 3u)
                            {
                              goto LABEL_790;
                            }

                            v836 = (v533 + 16 * v669);
                            v837 = v1887 + 8174;
                            if (v836[1] <= 0x27Fu)
                            {
                              v838 = 2 * (v836[2] < 0x280u);
                            }

                            else
                            {
                              v838 = v836[2] < 0x280u;
                            }

                            v839 = (v837 + 6 * v838);
                            v840 = *(a4 + 48);
                            v841 = *(a4 + 52);
                            v842 = v841 >> 8;
                            v843 = 8;
                            v844 = 1;
                            v845 = v839;
                            do
                            {
                              v846 = v841;
                              v847 = *v845++;
                              v848 = v842 * (v847 >> 6);
                              v843 -= 4;
                              v841 = v843 + (v848 >> 1);
                              --v844;
                            }

                            while (HIWORD(v840) < v841);
                            v849 = v846 - (v848 >> 1) - v843;
                            v850 = 15 - (__clz(v849) ^ 0x1F);
                            v851 = *(a4 + 54) - v850;
                            *(a4 + 54) = v851;
                            v852 = ((v840 - (v841 << 16) + 1) << v850) - 1;
                            *(a4 + 48) = v852;
                            *(a4 + 52) = v849 << v850;
                            v853 = -v844;
                            if ((v851 & 0x8000) == 0)
                            {
LABEL_748:
                              if (*(a4 + 56))
                              {
                                v881 = v839[2];
                                v882 = (v881 >> 4) + 4;
                                v883 = *v839;
                                if (v853 <= 0)
                                {
                                  v884 = v883 - (v883 >> v882);
                                }

                                else
                                {
                                  v884 = v883 + ((0x8000 - v883) >> v882);
                                }

                                *v839 = v884;
                                if (v881 < 0x20)
                                {
                                  LOWORD(v881) = v881 + 1;
                                }

                                v839[2] = v881;
                              }

                              *(a3 + 167) = *(a3 + 167) & 0xFFCF | (16 * (v853 & 3));
                              if (v844 && *(v1885 + v835) >= 4u)
                              {
                                v885 = v836[2];
                                v886 = v836[3] < 0x280u;
                                if (v885 <= 0x27F)
                                {
                                  v887 = 2 * v886;
                                }

                                else
                                {
                                  v887 = v886;
                                }

                                v888 = (v837 + 6 * v887);
                                v889 = *(a4 + 48);
                                v890 = *(a4 + 52);
                                v891 = v890 >> 8;
                                v892 = -1;
                                v893 = 8;
                                v894 = v888;
                                do
                                {
                                  v895 = v890;
                                  v896 = *v894++;
                                  ++v892;
                                  v897 = v891 * (v896 >> 6);
                                  v893 -= 4;
                                  v890 = v893 + (v897 >> 1);
                                }

                                while (HIWORD(v889) < v890);
                                v898 = v895 - (v897 >> 1) - v893;
                                v899 = 15 - (__clz(v898) ^ 0x1F);
                                v900 = *(a4 + 54) - v899;
                                *(a4 + 54) = v900;
                                v901 = ((v889 - (v890 << 16) + 1) << v899) - 1;
                                *(a4 + 48) = v901;
                                *(a4 + 52) = v898 << v899;
                                if ((v900 & 0x8000) == 0)
                                {
                                  goto LABEL_782;
                                }

                                v902 = v900;
                                v903 = *(a4 + 32);
                                v904 = *(a4 + 40);
                                if (v904 >= v903)
                                {
                                  v908 = *(a4 + 40);
                                  goto LABEL_780;
                                }

                                v905 = 8 - v902;
                                if ((8 - v902) >= 7)
                                {
                                  v906 = 7;
                                }

                                else
                                {
                                  v906 = 8 - v902;
                                }

                                v907 = ((v906 ^ 0xFu) - v902) >> 3;
                                if (v907 >= ~v904 + v903)
                                {
                                  v907 = ~v904 + v903;
                                }

                                if (v907 >= 0xF)
                                {
                                  v909 = v907 + 1;
                                  v910 = (v907 + 1) & 0x3FFFFFF0;
                                  v908 = &v904->u8[v910];
                                  v911 = 0uLL;
                                  v912 = v902;
                                  v913 = v901;
                                  v914 = vdupq_n_s32(v905);
                                  v915 = vaddq_s32(v914, xmmword_273BC3230);
                                  v916 = vaddq_s32(v914, xmmword_273BC3240);
                                  v917 = vaddq_s32(v914, xmmword_273BC3250);
                                  v918 = vaddq_s32(v914, xmmword_273BC3220);
                                  v919.i64[0] = 0x8000800080008;
                                  v919.i64[1] = 0x8000800080008;
                                  v920.i64[0] = 0x7F0000007FLL;
                                  v920.i64[1] = 0x7F0000007FLL;
                                  v921 = v910;
                                  v922 = 0uLL;
                                  v923 = 0uLL;
                                  v924 = 0uLL;
                                  do
                                  {
                                    v925 = *v904++;
                                    v923 = veorq_s8(vshlq_u32(vqtbl1q_s8(v925, xmmword_273B8E7B0), v916), v923);
                                    v922 = veorq_s8(vshlq_u32(vqtbl1q_s8(v925, xmmword_273B8E7C0), v917), v922);
                                    v913 = veorq_s8(vshlq_u32(vqtbl1q_s8(v925, xmmword_273B8E7D0), v918), v913);
                                    v924 = veorq_s8(vshlq_u32(vqtbl1q_s8(v925, xmmword_273B8E7A0), v915), v924);
                                    v912 = vaddq_s16(v912, v919);
                                    v911 = vaddq_s16(v911, v919);
                                    v918 = vaddq_s32(v918, v920);
                                    v917 = vaddq_s32(v917, v920);
                                    v916 = vaddq_s32(v916, v920);
                                    v915 = vaddq_s32(v915, v920);
                                    v921 -= 16;
                                  }

                                  while (v921);
                                  v926 = v904 < v903;
                                  v927 = vaddq_s16(v912, v911);
                                  v927.i16[0] = vaddvq_s16(v927);
                                  v902 = v927.i32[0];
                                  v928 = veorq_s8(veorq_s8(v913, v923), veorq_s8(v922, v924));
                                  *v928.i8 = veor_s8(*v928.i8, *&vextq_s8(v928, v928, 8uLL));
                                  v901 = v928.i32[0] ^ v928.i32[1];
                                  if (v909 == v910)
                                  {
                                    goto LABEL_779;
                                  }

                                  v905 -= 8 * v910;
                                }

                                else
                                {
                                  v908 = *(a4 + 40);
                                }

                                do
                                {
                                  v929 = *v908++;
                                  v901 ^= v929 << v905;
                                  v902 += 8;
                                  v926 = v908 < v903;
                                  v75 = v905 >= 8;
                                  v905 -= 8;
                                }

                                while (v75 && v908 < v903);
LABEL_779:
                                if (v926)
                                {
LABEL_781:
                                  *(a4 + 48) = v901;
                                  *(a4 + 54) = v902;
                                  *(a4 + 40) = v908;
LABEL_782:
                                  if (*(a4 + 56))
                                  {
                                    v930 = v888[2];
                                    v931 = (v930 >> 4) + 4;
                                    v932 = *v888;
                                    if (v892 < 1)
                                    {
                                      v933 = v932 - (v932 >> v931);
                                    }

                                    else
                                    {
                                      v933 = v932 + ((0x8000 - v932) >> v931);
                                    }

                                    *v888 = v933;
                                    if (v930 < 0x20)
                                    {
                                      LOWORD(v930) = v930 + 1;
                                    }

                                    v888[2] = v930;
                                  }

                                  *(a3 + 167) = *(a3 + 167) & 0xFFCF | (16 * v892 + 16) & 0x30;
                                  goto LABEL_790;
                                }

LABEL_780:
                                *(a4 + 24) = *(a4 + 24) - v902 + 0x4000;
                                LOWORD(v902) = 0x4000;
                                goto LABEL_781;
                              }

LABEL_790:
                              v1884 = a3 + 2;
                              if ((v1892 ^ ((v535 - 25) < 0xF8u)))
                              {
                                goto LABEL_792;
                              }

                              goto LABEL_791;
                            }

                            v854 = v851;
                            v856 = *(a4 + 32);
                            v855 = *(a4 + 40);
                            if (v855 >= v856)
                            {
                              v860 = *(a4 + 40);
                              goto LABEL_746;
                            }

                            v857 = 8 - v854;
                            if ((8 - v854) >= 7)
                            {
                              v858 = 7;
                            }

                            else
                            {
                              v858 = 8 - v854;
                            }

                            v859 = ((v858 ^ 0xFu) - v854) >> 3;
                            if (v859 >= ~v855 + v856)
                            {
                              v859 = ~v855 + v856;
                            }

                            if (v859 >= 0xF)
                            {
                              v861 = v859 + 1;
                              v862 = (v859 + 1) & 0x3FFFFFF0;
                              v860 = &v855->u8[v862];
                              v863 = 0uLL;
                              v864 = v854;
                              v865 = v852;
                              v866 = vdupq_n_s32(v857);
                              v867 = vaddq_s32(v866, xmmword_273BC3230);
                              v868 = vaddq_s32(v866, xmmword_273BC3240);
                              v869 = vaddq_s32(v866, xmmword_273BC3250);
                              v870 = vaddq_s32(v866, xmmword_273BC3220);
                              v871.i64[0] = 0x8000800080008;
                              v871.i64[1] = 0x8000800080008;
                              v872.i64[0] = 0x7F0000007FLL;
                              v872.i64[1] = 0x7F0000007FLL;
                              v873 = v862;
                              v874 = 0uLL;
                              v875 = 0uLL;
                              v876 = 0uLL;
                              do
                              {
                                v877 = *v855++;
                                v875 = veorq_s8(vshlq_u32(vqtbl1q_s8(v877, xmmword_273B8E7B0), v868), v875);
                                v874 = veorq_s8(vshlq_u32(vqtbl1q_s8(v877, xmmword_273B8E7C0), v869), v874);
                                v865 = veorq_s8(vshlq_u32(vqtbl1q_s8(v877, xmmword_273B8E7D0), v870), v865);
                                v876 = veorq_s8(vshlq_u32(vqtbl1q_s8(v877, xmmword_273B8E7A0), v867), v876);
                                v864 = vaddq_s16(v864, v871);
                                v863 = vaddq_s16(v863, v871);
                                v870 = vaddq_s32(v870, v872);
                                v869 = vaddq_s32(v869, v872);
                                v868 = vaddq_s32(v868, v872);
                                v867 = vaddq_s32(v867, v872);
                                v873 -= 16;
                              }

                              while (v873);
                              v878 = v855 < v856;
                              LOWORD(v854) = vaddvq_s16(vaddq_s16(v864, v863));
                              v879 = veorq_s8(veorq_s8(v865, v875), veorq_s8(v874, v876));
                              *v879.i8 = veor_s8(*v879.i8, *&vextq_s8(v879, v879, 8uLL));
                              v852 = v879.i32[0] ^ v879.i32[1];
                              if (v861 == v862)
                              {
                                goto LABEL_745;
                              }

                              v857 -= 8 * v862;
                            }

                            else
                            {
                              v860 = *(a4 + 40);
                            }

                            do
                            {
                              v880 = *v860++;
                              v852 ^= v880 << v857;
                              LOWORD(v854) = v854 + 8;
                              v878 = v860 < v856;
                              v75 = v857 >= 8;
                              v857 -= 8;
                            }

                            while (v75 && v860 < v856);
LABEL_745:
                            if (v878)
                            {
LABEL_747:
                              *(a4 + 48) = v852;
                              *(a4 + 54) = v854;
                              *(a4 + 40) = v860;
                              goto LABEL_748;
                            }

LABEL_746:
                            *(a4 + 24) = *(a4 + 24) - v854 + 0x4000;
                            LOWORD(v854) = 0x4000;
                            goto LABEL_747;
                          }

                          v670 = (v533 + 16 * v669);
                          v671 = v1887 + 8174;
                          if (*v670 <= 0x27Fu)
                          {
                            v672 = 2 * (v670[1] < 0x280u);
                          }

                          else
                          {
                            v672 = v670[1] < 0x280u;
                          }

                          v673 = (v671 + 6 * v672);
                          v674 = *(a4 + 48);
                          v675 = *(a4 + 52);
                          v676 = v675 >> 8;
                          v677 = 8;
                          v678 = 1;
                          v679 = v673;
                          do
                          {
                            v680 = v675;
                            v681 = *v679++;
                            v682 = v676 * (v681 >> 6);
                            v677 -= 4;
                            v675 = v677 + (v682 >> 1);
                            --v678;
                          }

                          while (HIWORD(v674) < v675);
                          v683 = v680 - (v682 >> 1) - v677;
                          v684 = 15 - (__clz(v683) ^ 0x1F);
                          v685 = *(a4 + 54) - v684;
                          *(a4 + 54) = v685;
                          v686 = ((v674 - (v675 << 16) + 1) << v684) - 1;
                          *(a4 + 48) = v686;
                          *(a4 + 52) = v683 << v684;
                          v687 = -v678;
                          if ((v685 & 0x8000) == 0)
                          {
LABEL_677:
                            if (*(a4 + 56))
                            {
                              v783 = v673[2];
                              v784 = (v783 >> 4) + 4;
                              v785 = *v673;
                              if (v687 < 1)
                              {
                                v786 = v785 - (v785 >> v784);
                              }

                              else
                              {
                                v786 = v785 + ((0x8000 - v785) >> v784);
                              }

                              *v673 = v786;
                              if (v783 < 0x20)
                              {
                                LOWORD(v783) = v783 + 1;
                              }

                              v673[2] = v783;
                            }

                            *(a3 + 167) = *(a3 + 167) & 0xFFCF | (16 * (v687 & 3));
                            if (!v678)
                            {
                              goto LABEL_790;
                            }

                            if (*(v1885 + v669) < 3u)
                            {
                              goto LABEL_720;
                            }

                            v787 = v670[1];
                            v788 = v670[2] < 0x280u;
                            if (v787 <= 0x27F)
                            {
                              v789 = 2 * v788;
                            }

                            else
                            {
                              v789 = v788;
                            }

                            v790 = (v671 + 6 * v789);
                            v791 = *(a4 + 48);
                            v792 = *(a4 + 52);
                            v793 = v792 >> 8;
                            v794 = 8;
                            v795 = 1;
                            v796 = v790;
                            do
                            {
                              v797 = v792;
                              v798 = *v796++;
                              v799 = v793 * (v798 >> 6);
                              v794 -= 4;
                              v792 = v794 + (v799 >> 1);
                              --v795;
                            }

                            while (HIWORD(v791) < v792);
                            v800 = v797 - (v799 >> 1) - v794;
                            v801 = 15 - (__clz(v800) ^ 0x1F);
                            v802 = *(a4 + 54) - v801;
                            *(a4 + 54) = v802;
                            v803 = ((v791 - (v792 << 16) + 1) << v801) - 1;
                            *(a4 + 48) = v803;
                            *(a4 + 52) = v800 << v801;
                            if ((v802 & 0x8000) == 0)
                            {
                              goto LABEL_712;
                            }

                            v804 = v802;
                            v805 = *(a4 + 32);
                            v806 = *(a4 + 40);
                            if (v806 >= v805)
                            {
                              v810 = *(a4 + 40);
                              goto LABEL_710;
                            }

                            v807 = 8 - v802;
                            if (v807 >= 7)
                            {
                              v808 = 7;
                            }

                            else
                            {
                              v808 = 8 - v802;
                            }

                            v809 = ((v808 ^ 0xFu) - v804) >> 3;
                            if (v809 >= ~v806 + v805)
                            {
                              v809 = ~v806 + v805;
                            }

                            if (v809 >= 0xF)
                            {
                              v811 = v809 + 1;
                              v812 = (v809 + 1) & 0x3FFFFFF0;
                              v810 = &v806->u8[v812];
                              v813 = 0uLL;
                              v814 = v804;
                              v815 = v803;
                              v816 = vdupq_n_s32(v807);
                              v817 = vaddq_s32(v816, xmmword_273BC3230);
                              v818 = vaddq_s32(v816, xmmword_273BC3240);
                              v819 = vaddq_s32(v816, xmmword_273BC3250);
                              v820 = vaddq_s32(v816, xmmword_273BC3220);
                              v821.i64[0] = 0x8000800080008;
                              v821.i64[1] = 0x8000800080008;
                              v822.i64[0] = 0x7F0000007FLL;
                              v822.i64[1] = 0x7F0000007FLL;
                              v823 = v812;
                              v824 = 0uLL;
                              v825 = 0uLL;
                              v826 = 0uLL;
                              do
                              {
                                v827 = *v806++;
                                v825 = veorq_s8(vshlq_u32(vqtbl1q_s8(v827, xmmword_273B8E7B0), v818), v825);
                                v824 = veorq_s8(vshlq_u32(vqtbl1q_s8(v827, xmmword_273B8E7C0), v819), v824);
                                v815 = veorq_s8(vshlq_u32(vqtbl1q_s8(v827, xmmword_273B8E7D0), v820), v815);
                                v826 = veorq_s8(vshlq_u32(vqtbl1q_s8(v827, xmmword_273B8E7A0), v817), v826);
                                v814 = vaddq_s16(v814, v821);
                                v813 = vaddq_s16(v813, v821);
                                v820 = vaddq_s32(v820, v822);
                                v819 = vaddq_s32(v819, v822);
                                v818 = vaddq_s32(v818, v822);
                                v817 = vaddq_s32(v817, v822);
                                v823 -= 16;
                              }

                              while (v823);
                              v828 = v806 < v805;
                              LOWORD(v804) = vaddvq_s16(vaddq_s16(v814, v813));
                              v829 = veorq_s8(veorq_s8(v815, v825), veorq_s8(v824, v826));
                              *v829.i8 = veor_s8(*v829.i8, *&vextq_s8(v829, v829, 8uLL));
                              v803 = v829.i32[0] ^ v829.i32[1];
                              if (v811 == v812)
                              {
                                goto LABEL_709;
                              }

                              v807 -= 8 * v812;
                            }

                            else
                            {
                              v810 = *(a4 + 40);
                            }

                            do
                            {
                              v830 = *v810++;
                              v803 ^= v830 << v807;
                              LOWORD(v804) = v804 + 8;
                              v828 = v810 < v805;
                              v75 = v807 >= 8;
                              v807 -= 8;
                            }

                            while (v75 && v810 < v805);
LABEL_709:
                            if (v828)
                            {
LABEL_711:
                              *(a4 + 48) = v803;
                              *(a4 + 54) = v804;
                              *(a4 + 40) = v810;
LABEL_712:
                              if (*(a4 + 56))
                              {
                                v831 = v790[2];
                                v832 = (v831 >> 4) + 4;
                                v833 = *v790;
                                if (-v795 <= 0)
                                {
                                  v834 = v833 - (v833 >> v832);
                                }

                                else
                                {
                                  v834 = v833 + ((0x8000 - v833) >> v832);
                                }

                                *v790 = v834;
                                if (v831 < 0x20)
                                {
                                  LOWORD(v831) = v831 + 1;
                                }

                                v790[2] = v831;
                              }

                              *(a3 + 167) = *(a3 + 167) & 0xFFCF | (-16 * v795 + 16) & 0x30;
                              if (!v795)
                              {
                                goto LABEL_790;
                              }

                              goto LABEL_720;
                            }

LABEL_710:
                            *(a4 + 24) = *(a4 + 24) - v804 + 0x4000;
                            LOWORD(v804) = 0x4000;
                            goto LABEL_711;
                          }

                          v688 = v685;
                          v690 = *(a4 + 32);
                          v689 = *(a4 + 40);
                          if (v689 >= v690)
                          {
                            v694 = *(a4 + 40);
                            goto LABEL_675;
                          }

                          v691 = 8 - v688;
                          if ((8 - v688) >= 7)
                          {
                            v692 = 7;
                          }

                          else
                          {
                            v692 = 8 - v688;
                          }

                          v693 = ((v692 ^ 0xFu) - v688) >> 3;
                          if (v693 >= ~v689 + v690)
                          {
                            v693 = ~v689 + v690;
                          }

                          if (v693 >= 0xF)
                          {
                            v763 = v693 + 1;
                            v764 = (v693 + 1) & 0x3FFFFFF0;
                            v694 = &v689->u8[v764];
                            v765 = 0uLL;
                            v766 = v688;
                            v767 = v686;
                            v768 = vdupq_n_s32(v691);
                            v769 = vaddq_s32(v768, xmmword_273BC3230);
                            v770 = vaddq_s32(v768, xmmword_273BC3240);
                            v771 = vaddq_s32(v768, xmmword_273BC3250);
                            v772 = vaddq_s32(v768, xmmword_273BC3220);
                            v773.i64[0] = 0x8000800080008;
                            v773.i64[1] = 0x8000800080008;
                            v774.i64[0] = 0x7F0000007FLL;
                            v774.i64[1] = 0x7F0000007FLL;
                            v775 = v764;
                            v776 = 0uLL;
                            v777 = 0uLL;
                            v778 = 0uLL;
                            do
                            {
                              v779 = *v689++;
                              v777 = veorq_s8(vshlq_u32(vqtbl1q_s8(v779, xmmword_273B8E7B0), v770), v777);
                              v776 = veorq_s8(vshlq_u32(vqtbl1q_s8(v779, xmmword_273B8E7C0), v771), v776);
                              v767 = veorq_s8(vshlq_u32(vqtbl1q_s8(v779, xmmword_273B8E7D0), v772), v767);
                              v778 = veorq_s8(vshlq_u32(vqtbl1q_s8(v779, xmmword_273B8E7A0), v769), v778);
                              v766 = vaddq_s16(v766, v773);
                              v765 = vaddq_s16(v765, v773);
                              v772 = vaddq_s32(v772, v774);
                              v771 = vaddq_s32(v771, v774);
                              v770 = vaddq_s32(v770, v774);
                              v769 = vaddq_s32(v769, v774);
                              v775 -= 16;
                            }

                            while (v775);
                            v780 = v689 < v690;
                            LOWORD(v688) = vaddvq_s16(vaddq_s16(v766, v765));
                            v781 = veorq_s8(veorq_s8(v767, v777), veorq_s8(v776, v778));
                            *v781.i8 = veor_s8(*v781.i8, *&vextq_s8(v781, v781, 8uLL));
                            v686 = v781.i32[0] ^ v781.i32[1];
                            if (v763 == v764)
                            {
                              goto LABEL_674;
                            }

                            v691 -= 8 * v764;
                          }

                          else
                          {
                            v694 = *(a4 + 40);
                          }

                          do
                          {
                            v782 = *v694++;
                            v686 ^= v782 << v691;
                            LOWORD(v688) = v688 + 8;
                            v780 = v694 < v690;
                            v75 = v691 >= 8;
                            v691 -= 8;
                          }

                          while (v75 && v694 < v690);
LABEL_674:
                          if (v780)
                          {
LABEL_676:
                            *(a4 + 48) = v686;
                            *(a4 + 54) = v688;
                            *(a4 + 40) = v694;
                            goto LABEL_677;
                          }

LABEL_675:
                          *(a4 + 24) = *(a4 + 24) - v688 + 0x4000;
                          LOWORD(v688) = 0x4000;
                          goto LABEL_676;
                        }

LABEL_527:
                        v620 = v619 - (v619 >> v611);
                        goto LABEL_528;
                      }

LABEL_526:
                      v548[5] = v618 - (v618 >> v611);
                      v619 = v548[6];
                      goto LABEL_527;
                    }

LABEL_525:
                    v548[4] = v617 - (v617 >> v611);
                    v618 = v548[5];
                    goto LABEL_526;
                  }

LABEL_524:
                  v548[3] = v616 - (v616 >> v611);
                  v617 = v548[4];
                  goto LABEL_525;
                }

LABEL_523:
                v548[2] = v615 - (v615 >> v611);
                v616 = v548[3];
                goto LABEL_524;
              }
            }

            v548[1] = v614 - (v614 >> v611);
            v615 = v548[2];
            goto LABEL_523;
          }

          v563 = v561;
          v565 = *(a4 + 32);
          v564 = *(a4 + 40);
          if (v564 >= v565)
          {
            v569 = *(a4 + 40);
            goto LABEL_510;
          }

          v566 = 8 - v563;
          if ((8 - v563) >= 7)
          {
            v567 = 7;
          }

          else
          {
            v567 = 8 - v563;
          }

          v568 = ((v567 ^ 0xFu) - v563) >> 3;
          if (v568 >= ~v564 + v565)
          {
            v568 = ~v564 + v565;
          }

          if (v568 >= 0xF)
          {
            v590 = v568 + 1;
            v591 = (v568 + 1) & 0x3FFFFFF0;
            v569 = &v564->u8[v591];
            v592 = 0uLL;
            v593 = v563;
            v594 = v562;
            v595 = vdupq_n_s32(v566);
            v596 = vaddq_s32(v595, xmmword_273BC3230);
            v597 = vaddq_s32(v595, xmmword_273BC3240);
            v598 = vaddq_s32(v595, xmmword_273BC3250);
            v599 = vaddq_s32(v595, xmmword_273BC3220);
            v600.i64[0] = 0x8000800080008;
            v600.i64[1] = 0x8000800080008;
            v601.i64[0] = 0x7F0000007FLL;
            v601.i64[1] = 0x7F0000007FLL;
            v602 = v591;
            v603 = 0uLL;
            v604 = 0uLL;
            v605 = 0uLL;
            do
            {
              v606 = *v564++;
              v604 = veorq_s8(vshlq_u32(vqtbl1q_s8(v606, xmmword_273B8E7B0), v597), v604);
              v603 = veorq_s8(vshlq_u32(vqtbl1q_s8(v606, xmmword_273B8E7C0), v598), v603);
              v594 = veorq_s8(vshlq_u32(vqtbl1q_s8(v606, xmmword_273B8E7D0), v599), v594);
              v605 = veorq_s8(vshlq_u32(vqtbl1q_s8(v606, xmmword_273B8E7A0), v596), v605);
              v593 = vaddq_s16(v593, v600);
              v592 = vaddq_s16(v592, v600);
              v599 = vaddq_s32(v599, v601);
              v598 = vaddq_s32(v598, v601);
              v597 = vaddq_s32(v597, v601);
              v596 = vaddq_s32(v596, v601);
              v602 -= 16;
            }

            while (v602);
            v607 = v564 < v565;
            LOWORD(v563) = vaddvq_s16(vaddq_s16(v593, v592));
            v608 = veorq_s8(veorq_s8(v594, v604), veorq_s8(v603, v605));
            *v608.i8 = veor_s8(*v608.i8, *&vextq_s8(v608, v608, 8uLL));
            v562 = v608.i32[0] ^ v608.i32[1];
            if (v590 == v591)
            {
              goto LABEL_509;
            }

            v566 -= 8 * v591;
          }

          else
          {
            v569 = *(a4 + 40);
          }

          do
          {
            v609 = *v569++;
            v562 ^= v609 << v566;
            LOWORD(v563) = v563 + 8;
            v607 = v569 < v565;
            v75 = v566 >= 8;
            v566 -= 8;
          }

          while (v75 && v569 < v565);
LABEL_509:
          if (v607)
          {
LABEL_511:
            *(a4 + 48) = v562;
            *(a4 + 54) = v563;
            *(a4 + 40) = v569;
            goto LABEL_512;
          }

LABEL_510:
          *(a4 + 24) = *(a4 + 24) - v563 + 0x4000;
          LOWORD(v563) = 0x4000;
          goto LABEL_511;
        }

        v570 = (v1887 + 6 * (v543 & 7) + 8090);
        v571 = 8;
        v572 = 1;
        v573 = v570;
        do
        {
          v574 = v545;
          v575 = *v573++;
          v576 = v547 * (v575 >> 6);
          v571 -= 4;
          v545 = v571 + (v576 >> 1);
          --v572;
        }

        while (v546 < v545);
        v577 = v574 - (v576 >> 1) - v571;
        v578 = 15 - (__clz(v577) ^ 0x1F);
        v579 = *(a4 + 54) - v578;
        *(a4 + 54) = v579;
        v580 = ((v544 - (v545 << 16) + 1) << v578) - 1;
        *(a4 + 48) = v580;
        *(a4 + 52) = v577 << v578;
        if ((v579 & 0x8000) == 0)
        {
LABEL_547:
          v642 = *(a4 + 56);
          if (*(a4 + 56))
          {
            v643 = *(v1887 + 6 * (v543 & 7) + 8094);
            v644 = (v643 >> 4) + 4;
            v645 = *v570;
            if (-v572 < 1)
            {
              v646 = v645 - (v645 >> v644);
            }

            else
            {
              v646 = v645 + ((0x8000 - v645) >> v644);
            }

            *v570 = v646;
            if (v643 < 0x20)
            {
              LOWORD(v643) = v643 + 1;
            }

            *(v1887 + 6 * (v543 & 7) + 8094) = v643;
          }

          if (!v572)
          {
            LOBYTE(v535) = 16;
            a3[2] = 16;
            goto LABEL_567;
          }

          v647 = (v1887 + 6 * ((v543 >> 3) & 1) + 8126);
          v648 = *(a4 + 52);
          v649 = v648 >> 8;
          v650 = 8;
          v651 = 1;
          v652 = v647;
          do
          {
            v653 = v648;
            v654 = *v652++;
            v655 = v649 * (v654 >> 6);
            v650 -= 4;
            v648 = v650 + (v655 >> 1);
            --v651;
          }

          while (HIWORD(v580) < v648);
          v656 = v653 - (v655 >> 1) - v650;
          v657 = 15 - (__clz(v656) ^ 0x1F);
          v658 = *(a4 + 54) - v657;
          *(a4 + 54) = v658;
          v659 = ((v580 - (v648 << 16) + 1) << v657) - 1;
          *(a4 + 48) = v659;
          *(a4 + 52) = v656 << v657;
          if ((v658 & 0x8000) == 0)
          {
LABEL_624:
            if (v642)
            {
              v716 = *(v1887 + 6 * ((v543 >> 3) & 1) + 8130);
              v717 = (v716 >> 4) + 4;
              v718 = *v647;
              if (-v651 < 1)
              {
                v719 = v718 - (v718 >> v717);
              }

              else
              {
                v719 = v718 + ((0x8000 - v718) >> v717);
              }

              *v647 = v719;
              if (v716 < 0x20)
              {
                LOWORD(v716) = v716 + 1;
              }

              *(v1887 + 6 * ((v543 >> 3) & 1) + 8130) = v716;
            }

            if (!v651)
            {
              LOBYTE(v535) = 15;
              a3[2] = 15;
              goto LABEL_790;
            }

            v720 = (v1887 + 6 * (v543 >> 4) + 8138);
            v721 = *(a4 + 52);
            v722 = v721 >> 8;
            v723 = 8;
            v724 = 1;
            v725 = v720;
            do
            {
              v726 = v721;
              v727 = *v725++;
              v728 = v722 * (v727 >> 6);
              v723 -= 4;
              v721 = v723 + (v728 >> 1);
              --v724;
            }

            while (HIWORD(v659) < v721);
            v729 = v726 - (v728 >> 1) - v723;
            v730 = 15 - (__clz(v729) ^ 0x1F);
            LOWORD(v723) = *(a4 + 54) - v730;
            *(a4 + 54) = v723;
            v731 = ((v659 - (v721 << 16) + 1) << v730) - 1;
            *(a4 + 48) = v731;
            *(a4 + 52) = v729 << v730;
            if ((v723 & 0x8000) == 0)
            {
LABEL_656:
              if (v642)
              {
                v759 = v720[2];
                v760 = (v759 >> 4) + 4;
                v761 = *v720;
                if (-v724 < 1)
                {
                  v762 = v761 - (v761 >> v760);
                }

                else
                {
                  v762 = v761 + ((0x8000 - v761) >> v760);
                }

                *v720 = v762;
                if (v759 < 0x20)
                {
                  LOWORD(v759) = v759 + 1;
                }

                v720[2] = v759;
              }

              if (!v724)
              {
                LOBYTE(v535) = 13;
                a3[2] = 13;
                goto LABEL_790;
              }

              LOBYTE(v535) = 14;
              a3[2] = 14;
              v667 = *v23;
              v668 = a3[16];
              v669 = v668;
              if (v667 < 1)
              {
                goto LABEL_571;
              }

              goto LABEL_568;
            }

            v723 = v723;
            v732 = *(a4 + 32);
            v733 = *(a4 + 40);
            if (v733 >= v732)
            {
              v737 = *(a4 + 40);
              goto LABEL_654;
            }

            v734 = 8 - v723;
            if ((8 - v723) >= 7)
            {
              v735 = 7;
            }

            else
            {
              v735 = 8 - v723;
            }

            v736 = ((v735 ^ 0xFu) - v723) >> 3;
            if (v736 >= ~v733 + v732)
            {
              v736 = ~v733 + v732;
            }

            if (v736 >= 0xF)
            {
              v738 = v736 + 1;
              v739 = (v736 + 1) & 0x3FFFFFF0;
              v737 = &v733->u8[v739];
              v740 = 0uLL;
              v741 = v723;
              v742 = v731;
              v743 = vdupq_n_s32(v734);
              v744 = vaddq_s32(v743, xmmword_273BC3230);
              v745 = vaddq_s32(v743, xmmword_273BC3240);
              v746 = vaddq_s32(v743, xmmword_273BC3250);
              v747 = vaddq_s32(v743, xmmword_273BC3220);
              v748.i64[0] = 0x8000800080008;
              v748.i64[1] = 0x8000800080008;
              v749.i64[0] = 0x7F0000007FLL;
              v749.i64[1] = 0x7F0000007FLL;
              v750 = v739;
              v751 = 0uLL;
              v752 = 0uLL;
              v753 = 0uLL;
              do
              {
                v754 = *v733++;
                v752 = veorq_s8(vshlq_u32(vqtbl1q_s8(v754, xmmword_273B8E7B0), v745), v752);
                v751 = veorq_s8(vshlq_u32(vqtbl1q_s8(v754, xmmword_273B8E7C0), v746), v751);
                v742 = veorq_s8(vshlq_u32(vqtbl1q_s8(v754, xmmword_273B8E7D0), v747), v742);
                v753 = veorq_s8(vshlq_u32(vqtbl1q_s8(v754, xmmword_273B8E7A0), v744), v753);
                v741 = vaddq_s16(v741, v748);
                v740 = vaddq_s16(v740, v748);
                v747 = vaddq_s32(v747, v749);
                v746 = vaddq_s32(v746, v749);
                v745 = vaddq_s32(v745, v749);
                v744 = vaddq_s32(v744, v749);
                v750 -= 16;
              }

              while (v750);
              v755 = v733 < v732;
              v756 = vaddq_s16(v741, v740);
              v756.i16[0] = vaddvq_s16(v756);
              v723 = v756.i32[0];
              v757 = veorq_s8(veorq_s8(v742, v752), veorq_s8(v751, v753));
              *v757.i8 = veor_s8(*v757.i8, *&vextq_s8(v757, v757, 8uLL));
              v731 = v757.i32[0] ^ v757.i32[1];
              if (v738 == v739)
              {
                goto LABEL_653;
              }

              v734 -= 8 * v739;
            }

            else
            {
              v737 = *(a4 + 40);
            }

            do
            {
              v758 = *v737++;
              v731 ^= v758 << v734;
              v723 += 8;
              v755 = v737 < v732;
              v75 = v734 >= 8;
              v734 -= 8;
            }

            while (v75 && v737 < v732);
LABEL_653:
            if (v755)
            {
LABEL_655:
              *(a4 + 48) = v731;
              *(a4 + 54) = v723;
              *(a4 + 40) = v737;
              goto LABEL_656;
            }

LABEL_654:
            *(a4 + 24) = *(a4 + 24) - v723 + 0x4000;
            LOWORD(v723) = 0x4000;
            goto LABEL_655;
          }

          v660 = v658;
          v661 = *(a4 + 32);
          v662 = *(a4 + 40);
          if (v662 >= v661)
          {
            v666 = *(a4 + 40);
            goto LABEL_622;
          }

          v663 = 8 - v660;
          if ((8 - v660) >= 7)
          {
            v664 = 7;
          }

          else
          {
            v664 = 8 - v660;
          }

          v665 = ((v664 ^ 0xFu) - v660) >> 3;
          if (v665 >= ~v662 + v661)
          {
            v665 = ~v662 + v661;
          }

          if (v665 >= 0xF)
          {
            v696 = v665 + 1;
            v697 = (v665 + 1) & 0x3FFFFFF0;
            v666 = &v662->u8[v697];
            v698 = 0uLL;
            v699 = v660;
            v700 = v659;
            v701 = vdupq_n_s32(v663);
            v702 = vaddq_s32(v701, xmmword_273BC3230);
            v703 = vaddq_s32(v701, xmmword_273BC3240);
            v704 = vaddq_s32(v701, xmmword_273BC3250);
            v705 = vaddq_s32(v701, xmmword_273BC3220);
            v706.i64[0] = 0x8000800080008;
            v706.i64[1] = 0x8000800080008;
            v707.i64[0] = 0x7F0000007FLL;
            v707.i64[1] = 0x7F0000007FLL;
            v708 = v697;
            v709 = 0uLL;
            v710 = 0uLL;
            v711 = 0uLL;
            do
            {
              v712 = *v662++;
              v710 = veorq_s8(vshlq_u32(vqtbl1q_s8(v712, xmmword_273B8E7B0), v703), v710);
              v709 = veorq_s8(vshlq_u32(vqtbl1q_s8(v712, xmmword_273B8E7C0), v704), v709);
              v700 = veorq_s8(vshlq_u32(vqtbl1q_s8(v712, xmmword_273B8E7D0), v705), v700);
              v711 = veorq_s8(vshlq_u32(vqtbl1q_s8(v712, xmmword_273B8E7A0), v702), v711);
              v699 = vaddq_s16(v699, v706);
              v698 = vaddq_s16(v698, v706);
              v705 = vaddq_s32(v705, v707);
              v704 = vaddq_s32(v704, v707);
              v703 = vaddq_s32(v703, v707);
              v702 = vaddq_s32(v702, v707);
              v708 -= 16;
            }

            while (v708);
            v713 = v662 < v661;
            LOWORD(v660) = vaddvq_s16(vaddq_s16(v699, v698));
            v714 = veorq_s8(veorq_s8(v700, v710), veorq_s8(v709, v711));
            *v714.i8 = veor_s8(*v714.i8, *&vextq_s8(v714, v714, 8uLL));
            v659 = v714.i32[0] ^ v714.i32[1];
            if (v696 == v697)
            {
              goto LABEL_621;
            }

            v663 -= 8 * v697;
          }

          else
          {
            v666 = *(a4 + 40);
          }

          do
          {
            v715 = *v666++;
            v659 ^= v715 << v663;
            LOWORD(v660) = v660 + 8;
            v713 = v666 < v661;
            v75 = v663 >= 8;
            v663 -= 8;
          }

          while (v75 && v666 < v661);
LABEL_621:
          if (v713)
          {
LABEL_623:
            *(a4 + 48) = v659;
            *(a4 + 54) = v660;
            *(a4 + 40) = v666;
            goto LABEL_624;
          }

LABEL_622:
          *(a4 + 24) = *(a4 + 24) - v660 + 0x4000;
          LOWORD(v660) = 0x4000;
          goto LABEL_623;
        }

        v581 = v579;
        v582 = *(a4 + 32);
        v583 = *(a4 + 40);
        if (v583 >= v582)
        {
          v587 = *(a4 + 40);
          goto LABEL_545;
        }

        v584 = 8 - v579;
        if (v584 >= 7)
        {
          v585 = 7;
        }

        else
        {
          v585 = 8 - v579;
        }

        v586 = ((v585 ^ 0xFu) - v581) >> 3;
        if (v586 >= ~v583 + v582)
        {
          v586 = ~v583 + v582;
        }

        if (v586 >= 0xF)
        {
          v622 = v586 + 1;
          v623 = (v586 + 1) & 0x3FFFFFF0;
          v587 = &v583->u8[v623];
          v624 = 0uLL;
          v625 = v581;
          v626 = v580;
          v627 = vdupq_n_s32(v584);
          v628 = vaddq_s32(v627, xmmword_273BC3230);
          v629 = vaddq_s32(v627, xmmword_273BC3240);
          v630 = vaddq_s32(v627, xmmword_273BC3250);
          v631 = vaddq_s32(v627, xmmword_273BC3220);
          v632.i64[0] = 0x8000800080008;
          v632.i64[1] = 0x8000800080008;
          v633.i64[0] = 0x7F0000007FLL;
          v633.i64[1] = 0x7F0000007FLL;
          v634 = v623;
          v635 = 0uLL;
          v636 = 0uLL;
          v637 = 0uLL;
          do
          {
            v638 = *v583++;
            v636 = veorq_s8(vshlq_u32(vqtbl1q_s8(v638, xmmword_273B8E7B0), v629), v636);
            v635 = veorq_s8(vshlq_u32(vqtbl1q_s8(v638, xmmword_273B8E7C0), v630), v635);
            v626 = veorq_s8(vshlq_u32(vqtbl1q_s8(v638, xmmword_273B8E7D0), v631), v626);
            v637 = veorq_s8(vshlq_u32(vqtbl1q_s8(v638, xmmword_273B8E7A0), v628), v637);
            v625 = vaddq_s16(v625, v632);
            v624 = vaddq_s16(v624, v632);
            v631 = vaddq_s32(v631, v633);
            v630 = vaddq_s32(v630, v633);
            v629 = vaddq_s32(v629, v633);
            v628 = vaddq_s32(v628, v633);
            v634 -= 16;
          }

          while (v634);
          v639 = v583 < v582;
          LOWORD(v581) = vaddvq_s16(vaddq_s16(v625, v624));
          v640 = veorq_s8(veorq_s8(v626, v636), veorq_s8(v635, v637));
          *v640.i8 = veor_s8(*v640.i8, *&vextq_s8(v640, v640, 8uLL));
          v580 = v640.i32[0] ^ v640.i32[1];
          if (v622 == v623)
          {
            goto LABEL_544;
          }

          v584 -= 8 * v623;
        }

        else
        {
          v587 = *(a4 + 40);
        }

        do
        {
          v641 = *v587++;
          v580 ^= v641 << v584;
          LOWORD(v581) = v581 + 8;
          v639 = v587 < v582;
          v75 = v584 >= 8;
          v584 -= 8;
        }

        while (v75 && v587 < v582);
LABEL_544:
        if (v639)
        {
LABEL_546:
          *(a4 + 48) = v580;
          *(a4 + 54) = v581;
          *(a4 + 40) = v587;
          goto LABEL_547;
        }

LABEL_545:
        *(a4 + 24) = *(a4 + 24) - v581 + 0x4000;
        LOWORD(v581) = 0x4000;
        goto LABEL_546;
      }

      if (v537 == 6)
      {
        v589 = 7;
      }

      else
      {
        v589 = -1;
      }

      if (v537 == 7)
      {
        v538 = 23;
        goto LABEL_448;
      }
    }

    if (v589 < 0)
    {
      goto LABEL_447;
    }

    goto LABEL_501;
  }

  LOBYTE(v535) = 15;
  a3[2] = 15;
  v1884 = a3 + 2;
  if ((v1892 & 1) == 0)
  {
    goto LABEL_869;
  }

LABEL_791:
  aom_internal_error(*(v6 + 10736), 7, "Prediction mode %d invalid with ref frame %d %d", v535, a3[16], *v23);
  LOBYTE(v535) = a3[2];
LABEL_792:
  if (v1892)
  {
    if (v535 == 23)
    {
      v934 = v1900;
      LODWORD(v935) = (*(a3 + 167) >> 4) & 3;
      LOBYTE(v535) = 23;
LABEL_926:
      v974 = v1899;
      if ((v535 - 21) < 2u)
      {
        LOWORD(v935) = v935 + 1;
      }

      v978 = v1899;
      if ((0x1510000uLL >> v535))
      {
        v978 = *(v532 + (v21 << 6) + 8 * v935);
      }

      if ((0x1280000uLL >> v535))
      {
        v977 = *(v532 + (v21 << 6) + 8 * v935 + 4);
      }

      else
      {
        v977 = v934;
      }

      goto LABEL_933;
    }

LABEL_795:
    v935 = (*(a3 + 167) >> 4) & 3;
    v936 = (v532 + (v21 << 6));
    v938 = *v936;
    v937 = v936[1];
    v1899 = *v936;
    v1900 = v937;
    v939 = &v936[2 * v935];
    v941 = v939[2];
    v940 = v939[3];
    v1898 = __PAIR64__(v940, v941);
    if (v1893[493])
    {
      if (v938 != ((v938 + ((v938 >> 28) & 7)) & 0xFFF8))
      {
        v942 = (v938 - ((v938 + ((v938 >> 28) & 7)) & 0xFFF8));
        LOWORD(v1899) = (v938 + ((v938 >> 28) & 7)) & 0xFFF8;
        v943 = v942 >= 0 ? (v938 - ((v938 + ((v938 >> 28) & 7)) & 0xFFF8)) : -v942;
        if (v943 >= 5)
        {
          if (v942 > 0)
          {
            v944 = 8;
          }

          else
          {
            v944 = -8;
          }

          LOWORD(v1899) = v944 + ((v938 + ((v938 >> 28) & 7)) & 0xFFF8);
        }
      }

      if (SHIWORD(v938) % 8)
      {
        v945 = SHIWORD(v938) % 8;
        HIWORD(v1899) = HIWORD(v938) - v945;
        v946 = v945 >= 0 ? SHIWORD(v938) % 8 : -v945;
        if (v946 >= 5)
        {
          if (v945 > 0)
          {
            v947 = 8;
          }

          else
          {
            v947 = -8;
          }

          HIWORD(v1899) = v947 + HIWORD(v938) - v945;
        }
      }

      if (v937 != ((v937 + ((v937 >> 28) & 7)) & 0xFFF8))
      {
        v948 = (v937 - ((v937 + ((v937 >> 28) & 7)) & 0xFFF8));
        LOWORD(v1900) = (v937 + ((v937 >> 28) & 7)) & 0xFFF8;
        v949 = v948 >= 0 ? (v937 - ((v937 + ((v937 >> 28) & 7)) & 0xFFF8)) : -v948;
        if (v949 >= 5)
        {
          if (v948 > 0)
          {
            v950 = 8;
          }

          else
          {
            v950 = -8;
          }

          LOWORD(v1900) = v950 + ((v937 + ((v937 >> 28) & 7)) & 0xFFF8);
        }
      }

      if (SHIWORD(v937) % 8)
      {
        v951 = SHIWORD(v937) % 8;
        HIWORD(v1900) = HIWORD(v937) - v951;
        v952 = v951 >= 0 ? SHIWORD(v937) % 8 : -v951;
        if (v952 >= 5)
        {
          if (v951 > 0)
          {
            v953 = 8;
          }

          else
          {
            v953 = -8;
          }

          HIWORD(v1900) = v953 + HIWORD(v937) - v951;
        }
      }

      if (v941 != ((v941 + ((v941 >> 28) & 7)) & 0xFFF8))
      {
        v954 = (v941 - ((v941 + ((v941 >> 28) & 7)) & 0xFFF8));
        LOWORD(v1898) = (v941 + ((v941 >> 28) & 7)) & 0xFFF8;
        v955 = v954 >= 0 ? (v941 - ((v941 + ((v941 >> 28) & 7)) & 0xFFF8)) : -v954;
        if (v955 >= 5)
        {
          if (v954 > 0)
          {
            v956 = 8;
          }

          else
          {
            v956 = -8;
          }

          LOWORD(v1898) = v956 + ((v941 + ((v941 >> 28) & 7)) & 0xFFF8);
        }
      }

      if (SHIWORD(v941) % 8)
      {
        v957 = SHIWORD(v941) % 8;
        WORD1(v1898) = HIWORD(v941) - v957;
        v958 = v957 >= 0 ? SHIWORD(v941) % 8 : -v957;
        if (v958 >= 5)
        {
          if (v957 > 0)
          {
            v959 = 8;
          }

          else
          {
            v959 = -8;
          }

          WORD1(v1898) = v959 + HIWORD(v941) - v957;
        }
      }

      if (v940 != ((v940 + ((v940 >> 28) & 7)) & 0xFFF8))
      {
        v960 = (v940 - ((v940 + ((v940 >> 28) & 7)) & 0xFFF8));
        WORD2(v1898) = (v940 + ((v940 >> 28) & 7)) & 0xFFF8;
        v961 = v960 >= 0 ? (v940 - ((v940 + ((v940 >> 28) & 7)) & 0xFFF8)) : -v960;
        if (v961 >= 5)
        {
          if (v960 > 0)
          {
            v962 = 8;
          }

          else
          {
            v962 = -8;
          }

          WORD2(v1898) = v962 + ((v940 + ((v940 >> 28) & 7)) & 0xFFF8);
        }
      }

      v963 = HIWORD(v940);
      LOWORD(v940) = SHIWORD(v940) % 8;
      if (!(SHIWORD(v940) % 8))
      {
        goto LABEL_925;
      }

      v964 = v940;
      v965 = v963 - v940;
      HIWORD(v1898) = v963 - v964;
      v966 = v964 >= 0 ? v964 : -v964;
      if (v966 < 5)
      {
        goto LABEL_925;
      }

      if (v964 > 0)
      {
        v967 = 8;
      }

      else
      {
        v967 = -8;
      }

      v968 = v967 + v965;
      goto LABEL_924;
    }

    if (v1888)
    {
LABEL_925:
      v934 = v1900;
      goto LABEL_926;
    }

    if (v938)
    {
      if (v938 < 1)
      {
        v979 = v938 + 1;
      }

      else
      {
        v979 = v938 - 1;
      }

      LOWORD(v1899) = v979;
      if ((v938 & 0x10000) == 0)
      {
LABEL_878:
        if ((v937 & 1) == 0)
        {
          goto LABEL_879;
        }

        goto LABEL_901;
      }
    }

    else if ((v938 & 0x10000) == 0)
    {
      goto LABEL_878;
    }

    if (v938 >> 16 < 1)
    {
      v980 = HIWORD(v938) + 1;
    }

    else
    {
      v980 = HIWORD(v938) - 1;
    }

    HIWORD(v1899) = v980;
    if ((v937 & 1) == 0)
    {
LABEL_879:
      if ((v937 & 0x10000) == 0)
      {
        goto LABEL_880;
      }

      goto LABEL_905;
    }

LABEL_901:
    if (v937 < 1)
    {
      v981 = v937 + 1;
    }

    else
    {
      v981 = v937 - 1;
    }

    LOWORD(v1900) = v981;
    if ((v937 & 0x10000) == 0)
    {
LABEL_880:
      if ((v941 & 1) == 0)
      {
        goto LABEL_881;
      }

      goto LABEL_909;
    }

LABEL_905:
    if (v937 >> 16 < 1)
    {
      v982 = HIWORD(v937) + 1;
    }

    else
    {
      v982 = HIWORD(v937) - 1;
    }

    HIWORD(v1900) = v982;
    if ((v941 & 1) == 0)
    {
LABEL_881:
      if ((v941 & 0x10000) == 0)
      {
        goto LABEL_882;
      }

      goto LABEL_913;
    }

LABEL_909:
    if (v941 < 1)
    {
      v983 = v941 + 1;
    }

    else
    {
      v983 = v941 - 1;
    }

    LOWORD(v1898) = v983;
    if ((v941 & 0x10000) == 0)
    {
LABEL_882:
      if ((v940 & 1) == 0)
      {
        goto LABEL_883;
      }

      goto LABEL_917;
    }

LABEL_913:
    if (v941 >> 16 < 1)
    {
      v984 = HIWORD(v941) + 1;
    }

    else
    {
      v984 = HIWORD(v941) - 1;
    }

    WORD1(v1898) = v984;
    if ((v940 & 1) == 0)
    {
LABEL_883:
      if ((v940 & 0x10000) == 0)
      {
        goto LABEL_925;
      }

      goto LABEL_921;
    }

LABEL_917:
    if (v940 < 1)
    {
      v985 = v940 + 1;
    }

    else
    {
      v985 = v940 - 1;
    }

    WORD2(v1898) = v985;
    if ((v940 & 0x10000) == 0)
    {
      goto LABEL_925;
    }

LABEL_921:
    if (v940 >> 16 < 1)
    {
      v968 = HIWORD(v940) + 1;
    }

    else
    {
      v968 = HIWORD(v940) - 1;
    }

LABEL_924:
    HIWORD(v1898) = v968;
    goto LABEL_925;
  }

  if (v535 == 15)
  {
LABEL_869:
    v969 = (a3 + 8);
    v970 = ***(v6 + 7864);
    v971 = v1893[493];
    v972 = v1891;
    goto LABEL_870;
  }

  av1_find_best_ref_mvs(v1888, &v1897[a3[16]], &v1899, &v1898, v1893[493]);
  v535 = a3[2];
  v973 = (*(a3 + 167) >> 4) & 3;
  if (v973 && v535 == 14)
  {
    LODWORD(v1898) = *(v532 + (a3[16] << 6) + 8 * v973 + 8);
    v969 = (a3 + 8);
    *(a3 + 2) = v1898;
    goto LABEL_1023;
  }

  v974 = v1899;
  if (v535 == 16)
  {
    if (*(v1885 + v21) >= 2u)
    {
      v974 = *(v532 + (v21 << 6) + 8 * ((*(a3 + 167) >> 4) & 3));
    }

    v969 = (a3 + 8);
    v975 = *(v6 + 10648);
    v971 = v1893[493];
    if (v1893[493])
    {
      v976 = -1;
    }

    else
    {
      v976 = v1888;
    }

    v1889 = v974;
    goto LABEL_986;
  }

  v934 = v1900;
  v977 = v1900;
  v978 = v1899;
LABEL_933:
  v986 = 0;
  v969 = (a3 + 8);
  v975 = *(v6 + 10648);
  v970 = ***(v6 + 7864);
  v971 = v1893[493];
  if (v1893[493])
  {
    v976 = -1;
  }

  else
  {
    v976 = v1888;
  }

  if (v535 > 0x12u)
  {
    if (v535 <= 0x15u)
    {
      v1879 = v6;
      v1881 = v23;
      if (v535 != 19)
      {
        if (v535 != 20)
        {
          v987 = v975 + 5956;
          *v969 = v1898;
          v988 = *(a4 + 48);
          v989 = *(a4 + 52);
          v990 = v989 >> 8;
          v991 = -1;
          v992 = 16;
          v993 = 0x200000000000000;
          v994 = 0xFF00000000000000;
          do
          {
            v995 = v989;
            ++v991;
            v996 = *v987++;
            v997 = v990 * (v996 >> 6);
            v992 -= 4;
            v989 = v992 + (v997 >> 1);
            v993 -= 0x100000000000000;
            v994 += 0x100000000000000;
          }

          while (HIWORD(v988) < v989);
          v998 = v995 - (v997 >> 1) - v992;
          v999 = 15 - (__clz(v998) ^ 0x1F);
          v1000 = *(a4 + 54) - v999;
          *(a4 + 54) = v1000;
          v1001 = ((v988 - (v989 << 16) + 1) << v999) - 1;
          *(a4 + 48) = v1001;
          *(a4 + 52) = v998 << v999;
          if ((v1000 & 0x8000) == 0)
          {
LABEL_1071:
            if (!*(a4 + 56))
            {
              goto LABEL_1083;
            }

            v1180 = v975[5960];
            v1181 = (v1180 >> 4) + 5;
            v1182 = v994 >> 56;
            v1183 = v975[5956];
            if (v1182 <= 0)
            {
              v975[5956] = v1183 - (v1183 >> v1181);
              v1184 = v975[5957];
            }

            else
            {
              v975[5956] = v1183 + ((0x8000 - v1183) >> v1181);
              v1184 = v975[5957];
              if (v993)
              {
                v975[5957] = v1184 + ((0x8000 - v1184) >> v1181);
                v1185 = v975[5958];
                if (v1182 > 2)
                {
                  v1186 = v1185 + ((0x8000 - v1185) >> v1181);
LABEL_1079:
                  v975[5958] = v1186;
                  if (v1180 >= 0x20)
                  {
                    v1187 = v1180;
                  }

                  else
                  {
                    v1187 = v1180 + 1;
                  }

                  v975[5960] = v1187;
LABEL_1083:
                  v1188 = v7;
                  v1189 = v991;
                  v1190 = v977;
                  if ((v991 & 0xFE) == 2)
                  {
                    goto LABEL_1084;
                  }

                  goto LABEL_1177;
                }

LABEL_1078:
                v1186 = v1185 - (v1185 >> v1181);
                goto LABEL_1079;
              }
            }

            v975[5957] = v1184 - (v1184 >> v1181);
            v1185 = v975[5958];
            goto LABEL_1078;
          }

          v1002 = v1000;
          v1003 = *(a4 + 32);
          v1004 = *(a4 + 40);
          if (v1004 >= v1003)
          {
            v1008 = *(a4 + 40);
            goto LABEL_1069;
          }

          v1005 = 8 - v1002;
          if ((8 - v1002) >= 7)
          {
            v1006 = 7;
          }

          else
          {
            v1006 = 8 - v1002;
          }

          v1007 = ((v1006 ^ 0xFu) - v1002) >> 3;
          if (v1007 >= ~v1004 + v1003)
          {
            v1007 = ~v1004 + v1003;
          }

          if (v1007 >= 0xF)
          {
            v1159 = v1007 + 1;
            v1160 = (v1007 + 1) & 0x3FFFFFF0;
            v1008 = &v1004->u8[v1160];
            v1161 = 0uLL;
            v1162 = v1002;
            v1163 = v1001;
            v1164 = vdupq_n_s32(v1005);
            v1165 = vaddq_s32(v1164, xmmword_273BC3230);
            v1166 = vaddq_s32(v1164, xmmword_273BC3240);
            v1167 = vaddq_s32(v1164, xmmword_273BC3250);
            v1168 = vaddq_s32(v1164, xmmword_273BC3220);
            v1169.i64[0] = 0x8000800080008;
            v1169.i64[1] = 0x8000800080008;
            v1170.i64[0] = 0x7F0000007FLL;
            v1170.i64[1] = 0x7F0000007FLL;
            v1171 = v1160;
            v1172 = 0uLL;
            v1173 = 0uLL;
            v1174 = 0uLL;
            do
            {
              v1175 = *v1004++;
              v1173 = veorq_s8(vshlq_u32(vqtbl1q_s8(v1175, xmmword_273B8E7B0), v1166), v1173);
              v1172 = veorq_s8(vshlq_u32(vqtbl1q_s8(v1175, xmmword_273B8E7C0), v1167), v1172);
              v1163 = veorq_s8(vshlq_u32(vqtbl1q_s8(v1175, xmmword_273B8E7D0), v1168), v1163);
              v1174 = veorq_s8(vshlq_u32(vqtbl1q_s8(v1175, xmmword_273B8E7A0), v1165), v1174);
              v1162 = vaddq_s16(v1162, v1169);
              v1161 = vaddq_s16(v1161, v1169);
              v1168 = vaddq_s32(v1168, v1170);
              v1167 = vaddq_s32(v1167, v1170);
              v1166 = vaddq_s32(v1166, v1170);
              v1165 = vaddq_s32(v1165, v1170);
              v1171 -= 16;
            }

            while (v1171);
            v1176 = v1004 < v1003;
            v1177 = vaddq_s16(v1162, v1161);
            v1177.i16[0] = vaddvq_s16(v1177);
            v1002 = v1177.i32[0];
            v1178 = veorq_s8(veorq_s8(v1163, v1173), veorq_s8(v1172, v1174));
            *v1178.i8 = veor_s8(*v1178.i8, *&vextq_s8(v1178, v1178, 8uLL));
            v1001 = v1178.i32[0] ^ v1178.i32[1];
            if (v1159 == v1160)
            {
              goto LABEL_1068;
            }

            v1005 -= 8 * v1160;
          }

          else
          {
            v1008 = *(a4 + 40);
          }

          do
          {
            v1179 = *v1008++;
            v1001 ^= v1179 << v1005;
            v1002 += 8;
            v1176 = v1008 < v1003;
            v75 = v1005 >= 8;
            v1005 -= 8;
          }

          while (v75 && v1008 < v1003);
LABEL_1068:
          if (v1176)
          {
LABEL_1070:
            *(a4 + 48) = v1001;
            *(a4 + 54) = v1002;
            *(a4 + 40) = v1008;
            goto LABEL_1071;
          }

LABEL_1069:
          *(a4 + 24) = *(a4 + 24) - v1002 + 0x4000;
          LOWORD(v1002) = 0x4000;
          goto LABEL_1070;
        }

        v1099 = v975 + 5956;
        v1100 = *(a4 + 48);
        v1101 = *(a4 + 52);
        v1102 = v1101 >> 8;
        v1103 = -1;
        v1104 = 16;
        v1105 = 0x200000000000000;
        v1106 = 0xFF00000000000000;
        do
        {
          v1107 = v1101;
          ++v1103;
          v1108 = *v1099++;
          v1109 = v1102 * (v1108 >> 6);
          v1104 -= 4;
          v1101 = v1104 + (v1109 >> 1);
          v1105 -= 0x100000000000000;
          v1106 += 0x100000000000000;
        }

        while (HIWORD(v1100) < v1101);
        v1110 = v1107 - (v1109 >> 1) - v1104;
        v1111 = 15 - (__clz(v1110) ^ 0x1F);
        v1112 = *(a4 + 54) - v1111;
        *(a4 + 54) = v1112;
        v1113 = ((v1100 - (v1101 << 16) + 1) << v1111) - 1;
        *(a4 + 48) = v1113;
        *(a4 + 52) = v1110 << v1111;
        if ((v1112 & 0x8000) == 0)
        {
LABEL_1218:
          if (!*(a4 + 56))
          {
            goto LABEL_1230;
          }

          v1374 = v975[5960];
          v1375 = (v1374 >> 4) + 5;
          v1376 = v1106 >> 56;
          v1377 = v975[5956];
          if (v1376 <= 0)
          {
            v975[5956] = v1377 - (v1377 >> v1375);
            v1378 = v975[5957];
          }

          else
          {
            v975[5956] = v1377 + ((0x8000 - v1377) >> v1375);
            v1378 = v975[5957];
            if (v1105)
            {
              v975[5957] = v1378 + ((0x8000 - v1378) >> v1375);
              v1379 = v975[5958];
              if (v1376 > 2)
              {
                v1380 = v1379 + ((0x8000 - v1379) >> v1375);
LABEL_1226:
                v975[5958] = v1380;
                if (v1374 >= 0x20)
                {
                  v1381 = v1374;
                }

                else
                {
                  v1381 = v1374 + 1;
                }

                v975[5960] = v1381;
LABEL_1230:
                v1382 = v7;
                v1383 = v1103;
                if ((v1103 & 0xFE) == 2)
                {
                  v1384 = v976;
                  v1385 = v975;
                  v1386 = v971;
                  mv_component_0 = read_mv_component_0(a4, v975 + 5961, v971 ^ 1u, v976 > 0);
                  if ((v1383 & 0xFFFFFFFD) != 1)
                  {
LABEL_1232:
                    v1388 = 0;
LABEL_1235:
                    v1158 = v1891;
                    v7 = v1382;
                    v6 = v1879;
                    *(a3 + 4) = mv_component_0 + v978;
                    *(a3 + 5) = v1388 + HIWORD(v978);
                    v1352 = v1900;
                    goto LABEL_1236;
                  }
                }

                else
                {
                  v1384 = v976;
                  v1385 = v975;
                  v1386 = v971;
                  mv_component_0 = 0;
                  if ((v1103 & 0xFD) != 1)
                  {
                    goto LABEL_1232;
                  }
                }

                v1388 = read_mv_component_0(a4, v1385 + 6030, v1386 ^ 1u, v1384 > 0);
                goto LABEL_1235;
              }

LABEL_1225:
              v1380 = v1379 - (v1379 >> v1375);
              goto LABEL_1226;
            }
          }

          v975[5957] = v1378 - (v1378 >> v1375);
          v1379 = v975[5958];
          goto LABEL_1225;
        }

        v1114 = v1112;
        v1115 = *(a4 + 32);
        v1116 = *(a4 + 40);
        if (v1116 >= v1115)
        {
          v1120 = *(a4 + 40);
          goto LABEL_1216;
        }

        v1117 = 8 - v1114;
        if ((8 - v1114) >= 7)
        {
          v1118 = 7;
        }

        else
        {
          v1118 = 8 - v1114;
        }

        v1119 = ((v1118 ^ 0xFu) - v1114) >> 3;
        if (v1119 >= ~v1116 + v1115)
        {
          v1119 = ~v1116 + v1115;
        }

        if (v1119 >= 0xF)
        {
          v1353 = v1119 + 1;
          v1354 = (v1119 + 1) & 0x3FFFFFF0;
          v1120 = &v1116->u8[v1354];
          v1355 = 0uLL;
          v1356 = v1114;
          v1357 = v1113;
          v1358 = vdupq_n_s32(v1117);
          v1359 = vaddq_s32(v1358, xmmword_273BC3230);
          v1360 = vaddq_s32(v1358, xmmword_273BC3240);
          v1361 = vaddq_s32(v1358, xmmword_273BC3250);
          v1362 = vaddq_s32(v1358, xmmword_273BC3220);
          v1363.i64[0] = 0x8000800080008;
          v1363.i64[1] = 0x8000800080008;
          v1364.i64[0] = 0x7F0000007FLL;
          v1364.i64[1] = 0x7F0000007FLL;
          v1365 = v1354;
          v1366 = 0uLL;
          v1367 = 0uLL;
          v1368 = 0uLL;
          do
          {
            v1369 = *v1116++;
            v1367 = veorq_s8(vshlq_u32(vqtbl1q_s8(v1369, xmmword_273B8E7B0), v1360), v1367);
            v1366 = veorq_s8(vshlq_u32(vqtbl1q_s8(v1369, xmmword_273B8E7C0), v1361), v1366);
            v1357 = veorq_s8(vshlq_u32(vqtbl1q_s8(v1369, xmmword_273B8E7D0), v1362), v1357);
            v1368 = veorq_s8(vshlq_u32(vqtbl1q_s8(v1369, xmmword_273B8E7A0), v1359), v1368);
            v1356 = vaddq_s16(v1356, v1363);
            v1355 = vaddq_s16(v1355, v1363);
            v1362 = vaddq_s32(v1362, v1364);
            v1361 = vaddq_s32(v1361, v1364);
            v1360 = vaddq_s32(v1360, v1364);
            v1359 = vaddq_s32(v1359, v1364);
            v1365 -= 16;
          }

          while (v1365);
          v1370 = v1116 < v1115;
          v1371 = vaddq_s16(v1356, v1355);
          v1371.i16[0] = vaddvq_s16(v1371);
          v1114 = v1371.i32[0];
          v1372 = veorq_s8(veorq_s8(v1357, v1367), veorq_s8(v1366, v1368));
          *v1372.i8 = veor_s8(*v1372.i8, *&vextq_s8(v1372, v1372, 8uLL));
          v1113 = v1372.i32[0] ^ v1372.i32[1];
          if (v1353 == v1354)
          {
            goto LABEL_1215;
          }

          v1117 -= 8 * v1354;
        }

        else
        {
          v1120 = *(a4 + 40);
        }

        do
        {
          v1373 = *v1120++;
          v1113 ^= v1373 << v1117;
          v1114 += 8;
          v1370 = v1120 < v1115;
          v75 = v1117 >= 8;
          v1117 -= 8;
        }

        while (v75 && v1120 < v1115);
LABEL_1215:
        if (v1370)
        {
LABEL_1217:
          *(a4 + 48) = v1113;
          *(a4 + 54) = v1114;
          *(a4 + 40) = v1120;
          goto LABEL_1218;
        }

LABEL_1216:
        *(a4 + 24) = *(a4 + 24) - v1114 + 0x4000;
        LOWORD(v1114) = 0x4000;
        goto LABEL_1217;
      }

      v1032 = v975 + 5956;
      *v969 = v974;
      v1033 = *(a4 + 48);
      v1034 = *(a4 + 52);
      v1035 = v1034 >> 8;
      v1036 = -1;
      v1037 = 16;
      v1038 = 0x200000000000000;
      v1039 = 0xFF00000000000000;
      do
      {
        v1040 = v1034;
        ++v1036;
        v1041 = *v1032++;
        v1042 = v1035 * (v1041 >> 6);
        v1037 -= 4;
        v1034 = v1037 + (v1042 >> 1);
        v1038 -= 0x100000000000000;
        v1039 += 0x100000000000000;
      }

      while (HIWORD(v1033) < v1034);
      v1043 = v1040 - (v1042 >> 1) - v1037;
      v1044 = 15 - (__clz(v1043) ^ 0x1F);
      v1045 = *(a4 + 54) - v1044;
      *(a4 + 54) = v1045;
      v1046 = ((v1033 - (v1034 << 16) + 1) << v1044) - 1;
      *(a4 + 48) = v1046;
      *(a4 + 52) = v1043 << v1044;
      if ((v1045 & 0x8000) == 0)
      {
LABEL_1164:
        if (!*(a4 + 56))
        {
          goto LABEL_1176;
        }

        v1308 = v975[5960];
        v1309 = (v1308 >> 4) + 5;
        v1310 = v1039 >> 56;
        v1311 = v975[5956];
        if (v1310 <= 0)
        {
          v975[5956] = v1311 - (v1311 >> v1309);
          v1312 = v975[5957];
        }

        else
        {
          v975[5956] = v1311 + ((0x8000 - v1311) >> v1309);
          v1312 = v975[5957];
          if (v1038)
          {
            v975[5957] = v1312 + ((0x8000 - v1312) >> v1309);
            v1313 = v975[5958];
            if (v1310 > 2)
            {
              v1314 = v1313 + ((0x8000 - v1313) >> v1309);
LABEL_1172:
              v975[5958] = v1314;
              if (v1308 >= 0x20)
              {
                v1315 = v1308;
              }

              else
              {
                v1315 = v1308 + 1;
              }

              v975[5960] = v1315;
LABEL_1176:
              v1188 = v7;
              v1189 = v1036;
              v1190 = v977;
              if ((v1036 & 0xFE) == 2)
              {
LABEL_1084:
                v1191 = v976;
                v1192 = v975;
                v1193 = v971;
                v1194 = read_mv_component_0(a4, v975 + 5961, v971 ^ 1u, v976 > 0);
                if ((v1189 & 0xFFFFFFFD) != 1)
                {
LABEL_1085:
                  v1195 = 0;
LABEL_1179:
                  v1158 = v1891;
                  v7 = v1188;
                  v6 = v1879;
                  *(a3 + 6) = v1194 + v1190;
                  *(a3 + 7) = v1195 + HIWORD(v1190);
                  goto LABEL_1237;
                }

LABEL_1178:
                v1195 = read_mv_component_0(a4, v1192 + 6030, v1193 ^ 1u, v1191 > 0);
                goto LABEL_1179;
              }

LABEL_1177:
              v1191 = v976;
              v1192 = v975;
              v1193 = v971;
              v1194 = 0;
              if ((v1189 & 0xFFFFFFFD) != 1)
              {
                goto LABEL_1085;
              }

              goto LABEL_1178;
            }

LABEL_1171:
            v1314 = v1313 - (v1313 >> v1309);
            goto LABEL_1172;
          }
        }

        v975[5957] = v1312 - (v1312 >> v1309);
        v1313 = v975[5958];
        goto LABEL_1171;
      }

      v1047 = v1045;
      v1048 = *(a4 + 32);
      v1049 = *(a4 + 40);
      if (v1049 >= v1048)
      {
        v1053 = *(a4 + 40);
        goto LABEL_1162;
      }

      v1050 = 8 - v1047;
      if ((8 - v1047) >= 7)
      {
        v1051 = 7;
      }

      else
      {
        v1051 = 8 - v1047;
      }

      v1052 = ((v1051 ^ 0xFu) - v1047) >> 3;
      if (v1052 >= ~v1049 + v1048)
      {
        v1052 = ~v1049 + v1048;
      }

      if (v1052 >= 0xF)
      {
        v1287 = v1052 + 1;
        v1288 = (v1052 + 1) & 0x3FFFFFF0;
        v1053 = &v1049->u8[v1288];
        v1289 = 0uLL;
        v1290 = v1047;
        v1291 = v1046;
        v1292 = vdupq_n_s32(v1050);
        v1293 = vaddq_s32(v1292, xmmword_273BC3230);
        v1294 = vaddq_s32(v1292, xmmword_273BC3240);
        v1295 = vaddq_s32(v1292, xmmword_273BC3250);
        v1296 = vaddq_s32(v1292, xmmword_273BC3220);
        v1297.i64[0] = 0x8000800080008;
        v1297.i64[1] = 0x8000800080008;
        v1298.i64[0] = 0x7F0000007FLL;
        v1298.i64[1] = 0x7F0000007FLL;
        v1299 = v1288;
        v1300 = 0uLL;
        v1301 = 0uLL;
        v1302 = 0uLL;
        do
        {
          v1303 = *v1049++;
          v1301 = veorq_s8(vshlq_u32(vqtbl1q_s8(v1303, xmmword_273B8E7B0), v1294), v1301);
          v1300 = veorq_s8(vshlq_u32(vqtbl1q_s8(v1303, xmmword_273B8E7C0), v1295), v1300);
          v1291 = veorq_s8(vshlq_u32(vqtbl1q_s8(v1303, xmmword_273B8E7D0), v1296), v1291);
          v1302 = veorq_s8(vshlq_u32(vqtbl1q_s8(v1303, xmmword_273B8E7A0), v1293), v1302);
          v1290 = vaddq_s16(v1290, v1297);
          v1289 = vaddq_s16(v1289, v1297);
          v1296 = vaddq_s32(v1296, v1298);
          v1295 = vaddq_s32(v1295, v1298);
          v1294 = vaddq_s32(v1294, v1298);
          v1293 = vaddq_s32(v1293, v1298);
          v1299 -= 16;
        }

        while (v1299);
        v1304 = v1049 < v1048;
        v1305 = vaddq_s16(v1290, v1289);
        v1305.i16[0] = vaddvq_s16(v1305);
        v1047 = v1305.i32[0];
        v1306 = veorq_s8(veorq_s8(v1291, v1301), veorq_s8(v1300, v1302));
        *v1306.i8 = veor_s8(*v1306.i8, *&vextq_s8(v1306, v1306, 8uLL));
        v1046 = v1306.i32[0] ^ v1306.i32[1];
        if (v1287 == v1288)
        {
          goto LABEL_1161;
        }

        v1050 -= 8 * v1288;
      }

      else
      {
        v1053 = *(a4 + 40);
      }

      do
      {
        v1307 = *v1053++;
        v1046 ^= v1307 << v1050;
        v1047 += 8;
        v1304 = v1053 < v1048;
        v75 = v1050 >= 8;
        v1050 -= 8;
      }

      while (v75 && v1053 < v1048);
LABEL_1161:
      if (v1304)
      {
LABEL_1163:
        *(a4 + 48) = v1046;
        *(a4 + 54) = v1047;
        *(a4 + 40) = v1053;
        goto LABEL_1164;
      }

LABEL_1162:
      *(a4 + 24) = *(a4 + 24) - v1047 + 0x4000;
      LOWORD(v1047) = 0x4000;
      goto LABEL_1163;
    }

    if (v535 != 22)
    {
      if (v535 == 23)
      {
        v1121 = ***(v6 + 7864);
        *(a3 + 2) = gm_get_motion_vector(&v7[36 * a3[16] + 39588], v1893[492], v970, *(v6 + 4), *v6, v971);
        *(a3 + 3) = gm_get_motion_vector(&v7[36 * *v23 + 39588], v1893[492], v1121, *(v6 + 4), *v6, v1893[493]);
        goto LABEL_1023;
      }

      if (v535 != 24)
      {
        v972 = v1891;
        goto LABEL_1247;
      }

      v1009 = v975 + 5956;
      v1890 = v976 > 0;
      v1010 = *(a4 + 48);
      v1011 = *(a4 + 52);
      v1012 = v1011 >> 8;
      v1013 = -1;
      v1014 = 16;
      v1015 = 0x200000000000000;
      v1016 = v975 + 5956;
      v1017 = 0xFF00000000000000;
      do
      {
        v1018 = v1011;
        ++v1013;
        v1019 = *v1016++;
        v1020 = v1012 * (v1019 >> 6);
        v1014 -= 4;
        v1011 = v1014 + (v1020 >> 1);
        v1015 -= 0x100000000000000;
        v1017 += 0x100000000000000;
      }

      while (HIWORD(v1010) < v1011);
      v1021 = v1018 - (v1020 >> 1) - v1014;
      v1022 = 15 - (__clz(v1021) ^ 0x1F);
      v1023 = *(a4 + 54) - v1022;
      *(a4 + 54) = v1023;
      v1024 = ((v1010 - (v1011 << 16) + 1) << v1022) - 1;
      *(a4 + 48) = v1024;
      *(a4 + 52) = v1021 << v1022;
      if ((v1023 & 0x8000) == 0)
      {
LABEL_1096:
        if (!*(a4 + 56))
        {
          goto LABEL_1108;
        }

        v1217 = v975[5960];
        v1218 = (v1217 >> 4) + 5;
        v1219 = v1017 >> 56;
        v1220 = v975[5956];
        if (v1219 <= 0)
        {
          v975[5956] = v1220 - (v1220 >> v1218);
          v1221 = v975[5957];
        }

        else
        {
          v975[5956] = v1220 + ((0x8000 - v1220) >> v1218);
          v1221 = v975[5957];
          if (v1015)
          {
            v975[5957] = v1221 + ((0x8000 - v1221) >> v1218);
            v1222 = v975[5958];
            if (v1219 > 2)
            {
              v1223 = v1222 + ((0x8000 - v1222) >> v1218);
LABEL_1104:
              v975[5958] = v1223;
              if (v1217 >= 0x20)
              {
                v1224 = v1217;
              }

              else
              {
                v1224 = v1217 + 1;
              }

              v975[5960] = v1224;
LABEL_1108:
              v1878 = v7;
              v1882 = v23;
              v1225 = v1013;
              v1886 = v975;
              v1226 = v975 + 4096;
              v1227 = v978;
              if ((v1013 & 0xFE) == 2)
              {
                v1228 = v971;
                v1229 = read_mv_component_0(a4, v975 + 5961, v971 ^ 1u, v1890);
                if ((v1225 & 0xFFFFFFFD) != 1)
                {
LABEL_1110:
                  v1230 = 0;
LABEL_1113:
                  v1231 = *(a4 + 48);
                  v1232 = *(a4 + 52);
                  v1233 = v1232 >> 8;
                  v1234 = -1;
                  v1235 = 16;
                  *(a3 + 4) = v1229 + v1227;
                  *(a3 + 5) = v1230 + HIWORD(v1227);
                  v1236 = 0x200000000000000;
                  v1237 = 0xFF00000000000000;
                  do
                  {
                    v1238 = v1232;
                    ++v1234;
                    v1239 = *v1009++;
                    v1240 = v1233 * (v1239 >> 6);
                    v1235 -= 4;
                    v1232 = v1235 + (v1240 >> 1);
                    v1236 -= 0x100000000000000;
                    v1237 += 0x100000000000000;
                  }

                  while (HIWORD(v1231) < v1232);
                  v1241 = v1238 - (v1240 >> 1) - v1235;
                  v1242 = 15 - (__clz(v1241) ^ 0x1F);
                  v1243 = *(a4 + 54) - v1242;
                  *(a4 + 54) = v1243;
                  v1244 = ((v1231 - (v1232 << 16) + 1) << v1242) - 1;
                  *(a4 + 48) = v1244;
                  *(a4 + 52) = v1241 << v1242;
                  v1245 = v1228;
                  v23 = v1882;
                  if ((v1243 & 0x8000) == 0)
                  {
LABEL_1135:
                    if (!*(a4 + 56))
                    {
                      goto LABEL_1147;
                    }

                    v1274 = v1226[1864];
                    v1275 = (v1274 >> 4) + 5;
                    v1276 = v1237 >> 56;
                    v1277 = v1226[1860];
                    if (v1276 <= 0)
                    {
                      v1226[1860] = v1277 - (v1277 >> v1275);
                      v1278 = v1226[1861];
                    }

                    else
                    {
                      v1226[1860] = v1277 + ((0x8000 - v1277) >> v1275);
                      v1278 = v1226[1861];
                      if (v1236)
                      {
                        v1226[1861] = v1278 + ((0x8000 - v1278) >> v1275);
                        v1279 = v1226[1862];
                        if (v1276 > 2)
                        {
                          v1280 = v1279 + ((0x8000 - v1279) >> v1275);
LABEL_1143:
                          v1226[1862] = v1280;
                          if (v1274 >= 0x20)
                          {
                            v1281 = v1274;
                          }

                          else
                          {
                            v1281 = v1274 + 1;
                          }

                          v1226[1864] = v1281;
LABEL_1147:
                          v1282 = v1234;
                          if ((v1234 & 0xFE) == 2)
                          {
                            v1283 = v1886;
                            v1284 = v1245;
                            v1285 = read_mv_component_0(a4, v1886 + 5961, v1245 ^ 1u, v1890);
                            if ((v1282 & 0xFFFFFFFD) != 1)
                            {
LABEL_1149:
                              v1286 = 0;
                              goto LABEL_1152;
                            }
                          }

                          else
                          {
                            v1283 = v1886;
                            v1284 = v1245;
                            v1285 = 0;
                            if ((v1234 & 0xFD) != 1)
                            {
                              goto LABEL_1149;
                            }
                          }

                          v1286 = read_mv_component_0(a4, v1283 + 6030, v1284 ^ 1u, v1890);
LABEL_1152:
                          v7 = v1878;
                          *(a3 + 6) = v1285 + v977;
                          *(a3 + 7) = v1286 + HIWORD(v977);
                          v972 = v1891;
                          if ((*v969 + 0x3FFF) > 0x7FFEu)
                          {
                            goto LABEL_1241;
                          }

                          goto LABEL_1238;
                        }

LABEL_1142:
                        v1280 = v1279 - (v1279 >> v1275);
                        goto LABEL_1143;
                      }
                    }

                    v1226[1861] = v1278 - (v1278 >> v1275);
                    v1279 = v1226[1862];
                    goto LABEL_1142;
                  }

                  v1246 = v1243;
                  v1247 = *(a4 + 32);
                  v1248 = *(a4 + 40);
                  if (v1248 >= v1247)
                  {
                    v1252 = *(a4 + 40);
                    goto LABEL_1133;
                  }

                  v1249 = 8 - v1246;
                  if ((8 - v1246) >= 7)
                  {
                    v1250 = 7;
                  }

                  else
                  {
                    v1250 = 8 - v1246;
                  }

                  v1251 = ((v1250 ^ 0xFu) - v1246) >> 3;
                  if (v1251 >= ~v1248 + v1247)
                  {
                    v1251 = ~v1248 + v1247;
                  }

                  if (v1251 >= 0xF)
                  {
                    v1253 = v1251 + 1;
                    v1254 = (v1251 + 1) & 0x3FFFFFF0;
                    v1252 = &v1248->u8[v1254];
                    v1255 = 0uLL;
                    v1256 = v1246;
                    v1257 = v1244;
                    v1258 = vdupq_n_s32(v1249);
                    v1259 = vaddq_s32(v1258, xmmword_273BC3230);
                    v1260 = vaddq_s32(v1258, xmmword_273BC3240);
                    v1261 = vaddq_s32(v1258, xmmword_273BC3250);
                    v1262 = vaddq_s32(v1258, xmmword_273BC3220);
                    v1263.i64[0] = 0x8000800080008;
                    v1263.i64[1] = 0x8000800080008;
                    v1264.i64[0] = 0x7F0000007FLL;
                    v1264.i64[1] = 0x7F0000007FLL;
                    v1265 = v1254;
                    v1266 = 0uLL;
                    v1267 = 0uLL;
                    v1268 = 0uLL;
                    do
                    {
                      v1269 = *v1248++;
                      v1267 = veorq_s8(vshlq_u32(vqtbl1q_s8(v1269, xmmword_273B8E7B0), v1260), v1267);
                      v1266 = veorq_s8(vshlq_u32(vqtbl1q_s8(v1269, xmmword_273B8E7C0), v1261), v1266);
                      v1257 = veorq_s8(vshlq_u32(vqtbl1q_s8(v1269, xmmword_273B8E7D0), v1262), v1257);
                      v1268 = veorq_s8(vshlq_u32(vqtbl1q_s8(v1269, xmmword_273B8E7A0), v1259), v1268);
                      v1256 = vaddq_s16(v1256, v1263);
                      v1255 = vaddq_s16(v1255, v1263);
                      v1262 = vaddq_s32(v1262, v1264);
                      v1261 = vaddq_s32(v1261, v1264);
                      v1260 = vaddq_s32(v1260, v1264);
                      v1259 = vaddq_s32(v1259, v1264);
                      v1265 -= 16;
                    }

                    while (v1265);
                    v1270 = v1248 < v1247;
                    v1271 = vaddq_s16(v1256, v1255);
                    v1271.i16[0] = vaddvq_s16(v1271);
                    v1246 = v1271.i32[0];
                    v1272 = veorq_s8(veorq_s8(v1257, v1267), veorq_s8(v1266, v1268));
                    *v1272.i8 = veor_s8(*v1272.i8, *&vextq_s8(v1272, v1272, 8uLL));
                    v1244 = v1272.i32[0] ^ v1272.i32[1];
                    if (v1253 == v1254)
                    {
                      goto LABEL_1132;
                    }

                    v1249 -= 8 * v1254;
                  }

                  else
                  {
                    v1252 = *(a4 + 40);
                  }

                  do
                  {
                    v1273 = *v1252++;
                    v1244 ^= v1273 << v1249;
                    v1246 += 8;
                    v1270 = v1252 < v1247;
                    v75 = v1249 >= 8;
                    v1249 -= 8;
                  }

                  while (v75 && v1252 < v1247);
LABEL_1132:
                  if (v1270)
                  {
LABEL_1134:
                    *(a4 + 48) = v1244;
                    *(a4 + 54) = v1246;
                    *(a4 + 40) = v1252;
                    goto LABEL_1135;
                  }

LABEL_1133:
                  *(a4 + 24) = *(a4 + 24) - v1246 + 0x4000;
                  LOWORD(v1246) = 0x4000;
                  goto LABEL_1134;
                }
              }

              else
              {
                v1228 = v971;
                v1229 = 0;
                if ((v1013 & 0xFD) != 1)
                {
                  goto LABEL_1110;
                }
              }

              v1230 = read_mv_component_0(a4, v1886 + 6030, v1228 ^ 1u, v1890);
              goto LABEL_1113;
            }

LABEL_1103:
            v1223 = v1222 - (v1222 >> v1218);
            goto LABEL_1104;
          }
        }

        v975[5957] = v1221 - (v1221 >> v1218);
        v1222 = v975[5958];
        goto LABEL_1103;
      }

      v1025 = v1023;
      v1026 = *(a4 + 32);
      v1027 = *(a4 + 40);
      if (v1027 >= v1026)
      {
        v1031 = *(a4 + 40);
        goto LABEL_1094;
      }

      v1028 = 8 - v1025;
      if ((8 - v1025) >= 7)
      {
        v1029 = 7;
      }

      else
      {
        v1029 = 8 - v1025;
      }

      v1030 = ((v1029 ^ 0xFu) - v1025) >> 3;
      if (v1030 >= ~v1027 + v1026)
      {
        v1030 = ~v1027 + v1026;
      }

      if (v1030 >= 0xF)
      {
        v1196 = v1030 + 1;
        v1197 = (v1030 + 1) & 0x3FFFFFF0;
        v1031 = &v1027->u8[v1197];
        v1198 = 0uLL;
        v1199 = v1025;
        v1200 = v1024;
        v1201 = vdupq_n_s32(v1028);
        v1202 = vaddq_s32(v1201, xmmword_273BC3230);
        v1203 = vaddq_s32(v1201, xmmword_273BC3240);
        v1204 = vaddq_s32(v1201, xmmword_273BC3250);
        v1205 = vaddq_s32(v1201, xmmword_273BC3220);
        v1206.i64[0] = 0x8000800080008;
        v1206.i64[1] = 0x8000800080008;
        v1207.i64[0] = 0x7F0000007FLL;
        v1207.i64[1] = 0x7F0000007FLL;
        v1208 = v1197;
        v1209 = 0uLL;
        v1210 = 0uLL;
        v1211 = 0uLL;
        do
        {
          v1212 = *v1027++;
          v1210 = veorq_s8(vshlq_u32(vqtbl1q_s8(v1212, xmmword_273B8E7B0), v1203), v1210);
          v1209 = veorq_s8(vshlq_u32(vqtbl1q_s8(v1212, xmmword_273B8E7C0), v1204), v1209);
          v1200 = veorq_s8(vshlq_u32(vqtbl1q_s8(v1212, xmmword_273B8E7D0), v1205), v1200);
          v1211 = veorq_s8(vshlq_u32(vqtbl1q_s8(v1212, xmmword_273B8E7A0), v1202), v1211);
          v1199 = vaddq_s16(v1199, v1206);
          v1198 = vaddq_s16(v1198, v1206);
          v1205 = vaddq_s32(v1205, v1207);
          v1204 = vaddq_s32(v1204, v1207);
          v1203 = vaddq_s32(v1203, v1207);
          v1202 = vaddq_s32(v1202, v1207);
          v1208 -= 16;
        }

        while (v1208);
        v1213 = v1027 < v1026;
        v1214 = vaddq_s16(v1199, v1198);
        v1214.i16[0] = vaddvq_s16(v1214);
        v1025 = v1214.i32[0];
        v1215 = veorq_s8(veorq_s8(v1200, v1210), veorq_s8(v1209, v1211));
        *v1215.i8 = veor_s8(*v1215.i8, *&vextq_s8(v1215, v1215, 8uLL));
        v1024 = v1215.i32[0] ^ v1215.i32[1];
        if (v1196 == v1197)
        {
          goto LABEL_1093;
        }

        v1028 -= 8 * v1197;
      }

      else
      {
        v1031 = *(a4 + 40);
      }

      do
      {
        v1216 = *v1031++;
        v1024 ^= v1216 << v1028;
        v1025 += 8;
        v1213 = v1031 < v1026;
        v75 = v1028 >= 8;
        v1028 -= 8;
      }

      while (v75 && v1031 < v1026);
LABEL_1093:
      if (v1213)
      {
LABEL_1095:
        *(a4 + 48) = v1024;
        *(a4 + 54) = v1025;
        *(a4 + 40) = v1031;
        goto LABEL_1096;
      }

LABEL_1094:
      *(a4 + 24) = *(a4 + 24) - v1025 + 0x4000;
      LOWORD(v1025) = 0x4000;
      goto LABEL_1095;
    }

    v1076 = v975 + 5956;
    v1077 = *(a4 + 48);
    v1078 = *(a4 + 52);
    v1079 = v1078 >> 8;
    v1080 = -1;
    v1081 = 16;
    v1082 = 0x200000000000000;
    v1083 = 0xFF00000000000000;
    do
    {
      v1084 = v1078;
      ++v1080;
      v1085 = *v1076++;
      v1086 = v1079 * (v1085 >> 6);
      v1081 -= 4;
      v1078 = v1081 + (v1086 >> 1);
      v1082 -= 0x100000000000000;
      v1083 += 0x100000000000000;
    }

    while (HIWORD(v1077) < v1078);
    v1087 = v1084 - (v1086 >> 1) - v1081;
    v1088 = 15 - (__clz(v1087) ^ 0x1F);
    v1089 = *(a4 + 54) - v1088;
    *(a4 + 54) = v1089;
    v1090 = ((v1077 - (v1078 << 16) + 1) << v1088) - 1;
    *(a4 + 48) = v1090;
    *(a4 + 52) = v1087 << v1088;
    if ((v1089 & 0x8000) == 0)
    {
LABEL_1190:
      if (!*(a4 + 56))
      {
        goto LABEL_1202;
      }

      v1337 = v975[5960];
      v1338 = (v1337 >> 4) + 5;
      v1339 = v1083 >> 56;
      v1340 = v975[5956];
      if (v1339 <= 0)
      {
        v975[5956] = v1340 - (v1340 >> v1338);
        v1341 = v975[5957];
      }

      else
      {
        v975[5956] = v1340 + ((0x8000 - v1340) >> v1338);
        v1341 = v975[5957];
        if (v1082)
        {
          v975[5957] = v1341 + ((0x8000 - v1341) >> v1338);
          v1342 = v975[5958];
          if (v1339 > 2)
          {
            v1343 = v1342 + ((0x8000 - v1342) >> v1338);
LABEL_1198:
            v975[5958] = v1343;
            if (v1337 >= 0x20)
            {
              v1344 = v1337;
            }

            else
            {
              v1344 = v1337 + 1;
            }

            v975[5960] = v1344;
LABEL_1202:
            v1880 = v6;
            v1881 = v23;
            v1345 = v7;
            v1346 = v1080;
            if ((v1080 & 0xFE) == 2)
            {
              v1347 = v976;
              v1348 = v975;
              v1349 = v971;
              v1350 = read_mv_component_0(a4, v975 + 5961, v971 ^ 1u, v976 > 0);
              if ((v1346 & 0xFFFFFFFD) != 1)
              {
LABEL_1204:
                v1351 = 0;
LABEL_1207:
                v1158 = v1891;
                v7 = v1345;
                v6 = v1880;
                *(a3 + 4) = v1350 + v978;
                *(a3 + 5) = v1351 + HIWORD(v978);
                v1352 = HIDWORD(v1898);
LABEL_1236:
                *(a3 + 3) = v1352;
LABEL_1237:
                v23 = v1881;
                v972 = v1158;
                if ((*v969 + 0x3FFF) > 0x7FFEu)
                {
                  goto LABEL_1241;
                }

                goto LABEL_1238;
              }
            }

            else
            {
              v1347 = v976;
              v1348 = v975;
              v1349 = v971;
              v1350 = 0;
              if ((v1080 & 0xFD) != 1)
              {
                goto LABEL_1204;
              }
            }

            v1351 = read_mv_component_0(a4, v1348 + 6030, v1349 ^ 1u, v1347 > 0);
            goto LABEL_1207;
          }

LABEL_1197:
          v1343 = v1342 - (v1342 >> v1338);
          goto LABEL_1198;
        }
      }

      v975[5957] = v1341 - (v1341 >> v1338);
      v1342 = v975[5958];
      goto LABEL_1197;
    }

    v1091 = v1089;
    v1092 = *(a4 + 32);
    v1093 = *(a4 + 40);
    if (v1093 >= v1092)
    {
      v1097 = *(a4 + 40);
      goto LABEL_1188;
    }

    v1094 = 8 - v1091;
    if ((8 - v1091) >= 7)
    {
      v1095 = 7;
    }

    else
    {
      v1095 = 8 - v1091;
    }

    v1096 = ((v1095 ^ 0xFu) - v1091) >> 3;
    if (v1096 >= ~v1093 + v1092)
    {
      v1096 = ~v1093 + v1092;
    }

    if (v1096 >= 0xF)
    {
      v1316 = v1096 + 1;
      v1317 = (v1096 + 1) & 0x3FFFFFF0;
      v1097 = &v1093->u8[v1317];
      v1318 = 0uLL;
      v1319 = v1091;
      v1320 = v1090;
      v1321 = vdupq_n_s32(v1094);
      v1322 = vaddq_s32(v1321, xmmword_273BC3230);
      v1323 = vaddq_s32(v1321, xmmword_273BC3240);
      v1324 = vaddq_s32(v1321, xmmword_273BC3250);
      v1325 = vaddq_s32(v1321, xmmword_273BC3220);
      v1326.i64[0] = 0x8000800080008;
      v1326.i64[1] = 0x8000800080008;
      v1327.i64[0] = 0x7F0000007FLL;
      v1327.i64[1] = 0x7F0000007FLL;
      v1328 = v1317;
      v1329 = 0uLL;
      v1330 = 0uLL;
      v1331 = 0uLL;
      do
      {
        v1332 = *v1093++;
        v1330 = veorq_s8(vshlq_u32(vqtbl1q_s8(v1332, xmmword_273B8E7B0), v1323), v1330);
        v1329 = veorq_s8(vshlq_u32(vqtbl1q_s8(v1332, xmmword_273B8E7C0), v1324), v1329);
        v1320 = veorq_s8(vshlq_u32(vqtbl1q_s8(v1332, xmmword_273B8E7D0), v1325), v1320);
        v1331 = veorq_s8(vshlq_u32(vqtbl1q_s8(v1332, xmmword_273B8E7A0), v1322), v1331);
        v1319 = vaddq_s16(v1319, v1326);
        v1318 = vaddq_s16(v1318, v1326);
        v1325 = vaddq_s32(v1325, v1327);
        v1324 = vaddq_s32(v1324, v1327);
        v1323 = vaddq_s32(v1323, v1327);
        v1322 = vaddq_s32(v1322, v1327);
        v1328 -= 16;
      }

      while (v1328);
      v1333 = v1093 < v1092;
      v1334 = vaddq_s16(v1319, v1318);
      v1334.i16[0] = vaddvq_s16(v1334);
      v1091 = v1334.i32[0];
      v1335 = veorq_s8(veorq_s8(v1320, v1330), veorq_s8(v1329, v1331));
      *v1335.i8 = veor_s8(*v1335.i8, *&vextq_s8(v1335, v1335, 8uLL));
      v1090 = v1335.i32[0] ^ v1335.i32[1];
      if (v1316 == v1317)
      {
        goto LABEL_1187;
      }

      v1094 -= 8 * v1317;
    }

    else
    {
      v1097 = *(a4 + 40);
    }

    do
    {
      v1336 = *v1097++;
      v1090 ^= v1336 << v1094;
      v1091 += 8;
      v1333 = v1097 < v1092;
      v75 = v1094 >= 8;
      v1094 -= 8;
    }

    while (v75 && v1097 < v1092);
LABEL_1187:
    if (v1333)
    {
LABEL_1189:
      *(a4 + 48) = v1090;
      *(a4 + 54) = v1091;
      *(a4 + 40) = v1097;
      goto LABEL_1190;
    }

LABEL_1188:
    *(a4 + 24) = *(a4 + 24) - v1091 + 0x4000;
    LOWORD(v1091) = 0x4000;
    goto LABEL_1189;
  }

  if (v535 > 0xFu)
  {
    if (v535 != 16)
    {
      if (v535 != 17)
      {
        v972 = v1891;
        *v969 = v1898;
        goto LABEL_1024;
      }

      *(a3 + 2) = v974;
      *(a3 + 3) = v934;
LABEL_1023:
      v972 = v1891;
LABEL_1024:
      if ((*v969 + 0x3FFF) > 0x7FFEu)
      {
        goto LABEL_1241;
      }

      goto LABEL_1238;
    }

    v1889 = v978;
LABEL_986:
    v1054 = v975 + 5956;
    v1055 = *(a4 + 48);
    v1056 = *(a4 + 52);
    v1057 = v1056 >> 8;
    v1058 = -1;
    v1059 = 16;
    v1060 = 0x200000000000000;
    v1061 = 0xFF00000000000000;
    do
    {
      v1062 = v1056;
      ++v1058;
      v1063 = *v1054++;
      v1064 = v1057 * (v1063 >> 6);
      v1059 -= 4;
      v1056 = v1059 + (v1064 >> 1);
      v1060 -= 0x100000000000000;
      v1061 += 0x100000000000000;
    }

    while (HIWORD(v1055) < v1056);
    v1065 = v1062 - (v1064 >> 1) - v1059;
    v1066 = 15 - (__clz(v1065) ^ 0x1F);
    v1067 = *(a4 + 54) - v1066;
    *(a4 + 54) = v1067;
    v1068 = ((v1055 - (v1056 << 16) + 1) << v1066) - 1;
    *(a4 + 48) = v1068;
    *(a4 + 52) = v1065 << v1066;
    if ((v1067 & 0x8000) == 0)
    {
LABEL_1043:
      if (!*(a4 + 56))
      {
        goto LABEL_1055;
      }

      v1142 = v975[5960];
      v1143 = (v1142 >> 4) + 5;
      v1144 = v1061 >> 56;
      v1145 = v975[5956];
      if (v1144 <= 0)
      {
        v975[5956] = v1145 - (v1145 >> v1143);
        v1146 = v975[5957];
      }

      else
      {
        v975[5956] = v1145 + ((0x8000 - v1145) >> v1143);
        v1146 = v975[5957];
        if (v1060)
        {
          v975[5957] = v1146 + ((0x8000 - v1146) >> v1143);
          v1147 = v975[5958];
          if (v1144 > 2)
          {
            v1148 = v1147 + ((0x8000 - v1147) >> v1143);
LABEL_1051:
            v975[5958] = v1148;
            if (v1142 >= 0x20)
            {
              v1149 = v1142;
            }

            else
            {
              v1149 = v1142 + 1;
            }

            v975[5960] = v1149;
LABEL_1055:
            v1150 = v6;
            v1881 = v23;
            v1151 = v7;
            v1152 = v1058;
            if ((v1058 & 0xFE) == 2)
            {
              v1153 = v976;
              v1154 = v975;
              v1155 = v971;
              v1156 = read_mv_component_0(a4, v975 + 5961, v971 ^ 1u, v976 > 0);
              if ((v1152 & 0xFFFFFFFD) != 1)
              {
LABEL_1057:
                v1157 = 0;
LABEL_1060:
                v1158 = v1891;
                v7 = v1151;
                v6 = v1150;
                *(a3 + 4) = v1156 + v1889;
                *(a3 + 5) = v1157 + HIWORD(v1889);
                goto LABEL_1237;
              }
            }

            else
            {
              v1153 = v976;
              v1154 = v975;
              v1155 = v971;
              v1156 = 0;
              if ((v1058 & 0xFD) != 1)
              {
                goto LABEL_1057;
              }
            }

            v1157 = read_mv_component_0(a4, v1154 + 6030, v1155 ^ 1u, v1153 > 0);
            goto LABEL_1060;
          }

LABEL_1050:
          v1148 = v1147 - (v1147 >> v1143);
          goto LABEL_1051;
        }
      }

      v975[5957] = v1146 - (v1146 >> v1143);
      v1147 = v975[5958];
      goto LABEL_1050;
    }

    v1069 = v1067;
    v1070 = *(a4 + 32);
    v1071 = *(a4 + 40);
    if (v1071 >= v1070)
    {
      v1075 = *(a4 + 40);
      goto LABEL_1041;
    }

    v1072 = 8 - v1069;
    if ((8 - v1069) >= 7)
    {
      v1073 = 7;
    }

    else
    {
      v1073 = 8 - v1069;
    }

    v1074 = ((v1073 ^ 0xFu) - v1069) >> 3;
    if (v1074 >= ~v1071 + v1070)
    {
      v1074 = ~v1071 + v1070;
    }

    if (v1074 >= 0xF)
    {
      v1122 = v1074 + 1;
      v1123 = (v1074 + 1) & 0x3FFFFFF0;
      v1075 = &v1071->u8[v1123];
      v1124 = 0uLL;
      v1125 = v1069;
      v1126 = v1068;
      v1127 = vdupq_n_s32(v1072);
      v1128 = vaddq_s32(v1127, xmmword_273BC3230);
      v1129 = vaddq_s32(v1127, xmmword_273BC3240);
      v1130 = vaddq_s32(v1127, xmmword_273BC3250);
      v1131 = vaddq_s32(v1127, xmmword_273BC3220);
      v1132.i64[0] = 0x8000800080008;
      v1132.i64[1] = 0x8000800080008;
      v1133.i64[0] = 0x7F0000007FLL;
      v1133.i64[1] = 0x7F0000007FLL;
      v1134 = v1123;
      v1135 = 0uLL;
      v1136 = 0uLL;
      v1137 = 0uLL;
      do
      {
        v1138 = *v1071++;
        v1136 = veorq_s8(vshlq_u32(vqtbl1q_s8(v1138, xmmword_273B8E7B0), v1129), v1136);
        v1135 = veorq_s8(vshlq_u32(vqtbl1q_s8(v1138, xmmword_273B8E7C0), v1130), v1135);
        v1126 = veorq_s8(vshlq_u32(vqtbl1q_s8(v1138, xmmword_273B8E7D0), v1131), v1126);
        v1137 = veorq_s8(vshlq_u32(vqtbl1q_s8(v1138, xmmword_273B8E7A0), v1128), v1137);
        v1125 = vaddq_s16(v1125, v1132);
        v1124 = vaddq_s16(v1124, v1132);
        v1131 = vaddq_s32(v1131, v1133);
        v1130 = vaddq_s32(v1130, v1133);
        v1129 = vaddq_s32(v1129, v1133);
        v1128 = vaddq_s32(v1128, v1133);
        v1134 -= 16;
      }

      while (v1134);
      v1139 = v1071 < v1070;
      LOWORD(v1069) = vaddvq_s16(vaddq_s16(v1125, v1124));
      v1140 = veorq_s8(veorq_s8(v1126, v1136), veorq_s8(v1135, v1137));
      *v1140.i8 = veor_s8(*v1140.i8, *&vextq_s8(v1140, v1140, 8uLL));
      v1068 = v1140.i32[0] ^ v1140.i32[1];
      if (v1122 == v1123)
      {
        goto LABEL_1040;
      }

      v1072 -= 8 * v1123;
    }

    else
    {
      v1075 = *(a4 + 40);
    }

    do
    {
      v1141 = *v1075++;
      v1068 ^= v1141 << v1072;
      LOWORD(v1069) = v1069 + 8;
      v1139 = v1075 < v1070;
      v75 = v1072 >= 8;
      v1072 -= 8;
    }

    while (v75 && v1075 < v1070);
LABEL_1040:
    if (v1139)
    {
LABEL_1042:
      *(a4 + 48) = v1068;
      *(a4 + 54) = v1069;
      *(a4 + 40) = v1075;
      goto LABEL_1043;
    }

LABEL_1041:
    *(a4 + 24) = *(a4 + 24) - v1069 + 0x4000;
    LOWORD(v1069) = 0x4000;
    goto LABEL_1042;
  }

  if (v535 == 13)
  {
    *v969 = v974;
    goto LABEL_1023;
  }

  v972 = v1891;
  if (v535 != 14)
  {
    if (v535 != 15)
    {
      goto LABEL_1247;
    }

LABEL_870:
    *(a3 + 2) = gm_get_motion_vector(&v7[36 * a3[16] + 39588], v1893[492], v970, *(v6 + 4), *v6, v971);
    if ((*v969 + 0x3FFF) > 0x7FFEu)
    {
      goto LABEL_1241;
    }

    goto LABEL_1238;
  }

  v1098 = v1898;
  *v969 = v1898;
  if ((v1098 + 0x3FFF) > 0x7FFEu)
  {
    goto LABEL_1241;
  }

LABEL_1238:
  v1389 = *(a3 + 5);
  if (v1389 >= -16383)
  {
    v986 = v1389 < 0x4000;
    if (!v1892)
    {
      goto LABEL_1247;
    }

    goto LABEL_1242;
  }

LABEL_1241:
  v986 = 0;
  if (!v1892)
  {
    goto LABEL_1247;
  }

LABEL_1242:
  if (v986)
  {
    v986 = (*(a3 + 6) + 0x3FFF) <= 0x7FFEu && (v1390 = *(a3 + 7), v1390 >= -16383) && v1390 < 0x4000;
  }

LABEL_1247:
  *(v6 + 15056) |= !v986;
  v1391 = *(a3 + 167);
  *(a3 + 167) = v1391 & 0xFBFF;
  if (!*(*(v7 + 4985) + 62) || (v1391 & 0x40) != 0 || *a3 - 10 < 0xFFFFFFF9 || *v1884 - 17 < 0xFFFFFFFC || a3[16] < 1 || *v23 > 0)
  {
    goto LABEL_1253;
  }

  v1449 = size_group_lookup_2[v972];
  v1450 = (v1887 + 6 * size_group_lookup_2[v972] + 9216);
  v1451 = *(a4 + 48);
  v1452 = *(a4 + 52);
  v1453 = v1452 >> 8;
  v1454 = 8;
  v1455 = 1;
  v1456 = v1450;
  do
  {
    v1457 = v1452;
    v1458 = *v1456++;
    v1459 = v1453 * (v1458 >> 6);
    v1454 -= 4;
    v1452 = v1454 + (v1459 >> 1);
    --v1455;
  }

  while (HIWORD(v1451) < v1452);
  v1460 = v1457 - (v1459 >> 1) - v1454;
  v1461 = 15 - (__clz(v1460) ^ 0x1F);
  LOWORD(v1454) = *(a4 + 54) - v1461;
  *(a4 + 54) = v1454;
  v1462 = ((v1451 - (v1452 << 16) + 1) << v1461) - 1;
  *(a4 + 48) = v1462;
  *(a4 + 52) = v1460 << v1461;
  if ((v1454 & 0x8000) != 0)
  {
    v1454 = v1454;
    v1463 = *(a4 + 32);
    v1464 = *(a4 + 40);
    if (v1464 >= v1463)
    {
      v1468 = *(a4 + 40);
      goto LABEL_1656;
    }

    v1465 = 8 - v1454;
    if ((8 - v1454) >= 7)
    {
      v1466 = 7;
    }

    else
    {
      v1466 = 8 - v1454;
    }

    v1467 = ((v1466 ^ 0xFu) - v1454) >> 3;
    if (v1467 >= ~v1464 + v1463)
    {
      v1467 = ~v1464 + v1463;
    }

    if (v1467 >= 0xF)
    {
      v1778 = v1467 + 1;
      v1779 = (v1467 + 1) & 0x3FFFFFF0;
      v1468 = &v1464->u8[v1779];
      v1780 = 0uLL;
      v1781 = v1454;
      v1782 = v1462;
      v1783 = vdupq_n_s32(v1465);
      v1784 = vaddq_s32(v1783, xmmword_273BC3230);
      v1785 = vaddq_s32(v1783, xmmword_273BC3240);
      v1786 = vaddq_s32(v1783, xmmword_273BC3250);
      v1787 = vaddq_s32(v1783, xmmword_273BC3220);
      v1788.i64[0] = 0x8000800080008;
      v1788.i64[1] = 0x8000800080008;
      v1789.i64[0] = 0x7F0000007FLL;
      v1789.i64[1] = 0x7F0000007FLL;
      v1790 = v1779;
      v1791 = 0uLL;
      v1792 = 0uLL;
      v1793 = 0uLL;
      do
      {
        v1794 = *v1464++;
        v1792 = veorq_s8(vshlq_u32(vqtbl1q_s8(v1794, xmmword_273B8E7B0), v1785), v1792);
        v1791 = veorq_s8(vshlq_u32(vqtbl1q_s8(v1794, xmmword_273B8E7C0), v1786), v1791);
        v1782 = veorq_s8(vshlq_u32(vqtbl1q_s8(v1794, xmmword_273B8E7D0), v1787), v1782);
        v1793 = veorq_s8(vshlq_u32(vqtbl1q_s8(v1794, xmmword_273B8E7A0), v1784), v1793);
        v1781 = vaddq_s16(v1781, v1788);
        v1780 = vaddq_s16(v1780, v1788);
        v1787 = vaddq_s32(v1787, v1789);
        v1786 = vaddq_s32(v1786, v1789);
        v1785 = vaddq_s32(v1785, v1789);
        v1784 = vaddq_s32(v1784, v1789);
        v1790 -= 16;
      }

      while (v1790);
      v1795 = v1464 < v1463;
      v1796 = vaddq_s16(v1781, v1780);
      v1796.i16[0] = vaddvq_s16(v1796);
      v1454 = v1796.i32[0];
      v1797 = veorq_s8(veorq_s8(v1782, v1792), veorq_s8(v1791, v1793));
      *v1797.i8 = veor_s8(*v1797.i8, *&vextq_s8(v1797, v1797, 8uLL));
      v1462 = v1797.i32[0] ^ v1797.i32[1];
      if (v1778 == v1779)
      {
        goto LABEL_1655;
      }

      v1465 -= 8 * v1779;
    }

    else
    {
      v1468 = *(a4 + 40);
    }

    do
    {
      v1798 = *v1468++;
      v1462 ^= v1798 << v1465;
      v1454 += 8;
      v1795 = v1468 < v1463;
      v75 = v1465 >= 8;
      v1465 -= 8;
    }

    while (v75 && v1468 < v1463);
LABEL_1655:
    if (v1795)
    {
LABEL_1657:
      *(a4 + 48) = v1462;
      *(a4 + 54) = v1454;
      *(a4 + 40) = v1468;
      goto LABEL_1658;
    }

LABEL_1656:
    *(a4 + 24) = *(a4 + 24) - v1454 + 0x4000;
    LOWORD(v1454) = 0x4000;
    goto LABEL_1657;
  }

LABEL_1658:
  if (*(a4 + 56))
  {
    v1799 = v1450[2];
    v1800 = (v1799 >> 4) + 4;
    v1801 = *v1450;
    if (-v1455 < 1)
    {
      v1802 = v1801 - (v1801 >> v1800);
    }

    else
    {
      v1802 = v1801 + ((0x8000 - v1801) >> v1800);
    }

    *v1450 = v1802;
    if (v1799 < 0x20)
    {
      LOWORD(v1799) = v1799 + 1;
    }

    v1450[2] = v1799;
  }

  if (!v1455)
  {
    goto LABEL_1253;
  }

  v1803 = (*(v6 + 10648) + 10 * v1449 + 9372);
  v1804 = od_ec_decode_cdf_q15(a4 + 16, v1803, 4);
  if (*(a4 + 56))
  {
    v1805 = v1803[4];
    v1806 = (v1805 >> 4) + 5;
    v1807 = *v1803;
    if (v1804 <= 0)
    {
      *v1803 = v1807 - (v1807 >> v1806);
      v1808 = v1803[1];
    }

    else
    {
      *v1803 = v1807 + ((0x8000 - v1807) >> v1806);
      v1808 = v1803[1];
      if (v1804 << 56 != 0x100000000000000)
      {
        v1803[1] = v1808 + ((0x8000 - v1808) >> v1806);
        v1809 = v1803[2];
        if (v1804 > 2)
        {
          v1810 = v1809 + ((0x8000 - v1809) >> v1806);
LABEL_1674:
          v1803[2] = v1810;
          if (v1805 < 0x20)
          {
            LOWORD(v1805) = v1805 + 1;
          }

          v1803[4] = v1805;
          goto LABEL_1677;
        }

LABEL_1673:
        v1810 = v1809 - (v1809 >> v1806);
        goto LABEL_1674;
      }
    }

    v1803[1] = v1808 - (v1808 >> v1806);
    v1809 = v1803[2];
    goto LABEL_1673;
  }

LABEL_1677:
  *v23 = 0;
  a3[64] = v1804;
  *(a3 + 44) = 0;
  a3[91] = 0;
  if (av1_wedge_params_lookup[8 * v972] >= 1)
  {
    v1811 = (v1887 + 6 * v972 + 9240);
    v1812 = od_ec_decode_cdf_q15(a4 + 16, v1811, 2);
    if (*(a4 + 56))
    {
      v1813 = *(v1887 + 6 * v972 + 9244);
      v1814 = (v1813 >> 4) + 4;
      v1815 = *v1811;
      if (v1812 < 1)
      {
        v1816 = v1815 - (v1815 >> v1814);
      }

      else
      {
        v1816 = v1815 + ((0x8000 - v1815) >> v1814);
      }

      *v1811 = v1816;
      if (v1813 < 0x20)
      {
        LOWORD(v1813) = v1813 + 1;
      }

      *(v1887 + 6 * v972 + 9244) = v1813;
    }

    *(a3 + 167) = *(a3 + 167) & 0xFBFF | ((v1812 & 1) << 10);
    if (v1812)
    {
      v1857 = (v1887 + 34 * v972 + 8468);
      v1858 = od_ec_decode_cdf_q15(a4 + 16, v1857, 16);
      if (!*(a4 + 56))
      {
LABEL_1763:
        a3[65] = v1858;
        goto LABEL_1253;
      }

      v1859 = *(v1887 + 34 * v972 + 8500);
      v1860 = (v1859 >> 4) + 5;
      v1861 = *v1857;
      if (v1858 <= 0)
      {
        *v1857 = v1861 - (v1861 >> v1860);
        v1863 = *(v1887 + 34 * v972 + 8470);
      }

      else
      {
        v1862 = v1858 << 56;
        *v1857 = v1861 + ((0x8000 - v1861) >> v1860);
        v1863 = *(v1887 + 34 * v972 + 8470);
        if (v1858 << 56 != 0x100000000000000)
        {
          *(v1887 + 34 * v972 + 8470) = v1863 + ((0x8000 - v1863) >> v1860);
          v1864 = *(v1887 + 34 * v972 + 8472);
          if (v1858 > 2)
          {
            *(v1887 + 34 * v972 + 8472) = v1864 + ((0x8000 - v1864) >> v1860);
            v1865 = *(v1887 + 34 * v972 + 8474);
            if (v1862 != 0x300000000000000)
            {
              *(v1887 + 34 * v972 + 8474) = v1865 + ((0x8000 - v1865) >> v1860);
              v1866 = *(v1887 + 34 * v972 + 8476);
              if (v1858 > 4)
              {
                *(v1887 + 34 * v972 + 8476) = v1866 + ((0x8000 - v1866) >> v1860);
                v1867 = *(v1887 + 34 * v972 + 8478);
                if (v1862 != 0x500000000000000)
                {
                  *(v1887 + 34 * v972 + 8478) = v1867 + ((0x8000 - v1867) >> v1860);
                  v1868 = *(v1887 + 34 * v972 + 8480);
                  if (v1858 > 6)
                  {
                    *(v1887 + 34 * v972 + 8480) = v1868 + ((0x8000 - v1868) >> v1860);
                    v1869 = *(v1887 + 34 * v972 + 8482);
                    if (v1862 != 0x700000000000000)
                    {
                      *(v1887 + 34 * v972 + 8482) = v1869 + ((0x8000 - v1869) >> v1860);
                      v1870 = *(v1887 + 34 * v972 + 8484);
                      if (v1858 > 8)
                      {
                        *(v1887 + 34 * v972 + 8484) = v1870 + ((0x8000 - v1870) >> v1860);
                        v1871 = *(v1887 + 34 * v972 + 8486);
                        if (v1862 != 0x900000000000000)
                        {
                          *(v1887 + 34 * v972 + 8486) = v1871 + ((0x8000 - v1871) >> v1860);
                          v1872 = *(v1887 + 34 * v972 + 8488);
                          if (v1858 > 0xA)
                          {
                            *(v1887 + 34 * v972 + 8488) = v1872 + ((0x8000 - v1872) >> v1860);
                            v1873 = *(v1887 + 34 * v972 + 8490);
                            if (v1862 != 0xB00000000000000)
                            {
                              *(v1887 + 34 * v972 + 8490) = v1873 + ((0x8000 - v1873) >> v1860);
                              v1874 = *(v1887 + 34 * v972 + 8492);
                              if (v1858 > 0xC)
                              {
                                *(v1887 + 34 * v972 + 8492) = v1874 + ((0x8000 - v1874) >> v1860);
                                v1875 = *(v1887 + 34 * v972 + 8494);
                                if (v1862 != 0xD00000000000000)
                                {
                                  *(v1887 + 34 * v972 + 8494) = v1875 + ((0x8000 - v1875) >> v1860);
                                  v1876 = *(v1887 + 34 * v972 + 8496);
                                  if (v1858 > 0xE)
                                  {
                                    v1877 = v1876 + ((0x8000 - v1876) >> v1860);
                                    goto LABEL_1760;
                                  }

LABEL_1759:
                                  v1877 = v1876 - (v1876 >> v1860);
LABEL_1760:
                                  *(v1887 + 34 * v972 + 8496) = v1877;
                                  if (v1859 < 0x20)
                                  {
                                    LOWORD(v1859) = v1859 + 1;
                                  }

                                  *(v1887 + 34 * v972 + 8500) = v1859;
                                  goto LABEL_1763;
                                }

LABEL_1758:
                                *(v1887 + 34 * v972 + 8494) = v1875 - (v1875 >> v1860);
                                v1876 = *(v1887 + 34 * v972 + 8496);
                                goto LABEL_1759;
                              }

LABEL_1757:
                              *(v1887 + 34 * v972 + 8492) = v1874 - (v1874 >> v1860);
                              v1875 = *(v1887 + 34 * v972 + 8494);
                              goto LABEL_1758;
                            }

LABEL_1756:
                            *(v1887 + 34 * v972 + 8490) = v1873 - (v1873 >> v1860);
                            v1874 = *(v1887 + 34 * v972 + 8492);
                            goto LABEL_1757;
                          }

LABEL_1755:
                          *(v1887 + 34 * v972 + 8488) = v1872 - (v1872 >> v1860);
                          v1873 = *(v1887 + 34 * v972 + 8490);
                          goto LABEL_1756;
                        }

LABEL_1754:
                        *(v1887 + 34 * v972 + 8486) = v1871 - (v1871 >> v1860);
                        v1872 = *(v1887 + 34 * v972 + 8488);
                        goto LABEL_1755;
                      }

LABEL_1753:
                      *(v1887 + 34 * v972 + 8484) = v1870 - (v1870 >> v1860);
                      v1871 = *(v1887 + 34 * v972 + 8486);
                      goto LABEL_1754;
                    }

LABEL_1752:
                    *(v1887 + 34 * v972 + 8482) = v1869 - (v1869 >> v1860);
                    v1870 = *(v1887 + 34 * v972 + 8484);
                    goto LABEL_1753;
                  }

LABEL_1751:
                  *(v1887 + 34 * v972 + 8480) = v1868 - (v1868 >> v1860);
                  v1869 = *(v1887 + 34 * v972 + 8482);
                  goto LABEL_1752;
                }

LABEL_1750:
                *(v1887 + 34 * v972 + 8478) = v1867 - (v1867 >> v1860);
                v1868 = *(v1887 + 34 * v972 + 8480);
                goto LABEL_1751;
              }

LABEL_1749:
              *(v1887 + 34 * v972 + 8476) = v1866 - (v1866 >> v1860);
              v1867 = *(v1887 + 34 * v972 + 8478);
              goto LABEL_1750;
            }

LABEL_1748:
            *(v1887 + 34 * v972 + 8474) = v1865 - (v1865 >> v1860);
            v1866 = *(v1887 + 34 * v972 + 8476);
            goto LABEL_1749;
          }

LABEL_1747:
          *(v1887 + 34 * v972 + 8472) = v1864 - (v1864 >> v1860);
          v1865 = *(v1887 + 34 * v972 + 8474);
          goto LABEL_1748;
        }
      }

      *(v1887 + 34 * v972 + 8470) = v1863 - (v1863 >> v1860);
      v1864 = *(v1887 + 34 * v972 + 8472);
      goto LABEL_1747;
    }
  }

LABEL_1253:
  v1392 = v7 + 15440;
  v1393 = v7 + 15488;
  v1394 = a3[16];
  if ((v1394 - 1) > 7 || (v1395 = *&v1392[4 * (v1394 - 1)], v1395 == -1))
  {
    *(v6 + 7944) = 0;
    if (*v23 <= 0)
    {
      goto LABEL_1256;
    }
  }

  else
  {
    *(v6 + 7944) = &v1393[16 * v1395];
    if (*v23 <= 0)
    {
LABEL_1256:
      v1396 = 0;
      goto LABEL_1263;
    }
  }

  v1397 = a3[17];
  if ((v1397 - 1) > 7 || (v1398 = *&v1392[4 * (v1397 - 1)], v1398 == -1))
  {
    v1399 = 0;
  }

  else
  {
    v1399 = &v1393[16 * v1398];
  }

  *(v6 + 7952) = v1399;
  v1396 = *v23 > 0;
LABEL_1263:
  a3[24] = 0;
  v1400 = *a3;
  v1401 = block_size_wide_9[v1400];
  v1402 = block_size_high_8[v1400];
  if (v1401 < v1402)
  {
    v1402 = v1401;
  }

  if (v1402 >= 8 && ((v1396 | ((*(a3 + 167) & 0x40) >> 6)) & 1) == 0)
  {
    a3[25] = av1_findSamples((v7 + 15200), v6, v1895, v1894);
  }

  result = av1_count_overlappable_neighbors((v7 + 15200), v6);
  if (!*v23)
  {
    *(a3 + 167) = *(a3 + 167) & 0xFCFF | 0x200;
    a3[83] = 0;
    goto LABEL_1468;
  }

  if (!v1893[502] || (*(a3 + 167) & 0x40) != 0 || !a3[26])
  {
    goto LABEL_1301;
  }

  v1406 = *(v6 + 10728);
  v1407 = *a3;
  if (v1406)
  {
    v1408 = block_size_wide_9[v1407];
    if (v1408 >= block_size_high_8[v1407])
    {
      v1408 = block_size_high_8[v1407];
    }
  }

  else
  {
    v1418 = a3[2];
    v1408 = block_size_wide_9[v1407];
    if (v1408 >= block_size_high_8[v1407])
    {
      v1408 = block_size_high_8[v1407];
    }

    v1420 = v1418 != 15 && v1418 != 23;
    if (*(*(v6 + 10744) + 36 * a3[16] + 32) >= 2u && !v1420 && v1408 > 7)
    {
      goto LABEL_1301;
    }
  }

  if (v1408 < 8)
  {
LABEL_1301:
    result = 0;
    goto LABEL_1302;
  }

  result = 0;
  if ((*v23 & 0x80000000) == 0 || *v1884 - 25 < 0xFFFFFFF4)
  {
    goto LABEL_1302;
  }

  if (!v1406)
  {
    if (v1893[496])
    {
      if (a3[25])
      {
        v1409 = *(v6 + 7944);
        v1410 = *v1409;
        if (*v1409 == -1 || (v1411 = v1409[1], v1411 == -1) || v1410 == 0x4000 && v1411 == 0x4000)
        {
          v1412 = (*(v6 + 10648) + 8 * v1407 + 9412);
          result = od_ec_decode_cdf_q15(a4 + 16, v1412, 3);
          if (!*(a4 + 56))
          {
            goto LABEL_1302;
          }

          v1413 = v1412[3];
          v1414 = (v1413 >> 4) + 4;
          v1415 = *v1412;
          if ((result << 56) <= 0)
          {
            *v1412 = v1415 - (v1415 >> v1414);
            v1416 = v1412[1];
          }

          else
          {
            *v1412 = v1415 + ((0x8000 - v1415) >> v1414);
            v1416 = v1412[1];
            if (result << 56 != 0x100000000000000)
            {
              v1417 = v1416 + ((0x8000 - v1416) >> v1414);
LABEL_1741:
              v1412[1] = v1417;
              if (v1413 < 0x20)
              {
                LOWORD(v1413) = v1413 + 1;
              }

              v1412[3] = v1413;
              goto LABEL_1302;
            }
          }

          v1417 = v1416 - (v1416 >> v1414);
          goto LABEL_1741;
        }
      }
    }
  }

  v1469 = (*(v6 + 10648) + 6 * *a3 + 9588);
  result = od_ec_decode_cdf_q15(a4 + 16, v1469, 2);
  if (*(a4 + 56))
  {
    v1470 = v1469[2];
    v1471 = (v1470 >> 4) + 4;
    v1472 = *v1469;
    if (result < 1)
    {
      v1473 = v1472 - (v1472 >> v1471);
    }

    else
    {
      v1473 = v1472 + ((0x8000 - v1472) >> v1471);
    }

    *v1469 = v1473;
    if (v1470 < 0x20)
    {
      LOWORD(v1470) = v1470 + 1;
    }

    v1469[2] = v1470;
  }

LABEL_1302:
  a3[24] = result;
  v1421 = *v23 > 0;
  v1422 = *(a3 + 167);
  v1423 = v1422 & 0xFCFF | 0x200;
  *(a3 + 167) = v1423;
  a3[83] = 0;
  if (!v1421 || (v1422 & 0x40) != 0)
  {
LABEL_1468:
    v1513 = v1893[504];
    v1514 = *(v6 + 7864);
    v1515 = *v1514;
    if ((*(*v1514 + 167) & 0x40) != 0)
    {
      goto LABEL_1470;
    }

    goto LABEL_1469;
  }

  v1424 = block_size_high_8[v972];
  if (block_size_wide_9[v972] < v1424)
  {
    v1424 = block_size_wide_9[v972];
  }

  v1425 = *(v7 + 4985);
  if (v1424 < 8)
  {
LABEL_1370:
    if (!*(v1425 + 48))
    {
      *(a3 + 167) = v1423;
      a3[83] = 0;
      v1513 = v1893[504];
      v1514 = *(v6 + 7864);
      v1515 = *v1514;
      if ((*(*v1514 + 167) & 0x40) != 0)
      {
        goto LABEL_1470;
      }

      goto LABEL_1469;
    }

    v1500 = **(v6 + 7864);
    v1501 = *(v1500 + 16);
    if ((v1501 - 1) > 7 || (v1502 = *&v1392[4 * (v1501 - 1)], v1502 == -1))
    {
      v1503 = 0;
      v1504 = *(v1500 + 17);
      if ((v1504 - 1) > 7)
      {
        goto LABEL_1379;
      }
    }

    else
    {
      v1503 = *&v7[8 * v1502 + 15616];
      v1504 = *(v1500 + 17);
      if ((v1504 - 1) > 7)
      {
        goto LABEL_1379;
      }
    }

    v1505 = *&v1392[4 * (v1504 - 1)];
    if (v1505 != -1)
    {
      v1506 = *&v7[8 * v1505 + 15616];
      if (!v1503)
      {
LABEL_1381:
        if (v1506)
        {
          LODWORD(v1506) = *(v1506 + 4);
        }

        if (*(v1425 + 40))
        {
          v1507 = *(*(v7 + 1929) + 4);
          v1508 = 1 << *(v1425 + 44);
          v1509 = ((v1508 - 1) & (v1506 - v1507)) - (v1508 & (v1506 - v1507));
          v1510 = ((v1508 - 1) & (v1507 - v1503)) - (v1508 & (v1507 - v1503));
          v1511 = *(v6 + 7888);
          v1512 = *(v6 + 7880);
          if (!v1511)
          {
            goto LABEL_1403;
          }
        }

        else
        {
          v1509 = 0;
          v1510 = 0;
          v1511 = *(v6 + 7888);
          v1512 = *(v6 + 7880);
          if (!v1511)
          {
            goto LABEL_1403;
          }
        }

        if (*(v1511 + 17) < 1)
        {
          LODWORD(v1511) = *(v1511 + 16) == 7;
          if (!v1512)
          {
            goto LABEL_1409;
          }

          goto LABEL_1404;
        }

        v1511 = (*(v1511 + 167) >> 9) & 1;
LABEL_1403:
        if (!v1512)
        {
          goto LABEL_1409;
        }

LABEL_1404:
        if (*(v1512 + 17) < 1)
        {
          LODWORD(v1512) = *(v1512 + 16) == 7;
        }

        else
        {
          v1512 = (*(v1512 + 167) >> 9) & 1;
        }

LABEL_1409:
        if (v1509 < 0)
        {
          v1509 = -v1509;
        }

        if (v1510 < 0)
        {
          v1510 = -v1510;
        }

        v396 = v1509 == v1510;
        v1537 = 3;
        if (!v396)
        {
          v1537 = 0;
        }

        v1538 = (v1887 + 6 * (v1511 + v1512 + v1537) + 11780);
        v1539 = *(a4 + 48);
        v1540 = *(a4 + 52);
        v1541 = v1540 >> 8;
        v1542 = -1;
        v1543 = 8;
        v1544 = v1538;
        do
        {
          v1545 = v1540;
          v1546 = *v1544++;
          ++v1542;
          v1547 = v1541 * (v1546 >> 6);
          v1543 -= 4;
          v1540 = v1543 + (v1547 >> 1);
        }

        while (HIWORD(v1539) < v1540);
        v1548 = v1545 - (v1547 >> 1) - v1543;
        v1549 = 15 - (__clz(v1548) ^ 0x1F);
        v1550 = *(a4 + 54) - v1549;
        *(a4 + 54) = v1550;
        v1551 = ((v1539 - (v1540 << 16) + 1) << v1549) - 1;
        *(a4 + 48) = v1551;
        *(a4 + 52) = v1548 << v1549;
        if ((v1550 & 0x8000) == 0)
        {
          if (*(a4 + 56))
          {
LABEL_1419:
            v1552 = v1538[2];
            v1553 = (v1552 >> 4) + 4;
            v1554 = v1542;
            v1555 = *v1538;
            if (v1542 < 1)
            {
              v1556 = v1555 - (v1555 >> v1553);
            }

            else
            {
              v1556 = v1555 + ((0x8000 - v1555) >> v1553);
            }

            *v1538 = v1556;
            if (v1552 < 0x20)
            {
              LOWORD(v1552) = v1552 + 1;
            }

            v1538[2] = v1552;
LABEL_1446:
            *(a3 + 167) = *(a3 + 167) & 0xFDFF | ((v1542 & 1) << 9);
            a3[83] = (v1554 & 1) == 0;
            v1513 = v1893[504];
            v1514 = *(v6 + 7864);
            v1515 = *v1514;
            if ((*(*v1514 + 167) & 0x40) != 0)
            {
              goto LABEL_1470;
            }

LABEL_1469:
            if (v1515[24] == 2)
            {
              goto LABEL_1470;
            }

            v1622 = *(*(v7 + 4985) + 64);
            v1623 = *(v6 + 10648);
            v1624 = v1515[2];
            if (v1624 == 23 || v1624 == 15)
            {
              v1626 = *v1515;
              v1627 = mi_size_wide_8[v1626];
              v1628 = mi_size_high_7[v1626];
              if (v1627 < v1628)
              {
                v1628 = v1627;
              }

              if (v1628 >= 2)
              {
                v1639 = v1515[17];
                v1640 = *(v6 + 10744);
                v1641 = *(v1640 + 36 * v1515[16] + 32);
                if (v1639 < 1 || v1641 == 1)
                {
                  if (v1639 <= 0 && v1641 != 1)
                  {
                    goto LABEL_1470;
                  }
                }

                else if (*(v1640 + 36 * v1515[17] + 32) != 1)
                {
                  goto LABEL_1470;
                }
              }
            }

            if (v1513 != 4)
            {
              *(a3 + 5) = v1513 | (v1513 << 16);
              if (a3[24] != 2)
              {
                goto LABEL_1507;
              }

LABEL_1474:
              v1612 = *v6;
              v1613 = *(v6 + 4);
              *(a3 + 30) = 3;
              v1614 = a3[25];
              if (v1614 >= 2)
              {
                v1615 = 0;
                v1616 = 0;
                v1617 = block_size_wide_20[v972];
                if (v1617 <= block_size_high_18[v972])
                {
                  v1617 = block_size_high_18[v972];
                }

                if (v1617 >= 0x70)
                {
                  v1617 = 112;
                }

                if (v1617 <= 0x10)
                {
                  v1617 = 16;
                }

                v1618 = v1894;
                v1619 = v1895;
                do
                {
                  v1620.i32[0] = v969[1];
                  v1620.i32[1] = *v969;
                  v1621 = vabs_s32(vsub_s32(*v1618, vadd_s32(*v1619, v1620)));
                  v1405 = vdup_lane_s32(v1621, 1);
                  v1404 = vadd_s32(v1405, v1621);
                  if (v1404.i32[0] <= v1617)
                  {
                    if (v1615 != v1616)
                    {
                      v1895[v1616] = *v1619;
                      v1894[v1616] = *v1618;
                    }

                    ++v1616;
                  }

                  ++v1615;
                  ++v1619;
                  ++v1618;
                }

                while (v1614 != v1615);
                if ((v1616 & 0xFE) != 0)
                {
                  LODWORD(v1614) = v1616;
                }

                else
                {
                  LODWORD(v1614) = 1;
                }

                a3[25] = v1614;
              }

              result = av1_find_projection(v1614, v1895, v1894, v972, *(a3 + 4), *(a3 + 5), a3 + 7, v1612, *&v1404, v1405, v1613);
              if (result)
              {
                a3[61] = 1;
              }

              goto LABEL_1507;
            }

            v1629 = v1515[17] > 0;
            v1630 = v1515[16];
            v1631 = v1883[1];
            if (v1631 == 1 && ((v1632 = *(v1514 - 1), v1632[16] == v1630) || v1632[17] == v1630))
            {
              v1633 = v1632[20];
              v1634 = v1623 + 14058;
              v1635 = 4 * v1629;
              v1636 = *v1883;
              if (v1636 != 1)
              {
                goto LABEL_1525;
              }
            }

            else
            {
              v1633 = 3;
              v1634 = v1623 + 14058;
              v1635 = 4 * v1629;
              v1636 = *v1883;
              if (v1636 != 1)
              {
                goto LABEL_1525;
              }
            }

            v1642 = v1514[-*(v6 + 8)];
            if (v1642[16] == v1630 || v1642[17] == v1630)
            {
              v1643 = v1642[20];
              goto LABEL_1526;
            }

LABEL_1525:
            v1643 = 3;
LABEL_1526:
            v1644 = v1635 | 3;
            v1645 = v1633 + v1635;
            if (v1643 == 3)
            {
              v1644 = v1633 + v1635;
            }

            v1646 = v1643 + v1635;
            if (v1633 != 3)
            {
              v1646 = v1644;
            }

            if (v1633 == v1643)
            {
              v1646 = v1645;
            }

            v1647 = (v1634 + 8 * v1646);
            v1648 = *(a4 + 48);
            v1649 = *(a4 + 52);
            v1650 = v1649 >> 8;
            v1651 = -1;
            v1652 = 12;
            v1653 = 0x200000000000000;
            v1654 = v1647;
            v1655 = 0xFF00000000000000;
            do
            {
              v1656 = v1649;
              ++v1651;
              v1657 = *v1654++;
              v1658 = v1650 * (v1657 >> 6);
              v1652 -= 4;
              v1649 = v1652 + (v1658 >> 1);
              v1653 -= 0x100000000000000;
              v1655 += 0x100000000000000;
            }

            while (HIWORD(v1648) < v1649);
            v1659 = v1656 - (v1658 >> 1) - v1652;
            v1660 = __clz(v1659);
            v1661 = 15 - (v1660 ^ 0x1F);
            v1662 = *(a4 + 54) - v1661;
            *(a4 + 54) = v1662;
            result = ((v1648 - (v1649 << 16) + 1) << (15 - (v1660 ^ 0x1F))) - 1;
            *(a4 + 48) = result;
            *(a4 + 52) = v1659 << v1661;
            if ((v1662 & 0x8000) == 0)
            {
LABEL_1568:
              v1711 = *(a4 + 56);
              if (v1622)
              {
                if (!*(a4 + 56))
                {
                  goto LABEL_1582;
                }

                v1712 = v1647[3];
                v1713 = (v1712 >> 4) + 4;
                v1714 = *v1647;
                if (v1655 <= 0)
                {
                  *v1647 = v1714 - (v1714 >> v1713);
                  v1715 = v1647[1];
                }

                else
                {
                  *v1647 = v1714 + ((0x8000 - v1714) >> v1713);
                  v1715 = v1647[1];
                  if (v1653)
                  {
                    v1716 = v1715 + ((0x8000 - v1715) >> v1713);
LABEL_1579:
                    v1647[1] = v1716;
                    if (v1712 < 0x20)
                    {
                      LOWORD(v1712) = v1712 + 1;
                    }

                    v1647[3] = v1712;
LABEL_1582:
                    v1722 = v1515[16];
                    if (v1515[17] <= 0)
                    {
                      v1723 = 8;
                    }

                    else
                    {
                      v1723 = 12;
                    }

                    if (v1631 && ((v1724 = *(v1514 - 1), v1724[16] == v1722) || v1724[17] == v1722))
                    {
                      v1725 = v1724[22];
                      if (!v1636)
                      {
                        goto LABEL_1594;
                      }
                    }

                    else
                    {
                      v1725 = 3;
                      if (!v1636)
                      {
                        goto LABEL_1594;
                      }
                    }

                    v1726 = v1514[-*(v6 + 8)];
                    if (v1726[16] == v1722 || v1726[17] == v1722)
                    {
                      v1727 = v1726[22];
                      goto LABEL_1595;
                    }

LABEL_1594:
                    v1727 = 3;
LABEL_1595:
                    v1728 = v1723 | 3;
                    v1729 = v1725 + v1723;
                    if (v1727 == 3)
                    {
                      v1728 = v1725 + v1723;
                    }

                    v1730 = v1727 + v1723;
                    if (v1725 != 3)
                    {
                      v1730 = v1728;
                    }

                    if (v1725 == v1727)
                    {
                      v1731 = v1729;
                    }

                    else
                    {
                      v1731 = v1730;
                    }

                    v1732 = (v1634 + 8 * v1731);
                    v1733 = *(a4 + 52);
                    v1734 = v1733 >> 8;
                    v1735 = -1;
                    v1736 = 12;
                    v1737 = 0x200000000000000;
                    v1738 = v1732;
                    v1739 = 0xFF00000000000000;
                    do
                    {
                      v1740 = v1733;
                      ++v1735;
                      v1741 = *v1738++;
                      v1742 = v1734 * (v1741 >> 6);
                      v1736 -= 4;
                      v1733 = v1736 + (v1742 >> 1);
                      v1737 -= 0x100000000000000;
                      v1739 += 0x100000000000000;
                    }

                    while (WORD1(result) < v1733);
                    v1743 = v1740 - (v1742 >> 1) - v1736;
                    v1744 = 15 - (__clz(v1743) ^ 0x1F);
                    v1745 = *(a4 + 54) - v1744;
                    *(a4 + 54) = v1745;
                    v1746 = ((result - (v1733 << 16) + 1) << v1744) - 1;
                    *(a4 + 48) = v1746;
                    *(a4 + 52) = v1743 << v1744;
                    if ((v1745 & 0x8000) == 0)
                    {
LABEL_1630:
                      if (!v1711)
                      {
                        goto LABEL_1640;
                      }

                      v1772 = v1732[3];
                      v1773 = (v1772 >> 4) + 4;
                      v1774 = *v1732;
                      if (v1739 <= 0)
                      {
                        *v1732 = v1774 - (v1774 >> v1773);
                        v1775 = v1732[1];
                      }

                      else
                      {
                        *v1732 = v1774 + ((0x8000 - v1774) >> v1773);
                        v1775 = v1732[1];
                        if (v1737)
                        {
                          v1776 = v1775 + ((0x8000 - v1775) >> v1773);
LABEL_1636:
                          v1732[1] = v1776;
                          if (v1772 >= 0x20)
                          {
                            v1777 = v1772;
                          }

                          else
                          {
                            v1777 = v1772 + 1;
                          }

                          v1732[3] = v1777;
LABEL_1640:
                          *(a3 + 11) = v1735;
                          *(a3 + 10) = v1651;
                          if (a3[24] != 2)
                          {
                            goto LABEL_1507;
                          }

                          goto LABEL_1474;
                        }
                      }

                      v1776 = v1775 - (v1775 >> v1773);
                      goto LABEL_1636;
                    }

                    v1747 = v1745;
                    v1748 = *(a4 + 32);
                    result = *(a4 + 40);
                    if (result >= v1748)
                    {
                      v1752 = *(a4 + 40);
                      goto LABEL_1628;
                    }

                    v1749 = 8 - v1745;
                    if (v1749 >= 7)
                    {
                      v1750 = 7;
                    }

                    else
                    {
                      v1750 = 8 - v1745;
                    }

                    v1751 = ((v1750 ^ 0xFu) - v1747) >> 3;
                    if (v1751 >= ~result + v1748)
                    {
                      v1751 = ~result + v1748;
                    }

                    if (v1751 >= 0xF)
                    {
                      v1753 = v1751 + 1;
                      v1754 = (v1751 + 1) & 0x3FFFFFF0;
                      v1752 = (result + v1754);
                      v1755 = 0uLL;
                      v1756 = v1747;
                      v1757 = v1746;
                      v1758 = vdupq_n_s32(v1749);
                      v1759 = vaddq_s32(v1758, xmmword_273BC3230);
                      v1760 = vaddq_s32(v1758, xmmword_273BC3240);
                      v1761 = vaddq_s32(v1758, xmmword_273BC3250);
                      v1762 = vaddq_s32(v1758, xmmword_273BC3220);
                      v1763.i64[0] = 0x8000800080008;
                      v1763.i64[1] = 0x8000800080008;
                      v1764.i64[0] = 0x7F0000007FLL;
                      v1764.i64[1] = 0x7F0000007FLL;
                      v1765 = v1754;
                      v1766 = 0uLL;
                      v1767 = 0uLL;
                      v1768 = 0uLL;
                      do
                      {
                        v1769 = *result;
                        result += 16;
                        v1767 = veorq_s8(vshlq_u32(vqtbl1q_s8(v1769, xmmword_273B8E7B0), v1760), v1767);
                        v1766 = veorq_s8(vshlq_u32(vqtbl1q_s8(v1769, xmmword_273B8E7C0), v1761), v1766);
                        v1757 = veorq_s8(vshlq_u32(vqtbl1q_s8(v1769, xmmword_273B8E7D0), v1762), v1757);
                        v1768 = veorq_s8(vshlq_u32(vqtbl1q_s8(v1769, xmmword_273B8E7A0), v1759), v1768);
                        v1756 = vaddq_s16(v1756, v1763);
                        v1755 = vaddq_s16(v1755, v1763);
                        v1762 = vaddq_s32(v1762, v1764);
                        v1761 = vaddq_s32(v1761, v1764);
                        v1760 = vaddq_s32(v1760, v1764);
                        v1759 = vaddq_s32(v1759, v1764);
                        v1765 -= 16;
                      }

                      while (v1765);
                      result = result < v1748;
                      LOWORD(v1747) = vaddvq_s16(vaddq_s16(v1756, v1755));
                      v1770 = veorq_s8(veorq_s8(v1757, v1767), veorq_s8(v1766, v1768));
                      v1405 = vextq_s8(v1770, v1770, 8uLL).u64[0];
                      v1404 = veor_s8(*v1770.i8, v1405);
                      v1746 = v1404.i32[0] ^ v1404.i32[1];
                      if (v1753 == v1754)
                      {
                        goto LABEL_1627;
                      }

                      v1749 -= 8 * v1754;
                    }

                    else
                    {
                      v1752 = *(a4 + 40);
                    }

                    do
                    {
                      v1771 = *v1752++;
                      v1746 ^= v1771 << v1749;
                      LOWORD(v1747) = v1747 + 8;
                      result = v1752 < v1748;
                      v75 = v1749 >= 8;
                      v1749 -= 8;
                    }

                    while (v75 && v1752 < v1748);
LABEL_1627:
                    if (result)
                    {
LABEL_1629:
                      *(a4 + 48) = v1746;
                      *(a4 + 54) = v1747;
                      *(a4 + 40) = v1752;
                      goto LABEL_1630;
                    }

LABEL_1628:
                    *(a4 + 24) = *(a4 + 24) - v1747 + 0x4000;
                    LOWORD(v1747) = 0x4000;
                    goto LABEL_1629;
                  }
                }

                v1716 = v1715 - (v1715 >> v1713);
                goto LABEL_1579;
              }

              if (!*(a4 + 56))
              {
LABEL_1619:
                v1735 = v1651;
                goto LABEL_1640;
              }

              v1717 = v1647[3];
              v1718 = (v1717 >> 4) + 4;
              v1719 = *v1647;
              if (v1655 <= 0)
              {
                *v1647 = v1719 - (v1719 >> v1718);
                v1720 = v1647[1];
              }

              else
              {
                *v1647 = v1719 + ((0x8000 - v1719) >> v1718);
                v1720 = v1647[1];
                if (v1653)
                {
                  v1721 = v1720 + ((0x8000 - v1720) >> v1718);
LABEL_1616:
                  v1647[1] = v1721;
                  if (v1717 < 0x20)
                  {
                    LOWORD(v1717) = v1717 + 1;
                  }

                  v1647[3] = v1717;
                  goto LABEL_1619;
                }
              }

              v1721 = v1720 - (v1720 >> v1718);
              goto LABEL_1616;
            }

            v1663 = v1662;
            v1664 = *(a4 + 32);
            v1665 = *(a4 + 40);
            if (v1665 >= v1664)
            {
              v1669 = *(a4 + 40);
              goto LABEL_1566;
            }

            v1666 = 8 - v1663;
            if ((8 - v1663) >= 7)
            {
              v1667 = 7;
            }

            else
            {
              v1667 = 8 - v1663;
            }

            v1668 = ((v1667 ^ 0xFu) - v1663) >> 3;
            if (v1668 >= ~v1665 + v1664)
            {
              v1668 = ~v1665 + v1664;
            }

            if (v1668 >= 0xF)
            {
              v1691 = v1668 + 1;
              v1692 = (v1668 + 1) & 0x3FFFFFF0;
              v1669 = &v1665->u8[v1692];
              v1693 = 0uLL;
              v1694 = v1663;
              v1695 = result;
              v1696 = vdupq_n_s32(v1666);
              v1697 = vaddq_s32(v1696, xmmword_273BC3230);
              v1698 = vaddq_s32(v1696, xmmword_273BC3240);
              v1699 = vaddq_s32(v1696, xmmword_273BC3250);
              v1700 = vaddq_s32(v1696, xmmword_273BC3220);
              v1701.i64[0] = 0x8000800080008;
              v1701.i64[1] = 0x8000800080008;
              v1702.i64[0] = 0x7F0000007FLL;
              v1702.i64[1] = 0x7F0000007FLL;
              v1703 = v1692;
              v1704 = 0uLL;
              v1705 = 0uLL;
              v1706 = 0uLL;
              do
              {
                v1707 = *v1665++;
                v1705 = veorq_s8(vshlq_u32(vqtbl1q_s8(v1707, xmmword_273B8E7B0), v1698), v1705);
                v1704 = veorq_s8(vshlq_u32(vqtbl1q_s8(v1707, xmmword_273B8E7C0), v1699), v1704);
                v1695 = veorq_s8(vshlq_u32(vqtbl1q_s8(v1707, xmmword_273B8E7D0), v1700), v1695);
                v1706 = veorq_s8(vshlq_u32(vqtbl1q_s8(v1707, xmmword_273B8E7A0), v1697), v1706);
                v1694 = vaddq_s16(v1694, v1701);
                v1693 = vaddq_s16(v1693, v1701);
                v1700 = vaddq_s32(v1700, v1702);
                v1699 = vaddq_s32(v1699, v1702);
                v1698 = vaddq_s32(v1698, v1702);
                v1697 = vaddq_s32(v1697, v1702);
                v1703 -= 16;
              }

              while (v1703);
              v1708 = v1665 < v1664;
              LOWORD(v1663) = vaddvq_s16(vaddq_s16(v1694, v1693));
              v1709 = veorq_s8(veorq_s8(v1695, v1705), veorq_s8(v1704, v1706));
              v1405 = vextq_s8(v1709, v1709, 8uLL).u64[0];
              v1404 = veor_s8(*v1709.i8, v1405);
              result = (v1404.i32[0] ^ v1404.i32[1]);
              if (v1691 == v1692)
              {
                goto LABEL_1565;
              }

              v1666 -= 8 * v1692;
            }

            else
            {
              v1669 = *(a4 + 40);
            }

            do
            {
              v1710 = *v1669++;
              result = (v1710 << v1666) ^ result;
              LOWORD(v1663) = v1663 + 8;
              v1708 = v1669 < v1664;
              v75 = v1666 >= 8;
              v1666 -= 8;
            }

            while (v75 && v1669 < v1664);
LABEL_1565:
            if (v1708)
            {
LABEL_1567:
              *(a4 + 48) = result;
              *(a4 + 54) = v1663;
              *(a4 + 40) = v1669;
              goto LABEL_1568;
            }

LABEL_1566:
            *(a4 + 24) = *(a4 + 24) - v1663 + 0x4000;
            LOWORD(v1663) = 0x4000;
            goto LABEL_1567;
          }

LABEL_1445:
          v1554 = v1542;
          goto LABEL_1446;
        }

        v1557 = v1550;
        v1558 = *(a4 + 32);
        v1559 = *(a4 + 40);
        if (v1559 >= v1558)
        {
          v1562 = *(a4 + 40);
LABEL_1443:
          *(a4 + 24) = *(a4 + 24) - v1557 + 0x4000;
          LOWORD(v1557) = 0x4000;
LABEL_1444:
          *(a4 + 48) = v1551;
          *(a4 + 54) = v1557;
          *(a4 + 40) = v1562;
          if (*(a4 + 56))
          {
            goto LABEL_1419;
          }

          goto LABEL_1445;
        }

        LODWORD(result) = 8 - v1557;
        if ((8 - v1557) >= 7)
        {
          v1560 = 7;
        }

        else
        {
          v1560 = 8 - v1557;
        }

        v1561 = ((v1560 ^ 0xFu) - v1557) >> 3;
        if (v1561 >= ~v1559 + v1558)
        {
          v1561 = ~v1559 + v1558;
        }

        if (v1561 >= 0xF)
        {
          v1563 = v1561 + 1;
          v1564 = (v1561 + 1) & 0x3FFFFFF0;
          v1562 = &v1559->u8[v1564];
          v1565 = result - 8 * v1564;
          v1566 = 0uLL;
          v1567 = v1557;
          v1568 = v1551;
          v1569 = vdupq_n_s32(result);
          v1570 = vaddq_s32(v1569, xmmword_273BC3230);
          v1571 = vaddq_s32(v1569, xmmword_273BC3240);
          v1572 = vaddq_s32(v1569, xmmword_273BC3250);
          v1573 = vaddq_s32(v1569, xmmword_273BC3220);
          v1574.i64[0] = 0x8000800080008;
          v1574.i64[1] = 0x8000800080008;
          v1575.i64[0] = 0x7F0000007FLL;
          v1575.i64[1] = 0x7F0000007FLL;
          v1576 = v1564;
          v1577 = 0uLL;
          v1578 = 0uLL;
          v1579 = 0uLL;
          do
          {
            v1580 = *v1559++;
            v1578 = veorq_s8(vshlq_u32(vqtbl1q_s8(v1580, xmmword_273B8E7B0), v1571), v1578);
            v1577 = veorq_s8(vshlq_u32(vqtbl1q_s8(v1580, xmmword_273B8E7C0), v1572), v1577);
            v1568 = veorq_s8(vshlq_u32(vqtbl1q_s8(v1580, xmmword_273B8E7D0), v1573), v1568);
            v1579 = veorq_s8(vshlq_u32(vqtbl1q_s8(v1580, xmmword_273B8E7A0), v1570), v1579);
            v1567 = vaddq_s16(v1567, v1574);
            v1566 = vaddq_s16(v1566, v1574);
            v1573 = vaddq_s32(v1573, v1575);
            v1572 = vaddq_s32(v1572, v1575);
            v1571 = vaddq_s32(v1571, v1575);
            v1570 = vaddq_s32(v1570, v1575);
            v1576 -= 16;
          }

          while (v1576);
          v1581 = v1559 < v1558;
          v1582 = vaddq_s16(v1567, v1566);
          v1582.i16[0] = vaddvq_s16(v1582);
          v1557 = v1582.i32[0];
          v1583 = veorq_s8(veorq_s8(v1568, v1578), veorq_s8(v1577, v1579));
          v1405 = vextq_s8(v1583, v1583, 8uLL).u64[0];
          v1404 = veor_s8(*v1583.i8, v1405);
          result = HIDWORD(*&v1404);
          v1551 = v1404.i32[0] ^ v1404.i32[1];
          if (v1563 == v1564)
          {
            goto LABEL_1442;
          }

          LODWORD(result) = v1565;
        }

        else
        {
          v1562 = *(a4 + 40);
        }

        do
        {
          v1584 = *v1562++;
          v1551 ^= v1584 << result;
          v1557 += 8;
          v1581 = v1562 < v1558;
          v75 = result >= 8;
          result = (result - 8);
        }

        while (v75 && v1562 < v1558);
LABEL_1442:
        if (v1581)
        {
          goto LABEL_1444;
        }

        goto LABEL_1443;
      }

LABEL_1380:
      LODWORD(v1503) = *(v1503 + 4);
      goto LABEL_1381;
    }

LABEL_1379:
    v1506 = 0;
    if (!v1503)
    {
      goto LABEL_1381;
    }

    goto LABEL_1380;
  }

  if (*(v1425 + 63))
  {
    v1426 = *(v6 + 7880);
    v1427 = *(v6 + 7888);
    if (v1427)
    {
      if (*(v1427 + 17) < 1)
      {
        if (*(v1427 + 16) == 7)
        {
          LODWORD(v1427) = 3;
        }

        else
        {
          LODWORD(v1427) = 0;
        }

        if (!v1426)
        {
LABEL_1322:
          v1428 = v1426 + v1427;
          if (v1428 >= 5)
          {
            v1428 = 5;
          }

          v1429 = (v1887 + 6 * v1428 + 11816);
          v1430 = *(a4 + 48);
          v1431 = *(a4 + 52);
          v1432 = v1431 >> 8;
          v1433 = -1;
          v1434 = 8;
          v1435 = v1429;
          do
          {
            v1436 = v1431;
            v1437 = *v1435++;
            ++v1433;
            v1438 = v1432 * (v1437 >> 6);
            v1434 -= 4;
            v1431 = v1434 + (v1438 >> 1);
          }

          while (HIWORD(v1430) < v1431);
          v1439 = v1436 - (v1438 >> 1) - v1434;
          v1440 = 15 - (__clz(v1439) ^ 0x1F);
          v1441 = *(a4 + 54) - v1440;
          *(a4 + 54) = v1441;
          v1442 = ((v1430 - (v1431 << 16) + 1) << v1440) - 1;
          *(a4 + 48) = v1442;
          *(a4 + 52) = v1439 << v1440;
          if ((v1441 & 0x8000) == 0)
          {
            goto LABEL_1360;
          }

          v1443 = v1441;
          v1444 = *(a4 + 32);
          v1445 = *(a4 + 40);
          if (v1445 >= v1444)
          {
            v1448 = *(a4 + 40);
            goto LABEL_1358;
          }

          LODWORD(result) = 8 - v1443;
          if ((8 - v1443) >= 7)
          {
            v1446 = 7;
          }

          else
          {
            v1446 = 8 - v1443;
          }

          v1447 = ((v1446 ^ 0xFu) - v1443) >> 3;
          if (v1447 >= ~v1445 + v1444)
          {
            v1447 = ~v1445 + v1444;
          }

          if (v1447 >= 0xF)
          {
            v1474 = v1447 + 1;
            v1475 = (v1447 + 1) & 0x3FFFFFF0;
            v1448 = &v1445->u8[v1475];
            v1476 = result - 8 * v1475;
            v1477 = 0uLL;
            v1478 = v1443;
            v1479 = v1442;
            v1480 = vdupq_n_s32(result);
            v1481 = vaddq_s32(v1480, xmmword_273BC3230);
            v1482 = vaddq_s32(v1480, xmmword_273BC3240);
            v1483 = vaddq_s32(v1480, xmmword_273BC3250);
            v1484 = vaddq_s32(v1480, xmmword_273BC3220);
            v1485.i64[0] = 0x8000800080008;
            v1485.i64[1] = 0x8000800080008;
            v1486.i64[0] = 0x7F0000007FLL;
            v1486.i64[1] = 0x7F0000007FLL;
            v1487 = v1475;
            v1488 = 0uLL;
            v1489 = 0uLL;
            v1490 = 0uLL;
            do
            {
              v1491 = *v1445++;
              v1489 = veorq_s8(vshlq_u32(vqtbl1q_s8(v1491, xmmword_273B8E7B0), v1482), v1489);
              v1488 = veorq_s8(vshlq_u32(vqtbl1q_s8(v1491, xmmword_273B8E7C0), v1483), v1488);
              v1479 = veorq_s8(vshlq_u32(vqtbl1q_s8(v1491, xmmword_273B8E7D0), v1484), v1479);
              v1490 = veorq_s8(vshlq_u32(vqtbl1q_s8(v1491, xmmword_273B8E7A0), v1481), v1490);
              v1478 = vaddq_s16(v1478, v1485);
              v1477 = vaddq_s16(v1477, v1485);
              v1484 = vaddq_s32(v1484, v1486);
              v1483 = vaddq_s32(v1483, v1486);
              v1482 = vaddq_s32(v1482, v1486);
              v1481 = vaddq_s32(v1481, v1486);
              v1487 -= 16;
            }

            while (v1487);
            v1492 = v1445 < v1444;
            v1493 = vaddq_s16(v1478, v1477);
            v1493.i16[0] = vaddvq_s16(v1493);
            v1443 = v1493.i32[0];
            v1494 = veorq_s8(veorq_s8(v1479, v1489), veorq_s8(v1488, v1490));
            v1405 = vextq_s8(v1494, v1494, 8uLL).u64[0];
            v1404 = veor_s8(*v1494.i8, v1405);
            result = HIDWORD(*&v1404);
            v1442 = v1404.i32[0] ^ v1404.i32[1];
            if (v1474 == v1475)
            {
              goto LABEL_1357;
            }

            LODWORD(result) = v1476;
          }

          else
          {
            v1448 = *(a4 + 40);
          }

          do
          {
            v1495 = *v1448++;
            v1442 ^= v1495 << result;
            v1443 += 8;
            v1492 = v1448 < v1444;
            v75 = result >= 8;
            result = (result - 8);
          }

          while (v75 && v1448 < v1444);
LABEL_1357:
          if (v1492)
          {
LABEL_1359:
            *(a4 + 48) = v1442;
            *(a4 + 54) = v1443;
            *(a4 + 40) = v1448;
LABEL_1360:
            if (*(a4 + 56))
            {
              v1496 = v1429[2];
              v1497 = (v1496 >> 4) + 4;
              v1498 = *v1429;
              if (v1433 < 1)
              {
                v1499 = v1498 - (v1498 >> v1497);
              }

              else
              {
                v1499 = v1498 + ((0x8000 - v1498) >> v1497);
              }

              *v1429 = v1499;
              if (v1496 < 0x20)
              {
                LOWORD(v1496) = v1496 + 1;
              }

              v1429[2] = v1496;
            }

            v1423 = *(a3 + 167) & 0xFEFF | ((v1433 & 1) << 8);
            *(a3 + 167) = v1423;
            goto LABEL_1368;
          }

LABEL_1358:
          *(a4 + 24) = *(a4 + 24) - v1443 + 0x4000;
          LOWORD(v1443) = 0x4000;
          goto LABEL_1359;
        }

LABEL_1312:
        if (*(v1426 + 17) < 1)
        {
          if (*(v1426 + 16) == 7)
          {
            LODWORD(v1426) = 3;
          }

          else
          {
            LODWORD(v1426) = 0;
          }
        }

        else
        {
          LODWORD(v1426) = HIBYTE(*(v1426 + 167)) & 1;
        }

        goto LABEL_1322;
      }

      LODWORD(v1427) = HIBYTE(*(v1427 + 167)) & 1;
    }

    if (!v1426)
    {
      goto LABEL_1322;
    }

    goto LABEL_1312;
  }

LABEL_1368:
  if ((v1423 & 0x100) == 0)
  {
    v1425 = *(v7 + 4985);
    v1423 |= 0x200u;
    goto LABEL_1370;
  }

  if (av1_wedge_params_lookup[8 * v972] < 1)
  {
    a3[83] = 3;
LABEL_1467:
    result = od_ec_decode_BOOL_q15(a4 + 16, 0x4000u);
    a3[82] = result;
    goto LABEL_1468;
  }

  v1516 = (v1887 + 6 * v972 + 8336);
  v1517 = *(a4 + 48);
  v1518 = *(a4 + 52);
  v1519 = v1518 >> 8;
  v1520 = -1;
  v1521 = 8;
  v1522 = v1516;
  do
  {
    v1523 = v1518;
    v1524 = *v1522++;
    ++v1520;
    v1525 = v1519 * (v1524 >> 6);
    v1521 -= 4;
    v1518 = v1521 + (v1525 >> 1);
  }

  while (HIWORD(v1517) < v1518);
  v1526 = v1523 - (v1525 >> 1) - v1521;
  v1527 = 15 - (__clz(v1526) ^ 0x1F);
  v1528 = *(a4 + 54) - v1527;
  *(a4 + 54) = v1528;
  v1529 = ((v1517 - (v1518 << 16) + 1) << v1527) - 1;
  *(a4 + 48) = v1529;
  *(a4 + 52) = v1526 << v1527;
  if (v1528 < 0)
  {
    v1530 = v1528;
    v1531 = *(a4 + 32);
    v1532 = *(a4 + 40);
    if (v1532 >= v1531)
    {
      v1536 = *(a4 + 40);
      goto LABEL_1457;
    }

    v1533 = 8 - v1530;
    if ((8 - v1530) >= 7)
    {
      v1534 = 7;
    }

    else
    {
      v1534 = 8 - v1530;
    }

    v1535 = ((v1534 ^ 0xFu) - v1530) >> 3;
    if (v1535 >= ~v1532 + v1531)
    {
      v1535 = ~v1532 + v1531;
    }

    if (v1535 >= 0xF)
    {
      v1585 = v1535 + 1;
      v1586 = (v1535 + 1) & 0x3FFFFFF0;
      v1536 = &v1532->u8[v1586];
      v1587 = 0uLL;
      v1588 = v1530;
      v1589 = v1529;
      v1590 = vdupq_n_s32(v1533);
      v1591 = vaddq_s32(v1590, xmmword_273BC3230);
      v1592 = vaddq_s32(v1590, xmmword_273BC3240);
      v1593 = vaddq_s32(v1590, xmmword_273BC3250);
      v1594 = vaddq_s32(v1590, xmmword_273BC3220);
      v1595.i64[0] = 0x8000800080008;
      v1595.i64[1] = 0x8000800080008;
      v1596.i64[0] = 0x7F0000007FLL;
      v1596.i64[1] = 0x7F0000007FLL;
      v1597 = v1586;
      v1598 = 0uLL;
      v1599 = 0uLL;
      v1600 = 0uLL;
      do
      {
        v1601 = *v1532++;
        v1599 = veorq_s8(vshlq_u32(vqtbl1q_s8(v1601, xmmword_273B8E7B0), v1592), v1599);
        v1598 = veorq_s8(vshlq_u32(vqtbl1q_s8(v1601, xmmword_273B8E7C0), v1593), v1598);
        v1589 = veorq_s8(vshlq_u32(vqtbl1q_s8(v1601, xmmword_273B8E7D0), v1594), v1589);
        v1600 = veorq_s8(vshlq_u32(vqtbl1q_s8(v1601, xmmword_273B8E7A0), v1591), v1600);
        v1588 = vaddq_s16(v1588, v1595);
        v1587 = vaddq_s16(v1587, v1595);
        v1594 = vaddq_s32(v1594, v1596);
        v1593 = vaddq_s32(v1593, v1596);
        v1592 = vaddq_s32(v1592, v1596);
        v1591 = vaddq_s32(v1591, v1596);
        v1597 -= 16;
      }

      while (v1597);
      v1602 = v1532 < v1531;
      v1603 = vaddq_s16(v1588, v1587);
      v1603.i16[0] = vaddvq_s16(v1603);
      v1530 = v1603.i32[0];
      v1604 = veorq_s8(veorq_s8(v1589, v1599), veorq_s8(v1598, v1600));
      *v1604.i8 = veor_s8(*v1604.i8, *&vextq_s8(v1604, v1604, 8uLL));
      v1529 = v1604.i32[0] ^ v1604.i32[1];
      if (v1585 == v1586)
      {
        goto LABEL_1456;
      }

      v1533 -= 8 * v1586;
    }

    else
    {
      v1536 = *(a4 + 40);
    }

    do
    {
      v1605 = *v1536++;
      v1529 ^= v1605 << v1533;
      v1530 += 8;
      v1602 = v1536 < v1531;
      v75 = v1533 >= 8;
      v1533 -= 8;
    }

    while (v75 && v1536 < v1531);
LABEL_1456:
    if (v1602)
    {
LABEL_1458:
      *(a4 + 48) = v1529;
      *(a4 + 54) = v1530;
      *(a4 + 40) = v1536;
      goto LABEL_1459;
    }

LABEL_1457:
    *(a4 + 24) = *(a4 + 24) - v1530 + 0x4000;
    LOWORD(v1530) = 0x4000;
    goto LABEL_1458;
  }

LABEL_1459:
  v1606 = *(a4 + 56);
  if (*(a4 + 56))
  {
    v1607 = *(v1887 + 6 * v972 + 8340);
    v1608 = (v1607 >> 4) + 4;
    v1609 = *v1516;
    if (v1520 < 1)
    {
      v1610 = v1609 - (v1609 >> v1608);
    }

    else
    {
      v1610 = v1609 + ((0x8000 - v1609) >> v1608);
    }

    *v1516 = v1610;
    if (v1607 < 0x20)
    {
      LOWORD(v1607) = v1607 + 1;
    }

    *(v1887 + 6 * v972 + 8340) = v1607;
  }

  a3[83] = v1520 + 2;
  if (v1520)
  {
    goto LABEL_1467;
  }

  v1670 = 0;
  v1671 = (v1887 + 34 * v972 + 8468);
  v1672 = *(a4 + 52);
  v1673 = v1672 >> 8;
  v1674 = -1;
  v1675 = 64;
  v1676 = v1671;
  do
  {
    v1677 = v1672;
    ++v1674;
    v1678 = *v1676++;
    v1679 = v1673 * (v1678 >> 6);
    v1675 -= 4;
    v1672 = v1675 + (v1679 >> 1);
    v1670 -= 0x100000000000000;
  }

  while (HIWORD(v1529) < v1672);
  v1680 = v1677 - (v1679 >> 1) - v1675;
  v1681 = 15 - (__clz(v1680) ^ 0x1F);
  v1682 = *(a4 + 54) - v1681;
  *(a4 + 54) = v1682;
  v1683 = ((v1529 - (v1672 << 16) + 1) << v1681) - 1;
  *(a4 + 48) = v1683;
  *(a4 + 52) = v1680 << v1681;
  if (v1682 < 0)
  {
    v1684 = v1682;
    v1685 = *(a4 + 32);
    v1686 = *(a4 + 40);
    if (v1686 >= v1685)
    {
      v1690 = *(a4 + 40);
      goto LABEL_1689;
    }

    v1687 = 8 - v1684;
    if ((8 - v1684) >= 7)
    {
      v1688 = 7;
    }

    else
    {
      v1688 = 8 - v1684;
    }

    v1689 = ((v1688 ^ 0xFu) - v1684) >> 3;
    if (v1689 >= ~v1686 + v1685)
    {
      v1689 = ~v1686 + v1685;
    }

    if (v1689 >= 0xF)
    {
      v1817 = v1689 + 1;
      v1818 = (v1689 + 1) & 0x3FFFFFF0;
      v1690 = &v1686->u8[v1818];
      v1819 = 0uLL;
      v1820 = v1684;
      v1821 = v1683;
      v1822 = vdupq_n_s32(v1687);
      v1823 = vaddq_s32(v1822, xmmword_273BC3230);
      v1824 = vaddq_s32(v1822, xmmword_273BC3240);
      v1825 = vaddq_s32(v1822, xmmword_273BC3250);
      v1826 = vaddq_s32(v1822, xmmword_273BC3220);
      v1827.i64[0] = 0x8000800080008;
      v1827.i64[1] = 0x8000800080008;
      v1828.i64[0] = 0x7F0000007FLL;
      v1828.i64[1] = 0x7F0000007FLL;
      v1829 = v1818;
      v1830 = 0uLL;
      v1831 = 0uLL;
      v1832 = 0uLL;
      do
      {
        v1833 = *v1686++;
        v1831 = veorq_s8(vshlq_u32(vqtbl1q_s8(v1833, xmmword_273B8E7B0), v1824), v1831);
        v1830 = veorq_s8(vshlq_u32(vqtbl1q_s8(v1833, xmmword_273B8E7C0), v1825), v1830);
        v1821 = veorq_s8(vshlq_u32(vqtbl1q_s8(v1833, xmmword_273B8E7D0), v1826), v1821);
        v1832 = veorq_s8(vshlq_u32(vqtbl1q_s8(v1833, xmmword_273B8E7A0), v1823), v1832);
        v1820 = vaddq_s16(v1820, v1827);
        v1819 = vaddq_s16(v1819, v1827);
        v1826 = vaddq_s32(v1826, v1828);
        v1825 = vaddq_s32(v1825, v1828);
        v1824 = vaddq_s32(v1824, v1828);
        v1823 = vaddq_s32(v1823, v1828);
        v1829 -= 16;
      }

      while (v1829);
      v1834 = v1686 < v1685;
      LOWORD(v1684) = vaddvq_s16(vaddq_s16(v1820, v1819));
      v1835 = veorq_s8(veorq_s8(v1821, v1831), veorq_s8(v1830, v1832));
      *v1835.i8 = veor_s8(*v1835.i8, *&vextq_s8(v1835, v1835, 8uLL));
      v1683 = v1835.i32[0] ^ v1835.i32[1];
      if (v1817 == v1818)
      {
        goto LABEL_1688;
      }

      v1687 -= 8 * v1818;
    }

    else
    {
      v1690 = *(a4 + 40);
    }

    do
    {
      v1836 = *v1690++;
      v1683 ^= v1836 << v1687;
      LOWORD(v1684) = v1684 + 8;
      v1834 = v1690 < v1685;
      v75 = v1687 >= 8;
      v1687 -= 8;
    }

    while (v75 && v1690 < v1685);
LABEL_1688:
    if (v1834)
    {
LABEL_1690:
      *(a4 + 48) = v1683;
      *(a4 + 54) = v1684;
      *(a4 + 40) = v1690;
      goto LABEL_1691;
    }

LABEL_1689:
    *(a4 + 24) = *(a4 + 24) - v1684 + 0x4000;
    LOWORD(v1684) = 0x4000;
    goto LABEL_1690;
  }

LABEL_1691:
  if (!v1606)
  {
    goto LABEL_1722;
  }

  v1837 = *(v1887 + 34 * v972 + 8500);
  v1838 = (v1837 >> 4) + 5;
  v1839 = (0xFF00000000000000 - v1670) >> 56;
  v1840 = *v1671;
  if (v1839 <= 0)
  {
    *v1671 = v1840 - (v1840 >> v1838);
    v1841 = *(v1887 + 34 * v972 + 8470);
    goto LABEL_1704;
  }

  *v1671 = v1840 + ((0x8000 - v1840) >> v1838);
  v1841 = *(v1887 + 34 * v972 + 8470);
  if (v1670 == 0xFE00000000000000)
  {
LABEL_1704:
    *(v1887 + 34 * v972 + 8470) = v1841 - (v1841 >> v1838);
    v1842 = *(v1887 + 34 * v972 + 8472);
    goto LABEL_1705;
  }

  *(v1887 + 34 * v972 + 8470) = v1841 + ((0x8000 - v1841) >> v1838);
  v1842 = *(v1887 + 34 * v972 + 8472);
  if (v1839 <= 2)
  {
LABEL_1705:
    *(v1887 + 34 * v972 + 8472) = v1842 - (v1842 >> v1838);
    v1843 = *(v1887 + 34 * v972 + 8474);
    goto LABEL_1706;
  }

  *(v1887 + 34 * v972 + 8472) = v1842 + ((0x8000 - v1842) >> v1838);
  v1843 = *(v1887 + 34 * v972 + 8474);
  if (v1670 == 0xFC00000000000000)
  {
LABEL_1706:
    *(v1887 + 34 * v972 + 8474) = v1843 - (v1843 >> v1838);
    v1844 = *(v1887 + 34 * v972 + 8476);
    goto LABEL_1707;
  }

  *(v1887 + 34 * v972 + 8474) = v1843 + ((0x8000 - v1843) >> v1838);
  v1844 = *(v1887 + 34 * v972 + 8476);
  if (v1839 <= 4)
  {
LABEL_1707:
    *(v1887 + 34 * v972 + 8476) = v1844 - (v1844 >> v1838);
    v1845 = *(v1887 + 34 * v972 + 8478);
    goto LABEL_1708;
  }

  *(v1887 + 34 * v972 + 8476) = v1844 + ((0x8000 - v1844) >> v1838);
  v1845 = *(v1887 + 34 * v972 + 8478);
  if (v1670 == 0xFA00000000000000)
  {
LABEL_1708:
    *(v1887 + 34 * v972 + 8478) = v1845 - (v1845 >> v1838);
    v1846 = *(v1887 + 34 * v972 + 8480);
    goto LABEL_1709;
  }

  *(v1887 + 34 * v972 + 8478) = v1845 + ((0x8000 - v1845) >> v1838);
  v1846 = *(v1887 + 34 * v972 + 8480);
  if (v1839 <= 6)
  {
LABEL_1709:
    *(v1887 + 34 * v972 + 8480) = v1846 - (v1846 >> v1838);
    v1847 = *(v1887 + 34 * v972 + 8482);
    goto LABEL_1710;
  }

  *(v1887 + 34 * v972 + 8480) = v1846 + ((0x8000 - v1846) >> v1838);
  v1847 = *(v1887 + 34 * v972 + 8482);
  if (v1670 == 0xF800000000000000)
  {
LABEL_1710:
    *(v1887 + 34 * v972 + 8482) = v1847 - (v1847 >> v1838);
    v1848 = *(v1887 + 34 * v972 + 8484);
    goto LABEL_1711;
  }

  *(v1887 + 34 * v972 + 8482) = v1847 + ((0x8000 - v1847) >> v1838);
  v1848 = *(v1887 + 34 * v972 + 8484);
  if (v1839 <= 8)
  {
LABEL_1711:
    *(v1887 + 34 * v972 + 8484) = v1848 - (v1848 >> v1838);
    v1849 = *(v1887 + 34 * v972 + 8486);
LABEL_1712:
    *(v1887 + 34 * v972 + 8486) = v1849 - (v1849 >> v1838);
    v1850 = *(v1887 + 34 * v972 + 8488);
LABEL_1713:
    *(v1887 + 34 * v972 + 8488) = v1850 - (v1850 >> v1838);
    v1851 = *(v1887 + 34 * v972 + 8490);
LABEL_1714:
    *(v1887 + 34 * v972 + 8490) = v1851 - (v1851 >> v1838);
    v1852 = *(v1887 + 34 * v972 + 8492);
LABEL_1715:
    *(v1887 + 34 * v972 + 8492) = v1852 - (v1852 >> v1838);
    v1853 = *(v1887 + 34 * v972 + 8494);
LABEL_1716:
    *(v1887 + 34 * v972 + 8494) = v1853 - (v1853 >> v1838);
    v1854 = *(v1887 + 34 * v972 + 8496);
    goto LABEL_1717;
  }

  *(v1887 + 34 * v972 + 8484) = v1848 + ((0x8000 - v1848) >> v1838);
  v1849 = *(v1887 + 34 * v972 + 8486);
  if (v1670 == 0xF600000000000000)
  {
    goto LABEL_1712;
  }

  *(v1887 + 34 * v972 + 8486) = v1849 + ((0x8000 - v1849) >> v1838);
  v1850 = *(v1887 + 34 * v972 + 8488);
  if (v1839 <= 0xA)
  {
    goto LABEL_1713;
  }

  *(v1887 + 34 * v972 + 8488) = v1850 + ((0x8000 - v1850) >> v1838);
  v1851 = *(v1887 + 34 * v972 + 8490);
  if (v1670 == 0xF400000000000000)
  {
    goto LABEL_1714;
  }

  *(v1887 + 34 * v972 + 8490) = v1851 + ((0x8000 - v1851) >> v1838);
  v1852 = *(v1887 + 34 * v972 + 8492);
  if (v1839 <= 0xC)
  {
    goto LABEL_1715;
  }

  *(v1887 + 34 * v972 + 8492) = v1852 + ((0x8000 - v1852) >> v1838);
  v1853 = *(v1887 + 34 * v972 + 8494);
  if (v1670 == 0xF200000000000000)
  {
    goto LABEL_1716;
  }

  *(v1887 + 34 * v972 + 8494) = v1853 + ((0x8000 - v1853) >> v1838);
  v1854 = *(v1887 + 34 * v972 + 8496);
  if (v1839 > 0xE)
  {
    v1855 = v1854 + ((0x8000 - v1854) >> v1838);
    goto LABEL_1718;
  }

LABEL_1717:
  v1855 = v1854 - (v1854 >> v1838);
LABEL_1718:
  *(v1887 + 34 * v972 + 8496) = v1855;
  if (v1837 >= 0x20)
  {
    v1856 = v1837;
  }

  else
  {
    v1856 = v1837 + 1;
  }

  *(v1887 + 34 * v972 + 8500) = v1856;
LABEL_1722:
  a3[80] = v1674;
  result = od_ec_decode_BOOL_q15(a4 + 16, 0x4000u);
  a3[81] = result;
  v1513 = v1893[504];
  v1514 = *(v6 + 7864);
  v1515 = *v1514;
  if ((*(*v1514 + 167) & 0x40) == 0)
  {
    goto LABEL_1469;
  }

LABEL_1470:
  if (v1513 == 4)
  {
    v1611 = 0;
  }

  else
  {
    v1611 = v1513;
  }

  *(a3 + 5) = v1611 | (v1611 << 16);
  if (a3[24] == 2)
  {
    goto LABEL_1474;
  }

LABEL_1507:
  if (*(*(v7 + 4985) + 77))
  {
    goto LABEL_1508;
  }

  if (*(v6 + 12) != 1)
  {
    v1637 = 1;
    goto LABEL_1509;
  }

  v1638 = **(v6 + 7864);
  if ((*(v1638 + 167) & 0x80) != 0 || *(v1638 + 16) > 0)
  {
LABEL_1508:
    v1637 = 0;
  }

  else
  {
    v1637 = *(v1638 + 3) == 13;
  }

LABEL_1509:
  *(v6 + 15024) = v1637;
  return result;
}

uint64_t gm_get_motion_vector(uint64_t a1, int a2, int a3, int a4, int a5, int a6)
{
  if (!*(a1 + 32))
  {
    return *(a1 + 32) << 16;
  }

  if (*(a1 + 32) == 1)
  {
    v7 = *a1;
    v6 = *(a1 + 4);
    v8 = *a1 >> 13;
    v9 = v6 >> 13;
    if (!a6)
    {
      return v8 | (v9 << 16);
    }

    v10 = v8 - ((v8 + (((v7 >> 13) >> 28) & 7)) & 0xFFFF8);
    if (v10)
    {
      v10 = v10;
      v11 = v8 - v10;
      v12 = v10 <= 0;
      if ((v10 & 0x8000u) != 0)
      {
        v10 = -v10;
      }

      if (v12)
      {
        v13 = -8;
      }

      else
      {
        v13 = 8;
      }

      v14 = v13 + v11;
      if (v10 >= 5)
      {
        LOWORD(v8) = v14;
      }

      else
      {
        LOWORD(v8) = v11;
      }
    }

    v15 = v9 - ((v9 + (((v6 >> 13) >> 28) & 7)) & 0xFFFF8);
    if (!v15)
    {
      return v8 | (v9 << 16);
    }
  }

  else
  {
    v17 = 4 * a4 + (block_size_wide_9[a3] >> 1) - 1;
    v18 = 4 * a5 + (block_size_high_8[a3] >> 1) - 1;
    v19 = *a1 + (*(a1 + 8) - 0x10000) * v17 + v18 * *(a1 + 12);
    v20 = *(a1 + 4) + *(a1 + 16) * v17 + (*(a1 + 20) - 0x10000) * v18;
    if (a2)
    {
      if (v19 < 0)
      {
        v9 = -((4096 - v19) >> 13);
      }

      else
      {
        v9 = (v19 + 4096) >> 13;
      }

      if (v20 < 0)
      {
        v8 = -((4096 - v20) >> 13);
      }

      else
      {
        v8 = (v20 + 4096) >> 13;
      }

      if (!a6)
      {
        return v8 | (v9 << 16);
      }
    }

    else
    {
      if (v19 < 0)
      {
        v21 = -((0x2000 - v19) >> 14);
      }

      else
      {
        v21 = (v19 + 0x2000) >> 14;
      }

      v9 = 2 * v21;
      if (v20 < 0)
      {
        v22 = -((0x2000 - v20) >> 14);
      }

      else
      {
        v22 = (v20 + 0x2000) >> 14;
      }

      v8 = 2 * v22;
      if (!a6)
      {
        return v8 | (v9 << 16);
      }
    }

    v23 = v8 - ((v8 + ((v8 >> 28) & 7)) & 0xFFFFFFF8);
    if (v8 != ((v8 + ((v8 >> 28) & 7)) & 0xFFF8))
    {
      v23 = v23;
      v24 = v23 <= 0;
      if ((v23 & 0x8000u) != 0)
      {
        v23 = -v23;
      }

      if (v24)
      {
        v25 = -8;
      }

      else
      {
        v25 = 8;
      }

      v26 = v25 + ((v8 + ((v8 >> 28) & 7)) & 0xFFF8);
      if (v23 >= 5)
      {
        LOWORD(v8) = v26;
      }

      else
      {
        LOWORD(v8) = (v8 + ((v8 >> 28) & 7)) & 0xFFF8;
      }
    }

    v15 = v9 - ((v9 + ((v9 >> 28) & 7)) & 0xFFFFFFF8);
    if (v9 == ((v9 + ((v9 >> 28) & 7)) & 0xFFF8))
    {
      return v8 | (v9 << 16);
    }
  }

  LOWORD(v9) = v9 - v15;
  if ((v15 & 0x8000u) == 0)
  {
    v27 = v15;
  }

  else
  {
    v27 = -v15;
  }

  if (v27 < 5)
  {
    return v8 | (v9 << 16);
  }

  if (v15 > 0)
  {
    v28 = 8;
  }

  else
  {
    v28 = -8;
  }

  return v8 | ((v28 + v9) << 16);
}

char *av1_decoder_create(uint64_t a1)
{
  v2 = malloc_type_malloc(0x5F8A7uLL, 0x5F484EBFuLL);
  if (!v2)
  {
    return 0;
  }

  *(((v2 + 39) & 0xFFFFFFFFFFFFFFE0) - 8) = v2;
  v26 = ((v2 + 39) & 0xFFFFFFFFFFFFFFE0);
  if (!v26)
  {
    return 0;
  }

  bzero(v26, 0x5F880uLL);
  v25 = v26 + 15200;
  *(v26 + 4985) = v26 + 388920;
  *(v26 + 1906) = v26 + 390868;
  if (setjmp(v26 + 97770))
  {
    *(v26 + 97769) = 0;
    av1_decoder_remove(v26);
    return 0;
  }

  *(v26 + 97769) = 1;
  v4 = malloc_type_malloc(0x5323uLL, 0x5F484EBFuLL);
  if (v4)
  {
    *(((v4 + 39) & 0xFFFFFFFFFFFFFFE0) - 8) = v4;
    *(v26 + 4986) = (v4 + 39) & 0xFFFFFFFFFFFFFFE0;
    if (*(v26 + 4986))
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *(v26 + 4986) = 0;
  if (!*(v26 + 4986))
  {
LABEL_8:
    aom_internal_error(*(v26 + 1906), 2, "Failed to allocate cm->fc", v26 + 15200);
  }

LABEL_9:
  v5 = malloc_type_malloc(0x5323uLL, 0x5F484EBFuLL);
  if (!v5)
  {
    *(v25 + 3087) = 0;
    if (*(v25 + 3087))
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  *(((v5 + 39) & 0xFFFFFFFFFFFFFFE0) - 8) = v5;
  *(v25 + 3087) = (v5 + 39) & 0xFFFFFFFFFFFFFFE0;
  if (!*(v25 + 3087))
  {
LABEL_11:
    aom_internal_error(*(v25 + 6), 2, "Failed to allocate cm->default_frame_context", v25);
  }

LABEL_12:
  bzero(*(v25 + 3086), 0x52FCuLL);
  bzero(*(v25 + 3087), 0x52FCuLL);
  *(v26 + 90972) = 1;
  av1_rtcd();
  aom_dsp_rtcd();
  aom_scale_rtcd();
  av1_init_intra_predictors();
  av1_init_wedge_masks();
  *(v25 + 52) = 0;
  *(v25 + 53) = 0;
  *(v25 + 54) = 0;
  *(v25 + 55) = 0;
  *(v25 + 56) = 0;
  *(v25 + 57) = 0;
  *(v25 + 58) = 0;
  *(v25 + 59) = 0;
  *(v25 + 4) = 0;
  *(v26 + 90968) = 1;
  *(v26 + 5062) = a1;
  *(*(v25 + 3085) + 72) = 8;
  *(v25 + 74) = dec_free_mi;
  *(v25 + 75) = dec_setup_mi;
  *(v25 + 76) = dec_set_mb_mi;
  v6 = *(v25 + 5760);
  v7 = v6 > 4;
  if (v6 <= 0)
  {
    v17 = (v25 + 19200);
    v18 = 4;
    v19 = 0;
    do
    {
      v20 = v19 + 1;
      v21 = v19 >> v7;
      if (v21 <= 1)
      {
        LOBYTE(v21) = 1;
      }

      v22 = 0x101010101010101 * v21;
      *v17 = v22;
      v17[1] = v22;
      v23 = 0x101010101010101 * (v21 + v18);
      *(v17 - 2) = v23;
      *(v17 - 1) = v23;
      v19 = v20;
      v17 += 6;
      v18 += 2;
    }

    while (v20 != 64);
  }

  else
  {
    v8 = v7 + 1;
    v9 = 9 - v6;
    v10 = (v25 + 19200);
    v11 = 4;
    v12 = 0;
    do
    {
      v13 = v12 + 1;
      v14 = v12 >> v8;
      if (v14 >= v9)
      {
        v14 = v9;
      }

      if (v14 <= 1)
      {
        LOBYTE(v14) = 1;
      }

      v15 = 0x101010101010101 * v14;
      *v10 = v15;
      v10[1] = v15;
      v16 = 0x101010101010101 * (v14 + v11);
      *(v10 - 2) = v16;
      *(v10 - 1) = v16;
      v12 = v13;
      v10 += 6;
      v11 += 2;
    }

    while (v13 != 64);
  }

  *(v25 + 1201) = 0u;
  *(v25 + 1204) = 0u;
  *(v25 + 1207) = 0u;
  *(v25 + 1210) = 0u;
  *(v25 + 1213) = 0u;
  *(v25 + 1216) = 0u;
  *(v25 + 1219) = 0u;
  *(v25 + 1222) = 0u;
  *(v25 + 1225) = 0u;
  *(v25 + 1228) = 0u;
  *(v25 + 1231) = 0u;
  *(v25 + 1234) = 0u;
  *(v25 + 1237) = 0u;
  *(v25 + 1240) = 0u;
  *(v25 + 1243) = 0u;
  *(v25 + 1246) = 0u;
  *(v25 + 2499) = 0x101010101010101;
  *(v25 + 2498) = 0x101010101010101;
  *(v25 + 2505) = 0x101010101010101;
  *(v25 + 2504) = 0x101010101010101;
  *(v25 + 2510) = 0x101010101010101;
  *(v25 + 2511) = 0x101010101010101;
  *(v25 + 2516) = 0x101010101010101;
  *(v25 + 2517) = 0x101010101010101;
  *(v25 + 2522) = 0x101010101010101;
  *(v25 + 2523) = 0x101010101010101;
  *(v25 + 2528) = 0x101010101010101;
  *(v25 + 2529) = 0x101010101010101;
  *(v25 + 2534) = 0x101010101010101;
  *(v25 + 2535) = 0x101010101010101;
  *(v25 + 2540) = 0x101010101010101;
  *(v25 + 2541) = 0x101010101010101;
  *(v25 + 2547) = 0x101010101010101;
  *(v25 + 2546) = 0x101010101010101;
  *(v25 + 2553) = 0x101010101010101;
  *(v25 + 2552) = 0x101010101010101;
  *(v25 + 2559) = 0x101010101010101;
  *(v25 + 2558) = 0x101010101010101;
  *(v25 + 2565) = 0x101010101010101;
  *(v25 + 2564) = 0x101010101010101;
  *(v25 + 2571) = 0x101010101010101;
  *(v25 + 2570) = 0x101010101010101;
  *(v25 + 2577) = 0x101010101010101;
  *(v25 + 2576) = 0x101010101010101;
  *(v25 + 2583) = 0x101010101010101;
  *(v25 + 2582) = 0x101010101010101;
  *(v25 + 2589) = 0x101010101010101;
  *(v25 + 2588) = 0x101010101010101;
  *(v25 + 2595) = 0x202020202020202;
  *(v25 + 2594) = 0x202020202020202;
  *(v25 + 2601) = 0x202020202020202;
  *(v25 + 2600) = 0x202020202020202;
  *(v25 + 2607) = 0x202020202020202;
  *(v25 + 2606) = 0x202020202020202;
  *(v25 + 2613) = 0x202020202020202;
  *(v25 + 2612) = 0x202020202020202;
  *(v25 + 2619) = 0x202020202020202;
  *(v25 + 2618) = 0x202020202020202;
  *(v25 + 2625) = 0x202020202020202;
  *(v25 + 2624) = 0x202020202020202;
  *(v25 + 2631) = 0x202020202020202;
  *(v25 + 2630) = 0x202020202020202;
  *(v25 + 2637) = 0x202020202020202;
  *(v25 + 2636) = 0x202020202020202;
  *(v25 + 2643) = 0x202020202020202;
  *(v25 + 2642) = 0x202020202020202;
  *(v25 + 2649) = 0x202020202020202;
  *(v25 + 2648) = 0x202020202020202;
  *(v25 + 2655) = 0x202020202020202;
  *(v25 + 2654) = 0x202020202020202;
  *(v25 + 2661) = 0x202020202020202;
  *(v25 + 2660) = 0x202020202020202;
  *(v25 + 2667) = 0x202020202020202;
  *(v25 + 2666) = 0x202020202020202;
  *(v25 + 2673) = 0x202020202020202;
  *(v25 + 2672) = 0x202020202020202;
  *(v25 + 2679) = 0x202020202020202;
  *(v25 + 2678) = 0x202020202020202;
  *(v25 + 2685) = 0x202020202020202;
  *(v25 + 2684) = 0x202020202020202;
  *(v25 + 2691) = 0x303030303030303;
  *(v25 + 2690) = 0x303030303030303;
  *(v25 + 2697) = 0x303030303030303;
  *(v25 + 2696) = 0x303030303030303;
  *(v25 + 2703) = 0x303030303030303;
  *(v25 + 2702) = 0x303030303030303;
  *(v25 + 2709) = 0x303030303030303;
  *(v25 + 2708) = 0x303030303030303;
  *(v25 + 2715) = 0x303030303030303;
  *(v25 + 2714) = 0x303030303030303;
  *(v25 + 2721) = 0x303030303030303;
  *(v25 + 2720) = 0x303030303030303;
  *(v25 + 2727) = 0x303030303030303;
  *(v25 + 2726) = 0x303030303030303;
  *(v25 + 2733) = 0x303030303030303;
  *(v25 + 2732) = 0x303030303030303;
  *(v25 + 2739) = 0x303030303030303;
  *(v25 + 2738) = 0x303030303030303;
  *(v25 + 2745) = 0x303030303030303;
  *(v25 + 2744) = 0x303030303030303;
  *(v25 + 2751) = 0x303030303030303;
  *(v25 + 2750) = 0x303030303030303;
  *(v25 + 2757) = 0x303030303030303;
  *(v25 + 2756) = 0x303030303030303;
  *(v25 + 2763) = 0x303030303030303;
  *(v25 + 2762) = 0x303030303030303;
  *(v25 + 2769) = 0x303030303030303;
  *(v25 + 2768) = 0x303030303030303;
  *(v25 + 2775) = 0x303030303030303;
  *(v25 + 2774) = 0x303030303030303;
  *(v25 + 2781) = 0x303030303030303;
  *(v25 + 2780) = 0x303030303030303;
  if (*(*(v25 + 3085) + 77))
  {
    v24 = 1;
  }

  else
  {
    v24 = 3;
  }

  av1_qm_init((v25 + 616), v24);
  *(v26 + 97769) = 0;
  g_worker_interface_0((v26 + 40672));
  *(v26 + 5086) = "aom lf worker";
  return v26;
}

void av1_decoder_remove(uint64_t a1)
{
  if (a1)
  {
    v2 = a1 + 39888;
    aom_free_frame_buffer(a1 + 388576);
    off_28100B678(off_28100B678, (a1 + 40672));
    v3 = *(v2 + 816);
    if (v3)
    {
      free(*(v3 - 8));
    }

    v4 = *(v2 + 1344);
    if (v4)
    {
      v5 = *(v2 + 1336);
      if (v5 < 2)
      {
        goto LABEL_14;
      }

      v6 = 1;
      v7 = 424;
      do
      {
        v8 = *(v2 + 1344);
        v9 = *(v8 + v7);
        if (v9)
        {
          av1_free_mc_tmp_buf(v9);
          v10 = *(v8 + v7);
          if (v10)
          {
            free(*(v10 - 8));
          }

          v5 = *(v2 + 1336);
        }

        ++v6;
        v7 += 424;
      }

      while (v6 < v5);
      v4 = *(v2 + 1344);
      if (v4)
      {
LABEL_14:
        free(*(v4 - 8));
      }
    }

    v11 = (a1 + 388768);
    v12 = *(a1 + 10768);
    if (v12)
    {
      free(*(v12 - 8));
    }

    if (*(v2 + 1336) >= 1)
    {
      v13 = 0;
      v14 = 0;
      do
      {
        off_28100B678(*(v2 + 1328), (*(v2 + 1328) + v13));
        ++v14;
        v13 += 56;
      }

      while (v14 < *(v2 + 1336));
    }

    v15 = (a1 + 298240);
    v16 = *(a1 + 388784);
    if (v16)
    {
      pthread_mutex_destroy(v16);
      v17 = *(a1 + 388784);
      if (v17)
      {
        free(*(v17 - 8));
      }
    }

    v18 = *(a1 + 388792);
    if (v18)
    {
      pthread_cond_destroy(v18);
      v19 = *(a1 + 388792);
      if (v19)
      {
        free(*(v19 - 8));
      }
    }

    if (*(a1 + 298248) >= 1)
    {
      v20 = 0;
      v21 = 21344;
      do
      {
        av1_dec_row_mt_dealloc((*v15 + v21));
        ++v20;
        v21 += 21408;
      }

      while (v20 < *(a1 + 298248));
    }

    if (*v15)
    {
      free(*(*v15 - 8));
    }

    v22 = *(v2 + 1328);
    if (v22)
    {
      free(*(v22 - 8));
    }

    if (*(v2 + 1336) >= 1)
    {
      v23 = (a1 + 363792);
      av1_loop_filter_dealloc((a1 + 40728));
      av1_loop_restoration_dealloc((a1 + 40856));
      v24 = *(a1 + 363792);
      if (v24)
      {
        pthread_mutex_destroy(v24);
        if (*v23)
        {
          free(*(*v23 - 8));
        }
      }

      v25 = *(a1 + 363800);
      if (v25)
      {
        free(*(v25 - 8));
      }

      *v23 = 0u;
      *(a1 + 363808) = 0u;
    }

    if (*v11)
    {
      free(*(*v11 - 8));
    }

    *v11 = 0;
    *(a1 + 388776) = 0;
    av1_free_mc_tmp_buf(a1 + 41248);
    v26 = *(a1 + 388840);
    if (v26)
    {
      v27 = v26[1];
      if (v27)
      {
        v28 = *v26;
        if (*v26)
        {
          v29 = 0;
          do
          {
            v30 = *(v26[1] + 8 * v29);
            if (v30)
            {
              v31 = v30[1];
              if (v31)
              {
                free(v31);
              }

              free(v30);
              v28 = *v26;
            }

            ++v29;
          }

          while (v29 < v28);
          v27 = v26[1];
        }

        free(v27);
      }

      free(v26);
    }

    v32 = *(a1 + 15792);
    if (v32)
    {
      v32(a1 + 15720);
    }

    av1_free_above_context_buffers((a1 + 40504));
    if (*v2)
    {
      free(*(*v2 - 8));
    }

    *v2 = 0;
    v33 = *(v2 + 8);
    if (v33)
    {
      free(*(v33 - 8));
    }

    *(v2 + 8) = 0;
    v34 = *(a1 - 8);

    free(v34);
  }
}