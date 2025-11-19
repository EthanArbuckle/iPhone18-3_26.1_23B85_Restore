void strip_noun_verb_suffix()
{
  OUTLINED_FUNCTION_66_14();
  v1 = v0;
  v117 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_11_40(v0, v2, v3, v4, v5, v6, v7, v8, v38, v41, v44, v47, v50, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110);
  OUTLINED_FUNCTION_30_29();
  bzero(v116, v9);
  v10 = setjmp(v116);
  if (!v10 && !OUTLINED_FUNCTION_15_39(v10, v11, v12, v13, v14, v15, v16, v17, v39, v42, v45, v48, v51, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, *v112, v112[4], *v113, *&v113[4], v113[6], v114, SWORD2(v114), SBYTE6(v114), SHIBYTE(v114), v115, v116[0]))
  {
    v19 = OUTLINED_FUNCTION_32_27();
    push_ptr_init(v19, v20);
    fence_44(v1, 0, &null_str_12);
    v21 = OUTLINED_FUNCTION_22_33();
    fence_44(v21, v22, v23);
    v24 = OUTLINED_FUNCTION_4_42();
    if (lpta_loadp_setscan_l(v24, v25) || (OUTLINED_FUNCTION_6_41(), test_string_s()))
    {
      v26 = 0;
      while (2)
      {
        v27 = OUTLINED_FUNCTION_35_25();
        starttest(v27, v28);
        v29 = OUTLINED_FUNCTION_4_42();
        if (!lpta_loadp_setscan_l(v29, v30))
        {
          OUTLINED_FUNCTION_5_42();
          if (!test_string_s())
          {
LABEL_9:
            v31 = OUTLINED_FUNCTION_50_16();
            savescptr(v31, v32, v33);
            OUTLINED_FUNCTION_69_12();
            bspush_ca_scan_boa();
            OUTLINED_FUNCTION_22_33();
            v34 = test_string_s();
            if (v34)
            {
              v35 = v26;
            }

            else
            {
              v35 = 1;
            }

            if (v1[13])
            {
              v36 = OUTLINED_FUNCTION_84_11(v34, v35);
            }

            else
            {
              v37 = vback(v1, v35);
              v36 = 0;
            }

            v26 = v36;
            switch(v37)
            {
              case 1:
                v26 = v36;
                continue;
              case 2:
                goto LABEL_17;
              case 3:
                goto LABEL_19;
              case 5:
                goto LABEL_9;
              case 6:
                bspop_boa(v1);
                OUTLINED_FUNCTION_20_34();
                goto LABEL_19;
              default:
                goto LABEL_3;
            }
          }
        }

        break;
      }
    }

    else
    {
LABEL_17:
      OUTLINED_FUNCTION_43_19(2, v40, v43, v46, v49, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109);
LABEL_19:
      OUTLINED_FUNCTION_32_27();
      strip_suffix();
    }
  }

LABEL_3:
  vretproc(v1);
  v18 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_65_14();
}

