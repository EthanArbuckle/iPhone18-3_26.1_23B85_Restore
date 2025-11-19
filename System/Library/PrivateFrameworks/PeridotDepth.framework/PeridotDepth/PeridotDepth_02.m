_BYTE *peridot::Reflectivity::calcReflectivity(peridot::Reflectivity *this, peridot::PeridotDepth *a2, peridot::PeridotUserOutput *a3, const unint64_t (*a4)[14][3][9], const signed __int8 *a5, unsigned int a6, double a7, BOOL a8, const BOOL *a9, BOOL *a10)
{
  v11 = 0;
  v324 = *MEMORY[0x277D85DE8];
  result = v313;
  v13.i64[0] = *(a3 + 84);
  v13.i32[1] = *(a3 + 98);
  v13.i32[2] = *(a3 + 175);
  v13.i32[3] = *(a3 + 252);
  v14.i32[0] = *(a3 + 329);
  v14.i32[1] = *(a3 + 406);
  v14.i32[2] = *(a3 + 483);
  v14.i32[3] = *(a3 + 560);
  *v13.i8 = vand_s8(vuzp1_s8(vshr_n_u16(vmovn_s32(v13), 0xDuLL), vshr_n_u16(vmovn_s32(v14), 0xDuLL)), 0x101010101010101);
  v15 = *(a3 + 2548);
  v15.i32[1] = *(a3 + 714);
  v15.i32[2] = *(a3 + 791);
  v15.i32[3] = *(a3 + 868);
  v320 = v13.i64[0];
  v321 = vuzp1_s8((*&vshr_n_u16(vmovn_s32(v15), 0xDuLL) & 0xFFF9FFF9FFF9FFF9), *&a7).u32[0];
  v322 = (*(a3 + 945) & 0x2000) != 0;
  v323 = (*(a3 + 1022) & 0x2000) != 0;
  v268 = this + 7448;
  v272 = a6;
  v16 = 1.0 / *&a7;
  v17 = 0uLL;
  v269 = a3;
  while (2)
  {
    v18 = 0;
    v20 = this + 12;
    v19 = this - 4;
    v281 = v11;
    while (2)
    {
      v21 = (a3 + 308 * v18);
      v22 = &v21[22 * v11];
      v23 = v22[1];
      if (v23 == 0.0 || v23 < *(this + 1110))
      {
LABEL_4:
        v22[3] = 0.0;
        goto LABEL_5;
      }

      v319 = 0;
      v24 = *(this + 1106);
      v25 = v22[11];
      if (v25 <= v24)
      {
        v27 = 0;
        v26 = v313;
      }

      else
      {
        LOBYTE(v319) = 1;
        *v313 = 0;
        v26 = &v313[8];
        v27 = 1;
      }

      v28 = v22[12];
      if (v28 > v24)
      {
        BYTE1(v319) = 1;
        ++v27;
        *v26 = 1;
      }

      v29 = v22[13];
      if (v29 > v24)
      {
        BYTE2(v319) = 1;
        *&v313[8 * v27++] = 2;
      }

      v30 = v22[14];
      if (v30 > v24)
      {
        BYTE3(v319) = 1;
        *&v313[8 * v27++] = 3;
      }

      v31 = v22[15];
      v32 = v31 > v24;
      if (v31 > v24)
      {
        BYTE4(v319) = 1;
        *&v313[8 * v27++] = 4;
      }

      v33 = v22[16];
      if (v33 > v24)
      {
        BYTE5(v319) = 1;
        *&v313[8 * v27++] = 5;
      }

      v34 = v22[17];
      if (v34 > v24)
      {
        BYTE6(v319) = 1;
        *&v313[8 * v27++] = 6;
      }

      v35 = v22[18];
      if (v35 <= v24)
      {
        if (!v27)
        {
          v36 = *v313;
          if (v25 <= 0.0)
          {
            v37 = 0.0;
          }

          else
          {
            v36 = v25;
            v37 = v25;
          }

          v38 = v28 > v37;
          if (v28 > v37)
          {
            v36 = v28;
            v37 = v28;
          }

          if (v25 > 0.0)
          {
            v38 = 1;
          }

          if (v29 > v37)
          {
            v36 = v29;
            v37 = v29;
            v38 = 1;
          }

          if (v30 > v37)
          {
            v36 = v30;
            v37 = v30;
            v38 = 1;
          }

          v39 = v31;
          if (v31 > v37)
          {
            v37 = v31;
            v40 = 1;
          }

          else
          {
            v39 = v36;
            v40 = v38;
          }

          v41 = v33;
          if (v33 > v37)
          {
            v42 = v33;
          }

          else
          {
            v41 = v39;
            v42 = v37;
          }

          v43 = v34 > v42;
          if (v34 > v42)
          {
            v41 = v34;
            v42 = v34;
          }

          if (v33 > v37)
          {
            v43 = 1;
          }

          v44 = v35;
          if (v35 > v42)
          {
            v45 = v22[18];
          }

          else
          {
            v44 = v41;
            v45 = v42;
          }

          v46 = v35 > v42 || v43;
          *v313 = v44;
          if (v45 == 0.0)
          {
            goto LABEL_4;
          }

          v27 = (v46 | v40) & 1;
        }
      }

      else
      {
        HIBYTE(v319) = 1;
        *&v313[8 * v27++] = 7;
      }

      v47 = v31 > v24 && v28 > v24;
      v48 = v27;
      if (v47)
      {
        if (!v27)
        {
          goto LABEL_64;
        }

        v49 = v27 - 1;
        if (*v313 != 4)
        {
          v51 = v27;
          if (v27 == 1)
          {
            v48 = 1;
            goto LABEL_154;
          }

LABEL_71:
          if (*&v313[8] == 4)
          {
            v48 = v51 - 1;
            if (v27 == 2)
            {
              goto LABEL_154;
            }

            v54 = v27 - 2;
            if (v27 - 2 >= 4)
            {
              v58 = v54 & 0xFFFFFFFFFFFFFFFCLL;
              v59 = &v313[16];
              v60 = v54 & 0xFFFFFFFFFFFFFFFCLL;
              do
              {
                v61 = v59[1];
                *(v59 - 8) = *v59;
                *(v59 + 8) = v61;
                v59 += 2;
                v60 -= 4;
              }

              while (v60);
              if (v54 == v58)
              {
                goto LABEL_77;
              }

              v55 = v58 | 1;
            }

            else
            {
              v55 = 1;
            }

            v62 = &v313[8 * v55 + 8];
            v63 = ~v55 + v27;
            do
            {
              *(v62 - 1) = *v62;
              ++v62;
              --v63;
            }

            while (v63);
          }

          else
          {
            v48 = v51;
          }

          if (v27 == 2)
          {
            goto LABEL_154;
          }

LABEL_77:
          if (*&v313[16] == 4)
          {
            --v48;
            if (v27 == 3)
            {
              goto LABEL_154;
            }

            if (v49 < 3)
            {
LABEL_96:
              if (*&v313[24] == 4)
              {
                --v48;
                if (v27 == 4)
                {
                  goto LABEL_154;
                }

                if (v49 < 4)
                {
LABEL_108:
                  if (*&v313[32] == 4)
                  {
                    --v48;
                    if (v27 == 5)
                    {
                      goto LABEL_154;
                    }

                    if (v49 < 5)
                    {
LABEL_120:
                      if (v314 == 4)
                      {
                        --v48;
                        if (v27 == 6)
                        {
                          goto LABEL_154;
                        }

                        if (v49 < 6)
                        {
LABEL_132:
                          if (v315 == 4)
                          {
                            --v48;
                            if (v27 == 7)
                            {
                              goto LABEL_154;
                            }

                            if (v49 < 7)
                            {
                              goto LABEL_144;
                            }

                            v93 = v27 - 7;
                            if (v27 - 7 >= 4)
                            {
                              v95 = v93 & 0xFFFFFFFFFFFFFFFCLL;
                              v96 = &v318;
                              v97 = v93 & 0xFFFFFFFFFFFFFFFCLL;
                              do
                              {
                                v98 = *v96;
                                *(v96 - 24) = *(v96 - 1);
                                *(v96 - 8) = v98;
                                v96 += 2;
                                v97 -= 4;
                              }

                              while (v97);
                              if (v93 == v95)
                              {
LABEL_144:
                                if (v316 != 4)
                                {
                                  goto LABEL_154;
                                }

                                --v48;
                                if (v49 < 8)
                                {
                                  goto LABEL_154;
                                }

                                v101 = v27 - 8;
                                if (v27 - 8 >= 4)
                                {
                                  v103 = v101 & 0xFFFFFFFFFFFFFFFCLL;
                                  v104 = &v319;
                                  v105 = v101 & 0xFFFFFFFFFFFFFFFCLL;
                                  do
                                  {
                                    v106 = *v104;
                                    *(v104 - 24) = *(v104 - 1);
                                    *(v104 - 8) = v106;
                                    v104 += 2;
                                    v105 -= 4;
                                  }

                                  while (v105);
                                  if (v101 == v103)
                                  {
                                    goto LABEL_154;
                                  }

                                  v102 = v103 + 7;
                                }

                                else
                                {
                                  v102 = 7;
                                }

                                v107 = &v313[8 * v102 + 8];
                                v108 = ~v102 + v27;
                                do
                                {
                                  *(v107 - 1) = *v107;
                                  ++v107;
                                  --v108;
                                }

                                while (v108);
LABEL_154:
                                v32 = 0;
                                BYTE4(v319) = 0;
                                goto LABEL_155;
                              }

                              v94 = v95 + 6;
                            }

                            else
                            {
                              v94 = 6;
                            }

                            v99 = &v313[8 * v94 + 8];
                            v100 = ~v94 + v27;
                            do
                            {
                              *(v99 - 1) = *v99;
                              ++v99;
                              --v100;
                            }

                            while (v100);
                          }

                          if (v27 == 7)
                          {
                            goto LABEL_154;
                          }

                          goto LABEL_144;
                        }

                        v85 = v27 - 6;
                        if (v27 - 6 >= 4)
                        {
                          v87 = v85 & 0xFFFFFFFFFFFFFFFCLL;
                          v88 = &v317;
                          v89 = v85 & 0xFFFFFFFFFFFFFFFCLL;
                          do
                          {
                            v90 = *v88;
                            *(v88 - 24) = *(v88 - 1);
                            *(v88 - 8) = v90;
                            v88 += 2;
                            v89 -= 4;
                          }

                          while (v89);
                          if (v85 == v87)
                          {
                            goto LABEL_132;
                          }

                          v86 = v87 + 5;
                        }

                        else
                        {
                          v86 = 5;
                        }

                        v91 = &v313[8 * v86 + 8];
                        v92 = ~v86 + v27;
                        do
                        {
                          *(v91 - 1) = *v91;
                          ++v91;
                          --v92;
                        }

                        while (v92);
                      }

                      if (v27 == 6)
                      {
                        goto LABEL_154;
                      }

                      goto LABEL_132;
                    }

                    v77 = v27 - 5;
                    if (v27 - 5 >= 4)
                    {
                      v79 = v77 & 0xFFFFFFFFFFFFFFFCLL;
                      v80 = v77 & 0xFFFFFFFFFFFFFFFCLL;
                      v81 = &v316;
                      do
                      {
                        v82 = *v81;
                        *(v81 - 24) = *(v81 - 1);
                        *(v81 - 8) = v82;
                        v81 += 2;
                        v80 -= 4;
                      }

                      while (v80);
                      if (v77 == v79)
                      {
                        goto LABEL_120;
                      }

                      v78 = v79 + 4;
                    }

                    else
                    {
                      v78 = 4;
                    }

                    v83 = &v313[8 * v78 + 8];
                    v84 = ~v78 + v27;
                    do
                    {
                      *(v83 - 1) = *v83;
                      ++v83;
                      --v84;
                    }

                    while (v84);
                  }

                  if (v27 == 5)
                  {
                    goto LABEL_154;
                  }

                  goto LABEL_120;
                }

                v70 = v27 - 4;
                if (v27 - 4 >= 4)
                {
                  v72 = &v315;
                  v73 = v70 & 0xFFFFFFFFFFFFFFFCLL;
                  do
                  {
                    v74 = *v72;
                    *(v72 - 24) = *(v72 - 1);
                    *(v72 - 8) = v74;
                    v72 += 2;
                    v73 -= 4;
                  }

                  while (v73);
                  if (v70 == (v70 & 0xFFFFFFFFFFFFFFFCLL))
                  {
                    goto LABEL_108;
                  }

                  v71 = v70 | 3;
                }

                else
                {
                  v71 = 3;
                }

                v75 = &v313[8 * v71 + 8];
                v76 = ~v71 + v27;
                do
                {
                  *(v75 - 1) = *v75;
                  ++v75;
                  --v76;
                }

                while (v76);
              }

              if (v27 == 4)
              {
                goto LABEL_154;
              }

              goto LABEL_108;
            }

            v56 = v27 - 3;
            if (v27 - 3 >= 4)
            {
              v64 = v56 & 0xFFFFFFFFFFFFFFFCLL;
              v65 = &v313[24];
              v66 = v56 & 0xFFFFFFFFFFFFFFFCLL;
              do
              {
                v67 = v65[1];
                *(v65 - 8) = *v65;
                *(v65 + 8) = v67;
                v65 += 2;
                v66 -= 4;
              }

              while (v66);
              if (v56 == v64)
              {
                goto LABEL_96;
              }

              v57 = v64 | 2;
            }

            else
            {
              v57 = 2;
            }

            v68 = &v313[8 * v57 + 8];
            v69 = ~v57 + v27;
            do
            {
              *(v68 - 1) = *v68;
              ++v68;
              --v69;
            }

            while (v69);
          }

          if (v27 == 3)
          {
            goto LABEL_154;
          }

          goto LABEL_96;
        }

        if (v27 == 1)
        {
LABEL_64:
          v48 = 0;
          goto LABEL_154;
        }

        if (v27 >= 5)
        {
          *v313 = *&v313[8];
          *&v313[16] = *&v313[24];
          v50 = v49 & 0xFFFFFFFFFFFFFFFCLL;
          if (v49 == (v49 & 0xFFFFFFFFFFFFFFFCLL))
          {
LABEL_70:
            v51 = v27 - 1;
            goto LABEL_71;
          }
        }

        else
        {
          v50 = 0;
        }

        v52 = &v313[8 * v50 + 8];
        v53 = ~v50 + v27;
        do
        {
          *(v52 - 1) = *v52;
          ++v52;
          --v53;
        }

        while (v53);
        goto LABEL_70;
      }

LABEL_155:
      v312 = v17;
      v311 = v17;
      v310 = 2143289344;
      v309 = v17;
      v308 = v17;
      v307 = 2143289344;
      v305 = v17;
      v306 = v17;
      v303 = v17;
      v304 = v17;
      if (v27)
      {
        if (*v313 == 4 && v47)
        {
          v110 = 0;
          v111 = &v295;
          v112 = &v296;
          v113 = &v297;
          v114 = &v298;
          if (v27 == 1)
          {
            goto LABEL_204;
          }
        }

        else
        {
          v115 = &v268[64 * *v313 + 8 * !a10[v18]];
          v116 = v115[2];
          v295 = *v115;
          v296 = v116;
          v117 = v115[4];
          v118 = v115[6];
          v297 = v117;
          v298 = v118;
          v112 = &v300;
          v111 = &v299;
          v113 = &v301;
          v114 = &v302;
          v110 = 1;
          if (v27 == 1)
          {
            goto LABEL_204;
          }
        }

        if (*&v313[8] != 4 || !v47)
        {
          v120 = &v268[64 * *&v313[8] + 8 * !a10[v18]];
          *v111 = *v120;
          *v112 = v120[2];
          *v113 = v120[4];
          *v114 = v120[6];
          ++v110;
        }

        if (v27 != 2)
        {
          if (*&v313[16] != 4 || !v47)
          {
            v122 = &v268[64 * *&v313[16] + 8 * !a10[v18]];
            v123 = &v295 + 4 * v110;
            v124 = v122[2];
            *v123 = *v122;
            v123[1] = v124;
            v125 = v122[4];
            v126 = v122[6];
            v123[2] = v125;
            v123[3] = v126;
            ++v110;
          }

          if (v27 != 3)
          {
            if (*&v313[24] != 4 || !v47)
            {
              v128 = &v268[64 * *&v313[24] + 8 * !a10[v18]];
              v129 = &v295 + 4 * v110;
              v130 = v128[2];
              *v129 = *v128;
              v129[1] = v130;
              v131 = v128[4];
              v132 = v128[6];
              v129[2] = v131;
              v129[3] = v132;
              ++v110;
            }

            if (v27 != 4)
            {
              if (*&v313[32] != 4 || !v47)
              {
                v134 = &v268[64 * *&v313[32] + 8 * !a10[v18]];
                v135 = &v295 + 4 * v110;
                v136 = v134[2];
                *v135 = *v134;
                v135[1] = v136;
                v137 = v134[4];
                v138 = v134[6];
                v135[2] = v137;
                v135[3] = v138;
                ++v110;
              }

              if (v27 != 5)
              {
                if (v314 != 4 || !v47)
                {
                  v140 = &v268[64 * v314 + 8 * !a10[v18]];
                  v141 = &v295 + 4 * v110;
                  v142 = v140[2];
                  *v141 = *v140;
                  v141[1] = v142;
                  v143 = v140[4];
                  v144 = v140[6];
                  v141[2] = v143;
                  v141[3] = v144;
                  ++v110;
                }

                if (v27 != 6)
                {
                  if (v315 != 4 || !v47)
                  {
                    v146 = &v268[64 * v315 + 8 * !a10[v18]];
                    v147 = &v295 + 4 * v110;
                    v148 = v146[2];
                    *v147 = *v146;
                    v147[1] = v148;
                    v149 = v146[4];
                    v150 = v146[6];
                    v147[2] = v149;
                    v147[3] = v150;
                    ++v110;
                  }

                  if (v27 != 7 && (v316 != 4 || !v47))
                  {
                    v152 = &v268[64 * v316 + 8 * !a10[v18]];
                    v153 = &v295 + 4 * v110;
                    v154 = v152[2];
                    *v153 = *v152;
                    v153[1] = v154;
                    v155 = v152[4];
                    v156 = v152[6];
                    v153[2] = v155;
                    v153[3] = v156;
                  }
                }
              }
            }
          }
        }
      }

LABEL_204:
      if (v33 > v24 && *(&v320 + v18) == 1)
      {
        v157 = v27 + 1;
        v158 = &v295;
        v159 = v313;
        do
        {
          v160 = *v159++;
          if (v160 == 5)
          {
            *v158 = xmmword_2247A5F00;
            *(v158 + 1) = unk_2247A5F10;
          }

          v158 += 4;
          --v157;
        }

        while (v157);
      }

      v161 = *v22;
      v162 = v11;
      if (v11 == 2)
      {
        v163 = vabds_f32(v161, *v21);
        v164 = vabds_f32(v161, v21[22]);
        v165 = v163 <= v164 ? v163 : v164;
        if (v165 >= *(this + 2034) || (v162 = v163 > v164, v21[22 * v162 + 1] <= 0.0))
        {
          v22[3] = 0.0;
          goto LABEL_5;
        }
      }

      v273 = v32;
      v274 = v47;
      v275 = v28;
      v276 = v35;
      v277 = v34;
      v278 = v33;
      v279 = v30;
      v280 = v29;
      v166 = &v21[22 * v162];
      v168 = v166[8];
      v167 = v166[9];
      v169 = a5[v18];
      v170 = a5[v18 + 14];
      v171 = *(this + 8 * v18 + v272 + 994);
      v172 = *(this + 1112);
      v173 = 1.0;
      if (v161 < v172)
      {
        v293 = *(this + 1111);
        v294 = v172;
        v291 = *(this + 1113);
        v292 = 1.0;
        v282 = v161;
        v288 = 0x200000001;
        v289 = 0;
        v290 = 8;
        v286 = &unk_28380A0A8;
        v287 = &v293;
        *&v284 = 0x200000001;
        BYTE8(v284) = 0;
        v285 = 8;
        *&v283 = &unk_28380A0A8;
        *(&v283 + 1) = &v291;
        v174 = 0;
        do
        {
          _ZF = *(&v293 + v174) > v161 || v174 == 4;
          v174 += 4;
        }

        while (!_ZF);
        v173 = (((v161 - v293) * (v292 - v291)) / (v294 - v293)) + v291;
        *&v283 = &unk_283809D60;
        if (*(&v283 + 1) && BYTE8(v284) == 1)
        {
          MEMORY[0x22AA53170]();
        }

        v286 = &unk_283809D60;
        if (v287 && v289 == 1)
        {
          MEMORY[0x22AA53170]();
        }
      }

      peridot::PFactorCalculator::calculatePFactor(this, 84.0 - v168, v167, v169, v170, sqrtf((*(this + 1114) * *(this + 1114)) + ((v173 * v171) * (v173 * v171))), &v295, v48, &v286);
      v176 = 0;
      v177 = 0;
      v17 = 0uLL;
      v283 = 0u;
      v284 = 0u;
      do
      {
        if (*(&v319 + v176) == 1)
        {
          v180 = &v295 + 4 * v177;
          if ((v176 - 7) < 0xFFFFFFFFFFFFFFFELL)
          {
            v181 = -1;
          }

          else
          {
            v181 = -3;
          }

          v182 = v180[1];
          v183 = *v180 + v181;
          v184 = v180[3];
          v185 = v180[2] + v183 - 1;
          if (v185 >= 3)
          {
            v185 = 3;
          }

          v186 = v184 + v182 - 1 - 1;
          if (v186 >= 2)
          {
            v187 = 2;
          }

          else
          {
            v187 = v186;
          }

          v188 = 0.0;
          if (v183 > v185)
          {
            v178 = 0.0;
          }

          else
          {
            if ((v176 - 7) >= 0xFFFFFFFFFFFFFFFELL)
            {
              v189 = 6776;
            }

            else
            {
              v189 = 6104;
            }

            v178 = 0.0;
            if (v182 - 1 <= v187)
            {
              v190 = v187 - v182;
              v191 = v190 + 2;
              if (v190 + 2 > 7)
              {
                v195 = v191 & 0xFFFFFFFFFFFFFFF8;
                __asm { FMOV            V0.4S, #1.0 }

                if (v191 == (v191 & 0xFFFFFFFFFFFFFFF8))
                {
                  v200 = v189 + 12 * v183 + 4 * v182;
                  v178 = 0.0;
                  v188 = 0.0;
                  do
                  {
                    v201 = 0uLL;
                    v202 = LODWORD(v178);
                    v203 = LODWORD(v188);
                    v204 = v200;
                    v205 = v190 + 2;
                    v206 = 0uLL;
                    do
                    {
                      v203 = vaddq_f32(*&v19[v204], v203);
                      v206 = vaddq_f32(*&v20[v204], v206);
                      v202 = vaddq_f32(v202, _Q0);
                      v201 = vaddq_f32(v201, _Q0);
                      v204 += 32;
                      v205 -= 8;
                    }

                    while (v205);
                    v207 = vaddq_f32(v201, v202);
                    v178 = vaddv_f32(*&vpaddq_f32(v207, v207));
                    v208 = vaddq_f32(v206, v203);
                    v188 = vaddv_f32(*&vpaddq_f32(v208, v208));
                    v200 += 12;
                    _ZF = v183++ == v185;
                  }

                  while (!_ZF);
                }

                else
                {
                  v209 = v189 + 12 * v183 + 4 * v182;
                  v210 = &v19[v209];
                  v211 = &v20[v209];
                  v212 = v190 - v195 + 2;
                  v213 = v209 + 32 * (v191 >> 3);
                  v178 = 0.0;
                  v188 = 0.0;
                  do
                  {
                    v214 = 0uLL;
                    v215 = LODWORD(v178);
                    v216 = LODWORD(v188);
                    v217 = v211;
                    v218 = v210;
                    v219 = v195;
                    v220 = 0uLL;
                    do
                    {
                      v221 = *v218;
                      v218 += 2;
                      v222 = v221;
                      v223 = *v217;
                      v217 += 2;
                      v216 = vaddq_f32(v222, v216);
                      v220 = vaddq_f32(v223, v220);
                      v215 = vaddq_f32(v215, _Q0);
                      v214 = vaddq_f32(v214, _Q0);
                      v219 -= 8;
                    }

                    while (v219);
                    v224 = vaddq_f32(v214, v215);
                    v178 = vaddv_f32(*&vpaddq_f32(v224, v224));
                    v225 = vaddq_f32(v220, v216);
                    v188 = vaddv_f32(*&vpaddq_f32(v225, v225));
                    v226 = v213;
                    v227 = v212;
                    do
                    {
                      v188 = *&v19[v226] + v188;
                      v178 = v178 + 1.0;
                      v226 += 4;
                      --v227;
                    }

                    while (v227);
                    v210 += 12;
                    v211 += 12;
                    v213 += 12;
                    _ZF = v183++ == v185;
                  }

                  while (!_ZF);
                }
              }

              else
              {
                v192 = v189 + 12 * v183 + 4 * v182;
                v178 = 0.0;
                v188 = 0.0;
                do
                {
                  v193 = v192;
                  v194 = v190 + 2;
                  do
                  {
                    v188 = *&v19[v193] + v188;
                    v178 = v178 + 1.0;
                    v193 += 4;
                    --v194;
                  }

                  while (v194);
                  v192 += 12;
                  _ZF = v183++ == v185;
                }

                while (!_ZF);
              }
            }
          }

          v179 = v188 / v178;
          if (v178 <= 0.0)
          {
            v179 = 0.0;
          }

          *(&v283 + v177++) = v179;
        }

        ++v176;
      }

      while (v176 != 8);
      if (v25 <= v24)
      {
        v230 = 0;
        v229 = &v286;
        v228 = &v283;
      }

      else
      {
        LODWORD(v305) = v286;
        LODWORD(v303) = v283;
        v229 = (&v286 + 4);
        v228 = &v283 + 1;
        v230 = 1;
      }

      result = v313;
      v231 = 0;
      if (v275 <= v24)
      {
        v232 = 0;
        if (v280 <= v24)
        {
          goto LABEL_280;
        }

        goto LABEL_279;
      }

      v232 = *v229;
      DWORD1(v305) = *v229;
      v231 = *v228;
      DWORD1(v303) = *v228;
      ++v230;
      if (v280 > v24)
      {
LABEL_279:
        DWORD2(v305) = *(&v286 + v230);
        DWORD2(v303) = *(&v283 | (4 * v230++));
      }

LABEL_280:
      if (v279 <= v24)
      {
        if (!v273)
        {
LABEL_282:
          if (v278 > v24)
          {
            goto LABEL_283;
          }

          goto LABEL_289;
        }
      }

      else
      {
        HIDWORD(v305) = *(&v286 + v230);
        HIDWORD(v303) = *(&v283 + v230++);
        if (!v273)
        {
          goto LABEL_282;
        }
      }

      LODWORD(v306) = *(&v286 + v230);
      LODWORD(v304) = *(&v283 + v230++);
      if (v278 > v24)
      {
LABEL_283:
        DWORD1(v306) = *(&v286 + v230);
        DWORD1(v304) = *(&v283 + v230++);
        if (v277 <= v24)
        {
          goto LABEL_284;
        }

        goto LABEL_290;
      }

LABEL_289:
      if (v277 <= v24)
      {
LABEL_284:
        if (v274)
        {
          goto LABEL_285;
        }

LABEL_291:
        if (!v48)
        {
          v236 = 0.0;
          a3 = v269;
          v11 = v281;
          goto LABEL_347;
        }

        goto LABEL_302;
      }

LABEL_290:
      DWORD2(v306) = *(&v286 + v230);
      DWORD2(v304) = *(&v283 + v230);
      if (!v274)
      {
        goto LABEL_291;
      }

LABEL_285:
      LODWORD(v306) = v232;
      LODWORD(v304) = v231;
      BYTE4(v319) = 1;
      if (v25 <= v24)
      {
        v233 = v313;
        v234 = &v313[8];
        v235 = 1;
      }

      else
      {
        *v313 = 0;
        v233 = &v313[8];
        v234 = &v313[16];
        v235 = 2;
      }

      *v233 = 1;
      if (v280 > v24)
      {
        *v234 = 2;
        ++v235;
      }

      if (v279 > v24)
      {
        *&v313[8 * v235++] = 3;
      }

      *&v313[8 * v235] = 4;
      v48 = v235 + 1;
      if (v278 <= v24)
      {
        if (v277 <= v24)
        {
LABEL_300:
          if (v276 <= v24)
          {
            goto LABEL_302;
          }

          goto LABEL_301;
        }
      }

      else
      {
        *&v313[8 * v48] = 5;
        v48 = v235 + 2;
        if (v277 <= v24)
        {
          goto LABEL_300;
        }
      }

      *&v313[8 * v48++] = 6;
      if (v276 > v24)
      {
LABEL_301:
        *&v313[8 * v48++] = 7;
      }

LABEL_302:
      v237 = *(this + 8104);
      if (!*&v237)
      {
LABEL_352:
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      v238 = 0;
      v239 = vcnt_s8(v237);
      v239.i16[0] = vaddlv_u8(v239);
      v240 = v239.u32[0];
      v241 = *&v237 - 1;
      v242 = a2 + 192 * v18;
      v243 = *(this + 1012);
      while (2)
      {
        v244 = *&v313[8 * v238];
        if (v240 > 1)
        {
          v245 = *&v313[8 * v238];
          if (*&v237 <= v244)
          {
            v245 = v244 % *&v237;
          }
        }

        else
        {
          v245 = v241 & v244;
        }

        v246 = *(v243 + 8 * v245);
        if (!v246)
        {
          goto LABEL_352;
        }

        v247 = *v246;
        if (!*v246)
        {
          goto LABEL_352;
        }

        v248 = *(&v305 + v244);
        if (v240 < 2)
        {
          while (1)
          {
            v249 = v247[1];
            if (v249 == v244)
            {
              if (v247[2] == v244)
              {
                goto LABEL_318;
              }
            }

            else if ((v249 & v241) != v245)
            {
              goto LABEL_352;
            }

            v247 = *v247;
            if (!v247)
            {
              goto LABEL_352;
            }
          }
        }

        while (1)
        {
          v254 = v247[1];
          if (v254 == v244)
          {
            break;
          }

          if (v254 >= *&v237)
          {
            v254 %= *&v237;
          }

          if (v254 != v245)
          {
            goto LABEL_352;
          }

LABEL_324:
          v247 = *v247;
          if (!v247)
          {
            goto LABEL_352;
          }
        }

        if (v247[2] != v244)
        {
          goto LABEL_324;
        }

LABEL_318:
        v250 = *(v247 + 6);
        v251 = 0.0;
        if (v250 <= 1)
        {
          v252 = (a2 + 192 * v18);
          if (v250)
          {
            v252 = v242 + 64;
            v253 = 0.0;
            if (v250 != 1)
            {
              goto LABEL_333;
            }
          }

LABEL_332:
          v255 = *v252 + 80 * (*a4)[v18][v281][v244];
          v253 = *(v255 + 12) * *(this + v244 + 1003);
          v251 = *(v255 + 16) * 149852322.0;
          goto LABEL_333;
        }

        v252 = v242 + 32;
        if (v250 == 2)
        {
          goto LABEL_332;
        }

        v252 = v242 + 96;
        if (v250 == 3)
        {
          goto LABEL_332;
        }

        v253 = 0.0;
        if (v250 == 4)
        {
          v252 = v242 + 128;
          goto LABEL_332;
        }

LABEL_333:
        if (v244 - 5 >= 2)
        {
          v256 = (this + 32 * v18 + 4 * v272 + 4916);
        }

        else
        {
          v256 = (this + 32 * v18 + 4 * v272 + 5364);
        }

        v257 = *v256;
        if (*(this + 1107) > v248 && (v253 < *(this + 1109) || *(this + 1108) > v248))
        {
          *(&v307 + v238) = 2143289344;
          *(&v310 + v238) = 2143289344;
        }

        else
        {
          v258 = *(this + 8 * v18 + v272 + 1115);
          v259 = v253 / *(&v303 + v244);
          *(&v310 + v238) = v259;
          v260 = (((v251 * v251) * v258) * v259) / (v257 * v248);
          *(&v307 + v238) = v260;
          if (a9[v244])
          {
            *(&v307 + v238) = v260 * v16;
          }
        }

        if (++v238 != v48)
        {
          continue;
        }

        break;
      }

      v261 = 0;
      a3 = v269;
      v11 = v281;
      result = v313;
      do
      {
        ++v261;
      }

      while (v48 != v261);
      v262 = 0.0;
      v263 = &v310;
      v264 = &v307;
      v265 = 0.0;
      do
      {
        v262 = v262 + (*v263 * *v264);
        v265 = *v263++ + v265;
        ++v264;
        --v48;
      }

      while (v48);
      v236 = 0.0;
      if (v265 != 0.0)
      {
        v236 = v262 / v265;
      }

LABEL_347:
      v22[3] = v236;
LABEL_5:
      ++v18;
      v19 += 48;
      v20 += 48;
      if (v18 != 14)
      {
        continue;
      }

      break;
    }

    if (++v11 != 3)
    {
      continue;
    }

    return result;
  }
}

uint64_t MatrixNxPts<1u,float>::~MatrixNxPts(uint64_t result)
{
  *result = &unk_283809D60;
  v1 = *(result + 8);
  if (v1 && *(result + 24) == 1)
  {
    v2 = result;
    MEMORY[0x22AA53170](v1, 0x1000C8052888210);
    result = v2;
    *(v2 + 8) = 0;
    *(v2 + 32) = 0;
    *(v2 + 24) = 0;
  }

  *(result + 16) = 0;
  return result;
}

void MatrixNxPts<1u,float>::~MatrixNxPts(uint64_t a1)
{
  *a1 = &unk_283809D60;
  v2 = *(a1 + 8);
  if (v2 && *(a1 + 24) == 1)
  {
    v3 = a1;
    MEMORY[0x22AA53170](v2, 0x1000C8052888210);
    a1 = v3;
    *(v3 + 8) = 0;
    *(v3 + 32) = 0;
    *(v3 + 24) = 0;
  }

  *(a1 + 16) = 0;

  JUMPOUT(0x22AA531A0);
}

unint64_t peridot::Reflectivity::calcChannelPde(peridot::Reflectivity *this, unsigned __int8 a2, uint64_t a3, const unint64_t *a4, unint64_t a5, const BOOL *a6, float *a7)
{
  v7 = 0;
  v8 = 0;
  v9 = this + 48 * a3;
  v10 = v9 + 12;
  v11 = v9 - 4;
  __asm { FMOV            V2.4S, #1.0 }

  do
  {
    result = a6[v7];
    if (result == 1)
    {
      v21 = &a4[4 * v8];
      if ((v7 - 7) < 0xFFFFFFFFFFFFFFFELL)
      {
        v22 = -1;
      }

      else
      {
        v22 = -3;
      }

      v23 = v21[1];
      result = *v21 + v22;
      v24 = v21[3];
      v25 = v21[2] + result - 1;
      if (v25 >= 3)
      {
        v25 = 3;
      }

      v26 = v24 + v23 - 1 - 1;
      if (v26 >= 2)
      {
        v26 = 2;
      }

      v27 = 0.0;
      if (result > v25)
      {
        v17 = 0.0;
      }

      else
      {
        if ((v7 - 7) >= 0xFFFFFFFFFFFFFFFELL)
        {
          v28 = 6776;
        }

        else
        {
          v28 = 6104;
        }

        v17 = 0.0;
        if (v23 - 1 <= v26)
        {
          v29 = v26 - v23;
          v30 = v26 - v23 + 2;
          if (v30 > 7)
          {
            v35 = v30 & 0xFFFFFFFFFFFFFFF8;
            if (v30 == (v30 & 0xFFFFFFFFFFFFFFF8))
            {
              v36 = &v10[12 * result + 4 * v23 + v28];
              v17 = 0.0;
              v27 = 0.0;
              do
              {
                v37 = 0uLL;
                v38 = LODWORD(v17);
                v39 = LODWORD(v27);
                v40 = v36;
                v41 = v30;
                v42 = 0uLL;
                do
                {
                  v39 = vaddq_f32(v40[-1], v39);
                  v42 = vaddq_f32(*v40, v42);
                  v38 = vaddq_f32(v38, _Q2);
                  v37 = vaddq_f32(v37, _Q2);
                  v40 += 2;
                  v41 -= 8;
                }

                while (v41);
                v43 = vaddq_f32(v37, v38);
                v17 = vaddv_f32(*&vpaddq_f32(v43, v43));
                v44 = vaddq_f32(v42, v39);
                v27 = vaddv_f32(*&vpaddq_f32(v44, v44));
                v36 = (v36 + 12);
                _ZF = result++ == v25;
              }

              while (!_ZF);
            }

            else
            {
              v45 = v28 + 12 * result + 4 * v23;
              v46 = &v10[v45];
              v47 = v29 - v35 + 2;
              v48 = &v11[32 * (v30 >> 3) + v45];
              v17 = 0.0;
              v27 = 0.0;
              do
              {
                v49 = 0uLL;
                v50 = LODWORD(v17);
                v51 = LODWORD(v27);
                v52 = v46;
                v53 = v35;
                v54 = 0uLL;
                do
                {
                  v51 = vaddq_f32(v52[-1], v51);
                  v54 = vaddq_f32(*v52, v54);
                  v50 = vaddq_f32(v50, _Q2);
                  v49 = vaddq_f32(v49, _Q2);
                  v52 += 2;
                  v53 -= 8;
                }

                while (v53);
                v55 = vaddq_f32(v49, v50);
                v17 = vaddv_f32(*&vpaddq_f32(v55, v55));
                v56 = vaddq_f32(v54, v51);
                v27 = vaddv_f32(*&vpaddq_f32(v56, v56));
                v57 = v48;
                v58 = v47;
                do
                {
                  v59 = *v57++;
                  v27 = v59 + v27;
                  v17 = v17 + 1.0;
                  --v58;
                }

                while (v58);
                v46 = (v46 + 12);
                v48 += 3;
                _ZF = result++ == v25;
              }

              while (!_ZF);
            }
          }

          else
          {
            v31 = &v11[12 * result + 4 * v23 + v28];
            v17 = 0.0;
            v27 = 0.0;
            do
            {
              v32 = v31;
              v33 = v30;
              do
              {
                v34 = *v32++;
                v27 = v34 + v27;
                v17 = v17 + 1.0;
                --v33;
              }

              while (v33);
              v31 += 3;
              _ZF = result++ == v25;
            }

            while (!_ZF);
          }
        }
      }

      v18 = v27 / v17;
      if (v17 <= 0.0)
      {
        v19 = 0.0;
      }

      else
      {
        v19 = v18;
      }

      a7[v8++] = v19;
    }

    ++v7;
  }

  while (v7 != 8);
  return result;
}

float peridot::Reflectivity::calcChannelReflectivity(int8x8_t *this, const peridot::PeridotDepth *a2, unsigned int a3, uint64_t a4, uint64_t a5, float result, unint64_t a7, float a8, float a9, const BOOL *a10, float *a11, float *a12)
{
  v12 = this[1013];
  if (!*&v12)
  {
    goto LABEL_43;
  }

  v13 = vcnt_s8(v12);
  v13.i16[0] = vaddlv_u8(v13);
  if (v13.u32[0] > 1uLL)
  {
    v14 = a7;
    if (*&v12 <= a7)
    {
      v14 = a7 % *&v12;
    }
  }

  else
  {
    v14 = (*&v12 - 1) & a7;
  }

  v15 = *(*&this[1012] + 8 * v14);
  if (!v15 || (v16 = *v15) == 0)
  {
LABEL_43:
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  if (v13.u32[0] < 2uLL)
  {
    v17 = *&v12 - 1;
    while (1)
    {
      v18 = v16[1];
      if (v18 == a7)
      {
        if (v16[2] == a7)
        {
          goto LABEL_14;
        }
      }

      else if ((v18 & v17) != v14)
      {
        goto LABEL_43;
      }

      v16 = *v16;
      if (!v16)
      {
        goto LABEL_43;
      }
    }
  }

  while (1)
  {
    v23 = v16[1];
    if (v23 == a7)
    {
      break;
    }

    if (v23 >= *&v12)
    {
      v23 %= *&v12;
    }

    if (v23 != v14)
    {
      goto LABEL_43;
    }

LABEL_20:
    v16 = *v16;
    if (!v16)
    {
      goto LABEL_43;
    }
  }

  if (v16[2] != a7)
  {
    goto LABEL_20;
  }

LABEL_14:
  v19 = *(v16 + 6);
  v20 = 0.0;
  if (v19 <= 1)
  {
    if (v19)
    {
      v21 = 0.0;
      if (v19 != 1)
      {
        goto LABEL_33;
      }

      v22 = a2 + 192 * a5 + 64;
    }

    else
    {
      v22 = a2 + 192 * a5;
    }

    goto LABEL_32;
  }

  if (v19 == 2)
  {
    v22 = a2 + 192 * a5 + 32;
LABEL_32:
    v24 = *v22 + 80 * a4;
    v21 = *(v24 + 12) * this[a7 + 1003];
    v20 = *(v24 + 16) * 149852322.0;
    goto LABEL_33;
  }

  if (v19 == 3)
  {
    v22 = a2 + 192 * a5 + 96;
    goto LABEL_32;
  }

  v21 = 0.0;
  if (v19 == 4)
  {
    v22 = a2 + 192 * a5 + 128;
    goto LABEL_32;
  }

LABEL_33:
  v25 = &this[4 * a5];
  v26 = v25 + 4 * a3;
  v27 = (v26 + 5364);
  v28 = (v26 + 4916);
  if (a7 - 5 >= 2)
  {
    v29 = v28;
  }

  else
  {
    v29 = v27;
  }

  v30 = *v29;
  if (*&this[553].i32[1] <= a8 || v21 >= *&this[554].i32[1] && *this[554].i32 <= a8)
  {
    v31 = *&v25[557].i32[a3 + 1];
    v32 = v21 / a9;
    *a12 = v32;
    v33 = (((v20 * v20) * v31) * v32) / (v30 * a8);
    *a11 = v33;
    if (a10[a7])
    {
      result = v33 / result;
      *a11 = result;
    }
  }

  else
  {
    *a11 = NAN;
    *a12 = NAN;
  }

  return result;
}

uint64_t peridot::Reflectivity::calcPDE(peridot::Reflectivity *this, const peridot::PeridotDXPCalib *a2, float a3, float a4)
{
  v4 = vdupq_lane_s64(__SPAIR64__(LODWORD(a4), LODWORD(a3)), 0);
  v5.i32[0] = vmovn_s32(vcgeq_f32(v4, xmmword_2247A45E0)).u32[0];
  v5.i32[1] = vmovn_s32(vcgtq_f32(xmmword_2247A45E0, v4)).i32[1];
  if (vmaxv_u16(v5))
  {
    peridot_depth_log("Wrong Temperature", a2);
    return 5;
  }

  else
  {
    v7 = 0;
    v8 = *(this + 1524) / *(this + vcvtas_u32_f32(*(this + 1525)) + 1453);
    v9 = v8 * *(this + vcvtas_u32_f32(a3) + 1453);
    v10 = v8 * *(this + vcvtas_u32_f32(a4) + 1453);
    v11 = (a2 + 41032);
    v12 = (this + 6104);
    do
    {
      v13 = v12;
      v14 = v11;
      v15 = 3;
      do
      {
        *v13 = v9 * *v14;
        v13[168] = v10 * v14[168];
        v13[12] = v9 * v14[12];
        v13[180] = v10 * v14[180];
        v13[24] = v9 * v14[24];
        v13[192] = v10 * v14[192];
        v13[36] = v9 * v14[36];
        v13[204] = v10 * v14[204];
        v13[48] = v9 * v14[48];
        v13[216] = v10 * v14[216];
        v13[60] = v9 * v14[60];
        v13[228] = v10 * v14[228];
        v13[72] = v9 * v14[72];
        v13[240] = v10 * v14[240];
        v13[84] = v9 * v14[84];
        v13[252] = v10 * v14[252];
        v13[96] = v9 * v14[96];
        v13[264] = v10 * v14[264];
        v13[108] = v9 * v14[108];
        v13[276] = v10 * v14[276];
        v13[120] = v9 * v14[120];
        v13[288] = v10 * v14[288];
        v13[132] = v9 * v14[132];
        v13[300] = v10 * v14[300];
        v13[144] = v9 * v14[144];
        v13[312] = v10 * v14[312];
        v13[156] = v9 * v14[156];
        v13[324] = v10 * v14[324];
        ++v14;
        ++v13;
        --v15;
      }

      while (v15);
      ++v7;
      v11 += 3;
      v12 += 3;
    }

    while (v7 != 4);
    return 0;
  }
}

void TimeSync::TimeSync(TimeSync *this)
{
  *&this->m_images.__map_.__end_ = 0u;
  *&this->m_images.__start_ = 0u;
  *&this->m_pointClouds.__start_ = 0u;
  *&this->m_images.__map_.__first_ = 0u;
  *&this->m_pointClouds.__map_.__first_ = 0u;
  *&this->m_pointClouds.__map_.__end_ = 0u;
  pthread_mutex_init(&this->m_lock, 0);
  this->m_numberOfBanksToMatch = 2;
}

{
  *&this->m_images.__map_.__end_ = 0u;
  *&this->m_images.__start_ = 0u;
  *&this->m_pointClouds.__start_ = 0u;
  *&this->m_images.__map_.__first_ = 0u;
  *&this->m_pointClouds.__map_.__first_ = 0u;
  *&this->m_pointClouds.__map_.__end_ = 0u;
  pthread_mutex_init(&this->m_lock, 0);
  this->m_numberOfBanksToMatch = 2;
}

void sub_2246974F4(_Unwind_Exception *a1)
{
  std::deque<TimeSync::TimestampedObject<TimeSync::Image>>::~deque[abi:ne200100](v1 + 48);
  std::deque<TimeSync::TimestampedObject<ADJasperPointCloud * {__strong}>>::~deque[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

uint64_t std::deque<TimeSync::TimestampedObject<TimeSync::Image>>::~deque[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 32;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 64;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::deque<TimeSync::TimestampedObject<ADJasperPointCloud * {__strong}>>::~deque[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 == v2)
  {
    v4 = (a1 + 40);
    v11 = *(a1 + 8);
  }

  else
  {
    v4 = (a1 + 40);
    v5 = *(a1 + 32);
    v6 = &v2[v5 / 0x49];
    v7 = (*v6 + 56 * v5 + -4088 * (v5 / 0x49));
    v8 = v2[(*(a1 + 40) + v5) / 0x49] + 56 * *(a1 + 40) + 56 * v5 + -4088 * ((*(a1 + 40) + v5) / 0x49);
    if (v7 != v8)
    {
      do
      {
        v9 = *v7;
        v7 += 7;

        if (v7 - *v6 == 4088)
        {
          v10 = v6[1];
          ++v6;
          v7 = v10;
        }
      }

      while (v7 != v8);
      v2 = *(a1 + 8);
      v3 = *(a1 + 16);
    }

    v11 = v3;
  }

  *v4 = 0;
  v12 = v11 - v2;
  if (v12 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v12 = v3 - v2;
    }

    while (v12 > 2);
  }

  if (v12 == 1)
  {
    v13 = 36;
    goto LABEL_16;
  }

  if (v12 == 2)
  {
    v13 = 73;
LABEL_16:
    *(a1 + 32) = v13;
  }

  if (v2 != v3)
  {
    do
    {
      v14 = *v2++;
      operator delete(v14);
    }

    while (v2 != v3);
    v16 = *(a1 + 8);
    v15 = *(a1 + 16);
    if (v15 != v16)
    {
      *(a1 + 16) = v15 + ((v16 - v15 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_2246977A0(_Unwind_Exception *a1)
{
  std::deque<TimeSync::TimestampedObject<TimeSync::Image>>::~deque[abi:ne200100](v1 + 48);
  std::deque<TimeSync::TimestampedObject<ADJasperPointCloud * {__strong}>>::~deque[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void TimeSync::~TimeSync(TimeSync *this)
{
  begin = this->m_images.__map_.__begin_;
  end = this->m_images.__map_.__end_;
  v4 = &begin[this->m_images.__start_ >> 6];
  if (end == begin)
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4 + 64 * (this->m_images.__start_ & 0x3F);
  }

  while (1)
  {
    v6 = end - begin;
    if (!v6)
    {
      break;
    }

    v7 = this->m_images.__size_ + this->m_images.__start_;
    if (v5 == *(begin + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 64 * (v7 & 0x3F))
    {
      goto LABEL_11;
    }

LABEL_9:
    CVPixelBufferRelease(*v5);
    CFRelease(*(v5 + 8));
    v5 += 64;
    if (v5 - *v4 == 4096)
    {
      v8 = v4[1];
      ++v4;
      v5 = v8;
    }

    begin = this->m_images.__map_.__begin_;
    end = this->m_images.__map_.__end_;
  }

  if (v5)
  {
    goto LABEL_9;
  }

LABEL_11:
  this->m_images.__size_ = 0;
  v9 = v6 >> 3;
  if (v9 >= 3)
  {
    do
    {
      operator delete(*begin);
      v10 = this->m_images.__map_.__end_;
      begin = this->m_images.__map_.__begin_ + 1;
      this->m_images.__map_.__begin_ = begin;
      v9 = v10 - begin;
    }

    while (v9 > 2);
  }

  if (v9 == 1)
  {
    v11 = 32;
LABEL_17:
    this->m_images.__start_ = v11;
  }

  else if (v9 == 2)
  {
    v11 = 64;
    goto LABEL_17;
  }

  pthread_mutex_destroy(&this->m_lock);
  std::deque<TimeSync::TimestampedObject<TimeSync::Image>>::~deque[abi:ne200100](&this->m_images);
  v12 = this->m_pointClouds.__map_.__begin_;
  v13 = this->m_pointClouds.__map_.__end_;
  if (v13 == v12)
  {
    p_size = &this->m_pointClouds.__size_;
    v13 = this->m_pointClouds.__map_.__begin_;
  }

  else
  {
    p_size = &this->m_pointClouds.__size_;
    start = this->m_pointClouds.__start_;
    v16 = &v12[start / 0x49];
    v17 = (*v16 + 56 * start + -4088 * (start / 0x49));
    v18 = v12[(this->m_pointClouds.__size_ + start) / 0x49] + 56 * this->m_pointClouds.__size_ + 56 * start + -4088 * ((this->m_pointClouds.__size_ + start) / 0x49);
    if (v17 != v18)
    {
      do
      {
        v19 = *v17;
        v17 += 7;

        if (v17 - *v16 == 4088)
        {
          v20 = v16[1];
          ++v16;
          v17 = v20;
        }
      }

      while (v17 != v18);
      v12 = this->m_pointClouds.__map_.__begin_;
      v13 = this->m_pointClouds.__map_.__end_;
    }
  }

  *p_size = 0;
  v21 = v13 - v12;
  if (v21 >= 3)
  {
    do
    {
      operator delete(*v12);
      v13 = this->m_pointClouds.__map_.__end_;
      v12 = this->m_pointClouds.__map_.__begin_ + 1;
      this->m_pointClouds.__map_.__begin_ = v12;
      v21 = v13 - v12;
    }

    while (v21 > 2);
  }

  if (v21 == 1)
  {
    v22 = 36;
LABEL_32:
    this->m_pointClouds.__start_ = v22;
  }

  else if (v21 == 2)
  {
    v22 = 73;
    goto LABEL_32;
  }

  if (v12 != v13)
  {
    do
    {
      v23 = *v12++;
      operator delete(v23);
    }

    while (v12 != v13);
    v25 = this->m_pointClouds.__map_.__begin_;
    v24 = this->m_pointClouds.__map_.__end_;
    if (v24 != v25)
    {
      this->m_pointClouds.__map_.__end_ = (v24 + ((v25 - v24 + 7) & 0xFFFFFFFFFFFFFFF8));
    }
  }

  if (this->m_pointClouds.__map_.__first_)
  {
    operator delete(this->m_pointClouds.__map_.__first_);
  }
}

TimeSync *TimeSync::setNumberOfBanksToMatch(TimeSync *this, int a2)
{
  v5 = *MEMORY[0x277D85DE8];
  if ((a2 - 5) <= 0xFFFFFFFB)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v4 = a2;
      _os_log_error_impl(&dword_224668000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "ERROR: Bad configuration for timesync: does not know how to match %d banks per image", buf, 8u);
    }

    __assert_rtn("setNumberOfBanksToMatch", "TimeSync.mm", 55, "false");
  }

  this->m_numberOfBanksToMatch = a2;
  return this;
}

void TimeSync::pushPeridotPointCloud(TimeSync *this, ADJasperPointCloud *a2, CMTime *a3, PushResults *a4)
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = a2;
  *&lhs[12] = 0;
  *&lhs[4] = 0;
  *&a4->var0 = 0u;
  *&a4->var2.var0 = 0u;
  *&a4->var2.var2 = 0u;
  v8 = a4->var4[0];
  a4->var4[0] = 0;

  v9 = a4->var4[1];
  a4->var4[1] = 0;

  a4->var6 = 0;
  *&a4->var5[0].var3 = 0u;
  *&a4->var5[1].var1 = 0u;
  *&a4->var5[0].var0 = 0u;
  *(&a4->var6 + 1) = *lhs;
  HIDWORD(a4->var7[1]) = *&lhs[16];
  *&a4->var8[0].var0 = 0u;
  *&a4->var8[0].var3 = 0u;
  *&a4->var8[1].var1 = 0u;
  if (v7)
  {
    memset(&v28, 0, sizeof(v28));
    CMTimeMakeWithSeconds(&v28, 0.004, 1000000000);
    memset(&v27, 0, sizeof(v27));
    *lhs = *&a3->value;
    *&lhs[16] = a3->epoch;
    rhs = v28;
    CMTimeSubtract(&v27, lhs, &rhs);
    pthread_mutex_lock(&this->m_lock);
    size = this->m_pointClouds.__size_;
    if (size)
    {
      *lhs = v27;
      v11 = this->m_pointClouds.__map_.__begin_[(size + this->m_pointClouds.__start_ - 1) / 0x49] + 56 * ((size + this->m_pointClouds.__start_ - 1) % 0x49);
      v12 = *(v11 + 6);
      *&rhs.value = *(v11 + 2);
      rhs.epoch = v12;
      if (CMTimeCompare(lhs, &rhs) < 0)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *lhs = 0;
          _os_log_impl(&dword_224668000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Peridot TimeSync: got a point cloud which is older than the ones in the queue. Dropping it...", lhs, 2u);
        }

        goto LABEL_28;
      }

      if (this->m_pointClouds.__size_ >= 8)
      {

        v13 = vaddq_s64(*&this->m_pointClouds.__start_, xmmword_2247A45F0);
        *&this->m_pointClouds.__start_ = v13;
        if (v13.i64[0] >= 0x92uLL)
        {
          operator delete(*this->m_pointClouds.__map_.__begin_);
          ++this->m_pointClouds.__map_.__begin_;
          this->m_pointClouds.__start_ -= 73;
        }
      }
    }

    v14 = v7;
    end = this->m_pointClouds.__map_.__end_;
    begin = this->m_pointClouds.__map_.__begin_;
    *lhs = *&a3->value;
    *&lhs[16] = a3->epoch;
    *&lhs[24] = v27;
    if (end == begin)
    {
      v17 = 0;
    }

    else
    {
      v17 = 73 * (end - begin) - 1;
    }

    start = this->m_pointClouds.__start_;
    v19 = this->m_pointClouds.__size_ + start;
    if (v17 == v19)
    {
      v25 = v14;
      if (start < 0x49)
      {
        cap = this->m_pointClouds.__map_.__cap_;
        v21 = cap - this->m_pointClouds.__map_.__first_;
        if (end - begin < v21)
        {
          if (cap != end)
          {
            operator new();
          }

          operator new();
        }

        v22 = v21 >> 2;
        if (cap == this->m_pointClouds.__map_.__first_)
        {
          v23 = 1;
        }

        else
        {
          v23 = v22;
        }

        if (!(v23 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      this->m_pointClouds.__start_ = start - 73;
      rhs.value = *begin;
      this->m_pointClouds.__map_.__begin_ = begin + 1;
      std::__split_buffer<TimeSync::TimestampedObject<ADJasperPointCloud * {__strong}> *,std::allocator<TimeSync::TimestampedObject<ADJasperPointCloud * {__strong}> *>>::emplace_back<TimeSync::TimestampedObject<ADJasperPointCloud * {__strong}> *&>(this, &rhs);
      begin = this->m_pointClouds.__map_.__begin_;
      v19 = this->m_pointClouds.__size_ + this->m_pointClouds.__start_;
      v14 = v25;
    }

    v24 = begin[v19 / 0x49] + 56 * v19 + -4088 * (v19 / 0x49);
    *v24 = v14;
    *(v24 + 8) = *lhs;
    *(v24 + 24) = *&lhs[16];
    *(v24 + 40) = *&lhs[32];
    ++this->m_pointClouds.__size_;
      ;
    }

LABEL_28:
    pthread_mutex_unlock(&this->m_lock);
    goto LABEL_29;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *lhs = 0;
    _os_log_error_impl(&dword_224668000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Peridot TimeSync: got null point cloud", lhs, 2u);
  }

LABEL_29:
}

void sub_224698450(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  operator delete(v13);
  operator delete(v12);

  pthread_mutex_unlock((v11 + 96));
  _Unwind_Resume(a1);
}

uint64_t TimeSync::checkForSyncOnce(TimeSync *this, PushResults *a2)
{
  if (!this->m_images.__size_)
  {
    return 0;
  }

  if (!this->m_pointClouds.__size_)
  {
    return 0;
  }

  v3 = *(this->m_images.__map_.__begin_ + ((this->m_images.__start_ >> 3) & 0x1FFFFFFFFFFFFFF8)) + 64 * (this->m_images.__start_ & 0x3F);
  v4 = *(v3 + 40);
  time.epoch = *(v3 + 7);
  *&time.value = v4;
  Seconds = CMTimeGetSeconds(&time);
  m_numberOfBanksToMatch = this->m_numberOfBanksToMatch;
  if (this->m_pointClouds.__size_ < m_numberOfBanksToMatch)
  {
    return 0;
  }

  v8 = Seconds;
  v9 = (m_numberOfBanksToMatch + 1) / 2;
  v10 = 2 * v9;
  v11 = (2 * v9 - 1);
  v83 = v9;
  v12 = this->m_pointClouds.__start_ + (v11 - v9);
  v13 = this->m_pointClouds.__map_.__begin_[v12 / 0x49] + 56 * (v12 % 0x49);
  v14 = *(v13 + 6);
  *&time.value = *(v13 + 2);
  time.epoch = v14;
  v15 = CMTimeGetSeconds(&time);
  v16 = this->m_pointClouds.__map_.__begin_[(this->m_pointClouds.__start_ + v11) / 0x49] + 56 * ((this->m_pointClouds.__start_ + v11) % 0x49);
  v17 = *(v16 + 6);
  *&time.value = *(v16 + 2);
  time.epoch = v17;
  v18 = CMTimeGetSeconds(&time);
  if (v15 <= v8 || (v18 = vabdd_f64(v18, v8), v18 <= 0.135))
  {
    if (this->m_pointClouds.__size_ > v11)
    {
      v80 = v3;
      v84 = m_numberOfBanksToMatch;
      v85 = 0;
      v25 = 0;
      v26 = 0;
      v27 = v83 - 1;
      v28 = 135.0;
      do
      {
        if (v84 != 4 || (v34 = 1 << *[*(this->m_pointClouds.__map_.__begin_[(this->m_pointClouds.__start_ + v25) / 0x49] + 7 * this->m_pointClouds.__start_ + 7 * v25 + -511 * ((this->m_pointClouds.__start_ + v25) / 0x49)) bankIds], v33 = v25 + 1, v35 = (1 << *objc_msgSend(*(this->m_pointClouds.__map_.__begin_[(this->m_pointClouds.__start_ + v33) / 0x49] + 7 * this->m_pointClouds.__start_ + 7 * v33 + -511 * ((this->m_pointClouds.__start_ + v33) / 0x49)), "bankIds")) | v34, v36 = this->m_pointClouds.__start_ + v25 + 2, v37 = 1 << *objc_msgSend(*(this->m_pointClouds.__map_.__begin_[v36 / 0x49] + 7 * v36 + -511 * (v36 / 0x49)), "bankIds"), v38 = this->m_pointClouds.__start_ + v25 + 3, (v35 | v37 | (1 << *objc_msgSend(*(this->m_pointClouds.__map_.__begin_[v38 / 0x49] + 7 * v38 + -511 * (v38 / 0x49)), "bankIds"))) == 0xF))
        {
          v82 = v25 + v83;
          v39 = this->m_pointClouds.__map_.__begin_[(this->m_pointClouds.__start_ + v82) / 0x49] + 56 * ((this->m_pointClouds.__start_ + v82) % 0x49);
          v40 = *(v39 + 6);
          *&time.value = *(v39 + 2);
          time.epoch = v40;
          v41 = CMTimeGetSeconds(&time);
          v42 = this->m_pointClouds.__map_.__begin_[(this->m_pointClouds.__start_ + v27) / 0x49] + 56 * ((this->m_pointClouds.__start_ + v27) % 0x49);
          v43 = *(v42 + 6);
          *&time.value = *(v42 + 2);
          time.epoch = v43;
          v44 = CMTimeGetSeconds(&time);
          v45 = this->m_pointClouds.__map_.__begin_[(this->m_pointClouds.__start_ + v25) / 0x49] + 56 * ((this->m_pointClouds.__start_ + v25) % 0x49);
          v46 = *(v45 + 6);
          v47 = *(v45 + 2);
          v48 = HIDWORD(v85);
          if (v44 < v8)
          {
            v48 = v25;
          }

          HIDWORD(v85) = v48;
          *&time.value = v47;
          time.epoch = v46;
          v49 = CMTimeGetSeconds(&time);
          v50 = this->m_pointClouds.__map_.__begin_[(this->m_pointClouds.__start_ + v11) / 0x49] + 56 * ((this->m_pointClouds.__start_ + v11) % 0x49);
          v51 = *(v50 + 6);
          *&time.value = *(v50 + 2);
          time.epoch = v51;
          v52 = CMTimeGetSeconds(&time);
          v53 = v52 - v49;
          v54 = vabdd_f64(v49, v8);
          v55 = vabdd_f64(v52, v8);
          v56 = v54 < 0.135;
          if (v55 >= 0.135)
          {
            v56 = 0;
          }

          if (v41 > v8 && v44 < v8 && v56 && v53 < 0.155)
          {
            if (v84)
            {
              v60 = this->m_pointClouds.__map_.__begin_[(this->m_pointClouds.__start_ + v27) / 0x49] + 56 * ((this->m_pointClouds.__start_ + v27) % 0x49);
              v61 = *(v60 + 6);
              *&time.value = *(v60 + 2);
              time.epoch = v61;
              v62 = CMTimeGetSeconds(&time);
              v63 = this->m_pointClouds.__map_.__begin_[(this->m_pointClouds.__start_ + v82) / 0x49] + 56 * ((this->m_pointClouds.__start_ + v82) % 0x49);
              v64 = *(v63 + 6);
              *&time.value = *(v63 + 2);
              time.epoch = v64;
              v65 = CMTimeGetSeconds(&time);
              v58 = v80;
              v66 = *(v80 + 40);
              time.epoch = *(v80 + 7);
              *&time.value = v66;
              v67 = CMTimeGetSeconds(&time);
              if (v65 - v67 >= v67 - v62)
              {
                v26 = v25;
              }

              else
              {
                v26 = v25 + 1;
              }

              v57 = a2;
            }

            else
            {
              v26 = v25;
              v58 = v80;
              v57 = a2;
            }

            v59 = HIDWORD(v85);
            goto LABEL_41;
          }

          v29 = v53 < 0.155 && v56;
          if (v54 >= v28)
          {
            v29 = 0;
          }

          v30 = v55 < v28;
          v18 = fmax(v54, v55);
          v31 = (v29 & v30) == 0;
          if ((v29 & v30) != 0)
          {
            v26 = v25;
            v28 = v18;
          }

          v32 = v85;
          if (!v31)
          {
            v32 = 1;
          }

          LODWORD(v85) = v32;
          LODWORD(v33) = v25 + 1;
        }

        v11 = v10++;
        ++v27;
        v25 = v33;
      }

      while (this->m_pointClouds.__size_ > v11);
      v58 = v80;
      v57 = a2;
      v59 = HIDWORD(v85);
      if (!v85)
      {
        goto LABEL_46;
      }

LABEL_41:
      *&v57->var0 = *v58;
      v68 = *(v58 + 1);
      v57->var2.var3 = *(v58 + 4);
      *&v57->var2.var0 = v68;
      v69 = v84;
      v57->var3 = v84;
      if (v84 >= 1)
      {
        var4 = v57->var4;
        var5 = v57->var5;
        do
        {
          objc_storeStrong(var4, *(this->m_pointClouds.__map_.__begin_[(this->m_pointClouds.__start_ + v26) / 0x49] + 7 * this->m_pointClouds.__start_ + 7 * v26 + -511 * ((this->m_pointClouds.__start_ + v26) / 0x49)));
          v72 = this->m_pointClouds.__map_.__begin_[(this->m_pointClouds.__start_ + v26) / 0x49] + 56 * ((this->m_pointClouds.__start_ + v26) % 0x49);
          v73 = *(v72 + 8);
          var5->var3 = *(v72 + 3);
          *&var5->var0 = v73;
          ++var5;
          ++var4;
          ++v26;
          --v69;
        }

        while (v69);
      }

      begin = this->m_images.__map_.__begin_;
      v75 = vaddq_s64(*&this->m_images.__start_, xmmword_2247A45F0);
      *&this->m_images.__start_ = v75;
      if (v75.i64[0] >= 0x80uLL)
      {
        operator delete(*begin);
        ++this->m_images.__map_.__begin_;
        this->m_images.__start_ -= 64;
      }

LABEL_46:
      if (v59)
      {
        start = this->m_pointClouds.__start_;
        while (1)
        {
          v77 = this->m_pointClouds.__map_.__begin_[start / 0x49] + 56 * (start % 0x49);
          v78 = *(v77 + 6);
          *&time.value = *(v77 + 2);
          time.epoch = v78;
          if (vabdd_f64(CMTimeGetSeconds(&time), v8) <= 0.135)
          {
            break;
          }

          v79 = vaddq_s64(*&this->m_pointClouds.__start_, xmmword_2247A45F0);
          *&this->m_pointClouds.__start_ = v79;
          start = v79.i64[0];
          if (v79.i64[0] >= 0x92uLL)
          {
            operator delete(*this->m_pointClouds.__map_.__begin_);
            ++this->m_pointClouds.__map_.__begin_;
            start = this->m_pointClouds.__start_ - 73;
            this->m_pointClouds.__start_ = start;
          }

          result = 0;
          if (!--v59)
          {
            return result;
          }
        }
      }
    }

    return 0;
  }

  v19 = (*(this->m_images.__map_.__begin_ + ((this->m_images.__start_ >> 3) & 0x1FFFFFFFFFFFFFF8)) + 64 * (this->m_images.__start_ & 0x3F));
  a2->var7[a2->var6] = *v19;
  CFRelease(v19[1]);
  v20 = *(this->m_images.__map_.__begin_ + ((this->m_images.__start_ >> 3) & 0x1FFFFFFFFFFFFFF8)) + 64 * (this->m_images.__start_ & 0x3F);
  v21 = a2 + 24 * a2->var6;
  v22 = *(v20 + 1);
  *(v21 + 19) = *(v20 + 4);
  *(v21 + 136) = v22;
  ++a2->var6;
  v23 = this->m_images.__map_.__begin_;
  v24 = vaddq_s64(*&this->m_images.__start_, xmmword_2247A45F0);
  *&this->m_images.__start_ = v24;
  if (v24.i64[0] >= 0x80uLL)
  {
    operator delete(*v23);
    ++this->m_images.__map_.__begin_;
    this->m_images.__start_ -= 64;
  }

  return 1;
}

void *std::__split_buffer<TimeSync::TimestampedObject<ADJasperPointCloud * {__strong}> *,std::allocator<TimeSync::TimestampedObject<ADJasperPointCloud * {__strong}> *>>::emplace_back<TimeSync::TimestampedObject<ADJasperPointCloud * {__strong}> *&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      v11 = &v4[-*result] >> 2;
      if (v4 == *result)
      {
        v11 = 1;
      }

      if (!(v11 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v7 = ((v6 >> 3) + 1) / 2;
    v8 = ((v6 >> 3) + 1) / -2;
    v9 = &v5[-8 * v7];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v7], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v8];
  }

  *v4 = *a2;
  v3[2] = v4 + 8;
  return result;
}

uint64_t TimeSync::checkForSync(TimeSync *this, PushResults *a2)
{
  do
  {
    result = TimeSync::checkForSyncOnce(this, a2);
  }

  while ((result & 1) != 0);
  return result;
}

void TimeSync::pushImage(TimeSync *this, __CVBuffer *a2, const __CFDictionary *a3, CMTime *a4, PushResults *a5)
{
  v44 = *MEMORY[0x277D85DE8];
  *&buf.flags = 0;
  *(&buf.value + 4) = 0;
  *&a5->var0 = 0u;
  *&a5->var2.var0 = 0u;
  *&a5->var2.var2 = 0u;
  v10 = a5->var4[0];
  a5->var4[0] = 0;

  v11 = a5->var4[1];
  a5->var4[1] = 0;

  *&a5->var8[0].var0 = 0u;
  var8 = a5->var8;
  a5->var6 = 0;
  *&a5->var5[1].var1 = 0u;
  *&a5->var5[0].var3 = 0u;
  *&a5->var5[0].var0 = 0u;
  *(&a5->var6 + 1) = *&buf.value;
  HIDWORD(a5->var7[1]) = buf.epoch;
  *&a5->var8[0].var3 = 0u;
  *&a5->var8[1].var1 = 0u;
  if (a2 && a3)
  {
    CVPixelBufferRetain(a2);
    CFRetain(a3);
    valuePtr = 0;
    v40 = 0.0;
    Value = CFDictionaryGetValue(a3, *MEMORY[0x277CF50D0]);
    if (Value)
    {
      CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      LOWORD(buf.value) = 0;
      _os_log_impl(&dword_224668000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Peridot TimeSync: RollingShutterSkew not in metadata", &buf, 2u);
    }

    v14 = CFDictionaryGetValue(a3, *MEMORY[0x277CF4C58]);
    if (v14)
    {
      CFNumberGetValue(v14, kCFNumberFloat64Type, &v40);
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      LOWORD(buf.value) = 0;
      _os_log_impl(&dword_224668000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Peridot TimeSync: ExposureTime not in metadata", &buf, 2u);
    }

    memset(&buf, 0, sizeof(buf));
    lhs = *a4;
    CMTimeMakeWithSeconds(&rhs, valuePtr * 0.0000005, 1000000000);
    CMTimeAdd(&buf, &lhs, &rhs);
    rhs = buf;
    CMTimeMakeWithSeconds(&v38, v40 * 0.5, 1000000000);
    CMTimeSubtract(&lhs, &rhs, &v38);
    buf = lhs;
    pthread_mutex_lock(&this->m_lock);
    size = this->m_images.__size_;
    if (size)
    {
      lhs = buf;
      v16 = *(this->m_images.__map_.__begin_ + (((size + this->m_images.__start_ - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) + 64 * ((size + this->m_images.__start_ - 1) & 0x3F);
      v17 = *(v16 + 7);
      *&rhs.value = *(v16 + 40);
      rhs.epoch = v17;
      if (CMTimeCompare(&lhs, &rhs) < 0)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          LOWORD(lhs.value) = 0;
          _os_log_impl(&dword_224668000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Peridot TimeSync: got a frame which is older than the ones in the queue. Dropping it...", &lhs, 2u);
        }

        a5->var7[a5->var6] = a2;
        CFRelease(a3);
        v24 = &var8[a5->var6];
        v25 = *&a4->value;
        v24->var3 = a4->epoch;
        *&v24->var0 = v25;
        ++a5->var6;
        goto LABEL_41;
      }

      size = this->m_images.__size_;
      if (size >= 2)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          v34 = *(this->m_images.__map_.__begin_ + ((this->m_images.__start_ >> 3) & 0x1FFFFFFFFFFFFFF8)) + 64 * (this->m_images.__start_ & 0x3F);
          v35 = *(v34 + 7);
          *&lhs.value = *(v34 + 40);
          lhs.epoch = v35;
          Seconds = CMTimeGetSeconds(&lhs);
          LODWORD(rhs.value) = 134217984;
          *(&rhs.value + 4) = Seconds;
          _os_log_debug_impl(&dword_224668000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Peridot TimeSync: discarded unpaired old image (%f)", &rhs, 0xCu);
        }

        v18 = (*(this->m_images.__map_.__begin_ + ((this->m_images.__start_ >> 3) & 0x1FFFFFFFFFFFFFF8)) + 64 * (this->m_images.__start_ & 0x3F));
        a5->var7[a5->var6] = *v18;
        CFRelease(v18[1]);
        v19 = *(this->m_images.__map_.__begin_ + ((this->m_images.__start_ >> 3) & 0x1FFFFFFFFFFFFFF8)) + 64 * (this->m_images.__start_ & 0x3F);
        v20 = &var8[a5->var6];
        v21 = *(v19 + 1);
        v20->var3 = *(v19 + 4);
        *&v20->var0 = v21;
        ++a5->var6;
        begin = this->m_images.__map_.__begin_;
        v23 = vaddq_s64(*&this->m_images.__start_, xmmword_2247A45F0);
        *&this->m_images.__start_ = v23;
        if (v23.i64[0] >= 0x80uLL)
        {
          operator delete(*begin);
          ++this->m_images.__map_.__begin_;
          size = this->m_images.__size_;
          this->m_images.__start_ -= 64;
        }

        else
        {
          size = v23.u64[1];
        }
      }
    }

    end = this->m_images.__map_.__end_;
    v27 = this->m_images.__map_.__begin_;
    lhs = *a4;
    rhs = buf;
    if (end == v27)
    {
      v28 = 0;
    }

    else
    {
      v28 = 8 * (end - v27) - 1;
    }

    start = this->m_images.__start_;
    v30 = size + start;
    if (v28 == v30)
    {
      if (start < 0x40)
      {
        cap = this->m_images.__map_.__cap_;
        first = this->m_images.__map_.__first_;
        if (end - v27 < (cap - first))
        {
          if (cap != end)
          {
            operator new();
          }

          operator new();
        }

        if (cap == first)
        {
          v33 = 1;
        }

        else
        {
          v33 = (cap - first) >> 2;
        }

        if (!(v33 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      this->m_images.__start_ = start - 64;
      v38.value = *v27;
      this->m_images.__map_.__begin_ = v27 + 1;
      std::__split_buffer<TimeSync::TimestampedObject<ADJasperPointCloud * {__strong}> *,std::allocator<TimeSync::TimestampedObject<ADJasperPointCloud * {__strong}> *>>::emplace_back<TimeSync::TimestampedObject<ADJasperPointCloud * {__strong}> *&>(&this->m_images.__map_.__first_, &v38);
      v27 = this->m_images.__map_.__begin_;
      v30 = this->m_images.__size_ + this->m_images.__start_;
    }

    v37 = *(v27 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 64 * (v30 & 0x3F);
    *v37 = a2;
    *(v37 + 1) = a3;
    *(v37 + 16) = lhs;
    *(v37 + 40) = rhs;
    ++this->m_images.__size_;
      ;
    }

LABEL_41:
    pthread_mutex_unlock(&this->m_lock);
    return;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf.value) = 0;
    _os_log_error_impl(&dword_224668000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Peridot TimeSync: got null image or metadata", &buf, 2u);
  }
}

void sub_224699A2C(_Unwind_Exception *a1)
{
  operator delete(v3);
  operator delete(v2);
  pthread_mutex_unlock((v1 + 96));
  _Unwind_Resume(a1);
}

uint64_t TimeSync::purgeAllImages(TimeSync *this, PushResults *a2)
{
  *&a2->var0 = 0u;
  *&a2->var2.var0 = 0u;
  *&a2->var2.var2 = 0u;
  v4 = a2->var4[0];
  a2->var4[0] = 0;

  v5 = a2->var4[1];
  a2->var4[1] = 0;

  *&a2->var8[0].var0 = 0u;
  a2->var6 = 0;
  *&a2->var5[1].var1 = 0u;
  *&a2->var5[0].var3 = 0u;
  *&a2->var5[0].var0 = 0u;
  *(&a2->var6 + 1) = v16;
  HIDWORD(a2->var7[1]) = 0;
  *&a2->var8[0].var3 = 0u;
  *&a2->var8[1].var1 = 0u;
  pthread_mutex_lock(&this->m_lock);
  if (this->m_images.__size_)
  {
    begin = this->m_images.__map_.__begin_;
    start = this->m_images.__start_;
    do
    {
      while (1)
      {
        v9 = *(begin + ((start >> 3) & 0x1FFFFFFFFFFFFFF8)) + 64 * (start & 0x3F);
        v10 = *(v9 + 1);
        a2->var7[a2->var6] = *v9;
        CFRelease(v10);
        v11 = *(this->m_images.__map_.__begin_ + ((this->m_images.__start_ >> 3) & 0x1FFFFFFFFFFFFFF8)) + 64 * (this->m_images.__start_ & 0x3F);
        v12 = &a2->var8[a2->var6];
        v13 = *(v11 + 1);
        v12->var3 = *(v11 + 4);
        *&v12->var0 = v13;
        ++a2->var6;
        begin = this->m_images.__map_.__begin_;
        v14 = vaddq_s64(*&this->m_images.__start_, xmmword_2247A45F0);
        *&this->m_images.__start_ = v14;
        start = v14.i64[0];
        if (v14.i64[0] < 0x80uLL)
        {
          break;
        }

        operator delete(*begin);
        begin = this->m_images.__map_.__begin_ + 1;
        this->m_images.__map_.__begin_ = begin;
        size = this->m_images.__size_;
        start = this->m_images.__start_ - 64;
        this->m_images.__start_ = start;
        if (!size)
        {
          return pthread_mutex_unlock(&this->m_lock);
        }
      }
    }

    while (v14.i64[1]);
  }

  return pthread_mutex_unlock(&this->m_lock);
}

void sub_224699C40(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_224699E3C(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_22469A24C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_22469AA78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22469B12C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = PDTimestampedImage;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_22469B39C(_Unwind_Exception *a1)
{
  std::deque<TimeSync::TimestampedObject<TimeSync::Image>>::~deque[abi:ne200100](v1 + 56);
  std::deque<TimeSync::TimestampedObject<ADJasperPointCloud * {__strong}>>::~deque[abi:ne200100](v2);
  _Unwind_Resume(a1);
}

void peridot::CalibManager::getCalibClassNames(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  v5 = 9;
  a1[1] = v2;
  v6 = "jlin";
  do
  {
    v8 = strlen(v6);
    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v9 = v8;
    if (v8 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v20) = v8;
    if (v8)
    {
      memcpy(&__dst, v6, v8);
    }

    *(&__dst + v9) = 0;
    v10 = a1[1];
    v11 = a1[2];
    if (v10 < v11)
    {
      *v10 = __dst;
      v10[2] = v20;
      v20 = 0;
      __dst = 0uLL;
      v7 = (v10 + 3);
    }

    else
    {
      v12 = *a1;
      v13 = v10 - *a1;
      v14 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 3) + 1;
      if (v14 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v15 = 0xAAAAAAAAAAAAAAABLL * (v11 - v12);
      if (2 * v15 > v14)
      {
        v14 = 2 * v15;
      }

      if (v15 >= 0x555555555555555)
      {
        v16 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v16 = v14;
      }

      if (v16)
      {
        if (v16 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v17 = 8 * (v13 >> 3);
      *v17 = __dst;
      *(v17 + 16) = v20;
      v20 = 0;
      __dst = 0uLL;
      v7 = v17 + 24;
      v18 = v17 - v13;
      memcpy((v17 - v13), v12, v13);
      *a1 = v18;
      a1[1] = v7;
      a1[2] = 0;
      if (v12)
      {
        operator delete(v12);
      }
    }

    a1[1] = v7;
    v6 += 256;
    --v5;
  }

  while (v5);
}

void sub_22469BE9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double copyJLNM_refData<jlnm_v100>(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 4100);
  *(a2 + 346204) = result;
  *(a2 + 346212) = *(a1 + 4108);
  *(a2 + 346216) = *(a1 + 4068);
  *(a2 + 346217) = *(a1 + 4069);
  *(a2 + 346218) = *(a1 + 4070);
  *(a2 + 346219) = *(a1 + 4071);
  *(a2 + 346220) = *(a1 + 4072);
  *(a2 + 346221) = *(a1 + 4073);
  *(a2 + 346222) = *(a1 + 4074);
  *(a2 + 346223) = *(a1 + 4075);
  *(a2 + 346224) = *(a1 + 4076);
  *(a2 + 346225) = *(a1 + 4077);
  *(a2 + 346226) = *(a1 + 4078);
  *(a2 + 346227) = *(a1 + 4079);
  *(a2 + 346228) = *(a1 + 4080);
  *(a2 + 346229) = *(a1 + 4081);
  *(a2 + 346230) = *(a1 + 4082);
  *(a2 + 346231) = *(a1 + 4083);
  *(a2 + 346232) = *(a1 + 4084);
  *(a2 + 346233) = *(a1 + 4085);
  *(a2 + 346234) = *(a1 + 4086);
  *(a2 + 346235) = *(a1 + 4087);
  *(a2 + 346236) = *(a1 + 4088);
  *(a2 + 346237) = *(a1 + 4089);
  *(a2 + 346238) = *(a1 + 4090);
  *(a2 + 346239) = *(a1 + 4091);
  *(a2 + 346240) = *(a1 + 4092);
  *(a2 + 346241) = *(a1 + 4093);
  *(a2 + 346242) = *(a1 + 4094);
  *(a2 + 346243) = *(a1 + 4095);
  *(a2 + 346244) = *(a1 + 4096);
  *(a2 + 346245) = *(a1 + 4097);
  *(a2 + 346246) = *(a1 + 4098);
  *(a2 + 346247) = *(a1 + 4099);
  return result;
}

double copyJLNM_refData<jlnm_v101>(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 3652);
  *(a2 + 346204) = result;
  *(a2 + 346212) = *(a1 + 3660);
  *(a2 + 346216) = *(a1 + 3620);
  *(a2 + 346217) = *(a1 + 3621);
  *(a2 + 346218) = *(a1 + 3622);
  *(a2 + 346219) = *(a1 + 3623);
  *(a2 + 346220) = *(a1 + 3624);
  *(a2 + 346221) = *(a1 + 3625);
  *(a2 + 346222) = *(a1 + 3626);
  *(a2 + 346223) = *(a1 + 3627);
  *(a2 + 346224) = *(a1 + 3628);
  *(a2 + 346225) = *(a1 + 3629);
  *(a2 + 346226) = *(a1 + 3630);
  *(a2 + 346227) = *(a1 + 3631);
  *(a2 + 346228) = *(a1 + 3632);
  *(a2 + 346229) = *(a1 + 3633);
  *(a2 + 346230) = *(a1 + 3634);
  *(a2 + 346231) = *(a1 + 3635);
  *(a2 + 346232) = *(a1 + 3636);
  *(a2 + 346233) = *(a1 + 3637);
  *(a2 + 346234) = *(a1 + 3638);
  *(a2 + 346235) = *(a1 + 3639);
  *(a2 + 346236) = *(a1 + 3640);
  *(a2 + 346237) = *(a1 + 3641);
  *(a2 + 346238) = *(a1 + 3642);
  *(a2 + 346239) = *(a1 + 3643);
  *(a2 + 346240) = *(a1 + 3644);
  *(a2 + 346241) = *(a1 + 3645);
  *(a2 + 346242) = *(a1 + 3646);
  *(a2 + 346243) = *(a1 + 3647);
  *(a2 + 346244) = *(a1 + 3648);
  *(a2 + 346245) = *(a1 + 3649);
  *(a2 + 346246) = *(a1 + 3650);
  *(a2 + 346247) = *(a1 + 3651);
  return result;
}

double copyJLNM_refData<jlnm_v102>(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 2784);
  *(a2 + 346204) = result;
  *(a2 + 346212) = *(a1 + 2792);
  *(a2 + 346216) = *(a1 + 2752);
  *(a2 + 346217) = *(a1 + 2753);
  *(a2 + 346218) = *(a1 + 2754);
  *(a2 + 346219) = *(a1 + 2755);
  *(a2 + 346220) = *(a1 + 2756);
  *(a2 + 346221) = *(a1 + 2757);
  *(a2 + 346222) = *(a1 + 2758);
  *(a2 + 346223) = *(a1 + 2759);
  *(a2 + 346224) = *(a1 + 2760);
  *(a2 + 346225) = *(a1 + 2761);
  *(a2 + 346226) = *(a1 + 2762);
  *(a2 + 346227) = *(a1 + 2763);
  *(a2 + 346228) = *(a1 + 2764);
  *(a2 + 346229) = *(a1 + 2765);
  *(a2 + 346230) = *(a1 + 2766);
  *(a2 + 346231) = *(a1 + 2767);
  *(a2 + 346232) = *(a1 + 2768);
  *(a2 + 346233) = *(a1 + 2769);
  *(a2 + 346234) = *(a1 + 2770);
  *(a2 + 346235) = *(a1 + 2771);
  *(a2 + 346236) = *(a1 + 2772);
  *(a2 + 346237) = *(a1 + 2773);
  *(a2 + 346238) = *(a1 + 2774);
  *(a2 + 346239) = *(a1 + 2775);
  *(a2 + 346240) = *(a1 + 2776);
  *(a2 + 346241) = *(a1 + 2777);
  *(a2 + 346242) = *(a1 + 2778);
  *(a2 + 346243) = *(a1 + 2779);
  *(a2 + 346244) = *(a1 + 2780);
  *(a2 + 346245) = *(a1 + 2781);
  *(a2 + 346246) = *(a1 + 2782);
  *(a2 + 346247) = *(a1 + 2783);
  return result;
}

uint64_t peridot::CalibManager::blobsFromNVM(peridot::CalibManager *this, const __CFData *a2, const __CFData *a3, const char *a4, float a5)
{
  v5 = MEMORY[0x28223BE20](this, a2, a3, a5);
  v7 = v6;
  v9 = v8;
  v10 = v5;
  v40[4209] = *MEMORY[0x277D85DE8];
  v11 = objc_opt_new();
  if (nvmToFDR(v10, v9, v7, v12))
  {
    v30 = 0;
    v13 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v11 options:1 error:&v30];
    v14 = v30;
    v29 = v14;
    if (v13)
    {
      v31[0] = @"jlnl";
      v28 = [MEMORY[0x277CBEA90] dataWithBytes:v33 length:104];
      v32[0] = v28;
      v31[1] = @"jlpq";
      v15 = [MEMORY[0x277CBEA90] dataWithBytes:&v34 length:9124];
      v32[1] = v15;
      v31[2] = @"jlps";
      v16 = [MEMORY[0x277CBEA90] dataWithBytes:&v35 length:12628];
      v32[2] = v16;
      v31[3] = @"jlnm";
      v17 = [MEMORY[0x277CBEA90] dataWithBytes:&v36 length:75388];
      v32[3] = v17;
      v31[4] = @"jlsk";
      v18 = [MEMORY[0x277CBEA90] dataWithBytes:&v37 length:18080];
      v32[4] = v18;
      v31[5] = @"jlin";
      v19 = [MEMORY[0x277CBEA90] dataWithBytes:&v38 length:4172];
      v32[5] = v19;
      v31[6] = @"jlex";
      v20 = [MEMORY[0x277CBEA90] dataWithBytes:&v39 length:116];
      v32[6] = v20;
      v31[7] = @"jlnv";
      v21 = [MEMORY[0x277CBEA90] dataWithBytes:v40 length:33672];
      v31[8] = @"foms";
      v32[7] = v21;
      v32[8] = v13;
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:9];

      v23 = 0;
    }

    else
    {
      v24 = MEMORY[0x277CCACA8];
      v25 = [v14 localizedDescription];
      v23 = [v24 stringWithFormat:@"Error converting NSDictionary to JSON: %@", v25];

      v26 = v23;
      peridot_depth_log_error([v23 UTF8String]);
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

peridot::CalibManager *peridot::CalibManager::fillPeridotCalib(peridot::CalibManager *this, const __CFData *a2, const __CFData *a3, char *a4, _PeridotCalib *a5, float a6)
{
  result = peridot::CalibManager::blobsFromNVM(this, a2, a3, a4, a6);
  if (result)
  {

    return peridot::CalibManager::fillPeridotCalib(result, a4, v8);
  }

  return result;
}

uint64_t peridot::CalibManager::fillPeridotCalib(peridot::CalibManager *this, _PeridotCalib *a2, _PeridotCalib *a3)
{
  result = 0;
  if (this && a2)
  {
    v6 = *MEMORY[0x277CBECE8];
    v7 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], "JasperLCalib", 0x8000100u);
    Value = CFDictionaryGetValue(this, v7);
    CFRelease(v7);
    if (Value)
    {
      BytePtr = CFDataGetBytePtr(Value);
      Length = CFDataGetLength(Value);

      return readPeridotCalibFromBuffer(BytePtr, Length, a2);
    }

    else
    {
      __p = 0;
      v25 = 0;
      v26 = 0;
      peridot::CalibManager::getCalibClassNames(&__p);
      v23[0] = 0;
      v23[1] = 0;
      v22 = v23;
      for (i = __p; ; i += 24)
      {
        v12 = v25;
        if (i == v25)
        {
          break;
        }

        v13 = i;
        if (i[23] < 0)
        {
          v13 = *i;
        }

        v14 = CFStringCreateWithCString(v6, v13, 0x8000100u);
        v15 = CFDictionaryGetValue(this, v14);
        CFRelease(v14);
        if (v15)
        {
          v16 = CFDataGetBytePtr(v15);
          v17 = CFDataGetLength(v15);
          v27 = i;
          v18 = std::__tree<std::__value_type<std::string,peridot::DataBuffer>,std::__map_value_compare<std::string,std::__value_type<std::string,peridot::DataBuffer>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,peridot::DataBuffer>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v22, i);
          v18[7] = v16;
          v18[8] = v17;
        }
      }

      v19 = peridot::CalibManager::fillPeridotCalib(&v22, a2);
      std::__tree<std::__value_type<std::string,peridot::DataBuffer>,std::__map_value_compare<std::string,std::__value_type<std::string,peridot::DataBuffer>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,peridot::DataBuffer>>>::destroy(v23[0]);
      v20 = __p;
      if (__p)
      {
        while (v12 != v20)
        {
          v21 = *(v12 - 1);
          v12 -= 3;
          if (v21 < 0)
          {
            operator delete(*v12);
          }
        }

        operator delete(v20);
      }

      return v19;
    }
  }

  return result;
}

{
  v29 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s/JpCl.bin", this];
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v5];
  v8 = v6;
  if (v6)
  {
    v9 = peridot::CalibManager::fillPeridotCalib(v6, a2, v7);
  }

  else
  {
    __p = 0;
    v26 = 0;
    v27 = 0;
    peridot::CalibManager::getCalibClassNames(&__p);
    v24[0] = 0;
    v24[1] = 0;
    v23 = v24;
    v10 = __p;
    v11 = v26;
    if (__p != v26)
    {
      do
      {
        v12 = v10;
        if (v10[23] < 0)
        {
          v12 = *v10;
        }

        snprintf(__str, 0x800uLL, "%s/%s.bin", this, v12);
        v13 = fopen(__str, "r");
        v14 = v13;
        if (v13)
        {
          fseek(v13, 0, 2);
          MEMORY[0x22AA534D0](v14);
          fseek(v14, 0, 0);
          operator new[]();
        }

        v10 += 24;
        v11 = v26;
      }

      while (v10 != v26);
    }

    v9 = peridot::CalibManager::fillPeridotCalib(&v23, a2);
    v15 = v23;
    if (v23 != v24)
    {
      do
      {
        v16 = *(v15 + 7);
        if (v16)
        {
          MEMORY[0x22AA53170](v16, 0x1000C8077774924);
        }

        v17 = *(v15 + 1);
        if (v17)
        {
          do
          {
            v18 = v17;
            v17 = *v17;
          }

          while (v17);
        }

        else
        {
          do
          {
            v18 = *(v15 + 2);
            v19 = *v18 == v15;
            v15 = v18;
          }

          while (!v19);
        }

        v15 = v18;
      }

      while (v18 != v24);
    }

    std::__tree<std::__value_type<std::string,peridot::DataBuffer>,std::__map_value_compare<std::string,std::__value_type<std::string,peridot::DataBuffer>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,peridot::DataBuffer>>>::destroy(v24[0]);
    v20 = __p;
    if (__p)
    {
      while (v11 != v20)
      {
        v21 = *(v11 - 1);
        v11 -= 3;
        if (v21 < 0)
        {
          operator delete(*v11);
        }
      }

      operator delete(v20);
    }
  }

  return v9;
}

void sub_22469C830(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::__tree<std::__value_type<std::string,peridot::DataBuffer>,std::__map_value_compare<std::string,std::__value_type<std::string,peridot::DataBuffer>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,peridot::DataBuffer>>>::destroy(a4);
  std::vector<std::string>::~vector[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t readPeridotCalibFromBuffer(char *__src, unint64_t a2, _PeridotCalib *__dst)
{
  if (a2 <= 3)
  {
    peridot_depth_log("PeridotCalib buffer is too small (%lu)");
    return 0;
  }

  v6 = &__dst->irIntrinsics.distortLUT[166];
  v7 = *__src;
  if (*__src <= 4)
  {
    if (SLODWORD(v7) > 2)
    {
      if (LODWORD(v7) == 3)
      {
        if (a2 == 76456)
        {
          operator new();
        }

        peridot_depth_log("PeridotCalib version %d buffer has wrong size (expected: %lu, got %lu)", 3, 76456, a2);
      }

      else
      {
        if (a2 == 76456)
        {
          operator new();
        }

        peridot_depth_log("PeridotCalib version %d buffer has wrong size (expected: %lu, got %lu)", 4, 76456, a2);
      }

      goto LABEL_42;
    }

    if (LODWORD(v7) == 1)
    {
      if (a2 == 77672)
      {
        operator new();
      }

      peridot_depth_log("PeridotCalib version %d buffer has wrong size (expected: %lu, got %lu)", 1, 77672, a2);
      goto LABEL_42;
    }

    if (LODWORD(v7) == 2)
    {
      if (a2 == 77768)
      {
        operator new();
      }

      peridot_depth_log("PeridotCalib version %d buffer has wrong size (expected: %lu, got %lu)", 2, 77768, a2);
      goto LABEL_42;
    }

    goto LABEL_32;
  }

  if (SLODWORD(v7) <= 6)
  {
    if (LODWORD(v7) == 5)
    {
      if (a2 == 361416)
      {
        operator new();
      }

      peridot_depth_log("PeridotCalib version %d buffer has wrong size (expected: %lu, got %lu)", 5, 361416, a2);
    }

    else
    {
      if (a2 == 361424)
      {
        operator new();
      }

      peridot_depth_log("PeridotCalib version %d buffer has wrong size (expected: %lu, got %lu)", 6, 361424, a2);
    }

    goto LABEL_42;
  }

  if (LODWORD(v7) == 7)
  {
    if (a2 == 366176)
    {
      operator new();
    }

    peridot_depth_log("PeridotCalib version %d buffer has wrong size (expected: %lu, got %lu)", 7, 366176, a2);
    goto LABEL_42;
  }

  if (LODWORD(v7) == 8)
  {
    if (a2 == 402496)
    {
      *&__dst->version = 9;
      v8 = *(__src + 8);
      v9 = *(__src + 24);
      *&__dst->vbdm.VBDadj[3] = *(__src + 40);
      *&__dst->vbdm.vbdSpBM = v9;
      *__dst->vbdm.vbdSpx = v8;
      v10 = *(__src + 56);
      v11 = *(__src + 72);
      v12 = *(__src + 88);
      __dst->vbdm.Tx_VDDLAS = *(__src + 26);
      *&__dst->vbdm.VBDadj[15] = v12;
      *&__dst->vbdm.VBDadj[11] = v11;
      *&__dst->vbdm.VBDadj[7] = v10;
      memcpy(&__dst->QE, __src + 108, sizeof(__dst->QE));
      v13 = *(__src + 36412);
      *__dst->nominalPDE.dtm = *(__src + 36396);
      *&__dst->nominalPDE.dts[1] = v13;
      __dst->adcVoltageOffsets = *(__src + 36428);
      memcpy(&__dst->pulseShape, __src + 36444, sizeof(__dst->pulseShape));
      memcpy(&__dst->spots, __src + 49068, sizeof(__dst->spots));
      memcpy(&__dst->factorySpotLocations, __src + 342588, sizeof(__dst->factorySpotLocations));
      memcpy(&__dst->operationalSpotLocations, __src + 344396, sizeof(__dst->operationalSpotLocations));
      v14 = *(__src + 346232);
      v15 = *(__src + 346220);
      *&__dst->nominalT0Ref.TRGOUTDLY = *(__src + 346204);
      *__dst->nominalT0Ref.nomRef.banks[1].refs = v15;
      *__dst->nominalT0Ref.nomRef.banks[4].refs = v14;
      memcpy(&__dst->skews, __src + 346248, sizeof(__dst->skews));
      memcpy(&__dst->nvm, __src + 364332, sizeof(__dst->nvm));
      memcpy(&__dst->irIntrinsics, __src + 398000, sizeof(__dst->irIntrinsics));
      v16 = *(__src + 402168);
      *&__dst->factoryWideExtrinsics.rows[0][0] = *(__src + 402152);
      *&__dst->factoryWideExtrinsics.rows[0][2] = v16;
      v17 = *(__src + 402184);
      v18 = *(__src + 402200);
      v19 = *(__src + 402232);
      *&__dst->factoryWideExtrinsics.rows[2][0] = *(__src + 402216);
      *&__dst->factoryWideExtrinsics.rows[2][2] = v19;
      *&__dst->factoryWideExtrinsics.rows[1][0] = v17;
      *&__dst->factoryWideExtrinsics.rows[1][2] = v18;
      v20 = *(__src + 402264);
      *&__dst->operationalWideExtrinsics.rows[0][0] = *(__src + 402248);
      *&__dst->operationalWideExtrinsics.rows[0][2] = v20;
      v21 = *(__src + 402328);
      v23 = *(__src + 402280);
      v22 = *(__src + 402296);
      *&__dst->operationalWideExtrinsics.rows[2][0] = *(__src + 402312);
      *&__dst->operationalWideExtrinsics.rows[2][2] = v21;
      *&__dst->operationalWideExtrinsics.rows[1][0] = v23;
      *&__dst->operationalWideExtrinsics.rows[1][2] = v22;
      v25 = *(__src + 402392);
      v24 = *(__src + 402408);
      v26 = *(__src + 402440);
      *&__dst->additionalParams.jlin.distortVendor[10] = *(__src + 402424);
      *&__dst->additionalParams.jlin.tempProjector = v26;
      *&__dst->additionalParams.jlin.distortVendor[6] = v25;
      *&__dst->additionalParams.jlin.distortVendor[8] = v24;
      v27 = *(__src + 402344);
      v28 = *(__src + 402376);
      *&__dst->additionalParams.jlin.distortVendor[2] = *(__src + 402360);
      *&__dst->additionalParams.jlin.distortVendor[4] = v28;
      *__dst->additionalParams.jlin.distortVendor = v27;
      *__dst->additionalParams.uuidFF = *(__src + 402456);
      *__dst->additionalParams.uuidMPC = *(__src + 402472);
      *(v6 + 1112) = __src[402488];
      *(v6 + 1113) = __src[402489];
      *(v6 + 1114) = __src[402490];
      *(v6 + 1115) = __src[402491];
      *(v6 + 1116) = __src[402492];
      *(v6 + 1117) = __src[402493];
      *(v6 + 1118) = __src[402494];
      *(v6 + 1119) = __src[402495];
      nvmGetModuleSerialNumber(__dst->nvm.quark, 0x8000, &__dst->additionalParams);
    }

    else
    {
      peridot_depth_log("PeridotCalib version %d buffer has wrong size (expected: %lu, got %lu)", 8, 402496, a2);
    }

    goto LABEL_42;
  }

  if (LODWORD(v7) != 9)
  {
LABEL_32:
    peridot_depth_log("PeridotCalib buffer has an unknown version (%u)");
    return 0;
  }

  if (a2 == 402528)
  {
    memcpy(__dst, __src, sizeof(_PeridotCalib));
  }

  else
  {
    peridot_depth_log("PeridotCalib version %d buffer has wrong size (expected: %lu, got %lu)", 9, 402528, a2);
  }

LABEL_42:
  __dst->version = 9;
  return 1;
}

void sub_22469E474(_Unwind_Exception *a1)
{
  MEMORY[0x22AA531A0](v6, 0x1000C40F649E89ALL);
  MEMORY[0x22AA531A0](v5, 0x1000C40F649E89ALL);
  MEMORY[0x22AA531A0](v4, 0x1000C409ADDD2DALL);
  MEMORY[0x22AA531A0](v3, 0x1000C4050029A1CLL);
  MEMORY[0x22AA531A0](v2, 0x1000C400C109996);
  MEMORY[0x22AA531A0](v1, 0x1000C409BD17AFALL);
  _Unwind_Resume(a1);
}

uint64_t peridot::CalibManager::fillPeridotCalib(uint64_t a1, _DWORD *a2)
{
  bzero(a2, 0x62460uLL);
  *a2 = 9;
  v63 = 0;
  if (getBlobVersion(a1, "jlnl", &v63, 1))
  {
    v4 = v63;
    *(a2 + 402520) = v63;
    switch(v4)
    {
      case 'd':
        v65 = 4;
        strcpy(__s2, "jlnl");
        v43 = a1 + 8;
        v44 = *(a1 + 8);
        if (v44)
        {
          v45 = a1 + 8;
          do
          {
            v46 = *(v44 + 55);
            v47 = v46;
            if ((v46 & 0x80u) != 0)
            {
              v46 = *(v44 + 40);
            }

            if (v47 >= 0)
            {
              v48 = (v44 + 32);
            }

            else
            {
              v48 = *(v44 + 32);
            }

            if (v46 >= 4)
            {
              v49 = 4;
            }

            else
            {
              v49 = v46;
            }

            v50 = v46 < 4;
            v51 = memcmp(v48, __s2, v49);
            v52 = v51 < 0;
            if (!v51)
            {
              v52 = v50;
            }

            v53 = !v52;
            if (v52)
            {
              v54 = 8;
            }

            else
            {
              v54 = 0;
            }

            if (v53)
            {
              v45 = v44;
            }

            v44 = *(v44 + v54);
          }

          while (v44);
          if (v45 != v43)
          {
            v55 = *(v45 + 55);
            v56 = v55;
            if ((v55 & 0x80u) != 0)
            {
              v55 = *(v45 + 40);
            }

            if (v56 >= 0)
            {
              v57 = (v45 + 32);
            }

            else
            {
              v57 = *(v45 + 32);
            }

            if (v55 >= 4)
            {
              v58 = 4;
            }

            else
            {
              v58 = v55;
            }

            v59 = v55 > 4;
            v60 = memcmp(__s2, v57, v58);
            v61 = v60 < 0;
            if (!v60)
            {
              v61 = v59;
            }

            if (!v61 && v45 != v43)
            {
              if (*(v45 + 64) == 24)
              {
                operator new();
              }

              peridot_depth_log("%s: blob of wrong size (%lu bytes - expected it to be %lu)", "jlnl", *(v45 + 64), 24);
            }
          }
        }

        break;
      case 'e':
        v65 = 4;
        strcpy(__s2, "jlnl");
        v24 = a1 + 8;
        v25 = *(a1 + 8);
        if (v25)
        {
          v26 = a1 + 8;
          do
          {
            v27 = *(v25 + 55);
            v28 = v27;
            if ((v27 & 0x80u) != 0)
            {
              v27 = *(v25 + 40);
            }

            if (v28 >= 0)
            {
              v29 = (v25 + 32);
            }

            else
            {
              v29 = *(v25 + 32);
            }

            if (v27 >= 4)
            {
              v30 = 4;
            }

            else
            {
              v30 = v27;
            }

            v31 = v27 < 4;
            v32 = memcmp(v29, __s2, v30);
            v33 = v32 < 0;
            if (!v32)
            {
              v33 = v31;
            }

            v34 = !v33;
            if (v33)
            {
              v35 = 8;
            }

            else
            {
              v35 = 0;
            }

            if (v34)
            {
              v26 = v25;
            }

            v25 = *(v25 + v35);
          }

          while (v25);
          if (v26 != v24)
          {
            v36 = *(v26 + 55);
            v37 = v36;
            if ((v36 & 0x80u) != 0)
            {
              v36 = *(v26 + 40);
            }

            if (v37 >= 0)
            {
              v38 = (v26 + 32);
            }

            else
            {
              v38 = *(v26 + 32);
            }

            if (v36 >= 4)
            {
              v39 = 4;
            }

            else
            {
              v39 = v36;
            }

            v40 = v36 > 4;
            v41 = memcmp(__s2, v38, v39);
            v42 = v41 < 0;
            if (!v41)
            {
              v42 = v40;
            }

            if (!v42 && v26 != v24)
            {
              if (*(v26 + 64) == 100)
              {
                operator new();
              }

              peridot_depth_log("%s: blob of wrong size (%lu bytes - expected it to be %lu)", "jlnl", *(v26 + 64), 100);
            }
          }
        }

        break;
      case 'f':
        v65 = 4;
        strcpy(__s2, "jlnl");
        v5 = a1 + 8;
        v6 = *(a1 + 8);
        if (v6)
        {
          v7 = a1 + 8;
          do
          {
            v8 = *(v6 + 55);
            v9 = v8;
            if ((v8 & 0x80u) != 0)
            {
              v8 = *(v6 + 40);
            }

            if (v9 >= 0)
            {
              v10 = (v6 + 32);
            }

            else
            {
              v10 = *(v6 + 32);
            }

            if (v8 >= 4)
            {
              v11 = 4;
            }

            else
            {
              v11 = v8;
            }

            v12 = v8 < 4;
            v13 = memcmp(v10, __s2, v11);
            v14 = v13 < 0;
            if (!v13)
            {
              v14 = v12;
            }

            v15 = !v14;
            if (v14)
            {
              v16 = 8;
            }

            else
            {
              v16 = 0;
            }

            if (v15)
            {
              v7 = v6;
            }

            v6 = *(v6 + v16);
          }

          while (v6);
          if (v7 != v5)
          {
            v17 = *(v7 + 55);
            v18 = v17;
            if ((v17 & 0x80u) != 0)
            {
              v17 = *(v7 + 40);
            }

            if (v18 >= 0)
            {
              v19 = (v7 + 32);
            }

            else
            {
              v19 = *(v7 + 32);
            }

            if (v17 >= 4)
            {
              v20 = 4;
            }

            else
            {
              v20 = v17;
            }

            v21 = v17 > 4;
            v22 = memcmp(__s2, v19, v20);
            v23 = v22 < 0;
            if (!v22)
            {
              v23 = v21;
            }

            if (!v23 && v7 != v5)
            {
              if (*(v7 + 64) == 104)
              {
                operator new();
              }

              peridot_depth_log("%s: blob of wrong size (%lu bytes - expected it to be %lu)", "jlnl", *(v7 + 64), 104);
            }
          }
        }

        break;
      default:
        peridot_depth_log("jlnl: unsupported version %d", v4);
        break;
    }
  }

  return 0;
}

void sub_2246A370C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (a20)
  {
    MEMORY[0x22AA531A0](a20, 0x1000C4026781B21);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *std::__tree<std::__value_type<std::string,peridot::DataBuffer>,std::__map_value_compare<std::string,std::__value_type<std::string,peridot::DataBuffer>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,peridot::DataBuffer>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_25:
    operator new();
  }

  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = a2[1];
  }

  if (v3 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  while (1)
  {
    while (1)
    {
      v6 = v2;
      v9 = v2[4];
      v7 = v2 + 4;
      v8 = v9;
      v10 = *(v7 + 23);
      if (v10 >= 0)
      {
        v11 = *(v7 + 23);
      }

      else
      {
        v11 = v7[1];
      }

      if (v10 >= 0)
      {
        v12 = v7;
      }

      else
      {
        v12 = v8;
      }

      if (v11 >= v4)
      {
        v13 = v4;
      }

      else
      {
        v13 = v11;
      }

      v14 = memcmp(v5, v12, v13);
      v15 = v4 < v11;
      if (v14)
      {
        v15 = v14 < 0;
      }

      if (!v15)
      {
        break;
      }

      v2 = *v6;
      if (!*v6)
      {
        goto LABEL_25;
      }
    }

    v16 = memcmp(v12, v5, v13);
    v17 = v11 < v4;
    if (v16)
    {
      v17 = v16 < 0;
    }

    if (!v17)
    {
      return v6;
    }

    v2 = v6[1];
    if (!v2)
    {
      goto LABEL_25;
    }
  }
}

void sub_2246A39B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__tree_node<std::__value_type<std::string,peridot::DataBuffer>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,peridot::DataBuffer>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__tree<std::__value_type<std::string,peridot::DataBuffer>,std::__map_value_compare<std::string,std::__value_type<std::string,peridot::DataBuffer>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,peridot::DataBuffer>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,peridot::DataBuffer>,std::__map_value_compare<std::string,std::__value_type<std::string,peridot::DataBuffer>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,peridot::DataBuffer>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,peridot::DataBuffer>,std::__map_value_compare<std::string,std::__value_type<std::string,peridot::DataBuffer>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,peridot::DataBuffer>>>::destroy(*(a1 + 1));
    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

void ***std::vector<std::string>::~vector[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void *std::unique_ptr<std::__tree_node<std::__value_type<std::string,peridot::DataBuffer>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,peridot::DataBuffer>,void *>>>>::~unique_ptr[abi:ne200100](void *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1 && *(v2 + 55) < 0)
    {
      v4 = v2;
      operator delete(*(v2 + 32));
      v2 = v4;
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v10 = a2[2];
          }

          else
          {
            v10 = v2[1];
            v11 = *v10;
            v2[1] = *v10;
            v12 = v2;
            if (v11)
            {
              v11[2] = v2;
              v3 = v2[2];
              v12 = *v3;
            }

            v10[2] = v3;
            v3[v12 != v2] = v10;
            *v10 = v2;
            v2[2] = v10;
            v3 = v10[2];
            v4 = *v3;
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          *(v4 + 16) = v19;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v13 = *v2;
          if (*v2 == a2)
          {
            v14 = v13[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v3[*v3 != v2] = v13;
            v13[1] = v2;
            v13[2] = v3;
            v2[2] = v13;
            v3 = v13[2];
          }

          else
          {
            v13 = a2[2];
          }

          *(v13 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

uint64_t getBlobVersion(uint64_t a1, char *__s, _DWORD *a3, int a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v33 = v8;
  if (v8)
  {
    memcpy(__dst, __s, v8);
  }

  *(__dst + v9) = 0;
  v12 = *(a1 + 8);
  v10 = a1 + 8;
  v11 = v12;
  v13 = v33;
  if (!v12)
  {
    goto LABEL_46;
  }

  v14 = (v33 & 0x80u) == 0 ? v33 : __dst[1];
  v15 = (v33 & 0x80u) == 0 ? __dst : __dst[0];
  v16 = v10;
  do
  {
    v17 = *(v11 + 55);
    if (v17 >= 0)
    {
      v18 = *(v11 + 55);
    }

    else
    {
      v18 = *(v11 + 40);
    }

    if (v17 >= 0)
    {
      v19 = (v11 + 32);
    }

    else
    {
      v19 = *(v11 + 32);
    }

    if (v14 >= v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = v14;
    }

    v21 = memcmp(v19, v15, v20);
    v22 = v18 < v14;
    if (v21)
    {
      v22 = v21 < 0;
    }

    v23 = !v22;
    if (v22)
    {
      v24 = 8;
    }

    else
    {
      v24 = 0;
    }

    if (v23)
    {
      v16 = v11;
    }

    v11 = *(v11 + v24);
  }

  while (v11);
  if (v16 == v10)
  {
    goto LABEL_46;
  }

  v25 = *(v16 + 55);
  v26 = v25 >= 0 ? *(v16 + 55) : *(v16 + 40);
  v27 = v25 >= 0 ? (v16 + 32) : *(v16 + 32);
  v28 = (v26 >= v14 ? v14 : v26);
  v29 = memcmp(v15, v27, v28);
  v30 = v14 < v26;
  if (v29)
  {
    v30 = v29 < 0;
  }

  if (v30)
  {
LABEL_46:
    v16 = v10;
    if ((v13 & 0x80) != 0)
    {
      goto LABEL_47;
    }
  }

  else if ((v13 & 0x80) != 0)
  {
LABEL_47:
    operator delete(__dst[0]);
    if (v16 == v10)
    {
      goto LABEL_48;
    }

    goto LABEL_52;
  }

  if (v16 == v10)
  {
LABEL_48:
    if (a4)
    {
      peridot_depth_log("%s: blob is missing");
    }

    return 0;
  }

LABEL_52:
  if (*(v16 + 64) <= 3uLL)
  {
    peridot_depth_log("%s: blob too short (%lu bytes)");
    return 0;
  }

  *a3 = **(v16 + 56);
  return 1;
}

uint64_t getBlobAsExact<jlps_v101>(uint64_t a1)
{
  v22 = 4;
  strcpy(__s2, "jlps");
  v1 = a1 + 8;
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = a1 + 8;
    do
    {
      v4 = *(v2 + 55);
      v5 = v4;
      if ((v4 & 0x80u) != 0)
      {
        v4 = *(v2 + 40);
      }

      if (v5 >= 0)
      {
        v6 = (v2 + 32);
      }

      else
      {
        v6 = *(v2 + 32);
      }

      if (v4 >= 4)
      {
        v7 = 4;
      }

      else
      {
        v7 = v4;
      }

      v8 = v4 < 4;
      v9 = memcmp(v6, __s2, v7);
      v10 = v9 < 0;
      if (!v9)
      {
        v10 = v8;
      }

      v11 = !v10;
      if (v10)
      {
        v12 = 8;
      }

      else
      {
        v12 = 0;
      }

      if (v11)
      {
        v3 = v2;
      }

      v2 = *(v2 + v12);
    }

    while (v2);
    if (v3 != v1)
    {
      v13 = *(v3 + 55);
      v14 = v13;
      if ((v13 & 0x80u) != 0)
      {
        v13 = *(v3 + 40);
      }

      if (v14 >= 0)
      {
        v15 = (v3 + 32);
      }

      else
      {
        v15 = *(v3 + 32);
      }

      if (v13 >= 4)
      {
        v16 = 4;
      }

      else
      {
        v16 = v13;
      }

      v17 = v13 > 4;
      v18 = memcmp(__s2, v15, v16);
      v19 = v18 < 0;
      if (!v18)
      {
        v19 = v17;
      }

      if (!v19 && v3 != v1)
      {
        if (*(v3 + 64) == 12628)
        {
          operator new();
        }

        peridot_depth_log("%s: blob of wrong size (%lu bytes - expected it to be %lu)", "jlps", *(v3 + 64), 12628);
      }
    }
  }

  return 0;
}

__n128 copyPulseShapeData_v101(unint64_t a1, unint64_t a2)
{
  v2 = (a2 + 788);
  if (a1 + 2464 <= a2 || a2 + 512 <= a1)
  {
    v6 = *(a1 + 16);
    *a2 = *a1;
    *(a2 + 16) = v6;
    v7 = *(a1 + 2224);
    *(a2 + 256) = *(a1 + 2208);
    *(a2 + 272) = v7;
    v8 = *(a1 + 48);
    *(a2 + 32) = *(a1 + 32);
    *(a2 + 48) = v8;
    v9 = *(a1 + 2256);
    *(a2 + 288) = *(a1 + 2240);
    *(a2 + 304) = v9;
    v10 = *(a1 + 80);
    *(a2 + 64) = *(a1 + 64);
    *(a2 + 80) = v10;
    v11 = *(a1 + 2288);
    *(a2 + 320) = *(a1 + 2272);
    *(a2 + 336) = v11;
    v12 = *(a1 + 112);
    *(a2 + 96) = *(a1 + 96);
    *(a2 + 112) = v12;
    v13 = *(a1 + 2320);
    *(a2 + 352) = *(a1 + 2304);
    *(a2 + 368) = v13;
    v14 = *(a1 + 144);
    *(a2 + 128) = *(a1 + 128);
    *(a2 + 144) = v14;
    v15 = *(a1 + 2352);
    *(a2 + 384) = *(a1 + 2336);
    *(a2 + 400) = v15;
    v16 = *(a1 + 176);
    *(a2 + 160) = *(a1 + 160);
    *(a2 + 176) = v16;
    v17 = *(a1 + 2384);
    *(a2 + 416) = *(a1 + 2368);
    *(a2 + 432) = v17;
    v18 = *(a1 + 208);
    *(a2 + 192) = *(a1 + 192);
    *(a2 + 208) = v18;
    v19 = *(a1 + 2416);
    *(a2 + 448) = *(a1 + 2400);
    *(a2 + 464) = v19;
    v20 = *(a1 + 240);
    *(a2 + 224) = *(a1 + 224);
    *(a2 + 240) = v20;
    result = *(a1 + 2432);
    v22 = *(a1 + 2448);
    *(a2 + 480) = result;
    *(a2 + 496) = v22;
  }

  else
  {
    v3 = (a2 + 256);
    v4 = 64;
    v5 = a1;
    do
    {
      *(v3 - 64) = *v5;
      *v3++ = v5[552];
      ++v5;
      --v4;
    }

    while (v4);
  }

  *(a2 + 768) = *(a1 + 2048);
  *(a2 + 772) = *(a1 + 2052);
  *(a2 + 776) = *(a1 + 2056);
  *(a2 + 780) = *(a1 + 2060);
  *(a2 + 784) = *(a1 + 2064);
  if (v2 >= a1 + 2720 || a1 + 256 >= a2 + 1300)
  {
    v26 = *(a1 + 272);
    *v2 = *(a1 + 256);
    *(a2 + 804) = v26;
    v27 = *(a1 + 2480);
    *(a2 + 1044) = *(a1 + 2464);
    *(a2 + 1060) = v27;
    v28 = *(a1 + 304);
    *(a2 + 820) = *(a1 + 288);
    *(a2 + 836) = v28;
    v29 = *(a1 + 2512);
    *(a2 + 1076) = *(a1 + 2496);
    *(a2 + 1092) = v29;
    v30 = *(a1 + 336);
    *(a2 + 852) = *(a1 + 320);
    *(a2 + 868) = v30;
    v31 = *(a1 + 2544);
    *(a2 + 1108) = *(a1 + 2528);
    *(a2 + 1124) = v31;
    v32 = *(a1 + 368);
    *(a2 + 884) = *(a1 + 352);
    *(a2 + 900) = v32;
    v33 = *(a1 + 2576);
    *(a2 + 1140) = *(a1 + 2560);
    *(a2 + 1156) = v33;
    v34 = *(a1 + 400);
    *(a2 + 916) = *(a1 + 384);
    *(a2 + 932) = v34;
    v35 = *(a1 + 2608);
    *(a2 + 1172) = *(a1 + 2592);
    *(a2 + 1188) = v35;
    v36 = *(a1 + 432);
    *(a2 + 948) = *(a1 + 416);
    *(a2 + 964) = v36;
    v37 = *(a1 + 2640);
    *(a2 + 1204) = *(a1 + 2624);
    *(a2 + 1220) = v37;
    v38 = *(a1 + 464);
    *(a2 + 980) = *(a1 + 448);
    *(a2 + 996) = v38;
    v39 = *(a1 + 2672);
    *(a2 + 1236) = *(a1 + 2656);
    *(a2 + 1252) = v39;
    v40 = *(a1 + 496);
    *(a2 + 1012) = *(a1 + 480);
    *(a2 + 1028) = v40;
    result = *(a1 + 2688);
    v41 = *(a1 + 2704);
    *(a2 + 1268) = result;
    *(a2 + 1284) = v41;
  }

  else
  {
    v23 = (a2 + 1044);
    v24 = 64;
    v25 = a1;
    do
    {
      *(v23 - 64) = *(v25 + 256);
      *v23++ = *(v25 + 2464);
      v25 += 4;
      --v24;
    }

    while (v24);
  }

  *(a2 + 1556) = *(a1 + 2068);
  *(a2 + 1560) = *(a1 + 2072);
  *(a2 + 1564) = *(a1 + 2076);
  *(a2 + 1568) = *(a1 + 2080);
  *(a2 + 1572) = *(a1 + 2084);
  v42 = (a2 + 1832);
  v43 = (a2 + 2088);
  if (a2 + 1576 >= a1 + 2976 || a1 + 512 >= v43)
  {
    v46 = *(a1 + 528);
    *(a2 + 1576) = *(a1 + 512);
    *(a2 + 1592) = v46;
    v47 = *(a1 + 2736);
    *v42 = *(a1 + 2720);
    *(a2 + 1848) = v47;
    v48 = *(a1 + 560);
    *(a2 + 1608) = *(a1 + 544);
    *(a2 + 1624) = v48;
    v49 = *(a1 + 2768);
    *(a2 + 1864) = *(a1 + 2752);
    *(a2 + 1880) = v49;
    v50 = *(a1 + 592);
    *(a2 + 1640) = *(a1 + 576);
    *(a2 + 1656) = v50;
    v51 = *(a1 + 2800);
    *(a2 + 1896) = *(a1 + 2784);
    *(a2 + 1912) = v51;
    v52 = *(a1 + 624);
    *(a2 + 1672) = *(a1 + 608);
    *(a2 + 1688) = v52;
    v53 = *(a1 + 2832);
    *(a2 + 1928) = *(a1 + 2816);
    *(a2 + 1944) = v53;
    v54 = *(a1 + 656);
    *(a2 + 1704) = *(a1 + 640);
    *(a2 + 1720) = v54;
    v55 = *(a1 + 2864);
    *(a2 + 1960) = *(a1 + 2848);
    *(a2 + 1976) = v55;
    v56 = *(a1 + 688);
    *(a2 + 1736) = *(a1 + 672);
    *(a2 + 1752) = v56;
    v57 = *(a1 + 2896);
    *(a2 + 1992) = *(a1 + 2880);
    *(a2 + 2008) = v57;
    v58 = *(a1 + 720);
    *(a2 + 1768) = *(a1 + 704);
    *(a2 + 1784) = v58;
    v59 = *(a1 + 2928);
    *(a2 + 2024) = *(a1 + 2912);
    *(a2 + 2040) = v59;
    v60 = *(a1 + 752);
    *(a2 + 1800) = *(a1 + 736);
    *(a2 + 1816) = v60;
    result = *(a1 + 2944);
    v61 = *(a1 + 2960);
    *(a2 + 2056) = result;
    *(a2 + 2072) = v61;
  }

  else
  {
    v44 = 64;
    v45 = a1;
    do
    {
      *(v42 - 64) = *(v45 + 512);
      *v42 = *(v45 + 2720);
      v42 = (v42 + 4);
      v45 += 4;
      --v44;
    }

    while (v44);
  }

  *(a2 + 2344) = *(a1 + 2088);
  *(a2 + 2348) = *(a1 + 2092);
  *(a2 + 2352) = *(a1 + 2096);
  *(a2 + 2356) = *(a1 + 2100);
  *(a2 + 2360) = *(a1 + 2104);
  v62 = (a2 + 2620);
  v63 = (a2 + 2876);
  if (a2 + 2364 >= a1 + 3232 || a1 + 768 >= v63)
  {
    v66 = *(a1 + 784);
    *(a2 + 2364) = *(a1 + 768);
    *(a2 + 2380) = v66;
    v67 = *(a1 + 2992);
    *v62 = *(a1 + 2976);
    *(a2 + 2636) = v67;
    v68 = *(a1 + 816);
    *(a2 + 2396) = *(a1 + 800);
    *(a2 + 2412) = v68;
    v69 = *(a1 + 3024);
    *(a2 + 2652) = *(a1 + 3008);
    *(a2 + 2668) = v69;
    v70 = *(a1 + 848);
    *(a2 + 2428) = *(a1 + 832);
    *(a2 + 2444) = v70;
    v71 = *(a1 + 3056);
    *(a2 + 2684) = *(a1 + 3040);
    *(a2 + 2700) = v71;
    v72 = *(a1 + 880);
    *(a2 + 2460) = *(a1 + 864);
    *(a2 + 2476) = v72;
    v73 = *(a1 + 3088);
    *(a2 + 2716) = *(a1 + 3072);
    *(a2 + 2732) = v73;
    v74 = *(a1 + 912);
    *(a2 + 2492) = *(a1 + 896);
    *(a2 + 2508) = v74;
    v75 = *(a1 + 3120);
    *(a2 + 2748) = *(a1 + 3104);
    *(a2 + 2764) = v75;
    v76 = *(a1 + 944);
    *(a2 + 2524) = *(a1 + 928);
    *(a2 + 2540) = v76;
    v77 = *(a1 + 3152);
    *(a2 + 2780) = *(a1 + 3136);
    *(a2 + 2796) = v77;
    v78 = *(a1 + 976);
    *(a2 + 2556) = *(a1 + 960);
    *(a2 + 2572) = v78;
    v79 = *(a1 + 3184);
    *(a2 + 2812) = *(a1 + 3168);
    *(a2 + 2828) = v79;
    v80 = *(a1 + 1008);
    *(a2 + 2588) = *(a1 + 992);
    *(a2 + 2604) = v80;
    result = *(a1 + 3200);
    v81 = *(a1 + 3216);
    *(a2 + 2844) = result;
    *(a2 + 2860) = v81;
  }

  else
  {
    v64 = 64;
    v65 = a1;
    do
    {
      *(v62 - 64) = *(v65 + 768);
      *v62 = *(v65 + 2976);
      v62 = (v62 + 4);
      v65 += 4;
      --v64;
    }

    while (v64);
  }

  *(a2 + 3132) = *(a1 + 2108);
  *(a2 + 3136) = *(a1 + 2112);
  *(a2 + 3140) = *(a1 + 2116);
  *(a2 + 3144) = *(a1 + 2120);
  *(a2 + 3148) = *(a1 + 2124);
  if (a2 + 3152 >= a1 + 3488 || a1 + 1024 >= a2 + 3664)
  {
    v85 = *(a1 + 1040);
    *(a2 + 3152) = *(a1 + 1024);
    *(a2 + 3168) = v85;
    v86 = *(a1 + 3248);
    *(a2 + 3408) = *(a1 + 3232);
    *(a2 + 3424) = v86;
    v87 = *(a1 + 1072);
    *(a2 + 3184) = *(a1 + 1056);
    *(a2 + 3200) = v87;
    v88 = *(a1 + 3280);
    *(a2 + 3440) = *(a1 + 3264);
    *(a2 + 3456) = v88;
    v89 = *(a1 + 1104);
    *(a2 + 3216) = *(a1 + 1088);
    *(a2 + 3232) = v89;
    v90 = *(a1 + 3312);
    *(a2 + 3472) = *(a1 + 3296);
    *(a2 + 3488) = v90;
    v91 = *(a1 + 1136);
    *(a2 + 3248) = *(a1 + 1120);
    *(a2 + 3264) = v91;
    v92 = *(a1 + 3344);
    *(a2 + 3504) = *(a1 + 3328);
    *(a2 + 3520) = v92;
    v93 = *(a1 + 1168);
    *(a2 + 3280) = *(a1 + 1152);
    *(a2 + 3296) = v93;
    v94 = *(a1 + 3376);
    *(a2 + 3536) = *(a1 + 3360);
    *(a2 + 3552) = v94;
    v95 = *(a1 + 1200);
    *(a2 + 3312) = *(a1 + 1184);
    *(a2 + 3328) = v95;
    v96 = *(a1 + 3408);
    *(a2 + 3568) = *(a1 + 3392);
    *(a2 + 3584) = v96;
    v97 = *(a1 + 1232);
    *(a2 + 3344) = *(a1 + 1216);
    *(a2 + 3360) = v97;
    v98 = *(a1 + 3440);
    *(a2 + 3600) = *(a1 + 3424);
    *(a2 + 3616) = v98;
    v99 = *(a1 + 1264);
    *(a2 + 3376) = *(a1 + 1248);
    *(a2 + 3392) = v99;
    result = *(a1 + 3456);
    v100 = *(a1 + 3472);
    *(a2 + 3632) = result;
    *(a2 + 3648) = v100;
  }

  else
  {
    v82 = (a2 + 3408);
    v83 = 64;
    v84 = a1;
    do
    {
      *(v82 - 64) = *(v84 + 1024);
      *v82++ = *(v84 + 3232);
      v84 += 4;
      --v83;
    }

    while (v83);
  }

  *(a2 + 3920) = *(a1 + 2128);
  *(a2 + 3924) = *(a1 + 2132);
  *(a2 + 3928) = *(a1 + 2136);
  *(a2 + 3932) = *(a1 + 2140);
  *(a2 + 3936) = *(a1 + 2144);
  if (a2 + 3940 >= a1 + 3744 || a1 + 1280 >= a2 + 4452)
  {
    v104 = *(a1 + 1296);
    *(a2 + 3940) = *(a1 + 1280);
    *(a2 + 3956) = v104;
    v105 = *(a1 + 3504);
    *(a2 + 4196) = *(a1 + 3488);
    *(a2 + 4212) = v105;
    v106 = *(a1 + 1328);
    *(a2 + 3972) = *(a1 + 1312);
    *(a2 + 3988) = v106;
    v107 = *(a1 + 3536);
    *(a2 + 4228) = *(a1 + 3520);
    *(a2 + 4244) = v107;
    v108 = *(a1 + 1360);
    *(a2 + 4004) = *(a1 + 1344);
    *(a2 + 4020) = v108;
    v109 = *(a1 + 3568);
    *(a2 + 4260) = *(a1 + 3552);
    *(a2 + 4276) = v109;
    v110 = *(a1 + 1392);
    *(a2 + 4036) = *(a1 + 1376);
    *(a2 + 4052) = v110;
    v111 = *(a1 + 3600);
    *(a2 + 4292) = *(a1 + 3584);
    *(a2 + 4308) = v111;
    v112 = *(a1 + 1424);
    *(a2 + 4068) = *(a1 + 1408);
    *(a2 + 4084) = v112;
    v113 = *(a1 + 3632);
    *(a2 + 4324) = *(a1 + 3616);
    *(a2 + 4340) = v113;
    v114 = *(a1 + 1456);
    *(a2 + 4100) = *(a1 + 1440);
    *(a2 + 4116) = v114;
    v115 = *(a1 + 3664);
    *(a2 + 4356) = *(a1 + 3648);
    *(a2 + 4372) = v115;
    v116 = *(a1 + 1488);
    *(a2 + 4132) = *(a1 + 1472);
    *(a2 + 4148) = v116;
    v117 = *(a1 + 3696);
    *(a2 + 4388) = *(a1 + 3680);
    *(a2 + 4404) = v117;
    v118 = *(a1 + 1520);
    *(a2 + 4164) = *(a1 + 1504);
    *(a2 + 4180) = v118;
    result = *(a1 + 3712);
    v119 = *(a1 + 3728);
    *(a2 + 4420) = result;
    *(a2 + 4436) = v119;
  }

  else
  {
    v101 = (a2 + 4196);
    v102 = 64;
    v103 = a1;
    do
    {
      *(v101 - 64) = *(v103 + 1280);
      *v101++ = *(v103 + 3488);
      v103 += 4;
      --v102;
    }

    while (v102);
  }

  *(a2 + 4708) = *(a1 + 2148);
  *(a2 + 4712) = *(a1 + 2152);
  *(a2 + 4716) = *(a1 + 2156);
  *(a2 + 4720) = *(a1 + 2160);
  *(a2 + 4724) = *(a1 + 2164);
  if (a2 + 4728 >= a1 + 4000 || a1 + 1536 >= a2 + 5240)
  {
    v123 = *(a1 + 1552);
    *(a2 + 4728) = *(a1 + 1536);
    *(a2 + 4744) = v123;
    v124 = *(a1 + 3760);
    *(a2 + 4984) = *(a1 + 3744);
    *(a2 + 5000) = v124;
    v125 = *(a1 + 1584);
    *(a2 + 4760) = *(a1 + 1568);
    *(a2 + 4776) = v125;
    v126 = *(a1 + 3792);
    *(a2 + 5016) = *(a1 + 3776);
    *(a2 + 5032) = v126;
    v127 = *(a1 + 1616);
    *(a2 + 4792) = *(a1 + 1600);
    *(a2 + 4808) = v127;
    v128 = *(a1 + 3824);
    *(a2 + 5048) = *(a1 + 3808);
    *(a2 + 5064) = v128;
    v129 = *(a1 + 1648);
    *(a2 + 4824) = *(a1 + 1632);
    *(a2 + 4840) = v129;
    v130 = *(a1 + 3856);
    *(a2 + 5080) = *(a1 + 3840);
    *(a2 + 5096) = v130;
    v131 = *(a1 + 1680);
    *(a2 + 4856) = *(a1 + 1664);
    *(a2 + 4872) = v131;
    v132 = *(a1 + 3888);
    *(a2 + 5112) = *(a1 + 3872);
    *(a2 + 5128) = v132;
    v133 = *(a1 + 1712);
    *(a2 + 4888) = *(a1 + 1696);
    *(a2 + 4904) = v133;
    v134 = *(a1 + 3920);
    *(a2 + 5144) = *(a1 + 3904);
    *(a2 + 5160) = v134;
    v135 = *(a1 + 1744);
    *(a2 + 4920) = *(a1 + 1728);
    *(a2 + 4936) = v135;
    v136 = *(a1 + 3952);
    *(a2 + 5176) = *(a1 + 3936);
    *(a2 + 5192) = v136;
    v137 = *(a1 + 1776);
    *(a2 + 4952) = *(a1 + 1760);
    *(a2 + 4968) = v137;
    result = *(a1 + 3968);
    v138 = *(a1 + 3984);
    *(a2 + 5208) = result;
    *(a2 + 5224) = v138;
  }

  else
  {
    v120 = (a2 + 4984);
    v121 = 64;
    v122 = a1;
    do
    {
      *(v120 - 64) = *(v122 + 1536);
      *v120++ = *(v122 + 3744);
      v122 += 4;
      --v121;
    }

    while (v121);
  }

  *(a2 + 5496) = *(a1 + 2168);
  *(a2 + 5500) = *(a1 + 2172);
  *(a2 + 5504) = *(a1 + 2176);
  *(a2 + 5508) = *(a1 + 2180);
  *(a2 + 5512) = *(a1 + 2184);
  v139 = (a2 + 5772);
  v140 = (a2 + 6028);
  if (a2 + 5516 >= a1 + 4256 || a1 + 1792 >= v140)
  {
    v143 = *(a1 + 1808);
    *(a2 + 5516) = *(a1 + 1792);
    *(a2 + 5532) = v143;
    v144 = *(a1 + 4016);
    *v139 = *(a1 + 4000);
    *(a2 + 5788) = v144;
    v145 = *(a1 + 1840);
    *(a2 + 5548) = *(a1 + 1824);
    *(a2 + 5564) = v145;
    v146 = *(a1 + 4048);
    *(a2 + 5804) = *(a1 + 4032);
    *(a2 + 5820) = v146;
    v147 = *(a1 + 1872);
    *(a2 + 5580) = *(a1 + 1856);
    *(a2 + 5596) = v147;
    v148 = *(a1 + 4080);
    *(a2 + 5836) = *(a1 + 4064);
    *(a2 + 5852) = v148;
    v149 = *(a1 + 1904);
    *(a2 + 5612) = *(a1 + 1888);
    *(a2 + 5628) = v149;
    v150 = *(a1 + 4112);
    *(a2 + 5868) = *(a1 + 4096);
    *(a2 + 5884) = v150;
    v151 = *(a1 + 1936);
    *(a2 + 5644) = *(a1 + 1920);
    *(a2 + 5660) = v151;
    v152 = *(a1 + 4144);
    *(a2 + 5900) = *(a1 + 4128);
    *(a2 + 5916) = v152;
    v153 = *(a1 + 1968);
    *(a2 + 5676) = *(a1 + 1952);
    *(a2 + 5692) = v153;
    v154 = *(a1 + 4176);
    *(a2 + 5932) = *(a1 + 4160);
    *(a2 + 5948) = v154;
    v155 = *(a1 + 2000);
    *(a2 + 5708) = *(a1 + 1984);
    *(a2 + 5724) = v155;
    v156 = *(a1 + 4208);
    *(a2 + 5964) = *(a1 + 4192);
    *(a2 + 5980) = v156;
    v157 = *(a1 + 2032);
    *(a2 + 5740) = *(a1 + 2016);
    *(a2 + 5756) = v157;
    result = *(a1 + 4224);
    v158 = *(a1 + 4240);
    *(a2 + 5996) = result;
    *(a2 + 6012) = v158;
  }

  else
  {
    v141 = 64;
    v142 = a1;
    do
    {
      *(v139 - 64) = *(v142 + 1792);
      *v139 = *(v142 + 4000);
      v139 = (v139 + 4);
      v142 += 4;
      --v141;
    }

    while (v141);
  }

  *(a2 + 6284) = *(a1 + 2188);
  *(a2 + 6288) = *(a1 + 2192);
  *(a2 + 6292) = *(a1 + 2196);
  *(a2 + 6296) = *(a1 + 2200);
  *(a2 + 6300) = *(a1 + 2204);
  *(a2 + 512) = *(a1 + 4256);
  *(a2 + 516) = *(a1 + 4260);
  *(a2 + 520) = *(a1 + 4264);
  *(a2 + 524) = *(a1 + 4268);
  *(a2 + 528) = *(a1 + 4272);
  *(a2 + 532) = *(a1 + 4276);
  *(a2 + 536) = *(a1 + 4280);
  *(a2 + 540) = *(a1 + 4284);
  *(a2 + 544) = *(a1 + 4288);
  *(a2 + 548) = *(a1 + 4292);
  *(a2 + 552) = *(a1 + 4296);
  *(a2 + 556) = *(a1 + 4300);
  *(a2 + 560) = *(a1 + 4304);
  *(a2 + 564) = *(a1 + 4308);
  *(a2 + 568) = *(a1 + 4312);
  *(a2 + 572) = *(a1 + 4316);
  *(a2 + 576) = *(a1 + 4320);
  *(a2 + 580) = *(a1 + 4324);
  *(a2 + 584) = *(a1 + 4328);
  *(a2 + 588) = *(a1 + 4332);
  *(a2 + 592) = *(a1 + 4336);
  *(a2 + 596) = *(a1 + 4340);
  *(a2 + 600) = *(a1 + 4344);
  *(a2 + 604) = *(a1 + 4348);
  *(a2 + 608) = *(a1 + 4352);
  *(a2 + 612) = *(a1 + 4356);
  *(a2 + 616) = *(a1 + 4360);
  *(a2 + 620) = *(a1 + 4364);
  *(a2 + 624) = *(a1 + 4368);
  *(a2 + 628) = *(a1 + 4372);
  *(a2 + 632) = *(a1 + 4376);
  *(a2 + 636) = *(a1 + 4380);
  *(a2 + 640) = *(a1 + 4384);
  *(a2 + 644) = *(a1 + 4388);
  *(a2 + 648) = *(a1 + 4392);
  *(a2 + 652) = *(a1 + 4396);
  *(a2 + 656) = *(a1 + 4400);
  *(a2 + 660) = *(a1 + 4404);
  *(a2 + 664) = *(a1 + 4408);
  *(a2 + 668) = *(a1 + 4412);
  *(a2 + 672) = *(a1 + 4416);
  *(a2 + 676) = *(a1 + 4420);
  *(a2 + 680) = *(a1 + 4424);
  *(a2 + 684) = *(a1 + 4428);
  *(a2 + 688) = *(a1 + 4432);
  *(a2 + 692) = *(a1 + 4436);
  *(a2 + 696) = *(a1 + 4440);
  *(a2 + 700) = *(a1 + 4444);
  *(a2 + 704) = *(a1 + 4448);
  *(a2 + 708) = *(a1 + 4452);
  *(a2 + 712) = *(a1 + 4456);
  *(a2 + 716) = *(a1 + 4460);
  *(a2 + 720) = *(a1 + 4464);
  *(a2 + 724) = *(a1 + 4468);
  *(a2 + 728) = *(a1 + 4472);
  *(a2 + 732) = *(a1 + 4476);
  *(a2 + 736) = *(a1 + 4480);
  *(a2 + 740) = *(a1 + 4484);
  *(a2 + 744) = *(a1 + 4488);
  *(a2 + 748) = *(a1 + 4492);
  *(a2 + 752) = *(a1 + 4496);
  *(a2 + 756) = *(a1 + 4500);
  *(a2 + 760) = *(a1 + 4504);
  *(a2 + 764) = *(a1 + 4508);
  v159 = a2 - a1;
  if (a2 - a1 - 3212 > 0x1F)
  {
    v161 = *(a1 + 4528);
    *(a2 + 1300) = *(a1 + 4512);
    *(a2 + 1316) = v161;
    v162 = *(a1 + 4560);
    *(a2 + 1332) = *(a1 + 4544);
    *(a2 + 1348) = v162;
    v163 = *(a1 + 4592);
    *(a2 + 1364) = *(a1 + 4576);
    *(a2 + 1380) = v163;
    v164 = *(a1 + 4624);
    *(a2 + 1396) = *(a1 + 4608);
    *(a2 + 1412) = v164;
    v165 = *(a1 + 4656);
    *(a2 + 1428) = *(a1 + 4640);
    *(a2 + 1444) = v165;
    v166 = *(a1 + 4688);
    *(a2 + 1460) = *(a1 + 4672);
    *(a2 + 1476) = v166;
    v167 = *(a1 + 4720);
    *(a2 + 1492) = *(a1 + 4704);
    *(a2 + 1508) = v167;
    result = *(a1 + 4736);
    v168 = *(a1 + 4752);
    *(a2 + 1524) = result;
    *(a2 + 1540) = v168;
  }

  else
  {
    for (i = 0; i != 256; i += 4)
    {
      *(a2 + 1300 + i) = *(a1 + 4512 + i);
    }
  }

  if (v159 - 2680 > 0x1F)
  {
    v170 = *(a1 + 4784);
    *v43 = *(a1 + 4768);
    *(a2 + 2104) = v170;
    v171 = *(a1 + 4816);
    *(a2 + 2120) = *(a1 + 4800);
    *(a2 + 2136) = v171;
    v172 = *(a1 + 4848);
    *(a2 + 2152) = *(a1 + 4832);
    *(a2 + 2168) = v172;
    v173 = *(a1 + 4880);
    *(a2 + 2184) = *(a1 + 4864);
    *(a2 + 2200) = v173;
    v174 = *(a1 + 4912);
    *(a2 + 2216) = *(a1 + 4896);
    *(a2 + 2232) = v174;
    v175 = *(a1 + 4944);
    *(a2 + 2248) = *(a1 + 4928);
    *(a2 + 2264) = v175;
    v176 = *(a1 + 4976);
    *(a2 + 2280) = *(a1 + 4960);
    *(a2 + 2296) = v176;
    result = *(a1 + 4992);
    v177 = *(a1 + 5008);
    *(a2 + 2312) = result;
    *(a2 + 2328) = v177;
  }

  else
  {
    for (j = 0; j != 256; j += 4)
    {
      *(a2 + 2088 + j) = *(a1 + 4768 + j);
    }
  }

  if (v159 - 2148 > 0x1F)
  {
    v179 = *(a1 + 5040);
    *v63 = *(a1 + 5024);
    *(a2 + 2892) = v179;
    v180 = *(a1 + 5072);
    *(a2 + 2908) = *(a1 + 5056);
    *(a2 + 2924) = v180;
    v181 = *(a1 + 5104);
    *(a2 + 2940) = *(a1 + 5088);
    *(a2 + 2956) = v181;
    v182 = *(a1 + 5136);
    *(a2 + 2972) = *(a1 + 5120);
    *(a2 + 2988) = v182;
    v183 = *(a1 + 5168);
    *(a2 + 3004) = *(a1 + 5152);
    *(a2 + 3020) = v183;
    v184 = *(a1 + 5200);
    *(a2 + 3036) = *(a1 + 5184);
    *(a2 + 3052) = v184;
    v185 = *(a1 + 5232);
    *(a2 + 3068) = *(a1 + 5216);
    *(a2 + 3084) = v185;
    result = *(a1 + 5248);
    v186 = *(a1 + 5264);
    *(a2 + 3100) = result;
    *(a2 + 3116) = v186;
  }

  else
  {
    for (k = 0; k != 256; k += 4)
    {
      *(a2 + 2876 + k) = *(a1 + 5024 + k);
    }
  }

  if (v159 - 1616 > 0x1F)
  {
    v188 = *(a1 + 5296);
    *(a2 + 3664) = *(a1 + 5280);
    *(a2 + 3680) = v188;
    v189 = *(a1 + 5328);
    *(a2 + 3696) = *(a1 + 5312);
    *(a2 + 3712) = v189;
    v190 = *(a1 + 5360);
    *(a2 + 3728) = *(a1 + 5344);
    *(a2 + 3744) = v190;
    v191 = *(a1 + 5392);
    *(a2 + 3760) = *(a1 + 5376);
    *(a2 + 3776) = v191;
    v192 = *(a1 + 5424);
    *(a2 + 3792) = *(a1 + 5408);
    *(a2 + 3808) = v192;
    v193 = *(a1 + 5456);
    *(a2 + 3824) = *(a1 + 5440);
    *(a2 + 3840) = v193;
    v194 = *(a1 + 5488);
    *(a2 + 3856) = *(a1 + 5472);
    *(a2 + 3872) = v194;
    result = *(a1 + 5504);
    v195 = *(a1 + 5520);
    *(a2 + 3888) = result;
    *(a2 + 3904) = v195;
  }

  else
  {
    for (m = 0; m != 256; m += 4)
    {
      *(a2 + 3664 + m) = *(a1 + 5280 + m);
    }
  }

  if (v159 - 1084 > 0x1F)
  {
    v197 = *(a1 + 5552);
    *(a2 + 4452) = *(a1 + 5536);
    *(a2 + 4468) = v197;
    v198 = *(a1 + 5584);
    *(a2 + 4484) = *(a1 + 5568);
    *(a2 + 4500) = v198;
    v199 = *(a1 + 5616);
    *(a2 + 4516) = *(a1 + 5600);
    *(a2 + 4532) = v199;
    v200 = *(a1 + 5648);
    *(a2 + 4548) = *(a1 + 5632);
    *(a2 + 4564) = v200;
    v201 = *(a1 + 5680);
    *(a2 + 4580) = *(a1 + 5664);
    *(a2 + 4596) = v201;
    v202 = *(a1 + 5712);
    *(a2 + 4612) = *(a1 + 5696);
    *(a2 + 4628) = v202;
    v203 = *(a1 + 5744);
    *(a2 + 4644) = *(a1 + 5728);
    *(a2 + 4660) = v203;
    result = *(a1 + 5760);
    v204 = *(a1 + 5776);
    *(a2 + 4676) = result;
    *(a2 + 4692) = v204;
  }

  else
  {
    for (n = 0; n != 256; n += 4)
    {
      *(a2 + 4452 + n) = *(a1 + 5536 + n);
    }
  }

  if (v159 - 552 > 0x1F)
  {
    v206 = *(a1 + 5808);
    *(a2 + 5240) = *(a1 + 5792);
    *(a2 + 5256) = v206;
    v207 = *(a1 + 5840);
    *(a2 + 5272) = *(a1 + 5824);
    *(a2 + 5288) = v207;
    v208 = *(a1 + 5872);
    *(a2 + 5304) = *(a1 + 5856);
    *(a2 + 5320) = v208;
    v209 = *(a1 + 5904);
    *(a2 + 5336) = *(a1 + 5888);
    *(a2 + 5352) = v209;
    v210 = *(a1 + 5936);
    *(a2 + 5368) = *(a1 + 5920);
    *(a2 + 5384) = v210;
    v211 = *(a1 + 5968);
    *(a2 + 5400) = *(a1 + 5952);
    *(a2 + 5416) = v211;
    v212 = *(a1 + 6000);
    *(a2 + 5432) = *(a1 + 5984);
    *(a2 + 5448) = v212;
    result = *(a1 + 6016);
    v213 = *(a1 + 6032);
    *(a2 + 5464) = result;
    *(a2 + 5480) = v213;
  }

  else
  {
    for (ii = 0; ii != 256; ii += 4)
    {
      *(a2 + 5240 + ii) = *(a1 + 5792 + ii);
    }
  }

  if (v159 - 20 > 0x1F)
  {
    v215 = *(a1 + 6064);
    *v140 = *(a1 + 6048);
    *(a2 + 6044) = v215;
    v216 = *(a1 + 6096);
    *(a2 + 6060) = *(a1 + 6080);
    *(a2 + 6076) = v216;
    v217 = *(a1 + 6128);
    *(a2 + 6092) = *(a1 + 6112);
    *(a2 + 6108) = v217;
    v218 = *(a1 + 6160);
    *(a2 + 6124) = *(a1 + 6144);
    *(a2 + 6140) = v218;
    v219 = *(a1 + 6192);
    *(a2 + 6156) = *(a1 + 6176);
    *(a2 + 6172) = v219;
    v220 = *(a1 + 6224);
    *(a2 + 6188) = *(a1 + 6208);
    *(a2 + 6204) = v220;
    v221 = *(a1 + 6256);
    *(a2 + 6220) = *(a1 + 6240);
    *(a2 + 6236) = v221;
    result = *(a1 + 6272);
    v222 = *(a1 + 6288);
    *(a2 + 6252) = result;
    *(a2 + 6268) = v222;
  }

  else
  {
    for (jj = 0; jj != 256; jj += 4)
    {
      result.n128_u32[0] = *(a1 + 6048 + jj);
      *(a2 + 6028 + jj) = result.n128_u32[0];
    }
  }

  return result;
}

uint64_t getBlobAsExact<jlps_v100>(uint64_t a1)
{
  v22 = 4;
  strcpy(__s2, "jlps");
  v1 = a1 + 8;
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = a1 + 8;
    do
    {
      v4 = *(v2 + 55);
      v5 = v4;
      if ((v4 & 0x80u) != 0)
      {
        v4 = *(v2 + 40);
      }

      if (v5 >= 0)
      {
        v6 = (v2 + 32);
      }

      else
      {
        v6 = *(v2 + 32);
      }

      if (v4 >= 4)
      {
        v7 = 4;
      }

      else
      {
        v7 = v4;
      }

      v8 = v4 < 4;
      v9 = memcmp(v6, __s2, v7);
      v10 = v9 < 0;
      if (!v9)
      {
        v10 = v8;
      }

      v11 = !v10;
      if (v10)
      {
        v12 = 8;
      }

      else
      {
        v12 = 0;
      }

      if (v11)
      {
        v3 = v2;
      }

      v2 = *(v2 + v12);
    }

    while (v2);
    if (v3 != v1)
    {
      v13 = *(v3 + 55);
      v14 = v13;
      if ((v13 & 0x80u) != 0)
      {
        v13 = *(v3 + 40);
      }

      if (v14 >= 0)
      {
        v15 = (v3 + 32);
      }

      else
      {
        v15 = *(v3 + 32);
      }

      if (v13 >= 4)
      {
        v16 = 4;
      }

      else
      {
        v16 = v13;
      }

      v17 = v13 > 4;
      v18 = memcmp(__s2, v15, v16);
      v19 = v18 < 0;
      if (!v18)
      {
        v19 = v17;
      }

      if (!v19 && v3 != v1)
      {
        if (*(v3 + 64) == 8532)
        {
          operator new();
        }

        peridot_depth_log("%s: blob of wrong size (%lu bytes - expected it to be %lu)", "jlps", *(v3 + 64), 8532);
      }
    }
  }

  return 0;
}

float copyPulseShapeData_v100<jlps_v100_ps>(unint64_t a1, unint64_t a2)
{
  v2 = (a2 + 788);
  if (a1 + 2464 <= a2 || a2 + 512 <= a1)
  {
    v6 = *(a1 + 16);
    *a2 = *a1;
    *(a2 + 16) = v6;
    v7 = *(a1 + 2224);
    *(a2 + 256) = *(a1 + 2208);
    *(a2 + 272) = v7;
    v8 = *(a1 + 48);
    *(a2 + 32) = *(a1 + 32);
    *(a2 + 48) = v8;
    v9 = *(a1 + 2256);
    *(a2 + 288) = *(a1 + 2240);
    *(a2 + 304) = v9;
    v10 = *(a1 + 80);
    *(a2 + 64) = *(a1 + 64);
    *(a2 + 80) = v10;
    v11 = *(a1 + 2288);
    *(a2 + 320) = *(a1 + 2272);
    *(a2 + 336) = v11;
    v12 = *(a1 + 112);
    *(a2 + 96) = *(a1 + 96);
    *(a2 + 112) = v12;
    v13 = *(a1 + 2320);
    *(a2 + 352) = *(a1 + 2304);
    *(a2 + 368) = v13;
    v14 = *(a1 + 144);
    *(a2 + 128) = *(a1 + 128);
    *(a2 + 144) = v14;
    v15 = *(a1 + 2352);
    *(a2 + 384) = *(a1 + 2336);
    *(a2 + 400) = v15;
    v16 = *(a1 + 176);
    *(a2 + 160) = *(a1 + 160);
    *(a2 + 176) = v16;
    v17 = *(a1 + 2384);
    *(a2 + 416) = *(a1 + 2368);
    *(a2 + 432) = v17;
    v18 = *(a1 + 208);
    *(a2 + 192) = *(a1 + 192);
    *(a2 + 208) = v18;
    v19 = *(a1 + 2416);
    *(a2 + 448) = *(a1 + 2400);
    *(a2 + 464) = v19;
    v20 = *(a1 + 240);
    *(a2 + 224) = *(a1 + 224);
    *(a2 + 240) = v20;
    v21 = *(a1 + 2448);
    *(a2 + 480) = *(a1 + 2432);
    *(a2 + 496) = v21;
  }

  else
  {
    v3 = (a2 + 256);
    v4 = 64;
    v5 = a1;
    do
    {
      *(v3 - 64) = *v5;
      *v3++ = v5[552];
      ++v5;
      --v4;
    }

    while (v4);
  }

  *(a2 + 768) = *(a1 + 2048);
  *(a2 + 772) = *(a1 + 2052);
  *(a2 + 776) = *(a1 + 2056);
  *(a2 + 780) = *(a1 + 2060);
  *(a2 + 784) = *(a1 + 2064);
  if (v2 >= a1 + 2720 || a1 + 256 >= a2 + 1300)
  {
    v25 = *(a1 + 272);
    *v2 = *(a1 + 256);
    *(a2 + 804) = v25;
    v26 = *(a1 + 2480);
    *(a2 + 1044) = *(a1 + 2464);
    *(a2 + 1060) = v26;
    v27 = *(a1 + 304);
    *(a2 + 820) = *(a1 + 288);
    *(a2 + 836) = v27;
    v28 = *(a1 + 2512);
    *(a2 + 1076) = *(a1 + 2496);
    *(a2 + 1092) = v28;
    v29 = *(a1 + 336);
    *(a2 + 852) = *(a1 + 320);
    *(a2 + 868) = v29;
    v30 = *(a1 + 2544);
    *(a2 + 1108) = *(a1 + 2528);
    *(a2 + 1124) = v30;
    v31 = *(a1 + 368);
    *(a2 + 884) = *(a1 + 352);
    *(a2 + 900) = v31;
    v32 = *(a1 + 2576);
    *(a2 + 1140) = *(a1 + 2560);
    *(a2 + 1156) = v32;
    v33 = *(a1 + 400);
    *(a2 + 916) = *(a1 + 384);
    *(a2 + 932) = v33;
    v34 = *(a1 + 2608);
    *(a2 + 1172) = *(a1 + 2592);
    *(a2 + 1188) = v34;
    v35 = *(a1 + 432);
    *(a2 + 948) = *(a1 + 416);
    *(a2 + 964) = v35;
    v36 = *(a1 + 2640);
    *(a2 + 1204) = *(a1 + 2624);
    *(a2 + 1220) = v36;
    v37 = *(a1 + 464);
    *(a2 + 980) = *(a1 + 448);
    *(a2 + 996) = v37;
    v38 = *(a1 + 2672);
    *(a2 + 1236) = *(a1 + 2656);
    *(a2 + 1252) = v38;
    v39 = *(a1 + 496);
    *(a2 + 1012) = *(a1 + 480);
    *(a2 + 1028) = v39;
    v40 = *(a1 + 2704);
    *(a2 + 1268) = *(a1 + 2688);
    *(a2 + 1284) = v40;
  }

  else
  {
    v22 = (a2 + 1044);
    v23 = 64;
    v24 = a1;
    do
    {
      *(v22 - 64) = *(v24 + 256);
      *v22++ = *(v24 + 2464);
      v24 += 4;
      --v23;
    }

    while (v23);
  }

  *(a2 + 1556) = *(a1 + 2068);
  *(a2 + 1560) = *(a1 + 2072);
  *(a2 + 1564) = *(a1 + 2076);
  *(a2 + 1568) = *(a1 + 2080);
  *(a2 + 1572) = *(a1 + 2084);
  v41 = (a2 + 1832);
  if (a2 + 1576 >= a1 + 2976 || a1 + 512 >= a2 + 2088)
  {
    v44 = *(a1 + 528);
    *(a2 + 1576) = *(a1 + 512);
    *(a2 + 1592) = v44;
    v45 = *(a1 + 2736);
    *v41 = *(a1 + 2720);
    *(a2 + 1848) = v45;
    v46 = *(a1 + 560);
    *(a2 + 1608) = *(a1 + 544);
    *(a2 + 1624) = v46;
    v47 = *(a1 + 2768);
    *(a2 + 1864) = *(a1 + 2752);
    *(a2 + 1880) = v47;
    v48 = *(a1 + 592);
    *(a2 + 1640) = *(a1 + 576);
    *(a2 + 1656) = v48;
    v49 = *(a1 + 2800);
    *(a2 + 1896) = *(a1 + 2784);
    *(a2 + 1912) = v49;
    v50 = *(a1 + 624);
    *(a2 + 1672) = *(a1 + 608);
    *(a2 + 1688) = v50;
    v51 = *(a1 + 2832);
    *(a2 + 1928) = *(a1 + 2816);
    *(a2 + 1944) = v51;
    v52 = *(a1 + 656);
    *(a2 + 1704) = *(a1 + 640);
    *(a2 + 1720) = v52;
    v53 = *(a1 + 2864);
    *(a2 + 1960) = *(a1 + 2848);
    *(a2 + 1976) = v53;
    v54 = *(a1 + 688);
    *(a2 + 1736) = *(a1 + 672);
    *(a2 + 1752) = v54;
    v55 = *(a1 + 2896);
    *(a2 + 1992) = *(a1 + 2880);
    *(a2 + 2008) = v55;
    v56 = *(a1 + 720);
    *(a2 + 1768) = *(a1 + 704);
    *(a2 + 1784) = v56;
    v57 = *(a1 + 2928);
    *(a2 + 2024) = *(a1 + 2912);
    *(a2 + 2040) = v57;
    v58 = *(a1 + 752);
    *(a2 + 1800) = *(a1 + 736);
    *(a2 + 1816) = v58;
    v59 = *(a1 + 2960);
    *(a2 + 2056) = *(a1 + 2944);
    *(a2 + 2072) = v59;
  }

  else
  {
    v42 = 64;
    v43 = a1;
    do
    {
      *(v41 - 64) = *(v43 + 512);
      *v41 = *(v43 + 2720);
      v41 = (v41 + 4);
      v43 += 4;
      --v42;
    }

    while (v42);
  }

  *(a2 + 2344) = *(a1 + 2088);
  *(a2 + 2348) = *(a1 + 2092);
  *(a2 + 2352) = *(a1 + 2096);
  *(a2 + 2356) = *(a1 + 2100);
  *(a2 + 2360) = *(a1 + 2104);
  v60 = (a2 + 2620);
  if (a2 + 2364 >= a1 + 3232 || a1 + 768 >= a2 + 2876)
  {
    v63 = *(a1 + 784);
    *(a2 + 2364) = *(a1 + 768);
    *(a2 + 2380) = v63;
    v64 = *(a1 + 2992);
    *v60 = *(a1 + 2976);
    *(a2 + 2636) = v64;
    v65 = *(a1 + 816);
    *(a2 + 2396) = *(a1 + 800);
    *(a2 + 2412) = v65;
    v66 = *(a1 + 3024);
    *(a2 + 2652) = *(a1 + 3008);
    *(a2 + 2668) = v66;
    v67 = *(a1 + 848);
    *(a2 + 2428) = *(a1 + 832);
    *(a2 + 2444) = v67;
    v68 = *(a1 + 3056);
    *(a2 + 2684) = *(a1 + 3040);
    *(a2 + 2700) = v68;
    v69 = *(a1 + 880);
    *(a2 + 2460) = *(a1 + 864);
    *(a2 + 2476) = v69;
    v70 = *(a1 + 3088);
    *(a2 + 2716) = *(a1 + 3072);
    *(a2 + 2732) = v70;
    v71 = *(a1 + 912);
    *(a2 + 2492) = *(a1 + 896);
    *(a2 + 2508) = v71;
    v72 = *(a1 + 3120);
    *(a2 + 2748) = *(a1 + 3104);
    *(a2 + 2764) = v72;
    v73 = *(a1 + 944);
    *(a2 + 2524) = *(a1 + 928);
    *(a2 + 2540) = v73;
    v74 = *(a1 + 3152);
    *(a2 + 2780) = *(a1 + 3136);
    *(a2 + 2796) = v74;
    v75 = *(a1 + 976);
    *(a2 + 2556) = *(a1 + 960);
    *(a2 + 2572) = v75;
    v76 = *(a1 + 3184);
    *(a2 + 2812) = *(a1 + 3168);
    *(a2 + 2828) = v76;
    v77 = *(a1 + 1008);
    *(a2 + 2588) = *(a1 + 992);
    *(a2 + 2604) = v77;
    v78 = *(a1 + 3216);
    *(a2 + 2844) = *(a1 + 3200);
    *(a2 + 2860) = v78;
  }

  else
  {
    v61 = 64;
    v62 = a1;
    do
    {
      *(v60 - 64) = *(v62 + 768);
      *v60 = *(v62 + 2976);
      v60 = (v60 + 4);
      v62 += 4;
      --v61;
    }

    while (v61);
  }

  *(a2 + 3132) = *(a1 + 2108);
  *(a2 + 3136) = *(a1 + 2112);
  *(a2 + 3140) = *(a1 + 2116);
  *(a2 + 3144) = *(a1 + 2120);
  *(a2 + 3148) = *(a1 + 2124);
  if (a2 + 3152 >= a1 + 3488 || a1 + 1024 >= a2 + 3664)
  {
    v82 = *(a1 + 1040);
    *(a2 + 3152) = *(a1 + 1024);
    *(a2 + 3168) = v82;
    v83 = *(a1 + 3248);
    *(a2 + 3408) = *(a1 + 3232);
    *(a2 + 3424) = v83;
    v84 = *(a1 + 1072);
    *(a2 + 3184) = *(a1 + 1056);
    *(a2 + 3200) = v84;
    v85 = *(a1 + 3280);
    *(a2 + 3440) = *(a1 + 3264);
    *(a2 + 3456) = v85;
    v86 = *(a1 + 1104);
    *(a2 + 3216) = *(a1 + 1088);
    *(a2 + 3232) = v86;
    v87 = *(a1 + 3312);
    *(a2 + 3472) = *(a1 + 3296);
    *(a2 + 3488) = v87;
    v88 = *(a1 + 1136);
    *(a2 + 3248) = *(a1 + 1120);
    *(a2 + 3264) = v88;
    v89 = *(a1 + 3344);
    *(a2 + 3504) = *(a1 + 3328);
    *(a2 + 3520) = v89;
    v90 = *(a1 + 1168);
    *(a2 + 3280) = *(a1 + 1152);
    *(a2 + 3296) = v90;
    v91 = *(a1 + 3376);
    *(a2 + 3536) = *(a1 + 3360);
    *(a2 + 3552) = v91;
    v92 = *(a1 + 1200);
    *(a2 + 3312) = *(a1 + 1184);
    *(a2 + 3328) = v92;
    v93 = *(a1 + 3408);
    *(a2 + 3568) = *(a1 + 3392);
    *(a2 + 3584) = v93;
    v94 = *(a1 + 1232);
    *(a2 + 3344) = *(a1 + 1216);
    *(a2 + 3360) = v94;
    v95 = *(a1 + 3440);
    *(a2 + 3600) = *(a1 + 3424);
    *(a2 + 3616) = v95;
    v96 = *(a1 + 1264);
    *(a2 + 3376) = *(a1 + 1248);
    *(a2 + 3392) = v96;
    v97 = *(a1 + 3472);
    *(a2 + 3632) = *(a1 + 3456);
    *(a2 + 3648) = v97;
  }

  else
  {
    v79 = (a2 + 3408);
    v80 = 64;
    v81 = a1;
    do
    {
      *(v79 - 64) = *(v81 + 1024);
      *v79++ = *(v81 + 3232);
      v81 += 4;
      --v80;
    }

    while (v80);
  }

  *(a2 + 3920) = *(a1 + 2128);
  *(a2 + 3924) = *(a1 + 2132);
  *(a2 + 3928) = *(a1 + 2136);
  *(a2 + 3932) = *(a1 + 2140);
  *(a2 + 3936) = *(a1 + 2144);
  if (a2 + 3940 >= a1 + 3744 || a1 + 1280 >= a2 + 4452)
  {
    v101 = *(a1 + 1296);
    *(a2 + 3940) = *(a1 + 1280);
    *(a2 + 3956) = v101;
    v102 = *(a1 + 3504);
    *(a2 + 4196) = *(a1 + 3488);
    *(a2 + 4212) = v102;
    v103 = *(a1 + 1328);
    *(a2 + 3972) = *(a1 + 1312);
    *(a2 + 3988) = v103;
    v104 = *(a1 + 3536);
    *(a2 + 4228) = *(a1 + 3520);
    *(a2 + 4244) = v104;
    v105 = *(a1 + 1360);
    *(a2 + 4004) = *(a1 + 1344);
    *(a2 + 4020) = v105;
    v106 = *(a1 + 3568);
    *(a2 + 4260) = *(a1 + 3552);
    *(a2 + 4276) = v106;
    v107 = *(a1 + 1392);
    *(a2 + 4036) = *(a1 + 1376);
    *(a2 + 4052) = v107;
    v108 = *(a1 + 3600);
    *(a2 + 4292) = *(a1 + 3584);
    *(a2 + 4308) = v108;
    v109 = *(a1 + 1424);
    *(a2 + 4068) = *(a1 + 1408);
    *(a2 + 4084) = v109;
    v110 = *(a1 + 3632);
    *(a2 + 4324) = *(a1 + 3616);
    *(a2 + 4340) = v110;
    v111 = *(a1 + 1456);
    *(a2 + 4100) = *(a1 + 1440);
    *(a2 + 4116) = v111;
    v112 = *(a1 + 3664);
    *(a2 + 4356) = *(a1 + 3648);
    *(a2 + 4372) = v112;
    v113 = *(a1 + 1488);
    *(a2 + 4132) = *(a1 + 1472);
    *(a2 + 4148) = v113;
    v114 = *(a1 + 3696);
    *(a2 + 4388) = *(a1 + 3680);
    *(a2 + 4404) = v114;
    v115 = *(a1 + 1520);
    *(a2 + 4164) = *(a1 + 1504);
    *(a2 + 4180) = v115;
    v116 = *(a1 + 3728);
    *(a2 + 4420) = *(a1 + 3712);
    *(a2 + 4436) = v116;
  }

  else
  {
    v98 = (a2 + 4196);
    v99 = 64;
    v100 = a1;
    do
    {
      *(v98 - 64) = *(v100 + 1280);
      *v98++ = *(v100 + 3488);
      v100 += 4;
      --v99;
    }

    while (v99);
  }

  *(a2 + 4708) = *(a1 + 2148);
  *(a2 + 4712) = *(a1 + 2152);
  *(a2 + 4716) = *(a1 + 2156);
  *(a2 + 4720) = *(a1 + 2160);
  *(a2 + 4724) = *(a1 + 2164);
  if (a2 + 4728 >= a1 + 4000 || a1 + 1536 >= a2 + 5240)
  {
    v120 = *(a1 + 1552);
    *(a2 + 4728) = *(a1 + 1536);
    *(a2 + 4744) = v120;
    v121 = *(a1 + 3760);
    *(a2 + 4984) = *(a1 + 3744);
    *(a2 + 5000) = v121;
    v122 = *(a1 + 1584);
    *(a2 + 4760) = *(a1 + 1568);
    *(a2 + 4776) = v122;
    v123 = *(a1 + 3792);
    *(a2 + 5016) = *(a1 + 3776);
    *(a2 + 5032) = v123;
    v124 = *(a1 + 1616);
    *(a2 + 4792) = *(a1 + 1600);
    *(a2 + 4808) = v124;
    v125 = *(a1 + 3824);
    *(a2 + 5048) = *(a1 + 3808);
    *(a2 + 5064) = v125;
    v126 = *(a1 + 1648);
    *(a2 + 4824) = *(a1 + 1632);
    *(a2 + 4840) = v126;
    v127 = *(a1 + 3856);
    *(a2 + 5080) = *(a1 + 3840);
    *(a2 + 5096) = v127;
    v128 = *(a1 + 1680);
    *(a2 + 4856) = *(a1 + 1664);
    *(a2 + 4872) = v128;
    v129 = *(a1 + 3888);
    *(a2 + 5112) = *(a1 + 3872);
    *(a2 + 5128) = v129;
    v130 = *(a1 + 1712);
    *(a2 + 4888) = *(a1 + 1696);
    *(a2 + 4904) = v130;
    v131 = *(a1 + 3920);
    *(a2 + 5144) = *(a1 + 3904);
    *(a2 + 5160) = v131;
    v132 = *(a1 + 1744);
    *(a2 + 4920) = *(a1 + 1728);
    *(a2 + 4936) = v132;
    v133 = *(a1 + 3952);
    *(a2 + 5176) = *(a1 + 3936);
    *(a2 + 5192) = v133;
    v134 = *(a1 + 1776);
    *(a2 + 4952) = *(a1 + 1760);
    *(a2 + 4968) = v134;
    v135 = *(a1 + 3984);
    *(a2 + 5208) = *(a1 + 3968);
    *(a2 + 5224) = v135;
  }

  else
  {
    v117 = (a2 + 4984);
    v118 = 64;
    v119 = a1;
    do
    {
      *(v117 - 64) = *(v119 + 1536);
      *v117++ = *(v119 + 3744);
      v119 += 4;
      --v118;
    }

    while (v118);
  }

  *(a2 + 5496) = *(a1 + 2168);
  *(a2 + 5500) = *(a1 + 2172);
  *(a2 + 5504) = *(a1 + 2176);
  *(a2 + 5508) = *(a1 + 2180);
  *(a2 + 5512) = *(a1 + 2184);
  v136 = (a2 + 5772);
  if (a2 + 5516 >= a1 + 4256 || a1 + 1792 >= a2 + 6028)
  {
    v139 = *(a1 + 1808);
    *(a2 + 5516) = *(a1 + 1792);
    *(a2 + 5532) = v139;
    v140 = *(a1 + 4016);
    *v136 = *(a1 + 4000);
    *(a2 + 5788) = v140;
    v141 = *(a1 + 1840);
    *(a2 + 5548) = *(a1 + 1824);
    *(a2 + 5564) = v141;
    v142 = *(a1 + 4048);
    *(a2 + 5804) = *(a1 + 4032);
    *(a2 + 5820) = v142;
    v143 = *(a1 + 1872);
    *(a2 + 5580) = *(a1 + 1856);
    *(a2 + 5596) = v143;
    v144 = *(a1 + 4080);
    *(a2 + 5836) = *(a1 + 4064);
    *(a2 + 5852) = v144;
    v145 = *(a1 + 1904);
    *(a2 + 5612) = *(a1 + 1888);
    *(a2 + 5628) = v145;
    v146 = *(a1 + 4112);
    *(a2 + 5868) = *(a1 + 4096);
    *(a2 + 5884) = v146;
    v147 = *(a1 + 1936);
    *(a2 + 5644) = *(a1 + 1920);
    *(a2 + 5660) = v147;
    v148 = *(a1 + 4144);
    *(a2 + 5900) = *(a1 + 4128);
    *(a2 + 5916) = v148;
    v149 = *(a1 + 1968);
    *(a2 + 5676) = *(a1 + 1952);
    *(a2 + 5692) = v149;
    v150 = *(a1 + 4176);
    *(a2 + 5932) = *(a1 + 4160);
    *(a2 + 5948) = v150;
    v151 = *(a1 + 2000);
    *(a2 + 5708) = *(a1 + 1984);
    *(a2 + 5724) = v151;
    v152 = *(a1 + 4208);
    *(a2 + 5964) = *(a1 + 4192);
    *(a2 + 5980) = v152;
    v153 = *(a1 + 2032);
    *(a2 + 5740) = *(a1 + 2016);
    *(a2 + 5756) = v153;
    v154 = *(a1 + 4240);
    *(a2 + 5996) = *(a1 + 4224);
    *(a2 + 6012) = v154;
  }

  else
  {
    v137 = 64;
    v138 = a1;
    do
    {
      *(v136 - 64) = *(v138 + 1792);
      *v136 = *(v138 + 4000);
      v136 = (v136 + 4);
      v138 += 4;
      --v137;
    }

    while (v137);
  }

  *(a2 + 6284) = *(a1 + 2188);
  *(a2 + 6288) = *(a1 + 2192);
  *(a2 + 6292) = *(a1 + 2196);
  *(a2 + 6296) = *(a1 + 2200);
  result = *(a1 + 2204);
  *(a2 + 6300) = result;
  return result;
}

uint64_t getBlobAsExact<jlnm_v102>(uint64_t a1)
{
  v22 = 4;
  strcpy(__s2, "jlnm");
  v1 = a1 + 8;
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = a1 + 8;
    do
    {
      v4 = *(v2 + 55);
      v5 = v4;
      if ((v4 & 0x80u) != 0)
      {
        v4 = *(v2 + 40);
      }

      if (v5 >= 0)
      {
        v6 = (v2 + 32);
      }

      else
      {
        v6 = *(v2 + 32);
      }

      if (v4 >= 4)
      {
        v7 = 4;
      }

      else
      {
        v7 = v4;
      }

      v8 = v4 < 4;
      v9 = memcmp(v6, __s2, v7);
      v10 = v9 < 0;
      if (!v9)
      {
        v10 = v8;
      }

      v11 = !v10;
      if (v10)
      {
        v12 = 8;
      }

      else
      {
        v12 = 0;
      }

      if (v11)
      {
        v3 = v2;
      }

      v2 = *(v2 + v12);
    }

    while (v2);
    if (v3 != v1)
    {
      v13 = *(v3 + 55);
      v14 = v13;
      if ((v13 & 0x80u) != 0)
      {
        v13 = *(v3 + 40);
      }

      if (v14 >= 0)
      {
        v15 = (v3 + 32);
      }

      else
      {
        v15 = *(v3 + 32);
      }

      if (v13 >= 4)
      {
        v16 = 4;
      }

      else
      {
        v16 = v13;
      }

      v17 = v13 > 4;
      v18 = memcmp(__s2, v15, v16);
      v19 = v18 < 0;
      if (!v18)
      {
        v19 = v17;
      }

      if (!v19 && v3 != v1)
      {
        if (*(v3 + 64) == 75388)
        {
          operator new();
        }

        peridot_depth_log("%s: blob of wrong size (%lu bytes - expected it to be %lu)", "jlnm", *(v3 + 64), 75388);
      }
    }
  }

  return 0;
}

void readJLNM_v102_stray_map(unsigned __int8 *a1, float *a2)
{
  v2 = 0;
  v75 = a2 + 76571;
  v67 = a2 + 39883;
  v3 = a2 + 30711;
  v4 = a2 + 21539;
  v5 = a2 + 12367;
  v73 = a2 + 67399;
  v74 = a1 + 66300;
  v71 = a2 + 58227;
  v72 = a1 + 57228;
  v69 = a2 + 49055;
  v70 = a1 + 48156;
  v68 = a1 + 39084;
  v66 = a1 + 30012;
  v6 = a1 + 20940;
  v7 = a1 + 11868;
  v8 = a1 + 2796;
  do
  {
    v9 = v8;
    v10 = v5;
    v11 = 84;
    do
    {
      v12 = *v9;
      v9 += 108;
      v13 = pow(10000.0, v12 * 0.00392156863) * 0.00079999998;
      *v10 = v13;
      v10 += 108;
      --v11;
    }

    while (v11);
    ++v2;
    ++v5;
    ++v8;
  }

  while (v2 != 108);
  v14 = 0;
  v15 = v67;
  do
  {
    v16 = v7;
    v17 = v4;
    v18 = 84;
    do
    {
      v19 = *v16;
      v16 += 108;
      v20 = pow(10000.0, v19 * 0.00392156863) * 0.00079999998;
      *v17 = v20;
      v17 += 108;
      --v18;
    }

    while (v18);
    ++v14;
    ++v4;
    ++v7;
  }

  while (v14 != 108);
  v21 = 0;
  v22 = v72;
  do
  {
    v23 = v6;
    v24 = v3;
    v25 = 84;
    do
    {
      v26 = *v23;
      v23 += 108;
      v27 = pow(10000.0, v26 * 0.00392156863) * 0.00079999998;
      *v24 = v27;
      v24 += 108;
      --v25;
    }

    while (v25);
    ++v21;
    ++v3;
    ++v6;
  }

  while (v21 != 108);
  v28 = 0;
  v30 = v73;
  v29 = v74;
  v31 = v70;
  v32 = v66;
  do
  {
    v33 = v32;
    v34 = v15;
    v35 = 84;
    do
    {
      v36 = *v32;
      v32 += 108;
      v37 = pow(10000.0, v36 * 0.00392156863) * 0.00079999998;
      *v34 = v37;
      v34 += 108;
      --v35;
    }

    while (v35);
    ++v28;
    ++v15;
    v32 = v33 + 1;
  }

  while (v28 != 108);
  v38 = 0;
  v39 = v68;
  v40 = v69;
  do
  {
    v41 = v39;
    v42 = v40;
    v43 = 84;
    do
    {
      v44 = *v39;
      v39 += 108;
      v45 = pow(10000.0, v44 * 0.00392156863) * 0.00079999998;
      *v40 = v45;
      v40 += 108;
      --v43;
    }

    while (v43);
    ++v38;
    v40 = v42 + 1;
    v39 = v41 + 1;
  }

  while (v38 != 108);
  v46 = 0;
  v47 = v71;
  do
  {
    v48 = v31;
    v49 = v47;
    v50 = 84;
    do
    {
      v51 = *v48;
      v48 += 108;
      v52 = pow(10000.0, v51 * 0.00392156863) * 0.00079999998;
      *v49 = v52;
      v49 += 108;
      --v50;
    }

    while (v50);
    ++v46;
    ++v47;
    ++v31;
  }

  while (v46 != 108);
  v53 = 0;
  v54 = v75;
  do
  {
    v55 = v22;
    v56 = v30;
    v57 = 84;
    do
    {
      v58 = *v55;
      v55 += 108;
      v59 = pow(10000.0, v58 * 0.00392156863) * 0.00079999998;
      *v56 = v59;
      v56 += 108;
      --v57;
    }

    while (v57);
    ++v53;
    ++v30;
    ++v22;
  }

  while (v53 != 108);
  for (i = 0; i != 108; ++i)
  {
    v61 = v29;
    v62 = v54;
    v63 = 84;
    do
    {
      v64 = *v61;
      v61 += 108;
      v65 = pow(10000.0, v64 * 0.00392156863) * 0.00079999998;
      *v62 = v65;
      v62 += 108;
      --v63;
    }

    while (v63);
    ++v54;
    ++v29;
  }
}

uint64_t getBlobAsExact<jlnm_v101>(uint64_t a1)
{
  v22 = 4;
  strcpy(__s2, "jlnm");
  v1 = a1 + 8;
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = a1 + 8;
    do
    {
      v4 = *(v2 + 55);
      v5 = v4;
      if ((v4 & 0x80u) != 0)
      {
        v4 = *(v2 + 40);
      }

      if (v5 >= 0)
      {
        v6 = (v2 + 32);
      }

      else
      {
        v6 = *(v2 + 32);
      }

      if (v4 >= 4)
      {
        v7 = 4;
      }

      else
      {
        v7 = v4;
      }

      v8 = v4 < 4;
      v9 = memcmp(v6, __s2, v7);
      v10 = v9 < 0;
      if (!v9)
      {
        v10 = v8;
      }

      v11 = !v10;
      if (v10)
      {
        v12 = 8;
      }

      else
      {
        v12 = 0;
      }

      if (v11)
      {
        v3 = v2;
      }

      v2 = *(v2 + v12);
    }

    while (v2);
    if (v3 != v1)
    {
      v13 = *(v3 + 55);
      v14 = v13;
      if ((v13 & 0x80u) != 0)
      {
        v13 = *(v3 + 40);
      }

      if (v14 >= 0)
      {
        v15 = (v3 + 32);
      }

      else
      {
        v15 = *(v3 + 32);
      }

      if (v13 >= 4)
      {
        v16 = 4;
      }

      else
      {
        v16 = v13;
      }

      v17 = v13 > 4;
      v18 = memcmp(__s2, v15, v16);
      v19 = v18 < 0;
      if (!v18)
      {
        v19 = v17;
      }

      if (!v19 && v3 != v1)
      {
        if (*(v3 + 64) == 8160)
        {
          operator new();
        }

        peridot_depth_log("%s: blob of wrong size (%lu bytes - expected it to be %lu)", "jlnm", *(v3 + 64), 8160);
      }
    }
  }

  return 0;
}

double readJLNM_v100_v101<jlnm_v101>(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 32;
  v3 = 14;
  v4 = 49084;
  v5 = 49080;
  v6 = 49076;
  v7 = 49072;
  v8 = 49068;
  v9 = vdupq_n_s64(0x3F70000000000000uLL);
  v10 = 342588;
  do
  {
    *(a2 + v8) = *v2;
    v11 = vcvtd_n_f64_u32(*(v2 + 1), 5uLL);
    *(a2 + v7) = v11;
    *&v12 = vcvtd_n_f64_u32(*(v2 + 2), 5uLL);
    *(a2 + v6) = *&v12;
    LOBYTE(v12) = *(v2 + 3);
    *(a2 + v5) = v12;
    v13 = a2 + v4;
    v14 = *(v2 + 12);
    *(v13 + 8) = *(v2 + 20);
    *v13 = v14;
    v15 = (a2 + v10);
    v16.i64[0] = *(v2 + 4);
    v16.i64[1] = *(v2 + 6);
    v15[113] = vcvt_f32_f64(vmulq_f64(vcvtq_f64_s64(v16), v9));
    v16.i64[0] = *(v2 + 8);
    v16.i64[1] = *(v2 + 10);
    v10 += 8;
    v2 += 32;
    v4 += 28;
    v5 += 28;
    *v15 = vcvt_f32_f64(vmulq_f64(vcvtq_f64_s64(v16), v9));
    v6 += 28;
    v7 += 28;
    v8 += 28;
    --v3;
  }

  while (v3);
  v17 = 85756;
  v18 = 85760;
  v19 = 85764;
  v20 = 85768;
  v21 = 85772;
  v22 = 342700;
  v23 = 14;
  v24 = vdupq_n_s64(0x3F70000000000000uLL);
  v25 = (a1 + 492);
  do
  {
    *(a2 + v17) = *(v25 - 12);
    v26 = vcvtd_n_f64_u32(*(v25 - 11), 5uLL);
    *(a2 + v18) = v26;
    *&v27 = vcvtd_n_f64_u32(*(v25 - 10), 5uLL);
    *(a2 + v19) = *&v27;
    LOBYTE(v27) = *(v25 - 9);
    *(a2 + v20) = v27;
    v28 = a2 + v21;
    v29 = *v25;
    *(v28 + 8) = *(v25 + 2);
    *v28 = v29;
    v30 = (a2 + v22);
    v31.i64[0] = *(v25 - 4);
    v31.i64[1] = *(v25 - 3);
    v30[113] = vcvt_f32_f64(vmulq_f64(vcvtq_f64_s64(v31), v24));
    v31.i64[0] = *(v25 - 2);
    v31.i64[1] = *(v25 - 1);
    v22 += 8;
    v25 += 4;
    v21 += 28;
    v20 += 28;
    *v30 = vcvt_f32_f64(vmulq_f64(vcvtq_f64_s64(v31), v24));
    v19 += 28;
    v18 += 28;
    v17 += 28;
    --v23;
  }

  while (v23);
  v32 = 122444;
  v33 = (a1 + 940);
  v34 = 122448;
  v35 = 122452;
  v36 = 122456;
  v37 = 122460;
  v38 = 342812;
  v39 = vdupq_n_s64(0x3F70000000000000uLL);
  v40 = 14;
  do
  {
    *(a2 + v32) = *(v33 - 12);
    v41 = vcvtd_n_f64_u32(*(v33 - 11), 5uLL);
    *(a2 + v34) = v41;
    *&v42 = vcvtd_n_f64_u32(*(v33 - 10), 5uLL);
    *(a2 + v35) = *&v42;
    LOBYTE(v42) = *(v33 - 9);
    *(a2 + v36) = v42;
    v43 = a2 + v37;
    v44 = *v33;
    *(v43 + 8) = *(v33 + 2);
    *v43 = v44;
    v45 = (a2 + v38);
    v46.i64[0] = *(v33 - 4);
    v46.i64[1] = *(v33 - 3);
    v45[113] = vcvt_f32_f64(vmulq_f64(vcvtq_f64_s64(v46), v39));
    v46.i64[0] = *(v33 - 2);
    v46.i64[1] = *(v33 - 1);
    v38 += 8;
    v33 += 4;
    v37 += 28;
    v36 += 28;
    *v45 = vcvt_f32_f64(vmulq_f64(vcvtq_f64_s64(v46), v39));
    v35 += 28;
    v34 += 28;
    v32 += 28;
    --v40;
  }

  while (v40);
  v47 = 159132;
  v48 = (a1 + 1388);
  v49 = 159136;
  v50 = 159140;
  v51 = 159144;
  v52 = 159148;
  v53 = 342924;
  v54 = vdupq_n_s64(0x3F70000000000000uLL);
  v55 = 14;
  do
  {
    *(a2 + v47) = *(v48 - 12);
    v56 = vcvtd_n_f64_u32(*(v48 - 11), 5uLL);
    *(a2 + v49) = v56;
    *&v57 = vcvtd_n_f64_u32(*(v48 - 10), 5uLL);
    *(a2 + v50) = *&v57;
    LOBYTE(v57) = *(v48 - 9);
    *(a2 + v51) = v57;
    v58 = a2 + v52;
    v59 = *v48;
    *(v58 + 8) = *(v48 + 2);
    *v58 = v59;
    v60 = (a2 + v53);
    v61.i64[0] = *(v48 - 4);
    v61.i64[1] = *(v48 - 3);
    v60[113] = vcvt_f32_f64(vmulq_f64(vcvtq_f64_s64(v61), v54));
    v61.i64[0] = *(v48 - 2);
    v61.i64[1] = *(v48 - 1);
    v53 += 8;
    v48 += 4;
    v52 += 28;
    v51 += 28;
    *v60 = vcvt_f32_f64(vmulq_f64(vcvtq_f64_s64(v61), v54));
    v50 += 28;
    v49 += 28;
    v47 += 28;
    --v55;
  }

  while (v55);
  v62 = 195820;
  v63 = (a1 + 1836);
  v64 = 195824;
  v65 = 195828;
  v66 = 195832;
  v67 = 195836;
  v68 = 343036;
  v69 = vdupq_n_s64(0x3F70000000000000uLL);
  v70 = 14;
  do
  {
    *(a2 + v62) = *(v63 - 12);
    v71 = vcvtd_n_f64_u32(*(v63 - 11), 5uLL);
    *(a2 + v64) = v71;
    *&v72 = vcvtd_n_f64_u32(*(v63 - 10), 5uLL);
    *(a2 + v65) = *&v72;
    LOBYTE(v72) = *(v63 - 9);
    *(a2 + v66) = v72;
    v73 = a2 + v67;
    v74 = *v63;
    *(v73 + 8) = *(v63 + 2);
    *v73 = v74;
    v75 = (a2 + v68);
    v76.i64[0] = *(v63 - 4);
    v76.i64[1] = *(v63 - 3);
    v75[113] = vcvt_f32_f64(vmulq_f64(vcvtq_f64_s64(v76), v69));
    v76.i64[0] = *(v63 - 2);
    v76.i64[1] = *(v63 - 1);
    v68 += 8;
    v63 += 4;
    v67 += 28;
    v66 += 28;
    *v75 = vcvt_f32_f64(vmulq_f64(vcvtq_f64_s64(v76), v69));
    v65 += 28;
    v64 += 28;
    v62 += 28;
    --v70;
  }

  while (v70);
  v77 = 232508;
  v78 = (a1 + 2284);
  v79 = 232512;
  v80 = 232516;
  v81 = 232520;
  v82 = 232524;
  v83 = 343148;
  v84 = vdupq_n_s64(0x3F70000000000000uLL);
  v85 = 14;
  do
  {
    *(a2 + v77) = *(v78 - 12);
    v86 = vcvtd_n_f64_u32(*(v78 - 11), 5uLL);
    *(a2 + v79) = v86;
    *&v87 = vcvtd_n_f64_u32(*(v78 - 10), 5uLL);
    *(a2 + v80) = *&v87;
    LOBYTE(v87) = *(v78 - 9);
    *(a2 + v81) = v87;
    v88 = a2 + v82;
    v89 = *v78;
    *(v88 + 8) = *(v78 + 2);
    *v88 = v89;
    v90 = (a2 + v83);
    v91.i64[0] = *(v78 - 4);
    v91.i64[1] = *(v78 - 3);
    v90[113] = vcvt_f32_f64(vmulq_f64(vcvtq_f64_s64(v91), v84));
    v91.i64[0] = *(v78 - 2);
    v91.i64[1] = *(v78 - 1);
    v83 += 8;
    v78 += 4;
    v82 += 28;
    v81 += 28;
    *v90 = vcvt_f32_f64(vmulq_f64(vcvtq_f64_s64(v91), v84));
    v80 += 28;
    v79 += 28;
    v77 += 28;
    --v85;
  }

  while (v85);
  v92 = 269196;
  v93 = (a1 + 2732);
  v94 = 269200;
  v95 = 269204;
  v96 = 269208;
  v97 = 269212;
  v98 = 343260;
  v99 = vdupq_n_s64(0x3F70000000000000uLL);
  v100 = 14;
  do
  {
    *(a2 + v92) = *(v93 - 12);
    v101 = vcvtd_n_f64_u32(*(v93 - 11), 5uLL);
    *(a2 + v94) = v101;
    *&v102 = vcvtd_n_f64_u32(*(v93 - 10), 5uLL);
    *(a2 + v95) = *&v102;
    LOBYTE(v102) = *(v93 - 9);
    *(a2 + v96) = v102;
    v103 = a2 + v97;
    v104 = *v93;
    *(v103 + 8) = *(v93 + 2);
    *v103 = v104;
    v105 = (a2 + v98);
    v106.i64[0] = *(v93 - 4);
    v106.i64[1] = *(v93 - 3);
    v105[113] = vcvt_f32_f64(vmulq_f64(vcvtq_f64_s64(v106), v99));
    v106.i64[0] = *(v93 - 2);
    v106.i64[1] = *(v93 - 1);
    v98 += 8;
    v93 += 4;
    v97 += 28;
    v96 += 28;
    *v105 = vcvt_f32_f64(vmulq_f64(vcvtq_f64_s64(v106), v99));
    v95 += 28;
    v94 += 28;
    v92 += 28;
    --v100;
  }

  while (v100);
  v107 = 305884;
  v108 = (a1 + 3180);
  v109 = 305888;
  v110 = 305892;
  v111 = 305896;
  v112 = 305900;
  v113 = 343372;
  v114 = vdupq_n_s64(0x3F70000000000000uLL);
  v115 = 14;
  do
  {
    *(a2 + v107) = *(v108 - 12);
    v116 = vcvtd_n_f64_u32(*(v108 - 11), 5uLL);
    *(a2 + v109) = v116;
    *&v117 = vcvtd_n_f64_u32(*(v108 - 10), 5uLL);
    *(a2 + v110) = *&v117;
    LOBYTE(v117) = *(v108 - 9);
    *(a2 + v111) = v117;
    v118 = a2 + v112;
    v119 = *v108;
    *(v118 + 8) = *(v108 + 2);
    *v118 = v119;
    v120 = (a2 + v113);
    v121.i64[0] = *(v108 - 4);
    v121.i64[1] = *(v108 - 3);
    v120[113] = vcvt_f32_f64(vmulq_f64(vcvtq_f64_s64(v121), v114));
    v121.i64[0] = *(v108 - 2);
    v121.i64[1] = *(v108 - 1);
    v113 += 8;
    v108 += 4;
    v112 += 28;
    v111 += 28;
    *v120 = vcvt_f32_f64(vmulq_f64(vcvtq_f64_s64(v121), v114));
    v110 += 28;
    v109 += 28;
    v107 += 28;
    --v115;
  }

  while (v115);
  v122 = *(a1 + 8);
  *(a2 + 344388) = *(a1 + 4);
  *(a2 + 344392) = *(a1 + 12);
  *(a2 + 343484) = v122;
  *(a2 + 343488) = *(a1 + 13);
  *(a2 + 342572) = *(a1 + 16);
  v123 = *(a1 + 3616);
  *(a2 + 49460) = v123;
  *(a2 + 86148) = v123;
  *(a2 + 122836) = v123;
  *(a2 + 159524) = v123;
  *(a2 + 196212) = v123;
  *(a2 + 232900) = v123;
  *(a2 + 269588) = v123;
  *(a2 + 306276) = v123;
  result = *(a1 + 3652);
  *(a2 + 346204) = result;
  *(a2 + 346212) = *(a1 + 3660);
  *(a2 + 346216) = *(a1 + 3620);
  *(a2 + 346217) = *(a1 + 3621);
  *(a2 + 346218) = *(a1 + 3622);
  *(a2 + 346219) = *(a1 + 3623);
  *(a2 + 346220) = *(a1 + 3624);
  *(a2 + 346221) = *(a1 + 3625);
  *(a2 + 346222) = *(a1 + 3626);
  *(a2 + 346223) = *(a1 + 3627);
  *(a2 + 346224) = *(a1 + 3628);
  *(a2 + 346225) = *(a1 + 3629);
  *(a2 + 346226) = *(a1 + 3630);
  *(a2 + 346227) = *(a1 + 3631);
  *(a2 + 346228) = *(a1 + 3632);
  *(a2 + 346229) = *(a1 + 3633);
  *(a2 + 346230) = *(a1 + 3634);
  *(a2 + 346231) = *(a1 + 3635);
  *(a2 + 346232) = *(a1 + 3636);
  *(a2 + 346233) = *(a1 + 3637);
  *(a2 + 346234) = *(a1 + 3638);
  *(a2 + 346235) = *(a1 + 3639);
  *(a2 + 346236) = *(a1 + 3640);
  *(a2 + 346237) = *(a1 + 3641);
  *(a2 + 346238) = *(a1 + 3642);
  *(a2 + 346239) = *(a1 + 3643);
  *(a2 + 346240) = *(a1 + 3644);
  *(a2 + 346241) = *(a1 + 3645);
  *(a2 + 346242) = *(a1 + 3646);
  *(a2 + 346243) = *(a1 + 3647);
  *(a2 + 346244) = *(a1 + 3648);
  *(a2 + 346245) = *(a1 + 3649);
  *(a2 + 346246) = *(a1 + 3650);
  *(a2 + 346247) = *(a1 + 3651);
  *(a2 + 402488) = *(a1 + 8144);
  return result;
}

uint64_t getBlobAsExact<jlnm_v100>(uint64_t a1)
{
  v22 = 4;
  strcpy(__s2, "jlnm");
  v1 = a1 + 8;
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = a1 + 8;
    do
    {
      v4 = *(v2 + 55);
      v5 = v4;
      if ((v4 & 0x80u) != 0)
      {
        v4 = *(v2 + 40);
      }

      if (v5 >= 0)
      {
        v6 = (v2 + 32);
      }

      else
      {
        v6 = *(v2 + 32);
      }

      if (v4 >= 4)
      {
        v7 = 4;
      }

      else
      {
        v7 = v4;
      }

      v8 = v4 < 4;
      v9 = memcmp(v6, __s2, v7);
      v10 = v9 < 0;
      if (!v9)
      {
        v10 = v8;
      }

      v11 = !v10;
      if (v10)
      {
        v12 = 8;
      }

      else
      {
        v12 = 0;
      }

      if (v11)
      {
        v3 = v2;
      }

      v2 = *(v2 + v12);
    }

    while (v2);
    if (v3 != v1)
    {
      v13 = *(v3 + 55);
      v14 = v13;
      if ((v13 & 0x80u) != 0)
      {
        v13 = *(v3 + 40);
      }

      if (v14 >= 0)
      {
        v15 = (v3 + 32);
      }

      else
      {
        v15 = *(v3 + 32);
      }

      if (v13 >= 4)
      {
        v16 = 4;
      }

      else
      {
        v16 = v13;
      }

      v17 = v13 > 4;
      v18 = memcmp(__s2, v15, v16);
      v19 = v18 < 0;
      if (!v18)
      {
        v19 = v17;
      }

      if (!v19 && v3 != v1)
      {
        if (*(v3 + 64) == 8652)
        {
          operator new();
        }

        peridot_depth_log("%s: blob of wrong size (%lu bytes - expected it to be %lu)", "jlnm", *(v3 + 64), 8652);
      }
    }
  }

  return 0;
}

double readJLNM_v100_v101<jlnm_v100>(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 32;
  v3 = 14;
  v4 = 49084;
  v5 = 49080;
  v6 = 49076;
  v7 = 49072;
  v8 = 49068;
  v9 = vdupq_n_s64(0x3F70000000000000uLL);
  v10 = 342588;
  do
  {
    *(a2 + v8) = *v2;
    v11 = vcvtd_n_f64_u32(*(v2 + 1), 5uLL);
    *(a2 + v7) = v11;
    *&v12 = vcvtd_n_f64_u32(*(v2 + 2), 5uLL);
    *(a2 + v6) = *&v12;
    LOBYTE(v12) = *(v2 + 3);
    *(a2 + v5) = v12;
    v13 = a2 + v4;
    v14 = *(v2 + 16);
    *(v13 + 8) = *(v2 + 24);
    *v13 = v14;
    v15 = (a2 + v10);
    v16.i64[0] = *(v2 + 4);
    v16.i64[1] = *(v2 + 6);
    v15[113] = vcvt_f32_f64(vmulq_f64(vcvtq_f64_s64(v16), v9));
    v16.i64[0] = *(v2 + 8);
    v16.i64[1] = *(v2 + 10);
    v10 += 8;
    v2 += 36;
    v4 += 28;
    v5 += 28;
    *v15 = vcvt_f32_f64(vmulq_f64(vcvtq_f64_s64(v16), v9));
    v6 += 28;
    v7 += 28;
    v8 += 28;
    --v3;
  }

  while (v3);
  v17 = 85756;
  v18 = 85760;
  v19 = 85764;
  v20 = 85768;
  v21 = 85772;
  v22 = 342700;
  v23 = 14;
  v24 = vdupq_n_s64(0x3F70000000000000uLL);
  v25 = (a1 + 552);
  do
  {
    *(a2 + v17) = *(v25 - 16);
    v26 = vcvtd_n_f64_u32(*(v25 - 15), 5uLL);
    *(a2 + v18) = v26;
    *&v27 = vcvtd_n_f64_u32(*(v25 - 14), 5uLL);
    *(a2 + v19) = *&v27;
    LOBYTE(v27) = *(v25 - 13);
    *(a2 + v20) = v27;
    v28 = a2 + v21;
    v29 = *v25;
    *(v28 + 8) = *(v25 + 2);
    *v28 = v29;
    v30 = (a2 + v22);
    v31.i64[0] = *(v25 - 6);
    v31.i64[1] = *(v25 - 5);
    v30[113] = vcvt_f32_f64(vmulq_f64(vcvtq_f64_s64(v31), v24));
    v31.i64[0] = *(v25 - 4);
    v31.i64[1] = *(v25 - 3);
    v22 += 8;
    v25 = (v25 + 36);
    v21 += 28;
    v20 += 28;
    *v30 = vcvt_f32_f64(vmulq_f64(vcvtq_f64_s64(v31), v24));
    v19 += 28;
    v18 += 28;
    v17 += 28;
    --v23;
  }

  while (v23);
  v32 = 122444;
  v33 = (a1 + 1056);
  v34 = 122448;
  v35 = 122452;
  v36 = 122456;
  v37 = 122460;
  v38 = 342812;
  v39 = vdupq_n_s64(0x3F70000000000000uLL);
  v40 = 14;
  do
  {
    *(a2 + v32) = *(v33 - 16);
    v41 = vcvtd_n_f64_u32(*(v33 - 15), 5uLL);
    *(a2 + v34) = v41;
    *&v42 = vcvtd_n_f64_u32(*(v33 - 14), 5uLL);
    *(a2 + v35) = *&v42;
    LOBYTE(v42) = *(v33 - 13);
    *(a2 + v36) = v42;
    v43 = a2 + v37;
    v44 = *v33;
    *(v43 + 8) = *(v33 + 2);
    *v43 = v44;
    v45 = (a2 + v38);
    v46.i64[0] = *(v33 - 6);
    v46.i64[1] = *(v33 - 5);
    v45[113] = vcvt_f32_f64(vmulq_f64(vcvtq_f64_s64(v46), v39));
    v46.i64[0] = *(v33 - 4);
    v46.i64[1] = *(v33 - 3);
    v38 += 8;
    v33 = (v33 + 36);
    v37 += 28;
    v36 += 28;
    *v45 = vcvt_f32_f64(vmulq_f64(vcvtq_f64_s64(v46), v39));
    v35 += 28;
    v34 += 28;
    v32 += 28;
    --v40;
  }

  while (v40);
  v47 = 159132;
  v48 = (a1 + 1560);
  v49 = 159136;
  v50 = 159140;
  v51 = 159144;
  v52 = 159148;
  v53 = 342924;
  v54 = vdupq_n_s64(0x3F70000000000000uLL);
  v55 = 14;
  do
  {
    *(a2 + v47) = *(v48 - 16);
    v56 = vcvtd_n_f64_u32(*(v48 - 15), 5uLL);
    *(a2 + v49) = v56;
    *&v57 = vcvtd_n_f64_u32(*(v48 - 14), 5uLL);
    *(a2 + v50) = *&v57;
    LOBYTE(v57) = *(v48 - 13);
    *(a2 + v51) = v57;
    v58 = a2 + v52;
    v59 = *v48;
    *(v58 + 8) = *(v48 + 2);
    *v58 = v59;
    v60 = (a2 + v53);
    v61.i64[0] = *(v48 - 6);
    v61.i64[1] = *(v48 - 5);
    v60[113] = vcvt_f32_f64(vmulq_f64(vcvtq_f64_s64(v61), v54));
    v61.i64[0] = *(v48 - 4);
    v61.i64[1] = *(v48 - 3);
    v53 += 8;
    v48 = (v48 + 36);
    v52 += 28;
    v51 += 28;
    *v60 = vcvt_f32_f64(vmulq_f64(vcvtq_f64_s64(v61), v54));
    v50 += 28;
    v49 += 28;
    v47 += 28;
    --v55;
  }

  while (v55);
  v62 = 195820;
  v63 = (a1 + 2064);
  v64 = 195824;
  v65 = 195828;
  v66 = 195832;
  v67 = 195836;
  v68 = 343036;
  v69 = vdupq_n_s64(0x3F70000000000000uLL);
  v70 = 14;
  do
  {
    *(a2 + v62) = *(v63 - 16);
    v71 = vcvtd_n_f64_u32(*(v63 - 15), 5uLL);
    *(a2 + v64) = v71;
    *&v72 = vcvtd_n_f64_u32(*(v63 - 14), 5uLL);
    *(a2 + v65) = *&v72;
    LOBYTE(v72) = *(v63 - 13);
    *(a2 + v66) = v72;
    v73 = a2 + v67;
    v74 = *v63;
    *(v73 + 8) = *(v63 + 2);
    *v73 = v74;
    v75 = (a2 + v68);
    v76.i64[0] = *(v63 - 6);
    v76.i64[1] = *(v63 - 5);
    v75[113] = vcvt_f32_f64(vmulq_f64(vcvtq_f64_s64(v76), v69));
    v76.i64[0] = *(v63 - 4);
    v76.i64[1] = *(v63 - 3);
    v68 += 8;
    v63 = (v63 + 36);
    v67 += 28;
    v66 += 28;
    *v75 = vcvt_f32_f64(vmulq_f64(vcvtq_f64_s64(v76), v69));
    v65 += 28;
    v64 += 28;
    v62 += 28;
    --v70;
  }

  while (v70);
  v77 = 232508;
  v78 = (a1 + 2568);
  v79 = 232512;
  v80 = 232516;
  v81 = 232520;
  v82 = 232524;
  v83 = 343148;
  v84 = vdupq_n_s64(0x3F70000000000000uLL);
  v85 = 14;
  do
  {
    *(a2 + v77) = *(v78 - 16);
    v86 = vcvtd_n_f64_u32(*(v78 - 15), 5uLL);
    *(a2 + v79) = v86;
    *&v87 = vcvtd_n_f64_u32(*(v78 - 14), 5uLL);
    *(a2 + v80) = *&v87;
    LOBYTE(v87) = *(v78 - 13);
    *(a2 + v81) = v87;
    v88 = a2 + v82;
    v89 = *v78;
    *(v88 + 8) = *(v78 + 2);
    *v88 = v89;
    v90 = (a2 + v83);
    v91.i64[0] = *(v78 - 6);
    v91.i64[1] = *(v78 - 5);
    v90[113] = vcvt_f32_f64(vmulq_f64(vcvtq_f64_s64(v91), v84));
    v91.i64[0] = *(v78 - 4);
    v91.i64[1] = *(v78 - 3);
    v83 += 8;
    v78 = (v78 + 36);
    v82 += 28;
    v81 += 28;
    *v90 = vcvt_f32_f64(vmulq_f64(vcvtq_f64_s64(v91), v84));
    v80 += 28;
    v79 += 28;
    v77 += 28;
    --v85;
  }

  while (v85);
  v92 = 269196;
  v93 = (a1 + 3072);
  v94 = 269200;
  v95 = 269204;
  v96 = 269208;
  v97 = 269212;
  v98 = 343260;
  v99 = vdupq_n_s64(0x3F70000000000000uLL);
  v100 = 14;
  do
  {
    *(a2 + v92) = *(v93 - 16);
    v101 = vcvtd_n_f64_u32(*(v93 - 15), 5uLL);
    *(a2 + v94) = v101;
    *&v102 = vcvtd_n_f64_u32(*(v93 - 14), 5uLL);
    *(a2 + v95) = *&v102;
    LOBYTE(v102) = *(v93 - 13);
    *(a2 + v96) = v102;
    v103 = a2 + v97;
    v104 = *v93;
    *(v103 + 8) = *(v93 + 2);
    *v103 = v104;
    v105 = (a2 + v98);
    v106.i64[0] = *(v93 - 6);
    v106.i64[1] = *(v93 - 5);
    v105[113] = vcvt_f32_f64(vmulq_f64(vcvtq_f64_s64(v106), v99));
    v106.i64[0] = *(v93 - 4);
    v106.i64[1] = *(v93 - 3);
    v98 += 8;
    v93 = (v93 + 36);
    v97 += 28;
    v96 += 28;
    *v105 = vcvt_f32_f64(vmulq_f64(vcvtq_f64_s64(v106), v99));
    v95 += 28;
    v94 += 28;
    v92 += 28;
    --v100;
  }

  while (v100);
  v107 = 305884;
  v108 = (a1 + 3576);
  v109 = 305888;
  v110 = 305892;
  v111 = 305896;
  v112 = 305900;
  v113 = 343372;
  v114 = vdupq_n_s64(0x3F70000000000000uLL);
  v115 = 14;
  do
  {
    *(a2 + v107) = *(v108 - 16);
    v116 = vcvtd_n_f64_u32(*(v108 - 15), 5uLL);
    *(a2 + v109) = v116;
    *&v117 = vcvtd_n_f64_u32(*(v108 - 14), 5uLL);
    *(a2 + v110) = *&v117;
    LOBYTE(v117) = *(v108 - 13);
    *(a2 + v111) = v117;
    v118 = a2 + v112;
    v119 = *v108;
    *(v118 + 8) = *(v108 + 2);
    *v118 = v119;
    v120 = (a2 + v113);
    v121.i64[0] = *(v108 - 6);
    v121.i64[1] = *(v108 - 5);
    v120[113] = vcvt_f32_f64(vmulq_f64(vcvtq_f64_s64(v121), v114));
    v121.i64[0] = *(v108 - 4);
    v121.i64[1] = *(v108 - 3);
    v113 += 8;
    v108 = (v108 + 36);
    v112 += 28;
    v111 += 28;
    *v120 = vcvt_f32_f64(vmulq_f64(vcvtq_f64_s64(v121), v114));
    v110 += 28;
    v109 += 28;
    v107 += 28;
    --v115;
  }

  while (v115);
  v122 = *(a1 + 8);
  *(a2 + 344388) = *(a1 + 4);
  *(a2 + 344392) = *(a1 + 12);
  *(a2 + 343484) = v122;
  *(a2 + 343488) = *(a1 + 13);
  *(a2 + 342572) = *(a1 + 16);
  v123 = *(a1 + 4064);
  *(a2 + 49460) = v123;
  *(a2 + 86148) = v123;
  *(a2 + 122836) = v123;
  *(a2 + 159524) = v123;
  *(a2 + 196212) = v123;
  *(a2 + 232900) = v123;
  *(a2 + 269588) = v123;
  *(a2 + 306276) = v123;
  result = *(a1 + 4100);
  *(a2 + 346204) = result;
  *(a2 + 346212) = *(a1 + 4108);
  *(a2 + 346216) = *(a1 + 4068);
  *(a2 + 346217) = *(a1 + 4069);
  *(a2 + 346218) = *(a1 + 4070);
  *(a2 + 346219) = *(a1 + 4071);
  *(a2 + 346220) = *(a1 + 4072);
  *(a2 + 346221) = *(a1 + 4073);
  *(a2 + 346222) = *(a1 + 4074);
  *(a2 + 346223) = *(a1 + 4075);
  *(a2 + 346224) = *(a1 + 4076);
  *(a2 + 346225) = *(a1 + 4077);
  *(a2 + 346226) = *(a1 + 4078);
  *(a2 + 346227) = *(a1 + 4079);
  *(a2 + 346228) = *(a1 + 4080);
  *(a2 + 346229) = *(a1 + 4081);
  *(a2 + 346230) = *(a1 + 4082);
  *(a2 + 346231) = *(a1 + 4083);
  *(a2 + 346232) = *(a1 + 4084);
  *(a2 + 346233) = *(a1 + 4085);
  *(a2 + 346234) = *(a1 + 4086);
  *(a2 + 346235) = *(a1 + 4087);
  *(a2 + 346236) = *(a1 + 4088);
  *(a2 + 346237) = *(a1 + 4089);
  *(a2 + 346238) = *(a1 + 4090);
  *(a2 + 346239) = *(a1 + 4091);
  *(a2 + 346240) = *(a1 + 4092);
  *(a2 + 346241) = *(a1 + 4093);
  *(a2 + 346242) = *(a1 + 4094);
  *(a2 + 346243) = *(a1 + 4095);
  *(a2 + 346244) = *(a1 + 4096);
  *(a2 + 346245) = *(a1 + 4097);
  *(a2 + 346246) = *(a1 + 4098);
  *(a2 + 346247) = *(a1 + 4099);
  *(a2 + 402488) = *(a1 + 8636);
  return result;
}

uint64_t getBlobAsExact<jlsk_v102>(uint64_t a1)
{
  v22 = 4;
  strcpy(__s2, "jlsk");
  v1 = a1 + 8;
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = a1 + 8;
    do
    {
      v4 = *(v2 + 55);
      v5 = v4;
      if ((v4 & 0x80u) != 0)
      {
        v4 = *(v2 + 40);
      }

      if (v5 >= 0)
      {
        v6 = (v2 + 32);
      }

      else
      {
        v6 = *(v2 + 32);
      }

      if (v4 >= 4)
      {
        v7 = 4;
      }

      else
      {
        v7 = v4;
      }

      v8 = v4 < 4;
      v9 = memcmp(v6, __s2, v7);
      v10 = v9 < 0;
      if (!v9)
      {
        v10 = v8;
      }

      v11 = !v10;
      if (v10)
      {
        v12 = 8;
      }

      else
      {
        v12 = 0;
      }

      if (v11)
      {
        v3 = v2;
      }

      v2 = *(v2 + v12);
    }

    while (v2);
    if (v3 != v1)
    {
      v13 = *(v3 + 55);
      v14 = v13;
      if ((v13 & 0x80u) != 0)
      {
        v13 = *(v3 + 40);
      }

      if (v14 >= 0)
      {
        v15 = (v3 + 32);
      }

      else
      {
        v15 = *(v3 + 32);
      }

      if (v13 >= 4)
      {
        v16 = 4;
      }

      else
      {
        v16 = v13;
      }

      v17 = v13 > 4;
      v18 = memcmp(__s2, v15, v16);
      v19 = v18 < 0;
      if (!v18)
      {
        v19 = v17;
      }

      if (!v19 && v3 != v1)
      {
        if (*(v3 + 64) == 18080)
        {
          operator new();
        }

        peridot_depth_log("%s: blob of wrong size (%lu bytes - expected it to be %lu)", "jlsk", *(v3 + 64), 18080);
      }
    }
  }

  return 0;
}

uint64_t getBlobAsExact<jlsk_v101>(uint64_t a1)
{
  v22 = 4;
  strcpy(__s2, "jlsk");
  v1 = a1 + 8;
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = a1 + 8;
    do
    {
      v4 = *(v2 + 55);
      v5 = v4;
      if ((v4 & 0x80u) != 0)
      {
        v4 = *(v2 + 40);
      }

      if (v5 >= 0)
      {
        v6 = (v2 + 32);
      }

      else
      {
        v6 = *(v2 + 32);
      }

      if (v4 >= 4)
      {
        v7 = 4;
      }

      else
      {
        v7 = v4;
      }

      v8 = v4 < 4;
      v9 = memcmp(v6, __s2, v7);
      v10 = v9 < 0;
      if (!v9)
      {
        v10 = v8;
      }

      v11 = !v10;
      if (v10)
      {
        v12 = 8;
      }

      else
      {
        v12 = 0;
      }

      if (v11)
      {
        v3 = v2;
      }

      v2 = *(v2 + v12);
    }

    while (v2);
    if (v3 != v1)
    {
      v13 = *(v3 + 55);
      v14 = v13;
      if ((v13 & 0x80u) != 0)
      {
        v13 = *(v3 + 40);
      }

      if (v14 >= 0)
      {
        v15 = (v3 + 32);
      }

      else
      {
        v15 = *(v3 + 32);
      }

      if (v13 >= 4)
      {
        v16 = 4;
      }

      else
      {
        v16 = v13;
      }

      v17 = v13 > 4;
      v18 = memcmp(__s2, v15, v16);
      v19 = v18 < 0;
      if (!v18)
      {
        v19 = v17;
      }

      if (!v19 && v3 != v1)
      {
        if (*(v3 + 64) == 17424)
        {
          operator new();
        }

        peridot_depth_log("%s: blob of wrong size (%lu bytes - expected it to be %lu)", "jlsk", *(v3 + 64), 17424);
      }
    }
  }

  return 0;
}

uint64_t getBlobAsExact<jlsk_v100>(uint64_t a1)
{
  v22 = 4;
  strcpy(__s2, "jlsk");
  v1 = a1 + 8;
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = a1 + 8;
    do
    {
      v4 = *(v2 + 55);
      v5 = v4;
      if ((v4 & 0x80u) != 0)
      {
        v4 = *(v2 + 40);
      }

      if (v5 >= 0)
      {
        v6 = (v2 + 32);
      }

      else
      {
        v6 = *(v2 + 32);
      }

      if (v4 >= 4)
      {
        v7 = 4;
      }

      else
      {
        v7 = v4;
      }

      v8 = v4 < 4;
      v9 = memcmp(v6, __s2, v7);
      v10 = v9 < 0;
      if (!v9)
      {
        v10 = v8;
      }

      v11 = !v10;
      if (v10)
      {
        v12 = 8;
      }

      else
      {
        v12 = 0;
      }

      if (v11)
      {
        v3 = v2;
      }

      v2 = *(v2 + v12);
    }

    while (v2);
    if (v3 != v1)
    {
      v13 = *(v3 + 55);
      v14 = v13;
      if ((v13 & 0x80u) != 0)
      {
        v13 = *(v3 + 40);
      }

      if (v14 >= 0)
      {
        v15 = (v3 + 32);
      }

      else
      {
        v15 = *(v3 + 32);
      }

      if (v13 >= 4)
      {
        v16 = 4;
      }

      else
      {
        v16 = v13;
      }

      v17 = v13 > 4;
      v18 = memcmp(__s2, v15, v16);
      v19 = v18 < 0;
      if (!v18)
      {
        v19 = v17;
      }

      if (!v19 && v3 != v1)
      {
        if (*(v3 + 64) == 18689)
        {
          operator new();
        }

        peridot_depth_log("%s: blob of wrong size (%lu bytes - expected it to be %lu)", "jlsk", *(v3 + 64), 18689);
      }
    }
  }

  return 0;
}

uint64_t getBlobAsExact<jlnv_v100>(uint64_t a1)
{
  v22 = 4;
  strcpy(__s2, "jlnv");
  v1 = a1 + 8;
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = a1 + 8;
    do
    {
      v4 = *(v2 + 55);
      v5 = v4;
      if ((v4 & 0x80u) != 0)
      {
        v4 = *(v2 + 40);
      }

      if (v5 >= 0)
      {
        v6 = (v2 + 32);
      }

      else
      {
        v6 = *(v2 + 32);
      }

      if (v4 >= 4)
      {
        v7 = 4;
      }

      else
      {
        v7 = v4;
      }

      v8 = v4 < 4;
      v9 = memcmp(v6, __s2, v7);
      v10 = v9 < 0;
      if (!v9)
      {
        v10 = v8;
      }

      v11 = !v10;
      if (v10)
      {
        v12 = 8;
      }

      else
      {
        v12 = 0;
      }

      if (v11)
      {
        v3 = v2;
      }

      v2 = *(v2 + v12);
    }

    while (v2);
    if (v3 != v1)
    {
      v13 = *(v3 + 55);
      v14 = v13;
      if ((v13 & 0x80u) != 0)
      {
        v13 = *(v3 + 40);
      }

      if (v14 >= 0)
      {
        v15 = (v3 + 32);
      }

      else
      {
        v15 = *(v3 + 32);
      }

      if (v13 >= 4)
      {
        v16 = 4;
      }

      else
      {
        v16 = v13;
      }

      v17 = v13 > 4;
      v18 = memcmp(__s2, v15, v16);
      v19 = v18 < 0;
      if (!v18)
      {
        v19 = v17;
      }

      if (!v19 && v3 != v1)
      {
        if (*(v3 + 64) == 33672)
        {
          operator new();
        }

        peridot_depth_log("%s: blob of wrong size (%lu bytes - expected it to be %lu)", "jlnv", *(v3 + 64), 33672);
      }
    }
  }

  return 0;
}

uint64_t readJLIN(uint64_t a1, uint64_t a2)
{
  v26 = 0;
  result = getBlobVersion(a1, "jlin", &v26, 1);
  if (result)
  {
    v5 = v26;
    *(a2 + 402526) = v26;
    if (v5 == 100)
    {
      v28 = 4;
      strcpy(__s2, "jlin");
      v8 = *(a1 + 8);
      v6 = a1 + 8;
      v7 = v8;
      if (v8)
      {
        v9 = v6;
        do
        {
          v10 = *(v7 + 55);
          v11 = v10;
          if ((v10 & 0x80u) != 0)
          {
            v10 = *(v7 + 40);
          }

          if (v11 >= 0)
          {
            v12 = (v7 + 32);
          }

          else
          {
            v12 = *(v7 + 32);
          }

          if (v10 >= 4)
          {
            v13 = 4;
          }

          else
          {
            v13 = v10;
          }

          v14 = v10 < 4;
          v15 = memcmp(v12, __s2, v13);
          v16 = v15 < 0;
          if (!v15)
          {
            v16 = v14;
          }

          v17 = !v16;
          if (v16)
          {
            v18 = 8;
          }

          else
          {
            v18 = 0;
          }

          if (v17)
          {
            v9 = v7;
          }

          v7 = *(v7 + v18);
        }

        while (v7);
        if (v9 != v6)
        {
          v19 = *(v9 + 55);
          v20 = v19;
          if ((v19 & 0x80u) != 0)
          {
            v19 = *(v9 + 40);
          }

          if (v20 >= 0)
          {
            v21 = (v9 + 32);
          }

          else
          {
            v21 = *(v9 + 32);
          }

          if (v19 >= 4)
          {
            v22 = 4;
          }

          else
          {
            v22 = v19;
          }

          v23 = v19 > 4;
          v24 = memcmp(__s2, v21, v22);
          v25 = v24 < 0;
          if (!v24)
          {
            v25 = v23;
          }

          if (!v25 && v9 != v6)
          {
            if (*(v9 + 64) == 4172)
            {
              operator new();
            }

            peridot_depth_log("%s: blob of wrong size (%lu bytes - expected it to be %lu)");
          }
        }
      }
    }

    else
    {
      peridot_depth_log("jlin: unsupported version %d");
    }

    return 0;
  }

  return result;
}

uint64_t readJLEX(uint64_t a1, uint64_t a2)
{
  v66 = 0;
  result = getBlobVersion(a1, "jlex", &v66, 1);
  if (result)
  {
    v5 = v66;
    *(a2 + 402527) = v66;
    switch(v5)
    {
      case 'd':
        v68 = 4;
        strcpy(__s2, "jlex");
        v48 = *(a1 + 8);
        v46 = a1 + 8;
        v47 = v48;
        if (!v48)
        {
          return 0;
        }

        v49 = v46;
        do
        {
          v50 = *(v47 + 55);
          v51 = v50;
          if ((v50 & 0x80u) != 0)
          {
            v50 = *(v47 + 40);
          }

          if (v51 >= 0)
          {
            v52 = (v47 + 32);
          }

          else
          {
            v52 = *(v47 + 32);
          }

          if (v50 >= 4)
          {
            v53 = 4;
          }

          else
          {
            v53 = v50;
          }

          v54 = v50 < 4;
          v55 = memcmp(v52, __s2, v53);
          v56 = v55 < 0;
          if (!v55)
          {
            v56 = v54;
          }

          v57 = !v56;
          if (v56)
          {
            v58 = 8;
          }

          else
          {
            v58 = 0;
          }

          if (v57)
          {
            v49 = v47;
          }

          v47 = *(v47 + v58);
        }

        while (v47);
        if (v49 == v46)
        {
          return 0;
        }

        v59 = *(v49 + 55);
        v60 = v59;
        if ((v59 & 0x80u) != 0)
        {
          v59 = *(v49 + 40);
        }

        if (v60 >= 0)
        {
          v61 = (v49 + 32);
        }

        else
        {
          v61 = *(v49 + 32);
        }

        if (v59 >= 4)
        {
          v62 = 4;
        }

        else
        {
          v62 = v59;
        }

        v63 = v59 > 4;
        v64 = memcmp(__s2, v61, v62);
        v65 = v64 < 0;
        if (!v64)
        {
          v65 = v63;
        }

        if (v65 || v49 == v46)
        {
          return 0;
        }

        if (*(v49 + 64) == 116)
        {
          operator new();
        }

        break;
      case 'e':
        v68 = 4;
        strcpy(__s2, "jlex");
        v28 = *(a1 + 8);
        v26 = a1 + 8;
        v27 = v28;
        if (!v28)
        {
          return 0;
        }

        v29 = v26;
        do
        {
          v30 = *(v27 + 55);
          v31 = v30;
          if ((v30 & 0x80u) != 0)
          {
            v30 = *(v27 + 40);
          }

          if (v31 >= 0)
          {
            v32 = (v27 + 32);
          }

          else
          {
            v32 = *(v27 + 32);
          }

          if (v30 >= 4)
          {
            v33 = 4;
          }

          else
          {
            v33 = v30;
          }

          v34 = v30 < 4;
          v35 = memcmp(v32, __s2, v33);
          v36 = v35 < 0;
          if (!v35)
          {
            v36 = v34;
          }

          v37 = !v36;
          if (v36)
          {
            v38 = 8;
          }

          else
          {
            v38 = 0;
          }

          if (v37)
          {
            v29 = v27;
          }

          v27 = *(v27 + v38);
        }

        while (v27);
        if (v29 == v26)
        {
          return 0;
        }

        v39 = *(v29 + 55);
        v40 = v39;
        if ((v39 & 0x80u) != 0)
        {
          v39 = *(v29 + 40);
        }

        if (v40 >= 0)
        {
          v41 = (v29 + 32);
        }

        else
        {
          v41 = *(v29 + 32);
        }

        if (v39 >= 4)
        {
          v42 = 4;
        }

        else
        {
          v42 = v39;
        }

        v43 = v39 > 4;
        v44 = memcmp(__s2, v41, v42);
        v45 = v44 < 0;
        if (!v44)
        {
          v45 = v43;
        }

        if (v45 || v29 == v26)
        {
          return 0;
        }

        if (*(v29 + 64) == 116)
        {
          operator new();
        }

        break;
      case 'f':
        v68 = 4;
        strcpy(__s2, "jlex");
        v8 = *(a1 + 8);
        v6 = a1 + 8;
        v7 = v8;
        if (!v8)
        {
          return 0;
        }

        v9 = v6;
        do
        {
          v10 = *(v7 + 55);
          v11 = v10;
          if ((v10 & 0x80u) != 0)
          {
            v10 = *(v7 + 40);
          }

          if (v11 >= 0)
          {
            v12 = (v7 + 32);
          }

          else
          {
            v12 = *(v7 + 32);
          }

          if (v10 >= 4)
          {
            v13 = 4;
          }

          else
          {
            v13 = v10;
          }

          v14 = v10 < 4;
          v15 = memcmp(v12, __s2, v13);
          v16 = v15 < 0;
          if (!v15)
          {
            v16 = v14;
          }

          v17 = !v16;
          if (v16)
          {
            v18 = 8;
          }

          else
          {
            v18 = 0;
          }

          if (v17)
          {
            v9 = v7;
          }

          v7 = *(v7 + v18);
        }

        while (v7);
        if (v9 == v6)
        {
          return 0;
        }

        v19 = *(v9 + 55);
        v20 = v19;
        if ((v19 & 0x80u) != 0)
        {
          v19 = *(v9 + 40);
        }

        v21 = v20 >= 0 ? (v9 + 32) : *(v9 + 32);
        v22 = v19 >= 4 ? 4 : v19;
        v23 = v19 > 4;
        v24 = memcmp(__s2, v21, v22);
        v25 = v24 < 0;
        if (!v24)
        {
          v25 = v23;
        }

        if (v25 || v9 == v6)
        {
          return 0;
        }

        if (*(v9 + 64) == 116)
        {
          operator new();
        }

        break;
      default:
        peridot_depth_log("jlex: unsupported version %d");
        return 0;
    }

    peridot_depth_log("%s: blob of wrong size (%lu bytes - expected it to be %lu)");
    return 0;
  }

  return result;
}

__n128 bumpPeridotCalibOneVersion<peridot::CalibHistory::v7::_PeridotCalib,peridot::CalibHistory::v8::_PeridotCalib>(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 49468);
  *a2 = 8;
  v5 = *(a1 + 8);
  v6 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v6;
  *(a2 + 8) = v5;
  v7 = *(a1 + 56);
  v8 = *(a1 + 72);
  v9 = *(a1 + 88);
  *(a2 + 104) = *(a1 + 104);
  *(a2 + 88) = v9;
  *(a2 + 72) = v8;
  *(a2 + 56) = v7;
  v10 = *(a1 + 124);
  *(a2 + 36396) = *(a1 + 108);
  *(a2 + 36412) = v10;
  *(a2 + 36428) = *(a1 + 140);
  memcpy((a2 + 36444), (a1 + 156), 0x3150uLL);
  v11 = 0;
  v12 = a1 + 13176;
  do
  {
    v13 = 0;
    v14 = a1 + 12780 + 36684 * v11;
    v15 = a2 + 49068 + 36688 * v11;
    *v15 = *v14;
    *(v15 + 4) = vmul_f32(*(v14 + 4), 0x3D0000003D000000);
    *(v15 + 12) = *(v14 + 12);
    *(v15 + 28) = *(v14 + 28);
    *(v15 + 32) = vmul_f32(*(v14 + 32), 0x3D0000003D000000);
    *(v15 + 40) = *(v14 + 40);
    *(v15 + 56) = *(v14 + 56);
    *(v15 + 60) = vmul_f32(*(v14 + 60), 0x3D0000003D000000);
    *(v15 + 68) = *(v14 + 68);
    *(v15 + 84) = *(v14 + 84);
    *(v15 + 88) = vmul_f32(*(v14 + 88), 0x3D0000003D000000);
    *(v15 + 96) = *(v14 + 96);
    *(v15 + 112) = *(v14 + 112);
    *(v15 + 116) = vmul_f32(*(v14 + 116), 0x3D0000003D000000);
    *(v15 + 124) = *(v14 + 124);
    *(v15 + 140) = *(v14 + 140);
    *(v15 + 144) = vmul_f32(*(v14 + 144), 0x3D0000003D000000);
    *(v15 + 152) = *(v14 + 152);
    *(v15 + 168) = *(v14 + 168);
    *(v15 + 172) = vmul_f32(*(v14 + 172), 0x3D0000003D000000);
    *(v15 + 180) = *(v14 + 180);
    *(v15 + 196) = *(v14 + 196);
    *(v15 + 200) = vmul_f32(*(v14 + 200), 0x3D0000003D000000);
    *(v15 + 208) = *(v14 + 208);
    *(v15 + 224) = *(v14 + 224);
    *(v15 + 228) = vmul_f32(*(v14 + 228), 0x3D0000003D000000);
    *(v15 + 236) = *(v14 + 236);
    *(v15 + 252) = *(v14 + 252);
    *(v15 + 256) = vmul_f32(*(v14 + 256), 0x3D0000003D000000);
    *(v15 + 264) = *(v14 + 264);
    *(v15 + 280) = *(v14 + 280);
    *(v15 + 284) = vmul_f32(*(v14 + 284), 0x3D0000003D000000);
    *(v15 + 292) = *(v14 + 292);
    *(v15 + 308) = *(v14 + 308);
    *(v15 + 312) = vmul_f32(*(v14 + 312), 0x3D0000003D000000);
    *(v15 + 320) = *(v14 + 320);
    *(v15 + 336) = *(v14 + 336);
    *(v15 + 340) = vmul_f32(*(v14 + 340), 0x3D0000003D000000);
    *(v15 + 348) = *(v14 + 348);
    *(v15 + 364) = *(v14 + 364);
    *(v15 + 368) = vmul_f32(*(v14 + 368), 0x3D0000003D000000);
    *(v15 + 376) = *(v14 + 376);
    v16 = v12;
    v17 = v4;
    do
    {
      v18 = 0;
      v19 = v17;
      do
      {
        *v19 = *(v16 + v18);
        v18 += 4;
        v19 += 108;
      }

      while (v18 != 336);
      ++v13;
      ++v17;
      v16 += 336;
    }

    while (v13 != 108);
    *(v15 + 392) = *(v14 + 392);
    ++v11;
    v4 += 9172;
    v12 += 36684;
  }

  while (v11 != 8);
  *(a2 + 342572) = *(a1 + 306252);
  memcpy((a2 + 342588), (a1 + 306268), 0x710uLL);
  memcpy((a2 + 344396), (a1 + 308076), 0x710uLL);
  v20 = *(a1 + 309912);
  v21 = *(a1 + 309900);
  *(a2 + 346204) = *(a1 + 309884);
  *(a2 + 346220) = v21;
  *(a2 + 346232) = v20;
  memcpy((a2 + 346248), (a1 + 309928), 0x46A4uLL);
  memcpy((a2 + 364332), (a1 + 328012), 0x8380uLL);
  memcpy((a2 + 398000), (a1 + 361680), 0x1038uLL);
  v22 = *(a1 + 365848);
  *(a2 + 402152) = *(a1 + 365832);
  *(a2 + 402168) = v22;
  v23 = *(a1 + 365864);
  v24 = *(a1 + 365880);
  v25 = *(a1 + 365912);
  *(a2 + 402216) = *(a1 + 365896);
  *(a2 + 402232) = v25;
  *(a2 + 402184) = v23;
  *(a2 + 402200) = v24;
  v26 = *(a1 + 365944);
  *(a2 + 402248) = *(a1 + 365928);
  *(a2 + 402264) = v26;
  v27 = *(a1 + 366008);
  v29 = *(a1 + 365960);
  v28 = *(a1 + 365976);
  *(a2 + 402312) = *(a1 + 365992);
  *(a2 + 402328) = v27;
  *(a2 + 402280) = v29;
  *(a2 + 402296) = v28;
  v31 = *(a1 + 366136);
  v30 = *(a1 + 366152);
  v32 = *(a1 + 366120);
  *(a2 + 402488) = *(a1 + 366168);
  *(a2 + 402456) = v31;
  *(a2 + 402472) = v30;
  *(a2 + 402440) = v32;
  v34 = *(a1 + 366056);
  v33 = *(a1 + 366072);
  v35 = *(a1 + 366104);
  *(a2 + 402408) = *(a1 + 366088);
  *(a2 + 402424) = v35;
  *(a2 + 402376) = v34;
  *(a2 + 402392) = v33;
  result = *(a1 + 366024);
  v37 = *(a1 + 366040);
  *(a2 + 402344) = result;
  *(a2 + 402360) = v37;
  return result;
}

__n128 bumpPeridotCalibOneVersion<peridot::CalibHistory::v6::_PeridotCalib,peridot::CalibHistory::v7::_PeridotCalib>(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 327598;
  v5 = (a2 + 327598);
  *a2 = 7;
  v6 = *(a1 + 8);
  v7 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v7;
  *(a2 + 8) = v6;
  v8 = *(a1 + 56);
  v9 = *(a1 + 72);
  v10 = *(a1 + 88);
  *(a2 + 104) = *(a1 + 104);
  *(a2 + 88) = v10;
  *(a2 + 72) = v9;
  *(a2 + 56) = v8;
  v11 = *(a1 + 108);
  *(a2 + 124) = *(a1 + 124);
  *(a2 + 108) = v11;
  *(a2 + 140) = *(a1 + 140);
  v12 = *(a1 + 236);
  v13 = *(a1 + 252);
  v14 = *(a1 + 268);
  *(a2 + 220) = *(a1 + 220);
  *(a2 + 268) = v14;
  *(a2 + 252) = v13;
  *(a2 + 236) = v12;
  v15 = *(a1 + 316);
  v16 = *(a1 + 332);
  v17 = *(a1 + 300);
  *(a2 + 284) = *(a1 + 284);
  *(a2 + 300) = v17;
  *(a2 + 316) = v15;
  *(a2 + 332) = v16;
  v18 = *(a1 + 380);
  v19 = *(a1 + 396);
  v20 = *(a1 + 364);
  *(a2 + 348) = *(a1 + 348);
  *(a2 + 364) = v20;
  *(a2 + 380) = v18;
  *(a2 + 396) = v19;
  v21 = *(a1 + 156);
  v22 = *(a1 + 172);
  v23 = *(a1 + 188);
  *(a2 + 204) = *(a1 + 204);
  *(a2 + 188) = v23;
  *(a2 + 172) = v22;
  *(a2 + 156) = v21;
  v24 = *(a1 + 412);
  v25 = *(a1 + 428);
  v26 = *(a1 + 460);
  *(a2 + 444) = *(a1 + 444);
  *(a2 + 460) = v26;
  *(a2 + 412) = v24;
  *(a2 + 428) = v25;
  v27 = *(a1 + 476);
  v28 = *(a1 + 492);
  v29 = *(a1 + 524);
  *(a2 + 508) = *(a1 + 508);
  *(a2 + 524) = v29;
  *(a2 + 476) = v27;
  *(a2 + 492) = v28;
  v30 = *(a1 + 540);
  v31 = *(a1 + 556);
  v32 = *(a1 + 588);
  *(a2 + 572) = *(a1 + 572);
  *(a2 + 588) = v32;
  *(a2 + 540) = v30;
  *(a2 + 556) = v31;
  v33 = *(a1 + 604);
  v34 = *(a1 + 620);
  v35 = *(a1 + 652);
  *(a2 + 636) = *(a1 + 636);
  *(a2 + 652) = v35;
  *(a2 + 604) = v33;
  *(a2 + 620) = v34;
  *(a2 + 892) = 0u;
  *(a2 + 908) = 0u;
  *(a2 + 860) = 0u;
  *(a2 + 876) = 0u;
  *(a2 + 828) = 0u;
  *(a2 + 844) = 0u;
  *(a2 + 796) = 0u;
  *(a2 + 812) = 0u;
  *(a2 + 764) = 0u;
  *(a2 + 780) = 0u;
  *(a2 + 732) = 0u;
  *(a2 + 748) = 0u;
  *(a2 + 700) = 0u;
  *(a2 + 716) = 0u;
  *(a2 + 668) = 0u;
  *(a2 + 684) = 0u;
  v36 = *(a1 + 668);
  *(a2 + 940) = *(a1 + 684);
  *(a2 + 924) = v36;
  v37 = *(a1 + 784);
  v39 = *(a1 + 752);
  v38 = *(a1 + 768);
  *(a2 + 1056) = *(a1 + 800);
  *(a2 + 1040) = v37;
  *(a2 + 1008) = v39;
  *(a2 + 1024) = v38;
  v40 = *(a1 + 848);
  v41 = *(a1 + 864);
  v42 = *(a1 + 832);
  *(a2 + 1072) = *(a1 + 816);
  *(a2 + 1120) = v41;
  *(a2 + 1104) = v40;
  *(a2 + 1088) = v42;
  v43 = *(a1 + 912);
  v44 = *(a1 + 928);
  v45 = *(a1 + 896);
  *(a2 + 1136) = *(a1 + 880);
  *(a2 + 1184) = v44;
  *(a2 + 1168) = v43;
  *(a2 + 1152) = v45;
  v46 = *(a1 + 688);
  v47 = *(a1 + 704);
  v48 = *(a1 + 736);
  *(a2 + 976) = *(a1 + 720);
  *(a2 + 992) = v48;
  *(a2 + 944) = v46;
  *(a2 + 960) = v47;
  v49 = *(a1 + 944);
  v50 = *(a1 + 960);
  v51 = *(a1 + 976);
  *(a2 + 1248) = *(a1 + 992);
  *(a2 + 1232) = v51;
  *(a2 + 1216) = v50;
  *(a2 + 1200) = v49;
  v52 = *(a1 + 1008);
  v53 = *(a1 + 1024);
  v54 = *(a1 + 1040);
  *(a2 + 1312) = *(a1 + 1056);
  *(a2 + 1296) = v54;
  *(a2 + 1280) = v53;
  *(a2 + 1264) = v52;
  v55 = *(a1 + 1072);
  v56 = *(a1 + 1088);
  v57 = *(a1 + 1104);
  *(a2 + 1376) = *(a1 + 1120);
  *(a2 + 1360) = v57;
  *(a2 + 1344) = v56;
  *(a2 + 1328) = v55;
  v58 = *(a1 + 1136);
  v59 = *(a1 + 1152);
  v60 = *(a1 + 1168);
  *(a2 + 1440) = *(a1 + 1184);
  *(a2 + 1424) = v60;
  *(a2 + 1408) = v59;
  *(a2 + 1392) = v58;
  *(a2 + 1696) = 0u;
  *(a2 + 1680) = 0u;
  *(a2 + 1664) = 0u;
  *(a2 + 1648) = 0u;
  *(a2 + 1632) = 0u;
  *(a2 + 1616) = 0u;
  *(a2 + 1600) = 0u;
  *(a2 + 1584) = 0u;
  *(a2 + 1568) = 0u;
  *(a2 + 1552) = 0u;
  *(a2 + 1536) = 0u;
  *(a2 + 1520) = 0u;
  *(a2 + 1504) = 0u;
  *(a2 + 1488) = 0u;
  *(a2 + 1472) = 0u;
  *(a2 + 1456) = 0u;
  v61 = *(a1 + 1200);
  *(a2 + 1728) = *(a1 + 1216);
  *(a2 + 1712) = v61;
  v62 = *(a1 + 1332);
  v64 = *(a1 + 1284);
  v63 = *(a1 + 1300);
  *(a2 + 1828) = *(a1 + 1316);
  *(a2 + 1844) = v62;
  *(a2 + 1796) = v64;
  *(a2 + 1812) = v63;
  v65 = *(a1 + 1396);
  v67 = *(a1 + 1348);
  v66 = *(a1 + 1364);
  *(a2 + 1892) = *(a1 + 1380);
  *(a2 + 1908) = v65;
  *(a2 + 1860) = v67;
  *(a2 + 1876) = v66;
  v68 = *(a1 + 1460);
  v70 = *(a1 + 1412);
  v69 = *(a1 + 1428);
  *(a2 + 1956) = *(a1 + 1444);
  *(a2 + 1972) = v68;
  *(a2 + 1924) = v70;
  *(a2 + 1940) = v69;
  v71 = *(a1 + 1220);
  v72 = *(a1 + 1236);
  v73 = *(a1 + 1268);
  *(a2 + 1764) = *(a1 + 1252);
  *(a2 + 1780) = v73;
  *(a2 + 1732) = v71;
  *(a2 + 1748) = v72;
  v74 = *(a1 + 1476);
  v75 = *(a1 + 1492);
  v76 = *(a1 + 1524);
  *(a2 + 2020) = *(a1 + 1508);
  *(a2 + 2036) = v76;
  *(a2 + 1988) = v74;
  *(a2 + 2004) = v75;
  v77 = *(a1 + 1540);
  v78 = *(a1 + 1556);
  v79 = *(a1 + 1588);
  *(a2 + 2084) = *(a1 + 1572);
  *(a2 + 2100) = v79;
  *(a2 + 2052) = v77;
  *(a2 + 2068) = v78;
  v80 = *(a1 + 1604);
  v81 = *(a1 + 1620);
  v82 = *(a1 + 1652);
  *(a2 + 2148) = *(a1 + 1636);
  *(a2 + 2164) = v82;
  *(a2 + 2116) = v80;
  *(a2 + 2132) = v81;
  v83 = *(a1 + 1668);
  v84 = *(a1 + 1684);
  v85 = *(a1 + 1716);
  *(a2 + 2212) = *(a1 + 1700);
  *(a2 + 2228) = v85;
  *(a2 + 2180) = v83;
  *(a2 + 2196) = v84;
  *(a2 + 2468) = 0u;
  *(a2 + 2484) = 0u;
  *(a2 + 2436) = 0u;
  *(a2 + 2452) = 0u;
  *(a2 + 2404) = 0u;
  *(a2 + 2420) = 0u;
  *(a2 + 2372) = 0u;
  *(a2 + 2388) = 0u;
  *(a2 + 2340) = 0u;
  *(a2 + 2356) = 0u;
  *(a2 + 2308) = 0u;
  *(a2 + 2324) = 0u;
  *(a2 + 2276) = 0u;
  *(a2 + 2292) = 0u;
  *(a2 + 2244) = 0u;
  *(a2 + 2260) = 0u;
  v86 = *(a1 + 1732);
  *(a2 + 2516) = *(a1 + 1748);
  *(a2 + 2500) = v86;
  v87 = *(a1 + 1864);
  v89 = *(a1 + 1816);
  v88 = *(a1 + 1832);
  *(a2 + 2616) = *(a1 + 1848);
  *(a2 + 2632) = v87;
  *(a2 + 2584) = v89;
  *(a2 + 2600) = v88;
  v90 = *(a1 + 1928);
  v92 = *(a1 + 1880);
  v91 = *(a1 + 1896);
  *(a2 + 2680) = *(a1 + 1912);
  *(a2 + 2696) = v90;
  *(a2 + 2648) = v92;
  *(a2 + 2664) = v91;
  v93 = *(a1 + 1992);
  v95 = *(a1 + 1944);
  v94 = *(a1 + 1960);
  *(a2 + 2744) = *(a1 + 1976);
  *(a2 + 2760) = v93;
  *(a2 + 2712) = v95;
  *(a2 + 2728) = v94;
  v96 = *(a1 + 1752);
  v97 = *(a1 + 1768);
  v98 = *(a1 + 1800);
  *(a2 + 2552) = *(a1 + 1784);
  *(a2 + 2568) = v98;
  *(a2 + 2520) = v96;
  *(a2 + 2536) = v97;
  v99 = *(a1 + 2008);
  v100 = *(a1 + 2024);
  v101 = *(a1 + 2056);
  *(a2 + 2808) = *(a1 + 2040);
  *(a2 + 2824) = v101;
  *(a2 + 2776) = v99;
  *(a2 + 2792) = v100;
  v102 = *(a1 + 2072);
  v103 = *(a1 + 2088);
  v104 = *(a1 + 2120);
  *(a2 + 2872) = *(a1 + 2104);
  *(a2 + 2888) = v104;
  *(a2 + 2840) = v102;
  *(a2 + 2856) = v103;
  v105 = *(a1 + 2136);
  v106 = *(a1 + 2152);
  v107 = *(a1 + 2184);
  *(a2 + 2936) = *(a1 + 2168);
  *(a2 + 2952) = v107;
  *(a2 + 2904) = v105;
  *(a2 + 2920) = v106;
  v108 = *(a1 + 2200);
  v109 = *(a1 + 2216);
  v110 = *(a1 + 2248);
  *(a2 + 3000) = *(a1 + 2232);
  *(a2 + 3016) = v110;
  *(a2 + 2968) = v108;
  *(a2 + 2984) = v109;
  *(a2 + 3256) = 0u;
  *(a2 + 3272) = 0u;
  *(a2 + 3224) = 0u;
  *(a2 + 3240) = 0u;
  *(a2 + 3192) = 0u;
  *(a2 + 3208) = 0u;
  *(a2 + 3160) = 0u;
  *(a2 + 3176) = 0u;
  *(a2 + 3128) = 0u;
  *(a2 + 3144) = 0u;
  *(a2 + 3096) = 0u;
  *(a2 + 3112) = 0u;
  *(a2 + 3064) = 0u;
  *(a2 + 3080) = 0u;
  *(a2 + 3032) = 0u;
  *(a2 + 3048) = 0u;
  v111 = *(a1 + 2264);
  *(a2 + 3304) = *(a1 + 2280);
  *(a2 + 3288) = v111;
  v112 = *(a1 + 2396);
  v114 = *(a1 + 2348);
  v113 = *(a1 + 2364);
  *(a2 + 3404) = *(a1 + 2380);
  *(a2 + 3420) = v112;
  *(a2 + 3372) = v114;
  *(a2 + 3388) = v113;
  v115 = *(a1 + 2460);
  v117 = *(a1 + 2412);
  v116 = *(a1 + 2428);
  *(a2 + 3468) = *(a1 + 2444);
  *(a2 + 3484) = v115;
  *(a2 + 3436) = v117;
  *(a2 + 3452) = v116;
  v118 = *(a1 + 2524);
  v120 = *(a1 + 2476);
  v119 = *(a1 + 2492);
  *(a2 + 3532) = *(a1 + 2508);
  *(a2 + 3548) = v118;
  *(a2 + 3500) = v120;
  *(a2 + 3516) = v119;
  v121 = *(a1 + 2284);
  v122 = *(a1 + 2300);
  v123 = *(a1 + 2332);
  *(a2 + 3340) = *(a1 + 2316);
  *(a2 + 3356) = v123;
  *(a2 + 3308) = v121;
  *(a2 + 3324) = v122;
  v124 = *(a1 + 2540);
  v125 = *(a1 + 2556);
  v126 = *(a1 + 2588);
  *(a2 + 3596) = *(a1 + 2572);
  *(a2 + 3612) = v126;
  *(a2 + 3564) = v124;
  *(a2 + 3580) = v125;
  v127 = *(a1 + 2604);
  v128 = *(a1 + 2620);
  v129 = *(a1 + 2652);
  *(a2 + 3660) = *(a1 + 2636);
  *(a2 + 3676) = v129;
  *(a2 + 3628) = v127;
  *(a2 + 3644) = v128;
  v130 = *(a1 + 2668);
  v131 = *(a1 + 2684);
  v132 = *(a1 + 2716);
  *(a2 + 3724) = *(a1 + 2700);
  *(a2 + 3740) = v132;
  *(a2 + 3692) = v130;
  *(a2 + 3708) = v131;
  v133 = *(a1 + 2732);
  v134 = *(a1 + 2748);
  v135 = *(a1 + 2780);
  *(a2 + 3788) = *(a1 + 2764);
  *(a2 + 3804) = v135;
  *(a2 + 3756) = v133;
  *(a2 + 3772) = v134;
  *(a2 + 4044) = 0u;
  *(a2 + 4060) = 0u;
  *(a2 + 4012) = 0u;
  *(a2 + 4028) = 0u;
  *(a2 + 3980) = 0u;
  *(a2 + 3996) = 0u;
  *(a2 + 3948) = 0u;
  *(a2 + 3964) = 0u;
  *(a2 + 3916) = 0u;
  *(a2 + 3932) = 0u;
  *(a2 + 3884) = 0u;
  *(a2 + 3900) = 0u;
  *(a2 + 3852) = 0u;
  *(a2 + 3868) = 0u;
  *(a2 + 3820) = 0u;
  *(a2 + 3836) = 0u;
  v136 = *(a1 + 2796);
  *(a2 + 4092) = *(a1 + 2812);
  *(a2 + 4076) = v136;
  v137 = *(a1 + 2896);
  v138 = *(a1 + 2912);
  v139 = *(a1 + 2928);
  *(a2 + 4160) = *(a1 + 2880);
  *(a2 + 4208) = v139;
  *(a2 + 4192) = v138;
  *(a2 + 4176) = v137;
  v140 = *(a1 + 2960);
  v141 = *(a1 + 2976);
  v142 = *(a1 + 2992);
  *(a2 + 4224) = *(a1 + 2944);
  *(a2 + 4272) = v142;
  *(a2 + 4256) = v141;
  *(a2 + 4240) = v140;
  v143 = *(a1 + 3024);
  v144 = *(a1 + 3040);
  v145 = *(a1 + 3056);
  *(a2 + 4288) = *(a1 + 3008);
  *(a2 + 4336) = v145;
  *(a2 + 4320) = v144;
  *(a2 + 4304) = v143;
  v146 = *(a1 + 2816);
  v147 = *(a1 + 2832);
  v148 = *(a1 + 2848);
  *(a2 + 4144) = *(a1 + 2864);
  *(a2 + 4128) = v148;
  *(a2 + 4112) = v147;
  *(a2 + 4096) = v146;
  v149 = *(a1 + 3072);
  v150 = *(a1 + 3088);
  v151 = *(a1 + 3104);
  *(a2 + 4400) = *(a1 + 3120);
  *(a2 + 4384) = v151;
  *(a2 + 4368) = v150;
  *(a2 + 4352) = v149;
  v152 = *(a1 + 3136);
  v153 = *(a1 + 3152);
  v154 = *(a1 + 3168);
  *(a2 + 4464) = *(a1 + 3184);
  *(a2 + 4448) = v154;
  *(a2 + 4432) = v153;
  *(a2 + 4416) = v152;
  v155 = *(a1 + 3200);
  v156 = *(a1 + 3216);
  v157 = *(a1 + 3232);
  *(a2 + 4528) = *(a1 + 3248);
  *(a2 + 4512) = v157;
  *(a2 + 4496) = v156;
  *(a2 + 4480) = v155;
  v158 = *(a1 + 3264);
  v159 = *(a1 + 3280);
  v160 = *(a1 + 3296);
  *(a2 + 4592) = *(a1 + 3312);
  *(a2 + 4576) = v160;
  *(a2 + 4560) = v159;
  *(a2 + 4544) = v158;
  *(a2 + 4848) = 0u;
  *(a2 + 4832) = 0u;
  *(a2 + 4816) = 0u;
  *(a2 + 4800) = 0u;
  *(a2 + 4784) = 0u;
  *(a2 + 4768) = 0u;
  *(a2 + 4752) = 0u;
  *(a2 + 4736) = 0u;
  *(a2 + 4720) = 0u;
  *(a2 + 4704) = 0u;
  *(a2 + 4688) = 0u;
  *(a2 + 4672) = 0u;
  *(a2 + 4656) = 0u;
  *(a2 + 4640) = 0u;
  *(a2 + 4624) = 0u;
  *(a2 + 4608) = 0u;
  v161 = *(a1 + 3328);
  *(a2 + 4880) = *(a1 + 3344);
  *(a2 + 4864) = v161;
  v162 = *(a1 + 3460);
  v164 = *(a1 + 3412);
  v163 = *(a1 + 3428);
  *(a2 + 4980) = *(a1 + 3444);
  *(a2 + 4996) = v162;
  *(a2 + 4948) = v164;
  *(a2 + 4964) = v163;
  v165 = *(a1 + 3524);
  v167 = *(a1 + 3476);
  v166 = *(a1 + 3492);
  *(a2 + 5044) = *(a1 + 3508);
  *(a2 + 5060) = v165;
  *(a2 + 5012) = v167;
  *(a2 + 5028) = v166;
  v168 = *(a1 + 3588);
  v170 = *(a1 + 3540);
  v169 = *(a1 + 3556);
  *(a2 + 5108) = *(a1 + 3572);
  *(a2 + 5124) = v168;
  *(a2 + 5076) = v170;
  *(a2 + 5092) = v169;
  v171 = *(a1 + 3348);
  v172 = *(a1 + 3364);
  v173 = *(a1 + 3396);
  *(a2 + 4916) = *(a1 + 3380);
  *(a2 + 4932) = v173;
  *(a2 + 4884) = v171;
  *(a2 + 4900) = v172;
  v174 = *(a1 + 3604);
  v175 = *(a1 + 3620);
  v176 = *(a1 + 3652);
  *(a2 + 5172) = *(a1 + 3636);
  *(a2 + 5188) = v176;
  *(a2 + 5140) = v174;
  *(a2 + 5156) = v175;
  v177 = *(a1 + 3668);
  v178 = *(a1 + 3684);
  v179 = *(a1 + 3716);
  *(a2 + 5236) = *(a1 + 3700);
  *(a2 + 5252) = v179;
  *(a2 + 5204) = v177;
  *(a2 + 5220) = v178;
  v180 = *(a1 + 3732);
  v181 = *(a1 + 3748);
  v182 = *(a1 + 3780);
  *(a2 + 5300) = *(a1 + 3764);
  *(a2 + 5316) = v182;
  *(a2 + 5268) = v180;
  *(a2 + 5284) = v181;
  v183 = *(a1 + 3796);
  v184 = *(a1 + 3812);
  v185 = *(a1 + 3844);
  *(a2 + 5364) = *(a1 + 3828);
  *(a2 + 5380) = v185;
  *(a2 + 5332) = v183;
  *(a2 + 5348) = v184;
  *(a2 + 5620) = 0u;
  *(a2 + 5636) = 0u;
  *(a2 + 5588) = 0u;
  *(a2 + 5604) = 0u;
  *(a2 + 5556) = 0u;
  *(a2 + 5572) = 0u;
  *(a2 + 5524) = 0u;
  *(a2 + 5540) = 0u;
  *(a2 + 5492) = 0u;
  *(a2 + 5508) = 0u;
  *(a2 + 5460) = 0u;
  *(a2 + 5476) = 0u;
  *(a2 + 5428) = 0u;
  *(a2 + 5444) = 0u;
  *(a2 + 5396) = 0u;
  *(a2 + 5412) = 0u;
  v186 = *(a1 + 3876);
  *(a2 + 5652) = *(a1 + 3860);
  *(a2 + 5668) = v186;
  v187 = *(a1 + 3992);
  v189 = *(a1 + 3944);
  v188 = *(a1 + 3960);
  *(a2 + 5768) = *(a1 + 3976);
  *(a2 + 5784) = v187;
  *(a2 + 5736) = v189;
  *(a2 + 5752) = v188;
  v190 = *(a1 + 4056);
  v192 = *(a1 + 4008);
  v191 = *(a1 + 4024);
  *(a2 + 5832) = *(a1 + 4040);
  *(a2 + 5848) = v190;
  *(a2 + 5800) = v192;
  *(a2 + 5816) = v191;
  v193 = *(a1 + 4120);
  v195 = *(a1 + 4072);
  v194 = *(a1 + 4088);
  *(a2 + 5896) = *(a1 + 4104);
  *(a2 + 5912) = v193;
  *(a2 + 5864) = v195;
  *(a2 + 5880) = v194;
  v196 = *(a1 + 3880);
  v197 = *(a1 + 3896);
  v198 = *(a1 + 3928);
  *(a2 + 5704) = *(a1 + 3912);
  *(a2 + 5720) = v198;
  *(a2 + 5672) = v196;
  *(a2 + 5688) = v197;
  v199 = *(a1 + 4136);
  v200 = *(a1 + 4152);
  v201 = *(a1 + 4184);
  *(a2 + 5960) = *(a1 + 4168);
  *(a2 + 5976) = v201;
  *(a2 + 5928) = v199;
  *(a2 + 5944) = v200;
  v202 = *(a1 + 4200);
  v203 = *(a1 + 4216);
  v204 = *(a1 + 4248);
  *(a2 + 6024) = *(a1 + 4232);
  *(a2 + 6040) = v204;
  *(a2 + 5992) = v202;
  *(a2 + 6008) = v203;
  v205 = *(a1 + 4264);
  v206 = *(a1 + 4280);
  v207 = *(a1 + 4312);
  *(a2 + 6088) = *(a1 + 4296);
  *(a2 + 6104) = v207;
  *(a2 + 6056) = v205;
  *(a2 + 6072) = v206;
  v208 = *(a1 + 4328);
  v209 = *(a1 + 4344);
  v210 = *(a1 + 4376);
  *(a2 + 6152) = *(a1 + 4360);
  *(a2 + 6168) = v210;
  *(a2 + 6120) = v208;
  *(a2 + 6136) = v209;
  *(a2 + 6408) = 0u;
  *(a2 + 6424) = 0u;
  *(a2 + 6376) = 0u;
  *(a2 + 6392) = 0u;
  *(a2 + 6344) = 0u;
  *(a2 + 6360) = 0u;
  *(a2 + 6312) = 0u;
  *(a2 + 6328) = 0u;
  *(a2 + 6280) = 0u;
  *(a2 + 6296) = 0u;
  *(a2 + 6248) = 0u;
  *(a2 + 6264) = 0u;
  *(a2 + 6216) = 0u;
  *(a2 + 6232) = 0u;
  *(a2 + 6184) = 0u;
  *(a2 + 6200) = 0u;
  v211 = *(a1 + 4408);
  *(a2 + 6440) = *(a1 + 4392);
  *(a2 + 6456) = v211;
  v212 = *(a1 + 4524);
  v214 = *(a1 + 4476);
  v213 = *(a1 + 4492);
  *(a2 + 6556) = *(a1 + 4508);
  *(a2 + 6572) = v212;
  *(a2 + 6524) = v214;
  *(a2 + 6540) = v213;
  v215 = *(a1 + 4588);
  v217 = *(a1 + 4540);
  v216 = *(a1 + 4556);
  *(a2 + 6620) = *(a1 + 4572);
  *(a2 + 6636) = v215;
  *(a2 + 6588) = v217;
  *(a2 + 6604) = v216;
  v218 = *(a1 + 4652);
  v220 = *(a1 + 4604);
  v219 = *(a1 + 4620);
  *(a2 + 6684) = *(a1 + 4636);
  *(a2 + 6700) = v218;
  *(a2 + 6652) = v220;
  *(a2 + 6668) = v219;
  v221 = *(a1 + 4412);
  v222 = *(a1 + 4428);
  v223 = *(a1 + 4460);
  *(a2 + 6492) = *(a1 + 4444);
  *(a2 + 6508) = v223;
  *(a2 + 6460) = v221;
  *(a2 + 6476) = v222;
  v224 = *(a1 + 4668);
  v225 = *(a1 + 4684);
  v226 = *(a1 + 4716);
  *(a2 + 6748) = *(a1 + 4700);
  *(a2 + 6764) = v226;
  *(a2 + 6716) = v224;
  *(a2 + 6732) = v225;
  v227 = *(a1 + 4732);
  v228 = *(a1 + 4748);
  v229 = *(a1 + 4780);
  *(a2 + 6812) = *(a1 + 4764);
  *(a2 + 6828) = v229;
  *(a2 + 6780) = v227;
  *(a2 + 6796) = v228;
  v230 = *(a1 + 4796);
  v231 = *(a1 + 4812);
  v232 = *(a1 + 4844);
  *(a2 + 6876) = *(a1 + 4828);
  *(a2 + 6892) = v232;
  *(a2 + 6844) = v230;
  *(a2 + 6860) = v231;
  v233 = *(a1 + 4860);
  v234 = *(a1 + 4876);
  v235 = *(a1 + 4908);
  *(a2 + 6940) = *(a1 + 4892);
  *(a2 + 6956) = v235;
  *(a2 + 6908) = v233;
  *(a2 + 6924) = v234;
  *(a2 + 7196) = 0u;
  *(a2 + 7212) = 0u;
  *(a2 + 7164) = 0u;
  *(a2 + 7180) = 0u;
  *(a2 + 7132) = 0u;
  *(a2 + 7148) = 0u;
  *(a2 + 7100) = 0u;
  *(a2 + 7116) = 0u;
  *(a2 + 7068) = 0u;
  *(a2 + 7084) = 0u;
  *(a2 + 7036) = 0u;
  *(a2 + 7052) = 0u;
  *(a2 + 7004) = 0u;
  *(a2 + 7020) = 0u;
  *(a2 + 6972) = 0u;
  *(a2 + 6988) = 0u;
  v236 = *(a1 + 4940);
  *(a2 + 7228) = *(a1 + 4924);
  *(a2 + 7244) = v236;
  v237 = *(a1 + 5024);
  v238 = *(a1 + 5040);
  v239 = *(a1 + 5056);
  *(a2 + 7312) = *(a1 + 5008);
  *(a2 + 7360) = v239;
  *(a2 + 7344) = v238;
  *(a2 + 7328) = v237;
  v240 = *(a1 + 5088);
  v241 = *(a1 + 5104);
  v242 = *(a1 + 5120);
  *(a2 + 7376) = *(a1 + 5072);
  *(a2 + 7424) = v242;
  *(a2 + 7408) = v241;
  *(a2 + 7392) = v240;
  v243 = *(a1 + 5152);
  v244 = *(a1 + 5168);
  v245 = *(a1 + 5184);
  *(a2 + 7440) = *(a1 + 5136);
  *(a2 + 7488) = v245;
  *(a2 + 7472) = v244;
  *(a2 + 7456) = v243;
  v246 = *(a1 + 4944);
  v247 = *(a1 + 4960);
  v248 = *(a1 + 4976);
  *(a2 + 7296) = *(a1 + 4992);
  *(a2 + 7280) = v248;
  *(a2 + 7264) = v247;
  *(a2 + 7248) = v246;
  v249 = *(a1 + 5200);
  v250 = *(a1 + 5216);
  v251 = *(a1 + 5232);
  *(a2 + 7552) = *(a1 + 5248);
  *(a2 + 7536) = v251;
  *(a2 + 7520) = v250;
  *(a2 + 7504) = v249;
  v252 = *(a1 + 5264);
  v253 = *(a1 + 5280);
  v254 = *(a1 + 5296);
  *(a2 + 7616) = *(a1 + 5312);
  *(a2 + 7600) = v254;
  *(a2 + 7584) = v253;
  *(a2 + 7568) = v252;
  v255 = *(a1 + 5328);
  v256 = *(a1 + 5344);
  v257 = *(a1 + 5360);
  *(a2 + 7680) = *(a1 + 5376);
  *(a2 + 7664) = v257;
  *(a2 + 7648) = v256;
  *(a2 + 7632) = v255;
  v258 = *(a1 + 5392);
  v259 = *(a1 + 5408);
  v260 = *(a1 + 5424);
  *(a2 + 7744) = *(a1 + 5440);
  *(a2 + 7728) = v260;
  *(a2 + 7712) = v259;
  *(a2 + 7696) = v258;
  *(a2 + 8000) = 0u;
  *(a2 + 7984) = 0u;
  *(a2 + 7968) = 0u;
  *(a2 + 7952) = 0u;
  *(a2 + 7936) = 0u;
  *(a2 + 7920) = 0u;
  *(a2 + 7904) = 0u;
  *(a2 + 7888) = 0u;
  *(a2 + 7872) = 0u;
  *(a2 + 7856) = 0u;
  *(a2 + 7840) = 0u;
  *(a2 + 7824) = 0u;
  *(a2 + 7808) = 0u;
  *(a2 + 7792) = 0u;
  *(a2 + 7776) = 0u;
  *(a2 + 7760) = 0u;
  v261 = *(a1 + 5456);
  *(a2 + 8032) = *(a1 + 5472);
  *(a2 + 8016) = v261;
  v262 = *(a1 + 5588);
  v264 = *(a1 + 5540);
  v263 = *(a1 + 5556);
  *(a2 + 8132) = *(a1 + 5572);
  *(a2 + 8148) = v262;
  *(a2 + 8100) = v264;
  *(a2 + 8116) = v263;
  v265 = *(a1 + 5636);
  v266 = *(a1 + 5652);
  v267 = *(a1 + 5620);
  *(a2 + 8164) = *(a1 + 5604);
  *(a2 + 8180) = v267;
  *(a2 + 8196) = v265;
  *(a2 + 8212) = v266;
  v268 = *(a1 + 5700);
  v269 = *(a1 + 5716);
  v270 = *(a1 + 5684);
  *(a2 + 8228) = *(a1 + 5668);
  *(a2 + 8244) = v270;
  *(a2 + 8260) = v268;
  *(a2 + 8276) = v269;
  v271 = *(a1 + 5476);
  v272 = *(a1 + 5492);
  v273 = *(a1 + 5524);
  *(a2 + 8068) = *(a1 + 5508);
  *(a2 + 8084) = v273;
  *(a2 + 8036) = v271;
  *(a2 + 8052) = v272;
  v274 = *(a1 + 5732);
  v275 = *(a1 + 5748);
  v276 = *(a1 + 5780);
  *(a2 + 8324) = *(a1 + 5764);
  *(a2 + 8340) = v276;
  *(a2 + 8292) = v274;
  *(a2 + 8308) = v275;
  v277 = *(a1 + 5796);
  v278 = *(a1 + 5812);
  v279 = *(a1 + 5844);
  *(a2 + 8388) = *(a1 + 5828);
  *(a2 + 8404) = v279;
  *(a2 + 8356) = v277;
  *(a2 + 8372) = v278;
  v280 = *(a1 + 5860);
  v281 = *(a1 + 5876);
  v282 = *(a1 + 5908);
  *(a2 + 8452) = *(a1 + 5892);
  *(a2 + 8468) = v282;
  *(a2 + 8420) = v280;
  *(a2 + 8436) = v281;
  v283 = *(a1 + 5924);
  v284 = *(a1 + 5940);
  v285 = *(a1 + 5972);
  *(a2 + 8516) = *(a1 + 5956);
  *(a2 + 8532) = v285;
  *(a2 + 8484) = v283;
  *(a2 + 8500) = v284;
  *(a2 + 8772) = 0u;
  *(a2 + 8788) = 0u;
  *(a2 + 8740) = 0u;
  *(a2 + 8756) = 0u;
  *(a2 + 8708) = 0u;
  *(a2 + 8724) = 0u;
  *(a2 + 8676) = 0u;
  *(a2 + 8692) = 0u;
  *(a2 + 8644) = 0u;
  *(a2 + 8660) = 0u;
  *(a2 + 8612) = 0u;
  *(a2 + 8628) = 0u;
  *(a2 + 8580) = 0u;
  *(a2 + 8596) = 0u;
  *(a2 + 8548) = 0u;
  *(a2 + 8564) = 0u;
  v286 = *(a1 + 6004);
  *(a2 + 8804) = *(a1 + 5988);
  *(a2 + 8820) = v286;
  v287 = *(a1 + 6120);
  v289 = *(a1 + 6072);
  v288 = *(a1 + 6088);
  *(a2 + 8920) = *(a1 + 6104);
  *(a2 + 8936) = v287;
  *(a2 + 8888) = v289;
  *(a2 + 8904) = v288;
  v290 = *(a1 + 6184);
  v292 = *(a1 + 6136);
  v291 = *(a1 + 6152);
  *(a2 + 8984) = *(a1 + 6168);
  *(a2 + 9000) = v290;
  *(a2 + 8952) = v292;
  *(a2 + 8968) = v291;
  v293 = *(a1 + 6248);
  v295 = *(a1 + 6200);
  v294 = *(a1 + 6216);
  *(a2 + 9048) = *(a1 + 6232);
  *(a2 + 9064) = v293;
  *(a2 + 9016) = v295;
  *(a2 + 9032) = v294;
  v296 = *(a1 + 6008);
  v297 = *(a1 + 6024);
  v298 = *(a1 + 6056);
  *(a2 + 8856) = *(a1 + 6040);
  *(a2 + 8872) = v298;
  *(a2 + 8824) = v296;
  *(a2 + 8840) = v297;
  v299 = *(a1 + 6264);
  v300 = *(a1 + 6280);
  v301 = *(a1 + 6312);
  *(a2 + 9112) = *(a1 + 6296);
  *(a2 + 9128) = v301;
  *(a2 + 9080) = v299;
  *(a2 + 9096) = v300;
  v302 = *(a1 + 6328);
  v303 = *(a1 + 6344);
  v304 = *(a1 + 6376);
  *(a2 + 9176) = *(a1 + 6360);
  *(a2 + 9192) = v304;
  *(a2 + 9144) = v302;
  *(a2 + 9160) = v303;
  v305 = *(a1 + 6392);
  v306 = *(a1 + 6408);
  v307 = *(a1 + 6440);
  *(a2 + 9240) = *(a1 + 6424);
  *(a2 + 9256) = v307;
  *(a2 + 9208) = v305;
  *(a2 + 9224) = v306;
  v308 = *(a1 + 6456);
  v309 = *(a1 + 6472);
  v310 = *(a1 + 6504);
  *(a2 + 9304) = *(a1 + 6488);
  *(a2 + 9320) = v310;
  *(a2 + 9272) = v308;
  *(a2 + 9288) = v309;
  *(a2 + 9560) = 0u;
  *(a2 + 9576) = 0u;
  *(a2 + 9528) = 0u;
  *(a2 + 9544) = 0u;
  *(a2 + 9496) = 0u;
  *(a2 + 9512) = 0u;
  *(a2 + 9464) = 0u;
  *(a2 + 9480) = 0u;
  *(a2 + 9432) = 0u;
  *(a2 + 9448) = 0u;
  *(a2 + 9400) = 0u;
  *(a2 + 9416) = 0u;
  *(a2 + 9368) = 0u;
  *(a2 + 9384) = 0u;
  *(a2 + 9336) = 0u;
  *(a2 + 9352) = 0u;
  v311 = *(a1 + 6536);
  *(a2 + 9592) = *(a1 + 6520);
  *(a2 + 9608) = v311;
  v312 = *(a1 + 6652);
  v314 = *(a1 + 6604);
  v313 = *(a1 + 6620);
  *(a2 + 9708) = *(a1 + 6636);
  *(a2 + 9724) = v312;
  *(a2 + 9676) = v314;
  *(a2 + 9692) = v313;
  v315 = *(a1 + 6716);
  v317 = *(a1 + 6668);
  v316 = *(a1 + 6684);
  *(a2 + 9772) = *(a1 + 6700);
  *(a2 + 9788) = v315;
  *(a2 + 9740) = v317;
  *(a2 + 9756) = v316;
  v318 = *(a1 + 6780);
  v320 = *(a1 + 6732);
  v319 = *(a1 + 6748);
  *(a2 + 9836) = *(a1 + 6764);
  *(a2 + 9852) = v318;
  *(a2 + 9804) = v320;
  *(a2 + 9820) = v319;
  v321 = *(a1 + 6540);
  v322 = *(a1 + 6556);
  v323 = *(a1 + 6588);
  *(a2 + 9644) = *(a1 + 6572);
  *(a2 + 9660) = v323;
  *(a2 + 9612) = v321;
  *(a2 + 9628) = v322;
  v324 = *(a1 + 6796);
  v325 = *(a1 + 6812);
  v326 = *(a1 + 6844);
  *(a2 + 9900) = *(a1 + 6828);
  *(a2 + 9916) = v326;
  *(a2 + 9868) = v324;
  *(a2 + 9884) = v325;
  v327 = *(a1 + 6860);
  v328 = *(a1 + 6876);
  v329 = *(a1 + 6908);
  *(a2 + 9964) = *(a1 + 6892);
  *(a2 + 9980) = v329;
  *(a2 + 9932) = v327;
  *(a2 + 9948) = v328;
  v330 = *(a1 + 6924);
  v331 = *(a1 + 6940);
  v332 = *(a1 + 6972);
  *(a2 + 10028) = *(a1 + 6956);
  *(a2 + 10044) = v332;
  *(a2 + 9996) = v330;
  *(a2 + 10012) = v331;
  v333 = *(a1 + 6988);
  v334 = *(a1 + 7004);
  v335 = *(a1 + 7036);
  *(a2 + 10092) = *(a1 + 7020);
  *(a2 + 10108) = v335;
  *(a2 + 10060) = v333;
  *(a2 + 10076) = v334;
  *(a2 + 10348) = 0u;
  *(a2 + 10364) = 0u;
  *(a2 + 10316) = 0u;
  *(a2 + 10332) = 0u;
  *(a2 + 10284) = 0u;
  *(a2 + 10300) = 0u;
  *(a2 + 10252) = 0u;
  *(a2 + 10268) = 0u;
  *(a2 + 10220) = 0u;
  *(a2 + 10236) = 0u;
  *(a2 + 10188) = 0u;
  *(a2 + 10204) = 0u;
  *(a2 + 10156) = 0u;
  *(a2 + 10172) = 0u;
  *(a2 + 10124) = 0u;
  *(a2 + 10140) = 0u;
  v336 = *(a1 + 7068);
  *(a2 + 10380) = *(a1 + 7052);
  *(a2 + 10396) = v336;
  v337 = *(a1 + 7152);
  v338 = *(a1 + 7168);
  v339 = *(a1 + 7184);
  *(a2 + 10464) = *(a1 + 7136);
  *(a2 + 10512) = v339;
  *(a2 + 10496) = v338;
  *(a2 + 10480) = v337;
  v340 = *(a1 + 7216);
  v341 = *(a1 + 7232);
  v342 = *(a1 + 7248);
  *(a2 + 10528) = *(a1 + 7200);
  *(a2 + 10576) = v342;
  *(a2 + 10560) = v341;
  *(a2 + 10544) = v340;
  v343 = *(a1 + 7280);
  v344 = *(a1 + 7296);
  v345 = *(a1 + 7312);
  *(a2 + 10592) = *(a1 + 7264);
  *(a2 + 10640) = v345;
  *(a2 + 10624) = v344;
  *(a2 + 10608) = v343;
  v346 = *(a1 + 7072);
  v347 = *(a1 + 7088);
  v348 = *(a1 + 7104);
  *(a2 + 10448) = *(a1 + 7120);
  *(a2 + 10432) = v348;
  *(a2 + 10416) = v347;
  *(a2 + 10400) = v346;
  v349 = *(a1 + 7328);
  v350 = *(a1 + 7344);
  v351 = *(a1 + 7360);
  *(a2 + 10704) = *(a1 + 7376);
  *(a2 + 10688) = v351;
  *(a2 + 10672) = v350;
  *(a2 + 10656) = v349;
  v352 = *(a1 + 7392);
  v353 = *(a1 + 7408);
  v354 = *(a1 + 7424);
  *(a2 + 10768) = *(a1 + 7440);
  *(a2 + 10752) = v354;
  *(a2 + 10736) = v353;
  *(a2 + 10720) = v352;
  v355 = *(a1 + 7456);
  v356 = *(a1 + 7472);
  v357 = *(a1 + 7488);
  *(a2 + 10832) = *(a1 + 7504);
  *(a2 + 10816) = v357;
  *(a2 + 10800) = v356;
  *(a2 + 10784) = v355;
  v358 = *(a1 + 7520);
  v359 = *(a1 + 7536);
  v360 = *(a1 + 7552);
  *(a2 + 10896) = *(a1 + 7568);
  *(a2 + 10880) = v360;
  *(a2 + 10864) = v359;
  *(a2 + 10848) = v358;
  *(a2 + 11152) = 0u;
  *(a2 + 11136) = 0u;
  *(a2 + 11120) = 0u;
  *(a2 + 11104) = 0u;
  *(a2 + 11088) = 0u;
  *(a2 + 11072) = 0u;
  *(a2 + 11056) = 0u;
  *(a2 + 11040) = 0u;
  *(a2 + 11024) = 0u;
  *(a2 + 11008) = 0u;
  *(a2 + 10992) = 0u;
  *(a2 + 10976) = 0u;
  *(a2 + 10960) = 0u;
  *(a2 + 10944) = 0u;
  *(a2 + 10928) = 0u;
  *(a2 + 10912) = 0u;
  v361 = *(a1 + 7584);
  *(a2 + 11184) = *(a1 + 7600);
  *(a2 + 11168) = v361;
  v362 = *(a1 + 7716);
  v364 = *(a1 + 7668);
  v363 = *(a1 + 7684);
  *(a2 + 11284) = *(a1 + 7700);
  *(a2 + 11300) = v362;
  *(a2 + 11252) = v364;
  *(a2 + 11268) = v363;
  v365 = *(a1 + 7780);
  v367 = *(a1 + 7732);
  v366 = *(a1 + 7748);
  *(a2 + 11348) = *(a1 + 7764);
  *(a2 + 11364) = v365;
  *(a2 + 11316) = v367;
  *(a2 + 11332) = v366;
  v368 = *(a1 + 7844);
  v370 = *(a1 + 7796);
  v369 = *(a1 + 7812);
  *(a2 + 11412) = *(a1 + 7828);
  *(a2 + 11428) = v368;
  *(a2 + 11380) = v370;
  *(a2 + 11396) = v369;
  v371 = *(a1 + 7604);
  v372 = *(a1 + 7620);
  v373 = *(a1 + 7652);
  *(a2 + 11220) = *(a1 + 7636);
  *(a2 + 11236) = v373;
  *(a2 + 11188) = v371;
  *(a2 + 11204) = v372;
  v374 = *(a1 + 7860);
  v375 = *(a1 + 7876);
  v376 = *(a1 + 7908);
  *(a2 + 11476) = *(a1 + 7892);
  *(a2 + 11492) = v376;
  *(a2 + 11444) = v374;
  *(a2 + 11460) = v375;
  v377 = *(a1 + 7924);
  v378 = *(a1 + 7940);
  v379 = *(a1 + 7972);
  *(a2 + 11540) = *(a1 + 7956);
  *(a2 + 11556) = v379;
  *(a2 + 11508) = v377;
  *(a2 + 11524) = v378;
  v380 = *(a1 + 7988);
  v381 = *(a1 + 8004);
  v382 = *(a1 + 8036);
  *(a2 + 11604) = *(a1 + 8020);
  *(a2 + 11620) = v382;
  *(a2 + 11572) = v380;
  *(a2 + 11588) = v381;
  v383 = *(a1 + 8052);
  v384 = *(a1 + 8068);
  v385 = *(a1 + 8100);
  *(a2 + 11668) = *(a1 + 8084);
  *(a2 + 11684) = v385;
  *(a2 + 11636) = v383;
  *(a2 + 11652) = v384;
  *(a2 + 11924) = 0u;
  *(a2 + 11940) = 0u;
  *(a2 + 11892) = 0u;
  *(a2 + 11908) = 0u;
  *(a2 + 11860) = 0u;
  *(a2 + 11876) = 0u;
  *(a2 + 11828) = 0u;
  *(a2 + 11844) = 0u;
  *(a2 + 11796) = 0u;
  *(a2 + 11812) = 0u;
  *(a2 + 11764) = 0u;
  *(a2 + 11780) = 0u;
  *(a2 + 11732) = 0u;
  *(a2 + 11748) = 0u;
  *(a2 + 11700) = 0u;
  *(a2 + 11716) = 0u;
  v386 = *(a1 + 8132);
  *(a2 + 11956) = *(a1 + 8116);
  *(a2 + 11972) = v386;
  v387 = *(a1 + 8248);
  v389 = *(a1 + 8200);
  v388 = *(a1 + 8216);
  *(a2 + 12072) = *(a1 + 8232);
  *(a2 + 12088) = v387;
  *(a2 + 12040) = v389;
  *(a2 + 12056) = v388;
  v390 = *(a1 + 8312);
  v392 = *(a1 + 8264);
  v391 = *(a1 + 8280);
  *(a2 + 12136) = *(a1 + 8296);
  *(a2 + 12152) = v390;
  *(a2 + 12104) = v392;
  *(a2 + 12120) = v391;
  v393 = *(a1 + 8376);
  v395 = *(a1 + 8328);
  v394 = *(a1 + 8344);
  *(a2 + 12200) = *(a1 + 8360);
  *(a2 + 12216) = v393;
  *(a2 + 12168) = v395;
  *(a2 + 12184) = v394;
  v396 = *(a1 + 8136);
  v397 = *(a1 + 8152);
  v398 = *(a1 + 8184);
  *(a2 + 12008) = *(a1 + 8168);
  *(a2 + 12024) = v398;
  *(a2 + 11976) = v396;
  *(a2 + 11992) = v397;
  v399 = *(a1 + 8392);
  v400 = *(a1 + 8408);
  v401 = *(a1 + 8440);
  *(a2 + 12264) = *(a1 + 8424);
  *(a2 + 12280) = v401;
  *(a2 + 12232) = v399;
  *(a2 + 12248) = v400;
  v402 = *(a1 + 8456);
  v403 = *(a1 + 8472);
  v404 = *(a1 + 8504);
  *(a2 + 12328) = *(a1 + 8488);
  *(a2 + 12344) = v404;
  *(a2 + 12296) = v402;
  *(a2 + 12312) = v403;
  v405 = *(a1 + 8520);
  v406 = *(a1 + 8536);
  v407 = *(a1 + 8568);
  *(a2 + 12392) = *(a1 + 8552);
  *(a2 + 12408) = v407;
  *(a2 + 12360) = v405;
  *(a2 + 12376) = v406;
  v408 = *(a1 + 8584);
  v409 = *(a1 + 8600);
  v410 = *(a1 + 8632);
  *(a2 + 12456) = *(a1 + 8616);
  *(a2 + 12472) = v410;
  *(a2 + 12424) = v408;
  *(a2 + 12440) = v409;
  *(a2 + 12712) = 0u;
  *(a2 + 12728) = 0u;
  *(a2 + 12680) = 0u;
  *(a2 + 12696) = 0u;
  *(a2 + 12648) = 0u;
  *(a2 + 12664) = 0u;
  *(a2 + 12616) = 0u;
  *(a2 + 12632) = 0u;
  *(a2 + 12584) = 0u;
  *(a2 + 12600) = 0u;
  *(a2 + 12552) = 0u;
  *(a2 + 12568) = 0u;
  *(a2 + 12520) = 0u;
  *(a2 + 12536) = 0u;
  *(a2 + 12488) = 0u;
  *(a2 + 12504) = 0u;
  v411 = *(a1 + 8664);
  *(a2 + 12744) = *(a1 + 8648);
  v412 = a1 + 319488;
  *(a2 + 12760) = v411;
  *(a2 + 12764) = *(a1 + 8668);
  *(a2 + 12768) = *(a1 + 8672);
  *(a2 + 12772) = *(a1 + 8676);
  *(a2 + 12776) = *(a1 + 8680);
  memcpy((a2 + 12780), (a1 + 8684), 0x47A70uLL);
  memcpy((a2 + 306268), (a1 + 302172), 0x710uLL);
  memcpy((a2 + 308076), (a1 + 303980), 0x710uLL);
  v413 = *(a1 + 305816);
  v414 = *(a1 + 305804);
  *(a2 + 309884) = *(a1 + 305788);
  *(a2 + 309900) = v414;
  *(a2 + 309912) = v413;
  memcpy((a2 + 309928), (a1 + 305832), 0x41C0uLL);
  memcpy((a2 + 326760), (a1 + 322664), 0x150uLL);
  *(a2 + 327096) = 0u;
  *(a2 + 327112) = 0u;
  *(a2 + 327128) = 0u;
  *(a2 + 327144) = 0u;
  *(a2 + 327160) = 0u;
  *(a2 + 327176) = 0u;
  *(a2 + 327192) = 0u;
  *(a2 + 327208) = 0u;
  *(a2 + 327224) = 0u;
  *(a2 + 327240) = 0u;
  *(a2 + 327256) = 0u;
  *(a2 + 327272) = 0u;
  *(a2 + 327288) = 0u;
  *(a2 + 327304) = 0u;
  *(a2 + 327320) = 0u;
  *(a2 + 327336) = 0u;
  *(a2 + 327352) = 0u;
  *(a2 + 327368) = 0u;
  *(a2 + 327384) = 0u;
  *(a2 + 327400) = 0u;
  *(a2 + 327416) = 0u;
  *(a2 + 327432) = 0u;
  *(a2 + 327448) = 0u;
  *(a2 + 327464) = 0u;
  *(a2 + 327480) = 0u;
  *(a2 + 327496) = 0u;
  *(a2 + 327512) = 0u;
  *(a2 + 327528) = 0u;
  if (*(v412 + 3540) || *(v412 + 3570) || *(v412 + 3600) || *(v412 + 3630) || *(v412 + 3660) || *(v412 + 3690) || *(v412 + 3720) || *(v412 + 3750))
  {
    v418 = (v412 + 3540);
    v419 = 8;
    do
    {
      v420 = *(v418 - 14);
      *(v5 - 27) = v420;
      *(v5 - 13) = *v418 + v420;
      v421 = *(v418 - 13);
      *(v5 - 26) = v421;
      *(v5 - 12) = *v418 + v421;
      v422 = *(v418 - 12);
      *(v5 - 25) = v422;
      *(v5 - 11) = *v418 + v422;
      v423 = *(v418 - 11);
      *(v5 - 24) = v423;
      *(v5 - 10) = *v418 + v423;
      v424 = *(v418 - 10);
      *(v5 - 23) = v424;
      *(v5 - 9) = *v418 + v424;
      v425 = *(v418 - 9);
      *(v5 - 22) = v425;
      *(v5 - 8) = *v418 + v425;
      v426 = *(v418 - 8);
      *(v5 - 21) = v426;
      *(v5 - 7) = *v418 + v426;
      v427 = *(v418 - 7);
      *(v5 - 20) = v427;
      *(v5 - 6) = *v418 + v427;
      v428 = *(v418 - 6);
      *(v5 - 19) = v428;
      *(v5 - 5) = *v418 + v428;
      v429 = *(v418 - 5);
      *(v5 - 18) = v429;
      *(v5 - 4) = *v418 + v429;
      v430 = *(v418 - 4);
      *(v5 - 17) = v430;
      *(v5 - 3) = *v418 + v430;
      v431 = *(v418 - 3);
      *(v5 - 16) = v431;
      *(v5 - 2) = *v418 + v431;
      v432 = *(v418 - 2);
      *(v5 - 15) = v432;
      *(v5 - 1) = *v418 + v432;
      v433 = *(v418 - 1);
      *(v5 - 14) = v433;
      v434 = *v418;
      v418 += 15;
      *v5 = v434 + v433;
      v5 += 28;
      --v419;
    }

    while (v419);
  }

  else
  {
    v415 = (v412 + 3538);
    v416 = 8;
    do
    {
      *(v5 - 27) = *(v415 - 13);
      *(v5 - 13) = 0;
      *(v5 - 26) = *(v415 - 12);
      *(v5 - 12) = 0;
      *(v5 - 25) = *(v415 - 11);
      *(v5 - 11) = 0;
      *(v5 - 24) = *(v415 - 10);
      *(v5 - 10) = 0;
      *(v5 - 23) = *(v415 - 9);
      *(v5 - 9) = 0;
      *(v5 - 22) = *(v415 - 8);
      *(v5 - 8) = 0;
      *(v5 - 21) = *(v415 - 7);
      *(v5 - 7) = 0;
      *(v5 - 20) = *(v415 - 6);
      *(v5 - 6) = 0;
      *(v5 - 19) = *(v415 - 5);
      *(v5 - 5) = 0;
      *(v5 - 18) = *(v415 - 4);
      *(v5 - 4) = 0;
      *(v5 - 17) = *(v415 - 3);
      *(v5 - 3) = 0;
      *(v5 - 16) = *(v415 - 2);
      *(v5 - 2) = 0;
      *(v5 - 15) = *(v415 - 1);
      *(v5 - 1) = 0;
      v417 = *v415;
      v415 += 15;
      *(v5 - 14) = v417;
      *v5 = 0;
      v5 += 28;
      --v416;
    }

    while (v416);
  }

  *(v4 + 394) = *(v412 + 3752);
  *(v4 + 398) = *(v412 + 3756);
  *(v4 + 402) = *(v412 + 3760);
  *(v4 + 406) = *(v412 + 3764);
  memcpy((a2 + 328012), (a1 + 323260), 0x8380uLL);
  memcpy((a2 + 361680), (a1 + 356928), 0x1038uLL);
  v435 = *(a1 + 361096);
  *(a2 + 365832) = *(a1 + 361080);
  *(a2 + 365848) = v435;
  v436 = *(a1 + 361112);
  v437 = *(a1 + 361128);
  v438 = *(a1 + 361160);
  *(a2 + 365896) = *(a1 + 361144);
  *(a2 + 365912) = v438;
  *(a2 + 365864) = v436;
  *(a2 + 365880) = v437;
  v439 = *(a1 + 361192);
  *(a2 + 365928) = *(a1 + 361176);
  *(a2 + 365944) = v439;
  v440 = *(a1 + 361256);
  v442 = *(a1 + 361208);
  v441 = *(a1 + 361224);
  *(a2 + 365992) = *(a1 + 361240);
  *(a2 + 366008) = v440;
  *(a2 + 365960) = v442;
  *(a2 + 365976) = v441;
  v444 = *(a1 + 361384);
  v443 = *(a1 + 361400);
  v445 = *(a1 + 361368);
  *(a2 + 366168) = *(a1 + 361416);
  *(a2 + 366136) = v444;
  *(a2 + 366152) = v443;
  *(a2 + 366120) = v445;
  v447 = *(a1 + 361304);
  v446 = *(a1 + 361320);
  v448 = *(a1 + 361352);
  *(a2 + 366088) = *(a1 + 361336);
  *(a2 + 366104) = v448;
  *(a2 + 366056) = v447;
  *(a2 + 366072) = v446;
  result = *(a1 + 361272);
  v450 = *(a1 + 361288);
  *(a2 + 366024) = result;
  *(a2 + 366040) = v450;
  return result;
}