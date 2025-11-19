uint64_t por_ph_E(uint64_t a1)
{
  OUTLINED_FUNCTION_32_13(*MEMORY[0x277D85DE8], v142);
  OUTLINED_FUNCTION_21_19(v3, v4, v5, v6, v7, v8, v9, v10, v143, v145, v147, v149, v151, v153, v155, v157, v159, v161, v163, v165, v167, v169, v171, v173, v175, v177, v179, v181, v183, v185, v187, v189, v191, v193, v195, v197);
  v11 = setjmp(v1);
  if (!v11 && !OUTLINED_FUNCTION_9_27(v11, v12, v13, v14, v15, v16, v17, v18, v144, v146, v148, v150, v152, v154, v156, v158, v160, v162, v164, v166, v168, v170, v172, v174, v176, v178, v180, v182, v184, v186, v188, *v190, v190[4], *v192, *&v192[4], v192[6], v194, SWORD2(v194), SBYTE6(v194), SHIBYTE(v194), v196, v198))
  {
    fence_27(a1);
    *(a1 + 4578) = 500;
    *(a1 + 4582) = 550;
    *(a1 + 4586) = 1700;
    *(a1 + 4590) = 1600;
    *(a1 + 4594) = 2550;
    *(a1 + 4598) = 2350;
    v21 = OUTLINED_FUNCTION_12_26();
    starttest(v21, v22);
    v23 = OUTLINED_FUNCTION_6_27();
    if (lpta_loadp_setscan_l(v23, v24))
    {
LABEL_6:
      v25 = OUTLINED_FUNCTION_15_24();
      starttest(v25, v26);
      v27 = OUTLINED_FUNCTION_6_27();
      if (lpta_loadp_setscan_l(v27, v28))
      {
LABEL_16:
        v42 = OUTLINED_FUNCTION_30_14();
        starttest(v42, v43);
        v44 = OUTLINED_FUNCTION_6_27();
        if (lpta_loadp_setscan_l(v44, v45))
        {
LABEL_17:
          v46 = OUTLINED_FUNCTION_30_14();
          starttest(v46, v47);
          v48 = OUTLINED_FUNCTION_6_27();
          if (lpta_loadp_setscan_l(v48, v49))
          {
LABEL_18:
            v50 = OUTLINED_FUNCTION_22_19();
            starttest(v50, v51);
            v52 = OUTLINED_FUNCTION_5_27();
            if (lpta_loadp_setscan_r(v52, v53))
            {
LABEL_19:
              v54 = OUTLINED_FUNCTION_24_19();
              starttest(v54, v55);
              v56 = OUTLINED_FUNCTION_5_27();
              if (lpta_loadp_setscan_r(v56, v57))
              {
LABEL_20:
                v58 = OUTLINED_FUNCTION_16_23();
                starttest(v58, v59);
                v60 = OUTLINED_FUNCTION_5_27();
                if (lpta_loadp_setscan_r(v60, v61))
                {
LABEL_21:
                  v62 = OUTLINED_FUNCTION_30_14();
                  starttest(v62, v63);
                  v64 = OUTLINED_FUNCTION_5_27();
                  if (lpta_loadp_setscan_r(v64, v65))
                  {
LABEL_22:
                    v66 = OUTLINED_FUNCTION_30_14();
                    starttest(v66, v67);
                    v68 = OUTLINED_FUNCTION_5_27();
                    if (lpta_loadp_setscan_r(v68, v69))
                    {
LABEL_23:
                      v70 = OUTLINED_FUNCTION_30_14();
                      starttest(v70, v71);
                      v72 = OUTLINED_FUNCTION_5_27();
                      if (lpta_loadp_setscan_r(v72, v73))
                      {
LABEL_24:
                        v74 = OUTLINED_FUNCTION_30_14();
                        starttest(v74, v75);
                        v76 = OUTLINED_FUNCTION_5_27();
                        if (lpta_loadp_setscan_r(v76, v77))
                        {
LABEL_72:
                          v136 = OUTLINED_FUNCTION_5_27();
                          if (lpta_loadp_setscan_r(v136, v137) || (OUTLINED_FUNCTION_3_28(), test_string_s()))
                          {
LABEL_74:
                            v138 = OUTLINED_FUNCTION_5_27();
                            if (lpta_loadp_setscan_r(v138, v139) || (OUTLINED_FUNCTION_3_28(), test_string_s()))
                            {
LABEL_76:
                              v140 = OUTLINED_FUNCTION_5_27();
                              if (!lpta_loadp_setscan_r(v140, v141))
                              {
                                OUTLINED_FUNCTION_3_28();
                                if (!test_string_s())
                                {
                                  *(a1 + 4582) += 50;
                                }
                              }

                              goto LABEL_79;
                            }

                            *(a1 + 4582) += 30;
                            goto LABEL_81;
                          }

                          *(a1 + 4582) += 30;
LABEL_83:
                          v84 = *(a1 + 4598) - 200;
                          goto LABEL_30;
                        }

LABEL_46:
                        v112 = OUTLINED_FUNCTION_2_29();
                      }

                      else
                      {
                        v110 = OUTLINED_FUNCTION_30_14();
                        bspush_ca_scan(v110, v111);
                        v112 = OUTLINED_FUNCTION_7_27();
                      }

                      if (!testFldeq(v112, v113, v114, v115))
                      {
LABEL_48:
                        if (!advance_tok(a1))
                        {
                          OUTLINED_FUNCTION_43_7(*(a1 + 4590) - 150);
                          v84 = v116 - 80;
                          goto LABEL_30;
                        }
                      }
                    }

                    else
                    {
                      v106 = OUTLINED_FUNCTION_8_27();
                      if (!testFldeq(v106, v107, v108, 4) && !advance_tok(a1))
                      {
                        OUTLINED_FUNCTION_52_6();
                        *(a1 + 4590) = v109;
                        goto LABEL_83;
                      }
                    }
                  }

                  else
                  {
                    v99 = OUTLINED_FUNCTION_8_27();
                    if (!testFldeq(v99, v100, v101, 4) && !advance_tok(a1))
                    {
                      v102 = OUTLINED_FUNCTION_2_29();
                      if (!testFldeq(v102, v103, v104, v105) && !advance_tok(a1))
                      {
                        *(a1 + 4590) -= 125;
LABEL_81:
                        OUTLINED_FUNCTION_71_5();
                        goto LABEL_30;
                      }
                    }
                  }
                }

                else
                {
                  v91 = OUTLINED_FUNCTION_30_14();
                  bspush_ca_scan(v91, v92);
                  v93 = OUTLINED_FUNCTION_0_31();
LABEL_54:
                  if (!testFldeq(v93, v94, v95, v96))
                  {
LABEL_70:
                    if (!advance_tok(a1))
                    {
                      goto LABEL_79;
                    }
                  }
                }
              }

              else
              {
                v85 = OUTLINED_FUNCTION_30_14();
                bspush_ca_scan(v85, v86);
LABEL_52:
                OUTLINED_FUNCTION_3_28();
                if (!test_string_s())
                {
LABEL_53:
                  OUTLINED_FUNCTION_82_4();
                  *(a1 + 4590) = v117;
                  goto LABEL_79;
                }
              }
            }

            else
            {
              v78 = OUTLINED_FUNCTION_30_14();
              bspush_ca_scan(v78, v79);
              v80 = OUTLINED_FUNCTION_4_27();
              v83 = 17;
LABEL_27:
              if (!testFldeq(v80, v81, v82, v83))
              {
LABEL_28:
                if (!advance_tok(a1))
                {
                  OUTLINED_FUNCTION_51_6();
LABEL_30:
                  *(a1 + 4598) = v84;
LABEL_79:
                  vretproc(a1);
                  result = 0;
                  goto LABEL_4;
                }
              }
            }

            goto LABEL_55;
          }

          v97 = OUTLINED_FUNCTION_30_14();
          bspush_ca_scan(v97, v98);
LABEL_50:
          OUTLINED_FUNCTION_3_28();
          if (test_string_s())
          {
            goto LABEL_55;
          }

          v35 = -150;
        }

        else
        {
          v87 = OUTLINED_FUNCTION_2_29();
          if (testFldeq(v87, v88, v89, v90) || advance_tok(a1))
          {
            goto LABEL_55;
          }

          v35 = 100;
        }

LABEL_15:
        OUTLINED_FUNCTION_36_11(v35);
        goto LABEL_18;
      }

      v29 = OUTLINED_FUNCTION_30_14();
      bspush_ca_scan(v29, v30);
      v31 = OUTLINED_FUNCTION_4_27();
      v34 = 30;
LABEL_8:
      if (testFldeq(v31, v32, v33, v34))
      {
        goto LABEL_55;
      }

LABEL_9:
      if (!advance_tok(a1))
      {
        v35 = -200;
        goto LABEL_15;
      }
    }

    else
    {
      v36 = OUTLINED_FUNCTION_13_26();
      bspush_ca_scan(v36, v37);
      v38 = OUTLINED_FUNCTION_4_27();
      v41 = 28;
LABEL_12:
      if (testFldeq(v38, v39, v40, v41))
      {
        goto LABEL_55;
      }

LABEL_13:
      if (!advance_tok(a1))
      {
        v35 = 150;
        goto LABEL_15;
      }
    }

LABEL_55:
    v118 = *(a1 + 104);
    if (v118)
    {
      v119 = OUTLINED_FUNCTION_45_7(v118);
    }

    else
    {
      v120 = OUTLINED_FUNCTION_56_6();
      v119 = vback(v120, v121);
    }

    v35 = -150;
    switch(v119)
    {
      case 1:
        goto LABEL_6;
      case 2:
        v122 = OUTLINED_FUNCTION_35_11();
        bspush_ca_scan(v122, v123);
        v38 = OUTLINED_FUNCTION_33_13();
        v39 = v1;
        v41 = 23;
        goto LABEL_12;
      case 3:
        goto LABEL_13;
      case 4:
        v128 = OUTLINED_FUNCTION_17_22();
        bspush_ca_scan(v128, v129);
        v38 = OUTLINED_FUNCTION_4_27();
        v41 = 17;
        goto LABEL_12;
      case 5:
        v130 = OUTLINED_FUNCTION_14_24();
        bspush_ca_scan(v130, v131);
        v38 = OUTLINED_FUNCTION_4_27();
        v41 = 21;
        goto LABEL_12;
      case 6:
        v38 = OUTLINED_FUNCTION_4_27();
        v41 = 24;
        goto LABEL_12;
      case 7:
        goto LABEL_18;
      case 8:
        goto LABEL_16;
      case 9:
        v124 = OUTLINED_FUNCTION_23_19();
        bspush_ca_scan(v124, v125);
        v31 = OUTLINED_FUNCTION_4_27();
        v34 = 25;
        goto LABEL_8;
      case 10:
        goto LABEL_9;
      case 11:
        v31 = OUTLINED_FUNCTION_4_27();
        v34 = 37;
        goto LABEL_8;
      case 12:
        goto LABEL_17;
      case 13:
        goto LABEL_50;
      case 14:
        goto LABEL_15;
      case 15:
        goto LABEL_19;
      case 16:
        v126 = OUTLINED_FUNCTION_30_14();
        bspush_ca_scan(v126, v127);
        v80 = OUTLINED_FUNCTION_4_27();
        v83 = 21;
        goto LABEL_27;
      case 17:
        goto LABEL_28;
      case 18:
        v132 = OUTLINED_FUNCTION_30_14();
        bspush_ca_scan(v132, v133);
        v80 = OUTLINED_FUNCTION_4_27();
        v83 = 28;
        goto LABEL_27;
      case 19:
        v134 = OUTLINED_FUNCTION_30_14();
        bspush_ca_scan(v134, v135);
        v80 = OUTLINED_FUNCTION_4_27();
        v83 = 23;
        goto LABEL_27;
      case 20:
        v80 = OUTLINED_FUNCTION_4_27();
        v83 = 24;
        goto LABEL_27;
      case 21:
        goto LABEL_79;
      case 22:
        goto LABEL_20;
      case 23:
        goto LABEL_52;
      case 24:
        goto LABEL_53;
      case 25:
        goto LABEL_21;
      case 26:
        v93 = OUTLINED_FUNCTION_1_29();
        goto LABEL_54;
      case 27:
        goto LABEL_70;
      case 28:
        goto LABEL_22;
      case 29:
        goto LABEL_23;
      case 30:
        goto LABEL_24;
      case 31:
        goto LABEL_46;
      case 32:
        goto LABEL_48;
      case 33:
        goto LABEL_72;
      case 34:
        goto LABEL_74;
      case 35:
        goto LABEL_76;
      default:
        break;
    }
  }

  vretproc(a1);
  result = 94;
LABEL_4:
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t por_ph_a(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v456 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_38_10(a1, a2, a3, a4, a5, a6, a7, a8, v373);
  OUTLINED_FUNCTION_41_7();
  OUTLINED_FUNCTION_85_3(v10, v11, v12, v13, v14, v15, v16, v17, v374, v377, v380, v383, v386, v389, v392, v395, v398, v401, v404, v407, v410, v413, v416, v419, v422, v425, v428, v431, v434, v437, v440, 0, 0, v446, v448, v450, v452, v454);
  v18 = setjmp(v8);
  if (!v18 && !OUTLINED_FUNCTION_20_19(v18, v19, v20, v21, v22, v23, v24, v25, v375, v378, v381, v384, v387, v390, v393, v396, v399, v402, v405, v408, v411, v414, v417, v420, v423, v426, v429, v432, v435, v438, v441, v443, v445, *v447, v447[4], *v449, *&v449[4], v449[6], v451, SWORD2(v451), SBYTE6(v451), SHIBYTE(v451), v453, v455))
  {
    v28 = OUTLINED_FUNCTION_44_7();
    push_ptr_init(v28, v29);
    fence_27(a1);
    v30 = OUTLINED_FUNCTION_12_26();
    starttest(v30, v31);
    if (*(a1 + 978) == *(a1 + 958))
    {
      v32 = OUTLINED_FUNCTION_5_27();
      if (!lpta_loadp_setscan_r(v32, v33))
      {
        OUTLINED_FUNCTION_13_26();
        bspush_ca_scan_boa();
        v38 = 0;
        goto LABEL_184;
      }
    }

    while (2)
    {
      if (*(a1 + 982) > *(a1 + 958))
      {
LABEL_77:
        OUTLINED_FUNCTION_63_5(650);
        OUTLINED_FUNCTION_53_6(1250);
        v35 = 2350;
        v36 = 4598;
        v37 = 4594;
      }

      else
      {
        OUTLINED_FUNCTION_63_5(550);
        OUTLINED_FUNCTION_53_6(1350);
        OUTLINED_FUNCTION_62_5(2300);
        v36 = 4606;
        v37 = 4602;
      }

      v161 = v36;
      v371 = v37;
      v372 = v161;
LABEL_79:
      *(a1 + v371) = v35;
      *(a1 + v372) = v35;
      v38 = v34;
LABEL_80:
      v162 = OUTLINED_FUNCTION_14_24();
      starttest(v162, v163);
      v164 = OUTLINED_FUNCTION_6_27();
      v166 = lpta_loadp_setscan_l(v164, v165);
      v160 = v38;
      if (!v166)
      {
LABEL_94:
        OUTLINED_FUNCTION_50_6(7, v376, v379, v382, v385, v388, v391, v394, v397, v400, v403, v406, v409, v412, v415, v418, v421, v424, v427, v430, v433, v436, v439, v442, v444);
        v212 = OUTLINED_FUNCTION_15_24();
        bspush_ca_scan(v212, v213);
        v149 = OUTLINED_FUNCTION_0_31();
LABEL_95:
        testFldeq(v149, v150, v151, v152);
        OUTLINED_FUNCTION_69_5();
        if (v214)
        {
          goto LABEL_10;
        }

LABEL_96:
        v38 = v41;
        if (advance_tok(a1))
        {
          goto LABEL_188;
        }

        v215 = OUTLINED_FUNCTION_31_14();
        if (lpta_loadp_setscan_r(v215, v216) || advance_tok(a1))
        {
          goto LABEL_188;
        }

        OUTLINED_FUNCTION_19_20();
        OUTLINED_FUNCTION_65_5();
        if (v217)
        {
          goto LABEL_10;
        }

LABEL_100:
        v38 = v159;
        v218 = OUTLINED_FUNCTION_30_14();
        if (test_synch(v218, v219, 1u, v220))
        {
          goto LABEL_188;
        }

        v221 = OUTLINED_FUNCTION_23_19();
        bspush_ca_scan(v221, v222);
        v153 = OUTLINED_FUNCTION_0_31();
LABEL_72:
        testFldeq(v153, v154, v155, v156);
        OUTLINED_FUNCTION_81_4();
        if (v157)
        {
          goto LABEL_10;
        }

LABEL_73:
        v38 = v42;
        if (advance_tok(a1))
        {
          goto LABEL_188;
        }

        *(a1 + 4578) -= 150;
        *(a1 + 4582) -= 150;
        *(a1 + 4586) += 250;
        *(a1 + 4590) += 250;
        *(a1 + 4594) += 200;
        v158 = *(a1 + 4598) + 200;
        goto LABEL_177;
      }

LABEL_81:
      v38 = v160;
      v167 = OUTLINED_FUNCTION_25_18();
      starttest(v167, v168);
      v169 = OUTLINED_FUNCTION_6_27();
      if (!lpta_loadp_setscan_l(v169, v170))
      {
        v223 = OUTLINED_FUNCTION_22_19();
        bspush_ca_scan(v223, v224);
LABEL_103:
        OUTLINED_FUNCTION_3_28();
        test_string_s();
        OUTLINED_FUNCTION_65_5();
        if (v225)
        {
          goto LABEL_10;
        }

LABEL_104:
        OUTLINED_FUNCTION_46_7(*(a1 + 4586) + 150);
        OUTLINED_FUNCTION_91_2(v226 + 100);
        goto LABEL_126;
      }

LABEL_82:
      v171 = OUTLINED_FUNCTION_30_14();
      starttest(v171, v172);
      v173 = OUTLINED_FUNCTION_6_27();
      if (!lpta_loadp_setscan_l(v173, v174))
      {
        v227 = OUTLINED_FUNCTION_30_14();
        bspush_ca_scan(v227, v228);
LABEL_106:
        OUTLINED_FUNCTION_3_28();
        test_string_s();
        OUTLINED_FUNCTION_70_5();
        if (v229)
        {
          goto LABEL_10;
        }

LABEL_107:
        *(a1 + 4578) -= 50;
        OUTLINED_FUNCTION_48_7();
        *(a1 + 4602) -= 200;
        v38 = v230;
        goto LABEL_126;
      }

LABEL_83:
      v175 = OUTLINED_FUNCTION_24_19();
      starttest(v175, v176);
      v177 = OUTLINED_FUNCTION_6_27();
      if (lpta_loadp_setscan_l(v177, v178))
      {
LABEL_84:
        v179 = OUTLINED_FUNCTION_16_23();
        starttest(v179, v180);
        v181 = OUTLINED_FUNCTION_6_27();
        if (lpta_loadp_setscan_l(v181, v182))
        {
LABEL_85:
          v183 = OUTLINED_FUNCTION_30_14();
          starttest(v183, v184);
          v185 = OUTLINED_FUNCTION_6_27();
          if (!lpta_loadp_setscan_l(v185, v186))
          {
            v238 = OUTLINED_FUNCTION_30_14();
            bspush_ca_scan(v238, v239);
LABEL_117:
            OUTLINED_FUNCTION_3_28();
            test_string_s();
            OUTLINED_FUNCTION_78_5();
            if (v240)
            {
              goto LABEL_10;
            }

LABEL_118:
            OUTLINED_FUNCTION_46_7(*(a1 + 4586) - 150);
            *(a1 + 4594) = v241 - 50;
            v38 = v242;
            goto LABEL_126;
          }

LABEL_86:
          v187 = OUTLINED_FUNCTION_30_14();
          starttest(v187, v188);
          v189 = OUTLINED_FUNCTION_6_27();
          if (lpta_loadp_setscan_l(v189, v190))
          {
LABEL_87:
            v191 = OUTLINED_FUNCTION_30_14();
            starttest(v191, v192);
            v193 = OUTLINED_FUNCTION_6_27();
            if (lpta_loadp_setscan_l(v193, v194))
            {
LABEL_88:
              v195 = OUTLINED_FUNCTION_30_14();
              starttest(v195, v196);
              v197 = OUTLINED_FUNCTION_6_27();
              if (lpta_loadp_setscan_l(v197, v198))
              {
LABEL_89:
                v199 = OUTLINED_FUNCTION_30_14();
                starttest(v199, v200);
                v201 = OUTLINED_FUNCTION_6_27();
                if (lpta_loadp_setscan_l(v201, v202))
                {
LABEL_90:
                  v203 = OUTLINED_FUNCTION_30_14();
                  starttest(v203, v204);
                  v205 = OUTLINED_FUNCTION_6_27();
                  if (lpta_loadp_setscan_l(v205, v206))
                  {
                    goto LABEL_126;
                  }

                  v207 = OUTLINED_FUNCTION_4_27();
                  if (testFldeq(v207, v208, v209, 20) || advance_tok(a1))
                  {
                    goto LABEL_188;
                  }

                  OUTLINED_FUNCTION_46_7(*(a1 + 4586) + 50);
                  v211 = v210 + 100;
                }

                else
                {
                  v324 = OUTLINED_FUNCTION_4_27();
                  if (testFldeq(v324, v325, v326, 16) || advance_tok(a1))
                  {
                    goto LABEL_188;
                  }

                  *(a1 + 4586) = 1500;
                  v211 = 2600;
                }
              }

              else
              {
                v319 = OUTLINED_FUNCTION_4_27();
                if (testFldeq(v319, v320, v321, 18) || advance_tok(a1))
                {
                  goto LABEL_188;
                }

                OUTLINED_FUNCTION_66_5(1400);
              }

              *(a1 + 4594) = v211;
LABEL_126:
              v251 = OUTLINED_FUNCTION_30_14();
              starttest(v251, v252);
              v253 = OUTLINED_FUNCTION_5_27();
              if (!lpta_loadp_setscan_r(v253, v254))
              {
                v306 = OUTLINED_FUNCTION_30_14();
                bspush_ca_scan(v306, v307);
LABEL_145:
                OUTLINED_FUNCTION_3_28();
                test_string_s();
                OUTLINED_FUNCTION_87_3();
                if (v308)
                {
                  goto LABEL_10;
                }

LABEL_146:
                *(a1 + 4582) -= 50;
                OUTLINED_FUNCTION_49_6();
                *(a1 + 4606) -= 200;
                v38 = v309;
                goto LABEL_180;
              }

LABEL_127:
              v255 = OUTLINED_FUNCTION_30_14();
              starttest(v255, v256);
              v257 = OUTLINED_FUNCTION_5_27();
              if (!lpta_loadp_setscan_r(v257, v258))
              {
                v310 = OUTLINED_FUNCTION_27_16();
                bspush_ca_scan(v310, v311);
LABEL_148:
                OUTLINED_FUNCTION_3_28();
                test_string_s();
                OUTLINED_FUNCTION_76_5();
                if (v312)
                {
                  goto LABEL_10;
                }

LABEL_149:
                OUTLINED_FUNCTION_52_6();
                OUTLINED_FUNCTION_43_7(v313);
                *(a1 + 4598) = v314 + 100;
                v38 = v315;
                goto LABEL_180;
              }

LABEL_128:
              v259 = OUTLINED_FUNCTION_30_14();
              starttest(v259, v260);
              v261 = OUTLINED_FUNCTION_5_27();
              if (!lpta_loadp_setscan_r(v261, v262))
              {
                v316 = OUTLINED_FUNCTION_30_14();
                bspush_ca_scan(v316, v317);
                v111 = OUTLINED_FUNCTION_4_27();
                v114 = 11;
LABEL_151:
                testFldeq(v111, v112, v113, v114);
                OUTLINED_FUNCTION_86_3();
                if (v318)
                {
                  goto LABEL_10;
                }

LABEL_152:
                if (OUTLINED_FUNCTION_95_2())
                {
                  goto LABEL_188;
                }

                OUTLINED_FUNCTION_61_6();
                goto LABEL_166;
              }

LABEL_129:
              v263 = OUTLINED_FUNCTION_30_14();
              starttest(v263, v264);
              v265 = OUTLINED_FUNCTION_5_27();
              if (lpta_loadp_setscan_r(v265, v266))
              {
LABEL_130:
                v267 = OUTLINED_FUNCTION_30_14();
                starttest(v267, v268);
                v269 = OUTLINED_FUNCTION_5_27();
                if (!lpta_loadp_setscan_r(v269, v270))
                {
                  v327 = OUTLINED_FUNCTION_30_14();
                  bspush_ca_scan(v327, v328);
LABEL_48:
                  OUTLINED_FUNCTION_3_28();
                  v115 = test_string_s();
                  v53 = v38;
                  if (v115)
                  {
                    goto LABEL_10;
                  }

LABEL_49:
                  OUTLINED_FUNCTION_43_7(*(a1 + 4590) - 150);
                  *(a1 + 4598) = v116 - 50;
                  v38 = v117;
                  goto LABEL_180;
                }

LABEL_131:
                v271 = OUTLINED_FUNCTION_30_14();
                starttest(v271, v272);
                v273 = OUTLINED_FUNCTION_5_27();
                if (!lpta_loadp_setscan_r(v273, v274))
                {
                  v329 = OUTLINED_FUNCTION_2_29();
                  if (testFldeq(v329, v330, v331, v332) || advance_tok(a1))
                  {
                    goto LABEL_188;
                  }

                  OUTLINED_FUNCTION_82_4();
                  goto LABEL_166;
                }

LABEL_132:
                v275 = OUTLINED_FUNCTION_30_14();
                starttest(v275, v276);
                v277 = OUTLINED_FUNCTION_5_27();
                if (!lpta_loadp_setscan_r(v277, v278))
                {
                  v333 = OUTLINED_FUNCTION_30_14();
                  bspush_ca_scan(v333, v334);
LABEL_44:
                  OUTLINED_FUNCTION_3_28();
                  v102 = test_string_s();
                  v45 = v38;
                  v53 = v38;
                  if (v102)
                  {
                    goto LABEL_10;
                  }

LABEL_45:
                  v38 = v45;
                  v103 = OUTLINED_FUNCTION_30_14();
                  bspush_ca_scan(v103, v104);
LABEL_38:
                  OUTLINED_FUNCTION_3_28();
                  v95 = test_string_s();
                  v46 = v38;
                  v53 = v38;
                  if (v95)
                  {
                    goto LABEL_10;
                  }

LABEL_39:
                  OUTLINED_FUNCTION_52_6();
                  *(a1 + 4590) = v96;
                  v38 = v46;
                  goto LABEL_180;
                }

LABEL_133:
                v279 = OUTLINED_FUNCTION_30_14();
                starttest(v279, v280);
                v281 = OUTLINED_FUNCTION_5_27();
                if (!lpta_loadp_setscan_r(v281, v282))
                {
                  v335 = OUTLINED_FUNCTION_4_27();
                  if (testFldeq(v335, v336, v337, 18) || advance_tok(a1))
                  {
                    goto LABEL_188;
                  }

                  OUTLINED_FUNCTION_43_7(1400);
                  v158 = v338 - 150;
                  goto LABEL_177;
                }

LABEL_134:
                v283 = OUTLINED_FUNCTION_30_14();
                starttest(v283, v284);
                v285 = OUTLINED_FUNCTION_5_27();
                if (!lpta_loadp_setscan_r(v285, v286))
                {
                  v344 = OUTLINED_FUNCTION_4_27();
                  if (testFldeq(v344, v345, v346, 16) || advance_tok(a1))
                  {
                    goto LABEL_188;
                  }

                  OUTLINED_FUNCTION_60_6();
                  v158 = -2;
                  goto LABEL_177;
                }

LABEL_135:
                v287 = OUTLINED_FUNCTION_30_14();
                starttest(v287, v288);
                v289 = OUTLINED_FUNCTION_5_27();
                if (!lpta_loadp_setscan_r(v289, v290))
                {
                  OUTLINED_FUNCTION_3_28();
                  if (!test_string_s())
                  {
                    v369 = OUTLINED_FUNCTION_30_14();
                    bspush_ca_scan(v369, v370);
                    v97 = OUTLINED_FUNCTION_4_27();
                    v100 = 23;
LABEL_41:
                    v101 = testFldeq(v97, v98, v99, v100);
                    v47 = v38;
                    v53 = v38;
                    if (v101)
                    {
                      goto LABEL_10;
                    }

LABEL_42:
                    if (advance_tok(a1))
                    {
                      v53 = v47;
                      goto LABEL_10;
                    }

                    *(a1 + 4590) += 150;
                    v38 = v47;
                    goto LABEL_180;
                  }
                }

LABEL_137:
                v291 = OUTLINED_FUNCTION_30_14();
                starttest(v291, v292);
                v293 = OUTLINED_FUNCTION_5_27();
                if (lpta_loadp_setscan_r(v293, v294) || (OUTLINED_FUNCTION_3_28(), test_string_s()))
                {
LABEL_139:
                  v295 = OUTLINED_FUNCTION_30_14();
                  starttest(v295, v296);
                  v297 = OUTLINED_FUNCTION_5_27();
                  if (lpta_loadp_setscan_r(v297, v298))
                  {
LABEL_140:
                    v299 = OUTLINED_FUNCTION_30_14();
                    starttest(v299, v300);
                    v301 = OUTLINED_FUNCTION_5_27();
                    if (lpta_loadp_setscan_r(v301, v302))
                    {
LABEL_180:
                      v348 = OUTLINED_FUNCTION_30_14();
                      starttest(v348, v349);
                      v350 = OUTLINED_FUNCTION_5_27();
                      v352 = lpta_loadp_setscan_l(v350, v351);
                      v347 = v38;
                      if (v352)
                      {
LABEL_181:
                        v38 = v347;
                        v353 = OUTLINED_FUNCTION_30_14();
                        starttest(v353, v354);
                        v355 = OUTLINED_FUNCTION_5_27();
                        if (!lpta_loadp_setscan_r(v355, v356))
                        {
LABEL_182:
                          v357 = OUTLINED_FUNCTION_30_14();
                          if (!test_synch(v357, v358, 1u, v359))
                          {
                            OUTLINED_FUNCTION_30_14();
                            bspush_ca_scan_boa();
LABEL_184:
                            v360 = OUTLINED_FUNCTION_30_14();
                            if (test_synch(v360, v361, 1u, v362))
                            {
                              v53 = v38;
                            }

                            else
                            {
                              v53 = 1;
                            }

                            goto LABEL_10;
                          }

                          goto LABEL_188;
                        }

LABEL_190:
                        vretproc(a1);
                        result = 0;
                        goto LABEL_4;
                      }

LABEL_187:
                      OUTLINED_FUNCTION_50_6(65, v376, v379, v382, v385, v388, v391, v394, v397, v400, v403, v406, v409, v412, v415, v418, v421, v424, v427, v430, v433, v436, v439, v442, v444);
                      if (!advance_tok(a1))
                      {
                        v363 = OUTLINED_FUNCTION_30_14();
                        bspush_ca_scan(v363, v364);
                        v107 = OUTLINED_FUNCTION_4_27();
                        v110 = 30;
LABEL_62:
                        v134 = testFldeq(v107, v108, v109, v110);
                        v48 = v38;
                        v53 = v38;
                        if (v134)
                        {
                          goto LABEL_10;
                        }

LABEL_63:
                        v38 = v48;
                        if (!advance_tok(a1))
                        {
                          v135 = OUTLINED_FUNCTION_31_14();
                          if (!lpta_loadp_setscan_r(v135, v136))
                          {
                            v137 = OUTLINED_FUNCTION_30_14();
                            bspush_ca_scan(v137, v138);
                            v120 = OUTLINED_FUNCTION_4_27();
                            v123 = 30;
LABEL_53:
                            v126 = testFldeq(v120, v121, v122, v123);
                            v49 = v38;
                            v53 = v38;
                            if (v126)
                            {
                              goto LABEL_10;
                            }

LABEL_54:
                            v38 = v49;
                            if (!advance_tok(a1))
                            {
                              OUTLINED_FUNCTION_55_6();
                              if (v60)
                              {
LABEL_57:
                                v127 = *(a1 + 4578);
                                v53 = v38;
                                if (v127 < 551)
                                {
                                  goto LABEL_10;
                                }

                                *(a1 + 4578) = v127 - 150;
                                goto LABEL_190;
                              }
                            }
                          }
                        }
                      }

LABEL_188:
                      v53 = v38;
LABEL_10:
                      v39 = *(a1 + 104);
                      if (v39)
                      {
                        v40 = OUTLINED_FUNCTION_26_18(v39);
                      }

                      else
                      {
                        v40 = vback(a1, v53);
                        v38 = 0;
                      }

                      v41 = v38;
                      v42 = v38;
                      v43 = v38;
                      v44 = v38;
                      v45 = v38;
                      v46 = v38;
                      v47 = v38;
                      v48 = v38;
                      v49 = v38;
                      switch(v40)
                      {
                        case 1:
                          continue;
                        case 2:
                          bspop_boa(a1);
                          v50 = OUTLINED_FUNCTION_29_15();
                          v52 = testFldeq(v50, v51, 4, 4);
                          v53 = v38;
                          if (v52)
                          {
                            goto LABEL_10;
                          }

                          v54 = advance_tok(a1);
                          v53 = v38;
                          if (v54)
                          {
                            goto LABEL_10;
                          }

                          OUTLINED_FUNCTION_63_5(450);
                          OUTLINED_FUNCTION_53_6(1350);
                          v35 = 2250;
                          v371 = 4594;
                          v372 = 4598;
                          v34 = v38;
                          goto LABEL_79;
                        case 3:
                        case 75:
                          goto LABEL_184;
                        case 4:
                          goto LABEL_80;
                        case 5:
                          goto LABEL_77;
                        case 6:
                          v160 = v38;
                          goto LABEL_81;
                        case 7:
                          goto LABEL_94;
                        case 8:
                          v55 = OUTLINED_FUNCTION_1_29();
                          v59 = testFldeq(v55, v56, v57, v58);
                          v53 = v38;
                          if (v59)
                          {
                            goto LABEL_10;
                          }

                          v149 = OUTLINED_FUNCTION_8_27();
                          v152 = 5;
                          goto LABEL_95;
                        case 9:
                          goto LABEL_96;
                        case 10:
                          v159 = v38;
                          goto LABEL_100;
                        case 11:
                          v75 = OUTLINED_FUNCTION_1_29();
                          v79 = testFldeq(v75, v76, v77, v78);
                          v53 = v38;
                          if (v79)
                          {
                            goto LABEL_10;
                          }

                          v153 = OUTLINED_FUNCTION_8_27();
                          v156 = 5;
                          goto LABEL_72;
                        case 12:
                          goto LABEL_73;
                        case 13:
                          goto LABEL_180;
                        case 14:
                          goto LABEL_82;
                        case 15:
                          v128 = OUTLINED_FUNCTION_30_14();
                          bspush_ca_scan(v128, v129);
                          goto LABEL_103;
                        case 16:
                          goto LABEL_104;
                        case 17:
                          goto LABEL_103;
                        case 18:
                          goto LABEL_126;
                        case 19:
                          goto LABEL_83;
                        case 20:
                          goto LABEL_106;
                        case 21:
                          goto LABEL_107;
                        case 22:
                          goto LABEL_84;
                        case 23:
                          v130 = OUTLINED_FUNCTION_4_27();
                          v133 = 12;
                          goto LABEL_109;
                        case 24:
                          goto LABEL_110;
                        case 25:
                          goto LABEL_85;
                        case 26:
                          v145 = OUTLINED_FUNCTION_1_29();
                          goto LABEL_113;
                        case 27:
                          goto LABEL_114;
                        case 28:
                          goto LABEL_86;
                        case 29:
                          goto LABEL_117;
                        case 30:
                          goto LABEL_118;
                        case 31:
                          goto LABEL_87;
                        case 32:
                          goto LABEL_88;
                        case 33:
                          goto LABEL_89;
                        case 34:
                          goto LABEL_90;
                        case 35:
                          goto LABEL_127;
                        case 36:
                          goto LABEL_145;
                        case 37:
                          goto LABEL_146;
                        case 38:
                          goto LABEL_128;
                        case 39:
                          v118 = OUTLINED_FUNCTION_30_14();
                          bspush_ca_scan(v118, v119);
                          goto LABEL_148;
                        case 40:
                          goto LABEL_149;
                        case 41:
                          goto LABEL_148;
                        case 42:
                          goto LABEL_129;
                        case 43:
                          v111 = OUTLINED_FUNCTION_4_27();
                          v114 = 12;
                          goto LABEL_151;
                        case 44:
                          goto LABEL_152;
                        case 45:
                          goto LABEL_130;
                        case 46:
                          v139 = OUTLINED_FUNCTION_1_29();
                          goto LABEL_67;
                        case 47:
                          goto LABEL_68;
                        case 48:
                          goto LABEL_131;
                        case 49:
                          goto LABEL_48;
                        case 50:
                          goto LABEL_49;
                        case 51:
                          goto LABEL_132;
                        case 52:
                          goto LABEL_133;
                        case 53:
                          goto LABEL_44;
                        case 54:
                          goto LABEL_45;
                        case 55:
                          goto LABEL_38;
                        case 56:
                          goto LABEL_39;
                        case 57:
                          goto LABEL_134;
                        case 58:
                          goto LABEL_135;
                        case 59:
                          goto LABEL_137;
                        case 60:
                          v97 = OUTLINED_FUNCTION_4_27();
                          v100 = 28;
                          goto LABEL_41;
                        case 61:
                          goto LABEL_42;
                        case 62:
                          goto LABEL_139;
                        case 63:
                          goto LABEL_140;
                        case 64:
                          v347 = v38;
                          goto LABEL_181;
                        case 65:
                          goto LABEL_187;
                        case 66:
                          v105 = OUTLINED_FUNCTION_30_14();
                          bspush_ca_scan(v105, v106);
                          v107 = OUTLINED_FUNCTION_4_27();
                          v110 = 25;
                          goto LABEL_62;
                        case 67:
                          goto LABEL_63;
                        case 68:
                          v107 = OUTLINED_FUNCTION_4_27();
                          v110 = 37;
                          goto LABEL_62;
                        case 69:
                          v124 = OUTLINED_FUNCTION_30_14();
                          bspush_ca_scan(v124, v125);
                          v120 = OUTLINED_FUNCTION_4_27();
                          v123 = 25;
                          goto LABEL_53;
                        case 70:
                          goto LABEL_54;
                        case 71:
                          v120 = OUTLINED_FUNCTION_4_27();
                          v123 = 37;
                          goto LABEL_53;
                        case 72:
                        case 80:
                          goto LABEL_190;
                        case 73:
                          goto LABEL_182;
                        case 74:
                          bspop_boa(a1);
                          OUTLINED_FUNCTION_58_6();
                          if (!v60)
                          {
                            goto LABEL_10;
                          }

                          OUTLINED_FUNCTION_51_6();
                          v61 = OUTLINED_FUNCTION_30_14();
                          starttest(v61, v62);
                          v63 = OUTLINED_FUNCTION_5_27();
                          if (lpta_loadp_setscan_r(v63, v64))
                          {
                            goto LABEL_22;
                          }

                          v93 = OUTLINED_FUNCTION_30_14();
                          bspush_ca_scan(v93, v94);
                          v82 = OUTLINED_FUNCTION_4_27();
                          v85 = 28;
                          goto LABEL_33;
                        case 76:
LABEL_22:
                          v65 = OUTLINED_FUNCTION_30_14();
                          starttest(v65, v66);
                          v67 = OUTLINED_FUNCTION_5_27();
                          if (lpta_loadp_setscan_r(v67, v68))
                          {
                            goto LABEL_190;
                          }

                          v69 = OUTLINED_FUNCTION_30_14();
                          bspush_ca_scan(v69, v70);
                          v71 = OUTLINED_FUNCTION_4_27();
                          v74 = 30;
                          goto LABEL_29;
                        case 77:
                          v80 = OUTLINED_FUNCTION_30_14();
                          bspush_ca_scan(v80, v81);
                          v82 = OUTLINED_FUNCTION_4_27();
                          v85 = 35;
                          goto LABEL_33;
                        case 78:
                          goto LABEL_34;
                        case 79:
                          v82 = OUTLINED_FUNCTION_4_27();
                          v85 = 23;
LABEL_33:
                          v90 = testFldeq(v82, v83, v84, v85);
                          v53 = v38;
                          if (v90)
                          {
                            goto LABEL_10;
                          }

LABEL_34:
                          v91 = advance_tok(a1);
                          v53 = v38;
                          if (v91)
                          {
                            goto LABEL_10;
                          }

                          v92 = *(a1 + 4586);
                          v53 = v38;
                          if (v92 > 1349)
                          {
                            goto LABEL_10;
                          }

                          *(a1 + 4586) = v92 + 250;
                          goto LABEL_190;
                        case 81:
                          v86 = OUTLINED_FUNCTION_30_14();
                          bspush_ca_scan(v86, v87);
                          v71 = OUTLINED_FUNCTION_4_27();
                          v74 = 25;
                          goto LABEL_29;
                        case 82:
                          goto LABEL_30;
                        case 83:
                          v71 = OUTLINED_FUNCTION_4_27();
                          v74 = 37;
LABEL_29:
                          v88 = testFldeq(v71, v72, v73, v74);
                          v53 = v38;
                          if (v88)
                          {
                            goto LABEL_10;
                          }

LABEL_30:
                          v89 = advance_tok(a1);
                          v53 = v38;
                          if (!v89)
                          {
                            goto LABEL_57;
                          }

                          goto LABEL_10;
                        default:
                          goto LABEL_3;
                      }
                    }

                    v303 = OUTLINED_FUNCTION_4_27();
                    if (testFldeq(v303, v304, v305, 40) || advance_tok(a1))
                    {
                      goto LABEL_188;
                    }

                    v144 = *(a1 + 4590) - 50;
LABEL_166:
                    *(a1 + 4590) = v144;
                    goto LABEL_180;
                  }

                  v339 = OUTLINED_FUNCTION_4_27();
                  if (testFldeq(v339, v340, v341, 20) || advance_tok(a1))
                  {
                    goto LABEL_188;
                  }

                  OUTLINED_FUNCTION_61_6();
                  OUTLINED_FUNCTION_43_7(v342);
                  v158 = v343 + 100;
LABEL_177:
                  *(a1 + 4598) = v158;
                  goto LABEL_180;
                }

                v365 = OUTLINED_FUNCTION_1_29();
                if (testFldeq(v365, v366, v367, v368))
                {
                  goto LABEL_188;
                }
              }

              else
              {
                v322 = OUTLINED_FUNCTION_30_14();
                bspush_ca_scan(v322, v323);
                v139 = OUTLINED_FUNCTION_0_31();
LABEL_67:
                v143 = testFldeq(v139, v140, v141, v142);
                v44 = v38;
                v53 = v38;
                if (v143)
                {
                  goto LABEL_10;
                }

LABEL_68:
                v38 = v44;
              }

              if (advance_tok(a1))
              {
                goto LABEL_188;
              }

              OUTLINED_FUNCTION_52_6();
              goto LABEL_166;
            }

            v247 = OUTLINED_FUNCTION_2_29();
            if (testFldeq(v247, v248, v249, v250) || advance_tok(a1))
            {
              goto LABEL_188;
            }

            v234 = *(a1 + 4586) - 200;
          }

          else
          {
            v243 = OUTLINED_FUNCTION_7_27();
            if (testFldeq(v243, v244, v245, v246) || advance_tok(a1))
            {
              goto LABEL_188;
            }

            v234 = 1200;
          }
        }

        else
        {
          v235 = OUTLINED_FUNCTION_30_14();
          bspush_ca_scan(v235, v236);
          v145 = OUTLINED_FUNCTION_0_31();
LABEL_113:
          testFldeq(v145, v146, v147, v148);
          OUTLINED_FUNCTION_79_5();
          if (v237)
          {
            goto LABEL_10;
          }

LABEL_114:
          if (OUTLINED_FUNCTION_97_2())
          {
            goto LABEL_188;
          }

          v234 = *(a1 + 4586) + 120;
        }
      }

      else
      {
        v231 = OUTLINED_FUNCTION_30_14();
        bspush_ca_scan(v231, v232);
        v130 = OUTLINED_FUNCTION_4_27();
        v133 = 11;
LABEL_109:
        testFldeq(v130, v131, v132, v133);
        OUTLINED_FUNCTION_80_4();
        if (v233)
        {
          goto LABEL_10;
        }

LABEL_110:
        v38 = v43;
        if (advance_tok(a1))
        {
          goto LABEL_188;
        }

        v234 = *(a1 + 4586) + 50;
      }

      break;
    }

    *(a1 + 4586) = v234;
    goto LABEL_126;
  }

LABEL_3:
  vretproc(a1);
  result = 94;
LABEL_4:
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t por_ph_o(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v293 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_38_10(a1, a2, a3, a4, a5, a6, a7, a8, v210);
  OUTLINED_FUNCTION_41_7();
  OUTLINED_FUNCTION_85_3(v10, v11, v12, v13, v14, v15, v16, v17, v211, v214, v217, v220, v223, v226, v229, v232, v235, v238, v241, v244, v247, v250, v253, v256, v259, v262, v265, v268, v271, v274, v277, 0, 0, v283, v285, v287, v289, v291);
  v18 = setjmp(v8);
  if (!v18 && !OUTLINED_FUNCTION_20_19(v18, v19, v20, v21, v22, v23, v24, v25, v212, v215, v218, v221, v224, v227, v230, v233, v236, v239, v242, v245, v248, v251, v254, v257, v260, v263, v266, v269, v272, v275, v278, v280, v282, *v284, v284[4], *v286, *&v286[4], v286[6], v288, SWORD2(v288), SBYTE6(v288), SHIBYTE(v288), v290, v292))
  {
    v28 = OUTLINED_FUNCTION_44_7();
    push_ptr_init(v28, v29);
    fence_27(a1);
    OUTLINED_FUNCTION_63_5(425);
    OUTLINED_FUNCTION_53_6(800);
    OUTLINED_FUNCTION_62_5(2550);
    v30 = OUTLINED_FUNCTION_12_26();
    starttest(v30, v31);
    OUTLINED_FUNCTION_55_6();
    if (v32 && (v33 = OUTLINED_FUNCTION_6_27(), !lpta_loadp_setscan_l(v33, v34)))
    {
      v67 = OUTLINED_FUNCTION_13_26();
      bspush_ca_scan(v67, v68);
      OUTLINED_FUNCTION_3_28();
      v69 = test_string_s();
      v70 = 0;
      v52 = 0;
      if (v69)
      {
        goto LABEL_75;
      }

LABEL_25:
      *(a1 + 4578) -= 75;
      *(a1 + 4586) += 300;
      v35 = v70;
    }

    else
    {
      v35 = 0;
LABEL_9:
      v36 = OUTLINED_FUNCTION_17_22();
      starttest(v36, v37);
      v38 = OUTLINED_FUNCTION_6_27();
      if (lpta_loadp_setscan_l(v38, v39))
      {
LABEL_10:
        v40 = OUTLINED_FUNCTION_30_14();
        starttest(v40, v41);
        v42 = OUTLINED_FUNCTION_6_27();
        if (lpta_loadp_setscan_l(v42, v43))
        {
LABEL_11:
          v44 = OUTLINED_FUNCTION_6_27();
          if (lpta_loadp_setscan_l(v44, v45) || (OUTLINED_FUNCTION_3_28(), test_string_s()))
          {
LABEL_13:
            v46 = OUTLINED_FUNCTION_35_11();
            starttest(v46, v47);
            v48 = OUTLINED_FUNCTION_34_12();
            if (!lpta_loadp_setscan_l(v48, v49))
            {
              v63 = OUTLINED_FUNCTION_8_27();
              if (testFldeq(v63, v64, v65, 2) || advance_tok(a1))
              {
                v52 = v35;
                goto LABEL_75;
              }

              OUTLINED_FUNCTION_59_6();
            }
          }

          else
          {
            OUTLINED_FUNCTION_64_5();
            *(a1 + 4594) = v66;
          }
        }

        else
        {
          v55 = OUTLINED_FUNCTION_30_14();
          bspush_ca_scan(v55, v56);
          v57 = OUTLINED_FUNCTION_0_31();
          testFldeq(v57, v58, v59, v60);
          OUTLINED_FUNCTION_70_5();
          if (v62)
          {
            goto LABEL_75;
          }

LABEL_18:
          v35 = v61;
          if (advance_tok(a1))
          {
            goto LABEL_74;
          }

          OUTLINED_FUNCTION_48_7();
        }
      }

      else
      {
        v50 = OUTLINED_FUNCTION_14_24();
        bspush_ca_scan(v50, v51);
        OUTLINED_FUNCTION_3_28();
        test_string_s();
        OUTLINED_FUNCTION_65_5();
        if (v53)
        {
          goto LABEL_75;
        }

LABEL_16:
        OUTLINED_FUNCTION_46_7(*(a1 + 4586) + 200);
        OUTLINED_FUNCTION_91_2(v54 + 50);
      }
    }

LABEL_26:
    v71 = OUTLINED_FUNCTION_5_27();
    if (!lpta_loadp_setscan_r(v71, v72))
    {
      OUTLINED_FUNCTION_3_28();
      if (!test_string_s())
      {
        OUTLINED_FUNCTION_51_6();
LABEL_44:
        *(a1 + 4598) = v94;
        goto LABEL_46;
      }
    }

LABEL_27:
    v73 = OUTLINED_FUNCTION_22_19();
    starttest(v73, v74);
    v75 = OUTLINED_FUNCTION_5_27();
    if (lpta_loadp_setscan_r(v75, v76))
    {
LABEL_28:
      v77 = OUTLINED_FUNCTION_30_14();
      starttest(v77, v78);
      v79 = OUTLINED_FUNCTION_5_27();
      if (lpta_loadp_setscan_r(v79, v80))
      {
LABEL_29:
        v81 = OUTLINED_FUNCTION_24_19();
        starttest(v81, v82);
        v83 = OUTLINED_FUNCTION_5_27();
        if (lpta_loadp_setscan_r(v83, v84))
        {
LABEL_30:
          v85 = OUTLINED_FUNCTION_5_27();
          if (!lpta_loadp_setscan_r(v85, v86))
          {
            OUTLINED_FUNCTION_3_28();
            if (!test_string_s())
            {
              *(a1 + 4582) -= 30;
              OUTLINED_FUNCTION_43_7(*(a1 + 4590) + 150);
              v94 = v112 - 200;
              goto LABEL_44;
            }
          }

LABEL_32:
          v87 = OUTLINED_FUNCTION_25_18();
          starttest(v87, v88);
          v89 = OUTLINED_FUNCTION_5_27();
          if (lpta_loadp_setscan_r(v89, v90))
          {
            goto LABEL_46;
          }

          v91 = OUTLINED_FUNCTION_8_27();
          if (testFldeq(v91, v92, v93, 2))
          {
            goto LABEL_74;
          }
        }

        else
        {
          v104 = OUTLINED_FUNCTION_30_14();
          bspush_ca_scan(v104, v105);
          v106 = OUTLINED_FUNCTION_0_31();
          testFldeq(v106, v107, v108, v109);
          OUTLINED_FUNCTION_76_5();
          if (v111)
          {
            goto LABEL_75;
          }

LABEL_65:
          v35 = v110;
        }

        if (advance_tok(a1))
        {
          goto LABEL_74;
        }

        *(a1 + 4590) += 200;
      }

      else
      {
        v99 = OUTLINED_FUNCTION_30_14();
        bspush_ca_scan(v99, v100);
        OUTLINED_FUNCTION_3_28();
        test_string_s();
        OUTLINED_FUNCTION_69_5();
        if (v101)
        {
          goto LABEL_75;
        }

LABEL_40:
        OUTLINED_FUNCTION_43_7(*(a1 + 4590) + 300);
        *(a1 + 4598) = v102 + 50;
        v35 = v103;
      }
    }

    else
    {
      v95 = OUTLINED_FUNCTION_30_14();
      bspush_ca_scan(v95, v96);
      OUTLINED_FUNCTION_3_28();
      test_string_s();
      OUTLINED_FUNCTION_80_4();
      if (v97)
      {
        goto LABEL_75;
      }

LABEL_38:
      *(a1 + 4582) -= 75;
      OUTLINED_FUNCTION_49_6();
      v35 = v98;
    }

LABEL_46:
    OUTLINED_FUNCTION_55_6();
    if (!v32)
    {
      goto LABEL_120;
    }

    v113 = OUTLINED_FUNCTION_30_14();
    starttest(v113, v114);
    v115 = OUTLINED_FUNCTION_6_27();
    v117 = lpta_loadp_setscan_l(v115, v116);
    v118 = v35;
    if (!v117)
    {
LABEL_69:
      v35 = v118;
      OUTLINED_FUNCTION_50_6(28, v213, v216, v219, v222, v225, v228, v231, v234, v237, v240, v243, v246, v249, v252, v255, v258, v261, v264, v267, v270, v273, v276, v279, v281);
      v156 = OUTLINED_FUNCTION_30_14();
      bspush_ca_scan(v156, v157);
      v158 = OUTLINED_FUNCTION_7_27();
      testFldeq(v158, v159, v160, v161);
      OUTLINED_FUNCTION_79_5();
      if (v162)
      {
        goto LABEL_75;
      }

LABEL_70:
      if (!OUTLINED_FUNCTION_97_2())
      {
        v163 = OUTLINED_FUNCTION_31_14();
        if (!lpta_loadp_setscan_r(v163, v164) && !advance_tok(a1) && !OUTLINED_FUNCTION_19_20())
        {
          OUTLINED_FUNCTION_30_14();
          bspush_ca_scan_boa();
          OUTLINED_FUNCTION_3_28();
          v141 = test_string_s();
LABEL_122:
          if (v141)
          {
            v52 = v35;
          }

          else
          {
            v52 = 1;
          }

LABEL_75:
          v35 = v52;
          while (2)
          {
            v165 = *(a1 + 104);
            if (v165)
            {
              v166 = OUTLINED_FUNCTION_26_18(v165);
            }

            else
            {
              v166 = vback(a1, v35);
              v35 = 0;
            }

            v70 = v35;
            v61 = v35;
            v110 = v35;
            v133 = v35;
            switch(v166)
            {
              case 1:
                goto LABEL_9;
              case 2:
                OUTLINED_FUNCTION_3_28();
                v167 = test_string_s();
                v70 = v35;
                if (!v167)
                {
                  goto LABEL_25;
                }

                continue;
              case 3:
                goto LABEL_25;
              case 4:
                goto LABEL_26;
              case 5:
                goto LABEL_10;
              case 6:
                v181 = OUTLINED_FUNCTION_15_24();
                bspush_ca_scan(v181, v182);
                goto LABEL_94;
              case 7:
                goto LABEL_16;
              case 8:
LABEL_94:
                OUTLINED_FUNCTION_3_28();
                if (!test_string_s())
                {
                  goto LABEL_16;
                }

                continue;
              case 9:
                goto LABEL_11;
              case 10:
                v188 = OUTLINED_FUNCTION_1_29();
                v192 = testFldeq(v188, v189, v190, v191);
                v61 = v35;
                if (!v192)
                {
                  goto LABEL_18;
                }

                continue;
              case 11:
                goto LABEL_18;
              case 12:
                goto LABEL_13;
              case 13:
                goto LABEL_27;
              case 14:
                goto LABEL_46;
              case 15:
                goto LABEL_28;
              case 16:
                OUTLINED_FUNCTION_3_28();
                if (!test_string_s())
                {
                  goto LABEL_38;
                }

                continue;
              case 17:
                goto LABEL_38;
              case 18:
                goto LABEL_29;
              case 19:
                v183 = OUTLINED_FUNCTION_30_14();
                bspush_ca_scan(v183, v184);
                goto LABEL_98;
              case 20:
                goto LABEL_40;
              case 21:
LABEL_98:
                OUTLINED_FUNCTION_3_28();
                if (!test_string_s())
                {
                  goto LABEL_40;
                }

                continue;
              case 22:
                goto LABEL_30;
              case 23:
                v193 = OUTLINED_FUNCTION_1_29();
                v197 = testFldeq(v193, v194, v195, v196);
                v110 = v35;
                if (!v197)
                {
                  goto LABEL_65;
                }

                continue;
              case 24:
                goto LABEL_65;
              case 25:
                goto LABEL_32;
              case 26:
              case 37:
              case 45:
                goto LABEL_120;
              case 27:
                goto LABEL_49;
              case 28:
                v118 = v35;
                goto LABEL_69;
              case 29:
                v172 = OUTLINED_FUNCTION_2_29();
                if (!testFldeq(v172, v173, v174, v175))
                {
                  goto LABEL_70;
                }

                continue;
              case 30:
                goto LABEL_70;
              case 31:
                bspop_boa(a1);
                *(a1 + 4586) = -2;
                *(a1 + 4594) = -2;
                goto LABEL_120;
              case 32:
                goto LABEL_50;
              case 33:
                goto LABEL_55;
              case 34:
                v168 = OUTLINED_FUNCTION_0_31();
                if (!testFldeq(v168, v169, v170, v171))
                {
                  goto LABEL_57;
                }

                continue;
              case 35:
                goto LABEL_57;
              case 36:
                goto LABEL_62;
              case 38:
                goto LABEL_102;
              case 39:
                v176 = OUTLINED_FUNCTION_2_29();
                v180 = testFldeq(v176, v177, v178, v179);
                v133 = v35;
                if (!v180)
                {
                  goto LABEL_52;
                }

                continue;
              case 40:
                goto LABEL_52;
              case 41:
                bspop_boa(a1);
                OUTLINED_FUNCTION_51_6();
                goto LABEL_118;
              case 42:
                v185 = OUTLINED_FUNCTION_4_27();
                if (!testFldeq(v185, v186, v187, 23))
                {
                  goto LABEL_54;
                }

                continue;
              case 43:
                goto LABEL_54;
              case 44:
                goto LABEL_104;
              case 46:
                v200 = *(a1 + 4586);
                v201 = v200;
                goto LABEL_109;
              case 47:
                goto LABEL_114;
              default:
                goto LABEL_3;
            }
          }
        }
      }

LABEL_74:
      v52 = v35;
      goto LABEL_75;
    }

LABEL_49:
    v119 = OUTLINED_FUNCTION_30_14();
    starttest(v119, v120);
    v121 = OUTLINED_FUNCTION_5_27();
    if (lpta_loadp_setscan_l(v121, v122))
    {
LABEL_50:
      v123 = OUTLINED_FUNCTION_30_14();
      starttest(v123, v124);
      v125 = OUTLINED_FUNCTION_5_27();
      if (!lpta_loadp_setscan_r(v125, v126))
      {
        v127 = OUTLINED_FUNCTION_27_16();
        bspush_ca_scan(v127, v128);
        v129 = OUTLINED_FUNCTION_7_27();
        testFldeq(v129, v130, v131, v132);
        OUTLINED_FUNCTION_87_3();
        if (v134)
        {
          goto LABEL_75;
        }

LABEL_52:
        v35 = v133;
        if (!advance_tok(a1))
        {
          OUTLINED_FUNCTION_30_14();
          bspush_ca_scan_boa();
          v135 = OUTLINED_FUNCTION_30_14();
          bspush_ca_scan(v135, v136);
          v137 = OUTLINED_FUNCTION_4_27();
          testFldeq(v137, v138, v139, 28);
          OUTLINED_FUNCTION_86_3();
          if (v140)
          {
            goto LABEL_75;
          }

LABEL_54:
          v141 = OUTLINED_FUNCTION_95_2();
          goto LABEL_122;
        }

        goto LABEL_74;
      }

LABEL_102:
      v198 = OUTLINED_FUNCTION_5_27();
      if (lpta_loadp_setscan_r(v198, v199) || (OUTLINED_FUNCTION_3_28(), test_string_s()))
      {
LABEL_104:
        if (*(a1 + 4586) >= 901)
        {
          v201 = OUTLINED_FUNCTION_94_2();
          if (v152 == v153)
          {
            v205 = v203 + v202;
            v206 = 150.0;
LABEL_113:
            OUTLINED_FUNCTION_39_9(vcvtd_n_f64_u32(v205, 1uLL) + v206);
            goto LABEL_114;
          }
        }

        else
        {
          v200 = *(a1 + 4586);
          v201 = v200;
LABEL_109:
          if (v200 < 1)
          {
            goto LABEL_114;
          }

          v204 = *(a1 + 4590);
        }

        if (v204 >= 1)
        {
          v205 = v201 + v204;
          v206 = 70.0;
          goto LABEL_113;
        }

LABEL_114:
        v207 = *(a1 + 4594);
        if (v207 >= 1 && *(a1 + 4598) >= 1)
        {
          OUTLINED_FUNCTION_84_3(v207);
LABEL_118:
          *(a1 + 4598) = v208;
        }

        goto LABEL_120;
      }

      OUTLINED_FUNCTION_88_3();
      if (v152 != v153)
      {
LABEL_120:
        vretproc(a1);
        result = 0;
        goto LABEL_4;
      }

      v155 = v209 + 50;
    }

    else
    {
LABEL_55:
      OUTLINED_FUNCTION_50_6(33, v213, v216, v219, v222, v225, v228, v231, v234, v237, v240, v243, v246, v249, v252, v255, v258, v261, v264, v267, v270, v273, v276, v279, v281);
      if (advance_tok(a1))
      {
        goto LABEL_74;
      }

      v142 = OUTLINED_FUNCTION_30_14();
      bspush_ca_scan(v142, v143);
      v144 = OUTLINED_FUNCTION_8_27();
      testFldeq(v144, v145, v146, 2);
      OUTLINED_FUNCTION_78_5();
      if (v147)
      {
        goto LABEL_75;
      }

LABEL_57:
      if (OUTLINED_FUNCTION_96_2())
      {
        goto LABEL_74;
      }

      v148 = OUTLINED_FUNCTION_31_14();
      if (lpta_loadp_setscan_r(v148, v149))
      {
        goto LABEL_74;
      }

      OUTLINED_FUNCTION_3_28();
      v150 = test_string_s();
      v52 = v35;
      if (v150)
      {
        goto LABEL_75;
      }

      OUTLINED_FUNCTION_93_2();
      if (v152 == v153)
      {
        *(a1 + 4586) = v151 + 100;
      }

LABEL_62:
      OUTLINED_FUNCTION_88_3();
      if (v152 != v153)
      {
        goto LABEL_120;
      }

      v155 = v154 + 100;
    }

    *(a1 + 4590) = v155;
    goto LABEL_120;
  }

LABEL_3:
  vretproc(a1);
  result = 94;
LABEL_4:
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t por_ph_c(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v311 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_38_10(a1, a2, a3, a4, a5, a6, a7, a8, v228);
  OUTLINED_FUNCTION_41_7();
  OUTLINED_FUNCTION_85_3(v10, v11, v12, v13, v14, v15, v16, v17, v229, v232, v235, v238, v241, v244, v247, v250, v253, v256, v259, v262, v265, v268, v271, v274, v277, v280, v283, v286, v289, v292, v295, 0, 0, v301, v303, v305, v307, v309);
  v18 = setjmp(v8);
  if (v18 || OUTLINED_FUNCTION_20_19(v18, v19, v20, v21, v22, v23, v24, v25, v230, v233, v236, v239, v242, v245, v248, v251, v254, v257, v260, v263, v266, v269, v272, v275, v278, v281, v284, v287, v290, v293, v296, v298, v300, *v302, v302[4], *v304, *&v304[4], v304[6], v306, SWORD2(v306), SBYTE6(v306), SHIBYTE(v306), v308, v310))
  {
LABEL_3:
    vretproc(a1);
    result = 94;
    goto LABEL_4;
  }

  v28 = OUTLINED_FUNCTION_44_7();
  push_ptr_init(v28, v29);
  fence_27(a1);
  OUTLINED_FUNCTION_63_5(550);
  OUTLINED_FUNCTION_53_6(1000);
  OUTLINED_FUNCTION_62_5(2400);
  v30 = OUTLINED_FUNCTION_12_26();
  starttest(v30, v31);
  OUTLINED_FUNCTION_55_6();
  if (!v32 || (v33 = OUTLINED_FUNCTION_6_27(), lpta_loadp_setscan_l(v33, v34)))
  {
    v35 = 0;
LABEL_9:
    v36 = OUTLINED_FUNCTION_17_22();
    starttest(v36, v37);
    v38 = OUTLINED_FUNCTION_6_27();
    if (!lpta_loadp_setscan_l(v38, v39))
    {
      v47 = OUTLINED_FUNCTION_14_24();
      bspush_ca_scan(v47, v48);
      v49 = OUTLINED_FUNCTION_7_27();
      testFldeq(v49, v50, v51, v52);
      OUTLINED_FUNCTION_65_5();
      if (!v55)
      {
        goto LABEL_15;
      }

      goto LABEL_55;
    }

LABEL_10:
    v40 = OUTLINED_FUNCTION_30_14();
    starttest(v40, v41);
    v42 = OUTLINED_FUNCTION_6_27();
    if (!lpta_loadp_setscan_l(v42, v43))
    {
      v57 = OUTLINED_FUNCTION_23_19();
      bspush_ca_scan(v57, v58);
      v59 = OUTLINED_FUNCTION_0_31();
      testFldeq(v59, v60, v61, v62);
      OUTLINED_FUNCTION_81_4();
      if (!v64)
      {
LABEL_18:
        v35 = v63;
        if (advance_tok(a1))
        {
          goto LABEL_54;
        }

        v56 = *(a1 + 4586) + 100;
        goto LABEL_20;
      }

      goto LABEL_55;
    }

LABEL_11:
    v44 = OUTLINED_FUNCTION_6_27();
    if (lpta_loadp_setscan_l(v44, v45))
    {
      goto LABEL_25;
    }

    OUTLINED_FUNCTION_3_28();
    if (test_string_s())
    {
      goto LABEL_25;
    }

    OUTLINED_FUNCTION_64_5();
LABEL_24:
    *(a1 + 4594) = v46;
    goto LABEL_25;
  }

  v65 = OUTLINED_FUNCTION_13_26();
  bspush_ca_scan(v65, v66);
  v67 = OUTLINED_FUNCTION_29_15();
  v69 = testFldeq(v67, v68, 0, 17);
  v53 = 0;
  v70 = 0;
  if (!v69)
  {
LABEL_22:
    v35 = v70;
    if (advance_tok(a1))
    {
      goto LABEL_54;
    }

    OUTLINED_FUNCTION_89_3();
    *(a1 + 4586) = v71;
    OUTLINED_FUNCTION_49_6();
    v46 = *(a1 + 4594) - 250;
    goto LABEL_24;
  }

  do
  {
    do
    {
      while (1)
      {
        while (1)
        {
          while (1)
          {
            while (1)
            {
              while (1)
              {
LABEL_55:
                v35 = v53;
                do
                {
                  while (2)
                  {
                    v144 = *(a1 + 104);
                    if (v144)
                    {
                      v145 = OUTLINED_FUNCTION_26_18(v144);
                    }

                    else
                    {
                      v145 = vback(a1, v35);
                      v35 = 0;
                    }

                    v70 = v35;
                    v54 = v35;
                    v63 = v35;
                    v95 = v35;
                    v133 = v35;
                    v142 = v35;
                    v118 = v35;
                    switch(v145)
                    {
                      case 1:
                        goto LABEL_9;
                      case 2:
                        v146 = OUTLINED_FUNCTION_4_27();
                        v149 = testFldeq(v146, v147, v148, 21);
                        v70 = v35;
                        if (!v149)
                        {
                          goto LABEL_22;
                        }

                        continue;
                      case 3:
                        goto LABEL_22;
                      case 4:
                        goto LABEL_25;
                      case 5:
                        goto LABEL_10;
                      case 6:
                        v154 = OUTLINED_FUNCTION_15_24();
                        bspush_ca_scan(v154, v155);
                        v156 = OUTLINED_FUNCTION_2_29();
                        break;
                      case 7:
                        goto LABEL_15;
                      case 8:
                        v164 = OUTLINED_FUNCTION_30_14();
                        bspush_ca_scan(v164, v165);
                        v156 = OUTLINED_FUNCTION_4_27();
                        v159 = 25;
                        break;
                      case 9:
                        v156 = OUTLINED_FUNCTION_4_27();
                        v159 = 30;
                        break;
                      case 10:
                        goto LABEL_11;
                      case 11:
                        v170 = OUTLINED_FUNCTION_1_29();
                        v174 = testFldeq(v170, v171, v172, v173);
                        v63 = v35;
                        if (!v174)
                        {
                          goto LABEL_18;
                        }

                        continue;
                      case 12:
                        goto LABEL_18;
                      case 13:
                        goto LABEL_26;
                      case 14:
                        v160 = OUTLINED_FUNCTION_4_27();
                        v163 = testFldeq(v160, v161, v162, 21);
                        v95 = v35;
                        if (!v163)
                        {
                          goto LABEL_34;
                        }

                        continue;
                      case 15:
                        goto LABEL_34;
                      case 16:
                        goto LABEL_37;
                      case 17:
                        goto LABEL_28;
                      case 18:
                        goto LABEL_29;
                      case 19:
                        v180 = OUTLINED_FUNCTION_1_29();
                        v184 = testFldeq(v180, v181, v182, v183);
                        v133 = v35;
                        if (!v184)
                        {
                          goto LABEL_47;
                        }

                        continue;
                      case 20:
                        goto LABEL_47;
                      case 21:
                        goto LABEL_30;
                      case 22:
                        v150 = OUTLINED_FUNCTION_4_27();
                        v153 = testFldeq(v150, v151, v152, 30);
                        v142 = v35;
                        if (!v153)
                        {
                          goto LABEL_50;
                        }

                        continue;
                      case 23:
                        goto LABEL_50;
                      case 24:
                      case 35:
                      case 43:
                        goto LABEL_121;
                      case 25:
                        goto LABEL_40;
                      case 26:
                        v103 = v35;
                        goto LABEL_101;
                      case 27:
                        v189 = OUTLINED_FUNCTION_2_29();
                        if (!testFldeq(v189, v190, v191, v192))
                        {
                          goto LABEL_102;
                        }

                        continue;
                      case 28:
                        goto LABEL_102;
                      case 29:
                        bspop_boa(a1);
                        *(a1 + 4586) = -2;
                        *(a1 + 4594) = -2;
                        goto LABEL_121;
                      case 30:
                        goto LABEL_41;
                      case 31:
                        goto LABEL_83;
                      case 32:
                        v185 = OUTLINED_FUNCTION_0_31();
                        if (!testFldeq(v185, v186, v187, v188))
                        {
                          goto LABEL_85;
                        }

                        continue;
                      case 33:
                        goto LABEL_85;
                      case 34:
                        goto LABEL_90;
                      case 36:
                        goto LABEL_93;
                      case 37:
                        v175 = OUTLINED_FUNCTION_2_29();
                        v179 = testFldeq(v175, v176, v177, v178);
                        v118 = v35;
                        if (!v179)
                        {
                          goto LABEL_43;
                        }

                        continue;
                      case 38:
                        goto LABEL_43;
                      case 39:
                        bspop_boa(a1);
                        OUTLINED_FUNCTION_51_6();
                        goto LABEL_120;
                      case 40:
                        v167 = OUTLINED_FUNCTION_4_27();
                        if (!testFldeq(v167, v168, v169, 23))
                        {
                          goto LABEL_45;
                        }

                        continue;
                      case 41:
                        goto LABEL_45;
                      case 42:
                        goto LABEL_95;
                      case 44:
                        v209 = *(a1 + 4586);
                        v210 = v209;
                        goto LABEL_112;
                      case 45:
                        goto LABEL_117;
                      default:
                        goto LABEL_3;
                    }

                    break;
                  }

                  v166 = testFldeq(v156, v157, v158, v159);
                  v54 = v35;
                }

                while (v166);
LABEL_15:
                v35 = v54;
                if (advance_tok(a1))
                {
                  goto LABEL_54;
                }

                OUTLINED_FUNCTION_89_3();
LABEL_20:
                *(a1 + 4586) = v56;
LABEL_25:
                v72 = OUTLINED_FUNCTION_30_14();
                starttest(v72, v73);
                v74 = OUTLINED_FUNCTION_5_27();
                if (lpta_loadp_setscan_r(v74, v75))
                {
                  break;
                }

                v90 = OUTLINED_FUNCTION_25_18();
                bspush_ca_scan(v90, v91);
                v92 = OUTLINED_FUNCTION_4_27();
                testFldeq(v92, v93, v94, 17);
                OUTLINED_FUNCTION_70_5();
                if (!v96)
                {
LABEL_34:
                  v35 = v95;
                  if (advance_tok(a1))
                  {
                    goto LABEL_54;
                  }

                  OUTLINED_FUNCTION_40_8();
                  v89 = v97 - 250;
                  goto LABEL_36;
                }
              }

LABEL_26:
              v76 = OUTLINED_FUNCTION_5_27();
              if (!lpta_loadp_setscan_r(v76, v77))
              {
                OUTLINED_FUNCTION_3_28();
                if (!test_string_s())
                {
                  OUTLINED_FUNCTION_51_6();
                  goto LABEL_36;
                }
              }

LABEL_28:
              v78 = OUTLINED_FUNCTION_30_14();
              starttest(v78, v79);
              v80 = OUTLINED_FUNCTION_5_27();
              if (lpta_loadp_setscan_r(v80, v81))
              {
                break;
              }

              v127 = OUTLINED_FUNCTION_30_14();
              bspush_ca_scan(v127, v128);
              v129 = OUTLINED_FUNCTION_0_31();
              testFldeq(v129, v130, v131, v132);
              OUTLINED_FUNCTION_80_4();
              if (!v134)
              {
LABEL_47:
                v35 = v133;
                if (advance_tok(a1))
                {
                  goto LABEL_54;
                }

                OUTLINED_FUNCTION_52_6();
LABEL_52:
                *(a1 + 4590) = v135;
                goto LABEL_37;
              }
            }

LABEL_29:
            v82 = OUTLINED_FUNCTION_30_14();
            starttest(v82, v83);
            v84 = OUTLINED_FUNCTION_5_27();
            if (lpta_loadp_setscan_r(v84, v85))
            {
              break;
            }

            v136 = OUTLINED_FUNCTION_24_19();
            bspush_ca_scan(v136, v137);
            v138 = OUTLINED_FUNCTION_2_29();
            testFldeq(v138, v139, v140, v141);
            OUTLINED_FUNCTION_76_5();
            if (!v143)
            {
LABEL_50:
              v35 = v142;
              if (advance_tok(a1))
              {
                goto LABEL_54;
              }

              OUTLINED_FUNCTION_82_4();
              goto LABEL_52;
            }
          }

LABEL_30:
          v86 = OUTLINED_FUNCTION_5_27();
          if (!lpta_loadp_setscan_r(v86, v87))
          {
            OUTLINED_FUNCTION_3_28();
            if (!test_string_s())
            {
              *(a1 + 4582) -= 30;
              OUTLINED_FUNCTION_40_8();
              v89 = v88 - 300;
LABEL_36:
              *(a1 + 4598) = v89;
            }
          }

LABEL_37:
          OUTLINED_FUNCTION_55_6();
          if (!v32)
          {
            goto LABEL_121;
          }

          v98 = OUTLINED_FUNCTION_16_23();
          starttest(v98, v99);
          v100 = OUTLINED_FUNCTION_6_27();
          v102 = lpta_loadp_setscan_l(v100, v101);
          v103 = v35;
          if (v102)
          {
            break;
          }

LABEL_101:
          v35 = v103;
          OUTLINED_FUNCTION_50_6(26, v231, v234, v237, v240, v243, v246, v249, v252, v255, v258, v261, v264, v267, v270, v273, v276, v279, v282, v285, v288, v291, v294, v297, v299);
          v217 = OUTLINED_FUNCTION_30_14();
          bspush_ca_scan(v217, v218);
          v219 = OUTLINED_FUNCTION_7_27();
          testFldeq(v219, v220, v221, v222);
          OUTLINED_FUNCTION_79_5();
          if (!v223)
          {
LABEL_102:
            if (!OUTLINED_FUNCTION_97_2())
            {
              v224 = OUTLINED_FUNCTION_31_14();
              if (!lpta_loadp_setscan_r(v224, v225) && !advance_tok(a1) && !OUTLINED_FUNCTION_19_20())
              {
                OUTLINED_FUNCTION_30_14();
                bspush_ca_scan_boa();
                OUTLINED_FUNCTION_3_28();
                v126 = test_string_s();
                goto LABEL_107;
              }
            }

LABEL_54:
            v53 = v35;
          }
        }

LABEL_40:
        v104 = OUTLINED_FUNCTION_30_14();
        starttest(v104, v105);
        v106 = OUTLINED_FUNCTION_5_27();
        if (!lpta_loadp_setscan_l(v106, v107))
        {
          break;
        }

LABEL_41:
        v108 = OUTLINED_FUNCTION_30_14();
        starttest(v108, v109);
        v110 = OUTLINED_FUNCTION_5_27();
        if (lpta_loadp_setscan_r(v110, v111))
        {
LABEL_93:
          v207 = OUTLINED_FUNCTION_5_27();
          if (!lpta_loadp_setscan_r(v207, v208))
          {
            OUTLINED_FUNCTION_3_28();
            if (!test_string_s())
            {
              OUTLINED_FUNCTION_88_3();
              if (v203 == v204)
              {
                v206 = v227 + 50;
                goto LABEL_92;
              }

              goto LABEL_121;
            }
          }

LABEL_95:
          if (*(a1 + 4586) >= 901)
          {
            v210 = OUTLINED_FUNCTION_94_2();
            if (v203 == v204)
            {
              v214 = v212 + v211;
              v215 = 150.0;
LABEL_116:
              OUTLINED_FUNCTION_39_9(vcvtd_n_f64_u32(v214, 1uLL) + v215);
              goto LABEL_117;
            }
          }

          else
          {
            v209 = *(a1 + 4586);
            v210 = v209;
LABEL_112:
            if (v209 < 1)
            {
              goto LABEL_117;
            }

            v213 = *(a1 + 4590);
          }

          if (v213 >= 1)
          {
            v214 = v210 + v213;
            v215 = 70.0;
            goto LABEL_116;
          }

LABEL_117:
          v226 = *(a1 + 4594);
          if (v226 >= 1 && *(a1 + 4598) >= 1)
          {
            OUTLINED_FUNCTION_84_3(v226);
LABEL_120:
            *(a1 + 4598) = v216;
          }

          goto LABEL_121;
        }

        v112 = OUTLINED_FUNCTION_30_14();
        bspush_ca_scan(v112, v113);
        v114 = OUTLINED_FUNCTION_7_27();
        testFldeq(v114, v115, v116, v117);
        OUTLINED_FUNCTION_87_3();
        if (!v119)
        {
LABEL_43:
          v35 = v118;
          if (advance_tok(a1))
          {
            goto LABEL_54;
          }

          OUTLINED_FUNCTION_27_16();
          bspush_ca_scan_boa();
          v120 = OUTLINED_FUNCTION_30_14();
          bspush_ca_scan(v120, v121);
          v122 = OUTLINED_FUNCTION_4_27();
          testFldeq(v122, v123, v124, 28);
          OUTLINED_FUNCTION_86_3();
          if (!v125)
          {
LABEL_45:
            v126 = OUTLINED_FUNCTION_95_2();
LABEL_107:
            if (v126)
            {
              v53 = v35;
            }

            else
            {
              v53 = 1;
            }
          }
        }
      }

LABEL_83:
      OUTLINED_FUNCTION_50_6(31, v231, v234, v237, v240, v243, v246, v249, v252, v255, v258, v261, v264, v267, v270, v273, v276, v279, v282, v285, v288, v291, v294, v297, v299);
      if (advance_tok(a1))
      {
        goto LABEL_54;
      }

      v193 = OUTLINED_FUNCTION_30_14();
      bspush_ca_scan(v193, v194);
      v195 = OUTLINED_FUNCTION_8_27();
      testFldeq(v195, v196, v197, 2);
      OUTLINED_FUNCTION_78_5();
    }

    while (v198);
LABEL_85:
    if (OUTLINED_FUNCTION_96_2())
    {
      goto LABEL_54;
    }

    v199 = OUTLINED_FUNCTION_31_14();
    if (lpta_loadp_setscan_r(v199, v200))
    {
      goto LABEL_54;
    }

    OUTLINED_FUNCTION_3_28();
    v201 = test_string_s();
    v53 = v35;
  }

  while (v201);
  OUTLINED_FUNCTION_93_2();
  if (v203 == v204)
  {
    *(a1 + 4586) = v202 + 100;
  }

LABEL_90:
  OUTLINED_FUNCTION_88_3();
  if (v203 == v204)
  {
    v206 = v205 + 100;
LABEL_92:
    *(a1 + 4590) = v206;
  }

LABEL_121:
  vretproc(a1);
  result = 0;
LABEL_4:
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t por_ph_u(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v374 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_38_10(a1, a2, a3, a4, a5, a6, a7, a8, v291);
  OUTLINED_FUNCTION_41_7();
  OUTLINED_FUNCTION_85_3(v10, v11, v12, v13, v14, v15, v16, v17, v292, v295, v298, v301, v304, v307, v310, v313, v316, v319, v322, v325, v328, v331, v334, v337, v340, v343, v346, v349, v352, v355, v358, 0, 0, v364, v366, v368, v370, v372);
  v18 = setjmp(v8);
  if (!v18 && !OUTLINED_FUNCTION_20_19(v18, v19, v20, v21, v22, v23, v24, v25, v293, v296, v299, v302, v305, v308, v311, v314, v317, v320, v323, v326, v329, v332, v335, v338, v341, v344, v347, v350, v353, v356, v359, v361, v363, *v365, v365[4], *v367, *&v367[4], v367[6], v369, SWORD2(v369), SBYTE6(v369), SHIBYTE(v369), v371, v373))
  {
    v28 = OUTLINED_FUNCTION_44_7();
    push_ptr_init(v28, v29);
    fence_27(a1);
    OUTLINED_FUNCTION_63_5(250);
    OUTLINED_FUNCTION_53_6(800);
    OUTLINED_FUNCTION_62_5(2300);
    OUTLINED_FUNCTION_55_6();
    if (!v30 || (v31 = OUTLINED_FUNCTION_34_12(), lpta_loadpn(v31, v32), rpta_loadpn(a1, a1 + 1448), compare_ptas(a1)) || testneq(a1))
    {
      v33 = 0;
    }

    else
    {
      v46 = OUTLINED_FUNCTION_12_26();
      starttest(v46, v47);
      v48 = OUTLINED_FUNCTION_5_27();
      v50 = lpta_loadp_setscan_l(v48, v49);
      v51 = 0;
      v33 = 0;
      if (!v50)
      {
LABEL_17:
        v52 = v51;
        OUTLINED_FUNCTION_50_6(2, v294, v297, v300, v303, v306, v309, v312, v315, v318, v321, v324, v327, v330, v333, v336, v339, v342, v345, v348, v351, v354, v357, v360, v362);
        v53 = OUTLINED_FUNCTION_30_14();
        bspush_ca_scan(v53, v54);
        v55 = v52;
LABEL_18:
        v56 = v55;
        v57 = OUTLINED_FUNCTION_31_14();
        v59 = lpta_loadp_setscan_r(v57, v58);
        v33 = v56;
        v60 = v56;
        if (!v59)
        {
LABEL_19:
          v61 = OUTLINED_FUNCTION_30_14();
          if (!test_synch(v61, v62, 1u, v63))
          {
            OUTLINED_FUNCTION_15_24();
            bspush_ca_scan_boa();
LABEL_22:
            v64 = OUTLINED_FUNCTION_30_14();
            v67 = test_synch(v64, v65, 1u, v66);
            goto LABEL_23;
          }

LABEL_20:
          v60 = v33;
          goto LABEL_26;
        }

        goto LABEL_26;
      }
    }

    while (2)
    {
      v34 = OUTLINED_FUNCTION_30_14();
      starttest(v34, v35);
      v36 = OUTLINED_FUNCTION_6_27();
      v38 = lpta_loadp_setscan_l(v36, v37);
      v39 = v33;
      if (!v38)
      {
LABEL_11:
        v40 = OUTLINED_FUNCTION_23_19();
        if (test_synch(v40, v41, 1u, v42))
        {
          goto LABEL_20;
        }

        OUTLINED_FUNCTION_89_3();
        OUTLINED_FUNCTION_46_7(v43);
        v45 = v44 - 50;
        goto LABEL_13;
      }

LABEL_76:
      v33 = v39;
      v158 = OUTLINED_FUNCTION_30_14();
      starttest(v158, v159);
      v160 = OUTLINED_FUNCTION_6_27();
      if (lpta_loadp_setscan_l(v160, v161))
      {
LABEL_77:
        v162 = OUTLINED_FUNCTION_30_14();
        starttest(v162, v163);
        v164 = OUTLINED_FUNCTION_6_27();
        if (lpta_loadp_setscan_l(v164, v165))
        {
LABEL_78:
          v166 = OUTLINED_FUNCTION_30_14();
          starttest(v166, v167);
          v168 = OUTLINED_FUNCTION_6_27();
          if (lpta_loadp_setscan_l(v168, v169))
          {
LABEL_79:
            v170 = OUTLINED_FUNCTION_24_19();
            starttest(v170, v171);
            v172 = OUTLINED_FUNCTION_6_27();
            if (lpta_loadp_setscan_l(v172, v173))
            {
LABEL_80:
              v174 = OUTLINED_FUNCTION_16_23();
              starttest(v174, v175);
              v176 = OUTLINED_FUNCTION_6_27();
              if (lpta_loadp_setscan_l(v176, v177))
              {
LABEL_81:
                v178 = OUTLINED_FUNCTION_6_27();
                if (lpta_loadp_setscan_l(v178, v179) || (OUTLINED_FUNCTION_3_28(), test_string_s()))
                {
LABEL_83:
                  v180 = OUTLINED_FUNCTION_6_27();
                  if (lpta_loadp_setscan_l(v180, v181) || (OUTLINED_FUNCTION_3_28(), test_string_s()))
                  {
LABEL_85:
                    v182 = OUTLINED_FUNCTION_30_14();
                    starttest(v182, v183);
                    v184 = OUTLINED_FUNCTION_6_27();
                    if (lpta_loadp_setscan_l(v184, v185))
                    {
LABEL_86:
                      v186 = OUTLINED_FUNCTION_30_14();
                      starttest(v186, v187);
                      v188 = OUTLINED_FUNCTION_6_27();
                      if (lpta_loadp_setscan_l(v188, v189))
                      {
                        goto LABEL_111;
                      }

                      v190 = OUTLINED_FUNCTION_4_27();
                      if (testFldeq(v190, v191, v192, 32) || advance_tok(a1))
                      {
                        goto LABEL_20;
                      }

                      v193 = *(a1 + 4586) + 80;
                    }

                    else
                    {
                      v216 = OUTLINED_FUNCTION_4_27();
                      if (testFldeq(v216, v217, v218, 16) || advance_tok(a1))
                      {
                        goto LABEL_20;
                      }

                      v193 = *(a1 + 4586) + 150;
                    }

                    goto LABEL_110;
                  }

                  v278 = *(a1 + 4586) + 250;
                }

                else
                {
                  v278 = *(a1 + 4586) + 50;
                }

                OUTLINED_FUNCTION_66_5(v278);
LABEL_13:
                *(a1 + 4594) = v45;
                goto LABEL_111;
              }

              v213 = OUTLINED_FUNCTION_30_14();
              bspush_ca_scan(v213, v214);
              v133 = OUTLINED_FUNCTION_0_31();
LABEL_104:
              testFldeq(v133, v134, v135, v136);
              OUTLINED_FUNCTION_79_5();
              if (v215)
              {
                goto LABEL_26;
              }

LABEL_105:
              if (OUTLINED_FUNCTION_97_2())
              {
                goto LABEL_20;
              }

              v193 = *(a1 + 4586) + 200;
LABEL_110:
              *(a1 + 4586) = v193;
              goto LABEL_111;
            }

            v208 = OUTLINED_FUNCTION_30_14();
            bspush_ca_scan(v208, v209);
            v154 = OUTLINED_FUNCTION_7_27();
LABEL_100:
            testFldeq(v154, v155, v156, v157);
            OUTLINED_FUNCTION_80_4();
            if (v210)
            {
              goto LABEL_26;
            }

LABEL_101:
            v211 = v70;
            v212 = advance_tok(a1);
            v33 = v211;
            v60 = v211;
            if (v212)
            {
              goto LABEL_26;
            }
          }

          else
          {
            v203 = OUTLINED_FUNCTION_30_14();
            bspush_ca_scan(v203, v204);
LABEL_97:
            OUTLINED_FUNCTION_3_28();
            test_string_s();
            OUTLINED_FUNCTION_70_5();
            if (v205)
            {
              goto LABEL_26;
            }

LABEL_98:
            OUTLINED_FUNCTION_46_7(*(a1 + 4586) - 50);
            *(a1 + 4594) = v206 - 100;
            v33 = v207;
          }
        }

        else
        {
          v198 = OUTLINED_FUNCTION_30_14();
          bspush_ca_scan(v198, v199);
LABEL_94:
          OUTLINED_FUNCTION_3_28();
          test_string_s();
          OUTLINED_FUNCTION_81_4();
          if (v200)
          {
            goto LABEL_26;
          }

LABEL_95:
          OUTLINED_FUNCTION_46_7(*(a1 + 4586) + 300);
          *(a1 + 4594) = v201 + 100;
          v33 = v202;
        }
      }

      else
      {
        v194 = OUTLINED_FUNCTION_25_18();
        bspush_ca_scan(v194, v195);
LABEL_91:
        OUTLINED_FUNCTION_3_28();
        test_string_s();
        OUTLINED_FUNCTION_65_5();
        if (v196)
        {
          goto LABEL_26;
        }

LABEL_92:
        OUTLINED_FUNCTION_46_7(*(a1 + 4586) + 700);
        OUTLINED_FUNCTION_91_2(v197 + 200);
      }

LABEL_111:
      v219 = OUTLINED_FUNCTION_30_14();
      starttest(v219, v220);
      v221 = OUTLINED_FUNCTION_5_27();
      if (!lpta_loadp_setscan_r(v221, v222))
      {
        v257 = OUTLINED_FUNCTION_30_14();
        bspush_ca_scan(v257, v258);
        v125 = OUTLINED_FUNCTION_4_27();
        v128 = 21;
LABEL_127:
        testFldeq(v125, v126, v127, v128);
        OUTLINED_FUNCTION_78_5();
        if (!v259)
        {
LABEL_128:
          if (OUTLINED_FUNCTION_96_2())
          {
            goto LABEL_20;
          }

          v142 = *(a1 + 4590) + 200;
          goto LABEL_137;
        }

        goto LABEL_26;
      }

LABEL_112:
      v223 = OUTLINED_FUNCTION_30_14();
      starttest(v223, v224);
      v225 = OUTLINED_FUNCTION_5_27();
      if (lpta_loadp_setscan_r(v225, v226))
      {
LABEL_113:
        v227 = OUTLINED_FUNCTION_30_14();
        starttest(v227, v228);
        v229 = OUTLINED_FUNCTION_5_27();
        if (!lpta_loadp_setscan_r(v229, v230))
        {
          v265 = OUTLINED_FUNCTION_4_27();
          if (testFldeq(v265, v266, v267, 37) || advance_tok(a1))
          {
            goto LABEL_20;
          }

          *(a1 + 4582) += 50;
          v142 = *(a1 + 4590) - 200;
          goto LABEL_137;
        }

LABEL_114:
        v231 = OUTLINED_FUNCTION_27_16();
        starttest(v231, v232);
        v233 = OUTLINED_FUNCTION_5_27();
        if (lpta_loadp_setscan_r(v233, v234))
        {
LABEL_115:
          v235 = OUTLINED_FUNCTION_30_14();
          starttest(v235, v236);
          v237 = OUTLINED_FUNCTION_5_27();
          if (!lpta_loadp_setscan_r(v237, v238))
          {
            v271 = OUTLINED_FUNCTION_30_14();
            bspush_ca_scan(v271, v272);
            v148 = OUTLINED_FUNCTION_7_27();
LABEL_143:
            testFldeq(v148, v149, v150, v151);
            OUTLINED_FUNCTION_86_3();
            if (!v273)
            {
LABEL_144:
              if (OUTLINED_FUNCTION_95_2())
              {
                goto LABEL_20;
              }

              v274 = OUTLINED_FUNCTION_30_14();
              bspush_ca_scan(v274, v275);
              v109 = OUTLINED_FUNCTION_4_27();
              v112 = 28;
LABEL_53:
              v113 = testFldeq(v109, v110, v111, v112);
              v73 = v33;
              v60 = v33;
              if (!v113)
              {
LABEL_54:
                v33 = v73;
                if (advance_tok(a1))
                {
                  goto LABEL_20;
                }

                goto LABEL_125;
              }
            }

            goto LABEL_26;
          }

LABEL_116:
          v239 = OUTLINED_FUNCTION_30_14();
          starttest(v239, v240);
          v241 = OUTLINED_FUNCTION_5_27();
          if (!lpta_loadp_setscan_r(v241, v242))
          {
            v276 = OUTLINED_FUNCTION_30_14();
            bspush_ca_scan(v276, v277);
            v114 = OUTLINED_FUNCTION_7_27();
LABEL_57:
            v118 = testFldeq(v114, v115, v116, v117);
            v74 = v33;
            v60 = v33;
            if (!v118)
            {
LABEL_58:
              v119 = v74;
              v120 = advance_tok(a1);
              v33 = v119;
              v60 = v119;
              if (v120)
              {
                goto LABEL_26;
              }

              goto LABEL_155;
            }

LABEL_26:
            v68 = *(a1 + 104);
            if (v68)
            {
              v69 = OUTLINED_FUNCTION_26_18(v68);
            }

            else
            {
              v69 = vback(a1, v60);
              v33 = 0;
            }

            v55 = v33;
            v70 = v33;
            v71 = v33;
            v72 = v33;
            v73 = v33;
            v74 = v33;
            v75 = v33;
            v76 = v33;
            switch(v69)
            {
              case 1:
                continue;
              case 2:
                v51 = v33;
                goto LABEL_17;
              case 3:
                v77 = OUTLINED_FUNCTION_17_22();
                bspush_ca_scan(v77, v78);
                v79 = OUTLINED_FUNCTION_4_27();
                v82 = 9;
                goto LABEL_43;
              case 4:
                goto LABEL_18;
              case 5:
                v79 = OUTLINED_FUNCTION_4_27();
                v82 = 10;
LABEL_43:
                v102 = testFldeq(v79, v80, v81, v82);
                v60 = v33;
                if (!v102)
                {
                  goto LABEL_44;
                }

                goto LABEL_26;
              case 6:
LABEL_44:
                advance_tok(a1);
                OUTLINED_FUNCTION_69_5();
                if (!v103)
                {
                  goto LABEL_18;
                }

                goto LABEL_26;
              case 7:
                goto LABEL_19;
              case 8:
                bspop_boa(a1);
                OUTLINED_FUNCTION_58_6();
                if (!v30)
                {
                  goto LABEL_26;
                }

                OUTLINED_FUNCTION_63_5(350);
                continue;
              case 9:
                goto LABEL_22;
              case 10:
                v39 = v33;
                goto LABEL_76;
              case 11:
                goto LABEL_11;
              case 12:
                goto LABEL_111;
              case 13:
                goto LABEL_77;
              case 14:
                goto LABEL_91;
              case 15:
                goto LABEL_92;
              case 16:
                goto LABEL_78;
              case 17:
                goto LABEL_94;
              case 18:
                goto LABEL_95;
              case 19:
                goto LABEL_79;
              case 20:
                goto LABEL_97;
              case 21:
                goto LABEL_98;
              case 22:
                goto LABEL_80;
              case 23:
                v154 = OUTLINED_FUNCTION_2_29();
                goto LABEL_100;
              case 24:
                goto LABEL_101;
              case 25:
                goto LABEL_81;
              case 26:
                v133 = OUTLINED_FUNCTION_1_29();
                goto LABEL_104;
              case 27:
                goto LABEL_105;
              case 28:
                goto LABEL_83;
              case 29:
                goto LABEL_85;
              case 30:
                goto LABEL_86;
              case 31:
                goto LABEL_112;
              case 32:
                v125 = OUTLINED_FUNCTION_4_27();
                v128 = 17;
                goto LABEL_127;
              case 33:
                goto LABEL_128;
              case 34:
                goto LABEL_155;
              case 35:
                goto LABEL_113;
              case 36:
                v121 = OUTLINED_FUNCTION_4_27();
                v124 = 23;
                goto LABEL_131;
              case 37:
                goto LABEL_132;
              case 38:
                goto LABEL_114;
              case 39:
                goto LABEL_115;
              case 40:
                v152 = OUTLINED_FUNCTION_30_14();
                bspush_ca_scan(v152, v153);
                v129 = OUTLINED_FUNCTION_4_27();
                v132 = 26;
                goto LABEL_139;
              case 41:
                goto LABEL_140;
              case 42:
                v129 = OUTLINED_FUNCTION_4_27();
                v132 = 30;
                goto LABEL_139;
              case 43:
                goto LABEL_116;
              case 44:
                v148 = OUTLINED_FUNCTION_2_29();
                goto LABEL_143;
              case 45:
                goto LABEL_144;
              case 46:
                v109 = OUTLINED_FUNCTION_4_27();
                v112 = 23;
                goto LABEL_53;
              case 47:
                goto LABEL_54;
              case 48:
                goto LABEL_117;
              case 49:
                v114 = OUTLINED_FUNCTION_2_29();
                goto LABEL_57;
              case 50:
                goto LABEL_58;
              case 51:
                goto LABEL_118;
              case 52:
                v137 = OUTLINED_FUNCTION_1_29();
                goto LABEL_65;
              case 53:
                goto LABEL_66;
              case 54:
                goto LABEL_120;
              case 55:
                goto LABEL_122;
              case 56:
                goto LABEL_123;
              case 57:
                v143 = OUTLINED_FUNCTION_4_27();
                v146 = 20;
                goto LABEL_69;
              case 58:
                goto LABEL_70;
              case 59:
                goto LABEL_158;
              case 60:
                goto LABEL_156;
              case 61:
                bspop_boa(a1);
                OUTLINED_FUNCTION_58_6();
                if (!v30)
                {
                  goto LABEL_26;
                }

                v89 = OUTLINED_FUNCTION_30_14();
                starttest_l(v89, v90);
                v91 = OUTLINED_FUNCTION_5_27();
                if (lpta_loadp_setscan_r(v91, v92))
                {
                  goto LABEL_35;
                }

                v104 = OUTLINED_FUNCTION_4_27();
                v107 = testFldeq(v104, v105, v106, 37);
                v60 = v33;
                if (!v107)
                {
                  v108 = advance_tok(a1);
                  v60 = v33;
                  if (!v108)
                  {
                    goto LABEL_158;
                  }
                }

                goto LABEL_26;
              case 62:
LABEL_35:
                OUTLINED_FUNCTION_51_6();
                v93 = OUTLINED_FUNCTION_30_14();
                starttest(v93, v94);
                v95 = OUTLINED_FUNCTION_5_27();
                if (lpta_loadp_setscan_r(v95, v96))
                {
                  goto LABEL_158;
                }

                v97 = OUTLINED_FUNCTION_30_14();
                bspush_ca_scan(v97, v98);
                v85 = OUTLINED_FUNCTION_4_27();
                v88 = 28;
LABEL_38:
                v99 = testFldeq(v85, v86, v87, v88);
                v60 = v33;
                if (v99)
                {
                  goto LABEL_26;
                }

LABEL_39:
                v100 = advance_tok(a1);
                v60 = v33;
                if (v100)
                {
                  goto LABEL_26;
                }

                v101 = *(a1 + 4586);
                v60 = v33;
                if (v101 > 999)
                {
                  goto LABEL_26;
                }

                *(a1 + 4586) = v101 + 300;
                break;
              case 63:
                v83 = OUTLINED_FUNCTION_30_14();
                bspush_ca_scan(v83, v84);
                v85 = OUTLINED_FUNCTION_4_27();
                v88 = 35;
                goto LABEL_38;
              case 64:
                goto LABEL_39;
              case 65:
                v85 = OUTLINED_FUNCTION_4_27();
                v88 = 23;
                goto LABEL_38;
              default:
                goto LABEL_3;
            }

            goto LABEL_158;
          }

LABEL_117:
          v243 = OUTLINED_FUNCTION_30_14();
          starttest(v243, v244);
          v245 = OUTLINED_FUNCTION_5_27();
          if (!lpta_loadp_setscan_r(v245, v246))
          {
            v279 = OUTLINED_FUNCTION_30_14();
            bspush_ca_scan(v279, v280);
            v137 = OUTLINED_FUNCTION_0_31();
LABEL_65:
            v141 = testFldeq(v137, v138, v139, v140);
            v75 = v33;
            v60 = v33;
            if (!v141)
            {
LABEL_66:
              v33 = v75;
              if (advance_tok(a1))
              {
                goto LABEL_20;
              }

              v142 = *(a1 + 4590) + 170;
              goto LABEL_137;
            }

            goto LABEL_26;
          }

LABEL_118:
          v247 = OUTLINED_FUNCTION_5_27();
          if (lpta_loadp_setscan_r(v247, v248) || (OUTLINED_FUNCTION_3_28(), test_string_s()))
          {
LABEL_120:
            v249 = OUTLINED_FUNCTION_5_27();
            if (lpta_loadp_setscan_r(v249, v250) || (OUTLINED_FUNCTION_3_28(), test_string_s()))
            {
LABEL_122:
              v251 = OUTLINED_FUNCTION_30_14();
              starttest(v251, v252);
              v253 = OUTLINED_FUNCTION_5_27();
              if (lpta_loadp_setscan_r(v253, v254))
              {
LABEL_123:
                v255 = OUTLINED_FUNCTION_5_27();
                if (!lpta_loadp_setscan_r(v255, v256))
                {
                  OUTLINED_FUNCTION_3_28();
                  if (!test_string_s())
                  {
LABEL_125:
                    OUTLINED_FUNCTION_61_6();
LABEL_137:
                    *(a1 + 4590) = v142;
                  }
                }

LABEL_155:
                v284 = OUTLINED_FUNCTION_30_14();
                starttest(v284, v285);
                v286 = OUTLINED_FUNCTION_5_27();
                if (lpta_loadp_setscan_r(v286, v287))
                {
LABEL_158:
                  vretproc(a1);
                  result = 0;
                  goto LABEL_4;
                }

LABEL_156:
                v288 = OUTLINED_FUNCTION_30_14();
                if (!test_synch(v288, v289, 1u, v290))
                {
                  OUTLINED_FUNCTION_30_14();
                  bspush_ca_scan_boa();
                  OUTLINED_FUNCTION_3_28();
                  v67 = test_string_s();
LABEL_23:
                  if (v67)
                  {
                    v60 = v33;
                  }

                  else
                  {
                    v60 = 1;
                  }

                  goto LABEL_26;
                }

                goto LABEL_20;
              }

              v281 = OUTLINED_FUNCTION_30_14();
              bspush_ca_scan(v281, v282);
              v143 = OUTLINED_FUNCTION_4_27();
              v146 = 16;
LABEL_69:
              v147 = testFldeq(v143, v144, v145, v146);
              v76 = v33;
              v60 = v33;
              if (!v147)
              {
LABEL_70:
                v33 = v76;
                if (advance_tok(a1))
                {
                  goto LABEL_20;
                }

                OUTLINED_FUNCTION_52_6();
                goto LABEL_137;
              }

              goto LABEL_26;
            }

            OUTLINED_FUNCTION_43_7(*(a1 + 4590) + 250);
            v264 = v283 - 150;
          }

          else
          {
            OUTLINED_FUNCTION_60_6();
            v264 = -2;
          }
        }

        else
        {
          v268 = OUTLINED_FUNCTION_30_14();
          bspush_ca_scan(v268, v269);
          v129 = OUTLINED_FUNCTION_4_27();
          v132 = 25;
LABEL_139:
          testFldeq(v129, v130, v131, v132);
          OUTLINED_FUNCTION_76_5();
          if (v270)
          {
            goto LABEL_26;
          }

LABEL_140:
          v33 = v72;
          if (advance_tok(a1))
          {
            goto LABEL_20;
          }

          *(a1 + 4586) -= 50;
          OUTLINED_FUNCTION_71_5();
        }
      }

      else
      {
        v260 = OUTLINED_FUNCTION_30_14();
        bspush_ca_scan(v260, v261);
        v121 = OUTLINED_FUNCTION_4_27();
        v124 = 28;
LABEL_131:
        testFldeq(v121, v122, v123, v124);
        OUTLINED_FUNCTION_87_3();
        if (v262)
        {
          goto LABEL_26;
        }

LABEL_132:
        v33 = v71;
        if (advance_tok(a1))
        {
          goto LABEL_20;
        }

        OUTLINED_FUNCTION_40_8();
        v264 = v263 + 100;
      }

      break;
    }

    *(a1 + 4598) = v264;
    goto LABEL_155;
  }

LABEL_3:
  vretproc(a1);
  result = 94;
LABEL_4:
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t por_ph_i_nas(uint64_t a1)
{
  OUTLINED_FUNCTION_32_13(*MEMORY[0x277D85DE8], v37);
  OUTLINED_FUNCTION_21_19(v3, v4, v5, v6, v7, v8, v9, v10, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92);
  v11 = setjmp(v1);
  if (!v11 && !OUTLINED_FUNCTION_9_27(v11, v12, v13, v14, v15, v16, v17, v18, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, *v85, v85[4], *v87, *&v87[4], v87[6], v89, SWORD2(v89), SBYTE6(v89), SHIBYTE(v89), v91, v93))
  {
    fence_27(a1);
    *(a1 + 4578) = 350;
    *(a1 + 4586) = 2100;
    *(a1 + 4594) = 2600;
    if (!*(a1 + 962))
    {
      *(a1 + 4590) = 2500;
      *(a1 + 4598) = 2900;
    }

LABEL_7:
    v21 = OUTLINED_FUNCTION_6_27();
    if (!lpta_loadp_setscan_l(v21, v22))
    {
      OUTLINED_FUNCTION_3_28();
      if (!test_string_s())
      {
        OUTLINED_FUNCTION_89_3();
        OUTLINED_FUNCTION_46_7(v23);
        *(a1 + 4594) = v24 - 450;
      }
    }

    while (1)
    {
      starttest(a1, 3);
      v25 = OUTLINED_FUNCTION_5_27();
      if (lpta_loadp_setscan_r(v25, v26))
      {
        goto LABEL_21;
      }

      v27 = OUTLINED_FUNCTION_8_27();
      if (!testFldeq(v27, v28, v29, 4) && !advance_tok(a1))
      {
        break;
      }

      v30 = *(a1 + 104);
      if (v30)
      {
        v31 = OUTLINED_FUNCTION_45_7(v30);
      }

      else
      {
        v32 = OUTLINED_FUNCTION_56_6();
        v31 = vback(v32, v33);
      }

      if (v31 != 2)
      {
        if (v31 == 1)
        {
          goto LABEL_7;
        }

        if (v31 != 3)
        {
          goto LABEL_3;
        }

LABEL_21:
        OUTLINED_FUNCTION_74_5();
        *(a1 + 4378) = v36;
        *(a1 + 4382) = 2 * *(a1 + 4290);
        OUTLINED_FUNCTION_75_5();
        vretproc(a1);
        result = 0;
        goto LABEL_4;
      }
    }

    OUTLINED_FUNCTION_52_6();
    OUTLINED_FUNCTION_43_7(v34);
    *(a1 + 4598) = v35 - 300;
    goto LABEL_21;
  }

LABEL_3:
  vretproc(a1);
  result = 94;
LABEL_4:
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t por_ph_e_nas(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v18[0] = 0;
  v18[1] = 0;
  v17[0] = 0;
  v17[1] = 0;
  OUTLINED_FUNCTION_42_7();
  bzero(v16, v2);
  OUTLINED_FUNCTION_41_7();
  bzero(v22, v3);
  if (!setjmp(v22) && !ventproc(a1, v16, v21, v20, v19, v22))
  {
    push_ptr_init(a1, v18);
    push_ptr_init(a1, v17);
    fence_27(a1);
    *(a1 + 4578) = 480;
    *(a1 + 4582) = 300;
    *(a1 + 4586) = 1850;
    *(a1 + 4590) = 2250;
    *(a1 + 4594) = 2450;
    OUTLINED_FUNCTION_90_3(2650);
    v6 = OUTLINED_FUNCTION_12_26();
    starttest(v6, v7);
    OUTLINED_FUNCTION_55_6();
    if (!v8)
    {
      goto LABEL_8;
    }

    v9 = OUTLINED_FUNCTION_6_27();
    if (lpta_loadp_setscan_l(v9, v10))
    {
      goto LABEL_8;
    }

    while (2)
    {
      savescptr(a1, 2, v17);
LABEL_10:
      if (!test_synch(a1, 3, 1u, &unk_2806BBF2D) && !lpta_loadp_setscan_r(a1, v17) && !advance_tok(a1))
      {
        bspush_ca_scan(a1, 4);
LABEL_14:
        savescptr(a1, 5, v18);
LABEL_15:
        if (!test_synch(a1, 6, 1u, &unk_2806BBF2D))
        {
          starttest(a1, 7);
          if (lpta_loadp_setscan_r(a1, v18))
          {
LABEL_25:
            v15 = -1;
          }

          else
          {
            if (testFldeq(a1, 4u, 1, 1) || advance_tok(a1))
            {
              goto LABEL_19;
            }

            v15 = -2;
          }

          *(a1 + 4578) = 350;
          *(a1 + 4582) = -1;
          *(a1 + 4590) = v15;
          *(a1 + 4598) = v15;
LABEL_8:
          vretproc(a1);
          result = 0;
          goto LABEL_4;
        }
      }

LABEL_19:
      v11 = *(a1 + 104);
      if (v11)
      {
        v12 = OUTLINED_FUNCTION_45_7(v11);
      }

      else
      {
        v13 = OUTLINED_FUNCTION_56_6();
        v12 = vback(v13, v14);
      }

      switch(v12)
      {
        case 1:
          goto LABEL_8;
        case 2:
          continue;
        case 3:
          goto LABEL_10;
        case 4:
          if (!advance_tok(a1))
          {
            goto LABEL_14;
          }

          goto LABEL_19;
        case 5:
          goto LABEL_14;
        case 6:
          goto LABEL_15;
        case 7:
          goto LABEL_25;
        default:
          goto LABEL_3;
      }
    }
  }

LABEL_3:
  vretproc(a1);
  result = 94;
LABEL_4:
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t por_ph_a_nas(uint64_t a1)
{
  OUTLINED_FUNCTION_32_13(*MEMORY[0x277D85DE8], v172);
  OUTLINED_FUNCTION_21_19(v3, v4, v5, v6, v7, v8, v9, v10, v173, v175, v177, v179, v181, v183, v185, v187, v189, v191, v193, v195, v197, v199, v201, v203, v205, v207, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227);
  v11 = setjmp(v1);
  if (!v11 && !OUTLINED_FUNCTION_9_27(v11, v12, v13, v14, v15, v16, v17, v18, v174, v176, v178, v180, v182, v184, v186, v188, v190, v192, v194, v196, v198, v200, v202, v204, v206, v208, v210, v212, v214, v216, v218, *v220, v220[4], *v222, *&v222[4], v222[6], v224, SWORD2(v224), SBYTE6(v224), SHIBYTE(v224), v226, v228))
  {
    fence_27(a1);
    *(a1 + 4578) = 570;
    OUTLINED_FUNCTION_53_6(1380);
    OUTLINED_FUNCTION_62_5(2400);
    v21 = OUTLINED_FUNCTION_12_26();
    starttest(v21, v22);
    v23 = OUTLINED_FUNCTION_6_27();
    if (lpta_loadp_setscan_l(v23, v24))
    {
LABEL_6:
      v25 = OUTLINED_FUNCTION_15_24();
      starttest(v25, v26);
      v27 = OUTLINED_FUNCTION_6_27();
      if (lpta_loadp_setscan_l(v27, v28))
      {
LABEL_15:
        v38 = OUTLINED_FUNCTION_23_19();
        starttest(v38, v39);
        v40 = OUTLINED_FUNCTION_6_27();
        if (lpta_loadp_setscan_l(v40, v41))
        {
LABEL_16:
          v42 = OUTLINED_FUNCTION_25_18();
          starttest(v42, v43);
          v44 = OUTLINED_FUNCTION_6_27();
          if (lpta_loadp_setscan_l(v44, v45))
          {
LABEL_17:
            v46 = OUTLINED_FUNCTION_30_14();
            starttest(v46, v47);
            v48 = OUTLINED_FUNCTION_6_27();
            if (lpta_loadp_setscan_l(v48, v49))
            {
              goto LABEL_27;
            }

            v50 = OUTLINED_FUNCTION_30_14();
            bspush_ca_scan(v50, v51);
            v52 = OUTLINED_FUNCTION_7_27();
LABEL_57:
            if (testFldeq(v52, v53, v54, v55))
            {
              goto LABEL_81;
            }

LABEL_58:
            if (advance_tok(a1))
            {
              goto LABEL_81;
            }

            v35 = -200;
          }

          else
          {
            v62 = OUTLINED_FUNCTION_22_19();
            bspush_ca_scan(v62, v63);
LABEL_24:
            OUTLINED_FUNCTION_3_28();
            if (test_string_s())
            {
              goto LABEL_81;
            }

LABEL_25:
            v35 = -150;
          }
        }

        else
        {
          v56 = OUTLINED_FUNCTION_30_14();
          bspush_ca_scan(v56, v57);
          v58 = OUTLINED_FUNCTION_0_31();
LABEL_20:
          if (testFldeq(v58, v59, v60, v61))
          {
            goto LABEL_81;
          }

LABEL_21:
          if (advance_tok(a1))
          {
            goto LABEL_81;
          }

          v35 = 120;
        }
      }

      else
      {
        v29 = OUTLINED_FUNCTION_30_14();
        bspush_ca_scan(v29, v30);
        v31 = OUTLINED_FUNCTION_4_27();
        v34 = 11;
LABEL_8:
        if (testFldeq(v31, v32, v33, v34))
        {
          goto LABEL_81;
        }

LABEL_9:
        if (advance_tok(a1))
        {
          goto LABEL_81;
        }

        v35 = 50;
      }
    }

    else
    {
      v36 = OUTLINED_FUNCTION_13_26();
      bspush_ca_scan(v36, v37);
LABEL_12:
      OUTLINED_FUNCTION_29_15();
LABEL_13:
      if (test_string_s())
      {
        goto LABEL_81;
      }

      v35 = 150;
    }

    while (2)
    {
      *(a1 + 4586) += v35;
LABEL_27:
      v64 = OUTLINED_FUNCTION_30_14();
      starttest(v64, v65);
      v66 = OUTLINED_FUNCTION_10_27();
      if (lpta_loadp_setscan_r(v66, v67))
      {
LABEL_28:
        v68 = OUTLINED_FUNCTION_30_14();
        starttest(v68, v69);
        v70 = OUTLINED_FUNCTION_10_27();
        if (!lpta_loadp_setscan_r(v70, v71))
        {
          v110 = OUTLINED_FUNCTION_30_14();
          bspush_ca_scan(v110, v111);
          v112 = OUTLINED_FUNCTION_4_27();
          v115 = 11;
LABEL_44:
          if (testFldeq(v112, v113, v114, v115))
          {
            goto LABEL_81;
          }

LABEL_45:
          if (!advance_tok(a1))
          {
            v107 = 50;
            goto LABEL_62;
          }

          goto LABEL_81;
        }

LABEL_29:
        v72 = OUTLINED_FUNCTION_30_14();
        starttest(v72, v73);
        v74 = OUTLINED_FUNCTION_10_27();
        if (!lpta_loadp_setscan_r(v74, v75))
        {
          v116 = OUTLINED_FUNCTION_30_14();
          bspush_ca_scan(v116, v117);
          v118 = OUTLINED_FUNCTION_0_31();
LABEL_73:
          if (testFldeq(v118, v119, v120, v121))
          {
            goto LABEL_81;
          }

LABEL_74:
          if (!advance_tok(a1))
          {
LABEL_61:
            v107 = 100;
            goto LABEL_62;
          }

LABEL_81:
          v156 = *(a1 + 104);
          if (v156)
          {
            v157 = OUTLINED_FUNCTION_45_7(v156);
          }

          else
          {
            v158 = OUTLINED_FUNCTION_56_6();
            v157 = vback(v158, v159);
          }

          v35 = 150;
          v107 = 100;
          switch(v157)
          {
            case 1:
              goto LABEL_6;
            case 2:
              v160 = OUTLINED_FUNCTION_35_11();
              bspush_ca_scan(v160, v161);
              goto LABEL_13;
            case 3:
              continue;
            case 4:
              v164 = OUTLINED_FUNCTION_17_22();
              bspush_ca_scan(v164, v165);
              goto LABEL_12;
            case 5:
              v162 = OUTLINED_FUNCTION_14_24();
              bspush_ca_scan(v162, v163);
              goto LABEL_12;
            case 6:
              goto LABEL_12;
            case 7:
              goto LABEL_27;
            case 8:
              goto LABEL_15;
            case 9:
              v31 = OUTLINED_FUNCTION_4_27();
              v34 = 12;
              goto LABEL_8;
            case 10:
              goto LABEL_9;
            case 11:
              goto LABEL_16;
            case 12:
              v58 = OUTLINED_FUNCTION_1_29();
              goto LABEL_20;
            case 13:
              goto LABEL_21;
            case 14:
              goto LABEL_17;
            case 15:
              goto LABEL_24;
            case 16:
              goto LABEL_25;
            case 17:
              v52 = OUTLINED_FUNCTION_2_29();
              goto LABEL_57;
            case 18:
              goto LABEL_58;
            case 19:
              goto LABEL_28;
            case 20:
              v166 = OUTLINED_FUNCTION_24_19();
              bspush_ca_scan(v166, v167);
              goto LABEL_60;
            case 21:
            case 41:
              goto LABEL_62;
            case 22:
            case 23:
            case 39:
              goto LABEL_42;
            case 24:
            case 40:
              goto LABEL_60;
            case 25:
              goto LABEL_63;
            case 26:
              goto LABEL_29;
            case 27:
              v112 = OUTLINED_FUNCTION_4_27();
              v115 = 12;
              goto LABEL_44;
            case 28:
              goto LABEL_45;
            case 29:
              break;
            case 30:
              goto LABEL_86;
            case 31:
              goto LABEL_74;
            case 32:
              goto LABEL_31;
            case 33:
              goto LABEL_76;
            case 34:
              goto LABEL_77;
            case 35:
              goto LABEL_32;
            case 36:
              goto LABEL_33;
            case 37:
              goto LABEL_34;
            case 38:
              goto LABEL_78;
            case 42:
              goto LABEL_36;
            case 43:
              v136 = OUTLINED_FUNCTION_4_27();
              v139 = 28;
              goto LABEL_80;
            case 44:
              goto LABEL_99;
            case 45:
              goto LABEL_38;
            case 46:
              goto LABEL_98;
            case 47:
              goto LABEL_66;
            case 48:
              goto LABEL_67;
            case 49:
              goto LABEL_95;
            case 50:
              goto LABEL_68;
            default:
              goto LABEL_3;
          }
        }

        v76 = OUTLINED_FUNCTION_30_14();
        starttest(v76, v77);
        v78 = OUTLINED_FUNCTION_10_27();
        if (!lpta_loadp_setscan_r(v78, v79))
        {
          v122 = OUTLINED_FUNCTION_30_14();
          bspush_ca_scan(v122, v123);
LABEL_76:
          OUTLINED_FUNCTION_3_28();
          if (test_string_s())
          {
            goto LABEL_81;
          }

LABEL_77:
          v107 = -150;
          goto LABEL_62;
        }

LABEL_31:
        v80 = OUTLINED_FUNCTION_30_14();
        starttest(v80, v81);
        v82 = OUTLINED_FUNCTION_10_27();
        if (!lpta_loadp_setscan_r(v82, v83))
        {
          v124 = OUTLINED_FUNCTION_7_27();
          if (testFldeq(v124, v125, v126, v127) || advance_tok(a1))
          {
            goto LABEL_81;
          }

          v107 = -200;
          goto LABEL_62;
        }

LABEL_32:
        v84 = OUTLINED_FUNCTION_30_14();
        starttest(v84, v85);
        v86 = OUTLINED_FUNCTION_10_27();
        if (!lpta_loadp_setscan_r(v86, v87))
        {
          v128 = OUTLINED_FUNCTION_2_29();
          if (testFldeq(v128, v129, v130, v131) || advance_tok(a1))
          {
            goto LABEL_81;
          }

          v107 = -100;
          goto LABEL_62;
        }

LABEL_33:
        v88 = OUTLINED_FUNCTION_30_14();
        starttest(v88, v89);
        v90 = OUTLINED_FUNCTION_10_27();
        if (lpta_loadp_setscan_r(v90, v91))
        {
LABEL_34:
          v92 = OUTLINED_FUNCTION_30_14();
          starttest(v92, v93);
          v94 = OUTLINED_FUNCTION_10_27();
          if (!lpta_loadp_setscan_r(v94, v95))
          {
            OUTLINED_FUNCTION_3_28();
            if (!test_string_s())
            {
              v134 = OUTLINED_FUNCTION_30_14();
              bspush_ca_scan(v134, v135);
              v136 = OUTLINED_FUNCTION_4_27();
              v139 = 23;
LABEL_80:
              if (testFldeq(v136, v137, v138, v139))
              {
                goto LABEL_81;
              }

LABEL_99:
              if (!advance_tok(a1))
              {
                v107 = 150;
                goto LABEL_62;
              }

              goto LABEL_81;
            }
          }

LABEL_36:
          v96 = OUTLINED_FUNCTION_30_14();
          starttest(v96, v97);
          v98 = OUTLINED_FUNCTION_10_27();
          if (lpta_loadp_setscan_r(v98, v99) || (OUTLINED_FUNCTION_3_28(), test_string_s()))
          {
LABEL_38:
            v100 = OUTLINED_FUNCTION_16_23();
            starttest(v100, v101);
            v102 = OUTLINED_FUNCTION_10_27();
            if (lpta_loadp_setscan_r(v102, v103))
            {
LABEL_63:
              OUTLINED_FUNCTION_55_6();
              if (!v140)
              {
                goto LABEL_98;
              }

              *(a1 + 4578) -= 40;
              if (*(a1 + 3400) > 20.0)
              {
                goto LABEL_98;
              }

LABEL_66:
              v141 = OUTLINED_FUNCTION_30_14();
              starttest(v141, v142);
              v143 = OUTLINED_FUNCTION_10_27();
              if (lpta_loadp_setscan_r(v143, v144))
              {
LABEL_67:
                v145 = OUTLINED_FUNCTION_30_14();
                starttest(v145, v146);
                v147 = OUTLINED_FUNCTION_10_27();
                if (lpta_loadp_setscan_r(v147, v148))
                {
LABEL_95:
                  OUTLINED_FUNCTION_93_2();
                  if (v169 == v170)
                  {
                    v171 = *(a1 + 4590);
                    if (v171 >= 1)
                    {
                      OUTLINED_FUNCTION_39_9(vcvtd_n_f64_u32(v171 + v168, 1uLL) + 150.0);
                    }
                  }

                  goto LABEL_98;
                }

LABEL_68:
                v149 = OUTLINED_FUNCTION_30_14();
                if (!test_synch(v149, v150, 1u, v151))
                {
LABEL_98:
                  vretproc(a1);
                  result = 0;
                  goto LABEL_4;
                }
              }

              else
              {
                v152 = OUTLINED_FUNCTION_3_28();
                if (!testFldeq(v152, v153, v154, 2) && !advance_tok(a1))
                {
                  OUTLINED_FUNCTION_51_6();
                  *(a1 + 4598) = v155;
                  goto LABEL_98;
                }
              }

              goto LABEL_81;
            }

            v104 = OUTLINED_FUNCTION_4_27();
            if (testFldeq(v104, v105, v106, 40) || advance_tok(a1))
            {
              goto LABEL_81;
            }

            v107 = -50;
LABEL_62:
            *(a1 + 4590) += v107;
            goto LABEL_63;
          }

LABEL_86:
          v118 = OUTLINED_FUNCTION_1_29();
          goto LABEL_73;
        }

        v132 = OUTLINED_FUNCTION_30_14();
        bspush_ca_scan(v132, v133);
LABEL_78:
        OUTLINED_FUNCTION_3_28();
        if (test_string_s())
        {
          goto LABEL_81;
        }
      }

      break;
    }

LABEL_42:
    v108 = OUTLINED_FUNCTION_30_14();
    bspush_ca_scan(v108, v109);
LABEL_60:
    OUTLINED_FUNCTION_3_28();
    if (test_string_s())
    {
      goto LABEL_81;
    }

    goto LABEL_61;
  }

LABEL_3:
  vretproc(a1);
  result = 94;
LABEL_4:
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t por_ph_o_nas(uint64_t a1)
{
  OUTLINED_FUNCTION_32_13(*MEMORY[0x277D85DE8], v182);
  OUTLINED_FUNCTION_21_19(v3, v4, v5, v6, v7, v8, v9, v10, v183, v185, v187, v189, v191, v193, v195, v197, v199, v201, v203, v205, v207, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235, v237);
  v11 = setjmp(v1);
  if (!v11 && !OUTLINED_FUNCTION_9_27(v11, v12, v13, v14, v15, v16, v17, v18, v184, v186, v188, v190, v192, v194, v196, v198, v200, v202, v204, v206, v208, v210, v212, v214, v216, v218, v220, v222, v224, v226, v228, *v230, v230[4], *v232, *&v232[4], v232[6], v234, SWORD2(v234), SBYTE6(v234), SHIBYTE(v234), v236, v238))
  {
    fence_27(a1);
    *(a1 + 4578) = 480;
    *(a1 + 4582) = 325;
    *(a1 + 4586) = 900;
    *(a1 + 4590) = 745;
    *(a1 + 4594) = 2200;
    *(a1 + 4598) = 2800;
    *(a1 + 4602) = 3500;
    *(a1 + 4606) = 3400;
    v21 = OUTLINED_FUNCTION_12_26();
    starttest(v21, v22);
    v23 = OUTLINED_FUNCTION_6_27();
    if (lpta_loadp_setscan_l(v23, v24))
    {
      v1 = 0;
LABEL_7:
      v25 = OUTLINED_FUNCTION_17_22();
      starttest(v25, v26);
      v27 = OUTLINED_FUNCTION_6_27();
      if (lpta_loadp_setscan_l(v27, v28))
      {
LABEL_8:
        v29 = OUTLINED_FUNCTION_15_24();
        starttest(v29, v30);
        v31 = OUTLINED_FUNCTION_6_27();
        if (lpta_loadp_setscan_l(v31, v32))
        {
LABEL_9:
          v33 = OUTLINED_FUNCTION_35_11();
          starttest(v33, v34);
          v35 = OUTLINED_FUNCTION_34_12();
          if (!lpta_loadp_setscan_l(v35, v36))
          {
            v63 = OUTLINED_FUNCTION_8_27();
            if (testFldeq(v63, v64, v65, 2) || advance_tok(a1))
            {
              v43 = v1;
              goto LABEL_64;
            }

            OUTLINED_FUNCTION_59_6();
          }
        }

        else
        {
          v46 = OUTLINED_FUNCTION_30_14();
          bspush_ca_scan(v46, v47);
          OUTLINED_FUNCTION_3_28();
          test_string_s();
          OUTLINED_FUNCTION_81_4();
          if (v49)
          {
            goto LABEL_64;
          }

LABEL_15:
          v1 = v48;
          v50 = OUTLINED_FUNCTION_23_19();
          starttest(v50, v51);
          v52 = OUTLINED_FUNCTION_6_27();
          if (lpta_loadp_setscan_l(v52, v53) || advance_tok(a1))
          {
LABEL_17:
            v54 = OUTLINED_FUNCTION_22_19();
            starttest(v54, v55);
            v56 = OUTLINED_FUNCTION_6_27();
            if (lpta_loadp_setscan_l(v56, v57) || advance_tok(a1))
            {
LABEL_19:
              v58 = OUTLINED_FUNCTION_25_18();
              starttest(v58, v59);
              v60 = OUTLINED_FUNCTION_6_27();
              if (!lpta_loadp_setscan_l(v60, v61))
              {
                OUTLINED_FUNCTION_30_14();
                bspush_ca_scan_boa();
LABEL_21:
                v62 = 19;
                goto LABEL_56;
              }
            }

            else
            {
              v70 = OUTLINED_FUNCTION_30_14();
              bspush_ca_scan(v70, v71);
              v72 = OUTLINED_FUNCTION_1_29();
              testFldeq(v72, v73, v74, v75);
              OUTLINED_FUNCTION_80_4();
              if (v77)
              {
                goto LABEL_64;
              }

LABEL_29:
              v1 = v76;
              if (advance_tok(a1))
              {
                goto LABEL_40;
              }

              OUTLINED_FUNCTION_66_5(*(a1 + 4586) + 30);
LABEL_33:
              *(a1 + 4594) = v78;
            }
          }

          else
          {
            v79 = OUTLINED_FUNCTION_30_14();
            bspush_ca_scan(v79, v80);
            OUTLINED_FUNCTION_3_28();
            test_string_s();
            OUTLINED_FUNCTION_70_5();
            if (v81)
            {
              goto LABEL_64;
            }

LABEL_32:
            OUTLINED_FUNCTION_66_5(*(a1 + 4586) + 130);
            *(a1 + 4594) = v82;
            v1 = v83;
          }
        }
      }

      else
      {
        v37 = OUTLINED_FUNCTION_14_24();
        bspush_ca_scan(v37, v38);
        v39 = OUTLINED_FUNCTION_0_31();
        testFldeq(v39, v40, v41, v42);
        OUTLINED_FUNCTION_69_5();
        if (v45)
        {
          goto LABEL_64;
        }

LABEL_12:
        v1 = v44;
        if (advance_tok(a1))
        {
          goto LABEL_40;
        }

        OUTLINED_FUNCTION_48_7();
      }
    }

    else
    {
      v66 = OUTLINED_FUNCTION_13_26();
      bspush_ca_scan(v66, v67);
      OUTLINED_FUNCTION_3_28();
      v68 = test_string_s();
      v43 = 0;
      if (v68)
      {
        goto LABEL_64;
      }

LABEL_26:
      OUTLINED_FUNCTION_46_7(*(a1 + 4586) + 300);
      OUTLINED_FUNCTION_91_2(v69 + 50);
    }

LABEL_34:
    v84 = OUTLINED_FUNCTION_30_14();
    starttest(v84, v85);
    v86 = OUTLINED_FUNCTION_10_27();
    if (!lpta_loadp_setscan_r(v86, v87))
    {
      v107 = OUTLINED_FUNCTION_30_14();
      bspush_ca_scan(v107, v108);
      OUTLINED_FUNCTION_3_28();
      v109 = test_string_s();
      v43 = v1;
      if (!v109)
      {
LABEL_42:
        OUTLINED_FUNCTION_51_6();
LABEL_96:
        *(a1 + 4598) = v110;
        goto LABEL_97;
      }

      goto LABEL_64;
    }

LABEL_35:
    v88 = OUTLINED_FUNCTION_30_14();
    starttest(v88, v89);
    v90 = OUTLINED_FUNCTION_10_27();
    if (!lpta_loadp_setscan_r(v90, v91))
    {
      v111 = OUTLINED_FUNCTION_30_14();
      bspush_ca_scan(v111, v112);
      OUTLINED_FUNCTION_3_28();
      v113 = test_string_s();
      v43 = v1;
      if (!v113)
      {
LABEL_44:
        OUTLINED_FUNCTION_43_7(*(a1 + 4590) + 300);
        v110 = v114 + 50;
        goto LABEL_96;
      }

      goto LABEL_64;
    }

LABEL_36:
    v92 = OUTLINED_FUNCTION_30_14();
    starttest(v92, v93);
    v94 = OUTLINED_FUNCTION_10_27();
    if (lpta_loadp_setscan_r(v94, v95))
    {
LABEL_37:
      v96 = OUTLINED_FUNCTION_30_14();
      starttest(v96, v97);
      v98 = OUTLINED_FUNCTION_10_27();
      if (lpta_loadp_setscan_r(v98, v99))
      {
LABEL_38:
        v100 = OUTLINED_FUNCTION_30_14();
        starttest(v100, v101);
        v102 = OUTLINED_FUNCTION_10_27();
        if (!lpta_loadp_setscan_r(v102, v103))
        {
          v104 = OUTLINED_FUNCTION_8_27();
          if (testFldeq(v104, v105, v106, 2))
          {
LABEL_40:
            v43 = v1;
            goto LABEL_64;
          }

          v142 = advance_tok(a1);
          v43 = v1;
          if (!v142)
          {
            OUTLINED_FUNCTION_52_6();
            goto LABEL_61;
          }

          goto LABEL_64;
        }

LABEL_97:
        vretproc(a1);
        result = 0;
        goto LABEL_4;
      }

      v126 = OUTLINED_FUNCTION_30_14();
      bspush_ca_scan(v126, v127);
      OUTLINED_FUNCTION_3_28();
      test_string_s();
      OUTLINED_FUNCTION_79_5();
      if (v129)
      {
        goto LABEL_64;
      }

LABEL_49:
      v1 = v128;
      v130 = OUTLINED_FUNCTION_30_14();
      starttest(v130, v131);
      v132 = OUTLINED_FUNCTION_10_27();
      if (lpta_loadp_setscan_r(v132, v133) || advance_tok(a1))
      {
LABEL_51:
        v134 = OUTLINED_FUNCTION_30_14();
        starttest(v134, v135);
        v136 = OUTLINED_FUNCTION_10_27();
        if (lpta_loadp_setscan_r(v136, v137) || advance_tok(a1))
        {
LABEL_53:
          v138 = OUTLINED_FUNCTION_27_16();
          starttest(v138, v139);
          v140 = OUTLINED_FUNCTION_10_27();
          if (lpta_loadp_setscan_r(v140, v141))
          {
            goto LABEL_97;
          }

          OUTLINED_FUNCTION_30_14();
          bspush_ca_scan_boa();
LABEL_55:
          v62 = 44;
LABEL_56:
          if (test_synch(a1, v62, 1u, &unk_2806BBF2D))
          {
            v43 = v1;
          }

          else
          {
            v43 = 1;
          }

          goto LABEL_64;
        }

        v143 = OUTLINED_FUNCTION_30_14();
        bspush_ca_scan(v143, v144);
        v145 = OUTLINED_FUNCTION_1_29();
        testFldeq(v145, v146, v147, v148);
        OUTLINED_FUNCTION_78_5();
        if (v149)
        {
          goto LABEL_64;
        }

LABEL_63:
        v150 = OUTLINED_FUNCTION_96_2();
        v43 = v1;
        if (v150)
        {
LABEL_64:
          v1 = v43;
          do
          {
            while (2)
            {
              v151 = *(a1 + 104);
              if (v151)
              {
                v152 = OUTLINED_FUNCTION_26_18(v151);
              }

              else
              {
                v152 = vback(a1, v1);
                v1 = 0;
              }

              v44 = v1;
              v48 = v1;
              v76 = v1;
              v121 = v1;
              v128 = v1;
              switch(v152)
              {
                case 1:
                  goto LABEL_7;
                case 2:
                  OUTLINED_FUNCTION_3_28();
                  if (!test_string_s())
                  {
                    goto LABEL_26;
                  }

                  continue;
                case 3:
                  goto LABEL_26;
                case 4:
                case 14:
                  goto LABEL_34;
                case 5:
                  goto LABEL_8;
                case 6:
                  v157 = OUTLINED_FUNCTION_1_29();
                  v161 = testFldeq(v157, v158, v159, v160);
                  v44 = v1;
                  if (!v161)
                  {
                    goto LABEL_12;
                  }

                  continue;
                case 7:
                  goto LABEL_12;
                case 8:
                  goto LABEL_9;
                case 9:
                  OUTLINED_FUNCTION_3_28();
                  v156 = test_string_s();
                  v48 = v1;
                  if (!v156)
                  {
                    goto LABEL_15;
                  }

                  continue;
                case 10:
                  goto LABEL_15;
                case 11:
                  goto LABEL_17;
                case 12:
                  OUTLINED_FUNCTION_3_28();
                  if (!test_string_s())
                  {
                    goto LABEL_32;
                  }

                  continue;
                case 13:
                  goto LABEL_32;
                case 15:
                  goto LABEL_19;
                case 16:
                  v171 = OUTLINED_FUNCTION_0_31();
                  v175 = testFldeq(v171, v172, v173, v174);
                  v76 = v1;
                  if (!v175)
                  {
                    goto LABEL_29;
                  }

                  continue;
                case 17:
                  goto LABEL_29;
                case 18:
                  bspop_boa(a1);
                  v78 = -2;
                  *(a1 + 4586) = -2;
                  goto LABEL_33;
                case 19:
                  goto LABEL_21;
                case 20:
                  goto LABEL_35;
                case 21:
                case 23:
                  v154 = OUTLINED_FUNCTION_30_14();
                  bspush_ca_scan(v154, v155);
                  break;
                case 22:
                  goto LABEL_42;
                case 24:
                  v176 = OUTLINED_FUNCTION_16_23();
                  bspush_ca_scan(v176, v177);
                  break;
                case 25:
                  goto LABEL_89;
                case 26:
                case 39:
                  goto LABEL_97;
                case 27:
                  goto LABEL_36;
                case 28:
                  OUTLINED_FUNCTION_3_28();
                  if (!test_string_s())
                  {
                    goto LABEL_44;
                  }

                  continue;
                case 29:
                  goto LABEL_44;
                case 30:
                  goto LABEL_37;
                case 31:
                  v162 = OUTLINED_FUNCTION_1_29();
                  v166 = testFldeq(v162, v163, v164, v165);
                  v121 = v1;
                  if (!v166)
                  {
                    goto LABEL_46;
                  }

                  continue;
                case 32:
                  goto LABEL_46;
                case 33:
                  goto LABEL_38;
                case 34:
                  OUTLINED_FUNCTION_3_28();
                  v153 = test_string_s();
                  v128 = v1;
                  if (!v153)
                  {
                    goto LABEL_49;
                  }

                  continue;
                case 35:
                  goto LABEL_49;
                case 36:
                  goto LABEL_51;
                case 37:
                  OUTLINED_FUNCTION_3_28();
                  if (!test_string_s())
                  {
                    goto LABEL_92;
                  }

                  continue;
                case 38:
                  goto LABEL_92;
                case 40:
                  goto LABEL_53;
                case 41:
                  v167 = OUTLINED_FUNCTION_0_31();
                  if (!testFldeq(v167, v168, v169, v170))
                  {
                    goto LABEL_63;
                  }

                  continue;
                case 42:
                  goto LABEL_63;
                case 43:
                  bspop_boa(a1);
                  v178 = -1;
                  goto LABEL_95;
                case 44:
                  goto LABEL_55;
                default:
                  goto LABEL_3;
              }

              break;
            }

LABEL_89:
            OUTLINED_FUNCTION_3_28();
          }

          while (test_string_s());
          goto LABEL_42;
        }

        OUTLINED_FUNCTION_61_6();
      }

      else
      {
        v179 = OUTLINED_FUNCTION_30_14();
        bspush_ca_scan(v179, v180);
        OUTLINED_FUNCTION_3_28();
        v181 = test_string_s();
        v43 = v1;
        if (v181)
        {
          goto LABEL_64;
        }

LABEL_92:
        v178 = *(a1 + 4590) + 120;
      }

LABEL_95:
      *(a1 + 4590) = v178;
      v110 = -2;
      goto LABEL_96;
    }

    v115 = OUTLINED_FUNCTION_30_14();
    bspush_ca_scan(v115, v116);
    v117 = OUTLINED_FUNCTION_0_31();
    testFldeq(v117, v118, v119, v120);
    OUTLINED_FUNCTION_76_5();
    if (!v122)
    {
LABEL_46:
      v123 = v121;
      v124 = advance_tok(a1);
      v43 = v123;
      if (!v124)
      {
        v125 = *(a1 + 4590) + 200;
LABEL_61:
        *(a1 + 4590) = v125;
        goto LABEL_97;
      }
    }

    goto LABEL_64;
  }

LABEL_3:
  vretproc(a1);
  result = 94;
LABEL_4:
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t por_ph_u_nas(uint64_t a1)
{
  v120 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_42_7();
  bzero(v115, v2);
  OUTLINED_FUNCTION_41_7();
  bzero(v119, v3);
  if (setjmp(v119) || ventproc(a1, v115, v118, v117, v116, v119))
  {
LABEL_3:
    vretproc(a1);
    result = 94;
    goto LABEL_4;
  }

  fence_27(a1);
  *(a1 + 4578) = 300;
  *(a1 + 4582) = 200;
  *(a1 + 4586) = 700;
  *(a1 + 4590) = 1150;
  *(a1 + 4594) = 2300;
  *(a1 + 4598) = 2700;
  *(a1 + 4602) = 3300;
  *(a1 + 4606) = 3300;
  if (*(a1 + 746) < 0)
  {
    *(a1 + 4586) = 1150;
    v7 = 2500;
  }

  else
  {
LABEL_6:
    if (*(a1 + 950))
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_46_7(*(a1 + 4586) + 100);
    v7 = v6 + 200;
  }

  *(a1 + 4594) = v7;
LABEL_10:
  while (2)
  {
    starttest(a1, 3);
    v8 = OUTLINED_FUNCTION_34_12();
    if (!lpta_loadp_setscan_l(v8, v9))
    {
      bspush_ca_scan(a1, 4);
      OUTLINED_FUNCTION_37_11();
LABEL_16:
      if (test_string_s())
      {
        goto LABEL_41;
      }

LABEL_17:
      OUTLINED_FUNCTION_46_7(*(a1 + 4586) + 200);
      v13 = v14 + 100;
      goto LABEL_78;
    }

LABEL_11:
    starttest(a1, 7);
    v10 = OUTLINED_FUNCTION_34_12();
    if (!lpta_loadp_setscan_l(v10, v11))
    {
      bspush_ca_scan(a1, 8);
      OUTLINED_FUNCTION_37_11();
LABEL_13:
      if (test_string_s())
      {
        goto LABEL_41;
      }

LABEL_14:
      OUTLINED_FUNCTION_46_7(*(a1 + 4586) + 500);
      v13 = v12 + 200;
      goto LABEL_78;
    }

LABEL_46:
    starttest(a1, 10);
    v64 = OUTLINED_FUNCTION_34_12();
    if (!lpta_loadp_setscan_l(v64, v65))
    {
      bspush_ca_scan(a1, 11);
      OUTLINED_FUNCTION_37_11();
LABEL_54:
      if (test_string_s())
      {
        goto LABEL_41;
      }

LABEL_55:
      v13 = *(a1 + 4594) + 400;
LABEL_78:
      *(a1 + 4594) = v13;
      goto LABEL_18;
    }

LABEL_47:
    starttest(a1, 13);
    v66 = OUTLINED_FUNCTION_34_12();
    if (!lpta_loadp_setscan_l(v66, v67))
    {
      bspush_ca_scan(a1, 14);
      v80 = OUTLINED_FUNCTION_28_15();
      v83 = 1;
LABEL_72:
      if (testFldeq(v80, v81, v82, v83))
      {
        goto LABEL_41;
      }

LABEL_73:
      if (advance_tok(a1))
      {
        goto LABEL_41;
      }

      goto LABEL_18;
    }

LABEL_48:
    starttest(a1, 16);
    v68 = OUTLINED_FUNCTION_34_12();
    if (!lpta_loadp_setscan_l(v68, v69))
    {
      bspush_ca_scan(a1, 17);
      v84 = OUTLINED_FUNCTION_28_15();
      v87 = 3;
LABEL_66:
      if (testFldeq(v84, v85, v86, v87))
      {
        goto LABEL_41;
      }

LABEL_67:
      if (advance_tok(a1))
      {
        goto LABEL_41;
      }

      OUTLINED_FUNCTION_46_7(*(a1 + 4586) + 150);
      v13 = v88 - 150;
      goto LABEL_78;
    }

LABEL_49:
    starttest(a1, 19);
    v70 = OUTLINED_FUNCTION_34_12();
    if (!lpta_loadp_setscan_l(v70, v71))
    {
      bspush_ca_scan(a1, 20);
      OUTLINED_FUNCTION_37_11();
LABEL_76:
      if (test_string_s())
      {
        goto LABEL_41;
      }

LABEL_77:
      *(a1 + 4578) += 50;
      OUTLINED_FUNCTION_59_6();
      v13 = -2;
      goto LABEL_78;
    }

LABEL_50:
    starttest(a1, 22);
    v72 = OUTLINED_FUNCTION_34_12();
    if (!lpta_loadp_setscan_l(v72, v73))
    {
      v102 = OUTLINED_FUNCTION_33_13();
      if (testFldeq(v102, 4u, v103, 20) || advance_tok(a1))
      {
        goto LABEL_41;
      }

      v95 = *(a1 + 4586) + 250;
LABEL_112:
      *(a1 + 4586) = v95;
      goto LABEL_18;
    }

LABEL_51:
    starttest(a1, 6);
    v74 = OUTLINED_FUNCTION_34_12();
    if (!lpta_loadp_setscan_l(v74, v75))
    {
      bspush_ca_scan(a1, 23);
      v76 = OUTLINED_FUNCTION_28_15();
      v79 = 2;
LABEL_82:
      if (testFldeq(v76, v77, v78, v79))
      {
        goto LABEL_41;
      }

LABEL_83:
      if (advance_tok(a1))
      {
        goto LABEL_41;
      }

      v95 = *(a1 + 4586) + 80;
      goto LABEL_112;
    }

LABEL_18:
    v15 = OUTLINED_FUNCTION_18_21();
    if (!lpta_loadp_setscan_l(v15, v16))
    {
      OUTLINED_FUNCTION_37_11();
      if (!test_string_s())
      {
        v114 = 850;
        goto LABEL_115;
      }
    }

LABEL_20:
    starttest(a1, 28);
    v17 = OUTLINED_FUNCTION_18_21();
    if (!lpta_loadp_setscan_r(v17, v18))
    {
      v37 = OUTLINED_FUNCTION_28_15();
      if (!testFldeq(v37, v38, v39, 4) && !advance_tok(a1))
      {
        OUTLINED_FUNCTION_71_5();
        *(a1 + 4598) = v104;
LABEL_114:
        OUTLINED_FUNCTION_52_6();
        goto LABEL_115;
      }

      goto LABEL_41;
    }

LABEL_21:
    starttest(a1, 29);
    v19 = OUTLINED_FUNCTION_18_21();
    if (!lpta_loadp_setscan_r(v19, v20))
    {
      bspush_ca_scan(a1, 30);
      v40 = OUTLINED_FUNCTION_33_13();
      v42 = 4;
      v43 = 28;
LABEL_33:
      if (testFldeq(v40, v42, v41, v43))
      {
        goto LABEL_41;
      }

LABEL_34:
      if (!advance_tok(a1))
      {
        OUTLINED_FUNCTION_40_8();
        v113 = v112 + 100;
        goto LABEL_117;
      }

      goto LABEL_41;
    }

LABEL_22:
    starttest(a1, 34);
    v21 = OUTLINED_FUNCTION_18_21();
    if (!lpta_loadp_setscan_r(v21, v22))
    {
      bspush_ca_scan(a1, 35);
      v44 = OUTLINED_FUNCTION_33_13();
      v46 = 4;
      v47 = 25;
LABEL_90:
      if (testFldeq(v44, v46, v45, v47))
      {
        goto LABEL_41;
      }

LABEL_91:
      if (!advance_tok(a1))
      {
        *(a1 + 4586) -= 50;
        OUTLINED_FUNCTION_71_5();
        goto LABEL_117;
      }

      goto LABEL_41;
    }

LABEL_23:
    starttest(a1, 38);
    v23 = OUTLINED_FUNCTION_18_21();
    if (!lpta_loadp_setscan_r(v23, v24))
    {
      bspush_ca_scan(a1, 39);
      v48 = OUTLINED_FUNCTION_28_15();
      v51 = 1;
LABEL_102:
      if (testFldeq(v48, v49, v50, v51))
      {
        goto LABEL_41;
      }

LABEL_103:
      if (advance_tok(a1))
      {
        goto LABEL_41;
      }

      bspush_ca_scan(a1, 41);
      v98 = OUTLINED_FUNCTION_33_13();
      v99 = 4;
      v101 = 28;
LABEL_98:
      if (testFldeq(v98, v99, v100, v101))
      {
        goto LABEL_41;
      }

LABEL_99:
      if (!advance_tok(a1))
      {
        goto LABEL_127;
      }

      goto LABEL_41;
    }

LABEL_24:
    starttest(a1, 43);
    v25 = OUTLINED_FUNCTION_18_21();
    if (!lpta_loadp_setscan_r(v25, v26))
    {
      bspush_ca_scan(a1, 44);
      v52 = OUTLINED_FUNCTION_28_15();
      v55 = 1;
LABEL_106:
      if (!testFldeq(v52, v53, v54, v55))
      {
LABEL_107:
        if (!advance_tok(a1))
        {
          goto LABEL_122;
        }
      }

      goto LABEL_41;
    }

LABEL_25:
    starttest(a1, 46);
    v27 = OUTLINED_FUNCTION_18_21();
    if (lpta_loadp_setscan_r(v27, v28))
    {
LABEL_26:
      starttest(a1, 49);
      v29 = OUTLINED_FUNCTION_18_21();
      if (lpta_loadp_setscan_r(v29, v30))
      {
LABEL_27:
        starttest(a1, 52);
        v31 = OUTLINED_FUNCTION_18_21();
        if (!lpta_loadp_setscan_r(v31, v32))
        {
          bspush_ca_scan(a1, 53);
          v33 = OUTLINED_FUNCTION_28_15();
          v36 = 2;
LABEL_94:
          if (!testFldeq(v33, v34, v35, v36))
          {
LABEL_95:
            if (!advance_tok(a1))
            {
              goto LABEL_114;
            }
          }

          goto LABEL_41;
        }

LABEL_118:
        v105 = OUTLINED_FUNCTION_10_27();
        if (lpta_loadp_setscan_r(v105, v106) || (OUTLINED_FUNCTION_3_28(), test_string_s()))
        {
LABEL_120:
          v107 = OUTLINED_FUNCTION_10_27();
          if (lpta_loadp_setscan_l(v107, v108))
          {
            goto LABEL_122;
          }

          OUTLINED_FUNCTION_3_28();
          if (test_string_s())
          {
            goto LABEL_122;
          }

          v114 = *(a1 + 4590) - 300;
          goto LABEL_115;
        }

LABEL_127:
        OUTLINED_FUNCTION_61_6();
        goto LABEL_115;
      }

      bspush_ca_scan(a1, 50);
      OUTLINED_FUNCTION_37_11();
LABEL_61:
      if (test_string_s())
      {
        goto LABEL_41;
      }

LABEL_116:
      OUTLINED_FUNCTION_60_6();
      v113 = -2;
LABEL_117:
      *(a1 + 4598) = v113;
      goto LABEL_122;
    }

    bspush_ca_scan(a1, 47);
    v56 = OUTLINED_FUNCTION_28_15();
    v59 = 3;
LABEL_86:
    if (testFldeq(v56, v57, v58, v59))
    {
      goto LABEL_41;
    }

LABEL_87:
    if (advance_tok(a1))
    {
LABEL_41:
      v60 = *(a1 + 104);
      if (v60)
      {
        v61 = OUTLINED_FUNCTION_45_7(v60);
      }

      else
      {
        v62 = OUTLINED_FUNCTION_56_6();
        v61 = vback(v62, v63);
      }

      switch(v61)
      {
        case 1:
          goto LABEL_6;
        case 2:
          continue;
        case 3:
          goto LABEL_11;
        case 4:
          OUTLINED_FUNCTION_3_28();
          goto LABEL_16;
        case 5:
          goto LABEL_17;
        case 6:
          goto LABEL_18;
        case 7:
          goto LABEL_46;
        case 8:
          OUTLINED_FUNCTION_3_28();
          goto LABEL_13;
        case 9:
          goto LABEL_14;
        case 10:
          goto LABEL_47;
        case 11:
          OUTLINED_FUNCTION_3_28();
          goto LABEL_54;
        case 12:
          goto LABEL_55;
        case 13:
          goto LABEL_48;
        case 14:
          v80 = OUTLINED_FUNCTION_2_29();
          goto LABEL_72;
        case 15:
          goto LABEL_73;
        case 16:
          goto LABEL_49;
        case 17:
          v84 = OUTLINED_FUNCTION_1_29();
          goto LABEL_66;
        case 18:
          goto LABEL_67;
        case 19:
          goto LABEL_50;
        case 20:
          OUTLINED_FUNCTION_3_28();
          goto LABEL_76;
        case 21:
          goto LABEL_77;
        case 22:
          goto LABEL_51;
        case 23:
          v93 = OUTLINED_FUNCTION_16_23();
          bspush_ca_scan(v93, v94);
          v76 = OUTLINED_FUNCTION_4_27();
          v79 = 20;
          goto LABEL_82;
        case 24:
          goto LABEL_83;
        case 25:
          v76 = OUTLINED_FUNCTION_4_27();
          v79 = 32;
          goto LABEL_82;
        case 26:
          goto LABEL_20;
        case 27:
          goto LABEL_122;
        case 28:
          goto LABEL_21;
        case 29:
          goto LABEL_22;
        case 30:
          v91 = OUTLINED_FUNCTION_30_14();
          bspush_ca_scan(v91, v92);
          v40 = OUTLINED_FUNCTION_4_27();
          v43 = 23;
          goto LABEL_33;
        case 31:
          goto LABEL_34;
        case 32:
          v89 = OUTLINED_FUNCTION_30_14();
          bspush_ca_scan(v89, v90);
          v40 = OUTLINED_FUNCTION_4_27();
          v43 = 21;
          goto LABEL_33;
        case 33:
          v40 = OUTLINED_FUNCTION_4_27();
          v43 = 17;
          goto LABEL_33;
        case 34:
          goto LABEL_23;
        case 35:
          v96 = OUTLINED_FUNCTION_30_14();
          bspush_ca_scan(v96, v97);
          v44 = OUTLINED_FUNCTION_4_27();
          v47 = 30;
          goto LABEL_90;
        case 36:
          goto LABEL_91;
        case 37:
          v44 = OUTLINED_FUNCTION_4_27();
          v47 = 26;
          goto LABEL_90;
        case 38:
          goto LABEL_24;
        case 39:
          v48 = OUTLINED_FUNCTION_2_29();
          goto LABEL_102;
        case 40:
          goto LABEL_103;
        case 41:
          v98 = OUTLINED_FUNCTION_4_27();
          v101 = 23;
          goto LABEL_98;
        case 42:
          goto LABEL_99;
        case 43:
          goto LABEL_25;
        case 44:
          v52 = OUTLINED_FUNCTION_2_29();
          goto LABEL_106;
        case 45:
          goto LABEL_107;
        case 46:
          goto LABEL_26;
        case 47:
          v56 = OUTLINED_FUNCTION_1_29();
          goto LABEL_86;
        case 48:
          goto LABEL_87;
        case 49:
          goto LABEL_27;
        case 50:
          OUTLINED_FUNCTION_3_28();
          goto LABEL_61;
        case 51:
          goto LABEL_116;
        case 52:
          goto LABEL_118;
        case 53:
          v33 = OUTLINED_FUNCTION_4_27();
          v36 = 20;
          goto LABEL_94;
        case 54:
          goto LABEL_95;
        case 55:
          goto LABEL_120;
        case 56:
          goto LABEL_125;
        default:
          goto LABEL_3;
      }
    }

    break;
  }

  v114 = *(a1 + 4590) + 170;
LABEL_115:
  *(a1 + 4590) = v114;
LABEL_122:
  OUTLINED_FUNCTION_55_6();
  if (v109)
  {
    OUTLINED_FUNCTION_74_5();
    v110 = (5 * *(a1 + 4294));
    *(a1 + 4378) = 2 * *(a1 + 4286);
    OUTLINED_FUNCTION_73_5(v110);
    *(a1 + 4386) = v111;
  }

LABEL_125:
  vretproc(a1);
  result = 0;
LABEL_4:
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t por_ph_W(_WORD *a1)
{
  OUTLINED_FUNCTION_32_13(*MEMORY[0x277D85DE8], v23);
  OUTLINED_FUNCTION_21_19(v3, v4, v5, v6, v7, v8, v9, v10, v24, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_9_27(v11, v12, v13, v14, v15, v16, v17, v18, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, *v71, v71[4], *v73, *&v73[4], v73[6], v75, SWORD2(v75), SBYTE6(v75), SHIBYTE(v75), v77, v79))
  {
    v19 = 94;
  }

  else
  {
    fence_27(a1);
    v19 = 0;
    a1[2289] = 380;
    a1[2293] = 850;
    a1[2297] = 2300;
    OUTLINED_FUNCTION_67_5();
    OUTLINED_FUNCTION_75_5();
    a1[2189] = 2 * a1[2143];
    OUTLINED_FUNCTION_73_5((7 * a1[2145]));
    a1[2191] = v22;
  }

  vretproc(a1);
  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

uint64_t por_ph_Y(uint64_t a1)
{
  OUTLINED_FUNCTION_32_13(*MEMORY[0x277D85DE8], v42);
  OUTLINED_FUNCTION_21_19(v3, v4, v5, v6, v7, v8, v9, v10, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_9_27(v11, v12, v13, v14, v15, v16, v17, v18, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, *v90, v90[4], *v92, *&v92[4], v92[6], v94, SWORD2(v94), SBYTE6(v94), SHIBYTE(v94), v96, v98))
  {
    goto LABEL_3;
  }

  fence_27(a1);
  *(a1 + 4578) = 300;
  v21 = OUTLINED_FUNCTION_12_26();
  starttest_l(v21, v22);
  v23 = OUTLINED_FUNCTION_5_27();
  if (lpta_loadp_setscan_r(v23, v24))
  {
    goto LABEL_6;
  }

  v35 = OUTLINED_FUNCTION_8_27();
  if (!testFldeq(v35, v36, v37, 5) && !advance_tok(a1))
  {
    *(a1 + 4578) = 250;
LABEL_6:
    por_high_pal_Fv(a1);
LABEL_7:
    OUTLINED_FUNCTION_75_5();
    OUTLINED_FUNCTION_74_5();
    *(a1 + 4382) = 2 * *(a1 + 4290);
    *(a1 + 4722) = 4;
    if (!if_testeq_v_i(a1, (a1 + 4720), 1, v25, v26, v27, v28, v29))
    {
      *(a1 + 4722) = 5;
      if (!if_testgt_v_i(a1, (a1 + 4720), 30, v30, v31, v32, v33, v34))
      {
        *(a1 + 4414) = *(a1 + 4410);
      }
    }

    goto LABEL_18;
  }

  v38 = *(a1 + 104);
  if (v38)
  {
    v39 = OUTLINED_FUNCTION_45_7(v38);
  }

  else
  {
    v40 = OUTLINED_FUNCTION_56_6();
    v39 = vback(v40, v41);
  }

  switch(v39)
  {
    case 1:
      goto LABEL_6;
    case 2:
      goto LABEL_7;
    case 3:
LABEL_18:
      vretproc(a1);
      result = 0;
      goto LABEL_4;
  }

LABEL_3:
  vretproc(a1);
  result = 94;
LABEL_4:
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t por_ph_M(uint64_t a1)
{
  OUTLINED_FUNCTION_32_13(*MEMORY[0x277D85DE8], v66);
  OUTLINED_FUNCTION_21_19(v3, v4, v5, v6, v7, v8, v9, v10, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121);
  v11 = setjmp(v1);
  if (!v11 && !OUTLINED_FUNCTION_9_27(v11, v12, v13, v14, v15, v16, v17, v18, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, *v114, v114[4], *v116, *&v116[4], v116[6], v118, SWORD2(v118), SBYTE6(v118), SHIBYTE(v118), v120, v122))
  {
    fence_27(a1);
    v21 = OUTLINED_FUNCTION_12_26();
    starttest(v21, v22);
    v23 = OUTLINED_FUNCTION_5_27();
    if (lpta_loadp_setscan_r(v23, v24))
    {
      v25 = 0;
LABEL_11:
      OUTLINED_FUNCTION_67_5();
      OUTLINED_FUNCTION_53_6(65534);
      *(a1 + 4594) = v28;
      *(a1 + 4414) = *(a1 + 4410) + 150;
      *(a1 + 4378) = 3 * *(a1 + 4286);
      v29 = OUTLINED_FUNCTION_30_14();
      starttest_l(v29, v30);
      v31 = OUTLINED_FUNCTION_5_27();
      if (lpta_loadp_setscan_r(v31, v32))
      {
        v1 = v25;
LABEL_13:
        v33 = OUTLINED_FUNCTION_47_7(4);
        if (if_testeq_v_i(v33, v34, 1, v35, v36, v37, v38, v39))
        {
          goto LABEL_32;
        }

        v40 = OUTLINED_FUNCTION_47_7(5);
        if (!if_testgt_v_i(v40, v41, 30, v42, v43, v44, v45, v46))
        {
          v58 = *(a1 + 4410);
          goto LABEL_31;
        }

LABEL_15:
        v47 = OUTLINED_FUNCTION_17_22();
        starttest(v47, v48);
        v49 = OUTLINED_FUNCTION_6_27();
        if (lpta_loadp_setscan_l(v49, v50))
        {
LABEL_32:
          vretproc(a1);
          result = 0;
          goto LABEL_4;
        }

        v51 = OUTLINED_FUNCTION_1_29();
        if (!testFldeq(v51, v52, v53, v54))
        {
          v55 = OUTLINED_FUNCTION_8_27();
          if (!testFldeq(v55, v56, v57, 5) && !advance_tok(a1))
          {
            v58 = *(a1 + 4414) - 50;
LABEL_31:
            *(a1 + 4414) = v58;
            goto LABEL_32;
          }
        }
      }

      else
      {
        OUTLINED_FUNCTION_35_11();
        bspush_ca_scan_boa();
        v59 = OUTLINED_FUNCTION_33_13();
        if (testFldeq(v59, v1, v60, 18))
        {
          v1 = v25;
        }

        else
        {
          v1 = 1;
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_13_26();
      bspush_ca_scan_boa();
      v1 = 0;
      v26 = OUTLINED_FUNCTION_29_15();
      if (!testFldeq(v26, v27, 3, 0))
      {
        v1 = !advance_tok(a1);
      }
    }

    v61 = v1;
    while (2)
    {
      v62 = *(a1 + 104);
      if (v62)
      {
        v63 = OUTLINED_FUNCTION_26_18(v62);
      }

      else
      {
        v63 = vback(a1, v61);
        v1 = 0;
      }

      switch(v63)
      {
        case 1:
          goto LABEL_10;
        case 2:
          bspop_boa(a1);
          *(a1 + 4578) = 300;
LABEL_10:
          v25 = v1;
          goto LABEL_11;
        case 3:
          goto LABEL_13;
        case 4:
          bspop_boa(a1);
          v64 = advance_tok(a1);
          v61 = v1;
          if (v64)
          {
            continue;
          }

          OUTLINED_FUNCTION_73_5((6 * *(a1 + 4290)));
          *(a1 + 4382) = v65;
          goto LABEL_13;
        case 5:
          goto LABEL_32;
        case 6:
          goto LABEL_15;
        default:
          goto LABEL_3;
      }
    }
  }

LABEL_3:
  vretproc(a1);
  result = 94;
LABEL_4:
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t por_coarticulation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v110 = *MEMORY[0x277D85DE8];
  LODWORD(v100) = 0;
  OUTLINED_FUNCTION_38_10(a1, a2, a3, a4, a5, a6, a7, a8, v53);
  OUTLINED_FUNCTION_21_19(v10, v11, v12, v13, v14, v15, v16, v17, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108);
  v18 = setjmp(v8);
  if (v18 || OUTLINED_FUNCTION_9_27(v18, v19, v20, v21, v22, v23, v24, v25, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, *v101, v101[4], *v103, *&v103[4], v103[6], v105, SWORD2(v105), SBYTE6(v105), SHIBYTE(v105), v107, v109))
  {
LABEL_3:
    v26 = 94;
    goto LABEL_4;
  }

  fence_27(a1);
  v29 = OUTLINED_FUNCTION_12_26();
  starttest(v29, v30);
  v31 = OUTLINED_FUNCTION_6_27();
  if (!lpta_loadp_setscan_l(v31, v32))
  {
    OUTLINED_FUNCTION_3_28();
    if (!test_string_s())
    {
      v33 = OUTLINED_FUNCTION_13_26();
      bspush_ca(v33);
      if (*(a1 + 4602) < 3001)
      {
        goto LABEL_21;
      }

LABEL_8:
      if (*(a1 + 4606) < 0)
      {
        if ((*(a1 + 4602) & 0x80000000) == 0)
        {
LABEL_10:
          *(a1 + 4606) = vcvtd_n_f64_s32(*(a1 + 4602) + 3000, 1uLL);
          OUTLINED_FUNCTION_67_5();
          goto LABEL_16;
        }

        OUTLINED_FUNCTION_67_5();
      }

      else
      {
LABEL_13:
        OUTLINED_FUNCTION_67_5();
        v35 = OUTLINED_FUNCTION_12_26();
        starttest_l(v35, v36);
        v37 = OUTLINED_FUNCTION_44_7();
        c_assvar(v37, v38);
        if ((*(a1 + 4606) - *(a1 + 4602)) < 501)
        {
          goto LABEL_21;
        }

        v34 = 3500;
      }

      *(a1 + 4606) = v34;
    }
  }

LABEL_16:
  v39 = OUTLINED_FUNCTION_14_24();
  starttest(v39, v40);
  v41 = OUTLINED_FUNCTION_5_27();
  if (lpta_loadp_setscan_r(v41, v42) || (OUTLINED_FUNCTION_3_28(), test_string_s()))
  {
LABEL_30:
    v26 = 0;
  }

  else
  {
    v43 = OUTLINED_FUNCTION_30_14();
    bspush_ca(v43);
    if (*(a1 + 4606) < 3001)
    {
      goto LABEL_21;
    }

LABEL_19:
    while ((*(a1 + 4602) & 0x80000000) == 0)
    {
LABEL_20:
      *(a1 + 4606) = 3000;
      v44 = OUTLINED_FUNCTION_14_24();
      starttest_l(v44, v45);
      v46 = OUTLINED_FUNCTION_44_7();
      c_assvar(v46, v47);
      if ((*(a1 + 4602) - *(a1 + 4606)) > 500)
      {
        v26 = 0;
        *(a1 + 4602) = 3500;
        goto LABEL_4;
      }

LABEL_21:
      while (2)
      {
        v48 = *(a1 + 104);
        if (v48)
        {
          v49 = OUTLINED_FUNCTION_45_7(v48);
        }

        else
        {
          v50 = OUTLINED_FUNCTION_56_6();
          v49 = vback(v50, v51);
        }

        switch(v49)
        {
          case 1:
            goto LABEL_16;
          case 2:
            if (*(a1 + 4602) < 0)
            {
              goto LABEL_8;
            }

            continue;
          case 3:
            goto LABEL_8;
          case 4:
            if ((*(a1 + 4606) & 0x80000000) == 0)
            {
              goto LABEL_13;
            }

            goto LABEL_10;
          case 5:
            goto LABEL_13;
          case 6:
            goto LABEL_30;
          case 7:
            if ((*(a1 + 4606) & 0x80000000) == 0)
            {
              continue;
            }

            break;
          case 8:
            if ((*(a1 + 4606) & 0x80000000) == 0)
            {
              goto LABEL_19;
            }

            break;
          case 9:
            goto LABEL_19;
          case 10:
            goto LABEL_20;
          default:
            goto LABEL_3;
        }

        break;
      }

      if (*(a1 + 4602) < 0)
      {
        v26 = 0;
        OUTLINED_FUNCTION_67_5();
        goto LABEL_35;
      }
    }

    v26 = 0;
    *(a1 + 4602) = vcvtd_n_f64_s32(*(a1 + 4606) + 3000, 1uLL);
    v52 = 3000;
LABEL_35:
    *(a1 + 4606) = v52;
  }

LABEL_4:
  vretproc(a1);
  v27 = *MEMORY[0x277D85DE8];
  return v26;
}

uint64_t OUTLINED_FUNCTION_9_27(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, char a33, int a34, __int16 a35, char a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, char a42)
{

  return ventproc(v42, &a9, &a40, &a36, &a33, &a42);
}

uint64_t OUTLINED_FUNCTION_19_20()
{
  *(v0 + 136) = 1;
  *(v0 + 112) = *(v0 + 1600);
  *(v0 + 128) = 0;

  return test_ptr(v0);
}

uint64_t OUTLINED_FUNCTION_20_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, char a35, int a36, __int16 a37, char a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, char a44)
{

  return ventproc(v44, &a9, &a42, &a38, &a35, &a44);
}

void OUTLINED_FUNCTION_21_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{

  bzero(&a36, 0xC0uLL);
}

void OUTLINED_FUNCTION_32_13(uint64_t a1@<X8>, uint64_t a2)
{
  *(v2 - 40) = a1;

  bzero(&a2, 0xB8uLL);
}

void OUTLINED_FUNCTION_38_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  bzero(&a9, 0xB8uLL);
}

double OUTLINED_FUNCTION_50_6@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{

  *&result = savescptr(v25, a1, &a25).n128_u64[0];
  return result;
}

double OUTLINED_FUNCTION_72_5@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{

  *&result = savescptr(v27, a1, &a27).n128_u64[0];
  return result;
}

double OUTLINED_FUNCTION_84_3@<D0>(int a1@<W8>)
{
  result = vcvtd_n_f64_u32(v1 + a1, 1uLL);
  *(v2 + 4594) = result;
  return result;
}

void OUTLINED_FUNCTION_85_3(uint64_t a1, size_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{

  bzero(&a38, a2);
}

BOOL OUTLINED_FUNCTION_95_2()
{

  return advance_tok(v0);
}

BOOL OUTLINED_FUNCTION_96_2()
{

  return advance_tok(v0);
}

BOOL OUTLINED_FUNCTION_97_2()
{

  return advance_tok(v0);
}

void por_trans_features()
{
  OUTLINED_FUNCTION_31_15();
  v1 = v0;
  v103 = *MEMORY[0x277D85DE8];
  v98[0] = 0;
  v98[1] = 0;
  OUTLINED_FUNCTION_24_20();
  bzero(&v75, v2);
  OUTLINED_FUNCTION_23_20();
  bzero(v102, v3);
  if (!setjmp(v102) && !ventproc(v1, &v75, v101, v100, v99, v102))
  {
    push_ptr_init(v1, v98);
    fence_28(v1);
    v5 = OUTLINED_FUNCTION_14_25();
    starttest(v5, v6);
    v7 = OUTLINED_FUNCTION_3_29();
    v9 = lpta_loadp_setscan_l(v7, v8);
    v10 = 0;
    v11 = 0;
    if (v9)
    {
LABEL_5:
      v12 = v11;
      v13 = OUTLINED_FUNCTION_14_25();
      starttest(v13, v14);
      v15 = OUTLINED_FUNCTION_3_29();
      if (!lpta_loadp_setscan_l(v15, v16))
      {
LABEL_6:
        OUTLINED_FUNCTION_29_16(8, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98[0]);
        OUTLINED_FUNCTION_14_25();
        bspush_ca_scan_boa();
        v17 = OUTLINED_FUNCTION_12_27();
        if (testFldeq(v17, v18, 2, v19))
        {
          v20 = v11;
        }

        else
        {
          v20 = 1;
        }

        goto LABEL_9;
      }

LABEL_35:
      v45 = OUTLINED_FUNCTION_3_29();
      if (!lpta_loadp_setscan_l(v45, v46))
      {
        OUTLINED_FUNCTION_2_30();
        if (!test_string_s())
        {
          goto LABEL_3;
        }
      }

LABEL_37:
      v47 = OUTLINED_FUNCTION_3_29();
      if (!lpta_loadp_setscan_r(v47, v48))
      {
        OUTLINED_FUNCTION_2_30();
        if (!test_string_s())
        {
          goto LABEL_3;
        }
      }

LABEL_39:
      v49 = OUTLINED_FUNCTION_14_25();
      starttest(v49, v50);
      v51 = OUTLINED_FUNCTION_3_29();
      v53 = lpta_loadp_setscan_l(v51, v52);
      v11 = v12;
      v54 = v12;
      if (!v53)
      {
LABEL_41:
        OUTLINED_FUNCTION_29_16(14, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98[0]);
        v55 = OUTLINED_FUNCTION_14_25();
        bspush_ca_scan(v55, v56);
        v57 = OUTLINED_FUNCTION_6_28();
        v60 = testFldeq(v57, v58, v59, 4);
        v20 = v11;
        v26 = v11;
        if (!v60)
        {
LABEL_42:
          v61 = v26;
          if (advance_tok(v1) || (v62 = OUTLINED_FUNCTION_15_25(), lpta_loadp_setscan_r(v62, v63)))
          {
            v20 = v61;
          }

          else
          {
            v69 = OUTLINED_FUNCTION_14_25();
            bspush_ca_scan(v69, v70);
            v71 = OUTLINED_FUNCTION_6_28();
            v74 = testFldeq(v71, v72, v73, 4);
            v20 = v61;
            v27 = v61;
            if (!v74)
            {
LABEL_55:
              v20 = v27;
              if (!advance_tok(v1))
              {
                goto LABEL_3;
              }
            }
          }
        }

        goto LABEL_9;
      }

LABEL_40:
      v20 = v54;
      lpta_rpta_loadp(v1, (v1 + 197), (v1 + 199));
      OUTLINED_FUNCTION_12_27();
    }

    else
    {
      while (2)
      {
        v20 = v10;
        OUTLINED_FUNCTION_29_16(2, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98[0]);
        v64 = OUTLINED_FUNCTION_14_25();
        bspush_ca_scan(v64, v65);
        OUTLINED_FUNCTION_2_30();
        v66 = test_string_s();
        v25 = v20;
        if (v66)
        {
          goto LABEL_9;
        }

LABEL_47:
        v20 = v25;
        v67 = OUTLINED_FUNCTION_15_25();
        if (lpta_loadp_setscan_r(v67, v68) || (OUTLINED_FUNCTION_2_30(), test_string_s()))
        {
LABEL_9:
          v21 = v20;
LABEL_10:
          v22 = v1[13];
          if (v22)
          {
            v23 = OUTLINED_FUNCTION_27_17(v22);
            v11 = v24;
          }

          else
          {
            v23 = vback(v1, v21);
            v11 = 0;
          }

          v25 = v11;
          v26 = v11;
          v27 = v11;
          switch(v23)
          {
            case 1:
              goto LABEL_5;
            case 2:
              v10 = v11;
              continue;
            case 3:
              bspush_ca_scan(v1, 5);
              OUTLINED_FUNCTION_2_30();
              goto LABEL_21;
            case 4:
              goto LABEL_47;
            case 5:
              OUTLINED_FUNCTION_2_30();
LABEL_21:
              v37 = test_string_s();
              v25 = v11;
              v21 = v11;
              if (!v37)
              {
                goto LABEL_47;
              }

              goto LABEL_10;
            case 7:
              v12 = v11;
              goto LABEL_35;
            case 8:
              goto LABEL_6;
            case 9:
              bspop_boa(v1);
              v39 = advance_tok(v1);
              v21 = v11;
              if (!v39)
              {
                v40 = lpta_loadp_setscan_r(v1, v98);
                v21 = v11;
                if (!v40)
                {
                  OUTLINED_FUNCTION_28_16();
                  bspush_ca_scan_boa();
                  v41 = OUTLINED_FUNCTION_12_27();
                  if (testFldeq(v41, v42, 2, v43))
                  {
                    v21 = v11;
                  }

                  else
                  {
                    v21 = 1;
                  }
                }
              }

              goto LABEL_10;
            case 10:
              bspop_boa(v1);
              v38 = advance_tok(v1);
              v21 = v11;
              if (v38)
              {
                goto LABEL_10;
              }

              goto LABEL_3;
            case 11:
              v12 = v11;
              goto LABEL_37;
            case 12:
              v12 = v11;
              goto LABEL_39;
            case 13:
              v54 = v11;
              goto LABEL_40;
            case 14:
              goto LABEL_41;
            case 15:
              bspush_ca_scan(v1, 17);
              v32 = OUTLINED_FUNCTION_6_28();
              v35 = 1;
              goto LABEL_31;
            case 16:
              goto LABEL_42;
            case 17:
              v32 = OUTLINED_FUNCTION_6_28();
              v35 = 2;
LABEL_31:
              v44 = testFldeq(v32, v33, v34, v35);
              v26 = v11;
              v21 = v11;
              if (!v44)
              {
                goto LABEL_42;
              }

              goto LABEL_10;
            case 18:
              bspush_ca_scan(v1, 20);
              v28 = OUTLINED_FUNCTION_6_28();
              v31 = 1;
              goto LABEL_18;
            case 19:
              goto LABEL_55;
            case 20:
              v28 = OUTLINED_FUNCTION_6_28();
              v31 = 2;
LABEL_18:
              v36 = testFldeq(v28, v29, v30, v31);
              v27 = v11;
              v21 = v11;
              if (!v36)
              {
                goto LABEL_55;
              }

              goto LABEL_10;
            default:
              goto LABEL_3;
          }
        }

        break;
      }

      lpta_rpta_loadp(v1, (v1 + 197), (v1 + 199));
      OUTLINED_FUNCTION_12_27();
    }

    if (!mark_s())
    {
      goto LABEL_3;
    }

    goto LABEL_9;
  }

LABEL_3:
  vretproc(v1);
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_30_15();
}

void get_por_trans_dur()
{
  OUTLINED_FUNCTION_31_15();
  OUTLINED_FUNCTION_25_19();
  v70 = *MEMORY[0x277D85DE8];
  v65 = 0;
  v64[0] = 0;
  v64[1] = 0;
  v63[0] = 0;
  v63[1] = 0;
  OUTLINED_FUNCTION_24_20();
  bzero(v62, v1);
  OUTLINED_FUNCTION_23_20();
  bzero(v69, v2);
  if (setjmp(v69))
  {
    goto LABEL_3;
  }

  v3 = ventproc(v0, v62, v68, v67, v66, v69);
  if (v3)
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_19_21(v3, &v65);
  push_ptr_init(v0, v64);
  push_ptr_init(v0, v63);
  fence_28(v0);
  por_trans_features();
  while (2)
  {
    HIWORD(v65) = 30;
    v5 = OUTLINED_FUNCTION_28_16();
    starttest(v5, v6);
    v7 = OUTLINED_FUNCTION_3_29();
    if (!lpta_loadp_setscan_l(v7, v8))
    {
      OUTLINED_FUNCTION_2_30();
      if (!test_string_s())
      {
        v9 = OUTLINED_FUNCTION_2_30();
        if (testFldeq(v9, v10, v11, 2) || advance_tok(v0))
        {
          goto LABEL_9;
        }

        v60 = &v65;
        v61 = (v0 + 1592);
        v59 = v0;
        goto LABEL_47;
      }
    }

LABEL_17:
    starttest(v0, 5);
    v28 = OUTLINED_FUNCTION_3_29();
    if (!lpta_loadp_setscan_l(v28, v29))
    {
LABEL_25:
      savescptr(v0, 6, v63);
      v43 = OUTLINED_FUNCTION_2_30();
      if (testFldeq(v43, v44, v45, 2))
      {
        goto LABEL_9;
      }

      if (advance_tok(v0))
      {
        goto LABEL_9;
      }

      if (lpta_loadp_setscan_r(v0, v63))
      {
        goto LABEL_9;
      }

      v46 = OUTLINED_FUNCTION_33_14();
      bspush_ca_scan(v46, v47);
      v48 = OUTLINED_FUNCTION_0_32();
      if (testFldeq(v48, v49, v50, 27) || advance_tok(v0))
      {
        goto LABEL_9;
      }

LABEL_46:
      savescptr(v0, 7, v64);
      v59 = OUTLINED_FUNCTION_21_20();
      v61 = v64;
LABEL_47:
      get_por_vow_trans_dur(v59, v60, v61);
      goto LABEL_48;
    }

LABEL_18:
    starttest(v0, 9);
    v30 = OUTLINED_FUNCTION_3_29();
    if (lpta_loadp_setscan_l(v30, v31))
    {
LABEL_19:
      v32 = OUTLINED_FUNCTION_22_20();
      starttest(v32, v33);
      v34 = OUTLINED_FUNCTION_3_29();
      if (lpta_loadp_setscan_l(v34, v35))
      {
LABEL_20:
        starttest(v0, 17);
        v36 = OUTLINED_FUNCTION_3_29();
        if (lpta_loadp_setscan_l(v36, v37))
        {
LABEL_21:
          starttest(v0, 22);
          v38 = OUTLINED_FUNCTION_3_29();
          if (lpta_loadp_setscan_l(v38, v39))
          {
LABEL_43:
            v57 = OUTLINED_FUNCTION_3_29();
            if (!lpta_loadp_setscan_l(v57, v58))
            {
              OUTLINED_FUNCTION_2_30();
              if (!test_string_s())
              {
                OUTLINED_FUNCTION_21_20();
                get_pause_trans_dur();
              }
            }
          }

          else
          {
            v40 = OUTLINED_FUNCTION_12_27();
            if (testFldeq(v40, v41, 3, v42) || advance_tok(v0))
            {
              goto LABEL_9;
            }

            OUTLINED_FUNCTION_21_20();
            get_por_son_trans_dur();
          }

LABEL_48:
          OUTLINED_FUNCTION_26_19(SHIWORD(v65));
          break;
        }

        v55 = OUTLINED_FUNCTION_14_25();
        bspush_ca_scan(v55, v56);
        v20 = OUTLINED_FUNCTION_6_28();
        v23 = 4;
LABEL_40:
        if (testFldeq(v20, v21, v22, v23))
        {
          goto LABEL_9;
        }

LABEL_41:
        if (!advance_tok(v0))
        {
          OUTLINED_FUNCTION_21_20();
          get_por_obstr_trans_dur();
          goto LABEL_48;
        }
      }

      else
      {
        v53 = OUTLINED_FUNCTION_32_14();
        bspush_ca_scan(v53, v54);
        v24 = OUTLINED_FUNCTION_0_32();
        v27 = 18;
LABEL_36:
        if (testFldeq(v24, v25, v26, v27))
        {
          goto LABEL_9;
        }

LABEL_37:
        if (!advance_tok(v0))
        {
          OUTLINED_FUNCTION_21_20();
          get_por_trill_trans_dur();
          goto LABEL_48;
        }
      }
    }

    else
    {
      v51 = OUTLINED_FUNCTION_34_13();
      bspush_ca_scan(v51, v52);
      v16 = OUTLINED_FUNCTION_0_32();
      v19 = 21;
LABEL_32:
      if (testFldeq(v16, v17, v18, v19))
      {
        goto LABEL_9;
      }

LABEL_33:
      if (!advance_tok(v0))
      {
        OUTLINED_FUNCTION_21_20();
        get_portl_high_pal_trans_dur();
        goto LABEL_48;
      }
    }

LABEL_9:
    v12 = *(v0 + 104);
    if (v12)
    {
      v13 = OUTLINED_FUNCTION_27_17(v12);
    }

    else
    {
      v14 = OUTLINED_FUNCTION_35_12();
      v13 = vback(v14, v15);
    }

    switch(v13)
    {
      case 1:
        continue;
      case 2:
        goto LABEL_17;
      case 3:
      case 4:
      case 8:
      case 12:
      case 16:
      case 21:
      case 23:
      case 24:
        goto LABEL_48;
      case 5:
        goto LABEL_18;
      case 6:
        goto LABEL_25;
      case 7:
        goto LABEL_46;
      case 9:
        goto LABEL_19;
      case 10:
        v16 = OUTLINED_FUNCTION_0_32();
        v19 = 17;
        goto LABEL_32;
      case 11:
        goto LABEL_33;
      case 13:
        goto LABEL_20;
      case 14:
        v24 = OUTLINED_FUNCTION_0_32();
        v27 = 19;
        goto LABEL_36;
      case 15:
        goto LABEL_37;
      case 17:
        goto LABEL_21;
      case 18:
        bspush_ca_scan(v0, 20);
        v20 = OUTLINED_FUNCTION_6_28();
        v23 = 2;
        goto LABEL_40;
      case 19:
        goto LABEL_41;
      case 20:
        v20 = OUTLINED_FUNCTION_6_28();
        v23 = 1;
        goto LABEL_40;
      case 22:
        goto LABEL_43;
      default:
        goto LABEL_3;
    }
  }

LABEL_3:
  vretproc(v0);
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_30_15();
}

uint64_t get_por_vow_trans_dur(uint64_t a1, uint64_t a2, __int16 *a3)
{
  OUTLINED_FUNCTION_25_19();
  v352 = *MEMORY[0x277D85DE8];
  v347 = 0;
  v346[0] = 0;
  v346[1] = 0;
  v344 = 0u;
  v345 = 0u;
  v343[0] = 0;
  v343[1] = 0;
  OUTLINED_FUNCTION_24_20();
  bzero(&v320, v6);
  OUTLINED_FUNCTION_23_20();
  bzero(v351, v7);
  if (!setjmp(v351))
  {
    v8 = ventproc(v3, &v320, v350, v349, v348, v351);
    if (!v8)
    {
      OUTLINED_FUNCTION_19_21(v8, &v347);
      get_parm(v3, v346, a3, -6);
      *&v345 = 0;
      *(&v345 + 6) = 0;
      LODWORD(v344) = -65532;
      push_ptr_init(v3, v343);
      fence_28(v3);
      HIWORD(v347) = 30;
      v11 = OUTLINED_FUNCTION_14_25();
      starttest(v11, v12);
      v13 = OUTLINED_FUNCTION_3_29();
      v15 = lpta_loadp_setscan_r(v13, v14);
      v16 = 0;
      v17 = 0;
      if (v15)
      {
        while (2)
        {
          starttest(v3, 4);
          v18 = OUTLINED_FUNCTION_13_27();
          v20 = lpta_loadp_setscan_l(v18, v19);
          v21 = v17;
          if (!v20)
          {
LABEL_7:
            OUTLINED_FUNCTION_20_20(5, v319, v320, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334, v335, v336, v337, v338, v339, v340, v341, v342, v343[0]);
            OUTLINED_FUNCTION_2_30();
            if (test_string_s())
            {
              goto LABEL_27;
            }

            v22 = OUTLINED_FUNCTION_15_25();
            if (lpta_loadp_setscan_r(v22, v23))
            {
              goto LABEL_27;
            }

            OUTLINED_FUNCTION_2_30();
            if (test_string_s())
            {
              goto LABEL_27;
            }

LABEL_10:
            v24 = 75;
            goto LABEL_15;
          }

LABEL_78:
          v125 = v21;
          v126 = OUTLINED_FUNCTION_14_25();
          starttest(v126, v127);
          v128 = OUTLINED_FUNCTION_3_29();
          v130 = lpta_loadp_setscan_l(v128, v129);
          v17 = v125;
          v131 = v125;
          if (v130)
          {
LABEL_79:
            v132 = v131;
            v133 = OUTLINED_FUNCTION_14_25();
            starttest(v133, v134);
            v135 = OUTLINED_FUNCTION_3_29();
            v137 = lpta_loadp_setscan_l(v135, v136);
            v17 = v132;
            v138 = v132;
            if (!v137)
            {
LABEL_100:
              OUTLINED_FUNCTION_20_20(9, v319, v320, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334, v335, v336, v337, v338, v339, v340, v341, v342, v343[0]);
              OUTLINED_FUNCTION_14_25();
              bspush_ca_scan_boa();
              v198 = OUTLINED_FUNCTION_0_32();
              v201 = 32;
LABEL_101:
              v202 = testFldeq(v198, v199, v200, v201);
              goto LABEL_102;
            }

LABEL_80:
            v17 = v138;
            v139 = OUTLINED_FUNCTION_14_25();
            starttest(v139, v140);
            v141 = OUTLINED_FUNCTION_3_29();
            if (lpta_loadp_setscan_r(v141, v142))
            {
LABEL_81:
              v143 = OUTLINED_FUNCTION_14_25();
              starttest(v143, v144);
              v145 = OUTLINED_FUNCTION_3_29();
              if (lpta_loadp_setscan_l(v145, v146))
              {
LABEL_82:
                v147 = OUTLINED_FUNCTION_14_25();
                starttest(v147, v148);
                v149 = OUTLINED_FUNCTION_3_29();
                if (lpta_loadp_setscan_l(v149, v150))
                {
LABEL_83:
                  v151 = OUTLINED_FUNCTION_14_25();
                  starttest(v151, v152);
                  v153 = OUTLINED_FUNCTION_3_29();
                  if (lpta_loadp_setscan_l(v153, v154))
                  {
                    goto LABEL_17;
                  }

                  v155 = OUTLINED_FUNCTION_10_28();
                  if (testFldeq(v155, v156, v157, 2) || advance_tok(v3))
                  {
                    goto LABEL_27;
                  }

                  v158 = OUTLINED_FUNCTION_14_25();
                  starttest(v158, v159);
                  v160 = OUTLINED_FUNCTION_4_28();
                  if (lpta_loadp_setscan_r(v160, v161))
                  {
LABEL_87:
                    v162 = OUTLINED_FUNCTION_14_25();
                    starttest(v162, v163);
                    v164 = OUTLINED_FUNCTION_4_28();
                    if (lpta_loadp_setscan_r(v164, v165))
                    {
LABEL_88:
                      v166 = OUTLINED_FUNCTION_14_25();
                      starttest(v166, v167);
                      v168 = OUTLINED_FUNCTION_4_28();
                      if (lpta_loadp_setscan_r(v168, v169))
                      {
LABEL_89:
                        v170 = OUTLINED_FUNCTION_14_25();
                        starttest(v170, v171);
                        v172 = OUTLINED_FUNCTION_4_28();
                        if (lpta_loadp_setscan_r(v172, v173))
                        {
                          goto LABEL_17;
                        }

                        v174 = OUTLINED_FUNCTION_14_25();
                        bspush_ca_scan(v174, v175);
                        v176 = OUTLINED_FUNCTION_0_32();
                        v179 = testFldeq(v176, v177, v178, 19);
                        v41 = v17;
                        v59 = v17;
                        if (v179)
                        {
                          goto LABEL_28;
                        }

LABEL_91:
                        v17 = v59;
                        if (advance_tok(v3))
                        {
                          goto LABEL_27;
                        }

                        v24 = 25;
                        goto LABEL_15;
                      }

                      v294 = OUTLINED_FUNCTION_14_25();
                      bspush_ca_scan(v294, v295);
                      v296 = OUTLINED_FUNCTION_0_32();
                      v299 = testFldeq(v296, v297, v298, 17);
                      v41 = v17;
                      v58 = v17;
                      if (v299)
                      {
                        goto LABEL_28;
                      }

LABEL_160:
                      v17 = v58;
                      goto LABEL_161;
                    }

                    v309 = OUTLINED_FUNCTION_6_28();
                    v312 = 6;
                    goto LABEL_171;
                  }

                  v313 = OUTLINED_FUNCTION_14_25();
                  bspush_ca_scan(v313, v314);
                  v315 = OUTLINED_FUNCTION_10_28();
                  v318 = testFldeq(v315, v316, v317, 1);
                  v41 = v17;
                  v57 = v17;
                  if (v318)
                  {
                    goto LABEL_28;
                  }

LABEL_174:
                  v17 = v57;
LABEL_175:
                  if (advance_tok(v3))
                  {
                    goto LABEL_27;
                  }

LABEL_176:
                  v24 = 50;
                  goto LABEL_15;
                }

                v243 = OUTLINED_FUNCTION_10_28();
                if (testFldeq(v243, v244, v245, 1) || advance_tok(v3))
                {
                  goto LABEL_27;
                }

                v246 = OUTLINED_FUNCTION_14_25();
                starttest(v246, v247);
                v248 = OUTLINED_FUNCTION_4_28();
                if (!lpta_loadp_setscan_r(v248, v249))
                {
                  v309 = OUTLINED_FUNCTION_0_32();
                  v312 = 25;
LABEL_171:
                  if (testFldeq(v309, v310, v311, v312))
                  {
                    goto LABEL_27;
                  }

LABEL_72:
                  if (advance_tok(v3))
                  {
                    goto LABEL_27;
                  }

                  goto LABEL_10;
                }

LABEL_122:
                v250 = OUTLINED_FUNCTION_14_25();
                starttest(v250, v251);
                v252 = OUTLINED_FUNCTION_4_28();
                if (!lpta_loadp_setscan_r(v252, v253))
                {
                  v306 = OUTLINED_FUNCTION_9_28();
                  if (testFldeq(v306, v307, v308, 1))
                  {
                    goto LABEL_27;
                  }

                  OUTLINED_FUNCTION_14_25();
                  bspush_ca_scan_boa();
                  v198 = OUTLINED_FUNCTION_0_32();
                  v201 = 7;
                  goto LABEL_101;
                }

LABEL_123:
                v254 = OUTLINED_FUNCTION_14_25();
                starttest(v254, v255);
                v256 = OUTLINED_FUNCTION_4_28();
                if (!lpta_loadp_setscan_r(v256, v257))
                {
                  v292 = OUTLINED_FUNCTION_14_25();
                  bspush_ca_scan(v292, v293);
                  OUTLINED_FUNCTION_2_30();
                  if (test_string_s())
                  {
                    goto LABEL_27;
                  }

LABEL_158:
                  v24 = 35;
                  goto LABEL_15;
                }

LABEL_124:
                v258 = OUTLINED_FUNCTION_14_25();
                starttest(v258, v259);
                v260 = OUTLINED_FUNCTION_4_28();
                v262 = lpta_loadp_setscan_l(v260, v261);
                v263 = v17;
                if (!v262)
                {
LABEL_125:
                  OUTLINED_FUNCTION_20_20(45, v319, v320, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334, v335, v336, v337, v338, v339, v340, v341, v342, v343[0]);
                  OUTLINED_FUNCTION_14_25();
                  bspush_ca_scan_boa();
                  v198 = OUTLINED_FUNCTION_0_32();
                  v201 = 28;
                  goto LABEL_101;
                }

LABEL_128:
                v17 = v263;
                v264 = OUTLINED_FUNCTION_14_25();
                starttest(v264, v265);
                v266 = OUTLINED_FUNCTION_4_28();
                if (lpta_loadp_setscan_r(v266, v267))
                {
LABEL_129:
                  v268 = OUTLINED_FUNCTION_14_25();
                  starttest(v268, v269);
                  v270 = OUTLINED_FUNCTION_4_28();
                  v272 = lpta_loadp_setscan_l(v270, v271);
                  v273 = v17;
                  if (v272)
                  {
                    goto LABEL_17;
                  }

LABEL_141:
                  v17 = v273;
                  OUTLINED_FUNCTION_20_20(48, v319, v320, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334, v335, v336, v337, v338, v339, v340, v341, v342, v343[0]);
                  goto LABEL_142;
                }

                v277 = OUTLINED_FUNCTION_10_28();
                v280 = 3;
                goto LABEL_150;
              }

              v206 = OUTLINED_FUNCTION_10_28();
              if (testFldeq(v206, v207, v208, 3) || advance_tok(v3))
              {
                goto LABEL_27;
              }

              v209 = OUTLINED_FUNCTION_14_25();
              starttest(v209, v210);
              v211 = OUTLINED_FUNCTION_4_28();
              if (lpta_loadp_setscan_r(v211, v212))
              {
LABEL_111:
                v213 = OUTLINED_FUNCTION_14_25();
                starttest(v213, v214);
                v215 = OUTLINED_FUNCTION_4_28();
                if (!lpta_loadp_setscan_r(v215, v216))
                {
                  v290 = OUTLINED_FUNCTION_14_25();
                  bspush_ca_scan(v290, v291);
                  v114 = OUTLINED_FUNCTION_0_32();
                  v117 = 37;
LABEL_67:
                  v118 = testFldeq(v114, v115, v116, v117);
                  v53 = v17;
                  v41 = v17;
                  if (v118)
                  {
                    goto LABEL_28;
                  }

LABEL_68:
                  v17 = v53;
                  goto LABEL_72;
                }

LABEL_112:
                v217 = OUTLINED_FUNCTION_14_25();
                starttest(v217, v218);
                v219 = OUTLINED_FUNCTION_4_28();
                if (!lpta_loadp_setscan_r(v219, v220))
                {
                  v288 = OUTLINED_FUNCTION_14_25();
                  bspush_ca_scan(v288, v289);
                  v105 = OUTLINED_FUNCTION_0_32();
                  v108 = 17;
LABEL_75:
                  v124 = testFldeq(v105, v106, v107, v108);
                  v54 = v17;
                  v41 = v17;
                  if (v124)
                  {
                    goto LABEL_28;
                  }

LABEL_76:
                  v17 = v54;
LABEL_161:
                  if (advance_tok(v3))
                  {
                    goto LABEL_27;
                  }

                  v24 = 45;
                  goto LABEL_15;
                }

LABEL_113:
                v221 = OUTLINED_FUNCTION_14_25();
                starttest(v221, v222);
                v223 = OUTLINED_FUNCTION_4_28();
                if (lpta_loadp_setscan_r(v223, v224))
                {
LABEL_114:
                  v225 = OUTLINED_FUNCTION_14_25();
                  starttest(v225, v226);
                  v227 = OUTLINED_FUNCTION_4_28();
                  if (!lpta_loadp_setscan_r(v227, v228))
                  {
                    v283 = OUTLINED_FUNCTION_14_25();
                    bspush_ca_scan(v283, v284);
                    v119 = OUTLINED_FUNCTION_0_32();
                    v122 = 23;
LABEL_70:
                    v123 = testFldeq(v119, v120, v121, v122);
                    v55 = v17;
                    v41 = v17;
                    if (v123)
                    {
                      goto LABEL_28;
                    }

LABEL_71:
                    v17 = v55;
                    goto LABEL_72;
                  }

LABEL_115:
                  v229 = OUTLINED_FUNCTION_14_25();
                  starttest(v229, v230);
                  v231 = OUTLINED_FUNCTION_4_28();
                  if (lpta_loadp_setscan_r(v231, v232))
                  {
LABEL_116:
                    v233 = OUTLINED_FUNCTION_14_25();
                    starttest(v233, v234);
                    v235 = OUTLINED_FUNCTION_4_28();
                    if (lpta_loadp_setscan_r(v235, v236))
                    {
LABEL_117:
                      v237 = OUTLINED_FUNCTION_14_25();
                      starttest(v237, v238);
                      v239 = OUTLINED_FUNCTION_4_28();
                      v241 = lpta_loadp_setscan_l(v239, v240);
                      v242 = v17;
                      if (v241)
                      {
                        goto LABEL_17;
                      }

LABEL_133:
                      v17 = v242;
                      OUTLINED_FUNCTION_20_20(32, v319, v320, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334, v335, v336, v337, v338, v339, v340, v341, v342, v343[0]);
LABEL_142:
                      OUTLINED_FUNCTION_14_25();
                      bspush_ca_scan_boa();
                      v274 = OUTLINED_FUNCTION_9_28();
                      if (testFldeq(v274, v275, v276, 7))
                      {
                        goto LABEL_27;
                      }

                      v202 = advance_tok(v3);
LABEL_102:
                      if (v202)
                      {
                        v41 = v17;
                      }

                      else
                      {
                        v41 = 1;
                      }

                      goto LABEL_28;
                    }

                    v277 = OUTLINED_FUNCTION_10_28();
                    v280 = 1;
LABEL_150:
                    if (testFldeq(v277, v278, v279, v280))
                    {
                      goto LABEL_27;
                    }

                    goto LABEL_175;
                  }

                  v281 = OUTLINED_FUNCTION_14_25();
                  bspush_ca_scan(v281, v282);
                  v109 = OUTLINED_FUNCTION_9_28();
                  v112 = 3;
LABEL_62:
                  v113 = testFldeq(v109, v110, v111, v112);
                  v56 = v17;
                  v41 = v17;
                  if (v113)
                  {
                    goto LABEL_28;
                  }

LABEL_63:
                  v17 = v56;
                }

                else
                {
                  v285 = OUTLINED_FUNCTION_9_28();
                  if (testFldeq(v285, v286, v287, 4))
                  {
                    goto LABEL_27;
                  }
                }

                if (advance_tok(v3))
                {
                  goto LABEL_27;
                }

LABEL_65:
                v24 = 40;
                goto LABEL_15;
              }

              v300 = OUTLINED_FUNCTION_9_28();
              if (testFldeq(v300, v301, v302, 2))
              {
                goto LABEL_27;
              }

              v303 = OUTLINED_FUNCTION_12_27();
              if (testFldeq(v303, v304, 2, v305) || advance_tok(v3))
              {
                goto LABEL_27;
              }

              goto LABEL_14;
            }

            v203 = OUTLINED_FUNCTION_0_32();
            if (testFldeq(v203, v204, v205, 19) || advance_tok(v3))
            {
              goto LABEL_27;
            }
          }

          else
          {
LABEL_93:
            OUTLINED_FUNCTION_20_20(7, v319, v320, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334, v335, v336, v337, v338, v339, v340, v341, v342, v343[0]);
            if (savetok(v3, &v344))
            {
              goto LABEL_27;
            }

            if (advance_tok(v3))
            {
              goto LABEL_27;
            }

            v180 = OUTLINED_FUNCTION_15_25();
            if (lpta_loadp_setscan_r(v180, v181))
            {
              goto LABEL_27;
            }

            v182 = OUTLINED_FUNCTION_0_32();
            if (npush_fld(v182, v183, v184))
            {
              goto LABEL_27;
            }

            if (advance_tok(v3))
            {
              goto LABEL_27;
            }

            WORD1(v344) = 0;
            npush_vf(v3, &v344, v185, v186, v187, v188, v189, v190);
            if (if_testeq(v3, v191, v192, v193, v194, v195, v196, v197))
            {
              goto LABEL_27;
            }
          }

          v24 = 10;
LABEL_15:
          v28 = v17;
LABEL_16:
          HIWORD(v347) = v24;
          v17 = v28;
LABEL_17:
          v29 = OUTLINED_FUNCTION_14_25();
          starttest(v29, v30);
          v31 = OUTLINED_FUNCTION_3_29();
          if (lpta_loadp_setscan_r(v31, v32))
          {
LABEL_18:
            v33 = OUTLINED_FUNCTION_14_25();
            starttest(v33, v34);
            v35 = OUTLINED_FUNCTION_3_29();
            if (!lpta_loadp_setscan_l(v35, v36))
            {
              v37 = OUTLINED_FUNCTION_0_32();
              if (!testFldeq(v37, v38, v39, 27))
              {
                v40 = advance_tok(v3);
                v41 = v17;
                if (!v40)
                {
                  v42 = HIWORD(v347);
                  if (SHIWORD(v347) < 43)
                  {
LABEL_138:
                    if (v42 > 32)
                    {
                      v43 = 10;
                    }

                    else
                    {
LABEL_139:
                      v43 = 1;
                    }
                  }

                  else
                  {
                    v43 = 20;
                  }

                  goto LABEL_153;
                }

LABEL_28:
                v49 = v3[13];
                if (v49)
                {
                  v50 = OUTLINED_FUNCTION_27_17(v49);
                  v17 = v51;
                }

                else
                {
                  v50 = vback(v3, v41);
                  v17 = 0;
                }

                v52 = v50 - 1;
                v53 = v17;
                v54 = v17;
                v55 = v17;
                v56 = v17;
                v57 = v17;
                v58 = v17;
                v59 = v17;
                v24 = 35;
                v28 = v17;
                switch(v52)
                {
                  case 0:
                    continue;
                  case 1:
                    v16 = v17;
                    goto LABEL_12;
                  case 2:
                  case 15:
                  case 35:
                  case 52:
                    goto LABEL_17;
                  case 3:
                    v21 = v17;
                    goto LABEL_78;
                  case 4:
                    goto LABEL_7;
                  case 5:
                    v131 = v17;
                    goto LABEL_79;
                  case 6:
                    goto LABEL_93;
                  case 7:
                    v138 = v17;
                    goto LABEL_80;
                  case 8:
                    goto LABEL_100;
                  case 9:
                    bspop_boa(v3);
                    v87 = advance_tok(v3);
                    v41 = v17;
                    if (v87)
                    {
                      goto LABEL_28;
                    }

                    v88 = OUTLINED_FUNCTION_15_25();
                    v90 = lpta_loadp_setscan_r(v88, v89);
                    v41 = v17;
                    if (v90)
                    {
                      goto LABEL_28;
                    }

                    v91 = OUTLINED_FUNCTION_14_25();
                    bspush_ca_scan(v91, v92);
                    goto LABEL_49;
                  case 10:
                    v82 = OUTLINED_FUNCTION_0_32();
                    v85 = testFldeq(v82, v83, v84, 27);
                    v41 = v17;
                    if (v85)
                    {
                      goto LABEL_28;
                    }

                    v86 = advance_tok(v3);
                    v41 = v17;
                    if (v86)
                    {
                      goto LABEL_28;
                    }

                    goto LABEL_49;
                  case 11:
LABEL_49:
                    v63 = OUTLINED_FUNCTION_0_32();
                    v66 = 18;
                    goto LABEL_50;
                  case 12:
                    goto LABEL_81;
                  case 13:
                    goto LABEL_82;
                  case 14:
                    goto LABEL_111;
                  case 16:
                    goto LABEL_112;
                  case 17:
                    v114 = OUTLINED_FUNCTION_0_32();
                    v117 = 25;
                    goto LABEL_67;
                  case 18:
                    goto LABEL_68;
                  case 19:
                    goto LABEL_113;
                  case 20:
                    v103 = OUTLINED_FUNCTION_14_25();
                    bspush_ca_scan(v103, v104);
                    v105 = OUTLINED_FUNCTION_0_32();
                    v108 = 21;
                    goto LABEL_75;
                  case 21:
                    goto LABEL_76;
                  case 22:
                    v105 = OUTLINED_FUNCTION_0_32();
                    v108 = 20;
                    goto LABEL_75;
                  case 23:
                    goto LABEL_114;
                  case 24:
                    goto LABEL_115;
                  case 25:
                    v119 = OUTLINED_FUNCTION_0_32();
                    v122 = 24;
                    goto LABEL_70;
                  case 26:
                    goto LABEL_71;
                  case 27:
                    goto LABEL_116;
                  case 28:
                    v109 = OUTLINED_FUNCTION_9_28();
                    v112 = 2;
                    goto LABEL_62;
                  case 29:
                    goto LABEL_63;
                  case 30:
                    goto LABEL_117;
                  case 31:
                    v242 = v17;
                    goto LABEL_133;
                  case 32:
                  case 48:
                    bspop_boa(v3);
                    v60 = OUTLINED_FUNCTION_15_25();
                    v62 = lpta_loadp_setscan_r(v60, v61);
                    v41 = v17;
                    if (v62)
                    {
                      goto LABEL_28;
                    }

                    v63 = OUTLINED_FUNCTION_9_28();
                    v66 = 7;
                    goto LABEL_50;
                  case 33:
                    goto LABEL_83;
                  case 34:
                    goto LABEL_122;
                  case 36:
                    goto LABEL_123;
                  case 37:
                    bspop_boa(v3);
                    v102 = advance_tok(v3);
                    v41 = v17;
                    if (!v102)
                    {
                      goto LABEL_65;
                    }

                    goto LABEL_28;
                  case 38:
                    goto LABEL_124;
                  case 39:
                  case 41:
                    v79 = OUTLINED_FUNCTION_14_25();
                    bspush_ca_scan(v79, v80);
                    goto LABEL_41;
                  case 40:
                    goto LABEL_16;
                  case 42:
LABEL_41:
                    OUTLINED_FUNCTION_2_30();
                    v81 = test_string_s();
                    v41 = v17;
                    if (!v81)
                    {
                      goto LABEL_158;
                    }

                    goto LABEL_28;
                  case 43:
                    v263 = v17;
                    goto LABEL_128;
                  case 44:
                    goto LABEL_125;
                  case 45:
                    bspop_boa(v3);
                    v67 = advance_tok(v3);
                    v41 = v17;
                    if (v67)
                    {
                      goto LABEL_28;
                    }

                    v68 = OUTLINED_FUNCTION_15_25();
                    v70 = lpta_loadp_setscan_r(v68, v69);
                    v41 = v17;
                    if (v70)
                    {
                      goto LABEL_28;
                    }

                    v63 = OUTLINED_FUNCTION_0_32();
                    v66 = 28;
LABEL_50:
                    v93 = testFldeq(v63, v64, v65, v66);
                    v41 = v17;
                    if (!v93)
                    {
                      v94 = advance_tok(v3);
                      v41 = v17;
                      if (!v94)
                      {
                        goto LABEL_176;
                      }
                    }

                    goto LABEL_28;
                  case 46:
                    goto LABEL_129;
                  case 47:
                    v273 = v17;
                    goto LABEL_141;
                  case 49:
                    goto LABEL_87;
                  case 50:
                    v71 = OUTLINED_FUNCTION_10_28();
                    v74 = testFldeq(v71, v72, v73, 3);
                    v57 = v17;
                    v41 = v17;
                    if (!v74)
                    {
                      goto LABEL_174;
                    }

                    goto LABEL_28;
                  case 51:
                    goto LABEL_174;
                  case 53:
                    goto LABEL_88;
                  case 54:
                    goto LABEL_89;
                  case 55:
                    v95 = OUTLINED_FUNCTION_14_25();
                    bspush_ca_scan(v95, v96);
                    v75 = OUTLINED_FUNCTION_0_32();
                    v78 = 21;
                    goto LABEL_54;
                  case 56:
                    goto LABEL_160;
                  case 57:
                    v75 = OUTLINED_FUNCTION_0_32();
                    v78 = 20;
LABEL_54:
                    v97 = testFldeq(v75, v76, v77, v78);
                    v58 = v17;
                    v41 = v17;
                    if (!v97)
                    {
                      goto LABEL_160;
                    }

                    goto LABEL_28;
                  case 58:
                    v98 = OUTLINED_FUNCTION_0_32();
                    v101 = testFldeq(v98, v99, v100, 18);
                    v59 = v17;
                    v41 = v17;
                    if (!v101)
                    {
                      goto LABEL_91;
                    }

                    goto LABEL_28;
                  case 59:
                    goto LABEL_91;
                  case 60:
                    goto LABEL_18;
                  case 61:
                    v48 = HIWORD(v347);
                    goto LABEL_135;
                  case 62:
                  case 63:
                  case 65:
                    goto LABEL_154;
                  case 64:
                    v42 = HIWORD(v347);
                    goto LABEL_138;
                  case 66:
                    goto LABEL_139;
                  default:
                    goto LABEL_3;
                }
              }

LABEL_27:
              v41 = v17;
              goto LABEL_28;
            }

LABEL_154:
            OUTLINED_FUNCTION_26_19(SHIWORD(v347));
            goto LABEL_4;
          }

          break;
        }

        v44 = OUTLINED_FUNCTION_0_32();
        if (testFldeq(v44, v45, v46, 27))
        {
          goto LABEL_27;
        }

        v47 = advance_tok(v3);
        v41 = v17;
        if (v47)
        {
          goto LABEL_28;
        }

        v48 = HIWORD(v347);
        if (SHIWORD(v347) < 43)
        {
LABEL_135:
          if (v48 < 33)
          {
            goto LABEL_154;
          }

          v43 = v48 - 10;
        }

        else
        {
          v43 = HIWORD(v347) - 20;
        }

LABEL_153:
        HIWORD(v347) = v43;
        goto LABEL_154;
      }

LABEL_12:
      v17 = v16;
      v25 = OUTLINED_FUNCTION_14_25();
      if (test_synch(v25, v26, 1u, v27))
      {
        goto LABEL_27;
      }

      OUTLINED_FUNCTION_2_30();
      if (test_string_s())
      {
        goto LABEL_27;
      }

LABEL_14:
      v24 = 60;
      goto LABEL_15;
    }
  }

LABEL_3:
  v4 = 94;
LABEL_4:
  vretproc(v3);
  v9 = *MEMORY[0x277D85DE8];
  return v4;
}

void get_portl_high_pal_trans_dur()
{
  OUTLINED_FUNCTION_31_15();
  OUTLINED_FUNCTION_25_19();
  v86 = *MEMORY[0x277D85DE8];
  v81 = 0;
  v80[0] = 0;
  v80[1] = 0;
  OUTLINED_FUNCTION_24_20();
  bzero(v79, v1);
  OUTLINED_FUNCTION_23_20();
  bzero(v85, v2);
  if (!setjmp(v85))
  {
    v3 = ventproc(v0, v79, v84, v83, v82, v85);
    if (!v3)
    {
      OUTLINED_FUNCTION_19_21(v3, &v81);
      v5 = OUTLINED_FUNCTION_21_20();
      push_ptr_init(v5, v6);
      fence_28(v0);
      HIWORD(v81) = 50;
      OUTLINED_FUNCTION_13_27();
      three_cluster();
      v7 = 0;
      v8 = 3;
      while (2)
      {
        v9 = OUTLINED_FUNCTION_28_16();
        starttest(v9, v10);
        v11 = OUTLINED_FUNCTION_1_30();
        v13 = lpta_loadp_setscan_l(v11, v12);
        v14 = v7;
        if (!v13)
        {
LABEL_25:
          v78 = v8;
          v7 = v14;
          savescptr(v0, 4, v80);
          v52 = OUTLINED_FUNCTION_11_27();
          if (!testFldeq(v52, v53, v54, v55) && !advance_tok(v0) && !lpta_loadp_setscan_r(v0, v80))
          {
            OUTLINED_FUNCTION_8_28();
            if (!test_string_s())
            {
              v77 = 15;
              goto LABEL_54;
            }
          }

          goto LABEL_29;
        }

LABEL_6:
        v78 = v8;
        starttest(v0, 5);
        v15 = OUTLINED_FUNCTION_1_30();
        if (lpta_loadp_setscan_r(v15, v16))
        {
LABEL_7:
          v17 = OUTLINED_FUNCTION_22_20();
          starttest(v17, v18);
          v19 = OUTLINED_FUNCTION_1_30();
          if (!lpta_loadp_setscan_r(v19, v20))
          {
            bspush_ca_scan_boa();
LABEL_22:
            v50 = OUTLINED_FUNCTION_33_14();
            if (test_synch(v50, v51, 1u, &unk_2806BBF42))
            {
              v7 = v7;
            }

            else
            {
              v7 = 1;
            }

            goto LABEL_29;
          }

LABEL_8:
          v21 = OUTLINED_FUNCTION_1_30();
          if (!lpta_loadp_setscan_r(v21, v22))
          {
            OUTLINED_FUNCTION_8_28();
            if (!test_string_s())
            {
              v77 = 20;
              goto LABEL_54;
            }
          }

LABEL_10:
          v23 = OUTLINED_FUNCTION_1_30();
          if (!lpta_loadp_setscan_r(v23, v24))
          {
            OUTLINED_FUNCTION_8_28();
            if (!test_string_s())
            {
              v77 = 35;
              goto LABEL_54;
            }
          }

LABEL_12:
          v25 = OUTLINED_FUNCTION_34_13();
          starttest(v25, v26);
          v27 = OUTLINED_FUNCTION_1_30();
          if (lpta_loadp_setscan_r(v27, v28))
          {
LABEL_55:
            OUTLINED_FUNCTION_26_19(SHIWORD(v81));
            break;
          }

          v29 = OUTLINED_FUNCTION_17_23();
          if (!testFldeq(v29, v30, 3, v31) && !advance_tok(v0))
          {
            v32 = OUTLINED_FUNCTION_32_14();
            starttest(v32, v33);
            v34 = OUTLINED_FUNCTION_1_30();
            if (!lpta_loadp_setscan_r(v34, v35))
            {
              v36 = OUTLINED_FUNCTION_17_23();
              if (!npush_fld(v36, v37, 8))
              {
                v38 = OUTLINED_FUNCTION_35_12();
                npush_i(v38);
                if (!if_testeq(v0, v39, v40, v41, v42, v43, v44, v45) && !advance_tok(v0))
                {
                  v77 = 30;
LABEL_54:
                  HIWORD(v81) = v77;
                  goto LABEL_55;
                }
              }

              goto LABEL_29;
            }

LABEL_52:
            v77 = 50;
            goto LABEL_54;
          }
        }

        else
        {
          bspush_ca_scan(v0, 6);
          v46 = v0;
          v47 = 4;
          v48 = 6;
          v49 = 3;
LABEL_38:
          v61 = testFldeq(v46, v47, v48, v49);
          v60 = v7;
          if (v61)
          {
            goto LABEL_29;
          }

LABEL_39:
          v7 = v60;
          if (!advance_tok(v0))
          {
            starttest(v0, 8);
            v62 = OUTLINED_FUNCTION_1_30();
            if (lpta_loadp_setscan_r(v62, v63))
            {
LABEL_41:
              starttest(v0, 10);
              v64 = OUTLINED_FUNCTION_1_30();
              if (lpta_loadp_setscan_r(v64, v65))
              {
LABEL_53:
                v77 = 70;
                goto LABEL_54;
              }

              v66 = OUTLINED_FUNCTION_17_23();
              if (npush_fld(v66, v67, 8))
              {
                goto LABEL_29;
              }

              npush_i(v0);
              if (if_testeq(v0, v68, v69, v70, v71, v72, v73, v74) || advance_tok(v0))
              {
                goto LABEL_29;
              }

              goto LABEL_52;
            }

            v75 = OUTLINED_FUNCTION_17_23();
            if (!testFldeq(v75, v76, 5, 5) && !advance_tok(v0))
            {
              v77 = 75;
              goto LABEL_54;
            }
          }
        }

LABEL_29:
        v56 = *(v0 + 104);
        if (v56)
        {
          v57 = OUTLINED_FUNCTION_27_17(v56);
        }

        else
        {
          v58 = OUTLINED_FUNCTION_18_22();
          v57 = vback(v58, v59);
          v7 = 0;
        }

        v60 = v7;
        v77 = 50;
        switch(v57)
        {
          case 1:
            v8 = v78;
            continue;
          case 2:
          case 9:
          case 19:
            goto LABEL_55;
          case 3:
            v8 = v78;
            goto LABEL_6;
          case 4:
            v14 = v7;
            v8 = v78;
            goto LABEL_25;
          case 5:
            goto LABEL_7;
          case 6:
            v46 = OUTLINED_FUNCTION_17_23();
            v48 = 0;
            v49 = 32;
            goto LABEL_38;
          case 7:
            goto LABEL_39;
          case 8:
            goto LABEL_41;
          case 10:
            goto LABEL_53;
          case 11:
            goto LABEL_8;
          case 12:
            bspop_boa(v0);
            bspush_ca_scan(v0, 14);
            OUTLINED_FUNCTION_8_28();
            goto LABEL_35;
          case 13:
            goto LABEL_22;
          case 14:
            OUTLINED_FUNCTION_8_28();
LABEL_35:
            if (!test_string_s())
            {
              goto LABEL_52;
            }

            goto LABEL_29;
          case 15:
          case 18:
            goto LABEL_54;
          case 16:
            goto LABEL_10;
          case 17:
            goto LABEL_12;
          default:
            goto LABEL_3;
        }
      }
    }
  }

LABEL_3:
  vretproc(v0);
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_30_15();
}

uint64_t get_por_trill_trans_dur()
{
  OUTLINED_FUNCTION_25_19();
  v24 = *MEMORY[0x277D85DE8];
  v19 = 0;
  OUTLINED_FUNCTION_24_20();
  bzero(v18, v2);
  OUTLINED_FUNCTION_23_20();
  bzero(v23, v3);
  if (setjmp(v23) || (v4 = ventproc(v0, v18, v22, v21, v20, v23), v4))
  {
LABEL_3:
    v1 = 94;
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_19_21(v4, &v19);
  fence_28(v0);
  OUTLINED_FUNCTION_13_27();
  three_cluster();
  while (2)
  {
    v7 = OUTLINED_FUNCTION_13_27();
    if (lpta_loadp_setscan_l(v7, v8) || test_string_s())
    {
LABEL_8:
      starttest(v0, 4);
      v9 = OUTLINED_FUNCTION_13_27();
      if (lpta_loadp_setscan_r(v9, v10))
      {
LABEL_16:
        v16 = OUTLINED_FUNCTION_3_29();
        if (lpta_loadp_setscan_r(v16, v17) || (OUTLINED_FUNCTION_2_30(), test_string_s()))
        {
LABEL_18:
          v15 = 45;
          goto LABEL_20;
        }
      }

      else if (testFldeq(v0, 4u, 1, 1) || advance_tok(v0))
      {
        v11 = *(v0 + 104);
        if (v11)
        {
          v12 = OUTLINED_FUNCTION_27_17(v11);
        }

        else
        {
          v13 = OUTLINED_FUNCTION_35_12();
          v12 = vback(v13, v14);
        }

        switch(v12)
        {
          case 1:
            continue;
          case 2:
            v15 = HIWORD(v19);
            goto LABEL_21;
          case 3:
            goto LABEL_8;
          case 4:
            goto LABEL_16;
          case 5:
            goto LABEL_18;
          default:
            goto LABEL_3;
        }
      }
    }

    break;
  }

  v15 = 10;
LABEL_20:
  HIWORD(v19) = v15;
LABEL_21:
  OUTLINED_FUNCTION_26_19(v15);
LABEL_4:
  vretproc(v0);
  v5 = *MEMORY[0x277D85DE8];
  return v1;
}

void get_por_obstr_trans_dur()
{
  OUTLINED_FUNCTION_31_15();
  OUTLINED_FUNCTION_25_19();
  v207 = *MEMORY[0x277D85DE8];
  v202 = 0;
  v200 = 0u;
  v201 = 0u;
  v199[0] = 0;
  v199[1] = 0;
  OUTLINED_FUNCTION_24_20();
  bzero(v198, v1);
  OUTLINED_FUNCTION_23_20();
  bzero(v206, v2);
  if (!setjmp(v206))
  {
    v3 = ventproc(v0, v198, v205, v204, v203, v206);
    if (!v3)
    {
      OUTLINED_FUNCTION_19_21(v3, &v202);
      *&v201 = 0;
      *(&v201 + 6) = 0;
      LODWORD(v200) = -65532;
      v5 = OUTLINED_FUNCTION_22_20();
      push_ptr_init(v5, v6);
      fence_28(v0);
      HIWORD(v202) = 30;
      OUTLINED_FUNCTION_13_27();
      three_cluster();
      v7 = 0;
      v8 = 3;
      while (2)
      {
        starttest(v0, v8);
        v9 = OUTLINED_FUNCTION_1_30();
        v11 = lpta_loadp_setscan_l(v9, v10);
        v12 = v7;
        if (!v11)
        {
LABEL_11:
          v197 = v8;
          v7 = v12;
          savescptr(v0, 4, v199);
          if (!savetok(v0, &v200) && !advance_tok(v0))
          {
            v30 = OUTLINED_FUNCTION_22_20();
            if (!lpta_loadp_setscan_r(v30, v31))
            {
              v32 = OUTLINED_FUNCTION_17_23();
              if (!npush_fld(v32, v33, 0) && !advance_tok(v0))
              {
                WORD1(v200) = 0;
                npush_vf(v0, &v200, v34, v35, v36, v37, v38, v39);
                v47 = if_testeq(v0, v40, v41, v42, v43, v44, v45, v46);
                goto LABEL_17;
              }
            }
          }

          goto LABEL_121;
        }

LABEL_6:
        v197 = v8;
        v13 = v7;
        v14 = OUTLINED_FUNCTION_33_14();
        starttest(v14, v15);
        v16 = OUTLINED_FUNCTION_1_30();
        if (!lpta_loadp_setscan_l(v16, v17))
        {
LABEL_7:
          savescptr(v0, 6, v199);
          v18 = OUTLINED_FUNCTION_11_27();
          if (!testFldeq(v18, v19, v20, v21) && !advance_tok(v0))
          {
            v22 = OUTLINED_FUNCTION_22_20();
            if (!lpta_loadp_setscan_r(v22, v23))
            {
              v24 = OUTLINED_FUNCTION_34_13();
              bspush_ca_scan(v24, v25);
              v26 = OUTLINED_FUNCTION_11_27();
LABEL_46:
              v98 = testFldeq(v26, v27, v28, v29);
              v51 = v7;
              v48 = v7;
              if (v98)
              {
                goto LABEL_18;
              }

LABEL_47:
              v7 = v51;
              v47 = advance_tok(v0);
LABEL_17:
              v48 = v7;
              if (v47)
              {
                goto LABEL_18;
              }

              goto LABEL_136;
            }
          }

          goto LABEL_121;
        }

LABEL_62:
        v107 = OUTLINED_FUNCTION_28_16();
        starttest(v107, v108);
        v109 = OUTLINED_FUNCTION_1_30();
        if (!lpta_loadp_setscan_r(v109, v110))
        {
          v141 = OUTLINED_FUNCTION_11_27();
          if (testFldeq(v141, v142, v143, v144))
          {
            v48 = v13;
          }

          else
          {
            v156 = advance_tok(v0);
            v48 = v13;
            if (!v156)
            {
LABEL_136:
              v57 = 1;
              goto LABEL_137;
            }
          }

          goto LABEL_18;
        }

LABEL_63:
        starttest(v0, 11);
        v111 = OUTLINED_FUNCTION_1_30();
        v7 = v13;
        if (lpta_loadp_setscan_l(v111, v112))
        {
LABEL_64:
          starttest(v0, 17);
          v113 = OUTLINED_FUNCTION_1_30();
          v7 = v13;
          if (lpta_loadp_setscan_l(v113, v114))
          {
LABEL_65:
            v115 = OUTLINED_FUNCTION_1_30();
            if (!lpta_loadp_setscan_r(v115, v116))
            {
              OUTLINED_FUNCTION_8_28();
              if (!test_string_s())
              {
                goto LABEL_140;
              }
            }

LABEL_67:
            starttest(v0, 20);
            v117 = OUTLINED_FUNCTION_1_30();
            LODWORD(v7) = v13;
            if (lpta_loadp_setscan_l(v117, v118))
            {
LABEL_68:
              starttest(v0, 23);
              v119 = OUTLINED_FUNCTION_1_30();
              if (!lpta_loadp_setscan_r(v119, v120))
              {
                bspush_ca_scan(v0, 24);
                OUTLINED_FUNCTION_8_28();
                v161 = test_string_s();
                v48 = v13;
                if (!v161)
                {
LABEL_139:
                  v57 = 10;
                  goto LABEL_137;
                }

                goto LABEL_18;
              }

LABEL_69:
              starttest(v0, 26);
              v121 = OUTLINED_FUNCTION_1_30();
              LODWORD(v7) = v13;
              if (lpta_loadp_setscan_l(v121, v122))
              {
LABEL_70:
                starttest(v0, 29);
                v123 = OUTLINED_FUNCTION_1_30();
                if (lpta_loadp_setscan_r(v123, v124))
                {
                  v7 = v13;
LABEL_72:
                  starttest(v0, 32);
                  v125 = OUTLINED_FUNCTION_1_30();
                  if (lpta_loadp_setscan_l(v125, v126))
                  {
LABEL_73:
                    starttest(v0, 44);
                    v127 = OUTLINED_FUNCTION_1_30();
                    if (lpta_loadp_setscan_l(v127, v128))
                    {
LABEL_74:
                      v129 = OUTLINED_FUNCTION_14_25();
                      starttest(v129, v130);
                      v131 = OUTLINED_FUNCTION_1_30();
                      if (!lpta_loadp_setscan_l(v131, v132))
                      {
LABEL_75:
                        savescptr(v0, 50, v199);
                        v133 = OUTLINED_FUNCTION_17_23();
                        if (!testFldeq(v133, v134, 5, 4) && !advance_tok(v0))
                        {
                          v135 = OUTLINED_FUNCTION_22_20();
                          if (!lpta_loadp_setscan_r(v135, v136))
                          {
                            v137 = OUTLINED_FUNCTION_8_28();
                            if (!testFldeq(v137, v138, v139, 2))
                            {
                              v140 = advance_tok(v0);
                              v48 = v7;
                              if (v140)
                              {
                                goto LABEL_18;
                              }

                              v57 = 35;
                              goto LABEL_137;
                            }
                          }
                        }

                        goto LABEL_121;
                      }

LABEL_138:
                      OUTLINED_FUNCTION_26_19(SHIWORD(v202));
                      goto LABEL_3;
                    }

                    v177 = OUTLINED_FUNCTION_17_23();
                    if (testFldeq(v177, v178, 5, 2) || advance_tok(v0))
                    {
                      goto LABEL_121;
                    }

                    starttest(v0, 45);
                    v179 = OUTLINED_FUNCTION_1_30();
                    if (!lpta_loadp_setscan_r(v179, v180))
                    {
                      v185 = OUTLINED_FUNCTION_16_24();
                      v186 = 4;
                      v188 = 29;
                      goto LABEL_117;
                    }

LABEL_114:
                    starttest(v0, 47);
                    v181 = OUTLINED_FUNCTION_1_30();
                    if (lpta_loadp_setscan_r(v181, v182))
                    {
LABEL_115:
                      starttest(v0, 46);
                      v183 = OUTLINED_FUNCTION_1_30();
                      if (lpta_loadp_setscan_r(v183, v184))
                      {
                        goto LABEL_138;
                      }

                      v185 = OUTLINED_FUNCTION_17_23();
                      v187 = 6;
                      v188 = 3;
LABEL_117:
                      if (!testFldeq(v185, v186, v187, v188))
                      {
LABEL_118:
                        v189 = advance_tok(v0);
                        v48 = v7;
                        if (v189)
                        {
                          goto LABEL_18;
                        }

                        v57 = 40;
LABEL_137:
                        HIWORD(v202) = v57;
                        goto LABEL_138;
                      }

LABEL_121:
                      v48 = v7;
                      goto LABEL_18;
                    }

                    bspush_ca_scan(v0, 48);
                    v192 = OUTLINED_FUNCTION_16_24();
                    v194 = testFldeq(v192, 4u, v193, 25);
                    v48 = v7;
                    v56 = v7;
                    if (!v194)
                    {
LABEL_133:
                      v195 = v56;
                      v196 = advance_tok(v0);
                      v48 = v195;
                      if (!v196)
                      {
LABEL_140:
                        v57 = 50;
                        goto LABEL_137;
                      }
                    }

LABEL_18:
                    v49 = v0[13];
                    if (v49)
                    {
                      v0[13] = 0;
                      v50 = v49;
                      v7 = v48;
                    }

                    else
                    {
                      v50 = vback(v0, v48);
                      v7 = 0;
                    }

                    v51 = v7;
                    v52 = v7;
                    v53 = v7;
                    v54 = v7;
                    v55 = v7;
                    v56 = v7;
                    v57 = 10;
                    switch(v50)
                    {
                      case 1:
                        v8 = v197;
                        continue;
                      case 2:
                      case 38:
                      case 46:
                        goto LABEL_138;
                      case 3:
                        v8 = v197;
                        goto LABEL_6;
                      case 4:
                        v12 = v7;
                        v8 = v197;
                        goto LABEL_11;
                      case 5:
                        v13 = v7;
                        goto LABEL_62;
                      case 6:
                        goto LABEL_7;
                      case 7:
                        v86 = OUTLINED_FUNCTION_14_25();
                        bspush_ca_scan(v86, v87);
                        v26 = OUTLINED_FUNCTION_6_28();
                        v29 = 2;
                        goto LABEL_46;
                      case 8:
                        goto LABEL_47;
                      case 9:
                        v26 = OUTLINED_FUNCTION_6_28();
                        v29 = 4;
                        goto LABEL_46;
                      case 10:
                        v13 = v7;
                        goto LABEL_63;
                      case 11:
                        v13 = v7;
                        goto LABEL_64;
                      case 12:
                        goto LABEL_83;
                      case 13:
                        v88 = OUTLINED_FUNCTION_6_28();
                        v91 = 4;
                        goto LABEL_84;
                      case 14:
                        goto LABEL_85;
                      case 15:
                        v92 = OUTLINED_FUNCTION_6_28();
                        v95 = 4;
                        goto LABEL_43;
                      case 16:
                        goto LABEL_44;
                      case 17:
                        v13 = v7;
                        goto LABEL_65;
                      case 18:
                        goto LABEL_88;
                      case 19:
                        v13 = v7;
                        goto LABEL_67;
                      case 20:
                        v13 = v7;
                        goto LABEL_68;
                      case 21:
                        goto LABEL_94;
                      case 22:
                        bspop_boa(v0);
                        v58 = advance_tok(v0);
                        v48 = v7;
                        if (v58)
                        {
                          goto LABEL_18;
                        }

                        v59 = OUTLINED_FUNCTION_15_25();
                        v61 = lpta_loadp_setscan_r(v59, v60);
                        v48 = v7;
                        if (v61)
                        {
                          goto LABEL_18;
                        }

                        goto LABEL_32;
                      case 23:
                        v13 = v7;
                        goto LABEL_69;
                      case 24:
LABEL_32:
                        OUTLINED_FUNCTION_2_30();
                        v74 = test_string_s();
                        v48 = v7;
                        if (!v74)
                        {
                          goto LABEL_139;
                        }

                        goto LABEL_18;
                      case 25:
                        goto LABEL_137;
                      case 26:
                        v13 = v7;
                        goto LABEL_70;
                      case 27:
                        goto LABEL_97;
                      case 28:
                        bspop_boa(v0);
                        v62 = advance_tok(v0);
                        v48 = v7;
                        if (v62)
                        {
                          goto LABEL_18;
                        }

                        v63 = OUTLINED_FUNCTION_15_25();
                        v65 = lpta_loadp_setscan_r(v63, v64);
                        v48 = v7;
                        if (v65)
                        {
                          goto LABEL_18;
                        }

                        v66 = OUTLINED_FUNCTION_9_28();
                        v69 = 7;
                        goto LABEL_30;
                      case 29:
                        goto LABEL_72;
                      case 30:
                        bspop_boa(v0);
                        OUTLINED_FUNCTION_2_30();
                        goto LABEL_49;
                      case 31:
                        goto LABEL_103;
                      case 32:
                        goto LABEL_73;
                      case 33:
                        goto LABEL_107;
                      case 34:
                        v167 = v7;
                        goto LABEL_129;
                      case 35:
                        bspop_boa(v0);
                        v70 = OUTLINED_FUNCTION_15_25();
                        v72 = lpta_loadp_setscan_r(v70, v71);
                        v48 = v7;
                        if (v72)
                        {
                          goto LABEL_18;
                        }

                        v66 = OUTLINED_FUNCTION_10_28();
                        v69 = 1;
LABEL_30:
                        v73 = testFldeq(v66, v67, v68, v69);
                        v48 = v7;
                        if (!v73)
                        {
                          goto LABEL_118;
                        }

                        goto LABEL_18;
                      case 36:
                        v99 = OUTLINED_FUNCTION_0_32();
                        v102 = 15;
                        goto LABEL_53;
                      case 37:
                        goto LABEL_54;
                      case 39:
                        v106 = v7;
                        goto LABEL_108;
                      case 40:
                        goto LABEL_120;
                      case 41:
                        bspop_boa(v0);
                        v79 = OUTLINED_FUNCTION_15_25();
                        v81 = lpta_loadp_setscan_r(v79, v80);
                        v48 = v7;
                        if (v81)
                        {
                          goto LABEL_18;
                        }

                        OUTLINED_FUNCTION_2_30();
                        v105 = test_string_s();
                        goto LABEL_56;
                      case 42:
                        v82 = OUTLINED_FUNCTION_0_32();
                        v85 = testFldeq(v82, v83, v84, 30);
                        v55 = v7;
                        v48 = v7;
                        if (!v85)
                        {
                          goto LABEL_39;
                        }

                        goto LABEL_18;
                      case 43:
                        goto LABEL_39;
                      case 44:
                        goto LABEL_74;
                      case 45:
                        goto LABEL_114;
                      case 47:
                        goto LABEL_115;
                      case 48:
                        v75 = OUTLINED_FUNCTION_0_32();
                        v78 = testFldeq(v75, v76, v77, 30);
                        v56 = v7;
                        v48 = v7;
                        if (!v78)
                        {
                          goto LABEL_133;
                        }

                        goto LABEL_18;
                      case 49:
                        goto LABEL_133;
                      case 50:
                        goto LABEL_75;
                      default:
                        goto LABEL_3;
                    }
                  }

                  v162 = OUTLINED_FUNCTION_17_23();
                  if (testFldeq(v162, v163, 5, 1) || advance_tok(v0))
                  {
                    goto LABEL_121;
                  }

                  starttest(v0, 33);
                  v164 = OUTLINED_FUNCTION_1_30();
                  v166 = lpta_loadp_setscan_l(v164, v165);
                  v167 = v7;
                  if (v166)
                  {
LABEL_107:
                    starttest(v0, 39);
                    v168 = OUTLINED_FUNCTION_1_30();
                    v170 = lpta_loadp_setscan_l(v168, v169);
                    v106 = v7;
                    if (v170)
                    {
LABEL_108:
                      v171 = v106;
                      starttest(v0, 38);
                      v172 = OUTLINED_FUNCTION_1_30();
                      if (lpta_loadp_setscan_r(v172, v173))
                      {
                        goto LABEL_138;
                      }

                      bspush_ca_scan(v0, 42);
                      v174 = OUTLINED_FUNCTION_16_24();
                      v176 = testFldeq(v174, 4u, v175, 25);
                      v48 = v171;
                      v55 = v171;
                      if (!v176)
                      {
LABEL_39:
                        v7 = v55;
                        v105 = advance_tok(v0);
LABEL_56:
                        v48 = v7;
                        if (v105)
                        {
                          goto LABEL_18;
                        }

                        v57 = 25;
                        goto LABEL_137;
                      }

                      goto LABEL_18;
                    }

LABEL_120:
                    savescptr(v0, 40, v199);
                    bspush_ca_scan_boa();
                    v190 = OUTLINED_FUNCTION_16_24();
                    if (testFldeq(v190, 4u, v191, 15))
                    {
                      goto LABEL_121;
                    }
                  }

                  else
                  {
LABEL_129:
                    v7 = v167;
                    savescptr(v0, 34, v199);
                    bspush_ca_scan_boa();
                    bspush_ca_scan(v0, 36);
                    v99 = OUTLINED_FUNCTION_16_24();
                    v100 = 4;
                    v102 = 7;
LABEL_53:
                    v103 = testFldeq(v99, v100, v101, v102);
                    v54 = v7;
                    v48 = v7;
                    if (v103)
                    {
                      goto LABEL_18;
                    }

LABEL_54:
                    LODWORD(v7) = v54;
                  }

                  v104 = advance_tok(v0);
                }

                else
                {
                  OUTLINED_FUNCTION_14_25();
                  bspush_ca_scan_boa();
                  LODWORD(v7) = v13;
LABEL_103:
                  v104 = test_synch(v0, 31, 1u, &unk_2806BBF3D);
                }

LABEL_99:
                if (v104)
                {
                  v48 = v7;
                }

                else
                {
                  v48 = 1;
                }

                goto LABEL_18;
              }

LABEL_97:
              savescptr(v0, 27, v199);
              bspush_ca_scan_boa();
              v157 = OUTLINED_FUNCTION_17_23();
              v160 = 5;
              v159 = 1;
            }

            else
            {
LABEL_94:
              savescptr(v0, 21, v199);
              bspush_ca_scan_boa();
              v157 = OUTLINED_FUNCTION_17_23();
              v160 = 2;
            }

            v104 = testFldeq(v157, v158, v160, v159);
            goto LABEL_99;
          }

LABEL_88:
          savescptr(v0, 18, v199);
          v150 = OUTLINED_FUNCTION_11_27();
          if (testFldeq(v150, v151, v152, v153))
          {
            goto LABEL_121;
          }

          if (advance_tok(v0))
          {
            goto LABEL_121;
          }

          v154 = OUTLINED_FUNCTION_22_20();
          if (lpta_loadp_setscan_r(v154, v155))
          {
            goto LABEL_121;
          }

          OUTLINED_FUNCTION_8_28();
LABEL_49:
          v97 = test_string_s();
        }

        else
        {
LABEL_83:
          savescptr(v0, 12, v199);
          bspush_ca_scan(v0, 13);
          v88 = OUTLINED_FUNCTION_17_23();
          v90 = 4;
          v91 = 2;
LABEL_84:
          v145 = testFldeq(v88, v89, v90, v91);
          v52 = v7;
          v48 = v7;
          if (v145)
          {
            goto LABEL_18;
          }

LABEL_85:
          v7 = v52;
          if (advance_tok(v0))
          {
            goto LABEL_121;
          }

          v146 = OUTLINED_FUNCTION_22_20();
          if (lpta_loadp_setscan_r(v146, v147))
          {
            goto LABEL_121;
          }

          v148 = OUTLINED_FUNCTION_32_14();
          bspush_ca_scan(v148, v149);
          v92 = OUTLINED_FUNCTION_17_23();
          v94 = 4;
          v95 = 2;
LABEL_43:
          v96 = testFldeq(v92, v93, v94, v95);
          v53 = v7;
          v48 = v7;
          if (v96)
          {
            goto LABEL_18;
          }

LABEL_44:
          v7 = v53;
          v97 = advance_tok(v0);
        }

        break;
      }

      v48 = v7;
      if (v97)
      {
        goto LABEL_18;
      }

      v57 = 15;
      goto LABEL_137;
    }
  }

LABEL_3:
  vretproc(v0);
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_30_15();
}

void get_por_son_trans_dur()
{
  OUTLINED_FUNCTION_31_15();
  OUTLINED_FUNCTION_25_19();
  v128 = *MEMORY[0x277D85DE8];
  v123 = 0;
  OUTLINED_FUNCTION_24_20();
  bzero(v122, v1);
  OUTLINED_FUNCTION_23_20();
  bzero(v127, v2);
  if (!setjmp(v127))
  {
    v3 = ventproc(v0, v122, v126, v125, v124, v127);
    if (!v3)
    {
      OUTLINED_FUNCTION_19_21(v3, &v123);
      fence_28(v0);
      HIWORD(v123) = 40;
      OUTLINED_FUNCTION_13_27();
      three_cluster();
      v5 = 0;
      while (2)
      {
        v6 = OUTLINED_FUNCTION_28_16();
        starttest(v6, v7);
        v8 = OUTLINED_FUNCTION_5_28();
        if (!lpta_loadp_setscan_r(v8, v9))
        {
          bspush_ca_scan(v0, 4);
          OUTLINED_FUNCTION_7_28();
LABEL_35:
          if (!test_string_s())
          {
            v121 = 5;
            goto LABEL_82;
          }

          goto LABEL_36;
        }

LABEL_6:
        starttest(v0, 6);
        v10 = OUTLINED_FUNCTION_5_28();
        if (lpta_loadp_setscan_l(v10, v11))
        {
LABEL_7:
          starttest(v0, 12);
          v12 = OUTLINED_FUNCTION_5_28();
          if (lpta_loadp_setscan_l(v12, v13))
          {
LABEL_8:
            v14 = v5;
            v15 = OUTLINED_FUNCTION_5_28();
            if (lpta_loadp_setscan_l(v15, v16))
            {
              goto LABEL_83;
            }

            OUTLINED_FUNCTION_7_28();
            if (test_string_s())
            {
              goto LABEL_83;
            }

            starttest(v0, 22);
            v17 = OUTLINED_FUNCTION_5_28();
            if (lpta_loadp_setscan_r(v17, v18))
            {
LABEL_11:
              v19 = OUTLINED_FUNCTION_5_28();
              if (!lpta_loadp_setscan_r(v19, v20))
              {
                OUTLINED_FUNCTION_7_28();
                if (!test_string_s())
                {
                  v121 = 10;
                  goto LABEL_82;
                }
              }

LABEL_13:
              v21 = OUTLINED_FUNCTION_33_14();
              starttest(v21, v22);
              v23 = OUTLINED_FUNCTION_5_28();
              if (lpta_loadp_setscan_r(v23, v24))
              {
LABEL_14:
                starttest(v0, 26);
                v25 = OUTLINED_FUNCTION_5_28();
                if (!lpta_loadp_setscan_r(v25, v26))
                {
                  v27 = OUTLINED_FUNCTION_7_28();
                  v30 = 2;
                  goto LABEL_16;
                }

                goto LABEL_83;
              }

              v33 = OUTLINED_FUNCTION_18_22();
              if (testFldeq(v33, v34, 4, 6) || advance_tok(v0))
              {
                goto LABEL_36;
              }

              v35 = OUTLINED_FUNCTION_34_13();
              starttest(v35, v36);
              v37 = OUTLINED_FUNCTION_5_28();
              if (lpta_loadp_setscan_r(v37, v38))
              {
LABEL_26:
                v39 = OUTLINED_FUNCTION_32_14();
                starttest(v39, v40);
                v41 = OUTLINED_FUNCTION_5_28();
                if (lpta_loadp_setscan_r(v41, v42))
                {
                  goto LABEL_83;
                }

                v43 = OUTLINED_FUNCTION_18_22();
                if (npush_fld(v43, v44, 8))
                {
                  goto LABEL_36;
                }

                v45 = OUTLINED_FUNCTION_35_12();
                npush_i(v45);
                if (if_testeq(v0, v46, v47, v48, v49, v50, v51, v52))
                {
                  goto LABEL_36;
                }

LABEL_47:
                if (advance_tok(v0))
                {
                  goto LABEL_36;
                }

LABEL_84:
                v121 = 25;
                goto LABEL_82;
              }

              v53 = OUTLINED_FUNCTION_18_22();
              if (!npush_fld(v53, v54, 8))
              {
                npush_i(v0);
                if (!if_testeq(v0, v55, v56, v57, v58, v59, v60, v61) && !advance_tok(v0))
                {
                  v121 = 35;
                  goto LABEL_82;
                }
              }
            }

            else
            {
              bspush_ca_scan(v0, 23);
              v31 = OUTLINED_FUNCTION_18_22();
              if (testFldeq(v31, v32, 4, 4))
              {
                goto LABEL_36;
              }

LABEL_43:
              v5 = v14;
              if (!advance_tok(v0))
              {
                goto LABEL_84;
              }
            }

LABEL_36:
            v62 = v0[13];
            if (v62)
            {
              v63 = OUTLINED_FUNCTION_27_17(v62);
            }

            else
            {
              v63 = vback(v0, v5);
              v5 = 0;
            }

            v64 = v5;
            v65 = v5;
            v14 = v5;
            v121 = 5;
            switch(v63)
            {
              case 1:
                continue;
              case 2:
              case 11:
              case 16:
              case 20:
              case 26:
              case 30:
                goto LABEL_83;
              case 3:
                goto LABEL_6;
              case 4:
                OUTLINED_FUNCTION_2_30();
                goto LABEL_35;
              case 5:
                goto LABEL_82;
              case 6:
                goto LABEL_7;
              case 7:
                v72 = OUTLINED_FUNCTION_14_25();
                bspush_ca_scan(v72, v73);
                goto LABEL_50;
              case 8:
                goto LABEL_52;
              case 9:
LABEL_50:
                OUTLINED_FUNCTION_2_30();
                goto LABEL_51;
              case 10:
                goto LABEL_54;
              case 12:
                goto LABEL_8;
              case 13:
                OUTLINED_FUNCTION_2_30();
                goto LABEL_59;
              case 14:
                goto LABEL_60;
              case 15:
                goto LABEL_62;
              case 17:
                goto LABEL_63;
              case 18:
                goto LABEL_64;
              case 19:
                goto LABEL_73;
              case 21:
                bspop_boa(v0);
                goto LABEL_47;
              case 22:
                goto LABEL_11;
              case 23:
                v66 = OUTLINED_FUNCTION_14_25();
                bspush_ca_scan(v66, v67);
                v68 = OUTLINED_FUNCTION_6_28();
                v71 = 1;
                goto LABEL_42;
              case 24:
                goto LABEL_43;
              case 25:
                v68 = OUTLINED_FUNCTION_6_28();
                v71 = 2;
LABEL_42:
                v14 = v5;
                if (!testFldeq(v68, v69, v70, v71))
                {
                  goto LABEL_43;
                }

                goto LABEL_36;
              case 27:
                goto LABEL_13;
              case 28:
                goto LABEL_14;
              case 29:
                goto LABEL_26;
              default:
                goto LABEL_3;
            }
          }

          bspush_ca_scan(v0, 13);
          OUTLINED_FUNCTION_7_28();
LABEL_59:
          v81 = test_string_s();
          v65 = v5;
          if (v81)
          {
            goto LABEL_36;
          }

LABEL_60:
          v5 = v65;
          v82 = OUTLINED_FUNCTION_5_28();
          if (lpta_loadp_setscan_r(v82, v83) || (OUTLINED_FUNCTION_7_28(), test_string_s()))
          {
LABEL_62:
            starttest(v0, 17);
            v84 = OUTLINED_FUNCTION_5_28();
            if (!lpta_loadp_setscan_r(v84, v85))
            {
              v27 = OUTLINED_FUNCTION_18_22();
              v29 = 0;
              v30 = 20;
LABEL_16:
              if (testFldeq(v27, v28, v29, v30))
              {
                goto LABEL_36;
              }

LABEL_17:
              if (!advance_tok(v0))
              {
                v121 = 30;
LABEL_82:
                HIWORD(v123) = v121;
                goto LABEL_83;
              }

              goto LABEL_36;
            }

LABEL_63:
            starttest(v0, 18);
            v86 = OUTLINED_FUNCTION_5_28();
            if (lpta_loadp_setscan_r(v86, v87))
            {
LABEL_64:
              starttest(v0, 16);
              v88 = OUTLINED_FUNCTION_5_28();
              if (!lpta_loadp_setscan_r(v88, v89))
              {
                v90 = OUTLINED_FUNCTION_7_28();
                if (!testFldeq(v90, v91, v92, 1))
                {
                  bspush_ca_scan_boa();
                  v93 = OUTLINED_FUNCTION_18_22();
                  if (testFldeq(v93, v94, 5, 1))
                  {
                    v5 = v5;
                  }

                  else
                  {
                    v5 = 1;
                  }
                }

                goto LABEL_36;
              }

              goto LABEL_83;
            }

            v95 = OUTLINED_FUNCTION_18_22();
            if (testFldeq(v95, v96, 3, 0) || advance_tok(v0))
            {
              goto LABEL_36;
            }

            starttest(v0, 19);
            v97 = OUTLINED_FUNCTION_5_28();
            if (!lpta_loadp_setscan_r(v97, v98))
            {
              v112 = OUTLINED_FUNCTION_18_22();
              if (npush_fld(v112, v113, 8))
              {
                goto LABEL_36;
              }

              npush_i(v0);
              if (if_testeq(v0, v114, v115, v116, v117, v118, v119, v120))
              {
                goto LABEL_36;
              }

              goto LABEL_17;
            }

LABEL_73:
            v99 = OUTLINED_FUNCTION_14_25();
            starttest(v99, v100);
            v101 = OUTLINED_FUNCTION_5_28();
            if (lpta_loadp_setscan_r(v101, v102))
            {
LABEL_83:
              OUTLINED_FUNCTION_26_19(SHIWORD(v123));
              goto LABEL_3;
            }

            v103 = OUTLINED_FUNCTION_18_22();
            if (npush_fld(v103, v104, 8))
            {
              goto LABEL_36;
            }

            npush_i(v0);
            if (if_testeq(v0, v105, v106, v107, v108, v109, v110, v111) || advance_tok(v0))
            {
              goto LABEL_36;
            }
          }
        }

        else
        {
          bspush_ca_scan(v0, 7);
          OUTLINED_FUNCTION_7_28();
LABEL_51:
          v74 = test_string_s();
          v64 = v5;
          if (v74)
          {
            goto LABEL_36;
          }

LABEL_52:
          v5 = v64;
          v75 = OUTLINED_FUNCTION_5_28();
          if (lpta_loadp_setscan_r(v75, v76) || (OUTLINED_FUNCTION_7_28(), test_string_s()))
          {
LABEL_54:
            starttest(v0, 11);
            v77 = OUTLINED_FUNCTION_5_28();
            if (!lpta_loadp_setscan_r(v77, v78))
            {
              v79 = OUTLINED_FUNCTION_18_22();
              if (!testFldeq(v79, v80, 6, 1) && !advance_tok(v0))
              {
                v121 = 65;
                goto LABEL_82;
              }

              goto LABEL_36;
            }

            goto LABEL_83;
          }
        }

        break;
      }

      v121 = 50;
      goto LABEL_82;
    }
  }

LABEL_3:
  vretproc(v0);
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_30_15();
}

uint64_t three_cluster()
{
  OUTLINED_FUNCTION_25_19();
  v13 = *MEMORY[0x277D85DE8];
  v8[0] = 0;
  v8[1] = 0;
  v7[0] = 0;
  v7[1] = 0;
  OUTLINED_FUNCTION_24_20();
  bzero(v6, v2);
  OUTLINED_FUNCTION_23_20();
  bzero(v12, v3);
  if (!setjmp(v12) && !ventproc(v0, v6, v11, v10, v9, v12))
  {
    get_parm(v0, v8, v1, -6);
    push_ptr_init(v0, v7);
    fence_28(v0);
  }

  vretproc(v0);
  v4 = *MEMORY[0x277D85DE8];
  return 94;
}

void OUTLINED_FUNCTION_19_21(uint64_t a1, uint64_t a2)
{

  get_parm(v2, a2, v3, -4);
}

double OUTLINED_FUNCTION_20_20@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{

  *&result = savescptr(v26, a1, &a26).n128_u64[0];
  return result;
}

double OUTLINED_FUNCTION_29_16@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{

  *&result = savescptr(v25, a1, &a25).n128_u64[0];
  return result;
}

void *fence_29(uint64_t a1, int a2, uint64_t a3)
{
  *(*(a1 + 192) + 8121) = a2;
  result = memset(*(a1 + 264), *(a1 + 288), *(a1 + 288));
  for (i = 0; a2 != i; ++i)
  {
    v8 = *(a3 + i);
    *(*(a1 + 248) + i) = v8;
    *(*(a1 + 264) + v8) = i;
  }

  return result;
}

uint64_t mark_por_funct_words()
{
  OUTLINED_FUNCTION_22_21();
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_18_23(v3, v4, v5, v6, v7, v8, v9, v10, v34, v37, v40, v43, v46, v49, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112);
  OUTLINED_FUNCTION_62_6(v11, v12, v13, v14, v15, v16, v17, v18, v35, v38, v41, v44, v47, v50, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v115, v117, v119, v121, v123);
  v19 = setjmp(v1);
  if (!v19 && !OUTLINED_FUNCTION_17_24(v19, v20, v21, v22, v23, v24, v25, v26, v36, v39, v42, v45, v48, v51, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, *v116, v116[4], *v118, *&v118[4], v118[6], v120, SWORD2(v120), SBYTE6(v120), SHIBYTE(v120), v122, v124))
  {
    v27 = OUTLINED_FUNCTION_26_20();
    get_parm(v27, v28, v29, -6);
    OUTLINED_FUNCTION_53_7();
    OUTLINED_FUNCTION_115_1(v30, v31, &null_str_8);
    OUTLINED_FUNCTION_26_20();
    mark_determiners();
  }

  vretproc(v0);
  v32 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_109_1();
}

uint64_t mark_determiners()
{
  OUTLINED_FUNCTION_22_21();
  v36 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_98_2();
  OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_85_4();
  bzero(&v34, v2);
  OUTLINED_FUNCTION_56_7();
  if (!setjmp(v1))
  {
    OUTLINED_FUNCTION_30_16();
    if (!OUTLINED_FUNCTION_116_1(v3, v4, v5, v6, v7))
    {
      v8 = OUTLINED_FUNCTION_26_20();
      get_parm(v8, v9, v10, -6);
      OUTLINED_FUNCTION_53_7();
      fence_29(v0, 0, &null_str_8);
      v11 = OUTLINED_FUNCTION_26_20();
      lpta_rpta_loadp(v11, v12, v13);
      v14 = OUTLINED_FUNCTION_20_21();
      if (!setd_lookup(v14, v15, v16))
      {
        v17 = OUTLINED_FUNCTION_19_22();
        lpta_rpta_loadp(v17, v18, v19);
        OUTLINED_FUNCTION_3_30();
        if (!mark_s())
        {
          OUTLINED_FUNCTION_2_31();
          if (!mark_s())
          {
            goto LABEL_11;
          }
        }
      }

      v20 = OUTLINED_FUNCTION_19_22();
      lpta_rpta_loadp(v20, v21, v22);
      v23 = OUTLINED_FUNCTION_36_12();
      if (!setd_lookup(v23, v24, v25))
      {
        v26 = OUTLINED_FUNCTION_19_22();
        lpta_rpta_loadp(v26, v27, v28);
        OUTLINED_FUNCTION_0_33();
        if (!mark_s())
        {
          OUTLINED_FUNCTION_3_30();
          if (!mark_s())
          {
            OUTLINED_FUNCTION_2_31();
            if (!mark_s())
            {
LABEL_11:
              v31 = OUTLINED_FUNCTION_29_17();
              if (lpta_loadp_setscan_l(v31, v32) || (OUTLINED_FUNCTION_20_21(), test_string_s()))
              {
                v33 = 3022;
              }

              else
              {
                v33 = 3026;
              }

              v35 = *(v0 + v33);
              OUTLINED_FUNCTION_101_1();
              mark_number();
              OUTLINED_FUNCTION_101_1();
              mark_word_stress();
            }
          }
        }
      }
    }
  }

  vretproc(v0);
  v29 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_119_1();
}

uint64_t mark_number()
{
  OUTLINED_FUNCTION_108_1();
  v62 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_45_8(v1, v2, v3, v4, v5, v6, v7, v8, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, SHIDWORD(v55), v57, v58, v59, v60);
  OUTLINED_FUNCTION_84_4();
  bzero(v61, v9);
  if (!setjmp(v61))
  {
    OUTLINED_FUNCTION_30_16();
    if (!OUTLINED_FUNCTION_116_1(v10, v11, v12, v13, v14))
    {
      v17 = OUTLINED_FUNCTION_93_3();
      OUTLINED_FUNCTION_137_0(v17, v18);
      v19 = OUTLINED_FUNCTION_76_6();
      OUTLINED_FUNCTION_110_1(v19, v20);
      v21 = OUTLINED_FUNCTION_95_3();
      get_parm(v21, v22, v23, -4);
      fence_29(v0, 0, &null_str_8);
      v24 = v56;
      if (*(v0 + 3022) == v56)
      {
        v25 = OUTLINED_FUNCTION_19_22();
        lpta_rpta_loadp(v25, v26, v27);
        OUTLINED_FUNCTION_6_29();
        if (!mark_s())
        {
LABEL_10:
          vretproc(v0);
          result = 0;
          goto LABEL_4;
        }

        v24 = v56;
      }

      if (*(v0 + 3026) == v24)
      {
        v28 = OUTLINED_FUNCTION_19_22();
        lpta_rpta_loadp(v28, v29, v30);
        OUTLINED_FUNCTION_10_29();
        mark_s();
      }

      goto LABEL_10;
    }
  }

  vretproc(v0);
  result = 94;
LABEL_4:
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t disambig_por_functword()
{
  OUTLINED_FUNCTION_22_21();
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_18_23(v4, v5, v6, v7, v8, v9, v10, v11, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, v149, v153, v157, v161, v165, v169, v173, v177, v181, v185, v189, v193, v196, v199);
  OUTLINED_FUNCTION_62_6(v12, v13, v14, v15, v16, v17, v18, v19, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142, v146, v150, v154, v158, v162, v166, v170, v174, v178, v182, v186, v190, v194, v197, v200, v202, v204, v206, v208, v210);
  v20 = setjmp(v2);
  if (!v20 && !OUTLINED_FUNCTION_17_24(v20, v21, v22, v23, v24, v25, v26, v27, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v147, v151, v155, v159, v163, v167, v171, v175, v179, v183, v187, v191, v195, v198, v201, *v203, v203[4], *v205, *&v205[4], v205[6], v207, SWORD2(v207), SBYTE6(v207), SHIBYTE(v207), v209, v211))
  {
    v30 = OUTLINED_FUNCTION_26_20();
    get_parm(v30, v31, v32, -6);
    OUTLINED_FUNCTION_70_6(v33, v34, v35, v36, v37, v38, v39, v40, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144, v148, v152, v156, v160, v164, v168, v172, v176, v180, v184, v188, v192);
    fence_29(v0, 0, &null_str_8);
    v41 = OUTLINED_FUNCTION_73_6();
    fence_29(v41, v42, v43);
    v44 = OUTLINED_FUNCTION_77_6();
    if (!lpta_loadp_setscan_r(v44, v45))
    {
      OUTLINED_FUNCTION_24_21();
      if (!test_string_s())
      {
        *(v0 + 136) = v1;
        v46 = OUTLINED_FUNCTION_23_21();
        if (!test_ptr(v46))
        {
          OUTLINED_FUNCTION_16_25();
          disambiguate_a();
          goto LABEL_3;
        }
      }
    }

    while (2)
    {
      v47 = OUTLINED_FUNCTION_32_15();
      starttest(v47, v48);
      v49 = OUTLINED_FUNCTION_29_17();
      if (lpta_loadp_setscan_r(v49, v50) || (OUTLINED_FUNCTION_36_12(), test_string_s()))
      {
LABEL_9:
        v51 = OUTLINED_FUNCTION_29_17();
        if (!lpta_loadp_setscan_r(v51, v52))
        {
          OUTLINED_FUNCTION_24_21();
          if (!test_string_s())
          {
            *(v0 + 136) = v1;
            v53 = OUTLINED_FUNCTION_23_21();
            if (!test_ptr(v53))
            {
              OUTLINED_FUNCTION_16_25();
              disambiguate_esse();
              break;
            }
          }
        }

LABEL_12:
        v54 = OUTLINED_FUNCTION_29_17();
        if (!lpta_loadp_setscan_r(v54, v55))
        {
          OUTLINED_FUNCTION_24_21();
          if (!test_string_s())
          {
            *(v0 + 136) = v1;
            v56 = OUTLINED_FUNCTION_23_21();
            if (!test_ptr(v56))
            {
              OUTLINED_FUNCTION_16_25();
              disambiguate_este();
              break;
            }
          }
        }

LABEL_15:
        v57 = OUTLINED_FUNCTION_29_17();
        if (!lpta_loadp_setscan_r(v57, v58))
        {
          OUTLINED_FUNCTION_24_21();
          if (!test_string_s())
          {
            *(v0 + 136) = v1;
            v59 = OUTLINED_FUNCTION_23_21();
            if (!test_ptr(v59))
            {
              OUTLINED_FUNCTION_16_25();
              disambiguate_nos();
              break;
            }
          }
        }

LABEL_18:
        v60 = OUTLINED_FUNCTION_72_6();
        starttest(v60, v61);
        v62 = OUTLINED_FUNCTION_35_13();
        if (lpta_loadp_setscan_r(v62, v63))
        {
LABEL_19:
          v64 = OUTLINED_FUNCTION_29_17();
          if (!lpta_loadp_setscan_r(v64, v65))
          {
            OUTLINED_FUNCTION_24_21();
            if (!test_string_s())
            {
              *(v0 + 136) = v1;
              v66 = OUTLINED_FUNCTION_23_21();
              if (!test_ptr(v66))
              {
                OUTLINED_FUNCTION_16_25();
                disambiguate_por();
                break;
              }
            }
          }

LABEL_22:
          v67 = OUTLINED_FUNCTION_29_17();
          if (!lpta_loadp_setscan_r(v67, v68))
          {
            OUTLINED_FUNCTION_24_21();
            if (!test_string_s())
            {
              *(v0 + 136) = v1;
              v69 = OUTLINED_FUNCTION_23_21();
              if (!test_ptr(v69))
              {
                OUTLINED_FUNCTION_16_25();
                disambiguate_se();
                break;
              }
            }
          }

LABEL_25:
          v70 = OUTLINED_FUNCTION_29_17();
          if (!lpta_loadp_setscan_r(v70, v71))
          {
            OUTLINED_FUNCTION_24_21();
            if (!test_string_s())
            {
              *(v0 + 136) = v1;
              v72 = OUTLINED_FUNCTION_23_21();
              if (!test_ptr(v72))
              {
                OUTLINED_FUNCTION_16_25();
                disambiguate_sao();
                break;
              }
            }
          }

LABEL_28:
          v73 = OUTLINED_FUNCTION_72_6();
          starttest(v73, v74);
          v75 = OUTLINED_FUNCTION_35_13();
          if (lpta_loadp_setscan_r(v75, v76))
          {
LABEL_29:
            v77 = OUTLINED_FUNCTION_72_6();
            starttest(v77, v78);
            v79 = OUTLINED_FUNCTION_35_13();
            if (lpta_loadp_setscan_r(v79, v80))
            {
              break;
            }

            v81 = OUTLINED_FUNCTION_15_26();
            if (!testFldeq(v81, v82, v83, 3) && !advance_tok(v0))
            {
              OUTLINED_FUNCTION_16_25();
              det_vs_nounadj();
              break;
            }
          }

          else
          {
            v87 = OUTLINED_FUNCTION_15_26();
            if (!testFldeq(v87, v88, v89, 4) && !advance_tok(v0))
            {
              OUTLINED_FUNCTION_16_25();
              pro_vs_det();
              break;
            }
          }
        }

        else
        {
          v84 = OUTLINED_FUNCTION_14_26();
          if (!testFldeq(v84, v85, v86, 31) && !advance_tok(v0))
          {
            OUTLINED_FUNCTION_16_25();
            disambiguate_pelo();
            break;
          }
        }
      }

      else
      {
        v90 = OUTLINED_FUNCTION_31_16();
        bspush_ca_scan(v90, v91);
LABEL_40:
        OUTLINED_FUNCTION_117_1();
        v92 = OUTLINED_FUNCTION_23_21();
        if (!test_ptr(v92))
        {
          OUTLINED_FUNCTION_16_25();
          disambiguate_um();
          break;
        }
      }

LABEL_41:
      v93 = *(v0 + 104);
      if (v93)
      {
        v94 = OUTLINED_FUNCTION_87_4(v93);
      }

      else
      {
        v95 = OUTLINED_FUNCTION_90_4();
        v94 = vback(v95, v96);
      }

      switch(v94)
      {
        case 1:
          continue;
        case 4:
          goto LABEL_9;
        case 5:
          OUTLINED_FUNCTION_20_21();
          if (!test_string_s())
          {
            goto LABEL_40;
          }

          goto LABEL_41;
        case 6:
          goto LABEL_40;
        case 8:
          goto LABEL_12;
        case 10:
          goto LABEL_15;
        case 12:
          goto LABEL_18;
        case 14:
          goto LABEL_19;
        case 16:
          goto LABEL_22;
        case 18:
          goto LABEL_25;
        case 20:
          goto LABEL_28;
        case 22:
          goto LABEL_29;
        default:
          goto LABEL_3;
      }
    }
  }

LABEL_3:
  vretproc(v0);
  v28 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_109_1();
}