uint64_t strip_inner_adj_suffix(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v209 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7_41(a1, a2, a3, a4, a5, a6, a7, a8, v153, v155, v157, v159, v161, v163, v165, v167, v169, v171, v173, v175, v177, v179, v181, v183, v185, v187, v189, v191, v193, v195, v197, v199, v201, v203, v205, v207[0], v207[1]);
  OUTLINED_FUNCTION_30_29();
  bzero(v208, v9);
  if (setjmp(v208))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_37_22();
  if (ventproc(a1, v10, v11, v12, v13, v208))
  {
    goto LABEL_3;
  }

  v16 = OUTLINED_FUNCTION_42_20();
  push_ptr_init(v16, v17);
  v18 = OUTLINED_FUNCTION_33_26();
  push_ptr_init(v18, v19);
  v20 = OUTLINED_FUNCTION_32_27();
  v22 = push_ptr_init(v20, v21);
  OUTLINED_FUNCTION_71_12(v22, v23, &null_str_12);
  v24 = OUTLINED_FUNCTION_25_31();
  fence_44(v24, v25, v26);
  OUTLINED_FUNCTION_93_8();
  v27 = OUTLINED_FUNCTION_24_31();
  v29 = lpta_loadp_setscan_l(v27, v28);
  v30 = 0;
  LODWORD(v31) = 0;
  if (!v29)
  {
    v78 = OUTLINED_FUNCTION_21_33();
    bspush_ca_scan(v78, v79);
    OUTLINED_FUNCTION_3_43();
    v80 = test_string_s();
    v81 = 0;
    v82 = 0;
    v31 = 0;
    v77 = 0;
    if (v80)
    {
      goto LABEL_35;
    }

LABEL_30:
    v69 = v82;
    v31 = v81;
    OUTLINED_FUNCTION_49_16(3, v154, v156, v158, v160, v162, v164, v166, v168, v170, v172, v174, v176, v178, v180, v182, v184, v186, v188, v190, v192, v194, v196, v198, v200, v202, v204, v206, v207[0]);
    OUTLINED_FUNCTION_103_7();
    goto LABEL_31;
  }

  while (2)
  {
    v32 = v30;
    v33 = OUTLINED_FUNCTION_4_42();
    if (lpta_loadp_setscan_l(v33, v34))
    {
      v35 = v32;
    }

    else
    {
      OUTLINED_FUNCTION_3_43();
      v36 = test_string_s();
      v37 = v32;
      v38 = v31;
      v35 = v32;
      if (!v36)
      {
LABEL_73:
        v69 = v38;
        v116 = v37;
        OUTLINED_FUNCTION_48_16(6, v154, v156, v158, v160, v162, v164, v166, v168, v170, v172, v174, v176, v178, v180, v182, v184, v186, v188, v190, v192, v194, v196, v198, v200, v202, v204);
LABEL_74:
        v117 = OUTLINED_FUNCTION_36_23();
        savescptr(v117, v118, v119);
        v120 = OUTLINED_FUNCTION_35_25();
        if (lpta_loadp_setscan_l(v120, v121))
        {
          v31 = v116;
        }

        else
        {
          OUTLINED_FUNCTION_5_42();
          v31 = v116;
          if (!test_string_s())
          {
            break;
          }
        }

LABEL_77:
        OUTLINED_FUNCTION_20_34();
        *(a1 + 5966) = v122;
        goto LABEL_104;
      }
    }

LABEL_8:
    v39 = v35;
    v40 = OUTLINED_FUNCTION_4_42();
    if (lpta_loadp_setscan_l(v40, v41))
    {
      v42 = v39;
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_6_41();
    v43 = test_string_s();
    v44 = v39;
    v45 = v31;
    v42 = v39;
    if (!v43)
    {
LABEL_102:
      v69 = v45;
      v31 = v44;
      OUTLINED_FUNCTION_43_19(10, v154, v156, v158, v160, v162, v164, v166, v168, v170, v172, v174, v176, v178, v180, v182, v184, v186, v188, v190, v192, v194, v196, v198, v200);
LABEL_103:
      OUTLINED_FUNCTION_49_16(11, v154, v156, v158, v160, v162, v164, v166, v168, v170, v172, v174, v176, v178, v180, v182, v184, v186, v188, v190, v192, v194, v196, v198, v200, v202, v204, v206, v207[0]);
      OUTLINED_FUNCTION_20_34();
LABEL_104:
      *(a1 + 5978) = v122;
      goto LABEL_31;
    }

LABEL_11:
    v46 = v42;
    v47 = OUTLINED_FUNCTION_4_42();
    if (lpta_loadp_setscan_l(v47, v48))
    {
      v49 = v46;
    }

    else
    {
      OUTLINED_FUNCTION_3_43();
      v50 = test_string_s();
      v51 = v31;
      v49 = v46;
      if (!v50)
      {
LABEL_106:
        v69 = v51;
        OUTLINED_FUNCTION_49_16(13, v154, v156, v158, v160, v162, v164, v166, v168, v170, v172, v174, v176, v178, v180, v182, v184, v186, v188, v190, v192, v194, v196, v198, v200, v202, v204, v206, v207[0]);
        v31 = 1;
        *(a1 + 5966) = 1;
        goto LABEL_31;
      }
    }

LABEL_14:
    v52 = v49;
    v53 = OUTLINED_FUNCTION_4_42();
    if (lpta_loadp_setscan_l(v53, v54))
    {
      v55 = v52;
    }

    else
    {
      OUTLINED_FUNCTION_3_43();
      v56 = test_string_s();
      v57 = v31;
      v55 = v52;
      if (!v56)
      {
LABEL_79:
        v69 = v57;
        OUTLINED_FUNCTION_49_16(16, v154, v156, v158, v160, v162, v164, v166, v168, v170, v172, v174, v176, v178, v180, v182, v184, v186, v188, v190, v192, v194, v196, v198, v200, v202, v204, v206, v207[0]);
LABEL_80:
        v31 = 1;
        goto LABEL_31;
      }
    }

LABEL_17:
    v58 = v55;
    v59 = OUTLINED_FUNCTION_4_42();
    if (lpta_loadp_setscan_l(v59, v60))
    {
      v61 = v58;
      goto LABEL_20;
    }

    OUTLINED_FUNCTION_18_36();
    v62 = test_string_s();
    v63 = v58;
    v64 = v31;
    v61 = v58;
    if (v62)
    {
LABEL_20:
      v65 = v61;
      v66 = OUTLINED_FUNCTION_4_42();
      if (lpta_loadp_setscan_l(v66, v67))
      {
        break;
      }

      OUTLINED_FUNCTION_6_41();
      v68 = v65;
      v69 = v31;
      if (test_string_s())
      {
        break;
      }

LABEL_22:
      v70 = OUTLINED_FUNCTION_36_23();
      savescptr(v70, v71, v72);
      v73 = OUTLINED_FUNCTION_21_33();
      starttest_l(v73, v74);
      OUTLINED_FUNCTION_21_33();
      bspush_ca_boa();
      v75 = OUTLINED_FUNCTION_35_25();
      if (!lpta_loadp_setscan_l(v75, v76))
      {
        OUTLINED_FUNCTION_6_41();
        if (!test_string_s())
        {
          v83 = OUTLINED_FUNCTION_21_33();
          bspush_ca_scan(v83, v84);
          OUTLINED_FUNCTION_2_44();
          v85 = test_string_s();
          v31 = v68;
          v77 = v69;
          v86 = v68;
          if (!v85)
          {
LABEL_52:
            v31 = v86;
            v77 = 1;
          }

          goto LABEL_35;
        }
      }

      v31 = v68;
LABEL_25:
      v77 = v69;
      goto LABEL_35;
    }

LABEL_87:
    v69 = v64;
    v123 = OUTLINED_FUNCTION_36_23();
    savescptr(v123, v124, v125);
    v126 = OUTLINED_FUNCTION_35_25();
    if (lpta_loadp_setscan_l(v126, v127))
    {
LABEL_88:
      v128 = v69;
    }

    else
    {
      OUTLINED_FUNCTION_2_44();
      v128 = v69;
      if (!test_string_s())
      {
        break;
      }
    }

    v129 = OUTLINED_FUNCTION_21_33();
    starttest(v129, v130);
    OUTLINED_FUNCTION_41_20();
    if (one_eng_syllable())
    {
      v69 = v128;
      goto LABEL_93;
    }

    v131 = OUTLINED_FUNCTION_23_33();
    v133 = lpta_loadp_setscan_l(v131, v132);
    v114 = v63;
    v115 = v128;
    v69 = v128;
    if (v133)
    {
LABEL_93:
      v134 = OUTLINED_FUNCTION_21_33();
      starttest(v134, v135);
      v31 = 1;
      if (!lpta_loadp_setscan_l(a1, v207))
      {
        v136 = OUTLINED_FUNCTION_21_33();
        bspush_ca_scan(v136, v137);
        OUTLINED_FUNCTION_2_44();
        v138 = test_string_s();
        v31 = v63;
        v77 = v69;
        v93 = v69;
        if (v138)
        {
          goto LABEL_35;
        }

LABEL_95:
        v139 = v93;
        v140 = OUTLINED_FUNCTION_21_33();
        bspush_ca_scan(v140, v141);
        OUTLINED_FUNCTION_2_44();
        v142 = test_string_s();
        v31 = v63;
        v77 = v139;
        v94 = v63;
        v95 = v139;
        if (v142)
        {
          goto LABEL_35;
        }

LABEL_107:
        v69 = v95;
        v31 = v94;
        OUTLINED_FUNCTION_21_33();
        bspush_ca_scan_boa();
        v149 = OUTLINED_FUNCTION_1_44();
        if (testFldeq(v149, v150, v151, v152))
        {
          goto LABEL_25;
        }

        v89 = advance_tok(a1);
LABEL_32:
        if (v89)
        {
          v77 = v69;
        }

        else
        {
          v77 = 1;
        }

        goto LABEL_35;
      }

LABEL_31:
      v87 = OUTLINED_FUNCTION_21_33();
      starttest(v87, v88);
      OUTLINED_FUNCTION_21_33();
      bspush_ca_boa();
      OUTLINED_FUNCTION_42_20();
      v89 = strip_suffix();
      goto LABEL_32;
    }

LABEL_97:
    v143 = v115;
    v144 = v114;
    OUTLINED_FUNCTION_21_33();
    bspush_ca_scan_boa();
    v145 = OUTLINED_FUNCTION_1_44();
    if (testFldeq(v145, v146, v147, v148))
    {
      v77 = v143;
    }

    else
    {
      v77 = 1;
    }

    v31 = v144;
LABEL_35:
    v90 = *(a1 + 104);
    if (v90)
    {
      v91 = OUTLINED_FUNCTION_38_21(v90);
      v69 = v92;
    }

    else
    {
      v91 = vback(a1, v77);
      v69 = 0;
    }

    v81 = v31;
    v82 = v69;
    v63 = v31;
    v93 = v69;
    v94 = v31;
    v95 = v69;
    v86 = v31;
    switch(v91)
    {
      case 1:
        OUTLINED_FUNCTION_79_11();
        continue;
      case 2:
        OUTLINED_FUNCTION_6_41();
        v96 = test_string_s();
        v77 = v69;
        if (v96)
        {
          goto LABEL_35;
        }

        v81 = v31;
        v82 = v69;
        goto LABEL_30;
      case 3:
        goto LABEL_30;
      case 4:
        goto LABEL_31;
      case 5:
        OUTLINED_FUNCTION_79_11();
        goto LABEL_8;
      case 6:
        v37 = v31;
        v38 = v69;
        goto LABEL_73;
      case 7:
        v116 = v31;
        goto LABEL_74;
      case 8:
        goto LABEL_77;
      case 9:
        OUTLINED_FUNCTION_79_11();
        goto LABEL_11;
      case 10:
        v44 = v31;
        v45 = v69;
        goto LABEL_102;
      case 11:
        goto LABEL_103;
      case 12:
        OUTLINED_FUNCTION_79_11();
        goto LABEL_14;
      case 13:
        v51 = v69;
        goto LABEL_106;
      case 14:
      case 23:
      case 32:
        goto LABEL_80;
      case 15:
        OUTLINED_FUNCTION_79_11();
        goto LABEL_17;
      case 16:
        v57 = v69;
        goto LABEL_79;
      case 17:
        OUTLINED_FUNCTION_79_11();
        goto LABEL_20;
      case 18:
        v63 = v31;
        v64 = v69;
        goto LABEL_87;
      case 19:
        v63 = v31;
        goto LABEL_88;
      case 20:
        v63 = v31;
        goto LABEL_93;
      case 21:
        bspop_boa(a1);
        v101 = advance_tok(a1);
        v77 = v69;
        if (v101)
        {
          goto LABEL_35;
        }

        v102 = OUTLINED_FUNCTION_21_33();
        bspush_ca_scan(v102, v103);
        v104 = OUTLINED_FUNCTION_1_44();
        v108 = testFldeq(v104, v105, v106, v107);
        v77 = v69;
        if (v108)
        {
          goto LABEL_35;
        }

        v109 = advance_tok(a1);
        v77 = v69;
        if (v109)
        {
          goto LABEL_35;
        }

        goto LABEL_3;
      case 22:
        v114 = v31;
        v115 = v69;
        goto LABEL_97;
      case 24:
        v98 = OUTLINED_FUNCTION_21_33();
        bspush_ca_scan(v98, v99);
        goto LABEL_44;
      case 25:
        goto LABEL_95;
      case 26:
LABEL_44:
        OUTLINED_FUNCTION_2_44();
        v100 = test_string_s();
        v77 = v69;
        if (v100)
        {
          goto LABEL_35;
        }

        v63 = v31;
        v93 = v69;
        goto LABEL_95;
      case 27:
        OUTLINED_FUNCTION_2_44();
        v97 = test_string_s();
        v77 = v69;
        if (v97)
        {
          goto LABEL_35;
        }

        v94 = v31;
        v95 = v69;
        goto LABEL_107;
      case 28:
        goto LABEL_107;
      case 29:
        bspop_boa(a1);
        v31 = 1;
        *(a1 + 5958) = 1;
        goto LABEL_31;
      case 31:
        v68 = v31;
        goto LABEL_22;
      case 33:
      case 37:
        bspop_boa(a1);
        goto LABEL_3;
      case 34:
        OUTLINED_FUNCTION_2_44();
        v110 = test_string_s();
        v77 = v69;
        if (v110)
        {
          goto LABEL_35;
        }

        v86 = v31;
        goto LABEL_52;
      case 35:
        goto LABEL_52;
      case 36:
        OUTLINED_FUNCTION_68_12();
        v111 = v111 || v31 == 1;
        if (!v111)
        {
          goto LABEL_61;
        }

        goto LABEL_3;
      case 38:
        if (v31 != 1)
        {
          goto LABEL_61;
        }

        goto LABEL_3;
      case 40:
LABEL_61:
        v112 = OUTLINED_FUNCTION_33_26();
        lpta_loadpn(v112, v113);
        OUTLINED_FUNCTION_67_14();
        if (compare_ptas(a1) || testneq(a1))
        {
          goto LABEL_63;
        }

        strip_ize();
        break;
      case 41:
LABEL_63:
        strip_ing(a1);
        break;
      default:
        goto LABEL_3;
    }

    break;
  }

LABEL_3:
  OUTLINED_FUNCTION_94_8();
  v14 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_100_7();
}

int *strip_medial_noun_suffix(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v191 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8_41(a1, a2, a3, a4, a5, a6, a7, a8, v109, v112, v115, v118, v121, v124, v127, v130, v133, v136, v139, v142, v145, v148, v151, v154, v157, v160, v163, v166, v169, v172, v175, v178, v181, v184, v185);
  OUTLINED_FUNCTION_30_29();
  v9 = v190;
  bzero(v190, v10);
  if (setjmp(v190))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_19_36();
  if (OUTLINED_FUNCTION_107_7(v11, v12, v13, v14, v15, v16, v17, v18, v110, v113, v116, v119, v122, v125, v128, v131, v134, v137, v140, v143, v146, v149, v152, v155, v158, v161, v164, v167, v170, v173, v176, v179, v182, v184, v185, v186, v187, v188, v189, v190[0]))
  {
    goto LABEL_3;
  }

  v21 = OUTLINED_FUNCTION_33_26();
  push_ptr_init(v21, v22);
  v23 = OUTLINED_FUNCTION_32_27();
  v25 = push_ptr_init(v23, v24);
  v26 = 0;
  OUTLINED_FUNCTION_71_12(v25, v27, &null_str_12);
  v9 = &unk_280581189;
  v28 = OUTLINED_FUNCTION_22_33();
  fence_44(v28, v29, &unk_280581189);
  v30 = OUTLINED_FUNCTION_4_42();
  if (!lpta_loadp_setscan_l(v30, v31))
  {
    OUTLINED_FUNCTION_6_41();
    v26 = 0;
    v32 = 0;
    if (!test_string_s())
    {
LABEL_8:
      OUTLINED_FUNCTION_47_17();
      savescptr(a1, v33, &v184);
      v34 = OUTLINED_FUNCTION_51_16();
      if (lpta_loadp_setscan_l(v34, v35))
      {
        v36 = v32;
      }

      else
      {
        OUTLINED_FUNCTION_2_44();
        v36 = v32;
        if (!test_string_s())
        {
          goto LABEL_3;
        }
      }

LABEL_11:
      v37 = OUTLINED_FUNCTION_21_33();
      starttest(v37, v38);
      OUTLINED_FUNCTION_21_33();
      bspush_ca_boa();
      v39 = OUTLINED_FUNCTION_23_33();
      if (lpta_loadp_setscan_l(v39, v40))
      {
        v41 = v36;
      }

      else
      {
        v42 = OUTLINED_FUNCTION_21_33();
        bspush_ca_scan(v42, v43);
        OUTLINED_FUNCTION_5_42();
        v41 = v36;
        if (!test_string_s())
        {
LABEL_14:
          v41 = 1;
        }
      }

      goto LABEL_31;
    }
  }

  while (2)
  {
    v44 = OUTLINED_FUNCTION_4_42();
    if (!lpta_loadp_setscan_l(v44, v45))
    {
      OUTLINED_FUNCTION_3_43();
      v46 = v26;
      if (!test_string_s())
      {
LABEL_59:
        OUTLINED_FUNCTION_43_19(16, v111, v114, v117, v120, v123, v126, v129, v132, v135, v138, v141, v144, v147, v150, v153, v156, v159, v162, v165, v168, v171, v174, v177, v180);
LABEL_60:
        v41 = v46;
        OUTLINED_FUNCTION_56_16(17, v111, v114, v117, v120, v123, v126, v129, v132, v135, v138, v141, v144, v147, v150, v153, v156, v159, v162, v165, v168, v171, v174, v177, v180, v183, v184);
        v97 = OUTLINED_FUNCTION_21_33();
        starttest(v97, v98);
        v99 = OUTLINED_FUNCTION_51_16();
        if (!lpta_loadp_setscan_l(v99, v100))
        {
          v101 = OUTLINED_FUNCTION_21_33();
          bspush_ca_scan(v101, v102);
          OUTLINED_FUNCTION_2_44();
          if (!test_string_s())
          {
            break;
          }

          goto LABEL_31;
        }

LABEL_61:
        OUTLINED_FUNCTION_103_7();
        goto LABEL_86;
      }
    }

LABEL_19:
    v47 = OUTLINED_FUNCTION_21_33();
    starttest(v47, v48);
    v49 = OUTLINED_FUNCTION_4_42();
    if (lpta_loadp_setscan_l(v49, v50))
    {
LABEL_20:
      v51 = OUTLINED_FUNCTION_4_42();
      if (lpta_loadp_setscan_l(v51, v52) || (OUTLINED_FUNCTION_18_36(), v41 = v26, test_string_s()))
      {
LABEL_22:
        v53 = OUTLINED_FUNCTION_4_42();
        if (lpta_loadp_setscan_l(v53, v54))
        {
          break;
        }

        OUTLINED_FUNCTION_3_43();
        if (test_string_s())
        {
          break;
        }

LABEL_24:
        OUTLINED_FUNCTION_48_16(32, v111, v114, v117, v120, v123, v126, v129, v132, v135, v138, v141, v144, v147, v150, v153, v156, v159, v162, v165, v168, v171, v174, v177, v180, v183, v184);
        OUTLINED_FUNCTION_103_7();
        goto LABEL_27;
      }

LABEL_83:
      OUTLINED_FUNCTION_56_16(28, v111, v114, v117, v120, v123, v126, v129, v132, v135, v138, v141, v144, v147, v150, v153, v156, v159, v162, v165, v168, v171, v174, v177, v180, v183, v184);
      v107 = OUTLINED_FUNCTION_51_16();
      if (lpta_loadp_setscan_l(v107, v108))
      {
        break;
      }

      OUTLINED_FUNCTION_25_31();
      if (test_string_s())
      {
        break;
      }

      *(a1 + 5990) = v26;
LABEL_86:
      v46 = v41;
LABEL_28:
      v57 = OUTLINED_FUNCTION_21_33();
      starttest(v57, v58);
      OUTLINED_FUNCTION_21_33();
      bspush_ca_boa();
      OUTLINED_FUNCTION_33_26();
      if (strip_suffix())
      {
        v41 = v46;
      }

      else
      {
        v41 = 1;
      }

      goto LABEL_31;
    }

    v55 = OUTLINED_FUNCTION_21_33();
    bspush_ca_scan(v55, v56);
    OUTLINED_FUNCTION_6_41();
    v41 = v26;
    if (!test_string_s())
    {
LABEL_26:
      OUTLINED_FUNCTION_48_16(26, v111, v114, v117, v120, v123, v126, v129, v132, v135, v138, v141, v144, v147, v150, v153, v156, v159, v162, v165, v168, v171, v174, v177, v180, v183, v184);
LABEL_27:
      v46 = v26;
      goto LABEL_28;
    }

LABEL_31:
    v59 = v41;
LABEL_32:
    v60 = *(a1 + 104);
    if (v60)
    {
      v61 = OUTLINED_FUNCTION_38_21(v60);
      v46 = v67;
    }

    else
    {
      v61 = vback(a1, v59);
      v46 = 0;
    }

    v68 = &unk_280581191;
    v69 = 13;
    v26 = v46;
    switch(v61)
    {
      case 1:
        v26 = v46;
        continue;
      case 2:
        v32 = v46;
        goto LABEL_8;
      case 3:
        v36 = v46;
        goto LABEL_11;
      case 4:
        goto LABEL_81;
      case 5:
        bspop_boa(a1);
        OUTLINED_FUNCTION_54_16();
LABEL_81:
        *(a1 + 5962) = 1;
        goto LABEL_28;
      case 6:
        v70 = OUTLINED_FUNCTION_21_33();
        bspush_ca_scan(v70, v71);
        OUTLINED_FUNCTION_5_42();
        goto LABEL_45;
      case 7:
        goto LABEL_14;
      case 8:
        v80 = OUTLINED_FUNCTION_16_39();
        bspush_ca_scan(v80, v81);
        OUTLINED_FUNCTION_2_44();
LABEL_45:
        v82 = test_string_s();
        v59 = v46;
        if (!v82)
        {
          goto LABEL_14;
        }

        goto LABEL_32;
      case 9:
        v77 = OUTLINED_FUNCTION_17_37();
        bspush_ca_scan(v77, v78);
        OUTLINED_FUNCTION_2_44();
        v79 = test_string_s();
        v59 = v46;
        if (v79)
        {
          goto LABEL_32;
        }

        goto LABEL_54;
      case 10:
        OUTLINED_FUNCTION_2_44();
        v95 = test_string_s();
        v59 = v46;
        if (v95)
        {
          goto LABEL_32;
        }

        goto LABEL_54;
      case 11:
        goto LABEL_54;
      case 12:
        bspop_boa(a1);
LABEL_54:
        bspush_ca_scan_boa();
        OUTLINED_FUNCTION_2_44();
        if (test_string_s())
        {
          v59 = v46;
        }

        else
        {
          v59 = 1;
        }

        goto LABEL_32;
      case 13:
        bspop_boa(a1);
        goto LABEL_14;
      case 14:
      case 30:
        goto LABEL_28;
      case 15:
        v26 = v46;
        goto LABEL_19;
      case 16:
        goto LABEL_59;
      case 17:
        goto LABEL_60;
      case 18:
        v41 = v46;
        goto LABEL_61;
      case 19:
        v72 = OUTLINED_FUNCTION_21_33();
        bspush_ca_scan(v72, v73);
        OUTLINED_FUNCTION_2_44();
        v74 = test_string_s();
        goto LABEL_40;
      case 21:
        v83 = OUTLINED_FUNCTION_1_44();
        v87 = testFldeq(v83, v84, v85, v86);
        v59 = v46;
        if (v87)
        {
          goto LABEL_32;
        }

        v88 = advance_tok(a1);
        v59 = v46;
        if (v88)
        {
          goto LABEL_32;
        }

        goto LABEL_49;
      case 22:
        OUTLINED_FUNCTION_88_10();
        v75 = *(a1 + 1648);
        v76 = OUTLINED_FUNCTION_26_31();
        v74 = test_ptr(v76);
LABEL_40:
        v59 = v46;
        if (!v74)
        {
          goto LABEL_3;
        }

        goto LABEL_32;
      case 23:
LABEL_49:
        while (1)
        {
          v89 = OUTLINED_FUNCTION_0_45();
          if (testFldeq(v89, v90, v91, v92) || advance_tok(a1))
          {
            break;
          }

          v93 = OUTLINED_FUNCTION_21_33();
          bspush_ca_scan(v93, v94);
        }

        v59 = v46;
        goto LABEL_32;
      case 24:
        v26 = v46;
        goto LABEL_20;
      case 25:
        OUTLINED_FUNCTION_3_43();
        v96 = test_string_s();
        v26 = v46;
        v59 = v46;
        if (!v96)
        {
          goto LABEL_26;
        }

        goto LABEL_32;
      case 26:
        goto LABEL_26;
      case 27:
        v26 = v46;
        goto LABEL_22;
      case 28:
        v41 = v46;
        goto LABEL_83;
      case 32:
        v26 = v46;
        goto LABEL_24;
      case 33:
        *(a1 + 5950) = 0;
        if (*(a1 + 5946) != 1)
        {
          goto LABEL_65;
        }

        goto LABEL_3;
      case 34:
        bspop_boa(a1);
        goto LABEL_3;
      case 35:
LABEL_65:
        v103 = OUTLINED_FUNCTION_32_27();
        lpta_loadpn(v103, v104);
        OUTLINED_FUNCTION_67_14();
        if (compare_ptas(a1) || testneq(a1))
        {
          goto LABEL_67;
        }

        strip_ize();
        goto LABEL_3;
      case 37:
LABEL_67:
        strip_ly_suffix();
        if (v105)
        {
          goto LABEL_68;
        }

        goto LABEL_3;
      case 39:
LABEL_68:
        strip_noun_verb_suffix();
        if (v106)
        {
          goto LABEL_69;
        }

        goto LABEL_3;
      case 40:
LABEL_69:
        if (strip_inner_noun_suffix(a1, v69, v68, v62, v63, v64, v65, v66))
        {
          goto LABEL_70;
        }

        goto LABEL_3;
      case 41:
LABEL_70:
        if (strip_nounadj_suffix(a1, v69, v68, v62, v63, v64, v65, v66))
        {
          goto LABEL_71;
        }

        goto LABEL_3;
      case 42:
LABEL_71:
        strip_ambig_suffix();
        break;
      default:
        goto LABEL_3;
    }

    break;
  }

LABEL_3:
  OUTLINED_FUNCTION_94_8();
  v19 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t strip_inner_noun_suffix(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v237 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8_41(a1, a2, a3, a4, a5, a6, a7, a8, v184, v186, v188, v190, v192, v194, v196, v198, v200, v202, v204, v206, v208, v210, v212, v214, v216, v218, v220, v222, v224, v226, v228, v230, v232, v234, v236);
  OUTLINED_FUNCTION_30_29();
  OUTLINED_FUNCTION_105_7(v10, v11);
  if (setjmp(v8))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_19_36();
  if (OUTLINED_FUNCTION_104_7(v12, v13, v14, v15, v16))
  {
    goto LABEL_3;
  }

  v20 = OUTLINED_FUNCTION_33_26();
  push_ptr_init(v20, v21);
  v22 = OUTLINED_FUNCTION_32_27();
  v24 = push_ptr_init(v22, v23);
  v25 = 0;
  OUTLINED_FUNCTION_71_12(v24, v26, &null_str_12);
  v27 = OUTLINED_FUNCTION_22_33();
  fence_44(v27, v28, v29);
  v30 = OUTLINED_FUNCTION_4_42();
  if (!lpta_loadp_setscan_l(v30, v31))
  {
    OUTLINED_FUNCTION_5_42();
    v25 = 0;
    v32 = 0;
    if (!test_string_s())
    {
LABEL_16:
      OUTLINED_FUNCTION_27_30(2, v185, v187, v189, v191, v193, v195, v197, v199, v201, v203, v205, v207, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235);
      v45 = OUTLINED_FUNCTION_21_33();
      starttest(v45, v46);
      v47 = OUTLINED_FUNCTION_35_25();
      if (lpta_loadp_setscan_l(v47, v48))
      {
LABEL_17:
        v25 = v32;
        v49 = OUTLINED_FUNCTION_21_33();
        starttest(v49, v50);
        v51 = OUTLINED_FUNCTION_23_33();
        if (lpta_loadp_setscan_l(v51, v52))
        {
LABEL_18:
          v53 = OUTLINED_FUNCTION_17_37();
          starttest(v53, v54);
          v55 = OUTLINED_FUNCTION_23_33();
          if (!lpta_loadp_setscan_l(v55, v56))
          {
            v57 = OUTLINED_FUNCTION_21_33();
            bspush_ca_scan(v57, v58);
            v59 = OUTLINED_FUNCTION_10_40();
            if (!testFldeq(v59, v60, v61, 25))
            {
              v32 = v25;
              if (!advance_tok(a1))
              {
                do
                {
LABEL_21:
                  v62 = OUTLINED_FUNCTION_35_25();
                  bspush_ca_scan(v62, v63);
                  v64 = OUTLINED_FUNCTION_0_45();
                }

                while (!testFldeq(v64, v65, v66, v67) && !advance_tok(a1));
                v25 = v32;
              }
            }

            goto LABEL_28;
          }

LABEL_111:
          v17 = 0;
          goto LABEL_4;
        }

        v70 = OUTLINED_FUNCTION_21_33();
        bspush_ca_scan(v70, v71);
        OUTLINED_FUNCTION_2_44();
        v72 = test_string_s();
        v73 = v32;
        if (v72)
        {
          goto LABEL_28;
        }

LABEL_27:
        v25 = v73;
        OUTLINED_FUNCTION_2_44();
        if (test_string_s())
        {
          goto LABEL_28;
        }
      }

      else
      {
        v68 = OUTLINED_FUNCTION_21_33();
        bspush_ca_scan(v68, v69);
        OUTLINED_FUNCTION_5_42();
        v25 = v32;
        if (test_string_s())
        {
          goto LABEL_28;
        }

LABEL_25:
        OUTLINED_FUNCTION_54_16();
      }

      goto LABEL_110;
    }
  }

LABEL_7:
  v33 = OUTLINED_FUNCTION_4_42();
  if (!lpta_loadp_setscan_l(v33, v34))
  {
    OUTLINED_FUNCTION_6_41();
    v32 = v25;
    if (!test_string_s())
    {
LABEL_84:
      OUTLINED_FUNCTION_27_30(19, v185, v187, v189, v191, v193, v195, v197, v199, v201, v203, v205, v207, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235);
      v141 = OUTLINED_FUNCTION_21_33();
      starttest(v141, v142);
      v143 = OUTLINED_FUNCTION_35_25();
      if (lpta_loadp_setscan_l(v143, v144))
      {
LABEL_85:
        v25 = v32;
        v145 = OUTLINED_FUNCTION_21_33();
        starttest(v145, v146);
        OUTLINED_FUNCTION_21_33();
        bspush_ca_boa();
        v147 = OUTLINED_FUNCTION_23_33();
        if (lpta_loadp_setscan_l(v147, v148))
        {
          goto LABEL_28;
        }

        OUTLINED_FUNCTION_5_42();
        v149 = test_string_s();
      }

      else
      {
        v165 = OUTLINED_FUNCTION_21_33();
        bspush_ca_scan(v165, v166);
        v167 = OUTLINED_FUNCTION_21_33();
        bspush_ca_scan(v167, v168);
        OUTLINED_FUNCTION_2_44();
        v169 = test_string_s();
        v78 = v32;
        v25 = v32;
        if (v169)
        {
          goto LABEL_28;
        }

LABEL_101:
        v25 = v78;
        v170 = OUTLINED_FUNCTION_21_33();
        bspush_ca_scan(v170, v171);
        OUTLINED_FUNCTION_2_44();
        v172 = test_string_s();
        v79 = v25;
        if (v172)
        {
          goto LABEL_28;
        }

LABEL_102:
        v25 = v79;
        v173 = OUTLINED_FUNCTION_21_33();
        bspush_ca_scan(v173, v174);
        OUTLINED_FUNCTION_2_44();
        v175 = test_string_s();
        v80 = v25;
        if (v175)
        {
          goto LABEL_28;
        }

LABEL_103:
        v25 = v80;
        OUTLINED_FUNCTION_21_33();
        bspush_ca_scan_boa();
        v176 = OUTLINED_FUNCTION_0_45();
        v149 = testFldeq(v176, v177, v178, v179);
      }

      if (!v149)
      {
        v25 = 1;
      }

      goto LABEL_28;
    }
  }

LABEL_9:
  v35 = OUTLINED_FUNCTION_4_42();
  if (!lpta_loadp_setscan_l(v35, v36))
  {
    OUTLINED_FUNCTION_5_42();
    v32 = v25;
    if (!test_string_s())
    {
LABEL_87:
      OUTLINED_FUNCTION_27_30(38, v185, v187, v189, v191, v193, v195, v197, v199, v201, v203, v205, v207, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235);
      v150 = OUTLINED_FUNCTION_21_33();
      starttest(v150, v151);
      OUTLINED_FUNCTION_21_33();
      bspush_ca_boa();
      v152 = OUTLINED_FUNCTION_35_25();
      v25 = v32;
      if (!lpta_loadp_setscan_l(v152, v153))
      {
LABEL_88:
        v25 = v32;
        OUTLINED_FUNCTION_43_19(41, v185, v187, v189, v191, v193, v195, v197, v199, v201, v203, v205, v207, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231);
        v154 = OUTLINED_FUNCTION_21_33();
        bspush_ca_scan(v154, v155);
        OUTLINED_FUNCTION_2_44();
        if (!test_string_s())
        {
          OUTLINED_FUNCTION_21_33();
          bspush_ca_scan_boa();
          v156 = OUTLINED_FUNCTION_21_33();
          bspush_ca_scan(v156, v157);
          OUTLINED_FUNCTION_6_41();
          if (!test_string_s())
          {
LABEL_90:
            v25 = 1;
          }
        }
      }

      goto LABEL_28;
    }
  }

LABEL_11:
  v37 = OUTLINED_FUNCTION_4_42();
  if (!lpta_loadp_setscan_l(v37, v38))
  {
    OUTLINED_FUNCTION_3_43();
    if (!test_string_s())
    {
LABEL_13:
      OUTLINED_FUNCTION_27_30(48, v185, v187, v189, v191, v193, v195, v197, v199, v201, v203, v205, v207, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235);
      v39 = OUTLINED_FUNCTION_21_33();
      starttest(v39, v40);
      v41 = OUTLINED_FUNCTION_35_25();
      if (!lpta_loadp_setscan_l(v41, v42))
      {
        v43 = OUTLINED_FUNCTION_21_33();
        bspush_ca_scan(v43, v44);
        OUTLINED_FUNCTION_5_42();
        if (!test_string_s())
        {
          goto LABEL_111;
        }

LABEL_28:
        v74 = v25;
        while (1)
        {
          v75 = *(a1 + 104);
          if (v75)
          {
            v76 = OUTLINED_FUNCTION_38_21(v75);
            v32 = v77;
          }

          else
          {
            v76 = vback(a1, v74);
            v32 = 0;
          }

          v17 = 0;
          v73 = v32;
          v78 = v32;
          v79 = v32;
          v80 = v32;
          switch(v76)
          {
            case 1:
              v25 = v32;
              goto LABEL_7;
            case 2:
              goto LABEL_16;
            case 3:
              goto LABEL_17;
            case 4:
              OUTLINED_FUNCTION_5_42();
              v107 = test_string_s();
              v74 = v32;
              if (!v107)
              {
                goto LABEL_25;
              }

              continue;
            case 5:
              goto LABEL_25;
            case 6:
            case 17:
            case 33:
            case 39:
              goto LABEL_110;
            case 7:
              v25 = v32;
              goto LABEL_18;
            case 8:
              OUTLINED_FUNCTION_2_44();
              v108 = test_string_s();
              v73 = v32;
              v74 = v32;
              if (!v108)
              {
                goto LABEL_27;
              }

              continue;
            case 9:
              goto LABEL_27;
            case 10:
            case 30:
            case 51:
            case 64:
              goto LABEL_4;
            case 11:
              OUTLINED_FUNCTION_5_42();
              v128 = test_string_s();
              v74 = v32;
              if (v128)
              {
                continue;
              }

              goto LABEL_77;
            case 12:
            case 14:
LABEL_77:
              v129 = OUTLINED_FUNCTION_1_44();
              v133 = testFldeq(v129, v130, v131, v132);
              v74 = v32;
              if (!v133)
              {
                v134 = advance_tok(a1);
                v74 = v32;
                if (!v134)
                {
                  goto LABEL_81;
                }
              }

              continue;
            case 13:
              goto LABEL_21;
            case 15:
              v109 = OUTLINED_FUNCTION_1_44();
              v113 = testFldeq(v109, v110, v111, v112);
              v74 = v32;
              if (!v113)
              {
                v114 = advance_tok(a1);
                v74 = v32;
                if (!v114)
                {
                  goto LABEL_110;
                }
              }

              continue;
            case 16:
LABEL_81:
              while (1)
              {
                v137 = OUTLINED_FUNCTION_0_45();
                if (testFldeq(v137, v138, v139, v140) || advance_tok(a1))
                {
                  break;
                }

                v135 = OUTLINED_FUNCTION_21_33();
                bspush_ca_scan(v135, v136);
              }

              v74 = v32;
              continue;
            case 18:
              v25 = v32;
              goto LABEL_9;
            case 19:
              goto LABEL_84;
            case 20:
              goto LABEL_85;
            case 21:
              OUTLINED_FUNCTION_2_44();
              v122 = test_string_s();
              v74 = v32;
              if (v122)
              {
                continue;
              }

              v123 = OUTLINED_FUNCTION_0_45();
              v127 = testFldeq(v123, v124, v125, v126);
              v74 = v32;
              if (v127)
              {
                continue;
              }

              goto LABEL_34;
            case 22:
              OUTLINED_FUNCTION_2_44();
              v106 = test_string_s();
              v78 = v32;
              v74 = v32;
              if (!v106)
              {
                goto LABEL_101;
              }

              continue;
            case 23:
              goto LABEL_101;
            case 24:
              OUTLINED_FUNCTION_2_44();
              v102 = test_string_s();
              v79 = v32;
              v74 = v32;
              if (!v102)
              {
                goto LABEL_102;
              }

              continue;
            case 25:
              goto LABEL_102;
            case 26:
              v103 = OUTLINED_FUNCTION_21_33();
              bspush_ca_scan(v103, v104);
              goto LABEL_55;
            case 27:
              goto LABEL_103;
            case 28:
LABEL_55:
              OUTLINED_FUNCTION_2_44();
              v105 = test_string_s();
              v80 = v32;
              v74 = v32;
              if (!v105)
              {
                goto LABEL_103;
              }

              continue;
            case 29:
            case 55:
              bspop_boa(a1);
LABEL_34:
              v81 = advance_tok(a1);
              v74 = v32;
              if (!v81)
              {
                goto LABEL_111;
              }

              continue;
            case 31:
              goto LABEL_67;
            case 32:
              bspop_boa(a1);
              OUTLINED_FUNCTION_54_16();
LABEL_67:
              *(a1 + 5962) = 1;
              *(a1 + 5978) = 1;
              v115 = OUTLINED_FUNCTION_21_33();
              starttest(v115, v116);
              v117 = OUTLINED_FUNCTION_33_26();
              if (lpta_loadp_setscan_l(v117, v118))
              {
                goto LABEL_110;
              }

              OUTLINED_FUNCTION_2_44();
              if (test_string_s())
              {
                goto LABEL_110;
              }

              v119 = OUTLINED_FUNCTION_21_33();
              bspush_ca_scan(v119, v120);
LABEL_70:
              OUTLINED_FUNCTION_2_44();
LABEL_71:
              v121 = test_string_s();
              v74 = v32;
              if (v121)
              {
                continue;
              }

LABEL_91:
              *(a1 + 4066) = 2;
              goto LABEL_110;
            case 34:
              v88 = OUTLINED_FUNCTION_21_33();
              bspush_ca_scan(v88, v89);
              OUTLINED_FUNCTION_5_42();
              goto LABEL_71;
            case 35:
              goto LABEL_91;
            case 36:
              goto LABEL_70;
            case 37:
              v25 = v32;
              goto LABEL_11;
            case 38:
              goto LABEL_87;
            case 40:
              bspop_boa(a1);
              goto LABEL_3;
            case 41:
              goto LABEL_88;
            case 42:
              OUTLINED_FUNCTION_2_44();
              v91 = test_string_s();
              v74 = v32;
              if (v91)
              {
                continue;
              }

              goto LABEL_43;
            case 43:
              bspop_boa(a1);
              goto LABEL_43;
            case 44:
              OUTLINED_FUNCTION_5_42();
              v90 = test_string_s();
              v74 = v32;
              if (!v90)
              {
                goto LABEL_90;
              }

              continue;
            case 45:
              goto LABEL_90;
            case 46:
LABEL_43:
              v92 = OUTLINED_FUNCTION_23_33();
              v94 = lpta_loadp_setscan_r(v92, v93);
              v74 = v32;
              if (v94)
              {
                continue;
              }

              OUTLINED_FUNCTION_5_42();
              v95 = test_string_s();
              goto LABEL_49;
            case 47:
              goto LABEL_92;
            case 48:
              v25 = v32;
              goto LABEL_13;
            case 49:
            case 58:
              goto LABEL_108;
            case 50:
              v86 = OUTLINED_FUNCTION_21_33();
              bspush_ca_scan(v86, v87);
              goto LABEL_45;
            case 52:
LABEL_45:
              OUTLINED_FUNCTION_2_44();
              v96 = test_string_s();
              v74 = v32;
              if (!v96)
              {
                goto LABEL_46;
              }

              continue;
            case 53:
LABEL_46:
              v97 = OUTLINED_FUNCTION_0_45();
              v101 = testFldeq(v97, v98, v99, v100);
              v74 = v32;
              if (v101)
              {
                continue;
              }

              OUTLINED_FUNCTION_21_33();
              bspush_ca_scan_boa();
              v82 = OUTLINED_FUNCTION_10_40();
              v85 = 24;
LABEL_48:
              v95 = testFldeq(v82, v83, v84, v85);
LABEL_49:
              if (v95)
              {
                v74 = v32;
              }

              else
              {
                v74 = 1;
              }

              break;
            case 54:
              bspop_boa(a1);
              OUTLINED_FUNCTION_21_33();
              bspush_ca_scan_boa();
              v82 = OUTLINED_FUNCTION_10_40();
              v85 = 19;
              goto LABEL_48;
            case 56:
              goto LABEL_94;
            case 57:
              goto LABEL_106;
            case 59:
              goto LABEL_95;
            case 60:
              goto LABEL_97;
            case 61:
              goto LABEL_109;
            case 63:
              goto LABEL_99;
            default:
              goto LABEL_3;
          }
        }
      }

      goto LABEL_108;
    }
  }

LABEL_92:
  v158 = OUTLINED_FUNCTION_4_42();
  if (!lpta_loadp_setscan_l(v158, v159))
  {
    OUTLINED_FUNCTION_6_41();
    if (!test_string_s())
    {
LABEL_106:
      OUTLINED_FUNCTION_27_30(57, v185, v187, v189, v191, v193, v195, v197, v199, v201, v203, v205, v207, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235);
      v180 = OUTLINED_FUNCTION_35_25();
      if (!lpta_loadp_setscan_l(v180, v181))
      {
        OUTLINED_FUNCTION_5_42();
        if (!test_string_s())
        {
          goto LABEL_111;
        }
      }

LABEL_108:
      OUTLINED_FUNCTION_20_34();
      *(a1 + 5966) = v182;
      goto LABEL_110;
    }
  }

LABEL_94:
  strip_ess();
  if (!v160)
  {
LABEL_110:
    OUTLINED_FUNCTION_33_26();
    strip_suffix();
    goto LABEL_111;
  }

LABEL_95:
  v161 = OUTLINED_FUNCTION_4_42();
  if (!lpta_loadp_setscan_l(v161, v162))
  {
    OUTLINED_FUNCTION_22_33();
    if (!test_string_s())
    {
LABEL_109:
      OUTLINED_FUNCTION_48_16(61, v185, v187, v189, v191, v193, v195, v197, v199, v201, v203, v205, v207, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235);
      OUTLINED_FUNCTION_20_34();
      *(a1 + 5966) = v183;
      *(a1 + 5978) = v183;
      goto LABEL_110;
    }
  }

LABEL_97:
  v163 = OUTLINED_FUNCTION_4_42();
  if (!lpta_loadp_setscan_l(v163, v164))
  {
    OUTLINED_FUNCTION_6_41();
    if (!test_string_s())
    {
LABEL_99:
      OUTLINED_FUNCTION_48_16(63, v185, v187, v189, v191, v193, v195, v197, v199, v201, v203, v205, v207, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235);
      goto LABEL_110;
    }
  }

LABEL_3:
  v17 = 94;
LABEL_4:
  vretproc(a1);
  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

void strip_ation()
{
  OUTLINED_FUNCTION_66_14();
  v1 = v0;
  v92 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_11_40(v0, v2, v3, v4, v5, v6, v7, v8, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v80);
  OUTLINED_FUNCTION_30_29();
  bzero(v91, v9);
  v10 = setjmp(v91);
  if (v10)
  {
    goto LABEL_5;
  }

  if (OUTLINED_FUNCTION_15_39(v10, v11, v12, v13, v14, v15, v16, v17, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91[0]))
  {
    goto LABEL_5;
  }

  v18 = OUTLINED_FUNCTION_32_27();
  push_ptr_init(v18, v19);
  fence_44(v1, 0, &null_str_12);
  v20 = OUTLINED_FUNCTION_4_42();
  if (lpta_loadp_setscan_l(v20, v21))
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_18_36();
  if (test_string_s())
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_99_7();
  while (2)
  {
    v23 = OUTLINED_FUNCTION_35_25();
    savescptr(v23, v24, &v79);
    v25 = OUTLINED_FUNCTION_44_19();
    starttest(v25, v26);
    v27 = OUTLINED_FUNCTION_51_16();
    if (lpta_loadp_setscan_l(v27, v28))
    {
      goto LABEL_5;
    }

    v29 = OUTLINED_FUNCTION_40_20();
    bspush_ca_scan(v29, v30);
    OUTLINED_FUNCTION_2_44();
LABEL_9:
    if (test_string_s())
    {
      goto LABEL_10;
    }

LABEL_15:
    OUTLINED_FUNCTION_2_44();
    if (test_string_s())
    {
LABEL_10:
      v31 = *(v1 + 104);
      if (v31)
      {
        v32 = OUTLINED_FUNCTION_38_21(v31);
      }

      else
      {
        v32 = OUTLINED_FUNCTION_96_8();
      }

      switch(v32)
      {
        case 2:
          continue;
        case 4:
          OUTLINED_FUNCTION_2_44();
          goto LABEL_9;
        case 5:
          goto LABEL_15;
        case 6:
        case 7:
          goto LABEL_17;
        case 8:
          goto LABEL_18;
        default:
          goto LABEL_5;
      }

      goto LABEL_5;
    }

    break;
  }

  *(v1 + 5958) = 2;
LABEL_17:
  OUTLINED_FUNCTION_32_27();
  insert_suffix();
LABEL_18:
  *(v1 + 5950) = 0;
  if (!*(v1 + 5946))
  {
    strip_ize();
  }

LABEL_5:
  vretproc(v1);
  v22 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_65_14();
}

int *strip_nounadj_suffix(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v242 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8_41(a1, a2, a3, a4, a5, a6, a7, a8, v157, v160, v163, v166, v169, v172, v175, v178, v181, v184, v187, v190, v193, v196, v199, v202, v205, v208, v211, v214, v217, v220, v223, v226, v229, v232, v235);
  OUTLINED_FUNCTION_30_29();
  v9 = v241;
  bzero(v241, v10);
  if (setjmp(v241))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_19_36();
  if (OUTLINED_FUNCTION_107_7(v11, v12, v13, v14, v15, v16, v17, v18, v158, v161, v164, v167, v170, v173, v176, v179, v182, v185, v188, v191, v194, v197, v200, v203, v206, v209, v212, v215, v218, v221, v224, v227, v230, v233, v236, v237, v238, v239, v240, v241[0]))
  {
    goto LABEL_3;
  }

  v21 = OUTLINED_FUNCTION_33_26();
  push_ptr_init(v21, v22);
  v23 = OUTLINED_FUNCTION_32_27();
  v25 = push_ptr_init(v23, v24);
  v9 = 0;
  OUTLINED_FUNCTION_71_12(v25, v26, &null_str_12);
  v27 = OUTLINED_FUNCTION_22_33();
  fence_44(v27, v28, v29);
  v30 = OUTLINED_FUNCTION_4_42();
  if (!lpta_loadp_setscan_l(v30, v31))
  {
    OUTLINED_FUNCTION_2_44();
    v9 = 0;
    v32 = 0;
    if (!test_string_s())
    {
LABEL_14:
      OUTLINED_FUNCTION_27_30(2, v159, v162, v165, v168, v171, v174, v177, v180, v183, v186, v189, v192, v195, v198, v201, v204, v207, v210, v213, v216, v219, v222, v225, v228, v231, v234);
      v48 = OUTLINED_FUNCTION_35_25();
      if (!lpta_loadp_setscan_l(v48, v49))
      {
        OUTLINED_FUNCTION_5_42();
        v9 = v32;
        if (!test_string_s())
        {
LABEL_29:
          OUTLINED_FUNCTION_27_30(4, v159, v162, v165, v168, v171, v174, v177, v180, v183, v186, v189, v192, v195, v198, v201, v204, v207, v210, v213, v216, v219, v222, v225, v228, v231, v234);
          v76 = OUTLINED_FUNCTION_35_25();
          if (lpta_loadp_setscan_l(v76, v77))
          {
            goto LABEL_3;
          }

          OUTLINED_FUNCTION_6_41();
          v78 = test_string_s();
          v45 = 5958;
          v46 = 5990;
          v47 = v9;
          if (v78)
          {
            goto LABEL_3;
          }

          goto LABEL_31;
        }
      }

LABEL_16:
      LODWORD(v9) = v32;
      v50 = OUTLINED_FUNCTION_21_33();
      starttest(v50, v51);
      v52 = OUTLINED_FUNCTION_23_33();
      if (lpta_loadp_setscan_l(v52, v53))
      {
LABEL_17:
        v54 = OUTLINED_FUNCTION_17_37();
        starttest(v54, v55);
        v56 = OUTLINED_FUNCTION_23_33();
        if (!lpta_loadp_setscan_l(v56, v57))
        {
          v71 = OUTLINED_FUNCTION_21_33();
          bspush_ca_scan(v71, v72);
          OUTLINED_FUNCTION_5_42();
          v73 = test_string_s();
          v74 = 5958;
          v65 = v9;
          v75 = v9;
          if (v73)
          {
            goto LABEL_38;
          }

          goto LABEL_32;
        }

LABEL_18:
        v58 = OUTLINED_FUNCTION_21_33();
        starttest(v58, v59);
        OUTLINED_FUNCTION_21_33();
        bspush_ca_boa();
        v60 = OUTLINED_FUNCTION_23_33();
        if (!lpta_loadp_setscan_l(v60, v61))
        {
          OUTLINED_FUNCTION_5_42();
          if (!test_string_s())
          {
            v62 = OUTLINED_FUNCTION_21_33();
            bspush_ca_scan(v62, v63);
            OUTLINED_FUNCTION_2_44();
            v64 = test_string_s();
            v65 = v9;
            if (!v64)
            {
LABEL_21:
              v65 = 1;
            }

            goto LABEL_38;
          }
        }

        goto LABEL_92;
      }

      OUTLINED_FUNCTION_16_39();
      bspush_ca_scan_boa();
      v66 = OUTLINED_FUNCTION_0_45();
      goto LABEL_23;
    }
  }

  while (2)
  {
    v33 = OUTLINED_FUNCTION_4_42();
    if (lpta_loadp_setscan_l(v33, v34) || (OUTLINED_FUNCTION_5_42(), v35 = test_string_s(), v36 = v9, v35))
    {
LABEL_8:
      v37 = OUTLINED_FUNCTION_21_33();
      starttest(v37, v38);
      v39 = OUTLINED_FUNCTION_4_42();
      if (lpta_loadp_setscan_l(v39, v40))
      {
        break;
      }

      OUTLINED_FUNCTION_18_36();
      if (test_string_s())
      {
        break;
      }

LABEL_10:
      OUTLINED_FUNCTION_48_16(42, v159, v162, v165, v168, v171, v174, v177, v180, v183, v186, v189, v192, v195, v198, v201, v204, v207, v210, v213, v216, v219, v222, v225, v228, v231, v234);
      v41 = OUTLINED_FUNCTION_1_44();
      if (!testFldeq(v41, v42, v43, v44) && !advance_tok(a1))
      {
LABEL_12:
        OUTLINED_FUNCTION_83_11();
        v47 = v9;
LABEL_31:
        *(a1 + v46) = 1;
        v74 = v45;
        v75 = v47;
LABEL_32:
        *(a1 + 5962) = 1;
        *(a1 + v74) = 1;
        LODWORD(v79) = v75;
        goto LABEL_33;
      }

      goto LABEL_92;
    }

LABEL_76:
    v79 = v36;
    OUTLINED_FUNCTION_43_19(24, v159, v162, v165, v168, v171, v174, v177, v180, v183, v186, v189, v192, v195, v198, v201, v204, v207, v210, v213, v216, v219, v222, v225, v228);
LABEL_77:
    OUTLINED_FUNCTION_27_30(25, v159, v162, v165, v168, v171, v174, v177, v180, v183, v186, v189, v192, v195, v198, v201, v204, v207, v210, v213, v216, v219, v222, v225, v228, v231, v234);
    v125 = OUTLINED_FUNCTION_35_25();
    if (lpta_loadp_setscan_l(v125, v126))
    {
      v9 = v79;
      goto LABEL_80;
    }

    OUTLINED_FUNCTION_5_42();
    v9 = v79;
    if (test_string_s())
    {
LABEL_80:
      v127 = OUTLINED_FUNCTION_21_33();
      starttest(v127, v128);
      v129 = OUTLINED_FUNCTION_23_33();
      if (lpta_loadp_setscan_l(v129, v130) || (OUTLINED_FUNCTION_2_44(), test_string_s()))
      {
LABEL_82:
        v131 = OUTLINED_FUNCTION_9_41();
        lpta_rpta_loadp(v131, v132, v133);
        v134 = OUTLINED_FUNCTION_13_40();
        if (!setd_lookup(v134, v135, 382))
        {
          *(a1 + 5990) = v9;
          OUTLINED_FUNCTION_83_11();
          v47 = v9;
          goto LABEL_31;
        }

LABEL_83:
        v136 = OUTLINED_FUNCTION_21_33();
        starttest(v136, v137);
        v138 = OUTLINED_FUNCTION_23_33();
        if (!lpta_loadp_setscan_l(v138, v139))
        {
          v150 = OUTLINED_FUNCTION_21_33();
          bspush_ca_scan(v150, v151);
          OUTLINED_FUNCTION_3_43();
          test_string_s();
          OUTLINED_FUNCTION_83_11();
          v65 = v9;
          v47 = v9;
          if (v152)
          {
            goto LABEL_38;
          }

          goto LABEL_31;
        }

LABEL_84:
        v140 = OUTLINED_FUNCTION_21_33();
        starttest(v140, v141);
        v142 = OUTLINED_FUNCTION_23_33();
        if (lpta_loadp_setscan_l(v142, v143))
        {
          break;
        }

        v144 = OUTLINED_FUNCTION_0_45();
        if (testFldeq(v144, v145, v146, v147) || advance_tok(a1))
        {
LABEL_92:
          v65 = v9;
          goto LABEL_38;
        }

        v148 = OUTLINED_FUNCTION_21_33();
        starttest_l(v148, v149);
        OUTLINED_FUNCTION_21_33();
        bspush_ca_boa();
        OUTLINED_FUNCTION_41_20();
        v70 = one_eng_syllable();
LABEL_24:
        if (v70)
        {
          v65 = v9;
        }

        else
        {
          v65 = 1;
        }

        goto LABEL_38;
      }

      v153 = OUTLINED_FUNCTION_0_45();
      if (testFldeq(v153, v154, v155, v156))
      {
        goto LABEL_92;
      }

      OUTLINED_FUNCTION_21_33();
      bspush_ca_scan_boa();
      v66 = OUTLINED_FUNCTION_10_40();
      v69 = 24;
LABEL_23:
      v70 = testFldeq(v66, v67, v68, v69);
      goto LABEL_24;
    }

LABEL_33:
    v80 = OUTLINED_FUNCTION_21_33();
    starttest(v80, v81);
    OUTLINED_FUNCTION_21_33();
    bspush_ca_boa();
    OUTLINED_FUNCTION_33_26();
    if (strip_suffix())
    {
      v65 = v79;
    }

    else
    {
      v65 = 1;
    }

LABEL_38:
    v82 = *(a1 + 104);
    if (v82)
    {
      v83 = OUTLINED_FUNCTION_38_21(v82);
      v9 = v87;
    }

    else
    {
      v83 = vback(a1, v65);
      v9 = 0;
    }

    v45 = 5966;
    v88 = 5958;
    v74 = 5958;
    v46 = 5958;
    v47 = v9;
    v75 = v9;
    switch(v83)
    {
      case 1:
        continue;
      case 2:
        v32 = v9;
        goto LABEL_14;
      case 3:
        LODWORD(v32) = v9;
        goto LABEL_16;
      case 4:
        goto LABEL_29;
      case 6:
      case 7:
      case 12:
        goto LABEL_32;
      case 8:
        goto LABEL_17;
      case 9:
      case 29:
        bspop_boa(a1);
        v89 = advance_tok(a1);
        v65 = v9;
        if (v89)
        {
          goto LABEL_38;
        }

        goto LABEL_3;
      case 10:
        goto LABEL_18;
      case 11:
        OUTLINED_FUNCTION_5_42();
        v95 = test_string_s();
        v65 = v9;
        if (v95)
        {
          goto LABEL_38;
        }

        v96 = OUTLINED_FUNCTION_21_33();
        bspush_ca_scan(v96, v97);
        OUTLINED_FUNCTION_5_42();
        v98 = test_string_s();
        goto LABEL_58;
      case 13:
        v108 = OUTLINED_FUNCTION_21_33();
        bspush_ca_scan(v108, v109);
        v110 = OUTLINED_FUNCTION_1_44();
        v114 = testFldeq(v110, v111, v112, v113);
        v65 = v9;
        if (v114)
        {
          goto LABEL_38;
        }

        v115 = advance_tok(a1);
        goto LABEL_61;
      case 14:
        OUTLINED_FUNCTION_5_42();
        v115 = test_string_s();
LABEL_61:
        v65 = v9;
        if (!v115)
        {
          goto LABEL_62;
        }

        goto LABEL_38;
      case 15:
LABEL_62:
        OUTLINED_FUNCTION_21_33();
        bspush_ca_scan_boa();
        v116 = OUTLINED_FUNCTION_1_44();
        if (testFldeq(v116, v117, v118, v119))
        {
          v65 = v9;
        }

        else
        {
          v65 = 1;
        }

        goto LABEL_38;
      case 16:
        bspop_boa(a1);
        v98 = advance_tok(a1);
        goto LABEL_58;
      case 18:
        bspop_boa(a1);
        OUTLINED_FUNCTION_41_20();
        v98 = one_eng_syllable();
LABEL_58:
        v65 = v9;
        if (v98)
        {
          goto LABEL_38;
        }

        v74 = 5958;
        v75 = v9;
        goto LABEL_32;
      case 19:
        v92 = OUTLINED_FUNCTION_21_33();
        bspush_ca_scan(v92, v93);
        goto LABEL_46;
      case 20:
        goto LABEL_21;
      case 21:
LABEL_46:
        OUTLINED_FUNCTION_2_44();
        v94 = test_string_s();
        v65 = v9;
        if (!v94)
        {
          goto LABEL_21;
        }

        goto LABEL_38;
      case 22:
      case 27:
        LODWORD(v79) = v9;
        goto LABEL_33;
      case 23:
        goto LABEL_8;
      case 24:
        v36 = v9;
        goto LABEL_76;
      case 25:
        v79 = v9;
        goto LABEL_77;
      case 26:
        goto LABEL_80;
      case 28:
        goto LABEL_82;
      case 30:
        goto LABEL_83;
      case 31:
      case 34:
      case 39:
        goto LABEL_31;
      case 32:
        goto LABEL_84;
      case 33:
        v99 = OUTLINED_FUNCTION_21_33();
        bspush_ca_scan(v99, v100);
        OUTLINED_FUNCTION_6_41();
        goto LABEL_52;
      case 35:
        v120 = OUTLINED_FUNCTION_21_33();
        bspush_ca_scan(v120, v121);
        goto LABEL_66;
      case 36:
        v90 = OUTLINED_FUNCTION_21_33();
        bspush_ca_scan(v90, v91);
        OUTLINED_FUNCTION_5_42();
LABEL_52:
        v101 = test_string_s();
        v65 = v9;
        if (v101)
        {
          goto LABEL_38;
        }

        v102 = OUTLINED_FUNCTION_0_45();
        v106 = testFldeq(v102, v103, v104, v105);
        v65 = v9;
        if (v106)
        {
          goto LABEL_38;
        }

        v107 = advance_tok(a1);
LABEL_67:
        v65 = v9;
        if (!v107)
        {
          goto LABEL_12;
        }

        goto LABEL_38;
      case 37:
LABEL_66:
        OUTLINED_FUNCTION_6_41();
        v107 = test_string_s();
        goto LABEL_67;
      case 40:
      case 44:
        bspop_boa(a1);
        goto LABEL_3;
      case 42:
        goto LABEL_10;
      case 43:
        OUTLINED_FUNCTION_68_12();
        if (!v122)
        {
          goto LABEL_72;
        }

        goto LABEL_3;
      case 45:
LABEL_72:
        v123 = OUTLINED_FUNCTION_32_27();
        lpta_loadpn(v123, v124);
        OUTLINED_FUNCTION_67_14();
        if (compare_ptas(a1) || testneq(a1))
        {
          goto LABEL_74;
        }

        if (strip_inner_adj_suffix(a1, v88, v45, v47, v75, v84, v85, v86))
        {
          goto LABEL_97;
        }

        goto LABEL_3;
      case 47:
LABEL_74:
        strip_inner_noun_suffix(a1, v88, v45, v47, v75, v84, v85, v86);
        goto LABEL_3;
      case 48:
LABEL_97:
        strip_ation();
        break;
      default:
        goto LABEL_3;
    }

    break;
  }

LABEL_3:
  OUTLINED_FUNCTION_94_8();
  v19 = *MEMORY[0x277D85DE8];
  return v9;
}

void strip_ize()
{
  OUTLINED_FUNCTION_66_14();
  v1 = v0;
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_82_11();
  v127 = 0;
  v128 = 0;
  v125 = 0;
  v126 = 0;
  v123 = 0;
  v124 = 0;
  OUTLINED_FUNCTION_31_29();
  bzero(v122, v3);
  OUTLINED_FUNCTION_30_29();
  bzero(v141, v4);
  v5 = setjmp(v141);
  if (!v5 && !OUTLINED_FUNCTION_57_15(v5, v122, v6, v7, v8, v9, v10, v11, v119, v120, v121, v122[0], v122[1], v122[2], v122[3], v122[4], v122[5], v122[6], v122[7], v122[8], v122[9], v122[10], v122[11], v122[12], v122[13], v122[14], v122[15], v122[16], v122[17], v122[18], v122[19], v122[20], v122[21], v122[22], v123, v124, v125, v126, v127, v128, v129[0], v129[1], v130[0], v130[1], v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141[0]))
  {
    v12 = OUTLINED_FUNCTION_73_11();
    push_ptr_init(v12, v13);
    v14 = OUTLINED_FUNCTION_72_11();
    push_ptr_init(v14, v15);
    v16 = OUTLINED_FUNCTION_98_8();
    push_ptr_init(v16, v17);
    v18 = OUTLINED_FUNCTION_87_10();
    push_ptr_init(v18, v19);
    push_ptr_init(v1, &v123);
    fence_44(v1, 0, &null_str_12);
    v20 = OUTLINED_FUNCTION_13_40();
    fence_44(v20, v21, v22);
    v23 = OUTLINED_FUNCTION_91_9();
    starttest(v23, v24);
    v25 = OUTLINED_FUNCTION_24_31();
    if (!lpta_loadp_setscan_l(v25, v26))
    {
      OUTLINED_FUNCTION_2_44();
      if (!test_string_s())
      {
        v28 = OUTLINED_FUNCTION_21_33();
        bspush_ca_scan(v28, v29);
        v30 = 0;
LABEL_7:
        v31 = OUTLINED_FUNCTION_35_25();
        savescptr(v31, v32, &v127);
        OUTLINED_FUNCTION_2_44();
        v33 = test_string_s();
        v34 = v30;
        if (!v33)
        {
LABEL_8:
          v35 = v34;
          v36 = OUTLINED_FUNCTION_77_11();
          savescptr(v36, v37, v129);
          v38 = v35;
LABEL_9:
          v30 = v38;
          OUTLINED_FUNCTION_2_44();
          v39 = test_string_s();
          v40 = v30;
          if (!v39)
          {
LABEL_10:
            v30 = v40;
            v41 = OUTLINED_FUNCTION_63_15();
            savescptr(v41, v42, v130);
LABEL_11:
            v43 = OUTLINED_FUNCTION_64_14();
            starttest(v43, v44);
            v45 = OUTLINED_FUNCTION_90_9();
            if (lpta_loadp_setscan_l(v45, v46))
            {
LABEL_12:
              v47 = OUTLINED_FUNCTION_70_12();
              starttest(v47, v48);
              OUTLINED_FUNCTION_51_16();
              bspush_ca_boa();
              v49 = OUTLINED_FUNCTION_90_9();
              v51 = lpta_loadp_setscan_l(v49, v50);
              v52 = v30;
              if (!v51)
              {
LABEL_13:
                v30 = v52;
                v53 = OUTLINED_FUNCTION_78_11();
                bspush_ca_scan(v53, v54);
                v55 = OUTLINED_FUNCTION_102_7();
                bspush_ca_scan(v55, v56);
                v57 = OUTLINED_FUNCTION_22_33();
                v59 = testFldeq(v57, v58, 4, 1);
                v60 = v30;
                if (!v59)
                {
LABEL_14:
                  v30 = v60;
                  if (!advance_tok(v1))
                  {
                    v30 = 1;
                  }
                }
              }
            }

            else
            {
              v61 = OUTLINED_FUNCTION_22_33();
              if (!testFldeq(v61, v62, 4, 1) && !advance_tok(v1))
              {
                goto LABEL_5;
              }
            }
          }
        }

        v63 = v30;
        while (2)
        {
          v64 = *(v1 + 104);
          if (v64)
          {
            v65 = OUTLINED_FUNCTION_38_21(v64);
            v30 = v66;
          }

          else
          {
            v65 = vback(v1, v63);
            v30 = 0;
          }

          v38 = v30;
          v52 = v30;
          v60 = v30;
          switch(v65)
          {
            case 2:
              OUTLINED_FUNCTION_2_44();
              v67 = test_string_s();
              v38 = v30;
              v63 = v30;
              if (!v67)
              {
                goto LABEL_9;
              }

              continue;
            case 3:
              goto LABEL_7;
            case 4:
              v34 = v30;
              goto LABEL_8;
            case 5:
              goto LABEL_9;
            case 6:
              v40 = v30;
              goto LABEL_10;
            case 7:
              goto LABEL_11;
            case 8:
              goto LABEL_12;
            case 9:
              v82 = OUTLINED_FUNCTION_72_11();
              lpta_loadpn(v82, v83);
              OUTLINED_FUNCTION_67_14();
              if (compare_ptas(v1) || testneq(v1))
              {
                goto LABEL_37;
              }

              v109 = OUTLINED_FUNCTION_21_33();
              starttest_e(v109, v110);
              OUTLINED_FUNCTION_21_33();
              bspush_ca_boa();
              v94 = ise_to_ize(v1, v129, &v127, v111, v112, v113, v114, v115);
              goto LABEL_40;
            case 10:
            case 16:
              bspop_boa(v1);
              goto LABEL_5;
            case 11:
              goto LABEL_13;
            case 12:
              v68 = advance_tok(v1);
              v52 = v30;
              v63 = v30;
              if (!v68)
              {
                goto LABEL_13;
              }

              continue;
            case 13:
              v69 = OUTLINED_FUNCTION_10_40();
              v72 = testFldeq(v69, v70, v71, 30);
              v60 = v30;
              v63 = v30;
              if (!v72)
              {
                goto LABEL_14;
              }

              continue;
            case 14:
              goto LABEL_14;
            case 15:
LABEL_37:
              v84 = OUTLINED_FUNCTION_21_33();
              starttest(v84, v85);
              v86 = OUTLINED_FUNCTION_23_33();
              if (lpta_loadp_setscan_l(v86, v87))
              {
                goto LABEL_38;
              }

              v106 = OUTLINED_FUNCTION_21_33();
              bspush_ca_scan(v106, v107);
              goto LABEL_50;
            case 17:
LABEL_38:
              v88 = OUTLINED_FUNCTION_21_33();
              starttest(v88, v89);
              v90 = OUTLINED_FUNCTION_23_33();
              if (lpta_loadp_setscan_l(v90, v91))
              {
                goto LABEL_39;
              }

              v95 = OUTLINED_FUNCTION_21_33();
              bspush_ca_scan(v95, v96);
              goto LABEL_44;
            case 18:
LABEL_50:
              OUTLINED_FUNCTION_2_44();
              v108 = test_string_s();
              v63 = v30;
              if (!v108)
              {
                goto LABEL_5;
              }

              continue;
            case 20:
              goto LABEL_39;
            case 21:
LABEL_44:
              OUTLINED_FUNCTION_2_44();
              v97 = test_string_s();
              v63 = v30;
              if (!v97)
              {
                goto LABEL_45;
              }

              continue;
            case 22:
LABEL_45:
              v98 = OUTLINED_FUNCTION_21_33();
              bspush_ca_scan(v98, v99);
              goto LABEL_46;
            case 23:
LABEL_46:
              OUTLINED_FUNCTION_2_44();
              v100 = test_string_s();
              v63 = v30;
              if (!v100)
              {
                goto LABEL_47;
              }

              continue;
            case 24:
LABEL_47:
              OUTLINED_FUNCTION_21_33();
              bspush_ca_scan_boa();
              v101 = OUTLINED_FUNCTION_1_44();
              v105 = testFldeq(v101, v102, v103, v104);
              v63 = v30;
              if (v105)
              {
                continue;
              }

              v94 = advance_tok(v1);
LABEL_40:
              if (v94)
              {
                v63 = v30;
              }

              else
              {
                v63 = 1;
              }

              continue;
            case 25:
              bspop_boa(v1);
              OUTLINED_FUNCTION_54_16();
LABEL_39:
              v92 = OUTLINED_FUNCTION_21_33();
              starttest(v92, v93);
              OUTLINED_FUNCTION_21_33();
              bspush_ca_boa();
              OUTLINED_FUNCTION_73_11();
              v94 = strip_suffix();
              goto LABEL_40;
            case 26:
              if (!*(v1 + 5946))
              {
                strip_nounadj_suffix(v1);
              }

              goto LABEL_5;
            case 27:
              bspop_boa(v1);
              v73 = OUTLINED_FUNCTION_21_33();
              starttest(v73, v74);
              v75 = OUTLINED_FUNCTION_4_42();
              if (!lpta_loadp_setscan_r(v75, v76))
              {
                goto LABEL_31;
              }

              goto LABEL_5;
            case 29:
LABEL_31:
              savescptr(v1, 29, &v123);
              OUTLINED_FUNCTION_18_36();
              v77 = test_string_s();
              v63 = v30;
              if (!v77)
              {
                v78 = OUTLINED_FUNCTION_23_33();
                v80 = lpta_loadp_setscan_l(v78, v79);
                v63 = v30;
                if (!v80)
                {
                  v81 = advance_tok(v1);
                  v63 = v30;
                  if (!v81)
                  {
                    goto LABEL_56;
                  }
                }
              }

              continue;
            case 30:
LABEL_56:
              v116 = OUTLINED_FUNCTION_36_23();
              savescptr(v116, v117, v118);
              OUTLINED_FUNCTION_35_25();
              delete_inp_from_left();
              break;
            default:
              goto LABEL_5;
          }

          break;
        }
      }
    }
  }

LABEL_5:
  vretproc(v1);
  v27 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_65_14();
}

uint64_t post_inflection_strip(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v66 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_29_29(a1, a2, a3, a4, a5, a6, a7, a8, v37);
  OUTLINED_FUNCTION_30_29();
  bzero(v65, v9);
  v10 = setjmp(v65);
  if (v10 || OUTLINED_FUNCTION_52_16(v10, v11, v12, v13, v14, v15, v16, v17, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, *v61, v61[4], *v62, *&v62[4], v62[6], v63, SWORD2(v63), SBYTE6(v63), SHIBYTE(v63), v64, v65[0]))
  {
    vretproc(a1);
    result = 94;
  }

  else
  {
    fence_44(a1, 0, &null_str_12);
    OUTLINED_FUNCTION_68_12();
    if (!v20 && *(a1 + 4030) != 2)
    {
      if (split_final_compound(a1))
      {
        strip_ize();
        if (v21)
        {
          strip_noun_verb_suffix();
          if (v29)
          {
            if (strip_inner_noun_suffix(a1, v22, v23, v24, v25, v26, v27, v28))
            {
              strip_nounadj_suffix(a1, v30, v31, v32, v33, v34, v35, v36);
            }
          }
        }
      }
    }

    vretproc(a1);
    result = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
  return result;
}

void strip_ess()
{
  OUTLINED_FUNCTION_66_14();
  v1 = v0;
  v41 = *MEMORY[0x277D85DE8];
  v36[0] = 0;
  v36[1] = 0;
  OUTLINED_FUNCTION_31_29();
  bzero(v35, v2);
  OUTLINED_FUNCTION_30_29();
  bzero(v40, v3);
  if (setjmp(v40))
  {
    goto LABEL_5;
  }

  if (ventproc(v1, v35, v39, v38, v37, v40))
  {
    goto LABEL_5;
  }

  push_ptr_init(v1, v36);
  fence_44(v1, 0, &null_str_12);
  v4 = OUTLINED_FUNCTION_22_33();
  fence_44(v4, v5, v6);
  v7 = OUTLINED_FUNCTION_4_42();
  if (lpta_loadp_setscan_l(v7, v8))
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_13_40();
  if (test_string_s())
  {
    goto LABEL_5;
  }

  v10 = 0;
  while (2)
  {
    v11 = v10;
    v12 = OUTLINED_FUNCTION_44_19();
    savescptr(v12, v13, v36);
    v14 = OUTLINED_FUNCTION_69_12();
    starttest(v14, v15);
    v16 = OUTLINED_FUNCTION_40_20();
    if (lpta_loadp_setscan_l(v16, v17) || (OUTLINED_FUNCTION_12_40(), v18 = test_string_s(), v19 = v11, v18))
    {
LABEL_19:
      *(v1 + 5958) = v40;
      v28 = v11;
      goto LABEL_12;
    }

LABEL_9:
    v20 = v19;
    v21 = OUTLINED_FUNCTION_50_16();
    savescptr(v21, v22, v23);
    v24 = OUTLINED_FUNCTION_28_29();
    v26 = testFldeq(v24, v25, 4, 2);
    if (!v26)
    {
      v26 = advance_tok(v1);
      v28 = v20;
      v27 = v20;
      if (v26)
      {
        goto LABEL_15;
      }

LABEL_12:
      v29 = v28;
      v30 = OUTLINED_FUNCTION_90_9();
      starttest(v30, v31);
      OUTLINED_FUNCTION_64_14();
      bspush_ca_boa();
      OUTLINED_FUNCTION_40_20();
      v26 = strip_suffix();
      if (v26)
      {
        v27 = v29;
      }

      else
      {
        v27 = 1;
      }

      goto LABEL_15;
    }

    v27 = v20;
LABEL_15:
    if (*(v1 + 104))
    {
      v32 = OUTLINED_FUNCTION_84_11(v26, v27);
    }

    else
    {
      v33 = vback(v1, v27);
      v32 = 0;
    }

    v34 = v33 - 2;
    v10 = v32;
    v19 = v32;
    LODWORD(v11) = v32;
    v28 = v32;
    switch(v34)
    {
      case 0:
        continue;
      case 1:
        goto LABEL_19;
      case 2:
        goto LABEL_9;
      case 3:
      case 4:
        goto LABEL_12;
      case 6:
        bspop_boa(v1);
        break;
      default:
        goto LABEL_5;
    }

    break;
  }

LABEL_5:
  vretproc(v1);
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_65_14();
}

uint64_t insert_suffix()
{
  OUTLINED_FUNCTION_81_11();
  v95 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_11_40(v1, v2, v3, v4, v5, v6, v7, v8, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v83);
  OUTLINED_FUNCTION_30_29();
  bzero(v94, v9);
  v10 = setjmp(v94);
  if (v10 || OUTLINED_FUNCTION_15_39(v10, v11, v12, v13, v14, v15, v16, v17, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94[0]))
  {
    vretproc(v0);
    result = 94;
  }

  else
  {
    v20 = OUTLINED_FUNCTION_51_16();
    OUTLINED_FUNCTION_86_10(v20, v21);
    fence_44(v0, 0, &null_str_12);
    v22 = OUTLINED_FUNCTION_39_21();
    suffixes(v22, &v82, v23, v24, v25, v26, v27, v28);
    *(v0 + 1664) = v83;
    *(v0 + 5938) = 1;
    adjust_root(v0, v29, v30, v31, v32, v33, v34, v35);
    if (!*(v0 + 5946))
    {
      OUTLINED_FUNCTION_9_41();
      eng_roots_dict_lookup();
    }

    *(v0 + 5958) = 0;
    *(v0 + 5962) = 0;
    *(v0 + 5966) = 0;
    *(v0 + 5990) = 0;
    vretproc(v0);
    result = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ise_to_ize(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v95 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8_41(a1, a2, a3, a4, a5, a6, a7, a8, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v87, v88, v89);
  OUTLINED_FUNCTION_30_29();
  bzero(v94, v9);
  if (setjmp(v94))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_19_36();
  if (OUTLINED_FUNCTION_107_7(v10, v11, v12, v13, v14, v15, v16, v17, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94[0]))
  {
    goto LABEL_3;
  }

  v21 = OUTLINED_FUNCTION_33_26();
  OUTLINED_FUNCTION_92_9(v21, v22);
  v23 = OUTLINED_FUNCTION_32_27();
  OUTLINED_FUNCTION_86_10(v23, v24);
  fence_44(a1, 0, &null_str_12);
  OUTLINED_FUNCTION_9_41();
  has_lex_prefix();
  if (!v25)
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_99_7();
LABEL_7:
  v26 = OUTLINED_FUNCTION_35_25();
  starttest(v26, v27);
  v28 = OUTLINED_FUNCTION_9_41();
  lpta_rpta_loadp(v28, v29, v30);
  v31 = OUTLINED_FUNCTION_22_33();
  if (!setd_lookup(v31, v32, 385))
  {
LABEL_3:
    v18 = 94;
  }

  else
  {
    while (1)
    {
      v33 = OUTLINED_FUNCTION_51_16();
      lpta_rpta_loadp(v33, v34, &v86);
      v18 = 0;
      v35 = OUTLINED_FUNCTION_2_44();
      if (!insert_2pt_s(v35, v36, v37, &unk_28058118A, 0))
      {
        break;
      }

      v38 = *(a1 + 104);
      if (v38)
      {
        v39 = OUTLINED_FUNCTION_38_21(v38);
      }

      else
      {
        v39 = OUTLINED_FUNCTION_96_8();
      }

      if (v39 != 2)
      {
        v18 = 94;
        if (v39 == 1)
        {
          goto LABEL_7;
        }

        break;
      }
    }
  }

  vretproc(a1);
  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

void potential_suffix()
{
  OUTLINED_FUNCTION_66_14();
  OUTLINED_FUNCTION_81_11();
  v50 = *MEMORY[0x277D85DE8];
  v44 = 0;
  v45 = 0;
  OUTLINED_FUNCTION_31_29();
  bzero(v43, v2);
  OUTLINED_FUNCTION_30_29();
  bzero(v49, v3);
  if (!setjmp(v49) && !ventproc(v0, v43, v48, v47, v46, v49))
  {
    v5 = OUTLINED_FUNCTION_36_23();
    get_parm(v5, v6, v7, -6);
    fence_44(v0, 0, &null_str_12);
    v8 = OUTLINED_FUNCTION_13_40();
    fence_44(v8, v9, v10);
    if (*(v0 + 2478) != *(v0 + 5990))
    {
      v11 = 0;
      OUTLINED_FUNCTION_62_15();
      v42 = v12;
      while (2)
      {
        starttest(v0, v12);
        OUTLINED_FUNCTION_40_20();
        bspush_ca_boa();
        *(v0 + 136) = v1;
        *(v0 + 112) = v45;
        *(v0 + 128) = 0;
        v13 = OUTLINED_FUNCTION_28_29();
        setscan_nof_l(v13);
        if (!v14)
        {
          v15 = advance_tok(v0);
          v16 = v11;
          if (!v15)
          {
LABEL_9:
            LODWORD(v11) = v16;
            if (advance_tok(v0))
            {
              v11 = v11;
            }

            else
            {
              v11 = 1;
            }
          }
        }

        v17 = v11;
LABEL_13:
        v18 = *(v0 + 104);
        if (v18)
        {
          *(v0 + 104) = 0;
          v19 = v18;
          v11 = v17;
        }

        else
        {
          v19 = vback(v0, v17);
          v11 = 0;
        }

        v16 = v11;
        switch(v19)
        {
          case 1:
            v12 = v42;
            continue;
          case 2:
            goto LABEL_29;
          case 3:
            v20 = OUTLINED_FUNCTION_70_12();
            starttest(v20, v21);
            OUTLINED_FUNCTION_63_15();
            bspush_ca_boa();
            v22 = lpta_loadp_setscan_l(v0, &v44);
            goto LABEL_19;
          case 4:
          case 6:
            bspop_boa(v0);
            goto LABEL_29;
          case 5:
            v32 = OUTLINED_FUNCTION_9_41();
            lpta_rpta_loadp(v32, v33, v34);
            v35 = OUTLINED_FUNCTION_22_33();
            if (setd_lookup(v35, v36, 383))
            {
              goto LABEL_27;
            }

            goto LABEL_29;
          case 7:
            goto LABEL_20;
          case 8:
            v22 = advance_tok(v0);
LABEL_19:
            v17 = v11;
            if (v22)
            {
              goto LABEL_13;
            }

LABEL_20:
            v23 = OUTLINED_FUNCTION_64_14();
            bspush_ca_scan(v23, v24);
            v25 = OUTLINED_FUNCTION_44_19();
            bspush_ca_scan(v25, v26);
            v27 = OUTLINED_FUNCTION_28_29();
            v29 = 4;
            v30 = v1;
LABEL_22:
            v31 = testFldeq(v27, v28, v29, v30);
            v16 = v11;
            v17 = v11;
            if (!v31)
            {
              goto LABEL_9;
            }

            goto LABEL_13;
          case 9:
            v27 = OUTLINED_FUNCTION_28_29();
            v29 = 0;
            v30 = 30;
            goto LABEL_22;
          case 10:
            goto LABEL_9;
          case 11:
LABEL_27:
            v37 = OUTLINED_FUNCTION_9_41();
            lpta_rpta_loadp(v37, v38, v39);
            v40 = OUTLINED_FUNCTION_22_33();
            if (!setd_lookup(v40, v41, 384))
            {
              *(v0 + 6002) = *(v0 + 5294);
LABEL_29:
              *(v0 + 5958) = 0;
              *(v0 + 5962) = 0;
              *(v0 + 5966) = 0;
              *(v0 + 5978) = 0;
            }

            goto LABEL_3;
          default:
            goto LABEL_3;
        }
      }
    }
  }

LABEL_3:
  vretproc(v0);
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_65_14();
}

uint64_t adjust_root(__int16 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v63 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_29_29(a1, a2, a3, a4, a5, a6, a7, a8, v34);
  OUTLINED_FUNCTION_30_29();
  bzero(v62, v9);
  v10 = setjmp(v62);
  if (v10 || OUTLINED_FUNCTION_52_16(v10, v11, v12, v13, v14, v15, v16, v17, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, *v58, v58[4], *v59, *&v59[4], v59[6], v60, SWORD2(v60), SBYTE6(v60), SHIBYTE(v60), v61, v62[0]) || ((fence_44(a1, 0, &null_str_12), a1[2979] < 1) || insert_e(a1, v20, v21, v22, v23, v24, v25, v26)) && (OUTLINED_FUNCTION_9_41(), eng_roots_dict_lookup()) && (a1[2981] != 1 || two_to_one(a1, v27, v28, v29, v30, v31, v32, v33)) && (a1[2983] != 1 || i_to_y(a1, v27, v28, v29, v30, v31, v32, v33)))
  {
    vretproc(a1);
    result = 94;
  }

  else
  {
    vretproc(a1);
    result = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t insert_e(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v312 = *MEMORY[0x277D85DE8];
  v307 = 0;
  v306[0] = 0;
  v306[1] = 0;
  v304 = 0;
  v305 = 0;
  v302 = 0;
  v303 = 0;
  v300 = 0;
  v301 = 0;
  OUTLINED_FUNCTION_7_41(a1, a2, a3, a4, a5, a6, a7, a8, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299);
  OUTLINED_FUNCTION_30_29();
  bzero(v311, v9);
  if (!setjmp(v311) && !ventproc(a1, &v271, v310, v309, v308, v311))
  {
    v307 = 65532;
    push_ptr_init(a1, v306);
    v12 = OUTLINED_FUNCTION_59_15();
    push_ptr_init(v12, v13);
    v14 = OUTLINED_FUNCTION_74_11();
    push_ptr_init(v14, v15);
    v16 = OUTLINED_FUNCTION_53_16();
    push_ptr_init(v16, v17);
    v18 = OUTLINED_FUNCTION_42_20();
    push_ptr_init(v18, v19);
    v20 = OUTLINED_FUNCTION_33_26();
    push_ptr_init(v20, v21);
    v22 = OUTLINED_FUNCTION_32_27();
    push_ptr_init(v22, v23);
    fence_44(a1, 0, &null_str_12);
    v24 = OUTLINED_FUNCTION_13_40();
    fence_44(v24, v25, v26);
    if (*(a1 + 5958) == 2)
    {
      goto LABEL_6;
    }

    v28 = 0;
    while (2)
    {
      v29 = OUTLINED_FUNCTION_9_41();
      lpta_rpta_loadp(v29, v30, v31);
      v32 = OUTLINED_FUNCTION_22_33();
      if (!setd_lookup(v32, v33, 381))
      {
LABEL_6:
        *(a1 + 168) = v311;
        *(a1 + 144) = *(a1 + 1664);
        *(a1 + 128) = 0;
        v27 = OUTLINED_FUNCTION_28_29();
        insert_l(v27);
        *(a1 + 5938) = v311;
      }

      else
      {
LABEL_10:
        OUTLINED_FUNCTION_9_41();
        if (eng_roots_dict_lookup())
        {
LABEL_11:
          v34 = OUTLINED_FUNCTION_9_41();
          lpta_rpta_loadp(v34, v35, v36);
          v37 = OUTLINED_FUNCTION_22_33();
          v39 = v28;
          if (setd_lookup(v37, v38, 380))
          {
LABEL_12:
            v40 = OUTLINED_FUNCTION_44_19();
            starttest(v40, v41);
            OUTLINED_FUNCTION_40_20();
            bspush_ca_boa();
            if (!OUTLINED_FUNCTION_76_11())
            {
              v42 = OUTLINED_FUNCTION_55_16();
              if (!testFldeq(v42, v43, 4, 0) && !advance_tok(a1))
              {
                v39 = 1;
              }
            }

            v44 = v39;
LABEL_17:
            v45 = *(a1 + 104);
            if (v45)
            {
              v46 = OUTLINED_FUNCTION_38_21(v45);
              v28 = v47;
            }

            else
            {
              v46 = vback(a1, v44);
              v28 = 0;
            }

            switch(v46)
            {
              case 1:
                continue;
              case 2:
              case 16:
              case 24:
              case 25:
              case 44:
              case 77:
              case 106:
                goto LABEL_6;
              case 3:
                goto LABEL_10;
              case 4:
                goto LABEL_11;
              case 5:
                v39 = v28;
                goto LABEL_12;
              case 6:
                v48 = OUTLINED_FUNCTION_9_41();
                lpta_rpta_loadp(v48, v49, v50);
                v51 = OUTLINED_FUNCTION_22_33();
                if (!setd_lookup(v51, v52, 368))
                {
                  goto LABEL_3;
                }

                goto LABEL_22;
              case 7:
              case 46:
                bspop_boa(a1);
                goto LABEL_3;
              case 8:
LABEL_22:
                v53 = OUTLINED_FUNCTION_16_39();
                starttest(v53, v54);
                v55 = OUTLINED_FUNCTION_4_42();
                if (lpta_loadp_setscan_l(v55, v56))
                {
                  goto LABEL_24;
                }

                OUTLINED_FUNCTION_2_44();
                if (test_string_s())
                {
                  goto LABEL_24;
                }

                goto LABEL_65;
              case 9:
LABEL_24:
                v57 = OUTLINED_FUNCTION_21_33();
                starttest(v57, v58);
                v59 = OUTLINED_FUNCTION_4_42();
                if (lpta_loadp_setscan_l(v59, v60))
                {
                  goto LABEL_26;
                }

                OUTLINED_FUNCTION_2_44();
                if (test_string_s())
                {
                  goto LABEL_26;
                }

                goto LABEL_165;
              case 10:
LABEL_65:
                savescptr(a1, 10, &v302);
                v162 = OUTLINED_FUNCTION_21_33();
                bspush_ca_scan(v162, v163);
                goto LABEL_66;
              case 11:
                v212 = OUTLINED_FUNCTION_75_11();
                savescptr(v212, v213, v214);
                goto LABEL_108;
              case 12:
LABEL_66:
                OUTLINED_FUNCTION_95_8(12, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306[0]);
                v164 = OUTLINED_FUNCTION_21_33();
                bspush_ca_scan(v164, v165);
                goto LABEL_108;
              case 13:
LABEL_108:
                OUTLINED_FUNCTION_2_44();
                v215 = test_string_s();
                v44 = v28;
                if (!v215)
                {
                  goto LABEL_168;
                }

                goto LABEL_17;
              case 14:
              case 15:
LABEL_168:
                isolate_z_root();
                if (!v265)
                {
                  goto LABEL_169;
                }

                goto LABEL_6;
              case 17:
LABEL_26:
                v61 = OUTLINED_FUNCTION_21_33();
                starttest(v61, v62);
                v63 = OUTLINED_FUNCTION_4_42();
                if (lpta_loadp_setscan_l(v63, v64))
                {
                  goto LABEL_27;
                }

                goto LABEL_55;
              case 18:
LABEL_165:
                v262 = OUTLINED_FUNCTION_21_33();
                bspush_ca_scan(v262, v263);
                OUTLINED_FUNCTION_2_44();
                v264 = test_string_s();
                v44 = v28;
                if (!v264)
                {
                  goto LABEL_177;
                }

                goto LABEL_17;
              case 19:
                goto LABEL_177;
              case 20:
                OUTLINED_FUNCTION_2_44();
                v194 = test_string_s();
                v44 = v28;
                if (v194)
                {
                  goto LABEL_17;
                }

                goto LABEL_176;
              case 21:
LABEL_176:
                OUTLINED_FUNCTION_60_15(21, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300);
LABEL_177:
                if (isolate_non_plural_root(a1, &v307, a1 + 1640, a1 + 1656))
                {
                  goto LABEL_178;
                }

                goto LABEL_181;
              case 22:
LABEL_178:
                v268 = OUTLINED_FUNCTION_53_16();
                lpta_loadpn(v268, v269);
                OUTLINED_FUNCTION_67_14();
                if (compare_ptas(a1) || testneq(a1) || isolate_es_root(a1, &v307, (a1 + 1640)))
                {
                  goto LABEL_6;
                }

LABEL_181:
                if (HIWORD(v307) != 1)
                {
                  goto LABEL_7;
                }

                goto LABEL_3;
              case 23:
              case 26:
                goto LABEL_7;
              case 27:
LABEL_27:
                v65 = OUTLINED_FUNCTION_21_33();
                starttest(v65, v66);
                v67 = OUTLINED_FUNCTION_4_42();
                if (lpta_loadp_setscan_l(v67, v68) || test_string_s())
                {
                  goto LABEL_29;
                }

                OUTLINED_FUNCTION_21_33();
                bspush_ca_scan_boa();
                *(a1 + 136) = 1;
                goto LABEL_117;
              case 28:
LABEL_55:
                OUTLINED_FUNCTION_43_19(28, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294);
                v136 = OUTLINED_FUNCTION_21_33();
                bspush_ca_scan(v136, v137);
                OUTLINED_FUNCTION_2_44();
                v138 = test_string_s();
                v44 = v28;
                if (!v138)
                {
                  goto LABEL_73;
                }

                goto LABEL_17;
              case 29:
              case 33:
                v201 = OUTLINED_FUNCTION_21_33();
                bspush_ca_scan(v201, v202);
                OUTLINED_FUNCTION_5_42();
                goto LABEL_98;
              case 30:
                goto LABEL_74;
              case 31:
              case 32:
                goto LABEL_116;
              case 34:
              case 35:
LABEL_73:
                v173 = OUTLINED_FUNCTION_21_33();
                bspush_ca_scan(v173, v174);
LABEL_74:
                OUTLINED_FUNCTION_2_44();
LABEL_98:
                v203 = test_string_s();
                v44 = v28;
                if (!v203)
                {
                  goto LABEL_116;
                }

                goto LABEL_17;
              case 36:
                OUTLINED_FUNCTION_5_42();
                v208 = test_string_s();
                v44 = v28;
                if (v208)
                {
                  goto LABEL_17;
                }

                goto LABEL_103;
              case 37:
LABEL_103:
                OUTLINED_FUNCTION_49_16(37, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298);
                OUTLINED_FUNCTION_21_33();
                bspush_ca_scan_boa();
                v209 = OUTLINED_FUNCTION_21_33();
                bspush_ca_scan(v209, v210);
                goto LABEL_134;
              case 38:
                bspop_boa(a1);
LABEL_116:
                OUTLINED_FUNCTION_21_33();
                bspush_ca_scan_boa();
                OUTLINED_FUNCTION_88_10();
LABEL_117:
                v219 = *(a1 + 1648);
                v220 = OUTLINED_FUNCTION_26_31();
                v221 = test_ptr(v220);
                goto LABEL_138;
              case 39:
              case 57:
              case 59:
                v239 = OUTLINED_FUNCTION_21_33();
                bspush_ca_scan(v239, v240);
                goto LABEL_134;
              case 40:
              case 58:
                goto LABEL_135;
              case 41:
              case 60:
                goto LABEL_134;
              case 42:
                bspop_boa(a1);
                v227 = OUTLINED_FUNCTION_23_33();
                v229 = lpta_loadp_setscan_r(v227, v228);
                v44 = v28;
                if (v229)
                {
                  goto LABEL_17;
                }

                v230 = advance_tok(a1);
                v44 = v28;
                if (v230)
                {
                  goto LABEL_17;
                }

                goto LABEL_183;
              case 43:
LABEL_183:
                OUTLINED_FUNCTION_56_16(43, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296);
                isolate_e_root();
                if (v270)
                {
                  goto LABEL_6;
                }

LABEL_169:
                if (HIWORD(v307) != 1)
                {
                  goto LABEL_6;
                }

                goto LABEL_3;
              case 45:
LABEL_29:
                v69 = OUTLINED_FUNCTION_21_33();
                starttest(v69, v70);
                v71 = OUTLINED_FUNCTION_4_42();
                if (lpta_loadp_setscan_l(v71, v72))
                {
                  goto LABEL_30;
                }

                goto LABEL_52;
              case 47:
LABEL_30:
                v73 = OUTLINED_FUNCTION_4_42();
                if (lpta_loadp_setscan_l(v73, v74))
                {
                  goto LABEL_32;
                }

                OUTLINED_FUNCTION_6_41();
                if (test_string_s())
                {
                  goto LABEL_32;
                }

                goto LABEL_6;
              case 48:
LABEL_52:
                OUTLINED_FUNCTION_43_19(48, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294);
                OUTLINED_FUNCTION_2_44();
                v132 = test_string_s();
                v44 = v28;
                if (v132)
                {
                  goto LABEL_17;
                }

                v133 = OUTLINED_FUNCTION_23_33();
                v135 = lpta_loadp_setscan_r(v133, v134);
                v44 = v28;
                if (v135)
                {
                  goto LABEL_17;
                }

                OUTLINED_FUNCTION_5_42();
                goto LABEL_150;
              case 49:
LABEL_32:
                v75 = OUTLINED_FUNCTION_21_33();
                starttest(v75, v76);
                v77 = OUTLINED_FUNCTION_4_42();
                if (lpta_loadp_setscan_l(v77, v78))
                {
                  goto LABEL_33;
                }

                goto LABEL_51;
              case 50:
LABEL_33:
                v79 = OUTLINED_FUNCTION_21_33();
                starttest(v79, v80);
                v81 = OUTLINED_FUNCTION_4_42();
                if (lpta_loadp_setscan_l(v81, v82))
                {
                  goto LABEL_35;
                }

                OUTLINED_FUNCTION_5_42();
                if (test_string_s())
                {
                  goto LABEL_35;
                }

                OUTLINED_FUNCTION_21_33();
                bspush_ca_scan_boa();
                OUTLINED_FUNCTION_2_44();
                v245 = test_string_s();
                v44 = v28;
                if (!v245)
                {
                  OUTLINED_FUNCTION_21_33();
                  bspush_ca_scan_boa();
                  v246 = OUTLINED_FUNCTION_21_33();
                  bspush_ca_scan(v246, v247);
LABEL_134:
                  OUTLINED_FUNCTION_2_44();
                  v241 = test_string_s();
                  v44 = v28;
                  if (!v241)
                  {
                    goto LABEL_135;
                  }
                }

                goto LABEL_17;
              case 51:
LABEL_51:
                OUTLINED_FUNCTION_43_19(51, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294);
                v130 = OUTLINED_FUNCTION_21_33();
                bspush_ca_scan(v130, v131);
                goto LABEL_118;
              case 52:
LABEL_118:
                OUTLINED_FUNCTION_2_44();
                v222 = test_string_s();
                v44 = v28;
                if (!v222)
                {
                  goto LABEL_119;
                }

                goto LABEL_17;
              case 53:
LABEL_119:
                v223 = OUTLINED_FUNCTION_23_33();
                v225 = lpta_loadp_setscan_r(v223, v224);
                v44 = v28;
                if (v225)
                {
                  goto LABEL_17;
                }

                OUTLINED_FUNCTION_5_42();
                v226 = test_string_s();
                goto LABEL_131;
              case 54:
LABEL_35:
                v83 = OUTLINED_FUNCTION_21_33();
                starttest(v83, v84);
                v85 = OUTLINED_FUNCTION_4_42();
                if (lpta_loadp_setscan_l(v85, v86))
                {
                  goto LABEL_36;
                }

                v150 = OUTLINED_FUNCTION_21_33();
                bspush_ca_scan(v150, v151);
                OUTLINED_FUNCTION_5_42();
                goto LABEL_90;
              case 55:
              case 74:
                bspop_boa(a1);
                goto LABEL_7;
              case 56:
                bspop_boa(a1);
LABEL_135:
                v44 = 1;
                goto LABEL_17;
              case 61:
LABEL_36:
                v87 = OUTLINED_FUNCTION_21_33();
                starttest(v87, v88);
                v89 = OUTLINED_FUNCTION_4_42();
                if (lpta_loadp_setscan_l(v89, v90))
                {
                  goto LABEL_38;
                }

                OUTLINED_FUNCTION_2_44();
                if (test_string_s())
                {
                  goto LABEL_38;
                }

                goto LABEL_148;
              case 62:
                v175 = OUTLINED_FUNCTION_21_33();
                bspush_ca_scan(v175, v176);
                v177 = OUTLINED_FUNCTION_21_33();
                bspush_ca_scan(v177, v178);
                goto LABEL_83;
              case 63:
                goto LABEL_137;
              case 64:
                v186 = OUTLINED_FUNCTION_21_33();
                bspush_ca_scan(v186, v187);
                OUTLINED_FUNCTION_5_42();
                v188 = test_string_s();
                v44 = v28;
                if (v188)
                {
                  goto LABEL_17;
                }

                OUTLINED_FUNCTION_21_33();
                bspush_ca_scan_boa();
                OUTLINED_FUNCTION_5_42();
                goto LABEL_145;
              case 65:
                v191 = OUTLINED_FUNCTION_21_33();
                bspush_ca_scan(v191, v192);
                goto LABEL_83;
              case 66:
              case 72:
              case 73:
                goto LABEL_89;
              case 67:
LABEL_83:
                OUTLINED_FUNCTION_2_44();
                v193 = test_string_s();
                v44 = v28;
                if (!v193)
                {
                  goto LABEL_89;
                }

                goto LABEL_17;
              case 68:
                v181 = OUTLINED_FUNCTION_21_33();
                bspush_ca_scan(v181, v182);
                OUTLINED_FUNCTION_2_44();
                v183 = test_string_s();
                v44 = v28;
                if (v183)
                {
                  goto LABEL_17;
                }

                v184 = OUTLINED_FUNCTION_21_33();
                bspush_ca_scan(v184, v185);
                goto LABEL_89;
              case 69:
                bspop_boa(a1);
                goto LABEL_137;
              case 70:
              case 71:
                OUTLINED_FUNCTION_2_44();
                v195 = test_string_s();
                v44 = v28;
                if (v195)
                {
                  goto LABEL_17;
                }

LABEL_89:
                OUTLINED_FUNCTION_2_44();
LABEL_90:
                v196 = test_string_s();
                v44 = v28;
                if (v196)
                {
                  goto LABEL_17;
                }

LABEL_137:
                OUTLINED_FUNCTION_21_33();
                bspush_ca_boa();
                OUTLINED_FUNCTION_9_41();
                v221 = one_eng_syllable();
                goto LABEL_138;
              case 75:
LABEL_38:
                v91 = OUTLINED_FUNCTION_21_33();
                starttest(v91, v92);
                v93 = OUTLINED_FUNCTION_4_42();
                if (lpta_loadp_setscan_l(v93, v94))
                {
                  goto LABEL_40;
                }

                OUTLINED_FUNCTION_5_42();
                if (test_string_s())
                {
                  goto LABEL_40;
                }

                OUTLINED_FUNCTION_21_33();
                bspush_ca_scan_boa();
                OUTLINED_FUNCTION_2_44();
LABEL_145:
                v221 = test_string_s();
                goto LABEL_138;
              case 76:
              case 78:
              case 79:
              case 105:
                goto LABEL_148;
              case 80:
              case 111:
                goto LABEL_149;
              case 81:
LABEL_40:
                v95 = OUTLINED_FUNCTION_21_33();
                starttest(v95, v96);
                v97 = OUTLINED_FUNCTION_4_42();
                if (lpta_loadp_setscan_l(v97, v98))
                {
                  goto LABEL_41;
                }

                v139 = OUTLINED_FUNCTION_21_33();
                bspush_ca_scan(v139, v140);
                v141 = OUTLINED_FUNCTION_0_45();
                v145 = testFldeq(v141, v142, v143, v144);
                v44 = v28;
                if (!v145)
                {
                  goto LABEL_58;
                }

                goto LABEL_17;
              case 82:
                bspop_boa(a1);
                goto LABEL_129;
              case 83:
                goto LABEL_129;
              case 84:
                v231 = advance_tok(a1);
                v44 = v28;
                if (v231)
                {
                  goto LABEL_17;
                }

LABEL_129:
                v232 = OUTLINED_FUNCTION_21_33();
                bspush_ca_scan(v232, v233);
                v234 = OUTLINED_FUNCTION_1_44();
                v238 = testFldeq(v234, v235, v236, v237);
                v44 = v28;
                if (!v238)
                {
                  v226 = advance_tok(a1);
LABEL_131:
                  v44 = v28;
                  if (!v226)
                  {
                    goto LABEL_3;
                  }
                }

                goto LABEL_17;
              case 85:
LABEL_41:
                v99 = OUTLINED_FUNCTION_21_33();
                starttest(v99, v100);
                v101 = OUTLINED_FUNCTION_4_42();
                if (lpta_loadp_setscan_l(v101, v102))
                {
                  goto LABEL_42;
                }

                v152 = OUTLINED_FUNCTION_21_33();
                bspush_ca_scan(v152, v153);
                goto LABEL_104;
              case 86:
                OUTLINED_FUNCTION_2_44();
                v198 = test_string_s();
                v44 = v28;
                if (v198)
                {
                  goto LABEL_17;
                }

                goto LABEL_95;
              case 87:
                bspop_boa(a1);
                OUTLINED_FUNCTION_21_33();
                bspush_ca_scan_boa();
                v146 = OUTLINED_FUNCTION_10_40();
                v149 = 28;
                goto LABEL_127;
              case 88:
                bspop_boa(a1);
                OUTLINED_FUNCTION_21_33();
                bspush_ca_scan_boa();
                v146 = OUTLINED_FUNCTION_10_40();
                v149 = 16;
                goto LABEL_127;
              case 89:
                bspop_boa(a1);
                v172 = advance_tok(a1);
                goto LABEL_125;
              case 90:
              case 130:
                goto LABEL_126;
              case 91:
LABEL_95:
                v199 = OUTLINED_FUNCTION_21_33();
                bspush_ca_scan(v199, v200);
                goto LABEL_124;
              case 92:
LABEL_124:
                OUTLINED_FUNCTION_2_44();
                v172 = test_string_s();
LABEL_125:
                v44 = v28;
                if (!v172)
                {
                  goto LABEL_126;
                }

                goto LABEL_17;
              case 93:
                bspop_boa(a1);
                v197 = advance_tok(a1);
                goto LABEL_153;
              case 94:
LABEL_42:
                v103 = OUTLINED_FUNCTION_21_33();
                starttest(v103, v104);
                v105 = OUTLINED_FUNCTION_4_42();
                if (lpta_loadp_setscan_l(v105, v106))
                {
                  goto LABEL_44;
                }

                OUTLINED_FUNCTION_5_42();
                if (test_string_s())
                {
                  goto LABEL_44;
                }

                goto LABEL_151;
              case 95:
                v179 = OUTLINED_FUNCTION_21_33();
                bspush_ca_scan(v179, v180);
                OUTLINED_FUNCTION_5_42();
                goto LABEL_105;
              case 96:
                goto LABEL_106;
              case 97:
LABEL_104:
                OUTLINED_FUNCTION_2_44();
LABEL_105:
                v211 = test_string_s();
                v44 = v28;
                if (!v211)
                {
                  goto LABEL_106;
                }

                goto LABEL_17;
              case 98:
LABEL_44:
                v107 = OUTLINED_FUNCTION_21_33();
                starttest(v107, v108);
                v109 = OUTLINED_FUNCTION_4_42();
                if (lpta_loadp_setscan_l(v109, v110))
                {
                  goto LABEL_45;
                }

LABEL_148:
                v248 = OUTLINED_FUNCTION_21_33();
                bspush_ca_scan(v248, v249);
                goto LABEL_149;
              case 99:
              case 107:
                goto LABEL_151;
              case 100:
              case 103:
                goto LABEL_154;
              case 101:
                v242 = OUTLINED_FUNCTION_21_33();
                bspush_ca_scan(v242, v243);
                OUTLINED_FUNCTION_2_44();
                v244 = test_string_s();
                v44 = v28;
                if (v244)
                {
                  goto LABEL_17;
                }

LABEL_151:
                v250 = OUTLINED_FUNCTION_21_33();
                bspush_ca_scan(v250, v251);
                goto LABEL_152;
              case 102:
LABEL_152:
                OUTLINED_FUNCTION_2_44();
                v197 = test_string_s();
LABEL_153:
                v44 = v28;
                if (v197)
                {
                  goto LABEL_17;
                }

LABEL_154:
                v168 = OUTLINED_FUNCTION_0_45();
                goto LABEL_155;
              case 104:
LABEL_45:
                v111 = OUTLINED_FUNCTION_21_33();
                starttest(v111, v112);
                v113 = OUTLINED_FUNCTION_4_42();
                if (lpta_loadp_setscan_l(v113, v114))
                {
                  goto LABEL_46;
                }

                v154 = OUTLINED_FUNCTION_0_45();
                v158 = testFldeq(v154, v155, v156, v157);
                v44 = v28;
                if (v158)
                {
                  goto LABEL_17;
                }

                v159 = advance_tok(a1);
                v44 = v28;
                if (v159)
                {
                  goto LABEL_17;
                }

                v160 = OUTLINED_FUNCTION_21_33();
                bspush_ca_scan(v160, v161);
LABEL_67:
                OUTLINED_FUNCTION_2_44();
                v166 = test_string_s();
                v44 = v28;
                if (v166)
                {
                  goto LABEL_17;
                }

LABEL_149:
                OUTLINED_FUNCTION_2_44();
LABEL_150:
                v207 = test_string_s();
                goto LABEL_157;
              case 108:
                OUTLINED_FUNCTION_6_41();
                goto LABEL_150;
              case 109:
LABEL_46:
                v115 = OUTLINED_FUNCTION_21_33();
                starttest(v115, v116);
                v117 = OUTLINED_FUNCTION_4_42();
                if (lpta_loadp_setscan_l(v117, v118))
                {
                  goto LABEL_48;
                }

                OUTLINED_FUNCTION_2_44();
                if (test_string_s())
                {
                  goto LABEL_48;
                }

                goto LABEL_159;
              case 110:
                goto LABEL_67;
              case 112:
LABEL_48:
                v119 = OUTLINED_FUNCTION_21_33();
                starttest(v119, v120);
                v121 = OUTLINED_FUNCTION_4_42();
                if (lpta_loadp_setscan_l(v121, v122))
                {
                  goto LABEL_171;
                }

                v123 = OUTLINED_FUNCTION_21_33();
                bspush_ca_scan(v123, v124);
                v125 = OUTLINED_FUNCTION_0_45();
                v129 = testFldeq(v125, v126, v127, v128);
                v44 = v28;
                if (v129)
                {
                  goto LABEL_17;
                }

LABEL_58:
                OUTLINED_FUNCTION_21_33();
                bspush_ca_scan_boa();
                v146 = OUTLINED_FUNCTION_10_40();
                v149 = 29;
                goto LABEL_127;
              case 113:
              case 115:
              case 116:
              case 117:
              case 118:
              case 119:
              case 120:
              case 121:
              case 122:
LABEL_159:
                v253 = OUTLINED_FUNCTION_21_33();
                bspush_ca_scan(v253, v254);
                goto LABEL_160;
              case 114:
                goto LABEL_161;
              case 123:
LABEL_160:
                OUTLINED_FUNCTION_2_44();
                v255 = test_string_s();
                v44 = v28;
                if (!v255)
                {
                  do
                  {
LABEL_161:
                    v256 = OUTLINED_FUNCTION_21_33();
                    bspush_ca_scan(v256, v257);
                    v258 = OUTLINED_FUNCTION_0_45();
                  }

                  while (!testFldeq(v258, v259, v260, v261) && !advance_tok(a1));
                  v44 = v28;
                }

                goto LABEL_17;
              case 124:
                v189 = OUTLINED_FUNCTION_21_33();
                bspush_ca_scan(v189, v190);
LABEL_106:
                v168 = OUTLINED_FUNCTION_1_44();
                goto LABEL_155;
              case 125:
                v168 = OUTLINED_FUNCTION_10_40();
                v171 = 30;
LABEL_155:
                v252 = testFldeq(v168, v169, v170, v171);
                v44 = v28;
                if (!v252)
                {
                  goto LABEL_156;
                }

                goto LABEL_17;
              case 126:
LABEL_156:
                v207 = advance_tok(a1);
                goto LABEL_157;
              case 127:
LABEL_171:
                v266 = OUTLINED_FUNCTION_4_42();
                if (!lpta_loadp_setscan_l(v266, v267))
                {
                  OUTLINED_FUNCTION_3_43();
                  if (!test_string_s())
                  {
                    goto LABEL_6;
                  }
                }

                goto LABEL_3;
              case 128:
                OUTLINED_FUNCTION_2_44();
                v216 = test_string_s();
                v44 = v28;
                if (v216)
                {
                  goto LABEL_17;
                }

                v217 = OUTLINED_FUNCTION_21_33();
                bspush_ca_scan(v217, v218);
                goto LABEL_112;
              case 129:
                bspop_boa(a1);
                v167 = advance_tok(a1);
                goto LABEL_113;
              case 131:
LABEL_112:
                OUTLINED_FUNCTION_2_44();
                v167 = test_string_s();
LABEL_113:
                v44 = v28;
                if (!v167)
                {
LABEL_126:
                  OUTLINED_FUNCTION_21_33();
                  bspush_ca_scan_boa();
                  v146 = OUTLINED_FUNCTION_0_45();
LABEL_127:
                  v221 = testFldeq(v146, v147, v148, v149);
LABEL_138:
                  if (v221)
                  {
                    v44 = v28;
                  }

                  else
                  {
                    v44 = 1;
                  }
                }

                goto LABEL_17;
              case 132:
                bspop_boa(a1);
                v204 = advance_tok(a1);
                v44 = v28;
                if (v204)
                {
                  goto LABEL_17;
                }

                OUTLINED_FUNCTION_88_10();
                v205 = *(a1 + 1648);
                v206 = OUTLINED_FUNCTION_26_31();
                v207 = test_ptr(v206);
LABEL_157:
                v44 = v28;
                if (!v207)
                {
                  goto LABEL_6;
                }

                goto LABEL_17;
              default:
                goto LABEL_3;
            }
          }

          goto LABEL_3;
        }
      }

      break;
    }

LABEL_7:
    vretproc(a1);
    result = 0;
    goto LABEL_4;
  }

LABEL_3:
  vretproc(a1);
  result = 94;
LABEL_4:
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t two_to_one(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v73 = *MEMORY[0x277D85DE8];
  v69 = 0;
  v70 = 0;
  v71 = 0;
  v68[0] = 0;
  v68[1] = 0;
  v67[0] = 0;
  v67[1] = 0;
  OUTLINED_FUNCTION_29_29(a1, a2, a3, a4, a5, a6, a7, a8, v66);
  OUTLINED_FUNCTION_30_29();
  bzero(v72, v9);
  if (setjmp(v72))
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_85_11();
  if (ventproc(a1, v10, v11, v12, v13, v72))
  {
    goto LABEL_5;
  }

  BYTE4(v71) = 0;
  LODWORD(v71) = 0;
  LODWORD(v69) = -65535;
  v14 = OUTLINED_FUNCTION_87_10();
  push_ptr_init(v14, v15);
  v16 = push_ptr_init(a1, v67);
  OUTLINED_FUNCTION_71_12(v16, v17, &null_str_12);
  v18 = OUTLINED_FUNCTION_13_40();
  fence_44(v18, v19, v20);
  v21 = OUTLINED_FUNCTION_91_9();
  starttest(v21, v22);
  v23 = OUTLINED_FUNCTION_24_31();
  if (lpta_loadp_setscan_l(v23, v24))
  {
    goto LABEL_5;
  }

  v25 = OUTLINED_FUNCTION_98_8();
  if (savetok(v25, v26))
  {
    goto LABEL_5;
  }

  v29 = OUTLINED_FUNCTION_0_45();
  if (testFldeq(v29, v30, v31, v32))
  {
    v33 = 0;
    goto LABEL_17;
  }

  v33 = 0;
  v34 = 0;
  if (advance_tok(a1))
  {
LABEL_17:
    v34 = v33;
    while (2)
    {
      v55 = *(a1 + 104);
      if (v55)
      {
        v56 = OUTLINED_FUNCTION_38_21(v55);
        v34 = v57;
      }

      else
      {
        v56 = vback(a1, v34);
        v34 = 0;
      }

      v49 = v34;
      switch(v56)
      {
        case 2:
          break;
        case 3:
          goto LABEL_12;
        case 4:
          goto LABEL_13;
        case 5:
          goto LABEL_26;
        case 6:
          v58 = OUTLINED_FUNCTION_35_25();
          bspush_ca_scan(v58, v59);
          OUTLINED_FUNCTION_2_44();
          goto LABEL_24;
        case 7:
          goto LABEL_15;
        case 8:
          OUTLINED_FUNCTION_2_44();
LABEL_24:
          v60 = test_string_s();
          v49 = v34;
          if (!v60)
          {
            goto LABEL_15;
          }

          continue;
        case 9:
          bspop_boa(a1);
          goto LABEL_5;
        case 11:
          goto LABEL_27;
        case 12:
          goto LABEL_28;
        default:
          goto LABEL_5;
      }

      break;
    }
  }

  v33 = v34;
  OUTLINED_FUNCTION_47_17();
  savescptr(a1, v35, v67);
  v36 = OUTLINED_FUNCTION_32_27();
  if (savetok(v36, v37))
  {
    goto LABEL_17;
  }

  if (advance_tok(a1))
  {
    goto LABEL_17;
  }

  v38 = OUTLINED_FUNCTION_46_18();
  if (testeq_tvars(v38, v39, v40))
  {
    goto LABEL_17;
  }

LABEL_12:
  OUTLINED_FUNCTION_62_15();
  savescptr(a1, v41, v68);
LABEL_13:
  v33 = v34;
  v42 = OUTLINED_FUNCTION_21_33();
  starttest(v42, v43);
  v44 = OUTLINED_FUNCTION_23_33();
  if (!lpta_loadp_setscan_r(v44, v45))
  {
    v46 = OUTLINED_FUNCTION_21_33();
    bspush_ca_scan(v46, v47);
    OUTLINED_FUNCTION_2_44();
    v48 = test_string_s();
    v49 = v34;
    if (!v48)
    {
LABEL_15:
      v33 = v49;
      OUTLINED_FUNCTION_16_39();
      bspush_ca_boa();
      v50 = OUTLINED_FUNCTION_41_20();
      lpta_rpta_loadp(v50, v51, v52);
      v53 = OUTLINED_FUNCTION_22_33();
      if (!setd_lookup(v53, v54, 387))
      {
        v33 = 1;
      }
    }

    goto LABEL_17;
  }

LABEL_26:
  v61 = OUTLINED_FUNCTION_9_41();
  lpta_rpta_loadp(v61, v62, v63);
  v64 = OUTLINED_FUNCTION_22_33();
  if (setd_lookup(v64, v65, 386))
  {
LABEL_27:
    delete_inp_from_left();
LABEL_28:
    *(a1 + 5938) = 1;
  }

LABEL_5:
  vretproc(a1);
  v27 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_101_7();
}

uint64_t i_to_y(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v104 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_11_40(a1, a2, a3, a4, a5, a6, a7, a8, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v92);
  OUTLINED_FUNCTION_30_29();
  bzero(v103, v9);
  v10 = setjmp(v103);
  if (!v10 && !OUTLINED_FUNCTION_15_39(v10, v11, v12, v13, v14, v15, v16, v17, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103[0]))
  {
    v18 = OUTLINED_FUNCTION_32_27();
    push_ptr_init(v18, v19);
    fence_44(a1, 0, &null_str_12);
    v20 = OUTLINED_FUNCTION_22_33();
    fence_44(v20, v21, v22);
    v23 = OUTLINED_FUNCTION_4_42();
    if (!lpta_loadp_setscan_l(v23, v24))
    {
      OUTLINED_FUNCTION_2_44();
      if (!test_string_s())
      {
        OUTLINED_FUNCTION_99_7();
LABEL_6:
        v25 = OUTLINED_FUNCTION_35_25();
        savescptr(v25, v26, &v91);
        do
        {
          v27 = OUTLINED_FUNCTION_44_19();
          starttest(v27, v28);
          v29 = OUTLINED_FUNCTION_9_41();
          lpta_rpta_loadp(v29, v30, v31);
          v32 = OUTLINED_FUNCTION_22_33();
          if (!setd_lookup(v32, v33, 388))
          {
            break;
          }

          do
          {
            v34 = OUTLINED_FUNCTION_39_21();
            lpta_rpta_loadp(v34, &v91, v35);
            v36 = OUTLINED_FUNCTION_2_44();
            if (!insert_2pt_s(v36, v37, v38, &unk_28058118C, v39))
            {
              v42 = 0;
              *(a1 + 5938) = 1;
              goto LABEL_16;
            }

            v40 = *(a1 + 104);
            if (v40)
            {
              v41 = OUTLINED_FUNCTION_38_21(v40);
            }

            else
            {
              v41 = OUTLINED_FUNCTION_96_8();
            }
          }

          while (v41 == 4);
          if (v41 == 2)
          {
            goto LABEL_6;
          }
        }

        while (v41 == 3);
      }
    }
  }

  v42 = 94;
LABEL_16:
  vretproc(a1);
  v43 = *MEMORY[0x277D85DE8];
  return v42;
}

void OUTLINED_FUNCTION_7_41(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  a36 = 0;
  a37 = 0;
  a34 = 0;
  a35 = 0;
  a32 = 0;
  a33 = 0;

  bzero(&a9, 0xB8uLL);
}

void OUTLINED_FUNCTION_8_41(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  a34 = 0;
  a35 = 0;
  a32 = 0;
  a33 = 0;

  bzero(&a9, 0xB8uLL);
}

void OUTLINED_FUNCTION_11_40(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  a32 = 0;
  a33 = 0;

  bzero(&a9, 0xB8uLL);
}

uint64_t OUTLINED_FUNCTION_15_39(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, char a35, int a36, __int16 a37, char a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, char a44)
{

  return ventproc(v44, &a9, &a42, &a38, &a35, &a44);
}

uint64_t OUTLINED_FUNCTION_26_31()
{
  *(v1 + 112) = v0;
  *(v1 + 128) = 0;
  return v1;
}

double OUTLINED_FUNCTION_27_30@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{

  *&result = savescptr(v27, a1, &a27).n128_u64[0];
  return result;
}

void OUTLINED_FUNCTION_29_29(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  bzero(&a9, 0xB8uLL);
}

double OUTLINED_FUNCTION_43_19@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{

  *&result = savescptr(v25, a1, &a25).n128_u64[0];
  return result;
}

double OUTLINED_FUNCTION_48_16@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{

  *&result = savescptr(v27, a1, &a27).n128_u64[0];
  return result;
}

double OUTLINED_FUNCTION_49_16@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{

  *&result = savescptr(v29, a1, &a29).n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_52_16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, char a33, int a34, __int16 a35, char a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, char a42)
{

  return ventproc(v42, &a9, &a40, &a36, &a33, &a42);
}

double OUTLINED_FUNCTION_56_16@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{

  *&result = savescptr(v27, a1, &a27).n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_57_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, int a45, char a46, int a47, __int16 a48, char a49, int a50, __int16 a51, char a52, char a53, uint64_t a54, char a55)
{

  return ventproc(v55, a2, &a53, &a49, &a46, &a55);
}

uint64_t OUTLINED_FUNCTION_58_15()
{

  return lpta_rpta_loadp(v0, v0 + 1320, v0 + 1336);
}

double OUTLINED_FUNCTION_60_15@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{

  *&result = savescptr(v31, a1, &a31).n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_67_14()
{

  return rpta_loadpn(v0, v0 + 3536);
}

void *OUTLINED_FUNCTION_71_12(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return fence_44(v3, 0, a3);
}

uint64_t OUTLINED_FUNCTION_76_11()
{

  return lpta_loadp_setscan_r(v0, v0 + 1320);
}

double OUTLINED_FUNCTION_80_11@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{

  *&result = savescptr(v41, a1, &a41).n128_u64[0];
  return result;
}

void OUTLINED_FUNCTION_86_10(uint64_t a1, uint64_t a2)
{

  get_parm(a1, a2, v2, -6);
}

void OUTLINED_FUNCTION_92_9(uint64_t a1, uint64_t a2)
{

  get_parm(a1, a2, v2, -6);
}

void OUTLINED_FUNCTION_93_8()
{

  starttest(v0, v1);
}

BOOL OUTLINED_FUNCTION_94_8()
{

  return vretproc(v0);
}

double OUTLINED_FUNCTION_95_8@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{

  *&result = savescptr(v37, a1, &a37).n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_96_8()
{

  return vback(v0, 0);
}

uint64_t OUTLINED_FUNCTION_104_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return ventproc(v5, a2, a3, a4, a5, v6 - 232);
}

void OUTLINED_FUNCTION_105_7(uint64_t a1, size_t a2)
{

  bzero((v2 - 232), a2);
}

uint64_t OUTLINED_FUNCTION_106_7()
{

  return vback(v0, v1);
}

uint64_t OUTLINED_FUNCTION_107_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{

  return ventproc(v40, a2, a3, a4, a5, &a40);
}

void *fence_45(uint64_t a1, int a2, uint64_t a3)
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

uint64_t insert_eng_spr_phone(uint64_t a1, __int16 *a2, __int16 *a3)
{
  v298 = *MEMORY[0x277D85DE8];
  v292 = 0;
  v293 = 0;
  v290 = 0;
  v291 = 0;
  v287 = 0u;
  v288 = 0u;
  bzero(&v264, 0xB8uLL);
  bzero(v297, 0xC0uLL);
  if (setjmp(v297) || ventproc(a1, &v264, v296, v295, v294, v297))
  {
    goto LABEL_3;
  }

  v11 = OUTLINED_FUNCTION_10_41();
  get_parm(v11, v12, a2, -6);
  get_parm(a1, &v290, a3, -6);
  *&v288 = 0;
  *(&v288 + 6) = 0;
  LODWORD(v287) = -65534;
  fence_45(a1, 0, &null_str_13);
  v13 = OUTLINED_FUNCTION_10_41();
  if (!lpta_loadp_setscan_r(v13, v14))
  {
    v15 = OUTLINED_FUNCTION_7_42();
    if (!v15)
    {
      OUTLINED_FUNCTION_6_42(v15, v16, v17, v18, v19, v20, v21, v22, v262, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, *(&v287 + 1), v288, *(&v288 + 1), v289, v290, v291, v292);
      v23 = OUTLINED_FUNCTION_2_45();
      if (!insert_2pt_s(v23, v24, v25, v26, 0))
      {
        v7 = 0;
        goto LABEL_4;
      }
    }
  }

  while (2)
  {
    v27 = OUTLINED_FUNCTION_5_43();
    if (!lpta_loadp_setscan_r(v27, v28))
    {
      OUTLINED_FUNCTION_3_44();
      if (!test_string_s())
      {
        v29 = OUTLINED_FUNCTION_5_43();
        lpta_rpta_loadp(v29, v30, &v290);
        v31 = OUTLINED_FUNCTION_0_46();
        if (!insert_2pt_s(v31, v32, v33, &unk_2805812FA, 0))
        {
          goto LABEL_146;
        }
      }
    }

LABEL_11:
    v34 = OUTLINED_FUNCTION_5_43();
    if (!lpta_loadp_setscan_r(v34, v35))
    {
      OUTLINED_FUNCTION_3_44();
      if (!test_string_s())
      {
        v36 = OUTLINED_FUNCTION_5_43();
        lpta_rpta_loadp(v36, v37, &v290);
        v38 = OUTLINED_FUNCTION_0_46();
        if (!insert_2pt_s(v38, v39, v40, &unk_2805812FC, 0))
        {
          goto LABEL_146;
        }
      }
    }

LABEL_14:
    v41 = OUTLINED_FUNCTION_5_43();
    if (!lpta_loadp_setscan_r(v41, v42))
    {
      OUTLINED_FUNCTION_3_44();
      if (!test_string_s())
      {
        v43 = OUTLINED_FUNCTION_5_43();
        lpta_rpta_loadp(v43, v44, &v290);
        v45 = OUTLINED_FUNCTION_0_46();
        if (!insert_2pt_s(v45, v46, v47, &unk_2805812FE, 0))
        {
          goto LABEL_146;
        }
      }
    }

LABEL_17:
    if (*(a1 + 3710) == *(a1 + 3706))
    {
      v48 = OUTLINED_FUNCTION_5_43();
      if (!lpta_loadp_setscan_r(v48, v49))
      {
        OUTLINED_FUNCTION_3_44();
        if (!test_string_s())
        {
          v50 = OUTLINED_FUNCTION_5_43();
          lpta_rpta_loadp(v50, v51, &v290);
          v52 = OUTLINED_FUNCTION_0_46();
          if (!insert_2pt_s(v52, v53, v54, &unk_280581300, 0))
          {
            goto LABEL_146;
          }
        }
      }
    }

LABEL_21:
    if (*(a1 + 3710) == *(a1 + 3706))
    {
      v55 = OUTLINED_FUNCTION_5_43();
      if (!lpta_loadp_setscan_r(v55, v56))
      {
        OUTLINED_FUNCTION_3_44();
        if (!test_string_s())
        {
          v57 = OUTLINED_FUNCTION_5_43();
          lpta_rpta_loadp(v57, v58, &v290);
          v59 = OUTLINED_FUNCTION_0_46();
          if (!insert_2pt_s(v59, v60, v61, &unk_280581302, 0))
          {
            goto LABEL_146;
          }
        }
      }
    }

LABEL_25:
    v62 = OUTLINED_FUNCTION_5_43();
    if (!lpta_loadp_setscan_r(v62, v63))
    {
      OUTLINED_FUNCTION_3_44();
      if (!test_string_s())
      {
        v64 = OUTLINED_FUNCTION_5_43();
        lpta_rpta_loadp(v64, v65, &v290);
        v66 = OUTLINED_FUNCTION_0_46();
        if (!insert_2pt_s(v66, v67, v68, &unk_280581304, 0))
        {
          goto LABEL_146;
        }
      }
    }

LABEL_28:
    v69 = OUTLINED_FUNCTION_5_43();
    if (!lpta_loadp_setscan_r(v69, v70))
    {
      OUTLINED_FUNCTION_3_44();
      if (!test_string_s())
      {
        v71 = OUTLINED_FUNCTION_5_43();
        lpta_rpta_loadp(v71, v72, &v290);
        v73 = OUTLINED_FUNCTION_0_46();
        if (!insert_2pt_s(v73, v74, v75, &unk_280581306, 0))
        {
          goto LABEL_146;
        }
      }
    }

LABEL_31:
    v76 = OUTLINED_FUNCTION_5_43();
    if (!lpta_loadp_setscan_r(v76, v77))
    {
      OUTLINED_FUNCTION_3_44();
      if (!test_string_s())
      {
        v78 = OUTLINED_FUNCTION_5_43();
        lpta_rpta_loadp(v78, v79, &v290);
        v80 = OUTLINED_FUNCTION_0_46();
        if (!insert_2pt_s(v80, v81, v82, &unk_280581308, 0))
        {
          goto LABEL_146;
        }
      }
    }

LABEL_34:
    v83 = OUTLINED_FUNCTION_5_43();
    if (!lpta_loadp_setscan_r(v83, v84))
    {
      OUTLINED_FUNCTION_3_44();
      if (!test_string_s())
      {
        v85 = OUTLINED_FUNCTION_5_43();
        lpta_rpta_loadp(v85, v86, &v290);
        v87 = OUTLINED_FUNCTION_0_46();
        if (!insert_2pt_s(v87, v88, v89, &unk_28058130A, 0))
        {
          goto LABEL_146;
        }
      }
    }

LABEL_37:
    v90 = OUTLINED_FUNCTION_5_43();
    if (!lpta_loadp_setscan_r(v90, v91))
    {
      OUTLINED_FUNCTION_3_44();
      if (!test_string_s())
      {
        v92 = OUTLINED_FUNCTION_5_43();
        lpta_rpta_loadp(v92, v93, &v290);
        v94 = OUTLINED_FUNCTION_0_46();
        if (!insert_2pt_s(v94, v95, v96, &_MergedGlobals_38, 0))
        {
          goto LABEL_146;
        }
      }
    }

LABEL_40:
    v97 = OUTLINED_FUNCTION_5_43();
    if (!lpta_loadp_setscan_r(v97, v98))
    {
      OUTLINED_FUNCTION_3_44();
      if (!test_string_s())
      {
        v99 = OUTLINED_FUNCTION_5_43();
        lpta_rpta_loadp(v99, v100, &v290);
        v101 = OUTLINED_FUNCTION_0_46();
        if (!insert_2pt_s(v101, v102, v103, &unk_28058130D, 0))
        {
          goto LABEL_146;
        }
      }
    }

LABEL_43:
    v104 = OUTLINED_FUNCTION_5_43();
    if (!lpta_loadp_setscan_r(v104, v105))
    {
      OUTLINED_FUNCTION_3_44();
      if (!test_string_s())
      {
        v106 = OUTLINED_FUNCTION_5_43();
        lpta_rpta_loadp(v106, v107, &v290);
        v108 = OUTLINED_FUNCTION_0_46();
        if (!insert_2pt_s(v108, v109, v110, &unk_2805812FB, 0))
        {
          goto LABEL_146;
        }
      }
    }

LABEL_46:
    v111 = OUTLINED_FUNCTION_5_43();
    if (!lpta_loadp_setscan_r(v111, v112))
    {
      OUTLINED_FUNCTION_3_44();
      if (!test_string_s())
      {
        v113 = OUTLINED_FUNCTION_5_43();
        lpta_rpta_loadp(v113, v114, &v290);
        v115 = OUTLINED_FUNCTION_0_46();
        if (!insert_2pt_s(v115, v116, v117, &unk_28058130C, 0))
        {
          goto LABEL_146;
        }
      }
    }

LABEL_49:
    v118 = OUTLINED_FUNCTION_5_43();
    if (!lpta_loadp_setscan_r(v118, v119))
    {
      OUTLINED_FUNCTION_3_44();
      if (!test_string_s())
      {
        v120 = OUTLINED_FUNCTION_5_43();
        lpta_rpta_loadp(v120, v121, &v290);
        v122 = OUTLINED_FUNCTION_0_46();
        if (!insert_2pt_s(v122, v123, v124, &unk_280581305, 0))
        {
          goto LABEL_146;
        }
      }
    }

LABEL_52:
    v125 = OUTLINED_FUNCTION_5_43();
    if (!lpta_loadp_setscan_r(v125, v126))
    {
      OUTLINED_FUNCTION_3_44();
      if (!test_string_s())
      {
        v127 = OUTLINED_FUNCTION_5_43();
        lpta_rpta_loadp(v127, v128, &v290);
        v129 = OUTLINED_FUNCTION_0_46();
        if (!insert_2pt_s(v129, v130, v131, &unk_280581312, 0))
        {
LABEL_146:
          v7 = v3;
          break;
        }
      }
    }

LABEL_55:
    v132 = OUTLINED_FUNCTION_5_43();
    if (!lpta_loadp_setscan_r(v132, v133))
    {
      OUTLINED_FUNCTION_3_44();
      if (!test_string_s())
      {
        v134 = OUTLINED_FUNCTION_5_43();
        lpta_rpta_loadp(v134, v135, &v290);
        v136 = OUTLINED_FUNCTION_0_46();
        if (!insert_2pt_s(v136, v137, v138, &unk_280581314, 0))
        {
          goto LABEL_146;
        }
      }
    }

LABEL_58:
    v139 = OUTLINED_FUNCTION_5_43();
    if (!lpta_loadp_setscan_r(v139, v140))
    {
      OUTLINED_FUNCTION_3_44();
      if (!test_string_s())
      {
        v141 = OUTLINED_FUNCTION_5_43();
        lpta_rpta_loadp(v141, v142, &v290);
        v143 = OUTLINED_FUNCTION_0_46();
        if (!insert_2pt_s(v143, v144, v145, &unk_280581303, 0))
        {
          goto LABEL_146;
        }
      }
    }

LABEL_61:
    v146 = OUTLINED_FUNCTION_5_43();
    if (!lpta_loadp_setscan_r(v146, v147))
    {
      OUTLINED_FUNCTION_3_44();
      if (!test_string_s())
      {
        v148 = OUTLINED_FUNCTION_5_43();
        lpta_rpta_loadp(v148, v149, &v290);
        v150 = OUTLINED_FUNCTION_0_46();
        if (!insert_2pt_s(v150, v151, v152, &unk_280581316, 0))
        {
          goto LABEL_146;
        }
      }
    }

LABEL_64:
    v153 = OUTLINED_FUNCTION_5_43();
    if (!lpta_loadp_setscan_r(v153, v154))
    {
      OUTLINED_FUNCTION_3_44();
      if (!test_string_s())
      {
        v155 = OUTLINED_FUNCTION_5_43();
        lpta_rpta_loadp(v155, v156, &v290);
        v157 = OUTLINED_FUNCTION_0_46();
        if (!insert_2pt_s(v157, v158, v159, &unk_280581317, 0))
        {
          goto LABEL_146;
        }
      }
    }

LABEL_67:
    v160 = OUTLINED_FUNCTION_5_43();
    if (!lpta_loadp_setscan_r(v160, v161))
    {
      OUTLINED_FUNCTION_3_44();
      if (!test_string_s())
      {
        v162 = OUTLINED_FUNCTION_5_43();
        lpta_rpta_loadp(v162, v163, &v290);
        v164 = OUTLINED_FUNCTION_0_46();
        if (!insert_2pt_s(v164, v165, v166, &unk_280581318, 0))
        {
          goto LABEL_146;
        }
      }
    }

LABEL_70:
    starttest(a1, 23);
    v167 = OUTLINED_FUNCTION_5_43();
    if (lpta_loadp_setscan_r(v167, v168) || (OUTLINED_FUNCTION_3_44(), test_string_s()))
    {
LABEL_77:
      starttest(a1, 24);
      v186 = OUTLINED_FUNCTION_5_43();
      v7 = lpta_loadp_setscan_r(v186, v187);
      if (v7 || (OUTLINED_FUNCTION_3_44(), v7 = test_string_s(), v7))
      {
LABEL_79:
        v7 = OUTLINED_FUNCTION_8_42(v7, v175, v176, v177, v178, v179, v180, v181, v262, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, *(&v287 + 1), v288, *(&v288 + 1), v289, v290, v291, v292);
        if (v7 || (v7 = OUTLINED_FUNCTION_7_42(), v7) || (v188 = OUTLINED_FUNCTION_6_42(v7, v175, v176, v177, v178, v179, v180, v181, v262, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, *(&v287 + 1), v288, *(&v288 + 1), v289, v290, v291, v292), v7 = OUTLINED_FUNCTION_1_45(v188, v189, v190, &unk_2805812F9), v7))
        {
LABEL_82:
          v7 = OUTLINED_FUNCTION_8_42(v7, v175, v176, v177, v178, v179, v180, v181, v262, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, *(&v287 + 1), v288, *(&v288 + 1), v289, v290, v291, v292);
          if (v7 || (v7 = OUTLINED_FUNCTION_7_42(), v7) || (v191 = OUTLINED_FUNCTION_6_42(v7, v175, v176, v177, v178, v179, v180, v181, v262, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, *(&v287 + 1), v288, *(&v288 + 1), v289, v290, v291, v292), v7 = OUTLINED_FUNCTION_1_45(v191, v192, v193, &unk_28058131D), v7))
          {
LABEL_85:
            v7 = OUTLINED_FUNCTION_8_42(v7, v175, v176, v177, v178, v179, v180, v181, v262, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, *(&v287 + 1), v288, *(&v288 + 1), v289, v290, v291, v292);
            if (v7 || (v7 = OUTLINED_FUNCTION_7_42(), v7) || (v194 = OUTLINED_FUNCTION_6_42(v7, v175, v176, v177, v178, v179, v180, v181, v262, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, *(&v287 + 1), v288, *(&v288 + 1), v289, v290, v291, v292), v7 = OUTLINED_FUNCTION_1_45(v194, v195, v196, &unk_28058131C), v7))
            {
LABEL_88:
              v7 = OUTLINED_FUNCTION_8_42(v7, v175, v176, v177, v178, v179, v180, v181, v262, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, *(&v287 + 1), v288, *(&v288 + 1), v289, v290, v291, v292);
              if (v7 || (v7 = OUTLINED_FUNCTION_7_42(), v7) || (v197 = OUTLINED_FUNCTION_6_42(v7, v175, v176, v177, v178, v179, v180, v181, v262, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, *(&v287 + 1), v288, *(&v288 + 1), v289, v290, v291, v292), v7 = OUTLINED_FUNCTION_1_45(v197, v198, v199, &unk_28058130F), v7))
              {
LABEL_91:
                v7 = OUTLINED_FUNCTION_8_42(v7, v175, v176, v177, v178, v179, v180, v181, v262, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, *(&v287 + 1), v288, *(&v288 + 1), v289, v290, v291, v292);
                if (v7 || (v7 = OUTLINED_FUNCTION_7_42(), v7) || (v200 = OUTLINED_FUNCTION_6_42(v7, v175, v176, v177, v178, v179, v180, v181, v262, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, *(&v287 + 1), v288, *(&v288 + 1), v289, v290, v291, v292), v7 = OUTLINED_FUNCTION_1_45(v200, v201, v202, &unk_2805812FD), v7))
                {
LABEL_94:
                  v7 = OUTLINED_FUNCTION_8_42(v7, v175, v176, v177, v178, v179, v180, v181, v262, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, *(&v287 + 1), v288, *(&v288 + 1), v289, v290, v291, v292);
                  if (v7 || (v7 = OUTLINED_FUNCTION_7_42(), v7) || (v203 = OUTLINED_FUNCTION_6_42(v7, v175, v176, v177, v178, v179, v180, v181, v262, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, *(&v287 + 1), v288, *(&v288 + 1), v289, v290, v291, v292), v7 = OUTLINED_FUNCTION_1_45(v203, v204, v205, &unk_28058130B), v7))
                  {
LABEL_97:
                    v7 = OUTLINED_FUNCTION_8_42(v7, v175, v176, v177, v178, v179, v180, v181, v262, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, *(&v287 + 1), v288, *(&v288 + 1), v289, v290, v291, v292);
                    if (v7 || (v7 = OUTLINED_FUNCTION_7_42(), v7) || (v206 = OUTLINED_FUNCTION_6_42(v7, v175, v176, v177, v178, v179, v180, v181, v262, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, *(&v287 + 1), v288, *(&v288 + 1), v289, v290, v291, v292), v7 = OUTLINED_FUNCTION_1_45(v206, v207, v208, &unk_28058131F), v7))
                    {
LABEL_100:
                      v7 = OUTLINED_FUNCTION_8_42(v7, v175, v176, v177, v178, v179, v180, v181, v262, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, *(&v287 + 1), v288, *(&v288 + 1), v289, v290, v291, v292);
                      if (v7 || (v7 = OUTLINED_FUNCTION_7_42(), v7) || (v209 = OUTLINED_FUNCTION_6_42(v7, v175, v176, v177, v178, v179, v180, v181, v262, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, *(&v287 + 1), v288, *(&v288 + 1), v289, v290, v291, v292), v7 = OUTLINED_FUNCTION_1_45(v209, v210, v211, &unk_280581320), v7))
                      {
LABEL_103:
                        v7 = OUTLINED_FUNCTION_8_42(v7, v175, v176, v177, v178, v179, v180, v181, v262, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, *(&v287 + 1), v288, *(&v288 + 1), v289, v290, v291, v292);
                        if (v7 || (v7 = OUTLINED_FUNCTION_7_42(), v7) || (v212 = OUTLINED_FUNCTION_6_42(v7, v175, v176, v177, v178, v179, v180, v181, v262, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, *(&v287 + 1), v288, *(&v288 + 1), v289, v290, v291, v292), v7 = OUTLINED_FUNCTION_1_45(v212, v213, v214, &unk_28058131E), v7))
                        {
LABEL_106:
                          v7 = OUTLINED_FUNCTION_8_42(v7, v175, v176, v177, v178, v179, v180, v181, v262, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, *(&v287 + 1), v288, *(&v288 + 1), v289, v290, v291, v292);
                          if (v7 || (v7 = OUTLINED_FUNCTION_7_42(), v7) || (v215 = OUTLINED_FUNCTION_6_42(v7, v175, v176, v177, v178, v179, v180, v181, v262, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, *(&v287 + 1), v288, *(&v288 + 1), v289, v290, v291, v292), v7 = OUTLINED_FUNCTION_1_45(v215, v216, v217, &unk_28058130E), v7))
                          {
LABEL_109:
                            v7 = OUTLINED_FUNCTION_8_42(v7, v175, v176, v177, v178, v179, v180, v181, v262, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, *(&v287 + 1), v288, *(&v288 + 1), v289, v290, v291, v292);
                            if (v7 || (v7 = OUTLINED_FUNCTION_7_42(), v7) || (v218 = OUTLINED_FUNCTION_6_42(v7, v175, v176, v177, v178, v179, v180, v181, v262, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, *(&v287 + 1), v288, *(&v288 + 1), v289, v290, v291, v292), v7 = OUTLINED_FUNCTION_1_45(v218, v219, v220, &unk_280581322), v7))
                            {
LABEL_112:
                              v7 = OUTLINED_FUNCTION_8_42(v7, v175, v176, v177, v178, v179, v180, v181, v262, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, *(&v287 + 1), v288, *(&v288 + 1), v289, v290, v291, v292);
                              if (v7 || (v7 = OUTLINED_FUNCTION_7_42(), v7) || (v221 = OUTLINED_FUNCTION_6_42(v7, v175, v176, v177, v178, v179, v180, v181, v262, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, *(&v287 + 1), v288, *(&v288 + 1), v289, v290, v291, v292), v7 = OUTLINED_FUNCTION_1_45(v221, v222, v223, &unk_280581307), v7))
                              {
LABEL_115:
                                v7 = OUTLINED_FUNCTION_8_42(v7, v175, v176, v177, v178, v179, v180, v181, v262, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, *(&v287 + 1), v288, *(&v288 + 1), v289, v290, v291, v292);
                                if (v7 || (v7 = OUTLINED_FUNCTION_7_42(), v7) || (v224 = OUTLINED_FUNCTION_6_42(v7, v175, v176, v177, v178, v179, v180, v181, v262, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, *(&v287 + 1), v288, *(&v288 + 1), v289, v290, v291, v292), v7 = OUTLINED_FUNCTION_1_45(v224, v225, v226, &unk_2805812FF), v7))
                                {
LABEL_118:
                                  v7 = OUTLINED_FUNCTION_8_42(v7, v175, v176, v177, v178, v179, v180, v181, v262, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, *(&v287 + 1), v288, *(&v288 + 1), v289, v290, v291, v292);
                                  if (v7 || (v7 = OUTLINED_FUNCTION_7_42(), v7) || (v227 = OUTLINED_FUNCTION_6_42(v7, v175, v176, v177, v178, v179, v180, v181, v262, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, *(&v287 + 1), v288, *(&v288 + 1), v289, v290, v291, v292), v7 = OUTLINED_FUNCTION_1_45(v227, v228, v229, &unk_28058131B), v7))
                                  {
LABEL_121:
                                    v7 = OUTLINED_FUNCTION_8_42(v7, v175, v176, v177, v178, v179, v180, v181, v262, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, *(&v287 + 1), v288, *(&v288 + 1), v289, v290, v291, v292);
                                    if (v7 || (v7 = OUTLINED_FUNCTION_7_42(), v7) || (v230 = OUTLINED_FUNCTION_6_42(v7, v175, v176, v177, v178, v179, v180, v181, v262, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, *(&v287 + 1), v288, *(&v288 + 1), v289, v290, v291, v292), v7 = OUTLINED_FUNCTION_1_45(v230, v231, v232, &unk_280581325), v7))
                                    {
LABEL_124:
                                      v7 = OUTLINED_FUNCTION_8_42(v7, v175, v176, v177, v178, v179, v180, v181, v262, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, *(&v287 + 1), v288, *(&v288 + 1), v289, v290, v291, v292);
                                      if (v7 || (v7 = OUTLINED_FUNCTION_7_42(), v7) || (v233 = OUTLINED_FUNCTION_6_42(v7, v175, v176, v177, v178, v179, v180, v181, v262, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, *(&v287 + 1), v288, *(&v288 + 1), v289, v290, v291, v292), v7 = OUTLINED_FUNCTION_1_45(v233, v234, v235, &unk_280581326), v7))
                                      {
LABEL_127:
                                        v7 = OUTLINED_FUNCTION_8_42(v7, v175, v176, v177, v178, v179, v180, v181, v262, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, *(&v287 + 1), v288, *(&v288 + 1), v289, v290, v291, v292);
                                        if (v7 || (v7 = OUTLINED_FUNCTION_7_42(), v7) || (v236 = OUTLINED_FUNCTION_6_42(v7, v175, v176, v177, v178, v179, v180, v181, v262, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, *(&v287 + 1), v288, *(&v288 + 1), v289, v290, v291, v292), v7 = OUTLINED_FUNCTION_1_45(v236, v237, v238, &unk_280581324), v7))
                                        {
LABEL_130:
                                          v7 = OUTLINED_FUNCTION_8_42(v7, v175, v176, v177, v178, v179, v180, v181, v262, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, *(&v287 + 1), v288, *(&v288 + 1), v289, v290, v291, v292);
                                          if (v7 || (v7 = OUTLINED_FUNCTION_7_42(), v7) || (v239 = OUTLINED_FUNCTION_6_42(v7, v175, v176, v177, v178, v179, v180, v181, v262, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, *(&v287 + 1), v288, *(&v288 + 1), v289, v290, v291, v292), v7 = OUTLINED_FUNCTION_1_45(v239, v240, v241, &unk_280581311), v7))
                                          {
LABEL_133:
                                            v7 = OUTLINED_FUNCTION_8_42(v7, v175, v176, v177, v178, v179, v180, v181, v262, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, *(&v287 + 1), v288, *(&v288 + 1), v289, v290, v291, v292);
                                            if (v7 || (v7 = OUTLINED_FUNCTION_7_42(), v7) || (v242 = OUTLINED_FUNCTION_6_42(v7, v175, v176, v177, v178, v179, v180, v181, v262, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, *(&v287 + 1), v288, *(&v288 + 1), v289, v290, v291, v292), v7 = OUTLINED_FUNCTION_1_45(v242, v243, v244, &unk_280581309), v7))
                                            {
LABEL_136:
                                              v7 = OUTLINED_FUNCTION_8_42(v7, v175, v176, v177, v178, v179, v180, v181, v262, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, *(&v287 + 1), v288, *(&v288 + 1), v289, v290, v291, v292);
                                              if (v7 || (v7 = OUTLINED_FUNCTION_7_42(), v7) || (v245 = OUTLINED_FUNCTION_6_42(v7, v175, v176, v177, v178, v179, v180, v181, v262, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, *(&v287 + 1), v288, *(&v288 + 1), v289, v290, v291, v292), v7 = OUTLINED_FUNCTION_1_45(v245, v246, v247, &unk_280581328), v7))
                                              {
LABEL_139:
                                                v7 = OUTLINED_FUNCTION_8_42(v7, v175, v176, v177, v178, v179, v180, v181, v262, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, *(&v287 + 1), v288, *(&v288 + 1), v289, v290, v291, v292);
                                                if (v7 || (v7 = OUTLINED_FUNCTION_7_42(), v7) || (v248 = OUTLINED_FUNCTION_6_42(v7, v175, v176, v177, v178, v179, v180, v181, v262, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, *(&v287 + 1), v288, *(&v288 + 1), v289, v290, v291, v292), v7 = OUTLINED_FUNCTION_1_45(v248, v249, v250, &unk_280581329), v7))
                                                {
LABEL_142:
                                                  if (OUTLINED_FUNCTION_8_42(v7, v175, v176, v177, v178, v179, v180, v181, v262, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, *(&v287 + 1), v288, *(&v288 + 1), v289, v290, v291, v292) || (v251 = OUTLINED_FUNCTION_7_42(), v251) || (v259 = OUTLINED_FUNCTION_6_42(v251, v252, v253, v254, v255, v256, v257, v258, v263, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, *(&v287 + 1), v288, *(&v288 + 1), v289, v290, v291, v292), OUTLINED_FUNCTION_1_45(v259, v260, v261, &unk_280581321)))
                                                  {
LABEL_3:
                                                    v7 = 94;
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

        v7 = 1;
        break;
      }
    }

    v169 = OUTLINED_FUNCTION_5_43();
    lpta_rpta_loadp(v169, v170, &v290);
    OUTLINED_FUNCTION_10_41();
    settvar_s();
    v3 = 0;
    npush_s(a1);
    WORD1(v287) = 3;
    v171 = OUTLINED_FUNCTION_10_41();
    npop(v171, v172);
    npush_s(a1);
    WORD1(v287) = 1;
    v173 = OUTLINED_FUNCTION_10_41();
    npop(v173, v174);
    OUTLINED_FUNCTION_4_43();
    insert_2ptv();
    if (!v182)
    {
      goto LABEL_146;
    }

    v183 = *(a1 + 104);
    if (v183)
    {
      *(a1 + 104) = 0;
      v184 = v183;
    }

    else
    {
      v184 = vback(a1, 0);
    }

    v185 = v184 - 1;
    v7 = 0;
    switch(v185)
    {
      case 0:
        continue;
      case 1:
        goto LABEL_4;
      case 2:
        goto LABEL_11;
      case 3:
        goto LABEL_14;
      case 4:
        goto LABEL_17;
      case 5:
        goto LABEL_21;
      case 6:
        goto LABEL_25;
      case 7:
        goto LABEL_28;
      case 8:
        goto LABEL_31;
      case 9:
        goto LABEL_34;
      case 10:
        goto LABEL_37;
      case 11:
        goto LABEL_40;
      case 12:
        goto LABEL_43;
      case 13:
        goto LABEL_46;
      case 14:
        goto LABEL_49;
      case 15:
        goto LABEL_52;
      case 16:
        goto LABEL_55;
      case 17:
        goto LABEL_58;
      case 18:
        goto LABEL_61;
      case 19:
        goto LABEL_64;
      case 20:
        goto LABEL_67;
      case 21:
        goto LABEL_70;
      case 22:
        goto LABEL_77;
      case 23:
        goto LABEL_79;
      case 24:
        goto LABEL_82;
      case 25:
        goto LABEL_85;
      case 26:
        goto LABEL_88;
      case 27:
        goto LABEL_91;
      case 28:
        goto LABEL_94;
      case 29:
        goto LABEL_97;
      case 30:
        goto LABEL_100;
      case 31:
        goto LABEL_103;
      case 32:
        goto LABEL_106;
      case 33:
        goto LABEL_109;
      case 34:
        goto LABEL_112;
      case 35:
        goto LABEL_115;
      case 36:
        goto LABEL_118;
      case 37:
        goto LABEL_121;
      case 38:
        goto LABEL_124;
      case 39:
        goto LABEL_127;
      case 40:
        goto LABEL_130;
      case 41:
        goto LABEL_133;
      case 42:
        goto LABEL_136;
      case 43:
        goto LABEL_139;
      case 44:
        goto LABEL_142;
      default:
        goto LABEL_3;
    }
  }

LABEL_4:
  v8 = v7;
  vretproc(a1);
  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t print_eng_SPR(void *a1, __int16 *a2, uint64_t a3)
{
  v84 = *MEMORY[0x277D85DE8];
  v79[0] = 0;
  v79[1] = 0;
  v77 = 0;
  v78 = 0;
  bzero(&v54, 0xB8uLL);
  bzero(v83, 0xC0uLL);
  if (!setjmp(v83) && !ventproc(a1, &v54, v82, v81, v80, v83))
  {
    v9 = OUTLINED_FUNCTION_10_41();
    get_parm(v9, v10, a2, -6);
    get_parm(a1, &v77, a3, -6);
    fence_45(a1, 0, &null_str_13);
    fence_45(a1, 1, &unk_280581304);
    starttest(a1, 1);
    v11 = OUTLINED_FUNCTION_10_41();
    v13 = lpta_loadp_setscan_r(v11, v12);
    if (!v13)
    {
      v21 = OUTLINED_FUNCTION_4_43();
      if (testFldeq(v21, v22, 10, 1) || advance_tok(a1))
      {
        goto LABEL_35;
      }

      v13 = print_lit(a1, 8, "h");
    }

    while (2)
    {
      v13 = OUTLINED_FUNCTION_9_42(v13, v14, v15, v16, v17, v18, v19, v20, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79[0]);
      if (!v13)
      {
        OUTLINED_FUNCTION_4_43();
        v13 = test_string_s();
        if (!v13)
        {
LABEL_11:
          OUTLINED_FUNCTION_11_41(3, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77);
          v23 = "C";
LABEL_24:
          v24 = a1;
          goto LABEL_25;
        }
      }

LABEL_12:
      v13 = OUTLINED_FUNCTION_9_42(v13, v14, v15, v16, v17, v18, v19, v20, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79[0]);
      if (!v13)
      {
        OUTLINED_FUNCTION_4_43();
        v13 = test_string_s();
        if (!v13)
        {
LABEL_14:
          OUTLINED_FUNCTION_11_41(6, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77);
          v23 = "J";
          goto LABEL_24;
        }
      }

LABEL_15:
      v13 = OUTLINED_FUNCTION_9_42(v13, v14, v15, v16, v17, v18, v19, v20, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79[0]);
      if (!v13)
      {
        OUTLINED_FUNCTION_4_43();
        v13 = test_string_s();
        if (!v13)
        {
LABEL_17:
          savescptr(a1, 8, &v77);
          v23 = "Y";
          v24 = a1;
LABEL_25:
          print_lit(v24, 8, v23);
LABEL_40:
          *(a3 + 8) = v78;
          v6 = 0;
          goto LABEL_4;
        }
      }

LABEL_18:
      v13 = OUTLINED_FUNCTION_9_42(v13, v14, v15, v16, v17, v18, v19, v20, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79[0]);
      if (!v13)
      {
        OUTLINED_FUNCTION_4_43();
        v13 = test_string_s();
        if (!v13)
        {
LABEL_20:
          OUTLINED_FUNCTION_11_41(10, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77);
          v23 = "W";
          goto LABEL_24;
        }
      }

LABEL_21:
      if (!OUTLINED_FUNCTION_9_42(v13, v14, v15, v16, v17, v18, v19, v20, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79[0]))
      {
        OUTLINED_FUNCTION_4_43();
        if (!test_string_s())
        {
LABEL_23:
          OUTLINED_FUNCTION_11_41(12, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77);
          v23 = "O";
          goto LABEL_24;
        }
      }

LABEL_26:
      starttest(a1, 13);
      if (OUTLINED_FUNCTION_9_42(v25, v26, v27, v28, v29, v30, v31, v32, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79[0]))
      {
LABEL_27:
        starttest(a1, 14);
        if (OUTLINED_FUNCTION_9_42(v33, v34, v35, v36, v37, v38, v39, v40, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79[0]))
        {
LABEL_39:
          lpta_rpta_loadp(a1, v79, &v77);
          print_stream(a1, 8, 2, 0, &unk_26DD32C5A);
          goto LABEL_40;
        }

        v41 = OUTLINED_FUNCTION_4_43();
        if (!testFldeq(v41, v42, v43, 20))
        {
          v44 = OUTLINED_FUNCTION_2_45();
          if (!testFldeq(v44, v45, v46, 1) && !advance_tok(a1))
          {
            v23 = "M";
            goto LABEL_24;
          }
        }
      }

      else
      {
        v47 = OUTLINED_FUNCTION_4_43();
        if (!testFldeq(v47, v48, v49, 21))
        {
          v50 = OUTLINED_FUNCTION_2_45();
          if (!testFldeq(v50, v51, v52, 1) && !advance_tok(a1))
          {
            v23 = "N";
            goto LABEL_24;
          }
        }
      }

LABEL_35:
      v53 = a1[13];
      if (v53)
      {
        a1[13] = 0;
        v13 = v53;
      }

      else
      {
        v13 = vback(a1, 0);
      }

      switch(v13)
      {
        case 1:
          continue;
        case 2:
          goto LABEL_12;
        case 3:
          goto LABEL_11;
        case 4:
          goto LABEL_40;
        case 5:
          goto LABEL_15;
        case 6:
          goto LABEL_14;
        case 7:
          goto LABEL_18;
        case 8:
          goto LABEL_17;
        case 9:
          goto LABEL_21;
        case 10:
          goto LABEL_20;
        case 11:
          goto LABEL_26;
        case 12:
          goto LABEL_23;
        case 13:
          goto LABEL_27;
        case 14:
          goto LABEL_39;
        default:
          goto LABEL_3;
      }
    }
  }

LABEL_3:
  v6 = 94;
LABEL_4:
  vretproc(a1);
  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t OUTLINED_FUNCTION_1_45(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return insert_2pt_s(v4, 2u, 1, a4, 0);
}

uint64_t OUTLINED_FUNCTION_6_42(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, char a40)
{

  return lpta_rpta_loadp(v40, &a40, &a38);
}

uint64_t OUTLINED_FUNCTION_7_42()
{

  return test_string_s();
}

uint64_t OUTLINED_FUNCTION_8_42(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{

  return lpta_loadp_setscan_r(v40, &a40);
}

uint64_t OUTLINED_FUNCTION_9_42(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{

  return lpta_loadp_setscan_r(v34, &a34);
}

double OUTLINED_FUNCTION_11_41@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{

  *&result = savescptr(v25, a1, &a25).n128_u64[0];
  return result;
}

void *fence_46(uint64_t a1, unsigned __int8 *a2)
{
  *(*(a1 + 192) + 8121) = 1;
  result = memset(*(a1 + 264), *(a1 + 288), *(a1 + 288));
  v5 = *a2;
  **(a1 + 248) = v5;
  *(*(a1 + 264) + v5) = 0;
  return result;
}

uint64_t assign_eng_stress()
{
  OUTLINED_FUNCTION_21_34();
  v142 = *MEMORY[0x277D85DE8];
  v140[4] = 0;
  v141 = 0;
  OUTLINED_FUNCTION_47_18(v3, v4, v5, v6, v7, v8, v9, v10, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140[0], v140[1], v140[2], v140[3]);
  OUTLINED_FUNCTION_51_17();
  OUTLINED_FUNCTION_114_7(v11, v12);
  if (!setjmp(v2))
  {
    OUTLINED_FUNCTION_106_8();
    if (!OUTLINED_FUNCTION_105_8(v13, v14, v15, v16, v17))
    {
      v20 = OUTLINED_FUNCTION_75_12();
      get_parm(v20, v21, v1, -6);
      v22 = OUTLINED_FUNCTION_59_16();
      get_parm(v22, v23, v24, -6);
      v25 = OUTLINED_FUNCTION_72_12();
      push_ptr_init(v25, v26);
      v139 = 65532;
      fence_46(v0, &_MergedGlobals_39);
      if (*(v0 + 3998) == 1)
      {
        v27 = OUTLINED_FUNCTION_37_23();
        starttest(v27, v28);
        v29 = OUTLINED_FUNCTION_63_16();
        if (lpta_loadp_setscan_r(v29, v30))
        {
LABEL_7:
          vretproc(v0);
          result = 0;
          goto LABEL_4;
        }

        v32 = OUTLINED_FUNCTION_61_16();
        if (npush_fld(v32, v33, 7) || (npush_v(v0, (v0 + 3236), v34, v35, v36, v37, v38, v39), if_testgt(v0, v40, v41, v42, v43, v44, v45, v46)) || advance_tok(v0))
        {
          v47 = 0;
        }

        else
        {
          OUTLINED_FUNCTION_37_23();
          bspush_ca_scan_boa();
          v48 = 0;
LABEL_14:
          v49 = OUTLINED_FUNCTION_19_37();
          if (test_synch(v49, v50, v51, v52))
          {
            v47 = v48;
          }

          else
          {
            v47 = 1;
          }
        }

        goto LABEL_17;
      }

      v31 = 0;
      while (2)
      {
        *(v0 + 1648) = v141;
        if (*(v0 + 4026))
        {
          assign_prefix_stress();
        }

LABEL_34:
        if (*(v0 + 5970))
        {
          OUTLINED_FUNCTION_73_12();
          assign_suffix_stress();
        }

LABEL_36:
        *(v0 + 6278) = 0;
        v67 = OUTLINED_FUNCTION_28_30();
        starttest(v67, v68);
        v69 = OUTLINED_FUNCTION_27_31();
        bspush_ca(v69);
        v47 = v31;
        v57 = v31;
        if (*(v0 + 5974) != 1)
        {
          goto LABEL_17;
        }

LABEL_37:
        *(v0 + 6278) = 1;
        v48 = v57;
LABEL_38:
        v70 = OUTLINED_FUNCTION_26_32();
        startloop(v70, v71);
        v72 = OUTLINED_FUNCTION_58_16();
        copyvar(v72, v73, v74);
        v75 = OUTLINED_FUNCTION_42_21();
        copyvar(v75, v76, v77);
        v78 = OUTLINED_FUNCTION_58_16();
        v80 = forall_to_test(v78, v79, v140);
        v47 = v48;
        v65 = v48;
        if (v80)
        {
LABEL_17:
          v48 = v47;
LABEL_18:
          v53 = *(v0 + 104);
          if (v53)
          {
            v54 = OUTLINED_FUNCTION_53_17(v53);
            v48 = v55;
          }

          else
          {
            v54 = vback(v0, v48);
            v48 = 0;
          }

          v56 = v54 - 1;
          v57 = v48;
          switch(v56)
          {
            case 0:
              v31 = v48;
              continue;
            case 1:
            case 9:
              goto LABEL_7;
            case 2:
              bspop_boa(v0);
              v58 = OUTLINED_FUNCTION_32_28();
              lpta_rpta_loadp(v58, v59, v60);
              v61 = OUTLINED_FUNCTION_9_43();
              if (!insert_2pt_i(v61, v62, v63, &string_3_1, v64))
              {
                goto LABEL_7;
              }

              goto LABEL_18;
            case 3:
              goto LABEL_14;
            case 4:
              v31 = v48;
              goto LABEL_34;
            case 5:
              v31 = v48;
              goto LABEL_36;
            case 6:
              goto LABEL_38;
            case 7:
              v57 = v48;
              if (*(v0 + 4066) == 1)
              {
                goto LABEL_37;
              }

              goto LABEL_18;
            case 8:
              goto LABEL_37;
            case 10:
              goto LABEL_43;
            case 11:
              goto LABEL_55;
            case 12:
              goto LABEL_42;
            case 13:
              v65 = v48;
              goto LABEL_44;
            case 14:
            case 15:
            case 17:
            case 21:
              goto LABEL_54;
            case 16:
              goto LABEL_48;
            case 18:
              goto LABEL_49;
            case 19:
              goto LABEL_50;
            case 20:
              v66 = v48;
              goto LABEL_53;
            case 22:
              v65 = v48;
              goto LABEL_39;
            default:
              goto LABEL_3;
          }
        }

        break;
      }

LABEL_39:
      v81 = OUTLINED_FUNCTION_37_23();
      bspush_ca(v81);
      v82 = OUTLINED_FUNCTION_58_16();
      if (!lpta_loadp_setscan_r(v82, v83))
      {
        v84 = OUTLINED_FUNCTION_54_17();
        if (!testFldeq(v84, 3u, v85, 2))
        {
          v86 = advance_tok(v0);
          v47 = v65;
          v48 = v65;
          if (v86)
          {
            goto LABEL_17;
          }

LABEL_42:
          v87 = OUTLINED_FUNCTION_70_13();
          savescptr(v87, v88, v89);
LABEL_43:
          v65 = v48;
          v90 = OUTLINED_FUNCTION_37_23();
          starttest(v90, v91);
          v92 = OUTLINED_FUNCTION_58_16();
          if (lpta_loadp_setscan_r(v92, v93))
          {
LABEL_44:
            if (!*(v0 + 4056))
            {
              v48 = v65;
LABEL_48:
              OUTLINED_FUNCTION_44_20();
              set_extrametrical_syll();
LABEL_49:
              get_numRootSylls();
LABEL_50:
              v66 = v48;
              if (*(v0 + 4002) == 1)
              {
                v96 = OUTLINED_FUNCTION_37_23();
                starttest(v96, v97);
                v98 = OUTLINED_FUNCTION_11_42();
                move_i(v98, v99, v100);
                inserted = insert_stressval(v0, (v0 + 1640), (v0 + 4008), &v139, v101, v102, v103, v104);
                v47 = v48;
                if (inserted)
                {
                  goto LABEL_17;
                }
              }

              else
              {
LABEL_53:
                v106 = OUTLINED_FUNCTION_25_32();
                starttest(v106, v107);
                OUTLINED_FUNCTION_55_17();
                assign_root_stress();
                v48 = v66;
              }

              goto LABEL_54;
            }

            v94 = OUTLINED_FUNCTION_37_23();
            starttest(v94, v95);
            OUTLINED_FUNCTION_55_17();
            insert_stress_pattern();
LABEL_46:
            v48 = v65;
LABEL_54:
            v108 = OUTLINED_FUNCTION_39_22();
            move_i(v108, v109, v110);
LABEL_55:
            v111 = forto_adv_r(v0, 10, 11, 23, 3, v0 + 1640);
            v47 = v48;
            if (!v111)
            {
              goto LABEL_7;
            }

            goto LABEL_17;
          }

          if (!testFldeq(v0, 3u, 2, 3) && !advance_tok(v0))
          {
            v112 = OUTLINED_FUNCTION_37_23();
            starttest(v112, v113);
            OUTLINED_FUNCTION_55_17();
            assign_user_stress();
            goto LABEL_46;
          }
        }
      }

      v47 = v65;
      goto LABEL_17;
    }
  }

LABEL_3:
  vretproc(v0);
  result = 94;
LABEL_4:
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t assign_prefix_stress()
{
  OUTLINED_FUNCTION_21_34();
  v158 = *MEMORY[0x277D85DE8];
  v155 = 0;
  v156 = 0;
  v153[1] = 0;
  v154 = 0;
  OUTLINED_FUNCTION_45_19(v2, v3, v4, v5, v6, v7, v8, v9, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151[0], v151[1], v152, v153[0]);
  OUTLINED_FUNCTION_51_17();
  bzero(v157, v10);
  if (!setjmp(v157))
  {
    OUTLINED_FUNCTION_106_8();
    if (!ventproc(v0, v11, v12, v13, v14, v157))
    {
      v18 = OUTLINED_FUNCTION_41_21();
      get_parm(v18, v19, v20, -6);
      v21 = OUTLINED_FUNCTION_59_16();
      get_parm(v21, v22, v23, -6);
      v153[0] = 0xFFFC0000FFFCLL;
      v152 = 0xFFFC0000FFFCLL;
      v24 = OUTLINED_FUNCTION_89_11();
      push_ptr_init(v24, v25);
      fence_46(v0, &_MergedGlobals_39);
      v26 = OUTLINED_FUNCTION_37_23();
      starttest(v26, v27);
      v28 = OUTLINED_FUNCTION_49_17();
      v30 = 0;
      v31 = 0;
      if (!lpta_loadp_setscan_r(v28, v29))
      {
        while (2)
        {
          bspush_ca_scan(v0, 3);
          v32 = OUTLINED_FUNCTION_54_17();
          if (testFldeq(v32, 3u, v33, 2) || (v30 = v31, advance_tok(v0)))
          {
LABEL_40:
            v111 = v31;
LABEL_41:
            v112 = *(v0 + 104);
            if (v112)
            {
              v113 = OUTLINED_FUNCTION_53_17(v112);
              v30 = v114;
            }

            else
            {
              v113 = vback(v0, v111);
              v30 = 0;
            }

            v31 = v30;
            v58 = v30;
            v91 = v30;
            switch(v113)
            {
              case 1:
                goto LABEL_9;
              case 2:
                continue;
              case 3:
                v115 = advance_tok(v0);
                v31 = v30;
                v111 = v30;
                if (!v115)
                {
                  continue;
                }

                goto LABEL_41;
              case 4:
                goto LABEL_8;
              case 5:
                goto LABEL_31;
              case 6:
                goto LABEL_10;
              case 7:
                goto LABEL_15;
              case 8:
                v49 = v30;
                goto LABEL_14;
              case 9:
                goto LABEL_16;
              case 10:
                savescptr(v0, 10, v0 + 1272);
                v117 = OUTLINED_FUNCTION_10_42();
                v120 = testFldeq(v117, v118, v119, 1);
                v111 = v30;
                if (v120)
                {
                  goto LABEL_41;
                }

                v121 = advance_tok(v0);
                v111 = v30;
                if (v121)
                {
                  goto LABEL_41;
                }

                goto LABEL_57;
              case 11:
                v122 = OUTLINED_FUNCTION_35_26();
                v126 = testFldeq(v122, v123, v124, v125);
                v111 = v30;
                if (v126)
                {
                  goto LABEL_41;
                }

                goto LABEL_55;
              case 12:
                bspop_boa(v0);
                goto LABEL_55;
              case 13:
LABEL_55:
                v127 = advance_tok(v0);
                v58 = v30;
                v111 = v30;
                if (!v127)
                {
                  goto LABEL_37;
                }

                goto LABEL_41;
              case 14:
                goto LABEL_37;
              case 15:
LABEL_57:
                savescptr(v0, 15, v151);
                goto LABEL_16;
              case 16:
                v64 = 2;
                goto LABEL_17;
              case 17:
                OUTLINED_FUNCTION_3_45();
                v116 = test_string_s();
                v91 = v30;
                v111 = v30;
                if (!v116)
                {
                  goto LABEL_25;
                }

                goto LABEL_41;
              case 18:
                goto LABEL_25;
              case 19:
                goto LABEL_18;
              case 20:
                goto LABEL_19;
              case 21:
                goto LABEL_22;
              case 22:
                goto LABEL_20;
              case 23:
                goto LABEL_21;
              case 24:
                goto LABEL_29;
              case 25:
                goto LABEL_30;
              default:
                goto LABEL_3;
            }
          }

          break;
        }

LABEL_8:
        OUTLINED_FUNCTION_85_12();
        v34 = OUTLINED_FUNCTION_70_13();
        savescptr(v34, v35, v36);
      }

LABEL_9:
      fence_46(v0, &unk_280581339);
      v37 = OUTLINED_FUNCTION_23_34();
      startloop(v37, v38);
      v39 = OUTLINED_FUNCTION_20_35();
      move_i(v39, v40, v41);
      v42 = OUTLINED_FUNCTION_49_17();
      move_i(v42, v43, 1);
      copyvar(v0, &v152, (v0 + 4024));
      v44 = OUTLINED_FUNCTION_43_20();
      LODWORD(v31) = v30;
      if (for_test(v44, v45, &v152, &v152 + 2))
      {
        goto LABEL_40;
      }

      while (1)
      {
LABEL_10:
        v46 = OUTLINED_FUNCTION_75_12();
        if (!lpta_loadp_setscan_r(v46, v47))
        {
          v48 = advance_tok(v0);
          v49 = v30;
          if (!v48)
          {
LABEL_14:
            v30 = v49;
            v50 = OUTLINED_FUNCTION_67_15();
            savescptr(v50, v51, v52);
          }
        }

LABEL_15:
        v53 = OUTLINED_FUNCTION_37_23();
        starttest(v53, v54);
        v55 = OUTLINED_FUNCTION_62_16();
        v57 = lpta_loadp_setscan_r(v55, v56);
        v58 = v30;
        if (!v57)
        {
LABEL_37:
          v103 = v58;
          v104 = OUTLINED_FUNCTION_26_32();
          bspush_ca_scan(v104, v105);
          v106 = OUTLINED_FUNCTION_37_23();
          bspush_ca_scan(v106, v107);
          OUTLINED_FUNCTION_37_23();
          bspush_ca_scan_boa();
          v108 = OUTLINED_FUNCTION_10_42();
          if (testFldeq(v108, v109, v110, 1))
          {
            LODWORD(v31) = v103;
          }

          else
          {
            LODWORD(v31) = 1;
          }

          goto LABEL_40;
        }

LABEL_16:
        v59 = OUTLINED_FUNCTION_25_32();
        starttest(v59, v60);
        v61 = OUTLINED_FUNCTION_39_22();
        v63 = lpta_loadp_setscan_r(v61, v62);
        v64 = 2;
        if (!v63)
        {
          v88 = OUTLINED_FUNCTION_37_23();
          bspush_ca_scan(v88, v89);
          OUTLINED_FUNCTION_4_44();
          v90 = test_string_s();
          LODWORD(v31) = v30;
          v91 = v30;
          if (v90)
          {
            goto LABEL_40;
          }

LABEL_25:
          v30 = v91;
          *(v0 + 136) = 1;
          v92 = OUTLINED_FUNCTION_7_43();
          v93 = test_ptr(v92);
          v64 = 1;
          LODWORD(v31) = v30;
          if (v93)
          {
            goto LABEL_40;
          }
        }

LABEL_17:
        WORD1(v153[0]) = v64;
LABEL_18:
        v65 = OUTLINED_FUNCTION_37_23();
        starttest(v65, v66);
        v67 = OUTLINED_FUNCTION_62_16();
        if (lpta_loadp_setscan_r(v67, v68))
        {
LABEL_19:
          v69 = OUTLINED_FUNCTION_70_13();
          lpta_rpta_loadp(v69, v70, v71);
          v72 = OUTLINED_FUNCTION_38_22();
          v74 = setd_lookup(v72, v73, 481);
          v75 = v30;
          if (!v74)
          {
            goto LABEL_27;
          }

LABEL_20:
          v76 = OUTLINED_FUNCTION_70_13();
          lpta_rpta_loadp(v76, v77, v78);
          v79 = OUTLINED_FUNCTION_38_22();
          v81 = setd_lookup(v79, v80, 482);
          v75 = v30;
          if (!v81)
          {
LABEL_27:
            WORD1(v153[0]) = 1;
            v87 = v75;
LABEL_28:
            *(v0 + 5974) = 1;
            v30 = v87;
            goto LABEL_29;
          }

LABEL_21:
          v82 = OUTLINED_FUNCTION_70_13();
          lpta_rpta_loadp(v82, v83, v84);
          v85 = OUTLINED_FUNCTION_38_22();
          if (setd_lookup(v85, v86, 483))
          {
LABEL_22:
            v87 = v30;
            if (WORD1(v153[0]) == 1)
            {
              goto LABEL_28;
            }
          }

          else
          {
            WORD1(v153[0]) = 2;
          }
        }

        else
        {
          v99 = OUTLINED_FUNCTION_35_26();
          if (testFldeq(v99, v100, v101, v102) || advance_tok(v0))
          {
            LODWORD(v31) = v30;
            goto LABEL_40;
          }

          WORD1(v153[0]) = 0;
        }

LABEL_29:
        v94 = OUTLINED_FUNCTION_37_23();
        starttest(v94, v95);
        insert_stress();
LABEL_30:
        v96 = OUTLINED_FUNCTION_67_15();
        copyvar(v96, v97, v98);
        if (!for_adv(v0, 5, 6, v153 + 2, &v152, &v152 + 2))
        {
LABEL_31:
          *(v1 + 8) = v154;
          v15 = 0;
          goto LABEL_4;
        }
      }
    }
  }

LABEL_3:
  v15 = 94;
LABEL_4:
  vretproc(v0);
  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t assign_suffix_stress()
{
  OUTLINED_FUNCTION_108_7();
  v102 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_45_19(v1, v2, v3, v4, v5, v6, v7, v8, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100[0], v100[1], v100[2], v100[3]);
  OUTLINED_FUNCTION_51_17();
  bzero(v101, v9);
  if (setjmp(v101))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_57_16();
  if (ventproc(v0, v10, v11, v12, v13, v101))
  {
    goto LABEL_3;
  }

  v16 = OUTLINED_FUNCTION_34_27();
  get_parm(v16, v17, v18, -6);
  v19 = OUTLINED_FUNCTION_89_11();
  push_ptr_init(v19, v20);
  fence_46(v0, &_MergedGlobals_39);
  v21 = OUTLINED_FUNCTION_37_23();
  starttest(v21, v22);
  v23 = OUTLINED_FUNCTION_43_20();
  v25 = lpta_loadp_setscan_l(v23, v24);
  v26 = 0;
  v27 = 0;
  if (!v25)
  {
LABEL_6:
    v28 = v26;
    v29 = OUTLINED_FUNCTION_37_23();
    bspush_ca_scan(v29, v30);
LABEL_8:
    OUTLINED_FUNCTION_85_12();
    savescptr(v0, v31, v100);
    v32 = OUTLINED_FUNCTION_54_17();
    if (testFldeq(v32, 3u, v33, 2))
    {
      goto LABEL_31;
    }

    v27 = v28;
    if (advance_tok(v0))
    {
      goto LABEL_31;
    }
  }

  while (2)
  {
    v28 = v27;
    if (*(v0 + 4066))
    {
      goto LABEL_26;
    }

LABEL_13:
    v34 = OUTLINED_FUNCTION_28_30();
    starttest(v34, v35);
    v36 = OUTLINED_FUNCTION_39_22();
    if (!lpta_loadp_setscan_r(v36, v37))
    {
      OUTLINED_FUNCTION_4_44();
      if (!test_string_s())
      {
        v52 = OUTLINED_FUNCTION_27_31();
        bspush_ca_scan(v52, v53);
        v54 = v28;
LABEL_22:
        v51 = v54;
        if (!test_synch(v0, 9, 1u, &unk_280581339))
        {
          v50 = 1;
          goto LABEL_25;
        }

        v28 = v51;
LABEL_31:
        v27 = v28;
LABEL_32:
        v70 = *(v0 + 104);
        if (v70)
        {
          v71 = OUTLINED_FUNCTION_53_17(v70);
          v27 = v72;
        }

        else
        {
          v71 = vback(v0, v27);
          v27 = 0;
        }

        v26 = v27;
        v54 = v27;
        v45 = v27;
        v60 = v27;
        switch(v71)
        {
          case 1:
            continue;
          case 2:
            goto LABEL_6;
          case 3:
            v73 = advance_tok(v0);
            v26 = v27;
            if (!v73)
            {
              goto LABEL_6;
            }

            goto LABEL_32;
          case 4:
            v28 = v27;
            goto LABEL_8;
          case 5:
            v28 = v27;
            goto LABEL_13;
          case 6:
            goto LABEL_26;
          case 7:
            v28 = v27;
            goto LABEL_15;
          case 8:
            OUTLINED_FUNCTION_2_46();
            v74 = test_string_s();
            v54 = v27;
            if (!v74)
            {
              goto LABEL_22;
            }

            goto LABEL_32;
          case 9:
            goto LABEL_22;
          case 11:
            OUTLINED_FUNCTION_2_46();
            v75 = test_string_s();
            v45 = v27;
            if (!v75)
            {
              goto LABEL_18;
            }

            goto LABEL_32;
          case 12:
            goto LABEL_18;
          case 13:
            goto LABEL_19;
          case 14:
            goto LABEL_46;
          case 15:
            goto LABEL_27;
          case 16:
            v76 = advance_tok(v0);
            v60 = v27;
            if (!v76)
            {
              goto LABEL_27;
            }

            goto LABEL_32;
          case 17:
            v28 = v27;
            goto LABEL_28;
          case 18:
            bspop_boa(v0);
            if (advance_tok(v0))
            {
              goto LABEL_32;
            }

            break;
          case 19:
            break;
          case 20:
            goto LABEL_47;
          default:
            goto LABEL_3;
        }

        savescptr(v0, 19, v0 + 1288);
        goto LABEL_46;
      }
    }

    break;
  }

LABEL_15:
  v38 = OUTLINED_FUNCTION_26_32();
  starttest(v38, v39);
  v40 = OUTLINED_FUNCTION_39_22();
  if (lpta_loadp_setscan_r(v40, v41) || (OUTLINED_FUNCTION_2_46(), test_string_s()))
  {
LABEL_3:
    vretproc(v0);
    result = 94;
    goto LABEL_4;
  }

  v42 = OUTLINED_FUNCTION_37_23();
  bspush_ca_scan(v42, v43);
  OUTLINED_FUNCTION_2_46();
  v44 = test_string_s();
  v45 = v28;
  if (v44)
  {
    goto LABEL_31;
  }

LABEL_18:
  v28 = v45;
  OUTLINED_FUNCTION_2_46();
  v27 = v28;
  if (test_string_s())
  {
    goto LABEL_31;
  }

LABEL_19:
  v28 = v27;
  v46 = OUTLINED_FUNCTION_19_37();
  if (test_synch(v46, v47, v48, v49))
  {
    goto LABEL_31;
  }

  v50 = 2;
  v51 = v27;
LABEL_25:
  *(v0 + 4066) = v50;
  v27 = v51;
LABEL_26:
  v55 = OUTLINED_FUNCTION_37_23();
  starttest(v55, v56);
  v57 = OUTLINED_FUNCTION_62_16();
  v59 = lpta_loadp_setscan_r(v57, v58);
  v60 = v27;
  if (!v59)
  {
LABEL_27:
    v28 = v60;
    v61 = OUTLINED_FUNCTION_25_32();
    bspush_ca_scan(v61, v62);
LABEL_28:
    savescptr(v0, 17, v0 + 1272);
    v63 = OUTLINED_FUNCTION_10_42();
    if (!testFldeq(v63, v64, v65, 1))
    {
      OUTLINED_FUNCTION_37_23();
      bspush_ca_scan_boa();
      v66 = OUTLINED_FUNCTION_35_26();
      if (!testFldeq(v66, v67, v68, v69))
      {
        v28 = 1;
      }
    }

    goto LABEL_31;
  }

LABEL_46:
  insert_stress();
LABEL_47:
  vretproc(v0);
  result = 0;
LABEL_4:
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

void set_extrametrical_syll()
{
  OUTLINED_FUNCTION_88_11();
  OUTLINED_FUNCTION_108_7();
  v37 = *MEMORY[0x277D85DE8];
  v24 = 0;
  v25 = 0;
  OUTLINED_FUNCTION_52_17();
  bzero(v23, v2);
  OUTLINED_FUNCTION_51_17();
  bzero(v36, v3);
  v4 = setjmp(v36);
  if (!v4 && !OUTLINED_FUNCTION_113_7(v4, v23, v5, v6, v7, v8, v9, v10, v23[0], v23[1], v23[2], v23[3], v23[4], v23[5], v23[6], v23[7], v23[8], v23[9], v23[10], v23[11], v23[12], v23[13], v23[14], v23[15], v23[16], v23[17], v23[18], v23[19], v23[20], v23[21], v23[22], v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36[0]))
  {
    v11 = OUTLINED_FUNCTION_34_27();
    get_parm(v11, v12, v13, -6);
    fence_46(v0, &_MergedGlobals_39);
    starttest(v0, 1);
    v14 = OUTLINED_FUNCTION_43_20();
    if (!lpta_loadp_setscan_l(v14, v15))
    {
      OUTLINED_FUNCTION_4_44();
      if (!test_string_s())
      {
        while (2)
        {
          v17 = OUTLINED_FUNCTION_43_20();
          savescptr(v17, v18, &v24);
          OUTLINED_FUNCTION_2_46();
          if (!test_string_s())
          {
            v19 = OUTLINED_FUNCTION_66_15();
            bspush_ca_scan(v19, v20);
            OUTLINED_FUNCTION_2_46();
            goto LABEL_8;
          }

          while (1)
          {
            v21 = *(v0 + 104);
            v22 = v21 ? OUTLINED_FUNCTION_53_17(v21) : OUTLINED_FUNCTION_99_8();
            if (v22 != 3)
            {
              break;
            }

            OUTLINED_FUNCTION_2_46();
LABEL_8:
            if (!test_string_s())
            {
              goto LABEL_17;
            }
          }

          if ((v22 - 4) < 2)
          {
LABEL_17:
            *(v1 + 8) = v25;
            break;
          }

          if (v22 == 2)
          {
            continue;
          }

          break;
        }
      }
    }
  }

  vretproc(v0);
  v16 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_87_11();
}

uint64_t insert_stressval(uint64_t a1, __int16 *a2, __int16 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v104 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_47_18(a1, a2, a3, a4, a5, a6, a7, a8, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, SHIDWORD(v90), v92, v94, v96, v98);
  OUTLINED_FUNCTION_51_17();
  bzero(v103, v11);
  v12 = setjmp(v103);
  if (v12 || OUTLINED_FUNCTION_69_13(v12, v13, v14, v15, v16, v17, v18, v19, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, *v100, v100[4], *v101, *&v101[4], v101[6], v102, SWORD2(v102), SBYTE6(v102), SHIBYTE(v102)))
  {
LABEL_10:
    vretproc(a1);
    result = 94;
  }

  else
  {
    v20 = OUTLINED_FUNCTION_73_12();
    get_parm(v20, v21, a2, -6);
    v22 = OUTLINED_FUNCTION_72_12();
    get_parm(v22, v23, a3, -6);
    v24 = OUTLINED_FUNCTION_59_16();
    get_parm(v24, v25, v26, -4);
    fence_46(a1, &_MergedGlobals_39);
    v27 = OUTLINED_FUNCTION_37_23();
    starttest(v27, v28);
    if (*(a1 + 6278) == 1)
    {
      v29 = OUTLINED_FUNCTION_62_16();
      move_i(v29, v30, v31);
    }

    while (1)
    {
      v32 = OUTLINED_FUNCTION_29_30();
      lpta_rpta_loadp(v32, v33, v34);
      OUTLINED_FUNCTION_56_17();
      insert_2ptv();
      if (!v35)
      {
        break;
      }

      v36 = *(a1 + 104);
      if (v36)
      {
        v37 = OUTLINED_FUNCTION_53_17(v36);
      }

      else
      {
        v38 = OUTLINED_FUNCTION_48_17();
        v37 = vback(v38, v39);
      }

      if (v37 != 1)
      {
        goto LABEL_10;
      }
    }

    vretproc(a1);
    result = 0;
  }

  v41 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t assign_root_stress()
{
  OUTLINED_FUNCTION_21_34();
  v56 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_45_19(v1, v2, v3, v4, v5, v6, v7, v8, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54);
  OUTLINED_FUNCTION_51_17();
  bzero(v55, v9);
  if (setjmp(v55) || (OUTLINED_FUNCTION_57_16(), ventproc(v0, v10, v11, v12, v13, v55)))
  {
    v14 = 94;
  }

  else
  {
    v17 = OUTLINED_FUNCTION_41_21();
    get_parm(v17, v18, v19, -6);
    v20 = OUTLINED_FUNCTION_34_27();
    get_parm(v20, v21, v22, -6);
    fence_46(v0, &_MergedGlobals_39);
    OUTLINED_FUNCTION_41_21();
    if (exceptional_stress_from_dict())
    {
      if (apply_spanish_stress(v0))
      {
        penult_one_two_longalt();
        if (v23)
        {
          if (final_one(v0))
          {
            if (penult_one(v0))
            {
              final_two();
              if (v24)
              {
                antepenult_one();
                if (v25)
                {
                  penult_two();
                  if (v26)
                  {
                    special_cases();
                    if (v27)
                    {
                      default_stress();
                    }
                  }
                }
              }
            }
          }
        }
      }

      OUTLINED_FUNCTION_72_12();
      two_stress_begin();
    }

    v14 = 0;
  }

  vretproc(v0);
  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t exceptional_stress_from_dict()
{
  OUTLINED_FUNCTION_21_34();
  v49 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_30_30();
  v47[0] = 0;
  OUTLINED_FUNCTION_52_17();
  bzero(&v46, v2);
  OUTLINED_FUNCTION_51_17();
  OUTLINED_FUNCTION_114_7(v3, v4);
  if (setjmp(v1))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_36_24();
  if (OUTLINED_FUNCTION_105_8(v5, v6, v7, v8, v9))
  {
    goto LABEL_3;
  }

  v12 = OUTLINED_FUNCTION_83_12();
  get_parm(v12, v13, v14, -6);
  v15 = OUTLINED_FUNCTION_59_16();
  get_parm(v15, v16, v17, -6);
  v18 = OUTLINED_FUNCTION_73_12();
  push_ptr_init(v18, v19);
  v20 = OUTLINED_FUNCTION_72_12();
  push_ptr_init(v20, v21);
  v47[0] = 65532;
  fence_46(v0, &_MergedGlobals_39);
  if (*(v0 + 5942) == 1)
  {
    v22 = OUTLINED_FUNCTION_37_23();
    starttest(v22, v23);
    if (!lpta_loadp_setscan_r(v0, v48) && !advance_tok(v0))
    {
      while (2)
      {
        OUTLINED_FUNCTION_77_12();
        v24 = OUTLINED_FUNCTION_67_15();
        savescptr(v24, v25, v26);
        if (advance_tok(v0))
        {
LABEL_10:
          v42 = *(v0 + 104);
          if (v42)
          {
            v43 = OUTLINED_FUNCTION_53_17(v42);
          }

          else
          {
            v43 = OUTLINED_FUNCTION_99_8();
          }

          if ((v43 - 1) <= 7)
          {
            OUTLINED_FUNCTION_91_10();
            switch(v44)
            {
              case 1:
                goto LABEL_9;
              case 2:
                continue;
              case 3:
                goto LABEL_8;
              case 4:
              case 5:
                goto LABEL_3;
              case 6:
                goto LABEL_16;
              case 7:
                goto LABEL_17;
              default:
                goto LABEL_15;
            }
          }

          goto LABEL_3;
        }

        break;
      }

LABEL_8:
      OUTLINED_FUNCTION_85_12();
      v27 = OUTLINED_FUNCTION_80_12();
      savescptr(v27, v28, v29);
    }

LABEL_9:
    v30 = OUTLINED_FUNCTION_23_34();
    starttest(v30, v31);
    v32 = OUTLINED_FUNCTION_11_42();
    move_i(v32, v33, v34);
    v35 = OUTLINED_FUNCTION_65_15();
    if (!insert_stressval(v35, v36, v37, v47, v38, v39, v40, v41))
    {
      goto LABEL_3;
    }

    goto LABEL_10;
  }

LABEL_15:
  OUTLINED_FUNCTION_12_41();
  multi_stress();
  if (v45)
  {
LABEL_16:
    OUTLINED_FUNCTION_12_41();
    if (except_stress1())
    {
LABEL_17:
      OUTLINED_FUNCTION_12_41();
      except_stress2();
    }
  }

LABEL_3:
  vretproc(v0);
  v10 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_98_9();
}

uint64_t apply_spanish_stress(uint64_t a1)
{
  v80 = *MEMORY[0x277D85DE8];
  HIDWORD(v68) = 0;
  v69 = 0;
  OUTLINED_FUNCTION_52_17();
  bzero(v67, v2);
  OUTLINED_FUNCTION_51_17();
  bzero(v79, v3);
  v4 = setjmp(v79);
  if (v4 || OUTLINED_FUNCTION_113_7(v4, v67, v5, v6, v7, v8, v9, v10, v66, v67[0], v67[1], v67[2], v67[3], v67[4], v67[5], v67[6], v67[7], v67[8], v67[9], v67[10], v67[11], v67[12], v67[13], v67[14], v67[15], v67[16], v67[17], v67[18], v67[19], v67[20], v67[21], v67[22], v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79[0]))
  {
    goto LABEL_3;
  }

  HIDWORD(v68) = 65532;
  v69 = 65532;
  fence_46(a1, &_MergedGlobals_39);
  v14 = OUTLINED_FUNCTION_81_12();
  starttest(v14, v15);
  v16 = OUTLINED_FUNCTION_22_34();
  if (!lpta_loadp_setscan_l(v16, v17))
  {
    v42 = OUTLINED_FUNCTION_81_12();
    bspush_ca_scan(v42, v43);
    OUTLINED_FUNCTION_38_22();
    goto LABEL_31;
  }

LABEL_6:
  v18 = *(a1 + 5290);
  OUTLINED_FUNCTION_118_7();
  if (!v19)
  {
LABEL_3:
    v11 = 94;
  }

  else
  {
    v20 = OUTLINED_FUNCTION_37_23();
    starttest(v20, v21);
    v22 = OUTLINED_FUNCTION_8_43();
    if (lpta_loadp_setscan_l(v22, v23) || (OUTLINED_FUNCTION_5_44(), test_string_s()))
    {
LABEL_10:
      v24 = OUTLINED_FUNCTION_37_23();
      starttest(v24, v25);
      v26 = OUTLINED_FUNCTION_8_43();
      if (lpta_loadp_setscan_l(v26, v27))
      {
LABEL_38:
        apply_longalt_final_two_opt(a1);
      }

      else
      {
        v28 = OUTLINED_FUNCTION_37_23();
        bspush_ca_scan(v28, v29);
LABEL_12:
        v30 = OUTLINED_FUNCTION_37_23();
        bspush_ca_scan(v30, v31);
LABEL_13:
        OUTLINED_FUNCTION_2_46();
        if (test_string_s())
        {
          goto LABEL_18;
        }

LABEL_14:
        OUTLINED_FUNCTION_2_46();
        if (test_string_s())
        {
          goto LABEL_18;
        }

        v32 = OUTLINED_FUNCTION_37_23();
        starttest(v32, v33);
        v34 = OUTLINED_FUNCTION_11_42();
        move_i(v34, v35, v36);
        for (i = OUTLINED_FUNCTION_18_37(); ; i = OUTLINED_FUNCTION_20_35())
        {
          move_i(i, v38, v39);
          OUTLINED_FUNCTION_32_28();
          apply_long_alternation();
          if (!v57)
          {
            break;
          }

          do
          {
LABEL_18:
            while (2)
            {
              v44 = *(a1 + 104);
              if (v44)
              {
                v45 = OUTLINED_FUNCTION_53_17(v44);
              }

              else
              {
                v45 = OUTLINED_FUNCTION_99_8();
              }

              switch(v45)
              {
                case 1:
                  goto LABEL_6;
                case 2:
                  v50 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v50, v51);
                  OUTLINED_FUNCTION_4_44();
                  break;
                case 3:
                  goto LABEL_32;
                case 4:
                  v46 = OUTLINED_FUNCTION_23_34();
                  bspush_ca_scan(v46, v47);
                  goto LABEL_23;
                case 5:
LABEL_23:
                  OUTLINED_FUNCTION_2_46();
                  if (!test_string_s())
                  {
                    goto LABEL_24;
                  }

                  continue;
                case 6:
LABEL_24:
                  v48 = OUTLINED_FUNCTION_28_30();
                  bspush_ca_scan(v48, v49);
                  goto LABEL_25;
                case 7:
LABEL_25:
                  OUTLINED_FUNCTION_2_46();
                  if (!test_string_s())
                  {
                    goto LABEL_29;
                  }

                  continue;
                case 8:
LABEL_29:
                  OUTLINED_FUNCTION_2_46();
                  break;
                case 9:
                case 10:
                case 15:
                case 16:
                case 22:
                  goto LABEL_39;
                case 12:
                  goto LABEL_10;
                case 13:
                  goto LABEL_35;
                case 14:
                  goto LABEL_36;
                case 17:
                  goto LABEL_38;
                case 18:
                  OUTLINED_FUNCTION_2_46();
                  if (!test_string_s())
                  {
                    goto LABEL_12;
                  }

                  continue;
                case 19:
                  goto LABEL_12;
                case 20:
                  goto LABEL_13;
                case 21:
                  goto LABEL_14;
                default:
                  goto LABEL_3;
              }

              break;
            }

LABEL_31:
            ;
          }

          while (test_string_s());
LABEL_32:
          v52 = OUTLINED_FUNCTION_37_23();
          starttest(v52, v53);
          v54 = OUTLINED_FUNCTION_11_42();
          move_i(v54, v55, v56);
        }
      }

LABEL_39:
      v11 = 0;
    }

    else
    {
      v40 = OUTLINED_FUNCTION_37_23();
      bspush_ca_scan(v40, v41);
LABEL_35:
      OUTLINED_FUNCTION_2_46();
      if (test_string_s())
      {
        goto LABEL_18;
      }

LABEL_36:
      v58 = OUTLINED_FUNCTION_37_23();
      starttest(v58, v59);
      v60 = OUTLINED_FUNCTION_20_35();
      move_i(v60, v61, v62);
      v11 = 0;
      v63 = OUTLINED_FUNCTION_49_17();
      move_i(v63, v64, 0);
      OUTLINED_FUNCTION_29_30();
      apply_long_alternation();
      if (v65)
      {
        goto LABEL_18;
      }
    }
  }

  vretproc(a1);
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

void penult_one_two_longalt()
{
  OUTLINED_FUNCTION_88_11();
  v1 = v0;
  v48 = *MEMORY[0x277D85DE8];
  v42 = 0;
  v43 = 0;
  OUTLINED_FUNCTION_52_17();
  bzero(v41, v2);
  OUTLINED_FUNCTION_51_17();
  bzero(v47, v3);
  if (!setjmp(v47) && !ventproc(v1, v41, v46, v45, v44, v47))
  {
    v42 = 65532;
    v43 = 65532;
    fence_46(v1, &_MergedGlobals_39);
    if (*(v1 + 4002) >= 4)
    {
      while (2)
      {
        v4 = OUTLINED_FUNCTION_92_10();
        starttest(v4, v5);
        v6 = OUTLINED_FUNCTION_8_43();
        if (lpta_loadp_setscan_l(v6, v7) || (OUTLINED_FUNCTION_5_44(), test_string_s()))
        {
LABEL_6:
          v8 = OUTLINED_FUNCTION_94_9();
          starttest(v8, v9);
          if (*(v1 + 4002) < 5 || (v10 = OUTLINED_FUNCTION_8_43(), lpta_loadp_setscan_l(v10, v11)) || (OUTLINED_FUNCTION_38_22(), test_string_s()))
          {
LABEL_9:
            v12 = OUTLINED_FUNCTION_102_8();
            starttest(v12, v13);
            if (*(v1 + 4002) < 5)
            {
              break;
            }

            v14 = OUTLINED_FUNCTION_8_43();
            if (lpta_loadp_setscan_l(v14, v15))
            {
              break;
            }

            OUTLINED_FUNCTION_17_38();
            if (test_string_s())
            {
              break;
            }

            v16 = OUTLINED_FUNCTION_93_9();
            bspush_ca_scan(v16, v17);
            OUTLINED_FUNCTION_3_45();
LABEL_29:
            if (!test_string_s())
            {
LABEL_30:
              v37 = OUTLINED_FUNCTION_86_11();
              starttest(v37, v38);
              move_i(v1, &v42, 1);
              move_i(v1, &v43, 1);
              OUTLINED_FUNCTION_34_27();
              apply_long_alternation();
              if (!v39)
              {
                break;
              }
            }
          }

          else
          {
            v18 = OUTLINED_FUNCTION_37_23();
            bspush_ca_scan(v18, v19);
            OUTLINED_FUNCTION_2_46();
LABEL_23:
            if (!test_string_s())
            {
LABEL_24:
              v30 = OUTLINED_FUNCTION_82_12();
              starttest(v30, v31);
              move_i(v1, &v43, 2);
              move_i(v1, &v42, 0);
              OUTLINED_FUNCTION_42_21();
              apply_long_alternation();
              if (!v32)
              {
                break;
              }
            }
          }
        }

        else
        {
          v20 = OUTLINED_FUNCTION_0_47();
          if (!testFldeq(v20, v21, v22, v23) && !advance_tok(v1))
          {
            v24 = OUTLINED_FUNCTION_0_47();
            if (!testFldeq(v24, v25, v26, v27) && !advance_tok(v1))
            {
              apply_longalt_final_two_opt(v1);
              break;
            }
          }
        }

        v28 = *(v1 + 104);
        if (v28)
        {
          v29 = OUTLINED_FUNCTION_53_17(v28);
        }

        else
        {
          v29 = OUTLINED_FUNCTION_99_8();
        }

        switch(v29)
        {
          case 1:
            continue;
          case 2:
            goto LABEL_6;
          case 5:
            goto LABEL_9;
          case 6:
            OUTLINED_FUNCTION_2_46();
            goto LABEL_23;
          case 7:
            goto LABEL_24;
          case 10:
            v35 = OUTLINED_FUNCTION_66_15();
            bspush_ca_scan(v35, v36);
            OUTLINED_FUNCTION_5_44();
            goto LABEL_29;
          case 11:
            goto LABEL_30;
          case 12:
            v33 = OUTLINED_FUNCTION_100_8();
            bspush_ca_scan(v33, v34);
            OUTLINED_FUNCTION_5_44();
            goto LABEL_29;
          case 13:
            OUTLINED_FUNCTION_3_45();
            goto LABEL_29;
          default:
            goto LABEL_31;
        }
      }
    }
  }

LABEL_31:
  vretproc(v1);
  v40 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_87_11();
}

uint64_t final_one(uint64_t a1)
{
  v523 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_30_30();
  v517[23] = 0;
  OUTLINED_FUNCTION_52_17();
  bzero(v517, v2);
  OUTLINED_FUNCTION_51_17();
  bzero(v522, v3);
  if (!setjmp(v522))
  {
    OUTLINED_FUNCTION_36_24();
    if (!ventproc(a1, v4, v5, v6, v7, v522))
    {
      push_ptr_init(a1, v521);
      v10 = OUTLINED_FUNCTION_75_12();
      push_ptr_init(v10, v11);
      v12 = OUTLINED_FUNCTION_73_12();
      push_ptr_init(v12, v13);
      v518 = 65532;
      v519 = 65532;
      v14 = OUTLINED_FUNCTION_112_7();
      push_ptr_init(v14, v15);
      fence_46(a1, &_MergedGlobals_39);
      v16 = OUTLINED_FUNCTION_55_17();
      lpta_rpta_loadp(v16, v17, v18);
      v19 = OUTLINED_FUNCTION_38_22();
      v21 = setd_lookup(v19, v20, 477);
      v22 = 0;
      v23 = 0;
      v24 = 0;
      if (!v21)
      {
LABEL_7:
        while (2)
        {
          v34 = v24;
          v35 = OUTLINED_FUNCTION_37_23();
          starttest(v35, v36);
          v37 = OUTLINED_FUNCTION_39_22();
          v39 = lpta_loadp_setscan_r(v37, v38);
          v40 = 10;
          if (v39)
          {
            goto LABEL_8;
          }

          v66 = OUTLINED_FUNCTION_1_46();
          if (!testFldeq(v66, v67, v68, v69) && !advance_tok(a1))
          {
            v70 = OUTLINED_FUNCTION_1_46();
            if (!testFldeq(v70, v71, v72, v73) && !advance_tok(a1))
            {
              OUTLINED_FUNCTION_120_7();
              v40 = 10;
LABEL_8:
              v41 = v34;
LABEL_9:
              if (v40 == 10)
              {
                v42 = 10;
                if (*(a1 + 5294) == *(a1 + 6002) && *(a1 + 3998) == 4)
                {
                  v43 = OUTLINED_FUNCTION_37_23();
                  starttest(v43, v44);
                  v45 = OUTLINED_FUNCTION_11_42();
                  move_i(v45, v46, v47);
                  v48 = OUTLINED_FUNCTION_43_20();
                  move_i(v48, v49, v50);
                  OUTLINED_FUNCTION_32_28();
                  apply_long_alternation();
                  v32 = 10;
                  v33 = v41;
                  if (!v51)
                  {
LABEL_13:
                    v52 = OUTLINED_FUNCTION_58_16();
                    if (!lpta_loadp_setscan_r(v52, v53) && !advance_tok(a1))
                    {
LABEL_15:
                      v54 = OUTLINED_FUNCTION_111_7();
                      savescptr(v54, v55, v56);
                    }

                    goto LABEL_270;
                  }

                  goto LABEL_286;
                }

LABEL_263:
                v74 = v41;
                v448 = OUTLINED_FUNCTION_37_23();
                starttest(v448, v449);
                v450 = OUTLINED_FUNCTION_20_35();
                move_i(v450, v451, v452);
                v453 = OUTLINED_FUNCTION_49_17();
                move_i(v453, v454, 0);
                OUTLINED_FUNCTION_29_30();
                apply_strong_alternation();
                v32 = v42;
LABEL_264:
                v33 = v74;
                if (!v82)
                {
                  goto LABEL_3;
                }

                goto LABEL_286;
              }

              LODWORD(v42) = v40;
LABEL_18:
              if (v42 == 12)
              {
                v57 = OUTLINED_FUNCTION_37_23();
                starttest_e(v57, v58);
                v59 = OUTLINED_FUNCTION_11_42();
                move_i(v59, v60, v61);
                v62 = OUTLINED_FUNCTION_18_37();
                move_i(v62, v63, v64);
                OUTLINED_FUNCTION_32_28();
                apply_strong_alternation();
                v32 = 12;
                v33 = v41;
                if (!v65)
                {
                  goto LABEL_3;
                }

                goto LABEL_286;
              }

              v74 = v41;
LABEL_27:
              if (v42 == 20)
              {
                v75 = OUTLINED_FUNCTION_37_23();
                starttest_e(v75, v76);
                v77 = OUTLINED_FUNCTION_18_37();
                move_i(v77, v78, v79);
                v80 = OUTLINED_FUNCTION_49_17();
                move_i(v80, v81, 0);
                OUTLINED_FUNCTION_29_30();
                apply_strong_alternation();
                v32 = 20;
                goto LABEL_264;
              }

LABEL_268:
              if (v42)
              {
                goto LABEL_3;
              }

              v455 = OUTLINED_FUNCTION_37_23();
              starttest(v455, v456);
              v457 = OUTLINED_FUNCTION_11_42();
              move_i(v457, v458, v459);
              v460 = OUTLINED_FUNCTION_49_17();
              move_i(v460, v461, 0);
              OUTLINED_FUNCTION_42_21();
              apply_long_alternation();
              v32 = 0;
              v33 = v74;
              if (!v462)
              {
LABEL_270:
                zero_stress_syll();
                goto LABEL_3;
              }

LABEL_286:
              v42 = v32;
              v132 = v33;
LABEL_30:
              v83 = *(a1 + 104);
              if (v83)
              {
                v84 = OUTLINED_FUNCTION_53_17(v83);
                v23 = v85;
              }

              else
              {
                v84 = vback(a1, v132);
                v23 = 0;
              }

              v86 = v42;
              v87 = v42;
              v88 = v23;
              v89 = v42;
              v90 = v23;
              v91 = v42;
              v92 = v23;
              v93 = v42;
              v94 = v23;
              v95 = v23;
              v24 = v23;
              switch(v84)
              {
                case 1:
                  v22 = v42;
                  goto LABEL_5;
                case 2:
                case 5:
                case 9:
                case 29:
                case 48:
                case 113:
                case 122:
                case 135:
                case 158:
                case 160:
                  continue;
                case 3:
                  v22 = v42;
                  goto LABEL_276;
                case 4:
                  v101 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v101, v102);
                  goto LABEL_160;
                case 6:
                  v310 = OUTLINED_FUNCTION_28_30();
                  bspush_ca_scan(v310, v311);
                  OUTLINED_FUNCTION_5_44();
                  v312 = test_string_s();
                  v132 = v23;
                  if (v312)
                  {
                    goto LABEL_30;
                  }

                  v313 = OUTLINED_FUNCTION_27_31();
                  bspush_ca_scan(v313, v314);
                  goto LABEL_154;
                case 7:
                  v283 = OUTLINED_FUNCTION_26_32();
                  bspush_ca_scan(v283, v284);
                  OUTLINED_FUNCTION_5_44();
                  v285 = test_string_s();
                  v132 = v23;
                  if (v285)
                  {
                    goto LABEL_30;
                  }

                  v286 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v286, v287);
                  goto LABEL_140;
                case 8:
                case 136:
                  goto LABEL_154;
                case 10:
                  v172 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v172, v173);
                  OUTLINED_FUNCTION_4_44();
                  v174 = test_string_s();
                  v132 = v23;
                  if (v174)
                  {
                    goto LABEL_30;
                  }

                  v175 = OUTLINED_FUNCTION_1_46();
                  v179 = testFldeq(v175, v176, v177, v178);
                  v132 = v23;
                  if (v179)
                  {
                    goto LABEL_30;
                  }

                  OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan_boa();
                  v140 = OUTLINED_FUNCTION_15_40();
                  v143 = 3;
                  goto LABEL_217;
                case 11:
                  OUTLINED_FUNCTION_2_46();
                  v100 = test_string_s();
                  goto LABEL_89;
                case 12:
                  goto LABEL_140;
                case 13:
                case 123:
                  v246 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v246, v247);
                  goto LABEL_226;
                case 14:
                  bspop_boa(a1);
                  v194 = advance_tok(a1);
                  v132 = v23;
                  if (v194)
                  {
                    goto LABEL_30;
                  }

                  goto LABEL_154;
                case 15:
                  v294 = OUTLINED_FUNCTION_25_32();
                  bspush_ca_scan(v294, v295);
                  goto LABEL_160;
                case 16:
                  goto LABEL_160;
                case 17:
                  v447 = v42;
                  v446 = v23;
                  goto LABEL_279;
                case 18:
                  goto LABEL_292;
                case 19:
                  bspop_boa(a1);
                  v366 = OUTLINED_FUNCTION_37_23();
                  starttest(v366, v367);
                  v368 = OUTLINED_FUNCTION_44_20();
                  lpta_loadpn(v368, v369);
                  v370 = OUTLINED_FUNCTION_84_12();
                  rpta_loadpn(v370, v371);
                  if (compare_ptas(a1))
                  {
                    goto LABEL_197;
                  }

                  if (testneq(a1))
                  {
                    goto LABEL_197;
                  }

                  v372 = OUTLINED_FUNCTION_44_20();
                  if (lpta_loadp_setscan_r(v372, v373))
                  {
                    goto LABEL_197;
                  }

                  goto LABEL_129;
                case 20:
                case 22:
                  v362 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v362, v363);
                  OUTLINED_FUNCTION_5_44();
                  goto LABEL_213;
                case 21:
                  goto LABEL_293;
                case 23:
                  v170 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v170, v171);
                  goto LABEL_212;
                case 24:
LABEL_212:
                  OUTLINED_FUNCTION_2_46();
LABEL_213:
                  v396 = test_string_s();
                  v132 = v23;
                  if (v396)
                  {
                    goto LABEL_30;
                  }

                  v86 = v42;
                  goto LABEL_293;
                case 25:
LABEL_197:
                  v374 = OUTLINED_FUNCTION_37_23();
                  starttest(v374, v375);
                  v376 = OUTLINED_FUNCTION_39_22();
                  if (lpta_loadp_setscan_l(v376, v377))
                  {
                    goto LABEL_231;
                  }

                  v378 = OUTLINED_FUNCTION_0_47();
                  v382 = testFldeq(v378, v379, v380, v381);
                  v132 = v23;
                  if (v382)
                  {
                    goto LABEL_30;
                  }

                  v383 = advance_tok(a1);
                  v132 = v23;
                  if (v383)
                  {
                    goto LABEL_30;
                  }

                  v384 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v384, v385);
                  v186 = OUTLINED_FUNCTION_0_47();
LABEL_201:
                  v386 = testFldeq(v186, v187, v188, v189);
                  v132 = v23;
                  if (v386)
                  {
                    goto LABEL_30;
                  }

LABEL_202:
                  v387 = advance_tok(a1);
                  v132 = v23;
                  if (!v387)
                  {
                    goto LABEL_290;
                  }

                  goto LABEL_30;
                case 26:
                case 45:
                  bspop_boa(a1);
                  goto LABEL_3;
                case 27:
                case 46:
                  v96 = a1;
                  v97 = 3;
                  v98 = 1;
                  v99 = 4;
                  goto LABEL_133;
                case 28:
                case 47:
                  goto LABEL_134;
                case 30:
                  v186 = OUTLINED_FUNCTION_15_40();
                  v189 = 30;
                  goto LABEL_201;
                case 31:
                  goto LABEL_202;
                case 32:
                  v446 = v23;
                  goto LABEL_280;
                case 33:
                  v391 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v391, v392);
                  OUTLINED_FUNCTION_5_44();
                  v393 = test_string_s();
                  v132 = v23;
                  if (v393)
                  {
                    goto LABEL_30;
                  }

                  goto LABEL_208;
                case 34:
                case 37:
                  goto LABEL_288;
                case 35:
                  v327 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v327, v328);
                  v329 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v329, v330);
                  goto LABEL_162;
                case 36:
LABEL_208:
                  v394 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v394, v395);
                  goto LABEL_209;
                case 38:
LABEL_209:
                  OUTLINED_FUNCTION_2_46();
                  v348 = test_string_s();
                  goto LABEL_210;
                case 39:
                  OUTLINED_FUNCTION_5_44();
                  v342 = test_string_s();
                  v132 = v23;
                  if (v342)
                  {
                    goto LABEL_30;
                  }

                  v343 = OUTLINED_FUNCTION_1_46();
                  v347 = testFldeq(v343, v344, v345, v346);
                  v132 = v23;
                  if (v347)
                  {
                    goto LABEL_30;
                  }

                  v348 = advance_tok(a1);
LABEL_210:
                  v132 = v23;
                  if (!v348)
                  {
                    goto LABEL_260;
                  }

                  goto LABEL_30;
                case 40:
                  OUTLINED_FUNCTION_2_46();
                  v199 = test_string_s();
                  v132 = v23;
                  if (v199)
                  {
                    goto LABEL_30;
                  }

                  goto LABEL_162;
                case 41:
LABEL_162:
                  savescptr(a1, 41, v520);
                  OUTLINED_FUNCTION_5_44();
                  v331 = test_string_s();
                  v132 = v23;
                  if (!v331)
                  {
                    goto LABEL_163;
                  }

                  goto LABEL_30;
                case 42:
                  bspop_boa(a1);
LABEL_260:
                  v87 = v42;
                  v88 = v23;
                  goto LABEL_288;
                case 43:
                  goto LABEL_291;
                case 44:
                  bspop_boa(a1);
                  v271 = OUTLINED_FUNCTION_44_20();
                  v273 = lpta_loadp_setscan_r(v271, v272);
                  v132 = v23;
                  if (v273)
                  {
                    goto LABEL_30;
                  }

LABEL_129:
                  OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan_boa();
                  v274 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v274, v275);
                  v96 = a1;
                  v97 = 3;
                  v98 = 1;
                  goto LABEL_132;
                case 49:
                  goto LABEL_283;
                case 50:
                  v105 = OUTLINED_FUNCTION_37_23();
                  starttest(v105, v106);
                  v107 = OUTLINED_FUNCTION_8_43();
                  if (lpta_loadp_setscan_l(v107, v108))
                  {
                    goto LABEL_40;
                  }

                  v404 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v404, v405);
                  OUTLINED_FUNCTION_2_46();
                  v406 = test_string_s();
                  v132 = v23;
                  if (v406)
                  {
                    goto LABEL_30;
                  }

                  v407 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v407, v408);
                  v409 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v409, v410);
                  goto LABEL_135;
                case 51:
                  v132 = v23;
                  if (*(a1 + 5294) != *(a1 + 6002))
                  {
                    goto LABEL_30;
                  }

                  OUTLINED_FUNCTION_37_23();
                  bspush_ca_boa();
                  v214 = OUTLINED_FUNCTION_8_43();
                  v216 = lpta_loadp_setscan_l(v214, v215);
                  v132 = v23;
                  if (v216)
                  {
                    goto LABEL_30;
                  }

                  OUTLINED_FUNCTION_4_44();
                  v217 = test_string_s();
                  v132 = v23;
                  if (v217)
                  {
                    goto LABEL_30;
                  }

                  goto LABEL_94;
                case 52:
                  v333 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v333, v334);
                  OUTLINED_FUNCTION_2_46();
                  v335 = test_string_s();
                  v132 = v23;
                  if (v335)
                  {
                    goto LABEL_30;
                  }

                  goto LABEL_167;
                case 53:
                  v388 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v388, v389);
                  goto LABEL_205;
                case 54:
                  goto LABEL_297;
                case 55:
LABEL_205:
                  OUTLINED_FUNCTION_4_44();
                  v390 = test_string_s();
                  v132 = v23;
                  if (!v390)
                  {
                    goto LABEL_297;
                  }

                  goto LABEL_30;
                case 56:
                case 95:
                case 96:
                case 98:
                  goto LABEL_237;
                case 57:
                  v323 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v323, v324);
                  v325 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v325, v326);
                  goto LABEL_181;
                case 58:
                case 61:
LABEL_167:
                  v336 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v336, v337);
                  goto LABEL_189;
                case 59:
                case 87:
                case 94:
                  goto LABEL_190;
                case 60:
                  savescptr(a1, 60, v521);
                  v357 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v357, v358);
                  goto LABEL_189;
                case 62:
LABEL_189:
                  OUTLINED_FUNCTION_4_44();
                  v365 = test_string_s();
                  v132 = v23;
                  if (!v365)
                  {
                    goto LABEL_190;
                  }

                  goto LABEL_30;
                case 63:
                  v234 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v234, v235);
                  v236 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v236, v237);
                  OUTLINED_FUNCTION_2_46();
                  goto LABEL_187;
                case 64:
                  v103 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v103, v104);
                  OUTLINED_FUNCTION_2_46();
                  goto LABEL_177;
                case 65:
                  goto LABEL_181;
                case 66:
                  OUTLINED_FUNCTION_4_44();
LABEL_177:
                  v356 = test_string_s();
                  v132 = v23;
                  if (!v356)
                  {
                    goto LABEL_181;
                  }

                  goto LABEL_30;
                case 67:
                case 76:
                  goto LABEL_180;
                case 68:
                  OUTLINED_FUNCTION_4_44();
LABEL_187:
                  v364 = test_string_s();
                  v132 = v23;
                  if (!v364)
                  {
                    goto LABEL_188;
                  }

                  goto LABEL_30;
                case 69:
                  goto LABEL_188;
                case 70:
                  v159 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v159, v160);
                  v161 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v161, v162);
                  goto LABEL_165;
                case 71:
                  v152 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v152, v153);
                  OUTLINED_FUNCTION_4_44();
                  v154 = test_string_s();
                  v132 = v23;
                  if (v154)
                  {
                    goto LABEL_30;
                  }

                  goto LABEL_183;
                case 72:
                  OUTLINED_FUNCTION_2_46();
                  v332 = test_string_s();
                  v132 = v23;
                  if (v332)
                  {
                    goto LABEL_30;
                  }

                  goto LABEL_165;
                case 73:
                case 97:
LABEL_165:
                  OUTLINED_FUNCTION_3_45();
                  goto LABEL_191;
                case 74:
                  v338 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v338, v339);
                  v340 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v340, v341);
                  goto LABEL_173;
                case 75:
                case 82:
                case 99:
                  bspop_boa(a1);
                  goto LABEL_236;
                case 77:
                  OUTLINED_FUNCTION_2_46();
                  v349 = test_string_s();
                  v132 = v23;
                  if (v349)
                  {
                    goto LABEL_30;
                  }

                  goto LABEL_173;
                case 78:
LABEL_173:
                  OUTLINED_FUNCTION_2_46();
                  v350 = test_string_s();
                  v132 = v23;
                  if (!v350)
                  {
                    v351 = OUTLINED_FUNCTION_1_46();
                    v355 = testFldeq(v351, v352, v353, v354);
                    v132 = v23;
                    if (!v355)
                    {
                      goto LABEL_175;
                    }
                  }

                  goto LABEL_30;
                case 79:
                  bspop_boa(a1);
                  OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan_boa();
                  v140 = OUTLINED_FUNCTION_15_40();
                  v143 = 4;
                  goto LABEL_217;
                case 80:
                  bspop_boa(a1);
                  v317 = advance_tok(a1);
                  v132 = v23;
                  if (v317)
                  {
                    goto LABEL_30;
                  }

                  v318 = OUTLINED_FUNCTION_1_46();
                  v322 = testFldeq(v318, v319, v320, v321);
                  v132 = v23;
                  if (v322)
                  {
                    goto LABEL_30;
                  }

LABEL_175:
                  OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan_boa();
                  v140 = OUTLINED_FUNCTION_15_40();
                  v143 = 1;
                  goto LABEL_217;
                case 81:
                  bspop_boa(a1);
                  v361 = advance_tok(a1);
                  v132 = v23;
                  if (v361)
                  {
                    goto LABEL_30;
                  }

LABEL_183:
                  OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan_boa();
                  OUTLINED_FUNCTION_4_44();
                  goto LABEL_184;
                case 83:
                  OUTLINED_FUNCTION_2_46();
                  v248 = test_string_s();
                  v132 = v23;
                  if (v248)
                  {
                    goto LABEL_30;
                  }

LABEL_180:
                  v359 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v359, v360);
LABEL_181:
                  OUTLINED_FUNCTION_5_44();
                  goto LABEL_191;
                case 84:
                  v190 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v190, v191);
                  v192 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v192, v193);
                  OUTLINED_FUNCTION_4_44();
                  goto LABEL_97;
                case 85:
                  v144 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v144, v145);
                  OUTLINED_FUNCTION_2_46();
                  v146 = test_string_s();
                  v132 = v23;
                  if (v146)
                  {
                    goto LABEL_30;
                  }

                  v147 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v147, v148);
                  OUTLINED_FUNCTION_2_46();
                  v149 = test_string_s();
                  v132 = v23;
                  if (v149)
                  {
                    goto LABEL_30;
                  }

                  v150 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v150, v151);
                  goto LABEL_190;
                case 86:
                  v155 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v155, v156);
                  v157 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v157, v158);
                  goto LABEL_95;
                case 88:
                  OUTLINED_FUNCTION_2_46();
                  v195 = test_string_s();
                  v132 = v23;
                  if (v195)
                  {
                    goto LABEL_30;
                  }

                  v196 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v196, v197);
                  goto LABEL_96;
                case 89:
LABEL_95:
                  OUTLINED_FUNCTION_2_46();
                  v220 = test_string_s();
                  v132 = v23;
                  if (!v220)
                  {
                    goto LABEL_96;
                  }

                  goto LABEL_30;
                case 90:
                case 91:
LABEL_96:
                  OUTLINED_FUNCTION_2_46();
LABEL_97:
                  v221 = test_string_s();
                  v132 = v23;
                  if (v221)
                  {
                    goto LABEL_30;
                  }

LABEL_190:
                  OUTLINED_FUNCTION_2_46();
LABEL_191:
                  v169 = test_string_s();
LABEL_192:
                  v132 = v23;
                  if (v169)
                  {
                    goto LABEL_30;
                  }

LABEL_236:
                  v89 = v42;
                  v90 = v23;
                  goto LABEL_237;
                case 92:
                  v315 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v315, v316);
LABEL_188:
                  OUTLINED_FUNCTION_4_44();
                  goto LABEL_191;
                case 93:
                  OUTLINED_FUNCTION_2_46();
                  v163 = test_string_s();
                  v132 = v23;
                  if (v163)
                  {
                    goto LABEL_30;
                  }

                  v164 = OUTLINED_FUNCTION_1_46();
                  v168 = testFldeq(v164, v165, v166, v167);
                  v132 = v23;
                  if (v168)
                  {
                    goto LABEL_30;
                  }

                  v169 = advance_tok(a1);
                  goto LABEL_192;
                case 100:
LABEL_94:
                  v218 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v218, v219);
                  goto LABEL_81;
                case 101:
                  goto LABEL_82;
                case 102:
LABEL_81:
                  OUTLINED_FUNCTION_2_46();
                  v200 = test_string_s();
                  v132 = v23;
                  if (!v200)
                  {
LABEL_82:
                    v132 = 1;
                  }

                  goto LABEL_30;
                case 103:
                  v421 = v42;
                  v419 = v23;
                  goto LABEL_240;
                case 104:
                case 107:
                  v419 = v23;
                  goto LABEL_252;
                case 105:
                  goto LABEL_311;
                case 106:
                  v180 = OUTLINED_FUNCTION_0_47();
                  v184 = testFldeq(v180, v181, v182, v183);
                  v132 = v23;
                  if (!v184)
                  {
                    v185 = advance_tok(a1);
                    v132 = v23;
                    if (!v185)
                    {
                      goto LABEL_311;
                    }
                  }

                  goto LABEL_30;
                case 108:
                  goto LABEL_241;
                case 109:
                  v296 = OUTLINED_FUNCTION_0_47();
                  v300 = testFldeq(v296, v297, v298, v299);
                  v132 = v23;
                  if (v300)
                  {
                    goto LABEL_30;
                  }

                  v301 = advance_tok(a1);
                  v132 = v23;
                  if (v301)
                  {
                    goto LABEL_30;
                  }

                  v91 = v42;
                  v92 = v23;
                  goto LABEL_241;
                case 110:
                  v202 = OUTLINED_FUNCTION_1_46();
                  v206 = testFldeq(v202, v203, v204, v205);
                  v132 = v23;
                  if (v206)
                  {
                    goto LABEL_30;
                  }

                  v207 = advance_tok(a1);
                  v132 = v23;
                  if (v207)
                  {
                    goto LABEL_30;
                  }

                  v208 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v208, v209);
                  v210 = OUTLINED_FUNCTION_1_46();
                  goto LABEL_149;
                case 111:
                  goto LABEL_242;
                case 112:
                  v302 = OUTLINED_FUNCTION_0_47();
                  v306 = testFldeq(v302, v303, v304, v305);
                  v132 = v23;
                  if (v306)
                  {
                    goto LABEL_30;
                  }

                  v307 = advance_tok(a1);
                  v132 = v23;
                  if (v307)
                  {
                    goto LABEL_30;
                  }

                  v210 = OUTLINED_FUNCTION_0_47();
LABEL_149:
                  v308 = testFldeq(v210, v211, v212, v213);
                  v132 = v23;
                  if (!v308)
                  {
                    v309 = advance_tok(a1);
                    v132 = v23;
                    if (!v309)
                    {
                      goto LABEL_242;
                    }
                  }

                  goto LABEL_30;
                case 114:
                  OUTLINED_FUNCTION_4_44();
                  v198 = test_string_s();
                  v132 = v23;
                  if (v198)
                  {
                    goto LABEL_30;
                  }

                  v93 = v42;
                  v94 = v23;
                  goto LABEL_305;
                case 115:
                  goto LABEL_305;
                case 116:
                  bspop_boa(a1);
                  v40 = 0;
                  goto LABEL_304;
                case 117:
                  v40 = v42;
                  goto LABEL_304;
                case 118:
LABEL_40:
                  v109 = OUTLINED_FUNCTION_37_23();
                  starttest(v109, v110);
                  v111 = OUTLINED_FUNCTION_8_43();
                  if (lpta_loadp_setscan_l(v111, v112))
                  {
                    goto LABEL_42;
                  }

                  OUTLINED_FUNCTION_2_46();
                  if (test_string_s())
                  {
                    goto LABEL_42;
                  }

                  v413 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v413, v414);
                  OUTLINED_FUNCTION_2_46();
                  v415 = test_string_s();
                  v132 = v23;
                  if (!v415)
                  {
                    goto LABEL_226;
                  }

                  goto LABEL_30;
                case 119:
                  v242 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v242, v243);
                  goto LABEL_112;
                case 120:
                  goto LABEL_136;
                case 121:
LABEL_135:
                  OUTLINED_FUNCTION_2_46();
                  v281 = test_string_s();
                  v132 = v23;
                  if (v281)
                  {
                    goto LABEL_30;
                  }

LABEL_136:
                  OUTLINED_FUNCTION_2_46();
                  v282 = test_string_s();
                  v132 = v23;
                  if (!v282)
                  {
                    goto LABEL_154;
                  }

                  goto LABEL_30;
                case 124:
LABEL_112:
                  OUTLINED_FUNCTION_17_38();
                  goto LABEL_227;
                case 125:
LABEL_42:
                  v113 = OUTLINED_FUNCTION_37_23();
                  starttest(v113, v114);
                  v115 = OUTLINED_FUNCTION_8_43();
                  if (lpta_loadp_setscan_l(v115, v116))
                  {
                    goto LABEL_44;
                  }

                  OUTLINED_FUNCTION_5_44();
                  if (test_string_s())
                  {
                    goto LABEL_44;
                  }

                  v411 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v411, v412);
                  goto LABEL_224;
                case 126:
LABEL_226:
                  OUTLINED_FUNCTION_5_44();
                  goto LABEL_227;
                case 127:
LABEL_44:
                  v117 = OUTLINED_FUNCTION_37_23();
                  starttest(v117, v118);
                  v119 = OUTLINED_FUNCTION_8_43();
                  if (lpta_loadp_setscan_l(v119, v120))
                  {
                    goto LABEL_45;
                  }

                  goto LABEL_50;
                case 128:
                  OUTLINED_FUNCTION_2_46();
                  v201 = test_string_s();
                  v132 = v23;
                  if (v201)
                  {
                    goto LABEL_30;
                  }

                  goto LABEL_224;
                case 129:
LABEL_224:
                  OUTLINED_FUNCTION_4_44();
                  goto LABEL_227;
                case 130:
LABEL_45:
                  v121 = OUTLINED_FUNCTION_37_23();
                  starttest(v121, v122);
                  v123 = OUTLINED_FUNCTION_8_43();
                  if (lpta_loadp_setscan_l(v123, v124))
                  {
                    goto LABEL_47;
                  }

                  OUTLINED_FUNCTION_4_44();
                  if (test_string_s())
                  {
                    goto LABEL_47;
                  }

                  v397 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v397, v398);
                  v399 = OUTLINED_FUNCTION_0_47();
                  v403 = testFldeq(v399, v400, v401, v402);
                  v132 = v23;
                  if (v403)
                  {
                    goto LABEL_30;
                  }

                  OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan_boa();
                  v140 = OUTLINED_FUNCTION_15_40();
                  v143 = 19;
LABEL_217:
                  v280 = testFldeq(v140, v141, v142, v143);
                  goto LABEL_218;
                case 131:
LABEL_50:
                  v133 = OUTLINED_FUNCTION_67_15();
                  savescptr(v133, v134, v135);
                  OUTLINED_FUNCTION_4_44();
                  v136 = test_string_s();
                  v132 = v23;
                  if (v136)
                  {
                    goto LABEL_30;
                  }

                  v137 = OUTLINED_FUNCTION_39_22();
                  v139 = lpta_loadp_setscan_r(v137, v138);
                  v132 = v23;
                  if (v139)
                  {
                    goto LABEL_30;
                  }

LABEL_160:
                  OUTLINED_FUNCTION_3_45();
                  goto LABEL_227;
                case 132:
LABEL_47:
                  v125 = OUTLINED_FUNCTION_37_23();
                  starttest(v125, v126);
                  v127 = OUTLINED_FUNCTION_8_43();
                  if (lpta_loadp_setscan_l(v127, v128))
                  {
                    goto LABEL_232;
                  }

                  v129 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v129, v130);
                  OUTLINED_FUNCTION_5_44();
                  v131 = test_string_s();
                  v132 = v23;
                  if (v131)
                  {
                    goto LABEL_30;
                  }

LABEL_163:
                  OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan_boa();
                  OUTLINED_FUNCTION_2_46();
LABEL_184:
                  v280 = test_string_s();
                  goto LABEL_218;
                case 133:
                  v222 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v222, v223);
LABEL_154:
                  OUTLINED_FUNCTION_2_46();
LABEL_227:
                  v293 = test_string_s();
                  goto LABEL_228;
                case 134:
                  bspop_boa(a1);
                  v100 = advance_tok(a1);
LABEL_89:
                  v132 = v23;
                  if (v100)
                  {
                    goto LABEL_30;
                  }

LABEL_140:
                  v288 = OUTLINED_FUNCTION_0_47();
                  v292 = testFldeq(v288, v289, v290, v291);
                  v132 = v23;
                  if (v292)
                  {
                    goto LABEL_30;
                  }

                  v293 = advance_tok(a1);
LABEL_228:
                  v132 = v23;
                  if (v293)
                  {
                    goto LABEL_30;
                  }

LABEL_231:
                  v24 = v23;
                  continue;
                case 137:
LABEL_232:
                  v416 = OUTLINED_FUNCTION_8_43();
                  if (lpta_loadp_setscan_l(v416, v417))
                  {
                    goto LABEL_3;
                  }

                  OUTLINED_FUNCTION_3_45();
                  if (test_string_s())
                  {
                    goto LABEL_3;
                  }

                  v40 = 12;
                  v418 = *(a1 + 3998);
                  goto LABEL_248;
                case 138:
                  v231 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v231, v232);
                  OUTLINED_FUNCTION_5_44();
                  v233 = test_string_s();
                  v132 = v23;
                  if (v233)
                  {
                    goto LABEL_30;
                  }

                  goto LABEL_117;
                case 139:
                case 150:
                  bspop_boa(a1);
                  goto LABEL_120;
                case 140:
                case 143:
                  goto LABEL_120;
                case 141:
                  v276 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v276, v277);
                  OUTLINED_FUNCTION_4_44();
                  v278 = test_string_s();
                  v132 = v23;
                  if (v278)
                  {
                    goto LABEL_30;
                  }

                  OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan_boa();
                  v96 = OUTLINED_FUNCTION_3_45();
LABEL_132:
                  v99 = 1;
LABEL_133:
                  v279 = testFldeq(v96, v97, v98, v99);
                  v132 = v23;
                  if (v279)
                  {
                    goto LABEL_30;
                  }

LABEL_134:
                  v280 = advance_tok(a1);
LABEL_218:
                  if (v280)
                  {
                    v132 = v23;
                  }

                  else
                  {
                    v132 = 1;
                  }

                  goto LABEL_30;
                case 142:
                case 144:
                case 145:
                case 147:
LABEL_117:
                  v249 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v249, v250);
                  goto LABEL_118;
                case 146:
                  v244 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v244, v245);
                  OUTLINED_FUNCTION_4_44();
                  goto LABEL_119;
                case 148:
