uint64_t e_acute_rules()
{
  OUTLINED_FUNCTION_18_32();
  v174 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_15_33(v2, v3, v4, v5, v6, v7, v8, v9, v58, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142, v146, v150, v154, v158, v161);
  OUTLINED_FUNCTION_64_12(v10, v11, v12, v13, v14, v15, v16, v17, v59, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v147, v151, v155, v159, v162, v164, v166, v168, v170, v172);
  v18 = setjmp(v1);
  if (v18 || OUTLINED_FUNCTION_14_34(v18, v19, v20, v21, v22, v23, v24, v25, v60, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144, v148, v152, v156, v160, v163, *v165, v165[4], *v167, *&v167[4], v167[6], v169, SWORD2(v169), SBYTE6(v169), SHIBYTE(v169), v171, v173))
  {
    goto LABEL_3;
  }

  v28 = OUTLINED_FUNCTION_75_12();
  OUTLINED_FUNCTION_130_4(v28, v29);
  OUTLINED_FUNCTION_41_15();
  fence_37(v0, 0, &null_str_14);
  OUTLINED_FUNCTION_143_4();
  v30 = OUTLINED_FUNCTION_74_12();
  if (lpta_loadp_setscan_r(v30, v31))
  {
LABEL_5:
    v32 = OUTLINED_FUNCTION_35_17();
    starttest(v32, v33);
    v34 = OUTLINED_FUNCTION_16_33();
    if (lpta_loadp_setscan_r(v34, v35) || (OUTLINED_FUNCTION_5_36(), test_string_s()))
    {
LABEL_20:
      v55 = OUTLINED_FUNCTION_88_9();
      lpta_rpta_loadp(v55, v56, v57);
      v41 = OUTLINED_FUNCTION_0_40();
      inserted = insert_2pt_s(v41, v42, v43, v44, v45);
      if (!inserted)
      {
LABEL_21:
        OUTLINED_FUNCTION_79_11(inserted, v47, v48, v49, v50, v51, v52, v53, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, v149, v153, v157);
        goto LABEL_3;
      }

      goto LABEL_15;
    }

LABEL_7:
    OUTLINED_FUNCTION_81_11(6, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, v149, v153);
    if (!OUTLINED_FUNCTION_4_37())
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_11:
    while (1)
    {
      v38 = OUTLINED_FUNCTION_12_35();
      if (testFldeq(v38, v39, v40, 2) || advance_tok(v0))
      {
        break;
      }

      v36 = OUTLINED_FUNCTION_128_4();
      bspush_ca_scan(v36, v37);
    }
  }

LABEL_15:
  while (2)
  {
    v54 = *(v0 + 104);
    if (v54)
    {
      inserted = OUTLINED_FUNCTION_92_9(v54);
    }

    else
    {
      inserted = OUTLINED_FUNCTION_136_4();
    }

    switch(inserted)
    {
      case 1:
        goto LABEL_5;
      case 2:
        OUTLINED_FUNCTION_69_12();
        if (!test_string_s())
        {
          goto LABEL_20;
        }

        continue;
      case 3:
        goto LABEL_11;
      case 4:
        goto LABEL_21;
      case 5:
        goto LABEL_20;
      case 6:
        goto LABEL_7;
      default:
        goto LABEL_3;
    }
  }

LABEL_3:
  vretproc(v0);
  v26 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_118_4();
}

