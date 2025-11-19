uint64_t por_ph_N(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v10 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_47_4(a1, a2, a3, a4, a5, a6, a7, a8, v129, v133, v137, v141, v145, v149, v153, v157, v161, v165, v169, v173, v177, v181, v185, v189, v193, v197, v201, v205, v209, v213, v217, v221, v225);
  OUTLINED_FUNCTION_69_3();
  OUTLINED_FUNCTION_110_0(v11, v12, v13, v14, v15, v16, v17, v18, v130, v134, v138, v142, v146, v150, v154, v158, v162, v166, v170, v174, v178, v182, v186, v190, v194, v198, v202, v206, v210, v214, v218, v222, v226, v228, v230, v232, v234, v236);
  v19 = setjmp(v8);
  if (v19 || OUTLINED_FUNCTION_30_11(v19, v20, v21, v22, v23, v24, v25, v26, v131, v135, v139, v143, v147, v151, v155, v159, v163, v167, v171, v175, v179, v183, v187, v191, v195, v199, v203, v207, v211, v215, v219, v223, v227, *v229, v229[4], *v231, *&v231[4], v231[6], v233, SWORD2(v233), SBYTE6(v233), SHIBYTE(v233), v235, v237))
  {
LABEL_3:
    vretproc(a1);
    result = 94;
    goto LABEL_4;
  }

  v29 = OUTLINED_FUNCTION_76_3();
  push_ptr_init(v29, v30);
  fence_24(a1);
  v31 = OUTLINED_FUNCTION_22_16();
  starttest(v31, v32);
  v33 = OUTLINED_FUNCTION_16_20();
  if (lpta_loadp_setscan_r(v33, v34))
  {
    v35 = 300;
    v36 = 0;
  }

  else
  {
    v37 = OUTLINED_FUNCTION_1_26();
    if (testFldeq(v37, v38, v39, v40))
    {
      v36 = 0;
      goto LABEL_41;
    }

    v36 = 0;
    if (advance_tok(a1))
    {
      goto LABEL_41;
    }

    v35 = 250;
  }

LABEL_12:
  OUTLINED_FUNCTION_87_2(v35);
LABEL_13:
  v41 = v36;
  OUTLINED_FUNCTION_97_1(4100);
  OUTLINED_FUNCTION_89_2(2850);
  *(a1 + 4586) = 1950;
  *(a1 + 4590) = 2150;
  v42 = OUTLINED_FUNCTION_37_8();
  starttest(v42, v43);
  v44 = OUTLINED_FUNCTION_15_21();
  if (!lpta_loadp_setscan_l(v44, v45))
  {
    v95 = OUTLINED_FUNCTION_3_25();
    if (!testFldeq(v95, v96, v97, v98))
    {
      OUTLINED_FUNCTION_26_15();
      bspush_ca_scan_boa();
      v99 = OUTLINED_FUNCTION_62_3();
      if (testFldeq(v99, v36, v100, 33))
      {
        v36 = v36;
      }

      else
      {
        v36 = 1;
      }

      goto LABEL_41;
    }

    goto LABEL_40;
  }

  while (1)
  {
    v36 = v41;
    v46 = OUTLINED_FUNCTION_29_12();
    starttest(v46, v47);
    v48 = OUTLINED_FUNCTION_15_21();
    v50 = lpta_loadp_setscan_l(v48, v49);
    if (v50)
    {
LABEL_15:
      v58 = OUTLINED_FUNCTION_73_3(6 * *(a1 + 4282));
      v59 = 133;
      v60 = 4374;
      v61 = v58;
      v41 = v36;
    }

    else
    {
LABEL_57:
      OUTLINED_FUNCTION_109_0(v50, v51, v52, v53, v54, v55, v56, v57, v132, v136, v140, v144, v148, v152, v156, v160, v164, v168, v172, v176, v180, v184, v188, v192, v196, v200, v204, v208, v212, v216, v220, v224);
      v118 = OUTLINED_FUNCTION_59_3();
      if (testFldeq(v118, v119, 6, 3) || advance_tok(a1) || (v120 = OUTLINED_FUNCTION_61_3(), lpta_loadp_setscan_r(v120, v121)) || advance_tok(a1) || OUTLINED_FUNCTION_45_4() || (v122 = OUTLINED_FUNCTION_18_18(), testFldeq(v122, v123, v124, 4)) || advance_tok(a1) || (v125 = OUTLINED_FUNCTION_0_28(), testFldeq(v125, v126, v127, v128)) || advance_tok(a1))
      {
LABEL_40:
        v36 = v41;
        goto LABEL_41;
      }

      *(a1 + 4374) = OUTLINED_FUNCTION_73_3(6 * *(a1 + 4282));
      v59 = 66;
      v60 = 4378;
      LOWORD(v61) = 2 * *(a1 + 4286);
    }

    *(a1 + v60) = v61;
    *(a1 + 4382) = ((v59 * *(a1 + 4290)) / 100.0);
    v36 = v41;
LABEL_17:
    v62 = OUTLINED_FUNCTION_25_15();
    starttest(v62, v63);
    OUTLINED_FUNCTION_100_0();
    if (v64 || (v65 = OUTLINED_FUNCTION_15_21(), lpta_loadp_setscan_l(v65, v66)))
    {
LABEL_19:
      v67 = 53;
    }

    else
    {
LABEL_49:
      OUTLINED_FUNCTION_85_2(9, v132, v136, v140, v144, v148, v152, v156, v160, v164, v168, v172, v176, v180, v184, v188, v192, v196, v200, v204, v208, v212, v216, v220, v224);
      v108 = OUTLINED_FUNCTION_5_24();
      if (testFldeq(v108, v109, v110, v111))
      {
        goto LABEL_41;
      }

      if (advance_tok(a1))
      {
        goto LABEL_41;
      }

      v112 = OUTLINED_FUNCTION_61_3();
      if (lpta_loadp_setscan_r(v112, v113))
      {
        goto LABEL_41;
      }

      if (advance_tok(a1))
      {
        goto LABEL_41;
      }

      v114 = OUTLINED_FUNCTION_5_24();
      if (testFldeq(v114, v115, v116, v117) || advance_tok(a1))
      {
        goto LABEL_41;
      }

      v67 = 48;
    }

    *(a1 + 4394) = v67;
LABEL_21:
    *(a1 + 4414) = *(a1 + 4410) + 150;
    *(a1 + 4406) = 15;
    v68 = OUTLINED_FUNCTION_88_2(4);
    if (if_testeq_v_i(v68, v69, 1, v70, v71, v72, v73, v74))
    {
      goto LABEL_36;
    }

    v75 = OUTLINED_FUNCTION_88_2(5);
    if (!if_testgt_v_i(v75, v76, 30, v77, v78, v79, v80, v81))
    {
      break;
    }

LABEL_23:
    v82 = OUTLINED_FUNCTION_60_3();
    starttest(v82, v83);
    v84 = OUTLINED_FUNCTION_15_21();
    if (lpta_loadp_setscan_l(v84, v85))
    {
      goto LABEL_34;
    }

    v86 = OUTLINED_FUNCTION_3_25();
    if (!testFldeq(v86, v87, v88, v89))
    {
      v90 = OUTLINED_FUNCTION_1_26();
      if (!testFldeq(v90, v91, v92, v93) && !advance_tok(a1))
      {
        OUTLINED_FUNCTION_115_0();
        goto LABEL_33;
      }
    }

LABEL_41:
    v105 = v36;
    while (2)
    {
      v106 = *(a1 + 104);
      if (v106)
      {
        v50 = OUTLINED_FUNCTION_49_3(v106);
      }

      else
      {
        v50 = vback(a1, v105);
        v36 = 0;
      }

      switch(v50)
      {
        case 1:
          v35 = 300;
          goto LABEL_12;
        case 2:
          goto LABEL_13;
        case 3:
          break;
        case 4:
          bspop_boa(a1);
          v107 = advance_tok(a1);
          v105 = v36;
          if (v107)
          {
            continue;
          }

          OUTLINED_FUNCTION_91_1(2300);
          break;
        case 5:
          goto LABEL_15;
        case 6:
          v41 = v36;
          goto LABEL_57;
        case 7:
          goto LABEL_17;
        case 8:
          goto LABEL_19;
        case 9:
          goto LABEL_49;
        case 10:
          goto LABEL_21;
        case 11:
          goto LABEL_36;
        case 12:
          goto LABEL_23;
        case 13:
          goto LABEL_34;
        case 14:
          goto LABEL_39;
        default:
          goto LABEL_3;
      }

      break;
    }

    v41 = v36;
  }

  v94 = *(a1 + 4410);
LABEL_33:
  *(a1 + 4414) = v94;
LABEL_34:
  OUTLINED_FUNCTION_118_0();
  if (v102 == v103)
  {
    *(a1 + 4406) = v101 + 5;
  }

LABEL_36:
  OUTLINED_FUNCTION_96_1();
  if (v102 == v103)
  {
    OUTLINED_FUNCTION_105_0();
    if (v102 == v103)
    {
      OUTLINED_FUNCTION_21_16(v104);
    }
  }

LABEL_39:
  vretproc(a1);
  result = 0;
LABEL_4:
  v28 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t por_pal_Fv(uint64_t a1)
{
  OUTLINED_FUNCTION_36_8(*MEMORY[0x277D85DE8], v154);
  OUTLINED_FUNCTION_31_11(v3, v4, v5, v6, v7, v8, v9, v10, v155, v157, v159, v161, v163, v165, v167, v169, v171, v173, v175, v177, v179, v181, v183, v185, v187, v189, v191, v193, v195, v197, v199, v201, v203, v205, v207, v209);
  v11 = setjmp(v1);
  if (!v11 && !OUTLINED_FUNCTION_10_24(v11, v12, v13, v14, v15, v16, v17, v18, v156, v158, v160, v162, v164, v166, v168, v170, v172, v174, v176, v178, v180, v182, v184, v186, v188, v190, v192, v194, v196, v198, v200, *v202, v202[4], *v204, *&v204[4], v204[6], v206, SWORD2(v206), SBYTE6(v206), SHIBYTE(v206), v208, v210))
  {
    fence_24(a1);
    OUTLINED_FUNCTION_91_1(1400);
    OUTLINED_FUNCTION_89_2(2500);
    *(a1 + 4602) = 3600;
    *(a1 + 4610) = 4000;
    v21 = OUTLINED_FUNCTION_22_16();
    starttest(v21, v22);
    v23 = OUTLINED_FUNCTION_15_21();
    if (lpta_loadp_setscan_l(v23, v24))
    {
      while (2)
      {
        v25 = OUTLINED_FUNCTION_29_12();
        starttest(v25, v26);
        v27 = OUTLINED_FUNCTION_15_21();
        if (lpta_loadp_setscan_l(v27, v28))
        {
LABEL_17:
          v42 = OUTLINED_FUNCTION_43_4();
          starttest(v42, v43);
          v44 = OUTLINED_FUNCTION_15_21();
          if (lpta_loadp_setscan_l(v44, v45))
          {
LABEL_18:
            v46 = OUTLINED_FUNCTION_60_3();
            starttest(v46, v47);
            v48 = OUTLINED_FUNCTION_15_21();
            if (lpta_loadp_setscan_l(v48, v49))
            {
LABEL_19:
              v50 = OUTLINED_FUNCTION_26_15();
              starttest(v50, v51);
              v52 = OUTLINED_FUNCTION_63_3();
              if (lpta_loadp_setscan_l(v52, v53))
              {
LABEL_20:
                v54 = OUTLINED_FUNCTION_60_3();
                starttest(v54, v55);
                v56 = OUTLINED_FUNCTION_16_20();
                if (lpta_loadp_setscan_r(v56, v57))
                {
LABEL_21:
                  v58 = OUTLINED_FUNCTION_52_3();
                  starttest(v58, v59);
                  v60 = OUTLINED_FUNCTION_16_20();
                  if (lpta_loadp_setscan_r(v60, v61))
                  {
LABEL_22:
                    v62 = OUTLINED_FUNCTION_60_3();
                    starttest(v62, v63);
                    v64 = OUTLINED_FUNCTION_16_20();
                    if (lpta_loadp_setscan_r(v64, v65))
                    {
LABEL_23:
                      v66 = OUTLINED_FUNCTION_55_3();
                      starttest(v66, v67);
                      v68 = OUTLINED_FUNCTION_16_20();
                      if (lpta_loadp_setscan_r(v68, v69))
                      {
LABEL_24:
                        v70 = OUTLINED_FUNCTION_60_3();
                        starttest(v70, v71);
                        v72 = OUTLINED_FUNCTION_16_20();
                        if (lpta_loadp_setscan_r(v72, v73))
                        {
LABEL_31:
                          vretproc(a1);
                          result = 0;
                          goto LABEL_4;
                        }

                        v74 = OUTLINED_FUNCTION_60_3();
                        bspush_ca_scan(v74, v75);
                        v76 = OUTLINED_FUNCTION_3_25();
LABEL_57:
                        if (testFldeq(v76, v77, v78, v79))
                        {
                          goto LABEL_58;
                        }

LABEL_80:
                        if (!advance_tok(a1))
                        {
                          OUTLINED_FUNCTION_78_3(*(a1 + 4590) + 300);
                          v85 = v153 + 200;
                          goto LABEL_30;
                        }

LABEL_58:
                        v133 = *(a1 + 104);
                        if (v133)
                        {
                          v134 = OUTLINED_FUNCTION_74_3(v133);
                        }

                        else
                        {
                          v135 = OUTLINED_FUNCTION_84_2();
                          v134 = vback(v135, v136);
                        }

                        switch(v134)
                        {
                          case 1:
                            continue;
                          case 2:
                            v37 = OUTLINED_FUNCTION_59_3();
                            v39 = 2;
                            goto LABEL_10;
                          case 3:
                            goto LABEL_11;
                          case 4:
                            goto LABEL_20;
                          case 5:
                            goto LABEL_17;
                          case 6:
                            v149 = OUTLINED_FUNCTION_25_15();
                            bspush_ca_scan(v149, v150);
                            v31 = OUTLINED_FUNCTION_8_24();
                            goto LABEL_14;
                          case 7:
                            goto LABEL_15;
                          case 8:
                            v147 = OUTLINED_FUNCTION_32_10();
                            bspush_ca_scan(v147, v148);
                            v31 = OUTLINED_FUNCTION_2_26();
                            goto LABEL_14;
                          case 9:
                            v31 = OUTLINED_FUNCTION_6_24();
                            goto LABEL_14;
                          case 10:
                            goto LABEL_18;
                          case 11:
                            v98 = OUTLINED_FUNCTION_14_21();
                            goto LABEL_35;
                          case 12:
                            goto LABEL_36;
                          case 13:
                            goto LABEL_19;
                          case 14:
                            v143 = OUTLINED_FUNCTION_46_4();
                            bspush_ca_scan(v143, v144);
                            v111 = OUTLINED_FUNCTION_13_23();
                            v114 = 24;
                            goto LABEL_42;
                          case 15:
                            goto LABEL_43;
                          case 16:
                            v111 = OUTLINED_FUNCTION_13_23();
                            v114 = 28;
                            goto LABEL_42;
                          case 17:
                            v139 = OUTLINED_FUNCTION_53_3();
                            bspush_ca_scan(v139, v140);
                            v123 = OUTLINED_FUNCTION_12_23();
                            goto LABEL_45;
                          case 18:
                            goto LABEL_46;
                          case 19:
                            v123 = OUTLINED_FUNCTION_11_23();
                            goto LABEL_45;
                          case 20:
                            goto LABEL_21;
                          case 21:
                            v82 = OUTLINED_FUNCTION_59_3();
                            v84 = 2;
                            goto LABEL_27;
                          case 22:
                            goto LABEL_28;
                          case 23:
                            goto LABEL_31;
                          case 24:
                            goto LABEL_22;
                          case 25:
                            v145 = OUTLINED_FUNCTION_60_3();
                            bspush_ca_scan(v145, v146);
                            v92 = OUTLINED_FUNCTION_8_24();
                            goto LABEL_48;
                          case 26:
                            goto LABEL_49;
                          case 27:
                            v151 = OUTLINED_FUNCTION_60_3();
                            bspush_ca_scan(v151, v152);
                            v92 = OUTLINED_FUNCTION_2_26();
                            goto LABEL_48;
                          case 28:
                            v92 = OUTLINED_FUNCTION_6_24();
                            goto LABEL_48;
                          case 29:
                            goto LABEL_23;
                          case 30:
                            v105 = OUTLINED_FUNCTION_14_21();
                            goto LABEL_51;
                          case 31:
                            goto LABEL_52;
                          case 32:
                            goto LABEL_24;
                          case 33:
                            v137 = OUTLINED_FUNCTION_60_3();
                            bspush_ca_scan(v137, v138);
                            v117 = OUTLINED_FUNCTION_13_23();
                            v120 = 24;
                            goto LABEL_54;
                          case 34:
                            goto LABEL_55;
                          case 35:
                            v117 = OUTLINED_FUNCTION_13_23();
                            v120 = 28;
                            goto LABEL_54;
                          case 36:
                            v141 = OUTLINED_FUNCTION_60_3();
                            bspush_ca_scan(v141, v142);
                            v76 = OUTLINED_FUNCTION_12_23();
                            goto LABEL_57;
                          case 37:
                            goto LABEL_80;
                          case 38:
                            v76 = OUTLINED_FUNCTION_11_23();
                            goto LABEL_57;
                          default:
                            goto LABEL_3;
                        }
                      }

                      v115 = OUTLINED_FUNCTION_60_3();
                      bspush_ca_scan(v115, v116);
                      v117 = OUTLINED_FUNCTION_7_24();
LABEL_54:
                      if (testFldeq(v117, v118, v119, v120))
                      {
                        goto LABEL_58;
                      }

LABEL_55:
                      if (advance_tok(a1))
                      {
                        goto LABEL_58;
                      }

                      OUTLINED_FUNCTION_117_0();
                      OUTLINED_FUNCTION_78_3(v131);
                      v85 = v132 + 300;
                    }

                    else
                    {
                      v103 = OUTLINED_FUNCTION_60_3();
                      bspush_ca_scan(v103, v104);
                      v105 = OUTLINED_FUNCTION_0_28();
LABEL_51:
                      if (testFldeq(v105, v106, v107, v108))
                      {
                        goto LABEL_58;
                      }

LABEL_52:
                      if (advance_tok(a1))
                      {
                        goto LABEL_58;
                      }

                      OUTLINED_FUNCTION_78_3(*(a1 + 4590) - 100);
                      v85 = v130 - 200;
                    }
                  }

                  else
                  {
                    v86 = OUTLINED_FUNCTION_56_3();
                    bspush_ca_scan(v86, v87);
                    v88 = OUTLINED_FUNCTION_0_28();
                    if (testFldeq(v88, v89, v90, v91))
                    {
                      goto LABEL_58;
                    }

                    v92 = OUTLINED_FUNCTION_1_26();
LABEL_48:
                    if (testFldeq(v92, v93, v94, v95))
                    {
                      goto LABEL_58;
                    }

LABEL_49:
                    if (advance_tok(a1))
                    {
                      goto LABEL_58;
                    }

                    OUTLINED_FUNCTION_75_3();
                    v85 = v129 - 300;
                  }
                }

                else
                {
                  v80 = OUTLINED_FUNCTION_57_3();
                  bspush_ca_scan(v80, v81);
                  v82 = OUTLINED_FUNCTION_59_3();
                  v84 = 1;
LABEL_27:
                  if (testFldeq(v82, v83, 10, v84))
                  {
                    goto LABEL_58;
                  }

LABEL_28:
                  if (advance_tok(a1))
                  {
                    goto LABEL_58;
                  }

                  OUTLINED_FUNCTION_99_1();
                }

LABEL_30:
                *(a1 + 4598) = v85;
                goto LABEL_31;
              }

              v121 = OUTLINED_FUNCTION_60_3();
              bspush_ca_scan(v121, v122);
              v123 = OUTLINED_FUNCTION_3_25();
LABEL_45:
              if (testFldeq(v123, v124, v125, v126))
              {
                goto LABEL_58;
              }

LABEL_46:
              if (advance_tok(a1))
              {
                goto LABEL_58;
              }

              OUTLINED_FUNCTION_79_3(*(a1 + 4586) + 300);
              v40 = v128 + 200;
            }

            else
            {
              v109 = OUTLINED_FUNCTION_34_9();
              bspush_ca_scan(v109, v110);
              v111 = OUTLINED_FUNCTION_7_24();
LABEL_42:
              if (testFldeq(v111, v112, v113, v114))
              {
                goto LABEL_58;
              }

LABEL_43:
              if (advance_tok(a1))
              {
                goto LABEL_58;
              }

              OUTLINED_FUNCTION_79_3(*(a1 + 4586) + 400);
              v40 = v127 + 300;
            }
          }

          else
          {
            v96 = OUTLINED_FUNCTION_42_4();
            bspush_ca_scan(v96, v97);
            v98 = OUTLINED_FUNCTION_0_28();
LABEL_35:
            if (testFldeq(v98, v99, v100, v101))
            {
              goto LABEL_58;
            }

LABEL_36:
            if (advance_tok(a1))
            {
              goto LABEL_58;
            }

            OUTLINED_FUNCTION_79_3(*(a1 + 4586) - 150);
            v40 = v102 - 200;
          }
        }

        else
        {
          bspush_ca_scan(a1, 6);
          v29 = OUTLINED_FUNCTION_59_3();
          if (testFldeq(v29, v30, 6, 3))
          {
            goto LABEL_58;
          }

          v31 = OUTLINED_FUNCTION_1_26();
LABEL_14:
          if (testFldeq(v31, v32, v33, v34))
          {
            goto LABEL_58;
          }

LABEL_15:
          if (advance_tok(a1))
          {
            goto LABEL_58;
          }

          OUTLINED_FUNCTION_79_3(*(a1 + 4586) - 250);
          v40 = v41 - 300;
        }

        break;
      }
    }

    else
    {
      v35 = OUTLINED_FUNCTION_28_12();
      bspush_ca_scan(v35, v36);
      v37 = OUTLINED_FUNCTION_59_3();
      v39 = 1;
LABEL_10:
      if (testFldeq(v37, v38, 10, v39))
      {
        goto LABEL_58;
      }

LABEL_11:
      if (advance_tok(a1))
      {
        goto LABEL_58;
      }

      OUTLINED_FUNCTION_95_1();
    }

    *(a1 + 4594) = v40;
    goto LABEL_20;
  }

LABEL_3:
  vretproc(a1);
  result = 94;
LABEL_4:
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t por_high_pal_Fv(uint64_t a1)
{
  OUTLINED_FUNCTION_36_8(*MEMORY[0x277D85DE8], v103);
  OUTLINED_FUNCTION_31_11(v3, v4, v5, v6, v7, v8, v9, v10, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142, v144, v146, v148, v150, v152, v154, v156, v158);
  v11 = setjmp(v1);
  if (!v11 && !OUTLINED_FUNCTION_10_24(v11, v12, v13, v14, v15, v16, v17, v18, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, v141, v143, v145, v147, v149, *v151, v151[4], *v153, *&v153[4], v153[6], v155, SWORD2(v155), SBYTE6(v155), SHIBYTE(v155), v157, v159))
  {
    fence_24(a1);
    OUTLINED_FUNCTION_91_1(2000);
    OUTLINED_FUNCTION_89_2(2650);
    v21 = OUTLINED_FUNCTION_15_21();
    if (!lpta_loadp_setscan_l(v21, v22))
    {
      OUTLINED_FUNCTION_17_19();
      if (!test_string_s())
      {
        OUTLINED_FUNCTION_79_3(*(a1 + 4586) + 300);
        *(a1 + 4594) = v43 + 50;
        v23 = 0;
        goto LABEL_23;
      }
    }

    v23 = 0;
    while (2)
    {
      v24 = OUTLINED_FUNCTION_15_21();
      if (lpta_loadp_setscan_l(v24, v25) || (OUTLINED_FUNCTION_17_19(), test_string_s()))
      {
LABEL_10:
        v26 = OUTLINED_FUNCTION_26_15();
        starttest(v26, v27);
        v28 = OUTLINED_FUNCTION_63_3();
        if (lpta_loadp_setscan_l(v28, v29))
        {
LABEL_11:
          v30 = OUTLINED_FUNCTION_15_21();
          if (!lpta_loadp_setscan_l(v30, v31))
          {
            OUTLINED_FUNCTION_17_19();
            if (!test_string_s())
            {
              *(a1 + 4586) -= 50;
              goto LABEL_23;
            }
          }

LABEL_13:
          v32 = OUTLINED_FUNCTION_15_21();
          if (lpta_loadp_setscan_l(v32, v33) || (OUTLINED_FUNCTION_17_19(), test_string_s()))
          {
LABEL_23:
            v44 = OUTLINED_FUNCTION_16_20();
            if (lpta_loadp_setscan_r(v44, v45) || (OUTLINED_FUNCTION_17_19(), test_string_s()))
            {
LABEL_25:
              v46 = OUTLINED_FUNCTION_43_4();
              starttest(v46, v47);
              v48 = OUTLINED_FUNCTION_16_20();
              if (lpta_loadp_setscan_r(v48, v49))
              {
LABEL_26:
                v50 = OUTLINED_FUNCTION_16_20();
                if (lpta_loadp_setscan_r(v50, v51) || (OUTLINED_FUNCTION_17_19(), test_string_s()))
                {
LABEL_28:
                  v52 = OUTLINED_FUNCTION_32_10();
                  starttest(v52, v53);
                  v54 = OUTLINED_FUNCTION_16_20();
                  if (!lpta_loadp_setscan_r(v54, v55))
                  {
                    v56 = OUTLINED_FUNCTION_17_19();
                    if (!testFldeq(v56, v57, v58, 2))
                    {
                      OUTLINED_FUNCTION_34_9();
                      bspush_ca_scan_boa();
                      v59 = OUTLINED_FUNCTION_3_25();
                      goto LABEL_39;
                    }

                    goto LABEL_42;
                  }

LABEL_36:
                  v72 = OUTLINED_FUNCTION_40_5();
                  starttest(v72, v73);
                  v74 = OUTLINED_FUNCTION_15_21();
                  if (lpta_loadp_setscan_l(v74, v75))
                  {
LABEL_56:
                    v95 = OUTLINED_FUNCTION_63_3();
                    if (!lpta_loadp_setscan_l(v95, v96))
                    {
                      v97 = *(a1 + 4590);
                      if (v97 >= 1)
                      {
                        *(a1 + 4586) = v97;
                      }

LABEL_59:
                      v98 = *(a1 + 4598);
                      if (v98 >= 1)
                      {
                        *(a1 + 4594) = v98;
                      }
                    }

LABEL_65:
                    vretproc(a1);
                    result = 0;
                    goto LABEL_4;
                  }

                  v76 = OUTLINED_FUNCTION_17_19();
                  if (!testFldeq(v76, v77, v78, 1))
                  {
                    OUTLINED_FUNCTION_46_4();
                    bspush_ca_scan_boa();
                    v59 = OUTLINED_FUNCTION_5_24();
LABEL_39:
                    if (!testFldeq(v59, v60, v61, v62))
                    {
                      v23 = 1;
                    }
                  }

LABEL_42:
                  v79 = v23;
LABEL_43:
                  v80 = *(a1 + 104);
                  if (v80)
                  {
                    v81 = OUTLINED_FUNCTION_49_3(v80);
                  }

                  else
                  {
                    v81 = vback(a1, v79);
                    v23 = 0;
                  }

                  switch(v81)
                  {
                    case 1:
                      continue;
                    case 2:
                      goto LABEL_23;
                    case 3:
                      goto LABEL_10;
                    case 4:
                      goto LABEL_11;
                    case 5:
                      v82 = OUTLINED_FUNCTION_14_21();
                      testFldeq(v82, v83, v84, v85);
                      OUTLINED_FUNCTION_90_2();
                      if (!v86)
                      {
                        goto LABEL_17;
                      }

                      goto LABEL_43;
                    case 6:
                      goto LABEL_17;
                    case 7:
                      goto LABEL_13;
                    case 8:
                      goto LABEL_25;
                    case 9:
                      goto LABEL_36;
                    case 10:
                      goto LABEL_26;
                    case 11:
                      v89 = OUTLINED_FUNCTION_14_21();
                      testFldeq(v89, v90, v91, v92);
                      OUTLINED_FUNCTION_94_1();
                      if (!v93)
                      {
                        goto LABEL_41;
                      }

                      goto LABEL_43;
                    case 12:
                      goto LABEL_41;
                    case 13:
                      goto LABEL_28;
                    case 14:
                      bspop_boa(a1);
                      v88 = advance_tok(a1);
                      v79 = v23;
                      if (v88)
                      {
                        goto LABEL_43;
                      }

                      *(a1 + 4590) -= 100;
                      goto LABEL_36;
                    case 15:
                      goto LABEL_56;
                    case 16:
                      bspop_boa(a1);
                      v87 = advance_tok(a1);
                      v79 = v23;
                      if (v87)
                      {
                        goto LABEL_43;
                      }

                      OUTLINED_FUNCTION_106_0();
                      if (v99 == v100)
                      {
                        *(a1 + 4590) = v101;
                      }

                      goto LABEL_63;
                    case 17:
LABEL_63:
                      OUTLINED_FUNCTION_96_1();
                      if (v99 == v100)
                      {
                        *(a1 + 4598) = v102;
                      }

                      break;
                    case 18:
                    case 19:
                    case 21:
                      goto LABEL_65;
                    case 20:
                      goto LABEL_59;
                    default:
                      goto LABEL_3;
                  }

                  goto LABEL_65;
                }

                OUTLINED_FUNCTION_99_1();
              }

              else
              {
                v63 = OUTLINED_FUNCTION_42_4();
                bspush_ca_scan(v63, v64);
                v65 = OUTLINED_FUNCTION_0_28();
                if (testFldeq(v65, v66, v67, v68))
                {
                  goto LABEL_42;
                }

LABEL_41:
                if (OUTLINED_FUNCTION_112_0())
                {
                  goto LABEL_42;
                }

                OUTLINED_FUNCTION_75_3();
                v71 = v94 - 250;
              }
            }

            else
            {
              OUTLINED_FUNCTION_117_0();
              OUTLINED_FUNCTION_78_3(v69);
              v71 = v70 + 350;
            }

            *(a1 + 4598) = v71;
            goto LABEL_36;
          }

          OUTLINED_FUNCTION_95_1();
        }

        else
        {
          v35 = OUTLINED_FUNCTION_29_12();
          bspush_ca_scan(v35, v36);
          v37 = OUTLINED_FUNCTION_0_28();
          if (testFldeq(v37, v38, v39, v40))
          {
            goto LABEL_42;
          }

LABEL_17:
          if (OUTLINED_FUNCTION_108_0())
          {
            goto LABEL_42;
          }

          OUTLINED_FUNCTION_79_3(*(a1 + 4586) - 100);
          v34 = v41 - 200;
        }
      }

      else
      {
        OUTLINED_FUNCTION_79_3(*(a1 + 4586) + 200);
        v34 = v42 + 250;
      }

      break;
    }

    *(a1 + 4594) = v34;
    goto LABEL_23;
  }

LABEL_3:
  vretproc(a1);
  result = 94;
LABEL_4:
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t por_labial_Fv(uint64_t a1)
{
  OUTLINED_FUNCTION_36_8(*MEMORY[0x277D85DE8], v207);
  OUTLINED_FUNCTION_31_11(v3, v4, v5, v6, v7, v8, v9, v10, v208, v210, v212, v214, v216, v218, v220, v222, v224, v226, v228, v230, v232, v234, v236, v238, v240, v242, v244, v246, v248, v250, v252, v254, v256, v258, v260, v262);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_10_24(v11, v12, v13, v14, v15, v16, v17, v18, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249, v251, v253, *v255, v255[4], *v257, *&v257[4], v257[6], v259, SWORD2(v259), SBYTE6(v259), SHIBYTE(v259), v261, v263))
  {
LABEL_3:
    vretproc(a1);
    result = 94;
    goto LABEL_4;
  }

  fence_24(a1);
  OUTLINED_FUNCTION_91_1(900);
  OUTLINED_FUNCTION_89_2(2300);
  OUTLINED_FUNCTION_97_1(3300);
  *(a1 + 4610) = 3600;
  *(a1 + 4614) = 3600;
  v21 = OUTLINED_FUNCTION_22_16();
  starttest(v21, v22);
  v23 = OUTLINED_FUNCTION_15_21();
  if (!lpta_loadp_setscan_l(v23, v24))
  {
    v150 = OUTLINED_FUNCTION_14_21();
    if (testFldeq(v150, v151, v152, v153))
    {
      v61 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_28_12();
      bspush_ca_scan_boa();
      v154 = OUTLINED_FUNCTION_2_26();
      v61 = !testFldeq(v154, v155, v156, v157);
    }

    goto LABEL_50;
  }

  v1 = 0;
  while (2)
  {
    v25 = OUTLINED_FUNCTION_15_21();
    if (!lpta_loadp_setscan_l(v25, v26))
    {
      OUTLINED_FUNCTION_17_19();
      if (!test_string_s())
      {
        v70 = *(a1 + 4586) + 300;
        goto LABEL_22;
      }
    }

LABEL_9:
    v27 = OUTLINED_FUNCTION_29_12();
    starttest(v27, v28);
    v29 = OUTLINED_FUNCTION_15_21();
    if (lpta_loadp_setscan_l(v29, v30))
    {
LABEL_10:
      v31 = OUTLINED_FUNCTION_25_15();
      starttest(v31, v32);
      v33 = OUTLINED_FUNCTION_15_21();
      if (lpta_loadp_setscan_l(v33, v34))
      {
LABEL_11:
        v35 = OUTLINED_FUNCTION_40_5();
        starttest(v35, v36);
        v37 = OUTLINED_FUNCTION_15_21();
        if (lpta_loadp_setscan_l(v37, v38))
        {
LABEL_12:
          v39 = OUTLINED_FUNCTION_37_8();
          starttest(v39, v40);
          v41 = OUTLINED_FUNCTION_15_21();
          if (!lpta_loadp_setscan_l(v41, v42))
          {
            v43 = OUTLINED_FUNCTION_46_4();
            bspush_ca_scan(v43, v44);
            v45 = OUTLINED_FUNCTION_0_28();
            if (testFldeq(v45, v46, v47, v48))
            {
              goto LABEL_95;
            }

            v49 = OUTLINED_FUNCTION_1_26();
LABEL_89:
            v200 = testFldeq(v49, v50, v51, v52);
            v79 = v1;
            v61 = v1;
            if (v200)
            {
              goto LABEL_50;
            }

LABEL_90:
            v1 = v79;
            if (advance_tok(a1))
            {
              goto LABEL_95;
            }

            *(a1 + 4586) -= 150;
            *(a1 + 4602) -= 100;
          }

          goto LABEL_23;
        }

        v114 = OUTLINED_FUNCTION_3_25();
        if (testFldeq(v114, v115, v116, v117) || advance_tok(a1))
        {
          goto LABEL_95;
        }

        v70 = *(a1 + 4586) + 400;
      }

      else
      {
        v64 = OUTLINED_FUNCTION_32_10();
        bspush_ca_scan(v64, v65);
        v66 = OUTLINED_FUNCTION_13_23();
        v69 = 28;
LABEL_75:
        testFldeq(v66, v67, v68, v69);
        OUTLINED_FUNCTION_90_2();
        if (v188)
        {
          goto LABEL_50;
        }

LABEL_76:
        if (OUTLINED_FUNCTION_108_0())
        {
          goto LABEL_95;
        }

        v70 = *(a1 + 4586) + 500;
      }

LABEL_22:
      *(a1 + 4586) = v70;
      goto LABEL_23;
    }

    v53 = OUTLINED_FUNCTION_41_4();
    bspush_ca_scan(v53, v54);
    v55 = OUTLINED_FUNCTION_13_23();
    v58 = 32;
LABEL_16:
    v59 = testFldeq(v55, v56, v57, v58);
    v60 = v1;
    v61 = v1;
    if (v59)
    {
      goto LABEL_50;
    }

LABEL_17:
    v1 = v60;
    if (advance_tok(a1))
    {
      goto LABEL_95;
    }

    OUTLINED_FUNCTION_79_3(*(a1 + 4586) + 200);
    v63 = v62 + 130;
LABEL_19:
    *(a1 + 4594) = v63;
LABEL_23:
    v71 = OUTLINED_FUNCTION_60_3();
    starttest(v71, v72);
    v73 = OUTLINED_FUNCTION_16_20();
    if (!lpta_loadp_setscan_r(v73, v74))
    {
      v118 = OUTLINED_FUNCTION_14_21();
      if (testFldeq(v118, v119, v120, v121))
      {
        goto LABEL_95;
      }

      OUTLINED_FUNCTION_57_3();
      bspush_ca_scan_boa();
      v122 = OUTLINED_FUNCTION_2_26();
LABEL_40:
      testFldeq(v122, v123, v124, v125);
      OUTLINED_FUNCTION_113_0();
      goto LABEL_50;
    }

LABEL_24:
    v75 = OUTLINED_FUNCTION_16_20();
    if (!lpta_loadp_setscan_r(v75, v76))
    {
      OUTLINED_FUNCTION_17_19();
      if (!test_string_s())
      {
        goto LABEL_82;
      }
    }

LABEL_26:
    v82 = OUTLINED_FUNCTION_52_3();
    starttest(v82, v83);
    v84 = OUTLINED_FUNCTION_16_20();
    if (!lpta_loadp_setscan_r(v84, v85))
    {
      v126 = OUTLINED_FUNCTION_56_3();
      bspush_ca_scan(v126, v127);
      v128 = OUTLINED_FUNCTION_13_23();
      v131 = 28;
LABEL_85:
      testFldeq(v128, v129, v130, v131);
      OUTLINED_FUNCTION_94_1();
      if (!v197)
      {
LABEL_86:
        v198 = OUTLINED_FUNCTION_112_0();
        v61 = v1;
        if (!v198)
        {
          OUTLINED_FUNCTION_78_3(*(a1 + 4590) + 500);
          v206 = v199 + 200;
LABEL_100:
          *(a1 + 4598) = v206;
          goto LABEL_101;
        }
      }

      goto LABEL_50;
    }

LABEL_27:
    v86 = OUTLINED_FUNCTION_51_3();
    starttest(v86, v87);
    v88 = OUTLINED_FUNCTION_16_20();
    if (!lpta_loadp_setscan_r(v88, v89))
    {
      v132 = OUTLINED_FUNCTION_3_25();
      if (testFldeq(v132, v133, v134, v135))
      {
        goto LABEL_95;
      }

      v136 = advance_tok(a1);
      v61 = v1;
      if (v136)
      {
        goto LABEL_50;
      }

      OUTLINED_FUNCTION_117_0();
      goto LABEL_99;
    }

LABEL_28:
    v90 = OUTLINED_FUNCTION_55_3();
    starttest(v90, v91);
    v92 = OUTLINED_FUNCTION_16_20();
    if (!lpta_loadp_setscan_r(v92, v93))
    {
      v138 = OUTLINED_FUNCTION_60_3();
      bspush_ca_scan(v138, v139);
      v140 = OUTLINED_FUNCTION_18_18();
      v143 = 3;
LABEL_80:
      v191 = testFldeq(v140, v141, v142, v143);
      v81 = v1;
      v61 = v1;
      if (v191)
      {
        goto LABEL_50;
      }

LABEL_81:
      v1 = v81;
      v192 = advance_tok(a1);
      v61 = v1;
      if (v192)
      {
LABEL_50:
        v158 = *(a1 + 104);
        if (v158)
        {
          v159 = OUTLINED_FUNCTION_49_3(v158);
        }

        else
        {
          v159 = vback(a1, v61);
          v1 = 0;
        }

        v60 = v1;
        v77 = v1;
        v79 = v1;
        v78 = v1;
        v81 = v1;
        v160 = v1;
        v80 = v1;
        switch(v159)
        {
          case 1:
            continue;
          case 2:
            bspop_boa(a1);
            v161 = advance_tok(a1);
            v61 = v1;
            if (v161)
            {
              goto LABEL_50;
            }

            OUTLINED_FUNCTION_95_1();
            goto LABEL_19;
          case 3:
            goto LABEL_23;
          case 4:
            goto LABEL_9;
          case 5:
            goto LABEL_10;
          case 6:
            v55 = OUTLINED_FUNCTION_18_18();
            v58 = 2;
            goto LABEL_16;
          case 7:
            goto LABEL_17;
          case 8:
            goto LABEL_11;
          case 9:
            v186 = OUTLINED_FUNCTION_42_4();
            bspush_ca_scan(v186, v187);
            v66 = OUTLINED_FUNCTION_7_24();
            goto LABEL_75;
          case 10:
            goto LABEL_76;
          case 11:
            v182 = OUTLINED_FUNCTION_58_3();
            bspush_ca_scan(v182, v183);
            v66 = OUTLINED_FUNCTION_13_23();
            v69 = 35;
            goto LABEL_75;
          case 12:
            v178 = OUTLINED_FUNCTION_60_3();
            bspush_ca_scan(v178, v179);
            v66 = OUTLINED_FUNCTION_12_23();
            goto LABEL_75;
          case 13:
            v176 = OUTLINED_FUNCTION_34_9();
            bspush_ca_scan(v176, v177);
            v66 = OUTLINED_FUNCTION_11_23();
            goto LABEL_75;
          case 14:
            v66 = OUTLINED_FUNCTION_13_23();
            v69 = 24;
            goto LABEL_75;
          case 15:
            goto LABEL_12;
          case 16:
            v189 = OUTLINED_FUNCTION_54_3();
            bspush_ca_scan(v189, v190);
            v49 = OUTLINED_FUNCTION_8_24();
            goto LABEL_89;
          case 17:
            goto LABEL_90;
          case 18:
            v193 = OUTLINED_FUNCTION_53_3();
            bspush_ca_scan(v193, v194);
            v49 = OUTLINED_FUNCTION_2_26();
            goto LABEL_89;
          case 19:
            v49 = OUTLINED_FUNCTION_6_24();
            goto LABEL_89;
          case 20:
            goto LABEL_24;
          case 21:
            bspop_boa(a1);
            v162 = advance_tok(a1);
            v61 = v1;
            if (v162)
            {
              goto LABEL_50;
            }

            OUTLINED_FUNCTION_99_1();
            goto LABEL_100;
          case 22:
          case 40:
            goto LABEL_101;
          case 23:
            goto LABEL_26;
          case 24:
            goto LABEL_27;
          case 25:
            v184 = OUTLINED_FUNCTION_60_3();
            bspush_ca_scan(v184, v185);
            v128 = OUTLINED_FUNCTION_7_24();
            goto LABEL_85;
          case 26:
            goto LABEL_86;
          case 27:
            v174 = OUTLINED_FUNCTION_60_3();
            bspush_ca_scan(v174, v175);
            v128 = OUTLINED_FUNCTION_13_23();
            v131 = 35;
            goto LABEL_85;
          case 28:
            v195 = OUTLINED_FUNCTION_60_3();
            bspush_ca_scan(v195, v196);
            v128 = OUTLINED_FUNCTION_12_23();
            goto LABEL_85;
          case 29:
            v180 = OUTLINED_FUNCTION_60_3();
            bspush_ca_scan(v180, v181);
            v128 = OUTLINED_FUNCTION_11_23();
            goto LABEL_85;
          case 30:
            v128 = OUTLINED_FUNCTION_13_23();
            v131 = 24;
            goto LABEL_85;
          case 31:
            goto LABEL_28;
          case 32:
            goto LABEL_29;
          case 33:
            v140 = OUTLINED_FUNCTION_18_18();
            v143 = 2;
            goto LABEL_80;
          case 34:
            goto LABEL_81;
          case 35:
            goto LABEL_30;
          case 36:
            v146 = OUTLINED_FUNCTION_18_18();
            v149 = 2;
            goto LABEL_93;
          case 37:
            goto LABEL_94;
          case 38:
            goto LABEL_98;
          case 39:
            bspop_boa(a1);
            v172 = advance_tok(a1);
            v61 = v1;
            if (v172)
            {
              goto LABEL_50;
            }

            OUTLINED_FUNCTION_78_3(*(a1 + 4590) + 200);
            v206 = v173 + 130;
            goto LABEL_100;
          case 41:
            v169 = OUTLINED_FUNCTION_60_3();
            bspush_ca_scan(v169, v170);
            v163 = OUTLINED_FUNCTION_8_24();
            goto LABEL_61;
          case 42:
            goto LABEL_33;
          case 43:
            v167 = OUTLINED_FUNCTION_60_3();
            bspush_ca_scan(v167, v168);
            v163 = OUTLINED_FUNCTION_2_26();
            goto LABEL_61;
          case 44:
            v163 = OUTLINED_FUNCTION_6_24();
LABEL_61:
            v171 = testFldeq(v163, v164, v165, v166);
            v80 = v1;
            v61 = v1;
            if (!v171)
            {
              goto LABEL_33;
            }

            goto LABEL_50;
          case 45:
            goto LABEL_102;
          default:
            goto LABEL_3;
        }
      }

LABEL_82:
      v137 = *(a1 + 4590) + 300;
      goto LABEL_99;
    }

    break;
  }

LABEL_29:
  v94 = OUTLINED_FUNCTION_60_3();
  starttest(v94, v95);
  v96 = OUTLINED_FUNCTION_16_20();
  if (lpta_loadp_setscan_r(v96, v97))
  {
LABEL_30:
    v98 = OUTLINED_FUNCTION_60_3();
    starttest(v98, v99);
    v100 = OUTLINED_FUNCTION_16_20();
    if (lpta_loadp_setscan_r(v100, v101))
    {
      goto LABEL_101;
    }

    v102 = OUTLINED_FUNCTION_60_3();
    bspush_ca_scan(v102, v103);
    v104 = OUTLINED_FUNCTION_0_28();
    if (!testFldeq(v104, v105, v106, v107))
    {
      v108 = OUTLINED_FUNCTION_1_26();
      v112 = testFldeq(v108, v109, v110, v111);
      v61 = v1;
      v80 = v1;
      if (!v112)
      {
LABEL_33:
        v1 = v80;
        v113 = advance_tok(a1);
        v61 = v1;
        if (!v113)
        {
          *(a1 + 4590) -= 150;
          *(a1 + 4606) -= 100;
          goto LABEL_101;
        }
      }

      goto LABEL_50;
    }

LABEL_95:
    v61 = v1;
    goto LABEL_50;
  }

  v144 = OUTLINED_FUNCTION_60_3();
  bspush_ca_scan(v144, v145);
  v146 = OUTLINED_FUNCTION_13_23();
  v149 = 32;
LABEL_93:
  v201 = testFldeq(v146, v147, v148, v149);
  v160 = v1;
  v61 = v1;
  if (v201)
  {
    goto LABEL_50;
  }

LABEL_94:
  v1 = v160;
  if (advance_tok(a1))
  {
    goto LABEL_95;
  }

  v202 = OUTLINED_FUNCTION_60_3();
  starttest(v202, v203);
  v204 = OUTLINED_FUNCTION_15_21();
  if (!lpta_loadp_setscan_l(v204, v205))
  {
    OUTLINED_FUNCTION_60_3();
    bspush_ca_scan_boa();
    v122 = OUTLINED_FUNCTION_18_18();
    v125 = 4;
    goto LABEL_40;
  }

LABEL_98:
  *(a1 + 4586) -= 100;
  v137 = *(a1 + 4590) - 100;
LABEL_99:
  *(a1 + 4590) = v137;
LABEL_101:
  por_coart_Fv(a1, v61, v77, v78, v79, v80, v60, v81);
LABEL_102:
  vretproc(a1);
  result = 0;
LABEL_4:
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t por_coart_Fv(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v10 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_47_4(a1, a2, a3, a4, a5, a6, a7, a8, v239, v243, v247, v251, v255, v259, v263, v267, v271, v275, v279, v283, v287, v291, v295, v299, v303, v307, v311, v315, v319, v323, v327, v331, v335);
  OUTLINED_FUNCTION_69_3();
  OUTLINED_FUNCTION_110_0(v11, v12, v13, v14, v15, v16, v17, v18, v240, v244, v248, v252, v256, v260, v264, v268, v272, v276, v280, v284, v288, v292, v296, v300, v304, v308, v312, v316, v320, v324, v328, v332, v336, v338, v340, v342, v344, v346);
  v19 = setjmp(v8);
  if (!v19 && !OUTLINED_FUNCTION_30_11(v19, v20, v21, v22, v23, v24, v25, v26, v241, v245, v249, v253, v257, v261, v265, v269, v273, v277, v281, v285, v289, v293, v297, v301, v305, v309, v313, v317, v321, v325, v329, v333, v337, *v339, v339[4], *v341, *&v341[4], v341[6], v343, SWORD2(v343), SBYTE6(v343), SHIBYTE(v343), v345, v347))
  {
    v30 = OUTLINED_FUNCTION_76_3();
    push_ptr_init(v30, v31);
    fence_24(a1);
    v32 = OUTLINED_FUNCTION_22_16();
    starttest(v32, v33);
    v34 = OUTLINED_FUNCTION_15_21();
    v36 = lpta_loadp_setscan_l(v34, v35);
    v37 = 0;
    v38 = 0;
    if (v36)
    {
      while (2)
      {
        v39 = OUTLINED_FUNCTION_46_4();
        starttest(v39, v40);
        v41 = OUTLINED_FUNCTION_15_21();
        v43 = lpta_loadp_setscan_l(v41, v42);
        v44 = v38;
        if (!v43)
        {
LABEL_83:
          v38 = v44;
          OUTLINED_FUNCTION_85_2(17, v242, v246, v250, v254, v258, v262, v266, v270, v274, v278, v282, v286, v290, v294, v298, v302, v306, v310, v314, v318, v322, v326, v330, v334);
          OUTLINED_FUNCTION_54_3();
          bspush_ca_scan_boa();
          v184 = OUTLINED_FUNCTION_53_3();
          bspush_ca_scan(v184, v185);
          v186 = OUTLINED_FUNCTION_0_28();
          if (!testFldeq(v186, v187, v188, v189))
          {
            v175 = OUTLINED_FUNCTION_1_26();
LABEL_85:
            v190 = testFldeq(v175, v176, v177, v178);
            v60 = v38;
            v52 = v38;
            if (v190)
            {
              goto LABEL_14;
            }

LABEL_86:
            v38 = v60;
            break;
          }

LABEL_105:
          v52 = v38;
          goto LABEL_14;
        }

LABEL_89:
        v192 = OUTLINED_FUNCTION_60_3();
        starttest(v192, v193);
        v194 = OUTLINED_FUNCTION_15_21();
        v54 = lpta_loadp_setscan_l(v194, v195);
        v55 = v38;
        if (v54)
        {
LABEL_90:
          v38 = v55;
          v196 = OUTLINED_FUNCTION_60_3();
          starttest(v196, v197);
          v198 = OUTLINED_FUNCTION_15_21();
          if (lpta_loadp_setscan_l(v198, v199))
          {
LABEL_106:
            v27 = 0;
            goto LABEL_4;
          }

LABEL_91:
          OUTLINED_FUNCTION_85_2(43, v242, v246, v250, v254, v258, v262, v266, v270, v274, v278, v282, v286, v290, v294, v298, v302, v306, v310, v314, v318, v322, v326, v330, v334);
          v200 = OUTLINED_FUNCTION_60_3();
          bspush_ca_scan(v200, v201);
          v202 = OUTLINED_FUNCTION_0_28();
          if (testFldeq(v202, v203, v204, v205))
          {
            goto LABEL_105;
          }

          v206 = OUTLINED_FUNCTION_1_26();
          v210 = testFldeq(v206, v207, v208, v209);
          v52 = v38;
          if (v210)
          {
            goto LABEL_14;
          }

LABEL_93:
          if (OUTLINED_FUNCTION_112_0())
          {
            goto LABEL_105;
          }

          v211 = OUTLINED_FUNCTION_61_3();
          if (lpta_loadp_setscan_r(v211, v212))
          {
            goto LABEL_105;
          }

          if (advance_tok(a1))
          {
            goto LABEL_105;
          }

          if (OUTLINED_FUNCTION_45_4())
          {
            goto LABEL_105;
          }

          OUTLINED_FUNCTION_60_3();
          bspush_ca_scan_boa();
          v213 = OUTLINED_FUNCTION_60_3();
          bspush_ca_scan(v213, v214);
          v215 = OUTLINED_FUNCTION_0_28();
          if (testFldeq(v215, v216, v217, v218))
          {
            goto LABEL_105;
          }

          v219 = OUTLINED_FUNCTION_1_26();
          v223 = testFldeq(v219, v220, v221, v222);
          v52 = v38;
          v64 = v38;
          if (v223)
          {
            goto LABEL_14;
          }

LABEL_77:
          v38 = v64;
        }

        else
        {
LABEL_100:
          v224 = v38;
          v38 = 28;
          OUTLINED_FUNCTION_109_0(v54, v55, v61, v63, v56, v57, v58, v59, v242, v246, v250, v254, v258, v262, v266, v270, v274, v278, v282, v286, v290, v294, v298, v302, v306, v310, v314, v318, v322, v326, v330, v334);
          v225 = OUTLINED_FUNCTION_60_3();
          bspush_ca_scan(v225, v226);
          v227 = OUTLINED_FUNCTION_13_23();
          v230 = testFldeq(v227, v228, v229, 28);
          v52 = v224;
          if (v230)
          {
            goto LABEL_14;
          }

LABEL_101:
          if (OUTLINED_FUNCTION_108_0())
          {
            goto LABEL_105;
          }

          v231 = OUTLINED_FUNCTION_61_3();
          if (lpta_loadp_setscan_r(v231, v232) || advance_tok(a1) || OUTLINED_FUNCTION_45_4())
          {
            goto LABEL_105;
          }

          OUTLINED_FUNCTION_60_3();
          bspush_ca_scan_boa();
          v233 = OUTLINED_FUNCTION_60_3();
          bspush_ca_scan(v233, v234);
          v235 = OUTLINED_FUNCTION_13_23();
          v238 = testFldeq(v235, v236, v237, 28);
          v52 = v38;
          v62 = v38;
          if (v238)
          {
LABEL_14:
            v53 = *(a1 + 104);
            if (v53)
            {
              v54 = OUTLINED_FUNCTION_49_3(v53);
            }

            else
            {
              v54 = vback(a1, v52);
              v38 = 0;
            }

            v51 = v38;
            v60 = v38;
            v61 = v38;
            v62 = v38;
            v63 = v38;
            v64 = v38;
            switch(v54)
            {
              case 1:
                continue;
              case 2:
                v37 = v38;
                goto LABEL_9;
              case 3:
                bspop_boa(a1);
                v65 = OUTLINED_FUNCTION_61_3();
                v67 = lpta_loadp_setscan_r(v65, v66);
                v52 = v38;
                if (v67)
                {
                  goto LABEL_14;
                }

                v68 = advance_tok(a1);
                v52 = v38;
                if (v68)
                {
                  goto LABEL_14;
                }

                v69 = OUTLINED_FUNCTION_45_4();
                v52 = v38;
                if (v69)
                {
                  goto LABEL_14;
                }

                v70 = OUTLINED_FUNCTION_43_4();
                bspush_ca_scan(v70, v71);
                v72 = OUTLINED_FUNCTION_13_23();
                v75 = 28;
                goto LABEL_54;
              case 4:
                v128 = OUTLINED_FUNCTION_41_4();
                bspush_ca_scan(v128, v129);
                v112 = OUTLINED_FUNCTION_7_24();
                goto LABEL_61;
              case 5:
                goto LABEL_10;
              case 6:
                v159 = OUTLINED_FUNCTION_39_6();
                bspush_ca_scan(v159, v160);
                v112 = OUTLINED_FUNCTION_13_23();
                v115 = 35;
                goto LABEL_61;
              case 7:
                v122 = OUTLINED_FUNCTION_25_15();
                bspush_ca_scan(v122, v123);
                v112 = OUTLINED_FUNCTION_12_23();
                goto LABEL_61;
              case 8:
                v110 = OUTLINED_FUNCTION_32_10();
                bspush_ca_scan(v110, v111);
                v112 = OUTLINED_FUNCTION_11_23();
                goto LABEL_61;
              case 9:
                v112 = OUTLINED_FUNCTION_13_23();
                v115 = 24;
LABEL_61:
                v161 = testFldeq(v112, v113, v114, v115);
                v51 = v38;
                v52 = v38;
                if (!v161)
                {
                  goto LABEL_10;
                }

                goto LABEL_14;
              case 10:
                v120 = OUTLINED_FUNCTION_58_3();
                bspush_ca_scan(v120, v121);
                v72 = OUTLINED_FUNCTION_7_24();
                goto LABEL_54;
              case 11:
                goto LABEL_55;
              case 12:
                v142 = OUTLINED_FUNCTION_60_3();
                bspush_ca_scan(v142, v143);
                v72 = OUTLINED_FUNCTION_13_23();
                v75 = 35;
                goto LABEL_54;
              case 13:
                v106 = OUTLINED_FUNCTION_34_9();
                bspush_ca_scan(v106, v107);
                v72 = OUTLINED_FUNCTION_12_23();
                goto LABEL_54;
              case 14:
                v147 = OUTLINED_FUNCTION_40_5();
                bspush_ca_scan(v147, v148);
                v72 = OUTLINED_FUNCTION_11_23();
                goto LABEL_54;
              case 15:
                v72 = OUTLINED_FUNCTION_13_23();
                v75 = 24;
LABEL_54:
                v149 = testFldeq(v72, v73, v74, v75);
                v52 = v38;
                if (v149)
                {
                  goto LABEL_14;
                }

LABEL_55:
                v150 = advance_tok(a1);
                v52 = v38;
                if (v150)
                {
                  goto LABEL_14;
                }

                v151 = *(a1 + 4586);
                OUTLINED_FUNCTION_116_0();
                if (v78 != v79)
                {
                  goto LABEL_14;
                }

                v183 = v152 + 100;
                goto LABEL_88;
              case 16:
                goto LABEL_89;
              case 17:
                v44 = v38;
                goto LABEL_83;
              case 18:
                bspop_boa(a1);
                v130 = OUTLINED_FUNCTION_61_3();
                v132 = lpta_loadp_setscan_r(v130, v131);
                v52 = v38;
                if (v132)
                {
                  goto LABEL_14;
                }

                v133 = advance_tok(a1);
                v52 = v38;
                if (v133)
                {
                  goto LABEL_14;
                }

                v134 = OUTLINED_FUNCTION_45_4();
                v52 = v38;
                if (v134)
                {
                  goto LABEL_14;
                }

                v135 = OUTLINED_FUNCTION_60_3();
                bspush_ca_scan(v135, v136);
                v137 = OUTLINED_FUNCTION_0_28();
                v141 = testFldeq(v137, v138, v139, v140);
                v52 = v38;
                if (v141)
                {
                  goto LABEL_14;
                }

                v100 = OUTLINED_FUNCTION_1_26();
                goto LABEL_65;
              case 19:
                v181 = OUTLINED_FUNCTION_57_3();
                bspush_ca_scan(v181, v182);
                v175 = OUTLINED_FUNCTION_8_24();
                goto LABEL_85;
              case 20:
                goto LABEL_86;
              case 21:
                v179 = OUTLINED_FUNCTION_60_3();
                bspush_ca_scan(v179, v180);
                v175 = OUTLINED_FUNCTION_2_26();
                goto LABEL_85;
              case 22:
                v175 = OUTLINED_FUNCTION_6_24();
                goto LABEL_85;
              case 23:
                v104 = OUTLINED_FUNCTION_56_3();
                bspush_ca_scan(v104, v105);
                v100 = OUTLINED_FUNCTION_8_24();
                goto LABEL_65;
              case 24:
                goto LABEL_66;
              case 25:
                v98 = OUTLINED_FUNCTION_60_3();
                bspush_ca_scan(v98, v99);
                v100 = OUTLINED_FUNCTION_2_26();
                goto LABEL_65;
              case 26:
                v100 = OUTLINED_FUNCTION_6_24();
LABEL_65:
                v162 = testFldeq(v100, v101, v102, v103);
                v52 = v38;
                if (v162)
                {
                  goto LABEL_14;
                }

LABEL_66:
                v163 = advance_tok(a1);
                v52 = v38;
                if (v163)
                {
                  goto LABEL_14;
                }

                v164 = *(a1 + 4586);
                OUTLINED_FUNCTION_116_0();
                if (v78 != v79)
                {
                  goto LABEL_14;
                }

                v183 = v165 - 100;
LABEL_88:
                *(a1 + 4586) = v183;
                goto LABEL_89;
              case 27:
                v55 = v38;
                goto LABEL_90;
              case 28:
                goto LABEL_100;
              case 29:
                v118 = OUTLINED_FUNCTION_51_3();
                bspush_ca_scan(v118, v119);
                v94 = OUTLINED_FUNCTION_7_24();
                goto LABEL_73;
              case 30:
                goto LABEL_101;
              case 31:
                v92 = OUTLINED_FUNCTION_55_3();
                bspush_ca_scan(v92, v93);
                v94 = OUTLINED_FUNCTION_13_23();
                v97 = 35;
                goto LABEL_73;
              case 32:
                v169 = OUTLINED_FUNCTION_60_3();
                bspush_ca_scan(v169, v170);
                v94 = OUTLINED_FUNCTION_12_23();
                goto LABEL_73;
              case 33:
                v108 = OUTLINED_FUNCTION_60_3();
                bspush_ca_scan(v108, v109);
                v94 = OUTLINED_FUNCTION_11_23();
                goto LABEL_73;
              case 34:
                v94 = OUTLINED_FUNCTION_13_23();
                v97 = 24;
LABEL_73:
                testFldeq(v94, v95, v96, v97);
                OUTLINED_FUNCTION_90_2();
                if (!v171)
                {
                  goto LABEL_101;
                }

                goto LABEL_14;
              case 35:
                bspop_boa(a1);
                v124 = *(a1 + 4590);
                OUTLINED_FUNCTION_116_0();
                if (v78 != v79)
                {
                  goto LABEL_14;
                }

                v191 = v125 + 100;
                goto LABEL_87;
              case 36:
                v126 = OUTLINED_FUNCTION_60_3();
                bspush_ca_scan(v126, v127);
                v82 = OUTLINED_FUNCTION_7_24();
                goto LABEL_51;
              case 37:
                break;
              case 38:
                v116 = OUTLINED_FUNCTION_60_3();
                bspush_ca_scan(v116, v117);
                v82 = OUTLINED_FUNCTION_13_23();
                v85 = 35;
                goto LABEL_51;
              case 39:
                v80 = OUTLINED_FUNCTION_60_3();
                bspush_ca_scan(v80, v81);
                v82 = OUTLINED_FUNCTION_12_23();
                goto LABEL_51;
              case 40:
                v144 = OUTLINED_FUNCTION_60_3();
                bspush_ca_scan(v144, v145);
                v82 = OUTLINED_FUNCTION_11_23();
                goto LABEL_51;
              case 41:
                v82 = OUTLINED_FUNCTION_13_23();
                v85 = 24;
LABEL_51:
                v146 = testFldeq(v82, v83, v84, v85);
                v62 = v38;
                v52 = v38;
                if (!v146)
                {
                  break;
                }

                goto LABEL_14;
              case 42:
                goto LABEL_106;
              case 43:
                goto LABEL_91;
              case 44:
                v166 = OUTLINED_FUNCTION_60_3();
                bspush_ca_scan(v166, v167);
                v88 = OUTLINED_FUNCTION_8_24();
                goto LABEL_70;
              case 45:
                goto LABEL_93;
              case 46:
                v86 = OUTLINED_FUNCTION_60_3();
                bspush_ca_scan(v86, v87);
                v88 = OUTLINED_FUNCTION_2_26();
                goto LABEL_70;
              case 47:
                v88 = OUTLINED_FUNCTION_6_24();
LABEL_70:
                testFldeq(v88, v89, v90, v91);
                OUTLINED_FUNCTION_94_1();
                if (!v168)
                {
                  goto LABEL_93;
                }

                goto LABEL_14;
              case 48:
                bspop_boa(a1);
                v76 = *(a1 + 4590);
                OUTLINED_FUNCTION_116_0();
                if (v78 != v79)
                {
                  goto LABEL_14;
                }

                v191 = v77 - 100;
LABEL_87:
                v27 = 0;
                *(a1 + 4590) = v191;
                goto LABEL_4;
              case 49:
                v157 = OUTLINED_FUNCTION_60_3();
                bspush_ca_scan(v157, v158);
                v153 = OUTLINED_FUNCTION_8_24();
                goto LABEL_76;
              case 50:
                goto LABEL_77;
              case 51:
                v172 = OUTLINED_FUNCTION_60_3();
                bspush_ca_scan(v172, v173);
                v153 = OUTLINED_FUNCTION_2_26();
                goto LABEL_76;
              case 52:
                v153 = OUTLINED_FUNCTION_6_24();
LABEL_76:
                v174 = testFldeq(v153, v154, v155, v156);
                v64 = v38;
                v52 = v38;
                if (!v174)
                {
                  goto LABEL_77;
                }

                goto LABEL_14;
              default:
                goto LABEL_3;
            }
          }

          v38 = v62;
        }

        break;
      }
    }

    else
    {
LABEL_9:
      v45 = v37;
      OUTLINED_FUNCTION_85_2(2, v242, v246, v250, v254, v258, v262, v266, v270, v274, v278, v282, v286, v290, v294, v298, v302, v306, v310, v314, v318, v322, v326, v330, v334);
      OUTLINED_FUNCTION_37_8();
      bspush_ca_scan_boa();
      v46 = OUTLINED_FUNCTION_26_15();
      bspush_ca_scan(v46, v47);
      v48 = OUTLINED_FUNCTION_62_3();
      v50 = testFldeq(v48, v38, v49, 28);
      v51 = v45;
      v52 = v45;
      if (v50)
      {
        goto LABEL_14;
      }

LABEL_10:
      v38 = v51;
    }

    if (advance_tok(a1))
    {
      v52 = v38;
    }

    else
    {
      v52 = 1;
    }

    goto LABEL_14;
  }

LABEL_3:
  v27 = 94;
LABEL_4:
  vretproc(a1);
  v28 = *MEMORY[0x277D85DE8];
  return v27;
}

uint64_t por_dental_Fv(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v11 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_47_4(a1, a2, a3, a4, a5, a6, a7, a8, v330, v334, v338, v342, v346, v350, v354, v358, v362, v366, v370, v374, v378, v382, v386, v390, v394, v398, v402, v406, v410, v414, v418, v422, v426);
  OUTLINED_FUNCTION_69_3();
  OUTLINED_FUNCTION_110_0(v12, v13, v14, v15, v16, v17, v18, v19, v331, v335, v339, v343, v347, v351, v355, v359, v363, v367, v371, v375, v379, v383, v387, v391, v395, v399, v403, v407, v411, v415, v419, v423, v427, v429, v431, v433, v435, v437);
  v20 = setjmp(v8);
  if (!v20 && !OUTLINED_FUNCTION_30_11(v20, v21, v22, v23, v24, v25, v26, v27, v332, v336, v340, v344, v348, v352, v356, v360, v364, v368, v372, v376, v380, v384, v388, v392, v396, v400, v404, v408, v412, v416, v420, v424, v428, *v430, v430[4], *v432, *&v432[4], v432[6], v434, SWORD2(v434), SBYTE6(v434), SHIBYTE(v434), v436, v438))
  {
    v30 = OUTLINED_FUNCTION_76_3();
    push_ptr_init(v30, v31);
    fence_24(a1);
    OUTLINED_FUNCTION_91_1(1600);
    OUTLINED_FUNCTION_89_2(2600);
    *(a1 + 4602) = 4200;
    *(a1 + 4610) = 4500;
    v32 = OUTLINED_FUNCTION_22_16();
    starttest(v32, v33);
    v34 = OUTLINED_FUNCTION_15_21();
    if (!lpta_loadp_setscan_l(v34, v35))
    {
      LODWORD(v8) = 0;
      v101 = OUTLINED_FUNCTION_59_3();
      if (testFldeq(v101, v102, 0, 18))
      {
        goto LABEL_32;
      }

      if (advance_tok(a1))
      {
        v64 = 0;
        goto LABEL_65;
      }

      OUTLINED_FUNCTION_79_3(*(a1 + 4586) - 150);
      *(a1 + 4594) = v103 - 200;
      LODWORD(v8) = 0;
      goto LABEL_36;
    }

    v9 = 0;
    while (2)
    {
      v36 = OUTLINED_FUNCTION_37_8();
      starttest(v36, v37);
      v38 = OUTLINED_FUNCTION_15_21();
      if (!lpta_loadp_setscan_l(v38, v39))
      {
        v66 = OUTLINED_FUNCTION_18_18();
        if (!testFldeq(v66, v67, v68, 2))
        {
          OUTLINED_FUNCTION_26_15();
          bspush_ca_scan_boa();
          v69 = OUTLINED_FUNCTION_62_3();
          v71 = v8;
          v72 = 20;
          goto LABEL_133;
        }

LABEL_51:
        v64 = v9;
        goto LABEL_65;
      }

LABEL_8:
      LODWORD(v8) = v9;
      v40 = OUTLINED_FUNCTION_29_12();
      starttest(v40, v41);
      v42 = OUTLINED_FUNCTION_15_21();
      if (lpta_loadp_setscan_l(v42, v43))
      {
LABEL_9:
        v44 = OUTLINED_FUNCTION_42_4();
        starttest(v44, v45);
        v46 = OUTLINED_FUNCTION_15_21();
        if (!lpta_loadp_setscan_l(v46, v47))
        {
          v80 = OUTLINED_FUNCTION_58_3();
          bspush_ca_scan(v80, v81);
          v82 = OUTLINED_FUNCTION_18_18();
          v85 = testFldeq(v82, v83, v84, 3);
          v86 = v8;
          v64 = v8;
          if (v85)
          {
            goto LABEL_65;
          }

LABEL_22:
          v9 = v86;
          v87 = advance_tok(a1);
          LODWORD(v8) = v9;
          v64 = v9;
          if (v87)
          {
LABEL_65:
            LODWORD(v8) = 4546;
LABEL_66:
            v177 = *(a1 + 104);
            if (v177)
            {
              v178 = OUTLINED_FUNCTION_74_3(v177);
              v9 = v179;
            }

            else
            {
              v178 = vback(a1, v64);
              v9 = 0;
            }

            v180 = v178 - 1;
            v181 = 55;
            v86 = v9;
            v99 = v9;
            v63 = v9;
            v153 = v9;
            v170 = v9;
            v182 = 4546;
            v183 = v9;
            switch(v180)
            {
              case 0:
                continue;
              case 1:
                goto LABEL_160;
              case 2:
                goto LABEL_8;
              case 3:
                bspop_boa(a1);
                v184 = advance_tok(a1);
                v64 = v9;
                if (v184)
                {
                  goto LABEL_66;
                }

                OUTLINED_FUNCTION_95_1();
                *(a1 + 4594) = v294;
LABEL_160:
                LODWORD(v8) = v9;
                goto LABEL_36;
              case 4:
                LODWORD(v8) = v9;
                goto LABEL_9;
              case 5:
                v238 = OUTLINED_FUNCTION_25_15();
                bspush_ca_scan(v238, v239);
                v220 = OUTLINED_FUNCTION_7_24();
                goto LABEL_99;
              case 6:
                goto LABEL_18;
              case 7:
                v245 = OUTLINED_FUNCTION_32_10();
                bspush_ca_scan(v245, v246);
                v220 = OUTLINED_FUNCTION_13_23();
                v223 = 24;
                goto LABEL_99;
              case 8:
                v218 = OUTLINED_FUNCTION_43_4();
                bspush_ca_scan(v218, v219);
                v220 = OUTLINED_FUNCTION_11_23();
                goto LABEL_99;
              case 9:
                v220 = OUTLINED_FUNCTION_13_23();
                v223 = 28;
LABEL_99:
                v247 = testFldeq(v220, v221, v222, v223);
                v64 = v9;
                if (!v247)
                {
                  goto LABEL_18;
                }

                goto LABEL_66;
              case 10:
                LODWORD(v8) = v9;
                goto LABEL_10;
              case 11:
                v240 = OUTLINED_FUNCTION_3_25();
                v244 = testFldeq(v240, v241, v242, v243);
                v86 = v9;
                v64 = v9;
                if (!v244)
                {
                  goto LABEL_22;
                }

                goto LABEL_66;
              case 12:
                goto LABEL_22;
              case 13:
                LODWORD(v8) = v9;
                goto LABEL_11;
              case 14:
                v267 = OUTLINED_FUNCTION_60_3();
                bspush_ca_scan(v267, v268);
                v258 = OUTLINED_FUNCTION_8_24();
                goto LABEL_113;
              case 15:
                goto LABEL_26;
              case 16:
                v263 = OUTLINED_FUNCTION_54_3();
                bspush_ca_scan(v263, v264);
                v258 = OUTLINED_FUNCTION_2_26();
                goto LABEL_113;
              case 17:
                v258 = OUTLINED_FUNCTION_6_24();
LABEL_113:
                v269 = testFldeq(v258, v259, v260, v261);
                v99 = v9;
                v64 = v9;
                if (!v269)
                {
                  goto LABEL_26;
                }

                goto LABEL_66;
              case 18:
                v211 = OUTLINED_FUNCTION_14_21();
                v215 = testFldeq(v211, v212, v213, v214);
                v63 = v9;
                v64 = v9;
                if (!v215)
                {
                  goto LABEL_13;
                }

                goto LABEL_66;
              case 19:
                goto LABEL_13;
              case 20:
                LODWORD(v8) = v9;
                goto LABEL_37;
              case 21:
                bspop_boa(a1);
                OUTLINED_FUNCTION_60_3();
                bspush_ca_scan_boa();
                v270 = OUTLINED_FUNCTION_3_25();
                if (testFldeq(v270, v271, v272, v273))
                {
                  v64 = v9;
                }

                else
                {
                  v64 = 1;
                }

                goto LABEL_66;
              case 22:
                bspop_boa(a1);
                v210 = advance_tok(a1);
                v64 = v9;
                if (v210)
                {
                  goto LABEL_66;
                }

                OUTLINED_FUNCTION_78_3(*(a1 + 4590) - 150);
                v296 = v295 - 200;
                goto LABEL_161;
              case 23:
                goto LABEL_56;
              case 24:
                LODWORD(v8) = v9;
                goto LABEL_38;
              case 25:
                bspop_boa(a1);
                v262 = advance_tok(a1);
                v64 = v9;
                if (v262)
                {
                  goto LABEL_66;
                }

                OUTLINED_FUNCTION_99_1();
                goto LABEL_161;
              case 26:
                LODWORD(v8) = v9;
                goto LABEL_39;
              case 27:
                v224 = OUTLINED_FUNCTION_60_3();
                bspush_ca_scan(v224, v225);
                v202 = OUTLINED_FUNCTION_12_23();
                goto LABEL_88;
              case 28:
                goto LABEL_50;
              case 29:
                v216 = OUTLINED_FUNCTION_51_3();
                bspush_ca_scan(v216, v217);
                v202 = OUTLINED_FUNCTION_11_23();
                goto LABEL_88;
              case 30:
                v208 = OUTLINED_FUNCTION_55_3();
                bspush_ca_scan(v208, v209);
                v202 = OUTLINED_FUNCTION_13_23();
                v205 = 24;
                goto LABEL_88;
              case 31:
                v202 = OUTLINED_FUNCTION_13_23();
                v205 = 28;
LABEL_88:
                v226 = testFldeq(v202, v203, v204, v205);
                v153 = v9;
                v64 = v9;
                if (!v226)
                {
                  goto LABEL_50;
                }

                goto LABEL_66;
              case 32:
                goto LABEL_40;
              case 33:
                goto LABEL_41;
              case 34:
                goto LABEL_130;
              case 35:
                bspop_boa(a1);
                v227 = advance_tok(a1);
                v64 = v9;
                if (v227)
                {
                  goto LABEL_66;
                }

                v228 = OUTLINED_FUNCTION_61_3();
                v230 = lpta_loadp_setscan_r(v228, v229);
                v64 = v9;
                if (v230)
                {
                  goto LABEL_66;
                }

                v231 = OUTLINED_FUNCTION_60_3();
                bspush_ca_scan(v231, v232);
                v233 = OUTLINED_FUNCTION_0_28();
                v237 = testFldeq(v233, v234, v235, v236);
                v64 = v9;
                if (v237)
                {
                  goto LABEL_66;
                }

                v198 = OUTLINED_FUNCTION_1_26();
                goto LABEL_119;
              case 36:
                v206 = OUTLINED_FUNCTION_60_3();
                bspush_ca_scan(v206, v207);
                v198 = OUTLINED_FUNCTION_8_24();
                goto LABEL_119;
              case 37:
                goto LABEL_120;
              case 38:
                v196 = OUTLINED_FUNCTION_60_3();
                bspush_ca_scan(v196, v197);
                v198 = OUTLINED_FUNCTION_2_26();
                goto LABEL_119;
              case 39:
                v198 = OUTLINED_FUNCTION_6_24();
LABEL_119:
                v274 = testFldeq(v198, v199, v200, v201);
                v64 = v9;
                if (v274)
                {
                  goto LABEL_66;
                }

LABEL_120:
                v275 = advance_tok(a1);
                v64 = v9;
                if (v275)
                {
                  goto LABEL_66;
                }

                OUTLINED_FUNCTION_78_3(*(a1 + 4590) - 400);
                v296 = v289 - 550;
LABEL_161:
                *(a1 + 4598) = v296;
                goto LABEL_56;
              case 40:
                v129 = v9;
                goto LABEL_42;
              case 41:
                goto LABEL_131;
              case 42:
                bspop_boa(a1);
                v248 = advance_tok(a1);
                v64 = v9;
                if (v248)
                {
                  goto LABEL_66;
                }

                v249 = OUTLINED_FUNCTION_61_3();
                v251 = lpta_loadp_setscan_r(v249, v250);
                v64 = v9;
                if (v251)
                {
                  goto LABEL_66;
                }

                v252 = OUTLINED_FUNCTION_60_3();
                bspush_ca_scan(v252, v253);
                v254 = OUTLINED_FUNCTION_0_28();
                goto LABEL_109;
              case 43:
                v254 = OUTLINED_FUNCTION_14_21();
LABEL_109:
                v265 = testFldeq(v254, v255, v256, v257);
                v64 = v9;
                if (!v265)
                {
                  goto LABEL_110;
                }

                goto LABEL_66;
              case 44:
LABEL_110:
                v266 = advance_tok(a1);
                v64 = v9;
                if (v266)
                {
                  goto LABEL_66;
                }

                v159 = *(a1 + 4590) - 450;
                goto LABEL_137;
              case 45:
                v136 = v9;
                goto LABEL_151;
              case 46:
                bspop_boa(a1);
                v279 = advance_tok(a1);
                v64 = v9;
                if (v279)
                {
                  goto LABEL_66;
                }

                v280 = OUTLINED_FUNCTION_61_3();
                v282 = lpta_loadp_setscan_r(v280, v281);
                v64 = v9;
                if (v282)
                {
                  goto LABEL_66;
                }

                v283 = OUTLINED_FUNCTION_13_23();
                v286 = testFldeq(v283, v284, v285, 32);
                v64 = v9;
                if (v286)
                {
                  goto LABEL_66;
                }

                v287 = advance_tok(a1);
                v64 = v9;
                if (v287)
                {
                  goto LABEL_66;
                }

                v159 = *(a1 + 4590) - 200;
                goto LABEL_137;
              case 47:
              case 59:
              case 67:
                goto LABEL_187;
              case 48:
                v276 = OUTLINED_FUNCTION_60_3();
                bspush_ca_scan(v276, v277);
                v192 = OUTLINED_FUNCTION_13_23();
                v195 = 10;
                goto LABEL_123;
              case 49:
                goto LABEL_58;
              case 50:
                v190 = OUTLINED_FUNCTION_60_3();
                bspush_ca_scan(v190, v191);
                v192 = OUTLINED_FUNCTION_13_23();
                v195 = 4;
                goto LABEL_123;
              case 51:
                v192 = OUTLINED_FUNCTION_13_23();
                v195 = 3;
LABEL_123:
                v278 = testFldeq(v192, v193, v194, v195);
                v170 = v9;
                v64 = v9;
                if (!v278)
                {
                  goto LABEL_58;
                }

                goto LABEL_66;
              case 52:
                LODWORD(v8) = v9;
                goto LABEL_144;
              case 53:
                LODWORD(v8) = v9;
                goto LABEL_155;
              case 54:
              case 56:
                goto LABEL_164;
              case 55:
                goto LABEL_163;
              case 57:
                LODWORD(v8) = v9;
                goto LABEL_166;
              case 58:
                v290 = *(a1 + 4050);
                goto LABEL_139;
              case 60:
                goto LABEL_141;
              case 61:
                v293 = *(a1 + 4050);
                goto LABEL_170;
              case 62:
                LODWORD(v8) = v9;
                goto LABEL_180;
              case 63:
                v292 = v9;
                goto LABEL_171;
              case 64:
                goto LABEL_179;
              case 65:
                bspop_boa(a1);
                v185 = OUTLINED_FUNCTION_13_23();
                v188 = testFldeq(v185, v186, v187, 18);
                v64 = v9;
                if (v188)
                {
                  goto LABEL_66;
                }

                v189 = advance_tok(a1);
                v64 = v9;
                if (v189)
                {
                  goto LABEL_66;
                }

                v181 = 50;
                v182 = 4546;
                v183 = v9;
                goto LABEL_179;
              case 66:
                goto LABEL_178;
              case 68:
                goto LABEL_185;
              default:
                goto LABEL_3;
            }
          }

          goto LABEL_36;
        }

LABEL_10:
        v48 = OUTLINED_FUNCTION_34_9();
        starttest(v48, v49);
        v50 = OUTLINED_FUNCTION_15_21();
        if (!lpta_loadp_setscan_l(v50, v51))
        {
          v88 = OUTLINED_FUNCTION_40_5();
          bspush_ca_scan(v88, v89);
          v90 = OUTLINED_FUNCTION_0_28();
          if (testFldeq(v90, v91, v92, v93))
          {
            goto LABEL_32;
          }

          v94 = OUTLINED_FUNCTION_1_26();
          v98 = testFldeq(v94, v95, v96, v97);
          v99 = v8;
          v64 = v8;
          if (v98)
          {
            goto LABEL_65;
          }

LABEL_26:
          LODWORD(v8) = v99;
          if (advance_tok(a1))
          {
            goto LABEL_32;
          }

          OUTLINED_FUNCTION_79_3(*(a1 + 4586) - 400);
          *(a1 + 4594) = v100 - 550;
          goto LABEL_36;
        }

LABEL_11:
        v52 = OUTLINED_FUNCTION_28_12();
        starttest(v52, v53);
        v54 = OUTLINED_FUNCTION_15_21();
        if (lpta_loadp_setscan_l(v54, v55))
        {
LABEL_36:
          v104 = OUTLINED_FUNCTION_57_3();
          starttest(v104, v105);
          v106 = OUTLINED_FUNCTION_16_20();
          if (!lpta_loadp_setscan_r(v106, v107))
          {
            v137 = OUTLINED_FUNCTION_13_23();
            if (!testFldeq(v137, v138, v139, 18) && !advance_tok(a1))
            {
              OUTLINED_FUNCTION_60_3();
              bspush_ca_scan_boa();
              v140 = OUTLINED_FUNCTION_1_26();
              goto LABEL_62;
            }

            goto LABEL_32;
          }

LABEL_37:
          v108 = OUTLINED_FUNCTION_56_3();
          starttest(v108, v109);
          v110 = OUTLINED_FUNCTION_16_20();
          if (!lpta_loadp_setscan_r(v110, v111))
          {
            v144 = OUTLINED_FUNCTION_18_18();
            if (!testFldeq(v144, v145, v146, 2))
            {
              OUTLINED_FUNCTION_60_3();
              bspush_ca_scan_boa();
              v140 = OUTLINED_FUNCTION_13_23();
              v143 = 20;
              goto LABEL_62;
            }

            goto LABEL_32;
          }

LABEL_38:
          v112 = OUTLINED_FUNCTION_60_3();
          starttest(v112, v113);
          v114 = OUTLINED_FUNCTION_16_20();
          if (lpta_loadp_setscan_r(v114, v115))
          {
LABEL_39:
            v116 = OUTLINED_FUNCTION_60_3();
            starttest(v116, v117);
            v118 = OUTLINED_FUNCTION_16_20();
            if (!lpta_loadp_setscan_r(v118, v119))
            {
              v155 = OUTLINED_FUNCTION_18_18();
              if (testFldeq(v155, v156, v157, 3))
              {
                goto LABEL_32;
              }

              advance_tok(a1);
              OUTLINED_FUNCTION_120_0();
              if (v158)
              {
                goto LABEL_65;
              }

LABEL_56:
              v160 = OUTLINED_FUNCTION_60_3();
              starttest(v160, v161);
              v162 = OUTLINED_FUNCTION_15_21();
              if (lpta_loadp_setscan_r(v162, v163))
              {
                goto LABEL_187;
              }

              v164 = OUTLINED_FUNCTION_60_3();
              bspush_ca_scan(v164, v165);
              v166 = OUTLINED_FUNCTION_13_23();
              v169 = testFldeq(v166, v167, v168, 9);
              v170 = v9;
              v64 = v9;
              if (v169)
              {
                goto LABEL_65;
              }

LABEL_58:
              LODWORD(v8) = v170;
              if (advance_tok(a1))
              {
                goto LABEL_32;
              }

              *(a1 + 4722) = 3;
              if (if_testeq_v_i(a1, (a1 + 4720), 8000, v171, v172, v173, v174, v175))
              {
LABEL_144:
                if (*(a1 + 4050) != 3)
                {
                  goto LABEL_165;
                }

                v176 = 3800;
              }

              else
              {
                if (*(a1 + 4050) != 3)
                {
LABEL_155:
                  if (*(a1 + 4226) == *(a1 + 4218))
                  {
                    *(a1 + 4602) = 3800;
                    *(a1 + 4610) = 4000;
                  }

                  else
                  {
                    v9 = v8;
LABEL_163:
                    *(a1 + 4602) = 3800;
LABEL_164:
                    LODWORD(v8) = v9;
                  }

LABEL_165:
                  v297 = OUTLINED_FUNCTION_60_3();
                  starttest(v297, v298);
                  v299 = OUTLINED_FUNCTION_15_21();
                  if (!lpta_loadp_setscan_r(v299, v300))
                  {
                    v314 = OUTLINED_FUNCTION_59_3();
                    if (!testFldeq(v314, v315, 4, 2))
                    {
                      v316 = advance_tok(a1);
                      v64 = v8;
                      if (v316)
                      {
                        goto LABEL_65;
                      }

                      v290 = *(a1 + 4050);
                      if (v290 == 3)
                      {
                        *(a1 + 4426) = 50;
                      }

                      else
                      {
LABEL_139:
                        if (v290 == 4)
                        {
                          v291 = 50;
                        }

                        else
                        {
LABEL_141:
                          v291 = 55;
                        }

                        *(a1 + 4430) = v291;
                      }

                      goto LABEL_187;
                    }

LABEL_32:
                    v64 = v8;
                    goto LABEL_65;
                  }

LABEL_166:
                  v301 = OUTLINED_FUNCTION_60_3();
                  starttest(v301, v302);
                  v303 = OUTLINED_FUNCTION_15_21();
                  if (lpta_loadp_setscan_r(v303, v304))
                  {
                    goto LABEL_187;
                  }

                  OUTLINED_FUNCTION_59_3();
                  OUTLINED_FUNCTION_119_0();
                  if (testFldeq(v305, v306, v307, v308) || advance_tok(a1))
                  {
                    goto LABEL_32;
                  }

                  v293 = *(a1 + 4050);
                  v181 = 50;
                  v182 = 4542;
                  v9 = v8;
                  v183 = v8;
                  if (v293 != 3)
                  {
LABEL_170:
                    v181 = 50;
                    v182 = 4546;
                    v183 = v9;
                    v292 = v9;
                    if (v293 != 4)
                    {
LABEL_171:
                      v309 = OUTLINED_FUNCTION_60_3();
                      starttest(v309, v310);
                      v311 = OUTLINED_FUNCTION_16_20();
                      v313 = lpta_loadp_setscan_r(v311, v312);
                      v181 = 55;
                      v182 = 4546;
                      if (v313)
                      {
                        v183 = v292;
                        goto LABEL_179;
                      }

                      OUTLINED_FUNCTION_60_3();
                      bspush_ca_scan_boa();
                      v9 = v292;
LABEL_178:
                      v317 = OUTLINED_FUNCTION_60_3();
                      v288 = test_synch(v317, v318, 1u, v319);
LABEL_134:
                      if (v288)
                      {
                        v64 = v9;
                      }

                      else
                      {
                        v64 = 1;
                      }

                      goto LABEL_65;
                    }
                  }

LABEL_179:
                  *(a1 + v182) = v181;
                  LODWORD(v8) = v183;
LABEL_180:
                  v320 = OUTLINED_FUNCTION_60_3();
                  starttest(v320, v321);
                  v322 = OUTLINED_FUNCTION_15_21();
                  if (lpta_loadp_setscan_r(v322, v323))
                  {
                    goto LABEL_187;
                  }

                  v324 = OUTLINED_FUNCTION_20_16();
                  if (!testFldeq(v324, v325, 2, v326))
                  {
                    v327 = advance_tok(a1);
                    v64 = v8;
                    if (v327)
                    {
                      goto LABEL_65;
                    }

                    v328 = *(a1 + 4542);
                    if (v328 >= 1)
                    {
                      *(a1 + 4542) = v328 + 5;
                    }

LABEL_185:
                    v329 = *(a1 + 4546);
                    if (v329 >= 1)
                    {
                      *(a1 + 4546) = v329 + 5;
                    }

LABEL_187:
                    vretproc(a1);
                    result = 0;
                    goto LABEL_4;
                  }

                  goto LABEL_32;
                }

                v176 = 3700;
              }

              *(a1 + 4594) = v176;
              goto LABEL_165;
            }

LABEL_40:
            v120 = OUTLINED_FUNCTION_60_3();
            starttest(v120, v121);
            v122 = OUTLINED_FUNCTION_16_20();
            lpta_loadp_setscan_l(v122, v123);
            OUTLINED_FUNCTION_120_0();
            if (v124)
            {
LABEL_41:
              v125 = OUTLINED_FUNCTION_60_3();
              starttest(v125, v126);
              v127 = OUTLINED_FUNCTION_16_20();
              lpta_loadp_setscan_l(v127, v128);
              OUTLINED_FUNCTION_120_0();
              if (v130)
              {
LABEL_42:
                v9 = v129;
                v131 = OUTLINED_FUNCTION_52_3();
                starttest(v131, v132);
                v133 = OUTLINED_FUNCTION_16_20();
                v135 = lpta_loadp_setscan_l(v133, v134);
                v136 = v9;
                if (!v135)
                {
LABEL_151:
                  LODWORD(v8) = v136;
                  OUTLINED_FUNCTION_85_2(46, v333, v337, v341, v345, v349, v353, v357, v361, v365, v369, v373, v377, v381, v385, v389, v393, v397, v401, v405, v409, v413, v417, v421, v425);
                  OUTLINED_FUNCTION_60_3();
                  bspush_ca_scan_boa();
                  v140 = OUTLINED_FUNCTION_13_23();
                  v143 = 16;
LABEL_62:
                  if (testFldeq(v140, v141, v142, v143))
                  {
                    v64 = v8;
                  }

                  else
                  {
                    v64 = 1;
                  }

                  goto LABEL_65;
                }

                goto LABEL_56;
              }

LABEL_131:
              OUTLINED_FUNCTION_85_2(42, v333, v337, v341, v345, v349, v353, v357, v361, v365, v369, v373, v377, v381, v385, v389, v393, v397, v401, v405, v409, v413, v417, v421, v425);
            }

            else
            {
LABEL_130:
              OUTLINED_FUNCTION_85_2(35, v333, v337, v341, v345, v349, v353, v357, v361, v365, v369, v373, v377, v381, v385, v389, v393, v397, v401, v405, v409, v413, v417, v421, v425);
            }

            OUTLINED_FUNCTION_60_3();
            bspush_ca_scan_boa();
            v69 = OUTLINED_FUNCTION_13_23();
            v72 = 16;
LABEL_133:
            v288 = testFldeq(v69, v71, v70, v72);
            goto LABEL_134;
          }

          v147 = OUTLINED_FUNCTION_60_3();
          bspush_ca_scan(v147, v148);
          v149 = OUTLINED_FUNCTION_7_24();
          testFldeq(v149, v150, v151, v152);
          OUTLINED_FUNCTION_94_1();
          if (v154)
          {
            goto LABEL_65;
          }

LABEL_50:
          v9 = v153;
          if (!advance_tok(a1))
          {
            v159 = *(a1 + 4590) + 200;
LABEL_137:
            *(a1 + 4590) = v159;
            goto LABEL_56;
          }

          goto LABEL_51;
        }

        v56 = OUTLINED_FUNCTION_53_3();
        bspush_ca_scan(v56, v57);
        v58 = OUTLINED_FUNCTION_0_28();
        v62 = testFldeq(v58, v59, v60, v61);
        v63 = v8;
        v64 = v8;
        if (v62)
        {
          goto LABEL_65;
        }

LABEL_13:
        LODWORD(v8) = v63;
        if (advance_tok(a1))
        {
          goto LABEL_32;
        }

        v65 = *(a1 + 4586) - 450;
      }

      else
      {
        v73 = OUTLINED_FUNCTION_41_4();
        bspush_ca_scan(v73, v74);
        v75 = OUTLINED_FUNCTION_12_23();
        testFldeq(v75, v76, v77, v78);
        OUTLINED_FUNCTION_90_2();
        if (v79)
        {
          goto LABEL_65;
        }

LABEL_18:
        if (OUTLINED_FUNCTION_108_0())
        {
          goto LABEL_32;
        }

        v65 = *(a1 + 4586) + 100;
      }

      break;
    }

    *(a1 + 4586) = v65;
    goto LABEL_36;
  }

LABEL_3:
  vretproc(a1);
  result = 94;
LABEL_4:
  v29 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t por_velar_Fv(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v367 = *MEMORY[0x277D85DE8];
  LODWORD(v357) = 0;
  OUTLINED_FUNCTION_67_3(a1, a2, a3, a4, a5, a6, a7, a8, v310);
  OUTLINED_FUNCTION_31_11(v11, v12, v13, v14, v15, v16, v17, v18, v311, v313, v315, v317, v319, v321, v323, v325, v327, v329, v331, v333, v335, v337, v339, v341, v343, v345, v347, v349, v351, v353, v355, v357, v359, v361, v363, v365);
  v19 = setjmp(v8);
  if (!v19 && !OUTLINED_FUNCTION_10_24(v19, v20, v21, v22, v23, v24, v25, v26, v312, v314, v316, v318, v320, v322, v324, v326, v328, v330, v332, v334, v336, v338, v340, v342, v344, v346, v348, v350, v352, v354, v356, *v358, v358[4], *v360, *&v360[4], v360[6], v362, SWORD2(v362), SBYTE6(v362), SHIBYTE(v362), v364, v366))
  {
    fence_24(a1);
    OUTLINED_FUNCTION_91_1(1500);
    OUTLINED_FUNCTION_89_2(2300);
    OUTLINED_FUNCTION_97_1(4000);
    v29 = OUTLINED_FUNCTION_22_16();
    starttest(v29, v30);
    v31 = OUTLINED_FUNCTION_15_21();
    if (!lpta_loadp_setscan_l(v31, v32))
    {
      v68 = OUTLINED_FUNCTION_18_18();
      if (testFldeq(v68, v69, v70, 4) || advance_tok(a1))
      {
        v55 = 0;
        goto LABEL_106;
      }

      OUTLINED_FUNCTION_95_1();
      v37 = 0;
      goto LABEL_68;
    }

    v9 = 0;
    while (2)
    {
      v33 = OUTLINED_FUNCTION_37_8();
      starttest(v33, v34);
      v35 = OUTLINED_FUNCTION_15_21();
      if (!lpta_loadp_setscan_l(v35, v36))
      {
        v53 = OUTLINED_FUNCTION_93_1();
        if (testFldeq(v53, v54, 5, 2))
        {
          v55 = v9;
          goto LABEL_106;
        }

        goto LABEL_85;
      }

      v37 = v9;
LABEL_9:
      v38 = OUTLINED_FUNCTION_41_4();
      starttest(v38, v39);
      v40 = OUTLINED_FUNCTION_15_21();
      if (!lpta_loadp_setscan_l(v40, v41))
      {
        v56 = OUTLINED_FUNCTION_13_23();
        if (testFldeq(v56, v57, v58, 32) || advance_tok(a1))
        {
          goto LABEL_29;
        }

        *(a1 + 4578) += 100;
        v59 = *(a1 + 4594) - 100;
        goto LABEL_68;
      }

LABEL_10:
      v42 = OUTLINED_FUNCTION_39_6();
      starttest(v42, v43);
      v44 = OUTLINED_FUNCTION_15_21();
      if (lpta_loadp_setscan_l(v44, v45))
      {
LABEL_11:
        v46 = OUTLINED_FUNCTION_60_3();
        starttest(v46, v47);
        v48 = OUTLINED_FUNCTION_15_21();
        if (lpta_loadp_setscan_l(v48, v49) || (OUTLINED_FUNCTION_17_19(), test_string_s()))
        {
LABEL_35:
          v71 = OUTLINED_FUNCTION_34_9();
          starttest(v71, v72);
          v73 = OUTLINED_FUNCTION_15_21();
          if (!lpta_loadp_setscan_l(v73, v74))
          {
            v92 = OUTLINED_FUNCTION_3_25();
            if (testFldeq(v92, v93, v94, v95))
            {
              goto LABEL_29;
            }

            v96 = OUTLINED_FUNCTION_18_18();
            if (testFldeq(v96, v97, v98, 6) || advance_tok(a1))
            {
              goto LABEL_29;
            }

            OUTLINED_FUNCTION_79_3(*(a1 + 4586) + 150);
            v59 = v99 - 200;
            goto LABEL_68;
          }

LABEL_36:
          v75 = OUTLINED_FUNCTION_40_5();
          starttest(v75, v76);
          v77 = OUTLINED_FUNCTION_15_21();
          if (!lpta_loadp_setscan_l(v77, v78))
          {
            v100 = OUTLINED_FUNCTION_18_18();
            if (testFldeq(v100, v101, v102, 3) || advance_tok(a1))
            {
              goto LABEL_29;
            }

            OUTLINED_FUNCTION_79_3(*(a1 + 4586) + 500);
            v59 = v103 + 100;
            goto LABEL_68;
          }

LABEL_37:
          v79 = OUTLINED_FUNCTION_46_4();
          starttest(v79, v80);
          v81 = OUTLINED_FUNCTION_15_21();
          if (lpta_loadp_setscan_l(v81, v82))
          {
LABEL_38:
            v83 = OUTLINED_FUNCTION_60_3();
            starttest(v83, v84);
            v85 = OUTLINED_FUNCTION_15_21();
            if (lpta_loadp_setscan_l(v85, v86))
            {
LABEL_58:
              v115 = OUTLINED_FUNCTION_57_3();
              starttest(v115, v116);
              v117 = OUTLINED_FUNCTION_15_21();
              if (!lpta_loadp_setscan_l(v117, v118))
              {
                v119 = OUTLINED_FUNCTION_13_23();
                if (testFldeq(v119, v120, v121, 34) || advance_tok(a1))
                {
                  goto LABEL_29;
                }

                *(a1 + 4586) = 1400;
                v59 = 2100;
                goto LABEL_68;
              }

LABEL_63:
              v122 = OUTLINED_FUNCTION_28_12();
              starttest(v122, v123);
              v124 = OUTLINED_FUNCTION_15_21();
              if (lpta_loadp_setscan_l(v124, v125))
              {
LABEL_69:
                v135 = OUTLINED_FUNCTION_52_3();
                starttest(v135, v136);
                v137 = OUTLINED_FUNCTION_16_20();
                if (!lpta_loadp_setscan_r(v137, v138))
                {
                  v170 = OUTLINED_FUNCTION_18_18();
                  if (testFldeq(v170, v171, v172, 4) || advance_tok(a1))
                  {
                    goto LABEL_29;
                  }

                  OUTLINED_FUNCTION_99_1();
                  goto LABEL_165;
                }

LABEL_70:
                v139 = OUTLINED_FUNCTION_16_20();
                if (!lpta_loadp_setscan_r(v139, v140))
                {
                  OUTLINED_FUNCTION_17_19();
                  if (!test_string_s())
                  {
                    OUTLINED_FUNCTION_78_3(*(a1 + 4590) - 700);
                    v173 = v191 - 500;
                    goto LABEL_165;
                  }
                }

LABEL_72:
                v141 = OUTLINED_FUNCTION_60_3();
                starttest(v141, v142);
                v143 = OUTLINED_FUNCTION_16_20();
                if (lpta_loadp_setscan_r(v143, v144))
                {
LABEL_73:
                  v145 = OUTLINED_FUNCTION_60_3();
                  starttest(v145, v146);
                  v147 = OUTLINED_FUNCTION_16_20();
                  if (lpta_loadp_setscan_r(v147, v148))
                  {
LABEL_74:
                    v149 = OUTLINED_FUNCTION_51_3();
                    starttest(v149, v150);
                    v151 = OUTLINED_FUNCTION_16_20();
                    if (lpta_loadp_setscan_r(v151, v152))
                    {
LABEL_75:
                      v153 = OUTLINED_FUNCTION_60_3();
                      starttest(v153, v154);
                      v155 = OUTLINED_FUNCTION_16_20();
                      if (lpta_loadp_setscan_r(v155, v156))
                      {
LABEL_76:
                        v157 = OUTLINED_FUNCTION_60_3();
                        starttest(v157, v158);
                        v159 = OUTLINED_FUNCTION_16_20();
                        if (!lpta_loadp_setscan_r(v159, v160))
                        {
                          v201 = OUTLINED_FUNCTION_60_3();
                          bspush_ca_scan(v201, v202);
                          v203 = OUTLINED_FUNCTION_0_28();
                          if (!testFldeq(v203, v204, v205, v206))
                          {
                            v207 = OUTLINED_FUNCTION_1_26();
                            v211 = testFldeq(v207, v208, v209, v210);
                            v55 = v37;
                            v212 = v37;
                            if (v211)
                            {
                              goto LABEL_106;
                            }

LABEL_100:
                            v37 = v212;
                            if (!advance_tok(a1))
                            {
                              *(a1 + 4582) = 400;
                              v169 = 900;
LABEL_102:
                              *(a1 + 4590) = v169;
                              *(a1 + 4598) = 2000;
                              v213 = OUTLINED_FUNCTION_15_21();
                              if (lpta_loadp_setscan_l(v213, v214))
                              {
                                goto LABEL_168;
                              }

                              OUTLINED_FUNCTION_17_19();
                              if (test_string_s())
                              {
                                goto LABEL_168;
                              }

                              v215 = 800;
                              goto LABEL_105;
                            }
                          }

LABEL_29:
                          v55 = v37;
                          goto LABEL_106;
                        }

LABEL_77:
                        v161 = OUTLINED_FUNCTION_60_3();
                        starttest(v161, v162);
                        v163 = OUTLINED_FUNCTION_16_20();
                        if (!lpta_loadp_setscan_r(v163, v164))
                        {
                          v165 = OUTLINED_FUNCTION_8_24();
                          if (!testFldeq(v165, v166, v167, v168) && !advance_tok(a1))
                          {
                            *(a1 + 4582) = 500;
                            v169 = 1000;
                            goto LABEL_102;
                          }

                          goto LABEL_29;
                        }

LABEL_151:
                        v279 = OUTLINED_FUNCTION_60_3();
                        starttest(v279, v280);
                        v281 = OUTLINED_FUNCTION_16_20();
                        if (!lpta_loadp_setscan_r(v281, v282))
                        {
                          v283 = OUTLINED_FUNCTION_13_23();
                          if (testFldeq(v283, v284, v285, 34) || advance_tok(a1))
                          {
                            goto LABEL_29;
                          }

                          *(a1 + 4590) = 1400;
                          *(a1 + 4598) = 2100;
                          v286 = OUTLINED_FUNCTION_15_21();
                          if (!lpta_loadp_setscan_l(v286, v287))
                          {
                            OUTLINED_FUNCTION_17_19();
                            if (!test_string_s())
                            {
                              v215 = 1100;
LABEL_105:
                              *(a1 + 4586) = v215;
                            }
                          }

LABEL_168:
                          OUTLINED_FUNCTION_106_0();
                          if (v300 != v301 || *(a1 + 4590) < 1 || *(a1 + 3400) >= 40.0)
                          {
LABEL_174:
                            vretproc(a1);
                            result = 0;
                            goto LABEL_4;
                          }

                          v302 = OUTLINED_FUNCTION_60_3();
                          starttest(v302, v303);
                          v304 = OUTLINED_FUNCTION_76_3();
                          c_assvar(v304, v305);
                          v306 = *(a1 + 4590);
                          v55 = v37;
                          if ((*(a1 + 4586) - *(a1 + 4590)) >= 501)
                          {
                            v307 = (*(a1 + 4586) + (*(a1 + 4586) - v306) * -0.5);
                            *(a1 + 4586) = v307;
                            v309 = (v307 - v306) / 5.0 + v306;
LABEL_173:
                            *(a1 + 4590) = v309;
                            goto LABEL_174;
                          }

LABEL_106:
                          v9 = 29;
LABEL_107:
                          v216 = *(a1 + 104);
                          if (v216)
                          {
                            v217 = OUTLINED_FUNCTION_74_3(v216);
                            v219 = v218;
                          }

                          else
                          {
                            v217 = vback(a1, v55);
                            v219 = 0;
                          }

                          v65 = v219;
                          v133 = v219;
                          v37 = v219;
                          v199 = v219;
                          v212 = v219;
                          v220 = v219;
                          switch(v217)
                          {
                            case 1:
                              v9 = v219;
                              continue;
                            case 2:
                              v37 = v219;
                              goto LABEL_69;
                            case 3:
                              v37 = v219;
                              goto LABEL_9;
                            case 4:
                            case 28:
                              bspop_boa(a1);
                              OUTLINED_FUNCTION_65_3();
                              bspush_ca_scan_boa();
                              v221 = OUTLINED_FUNCTION_13_23();
                              if (testFldeq(v221, v222, v223, 20))
                              {
                                v55 = v219;
                              }

                              else
                              {
                                v55 = 1;
                              }

                              goto LABEL_107;
                            case 5:
                              bspop_boa(a1);
                              v261 = advance_tok(a1);
                              v55 = v219;
                              if (v261)
                              {
                                goto LABEL_107;
                              }

                              v59 = *(a1 + 4594) - 100;
                              v37 = v219;
                              goto LABEL_68;
                            case 6:
                              v37 = v219;
                              goto LABEL_10;
                            case 7:
                              v37 = v219;
                              goto LABEL_11;
                            case 8:
                              v241 = OUTLINED_FUNCTION_43_4();
                              bspush_ca_scan(v241, v242);
                              v243 = OUTLINED_FUNCTION_7_24();
                              goto LABEL_135;
                            case 9:
                              goto LABEL_21;
                            case 10:
                              v255 = OUTLINED_FUNCTION_42_4();
                              bspush_ca_scan(v255, v256);
                              v243 = OUTLINED_FUNCTION_12_23();
                              goto LABEL_135;
                            case 11:
                              v259 = OUTLINED_FUNCTION_58_3();
                              bspush_ca_scan(v259, v260);
                              v243 = OUTLINED_FUNCTION_11_23();
                              goto LABEL_135;
                            case 12:
                              v243 = OUTLINED_FUNCTION_13_23();
                              v246 = 24;
LABEL_135:
                              v263 = testFldeq(v243, v244, v245, v246);
                              v65 = v219;
                              v55 = v219;
                              if (!v263)
                              {
                                goto LABEL_21;
                              }

                              goto LABEL_107;
                            case 13:
                              v37 = v219;
                              goto LABEL_35;
                            case 14:
                              v37 = v219;
                              goto LABEL_36;
                            case 15:
                              v37 = v219;
                              goto LABEL_37;
                            case 16:
                              v37 = v219;
                              goto LABEL_38;
                            case 17:
                              v249 = OUTLINED_FUNCTION_53_3();
                              bspush_ca_scan(v249, v250);
                              v251 = OUTLINED_FUNCTION_2_26();
                              goto LABEL_132;
                            case 18:
                              goto LABEL_51;
                            case 19:
                              v251 = OUTLINED_FUNCTION_6_24();
LABEL_132:
                              v262 = testFldeq(v251, v252, v253, v254);
                              v55 = v219;
                              if (!v262)
                              {
                                goto LABEL_51;
                              }

                              goto LABEL_107;
                            case 20:
                              v37 = v219;
                              goto LABEL_58;
                            case 21:
                              v37 = v219;
                              goto LABEL_63;
                            case 22:
                              v228 = OUTLINED_FUNCTION_14_21();
                              v232 = testFldeq(v228, v229, v230, v231);
                              v133 = v219;
                              v55 = v219;
                              if (!v232)
                              {
                                goto LABEL_65;
                              }

                              goto LABEL_107;
                            case 23:
                              goto LABEL_65;
                            case 24:
                              v37 = v219;
                              goto LABEL_70;
                            case 25:
                            case 44:
                            case 46:
                            case 48:
                              goto LABEL_167;
                            case 26:
                              v37 = v219;
                              goto LABEL_72;
                            case 27:
                              v37 = v219;
                              goto LABEL_73;
                            case 29:
                              bspop_boa(a1);
                              v240 = advance_tok(a1);
                              v55 = v219;
                              if (v240)
                              {
                                goto LABEL_107;
                              }

                              *(a1 + 4598) -= 150;
LABEL_167:
                              v37 = v219;
                              goto LABEL_168;
                            case 30:
                              v37 = v219;
                              goto LABEL_74;
                            case 31:
                              v37 = v219;
                              goto LABEL_75;
                            case 32:
                              v257 = OUTLINED_FUNCTION_60_3();
                              bspush_ca_scan(v257, v258);
                              v233 = OUTLINED_FUNCTION_7_24();
                              goto LABEL_140;
                            case 33:
                              goto LABEL_92;
                            case 34:
                              bspush_ca_scan(a1, 35);
                              v233 = OUTLINED_FUNCTION_13_23();
                              v236 = 35;
                              goto LABEL_140;
                            case 35:
                              v247 = OUTLINED_FUNCTION_60_3();
                              bspush_ca_scan(v247, v248);
                              v233 = OUTLINED_FUNCTION_12_23();
                              goto LABEL_140;
                            case 36:
                              v233 = OUTLINED_FUNCTION_11_23();
LABEL_140:
                              v269 = testFldeq(v233, v234, v235, v236);
                              v37 = v219;
                              v55 = v219;
                              if (!v269)
                              {
                                goto LABEL_92;
                              }

                              goto LABEL_107;
                            case 37:
                              v37 = v219;
                              goto LABEL_76;
                            case 38:
                              v270 = OUTLINED_FUNCTION_18_18();
                              v273 = testFldeq(v270, v271, v272, 3);
                              v199 = v219;
                              v55 = v219;
                              if (!v273)
                              {
                                goto LABEL_96;
                              }

                              goto LABEL_107;
                            case 39:
                              goto LABEL_96;
                            case 40:
                              v37 = v219;
                              goto LABEL_77;
                            case 41:
                              v237 = OUTLINED_FUNCTION_60_3();
                              bspush_ca_scan(v237, v238);
                              v224 = OUTLINED_FUNCTION_2_26();
                              goto LABEL_119;
                            case 42:
                              goto LABEL_100;
                            case 43:
                              v224 = OUTLINED_FUNCTION_6_24();
LABEL_119:
                              v239 = testFldeq(v224, v225, v226, v227);
                              v212 = v219;
                              v55 = v219;
                              if (!v239)
                              {
                                goto LABEL_100;
                              }

                              goto LABEL_107;
                            case 45:
                              v37 = v219;
                              goto LABEL_151;
                            case 47:
                              v37 = v219;
                              break;
                            case 49:
                              v274 = OUTLINED_FUNCTION_14_21();
                              v278 = testFldeq(v274, v275, v276, v277);
                              v220 = v219;
                              v55 = v219;
                              if (!v278)
                              {
                                goto LABEL_163;
                              }

                              goto LABEL_107;
                            case 50:
                              goto LABEL_163;
                            case 51:
                              goto LABEL_174;
                            case 52:
                              v264 = OUTLINED_FUNCTION_60_3();
                              starttest(v264, v265);
                              v266 = OUTLINED_FUNCTION_76_3();
                              c_assvar(v266, v267);
                              v268 = *(a1 + 4590);
                              v55 = v219;
                              if ((*(a1 + 4590) - *(a1 + 4586)) < 501)
                              {
                                goto LABEL_107;
                              }

                              v308 = (vcvtd_n_f64_s32(v268 - *(a1 + 4586), 1uLL) + *(a1 + 4586));
                              *(a1 + 4586) = v308;
                              v309 = v268 + (v268 - v308) / -5.0;
                              goto LABEL_173;
                            default:
                              goto LABEL_3;
                          }
                        }

                        v288 = OUTLINED_FUNCTION_56_3();
                        starttest(v288, v289);
                        v290 = OUTLINED_FUNCTION_16_20();
                        if (lpta_loadp_setscan_r(v290, v291))
                        {
                          goto LABEL_168;
                        }

                        v292 = OUTLINED_FUNCTION_60_3();
                        bspush_ca_scan(v292, v293);
                        v294 = OUTLINED_FUNCTION_0_28();
                        v298 = testFldeq(v294, v295, v296, v297);
                        v55 = v37;
                        v220 = v37;
                        if (v298)
                        {
                          goto LABEL_106;
                        }

LABEL_163:
                        v37 = v220;
                        if (advance_tok(a1))
                        {
                          goto LABEL_29;
                        }

                        *(a1 + 4582) += 50;
                        OUTLINED_FUNCTION_78_3(*(a1 + 4590) - 500);
                        v173 = v299 + 200;
                      }

                      else
                      {
                        v192 = OUTLINED_FUNCTION_60_3();
                        bspush_ca_scan(v192, v193);
                        v194 = OUTLINED_FUNCTION_3_25();
                        v198 = testFldeq(v194, v195, v196, v197);
                        v55 = v37;
                        v199 = v37;
                        if (v198)
                        {
                          goto LABEL_106;
                        }

LABEL_96:
                        v37 = v199;
                        if (advance_tok(a1))
                        {
                          goto LABEL_29;
                        }

                        OUTLINED_FUNCTION_78_3(*(a1 + 4590) + 500);
                        v173 = v200 + 300;
                      }
                    }

                    else
                    {
                      v184 = OUTLINED_FUNCTION_55_3();
                      bspush_ca_scan(v184, v185);
                      v186 = OUTLINED_FUNCTION_13_23();
                      v189 = testFldeq(v186, v187, v188, 28);
                      v55 = v37;
                      if (v189)
                      {
                        goto LABEL_106;
                      }

LABEL_92:
                      if (advance_tok(a1))
                      {
                        goto LABEL_29;
                      }

                      OUTLINED_FUNCTION_78_3(*(a1 + 4590) + 530);
                      v173 = v190 + 400;
                    }
                  }

                  else
                  {
                    v181 = OUTLINED_FUNCTION_13_23();
                    if (testFldeq(v181, v182, v183, 32) || advance_tok(a1))
                    {
                      goto LABEL_29;
                    }

                    *(a1 + 4582) += 100;
                    v173 = *(a1 + 4598) - 150;
                  }

LABEL_165:
                  *(a1 + 4598) = v173;
                  goto LABEL_168;
                }

                v174 = OUTLINED_FUNCTION_18_18();
                testFldeq(v174, v175, v176, 2);
                OUTLINED_FUNCTION_120_0();
                if (v177)
                {
                  goto LABEL_106;
                }

LABEL_85:
                bspush_ca_scan_boa();
                v178 = OUTLINED_FUNCTION_13_23();
                if (testFldeq(v178, v179, v180, 18))
                {
                  v55 = v9;
                }

                else
                {
                  v55 = 1;
                }

                goto LABEL_106;
              }

              v126 = OUTLINED_FUNCTION_60_3();
              bspush_ca_scan(v126, v127);
              v128 = OUTLINED_FUNCTION_0_28();
              v132 = testFldeq(v128, v129, v130, v131);
              v133 = v37;
              v55 = v37;
              if (v132)
              {
                goto LABEL_106;
              }

LABEL_65:
              v37 = v133;
              if (advance_tok(a1))
              {
                goto LABEL_29;
              }

              *(a1 + 4578) += 50;
              v67 = *(a1 + 4586) - 500;
              goto LABEL_67;
            }

            v87 = OUTLINED_FUNCTION_8_24();
            if (testFldeq(v87, v88, v89, v90) || advance_tok(a1))
            {
              goto LABEL_29;
            }

            *(a1 + 4578) = 500;
            v91 = 1000;
          }

          else
          {
            v104 = OUTLINED_FUNCTION_60_3();
            bspush_ca_scan(v104, v105);
            v106 = OUTLINED_FUNCTION_0_28();
            if (testFldeq(v106, v107, v108, v109))
            {
              goto LABEL_29;
            }

            v110 = OUTLINED_FUNCTION_1_26();
            testFldeq(v110, v111, v112, v113);
            OUTLINED_FUNCTION_94_1();
            if (v114)
            {
              goto LABEL_106;
            }

LABEL_51:
            if (OUTLINED_FUNCTION_112_0())
            {
              goto LABEL_29;
            }

            *(a1 + 4578) = 400;
            v91 = 900;
          }

          *(a1 + 4586) = v91;
          v59 = 2000;
LABEL_68:
          *(a1 + 4594) = v59;
          goto LABEL_69;
        }

        v50 = OUTLINED_FUNCTION_13_23();
        if (testFldeq(v50, v51, v52, 35))
        {
          goto LABEL_29;
        }
      }

      else
      {
        v60 = OUTLINED_FUNCTION_25_15();
        bspush_ca_scan(v60, v61);
        v62 = OUTLINED_FUNCTION_13_23();
        testFldeq(v62, v63, v64, 28);
        OUTLINED_FUNCTION_90_2();
        if (v66)
        {
          goto LABEL_106;
        }

LABEL_21:
        v37 = v65;
      }

      break;
    }

    if (advance_tok(a1))
    {
      goto LABEL_29;
    }

    v67 = *(a1 + 4586) + 800;
LABEL_67:
    OUTLINED_FUNCTION_79_3(v67);
    v59 = v134 + 200;
    goto LABEL_68;
  }

LABEL_3:
  vretproc(a1);
  result = 94;
LABEL_4:
  v28 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t add_TL_to_trill(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v95 = *MEMORY[0x277D85DE8];
  LODWORD(v85) = 0;
  OUTLINED_FUNCTION_67_3(a1, a2, a3, a4, a5, a6, a7, a8, v38);
  OUTLINED_FUNCTION_31_11(v10, v11, v12, v13, v14, v15, v16, v17, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93);
  v18 = setjmp(v8);
  if (v18 || OUTLINED_FUNCTION_10_24(v18, v19, v20, v21, v22, v23, v24, v25, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, *v86, v86[4], *v88, *&v88[4], v88[6], v90, SWORD2(v90), SBYTE6(v90), SHIBYTE(v90), v92, v94))
  {
LABEL_3:
    vretproc(a1);
    result = 94;
  }

  else
  {
    fence_24(a1);
    v28 = OUTLINED_FUNCTION_22_16();
    starttest(v28, v29);
    v30 = OUTLINED_FUNCTION_28_12();
    bspush_ca(v30);
    if (*(a1 + 4602) > 3400)
    {
LABEL_11:
      v37 = *(a1 + 4562) + 20;
    }

    else
    {
      while (2)
      {
        v31 = *(a1 + 104);
        if (v31)
        {
          v32 = OUTLINED_FUNCTION_74_3(v31);
        }

        else
        {
          v33 = OUTLINED_FUNCTION_84_2();
          v32 = vback(v33, v34);
        }

        switch(v32)
        {
          case 1:
            if (*(a1 + 4602) < 3001)
            {
              goto LABEL_16;
            }

            v37 = *(a1 + 4562) + 10;
            break;
          case 2:
            v35 = OUTLINED_FUNCTION_65_3();
            c_assvar(v35, v36);
            if (*(a1 + 4602) == -1)
            {
              goto LABEL_11;
            }

            continue;
          case 3:
            goto LABEL_11;
          case 4:
            goto LABEL_13;
          case 5:
LABEL_16:
            v37 = *(a1 + 4562);
            break;
          case 6:
            goto LABEL_14;
          default:
            goto LABEL_3;
        }

        break;
      }
    }

    *(a1 + 4406) = v37;
LABEL_13:
    addStreamArraySsVal(a1, a1 + 1988, (a1 + 4404), a1 + 2128, (a1 + 2144));
LABEL_14:
    *(a1 + 4530) = 1;
    vretproc(a1);
    result = 0;
  }

  v27 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t por_ph_ng(uint64_t a1)
{
  v112 = *MEMORY[0x277D85DE8];
  v107[0] = 0;
  v107[1] = 0;
  OUTLINED_FUNCTION_70_3();
  bzero(v106, v2);
  OUTLINED_FUNCTION_69_3();
  bzero(v111, v3);
  if (setjmp(v111) || ventproc(a1, v106, v110, v109, v108, v111))
  {
LABEL_3:
    vretproc(a1);
    result = 94;
    goto LABEL_4;
  }

  v6 = OUTLINED_FUNCTION_65_3();
  push_ptr_init(v6, v7);
  OUTLINED_FUNCTION_24_16();
  por_velar_Fv(a1, v8, v9, v10, v11, v12, v13, v14);
  v15 = 0;
LABEL_6:
  *(a1 + 4610) = 4400;
  v16 = *(a1 + 4598);
  if (v16 >= *(a1 + 4594))
  {
    *(a1 + 4594) = v16;
    v18 = v15;
  }

  else
  {
    v17 = *(a1 + 4594);
LABEL_9:
    v18 = v15;
    if (v16 <= v17)
    {
      *(a1 + 4598) = v17;
    }
  }

LABEL_11:
  v19 = OUTLINED_FUNCTION_64_3();
  if (!lpta_loadp_setscan_r(v19, v20))
  {
    OUTLINED_FUNCTION_82_3();
    if (!test_string_s())
    {
      OUTLINED_FUNCTION_106_0();
      if (v56 == v57 && *(a1 + 4590) >= 1)
      {
        OUTLINED_FUNCTION_38_7(v102);
        OUTLINED_FUNCTION_102_0(v103);
      }
    }
  }

LABEL_13:
  OUTLINED_FUNCTION_101_0(9 * *(a1 + 4282));
  *(a1 + 4374) = v21;
  v22 = *(a1 + 4286);
  *(a1 + 4378) = 4 * v22;
  OUTLINED_FUNCTION_101_0(12 * v22);
  *(a1 + 4382) = v23;
  *(a1 + 4414) = *(a1 + 4410) + 200;
  starttest(a1, 5);
  v24 = OUTLINED_FUNCTION_64_3();
  v26 = v18;
  if (lpta_loadp_setscan_l(v24, v25))
  {
LABEL_14:
    starttest(a1, 10);
    v27 = OUTLINED_FUNCTION_63_3();
    v26 = v18;
    if (!lpta_loadp_setscan_l(v27, v28))
    {
LABEL_15:
      savescptr(a1, 11, v107);
      v29 = OUTLINED_FUNCTION_68_3();
      if (testFldeq(v29, 4u, 3, v30))
      {
        goto LABEL_50;
      }

      if (advance_tok(a1))
      {
        goto LABEL_50;
      }

      v31 = OUTLINED_FUNCTION_65_3();
      if (lpta_loadp_setscan_r(v31, v32) || advance_tok(a1))
      {
        goto LABEL_50;
      }

      bspush_ca_scan(a1, 12);
      v33 = 2;
      goto LABEL_82;
    }

LABEL_71:
    starttest(a1, 16);
    v87 = OUTLINED_FUNCTION_64_3();
    if (lpta_loadp_setscan_r(v87, v88))
    {
      v26 = v18;
LABEL_73:
      starttest(a1, 18);
      v89 = OUTLINED_FUNCTION_64_3();
      if (!lpta_loadp_setscan_r(v89, v90))
      {
        v95 = OUTLINED_FUNCTION_82_3();
        if (testFldeq(v95, v96, v97, 1))
        {
          goto LABEL_50;
        }

        v33 = 3;
LABEL_82:
        v98 = v26;
        v99 = v33;
        bspush_ca_scan_boa();
        v100 = OUTLINED_FUNCTION_68_3();
        if (testFldeq(v100, 4u, v99, v101))
        {
          v26 = v98;
        }

        else
        {
          v26 = 1;
        }

        goto LABEL_50;
      }

LABEL_74:
      v18 = v26;
      v91 = 49;
    }

    else
    {
      bspush_ca_scan(a1, 17);
      v92 = OUTLINED_FUNCTION_82_3();
      if (testFldeq(v92, v93, v94, 1))
      {
        goto LABEL_79;
      }

      v26 = v18;
      if (advance_tok(a1))
      {
        goto LABEL_50;
      }

LABEL_78:
      OUTLINED_FUNCTION_82_3();
      if (test_string_s())
      {
LABEL_79:
        v26 = v18;
        goto LABEL_50;
      }

      v91 = 43;
    }

    *(a1 + 4394) = v91;
    goto LABEL_29;
  }

LABEL_20:
  savescptr(a1, 6, v107);
  if (!advance_tok(a1))
  {
    v34 = OUTLINED_FUNCTION_83_2();
    if (!testFldeq(v34, v35, 3, 0) && !advance_tok(a1))
    {
      v36 = OUTLINED_FUNCTION_65_3();
      if (!lpta_loadp_setscan_r(v36, v37))
      {
        bspush_ca_scan(a1, 7);
        v38 = v26;
LABEL_25:
        v26 = v38;
        v39 = OUTLINED_FUNCTION_83_2();
        if (!testFldeq(v39, v40, 3, 0) && !advance_tok(a1))
        {
          *(a1 + 4514) = 1;
          goto LABEL_28;
        }
      }
    }
  }

  while (1)
  {
    while (1)
    {
LABEL_50:
      v68 = v26;
      while (2)
      {
        v69 = *(a1 + 104);
        if (v69)
        {
          v70 = OUTLINED_FUNCTION_74_3(v69);
          v26 = v71;
        }

        else
        {
          v70 = vback(a1, v68);
          v26 = 0;
        }

        v38 = v26;
        switch(v70)
        {
          case 1:
            v15 = v26;
            goto LABEL_6;
          case 2:
            LOWORD(v16) = *(a1 + 4598);
            v17 = *(a1 + 4594);
            v15 = v26;
            goto LABEL_9;
          case 3:
            v18 = v26;
            goto LABEL_11;
          case 4:
            v18 = v26;
            goto LABEL_13;
          case 5:
            v18 = v26;
            goto LABEL_14;
          case 6:
            goto LABEL_20;
          case 7:
            v72 = OUTLINED_FUNCTION_13_23();
            v75 = testFldeq(v72, v73, v74, 6);
            v68 = v26;
            if (!v75)
            {
              v76 = advance_tok(a1);
              v38 = v26;
              v68 = v26;
              if (!v76)
              {
                goto LABEL_25;
              }
            }

            continue;
          case 8:
            goto LABEL_25;
          case 9:
            goto LABEL_28;
          case 10:
            v18 = v26;
            goto LABEL_71;
          case 11:
            goto LABEL_15;
          case 12:
            v81 = OUTLINED_FUNCTION_40_5();
            bspush_ca_scan(v81, v82);
            OUTLINED_FUNCTION_59_3();
            OUTLINED_FUNCTION_119_0();
            goto LABEL_61;
          case 13:
            bspop_boa(a1);
            goto LABEL_62;
          case 14:
            goto LABEL_62;
          case 15:
            v77 = OUTLINED_FUNCTION_13_23();
            v80 = 40;
LABEL_61:
            v83 = testFldeq(v77, v78, v79, v80);
            v68 = v26;
            if (v83)
            {
              continue;
            }

LABEL_62:
            v84 = advance_tok(a1);
            v68 = v26;
            if (v84)
            {
              continue;
            }

            v86 = 42;
LABEL_66:
            *(a1 + 4394) = v86;
            break;
          case 16:
            goto LABEL_73;
          case 17:
            v18 = v26;
            goto LABEL_78;
          case 18:
            goto LABEL_74;
          case 19:
            bspop_boa(a1);
            v85 = advance_tok(a1);
            v68 = v26;
            if (v85)
            {
              continue;
            }

            v86 = 45;
            goto LABEL_66;
          case 20:
            v51 = v26;
            goto LABEL_39;
          case 21:
            goto LABEL_33;
          case 22:
            goto LABEL_37;
          case 23:
            goto LABEL_93;
          case 24:
            goto LABEL_40;
          case 25:
            goto LABEL_96;
          default:
            goto LABEL_3;
        }

        break;
      }

LABEL_28:
      v18 = v26;
LABEL_29:
      *(a1 + 4722) = 4;
      if (if_testeq_v_i(a1, (a1 + 4720), 1, v41, v42, v43, v44, v45))
      {
        v51 = v18;
        goto LABEL_39;
      }

      *(a1 + 4722) = 5;
      if (!if_testgt_v_i(a1, (a1 + 4720), 30, v46, v47, v48, v49, v50))
      {
        break;
      }

      v26 = v18;
LABEL_33:
      starttest(a1, 22);
      v52 = OUTLINED_FUNCTION_63_3();
      if (lpta_loadp_setscan_l(v52, v53))
      {
        goto LABEL_37;
      }

      v64 = OUTLINED_FUNCTION_83_2();
      if (!testFldeq(v64, v65, 6, 1))
      {
        v66 = OUTLINED_FUNCTION_83_2();
        if (!testFldeq(v66, v67, 5, 5) && !advance_tok(a1))
        {
          OUTLINED_FUNCTION_115_0();
          goto LABEL_36;
        }
      }
    }

    v54 = *(a1 + 4410);
LABEL_36:
    *(a1 + 4414) = v54;
LABEL_37:
    OUTLINED_FUNCTION_118_0();
    if (v56 == v57)
    {
      *(a1 + 4406) = v55;
    }

LABEL_39:
    v26 = v51;
    starttest(a1, 23);
    v58 = OUTLINED_FUNCTION_63_3();
    if (lpta_loadp_setscan_l(v58, v59))
    {
      goto LABEL_93;
    }

LABEL_40:
    savescptr(a1, 24, v107);
    v60 = OUTLINED_FUNCTION_83_2();
    if (!testFldeq(v60, v61, 3, 0) && !advance_tok(a1))
    {
      v62 = OUTLINED_FUNCTION_65_3();
      if (!lpta_loadp_setscan_r(v62, v63) && !advance_tok(a1))
      {
        OUTLINED_FUNCTION_82_3();
        if (!test_string_s())
        {
          break;
        }
      }
    }
  }

  modulate_nas_AV(a1);
LABEL_93:
  v104 = OUTLINED_FUNCTION_61_3();
  if (!lpta_loadp_setscan_r(v104, v105))
  {
    OUTLINED_FUNCTION_17_19();
    if (!test_string_s())
    {
      *(a1 + 4466) = *(a1 + 4394) - 4;
    }
  }

LABEL_96:
  vretproc(a1);
  result = 0;
LABEL_4:
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t do_por_voice_bar(uint64_t a1)
{
  OUTLINED_FUNCTION_36_8(*MEMORY[0x277D85DE8], v22);
  OUTLINED_FUNCTION_31_11(v3, v4, v5, v6, v7, v8, v9, v10, v23, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_10_24(v11, v12, v13, v14, v15, v16, v17, v18, v24, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, *v70, v70[4], *v72, *&v72[4], v72[6], v74, SWORD2(v74), SBYTE6(v74), SHIBYTE(v74), v76, v78))
  {
    v19 = 94;
  }

  else
  {
    fence_24(a1);
    v19 = 0;
    *(a1 + 4394) = 45;
    *(a1 + 4406) = 35;
  }

  vretproc(a1);
  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

uint64_t OUTLINED_FUNCTION_10_24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, char a33, int a34, __int16 a35, char a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, char a42)
{

  return ventproc(v42, &a9, &a40, &a36, &a33, &a42);
}

double OUTLINED_FUNCTION_21_16@<D0>(int a1@<W8>)
{
  result = vcvtd_n_f64_u32(v1 + a1, 1uLL);
  *(v2 + 4594) = result;
  *(v2 + 4598) = -1;
  return result;
}

void *OUTLINED_FUNCTION_24_16()
{
  result = fence_24(v0);
  *(v0 + 4578) = 300;
  return result;
}

uint64_t OUTLINED_FUNCTION_30_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, char a35, int a36, __int16 a37, char a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, char a44)
{

  return ventproc(v44, &a9, &a42, &a38, &a35, &a44);
}

void OUTLINED_FUNCTION_31_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{

  bzero(&a36, 0xC0uLL);
}

void OUTLINED_FUNCTION_36_8(uint64_t a1@<X8>, uint64_t a2)
{
  *(v2 - 40) = a1;

  bzero(&a2, 0xB8uLL);
}

uint64_t OUTLINED_FUNCTION_45_4()
{
  *(v0 + 136) = 1;
  *(v0 + 112) = *(v0 + 1600);
  *(v0 + 128) = 0;

  return test_ptr(v0);
}

void OUTLINED_FUNCTION_47_4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  *(v34 - 40) = v33;
  a32 = 0;
  a33 = 0;

  bzero(&a9, 0xB8uLL);
}

double OUTLINED_FUNCTION_48_4(double a1, double a2)
{
  result = a1 / a2;
  *(v2 + 4378) = result;
  v4 = *(v2 + 4290);
  return result;
}

uint64_t OUTLINED_FUNCTION_50_3()
{
  v0[279] = v0[267] + v0[425] * 5.0 / 10.0;

  return lpta_loadp_setscan_r(v0, (v0 + 203));
}

void OUTLINED_FUNCTION_67_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  bzero(&a9, 0xB8uLL);
}

double OUTLINED_FUNCTION_72_3(double a1)
{
  result = a1 / 100.0;
  *(v1 + 4374) = result;
  v3 = *(v1 + 4286);
  return result;
}

double OUTLINED_FUNCTION_85_2@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{

  *&result = savescptr(v25, a1, &a25).n128_u64[0];
  return result;
}

double OUTLINED_FUNCTION_86_2@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{

  *&result = savescptr(v27, a1, &a27).n128_u64[0];
  return result;
}

BOOL OUTLINED_FUNCTION_103_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(v11 + 4722) = 6;

  return if_testeq_v_i(v11, (v11 + a11), 100, a4, a5, a6, a7, a8);
}

uint64_t OUTLINED_FUNCTION_104_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, char a37, int a38, __int16 a39, char a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, char a46)
{

  return ventproc(v46, &a10, &a44, &a40, &a37, &a46);
}

BOOL OUTLINED_FUNCTION_108_0()
{

  return advance_tok(v0);
}

double OUTLINED_FUNCTION_109_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{

  *&result = savescptr(v32, v33, &a32).n128_u64[0];
  return result;
}

void OUTLINED_FUNCTION_110_0(uint64_t a1, size_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{

  bzero(&a38, a2);
}

double OUTLINED_FUNCTION_111_0@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{

  *&result = savescptr(v37, a1, &a37).n128_u64[0];
  return result;
}

BOOL OUTLINED_FUNCTION_112_0()
{

  return advance_tok(v0);
}

void *fence_25(uint64_t a1, int a2, uint64_t a3)
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

void por_phr_initial_F0()
{
  OUTLINED_FUNCTION_61_4();
  v1 = v0;
  v110 = *MEMORY[0x277D85DE8];
  v105 = 0;
  v104 = 0;
  v102 = 0;
  v103 = 0;
  v100 = 0;
  v101 = 0;
  v99 = 0;
  OUTLINED_FUNCTION_21_17();
  bzero(v98, v2);
  OUTLINED_FUNCTION_20_17();
  bzero(v109, v3);
  if (setjmp(v109) || ventproc(v1, v98, v108, v107, v106, v109))
  {
    goto LABEL_3;
  }

  LOWORD(v105) = -4;
  LOWORD(v104) = -4;
  push_ptr_init(v1, &v102);
  v5 = push_ptr_init(v1, &v100);
  v99 = 65532;
  OUTLINED_FUNCTION_39_7(v5, v6, &_MergedGlobals_1_2);
  v101 = *(v1 + 3352);
  HIWORD(v104) = 0;
  v103 = *(v1 + 776);
  HIWORD(v105) = 70;
  OUTLINED_FUNCTION_47_5();
  if (!v13)
  {
    v15 = 0;
    v16 = 4;
    v17 = 21;
    v18 = 8;
    v19 = 10;
    while (2)
    {
      if (*(v1 + 746) > 0)
      {
LABEL_11:
        OUTLINED_FUNCTION_43_5();
        v97 = v20;
        starttest(v1, v20);
        v21 = OUTLINED_FUNCTION_1_27();
        if (lpta_loadp_setscan_r(v21, v22))
        {
          goto LABEL_3;
        }

        bspush_ca_scan_boa();
        v23 = OUTLINED_FUNCTION_9_25();
        if (!npush_fld(v23, v24, 0))
        {
          v25 = OUTLINED_FUNCTION_11_24();
          npush_i(v25);
          v33 = if_testeq(v1, v26, v27, v28, v29, v30, v31, v32);
          goto LABEL_20;
        }

LABEL_22:
        v38 = v15;
LABEL_23:
        v39 = *(v1 + 104);
        if (v39)
        {
          v40 = OUTLINED_FUNCTION_25_16(v39);
          v15 = v41;
        }

        else
        {
          v40 = vback(v1, v38);
          v15 = 0;
        }

        switch(v40)
        {
          case 1:
            v16 = v97;
            v17 = v95;
            v18 = v94;
            v19 = v93;
            continue;
          case 2:
            goto LABEL_7;
          case 5:
            v17 = v95;
            v18 = v94;
            v19 = v93;
            goto LABEL_11;
          case 6:
            v17 = v95;
            v18 = v94;
            v19 = v93;
            goto LABEL_15;
          case 7:
            goto LABEL_56;
          case 8:
            v37 = v15;
            goto LABEL_55;
          case 9:
            goto LABEL_58;
          case 10:
            bspop_boa(v1);
            v42 = advance_tok(v1);
            v38 = v15;
            if (v42)
            {
              goto LABEL_23;
            }

            HIWORD(v105) += 20;
            goto LABEL_58;
          case 12:
            bspop_boa(v1);
            lpta_loadpn(v1, &v102);
            rpta_loadpn(v1, &v100);
            v59 = compare_ptas(v1);
            v38 = v15;
            if (v59)
            {
              goto LABEL_23;
            }

            v60 = testneq(v1);
            v38 = v15;
            if (v60)
            {
              goto LABEL_23;
            }

            v14 = &v100;
            goto LABEL_8;
          case 13:
            bspop_boa(v1);
            v61 = advance_tok(v1);
            v38 = v15;
            if (v61)
            {
              goto LABEL_23;
            }

            goto LABEL_41;
          case 14:
            bspop_boa(v1);
            v58 = advance_tok(v1);
            v38 = v15;
            if (v58)
            {
              goto LABEL_23;
            }

            bspush_ca_scan(v1, 15);
            goto LABEL_41;
          case 15:
            OUTLINED_FUNCTION_35_9();
            v43 = *(v1 + 712);
            v44 = OUTLINED_FUNCTION_3_26();
            v45 = test_ptr(v44);
            v38 = v15;
            if (v45)
            {
              goto LABEL_23;
            }

            starttest(v1, 17);
            v46 = OUTLINED_FUNCTION_2_27();
            if (lpta_loadp_setscan_r(v46, v47))
            {
              goto LABEL_31;
            }

            v77 = OUTLINED_FUNCTION_14_22();
            v79 = testFldeq(v77, v78, 6, 1);
            v38 = v15;
            if (v79)
            {
              goto LABEL_23;
            }

            v80 = advance_tok(v1);
            v38 = v15;
            if (v80)
            {
              goto LABEL_23;
            }

            starttest_e(v1, v96);
            v52 = OUTLINED_FUNCTION_57_4();
            v54 = 80;
            goto LABEL_33;
          case 16:
LABEL_41:
            bspush_ca_scan_boa();
            v62 = OUTLINED_FUNCTION_9_25();
            v64 = npush_fld(v62, v63, 0);
            v38 = v15;
            if (!v64)
            {
              v65 = OUTLINED_FUNCTION_11_24();
              npush_i(v65);
              if (if_testeq(v1, v66, v67, v68, v69, v70, v71, v72))
              {
                v38 = v15;
              }

              else
              {
                v38 = 1;
              }
            }

            goto LABEL_23;
          case 17:
LABEL_31:
            starttest(v1, 20);
            v48 = OUTLINED_FUNCTION_2_27();
            if (lpta_loadp_setscan_r(v48, v49))
            {
              goto LABEL_32;
            }

            v73 = OUTLINED_FUNCTION_14_22();
            v75 = testFldeq(v73, v74, 6, 2);
            v38 = v15;
            if (v75)
            {
              goto LABEL_23;
            }

            v76 = advance_tok(v1);
            v38 = v15;
            if (v76)
            {
              goto LABEL_23;
            }

            starttest_e(v1, v95);
            v52 = OUTLINED_FUNCTION_57_4();
            v54 = 100;
LABEL_33:
            move_i(v52, v53, v54);
            v55 = OUTLINED_FUNCTION_22_17();
            inserted = insert_f0(v55, v56, v17);
            v38 = v15;
            if (!inserted)
            {
              goto LABEL_3;
            }

            goto LABEL_23;
          case 20:
LABEL_32:
            v50 = OUTLINED_FUNCTION_53_4();
            starttest(v50, v51);
            v52 = OUTLINED_FUNCTION_57_4();
            v54 = v18;
            goto LABEL_33;
          default:
            goto LABEL_3;
        }
      }

      break;
    }

    v97 = v16;
    HIWORD(v105) = 130;
    HIWORD(v104) = 0;
    insert_f0(v1, &v102, &v104);
LABEL_15:
    OUTLINED_FUNCTION_43_5();
    v101 = *(v1 + 792);
    lpta_loadpn(v1, &v100);
    rpta_loadpn(v1, v1 + 656);
    if (!compare_ptas(v1) && !testeq(v1))
    {
      v34 = OUTLINED_FUNCTION_49_4();
      if (!lpta_loadp_setscan_l(v34, v35))
      {
        v36 = advance_tok(v1);
        v37 = v15;
        if (!v36)
        {
LABEL_55:
          v15 = v37;
          savescptr(v1, v94, &v100);
        }
      }
    }

LABEL_56:
    HIWORD(v105) = 80;
    HIWORD(v104) = 97;
    starttest(v1, 9);
    v81 = OUTLINED_FUNCTION_49_4();
    if (lpta_loadp_setscan_r(v81, v82) || advance_tok(v1))
    {
LABEL_58:
      starttest(v1, 11);
      v83 = OUTLINED_FUNCTION_49_4();
      if (lpta_loadp_setscan_r(v83, v84) || advance_tok(v1))
      {
        goto LABEL_3;
      }

      bspush_ca_scan_boa();
      if (testFldeq(v1, 4u, 3, 0))
      {
        v19 = 4;
        goto LABEL_22;
      }

      v19 = 4;
      if (npush_fld(v1, 4u, 8))
      {
        goto LABEL_22;
      }

      v85 = OUTLINED_FUNCTION_11_24();
      npush_i(v85);
      if (if_testeq(v1, v86, v87, v88, v89, v90, v91, v92))
      {
        goto LABEL_22;
      }

      v33 = advance_tok(v1);
    }

    else
    {
      bspush_ca_scan_boa();
      v33 = testFldeq(v1, v19, 2, 0);
    }

LABEL_20:
    if (!v33)
    {
      v15 = 1;
    }

    goto LABEL_22;
  }

  set_first_postnuc_value(v1, (v1 + 4912), v7, v8, v9, v10, v11, v12);
LABEL_7:
  HIWORD(v105) = ((*(v1 + 4918) * SHIWORD(v105)) / 100.0 + *(v1 + 4914));
  v14 = &v102;
LABEL_8:
  insert_f0(v1, v14, &v104);
LABEL_3:
  vretproc(v1);
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_60_4();
}

uint64_t set_first_postnuc_value(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v76 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_18_19(a1, a2, a3, a4, a5, a6, a7, a8, v46);
  OUTLINED_FUNCTION_20_17();
  bzero(v75, v10);
  v11 = setjmp(v75);
  if (!v11 && !OUTLINED_FUNCTION_4_25(v11, v12, v13, v14, v15, v16, v17, v18, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, 0, v71, *v72, *&v72[4], v72[6], v73, SWORD2(v73), SBYTE6(v73), SHIBYTE(v73), v74, v75[0]))
  {
    v21 = OUTLINED_FUNCTION_27_14();
    get_parm(v21, v22, a2, -4);
    fence_25(a1, 0, &_MergedGlobals_1_2);
    OUTLINED_FUNCTION_50_4();
    if (v23)
    {
      v24 = *(a1 + 3274);
      if (*(a1 + 2542) != v24 || (v24 = *(a1 + 2542), *(a1 + 2574) != *(a1 + 3270)))
      {
LABEL_39:
        if (*(a1 + 3322) != v24)
        {
LABEL_41:
          v44 = *(a1 + 2546);
          OUTLINED_FUNCTION_48_5();
          if (v23)
          {
            v45 = 85;
          }

          else
          {
LABEL_44:
            if (*(a1 + 3210) == v43)
            {
              v45 = 30;
            }

            else
            {
LABEL_46:
              v45 = 70;
            }
          }

          goto LABEL_49;
        }
      }

      v45 = 20;
    }

    else
    {
      while (2)
      {
        if (*(a1 + 3286) > 2)
        {
          v45 = -25;
        }

        else
        {
LABEL_11:
          v25 = OUTLINED_FUNCTION_26_16();
          starttest(v25, v26);
          OUTLINED_FUNCTION_30_12();
          if (v23)
          {
            v27 = OUTLINED_FUNCTION_15_22();
            if (!lpta_loadp_setscan_r(v27, v28) && !advance_tok(a1))
            {
LABEL_17:
              while (!advance_tok(a1))
              {
                v29 = OUTLINED_FUNCTION_33_11();
                bspush_ca_scan(v29, v30);
              }

              goto LABEL_22;
            }
          }

LABEL_26:
          if (*(a1 + 3286) == 2)
          {
            v39 = OUTLINED_FUNCTION_53_4();
            starttest(v39, v40);
            v41 = OUTLINED_FUNCTION_15_22();
            if (!lpta_loadp_setscan_r(v41, v42) && !advance_tok(a1) && !advance_tok(a1) && !advance_tok(a1) && !advance_tok(a1))
            {
              do
              {
LABEL_32:
                bspush_ca_scan(a1, 14);
              }

              while (!advance_tok(a1));
LABEL_22:
              v35 = *(a1 + 104);
              if (v35)
              {
                v36 = OUTLINED_FUNCTION_25_16(v35);
              }

              else
              {
                v37 = OUTLINED_FUNCTION_12_24();
                v36 = vback(v37, v38);
              }

              switch(v36)
              {
                case 1:
                  continue;
                case 2:
                  v24 = *(a1 + 3274);
                  goto LABEL_39;
                case 3:
                case 7:
                case 16:
                  v45 = v70;
                  goto LABEL_49;
                case 4:
                  goto LABEL_41;
                case 5:
                  v43 = *(a1 + 3270);
                  goto LABEL_44;
                case 6:
                  goto LABEL_46;
                case 8:
                  goto LABEL_11;
                case 9:
                  goto LABEL_26;
                case 10:
                  *(a1 + 136) = 1;
                  v31 = *(a1 + 1472);
                  v32 = OUTLINED_FUNCTION_3_26();
                  if (test_ptr(v32))
                  {
                    goto LABEL_22;
                  }

                  v45 = 45;
                  break;
                case 11:
                  goto LABEL_17;
                case 12:
                  goto LABEL_36;
                case 13:
                  goto LABEL_34;
                case 14:
                  *(a1 + 136) = 1;
                  v33 = *(a1 + 1472);
                  v34 = OUTLINED_FUNCTION_3_26();
                  if (test_ptr(v34))
                  {
                    goto LABEL_22;
                  }

                  v45 = 15;
                  break;
                case 15:
                  goto LABEL_32;
                default:
                  goto LABEL_3;
              }

              break;
            }

LABEL_34:
            v45 = 5;
          }

          else
          {
LABEL_36:
            v45 = 25;
          }
        }

        break;
      }
    }

LABEL_49:
    a2[1] = v45;
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

uint64_t por_prenucl_f0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v85 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_18_19(a1, a2, a3, a4, a5, a6, a7, a8, v28);
  OUTLINED_FUNCTION_20_17();
  OUTLINED_FUNCTION_55_4(v10, v11, v12, v13, v14, v15, v16, v17, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83);
  v18 = setjmp(v8);
  if (v18 || OUTLINED_FUNCTION_4_25(v18, v19, v20, v21, v22, v23, v24, v25, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, *v76, v76[4], *v78, *&v78[4], v78[6], v80, SWORD2(v80), SBYTE6(v80), SHIBYTE(v80), v82, v84))
  {
    vretproc(a1);
    result = 94;
  }

  else
  {
    fence_25(a1, 0, &_MergedGlobals_1_2);
    if (*(a1 + 746) >= 1)
    {
      por_add_target(a1);
      por_position_t_ptrs();
      realize_prenucl_tone(a1);
    }

    vretproc(a1);
    result = 0;
  }

  v27 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t por_add_target(void *a1)
{
  v306 = *MEMORY[0x277D85DE8];
  v301[0] = 0;
  v301[1] = 0;
  v300[0] = 0;
  v300[1] = 0;
  v299[0] = 0;
  v299[1] = 0;
  v297 = 0;
  v298 = 0;
  v296 = 0;
  OUTLINED_FUNCTION_21_17();
  bzero(&v273, v2);
  OUTLINED_FUNCTION_20_17();
  bzero(v305, v3);
  if (setjmp(v305) || ventproc(a1, &v273, v304, v303, v302, v305))
  {
LABEL_3:
    v4 = 94;
    goto LABEL_4;
  }

  push_ptr_init(a1, v301);
  push_ptr_init(a1, v300);
  push_ptr_init(a1, v299);
  v298 = 0xFFFC0000FFFCLL;
  v7 = push_ptr_init(a1, &v296);
  v8 = 0;
  OUTLINED_FUNCTION_39_7(v7, v9, &_MergedGlobals_1_2);
  v10 = OUTLINED_FUNCTION_7_25();
  starttest(v10, v11);
  v12 = OUTLINED_FUNCTION_13_24();
  v14 = 0;
  if (!lpta_loadp_setscan_l(v12, v13))
  {
LABEL_22:
    OUTLINED_FUNCTION_42_5(2, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299[0]);
    if (!OUTLINED_FUNCTION_8_25())
    {
      v53 = OUTLINED_FUNCTION_12_24();
      npush_i(v53);
      if (!if_testeq(a1, v54, v55, v56, v57, v58, v59, v60) && !advance_tok(a1))
      {
        v61 = OUTLINED_FUNCTION_13_24();
        lpta_loadp_setscan_r(v61, v62);
        OUTLINED_FUNCTION_44_5();
        if (v63)
        {
          goto LABEL_42;
        }

LABEL_26:
        v8 = v14;
        savescptr(a1, 3, v301);
        if (!OUTLINED_FUNCTION_8_25())
        {
          v64 = OUTLINED_FUNCTION_12_24();
          npush_i(v64);
          if (!if_testeq(a1, v65, v66, v67, v68, v69, v70, v71))
          {
            advance_tok(a1);
            OUTLINED_FUNCTION_44_5();
            if (v72)
            {
              goto LABEL_42;
            }

LABEL_29:
            v8 = v14;
            savescptr(a1, 4, v300);
            if (!OUTLINED_FUNCTION_8_25())
            {
              v73 = OUTLINED_FUNCTION_12_24();
              npush_i(v73);
              if (!if_testeq(a1, v74, v75, v76, v77, v78, v79, v80) && !advance_tok(a1) && !OUTLINED_FUNCTION_8_25())
              {
                v81 = OUTLINED_FUNCTION_12_24();
                npush_i(v81);
                if (!if_testeq(a1, v82, v83, v84, v85, v86, v87, v88) && !advance_tok(a1))
                {
                  OUTLINED_FUNCTION_7_25();
                  bspush_ca_boa();
                  v89 = OUTLINED_FUNCTION_23_17();
                  if (!lpta_loadp_setscan_r(v89, v90))
                  {
                    v91 = OUTLINED_FUNCTION_5_25();
                    if (!testFldeq(v91, v92, v93, 2) && !advance_tok(a1))
                    {
                      OUTLINED_FUNCTION_35_9();
                      v94 = OUTLINED_FUNCTION_3_26();
                      if (test_ptr(v94))
                      {
                        v35 = v14;
                      }

                      else
                      {
                        v35 = 1;
                      }

                      goto LABEL_42;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    goto LABEL_41;
  }

  while (2)
  {
    v15 = OUTLINED_FUNCTION_7_25();
    starttest(v15, v16);
    v17 = OUTLINED_FUNCTION_2_27();
    v8 = v14;
    if (lpta_loadp_setscan_l(v17, v18))
    {
LABEL_7:
      v19 = OUTLINED_FUNCTION_7_25();
      starttest(v19, v20);
      v21 = OUTLINED_FUNCTION_2_27();
      v8 = v14;
      if (lpta_loadp_setscan_l(v21, v22))
      {
        goto LABEL_108;
      }

LABEL_8:
      OUTLINED_FUNCTION_42_5(32, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299[0]);
      v23 = OUTLINED_FUNCTION_14_22();
      if (!npush_fld(v23, v24, 5))
      {
        v25 = OUTLINED_FUNCTION_12_24();
        npush_i(v25);
        if (!if_testeq(a1, v26, v27, v28, v29, v30, v31, v32) && !advance_tok(a1))
        {
          v33 = OUTLINED_FUNCTION_15_22();
          lpta_loadp_setscan_r(v33, v34);
          OUTLINED_FUNCTION_44_5();
          if (v36)
          {
            goto LABEL_42;
          }

LABEL_12:
          v8 = v14;
          v37 = OUTLINED_FUNCTION_7_25();
          if (!chstream(v37, v38, 7u))
          {
            OUTLINED_FUNCTION_9_25();
            if (!test_string_i())
            {
              v39 = OUTLINED_FUNCTION_7_25();
              starttest(v39, v40);
              v41 = OUTLINED_FUNCTION_13_24();
              if (!lpta_loadp_setscan_r(v41, v42) && !advance_tok(a1))
              {
LABEL_16:
                OUTLINED_FUNCTION_34_10(35, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296);
                if (OUTLINED_FUNCTION_8_25() || (v43 = OUTLINED_FUNCTION_12_24(), npush_i(v43), if_testeq(a1, v44, v45, v46, v47, v48, v49, v50)) || advance_tok(a1))
                {
                  v35 = v14;
                  goto LABEL_42;
                }

                v51 = OUTLINED_FUNCTION_7_25();
                starttest_e(v51, v52);
                goto LABEL_93;
              }

LABEL_106:
              v222 = OUTLINED_FUNCTION_16_21();
              if (lpta_loadp_setscan_r(v222, v223) || advance_tok(a1))
              {
LABEL_108:
                v4 = 0;
                goto LABEL_4;
              }

LABEL_110:
              v224 = v8;
              savescptr(a1, 38, &v296);
              v225 = OUTLINED_FUNCTION_7_25();
              starttest_e(v225, v226);
              v4 = 0;
              v227 = OUTLINED_FUNCTION_33_11();
              move_i(v227, v228, 0);
              v229 = OUTLINED_FUNCTION_53_4();
              move_i(v229, v230, 50);
              v231 = OUTLINED_FUNCTION_26_16();
              inserted = insert_f0(v231, v232, &v298);
              v35 = v224;
              if (!inserted)
              {
                goto LABEL_4;
              }

LABEL_42:
              v95 = a1[13];
              if (v95)
              {
                v96 = OUTLINED_FUNCTION_25_16(v95);
                v14 = v97;
              }

              else
              {
                v96 = vback(a1, v35);
                v14 = 0;
              }

              v4 = 0;
              v98 = v14;
              switch(v96)
              {
                case 1:
                  continue;
                case 2:
                  v8 = v14;
                  goto LABEL_22;
                case 3:
                  goto LABEL_26;
                case 4:
                  goto LABEL_29;
                case 5:
                  bspop_boa(a1);
                  v99 = OUTLINED_FUNCTION_7_25();
                  starttest(v99, v100);
                  v101 = OUTLINED_FUNCTION_24_17();
                  move_i(v101, v102, v103);
                  v104 = OUTLINED_FUNCTION_26_16();
                  move_i(v104, v105, 70);
                  v106 = OUTLINED_FUNCTION_40_6();
                  v109 = insert_f0(v106, v107, v108);
                  v35 = v14;
                  if (v109)
                  {
                    goto LABEL_42;
                  }

                  goto LABEL_54;
                case 6:
LABEL_54:
                  v120 = OUTLINED_FUNCTION_7_25();
                  starttest(v120, v121);
                  v4 = 0;
                  v122 = &v298;
                  v123 = OUTLINED_FUNCTION_26_16();
                  move_i(v123, v124, 0);
                  v125 = OUTLINED_FUNCTION_33_11();
                  move_i(v125, v126, 110);
                  v127 = v300;
                  goto LABEL_55;
                case 7:
                case 8:
                case 14:
                case 22:
                case 31:
                case 36:
                case 37:
                case 39:
                  goto LABEL_4;
                case 9:
                  goto LABEL_7;
                case 10:
                  v8 = v14;
                  goto LABEL_59;
                case 11:
                  goto LABEL_63;
                case 12:
                  v8 = v14;
                  goto LABEL_77;
                case 13:
                  v160 = v14;
                  goto LABEL_85;
                case 15:
                  goto LABEL_87;
                case 16:
                  goto LABEL_88;
                case 17:
                  OUTLINED_FUNCTION_34_10(17, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296);
                  v115 = OUTLINED_FUNCTION_5_25();
                  v118 = testFldeq(v115, v116, v117, 2);
                  v35 = v14;
                  if (!v118)
                  {
                    v119 = advance_tok(a1);
                    v98 = v14;
                    v35 = v14;
                    if (!v119)
                    {
                      goto LABEL_88;
                    }
                  }

                  goto LABEL_42;
                case 18:
                  v161 = v14;
                  goto LABEL_94;
                case 19:
                  v8 = v14;
                  goto LABEL_91;
                case 20:
                  v8 = v14;
                  goto LABEL_92;
                case 21:
                  goto LABEL_99;
                case 23:
                  v8 = v14;
                  goto LABEL_79;
                case 24:
                  v8 = v14;
                  goto LABEL_113;
                case 25:
                  goto LABEL_116;
                case 26:
                  OUTLINED_FUNCTION_34_10(26, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296);
                  v110 = OUTLINED_FUNCTION_5_25();
                  v113 = testFldeq(v110, v111, v112, 2);
                  v35 = v14;
                  if (!v113)
                  {
                    v114 = advance_tok(a1);
                    v35 = v14;
                    if (!v114)
                    {
                      goto LABEL_116;
                    }
                  }

                  goto LABEL_42;
                case 27:
                  v161 = v14;
                  goto LABEL_81;
                case 28:
                  v129 = v14;
                  goto LABEL_117;
                case 29:
                  goto LABEL_119;
                case 30:
                  goto LABEL_120;
                case 32:
                  v8 = v14;
                  goto LABEL_8;
                case 33:
                  goto LABEL_12;
                case 34:
                  v8 = v14;
                  goto LABEL_106;
                case 35:
                  goto LABEL_16;
                case 38:
                  v8 = v14;
                  goto LABEL_110;
                default:
                  goto LABEL_3;
              }
            }
          }
        }
      }

LABEL_41:
      v35 = v8;
      goto LABEL_42;
    }

    break;
  }

LABEL_59:
  OUTLINED_FUNCTION_42_5(10, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299[0]);
  v130 = OUTLINED_FUNCTION_14_22();
  if (npush_fld(v130, v131, 5))
  {
    goto LABEL_41;
  }

  v132 = OUTLINED_FUNCTION_12_24();
  npush_i(v132);
  if (if_testgt(a1, v133, v134, v135, v136, v137, v138, v139) || advance_tok(a1))
  {
    goto LABEL_41;
  }

  v140 = OUTLINED_FUNCTION_15_22();
  lpta_loadp_setscan_r(v140, v141);
  OUTLINED_FUNCTION_44_5();
  if (v142)
  {
    goto LABEL_42;
  }

LABEL_63:
  v8 = v14;
  v143 = OUTLINED_FUNCTION_7_25();
  if (chstream(v143, v144, 7u))
  {
    goto LABEL_41;
  }

  OUTLINED_FUNCTION_9_25();
  if (test_string_i())
  {
    goto LABEL_41;
  }

  v145 = OUTLINED_FUNCTION_7_25();
  starttest(v145, v146);
  v147 = OUTLINED_FUNCTION_2_27();
  if (lpta_loadp_setscan_l(v147, v148) || advance_tok(a1))
  {
LABEL_77:
    v162 = OUTLINED_FUNCTION_7_25();
    starttest(v162, v163);
    v164 = OUTLINED_FUNCTION_2_27();
    if (lpta_loadp_setscan_l(v164, v165) || advance_tok(a1))
    {
      goto LABEL_108;
    }

LABEL_79:
    OUTLINED_FUNCTION_34_10(23, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296);
LABEL_113:
    v234 = OUTLINED_FUNCTION_7_25();
    if (chstream(v234, v235, 7u))
    {
      goto LABEL_41;
    }

    OUTLINED_FUNCTION_9_25();
    if (test_string_i())
    {
      goto LABEL_41;
    }

    v236 = OUTLINED_FUNCTION_7_25();
    starttest(v236, v237);
    v238 = OUTLINED_FUNCTION_23_17();
    v161 = v8;
    if (lpta_loadp_setscan_r(v238, v239))
    {
LABEL_116:
      v240 = OUTLINED_FUNCTION_7_25();
      starttest(v240, v241);
      v242 = OUTLINED_FUNCTION_23_17();
      lpta_loadp_setscan_l(v242, v243);
      OUTLINED_FUNCTION_44_5();
      if (v244)
      {
LABEL_117:
        v14 = v129;
        v245 = OUTLINED_FUNCTION_7_25();
        starttest(v245, v246);
        v4 = 0;
        v122 = &v298;
        v247 = OUTLINED_FUNCTION_26_16();
        move_i(v247, v248, 0);
        goto LABEL_118;
      }

LABEL_119:
      OUTLINED_FUNCTION_42_5(29, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299[0]);
LABEL_120:
      v8 = v14;
      v251 = OUTLINED_FUNCTION_7_25();
      if (test_synch(v251, v252, 1u, v253))
      {
        goto LABEL_41;
      }

      v254 = OUTLINED_FUNCTION_19_18();
      if (testFldeq(v254, v255, 2, v256))
      {
        goto LABEL_41;
      }

      v257 = OUTLINED_FUNCTION_19_18();
      if (npush_fld(v257, v258, 8))
      {
        goto LABEL_41;
      }

      v259 = OUTLINED_FUNCTION_11_24();
      npush_i(v259);
      if (if_testeq(a1, v260, v261, v262, v263, v264, v265, v266))
      {
        goto LABEL_41;
      }

      if (advance_tok(a1))
      {
        goto LABEL_41;
      }

      v267 = OUTLINED_FUNCTION_23_17();
      if (lpta_loadp_setscan_r(v267, v268))
      {
        goto LABEL_41;
      }

      v269 = OUTLINED_FUNCTION_5_25();
      if (testFldeq(v269, v270, v271, 2))
      {
        goto LABEL_41;
      }

      goto LABEL_103;
    }

    do
    {
LABEL_81:
      v166 = OUTLINED_FUNCTION_24_17();
      bspush_ca_scan(v166, v167);
      v168 = OUTLINED_FUNCTION_5_25();
    }

    while (!testFldeq(v168, v169, v170, 1) && !advance_tok(a1));
LABEL_96:
    v35 = v161;
    goto LABEL_42;
  }

  v149 = OUTLINED_FUNCTION_14_22();
  if (npush_fld(v149, v150, 5))
  {
    goto LABEL_41;
  }

  v151 = OUTLINED_FUNCTION_12_24();
  npush_i(v151);
  if (if_testgt(a1, v152, v153, v154, v155, v156, v157, v158))
  {
    goto LABEL_41;
  }

  v159 = advance_tok(a1);
  v160 = v14;
  v35 = v14;
  if (v159)
  {
    goto LABEL_42;
  }

LABEL_85:
  v171 = OUTLINED_FUNCTION_40_6();
  savescptr(v171, v172, v173);
  v174 = OUTLINED_FUNCTION_24_17();
  if (lpta_loadp_setscan_r(v174, v175))
  {
    goto LABEL_108;
  }

  v14 = v160;
  if (advance_tok(a1))
  {
    goto LABEL_108;
  }

LABEL_87:
  v176 = OUTLINED_FUNCTION_40_6();
  savescptr(v176, v177, v178);
  v179 = OUTLINED_FUNCTION_7_25();
  starttest(v179, v180);
  v181 = OUTLINED_FUNCTION_24_17();
  v183 = lpta_loadp_setscan_r(v181, v182);
  v161 = v14;
  v98 = v14;
  if (!v183)
  {
    do
    {
LABEL_94:
      v196 = OUTLINED_FUNCTION_24_17();
      bspush_ca_scan(v196, v197);
      v198 = OUTLINED_FUNCTION_5_25();
    }

    while (!testFldeq(v198, v199, v200, 1) && !advance_tok(a1));
    goto LABEL_96;
  }

LABEL_88:
  v8 = v98;
  v184 = OUTLINED_FUNCTION_13_24();
  if (!lpta_loadp_setscan_l(v184, v185) && !advance_tok(a1))
  {
    OUTLINED_FUNCTION_35_9();
    v186 = a1[182];
    v187 = OUTLINED_FUNCTION_3_26();
    if (!test_ptr(v187))
    {
      goto LABEL_108;
    }
  }

LABEL_91:
  v188 = OUTLINED_FUNCTION_7_25();
  starttest(v188, v189);
  v190 = OUTLINED_FUNCTION_23_17();
  if (!lpta_loadp_setscan_l(v190, v191))
  {
    v201 = OUTLINED_FUNCTION_5_25();
    if (testFldeq(v201, v202, v203, 2))
    {
      goto LABEL_41;
    }

    advance_tok(a1);
    OUTLINED_FUNCTION_44_5();
    if (v204)
    {
      goto LABEL_42;
    }

LABEL_99:
    v8 = v14;
    v205 = OUTLINED_FUNCTION_7_25();
    if (test_synch(v205, v206, 1u, v207))
    {
      goto LABEL_41;
    }

    v208 = OUTLINED_FUNCTION_19_18();
    if (testFldeq(v208, v209, 2, v210))
    {
      goto LABEL_41;
    }

    v211 = OUTLINED_FUNCTION_19_18();
    if (npush_fld(v211, v212, 8))
    {
      goto LABEL_41;
    }

    v213 = OUTLINED_FUNCTION_11_24();
    npush_i(v213);
    if (if_testeq(a1, v214, v215, v216, v217, v218, v219, v220))
    {
      goto LABEL_41;
    }

LABEL_103:
    v221 = advance_tok(a1);
    v35 = v8;
    if (!v221)
    {
      goto LABEL_108;
    }

    goto LABEL_42;
  }

LABEL_92:
  v14 = v8;
  v192 = OUTLINED_FUNCTION_7_25();
  starttest(v192, v193);
LABEL_93:
  v4 = 0;
  v122 = &v298 + 2;
  v194 = OUTLINED_FUNCTION_26_16();
  move_i(v194, v195, 0);
LABEL_118:
  v249 = OUTLINED_FUNCTION_33_11();
  move_i(v249, v250, 50);
  v127 = &v296;
LABEL_55:
  v128 = insert_f0(a1, v127, v122);
  v35 = v14;
  if (v128)
  {
    goto LABEL_42;
  }

LABEL_4:
  vretproc(a1);
  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

void por_position_t_ptrs()
{
  OUTLINED_FUNCTION_61_4();
  v2 = v1;
  v289 = *MEMORY[0x277D85DE8];
  LODWORD(v279) = 0;
  OUTLINED_FUNCTION_18_19(v1, v3, v4, v5, v6, v7, v8, v9, v206);
  OUTLINED_FUNCTION_6_25(v10, v11, v12, v13, v14, v15, v16, v17, v207, v210, v213, v216, v219, v222, v225, v228, v231, v234, v237, v240, v243, v246, v249, v252, v255, v258, v261, v264, v267, v270, v273, 0, 0, v279, v281, v283, v285, v287);
  v18 = setjmp(v0);
  if (!v18 && !OUTLINED_FUNCTION_0_29(v18, v19, v20, v21, v22, v23, v24, v25, v208, v211, v214, v217, v220, v223, v226, v229, v232, v235, v238, v241, v244, v247, v250, v253, v256, v259, v262, v265, v268, v271, v274, v276, v278, *v280, v280[4], *v282, *&v282[4], v282[6], v284, SWORD2(v284), SBYTE6(v284), SHIBYTE(v284), v286, v288))
  {
    v27 = OUTLINED_FUNCTION_27_14();
    v29 = push_ptr_init(v27, v28);
    OUTLINED_FUNCTION_39_7(v29, v30, &_MergedGlobals_1_2);
    v31 = OUTLINED_FUNCTION_11_24();
    fence_25(v31, v32, v33);
    v2[143] = v2[97];
    v2[145] = v2[99];
    v2[147] = v2[419];
    v34 = OUTLINED_FUNCTION_17_20();
    lpta_loadpn(v34, v35);
    v36 = OUTLINED_FUNCTION_16_21();
    rpta_loadpn(v36, v37);
    if (compare_ptas(v2))
    {
      v38 = 0;
    }

    else if (testneq(v2))
    {
      v38 = 0;
    }

    else
    {
      v39 = OUTLINED_FUNCTION_7_25();
      starttest_e(v39, v40);
      v41 = OUTLINED_FUNCTION_17_20();
      v43 = lpta_loadp_setscan_l(v41, v42);
      v38 = 0;
      v44 = 0;
      if (!v43)
      {
LABEL_14:
        LODWORD(v51) = v44;
        v58 = OUTLINED_FUNCTION_7_25();
        bspush_ca_scan(v58, v59);
        v60 = OUTLINED_FUNCTION_5_25();
        if (!testFldeq(v60, v61, v62, 1))
        {
          bspush_ca_scan_boa();
          v63 = OUTLINED_FUNCTION_19_18();
          if (!testFldeq(v63, v64, 3, v65))
          {
            LODWORD(v51) = 1;
          }
        }

        goto LABEL_17;
      }
    }

    while (2)
    {
      v45 = v38;
      v46 = OUTLINED_FUNCTION_7_25();
      starttest(v46, v47);
      v48 = OUTLINED_FUNCTION_23_17();
      v50 = lpta_loadp_setscan_l(v48, v49);
      LODWORD(v51) = v45;
      v52 = v45;
      if (!v50)
      {
        do
        {
LABEL_79:
          v193 = OUTLINED_FUNCTION_24_17();
          bspush_ca_scan(v193, v194);
          v195 = OUTLINED_FUNCTION_5_25();
        }

        while (!testFldeq(v195, v196, v197, 1) && !advance_tok(v2));
        goto LABEL_17;
      }

LABEL_10:
      v53 = v52;
      v54 = OUTLINED_FUNCTION_29_13();
      lpta_loadpn(v54, v55);
      v56 = OUTLINED_FUNCTION_28_13();
      rpta_loadpn(v56, v57);
      if (compare_ptas(v2))
      {
        v51 = v53;
      }

      else
      {
        v51 = v53;
        if (!testeq(v2))
        {
          goto LABEL_54;
        }
      }

LABEL_51:
      v119 = OUTLINED_FUNCTION_7_25();
      starttest(v119, v120);
      v121 = OUTLINED_FUNCTION_24_17();
      if (lpta_loadp_setscan_l(v121, v122))
      {
LABEL_52:
        v123 = OUTLINED_FUNCTION_7_25();
        starttest(v123, v124);
        v125 = OUTLINED_FUNCTION_24_17();
        if (lpta_loadp_setscan_l(v125, v126))
        {
LABEL_53:
          v127 = OUTLINED_FUNCTION_45_5();
          lpta_loadpn(v127, v128);
          OUTLINED_FUNCTION_19_18();
          lpta_mover();
          v129 = OUTLINED_FUNCTION_37_9();
          lpta_storep(v129, v130);
          v53 = v51;
LABEL_54:
          v131 = OUTLINED_FUNCTION_37_9();
          lpta_loadpn(v131, v132);
          rpta_loadpn(v2, v2 + 418);
          if (compare_ptas(v2))
          {
            v51 = v53;
          }

          else
          {
            v51 = v53;
            if (!testeq(v2))
            {
              break;
            }
          }

LABEL_64:
          v153 = OUTLINED_FUNCTION_7_25();
          starttest(v153, v154);
          v155 = OUTLINED_FUNCTION_2_27();
          if (lpta_loadp_setscan_r(v155, v156))
          {
LABEL_65:
            v157 = OUTLINED_FUNCTION_7_25();
            starttest(v157, v158);
            v159 = OUTLINED_FUNCTION_23_17();
            v70 = v51;
            if (lpta_loadp_setscan_r(v159, v160))
            {
              break;
            }

LABEL_85:
            while (1)
            {
              v198 = OUTLINED_FUNCTION_7_25();
              bspush_ca_scan(v198, v199);
              v200 = OUTLINED_FUNCTION_7_25();
              bspush_ca_scan(v200, v201);
              v202 = OUTLINED_FUNCTION_5_25();
              v205 = testFldeq(v202, v203, v204, 1);
              v71 = v70;
              LODWORD(v51) = v70;
              if (v205)
              {
                break;
              }

LABEL_86:
              LODWORD(v51) = v71;
              v70 = v71;
              if (advance_tok(v2))
              {
                goto LABEL_17;
              }
            }
          }

          else
          {
            v161 = OUTLINED_FUNCTION_14_22();
            if (!npush_fld(v161, v162, 5))
            {
              v163 = OUTLINED_FUNCTION_12_24();
              npush_i(v163);
              if (!if_testlt(v2, v164, v165, v166, v167, v168, v169, v170) && !advance_tok(v2))
              {
                v171 = OUTLINED_FUNCTION_14_22();
                if (!npush_fld(v171, v172, 5))
                {
                  v173 = OUTLINED_FUNCTION_24_17();
                  c_assvar(v173, v174);
                  v175 = OUTLINED_FUNCTION_24_17();
                  npush_v(v175, v176, v177, v178, v179, v180, v181, v182);
                  if (!if_testlt(v2, v183, v184, v185, v186, v187, v188, v189) && !advance_tok(v2))
                  {
                    OUTLINED_FUNCTION_35_9();
                    v190 = v2[147];
                    OUTLINED_FUNCTION_3_26();
                    if (!lpta_tstctxtr())
                    {
                      v191 = OUTLINED_FUNCTION_9_25();
                      setscan_l(v191);
                      v100 = v51;
                      if (!v192)
                      {
LABEL_41:
                        OUTLINED_FUNCTION_31_12(18, v209, v212, v215, v218, v221, v224, v227, v230, v233, v236, v239, v242, v245, v248, v251, v254, v257, v260, v263, v266, v269, v272, v275, v277);
                        if (OUTLINED_FUNCTION_8_25() || (v101 = OUTLINED_FUNCTION_11_24(), npush_i(v101), if_testeq(v2, v102, v103, v104, v105, v106, v107, v108)) || advance_tok(v2) || (v109 = OUTLINED_FUNCTION_13_24(), lpta_loadp_setscan_r(v109, v110)) || OUTLINED_FUNCTION_8_25() || (v111 = OUTLINED_FUNCTION_11_24(), npush_i(v111), if_testeq(v2, v112, v113, v114, v115, v116, v117, v118)))
                        {
                          LODWORD(v51) = v100;
                        }

                        else
                        {
                          LODWORD(v51) = v100;
                          if (!advance_tok(v2))
                          {
                            break;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }

          goto LABEL_17;
        }
      }

      else
      {
        if (OUTLINED_FUNCTION_8_25())
        {
          goto LABEL_17;
        }

        v133 = OUTLINED_FUNCTION_12_24();
        npush_i(v133);
        if (if_testeq(v2, v134, v135, v136, v137, v138, v139, v140) || advance_tok(v2))
        {
          goto LABEL_17;
        }
      }

      if (!OUTLINED_FUNCTION_8_25())
      {
        v141 = OUTLINED_FUNCTION_12_24();
        npush_i(v141);
        if (!if_testeq(v2, v142, v143, v144, v145, v146, v147, v148) && !advance_tok(v2))
        {
          v149 = OUTLINED_FUNCTION_24_17();
          lpta_loadpn(v149, v150);
          OUTLINED_FUNCTION_19_18();
          lpta_movel();
          v151 = OUTLINED_FUNCTION_37_9();
          lpta_storep(v151, v152);
          break;
        }
      }

LABEL_17:
      v66 = v51;
LABEL_18:
      v67 = v2[13];
      if (v67)
      {
        v68 = OUTLINED_FUNCTION_25_16(v67);
        v70 = v69;
      }

      else
      {
        v68 = vback(v2, v66);
        v70 = 0;
      }

      v44 = v70;
      v38 = v70;
      v52 = v70;
      v71 = v70;
      switch(v68)
      {
        case 1:
          continue;
        case 2:
          v72 = OUTLINED_FUNCTION_26_16();
          savescptr(v72, v73, v74);
          v75 = OUTLINED_FUNCTION_53_4();
          bspush_ca_scan(v75, v76);
          v77 = OUTLINED_FUNCTION_41_5();
          v80 = 3;
          goto LABEL_24;
        case 3:
          bspop_boa(v2);
          bspush_ca_scan_boa();
          v94 = OUTLINED_FUNCTION_10_25();
          if (testFldeq(v94, 4u, v95, 18))
          {
            v66 = v70;
          }

          else
          {
            v66 = 1;
          }

          goto LABEL_18;
        case 4:
          bspop_boa(v2);
          v96 = advance_tok(v2);
          v44 = v70;
          v66 = v70;
          if (!v96)
          {
            goto LABEL_14;
          }

          goto LABEL_18;
        case 5:
          goto LABEL_14;
        case 6:
          v77 = OUTLINED_FUNCTION_10_25();
          v78 = 4;
          v79 = 18;
LABEL_24:
          v81 = testFldeq(v77, v78, v80, v79);
          v66 = v70;
          if (!v81)
          {
            goto LABEL_25;
          }

          goto LABEL_18;
        case 7:
LABEL_25:
          v82 = advance_tok(v2);
          v38 = v70;
          v66 = v70;
          if (!v82)
          {
            continue;
          }

          goto LABEL_18;
        case 8:
          goto LABEL_10;
        case 9:
          savescptr(v2, 9, (v2 + 144));
          v83 = OUTLINED_FUNCTION_41_5();
          v85 = testFldeq(v83, v84, 1, 2);
          v66 = v70;
          if (!v85)
          {
            v86 = advance_tok(v2);
            v52 = v70;
            v66 = v70;
            if (!v86)
            {
              goto LABEL_10;
            }
          }

          goto LABEL_18;
        case 10:
          LODWORD(v51) = v70;
          goto LABEL_79;
        case 11:
          v51 = v70;
          goto LABEL_51;
        case 12:
          v53 = v70;
          goto LABEL_54;
        case 13:
          v51 = v70;
          goto LABEL_52;
        case 14:
          v51 = v70;
          goto LABEL_53;
        case 15:
          v51 = v70;
          goto LABEL_64;
        case 17:
          v51 = v70;
          goto LABEL_65;
        case 18:
          v100 = v70;
          goto LABEL_41;
        case 19:
          v87 = OUTLINED_FUNCTION_58_4();
          savescptr(v87, v88, v89);
          v90 = OUTLINED_FUNCTION_41_5();
          v92 = testFldeq(v90, v91, 1, 2);
          v66 = v70;
          if (v92)
          {
            goto LABEL_18;
          }

          v93 = advance_tok(v2);
          v66 = v70;
          if (v93)
          {
            goto LABEL_18;
          }

          goto LABEL_3;
        case 20:
          v97 = OUTLINED_FUNCTION_41_5();
          v99 = testFldeq(v97, v98, 4, 6);
          v71 = v70;
          v66 = v70;
          if (!v99)
          {
            goto LABEL_86;
          }

          goto LABEL_18;
        case 21:
          goto LABEL_86;
        case 22:
          goto LABEL_85;
        default:
          goto LABEL_3;
      }
    }
  }

LABEL_3:
  vretproc(v2);
  v26 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_60_4();
}

uint64_t por_peak(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v490 = *MEMORY[0x277D85DE8];
  v480 = 0;
  v479 = 8585212;
  v478 = 0xFFFC0000FFFCLL;
  v476 = 0;
  v477 = 0;
  OUTLINED_FUNCTION_18_19(a1, a2, a3, a4, a5, a6, a7, a8, v453);
  OUTLINED_FUNCTION_20_17();
  bzero(v489, v9);
  v10 = setjmp(v489);
  if (v10 || OUTLINED_FUNCTION_32_11(v10, &v453, v11, v12, v13, v14, v15, v16, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476, v477, v478, v479, v480, v481, v482, v483, v484, v485, v486, v487, v488))
  {
LABEL_3:
    vretproc(a1);
    result = 94;
    goto LABEL_4;
  }

  v19 = OUTLINED_FUNCTION_40_6();
  get_parm(v19, v20, v21, -4);
  WORD2(v479) = -4;
  v22 = OUTLINED_FUNCTION_27_14();
  v24 = push_ptr_init(v22, v23);
  v25 = 0;
  OUTLINED_FUNCTION_39_7(v24, v26, &_MergedGlobals_1_2);
  HIWORD(v479) = 0;
  v27 = OUTLINED_FUNCTION_11_24();
  fence_25(v27, v28, v29);
  *(a1 + 1186) = 0;
  *(a1 + 1190) = 160;
  if (*(a1 + 5042) == 1)
  {
    v30 = OUTLINED_FUNCTION_46_5();
    starttest(v30, v31);
    v32 = OUTLINED_FUNCTION_16_21();
    if (lpta_loadp_setscan_r(v32, v33))
    {
      v34 = 0;
    }

    else
    {
      v35 = advance_tok(a1);
      v34 = 0;
      v36 = 0;
      if (!v35)
      {
        do
        {
LABEL_11:
          v37 = OUTLINED_FUNCTION_24_17();
          bspush_ca_scan(v37, v38);
          v39 = OUTLINED_FUNCTION_14_22();
          if (npush_fld(v39, v40, 5))
          {
            break;
          }

          v41 = OUTLINED_FUNCTION_12_24();
          npush_i(v41);
          if (if_testgt(a1, v42, v43, v44, v45, v46, v47, v48))
          {
            break;
          }
        }

        while (!advance_tok(a1));
        v49 = v36;
        goto LABEL_15;
      }
    }

LABEL_41:
    if (*(a1 + 746) == 2 && !*(a1 + 734))
    {
      v78 = WORD1(v479) + 50;
      goto LABEL_48;
    }

LABEL_43:
    OUTLINED_FUNCTION_59_4();
    if (v75 == v76)
    {
      goto LABEL_47;
    }

LABEL_45:
    v77 = WORD1(v479) + 10;
    goto LABEL_46;
  }

LABEL_30:
  v34 = v25;
  if (*(a1 + 746) != 2 || *(a1 + 734))
  {
LABEL_32:
    OUTLINED_FUNCTION_59_4();
    if (v75 == v76)
    {
LABEL_47:
      v78 = WORD1(v479) + 80;
      goto LABEL_48;
    }

LABEL_34:
    if (*(a1 + 5066) != 1)
    {
      goto LABEL_49;
    }

    v77 = WORD1(v479) - 70;
LABEL_46:
    WORD1(v479) = v77;
    goto LABEL_49;
  }

  v78 = WORD1(v479) + 60;
LABEL_48:
  WORD1(v479) = v78;
  *(a1 + 5066) = 1;
  while (1)
  {
LABEL_49:
    if (HIWORD(v480) == 1)
    {
      WORD1(v479) += 40;
    }

    v25 = v34;
LABEL_52:
    OUTLINED_FUNCTION_56_4();
    if (v80)
    {
      WORD1(v479) -= 20;
    }

LABEL_55:
    v80 = *(a1 + 5042) != 1 && HIWORD(v480) == 2;
    if (v80)
    {
LABEL_61:
      v89 = -100;
      goto LABEL_62;
    }

LABEL_59:
    v81 = OUTLINED_FUNCTION_7_25();
    starttest(v81, v82);
    v83 = OUTLINED_FUNCTION_2_27();
    if (lpta_loadp_setscan_l(v83, v84))
    {
LABEL_60:
      v85 = OUTLINED_FUNCTION_7_25();
      starttest(v85, v86);
      v87 = OUTLINED_FUNCTION_2_27();
      if (lpta_loadp_setscan_l(v87, v88))
      {
        goto LABEL_61;
      }

      v168 = OUTLINED_FUNCTION_14_22();
      if (npush_fld(v168, v169, 5))
      {
        goto LABEL_233;
      }

      v170 = OUTLINED_FUNCTION_12_24();
      npush_i(v170);
      if (if_testlt(a1, v171, v172, v173, v174, v175, v176, v177) || advance_tok(a1))
      {
        goto LABEL_233;
      }

      v178 = OUTLINED_FUNCTION_1_27();
      v180 = lpta_loadp_setscan_l(v178, v179);
      v49 = v25;
      if (v180)
      {
        goto LABEL_15;
      }

LABEL_106:
      OUTLINED_FUNCTION_31_12(18, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476);
      if (OUTLINED_FUNCTION_8_25())
      {
        goto LABEL_233;
      }

      v181 = OUTLINED_FUNCTION_11_24();
      npush_i(v181);
      if (if_testeq(a1, v182, v183, v184, v185, v186, v187, v188))
      {
        goto LABEL_233;
      }

      if (advance_tok(a1))
      {
        goto LABEL_233;
      }

      v189 = OUTLINED_FUNCTION_13_24();
      if (lpta_loadp_setscan_r(v189, v190))
      {
        goto LABEL_233;
      }

      if (OUTLINED_FUNCTION_8_25())
      {
        goto LABEL_233;
      }

      v191 = OUTLINED_FUNCTION_11_24();
      npush_i(v191);
      if (if_testeq(a1, v192, v193, v194, v195, v196, v197, v198) || advance_tok(a1))
      {
        goto LABEL_233;
      }

      v89 = -50;
    }

    else
    {
      v114 = OUTLINED_FUNCTION_14_22();
      if (testFldeq(v114, v115, 6, 2) || advance_tok(a1))
      {
        goto LABEL_233;
      }

      v89 = 10;
    }

LABEL_62:
    HIWORD(v479) = WORD1(v479) + v89;
LABEL_63:
    OUTLINED_FUNCTION_56_4();
    if (v80)
    {
      v90 = OUTLINED_FUNCTION_7_25();
      starttest(v90, v91);
      v92 = OUTLINED_FUNCTION_15_22();
      if (lpta_loadp_setscan_r(v92, v93))
      {
LABEL_66:
        v94 = OUTLINED_FUNCTION_7_25();
        starttest(v94, v95);
        v96 = OUTLINED_FUNCTION_15_22();
        if (lpta_loadp_setscan_r(v96, v97) || advance_tok(a1))
        {
LABEL_68:
          v98 = OUTLINED_FUNCTION_7_25();
          starttest(v98, v99);
          v100 = OUTLINED_FUNCTION_15_22();
          if (lpta_loadp_setscan_r(v100, v101) || advance_tok(a1) || advance_tok(a1))
          {
LABEL_71:
            v102 = OUTLINED_FUNCTION_7_25();
            starttest(v102, v103);
            v104 = OUTLINED_FUNCTION_15_22();
            if (lpta_loadp_setscan_r(v104, v105) || advance_tok(a1) || advance_tok(a1) || advance_tok(a1))
            {
LABEL_75:
              v74 = 10;
            }

            else
            {
              v427 = OUTLINED_FUNCTION_14_22();
              if (npush_fld(v427, v428, 5))
              {
                goto LABEL_233;
              }

              v429 = OUTLINED_FUNCTION_12_24();
              npush_i(v429);
              if (if_testlt(a1, v430, v431, v432, v433, v434, v435, v436) || advance_tok(a1))
              {
                goto LABEL_233;
              }

              v74 = 25;
            }
          }

          else
          {
            v385 = OUTLINED_FUNCTION_14_22();
            if (npush_fld(v385, v386, 5))
            {
              goto LABEL_233;
            }

            v387 = OUTLINED_FUNCTION_12_24();
            npush_i(v387);
            if (if_testlt(a1, v388, v389, v390, v391, v392, v393, v394) || advance_tok(a1))
            {
              goto LABEL_233;
            }

            v74 = 30;
          }
        }

        else
        {
          v233 = OUTLINED_FUNCTION_14_22();
          if (npush_fld(v233, v234, 5))
          {
            goto LABEL_233;
          }

          v235 = OUTLINED_FUNCTION_12_24();
          npush_i(v235);
          if (if_testlt(a1, v236, v237, v238, v239, v240, v241, v242) || advance_tok(a1))
          {
            goto LABEL_233;
          }

          v74 = 35;
        }
      }

      else
      {
        v142 = OUTLINED_FUNCTION_14_22();
        if (npush_fld(v142, v143, 5))
        {
          goto LABEL_233;
        }

        v144 = OUTLINED_FUNCTION_12_24();
        npush_i(v144);
        if (if_testlt(a1, v145, v146, v147, v148, v149, v150, v151) || advance_tok(a1))
        {
          goto LABEL_233;
        }

        v74 = 40;
      }
    }

    else
    {
LABEL_76:
      v106 = OUTLINED_FUNCTION_7_25();
      starttest(v106, v107);
      v108 = OUTLINED_FUNCTION_15_22();
      if (lpta_loadp_setscan_r(v108, v109))
      {
LABEL_77:
        if (*(a1 + 5042) != 1)
        {
LABEL_97:
          v152 = OUTLINED_FUNCTION_7_25();
          starttest(v152, v153);
          v154 = OUTLINED_FUNCTION_2_27();
          if (!lpta_loadp_setscan_r(v154, v155))
          {
            v199 = OUTLINED_FUNCTION_14_22();
            if (npush_fld(v199, v200, 5))
            {
              goto LABEL_233;
            }

            v201 = OUTLINED_FUNCTION_12_24();
            npush_i(v201);
            if (if_testeq(a1, v202, v203, v204, v205, v206, v207, v208) || advance_tok(a1))
            {
              goto LABEL_233;
            }

LABEL_80:
            v74 = -10;
            goto LABEL_155;
          }

LABEL_98:
          v156 = OUTLINED_FUNCTION_7_25();
          starttest(v156, v157);
          v158 = OUTLINED_FUNCTION_1_27();
          if (lpta_loadp_setscan_r(v158, v159))
          {
LABEL_99:
            v160 = OUTLINED_FUNCTION_7_25();
            starttest(v160, v161);
            v162 = OUTLINED_FUNCTION_1_27();
            if (lpta_loadp_setscan_r(v162, v163))
            {
LABEL_100:
              v164 = OUTLINED_FUNCTION_7_25();
              starttest(v164, v165);
              v166 = OUTLINED_FUNCTION_1_27();
              if (lpta_loadp_setscan_r(v166, v167))
              {
LABEL_101:
                v74 = -20;
              }

              else
              {
                if (OUTLINED_FUNCTION_8_25())
                {
                  goto LABEL_233;
                }

                v345 = OUTLINED_FUNCTION_11_24();
                npush_i(v345);
                if (if_testeq(a1, v346, v347, v348, v349, v350, v351, v352))
                {
                  goto LABEL_233;
                }

                if (advance_tok(a1))
                {
                  goto LABEL_233;
                }

                if (OUTLINED_FUNCTION_8_25())
                {
                  goto LABEL_233;
                }

                v353 = OUTLINED_FUNCTION_12_24();
                npush_i(v353);
                if (if_testeq(a1, v354, v355, v356, v357, v358, v359, v360))
                {
                  goto LABEL_233;
                }

                if (advance_tok(a1))
                {
                  goto LABEL_233;
                }

                if (OUTLINED_FUNCTION_8_25())
                {
                  goto LABEL_233;
                }

                v361 = OUTLINED_FUNCTION_12_24();
                npush_i(v361);
                if (if_testeq(a1, v362, v363, v364, v365, v366, v367, v368))
                {
                  goto LABEL_233;
                }

                if (advance_tok(a1))
                {
                  goto LABEL_233;
                }

                if (OUTLINED_FUNCTION_8_25())
                {
                  goto LABEL_233;
                }

                v369 = OUTLINED_FUNCTION_12_24();
                npush_i(v369);
                if (if_testeq(a1, v370, v371, v372, v373, v374, v375, v376))
                {
                  goto LABEL_233;
                }

                if (advance_tok(a1))
                {
                  goto LABEL_233;
                }

                if (OUTLINED_FUNCTION_8_25())
                {
                  goto LABEL_233;
                }

                v377 = OUTLINED_FUNCTION_11_24();
                npush_i(v377);
                if (if_testeq(a1, v378, v379, v380, v381, v382, v383, v384) || advance_tok(a1))
                {
                  goto LABEL_233;
                }

                v74 = -30;
              }
            }

            else
            {
              if (OUTLINED_FUNCTION_8_25())
              {
                goto LABEL_233;
              }

              v243 = OUTLINED_FUNCTION_11_24();
              npush_i(v243);
              if (if_testeq(a1, v244, v245, v246, v247, v248, v249, v250))
              {
                goto LABEL_233;
              }

              if (advance_tok(a1))
              {
                goto LABEL_233;
              }

              if (OUTLINED_FUNCTION_8_25())
              {
                goto LABEL_233;
              }

              v251 = OUTLINED_FUNCTION_12_24();
              npush_i(v251);
              if (if_testeq(a1, v252, v253, v254, v255, v256, v257, v258))
              {
                goto LABEL_233;
              }

              if (advance_tok(a1))
              {
                goto LABEL_233;
              }

              if (OUTLINED_FUNCTION_8_25())
              {
                goto LABEL_233;
              }

              v259 = OUTLINED_FUNCTION_12_24();
              npush_i(v259);
              if (if_testeq(a1, v260, v261, v262, v263, v264, v265, v266))
              {
                goto LABEL_233;
              }

              if (advance_tok(a1))
              {
                goto LABEL_233;
              }

              if (OUTLINED_FUNCTION_8_25())
              {
                goto LABEL_233;
              }

              v267 = OUTLINED_FUNCTION_11_24();
              npush_i(v267);
              if (if_testeq(a1, v268, v269, v270, v271, v272, v273, v274) || advance_tok(a1))
              {
                goto LABEL_233;
              }

              v74 = -40;
            }

            goto LABEL_155;
          }

          if (OUTLINED_FUNCTION_8_25())
          {
            goto LABEL_233;
          }

          v209 = OUTLINED_FUNCTION_11_24();
          npush_i(v209);
          if (if_testeq(a1, v210, v211, v212, v213, v214, v215, v216) || advance_tok(a1) || OUTLINED_FUNCTION_8_25())
          {
            goto LABEL_233;
          }

          v217 = OUTLINED_FUNCTION_12_24();
          goto LABEL_124;
        }

        v110 = OUTLINED_FUNCTION_7_25();
        starttest(v110, v111);
        if (HIWORD(v480) != 1)
        {
          goto LABEL_80;
        }

        v112 = OUTLINED_FUNCTION_15_22();
        if (lpta_loadp_setscan_r(v112, v113))
        {
          goto LABEL_80;
        }

        v275 = OUTLINED_FUNCTION_14_22();
        if (npush_fld(v275, v276, 5))
        {
          goto LABEL_233;
        }

        v277 = OUTLINED_FUNCTION_11_24();
        npush_i(v277);
        if (if_testgt(a1, v278, v279, v280, v281, v282, v283, v284) || advance_tok(a1))
        {
          goto LABEL_233;
        }

        v285 = OUTLINED_FUNCTION_7_25();
        starttest(v285, v286);
        v287 = OUTLINED_FUNCTION_1_27();
        if (!lpta_loadp_setscan_r(v287, v288))
        {
          if (OUTLINED_FUNCTION_8_25())
          {
            goto LABEL_233;
          }

          v217 = OUTLINED_FUNCTION_11_24();
LABEL_124:
          npush_i(v217);
          if (if_testeq(a1, v218, v219, v220, v221, v222, v223, v224))
          {
            goto LABEL_233;
          }

          if (advance_tok(a1))
          {
            goto LABEL_233;
          }

          if (OUTLINED_FUNCTION_8_25())
          {
            goto LABEL_233;
          }

          v225 = OUTLINED_FUNCTION_11_24();
          npush_i(v225);
          if (if_testeq(a1, v226, v227, v228, v229, v230, v231, v232) || advance_tok(a1))
          {
            goto LABEL_233;
          }

          v74 = -50;
          goto LABEL_155;
        }

LABEL_151:
        v289 = OUTLINED_FUNCTION_7_25();
        starttest(v289, v290);
        v291 = OUTLINED_FUNCTION_1_27();
        if (lpta_loadp_setscan_r(v291, v292))
        {
LABEL_152:
          v293 = OUTLINED_FUNCTION_7_25();
          starttest(v293, v294);
          v295 = OUTLINED_FUNCTION_1_27();
          if (lpta_loadp_setscan_r(v295, v296))
          {
LABEL_153:
            v297 = OUTLINED_FUNCTION_7_25();
            starttest(v297, v298);
            v299 = OUTLINED_FUNCTION_1_27();
            if (lpta_loadp_setscan_r(v299, v300))
            {
LABEL_154:
              v74 = -100;
            }

            else
            {
              if (OUTLINED_FUNCTION_8_25())
              {
                goto LABEL_233;
              }

              v395 = OUTLINED_FUNCTION_11_24();
              npush_i(v395);
              if (if_testeq(a1, v396, v397, v398, v399, v400, v401, v402))
              {
                goto LABEL_233;
              }

              if (advance_tok(a1))
              {
                goto LABEL_233;
              }

              if (advance_tok(a1))
              {
                goto LABEL_233;
              }

              if (advance_tok(a1))
              {
                goto LABEL_233;
              }

              if (advance_tok(a1))
              {
                goto LABEL_233;
              }

              if (OUTLINED_FUNCTION_8_25())
              {
                goto LABEL_233;
              }

              v403 = OUTLINED_FUNCTION_11_24();
              npush_i(v403);
              if (if_testeq(a1, v404, v405, v406, v407, v408, v409, v410) || advance_tok(a1))
              {
                goto LABEL_233;
              }

              v74 = -88;
            }
          }

          else
          {
            if (OUTLINED_FUNCTION_8_25())
            {
              goto LABEL_233;
            }

            v411 = OUTLINED_FUNCTION_11_24();
            npush_i(v411);
            if (if_testeq(a1, v412, v413, v414, v415, v416, v417, v418))
            {
              goto LABEL_233;
            }

            if (advance_tok(a1))
            {
              goto LABEL_233;
            }

            if (advance_tok(a1))
            {
              goto LABEL_233;
            }

            if (advance_tok(a1))
            {
              goto LABEL_233;
            }

            if (OUTLINED_FUNCTION_8_25())
            {
              goto LABEL_233;
            }

            v419 = OUTLINED_FUNCTION_11_24();
            npush_i(v419);
            if (if_testeq(a1, v420, v421, v422, v423, v424, v425, v426) || advance_tok(a1))
            {
              goto LABEL_233;
            }

            v74 = -75;
          }
        }

        else
        {
          if (OUTLINED_FUNCTION_8_25())
          {
            goto LABEL_233;
          }

          v437 = OUTLINED_FUNCTION_11_24();
          npush_i(v437);
          if (if_testeq(a1, v438, v439, v440, v441, v442, v443, v444))
          {
            goto LABEL_233;
          }

          if (advance_tok(a1))
          {
            goto LABEL_233;
          }

          if (advance_tok(a1))
          {
            goto LABEL_233;
          }

          if (OUTLINED_FUNCTION_8_25())
          {
            goto LABEL_233;
          }

          v445 = OUTLINED_FUNCTION_11_24();
          npush_i(v445);
          if (if_testeq(a1, v446, v447, v448, v449, v450, v451, v452) || advance_tok(a1))
          {
            goto LABEL_233;
          }

          v74 = -62;
        }
      }

      else
      {
        v116 = OUTLINED_FUNCTION_14_22();
        if (npush_fld(v116, v117, 5))
        {
          goto LABEL_233;
        }

        v118 = OUTLINED_FUNCTION_12_24();
        npush_i(v118);
        if (if_testlt(a1, v119, v120, v121, v122, v123, v124, v125))
        {
          goto LABEL_233;
        }

        if (advance_tok(a1))
        {
          goto LABEL_233;
        }

        v126 = OUTLINED_FUNCTION_1_27();
        if (lpta_loadp_setscan_r(v126, v127))
        {
          goto LABEL_233;
        }

        if (OUTLINED_FUNCTION_8_25())
        {
          goto LABEL_233;
        }

        v128 = OUTLINED_FUNCTION_11_24();
        npush_i(v128);
        if (if_testeq(a1, v129, v130, v131, v132, v133, v134, v135))
        {
          goto LABEL_233;
        }

        v136 = advance_tok(a1);
        v49 = v25;
        if (v136)
        {
          goto LABEL_15;
        }

LABEL_91:
        v137 = OUTLINED_FUNCTION_7_25();
        if (test_synch(v137, v138, 1u, v139))
        {
          goto LABEL_233;
        }

        v140 = OUTLINED_FUNCTION_7_25();
        bspush_ca_scan(v140, v141);
        v53 = v25;
LABEL_26:
        v25 = v53;
        if (OUTLINED_FUNCTION_8_25())
        {
          goto LABEL_233;
        }

        v66 = OUTLINED_FUNCTION_11_24();
        npush_i(v66);
        if (if_testeq(a1, v67, v68, v69, v70, v71, v72, v73) || advance_tok(a1))
        {
          goto LABEL_233;
        }

        v74 = -25;
      }
    }

LABEL_155:
    *(a1 + 1190) = WORD1(v479) + v74;
LABEL_156:
    *(a1 + 5042) = 0;
    v301 = OUTLINED_FUNCTION_7_25();
    starttest(v301, v302);
    v303 = OUTLINED_FUNCTION_2_27();
    v305 = lpta_loadp_setscan_l(v303, v304);
    v79 = v25;
    if (!v305)
    {
LABEL_173:
      v25 = v79;
      OUTLINED_FUNCTION_31_12(43, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476);
      v323 = OUTLINED_FUNCTION_14_22();
      if (npush_fld(v323, v324, 5))
      {
        goto LABEL_233;
      }

      v325 = OUTLINED_FUNCTION_12_24();
      npush_i(v325);
      if (if_testlt(a1, v326, v327, v328, v329, v330, v331, v332))
      {
        goto LABEL_233;
      }

      if (advance_tok(a1))
      {
        goto LABEL_233;
      }

      v333 = OUTLINED_FUNCTION_15_22();
      if (lpta_loadp_setscan_r(v333, v334))
      {
        goto LABEL_233;
      }

      v335 = OUTLINED_FUNCTION_14_22();
      if (npush_fld(v335, v336, 5))
      {
        goto LABEL_233;
      }

      v337 = OUTLINED_FUNCTION_12_24();
      npush_i(v337);
      if (if_testlt(a1, v338, v339, v340, v341, v342, v343, v344) || advance_tok(a1))
      {
        goto LABEL_233;
      }

      HIWORD(v479) = vcvtd_n_f64_s32(SWORD1(v479) + SHIWORD(v479), 1uLL);
    }

LABEL_157:
    OUTLINED_FUNCTION_30_12();
    if (v80)
    {
      *(a1 + 1190) += 40;
    }

LABEL_160:
    OUTLINED_FUNCTION_56_4();
    if (v80)
    {
      v306 = OUTLINED_FUNCTION_16_21();
      lpta_loadpn(v306, v307);
      v308 = OUTLINED_FUNCTION_54_4();
      rpta_loadpn(v308, v309);
      if (!compare_ptas(a1) && !testeq(a1))
      {
        WORD1(v479) -= 60;
      }
    }

LABEL_165:
    v310 = OUTLINED_FUNCTION_7_25();
    starttest(v310, v311);
    OUTLINED_FUNCTION_56_4();
    if (v80)
    {
      goto LABEL_170;
    }

    v312 = OUTLINED_FUNCTION_15_22();
    if (lpta_loadp_setscan_r(v312, v313))
    {
      goto LABEL_170;
    }

    v314 = OUTLINED_FUNCTION_14_22();
    if (testFldeq(v314, v315, 6, 1))
    {
LABEL_233:
      v49 = v25;
      goto LABEL_15;
    }

    v316 = advance_tok(a1);
    v49 = v25;
    if (!v316)
    {
      break;
    }

    while (1)
    {
LABEL_15:
      v50 = *(a1 + 104);
      if (v50)
      {
        v51 = OUTLINED_FUNCTION_25_16(v50);
        v25 = v52;
      }

      else
      {
        v51 = vback(a1, v49);
        v25 = 0;
      }

      v34 = v25;
      v53 = v25;
      switch(v51)
      {
        case 1:
          goto LABEL_30;
        case 2:
          v34 = v25;
          goto LABEL_41;
        case 3:
          v54 = advance_tok(a1);
          v49 = v25;
          if (v54)
          {
            continue;
          }

          break;
        case 4:
          v36 = v25;
          goto LABEL_11;
        case 5:
          break;
        case 6:
        case 9:
          goto LABEL_49;
        case 7:
          goto LABEL_43;
        case 8:
          v34 = v25;
          goto LABEL_45;
        case 10:
          goto LABEL_32;
        case 11:
          v34 = v25;
          goto LABEL_34;
        case 12:
          goto LABEL_52;
        case 13:
          goto LABEL_55;
        case 14:
          goto LABEL_59;
        case 15:
          goto LABEL_63;
        case 16:
          goto LABEL_60;
        case 17:
          goto LABEL_61;
        case 18:
          goto LABEL_106;
        case 19:
          goto LABEL_76;
        case 20:
          goto LABEL_66;
        case 21:
        case 25:
        case 33:
        case 37:
          goto LABEL_156;
        case 22:
          goto LABEL_68;
        case 23:
          goto LABEL_71;
        case 24:
          goto LABEL_75;
        case 26:
          goto LABEL_77;
        case 27:
          goto LABEL_91;
        case 28:
          v65 = advance_tok(a1);
          v53 = v25;
          v49 = v25;
          if (!v65)
          {
            goto LABEL_26;
          }

          continue;
        case 29:
          goto LABEL_26;
        case 30:
          goto LABEL_97;
        case 31:
          goto LABEL_80;
        case 32:
          goto LABEL_151;
        case 34:
          goto LABEL_152;
        case 35:
          goto LABEL_153;
        case 36:
          goto LABEL_154;
        case 38:
          goto LABEL_98;
        case 39:
          goto LABEL_99;
        case 40:
          goto LABEL_100;
        case 41:
          goto LABEL_101;
        case 42:
          goto LABEL_157;
        case 43:
          v79 = v25;
          goto LABEL_173;
        case 44:
          goto LABEL_160;
        case 45:
          goto LABEL_165;
        case 46:
          goto LABEL_170;
        case 47:
          goto LABEL_171;
        case 48:
          goto LABEL_172;
        default:
          goto LABEL_3;
      }

      v55 = OUTLINED_FUNCTION_7_25();
      v58 = test_synch(v55, v56, 1u, v57);
      v49 = v25;
      if (!v58)
      {
        v49 = v25;
        if (*(a1 + 2546) == *(a1 + 3270))
        {
          v59 = OUTLINED_FUNCTION_16_21();
          lpta_loadpn(v59, v60);
          v61 = OUTLINED_FUNCTION_54_4();
          rpta_loadpn(v61, v62);
          v63 = compare_ptas(a1);
          v49 = v25;
          if (!v63)
          {
            v64 = testneq(a1);
            v34 = v25;
            v49 = v25;
            if (!v64)
            {
              break;
            }
          }
        }
      }
    }
  }

  *(a1 + 1190) = WORD1(v479) - 75;
LABEL_170:
  v317 = OUTLINED_FUNCTION_17_20();
  insert_f0(v317, v318, v319);
LABEL_171:
  v320 = OUTLINED_FUNCTION_29_13();
  insert_f0(v320, v321, v322);
LABEL_172:
  vretproc(a1);
  result = 0;
LABEL_4:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t por_low_tone(uint64_t a1)
{
  OUTLINED_FUNCTION_52_4(*MEMORY[0x277D85DE8]);
  LODWORD(v93) = v3 | 0x320000;
  HIDWORD(v90) = 65532;
  OUTLINED_FUNCTION_18_19(v4, v5, v6, v7, v8, v9, v10, v11, v43);
  OUTLINED_FUNCTION_6_25(v12, v13, v14, v15, v16, v17, v18, v19, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, 0xFFFC0000FFFCLL, v93, v95, v97, v99, v101);
  v20 = setjmp(v1);
  if (v20 || OUTLINED_FUNCTION_0_29(v20, v21, v22, v23, v24, v25, v26, v27, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v92, *v94, v94[4], *v96, *&v96[4], v96[6], v98, SWORD2(v98), SBYTE6(v98), SHIBYTE(v98), v100, v102))
  {
    vretproc(a1);
    result = 94;
  }

  else
  {
    fence_25(a1, 0, &_MergedGlobals_1_2);
    v30 = OUTLINED_FUNCTION_11_24();
    fence_25(v30, v31, v32);
    *(a1 + 1190) = 50;
    *(a1 + 1186) = 97;
    OUTLINED_FUNCTION_36_9();
    v33 = OUTLINED_FUNCTION_17_20();
    insert_f0(v33, v34, v35);
    v36 = OUTLINED_FUNCTION_29_13();
    lpta_loadpn(v36, v37);
    v38 = OUTLINED_FUNCTION_37_9();
    rpta_loadpn(v38, v39);
    if (!compare_ptas(a1) && !testneq(a1))
    {
      OUTLINED_FUNCTION_38_8();
      v40 = OUTLINED_FUNCTION_29_13();
      insert_f0(v40, v41, v42);
    }

    vretproc(a1);
    result = 0;
  }

  v29 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t por_high_tone(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v103 = *MEMORY[0x277D85DE8];
  LODWORD(v93) = 0;
  OUTLINED_FUNCTION_18_19(a1, a2, a3, a4, a5, a6, a7, a8, v46);
  OUTLINED_FUNCTION_20_17();
  OUTLINED_FUNCTION_55_4(v10, v11, v12, v13, v14, v15, v16, v17, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101);
  v18 = setjmp(v8);
  if (!v18 && !OUTLINED_FUNCTION_4_25(v18, v19, v20, v21, v22, v23, v24, v25, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, *v94, v94[4], *v96, *&v96[4], v96[6], v98, SWORD2(v98), SBYTE6(v98), SHIBYTE(v98), v100, v102))
  {
    OUTLINED_FUNCTION_51_4();
    OUTLINED_FUNCTION_39_7(v28, v29, &_MergedGlobals_1_2);
    v30 = OUTLINED_FUNCTION_7_25();
    starttest(v30, v31);
    v32 = OUTLINED_FUNCTION_26_16();
    move_i(v32, v33, 0);
    v34 = OUTLINED_FUNCTION_26_16();
    if (!por_peak(v34, v35, v36, v37, v38, v39, v40, v41))
    {
      goto LABEL_4;
    }

    v42 = *(a1 + 104);
    if (v42)
    {
      v43 = OUTLINED_FUNCTION_25_16(v42);
    }

    else
    {
      v44 = OUTLINED_FUNCTION_12_24();
      v43 = vback(v44, v45);
    }

    if (v43 == 1)
    {
      v8 = 0;
      goto LABEL_4;
    }
  }

  v8 = 94;
LABEL_4:
  vretproc(a1);
  v26 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t por_low_high_star_tone(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v101 = *MEMORY[0x277D85DE8];
  LODWORD(v91) = 0;
  OUTLINED_FUNCTION_18_19(a1, a2, a3, a4, a5, a6, a7, a8, v44);
  OUTLINED_FUNCTION_20_17();
  OUTLINED_FUNCTION_55_4(v10, v11, v12, v13, v14, v15, v16, v17, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99);
  v18 = setjmp(v8);
  if (!v18 && !OUTLINED_FUNCTION_4_25(v18, v19, v20, v21, v22, v23, v24, v25, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, *v92, v92[4], *v94, *&v94[4], v94[6], v96, SWORD2(v96), SBYTE6(v96), SHIBYTE(v96), v98, v100))
  {
    OUTLINED_FUNCTION_51_4();
    OUTLINED_FUNCTION_39_7(v28, v29, &_MergedGlobals_1_2);
    starttest(a1, 1);
    v30 = OUTLINED_FUNCTION_33_11();
    move_i(v30, v31, 1);
    v32 = OUTLINED_FUNCTION_33_11();
    if (!por_peak(v32, v33, v34, v35, v36, v37, v38, v39))
    {
      goto LABEL_4;
    }

    v40 = *(a1 + 104);
    if (v40)
    {
      v41 = OUTLINED_FUNCTION_25_16(v40);
    }

    else
    {
      v42 = OUTLINED_FUNCTION_12_24();
      v41 = vback(v42, v43);
    }

    if (v41 == 1)
    {
      v8 = 0;
      goto LABEL_4;
    }
  }

  v8 = 94;
LABEL_4:
  vretproc(a1);
  v26 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t por_low_star_high_tone(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v103 = *MEMORY[0x277D85DE8];
  LODWORD(v93) = 0;
  OUTLINED_FUNCTION_18_19(a1, a2, a3, a4, a5, a6, a7, a8, v46);
  OUTLINED_FUNCTION_20_17();
  OUTLINED_FUNCTION_55_4(v10, v11, v12, v13, v14, v15, v16, v17, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101);
  v18 = setjmp(v8);
  if (!v18 && !OUTLINED_FUNCTION_4_25(v18, v19, v20, v21, v22, v23, v24, v25, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, *v94, v94[4], *v96, *&v96[4], v96[6], v98, SWORD2(v98), SBYTE6(v98), SHIBYTE(v98), v100, v102))
  {
    OUTLINED_FUNCTION_51_4();
    OUTLINED_FUNCTION_39_7(v28, v29, &_MergedGlobals_1_2);
    v30 = OUTLINED_FUNCTION_7_25();
    starttest(v30, v31);
    v32 = OUTLINED_FUNCTION_26_16();
    move_i(v32, v33, 2);
    v34 = OUTLINED_FUNCTION_26_16();
    if (!por_peak(v34, v35, v36, v37, v38, v39, v40, v41))
    {
      goto LABEL_4;
    }

    v42 = *(a1 + 104);
    if (v42)
    {
      v43 = OUTLINED_FUNCTION_25_16(v42);
    }

    else
    {
      v44 = OUTLINED_FUNCTION_12_24();
      v43 = vback(v44, v45);
    }

    if (v43 == 1)
    {
      v8 = 0;
      goto LABEL_4;
    }
  }

  v8 = 94;
LABEL_4:
  vretproc(a1);
  v26 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t por_high_star_low_tone(uint64_t a1)
{
  OUTLINED_FUNCTION_52_4(*MEMORY[0x277D85DE8]);
  LODWORD(v93) = v3 | 0x3C0000;
  HIDWORD(v90) = v93 + 2621440;
  *(&v90 + 4) = 0xFFFC0000FFFCLL;
  OUTLINED_FUNCTION_18_19(v4, v5, v6, v7, v8, v9, v10, v11, v43);
  OUTLINED_FUNCTION_6_25(v12, v13, v14, v15, v16, v17, v18, v19, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, *(&v90 + 1), v93, v95, v97, v99, v101);
  v20 = setjmp(v1);
  if (v20 || OUTLINED_FUNCTION_0_29(v20, v21, v22, v23, v24, v25, v26, v27, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v92, *v94, v94[4], *v96, *&v96[4], v96[6], v98, SWORD2(v98), SBYTE6(v98), SHIBYTE(v98), v100, v102))
  {
    vretproc(a1);
    result = 94;
  }

  else
  {
    fence_25(a1, 0, &_MergedGlobals_1_2);
    v30 = OUTLINED_FUNCTION_11_24();
    fence_25(v30, v31, v32);
    *(a1 + 1190) = 50;
    *(a1 + 1186) = 97;
    OUTLINED_FUNCTION_36_9();
    v33 = OUTLINED_FUNCTION_17_20();
    insert_f0(v33, v34, v35);
    v36 = OUTLINED_FUNCTION_29_13();
    lpta_loadpn(v36, v37);
    v38 = OUTLINED_FUNCTION_37_9();
    rpta_loadpn(v38, v39);
    if (!compare_ptas(a1) && !testneq(a1))
    {
      OUTLINED_FUNCTION_38_8();
      v40 = OUTLINED_FUNCTION_29_13();
      insert_f0(v40, v41, v42);
    }

    vretproc(a1);
    result = 0;
  }

  v29 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t por_high_low_star_tone(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v111 = *MEMORY[0x277D85DE8];
  LODWORD(v101) = 2031612;
  HIDWORD(v98) = 720892;
  OUTLINED_FUNCTION_18_19(a1, a2, a3, a4, a5, a6, a7, a8, v51);
  OUTLINED_FUNCTION_6_25(v10, v11, v12, v13, v14, v15, v16, v17, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, 0x78FFFC005AFFFCLL, v101, v103, v105, v107, v109);
  v18 = setjmp(v8);
  if (v18 || OUTLINED_FUNCTION_0_29(v18, v19, v20, v21, v22, v23, v24, v25, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v100, *v102, v102[4], *v104, *&v104[4], v104[6], v106, SWORD2(v106), SBYTE6(v106), SHIBYTE(v106), v108, v110))
  {
    v26 = 94;
  }

  else
  {
    fence_25(a1, 0, &_MergedGlobals_1_2);
    v29 = OUTLINED_FUNCTION_45_5();
    lpta_loadpn(v29, v30);
    v31 = OUTLINED_FUNCTION_28_13();
    rpta_loadpn(v31, v32);
    if (!compare_ptas(a1))
    {
      testeq(a1);
    }

    v33 = OUTLINED_FUNCTION_16_21();
    lpta_loadpn(v33, v34);
    v35 = OUTLINED_FUNCTION_17_20();
    rpta_loadpn(v35, v36);
    if (!compare_ptas(a1) && !testeq(a1))
    {
      v37 = OUTLINED_FUNCTION_22_17();
      lpta_loadpn(v37, v38);
      v39 = OUTLINED_FUNCTION_17_20();
      rpta_loadpn(v39, v40);
      if (!compare_ptas(a1))
      {
        testeq(a1);
      }
    }

    OUTLINED_FUNCTION_38_8();
    v41 = OUTLINED_FUNCTION_17_20();
    insert_f0(v41, v42, v43);
    v44 = OUTLINED_FUNCTION_29_13();
    lpta_loadpn(v44, v45);
    v46 = OUTLINED_FUNCTION_37_9();
    rpta_loadpn(v46, v47);
    if (!compare_ptas(a1) && !testneq(a1))
    {
      OUTLINED_FUNCTION_36_9();
      v48 = OUTLINED_FUNCTION_22_17();
      insert_f0(v48, v49, v50);
    }

    v26 = 0;
  }

  vretproc(a1);
  v27 = *MEMORY[0x277D85DE8];
  return v26;
}

uint64_t por_nucl_high_tone(uint64_t a1)
{
  OUTLINED_FUNCTION_52_4(*MEMORY[0x277D85DE8]);
  v4 = v3 | 0xA0000;
  HIDWORD(v104) = v4 + 9175040;
  LODWORD(v106) = v4 + 2621440;
  LODWORD(v104) = v4;
  HIDWORD(v102) = v4 + 4587520;
  OUTLINED_FUNCTION_18_19(v5, v6, v7, v8, v9, v10, v11, v12, v55);
  OUTLINED_FUNCTION_6_25(v13, v14, v15, v16, v17, v18, v19, v20, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114);
  v21 = setjmp(v1);
  if (v21 || OUTLINED_FUNCTION_0_29(v21, v22, v23, v24, v25, v26, v27, v28, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, *v107, v107[4], *v109, *&v109[4], v109[6], v111, SWORD2(v111), SBYTE6(v111), SHIBYTE(v111), v113, v115))
  {
    vretproc(a1);
    result = 94;
  }

  else
  {
    fence_25(a1, 0, &_MergedGlobals_1_2);
    v31 = OUTLINED_FUNCTION_28_13();
    lpta_loadpn(v31, v32);
    v33 = OUTLINED_FUNCTION_45_5();
    rpta_loadpn(v33, v34);
    if (!compare_ptas(a1))
    {
      testeq(a1);
    }

    v35 = OUTLINED_FUNCTION_13_24();
    if (!lpta_loadp_setscan_r(v35, v36) && !advance_tok(a1))
    {
      OUTLINED_FUNCTION_35_9();
      v37 = *(a1 + 1472);
      v38 = OUTLINED_FUNCTION_3_26();
      test_ptr(v38);
    }

    por_add_target(a1);
    v39 = OUTLINED_FUNCTION_16_21();
    lpta_loadpn(v39, v40);
    v41 = OUTLINED_FUNCTION_17_20();
    rpta_loadpn(v41, v42);
    if (!compare_ptas(a1) && !testeq(a1))
    {
      v43 = OUTLINED_FUNCTION_22_17();
      lpta_loadpn(v43, v44);
      v45 = OUTLINED_FUNCTION_17_20();
      rpta_loadpn(v45, v46);
      if (!compare_ptas(a1))
      {
        testeq(a1);
      }
    }

    OUTLINED_FUNCTION_59_4();
    if (v47 == v48)
    {
      *(a1 + 734);
    }

    OUTLINED_FUNCTION_36_9();
    v49 = OUTLINED_FUNCTION_17_20();
    insert_f0(v49, v50, v51);
    OUTLINED_FUNCTION_38_8();
    v52 = OUTLINED_FUNCTION_22_17();
    insert_f0(v52, v53, v54);
    vretproc(a1);
    result = 0;
  }

  v30 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t por_nucl_low_tone(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v222 = *MEMORY[0x277D85DE8];
  v212 = 0;
  HIDWORD(v210) = 1048572;
  v211 = 0x19FFFC0062FFFCLL;
  v208 = 0;
  v209 = 0;
  OUTLINED_FUNCTION_18_19(a1, a2, a3, a4, a5, a6, a7, a8, v185);
  OUTLINED_FUNCTION_20_17();
  bzero(v221, v9);
  v10 = setjmp(v221);
  if (v10 || OUTLINED_FUNCTION_32_11(v10, &v185, v11, v12, v13, v14, v15, v16, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220))
  {
LABEL_3:
    v17 = 94;
    goto LABEL_4;
  }

  LOWORD(v212) = -4;
  v20 = OUTLINED_FUNCTION_27_14();
  v22 = push_ptr_init(v20, v21);
  v23 = 0;
  OUTLINED_FUNCTION_39_7(v22, v24, &_MergedGlobals_1_2);
  HIWORD(v212) = 25;
  if (*(a1 + 2546) == *(a1 + 3270))
  {
    HIWORD(v212) = 60;
    HIWORD(v211) = 55;
    v25 = OUTLINED_FUNCTION_7_25();
    starttest_l(v25, v26);
    v27 = OUTLINED_FUNCTION_2_27();
    if (lpta_loadp_setscan_l(v27, v28))
    {
      v23 = 0;
      goto LABEL_63;
    }

    v29 = OUTLINED_FUNCTION_46_5();
    bspush_ca_scan(v29, v30);
    v31 = testFldeq(a1, 0, 6, 3);
    v23 = 0;
    v32 = 0;
    if (v31)
    {
      goto LABEL_66;
    }

    while (2)
    {
      v23 = v32;
      if (advance_tok(a1))
      {
        goto LABEL_66;
      }

      v33 = OUTLINED_FUNCTION_7_25();
      starttest(v33, v34);
      v35 = OUTLINED_FUNCTION_1_27();
      v37 = lpta_loadp_setscan_l(v35, v36);
      v38 = v23;
      if (v37)
      {
LABEL_11:
        v39 = OUTLINED_FUNCTION_7_25();
        starttest(v39, v40);
        v41 = OUTLINED_FUNCTION_1_27();
        v43 = lpta_loadp_setscan_l(v41, v42);
        v44 = v23;
        if (!v43)
        {
LABEL_12:
          OUTLINED_FUNCTION_31_12(7, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208);
          if (!advance_tok(a1) && !OUTLINED_FUNCTION_8_25())
          {
            v45 = OUTLINED_FUNCTION_11_24();
            npush_i(v45);
            if (!if_testeq(a1, v46, v47, v48, v49, v50, v51, v52) && !advance_tok(a1))
            {
              v53 = OUTLINED_FUNCTION_13_24();
              if (!lpta_loadp_setscan_r(v53, v54) && !OUTLINED_FUNCTION_8_25())
              {
                v55 = OUTLINED_FUNCTION_11_24();
                npush_i(v55);
                if (!if_testeq(a1, v56, v57, v58, v59, v60, v61, v62) && !advance_tok(a1))
                {
                  v63 = 75;
                  v64 = 80;
LABEL_62:
                  HIWORD(v212) = v64;
                  HIWORD(v211) = v63;
                  break;
                }
              }
            }
          }

          goto LABEL_66;
        }

LABEL_31:
        v83 = v44;
        v84 = OUTLINED_FUNCTION_7_25();
        starttest(v84, v85);
        v86 = OUTLINED_FUNCTION_1_27();
        v88 = lpta_loadp_setscan_l(v86, v87);
        v23 = v83;
        v89 = v83;
        if (!v88)
        {
LABEL_32:
          OUTLINED_FUNCTION_31_12(9, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208);
          if (!advance_tok(a1) && !advance_tok(a1) && !OUTLINED_FUNCTION_8_25())
          {
            v90 = OUTLINED_FUNCTION_11_24();
            npush_i(v90);
            if (!if_testeq(a1, v91, v92, v93, v94, v95, v96, v97) && !advance_tok(a1))
            {
              v98 = OUTLINED_FUNCTION_13_24();
              if (!lpta_loadp_setscan_r(v98, v99) && !OUTLINED_FUNCTION_8_25())
              {
                v100 = OUTLINED_FUNCTION_11_24();
                npush_i(v100);
                if (!if_testeq(a1, v101, v102, v103, v104, v105, v106, v107) && !advance_tok(a1))
                {
                  v63 = 65;
                  v64 = 70;
                  goto LABEL_62;
                }
              }
            }
          }

          goto LABEL_66;
        }

LABEL_43:
        v23 = v89;
        v108 = OUTLINED_FUNCTION_7_25();
        starttest(v108, v109);
        v110 = OUTLINED_FUNCTION_1_27();
        if (lpta_loadp_setscan_r(v110, v111))
        {
LABEL_44:
          v112 = OUTLINED_FUNCTION_7_25();
          starttest(v112, v113);
          v114 = OUTLINED_FUNCTION_1_27();
          if (lpta_loadp_setscan_r(v114, v115))
          {
LABEL_45:
            v116 = OUTLINED_FUNCTION_7_25();
            starttest(v116, v117);
            v118 = OUTLINED_FUNCTION_1_27();
            if (lpta_loadp_setscan_r(v118, v119))
            {
LABEL_46:
              v64 = 60;
              v63 = 60;
              goto LABEL_62;
            }

            if (OUTLINED_FUNCTION_8_25())
            {
              goto LABEL_66;
            }

            v140 = OUTLINED_FUNCTION_11_24();
            npush_i(v140);
            if (if_testeq(a1, v141, v142, v143, v144, v145, v146, v147))
            {
              goto LABEL_66;
            }

            if (advance_tok(a1))
            {
              goto LABEL_66;
            }

            if (advance_tok(a1))
            {
              goto LABEL_66;
            }

            v148 = advance_tok(a1);
            v149 = v23;
            if (v148)
            {
              goto LABEL_66;
            }

LABEL_85:
            v23 = v149;
            v179 = OUTLINED_FUNCTION_7_25();
            if (test_synch(v179, v180, 1u, v181))
            {
              goto LABEL_66;
            }

            v63 = 65;
LABEL_90:
            v64 = 60;
            goto LABEL_62;
          }

          if (OUTLINED_FUNCTION_8_25())
          {
            goto LABEL_66;
          }

          v130 = OUTLINED_FUNCTION_11_24();
          npush_i(v130);
          if (if_testeq(a1, v131, v132, v133, v134, v135, v136, v137))
          {
            goto LABEL_66;
          }

          if (advance_tok(a1))
          {
            goto LABEL_66;
          }

          v138 = advance_tok(a1);
          v139 = v23;
          if (v138)
          {
            goto LABEL_66;
          }

LABEL_88:
          v23 = v139;
          v182 = OUTLINED_FUNCTION_7_25();
          if (!test_synch(v182, v183, 1u, v184))
          {
            v63 = 75;
            goto LABEL_90;
          }
        }

        else
        {
          if (OUTLINED_FUNCTION_8_25())
          {
            goto LABEL_66;
          }

          v120 = OUTLINED_FUNCTION_11_24();
          npush_i(v120);
          if (if_testeq(a1, v121, v122, v123, v124, v125, v126, v127))
          {
            goto LABEL_66;
          }

          v128 = advance_tok(a1);
          v129 = v23;
          if (v128)
          {
            goto LABEL_66;
          }

LABEL_82:
          v23 = v129;
          v176 = OUTLINED_FUNCTION_7_25();
          if (!test_synch(v176, v177, 1u, v178))
          {
            v63 = 85;
            goto LABEL_90;
          }
        }
      }

      else
      {
LABEL_22:
        v23 = v38;
        OUTLINED_FUNCTION_31_12(5, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208);
        if (!OUTLINED_FUNCTION_8_25())
        {
          v65 = OUTLINED_FUNCTION_11_24();
          npush_i(v65);
          if (!if_testeq(a1, v66, v67, v68, v69, v70, v71, v72) && !advance_tok(a1))
          {
            v73 = OUTLINED_FUNCTION_13_24();
            if (!lpta_loadp_setscan_r(v73, v74) && !OUTLINED_FUNCTION_8_25())
            {
              v75 = OUTLINED_FUNCTION_11_24();
              npush_i(v75);
              if (!if_testeq(a1, v76, v77, v78, v79, v80, v81, v82) && !advance_tok(a1))
              {
                v63 = 85;
                v64 = 90;
                goto LABEL_62;
              }
            }
          }
        }
      }

LABEL_66:
      v154 = v23;
LABEL_67:
      v155 = *(a1 + 104);
      if (v155)
      {
        v156 = OUTLINED_FUNCTION_25_16(v155);
        v23 = v157;
      }

      else
      {
        v156 = vback(a1, v154);
        v23 = 0;
      }

      v32 = v23;
      switch(v156)
      {
        case 1:
          goto LABEL_63;
        case 2:
          v158 = OUTLINED_FUNCTION_14_22();
          v160 = testFldeq(v158, v159, 6, 2);
          v32 = v23;
          v154 = v23;
          if (!v160)
          {
            continue;
          }

          goto LABEL_67;
        case 3:
          continue;
        case 4:
          goto LABEL_11;
        case 5:
          v38 = v23;
          goto LABEL_22;
        case 6:
          v44 = v23;
          goto LABEL_31;
        case 7:
          goto LABEL_12;
        case 8:
          v89 = v23;
          goto LABEL_43;
        case 9:
          goto LABEL_32;
        case 10:
          goto LABEL_44;
        case 11:
          v129 = v23;
          goto LABEL_82;
        case 12:
          goto LABEL_45;
        case 13:
          v139 = v23;
          goto LABEL_88;
        case 14:
          goto LABEL_46;
        case 15:
          v149 = v23;
          goto LABEL_85;
        case 16:
          goto LABEL_76;
        case 17:
          bspop_boa(a1);
          v161 = OUTLINED_FUNCTION_5_25();
          v164 = testFldeq(v161, v162, v163, 2);
          v154 = v23;
          if (v164)
          {
            goto LABEL_67;
          }

          v165 = advance_tok(a1);
          v154 = v23;
          if (v165)
          {
            goto LABEL_67;
          }

          WORD1(v211) = 50;
          break;
        case 18:
          goto LABEL_79;
        case 19:
          goto LABEL_80;
        default:
          goto LABEL_3;
      }

      goto LABEL_76;
    }
  }

LABEL_63:
  v150 = OUTLINED_FUNCTION_7_25();
  starttest(v150, v151);
  v152 = OUTLINED_FUNCTION_17_20();
  if (!lpta_loadp_setscan_r(v152, v153))
  {
    OUTLINED_FUNCTION_7_25();
    bspush_ca_scan_boa();
    if (!advanc(a1))
    {
      v23 = 1;
    }

    goto LABEL_66;
  }

LABEL_76:
  v166 = OUTLINED_FUNCTION_22_17();
  lpta_loadpn(v166, v167);
  v168 = OUTLINED_FUNCTION_17_20();
  rpta_loadpn(v168, v169);
  if (!compare_ptas(a1) && !testneq(a1))
  {
    v170 = OUTLINED_FUNCTION_17_20();
    insert_f0(v170, v171, v172);
  }

LABEL_79:
  v173 = OUTLINED_FUNCTION_22_17();
  insert_f0(v173, v174, v175);
LABEL_80:
  v17 = 0;
LABEL_4:
  vretproc(a1);
  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

void por_nucl_low_high_star_tone()
{
  OUTLINED_FUNCTION_61_4();
  v1 = v0;
  v141 = *MEMORY[0x277D85DE8];
  v135 = 10551292;
  v136 = 0;
  v133 = 6619132;
  v134 = 6619132;
  v131 = 0;
  v132 = 0;
  OUTLINED_FUNCTION_21_17();
  bzero(v130, v2);
  OUTLINED_FUNCTION_20_17();
  bzero(v140, v3);
  if (setjmp(v140) || ventproc(v1, v130, v139, v138, v137, v140))
  {
    goto LABEL_3;
  }

  LOWORD(v136) = -4;
  v5 = push_ptr_init(v1, &v131);
  v6 = 0;
  OUTLINED_FUNCTION_39_7(v5, v7, &_MergedGlobals_1_2);
  v8 = OUTLINED_FUNCTION_11_24();
  fence_25(v8, v9, v10);
  HIWORD(v136) = 30;
  v11 = OUTLINED_FUNCTION_17_20();
  lpta_loadpn(v11, v12);
  v13 = OUTLINED_FUNCTION_54_4();
  rpta_loadpn(v13, v14);
  if (compare_ptas(v1))
  {
    goto LABEL_17;
  }

  if (testeq(v1) || (v15 = OUTLINED_FUNCTION_17_20(), lpta_loadpn(v15, v16), v17 = OUTLINED_FUNCTION_22_17(), rpta_loadpn(v17, v18), compare_ptas(v1)) || testeq(v1))
  {
    v6 = 0;
LABEL_17:
    if (*(v1 + 1018) == *(v1 + 938))
    {
      HIWORD(v133) = 35;
      HIWORD(v135) = 130;
    }

    else
    {
LABEL_20:
      v25 = OUTLINED_FUNCTION_13_24();
      if (!lpta_loadp_setscan_r(v25, v26) && !advance_tok(v1))
      {
        OUTLINED_FUNCTION_35_9();
        v27 = *(v1 + 1472);
        v28 = OUTLINED_FUNCTION_3_26();
        if (!test_ptr(v28))
        {
          HIWORD(v133) = 70;
        }
      }
    }

    v23 = v6;
    goto LABEL_25;
  }

  HIWORD(v134) = 10;
  v19 = OUTLINED_FUNCTION_22_17();
  if (lpta_loadp_setscan_r(v19, v20) || advance_tok(v1) || (OUTLINED_FUNCTION_35_9(), v21 = *(v1 + 1472), v22 = OUTLINED_FUNCTION_3_26(), test_ptr(v22)))
  {
    v23 = 0;
LABEL_13:
    v24 = 98;
  }

  else
  {
    v23 = 0;
    v24 = 80;
  }

  HIWORD(v133) = v24;
LABEL_25:
  v29 = 6;
  v30 = 8;
  v31 = 9;
LABEL_26:
  v127 = v31;
  v128 = v30;
  v129 = v29;
  starttest(v1, v29);
  v32 = OUTLINED_FUNCTION_17_20();
  lpta_loadpn(v32, v33);
  v34 = OUTLINED_FUNCTION_16_21();
  rpta_loadpn(v34, v35);
  if (compare_ptas(v1) || testeq(v1) || (v36 = OUTLINED_FUNCTION_22_17(), lpta_loadpn(v36, v37), v38 = OUTLINED_FUNCTION_16_21(), rpta_loadpn(v38, v39), compare_ptas(v1)) || testeq(v1) || (v40 = OUTLINED_FUNCTION_13_24(), lpta_loadp_setscan_l(v40, v41)))
  {
LABEL_31:
    v42 = OUTLINED_FUNCTION_7_25();
    starttest(v42, v43);
    v44 = OUTLINED_FUNCTION_17_20();
    v46 = lpta_loadp_setscan_l(v44, v45);
    v47 = v23;
    v48 = v23;
    if (!v46)
    {
LABEL_32:
      v23 = v47;
      bspush_ca_scan(v1, v128);
      bspush_ca_scan_boa();
      v49 = OUTLINED_FUNCTION_19_18();
      if (!testFldeq(v49, v50, 1, 2))
      {
        v23 = 1;
      }

LABEL_44:
      v72 = v23;
      while (1)
      {
        v73 = *(v1 + 104);
        if (v73)
        {
          v74 = OUTLINED_FUNCTION_25_16(v73);
          v23 = v75;
        }

        else
        {
          v74 = vback(v1, v72);
          v23 = 0;
        }

        v47 = v23;
        v48 = v23;
        switch(v74)
        {
          case 1:
            v6 = v23;
            goto LABEL_17;
          case 2:
            goto LABEL_13;
          case 3:
          case 4:
            v29 = v129;
            v31 = v127;
            v30 = v128;
            goto LABEL_26;
          case 5:
            v6 = v23;
            goto LABEL_20;
          case 6:
            goto LABEL_31;
          case 7:
          case 12:
            goto LABEL_43;
          case 8:
            v76 = OUTLINED_FUNCTION_19_18();
            v78 = testFldeq(v76, v77, 1, 2);
            v72 = v23;
            if (v78)
            {
              continue;
            }

            v79 = advance_tok(v1);
            v72 = v23;
            if (v79)
            {
              continue;
            }

            goto LABEL_51;
          case 9:
            bspop_boa(v1);
            v111 = advance_tok(v1);
            v47 = v23;
            v72 = v23;
            if (!v111)
            {
              goto LABEL_32;
            }

            continue;
          case 10:
            goto LABEL_32;
          case 11:
LABEL_51:
            savescptr(v1, 11, &v131);
            starttest_l(v1, 12);
            v80 = OUTLINED_FUNCTION_57_4();
            bspush_ca(v80);
            v81 = OUTLINED_FUNCTION_58_4();
            lpta_loadpn(v81, v82);
            OUTLINED_FUNCTION_14_22();
            lpta_ctxtl();
            v83 = OUTLINED_FUNCTION_16_21();
            rpta_loadpn(v83, v84);
            v85 = compare_ptas(v1);
            v72 = v23;
            if (v85)
            {
              continue;
            }

            v86 = testeq(v1);
LABEL_53:
            v72 = v23;
            if (v86)
            {
              continue;
            }

LABEL_54:
            v87 = OUTLINED_FUNCTION_7_25();
            starttest(v87, v88);
            v89 = OUTLINED_FUNCTION_58_4();
            if (lpta_loadp_setscan_l(v89, v90))
            {
              goto LABEL_42;
            }

            OUTLINED_FUNCTION_26_16();
            bspush_ca_scan_boa();
LABEL_56:
            v91 = OUTLINED_FUNCTION_24_17();
            if (test_synch(v91, v92, 1u, &unk_2806BBEF4))
            {
              v72 = v23;
            }

            else
            {
              v72 = 1;
            }

            break;
          case 13:
            *(v1 + 136) = 1;
            OUTLINED_FUNCTION_3_26();
            v93 = lpta_tstctxtl();
            v72 = v23;
            if (v93)
            {
              continue;
            }

            v94 = OUTLINED_FUNCTION_14_22();
            setscan_r(v94);
            v72 = v23;
            if (v95)
            {
              continue;
            }

            v96 = OUTLINED_FUNCTION_14_22();
            v98 = npush_fld(v96, v97, 5);
            v72 = v23;
            if (v98)
            {
              continue;
            }

            npush_i(v1);
            v106 = if_testgt(v1, v99, v100, v101, v102, v103, v104, v105);
            v72 = v23;
            if (v106)
            {
              continue;
            }

            v86 = advance_tok(v1);
            goto LABEL_53;
          case 14:
            goto LABEL_54;
          case 15:
            bspop_boa(v1);
            v107 = OUTLINED_FUNCTION_19_18();
            v109 = testFldeq(v107, v108, 1, 1);
            v72 = v23;
            if (v109)
            {
              continue;
            }

            v110 = advance_tok(v1);
            v72 = v23;
            if (v110)
            {
              continue;
            }

            *(v1 + 1144) = v132;
            HIWORD(v134) = 50;
            goto LABEL_42;
          case 16:
            goto LABEL_56;
          case 17:
            goto LABEL_77;
          case 18:
            v72 = v23;
            if (*(v1 + 2590) == *(v1 + 3270))
            {
              goto LABEL_76;
            }

            continue;
          case 19:
            goto LABEL_76;
          case 20:
            goto LABEL_78;
          default:
            goto LABEL_3;
        }
      }
    }
  }

  else
  {
    if (OUTLINED_FUNCTION_8_25())
    {
      goto LABEL_44;
    }

    npush_i(v1);
    if (if_testeq(v1, v51, v52, v53, v54, v55, v56, v57))
    {
      goto LABEL_44;
    }

    if (advance_tok(v1))
    {
      goto LABEL_44;
    }

    v58 = OUTLINED_FUNCTION_2_27();
    if (lpta_loadp_setscan_l(v58, v59))
    {
      goto LABEL_44;
    }

    v60 = OUTLINED_FUNCTION_14_22();
    if (npush_fld(v60, v61, 5))
    {
      goto LABEL_44;
    }

    v62 = OUTLINED_FUNCTION_12_24();
    npush_i(v62);
    if (if_testlt(v1, v63, v64, v65, v66, v67, v68, v69) || advance_tok(v1))
    {
      goto LABEL_44;
    }

    HIWORD(v136) = 50;
    HIWORD(v135) = 120;
LABEL_42:
    v48 = v23;
  }

LABEL_43:
  v23 = v48;
  starttest(v1, 17);
  bspush_ca(v1);
  v70 = OUTLINED_FUNCTION_2_27();
  if (lpta_loadp_setscan_r(v70, v71))
  {
    goto LABEL_44;
  }

  v112 = OUTLINED_FUNCTION_14_22();
  if (npush_fld(v112, v113, 5))
  {
    goto LABEL_44;
  }

  npush_i(v1);
  if (if_testlt(v1, v114, v115, v116, v117, v118, v119, v120) || advance_tok(v1))
  {
    goto LABEL_44;
  }

LABEL_76:
  HIWORD(v136) += 20;
  HIWORD(v135) += 40;
LABEL_77:
  v121 = OUTLINED_FUNCTION_17_20();
  insert_f0(v121, v122, v123);
LABEL_78:
  v124 = OUTLINED_FUNCTION_22_17();
  insert_f0(v124, v125, v126);
LABEL_3:
  vretproc(v1);
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_60_4();
}

uint64_t por_nucl_high_star_low_tone(void *a1)
{
  OUTLINED_FUNCTION_52_4(*MEMORY[0x277D85DE8]);
  v4 = v3 | 0x190000;
  HIDWORD(v105) = v4 + 4915200;
  LODWORD(v107) = v4;
  HIDWORD(v103) = v4 + 3276800;
  LODWORD(v105) = v4 + 4784128;
  OUTLINED_FUNCTION_18_19(v5, v6, v7, v8, v9, v10, v11, v12, v56);
  OUTLINED_FUNCTION_6_25(v13, v14, v15, v16, v17, v18, v19, v20, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115);
  v21 = setjmp(v1);
  if (v21 || OUTLINED_FUNCTION_0_29(v21, v22, v23, v24, v25, v26, v27, v28, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, *v108, v108[4], *v110, *&v110[4], v110[6], v112, SWORD2(v112), SBYTE6(v112), SHIBYTE(v112), v114, v116))
  {
LABEL_3:
    v29 = 94;
  }

  else
  {
    fence_25(a1, 0, &_MergedGlobals_1_2);
    v32 = OUTLINED_FUNCTION_7_25();
    starttest(v32, v33);
    v34 = OUTLINED_FUNCTION_17_20();
    if (!lpta_loadp_setscan_r(v34, v35))
    {
      OUTLINED_FUNCTION_46_5();
      bspush_ca_scan_boa();
      v46 = !advanc(a1);
      while (2)
      {
        v47 = a1[13];
        if (v47)
        {
          v48 = OUTLINED_FUNCTION_25_16(v47);
          v50 = v49;
        }

        else
        {
          v48 = vback(a1, v46);
          v50 = 0;
        }

        switch(v48)
        {
          case 1:
            break;
          case 2:
            bspop_boa(a1);
            v51 = OUTLINED_FUNCTION_5_25();
            v54 = testFldeq(v51, v52, v53, v1);
            v46 = v50;
            if (!v54)
            {
              v55 = advance_tok(a1);
              v46 = v50;
              if (!v55)
              {
                break;
              }
            }

            continue;
          case 3:
            goto LABEL_9;
          case 4:
            goto LABEL_10;
          default:
            goto LABEL_3;
        }

        break;
      }
    }

    v36 = OUTLINED_FUNCTION_22_17();
    lpta_loadpn(v36, v37);
    v38 = OUTLINED_FUNCTION_17_20();
    rpta_loadpn(v38, v39);
    if (!compare_ptas(a1) && !testneq(a1))
    {
      OUTLINED_FUNCTION_36_9();
      v40 = OUTLINED_FUNCTION_17_20();
      insert_f0(v40, v41, v42);
    }

LABEL_9:
    OUTLINED_FUNCTION_38_8();
    v43 = OUTLINED_FUNCTION_22_17();
    insert_f0(v43, v44, v45);
LABEL_10:
    v29 = 0;
  }

  vretproc(a1);
  v30 = *MEMORY[0x277D85DE8];
  return v29;
}

uint64_t por_nucl_high_low_star_tone(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v110 = *MEMORY[0x277D85DE8];
  LODWORD(v100) = 2031612;
  HIDWORD(v97) = 720892;
  OUTLINED_FUNCTION_18_19(a1, a2, a3, a4, a5, a6, a7, a8, v50);
  OUTLINED_FUNCTION_6_25(v10, v11, v12, v13, v14, v15, v16, v17, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, 0x78FFFC005AFFFCLL, v100, v102, v104, v106, v108);
  v18 = setjmp(v8);
  if (v18 || OUTLINED_FUNCTION_0_29(v18, v19, v20, v21, v22, v23, v24, v25, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v99, *v101, v101[4], *v103, *&v103[4], v103[6], v105, SWORD2(v105), SBYTE6(v105), SHIBYTE(v105), v107, v109))
  {
    vretproc(a1);
    result = 94;
  }

  else
  {
    fence_25(a1, 0, &_MergedGlobals_1_2);
    v28 = OUTLINED_FUNCTION_45_5();
    lpta_loadpn(v28, v29);
    v30 = OUTLINED_FUNCTION_28_13();
    rpta_loadpn(v30, v31);
    if (!compare_ptas(a1))
    {
      testeq(a1);
    }

    lpta_loadpn(a1, a1 + 656);
    v32 = OUTLINED_FUNCTION_28_13();
    rpta_loadpn(v32, v33);
    if (!compare_ptas(a1))
    {
      testneq(a1);
    }

    v34 = OUTLINED_FUNCTION_16_21();
    lpta_loadpn(v34, v35);
    v36 = OUTLINED_FUNCTION_17_20();
    rpta_loadpn(v36, v37);
    if (!compare_ptas(a1) && !testeq(a1))
    {
      v38 = OUTLINED_FUNCTION_22_17();
      lpta_loadpn(v38, v39);
      v40 = OUTLINED_FUNCTION_17_20();
      rpta_loadpn(v40, v41);
      if (!compare_ptas(a1))
      {
        testeq(a1);
      }
    }

    OUTLINED_FUNCTION_59_4();
    if (v42 == v43)
    {
      *(a1 + 734);
      *(a1 + 734);
    }

    OUTLINED_FUNCTION_38_8();
    v44 = OUTLINED_FUNCTION_17_20();
    insert_f0(v44, v45, v46);
    OUTLINED_FUNCTION_36_9();
    v47 = OUTLINED_FUNCTION_22_17();
    insert_f0(v47, v48, v49);
    vretproc(a1);
    result = 0;
  }

  v27 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t por_nucl_low_star_high_tone(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v95 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_18_19(a1, a2, a3, a4, a5, a6, a7, a8, v38);
  OUTLINED_FUNCTION_20_17();
  OUTLINED_FUNCTION_55_4(v10, v11, v12, v13, v14, v15, v16, v17, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93);
  v18 = setjmp(v8);
  if (v18 || (v26 = OUTLINED_FUNCTION_4_25(v18, v19, v20, v21, v22, v23, v24, v25, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, *v86, v86[4], *v88, *&v88[4], v88[6], v90, SWORD2(v90), SBYTE6(v90), SHIBYTE(v90), v92, v94), v26))
  {
    v28 = 94;
  }

  else
  {
    v28 = 0;
    OUTLINED_FUNCTION_39_7(v26, v27, &_MergedGlobals_1_2);
    por_nucl_low_tone(a1, v31, v32, v33, v34, v35, v36, v37);
  }

  vretproc(a1);
  v29 = *MEMORY[0x277D85DE8];
  return v28;
}

uint64_t por_postnucl_f0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v116 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_18_19(a1, a2, a3, a4, a5, a6, a7, a8, v59);
  OUTLINED_FUNCTION_20_17();
  OUTLINED_FUNCTION_55_4(v10, v11, v12, v13, v14, v15, v16, v17, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114);
  v18 = setjmp(v8);
  if (v18 || (v26 = OUTLINED_FUNCTION_4_25(v18, v19, v20, v21, v22, v23, v24, v25, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, *v107, v107[4], *v109, *&v109[4], v109[6], v111, SWORD2(v111), SBYTE6(v111), SHIBYTE(v111), v113, v115), v26))
  {
LABEL_3:
    vretproc(a1);
    result = 94;
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_39_7(v26, v27, &_MergedGlobals_1_2);
  fence_25(a1, 1, &unk_2806BBEF3);
  first_postnucl_accent(a1);
  while (2)
  {
    por_position_t_ptrs();
LABEL_7:
    OUTLINED_FUNCTION_47_5();
    if (v37)
    {
      v38 = OUTLINED_FUNCTION_33_11();
      starttest(v38, v39);
      v40 = OUTLINED_FUNCTION_15_22();
      if (!lpta_loadp_setscan_r(v40, v41))
      {
        v42 = OUTLINED_FUNCTION_14_22();
        if (npush_fld(v42, v43, 5))
        {
          goto LABEL_18;
        }

        npush_i(a1);
        if (if_testgt(a1, v44, v45, v46, v47, v48, v49, v50) || advance_tok(a1) || advance_tok(a1) || (*(a1 + 136) = 1, v51 = *(a1 + 1472), v52 = OUTLINED_FUNCTION_3_26(), test_ptr(v52)) || (v53 = OUTLINED_FUNCTION_13_24(), lpta_loadp_setscan_r(v53, v54)) || advance_tok(a1) || (*(a1 + 136) = 1, v55 = *(a1 + 1472), v56 = OUTLINED_FUNCTION_3_26(), test_ptr(v56)))
        {
LABEL_18:
          v57 = *(a1 + 104);
          if (v57)
          {
            v58 = OUTLINED_FUNCTION_25_16(v57);
          }

          else
          {
            v58 = vback(a1, 0);
          }

          switch(v58)
          {
            case 1:
              continue;
            case 2:
              goto LABEL_7;
            case 3:
            case 6:
              goto LABEL_23;
            case 4:
              goto LABEL_22;
            case 5:
            case 7:
            case 8:
            case 9:
            case 10:
              goto LABEL_25;
            case 11:
              goto LABEL_27;
            default:
              goto LABEL_3;
          }
        }

        goto LABEL_25;
      }

LABEL_22:
      if (*(a1 + 734) == 1)
      {
        goto LABEL_24;
      }
    }

    break;
  }

LABEL_23:
  if (*(a1 + 746) >= 1)
  {
LABEL_24:
    por_postnucl_high_tone(a1, v30, v31, v32, v33, v34, v35, v36);
  }

LABEL_25:
  if (*(a1 + 734) == 1)
  {
    por_phrase_tone();
  }

LABEL_27:
  vretproc(a1);
  result = 0;
LABEL_4:
  v29 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t por_postnucl_high_tone(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v118 = *MEMORY[0x277D85DE8];
  LODWORD(v108) = 0;
  OUTLINED_FUNCTION_18_19(a1, a2, a3, a4, a5, a6, a7, a8, v58);
  OUTLINED_FUNCTION_6_25(v10, v11, v12, v13, v14, v15, v16, v17, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, 0xFFFC0000FFFCLL, 0xAFFFC0001FFFCLL, v108, v110, v112, v114, v116);
  v18 = setjmp(v8);
  if (v18 || (v26 = OUTLINED_FUNCTION_0_29(v18, v19, v20, v21, v22, v23, v24, v25, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v105, v107, *v109, v109[4], *v111, *&v111[4], v111[6], v113, SWORD2(v113), SBYTE6(v113), SHIBYTE(v113), v115, v117), v26))
  {
    vretproc(a1);
    result = 94;
  }

  else
  {
    OUTLINED_FUNCTION_39_7(v26, v27, &_MergedGlobals_1_2);
    v30 = OUTLINED_FUNCTION_11_24();
    fence_25(v30, v31, v32);
    OUTLINED_FUNCTION_47_5();
    if (v33)
    {
      num_words_in_range();
    }

    v34 = OUTLINED_FUNCTION_22_17();
    lpta_loadpn(v34, v35);
    v36 = OUTLINED_FUNCTION_17_20();
    rpta_loadpn(v36, v37);
    v38 = compare_ptas(a1);
    v39 = 50;
    if (!v38)
    {
      if (testeq(a1))
      {
        v39 = 50;
      }

      else
      {
        v39 = 40;
      }
    }

    v40 = a1[1271];
    v41 = a1[1637];
    v42 = v40 != v41 || v106 < 6;
    v44 = a1[2457];
    if (v42)
    {
      v43 = (v39 * a1[2459]);
    }

    else
    {
      a1[2459] = 20;
    }

    if (v40 == v41)
    {
      a1[1287];
      a1[1635];
    }

    OUTLINED_FUNCTION_36_9();
    v45 = OUTLINED_FUNCTION_17_20();
    insert_f0(v45, v46, v47);
    lpta_loadpn(a1, a1 + 328);
    v48 = OUTLINED_FUNCTION_28_13();
    rpta_loadpn(v48, v49);
    if (compare_ptas(a1))
    {
      v50 = 10;
    }

    else if (testeq(a1))
    {
      v50 = 10;
    }

    else
    {
      v50 = -10;
    }

    v51 = a1[1271];
    v52 = a1[1637];
    v53 = v51 == v52;
    if (v106 <= 5)
    {
      v53 = 0;
    }

    v54 = ((v50 * (a1[2459] << v53)) / 100.0 + a1[2457]);
    if (v51 == v52)
    {
      a1[1287];
      a1[1635];
    }

    OUTLINED_FUNCTION_38_8();
    v55 = OUTLINED_FUNCTION_29_13();
    insert_f0(v55, v56, v57);
    vretproc(a1);
    result = 0;
  }

  v29 = *MEMORY[0x277D85DE8];
  return result;
}

void por_phrase_tone()
{
  OUTLINED_FUNCTION_61_4();
  v1 = v0;
  v91 = *MEMORY[0x277D85DE8];
  v85 = 65532;
  v86 = 0;
  v83 = 0;
  v84 = 0;
  OUTLINED_FUNCTION_18_19(v0, v2, v3, v4, v5, v6, v7, v8, v82[0]);
  OUTLINED_FUNCTION_20_17();
  bzero(v90, v9);
  if (setjmp(v90))
  {
    goto LABEL_68;
  }

  if (ventproc(v1, v82, v89, v88, v87, v90))
  {
    goto LABEL_68;
  }

  LOWORD(v86) = -4;
  v10 = OUTLINED_FUNCTION_27_14();
  v12 = push_ptr_init(v10, v11);
  OUTLINED_FUNCTION_39_7(v12, v13, &_MergedGlobals_1_2);
  HIWORD(v86) = 0;
  v84 = *(v1 + 3352);
  if (*(v1 + 1018) != *(v1 + 938))
  {
    goto LABEL_68;
  }

  while (2)
  {
    v84 = *(v1 + 808);
    v14 = *(v1 + 978);
    if (v14 == *(v1 + 738))
    {
      v15 = *(v1 + 978);
      if (*(v1 + 2574) == *(v1 + 3270))
      {
        v16 = *(v1 + 958);
      }

      else
      {
        v16 = *(v1 + 978);
        if (v14 != *(v1 + 958))
        {
          v17 = 30;
          goto LABEL_12;
        }
      }

LABEL_9:
      if (v15 != v16 || (v17 = 100, *(v1 + 1018) == *(v1 + 938)))
      {
LABEL_11:
        v17 = 70;
      }
    }

    else
    {
LABEL_43:
      OUTLINED_FUNCTION_30_12();
      if (v18)
      {
        v17 = 10;
      }

      else
      {
LABEL_46:
        v58 = OUTLINED_FUNCTION_26_16();
        starttest(v58, v59);
        v60 = OUTLINED_FUNCTION_23_17();
        if (lpta_loadp_setscan_r(v60, v61))
        {
LABEL_47:
          v17 = 55;
        }

        else
        {
          v62 = OUTLINED_FUNCTION_33_11();
          bspush_ca_scan(v62, v63);
LABEL_49:
          *(v1 + 136) = 1;
          v64 = *(v1 + 1472);
          v65 = OUTLINED_FUNCTION_3_26();
          if (test_ptr(v65))
          {
            goto LABEL_27;
          }

          v17 = 85;
        }
      }
    }

LABEL_12:
    HIWORD(v85) = v17;
LABEL_13:
    OUTLINED_FUNCTION_50_4();
    if (v18)
    {
      v19 = *(v1 + 2574);
      OUTLINED_FUNCTION_48_5();
      if (!v18)
      {
LABEL_16:
        if (*(v1 + 2546) != v20)
        {
LABEL_17:
          if (*(v1 + 3210) == v20)
          {
            v21 = OUTLINED_FUNCTION_24_17();
            starttest(v21, v22);
            v23 = OUTLINED_FUNCTION_15_22();
            if (lpta_loadp_setscan_l(v23, v24))
            {
LABEL_19:
              starttest(v1, 18);
              v25 = OUTLINED_FUNCTION_15_22();
              if (!lpta_loadp_setscan_l(v25, v26))
              {
                v27 = OUTLINED_FUNCTION_10_25();
                if (!npush_fld(v27, 2u, v28))
                {
                  v29 = OUTLINED_FUNCTION_9_25();
                  npush_i(v29);
                  if (!if_testlt(v1, v30, v31, v32, v33, v34, v35, v36) && !advance_tok(v1))
                  {
                    v81 = 105;
                    goto LABEL_80;
                  }
                }

                goto LABEL_27;
              }

LABEL_71:
              v81 = 70;
LABEL_80:
              HIWORD(v86) = v81;
LABEL_81:
              insert_f0(v1, &v83, &v85);
LABEL_82:
              por_boundary_tone(v1);
              break;
            }

            v37 = OUTLINED_FUNCTION_10_25();
            if (npush_fld(v37, 2u, v38))
            {
              goto LABEL_27;
            }

            npush_i(v1);
            if (if_testlt(v1, v39, v40, v41, v42, v43, v44, v45) || advance_tok(v1))
            {
              goto LABEL_27;
            }
          }
        }

LABEL_69:
        v81 = 140;
        goto LABEL_80;
      }

      v81 = 180;
      goto LABEL_80;
    }

LABEL_34:
    if (*(v1 + 3286) > 2)
    {
      v81 = -35;
      goto LABEL_80;
    }

LABEL_35:
    v52 = *(v1 + 2590);
    OUTLINED_FUNCTION_48_5();
    if (v18)
    {
      v81 = -10;
      goto LABEL_80;
    }

LABEL_36:
    if (*(v1 + 2574) == v53)
    {
LABEL_70:
      v81 = 25;
      goto LABEL_80;
    }

LABEL_37:
    if (*(v1 + 2546) == v53)
    {
      if (*(v1 + 3310) != *(v1 + 3282))
      {
LABEL_39:
        v54 = OUTLINED_FUNCTION_53_4();
        starttest(v54, v55);
        v56 = OUTLINED_FUNCTION_54_4();
        if (!lpta_loadp_setscan_r(v56, v57))
        {
          if (!testFldeq(v1, 5u, 2, 5) && !advance_tok(v1))
          {
            v81 = 5;
            goto LABEL_80;
          }

          goto LABEL_27;
        }

        goto LABEL_70;
      }

      goto LABEL_76;
    }

LABEL_57:
    if (*(v1 + 2602) == v53)
    {
LABEL_76:
      v81 = 100;
      goto LABEL_80;
    }

LABEL_58:
    if (*(v1 + 3286) != 2)
    {
LABEL_72:
      if (*(v1 + 978) == *(v1 + 738))
      {
        v81 = 20;
      }

      else
      {
LABEL_74:
        v81 = 0;
      }

      goto LABEL_80;
    }

    starttest(v1, 29);
    v66 = OUTLINED_FUNCTION_15_22();
    if (lpta_loadp_setscan_r(v66, v67) || advance_tok(v1))
    {
      v81 = -20;
      goto LABEL_80;
    }

LABEL_61:
    if (chstream(v1, 30, 7u))
    {
      goto LABEL_27;
    }

    if (OUTLINED_FUNCTION_8_25())
    {
      goto LABEL_27;
    }

    v68 = OUTLINED_FUNCTION_12_24();
    npush_i(v68);
    if (if_testeq(v1, v69, v70, v71, v72, v73, v74, v75) || advance_tok(v1))
    {
      goto LABEL_27;
    }

LABEL_65:
    v76 = OUTLINED_FUNCTION_58_4();
    if (!chstream(v76, v77, 2u))
    {
      *(v1 + 136) = 1;
      v78 = *(v1 + 1472);
      v79 = OUTLINED_FUNCTION_3_26();
      if (!test_ptr(v79))
      {
        v81 = -30;
        goto LABEL_80;
      }
    }

LABEL_27:
    v46 = *(v1 + 104);
    if (v46)
    {
      v47 = OUTLINED_FUNCTION_25_16(v46);
    }

    else
    {
      v48 = OUTLINED_FUNCTION_12_24();
      v47 = vback(v48, v49);
    }

    v81 = -20;
    switch(v47)
    {
      case 1:
        continue;
      case 2:
        goto LABEL_43;
      case 3:
        v15 = *(v1 + 978);
        v16 = *(v1 + 958);
        goto LABEL_9;
      case 4:
      case 6:
        goto LABEL_13;
      case 5:
        goto LABEL_11;
      case 7:
        goto LABEL_46;
      case 8:
        goto LABEL_47;
      case 9:
        v50 = OUTLINED_FUNCTION_19_18();
        if (!testFldeq(v50, v51, 4, 4) && !advance_tok(v1))
        {
          goto LABEL_49;
        }

        goto LABEL_27;
      case 10:
        goto LABEL_49;
      case 11:
        goto LABEL_34;
      case 12:
        v20 = *(v1 + 3270);
        goto LABEL_16;
      case 13:
      case 17:
      case 19:
      case 25:
      case 32:
        goto LABEL_81;
      case 14:
        v20 = *(v1 + 3270);
        goto LABEL_17;
      case 15:
        goto LABEL_69;
      case 16:
        goto LABEL_19;
      case 18:
        goto LABEL_71;
      case 20:
        goto LABEL_35;
      case 21:
        v53 = *(v1 + 3270);
        goto LABEL_36;
      case 22:
        v53 = *(v1 + 3270);
        goto LABEL_37;
      case 23:
        v53 = *(v1 + 3270);
        goto LABEL_57;
      case 24:
        goto LABEL_39;
      case 26:
        goto LABEL_70;
      case 27:
        goto LABEL_58;
      case 28:
        goto LABEL_72;
      case 29:
        goto LABEL_80;
      case 30:
        goto LABEL_61;
      case 31:
        goto LABEL_65;
      case 33:
        goto LABEL_74;
      case 34:
        goto LABEL_82;
      default:
        goto LABEL_68;
    }
  }

LABEL_68:
  vretproc(v1);
  v80 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_60_4();
}

uint64_t por_first_postnucl_accent(uint64_t a1)
{
  OUTLINED_FUNCTION_52_4(*MEMORY[0x277D85DE8]);
  HIDWORD(v33) = v3;
  LODWORD(v34) = v3;
  OUTLINED_FUNCTION_21_17();
  bzero(v32, v4);
  OUTLINED_FUNCTION_6_25(v5, v6, v7, v8, v9, v10, v11, v12, v31, v32[0], v32[1], v32[2], v32[3], v32[4], v32[5], v32[6], v32[7], v32[8], v32[9], v32[10], v32[11], v32[12], v32[13], v32[14], v32[15], v32[16], v32[17], v32[18], v32[19], v32[20], v32[21], v32[22], v33, v34, v35, v36[0], v36[1], v37[0]);
  if (setjmp(v1) || ventproc(a1, v32, v36 + 7, &v35 + 6, &v34 + 4, v37))
  {
    vretproc(a1);
    result = 94;
  }

  else
  {
    fence_25(a1, 0, &_MergedGlobals_1_2);
    v15 = OUTLINED_FUNCTION_11_24();
    fence_25(v15, v16, v17);
    OUTLINED_FUNCTION_50_4();
    if (v19)
    {
      v18 = 7;
    }

    else
    {
      OUTLINED_FUNCTION_30_12();
      if (v19)
      {
        if (*(a1 + 734) == 1)
        {
          v18 = 90;
        }

        else
        {
          v18 = 40;
        }
      }

      else
      {
        v18 = 50;
      }
    }

    WORD1(v34) = v18;
    v20 = OUTLINED_FUNCTION_24_17();
    set_first_postnuc_value(v20, v21, v22, v23, v24, v25, v26, v27);
    *(a1 + 4914) = HIWORD(v33);
    v28 = OUTLINED_FUNCTION_22_17();
    insert_f0(v28, v29, v30);
    vretproc(a1);
    result = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t por_boundary_tone(uint64_t a1)
{
  v60 = *MEMORY[0x277D85DE8];
  HIDWORD(v49) = 65532;
  v50 = 0;
  v47 = 0;
  v48 = 0;
  OUTLINED_FUNCTION_21_17();
  bzero(&v24, v2);
  OUTLINED_FUNCTION_20_17();
  bzero(v59, v3);
  v4 = setjmp(v59);
  if (!v4 && !OUTLINED_FUNCTION_32_11(v4, &v24, v5, v6, v7, v8, v9, v10, v22, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58))
  {
    v13 = OUTLINED_FUNCTION_40_6();
    get_parm(v13, v14, v15, -4);
    push_ptr_init(a1, &v47);
    fence_25(a1, 0, &_MergedGlobals_1_2);
    v48 = *(a1 + 3352);
    v16 = OUTLINED_FUNCTION_23_17();
    if (!lpta_loadp_setscan_l(v16, v17) && !advance_tok(a1))
    {
      OUTLINED_FUNCTION_34_10(2, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47);
    }

    HIWORD(v49) = 99;
    v18 = *(a1 + 3282);
    if (*(a1 + 3310) == v18)
    {
      v19 = HIWORD(v50);
      HIWORD(v50) += 10;
      if (*(a1 + 3286) < 2)
      {
LABEL_15:
        insert_f0(a1, &v47, &v49 + 2);
        vretproc(a1);
        result = 0;
        goto LABEL_4;
      }

      v20 = v19 + 20;
    }

    else
    {
      if (*(a1 + 3314) != v18)
      {
        goto LABEL_15;
      }

      v21 = HIWORD(v50);
      HIWORD(v50) -= 10;
      if (*(a1 + 3286) < 2)
      {
        goto LABEL_15;
      }

      v20 = v21 - 20;
    }

    HIWORD(v50) = v20;
    goto LABEL_15;
  }

  vretproc(a1);
  result = 94;
LABEL_4:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}