LABEL_118:
                  OUTLINED_FUNCTION_2_46();
                  goto LABEL_119;
                case 149:
                  OUTLINED_FUNCTION_3_45();
LABEL_119:
                  v251 = test_string_s();
                  v132 = v23;
                  if (v251)
                  {
                    goto LABEL_30;
                  }

LABEL_120:
                  v252 = *(a1 + 3998);
                  if (v252 != 2)
                  {
                    goto LABEL_247;
                  }

                  v253 = OUTLINED_FUNCTION_37_23();
                  starttest(v253, v254);
                  v255 = OUTLINED_FUNCTION_39_22();
                  if (lpta_loadp_setscan_r(v255, v256))
                  {
                    goto LABEL_246;
                  }

LABEL_122:
                  v257 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v257, v258);
                  v259 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v259, v260);
                  v238 = OUTLINED_FUNCTION_1_46();
LABEL_123:
                  v261 = testFldeq(v238, v239, v240, v241);
                  v132 = v23;
                  if (v261)
                  {
                    goto LABEL_30;
                  }

LABEL_124:
                  v262 = advance_tok(a1);
                  v132 = v23;
                  if (v262)
                  {
                    goto LABEL_30;
                  }

                  v263 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v263, v264);
                  v265 = advance_tok(a1);
                  v132 = v23;
                  if (v265)
                  {
                    goto LABEL_30;
                  }

                  v266 = OUTLINED_FUNCTION_0_47();
                  v270 = testFldeq(v266, v267, v268, v269);
                  v132 = v23;
                  if (v270)
                  {
                    goto LABEL_30;
                  }

                  v230 = advance_tok(a1);