uint64_t accented_e_rules()
{
  OUTLINED_FUNCTION_18_32();
  v159 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_15_33(v3, v4, v5, v6, v7, v8, v9, v10, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v119, v122, v125, v128, v131, v134, v137, v140, v143, v146);
  OUTLINED_FUNCTION_64_12(v11, v12, v13, v14, v15, v16, v17, v18, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117, v120, v123, v126, v129, v132, v135, v138, v141, v144, v147, v149, v151, v153, v155, v157);
  v19 = setjmp(v2);
  if (v19 || OUTLINED_FUNCTION_14_34(v19, v20, v21, v22, v23, v24, v25, v26, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118, v121, v124, v127, v130, v133, v136, v139, v142, v145, v148, *v150, v150[4], *v152, *&v152[4], v152[6], v154, SWORD2(v154), SBYTE6(v154), SHIBYTE(v154), v156, v158))
  {
    goto LABEL_3;
  }

  v29 = OUTLINED_FUNCTION_23_26();
  get_parm(v29, v30, v31, -6);
  OUTLINED_FUNCTION_41_15();
  v32 = OUTLINED_FUNCTION_98_7();
  fence_37(v32, v33, v34);
  v35 = OUTLINED_FUNCTION_23_26();
  lpta_rpta_loadp(v35, v36, v37);
  v38 = OUTLINED_FUNCTION_6_36();
  if (!insert_2pt_s(v38, v39, v40, v41, 0))
  {
    OUTLINED_FUNCTION_22_26();
    if (!v44)
    {
      goto LABEL_28;
    }

    v45 = OUTLINED_FUNCTION_38_17();
    starttest(v45, v46);
    v47 = OUTLINED_FUNCTION_10_35();
    if (lpta_loadp_setscan_r(v47, v48))
    {
LABEL_20:
      v54 = OUTLINED_FUNCTION_10_35();
      if (lpta_loadp_setscan_r(v54, v55) || (OUTLINED_FUNCTION_82_10(), test_string_s()) || (*(v0 + 136) = v1, v56 = *(v0 + 1664), v57 = OUTLINED_FUNCTION_9_35(), test_ptr(v57)) || (v58 = OUTLINED_FUNCTION_88_9(), lpta_rpta_loadp(v58, v59, v60), OUTLINED_FUNCTION_37_17(), mark_s()))
      {
LABEL_24:
        v61 = OUTLINED_FUNCTION_10_35();
        if (!lpta_loadp_setscan_r(v61, v62))
        {
          OUTLINED_FUNCTION_5_36();
          if (!test_string_s())
          {
            OUTLINED_FUNCTION_87_9();
            v63 = OUTLINED_FUNCTION_69_12();
            if (!setd_lookup(v63, v64, 184))
            {
              v65 = OUTLINED_FUNCTION_88_9();
              lpta_rpta_loadp(v65, v66, v67);
              OUTLINED_FUNCTION_37_17();
              mark_s();
            }
          }
        }
      }

LABEL_28:
      vretproc(v0);
      result = 0;
      goto LABEL_4;
    }

    v49 = OUTLINED_FUNCTION_69_12();
    if (!OUTLINED_FUNCTION_152_3(v49, v50) && !advance_tok(v0))
    {
      v51 = OUTLINED_FUNCTION_88_9();
      lpta_rpta_loadp(v51, v52, v53);
      OUTLINED_FUNCTION_37_17();
      if (!mark_s())
      {
        goto LABEL_28;
      }
    }
  }

  v42 = *(v0 + 104);
  if (v42)
  {
    v43 = OUTLINED_FUNCTION_92_9(v42);
  }

  else
  {
    v43 = OUTLINED_FUNCTION_136_4();
  }

  switch(v43)
  {
    case 1:
      goto LABEL_28;
    case 2:
      goto LABEL_20;
    case 3:
      goto LABEL_24;
  }

LABEL_3:
  vretproc(v0);
  result = 94;
LABEL_4:
  v28 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t i_rules()
{
  OUTLINED_FUNCTION_18_32();
  v237 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8_36(v2, v3, v4, v5, v6, v7, v8, v9, v180, v182, v184, v186, v188, v190, v192, v194, v196, v198, v200, v202, v204, v206, v208, v210, v212, v214, v216, v218, v220, v222, v224, v226, v228, v230, v232, v234, v236);
  OUTLINED_FUNCTION_55_14();
  if (!setjmp(v1))
  {
    OUTLINED_FUNCTION_19_28();
    if (!OUTLINED_FUNCTION_137_4(v10, v11, v12, v13, v14))
    {
      v17 = OUTLINED_FUNCTION_67_12();
      get_parm(v17, v18, v19, -6);
      v20 = OUTLINED_FUNCTION_80_11();
      OUTLINED_FUNCTION_129_4(v20, v21);
      v22 = OUTLINED_FUNCTION_77_11();
      push_ptr_init(v22, v23);
      v24 = 0;
      v25 = OUTLINED_FUNCTION_98_7();
      fence_37(v25, v26, v27);
      v28 = OUTLINED_FUNCTION_69_12();
      fence_37(v28, v29, v30);
      v31 = OUTLINED_FUNCTION_80_11();
      if (!lpta_loadp_setscan_r(v31, v32))
      {
        OUTLINED_FUNCTION_5_36();
        if (!test_string_s())
        {
          v93 = OUTLINED_FUNCTION_38_17();
          starttest(v93, v94);
          v95 = OUTLINED_FUNCTION_10_35();
          if (lpta_loadp_setscan_r(v95, v96) || advance_tok(v0))
          {
            v24 = 0;
          }

          else
          {
            OUTLINED_FUNCTION_5_36();
            v119 = test_string_s();
            v24 = 0;
            v120 = 0;
            if (!v119)
            {
LABEL_74:
              LODWORD(v24) = v120;
              OUTLINED_FUNCTION_109_4();
              v158 = OUTLINED_FUNCTION_85_10();
              savescptr(v158, v159, v160);
              v161 = OUTLINED_FUNCTION_12_35();
              if (testFldeq(v161, v162, v163, 2))
              {
                goto LABEL_88;
              }

              OUTLINED_FUNCTION_52_14();
              bspush_ca_scan_boa();
              v121 = OUTLINED_FUNCTION_31_21();
              v124 = 21;
              goto LABEL_45;
            }
          }

LABEL_29:
          v97 = OUTLINED_FUNCTION_32_20();
          starttest(v97, v98);
          v99 = OUTLINED_FUNCTION_10_35();
          v101 = lpta_loadp_setscan_l(v99, v100);
          v102 = v24;
          if (v101)
          {
LABEL_78:
            v24 = v102;
            v164 = OUTLINED_FUNCTION_42_15();
            starttest(v164, v165);
            v166 = OUTLINED_FUNCTION_10_35();
            v65 = lpta_loadp_setscan_r(v166, v167);
            if (!v65)
            {
              v65 = advance_tok(v0);
              v66 = v24;
              if (!v65)
              {
LABEL_84:
                v168 = OUTLINED_FUNCTION_85_10();
                savescptr(v168, v169, v170);
                OUTLINED_FUNCTION_4_37();
                OUTLINED_FUNCTION_133_4();
                if (v65)
                {
                  goto LABEL_49;
                }
              }
            }

            goto LABEL_80;
          }

LABEL_30:
          OUTLINED_FUNCTION_81_11(9, v181, v183, v185, v187, v189, v191, v193, v195, v197, v199, v201, v203, v205, v207, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227);
          if (!advance_tok(v0))
          {
            OUTLINED_FUNCTION_5_36();
            if (!test_string_s())
            {
              v103 = OUTLINED_FUNCTION_16_33();
              if (!lpta_loadp_setscan_r(v103, v104) && !advance_tok(v0))
              {
                OUTLINED_FUNCTION_5_36();
                test_string_s();
                OUTLINED_FUNCTION_146_4();
                if (v106)
                {
                  goto LABEL_49;
                }

LABEL_91:
                v60 = v105;
                v174 = OUTLINED_FUNCTION_86_9();
                savescptr(v174, v175, v176);
                v177 = OUTLINED_FUNCTION_67_12();
                lpta_rpta_loadp(v177, v178, v179);
                v75 = OUTLINED_FUNCTION_7_36();
                v77 = 3;
                goto LABEL_18;
              }
            }
          }

          goto LABEL_88;
        }

        v24 = 0;
      }

      while (2)
      {
        v33 = OUTLINED_FUNCTION_47_15();
        starttest(v33, v34);
        v35 = OUTLINED_FUNCTION_10_35();
        if (!lpta_loadp_setscan_r(v35, v36))
        {
          OUTLINED_FUNCTION_13_34();
          v37 = test_string_s();
          v38 = v24;
          if (!v37)
          {
LABEL_87:
            LODWORD(v24) = v38;
            v171 = OUTLINED_FUNCTION_85_10();
            savescptr(v171, v172, v173);
            v65 = OUTLINED_FUNCTION_4_37();
            if (!v65)
            {
LABEL_69:
              OUTLINED_FUNCTION_83_10(v65, v66, v67, v68, v69, v70, v71, v72, v181, v183, v185, v187, v189, v191, v193, v195, v197, v199, v201, v203, v205, v207, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235);
              v150 = OUTLINED_FUNCTION_1_39();
LABEL_81:
              inserted = insert_2pt_s(v150, v151, v152, v153, v154);
              goto LABEL_82;
            }

            goto LABEL_88;
          }
        }

LABEL_9:
        v39 = OUTLINED_FUNCTION_70_12();
        starttest(v39, v40);
        v41 = OUTLINED_FUNCTION_11_35();
        v43 = lpta_loadp_setscan_l(v41, v42);
        v44 = v24;
        if (v43)
        {
LABEL_10:
          v24 = v44;
          OUTLINED_FUNCTION_75_12();
          is_nasal_vow();
          if (!v45)
          {
            OUTLINED_FUNCTION_83_10(v45, v46, v47, v48, v49, v50, v51, v52, v181, v183, v185, v187, v189, v191, v193, v195, v197, v199, v201, v203, v205, v207, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235);
            v53 = OUTLINED_FUNCTION_0_40();
            if (!insert_2pt_s(v53, v54, v55, v56, v57))
            {
              goto LABEL_83;
            }
          }

LABEL_12:
          v58 = OUTLINED_FUNCTION_10_35();
          if (!lpta_loadp_setscan_r(v58, v59))
          {
            OUTLINED_FUNCTION_13_34();
            if (!test_string_s())
            {
              v81 = OUTLINED_FUNCTION_58_13();
              starttest(v81, v82);
              v83 = OUTLINED_FUNCTION_11_35();
              if (lpta_loadp_setscan_l(v83, v84) || (OUTLINED_FUNCTION_5_36(), test_string_s()))
              {
LABEL_22:
                v85 = OUTLINED_FUNCTION_57_13();
                starttest(v85, v86);
                v87 = OUTLINED_FUNCTION_11_35();
                v65 = lpta_loadp_setscan_l(v87, v88);
                if (!v65)
                {
LABEL_70:
                  v155 = OUTLINED_FUNCTION_70_12();
                  bspush_ca_scan(v155, v156);
LABEL_71:
                  OUTLINED_FUNCTION_5_36();
                  inserted = test_string_s();
LABEL_82:
                  LODWORD(v66) = v24;
                  if (!inserted)
                  {
LABEL_83:
                    OUTLINED_FUNCTION_100_6(v233);
                    goto LABEL_3;
                  }

LABEL_49:
                  v125 = *(v0 + 104);
                  if (v125)
                  {
                    v65 = OUTLINED_FUNCTION_92_9(v125);
                    v24 = v66;
                  }

                  else
                  {
                    v65 = vback(v0, v66);
                    v24 = 0;
                  }

                  v67 = v24;
                  v60 = v24;
                  switch(v65)
                  {
                    case 1:
                      continue;
                    case 2:
                      goto LABEL_29;
                    case 3:
                      v120 = v24;
                      goto LABEL_74;
                    case 4:
                      bspop_boa(v0);
                      v126 = advance_tok(v0);
                      LODWORD(v66) = v24;
                      if (v126)
                      {
                        goto LABEL_49;
                      }

                      v127 = OUTLINED_FUNCTION_35_17();
                      bspush_ca(v127);
                      v128 = OUTLINED_FUNCTION_76_12();
                      lpta_loadpn(v128, v129);
                      v130 = OUTLINED_FUNCTION_99_7();
                      rpta_loadpn(v130, v131);
                      v132 = compare_ptas(v0);
                      LODWORD(v66) = v24;
                      if (v132)
                      {
                        goto LABEL_49;
                      }

                      v65 = testeq(v0);
                      goto LABEL_59;
                    case 5:
                      v133 = OUTLINED_FUNCTION_99_7();
                      lpta_rpta_loadp(v133, v134, v135);
                      v136 = OUTLINED_FUNCTION_69_12();
                      v65 = setd_lookup(v136, v137, 33);
LABEL_59:
                      v66 = v24;
                      if (!v65)
                      {
                        goto LABEL_69;
                      }

                      goto LABEL_49;
                    case 6:
                      goto LABEL_69;
                    case 7:
                    case 13:
                    case 25:
                    case 28:
                    case 36:
                      goto LABEL_83;
                    case 8:
                      v102 = v24;
                      goto LABEL_78;
                    case 9:
                      goto LABEL_30;
                    case 10:
                      v105 = v24;
                      goto LABEL_91;
                    case 11:
                    case 26:
                    case 31:
                      goto LABEL_80;
                    case 12:
                      goto LABEL_84;
                    case 14:
                      goto LABEL_9;
                    case 15:
                      v38 = v24;
                      goto LABEL_87;
                    case 16:
                      v44 = v24;
                      goto LABEL_10;
                    case 17:
                      goto LABEL_44;
                    case 18:
                      bspop_boa(v0);
                      v141 = advance_tok(v0);
                      LODWORD(v66) = v24;
                      if (v141)
                      {
                        goto LABEL_49;
                      }

                      v142 = OUTLINED_FUNCTION_16_33();
                      v144 = lpta_loadp_setscan_r(v142, v143);
                      LODWORD(v66) = v24;
                      if (v144)
                      {
                        goto LABEL_49;
                      }

                      v145 = advance_tok(v0);
                      LODWORD(v66) = v24;
                      if (v145)
                      {
                        goto LABEL_49;
                      }

                      OUTLINED_FUNCTION_5_36();
                      v146 = test_string_s();
                      LODWORD(v66) = v24;
                      if (v146)
                      {
                        goto LABEL_49;
                      }

                      goto LABEL_68;
                    case 19:
LABEL_68:
                      v147 = OUTLINED_FUNCTION_85_10();
                      savescptr(v147, v148, v149);
                      v65 = OUTLINED_FUNCTION_4_37();
                      v66 = v24;
                      if (!v65)
                      {
                        goto LABEL_69;
                      }

                      goto LABEL_49;
                    case 20:
                      goto LABEL_12;
                    case 21:
                      goto LABEL_14;
                    case 22:
                      goto LABEL_22;
                    case 23:
                      OUTLINED_FUNCTION_5_36();
                      test_string_s();
                      OUTLINED_FUNCTION_146_4();
                      if (!v65)
                      {
                        goto LABEL_37;
                      }

                      goto LABEL_49;
                    case 24:
                      goto LABEL_37;
                    case 27:
                      goto LABEL_70;
                    case 29:
                      goto LABEL_71;
                    case 30:
                      v60 = v24;
                      goto LABEL_17;
                    case 32:
                      v138 = OUTLINED_FUNCTION_70_12();
                      bspush_ca_scan(v138, v139);
                      goto LABEL_62;
                    case 33:
                      goto LABEL_39;
                    case 34:
LABEL_62:
                      OUTLINED_FUNCTION_5_36();
                      test_string_s();
                      OUTLINED_FUNCTION_138_4();
                      if (!v140)
                      {
                        goto LABEL_39;
                      }

                      goto LABEL_49;
                    case 35:
                      bspop_boa(v0);
                      goto LABEL_83;
                    default:
                      goto LABEL_3;
                  }
                }
              }

              else
              {
                v107 = OUTLINED_FUNCTION_70_12();
                bspush_ca_scan(v107, v108);
                OUTLINED_FUNCTION_5_36();
                v65 = test_string_s();
                v66 = v24;
                v67 = v24;
                if (v65)
                {
                  goto LABEL_49;
                }

LABEL_37:
                LODWORD(v24) = v67;
              }

              goto LABEL_80;
            }
          }

LABEL_14:
          v60 = v24;
          v61 = OUTLINED_FUNCTION_70_12();
          starttest(v61, v62);
          v63 = OUTLINED_FUNCTION_10_35();
          v65 = lpta_loadp_setscan_r(v63, v64);
          if (v65 || (OUTLINED_FUNCTION_17_33(), v65 = test_string_s(), v65) || (*(v0 + 136) = 1, v73 = *(v0 + 1664), v74 = OUTLINED_FUNCTION_9_35(), v65 = test_ptr(v74), v65))
          {
LABEL_17:
            OUTLINED_FUNCTION_83_10(v65, v66, v67, v68, v69, v70, v71, v72, v181, v183, v185, v187, v189, v191, v193, v195, v197, v199, v201, v203, v205, v207, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235);
            v75 = OUTLINED_FUNCTION_0_40();
LABEL_18:
            v80 = insert_2pt_s(v75, v76, v77, v78, v79);
            LODWORD(v66) = v60;
            if (!v80)
            {
              goto LABEL_83;
            }

            goto LABEL_49;
          }

          v89 = OUTLINED_FUNCTION_43_15();
          starttest(v89, v90);
          v91 = OUTLINED_FUNCTION_11_35();
          v65 = lpta_loadp_setscan_l(v91, v92);
          if (v65)
          {
LABEL_80:
            OUTLINED_FUNCTION_83_10(v65, v66, v67, v68, v69, v70, v71, v72, v181, v183, v185, v187, v189, v191, v193, v195, v197, v199, v201, v203, v205, v207, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235);
            v150 = OUTLINED_FUNCTION_0_40();
            goto LABEL_81;
          }

          v109 = OUTLINED_FUNCTION_70_12();
          bspush_ca_scan(v109, v110);
          OUTLINED_FUNCTION_5_36();
          v111 = test_string_s();
          LODWORD(v66) = v24;
          if (v111)
          {
            goto LABEL_49;
          }

LABEL_39:
          LODWORD(v24) = v60;
          OUTLINED_FUNCTION_70_12();
          bspush_ca_scan_boa();
          v112 = OUTLINED_FUNCTION_12_35();
          if (!testFldeq(v112, v113, v114, 2))
          {
            v115 = OUTLINED_FUNCTION_31_21();
            if (!testFldeq(v115, v116, v117, 15))
            {
              v118 = advance_tok(v0);
              goto LABEL_46;
            }
          }

LABEL_88:
          LODWORD(v66) = v24;
          goto LABEL_49;
        }

        break;
      }

LABEL_44:
      OUTLINED_FUNCTION_81_11(17, v181, v183, v185, v187, v189, v191, v193, v195, v197, v199, v201, v203, v205, v207, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227);
      OUTLINED_FUNCTION_60_13();
      bspush_ca_scan_boa();
      v121 = OUTLINED_FUNCTION_3_38();
LABEL_45:
      v118 = testFldeq(v121, v122, v123, v124);
LABEL_46:
      if (v118)
      {
        LODWORD(v66) = v24;
      }

      else
      {
        LODWORD(v66) = 1;
      }

      goto LABEL_49;
    }
  }

LABEL_3:
  vretproc(v0);
  v15 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_126_4();
}

uint64_t o_rules()
{
  OUTLINED_FUNCTION_18_32();
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_140_4();
  OUTLINED_FUNCTION_8_36(v3, v4, v5, v6, v7, v8, v9, v10, v287, v289, v291, v293, v295, v297, v299, v301, v303, v305, v307, v309, v311, v313, v315, v317, v319, v321, v323, v325, v327, v329, v331, v333, v335, v336, v337, v338, v339);
  OUTLINED_FUNCTION_55_14();
  if (setjmp(v1))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_46_15();
  if (OUTLINED_FUNCTION_137_4(v11, v12, v13, v14, v15))
  {
    goto LABEL_3;
  }

  v18 = OUTLINED_FUNCTION_78_11();
  get_parm(v18, v19, v20, -6);
  OUTLINED_FUNCTION_41_15();
  v21 = OUTLINED_FUNCTION_75_12();
  push_ptr_init(v21, v22);
  v23 = OUTLINED_FUNCTION_77_11();
  push_ptr_init(v23, v24);
  v25 = 0;
  v26 = OUTLINED_FUNCTION_98_7();
  v29 = fence_37(v26, v27, v28);
  OUTLINED_FUNCTION_111_4(v29, v30, &unk_28064B83D);
  v31 = OUTLINED_FUNCTION_116_4();
  starttest(v31, v32);
  v33 = OUTLINED_FUNCTION_74_12();
  if (!lpta_loadp_setscan_r(v33, v34))
  {
    v77 = OUTLINED_FUNCTION_38_17();
    bspush_ca_scan(v77, v78);
    OUTLINED_FUNCTION_5_36();
    v79 = test_string_s();
    v80 = 0;
    v75 = 0;
    if (v79)
    {
      goto LABEL_39;
    }

LABEL_28:
    v25 = v80;
    OUTLINED_FUNCTION_109_4();
    v39 = &v338;
    v81 = OUTLINED_FUNCTION_86_9();
    savescptr(v81, v82, v83);
    v84 = OUTLINED_FUNCTION_78_11();
    lpta_rpta_loadp(v84, v85, v86);
    goto LABEL_31;
  }

  while (2)
  {
    v35 = OUTLINED_FUNCTION_35_17();
    starttest(v35, v36);
    v37 = OUTLINED_FUNCTION_11_35();
    LODWORD(v39) = v25;
    if (!lpta_loadp_setscan_l(v37, v38))
    {
LABEL_33:
      v95 = OUTLINED_FUNCTION_85_10();
      savescptr(v95, v96, v97);
      if (advance_tok(v0))
      {
        goto LABEL_34;
      }

      OUTLINED_FUNCTION_50_15();
      bspush_ca_scan_boa();
      OUTLINED_FUNCTION_5_36();
      v98 = test_string_s();
      goto LABEL_36;
    }

LABEL_6:
    OUTLINED_FUNCTION_76_12();
    is_nasal_vow();
    if (!v40)
    {
      v41 = OUTLINED_FUNCTION_20_28();
      lpta_rpta_loadp(v41, v42, v43);
      v44 = OUTLINED_FUNCTION_0_40();
      if (!insert_2pt_s(v44, v45, v46, v47, v48))
      {
        goto LABEL_75;
      }
    }

LABEL_8:
    LODWORD(v39) = v25;
    v49 = OUTLINED_FUNCTION_39_16();
    starttest(v49, v50);
    v51 = OUTLINED_FUNCTION_11_35();
    if (!lpta_loadp_setscan_r(v51, v52))
    {
      v73 = OUTLINED_FUNCTION_49_15();
      bspush_ca_scan(v73, v74);
      OUTLINED_FUNCTION_5_36();
      test_string_s();
      OUTLINED_FUNCTION_138_4();
      if (v76)
      {
        goto LABEL_39;
      }

LABEL_25:
      if (!OUTLINED_FUNCTION_4_37())
      {
        goto LABEL_30;
      }

      goto LABEL_137;
    }

LABEL_9:
    v53 = OUTLINED_FUNCTION_11_35();
    if (!lpta_loadp_setscan_r(v53, v54))
    {
      OUTLINED_FUNCTION_5_36();
      v25 = v39;
      if (!test_string_s())
      {
LABEL_87:
        v39 = &v338;
        v166 = OUTLINED_FUNCTION_86_9();
        savescptr(v166, v167, v168);
        OUTLINED_FUNCTION_74_12();
        is_nasal_vow();
        if (!v169)
        {
          v170 = OUTLINED_FUNCTION_20_28();
          lpta_rpta_loadp(v170, v171, v172);
          v173 = OUTLINED_FUNCTION_1_39();
          if (!insert_2pt_s(v173, v174, v175, v176, v177))
          {
            goto LABEL_75;
          }
        }

LABEL_89:
        v178 = OUTLINED_FUNCTION_70_12();
        starttest(v178, v179);
        OUTLINED_FUNCTION_22_26();
        if (v133)
        {
          v180 = OUTLINED_FUNCTION_11_35();
          if (!lpta_loadp_setscan_l(v180, v181))
          {
            v229 = OUTLINED_FUNCTION_69_12();
            if (!OUTLINED_FUNCTION_152_3(v229, v230) && !advance_tok(v0))
            {
LABEL_72:
              v149 = OUTLINED_FUNCTION_20_28();
              lpta_rpta_loadp(v149, v150, v151);
LABEL_73:
              v90 = OUTLINED_FUNCTION_1_39();
LABEL_74:
              inserted = insert_2pt_s(v90, v91, v92, v93, v94);
              v75 = v25;
              if (!inserted)
              {
                goto LABEL_75;
              }

LABEL_39:
              v99 = *(v0 + 104);
              if (v99)
              {
                v100 = OUTLINED_FUNCTION_92_9(v99);
                v25 = v101;
              }

              else
              {
                v100 = vback(v0, v75);
                v25 = 0;
              }

              v80 = v25;
              LODWORD(v39) = v25;
              v102 = v25;
              switch(v100)
              {
                case 1:
                  continue;
                case 2:
                  OUTLINED_FUNCTION_5_36();
                  test_string_s();
                  OUTLINED_FUNCTION_145_4();
                  if (!v103)
                  {
                    goto LABEL_28;
                  }

                  goto LABEL_39;
                case 3:
                  goto LABEL_28;
                case 4:
                case 14:
                case 26:
                case 32:
                case 40:
                case 49:
                  goto LABEL_75;
                case 5:
                  goto LABEL_6;
                case 6:
                  LODWORD(v39) = v25;
                  goto LABEL_33;
                case 7:
                  bspop_boa(v0);
                  v120 = OUTLINED_FUNCTION_10_35();
                  v122 = lpta_loadp_setscan_r(v120, v121);
                  v75 = v25;
                  if (v122)
                  {
                    goto LABEL_39;
                  }

                  LOBYTE(v39) = 1;
                  OUTLINED_FUNCTION_17_33();
                  v123 = test_string_s();
                  v75 = v25;
                  if (v123)
                  {
                    goto LABEL_39;
                  }

                  *(v0 + 136) = 1;
                  v124 = *(v0 + 1664);
                  v125 = OUTLINED_FUNCTION_9_35();
                  v119 = test_ptr(v125);
                  goto LABEL_54;
                case 8:
                  goto LABEL_8;
                case 9:
                  LODWORD(v39) = v25;
                  goto LABEL_9;
                case 10:
                  goto LABEL_25;
                case 11:
                  LODWORD(v39) = v25;
                  goto LABEL_11;
                case 12:
                  goto LABEL_87;
                case 13:
                  goto LABEL_89;
                case 15:
                  goto LABEL_92;
                case 16:
                  LODWORD(v39) = v25;
                  goto LABEL_131;
                case 17:
                  LODWORD(v39) = v25;
                  goto LABEL_133;
                case 18:
                  goto LABEL_136;
                case 19:
                  bspop_boa(v0);
                  v111 = advance_tok(v0);
                  goto LABEL_60;
                case 20:
                  LODWORD(v39) = v25;
                  goto LABEL_12;
                case 21:
                  goto LABEL_80;
                case 22:
                  bspop_boa(v0);
                  v112 = OUTLINED_FUNCTION_10_35();
                  v114 = lpta_loadp_setscan_r(v112, v113);
                  v75 = v25;
                  if (v114)
                  {
                    goto LABEL_39;
                  }

                  v115 = advance_tok(v0);
                  v75 = v25;
                  if (v115)
                  {
                    goto LABEL_39;
                  }

                  v116 = OUTLINED_FUNCTION_70_12();
                  bspush_ca_scan(v116, v117);
                  goto LABEL_62;
                case 23:
LABEL_62:
                  OUTLINED_FUNCTION_5_36();
                  v126 = test_string_s();
                  v75 = v25;
                  if (!v126)
                  {
                    goto LABEL_63;
                  }

                  goto LABEL_39;
                case 24:
LABEL_63:
                  v127 = OUTLINED_FUNCTION_91_9();
                  savescptr(v127, v128, v129);
                  OUTLINED_FUNCTION_5_36();
                  v130 = test_string_s();
                  v75 = v25;
                  if (!v130)
                  {
                    v131 = OUTLINED_FUNCTION_70_12();
                    starttest(v131, v132);
                    OUTLINED_FUNCTION_22_26();
                    if (!v133)
                    {
                      goto LABEL_72;
                    }

                    v134 = OUTLINED_FUNCTION_11_35();
                    if (lpta_loadp_setscan_l(v134, v135))
                    {
                      goto LABEL_72;
                    }

                    v136 = OUTLINED_FUNCTION_69_12();
                    v138 = OUTLINED_FUNCTION_152_3(v136, v137);
                    v75 = v25;
                    if (!v138)
                    {
                      v139 = advance_tok(v0);
                      v75 = v25;
                      if (!v139)
                      {
                        goto LABEL_72;
                      }
                    }
                  }

                  goto LABEL_39;
                case 25:
                case 50:
                  goto LABEL_72;
                case 27:
                  LODWORD(v39) = v25;
                  goto LABEL_14;
                case 28:
                  goto LABEL_97;
                case 29:
                  goto LABEL_98;
                case 30:
                  LODWORD(v39) = v25;
                  goto LABEL_141;
                case 31:
                  bspop_boa(v0);
                  v119 = advance_tok(v0);
LABEL_54:
                  v75 = v25;
                  if (!v119)
                  {
                    goto LABEL_30;
                  }

                  goto LABEL_39;
                case 33:
                  goto LABEL_100;
                case 34:
                  goto LABEL_149;
                case 35:
                  LODWORD(v39) = v25;
                  goto LABEL_129;
                case 36:
                  LODWORD(v39) = v25;
                  goto LABEL_128;
                case 37:
                  LODWORD(v39) = v25;
                  goto LABEL_16;
                case 38:
                  goto LABEL_103;
                case 39:
                  goto LABEL_105;
                case 41:
                  LODWORD(v39) = v25;
                  goto LABEL_129;
                case 42:
                  OUTLINED_FUNCTION_5_36();
                  test_string_s();
                  OUTLINED_FUNCTION_133_4();
                  if (!v118)
                  {
                    goto LABEL_113;
                  }

                  goto LABEL_39;
                case 43:
                  goto LABEL_113;
                case 44:
                  LODWORD(v39) = v25;
                  goto LABEL_18;
                case 45:
                  goto LABEL_108;
                case 46:
                  v104 = OUTLINED_FUNCTION_70_12();
                  starttest(v104, v105);
                  v106 = OUTLINED_FUNCTION_11_35();
                  if (lpta_loadp_setscan_r(v106, v107))
                  {
                    goto LABEL_72;
                  }

                  OUTLINED_FUNCTION_5_36();
                  if (test_string_s())
                  {
                    goto LABEL_72;
                  }

                  goto LABEL_47;
                case 47:
                  OUTLINED_FUNCTION_87_9();
                  v140 = OUTLINED_FUNCTION_69_12();
                  setd_lookup(v140, v141, 28);
                  OUTLINED_FUNCTION_144_4();
                  if (!v142)
                  {
                    goto LABEL_71;
                  }

                  goto LABEL_39;
                case 48:
                  goto LABEL_71;
                case 51:
LABEL_47:
                  v108 = OUTLINED_FUNCTION_91_9();
                  savescptr(v108, v109, v110);
                  v111 = OUTLINED_FUNCTION_4_37();
LABEL_60:
                  v75 = v25;
                  if (!v111)
                  {
                    goto LABEL_72;
                  }

                  goto LABEL_39;
                case 52:
                  goto LABEL_30;
                case 53:
                  bspop_boa(v0);
                  OUTLINED_FUNCTION_70_12();
                  bspush_ca_boa();
                  OUTLINED_FUNCTION_87_9();
                  v164 = OUTLINED_FUNCTION_69_12();
                  v163 = setd_lookup(v164, v165, 18);
                  goto LABEL_83;
                case 54:
                  bspop_boa(v0);
                  goto LABEL_30;
                case 55:
                  goto LABEL_79;
                default:
                  goto LABEL_3;
              }
            }

LABEL_137:
            v75 = v25;
            goto LABEL_39;
          }
        }

LABEL_92:
        LODWORD(v39) = v25;
        OUTLINED_FUNCTION_22_26();
        if (v133)
        {
          OUTLINED_FUNCTION_87_9();
          v182 = OUTLINED_FUNCTION_69_12();
          if (!setd_lookup(v182, v183, 189))
          {
            v184 = OUTLINED_FUNCTION_20_28();
            lpta_rpta_loadp(v184, v185, v186);
            v187 = OUTLINED_FUNCTION_1_39();
            if (!insert_2pt_s(v187, v188, v189, v190, v191))
            {
              goto LABEL_75;
            }
          }
        }

LABEL_131:
        v250 = OUTLINED_FUNCTION_48_15();
        starttest(v250, v251);
        v252 = OUTLINED_FUNCTION_11_35();
        if (!lpta_loadp_setscan_r(v252, v253))
        {
          OUTLINED_FUNCTION_5_36();
          v25 = v39;
          if (!test_string_s())
          {
LABEL_136:
            v258 = OUTLINED_FUNCTION_91_9();
            savescptr(v258, v259, v260);
            v261 = OUTLINED_FUNCTION_12_35();
            if (!testFldeq(v261, v262, v263, 2))
            {
              OUTLINED_FUNCTION_44_15();
              bspush_ca_scan_boa();
              v264 = OUTLINED_FUNCTION_31_21();
              v163 = testFldeq(v264, v265, v266, 25);
LABEL_83:
              if (v163)
              {
                v75 = v25;
              }

              else
              {
                v75 = 1;
              }

              goto LABEL_39;
            }

            goto LABEL_137;
          }
        }

        goto LABEL_133;
      }
    }

    break;
  }

LABEL_11:
  v55 = OUTLINED_FUNCTION_70_12();
  starttest(v55, v56);
  v57 = OUTLINED_FUNCTION_33_20();
  v25 = v39;
  if (!lpta_loadp_setscan_l(v57, v58))
  {
LABEL_80:
    v160 = OUTLINED_FUNCTION_85_10();
    savescptr(v160, v161, v162);
    OUTLINED_FUNCTION_58_13();
    bspush_ca_scan_boa();
    OUTLINED_FUNCTION_5_36();
LABEL_81:
    v163 = test_string_s();
    goto LABEL_83;
  }

LABEL_12:
  v59 = OUTLINED_FUNCTION_11_35();
  if (!lpta_loadp_setscan_r(v59, v60))
  {
    OUTLINED_FUNCTION_5_36();
    v25 = v39;
    if (!test_string_s())
    {
LABEL_97:
      OUTLINED_FUNCTION_81_11(28, v288, v290, v292, v294, v296, v298, v300, v302, v304, v306, v308, v310, v312, v314, v316, v318, v320, v322, v324, v326, v328, v330, v332, v334);
      v192 = OUTLINED_FUNCTION_70_12();
      starttest(v192, v193);
      v194 = OUTLINED_FUNCTION_11_35();
      LODWORD(v39) = v25;
      if (lpta_loadp_setscan_l(v194, v195))
      {
LABEL_98:
        v196 = OUTLINED_FUNCTION_70_12();
        starttest(v196, v197);
        v198 = OUTLINED_FUNCTION_16_33();
        if (!lpta_loadp_setscan_r(v198, v199))
        {
          OUTLINED_FUNCTION_13_34();
          if (!test_string_s())
          {
            v278 = OUTLINED_FUNCTION_70_12();
            bspush_ca_scan(v278, v279);
            OUTLINED_FUNCTION_5_36();
            v280 = test_string_s();
            v75 = v25;
            if (v280)
            {
              goto LABEL_39;
            }

LABEL_149:
            v39 = &v338;
            v281 = OUTLINED_FUNCTION_86_9();
            savescptr(v281, v282, v283);
            v284 = OUTLINED_FUNCTION_78_11();
            lpta_rpta_loadp(v284, v285, v286);
            goto LABEL_73;
          }
        }

LABEL_100:
        LODWORD(v39) = v25;
        v200 = OUTLINED_FUNCTION_70_12();
        starttest(v200, v201);
        v202 = OUTLINED_FUNCTION_16_33();
        if (!lpta_loadp_setscan_r(v202, v203))
        {
          v204 = OUTLINED_FUNCTION_70_12();
          bspush_ca_scan(v204, v205);
          OUTLINED_FUNCTION_5_36();
          v206 = test_string_s();
          v75 = v25;
          if (v206)
          {
            goto LABEL_39;
          }

LABEL_128:
          v239 = OUTLINED_FUNCTION_91_9();
          savescptr(v239, v240, v241);
        }

LABEL_129:
        v242 = OUTLINED_FUNCTION_20_28();
        lpta_rpta_loadp(v242, v243, v244);
        v245 = OUTLINED_FUNCTION_0_40();
        goto LABEL_134;
      }

LABEL_141:
      v267 = OUTLINED_FUNCTION_85_10();
      savescptr(v267, v268, v269);
      if (advance_tok(v0) || (OUTLINED_FUNCTION_5_36(), test_string_s()) || (v270 = OUTLINED_FUNCTION_10_35(), lpta_loadp_setscan_r(v270, v271)) || (OUTLINED_FUNCTION_5_36(), test_string_s()) || (v272 = OUTLINED_FUNCTION_12_35(), testFldeq(v272, v273, v274, 2)))
      {
LABEL_34:
        v75 = v39;
        goto LABEL_39;
      }

      OUTLINED_FUNCTION_43_15();
      bspush_ca_scan_boa();
      v275 = OUTLINED_FUNCTION_31_21();
      v98 = testFldeq(v275, v276, v277, 19);
LABEL_36:
      if (v98)
      {
        v75 = v39;
      }

      else
      {
        v75 = 1;
      }

      goto LABEL_39;
    }
  }

LABEL_14:
  v61 = OUTLINED_FUNCTION_11_35();
  if (lpta_loadp_setscan_r(v61, v62) || (OUTLINED_FUNCTION_5_36(), v25 = v39, test_string_s()))
  {
LABEL_16:
    v63 = OUTLINED_FUNCTION_11_35();
    if (lpta_loadp_setscan_r(v63, v64) || (OUTLINED_FUNCTION_5_36(), v25 = v39, test_string_s()))
    {
LABEL_18:
      v25 = v39;
      v65 = OUTLINED_FUNCTION_70_12();
      starttest(v65, v66);
      v67 = OUTLINED_FUNCTION_33_20();
      if (lpta_loadp_setscan_r(v67, v68) || advance_tok(v0) || (OUTLINED_FUNCTION_21_27(), test_string_s()) || (*(v0 + 136) = v39, v69 = *(v0 + 1664), v70 = OUTLINED_FUNCTION_9_35(), test_ptr(v70)) || (v71 = OUTLINED_FUNCTION_33_20(), lpta_loadp_setscan_l(v71, v72)))
      {
LABEL_30:
        v87 = OUTLINED_FUNCTION_20_28();
        lpta_rpta_loadp(v87, v88, v89);
LABEL_31:
        v90 = OUTLINED_FUNCTION_0_40();
        goto LABEL_74;
      }

      OUTLINED_FUNCTION_70_12();
      bspush_ca_scan_boa();
      OUTLINED_FUNCTION_13_34();
      goto LABEL_81;
    }

LABEL_108:
    OUTLINED_FUNCTION_81_11(45, v288, v290, v292, v294, v296, v298, v300, v302, v304, v306, v308, v310, v312, v314, v316, v318, v320, v322, v324, v326, v328, v330, v332, v334);
    v216 = OUTLINED_FUNCTION_70_12();
    starttest(v216, v217);
    v218 = OUTLINED_FUNCTION_70_12();
    bspush_ca(v218);
    OUTLINED_FUNCTION_153_3();
    v219 = OUTLINED_FUNCTION_9_35();
    if (!setscan_nof_r(v219))
    {
      v220 = OUTLINED_FUNCTION_12_35();
      if (!testFldeq(v220, v221, v222, 2))
      {
        v223 = advance_tok(v0);
        v75 = v25;
        v102 = v25;
        if (v223)
        {
          goto LABEL_39;
        }

LABEL_71:
        v25 = v102;
        v39 = &v338;
        v143 = OUTLINED_FUNCTION_74_12();
        copyvar(v143, v144, v145);
        v146 = OUTLINED_FUNCTION_78_11();
        lpta_rpta_loadp(v146, v147, v148);
        goto LABEL_73;
      }
    }

    goto LABEL_137;
  }

LABEL_103:
  v207 = OUTLINED_FUNCTION_91_9();
  savescptr(v207, v208, v209);
  v210 = OUTLINED_FUNCTION_33_20();
  if (lpta_loadp_setscan_l(v210, v211) || (OUTLINED_FUNCTION_29_23(), test_string_s()))
  {
LABEL_105:
    LODWORD(v39) = v25;
  }

  else
  {
    v231 = OUTLINED_FUNCTION_20_28();
    lpta_rpta_loadp(v231, v232, v233);
    v234 = OUTLINED_FUNCTION_0_40();
    LODWORD(v39) = v25;
    if (!insert_2pt_s(v234, v235, v236, v237, v238))
    {
      goto LABEL_75;
    }
  }

  v212 = OUTLINED_FUNCTION_70_12();
  starttest(v212, v213);
  v214 = OUTLINED_FUNCTION_33_20();
  if (lpta_loadp_setscan_l(v214, v215))
  {
    goto LABEL_129;
  }

  v224 = OUTLINED_FUNCTION_70_12();
  bspush_ca_scan(v224, v225);
  OUTLINED_FUNCTION_5_36();
  v226 = test_string_s();
  v75 = v39;
  if (v226)
  {
    goto LABEL_39;
  }

LABEL_113:
  OUTLINED_FUNCTION_96_7();
  v227 = *(v0 + 1648);
  v228 = OUTLINED_FUNCTION_9_35();
  if (test_ptr(v228))
  {
    goto LABEL_34;
  }

LABEL_133:
  v254 = OUTLINED_FUNCTION_20_28();
  lpta_rpta_loadp(v254, v255, v256);
  v245 = OUTLINED_FUNCTION_1_39();
LABEL_134:
  v257 = insert_2pt_s(v245, v246, v247, v248, v249);
  v75 = v39;
  if (v257)
  {
    goto LABEL_39;
  }

LABEL_75:
  v153 = OUTLINED_FUNCTION_94_8();
  lpta_loadpn(v153, v154);
  v155 = OUTLINED_FUNCTION_99_7();
  rpta_loadpn(v155, v156);
  if (!compare_ptas(v0) && !testeq(v0))
  {
    OUTLINED_FUNCTION_87_9();
    v157 = OUTLINED_FUNCTION_21_27();
    if (!setd_lookup(v157, v158, 52))
    {
      *(v0 + 136) = v39;
      *(v0 + 112) = v340;
      *(v0 + 128) = 0;
      v159 = OUTLINED_FUNCTION_1_39();
      insert_r(v159);
    }
  }

LABEL_79:
  OUTLINED_FUNCTION_100_6(v339);
LABEL_3:
  vretproc(v0);
  v16 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_135_4();
}

uint64_t o_circ_rules()
{
  OUTLINED_FUNCTION_18_32();
  v132 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_15_33(v2, v3, v4, v5, v6, v7, v8, v9, v41, v44, v47, v50, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v119);
  OUTLINED_FUNCTION_64_12(v10, v11, v12, v13, v14, v15, v16, v17, v42, v45, v48, v51, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117, v120, v122, v124, v126, v128, v130);
  v18 = setjmp(v1);
  if (!v18 && !OUTLINED_FUNCTION_14_34(v18, v19, v20, v21, v22, v23, v24, v25, v43, v46, v49, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118, v121, *v123, v123[4], *v125, *&v125[4], v125[6], v127, SWORD2(v127), SBYTE6(v127), SHIBYTE(v127), v129, v131))
  {
    v28 = OUTLINED_FUNCTION_23_26();
    get_parm(v28, v29, v30, -6);
    OUTLINED_FUNCTION_41_15();
    v31 = OUTLINED_FUNCTION_98_7();
    fence_37(v31, v32, v33);
    v34 = OUTLINED_FUNCTION_23_26();
    lpta_rpta_loadp(v34, v35, v36);
    v37 = OUTLINED_FUNCTION_6_36();
    if (insert_2pt_s(v37, v38, v39, v40, 0))
    {
      if (*(v0 + 104))
      {
        *(v0 + 104) = 0;
      }

      else
      {
        OUTLINED_FUNCTION_136_4();
      }
    }
  }

  vretproc(v0);
  v26 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_118_4();
}

void u_rules()
{
  OUTLINED_FUNCTION_132_4();
  OUTLINED_FUNCTION_18_32();
  v72 = *MEMORY[0x277D85DE8];
  v67[0] = 0;
  v67[1] = 0;
  v65 = 0;
  v66 = 0;
  v64[0] = 0;
  v64[1] = 0;
  OUTLINED_FUNCTION_90_9();
  bzero(v63, v2);
  OUTLINED_FUNCTION_89_9();
  bzero(v71, v3);
  if (setjmp(v71) || ventproc(v0, v63, v70, v69, v68, v71))
  {
    goto LABEL_3;
  }

  v5 = OUTLINED_FUNCTION_86_9();
  get_parm(v5, v6, v7, -6);
  v8 = OUTLINED_FUNCTION_80_11();
  OUTLINED_FUNCTION_129_4(v8, v9);
  push_ptr_init(v0, v64);
  fence_37(v0, 0, &null_str_14);
  v10 = OUTLINED_FUNCTION_21_27();
  fence_37(v10, v11, v12);
  v13 = OUTLINED_FUNCTION_63_12();
  if (!lpta_loadp_setscan_r(v13, v14))
  {
    OUTLINED_FUNCTION_56_13();
    if (!test_string_s())
    {
      *(v0 + 136) = &v65;
      v15 = *(v0 + 1664);
      v16 = OUTLINED_FUNCTION_9_35();
      if (!test_ptr(v16))
      {
        lpta_rpta_loadp(v0, v67, &v65);
        v17 = OUTLINED_FUNCTION_0_40();
        if (!insert_2pt_s(v17, v18, v19, v20, v21))
        {
          goto LABEL_31;
        }
      }
    }
  }

  while (2)
  {
    OUTLINED_FUNCTION_80_11();
    is_nasal_vow();
    if (v22)
    {
LABEL_20:
      v35 = OUTLINED_FUNCTION_156_3();
      starttest(v35, v36);
      v37 = OUTLINED_FUNCTION_63_12();
      if (lpta_loadp_setscan_r(v37, v38) || (OUTLINED_FUNCTION_73_12(), test_string_s()))
      {
LABEL_22:
        v39 = OUTLINED_FUNCTION_125_4();
        starttest(v39, v40);
        v41 = OUTLINED_FUNCTION_63_12();
        if (!lpta_loadp_setscan_r(v41, v42))
        {
          v46 = OUTLINED_FUNCTION_95_8();
          bspush_ca_scan(v46, v47);
          OUTLINED_FUNCTION_17_33();
LABEL_25:
          if (test_string_s())
          {
            goto LABEL_15;
          }

LABEL_26:
          v48 = OUTLINED_FUNCTION_108_4();
          savescptr(v48, v49, v50);
          *(v0 + 136) = v1;
          v51 = *(v0 + 1664);
          v52 = OUTLINED_FUNCTION_9_35();
          if (test_ptr(v52))
          {
            goto LABEL_15;
          }
        }

LABEL_23:
        v43 = OUTLINED_FUNCTION_107_4();
        lpta_rpta_loadp(v43, v44, v45);
        v28 = OUTLINED_FUNCTION_2_38();
        v32 = &unk_28064B84F;
      }

      else
      {
        v53 = OUTLINED_FUNCTION_147_4();
        bspush_ca_scan(v53, v54);
        OUTLINED_FUNCTION_17_33();
        if (test_string_s())
        {
          goto LABEL_15;
        }

LABEL_29:
        v55 = OUTLINED_FUNCTION_32_20();
        savescptr(v55, v56, &v65);
        v57 = OUTLINED_FUNCTION_107_4();
        lpta_rpta_loadp(v57, v58, v59);
        v28 = OUTLINED_FUNCTION_1_39();
        v32 = &unk_28064B8E4;
      }

LABEL_14:
      if (insert_2pt_s(v28, v29, v30, v32, v31))
      {
        goto LABEL_15;
      }

LABEL_31:
      OUTLINED_FUNCTION_100_6(v66);
      break;
    }

    starttest(v0, 4);
    v23 = OUTLINED_FUNCTION_63_12();
    if (lpta_loadp_setscan_l(v23, v24))
    {
LABEL_30:
      v60 = OUTLINED_FUNCTION_107_4();
      lpta_rpta_loadp(v60, v61, v62);
      v28 = OUTLINED_FUNCTION_2_38();
      v32 = &unk_28064B853;
      goto LABEL_14;
    }

LABEL_10:
    savescptr(v0, 5, v64);
    OUTLINED_FUNCTION_17_33();
    if (!test_string_s() && !lpta_loadp_setscan_r(v0, v64))
    {
      OUTLINED_FUNCTION_17_33();
      if (!test_string_s())
      {
        v25 = OUTLINED_FUNCTION_107_4();
        lpta_rpta_loadp(v25, v26, v27);
        v28 = OUTLINED_FUNCTION_2_38();
        v32 = &unk_28064B852;
        goto LABEL_14;
      }
    }

LABEL_15:
    v33 = *(v0 + 104);
    if (v33)
    {
      v34 = OUTLINED_FUNCTION_92_9(v33);
    }

    else
    {
      v34 = OUTLINED_FUNCTION_136_4();
    }

    switch(v34)
    {
      case 1:
        continue;
      case 2:
      case 6:
        goto LABEL_31;
      case 3:
        goto LABEL_20;
      case 4:
        goto LABEL_30;
      case 5:
        goto LABEL_10;
      case 7:
        goto LABEL_22;
      case 8:
        goto LABEL_29;
      case 9:
        goto LABEL_23;
      case 10:
        OUTLINED_FUNCTION_17_33();
        goto LABEL_25;
      case 11:
        goto LABEL_26;
      default:
        goto LABEL_3;
    }
  }

LABEL_3:
  vretproc(v0);
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_157_3();
  OUTLINED_FUNCTION_131_4();
}

void reduce_duplicate_cons()
{
  OUTLINED_FUNCTION_160_3();
  OUTLINED_FUNCTION_18_32();
  v99 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_40_16(v1, v2, v3, v4, v5, v6, v7, v8, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97);
  OUTLINED_FUNCTION_89_9();
  bzero(v98, v9);
  if (!setjmp(v98))
  {
    OUTLINED_FUNCTION_121_4();
    if (!ventproc(v0, v10, v11, v12, v13, v98))
    {
      v15 = OUTLINED_FUNCTION_86_9();
      get_parm(v15, v16, v17, -6);
      OUTLINED_FUNCTION_41_15();
      OUTLINED_FUNCTION_102_6();
      v18 = OUTLINED_FUNCTION_98_7();
      fence_37(v18, v19, v20);
      v21 = OUTLINED_FUNCTION_56_13();
      fence_37(v21, v22, v23);
      OUTLINED_FUNCTION_143_4();
      v24 = OUTLINED_FUNCTION_74_12();
      if (!lpta_loadp_setscan_l(v24, v25))
      {
        v26 = OUTLINED_FUNCTION_117_4();
        if (!savetok(v26, v27))
        {
          v28 = OUTLINED_FUNCTION_6_36();
          if (testFldeq(v28, v29, v30, 2) || advance_tok(v0))
          {
            goto LABEL_9;
          }

          v32 = OUTLINED_FUNCTION_72_12();
          if (npush_fld(v32, v33, 0))
          {
            goto LABEL_11;
          }

          if (!advance_tok(v0))
          {
            v34 = OUTLINED_FUNCTION_117_4();
            npush_vf(v34, v35, v36, v37, v38, v39, v40, v41);
            if (if_testeq(v0, v42, v43, v44, v45, v46, v47, v48))
            {
LABEL_11:
              v31 = 0;
              goto LABEL_21;
            }

            v49 = OUTLINED_FUNCTION_70_12();
            starttest(v49, v50);
            OUTLINED_FUNCTION_38_17();
            bspush_ca_boa();
            if (!OUTLINED_FUNCTION_120_4())
            {
              v51 = OUTLINED_FUNCTION_101_6();
              if (!testFldeq(v51, v52, v53, 1) && !advance_tok(v0))
              {
                v54 = OUTLINED_FUNCTION_33_20();
                if (!lpta_loadp_setscan_l(v54, v55))
                {
                  OUTLINED_FUNCTION_13_34();
                  if (!test_string_s())
                  {
                    v56 = OUTLINED_FUNCTION_61_13();
                    bspush_ca_scan(v56, v57);
                    OUTLINED_FUNCTION_69_12();
                    if (!test_string_s())
                    {
LABEL_30:
                      v31 = 1;
LABEL_21:
                      v58 = v31;
                      while (2)
                      {
                        v59 = v0[13];
                        if (v59)
                        {
                          v60 = OUTLINED_FUNCTION_92_9(v59);
                          v62 = v61;
                        }

                        else
                        {
                          v60 = vback(v0, v58);
                          v62 = 0;
                        }

                        switch(v60)
                        {
                          case 2:
                            bspop_boa(v0);
                            OUTLINED_FUNCTION_106_4();
                            delete_phone_from_left();
                            goto LABEL_3;
                          case 3:
                            OUTLINED_FUNCTION_13_34();
                            v63 = test_string_s();
                            v58 = v62;
                            if (v63)
                            {
                              continue;
                            }

                            v64 = OUTLINED_FUNCTION_74_12();
                            bspush_ca_scan(v64, v65);
                            OUTLINED_FUNCTION_5_36();
                            goto LABEL_29;
                          case 4:
                            goto LABEL_30;
                          case 5:
                            OUTLINED_FUNCTION_5_36();
LABEL_29:
                            v66 = test_string_s();
                            v58 = v62;
                            if (!v66)
                            {
                              goto LABEL_30;
                            }

                            continue;
                          default:
                            goto LABEL_3;
                        }
                      }
                    }
                  }
                }
              }
            }
          }

LABEL_9:
          v31 = 0;
          goto LABEL_21;
        }
      }
    }
  }

LABEL_3:
  vretproc(v0);
  v14 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_161_3();
}

void is_liaison_con()
{
  OUTLINED_FUNCTION_132_4();
  v1 = v0;
  v33 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_90_9();
  bzero(v28, v2);
  OUTLINED_FUNCTION_89_9();
  bzero(v32, v3);
  if (setjmp(v32))
  {
    goto LABEL_3;
  }

  if (ventproc(v1, v28, v31, v30, v29, v32))
  {
    goto LABEL_3;
  }

  fence_37(v1, 0, &null_str_14);
  v5 = OUTLINED_FUNCTION_105_5();
  lpta_loadpn(v5, v6);
  OUTLINED_FUNCTION_149_4();
  if (!compare_ptas(v1) && !testneq(v1))
  {
    goto LABEL_3;
  }

  v7 = 0;
  while (2)
  {
    v8 = OUTLINED_FUNCTION_74_12();
    starttest(v8, v9);
    if (OUTLINED_FUNCTION_120_4())
    {
LABEL_8:
      OUTLINED_FUNCTION_87_9();
      v10 = OUTLINED_FUNCTION_69_12();
      if (!setd_lookup(v10, v11, 3))
      {
        v12 = OUTLINED_FUNCTION_114_4();
        lpta_rpta_loadp(v12, v13, v14);
        OUTLINED_FUNCTION_155_3();
        if (!mark_s())
        {
          break;
        }
      }

LABEL_10:
      v15 = OUTLINED_FUNCTION_112_4();
      starttest(v15, v16);
      v17 = OUTLINED_FUNCTION_71_12();
      if (lpta_loadp_setscan_l(v17, v18))
      {
        break;
      }

      v19 = OUTLINED_FUNCTION_125_4();
      bspush_ca_scan(v19, v20);
      OUTLINED_FUNCTION_5_36();
      if (!test_string_s())
      {
        OUTLINED_FUNCTION_110_4();
        bspush_ca_scan_boa();
        OUTLINED_FUNCTION_5_36();
        if (test_string_s())
        {
          v21 = v7;
        }

        else
        {
          v21 = 1;
        }

        goto LABEL_17;
      }
    }

    else
    {
      v22 = OUTLINED_FUNCTION_155_3();
      if (!testFldeq(v22, v23, v24, v25))
      {
        v21 = v7;
        if (!advance_tok(v1))
        {
          break;
        }

        goto LABEL_17;
      }
    }

    v21 = v7;
LABEL_17:
    v7 = v21;
LABEL_18:
    v26 = v1[13];
    if (v26)
    {
      v27 = OUTLINED_FUNCTION_92_9(v26);
    }

    else
    {
      v27 = vback(v1, v7);
      v7 = 0;
    }

    switch(v27)
    {
      case 1:
        continue;
      case 3:
        goto LABEL_8;
      case 4:
        goto LABEL_10;
      case 6:
        OUTLINED_FUNCTION_5_36();
        if (test_string_s())
        {
          goto LABEL_18;
        }

        break;
      case 7:
        bspop_boa(v1);
        break;
      default:
        goto LABEL_3;
    }

    break;
  }

LABEL_3:
  vretproc(v1);
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_131_4();
}

uint64_t is_t_pron_s_in_ti(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_140_4();
  OUTLINED_FUNCTION_8_36(v7, v8, v9, v10, v11, v12, v13, v14, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v134, v135, v136, v137);
  OUTLINED_FUNCTION_89_9();
  bzero(v138, v15);
  if (setjmp(v138))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_46_15();
  if (OUTLINED_FUNCTION_137_4(v16, v17, v18, v19, v20))
  {
    goto LABEL_3;
  }

  v23 = OUTLINED_FUNCTION_108_4();
  get_parm(v23, v24, v25, -6);
  v26 = OUTLINED_FUNCTION_67_12();
  get_parm(v26, v27, v28, -6);
  v29 = OUTLINED_FUNCTION_75_12();
  OUTLINED_FUNCTION_129_4(v29, v30);
  v31 = OUTLINED_FUNCTION_77_11();
  push_ptr_init(v31, v32);
  fence_37(a1, 0, &null_str_14);
  v33 = OUTLINED_FUNCTION_82_10();
  fence_37(v33, v34, v35);
  starttest(a1, a4);
  v36 = OUTLINED_FUNCTION_112_4();
  if (!lpta_loadp_setscan_l(v36, v37))
  {
    v64 = OUTLINED_FUNCTION_38_17();
    bspush_ca_scan(v64, v65);
LABEL_21:
    OUTLINED_FUNCTION_96_7();
    v66 = *(a1 + 1648);
    v67 = OUTLINED_FUNCTION_9_35();
    if (!test_ptr(v67))
    {
      goto LABEL_3;
    }

    goto LABEL_22;
  }

  while (2)
  {
    v38 = OUTLINED_FUNCTION_35_17();
    starttest(v38, v39);
    v40 = OUTLINED_FUNCTION_10_35();
    if (!lpta_loadp_setscan_r(v40, v41))
    {
      OUTLINED_FUNCTION_13_34();
      if (!test_string_s())
      {
        v62 = OUTLINED_FUNCTION_51_14();
        bspush_ca_scan(v62, v63);
        OUTLINED_FUNCTION_13_34();
        if (!test_string_s())
        {
LABEL_18:
          if (!OUTLINED_FUNCTION_4_37())
          {
            goto LABEL_3;
          }
        }

        goto LABEL_22;
      }
    }

LABEL_7:
    v42 = OUTLINED_FUNCTION_50_15();
    starttest(v42, v43);
    v44 = OUTLINED_FUNCTION_10_35();
    if (!lpta_loadp_setscan_r(v44, v45))
    {
      v58 = OUTLINED_FUNCTION_32_20();
      bspush_ca_scan(v58, v59);
      OUTLINED_FUNCTION_5_36();
      if (!test_string_s())
      {
        v60 = OUTLINED_FUNCTION_39_16();
        bspush_ca_scan(v60, v61);
        goto LABEL_41;
      }

      goto LABEL_22;
    }

LABEL_8:
    v46 = OUTLINED_FUNCTION_47_15();
    starttest(v46, v47);
    v48 = OUTLINED_FUNCTION_10_35();
    if (!lpta_loadp_setscan_r(v48, v49))
    {
LABEL_28:
      OUTLINED_FUNCTION_81_11(15, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132);
      OUTLINED_FUNCTION_82_10();
      if (!test_string_s())
      {
        *(a1 + 136) = a4;
        v70 = *(a1 + 1664);
        v71 = OUTLINED_FUNCTION_9_35();
        if (!test_ptr(v71))
        {
          v72 = OUTLINED_FUNCTION_16_33();
          if (!lpta_loadp_setscan_l(v72, v73) && !advance_tok(a1) && !advance_tok(a1))
          {
            OUTLINED_FUNCTION_5_36();
            if (!test_string_s())
            {
              v74 = OUTLINED_FUNCTION_70_12();
              bspush_ca_scan(v74, v75);
              OUTLINED_FUNCTION_5_36();
LABEL_37:
              if (!test_string_s())
              {
LABEL_38:
                if (!advance_tok(a1))
                {
                  goto LABEL_3;
                }
              }
            }
          }
        }
      }

      goto LABEL_22;
    }

LABEL_9:
    v50 = OUTLINED_FUNCTION_60_13();
    starttest(v50, v51);
    v52 = OUTLINED_FUNCTION_33_20();
    if (lpta_loadp_setscan_l(v52, v53))
    {
LABEL_45:
      v80 = OUTLINED_FUNCTION_99_7();
      lpta_rpta_loadp(v80, v81, v82);
      v83 = OUTLINED_FUNCTION_69_12();
      setd_lookup(v83, v84, 48);
      goto LABEL_3;
    }

LABEL_10:
    OUTLINED_FUNCTION_81_11(19, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132);
    OUTLINED_FUNCTION_5_36();
    if (test_string_s() || (v54 = OUTLINED_FUNCTION_16_33(), lpta_loadp_setscan_r(v54, v55)) || advance_tok(a1) || advance_tok(a1))
    {
LABEL_22:
      v68 = *(a1 + 104);
      if (v68)
      {
        v69 = OUTLINED_FUNCTION_92_9(v68);
      }

      else
      {
        v69 = OUTLINED_FUNCTION_136_4();
      }

      LOBYTE(a4) = 0;
      switch(v69)
      {
        case 1:
          continue;
        case 2:
          OUTLINED_FUNCTION_13_34();
          if (!test_string_s())
          {
            goto LABEL_21;
          }

          goto LABEL_22;
        case 3:
          goto LABEL_21;
        case 5:
          goto LABEL_7;
        case 6:
          goto LABEL_18;
        case 7:
          goto LABEL_8;
        case 8:
          v76 = OUTLINED_FUNCTION_59_13();
          bspush_ca_scan(v76, v77);
          goto LABEL_42;
        case 9:
          v78 = OUTLINED_FUNCTION_42_15();
          bspush_ca_scan(v78, v79);
          goto LABEL_41;
        case 11:
        case 13:
LABEL_42:
          OUTLINED_FUNCTION_13_34();
          goto LABEL_43;
        case 14:
          goto LABEL_9;
        case 15:
          goto LABEL_28;
        case 16:
          OUTLINED_FUNCTION_13_34();
          goto LABEL_37;
        case 17:
          goto LABEL_38;
        case 18:
          goto LABEL_45;
        case 19:
          goto LABEL_10;
        case 20:
          goto LABEL_41;
        default:
          goto LABEL_3;
      }
    }

    break;
  }

  v56 = OUTLINED_FUNCTION_70_12();
  bspush_ca_scan(v56, v57);
LABEL_41:
  OUTLINED_FUNCTION_5_36();
LABEL_43:
  if (test_string_s())
  {
    goto LABEL_22;
  }

LABEL_3:
  vretproc(a1);
  v21 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_135_4();
}

void is_nasal_vow()
{
  OUTLINED_FUNCTION_132_4();
  OUTLINED_FUNCTION_148_4();
  v91 = *MEMORY[0x277D85DE8];
  v85 = 0;
  v86 = 0;
  OUTLINED_FUNCTION_159_3();
  OUTLINED_FUNCTION_84_10(v2, v3, v4, v5, v6, v7, v8, v9, v57, v58[0], v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81[0], v81[1]);
  OUTLINED_FUNCTION_89_9();
  bzero(v90, v10);
  if (setjmp(v90))
  {
    goto LABEL_4;
  }

  if (ventproc(v0, v58, v89, v88, v87, v90))
  {
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_41_15();
  push_ptr_init(v0, v84);
  push_ptr_init(v0, v82);
  v11 = OUTLINED_FUNCTION_117_4();
  push_ptr_init(v11, v12);
  fence_37(v0, 0, &null_str_14);
  v13 = OUTLINED_FUNCTION_56_13();
  fence_37(v13, v14, v15);
  OUTLINED_FUNCTION_143_4();
  v16 = OUTLINED_FUNCTION_74_12();
  if (lpta_loadp_setscan_r(v16, v17))
  {
LABEL_4:
    vretproc(v0);
  }

  else
  {
    v19 = OUTLINED_FUNCTION_38_17();
    bspush_ca_scan(v19, v20);
    OUTLINED_FUNCTION_5_36();
    v21 = 0;
    v22 = 0;
    if (!test_string_s())
    {
LABEL_7:
      OUTLINED_FUNCTION_109_4();
      savescptr(v0, v23, v84);
      v24 = v21;
LABEL_8:
      v22 = v24;
      savescptr(v0, 4, v82);
      OUTLINED_FUNCTION_35_17();
      bspush_ca_scan_boa();
      v25 = OUTLINED_FUNCTION_51_14();
      bspush_ca_scan(v25, v26);
      v27 = OUTLINED_FUNCTION_69_12();
      if (!testFldeq(v27, v28, 4, 1) && !advance_tok(v0))
      {
LABEL_10:
        v22 = 1;
      }
    }

    v29 = v22;
    while (2)
    {
      v30 = v0[13];
      if (v30)
      {
        v31 = OUTLINED_FUNCTION_92_9(v30);
        v21 = v32;
      }

      else
      {
        v31 = vback(v0, v29);
        v21 = 0;
      }

      v24 = v21;
      switch(v31)
      {
        case 2:
          OUTLINED_FUNCTION_5_36();
          v33 = test_string_s();
          v24 = v21;
          v29 = v21;
          if (!v33)
          {
            goto LABEL_8;
          }

          continue;
        case 3:
          goto LABEL_7;
        case 4:
          goto LABEL_8;
        case 5:
          bspop_boa(v0);
          v38 = OUTLINED_FUNCTION_80_11();
          starttest(v38, v39);
          if (lpta_loadp_setscan_l(v0, v82))
          {
            goto LABEL_22;
          }

          goto LABEL_27;
        case 6:
          v53 = OUTLINED_FUNCTION_112_4();
          bspush_ca_scan(v53, v54);
          OUTLINED_FUNCTION_5_36();
          goto LABEL_33;
        case 7:
          goto LABEL_10;
        case 8:
          v36 = OUTLINED_FUNCTION_74_12();
          bspush_ca_scan(v36, v37);
          OUTLINED_FUNCTION_5_36();
          goto LABEL_33;
        case 9:
          OUTLINED_FUNCTION_5_36();
LABEL_33:
          v55 = test_string_s();
          v29 = v21;
          if (!v55)
          {
            goto LABEL_10;
          }

          continue;
        case 10:
LABEL_22:
          OUTLINED_FUNCTION_87_9();
          v40 = OUTLINED_FUNCTION_69_12();
          if (setd_lookup(v40, v41, 11))
          {
            goto LABEL_23;
          }

          goto LABEL_4;
        case 11:
LABEL_27:
          v48 = OUTLINED_FUNCTION_93_9();
          savescptr(v48, v49, v81);
          OUTLINED_FUNCTION_5_36();
          v50 = test_string_s();
          v29 = v21;
          if (!v50)
          {
            v51 = lpta_loadp_setscan_r(v0, v81);
            v29 = v21;
            if (!v51)
            {
              OUTLINED_FUNCTION_5_36();
              v52 = test_string_s();
              v29 = v21;
              if (!v52)
              {
                goto LABEL_4;
              }
            }
          }

          continue;
        case 12:
        case 13:
LABEL_23:
          v42 = OUTLINED_FUNCTION_95_8();
          starttest(v42, v43);
          v44 = OUTLINED_FUNCTION_119_4();
          bspush_ca(v44);
          v45 = OUTLINED_FUNCTION_110_4();
          lpta_loadpn(v45, v46);
          rpta_loadpn(v0, v0 + 442);
          v47 = compare_ptas(v0);
          v29 = v21;
          if (v47)
          {
            continue;
          }

          v35 = testeq(v0);
LABEL_25:
          v29 = v21;
          if (v35)
          {
            continue;
          }

LABEL_35:
          v56 = v83;
          v86 = v83;
LABEL_37:
          *(v1 + 8) = v56;
          vretproc(v0);
          break;
        case 14:
          v56 = v86;
          goto LABEL_37;
        case 15:
          lpta_loadpn(v0, v82);
          OUTLINED_FUNCTION_149_4();
          v34 = compare_ptas(v0);
          v29 = v21;
          if (v34)
          {
            continue;
          }

          v35 = testneq(v0);
          goto LABEL_25;
        case 16:
          goto LABEL_35;
        default:
          goto LABEL_4;
      }

      break;
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_131_4();
}

uint64_t en_rules()
{
  OUTLINED_FUNCTION_124_4();
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_140_4();
  OUTLINED_FUNCTION_8_36(v3, v4, v5, v6, v7, v8, v9, v10, v216, v218, v220, v222, v224, v226, v228, v230, v232, v234, v236, v238, v240, v242, v244, v246, v248, v250, v252, v254, v256, v258, v260, v262, v264, v265, v266, v267, v268);
  OUTLINED_FUNCTION_89_9();
  bzero(v270, v11);
  if (!setjmp(v270))
  {
    OUTLINED_FUNCTION_46_15();
    if (!OUTLINED_FUNCTION_137_4(v12, v13, v14, v15, v16))
    {
      v19 = OUTLINED_FUNCTION_94_8();
      get_parm(v19, v20, v1, -6);
      v21 = OUTLINED_FUNCTION_76_12();
      OUTLINED_FUNCTION_129_4(v21, v22);
      v23 = OUTLINED_FUNCTION_23_26();
      get_parm(v23, v24, v25, -6);
      v26 = OUTLINED_FUNCTION_77_11();
      push_ptr_init(v26, v27);
      v28 = 0;
      v29 = OUTLINED_FUNCTION_98_7();
      v32 = fence_37(v29, v30, v31);
      OUTLINED_FUNCTION_111_4(v32, v33, &unk_28064B83D);
      v34 = OUTLINED_FUNCTION_116_4();
      starttest(v34, v35);
      v36 = OUTLINED_FUNCTION_80_11();
      v38 = 0;
      if (lpta_loadp_setscan_r(v36, v37))
      {
        while (2)
        {
          v39 = OUTLINED_FUNCTION_32_20();
          starttest(v39, v40);
          v41 = OUTLINED_FUNCTION_10_35();
          v43 = v38;
          if (!lpta_loadp_setscan_r(v41, v42))
          {
LABEL_36:
            OUTLINED_FUNCTION_81_11(9, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249, v251, v253, v255, v257, v259, v261, v263);
            if (OUTLINED_FUNCTION_4_37() || (v121 = OUTLINED_FUNCTION_16_33(), lpta_loadp_setscan_l(v121, v122)) || advance_tok(v0) || advance_tok(v0) || (OUTLINED_FUNCTION_5_36(), test_string_s()))
            {
              v38 = v43;
            }

            else
            {
              OUTLINED_FUNCTION_49_15();
              bspush_ca_scan_boa();
              v123 = OUTLINED_FUNCTION_31_21();
              if (testFldeq(v123, v124, v125, 108))
              {
                v38 = v43;
              }

              else
              {
                v38 = 1;
              }
            }

            goto LABEL_97;
          }

LABEL_6:
          v44 = v38;
          OUTLINED_FUNCTION_76_12();
          is_nasal_vow();
          if (!v45)
          {
            v63 = OUTLINED_FUNCTION_66_12();
            starttest(v63, v64);
            v65 = OUTLINED_FUNCTION_33_20();
            if (lpta_loadp_setscan_l(v65, v66))
            {
LABEL_14:
              v67 = OUTLINED_FUNCTION_48_15();
              starttest(v67, v68);
              OUTLINED_FUNCTION_87_9();
              v69 = OUTLINED_FUNCTION_69_12();
              if (!setd_lookup(v69, v70, 24))
              {
                v71 = OUTLINED_FUNCTION_20_28();
                lpta_rpta_loadp(v71, v72, v73);
                v74 = OUTLINED_FUNCTION_0_40();
                if (!insert_2pt_s(v74, v75, v76, v77, v78))
                {
                  goto LABEL_68;
                }
              }

LABEL_96:
              v193 = OUTLINED_FUNCTION_20_28();
              lpta_rpta_loadp(v193, v194, v195);
              v196 = OUTLINED_FUNCTION_0_40();
              v38 = v44;
              if (!insert_2pt_s(v196, v197, v198, v199, v200))
              {
LABEL_68:
                OUTLINED_FUNCTION_100_6(v269);
                goto LABEL_3;
              }

LABEL_97:
              v135 = v38;
LABEL_45:
              v126 = *(v0 + 104);
              if (v126)
              {
                v127 = OUTLINED_FUNCTION_92_9(v126);
                v38 = v128;
              }

              else
              {
                v127 = vback(v0, v135);
                v38 = 0;
              }

              v129 = v38;
              v97 = v38;
              v50 = v38;
              switch(v127)
              {
                case 1:
                  continue;
                case 2:
                  v28 = v38;
                  goto LABEL_25;
                case 3:
                case 24:
                  goto LABEL_75;
                case 4:
                  bspop_boa(v0);
                  OUTLINED_FUNCTION_35_17();
                  bspush_ca_boa();
                  v130 = OUTLINED_FUNCTION_99_7();
                  lpta_rpta_loadp(v130, v131, v132);
                  v133 = OUTLINED_FUNCTION_69_12();
                  if (setd_lookup(v133, v134, 25))
                  {
                    v135 = v38;
                  }

                  else
                  {
                    v135 = 1;
                  }

                  goto LABEL_45;
                case 5:
                  bspop_boa(v0);
                  v136 = OUTLINED_FUNCTION_20_28();
                  lpta_rpta_loadp(v136, v137, v138);
                  goto LABEL_67;
                case 6:
                case 7:
                case 16:
                case 23:
                case 33:
                  goto LABEL_68;
                case 8:
                  goto LABEL_6;
                case 9:
                  v43 = v38;
                  goto LABEL_36;
                case 10:
                  bspop_boa(v0);
                  v143 = advance_tok(v0);
                  v135 = v38;
                  if (v143)
                  {
                    goto LABEL_45;
                  }

                  v144 = OUTLINED_FUNCTION_20_28();
                  lpta_rpta_loadp(v144, v145, v146);
                  goto LABEL_67;
                case 11:
                  goto LABEL_7;
                case 12:
                  v44 = v38;
                  goto LABEL_14;
                case 13:
                  break;
                case 14:
                  OUTLINED_FUNCTION_5_36();
                  test_string_s();
                  OUTLINED_FUNCTION_144_4();
                  if (!v148)
                  {
                    goto LABEL_71;
                  }

                  goto LABEL_45;
                case 15:
                  goto LABEL_71;
                case 17:
                  v44 = v38;
                  goto LABEL_96;
                case 18:
                  goto LABEL_9;
                case 19:
                  goto LABEL_18;
                case 20:
                  OUTLINED_FUNCTION_5_36();
                  v139 = test_string_s();
                  v135 = v38;
                  if (v139)
                  {
                    goto LABEL_45;
                  }

                  v140 = OUTLINED_FUNCTION_58_13();
                  bspush_ca_scan(v140, v141);
                  goto LABEL_55;
                case 21:
                  goto LABEL_23;
                case 22:
LABEL_55:
                  OUTLINED_FUNCTION_29_23();
                  test_string_s();
                  OUTLINED_FUNCTION_145_4();
                  if (!v142)
                  {
                    goto LABEL_23;
                  }

                  goto LABEL_45;
                case 25:
                  OUTLINED_FUNCTION_5_36();
                  v147 = test_string_s();
                  v135 = v38;
                  if (v147)
                  {
                    goto LABEL_45;
                  }

                  goto LABEL_66;
                case 26:
                  bspop_boa(v0);
                  goto LABEL_66;
                case 27:
LABEL_66:
                  v150 = OUTLINED_FUNCTION_74_12();
                  copyvar(v150, v151, v152);
                  v153 = OUTLINED_FUNCTION_78_11();
                  lpta_rpta_loadp(v153, v154, v155);
LABEL_67:
                  v156 = OUTLINED_FUNCTION_0_40();
                  inserted = insert_2pt_s(v156, v157, v158, v159, v160);
                  v135 = v38;
                  if (!inserted)
                  {
                    goto LABEL_68;
                  }

                  goto LABEL_45;
                case 28:
                  v50 = v38;
                  goto LABEL_78;
                case 29:
                  goto LABEL_80;
                case 30:
                  v50 = v38;
                  goto LABEL_99;
                case 31:
                  OUTLINED_FUNCTION_13_34();
                  test_string_s();
                  OUTLINED_FUNCTION_133_4();
                  if (!v149)
                  {
                    goto LABEL_91;
                  }

                  goto LABEL_45;
                case 32:
                  goto LABEL_91;
                case 34:
                  v50 = v38;
                  goto LABEL_102;
                case 35:
                  v180 = v38;
                  goto LABEL_81;
                case 36:
                  goto LABEL_82;
                default:
                  goto LABEL_3;
              }
            }

            OUTLINED_FUNCTION_81_11(13, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249, v251, v253, v255, v257, v259, v261, v263);
            v162 = OUTLINED_FUNCTION_47_15();
            bspush_ca_scan(v162, v163);
            v164 = OUTLINED_FUNCTION_3_38();
            if (testFldeq(v164, v165, v166, v167))
            {
              goto LABEL_97;
            }

            v168 = advance_tok(v0);
            v129 = v38;
            if (v168)
            {
              goto LABEL_97;
            }

LABEL_71:
            v38 = v129;
            v169 = OUTLINED_FUNCTION_16_33();
            if (lpta_loadp_setscan_r(v169, v170) || advance_tok(v0) || advance_tok(v0) || OUTLINED_FUNCTION_4_37())
            {
              goto LABEL_97;
            }

            goto LABEL_75;
          }

          break;
        }

LABEL_7:
        v46 = OUTLINED_FUNCTION_94_8();
        lpta_loadpn(v46, v47);
        v48 = OUTLINED_FUNCTION_99_7();
        rpta_loadpn(v48, v49);
        if (compare_ptas(v0) || testeq(v0))
        {
LABEL_9:
          v50 = v38;
          v51 = OUTLINED_FUNCTION_75_12();
          lpta_loadpn(v51, v52);
          v53 = OUTLINED_FUNCTION_105_5();
          rpta_loadpn(v53, v54);
          if (!compare_ptas(v0) && !testeq(v0))
          {
            v55 = OUTLINED_FUNCTION_20_28();
            lpta_rpta_loadp(v55, v56, v57);
            v58 = OUTLINED_FUNCTION_0_40();
            if (!insert_2pt_s(v58, v59, v60, v61, v62))
            {
              goto LABEL_68;
            }
          }

LABEL_78:
          v174 = OUTLINED_FUNCTION_10_35();
          if (lpta_loadp_setscan_r(v174, v175) || (OUTLINED_FUNCTION_5_36(), test_string_s()))
          {
LABEL_80:
            v176 = OUTLINED_FUNCTION_70_12();
            starttest(v176, v177);
            v178 = OUTLINED_FUNCTION_11_35();
            lpta_loadp_setscan_l(v178, v179);
            OUTLINED_FUNCTION_138_4();
            if (v181)
            {
LABEL_81:
              v38 = v180;
              v182 = OUTLINED_FUNCTION_20_28();
              lpta_rpta_loadp(v182, v183, v184);
              goto LABEL_33;
            }

LABEL_82:
            OUTLINED_FUNCTION_81_11(36, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249, v251, v253, v255, v257, v259, v261, v263);
            if (advance_tok(v0))
            {
              goto LABEL_97;
            }

            OUTLINED_FUNCTION_13_34();
            if (test_string_s())
            {
              goto LABEL_97;
            }

            v185 = OUTLINED_FUNCTION_16_33();
            if (lpta_loadp_setscan_r(v185, v186))
            {
              goto LABEL_97;
            }

            OUTLINED_FUNCTION_5_36();
            if (test_string_s())
            {
              goto LABEL_97;
            }
          }

          else
          {
            v187 = OUTLINED_FUNCTION_70_12();
            starttest(v187, v188);
            v189 = OUTLINED_FUNCTION_10_35();
            if (lpta_loadp_setscan_r(v189, v190) || advance_tok(v0) || (OUTLINED_FUNCTION_5_36(), test_string_s()))
            {
LABEL_99:
              v201 = OUTLINED_FUNCTION_70_12();
              starttest(v201, v202);
              v203 = OUTLINED_FUNCTION_33_20();
              if (!lpta_loadp_setscan_l(v203, v204))
              {
                OUTLINED_FUNCTION_29_23();
                if (!test_string_s())
                {
                  v205 = OUTLINED_FUNCTION_20_28();
                  lpta_rpta_loadp(v205, v206, v207);
                  v208 = OUTLINED_FUNCTION_0_40();
                  if (!insert_2pt_s(v208, v209, v210, v211, v212))
                  {
                    goto LABEL_68;
                  }
                }
              }

LABEL_102:
              v38 = v50;
              v213 = OUTLINED_FUNCTION_20_28();
              lpta_rpta_loadp(v213, v214, v215);
LABEL_33:
              v116 = OUTLINED_FUNCTION_0_40();
              if (!insert_2pt_s(v116, v117, v118, v119, v120))
              {
                goto LABEL_68;
              }

              goto LABEL_97;
            }

            v191 = OUTLINED_FUNCTION_43_15();
            bspush_ca_scan(v191, v192);
            OUTLINED_FUNCTION_5_36();
            v38 = v50;
            if (test_string_s())
            {
              goto LABEL_97;
            }

LABEL_91:
            v38 = v50;
          }

          goto LABEL_75;
        }

        v79 = OUTLINED_FUNCTION_44_15();
        starttest(v79, v80);
        v81 = OUTLINED_FUNCTION_10_35();
        if (!lpta_loadp_setscan_r(v81, v82))
        {
          v90 = OUTLINED_FUNCTION_70_12();
          bspush_ca_scan(v90, v91);
          v92 = OUTLINED_FUNCTION_3_38();
          if (testFldeq(v92, v93, v94, v95))
          {
            goto LABEL_97;
          }

          v96 = advance_tok(v0);
          v97 = v38;
          if (v96)
          {
            goto LABEL_97;
          }

LABEL_23:
          v38 = v97;
          goto LABEL_75;
        }

LABEL_18:
        v83 = OUTLINED_FUNCTION_70_12();
        starttest(v83, v84);
        v85 = OUTLINED_FUNCTION_10_35();
        if (lpta_loadp_setscan_r(v85, v86))
        {
LABEL_75:
          v171 = OUTLINED_FUNCTION_20_28();
          lpta_rpta_loadp(v171, v172, v173);
          goto LABEL_33;
        }

        v87 = OUTLINED_FUNCTION_70_12();
        bspush_ca_scan(v87, v88);
        OUTLINED_FUNCTION_5_36();
        if (test_string_s())
        {
          goto LABEL_97;
        }

        OUTLINED_FUNCTION_57_13();
        bspush_ca_scan_boa();
        OUTLINED_FUNCTION_13_34();
        root_vow = test_string_s();
      }

      else
      {
LABEL_25:
        v38 = v28;
        OUTLINED_FUNCTION_104_6();
        v98 = OUTLINED_FUNCTION_91_9();
        savescptr(v98, v99, v100);
        OUTLINED_FUNCTION_17_33();
        if (test_string_s())
        {
          goto LABEL_97;
        }

        *(v0 + 136) = 1;
        v101 = *(v0 + 1664);
        v102 = OUTLINED_FUNCTION_9_35();
        if (test_ptr(v102))
        {
          goto LABEL_97;
        }

        v103 = OUTLINED_FUNCTION_61_13();
        starttest(v103, v104);
        if (OUTLINED_FUNCTION_120_4())
        {
          goto LABEL_75;
        }

        v105 = OUTLINED_FUNCTION_101_6();
        if (testFldeq(v105, v106, v107, 1) || advance_tok(v0))
        {
          goto LABEL_97;
        }

        OUTLINED_FUNCTION_52_14();
        bspush_ca_boa();
        v108 = OUTLINED_FUNCTION_94_8();
        root_vow = first_root_vow(v108, v109, v110, v111, v112, v113, v114, v115);
      }

      if (!root_vow)
      {
        v38 = 1;
      }

      goto LABEL_97;
    }
  }

LABEL_3:
  vretproc(v0);
  v17 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_135_4();
}

void er_rules()
{
  OUTLINED_FUNCTION_160_3();
  OUTLINED_FUNCTION_124_4();
  v199 = *MEMORY[0x277D85DE8];
  v186 = 0;
  v187 = 0;
  v184 = 0;
  v185 = 0;
  *&v2 = OUTLINED_FUNCTION_122_4();
  v178 = v2;
  v179 = v2;
  OUTLINED_FUNCTION_84_10(v3, v4, v5, v6, v7, v8, v9, v10, v126, v128, v130, v132, v134, v136, v138, v140, v142, v144, v146, v148, v150, v152, v154, v156, v158, v160, v162, v164, v166, v168, v170, v172, v174, v176);
  OUTLINED_FUNCTION_89_9();
  bzero(v198, v11);
  v12 = setjmp(v198);
  if (v12 || OUTLINED_FUNCTION_142_4(v12, v13, v14, v15, v16, v17, v18, v19, v127, v129, v131, v133, v135, v137, v139, v141, v143, v145, v147, v149, v151, v153, v155, v157, v159, v161, v163, v165, v167, v169, v171, v173, v175, v177, v178, *(&v178 + 1), v179, *(&v179 + 1), v180, v181, v182, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198[0]))
  {
    goto LABEL_3;
  }

  get_parm(v0, &v186, v1, -6);
  OUTLINED_FUNCTION_103_6(v21, &v184);
  v22 = OUTLINED_FUNCTION_23_26();
  get_parm(v22, v23, v24, -6);
  v25 = OUTLINED_FUNCTION_117_4();
  push_ptr_init(v25, v26);
  fence_37(v0, 0, &null_str_14);
  v27 = OUTLINED_FUNCTION_69_12();
  fence_37(v27, v28, v29);
  v30 = OUTLINED_FUNCTION_80_11();
  lpta_loadpn(v30, v31);
  v32 = OUTLINED_FUNCTION_105_5();
  rpta_loadpn(v32, v33);
  if (!compare_ptas(v0) && !testeq(v0))
  {
    lpta_loadpn(v0, &v186);
    v34 = OUTLINED_FUNCTION_99_7();
    rpta_loadpn(v34, v35);
    if (!compare_ptas(v0) && !testneq(v0))
    {
      OUTLINED_FUNCTION_34_18();
      if (!final_er_pronounced_Er())
      {
        v36 = OUTLINED_FUNCTION_115_4();
        lpta_rpta_loadp(v36, v37, v38);
        v39 = OUTLINED_FUNCTION_1_39();
        if (!insert_2pt_s(v39, v40, v41, v42, v43))
        {
          goto LABEL_15;
        }
      }

LABEL_10:
      v44 = OUTLINED_FUNCTION_52_14();
      starttest(v44, v45);
      OUTLINED_FUNCTION_34_18();
      if (!final_er_pronounced_oer())
      {
        v46 = OUTLINED_FUNCTION_115_4();
        lpta_rpta_loadp(v46, v47, v48);
        v49 = OUTLINED_FUNCTION_1_39();
        if (!insert_2pt_s(v49, v50, v51, v52, v53))
        {
LABEL_15:
          v185 = v183;
LABEL_43:
          OUTLINED_FUNCTION_100_6(v185);
          goto LABEL_3;
        }
      }

LABEL_12:
      v54 = OUTLINED_FUNCTION_34_18();
      lpta_rpta_loadp(v54, v55, v56);
      v57 = OUTLINED_FUNCTION_0_40();
      if (!insert_2pt_s(v57, v58, v59, v60, v61))
      {
        v62 = OUTLINED_FUNCTION_61_13();
        starttest_l(v62, v63);
        is_liaison_con();
        if (v64)
        {
          goto LABEL_15;
        }

        v65 = OUTLINED_FUNCTION_115_4();
        lpta_rpta_loadp(v65, v66, v67);
        OUTLINED_FUNCTION_74_12();
        settvar_s();
        v68 = OUTLINED_FUNCTION_69_12();
        npush_s(v68);
        v69 = OUTLINED_FUNCTION_74_12();
        npop(v69, v70);
        OUTLINED_FUNCTION_37_17();
        insert_2ptv();
        if (!v71)
        {
          goto LABEL_15;
        }
      }

      goto LABEL_39;
    }
  }

  while (2)
  {
    v72 = OUTLINED_FUNCTION_51_14();
    starttest(v72, v73);
    OUTLINED_FUNCTION_22_26();
    if (v74)
    {
      v75 = OUTLINED_FUNCTION_53_14();
      if (!lpta_loadp_setscan_r(v75, v76))
      {
        OUTLINED_FUNCTION_13_34();
        if (!test_string_s())
        {
LABEL_35:
          v109 = OUTLINED_FUNCTION_86_9();
          savescptr(v109, v110, v111);
          v112 = OUTLINED_FUNCTION_86_9();
          lpta_rpta_loadp(v112, v113, v114);
          v115 = OUTLINED_FUNCTION_69_12();
          if (setd_lookup(v115, v116, 188))
          {
            goto LABEL_39;
          }

          v117 = OUTLINED_FUNCTION_114_4();
          lpta_rpta_loadp(v117, v118, v119);
          v120 = OUTLINED_FUNCTION_69_12();
          if (setd_lookup(v120, v121, 180))
          {
            goto LABEL_39;
          }

          goto LABEL_27;
        }
      }
    }

LABEL_20:
    v77 = OUTLINED_FUNCTION_32_20();
    starttest(v77, v78);
    OUTLINED_FUNCTION_22_26();
    if (v74)
    {
      v79 = OUTLINED_FUNCTION_71_12();
      if (!lpta_loadp_setscan_r(v79, v80))
      {
        OUTLINED_FUNCTION_5_36();
        if (!test_string_s())
        {
          v102 = OUTLINED_FUNCTION_34_18();
          lpta_rpta_loadp(v102, v103, v104);
          OUTLINED_FUNCTION_74_12();
          settvar_s();
          v105 = OUTLINED_FUNCTION_98_7();
          npush_s(v105);
          v106 = OUTLINED_FUNCTION_74_12();
          npop(v106, v107);
          OUTLINED_FUNCTION_72_12();
          insert_2ptv();
          if (!v108)
          {
            goto LABEL_43;
          }

          goto LABEL_39;
        }
      }
    }

LABEL_24:
    v81 = OUTLINED_FUNCTION_39_16();
    starttest(v81, v82);
    v83 = OUTLINED_FUNCTION_53_14();
    if (!lpta_loadp_setscan_r(v83, v84) && !advance_tok(v0))
    {
      v99 = OUTLINED_FUNCTION_12_35();
      if (testFldeq(v99, v100, v101, 2) || advance_tok(v0))
      {
        goto LABEL_39;
      }

      goto LABEL_27;
    }

LABEL_26:
    v85 = OUTLINED_FUNCTION_49_15();
    starttest(v85, v86);
    v87 = OUTLINED_FUNCTION_65_12();
    if (lpta_loadp_setscan_l(v87, v88))
    {
      goto LABEL_27;
    }

    v97 = OUTLINED_FUNCTION_42_15();
    bspush_ca_scan(v97, v98);
LABEL_38:
    OUTLINED_FUNCTION_29_23();
    if (test_string_s())
    {
      goto LABEL_39;
    }

LABEL_44:
    OUTLINED_FUNCTION_96_7();
    v124 = *(v0 + 1648);
    v125 = OUTLINED_FUNCTION_9_35();
    if (!test_ptr(v125))
    {
LABEL_27:
      v89 = OUTLINED_FUNCTION_34_18();
      lpta_rpta_loadp(v89, v90, v91);
      v92 = OUTLINED_FUNCTION_0_40();
      if (!insert_2pt_s(v92, v93, v94, v95, v96))
      {
        goto LABEL_43;
      }
    }

LABEL_39:
    v122 = *(v0 + 104);
    if (v122)
    {
      v123 = OUTLINED_FUNCTION_92_9(v122);
    }

    else
    {
      v123 = OUTLINED_FUNCTION_136_4();
    }

    switch(v123)
    {
      case 1:
        continue;
      case 2:
        goto LABEL_10;
      case 3:
        goto LABEL_15;
      case 4:
        goto LABEL_12;
      case 5:
        goto LABEL_43;
      case 6:
        goto LABEL_20;
      case 7:
        goto LABEL_35;
      case 8:
        goto LABEL_24;
      case 9:
        goto LABEL_26;
      case 10:
        goto LABEL_27;
      case 11:
        goto LABEL_38;
      case 12:
        goto LABEL_44;
      default:
        goto LABEL_3;
    }
  }

LABEL_3:
  vretproc(v0);
  v20 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_161_3();
}

uint64_t em_rules()
{
  OUTLINED_FUNCTION_124_4();
  v185 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8_36(v2, v3, v4, v5, v6, v7, v8, v9, v127, v129, v131, v133, v135, v137, v139, v141, v143, v145, v147, v149, v151, v153, v155, v157, v159, v161, v163, v165, v167, v169, v171, v173, v175, v177, v179, v181, v183);
  OUTLINED_FUNCTION_89_9();
  bzero(v184, v10);
  if (setjmp(v184))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_19_28();
  if (OUTLINED_FUNCTION_137_4(v11, v12, v13, v14, v15))
  {
    goto LABEL_3;
  }

  v18 = OUTLINED_FUNCTION_76_12();
  get_parm(v18, v19, v1, -6);
  v20 = OUTLINED_FUNCTION_75_12();
  OUTLINED_FUNCTION_129_4(v20, v21);
  v22 = OUTLINED_FUNCTION_23_26();
  get_parm(v22, v23, v24, -6);
  fence_37(v0, 0, &null_str_14);
  v25 = OUTLINED_FUNCTION_21_27();
  fence_37(v25, v26, v27);
  v28 = OUTLINED_FUNCTION_128_4();
  starttest(v28, v29);
  v30 = OUTLINED_FUNCTION_63_12();
  if (!lpta_loadp_setscan_r(v30, v31))
  {
    v32 = OUTLINED_FUNCTION_38_17();
    bspush_ca_scan(v32, v33);
    OUTLINED_FUNCTION_5_36();
    if (test_string_s())
    {
      goto LABEL_23;
    }

LABEL_6:
    OUTLINED_FUNCTION_96_7();
    v34 = v0[168];
    goto LABEL_7;
  }

  while (2)
  {
    OUTLINED_FUNCTION_75_12();
    is_nasal_vow();
    if (!v44)
    {
      OUTLINED_FUNCTION_83_10(v44, v45, v46, v47, v48, v49, v50, v51, v128, v130, v132, v134, v136, v138, v140, v142, v144, v146, v148, v150, v152, v154, v156, v158, v160, v162, v164, v166, v168, v170, v172, v174, v176, v178, v180, v182);
      v52 = OUTLINED_FUNCTION_0_40();
      if (!insert_2pt_s(v52, v53, v54, v55, v56))
      {
        goto LABEL_35;
      }
    }

LABEL_11:
    v57 = OUTLINED_FUNCTION_16_33();
    if (lpta_loadp_setscan_r(v57, v58) || (OUTLINED_FUNCTION_5_36(), test_string_s()))
    {
LABEL_27:
      v96 = OUTLINED_FUNCTION_10_35();
      if (!lpta_loadp_setscan_r(v96, v97))
      {
        OUTLINED_FUNCTION_13_34();
        v98 = test_string_s();
        if (!v98)
        {
          OUTLINED_FUNCTION_83_10(v98, v99, v100, v101, v102, v103, v104, v105, v128, v130, v132, v134, v136, v138, v140, v142, v144, v146, v148, v150, v152, v154, v156, v158, v160, v162, v164, v166, v168, v170, v172, v174, v176, v178, v180, v182);
          v106 = OUTLINED_FUNCTION_0_40();
          if (!insert_2pt_s(v106, v107, v108, v109, v110))
          {
            goto LABEL_35;
          }
        }
      }

LABEL_30:
      v111 = OUTLINED_FUNCTION_66_12();
      starttest(v111, v112);
      v113 = OUTLINED_FUNCTION_76_12();
      lpta_loadpn(v113, v114);
      v115 = OUTLINED_FUNCTION_99_7();
      rpta_loadpn(v115, v116);
      inserted = compare_ptas(v0);
      if (!inserted)
      {
        inserted = testeq(v0);
        if (!inserted)
        {
          OUTLINED_FUNCTION_83_10(inserted, v37, v38, v39, v40, v41, v42, v43, v128, v130, v132, v134, v136, v138, v140, v142, v144, v146, v148, v150, v152, v154, v156, v158, v160, v162, v164, v166, v168, v170, v172, v174, v176, v178, v180, v182);
          v117 = OUTLINED_FUNCTION_0_40();
          inserted = insert_2pt_s(v117, v118, v119, v120, v121);
          if (!inserted)
          {
LABEL_35:
            OUTLINED_FUNCTION_100_6(v180);
            break;
          }
        }
      }
    }

    else
    {
      v59 = OUTLINED_FUNCTION_51_14();
      starttest(v59, v60);
      v61 = OUTLINED_FUNCTION_76_12();
      lpta_loadpn(v61, v62);
      v63 = OUTLINED_FUNCTION_99_7();
      rpta_loadpn(v63, v64);
      if (!compare_ptas(v0) && !testeq(v0))
      {
        v65 = OUTLINED_FUNCTION_74_12();
        copyvar(v65, v66, v67);
        v68 = OUTLINED_FUNCTION_67_12();
        lpta_rpta_loadp(v68, v69, v70);
        goto LABEL_34;
      }

LABEL_16:
      v71 = OUTLINED_FUNCTION_77_11();
      lpta_loadpn(v71, v72);
      v73 = OUTLINED_FUNCTION_105_5();
      rpta_loadpn(v73, v74);
      if (!compare_ptas(v0))
      {
        v75 = testeq(v0);
        if (!v75)
        {
          OUTLINED_FUNCTION_83_10(v75, v76, v77, v78, v79, v80, v81, v82, v128, v130, v132, v134, v136, v138, v140, v142, v144, v146, v148, v150, v152, v154, v156, v158, v160, v162, v164, v166, v168, v170, v172, v174, v176, v178, v180, v182);
          v83 = OUTLINED_FUNCTION_0_40();
          if (!insert_2pt_s(v83, v84, v85, v86, v87))
          {
            goto LABEL_35;
          }
        }
      }

LABEL_19:
      v88 = OUTLINED_FUNCTION_39_16();
      starttest(v88, v89);
      v90 = OUTLINED_FUNCTION_16_33();
      inserted = lpta_loadp_setscan_r(v90, v91);
      if (!inserted)
      {
        inserted = advance_tok(v0);
        if (!inserted)
        {
          v92 = OUTLINED_FUNCTION_49_15();
          bspush_ca_scan(v92, v93);
          OUTLINED_FUNCTION_5_36();
          if (test_string_s())
          {
            goto LABEL_23;
          }

LABEL_22:
          OUTLINED_FUNCTION_96_7();
          v94 = v0[208];
LABEL_7:
          v35 = OUTLINED_FUNCTION_9_35();
          inserted = test_ptr(v35);
          if (inserted)
          {
            goto LABEL_23;
          }
        }
      }
    }

LABEL_33:
    OUTLINED_FUNCTION_83_10(inserted, v37, v38, v39, v40, v41, v42, v43, v128, v130, v132, v134, v136, v138, v140, v142, v144, v146, v148, v150, v152, v154, v156, v158, v160, v162, v164, v166, v168, v170, v172, v174, v176, v178, v180, v182);
LABEL_34:
    v122 = OUTLINED_FUNCTION_0_40();
    if (!insert_2pt_s(v122, v123, v124, v125, v126))
    {
      goto LABEL_35;
    }

LABEL_23:
    v95 = v0[13];
    if (v95)
    {
      inserted = OUTLINED_FUNCTION_92_9(v95);
    }

    else
    {
      inserted = OUTLINED_FUNCTION_136_4();
    }

    switch(inserted)
    {
      case 1:
        continue;
      case 2:
        goto LABEL_6;
      case 3:
      case 7:
        goto LABEL_35;
      case 4:
        goto LABEL_11;
      case 5:
        goto LABEL_27;
      case 6:
        goto LABEL_16;
      case 8:
        goto LABEL_19;
      case 9:
      case 12:
        goto LABEL_33;
      case 10:
        goto LABEL_22;
      case 11:
        goto LABEL_30;
      default:
        goto LABEL_3;
    }
  }

LABEL_3:
  vretproc(v0);
  v16 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_126_4();
}

uint64_t eu_rules()
{
  OUTLINED_FUNCTION_18_32();
  v216 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8_36(v2, v3, v4, v5, v6, v7, v8, v9, v159, v161, v163, v165, v167, v169, v171, v173, v175, v177, v179, v181, v183, v185, v187, v189, v191, v193, v195, v197, v199, v201, v203, v205, v207, v209, v211, v213, v215);
  OUTLINED_FUNCTION_55_14();
  if (!setjmp(v1))
  {
    OUTLINED_FUNCTION_19_28();
    if (!OUTLINED_FUNCTION_137_4(v10, v11, v12, v13, v14))
    {
      v17 = OUTLINED_FUNCTION_23_26();
      get_parm(v17, v18, v19, -6);
      v20 = OUTLINED_FUNCTION_75_12();
      OUTLINED_FUNCTION_129_4(v20, v21);
      v22 = OUTLINED_FUNCTION_77_11();
      push_ptr_init(v22, v23);
      v24 = 0;
      v25 = OUTLINED_FUNCTION_98_7();
      fence_37(v25, v26, v27);
      v28 = OUTLINED_FUNCTION_69_12();
      fence_37(v28, v29, v30);
      v31 = OUTLINED_FUNCTION_80_11();
      lpta_loadpn(v31, v32);
      v33 = OUTLINED_FUNCTION_99_7();
      rpta_loadpn(v33, v34);
      if (!compare_ptas(v0))
      {
        if (!testeq(v0))
        {
          v106 = OUTLINED_FUNCTION_38_17();
          starttest_l(v106, v107);
          v108 = OUTLINED_FUNCTION_114_4();
          lpta_rpta_loadp(v108, v109, v110);
          v111 = OUTLINED_FUNCTION_69_12();
          inserted = setd_lookup(v111, v112, 22);
          if (inserted)
          {
            LODWORD(v35) = 0;
          }

          else
          {
            OUTLINED_FUNCTION_83_10(inserted, v41, v42, v43, v44, v45, v46, v47, v160, v162, v164, v166, v168, v170, v172, v174, v176, v178, v180, v182, v184, v186, v188, v190, v192, v194, v196, v198, v200, v202, v204, v206, v208, v210, v212, v214);
            v113 = OUTLINED_FUNCTION_6_36();
            inserted = insert_2pt_s(v113, v114, v115, v116, 0);
            LODWORD(v35) = 0;
            if (!inserted)
            {
              goto LABEL_3;
            }
          }

          goto LABEL_41;
        }

        v24 = 0;
      }

      while (2)
      {
        LODWORD(v35) = v24;
        v36 = OUTLINED_FUNCTION_52_14();
        starttest(v36, v37);
        lpta_rpta_loadp(v0, v0 + 1320, v0 + 1656);
        v38 = OUTLINED_FUNCTION_69_12();
        inserted = setd_lookup(v38, v39, 23);
        if (!inserted)
        {
LABEL_41:
          OUTLINED_FUNCTION_83_10(inserted, v41, v42, v43, v44, v45, v46, v47, v160, v162, v164, v166, v168, v170, v172, v174, v176, v178, v180, v182, v184, v186, v188, v190, v192, v194, v196, v198, v200, v202, v204, v206, v208, v210, v212, v214);
LABEL_42:
          v118 = OUTLINED_FUNCTION_6_36();
          v122 = insert_2pt_s(v118, v119, v120, v121, 0);
          LODWORD(v41) = v35;
          if (!v122)
          {
            goto LABEL_3;
          }

LABEL_52:
          v128 = *(v0 + 104);
          if (v128)
          {
            inserted = OUTLINED_FUNCTION_92_9(v128);
            v24 = v41;
          }

          else
          {
            inserted = vback(v0, v41);
            v24 = 0;
          }

          v42 = v24;
          v43 = v24;
          LODWORD(v35) = v24;
          switch(inserted)
          {
            case 1:
              continue;
            case 2:
            case 3:
            case 7:
            case 15:
              goto LABEL_41;
            case 4:
              goto LABEL_8;
            case 5:
              goto LABEL_10;
            case 6:
            case 32:
              goto LABEL_30;
            case 8:
              goto LABEL_11;
            case 9:
              goto LABEL_39;
            case 10:
              v154 = OUTLINED_FUNCTION_42_15();
              bspush_ca_scan(v154, v155);
              goto LABEL_38;
            case 11:
              goto LABEL_38;
            case 12:
              v35 = v24;
              goto LABEL_14;
            case 13:
              goto LABEL_16;
            case 14:
              v129 = OUTLINED_FUNCTION_70_12();
              bspush_ca_scan(v129, v130);
              goto LABEL_64;
            case 16:
              v133 = OUTLINED_FUNCTION_48_15();
              bspush_ca_scan(v133, v134);
              goto LABEL_64;
            case 17:
              v131 = OUTLINED_FUNCTION_60_13();
              bspush_ca_scan(v131, v132);
              goto LABEL_64;
            case 18:
              v140 = OUTLINED_FUNCTION_44_15();
              bspush_ca_scan(v140, v141);
              goto LABEL_64;
            case 19:
              v142 = OUTLINED_FUNCTION_3_38();
              v146 = testFldeq(v142, v143, v144, v145);
              LODWORD(v41) = v24;
              if (v146)
              {
                goto LABEL_52;
              }

              inserted = advance_tok(v0);
              goto LABEL_65;
            case 20:
              goto LABEL_17;
            case 21:
            case 29:
              goto LABEL_75;
            case 22:
              bspop_boa(v0);
              v135 = OUTLINED_FUNCTION_16_33();
              v137 = lpta_loadp_setscan_r(v135, v136);
              LODWORD(v41) = v24;
              if (v137)
              {
                goto LABEL_52;
              }

              v138 = advance_tok(v0);
              LODWORD(v41) = v24;
              if (v138)
              {
                goto LABEL_52;
              }

              v139 = advance_tok(v0);
              LODWORD(v41) = v24;
              if (v139)
              {
                goto LABEL_52;
              }

              goto LABEL_64;
            case 23:
              v81 = v24;
              goto LABEL_18;
            case 24:
              goto LABEL_45;
            case 25:
              v152 = OUTLINED_FUNCTION_70_12();
              bspush_ca_scan(v152, v153);
              goto LABEL_46;
            case 26:
              goto LABEL_47;
            case 27:
              goto LABEL_46;
            case 28:
              goto LABEL_19;
            case 30:
              bspop_boa(v0);
              v147 = OUTLINED_FUNCTION_16_33();
              v149 = lpta_loadp_setscan_r(v147, v148);
              LODWORD(v41) = v24;
              if (v149)
              {
                goto LABEL_52;
              }

              v150 = advance_tok(v0);
              LODWORD(v41) = v24;
              if (v150)
              {
                goto LABEL_52;
              }

              v151 = advance_tok(v0);
              LODWORD(v41) = v24;
              if (v151)
              {
                goto LABEL_52;
              }

LABEL_64:
              OUTLINED_FUNCTION_5_36();
              inserted = test_string_s();
LABEL_65:
              LODWORD(v35) = v24;
              v41 = v24;
              if (!inserted)
              {
                goto LABEL_41;
              }

              goto LABEL_52;
            case 31:
              goto LABEL_28;
            default:
              goto LABEL_3;
          }
        }

        break;
      }

LABEL_8:
      LODWORD(v35) = v24;
      v48 = OUTLINED_FUNCTION_10_35();
      if (!lpta_loadp_setscan_r(v48, v49))
      {
        OUTLINED_FUNCTION_5_36();
        if (!test_string_s())
        {
          v96 = OUTLINED_FUNCTION_51_14();
          starttest(v96, v97);
          v98 = OUTLINED_FUNCTION_11_35();
          inserted = lpta_loadp_setscan_l(v98, v99);
          if (inserted)
          {
            goto LABEL_29;
          }

          OUTLINED_FUNCTION_82_10();
          inserted = test_string_s();
          if (inserted)
          {
            goto LABEL_29;
          }

          *(v0 + 136) = v24;
          v100 = *(v0 + 1648);
          v101 = OUTLINED_FUNCTION_9_35();
          inserted = test_ptr(v101);
LABEL_32:
          LODWORD(v24) = v35;
          if (inserted)
          {
            goto LABEL_30;
          }

          goto LABEL_41;
        }
      }

LABEL_10:
      v50 = OUTLINED_FUNCTION_32_20();
      starttest(v50, v51);
      v52 = OUTLINED_FUNCTION_10_35();
      if (lpta_loadp_setscan_r(v52, v53))
      {
LABEL_11:
        v35 = v24;
        v54 = OUTLINED_FUNCTION_10_35();
        if (!lpta_loadp_setscan_r(v54, v55))
        {
          OUTLINED_FUNCTION_13_34();
          v56 = test_string_s();
          if (!v56)
          {
            OUTLINED_FUNCTION_83_10(v56, v57, v58, v59, v60, v61, v62, v63, v160, v162, v164, v166, v168, v170, v172, v174, v176, v178, v180, v182, v184, v186, v188, v190, v192, v194, v196, v198, v200, v202, v204, v206, v208, v210, v212, v214);
            v64 = OUTLINED_FUNCTION_6_36();
            if (!insert_2pt_s(v64, v65, v66, v67, 0))
            {
              goto LABEL_3;
            }
          }
        }

LABEL_14:
        v68 = OUTLINED_FUNCTION_59_13();
        starttest(v68, v69);
        v70 = OUTLINED_FUNCTION_10_35();
        if (lpta_loadp_setscan_r(v70, v71))
        {
          v24 = v35;
LABEL_16:
          v72 = OUTLINED_FUNCTION_70_12();
          starttest(v72, v73);
          v74 = OUTLINED_FUNCTION_11_35();
          if (!lpta_loadp_setscan_l(v74, v75))
          {
            goto LABEL_75;
          }

LABEL_17:
          v76 = OUTLINED_FUNCTION_70_12();
          starttest(v76, v77);
          v78 = OUTLINED_FUNCTION_11_35();
          v80 = lpta_loadp_setscan_l(v78, v79);
          v81 = v24;
          if (v80)
          {
LABEL_18:
            LODWORD(v24) = v81;
            v82 = OUTLINED_FUNCTION_70_12();
            starttest(v82, v83);
            v84 = OUTLINED_FUNCTION_11_35();
            if (lpta_loadp_setscan_l(v84, v85))
            {
LABEL_19:
              LODWORD(v35) = v24;
              v86 = OUTLINED_FUNCTION_43_15();
              starttest(v86, v87);
              v88 = OUTLINED_FUNCTION_11_35();
              if (!lpta_loadp_setscan_l(v88, v89))
              {
                OUTLINED_FUNCTION_13_34();
                inserted = test_string_s();
                if (!inserted)
                {
                  goto LABEL_41;
                }
              }

LABEL_28:
              LODWORD(v35) = v24;
              v102 = OUTLINED_FUNCTION_70_12();
              starttest(v102, v103);
              v104 = OUTLINED_FUNCTION_10_35();
              inserted = lpta_loadp_setscan_l(v104, v105);
              if (inserted)
              {
LABEL_29:
                LODWORD(v24) = v35;
LABEL_30:
                LODWORD(v35) = v24;
                OUTLINED_FUNCTION_83_10(inserted, v41, v42, v43, v44, v45, v46, v47, v160, v162, v164, v166, v168, v170, v172, v174, v176, v178, v180, v182, v184, v186, v188, v190, v192, v194, v196, v198, v200, v202, v204, v206, v208, v210, v212, v214);
                goto LABEL_42;
              }

              OUTLINED_FUNCTION_5_36();
              inserted = test_string_s();
              goto LABEL_32;
            }

LABEL_75:
            v156 = OUTLINED_FUNCTION_88_9();
            savescptr(v156, v157, v158);
            OUTLINED_FUNCTION_74_12();
            bspush_ca_scan_boa();
            OUTLINED_FUNCTION_5_36();
            if (test_string_s())
            {
              LODWORD(v41) = v24;
            }

            else
            {
              LODWORD(v41) = 1;
            }

            goto LABEL_52;
          }

LABEL_45:
          OUTLINED_FUNCTION_81_11(24, v160, v162, v164, v166, v168, v170, v172, v174, v176, v178, v180, v182, v184, v186, v188, v190, v192, v194, v196, v198, v200, v202, v204, v206);
          v123 = OUTLINED_FUNCTION_70_12();
          bspush_ca_scan(v123, v124);
LABEL_46:
          OUTLINED_FUNCTION_5_36();
          v125 = test_string_s();
          v43 = v24;
          LODWORD(v41) = v24;
          if (v125)
          {
            goto LABEL_52;
          }

LABEL_47:
          v35 = v43;
          v126 = OUTLINED_FUNCTION_16_33();
          if (lpta_loadp_setscan_r(v126, v127) || advance_tok(v0) || advance_tok(v0))
          {
            LODWORD(v41) = v35;
            goto LABEL_52;
          }
        }

        else
        {
          v94 = OUTLINED_FUNCTION_47_15();
          bspush_ca_scan(v94, v95);
        }

        OUTLINED_FUNCTION_5_36();
        inserted = test_string_s();
      }

      else
      {
        v90 = OUTLINED_FUNCTION_39_16();
        bspush_ca_scan(v90, v91);
        v92 = OUTLINED_FUNCTION_49_15();
        bspush_ca_scan(v92, v93);
LABEL_38:
        OUTLINED_FUNCTION_5_36();
        v117 = test_string_s();
        v42 = v24;
        LODWORD(v41) = v24;
        if (v117)
        {
          goto LABEL_52;
        }

LABEL_39:
        v35 = v42;
        inserted = OUTLINED_FUNCTION_4_37();
      }

      v41 = v35;
      if (inserted)
      {
        goto LABEL_52;
      }

      goto LABEL_41;
    }
  }

LABEL_3:
  vretproc(v0);
  v15 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_126_4();
}

uint64_t final_er_pronounced_Er()
{
  OUTLINED_FUNCTION_18_32();
  v140 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_15_33(v2, v3, v4, v5, v6, v7, v8, v9, v49, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118, v121, v124, v127);
  OUTLINED_FUNCTION_64_12(v10, v11, v12, v13, v14, v15, v16, v17, v50, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v119, v122, v125, v128, v130, v132, v134, v136, v138);
  v18 = setjmp(v1);
  if (!v18 && !OUTLINED_FUNCTION_14_34(v18, v19, v20, v21, v22, v23, v24, v25, v51, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117, v120, v123, v126, v129, *v131, v131[4], *v133, *&v133[4], v133[6], v135, SWORD2(v135), SBYTE6(v135), SHIBYTE(v135), v137, v139))
  {
    v26 = OUTLINED_FUNCTION_75_12();
    OUTLINED_FUNCTION_130_4(v26, v27);
    v28 = OUTLINED_FUNCTION_77_11();
    OUTLINED_FUNCTION_129_4(v28, v29);
    fence_37(v0, 0, &null_str_14);
    v30 = OUTLINED_FUNCTION_70_12();
    starttest(v30, v31);
    if (OUTLINED_FUNCTION_120_4() || ((v37 = OUTLINED_FUNCTION_101_6(), testFldeq(v37, v38, v39, 2)) || advance_tok(v0) || (v40 = OUTLINED_FUNCTION_99_7(), lpta_rpta_loadp(v40, v41, v42), v43 = OUTLINED_FUNCTION_69_12(), setd_lookup(v43, v44, 29))) && ((v45 = *(v0 + 104)) == 0 ? (v46 = OUTLINED_FUNCTION_136_4()) : (v46 = OUTLINED_FUNCTION_92_9(v45)), v46 == 1))
    {
      v32 = OUTLINED_FUNCTION_99_7();
      lpta_rpta_loadp(v32, v33, v34);
      v35 = OUTLINED_FUNCTION_69_12();
      setd_lookup(v35, v36, 30);
    }
  }

  vretproc(v0);
  v47 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_118_4();
}

uint64_t final_er_pronounced_oer()
{
  OUTLINED_FUNCTION_18_32();
  v140 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_15_33(v2, v3, v4, v5, v6, v7, v8, v9, v49, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118, v121, v124, v127);
  OUTLINED_FUNCTION_64_12(v10, v11, v12, v13, v14, v15, v16, v17, v50, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v119, v122, v125, v128, v130, v132, v134, v136, v138);
  v18 = setjmp(v1);
  if (!v18 && !OUTLINED_FUNCTION_14_34(v18, v19, v20, v21, v22, v23, v24, v25, v51, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117, v120, v123, v126, v129, *v131, v131[4], *v133, *&v133[4], v133[6], v135, SWORD2(v135), SBYTE6(v135), SHIBYTE(v135), v137, v139))
  {
    v26 = OUTLINED_FUNCTION_75_12();
    OUTLINED_FUNCTION_130_4(v26, v27);
    v28 = OUTLINED_FUNCTION_77_11();
    OUTLINED_FUNCTION_129_4(v28, v29);
    fence_37(v0, 0, &null_str_14);
    v30 = OUTLINED_FUNCTION_70_12();
    starttest(v30, v31);
    if (OUTLINED_FUNCTION_120_4() || ((v37 = OUTLINED_FUNCTION_101_6(), testFldeq(v37, v38, v39, 2)) || advance_tok(v0) || (v40 = OUTLINED_FUNCTION_99_7(), lpta_rpta_loadp(v40, v41, v42), v43 = OUTLINED_FUNCTION_69_12(), setd_lookup(v43, v44, 31))) && ((v45 = *(v0 + 104)) == 0 ? (v46 = OUTLINED_FUNCTION_136_4()) : (v46 = OUTLINED_FUNCTION_92_9(v45)), v46 == 1))
    {
      v32 = OUTLINED_FUNCTION_99_7();
      lpta_rpta_loadp(v32, v33, v34);
      v35 = OUTLINED_FUNCTION_69_12();
      setd_lookup(v35, v36, 32);
    }
  }

  vretproc(v0);
  v47 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_118_4();
}

void adjust_phones()
{
  OUTLINED_FUNCTION_132_4();
  v1 = v0;
  v112 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_159_3();
  OUTLINED_FUNCTION_84_10(v2, v3, v4, v5, v6, v7, v8, v9, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v98);
  OUTLINED_FUNCTION_89_9();
  bzero(v111, v10);
  v11 = setjmp(v111);
  if (!v11 && !OUTLINED_FUNCTION_141_4(v11, v12, v13, v14, v15, v16, v17, v18, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v97, v98, v99[0], v99[1], v100[0], v100[1], v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111[0]))
  {
    v20 = OUTLINED_FUNCTION_97_7();
    push_ptr_init(v20, v21);
    v22 = OUTLINED_FUNCTION_74_12();
    push_ptr_init(v22, v23);
    v24 = OUTLINED_FUNCTION_80_11();
    push_ptr_init(v24, v25);
    v26 = OUTLINED_FUNCTION_98_7();
    fence_37(v26, v27, v28);
    startloop(v1, 1);
    v29 = OUTLINED_FUNCTION_74_12();
    copyvar(v29, v30, v31);
    v32 = OUTLINED_FUNCTION_80_11();
    copyvar(v32, v33, v34);
LABEL_5:
    while (1)
    {
      v35 = OUTLINED_FUNCTION_74_12();
      if (forall_to_test(v35, v36, &v97))
      {
        break;
      }

LABEL_6:
      v37 = OUTLINED_FUNCTION_93_9();
      bspush_ca(v37);
      v38 = OUTLINED_FUNCTION_74_12();
      if (lpta_loadp_setscan_l(v38, v39) || testFldeq(v1, 2u, 1, 1) || advance_tok(v1))
      {
        break;
      }

LABEL_15:
      v42 = OUTLINED_FUNCTION_95_8();
      savescptr(v42, v43, v100);
LABEL_16:
      OUTLINED_FUNCTION_36_17();
      if (word_medial_oe_deletion())
      {
LABEL_17:
        OUTLINED_FUNCTION_36_17();
        mid_vowel_alternations();
        if (v44)
        {
LABEL_18:
          OUTLINED_FUNCTION_36_17();
          high_vowel_gliding();
        }
      }

LABEL_19:
      v45 = OUTLINED_FUNCTION_97_7();
      lpta_loadpn(v45, v46);
      v47 = OUTLINED_FUNCTION_99_7();
      rpta_loadpn(v47, v48);
      if (!compare_ptas(v1) && !testeq(v1))
      {
        goto LABEL_3;
      }

LABEL_21:
      forall_cont_from(v1);
    }

    while (2)
    {
      v40 = v1[13];
      if (v40)
      {
        v41 = OUTLINED_FUNCTION_92_9(v40);
      }

      else
      {
        v41 = vback(v1, 0);
      }

      switch(v41)
      {
        case 2:
          goto LABEL_16;
        case 3:
          if (forto_adv_l(v1, 1, 2, 10, 2, v99))
          {
            continue;
          }

          break;
        case 4:
          goto LABEL_15;
        case 5:
          goto LABEL_17;
        case 6:
          goto LABEL_19;
        case 7:
          goto LABEL_18;
        case 8:
          goto LABEL_21;
        case 9:
          goto LABEL_5;
        case 10:
          goto LABEL_6;
        default:
          goto LABEL_3;
      }

      break;
    }
  }

LABEL_3:
  vretproc(v1);
  v19 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_135_4();
  OUTLINED_FUNCTION_131_4();
}

uint64_t word_medial_oe_deletion()
{
  OUTLINED_FUNCTION_148_4();
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_140_4();
  OUTLINED_FUNCTION_8_36(v4, v5, v6, v7, v8, v9, v10, v11, v195, v197, v199, v201, v203, v205, v207, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v244, v245, v246, v247);
  OUTLINED_FUNCTION_55_14();
  if (setjmp(v2) || (OUTLINED_FUNCTION_46_15(), OUTLINED_FUNCTION_137_4(v12, v13, v14, v15, v16)))
  {
LABEL_3:
    vretproc(v0);
    result = 94;
  }

  else
  {
    v19 = OUTLINED_FUNCTION_80_11();
    OUTLINED_FUNCTION_129_4(v19, v20);
    v21 = OUTLINED_FUNCTION_67_12();
    get_parm(v21, v22, v23, -6);
    v24 = OUTLINED_FUNCTION_75_12();
    push_ptr_init(v24, v25);
    v26 = OUTLINED_FUNCTION_77_11();
    push_ptr_init(v26, v27);
    v28 = 0;
    v29 = OUTLINED_FUNCTION_98_7();
    v32 = fence_37(v29, v30, v31);
    OUTLINED_FUNCTION_111_4(v32, v33, &_MergedGlobals_33);
    v34 = OUTLINED_FUNCTION_116_4();
    starttest(v34, v35);
    OUTLINED_FUNCTION_116_4();
    bspush_ca_boa();
    v36 = OUTLINED_FUNCTION_80_11();
    if (!lpta_loadp_setscan_r(v36, v37))
    {
      OUTLINED_FUNCTION_6_36();
      v28 = test_string_s() == 0;
    }

    v38 = v28;
    while (2)
    {
      v39 = v0[13];
      if (v39)
      {
        v40 = OUTLINED_FUNCTION_92_9(v39);
        v42 = v41;
      }

      else
      {
        v40 = vback(v0, v38);
        v42 = 0;
      }

      switch(v40)
      {
        case 1:
          v148 = OUTLINED_FUNCTION_52_14();
          starttest(v148, v149);
          OUTLINED_FUNCTION_35_17();
          bspush_ca_boa();
          v150 = OUTLINED_FUNCTION_11_35();
          v152 = lpta_loadp_setscan_l(v150, v151);
          v38 = v42;
          if (v152)
          {
            continue;
          }

          OUTLINED_FUNCTION_5_36();
          v60 = test_string_s();
          goto LABEL_80;
        case 2:
        case 5:
        case 7:
          bspop_boa(v0);
          goto LABEL_3;
        case 3:
          goto LABEL_84;
        case 4:
          v49 = OUTLINED_FUNCTION_51_14();
          starttest(v49, v50);
          OUTLINED_FUNCTION_50_15();
          bspush_ca_boa();
          v51 = OUTLINED_FUNCTION_94_8();
          v53 = lpta_loadp_setscan_l(v51, v52);
          v38 = v42;
          if (v53)
          {
            continue;
          }

          v54 = OUTLINED_FUNCTION_32_20();
          bspush_ca_scan(v54, v55);
          goto LABEL_19;
        case 6:
          v61 = OUTLINED_FUNCTION_42_15();
          starttest(v61, v62);
          v63 = OUTLINED_FUNCTION_94_8();
          if (lpta_loadp_setscan_l(v63, v64))
          {
            goto LABEL_22;
          }

          v177 = OUTLINED_FUNCTION_6_36();
          v180 = testFldeq(v177, v178, v179, 2);
          v38 = v42;
          if (!v180)
          {
            v181 = advance_tok(v0);
            v38 = v42;
            if (!v181)
            {
              goto LABEL_74;
            }
          }

          continue;
        case 8:
          OUTLINED_FUNCTION_49_15();
          bspush_ca_scan_boa();
          v44 = OUTLINED_FUNCTION_6_36();
          v47 = 1;
          goto LABEL_79;
        case 9:
          goto LABEL_19;
        case 10:
          bspop_boa(v0);
          v48 = advance_tok(v0);
          v38 = v42;
          if (v48)
          {
            continue;
          }

LABEL_19:
          v56 = OUTLINED_FUNCTION_6_36();
          v59 = testFldeq(v56, v57, v58, 1);
          v38 = v42;
          if (v59)
          {
            continue;
          }

          v60 = advance_tok(v0);
          goto LABEL_80;
        case 11:
LABEL_22:
          v65 = OUTLINED_FUNCTION_59_13();
          starttest(v65, v66);
          v67 = OUTLINED_FUNCTION_94_8();
          if (lpta_loadp_setscan_l(v67, v68))
          {
            goto LABEL_23;
          }

          goto LABEL_58;
        case 12:
LABEL_74:
          v182 = OUTLINED_FUNCTION_86_9();
          savescptr(v182, v183, v184);
          v185 = OUTLINED_FUNCTION_86_9();
          lpta_rpta_loadp(v185, v186, v187);
          v188 = OUTLINED_FUNCTION_69_12();
          v160 = setd_lookup(v188, v189, 10);
          goto LABEL_75;
        case 13:
LABEL_23:
          v69 = OUTLINED_FUNCTION_44_15();
          starttest(v69, v70);
          v71 = OUTLINED_FUNCTION_94_8();
          if (lpta_loadp_setscan_l(v71, v72))
          {
            goto LABEL_24;
          }

          goto LABEL_54;
        case 14:
LABEL_58:
          OUTLINED_FUNCTION_81_11(14, v196, v198, v200, v202, v204, v206, v208, v210, v212, v214, v216, v218, v220, v222, v224, v226, v228, v230, v232, v234, v236, v238, v240, v242);
          v146 = OUTLINED_FUNCTION_70_12();
          bspush_ca_scan(v146, v147);
          goto LABEL_61;
        case 15:
LABEL_61:
          OUTLINED_FUNCTION_6_36();
          v153 = test_string_s();
          v38 = v42;
          if (!v153)
          {
            goto LABEL_62;
          }

          continue;
        case 16:
LABEL_62:
          v154 = OUTLINED_FUNCTION_77_11();
          v156 = lpta_loadp_setscan_r(v154, v155);
          v38 = v42;
          if (v156)
          {
            continue;
          }

          v157 = advance_tok(v0);
          v38 = v42;
          if (v157)
          {
            continue;
          }

          v158 = OUTLINED_FUNCTION_48_15();
          bspush_ca_scan(v158, v159);
          goto LABEL_65;
        case 17:
          goto LABEL_65;
        case 18:
        case 31:
          goto LABEL_83;
        case 19:
LABEL_24:
          v73 = OUTLINED_FUNCTION_70_12();
          starttest(v73, v74);
          v75 = OUTLINED_FUNCTION_94_8();
          if (lpta_loadp_setscan_l(v75, v76))
          {
            goto LABEL_25;
          }

          goto LABEL_50;
        case 20:
LABEL_54:
          OUTLINED_FUNCTION_81_11(20, v196, v198, v200, v202, v204, v206, v208, v210, v212, v214, v216, v218, v220, v222, v224, v226, v228, v230, v232, v234, v236, v238, v240, v242);
          OUTLINED_FUNCTION_6_36();
          v141 = test_string_s();
          v38 = v42;
          if (!v141)
          {
            v142 = OUTLINED_FUNCTION_77_11();
            v144 = lpta_loadp_setscan_r(v142, v143);
            v38 = v42;
            if (!v144)
            {
              v145 = advance_tok(v0);
              v38 = v42;
              if (!v145)
              {
                goto LABEL_65;
              }
            }
          }

          continue;
        case 21:
LABEL_25:
          v77 = OUTLINED_FUNCTION_70_12();
          starttest(v77, v78);
          v79 = OUTLINED_FUNCTION_62_12();
          if (lpta_loadp_setscan_r(v79, v80))
          {
            goto LABEL_26;
          }

          v161 = OUTLINED_FUNCTION_6_36();
          v164 = testFldeq(v161, v162, v163, 2);
          v38 = v42;
          if (!v164)
          {
            v165 = advance_tok(v0);
            v38 = v42;
            if (!v165)
            {
              v166 = OUTLINED_FUNCTION_70_12();
              bspush_ca_scan(v166, v167);
              v168 = OUTLINED_FUNCTION_72_12();
              v171 = testFldeq(v168, v169, v170, 26);
              v38 = v42;
              if (!v171)
              {
                v172 = advance_tok(v0);
                v38 = v42;
                if (!v172)
                {
                  goto LABEL_70;
                }
              }
            }
          }

          continue;
        case 22:
LABEL_50:
          OUTLINED_FUNCTION_81_11(22, v196, v198, v200, v202, v204, v206, v208, v210, v212, v214, v216, v218, v220, v222, v224, v226, v228, v230, v232, v234, v236, v238, v240, v242);
          OUTLINED_FUNCTION_6_36();
          v136 = test_string_s();
          v38 = v42;
          if (v136)
          {
            continue;
          }

          v137 = OUTLINED_FUNCTION_77_11();
          v139 = lpta_loadp_setscan_r(v137, v138);
          v38 = v42;
          if (v139)
          {
            continue;
          }

          v140 = advance_tok(v0);
          v38 = v42;
          if (v140)
          {
            continue;
          }

LABEL_65:
          OUTLINED_FUNCTION_6_36();
          v160 = test_string_s();
LABEL_75:
          v38 = v42;
          if (!v160)
          {
            goto LABEL_83;
          }

          continue;
        case 23:
LABEL_26:
          v81 = OUTLINED_FUNCTION_57_13();
          starttest(v81, v82);
          v83 = OUTLINED_FUNCTION_62_12();
          if (lpta_loadp_setscan_r(v83, v84))
          {
            goto LABEL_28;
          }

          OUTLINED_FUNCTION_26_26();
          if (test_string_s())
          {
            goto LABEL_28;
          }

          v190 = OUTLINED_FUNCTION_6_36();
          v193 = testFldeq(v190, v191, v192, 1);
          v38 = v42;
          if (!v193)
          {
            goto LABEL_78;
          }

          continue;
        case 24:
LABEL_70:
          v173 = OUTLINED_FUNCTION_6_36();
          v176 = testFldeq(v173, v174, v175, 1);
          v38 = v42;
          if (!v176)
          {
            goto LABEL_78;
          }

          continue;
        case 25:
        case 27:
        case 30:
        case 33:
          bspop_boa(v0);
          v43 = advance_tok(v0);
          v38 = v42;
          if (v43)
          {
            continue;
          }

LABEL_84:
          OUTLINED_FUNCTION_20_28();
          delete_phone_from_left();
          goto LABEL_85;
        case 26:
LABEL_28:
          v85 = OUTLINED_FUNCTION_70_12();
          starttest(v85, v86);
          v87 = OUTLINED_FUNCTION_94_8();
          if (lpta_loadp_setscan_l(v87, v88))
          {
            goto LABEL_29;
          }

          goto LABEL_40;
        case 28:
LABEL_29:
          v89 = OUTLINED_FUNCTION_43_15();
          starttest(v89, v90);
          v91 = OUTLINED_FUNCTION_94_8();
          if (!lpta_loadp_setscan_l(v91, v92))
          {
            goto LABEL_30;
          }

LABEL_83:
          v194 = v249;
          goto LABEL_86;
        case 29:
LABEL_40:
          OUTLINED_FUNCTION_81_11(29, v196, v198, v200, v202, v204, v206, v208, v210, v212, v214, v216, v218, v220, v222, v224, v226, v228, v230, v232, v234, v236, v238, v240, v242);
          v113 = OUTLINED_FUNCTION_6_36();
          v116 = testFldeq(v113, v114, v115, 1);
          v38 = v42;
          if (!v116)
          {
            v117 = advance_tok(v0);
            v38 = v42;
            if (!v117)
            {
              v118 = OUTLINED_FUNCTION_77_11();
              v120 = lpta_loadp_setscan_r(v118, v119);
              v38 = v42;
              if (!v120)
              {
                v121 = advance_tok(v0);
                v38 = v42;
                if (!v121)
                {
                  v122 = OUTLINED_FUNCTION_6_36();
                  v125 = testFldeq(v122, v123, v124, 2);
                  v38 = v42;
                  if (!v125)
                  {
                    v126 = advance_tok(v0);
                    v38 = v42;
                    if (!v126)
                    {
                      v127 = OUTLINED_FUNCTION_6_36();
                      v130 = testFldeq(v127, v128, v129, 3);
                      v38 = v42;
                      if (!v130)
                      {
                        v131 = advance_tok(v0);
                        v38 = v42;
                        if (!v131)
                        {
                          v132 = OUTLINED_FUNCTION_6_36();
                          v135 = testFldeq(v132, v133, v134, 1);
                          v38 = v42;
                          if (!v135)
                          {
                            goto LABEL_78;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }

          continue;
        case 32:
LABEL_30:
          OUTLINED_FUNCTION_81_11(32, v196, v198, v200, v202, v204, v206, v208, v210, v212, v214, v216, v218, v220, v222, v224, v226, v228, v230, v232, v234, v236, v238, v240, v242);
          OUTLINED_FUNCTION_6_36();
          v93 = test_string_s();
          v38 = v42;
          if (!v93)
          {
            v94 = OUTLINED_FUNCTION_6_36();
            v97 = testFldeq(v94, v95, v96, 1);
            v38 = v42;
            if (!v97)
            {
              v98 = advance_tok(v0);
              v38 = v42;
              if (!v98)
              {
                v99 = OUTLINED_FUNCTION_77_11();
                v101 = lpta_loadp_setscan_r(v99, v100);
                v38 = v42;
                if (!v101)
                {
                  v102 = advance_tok(v0);
                  v38 = v42;
                  if (!v102)
                  {
                    v103 = OUTLINED_FUNCTION_6_36();
                    v106 = testFldeq(v103, v104, v105, 2);
                    v38 = v42;
                    if (!v106)
                    {
                      v107 = advance_tok(v0);
                      v38 = v42;
                      if (!v107)
                      {
                        OUTLINED_FUNCTION_6_36();
                        v108 = test_string_s();
                        v38 = v42;
                        if (!v108)
                        {
                          v109 = OUTLINED_FUNCTION_6_36();
                          v112 = testFldeq(v109, v110, v111, 1);
                          v38 = v42;
                          if (!v112)
                          {
LABEL_78:
                            OUTLINED_FUNCTION_70_12();
                            bspush_ca_scan_boa();
                            v44 = OUTLINED_FUNCTION_72_12();
                            v47 = 47;
LABEL_79:
                            v60 = testFldeq(v44, v45, v46, v47);
LABEL_80:
                            if (v60)
                            {
                              v38 = v42;
                            }

                            else
                            {
                              v38 = 1;
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

          continue;
        case 34:
LABEL_85:
          v194 = v248;
LABEL_86:
          *(v1 + 8) = v194;
          vretproc(v0);
          result = 0;
          break;
        default:
          goto LABEL_3;
      }

      break;
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return result;
}

void mid_vowel_alternations()
{
  OUTLINED_FUNCTION_160_3();
  OUTLINED_FUNCTION_18_32();
  v194 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_15_33(v2, v3, v4, v5, v6, v7, v8, v9, v103, v106, v109, v112, v115, v118, v121, v124, v127, v130, v133, v136, v139, v142, v145, v148, v151, v154, v157, v160, v163, v166, v169, v172, v175, v178, v181);
  OUTLINED_FUNCTION_64_12(v10, v11, v12, v13, v14, v15, v16, v17, v104, v107, v110, v113, v116, v119, v122, v125, v128, v131, v134, v137, v140, v143, v146, v149, v152, v155, v158, v161, v164, v167, v170, v173, v176, v179, v182, v184, v186, v188, v190, v192);
  v18 = setjmp(v1);
  if (v18 || OUTLINED_FUNCTION_14_34(v18, v19, v20, v21, v22, v23, v24, v25, v105, v108, v111, v114, v117, v120, v123, v126, v129, v132, v135, v138, v141, v144, v147, v150, v153, v156, v159, v162, v165, v168, v171, v174, v177, v180, v183, *v185, v185[4], *v187, *&v187[4], v187[6], v189, SWORD2(v189), SBYTE6(v189), SHIBYTE(v189), v191, v193))
  {
    goto LABEL_3;
  }

  v27 = OUTLINED_FUNCTION_23_26();
  get_parm(v27, v28, v29, -6);
  v30 = OUTLINED_FUNCTION_77_11();
  OUTLINED_FUNCTION_129_4(v30, v31);
  v32 = 0;
  v33 = OUTLINED_FUNCTION_98_7();
  fence_37(v33, v34, v35);
  v36 = OUTLINED_FUNCTION_21_27();
  fence_37(v36, v37, v38);
  v39 = OUTLINED_FUNCTION_128_4();
  starttest(v39, v40);
  v41 = OUTLINED_FUNCTION_80_11();
  if (lpta_loadp_setscan_r(v41, v42))
  {
LABEL_5:
    v43 = OUTLINED_FUNCTION_75_12();
    if (lpta_loadp_setscan_r(v43, v44) || (OUTLINED_FUNCTION_6_36(), test_string_s()))
    {
LABEL_7:
      v45 = OUTLINED_FUNCTION_75_12();
      if (lpta_loadp_setscan_r(v45, v46))
      {
        goto LABEL_3;
      }

      OUTLINED_FUNCTION_6_36();
      if (test_string_s())
      {
        goto LABEL_3;
      }

      v47 = OUTLINED_FUNCTION_32_20();
      starttest(v47, v48);
      v49 = OUTLINED_FUNCTION_10_35();
      if (lpta_loadp_setscan_r(v49, v50))
      {
        goto LABEL_3;
      }

      v51 = OUTLINED_FUNCTION_39_16();
      bspush_ca_scan(v51, v52);
      v53 = v32;
LABEL_11:
      v54 = v53;
      OUTLINED_FUNCTION_5_36();
      if (test_string_s())
      {
        goto LABEL_20;
      }

      v55 = OUTLINED_FUNCTION_77_11();
      if (!lpta_loadp_setscan_r(v55, v56))
      {
        OUTLINED_FUNCTION_6_36();
        if (!test_string_s())
        {
          v57 = OUTLINED_FUNCTION_66_12();
          starttest_l(v57, v58);
          OUTLINED_FUNCTION_59_13();
          bspush_ca_boa();
          v59 = OUTLINED_FUNCTION_10_35();
          if (!lpta_loadp_setscan_l(v59, v60))
          {
            OUTLINED_FUNCTION_12_35();
            if (!test_string_s())
            {
              v54 = 1;
            }
          }

          goto LABEL_20;
        }
      }

LABEL_33:
      v80 = OUTLINED_FUNCTION_77_11();
      if (open_final_syll(v80, v81, v82, v83, v84, v85, v86, v87))
      {
        goto LABEL_3;
      }

      v88 = &unk_28064B84D;
    }

    else
    {
      v95 = OUTLINED_FUNCTION_77_11();
      if (open_final_syll(v95, v96, v97, v98, v99, v100, v101, v102))
      {
        goto LABEL_3;
      }

      v88 = &unk_28064B850;
    }

    v89 = OUTLINED_FUNCTION_88_9();
    lpta_rpta_loadp(v89, v90, v91);
    v92 = OUTLINED_FUNCTION_6_36();
    insert_2pt_s(v92, v93, v94, v88, 0);
    goto LABEL_3;
  }

  bspush_ca_scan_boa();
  if (testFldeq(v0, 2u, 6, 1))
  {
    v54 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_61_13();
    bspush_ca_scan_boa();
    v61 = OUTLINED_FUNCTION_72_12();
    v54 = !testFldeq(v61, v62, 11, 1);
  }

LABEL_20:
  v63 = v54;
  while (2)
  {
    v64 = v0[13];
    if (v64)
    {
      v65 = OUTLINED_FUNCTION_92_9(v64);
      v67 = v66;
    }

    else
    {
      v65 = vback(v0, v63);
      v67 = 0;
    }

    v53 = v67;
    switch(v65)
    {
      case 1:
        v32 = v67;
        goto LABEL_5;
      case 2:
        bspop_boa(v0);
        break;
      case 3:
        bspop_boa(v0);
        if (advance_tok(v0))
        {
          v63 = v67;
        }

        else
        {
          v63 = 1;
        }

        continue;
      case 5:
        v32 = v67;
        goto LABEL_7;
      case 9:
        v68 = OUTLINED_FUNCTION_12_35();
        v71 = testFldeq(v68, v69, v70, 2);
        v63 = v67;
        if (!v71)
        {
          v72 = advance_tok(v0);
          v53 = v67;
          v63 = v67;
          if (!v72)
          {
            goto LABEL_11;
          }
        }

        continue;
      case 10:
        goto LABEL_11;
      case 11:
        goto LABEL_33;
      case 13:
        bspop_boa(v0);
        v73 = OUTLINED_FUNCTION_36_17();
        lpta_rpta_loadp(v73, v74, v75);
        v76 = OUTLINED_FUNCTION_6_36();
        inserted = insert_2pt_s(v76, v77, v78, &unk_28064B84D, 0);
        v63 = v67;
        if (inserted)
        {
          continue;
        }

        break;
      default:
        goto LABEL_3;
    }

    break;
  }

LABEL_3:
  vretproc(v0);
  v26 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_118_4();
  OUTLINED_FUNCTION_161_3();
}

uint64_t high_vowel_gliding()
{
  OUTLINED_FUNCTION_18_32();
  v239 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8_36(v2, v3, v4, v5, v6, v7, v8, v9, v182, v184, v186, v188, v190, v192, v194, v196, v198, v200, v202, v204, v206, v208, v210, v212, v214, v216, v218, v220, v222, v224, v226, v228, v230, v232, v234, v236, v238);
  OUTLINED_FUNCTION_55_14();
  if (!setjmp(v1))
  {
    OUTLINED_FUNCTION_19_28();
    if (!OUTLINED_FUNCTION_137_4(v10, v11, v12, v13, v14))
    {
      v17 = OUTLINED_FUNCTION_23_26();
      get_parm(v17, v18, v19, -6);
      v20 = OUTLINED_FUNCTION_75_12();
      OUTLINED_FUNCTION_129_4(v20, v21);
      v22 = OUTLINED_FUNCTION_77_11();
      push_ptr_init(v22, v23);
      v24 = OUTLINED_FUNCTION_98_7();
      fence_37(v24, v25, v26);
      v27 = OUTLINED_FUNCTION_21_27();
      fence_37(v27, v28, v29);
      v30 = OUTLINED_FUNCTION_128_4();
      starttest(v30, v31);
      OUTLINED_FUNCTION_128_4();
      bspush_ca_boa();
      v32 = OUTLINED_FUNCTION_63_12();
      if (lpta_loadp_setscan_r(v32, v33))
      {
        v34 = 0;
      }

      else
      {
        v35 = OUTLINED_FUNCTION_61_13();
        bspush_ca_scan(v35, v36);
        OUTLINED_FUNCTION_6_36();
        if (test_string_s())
        {
          v34 = 0;
        }

        else
        {
LABEL_9:
          v34 = 1;
        }
      }

      v37 = v34;
      while (1)
      {
        v38 = *(v0 + 104);
        if (v38)
        {
          v39 = OUTLINED_FUNCTION_92_9(v38);
          v47 = v40;
        }

        else
        {
          v39 = vback(v0, v37);
          v47 = 0;
        }

        switch(v39)
        {
          case 1:
            v48 = OUTLINED_FUNCTION_51_14();
            starttest(v48, v49);
            OUTLINED_FUNCTION_50_15();
            bspush_ca_boa();
            v50 = OUTLINED_FUNCTION_75_12();
            v52 = lpta_loadp_setscan_r(v50, v51);
            v37 = v47;
            if (v52)
            {
              continue;
            }

            v53 = OUTLINED_FUNCTION_6_36();
            v56 = testFldeq(v53, v54, v55, 1);
            v37 = v47;
            if (v56)
            {
              continue;
            }

            OUTLINED_FUNCTION_32_20();
            bspush_ca_scan_boa();
            v57 = OUTLINED_FUNCTION_72_12();
            v60 = 47;
            goto LABEL_52;
          case 2:
            bspop_boa(v0);
            goto LABEL_3;
          case 3:
            v62 = OUTLINED_FUNCTION_35_17();
            bspush_ca_scan(v62, v63);
            goto LABEL_21;
          case 4:
            goto LABEL_9;
          case 5:
LABEL_21:
            OUTLINED_FUNCTION_6_36();
            v64 = test_string_s();
            v37 = v47;
            if (!v64)
            {
              goto LABEL_9;
            }

            continue;
          case 6:
            v65 = OUTLINED_FUNCTION_49_15();
            starttest(v65, v66);
            v67 = OUTLINED_FUNCTION_10_35();
            if (lpta_loadp_setscan_l(v67, v68))
            {
              goto LABEL_25;
            }

            goto LABEL_46;
          case 7:
            bspop_boa(v0);
            goto LABEL_77;
          case 8:
            bspop_boa(v0);
            v61 = advance_tok(v0);
            goto LABEL_53;
          case 9:
          case 23:
            goto LABEL_32;
          case 10:
LABEL_25:
            v69 = OUTLINED_FUNCTION_114_4();
            lpta_rpta_loadp(v69, v70, v71);
            v72 = OUTLINED_FUNCTION_69_12();
            if (setd_lookup(v72, v73, 54))
            {
              goto LABEL_26;
            }

            goto LABEL_77;
          case 11:
LABEL_46:
            OUTLINED_FUNCTION_81_11(11, v183, v185, v187, v189, v191, v193, v195, v197, v199, v201, v203, v205, v207, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229);
            OUTLINED_FUNCTION_5_36();
            v127 = test_string_s();
            v37 = v47;
            if (!v127)
            {
              v128 = OUTLINED_FUNCTION_16_33();
              v130 = lpta_loadp_setscan_r(v128, v129);
              v37 = v47;
              if (!v130)
              {
                goto LABEL_48;
              }
            }

            continue;
          case 12:
LABEL_26:
            v74 = OUTLINED_FUNCTION_59_13();
            starttest(v74, v75);
            v76 = OUTLINED_FUNCTION_62_12();
            if (lpta_loadp_setscan_l(v76, v77))
            {
              goto LABEL_27;
            }

            v138 = OUTLINED_FUNCTION_47_15();
            bspush_ca_scan(v138, v139);
            goto LABEL_59;
          case 13:
LABEL_27:
            v78 = OUTLINED_FUNCTION_57_13();
            starttest(v78, v79);
            v80 = OUTLINED_FUNCTION_62_12();
            if (lpta_loadp_setscan_l(v80, v81))
            {
              goto LABEL_28;
            }

            v134 = OUTLINED_FUNCTION_6_36();
            v137 = testFldeq(v134, v135, v136, 3);
            v37 = v47;
            if (v137)
            {
              continue;
            }

            inserted = advance_tok(v0);
            goto LABEL_40;
          case 14:
LABEL_59:
            OUTLINED_FUNCTION_6_36();
            v140 = test_string_s();
            v37 = v47;
            if (!v140)
            {
              goto LABEL_60;
            }

            continue;
          case 15:
LABEL_60:
            v141 = OUTLINED_FUNCTION_70_12();
            bspush_ca_scan(v141, v142);
            v143 = OUTLINED_FUNCTION_37_17();
            v146 = testFldeq(v143, v144, 4, v145);
            v37 = v47;
            if (!v146)
            {
              goto LABEL_61;
            }

            continue;
          case 16:
            v131 = OUTLINED_FUNCTION_72_12();
            v133 = testFldeq(v131, v132, 4, 1);
            v37 = v47;
            if (v133)
            {
              continue;
            }

            OUTLINED_FUNCTION_60_13();
            bspush_ca_scan_boa();
            v57 = OUTLINED_FUNCTION_72_12();
            v60 = 23;
LABEL_52:
            v61 = testFldeq(v57, v58, v59, v60);
LABEL_53:
            if (v61)
            {
              v37 = v47;
            }

            else
            {
              v37 = 1;
            }

            continue;
          case 17:
            goto LABEL_61;
          case 18:
            bspop_boa(v0);
LABEL_61:
            v147 = advance_tok(v0);
            v37 = v47;
            if (v147)
            {
              continue;
            }

            v148 = OUTLINED_FUNCTION_44_15();
            starttest(v148, v149);
            v150 = OUTLINED_FUNCTION_62_12();
            if (lpta_loadp_setscan_l(v150, v151))
            {
LABEL_63:
              v152 = OUTLINED_FUNCTION_70_12();
              starttest(v152, v153);
              v154 = OUTLINED_FUNCTION_62_12();
              if (lpta_loadp_setscan_r(v154, v155) || (OUTLINED_FUNCTION_6_36(), test_string_s()))
              {
LABEL_65:
                v156 = OUTLINED_FUNCTION_70_12();
                starttest(v156, v157);
                v158 = OUTLINED_FUNCTION_62_12();
                if (lpta_loadp_setscan_r(v158, v159) || (OUTLINED_FUNCTION_6_36(), test_string_s()))
                {
LABEL_77:
                  vretproc(v0);
                  result = 0;
                  goto LABEL_4;
                }

                v160 = OUTLINED_FUNCTION_6_36();
                v163 = testFldeq(v160, v161, v162, 1);
                v37 = v47;
                if (!v163)
                {
                  v164 = advance_tok(v0);
                  v37 = v47;
                  if (!v164)
                  {
                    OUTLINED_FUNCTION_83_10(v164, v47, v165, v166, v167, v168, v169, v170, v183, v185, v187, v189, v191, v193, v195, v197, v199, v201, v203, v205, v207, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235, v237);
                    v114 = OUTLINED_FUNCTION_1_39();
LABEL_39:
                    inserted = insert_2pt_s(v114, v115, v116, v117, v118);
LABEL_40:
                    v37 = v47;
                    if (!inserted)
                    {
                      goto LABEL_77;
                    }
                  }
                }
              }

              else
              {
                v177 = OUTLINED_FUNCTION_37_17();
                v180 = testFldeq(v177, v178, 6, v179);
                v37 = v47;
                if (!v180)
                {
                  v181 = advance_tok(v0);
                  v37 = v47;
                  if (!v181)
                  {
LABEL_32:
                    v90 = OUTLINED_FUNCTION_62_12();
                    if (!lpta_loadp_setscan_r(v90, v91))
                    {
                      OUTLINED_FUNCTION_6_36();
                      v92 = test_string_s();
                      if (!v92)
                      {
                        OUTLINED_FUNCTION_83_10(v92, v93, v94, v95, v96, v97, v98, v99, v183, v185, v187, v189, v191, v193, v195, v197, v199, v201, v203, v205, v207, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235, v237);
                        v100 = OUTLINED_FUNCTION_0_40();
                        if (!insert_2pt_s(v100, v101, v102, v103, v104))
                        {
                          goto LABEL_77;
                        }
                      }
                    }

LABEL_35:
                    v105 = OUTLINED_FUNCTION_43_15();
                    starttest(v105, v106);
                    v107 = OUTLINED_FUNCTION_62_12();
                    v39 = lpta_loadp_setscan_r(v107, v108);
                    if (!v39)
                    {
                      OUTLINED_FUNCTION_6_36();
                      v39 = test_string_s();
                      if (!v39)
                      {
                        OUTLINED_FUNCTION_83_10(v39, v40, v41, v42, v43, v44, v45, v46, v183, v185, v187, v189, v191, v193, v195, v197, v199, v201, v203, v205, v207, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235, v237);
                        v109 = OUTLINED_FUNCTION_0_40();
                        v39 = insert_2pt_s(v109, v110, v111, v112, v113);
                        if (!v39)
                        {
                          goto LABEL_77;
                        }
                      }
                    }

LABEL_38:
                    OUTLINED_FUNCTION_83_10(v39, v40, v41, v42, v43, v44, v45, v46, v183, v185, v187, v189, v191, v193, v195, v197, v199, v201, v203, v205, v207, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235, v237);
                    v114 = OUTLINED_FUNCTION_0_40();
                    goto LABEL_39;
                  }
                }
              }
            }

            else
            {
LABEL_70:
              OUTLINED_FUNCTION_81_11(20, v183, v185, v187, v189, v191, v193, v195, v197, v199, v201, v203, v205, v207, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229);
              OUTLINED_FUNCTION_26_26();
              v171 = test_string_s();
              v37 = v47;
              if (!v171)
              {
                v172 = OUTLINED_FUNCTION_77_11();
                v174 = lpta_loadp_setscan_r(v172, v173);
                v37 = v47;
                if (!v174)
                {
                  v175 = OUTLINED_FUNCTION_70_12();
                  bspush_ca_scan(v175, v176);
LABEL_23:
                  OUTLINED_FUNCTION_72_12();
LABEL_49:
                  inserted = test_string_s();
                  goto LABEL_40;
                }
              }
            }

            break;
          case 19:
            goto LABEL_63;
          case 20:
            goto LABEL_70;
          case 21:
            goto LABEL_23;
          case 22:
          case 25:
          case 30:
            goto LABEL_77;
          case 24:
            goto LABEL_65;
          case 26:
LABEL_28:
            v82 = OUTLINED_FUNCTION_11_35();
            if (lpta_loadp_setscan_l(v82, v83))
            {
              goto LABEL_31;
            }

            OUTLINED_FUNCTION_82_10();
            if (test_string_s())
            {
              goto LABEL_31;
            }

            *(v0 + 136) = 0;
            v84 = *(v0 + 1648);
            v85 = OUTLINED_FUNCTION_9_35();
            if (test_ptr(v85))
            {
              goto LABEL_31;
            }

            goto LABEL_77;
          case 27:
LABEL_31:
            v86 = OUTLINED_FUNCTION_39_16();
            starttest(v86, v87);
            v88 = OUTLINED_FUNCTION_11_35();
            if (lpta_loadp_setscan_l(v88, v89))
            {
              goto LABEL_32;
            }

            goto LABEL_42;
          case 28:
LABEL_42:
            OUTLINED_FUNCTION_81_11(28, v183, v185, v187, v189, v191, v193, v195, v197, v199, v201, v203, v205, v207, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229);
            OUTLINED_FUNCTION_82_10();
            v120 = test_string_s();
            v37 = v47;
            if (v120)
            {
              continue;
            }

            *(v0 + 136) = 0;
            v121 = *(v0 + 1648);
            v122 = OUTLINED_FUNCTION_9_35();
            v123 = test_ptr(v122);
            v37 = v47;
            if (v123)
            {
              continue;
            }

            v124 = OUTLINED_FUNCTION_16_33();
            v126 = lpta_loadp_setscan_r(v124, v125);
            v37 = v47;
            if (v126)
            {
              continue;
            }

LABEL_48:
            OUTLINED_FUNCTION_69_12();
            goto LABEL_49;
          case 29:
            goto LABEL_35;
          case 31:
            goto LABEL_38;
          default:
            goto LABEL_3;
        }
      }
    }
  }

LABEL_3:
  vretproc(v0);
  result = 94;
LABEL_4:
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t six_dix_final_con()
{
  OUTLINED_FUNCTION_148_4();
  v1 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_140_4();
  v13 = 0u;
  memset(v14, 0, 24);
  OUTLINED_FUNCTION_90_9();
  bzero(v12, v2);
  OUTLINED_FUNCTION_89_9();
  bzero(v18, v3);
  v4 = setjmp(v18);
  if (v4 || OUTLINED_FUNCTION_137_4(v4, v12, v17, v16, v15))
  {
    vretproc(v0);
    result = 94;
  }

  else
  {
    OUTLINED_FUNCTION_41_15();
    v14[0] = 0;
    v14[1] = 0;
    *(&v14[1] + 6) = 0;
    LODWORD(v13) = -65534;
    fence_37(v0, 0, &null_str_14);
    OUTLINED_FUNCTION_74_12();
    v7 = is_prenom_modifier();
    *(v0 + 168) = 1;
    *(v0 + 144) = v14[4];
    *(v0 + 128) = 0;
    if (v7)
    {
      v8 = OUTLINED_FUNCTION_1_39();
      insert_l(v8);
    }

    else
    {
      OUTLINED_FUNCTION_97_7();
      settvar_s();
      v9 = OUTLINED_FUNCTION_69_12();
      npush_s(v9);
      WORD1(v13) = 17;
      v10 = OUTLINED_FUNCTION_97_7();
      npop(v10, v11);
      OUTLINED_FUNCTION_37_17();
      insert_lv();
    }

    vretproc(v0);
    result = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t is_prenom_modifier()
{
  OUTLINED_FUNCTION_148_4();
  v121 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8_36(v1, v2, v3, v4, v5, v6, v7, v8, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v117, v118, v119);
  OUTLINED_FUNCTION_89_9();
  bzero(v120, v9);
  if (setjmp(v120))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_19_28();
  if (OUTLINED_FUNCTION_137_4(v10, v11, v12, v13, v14))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_41_15();
  v17 = OUTLINED_FUNCTION_75_12();
  push_ptr_init(v17, v18);
  v19 = OUTLINED_FUNCTION_77_11();
  push_ptr_init(v19, v20);
  v21 = 0;
  v22 = OUTLINED_FUNCTION_98_7();
  fence_37(v22, v23, v24);
  v25 = OUTLINED_FUNCTION_56_13();
  fence_37(v25, v26, v27);
  v115 = v0[443];
  OUTLINED_FUNCTION_143_4();
  v28 = OUTLINED_FUNCTION_74_12();
  if (lpta_loadp_setscan_r(v28, v29))
  {
    goto LABEL_9;
  }

  v21 = 0;
  v30 = 0;
  if (advanc(v0))
  {
    goto LABEL_9;
  }

  while (2)
  {
    v31 = OUTLINED_FUNCTION_85_10();
    savescptr(v31, v32, v33);
    v34 = OUTLINED_FUNCTION_101_6();
    if (!testFldeq(v34, v35, v36, 2))
    {
      v37 = advance_tok(v0);
      v38 = v30;
      if (!v37)
      {
LABEL_8:
        v21 = v38;
        OUTLINED_FUNCTION_81_11(3, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113);
LABEL_9:
        v39 = OUTLINED_FUNCTION_77_11();
        lpta_loadpn(v39, v40);
        rpta_loadpn(v0, v0 + 442);
        if (compare_ptas(v0))
        {
          v41 = v21;
        }

        else
        {
          v42 = testeq(v0);
          v41 = v21;
          if (!v42)
          {
            break;
          }
        }

LABEL_12:
        v43 = v41;
        OUTLINED_FUNCTION_22_26();
        if (v44)
        {
          v45 = OUTLINED_FUNCTION_88_9();
          lpta_rpta_loadp(v45, v46, v47);
          v48 = OUTLINED_FUNCTION_69_12();
          v50 = setd_lookup(v48, v49, 59);
          v51 = v43;
          if (!v50)
          {
            break;
          }
        }

        else
        {
          v51 = v43;
        }

LABEL_15:
        v52 = v51;
        v53 = OUTLINED_FUNCTION_35_17();
        starttest(v53, v54);
        v55 = OUTLINED_FUNCTION_75_12();
        if (lpta_loadp_setscan_r(v55, v56))
        {
          break;
        }

        if (testFldeq(v0, 4u, 3, 13) || advance_tok(v0))
        {
          v30 = v52;
        }

        else
        {
          OUTLINED_FUNCTION_50_15();
          bspush_ca_boa();
          v61 = OUTLINED_FUNCTION_88_9();
          lpta_rpta_loadp(v61, v62, v63);
          v64 = OUTLINED_FUNCTION_69_12();
          if (setd_lookup(v64, v65, 158))
          {
            v30 = v52;
          }

          else
          {
            v30 = 1;
          }
        }
      }
    }

    v57 = v0[13];
    if (v57)
    {
      v0[13] = 0;
      v58 = v57;
      v59 = v30;
    }

    else
    {
      v58 = vback(v0, v30);
      v59 = 0;
    }

    v60 = v58 - 1;
    v30 = v59;
    v38 = v59;
    v21 = v59;
    v41 = v59;
    v51 = v59;
    switch(v60)
    {
      case 0:
        goto LABEL_9;
      case 1:
        continue;
      case 2:
        goto LABEL_8;
      case 3:
        goto LABEL_12;
      case 5:
        goto LABEL_15;
      case 6:
        bspop_boa(v0);
        break;
      default:
        goto LABEL_3;
    }

    break;
  }

LABEL_3:
  vretproc(v0);
  v15 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_126_4();
}

uint64_t OUTLINED_FUNCTION_4_37()
{
  *(v0 + 136) = 1;
  *(v0 + 112) = *(v0 + 1664);
  *(v0 + 128) = 0;

  return test_ptr(v0);
}

void OUTLINED_FUNCTION_8_36(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  a36 = 0;
  a37 = 0;
  a34 = 0;
  a35 = 0;
  a32 = 0;
  a33 = 0;

  bzero(&a9, 0xB8uLL);
}

uint64_t OUTLINED_FUNCTION_9_35()
{
  *(v1 + 112) = v0;
  *(v1 + 128) = 0;
  return v1;
}

uint64_t OUTLINED_FUNCTION_14_34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, char a37, int a38, __int16 a39, char a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, char a46)
{

  return ventproc(v46, &a9, &a44, &a40, &a37, &a46);
}

void OUTLINED_FUNCTION_15_33(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  a34 = 0;
  a35 = 0;
  a32 = 0;
  a33 = 0;

  bzero(&a9, 0xB8uLL);
}

void OUTLINED_FUNCTION_40_16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, __int128 a33, __int128 a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  a38 = 0;
  a39 = 0;
  a36 = 0;
  a37 = 0;
  a35 = 0;
  a33 = 0u;
  a34 = 0u;

  bzero(&a10, 0xB8uLL);
}

void OUTLINED_FUNCTION_41_15()
{

  get_parm(v0, v2, v1, -6);
}

void OUTLINED_FUNCTION_55_14()
{

  bzero((v0 - 248), 0xC0uLL);
}

void OUTLINED_FUNCTION_64_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{

  bzero(&a40, 0xC0uLL);
}

double OUTLINED_FUNCTION_81_11@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{

  *&result = savescptr(v25, a1, &a25).n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_83_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, char a36)
{

  return lpta_rpta_loadp(v36, &a36, &a34);
}

void OUTLINED_FUNCTION_84_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  a33 = 0;
  a34 = 0;

  bzero(&a10, 0xB8uLL);
}

uint64_t OUTLINED_FUNCTION_87_9()
{

  return lpta_rpta_loadp(v0, v0 + 1640, v0 + 1656);
}

void OUTLINED_FUNCTION_103_6(uint64_t a1, uint64_t a2)
{

  get_parm(v2, a2, v3, -6);
}

void *OUTLINED_FUNCTION_111_4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return fence_37(v3, 1, a3);
}

uint64_t OUTLINED_FUNCTION_120_4()
{

  return lpta_loadp_setscan_r(v0, v0 + 1320);
}

uint64_t OUTLINED_FUNCTION_127_4()
{

  return lpta_rpta_loadp(v0, &STACK[0x248], &STACK[0x238]);
}

void OUTLINED_FUNCTION_129_4(uint64_t a1, uint64_t a2)
{

  get_parm(a1, a2, v2, -6);
}

void OUTLINED_FUNCTION_130_4(uint64_t a1, uint64_t a2)
{

  get_parm(a1, a2, v2, -6);
}

uint64_t OUTLINED_FUNCTION_136_4()
{

  return vback(v0, 0);
}

uint64_t OUTLINED_FUNCTION_137_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return ventproc(v5, a2, a3, a4, a5, v6 - 248);
}

double OUTLINED_FUNCTION_139_4@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{

  *&result = savescptr(v37, a1, &a37).n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_141_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39, char a40, int a41, __int16 a42, char a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, char a49)
{

  return ventproc(v49, &a10, &a47, &a43, &a40, &a49);
}

uint64_t OUTLINED_FUNCTION_142_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, int a46, char a47, int a48, __int16 a49, char a50, int a51, __int16 a52, char a53, char a54, uint64_t a55, char a56)
{

  return ventproc(v56, &a10, &a54, &a50, &a47, &a56);
}

void OUTLINED_FUNCTION_143_4()
{

  starttest(v0, v1);
}

uint64_t OUTLINED_FUNCTION_149_4()
{

  return rpta_loadpn(v0, v0 + 1336);
}

uint64_t OUTLINED_FUNCTION_150_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, int a53, char a54, int a55, __int16 a56, char a57, int a58, __int16 a59, char a60, char a61, uint64_t a62, char a63)
{

  return ventproc(v63, a2, &a61, &a57, &a54, &a63);
}

double OUTLINED_FUNCTION_151_3@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{

  *&result = savescptr(v26, a1, &a26).n128_u64[0];
  return result;
}

BOOL OUTLINED_FUNCTION_152_3(uint64_t a1, unsigned int a2)
{

  return testFldeq(a1, a2, 5, 3);
}

void *fence_38(uint64_t a1, int a2, uint64_t a3)
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

uint64_t fren_non_phrasal_comma()
{
  OUTLINED_FUNCTION_111_5();
  v13 = *MEMORY[0x277D85DE8];
  v8[23] = 0;
  v8[24] = 0;
  OUTLINED_FUNCTION_53_15();
  bzero(v8, v1);
  OUTLINED_FUNCTION_52_15();
  bzero(v12, v2);
  if (!setjmp(v12) && !ventproc(v0, v8, v11, v10, v9, v12))
  {
    v3 = OUTLINED_FUNCTION_59_14();
    get_parm(v3, v4, v5, -6);
    fence_38(v0, 0, &null_str_15);
  }

  vretproc(v0);
  v6 = *MEMORY[0x277D85DE8];
  return 94;
}

uint64_t find_fren_obligatory_phrase()
{
  OUTLINED_FUNCTION_16_34();
  v314 = *MEMORY[0x277D85DE8];
  memset(v309, 0, sizeof(v309));
  v308 = 0;
  v307[0] = 0;
  v307[1] = 0;
  v306[0] = 0;
  v306[1] = 0;
  v305[0] = 0;
  v305[1] = 0;
  OUTLINED_FUNCTION_40_17(v2, v3, v4, v5, v6, v7, v8, v9, v278, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304);
  OUTLINED_FUNCTION_52_15();
  bzero(v313, v10);
  if (setjmp(v313) || ventproc(v0, &v280, v312, v311, v310, v313))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_43_16();
  OUTLINED_FUNCTION_68_13(v15, v309);
  v16 = OUTLINED_FUNCTION_59_14();
  get_parm(v16, v17, v18, -4);
  push_ptr_init(v0, v307);
  v19 = OUTLINED_FUNCTION_94_9();
  push_ptr_init(v19, v20);
  push_ptr_init(v0, v305);
  v21 = OUTLINED_FUNCTION_47_16();
  push_ptr_init(v21, v22);
  v23 = OUTLINED_FUNCTION_58_14();
  fence_38(v23, v24, v25);
  v26 = OUTLINED_FUNCTION_38_18();
  starttest(v26, v27);
  v28 = OUTLINED_FUNCTION_22_27();
  v30 = lpta_loadp_setscan_l(v28, v29);
  v31 = 0;
  v32 = 0;
  if (!v30)
  {
LABEL_33:
    v117 = v31;
    OUTLINED_FUNCTION_65_13();
    savescptr(v0, v118, v305);
    v119 = advanc(v0);
    v120 = v117;
    v65 = v117;
    if (v119)
    {
      goto LABEL_45;
    }

LABEL_36:
    v32 = 3;
    savescptr(v0, 3, v306);
    v121 = OUTLINED_FUNCTION_9_36();
    if (!testFldeq(v121, v122, v123, 3))
    {
      v124 = OUTLINED_FUNCTION_10_36();
      if (!testFldeq(v124, v125, v126, 9))
      {
        advance_tok(v0);
        OUTLINED_FUNCTION_102_7();
        if (v127)
        {
          goto LABEL_45;
        }

LABEL_40:
        savescptr(v0, 4, v307);
LABEL_41:
        v128 = OUTLINED_FUNCTION_13_35();
        if (!test_synch(v128, v129, v130, v131))
        {
          v132 = OUTLINED_FUNCTION_39_17();
          if (!lpta_loadp_setscan_r(v132, v133))
          {
            OUTLINED_FUNCTION_38_18();
            bspush_ca_scan_boa();
            v134 = OUTLINED_FUNCTION_4_38();
LABEL_81:
            if (testFldeq(v134, v135, v136, v137))
            {
              v65 = v32;
            }

            else
            {
              v65 = 1;
            }

            goto LABEL_45;
          }
        }

        goto LABEL_44;
      }
    }

    goto LABEL_38;
  }

  while (2)
  {
    v33 = OUTLINED_FUNCTION_38_18();
    starttest(v33, v34);
    v35 = OUTLINED_FUNCTION_32_21();
    if (!lpta_loadp_setscan_r(v35, v36))
    {
      v106 = OUTLINED_FUNCTION_11_36();
      if (testFldeq(v106, v107, v108, 11) || advance_tok(v0))
      {
        goto LABEL_44;
      }

      v109 = OUTLINED_FUNCTION_30_23();
      bspush_ca_scan(v109, v110);
      v111 = v32;
LABEL_31:
      v32 = v111;
      v112 = OUTLINED_FUNCTION_13_35();
      v116 = test_synch(v112, v113, v114, v115);
      goto LABEL_78;
    }

LABEL_7:
    v37 = OUTLINED_FUNCTION_34_19();
    starttest(v37, v38);
    v39 = OUTLINED_FUNCTION_32_21();
    if (!lpta_loadp_setscan_l(v39, v40))
    {
LABEL_84:
      OUTLINED_FUNCTION_66_13(15, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305[0]);
      v205 = OUTLINED_FUNCTION_38_18();
      bspush_ca_scan(v205, v206);
      v207 = OUTLINED_FUNCTION_10_36();
      v210 = testFldeq(v207, v208, v209, 4);
      v65 = v32;
      v142 = v32;
      if (v210)
      {
        goto LABEL_45;
      }

LABEL_85:
      v32 = v142;
      v211 = OUTLINED_FUNCTION_11_36();
      if (testFldeq(v211, v212, v213, 4))
      {
        goto LABEL_44;
      }

      v214 = OUTLINED_FUNCTION_2_39();
      if (testFldeq(v214, v215, v216, v217))
      {
        goto LABEL_44;
      }

      if (advance_tok(v0))
      {
        goto LABEL_44;
      }

      v218 = OUTLINED_FUNCTION_39_17();
      if (lpta_loadp_setscan_r(v218, v219))
      {
        goto LABEL_44;
      }

      v220 = OUTLINED_FUNCTION_10_36();
      if (testFldeq(v220, v221, v222, 4))
      {
        goto LABEL_44;
      }

      v223 = OUTLINED_FUNCTION_11_36();
      if (testFldeq(v223, v224, v225, 4))
      {
        goto LABEL_44;
      }

      goto LABEL_27;
    }

LABEL_8:
    v41 = OUTLINED_FUNCTION_38_18();
    starttest(v41, v42);
    v43 = OUTLINED_FUNCTION_32_21();
    lpta_loadp_setscan_l(v43, v44);
    OUTLINED_FUNCTION_102_7();
    if (!v45)
    {
LABEL_92:
      OUTLINED_FUNCTION_66_13(19, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305[0]);
      v226 = OUTLINED_FUNCTION_10_36();
      if (testFldeq(v226, v227, v228, 13))
      {
        goto LABEL_44;
      }

      if (advance_tok(v0))
      {
        goto LABEL_44;
      }

      v229 = OUTLINED_FUNCTION_11_36();
      if (testFldeq(v229, v230, v231, 11))
      {
        goto LABEL_44;
      }

      v232 = advance_tok(v0);
      v65 = v32;
      v120 = v32;
      if (v232)
      {
        goto LABEL_45;
      }

LABEL_110:
      v248 = OUTLINED_FUNCTION_13_35();
      if (!test_synch(v248, v249, v250, v251))
      {
        v252 = OUTLINED_FUNCTION_39_17();
        if (!lpta_loadp_setscan_r(v252, v253))
        {
          v254 = OUTLINED_FUNCTION_3_39();
          if (!testFldeq(v254, v255, v256, v257))
          {
            OUTLINED_FUNCTION_93_10();
            bspush_ca_scan_boa();
            v258 = OUTLINED_FUNCTION_10_36();
            if (testFldeq(v258, v259, v260, 21))
            {
              v65 = v120;
            }

            else
            {
              v65 = 1;
            }

            goto LABEL_45;
          }
        }
      }

LABEL_38:
      v65 = v120;
      goto LABEL_45;
    }

LABEL_9:
    v46 = OUTLINED_FUNCTION_38_18();
    starttest(v46, v47);
    v48 = OUTLINED_FUNCTION_32_21();
    lpta_loadp_setscan_l(v48, v49);
    OUTLINED_FUNCTION_102_7();
    if (!v50)
    {
LABEL_97:
      OUTLINED_FUNCTION_66_13(24, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305[0]);
      v233 = OUTLINED_FUNCTION_10_36();
      if (testFldeq(v233, v234, v235, 2) || advance_tok(v0))
      {
        goto LABEL_44;
      }

      v236 = OUTLINED_FUNCTION_39_17();
      v238 = lpta_loadp_setscan_r(v236, v237);
      v65 = v32;
      if (v238)
      {
        goto LABEL_45;
      }

LABEL_100:
      v239 = OUTLINED_FUNCTION_13_35();
      if (chstream(v239, v240, v241))
      {
        goto LABEL_44;
      }

      OUTLINED_FUNCTION_42_16();
      v116 = test_string_s();
LABEL_78:
      v65 = v32;
      if (!v116)
      {
LABEL_79:
        v11 = 0;
        HIWORD(v308) = 1;
        *(v1 + 2) = 1;
        goto LABEL_4;
      }

      goto LABEL_45;
    }

LABEL_10:
    v51 = OUTLINED_FUNCTION_38_18();
    starttest(v51, v52);
    v53 = OUTLINED_FUNCTION_32_21();
    lpta_loadp_setscan_l(v53, v54);
    OUTLINED_FUNCTION_102_7();
    if (!v56)
    {
LABEL_102:
      v242 = OUTLINED_FUNCTION_13_35();
      if (chstream(v242, v243, v244))
      {
        goto LABEL_44;
      }

      OUTLINED_FUNCTION_42_16();
      v245 = test_string_s();
      v65 = v32;
      if (v245)
      {
        goto LABEL_45;
      }

LABEL_104:
      v246 = OUTLINED_FUNCTION_38_18();
      if (chstream(v246, v247, 4u))
      {
        goto LABEL_44;
      }

      v102 = OUTLINED_FUNCTION_10_36();
      v105 = 2;
      goto LABEL_106;
    }

LABEL_11:
    v57 = v55;
    v58 = OUTLINED_FUNCTION_38_18();
    starttest(v58, v59);
    v60 = OUTLINED_FUNCTION_44_16();
    if (!lpta_loadp_setscan_r(v60, v61))
    {
      v62 = OUTLINED_FUNCTION_38_18();
      bspush_ca_scan(v62, v63);
      OUTLINED_FUNCTION_17_34();
      v64 = test_string_s();
      v65 = v57;
      v66 = v57;
      if (v64)
      {
        goto LABEL_45;
      }

LABEL_13:
      v32 = v66;
      v67 = OUTLINED_FUNCTION_13_35();
      if (test_synch(v67, v68, v69, v70))
      {
        goto LABEL_44;
      }

      v71 = OUTLINED_FUNCTION_33_21();
      starttest(v71, v72);
      v73 = OUTLINED_FUNCTION_32_21();
      v75 = lpta_loadp_setscan_l(v73, v74);
      v76 = v32;
      if (v75)
      {
LABEL_15:
        v77 = OUTLINED_FUNCTION_38_18();
        starttest(v77, v78);
        v79 = OUTLINED_FUNCTION_32_21();
        if (!lpta_loadp_setscan_l(v79, v80))
        {
LABEL_16:
          OUTLINED_FUNCTION_66_13(47, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305[0]);
          if (advanc(v0))
          {
            goto LABEL_44;
          }

          v81 = OUTLINED_FUNCTION_2_39();
          if (testFldeq(v81, v82, v83, v84))
          {
            goto LABEL_44;
          }

          v85 = advance_tok(v0);
          v65 = v32;
          if (v85)
          {
            goto LABEL_45;
          }

LABEL_19:
          OUTLINED_FUNCTION_45_16(48, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300, v301, v302, v303);
          v86 = OUTLINED_FUNCTION_39_17();
          if (lpta_loadp_setscan_r(v86, v87))
          {
            goto LABEL_44;
          }

          if (advance_tok(v0))
          {
            goto LABEL_44;
          }

          v88 = OUTLINED_FUNCTION_2_39();
          if (testFldeq(v88, v89, v90, v91) || advance_tok(v0))
          {
            goto LABEL_44;
          }

          v92 = OUTLINED_FUNCTION_38_18();
          starttest(v92, v93);
          v94 = OUTLINED_FUNCTION_15_34();
          if (!lpta_loadp_setscan_l(v94, v95))
          {
LABEL_24:
            v96 = OUTLINED_FUNCTION_13_35();
            if (chstream(v96, v97, v98))
            {
              goto LABEL_44;
            }

            OUTLINED_FUNCTION_17_34();
            v99 = test_string_s();
            v65 = v32;
            if (v99)
            {
              goto LABEL_45;
            }

LABEL_26:
            v100 = OUTLINED_FUNCTION_38_18();
            if (chstream(v100, v101, 4u))
            {
              goto LABEL_44;
            }

LABEL_27:
            v102 = OUTLINED_FUNCTION_2_39();
LABEL_106:
            if (!testFldeq(v102, v103, v104, v105))
            {
LABEL_77:
              v116 = advance_tok(v0);
              goto LABEL_78;
            }

            goto LABEL_44;
          }
        }
      }

      else
      {
LABEL_117:
        v32 = v76;
        OUTLINED_FUNCTION_66_13(33, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305[0]);
        if (advanc(v0))
        {
          goto LABEL_44;
        }

        v261 = OUTLINED_FUNCTION_38_18();
        bspush_ca_scan(v261, v262);
        v263 = OUTLINED_FUNCTION_1_40();
        v267 = testFldeq(v263, v264, v265, v266);
        v65 = v32;
        v143 = v32;
        if (v267)
        {
          goto LABEL_45;
        }

LABEL_119:
        v32 = v143;
        v268 = advance_tok(v0);
        v65 = v32;
        if (v268)
        {
LABEL_45:
          v138 = v0[13];
          if (v138)
          {
            v139 = OUTLINED_FUNCTION_56_14(v138);
            v32 = v140;
          }

          else
          {
            v139 = vback(v0, v65);
            v32 = 0;
          }

          v141 = v139;
          v11 = 94;
          v111 = v32;
          v142 = v32;
          v66 = v32;
          v143 = v32;
          v144 = v32;
          v145 = v32;
          switch(v141)
          {
            case 1:
              continue;
            case 2:
              v31 = v32;
              goto LABEL_33;
            case 3:
              v120 = v32;
              goto LABEL_36;
            case 4:
              goto LABEL_40;
            case 5:
              goto LABEL_41;
            case 6:
              bspop_boa(v0);
              v146 = advance_tok(v0);
              v65 = v32;
              if (v146)
              {
                goto LABEL_45;
              }

              v147 = OUTLINED_FUNCTION_38_18();
              starttest(v147, v148);
              v149 = OUTLINED_FUNCTION_32_21();
              if (lpta_loadp_setscan_r(v149, v150))
              {
                goto LABEL_79;
              }

              v151 = OUTLINED_FUNCTION_10_36();
              v154 = testFldeq(v151, v152, v153, 21);
              v65 = v32;
              if (!v154)
              {
                v155 = advance_tok(v0);
                v65 = v32;
                if (!v155)
                {
                  lpta_rpta_loadp(v0, v307, v306);
                  v156 = OUTLINED_FUNCTION_42_16();
                  v158 = setd_lookup(v156, v157, 166);
                  v65 = v32;
                  if (!v158)
                  {
                    goto LABEL_3;
                  }
                }
              }

              goto LABEL_45;
            case 7:
            case 8:
            case 44:
            case 45:
            case 52:
              goto LABEL_79;
            case 9:
              goto LABEL_7;
            case 10:
              v170 = OUTLINED_FUNCTION_38_18();
              bspush_ca_scan(v170, v171);
              v172 = OUTLINED_FUNCTION_9_36();
              v175 = 5;
              goto LABEL_63;
            case 11:
              goto LABEL_31;
            case 12:
              v172 = OUTLINED_FUNCTION_10_36();
              v175 = 13;
LABEL_63:
              v176 = testFldeq(v172, v173, v174, v175);
              v65 = v32;
              if (!v176)
              {
                goto LABEL_64;
              }

              goto LABEL_45;
            case 13:
LABEL_64:
              v177 = advance_tok(v0);
              v111 = v32;
              v65 = v32;
              if (!v177)
              {
                goto LABEL_31;
              }

              goto LABEL_45;
            case 14:
              goto LABEL_8;
            case 15:
              goto LABEL_84;
            case 16:
              v159 = OUTLINED_FUNCTION_10_36();
              v163 = testFldeq(v159, v160, v161, v162);
              v142 = v32;
              v65 = v32;
              if (!v163)
              {
                goto LABEL_85;
              }

              goto LABEL_45;
            case 17:
              goto LABEL_85;
            case 18:
              goto LABEL_9;
            case 19:
              goto LABEL_92;
            case 20:
              v120 = v32;
              goto LABEL_110;
            case 21:
              bspop_boa(v0);
              OUTLINED_FUNCTION_38_18();
              bspush_ca_scan_boa();
              v134 = OUTLINED_FUNCTION_10_36();
              v137 = 23;
              goto LABEL_81;
            case 22:
              bspop_boa(v0);
              goto LABEL_77;
            case 23:
              goto LABEL_10;
            case 24:
              goto LABEL_97;
            case 25:
              goto LABEL_100;
            case 26:
              v55 = v32;
              goto LABEL_11;
            case 27:
              goto LABEL_102;
            case 28:
              goto LABEL_104;
            case 30:
              OUTLINED_FUNCTION_17_34();
              v164 = test_string_s();
              v66 = v32;
              v65 = v32;
              if (!v164)
              {
                goto LABEL_13;
              }

              goto LABEL_45;
            case 31:
              goto LABEL_13;
            case 32:
              goto LABEL_15;
            case 33:
              v76 = v32;
              goto LABEL_117;
            case 34:
              v165 = OUTLINED_FUNCTION_9_36();
              v169 = testFldeq(v165, v166, v167, v168);
              v143 = v32;
              v65 = v32;
              if (!v169)
              {
                goto LABEL_119;
              }

              goto LABEL_45;
            case 35:
              goto LABEL_119;
            case 36:
              break;
            case 37:
              v183 = OUTLINED_FUNCTION_9_36();
              v187 = testFldeq(v183, v184, v185, v186);
              v144 = v32;
              v65 = v32;
              if (!v187)
              {
                goto LABEL_69;
              }

              goto LABEL_45;
            case 38:
              goto LABEL_69;
            case 40:
              goto LABEL_71;
            case 41:
              goto LABEL_73;
            case 42:
              v178 = OUTLINED_FUNCTION_9_36();
              v182 = testFldeq(v178, v179, v180, v181);
              v145 = v32;
              v65 = v32;
              if (!v182)
              {
                goto LABEL_75;
              }

              goto LABEL_45;
            case 43:
              goto LABEL_75;
            case 47:
              goto LABEL_16;
            case 48:
              goto LABEL_19;
            case 50:
              goto LABEL_24;
            case 51:
              goto LABEL_26;
            default:
              goto LABEL_4;
          }
        }

        OUTLINED_FUNCTION_45_16(36, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300, v301, v302, v303);
        v269 = OUTLINED_FUNCTION_39_17();
        if (lpta_loadp_setscan_r(v269, v270) || advance_tok(v0))
        {
          goto LABEL_44;
        }

        v271 = OUTLINED_FUNCTION_38_18();
        bspush_ca_scan(v271, v272);
        v273 = OUTLINED_FUNCTION_1_40();
        v277 = testFldeq(v273, v274, v275, v276);
        v65 = v32;
        v144 = v32;
        if (v277)
        {
          goto LABEL_45;
        }

LABEL_69:
        v32 = v144;
        if (advance_tok(v0))
        {
          goto LABEL_44;
        }

        v188 = OUTLINED_FUNCTION_38_18();
        starttest(v188, v189);
        v190 = OUTLINED_FUNCTION_15_34();
        if (!lpta_loadp_setscan_l(v190, v191))
        {
LABEL_71:
          v192 = OUTLINED_FUNCTION_13_35();
          if (!chstream(v192, v193, v194))
          {
            OUTLINED_FUNCTION_17_34();
            v195 = test_string_s();
            v65 = v32;
            if (v195)
            {
              goto LABEL_45;
            }

LABEL_73:
            v196 = OUTLINED_FUNCTION_38_18();
            if (!chstream(v196, v197, 4u))
            {
              v198 = OUTLINED_FUNCTION_38_18();
              bspush_ca_scan(v198, v199);
              v200 = OUTLINED_FUNCTION_1_40();
              v204 = testFldeq(v200, v201, v202, v203);
              v65 = v32;
              v145 = v32;
              if (v204)
              {
                goto LABEL_45;
              }

LABEL_75:
              v32 = v145;
              goto LABEL_77;
            }
          }

LABEL_44:
          v65 = v32;
          goto LABEL_45;
        }
      }
    }

    break;
  }

LABEL_3:
  v11 = 94;
LABEL_4:
  v12 = v11;
  vretproc(v0);
  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t find_fren_potential_phrase()
{
  OUTLINED_FUNCTION_16_34();
  v36 = *MEMORY[0x277D85DE8];
  v33 = 0;
  v34 = 0;
  v31 = 0;
  v32 = 0;
  HIDWORD(v30) = 0;
  OUTLINED_FUNCTION_53_15();
  bzero(v29, v4);
  OUTLINED_FUNCTION_52_15();
  bzero(v35, v5);
  if (setjmp(v35))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_92_10();
  if (ventproc(v0, v6, v7, v8, v9, v35))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_43_16();
  v13 = OUTLINED_FUNCTION_67_13();
  OUTLINED_FUNCTION_82_11(v13, v14);
  v15 = OUTLINED_FUNCTION_83_11();
  get_parm(v15, v16, v1, -4);
  fence_38(v0, 0, &null_str_15);
  OUTLINED_FUNCTION_46_16();
  if (subord_conj())
  {
LABEL_6:
    OUTLINED_FUNCTION_26_27();
    if (relpro())
    {
LABEL_7:
      OUTLINED_FUNCTION_26_27();
      if (subj_pro())
      {
LABEL_8:
        OUTLINED_FUNCTION_26_27();
        coord_conj();
        if (v17)
        {
LABEL_9:
          OUTLINED_FUNCTION_26_27();
          if (noun_phrase())
          {
LABEL_10:
            OUTLINED_FUNCTION_26_27();
            if (prep_phrase())
            {
LABEL_11:
              OUTLINED_FUNCTION_26_27();
              if (verb_phrase())
              {
LABEL_3:
                v10 = 94;
                goto LABEL_4;
              }
            }
          }
        }
      }
    }
  }

  while (2)
  {
    v18 = OUTLINED_FUNCTION_46_16();
    starttest(v18, v19);
    v20 = OUTLINED_FUNCTION_67_13();
    if (!lpta_loadp_setscan_l(v20, v21))
    {
      v22 = OUTLINED_FUNCTION_37_18();
      if (testFldeq(v22, v23, 4, 1) || advance_tok(v0))
      {
        v24 = *(v0 + 104);
        if (v24)
        {
          v25 = OUTLINED_FUNCTION_56_14(v24);
        }

        else
        {
          v26 = OUTLINED_FUNCTION_69_13();
          v25 = vback(v26, v27);
        }

        switch(v25)
        {
          case 1:
            goto LABEL_6;
          case 2:
            continue;
          case 3:
            goto LABEL_7;
          case 4:
            goto LABEL_8;
          case 5:
            goto LABEL_9;
          case 6:
            goto LABEL_10;
          case 7:
            goto LABEL_11;
          case 9:
            goto LABEL_20;
          case 10:
            break;
          default:
            goto LABEL_3;
        }
      }

      OUTLINED_FUNCTION_79_12(10, v28, v29[0], v29[1], v29[2], v29[3], v29[4], v29[5], v29[6], v29[7], v29[8], v29[9], v29[10], v29[11], v29[12], v29[13], v29[14], v29[15], v29[16], v29[17], v29[18], v29[19], v29[20], v29[21], v29[22], v30, v31, v32, v33);
    }

    break;
  }

LABEL_20:
  *(v3 + 8) = v34;
  *(v2 + 8) = v32;
  v1[1] = HIWORD(v30);
  v10 = 0;
LABEL_4:
  vretproc(v0);
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t subord_conj()
{
  OUTLINED_FUNCTION_104_7();
  v456 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_19_29(v5, v6, v7, v8, v9, v10, v11, v12, v295, v300, v305, v310, v315, v320, v325, v330, v335, v340, v345, v350, v355, v360, v365, v370, v375, v380, v385, v390, v395, v400, v405, v410, v415, v420, v425, SHIDWORD(v425), v430, v434, v438, v442);
  OUTLINED_FUNCTION_52_15();
  OUTLINED_FUNCTION_100_7(v13, v14, v15, v16, v17, v18, v19, v20, v296, v301, v306, v311, v316, v321, v326, v331, v336, v341, v346, v351, v356, v361, v366, v371, v376, v381, v386, v391, v396, v401, v406, v411, v416, v421, v426, v431, v435, v439, v443, v446, v448, v450, v452, v454);
  if (setjmp(v4) || (OUTLINED_FUNCTION_25_27(), OUTLINED_FUNCTION_98_8(v21, v22, v23, v24, v25, v26, v27, v28, v297, v302, v307, v312, v317, v322, v327, v332, v337, v342, v347, v352, v357, v362, v367, v372, v377, v382, v387, v392, v397, v402, v407, v412, v417, v422, v427, v432, v436, v440, v444, v447, v449, v451, v453, v455)))
  {
LABEL_3:
    vretproc(v0);
    result = 94;
  }

  else
  {
    v31 = OUTLINED_FUNCTION_46_16();
    OUTLINED_FUNCTION_82_11(v31, v32);
    v33 = OUTLINED_FUNCTION_49_16();
    get_parm(v33, v34, v3, -6);
    OUTLINED_FUNCTION_55_15(v35, v36, v37, v38, v39, v40, v41, v42, v298, v303, v308, v313, v318, v323, v328, v333, v338, v343, v348, v353, v358, v363, v368, v373, v378, v383, v388, v393, v398, v403, v408, v413, v418, v423, *v428, v428[4]);
    v43 = OUTLINED_FUNCTION_47_16();
    push_ptr_init(v43, v44);
    v45 = OUTLINED_FUNCTION_58_14();
    fence_38(v45, v46, v47);
    v48 = OUTLINED_FUNCTION_84_11();
    fence_38(v48, v49, v50);
    v51 = OUTLINED_FUNCTION_105_6();
    starttest(v51, v52);
    OUTLINED_FUNCTION_27_25();
    bspush_ca_boa();
    v53 = OUTLINED_FUNCTION_22_27();
    if (lpta_loadp_setscan_r(v53, v54))
    {
      v55 = 0;
    }

    else
    {
      v56 = OUTLINED_FUNCTION_9_36();
      if (testFldeq(v56, v57, v58, 7))
      {
        v55 = 0;
      }

      else
      {
        v59 = OUTLINED_FUNCTION_88_10();
        bspush_ca_scan(v59, v60);
        v61 = OUTLINED_FUNCTION_37_18();
        v63 = testFldeq(v61, v62, 3, 12);
        v64 = 0;
        v55 = 0;
        if (!v63)
        {
LABEL_10:
          v65 = v64;
          if (advance_tok(v0))
          {
            v55 = v65;
          }

          else
          {
            v55 = 1;
          }
        }
      }
    }

    while (2)
    {
      v85 = *(v0 + 104);
      if (v85)
      {
        v86 = OUTLINED_FUNCTION_56_14(v85);
        v94 = v87;
      }

      else
      {
        v86 = vback(v0, v55);
        v94 = 0;
      }

      v64 = v94;
      switch(v86)
      {
        case 1:
          v95 = OUTLINED_FUNCTION_38_18();
          starttest(v95, v96);
          v97 = OUTLINED_FUNCTION_12_36();
          if (lpta_loadp_setscan_l(v97, v98))
          {
            goto LABEL_30;
          }

          goto LABEL_50;
        case 2:
          bspop_boa(v0);
          goto LABEL_3;
        case 3:
          v186 = OUTLINED_FUNCTION_37_18();
          v188 = testFldeq(v186, v187, 4, 1);
          v64 = v94;
          v55 = v94;
          if (!v188)
          {
            goto LABEL_10;
          }

          continue;
        case 4:
          goto LABEL_10;
        case 5:
LABEL_30:
          v99 = OUTLINED_FUNCTION_38_18();
          starttest(v99, v100);
          v101 = OUTLINED_FUNCTION_12_36();
          if (lpta_loadp_setscan_l(v101, v102))
          {
            goto LABEL_31;
          }

          goto LABEL_43;
        case 6:
LABEL_50:
          OUTLINED_FUNCTION_45_16(6, v299, v304, v309, v314, v319, v324, v329, v334, v339, v344, v349, v354, v359, v364, v369, v374, v379, v384, v389, v394, v399, v404, v409, v414, v419);
          v154 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v154, v155);
          goto LABEL_102;
        case 7:
          v193 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v193, v194);
          v195 = OUTLINED_FUNCTION_1_40();
          v199 = testFldeq(v195, v196, v197, v198);
          v55 = v94;
          if (v199)
          {
            continue;
          }

          v200 = advance_tok(v0);
          v55 = v94;
          if (v200)
          {
            continue;
          }

          v201 = OUTLINED_FUNCTION_30_23();
          bspush_ca_scan(v201, v202);
          goto LABEL_99;
        case 8:
          goto LABEL_102;
        case 9:
          v246 = OUTLINED_FUNCTION_9_36();
          v249 = testFldeq(v246, v247, v248, 4);
          v55 = v94;
          if (v249)
          {
            continue;
          }

          v167 = OUTLINED_FUNCTION_11_36();
          v170 = 9;
          goto LABEL_97;
        case 10:
          v191 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v191, v192);
          v167 = OUTLINED_FUNCTION_9_36();
          v170 = 6;
          goto LABEL_97;
        case 11:
        case 14:
          goto LABEL_99;
        case 12:
          v167 = OUTLINED_FUNCTION_10_36();
          v170 = 15;
LABEL_97:
          v250 = testFldeq(v167, v168, v169, v170);
          v55 = v94;
          if (!v250)
          {
            goto LABEL_98;
          }

          continue;
        case 13:
LABEL_98:
          v251 = advance_tok(v0);
          v55 = v94;
          if (v251)
          {
            continue;
          }

LABEL_99:
          v252 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v252, v253);
          v171 = OUTLINED_FUNCTION_4_38();
LABEL_100:
          v254 = testFldeq(v171, v172, v173, v174);
          v55 = v94;
          if (!v254)
          {
LABEL_101:
            v255 = advance_tok(v0);
            v55 = v94;
            if (!v255)
            {
LABEL_102:
              v256 = OUTLINED_FUNCTION_2_39();
              v260 = testFldeq(v256, v257, v258, v259);
              v55 = v94;
              if (!v260)
              {
                v261 = advance_tok(v0);
                v55 = v94;
                if (!v261)
                {
                  v262 = OUTLINED_FUNCTION_15_34();
                  v264 = lpta_loadp_setscan_r(v262, v263);
                  v55 = v94;
                  if (!v264)
                  {
                    v265 = OUTLINED_FUNCTION_10_36();
                    v268 = testFldeq(v265, v266, v267, 34);
                    v55 = v94;
                    if (!v268)
                    {
                      v269 = advance_tok(v0);
                      v55 = v94;
                      if (!v269)
                      {
                        OUTLINED_FUNCTION_38_18();
                        bspush_ca_scan_boa();
                        v270 = OUTLINED_FUNCTION_38_18();
                        bspush_ca_scan(v270, v271);
                        v175 = OUTLINED_FUNCTION_10_36();
                        v178 = 11;
LABEL_60:
                        v179 = testFldeq(v175, v176, v177, v178);
                        v55 = v94;
                        if (!v179)
                        {
LABEL_61:
                          v180 = advance_tok(v0);
                          v55 = v94;
                          if (!v180)
                          {
                            v181 = OUTLINED_FUNCTION_2_39();
                            v185 = testFldeq(v181, v182, v183, v184);
                            v55 = v94;
                            if (!v185)
                            {
                              if (advance_tok(v0))
                              {
                                v55 = v94;
                              }

                              else
                              {
                                v55 = 1;
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

          continue;
        case 15:
          v171 = OUTLINED_FUNCTION_3_39();
          goto LABEL_100;
        case 16:
          goto LABEL_101;
        case 17:
          bspop_boa(v0);
          goto LABEL_121;
        case 18:
          v175 = OUTLINED_FUNCTION_1_40();
          goto LABEL_60;
        case 19:
          goto LABEL_61;
        case 20:
        case 35:
        case 46:
          goto LABEL_121;
        case 21:
LABEL_31:
          v103 = OUTLINED_FUNCTION_38_18();
          starttest(v103, v104);
          v105 = OUTLINED_FUNCTION_21_28();
          if (lpta_loadp_setscan_r(v105, v106))
          {
            goto LABEL_34;
          }

          OUTLINED_FUNCTION_42_16();
          if (test_string_s())
          {
            goto LABEL_34;
          }

          v107 = OUTLINED_FUNCTION_12_36();
          if (lpta_loadp_setscan_l(v107, v108))
          {
            goto LABEL_34;
          }

          goto LABEL_51;
        case 22:
LABEL_43:
          OUTLINED_FUNCTION_45_16(22, v299, v304, v309, v314, v319, v324, v329, v334, v339, v344, v349, v354, v359, v364, v369, v374, v379, v384, v389, v394, v399, v404, v409, v414, v419);
          v136 = OUTLINED_FUNCTION_10_36();
          v139 = testFldeq(v136, v137, v138, 1);
          v55 = v94;
          if (v139)
          {
            continue;
          }

          v140 = advance_tok(v0);
          v55 = v94;
          if (v140)
          {
            continue;
          }

          v141 = OUTLINED_FUNCTION_10_36();
          v144 = testFldeq(v141, v142, v143, 13);
          v55 = v94;
          if (v144)
          {
            continue;
          }

          v145 = advance_tok(v0);
          v55 = v94;
          if (v145)
          {
            continue;
          }

          v146 = OUTLINED_FUNCTION_15_34();
          v148 = lpta_loadp_setscan_r(v146, v147);
          v55 = v94;
          if (v148)
          {
            continue;
          }

          v149 = advance_tok(v0);
          v55 = v94;
          if (v149)
          {
            continue;
          }

          v150 = OUTLINED_FUNCTION_6_37();
          goto LABEL_69;
        case 23:
LABEL_34:
          v109 = OUTLINED_FUNCTION_38_18();
          starttest(v109, v110);
          v111 = OUTLINED_FUNCTION_12_36();
          if (lpta_loadp_setscan_l(v111, v112))
          {
            goto LABEL_35;
          }

          goto LABEL_37;
        case 24:
LABEL_51:
          OUTLINED_FUNCTION_45_16(24, v299, v304, v309, v314, v319, v324, v329, v334, v339, v344, v349, v354, v359, v364, v369, v374, v379, v384, v389, v394, v399, v404, v409, v414, v419);
          v156 = OUTLINED_FUNCTION_9_36();
          v159 = testFldeq(v156, v157, v158, 5);
          v55 = v94;
          if (v159)
          {
            continue;
          }

          v160 = advance_tok(v0);
          v55 = v94;
          if (v160)
          {
            continue;
          }

          v161 = OUTLINED_FUNCTION_15_34();
          v163 = lpta_loadp_setscan_r(v161, v162);
          v55 = v94;
          if (v163)
          {
            continue;
          }

          v164 = advance_tok(v0);
          v55 = v94;
          if (v164)
          {
            continue;
          }

          v165 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v165, v166);
          v150 = OUTLINED_FUNCTION_3_39();
LABEL_69:
          v189 = testFldeq(v150, v151, v152, v153);
          v55 = v94;
          if (v189)
          {
            continue;
          }

LABEL_70:
          v190 = advance_tok(v0);
          v55 = v94;
          if (!v190)
          {
            goto LABEL_122;
          }

          continue;
        case 25:
          v150 = OUTLINED_FUNCTION_4_38();
          goto LABEL_69;
        case 26:
          goto LABEL_70;
        case 27:
LABEL_35:
          v113 = OUTLINED_FUNCTION_38_18();
          starttest(v113, v114);
          v115 = OUTLINED_FUNCTION_38_18();
          bspush_ca(v115);
          v116 = OUTLINED_FUNCTION_21_28();
          v118 = lpta_loadp_setscan_r(v116, v117);
          v55 = v94;
          if (!v118)
          {
            goto LABEL_112;
          }

          continue;
        case 28:
LABEL_37:
          OUTLINED_FUNCTION_45_16(28, v299, v304, v309, v314, v319, v324, v329, v334, v339, v344, v349, v354, v359, v364, v369, v374, v379, v384, v389, v394, v399, v404, v409, v414, v419);
          v119 = OUTLINED_FUNCTION_2_39();
          v123 = testFldeq(v119, v120, v121, v122);
          v55 = v94;
          if (v123)
          {
            continue;
          }

          v124 = advance_tok(v0);
          v55 = v94;
          if (v124)
          {
            continue;
          }

          v125 = OUTLINED_FUNCTION_15_34();
          v127 = lpta_loadp_setscan_r(v125, v126);
          v55 = v94;
          if (v127)
          {
            continue;
          }

          v128 = OUTLINED_FUNCTION_10_36();
          v131 = testFldeq(v128, v129, v130, 6);
          v55 = v94;
          if (v131)
          {
            continue;
          }

          v132 = OUTLINED_FUNCTION_11_36();
          v135 = testFldeq(v132, v133, v134, 12);
          v55 = v94;
          if (v135)
          {
            continue;
          }

          v77 = OUTLINED_FUNCTION_9_36();
          v80 = 7;
          goto LABEL_22;
        case 29:
          v203 = OUTLINED_FUNCTION_38_18();
          starttest(v203, v204);
          v213 = OUTLINED_FUNCTION_0_41(v205, v206, v207, v208, v209, v210, v211, v212, v299, v304, v309, v314, v319, v324, v329, v334, v339, v344, v349, v354, v359, v364, v369, v374, v379, v384, v389, v394, v399, v404, v409, v414, v419, v424, v429, v433, v437, v441, v445);
          setscan_nof_l(v213);
          if (v214)
          {
            goto LABEL_77;
          }

          goto LABEL_88;
        case 30:
          v277 = OUTLINED_FUNCTION_21_28();
          v279 = lpta_loadp_setscan_r(v277, v278);
          v55 = v94;
          if (v279)
          {
            continue;
          }

LABEL_112:
          OUTLINED_FUNCTION_17_34();
          v280 = test_string_s();
          v55 = v94;
          if (!v280)
          {
            goto LABEL_113;
          }

          continue;
        case 31:
LABEL_113:
          v281 = OUTLINED_FUNCTION_33_21();
          starttest(v281, v282);
          v283 = OUTLINED_FUNCTION_20_29();
          if (lpta_loadp_setscan_r(v283, v284))
          {
            goto LABEL_114;
          }

          v81 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v81, v82);
          v77 = OUTLINED_FUNCTION_1_40();
          goto LABEL_22;
        case 32:
LABEL_114:
          v285 = OUTLINED_FUNCTION_38_18();
          starttest(v285, v286);
          v287 = OUTLINED_FUNCTION_12_36();
          v86 = lpta_loadp_setscan_l(v287, v288);
          if (v86)
          {
            goto LABEL_115;
          }

          v77 = OUTLINED_FUNCTION_8_37();
LABEL_22:
          v83 = testFldeq(v77, v78, v79, v80);
          v55 = v94;
          if (v83)
          {
            continue;
          }

LABEL_23:
          v84 = advance_tok(v0);
          goto LABEL_24;
        case 33:
          v77 = OUTLINED_FUNCTION_9_36();
          goto LABEL_22;
        case 34:
          goto LABEL_23;
        case 36:
LABEL_115:
          OUTLINED_FUNCTION_0_41(v86, v87, v88, v89, v90, v91, v92, v93, v299, v304, v309, v314, v319, v324, v329, v334, v339, v344, v349, v354, v359, v364, v369, v374, v379, v384, v389, v394, v399, v404, v409, v414, v419, v424, v429, v433, v437, v441, v445);
          if (!lpta_tstmovel())
          {
            v289 = OUTLINED_FUNCTION_42_16();
            setscan_l(v289);
            if (!v290)
            {
              OUTLINED_FUNCTION_42_16();
              if (!test_string_s())
              {
                goto LABEL_118;
              }
            }
          }

          goto LABEL_120;
        case 37:
        case 44:
        case 47:
          goto LABEL_120;
        case 38:
LABEL_118:
          v231 = 38;
          goto LABEL_119;
        case 39:
LABEL_77:
          v215 = OUTLINED_FUNCTION_21_28();
          if (lpta_loadp_setscan_r(v215, v216))
          {
            goto LABEL_120;
          }

          OUTLINED_FUNCTION_95_9();
          if (test_string_s())
          {
            goto LABEL_120;
          }

          *(v0 + 136) = 1;
          OUTLINED_FUNCTION_5_37();
          if (lpta_tstmover())
          {
            goto LABEL_82;
          }

          v217 = OUTLINED_FUNCTION_42_16();
          setscan_r(v217);
          if (v218)
          {
            goto LABEL_82;
          }

          OUTLINED_FUNCTION_17_34();
          if (test_string_s())
          {
            goto LABEL_82;
          }

          goto LABEL_121;
        case 40:
LABEL_88:
          OUTLINED_FUNCTION_45_16(40, v299, v304, v309, v314, v319, v324, v329, v334, v339, v344, v349, v354, v359, v364, v369, v374, v379, v384, v389, v394, v399, v404, v409, v414, v419);
          v232 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v232, v233);
          goto LABEL_89;
        case 41:
          v272 = OUTLINED_FUNCTION_10_36();
          v275 = testFldeq(v272, v273, v274, 8);
          v55 = v94;
          if (v275)
          {
            continue;
          }

          v276 = advance_tok(v0);
          v55 = v94;
          if (v276)
          {
            continue;
          }

          goto LABEL_89;
        case 42:
LABEL_89:
          v234 = OUTLINED_FUNCTION_2_39();
          v238 = testFldeq(v234, v235, v236, v237);
          v55 = v94;
          if (!v238)
          {
            v239 = advance_tok(v0);
            v55 = v94;
            if (!v239)
            {
              OUTLINED_FUNCTION_54_15();
              v240 = OUTLINED_FUNCTION_5_37();
              v241 = setscan_nof_r(v240);
              v55 = v94;
              if (!v241)
              {
                goto LABEL_92;
              }
            }
          }

          continue;
        case 43:
LABEL_92:
          v242 = OUTLINED_FUNCTION_13_35();
          v245 = chstream(v242, v243, v244);
          v55 = v94;
          if (v245)
          {
            continue;
          }

          OUTLINED_FUNCTION_42_16();
          v84 = test_string_s();
LABEL_24:
          v55 = v94;
          if (v84)
          {
            continue;
          }

          goto LABEL_121;
        case 45:
LABEL_82:
          v219 = OUTLINED_FUNCTION_38_18();
          starttest(v219, v220);
          v221 = OUTLINED_FUNCTION_12_36();
          if (!lpta_loadp_setscan_l(v221, v222) && !advanc(v0))
          {
            goto LABEL_84;
          }

          goto LABEL_120;
        case 48:
LABEL_84:
          v223 = OUTLINED_FUNCTION_13_35();
          v226 = chstream(v223, v224, v225);
          v55 = v94;
          if (!v226)
          {
            OUTLINED_FUNCTION_28_24();
            v227 = test_string_s();
            v55 = v94;
            if (!v227)
            {
              goto LABEL_86;
            }
          }

          continue;
        case 49:
LABEL_86:
          v228 = OUTLINED_FUNCTION_38_18();
          v230 = chstream(v228, v229, 4u);
          v55 = v94;
          if (!v230)
          {
            goto LABEL_87;
          }

          continue;
        case 50:
LABEL_87:
          v231 = 50;
LABEL_119:
          OUTLINED_FUNCTION_61_14(v231, v299, v304, v309, v314, v319, v324, v329, v334, v339, v344, v349, v354, v359, v364, v369, v374, v379, v384, v389, v394, v399, v404, v409, v414, v419, v424, v429, v433, v437, v441);
LABEL_120:
          HIWORD(v429) = 2;
LABEL_121:
          v291 = OUTLINED_FUNCTION_38_18();
          starttest(v291, v292);
          v293 = OUTLINED_FUNCTION_12_36();
          if (!lpta_loadp_setscan_l(v293, v294) && !advanc(v0))
          {
            goto LABEL_14;
          }

          goto LABEL_122;
        case 51:
          goto LABEL_122;
        case 52:
LABEL_14:
          v66 = OUTLINED_FUNCTION_13_35();
          v69 = chstream(v66, v67, v68);
          v55 = v94;
          if (v69)
          {
            continue;
          }

          v70 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v70, v71);
LABEL_16:
          OUTLINED_FUNCTION_42_16();
          v72 = test_string_s();
          v55 = v94;
          if (v72)
          {
            continue;
          }

LABEL_17:
          OUTLINED_FUNCTION_17_34();
          v73 = test_string_s();
          v55 = v94;
          if (v73)
          {
            continue;
          }

LABEL_18:
          v74 = OUTLINED_FUNCTION_38_18();
          v76 = chstream(v74, v75, 4u);
          v55 = v94;
          if (v76)
          {
            continue;
          }

LABEL_123:
          OUTLINED_FUNCTION_61_14(56, v299, v304, v309, v314, v319, v324, v329, v334, v339, v344, v349, v354, v359, v364, v369, v374, v379, v384, v389, v394, v399, v404, v409, v414, v419, v424, v429, v433, v437, v441);
LABEL_122:
          *(v2 + 8) = v445;
          *(v1 + 2) = HIWORD(v429);
          vretproc(v0);
          result = 0;
          break;
        case 53:
          goto LABEL_16;
        case 54:
          goto LABEL_17;
        case 55:
          goto LABEL_18;
        case 56:
          goto LABEL_123;
        default:
          goto LABEL_3;
      }

      break;
    }
  }

  v30 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t relpro()
{
  OUTLINED_FUNCTION_16_34();
  v1008 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_19_29(v2, v3, v4, v5, v6, v7, v8, v9, v864, v869, v874, v879, v884, v889, v894, v899, v904, v909, v914, v919, v924, v929, v934, v939, v944, v949, v954, v959, v964, v969, v974, v979, v984, v989, v994, SHIDWORD(v994), v999, v1000, v1001, v1002);
  OUTLINED_FUNCTION_52_15();
  OUTLINED_FUNCTION_100_7(v10, v11, v12, v13, v14, v15, v16, v17, v865, v870, v875, v880, v885, v890, v895, v900, v905, v910, v915, v920, v925, v930, v935, v940, v945, v950, v955, v960, v965, v970, v975, v980, v985, v990, v995, v999, v1000, v1001, v1002, v1003, v1004, v1005, v1006, v1007);
  if (setjmp(v1) || (OUTLINED_FUNCTION_25_27(), OUTLINED_FUNCTION_98_8(v18, v19, v20, v21, v22, v23, v24, v25, v866, v871, v876, v881, v886, v891, v896, v901, v906, v911, v916, v921, v926, v931, v936, v941, v946, v951, v956, v961, v966, v971, v976, v981, v986, v991, v996, v999, v1000, v1001, v1002, v1003, v1004, v1005, v1006, v1007)))
  {
LABEL_3:
    vretproc(v0);
    result = 94;
  }

  else
  {
    OUTLINED_FUNCTION_43_16();
    v28 = OUTLINED_FUNCTION_49_16();
    OUTLINED_FUNCTION_82_11(v28, v29);
    OUTLINED_FUNCTION_55_15(v30, v31, v32, v33, v34, v35, v36, v37, v867, v872, v877, v882, v887, v892, v897, v902, v907, v912, v917, v922, v927, v932, v937, v942, v947, v952, v957, v962, v967, v972, v977, v982, v987, v992, *v997, v997[4]);
    v38 = OUTLINED_FUNCTION_47_16();
    push_ptr_init(v38, v39);
    v40 = OUTLINED_FUNCTION_58_14();
    fence_38(v40, v41, v42);
    v43 = OUTLINED_FUNCTION_62_13();
    fence_38(v43, v44, v45);
    v46 = OUTLINED_FUNCTION_89_10();
    starttest(v46, v47);
    OUTLINED_FUNCTION_27_25();
    bspush_ca_boa();
    v48 = OUTLINED_FUNCTION_22_27();
    if (lpta_loadp_setscan_r(v48, v49))
    {
      v50 = 0;
    }

    else
    {
      v51 = OUTLINED_FUNCTION_31_22();
      bspush_ca_scan(v51, v52);
      v53 = OUTLINED_FUNCTION_9_36();
      if (testFldeq(v53, v54, v55, 5))
      {
        v50 = 0;
      }

      else
      {
        bspush_ca_scan_boa();
        v50 = !testFldeq(v0, 4u, 3, 8);
      }
    }

    LODWORD(v56) = v50;
    while (2)
    {
      v57 = v0[13];
      if (v57)
      {
        v58 = OUTLINED_FUNCTION_56_14(v57);
        v65 = v56;
      }

      else
      {
        v58 = vback(v0, v56);
        v65 = 0;
      }

      v66 = 3;
      switch(v58)
      {
        case 1:
          v104 = OUTLINED_FUNCTION_38_18();
          starttest(v104, v105);
          v114 = OUTLINED_FUNCTION_0_41(v106, v107, v108, v109, v110, v111, v112, v113, v868, v873, v878, v883, v888, v893, v898, v903, v908, v913, v918, v923, v928, v933, v938, v943, v948, v953, v958, v963, v968, v973, v978, v983, v988, v993, v998, v999, v1000, v1001, v1002);
          setscan_nof_l(v114);
          if (v115)
          {
            goto LABEL_35;
          }

          goto LABEL_147;
        case 2:
          bspop_boa(v0);
          goto LABEL_3;
        case 3:
          v616 = OUTLINED_FUNCTION_6_37();
          v620 = testFldeq(v616, v617, v618, v619);
          LODWORD(v56) = v65;
          if (v620)
          {
            continue;
          }

          OUTLINED_FUNCTION_38_18();
          bspush_ca_scan_boa();
          v573 = OUTLINED_FUNCTION_10_36();
          v576 = 8;
          goto LABEL_269;
        case 4:
        case 6:
          bspop_boa(v0);
          goto LABEL_16;
        case 5:
LABEL_16:
          v67 = advance_tok(v0);
          goto LABEL_270;
        case 7:
LABEL_35:
          v116 = OUTLINED_FUNCTION_30_23();
          starttest(v116, v117);
          v126 = OUTLINED_FUNCTION_0_41(v118, v119, v120, v121, v122, v123, v124, v125, v868, v873, v878, v883, v888, v893, v898, v903, v908, v913, v918, v923, v928, v933, v938, v943, v948, v953, v958, v963, v968, v973, v978, v983, v988, v993, v998, v999, v1000, v1001, v1002);
          setscan_nof_l(v126);
          if (v127)
          {
            goto LABEL_36;
          }

          goto LABEL_143;
        case 8:
LABEL_147:
          OUTLINED_FUNCTION_45_16(8, v868, v873, v878, v883, v888, v893, v898, v903, v908, v913, v918, v923, v928, v933, v938, v943, v948, v953, v958, v963, v968, v973, v978, v983, v988);
          v467 = OUTLINED_FUNCTION_1_40();
          v471 = testFldeq(v467, v468, v469, v470);
          LODWORD(v56) = v65;
          if (v471)
          {
            continue;
          }

          v472 = advance_tok(v0);
          LODWORD(v56) = v65;
          if (v472)
          {
            continue;
          }

          OUTLINED_FUNCTION_54_15();
          v473 = OUTLINED_FUNCTION_5_37();
          v474 = setscan_nof_r(v473);
          LODWORD(v56) = v65;
          if (v474)
          {
            continue;
          }

          v475 = OUTLINED_FUNCTION_6_37();
          v479 = testFldeq(v475, v476, v477, v478);
          LODWORD(v56) = v65;
          if (v479)
          {
            continue;
          }

          v480 = advance_tok(v0);
          LODWORD(v56) = v65;
          if (v480)
          {
            continue;
          }

          v481 = OUTLINED_FUNCTION_3_39();
          v485 = testFldeq(v481, v482, v483, v484);
          LODWORD(v56) = v65;
          if (v485)
          {
            continue;
          }

          v486 = advance_tok(v0);
          LODWORD(v56) = v65;
          if (v486)
          {
            continue;
          }

          v66 = 4;
          goto LABEL_324;
        case 9:
        case 86:
        case 91:
        case 107:
        case 130:
          goto LABEL_325;
        case 10:
LABEL_36:
          v128 = OUTLINED_FUNCTION_34_19();
          starttest(v128, v129);
          v138 = OUTLINED_FUNCTION_0_41(v130, v131, v132, v133, v134, v135, v136, v137, v868, v873, v878, v883, v888, v893, v898, v903, v908, v913, v918, v923, v928, v933, v938, v943, v948, v953, v958, v963, v968, v973, v978, v983, v988, v993, v998, v999, v1000, v1001, v1002);
          setscan_nof_l(v138);
          if (v139)
          {
            goto LABEL_37;
          }

          goto LABEL_142;
        case 11:
LABEL_143:
          OUTLINED_FUNCTION_45_16(11, v868, v873, v878, v883, v888, v893, v898, v903, v908, v913, v918, v923, v928, v933, v938, v943, v948, v953, v958, v963, v968, v973, v978, v983, v988);
          v457 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v457, v458);
          goto LABEL_144;
        case 12:
          v68 = OUTLINED_FUNCTION_10_36();
          v71 = testFldeq(v68, v69, v70, 8);
          LODWORD(v56) = v65;
          if (v71)
          {
            continue;
          }

          v72 = OUTLINED_FUNCTION_4_38();
          v76 = testFldeq(v72, v73, v74, v75);
          LODWORD(v56) = v65;
          if (v76)
          {
            continue;
          }

          v77 = advance_tok(v0);
          LODWORD(v56) = v65;
          if (v77)
          {
            continue;
          }

          goto LABEL_144;
        case 13:
LABEL_144:
          v459 = OUTLINED_FUNCTION_2_39();
          v463 = testFldeq(v459, v460, v461, v462);
          LODWORD(v56) = v65;
          if (v463)
          {
            continue;
          }

          v464 = advance_tok(v0);
          LODWORD(v56) = v65;
          if (v464)
          {
            continue;
          }

          OUTLINED_FUNCTION_54_15();
          v465 = OUTLINED_FUNCTION_5_37();
          v466 = setscan_nof_r(v465);
          goto LABEL_305;
        case 14:
LABEL_37:
          v140 = OUTLINED_FUNCTION_38_18();
          starttest(v140, v141);
          v142 = OUTLINED_FUNCTION_12_36();
          if (lpta_loadp_setscan_r(v142, v143))
          {
            goto LABEL_38;
          }

          goto LABEL_137;
        case 15:
LABEL_142:
          OUTLINED_FUNCTION_45_16(15, v868, v873, v878, v883, v888, v893, v898, v903, v908, v913, v918, v923, v928, v933, v938, v943, v948, v953, v958, v963, v968, v973, v978, v983, v988);
          v451 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v451, v452);
          v453 = OUTLINED_FUNCTION_10_36();
          v456 = 10;
          goto LABEL_274;
        case 16:
          v453 = OUTLINED_FUNCTION_10_36();
          v456 = 7;
LABEL_274:
          v715 = testFldeq(v453, v454, v455, v456);
          LODWORD(v56) = v65;
          if (!v715)
          {
            goto LABEL_275;
          }

          continue;
        case 17:
LABEL_275:
          v716 = advance_tok(v0);
          LODWORD(v56) = v65;
          if (!v716)
          {
            goto LABEL_276;
          }

          continue;
        case 18:
LABEL_276:
          OUTLINED_FUNCTION_61_14(18, v868, v873, v878, v883, v888, v893, v898, v903, v908, v913, v918, v923, v928, v933, v938, v943, v948, v953, v958, v963, v968, v973, v978, v983, v988, v993, v998, v999, v1000, v1001);
          OUTLINED_FUNCTION_54_15();
          v717 = OUTLINED_FUNCTION_5_37();
          v718 = setscan_nof_r(v717);
          LODWORD(v56) = v65;
          if (v718)
          {
            continue;
          }

          v719 = OUTLINED_FUNCTION_6_37();
          v723 = testFldeq(v719, v720, v721, v722);
          LODWORD(v56) = v65;
          if (v723)
          {
            continue;
          }

          v724 = advance_tok(v0);
          LODWORD(v56) = v65;
          if (v724)
          {
            continue;
          }

          v725 = OUTLINED_FUNCTION_38_18();
          starttest(v725, v726);
          v735 = OUTLINED_FUNCTION_0_41(v727, v728, v729, v730, v731, v732, v733, v734, v868, v873, v878, v883, v888, v893, v898, v903, v908, v913, v918, v923, v928, v933, v938, v943, v948, v953, v958, v963, v968, v973, v978, v983, v988, v993, v998, v999, v1000, v1001, v1002);
          setscan_nof_l(v735);
          if (v58)
          {
            goto LABEL_354;
          }

LABEL_280:
          OUTLINED_FUNCTION_45_16(20, v868, v873, v878, v883, v888, v893, v898, v903, v908, v913, v918, v923, v928, v933, v938, v943, v948, v953, v958, v963, v968, v973, v978, v983, v988);
          v736 = OUTLINED_FUNCTION_1_40();
          v740 = testFldeq(v736, v737, v738, v739);
          LODWORD(v56) = v65;
          if (v740)
          {
            continue;
          }

          v741 = advance_tok(v0);
          LODWORD(v56) = v65;
          if (v741)
          {
            continue;
          }

          OUTLINED_FUNCTION_54_15();
          v742 = OUTLINED_FUNCTION_5_37();
          v743 = setscan_nof_r(v742);
          LODWORD(v56) = v65;
          if (v743)
          {
            continue;
          }

LABEL_283:
          v744 = OUTLINED_FUNCTION_13_35();
          v747 = chstream(v744, v745, v746);
          LODWORD(v56) = v65;
          if (v747)
          {
            continue;
          }

          OUTLINED_FUNCTION_42_16();
          v748 = test_string_s();
          v56 = v65;
          if (v748)
          {
            continue;
          }

          v863 = 3;
          goto LABEL_348;
        case 19:
        case 120:
        case 129:
        case 161:
          goto LABEL_354;
        case 20:
          goto LABEL_280;
        case 21:
          goto LABEL_283;
        case 22:
LABEL_38:
          v144 = OUTLINED_FUNCTION_38_18();
          starttest(v144, v145);
          v146 = OUTLINED_FUNCTION_12_36();
          if (lpta_loadp_setscan_l(v146, v147))
          {
            goto LABEL_39;
          }

          v832 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v832, v833);
          goto LABEL_330;
        case 23:
LABEL_137:
          v437 = OUTLINED_FUNCTION_13_35();
          v440 = chstream(v437, v438, v439);
          LODWORD(v56) = v65;
          if (!v440)
          {
            OUTLINED_FUNCTION_42_16();
            v441 = test_string_s();
            LODWORD(v56) = v65;
            if (!v441)
            {
              goto LABEL_139;
            }
          }

          continue;
        case 24:
LABEL_139:
          v442 = OUTLINED_FUNCTION_13_35();
          v446 = test_synch(v442, v443, v444, v445);
          LODWORD(v56) = v65;
          if (!v446)
          {
            goto LABEL_140;
          }

          continue;
        case 25:
LABEL_140:
          v447 = OUTLINED_FUNCTION_38_18();
          v449 = chstream(v447, v448, 4u);
          LODWORD(v56) = v65;
          if (!v449)
          {
            goto LABEL_141;
          }

          continue;
        case 26:
LABEL_39:
          v148 = OUTLINED_FUNCTION_38_18();
          starttest(v148, v149);
          v150 = OUTLINED_FUNCTION_12_36();
          if (lpta_loadp_setscan_l(v150, v151))
          {
            goto LABEL_40;
          }

LABEL_141:
          v350 = OUTLINED_FUNCTION_10_36();
          v450 = 33;
          goto LABEL_338;
        case 27:
          v791 = OUTLINED_FUNCTION_10_36();
          v794 = testFldeq(v791, v792, v793, 8);
          LODWORD(v56) = v65;
          if (v794)
          {
            continue;
          }

          v795 = OUTLINED_FUNCTION_4_38();
          v799 = testFldeq(v795, v796, v797, v798);
          LODWORD(v56) = v65;
          if (v799)
          {
            continue;
          }

          v800 = advance_tok(v0);
          LODWORD(v56) = v65;
          if (v800)
          {
            continue;
          }

          goto LABEL_330;
        case 28:
LABEL_330:
          v834 = OUTLINED_FUNCTION_10_36();
          v837 = testFldeq(v834, v835, v836, 2);
          LODWORD(v56) = v65;
          if (v837)
          {
            continue;
          }

          v838 = advance_tok(v0);
          LODWORD(v56) = v65;
          if (v838)
          {
            continue;
          }

          v839 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v839, v840);
LABEL_333:
          v350 = OUTLINED_FUNCTION_10_36();
          v450 = 17;
          goto LABEL_338;
        case 29:
          v786 = OUTLINED_FUNCTION_10_36();
          v789 = testFldeq(v786, v787, v788, 18);
          LODWORD(v56) = v65;
          if (v789)
          {
            continue;
          }

          v790 = advance_tok(v0);
          LODWORD(v56) = v65;
          if (v790)
          {
            continue;
          }

          goto LABEL_333;
        case 30:
          goto LABEL_333;
        case 31:
LABEL_40:
          v152 = OUTLINED_FUNCTION_33_21();
          starttest(v152, v153);
          v154 = OUTLINED_FUNCTION_12_36();
          if (lpta_loadp_setscan_l(v154, v155))
          {
            goto LABEL_41;
          }

          v801 = OUTLINED_FUNCTION_1_40();
          v805 = testFldeq(v801, v802, v803, v804);
          LODWORD(v56) = v65;
          if (v805)
          {
            continue;
          }

          v806 = advance_tok(v0);
          LODWORD(v56) = v65;
          if (v806)
          {
            continue;
          }

          v350 = OUTLINED_FUNCTION_9_36();
          goto LABEL_299;
        case 32:
LABEL_41:
          v156 = OUTLINED_FUNCTION_38_18();
          starttest(v156, v157);
          OUTLINED_FUNCTION_0_41(v158, v159, v160, v161, v162, v163, v164, v165, v868, v873, v878, v883, v888, v893, v898, v903, v908, v913, v918, v923, v928, v933, v938, v943, v948, v953, v958, v963, v968, v973, v978, v983, v988, v993, v998, v999, v1000, v1001, v1002);
          if (lpta_tstmovel())
          {
            goto LABEL_44;
          }

          v166 = OUTLINED_FUNCTION_42_16();
          setscan_l(v166);
          if (v167)
          {
            goto LABEL_44;
          }

          OUTLINED_FUNCTION_42_16();
          if (test_string_s())
          {
            goto LABEL_44;
          }

          goto LABEL_163;
        case 33:
LABEL_44:
          v168 = OUTLINED_FUNCTION_38_18();
          starttest(v168, v169);
          v170 = OUTLINED_FUNCTION_12_36();
          if (lpta_loadp_setscan_l(v170, v171))
          {
            goto LABEL_45;
          }

          v487 = OUTLINED_FUNCTION_4_38();
          v491 = testFldeq(v487, v488, v489, v490);
          LODWORD(v56) = v65;
          if (v491)
          {
            continue;
          }

          v492 = advance_tok(v0);
          LODWORD(v56) = v65;
          if (v492)
          {
            continue;
          }

          v493 = OUTLINED_FUNCTION_10_36();
          v496 = testFldeq(v493, v494, v495, 13);
          LODWORD(v56) = v65;
          if (v496)
          {
            continue;
          }

          v497 = advance_tok(v0);
          LODWORD(v56) = v65;
          if (v497)
          {
            continue;
          }

          v498 = OUTLINED_FUNCTION_10_36();
          v501 = 1;
          goto LABEL_303;
        case 34:
LABEL_163:
          OUTLINED_FUNCTION_61_14(34, v868, v873, v878, v883, v888, v893, v898, v903, v908, v913, v918, v923, v928, v933, v938, v943, v948, v953, v958, v963, v968, v973, v978, v983, v988, v993, v998, v999, v1000, v1001);
          goto LABEL_164;
        case 35:
LABEL_164:
          v508 = OUTLINED_FUNCTION_13_35();
          v58 = test_synch(v508, v509, v510, v511);
          goto LABEL_340;
        case 36:
LABEL_45:
          v172 = OUTLINED_FUNCTION_38_18();
          starttest(v172, v173);
          v174 = OUTLINED_FUNCTION_12_36();
          if (lpta_loadp_setscan_l(v174, v175))
          {
            goto LABEL_46;
          }

          v502 = OUTLINED_FUNCTION_1_40();
          v506 = testFldeq(v502, v503, v504, v505);
          LODWORD(v56) = v65;
          if (v506)
          {
            continue;
          }

          v507 = advance_tok(v0);
          LODWORD(v56) = v65;
          if (v507)
          {
            continue;
          }

          v350 = OUTLINED_FUNCTION_10_36();
          v450 = 28;
          goto LABEL_338;
        case 37:
LABEL_46:
          v176 = OUTLINED_FUNCTION_38_18();
          starttest(v176, v177);
          v178 = OUTLINED_FUNCTION_12_36();
          if (lpta_loadp_setscan_l(v178, v179))
          {
            goto LABEL_47;
          }

          v512 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v512, v513);
          v514 = OUTLINED_FUNCTION_10_36();
          v517 = 13;
          goto LABEL_293;
        case 38:
LABEL_47:
          v180 = OUTLINED_FUNCTION_38_18();
          starttest(v180, v181);
          v182 = OUTLINED_FUNCTION_12_36();
          if (lpta_loadp_setscan_l(v182, v183))
          {
            goto LABEL_48;
          }

          goto LABEL_336;
        case 39:
          v766 = OUTLINED_FUNCTION_9_36();
          v769 = testFldeq(v766, v767, v768, 7);
          LODWORD(v56) = v65;
          if (v769)
          {
            continue;
          }

          v514 = OUTLINED_FUNCTION_11_36();
          v517 = 12;
LABEL_293:
          v770 = testFldeq(v514, v515, v516, v517);
          LODWORD(v56) = v65;
          if (!v770)
          {
            goto LABEL_294;
          }

          continue;
        case 40:
LABEL_294:
          v771 = advance_tok(v0);
          LODWORD(v56) = v65;
          if (v771)
          {
            continue;
          }

          v772 = OUTLINED_FUNCTION_10_36();
          v775 = testFldeq(v772, v773, v774, 1);
          LODWORD(v56) = v65;
          if (v775)
          {
            continue;
          }

          v776 = advance_tok(v0);
          LODWORD(v56) = v65;
          if (v776)
          {
            continue;
          }

          v777 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v777, v778);
          v350 = OUTLINED_FUNCTION_10_36();
          v450 = 25;
          goto LABEL_338;
        case 41:
          v653 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v653, v654);
          v350 = OUTLINED_FUNCTION_10_36();
          v450 = 13;
          goto LABEL_338;
        case 42:
        case 80:
        case 115:
          goto LABEL_339;
        case 43:
          v779 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v779, v780);
          v350 = OUTLINED_FUNCTION_10_36();
          goto LABEL_299;
        case 44:
          v350 = OUTLINED_FUNCTION_9_36();
          v450 = 5;
          goto LABEL_338;
        case 45:
LABEL_48:
          v184 = OUTLINED_FUNCTION_38_18();
          starttest(v184, v185);
          v186 = OUTLINED_FUNCTION_12_36();
          if (lpta_loadp_setscan_l(v186, v187))
          {
            goto LABEL_49;
          }

          v518 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v518, v519);
          goto LABEL_168;
        case 46:
          v645 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v645, v646);
          v498 = OUTLINED_FUNCTION_10_36();
          v501 = 13;
          goto LABEL_303;
        case 47:
        case 112:
          goto LABEL_337;
        case 48:
          v781 = OUTLINED_FUNCTION_9_36();
          v784 = testFldeq(v781, v782, v783, 7);
          LODWORD(v56) = v65;
          if (v784)
          {
            continue;
          }

          v498 = OUTLINED_FUNCTION_11_36();
          v501 = 12;
          goto LABEL_303;
        case 49:
          goto LABEL_304;
        case 50:
LABEL_49:
          v188 = OUTLINED_FUNCTION_38_18();
          starttest(v188, v189);
          v190 = OUTLINED_FUNCTION_12_36();
          if (lpta_loadp_setscan_l(v190, v191))
          {
            goto LABEL_50;
          }

          goto LABEL_114;
        case 51:
          v91 = OUTLINED_FUNCTION_10_36();
          v94 = testFldeq(v91, v92, v93, 11);
          LODWORD(v56) = v65;
          if (v94)
          {
            continue;
          }

          v95 = advance_tok(v0);
          LODWORD(v56) = v65;
          if (v95)
          {
            continue;
          }

          goto LABEL_29;
        case 52:
          goto LABEL_168;
        case 53:
LABEL_29:
          v96 = OUTLINED_FUNCTION_13_35();
          v99 = chstream(v96, v97, v98);
          LODWORD(v56) = v65;
          if (!v99)
          {
            OUTLINED_FUNCTION_42_16();
            v100 = test_string_s();
            LODWORD(v56) = v65;
            if (!v100)
            {
              goto LABEL_31;
            }
          }

          continue;
        case 54:
LABEL_31:
          v101 = OUTLINED_FUNCTION_38_18();
          v103 = chstream(v101, v102, 4u);
          goto LABEL_32;
        case 55:
LABEL_50:
          v192 = OUTLINED_FUNCTION_38_18();
          starttest(v192, v193);
          v194 = OUTLINED_FUNCTION_12_36();
          if (lpta_loadp_setscan_l(v194, v195))
          {
            goto LABEL_51;
          }

          goto LABEL_127;
        case 56:
LABEL_114:
          OUTLINED_FUNCTION_45_16(56, v868, v873, v878, v883, v888, v893, v898, v903, v908, v913, v918, v923, v928, v933, v938, v943, v948, v953, v958, v963, v968, v973, v978, v983, v988);
          v367 = OUTLINED_FUNCTION_1_40();
          v371 = testFldeq(v367, v368, v369, v370);
          LODWORD(v56) = v65;
          if (v371)
          {
            continue;
          }

          v372 = advance_tok(v0);
          LODWORD(v56) = v65;
          if (v372)
          {
            continue;
          }

          v373 = OUTLINED_FUNCTION_15_34();
          v375 = lpta_loadp_setscan_r(v373, v374);
          LODWORD(v56) = v65;
          if (v375)
          {
            continue;
          }

          v376 = OUTLINED_FUNCTION_6_37();
          v380 = testFldeq(v376, v377, v378, v379);
          LODWORD(v56) = v65;
          if (v380)
          {
            continue;
          }

          v381 = advance_tok(v0);
          LODWORD(v56) = v65;
          if (v381)
          {
            continue;
          }

          v382 = OUTLINED_FUNCTION_9_36();
          v385 = testFldeq(v382, v383, v384, 4);
          LODWORD(v56) = v65;
          if (v385)
          {
            continue;
          }

          v103 = advance_tok(v0);
LABEL_32:
          LODWORD(v56) = v65;
          if (v103)
          {
            continue;
          }

LABEL_168:
          v350 = OUTLINED_FUNCTION_10_36();
          v450 = 3;
          goto LABEL_338;
        case 57:
LABEL_51:
          v196 = OUTLINED_FUNCTION_38_18();
          starttest(v196, v197);
          v198 = OUTLINED_FUNCTION_12_36();
          if (lpta_loadp_setscan_l(v198, v199))
          {
            goto LABEL_52;
          }

          v520 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v520, v521);
          goto LABEL_170;
        case 58:
LABEL_127:
          OUTLINED_FUNCTION_45_16(58, v868, v873, v878, v883, v888, v893, v898, v903, v908, v913, v918, v923, v928, v933, v938, v943, v948, v953, v958, v963, v968, v973, v978, v983, v988);
          v403 = OUTLINED_FUNCTION_1_40();
          v407 = testFldeq(v403, v404, v405, v406);
          LODWORD(v56) = v65;
          if (!v407)
          {
            v408 = advance_tok(v0);
            LODWORD(v56) = v65;
            if (!v408)
            {
              v409 = OUTLINED_FUNCTION_8_37();
              v413 = testFldeq(v409, v410, v411, v412);
              LODWORD(v56) = v65;
              if (!v413)
              {
                v414 = advance_tok(v0);
                LODWORD(v56) = v65;
                if (!v414)
                {
                  v415 = OUTLINED_FUNCTION_15_34();
                  v417 = lpta_loadp_setscan_r(v415, v416);
                  LODWORD(v56) = v65;
                  if (!v417)
                  {
                    goto LABEL_132;
                  }
                }
              }
            }
          }

          continue;
        case 59:
LABEL_132:
          v418 = OUTLINED_FUNCTION_13_35();
          v421 = chstream(v418, v419, v420);
          LODWORD(v56) = v65;
          if (!v421)
          {
            OUTLINED_FUNCTION_35_18();
            v422 = test_string_s();
            LODWORD(v56) = v65;
            if (!v422)
            {
              goto LABEL_134;
            }
          }

          continue;
        case 60:
LABEL_134:
          v423 = OUTLINED_FUNCTION_38_18();
          v425 = chstream(v423, v424, 4u);
          LODWORD(v56) = v65;
          if (v425)
          {
            continue;
          }

          v426 = OUTLINED_FUNCTION_2_39();
          v430 = testFldeq(v426, v427, v428, v429);
          LODWORD(v56) = v65;
          if (v430)
          {
            continue;
          }

          v431 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v431, v432);
          v433 = OUTLINED_FUNCTION_11_36();
          v436 = 4;
LABEL_252:
          v685 = testFldeq(v433, v434, v435, v436);
          LODWORD(v56) = v65;
          if (v685)
          {
            continue;
          }

LABEL_253:
          v686 = advance_tok(v0);
          LODWORD(v56) = v65;
          if (v686)
          {
            continue;
          }

LABEL_349:
          v860 = 63;
          goto LABEL_352;
        case 61:
          v433 = OUTLINED_FUNCTION_10_36();
          v436 = 3;
          goto LABEL_252;
        case 62:
          goto LABEL_253;
        case 63:
          goto LABEL_349;
        case 64:
LABEL_52:
          v200 = OUTLINED_FUNCTION_38_18();
          starttest(v200, v201);
          v202 = OUTLINED_FUNCTION_12_36();
          if (lpta_loadp_setscan_l(v202, v203))
          {
            goto LABEL_53;
          }

          v528 = OUTLINED_FUNCTION_11_36();
          v531 = testFldeq(v528, v529, v530, 6);
          LODWORD(v56) = v65;
          if (!v531)
          {
            v532 = advance_tok(v0);
            LODWORD(v56) = v65;
            if (!v532)
            {
              v533 = OUTLINED_FUNCTION_38_18();
              bspush_ca_scan(v533, v534);
              v535 = OUTLINED_FUNCTION_4_38();
              v539 = testFldeq(v535, v536, v537, v538);
              LODWORD(v56) = v65;
              if (!v539)
              {
                v540 = advance_tok(v0);
                LODWORD(v56) = v65;
                if (!v540)
                {
                  goto LABEL_175;
                }
              }
            }
          }

          continue;
        case 65:
          v78 = OUTLINED_FUNCTION_10_36();
          v81 = testFldeq(v78, v79, v80, 13);
          LODWORD(v56) = v65;
          if (v81)
          {
            continue;
          }

          v82 = advance_tok(v0);
          LODWORD(v56) = v65;
          if (v82)
          {
            continue;
          }

          v83 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v83, v84);
          goto LABEL_288;
        case 66:
          goto LABEL_170;
        case 67:
          v755 = OUTLINED_FUNCTION_10_36();
          v758 = testFldeq(v755, v756, v757, 28);
          LODWORD(v56) = v65;
          if (v758)
          {
            continue;
          }

          v759 = advance_tok(v0);
          LODWORD(v56) = v65;
          if (v759)
          {
            continue;
          }

          goto LABEL_288;
        case 68:
LABEL_288:
          v760 = OUTLINED_FUNCTION_6_37();
          v764 = testFldeq(v760, v761, v762, v763);
          LODWORD(v56) = v65;
          if (v764)
          {
            continue;
          }

          v765 = advance_tok(v0);
          LODWORD(v56) = v65;
          if (v765)
          {
            continue;
          }

LABEL_170:
          v522 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v522, v523);
          v524 = OUTLINED_FUNCTION_1_40();
          goto LABEL_235;
        case 69:
          v655 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v655, v656);
          v524 = OUTLINED_FUNCTION_9_36();
          goto LABEL_234;
        case 70:
          goto LABEL_236;
        case 71:
          v524 = OUTLINED_FUNCTION_11_36();
LABEL_234:
          v527 = 3;
LABEL_235:
          v657 = testFldeq(v524, v525, v526, v527);
          LODWORD(v56) = v65;
          if (v657)
          {
            continue;
          }

LABEL_236:
          v658 = advance_tok(v0);
          LODWORD(v56) = v65;
          if (v658)
          {
            continue;
          }

          v350 = OUTLINED_FUNCTION_11_36();
LABEL_299:
          v450 = 6;
          goto LABEL_338;
        case 72:
LABEL_53:
          v204 = OUTLINED_FUNCTION_38_18();
          starttest(v204, v205);
          v206 = OUTLINED_FUNCTION_12_36();
          if (lpta_loadp_setscan_l(v206, v207))
          {
            goto LABEL_54;
          }

          v541 = OUTLINED_FUNCTION_11_36();
          v544 = testFldeq(v541, v542, v543, 6);
          LODWORD(v56) = v65;
          if (!v544)
          {
            v545 = advance_tok(v0);
            LODWORD(v56) = v65;
            if (!v545)
            {
              v546 = OUTLINED_FUNCTION_38_18();
              bspush_ca_scan(v546, v547);
              v548 = OUTLINED_FUNCTION_3_39();
              v552 = testFldeq(v548, v549, v550, v551);
              LODWORD(v56) = v65;
              if (!v552)
              {
                v553 = advance_tok(v0);
                LODWORD(v56) = v65;
                if (!v553)
                {
                  goto LABEL_181;
                }
              }
            }
          }

          continue;
        case 73:
LABEL_175:
          v350 = OUTLINED_FUNCTION_9_36();
          goto LABEL_176;
        case 74:
LABEL_54:
          v208 = OUTLINED_FUNCTION_38_18();
          starttest(v208, v209);
          v210 = OUTLINED_FUNCTION_12_36();
          if (lpta_loadp_setscan_l(v210, v211))
          {
            goto LABEL_55;
          }

          v555 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v555, v556);
          goto LABEL_183;
        case 75:
LABEL_181:
          v554 = 75;
          goto LABEL_322;
        case 76:
LABEL_55:
          v212 = OUTLINED_FUNCTION_38_18();
          starttest(v212, v213);
          v214 = OUTLINED_FUNCTION_12_36();
          if (lpta_loadp_setscan_l(v214, v215))
          {
            goto LABEL_56;
          }

          v563 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v563, v564);
          v565 = OUTLINED_FUNCTION_3_39();
          goto LABEL_212;
        case 77:
          v85 = OUTLINED_FUNCTION_3_39();
          v89 = testFldeq(v85, v86, v87, v88);
          LODWORD(v56) = v65;
          if (v89)
          {
            continue;
          }

          v90 = advance_tok(v0);
          LODWORD(v56) = v65;
          if (v90)
          {
            continue;
          }

          goto LABEL_183;
        case 78:
LABEL_183:
          v557 = OUTLINED_FUNCTION_9_36();
          v560 = testFldeq(v557, v558, v559, 4);
          LODWORD(v56) = v65;
          if (v560)
          {
            continue;
          }

          v561 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v561, v562);
          v350 = OUTLINED_FUNCTION_11_36();
          v450 = 9;
          goto LABEL_338;
        case 79:
          v350 = OUTLINED_FUNCTION_10_36();
          v450 = 24;
          goto LABEL_338;
        case 81:
LABEL_56:
          v216 = OUTLINED_FUNCTION_38_18();
          starttest(v216, v217);
          v218 = OUTLINED_FUNCTION_12_36();
          if (lpta_loadp_setscan_l(v218, v219))
          {
            goto LABEL_57;
          }

          v569 = OUTLINED_FUNCTION_11_36();
          v572 = testFldeq(v569, v570, v571, 3);
          LODWORD(v56) = v65;
          if (v572)
          {
            continue;
          }

          OUTLINED_FUNCTION_38_18();
          bspush_ca_scan_boa();
          v573 = OUTLINED_FUNCTION_37_18();
          v575 = 5;
          v576 = 2;
          goto LABEL_269;
        case 82:
          v565 = OUTLINED_FUNCTION_9_36();
          v568 = 7;
LABEL_212:
          v626 = testFldeq(v565, v566, v567, v568);
          LODWORD(v56) = v65;
          if (!v626)
          {
            goto LABEL_213;
          }

          continue;
        case 83:
LABEL_213:
          v627 = advance_tok(v0);
          LODWORD(v56) = v65;
          if (!v627)
          {
            goto LABEL_214;
          }

          continue;
        case 84:
LABEL_214:
          OUTLINED_FUNCTION_86_10(84, v868, v873, v878, v883, v888, v893, v898, v903, v908, v913, v918, v923, v928, v933, v938, v943, v948, v953, v958, v963, v968, v973, v978, v983, v988, v993, v998, v999, v1000, v1001);
          v628 = OUTLINED_FUNCTION_38_18();
          starttest(v628, v629);
          v630 = OUTLINED_FUNCTION_22_27();
          if (lpta_loadp_setscan_l(v630, v631))
          {
            goto LABEL_323;
          }

          v632 = OUTLINED_FUNCTION_10_36();
          v635 = testFldeq(v632, v633, v634, 18);
          LODWORD(v56) = v65;
          if (!v635)
          {
            v636 = advance_tok(v0);
            LODWORD(v56) = v65;
            if (!v636)
            {
              goto LABEL_3;
            }
          }

          continue;
        case 85:
        case 119:
        case 154:
          goto LABEL_324;
        case 87:
LABEL_57:
          v220 = OUTLINED_FUNCTION_38_18();
          starttest(v220, v221);
          v222 = OUTLINED_FUNCTION_44_16();
          if (lpta_loadp_setscan_l(v222, v223))
          {
            goto LABEL_58;
          }

          v577 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v577, v578);
          goto LABEL_245;
        case 88:
          bspop_boa(v0);
          v687 = advance_tok(v0);
          LODWORD(v56) = v65;
          if (v687)
          {
            continue;
          }

          goto LABEL_256;
        case 89:
LABEL_256:
          OUTLINED_FUNCTION_86_10(89, v868, v873, v878, v883, v888, v893, v898, v903, v908, v913, v918, v923, v928, v933, v938, v943, v948, v953, v958, v963, v968, v973, v978, v983, v988, v993, v998, v999, v1000, v1001);
          v688 = OUTLINED_FUNCTION_38_18();
          starttest(v688, v689);
          v690 = OUTLINED_FUNCTION_22_27();
          if (lpta_loadp_setscan_l(v690, v691))
          {
            goto LABEL_257;
          }

          v848 = OUTLINED_FUNCTION_1_40();
          v852 = testFldeq(v848, v849, v850, v851);
          LODWORD(v56) = v65;
          if (v852)
          {
            continue;
          }

          v350 = OUTLINED_FUNCTION_37_18();
          v352 = 5;
          goto LABEL_176;
        case 90:
LABEL_257:
          v692 = OUTLINED_FUNCTION_38_18();
          starttest(v692, v693);
          v694 = OUTLINED_FUNCTION_12_36();
          if (lpta_loadp_setscan_l(v694, v695))
          {
            goto LABEL_265;
          }

          v696 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v696, v697);
          v698 = OUTLINED_FUNCTION_9_36();
          v701 = testFldeq(v698, v699, v700, 4);
          LODWORD(v56) = v65;
          if (v701)
          {
            continue;
          }

          v702 = OUTLINED_FUNCTION_10_36();
          v705 = testFldeq(v702, v703, v704, 12);
          LODWORD(v56) = v65;
          if (v705)
          {
            continue;
          }

          v706 = advance_tok(v0);
          LODWORD(v56) = v65;
          if (v706)
          {
            continue;
          }

LABEL_261:
          v707 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v707, v708);
          v709 = OUTLINED_FUNCTION_10_36();
          v712 = testFldeq(v709, v710, v711, 18);
          LODWORD(v56) = v65;
          if (v712)
          {
            continue;
          }

          v713 = advance_tok(v0);
          LODWORD(v56) = v65;
          if (v713)
          {
            continue;
          }

LABEL_263:
          v287 = 94;
          goto LABEL_264;
        case 92:
          goto LABEL_265;
        case 93:
          goto LABEL_261;
        case 94:
          goto LABEL_263;
        case 95:
LABEL_58:
          v224 = OUTLINED_FUNCTION_38_18();
          starttest(v224, v225);
          v226 = OUTLINED_FUNCTION_12_36();
          if (lpta_loadp_setscan_l(v226, v227))
          {
            goto LABEL_59;
          }

          v579 = OUTLINED_FUNCTION_10_36();
          v582 = testFldeq(v579, v580, v581, 13);
          LODWORD(v56) = v65;
          if (!v582)
          {
            v583 = advance_tok(v0);
            LODWORD(v56) = v65;
            if (!v583)
            {
              goto LABEL_191;
            }
          }

          continue;
        case 96:
          OUTLINED_FUNCTION_42_16();
          v666 = test_string_s();
          LODWORD(v56) = v65;
          if (v666)
          {
            continue;
          }

          goto LABEL_245;
        case 97:
LABEL_245:
          OUTLINED_FUNCTION_28_24();
          v667 = test_string_s();
          LODWORD(v56) = v65;
          if (v667)
          {
            continue;
          }

          v668 = OUTLINED_FUNCTION_12_36();
          v670 = lpta_loadp_setscan_l(v668, v669);
          LODWORD(v56) = v65;
          if (v670)
          {
            continue;
          }

          v671 = OUTLINED_FUNCTION_1_40();
          v675 = testFldeq(v671, v672, v673, v674);
          LODWORD(v56) = v65;
          if (v675)
          {
            continue;
          }

          v676 = advance_tok(v0);
          LODWORD(v56) = v65;
          if (v676)
          {
            continue;
          }

          v677 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v677, v678);
LABEL_250:
          v679 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v679, v680);
          v681 = OUTLINED_FUNCTION_8_37();
LABEL_267:
          v714 = testFldeq(v681, v682, v683, v684);
          LODWORD(v56) = v65;
          if (!v714)
          {
LABEL_268:
            OUTLINED_FUNCTION_38_18();
            bspush_ca_scan_boa();
            v573 = OUTLINED_FUNCTION_10_36();
            v576 = 21;
LABEL_269:
            v67 = testFldeq(v573, v574, v575, v576);
LABEL_270:
            if (v67)
            {
              LODWORD(v56) = v65;
            }

            else
            {
              LODWORD(v56) = 1;
            }
          }

          continue;
        case 98:
          v638 = OUTLINED_FUNCTION_10_36();
          v641 = testFldeq(v638, v639, v640, 32);
          LODWORD(v56) = v65;
          if (v641)
          {
            continue;
          }

          v642 = advance_tok(v0);
          LODWORD(v56) = v65;
          if (v642)
          {
            continue;
          }

          goto LABEL_250;
        case 99:
          goto LABEL_250;
        case 100:
          v681 = OUTLINED_FUNCTION_3_39();
          goto LABEL_267;
        case 101:
          goto LABEL_268;
        case 102:
          bspop_boa(v0);
          v665 = advance_tok(v0);
          LODWORD(v56) = v65;
          if (v665)
          {
            continue;
          }

          goto LABEL_243;
        case 103:
LABEL_243:
          v554 = 103;
          goto LABEL_322;
        case 104:
LABEL_59:
          v228 = OUTLINED_FUNCTION_38_18();
          starttest(v228, v229);
          v230 = OUTLINED_FUNCTION_12_36();
          if (lpta_loadp_setscan_l(v230, v231) || advance_tok(v0))
          {
            goto LABEL_61;
          }

          v853 = OUTLINED_FUNCTION_10_36();
          v856 = testFldeq(v853, v854, v855, 1);
          LODWORD(v56) = v65;
          if (v856)
          {
            continue;
          }

          v857 = advance_tok(v0);
          LODWORD(v56) = v65;
          if (v857)
          {
            continue;
          }

          v858 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v858, v859);
          v659 = OUTLINED_FUNCTION_10_36();
          v662 = 13;
          goto LABEL_239;
        case 105:
LABEL_191:
          OUTLINED_FUNCTION_86_10(105, v868, v873, v878, v883, v888, v893, v898, v903, v908, v913, v918, v923, v928, v933, v938, v943, v948, v953, v958, v963, v968, v973, v978, v983, v988, v993, v998, v999, v1000, v1001);
          v584 = OUTLINED_FUNCTION_46_16();
          if (lpta_loadp_setscan_l(v584, v585))
          {
            goto LABEL_193;
          }

          OUTLINED_FUNCTION_42_16();
          v58 = test_string_s();
          if (v58)
          {
            goto LABEL_193;
          }

          goto LABEL_354;
        case 106:
LABEL_193:
          v586 = OUTLINED_FUNCTION_38_18();
          starttest(v586, v587);
          v588 = OUTLINED_FUNCTION_12_36();
          if (lpta_loadp_setscan_l(v588, v589))
          {
            goto LABEL_194;
          }

          v843 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v843, v844);
          goto LABEL_336;
        case 108:
LABEL_194:
          v590 = OUTLINED_FUNCTION_38_18();
          starttest(v590, v591);
          v592 = OUTLINED_FUNCTION_12_36();
          if (lpta_loadp_setscan_l(v592, v593))
          {
            goto LABEL_195;
          }

          v841 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v841, v842);
          v350 = OUTLINED_FUNCTION_10_36();
          v450 = 21;
          goto LABEL_338;
        case 109:
          v621 = OUTLINED_FUNCTION_10_36();
          v624 = testFldeq(v621, v622, v623, 28);
          LODWORD(v56) = v65;
          if (v624)
          {
            continue;
          }

          v625 = advance_tok(v0);
          LODWORD(v56) = v65;
          if (v625)
          {
            continue;
          }

          goto LABEL_336;
        case 110:
LABEL_336:
          v845 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v845, v846);
          goto LABEL_337;
        case 111:
          v498 = OUTLINED_FUNCTION_3_39();
LABEL_303:
          v785 = testFldeq(v498, v499, v500, v501);
          LODWORD(v56) = v65;
          if (v785)
          {
            continue;
          }

LABEL_304:
          v466 = advance_tok(v0);
          goto LABEL_305;
        case 113:
LABEL_195:
          v594 = OUTLINED_FUNCTION_38_18();
          starttest(v594, v595);
          v596 = OUTLINED_FUNCTION_12_36();
          if (lpta_loadp_setscan_l(v596, v597))
          {
            goto LABEL_196;
          }

          v807 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v807, v808);
          v809 = OUTLINED_FUNCTION_10_36();
          v812 = testFldeq(v809, v810, v811, 28);
          LODWORD(v56) = v65;
          if (!v812)
          {
            v813 = advance_tok(v0);
            LODWORD(v56) = v65;
            if (!v813)
            {
              goto LABEL_319;
            }
          }

          continue;
        case 114:
          v350 = OUTLINED_FUNCTION_10_36();
          v450 = 23;
          goto LABEL_338;
        case 116:
LABEL_196:
          v598 = OUTLINED_FUNCTION_38_18();
          starttest(v598, v599);
          v600 = OUTLINED_FUNCTION_12_36();
          if (lpta_loadp_setscan_l(v600, v601))
          {
            goto LABEL_323;
          }

          v602 = OUTLINED_FUNCTION_11_36();
          v605 = testFldeq(v602, v603, v604, 1);
          LODWORD(v56) = v65;
          if (v605)
          {
            continue;
          }

          v606 = advance_tok(v0);
          LODWORD(v56) = v65;
          if (v606)
          {
            continue;
          }

          v607 = OUTLINED_FUNCTION_38_18();
          starttest(v607, v608);
          v609 = OUTLINED_FUNCTION_20_29();
          v58 = lpta_loadp_setscan_r(v609, v610);
          if (v58)
          {
            goto LABEL_354;
          }

          v611 = OUTLINED_FUNCTION_11_36();
          v614 = testFldeq(v611, v612, v613, 4);
          LODWORD(v56) = v65;
          if (v614)
          {
            continue;
          }

          v615 = advance_tok(v0);
          LODWORD(v56) = v65;
          if (v615)
          {
            continue;
          }

LABEL_351:
          v860 = 121;
LABEL_352:
          v861 = v860;
          v862 = &v999;
          goto LABEL_353;
        case 117:
LABEL_319:
          v814 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v814, v815);
          v816 = OUTLINED_FUNCTION_3_39();
          v820 = testFldeq(v816, v817, v818, v819);
          LODWORD(v56) = v65;
          if (!v820)
          {
            v821 = advance_tok(v0);
            LODWORD(v56) = v65;
            if (!v821)
            {
              goto LABEL_321;
            }
          }

          continue;
        case 118:
LABEL_321:
          v554 = 118;
LABEL_322:
          OUTLINED_FUNCTION_61_14(v554, v868, v873, v878, v883, v888, v893, v898, v903, v908, v913, v918, v923, v928, v933, v938, v943, v948, v953, v958, v963, v968, v973, v978, v983, v988, v993, v998, v999, v1000, v1001);
          goto LABEL_323;
        case 121:
          goto LABEL_351;
        case 122:
LABEL_61:
          v232 = OUTLINED_FUNCTION_38_18();
          starttest(v232, v233);
          v234 = OUTLINED_FUNCTION_12_36();
          if (lpta_loadp_setscan_l(v234, v235))
          {
            goto LABEL_62;
          }

          goto LABEL_80;
        case 123:
          v659 = OUTLINED_FUNCTION_10_36();
          v662 = 11;
LABEL_239:
          v663 = testFldeq(v659, v660, v661, v662);
          LODWORD(v56) = v65;
          if (!v663)
          {
            goto LABEL_240;
          }

          continue;
        case 124:
LABEL_240:
          v664 = advance_tok(v0);
          LODWORD(v56) = v65;
          if (!v664)
          {
            goto LABEL_350;
          }

          continue;
        case 125:
LABEL_350:
          v861 = 125;
          v862 = &v1001;
LABEL_353:
          savescptr(v0, v861, v862);
          goto LABEL_354;
        case 126:
LABEL_62:
          v236 = OUTLINED_FUNCTION_38_18();
          starttest(v236, v237);
          v238 = OUTLINED_FUNCTION_12_36();
          if (lpta_loadp_setscan_l(v238, v239))
          {
            goto LABEL_63;
          }

          goto LABEL_92;
        case 127:
LABEL_80:
          OUTLINED_FUNCTION_45_16(127, v868, v873, v878, v883, v888, v893, v898, v903, v908, v913, v918, v923, v928, v933, v938, v943, v948, v953, v958, v963, v968, v973, v978, v983, v988);
          v288 = advanc(v0);
          LODWORD(v56) = v65;
          if (!v288)
          {
            goto LABEL_81;
          }

          continue;
        case 128:
LABEL_81:
          v289 = OUTLINED_FUNCTION_13_35();
          v292 = chstream(v289, v290, v291);
          LODWORD(v56) = v65;
          if (v292)
          {
            continue;
          }

          OUTLINED_FUNCTION_28_24();
          v293 = test_string_s();
          LODWORD(v56) = v65;
          if (v293)
          {
            continue;
          }

          v294 = OUTLINED_FUNCTION_15_34();
          v296 = lpta_loadp_setscan_r(v294, v295);
          LODWORD(v56) = v65;
          if (v296)
          {
            continue;
          }

          v297 = OUTLINED_FUNCTION_6_37();
          v301 = testFldeq(v297, v298, v299, v300);
          LODWORD(v56) = v65;
          if (v301)
          {
            continue;
          }

          v302 = advance_tok(v0);
          LODWORD(v56) = v65;
          if (v302)
          {
            continue;
          }

          v303 = OUTLINED_FUNCTION_38_18();
          starttest(v303, v304);
          v305 = OUTLINED_FUNCTION_12_36();
          v58 = lpta_loadp_setscan_l(v305, v306);
          if (v58)
          {
            goto LABEL_354;
          }

          v58 = advance_tok(v0);
          if (v58)
          {
            goto LABEL_354;
          }

          v307 = OUTLINED_FUNCTION_2_39();
          v311 = testFldeq(v307, v308, v309, v310);
          LODWORD(v56) = v65;
          if (!v311)
          {
            v312 = OUTLINED_FUNCTION_11_36();
            v315 = testFldeq(v312, v313, v314, 4);
            LODWORD(v56) = v65;
            if (!v315)
            {
              v316 = advance_tok(v0);
              LODWORD(v56) = v65;
              if (!v316)
              {
                goto LABEL_323;
              }
            }
          }

          continue;
        case 131:
LABEL_63:
          v240 = OUTLINED_FUNCTION_38_18();
          starttest(v240, v241);
          v242 = OUTLINED_FUNCTION_12_36();
          if (lpta_loadp_setscan_l(v242, v243))
          {
            goto LABEL_64;
          }

          goto LABEL_95;
        case 132:
LABEL_92:
          OUTLINED_FUNCTION_45_16(132, v868, v873, v878, v883, v888, v893, v898, v903, v908, v913, v918, v923, v928, v933, v938, v943, v948, v953, v958, v963, v968, v973, v978, v983, v988);
          v317 = advanc(v0);
          LODWORD(v56) = v65;
          if (!v317)
          {
            goto LABEL_93;
          }

          continue;
        case 133:
LABEL_93:
          v318 = OUTLINED_FUNCTION_13_35();
          v321 = chstream(v318, v319, v320);
          LODWORD(v56) = v65;
          if (v321)
          {
            continue;
          }

          v322 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v322, v323);
          OUTLINED_FUNCTION_28_24();
          goto LABEL_229;
        case 134:
          v643 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v643, v644);
          OUTLINED_FUNCTION_42_16();
          goto LABEL_229;
        case 135:
          goto LABEL_230;
        case 136:
          OUTLINED_FUNCTION_42_16();
          goto LABEL_229;
        case 137:
