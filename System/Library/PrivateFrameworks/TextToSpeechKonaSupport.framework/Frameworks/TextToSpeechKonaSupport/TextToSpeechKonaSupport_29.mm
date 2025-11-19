uint64_t OUTLINED_FUNCTION_5_46()
{

  return lpta_loadp_setscan_r(v0, v0 + 1576);
}

uint64_t OUTLINED_FUNCTION_6_45()
{

  return lpta_rpta_loadp(v0, v0 + 1576, v0 + 1592);
}

void *fence_49(uint64_t a1)
{
  *(*(a1 + 192) + 8121) = 1;
  result = memset(*(a1 + 264), *(a1 + 288), *(a1 + 288));
  v3 = _MergedGlobals_42;
  **(a1 + 248) = _MergedGlobals_42;
  *(*(a1 + 264) + v3) = 0;
  return result;
}

uint64_t GA_vals(_WORD *a1)
{
  OUTLINED_FUNCTION_13_43(*MEMORY[0x277D85DE8], v123);
  OUTLINED_FUNCTION_11_44(v3, v4, v5, v6, v7, v8, v9, v10, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142, v144, v146, v148, v150, v152, v154, v156, v158, v160, v162, v164, v166, v168, v170, v172, v174, v176, v178);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_4_47(v11, v12, v13, v14, v15, v16, v17, v18, v125, v127, v129, v131, v133, v135, v137, v139, v141, v143, v145, v147, v149, v151, v153, v155, v157, v159, v161, v163, v165, v167, v169, *v171, v171[4], *v173, *&v173[4], v173[6], v175, SWORD2(v175), SBYTE6(v175), SHIBYTE(v175), v177, v179))
  {
    vretproc(a1);
    result = 94;
  }

  else
  {
    fence_49(a1);
    v21 = OUTLINED_FUNCTION_2_49();
    if (lpta_loadp_setscan_r(v21, v22) || (OUTLINED_FUNCTION_1_49(), test_string_s()))
    {
      v30 = OUTLINED_FUNCTION_2_49();
      if (lpta_loadp_setscan_r(v30, v31) || (OUTLINED_FUNCTION_1_49(), test_string_s()))
      {
        v32 = OUTLINED_FUNCTION_2_49();
        if (lpta_loadp_setscan_r(v32, v33) || (OUTLINED_FUNCTION_1_49(), test_string_s()))
        {
          v34 = OUTLINED_FUNCTION_2_49();
          if (lpta_loadp_setscan_r(v34, v35) || (OUTLINED_FUNCTION_1_49(), test_string_s()))
          {
            v43 = OUTLINED_FUNCTION_2_49();
            if (lpta_loadp_setscan_r(v43, v44) || (OUTLINED_FUNCTION_1_49(), test_string_s()))
            {
              v52 = OUTLINED_FUNCTION_2_49();
              if (lpta_loadp_setscan_r(v52, v53) || (OUTLINED_FUNCTION_1_49(), test_string_s()))
              {
                v54 = OUTLINED_FUNCTION_2_49();
                if (lpta_loadp_setscan_r(v54, v55) || (OUTLINED_FUNCTION_1_49(), test_string_s()))
                {
                  v56 = OUTLINED_FUNCTION_2_49();
                  if (lpta_loadp_setscan_r(v56, v57) || (OUTLINED_FUNCTION_1_49(), test_string_s()))
                  {
                    v58 = OUTLINED_FUNCTION_2_49();
                    if (lpta_loadp_setscan_r(v58, v59) || (OUTLINED_FUNCTION_1_49(), test_string_s()))
                    {
                      v67 = OUTLINED_FUNCTION_2_49();
                      if (lpta_loadp_setscan_r(v67, v68) || (OUTLINED_FUNCTION_1_49(), test_string_s()))
                      {
                        v69 = OUTLINED_FUNCTION_2_49();
                        if (lpta_loadp_setscan_r(v69, v70) || (OUTLINED_FUNCTION_1_49(), test_string_s()))
                        {
                          v71 = OUTLINED_FUNCTION_2_49();
                          if (lpta_loadp_setscan_r(v71, v72) || (OUTLINED_FUNCTION_1_49(), test_string_s()))
                          {
                            v73 = OUTLINED_FUNCTION_2_49();
                            if (lpta_loadp_setscan_r(v73, v74) || (OUTLINED_FUNCTION_1_49(), test_string_s()))
                            {
                              v75 = OUTLINED_FUNCTION_2_49();
                              if (lpta_loadp_setscan_r(v75, v76) || (OUTLINED_FUNCTION_1_49(), test_string_s()))
                              {
                                v77 = OUTLINED_FUNCTION_2_49();
                                if (lpta_loadp_setscan_r(v77, v78) || (OUTLINED_FUNCTION_1_49(), test_string_s()))
                                {
                                  v86 = OUTLINED_FUNCTION_2_49();
                                  if (lpta_loadp_setscan_r(v86, v87) || (OUTLINED_FUNCTION_1_49(), test_string_s()))
                                  {
                                    v95 = OUTLINED_FUNCTION_2_49();
                                    if (lpta_loadp_setscan_r(v95, v96) || (OUTLINED_FUNCTION_1_49(), test_string_s()))
                                    {
                                      v97 = OUTLINED_FUNCTION_2_49();
                                      if (lpta_loadp_setscan_r(v97, v98) || (OUTLINED_FUNCTION_1_49(), test_string_s()))
                                      {
                                        v99 = OUTLINED_FUNCTION_2_49();
                                        if (lpta_loadp_setscan_r(v99, v100) || (OUTLINED_FUNCTION_1_49(), test_string_s()))
                                        {
                                          v101 = OUTLINED_FUNCTION_2_49();
                                          if (!lpta_loadp_setscan_r(v101, v102))
                                          {
                                            OUTLINED_FUNCTION_1_49();
                                            if (!test_string_s())
                                            {
                                              ga_ph_m(a1);
                                            }
                                          }
                                        }

                                        else
                                        {
                                          ga_ph_U(a1);
                                        }
                                      }

                                      else
                                      {
                                        ga_ph_n(a1);
                                      }
                                    }

                                    else
                                    {
                                      ga_ph_w(a1);
                                    }
                                  }

                                  else
                                  {
                                    ga_ph_o(a1, v88, v89, v90, v91, v92, v93, v94);
                                  }
                                }

                                else
                                {
                                  ga_ph_u(a1, v79, v80, v81, v82, v83, v84, v85);
                                }
                              }

                              else
                              {
                                ga_ph_l();
                              }
                            }

                            else
                            {
                              ga_ph_r(a1);
                            }
                          }

                          else
                          {
                            ga_ph_H(a1);
                          }
                        }

                        else
                        {
                          ga_ph_A();
                        }
                      }

                      else
                      {
                        ga_ph_e();
                      }
                    }

                    else
                    {
                      ga_ph_c(a1, v60, v61, v62, v63, v64, v65, v66);
                    }
                  }

                  else
                  {
                    ga_ph_R(a1);
                  }
                }

                else
                {
                  ga_ph_y(a1);
                }
              }

              else
              {
                ga_ph_E();
              }
            }

            else
            {
              ga_ph_I(a1, v45, v46, v47, v48, v49, v50, v51);
            }
          }

          else
          {
            eng_ph_x(a1, v36, v37, v38, v39, v40, v41, v42);
          }
        }

        else
        {
          ga_ph_i();
        }
      }

      else
      {
        ga_ph_a(a1);
      }
    }

    else
    {
      ga_ph_X(a1, v23, v24, v25, v26, v27, v28, v29);
    }

    a1[2457] = 4;
    v103 = OUTLINED_FUNCTION_22_36();
    if (!if_testeq_v_i(v103, v104, v105, v106, v107, v108, v109, v110))
    {
      a1[2457] = 6;
      if (!if_testneq_v_i(a1, a1 + 2456, 100, v111, v112, v113, v114, v115))
      {
        adjust_eng_female_breathiness(a1, v116, v117, v118, v119, v120, v121, v122);
      }

      if (a1[2283] <= 299)
      {
        a1[2283] = 300;
      }
    }

    nasalize_vow(a1);
    insert_acoustic_vals(a1);
    vretproc(a1);
    result = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ga_ph_X(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v299 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_18_39(a1, a2, a3, a4, a5, a6, a7, a8, v246);
  OUTLINED_FUNCTION_19_39();
  bzero(v298, v9);
  v10 = setjmp(v298);
  if (v10 || OUTLINED_FUNCTION_25_34(v10, v11, v12, v13, v14, v15, v16, v17, v247, v249, v251, v253, v255, v257, v259, v261, v263, v265, v267, v269, v271, v273, v275, v277, v279, v281, v283, v285, v287, v289, v291, 0, 0, *v294, v294[4], *v295, *&v295[4], v295[6], v296, SWORD2(v296), SBYTE6(v296), SHIBYTE(v296), v297, v298[0]))
  {
LABEL_3:
    vretproc(a1);
    result = 94;
    goto LABEL_4;
  }

  v20 = OUTLINED_FUNCTION_27_33();
  push_ptr_init(v20, v21);
  fence_49(a1);
  OUTLINED_FUNCTION_20_37(400);
  OUTLINED_FUNCTION_28_32(1600);
  OUTLINED_FUNCTION_24_34(2550);
  if (*(a1 + 3592) >= 100.0)
  {
    v27 = 0;
  }

  else
  {
    v22 = OUTLINED_FUNCTION_10_44();
    starttest(v22, v23);
    v24 = OUTLINED_FUNCTION_17_40();
    if (!lpta_loadp_setscan_r(v24, v25))
    {
      OUTLINED_FUNCTION_16_42();
      bspush_ca_scan_boa();
      v28 = OUTLINED_FUNCTION_14_43();
      v30 = !testFldeq(v28, v29, 10, 1);
      goto LABEL_10;
    }

    v26 = 0;
LABEL_77:
    v147 = v26;
    v148 = OUTLINED_FUNCTION_16_42();
    starttest(v148, v149);
    v150 = OUTLINED_FUNCTION_3_48();
    v27 = v147;
    if (lpta_loadp_setscan_l(v150, v151))
    {
LABEL_86:
      v160 = OUTLINED_FUNCTION_12_43();
      starttest(v160, v161);
      v162 = OUTLINED_FUNCTION_3_48();
      if (!lpta_loadp_setscan_r(v162, v163))
      {
        v184 = OUTLINED_FUNCTION_16_42();
        bspush_ca_scan(v184, v185);
        v38 = v147;
LABEL_102:
        v30 = v38;
        OUTLINED_FUNCTION_16_42();
        bspush_ca_scan_boa();
        v186 = OUTLINED_FUNCTION_7_46();
        if (!testFldeq(v186, v187, v188, 51) && !advance_tok(a1))
        {
          v30 = 1;
        }

        goto LABEL_10;
      }

      v27 = v147;
    }

    else
    {
LABEL_78:
      OUTLINED_FUNCTION_26_34(24, v248, v250, v252, v254, v256, v258, v260, v262, v264, v266, v268, v270, v272, v274, v276, v278, v280, v282, v284, v286, v288, v290, v292, v293);
      if (advance_tok(a1))
      {
        goto LABEL_82;
      }

      v152 = OUTLINED_FUNCTION_16_42();
      bspush_ca_scan(v152, v153);
      v154 = OUTLINED_FUNCTION_7_46();
      v157 = testFldeq(v154, v155, v156, 26);
      v30 = v27;
      v36 = v27;
      if (v157)
      {
        goto LABEL_10;
      }

LABEL_80:
      v27 = v36;
      if (advance_tok(a1) || (v158 = OUTLINED_FUNCTION_15_42(), lpta_loadp_setscan_r(v158, v159)))
      {
LABEL_82:
        v30 = v27;
        goto LABEL_10;
      }

      v232 = OUTLINED_FUNCTION_16_42();
      bspush_ca_scan(v232, v233);
      v234 = OUTLINED_FUNCTION_7_46();
      v237 = testFldeq(v234, v235, v236, 26);
      v30 = v27;
      v37 = v27;
      if (v237)
      {
        goto LABEL_10;
      }

LABEL_143:
      v27 = v37;
      v30 = v37;
      if (advance_tok(a1))
      {
        goto LABEL_10;
      }
    }
  }

  while (2)
  {
    v30 = v27;
    OUTLINED_FUNCTION_32_29();
    if (v164 == v165 && *(a1 + 4786) >= 1)
    {
      v166 = OUTLINED_FUNCTION_2_49();
      if (!lpta_loadp_setscan_l(v166, v167))
      {
        OUTLINED_FUNCTION_1_49();
        if (!test_string_s())
        {
          v35 = 2350;
          v40 = 1300;
LABEL_116:
          *(a1 + 4778) = v40;
          *(a1 + 4786) = v35;
          goto LABEL_117;
        }
      }

LABEL_92:
      v168 = OUTLINED_FUNCTION_16_42();
      starttest(v168, v169);
      v170 = OUTLINED_FUNCTION_2_49();
      if (!lpta_loadp_setscan_l(v170, v171))
      {
        v189 = OUTLINED_FUNCTION_16_42();
        bspush_ca_scan(v189, v190);
        OUTLINED_FUNCTION_1_49();
        if (test_string_s())
        {
          goto LABEL_10;
        }

        v35 = 2450;
        v40 = 1800;
        goto LABEL_116;
      }

      v27 = v30;
LABEL_94:
      v172 = OUTLINED_FUNCTION_16_42();
      starttest(v172, v173);
      v174 = OUTLINED_FUNCTION_2_49();
      if (!lpta_loadp_setscan_l(v174, v175))
      {
        v191 = OUTLINED_FUNCTION_16_42();
        bspush_ca_scan(v191, v192);
        v193 = OUTLINED_FUNCTION_0_50();
        v197 = testFldeq(v193, v194, v195, v196);
        v30 = v27;
        v39 = v27;
        if (v197)
        {
          goto LABEL_10;
        }

LABEL_108:
        v30 = v39;
        if (advance_tok(a1))
        {
          goto LABEL_10;
        }

        v35 = 2450;
        goto LABEL_115;
      }

LABEL_95:
      v30 = v27;
      v176 = OUTLINED_FUNCTION_2_49();
      if (!lpta_loadp_setscan_l(v176, v177))
      {
        OUTLINED_FUNCTION_1_49();
        if (!test_string_s())
        {
          v35 = 2750;
          goto LABEL_115;
        }
      }

LABEL_97:
      v178 = OUTLINED_FUNCTION_16_42();
      starttest(v178, v179);
      v180 = OUTLINED_FUNCTION_2_49();
      if (!lpta_loadp_setscan_l(v180, v181))
      {
        v198 = OUTLINED_FUNCTION_5_47();
        if (testFldeq(v198, v199, v200, 3) || advance_tok(a1))
        {
          goto LABEL_10;
        }

        v35 = 2450;
        v40 = 1700;
        goto LABEL_116;
      }

LABEL_98:
      v182 = OUTLINED_FUNCTION_2_49();
      if (!lpta_loadp_setscan_l(v182, v183))
      {
        OUTLINED_FUNCTION_1_49();
        if (!test_string_s())
        {
          v35 = 2050;
LABEL_115:
          v40 = 1400;
          goto LABEL_116;
        }
      }
    }

LABEL_117:
    if (*(a1 + 4782) < 1 || *(a1 + 4790) < 1)
    {
      goto LABEL_150;
    }

    v201 = OUTLINED_FUNCTION_3_48();
    if (!lpta_loadp_setscan_r(v201, v202))
    {
      OUTLINED_FUNCTION_1_49();
      if (!test_string_s())
      {
        v221 = 2350;
        goto LABEL_148;
      }
    }

LABEL_121:
    v203 = OUTLINED_FUNCTION_3_48();
    if (lpta_loadp_setscan_r(v203, v204))
    {
      v27 = v30;
    }

    else
    {
      OUTLINED_FUNCTION_1_49();
      v27 = v30;
      if (!test_string_s())
      {
        v221 = 2450;
        v222 = 1800;
        goto LABEL_149;
      }
    }

LABEL_124:
    v205 = OUTLINED_FUNCTION_16_42();
    starttest(v205, v206);
    v207 = OUTLINED_FUNCTION_3_48();
    if (!lpta_loadp_setscan_r(v207, v208))
    {
      v223 = OUTLINED_FUNCTION_16_42();
      bspush_ca_scan(v223, v224);
      v225 = OUTLINED_FUNCTION_0_50();
      v229 = testFldeq(v225, v226, v227, v228);
      v30 = v27;
      v41 = v27;
      if (v229)
      {
        goto LABEL_10;
      }

LABEL_133:
      v30 = v41;
      if (!advance_tok(a1))
      {
        v221 = 2450;
LABEL_148:
        v222 = 1400;
        goto LABEL_149;
      }

LABEL_10:
      v31 = v30;
LABEL_11:
      v32 = *(a1 + 104);
      if (v32)
      {
        v33 = OUTLINED_FUNCTION_23_36(v32);
        v27 = v34;
      }

      else
      {
        v33 = vback(a1, v31);
        v27 = 0;
      }

      v35 = 2450;
      v26 = v27;
      v36 = v27;
      v37 = v27;
      v38 = v27;
      v39 = v27;
      v40 = 1800;
      v30 = v27;
      v41 = v27;
      v42 = v27;
      switch(v33)
      {
        case 1:
          continue;
        case 2:
          goto LABEL_77;
        case 3:
          bspop_boa(a1);
          v43 = advance_tok(a1);
          v31 = v27;
          if (v43)
          {
            goto LABEL_11;
          }

          v44 = OUTLINED_FUNCTION_16_42();
          starttest(v44, v45);
          v46 = OUTLINED_FUNCTION_2_49();
          if (lpta_loadp_setscan_l(v46, v47))
          {
            goto LABEL_17;
          }

          goto LABEL_20;
        case 4:
LABEL_17:
          v48 = OUTLINED_FUNCTION_10_44();
          starttest(v48, v49);
          if (!lpta_loadp_setscan_l(a1, a1 + 1592))
          {
            goto LABEL_18;
          }

          goto LABEL_76;
        case 5:
LABEL_20:
          OUTLINED_FUNCTION_26_34(5, v248, v250, v252, v254, v256, v258, v260, v262, v264, v266, v268, v270, v272, v274, v276, v278, v280, v282, v284, v286, v288, v290, v292, v293);
          v53 = OUTLINED_FUNCTION_16_42();
          bspush_ca_scan(v53, v54);
          v55 = OUTLINED_FUNCTION_7_46();
          v58 = 26;
          goto LABEL_46;
        case 6:
          v107 = OUTLINED_FUNCTION_16_42();
          bspush_ca_scan(v107, v108);
          v55 = OUTLINED_FUNCTION_7_46();
          v58 = 24;
          goto LABEL_46;
        case 7:
          goto LABEL_47;
        case 8:
          v93 = OUTLINED_FUNCTION_16_42();
          bspush_ca_scan(v93, v94);
          v55 = OUTLINED_FUNCTION_7_46();
          v58 = 43;
          goto LABEL_46;
        case 9:
          v95 = OUTLINED_FUNCTION_16_42();
          bspush_ca_scan(v95, v96);
          v55 = OUTLINED_FUNCTION_7_46();
          v58 = 35;
          goto LABEL_46;
        case 10:
          v97 = OUTLINED_FUNCTION_16_42();
          bspush_ca_scan(v97, v98);
          v55 = OUTLINED_FUNCTION_0_50();
          goto LABEL_46;
        case 11:
          v55 = OUTLINED_FUNCTION_9_45();
LABEL_46:
          v113 = testFldeq(v55, v56, v57, v58);
          v31 = v27;
          if (v113)
          {
            goto LABEL_11;
          }

LABEL_47:
          v114 = advance_tok(a1);
          v31 = v27;
          if (v114)
          {
            goto LABEL_11;
          }

          v115 = OUTLINED_FUNCTION_15_42();
          v117 = lpta_loadp_setscan_r(v115, v116);
          v31 = v27;
          if (v117)
          {
            goto LABEL_11;
          }

          v118 = advance_tok(a1);
          v31 = v27;
          if (v118)
          {
            goto LABEL_11;
          }

          v119 = OUTLINED_FUNCTION_16_42();
          bspush_ca_scan(v119, v120);
          v76 = OUTLINED_FUNCTION_7_46();
          v79 = 26;
LABEL_61:
          v136 = testFldeq(v76, v77, v78, v79);
          v31 = v27;
          if (v136)
          {
            goto LABEL_11;
          }

LABEL_62:
          v137 = advance_tok(a1);
          v26 = v27;
          v31 = v27;
          if (!v137)
          {
            goto LABEL_77;
          }

          goto LABEL_11;
        case 12:
          v105 = OUTLINED_FUNCTION_16_42();
          bspush_ca_scan(v105, v106);
          v76 = OUTLINED_FUNCTION_7_46();
          v79 = 24;
          goto LABEL_61;
        case 13:
          goto LABEL_62;
        case 14:
          v134 = OUTLINED_FUNCTION_16_42();
          bspush_ca_scan(v134, v135);
          v76 = OUTLINED_FUNCTION_0_50();
          goto LABEL_61;
        case 15:
          v76 = OUTLINED_FUNCTION_9_45();
          goto LABEL_61;
        case 16:
LABEL_18:
          OUTLINED_FUNCTION_26_34(16, v248, v250, v252, v254, v256, v258, v260, v262, v264, v266, v268, v270, v272, v274, v276, v278, v280, v282, v284, v286, v288, v290, v292, v293);
          v50 = advance_tok(a1);
          v31 = v27;
          if (v50)
          {
            goto LABEL_11;
          }

          v51 = OUTLINED_FUNCTION_16_42();
          bspush_ca_scan(v51, v52);
          goto LABEL_55;
        case 17:
          v125 = OUTLINED_FUNCTION_16_42();
          bspush_ca_scan(v125, v126);
          v121 = OUTLINED_FUNCTION_7_46();
          v124 = 35;
          goto LABEL_53;
        case 18:
          goto LABEL_55;
        case 19:
          v121 = OUTLINED_FUNCTION_7_46();
          v124 = 32;
LABEL_53:
          v127 = testFldeq(v121, v122, v123, v124);
          v31 = v27;
          if (!v127)
          {
            goto LABEL_54;
          }

          goto LABEL_11;
        case 20:
LABEL_54:
          v128 = advance_tok(a1);
          v31 = v27;
          if (v128)
          {
            goto LABEL_11;
          }

LABEL_55:
          OUTLINED_FUNCTION_16_42();
          bspush_ca_scan_boa();
          v129 = OUTLINED_FUNCTION_7_46();
          v92 = testFldeq(v129, v130, v131, 51);
LABEL_56:
          v31 = !v92 || v27;
          goto LABEL_11;
        case 21:
          bspop_boa(a1);
          v84 = advance_tok(a1);
          v31 = v27;
          if (v84)
          {
            goto LABEL_11;
          }

          v85 = OUTLINED_FUNCTION_15_42();
          v87 = lpta_loadp_setscan_r(v85, v86);
          v31 = v27;
          if (v87)
          {
            goto LABEL_11;
          }

          OUTLINED_FUNCTION_16_42();
          bspush_ca_scan_boa();
          v88 = OUTLINED_FUNCTION_7_46();
          v91 = testFldeq(v88, v89, v90, 51);
          v31 = v27;
          if (v91)
          {
            goto LABEL_11;
          }

          v92 = advance_tok(a1);
          goto LABEL_56;
        case 22:
          bspop_boa(a1);
          *(a1 + 4778) = -2;
          *(a1 + 4786) = -2;
LABEL_76:
          v26 = v27;
          goto LABEL_77;
        case 23:
          v147 = v27;
          goto LABEL_86;
        case 24:
          goto LABEL_78;
        case 25:
          v70 = OUTLINED_FUNCTION_16_42();
          bspush_ca_scan(v70, v71);
          v72 = OUTLINED_FUNCTION_7_46();
          v75 = 24;
          goto LABEL_66;
        case 26:
          goto LABEL_80;
        case 27:
          v138 = OUTLINED_FUNCTION_16_42();
          bspush_ca_scan(v138, v139);
          v72 = OUTLINED_FUNCTION_0_50();
          goto LABEL_66;
        case 28:
          v72 = OUTLINED_FUNCTION_9_45();
LABEL_66:
          v140 = testFldeq(v72, v73, v74, v75);
          v36 = v27;
          v31 = v27;
          if (!v140)
          {
            goto LABEL_80;
          }

          goto LABEL_11;
        case 29:
          v141 = OUTLINED_FUNCTION_16_42();
          bspush_ca_scan(v141, v142);
          v109 = OUTLINED_FUNCTION_7_46();
          v112 = 24;
          goto LABEL_69;
        case 30:
          goto LABEL_143;
        case 31:
          v132 = OUTLINED_FUNCTION_16_42();
          bspush_ca_scan(v132, v133);
          v109 = OUTLINED_FUNCTION_0_50();
          goto LABEL_69;
        case 32:
          v109 = OUTLINED_FUNCTION_9_45();
LABEL_69:
          v143 = testFldeq(v109, v110, v111, v112);
          v37 = v27;
          v31 = v27;
          if (!v143)
          {
            goto LABEL_143;
          }

          goto LABEL_11;
        case 33:
          v64 = OUTLINED_FUNCTION_21_36();
          bspush_ca_scan(v64, v65);
          v66 = OUTLINED_FUNCTION_7_46();
          v69 = 35;
          goto LABEL_28;
        case 34:
          goto LABEL_102;
        case 35:
          v66 = OUTLINED_FUNCTION_7_46();
          v69 = 32;
LABEL_28:
          v82 = testFldeq(v66, v67, v68, v69);
          v31 = v27;
          if (!v82)
          {
            goto LABEL_29;
          }

          goto LABEL_11;
        case 36:
LABEL_29:
          v83 = advance_tok(a1);
          v38 = v27;
          v31 = v27;
          if (!v83)
          {
            goto LABEL_102;
          }

          goto LABEL_11;
        case 37:
          bspop_boa(a1);
          *(a1 + 4782) = -2;
          *(a1 + 4790) = -2;
          continue;
        case 38:
          v30 = v27;
          goto LABEL_117;
        case 39:
          v30 = v27;
          goto LABEL_92;
        case 40:
          goto LABEL_94;
        case 41:
          v144 = OUTLINED_FUNCTION_16_42();
          bspush_ca_scan(v144, v145);
          goto LABEL_72;
        case 42:
          goto LABEL_116;
        case 43:
LABEL_72:
          OUTLINED_FUNCTION_1_49();
          v146 = test_string_s();
          v31 = v27;
          if (v146)
          {
            goto LABEL_11;
          }

          v35 = 2450;
          v40 = 1800;
          v30 = v27;
          goto LABEL_116;
        case 44:
          goto LABEL_95;
        case 45:
          v100 = OUTLINED_FUNCTION_9_45();
          v104 = testFldeq(v100, v101, v102, v103);
          v39 = v27;
          v31 = v27;
          if (!v104)
          {
            goto LABEL_108;
          }

          goto LABEL_11;
        case 46:
          goto LABEL_108;
        case 47:
          v30 = v27;
          goto LABEL_97;
        case 48:
          v30 = v27;
          goto LABEL_98;
        case 49:
          goto LABEL_150;
        case 50:
          v30 = v27;
          goto LABEL_121;
        case 51:
          goto LABEL_124;
        case 52:
          goto LABEL_125;
        case 53:
          v59 = OUTLINED_FUNCTION_9_45();
          v63 = testFldeq(v59, v60, v61, v62);
          v41 = v27;
          v31 = v27;
          if (!v63)
          {
            goto LABEL_133;
          }

          goto LABEL_11;
        case 54:
          goto LABEL_133;
        case 55:
          v209 = v27;
          goto LABEL_127;
        case 56:
          goto LABEL_135;
        case 57:
          v80 = OUTLINED_FUNCTION_16_42();
          bspush_ca_scan(v80, v81);
          goto LABEL_38;
        case 58:
          goto LABEL_129;
        case 59:
LABEL_38:
          OUTLINED_FUNCTION_1_49();
          v99 = test_string_s();
          v42 = v27;
          v31 = v27;
          if (!v99)
          {
            goto LABEL_129;
          }

          goto LABEL_11;
        case 60:
          goto LABEL_152;
        case 61:
          goto LABEL_161;
        case 62:
          goto LABEL_155;
        case 63:
          goto LABEL_158;
        default:
          goto LABEL_3;
      }
    }

    break;
  }

LABEL_125:
  v209 = v27;
  v210 = OUTLINED_FUNCTION_3_48();
  if (!lpta_loadp_setscan_r(v210, v211))
  {
    OUTLINED_FUNCTION_1_49();
    if (!test_string_s())
    {
      v221 = 2750;
      goto LABEL_148;
    }
  }

LABEL_127:
  v212 = OUTLINED_FUNCTION_16_42();
  starttest(v212, v213);
  v214 = OUTLINED_FUNCTION_3_48();
  if (lpta_loadp_setscan_r(v214, v215))
  {
LABEL_135:
    v230 = OUTLINED_FUNCTION_3_48();
    if (lpta_loadp_setscan_r(v230, v231))
    {
      goto LABEL_150;
    }

    OUTLINED_FUNCTION_1_49();
    if (test_string_s())
    {
      goto LABEL_150;
    }

    v221 = 2050;
    goto LABEL_148;
  }

  v216 = OUTLINED_FUNCTION_16_42();
  bspush_ca_scan(v216, v217);
  v42 = v209;
LABEL_129:
  v30 = v42;
  v218 = OUTLINED_FUNCTION_5_47();
  if (testFldeq(v218, v219, v220, 3) || advance_tok(a1))
  {
    goto LABEL_10;
  }

  v221 = 2450;
  v222 = 1700;
LABEL_149:
  *(a1 + 4782) = v222;
  *(a1 + 4790) = v221;
LABEL_150:
  v238 = OUTLINED_FUNCTION_3_48();
  if (lpta_loadp_setscan_r(v238, v239) || (OUTLINED_FUNCTION_1_49(), test_string_s()))
  {
LABEL_152:
    v240 = *(a1 + 4770);
    if (v240 >= 1 && *(a1 + 4774) >= 1)
    {
      OUTLINED_FUNCTION_29_31(v240);
      OUTLINED_FUNCTION_20_37(v241);
    }

LABEL_155:
    OUTLINED_FUNCTION_32_29();
    if (v164 == v165 && *(a1 + 4782) >= 1)
    {
      OUTLINED_FUNCTION_29_31(v242);
      OUTLINED_FUNCTION_28_32(v243);
    }

LABEL_158:
    v244 = *(a1 + 4786);
    if (v244 >= 1 && *(a1 + 4790) >= 1)
    {
      OUTLINED_FUNCTION_29_31(v244);
      OUTLINED_FUNCTION_24_34(v245);
    }
  }

LABEL_161:
  vretproc(a1);
  result = 0;
LABEL_4:
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ga_ph_a(uint64_t a1)
{
  OUTLINED_FUNCTION_13_43(*MEMORY[0x277D85DE8], v90);
  OUTLINED_FUNCTION_11_44(v3, v4, v5, v6, v7, v8, v9, v10, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, v141, v143, v145);
  v11 = setjmp(v1);
  if (!v11 && !OUTLINED_FUNCTION_4_47(v11, v12, v13, v14, v15, v16, v17, v18, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, *v138, v138[4], *v140, *&v140[4], v140[6], v142, SWORD2(v142), SBYTE6(v142), SHIBYTE(v142), v144, v146))
  {
    fence_49(a1);
    v21 = OUTLINED_FUNCTION_12_43();
    starttest(v21, v22);
    v23 = OUTLINED_FUNCTION_3_48();
    if (!lpta_loadp_setscan_r(v23, v24))
    {
      OUTLINED_FUNCTION_16_42();
      bspush_ca_scan_boa();
      v33 = 0;
LABEL_12:
      v34 = OUTLINED_FUNCTION_16_42();
      if (test_synch(v34, v35, 1u, v36))
      {
        v25 = v33;
      }

      else
      {
        v25 = 1;
      }

      goto LABEL_52;
    }

    v25 = 0;
    while (2)
    {
      OUTLINED_FUNCTION_20_37(750);
      OUTLINED_FUNCTION_28_32(1200);
      OUTLINED_FUNCTION_24_34(2440);
      v26 = OUTLINED_FUNCTION_16_42();
      starttest(v26, v27);
      v28 = OUTLINED_FUNCTION_2_49();
      if (!lpta_loadp_setscan_l(v28, v29))
      {
        OUTLINED_FUNCTION_16_42();
        bspush_ca_scan_boa();
LABEL_9:
        v30 = OUTLINED_FUNCTION_16_42();
        if (!test_synch(v30, v31, 1u, v32))
        {
          v25 = 1;
        }

LABEL_52:
        v41 = v25;
LABEL_15:
        v37 = *(a1 + 104);
        if (v37)
        {
          v38 = OUTLINED_FUNCTION_23_36(v37);
          v33 = v39;
        }

        else
        {
          v38 = vback(a1, v41);
          v33 = 0;
        }

        switch(v38)
        {
          case 1:
            v25 = v33;
            continue;
          case 2:
            bspop_boa(a1);
            OUTLINED_FUNCTION_1_49();
            v40 = test_string_s();
            v41 = v33;
            if (v40)
            {
              goto LABEL_15;
            }

            ga_ph_A();
            goto LABEL_58;
          case 3:
            goto LABEL_12;
          case 4:
LABEL_58:
            v82 = *(a1 + 4774);
            if (v82 >= 701)
            {
              *(a1 + 4774) = v82 - 50;
            }

            goto LABEL_60;
          case 5:
LABEL_60:
            OUTLINED_FUNCTION_32_29();
            if (v84 == v85)
            {
              *(a1 + 4778) = v83 - 250;
            }

            goto LABEL_62;
          case 6:
LABEL_62:
            v86 = *(a1 + 4782);
            if (v86 >= 1)
            {
              *(a1 + 4782) = v86 - 250;
            }

            goto LABEL_3;
          case 8:
            v25 = v33;
            goto LABEL_28;
          case 9:
            bspop_boa(a1);
            OUTLINED_FUNCTION_1_49();
            v42 = test_string_s();
            v41 = v33;
            if (v42)
            {
              goto LABEL_15;
            }

            v43 = 2310;
            v44 = 1030;
            v45 = 680;
            v25 = v33;
            goto LABEL_32;
          case 10:
            v25 = v33;
            goto LABEL_9;
          case 11:
            v25 = v33;
            goto LABEL_37;
          case 12:
            v25 = v33;
            goto LABEL_29;
          case 13:
            v25 = v33;
            goto LABEL_39;
          case 14:
            goto LABEL_73;
          case 15:
            v25 = v33;
            goto LABEL_41;
          case 16:
            v25 = v33;
            goto LABEL_43;
          case 17:
            v25 = v33;
            goto LABEL_45;
          case 18:
            goto LABEL_66;
          case 19:
            v25 = v33;
            goto LABEL_46;
          default:
            goto LABEL_3;
        }
      }

      break;
    }

LABEL_28:
    v46 = OUTLINED_FUNCTION_16_42();
    starttest(v46, v47);
    v48 = OUTLINED_FUNCTION_2_49();
    if (lpta_loadp_setscan_l(v48, v49))
    {
LABEL_29:
      v50 = OUTLINED_FUNCTION_2_49();
      if (lpta_loadp_setscan_l(v50, v51) || (OUTLINED_FUNCTION_1_49(), test_string_s()))
      {
LABEL_37:
        v57 = OUTLINED_FUNCTION_3_48();
        if (lpta_loadp_setscan_r(v57, v58) || (OUTLINED_FUNCTION_1_49(), test_string_s()))
        {
LABEL_39:
          v59 = OUTLINED_FUNCTION_3_48();
          if (!lpta_loadp_setscan_r(v59, v60))
          {
            OUTLINED_FUNCTION_1_49();
            if (!test_string_s())
            {
              v76 = 1350;
              v77 = 4782;
              goto LABEL_72;
            }
          }

LABEL_41:
          v61 = OUTLINED_FUNCTION_3_48();
          if (lpta_loadp_setscan_r(v61, v62) || (OUTLINED_FUNCTION_1_49(), test_string_s()))
          {
LABEL_43:
            v63 = OUTLINED_FUNCTION_3_48();
            if (lpta_loadp_setscan_r(v63, v64) || (OUTLINED_FUNCTION_1_49(), test_string_s()))
            {
LABEL_45:
              v65 = OUTLINED_FUNCTION_16_42();
              starttest(v65, v66);
              v67 = OUTLINED_FUNCTION_3_48();
              if (lpta_loadp_setscan_r(v67, v68))
              {
LABEL_46:
                v69 = OUTLINED_FUNCTION_16_42();
                starttest(v69, v70);
                v71 = OUTLINED_FUNCTION_3_48();
                if (lpta_loadp_setscan_r(v71, v72))
                {
LABEL_73:
                  vretproc(a1);
                  result = 0;
                  goto LABEL_4;
                }

                v73 = OUTLINED_FUNCTION_5_47();
                if (testFldeq(v73, v74, v75, 4) || advance_tok(a1))
                {
                  goto LABEL_52;
                }

                v76 = 2240;
                v77 = 4790;
LABEL_72:
                *(a1 + v77) = v76;
                goto LABEL_73;
              }

              v78 = OUTLINED_FUNCTION_0_50();
              if (testFldeq(v78, v79, v80, v81) || advance_tok(a1))
              {
                goto LABEL_52;
              }

              v88 = 2340;
              v89 = 1150;
            }

            else
            {
              OUTLINED_FUNCTION_20_37(700);
              v87 = *(a1 + 4778);
              if (v87 >= 1001)
              {
                *(a1 + 4778) = v87 - 100;
              }

LABEL_66:
              v88 = -2;
              v89 = 1100;
            }

LABEL_71:
            *(a1 + 4782) = v89;
            v77 = 4790;
            v76 = v88;
            goto LABEL_72;
          }

          v88 = 2640;
        }

        else
        {
          v88 = 2310;
        }

        v89 = 1070;
        goto LABEL_71;
      }

      v43 = 2540;
      v44 = 1000;
      v45 = 670;
LABEL_32:
      *(a1 + 4770) = v45;
      *(a1 + 4778) = v44;
      v52 = 4786;
      v53 = v43;
    }

    else
    {
      v54 = OUTLINED_FUNCTION_5_47();
      if (testFldeq(v54, v55, v56, 2) || advance_tok(a1))
      {
        goto LABEL_52;
      }

      v53 = 1250;
      v52 = 4778;
    }

    *(a1 + v52) = v53;
    goto LABEL_37;
  }

LABEL_3:
  vretproc(a1);
  result = 94;
LABEL_4:
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

void ga_ph_i()
{
  OUTLINED_FUNCTION_39_23();
  v1 = v0;
  v69 = *MEMORY[0x277D85DE8];
  v64[0] = 0;
  v64[1] = 0;
  bzero(v63, 0xB8uLL);
  OUTLINED_FUNCTION_19_39();
  bzero(v68, v2);
  if (setjmp(v68) || ventproc(v1, v63, v67, v66, v65, v68))
  {
    goto LABEL_3;
  }

  push_ptr_init(v1, v64);
  fence_49(v1);
  OUTLINED_FUNCTION_20_37(270);
  OUTLINED_FUNCTION_28_32(2190);
  OUTLINED_FUNCTION_24_34(2800);
  v4 = OUTLINED_FUNCTION_2_49();
  if (lpta_loadp_setscan_l(v4, v5) || (OUTLINED_FUNCTION_1_49(), test_string_s()))
  {
    v6 = 0;
LABEL_7:
    v7 = OUTLINED_FUNCTION_10_44();
    starttest(v7, v8);
    v9 = OUTLINED_FUNCTION_17_40();
    v11 = v6;
    if (!lpta_loadp_setscan_l(v9, v10))
    {
LABEL_8:
      savescptr(v1, 3, v64);
      OUTLINED_FUNCTION_1_49();
      if (test_string_s() || (v12 = OUTLINED_FUNCTION_15_42(), lpta_loadp_setscan_r(v12, v13)) || advance_tok(v1))
      {
        v11 = v6;
      }

      else
      {
        OUTLINED_FUNCTION_16_42();
        bspush_ca_scan_boa();
        v14 = OUTLINED_FUNCTION_5_47();
        if (testFldeq(v14, v15, v16, 3))
        {
          v11 = v6;
        }

        else
        {
          v11 = 1;
        }
      }

      goto LABEL_65;
    }
  }

  else
  {
    *(v1 + 4778) = 2070;
    *(v1 + 4786) = 2700;
    v11 = 0;
  }

LABEL_52:
  v34 = OUTLINED_FUNCTION_16_42();
  starttest(v34, v35);
  v36 = OUTLINED_FUNCTION_3_48();
  if (lpta_loadp_setscan_r(v36, v37))
  {
LABEL_53:
    v38 = OUTLINED_FUNCTION_16_42();
    starttest(v38, v39);
    v40 = OUTLINED_FUNCTION_3_48();
    if (lpta_loadp_setscan_r(v40, v41))
    {
LABEL_54:
      v42 = OUTLINED_FUNCTION_16_42();
      starttest(v42, v43);
      v44 = OUTLINED_FUNCTION_3_48();
      if (lpta_loadp_setscan_l(v44, v45))
      {
        goto LABEL_3;
      }

LABEL_55:
      savescptr(v1, 15, v64);
      v46 = OUTLINED_FUNCTION_14_43();
      if (npush_fld(v46, v47, 7))
      {
        goto LABEL_65;
      }

      v48 = OUTLINED_FUNCTION_37_24();
      npush_i(v48);
      if (if_testeq(v1, v49, v50, v51, v52, v53, v54, v55) || advance_tok(v1))
      {
        goto LABEL_65;
      }

      OUTLINED_FUNCTION_16_42();
      bspush_ca_scan_boa();
      v56 = OUTLINED_FUNCTION_1_49();
      v59 = testFldeq(v56, v57, v58, 1);
      goto LABEL_63;
    }

    OUTLINED_FUNCTION_16_42();
    bspush_ca_scan_boa();
  }

  else
  {
    OUTLINED_FUNCTION_16_42();
    bspush_ca_scan_boa();
  }

LABEL_62:
  v60 = OUTLINED_FUNCTION_16_42();
  v59 = test_synch(v60, v61, 1u, v62);
LABEL_63:
  if (!v59)
  {
    v11 = 1;
  }

LABEL_65:
  v21 = v11;
  while (2)
  {
    v17 = *(v1 + 104);
    if (v17)
    {
      v18 = OUTLINED_FUNCTION_23_36(v17);
      v6 = v19;
    }

    else
    {
      v18 = vback(v1, v21);
      v6 = 0;
    }

    switch(v18)
    {
      case 1:
        goto LABEL_7;
      case 2:
        goto LABEL_51;
      case 3:
        goto LABEL_8;
      case 4:
        bspop_boa(v1);
        OUTLINED_FUNCTION_21_36();
        goto LABEL_24;
      case 5:
        bspop_boa(v1);
        bspush_ca_scan_boa();
        v22 = OUTLINED_FUNCTION_14_43();
        v24 = 5;
        v25 = 2;
        goto LABEL_32;
      case 6:
        bspop_boa(v1);
        OUTLINED_FUNCTION_35_27();
        bspush_ca_scan_boa();
        v22 = OUTLINED_FUNCTION_6_46();
        v24 = 6;
        goto LABEL_32;
      case 7:
        bspop_boa(v1);
        v20 = advance_tok(v1);
        v21 = v6;
        if (v20)
        {
          continue;
        }

        *(v1 + 4778) = 2070;
        *(v1 + 4782) -= 120;
        *(v1 + 4786) = 2600;
        *(v1 + 4790) -= 100;
LABEL_51:
        v11 = v6;
        goto LABEL_52;
      case 8:
        v11 = v6;
        goto LABEL_53;
      case 9:
        bspop_boa(v1);
        OUTLINED_FUNCTION_1_49();
        v29 = test_string_s();
        v21 = v6;
        if (v29)
        {
          continue;
        }

        *(v1 + 4778) -= 200;
        *(v1 + 4782) = 1740;
        *(v1 + 4790) = 2600;
        goto LABEL_50;
      case 10:
        v11 = v6;
        goto LABEL_62;
      case 11:
        goto LABEL_50;
      case 12:
        bspop_boa(v1);
        OUTLINED_FUNCTION_1_49();
        v30 = test_string_s();
        v21 = v6;
        if (v30)
        {
          continue;
        }

        OUTLINED_FUNCTION_31_31();
        *(v1 + 4782) = 2090;
LABEL_50:
        v11 = v6;
        goto LABEL_54;
      case 13:
        v11 = v6;
        goto LABEL_62;
      case 15:
        v11 = v6;
        goto LABEL_55;
      case 16:
        bspop_boa(v1);
LABEL_24:
        bspush_ca_scan_boa();
        v22 = OUTLINED_FUNCTION_14_43();
        v24 = 5;
        v25 = 4;
        goto LABEL_32;
      case 17:
        bspop_boa(v1);
        bspush_ca_scan_boa();
        v22 = OUTLINED_FUNCTION_14_43();
        v24 = 4;
        v25 = 5;
LABEL_32:
        if (testFldeq(v22, v23, v24, v25))
        {
          v21 = v6;
        }

        else
        {
          v21 = 1;
        }

        continue;
      case 18:
        bspop_boa(v1);
        v26 = advance_tok(v1);
        v21 = v6;
        if (v26)
        {
          continue;
        }

        v27 = lpta_loadp_setscan_r(v1, v64);
        v21 = v6;
        if (v27)
        {
          continue;
        }

        goto LABEL_28;
      case 19:
LABEL_28:
        v28 = test_synch(v1, 19, 1u, &unk_28058168C);
        v21 = v6;
        if (v28)
        {
          continue;
        }

        v31 = *(v1 + 4778);
        v32 = *(v1 + 4778);
        if (v31 < 1901)
        {
LABEL_45:
          if (v32 < 1801)
          {
            goto LABEL_3;
          }

          v33 = v32 - 200;
        }

        else
        {
          v33 = v31 - 300;
        }

        *(v1 + 4778) = v33;
        break;
      case 20:
        v32 = *(v1 + 4778);
        goto LABEL_45;
      default:
        goto LABEL_3;
    }

    break;
  }

LABEL_3:
  vretproc(v1);
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_38_23();
}

uint64_t ga_ph_I(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v137 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_18_39(a1, a2, a3, a4, a5, a6, a7, a8, v80);
  OUTLINED_FUNCTION_11_44(v10, v11, v12, v13, v14, v15, v16, v17, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135);
  v18 = setjmp(v8);
  if (v18 || OUTLINED_FUNCTION_4_47(v18, v19, v20, v21, v22, v23, v24, v25, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, *v128, v128[4], *v130, *&v130[4], v130[6], v132, SWORD2(v132), SBYTE6(v132), SHIBYTE(v132), v134, v136))
  {
LABEL_3:
    v26 = 94;
  }

  else
  {
    fence_49(a1);
    *(a1 + 4770) = 380;
    *(a1 + 4774) = 440;
    *(a1 + 4778) = 1800;
    *(a1 + 4782) = 1650;
    OUTLINED_FUNCTION_24_34(2480);
    v30 = OUTLINED_FUNCTION_12_43();
    starttest(v30, v31);
    v32 = OUTLINED_FUNCTION_2_49();
    if (lpta_loadp_setscan_r(v32, v33))
    {
      v34 = 0;
LABEL_33:
      v74 = OUTLINED_FUNCTION_16_42();
      starttest(v74, v75);
      v76 = OUTLINED_FUNCTION_3_48();
      if (lpta_loadp_setscan_r(v76, v77))
      {
LABEL_38:
        v26 = 0;
        goto LABEL_4;
      }

      OUTLINED_FUNCTION_16_42();
      bspush_ca_scan_boa();
      v78 = OUTLINED_FUNCTION_14_43();
      v35 = !testFldeq(v78, v79, 10, 1) || v34;
    }

    else
    {
      OUTLINED_FUNCTION_10_44();
      bspush_ca_scan_boa();
      v35 = !OUTLINED_FUNCTION_30_31();
    }

    v42 = v35;
    while (2)
    {
      v36 = *(a1 + 104);
      if (v36)
      {
        v37 = OUTLINED_FUNCTION_23_36(v36);
        v39 = v38;
      }

      else
      {
        v37 = vback(a1, v42);
        v39 = 0;
      }

      v40 = v37 - 1;
      v26 = 0;
      switch(v40)
      {
        case 0:
          goto LABEL_32;
        case 1:
          bspop_boa(a1);
          v41 = advance_tok(a1);
          v42 = v39;
          if (v41)
          {
            continue;
          }

          v62 = OUTLINED_FUNCTION_2_49();
          if (lpta_loadp_setscan_l(v62, v63))
          {
            goto LABEL_27;
          }

          OUTLINED_FUNCTION_1_49();
          v65 = test_string_s();
          v66 = 2280;
          v67 = 1650;
          if (v65)
          {
            goto LABEL_27;
          }

          goto LABEL_31;
        case 2:
LABEL_27:
          v68 = OUTLINED_FUNCTION_2_49();
          if (lpta_loadp_setscan_l(v68, v69))
          {
            goto LABEL_29;
          }

          OUTLINED_FUNCTION_1_49();
          v70 = test_string_s();
          v66 = 2680;
          v67 = 1650;
          if (v70)
          {
            goto LABEL_29;
          }

          goto LABEL_31;
        case 3:
LABEL_29:
          v71 = OUTLINED_FUNCTION_2_49();
          if (!lpta_loadp_setscan_l(v71, v72))
          {
            OUTLINED_FUNCTION_1_49();
            v73 = test_string_s();
            v66 = 2080;
            v67 = 1700;
            if (!v73)
            {
LABEL_31:
              *(a1 + 4778) = v67;
              *(a1 + 4786) = v66;
            }
          }

LABEL_32:
          v34 = v39;
          goto LABEL_33;
        case 4:
          goto LABEL_4;
        case 5:
          bspop_boa(a1);
          v43 = advance_tok(a1);
          v42 = v39;
          if (v43)
          {
            continue;
          }

          v44 = OUTLINED_FUNCTION_3_48();
          if (lpta_loadp_setscan_r(v44, v45))
          {
            goto LABEL_17;
          }

          OUTLINED_FUNCTION_1_49();
          if (test_string_s())
          {
            goto LABEL_17;
          }

          v60 = 2280;
          v61 = 1550;
          goto LABEL_42;
        case 6:
LABEL_17:
          v46 = OUTLINED_FUNCTION_3_48();
          if (lpta_loadp_setscan_r(v46, v47))
          {
            goto LABEL_19;
          }

          OUTLINED_FUNCTION_1_49();
          if (test_string_s())
          {
            goto LABEL_19;
          }

          v60 = 2080;
          v61 = 1600;
          goto LABEL_42;
        case 7:
LABEL_19:
          v48 = OUTLINED_FUNCTION_3_48();
          if (lpta_loadp_setscan_r(v48, v49))
          {
            goto LABEL_21;
          }

          OUTLINED_FUNCTION_1_49();
          if (test_string_s())
          {
            goto LABEL_21;
          }

          v60 = 2680;
          v61 = 1500;
          goto LABEL_42;
        case 8:
LABEL_21:
          v50 = OUTLINED_FUNCTION_35_27();
          starttest(v50, v51);
          v52 = OUTLINED_FUNCTION_3_48();
          if (lpta_loadp_setscan_r(v52, v53))
          {
            goto LABEL_38;
          }

          OUTLINED_FUNCTION_14_43();
          OUTLINED_FUNCTION_34_28();
          v58 = testFldeq(v54, v55, v56, v57);
          v42 = v39;
          if (v58)
          {
            continue;
          }

          v59 = advance_tok(a1);
          v42 = v39;
          if (v59)
          {
            continue;
          }

          v60 = 2380;
          v61 = 1800;
LABEL_42:
          v26 = 0;
          *(a1 + 4782) = v61;
          *(a1 + 4790) = v60;
          break;
        default:
          goto LABEL_3;
      }

      break;
    }
  }

LABEL_4:
  v27 = v26;
  vretproc(a1);
  v28 = *MEMORY[0x277D85DE8];
  return v27;
}

void ga_ph_E()
{
  OUTLINED_FUNCTION_39_23();
  v1 = v0;
  v58 = *MEMORY[0x277D85DE8];
  bzero(v53, 0xB8uLL);
  OUTLINED_FUNCTION_19_39();
  bzero(v57, v2);
  if (setjmp(v57) || ventproc(v1, v53, v56, v55, v54, v57))
  {
    goto LABEL_3;
  }

  fence_49(v1);
  OUTLINED_FUNCTION_20_37(570);
  OUTLINED_FUNCTION_28_32(1650);
  OUTLINED_FUNCTION_24_34(2480);
  v4 = OUTLINED_FUNCTION_12_43();
  starttest(v4, v5);
  v6 = OUTLINED_FUNCTION_2_49();
  if (lpta_loadp_setscan_r(v6, v7) || advance_tok(v1))
  {
    v8 = 0;
    goto LABEL_41;
  }

  OUTLINED_FUNCTION_10_44();
  bspush_ca_scan_boa();
  v9 = 0;
  if (!testFldeq(v1, v57, 0, 23))
  {
    v9 = !advance_tok(v1);
  }

LABEL_9:
  v10 = v9;
  while (2)
  {
    v11 = *(v1 + 104);
    if (v11)
    {
      v12 = OUTLINED_FUNCTION_23_36(v11);
      v14 = v13;
    }

    else
    {
      v12 = vback(v1, v10);
      v14 = 0;
    }

    v15 = v12 - 1;
    v16 = 2180;
    v17 = 2680;
    v18 = 1500;
    v8 = v14;
    switch(v15)
    {
      case 0:
      case 7:
        goto LABEL_41;
      case 1:
        bspop_boa(v1);
        v19 = OUTLINED_FUNCTION_2_49();
        if (lpta_loadp_setscan_l(v19, v20))
        {
          goto LABEL_16;
        }

        OUTLINED_FUNCTION_14_43();
        if (test_string_s())
        {
          goto LABEL_16;
        }

        v17 = 2380;
        goto LABEL_37;
      case 2:
LABEL_16:
        v21 = OUTLINED_FUNCTION_2_49();
        if (lpta_loadp_setscan_l(v21, v22))
        {
          goto LABEL_18;
        }

        OUTLINED_FUNCTION_14_43();
        if (test_string_s())
        {
          goto LABEL_18;
        }

        starttest(v1, 5);
        v33 = OUTLINED_FUNCTION_2_49();
        if (!lpta_loadp_setscan_l(v33, v34))
        {
          bspush_ca_scan_boa();
LABEL_29:
          if (test_synch(v1, 7, 1u, &unk_28058168D))
          {
            v10 = v14;
          }

          else
          {
            v10 = 1;
          }

          continue;
        }

        v17 = 2680;
LABEL_37:
        v18 = 1500;
LABEL_38:
        *(v1 + 4778) = v18;
        v16 = v17;
LABEL_39:
        *(v1 + 4786) = v16;
LABEL_40:
        v8 = v14;
LABEL_41:
        v9 = v8;
        v35 = OUTLINED_FUNCTION_3_48();
        if (lpta_loadp_setscan_r(v35, v36) || (OUTLINED_FUNCTION_1_49(), test_string_s()))
        {
LABEL_43:
          v37 = OUTLINED_FUNCTION_16_42();
          starttest(v37, v38);
          v39 = OUTLINED_FUNCTION_3_48();
          if (lpta_loadp_setscan_r(v39, v40))
          {
LABEL_44:
            v41 = OUTLINED_FUNCTION_16_42();
            starttest(v41, v42);
            v43 = OUTLINED_FUNCTION_3_48();
            if (lpta_loadp_setscan_r(v43, v44))
            {
              goto LABEL_3;
            }

            v45 = OUTLINED_FUNCTION_0_50();
            if (!testFldeq(v45, v46, v47, v48) && !advance_tok(v1))
            {
              *(v1 + 4782) = 1500;
              v49 = 2380;
              goto LABEL_53;
            }

            goto LABEL_9;
          }

          v50 = OUTLINED_FUNCTION_5_47();
          if (testFldeq(v50, v51, v52, 4) || advance_tok(v1))
          {
            goto LABEL_9;
          }

          *(v1 + 4782) = 1750;
        }

        else
        {
          *(v1 + 4782) = 1500;
          v49 = 2680;
LABEL_53:
          *(v1 + 4790) = v49;
        }

LABEL_3:
        vretproc(v1);
        v3 = *MEMORY[0x277D85DE8];
        OUTLINED_FUNCTION_38_23();
        return;
      case 3:
LABEL_18:
        starttest(v1, 9);
        v23 = OUTLINED_FUNCTION_2_49();
        if (lpta_loadp_setscan_l(v23, v24))
        {
          goto LABEL_19;
        }

        v27 = OUTLINED_FUNCTION_6_46();
        v30 = testFldeq(v27, v28, 5, v29);
        v10 = v14;
        if (v30)
        {
          continue;
        }

        v31 = advance_tok(v1);
        v10 = v14;
        if (v31)
        {
          continue;
        }

        v16 = 2380;
        goto LABEL_39;
      case 4:
        goto LABEL_38;
      case 5:
        bspop_boa(v1);
        OUTLINED_FUNCTION_20_37(600);
        v17 = 2680;
        v18 = 1450;
        goto LABEL_38;
      case 6:
        goto LABEL_29;
      case 8:
LABEL_19:
        starttest(v1, 1);
        v25 = OUTLINED_FUNCTION_2_49();
        if (lpta_loadp_setscan_l(v25, v26))
        {
          goto LABEL_40;
        }

        bspush_ca_scan(v1, 10);
        OUTLINED_FUNCTION_14_43();
LABEL_25:
        v32 = test_string_s();
        v10 = v14;
        if (v32)
        {
          continue;
        }

        v16 = 2180;
        goto LABEL_39;
      case 9:
        OUTLINED_FUNCTION_14_43();
        goto LABEL_25;
      case 10:
        goto LABEL_39;
      case 11:
        v9 = v14;
        goto LABEL_43;
      case 13:
        v9 = v14;
        goto LABEL_44;
      default:
        goto LABEL_3;
    }
  }
}

uint64_t ga_ph_y(uint64_t a1)
{
  OUTLINED_FUNCTION_13_43(*MEMORY[0x277D85DE8], v29);
  OUTLINED_FUNCTION_11_44(v3, v4, v5, v6, v7, v8, v9, v10, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_4_47(v11, v12, v13, v14, v15, v16, v17, v18, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, *v77, v77[4], *v79, *&v79[4], v79[6], v81, SWORD2(v81), SBYTE6(v81), SHIBYTE(v81), v83, v85))
  {
    v19 = 94;
  }

  else
  {
    fence_49(a1);
    eng_high_pal_Fv(a1, v22, v23, v24, v25, v26, v27, v28);
    v19 = 0;
  }

  vretproc(a1);
  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

uint64_t ga_ph_R(uint64_t a1)
{
  OUTLINED_FUNCTION_13_43(*MEMORY[0x277D85DE8], v30);
  OUTLINED_FUNCTION_11_44(v3, v4, v5, v6, v7, v8, v9, v10, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_4_47(v11, v12, v13, v14, v15, v16, v17, v18, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, *v78, v78[4], *v80, *&v80[4], v80[6], v82, SWORD2(v82), SBYTE6(v82), SHIBYTE(v82), v84, v86))
  {
    vretproc(a1);
    result = 94;
  }

  else
  {
    fence_49(a1);
    OUTLINED_FUNCTION_20_37(440);
    v21 = OUTLINED_FUNCTION_2_49();
    if (!lpta_loadp_setscan_l(v21, v22))
    {
      OUTLINED_FUNCTION_1_49();
      if (!test_string_s())
      {
        *(a1 + 4770) = 510;
      }
    }

    eng_ret_Fv(a1, v23, v24, v25, v26, v27, v28, v29);
    vretproc(a1);
    result = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ga_ph_c(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v116 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_18_39(a1, a2, a3, a4, a5, a6, a7, a8, v59);
  OUTLINED_FUNCTION_11_44(v10, v11, v12, v13, v14, v15, v16, v17, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114);
  v18 = setjmp(v8);
  if (v18 || OUTLINED_FUNCTION_4_47(v18, v19, v20, v21, v22, v23, v24, v25, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, *v107, v107[4], *v109, *&v109[4], v109[6], v111, SWORD2(v111), SBYTE6(v111), SHIBYTE(v111), v113, v115))
  {
LABEL_3:
    vretproc(a1);
    result = 94;
    goto LABEL_4;
  }

  fence_49(a1);
  OUTLINED_FUNCTION_20_37(700);
  OUTLINED_FUNCTION_28_32(1050);
  OUTLINED_FUNCTION_24_34(2410);
  *(a1 + 4566) = 200;
  v28 = OUTLINED_FUNCTION_12_43();
  starttest(v28, v29);
  v30 = OUTLINED_FUNCTION_3_48();
  if (!lpta_loadp_setscan_r(v30, v31))
  {
    OUTLINED_FUNCTION_16_42();
    bspush_ca_scan_boa();
    v33 = 0;
LABEL_8:
    v34 = OUTLINED_FUNCTION_16_42();
    v37 = test_synch(v34, v35, 1u, v36);
    v38 = v33;
LABEL_18:
    if (v37)
    {
      v33 = v38;
    }

    else
    {
      v33 = 1;
    }

    while (2)
    {
      v50 = *(a1 + 104);
      if (v50)
      {
        v51 = OUTLINED_FUNCTION_23_36(v50);
        v33 = v52;
      }

      else
      {
        v51 = vback(a1, v33);
        v33 = 0;
      }

      switch(v51)
      {
        case 1:
          v32 = v33;
          goto LABEL_10;
        case 2:
          bspop_boa(a1);
          OUTLINED_FUNCTION_1_49();
          if (test_string_s())
          {
            continue;
          }

          v53 = 900;
          v54 = 480;
          break;
        case 3:
          goto LABEL_8;
        case 4:
          goto LABEL_33;
        case 5:
          v32 = v33;
          goto LABEL_15;
        case 6:
          bspop_boa(a1);
          OUTLINED_FUNCTION_1_49();
          if (test_string_s())
          {
            continue;
          }

          v53 = 960;
          v54 = 630;
          break;
        case 7:
          v32 = v33;
          goto LABEL_17;
        case 8:
          bspop_boa(a1);
          OUTLINED_FUNCTION_1_49();
          if (test_string_s())
          {
            continue;
          }

          v53 = 850;
          v54 = 450;
          break;
        case 9:
          v32 = v33;
          goto LABEL_17;
        case 10:
          goto LABEL_36;
        default:
          goto LABEL_3;
      }

      break;
    }

    *(a1 + 4770) = v54;
    *(a1 + 4774) = v54;
    OUTLINED_FUNCTION_28_32(v53);
    *(a1 + 4786) = v55;
    *(a1 + 4790) = v56;
    goto LABEL_33;
  }

  v32 = 0;
LABEL_10:
  v39 = OUTLINED_FUNCTION_16_42();
  starttest(v39, v40);
  v41 = OUTLINED_FUNCTION_3_48();
  if (!lpta_loadp_setscan_r(v41, v42))
  {
    OUTLINED_FUNCTION_16_42();
    bspush_ca_scan_boa();
    goto LABEL_17;
  }

LABEL_15:
  v43 = OUTLINED_FUNCTION_16_42();
  starttest(v43, v44);
  v45 = OUTLINED_FUNCTION_3_48();
  if (!lpta_loadp_setscan_r(v45, v46))
  {
    OUTLINED_FUNCTION_16_42();
    bspush_ca_scan_boa();
LABEL_17:
    v47 = OUTLINED_FUNCTION_16_42();
    v37 = test_synch(v47, v48, 1u, v49);
    v38 = v32;
    goto LABEL_18;
  }

LABEL_33:
  v57 = OUTLINED_FUNCTION_2_49();
  if (!lpta_loadp_setscan_l(v57, v58))
  {
    OUTLINED_FUNCTION_1_49();
    if (!test_string_s())
    {
      *(a1 + 4770) -= 80;
      OUTLINED_FUNCTION_31_31();
    }
  }

LABEL_36:
  vretproc(a1);
  result = 0;
LABEL_4:
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

void ga_ph_e()
{
  OUTLINED_FUNCTION_39_23();
  v1 = v0;
  v75 = *MEMORY[0x277D85DE8];
  bzero(v70, 0xB8uLL);
  OUTLINED_FUNCTION_19_39();
  bzero(v74, v2);
  if (setjmp(v74) || ventproc(v1, v70, v73, v72, v71, v74))
  {
    goto LABEL_3;
  }

  fence_49(v1);
  *(v1 + 4770) = 470;
  *(v1 + 4774) = 350;
  *(v1 + 4778) = 1800;
  *(v1 + 4782) = 2000;
  *(v1 + 4786) = 2480;
  *(v1 + 4790) = 2430;
  v4 = OUTLINED_FUNCTION_12_43();
  starttest(v4, v5);
  v6 = OUTLINED_FUNCTION_2_49();
  if (lpta_loadp_setscan_r(v6, v7))
  {
    v8 = 0;
LABEL_7:
    v10 = v8;
    v11 = OUTLINED_FUNCTION_16_42();
    starttest(v11, v12);
    v13 = OUTLINED_FUNCTION_3_48();
    if (lpta_loadp_setscan_r(v13, v14))
    {
      goto LABEL_3;
    }

    OUTLINED_FUNCTION_16_42();
    bspush_ca_scan_boa();
    v15 = OUTLINED_FUNCTION_14_43();
    v9 = !testFldeq(v15, v16, 10, 1) || v10;
  }

  else
  {
    OUTLINED_FUNCTION_10_44();
    bspush_ca_scan_boa();
    v9 = !OUTLINED_FUNCTION_30_31();
  }

  v17 = v9;
  while (2)
  {
    v18 = *(v1 + 104);
    if (v18)
    {
      v19 = OUTLINED_FUNCTION_23_36(v18);
      v21 = v20;
    }

    else
    {
      v19 = vback(v1, v17);
      v21 = 0;
    }

    v8 = v21;
    switch(v19)
    {
      case 1:
        goto LABEL_7;
      case 2:
        bspop_boa(v1);
        v22 = advance_tok(v1);
        v17 = v21;
        if (v22)
        {
          continue;
        }

        starttest(v1, 3);
        v23 = OUTLINED_FUNCTION_2_49();
        if (lpta_loadp_setscan_l(v23, v24))
        {
          goto LABEL_18;
        }

        bspush_ca_scan(v1, 4);
        OUTLINED_FUNCTION_14_43();
        goto LABEL_39;
      case 3:
LABEL_18:
        v25 = OUTLINED_FUNCTION_2_49();
        if (lpta_loadp_setscan_l(v25, v26))
        {
          goto LABEL_20;
        }

        OUTLINED_FUNCTION_14_43();
        if (test_string_s())
        {
          goto LABEL_20;
        }

        v67 = 1720;
        goto LABEL_64;
      case 4:
        OUTLINED_FUNCTION_14_43();
LABEL_39:
        v56 = test_string_s();
        v17 = v21;
        if (!v56)
        {
          goto LABEL_63;
        }

        continue;
      case 5:
LABEL_63:
        v67 = 2000;
LABEL_64:
        *(v1 + 4778) = v67;
        goto LABEL_69;
      case 6:
LABEL_20:
        starttest(v1, 7);
        v27 = OUTLINED_FUNCTION_2_49();
        if (lpta_loadp_setscan_l(v27, v28))
        {
          goto LABEL_21;
        }

        bspush_ca_scan(v1, 8);
        OUTLINED_FUNCTION_14_43();
        goto LABEL_52;
      case 7:
LABEL_21:
        starttest(v1, 1);
        v29 = OUTLINED_FUNCTION_2_49();
        if (lpta_loadp_setscan_l(v29, v30))
        {
          goto LABEL_69;
        }

        v31 = OUTLINED_FUNCTION_5_47();
        v34 = testFldeq(v31, v32, v33, 4);
        v17 = v21;
        if (v34)
        {
          continue;
        }

        v35 = advance_tok(v1);
        v17 = v21;
        if (v35)
        {
          continue;
        }

        *(v1 + 4778) = 1900;
        v69 = 2380;
        goto LABEL_68;
      case 8:
        OUTLINED_FUNCTION_14_43();
LABEL_52:
        v65 = test_string_s();
        v17 = v21;
        if (!v65)
        {
          goto LABEL_61;
        }

        continue;
      case 9:
LABEL_61:
        *(v1 + 4778) = 1700;
        v69 = 2180;
LABEL_68:
        *(v1 + 4786) = v69;
LABEL_69:
        v8 = v21;
        goto LABEL_7;
      case 11:
        bspop_boa(v1);
        v46 = advance_tok(v1);
        v17 = v21;
        if (v46)
        {
          continue;
        }

        starttest(v1, 12);
        v47 = OUTLINED_FUNCTION_3_48();
        if (lpta_loadp_setscan_r(v47, v48))
        {
          goto LABEL_34;
        }

        bspush_ca_scan(v1, 13);
        v37 = OUTLINED_FUNCTION_6_46();
        v39 = 6;
        goto LABEL_43;
      case 12:
LABEL_34:
        starttest(v1, 17);
        v49 = OUTLINED_FUNCTION_3_48();
        if (lpta_loadp_setscan_r(v49, v50))
        {
          goto LABEL_35;
        }

        bspush_ca_scan_boa();
        goto LABEL_55;
      case 13:
        bspush_ca_scan(v1, 15);
        v37 = OUTLINED_FUNCTION_5_47();
        v40 = 3;
        goto LABEL_43;
      case 14:
        goto LABEL_44;
      case 15:
        bspush_ca_scan(v1, 16);
        v37 = OUTLINED_FUNCTION_5_47();
        v40 = 2;
        goto LABEL_43;
      case 16:
        v37 = OUTLINED_FUNCTION_5_47();
        v40 = 4;
LABEL_43:
        v57 = testFldeq(v37, v38, v39, v40);
        v17 = v21;
        if (v57)
        {
          continue;
        }

LABEL_44:
        v58 = advance_tok(v1);
        v17 = v21;
        if (v58)
        {
          continue;
        }

        *(v1 + 4782) = 2120;
        v66 = 2530;
        goto LABEL_67;
      case 17:
LABEL_35:
        starttest(v1, 10);
        v51 = OUTLINED_FUNCTION_3_48();
        if (lpta_loadp_setscan_r(v51, v52))
        {
          goto LABEL_3;
        }

        bspush_ca_scan_boa();
        goto LABEL_37;
      case 18:
        bspop_boa(v1);
        OUTLINED_FUNCTION_14_43();
        v36 = test_string_s();
        v17 = v21;
        if (v36)
        {
          continue;
        }

        *(v1 + 4782) = 1900;
        goto LABEL_3;
      case 19:
LABEL_55:
        v53 = OUTLINED_FUNCTION_35_27();
        v55 = &unk_28058168D;
        goto LABEL_56;
      case 20:
        bspop_boa(v1);
        OUTLINED_FUNCTION_14_43();
        v41 = test_string_s();
        v17 = v21;
        if (v41)
        {
          continue;
        }

        starttest(v1, 22);
        bspush_ca(v1);
        v42 = OUTLINED_FUNCTION_17_40();
        lpta_loadpn(v42, v43);
        rpta_loadpn(v1, v1 + 640);
        v44 = compare_ptas(v1);
        v17 = v21;
        if (v44)
        {
          continue;
        }

        v45 = testeq(v1);
        goto LABEL_49;
      case 21:
LABEL_37:
        v53 = v1;
        v54 = 21;
        v55 = &unk_28058168E;
LABEL_56:
        if (test_synch(v53, v54, 1u, v55))
        {
          v17 = v21;
        }

        else
        {
          v17 = 1;
        }

        continue;
      case 22:
        *(v1 + 4774) = 520;
        v68 = *(v1 + 4778);
        *(v1 + 4778) = v68 - 200;
        *(v1 + 4782) = 1650;
        *(v1 + 4786) = v68 + 500;
        v66 = 2300;
        goto LABEL_67;
      case 23:
        v59 = OUTLINED_FUNCTION_2_49();
        v61 = lpta_loadp_setscan_r(v59, v60);
        v17 = v21;
        if (v61)
        {
          continue;
        }

        v62 = OUTLINED_FUNCTION_14_43();
        v64 = testFldeq(v62, v63, 10, 1);
        v17 = v21;
        if (v64)
        {
          continue;
        }

        v45 = advance_tok(v1);
LABEL_49:
        v17 = v21;
        if (!v45)
        {
          goto LABEL_65;
        }

        continue;
      case 24:
LABEL_65:
        *(v1 + 4774) = 500;
        *(v1 + 4782) = 1750;
        v66 = *(v1 + 4778) + 700;
        *(v1 + 4786) = v66;
LABEL_67:
        *(v1 + 4790) = v66;
        break;
      default:
        goto LABEL_3;
    }

    break;
  }

LABEL_3:
  vretproc(v1);
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_38_23();
}

void ga_ph_A()
{
  OUTLINED_FUNCTION_39_23();
  v2 = v1;
  v165 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_18_39(v1, v3, v4, v5, v6, v7, v8, v9, v108);
  OUTLINED_FUNCTION_11_44(v10, v11, v12, v13, v14, v15, v16, v17, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, v141, v143, v145, v147, v149, v151, v153, v155, v157, v159, v161, v163);
  v18 = setjmp(v0);
  if (v18 || OUTLINED_FUNCTION_4_47(v18, v19, v20, v21, v22, v23, v24, v25, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142, v144, v146, v148, v150, v152, v154, *v156, v156[4], *v158, *&v158[4], v158[6], v160, SWORD2(v160), SBYTE6(v160), SHIBYTE(v160), v162, v164))
  {
    goto LABEL_3;
  }

  fence_49(v2);
  OUTLINED_FUNCTION_20_37(750);
  OUTLINED_FUNCTION_28_32(1650);
  OUTLINED_FUNCTION_24_34(2410);
  v27 = OUTLINED_FUNCTION_12_43();
  starttest(v27, v28);
  v29 = OUTLINED_FUNCTION_2_49();
  if (lpta_loadp_setscan_r(v29, v30))
  {
    v31 = 0;
LABEL_38:
    v32 = v31;
    v83 = OUTLINED_FUNCTION_3_48();
    if (!lpta_loadp_setscan_r(v83, v84))
    {
      OUTLINED_FUNCTION_1_49();
      if (!test_string_s())
      {
        *(v2 + 4782) = 1550;
LABEL_55:
        v100 = OUTLINED_FUNCTION_16_42();
        starttest(v100, v101);
        v102 = OUTLINED_FUNCTION_3_48();
        if (lpta_loadp_setscan_r(v102, v103))
        {
          goto LABEL_3;
        }

        OUTLINED_FUNCTION_16_42();
        bspush_ca_scan_boa();
LABEL_57:
        v104 = OUTLINED_FUNCTION_16_42();
        if (!test_synch(v104, v105, 1u, v106))
        {
          v32 = 1;
        }

        goto LABEL_59;
      }
    }

LABEL_44:
    v86 = OUTLINED_FUNCTION_3_48();
    if (!lpta_loadp_setscan_r(v86, v87))
    {
      OUTLINED_FUNCTION_1_49();
      if (!test_string_s())
      {
        *(v2 + 4782) = 1450;
        v88 = 2610;
LABEL_53:
        *(v2 + 4790) = v88;
        goto LABEL_55;
      }
    }

LABEL_49:
    v89 = OUTLINED_FUNCTION_16_42();
    starttest(v89, v90);
    v91 = OUTLINED_FUNCTION_3_48();
    if (lpta_loadp_setscan_r(v91, v92))
    {
      goto LABEL_55;
    }

    v93 = OUTLINED_FUNCTION_16_42();
    bspush_ca_scan(v93, v94);
    v95 = OUTLINED_FUNCTION_0_50();
    v99 = testFldeq(v95, v96, v97, v98);
    v38 = v32;
    if (!v99)
    {
LABEL_51:
      v32 = v38;
      if (!advance_tok(v2))
      {
        v88 = 2310;
        goto LABEL_53;
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_10_44();
    bspush_ca_scan_boa();
    v32 = !OUTLINED_FUNCTION_30_31();
  }

LABEL_59:
  v40 = v32;
  while (2)
  {
    v33 = *(v2 + 104);
    if (v33)
    {
      v34 = OUTLINED_FUNCTION_23_36(v33);
      v36 = v35;
    }

    else
    {
      v34 = vback(v2, v40);
      v36 = 0;
    }

    v37 = v34 - 1;
    v31 = v36;
    v38 = v36;
    switch(v37)
    {
      case 0:
        goto LABEL_38;
      case 1:
        bspop_boa(v2);
        v39 = advance_tok(v2);
        v40 = v36;
        if (v39)
        {
          continue;
        }

        v41 = OUTLINED_FUNCTION_2_49();
        if (lpta_loadp_setscan_l(v41, v42))
        {
          goto LABEL_14;
        }

        OUTLINED_FUNCTION_14_43();
        if (test_string_s())
        {
          goto LABEL_14;
        }

        *(v2 + 4778) = 1550;
        v82 = 2410;
        goto LABEL_36;
      case 2:
LABEL_14:
        v43 = OUTLINED_FUNCTION_2_49();
        if (lpta_loadp_setscan_l(v43, v44))
        {
          goto LABEL_16;
        }

        OUTLINED_FUNCTION_14_43();
        if (test_string_s())
        {
          goto LABEL_16;
        }

        *(v2 + 4778) = 1550;
        v82 = 2110;
        goto LABEL_36;
      case 3:
LABEL_16:
        v45 = OUTLINED_FUNCTION_35_27();
        starttest(v45, v46);
        v47 = OUTLINED_FUNCTION_2_49();
        if (lpta_loadp_setscan_l(v47, v48))
        {
          goto LABEL_17;
        }

        v77 = OUTLINED_FUNCTION_6_46();
        v80 = testFldeq(v77, v78, 5, v79);
        v40 = v36;
        if (v80)
        {
          continue;
        }

        v81 = advance_tok(v2);
        v40 = v36;
        if (v81)
        {
          continue;
        }

        *(v2 + 4778) = 1550;
        goto LABEL_37;
      case 4:
LABEL_17:
        starttest(v2, 1);
        v49 = OUTLINED_FUNCTION_2_49();
        if (lpta_loadp_setscan_l(v49, v50))
        {
          goto LABEL_37;
        }

        bspush_ca_scan(v2, 6);
        v51 = OUTLINED_FUNCTION_14_43();
        v53 = 5;
        v54 = 3;
LABEL_20:
        v55 = testFldeq(v51, v52, v53, v54);
        v40 = v36;
        if (v55)
        {
          continue;
        }

LABEL_21:
        v56 = advance_tok(v2);
        v40 = v36;
        if (v56)
        {
          continue;
        }

        *(v2 + 4778) = 1700;
        v82 = 2310;
LABEL_36:
        *(v2 + 4786) = v82;
LABEL_37:
        v31 = v36;
        goto LABEL_38;
      case 5:
        OUTLINED_FUNCTION_14_43();
        OUTLINED_FUNCTION_34_28();
        goto LABEL_20;
      case 6:
        goto LABEL_21;
      case 7:
        v32 = v36;
        goto LABEL_44;
      case 8:
        v32 = v36;
        goto LABEL_55;
      case 9:
        v32 = v36;
        goto LABEL_49;
      case 10:
        OUTLINED_FUNCTION_14_43();
        OUTLINED_FUNCTION_34_28();
        v76 = testFldeq(v72, v73, v74, v75);
        v38 = v36;
        v40 = v36;
        if (!v76)
        {
          goto LABEL_51;
        }

        continue;
      case 11:
        goto LABEL_51;
      case 13:
        bspop_boa(v2);
        v57 = OUTLINED_FUNCTION_14_43();
        v59 = testFldeq(v57, v58, 4, 4);
        v40 = v36;
        if (v59)
        {
          continue;
        }

        v60 = advance_tok(v2);
        v40 = v36;
        if (v60)
        {
          continue;
        }

        OUTLINED_FUNCTION_32_29();
        if (v62 == v63)
        {
          *(v2 + 4778) = v61 + 200;
        }

        goto LABEL_27;
      case 14:
        v32 = v36;
        goto LABEL_57;
      case 15:
LABEL_27:
        starttest(v2, 17);
        v64 = OUTLINED_FUNCTION_3_48();
        if (lpta_loadp_setscan_r(v64, v65))
        {
          goto LABEL_41;
        }

        OUTLINED_FUNCTION_14_43();
        OUTLINED_FUNCTION_34_28();
        v70 = testFldeq(v66, v67, v68, v69);
        v40 = v36;
        if (v70)
        {
          continue;
        }

        v71 = advance_tok(v2);
        v40 = v36;
        if (v71)
        {
          continue;
        }

        *(v2 + 4774) -= 100;
        v107 = *(v2 + 4782) + 200;
        goto LABEL_62;
      case 16:
LABEL_41:
        *(v2 + 4770) -= 100;
        v85 = *(v2 + 4782);
        if (v85 < 1)
        {
          goto LABEL_3;
        }

        v107 = v85 - 100;
LABEL_62:
        *(v2 + 4782) = v107;
        break;
      default:
        goto LABEL_3;
    }

    break;
  }

LABEL_3:
  vretproc(v2);
  v26 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_38_23();
}

uint64_t ga_ph_H(uint64_t a1)
{
  OUTLINED_FUNCTION_13_43(*MEMORY[0x277D85DE8], v57);
  OUTLINED_FUNCTION_11_44(v3, v4, v5, v6, v7, v8, v9, v10, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_4_47(v11, v12, v13, v14, v15, v16, v17, v18, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, *v105, v105[4], *v107, *&v107[4], v107[6], v109, SWORD2(v109), SBYTE6(v109), SHIBYTE(v109), v111, v113))
  {
LABEL_3:
    v19 = 94;
    goto LABEL_4;
  }

  fence_49(a1);
  OUTLINED_FUNCTION_20_37(600);
  OUTLINED_FUNCTION_28_32(1300);
  OUTLINED_FUNCTION_24_34(2500);
  v22 = OUTLINED_FUNCTION_2_49();
  if (!lpta_loadp_setscan_l(v22, v23))
  {
    OUTLINED_FUNCTION_1_49();
    if (!test_string_s())
    {
      OUTLINED_FUNCTION_33_28();
      v24 = 2300;
LABEL_8:
      *(a1 + 4786) = v24;
      goto LABEL_16;
    }
  }

  while (2)
  {
    v25 = OUTLINED_FUNCTION_2_49();
    if (!lpta_loadp_setscan_l(v25, v26))
    {
      OUTLINED_FUNCTION_1_49();
      if (!test_string_s())
      {
        *(a1 + 4778) = 1250;
        v24 = 2650;
        goto LABEL_8;
      }
    }

LABEL_12:
    v27 = OUTLINED_FUNCTION_10_44();
    starttest(v27, v28);
    v29 = OUTLINED_FUNCTION_17_40();
    if (!lpta_loadp_setscan_l(v29, v30))
    {
      v31 = OUTLINED_FUNCTION_0_50();
      if (testFldeq(v31, v32, v33, v34) || advance_tok(a1))
      {
        goto LABEL_26;
      }

      OUTLINED_FUNCTION_33_28();
    }

LABEL_16:
    v35 = OUTLINED_FUNCTION_3_48();
    if (!lpta_loadp_setscan_r(v35, v36))
    {
      OUTLINED_FUNCTION_1_49();
      if (!test_string_s())
      {
        v37 = 1100;
LABEL_32:
        v19 = 0;
        *(a1 + 4782) = v37;
        break;
      }
    }

LABEL_19:
    v38 = OUTLINED_FUNCTION_16_42();
    starttest(v38, v39);
    v40 = OUTLINED_FUNCTION_3_48();
    if (lpta_loadp_setscan_r(v40, v41))
    {
LABEL_23:
      v45 = OUTLINED_FUNCTION_16_42();
      starttest(v45, v46);
      v47 = OUTLINED_FUNCTION_3_48();
      if (lpta_loadp_setscan_r(v47, v48))
      {
        v19 = 0;
        break;
      }

      v49 = OUTLINED_FUNCTION_0_50();
      if (!testFldeq(v49, v50, v51, v52) && !advance_tok(a1))
      {
        v37 = 1200;
        goto LABEL_32;
      }
    }

    else
    {
      v42 = OUTLINED_FUNCTION_5_47();
      if (!testFldeq(v42, v43, v44, 3) && !advance_tok(a1))
      {
        v37 = 1400;
        goto LABEL_32;
      }
    }

LABEL_26:
    v53 = *(a1 + 104);
    if (v53)
    {
      v54 = OUTLINED_FUNCTION_23_36(v53);
    }

    else
    {
      v55 = OUTLINED_FUNCTION_37_24();
      v54 = vback(v55, v56);
    }

    v19 = 0;
    switch(v54)
    {
      case 1:
        continue;
      case 2:
        goto LABEL_16;
      case 3:
        goto LABEL_12;
      case 4:
        goto LABEL_19;
      case 5:
        goto LABEL_4;
      case 6:
        goto LABEL_23;
      default:
        goto LABEL_3;
    }
  }

LABEL_4:
  vretproc(a1);
  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

uint64_t ga_ph_r(uint64_t a1)
{
  OUTLINED_FUNCTION_13_43(*MEMORY[0x277D85DE8], v38);
  OUTLINED_FUNCTION_11_44(v3, v4, v5, v6, v7, v8, v9, v10, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_4_47(v11, v12, v13, v14, v15, v16, v17, v18, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, *v86, v86[4], *v88, *&v88[4], v88[6], v90, SWORD2(v90), SBYTE6(v90), SHIBYTE(v90), v92, v94))
  {
LABEL_3:
    vretproc(a1);
    result = 94;
  }

  else
  {
    fence_49(a1);
    OUTLINED_FUNCTION_20_37(440);
    v21 = OUTLINED_FUNCTION_12_43();
    starttest_l(v21, v22);
    v23 = OUTLINED_FUNCTION_2_49();
    if (!lpta_loadp_setscan_l(v23, v24))
    {
      v32 = OUTLINED_FUNCTION_10_44();
      bspush_ca_scan(v32, v33);
      if (test_string_s())
      {
        while (2)
        {
          v34 = *(a1 + 104);
          if (v34)
          {
            v35 = OUTLINED_FUNCTION_23_36(v34);
          }

          else
          {
            v36 = OUTLINED_FUNCTION_37_24();
            v35 = vback(v36, v37);
          }

          switch(v35)
          {
            case 1:
              goto LABEL_13;
            case 2:
              OUTLINED_FUNCTION_1_49();
              if (!test_string_s())
              {
                break;
              }

              continue;
            case 3:
              goto LABEL_12;
            case 4:
              goto LABEL_14;
            default:
              goto LABEL_3;
          }

          break;
        }
      }

LABEL_12:
      OUTLINED_FUNCTION_20_37(520);
    }

LABEL_13:
    eng_ret_Fv(a1, v25, v26, v27, v28, v29, v30, v31);
LABEL_14:
    vretproc(a1);
    result = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ga_ph_u(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v290 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_18_39(a1, a2, a3, a4, a5, a6, a7, a8, v237);
  OUTLINED_FUNCTION_19_39();
  bzero(v289, v9);
  v10 = setjmp(v289);
  if (!v10 && !OUTLINED_FUNCTION_25_34(v10, v11, v12, v13, v14, v15, v16, v17, v238, v240, v242, v244, v246, v248, v250, v252, v254, v256, v258, v260, v262, v264, v266, v268, v270, v272, v274, v276, v278, v280, v282, 0, 0, *v285, v285[4], *v286, *&v286[4], v286[6], v287, SWORD2(v287), SBYTE6(v287), SHIBYTE(v287), v288, v289[0]))
  {
    v20 = OUTLINED_FUNCTION_27_33();
    push_ptr_init(v20, v21);
    fence_49(a1);
    OUTLINED_FUNCTION_20_37(270);
    *(a1 + 4778) = 1200;
    *(a1 + 4782) = 1020;
    OUTLINED_FUNCTION_24_34(2340);
    v22 = OUTLINED_FUNCTION_2_49();
    if (!lpta_loadp_setscan_l(v22, v23))
    {
      OUTLINED_FUNCTION_1_49();
      if (!test_string_s())
      {
        *(a1 + 4778) = 1450;
        *(a1 + 4786) = 2590;
        v24 = 0;
        goto LABEL_21;
      }
    }

    v24 = 0;
    while (2)
    {
      v25 = OUTLINED_FUNCTION_2_49();
      if (lpta_loadp_setscan_l(v25, v26) || (OUTLINED_FUNCTION_1_49(), test_string_s()))
      {
LABEL_10:
        v27 = v24;
        v28 = OUTLINED_FUNCTION_16_42();
        starttest(v28, v29);
        v30 = OUTLINED_FUNCTION_2_49();
        if (lpta_loadp_setscan_l(v30, v31))
        {
LABEL_11:
          v32 = OUTLINED_FUNCTION_10_44();
          starttest(v32, v33);
          v34 = OUTLINED_FUNCTION_17_40();
          if (lpta_loadp_setscan_l(v34, v35))
          {
            v24 = v27;
          }

          else
          {
            v44 = OUTLINED_FUNCTION_16_42();
            bspush_ca_scan(v44, v45);
            v46 = OUTLINED_FUNCTION_0_50();
            v50 = testFldeq(v46, v47, v48, v49);
            v51 = v27;
            v42 = v27;
            if (v50)
            {
              goto LABEL_45;
            }

LABEL_17:
            v24 = v51;
            if (advance_tok(a1))
            {
              goto LABEL_121;
            }

            OUTLINED_FUNCTION_33_28();
          }

LABEL_21:
          v52 = OUTLINED_FUNCTION_3_48();
          if (!lpta_loadp_setscan_r(v52, v53))
          {
            OUTLINED_FUNCTION_1_49();
            if (!test_string_s())
            {
              *(a1 + 4782) = 870;
              v77 = 2240;
              goto LABEL_41;
            }
          }

LABEL_23:
          v54 = OUTLINED_FUNCTION_16_42();
          starttest(v54, v55);
          v56 = OUTLINED_FUNCTION_3_48();
          if (lpta_loadp_setscan_r(v56, v57))
          {
LABEL_24:
            v58 = OUTLINED_FUNCTION_16_42();
            starttest(v58, v59);
            v60 = OUTLINED_FUNCTION_3_48();
            if (lpta_loadp_setscan_r(v60, v61))
            {
LABEL_25:
              v62 = OUTLINED_FUNCTION_16_42();
              starttest(v62, v63);
              v64 = OUTLINED_FUNCTION_3_48();
              if (lpta_loadp_setscan_r(v64, v65))
              {
LABEL_26:
                v66 = OUTLINED_FUNCTION_16_42();
                starttest(v66, v67);
                v68 = OUTLINED_FUNCTION_3_48();
                if (!lpta_loadp_setscan_r(v68, v69))
                {
                  v93 = OUTLINED_FUNCTION_16_42();
                  bspush_ca_scan(v93, v94);
                  OUTLINED_FUNCTION_1_49();
                  v95 = test_string_s();
                  v42 = v24;
                  v96 = v24;
                  if (v95)
                  {
                    goto LABEL_45;
                  }

LABEL_43:
                  *(a1 + 4782) = 870;
                  v24 = v96;
LABEL_94:
                  v180 = OUTLINED_FUNCTION_16_42();
                  starttest(v180, v181);
                  v182 = OUTLINED_FUNCTION_2_49();
                  v184 = lpta_loadp_setscan_l(v182, v183);
                  v178 = v24;
                  if (v184)
                  {
LABEL_95:
                    v24 = v178;
                    v185 = OUTLINED_FUNCTION_16_42();
                    starttest(v185, v186);
                    if (*(a1 + 3592) >= 50.0 || (v187 = OUTLINED_FUNCTION_2_49(), v189 = lpta_loadp_setscan_l(v187, v188), v179 = v24, v189))
                    {
LABEL_97:
                      v190 = OUTLINED_FUNCTION_16_42();
                      starttest(v190, v191);
                      v192 = OUTLINED_FUNCTION_2_49();
                      if (lpta_loadp_setscan_l(v192, v193))
                      {
                        goto LABEL_116;
                      }

LABEL_98:
                      OUTLINED_FUNCTION_26_34(46, v239, v241, v243, v245, v247, v249, v251, v253, v255, v257, v259, v261, v263, v265, v267, v269, v271, v273, v275, v277, v279, v281, v283, v284);
                      OUTLINED_FUNCTION_1_49();
                      if (!test_string_s())
                      {
                        v194 = OUTLINED_FUNCTION_15_42();
                        if (!lpta_loadp_setscan_r(v194, v195) && !advance_tok(a1))
                        {
                          v196 = OUTLINED_FUNCTION_16_42();
                          bspush_ca_scan(v196, v197);
                          v198 = OUTLINED_FUNCTION_5_47();
                          v201 = testFldeq(v198, v199, v200, 2);
                          v42 = v24;
                          v103 = v24;
                          if (!v201)
                          {
LABEL_85:
                            v175 = v103;
                            v176 = advance_tok(a1);
                            v42 = v175;
                            if (!v176)
                            {
                              *(a1 + 4782) += 100;
LABEL_116:
                              vretproc(a1);
                              result = 0;
                              goto LABEL_4;
                            }
                          }

                          goto LABEL_45;
                        }
                      }

LABEL_121:
                      v42 = v24;
                      goto LABEL_45;
                    }

LABEL_117:
                    v216 = v179;
                    OUTLINED_FUNCTION_26_34(37, v239, v241, v243, v245, v247, v249, v251, v253, v255, v257, v259, v261, v263, v265, v267, v269, v271, v273, v275, v277, v279, v281, v283, v284);
                    v217 = OUTLINED_FUNCTION_16_42();
                    bspush_ca_scan(v217, v218);
                    v219 = OUTLINED_FUNCTION_5_47();
                    v222 = testFldeq(v219, v220, v221, 2);
                    v42 = v216;
                    v101 = v216;
                    if (v222)
                    {
                      goto LABEL_45;
                    }

LABEL_118:
                    v24 = v101;
                    if (advance_tok(a1))
                    {
                      goto LABEL_121;
                    }

                    v223 = OUTLINED_FUNCTION_15_42();
                    if (lpta_loadp_setscan_r(v223, v224) || advance_tok(a1))
                    {
                      goto LABEL_121;
                    }

                    v225 = OUTLINED_FUNCTION_16_42();
                    bspush_ca_scan(v225, v226);
                    v227 = OUTLINED_FUNCTION_5_47();
                    v230 = testFldeq(v227, v228, v229, 2);
                    v42 = v24;
                    v102 = v24;
                    if (v230)
                    {
                      goto LABEL_45;
                    }

LABEL_123:
                    v231 = v102;
                    v232 = advance_tok(a1);
                    v42 = v231;
                    if (v232)
                    {
LABEL_45:
                      v97 = *(a1 + 104);
                      if (v97)
                      {
                        v98 = OUTLINED_FUNCTION_23_36(v97);
                        v24 = v99;
                      }

                      else
                      {
                        v98 = vback(a1, v42);
                        v24 = 0;
                      }

                      v41 = v24;
                      v51 = v24;
                      v92 = v24;
                      v96 = v24;
                      v100 = v24;
                      v101 = v24;
                      v102 = v24;
                      v103 = v24;
                      switch(v98)
                      {
                        case 1:
                          continue;
                        case 2:
                          goto LABEL_21;
                        case 3:
                          goto LABEL_10;
                        case 4:
                          v27 = v24;
                          goto LABEL_11;
                        case 5:
                          v104 = OUTLINED_FUNCTION_16_42();
                          bspush_ca_scan(v104, v105);
                          v106 = OUTLINED_FUNCTION_5_47();
                          v109 = 2;
                          goto LABEL_72;
                        case 6:
                          goto LABEL_14;
                        case 7:
                          v106 = OUTLINED_FUNCTION_5_47();
                          v109 = 3;
LABEL_72:
                          v155 = testFldeq(v106, v107, v108, v109);
                          v41 = v24;
                          v42 = v24;
                          if (!v155)
                          {
                            goto LABEL_14;
                          }

                          goto LABEL_45;
                        case 8:
                          v156 = OUTLINED_FUNCTION_5_47();
                          v159 = testFldeq(v156, v157, v158, 4);
                          v51 = v24;
                          v42 = v24;
                          if (!v159)
                          {
                            goto LABEL_17;
                          }

                          goto LABEL_45;
                        case 9:
                          goto LABEL_17;
                        case 10:
                          goto LABEL_23;
                        case 11:
                        case 16:
                          goto LABEL_94;
                        case 12:
                          goto LABEL_24;
                        case 13:
                          bspop_boa(a1);
                          OUTLINED_FUNCTION_1_49();
                          v127 = test_string_s();
                          v42 = v24;
                          if (v127)
                          {
                            goto LABEL_45;
                          }

                          v128 = OUTLINED_FUNCTION_16_42();
                          starttest(v128, v129);
                          v130 = OUTLINED_FUNCTION_2_49();
                          if (lpta_loadp_setscan_l(v130, v131))
                          {
                            goto LABEL_87;
                          }

                          v132 = OUTLINED_FUNCTION_0_50();
                          v136 = testFldeq(v132, v133, v134, v135);
                          v42 = v24;
                          if (v136)
                          {
                            goto LABEL_45;
                          }

                          v137 = advance_tok(a1);
                          v42 = v24;
                          if (v137)
                          {
                            goto LABEL_45;
                          }

                          *(a1 + 4774) = 320;
                          v236 = 820;
LABEL_88:
                          *(a1 + 4778) = v236;
LABEL_93:
                          *(a1 + 4782) = v236;
                          goto LABEL_94;
                        case 14:
                        case 19:
                          goto LABEL_32;
                        case 15:
LABEL_87:
                          *(a1 + 4774) = 320;
                          v236 = 960;
                          goto LABEL_88;
                        case 17:
                          goto LABEL_25;
                        case 18:
                          bspop_boa(a1);
                          OUTLINED_FUNCTION_1_49();
                          v164 = test_string_s();
                          v42 = v24;
                          if (v164)
                          {
                            goto LABEL_45;
                          }

                          OUTLINED_FUNCTION_20_37(320);
                          OUTLINED_FUNCTION_28_32(880);
                          v77 = 2600;
                          *(a1 + 4786) = 2600;
                          goto LABEL_41;
                        case 20:
                          goto LABEL_26;
                        case 21:
                          bspop_boa(a1);
                          v236 = -2;
                          goto LABEL_93;
                        case 22:
                          v116 = OUTLINED_FUNCTION_7_46();
                          v119 = testFldeq(v116, v117, v118, 25);
                          v92 = v24;
                          v42 = v24;
                          if (!v119)
                          {
                            goto LABEL_39;
                          }

                          goto LABEL_45;
                        case 23:
                          goto LABEL_39;
                        case 24:
                          goto LABEL_27;
                        case 25:
                          v121 = OUTLINED_FUNCTION_9_45();
                          v125 = testFldeq(v121, v122, v123, v124);
                          v42 = v24;
                          if (!v125)
                          {
                            v126 = advance_tok(a1);
                            v96 = v24;
                            v42 = v24;
                            if (!v126)
                            {
                              goto LABEL_43;
                            }
                          }

                          goto LABEL_45;
                        case 26:
                          goto LABEL_43;
                        case 27:
                          v178 = v24;
                          goto LABEL_95;
                        case 28:
                          goto LABEL_103;
                        case 29:
                          v138 = OUTLINED_FUNCTION_1_49();
                          v141 = testFldeq(v138, v139, v140, 1);
                          v42 = v24;
                          if (!v141)
                          {
                            v142 = OUTLINED_FUNCTION_6_46();
                            v145 = testFldeq(v142, v143, 6, v144);
                            v42 = v24;
                            if (!v145)
                            {
                              v146 = advance_tok(a1);
                              v100 = v24;
                              v42 = v24;
                              if (!v146)
                              {
                                goto LABEL_104;
                              }
                            }
                          }

                          goto LABEL_45;
                        case 30:
                          goto LABEL_104;
                        case 31:
                          v147 = OUTLINED_FUNCTION_1_49();
                          v150 = testFldeq(v147, v148, v149, 1);
                          v42 = v24;
                          if (v150)
                          {
                            goto LABEL_45;
                          }

                          v151 = OUTLINED_FUNCTION_6_46();
                          v154 = testFldeq(v151, v152, 6, v153);
                          v42 = v24;
                          if (v154)
                          {
                            goto LABEL_45;
                          }

                          v177 = advance_tok(a1);
                          goto LABEL_107;
                        case 32:
                          goto LABEL_108;
                        case 33:
                        case 44:
                          goto LABEL_112;
                        case 34:
                        case 45:
                          goto LABEL_115;
                        case 35:
                          goto LABEL_116;
                        case 36:
                          goto LABEL_97;
                        case 37:
                          v179 = v24;
                          goto LABEL_117;
                        case 38:
                          v171 = OUTLINED_FUNCTION_16_42();
                          bspush_ca_scan(v171, v172);
                          v160 = OUTLINED_FUNCTION_5_47();
                          v163 = 3;
                          goto LABEL_81;
                        case 39:
                          goto LABEL_118;
                        case 40:
                          v160 = OUTLINED_FUNCTION_5_47();
                          v163 = 1;
LABEL_81:
                          v173 = testFldeq(v160, v161, v162, v163);
                          v101 = v24;
                          v42 = v24;
                          if (!v173)
                          {
                            goto LABEL_118;
                          }

                          goto LABEL_45;
                        case 41:
                          v110 = OUTLINED_FUNCTION_16_42();
                          bspush_ca_scan(v110, v111);
                          v112 = OUTLINED_FUNCTION_5_47();
                          v115 = 3;
                          goto LABEL_54;
                        case 42:
                          goto LABEL_123;
                        case 43:
                          v112 = OUTLINED_FUNCTION_5_47();
                          v115 = 1;
LABEL_54:
                          v120 = testFldeq(v112, v113, v114, v115);
                          v102 = v24;
                          v42 = v24;
                          if (!v120)
                          {
                            goto LABEL_123;
                          }

                          goto LABEL_45;
                        case 46:
                          goto LABEL_98;
                        case 47:
                          v165 = OUTLINED_FUNCTION_16_42();
                          bspush_ca_scan(v165, v166);
                          v167 = OUTLINED_FUNCTION_5_47();
                          v170 = 1;
                          goto LABEL_84;
                        case 48:
                          goto LABEL_85;
                        case 49:
                          v167 = OUTLINED_FUNCTION_5_47();
                          v170 = 3;
LABEL_84:
                          v174 = testFldeq(v167, v168, v169, v170);
                          v103 = v24;
                          v42 = v24;
                          if (!v174)
                          {
                            goto LABEL_85;
                          }

                          goto LABEL_45;
                        default:
                          goto LABEL_3;
                      }
                    }

                    v233 = (*(a1 + 4782) + 150);
                    v234 = *(a1 + 4778);
                    if (v234 >= 1 && v233 >= 1)
                    {
                      v213 = (v234 + v233);
                      goto LABEL_111;
                    }
                  }

                  else
                  {
LABEL_103:
                    OUTLINED_FUNCTION_26_34(28, v239, v241, v243, v245, v247, v249, v251, v253, v255, v257, v259, v261, v263, v265, v267, v269, v271, v273, v275, v277, v279, v281, v283, v284);
                    v202 = OUTLINED_FUNCTION_16_42();
                    bspush_ca_scan(v202, v203);
                    OUTLINED_FUNCTION_1_49();
                    v204 = test_string_s();
                    v42 = v24;
                    v100 = v24;
                    if (v204)
                    {
                      goto LABEL_45;
                    }

LABEL_104:
                    v24 = v100;
                    v205 = OUTLINED_FUNCTION_15_42();
                    if (lpta_loadp_setscan_r(v205, v206) || advance_tok(a1))
                    {
                      goto LABEL_121;
                    }

                    v207 = OUTLINED_FUNCTION_16_42();
                    bspush_ca_scan(v207, v208);
                    OUTLINED_FUNCTION_1_49();
                    v177 = test_string_s();
LABEL_107:
                    v42 = v24;
                    if (v177)
                    {
                      goto LABEL_45;
                    }

LABEL_108:
                    OUTLINED_FUNCTION_32_29();
                    if (v210 == v211)
                    {
                      v212 = *(a1 + 4782);
                      if (v212 >= 1)
                      {
                        v213 = v212 + v209;
LABEL_111:
                        *(a1 + 4778) = vcvtd_n_f64_u32(v213, 1uLL);
                      }
                    }
                  }

LABEL_112:
                  *(a1 + 4782) = -1;
                  v214 = *(a1 + 4786);
                  if (v214 >= 1 && *(a1 + 4790) >= 1)
                  {
                    OUTLINED_FUNCTION_29_31(v214);
                    *(a1 + 4786) = v215;
                  }

LABEL_115:
                  *(a1 + 4790) = -1;
                  goto LABEL_116;
                }

LABEL_27:
                v70 = OUTLINED_FUNCTION_16_42();
                starttest(v70, v71);
                v72 = OUTLINED_FUNCTION_3_48();
                if (lpta_loadp_setscan_r(v72, v73))
                {
                  goto LABEL_94;
                }

                v74 = OUTLINED_FUNCTION_1_49();
                if (testFldeq(v74, v75, v76, 1) || advance_tok(a1))
                {
                  goto LABEL_121;
                }

                *(a1 + 4782) = 920;
                v77 = 2540;
LABEL_41:
                *(a1 + 4790) = v77;
                goto LABEL_94;
              }

              v82 = OUTLINED_FUNCTION_0_50();
              if (testFldeq(v82, v83, v84, v85) || advance_tok(a1))
              {
                goto LABEL_121;
              }

              OUTLINED_FUNCTION_16_42();
              bspush_ca_scan_boa();
              v86 = OUTLINED_FUNCTION_16_42();
              bspush_ca_scan(v86, v87);
              v88 = OUTLINED_FUNCTION_7_46();
              v91 = testFldeq(v88, v89, v90, 27);
              v42 = v24;
              v92 = v24;
              if (v91)
              {
                goto LABEL_45;
              }

LABEL_39:
              v24 = v92;
              v81 = advance_tok(a1);
LABEL_33:
              if (v81)
              {
                v42 = v24;
              }

              else
              {
                v42 = 1;
              }

              goto LABEL_45;
            }
          }

          OUTLINED_FUNCTION_16_42();
          bspush_ca_scan_boa();
LABEL_32:
          v78 = OUTLINED_FUNCTION_16_42();
          v81 = test_synch(v78, v79, 1u, v80);
          goto LABEL_33;
        }

        v36 = OUTLINED_FUNCTION_21_36();
        bspush_ca_scan(v36, v37);
        v38 = OUTLINED_FUNCTION_14_43();
        v40 = testFldeq(v38, v39, 5, 1);
        v41 = v24;
        v42 = v24;
        if (v40)
        {
          goto LABEL_45;
        }

LABEL_14:
        v24 = v41;
        if (advance_tok(a1))
        {
          goto LABEL_121;
        }

        *(a1 + 4778) = 1450;
        v43 = 2540;
      }

      else
      {
        v43 = 2140;
      }

      break;
    }

    *(a1 + 4786) = v43;
    goto LABEL_21;
  }

LABEL_3:
  vretproc(a1);
  result = 94;
LABEL_4:
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ga_ph_o(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v133 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_18_39(a1, a2, a3, a4, a5, a6, a7, a8, v76);
  OUTLINED_FUNCTION_11_44(v10, v11, v12, v13, v14, v15, v16, v17, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131);
  v18 = setjmp(v8);
  if (!v18 && !OUTLINED_FUNCTION_4_47(v18, v19, v20, v21, v22, v23, v24, v25, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, *v124, v124[4], *v126, *&v126[4], v126[6], v128, SWORD2(v128), SBYTE6(v128), SHIBYTE(v128), v130, v132))
  {
    fence_49(a1);
    *(a1 + 4770) = 550;
    *(a1 + 4774) = 400;
    OUTLINED_FUNCTION_33_28();
    *(a1 + 4782) = 850;
    OUTLINED_FUNCTION_24_34(2400);
    v28 = OUTLINED_FUNCTION_2_49();
    if (lpta_loadp_setscan_l(v28, v29) || (OUTLINED_FUNCTION_1_49(), test_string_s()))
    {
      v30 = 0;
      while (2)
      {
        v31 = OUTLINED_FUNCTION_16_42();
        starttest(v31, v32);
        v33 = OUTLINED_FUNCTION_2_49();
        if (lpta_loadp_setscan_l(v33, v34))
        {
          v35 = v30;
LABEL_10:
          v36 = OUTLINED_FUNCTION_10_44();
          starttest(v36, v37);
          v38 = OUTLINED_FUNCTION_17_40();
          if (lpta_loadp_setscan_l(v38, v39))
          {
            v30 = v35;
          }

          else
          {
            v44 = OUTLINED_FUNCTION_16_42();
            bspush_ca_scan(v44, v45);
            v46 = OUTLINED_FUNCTION_5_47();
            v49 = testFldeq(v46, v47, v48, 2);
            v50 = v35;
            v30 = v35;
            if (v49)
            {
              goto LABEL_30;
            }

LABEL_19:
            v30 = v50;
            if (advance_tok(a1))
            {
LABEL_30:
              v62 = v30;
LABEL_31:
              v63 = *(a1 + 104);
              if (v63)
              {
                v64 = OUTLINED_FUNCTION_23_36(v63);
                v62 = v65;
              }

              else
              {
                v64 = vback(a1, v62);
                v62 = 0;
              }

              v43 = v62;
              v50 = v62;
              switch(v64)
              {
                case 1:
                  v30 = v62;
                  continue;
                case 2:
                  v30 = v62;
                  goto LABEL_22;
                case 3:
                  v35 = v62;
                  goto LABEL_10;
                case 4:
                  OUTLINED_FUNCTION_1_49();
                  v66 = test_string_s();
                  v43 = v62;
                  if (!v66)
                  {
                    goto LABEL_13;
                  }

                  goto LABEL_31;
                case 5:
                  goto LABEL_13;
                case 6:
                  bspush_ca_scan(a1, 8);
                  v67 = OUTLINED_FUNCTION_5_47();
                  v70 = 3;
                  goto LABEL_41;
                case 7:
                  goto LABEL_19;
                case 8:
                  v67 = OUTLINED_FUNCTION_5_47();
                  v70 = 4;
LABEL_41:
                  v71 = testFldeq(v67, v68, v69, v70);
                  v50 = v62;
                  if (!v71)
                  {
                    goto LABEL_19;
                  }

                  goto LABEL_31;
                case 9:
                  v30 = v62;
                  goto LABEL_24;
                case 10:
                case 15:
                  goto LABEL_51;
                case 11:
                  goto LABEL_43;
                case 12:
                  goto LABEL_46;
                case 13:
                  bspop_boa(a1);
                  if (advance_tok(a1))
                  {
                    goto LABEL_31;
                  }

                  *(a1 + 4770) -= 100;
                  *(a1 + 4774) = 450;
                  *(a1 + 4778) -= 350;
                  v75 = -2;
                  goto LABEL_49;
                case 14:
                  v30 = v62;
                  goto LABEL_28;
                default:
                  goto LABEL_3;
              }
            }

            *(a1 + 4778) = 1200;
          }
        }

        else
        {
          v40 = OUTLINED_FUNCTION_16_42();
          bspush_ca_scan(v40, v41);
          OUTLINED_FUNCTION_1_49();
          v42 = test_string_s();
          v43 = v30;
          if (v42)
          {
            goto LABEL_30;
          }

LABEL_13:
          *(a1 + 4778) = 1250;
          v30 = v43;
        }

        break;
      }
    }

    else
    {
      *(a1 + 4778) = 1000;
      *(a1 + 4786) = 2300;
      v30 = 0;
    }

LABEL_22:
    v51 = OUTLINED_FUNCTION_3_48();
    if (lpta_loadp_setscan_r(v51, v52) || (OUTLINED_FUNCTION_1_49(), test_string_s()))
    {
LABEL_24:
      v53 = OUTLINED_FUNCTION_3_48();
      if (lpta_loadp_setscan_r(v53, v54) || (OUTLINED_FUNCTION_1_49(), test_string_s()))
      {
LABEL_43:
        v72 = OUTLINED_FUNCTION_3_48();
        if (lpta_loadp_setscan_r(v72, v73))
        {
          goto LABEL_51;
        }

        OUTLINED_FUNCTION_1_49();
        if (test_string_s())
        {
          goto LABEL_51;
        }

        v75 = -2;
        v74 = 950;
      }

      else
      {
        v55 = OUTLINED_FUNCTION_16_42();
        starttest(v55, v56);
        v57 = OUTLINED_FUNCTION_3_48();
        if (!lpta_loadp_setscan_r(v57, v58))
        {
          OUTLINED_FUNCTION_16_42();
          bspush_ca_scan_boa();
LABEL_28:
          v59 = OUTLINED_FUNCTION_16_42();
          if (!test_synch(v59, v60, 1u, v61))
          {
            v30 = 1;
          }

          goto LABEL_30;
        }

LABEL_46:
        v75 = 2500;
LABEL_49:
        v74 = 780;
      }
    }

    else
    {
      v75 = 2300;
      v74 = 750;
    }

    *(a1 + 4782) = v74;
    *(a1 + 4790) = v75;
LABEL_51:
    vretproc(a1);
    result = 0;
    goto LABEL_4;
  }

LABEL_3:
  vretproc(a1);
  result = 94;
LABEL_4:
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ga_ph_w(uint64_t a1)
{
  OUTLINED_FUNCTION_13_43(*MEMORY[0x277D85DE8], v22);
  OUTLINED_FUNCTION_11_44(v3, v4, v5, v6, v7, v8, v9, v10, v23, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_4_47(v11, v12, v13, v14, v15, v16, v17, v18, v24, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, *v70, v70[4], *v72, *&v72[4], v72[6], v74, SWORD2(v74), SBYTE6(v74), SHIBYTE(v74), v76, v78))
  {
    v19 = 94;
  }

  else
  {
    fence_49(a1);
    eng_bilab_Fv(a1);
    v19 = 0;
    *(a1 + 4574) = 500;
  }

  vretproc(a1);
  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

uint64_t ga_ph_n(uint64_t a1)
{
  OUTLINED_FUNCTION_13_43(*MEMORY[0x277D85DE8], v60);
  OUTLINED_FUNCTION_11_44(v3, v4, v5, v6, v7, v8, v9, v10, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_4_47(v11, v12, v13, v14, v15, v16, v17, v18, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, *v108, v108[4], *v110, *&v110[4], v110[6], v112, SWORD2(v112), SBYTE6(v112), SHIBYTE(v112), v114, v116))
  {
LABEL_3:
    vretproc(a1);
    result = 94;
    goto LABEL_4;
  }

  fence_49(a1);
  OUTLINED_FUNCTION_20_37(300);
  *(a1 + 4778) = 1600;
  OUTLINED_FUNCTION_24_34(2500);
  v21 = OUTLINED_FUNCTION_12_43();
  starttest(v21, v22);
  v23 = OUTLINED_FUNCTION_3_48();
  if (!lpta_loadp_setscan_r(v23, v24))
  {
    OUTLINED_FUNCTION_16_42();
    bspush_ca_scan_boa();
    v25 = 0;
LABEL_11:
    v36 = OUTLINED_FUNCTION_16_42();
    if (!test_synch(v36, v37, 1u, v38))
    {
      v25 = 1;
    }

LABEL_19:
    while (2)
    {
      v44 = *(a1 + 104);
      if (v44)
      {
        v45 = OUTLINED_FUNCTION_23_36(v44);
        v25 = v46;
      }

      else
      {
        v45 = vback(a1, v25);
        v25 = 0;
      }

      v35 = v25;
      switch(v45)
      {
        case 1:
          goto LABEL_7;
        case 2:
          bspop_boa(a1);
          OUTLINED_FUNCTION_1_49();
          if (test_string_s())
          {
            continue;
          }

          v51 = 1600;
          break;
        case 3:
          goto LABEL_11;
        case 4:
        case 7:
          goto LABEL_29;
        case 5:
          v47 = OUTLINED_FUNCTION_7_46();
          v50 = testFldeq(v47, v48, v49, 25);
          v35 = v25;
          if (!v50)
          {
            goto LABEL_13;
          }

          continue;
        case 6:
          goto LABEL_13;
        case 8:
          bspop_boa(a1);
          v51 = 2000;
          break;
        case 9:
          goto LABEL_31;
        default:
          goto LABEL_3;
      }

      break;
    }

    *(a1 + 4782) = v51;
    goto LABEL_29;
  }

  v25 = 0;
LABEL_7:
  v26 = OUTLINED_FUNCTION_16_42();
  starttest(v26, v27);
  v28 = OUTLINED_FUNCTION_3_48();
  if (!lpta_loadp_setscan_r(v28, v29))
  {
    v30 = OUTLINED_FUNCTION_21_36();
    bspush_ca_scan(v30, v31);
    v32 = OUTLINED_FUNCTION_14_43();
    v34 = testFldeq(v32, v33, 5, 3);
    v35 = v25;
    if (v34)
    {
      goto LABEL_19;
    }

LABEL_13:
    v39 = v35;
    if (advance_tok(a1))
    {
      v25 = v39;
      goto LABEL_19;
    }

    v40 = OUTLINED_FUNCTION_16_42();
    starttest_e(v40, v41);
    v42 = OUTLINED_FUNCTION_3_48();
    if (!lpta_loadp_setscan_r(v42, v43))
    {
      OUTLINED_FUNCTION_16_42();
      bspush_ca_scan_boa();
      OUTLINED_FUNCTION_1_49();
      if (test_string_s())
      {
        v25 = v39;
      }

      else
      {
        v25 = 1;
      }

      goto LABEL_19;
    }
  }

LABEL_29:
  *(a1 + 4570) = 200;
  *(a1 + 4602) = 200;
  *(a1 + 4606) = 320;
  *(a1 + 4914) = 4;
  v52 = OUTLINED_FUNCTION_22_36();
  if (!if_testeq_v_i(v52, v53, v54, v55, v56, v57, v58, v59))
  {
    *(a1 + 4570) = 350;
  }

LABEL_31:
  vretproc(a1);
  result = 0;
LABEL_4:
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ga_ph_U(uint64_t a1)
{
  OUTLINED_FUNCTION_13_43(*MEMORY[0x277D85DE8], v40);
  OUTLINED_FUNCTION_11_44(v3, v4, v5, v6, v7, v8, v9, v10, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_4_47(v11, v12, v13, v14, v15, v16, v17, v18, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, *v88, v88[4], *v90, *&v90[4], v90[6], v92, SWORD2(v92), SBYTE6(v92), SHIBYTE(v92), v94, v96))
  {
LABEL_3:
    v19 = 94;
    goto LABEL_4;
  }

  fence_49(a1);
  OUTLINED_FUNCTION_20_37(440);
  OUTLINED_FUNCTION_28_32(1150);
  OUTLINED_FUNCTION_24_34(2300);
  v22 = OUTLINED_FUNCTION_2_49();
  if (!lpta_loadp_setscan_l(v22, v23))
  {
    OUTLINED_FUNCTION_1_49();
    if (!test_string_s())
    {
      *(a1 + 4770) = 390;
LABEL_17:
      *(a1 + 4778) = 950;
      goto LABEL_18;
    }
  }

  while (2)
  {
    v24 = OUTLINED_FUNCTION_2_49();
    if (!lpta_loadp_setscan_l(v24, v25))
    {
      OUTLINED_FUNCTION_1_49();
      if (!test_string_s())
      {
        *(a1 + 4786) = 2600;
        break;
      }
    }

LABEL_9:
    v26 = OUTLINED_FUNCTION_10_44();
    starttest(v26, v27);
    v28 = OUTLINED_FUNCTION_17_40();
    if (!lpta_loadp_setscan_l(v28, v29))
    {
      v30 = OUTLINED_FUNCTION_0_50();
      if (testFldeq(v30, v31, v32, v33) || advance_tok(a1))
      {
        v34 = *(a1 + 104);
        if (v34)
        {
          v35 = OUTLINED_FUNCTION_23_36(v34);
        }

        else
        {
          v36 = OUTLINED_FUNCTION_37_24();
          v35 = vback(v36, v37);
        }

        switch(v35)
        {
          case 1:
            continue;
          case 2:
            goto LABEL_18;
          case 3:
            goto LABEL_9;
          case 4:
            goto LABEL_20;
          default:
            goto LABEL_3;
        }
      }

      goto LABEL_17;
    }

    break;
  }

LABEL_18:
  v38 = OUTLINED_FUNCTION_3_48();
  if (lpta_loadp_setscan_r(v38, v39) || (OUTLINED_FUNCTION_1_49(), test_string_s()))
  {
LABEL_20:
    v19 = 0;
  }

  else
  {
    v19 = 0;
    *(a1 + 4770) -= 40;
    *(a1 + 4774) = 400;
    OUTLINED_FUNCTION_31_31();
    *(a1 + 4782) = 850;
    *(a1 + 4786) += 300;
    *(a1 + 4790) = 2600;
  }

LABEL_4:
  vretproc(a1);
  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

uint64_t ga_ph_m(_WORD *a1)
{
  OUTLINED_FUNCTION_13_43(*MEMORY[0x277D85DE8], v29);
  OUTLINED_FUNCTION_11_44(v3, v4, v5, v6, v7, v8, v9, v10, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_4_47(v11, v12, v13, v14, v15, v16, v17, v18, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, *v77, v77[4], *v79, *&v79[4], v79[6], v81, SWORD2(v81), SBYTE6(v81), SHIBYTE(v81), v83, v85))
  {
    vretproc(a1);
    result = 94;
  }

  else
  {
    fence_49(a1);
    OUTLINED_FUNCTION_20_37(300);
    a1[2389] = 1200;
    a1[2393] = 2400;
    a1[2285] = 200;
    a1[2301] = 200;
    a1[2303] = 320;
    a1[2457] = 4;
    v21 = OUTLINED_FUNCTION_22_36();
    if (!if_testeq_v_i(v21, v22, v23, v24, v25, v26, v27, v28))
    {
      a1[2285] = 350;
    }

    vretproc(a1);
    result = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t get_GA_nuc_AV(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v181 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_18_39(a1, a2, a3, a4, a5, a6, a7, a8, v128);
  OUTLINED_FUNCTION_19_39();
  bzero(v180, v9);
  v10 = setjmp(v180);
  if (v10 || OUTLINED_FUNCTION_25_34(v10, v11, v12, v13, v14, v15, v16, v17, v129, v131, v133, v135, v137, v139, v141, v143, v145, v147, v149, v151, v153, v155, v157, v159, v161, v163, v165, v167, v169, v171, v173, 0, 0, *v176, v176[4], *v177, *&v177[4], v177[6], v178, SWORD2(v178), SBYTE6(v178), SHIBYTE(v178), v179, v180[0]))
  {
LABEL_3:
    vretproc(a1);
    result = 94;
    goto LABEL_4;
  }

  v20 = OUTLINED_FUNCTION_27_33();
  push_ptr_init(v20, v21);
  fence_49(a1);
  v22 = 0;
  *(a1 + 4558) = 0;
  v23 = OUTLINED_FUNCTION_8_46();
  if (!lpta_loadp_setscan_r(v23, v24))
  {
    OUTLINED_FUNCTION_1_49();
    if (!test_string_s())
    {
      *(a1 + 4554) = 50;
      v22 = 0;
      goto LABEL_89;
    }

    v22 = 0;
  }

  while (2)
  {
    v25 = OUTLINED_FUNCTION_8_46();
    if (!lpta_loadp_setscan_r(v25, v26))
    {
      OUTLINED_FUNCTION_1_49();
      if (!test_string_s())
      {
        v54 = 49;
        goto LABEL_88;
      }
    }

LABEL_10:
    v27 = OUTLINED_FUNCTION_8_46();
    if (!lpta_loadp_setscan_r(v27, v28))
    {
      OUTLINED_FUNCTION_1_49();
      if (!test_string_s())
      {
        goto LABEL_28;
      }
    }

LABEL_12:
    v29 = OUTLINED_FUNCTION_8_46();
    if (lpta_loadp_setscan_r(v29, v30) || (OUTLINED_FUNCTION_1_49(), test_string_s()))
    {
LABEL_14:
      v31 = OUTLINED_FUNCTION_8_46();
      if (!lpta_loadp_setscan_r(v31, v32))
      {
        OUTLINED_FUNCTION_1_49();
        if (!test_string_s())
        {
          goto LABEL_28;
        }
      }

LABEL_16:
      v33 = OUTLINED_FUNCTION_16_42();
      starttest(v33, v34);
      v35 = OUTLINED_FUNCTION_8_46();
      if (lpta_loadp_setscan_r(v35, v36))
      {
LABEL_17:
        v37 = OUTLINED_FUNCTION_8_46();
        if (!lpta_loadp_setscan_r(v37, v38))
        {
          OUTLINED_FUNCTION_1_49();
          if (!test_string_s())
          {
            v54 = 57;
            goto LABEL_88;
          }
        }

LABEL_19:
        v39 = OUTLINED_FUNCTION_16_42();
        starttest(v39, v40);
        v41 = OUTLINED_FUNCTION_8_46();
        if (lpta_loadp_setscan_r(v41, v42))
        {
LABEL_20:
          v43 = OUTLINED_FUNCTION_8_46();
          if (lpta_loadp_setscan_r(v43, v44) || (OUTLINED_FUNCTION_1_49(), test_string_s()))
          {
LABEL_22:
            v45 = OUTLINED_FUNCTION_8_46();
            if (lpta_loadp_setscan_r(v45, v46) || (OUTLINED_FUNCTION_1_49(), test_string_s()))
            {
LABEL_24:
              v47 = OUTLINED_FUNCTION_8_46();
              if (lpta_loadp_setscan_r(v47, v48) || (OUTLINED_FUNCTION_1_49(), test_string_s()))
              {
LABEL_26:
                v49 = v22;
                v50 = OUTLINED_FUNCTION_16_42();
                starttest(v50, v51);
                v52 = OUTLINED_FUNCTION_8_46();
                if (lpta_loadp_setscan_r(v52, v53))
                {
LABEL_27:
                  *(a1 + 4554) = 57;
                  v22 = v49;
                  break;
                }

                v63 = OUTLINED_FUNCTION_16_42();
                bspush_ca_scan(v63, v64);
                OUTLINED_FUNCTION_1_49();
                if (test_string_s())
                {
                  goto LABEL_64;
                }

LABEL_69:
                v22 = v49;
                *(a1 + 136) = 1;
                *(a1 + 112) = *(a1 + 824);
                *(a1 + 128) = 0;
                if (!test_ptr(a1))
                {
                  *(a1 + 4914) = 4;
                  v104 = OUTLINED_FUNCTION_22_36();
                  if (if_testeq_v_i(v104, v105, v106, v107, v108, v109, v110, v111))
                  {
LABEL_71:
                    v54 = 55;
                  }

                  else
                  {
                    v54 = 53;
                  }

                  goto LABEL_88;
                }

LABEL_64:
                v101 = *(a1 + 104);
                if (v101)
                {
                  v102 = OUTLINED_FUNCTION_23_36(v101);
                  v22 = v103;
                }

                else
                {
                  v102 = vback(a1, v22);
                  v22 = 0;
                }

                v68 = v22;
                v70 = v22;
                v72 = v22;
                v89 = v22;
                v49 = v22;
                switch(v102)
                {
                  case 1:
                    continue;
                  case 2:
                  case 9:
                  case 31:
                  case 39:
                    goto LABEL_89;
                  case 3:
                    goto LABEL_10;
                  case 4:
                    goto LABEL_12;
                  case 5:
                    goto LABEL_14;
                  case 6:
                    goto LABEL_34;
                  case 7:
                    goto LABEL_42;
                  case 8:
                    goto LABEL_43;
                  case 10:
                    goto LABEL_16;
                  case 11:
                    goto LABEL_17;
                  case 12:
                    goto LABEL_44;
                  case 13:
                    goto LABEL_45;
                  case 14:
                    goto LABEL_19;
                  case 15:
                    goto LABEL_20;
                  case 16:
                    goto LABEL_46;
                  case 17:
                    goto LABEL_47;
                  case 18:
                    goto LABEL_50;
                  case 19:
                    goto LABEL_78;
                  case 20:
                    goto LABEL_52;
                  case 21:
                    v79 = v22;
                    goto LABEL_60;
                  case 22:
                    bspop_boa(a1);
                    v73 = 54;
                    goto LABEL_77;
                  case 23:
                    goto LABEL_62;
                  case 24:
                    v85 = v22;
                    goto LABEL_74;
                  case 25:
                    goto LABEL_53;
                  case 26:
                    v112 = OUTLINED_FUNCTION_16_42();
                    bspush_ca_scan(v112, v113);
                    goto LABEL_54;
                  case 27:
                    goto LABEL_55;
                  case 28:
                    goto LABEL_54;
                  case 29:
                    goto LABEL_76;
                  case 30:
                    goto LABEL_81;
                  case 32:
                    goto LABEL_22;
                  case 33:
                    goto LABEL_24;
                  case 34:
                    goto LABEL_26;
                  case 35:
                    v49 = v22;
                    goto LABEL_27;
                  case 36:
                    OUTLINED_FUNCTION_1_49();
                    v49 = v22;
                    if (!test_string_s())
                    {
                      goto LABEL_69;
                    }

                    goto LABEL_64;
                  case 37:
                    goto LABEL_69;
                  case 38:
                    goto LABEL_71;
                  case 40:
                    goto LABEL_90;
                  case 41:
                    goto LABEL_92;
                  case 42:
                    goto LABEL_96;
                  case 43:
                    goto LABEL_94;
                  case 44:
                    goto LABEL_95;
                  case 45:
                    goto LABEL_97;
                  default:
                    goto LABEL_3;
                }
              }

              v54 = 56;
            }

            else
            {
              v54 = 59;
            }

LABEL_88:
            *(a1 + 4554) = v54;
            break;
          }

LABEL_28:
          v54 = 54;
          goto LABEL_88;
        }

        v57 = OUTLINED_FUNCTION_16_42();
        bspush_ca_scan(v57, v58);
LABEL_46:
        OUTLINED_FUNCTION_1_49();
        v71 = test_string_s();
        v72 = v22;
        if (v71)
        {
          goto LABEL_64;
        }

LABEL_47:
        if (*(a1 + 3238) <= *(a1 + 742))
        {
          v22 = v72;
LABEL_50:
          v74 = OUTLINED_FUNCTION_16_42();
          starttest(v74, v75);
          v76 = OUTLINED_FUNCTION_8_46();
          if (!lpta_loadp_setscan_r(v76, v77))
          {
            v78 = advance_tok(a1);
            v79 = v22;
            if (!v78)
            {
LABEL_60:
              v22 = v79;
              v95 = OUTLINED_FUNCTION_16_42();
              if (!test_synch(v95, v96, 1u, v97))
              {
                OUTLINED_FUNCTION_16_42();
                bspush_ca_scan_boa();
LABEL_62:
                v98 = OUTLINED_FUNCTION_16_42();
                if (!test_synch(v98, v99, 1u, v100))
                {
                  v22 = 1;
                }
              }

              goto LABEL_64;
            }
          }

LABEL_52:
          v80 = OUTLINED_FUNCTION_16_42();
          starttest(v80, v81);
          v82 = OUTLINED_FUNCTION_8_46();
          v84 = lpta_loadp_setscan_l(v82, v83);
          v85 = v22;
          if (v84)
          {
LABEL_74:
            v22 = v85;
            v114 = OUTLINED_FUNCTION_16_42();
            starttest(v114, v115);
            *(a1 + 136) = 1;
            *(a1 + 112) = *(a1 + 808);
            *(a1 + 128) = 0;
            OUTLINED_FUNCTION_36_25();
            if (lpta_tstctxtl() || (v116 = OUTLINED_FUNCTION_36_25(), setscan_l(v116), v117))
            {
LABEL_76:
              v73 = 53;
            }

            else
            {
LABEL_81:
              OUTLINED_FUNCTION_26_34(30, v130, v132, v134, v136, v138, v140, v142, v144, v146, v148, v150, v152, v154, v156, v158, v160, v162, v164, v166, v168, v170, v172, v174, v175);
              OUTLINED_FUNCTION_36_25();
              if (test_string_i())
              {
                goto LABEL_64;
              }

              v120 = OUTLINED_FUNCTION_27_33();
              if (lpta_loadp_setscan_r(v120, v121))
              {
                goto LABEL_64;
              }

              OUTLINED_FUNCTION_36_25();
              if (test_string_i())
              {
                goto LABEL_64;
              }

              v73 = 51;
            }
          }

          else
          {
LABEL_53:
            OUTLINED_FUNCTION_26_34(25, v130, v132, v134, v136, v138, v140, v142, v144, v146, v148, v150, v152, v154, v156, v158, v160, v162, v164, v166, v168, v170, v172, v174, v175);
            v86 = OUTLINED_FUNCTION_16_42();
            bspush_ca_scan(v86, v87);
LABEL_54:
            OUTLINED_FUNCTION_1_49();
            v88 = test_string_s();
            v89 = v22;
            if (v88)
            {
              goto LABEL_64;
            }

LABEL_55:
            v22 = v89;
            v90 = OUTLINED_FUNCTION_15_42();
            if (lpta_loadp_setscan_r(v90, v91))
            {
              goto LABEL_64;
            }

            v92 = OUTLINED_FUNCTION_7_46();
            if (testFldeq(v92, v93, v94, 35) || advance_tok(a1))
            {
              goto LABEL_64;
            }

            v73 = 49;
          }
        }

        else
        {
          v73 = 55;
          v22 = v72;
        }

LABEL_77:
        *(a1 + 4554) = v73;
LABEL_78:
        v118 = OUTLINED_FUNCTION_8_46();
        if (!lpta_loadp_setscan_r(v118, v119))
        {
          OUTLINED_FUNCTION_1_49();
          if (!test_string_s())
          {
            v54 = *(a1 + 4554) - 1;
            goto LABEL_88;
          }
        }
      }

      else
      {
        v55 = OUTLINED_FUNCTION_16_42();
        bspush_ca_scan(v55, v56);
LABEL_44:
        OUTLINED_FUNCTION_1_49();
        v69 = test_string_s();
        v70 = v22;
        if (v69)
        {
          goto LABEL_64;
        }

LABEL_45:
        *(a1 + 4554) = 55;
        v22 = v70;
      }
    }

    else
    {
      v59 = OUTLINED_FUNCTION_16_42();
      starttest(v59, v60);
      v61 = OUTLINED_FUNCTION_8_46();
      if (lpta_loadp_setscan_r(v61, v62) || advance_tok(a1))
      {
LABEL_34:
        v54 = 52;
        goto LABEL_88;
      }

      v65 = OUTLINED_FUNCTION_16_42();
      bspush_ca_scan(v65, v66);
LABEL_42:
      OUTLINED_FUNCTION_1_49();
      v67 = test_string_s();
      v68 = v22;
      if (v67)
      {
        goto LABEL_64;
      }

LABEL_43:
      *(a1 + 4554) = 56;
      v22 = v68;
    }

    break;
  }

LABEL_89:
  adjust_AV_for_fem_voice(a1);
LABEL_90:
  if (!*(a1 + 4558))
  {
    *(a1 + 4558) = *(a1 + 4554) - 2;
  }

LABEL_92:
  v122 = OUTLINED_FUNCTION_16_42();
  starttest(v122, v123);
  v124 = OUTLINED_FUNCTION_15_42();
  if (lpta_loadp_setscan_l(v124, v125))
  {
    goto LABEL_96;
  }

  v126 = OUTLINED_FUNCTION_16_42();
  bspush_ca_scan(v126, v127);
LABEL_94:
  OUTLINED_FUNCTION_1_49();
  if (test_string_s())
  {
    goto LABEL_64;
  }

LABEL_95:
  *(a1 + 4558) -= 2;
LABEL_96:
  adjust_nuc_AV_for_unstr(a1);
LABEL_97:
  vretproc(a1);
  result = 0;
LABEL_4:
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t OUTLINED_FUNCTION_4_47(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, char a33, int a34, __int16 a35, char a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, char a42)
{

  return ventproc(v42, &a9, &a40, &a36, &a33, &a42);
}

void OUTLINED_FUNCTION_11_44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{

  bzero(&a36, 0xC0uLL);
}

void OUTLINED_FUNCTION_13_43(uint64_t a1@<X8>, uint64_t a2)
{
  *(v2 - 40) = a1;

  bzero(&a2, 0xB8uLL);
}

void OUTLINED_FUNCTION_18_39(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  bzero(&a9, 0xB8uLL);
}

uint64_t OUTLINED_FUNCTION_25_34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, char a35, int a36, __int16 a37, char a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, char a44)
{

  return ventproc(v44, &a9, &a42, &a38, &a35, &a44);
}

double OUTLINED_FUNCTION_26_34@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{

  *&result = savescptr(v25, a1, &a25).n128_u64[0];
  return result;
}

BOOL OUTLINED_FUNCTION_30_31()
{

  return testFldeq(v0, v1, 10, 1);
}

uint64_t GAroots(uint64_t a1, __int16 *a2, __int16 *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v23[0] = 0;
  v23[1] = 0;
  v22[0] = 0;
  v22[1] = 0;
  bzero(v21, 0xB8uLL);
  bzero(v27, 0xC0uLL);
  if (setjmp(v27) || ventproc(a1, v21, v26, v25, v24, v27) || (get_parm(a1, v23, a2, -6), get_parm(a1, v22, a3, -6), *(*(a1 + 192) + 8121) = 1, memset(*(a1 + 264), *(a1 + 288), *(a1 + 288)), **(a1 + 248) = 5, *(*(a1 + 264) + 5) = 0, lpta_rpta_loadp(a1, v23, v22), actd_lookup(a1, 24, 0, 0)))
  {
LABEL_4:
    v6 = 94;
  }

  else
  {
    v10 = 5;
    v11 = 0;
LABEL_7:
    starttest(a1, 46);
    if (*(a1 + 4042) == 1)
    {
      v6 = 0;
    }

    else
    {
LABEL_8:
      actd_goto(a1);
      v12 = v11;
      v13 = v10;
      while (2)
      {
        v10 = v13;
        v11 = v12;
        v14 = *(a1 + 104);
        if (v14)
        {
          *(a1 + 104) = 0;
          v15 = v14;
        }

        else
        {
          v15 = vback(a1, 0);
        }

        v16 = v15 - 1;
        v6 = 0;
        v17 = &unk_280581694;
        v18 = 3;
        v19 = v12;
        switch(v16)
        {
          case 0:
            goto LABEL_62;
          case 1:
            v17 = &unk_2805816C0;
            v19 = 12;
            goto LABEL_58;
          case 2:
            v17 = &unk_2805816A0;
            goto LABEL_55;
          case 3:
            v17 = &unk_28058173D;
            v18 = 8;
            v19 = 2001;
            goto LABEL_62;
          case 4:
            v17 = &unk_280581697;
            goto LABEL_61;
          case 5:
            v17 = &unk_2805816A4;
            goto LABEL_55;
          case 6:
            v17 = &unk_2805816C5;
            goto LABEL_57;
          case 7:
            v17 = &unk_2805816ED;
            goto LABEL_51;
          case 8:
            v17 = &unk_280581755;
            goto LABEL_45;
          case 9:
            v17 = &unk_2805816CA;
            goto LABEL_57;
          case 10:
            v17 = &unk_2805816F3;
            goto LABEL_51;
          case 11:
            v17 = &unk_2805816F9;
            goto LABEL_51;
          case 12:
            v17 = &unk_2805816FF;
            goto LABEL_51;
          case 13:
            v17 = &unk_28058175E;
LABEL_45:
            v18 = 9;
            goto LABEL_61;
          case 14:
            v17 = &unk_280581705;
            goto LABEL_51;
          case 15:
            v17 = &_MergedGlobals_43;
            v18 = 2;
            goto LABEL_61;
          case 16:
            v17 = &unk_28058170B;
            goto LABEL_51;
          case 17:
            v17 = &unk_28058169A;
            goto LABEL_61;
          case 18:
            v17 = &unk_280581767;
            v18 = 10;
            goto LABEL_61;
          case 19:
            v17 = &unk_280581771;
            v18 = 12;
            goto LABEL_61;
          case 20:
            v17 = &unk_280581745;
            v18 = 8;
            goto LABEL_61;
          case 21:
            v17 = &unk_2805816CF;
            goto LABEL_57;
          case 22:
            v17 = &unk_28058169D;
            goto LABEL_61;
          case 23:
            v17 = &unk_2805816D4;
            v19 = 21;
            goto LABEL_58;
          case 24:
            v17 = &unk_2805816D9;
            goto LABEL_57;
          case 25:
            v17 = &unk_2805816DE;
            goto LABEL_57;
          case 26:
            v17 = &unk_280581711;
            goto LABEL_51;
          case 27:
            v17 = &unk_280581717;
            goto LABEL_51;
          case 28:
            v17 = &unk_28058172F;
            goto LABEL_60;
          case 29:
            v17 = &unk_2805816E3;
            goto LABEL_57;
          case 30:
            v17 = &unk_28058171D;
            goto LABEL_51;
          case 31:
            v17 = &unk_280581723;
LABEL_51:
            v18 = 6;
            goto LABEL_61;
          case 32:
            v17 = &unk_280581736;
LABEL_60:
            v18 = 7;
            goto LABEL_61;
          case 33:
            v17 = &unk_2805816A8;
            goto LABEL_55;
          case 34:
            v17 = &unk_2805816E8;
LABEL_57:
            v19 = v12;
LABEL_58:
            v18 = v13;
            goto LABEL_62;
          case 35:
            v17 = &unk_280581729;
            v18 = 6;
            goto LABEL_16;
          case 36:
            v17 = &unk_2805816AC;
            v18 = 4;
LABEL_16:
            v19 = 1;
            goto LABEL_62;
          case 37:
            v17 = &unk_2805816B0;
            goto LABEL_55;
          case 38:
            v17 = &unk_2805816B4;
            goto LABEL_55;
          case 39:
            v17 = &unk_2805816B8;
            goto LABEL_55;
          case 40:
            v17 = &unk_28058174D;
            v18 = 8;
            v19 = 120;
            goto LABEL_62;
          case 41:
            v17 = &unk_2805816BC;
LABEL_55:
            v18 = 4;
LABEL_61:
            v19 = v12;
LABEL_62:
            v20 = v17;
            v13 = v18;
            v12 = v19;
            lpta_rpta_loadp(a1, v23, v22);
            if (v12)
            {
              *(a1 + 4056) = v12;
            }

            if (insert_2pt_s(a1, 2u, v13, v20, 0))
            {
              continue;
            }

            v6 = 0;
            break;
          case 43:
            goto LABEL_7;
          case 44:
          case 46:
            goto LABEL_5;
          case 45:
            goto LABEL_8;
          default:
            goto LABEL_4;
        }

        break;
      }
    }
  }

LABEL_5:
  v7 = v6;
  vretproc(a1);
  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

void *delta_new()
{
  MEMORY[0x28223BE20]();
  v0 = malloc_type_malloc(0x1888uLL, 0x10F0040A74CFA1EuLL);
  v1 = v0;
  if (v0)
  {
    *(v0 + 164) = -6;
    *(v0 + 42) = 0;
    *(v0 + 172) = -6;
    *(v0 + 44) = 0;
    *(v0 + 180) = -6;
    *(v0 + 46) = 0;
    *(v0 + 188) = -6;
    *(v0 + 48) = 0;
    *(v0 + 196) = -6;
    *(v0 + 50) = 0;
    *(v0 + 204) = -6;
    *(v0 + 52) = 0;
    *(v0 + 212) = -6;
    *(v0 + 54) = 0;
    *(v0 + 220) = -6;
    *(v0 + 56) = 0;
    *(v0 + 228) = -6;
    *(v0 + 58) = 0;
    *(v0 + 236) = -6;
    *(v0 + 60) = 0;
    *(v0 + 244) = -6;
    *(v0 + 62) = 0;
    *(v0 + 252) = -6;
    *(v0 + 64) = 0;
    *(v0 + 260) = -6;
    *(v0 + 66) = 0;
    *(v0 + 268) = -6;
    *(v0 + 68) = 0;
    *(v0 + 276) = -6;
    *(v0 + 70) = 0;
    *(v0 + 284) = -6;
    *(v0 + 72) = 0;
    *(v0 + 292) = -6;
    *(v0 + 74) = 0;
    *(v0 + 300) = -6;
    *(v0 + 76) = 0;
    *(v0 + 308) = -6;
    *(v0 + 78) = 0;
    *(v0 + 158) = 65532;
    *(v0 + 320) = -6;
    *(v0 + 81) = 0;
    *(v0 + 328) = -6;
    *(v0 + 83) = 0;
    *(v0 + 336) = -6;
    *(v0 + 85) = 0;
    *(v0 + 344) = -6;
    *(v0 + 87) = 0;
    *(v0 + 352) = -6;
    *(v0 + 89) = 0;
    *(v0 + 45) = xmmword_26DD28520;
    *(v0 + 46) = xmmword_26DD28520;
    *(v0 + 47) = xmmword_26DD28520;
    *(v0 + 384) = -6;
    *(v0 + 97) = 0;
    *(v0 + 392) = -6;
    *(v0 + 99) = 0;
    *(v0 + 400) = -6;
    *(v0 + 101) = 0;
    *(v0 + 408) = -6;
    *(v0 + 103) = 0;
    *(v0 + 416) = -6;
    *(v0 + 105) = 0;
    *(v0 + 424) = -6;
    *(v0 + 107) = 0;
    *(v0 + 432) = -6;
    *(v0 + 109) = 0;
    *(v0 + 440) = -6;
    *(v0 + 111) = 0;
    *(v0 + 448) = -6;
    *(v0 + 113) = 0;
    *(v0 + 456) = -6;
    *(v0 + 115) = 0;
    *(v0 + 58) = xmmword_26DD28520;
    *(v0 + 59) = xmmword_26DD28520;
    *(v0 + 60) = xmmword_26DD28520;
    *(v0 + 61) = xmmword_26DD28520;
    *(v0 + 62) = xmmword_26DD28520;
    *(v0 + 63) = xmmword_26DD28520;
    *(v0 + 128) = 0xFFFC0000FFFCLL;
    *(v0 + 516) = -5;
    *(v0 + 130) = 0;
    *(v0 + 524) = -5;
    *(v0 + 132) = 0;
    *(v0 + 532) = -5;
    *(v0 + 134) = 0;
    *(v0 + 540) = -5;
    *(v0 + 136) = 0;
    *(v0 + 548) = -5;
    *(v0 + 138) = 0;
    *(v0 + 556) = -5;
    *(v0 + 140) = 0;
    *(v0 + 282) = 65532;
    *(v0 + 568) = -6;
    *(v0 + 143) = 0;
    *(v0 + 576) = -6;
    *(v0 + 145) = 0;
    *(v0 + 584) = -6;
    *(v0 + 147) = 0;
    *(v0 + 148) = 0xFFFC0000FFFCLL;
    *(v0 + 596) = -6;
    *(v0 + 150) = 0;
    *(v0 + 151) = 0xFFFC0000FFFCLL;
    *(v0 + 304) = 65532;
    *(v0 + 612) = -6;
    *(v0 + 154) = 0;
    *(v0 + 620) = -6;
    *(v0 + 156) = 0;
    *(v0 + 628) = -6;
    *(v0 + 158) = 0;
    *(v0 + 636) = -6;
    *(v0 + 160) = 0;
    *(v0 + 644) = -6;
    *(v0 + 162) = 0;
    *(v0 + 652) = -6;
    *(v0 + 164) = 0;
    *(v0 + 660) = -6;
    *(v0 + 166) = 0;
    *(v0 + 668) = -6;
    *(v0 + 168) = 0;
    *(v0 + 676) = -6;
    *(v0 + 170) = 0;
    *(v0 + 684) = -6;
    *(v0 + 172) = 0;
    *(v0 + 692) = -6;
    *(v0 + 174) = 0;
    *(v0 + 700) = -6;
    *(v0 + 176) = 0;
    *(v0 + 708) = -6;
    *(v0 + 178) = 0;
    *(v0 + 716) = -6;
    *(v0 + 180) = 0;
    *(v0 + 724) = -6;
    *(v0 + 182) = 0;
    *(v0 + 732) = -6;
    *(v0 + 184) = 0;
    *(v0 + 740) = -6;
    *(v0 + 186) = 0;
    *(v0 + 748) = -6;
    *(v0 + 188) = 0;
    *(v0 + 756) = -6;
    *(v0 + 190) = 0;
    *(v0 + 764) = -6;
    *(v0 + 192) = 0;
    *(v0 + 772) = -6;
    *(v0 + 194) = 0;
    *(v0 + 780) = -6;
    *(v0 + 196) = 0;
    *(v0 + 788) = -6;
    *(v0 + 198) = 0;
    *(v0 + 796) = -6;
    *(v0 + 200) = 0;
    *(v0 + 804) = -6;
    *(v0 + 202) = 0;
    *(v0 + 812) = -6;
    *(v0 + 204) = 0;
    *(v0 + 820) = -6;
    *(v0 + 206) = 0;
    *(v0 + 828) = -6;
    *(v0 + 208) = 0;
    *(v0 + 836) = -6;
    *(v0 + 210) = 0;
    *(v0 + 844) = -6;
    *(v0 + 212) = 0;
    *(v0 + 852) = -6;
    *(v0 + 214) = 0;
    *(v0 + 860) = -6;
    *(v0 + 216) = 0;
    *(v0 + 868) = -6;
    *(v0 + 218) = 0;
    *(v0 + 876) = -6;
    *(v0 + 220) = 0;
    *(v0 + 884) = -6;
    *(v0 + 222) = 0;
    *(v0 + 892) = -6;
    *(v0 + 224) = 0;
    *(v0 + 900) = -6;
    *(v0 + 226) = 0;
    *(v0 + 908) = -6;
    *(v0 + 228) = 0;
    *(v0 + 916) = -6;
    *(v0 + 230) = 0;
    *(v0 + 924) = -6;
    *(v0 + 232) = 0;
    *(v0 + 932) = -6;
    *(v0 + 234) = 0;
    *(v0 + 940) = -6;
    *(v0 + 236) = 0;
    *(v0 + 948) = -6;
    *(v0 + 238) = 0;
    *(v0 + 956) = -6;
    *(v0 + 240) = 0;
    *(v0 + 964) = -6;
    *(v0 + 242) = 0;
    *(v0 + 972) = -5;
    *(v0 + 244) = 0;
    *(v0 + 980) = -5;
    *(v0 + 246) = 0;
    *(v0 + 2120) = xmmword_26DD28520;
    *(v0 + 2136) = xmmword_26DD28520;
    *(v0 + 2152) = xmmword_26DD28520;
    *(v0 + 2168) = xmmword_26DD28520;
    *(v0 + 2184) = xmmword_26DD28520;
    *(v0 + 2200) = xmmword_26DD28520;
    *(v0 + 2216) = xmmword_26DD28520;
    *(v0 + 2232) = xmmword_26DD28520;
    *(v0 + 2248) = xmmword_26DD28520;
    *(v0 + 2264) = xmmword_26DD28520;
    *(v0 + 285) = 0xFFFC0000FFFCLL;
    *(v0 + 1144) = -5;
    *(v0 + 287) = 0;
    *(v0 + 1152) = -5;
    *(v0 + 289) = 0;
    *(v0 + 1160) = -5;
    *(v0 + 291) = 0;
    *(v0 + 1168) = -5;
    *(v0 + 293) = 0;
    *(v0 + 1176) = -5;
    *(v0 + 295) = 0;
    *(v0 + 1184) = -5;
    *(v0 + 297) = 0;
    *(v0 + 1192) = -5;
    *(v0 + 299) = 0;
    *(v0 + 1200) = -5;
    *(v0 + 301) = 0;
    *(v0 + 1208) = -5;
    *(v0 + 303) = 0;
    *(v0 + 1216) = -5;
    *(v0 + 305) = 0;
    *(v0 + 1224) = -5;
    *(v0 + 307) = 0;
    *(v0 + 154) = xmmword_26DD28520;
    *(v0 + 620) = 65532;
    *(v0 + 1244) = -6;
    *(v0 + 312) = 0;
    *(v0 + 1252) = -6;
    *(v0 + 314) = 0;
    *(v0 + 1260) = -6;
    *(v0 + 316) = 0;
    *(v0 + 317) = 0xFFFC0000FFFCLL;
    *(v0 + 636) = 65532;
    *(v0 + 161) = xmmword_26DD28520;
    *(v0 + 162) = xmmword_26DD28520;
    *(v0 + 163) = xmmword_26DD28520;
    *(v0 + 164) = xmmword_26DD28520;
    *(v0 + 1320) = -6;
    *(v0 + 331) = 0;
    *(v0 + 1328) = -6;
    *(v0 + 333) = 0;
    *(v0 + 2856) = xmmword_26DD28520;
    *(v0 + 2872) = xmmword_26DD28520;
    *(v0 + 2760) = xmmword_26DD28520;
    *(v0 + 2776) = xmmword_26DD28520;
    *(v0 + 2792) = xmmword_26DD28520;
    *(v0 + 2808) = xmmword_26DD28520;
    *(v0 + 2824) = xmmword_26DD28520;
    *(v0 + 2840) = xmmword_26DD28520;
    *(v0 + 337) = 0;
    *(v0 + 676) = 65532;
    *(v0 + 1356) = -6;
    *(v0 + 340) = 0;
    *(v0 + 2728) = xmmword_26DD28520;
    *(v0 + 2744) = xmmword_26DD28520;
    *(v0 + 1336) = -6;
    *(v0 + 335) = 0;
    *(v0 + 1344) = -6;
    *(v0 + 2888) = xmmword_26DD28520;
    *(v0 + 2904) = xmmword_26DD28520;
    *(v0 + 2920) = xmmword_26DD28520;
    *(v0 + 2936) = xmmword_26DD28520;
    *(v0 + 2952) = xmmword_26DD28520;
    *(v0 + 2968) = xmmword_26DD28520;
    *(v0 + 2984) = xmmword_26DD28520;
    *(v0 + 3000) = xmmword_26DD28520;
    *(v0 + 3016) = xmmword_26DD28520;
    *(v0 + 3032) = xmmword_26DD28520;
    *(v0 + 3048) = xmmword_26DD28520;
    *(v0 + 3064) = xmmword_26DD28520;
    *(v0 + 3080) = xmmword_26DD28520;
    *(v0 + 3096) = xmmword_26DD28520;
    *(v0 + 3112) = xmmword_26DD28520;
    *(v0 + 3128) = xmmword_26DD28520;
    *(v0 + 3144) = xmmword_26DD28520;
    *(v0 + 3160) = xmmword_26DD28520;
    *(v0 + 3176) = xmmword_26DD28520;
    *(v0 + 3192) = xmmword_26DD28520;
    *(v0 + 3208) = xmmword_26DD28520;
    *(v0 + 3224) = xmmword_26DD28520;
    *(v0 + 3240) = xmmword_26DD28520;
    *(v0 + 3256) = xmmword_26DD28520;
    *(v0 + 818) = 65532;
    *(v0 + 211) = xmmword_26DD28520;
    *(v0 + 212) = xmmword_26DD28520;
    *(v0 + 213) = xmmword_26DD28520;
    *(v0 + 214) = xmmword_26DD28520;
    *(v0 + 215) = xmmword_26DD28520;
    *(v0 + 216) = xmmword_26DD28520;
    *(v0 + 217) = xmmword_26DD28520;
    *(v0 + 218) = xmmword_26DD28520;
    *(v0 + 219) = xmmword_26DD28520;
    *(v0 + 220) = xmmword_26DD28520;
    *(v0 + 1768) = -6;
    *(v0 + 443) = 0;
    *(v0 + 444) = 0xFFFC0000FFFCLL;
    *(v0 + 890) = 65532;
    *(v0 + 1784) = -5;
    *(v0 + 447) = 0;
    *(v0 + 1792) = -5;
    *(v0 + 449) = 0;
    *(v0 + 225) = xmmword_26DD28520;
    *(v0 + 226) = xmmword_26DD28520;
    *(v0 + 227) = xmmword_26DD28520;
    *(v0 + 228) = xmmword_26DD28520;
    *(v0 + 229) = xmmword_26DD28520;
    *(v0 + 230) = xmmword_26DD28520;
    *(v0 + 231) = xmmword_26DD28520;
    *(v0 + 232) = xmmword_26DD28520;
    *(v0 + 233) = xmmword_26DD28520;
    *(v0 + 234) = xmmword_26DD28520;
    *(v0 + 470) = 0xFFFC0000FFFCLL;
    *(v0 + 942) = 65532;
    *(v0 + 1888) = -3;
    *(v0 + 473) = 0;
    *(v0 + 1960) = -5;
    *(v0 + 491) = 0;
    *(v0 + 984) = 65532;
    *(v0 + 992) = 65532;
    *(v0 + 1988) = -3;
    *(v0 + 498) = 0;
    *(v0 + 499) = 0xFFFC0000FFFCLL;
    *(v0 + 1000) = 65532;
    *(v0 + 2004) = -6;
    *(v0 + 502) = 0;
    *(v0 + 4024) = xmmword_26DD28520;
    *(v0 + 1010) = 65532;
    *(v0 + 2024) = -3;
    *(v0 + 507) = 0;
    *(v0 + 254) = xmmword_26DD28520;
    *(v0 + 255) = xmmword_26DD28520;
    *(v0 + 512) = 0xFFFC0000FFFCLL;
    *(v0 + 2052) = -6;
    *(v0 + 514) = 0;
    *(v0 + 2060) = -6;
    *(v0 + 516) = 0;
    *(v0 + 2068) = -6;
    *(v0 + 518) = 0;
    *(v0 + 2076) = -6;
    *(v0 + 520) = 0;
    *(v0 + 2084) = -6;
    *(v0 + 522) = 0;
    *(v0 + 2092) = -6;
    *(v0 + 524) = 0;
    *(v0 + 525) = 0xFFFC0000FFFCLL;
    *(v0 + 2104) = -5;
    *(v0 + 527) = 0;
    *(v0 + 264) = xmmword_26DD28520;
    *(v0 + 530) = 0xFFFC0000FFFCLL;
    *(v0 + 2124) = -5;
    *(v0 + 532) = 0;
    *(v0 + 2132) = -5;
    *(v0 + 534) = 0;
    *(v0 + 2140) = -5;
    *(v0 + 536) = 0;
    *(v0 + 2148) = -5;
    *(v0 + 538) = 0;
    *(v0 + 2156) = -5;
    *(v0 + 540) = 0;
    *(v0 + 2164) = -5;
    *(v0 + 542) = 0;
    *(v0 + 2172) = -5;
    *(v0 + 544) = 0;
    *(v0 + 2180) = -5;
    *(v0 + 546) = 0;
    *(v0 + 2188) = -5;
    *(v0 + 548) = 0;
    *(v0 + 2196) = -5;
    *(v0 + 550) = 0;
    *(v0 + 4408) = xmmword_26DD28520;
    *(v0 + 4424) = xmmword_26DD28520;
    *(v0 + 555) = 0xFFFC0000FFFCLL;
    *(v0 + 1112) = 65532;
    *(v0 + 2228) = -5;
    *(v0 + 558) = 0;
    *(v0 + 4472) = xmmword_26DD28520;
    *(v0 + 4488) = xmmword_26DD28520;
    *(v0 + 4504) = xmmword_26DD28520;
    *(v0 + 4520) = xmmword_26DD28520;
    *(v0 + 4536) = xmmword_26DD28520;
    *(v0 + 4552) = xmmword_26DD28520;
    *(v0 + 4568) = xmmword_26DD28520;
    *(v0 + 4584) = xmmword_26DD28520;
    *(v0 + 4600) = xmmword_26DD28520;
    *(v0 + 4616) = xmmword_26DD28520;
    *(v0 + 4632) = xmmword_26DD28520;
    *(v0 + 4648) = xmmword_26DD28520;
    *(v0 + 4664) = xmmword_26DD28520;
    *(v0 + 4680) = xmmword_26DD28520;
    *(v0 + 4696) = xmmword_26DD28520;
    *(v0 + 4712) = xmmword_26DD28520;
    *(v0 + 4728) = xmmword_26DD28520;
    *(v0 + 4744) = xmmword_26DD28520;
    *(v0 + 4760) = xmmword_26DD28520;
    *(v0 + 4776) = xmmword_26DD28520;
    *(v0 + 4792) = xmmword_26DD28520;
    *(v0 + 2404) = -6;
    *(v0 + 602) = 0;
    *(v0 + 2412) = -5;
    *(v0 + 604) = 0;
    *(v0 + 2420) = -5;
    *(v0 + 606) = 0;
    *(v0 + 2428) = -6;
    *(v0 + 608) = 0;
    *(v0 + 4872) = xmmword_26DD28520;
    *(v0 + 4888) = xmmword_26DD28520;
    *(v0 + 1226) = 65532;
    *(v0 + 638) = 0xFFFC0000FFFCLL;
    *(v0 + 2556) = -6;
    *(v0 + 640) = 0;
    *(v0 + 2564) = -5;
    *(v0 + 642) = 0;
    *(v0 + 2572) = -5;
    *(v0 + 644) = 0;
    *(v0 + 645) = 0xFFFC0000FFFCLL;
    *(v0 + 2584) = -6;
    *(v0 + 647) = 0;
    *(v0 + 2592) = -6;
    *(v0 + 649) = 0;
    *(v0 + 2600) = -6;
    *(v0 + 651) = 0;
    *(v0 + 2608) = -6;
    *(v0 + 653) = 0;
    *(v0 + 1308) = 65532;
    *(v0 + 2620) = -5;
    *(v0 + 656) = 0;
    *(v0 + 1314) = 65532;
    *(v0 + 2632) = -6;
    *(v0 + 659) = 0;
    *(v0 + 330) = xmmword_26DD28520;
    *(v0 + 331) = xmmword_26DD28520;
    *(v0 + 332) = xmmword_26DD28520;
    *(v0 + 666) = 0xFFFC0000FFFCLL;
    *(v0 + 1334) = 65532;
    *(v0 + 2672) = -5;
    *(v0 + 669) = 0;
    *(v0 + 2680) = -5;
    *(v0 + 671) = 0;
    *(v0 + 2688) = -5;
    *(v0 + 673) = 0;
    *(v0 + 2696) = -6;
    *(v0 + 675) = 0;
    *(v0 + 676) = 0xFFFC0000FFFCLL;
    *(v0 + 1378) = 65532;
    *(v0 + 2760) = -5;
    *(v0 + 691) = 0;
    *(v0 + 2768) = -5;
    *(v0 + 693) = 0;
    *(v0 + 2776) = -5;
    *(v0 + 695) = 0;
    *(v0 + 348) = xmmword_26DD28520;
    *(v0 + 698) = 0xFFFC0000FFFCLL;
    *(v0 + 2796) = -5;
    *(v0 + 700) = 0;
    *(v0 + 5608) = xmmword_26DD28520;
    *(v0 + 5624) = xmmword_26DD28520;
    *(v0 + 5640) = xmmword_26DD28520;
    *(v0 + 5656) = xmmword_26DD28520;
    *(v0 + 5672) = xmmword_26DD28520;
    *(v0 + 5688) = xmmword_26DD28520;
    *(v0 + 5704) = xmmword_26DD28520;
    *(v0 + 5720) = xmmword_26DD28520;
    *(v0 + 5736) = xmmword_26DD28520;
    *(v0 + 5752) = xmmword_26DD28520;
    *(v0 + 5768) = xmmword_26DD28520;
    *(v0 + 5784) = xmmword_26DD28520;
    *(v0 + 5800) = xmmword_26DD28520;
    *(v0 + 5816) = xmmword_26DD28520;
    *(v0 + 5832) = xmmword_26DD28520;
    *(v0 + 5848) = xmmword_26DD28520;
    *(v0 + 5864) = xmmword_26DD28520;
    *(v0 + 5880) = xmmword_26DD28520;
    *(v0 + 5896) = xmmword_26DD28520;
    *(v0 + 5912) = xmmword_26DD28520;
    *(v0 + 5928) = xmmword_26DD28520;
    *(v0 + 5944) = xmmword_26DD28520;
    *(v0 + 5960) = xmmword_26DD28520;
    *(v0 + 5976) = xmmword_26DD28520;
    *(v0 + 5992) = xmmword_26DD28520;
    *(v0 + 1502) = 65532;
    *(v0 + 3008) = -6;
    *(v0 + 753) = 0;
    *(v0 + 1508) = 65532;
    *(v0 + 3020) = -5;
    *(v0 + 756) = 0;
    *(v0 + 3028) = -5;
    *(v0 + 758) = 0;
    *(v0 + 3036) = -5;
    *(v0 + 760) = 0;
    *(v0 + 3044) = -5;
    *(v0 + 762) = 0;
    *(v0 + 3052) = -5;
    *(v0 + 764) = 0;
    *(v0 + 3060) = -5;
    *(v0 + 766) = 0;
    *(v0 + 3068) = -5;
    *(v0 + 768) = 0;
    *(v0 + 3076) = -5;
    *(v0 + 770) = 0;
    *(v0 + 3084) = -5;
    *(v0 + 772) = 0;
    *(v0 + 3092) = -5;
    *(v0 + 774) = 0;
    *(v0 + 3100) = -5;
    *(v0 + 776) = 0;
    *(v0 + 777) = 0xFFFC0000FFFCLL;
    *(v0 + 3112) = -6;
    *(v0 + 779) = 0;
    *(v0 + 390) = xmmword_26DD28520;
    *(v0 + 391) = xmmword_26DD28520;
    *(v0 + 784) = 0xFFFC0000FFFCLL;
    *(v0 + 4) = 220;
    *v0 = xmmword_26DD28530;
    *(v0 + 11) = v0 + 344;
    *(v0 + 12) = v0 + 360;
    v2 = malloc_type_malloc(0x6E0uLL, 0x2004093837F09uLL);
    v1[3] = v2;
    if (!v2)
    {
      goto LABEL_8;
    }

    *v2 = v1 + 42;
    *(v1[3] + 8) = v1 + 44;
    *(v1[3] + 16) = v1 + 46;
    *(v1[3] + 24) = v1 + 48;
    *(v1[3] + 32) = v1 + 50;
    *(v1[3] + 40) = v1 + 52;
    *(v1[3] + 48) = v1 + 54;
    *(v1[3] + 56) = v1 + 56;
    *(v1[3] + 64) = v1 + 58;
    *(v1[3] + 72) = v1 + 60;
    *(v1[3] + 80) = v1 + 62;
    *(v1[3] + 88) = v1 + 64;
    *(v1[3] + 96) = v1 + 66;
    *(v1[3] + 104) = v1 + 68;
    *(v1[3] + 112) = v1 + 70;
    *(v1[3] + 120) = v1 + 72;
    *(v1[3] + 128) = v1 + 74;
    *(v1[3] + 136) = v1 + 76;
    *(v1[3] + 144) = v1 + 78;
    *(v1[3] + 152) = v1 + 81;
    *(v1[3] + 160) = v1 + 83;
    *(v1[3] + 168) = v1 + 85;
    *(v1[3] + 176) = v1 + 87;
    *(v1[3] + 184) = v1 + 89;
    *(v1[3] + 192) = v1 + 97;
    *(v1[3] + 200) = v1 + 99;
    *(v1[3] + 208) = v1 + 101;
    *(v1[3] + 216) = v1 + 103;
    *(v1[3] + 224) = v1 + 105;
    *(v1[3] + 232) = v1 + 107;
    *(v1[3] + 240) = v1 + 109;
    *(v1[3] + 248) = v1 + 111;
    *(v1[3] + 256) = v1 + 113;
    *(v1[3] + 264) = v1 + 115;
    *(v1[3] + 272) = v1 + 143;
    *(v1[3] + 280) = v1 + 145;
    *(v1[3] + 288) = v1 + 147;
    *(v1[3] + 296) = v1 + 150;
    *(v1[3] + 304) = v1 + 154;
    *(v1[3] + 312) = v1 + 156;
    *(v1[3] + 320) = v1 + 158;
    *(v1[3] + 328) = v1 + 160;
    *(v1[3] + 336) = v1 + 162;
    *(v1[3] + 344) = v1 + 164;
    *(v1[3] + 352) = v1 + 166;
    *(v1[3] + 360) = v1 + 168;
    *(v1[3] + 368) = v1 + 170;
    *(v1[3] + 376) = v1 + 172;
    *(v1[3] + 384) = v1 + 174;
    *(v1[3] + 392) = v1 + 176;
    *(v1[3] + 400) = v1 + 178;
    *(v1[3] + 408) = v1 + 180;
    *(v1[3] + 416) = v1 + 182;
    *(v1[3] + 424) = v1 + 184;
    *(v1[3] + 432) = v1 + 186;
    *(v1[3] + 440) = v1 + 188;
    *(v1[3] + 448) = v1 + 190;
    *(v1[3] + 456) = v1 + 192;
    *(v1[3] + 464) = v1 + 194;
    *(v1[3] + 472) = v1 + 196;
    *(v1[3] + 480) = v1 + 198;
    *(v1[3] + 488) = v1 + 200;
    *(v1[3] + 496) = v1 + 202;
    *(v1[3] + 504) = v1 + 204;
    *(v1[3] + 512) = v1 + 206;
    *(v1[3] + 520) = v1 + 208;
    *(v1[3] + 528) = v1 + 210;
    *(v1[3] + 536) = v1 + 212;
    *(v1[3] + 544) = v1 + 214;
    *(v1[3] + 552) = v1 + 216;
    *(v1[3] + 560) = v1 + 218;
    *(v1[3] + 568) = v1 + 220;
    *(v1[3] + 576) = v1 + 222;
    *(v1[3] + 584) = v1 + 224;
    *(v1[3] + 592) = v1 + 226;
    *(v1[3] + 600) = v1 + 228;
    *(v1[3] + 608) = v1 + 230;
    *(v1[3] + 616) = v1 + 232;
    *(v1[3] + 624) = v1 + 234;
    *(v1[3] + 632) = v1 + 236;
    *(v1[3] + 640) = v1 + 238;
    *(v1[3] + 648) = v1 + 240;
    *(v1[3] + 656) = v1 + 242;
    *(v1[3] + 664) = v1 + 312;
    *(v1[3] + 672) = v1 + 314;
    *(v1[3] + 680) = v1 + 316;
    *(v1[3] + 688) = v1 + 331;
    *(v1[3] + 696) = v1 + 333;
    *(v1[3] + 704) = v1 + 335;
    *(v1[3] + 712) = v1 + 337;
    *(v1[3] + 720) = v1 + 340;
    *(v1[3] + 728) = v1 + 443;
    *(v1[3] + 736) = v1 + 502;
    *(v1[3] + 744) = v1 + 514;
    *(v1[3] + 752) = v1 + 516;
    *(v1[3] + 760) = v1 + 518;
    *(v1[3] + 768) = v1 + 520;
    *(v1[3] + 776) = v1 + 522;
    *(v1[3] + 784) = v1 + 524;
    *(v1[3] + 792) = v1 + 602;
    *(v1[3] + 800) = v1 + 608;
    *(v1[3] + 808) = v1 + 640;
    *(v1[3] + 816) = v1 + 647;
    *(v1[3] + 824) = v1 + 649;
    *(v1[3] + 832) = v1 + 651;
    *(v1[3] + 840) = v1 + 653;
    *(v1[3] + 848) = v1 + 659;
    *(v1[3] + 856) = v1 + 675;
    *(v1[3] + 864) = v1 + 753;
    *(v1[3] + 872) = v1 + 779;
    *(v1[3] + 880) = v1 + 42;
    *(v1[3] + 888) = v1 + 44;
    *(v1[3] + 896) = v1 + 46;
    *(v1[3] + 904) = v1 + 48;
    *(v1[3] + 912) = v1 + 50;
    *(v1[3] + 920) = v1 + 52;
    *(v1[3] + 928) = v1 + 54;
    *(v1[3] + 936) = v1 + 56;
    *(v1[3] + 944) = v1 + 58;
    *(v1[3] + 952) = v1 + 60;
    *(v1[3] + 960) = v1 + 62;
    *(v1[3] + 968) = v1 + 64;
    *(v1[3] + 976) = v1 + 66;
    *(v1[3] + 984) = v1 + 68;
    *(v1[3] + 992) = v1 + 70;
    *(v1[3] + 1000) = v1 + 72;
    *(v1[3] + 1008) = v1 + 74;
    *(v1[3] + 1016) = v1 + 76;
    *(v1[3] + 1024) = v1 + 78;
    *(v1[3] + 1032) = v1 + 81;
    *(v1[3] + 1040) = v1 + 83;
    *(v1[3] + 1048) = v1 + 85;
    *(v1[3] + 1056) = v1 + 87;
    *(v1[3] + 1064) = v1 + 89;
    *(v1[3] + 1072) = v1 + 97;
    *(v1[3] + 1080) = v1 + 99;
    *(v1[3] + 1088) = v1 + 101;
    *(v1[3] + 1096) = v1 + 103;
    *(v1[3] + 1104) = v1 + 105;
    *(v1[3] + 1112) = v1 + 107;
    *(v1[3] + 1120) = v1 + 109;
    *(v1[3] + 1128) = v1 + 111;
    *(v1[3] + 1136) = v1 + 113;
    *(v1[3] + 1144) = v1 + 115;
    *(v1[3] + 1152) = v1 + 143;
    *(v1[3] + 1160) = v1 + 145;
    *(v1[3] + 1168) = v1 + 147;
    *(v1[3] + 1176) = v1 + 150;
    *(v1[3] + 1184) = v1 + 154;
    *(v1[3] + 1192) = v1 + 156;
    *(v1[3] + 1200) = v1 + 158;
    *(v1[3] + 1208) = v1 + 160;
    *(v1[3] + 1216) = v1 + 162;
    *(v1[3] + 1224) = v1 + 164;
    *(v1[3] + 1232) = v1 + 166;
    *(v1[3] + 1240) = v1 + 168;
    *(v1[3] + 1248) = v1 + 170;
    *(v1[3] + 1256) = v1 + 172;
    *(v1[3] + 1264) = v1 + 174;
    *(v1[3] + 1272) = v1 + 176;
    *(v1[3] + 1280) = v1 + 178;
    *(v1[3] + 1288) = v1 + 180;
    *(v1[3] + 1296) = v1 + 182;
    *(v1[3] + 1304) = v1 + 184;
    *(v1[3] + 1312) = v1 + 186;
    *(v1[3] + 1320) = v1 + 188;
    *(v1[3] + 1328) = v1 + 190;
    *(v1[3] + 1336) = v1 + 192;
    *(v1[3] + 1344) = v1 + 194;
    *(v1[3] + 1352) = v1 + 196;
    *(v1[3] + 1360) = v1 + 198;
    *(v1[3] + 1368) = v1 + 200;
    *(v1[3] + 1376) = v1 + 202;
    *(v1[3] + 1384) = v1 + 204;
    *(v1[3] + 1392) = v1 + 206;
    *(v1[3] + 1400) = v1 + 208;
    *(v1[3] + 1408) = v1 + 210;
    *(v1[3] + 1416) = v1 + 212;
    *(v1[3] + 1424) = v1 + 214;
    *(v1[3] + 1432) = v1 + 216;
    *(v1[3] + 1440) = v1 + 218;
    *(v1[3] + 1448) = v1 + 220;
    *(v1[3] + 1456) = v1 + 222;
    *(v1[3] + 1464) = v1 + 224;
    *(v1[3] + 1472) = v1 + 226;
    *(v1[3] + 1480) = v1 + 228;
    *(v1[3] + 1488) = v1 + 230;
    *(v1[3] + 1496) = v1 + 232;
    *(v1[3] + 1504) = v1 + 234;
    *(v1[3] + 1512) = v1 + 236;
    *(v1[3] + 1520) = v1 + 238;
    *(v1[3] + 1528) = v1 + 240;
    *(v1[3] + 1536) = v1 + 242;
    *(v1[3] + 1544) = v1 + 312;
    *(v1[3] + 1552) = v1 + 314;
    *(v1[3] + 1560) = v1 + 316;
    *(v1[3] + 1568) = v1 + 331;
    *(v1[3] + 1576) = v1 + 333;
    *(v1[3] + 1584) = v1 + 335;
    *(v1[3] + 1592) = v1 + 337;
    *(v1[3] + 1600) = v1 + 340;
    *(v1[3] + 1608) = v1 + 443;
    *(v1[3] + 1616) = v1 + 502;
    *(v1[3] + 1624) = v1 + 514;
    *(v1[3] + 1632) = v1 + 516;
    *(v1[3] + 1640) = v1 + 518;
    *(v1[3] + 1648) = v1 + 520;
    *(v1[3] + 1656) = v1 + 522;
    *(v1[3] + 1664) = v1 + 524;
    *(v1[3] + 1672) = v1 + 602;
    *(v1[3] + 1680) = v1 + 608;
    *(v1[3] + 1688) = v1 + 640;
    *(v1[3] + 1696) = v1 + 647;
    *(v1[3] + 1704) = v1 + 649;
    *(v1[3] + 1712) = v1 + 651;
    *(v1[3] + 1720) = v1 + 653;
    *(v1[3] + 1728) = v1 + 659;
    *(v1[3] + 1736) = v1 + 675;
    *(v1[3] + 1744) = v1 + 753;
    *(v1[3] + 1752) = v1 + 779;
    v3 = malloc_type_malloc(0x280uLL, 0x1020040EDED9539uLL);
    v1[4] = v3;
    if (!v3)
    {
      goto LABEL_8;
    }

    *v3 = v1 + 247;
    v3[1] = 0x500000001;
    v3[2] = v1 + 250;
    v3[3] = 0x500000001;
    v3[4] = v1 + 253;
    v3[5] = 0x500000001;
    v3[6] = v1 + 256;
    v3[7] = 0x200000007;
    v3[8] = v1 + 259;
    v3[9] = 0x200000008;
    v3[10] = v1 + 262;
    v3[11] = 0x200000000;
    v3[12] = v1 + 319;
    v3[13] = 0x500000001;
    v3[14] = v1 + 410;
    v3[15] = 0xA00000005;
    v3[16] = v1 + 414;
    v3[17] = 0xA00000005;
    v3[18] = v1 + 418;
    v3[19] = 0xA00000005;
    v3[20] = v1 + 474;
    v3[21] = 0x1000000004;
    v3[22] = v1 + 478;
    v3[23] = 0x3000000006;
    v3[24] = v1 + 486;
    v3[25] = 0x1000000004;
    v3[26] = v1 + 493;
    v3[27] = 0x500000001;
    v3[28] = v1 + 614;
    v3[29] = 0x3000000006;
    v3[30] = v1 + 622;
    v3[31] = 0x3000000006;
    v3[32] = v1 + 630;
    v3[33] = 0x3000000006;
    v3[34] = v1 + 677;
    v3[35] = 0xA00000005;
    v3[36] = v1 + 681;
    v3[37] = 0x1000000004;
    v3[38] = v1 + 685;
    v3[39] = 0x1000000004;
    v3[40] = v1 + 247;
    v3[41] = 0x500000001;
    v3[42] = v1 + 250;
    v3[43] = 0x500000001;
    v3[44] = v1 + 253;
    v3[45] = 0x500000001;
    v3[46] = v1 + 256;
    v3[47] = 0x200000007;
    v3[48] = v1 + 259;
    v3[49] = 0x200000008;
    v3[50] = v1 + 262;
    v3[51] = 0x200000000;
    v3[52] = v1 + 319;
    v3[53] = 0x500000001;
    v3[54] = v1 + 410;
    v3[55] = 0xA00000005;
    v3[56] = v1 + 414;
    v3[57] = 0xA00000005;
    v3[58] = v1 + 418;
    v3[59] = 0xA00000005;
    v3[60] = v1 + 474;
    v3[61] = 0x1000000004;
    v3[62] = v1 + 478;
    v3[63] = 0x3000000006;
    v3[64] = v1 + 486;
    v3[65] = 0x1000000004;
    v3[66] = v1 + 493;
    v4 = v1[4];
    v4[67] = 0x500000001;
    v4[68] = v1 + 614;
    v4[69] = 0x3000000006;
    v4[70] = v1 + 622;
    v4[71] = 0x3000000006;
    v4[72] = v1 + 630;
    v4[73] = 0x3000000006;
    v4[74] = v1 + 677;
    v4[75] = 0xA00000005;
    v4[76] = v1 + 681;
    v4[77] = 0x1000000004;
    v4[78] = v1 + 685;
    v4[79] = 0x1000000004;
    v5 = malloc_type_malloc(0x30uLL, 0x10040436913F5uLL);
    v1[5] = v5;
    if (!v5)
    {
      goto LABEL_8;
    }

    *v5 = v1 + 473;
    *(v1[5] + 8) = v1 + 498;
    *(v1[5] + 16) = v1 + 507;
    *(v1[5] + 24) = v1 + 473;
    *(v1[5] + 32) = v1 + 498;
    *(v1[5] + 40) = v1 + 507;
    v6 = malloc_type_malloc(0x2630uLL, 0x10040436913F5uLL);
    v1[6] = v6;
    if (!v6)
    {
      goto LABEL_8;
    }

    *v6 = v1 + 634;
    *(v1[6] + 8) = v1 + 722;
    *(v1[6] + 16) = v1 + 726;
    *(v1[6] + 24) = v1 + 730;
    *(v1[6] + 32) = v1 + 734;
    *(v1[6] + 40) = v1 + 738;
    *(v1[6] + 48) = v1 + 742;
    *(v1[6] + 56) = v1 + 746;
    *(v1[6] + 64) = v1 + 750;
    *(v1[6] + 72) = v1 + 754;
    *(v1[6] + 80) = v1 + 758;
    *(v1[6] + 88) = v1 + 762;
    *(v1[6] + 96) = v1 + 766;
    *(v1[6] + 104) = v1 + 930;
    *(v1[6] + 112) = v1 + 934;
    *(v1[6] + 120) = v1 + 938;
    *(v1[6] + 128) = v1 + 942;
    *(v1[6] + 136) = v1 + 946;
    *(v1[6] + 144) = v1 + 950;
    *(v1[6] + 152) = v1 + 954;
    *(v1[6] + 160) = v1 + 958;
    *(v1[6] + 168) = v1 + 962;
    *(v1[6] + 176) = v1 + 966;
    *(v1[6] + 184) = v1 + 970;
    *(v1[6] + 192) = v1 + 974;
    *(v1[6] + 200) = v1 + 978;
    *(v1[6] + 208) = v1 + 982;
    *(v1[6] + 216) = v1 + 986;
    *(v1[6] + 224) = v1 + 990;
    *(v1[6] + 232) = v1 + 994;
    *(v1[6] + 240) = v1 + 998;
    *(v1[6] + 248) = v1 + 1002;
    *(v1[6] + 256) = v1 + 1006;
    *(v1[6] + 264) = v1 + 1010;
    *(v1[6] + 272) = v1 + 1014;
    *(v1[6] + 280) = v1 + 1018;
    *(v1[6] + 288) = v1 + 1022;
    *(v1[6] + 296) = v1 + 1026;
    *(v1[6] + 304) = v1 + 1030;
    *(v1[6] + 312) = v1 + 1130;
    *(v1[6] + 320) = v1 + 1186;
    *(v1[6] + 328) = v1 + 1190;
    *(v1[6] + 336) = v1 + 1210;
    *(v1[6] + 344) = v1 + 1214;
    *(v1[6] + 352) = v1 + 1218;
    *(v1[6] + 360) = v1 + 2122;
    *(v1[6] + 368) = v1 + 2126;
    *(v1[6] + 376) = v1 + 2130;
    *(v1[6] + 384) = v1 + 2134;
    *(v1[6] + 392) = v1 + 2138;
    *(v1[6] + 400) = v1 + 2142;
    *(v1[6] + 408) = v1 + 2146;
    *(v1[6] + 416) = v1 + 2150;
    *(v1[6] + 424) = v1 + 2154;
    *(v1[6] + 432) = v1 + 2158;
    *(v1[6] + 440) = v1 + 2162;
    *(v1[6] + 448) = v1 + 2166;
    *(v1[6] + 456) = v1 + 2170;
    *(v1[6] + 464) = v1 + 2174;
    *(v1[6] + 472) = v1 + 2178;
    *(v1[6] + 480) = v1 + 2182;
    *(v1[6] + 488) = v1 + 2186;
    *(v1[6] + 496) = v1 + 2190;
    *(v1[6] + 504) = v1 + 2194;
    *(v1[6] + 512) = v1 + 2198;
    *(v1[6] + 520) = v1 + 2202;
    *(v1[6] + 528) = v1 + 2206;
    *(v1[6] + 536) = v1 + 2210;
    *(v1[6] + 544) = v1 + 2214;
    *(v1[6] + 552) = v1 + 2218;
    *(v1[6] + 560) = v1 + 2222;
    *(v1[6] + 568) = v1 + 2226;
    *(v1[6] + 576) = v1 + 2230;
    *(v1[6] + 584) = v1 + 2234;
    *(v1[6] + 592) = v1 + 2238;
    *(v1[6] + 600) = v1 + 2242;
    *(v1[6] + 608) = v1 + 2246;
    *(v1[6] + 616) = v1 + 2250;
    *(v1[6] + 624) = v1 + 2254;
    *(v1[6] + 632) = v1 + 2258;
    *(v1[6] + 640) = v1 + 2262;
    *(v1[6] + 648) = v1 + 2266;
    *(v1[6] + 656) = v1 + 2270;
    *(v1[6] + 664) = v1 + 2274;
    *(v1[6] + 672) = v1 + 2278;
    *(v1[6] + 680) = v1 + 2282;
    *(v1[6] + 688) = v1 + 2286;
    *(v1[6] + 696) = v1 + 2466;
    *(v1[6] + 704) = v1 + 2470;
    *(v1[6] + 712) = v1 + 2474;
    *(v1[6] + 720) = v1 + 2478;
    *(v1[6] + 728) = v1 + 2482;
    *(v1[6] + 736) = v1 + 2538;
    *(v1[6] + 744) = v1 + 2542;
    *(v1[6] + 752) = v1 + 2546;
    *(v1[6] + 760) = v1 + 2578;
    *(v1[6] + 768) = v1 + 2582;
    *(v1[6] + 776) = v1 + 2586;
    *(v1[6] + 784) = v1 + 2590;
    *(v1[6] + 792) = v1 + 2594;
    *(v1[6] + 800) = v1 + 2598;
    *(v1[6] + 808) = v1 + 2602;
    *(v1[6] + 816) = v1 + 2606;
    *(v1[6] + 824) = v1 + 2610;
    *(v1[6] + 832) = v1 + 2614;
    *(v1[6] + 840) = v1 + 2618;
    *(v1[6] + 848) = v1 + 2622;
    *(v1[6] + 856) = v1 + 2626;
    *(v1[6] + 864) = v1 + 2630;
    *(v1[6] + 872) = v1 + 2634;
    *(v1[6] + 880) = v1 + 2638;
    *(v1[6] + 888) = v1 + 2706;
    *(v1[6] + 896) = v1 + 2730;
    *(v1[6] + 904) = v1 + 2734;
    *(v1[6] + 912) = v1 + 2738;
    *(v1[6] + 920) = v1 + 2742;
    *(v1[6] + 928) = v1 + 2746;
    *(v1[6] + 936) = v1 + 2750;
    *(v1[6] + 944) = v1 + 2754;
    *(v1[6] + 952) = v1 + 2758;
    *(v1[6] + 960) = v1 + 2762;
    *(v1[6] + 968) = v1 + 2766;
    *(v1[6] + 976) = v1 + 2770;
    *(v1[6] + 984) = v1 + 2774;
    *(v1[6] + 992) = v1 + 2778;
    *(v1[6] + 1000) = v1 + 2782;
    *(v1[6] + 1008) = v1 + 2786;
    *(v1[6] + 1016) = v1 + 2790;
    *(v1[6] + 1024) = v1 + 2794;
    *(v1[6] + 1032) = v1 + 2798;
    *(v1[6] + 1040) = v1 + 2802;
    *(v1[6] + 1048) = v1 + 2806;
    *(v1[6] + 1056) = v1 + 2810;
    *(v1[6] + 1064) = v1 + 2814;
    *(v1[6] + 1072) = v1 + 2818;
    *(v1[6] + 1080) = v1 + 2822;
    *(v1[6] + 1088) = v1 + 2826;
    *(v1[6] + 1096) = v1 + 2830;
    *(v1[6] + 1104) = v1 + 2834;
    *(v1[6] + 1112) = v1 + 2838;
    *(v1[6] + 1120) = v1 + 2842;
    *(v1[6] + 1128) = v1 + 2846;
    *(v1[6] + 1136) = v1 + 2850;
    *(v1[6] + 1144) = v1 + 2854;
    *(v1[6] + 1152) = v1 + 2858;
    *(v1[6] + 1160) = v1 + 2862;
    *(v1[6] + 1168) = v1 + 2866;
    *(v1[6] + 1176) = v1 + 2870;
    *(v1[6] + 1184) = v1 + 2874;
    *(v1[6] + 1192) = v1 + 2878;
    *(v1[6] + 1200) = v1 + 2882;
    *(v1[6] + 1208) = v1 + 2886;
    *(v1[6] + 1216) = v1 + 2890;
    *(v1[6] + 1224) = v1 + 2894;
    *(v1[6] + 1232) = v1 + 2898;
    *(v1[6] + 1240) = v1 + 2902;
    *(v1[6] + 1248) = v1 + 2906;
    *(v1[6] + 1256) = v1 + 2910;
    *(v1[6] + 1264) = v1 + 2914;
    *(v1[6] + 1272) = v1 + 2918;
    *(v1[6] + 1280) = v1 + 2922;
    *(v1[6] + 1288) = v1 + 2926;
    *(v1[6] + 1296) = v1 + 2930;
    *(v1[6] + 1304) = v1 + 2934;
    *(v1[6] + 1312) = v1 + 2938;
    *(v1[6] + 1320) = v1 + 2942;
    *(v1[6] + 1328) = v1 + 2946;
    *(v1[6] + 1336) = v1 + 2950;
    *(v1[6] + 1344) = v1 + 2954;
    *(v1[6] + 1352) = v1 + 2958;
    *(v1[6] + 1360) = v1 + 2962;
    *(v1[6] + 1368) = v1 + 2966;
    *(v1[6] + 1376) = v1 + 2970;
    *(v1[6] + 1384) = v1 + 2974;
    *(v1[6] + 1392) = v1 + 2978;
    *(v1[6] + 1400) = v1 + 2982;
    *(v1[6] + 1408) = v1 + 2986;
    *(v1[6] + 1416) = v1 + 2990;
    *(v1[6] + 1424) = v1 + 2994;
    *(v1[6] + 1432) = v1 + 2998;
    *(v1[6] + 1440) = v1 + 3002;
    *(v1[6] + 1448) = v1 + 3006;
    *(v1[6] + 1456) = v1 + 3010;
    *(v1[6] + 1464) = v1 + 3014;
    *(v1[6] + 1472) = v1 + 3018;
    *(v1[6] + 1480) = v1 + 3022;
    *(v1[6] + 1488) = v1 + 3026;
    *(v1[6] + 1496) = v1 + 3030;
    *(v1[6] + 1504) = v1 + 3034;
    *(v1[6] + 1512) = v1 + 3038;
    *(v1[6] + 1520) = v1 + 3042;
    *(v1[6] + 1528) = v1 + 3046;
    *(v1[6] + 1536) = v1 + 3050;
    *(v1[6] + 1544) = v1 + 3054;
    *(v1[6] + 1552) = v1 + 3058;
    *(v1[6] + 1560) = v1 + 3062;
    *(v1[6] + 1568) = v1 + 3066;
    *(v1[6] + 1576) = v1 + 3070;
    *(v1[6] + 1584) = v1 + 3074;
    *(v1[6] + 1592) = v1 + 3078;
    *(v1[6] + 1600) = v1 + 3082;
    *(v1[6] + 1608) = v1 + 3086;
    *(v1[6] + 1616) = v1 + 3090;
    *(v1[6] + 1624) = v1 + 3094;
    *(v1[6] + 1632) = v1 + 3098;
    *(v1[6] + 1640) = v1 + 3102;
    *(v1[6] + 1648) = v1 + 3106;
    *(v1[6] + 1656) = v1 + 3110;
    *(v1[6] + 1664) = v1 + 3114;
    *(v1[6] + 1672) = v1 + 3118;
    *(v1[6] + 1680) = v1 + 3122;
    *(v1[6] + 1688) = v1 + 3126;
    *(v1[6] + 1696) = v1 + 3130;
    *(v1[6] + 1704) = v1 + 3134;
    *(v1[6] + 1712) = v1 + 3138;
    *(v1[6] + 1720) = v1 + 3142;
    *(v1[6] + 1728) = v1 + 3146;
    *(v1[6] + 1736) = v1 + 3150;
    *(v1[6] + 1744) = v1 + 3154;
    *(v1[6] + 1752) = v1 + 3158;
    *(v1[6] + 1760) = v1 + 3162;
    *(v1[6] + 1768) = v1 + 3166;
    *(v1[6] + 1776) = v1 + 3170;
    *(v1[6] + 1784) = v1 + 3174;
    *(v1[6] + 1792) = v1 + 3178;
    *(v1[6] + 1800) = v1 + 3182;
    *(v1[6] + 1808) = v1 + 3186;
    *(v1[6] + 1816) = v1 + 3190;
    *(v1[6] + 1824) = v1 + 3194;
    *(v1[6] + 1832) = v1 + 3198;
    *(v1[6] + 1840) = v1 + 3202;
    *(v1[6] + 1848) = v1 + 3206;
    *(v1[6] + 1856) = v1 + 3210;
    *(v1[6] + 1864) = v1 + 3214;
    *(v1[6] + 1872) = v1 + 3218;
    *(v1[6] + 1880) = v1 + 3222;
    *(v1[6] + 1888) = v1 + 3226;
    *(v1[6] + 1896) = v1 + 3230;
    *(v1[6] + 1904) = v1 + 3234;
    *(v1[6] + 1912) = v1 + 3238;
    *(v1[6] + 1920) = v1 + 3242;
    *(v1[6] + 1928) = v1 + 3246;
    *(v1[6] + 1936) = v1 + 3250;
    *(v1[6] + 1944) = v1 + 3254;
    *(v1[6] + 1952) = v1 + 3258;
    *(v1[6] + 1960) = v1 + 3262;
    *(v1[6] + 1968) = v1 + 3266;
    *(v1[6] + 1976) = v1 + 3270;
    *(v1[6] + 1984) = v1 + 3274;
    *(v1[6] + 1992) = v1 + 3378;
    *(v1[6] + 2000) = v1 + 3382;
    *(v1[6] + 2008) = v1 + 3386;
    *(v1[6] + 2016) = v1 + 3390;
    *(v1[6] + 2024) = v1 + 3394;
    *(v1[6] + 2032) = v1 + 3398;
    *(v1[6] + 2040) = v1 + 3402;
    *(v1[6] + 2048) = v1 + 3406;
    *(v1[6] + 2056) = v1 + 3410;
    *(v1[6] + 2064) = v1 + 3414;
    *(v1[6] + 2072) = v1 + 3418;
    *(v1[6] + 2080) = v1 + 3422;
    *(v1[6] + 2088) = v1 + 3426;
    *(v1[6] + 2096) = v1 + 3430;
    *(v1[6] + 2104) = v1 + 3434;
    *(v1[6] + 2112) = v1 + 3438;
    *(v1[6] + 2120) = v1 + 3442;
    *(v1[6] + 2128) = v1 + 3446;
    *(v1[6] + 2136) = v1 + 3450;
    *(v1[6] + 2144) = v1 + 3454;
    *(v1[6] + 2152) = v1 + 3458;
    *(v1[6] + 2160) = v1 + 3462;
    *(v1[6] + 2168) = v1 + 3466;
    *(v1[6] + 2176) = v1 + 3470;
    *(v1[6] + 2184) = v1 + 3474;
    *(v1[6] + 2192) = v1 + 3478;
    *(v1[6] + 2200) = v1 + 3482;
    *(v1[6] + 2208) = v1 + 3486;
    *(v1[6] + 2216) = v1 + 3490;
    *(v1[6] + 2224) = v1 + 3494;
    *(v1[6] + 2232) = v1 + 3498;
    *(v1[6] + 2240) = v1 + 3502;
    *(v1[6] + 2248) = v1 + 3506;
    *(v1[6] + 2256) = v1 + 3510;
    *(v1[6] + 2264) = v1 + 3514;
    *(v1[6] + 2272) = v1 + 3518;
    *(v1[6] + 2280) = v1 + 3522;
    *(v1[6] + 2288) = v1 + 3526;
    *(v1[6] + 2296) = v1 + 3530;
    *(v1[6] + 2304) = v1 + 3534;
    *(v1[6] + 2312) = v1 + 3554;
    *(v1[6] + 2320) = v1 + 3558;
    *(v1[6] + 2328) = v1 + 3562;
    *(v1[6] + 2336) = v1 + 3602;
    *(v1[6] + 2344) = v1 + 3606;
    *(v1[6] + 2352) = v1 + 3610;
    *(v1[6] + 2360) = v1 + 3614;
    *(v1[6] + 2368) = v1 + 3618;
    *(v1[6] + 2376) = v1 + 3622;
    *(v1[6] + 2384) = v1 + 3626;
    *(v1[6] + 2392) = v1 + 3630;
    *(v1[6] + 2400) = v1 + 3634;
    *(v1[6] + 2408) = v1 + 3638;
    *(v1[6] + 2416) = v1 + 3642;
    *(v1[6] + 2424) = v1 + 3646;
    *(v1[6] + 2432) = v1 + 3650;
    *(v1[6] + 2440) = v1 + 3654;
    *(v1[6] + 2448) = v1 + 3658;
    *(v1[6] + 2456) = v1 + 3662;
    *(v1[6] + 2464) = v1 + 3666;
    *(v1[6] + 2472) = v1 + 3670;
    *(v1[6] + 2480) = v1 + 3674;
    *(v1[6] + 2488) = v1 + 3678;
    *(v1[6] + 2496) = v1 + 3682;
    *(v1[6] + 2504) = v1 + 3686;
    *(v1[6] + 2512) = v1 + 3690;
    *(v1[6] + 2520) = v1 + 3694;
    *(v1[6] + 2528) = v1 + 3698;
    *(v1[6] + 2536) = v1 + 3702;
    *(v1[6] + 2544) = v1 + 3706;
    *(v1[6] + 2552) = v1 + 3710;
    *(v1[6] + 2560) = v1 + 3714;
    *(v1[6] + 2568) = v1 + 3718;
    *(v1[6] + 2576) = v1 + 3722;
    *(v1[6] + 2584) = v1 + 3726;
    *(v1[6] + 2592) = v1 + 3730;
    *(v1[6] + 2600) = v1 + 3734;
    *(v1[6] + 2608) = v1 + 3738;
    *(v1[6] + 2616) = v1 + 3742;
    *(v1[6] + 2624) = v1 + 3746;
    *(v1[6] + 2632) = v1 + 3750;
    *(v1[6] + 2640) = v1 + 3754;
    *(v1[6] + 2648) = v1 + 3758;
    *(v1[6] + 2656) = v1 + 3762;
    *(v1[6] + 2664) = v1 + 3766;
    *(v1[6] + 2672) = v1 + 3770;
    *(v1[6] + 2680) = v1 + 3938;
    *(v1[6] + 2688) = v1 + 3970;
    *(v1[6] + 2696) = v1 + 3994;
    *(v1[6] + 2704) = v1 + 3998;
    *(v1[6] + 2712) = v1 + 4002;
    *(v1[6] + 2720) = v1 + 4026;
    *(v1[6] + 2728) = v1 + 4030;
    *(v1[6] + 2736) = v1 + 4034;
    *(v1[6] + 2744) = v1 + 4038;
    *(v1[6] + 2752) = v1 + 4042;
    *(v1[6] + 2760) = v1 + 4066;
    *(v1[6] + 2768) = v1 + 4070;
    *(v1[6] + 2776) = v1 + 4074;
    *(v1[6] + 2784) = v1 + 4078;
    *(v1[6] + 2792) = v1 + 4082;
    *(v1[6] + 2800) = v1 + 4086;
    *(v1[6] + 2808) = v1 + 4090;
    *(v1[6] + 2816) = v1 + 4094;
    *(v1[6] + 2824) = v1 + 4098;
    *(v1[6] + 2832) = v1 + 4102;
    *(v1[6] + 2840) = v1 + 4202;
    *(v1[6] + 2848) = v1 + 4206;
    *(v1[6] + 2856) = v1 + 4226;
    *(v1[6] + 2864) = v1 + 4230;
    *(v1[6] + 2872) = v1 + 4234;
    *(v1[6] + 2880) = v1 + 4238;
    *(v1[6] + 2888) = v1 + 4242;
    *(v1[6] + 2896) = v1 + 4246;
    *(v1[6] + 2904) = v1 + 4410;
    *(v1[6] + 2912) = v1 + 4414;
    *(v1[6] + 2920) = v1 + 4418;
    *(v1[6] + 2928) = v1 + 4422;
    *(v1[6] + 2936) = v1 + 4426;
    *(v1[6] + 2944) = v1 + 4430;
    *(v1[6] + 2952) = v1 + 4434;
    *(v1[6] + 2960) = v1 + 4438;
    *(v1[6] + 2968) = v1 + 4442;
    *(v1[6] + 2976) = v1 + 4446;
    *(v1[6] + 2984) = v1 + 4450;
    *(v1[6] + 2992) = v1 + 4474;
    *(v1[6] + 3000) = v1 + 4478;
    *(v1[6] + 3008) = v1 + 4482;
    *(v1[6] + 3016) = v1 + 4486;
    *(v1[6] + 3024) = v1 + 4490;
    *(v1[6] + 3032) = v1 + 4494;
    *(v1[6] + 3040) = v1 + 4498;
    *(v1[6] + 3048) = v1 + 4502;
    *(v1[6] + 3056) = v1 + 4506;
    *(v1[6] + 3064) = v1 + 4510;
    *(v1[6] + 3072) = v1 + 4514;
    *(v1[6] + 3080) = v1 + 4518;
    *(v1[6] + 3088) = v1 + 4522;
    *(v1[6] + 3096) = v1 + 4526;
    *(v1[6] + 3104) = v1 + 4530;
    *(v1[6] + 3112) = v1 + 4534;
    *(v1[6] + 3120) = v1 + 4538;
    *(v1[6] + 3128) = v1 + 4542;
    *(v1[6] + 3136) = v1 + 4546;
    *(v1[6] + 3144) = v1 + 4550;
    *(v1[6] + 3152) = v1 + 4554;
    *(v1[6] + 3160) = v1 + 4558;
    *(v1[6] + 3168) = v1 + 4562;
    *(v1[6] + 3176) = v1 + 4566;
    *(v1[6] + 3184) = v1 + 4570;
    *(v1[6] + 3192) = v1 + 4574;
    *(v1[6] + 3200) = v1 + 4578;
    *(v1[6] + 3208) = v1 + 4582;
    *(v1[6] + 3216) = v1 + 4586;
    *(v1[6] + 3224) = v1 + 4590;
    *(v1[6] + 3232) = v1 + 4594;
    *(v1[6] + 3240) = v1 + 4598;
    *(v1[6] + 3248) = v1 + 4602;
    *(v1[6] + 3256) = v1 + 4606;
    *(v1[6] + 3264) = v1 + 4610;
    *(v1[6] + 3272) = v1 + 4614;
    *(v1[6] + 3280) = v1 + 4618;
    *(v1[6] + 3288) = v1 + 4622;
    *(v1[6] + 3296) = v1 + 4626;
    *(v1[6] + 3304) = v1 + 4630;
    *(v1[6] + 3312) = v1 + 4634;
    *(v1[6] + 3320) = v1 + 4638;
    *(v1[6] + 3328) = v1 + 4642;
    *(v1[6] + 3336) = v1 + 4646;
    *(v1[6] + 3344) = v1 + 4650;
    *(v1[6] + 3352) = v1 + 4654;
    *(v1[6] + 3360) = v1 + 4658;
    *(v1[6] + 3368) = v1 + 4662;
    *(v1[6] + 3376) = v1 + 4666;
    *(v1[6] + 3384) = v1 + 4670;
    *(v1[6] + 3392) = v1 + 4674;
    *(v1[6] + 3400) = v1 + 4678;
    *(v1[6] + 3408) = v1 + 4682;
    *(v1[6] + 3416) = v1 + 4686;
    *(v1[6] + 3424) = v1 + 4690;
    *(v1[6] + 3432) = v1 + 4694;
    *(v1[6] + 3440) = v1 + 4698;
    *(v1[6] + 3448) = v1 + 4702;
    *(v1[6] + 3456) = v1 + 4706;
    *(v1[6] + 3464) = v1 + 4710;
    *(v1[6] + 3472) = v1 + 4714;
    *(v1[6] + 3480) = v1 + 4718;
    *(v1[6] + 3488) = v1 + 4722;
    *(v1[6] + 3496) = v1 + 4726;
    *(v1[6] + 3504) = v1 + 4730;
    *(v1[6] + 3512) = v1 + 4734;
    *(v1[6] + 3520) = v1 + 4738;
    *(v1[6] + 3528) = v1 + 4742;
    *(v1[6] + 3536) = v1 + 4746;
    *(v1[6] + 3544) = v1 + 4750;
    *(v1[6] + 3552) = v1 + 4754;
    *(v1[6] + 3560) = v1 + 4758;
    *(v1[6] + 3568) = v1 + 4762;
    *(v1[6] + 3576) = v1 + 4766;
    *(v1[6] + 3584) = v1 + 4770;
    *(v1[6] + 3592) = v1 + 4774;
    *(v1[6] + 3600) = v1 + 4778;
    *(v1[6] + 3608) = v1 + 4782;
    *(v1[6] + 3616) = v1 + 4786;
    *(v1[6] + 3624) = v1 + 4790;
    *(v1[6] + 3632) = v1 + 4794;
    *(v1[6] + 3640) = v1 + 4798;
    *(v1[6] + 3648) = v1 + 4802;
    *(v1[6] + 3656) = v1 + 4806;
    *(v1[6] + 3664) = v1 + 4874;
    *(v1[6] + 3672) = v1 + 4878;
    *(v1[6] + 3680) = v1 + 4882;
    *(v1[6] + 3688) = v1 + 4886;
    *(v1[6] + 3696) = v1 + 4890;
    *(v1[6] + 3704) = v1 + 4894;
    *(v1[6] + 3712) = v1 + 4898;
    *(v1[6] + 3720) = v1 + 4902;
    *(v1[6] + 3728) = v1 + 4906;
    *(v1[6] + 3736) = v1 + 5106;
    *(v1[6] + 3744) = v1 + 5110;
    *(v1[6] + 3752) = v1 + 5162;
    *(v1[6] + 3760) = v1 + 5166;
    *(v1[6] + 3768) = v1 + 5234;
    *(v1[6] + 3776) = v1 + 5258;
    *(v1[6] + 3784) = v1 + 5282;
    *(v1[6] + 3792) = v1 + 5286;
    *(v1[6] + 3800) = v1 + 5290;
    *(v1[6] + 3808) = v1 + 5294;
    *(v1[6] + 3816) = v1 + 5298;
    *(v1[6] + 3824) = v1 + 5302;
    *(v1[6] + 3832) = v1 + 5306;
    *(v1[6] + 3840) = v1 + 5310;
    *(v1[6] + 3848) = v1 + 5314;
    *(v1[6] + 3856) = v1 + 5318;
    *(v1[6] + 3864) = v1 + 5322;
    *(v1[6] + 3872) = v1 + 5326;
    *(v1[6] + 3880) = v1 + 5330;
    *(v1[6] + 3888) = v1 + 5334;
    *(v1[6] + 3896) = v1 + 5338;
    *(v1[6] + 3904) = v1 + 5410;
    *(v1[6] + 3912) = v1 + 5414;
    *(v1[6] + 3920) = v1 + 5514;
    *(v1[6] + 3928) = v1 + 5570;
    *(v1[6] + 3936) = v1 + 5574;
    *(v1[6] + 3944) = v1 + 5578;
    *(v1[6] + 3952) = v1 + 5582;
    *(v1[6] + 3960) = v1 + 5586;
    *(v1[6] + 3968) = v1 + 5590;
    *(v1[6] + 3976) = v1 + 5610;
    *(v1[6] + 3984) = v1 + 5614;
    *(v1[6] + 3992) = v1 + 5618;
    *(v1[6] + 4000) = v1 + 5622;
    *(v1[6] + 4008) = v1 + 5626;
    *(v1[6] + 4016) = v1 + 5630;
    *(v1[6] + 4024) = v1 + 5634;
    *(v1[6] + 4032) = v1 + 5638;
    *(v1[6] + 4040) = v1 + 5642;
    *(v1[6] + 4048) = v1 + 5646;
    *(v1[6] + 4056) = v1 + 5650;
    *(v1[6] + 4064) = v1 + 5654;
    *(v1[6] + 4072) = v1 + 5658;
    *(v1[6] + 4080) = v1 + 5662;
    *(v1[6] + 4088) = v1 + 5666;
    *(v1[6] + 4096) = v1 + 5670;
    *(v1[6] + 4104) = v1 + 5674;
    *(v1[6] + 4112) = v1 + 5678;
    *(v1[6] + 4120) = v1 + 5682;
    *(v1[6] + 4128) = v1 + 5686;
    *(v1[6] + 4136) = v1 + 5690;
    *(v1[6] + 4144) = v1 + 5694;
    *(v1[6] + 4152) = v1 + 5698;
    *(v1[6] + 4160) = v1 + 5702;
    *(v1[6] + 4168) = v1 + 5706;
    *(v1[6] + 4176) = v1 + 5710;
    *(v1[6] + 4184) = v1 + 5714;
    *(v1[6] + 4192) = v1 + 5718;
    *(v1[6] + 4200) = v1 + 5722;
    *(v1[6] + 4208) = v1 + 5726;
    *(v1[6] + 4216) = v1 + 5730;
    *(v1[6] + 4224) = v1 + 5734;
    *(v1[6] + 4232) = v1 + 5738;
    *(v1[6] + 4240) = v1 + 5742;
    *(v1[6] + 4248) = v1 + 5746;
    *(v1[6] + 4256) = v1 + 5750;
    *(v1[6] + 4264) = v1 + 5754;
    *(v1[6] + 4272) = v1 + 5758;
    *(v1[6] + 4280) = v1 + 5762;
    *(v1[6] + 4288) = v1 + 5766;
    *(v1[6] + 4296) = v1 + 5770;
    *(v1[6] + 4304) = v1 + 5774;
    *(v1[6] + 4312) = v1 + 5778;
    *(v1[6] + 4320) = v1 + 5782;
    *(v1[6] + 4328) = v1 + 5786;
    *(v1[6] + 4336) = v1 + 5790;
    *(v1[6] + 4344) = v1 + 5794;
    *(v1[6] + 4352) = v1 + 5798;
    *(v1[6] + 4360) = v1 + 5802;
    *(v1[6] + 4368) = v1 + 5806;
    *(v1[6] + 4376) = v1 + 5810;
    *(v1[6] + 4384) = v1 + 5814;
    *(v1[6] + 4392) = v1 + 5818;
    *(v1[6] + 4400) = v1 + 5822;
    *(v1[6] + 4408) = v1 + 5826;
    *(v1[6] + 4416) = v1 + 5830;
    *(v1[6] + 4424) = v1 + 5834;
    *(v1[6] + 4432) = v1 + 5838;
    *(v1[6] + 4440) = v1 + 5842;
    *(v1[6] + 4448) = v1 + 5846;
    *(v1[6] + 4456) = v1 + 5850;
    *(v1[6] + 4464) = v1 + 5854;
    *(v1[6] + 4472) = v1 + 5858;
    *(v1[6] + 4480) = v1 + 5862;
    *(v1[6] + 4488) = v1 + 5866;
    *(v1[6] + 4496) = v1 + 5870;
    *(v1[6] + 4504) = v1 + 5874;
    *(v1[6] + 4512) = v1 + 5878;
    *(v1[6] + 4520) = v1 + 5882;
    *(v1[6] + 4528) = v1 + 5886;
    *(v1[6] + 4536) = v1 + 5890;
    *(v1[6] + 4544) = v1 + 5894;
    *(v1[6] + 4552) = v1 + 5898;
    *(v1[6] + 4560) = v1 + 5902;
    *(v1[6] + 4568) = v1 + 5906;
    *(v1[6] + 4576) = v1 + 5910;
    *(v1[6] + 4584) = v1 + 5914;
    *(v1[6] + 4592) = v1 + 5918;
    *(v1[6] + 4600) = v1 + 5922;
    *(v1[6] + 4608) = v1 + 5926;
    *(v1[6] + 4616) = v1 + 5930;
    *(v1[6] + 4624) = v1 + 5934;
    *(v1[6] + 4632) = v1 + 5938;
    *(v1[6] + 4640) = v1 + 5942;
    *(v1[6] + 4648) = v1 + 5946;
    *(v1[6] + 4656) = v1 + 5950;
    *(v1[6] + 4664) = v1 + 5954;
    *(v1[6] + 4672) = v1 + 5958;
    *(v1[6] + 4680) = v1 + 5962;
    *(v1[6] + 4688) = v1 + 5966;
    *(v1[6] + 4696) = v1 + 5970;
    *(v1[6] + 4704) = v1 + 5974;
    *(v1[6] + 4712) = v1 + 5978;
    *(v1[6] + 4720) = v1 + 5982;
    *(v1[6] + 4728) = v1 + 5986;
    *(v1[6] + 4736) = v1 + 5990;
    *(v1[6] + 4744) = v1 + 5994;
    *(v1[6] + 4752) = v1 + 5998;
    *(v1[6] + 4760) = v1 + 6002;
    *(v1[6] + 4768) = v1 + 6006;
    *(v1[6] + 4776) = v1 + 6010;
    *(v1[6] + 4784) = v1 + 6034;
    *(v1[6] + 4792) = v1 + 6218;
    *(v1[6] + 4800) = v1 + 6222;
    *(v1[6] + 4808) = v1 + 6242;
    *(v1[6] + 4816) = v1 + 6246;
    *(v1[6] + 4824) = v1 + 6250;
    *(v1[6] + 4832) = v1 + 6254;
    *(v1[6] + 4840) = v1 + 6258;
    *(v1[6] + 4848) = v1 + 6262;
    *(v1[6] + 4856) = v1 + 6266;
    *(v1[6] + 4864) = v1 + 6270;
    *(v1[6] + 4872) = v1 + 6274;
    *(v1[6] + 4880) = v1 + 6278;
    *(v1[6] + 4888) = v1 + 634;
    *(v1[6] + 4896) = v1 + 722;
    *(v1[6] + 4904) = v1 + 726;
    *(v1[6] + 4912) = v1 + 730;
    *(v1[6] + 4920) = v1 + 734;
    *(v1[6] + 4928) = v1 + 738;
    *(v1[6] + 4936) = v1 + 742;
    *(v1[6] + 4944) = v1 + 746;
    *(v1[6] + 4952) = v1 + 750;
    *(v1[6] + 4960) = v1 + 754;
    *(v1[6] + 4968) = v1 + 758;
    *(v1[6] + 4976) = v1 + 762;
    *(v1[6] + 4984) = v1 + 766;
    *(v1[6] + 4992) = v1 + 930;
    *(v1[6] + 5000) = v1 + 934;
    *(v1[6] + 5008) = v1 + 938;
    *(v1[6] + 5016) = v1 + 942;
    *(v1[6] + 5024) = v1 + 946;
    *(v1[6] + 5032) = v1 + 950;
    *(v1[6] + 5040) = v1 + 954;
    *(v1[6] + 5048) = v1 + 958;
    *(v1[6] + 5056) = v1 + 962;
    *(v1[6] + 5064) = v1 + 966;
    *(v1[6] + 5072) = v1 + 970;
    *(v1[6] + 5080) = v1 + 974;
    *(v1[6] + 5088) = v1 + 978;
    *(v1[6] + 5096) = v1 + 982;
    *(v1[6] + 5104) = v1 + 986;
    *(v1[6] + 5112) = v1 + 990;
    *(v1[6] + 5120) = v1 + 994;
    *(v1[6] + 5128) = v1 + 998;
    *(v1[6] + 5136) = v1 + 1002;
    *(v1[6] + 5144) = v1 + 1006;
    *(v1[6] + 5152) = v1 + 1010;
    *(v1[6] + 5160) = v1 + 1014;
    *(v1[6] + 5168) = v1 + 1018;
    *(v1[6] + 5176) = v1 + 1022;
    *(v1[6] + 5184) = v1 + 1026;
    *(v1[6] + 5192) = v1 + 1030;
    *(v1[6] + 5200) = v1 + 1130;
    *(v1[6] + 5208) = v1 + 1186;
    *(v1[6] + 5216) = v1 + 1190;
    *(v1[6] + 5224) = v1 + 1210;
    *(v1[6] + 5232) = v1 + 1214;
    *(v1[6] + 5240) = v1 + 1218;
    *(v1[6] + 5248) = v1 + 2122;
    *(v1[6] + 5256) = v1 + 2126;
    *(v1[6] + 5264) = v1 + 2130;
    *(v1[6] + 5272) = v1 + 2134;
    *(v1[6] + 5280) = v1 + 2138;
    *(v1[6] + 5288) = v1 + 2142;
    *(v1[6] + 5296) = v1 + 2146;
    *(v1[6] + 5304) = v1 + 2150;
    *(v1[6] + 5312) = v1 + 2154;
    *(v1[6] + 5320) = v1 + 2158;
    *(v1[6] + 5328) = v1 + 2162;
    *(v1[6] + 5336) = v1 + 2166;
    *(v1[6] + 5344) = v1 + 2170;
    *(v1[6] + 5352) = v1 + 2174;
    *(v1[6] + 5360) = v1 + 2178;
    *(v1[6] + 5368) = v1 + 2182;
    *(v1[6] + 5376) = v1 + 2186;
    *(v1[6] + 5384) = v1 + 2190;
    *(v1[6] + 5392) = v1 + 2194;
    *(v1[6] + 5400) = v1 + 2198;
    *(v1[6] + 5408) = v1 + 2202;
    *(v1[6] + 5416) = v1 + 2206;
    *(v1[6] + 5424) = v1 + 2210;
    *(v1[6] + 5432) = v1 + 2214;
    *(v1[6] + 5440) = v1 + 2218;
    *(v1[6] + 5448) = v1 + 2222;
    *(v1[6] + 5456) = v1 + 2226;
    *(v1[6] + 5464) = v1 + 2230;
    *(v1[6] + 5472) = v1 + 2234;
    *(v1[6] + 5480) = v1 + 2238;
    *(v1[6] + 5488) = v1 + 2242;
    *(v1[6] + 5496) = v1 + 2246;
    *(v1[6] + 5504) = v1 + 2250;
    *(v1[6] + 5512) = v1 + 2254;
    *(v1[6] + 5520) = v1 + 2258;
    *(v1[6] + 5528) = v1 + 2262;
    *(v1[6] + 5536) = v1 + 2266;
    *(v1[6] + 5544) = v1 + 2270;
    *(v1[6] + 5552) = v1 + 2274;
    *(v1[6] + 5560) = v1 + 2278;
    *(v1[6] + 5568) = v1 + 2282;
    *(v1[6] + 5576) = v1 + 2286;
    *(v1[6] + 5584) = v1 + 2466;
    *(v1[6] + 5592) = v1 + 2470;
    *(v1[6] + 5600) = v1 + 2474;
    *(v1[6] + 5608) = v1 + 2478;
    *(v1[6] + 5616) = v1 + 2482;
    *(v1[6] + 5624) = v1 + 2538;
    *(v1[6] + 5632) = v1 + 2542;
    *(v1[6] + 5640) = v1 + 2546;
    *(v1[6] + 5648) = v1 + 2578;
    *(v1[6] + 5656) = v1 + 2582;
    *(v1[6] + 5664) = v1 + 2586;
    *(v1[6] + 5672) = v1 + 2590;
    *(v1[6] + 5680) = v1 + 2594;
    *(v1[6] + 5688) = v1 + 2598;
    *(v1[6] + 5696) = v1 + 2602;
    *(v1[6] + 5704) = v1 + 2606;
    *(v1[6] + 5712) = v1 + 2610;
    *(v1[6] + 5720) = v1 + 2614;
    *(v1[6] + 5728) = v1 + 2618;
    *(v1[6] + 5736) = v1 + 2622;
    *(v1[6] + 5744) = v1 + 2626;
    *(v1[6] + 5752) = v1 + 2630;
    *(v1[6] + 5760) = v1 + 2634;
    *(v1[6] + 5768) = v1 + 2638;
    *(v1[6] + 5776) = v1 + 2706;
    *(v1[6] + 5784) = v1 + 2730;
    *(v1[6] + 5792) = v1 + 2734;
    *(v1[6] + 5800) = v1 + 2738;
    *(v1[6] + 5808) = v1 + 2742;
    *(v1[6] + 5816) = v1 + 2746;
    *(v1[6] + 5824) = v1 + 2750;
    *(v1[6] + 5832) = v1 + 2754;
    *(v1[6] + 5840) = v1 + 2758;
    *(v1[6] + 5848) = v1 + 2762;
    *(v1[6] + 5856) = v1 + 2766;
    *(v1[6] + 5864) = v1 + 2770;
    *(v1[6] + 5872) = v1 + 2774;
    *(v1[6] + 5880) = v1 + 2778;
    *(v1[6] + 5888) = v1 + 2782;
    *(v1[6] + 5896) = v1 + 2786;
    *(v1[6] + 5904) = v1 + 2790;
    *(v1[6] + 5912) = v1 + 2794;
    *(v1[6] + 5920) = v1 + 2798;
    *(v1[6] + 5928) = v1 + 2802;
    *(v1[6] + 5936) = v1 + 2806;
    *(v1[6] + 5944) = v1 + 2810;
    *(v1[6] + 5952) = v1 + 2814;
    *(v1[6] + 5960) = v1 + 2818;
    *(v1[6] + 5968) = v1 + 2822;
    *(v1[6] + 5976) = v1 + 2826;
    *(v1[6] + 5984) = v1 + 2830;
    *(v1[6] + 5992) = v1 + 2834;
    *(v1[6] + 6000) = v1 + 2838;
    *(v1[6] + 6008) = v1 + 2842;
    *(v1[6] + 6016) = v1 + 2846;
    *(v1[6] + 6024) = v1 + 2850;
    *(v1[6] + 6032) = v1 + 2854;
    *(v1[6] + 6040) = v1 + 2858;
    *(v1[6] + 6048) = v1 + 2862;
    *(v1[6] + 6056) = v1 + 2866;
    *(v1[6] + 6064) = v1 + 2870;
    *(v1[6] + 6072) = v1 + 2874;
    *(v1[6] + 6080) = v1 + 2878;
    *(v1[6] + 6088) = v1 + 2882;
    *(v1[6] + 6096) = v1 + 2886;
    *(v1[6] + 6104) = v1 + 2890;
    *(v1[6] + 6112) = v1 + 2894;
    *(v1[6] + 6120) = v1 + 2898;
    *(v1[6] + 6128) = v1 + 2902;
    *(v1[6] + 6136) = v1 + 2906;
    *(v1[6] + 6144) = v1 + 2910;
    *(v1[6] + 6152) = v1 + 2914;
    *(v1[6] + 6160) = v1 + 2918;
    *(v1[6] + 6168) = v1 + 2922;
    *(v1[6] + 6176) = v1 + 2926;
    *(v1[6] + 6184) = v1 + 2930;
    *(v1[6] + 6192) = v1 + 2934;
    *(v1[6] + 6200) = v1 + 2938;
    *(v1[6] + 6208) = v1 + 2942;
    *(v1[6] + 6216) = v1 + 2946;
    *(v1[6] + 6224) = v1 + 2950;
    *(v1[6] + 6232) = v1 + 2954;
    *(v1[6] + 6240) = v1 + 2958;
    *(v1[6] + 6248) = v1 + 2962;
    *(v1[6] + 6256) = v1 + 2966;
    *(v1[6] + 6264) = v1 + 2970;
    *(v1[6] + 6272) = v1 + 2974;
    *(v1[6] + 6280) = v1 + 2978;
    *(v1[6] + 6288) = v1 + 2982;
    *(v1[6] + 6296) = v1 + 2986;
    *(v1[6] + 6304) = v1 + 2990;
    *(v1[6] + 6312) = v1 + 2994;
    *(v1[6] + 6320) = v1 + 2998;
    *(v1[6] + 6328) = v1 + 3002;
    *(v1[6] + 6336) = v1 + 3006;
    *(v1[6] + 6344) = v1 + 3010;
    *(v1[6] + 6352) = v1 + 3014;
    *(v1[6] + 6360) = v1 + 3018;
    *(v1[6] + 6368) = v1 + 3022;
    *(v1[6] + 6376) = v1 + 3026;
    *(v1[6] + 6384) = v1 + 3030;
    *(v1[6] + 6392) = v1 + 3034;
    *(v1[6] + 6400) = v1 + 3038;
    *(v1[6] + 6408) = v1 + 3042;
    *(v1[6] + 6416) = v1 + 3046;
    *(v1[6] + 6424) = v1 + 3050;
    *(v1[6] + 6432) = v1 + 3054;
    *(v1[6] + 6440) = v1 + 3058;
    *(v1[6] + 6448) = v1 + 3062;
    *(v1[6] + 6456) = v1 + 3066;
    *(v1[6] + 6464) = v1 + 3070;
    *(v1[6] + 6472) = v1 + 3074;
    *(v1[6] + 6480) = v1 + 3078;
    *(v1[6] + 6488) = v1 + 3082;
    *(v1[6] + 6496) = v1 + 3086;
    *(v1[6] + 6504) = v1 + 3090;
    *(v1[6] + 6512) = v1 + 3094;
    *(v1[6] + 6520) = v1 + 3098;
    *(v1[6] + 6528) = v1 + 3102;
    *(v1[6] + 6536) = v1 + 3106;
    *(v1[6] + 6544) = v1 + 3110;
    *(v1[6] + 6552) = v1 + 3114;
    *(v1[6] + 6560) = v1 + 3118;
    *(v1[6] + 6568) = v1 + 3122;
    *(v1[6] + 6576) = v1 + 3126;
    *(v1[6] + 6584) = v1 + 3130;
    *(v1[6] + 6592) = v1 + 3134;
    *(v1[6] + 6600) = v1 + 3138;
    *(v1[6] + 6608) = v1 + 3142;
    *(v1[6] + 6616) = v1 + 3146;
    *(v1[6] + 6624) = v1 + 3150;
    *(v1[6] + 6632) = v1 + 3154;
    *(v1[6] + 6640) = v1 + 3158;
    *(v1[6] + 6648) = v1 + 3162;
    *(v1[6] + 6656) = v1 + 3166;
    *(v1[6] + 6664) = v1 + 3170;
    *(v1[6] + 6672) = v1 + 3174;
    *(v1[6] + 6680) = v1 + 3178;
    *(v1[6] + 6688) = v1 + 3182;
    *(v1[6] + 6696) = v1 + 3186;
    *(v1[6] + 6704) = v1 + 3190;
    *(v1[6] + 6712) = v1 + 3194;
    *(v1[6] + 6720) = v1 + 3198;
    *(v1[6] + 6728) = v1 + 3202;
    *(v1[6] + 6736) = v1 + 3206;
    *(v1[6] + 6744) = v1 + 3210;
    *(v1[6] + 6752) = v1 + 3214;
    *(v1[6] + 6760) = v1 + 3218;
    *(v1[6] + 6768) = v1 + 3222;
    *(v1[6] + 6776) = v1 + 3226;
    *(v1[6] + 6784) = v1 + 3230;
    *(v1[6] + 6792) = v1 + 3234;
    *(v1[6] + 6800) = v1 + 3238;
    *(v1[6] + 6808) = v1 + 3242;
    *(v1[6] + 6816) = v1 + 3246;
    *(v1[6] + 6824) = v1 + 3250;
    *(v1[6] + 6832) = v1 + 3254;
    *(v1[6] + 6840) = v1 + 3258;
    *(v1[6] + 6848) = v1 + 3262;
    *(v1[6] + 6856) = v1 + 3266;
    *(v1[6] + 6864) = v1 + 3270;
    *(v1[6] + 6872) = v1 + 3274;
    *(v1[6] + 6880) = v1 + 3378;
    *(v1[6] + 6888) = v1 + 3382;
    *(v1[6] + 6896) = v1 + 3386;
    *(v1[6] + 6904) = v1 + 3390;
    *(v1[6] + 6912) = v1 + 3394;
    *(v1[6] + 6920) = v1 + 3398;
    *(v1[6] + 6928) = v1 + 3402;
    *(v1[6] + 6936) = v1 + 3406;
    *(v1[6] + 6944) = v1 + 3410;
    *(v1[6] + 6952) = v1 + 3414;
    *(v1[6] + 6960) = v1 + 3418;
    *(v1[6] + 6968) = v1 + 3422;
    *(v1[6] + 6976) = v1 + 3426;
    *(v1[6] + 6984) = v1 + 3430;
    *(v1[6] + 6992) = v1 + 3434;
    *(v1[6] + 7000) = v1 + 3438;
    *(v1[6] + 7008) = v1 + 3442;
    *(v1[6] + 7016) = v1 + 3446;
    *(v1[6] + 7024) = v1 + 3450;
    *(v1[6] + 7032) = v1 + 3454;
    *(v1[6] + 7040) = v1 + 3458;
    *(v1[6] + 7048) = v1 + 3462;
    *(v1[6] + 7056) = v1 + 3466;
    *(v1[6] + 7064) = v1 + 3470;
    *(v1[6] + 7072) = v1 + 3474;
    *(v1[6] + 7080) = v1 + 3478;
    *(v1[6] + 7088) = v1 + 3482;
    *(v1[6] + 7096) = v1 + 3486;
    *(v1[6] + 7104) = v1 + 3490;
    *(v1[6] + 7112) = v1 + 3494;
    *(v1[6] + 7120) = v1 + 3498;
    *(v1[6] + 7128) = v1 + 3502;
    *(v1[6] + 7136) = v1 + 3506;
    *(v1[6] + 7144) = v1 + 3510;
    *(v1[6] + 7152) = v1 + 3514;
    *(v1[6] + 7160) = v1 + 3518;
    *(v1[6] + 7168) = v1 + 3522;
    *(v1[6] + 7176) = v1 + 3526;
    *(v1[6] + 7184) = v1 + 3530;
    *(v1[6] + 7192) = v1 + 3534;
    *(v1[6] + 7200) = v1 + 3554;
    *(v1[6] + 7208) = v1 + 3558;
    *(v1[6] + 7216) = v1 + 3562;
    *(v1[6] + 7224) = v1 + 3602;
    *(v1[6] + 7232) = v1 + 3606;
    *(v1[6] + 7240) = v1 + 3610;
    *(v1[6] + 7248) = v1 + 3614;
    *(v1[6] + 7256) = v1 + 3618;
    *(v1[6] + 7264) = v1 + 3622;
    *(v1[6] + 7272) = v1 + 3626;
    *(v1[6] + 7280) = v1 + 3630;
    *(v1[6] + 7288) = v1 + 3634;
    *(v1[6] + 7296) = v1 + 3638;
    *(v1[6] + 7304) = v1 + 3642;
    *(v1[6] + 7312) = v1 + 3646;
    *(v1[6] + 7320) = v1 + 3650;
    *(v1[6] + 7328) = v1 + 3654;
    *(v1[6] + 7336) = v1 + 3658;
    *(v1[6] + 7344) = v1 + 3662;
    *(v1[6] + 7352) = v1 + 3666;
    *(v1[6] + 7360) = v1 + 3670;
    *(v1[6] + 7368) = v1 + 3674;
    *(v1[6] + 7376) = v1 + 3678;
    *(v1[6] + 7384) = v1 + 3682;
    *(v1[6] + 7392) = v1 + 3686;
    *(v1[6] + 7400) = v1 + 3690;
    *(v1[6] + 7408) = v1 + 3694;
    *(v1[6] + 7416) = v1 + 3698;
    *(v1[6] + 7424) = v1 + 3702;
    *(v1[6] + 7432) = v1 + 3706;
    *(v1[6] + 7440) = v1 + 3710;
    *(v1[6] + 7448) = v1 + 3714;
    *(v1[6] + 7456) = v1 + 3718;
    *(v1[6] + 7464) = v1 + 3722;
    *(v1[6] + 7472) = v1 + 3726;
    *(v1[6] + 7480) = v1 + 3730;
    *(v1[6] + 7488) = v1 + 3734;
    *(v1[6] + 7496) = v1 + 3738;
    *(v1[6] + 7504) = v1 + 3742;
    *(v1[6] + 7512) = v1 + 3746;
    *(v1[6] + 7520) = v1 + 3750;
    *(v1[6] + 7528) = v1 + 3754;
    *(v1[6] + 7536) = v1 + 3758;
    *(v1[6] + 7544) = v1 + 3762;
    *(v1[6] + 7552) = v1 + 3766;
    *(v1[6] + 7560) = v1 + 3770;
    *(v1[6] + 7568) = v1 + 3938;
    *(v1[6] + 7576) = v1 + 3970;
    *(v1[6] + 7584) = v1 + 3994;
    *(v1[6] + 7592) = v1 + 3998;
    *(v1[6] + 7600) = v1 + 4002;
    *(v1[6] + 7608) = v1 + 4026;
    *(v1[6] + 7616) = v1 + 4030;
    *(v1[6] + 7624) = v1 + 4034;
    *(v1[6] + 7632) = v1 + 4038;
    *(v1[6] + 7640) = v1 + 4042;
    *(v1[6] + 7648) = v1 + 4066;
    *(v1[6] + 7656) = v1 + 4070;
    *(v1[6] + 7664) = v1 + 4074;
    *(v1[6] + 7672) = v1 + 4078;
    *(v1[6] + 7680) = v1 + 4082;
    *(v1[6] + 7688) = v1 + 4086;
    *(v1[6] + 7696) = v1 + 4090;
    *(v1[6] + 7704) = v1 + 4094;
    *(v1[6] + 7712) = v1 + 4098;
    *(v1[6] + 7720) = v1 + 4102;
    *(v1[6] + 7728) = v1 + 4202;
    *(v1[6] + 7736) = v1 + 4206;
    *(v1[6] + 7744) = v1 + 4226;
    *(v1[6] + 7752) = v1 + 4230;
    *(v1[6] + 7760) = v1 + 4234;
    *(v1[6] + 7768) = v1 + 4238;
    *(v1[6] + 7776) = v1 + 4242;
    *(v1[6] + 7784) = v1 + 4246;
    *(v1[6] + 7792) = v1 + 4410;
    *(v1[6] + 7800) = v1 + 4414;
    *(v1[6] + 7808) = v1 + 4418;
    *(v1[6] + 7816) = v1 + 4422;
    *(v1[6] + 7824) = v1 + 4426;
    *(v1[6] + 7832) = v1 + 4430;
    *(v1[6] + 7840) = v1 + 4434;
    *(v1[6] + 7848) = v1 + 4438;
    *(v1[6] + 7856) = v1 + 4442;
    *(v1[6] + 7864) = v1 + 4446;
    *(v1[6] + 7872) = v1 + 4450;
    *(v1[6] + 7880) = v1 + 4474;
    *(v1[6] + 7888) = v1 + 4478;
    *(v1[6] + 7896) = v1 + 4482;
    *(v1[6] + 7904) = v1 + 4486;
    *(v1[6] + 7912) = v1 + 4490;
    *(v1[6] + 7920) = v1 + 4494;
    *(v1[6] + 7928) = v1 + 4498;
    *(v1[6] + 7936) = v1 + 4502;
    *(v1[6] + 7944) = v1 + 4506;
    *(v1[6] + 7952) = v1 + 4510;
    *(v1[6] + 7960) = v1 + 4514;
    *(v1[6] + 7968) = v1 + 4518;
    *(v1[6] + 7976) = v1 + 4522;
    *(v1[6] + 7984) = v1 + 4526;
    *(v1[6] + 7992) = v1 + 4530;
    *(v1[6] + 8000) = v1 + 4534;
    *(v1[6] + 8008) = v1 + 4538;
    *(v1[6] + 8016) = v1 + 4542;
    *(v1[6] + 8024) = v1 + 4546;
    *(v1[6] + 8032) = v1 + 4550;
    *(v1[6] + 8040) = v1 + 4554;
    *(v1[6] + 8048) = v1 + 4558;
    *(v1[6] + 8056) = v1 + 4562;
    *(v1[6] + 8064) = v1 + 4566;
    *(v1[6] + 8072) = v1 + 4570;
    *(v1[6] + 8080) = v1 + 4574;
    *(v1[6] + 8088) = v1 + 4578;
    *(v1[6] + 8096) = v1 + 4582;
    *(v1[6] + 8104) = v1 + 4586;
    *(v1[6] + 8112) = v1 + 4590;
    *(v1[6] + 8120) = v1 + 4594;
    *(v1[6] + 8128) = v1 + 4598;
    *(v1[6] + 8136) = v1 + 4602;
    *(v1[6] + 8144) = v1 + 4606;
    *(v1[6] + 8152) = v1 + 4610;
    *(v1[6] + 8160) = v1 + 4614;
    *(v1[6] + 8168) = v1 + 4618;
    *(v1[6] + 8176) = v1 + 4622;
    *(v1[6] + 8184) = v1 + 4626;
    *(v1[6] + 0x2000) = v1 + 4630;
    *(v1[6] + 8200) = v1 + 4634;
    *(v1[6] + 8208) = v1 + 4638;
    *(v1[6] + 8216) = v1 + 4642;
    *(v1[6] + 8224) = v1 + 4646;
    *(v1[6] + 8232) = v1 + 4650;
    *(v1[6] + 8240) = v1 + 4654;
    *(v1[6] + 8248) = v1 + 4658;
    *(v1[6] + 8256) = v1 + 4662;
    *(v1[6] + 8264) = v1 + 4666;
    *(v1[6] + 8272) = v1 + 4670;
    *(v1[6] + 8280) = v1 + 4674;
    *(v1[6] + 8288) = v1 + 4678;
    *(v1[6] + 8296) = v1 + 4682;
    *(v1[6] + 8304) = v1 + 4686;
    *(v1[6] + 8312) = v1 + 4690;
    *(v1[6] + 8320) = v1 + 4694;
    *(v1[6] + 8328) = v1 + 4698;
    *(v1[6] + 8336) = v1 + 4702;
    *(v1[6] + 8344) = v1 + 4706;
    *(v1[6] + 8352) = v1 + 4710;
    *(v1[6] + 8360) = v1 + 4714;
    *(v1[6] + 8368) = v1 + 4718;
    *(v1[6] + 8376) = v1 + 4722;
    *(v1[6] + 8384) = v1 + 4726;
    *(v1[6] + 8392) = v1 + 4730;
    *(v1[6] + 8400) = v1 + 4734;
    *(v1[6] + 8408) = v1 + 4738;
    *(v1[6] + 8416) = v1 + 4742;
    *(v1[6] + 8424) = v1 + 4746;
    *(v1[6] + 8432) = v1 + 4750;
    *(v1[6] + 8440) = v1 + 4754;
    *(v1[6] + 8448) = v1 + 4758;
    *(v1[6] + 8456) = v1 + 4762;
    *(v1[6] + 8464) = v1 + 4766;
    *(v1[6] + 8472) = v1 + 4770;
    *(v1[6] + 8480) = v1 + 4774;
    *(v1[6] + 8488) = v1 + 4778;
    *(v1[6] + 8496) = v1 + 4782;
    *(v1[6] + 8504) = v1 + 4786;
    *(v1[6] + 8512) = v1 + 4790;
    *(v1[6] + 8520) = v1 + 4794;
    *(v1[6] + 8528) = v1 + 4798;
    *(v1[6] + 8536) = v1 + 4802;
    *(v1[6] + 8544) = v1 + 4806;
    *(v1[6] + 8552) = v1 + 4874;
    *(v1[6] + 8560) = v1 + 4878;
    *(v1[6] + 8568) = v1 + 4882;
    *(v1[6] + 8576) = v1 + 4886;
    *(v1[6] + 8584) = v1 + 4890;
    *(v1[6] + 8592) = v1 + 4894;
    *(v1[6] + 8600) = v1 + 4898;
    *(v1[6] + 8608) = v1 + 4902;
    *(v1[6] + 8616) = v1 + 4906;
    *(v1[6] + 8624) = v1 + 5106;
    *(v1[6] + 8632) = v1 + 5110;
    *(v1[6] + 8640) = v1 + 5162;
    *(v1[6] + 8648) = v1 + 5166;
    *(v1[6] + 8656) = v1 + 5234;
    *(v1[6] + 8664) = v1 + 5258;
    *(v1[6] + 8672) = v1 + 5282;
    *(v1[6] + 8680) = v1 + 5286;
    *(v1[6] + 8688) = v1 + 5290;
    *(v1[6] + 8696) = v1 + 5294;
    *(v1[6] + 8704) = v1 + 5298;
    *(v1[6] + 8712) = v1 + 5302;
    *(v1[6] + 8720) = v1 + 5306;
    *(v1[6] + 8728) = v1 + 5310;
    *(v1[6] + 8736) = v1 + 5314;
    *(v1[6] + 8744) = v1 + 5318;
    *(v1[6] + 8752) = v1 + 5322;
    *(v1[6] + 8760) = v1 + 5326;
    *(v1[6] + 8768) = v1 + 5330;
    *(v1[6] + 8776) = v1 + 5334;
    *(v1[6] + 8784) = v1 + 5338;
    *(v1[6] + 8792) = v1 + 5410;
    *(v1[6] + 8800) = v1 + 5414;
    *(v1[6] + 8808) = v1 + 5514;
    *(v1[6] + 8816) = v1 + 5570;
    *(v1[6] + 8824) = v1 + 5574;
    *(v1[6] + 8832) = v1 + 5578;
    *(v1[6] + 8840) = v1 + 5582;
    *(v1[6] + 8848) = v1 + 5586;
    *(v1[6] + 8856) = v1 + 5590;
    *(v1[6] + 8864) = v1 + 5610;
    *(v1[6] + 8872) = v1 + 5614;
    *(v1[6] + 8880) = v1 + 5618;
    *(v1[6] + 8888) = v1 + 5622;
    *(v1[6] + 8896) = v1 + 5626;
    *(v1[6] + 8904) = v1 + 5630;
    *(v1[6] + 8912) = v1 + 5634;
    *(v1[6] + 8920) = v1 + 5638;
    *(v1[6] + 8928) = v1 + 5642;
    *(v1[6] + 8936) = v1 + 5646;
    *(v1[6] + 8944) = v1 + 5650;
    *(v1[6] + 8952) = v1 + 5654;
    *(v1[6] + 8960) = v1 + 5658;
    *(v1[6] + 8968) = v1 + 5662;
    *(v1[6] + 8976) = v1 + 5666;
    *(v1[6] + 8984) = v1 + 5670;
    *(v1[6] + 8992) = v1 + 5674;
    *(v1[6] + 9000) = v1 + 5678;
    *(v1[6] + 9008) = v1 + 5682;
    *(v1[6] + 9016) = v1 + 5686;
    *(v1[6] + 9024) = v1 + 5690;
    *(v1[6] + 9032) = v1 + 5694;
    *(v1[6] + 9040) = v1 + 5698;
    *(v1[6] + 9048) = v1 + 5702;
    *(v1[6] + 9056) = v1 + 5706;
    *(v1[6] + 9064) = v1 + 5710;
    *(v1[6] + 9072) = v1 + 5714;
    *(v1[6] + 9080) = v1 + 5718;
    *(v1[6] + 9088) = v1 + 5722;
    *(v1[6] + 9096) = v1 + 5726;
    *(v1[6] + 9104) = v1 + 5730;
    *(v1[6] + 9112) = v1 + 5734;
    *(v1[6] + 9120) = v1 + 5738;
    *(v1[6] + 9128) = v1 + 5742;
    *(v1[6] + 9136) = v1 + 5746;
    *(v1[6] + 9144) = v1 + 5750;
    *(v1[6] + 9152) = v1 + 5754;
    *(v1[6] + 9160) = v1 + 5758;
    *(v1[6] + 9168) = v1 + 5762;
    *(v1[6] + 9176) = v1 + 5766;
    *(v1[6] + 9184) = v1 + 5770;
    *(v1[6] + 9192) = v1 + 5774;
    *(v1[6] + 9200) = v1 + 5778;
    *(v1[6] + 9208) = v1 + 5782;
    *(v1[6] + 9216) = v1 + 5786;
    *(v1[6] + 9224) = v1 + 5790;
    *(v1[6] + 9232) = v1 + 5794;
    *(v1[6] + 9240) = v1 + 5798;
    *(v1[6] + 9248) = v1 + 5802;
    *(v1[6] + 9256) = v1 + 5806;
    *(v1[6] + 9264) = v1 + 5810;
    *(v1[6] + 9272) = v1 + 5814;
    *(v1[6] + 9280) = v1 + 5818;
    *(v1[6] + 9288) = v1 + 5822;
    *(v1[6] + 9296) = v1 + 5826;
    *(v1[6] + 9304) = v1 + 5830;
    *(v1[6] + 9312) = v1 + 5834;
    *(v1[6] + 9320) = v1 + 5838;
    *(v1[6] + 9328) = v1 + 5842;
    *(v1[6] + 9336) = v1 + 5846;
    *(v1[6] + 9344) = v1 + 5850;
    *(v1[6] + 9352) = v1 + 5854;
    *(v1[6] + 9360) = v1 + 5858;
    *(v1[6] + 9368) = v1 + 5862;
    *(v1[6] + 9376) = v1 + 5866;
    *(v1[6] + 9384) = v1 + 5870;
    *(v1[6] + 9392) = v1 + 5874;
    *(v1[6] + 9400) = v1 + 5878;
    *(v1[6] + 9408) = v1 + 5882;
    *(v1[6] + 9416) = v1 + 5886;
    *(v1[6] + 9424) = v1 + 5890;
    *(v1[6] + 9432) = v1 + 5894;
    *(v1[6] + 9440) = v1 + 5898;
    *(v1[6] + 9448) = v1 + 5902;
    *(v1[6] + 9456) = v1 + 5906;
    *(v1[6] + 9464) = v1 + 5910;
    *(v1[6] + 9472) = v1 + 5914;
    *(v1[6] + 9480) = v1 + 5918;
    *(v1[6] + 9488) = v1 + 5922;
    *(v1[6] + 9496) = v1 + 5926;
    *(v1[6] + 9504) = v1 + 5930;
    *(v1[6] + 9512) = v1 + 5934;
    *(v1[6] + 9520) = v1 + 5938;
    *(v1[6] + 9528) = v1 + 5942;
    *(v1[6] + 9536) = v1 + 5946;
    *(v1[6] + 9544) = v1 + 5950;
    *(v1[6] + 9552) = v1 + 5954;
    *(v1[6] + 9560) = v1 + 5958;
    *(v1[6] + 9568) = v1 + 5962;
    *(v1[6] + 9576) = v1 + 5966;
    *(v1[6] + 9584) = v1 + 5970;
    *(v1[6] + 9592) = v1 + 5974;
    *(v1[6] + 9600) = v1 + 5978;
    *(v1[6] + 9608) = v1 + 5982;
    *(v1[6] + 9616) = v1 + 5986;
    *(v1[6] + 9624) = v1 + 5990;
    *(v1[6] + 9632) = v1 + 5994;
    *(v1[6] + 9640) = v1 + 5998;
    *(v1[6] + 9648) = v1 + 6002;
    *(v1[6] + 9656) = v1 + 6006;
    *(v1[6] + 9664) = v1 + 6010;
    *(v1[6] + 9672) = v1 + 6034;
    *(v1[6] + 9680) = v1 + 6218;
    *(v1[6] + 9688) = v1 + 6222;
    *(v1[6] + 9696) = v1 + 6242;
    *(v1[6] + 9704) = v1 + 6246;
    *(v1[6] + 9712) = v1 + 6250;
    *(v1[6] + 9720) = v1 + 6254;
    *(v1[6] + 9728) = v1 + 6258;
    *(v1[6] + 9736) = v1 + 6262;
    *(v1[6] + 9744) = v1 + 6266;
    *(v1[6] + 9752) = v1 + 6270;
    *(v1[6] + 9760) = v1 + 6274;
    *(v1[6] + 9768) = v1 + 6278;
    v7 = malloc_type_malloc(0x390uLL, 0x80040B8603338uLL);
    v1[7] = v7;
    if (v7)
    {
      *v7 = v1 + 130;
      *(v1[7] + 8) = v1 + 132;
      *(v1[7] + 16) = v1 + 134;
      *(v1[7] + 24) = v1 + 136;
      *(v1[7] + 32) = v1 + 138;
      *(v1[7] + 40) = v1 + 140;
      *(v1[7] + 48) = v1 + 244;
      *(v1[7] + 56) = v1 + 246;
      *(v1[7] + 64) = v1 + 287;
      *(v1[7] + 72) = v1 + 289;
      *(v1[7] + 80) = v1 + 291;
      *(v1[7] + 88) = v1 + 293;
      *(v1[7] + 96) = v1 + 295;
      *(v1[7] + 104) = v1 + 297;
      *(v1[7] + 112) = v1 + 299;
      *(v1[7] + 120) = v1 + 301;
      *(v1[7] + 128) = v1 + 303;
      *(v1[7] + 136) = v1 + 305;
      *(v1[7] + 144) = v1 + 307;
      *(v1[7] + 152) = v1 + 447;
      *(v1[7] + 160) = v1 + 449;
      *(v1[7] + 168) = v1 + 491;
      *(v1[7] + 176) = v1 + 527;
      *(v1[7] + 184) = v1 + 532;
      *(v1[7] + 192) = v1 + 534;
      *(v1[7] + 200) = v1 + 536;
      *(v1[7] + 208) = v1 + 538;
      *(v1[7] + 216) = v1 + 540;
      *(v1[7] + 224) = v1 + 542;
      *(v1[7] + 232) = v1 + 544;
      *(v1[7] + 240) = v1 + 546;
      *(v1[7] + 248) = v1 + 548;
      *(v1[7] + 256) = v1 + 550;
      *(v1[7] + 264) = v1 + 558;
      *(v1[7] + 272) = v1 + 604;
      *(v1[7] + 280) = v1 + 606;
      *(v1[7] + 288) = v1 + 642;
      *(v1[7] + 296) = v1 + 644;
      *(v1[7] + 304) = v1 + 656;
      *(v1[7] + 312) = v1 + 669;
      *(v1[7] + 320) = v1 + 671;
      *(v1[7] + 328) = v1 + 673;
      *(v1[7] + 336) = v1 + 691;
      *(v1[7] + 344) = v1 + 693;
      *(v1[7] + 352) = v1 + 695;
      *(v1[7] + 360) = v1 + 700;
      *(v1[7] + 368) = v1 + 756;
      *(v1[7] + 376) = v1 + 758;
      *(v1[7] + 384) = v1 + 760;
      *(v1[7] + 392) = v1 + 762;
      *(v1[7] + 400) = v1 + 764;
      *(v1[7] + 408) = v1 + 766;
      *(v1[7] + 416) = v1 + 768;
      *(v1[7] + 424) = v1 + 770;
      *(v1[7] + 432) = v1 + 772;
      *(v1[7] + 440) = v1 + 774;
      *(v1[7] + 448) = v1 + 776;
      *(v1[7] + 456) = v1 + 130;
      *(v1[7] + 464) = v1 + 132;
      *(v1[7] + 472) = v1 + 134;
      *(v1[7] + 480) = v1 + 136;
      *(v1[7] + 488) = v1 + 138;
      *(v1[7] + 496) = v1 + 140;
      *(v1[7] + 504) = v1 + 244;
      *(v1[7] + 512) = v1 + 246;
      *(v1[7] + 520) = v1 + 287;
      *(v1[7] + 528) = v1 + 289;
      *(v1[7] + 536) = v1 + 291;
      *(v1[7] + 544) = v1 + 293;
      *(v1[7] + 552) = v1 + 295;
      *(v1[7] + 560) = v1 + 297;
      *(v1[7] + 568) = v1 + 299;
      *(v1[7] + 576) = v1 + 301;
      *(v1[7] + 584) = v1 + 303;
      *(v1[7] + 592) = v1 + 305;
      *(v1[7] + 600) = v1 + 307;
      *(v1[7] + 608) = v1 + 447;
      *(v1[7] + 616) = v1 + 449;
      *(v1[7] + 624) = v1 + 491;
      *(v1[7] + 632) = v1 + 527;
      *(v1[7] + 640) = v1 + 532;
      *(v1[7] + 648) = v1 + 534;
      *(v1[7] + 656) = v1 + 536;
      *(v1[7] + 664) = v1 + 538;
      *(v1[7] + 672) = v1 + 540;
      *(v1[7] + 680) = v1 + 542;
      *(v1[7] + 688) = v1 + 544;
      *(v1[7] + 696) = v1 + 546;
      *(v1[7] + 704) = v1 + 548;
      *(v1[7] + 712) = v1 + 550;
      *(v1[7] + 720) = v1 + 558;
      *(v1[7] + 728) = v1 + 604;
      *(v1[7] + 736) = v1 + 606;
      *(v1[7] + 744) = v1 + 642;
      *(v1[7] + 752) = v1 + 644;
      *(v1[7] + 760) = v1 + 656;
      *(v1[7] + 768) = v1 + 669;
      *(v1[7] + 776) = v1 + 671;
      *(v1[7] + 784) = v1 + 673;
      *(v1[7] + 792) = v1 + 691;
      *(v1[7] + 800) = v1 + 693;
      *(v1[7] + 808) = v1 + 695;
      *(v1[7] + 816) = v1 + 700;
      *(v1[7] + 824) = v1 + 756;
      *(v1[7] + 832) = v1 + 758;
      *(v1[7] + 840) = v1 + 760;
      *(v1[7] + 848) = v1 + 762;
      *(v1[7] + 856) = v1 + 764;
      *(v1[7] + 864) = v1 + 766;
      *(v1[7] + 872) = v1 + 768;
      *(v1[7] + 880) = v1 + 770;
      *(v1[7] + 888) = v1 + 772;
      *(v1[7] + 896) = v1 + 774;
      *(v1[7] + 904) = v1 + 776;
      link_new(v1);
      set_dict_new(v1);
      act_dict_new(v1);
      runtime_new(v1);
    }

    else
    {
LABEL_8:
      delta_delete(v1);
      return 0;
    }
  }

  return v1;
}

void delta_delete(uint64_t a1)
{
  if (a1)
  {
    link_delete(a1);
    set_dict_delete(a1);
    act_dict_delete(a1);
    runtime_delete(a1);
    v2 = *(a1 + 24);
    if (v2)
    {
      free(v2);
      *(a1 + 24) = 0;
    }

    v3 = *(a1 + 32);
    if (v3)
    {
      free(v3);
      *(a1 + 32) = 0;
    }

    v4 = *(a1 + 48);
    if (v4)
    {
      free(v4);
      *(a1 + 48) = 0;
    }

    v5 = *(a1 + 56);
    if (v5)
    {
      free(v5);
      *(a1 + 56) = 0;
    }

    free(*(a1 + 40));

    free(a1);
  }
}

double viasizes()
{
  qword_280582578 = 0x300000003;
  *&result = 0x800000008;
  qword_2805825D8 = 0x800000008;
  return result;
}

void link_new(uint64_t a1)
{
  *(a1 + 232) = 49;
  v2 = malloc_type_malloc(9uLL, 0x100004077774924uLL);
  *(a1 + 240) = v2;
  if (!v2)
  {
    goto LABEL_9;
  }

  *(a1 + 248) = v2;
  v3 = malloc_type_malloc(9uLL, 0x100004077774924uLL);
  *(a1 + 256) = v3;
  if (!v3)
  {
    goto LABEL_9;
  }

  *(a1 + 264) = v3;
  v4 = malloc_type_malloc(0xAuLL, 0x100004077774924uLL);
  *(a1 + 272) = v4;
  if (!v4)
  {
    goto LABEL_9;
  }

  *(a1 + 280) = v4;
  *(a1 + 288) = 9;
  *(a1 + 290) = 131073;
  *(a1 + 296) = vlfnames_glob;
  *(a1 + 304) = 12;
  *(a1 + 306) = 547;
  *(a1 + 312) = "enu.ddl";
  *(a1 + 320) = 25;
  v5 = malloc_type_malloc(0x9B80uLL, 0x101004026C630D6uLL);
  *(a1 + 64) = v5;
  if (!v5)
  {
    goto LABEL_9;
  }

  memcpy(v5, &vsetdtbl_glob, 0x9B80uLL);
  v6 = malloc_type_malloc(0x680uLL, 0x1010040E30AAE52uLL);
  *(a1 + 72) = v6;
  if (v6)
  {

    memcpy(v6, &vactdtbl_glob, 0x680uLL);
  }

  else
  {
LABEL_9:

    delta_delete(a1);
  }
}

void link_delete(void *a1)
{
  if (a1)
  {
    v2 = a1[32];
    if (v2)
    {
      free(v2);
      a1[32] = 0;
    }

    v3 = a1[30];
    if (v3)
    {
      free(v3);
      a1[30] = 0;
    }

    v4 = a1[34];
    if (v4)
    {
      free(v4);
      a1[34] = 0;
    }

    v5 = a1[8];
    if (v5)
    {
      free(v5);
      a1[8] = 0;
    }

    v6 = a1[9];
    if (v6)
    {
      free(v6);
      a1[9] = 0;
    }
  }
}

double vfp0048(uint64_t a1, double *a2)
{
  result = *a2;
  *(a1 + 16) = *a2;
  return result;
}

double vfp0050(uint64_t a1, double *a2)
{
  result = *a2;
  *(a1 + 32) = *a2;
  return result;
}

void act_dict_new(uint64_t a1)
{
  v2 = malloc_type_malloc(0xC8uLL, 0x10040436913F5uLL);
  *(a1 + 176) = v2;
  if (v2)
  {
    *v2 = &unk_28058BC43;
    *(*(a1 + 176) + 8) = &noun_cmpnd2_actentries;
    *(*(a1 + 176) + 16) = &eng_gramm_cat_dict_actentries;
    *(*(a1 + 176) + 24) = &unk_28058BAA6;
    *(*(a1 + 176) + 32) = &unk_28058C087;
    *(*(a1 + 176) + 40) = &_MergedGlobals_1_0;
    *(*(a1 + 176) + 48) = &compounds_actentries;
    *(*(a1 + 176) + 56) = &unk_28058CF3E;
    *(*(a1 + 176) + 64) = &unk_28058BA76;
    *(*(a1 + 176) + 72) = &_MergedGlobals_44;
    *(*(a1 + 176) + 80) = &unk_28058C388;
    *(*(a1 + 176) + 88) = &pnames_actentries;
    *(*(a1 + 176) + 96) = &places_actentries;
    *(*(a1 + 176) + 104) = &roots1a_actentries;
    *(*(a1 + 176) + 112) = &roots1b_actentries;
    *(*(a1 + 176) + 120) = &roots2_actentries;
    *(*(a1 + 176) + 128) = &roots3_actentries;
    *(*(a1 + 176) + 136) = &_MergedGlobals_2;
    *(*(a1 + 176) + 144) = &unk_28058E71A;
    *(*(a1 + 176) + 152) = &eng_abbr_actentries;
    *(*(a1 + 176) + 160) = &unk_28058DA72;
    *(*(a1 + 176) + 168) = &unk_28058CAB2;
    *(*(a1 + 176) + 176) = &unk_28058BB2C;
    *(*(a1 + 176) + 184) = &_MergedGlobals_3;
    *(*(a1 + 176) + 192) = &unk_28058BE25;
  }

  else
  {

    delta_delete(a1);
  }
}

void act_dict_delete(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 176);
    if (v2)
    {
      free(v2);
      *(a1 + 176) = 0;
    }
  }
}

void set_dict_new(uint64_t a1)
{
  v2 = malloc_type_malloc(0x1118uLL, 0x10040436913F5uLL);
  *(a1 + 80) = v2;
  v3 = a1 + 80;
  if (v2)
  {
    *v2 = &unk_2805A5E73;
    *(*v3 + 8) = &unk_2805B2610;
    *(*v3 + 16) = &unk_2805A5C07;
    *(*v3 + 24) = &unk_2805BD165;
    *(*v3 + 32) = &unk_2805A65B1;
    *(*v3 + 40) = &unk_2805A9702;
    *(*v3 + 48) = &unk_2805A5B91;
    *(*v3 + 56) = &unk_2805AC5BD;
    *(*v3 + 64) = &unk_2805A64DD;
    *(*v3 + 72) = &unk_2805AB635;
    *(*v3 + 80) = &unk_2805AAEAF;
    *(*v3 + 88) = &unk_2805A75D3;
    *(*v3 + 96) = &unk_2805A896E;
    *(*v3 + 104) = &unk_2805A6D5D;
    *(*v3 + 112) = &unk_2805A7D5D;
    *(*v3 + 120) = &unk_2805A851F;
    *(*v3 + 128) = &unk_2805A6E8F;
    *(*v3 + 136) = &unk_2805A6C63;
    *(*v3 + 144) = &unk_2805A69BF;
    *(*v3 + 152) = &unk_2805A7EE9;
    *(*v3 + 160) = &unk_2805A799B;
    *(*v3 + 168) = &unk_2805AA75B;
    *(*v3 + 176) = &unk_2805AABA3;
    *(*v3 + 184) = &unk_2805A8CD1;
    *(*v3 + 192) = &unk_2805A7D9F;
    *(*v3 + 200) = &unk_2805A9C76;
    *(*v3 + 208) = &unk_2805A5EF3;
    *(*v3 + 216) = &unk_2805A6C95;
    *(*v3 + 224) = &unk_2805A6B0C;
    *(*v3 + 232) = &unk_2805A6D90;
    *(*v3 + 240) = &unk_2805A7282;
    *(*v3 + 248) = &unk_2805A863F;
    *(*v3 + 256) = &unk_2805A6DC3;
    *(*v3 + 264) = &unk_2805A668D;
    *(*v3 + 272) = &unk_2805A93F0;
    *(*v3 + 280) = &unk_2805A7442;
    *(*v3 + 288) = &unk_2805A7B96;
    *(*v3 + 296) = &unk_2805A631A;
    *(*v3 + 304) = &unk_2805A5E93;
    *(*v3 + 312) = &unk_2805AA9B1;
    *(*v3 + 320) = &unk_2805A8688;
    *(*v3 + 328) = &unk_2805A65DD;
    *(*v3 + 336) = &unk_2805ABAEE;
    *(*v3 + 344) = &unk_2805A66BA;
    *(*v3 + 352) = &unk_2805B53FF;
    *(*v3 + 360) = &unk_2805AAF34;
    *(*v3 + 368) = &unk_2805A8403;
    *(*v3 + 376) = &unk_2805AED2E;
    *(*v3 + 384) = &_MergedGlobals_17;
    *(*v3 + 392) = &unk_2805A9C14;
    *(*v3 + 400) = &unk_2805B853F;
    *(*v3 + 408) = &unk_2805B36EE;
    *(*v3 + 416) = &unk_2805B2112;
    *(*v3 + 424) = &unk_2805A997F;
    *(*v3 + 432) = &unk_2805A6DF6;
    *(*v3 + 440) = &unk_2805AB03E;
    *(*v3 + 448) = &unk_2805A6FC7;
    *(*v3 + 456) = &unk_2805A6507;
    *(*v3 + 464) = &unk_2805A6EC3;
    *(*v3 + 472) = &unk_2805A99DC;
    *(*v3 + 480) = &unk_2805A8841;
    *(*v3 + 488) = &unk_2805AB0C4;
    *(*v3 + 496) = &unk_2805A9B54;
    *(*v3 + 504) = &unk_2805AA2E7;
    *(*v3 + 512) = &unk_2805B64E2;
    *(*v3 + 520) = &unk_2805A755F;
    *(*v3 + 528) = &unk_2805A66E7;
    *(*v3 + 536) = &unk_2805A6204;
    *(*v3 + 544) = &unk_2805A76BF;
    *(*v3 + 552) = &unk_2805AAA2D;
    *(*v3 + 560) = &unk_2805A747B;
    *(*v3 + 568) = &unk_2805A5C17;
    *(*v3 + 576) = &unk_2805A6146;
    *(*v3 + 584) = &unk_2805A6609;
    *(*v3 + 592) = &unk_2805A684F;
    *(*v3 + 600) = &unk_2805A6343;
    *(*v3 + 608) = &unk_2805AA58B;
    *(*v3 + 616) = &unk_2805A8FAD;
    *(*v3 + 624) = &unk_2805A6EF7;
    *(*v3 + 632) = &unk_2805A76FB;
    *(*v3 + 640) = &unk_2805ABD62;
    *(*v3 + 648) = &unk_2805A6E29;
    *(*v3 + 656) = &unk_2805A72BA;
    *(*v3 + 664) = &unk_2805ACDAB;
    *(*v3 + 672) = &unk_2805A622B;
    *(*v3 + 680) = &unk_2805A8219;
    *(*v3 + 688) = &unk_2805A86D1;
    *(*v3 + 696) = &unk_2805A95A0;
    *(*v3 + 704) = &unk_2805ACF2F;
    *(*v3 + 712) = &unk_2805ABFE0;
    *(*v3 + 720) = &unk_2805A929C;
    *(*v3 + 728) = &unk_2805A5D17;
    *(*v3 + 736) = &unk_2805A7105;
    *(*v3 + 744) = &unk_2805A8105;
    *(*v3 + 752) = &unk_2805A8EB7;
    *(*v3 + 760) = &unk_2805A8763;
    *(*v3 + 768) = &unk_2805AA5FF;
    *(*v3 + 776) = &unk_2805A687D;
    *(*v3 + 784) = &unk_2805A9650;
    *(*v3 + 792) = &unk_2805A655B;
    *(*v3 + 800) = &unk_2805ADAB5;
    *(*v3 + 808) = &unk_2805A914C;
    *(*v3 + 816) = &unk_2805A6B3D;
    *(*v3 + 824) = &unk_2805A6022;
    *(*v3 + 832) = &unk_2805A97B6;
    *(*v3 + 840) = &unk_2805A7F2C;
    *(*v3 + 848) = &unk_2805A5F14;
    *(*v3 + 856) = &unk_2805A6046;
    *(*v3 + 864) = &unk_2805A77AF;
    *(*v3 + 872) = &unk_2805A74B4;
    *(*v3 + 880) = &unk_2805A9000;
    *(*v3 + 888) = &unk_2805A92F1;
    *(*v3 + 896) = &unk_2805A6FFC;
    *(*v3 + 904) = &unk_2805A5F35;
    *(*v3 + 912) = &unk_2805A713B;
    *(*v3 + 920) = &unk_2805A8D22;
    *(*v3 + 928) = &unk_2805A7BD7;
    *(*v3 + 936) = &unk_2805AC66D;
    *(*v3 + 944) = &unk_2805AF77D;
    *(*v3 + 952) = &unk_2805A9A39;
    *(*v3 + 960) = &unk_2805A7031;
    *(*v3 + 968) = &_MergedGlobals_1_1;
    *(*v3 + 976) = &unk_2805A91A0;
    *(*v3 + 984) = &unk_2805A5F56;
    *(*v3 + 992) = &unk_2805A636C;
    *(*v3 + 1000) = &unk_2805A825F;
    *(*v3 + 1008) = &unk_2805A9E66;
    *(*v3 + 1016) = &unk_2805A78A3;
    *(*v3 + 1024) = &unk_2805A7AD6;
    *(*v3 + 1032) = &unk_2805A78E1;
    *(*v3 + 1040) = &unk_2805A9053;
    *(*v3 + 1048) = &unk_2805AC87E;
    *(*v3 + 1056) = &unk_2805AB25B;
    *(*v3 + 1064) = &unk_2805AB14A;
    *(*v3 + 1072) = &unk_2805A9E02;
    *(*v3 + 1080) = &unk_2805A8D73;
    *(*v3 + 1088) = &unk_2805A8A55;
    *(*v3 + 1096) = &unk_2805A6395;
    *(*v3 + 1104) = &unk_2805A7C18;
    *(*v3 + 1112) = &unk_2805A82A5;
    *(*v3 + 1120) = &unk_2805A9F96;
    *(*v3 + 1128) = &unk_2805A89BB;
    *(*v3 + 1136) = &unk_2805A6B9F;
    *(*v3 + 1144) = &unk_2805A9CD9;
    *(*v3 + 1152) = &unk_2805ABB8B;
    *(*v3 + 1160) = &unk_2805A79DA;
    *(*v3 + 1168) = &unk_2805A7FF5;
    *(*v3 + 1176) = &unk_2805AAD26;
    *(*v3 + 1184) = &unk_2805AC31A;
    *(*v3 + 1192) = &unk_2805A6635;
    *(*v3 + 1200) = &unk_2805A82EB;
    *(*v3 + 1208) = &unk_2805A8AA3;
    *(*v3 + 1216) = &unk_2805A7066;
    *(*v3 + 1224) = &unk_2805AC71D;
    *(*v3 + 1232) = &unk_2805A90A6;
    *(*v3 + 1240) = &unk_2805A7A19;
    *(*v3 + 1248) = &unk_2805A6714;
    *(*v3 + 1256) = &unk_2805A72F2;
    *(*v3 + 1264) = &unk_2805ABC28;
    *(*v3 + 1272) = &unk_2805A6E5C;
    *(*v3 + 1280) = &unk_2805A63BE;
    *(*v3 + 1288) = &unk_2805A9811;
    *(*v3 + 1296) = &unk_2805A96A9;
    *(*v3 + 1304) = &unk_2805AB2E6;
    *(*v3 + 1312) = &unk_2805AA356;
    *(*v3 + 1320) = &unk_2805A60B2;
    *(*v3 + 1328) = &unk_2805A7DE1;
    *(*v3 + 1336) = &unk_2805A8AF1;
    *(*v3 + 1344) = &unk_2805AB755;
    *(*v3 + 1352) = &unk_2805A9F30;
    *(*v3 + 1360) = &unk_2805A8567;
    *(*v3 + 1368) = &unk_2805A6A4C;
    *(*v3 + 1376) = &unk_2805AC273;
    *(*v3 + 1384) = &unk_2805A68AB;
    *(*v3 + 1392) = &unk_2805AA1A0;
    *(*v3 + 1400) = &unk_2805A77EC;
    *(*v3 + 1408) = &unk_2805A9D3C;
    *(*v3 + 1416) = &unk_2805A9A96;
    *(*v3 + 1424) = &unk_2805AB5A6;
    *(*v3 + 1432) = &unk_2805A8F09;
    *(*v3 + 1440) = &unk_2805A6CC7;
    *(*v3 + 1448) = &unk_2805B0BAA;
    *(*v3 + 1456) = &unk_2805A6741;
    *(*v3 + 1464) = &unk_2805ACFF6;
    *(*v3 + 1472) = &unk_2805A63E7;
    *(*v3 + 1480) = &unk_2805A814A;
    *(*v3 + 1488) = &unk_2805A8F5B;
    *(*v3 + 1496) = &unk_2805A676E;
    *(*v3 + 1504) = &unk_2805A7F6F;
    *(*v3 + 1512) = &unk_2805A6F2B;
    *(*v3 + 1520) = &unk_2805A9346;
    *(*v3 + 1528) = &unk_2805A74ED;
    *(*v3 + 1536) = &unk_2805A7599;
    *(*v3 + 1544) = &unk_2805A91F4;
    *(*v3 + 1552) = &unk_2805A7E23;
    *(*v3 + 1560) = &unk_2805A6BD0;
    *(*v3 + 1568) = &_MergedGlobals_3_0;
    *(*v3 + 1576) = &unk_2805A6410;
    *(*v3 + 1584) = &unk_2805A939B;
    *(*v3 + 1592) = &unk_2805B38F3;
    *(*v3 + 1600) = &unk_2805A6439;
    *(*v3 + 1608) = &unk_2805AE80B;
    *(*v3 + 1616) = &_MergedGlobals_14;
    *(*v3 + 1624) = &unk_2805A68D9;
    *(*v3 + 1632) = &unk_2805AB9B6;
    *(*v3 + 1640) = &unk_2805A5DDF;
    *(*v3 + 1648) = &unk_2805AC937;
    *(*v3 + 1656) = &unk_2805B0E91;
    *(*v3 + 1664) = &unk_2805A888C;
    *(*v3 + 1672) = &unk_2805A5CBF;
    *(*v3 + 1680) = &unk_2805AB6C5;
    *(*v3 + 1688) = &unk_2805AB1D1;
    *(*v3 + 1696) = &unk_2805AA135;
    *(*v3 + 1704) = &unk_2805A6252;
    *(*v3 + 1712) = &unk_2805AD8EB;
    *(*v3 + 1720) = &unk_2805ADE65;
    *(*v3 + 1728) = &unk_2805AA435;
    *(*v3 + 1736) = &unk_2805ACC29;
    *(*v3 + 1744) = &unk_2805B060A;
    *(*v3 + 1752) = &unk_2805ADF59;
    *(*v3 + 1760) = &unk_2805AB882;
    *(*v3 + 1768) = &unk_2805A85AF;
    *(*v3 + 1776) = &unk_2805B47C8;
    *(*v3 + 1784) = &unk_2805B90CC;
    *(*v3 + 1792) = &unk_2805B3F1A;
    *(*v3 + 1800) = &unk_2805A791F;
    *(*v3 + 1808) = &unk_2805A71DD;
    *(*v3 + 1816) = &unk_2805A8922;
    *(*v3 + 1824) = &unk_2805A9248;
    *(*v3 + 1832) = &noun_compounds1_setentries;
    *(*v3 + 1840) = &noun_compounds2_setentries;
    *(*v3 + 1848) = &_MergedGlobals_22;
    *(*v3 + 1856) = &unk_2805B2973;
    *(*v3 + 1864) = &unk_2805BC5D2;
    *(*v3 + 1872) = &unk_2805A6CF9;
    *(*v3 + 1880) = &_MergedGlobals_26;
    *(*v3 + 1888) = &unk_2805A6907;
    *(*v3 + 1896) = &unk_2805AE32E;
    *(*v3 + 1904) = &unk_2805A6D2B;
    *(*v3 + 1912) = &unk_2805A7A58;
    *(*v3 + 1920) = &unk_2805AEB14;
    *(*v3 + 1928) = &unk_2805A6462;
    *(*v3 + 1936) = &unk_2805ABEA0;
    *(*v3 + 1944) = &unk_2805B27BE;
    *(*v3 + 1952) = &unk_2805A844A;
    *(*v3 + 1960) = &unk_2805AD58D;
    *(*v3 + 1968) = &unk_2805AA064;
    *(*v3 + 1976) = &_MergedGlobals_9;
    *(*v3 + 1984) = &_MergedGlobals_8;
    *(*v3 + 1992) = &unk_2805A818F;
    *(*v3 + 2000) = &unk_2805A5B9C;
    *(*v3 + 2008) = &unk_2805A616C;
    *(*v3 + 2016) = &unk_2805A6A7C;
    *(*v3 + 2024) = &unk_2805A8039;
    *(*v3 + 2032) = &unk_2805A94F2;
    *(*v3 + 2040) = &unk_2805B0344;
    *(*v3 + 2048) = &unk_2805A7A97;
    *(*v3 + 2056) = &unk_2805A6586;
    *(*v3 + 2064) = &unk_2805AA3C5;
    *(*v3 + 2072) = &unk_2805A5FB9;
    *(*v3 + 2080) = &unk_2805AF075;
    *(*v3 + 2088) = &unk_2805BABD3;
    *(*v3 + 2096) = &unk_2805A98C7;
    *(*v3 + 2104) = &unk_2805AD663;
    *(*v3 + 2112) = &adjectives_setentries;
    *(*v3 + 2120) = &unk_2805B0D19;
    *(*v3 + 2128) = &unk_2805ADC87;
    *(*v3 + 2136) = &unk_2805AD812;
    *(*v3 + 2144) = &unk_2805B4356;
    *(*v3 + 2152) = &unk_2805A8DC4;
    *(*v3 + 2160) = &unk_2805B34EB;
    *(*v3 + 2168) = &_MergedGlobals_25;
    *(*v3 + 2176) = &unk_2805ABF40;
    *(*v3 + 2184) = &unk_2805AA4A6;
    *(*v3 + 2192) = &unk_2805B1AA4;
    *(*v3 + 2200) = &unk_2805B04A7;
    *(*v3 + 2208) = &unk_2805B2D30;
    *(*v3 + 2216) = &unk_2805AADA9;
    *(*v3 + 2224) = &verbs_setentries;
    *(*v3 + 2232) = &unk_2805AE51C;
    *(*v3 + 2240) = &unk_2805B8CE5;
    *(*v3 + 2248) = &unk_2805A81D4;
    *(*v3 + 2256) = &unk_2805B0085;
    *(*v3 + 2264) = &unk_2805AA518;
    *(*v3 + 2272) = &unk_2805A7737;
    *(*v3 + 2280) = &unk_2805B0A3D;
    *(*v3 + 2288) = &unk_2805AF51B;
    *(*v3 + 2296) = &unk_2805BBAE8;
    *(*v3 + 2304) = &unk_2805B712F;
    *(*v3 + 2312) = &unk_2805AB372;
    *(*v3 + 2320) = &personal_names_setentries;
    *(*v3 + 2328) = &unk_2805A8331;
    *(*v3 + 2336) = &unk_2805A8B91;
    *(*v3 + 2344) = &unk_2805ADB9D;
    *(*v3 + 2352) = &unk_2805AD0BD;
    *(*v3 + 2360) = &unk_2805A5D5F;
    *(*v3 + 2368) = &unk_2805A60D7;
    *(*v3 + 2376) = &unk_2805A5D91;
    *(*v3 + 2384) = &unk_2805A6C01;
    *(*v3 + 2392) = &unk_2805A8BE1;
    *(*v3 + 2400) = &unk_2805A87AD;
    *(*v3 + 2408) = &unk_2805A8A08;
    *(*v3 + 2416) = &unk_2805AB3FE;
    *(*v3 + 2424) = &unk_2805A5F77;
    *(*v3 + 2432) = &_MergedGlobals_16;
    *(*v3 + 2440) = &unk_2805A709B;
    *(*v3 + 2448) = &unk_2805A6F5F;
    *(*v3 + 2456) = &unk_2805AC513;
    *(*v3 + 2464) = &unk_2805A679B;
    *(*v3 + 2472) = &unk_2805AB7E9;
    *(*v3 + 2480) = &unk_2805A87F7;
    *(*v3 + 2488) = &unk_2805AAC24;
    *(*v3 + 2496) = &unk_2805A627A;
    *(*v3 + 2504) = &unk_2805B9D5E;
    *(*v3 + 2512) = &unk_2805AFB35;
    *(*v3 + 2520) = &unk_2805AAB25;
    *(*v3 + 2528) = &unk_2805A9446;
    *(*v3 + 2536) = &unk_2805ADD72;
    *(*v3 + 2544) = &unk_2805AA937;
    *(*v3 + 2552) = &unk_2805A975C;
    *(*v3 + 2560) = &unk_2805AD24F;
    *(*v3 + 2568) = &unk_2805AA8BE;
    *(*v3 + 2576) = &unk_2805B1485;
    *(*v3 + 2584) = &unk_2805AC127;
    *(*v3 + 2592) = &unk_2805BA225;
    *(*v3 + 2600) = &unk_2805B516C;
    *(*v3 + 2608) = &unk_2805AF197;
    *(*v3 + 2616) = &unk_2805AFC84;
    *(*v3 + 2624) = &unk_2805A67C8;
    *(*v3 + 2632) = &unk_2805ABCC5;
    *(*v3 + 2640) = &unk_2805B1917;
    *(*v3 + 2648) = &unk_2805B01E4;
    *(*v3 + 2656) = &unk_2805ACAAE;
    *(*v3 + 2664) = &unk_2805A69EE;
    *(*v3 + 2672) = &unk_2805A90F9;
    *(*v3 + 2680) = &unk_2805AA0CC;
    *(*v3 + 2688) = &refl_verbs_setentries;
    *(*v3 + 2696) = &unk_2805A9FFD;
    *(*v3 + 2704) = &unk_2805A67F5;
    *(*v3 + 2712) = &unk_2805AA20D;
    *(*v3 + 2720) = &unk_2805A6192;
    *(*v3 + 2728) = &unk_2805A606A;
    *(*v3 + 2736) = &unk_2805A732A;
    *(*v3 + 2744) = &unk_2805A7B16;
    *(*v3 + 2752) = &unk_2805AA27A;
    *(*v3 + 2760) = &unk_2805AC1CD;
    *(*v3 + 2768) = &unk_2805AE616;
    *(*v3 + 2776) = &unk_2805B7E34;
    *(*v3 + 2784) = &unk_2805BEB18;
    *(*v3 + 2792) = &unk_2805B08D3;
    *(*v3 + 2800) = &no_medial_prefix_strip_setentries;
    *(*v3 + 2808) = &unk_2805B458C;
    *(*v3 + 2816) = &unk_2805B100C;
    *(*v3 + 2824) = &unk_2805B67E5;
    *(*v3 + 2832) = &medial_prefix_strip_setentries;
    *(*v3 + 2840) = &unk_2805A5FDC;
    *(*v3 + 2848) = &unk_2805B1189;
    *(*v3 + 2856) = &unk_2805B5697;
    *(*v3 + 2864) = &unk_2805A5BCD;
    *(*v3 + 2872) = &lex_prefix_setentries;
    *(*v3 + 2880) = &_MergedGlobals_20;
    *(*v3 + 2888) = &final_compound_word_setentries;
    *(*v3 + 2896) = &_MergedGlobals_21;
    *(*v3 + 2904) = &_MergedGlobals_45;
    *(*v3 + 2912) = &not_compound_setentries;
    *(*v3 + 2920) = &unk_2805B2F16;
    *(*v3 + 2928) = &unk_2805BB0C5;
    *(*v3 + 2936) = &unk_2805B7796;
    *(*v3 + 2944) = &unk_2805A8C31;
    *(*v3 + 2952) = &unk_2805AC082;
    *(*v3 + 2960) = &unk_2805AC46A;
    *(*v3 + 2968) = &unk_2805A9923;
    *(*v3 + 2976) = &unk_2805AEA0E;
    *(*v3 + 2984) = &unk_2805A986C;
    *(*v3 + 2992) = &unk_2805A5FFF;
    *(*v3 + 3000) = &unk_2805ACB6B;
    *(*v3 + 3008) = &unk_2805A6F93;
    *(*v3 + 3016) = &unk_2805AEE41;
    *(*v3 + 3024) = &unk_2805AB91C;
    *(*v3 + 3032) = &unk_2805B178B;
    *(*v3 + 3040) = &unk_2805B6E04;
    *(*v3 + 3048) = &unk_2805B5EF8;
    *(*v3 + 3056) = &unk_2805B22BB;
    *(*v3 + 3064) = &no_suffix_strip_setentries;
    *(*v3 + 3072) = &unk_2805AF64C;
    *(*v3 + 3080) = &unk_2805AB518;
    *(*v3 + 3088) = &unk_2805A5B81;
    *(*v3 + 3096) = &unk_2805AA7D1;
    *(*v3 + 3104) = &unk_2805A5BE9;
    *(*v3 + 3112) = &unk_2805A8E15;
    *(*v3 + 3120) = &unk_2805B594B;
    *(*v3 + 3128) = &unk_2805ABE01;
    *(*v3 + 3136) = &unk_2805B3100;
    *(*v3 + 3144) = &unk_2805A7362;
    *(*v3 + 3152) = &unk_2805A7526;
    *(*v3 + 3160) = &unk_2805A949C;
    *(*v3 + 3168) = &unk_2805AAE2C;
    *(*v3 + 3176) = &unk_2805AC7CD;
    *(*v3 + 3184) = &unk_2805AE425;
    *(*v3 + 3192) = &unk_2805A739A;
    *(*v3 + 3200) = &unk_2805A60FC;
    *(*v3 + 3208) = &unk_2805A760E;
    *(*v3 + 3216) = &unk_2805A6935;
    *(*v3 + 3224) = &unk_2805A5CD5;
    *(*v3 + 3232) = &unk_2805A5D2F;
    *(*v3 + 3240) = &unk_2805A7214;
    *(*v3 + 3248) = &unk_2805A62A2;
    *(*v3 + 3256) = &unk_2805A70D0;
    *(*v3 + 3264) = &unk_2805A7649;
    *(*v3 + 3272) = &unk_2805A5BF8;
    *(*v3 + 3280) = &unk_2805A5EB3;
    *(*v3 + 3288) = &unk_2805A5D78;
    *(*v3 + 3296) = &unk_2805A5E35;
    *(*v3 + 3304) = &unk_2805A5ED3;
    *(*v3 + 3312) = &unk_2805A5C95;
    *(*v3 + 3320) = &unk_2805A6AAC;
    *(*v3 + 3328) = &unk_2805A8491;
    *(*v3 + 3336) = &unk_2805A724B;
    *(*v3 + 3344) = &unk_2805A5F98;
    *(*v3 + 3352) = &unk_2805A7FB2;
    *(*v3 + 3360) = &unk_2805A6963;
    *(*v3 + 3368) = &unk_2805A5DAB;
    *(*v3 + 3376) = &unk_2805A6822;
    *(*v3 + 3384) = &unk_2805A85F7;
    *(*v3 + 3392) = &unk_2805A5C6E;
    *(*v3 + 3400) = &unk_2805AB48B;
    *(*v3 + 3408) = &unk_2805A84D8;
    *(*v3 + 3416) = &unk_2805A5C38;
    *(*v3 + 3424) = &unk_2805A5B7B;
    *(*v3 + 3432) = &unk_2805A7684;
    *(*v3 + 3440) = &unk_2805A88D7;
    *(*v3 + 3448) = &unk_2805A9549;
    *(*v3 + 3456) = &unk_2805A807D;
    *(*v3 + 3464) = &unk_2805A73D2;
    *(*v3 + 3472) = &_MergedGlobals_2_0;
    *(*v3 + 3480) = &unk_2805ACE6D;
    *(*v3 + 3488) = &unk_2805A7C59;
    *(*v3 + 3496) = &unk_2805A6661;
    *(*v3 + 3504) = &unk_2805A7C9A;
    *(*v3 + 3512) = &unk_2805A8377;
    *(*v3 + 3520) = &unk_2805A7E65;
    *(*v3 + 3528) = &unk_2805B1C3B;
    *(*v3 + 3536) = &_MergedGlobals_10;
    *(*v3 + 3544) = &unk_2805A648B;
    *(*v3 + 3552) = &unk_2805A83BD;
    *(*v3 + 3560) = &unk_2805AD4B9;
    *(*v3 + 3568) = &unk_2805A5BB3;
    *(*v3 + 3576) = &unk_2805A61B8;
    *(*v3 + 3584) = &state_names_setentries;
    *(*v3 + 3592) = &_MergedGlobals_15;
    *(*v3 + 3600) = &unk_2805A5DC5;
    *(*v3 + 3608) = &unk_2805AF9EC;
    *(*v3 + 3616) = &unk_2805B1F72;
    *(*v3 + 3624) = &unk_2805A9ECB;
    *(*v3 + 3632) = &unk_2805AE04E;
    *(*v3 + 3640) = &unk_2805A740A;
    *(*v3 + 3648) = &unk_2805AEF54;
    *(*v3 + 3656) = &unk_2805A5C81;
    *(*v3 + 3664) = &unk_2805A7CDB;
    *(*v3 + 3672) = &unk_2805AD31B;
    *(*v3 + 3680) = &unk_2805AE238;
    *(*v3 + 3688) = &_MergedGlobals_27;
    *(*v3 + 3696) = &unk_2805AA673;
    *(*v3 + 3704) = &unk_2805A5C4A;
    *(*v3 + 3712) = &unk_2805B745D;
    *(*v3 + 3720) = &two_one_stress_setentries;
    *(*v3 + 3728) = &unk_2805AD186;
    *(*v3 + 3736) = &unk_2805B8192;
    *(*v3 + 3744) = &unk_2805B3D09;
    *(*v3 + 3752) = &_MergedGlobals_19;
    *(*v3 + 3760) = &unk_2805AACA5;
    *(*v3 + 3768) = &unk_2805A7829;
    *(*v3 + 3776) = &unk_2805AAFB9;
    *(*v3 + 3784) = &_MergedGlobals_11;
    *(*v3 + 3792) = &unk_2805AFDD5;
    *(*v3 + 3800) = &_MergedGlobals_12;
    *(*v3 + 3808) = &one_stress_setentries;
    *(*v3 + 3816) = &final_one_stress_setentries;
    *(*v3 + 3824) = &two_stress_end_setentries;
    *(*v3 + 3832) = &_MergedGlobals_5;
    *(*v3 + 3840) = &unk_2805A871A;
    *(*v3 + 3848) = &prefix_1stress_nouns_setentries;
    *(*v3 + 3856) = &unk_2805B3AFE;
    *(*v3 + 3864) = &unk_2805A6ADC;
    *(*v3 + 3872) = &unk_2805A5E54;
    *(*v3 + 3880) = &unk_2805A6C32;
    *(*v3 + 3888) = &unk_2805B94D2;
    *(*v3 + 3896) = &unk_2805AFF2B;
    *(*v3 + 3904) = &unk_2805AE143;
    *(*v3 + 3912) = &unk_2805ACCEA;
    *(*v3 + 3920) = &unk_2805A64B4;
    *(*v3 + 3928) = &unk_2805A5CEB;
    *(*v3 + 3936) = &unk_2805A6121;
    *(*v3 + 3944) = &unk_2805A5CAA;
    *(*v3 + 3952) = &unk_2805A5E17;
    *(*v3 + 3960) = &unk_2805A5BA7;
    *(*v3 + 3968) = &unk_2805A6531;
    *(*v3 + 3976) = &unk_2805AF2C1;
    *(*v3 + 3984) = &unk_2805A62CA;
    *(*v3 + 3992) = &unk_2805A7171;
    *(*v3 + 4000) = &_MergedGlobals_24;
    *(*v3 + 4008) = &unk_2805AF3EC;
    *(*v3 + 4016) = &unk_2805A95F8;
    *(*v3 + 4024) = &unk_2805A62F2;
    *(*v3 + 4032) = &unk_2805A71A7;
    *(*v3 + 4040) = &unk_2805B61EC;
    *(*v3 + 4048) = &unk_2805B4C73;
    *(*v3 + 4056) = &unk_2805B4A10;
    *(*v3 + 4064) = &unk_2805A80C1;
    *(*v3 + 4072) = &unk_2805A5BDB;
    *(*v3 + 4080) = &unk_2805A5D47;
    *(*v3 + 4088) = &unk_2805A8E66;
    *(*v3 + 4096) = &unk_2805A8C81;
    *(*v3 + 4104) = &unk_2805AE710;
    *(*v3 + 4112) = &unk_2805B1307;
    *(*v3 + 4120) = &unk_2805A795D;
    *(*v3 + 4128) = &_MergedGlobals_18;
    *(*v3 + 4136) = &_MergedGlobals_13;
    *(*v3 + 4144) = &unk_2805A7D1C;
    *(*v3 + 4152) = &unk_2805A61DE;
    *(*v3 + 4160) = &unk_2805A5D01;
    *(*v3 + 4168) = &unk_2805A608E;
    *(*v3 + 4176) = &unk_2805A7773;
    *(*v3 + 4184) = &unk_2805A7866;
    *(*v3 + 4192) = &unk_2805A6991;
    *(*v3 + 4200) = &unk_2805BDD74;
    *(*v3 + 4208) = &unk_2805B2B4F;
    *(*v3 + 4216) = &unk_2805AD73A;
    *(*v3 + 4224) = &unk_2805A5DFB;
    *(*v3 + 4232) = &unk_2805A6A1D;
    *(*v3 + 4240) = &unk_2805A5BC0;
    *(*v3 + 4248) = &_MergedGlobals_23;
    *(*v3 + 4256) = &unk_2805B1DD4;
    *(*v3 + 4264) = &_MergedGlobals_6;
    *(*v3 + 4272) = &_MergedGlobals_4;
    *(*v3 + 4280) = &unk_2805AA847;
    *(*v3 + 4288) = &unk_2805A5C5C;
    *(*v3 + 4296) = &unk_2805AD3EA;
    *(*v3 + 4304) = &unk_2805A9BB4;
    *(*v3 + 4312) = &unk_2805A5C27;
    *(*v3 + 4320) = &unk_2805A5B89;
    *(*v3 + 4328) = &unk_2805AEC20;
    *(*v3 + 4336) = &_MergedGlobals_7;
    *(*v3 + 4344) = &unk_2805AA6E7;
    *(*v3 + 4352) = &unk_2805AC3C2;
    *(*v3 + 4360) = &unk_2805A7EA7;
    *(*v3 + 4368) = &unk_2805A9D9F;
  }

  else
  {

    delta_delete(a1);
  }
}

void set_dict_delete(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 80);
    if (v2)
    {
      free(v2);
      *(a1 + 80) = 0;
    }
  }
}

uint64_t setEngsynErrorRange(uint64_t result, int a2, int a3)
{
  v3 = *(result + 224);
  *(v3 + 208) = a2;
  *(v3 + 212) = a3;
  return result;
}

uint64_t getEngsynErrorRange(uint64_t result, _DWORD *a2, _DWORD *a3)
{
  v3 = *(result + 224);
  *a2 = *(v3 + 208);
  *a3 = *(v3 + 212);
  return result;
}

uint64_t initStreamArrays(uint64_t a1)
{
  v1 = *(a1 + 224);
  if (*(v1 + 220))
  {
    return 0;
  }

  v2 = 1;
  *(v1 + 220) = 1;
  createStreamArrays(a1, 28);
  if (initStreamArray(a1, 0, "F0") && initStreamArray(a1, 1, "F1") && initStreamArray(a1, 2, "F2") && initStreamArray(a1, 3, "F3") && initStreamArray(a1, 4, "F4") && initStreamArray(a1, 5, "F5") && initStreamArray(a1, 6, "B1") && initStreamArray(a1, 7, "B2") && initStreamArray(a1, 8, "B3") && initStreamArray(a1, 9, "B4") && initStreamArray(a1, 10, "B5") && initStreamArray(a1, 11, "FNP") && initStreamArray(a1, 12, "FNZ") && initStreamArray(a1, 13, "FTP") && initStreamArray(a1, 14, "FTZ") && initStreamArray(a1, 15, "TL") && initStreamArray(a1, 16, "OQ") && initStreamArray(a1, 17, "FL") && initStreamArray(a1, 18, "DI") && initStreamArray(a1, 19, "AV") && initStreamArray(a1, 20, "AH") && initStreamArray(a1, 21, "AF") && initStreamArray(a1, 22, "A1F") && initStreamArray(a1, 23, "A2F") && initStreamArray(a1, 24, "A3F") && initStreamArray(a1, 25, "A4F") && initStreamArray(a1, 26, "A5F") && initStreamArray(a1, 27, "AB"))
  {
    return 0;
  }

  return v2;
}

uint64_t init_user_dicts(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  setUserDictInputStream(a1, "inp");
  *(a2 + 2) = 0;
  *(a3 + 2) = 1;
  *(a4 + 2) = 2;
  return 0;
}

uint64_t setNonSequential(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int16 *a9, uint64_t a10)
{
  for (i = 0; i < *(a1 + 288); ++i)
  {
    *(*(*(a1 + 192) + 9072) + i) = 0;
  }

  clearnonseqIndex(a1);
  v13 = *(a2 + 2);
  if (v13 >= 1)
  {
    for (j = &a10; ; ++j)
    {
      v15 = v13-- != 0;
      if (!v15 || !a9)
      {
        break;
      }

      v16 = *a9;
      if (v16 == 65532)
      {
        LOWORD(v16) = a9[1];
      }

      if ((v16 & 0x8000) == 0 && v16 < *(a1 + 288))
      {
        *(*(*(a1 + 192) + 9072) + v16) = 1;
        setnonseqIndex(a1, v16);
      }

      v17 = j;
      a9 = *v17;
    }
  }

  return 0;
}

void eloqc_new(uint64_t a1)
{
  if (a1)
  {
    v2 = malloc_type_malloc(0x100uLL, 0x10D0040F3AD890DuLL);
    *(a1 + 224) = v2;
    bzero(v2, 0x100uLL);
    ecilink_new(a1);
    *(*(a1 + 224) + 221) = -1;
  }
}

void eloqc_delete(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_1_51(a1);
    if (v2)
    {
      ecilink_delete(v1);
      bzero(*(v1 + 224), 0x100uLL);
      free(*(v1 + 224));
      *(v1 + 224) = 0;
    }
  }
}

uint64_t initializeIO(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_1_51(a1);
  if (*(v3 + 248))
  {
    v4 = *(v1 + 192);
    if (*(v4 + 9072))
    {
      for (i = 0; ; ++i)
      {
        v4 = *(v1 + 192);
        if (i == 2)
        {
          break;
        }

        *(*(v4 + 9072) + i) = 1;
      }
    }

    *(v4 + 8864) = 0;
    v6 = 1;
    if (*(v4 + 9080))
    {
      *(v4 + 8868) = 1;
      v6 = 0;
    }
  }

  else
  {
    initDllLink(v2);
    if (vffind_lf(v1, "cmdout") == -1)
    {
      v6 = 1;
    }

    else
    {
      v7 = showDialogs();
      v8 = 224;
      if (!v7)
      {
        v8 = 216;
      }

      v6 = 1;
      if (OUTLINED_FUNCTION_0_52("Eloquence output", *(v1 + v8)) && vffind_lf(v1, "pgmout") != -1)
      {
        v9 = showDialogs();
        v10 = 224;
        if (!v9)
        {
          v10 = 216;
        }

        if (OUTLINED_FUNCTION_0_52("Eloquence program output", *(v1 + v10)))
        {
          eciLinkNew();
        }
      }
    }
  }

  *(*(v1 + 224) + 248) = 1;
  return v6;
}

BOOL showDialogs()
{
  v0 = fopen("debug", "r");
  v1 = v0;
  if (v0)
  {
    fclose(v0);
  }

  return v1 != 0;
}

uint64_t closeIO(uint64_t a1)
{
  OUTLINED_FUNCTION_1_51(a1);
  v3 = *(v2 + 232);
  if (v3)
  {
    v4 = eciLinkDelete(v3);
    v2 = *(v1 + 224);
    *(v2 + 232) = v4;
  }

  v5 = *(v2 + 240);
  if (v5)
  {
    *(*(v1 + 224) + 240) = eciLinkDelete(v5);
  }

  return 0;
}

void ***eciLinkCleanup(uint64_t a1)
{
  OUTLINED_FUNCTION_1_51(a1);
  v3 = *(v2 + 232);
  if (v3)
  {
    eciLinkDelete(v3);
    v2 = *(v1 + 224);
    *(v2 + 232) = 0;
  }

  result = *(v2 + 240);
  if (result)
  {
    result = eciLinkDelete(result);
    *(*(v1 + 224) + 232) = 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_52@<X0>(char *a1@<X2>, uint64_t a2@<X8>)
{

  return logicalFileAddPhysical(v3, v4, a1, (a2 + v2), 0, 1);
}

uint64_t synthesizingWord(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 224);
  v3 = *(v2 + 8);
  if (v3)
  {
    v3(*(a2 + 2), *(v2 + 16));
  }

  return 0;
}

uint64_t wordIndexCallback(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 224);
  v3 = *(v2 + 24);
  if (v3)
  {
    v3(*(a2 + 2), *(v2 + 32));
  }

  return 0;
}

uint64_t userIndexCallback(uint64_t a1)
{
  v1 = *(a1 + 224);
  v2 = *(v1 + 40);
  if (v2)
  {
    v2(*(v1 + 48));
  }

  return 0;
}

uint64_t annoCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 224);
  v4 = *(v3 + 56);
  if (v4)
  {
    v4(*(a2 + 2), *(a3 + 2), *(v3 + 64));
  }

  return 0;
}

uint64_t placePhoneme(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4)
{
  v15 = *MEMORY[0x277D85DE8];
  if (!**(a1 + 224))
  {
    goto LABEL_10;
  }

  v7 = *a2;
  v5 = a2 + 16;
  v6 = v7;
  if ((v7 & 0x80000000) == 0 && v6 < *(a1 + 288))
  {
    disptok(a1, v5, v6, 0, v14);
    v10 = strlen(v14);
    if (v10 <= 4)
    {
      for (i = v10; i != 4; ++i)
      {
        v14[i] = 0;
      }

      insertPhoneme(a1, *v14, *(a4 + 2) * *(a3 + 2) / 0x3E8uLL);
LABEL_10:
      result = 0;
      goto LABEL_11;
    }
  }

  result = 1;
LABEL_11:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL getObject(uint64_t a1, void *a2)
{
  if ((atomic_load_explicit(&_MergedGlobals_47, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_47))
  {
    RequestLicense::RequestLicense(&qword_2805C0328);
    __cxa_guard_release(&_MergedGlobals_47);
  }

  *a2 = 0;
  if ((a1 - 1) > 1)
  {
    if (a1 == 3)
    {
      *a2 = &qword_2805C0328;
      (*(qword_2805C0328 + 8))(&qword_2805C0328);
    }
  }

  else if (RequestLicense::licenseGranted(&qword_2805C0328))
  {
    operator new();
  }

  return *a2 != 0;
}

BOOL engsynStart(uint64_t a1)
{
  resetEngsynError(a1);
  v2 = *(a1 + 224);
  if (*(v2 + 1) || (*(v2 + 1) = 1, etiwinMainDLL(a1, 0, 0) < 1) || initializeIO(a1))
  {
    v3 = -4;
LABEL_3:
    setEngsynError(a1, v3);
    goto LABEL_4;
  }

  if (DeltaProc_start(a1))
  {
    v3 = -3;
    goto LABEL_3;
  }

LABEL_4:

  return checkEngsynError(a1);
}

uint64_t UnixReg(char *__src, char *a2)
{
  strncpy(libpath, __src, 0x1000uLL);
  if (!a2)
  {
    a2 = getcwd(0, 0x1000uLL);
  }

  if (reg(a2))
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

BOOL engsynEnd(uint64_t a1)
{
  resetEngsynError(a1);
  v2 = *(a1 + 224);
  if (!*(v2 + 2))
  {
    *(v2 + 2) = 1;
    DeltaProc_end(a1);
    vcmdend(a1, 0);
  }

  setEngsynError(a1, -5);

  return checkEngsynError(a1);
}

BOOL engsynProcessSentences(uint64_t a1)
{
  OUTLINED_FUNCTION_2_51(a1);
  if (v4)
  {
    setEngsynError(v1, -8);
    goto LABEL_12;
  }

  *(v3 + 4) = 1;
  v5 = *(v3 + 232);
  if (v5)
  {
    if (!eciLinkDataFromECI(v5, v2))
    {
      setEngsynError(v1, -2);
    }

    if (!DeltaProc_process_sentences(v1, v6, v7, v8, v9, v10, v11, v12) && !deltaErrorThrown(v1))
    {
      goto LABEL_11;
    }

    v13 = -3;
  }

  else
  {
    v13 = -1;
  }

  setEngsynError(v1, v13);
LABEL_11:
  *(*(v1 + 224) + 4) = 0;
LABEL_12:

  return checkEngsynError(v1);
}

BOOL engsynProcessRemaining(uint64_t a1)
{
  OUTLINED_FUNCTION_2_51(a1);
  if (v4)
  {
    setEngsynError(v1, -8);
    goto LABEL_12;
  }

  *(v3 + 4) = 1;
  v5 = *(v3 + 232);
  if (v5)
  {
    if (eciLinkDataFromECI(v5, v2))
    {
      if (!DeltaProc_process_remaining(v1, v6, v7, v8, v9, v10, v11, v12) && !deltaErrorThrown(v1))
      {
        goto LABEL_11;
      }

      v13 = -3;
    }

    else
    {
      v13 = -2;
    }
  }

  else
  {
    v13 = -1;
  }

  setEngsynError(v1, v13);
LABEL_11:
  *(*(v1 + 224) + 4) = 0;
LABEL_12:
  flushDelayedSynthQueue();

  return checkEngsynError(v1);
}

uint64_t engsynGetLastError(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  getEngsynErrorRange(a1, a2, a3);

  return getEngsynError(a1);
}

BOOL engsynRestart(uint64_t a1)
{
  resetEngsynError(a1);
  initGlobalVars(a1);
  resetDelayedSynthQueue(a1);
  flushDelayedSynthQueue();
  if (!vdltinit(a1, 1) || !vinitrun(a1))
  {
    return 1;
  }

  v2 = vffind_lf(a1, "wordsin");
  if (v2 != -1)
  {
    vf_clrbuf(a1, v2);
  }

  stopSynthesizing(a1);
  if (DeltaProc_start(a1))
  {
    setEngsynError(a1, -3);
  }

  *(*(a1 + 224) + 3) = 0;

  return checkEngsynError(a1);
}

BOOL engsynReadPhonemes(uint64_t a1, _BYTE *a2, int a3, int *a4)
{
  v5 = *(*(a1 + 224) + 232);
  if (v5 && !eciLinkDataToECI(v5, a2, a3, a4))
  {
    setEngsynError(a1, -2);
  }

  return checkEngsynError(a1);
}

uint64_t engsynReadErrorMessage(uint64_t a1, char *a2, int a3, int *a4)
{
  v4 = *(a1 + 224);
  if (!*(v4 + 232) || eciLinkDataToECI(*(v4 + 240), a2, a3, a4))
  {
    return 0;
  }

  strncpy(a2, "Unable to get error message from Eloquence.", a3);
  a2[a3] = 0;
  return 1;
}

BOOL engsynFlush(uint64_t a1, int a2)
{
  *(*(a1 + 224) + 3) = a2;
  setInterrupt(a1, a2);
  if (a2)
  {
    throwDeltaErrorNow(a1);
    stopSynthesizing(a1);
  }

  else
  {
    engsynRestart(a1);
  }

  return checkEngsynError(a1);
}

BOOL engsynClearInput(uint64_t a1)
{
  OUTLINED_FUNCTION_2_51(a1);
  if (v3)
  {
    v4 = -8;
LABEL_3:
    setEngsynError(v1, v4);
    goto LABEL_4;
  }

  if (!eciLinkDataFromECI(*(v2 + 232), &unk_26DD32C5A))
  {
    v4 = -2;
    goto LABEL_3;
  }

  if (DeltaProc_flush(v1))
  {
    v4 = -3;
    goto LABEL_3;
  }

LABEL_4:

  return checkEngsynError(v1);
}

uint64_t engsynSetAbort(uint64_t a1)
{
  setEngsynError(a1, -7);
  throwDeltaErrorNow(a1);
  return 0;
}

uint64_t engsynRegisterWordCallback(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 224);
  *(v3 + 8) = a2;
  *(v3 + 16) = a3;
  return result;
}

uint64_t engsynRegisterWordIndexCallback(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 224);
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  return result;
}

uint64_t engsynRegisterUserIndexCallback(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 224);
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  return result;
}

uint64_t engsynRegisterAnnoCallback(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 224);
  *(v3 + 56) = a2;
  *(v3 + 64) = a3;
  return result;
}

uint64_t engsynClose(uint64_t a1)
{
  if (a1)
  {
    stopSynthesizing(a1);
    eciLinkCleanup(a1);
    deltaCleanup(a1);
  }

  return 0;
}

uint64_t engsynDeleteDict(DictionarySet *a1)
{
  OUTLINED_FUNCTION_3_50();
  if (v3)
  {
    DictionarySet::~DictionarySet(a1);
  }

  MEMORY[0x274379FF0](a1, v1);
  return 0;
}

uint64_t engsynLoadDict(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a2 && a4)
  {
    return DictionarySet::load(a2, a3);
  }

  else
  {
    return OUTLINED_FUNCTION_0_53();
  }
}

uint64_t engsynSaveDict(uint64_t a1, int a2, char *a3)
{
  if (a1 && a3)
  {
    return DictionarySet::save(a1, a2, a3);
  }

  else
  {
    return OUTLINED_FUNCTION_0_53();
  }
}

uint64_t engsynUpdateDict(uint64_t a1, int a2, char *a3, char *a4)
{
  if (a1 && a3)
  {
    return DictionarySet::updateEntry(a1, a2, a3, a4);
  }

  else
  {
    return OUTLINED_FUNCTION_0_53();
  }
}

uint64_t engsynDictFindFirst(uint64_t a1, int a2, const char **a3, const char **a4)
{
  if (a1)
  {
    return DictionarySet::findFirst(a1, a2, a3, a4);
  }

  else
  {
    return OUTLINED_FUNCTION_0_53();
  }
}

uint64_t engsynDictFindNext(uint64_t a1, int a2, const char **a3, const char **a4)
{
  if (a1)
  {
    return DictionarySet::findNext(a1, a2, a3, a4);
  }

  else
  {
    return OUTLINED_FUNCTION_0_53();
  }
}

uint64_t engsynDictLookup(uint64_t a1, int a2, char *a3)
{
  if (a1)
  {
    return DictionarySet::lookup(a1, a2, a3);
  }

  return a1;
}

BOOL eciLinkFileOpen(uint64_t a1, void *a2, int a3)
{
  *a2 = a1;
  v3 = a2[2];
  if (v3)
  {
    if ((a3 - 1) < 2)
    {
      v4 = (v3 + 8);
LABEL_5:
      dynaBufReset(*v4);
      return v3 != 0;
    }

    v4 = a2[2];
    if (!a3)
    {
      goto LABEL_5;
    }
  }

  return v3 != 0;
}

uint64_t eciLinkFileRead(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  result = dynaBufCurrentChar(*v2, 0);
  if (result)
  {
    while (1)
    {
      v5 = dynaBufCurrentChar(*v2, 1);
      if (!v5 || v5 == 10)
      {
        break;
      }

      result = dynaBufAddChar(a2, v5, 0);
      if (!result)
      {
        return result;
      }
    }

    v7 = dynaBufMoveRel(a2, 0);
    v8 = dynaBufMoveRel(a2, 0xFFFFFFFF);
    if (dynaBufCurrentChar(a2, 0) == 32)
    {
      if (v7 != v8)
      {
        dynaBufMoveRel(a2, 1u);
      }
    }

    else
    {
      if (v7 != v8)
      {
        dynaBufMoveRel(a2, 1u);
      }

      dynaBufAddChar(a2, 32, 0);
    }

    result = dynaBufAddChar(a2, 10, 0);
    if (result)
    {
      v9 = *v2;
      if (v5)
      {
        v10 = dynaBufMoveRel(v9, 0);
        dynaBufMoveAbs(*v2, 0);
        dynaBufDeleteChars(*v2, v10);
      }

      else
      {
        dynaBufReset(v9);
      }

      return 1;
    }
  }

  return result;
}

BOOL eciLinkFileWrite(uint64_t a1, char *a2)
{
  if (!*a2)
  {
    return 1;
  }

  v2 = *(a1 + 16);
  return v2 && dynaBufAddString(*(v2 + 8), a2, 0) != 0;
}

BOOL dialogFileOpen(uint64_t a1, void *a2)
{
  *a2 = a1;
  v3 = dynaBufNew(0);
  a2[2] = v3;
  return v3 != 0;
}

uint64_t dialogFileRead(uint64_t a1, uint64_t *a2)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  dynaBufAddChar(a2, 10, 0);
  return 1;
}

uint64_t dialogFileWrite(uint64_t a1, char *a2)
{
  v2 = *(a1 + 16);
  if (!v2 || !dynaBufAddString(*(a1 + 16), a2, 0))
  {
    return 0;
  }

  v3 = dynaBufLength(v2);
  if (dynaBufChar(v2, v3 - 1) != 10)
  {
    return 1;
  }

  dynaBufMoveAbs(v2, 0xFFFFFFFF);
  dynaBufMoveRel(v2, 0xFFFFFFFF);
  v4 = 1;
  dynaBufDeleteChars(v2, 1uLL);
  dynaBufReset(v2);
  return v4;
}

double ecilink_new(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 224);
    if (v1)
    {
      v2 = unk_28203A5C0;
      *(v1 + 72) = eciLinkFileClass_glob;
      *(v1 + 88) = v2;
      v3 = *&off_28203A5E0;
      *(v1 + 104) = xmmword_28203A5D0;
      *(v1 + 120) = v3;
      v4 = *(a1 + 224);
      v5 = unk_28203A600;
      *(v4 + 136) = dialogFileClass_glob;
      *(v4 + 152) = v5;
      result = *&xmmword_28203A610;
      v7 = *&off_28203A620;
      *(v4 + 168) = xmmword_28203A610;
      *(v4 + 184) = v7;
    }
  }

  return result;
}

uint64_t eciLinkDelete(void ***a1)
{
  dynaBufDelete(*a1);
  dynaBufDelete(a1[1]);
  MEMORY[0x274379FF0](a1, 0x20C40A4A59CD2);
  return 0;
}

uint64_t eciLinkDataFromECI(uint64_t *a1, char *a2)
{
  result = 1;
  if (a1 && a2)
  {
    dynaBufReset(*a1);
    result = dynaBufAddString(*a1, a2, 0);
    if (result)
    {
      dynaBufMoveAbs(*a1, 0);
      return 1;
    }
  }

  return result;
}

uint64_t eciLinkDataToECI(uint64_t result, _BYTE *a2, int a3, int *a4)
{
  if (result)
  {
    v4 = result;
    result = *(result + 8);
    if (result)
    {
      v8 = a3 - 1;
      v9 = dynaBufLength(result);
      if (v9 >= a3)
      {
        v10 = v8;
      }

      else
      {
        v10 = v9;
      }

      *a4 = v10;
      dynaBufExtract(*(v4 + 8), 0, a2, v10);
      dynaBufMoveAbs(*(v4 + 8), 0);
      dynaBufDeleteChars(*(v4 + 8), *a4);
      if (*a2)
      {
        ++*a4;
      }

      return 1;
    }
  }

  return result;
}

void EngineWrapper::EngineWrapper(EngineWrapper *this)
{
  OUTLINED_FUNCTION_2_52();
  *v2 = v3;
  *(v2 + 8) = 0;
  *(v2 + 24) = 0;
  v4 = delta_new();
  *(v1 + 16) = v4;
  if (!v4)
  {
    *(v1 + 24) = 1;
  }
}

void EngineWrapper::~EngineWrapper(EngineWrapper *this)
{
  OUTLINED_FUNCTION_2_52();
  *v2 = v3;
  v4 = v2[2];
  if (v4)
  {
    delta_delete(v4);
    *(v1 + 16) = 0;
  }
}

BOOL EngineWrapper::queryInterface(EngineWrapper *this, uint64_t a2, void **a3)
{
  *a3 = 0;
  if ((a2 - 1) > 1)
  {
    return 0;
  }

  *a3 = this;
  (*(*this + 8))(this);
  return *a3 != 0;
}

uint64_t EngineWrapper::addRef(EngineWrapper *this)
{
  v1 = *(this + 1) + 1;
  *(this + 1) = v1;
  return v1;
}

uint64_t EngineWrapper::release(EngineWrapper *this)
{
  v1 = *(this + 1);
  v2 = v1 - 1;
  *(this + 1) = v1 - 1;
  if (v1 == 1)
  {
    EngineWrapper::~EngineWrapper(this);
    MEMORY[0x274379FF0](this, 0x1081C40F6F63E5DLL);
  }

  return v2;
}

uint64_t EngineWrapper::start(EngineWrapper *this)
{
  OUTLINED_FUNCTION_1_53(this);
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = engsynStart(*(v1 + 16));
    if (v3)
    {
      *(v1 + 24) = 1;
    }
  }

  return OUTLINED_FUNCTION_0_54(v3);
}

uint64_t EngineWrapper::end(EngineWrapper *this)
{
  OUTLINED_FUNCTION_1_53(this);
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = engsynEnd(*(v1 + 16));
    if (v3)
    {
      *(v1 + 24) = 1;
    }
  }

  return OUTLINED_FUNCTION_0_54(v3);
}

uint64_t EngineWrapper::processSentences(EngineWrapper *this, const char *a2)
{
  OUTLINED_FUNCTION_1_53(this);
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = engsynProcessSentences(*(v2 + 16));
    if (v4)
    {
      *(v2 + 24) = 1;
    }
  }

  return OUTLINED_FUNCTION_0_54(v4);
}

uint64_t EngineWrapper::processRemaining(EngineWrapper *this, const char *a2)
{
  OUTLINED_FUNCTION_1_53(this);
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = engsynProcessRemaining(*(v2 + 16));
    if (v4)
    {
      *(v2 + 24) = 1;
    }
  }

  return OUTLINED_FUNCTION_0_54(v4);
}

uint64_t EngineWrapper::getLastError(EngineWrapper *this, int *a2, int *a3)
{
  OUTLINED_FUNCTION_1_53(this);
  if (v6)
  {
    LastError = 1;
  }

  else
  {
    LastError = engsynGetLastError(*(v3 + 16), v4, v5);
    if (LastError == 1)
    {
      *(v3 + 24) = 1;
    }
  }

  return OUTLINED_FUNCTION_0_54(LastError);
}

uint64_t EngineWrapper::restart(EngineWrapper *this)
{
  OUTLINED_FUNCTION_1_53(this);
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = engsynRestart(*(v1 + 16));
    if (v3)
    {
      *(v1 + 24) = 1;
    }
  }

  return OUTLINED_FUNCTION_0_54(v3);
}

uint64_t EngineWrapper::readPhonemes(EngineWrapper *this, char *a2, int a3, int *a4)
{
  OUTLINED_FUNCTION_1_53(this);
  if (v8)
  {
    Phonemes = 1;
  }

  else
  {
    Phonemes = engsynReadPhonemes(*(v4 + 16), v5, v6, v7);
    if (Phonemes)
    {
      *(v4 + 24) = 1;
    }
  }

  return OUTLINED_FUNCTION_0_54(Phonemes);
}

uint64_t EngineWrapper::readErrorMessage(EngineWrapper *this, char *a2, int a3, int *a4)
{
  OUTLINED_FUNCTION_1_53(this);
  if (v8)
  {
    ErrorMessage = 1;
  }

  else
  {
    ErrorMessage = engsynReadErrorMessage(*(v4 + 16), v5, v6, v7);
    if (ErrorMessage == 1)
    {
      *(v4 + 24) = 1;
    }
  }

  return OUTLINED_FUNCTION_0_54(ErrorMessage);
}

BOOL EngineWrapper::flush(EngineWrapper *this, int a2)
{
  *(this + 24) = 0;
  *(this + 25) = a2 != 0;
  return engsynFlush(*(this + 2), a2);
}

uint64_t EngineWrapper::clearInput(EngineWrapper *this)
{
  OUTLINED_FUNCTION_1_53(this);
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = engsynClearInput(*(v1 + 16));
    if (v3)
    {
      *(v1 + 24) = 1;
    }
  }

  return OUTLINED_FUNCTION_0_54(v3);
}

uint64_t EngineWrapper::setAbort(EngineWrapper *this)
{
  OUTLINED_FUNCTION_1_53(this);
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = engsynSetAbort(*(v1 + 16));
    if (v3 == 1)
    {
      *(v1 + 24) = 1;
    }
  }

  return OUTLINED_FUNCTION_0_54(v3);
}

uint64_t EngineWrapper::outputPlaying(EngineWrapper *this)
{
  OUTLINED_FUNCTION_1_53(this);
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = engsynOutputPlaying(*(v1 + 16));
    if (v3)
    {
      *(v1 + 24) = 1;
    }
  }

  return OUTLINED_FUNCTION_0_54(v3);
}

uint64_t EngineWrapper::pause(EngineWrapper *this)
{
  OUTLINED_FUNCTION_1_53(this);
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v4 = *(v1 + 16);
    v3 = engsynPause();
    if (v3)
    {
      *(v1 + 24) = 1;
    }
  }

  return OUTLINED_FUNCTION_0_54(v3);
}

uint64_t EngineWrapper::setSynthToNamedFile(EngineWrapper *this, const char *a2)
{
  OUTLINED_FUNCTION_1_53(this);
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = engsynSetSynthToNamedFile(*(v2 + 16), v3);
    if (v5)
    {
      *(v2 + 24) = 1;
    }
  }

  return OUTLINED_FUNCTION_0_54(v5);
}

BOOL EngineWrapper::setKlattDynamicHook(EngineWrapper *this, void (*a2)(float *, void *), uint64_t a3)
{
  if (*(this + 24))
  {
    return 1;
  }

  result = engsynSetKlattDynamicHook(*(this + 2), a2, a3);
  if (result)
  {
    *(this + 24) = 1;
  }

  return result;
}

BOOL EngineWrapper::setKlattConstHook(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    return 1;
  }

  result = engsynSetKlattConstHook(*(a1 + 16), a2, a3);
  if (result)
  {
    *(a1 + 24) = 1;
  }

  return result;
}

uint64_t EngineWrapper::setSynthToCallback(EngineWrapper *this, void (*a2)(int, uint64_t *, void *), void *a3)
{
  OUTLINED_FUNCTION_1_53(this);
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = engsynSetSynthToCallback(*(v3 + 16), v4, v5);
    if (v7)
    {
      *(v3 + 24) = 1;
    }
  }

  return OUTLINED_FUNCTION_0_54(v7);
}

uint64_t EngineWrapper::setDurationCallback(uint64_t this, void (*a2)(uint64_t, uint64_t, void *), void *a3)
{
  if (!*(this + 24))
  {
    return engsynSetDurationCallback(*(this + 16), a2, a3);
  }

  return this;
}

uint64_t EngineWrapper::registerWordCallback(uint64_t this, void (*a2)(int, void *), uint64_t a3)
{
  if (!*(this + 24))
  {
    return engsynRegisterWordCallback(*(this + 16), a2, a3);
  }

  return this;
}