LABEL_104:
                  v132 = v23;
                  if (v230)
                  {
                    goto LABEL_30;
                  }

LABEL_245:
                  OUTLINED_FUNCTION_120_7();
LABEL_246:
                  LOWORD(v252) = *(a1 + 3998);
LABEL_247:
                  v418 = v252;
                  v40 = 20;
LABEL_248:
                  v24 = v23;
                  v41 = v23;
                  if (v418 >= 3)
                  {
                    goto LABEL_9;
                  }

                  continue;
                case 151:
                  goto LABEL_246;
                case 152:
                  goto LABEL_122;
                case 153:
                  v224 = OUTLINED_FUNCTION_0_47();
                  v228 = testFldeq(v224, v225, v226, v227);
                  v132 = v23;
                  if (v228)
                  {
                    goto LABEL_30;
                  }

                  v229 = advance_tok(a1);
                  v132 = v23;
                  if (v229)
                  {
                    goto LABEL_30;
                  }

                  goto LABEL_122;
                case 154:
                  v238 = OUTLINED_FUNCTION_15_40();
                  v241 = 30;
                  goto LABEL_123;
                case 155:
                  goto LABEL_124;
                case 156:
                  OUTLINED_FUNCTION_2_46();
                  v230 = test_string_s();
                  goto LABEL_104;
                case 157:
                  goto LABEL_245;
                case 161:
                  v40 = 10;