LABEL_64:
          v244 = OUTLINED_FUNCTION_38_18();
          starttest(v244, v245);
          v246 = OUTLINED_FUNCTION_12_36();
          if (lpta_loadp_setscan_l(v246, v247))
          {
            goto LABEL_65;
          }

          goto LABEL_98;
        case 138:
LABEL_95:
          OUTLINED_FUNCTION_45_16(138, v868, v873, v878, v883, v888, v893, v898, v903, v908, v913, v918, v923, v928, v933, v938, v943, v948, v953, v958, v963, v968, v973, v978, v983, v988);
          v324 = advanc(v0);
          LODWORD(v56) = v65;
          if (!v324)
          {
            goto LABEL_96;
          }

          continue;
        case 139:
LABEL_96:
          v325 = OUTLINED_FUNCTION_13_35();
          v328 = chstream(v325, v326, v327);
          LODWORD(v56) = v65;
          if (v328)
          {
            continue;
          }

          v329 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v329, v330);
LABEL_227:
          v648 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v648, v649);
LABEL_228:
          OUTLINED_FUNCTION_35_18();
LABEL_229:
          v650 = test_string_s();
          LODWORD(v56) = v65;
          if (v650)
          {
            continue;
          }

LABEL_230:
          v651 = OUTLINED_FUNCTION_15_34();
          v466 = lpta_loadp_setscan_r(v651, v652);