LABEL_304:
                  v41 = v23;
                  goto LABEL_9;
                case 162:
                  v41 = v23;
                  goto LABEL_18;
                case 163:
                  v41 = v23;
                  goto LABEL_263;
                case 164:
                  goto LABEL_13;
                case 165:
                case 174:
                  goto LABEL_270;
                case 166:
                  goto LABEL_15;
                case 170:
                  v74 = v23;
                  goto LABEL_27;
                case 172:
                  v74 = v23;
                  goto LABEL_268;
                default:
                  goto LABEL_3;
              }
            }
          }

          break;
        }

LABEL_285:
        OUTLINED_FUNCTION_96_9();
        goto LABEL_286;
      }

LABEL_5:
      v25 = OUTLINED_FUNCTION_37_23();
      starttest(v25, v26);
      v27 = OUTLINED_FUNCTION_8_43();
      if (!lpta_loadp_setscan_l(v27, v28))
      {
        v29 = OUTLINED_FUNCTION_81_12();
        bspush_ca_scan(v29, v30);
        OUTLINED_FUNCTION_38_22();
        v31 = test_string_s();
        v32 = v22;
        v33 = v23;
        v24 = v23;
        if (v31)
        {
          goto LABEL_286;
        }

        goto LABEL_7;
      }

LABEL_276:
      v446 = v23;
      v463 = OUTLINED_FUNCTION_37_23();
      starttest(v463, v464);
      v465 = OUTLINED_FUNCTION_8_43();
      if (lpta_loadp_setscan_l(v465, v466))
      {
        v447 = v22;
      }

      else
      {
        OUTLINED_FUNCTION_5_44();
        v467 = test_string_s();
        v447 = v22;
        if (!v467)
        {
LABEL_292:
          savescptr(a1, 18, v521);
          OUTLINED_FUNCTION_37_23();
          bspush_ca_scan_boa();
          v492 = OUTLINED_FUNCTION_37_23();
          bspush_ca_scan(v492, v493);
          OUTLINED_FUNCTION_4_44();
          test_string_s();
          OUTLINED_FUNCTION_96_9();
          if (!v494)
          {
LABEL_293:
            v33 = 1;
            v32 = v86;
          }

          goto LABEL_286;
        }
      }

LABEL_279:
      v468 = v447;
      v469 = OUTLINED_FUNCTION_37_23();
      starttest(v469, v470);
      v471 = OUTLINED_FUNCTION_8_43();
      if (!lpta_loadp_setscan_l(v471, v472))
      {
        v484 = OUTLINED_FUNCTION_37_23();
        bspush_ca_scan(v484, v485);
        OUTLINED_FUNCTION_5_44();
        test_string_s();
        v87 = v468;
        OUTLINED_FUNCTION_96_9();
        if (v486)
        {
          goto LABEL_286;
        }

LABEL_288:
        v23 = v88;
        v487 = OUTLINED_FUNCTION_37_23();
        starttest(v487, v488);
        *(a1 + 136) = 1;
        v489 = OUTLINED_FUNCTION_7_43();
        if (!setscan_nof_r(v489))
        {
          *(a1 + 136) = 1;
          v490 = *(a1 + 1664);
          v491 = OUTLINED_FUNCTION_7_43();
          if (!test_ptr(v491))
          {
            OUTLINED_FUNCTION_37_23();
            bspush_ca_scan_boa();
            OUTLINED_FUNCTION_76_12();
            v499 = *(a1 + 1344);
            v500 = OUTLINED_FUNCTION_7_43();
            if (test_ptr(v500))
            {
              v33 = v23;
            }

            else
            {
              v33 = 1;
            }

            v32 = v87;
            goto LABEL_286;
          }
        }

LABEL_290:
        v95 = v23;
        goto LABEL_291;
      }