LABEL_305:
          LODWORD(v56) = v65;
          if (v466)
          {
            continue;
          }

LABEL_337:
          v350 = OUTLINED_FUNCTION_6_37();
LABEL_338:
          v847 = testFldeq(v350, v351, v352, v450);
          LODWORD(v56) = v65;
          if (v847)
          {
            continue;
          }

LABEL_339:
          v58 = advance_tok(v0);
LABEL_340:
          v56 = v65;
          if (!v58)
          {
            goto LABEL_354;
          }

          continue;
        case 140:
          OUTLINED_FUNCTION_42_16();
          v647 = test_string_s();
          LODWORD(v56) = v65;
          if (v647)
          {
            continue;
          }

          goto LABEL_227;
        case 141:
          goto LABEL_227;
        case 142:
          OUTLINED_FUNCTION_17_34();
          v637 = test_string_s();
          LODWORD(v56) = v65;
          if (v637)
          {
            continue;
          }

          goto LABEL_228;
        case 143:
          goto LABEL_228;
        case 144:
LABEL_65:
          v248 = OUTLINED_FUNCTION_38_18();
          starttest(v248, v249);
          v250 = OUTLINED_FUNCTION_12_36();
          if (lpta_loadp_setscan_r(v250, v251))
          {
            goto LABEL_66;
          }

          goto LABEL_105;
        case 145:
LABEL_98:
          OUTLINED_FUNCTION_45_16(145, v868, v873, v878, v883, v888, v893, v898, v903, v908, v913, v918, v923, v928, v933, v938, v943, v948, v953, v958, v963, v968, v973, v978, v983, v988);
          v331 = OUTLINED_FUNCTION_1_40();
          v335 = testFldeq(v331, v332, v333, v334);
          LODWORD(v56) = v65;
          if (v335)
          {
            continue;
          }

          v336 = OUTLINED_FUNCTION_10_36();
          v339 = testFldeq(v336, v337, v338, 6);
          LODWORD(v56) = v65;
          if (v339)
          {
            continue;
          }

          v340 = advance_tok(v0);
          LODWORD(v56) = v65;
          if (v340)
          {
            continue;
          }

          v341 = OUTLINED_FUNCTION_15_34();
          v343 = lpta_loadp_setscan_r(v341, v342);
          LODWORD(v56) = v65;
          if (v343)
          {
            continue;
          }

          v344 = OUTLINED_FUNCTION_6_37();
          v348 = testFldeq(v344, v345, v346, v347);
          LODWORD(v56) = v65;
          if (v348)
          {
            continue;
          }

          v349 = advance_tok(v0);
          LODWORD(v56) = v65;
          if (v349)
          {
            continue;
          }

          v350 = OUTLINED_FUNCTION_10_36();