LABEL_280:
      v473 = *(a1 + 5294);
      OUTLINED_FUNCTION_118_7();
      if (v474)
      {
        v475 = OUTLINED_FUNCTION_8_43();
        if (!lpta_loadp_setscan_l(v475, v476))
        {
          OUTLINED_FUNCTION_4_44();
          v95 = v446;
          if (!test_string_s())
          {
LABEL_291:
            OUTLINED_FUNCTION_120_7();
            v24 = v95;
            goto LABEL_7;
          }
        }
      }

LABEL_283:
      v477 = OUTLINED_FUNCTION_37_23();
      starttest(v477, v478);
      v479 = OUTLINED_FUNCTION_37_23();
      bspush_ca(v479);
      v480 = OUTLINED_FUNCTION_8_43();
      if (lpta_loadp_setscan_l(v480, v481))
      {
        goto LABEL_285;
      }

      v482 = OUTLINED_FUNCTION_37_23();
      bspush_ca_scan(v482, v483);
      OUTLINED_FUNCTION_2_46();
      if (test_string_s())
      {
        goto LABEL_285;
      }

      v495 = OUTLINED_FUNCTION_37_23();
      bspush_ca_scan(v495, v496);
      OUTLINED_FUNCTION_4_44();
      test_string_s();
      OUTLINED_FUNCTION_96_9();
      if (v497)
      {
        goto LABEL_286;
      }

LABEL_297:
      OUTLINED_FUNCTION_2_46();
      test_string_s();
      OUTLINED_FUNCTION_96_9();
      if (v498)
      {
        goto LABEL_286;
      }

LABEL_237:
      v419 = v90;
      v420 = v89;
      lpta_loadpn(a1, v521);
      rpta_loadpn(a1, a1 + 3536);
      if (compare_ptas(a1) || testneq(a1))
      {
        v421 = v420;
LABEL_240:
        v422 = v421;
        v423 = OUTLINED_FUNCTION_37_23();
        starttest(v423, v424);
        v425 = OUTLINED_FUNCTION_39_22();
        v427 = lpta_loadp_setscan_r(v425, v426);
        v91 = v422;
        v92 = v419;
        if (v427)
        {
          goto LABEL_252;
        }

LABEL_241:
        v428 = v91;
        v429 = OUTLINED_FUNCTION_37_23();
        bspush_ca_scan(v429, v430);
        v431 = OUTLINED_FUNCTION_37_23();
        bspush_ca_scan(v431, v432);
        OUTLINED_FUNCTION_2_46();
        v433 = test_string_s();
        v32 = v428;
        v33 = v92;
        if (v433)
        {
          goto LABEL_286;
        }
      }

      else
      {
        v435 = OUTLINED_FUNCTION_37_23();
        starttest_l(v435, v436);
        v437 = OUTLINED_FUNCTION_39_22();
        if (lpta_loadp_setscan_r(v437, v438))
        {
LABEL_252:
          *(a1 + 6002) = *(a1 + 5294);
          v439 = OUTLINED_FUNCTION_37_23();
          starttest(v439, v440);
          if (*(a1 + 3998) >= 3)
          {
            v441 = OUTLINED_FUNCTION_39_22();
            if (!lpta_loadp_setscan_r(v441, v442))
            {
              v443 = OUTLINED_FUNCTION_37_23();
              bspush_ca_scan(v443, v444);
              OUTLINED_FUNCTION_4_44();
              test_string_s();
              v94 = v419;
              OUTLINED_FUNCTION_96_9();
              if (!v445)
              {
LABEL_305:
                v501 = v93;
                OUTLINED_FUNCTION_37_23();
                bspush_ca_scan_boa();
                v502 = OUTLINED_FUNCTION_1_46();
                if (testFldeq(v502, v503, v504, v505))
                {
                  v32 = v501;
                  v33 = v94;
                }

                else
                {
                  if (advance_tok(a1))
                  {
                    v33 = v94;
                  }

                  else
                  {
                    v33 = 1;
                  }

                  v32 = v501;
                }
              }

              goto LABEL_286;
            }
          }

          v24 = v419;
          goto LABEL_7;
        }

LABEL_311:
        v506 = OUTLINED_FUNCTION_37_23();
        bspush_ca_scan(v506, v507);
        v508 = OUTLINED_FUNCTION_1_46();
        if (testFldeq(v508, v509, v510, v511))
        {
          goto LABEL_285;
        }

        if (advance_tok(a1))
        {
          goto LABEL_285;
        }

        v512 = OUTLINED_FUNCTION_1_46();
        if (testFldeq(v512, v513, v514, v515))
        {
          goto LABEL_285;
        }

        advance_tok(a1);
        OUTLINED_FUNCTION_96_9();
        if (v516)
        {
          goto LABEL_286;
        }
      }

LABEL_242:
      OUTLINED_FUNCTION_120_7();
      v419 = v434;
      goto LABEL_252;
    }
  }

LABEL_3:
  vretproc(a1);
  v8 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_98_9();
}

uint64_t penult_one(uint64_t a1)
{
  v286 = *MEMORY[0x277D85DE8];
  v274 = 0;
  v275 = 0;
  v272 = 0;
  v273 = 0;
  v271 = 0;
  OUTLINED_FUNCTION_52_17();
  bzero(v248, v2);
  OUTLINED_FUNCTION_51_17();
  bzero(v285, v3);
  v4 = setjmp(v285);
  if (v4 || OUTLINED_FUNCTION_69_13(v4, v5, v6, v7, v8, v9, v10, v11, v247, v248[0], v249, v250, v251, v252, v253, v254, v255, v256, v257, v258, v259, v260, v261, v262, v263, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284))
  {
    goto LABEL_3;
  }

  v15 = OUTLINED_FUNCTION_73_12();
  push_ptr_init(v15, v16);
  v17 = OUTLINED_FUNCTION_72_12();
  push_ptr_init(v17, v18);
  v271 = 0xFFFC0000FFFCLL;
  fence_46(a1, &_MergedGlobals_39);
  v19 = OUTLINED_FUNCTION_81_12();
  starttest(v19, v20);
  v21 = OUTLINED_FUNCTION_22_34();
  if (!lpta_loadp_setscan_l(v21, v22))
  {
    v24 = OUTLINED_FUNCTION_37_23();
    bspush_ca_scan(v24, v25);
    OUTLINED_FUNCTION_2_46();
    v26 = test_string_s();
    v23 = 0;
    v27 = 0;
    if (v26)
    {
      goto LABEL_146;
    }

LABEL_8:
    v23 = v27;
    OUTLINED_FUNCTION_5_44();
    v28 = v23;
    if (test_string_s())
    {
      goto LABEL_146;
    }

LABEL_9:
    OUTLINED_FUNCTION_85_12();
    v29 = OUTLINED_FUNCTION_59_16();
    savescptr(v29, v30, v31);
    v32 = OUTLINED_FUNCTION_42_21();
    lpta_loadpn(v32, v33);
    OUTLINED_FUNCTION_56_17();
    lpta_ctxtr();
    rpta_loadpn(a1, a1 + 4008);
    if (!compare_ptas(a1))
    {
      v34 = testeq(a1);
      v35 = v28;
      v23 = v28;
      if (v34)
      {
        goto LABEL_146;
      }

      goto LABEL_145;
    }

    goto LABEL_10;
  }

  v23 = 0;
  while (2)
  {
    v36 = OUTLINED_FUNCTION_37_23();
    starttest(v36, v37);
    v38 = OUTLINED_FUNCTION_8_43();
    if (!lpta_loadp_setscan_l(v38, v39))
    {
      v40 = OUTLINED_FUNCTION_28_30();
      bspush_ca_scan(v40, v41);
      v42 = OUTLINED_FUNCTION_27_31();
      bspush_ca_scan(v42, v43);
      OUTLINED_FUNCTION_2_46();
      v44 = test_string_s();
      v45 = v23;
      if (v44)
      {
        goto LABEL_146;
      }

LABEL_16:
      v23 = v45;
      OUTLINED_FUNCTION_3_45();
      if (!test_string_s())
      {
        v46 = OUTLINED_FUNCTION_26_32();
        bspush_ca_scan(v46, v47);
        goto LABEL_144;
      }

      goto LABEL_146;
    }

LABEL_115:
    v177 = OUTLINED_FUNCTION_37_23();
    starttest(v177, v178);
    v179 = OUTLINED_FUNCTION_8_43();
    if (!lpta_loadp_setscan_l(v179, v180))
    {
      v193 = OUTLINED_FUNCTION_37_23();
      bspush_ca_scan(v193, v194);
      v195 = OUTLINED_FUNCTION_37_23();
      bspush_ca_scan(v195, v196);
      OUTLINED_FUNCTION_2_46();
      v197 = test_string_s();
      v51 = v23;
      if (v197)
      {
        goto LABEL_146;
      }

LABEL_123:
      v23 = v51;
      v198 = OUTLINED_FUNCTION_37_23();
      bspush_ca_scan(v198, v199);
      OUTLINED_FUNCTION_2_46();
      v200 = test_string_s();
      v52 = v23;
      if (v200)
      {
        goto LABEL_146;
      }

LABEL_124:
      v23 = v52;
      OUTLINED_FUNCTION_2_46();
      v28 = v23;
      if (test_string_s())
      {
        goto LABEL_146;
      }

LABEL_125:
      v201 = OUTLINED_FUNCTION_67_15();
      savescptr(v201, v202, v203);
      v204 = OUTLINED_FUNCTION_37_23();
      bspush_ca_scan(v204, v205);
      OUTLINED_FUNCTION_2_46();
      v206 = test_string_s();
      v53 = v28;
      v23 = v28;
      if (v206)
      {
LABEL_146:
        v57 = v23;
LABEL_18:
        v48 = *(a1 + 104);
        if (v48)
        {
          v49 = OUTLINED_FUNCTION_53_17(v48);
          v28 = v50;
        }

        else
        {
          v49 = vback(a1, v57);
          v28 = 0;
        }

        v27 = v28;
        v45 = v28;
        v51 = v28;
        v52 = v28;
        v53 = v28;
        v54 = v28;
        v55 = v28;
        v35 = v28;
        switch(v49)
        {
          case 1:
            v23 = v28;
            continue;
          case 2:
            OUTLINED_FUNCTION_4_44();
            v109 = test_string_s();
            v27 = v28;
            v57 = v28;
            if (!v109)
            {
              goto LABEL_8;
            }

            goto LABEL_18;
          case 3:
            goto LABEL_8;
          case 4:
            goto LABEL_9;
          case 5:
          case 11:
          case 12:
          case 15:
          case 20:
          case 27:
          case 35:
          case 48:
          case 60:
          case 99:
            goto LABEL_145;
          case 6:
            v23 = v28;
            goto LABEL_115;
          case 7:
            v106 = OUTLINED_FUNCTION_37_23();
            bspush_ca_scan(v106, v107);
            OUTLINED_FUNCTION_5_44();
            v108 = test_string_s();
            v57 = v28;
            if (v108)
            {
              goto LABEL_18;
            }

            goto LABEL_73;
          case 8:
            OUTLINED_FUNCTION_4_44();
            v112 = test_string_s();
            v45 = v28;
            v57 = v28;
            if (!v112)
            {
              goto LABEL_16;
            }

            goto LABEL_18;
          case 9:
            goto LABEL_16;
          case 10:
          case 19:
          case 26:
          case 100:
            goto LABEL_108;
          case 13:
            v113 = OUTLINED_FUNCTION_25_32();
            bspush_ca_scan(v113, v114);
            v115 = OUTLINED_FUNCTION_37_23();
            bspush_ca_scan(v115, v116);
            OUTLINED_FUNCTION_2_46();
            goto LABEL_60;
          case 14:
          case 34:
            goto LABEL_74;
          case 16:
          case 28:
            goto LABEL_73;
          case 17:
            OUTLINED_FUNCTION_4_44();
LABEL_60:
            v117 = test_string_s();
            v57 = v28;
            if (!v117)
            {
              goto LABEL_61;
            }

            goto LABEL_18;
          case 18:
LABEL_61:
            OUTLINED_FUNCTION_3_45();
            v118 = test_string_s();
            v57 = v28;
            if (!v118)
            {
              goto LABEL_107;
            }

            goto LABEL_18;
          case 21:
            v104 = OUTLINED_FUNCTION_37_23();
            bspush_ca_scan(v104, v105);
            OUTLINED_FUNCTION_38_22();
            goto LABEL_109;
          case 22:
            v67 = OUTLINED_FUNCTION_37_23();
            bspush_ca_scan(v67, v68);
            v69 = OUTLINED_FUNCTION_37_23();
            bspush_ca_scan(v69, v70);
            goto LABEL_75;
          case 23:
          case 29:
            v110 = OUTLINED_FUNCTION_37_23();
            bspush_ca_scan(v110, v111);
            OUTLINED_FUNCTION_17_38();
            goto LABEL_109;
          case 24:
LABEL_75:
            OUTLINED_FUNCTION_2_46();
            v136 = test_string_s();
            v57 = v28;
            if (!v136)
            {
              goto LABEL_76;
            }

            goto LABEL_18;
          case 25:
LABEL_76:
            OUTLINED_FUNCTION_5_44();
            v137 = test_string_s();
            v57 = v28;
            if (!v137)
            {
              goto LABEL_107;
            }

            goto LABEL_18;
          case 30:
            v132 = OUTLINED_FUNCTION_37_23();
            bspush_ca_scan(v132, v133);
            goto LABEL_72;
          case 31:
            v138 = OUTLINED_FUNCTION_37_23();
            bspush_ca_scan(v138, v139);
            OUTLINED_FUNCTION_3_45();
            goto LABEL_109;
          case 32:
            OUTLINED_FUNCTION_2_46();
            v90 = test_string_s();
            v57 = v28;
            if (v90)
            {
              goto LABEL_18;
            }

            v91 = OUTLINED_FUNCTION_37_23();
            bspush_ca_scan(v91, v92);
            OUTLINED_FUNCTION_2_46();
            v93 = test_string_s();
            v57 = v28;
            if (v93)
            {
              goto LABEL_18;
            }

LABEL_73:
            v134 = OUTLINED_FUNCTION_37_23();
            bspush_ca_scan(v134, v135);
LABEL_74:
            OUTLINED_FUNCTION_4_44();
            goto LABEL_109;
          case 33:
LABEL_72:
            OUTLINED_FUNCTION_5_44();
            goto LABEL_109;
          case 36:
            v23 = v28;
            goto LABEL_116;
          case 37:
            goto LABEL_123;
          case 38:
            v61 = OUTLINED_FUNCTION_37_23();
            bspush_ca_scan(v61, v62);
            OUTLINED_FUNCTION_2_46();
            goto LABEL_34;
          case 39:
            OUTLINED_FUNCTION_4_44();
LABEL_34:
            v71 = test_string_s();
            v51 = v28;
            v57 = v28;
            if (!v71)
            {
              goto LABEL_123;
            }

            goto LABEL_18;
          case 40:
            OUTLINED_FUNCTION_2_46();
            v145 = test_string_s();
            v52 = v28;
            v57 = v28;
            if (!v145)
            {
              goto LABEL_124;
            }

            goto LABEL_18;
          case 41:
            goto LABEL_124;
          case 42:
            goto LABEL_125;
          case 43:
          case 45:
          case 46:
            v129 = OUTLINED_FUNCTION_37_23();
            bspush_ca_scan(v129, v130);
            goto LABEL_69;
          case 44:
            break;
          case 47:
LABEL_69:
            OUTLINED_FUNCTION_2_46();
            v131 = test_string_s();
            v53 = v28;
            v57 = v28;
            if (!v131)
            {
              break;
            }

            goto LABEL_18;
          case 49:
            v119 = OUTLINED_FUNCTION_1_46();
            v123 = testFldeq(v119, v120, v121, v122);
            v57 = v28;
            if (v123)
            {
              goto LABEL_18;
            }

            goto LABEL_87;
          case 50:
            goto LABEL_150;
          case 51:
            OUTLINED_FUNCTION_76_12();
            v72 = *(a1 + 1648);
            v73 = OUTLINED_FUNCTION_7_43();
            v74 = test_ptr(v73);
            v57 = v28;
            if (v74)
            {
              goto LABEL_18;
            }

            v75 = OUTLINED_FUNCTION_37_23();
            starttest(v75, v76);
            v77 = OUTLINED_FUNCTION_58_16();
            if (!lpta_loadp_setscan_r(v77, v78) && !advance_tok(a1))
            {
              goto LABEL_39;
            }

            goto LABEL_137;
          case 52:
            bspop_boa(a1);
LABEL_87:
            v149 = advance_tok(a1);
            v57 = v28;
            if (!v149)
            {
              goto LABEL_90;
            }

            goto LABEL_18;
          case 53:
            goto LABEL_90;
          case 54:
LABEL_39:
            v79 = OUTLINED_FUNCTION_59_16();
            savescptr(v79, v80, v81);
            v82 = OUTLINED_FUNCTION_58_16();
            lpta_rpta_loadp(v82, v83, &v272);
            v84 = OUTLINED_FUNCTION_9_43();
            inserted = insert_2pt_i(v84, v85, v86, v87, v88);
            goto LABEL_110;
          case 55:
            v23 = v28;
            goto LABEL_117;
          case 56:
            OUTLINED_FUNCTION_2_46();
            v63 = test_string_s();
            v57 = v28;
            if (v63)
            {
              goto LABEL_18;
            }

            v64 = OUTLINED_FUNCTION_37_23();
            bspush_ca_scan(v64, v65);
            goto LABEL_46;
          case 57:
            goto LABEL_131;
          case 58:
LABEL_46:
            OUTLINED_FUNCTION_2_46();
            v102 = test_string_s();
            v57 = v28;
            if (!v102)
            {
              goto LABEL_47;
            }

            goto LABEL_18;
          case 59:
LABEL_47:
            OUTLINED_FUNCTION_2_46();
            v103 = test_string_s();
            v54 = v28;
            v57 = v28;
            if (!v103)
            {
              goto LABEL_131;
            }

            goto LABEL_18;
          case 61:
            v23 = v28;
            goto LABEL_118;
          case 62:
            bspop_boa(a1);
            v157 = OUTLINED_FUNCTION_1_46();
            v161 = testFldeq(v157, v158, v159, v160);
            v57 = v28;
            if (v161)
            {
              goto LABEL_18;
            }

            OUTLINED_FUNCTION_37_23();
            bspush_ca_scan_boa();
            v153 = OUTLINED_FUNCTION_15_40();
            v156 = 2;
            goto LABEL_92;
          case 63:
            v147 = OUTLINED_FUNCTION_37_23();
            bspush_ca_scan(v147, v148);
            OUTLINED_FUNCTION_3_45();
            goto LABEL_104;
          case 64:
            OUTLINED_FUNCTION_2_46();
            v66 = test_string_s();
            v55 = v28;
            v57 = v28;
            if (!v66)
            {
              goto LABEL_134;
            }

            goto LABEL_18;
          case 65:
            goto LABEL_134;
          case 66:
          case 70:
          case 77:
          case 78:
            goto LABEL_135;
          case 67:
            v140 = OUTLINED_FUNCTION_37_23();
            bspush_ca_scan(v140, v141);
            OUTLINED_FUNCTION_2_46();
            v142 = test_string_s();
            v57 = v28;
            if (v142)
            {
              goto LABEL_18;
            }

            goto LABEL_80;
          case 68:
            v94 = OUTLINED_FUNCTION_37_23();
            bspush_ca_scan(v94, v95);
            OUTLINED_FUNCTION_2_46();
            v96 = test_string_s();
            v57 = v28;
            if (v96)
            {
              goto LABEL_18;
            }

            v97 = OUTLINED_FUNCTION_37_23();
            bspush_ca_scan(v97, v98);
            OUTLINED_FUNCTION_2_46();
            v99 = test_string_s();
            v57 = v28;
            if (v99)
            {
              goto LABEL_18;
            }

            goto LABEL_45;
          case 69:
          case 71:
            v59 = OUTLINED_FUNCTION_37_23();
            bspush_ca_scan(v59, v60);
            OUTLINED_FUNCTION_4_44();
            goto LABEL_104;
          case 72:
            OUTLINED_FUNCTION_2_46();
            v58 = test_string_s();
            v57 = v28;
            if (v58)
            {
              goto LABEL_18;
            }

LABEL_45:
            v100 = OUTLINED_FUNCTION_37_23();
            bspush_ca_scan(v100, v101);
            goto LABEL_103;
          case 73:
          case 76:
          case 82:
          case 84:
            goto LABEL_103;
          case 74:
            v167 = OUTLINED_FUNCTION_37_23();
            bspush_ca_scan(v167, v168);
            v169 = OUTLINED_FUNCTION_37_23();
            bspush_ca_scan(v169, v170);
            goto LABEL_100;
          case 75:
LABEL_80:
            v143 = OUTLINED_FUNCTION_37_23();
            bspush_ca_scan(v143, v144);
            goto LABEL_100;
          case 79:
            v124 = OUTLINED_FUNCTION_37_23();
            bspush_ca_scan(v124, v125);
            v126 = OUTLINED_FUNCTION_37_23();
            bspush_ca_scan(v126, v127);
            OUTLINED_FUNCTION_2_46();
            goto LABEL_66;
          case 80:
          case 83:
          case 85:
          case 86:
            v171 = OUTLINED_FUNCTION_37_23();
            bspush_ca_scan(v171, v172);
            goto LABEL_102;
          case 81:
            OUTLINED_FUNCTION_4_44();
LABEL_66:
            v128 = test_string_s();
            v57 = v28;
            if (!v128)
            {
              goto LABEL_103;
            }

            goto LABEL_18;
          case 87:
LABEL_102:
            OUTLINED_FUNCTION_2_46();
            v173 = test_string_s();
            v57 = v28;
            if (v173)
            {
              goto LABEL_18;
            }

LABEL_103:
            OUTLINED_FUNCTION_2_46();
            goto LABEL_104;
          case 88:
            OUTLINED_FUNCTION_17_38();
            goto LABEL_104;
          case 89:
            OUTLINED_FUNCTION_2_46();
            v56 = test_string_s();
            v57 = v28;
            if (v56)
            {
              goto LABEL_18;
            }

            goto LABEL_100;
          case 90:
LABEL_100:
            OUTLINED_FUNCTION_5_44();
LABEL_104:
            v174 = test_string_s();
            v57 = v28;
            if (!v174)
            {
              goto LABEL_135;
            }

            goto LABEL_18;
          case 91:
            bspop_boa(a1);
            v146 = advance_tok(a1);
            v57 = v28;
            if (v146)
            {
              goto LABEL_18;
            }

            goto LABEL_91;
          case 92:
            bspop_boa(a1);
            v150 = advance_tok(a1);
            v57 = v28;
            if (v150)
            {
              goto LABEL_18;
            }

LABEL_90:
            v151 = OUTLINED_FUNCTION_37_23();
            bspush_ca_scan(v151, v152);
            goto LABEL_91;
          case 93:
            v162 = OUTLINED_FUNCTION_1_46();
            v166 = testFldeq(v162, v163, v164, v165);
            v57 = v28;
            if (v166)
            {
              goto LABEL_18;
            }

            inserted = advance_tok(a1);
            goto LABEL_110;
          case 94:
LABEL_91:
            OUTLINED_FUNCTION_37_23();
            bspush_ca_scan_boa();
            v153 = OUTLINED_FUNCTION_1_46();
LABEL_92:
            if (testFldeq(v153, v154, v155, v156))
            {
              v57 = v28;
            }

            else
            {
              v57 = 1;
            }

            goto LABEL_18;
          case 95:
            v23 = v28;
            goto LABEL_139;
          case 96:
            bspop_boa(a1);
LABEL_137:
            v35 = v28;
            goto LABEL_145;
          case 98:
LABEL_107:
            v175 = OUTLINED_FUNCTION_37_23();
            bspush_ca_scan(v175, v176);
LABEL_108:
            OUTLINED_FUNCTION_2_46();
LABEL_109:
            inserted = test_string_s();
LABEL_110:
            v35 = v28;
            v57 = v28;
            if (!inserted)
            {
              goto LABEL_145;
            }

            goto LABEL_18;
          case 101:
            goto LABEL_147;
          default:
            goto LABEL_3;
        }
      }

      v23 = v53;
      v207 = OUTLINED_FUNCTION_73_12();
      lpta_loadpn(v207, v208);
      OUTLINED_FUNCTION_56_17();
      lpta_ctxtr();
      rpta_loadpn(a1, a1 + 4008);
      if (compare_ptas(a1) || testeq(a1))
      {
        goto LABEL_146;
      }

      v209 = OUTLINED_FUNCTION_37_23();
      starttest(v209, v210);
      v211 = OUTLINED_FUNCTION_8_43();
      if (lpta_loadp_setscan_l(v211, v212))
      {
        v35 = v23;
        goto LABEL_145;
      }

      OUTLINED_FUNCTION_17_38();
      v240 = test_string_s();
      v28 = v23;
      v35 = v23;
      if (v240)
      {
LABEL_145:
        v230 = v35;
        v231 = OUTLINED_FUNCTION_37_23();
        starttest(v231, v232);
        v233 = OUTLINED_FUNCTION_11_42();
        move_i(v233, v234, v235);
        v236 = OUTLINED_FUNCTION_20_35();
        move_i(v236, v237, v238);
        OUTLINED_FUNCTION_32_28();
        apply_strong_alternation();
        v23 = v230;
        if (!v239)
        {
LABEL_147:
          v12 = 0;
          goto LABEL_4;
        }

        goto LABEL_146;
      }

LABEL_150:
      while (1)
      {
        v241 = OUTLINED_FUNCTION_0_47();
        if (testFldeq(v241, v242, v243, v244) || advance_tok(a1))
        {
          break;
        }

        v245 = OUTLINED_FUNCTION_42_21();
        bspush_ca_scan(v245, v246);
      }

LABEL_10:
      v23 = v28;
      goto LABEL_146;
    }

    break;
  }

LABEL_116:
  v181 = OUTLINED_FUNCTION_37_23();
  starttest(v181, v182);
  v183 = OUTLINED_FUNCTION_8_43();
  if (!lpta_loadp_setscan_l(v183, v184))
  {
    v213 = OUTLINED_FUNCTION_37_23();
    bspush_ca_scan(v213, v214);
    OUTLINED_FUNCTION_5_44();
    v215 = test_string_s();
    v54 = v23;
    if (v215)
    {
      goto LABEL_146;
    }

LABEL_131:
    v35 = v54;
    if (*(a1 + 4002) >= 4)
    {
      goto LABEL_3;
    }

    goto LABEL_145;
  }

LABEL_117:
  v185 = OUTLINED_FUNCTION_37_23();
  starttest(v185, v186);
  v187 = OUTLINED_FUNCTION_8_43();
  if (!lpta_loadp_setscan_l(v187, v188))
  {
    OUTLINED_FUNCTION_37_23();
    bspush_ca_scan_boa();
    v216 = OUTLINED_FUNCTION_37_23();
    bspush_ca_scan(v216, v217);
    v218 = OUTLINED_FUNCTION_37_23();
    bspush_ca_scan(v218, v219);
    OUTLINED_FUNCTION_2_46();
    v220 = test_string_s();
    v55 = v23;
    if (!v220)
    {
LABEL_134:
      v23 = v55;
      OUTLINED_FUNCTION_4_44();
      if (!test_string_s())
      {
LABEL_135:
        v23 = 1;
      }
    }

    goto LABEL_146;
  }

LABEL_118:
  v189 = OUTLINED_FUNCTION_37_23();
  starttest(v189, v190);
  v191 = OUTLINED_FUNCTION_8_43();
  if (!lpta_loadp_setscan_l(v191, v192))
  {
    OUTLINED_FUNCTION_5_44();
    if (!test_string_s())
    {
      OUTLINED_FUNCTION_37_23();
      bspush_ca_scan_boa();
      OUTLINED_FUNCTION_2_46();
      if (!test_string_s())
      {
        v23 = 1;
      }

      goto LABEL_146;
    }
  }

LABEL_139:
  v221 = OUTLINED_FUNCTION_37_23();
  starttest(v221, v222);
  v223 = *(a1 + 5294);
  OUTLINED_FUNCTION_118_7();
  if (v224)
  {
    v225 = OUTLINED_FUNCTION_8_43();
    if (!lpta_loadp_setscan_l(v225, v226))
    {
      OUTLINED_FUNCTION_4_44();
      if (!test_string_s())
      {
        v227 = OUTLINED_FUNCTION_37_23();
        bspush_ca_scan(v227, v228);
LABEL_144:
        OUTLINED_FUNCTION_2_46();
        v229 = test_string_s();
        v35 = v23;
        if (v229)
        {
          goto LABEL_146;
        }

        goto LABEL_145;
      }
    }
  }

LABEL_3:
  v12 = 94;
LABEL_4:
  vretproc(a1);
  v13 = *MEMORY[0x277D85DE8];
  return v12;
}