LABEL_176:
          v450 = 1;
          goto LABEL_338;
        case 146:
LABEL_66:
          v252 = OUTLINED_FUNCTION_38_18();
          starttest(v252, v253);
          v254 = OUTLINED_FUNCTION_12_36();
          if (lpta_loadp_setscan_l(v254, v255))
          {
            goto LABEL_67;
          }

          goto LABEL_121;
        case 147:
LABEL_105:
          OUTLINED_FUNCTION_45_16(147, v868, v873, v878, v883, v888, v893, v898, v903, v908, v913, v918, v923, v928, v933, v938, v943, v948, v953, v958, v963, v968, v973, v978, v983, v988);
          v353 = OUTLINED_FUNCTION_6_37();
          v357 = testFldeq(v353, v354, v355, v356);
          LODWORD(v56) = v65;
          if (!v357)
          {
            v358 = advance_tok(v0);
            LODWORD(v56) = v65;
            if (!v358)
            {
              v359 = OUTLINED_FUNCTION_15_34();
              v361 = lpta_loadp_setscan_l(v359, v360);
              LODWORD(v56) = v65;
              if (!v361)
              {
                v362 = advanc(v0);
                LODWORD(v56) = v65;
                if (!v362)
                {
                  goto LABEL_109;
                }
              }
            }
          }

          continue;
        case 148:
LABEL_109:
          savescptr(v0, 148, (v0 + 219));
          v363 = advance_tok(v0);
          LODWORD(v56) = v65;
          if (!v363)
          {
            goto LABEL_110;
          }

          continue;
        case 149:
LABEL_110:
          savescptr(v0, 149, (v0 + 217));
          goto LABEL_111;
        case 150:
LABEL_111:
          OUTLINED_FUNCTION_61_14(150, v868, v873, v878, v883, v888, v893, v898, v903, v908, v913, v918, v923, v928, v933, v938, v943, v948, v953, v958, v963, v968, v973, v978, v983, v988, v993, v998, v999, v1000, v1001);
          lpta_rpta_loadp(v0, (v0 + 217), (v0 + 219));
          v364 = OUTLINED_FUNCTION_42_16();
          v366 = setd_lookup(v364, v365, 168);
          goto LABEL_112;
        case 151:
LABEL_67:
          v256 = OUTLINED_FUNCTION_38_18();
          starttest(v256, v257);
          v258 = OUTLINED_FUNCTION_12_36();
          if (!lpta_loadp_setscan_r(v258, v259))
          {
            goto LABEL_68;
          }

LABEL_323:
          v66 = 3;
          goto LABEL_324;
        case 152:
LABEL_121:
          OUTLINED_FUNCTION_45_16(152, v868, v873, v878, v883, v888, v893, v898, v903, v908, v913, v918, v923, v928, v933, v938, v943, v948, v953, v958, v963, v968, v973, v978, v983, v988);
          v386 = OUTLINED_FUNCTION_10_36();
          v389 = testFldeq(v386, v387, v388, 1);
          LODWORD(v56) = v65;
          if (!v389)
          {
            v390 = OUTLINED_FUNCTION_11_36();
            v393 = testFldeq(v390, v391, v392, 4);
            LODWORD(v56) = v65;
            if (!v393)
            {
              v394 = advance_tok(v0);
              LODWORD(v56) = v65;
              if (!v394)
              {
                goto LABEL_124;
              }
            }
          }

          continue;
        case 153:
LABEL_124:
          OUTLINED_FUNCTION_61_14(153, v868, v873, v878, v883, v888, v893, v898, v903, v908, v913, v918, v923, v928, v933, v938, v943, v948, v953, v958, v963, v968, v973, v978, v983, v988, v993, v998, v999, v1000, v1001);
          v395 = OUTLINED_FUNCTION_15_34();
          v397 = lpta_loadp_setscan_r(v395, v396);
          LODWORD(v56) = v65;
          if (!v397)
          {
            v398 = OUTLINED_FUNCTION_6_37();
            v402 = testFldeq(v398, v399, v400, v401);
            LODWORD(v56) = v65;
            if (!v402)
            {
              v366 = advance_tok(v0);
LABEL_112:
              LODWORD(v56) = v65;
              if (!v366)
              {
                goto LABEL_265;
              }
            }
          }

          continue;
        case 155:
LABEL_68:
          OUTLINED_FUNCTION_45_16(155, v868, v873, v878, v883, v888, v893, v898, v903, v908, v913, v918, v923, v928, v933, v938, v943, v948, v953, v958, v963, v968, v973, v978, v983, v988);
          v260 = OUTLINED_FUNCTION_6_37();
          v264 = testFldeq(v260, v261, v262, v263);
          LODWORD(v56) = v65;
          if (!v264)
          {
            v265 = advance_tok(v0);
            LODWORD(v56) = v65;
            if (!v265)
            {
              v266 = OUTLINED_FUNCTION_15_34();
              v268 = lpta_loadp_setscan_l(v266, v267);
              LODWORD(v56) = v65;
              if (!v268)
              {
                v269 = advanc(v0);
                LODWORD(v56) = v65;
                if (!v269)
                {
                  goto LABEL_72;
                }
              }
            }
          }

          continue;
        case 156:
LABEL_72:
          v270 = OUTLINED_FUNCTION_13_35();
          v273 = chstream(v270, v271, v272);
          LODWORD(v56) = v65;
          if (!v273)
          {
            OUTLINED_FUNCTION_28_24();
            v274 = test_string_s();
            LODWORD(v56) = v65;
            if (!v274)
            {
              goto LABEL_74;
            }
          }

          continue;
        case 157:
LABEL_74:
          v275 = OUTLINED_FUNCTION_38_18();
          v277 = chstream(v275, v276, 4u);
          LODWORD(v56) = v65;
          if (!v277)
          {
            v278 = advanc(v0);
            LODWORD(v56) = v65;
            if (!v278)
            {
              goto LABEL_76;
            }
          }

          continue;
        case 158:
LABEL_76:
          v279 = OUTLINED_FUNCTION_13_35();
          v282 = chstream(v279, v280, v281);
          LODWORD(v56) = v65;
          if (!v282)
          {
            OUTLINED_FUNCTION_17_34();
            v283 = test_string_s();
            LODWORD(v56) = v65;
            if (!v283)
            {
              goto LABEL_78;
            }
          }

          continue;
        case 159:
LABEL_78:
          v284 = OUTLINED_FUNCTION_38_18();
          v286 = chstream(v284, v285, 4u);
          LODWORD(v56) = v65;
          if (!v286)
          {
            goto LABEL_79;
          }

          continue;
        case 160:
LABEL_79:
          v287 = 160;
LABEL_264:
          OUTLINED_FUNCTION_61_14(v287, v868, v873, v878, v883, v888, v893, v898, v903, v908, v913, v918, v923, v928, v933, v938, v943, v948, v953, v958, v963, v968, v973, v978, v983, v988, v993, v998, v999, v1000, v1001);
LABEL_265:
          v66 = 2;
LABEL_324:
          HIWORD(v998) = v66;
LABEL_325:
          v822 = OUTLINED_FUNCTION_38_18();
          starttest(v822, v823);
          v824 = OUTLINED_FUNCTION_20_29();
          v58 = lpta_loadp_setscan_r(v824, v825);
          if (v58)
          {
LABEL_354:
            OUTLINED_FUNCTION_50_16(v58, v56, v59, v60, v61, v62, v63, v64, v868, v873, v878, v883, v888, v893, v898, v903, v908, v913, v918, v923, v928, v933, v938, v943, v948, v953, v958, v963, v968, v973, v978, v983, v988, v993, v998, SWORD2(v998), SHIWORD(v998), v999, v1000, v1001, v1002);
            goto LABEL_355;
          }

          v826 = OUTLINED_FUNCTION_8_37();
          v830 = testFldeq(v826, v827, v828, v829);
          LODWORD(v56) = v65;
          if (v830)
          {
            continue;
          }

          v831 = advance_tok(v0);
          LODWORD(v56) = v65;
          if (v831)
          {
            continue;
          }

LABEL_347:
          OUTLINED_FUNCTION_79_12(162, v868, v873, v878, v883, v888, v893, v898, v903, v908, v913, v918, v923, v928, v933, v938, v943, v948, v953, v958, v963, v968, v973, v978, v983, v988, v993, v998, v999);
          v863 = 2;
LABEL_348:
          OUTLINED_FUNCTION_50_16(v748, v56, v749, v750, v751, v752, v753, v754, v868, v873, v878, v883, v888, v893, v898, v903, v908, v913, v918, v923, v928, v933, v938, v943, v948, v953, v958, v963, v968, v973, v978, v983, v988, v993, v998, SWORD2(v998), v863, v999, v1000, v1001, v1002);
LABEL_355:
          vretproc(v0);
          result = 0;
          break;
        case 162:
          goto LABEL_347;
        default:
          goto LABEL_3;
      }

      break;
    }
  }

  v27 = *MEMORY[0x277D85DE8];
  return result;
}