uint64_t assign_syll_coda(void *a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v199 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_11_38(a1, a2, a3, a4, a5, a6, a7, a8, v117, v120, v123, v126, v129, v132, v135, v138, v141, v144, v147, v150, v153, v156, v159, v162, v165, v168, v171, v174, v177, v180, v183, v186, v187);
  OUTLINED_FUNCTION_16_35();
  bzero(v198, v10);
  v11 = setjmp(v198);
  if (v11 || OUTLINED_FUNCTION_15_35(v11, v12, v13, v14, v15, v16, v17, v18, v118, v121, v124, v127, v130, v133, v136, v139, v142, v145, v148, v151, v154, v157, v160, v163, v166, v169, v172, v175, v178, v181, v184, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198[0]))
  {
LABEL_3:
    v19 = 94;
  }

  else
  {
    v22 = OUTLINED_FUNCTION_14_36();
    get_parm(v22, v23, a2, -6);
    fence_42(a1, 0, &null_str_17);
    fence_42(a1, 1, &_MergedGlobals_38);
    starttest(a1, 1);
    v24 = OUTLINED_FUNCTION_14_36();
    if (!lpta_loadp_setscan_r(v24, v25))
    {
      v26 = 0;
LABEL_7:
      while (1)
      {
        bspush_ca_scan(a1, 2);
        v27 = testFldeq(a1, 2u, 1, 2);
        v28 = v26;
        if (v27)
        {
          break;
        }

LABEL_8:
        if (advance_tok(a1))
        {
          v28 = v26;
          break;
        }

        bspush_ca_scan(a1, 4);
      }

      while (2)
      {
        v29 = a1[13];
        if (v29)
        {
          v30 = OUTLINED_FUNCTION_18_34(v29);
          v32 = v31;
        }

        else
        {
          v30 = vback(a1, v28);
          v32 = 0;
        }

        v26 = v32;
        switch(v30)
        {
          case 1:
            break;
          case 2:
            v51 = OUTLINED_FUNCTION_2_42();
            v54 = testFldeq(v51, v52, v53, 3);
            v26 = v32;
            v28 = v32;
            if (!v54)
            {
              goto LABEL_8;
            }

            continue;
          case 3:
            goto LABEL_8;
          case 4:
            savescptr(a1, 4, &v186);
            v38 = OUTLINED_FUNCTION_6_39();
            starttest(v38, v39);
            OUTLINED_FUNCTION_6_39();
            bspush_ca_boa();
            v40 = lpta_loadp_setscan_r(a1, &v186);
            v28 = v32;
            if (!v40)
            {
              if (advance_tok(a1))
              {
                v28 = v32;
              }

              else
              {
                v28 = 1;
              }
            }

            continue;
          case 5:
            v26 = v32;
            goto LABEL_7;
          case 6:
            v43 = OUTLINED_FUNCTION_13_37();
            if (!lpta_loadp_setscan_r(v43, v44))
            {
              OUTLINED_FUNCTION_2_42();
              if (!test_string_s())
              {
                goto LABEL_60;
              }
            }

            goto LABEL_23;
          case 7:
            bspop_boa(a1);
            goto LABEL_60;
          case 8:
LABEL_23:
            v45 = OUTLINED_FUNCTION_6_39();
            starttest(v45, v46);
            v47 = OUTLINED_FUNCTION_13_37();
            if (lpta_loadp_setscan_l(v47, v48))
            {
              goto LABEL_60;
            }

            v49 = OUTLINED_FUNCTION_6_39();
            bspush_ca_scan(v49, v50);
            goto LABEL_46;
          case 9:
            v66 = OUTLINED_FUNCTION_6_39();
            bspush_ca_scan(v66, v67);
            v68 = OUTLINED_FUNCTION_6_39();
            bspush_ca_scan(v68, v69);
            v70 = OUTLINED_FUNCTION_6_39();
            bspush_ca_scan(v70, v71);
            goto LABEL_36;
          case 10:
          case 37:
            goto LABEL_49;
          case 11:
            v55 = OUTLINED_FUNCTION_6_39();
            bspush_ca_scan(v55, v56);
            v57 = OUTLINED_FUNCTION_6_39();
            bspush_ca_scan(v57, v58);
            v59 = OUTLINED_FUNCTION_5_39();
            v63 = testFldeq(v59, v60, v61, v62);
            v28 = v32;
            if (v63)
            {
              continue;
            }

            v64 = advance_tok(a1);
            v28 = v32;
            if (v64)
            {
              continue;
            }

            goto LABEL_29;
          case 12:
            goto LABEL_37;
          case 13:
LABEL_36:
            OUTLINED_FUNCTION_2_42();
            v83 = test_string_s();
            v28 = v32;
            if (v83)
            {
              continue;
            }

LABEL_37:
            OUTLINED_FUNCTION_6_39();
            bspush_ca_scan_boa();
LABEL_38:
            OUTLINED_FUNCTION_2_42();
            v84 = test_string_s();
            v28 = v32;
            if (v84)
            {
              continue;
            }

LABEL_39:
            bspush_nboa(a1);
LABEL_40:
            OUTLINED_FUNCTION_2_42();
            goto LABEL_47;
          case 14:
          case 16:
            v41 = OUTLINED_FUNCTION_6_39();
            bspush_ca_scan(v41, v42);
            goto LABEL_38;
          case 15:
            goto LABEL_39;
          case 17:
            goto LABEL_38;
          case 18:
            v72 = OUTLINED_FUNCTION_6_39();
            bspush_ca_scan(v72, v73);
            v74 = OUTLINED_FUNCTION_6_39();
            bspush_ca_scan(v74, v75);
            v76 = OUTLINED_FUNCTION_5_39();
            v80 = testFldeq(v76, v77, v78, v79);
            v28 = v32;
            if (v80)
            {
              continue;
            }

            v81 = advance_tok(a1);
            v28 = v32;
            if (v81)
            {
              continue;
            }

            goto LABEL_34;
          case 19:
LABEL_29:
            OUTLINED_FUNCTION_2_42();
            v65 = test_string_s();
            v28 = v32;
            if (!v65)
            {
              goto LABEL_35;
            }

            continue;
          case 20:
          case 22:
          case 23:
          case 24:
          case 25:
          case 26:
          case 30:
          case 32:
          case 33:
            v85 = OUTLINED_FUNCTION_6_39();
            bspush_ca_scan(v85, v86);
            goto LABEL_42;
          case 21:
          case 31:
            goto LABEL_43;
          case 27:
          case 34:
            goto LABEL_42;
          case 28:
            v33 = OUTLINED_FUNCTION_6_39();
            bspush_ca_scan(v33, v34);
            OUTLINED_FUNCTION_2_42();
            v35 = test_string_s();
            v28 = v32;
            if (v35)
            {
              continue;
            }

            v36 = OUTLINED_FUNCTION_6_39();
            bspush_ca_scan(v36, v37);
            goto LABEL_40;
          case 29:
LABEL_34:
            OUTLINED_FUNCTION_2_42();
            v82 = test_string_s();
            v28 = v32;
            if (v82)
            {
              continue;
            }

LABEL_35:
            OUTLINED_FUNCTION_6_39();
            bspush_ca_scan_boa();
LABEL_42:
            OUTLINED_FUNCTION_2_42();
            v87 = test_string_s();
            v28 = v32;
            if (v87)
            {
              continue;
            }

LABEL_43:
            bspush_nboa(a1);
            goto LABEL_49;
          case 35:
            v88 = OUTLINED_FUNCTION_6_39();
            bspush_ca_scan(v88, v89);
            v90 = OUTLINED_FUNCTION_6_39();
            bspush_ca_scan(v90, v91);
            v92 = OUTLINED_FUNCTION_5_39();
            v96 = testFldeq(v92, v93, v94, v95);
            v28 = v32;
            if (v96)
            {
              continue;
            }

            v97 = advance_tok(a1);
            v28 = v32;
            if (v97)
            {
              continue;
            }

            goto LABEL_46;
          case 36:
            goto LABEL_40;
          case 38:
            v106 = OUTLINED_FUNCTION_6_39();
            bspush_ca_scan(v106, v107);
            v108 = OUTLINED_FUNCTION_6_39();
            bspush_ca_scan(v108, v109);
            v110 = OUTLINED_FUNCTION_5_39();
            v114 = testFldeq(v110, v111, v112, v113);
            v28 = v32;
            if (v114)
            {
              continue;
            }

            v115 = advance_tok(a1);
            v28 = v32;
            if (v115)
            {
              continue;
            }

            goto LABEL_54;
          case 39:
LABEL_46:
            OUTLINED_FUNCTION_9_38();
LABEL_47:
            v98 = test_string_s();
            goto LABEL_48;
          case 40:
            v102 = OUTLINED_FUNCTION_5_39();
            goto LABEL_55;
          case 41:
LABEL_54:
            v102 = OUTLINED_FUNCTION_2_42();
            v105 = 2;
LABEL_55:
            v116 = testFldeq(v102, v103, v104, v105);
            v28 = v32;
            if (v116)
            {
              continue;
            }

            v98 = advance_tok(a1);
LABEL_48:
            v28 = v32;
            if (v98)
            {
              continue;
            }

LABEL_49:
            v99 = OUTLINED_FUNCTION_6_39();
            bspush_ca_scan(v99, v100);
            v101 = advanc(a1);
            v28 = v32;
            if (v101)
            {
              continue;
            }

LABEL_59:
            OUTLINED_FUNCTION_12_38(42, v119, v122, v125, v128, v131, v134, v137, v140, v143, v146, v149, v152, v155, v158, v161, v164, v167, v170, v173, v176, v179, v182, v185, v186);
            break;
          case 42:
            goto LABEL_59;
          default:
            goto LABEL_3;
        }

        break;
      }
    }

LABEL_60:
    *(a2 + 8) = v187;
    v19 = 0;
  }

  vretproc(a1);
  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

uint64_t estimate_fren_nsylls(void *a1, __int16 *a2, __int16 *a3, __int16 *a4, int a5, int a6, int a7, int a8)
{
  v343 = *MEMORY[0x277D85DE8];
  v338 = 0;
  v337[0] = 0;
  v337[1] = 0;
  memset(v336, 0, sizeof(v336));
  v335[0] = 0;
  v335[1] = 0;
  v334[0] = 0;
  v334[1] = 0;
  OUTLINED_FUNCTION_11_38(a1, a2, a3, a4, a5, a6, a7, a8, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333);
  OUTLINED_FUNCTION_16_35();
  bzero(v342, v12);
  if (!setjmp(v342) && !ventproc(a1, &v309, v341, v340, v339, v342))
  {
    get_parm(a1, &v338, a2, -4);
    get_parm(a1, v337, a3, -6);
    v16 = OUTLINED_FUNCTION_17_35();
    get_parm(v16, v17, a4, -6);
    v18 = OUTLINED_FUNCTION_10_38();
    push_ptr_init(v18, v19);
    push_ptr_init(a1, v335);
    v20 = OUTLINED_FUNCTION_20_30();
    push_ptr_init(v20, v21);
    v22 = OUTLINED_FUNCTION_13_37();
    v24 = push_ptr_init(v22, v23);
    v25 = 0;
    OUTLINED_FUNCTION_22_28(v24, v26, &null_str_17);
    fence_42(a1, 1, &unk_28064BB14);
    starttest(a1, 1);
    OUTLINED_FUNCTION_6_39();
    bspush_ca_boa();
    if (!lpta_loadp_setscan_r(a1, v337))
    {
      v25 = !advance_tok(a1);
    }

    v27 = v25;
    while (1)
    {
LABEL_8:
      v28 = a1[13];
      if (v28)
      {
        v29 = OUTLINED_FUNCTION_18_34(v28);
        v31 = v30;
      }

      else
      {
        v29 = vback(a1, v27);
        v31 = 0;
      }

      switch(v29)
      {
        case 1:
          goto LABEL_13;
        case 2:
          bspop_boa(a1);
          v32 = OUTLINED_FUNCTION_14_36();
          lpta_loadpn(v32, v33);
          OUTLINED_FUNCTION_7_39();
          lpta_ctxtl();
          v34 = OUTLINED_FUNCTION_14_36();
          lpta_storep(v34, v35);
LABEL_13:
          v36 = OUTLINED_FUNCTION_6_39();
          starttest(v36, v37);
          OUTLINED_FUNCTION_6_39();
          bspush_ca_boa();
          v38 = OUTLINED_FUNCTION_8_39();
          v40 = lpta_loadp_setscan_r(v38, v39);
          goto LABEL_48;
        case 3:
          goto LABEL_19;
        case 4:
          bspop_boa(a1);
          v46 = OUTLINED_FUNCTION_14_36();
          lpta_loadpn(v46, v47);
          OUTLINED_FUNCTION_7_39();
          lpta_ctxtr();
          v48 = OUTLINED_FUNCTION_14_36();
          lpta_storep(v48, v49);
LABEL_19:
          v50 = OUTLINED_FUNCTION_6_39();
          startloop(v50, v51);
          lpta_loadpn(a1, v337);
          OUTLINED_FUNCTION_7_39();
          lpta_mover();
          v52 = OUTLINED_FUNCTION_10_38();
          lpta_storep(v52, v53);
          v54 = OUTLINED_FUNCTION_17_35();
          lpta_loadpn(v54, v55);
          OUTLINED_FUNCTION_7_39();
          lpta_mover();
          v56 = OUTLINED_FUNCTION_20_30();
          lpta_storep(v56, v57);
          goto LABEL_37;
        case 5:
        case 50:
          goto LABEL_149;
        case 6:
          goto LABEL_41;
        case 7:
        case 66:
          goto LABEL_123;
        case 8:
          goto LABEL_40;
        case 9:
          goto LABEL_42;
        case 10:
        case 14:
        case 18:
        case 22:
        case 29:
        case 34:
        case 51:
        case 57:
        case 70:
          goto LABEL_143;
        case 11:
          goto LABEL_43;
        case 12:
          goto LABEL_53;
        case 13:
          goto LABEL_148;
        case 15:
          goto LABEL_54;
        case 16:
          goto LABEL_92;
        case 17:
          goto LABEL_93;
        case 19:
          goto LABEL_95;
        case 20:
          goto LABEL_96;
        case 21:
          goto LABEL_56;
        case 23:
          goto LABEL_58;
        case 24:
          goto LABEL_117;
        case 25:
          goto LABEL_134;
        case 26:
          goto LABEL_136;
        case 27:
          goto LABEL_140;
        case 28:
          goto LABEL_141;
        case 30:
          goto LABEL_118;
        case 31:
          goto LABEL_126;
        case 32:
          goto LABEL_62;
        case 33:
          goto LABEL_144;
        case 35:
          goto LABEL_63;
        case 36:
          goto LABEL_84;
        case 37:
          goto LABEL_87;
        case 38:
          v58 = OUTLINED_FUNCTION_0_45();
          v62 = testFldeq(v58, v59, v60, v61);
          v27 = v31;
          if (v62)
          {
            continue;
          }

          v63 = advance_tok(a1);
          goto LABEL_86;
        case 39:
          goto LABEL_65;
        case 40:
          goto LABEL_107;
        case 41:
          goto LABEL_66;
        case 42:
          goto LABEL_77;
        case 43:
          goto LABEL_79;
        case 44:
          bspop_boa(a1);
          goto LABEL_78;
        case 45:
          OUTLINED_FUNCTION_6_39();
          bspush_ca_scan_boa();
          v76 = OUTLINED_FUNCTION_1_43();
          v79 = 1;
          goto LABEL_80;
        case 46:
          bspop_boa(a1);
          v82 = advance_tok(a1);
          v27 = v31;
          if (v82)
          {
            continue;
          }

          v83 = OUTLINED_FUNCTION_8_39();
          v85 = lpta_loadp_setscan_r(v83, v84);
          v27 = v31;
          if (v85)
          {
            continue;
          }

          v86 = OUTLINED_FUNCTION_6_39();
          bspush_ca_scan(v86, v87);
          OUTLINED_FUNCTION_7_39();
          v88 = test_string_s();
          v27 = v31;
          if (v88)
          {
            continue;
          }

          goto LABEL_36;
        case 47:
LABEL_36:
          v89 = OUTLINED_FUNCTION_6_39();
          v92 = test_synch(v89, v90, 1u, v91);
          goto LABEL_124;
        case 48:
          goto LABEL_68;
        case 49:
          goto LABEL_109;
        case 52:
          goto LABEL_69;
        case 53:
          v64 = OUTLINED_FUNCTION_0_45();
          v68 = testFldeq(v64, v65, v66, v67);
          v27 = v31;
          if (v68)
          {
            continue;
          }

          v69 = advance_tok(a1);
          v27 = v31;
          if (v69)
          {
            continue;
          }

          goto LABEL_29;
        case 54:
          v80 = OUTLINED_FUNCTION_6_39();
          bspush_ca_scan(v80, v81);
          goto LABEL_102;
        case 55:
          goto LABEL_104;
        case 56:
          goto LABEL_102;
        case 58:
LABEL_29:
          v73 = OUTLINED_FUNCTION_6_39();
          bspush_ca_scan(v73, v74);
          goto LABEL_30;
        case 59:
LABEL_30:
          OUTLINED_FUNCTION_7_39();
          v75 = test_string_s();
          goto LABEL_142;
        case 60:
          goto LABEL_71;
        case 61:
          bspop_boa(a1);
          goto LABEL_106;
        case 62:
          v41 = OUTLINED_FUNCTION_7_39();
          v44 = 20;
          goto LABEL_15;
        case 63:
          goto LABEL_16;
        case 64:
          goto LABEL_72;
        case 65:
          goto LABEL_73;
        case 67:
          goto LABEL_46;
        case 68:
          bspop_boa(a1);
          v70 = OUTLINED_FUNCTION_8_39();
          v72 = lpta_loadp_setscan_r(v70, v71);
          v27 = v31;
          if (v72)
          {
            continue;
          }

          goto LABEL_47;
        case 69:
          bspop_boa(a1);
          goto LABEL_143;
        case 71:
          goto LABEL_37;
        case 72:
          goto LABEL_38;
        default:
          goto LABEL_3;
      }

      while (1)
      {
LABEL_38:
        v94 = OUTLINED_FUNCTION_6_39();
        bspush_ca(v94);
        v95 = OUTLINED_FUNCTION_3_42();
        v97 = lpta_loadp_setscan_r(v95, v96);
        v27 = v31;
        if (v97)
        {
          goto LABEL_8;
        }

        v98 = advance_tok(a1);
        v27 = v31;
        if (v98)
        {
          goto LABEL_8;
        }

LABEL_40:
        savescptr(a1, 8, v335);
LABEL_41:
        v99 = OUTLINED_FUNCTION_6_39();
        starttest(v99, v100);
        v101 = OUTLINED_FUNCTION_3_42();
        if (!lpta_loadp_setscan_r(v101, v102))
        {
          goto LABEL_76;
        }

LABEL_42:
        v103 = OUTLINED_FUNCTION_6_39();
        starttest(v103, v104);
        v105 = OUTLINED_FUNCTION_3_42();
        if (lpta_loadp_setscan_r(v105, v106))
        {
LABEL_43:
          v107 = OUTLINED_FUNCTION_3_42();
          if (!lpta_loadp_setscan_r(v107, v108))
          {
            OUTLINED_FUNCTION_7_39();
            if (!test_string_s())
            {
              v109 = OUTLINED_FUNCTION_6_39();
              starttest(v109, v110);
              v111 = OUTLINED_FUNCTION_4_40();
              if (lpta_loadp_setscan_l(v111, v112))
              {
                goto LABEL_123;
              }

LABEL_46:
              OUTLINED_FUNCTION_12_38(67, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332);
              v113 = advance_tok(a1);
              v27 = v31;
              if (!v113)
              {
LABEL_47:
                OUTLINED_FUNCTION_6_39();
                bspush_ca_scan_boa();
                v114 = OUTLINED_FUNCTION_1_43();
                v40 = testFldeq(v114, v115, v116, 1);
LABEL_48:
                v27 = v31;
                if (!v40)
                {
                  v117 = advance_tok(a1);
LABEL_81:
                  if (v117)
                  {
                    v27 = v31;
                  }

                  else
                  {
                    v27 = 1;
                  }

                  goto LABEL_8;
                }
              }

              goto LABEL_8;
            }
          }

          goto LABEL_143;
        }

        v118 = OUTLINED_FUNCTION_1_43();
        v121 = testFldeq(v118, v119, v120, 1);
        v27 = v31;
        if (v121)
        {
          goto LABEL_8;
        }

        v122 = advance_tok(a1);
        v27 = v31;
        if (v122)
        {
          goto LABEL_8;
        }

        v123 = OUTLINED_FUNCTION_6_39();
        starttest(v123, v124);
        v125 = OUTLINED_FUNCTION_4_40();
        if (!lpta_loadp_setscan_r(v125, v126))
        {
          v301 = OUTLINED_FUNCTION_1_43();
          v304 = testFldeq(v301, v302, v303, 1);
          v27 = v31;
          if (v304)
          {
            goto LABEL_8;
          }

          v305 = OUTLINED_FUNCTION_7_39();
          v307 = testFldeq(v305, v306, 5, 3);
          v27 = v31;
          if (v307)
          {
            goto LABEL_8;
          }

          v308 = advance_tok(a1);
          v27 = v31;
          if (v308)
          {
            goto LABEL_8;
          }

LABEL_148:
          v206 = 13;
          goto LABEL_108;
        }

LABEL_53:
        v127 = OUTLINED_FUNCTION_6_39();
        starttest(v127, v128);
        v129 = OUTLINED_FUNCTION_3_42();
        if (!lpta_loadp_setscan_r(v129, v130))
        {
          v196 = OUTLINED_FUNCTION_6_39();
          bspush_ca_scan(v196, v197);
LABEL_92:
          OUTLINED_FUNCTION_7_39();
          v198 = test_string_s();
          v27 = v31;
          if (v198)
          {
            goto LABEL_8;
          }

LABEL_93:
          v199 = OUTLINED_FUNCTION_6_39();
          starttest(v199, v200);
          v201 = OUTLINED_FUNCTION_4_40();
          if (lpta_loadp_setscan_r(v201, v202))
          {
            goto LABEL_143;
          }

          v203 = OUTLINED_FUNCTION_6_39();
          bspush_ca_scan(v203, v204);
LABEL_95:
          OUTLINED_FUNCTION_7_39();
          v205 = test_string_s();
          v27 = v31;
          if (v205)
          {
            goto LABEL_8;
          }

LABEL_96:
          v206 = 20;
          goto LABEL_108;
        }

LABEL_54:
        v131 = OUTLINED_FUNCTION_3_42();
        if (!lpta_loadp_setscan_r(v131, v132))
        {
          OUTLINED_FUNCTION_7_39();
          if (!test_string_s())
          {
            v241 = OUTLINED_FUNCTION_6_39();
            starttest_e(v241, v242);
LABEL_119:
            v253 = OUTLINED_FUNCTION_4_40();
            if (!lpta_loadp_setscan_r(v253, v254))
            {
              goto LABEL_120;
            }

            goto LABEL_143;
          }
        }

LABEL_56:
        v133 = OUTLINED_FUNCTION_3_42();
        if (!lpta_loadp_setscan_r(v133, v134))
        {
          OUTLINED_FUNCTION_7_39();
          if (!test_string_s())
          {
            v243 = OUTLINED_FUNCTION_6_39();
            starttest(v243, v244);
            v245 = OUTLINED_FUNCTION_4_40();
            if (!lpta_loadp_setscan_l(v245, v246))
            {
LABEL_134:
              OUTLINED_FUNCTION_12_38(25, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332);
              v279 = advance_tok(a1);
              v27 = v31;
              if (v279)
              {
                goto LABEL_8;
              }

              v280 = OUTLINED_FUNCTION_6_39();
              bspush_ca_scan(v280, v281);
              OUTLINED_FUNCTION_7_39();
              v282 = test_string_s();
              v27 = v31;
              if (v282)
              {
                goto LABEL_8;
              }

LABEL_136:
              v283 = OUTLINED_FUNCTION_0_45();
              v287 = testFldeq(v283, v284, v285, v286);
              v27 = v31;
              if (v287)
              {
                goto LABEL_8;
              }

              v288 = advance_tok(a1);
              v27 = v31;
              if (v288)
              {
                goto LABEL_8;
              }

              v289 = OUTLINED_FUNCTION_8_39();
              v291 = lpta_loadp_setscan_r(v289, v290);
              v27 = v31;
              if (v291)
              {
                goto LABEL_8;
              }

              v292 = OUTLINED_FUNCTION_6_39();
              bspush_ca_scan(v292, v293);
              OUTLINED_FUNCTION_7_39();
              v294 = test_string_s();
              v27 = v31;
              if (v294)
              {
                goto LABEL_8;
              }

LABEL_140:
              v295 = OUTLINED_FUNCTION_6_39();
              bspush_ca_scan(v295, v296);
              OUTLINED_FUNCTION_7_39();
              v297 = test_string_s();
              v27 = v31;
              if (v297)
              {
                goto LABEL_8;
              }

LABEL_141:
              v298 = OUTLINED_FUNCTION_6_39();
              v75 = test_synch(v298, v299, 1u, v300);
              goto LABEL_142;
            }

LABEL_117:
            v247 = OUTLINED_FUNCTION_6_39();
            starttest(v247, v248);
            v249 = OUTLINED_FUNCTION_4_40();
            if (!lpta_loadp_setscan_l(v249, v250))
            {
LABEL_126:
              OUTLINED_FUNCTION_12_38(31, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332);
              v259 = advance_tok(a1);
              v27 = v31;
              if (v259)
              {
                goto LABEL_8;
              }

              v260 = OUTLINED_FUNCTION_0_45();
              v264 = testFldeq(v260, v261, v262, v263);
              v27 = v31;
              if (v264)
              {
                goto LABEL_8;
              }

              v265 = OUTLINED_FUNCTION_7_39();
              v268 = testFldeq(v265, v266, v267, 24);
              v27 = v31;
              if (v268)
              {
                goto LABEL_8;
              }

              v269 = advance_tok(a1);
              v27 = v31;
              if (v269)
              {
                goto LABEL_8;
              }

              v270 = OUTLINED_FUNCTION_0_45();
              v274 = testFldeq(v270, v271, v272, v273);
              v27 = v31;
              if (v274)
              {
                goto LABEL_8;
              }

              v275 = advance_tok(a1);
              v27 = v31;
              if (v275)
              {
                goto LABEL_8;
              }

              v276 = OUTLINED_FUNCTION_8_39();
              v278 = lpta_loadp_setscan_r(v276, v277);
              v27 = v31;
              if (v278)
              {
                goto LABEL_8;
              }

              v223 = OUTLINED_FUNCTION_1_43();
              v226 = 1;
              goto LABEL_105;
            }

LABEL_118:
            v251 = OUTLINED_FUNCTION_6_39();
            starttest(v251, v252);
            goto LABEL_119;
          }
        }

LABEL_58:
        v135 = OUTLINED_FUNCTION_3_42();
        if (lpta_loadp_setscan_r(v135, v136))
        {
          goto LABEL_143;
        }

        OUTLINED_FUNCTION_7_39();
        if (test_string_s())
        {
          goto LABEL_143;
        }

        v137 = OUTLINED_FUNCTION_4_40();
        if (!lpta_loadp_setscan_r(v137, v138))
        {
          OUTLINED_FUNCTION_7_39();
          if (!test_string_s())
          {
LABEL_144:
            v206 = 33;
            goto LABEL_108;
          }
        }

LABEL_62:
        v139 = OUTLINED_FUNCTION_6_39();
        starttest(v139, v140);
        v141 = OUTLINED_FUNCTION_4_40();
        if (!lpta_loadp_setscan_l(v141, v142))
        {
          break;
        }

LABEL_63:
        v143 = OUTLINED_FUNCTION_4_40();
        if (!lpta_loadp_setscan_r(v143, v144))
        {
          OUTLINED_FUNCTION_7_39();
          if (!test_string_s())
          {
LABEL_107:
            v206 = 40;
LABEL_108:
            savescptr(a1, v206, v335);
            goto LABEL_143;
          }
        }

LABEL_65:
        v145 = OUTLINED_FUNCTION_6_39();
        starttest(v145, v146);
        v147 = OUTLINED_FUNCTION_4_40();
        if (!lpta_loadp_setscan_l(v147, v148))
        {
LABEL_77:
          OUTLINED_FUNCTION_12_38(42, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332);
LABEL_78:
          v182 = advance_tok(a1);
          v27 = v31;
          if (!v182)
          {
LABEL_79:
            v183 = OUTLINED_FUNCTION_6_39();
            bspush_ca_scan(v183, v184);
            OUTLINED_FUNCTION_6_39();
            bspush_ca_scan_boa();
            v76 = OUTLINED_FUNCTION_0_45();
LABEL_80:
            v117 = testFldeq(v76, v77, v78, v79);
            goto LABEL_81;
          }

          goto LABEL_8;
        }

LABEL_66:
        v149 = OUTLINED_FUNCTION_6_39();
        starttest(v149, v150);
        v151 = OUTLINED_FUNCTION_4_40();
        if (lpta_loadp_setscan_r(v151, v152) || (OUTLINED_FUNCTION_7_39(), test_string_s()))
        {
LABEL_68:
          v153 = OUTLINED_FUNCTION_6_39();
          starttest(v153, v154);
          v155 = OUTLINED_FUNCTION_3_42();
          if (!lpta_loadp_setscan_l(v155, v156))
          {
            v219 = OUTLINED_FUNCTION_6_39();
            bspush_ca_scan(v219, v220);
            v221 = OUTLINED_FUNCTION_6_39();
            bspush_ca_scan(v221, v222);
LABEL_102:
            OUTLINED_FUNCTION_7_39();
            v218 = test_string_s();
            goto LABEL_103;
          }

LABEL_69:
          v157 = OUTLINED_FUNCTION_6_39();
          starttest(v157, v158);
          v159 = OUTLINED_FUNCTION_3_42();
          if (!lpta_loadp_setscan_l(v159, v160))
          {
            OUTLINED_FUNCTION_7_39();
            if (!test_string_s())
            {
              v234 = OUTLINED_FUNCTION_0_45();
              v238 = testFldeq(v234, v235, v236, v237);
              v27 = v31;
              if (!v238)
              {
                OUTLINED_FUNCTION_6_39();
                bspush_ca_scan_boa();
                v239 = OUTLINED_FUNCTION_6_39();
                bspush_ca_scan(v239, v240);
                v41 = OUTLINED_FUNCTION_7_39();
                v44 = 21;
LABEL_15:
                v45 = testFldeq(v41, v42, v43, v44);
                v27 = v31;
                if (!v45)
                {
LABEL_16:
                  v27 = 1;
                }
              }

              goto LABEL_8;
            }
          }

LABEL_71:
          v161 = OUTLINED_FUNCTION_6_39();
          starttest(v161, v162);
          v163 = OUTLINED_FUNCTION_3_42();
          if (!lpta_loadp_setscan_l(v163, v164))
          {
            v207 = OUTLINED_FUNCTION_0_45();
            v211 = testFldeq(v207, v208, v209, v210);
            v27 = v31;
            if (v211)
            {
              goto LABEL_8;
            }

            v212 = advance_tok(a1);
            v27 = v31;
            if (v212)
            {
              goto LABEL_8;
            }

            v213 = OUTLINED_FUNCTION_0_45();
            v217 = testFldeq(v213, v214, v215, v216);
            v27 = v31;
            if (v217)
            {
              goto LABEL_8;
            }

            v218 = advance_tok(a1);
LABEL_103:
            v27 = v31;
            if (v218)
            {
              goto LABEL_8;
            }

LABEL_104:
            v223 = OUTLINED_FUNCTION_0_45();
LABEL_105:
            v227 = testFldeq(v223, v224, v225, v226);
            v27 = v31;
            if (v227)
            {
              goto LABEL_8;
            }

LABEL_106:
            v75 = advance_tok(a1);
LABEL_142:
            v27 = v31;
            if (v75)
            {
              goto LABEL_8;
            }

            goto LABEL_143;
          }

LABEL_72:
          v165 = OUTLINED_FUNCTION_6_39();
          starttest(v165, v166);
          v167 = OUTLINED_FUNCTION_3_42();
          if (!lpta_loadp_setscan_l(v167, v168))
          {
LABEL_73:
            OUTLINED_FUNCTION_12_38(65, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332);
            v169 = OUTLINED_FUNCTION_0_45();
            v173 = testFldeq(v169, v170, v171, v172);
            v27 = v31;
            if (!v173)
            {
              v174 = advance_tok(a1);
              v27 = v31;
              if (!v174)
              {
                v175 = OUTLINED_FUNCTION_8_39();
                v177 = lpta_loadp_setscan_r(v175, v176);
                v27 = v31;
                if (!v177)
                {
LABEL_76:
                  v178 = OUTLINED_FUNCTION_0_45();
                  goto LABEL_121;
                }
              }
            }

            goto LABEL_8;
          }
        }

        else
        {
LABEL_109:
          v228 = OUTLINED_FUNCTION_6_39();
          v231 = test_synch(v228, v229, 1u, v230);
          v27 = v31;
          if (v231)
          {
            goto LABEL_8;
          }

          v232 = OUTLINED_FUNCTION_3_42();
          if (lpta_loadp_setscan_l(v232, v233))
          {
            goto LABEL_149;
          }

          OUTLINED_FUNCTION_7_39();
          if (test_string_s())
          {
            goto LABEL_149;
          }
        }

LABEL_143:
        ++HIWORD(v338);
        OUTLINED_FUNCTION_19_30();
        forall_cont_from(a1);
LABEL_37:
        v93 = forall_to_test(a1, v336, v334);
        v27 = v31;
        if (v93)
        {
          goto LABEL_8;
        }
      }

LABEL_84:
      OUTLINED_FUNCTION_12_38(36, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332);
      v185 = advance_tok(a1);
      v27 = v31;
      if (!v185)
      {
        OUTLINED_FUNCTION_7_39();
        v63 = test_string_s();
LABEL_86:
        v27 = v31;
        if (!v63)
        {
LABEL_87:
          v186 = OUTLINED_FUNCTION_6_39();
          bspush_ca_scan(v186, v187);
          v188 = OUTLINED_FUNCTION_1_43();
          v191 = testFldeq(v188, v189, v190, 1);
          v27 = v31;
          if (!v191)
          {
            v192 = advance_tok(a1);
            v27 = v31;
            if (!v192)
            {
              v193 = OUTLINED_FUNCTION_8_39();
              v195 = lpta_loadp_setscan_r(v193, v194);
              v27 = v31;
              if (!v195)
              {
LABEL_120:
                v178 = OUTLINED_FUNCTION_1_43();
                v181 = 1;
LABEL_121:
                v255 = testFldeq(v178, v179, v180, v181);
                v27 = v31;
                if (!v255)
                {
                  v256 = advance_tok(a1);
                  v27 = v31;
                  if (!v256)
                  {
LABEL_123:
                    OUTLINED_FUNCTION_19_30();
                    v92 = forto_adv_upto_r(a1, v257, v258, 72, 1, v336);
LABEL_124:
                    v27 = v31;
                    if (!v92)
                    {
LABEL_149:
                      a2[1] = HIWORD(v338);
                      v13 = 0;
                      goto LABEL_4;
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

LABEL_3:
  v13 = 94;
LABEL_4:
  vretproc(a1);
  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t open_final_syll(void *a1, __int16 *a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v101 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_11_38(a1, a2, a3, a4, a5, a6, a7, a8, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94);
  OUTLINED_FUNCTION_16_35();
  bzero(v100, v10);
  v11 = setjmp(v100);
  if (!v11 && !OUTLINED_FUNCTION_15_35(v11, v12, v13, v14, v15, v16, v17, v18, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, *v96, v96[4], *v97, *&v97[4], v97[6], v98, SWORD2(v98), SBYTE6(v98), SHIBYTE(v98), v99, v100[0]))
  {
    v21 = OUTLINED_FUNCTION_14_36();
    get_parm(v21, v22, a2, -6);
    OUTLINED_FUNCTION_22_28(v23, v24, &null_str_17);
    v25 = OUTLINED_FUNCTION_6_39();
    starttest(v25, v26);
    bspush_ca_boa();
    v27 = OUTLINED_FUNCTION_14_36();
    if (lpta_loadp_setscan_r(v27, v28))
    {
      v29 = 0;
    }

    else
    {
      v30 = OUTLINED_FUNCTION_6_39();
      bspush_ca_scan(v30, v31);
      v32 = OUTLINED_FUNCTION_2_42();
      if (testFldeq(v32, v33, v34, 2) || (v35 = OUTLINED_FUNCTION_9_38(), testFldeq(v35, v36, 17, 1)))
      {
        v29 = 0;
      }

      else
      {
        v37 = advance_tok(a1);
        v38 = 0;
        v29 = 0;
        if (!v37)
        {
          goto LABEL_11;
        }
      }
    }

    while (1)
    {
      v43 = a1[13];
      if (v43)
      {
        v44 = OUTLINED_FUNCTION_18_34(v43);
      }

      else
      {
        v44 = vback(a1, v29);
        v45 = 0;
      }

      v38 = v45;
      if (v44 != 3)
      {
        break;
      }

LABEL_11:
      v39 = v38;
      v40 = OUTLINED_FUNCTION_6_39();
      if (test_synch(v40, v41, 1u, v42))
      {
        v29 = v39;
      }

      else
      {
        v29 = 1;
      }
    }

    if (v44 == 2)
    {
      bspop_boa(a1);
    }

    else if (v44 == 1)
    {
      vretproc(a1);
      result = 0;
      goto LABEL_4;
    }
  }

  vretproc(a1);
  result = 94;
LABEL_4:
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t is_one_syll(uint64_t a1, __int16 *a2, __int16 *a3, int a4, int a5, int a6, int a7, int a8)
{
  v61 = *MEMORY[0x277D85DE8];
  v56[0] = 0;
  v56[1] = 0;
  OUTLINED_FUNCTION_11_38(a1, a2, a3, a4, a5, a6, a7, a8, v54[0], v54[1], v54[2], v54[3], v54[4], v54[5], v54[6], v54[7], v54[8], v54[9], v54[10], v54[11], v54[12], v54[13], v54[14], v54[15], v54[16], v54[17], v54[18], v54[19], v54[20], v54[21], v54[22], v54[23], v55);
  OUTLINED_FUNCTION_16_35();
  bzero(v60, v11);
  if (!setjmp(v60) && !ventproc(a1, v54, v59, v58, v57, v60))
  {
    get_parm(a1, v56, a2, -6);
    v14 = OUTLINED_FUNCTION_13_37();
    get_parm(v14, v15, a3, -6);
    OUTLINED_FUNCTION_22_28(v16, v17, &null_str_17);
    v18 = OUTLINED_FUNCTION_6_39();
    starttest(v18, v19);
    bspush_ca_boa();
    v20 = lpta_loadp_setscan_r(a1, v56);
    v21 = 0;
    v22 = 0;
    if (!v20)
    {
LABEL_6:
      v22 = v21;
      v23 = OUTLINED_FUNCTION_6_39();
      bspush_ca_scan(v23, v24);
      v25 = OUTLINED_FUNCTION_2_42();
      if (!testFldeq(v25, v26, v27, 1))
      {
        v28 = advance_tok(a1);
        v29 = v22;
        if (!v28)
        {
LABEL_8:
          v30 = v29;
          v31 = OUTLINED_FUNCTION_6_39();
          bspush_ca_scan(v31, v32);
          v33 = OUTLINED_FUNCTION_6_39();
          bspush_ca_scan(v33, v34);
          v35 = v30;
LABEL_27:
          v22 = v35;
          *(a1 + 136) = 1;
          *(a1 + 112) = v55;
          *(a1 + 128) = 0;
          if (!test_ptr(a1))
          {
            v22 = 1;
          }
        }
      }
    }

    v41 = v22;
    while (2)
    {
      v36 = *(a1 + 104);
      if (v36)
      {
        v37 = OUTLINED_FUNCTION_18_34(v36);
        v39 = v38;
      }

      else
      {
        v37 = vback(a1, v41);
        v39 = 0;
      }

      v21 = v39;
      v29 = v39;
      v35 = v39;
      switch(v37)
      {
        case 1:
          vretproc(a1);
          result = 0;
          goto LABEL_4;
        case 2:
          bspop_boa(a1);
          break;
        case 3:
          goto LABEL_6;
        case 4:
          bspop_boa(a1);
          v40 = advance_tok(a1);
          v21 = v39;
          v41 = v39;
          if (!v40)
          {
            goto LABEL_6;
          }

          continue;
        case 5:
        case 8:
          bspush_ca_scan_boa();
          v49 = OUTLINED_FUNCTION_2_42();
          if (testFldeq(v49, v50, v51, 1))
          {
            v41 = v39;
          }

          else
          {
            v41 = 1;
          }

          continue;
        case 6:
          goto LABEL_8;
        case 7:
          bspop_boa(a1);
          v43 = advance_tok(a1);
          v29 = v39;
          v41 = v39;
          if (!v43)
          {
            goto LABEL_8;
          }

          continue;
        case 9:
          OUTLINED_FUNCTION_2_42();
          v42 = test_string_s();
          v41 = v39;
          if (v42)
          {
            continue;
          }

          v52 = OUTLINED_FUNCTION_6_39();
          bspush_ca_scan(v52, v53);
          v35 = v39;
          goto LABEL_27;
        case 10:
          goto LABEL_27;
        case 11:
          v44 = OUTLINED_FUNCTION_2_42();
          v47 = testFldeq(v44, v45, v46, 2);
          v41 = v39;
          if (!v47)
          {
            v48 = advance_tok(a1);
            v35 = v39;
            v41 = v39;
            if (!v48)
            {
              goto LABEL_27;
            }
          }

          continue;
        default:
          goto LABEL_3;
      }

      break;
    }
  }

LABEL_3:
  vretproc(a1);
  result = 94;
LABEL_4:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void OUTLINED_FUNCTION_11_38(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  a32 = 0;
  a33 = 0;

  bzero(&a9, 0xB8uLL);
}

double OUTLINED_FUNCTION_12_38@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{

  *&result = savescptr(v25, a1, &a25).n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_15_35(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, char a35, int a36, __int16 a37, char a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, char a44)
{

  return ventproc(v44, &a9, &a42, &a38, &a35, &a44);
}

uint64_t OUTLINED_FUNCTION_21_29()
{
  *(v1 + 112) = v0;
  *(v1 + 128) = 0;

  return proj_def();
}

void *OUTLINED_FUNCTION_22_28(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return fence_42(v3, 0, a3);
}

uint64_t fren_symbolic_rules(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  bzero(v4, 0xB8uLL);
  bzero(v8, 0xC0uLL);
  if (setjmp(v8) || ventproc(a1, v4, v7, v6, v5, v8))
  {
    vretproc(a1);
    result = 94;
  }

  else
  {
    fence_43(a1);
    init_fren_word_vars(a1);
    break_into_morphs(a1);
    if (*(a1 + 4050) != 1 && *(a1 + 4094) != 1)
    {
      generate_diaphones();
      adjust_phones();
    }

    vretproc(a1);
    result = 0;
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t fren_phnol_rules(void *a1, uint64_t a2, __int16 *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v25 = 0;
  v26 = 0;
  v23 = 0;
  v24 = 0;
  v22[0] = 0;
  v22[1] = 0;
  bzero(v21, 0xB8uLL);
  bzero(v30, 0xC0uLL);
  if (!setjmp(v30) && !ventproc(a1, v21, v29, v28, v27, v30))
  {
    v9 = OUTLINED_FUNCTION_1_44();
    get_parm(v9, v10, a2, -6);
    get_parm(a1, &v23, a3, -6);
    push_ptr_init(a1, v22);
    fence_43(a1);
    startloop(a1, 1);
    v11 = OUTLINED_FUNCTION_1_44();
    lpta_loadpn(v11, v12);
    lpta_mover();
    v13 = OUTLINED_FUNCTION_0_46();
    lpta_storep(v13, v14);
    lpta_loadpn(a1, &v23);
    lpta_mover();
    lpta_storep(a1, v22);
    v15 = OUTLINED_FUNCTION_0_46();
    if (!forall_to_test(v15, v16, v22))
    {
LABEL_6:
      bspush_ca(a1);
      v17 = OUTLINED_FUNCTION_0_46();
      if (!lpta_loadp_setscan_r(v17, v18) && !advance_tok(a1))
      {
LABEL_8:
        savescptr(a1, 4, (a1 + 167));
LABEL_9:
        init_phnol_vars(a1);
LABEL_10:
        pre_syll_phonology(a1);
LABEL_11:
        starttest(a1, 3);
        reset_phnol_vars(a1);
LABEL_12:
        if (!forto_adv_upto_r(a1, 1, 2, 7, 4, (a1 + 165)))
        {
LABEL_17:
          v26 = v24;
          *(a2 + 8) = v24;
          v6 = 0;
          goto LABEL_4;
        }
      }
    }

    v19 = a1[13];
    if (v19)
    {
      a1[13] = 0;
      v20 = v19;
    }

    else
    {
      v20 = vback(a1, 0);
    }

    switch(v20)
    {
      case 1:
        goto LABEL_17;
      case 2:
        goto LABEL_9;
      case 3:
        goto LABEL_12;
      case 4:
        goto LABEL_8;
      case 5:
        goto LABEL_10;
      case 6:
        goto LABEL_11;
      case 7:
        goto LABEL_6;
      default:
        break;
    }
  }

  v6 = 94;
LABEL_4:
  vretproc(a1);
  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t fren_phrase_level_rules(uint64_t a1, uint64_t a2, __int16 *a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v35 = 0;
  v36 = 0;
  v33 = 0;
  v34 = 0;
  v32[0] = 0;
  v32[1] = 0;
  bzero(v31, 0xB8uLL);
  bzero(v40, 0xC0uLL);
  if (!setjmp(v40) && !ventproc(a1, v31, v39, v38, v37, v40))
  {
    v7 = OUTLINED_FUNCTION_1_44();
    get_parm(v7, v8, a2, -6);
    get_parm(a1, &v33, a3, -6);
    push_ptr_init(a1, v32);
    fence_43(a1);
    v9 = OUTLINED_FUNCTION_1_44();
    if (lpta_loadp_setscan_l(v9, v10) || advance_tok(a1) || (*(a1 + 136) = 1, *(a1 + 112) = v34, *(a1 + 128) = 0, test_ptr(a1)))
    {
      while (2)
      {
        startloop(a1, 2);
        lpta_loadpn(a1, &v35);
        lpta_mover();
        v11 = OUTLINED_FUNCTION_0_46();
        lpta_storep(v11, v12);
        lpta_loadpn(a1, &v33);
        lpta_mover();
        lpta_storep(a1, v32);
        v13 = OUTLINED_FUNCTION_0_46();
        if (forall_to_test(v13, v14, v32))
        {
          goto LABEL_15;
        }

LABEL_9:
        bspush_ca(a1);
        v22 = OUTLINED_FUNCTION_0_46();
        if (lpta_loadp_setscan_r(v22, v23) || advance_tok(a1))
        {
          goto LABEL_15;
        }

LABEL_11:
        savescptr(a1, 5, a1 + 1336);
LABEL_12:
        starttest(a1, 6);
        lpta_loadpn(a1, a1 + 6256);
        rpta_loadpn(a1, a1 + 1336);
        if (compare_ptas(a1) || testeq(a1))
        {
LABEL_19:
          init_phrase_level_vars(a1, v15, v16, v17, v18, v19, v20, v21);
LABEL_20:
          create_syllables(a1, v15, v16, v17, v18, v19, v20, v21);
LABEL_21:
          v26 = OUTLINED_FUNCTION_1_44();
          starttest(v26, v27);
          if (*(a1 + 4014))
          {
LABEL_22:
            assign_stress(a1, v15, v16, v17, v18, v19, v20, v21);
LABEL_23:
            break_into_phones();
LABEL_24:
            starttest(a1, 4);
            copy_stress_to_phones();
          }
        }

LABEL_14:
        if (forto_adv_upto_r(a1, 2, 3, 12, 4, a1 + 1320))
        {
LABEL_15:
          v24 = *(a1 + 104);
          if (v24)
          {
            *(a1 + 104) = 0;
            v25 = v24;
          }

          else
          {
            v25 = vback(a1, 0);
          }

          switch(v25)
          {
            case 1:
              continue;
            case 2:
              goto LABEL_25;
            case 3:
              goto LABEL_12;
            case 4:
              goto LABEL_14;
            case 5:
              goto LABEL_11;
            case 6:
              goto LABEL_19;
            case 7:
              goto LABEL_20;
            case 8:
              goto LABEL_21;
            case 9:
              goto LABEL_22;
            case 10:
              goto LABEL_23;
            case 11:
              goto LABEL_24;
            case 12:
              goto LABEL_9;
            case 13:
              goto LABEL_26;
            case 14:
              goto LABEL_29;
            default:
              goto LABEL_3;
          }
        }

        break;
      }

LABEL_25:
      if (lpta_loadp_setscan_l(a1, a1 + 6256))
      {
LABEL_26:
        v28 = &v34;
      }

      else
      {
        v28 = (a1 + 6264);
      }

      v36 = *v28;
LABEL_29:
      v29 = *(a1 + 3544);
      *(a1 + 6248) = v29;
      *(a1 + 6264) = v29;
      *(a1 + 4050) = 0;
    }

    *(a2 + 8) = v36;
    vretproc(a1);
    result = 0;
    goto LABEL_4;
  }

LABEL_3:
  vretproc(a1);
  result = 94;
LABEL_4:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void *fence_44(uint64_t a1, int a2, uint64_t a3)
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

uint64_t assign_canfren_affricates(void *a1)
{
  v84 = *MEMORY[0x277D85DE8];
  v79[0] = 0;
  v79[1] = 0;
  v78[0] = 0;
  v78[1] = 0;
  v77[0] = 0;
  v77[1] = 0;
  bzero(v76, 0xB8uLL);
  OUTLINED_FUNCTION_21_30();
  bzero(v83, v2);
  if (!setjmp(v83) && !ventproc(a1, v76, v82, v81, v80, v83))
  {
    v6 = OUTLINED_FUNCTION_16_36();
    push_ptr_init(v6, v7);
    push_ptr_init(a1, v78);
    v8 = OUTLINED_FUNCTION_19_31();
    push_ptr_init(v8, v9);
    v10 = 0;
    v11 = OUTLINED_FUNCTION_24_28();
    fence_44(v11, v12, v13);
    v14 = OUTLINED_FUNCTION_9_39();
    startloop(v14, v15);
    lpta_loadpn(a1, a1 + 165);
    OUTLINED_FUNCTION_8_40();
    lpta_mover();
    v16 = OUTLINED_FUNCTION_16_36();
    lpta_storep(v16, v17);
    lpta_loadpn(a1, a1 + 167);
    OUTLINED_FUNCTION_8_40();
    lpta_mover();
    v18 = OUTLINED_FUNCTION_19_31();
    lpta_storep(v18, v19);
    v20 = OUTLINED_FUNCTION_16_36();
    v22 = 0;
    if (forall_to_test(v20, v21, v77))
    {
      goto LABEL_57;
    }

LABEL_8:
    v22 = v10;
    v23 = OUTLINED_FUNCTION_9_39();
    bspush_ca(v23);
    v24 = OUTLINED_FUNCTION_11_39();
    if (!lpta_loadp_setscan_r(v24, v25))
    {
      v26 = v10;
      if (!advance_tok(a1))
      {
LABEL_10:
        savescptr(a1, 4, v78);
LABEL_11:
        v22 = v26;
        v27 = OUTLINED_FUNCTION_11_39();
        if (lpta_loadp_setscan_r(v27, v28) || (OUTLINED_FUNCTION_0_47(), test_string_s()))
        {
LABEL_13:
          v29 = OUTLINED_FUNCTION_9_39();
          starttest(v29, v30);
          v31 = OUTLINED_FUNCTION_11_39();
          if (!lpta_loadp_setscan_r(v31, v32))
          {
            OUTLINED_FUNCTION_0_47();
            if (!test_string_s())
            {
              v33 = OUTLINED_FUNCTION_9_39();
              starttest_l(v33, v34);
              v35 = OUTLINED_FUNCTION_11_39();
              if (!lpta_loadp_setscan_r(v35, v36))
              {
                OUTLINED_FUNCTION_9_39();
                bspush_ca_scan_boa();
                v37 = 19;
                v26 = v22;
LABEL_54:
                if (test_synch(a1, v37, 1u, &_MergedGlobals_39))
                {
                  v22 = v26;
                }

                else
                {
                  v22 = 1;
                }

                goto LABEL_57;
              }
            }
          }

          goto LABEL_18;
        }

        v38 = OUTLINED_FUNCTION_9_39();
        starttest_l(v38, v39);
        v40 = OUTLINED_FUNCTION_11_39();
        if (lpta_loadp_setscan_r(v40, v41))
        {
LABEL_18:
          v42 = v22;
LABEL_19:
          v22 = v42;
          OUTLINED_FUNCTION_30_24();
          if (!forto_adv_upto_r(a1, v43, v44, 26, v45, v79))
          {
LABEL_20:
            v3 = 0;
            goto LABEL_4;
          }

          goto LABEL_57;
        }

        v46 = OUTLINED_FUNCTION_9_39();
        bspush_ca_scan(v46, v47);
        OUTLINED_FUNCTION_0_47();
        v48 = test_string_s();
        v49 = v26;
        if (v48)
        {
          goto LABEL_57;
        }

LABEL_22:
        v22 = v49;
        v50 = OUTLINED_FUNCTION_9_39();
        starttest(v50, v51);
        v52 = OUTLINED_FUNCTION_9_39();
        bspush_ca(v52);
        OUTLINED_FUNCTION_9_39();
        bspush_ca_boa();
        v53 = OUTLINED_FUNCTION_11_39();
        v55 = lpta_loadp_setscan_r(v53, v54);
        v37 = 15;
        v26 = v22;
        if (!v55)
        {
          goto LABEL_54;
        }
      }
    }

LABEL_57:
    v69 = v22;
    while (2)
    {
      v56 = a1[13];
      if (v56)
      {
        v57 = OUTLINED_FUNCTION_22_29(v56);
        v26 = v58;
      }

      else
      {
        v57 = vback(a1, v69);
        v26 = 0;
      }

      v49 = v26;
      v42 = v26;
      switch(v57)
      {
        case 1:
          goto LABEL_20;
        case 2:
          goto LABEL_11;
        case 3:
        case 6:
        case 17:
          goto LABEL_19;
        case 4:
          goto LABEL_10;
        case 5:
          v22 = v26;
          goto LABEL_13;
        case 7:
          bspush_ca_scan(a1, 9);
          OUTLINED_FUNCTION_0_47();
          goto LABEL_43;
        case 8:
          goto LABEL_22;
        case 9:
          bspush_ca_scan(a1, 10);
          OUTLINED_FUNCTION_0_47();
          goto LABEL_43;
        case 10:
          bspush_ca_scan(a1, 11);
          OUTLINED_FUNCTION_0_47();
          goto LABEL_43;
        case 11:
          bspush_ca_scan(a1, 12);
          OUTLINED_FUNCTION_0_47();
          goto LABEL_43;
        case 12:
          OUTLINED_FUNCTION_0_47();
LABEL_43:
          v72 = test_string_s();
          v49 = v26;
          v69 = v26;
          if (!v72)
          {
            goto LABEL_22;
          }

          continue;
        case 13:
          v66 = OUTLINED_FUNCTION_19_31();
          v68 = lpta_loadp_setscan_r(v66, v67);
          v69 = v26;
          if (v68)
          {
            continue;
          }

          v70 = testFldeq(a1, 4u, 1, 4);
          v69 = v26;
          if (v70)
          {
            continue;
          }

          v71 = advance_tok(a1);
          v69 = v26;
          if (v71)
          {
            continue;
          }

          goto LABEL_32;
        case 14:
          bspop_boa(a1);
          goto LABEL_32;
        case 15:
          v75 = 15;
          goto LABEL_53;
        case 16:
LABEL_32:
          lpta_rpta_loadp(a1, v79, v78);
          v59 = OUTLINED_FUNCTION_0_47();
          v63 = &unk_28064BB31;
          goto LABEL_49;
        case 18:
          bspop_boa(a1);
          bspush_ca_scan(a1, 20);
          OUTLINED_FUNCTION_0_47();
          goto LABEL_47;
        case 19:
          v75 = 19;
LABEL_53:
          v37 = v75;
          goto LABEL_54;
        case 20:
          bspush_ca_scan(a1, 22);
          OUTLINED_FUNCTION_0_47();
          goto LABEL_47;
        case 21:
          goto LABEL_48;
        case 22:
          bspush_ca_scan(a1, 23);
          OUTLINED_FUNCTION_0_47();
          goto LABEL_47;
        case 23:
          v64 = OUTLINED_FUNCTION_16_36();
          bspush_ca_scan(v64, v65);
          OUTLINED_FUNCTION_0_47();
          goto LABEL_47;
        case 24:
          bspush_ca_scan(a1, 25);
          OUTLINED_FUNCTION_0_47();
          goto LABEL_47;
        case 25:
          OUTLINED_FUNCTION_0_47();
LABEL_47:
          v73 = test_string_s();
          v69 = v26;
          if (v73)
          {
            continue;
          }

LABEL_48:
          lpta_rpta_loadp(a1, v79, v78);
          v59 = OUTLINED_FUNCTION_0_47();
          v63 = &unk_28064BB33;
LABEL_49:
          inserted = insert_2pt_s(v59, v60, v61, v63, v62);
          v42 = v26;
          v69 = v26;
          if (!inserted)
          {
            goto LABEL_19;
          }

          continue;
        case 26:
          v10 = v26;
          goto LABEL_8;
        default:
          goto LABEL_3;
      }
    }
  }

LABEL_3:
  v3 = 94;
LABEL_4:
  vretproc(a1);
  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t canfren_phon_rules(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v179 = *MEMORY[0x277D85DE8];
  v167 = 0;
  v168 = 0;
  OUTLINED_FUNCTION_10_39(a1, a2, a3, a4, a5, a6, a7, a8, v94, v97, v100, v103, v106, v109, v112, v115, v118, v121, v124, v127, v130, v133, v136, v139, v142, v145, v148, v151, v154, v157, v160, v163, v164, v165, v166);
  OUTLINED_FUNCTION_21_30();
  bzero(v178, v9);
  v10 = setjmp(v178);
  if (v10 || OUTLINED_FUNCTION_15_36(v10, v11, v12, v13, v14, v15, v16, v17, v95, v98, v101, v104, v107, v110, v113, v116, v119, v122, v125, v128, v131, v134, v137, v140, v143, v146, v149, v152, v155, v158, v161, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177))
  {
    goto LABEL_3;
  }

  v20 = OUTLINED_FUNCTION_16_36();
  push_ptr_init(v20, v21);
  v22 = OUTLINED_FUNCTION_14_37();
  push_ptr_init(v22, v23);
  v24 = OUTLINED_FUNCTION_19_31();
  push_ptr_init(v24, v25);
  v26 = 0;
  v27 = OUTLINED_FUNCTION_24_28();
  fence_44(v27, v28, v29);
  v30 = OUTLINED_FUNCTION_9_39();
  startloop(v30, v31);
  lpta_loadpn(a1, a1 + 1320);
  OUTLINED_FUNCTION_8_40();
  lpta_mover();
  v32 = OUTLINED_FUNCTION_16_36();
  lpta_storep(v32, v33);
  lpta_loadpn(a1, a1 + 1336);
  OUTLINED_FUNCTION_8_40();
  lpta_mover();
  v34 = OUTLINED_FUNCTION_19_31();
  lpta_storep(v34, v35);
  v36 = OUTLINED_FUNCTION_16_36();
  v38 = forall_to_test(v36, v37, &v163);
  v39 = 0;
  if (v38)
  {
    goto LABEL_23;
  }

LABEL_7:
  v40 = OUTLINED_FUNCTION_9_39();
  bspush_ca(v40);
  v41 = OUTLINED_FUNCTION_1_45();
  if (lpta_loadp_setscan_r(v41, v42) || (v43 = OUTLINED_FUNCTION_0_47(), testFldeq(v43, v44, v45, 1)))
  {
    v39 = v26;
    goto LABEL_23;
  }

  v46 = advance_tok(a1);
  v47 = v26;
  v39 = v26;
  if (v46)
  {
LABEL_23:
    while (2)
    {
      v62 = *(a1 + 104);
      if (v62)
      {
        v63 = OUTLINED_FUNCTION_22_29(v62);
        v47 = v64;
      }

      else
      {
        v63 = vback(a1, v39);
        v47 = 0;
      }

      v65 = v47;
      v66 = v47;
      switch(v63)
      {
        case 2:
          goto LABEL_12;
        case 3:
          v48 = v47;
          goto LABEL_38;
        case 4:
          break;
        case 5:
          goto LABEL_13;
        case 6:
          v48 = v47;
          goto LABEL_14;
        case 7:
          goto LABEL_36;
        case 8:
          bspop_boa(a1);
          v67 = advance_tok(a1);
          v39 = v47;
          if (v67)
          {
            continue;
          }

          OUTLINED_FUNCTION_6_40();
          insert_lax_vowel();
          goto LABEL_35;
        case 9:
LABEL_35:
          OUTLINED_FUNCTION_6_40();
          mark_high_vowel_deletion();
LABEL_36:
          v48 = v47;
          goto LABEL_37;
        case 10:
          OUTLINED_FUNCTION_0_47();
          v68 = test_string_s();
          v65 = v47;
          v39 = v47;
          if (!v68)
          {
            goto LABEL_43;
          }

          continue;
        case 11:
          goto LABEL_43;
        case 12:
          v69 = OUTLINED_FUNCTION_7_40();
          v39 = v47;
          if (!v69)
          {
            v70 = advance_tok(a1);
            v66 = v47;
            v39 = v47;
            if (!v70)
            {
              goto LABEL_44;
            }
          }

          continue;
        case 13:
          goto LABEL_44;
        case 14:
          v26 = v47;
          goto LABEL_7;
        default:
          goto LABEL_3;
      }

      break;
    }
  }

  OUTLINED_FUNCTION_26_28(4, v96, v99, v102, v105, v108, v111, v114, v117, v120, v123, v126, v129, v132, v135, v138, v141, v144, v147, v150, v153, v156, v159, v162, v163, v164, v165);
LABEL_12:
  OUTLINED_FUNCTION_6_40();
  insert_long_vowel();
LABEL_13:
  v48 = v47;
  if (*(a1 + 4050) != 1)
  {
LABEL_14:
    v49 = OUTLINED_FUNCTION_9_39();
    starttest(v49, v50);
    v51 = OUTLINED_FUNCTION_1_45();
    if (!lpta_loadp_setscan_r(v51, v52))
    {
      v53 = OUTLINED_FUNCTION_2_43();
      if (!testFldeq(v53, v54, 6, v55))
      {
        v56 = OUTLINED_FUNCTION_2_43();
        if (!testFldeq(v56, v57, 8, v58))
        {
          OUTLINED_FUNCTION_9_39();
          bspush_ca_scan_boa();
          v59 = OUTLINED_FUNCTION_2_43();
          if (testFldeq(v59, v60, 9, v61))
          {
            v39 = v48;
          }

          else
          {
            v39 = 1;
          }

          goto LABEL_23;
        }
      }

LABEL_22:
      v39 = v48;
      goto LABEL_23;
    }

LABEL_37:
    v71 = OUTLINED_FUNCTION_9_39();
    starttest(v71, v72);
    v73 = OUTLINED_FUNCTION_1_45();
    if (!lpta_loadp_setscan_r(v73, v74))
    {
      v79 = OUTLINED_FUNCTION_2_43();
      if (testFldeq(v79, v80, 9, v81) || advance_tok(a1))
      {
        goto LABEL_22;
      }

      v82 = OUTLINED_FUNCTION_9_39();
      bspush_ca_scan(v82, v83);
      v65 = v48;
LABEL_43:
      v84 = v65;
      v85 = OUTLINED_FUNCTION_9_39();
      bspush_ca_scan(v85, v86);
      v66 = v84;
LABEL_44:
      v48 = v66;
      v87 = OUTLINED_FUNCTION_9_39();
      if (test_synch(v87, v88, 1u, v89))
      {
        goto LABEL_22;
      }

      v90 = OUTLINED_FUNCTION_6_40();
      lpta_rpta_loadp(v90, v91, v92);
      OUTLINED_FUNCTION_4_41();
      v93 = mark_s();
      v39 = v48;
      if (v93)
      {
        goto LABEL_23;
      }
    }

LABEL_38:
    OUTLINED_FUNCTION_30_24();
    v78 = forto_adv_upto_r(a1, v75, v76, 14, v77, &v167);
    v39 = v48;
    if (!v78)
    {
      goto LABEL_3;
    }

    goto LABEL_23;
  }

LABEL_3:
  vretproc(a1);
  v18 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_31_23();
}

uint64_t insert_long_vowel()
{
  OUTLINED_FUNCTION_25_28();
  v400 = *MEMORY[0x277D85DE8];
  v388 = 0;
  v389 = 0;
  OUTLINED_FUNCTION_10_39(v3, v4, v5, v6, v7, v8, v9, v10, v310, v313, v316, v319, v322, v325, v328, v331, v334, v337, v340, v343, v346, v349, v352, v355, v358, v361, v364, v367, v370, v373, v376, v379, v382, v384, v386);
  OUTLINED_FUNCTION_21_30();
  bzero(v399, v11);
  v12 = setjmp(v399);
  if (v12 || OUTLINED_FUNCTION_15_36(v12, v13, v14, v15, v16, v17, v18, v19, v311, v314, v317, v320, v323, v326, v329, v332, v335, v338, v341, v344, v347, v350, v353, v356, v359, v362, v365, v368, v371, v374, v377, v380, v383, v385, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398))
  {
    goto LABEL_3;
  }

  get_parm(v0, &v388, v2, -6);
  v22 = OUTLINED_FUNCTION_14_37();
  get_parm(v22, v23, v1, -6);
  v24 = OUTLINED_FUNCTION_18_35();
  push_ptr_init(v24, v25);
  v26 = 0;
  v27 = OUTLINED_FUNCTION_24_28();
  fence_44(v27, v28, v29);
  fence_44(v0, 1, &_MergedGlobals_39);
  starttest(v0, 1);
  if (!lpta_loadp_setscan_r(v0, &v388))
  {
    v86 = OUTLINED_FUNCTION_8_40();
    v88 = testFldeq(v86, v87, 9, 0);
    v73 = 0;
    if (!v88)
    {
      v89 = advance_tok(v0);
      v73 = 0;
      if (!v89)
      {
        goto LABEL_3;
      }
    }

    goto LABEL_45;
  }

LABEL_5:
  if (*(v0 + 4050) == 1)
  {
    v30 = OUTLINED_FUNCTION_29_25();
    starttest_e(v30, v31);
    v32 = OUTLINED_FUNCTION_13_38();
    if (!lpta_loadp_setscan_r(v32, v33))
    {
      v66 = OUTLINED_FUNCTION_9_39();
      bspush_ca_scan(v66, v67);
      v68 = OUTLINED_FUNCTION_5_40();
      v71 = testFldeq(v68, v69, v70, 28);
      v72 = v26;
      v73 = v26;
      if (v71)
      {
        goto LABEL_45;
      }

LABEL_21:
      v26 = v72;
      goto LABEL_22;
    }
  }

LABEL_7:
  v34 = OUTLINED_FUNCTION_9_39();
  starttest(v34, v35);
  if (!lpta_loadp_setscan_r(v0, v0 + 1320))
  {
    if (npush_fld(v0, 4u, 6))
    {
      goto LABEL_176;
    }

    npush_i(v0);
    if (if_testgt(v0, v59, v60, v61, v62, v63, v64, v65))
    {
      goto LABEL_176;
    }

    goto LABEL_22;
  }

LABEL_8:
  v36 = OUTLINED_FUNCTION_9_39();
  starttest(v36, v37);
  v38 = OUTLINED_FUNCTION_3_43();
  v40 = v26;
  if (lpta_loadp_setscan_r(v38, v39))
  {
LABEL_9:
    v41 = OUTLINED_FUNCTION_9_39();
    starttest(v41, v42);
    v43 = OUTLINED_FUNCTION_1_45();
    if (!lpta_loadp_setscan_r(v43, v44))
    {
      v75 = OUTLINED_FUNCTION_9_39();
      bspush_ca_scan(v75, v76);
      v77 = OUTLINED_FUNCTION_8_40();
      v79 = testFldeq(v77, v78, 11, 1);
      v80 = v26;
      v73 = v26;
      if (!v79)
      {
LABEL_25:
        v81 = v80;
        if (advance_tok(v0))
        {
          goto LABEL_183;
        }

        goto LABEL_26;
      }

      goto LABEL_45;
    }

LABEL_10:
    v45 = OUTLINED_FUNCTION_1_45();
    if (!lpta_loadp_setscan_r(v45, v46))
    {
      OUTLINED_FUNCTION_0_47();
      if (!test_string_s())
      {
        v47 = OUTLINED_FUNCTION_1_45();
        if (!lpta_loadp_setscan_l(v47, v48))
        {
          OUTLINED_FUNCTION_0_47();
          if (!test_string_s())
          {
            v49 = OUTLINED_FUNCTION_9_39();
            starttest(v49, v50);
            v51 = OUTLINED_FUNCTION_3_43();
            if (lpta_loadp_setscan_r(v51, v52))
            {
LABEL_152:
              v263 = OUTLINED_FUNCTION_9_39();
              starttest(v263, v264);
              v265 = OUTLINED_FUNCTION_3_43();
              if (lpta_loadp_setscan_r(v265, v266))
              {
                goto LABEL_3;
              }

              v267 = OUTLINED_FUNCTION_9_39();
              bspush_ca_scan(v267, v268);
              OUTLINED_FUNCTION_0_47();
              v269 = test_string_s();
              v118 = v26;
              v73 = v26;
              if (!v269)
              {
LABEL_154:
                v270 = v118;
                v271 = OUTLINED_FUNCTION_9_39();
                bspush_ca_scan(v271, v272);
                v119 = v270;
LABEL_155:
                v81 = v119;
                goto LABEL_182;
              }

              goto LABEL_45;
            }

            v53 = OUTLINED_FUNCTION_9_39();
            bspush_ca_scan(v53, v54);
            v55 = OUTLINED_FUNCTION_5_40();
            if (!testFldeq(v55, v56, v57, 11))
            {
              OUTLINED_FUNCTION_9_39();
              bspush_ca_scan_boa();
              v58 = OUTLINED_FUNCTION_7_40();
              goto LABEL_163;
            }

            goto LABEL_176;
          }
        }

LABEL_157:
        v273 = OUTLINED_FUNCTION_9_39();
        starttest(v273, v274);
        OUTLINED_FUNCTION_9_39();
        bspush_ca_boa();
        OUTLINED_FUNCTION_28_25();
        v275 = OUTLINED_FUNCTION_12_39();
        v277 = 190;
LABEL_162:
        v58 = setd_lookup(v275, v276, v277);
LABEL_163:
        if (v58)
        {
          v73 = v26;
        }

        else
        {
          v73 = 1;
        }

        goto LABEL_45;
      }
    }

LABEL_159:
    v278 = OUTLINED_FUNCTION_1_45();
    if (!lpta_loadp_setscan_r(v278, v279))
    {
      OUTLINED_FUNCTION_0_47();
      if (!test_string_s())
      {
        v280 = OUTLINED_FUNCTION_9_39();
        starttest(v280, v281);
        OUTLINED_FUNCTION_9_39();
        bspush_ca_boa();
        OUTLINED_FUNCTION_28_25();
        v275 = OUTLINED_FUNCTION_12_39();
        v277 = 192;
        goto LABEL_162;
      }
    }

LABEL_167:
    v282 = OUTLINED_FUNCTION_9_39();
    starttest(v282, v283);
    v284 = OUTLINED_FUNCTION_3_43();
    if (lpta_loadp_setscan_r(v284, v285))
    {
LABEL_168:
      v286 = OUTLINED_FUNCTION_9_39();
      starttest(v286, v287);
      v288 = OUTLINED_FUNCTION_1_45();
      if (lpta_loadp_setscan_r(v288, v289))
      {
        goto LABEL_3;
      }

      v290 = OUTLINED_FUNCTION_9_39();
      bspush_ca_scan(v290, v291);
      OUTLINED_FUNCTION_0_47();
      v292 = test_string_s();
      v73 = v26;
      v122 = v26;
      if (v292)
      {
        goto LABEL_45;
      }

LABEL_170:
      v26 = v122;
      v293 = OUTLINED_FUNCTION_0_47();
      if (!testFldeq(v293, v294, v295, 2))
      {
        v296 = advance_tok(v0);
        v123 = 79;
        v73 = v26;
        v124 = v26;
        if (!v296)
        {
          goto LABEL_172;
        }

        goto LABEL_45;
      }
    }

    else
    {
      v301 = OUTLINED_FUNCTION_9_39();
      bspush_ca_scan(v301, v302);
      OUTLINED_FUNCTION_0_47();
      if (!test_string_s())
      {
        v303 = 68;
LABEL_179:
        bspush_ca_scan(v0, v303);
        v120 = v26;
LABEL_180:
        v304 = v120;
        v305 = OUTLINED_FUNCTION_9_39();
        bspush_ca_scan(v305, v306);
        v121 = v304;
LABEL_181:
        v81 = v121;
        goto LABEL_182;
      }
    }

LABEL_176:
    v73 = v26;
    goto LABEL_45;
  }

LABEL_35:
  v90 = OUTLINED_FUNCTION_9_39();
  bspush_ca_scan(v90, v91);
  v92 = OUTLINED_FUNCTION_0_47();
  v95 = testFldeq(v92, v93, v94, 2);
  v96 = v40;
  v73 = v40;
  if (v95)
  {
    goto LABEL_45;
  }

LABEL_36:
  v26 = v96;
  if (advance_tok(v0))
  {
    goto LABEL_176;
  }

  v97 = OUTLINED_FUNCTION_9_39();
  bspush_ca_scan(v97, v98);
  v99 = OUTLINED_FUNCTION_0_47();
  if (testFldeq(v99, v100, v101, 1))
  {
    goto LABEL_176;
  }

  v102 = advance_tok(v0);
  v40 = v26;
  v73 = v26;
  if (v102)
  {
    goto LABEL_45;
  }

LABEL_39:
  v103 = OUTLINED_FUNCTION_9_39();
  bspush_ca_scan(v103, v104);
  v105 = OUTLINED_FUNCTION_0_47();
  v108 = testFldeq(v105, v106, v107, 2);
  v109 = v40;
  v73 = v40;
  if (!v108)
  {
LABEL_40:
    v26 = v109;
    if (advance_tok(v0))
    {
      goto LABEL_176;
    }

    v110 = OUTLINED_FUNCTION_9_39();
    bspush_ca_scan(v110, v111);
    v112 = OUTLINED_FUNCTION_0_47();
    if (testFldeq(v112, v113, v114, 1))
    {
      goto LABEL_176;
    }

LABEL_22:
    v74 = advance_tok(v0);
    v73 = v26;
    if (!v74)
    {
      goto LABEL_3;
    }

    goto LABEL_45;
  }

  do
  {
LABEL_45:
    while (1)
    {
      v115 = *(v0 + 104);
      if (v115)
      {
        v116 = OUTLINED_FUNCTION_22_29(v115);
        v40 = v117;
      }

      else
      {
        v116 = vback(v0, v73);
        v40 = 0;
      }

      v72 = v40;
      v96 = v40;
      v109 = v40;
      v80 = v40;
      v118 = v40;
      v119 = v40;
      v120 = v40;
      v121 = v40;
      v122 = v40;
      v123 = 83;
      v124 = v40;
      v125 = v40;
      v126 = v40;
      switch(v116)
      {
        case 1:
          v26 = v40;
          goto LABEL_5;
        case 2:
          v26 = v40;
          goto LABEL_7;
        case 3:
          v127 = OUTLINED_FUNCTION_9_39();
          bspush_ca_scan(v127, v128);
          v129 = OUTLINED_FUNCTION_5_40();
          v132 = 29;
          goto LABEL_101;
        case 4:
          goto LABEL_21;
        case 5:
          v129 = OUTLINED_FUNCTION_5_40();
          v132 = 31;
LABEL_101:
          v204 = testFldeq(v129, v130, v131, v132);
          v72 = v40;
          v73 = v40;
          if (!v204)
          {
            goto LABEL_21;
          }

          continue;
        case 6:
          v26 = v40;
          goto LABEL_8;
        case 8:
          v26 = v40;
          goto LABEL_9;
        case 9:
          v200 = OUTLINED_FUNCTION_0_47();
          v203 = testFldeq(v200, v201, v202, 3);
          v96 = v40;
          v73 = v40;
          if (!v203)
          {
            goto LABEL_36;
          }

          continue;
        case 10:
          goto LABEL_36;
        case 11:
          goto LABEL_35;
        case 12:
          v187 = OUTLINED_FUNCTION_0_47();
          v190 = testFldeq(v187, v188, v189, 3);
          v109 = v40;
          v73 = v40;
          if (!v190)
          {
            goto LABEL_40;
          }

          continue;
        case 13:
          goto LABEL_40;
        case 14:
          goto LABEL_39;
        case 15:
          v26 = v40;
          goto LABEL_10;
        case 16:
          v194 = OUTLINED_FUNCTION_9_39();
          bspush_ca_scan(v194, v195);
          v196 = OUTLINED_FUNCTION_5_40();
          v199 = 36;
          goto LABEL_111;
        case 17:
          goto LABEL_25;
        case 18:
          v196 = OUTLINED_FUNCTION_5_40();
          v199 = 40;
LABEL_111:
          v220 = testFldeq(v196, v197, v198, v199);
          v80 = v40;
          v73 = v40;
          if (!v220)
          {
            goto LABEL_25;
          }

          continue;
        case 19:
          v26 = v40;
          goto LABEL_159;
        case 20:
          v26 = v40;
          goto LABEL_157;
        case 21:
          v26 = v40;
          goto LABEL_152;
        case 22:
          OUTLINED_FUNCTION_0_47();
          v184 = test_string_s();
          goto LABEL_104;
        case 23:
          bspop_boa(v0);
          v184 = advance_tok(v0);
LABEL_104:
          v73 = v40;
          if (!v184)
          {
            goto LABEL_107;
          }

          continue;
        case 24:
        case 36:
          goto LABEL_107;
        case 25:
          v185 = OUTLINED_FUNCTION_7_40();
          v73 = v40;
          if (v185)
          {
            continue;
          }

          v186 = advance_tok(v0);
          v73 = v40;
          if (v186)
          {
            continue;
          }

          goto LABEL_108;
        case 26:
        case 38:
        case 41:
          goto LABEL_108;
        case 28:
          OUTLINED_FUNCTION_0_47();
          v183 = test_string_s();
          v118 = v40;
          v73 = v40;
          if (!v183)
          {
            goto LABEL_154;
          }

          continue;
        case 29:
          goto LABEL_154;
        case 30:
          v237 = OUTLINED_FUNCTION_7_40();
          v73 = v40;
          if (!v237)
          {
            v238 = advance_tok(v0);
            v119 = v40;
            v73 = v40;
            if (!v238)
            {
              goto LABEL_155;
            }
          }

          continue;
        case 31:
          goto LABEL_155;
        case 33:
          v239 = OUTLINED_FUNCTION_9_39();
          starttest(v239, v240);
          OUTLINED_FUNCTION_9_39();
          bspush_ca_boa();
          OUTLINED_FUNCTION_28_25();
          v241 = OUTLINED_FUNCTION_12_39();
          v243 = setd_lookup(v241, v242, 191);
          goto LABEL_148;
        case 34:
          bspop_boa(v0);
          v159 = OUTLINED_FUNCTION_3_43();
          v161 = lpta_loadp_setscan_r(v159, v160);
          v73 = v40;
          if (v161)
          {
            continue;
          }

          v162 = OUTLINED_FUNCTION_9_39();
          bspush_ca_scan(v162, v163);
          goto LABEL_106;
        case 35:
LABEL_106:
          OUTLINED_FUNCTION_0_47();
          v205 = test_string_s();
          v73 = v40;
          if (v205)
          {
            continue;
          }

LABEL_107:
          v206 = OUTLINED_FUNCTION_9_39();
          bspush_ca_scan(v206, v207);
LABEL_108:
          v208 = OUTLINED_FUNCTION_9_39();
          v211 = test_synch(v208, v209, 1u, v210);
          v73 = v40;
          if (v211)
          {
            continue;
          }

          v212 = OUTLINED_FUNCTION_6_40();
          lpta_rpta_loadp(v212, v213, v214);
          v215 = OUTLINED_FUNCTION_0_47();
          inserted = insert_2pt_s(v215, v216, v217, v218, 0);
          goto LABEL_142;
        case 37:
          v176 = OUTLINED_FUNCTION_7_40();
          v73 = v40;
          if (v176)
          {
            continue;
          }

          v177 = advance_tok(v0);
          v73 = v40;
          if (v177)
          {
            continue;
          }

          goto LABEL_108;
        case 39:
          v164 = OUTLINED_FUNCTION_9_39();
          starttest(v164, v165);
          v166 = OUTLINED_FUNCTION_3_43();
          if (lpta_loadp_setscan_r(v166, v167))
          {
            goto LABEL_3;
          }

          v168 = OUTLINED_FUNCTION_9_39();
          bspush_ca_scan(v168, v169);
LABEL_72:
          OUTLINED_FUNCTION_0_47();
          v170 = test_string_s();
          v73 = v40;
          if (!v170)
          {
            goto LABEL_139;
          }

          continue;
        case 40:
          bspop_boa(v0);
          v151 = OUTLINED_FUNCTION_3_43();
          v153 = lpta_loadp_setscan_r(v151, v152);
          v73 = v40;
          if (v153)
          {
            continue;
          }

          goto LABEL_108;
        case 42:
          goto LABEL_72;
        case 43:
        case 54:
        case 62:
          goto LABEL_139;
        case 44:
          v221 = OUTLINED_FUNCTION_7_40();
          v73 = v40;
          if (v221)
          {
            continue;
          }

          v222 = advance_tok(v0);
          v73 = v40;
          if (v222)
          {
            continue;
          }

          goto LABEL_140;
        case 45:
        case 58:
        case 65:
          goto LABEL_140;
        case 46:
          v26 = v40;
          goto LABEL_167;
        case 47:
          v135 = OUTLINED_FUNCTION_9_39();
          starttest(v135, v136);
          v137 = OUTLINED_FUNCTION_3_43();
          if (!lpta_loadp_setscan_l(v137, v138))
          {
            goto LABEL_54;
          }

          goto LABEL_3;
        case 48:
          bspop_boa(v0);
          v223 = OUTLINED_FUNCTION_3_43();
          v225 = lpta_loadp_setscan_r(v223, v224);
          v73 = v40;
          if (v225)
          {
            continue;
          }

          v226 = OUTLINED_FUNCTION_9_39();
          bspush_ca_scan(v226, v227);
          v228 = OUTLINED_FUNCTION_5_40();
          v231 = testFldeq(v228, v229, v230, 11);
          v73 = v40;
          if (v231)
          {
            continue;
          }

          goto LABEL_147;
        case 49:
          v191 = OUTLINED_FUNCTION_9_39();
          bspush_ca_scan(v191, v192);
          goto LABEL_96;
        case 50:
          bspop_boa(v0);
          v193 = advance_tok(v0);
          goto LABEL_126;
        case 51:
          goto LABEL_67;
        case 52:
LABEL_96:
          OUTLINED_FUNCTION_0_47();
          v193 = test_string_s();
LABEL_126:
          v73 = v40;
          if (!v193)
          {
            goto LABEL_67;
          }

          continue;
        case 53:
          v179 = OUTLINED_FUNCTION_0_47();
          v182 = testFldeq(v179, v180, v181, 1);
          v73 = v40;
          if (v182)
          {
            continue;
          }

          goto LABEL_145;
        case 55:
          bspop_boa(v0);
LABEL_145:
          v256 = advance_tok(v0);
          v73 = v40;
          if (!v256)
          {
            goto LABEL_146;
          }

          continue;
        case 56:
LABEL_146:
          v257 = OUTLINED_FUNCTION_9_39();
          bspush_ca_scan(v257, v258);
          v259 = OUTLINED_FUNCTION_0_47();
          v262 = testFldeq(v259, v260, v261, 2);
          v73 = v40;
          if (!v262)
          {
            goto LABEL_147;
          }

          continue;
        case 57:
          v232 = OUTLINED_FUNCTION_7_40();
          v73 = v40;
          if (v232)
          {
            continue;
          }

          v233 = advance_tok(v0);
          v73 = v40;
          if (v233)
          {
            continue;
          }

          goto LABEL_140;
        case 60:
LABEL_54:
          OUTLINED_FUNCTION_17_36(60, v312, v315, v318, v321, v324, v327, v330, v333, v336, v339, v342, v345, v348, v351, v354, v357, v360, v363, v366, v369, v372, v375, v378, v381);
          v139 = advance_tok(v0);
          v73 = v40;
          if (!v139)
          {
            OUTLINED_FUNCTION_0_47();
            v140 = test_string_s();
            v73 = v40;
            if (!v140)
            {
              v141 = OUTLINED_FUNCTION_11_39();
              v143 = lpta_loadp_setscan_r(v141, v142);
              v73 = v40;
              if (!v143)
              {
                OUTLINED_FUNCTION_0_47();
                v144 = test_string_s();
                v73 = v40;
                if (!v144)
                {
                  goto LABEL_67;
                }
              }
            }
          }

          continue;
        case 61:
          OUTLINED_FUNCTION_0_47();
          v156 = test_string_s();
          v73 = v40;
          if (v156)
          {
            continue;
          }

LABEL_67:
          v157 = OUTLINED_FUNCTION_9_39();
          bspush_ca_scan(v157, v158);
          goto LABEL_139;
        case 63:
          OUTLINED_FUNCTION_0_47();
          v246 = test_string_s();
          v73 = v40;
          if (v246)
          {
            continue;
          }

LABEL_139:
          v247 = OUTLINED_FUNCTION_9_39();
          bspush_ca_scan(v247, v248);
          goto LABEL_140;
        case 64:
          v244 = OUTLINED_FUNCTION_7_40();
          v73 = v40;
          if (v244)
          {
            continue;
          }

          v245 = advance_tok(v0);
          v73 = v40;
          if (v245)
          {
            continue;
          }

LABEL_140:
          v249 = OUTLINED_FUNCTION_9_39();
          v252 = test_synch(v249, v250, 1u, v251);
          v73 = v40;
          if (!v252)
          {
            v253 = OUTLINED_FUNCTION_6_40();
            lpta_rpta_loadp(v253, v254, v255);
            OUTLINED_FUNCTION_8_40();
            inserted = mark_s();
LABEL_142:
            v73 = v40;
            if (!inserted)
            {
              goto LABEL_3;
            }
          }

          continue;
        case 66:
          v26 = v40;
          goto LABEL_168;
        case 67:
          v172 = OUTLINED_FUNCTION_9_39();
          bspush_ca_scan(v172, v173);
          goto LABEL_132;
        case 68:
          OUTLINED_FUNCTION_0_47();
          v171 = test_string_s();
          v73 = v40;
          if (v171)
          {
            continue;
          }

          v303 = 70;
          v26 = v40;
          goto LABEL_179;
        case 69:
        case 71:
          goto LABEL_180;
        case 70:
        case 73:
LABEL_132:
          OUTLINED_FUNCTION_0_47();
          v134 = test_string_s();
          goto LABEL_133;
        case 72:
          v145 = OUTLINED_FUNCTION_9_39();
          bspush_ca_scan(v145, v146);
          v147 = OUTLINED_FUNCTION_5_40();
          v150 = testFldeq(v147, v148, v149, 11);
          v73 = v40;
          if (v150)
          {
            continue;
          }

LABEL_147:
          OUTLINED_FUNCTION_9_39();
          bspush_ca_scan_boa();
          v243 = OUTLINED_FUNCTION_7_40();
LABEL_148:
          if (v243)
          {
            v73 = v40;
          }

          else
          {
            v73 = 1;
          }

          continue;
        case 74:
          bspop_boa(v0);
          v134 = advance_tok(v0);
LABEL_133:
          v120 = v40;
          v73 = v40;
          if (!v134)
          {
            goto LABEL_180;
          }

          continue;
        case 75:
          v154 = OUTLINED_FUNCTION_7_40();
          v73 = v40;
          if (!v154)
          {
            v155 = advance_tok(v0);
            v121 = v40;
            v73 = v40;
            if (!v155)
            {
              goto LABEL_181;
            }
          }

          continue;
        case 76:
          goto LABEL_181;
        case 77:
          OUTLINED_FUNCTION_0_47();
          v178 = test_string_s();
          v122 = v40;
          v73 = v40;
          if (!v178)
          {
            goto LABEL_170;
          }

          continue;
        case 78:
          goto LABEL_170;
        case 79:
          v234 = OUTLINED_FUNCTION_9_39();
          bspush_ca_scan(v234, v235);
          goto LABEL_123;
        case 80:
          goto LABEL_173;
        case 81:
LABEL_123:
          OUTLINED_FUNCTION_0_47();
          v236 = test_string_s();
          v73 = v40;
          if (v236)
          {
            continue;
          }

          v123 = 83;
          v124 = v40;
          break;
        case 82:
          break;
        case 83:
          OUTLINED_FUNCTION_0_47();
          v133 = test_string_s();
          v125 = v40;
          v73 = v40;
          if (!v133)
          {
            goto LABEL_173;
          }

          continue;
        case 84:
          v174 = OUTLINED_FUNCTION_7_40();
          v73 = v40;
          if (!v174)
          {
            v175 = advance_tok(v0);
            v126 = v40;
            v73 = v40;
            if (!v175)
            {
              goto LABEL_174;
            }
          }

          continue;
        case 85:
          goto LABEL_174;
        default:
          goto LABEL_3;
      }

LABEL_172:
      v297 = v124;
      bspush_ca_scan(v0, v123);
      v125 = v297;
LABEL_173:
      v298 = v125;
      v299 = OUTLINED_FUNCTION_9_39();
      bspush_ca_scan(v299, v300);
      v126 = v298;
LABEL_174:
      v81 = v126;
LABEL_182:
      v307 = OUTLINED_FUNCTION_9_39();
      if (!test_synch(v307, v308, 1u, v309))
      {
        break;
      }

LABEL_183:
      v73 = v81;
    }

LABEL_26:
    v82 = OUTLINED_FUNCTION_6_40();
    lpta_rpta_loadp(v82, v83, v84);
    OUTLINED_FUNCTION_8_40();
    v85 = mark_s();
    v73 = v81;
  }

  while (v85);
LABEL_3:
  vretproc(v0);
  v20 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_31_23();
}

uint64_t insert_lax_vowel()
{
  OUTLINED_FUNCTION_25_28();
  v120 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_10_39(v3, v4, v5, v6, v7, v8, v9, v10, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115);
  OUTLINED_FUNCTION_21_30();
  bzero(v119, v11);
  if (setjmp(v119) || ventproc(v0, &v89, v118, v117, v116, v119))
  {
    goto LABEL_3;
  }

  v14 = OUTLINED_FUNCTION_14_37();
  get_parm(v14, v15, v2, -6);
  v16 = OUTLINED_FUNCTION_19_31();
  get_parm(v16, v17, v1, -6);
  fence_44(v0, 0, &null_str_18);
  fence_44(v0, 1, &_MergedGlobals_39);
  v18 = OUTLINED_FUNCTION_29_25();
  starttest(v18, v19);
  v20 = OUTLINED_FUNCTION_19_31();
  if (lpta_loadp_setscan_r(v20, v21))
  {
LABEL_6:
    v22 = OUTLINED_FUNCTION_9_39();
    starttest(v22, v23);
    v24 = OUTLINED_FUNCTION_11_39();
    if (lpta_loadp_setscan_r(v24, v25))
    {
      goto LABEL_3;
    }

LABEL_29:
    while (1)
    {
      v85 = OUTLINED_FUNCTION_29_25();
      bspush_ca_scan(v85, v86);
      v81 = OUTLINED_FUNCTION_8_40();
      v83 = 4;
      v84 = 5;
LABEL_30:
      if (testFldeq(v81, v82, v83, v84))
      {
        break;
      }

LABEL_31:
      if (advance_tok(v0))
      {
        break;
      }

      v87 = OUTLINED_FUNCTION_9_39();
      bspush_ca_scan(v87, v88);
    }
  }

  else if (!OUTLINED_FUNCTION_7_40() && !advance_tok(v0))
  {
LABEL_10:
    v26 = OUTLINED_FUNCTION_9_39();
    if (!test_synch(v26, v27, 1u, v28))
    {
LABEL_3:
      vretproc(v0);
      result = 94;
      goto LABEL_4;
    }
  }

  while (2)
  {
    v29 = v0[13];
    if (v29)
    {
      v30 = OUTLINED_FUNCTION_22_29(v29);
    }

    else
    {
      v30 = vback(v0, 0);
    }

    switch(v30)
    {
      case 1:
        goto LABEL_6;
      case 2:
        goto LABEL_10;
      case 3:
        goto LABEL_18;
      case 5:
        v81 = OUTLINED_FUNCTION_0_47();
        v84 = 2;
        goto LABEL_30;
      case 6:
        goto LABEL_31;
      case 7:
        v31 = OUTLINED_FUNCTION_9_39();
        bspush_ca_scan(v31, v32);
        goto LABEL_17;
      case 8:
        goto LABEL_29;
      case 9:
        OUTLINED_FUNCTION_0_47();
        if (test_string_s())
        {
          continue;
        }

        goto LABEL_17;
      case 10:
LABEL_17:
        v33 = OUTLINED_FUNCTION_9_39();
        if (test_synch(v33, v34, 1u, v35))
        {
          continue;
        }

LABEL_18:
        v36 = OUTLINED_FUNCTION_3_43();
        if (lpta_loadp_setscan_r(v36, v37) || (OUTLINED_FUNCTION_0_47(), v38 = test_string_s(), v38) || (OUTLINED_FUNCTION_27_26(v38, v39, v40, v41, v42, v43, v44, v45, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114), v46 = OUTLINED_FUNCTION_0_47(), insert_2pt_s(v46, v47, v48, v49, v50)))
        {
LABEL_21:
          v51 = OUTLINED_FUNCTION_3_43();
          if (lpta_loadp_setscan_r(v51, v52) || (OUTLINED_FUNCTION_0_47(), v53 = test_string_s(), v53) || (OUTLINED_FUNCTION_27_26(v53, v54, v55, v56, v57, v58, v59, v60, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114), v61 = OUTLINED_FUNCTION_0_47(), insert_2pt_s(v61, v62, v63, v64, v65)))
          {
LABEL_24:
            v66 = OUTLINED_FUNCTION_3_43();
            if (!lpta_loadp_setscan_r(v66, v67))
            {
              OUTLINED_FUNCTION_0_47();
              v68 = test_string_s();
              if (!v68)
              {
                OUTLINED_FUNCTION_27_26(v68, v69, v70, v71, v72, v73, v74, v75, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114);
                v76 = OUTLINED_FUNCTION_0_47();
                insert_2pt_s(v76, v77, v78, v79, v80);
              }
            }
          }
        }

LABEL_27:
        vretproc(v0);
        result = 0;
        break;
      case 11:
        goto LABEL_21;
      case 12:
        goto LABEL_27;
      case 13:
        goto LABEL_24;
      default:
        goto LABEL_3;
    }

    break;
  }

LABEL_4:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mark_high_vowel_deletion()
{
  OUTLINED_FUNCTION_25_28();
  v229 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_10_39(v3, v4, v5, v6, v7, v8, v9, v10, v147, v150, v153, v156, v159, v162, v165, v168, v171, v174, v177, v180, v183, v186, v189, v192, v195, v198, v201, v204, v207, v210, v213, v216, v219, v221, v223);
  OUTLINED_FUNCTION_21_30();
  bzero(v228, v11);
  v12 = setjmp(v228);
  if (!v12 && !OUTLINED_FUNCTION_15_36(v12, v13, v14, v15, v16, v17, v18, v19, v148, v151, v154, v157, v160, v163, v166, v169, v172, v175, v178, v181, v184, v187, v190, v193, v196, v199, v202, v205, v208, v211, v214, v217, v220, v222, v224, 0, 0, *v225, v225[4], *v226, *&v226[4], v226[6], v227, SWORD2(v227), SBYTE6(v227), SHIBYTE(v227)))
  {
    v22 = OUTLINED_FUNCTION_13_38();
    get_parm(v22, v23, v2, -6);
    v24 = OUTLINED_FUNCTION_19_31();
    get_parm(v24, v25, v1, -6);
    v26 = OUTLINED_FUNCTION_18_35();
    push_ptr_init(v26, v27);
    v28 = OUTLINED_FUNCTION_24_28();
    fence_44(v28, v29, v30);
    fence_44(v0, 1, &_MergedGlobals_39);
    starttest(v0, 1);
    v31 = OUTLINED_FUNCTION_19_31();
    v33 = 0;
    v34 = 0;
    if (!lpta_loadp_setscan_r(v31, v32))
    {
LABEL_25:
      while (!testFldeq(v0, 2u, 1, 2) && !advance_tok(v0))
      {
        v75 = OUTLINED_FUNCTION_29_25();
        bspush_ca_scan(v75, v76);
      }

      goto LABEL_80;
    }

    while (2)
    {
      v35 = OUTLINED_FUNCTION_9_39();
      starttest(v35, v36);
      v37 = OUTLINED_FUNCTION_1_45();
      if (!lpta_loadp_setscan_r(v37, v38))
      {
        OUTLINED_FUNCTION_9_39();
        bspush_ca_scan_boa();
        v71 = OUTLINED_FUNCTION_2_43();
        v74 = 6;
LABEL_17:
        if (testFldeq(v71, v72, v74, v73))
        {
          v33 = v34;
        }

        else
        {
          v33 = 1;
        }

        goto LABEL_80;
      }

LABEL_6:
      v39 = OUTLINED_FUNCTION_9_39();
      starttest(v39, v40);
      v41 = OUTLINED_FUNCTION_1_45();
      v33 = v34;
      if (!lpta_loadp_setscan_l(v41, v42))
      {
LABEL_76:
        OUTLINED_FUNCTION_17_36(9, v149, v152, v155, v158, v161, v164, v167, v170, v173, v176, v179, v182, v185, v188, v191, v194, v197, v200, v203, v206, v209, v212, v215, v218);
        v144 = OUTLINED_FUNCTION_0_47();
        if (testFldeq(v144, v145, v146, 2))
        {
          goto LABEL_80;
        }

        OUTLINED_FUNCTION_9_39();
        bspush_ca_scan_boa();
        v140 = OUTLINED_FUNCTION_2_43();
        v142 = 2;
        goto LABEL_78;
      }

LABEL_7:
      v43 = OUTLINED_FUNCTION_9_39();
      starttest(v43, v44);
      v45 = OUTLINED_FUNCTION_1_45();
      v47 = lpta_loadp_setscan_l(v45, v46);
      v48 = v34;
      if (v47)
      {
LABEL_8:
        v49 = v48;
        v50 = OUTLINED_FUNCTION_9_39();
        starttest(v50, v51);
        v52 = OUTLINED_FUNCTION_1_45();
        v54 = lpta_loadp_setscan_l(v52, v53);
        v34 = v49;
        v55 = v49;
        if (v54)
        {
LABEL_9:
          v56 = v55;
          v57 = OUTLINED_FUNCTION_9_39();
          starttest(v57, v58);
          v59 = OUTLINED_FUNCTION_1_45();
          v61 = lpta_loadp_setscan_l(v59, v60);
          v34 = v56;
          v62 = v56;
          if (!v61)
          {
LABEL_10:
            OUTLINED_FUNCTION_17_36(26, v149, v152, v155, v158, v161, v164, v167, v170, v173, v176, v179, v182, v185, v188, v191, v194, v197, v200, v203, v206, v209, v212, v215, v218);
            OUTLINED_FUNCTION_0_47();
            if (test_string_s() || (v63 = OUTLINED_FUNCTION_11_39(), lpta_loadp_setscan_r(v63, v64)) || (v65 = OUTLINED_FUNCTION_2_43(), testFldeq(v65, v66, 7, v67)) || advance_tok(v0) || (v68 = OUTLINED_FUNCTION_0_47(), testFldeq(v68, v69, v70, 2)))
            {
              v33 = v34;
              goto LABEL_80;
            }

            OUTLINED_FUNCTION_9_39();
            bspush_ca_scan_boa();
            v71 = OUTLINED_FUNCTION_2_43();
            v74 = 2;
            goto LABEL_17;
          }

LABEL_70:
          v33 = v62;
          v134 = OUTLINED_FUNCTION_9_39();
          starttest(v134, v135);
          v136 = OUTLINED_FUNCTION_1_45();
          if (lpta_loadp_setscan_l(v136, v137))
          {
            goto LABEL_3;
          }

LABEL_71:
          OUTLINED_FUNCTION_17_36(28, v149, v152, v155, v158, v161, v164, v167, v170, v173, v176, v179, v182, v185, v188, v191, v194, v197, v200, v203, v206, v209, v212, v215, v218);
          v138 = OUTLINED_FUNCTION_8_40();
          if (!testFldeq(v138, v139, 4, 1))
          {
            OUTLINED_FUNCTION_9_39();
            bspush_ca_scan_boa();
            v140 = OUTLINED_FUNCTION_5_40();
            v143 = 23;
LABEL_78:
            if (!testFldeq(v140, v141, v142, v143))
            {
              v33 = 1;
            }
          }

LABEL_80:
          v83 = v33;
LABEL_27:
          v77 = v0[13];
          if (v77)
          {
            v78 = OUTLINED_FUNCTION_22_29(v77);
            v34 = v79;
          }

          else
          {
            v78 = vback(v0, v83);
            v34 = 0;
          }

          v80 = v34;
          v81 = v34;
          switch(v78)
          {
            case 1:
              continue;
            case 2:
              v105 = OUTLINED_FUNCTION_9_39();
              bspush_ca_scan(v105, v106);
              goto LABEL_48;
            case 3:
              v33 = v34;
              goto LABEL_25;
            case 4:
              OUTLINED_FUNCTION_0_47();
              v92 = test_string_s();
              v83 = v34;
              if (v92)
              {
                goto LABEL_27;
              }

              goto LABEL_48;
            case 5:
LABEL_48:
              v107 = OUTLINED_FUNCTION_9_39();
              v110 = test_synch(v107, v108, 1u, v109);
              goto LABEL_50;
            case 6:
              goto LABEL_6;
            case 7:
              bspop_boa(v0);
              v110 = advance_tok(v0);
LABEL_50:
              v83 = v34;
              if (!v110)
              {
                goto LABEL_3;
              }

              goto LABEL_27;
            case 8:
              goto LABEL_7;
            case 9:
              v33 = v34;
              goto LABEL_76;
            case 10:
              bspop_boa(v0);
              v93 = advance_tok(v0);
              v83 = v34;
              if (!v93)
              {
                v94 = OUTLINED_FUNCTION_11_39();
                v96 = lpta_loadp_setscan_r(v94, v95);
                v83 = v34;
                if (!v96)
                {
                  v97 = advance_tok(v0);
                  v83 = v34;
                  if (!v97)
                  {
                    v98 = OUTLINED_FUNCTION_0_47();
                    v101 = testFldeq(v98, v99, v100, 2);
                    v83 = v34;
                    if (!v101)
                    {
                      OUTLINED_FUNCTION_9_39();
                      bspush_ca_scan_boa();
                      v102 = OUTLINED_FUNCTION_2_43();
                      if (testFldeq(v102, v103, 2, v104))
                      {
                        v83 = v34;
                      }

                      else
                      {
                        v83 = 1;
                      }
                    }
                  }
                }
              }

              goto LABEL_27;
            case 11:
            case 27:
              bspop_boa(v0);
              v82 = advance_tok(v0);
              goto LABEL_32;
            case 13:
              v48 = v34;
              goto LABEL_8;
            case 14:
              goto LABEL_58;
            case 15:
            case 17:
              v114 = OUTLINED_FUNCTION_9_39();
              bspush_ca_scan(v114, v115);
              goto LABEL_56;
            case 16:
              goto LABEL_59;
            case 18:
LABEL_56:
              OUTLINED_FUNCTION_0_47();
              v116 = test_string_s();
              v80 = v34;
              v83 = v34;
              if (!v116)
              {
                goto LABEL_59;
              }

              goto LABEL_27;
            case 19:
              v55 = v34;
              goto LABEL_9;
            case 20:
              break;
            case 21:
            case 23:
              v111 = OUTLINED_FUNCTION_9_39();
              bspush_ca_scan(v111, v112);
              goto LABEL_53;
            case 22:
              goto LABEL_61;
            case 24:
LABEL_53:
              OUTLINED_FUNCTION_0_47();
              v113 = test_string_s();
              v81 = v34;
              v83 = v34;
              if (!v113)
              {
                goto LABEL_61;
              }

              goto LABEL_27;
            case 25:
              v62 = v34;
              goto LABEL_70;
            case 26:
              goto LABEL_10;
            case 28:
              v33 = v34;
              goto LABEL_71;
            case 29:
              bspop_boa(v0);
              v88 = advance_tok(v0);
              v83 = v34;
              if (v88)
              {
                goto LABEL_27;
              }

              v89 = OUTLINED_FUNCTION_11_39();
              v91 = lpta_loadp_setscan_r(v89, v90);
              v83 = v34;
              if (v91)
              {
                goto LABEL_27;
              }

              OUTLINED_FUNCTION_8_40();
              v82 = test_string_s();
LABEL_32:
              v83 = v34;
              if (!v82)
              {
                v84 = OUTLINED_FUNCTION_6_40();
                lpta_rpta_loadp(v84, v85, v86);
                OUTLINED_FUNCTION_4_41();
                v87 = mark_s();
                v83 = v34;
                if (!v87)
                {
                  goto LABEL_3;
                }
              }

              goto LABEL_27;
            default:
              goto LABEL_3;
          }
        }

        OUTLINED_FUNCTION_17_36(20, v149, v152, v155, v158, v161, v164, v167, v170, v173, v176, v179, v182, v185, v188, v191, v194, v197, v200, v203, v206, v209, v212, v215, v218);
        v120 = OUTLINED_FUNCTION_9_39();
        bspush_ca_scan(v120, v121);
        OUTLINED_FUNCTION_0_47();
        v122 = test_string_s();
        v81 = v34;
        v33 = v34;
        if (v122)
        {
          goto LABEL_80;
        }

LABEL_61:
        v33 = v81;
      }

      else
      {
LABEL_58:
        OUTLINED_FUNCTION_17_36(14, v149, v152, v155, v158, v161, v164, v167, v170, v173, v176, v179, v182, v185, v188, v191, v194, v197, v200, v203, v206, v209, v212, v215, v218);
        v117 = OUTLINED_FUNCTION_9_39();
        bspush_ca_scan(v117, v118);
        OUTLINED_FUNCTION_0_47();
        v119 = test_string_s();
        v80 = v34;
        v33 = v34;
        if (v119)
        {
          goto LABEL_80;
        }

LABEL_59:
        v33 = v80;
      }

      break;
    }

    v123 = OUTLINED_FUNCTION_11_39();
    if (!lpta_loadp_setscan_r(v123, v124))
    {
      v125 = OUTLINED_FUNCTION_2_43();
      if (!testFldeq(v125, v126, 7, v127) && !advance_tok(v0))
      {
        v128 = OUTLINED_FUNCTION_2_43();
        if (!testFldeq(v128, v129, 4, v130) && !advance_tok(v0))
        {
          v131 = OUTLINED_FUNCTION_6_40();
          lpta_rpta_loadp(v131, v132, v133);
          OUTLINED_FUNCTION_8_40();
          if (!mark_s())
          {
            goto LABEL_3;
          }
        }
      }
    }

    goto LABEL_80;
  }

LABEL_3:
  vretproc(v0);
  v20 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_31_23();
}

uint64_t break_into_canfren_phones(void *a1)
{
  v36 = *MEMORY[0x277D85DE8];
  memset(v31, 0, sizeof(v31));
  bzero(&v30, 0xB8uLL);
  OUTLINED_FUNCTION_21_30();
  bzero(v35, v2);
  if (!setjmp(v35) && !ventproc(a1, &v30, v34, v33, v32, v35))
  {
    *&v31[16] = 0;
    *&v31[24] = 0;
    *&v31[30] = 0;
    *v31 = -65534;
    fence_44(a1, 0, &null_str_18);
    v5 = OUTLINED_FUNCTION_11_39();
    if (lpta_loadp_setscan_r(v5, v6) || (OUTLINED_FUNCTION_0_47(), test_string_s()) || (OUTLINED_FUNCTION_20_31(), v7 = OUTLINED_FUNCTION_4_41(), insert_2pt_s(v7, v8, 2, v9, v10)) || (OUTLINED_FUNCTION_20_31(), OUTLINED_FUNCTION_8_40(), mark_s()))
    {
      while (2)
      {
        v11 = OUTLINED_FUNCTION_11_39();
        if (lpta_loadp_setscan_r(v11, v12) || (OUTLINED_FUNCTION_0_47(), test_string_s()) || (OUTLINED_FUNCTION_20_31(), v13 = OUTLINED_FUNCTION_4_41(), insert_2pt_s(v13, v14, 2, &unk_28064BB4D, v15)) || (OUTLINED_FUNCTION_20_31(), OUTLINED_FUNCTION_8_40(), mark_s()))
        {
LABEL_12:
          v16 = OUTLINED_FUNCTION_11_39();
          if (!lpta_loadp_setscan_r(v16, v17))
          {
            OUTLINED_FUNCTION_0_47();
            if (!test_string_s())
            {
              starttest(a1, 4);
              v18 = OUTLINED_FUNCTION_11_39();
              if (lpta_loadp_setscan_r(v18, v19))
              {
LABEL_22:
                OUTLINED_FUNCTION_20_31();
                v27 = OUTLINED_FUNCTION_0_47();
                if (!insert_2pt_s(v27, v28, v29, &unk_28064BB36, 0))
                {
                  break;
                }
              }

              else
              {
                v20 = OUTLINED_FUNCTION_2_43();
                if (!testFldeq(v20, v21, 9, v22) && !advance_tok(a1))
                {
                  OUTLINED_FUNCTION_20_31();
                  settvar_s();
                  v23 = OUTLINED_FUNCTION_24_28();
                  npush_s(v23);
                  strcpy(&v31[2], "\t");
                  npop(a1, v31);
                  OUTLINED_FUNCTION_8_40();
                  insert_2ptv();
                  if (!v24)
                  {
                    break;
                  }
                }
              }

              v25 = a1[13];
              if (v25)
              {
                v26 = OUTLINED_FUNCTION_22_29(v25);
              }

              else
              {
                v26 = vback(a1, 0);
              }

              switch(v26)
              {
                case 1:
                  continue;
                case 3:
                  goto LABEL_12;
                case 4:
                  goto LABEL_22;
                default:
                  goto LABEL_3;
              }
            }
          }
        }

        break;
      }
    }
  }

LABEL_3:
  vretproc(a1);
  v3 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_31_23();
}

uint64_t a_to_A_in_stems(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v205 = *MEMORY[0x277D85DE8];
  v199 = 0;
  v200 = 0;
  v198[0] = 0;
  v198[1] = 0;
  v197[0] = 0;
  v197[1] = 0;
  OUTLINED_FUNCTION_10_39(a1, a2, a3, a4, a5, a6, a7, a8, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196);
  OUTLINED_FUNCTION_21_30();
  bzero(v204, v9);
  if (setjmp(v204) || ventproc(a1, &v170, v203, v202, v201, v204))
  {
    goto LABEL_3;
  }

  v12 = OUTLINED_FUNCTION_16_36();
  push_ptr_init(v12, v13);
  push_ptr_init(a1, v198);
  v14 = OUTLINED_FUNCTION_13_38();
  push_ptr_init(v14, v15);
  v16 = OUTLINED_FUNCTION_14_37();
  push_ptr_init(v16, v17);
  v18 = OUTLINED_FUNCTION_18_35();
  push_ptr_init(v18, v19);
  v20 = 0;
  v21 = OUTLINED_FUNCTION_24_28();
  fence_44(v21, v22, v23);
  fence_44(a1, 1, &_MergedGlobals_39);
  v200 = *(a1 + 1664);
  starttest(a1, 1);
  v24 = OUTLINED_FUNCTION_16_36();
  if (!lpta_loadp_setscan_l(v24, v25))
  {
    v48 = OUTLINED_FUNCTION_9_39();
    bspush_ca_scan(v48, v49);
    OUTLINED_FUNCTION_12_39();
    v50 = test_string_s();
    v20 = 0;
    v51 = 0;
    if (!v50)
    {
LABEL_16:
      v20 = v51;
      do
      {
        v52 = OUTLINED_FUNCTION_16_36();
        bspush_ca_scan(v52, v53);
        v54 = OUTLINED_FUNCTION_12_39();
      }

      while (!testFldeq(v54, v55, 4, 1) && !advance_tok(a1));
    }

LABEL_25:
    v62 = v20;
    while (2)
    {
      v63 = *(a1 + 104);
      if (v63)
      {
        v64 = OUTLINED_FUNCTION_22_29(v63);
        v20 = v65;
      }

      else
      {
        v64 = vback(a1, v62);
        v20 = 0;
      }

      v51 = v20;
      v31 = v20;
      v41 = v20;
      switch(v64)
      {
        case 1:
          break;
        case 2:
        case 4:
          v79 = OUTLINED_FUNCTION_9_39();
          bspush_ca_scan(v79, v80);
          OUTLINED_FUNCTION_12_39();
          goto LABEL_39;
        case 3:
          goto LABEL_16;
        case 5:
          OUTLINED_FUNCTION_12_39();
LABEL_39:
          v81 = test_string_s();
          v51 = v20;
          v62 = v20;
          if (!v81)
          {
            goto LABEL_16;
          }

          continue;
        case 6:
          savescptr(a1, 6, &v199);
          OUTLINED_FUNCTION_9_39();
          bspush_ca_boa();
          v69 = OUTLINED_FUNCTION_16_36();
          root_vow = first_root_vow(v69, v70, v71, v72, v73, v74, v75, v76);
          goto LABEL_62;
        case 7:
          bspop_boa(a1);
          goto LABEL_6;
        case 9:
          goto LABEL_7;
        case 10:
          v68 = advance_tok(a1);
          v31 = v20;
          v62 = v20;
          if (!v68)
          {
            goto LABEL_7;
          }

          continue;
        case 11:
          goto LABEL_8;
        case 12:
          v35 = v20;
          goto LABEL_9;
        case 13:
          goto LABEL_10;
        case 14:
          goto LABEL_11;
        case 15:
          OUTLINED_FUNCTION_26_28(15, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195);
          goto LABEL_11;
        case 16:
          bspop_boa(a1);
          OUTLINED_FUNCTION_9_39();
          bspush_ca_scan_boa();
          v82 = OUTLINED_FUNCTION_5_40();
          v85 = 48;
          goto LABEL_61;
        case 17:
          bspop_boa(a1);
          v78 = advance_tok(a1);
          v41 = v20;
          v62 = v20;
          if (!v78)
          {
            goto LABEL_22;
          }

          continue;
        case 18:
          goto LABEL_22;
        case 19:
          v86 = OUTLINED_FUNCTION_9_39();
          starttest(v86, v87);
          v88 = OUTLINED_FUNCTION_13_38();
          if (lpta_loadp_setscan_r(v88, v89))
          {
            goto LABEL_45;
          }

          v167 = OUTLINED_FUNCTION_12_39();
          v169 = testFldeq(v167, v168, 4, 2);
          v62 = v20;
          if (v169)
          {
            continue;
          }

          OUTLINED_FUNCTION_9_39();
          bspush_ca_scan_boa();
          v82 = OUTLINED_FUNCTION_12_39();
          v85 = 19;
LABEL_61:
          root_vow = testFldeq(v82, v83, v84, v85);
          goto LABEL_62;
        case 20:
          bspop_boa(a1);
          goto LABEL_3;
        case 21:
LABEL_45:
          v90 = OUTLINED_FUNCTION_9_39();
          starttest(v90, v91);
          OUTLINED_FUNCTION_23_28(v92, v93, v94, v95, v96, v97, v98, v99, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195);
          v100 = OUTLINED_FUNCTION_12_39();
          if (setd_lookup(v100, v101, 194))
          {
            goto LABEL_46;
          }

          goto LABEL_70;
        case 22:
          bspop_boa(a1);
          OUTLINED_FUNCTION_9_39();
          bspush_ca_scan_boa();
          v82 = OUTLINED_FUNCTION_12_39();
          v85 = 24;
          goto LABEL_61;
        case 23:
          bspop_boa(a1);
          OUTLINED_FUNCTION_9_39();
          bspush_ca_scan_boa();
          v82 = OUTLINED_FUNCTION_12_39();
          v85 = 26;
          goto LABEL_61;
        case 24:
          bspop_boa(a1);
          v144 = advance_tok(a1);
          v62 = v20;
          if (v144)
          {
            continue;
          }

          v145 = OUTLINED_FUNCTION_9_39();
          bspush_ca_scan(v145, v146);
          goto LABEL_67;
        case 25:
LABEL_67:
          OUTLINED_FUNCTION_12_39();
          v147 = test_string_s();
          v62 = v20;
          if (!v147)
          {
            goto LABEL_68;
          }

          continue;
        case 26:
LABEL_68:
          *(a1 + 136) = 1;
          *(a1 + 112) = v196;
          *(a1 + 128) = 0;
          v148 = test_ptr(a1);
          v62 = v20;
          if (v148)
          {
            continue;
          }

          v149 = OUTLINED_FUNCTION_9_39();
          starttest(v149, v150);
          OUTLINED_FUNCTION_23_28(v151, v152, v153, v154, v155, v156, v157, v158, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195);
          v159 = OUTLINED_FUNCTION_12_39();
          if (setd_lookup(v159, v160, 193))
          {
            goto LABEL_70;
          }

          goto LABEL_3;
        case 27:
        case 28:
          goto LABEL_70;
        case 29:
LABEL_46:
          v102 = OUTLINED_FUNCTION_9_39();
          starttest(v102, v103);
          v104 = OUTLINED_FUNCTION_14_37();
          if (!lpta_loadp_setscan_r(v104, v105))
          {
            goto LABEL_47;
          }

          goto LABEL_3;
        case 31:
LABEL_47:
          OUTLINED_FUNCTION_17_36(31, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193);
          v106 = OUTLINED_FUNCTION_9_39();
          bspush_ca_scan(v106, v107);
          OUTLINED_FUNCTION_12_39();
          goto LABEL_49;
        case 32:
        case 34:
          v108 = OUTLINED_FUNCTION_9_39();
          bspush_ca_scan(v108, v109);
          OUTLINED_FUNCTION_12_39();
          goto LABEL_49;
        case 33:
          goto LABEL_50;
        case 35:
          v66 = OUTLINED_FUNCTION_9_39();
          bspush_ca_scan(v66, v67);
          goto LABEL_31;
        case 36:
LABEL_31:
          OUTLINED_FUNCTION_12_39();
LABEL_49:
          v110 = test_string_s();
          v62 = v20;
          if (v110)
          {
            continue;
          }

LABEL_50:
          *(a1 + 136) = 1;
          *(a1 + 112) = *(a1 + 1344);
          *(a1 + 128) = 0;
          v111 = test_ptr(a1);
          v62 = v20;
          if (!v111)
          {
            v112 = OUTLINED_FUNCTION_18_35();
            v114 = lpta_loadp_setscan_l(v112, v113);
            v62 = v20;
            if (!v114)
            {
              OUTLINED_FUNCTION_12_39();
              v115 = test_string_s();
              v62 = v20;
              if (!v115)
              {
LABEL_53:
                OUTLINED_FUNCTION_26_28(37, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195);
LABEL_54:
                v116 = OUTLINED_FUNCTION_9_39();
                v118 = chstream(v116, v117, 2u);
                v62 = v20;
                if (!v118)
                {
LABEL_55:
                  v119 = advance_tok(a1);
                  v62 = v20;
                  if (!v119)
                  {
LABEL_56:
                    v120 = OUTLINED_FUNCTION_9_39();
                    bspush_ca_scan(v120, v121);
LABEL_57:
                    savescptr(a1, 41, v197);
                    OUTLINED_FUNCTION_0_47();
                    v122 = test_string_s();
                    v62 = v20;
                    if (!v122)
                    {
LABEL_58:
                      savescptr(a1, 42, v198);
                      OUTLINED_FUNCTION_23_28(v123, v124, v125, v126, v127, v128, v129, v130, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195);
                      v131 = OUTLINED_FUNCTION_12_39();
                      v133 = setd_lookup(v131, v132, 194);
                      v62 = v20;
                      if (!v133)
                      {
                        OUTLINED_FUNCTION_9_39();
                        bspush_ca_boa();
                        OUTLINED_FUNCTION_23_28(v134, v135, v136, v137, v138, v139, v140, v141, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195);
                        v142 = OUTLINED_FUNCTION_12_39();
                        root_vow = setd_lookup(v142, v143, 195);
LABEL_62:
                        if (root_vow)
                        {
                          v62 = v20;
                        }

                        else
                        {
                          v62 = 1;
                        }
                      }
                    }
                  }
                }
              }
            }
          }

          continue;
        case 37:
          goto LABEL_53;
        case 38:
          goto LABEL_54;
        case 39:
          goto LABEL_56;
        case 40:
          goto LABEL_55;
        case 41:
          goto LABEL_57;
        case 42:
          goto LABEL_58;
        case 43:
          bspop_boa(a1);
LABEL_70:
          lpta_rpta_loadp(a1, v198, v197);
          v161 = OUTLINED_FUNCTION_0_47();
          inserted = insert_2pt_s(v161, v162, v163, v164, v165);
          v62 = v20;
          if (inserted)
          {
            continue;
          }

          vretproc(a1);
          result = 0;
          goto LABEL_4;
        default:
          goto LABEL_3;
      }

      break;
    }
  }

LABEL_6:
  v26 = OUTLINED_FUNCTION_9_39();
  starttest(v26, v27);
  v28 = OUTLINED_FUNCTION_11_39();
  v30 = lpta_loadp_setscan_l(v28, v29);
  v31 = v20;
  if (!v30)
  {
LABEL_7:
    v20 = v31;
    v32 = OUTLINED_FUNCTION_9_39();
    bspush_ca_scan(v32, v33);
LABEL_8:
    savescptr(a1, 11, v197);
    OUTLINED_FUNCTION_0_47();
    v34 = test_string_s();
    v35 = v20;
    if (!v34)
    {
LABEL_9:
      v20 = v35;
      savescptr(a1, 12, v198);
LABEL_10:
      v36 = OUTLINED_FUNCTION_9_39();
      starttest(v36, v37);
      v38 = OUTLINED_FUNCTION_1_45();
      v40 = lpta_loadp_setscan_r(v38, v39);
      v41 = v20;
      if (v40)
      {
LABEL_11:
        v42 = OUTLINED_FUNCTION_9_39();
        starttest(v42, v43);
        OUTLINED_FUNCTION_9_39();
        bspush_ca_boa();
        v44 = OUTLINED_FUNCTION_14_37();
        lpta_loadpn(v44, v45);
        rpta_loadpn(a1, a1 + 1336);
        if (!compare_ptas(a1) && !testneq(a1))
        {
          lpta_rpta_loadp(a1, &v195, a1 + 1336);
          v46 = OUTLINED_FUNCTION_12_39();
          if (!setd_lookup(v46, v47, 178))
          {
            v20 = 1;
          }
        }
      }

      else
      {
LABEL_22:
        v56 = v41;
        v57 = OUTLINED_FUNCTION_9_39();
        bspush_ca_scan(v57, v58);
        OUTLINED_FUNCTION_9_39();
        bspush_ca_scan_boa();
        v59 = OUTLINED_FUNCTION_0_47();
        if (testFldeq(v59, v60, v61, 1))
        {
          v20 = v56;
        }

        else
        {
          v20 = 1;
        }
      }
    }

    goto LABEL_25;
  }

LABEL_3:
  vretproc(a1);
  result = 94;
LABEL_4:
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL OUTLINED_FUNCTION_7_40()
{

  return testFldeq(v0, 2u, 17, 1);
}

void OUTLINED_FUNCTION_10_39(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  a34 = 0;
  a35 = 0;
  a32 = 0;
  a33 = 0;

  bzero(&a9, 0xB8uLL);
}

uint64_t OUTLINED_FUNCTION_15_36(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, int a38, char a39, int a40, __int16 a41, char a42, int a43, __int16 a44, char a45, char a46)
{

  return ventproc(v46, &a9, &a46, &a42, &a39, v47 - 248);
}

double OUTLINED_FUNCTION_17_36@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{

  *&result = savescptr(v25, a1, &a25).n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_20_31()
{

  return lpta_rpta_loadp(v0, v0 + 1576, v0 + 1592);
}

uint64_t OUTLINED_FUNCTION_23_28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{

  return lpta_rpta_loadp(v34, v34 + 1640, &a34);
}

double OUTLINED_FUNCTION_26_28@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{

  *&result = savescptr(v27, a1, &a27).n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_27_26(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, char a34)
{

  return lpta_rpta_loadp(v34, &a34, &a32);
}

uint64_t OUTLINED_FUNCTION_28_25()
{

  return lpta_rpta_loadp(v0, v0 + 1320, v0 + 1656);
}

uint64_t canfren_roots(void *a1)
{
  v56 = *MEMORY[0x277D85DE8];
  memset(v51, 0, sizeof(v51));
  v49 = 0u;
  memset(v50, 0, sizeof(v50));
  bzero(v48, 0xB8uLL);
  bzero(v55, 0xC0uLL);
  if (setjmp(v55))
  {
    goto LABEL_4;
  }

  if (ventproc(a1, v48, v54, v53, v52, v55))
  {
    goto LABEL_4;
  }

  v2 = OUTLINED_FUNCTION_2_44();
  get_parm(v2, v3, v4, -6);
  OUTLINED_FUNCTION_3_44();
  v50[0] = 0;
  v50[1] = 0;
  *(&v50[1] + 6) = 0;
  LODWORD(v49) = -65534;
  fence_45(a1);
  starttest(a1, 17);
  v5 = OUTLINED_FUNCTION_2_44();
  lpta_rpta_loadp(v5, v6, v7);
  if (actd_lookup(a1, 10, 0, 0))
  {
LABEL_4:
    v8 = 94;
  }

  else
  {
LABEL_6:
    actd_goto(a1);
    while (2)
    {
      v12 = a1[13];
      if (v12)
      {
        a1[13] = 0;
        v13 = v12;
      }

      else
      {
        v13 = vback(a1, 0);
      }

      v14 = v13 - 1;
      v8 = 0;
      v15 = &unk_28064BB96;
      v16 = 5;
      switch(v14)
      {
        case 0:
          v17 = OUTLINED_FUNCTION_0_48();
          lpta_rpta_loadp(v17, v18, v51);
          v19 = OUTLINED_FUNCTION_1_46();
          v21 = 4;
          v22 = &unk_28064BB86;
          goto LABEL_34;
        case 1:
          goto LABEL_33;
        case 2:
          v15 = &unk_28064BBB1;
          goto LABEL_32;
        case 3:
          v15 = &unk_28064BB77;
          goto LABEL_18;
        case 4:
          v15 = &unk_28064BB8A;
          v16 = 4;
          goto LABEL_33;
        case 5:
          v15 = &unk_28064BBA5;
          goto LABEL_20;
        case 6:
          v15 = &_MergedGlobals_40;
          v16 = 2;
          goto LABEL_33;
        case 7:
          v15 = &unk_28064BB7A;
          goto LABEL_18;
        case 8:
          v28 = OUTLINED_FUNCTION_0_48();
          lpta_rpta_loadp(v28, v29, v51);
          v30 = OUTLINED_FUNCTION_1_46();
          if (insert_2pt_s(v30, v31, 2, &unk_28064BB6B, v32))
          {
            continue;
          }

          goto LABEL_26;
        case 9:
          v15 = &unk_28064BBAB;
LABEL_20:
          v16 = 6;
          goto LABEL_33;
        case 10:
          v15 = &unk_28064BB80;
LABEL_18:
          v16 = 3;
          goto LABEL_33;
        case 11:
          v38 = OUTLINED_FUNCTION_0_48();
          lpta_rpta_loadp(v38, v39, v51);
          v40 = OUTLINED_FUNCTION_1_46();
          if (insert_2pt_s(v40, v41, 2, &unk_28064BB6D, v42))
          {
            continue;
          }

          goto LABEL_26;
        case 12:
          v15 = &unk_28064BBB8;
LABEL_32:
          v16 = 7;
          goto LABEL_33;
        case 13:
          v15 = &unk_28064BB9B;
LABEL_33:
          v43 = OUTLINED_FUNCTION_0_48();
          lpta_rpta_loadp(v43, v44, v51);
          v19 = OUTLINED_FUNCTION_1_46();
          v21 = v16;
          v22 = v15;
LABEL_34:
          if (insert_2pt_s(v19, v20, v21, v22, 0))
          {
            continue;
          }

          v8 = 0;
          break;
        case 14:
          v33 = OUTLINED_FUNCTION_0_48();
          lpta_rpta_loadp(v33, v34, v51);
          v35 = OUTLINED_FUNCTION_1_46();
          if (insert_2pt_s(v35, v36, 2, &unk_28064BB71, v37))
          {
            continue;
          }

          goto LABEL_26;
        case 15:
          v23 = OUTLINED_FUNCTION_0_48();
          lpta_rpta_loadp(v23, v24, v51);
          v25 = OUTLINED_FUNCTION_1_46();
          if (insert_2pt_s(v25, v26, 4, &unk_28064BB8E, v27))
          {
            continue;
          }

LABEL_26:
          OUTLINED_FUNCTION_0_48();
          settvar_s();
          OUTLINED_FUNCTION_4_42();
          WORD1(v49) = 9;
          v45 = OUTLINED_FUNCTION_0_48();
          npop(v45, v46);
          OUTLINED_FUNCTION_1_46();
          OUTLINED_FUNCTION_5_41();
          v47 = OUTLINED_FUNCTION_1_46();
          insert_l(v47);
          v8 = 0;
          break;
        case 17:
          goto LABEL_6;
        case 18:
        case 19:
          goto LABEL_5;
        default:
          goto LABEL_4;
      }

      break;
    }
  }

LABEL_5:
  v9 = v8;
  vretproc(a1);
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t canfren_words(void *a1)
{
  v28 = *MEMORY[0x277D85DE8];
  memset(v23, 0, sizeof(v23));
  bzero(v22, 0xB8uLL);
  bzero(v27, 0xC0uLL);
  if (!setjmp(v27) && !ventproc(a1, v22, v26, v25, v24, v27))
  {
    v2 = OUTLINED_FUNCTION_2_44();
    get_parm(v2, v3, v4, -6);
    OUTLINED_FUNCTION_3_44();
    fence_45(a1);
    starttest(a1, 4);
    v5 = OUTLINED_FUNCTION_2_44();
    lpta_rpta_loadp(v5, v6, v7);
    if (!actd_lookup(a1, 11, 0, 0))
    {
LABEL_6:
      actd_goto(a1);
      while (2)
      {
        v11 = a1[13];
        if (v11)
        {
          a1[13] = 0;
          v12 = v11;
        }

        else
        {
          v12 = vback(a1, 0);
        }

        v8 = 0;
        v13 = &unk_28064BB75;
        switch(v12)
        {
          case 1:
            v14 = OUTLINED_FUNCTION_0_48();
            lpta_rpta_loadp(v14, v15, v23);
            v8 = 0;
            v16 = OUTLINED_FUNCTION_1_46();
            v18 = 5;
            v19 = &unk_28064BBA0;
            goto LABEL_14;
          case 2:
            goto LABEL_13;
          case 3:
            v13 = &unk_28064BB83;
LABEL_13:
            v20 = OUTLINED_FUNCTION_0_48();
            lpta_rpta_loadp(v20, v21, v23);
            v8 = 0;
            v16 = OUTLINED_FUNCTION_1_46();
            v19 = v13;
LABEL_14:
            if (!insert_2pt_s(v16, v17, v18, v19, 0))
            {
              goto LABEL_5;
            }

            continue;
          case 5:
            goto LABEL_6;
          case 6:
          case 7:
            goto LABEL_5;
          default:
            goto LABEL_4;
        }
      }
    }
  }

LABEL_4:
  v8 = 94;
LABEL_5:
  vretproc(a1);
  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

void OUTLINED_FUNCTION_3_44()
{

  get_parm(v0, v2, v1, -6);
}

uint64_t OUTLINED_FUNCTION_4_42()
{

  return npush_s(v0);
}

void OUTLINED_FUNCTION_5_41()
{

  insert_lv();
}

void *delta_new()
{
  MEMORY[0x28223BE20]();
  v0 = malloc_type_malloc(0x1908uLL, 0x10F004044736916uLL);
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
    *(v0 + 45) = xmmword_26E1F47F0;
    *(v0 + 46) = xmmword_26E1F47F0;
    *(v0 + 47) = xmmword_26E1F47F0;
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
    *(v0 + 58) = xmmword_26E1F47F0;
    *(v0 + 59) = xmmword_26E1F47F0;
    *(v0 + 60) = xmmword_26E1F47F0;
    *(v0 + 61) = xmmword_26E1F47F0;
    *(v0 + 62) = xmmword_26E1F47F0;
    *(v0 + 63) = xmmword_26E1F47F0;
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
    *(v0 + 2120) = xmmword_26E1F47F0;
    *(v0 + 2136) = xmmword_26E1F47F0;
    *(v0 + 2152) = xmmword_26E1F47F0;
    *(v0 + 2168) = xmmword_26E1F47F0;
    *(v0 + 2184) = xmmword_26E1F47F0;
    *(v0 + 2200) = xmmword_26E1F47F0;
    *(v0 + 2216) = xmmword_26E1F47F0;
    *(v0 + 2232) = xmmword_26E1F47F0;
    *(v0 + 2248) = xmmword_26E1F47F0;
    *(v0 + 2264) = xmmword_26E1F47F0;
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
    *(v0 + 154) = xmmword_26E1F47F0;
    *(v0 + 620) = 65532;
    *(v0 + 1244) = -6;
    *(v0 + 312) = 0;
    *(v0 + 1252) = -6;
    *(v0 + 314) = 0;
    *(v0 + 1260) = -6;
    *(v0 + 316) = 0;
    *(v0 + 317) = 0xFFFC0000FFFCLL;
    *(v0 + 636) = 65532;
    *(v0 + 161) = xmmword_26E1F47F0;
    *(v0 + 162) = xmmword_26E1F47F0;
    *(v0 + 163) = xmmword_26E1F47F0;
    *(v0 + 164) = xmmword_26E1F47F0;
    *(v0 + 1320) = -6;
    *(v0 + 331) = 0;
    *(v0 + 1328) = -6;
    *(v0 + 333) = 0;
    *(v0 + 2952) = xmmword_26E1F47F0;
    *(v0 + 2968) = xmmword_26E1F47F0;
    *(v0 + 2984) = xmmword_26E1F47F0;
    *(v0 + 3000) = xmmword_26E1F47F0;
    *(v0 + 2856) = xmmword_26E1F47F0;
    *(v0 + 2872) = xmmword_26E1F47F0;
    *(v0 + 2888) = xmmword_26E1F47F0;
    *(v0 + 2904) = xmmword_26E1F47F0;
    *(v0 + 2920) = xmmword_26E1F47F0;
    *(v0 + 2936) = xmmword_26E1F47F0;
    *(v0 + 2760) = xmmword_26E1F47F0;
    *(v0 + 2776) = xmmword_26E1F47F0;
    *(v0 + 2792) = xmmword_26E1F47F0;
    *(v0 + 2808) = xmmword_26E1F47F0;
    *(v0 + 2824) = xmmword_26E1F47F0;
    *(v0 + 2840) = xmmword_26E1F47F0;
    *(v0 + 337) = 0;
    *(v0 + 676) = 65532;
    *(v0 + 1356) = -6;
    *(v0 + 340) = 0;
    *(v0 + 2728) = xmmword_26E1F47F0;
    *(v0 + 2744) = xmmword_26E1F47F0;
    *(v0 + 1336) = -6;
    *(v0 + 335) = 0;
    *(v0 + 1344) = -6;
    *(v0 + 3016) = xmmword_26E1F47F0;
    *(v0 + 3032) = xmmword_26E1F47F0;
    *(v0 + 3048) = xmmword_26E1F47F0;
    *(v0 + 3064) = xmmword_26E1F47F0;
    *(v0 + 3080) = xmmword_26E1F47F0;
    *(v0 + 3096) = xmmword_26E1F47F0;
    *(v0 + 3112) = xmmword_26E1F47F0;
    *(v0 + 3128) = xmmword_26E1F47F0;
    *(v0 + 3144) = xmmword_26E1F47F0;
    *(v0 + 3160) = xmmword_26E1F47F0;
    *(v0 + 3176) = xmmword_26E1F47F0;
    *(v0 + 3192) = xmmword_26E1F47F0;
    *(v0 + 3208) = xmmword_26E1F47F0;
    *(v0 + 3224) = xmmword_26E1F47F0;
    *(v0 + 3240) = xmmword_26E1F47F0;
    *(v0 + 3256) = xmmword_26E1F47F0;
    *(v0 + 409) = 0xFFFC0000FFFCLL;
    *(v0 + 211) = xmmword_26E1F47F0;
    *(v0 + 212) = xmmword_26E1F47F0;
    *(v0 + 213) = xmmword_26E1F47F0;
    *(v0 + 214) = xmmword_26E1F47F0;
    *(v0 + 215) = xmmword_26E1F47F0;
    *(v0 + 216) = xmmword_26E1F47F0;
    *(v0 + 217) = xmmword_26E1F47F0;
    *(v0 + 218) = xmmword_26E1F47F0;
    *(v0 + 219) = xmmword_26E1F47F0;
    *(v0 + 220) = xmmword_26E1F47F0;
    *(v0 + 1768) = -6;
    *(v0 + 443) = 0;
    *(v0 + 444) = 0xFFFC0000FFFCLL;
    *(v0 + 890) = 65532;
    *(v0 + 1784) = -5;
    *(v0 + 447) = 0;
    *(v0 + 1792) = -5;
    *(v0 + 449) = 0;
    *(v0 + 225) = xmmword_26E1F47F0;
    *(v0 + 226) = xmmword_26E1F47F0;
    *(v0 + 227) = xmmword_26E1F47F0;
    *(v0 + 228) = xmmword_26E1F47F0;
    *(v0 + 229) = xmmword_26E1F47F0;
    *(v0 + 230) = xmmword_26E1F47F0;
    *(v0 + 231) = xmmword_26E1F47F0;
    *(v0 + 232) = xmmword_26E1F47F0;
    *(v0 + 233) = xmmword_26E1F47F0;
    *(v0 + 234) = xmmword_26E1F47F0;
    *(v0 + 470) = 0xFFFC0000FFFCLL;
    *(v0 + 942) = 65532;
    *(v0 + 1888) = -3;
    *(v0 + 473) = 0;
    *(v0 + 1968) = -5;
    *(v0 + 493) = 0;
    *(v0 + 988) = 65532;
    *(v0 + 996) = 65532;
    *(v0 + 1996) = -3;
    *(v0 + 500) = 0;
    *(v0 + 501) = 0xFFFC0000FFFCLL;
    *(v0 + 1004) = 65532;
    *(v0 + 2012) = -6;
    *(v0 + 504) = 0;
    *(v0 + 4040) = xmmword_26E1F47F0;
    *(v0 + 1014) = 65532;
    *(v0 + 2032) = -3;
    *(v0 + 509) = 0;
    *(v0 + 255) = xmmword_26E1F47F0;
    *(v0 + 256) = xmmword_26E1F47F0;
    *(v0 + 514) = 0xFFFC0000FFFCLL;
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
    *(v0 + 2100) = -6;
    *(v0 + 526) = 0;
    *(v0 + 527) = 0xFFFC0000FFFCLL;
    *(v0 + 2112) = -5;
    *(v0 + 529) = 0;
    *(v0 + 265) = xmmword_26E1F47F0;
    *(v0 + 532) = 0xFFFC0000FFFCLL;
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
    *(v0 + 2204) = -5;
    *(v0 + 552) = 0;
    *(v0 + 4424) = xmmword_26E1F47F0;
    *(v0 + 4440) = xmmword_26E1F47F0;
    *(v0 + 557) = 0xFFFC0000FFFCLL;
    *(v0 + 1116) = 65532;
    *(v0 + 2236) = -5;
    *(v0 + 560) = 0;
    *(v0 + 4488) = xmmword_26E1F47F0;
    *(v0 + 4504) = xmmword_26E1F47F0;
    *(v0 + 4520) = xmmword_26E1F47F0;
    *(v0 + 4536) = xmmword_26E1F47F0;
    *(v0 + 4552) = xmmword_26E1F47F0;
    *(v0 + 4568) = xmmword_26E1F47F0;
    *(v0 + 4584) = xmmword_26E1F47F0;
    *(v0 + 4600) = xmmword_26E1F47F0;
    *(v0 + 4616) = xmmword_26E1F47F0;
    *(v0 + 4632) = xmmword_26E1F47F0;
    *(v0 + 4648) = xmmword_26E1F47F0;
    *(v0 + 4664) = xmmword_26E1F47F0;
    *(v0 + 4680) = xmmword_26E1F47F0;
    *(v0 + 4696) = xmmword_26E1F47F0;
    *(v0 + 4712) = xmmword_26E1F47F0;
    *(v0 + 4728) = xmmword_26E1F47F0;
    *(v0 + 4744) = xmmword_26E1F47F0;
    *(v0 + 4760) = xmmword_26E1F47F0;
    *(v0 + 4776) = xmmword_26E1F47F0;
    *(v0 + 4792) = xmmword_26E1F47F0;
    *(v0 + 4808) = xmmword_26E1F47F0;
    *(v0 + 2412) = -6;
    *(v0 + 604) = 0;
    *(v0 + 2420) = -5;
    *(v0 + 606) = 0;
    *(v0 + 2428) = -5;
    *(v0 + 608) = 0;
    *(v0 + 2436) = -6;
    *(v0 + 610) = 0;
    *(v0 + 4888) = xmmword_26E1F47F0;
    *(v0 + 4904) = xmmword_26E1F47F0;
    *(v0 + 1230) = 65532;
    *(v0 + 640) = 0xFFFC0000FFFCLL;
    *(v0 + 2564) = -6;
    *(v0 + 642) = 0;
    *(v0 + 2572) = -5;
    *(v0 + 644) = 0;
    *(v0 + 2580) = -5;
    *(v0 + 646) = 0;
    *(v0 + 647) = 0xFFFC0000FFFCLL;
    *(v0 + 2592) = -6;
    *(v0 + 649) = 0;
    *(v0 + 2600) = -6;
    *(v0 + 651) = 0;
    *(v0 + 2608) = -6;
    *(v0 + 653) = 0;
    *(v0 + 2616) = -6;
    *(v0 + 655) = 0;
    *(v0 + 1312) = 65532;
    *(v0 + 2628) = -5;
    *(v0 + 658) = 0;
    *(v0 + 1318) = 65532;
    *(v0 + 2640) = -6;
    *(v0 + 661) = 0;
    *(v0 + 331) = xmmword_26E1F47F0;
    *(v0 + 332) = xmmword_26E1F47F0;
    *(v0 + 333) = xmmword_26E1F47F0;
    *(v0 + 668) = 0xFFFC0000FFFCLL;
    *(v0 + 1338) = 65532;
    *(v0 + 2680) = -5;
    *(v0 + 671) = 0;
    *(v0 + 2688) = -5;
    *(v0 + 673) = 0;
    *(v0 + 2696) = -5;
    *(v0 + 675) = 0;
    *(v0 + 2704) = -6;
    *(v0 + 677) = 0;
    *(v0 + 678) = 0xFFFC0000FFFCLL;
    *(v0 + 1386) = 65532;
    *(v0 + 2776) = -5;
    *(v0 + 695) = 0;
    *(v0 + 2784) = -5;
    *(v0 + 697) = 0;
    *(v0 + 2792) = -5;
    *(v0 + 699) = 0;
    *(v0 + 350) = xmmword_26E1F47F0;
    *(v0 + 702) = 0xFFFC0000FFFCLL;
    *(v0 + 2812) = -5;
    *(v0 + 704) = 0;
    *(v0 + 5640) = xmmword_26E1F47F0;
    *(v0 + 5656) = xmmword_26E1F47F0;
    *(v0 + 5672) = xmmword_26E1F47F0;
    *(v0 + 5688) = xmmword_26E1F47F0;
    *(v0 + 5704) = xmmword_26E1F47F0;
    *(v0 + 5720) = xmmword_26E1F47F0;
    *(v0 + 5736) = xmmword_26E1F47F0;
    *(v0 + 5752) = xmmword_26E1F47F0;
    *(v0 + 5768) = xmmword_26E1F47F0;
    *(v0 + 5784) = xmmword_26E1F47F0;
    *(v0 + 5800) = xmmword_26E1F47F0;
    *(v0 + 5816) = xmmword_26E1F47F0;
    *(v0 + 5832) = xmmword_26E1F47F0;
    *(v0 + 5848) = xmmword_26E1F47F0;
    *(v0 + 5864) = xmmword_26E1F47F0;
    *(v0 + 5880) = xmmword_26E1F47F0;
    *(v0 + 5896) = xmmword_26E1F47F0;
    *(v0 + 5912) = xmmword_26E1F47F0;
    *(v0 + 5928) = xmmword_26E1F47F0;
    *(v0 + 5944) = xmmword_26E1F47F0;
    *(v0 + 1490) = 65532;
    *(v0 + 2984) = -5;
    *(v0 + 747) = 0;
    *(v0 + 2992) = -5;
    *(v0 + 749) = 0;
    *(v0 + 3000) = -5;
    *(v0 + 751) = 0;
    *(v0 + 3008) = -5;
    *(v0 + 753) = 0;
    *(v0 + 3016) = -5;
    *(v0 + 755) = 0;
    *(v0 + 3024) = -5;
    *(v0 + 757) = 0;
    *(v0 + 3032) = -5;
    *(v0 + 759) = 0;
    *(v0 + 3040) = -5;
    *(v0 + 761) = 0;
    *(v0 + 3048) = -5;
    *(v0 + 763) = 0;
    *(v0 + 3056) = -5;
    *(v0 + 765) = 0;
    *(v0 + 3064) = -5;
    *(v0 + 767) = 0;
    *(v0 + 773) = 0xFFFC0000FFFCLL;
    *(v0 + 3096) = -6;
    *(v0 + 775) = 0;
    *(v0 + 3104) = -6;
    *(v0 + 777) = 0;
    *(v0 + 3112) = -6;
    *(v0 + 779) = 0;
    *(v0 + 3120) = -6;
    *(v0 + 781) = 0;
    *(v0 + 3128) = -6;
    *(v0 + 783) = 0;
    *(v0 + 392) = xmmword_26E1F47F0;
    *(v0 + 393) = xmmword_26E1F47F0;
    *(v0 + 394) = xmmword_26E1F47F0;
    *(v0 + 395) = xmmword_26E1F47F0;
    *(v0 + 396) = xmmword_26E1F47F0;
    *(v0 + 397) = xmmword_26E1F47F0;
    *(v0 + 796) = 0xFFFC0000FFFCLL;
    *(v0 + 1594) = 65532;
    *(v0 + 3192) = -6;
    *(v0 + 799) = 0;
    *(v0 + 800) = 0xFFFC0000FFFCLL;
    *(v0 + 4) = 228;
    *v0 = xmmword_26E1F4800;
    *(v0 + 11) = v0 + 344;
    *(v0 + 12) = v0 + 360;
    v2 = malloc_type_malloc(0x720uLL, 0x2004093837F09uLL);
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
    *(v1[3] + 736) = v1 + 504;
    *(v1[3] + 744) = v1 + 516;
    *(v1[3] + 752) = v1 + 518;
    *(v1[3] + 760) = v1 + 520;
    *(v1[3] + 768) = v1 + 522;
    *(v1[3] + 776) = v1 + 524;
    *(v1[3] + 784) = v1 + 526;
    *(v1[3] + 792) = v1 + 604;
    *(v1[3] + 800) = v1 + 610;
    *(v1[3] + 808) = v1 + 642;
    *(v1[3] + 816) = v1 + 649;
    *(v1[3] + 824) = v1 + 651;
    *(v1[3] + 832) = v1 + 653;
    *(v1[3] + 840) = v1 + 655;
    *(v1[3] + 848) = v1 + 661;
    *(v1[3] + 856) = v1 + 677;
    *(v1[3] + 864) = v1 + 775;
    *(v1[3] + 872) = v1 + 777;
    *(v1[3] + 880) = v1 + 779;
    *(v1[3] + 888) = v1 + 781;
    *(v1[3] + 896) = v1 + 783;
    *(v1[3] + 904) = v1 + 799;
    *(v1[3] + 912) = v1 + 42;
    *(v1[3] + 920) = v1 + 44;
    *(v1[3] + 928) = v1 + 46;
    *(v1[3] + 936) = v1 + 48;
    *(v1[3] + 944) = v1 + 50;
    *(v1[3] + 952) = v1 + 52;
    *(v1[3] + 960) = v1 + 54;
    *(v1[3] + 968) = v1 + 56;
    *(v1[3] + 976) = v1 + 58;
    *(v1[3] + 984) = v1 + 60;
    *(v1[3] + 992) = v1 + 62;
    *(v1[3] + 1000) = v1 + 64;
    *(v1[3] + 1008) = v1 + 66;
    *(v1[3] + 1016) = v1 + 68;
    *(v1[3] + 1024) = v1 + 70;
    *(v1[3] + 1032) = v1 + 72;
    *(v1[3] + 1040) = v1 + 74;
    *(v1[3] + 1048) = v1 + 76;
    *(v1[3] + 1056) = v1 + 78;
    *(v1[3] + 1064) = v1 + 81;
    *(v1[3] + 1072) = v1 + 83;
    *(v1[3] + 1080) = v1 + 85;
    *(v1[3] + 1088) = v1 + 87;
    *(v1[3] + 1096) = v1 + 89;
    *(v1[3] + 1104) = v1 + 97;
    *(v1[3] + 1112) = v1 + 99;
    *(v1[3] + 1120) = v1 + 101;
    *(v1[3] + 1128) = v1 + 103;
    *(v1[3] + 1136) = v1 + 105;
    *(v1[3] + 1144) = v1 + 107;
    *(v1[3] + 1152) = v1 + 109;
    *(v1[3] + 1160) = v1 + 111;
    *(v1[3] + 1168) = v1 + 113;
    *(v1[3] + 1176) = v1 + 115;
    *(v1[3] + 1184) = v1 + 143;
    *(v1[3] + 1192) = v1 + 145;
    *(v1[3] + 1200) = v1 + 147;
    *(v1[3] + 1208) = v1 + 150;
    *(v1[3] + 1216) = v1 + 154;
    *(v1[3] + 1224) = v1 + 156;
    *(v1[3] + 1232) = v1 + 158;
    *(v1[3] + 1240) = v1 + 160;
    *(v1[3] + 1248) = v1 + 162;
    *(v1[3] + 1256) = v1 + 164;
    *(v1[3] + 1264) = v1 + 166;
    *(v1[3] + 1272) = v1 + 168;
    *(v1[3] + 1280) = v1 + 170;
    *(v1[3] + 1288) = v1 + 172;
    *(v1[3] + 1296) = v1 + 174;
    *(v1[3] + 1304) = v1 + 176;
    *(v1[3] + 1312) = v1 + 178;
    *(v1[3] + 1320) = v1 + 180;
    *(v1[3] + 1328) = v1 + 182;
    *(v1[3] + 1336) = v1 + 184;
    *(v1[3] + 1344) = v1 + 186;
    *(v1[3] + 1352) = v1 + 188;
    *(v1[3] + 1360) = v1 + 190;
    *(v1[3] + 1368) = v1 + 192;
    *(v1[3] + 1376) = v1 + 194;
    *(v1[3] + 1384) = v1 + 196;
    *(v1[3] + 1392) = v1 + 198;
    *(v1[3] + 1400) = v1 + 200;
    *(v1[3] + 1408) = v1 + 202;
    *(v1[3] + 1416) = v1 + 204;
    *(v1[3] + 1424) = v1 + 206;
    *(v1[3] + 1432) = v1 + 208;
    *(v1[3] + 1440) = v1 + 210;
    *(v1[3] + 1448) = v1 + 212;
    *(v1[3] + 1456) = v1 + 214;
    *(v1[3] + 1464) = v1 + 216;
    *(v1[3] + 1472) = v1 + 218;
    *(v1[3] + 1480) = v1 + 220;
    *(v1[3] + 1488) = v1 + 222;
    *(v1[3] + 1496) = v1 + 224;
    *(v1[3] + 1504) = v1 + 226;
    *(v1[3] + 1512) = v1 + 228;
    *(v1[3] + 1520) = v1 + 230;
    *(v1[3] + 1528) = v1 + 232;
    *(v1[3] + 1536) = v1 + 234;
    *(v1[3] + 1544) = v1 + 236;
    *(v1[3] + 1552) = v1 + 238;
    *(v1[3] + 1560) = v1 + 240;
    *(v1[3] + 1568) = v1 + 242;
    *(v1[3] + 1576) = v1 + 312;
    *(v1[3] + 1584) = v1 + 314;
    *(v1[3] + 1592) = v1 + 316;
    *(v1[3] + 1600) = v1 + 331;
    *(v1[3] + 1608) = v1 + 333;
    *(v1[3] + 1616) = v1 + 335;
    *(v1[3] + 1624) = v1 + 337;
    *(v1[3] + 1632) = v1 + 340;
    *(v1[3] + 1640) = v1 + 443;
    *(v1[3] + 1648) = v1 + 504;
    *(v1[3] + 1656) = v1 + 516;
    *(v1[3] + 1664) = v1 + 518;
    *(v1[3] + 1672) = v1 + 520;
    *(v1[3] + 1680) = v1 + 522;
    *(v1[3] + 1688) = v1 + 524;
    *(v1[3] + 1696) = v1 + 526;
    *(v1[3] + 1704) = v1 + 604;
    *(v1[3] + 1712) = v1 + 610;
    *(v1[3] + 1720) = v1 + 642;
    *(v1[3] + 1728) = v1 + 649;
    *(v1[3] + 1736) = v1 + 651;
    *(v1[3] + 1744) = v1 + 653;
    *(v1[3] + 1752) = v1 + 655;
    *(v1[3] + 1760) = v1 + 661;
    *(v1[3] + 1768) = v1 + 677;
    *(v1[3] + 1776) = v1 + 775;
    *(v1[3] + 1784) = v1 + 777;
    *(v1[3] + 1792) = v1 + 779;
    *(v1[3] + 1800) = v1 + 781;
    *(v1[3] + 1808) = v1 + 783;
    *(v1[3] + 1816) = v1 + 799;
    v3 = malloc_type_malloc(0x2A0uLL, 0x1020040EDED9539uLL);
    v1[4] = v3;
    if (!v3)
    {
      goto LABEL_8;
    }

    *v3 = v1 + 247;
    v3[1] = 0x600000001;
    v3[2] = v1 + 250;
    v3[3] = 0x600000001;
    v3[4] = v1 + 253;
    v3[5] = 0x600000001;
    v3[6] = v1 + 256;
    v3[7] = 0x200000007;
    v3[8] = v1 + 259;
    v3[9] = 0x200000008;
    v3[10] = v1 + 262;
    v3[11] = 0x200000000;
    v3[12] = v1 + 319;
    v3[13] = 0x600000001;
    v3[14] = v1 + 410;
    v3[15] = 0xA00000005;
    v3[16] = v1 + 414;
    v3[17] = 0xA00000005;
    v3[18] = v1 + 418;
    v3[19] = 0xA00000005;
    v3[20] = v1 + 474;
    v3[21] = 0x1200000004;
    v3[22] = v1 + 479;
    v3[23] = 0x3000000006;
    v3[24] = v1 + 487;
    v3[25] = 0x1200000004;
    v3[26] = v1 + 495;
    v3[27] = 0x600000001;
    v3[28] = v1 + 616;
    v3[29] = 0x3000000006;
    v3[30] = v1 + 624;
    v3[31] = 0x3000000006;
    v3[32] = v1 + 632;
    v3[33] = 0x3000000006;
    v3[34] = v1 + 679;
    v3[35] = 0xA00000005;
    v3[36] = v1 + 683;
    v3[37] = 0x1200000004;
    v3[38] = v1 + 688;
    v3[39] = 0x1200000004;
    v3[40] = v1 + 768;
    v3[41] = 0x1200000004;
    v3[42] = v1 + 247;
    v3[43] = 0x600000001;
    v3[44] = v1 + 250;
    v3[45] = 0x600000001;
    v3[46] = v1 + 253;
    v3[47] = 0x600000001;
    v3[48] = v1 + 256;
    v3[49] = 0x200000007;
    v3[50] = v1 + 259;
    v3[51] = 0x200000008;
    v3[52] = v1 + 262;
    v3[53] = 0x200000000;
    v3[54] = v1 + 319;
    v3[55] = 0x600000001;
    v3[56] = v1 + 410;
    v3[57] = 0xA00000005;
    v3[58] = v1 + 414;
    v3[59] = 0xA00000005;
    v3[60] = v1 + 418;
    v3[61] = 0xA00000005;
    v3[62] = v1 + 474;
    v3[63] = 0x1200000004;
    v3[64] = v1 + 479;
    v3[65] = 0x3000000006;
    v3[66] = v1 + 487;
    v4 = v1[4];
    v4[67] = 0x1200000004;
    v4[68] = v1 + 495;
    v4[69] = 0x600000001;
    v4[70] = v1 + 616;
    v4[71] = 0x3000000006;
    v4[72] = v1 + 624;
    v4[73] = 0x3000000006;
    v4[74] = v1 + 632;
    v4[75] = 0x3000000006;
    v4[76] = v1 + 679;
    v4[77] = 0xA00000005;
    v4[78] = v1 + 683;
    v4[79] = 0x1200000004;
    v4[80] = v1 + 688;
    v4[81] = 0x1200000004;
    v4[82] = v1 + 768;
    v4[83] = 0x1200000004;
    v5 = malloc_type_malloc(0x30uLL, 0x10040436913F5uLL);
    v1[5] = v5;
    if (!v5)
    {
      goto LABEL_8;
    }

    *v5 = v1 + 473;
    *(v1[5] + 8) = v1 + 500;
    *(v1[5] + 16) = v1 + 509;
    *(v1[5] + 24) = v1 + 473;
    *(v1[5] + 32) = v1 + 500;
    *(v1[5] + 40) = v1 + 509;
    v6 = malloc_type_malloc(0x2620uLL, 0x10040436913F5uLL);
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
    *(v1[6] + 1992) = v1 + 3278;
    *(v1[6] + 2000) = v1 + 3378;
    *(v1[6] + 2008) = v1 + 3382;
    *(v1[6] + 2016) = v1 + 3386;
    *(v1[6] + 2024) = v1 + 3390;
    *(v1[6] + 2032) = v1 + 3394;
    *(v1[6] + 2040) = v1 + 3398;
    *(v1[6] + 2048) = v1 + 3402;
    *(v1[6] + 2056) = v1 + 3406;
    *(v1[6] + 2064) = v1 + 3410;
    *(v1[6] + 2072) = v1 + 3414;
    *(v1[6] + 2080) = v1 + 3418;
    *(v1[6] + 2088) = v1 + 3422;
    *(v1[6] + 2096) = v1 + 3426;
    *(v1[6] + 2104) = v1 + 3430;
    *(v1[6] + 2112) = v1 + 3434;
    *(v1[6] + 2120) = v1 + 3438;
    *(v1[6] + 2128) = v1 + 3442;
    *(v1[6] + 2136) = v1 + 3446;
    *(v1[6] + 2144) = v1 + 3450;
    *(v1[6] + 2152) = v1 + 3454;
    *(v1[6] + 2160) = v1 + 3458;
    *(v1[6] + 2168) = v1 + 3462;
    *(v1[6] + 2176) = v1 + 3466;
    *(v1[6] + 2184) = v1 + 3470;
    *(v1[6] + 2192) = v1 + 3474;
    *(v1[6] + 2200) = v1 + 3478;
    *(v1[6] + 2208) = v1 + 3482;
    *(v1[6] + 2216) = v1 + 3486;
    *(v1[6] + 2224) = v1 + 3490;
    *(v1[6] + 2232) = v1 + 3494;
    *(v1[6] + 2240) = v1 + 3498;
    *(v1[6] + 2248) = v1 + 3502;
    *(v1[6] + 2256) = v1 + 3506;
    *(v1[6] + 2264) = v1 + 3510;
    *(v1[6] + 2272) = v1 + 3514;
    *(v1[6] + 2280) = v1 + 3518;
    *(v1[6] + 2288) = v1 + 3522;
    *(v1[6] + 2296) = v1 + 3526;
    *(v1[6] + 2304) = v1 + 3530;
    *(v1[6] + 2312) = v1 + 3534;
    *(v1[6] + 2320) = v1 + 3554;
    *(v1[6] + 2328) = v1 + 3558;
    *(v1[6] + 2336) = v1 + 3562;
    *(v1[6] + 2344) = v1 + 3602;
    *(v1[6] + 2352) = v1 + 3606;
    *(v1[6] + 2360) = v1 + 3610;
    *(v1[6] + 2368) = v1 + 3614;
    *(v1[6] + 2376) = v1 + 3618;
    *(v1[6] + 2384) = v1 + 3622;
    *(v1[6] + 2392) = v1 + 3626;
    *(v1[6] + 2400) = v1 + 3630;
    *(v1[6] + 2408) = v1 + 3634;
    *(v1[6] + 2416) = v1 + 3638;
    *(v1[6] + 2424) = v1 + 3642;
    *(v1[6] + 2432) = v1 + 3646;
    *(v1[6] + 2440) = v1 + 3650;
    *(v1[6] + 2448) = v1 + 3654;
    *(v1[6] + 2456) = v1 + 3658;
    *(v1[6] + 2464) = v1 + 3662;
    *(v1[6] + 2472) = v1 + 3666;
    *(v1[6] + 2480) = v1 + 3670;
    *(v1[6] + 2488) = v1 + 3674;
    *(v1[6] + 2496) = v1 + 3678;
    *(v1[6] + 2504) = v1 + 3682;
    *(v1[6] + 2512) = v1 + 3686;
    *(v1[6] + 2520) = v1 + 3690;
    *(v1[6] + 2528) = v1 + 3694;
    *(v1[6] + 2536) = v1 + 3698;
    *(v1[6] + 2544) = v1 + 3702;
    *(v1[6] + 2552) = v1 + 3706;
    *(v1[6] + 2560) = v1 + 3710;
    *(v1[6] + 2568) = v1 + 3714;
    *(v1[6] + 2576) = v1 + 3718;
    *(v1[6] + 2584) = v1 + 3722;
    *(v1[6] + 2592) = v1 + 3726;
    *(v1[6] + 2600) = v1 + 3730;
    *(v1[6] + 2608) = v1 + 3734;
    *(v1[6] + 2616) = v1 + 3738;
    *(v1[6] + 2624) = v1 + 3742;
    *(v1[6] + 2632) = v1 + 3746;
    *(v1[6] + 2640) = v1 + 3750;
    *(v1[6] + 2648) = v1 + 3754;
    *(v1[6] + 2656) = v1 + 3758;
    *(v1[6] + 2664) = v1 + 3762;
    *(v1[6] + 2672) = v1 + 3766;
    *(v1[6] + 2680) = v1 + 3770;
    *(v1[6] + 2688) = v1 + 3954;
    *(v1[6] + 2696) = v1 + 3986;
    *(v1[6] + 2704) = v1 + 4010;
    *(v1[6] + 2712) = v1 + 4014;
    *(v1[6] + 2720) = v1 + 4018;
    *(v1[6] + 2728) = v1 + 4042;
    *(v1[6] + 2736) = v1 + 4046;
    *(v1[6] + 2744) = v1 + 4050;
    *(v1[6] + 2752) = v1 + 4054;
    *(v1[6] + 2760) = v1 + 4058;
    *(v1[6] + 2768) = v1 + 4082;
    *(v1[6] + 2776) = v1 + 4086;
    *(v1[6] + 2784) = v1 + 4090;
    *(v1[6] + 2792) = v1 + 4094;
    *(v1[6] + 2800) = v1 + 4098;
    *(v1[6] + 2808) = v1 + 4102;
    *(v1[6] + 2816) = v1 + 4106;
    *(v1[6] + 2824) = v1 + 4110;
    *(v1[6] + 2832) = v1 + 4114;
    *(v1[6] + 2840) = v1 + 4118;
    *(v1[6] + 2848) = v1 + 4218;
    *(v1[6] + 2856) = v1 + 4222;
    *(v1[6] + 2864) = v1 + 4242;
    *(v1[6] + 2872) = v1 + 4246;
    *(v1[6] + 2880) = v1 + 4250;
    *(v1[6] + 2888) = v1 + 4254;
    *(v1[6] + 2896) = v1 + 4258;
    *(v1[6] + 2904) = v1 + 4262;
    *(v1[6] + 2912) = v1 + 4426;
    *(v1[6] + 2920) = v1 + 4430;
    *(v1[6] + 2928) = v1 + 4434;
    *(v1[6] + 2936) = v1 + 4438;
    *(v1[6] + 2944) = v1 + 4442;
    *(v1[6] + 2952) = v1 + 4446;
    *(v1[6] + 2960) = v1 + 4450;
    *(v1[6] + 2968) = v1 + 4454;
    *(v1[6] + 2976) = v1 + 4458;
    *(v1[6] + 2984) = v1 + 4462;
    *(v1[6] + 2992) = v1 + 4466;
    *(v1[6] + 3000) = v1 + 4490;
    *(v1[6] + 3008) = v1 + 4494;
    *(v1[6] + 3016) = v1 + 4498;
    *(v1[6] + 3024) = v1 + 4502;
    *(v1[6] + 3032) = v1 + 4506;
    *(v1[6] + 3040) = v1 + 4510;
    *(v1[6] + 3048) = v1 + 4514;
    *(v1[6] + 3056) = v1 + 4518;
    *(v1[6] + 3064) = v1 + 4522;
    *(v1[6] + 3072) = v1 + 4526;
    *(v1[6] + 3080) = v1 + 4530;
    *(v1[6] + 3088) = v1 + 4534;
    *(v1[6] + 3096) = v1 + 4538;
    *(v1[6] + 3104) = v1 + 4542;
    *(v1[6] + 3112) = v1 + 4546;
    *(v1[6] + 3120) = v1 + 4550;
    *(v1[6] + 3128) = v1 + 4554;
    *(v1[6] + 3136) = v1 + 4558;
    *(v1[6] + 3144) = v1 + 4562;
    *(v1[6] + 3152) = v1 + 4566;
    *(v1[6] + 3160) = v1 + 4570;
    *(v1[6] + 3168) = v1 + 4574;
    *(v1[6] + 3176) = v1 + 4578;
    *(v1[6] + 3184) = v1 + 4582;
    *(v1[6] + 3192) = v1 + 4586;
    *(v1[6] + 3200) = v1 + 4590;
    *(v1[6] + 3208) = v1 + 4594;
    *(v1[6] + 3216) = v1 + 4598;
    *(v1[6] + 3224) = v1 + 4602;
    *(v1[6] + 3232) = v1 + 4606;
    *(v1[6] + 3240) = v1 + 4610;
    *(v1[6] + 3248) = v1 + 4614;
    *(v1[6] + 3256) = v1 + 4618;
    *(v1[6] + 3264) = v1 + 4622;
    *(v1[6] + 3272) = v1 + 4626;
    *(v1[6] + 3280) = v1 + 4630;
    *(v1[6] + 3288) = v1 + 4634;
    *(v1[6] + 3296) = v1 + 4638;
    *(v1[6] + 3304) = v1 + 4642;
    *(v1[6] + 3312) = v1 + 4646;
    *(v1[6] + 3320) = v1 + 4650;
    *(v1[6] + 3328) = v1 + 4654;
    *(v1[6] + 3336) = v1 + 4658;
    *(v1[6] + 3344) = v1 + 4662;
    *(v1[6] + 3352) = v1 + 4666;
    *(v1[6] + 3360) = v1 + 4670;
    *(v1[6] + 3368) = v1 + 4674;
    *(v1[6] + 3376) = v1 + 4678;
    *(v1[6] + 3384) = v1 + 4682;
    *(v1[6] + 3392) = v1 + 4686;
    *(v1[6] + 3400) = v1 + 4690;
    *(v1[6] + 3408) = v1 + 4694;
    *(v1[6] + 3416) = v1 + 4698;
    *(v1[6] + 3424) = v1 + 4702;
    *(v1[6] + 3432) = v1 + 4706;
    *(v1[6] + 3440) = v1 + 4710;
    *(v1[6] + 3448) = v1 + 4714;
    *(v1[6] + 3456) = v1 + 4718;
    *(v1[6] + 3464) = v1 + 4722;
    *(v1[6] + 3472) = v1 + 4726;
    *(v1[6] + 3480) = v1 + 4730;
    *(v1[6] + 3488) = v1 + 4734;
    *(v1[6] + 3496) = v1 + 4738;
    *(v1[6] + 3504) = v1 + 4742;
    *(v1[6] + 3512) = v1 + 4746;
    *(v1[6] + 3520) = v1 + 4750;
    *(v1[6] + 3528) = v1 + 4754;
    *(v1[6] + 3536) = v1 + 4758;
    *(v1[6] + 3544) = v1 + 4762;
    *(v1[6] + 3552) = v1 + 4766;
    *(v1[6] + 3560) = v1 + 4770;
    *(v1[6] + 3568) = v1 + 4774;
    *(v1[6] + 3576) = v1 + 4778;
    *(v1[6] + 3584) = v1 + 4782;
    *(v1[6] + 3592) = v1 + 4786;
    *(v1[6] + 3600) = v1 + 4790;
    *(v1[6] + 3608) = v1 + 4794;
    *(v1[6] + 3616) = v1 + 4798;
    *(v1[6] + 3624) = v1 + 4802;
    *(v1[6] + 3632) = v1 + 4806;
    *(v1[6] + 3640) = v1 + 4810;
    *(v1[6] + 3648) = v1 + 4814;
    *(v1[6] + 3656) = v1 + 4818;
    *(v1[6] + 3664) = v1 + 4822;
    *(v1[6] + 3672) = v1 + 4890;
    *(v1[6] + 3680) = v1 + 4894;
    *(v1[6] + 3688) = v1 + 4898;
    *(v1[6] + 3696) = v1 + 4902;
    *(v1[6] + 3704) = v1 + 4906;
    *(v1[6] + 3712) = v1 + 4910;
    *(v1[6] + 3720) = v1 + 4914;
    *(v1[6] + 3728) = v1 + 4918;
    *(v1[6] + 3736) = v1 + 4922;
    *(v1[6] + 3744) = v1 + 5122;
    *(v1[6] + 3752) = v1 + 5126;
    *(v1[6] + 3760) = v1 + 5178;
    *(v1[6] + 3768) = v1 + 5182;
    *(v1[6] + 3776) = v1 + 5250;
    *(v1[6] + 3784) = v1 + 5274;
    *(v1[6] + 3792) = v1 + 5298;
    *(v1[6] + 3800) = v1 + 5302;
    *(v1[6] + 3808) = v1 + 5306;
    *(v1[6] + 3816) = v1 + 5310;
    *(v1[6] + 3824) = v1 + 5314;
    *(v1[6] + 3832) = v1 + 5318;
    *(v1[6] + 3840) = v1 + 5322;
    *(v1[6] + 3848) = v1 + 5326;
    *(v1[6] + 3856) = v1 + 5330;
    *(v1[6] + 3864) = v1 + 5334;
    *(v1[6] + 3872) = v1 + 5338;
    *(v1[6] + 3880) = v1 + 5342;
    *(v1[6] + 3888) = v1 + 5346;
    *(v1[6] + 3896) = v1 + 5350;
    *(v1[6] + 3904) = v1 + 5354;
    *(v1[6] + 3912) = v1 + 5426;
    *(v1[6] + 3920) = v1 + 5430;
    *(v1[6] + 3928) = v1 + 5546;
    *(v1[6] + 3936) = v1 + 5602;
    *(v1[6] + 3944) = v1 + 5606;
    *(v1[6] + 3952) = v1 + 5610;
    *(v1[6] + 3960) = v1 + 5614;
    *(v1[6] + 3968) = v1 + 5618;
    *(v1[6] + 3976) = v1 + 5622;
    *(v1[6] + 3984) = v1 + 5642;
    *(v1[6] + 3992) = v1 + 5646;
    *(v1[6] + 4000) = v1 + 5650;
    *(v1[6] + 4008) = v1 + 5654;
    *(v1[6] + 4016) = v1 + 5658;
    *(v1[6] + 4024) = v1 + 5662;
    *(v1[6] + 4032) = v1 + 5666;
    *(v1[6] + 4040) = v1 + 5670;
    *(v1[6] + 4048) = v1 + 5674;
    *(v1[6] + 4056) = v1 + 5678;
    *(v1[6] + 4064) = v1 + 5682;
    *(v1[6] + 4072) = v1 + 5686;
    *(v1[6] + 4080) = v1 + 5690;
    *(v1[6] + 4088) = v1 + 5694;
    *(v1[6] + 4096) = v1 + 5698;
    *(v1[6] + 4104) = v1 + 5702;
    *(v1[6] + 4112) = v1 + 5706;
    *(v1[6] + 4120) = v1 + 5710;
    *(v1[6] + 4128) = v1 + 5714;
    *(v1[6] + 4136) = v1 + 5718;
    *(v1[6] + 4144) = v1 + 5722;
    *(v1[6] + 4152) = v1 + 5726;
    *(v1[6] + 4160) = v1 + 5730;
    *(v1[6] + 4168) = v1 + 5734;
    *(v1[6] + 4176) = v1 + 5738;
    *(v1[6] + 4184) = v1 + 5742;
    *(v1[6] + 4192) = v1 + 5746;
    *(v1[6] + 4200) = v1 + 5750;
    *(v1[6] + 4208) = v1 + 5754;
    *(v1[6] + 4216) = v1 + 5758;
    *(v1[6] + 4224) = v1 + 5762;
    *(v1[6] + 4232) = v1 + 5766;
    *(v1[6] + 4240) = v1 + 5770;
    *(v1[6] + 4248) = v1 + 5774;
    *(v1[6] + 4256) = v1 + 5778;
    *(v1[6] + 4264) = v1 + 5782;
    *(v1[6] + 4272) = v1 + 5786;
    *(v1[6] + 4280) = v1 + 5790;
    *(v1[6] + 4288) = v1 + 5794;
    *(v1[6] + 4296) = v1 + 5798;
    *(v1[6] + 4304) = v1 + 5802;
    *(v1[6] + 4312) = v1 + 5806;
    *(v1[6] + 4320) = v1 + 5810;
    *(v1[6] + 4328) = v1 + 5814;
    *(v1[6] + 4336) = v1 + 5818;
    *(v1[6] + 4344) = v1 + 5822;
    *(v1[6] + 4352) = v1 + 5826;
    *(v1[6] + 4360) = v1 + 5830;
    *(v1[6] + 4368) = v1 + 5834;
    *(v1[6] + 4376) = v1 + 5838;
    *(v1[6] + 4384) = v1 + 5842;
    *(v1[6] + 4392) = v1 + 5846;
    *(v1[6] + 4400) = v1 + 5850;
    *(v1[6] + 4408) = v1 + 5854;
    *(v1[6] + 4416) = v1 + 5858;
    *(v1[6] + 4424) = v1 + 5862;
    *(v1[6] + 4432) = v1 + 5866;
    *(v1[6] + 4440) = v1 + 5870;
    *(v1[6] + 4448) = v1 + 5874;
    *(v1[6] + 4456) = v1 + 5878;
    *(v1[6] + 4464) = v1 + 5882;
    *(v1[6] + 4472) = v1 + 5886;
    *(v1[6] + 4480) = v1 + 5890;
    *(v1[6] + 4488) = v1 + 5894;
    *(v1[6] + 4496) = v1 + 5898;
    *(v1[6] + 4504) = v1 + 5902;
    *(v1[6] + 4512) = v1 + 5906;
    *(v1[6] + 4520) = v1 + 5910;
    *(v1[6] + 4528) = v1 + 5914;
    *(v1[6] + 4536) = v1 + 5918;
    *(v1[6] + 4544) = v1 + 5922;
    *(v1[6] + 4552) = v1 + 5926;
    *(v1[6] + 4560) = v1 + 5930;
    *(v1[6] + 4568) = v1 + 5934;
    *(v1[6] + 4576) = v1 + 5938;
    *(v1[6] + 4584) = v1 + 5942;
    *(v1[6] + 4592) = v1 + 5946;
    *(v1[6] + 4600) = v1 + 5950;
    *(v1[6] + 4608) = v1 + 5954;
    *(v1[6] + 4616) = v1 + 5958;
    *(v1[6] + 4624) = v1 + 5962;
    *(v1[6] + 4632) = v1 + 6186;
    *(v1[6] + 4640) = v1 + 6190;
    *(v1[6] + 4648) = v1 + 6274;
    *(v1[6] + 4656) = v1 + 6278;
    *(v1[6] + 4664) = v1 + 6282;
    *(v1[6] + 4672) = v1 + 6286;
    *(v1[6] + 4680) = v1 + 6290;
    *(v1[6] + 4688) = v1 + 6294;
    *(v1[6] + 4696) = v1 + 6298;
    *(v1[6] + 4704) = v1 + 6302;
    *(v1[6] + 4712) = v1 + 6306;
    *(v1[6] + 4720) = v1 + 6310;
    *(v1[6] + 4728) = v1 + 6314;
    *(v1[6] + 4736) = v1 + 6318;
    *(v1[6] + 4744) = v1 + 6322;
    *(v1[6] + 4752) = v1 + 6326;
    *(v1[6] + 4760) = v1 + 6330;
    *(v1[6] + 4768) = v1 + 6334;
    *(v1[6] + 4776) = v1 + 6338;
    *(v1[6] + 4784) = v1 + 6342;
    *(v1[6] + 4792) = v1 + 6346;
    *(v1[6] + 4800) = v1 + 6350;
    *(v1[6] + 4808) = v1 + 6354;
    *(v1[6] + 4816) = v1 + 6358;
    *(v1[6] + 4824) = v1 + 6362;
    *(v1[6] + 4832) = v1 + 6366;
    *(v1[6] + 4840) = v1 + 6370;
    *(v1[6] + 4848) = v1 + 6374;
    *(v1[6] + 4856) = v1 + 6378;
    *(v1[6] + 4864) = v1 + 6402;
    *(v1[6] + 4872) = v1 + 6406;
    *(v1[6] + 4880) = v1 + 634;
    *(v1[6] + 4888) = v1 + 722;
    *(v1[6] + 4896) = v1 + 726;
    *(v1[6] + 4904) = v1 + 730;
    *(v1[6] + 4912) = v1 + 734;
    *(v1[6] + 4920) = v1 + 738;
    *(v1[6] + 4928) = v1 + 742;
    *(v1[6] + 4936) = v1 + 746;
    *(v1[6] + 4944) = v1 + 750;
    *(v1[6] + 4952) = v1 + 754;
    *(v1[6] + 4960) = v1 + 758;
    *(v1[6] + 4968) = v1 + 762;
    *(v1[6] + 4976) = v1 + 766;
    *(v1[6] + 4984) = v1 + 930;
    *(v1[6] + 4992) = v1 + 934;
    *(v1[6] + 5000) = v1 + 938;
    *(v1[6] + 5008) = v1 + 942;
    *(v1[6] + 5016) = v1 + 946;
    *(v1[6] + 5024) = v1 + 950;
    *(v1[6] + 5032) = v1 + 954;
    *(v1[6] + 5040) = v1 + 958;
    *(v1[6] + 5048) = v1 + 962;
    *(v1[6] + 5056) = v1 + 966;
    *(v1[6] + 5064) = v1 + 970;
    *(v1[6] + 5072) = v1 + 974;
    *(v1[6] + 5080) = v1 + 978;
    *(v1[6] + 5088) = v1 + 982;
    *(v1[6] + 5096) = v1 + 986;
    *(v1[6] + 5104) = v1 + 990;
    *(v1[6] + 5112) = v1 + 994;
    *(v1[6] + 5120) = v1 + 998;
    *(v1[6] + 5128) = v1 + 1002;
    *(v1[6] + 5136) = v1 + 1006;
    *(v1[6] + 5144) = v1 + 1010;
    *(v1[6] + 5152) = v1 + 1014;
    *(v1[6] + 5160) = v1 + 1018;
    *(v1[6] + 5168) = v1 + 1022;
    *(v1[6] + 5176) = v1 + 1026;
    *(v1[6] + 5184) = v1 + 1030;
    *(v1[6] + 5192) = v1 + 1130;
    *(v1[6] + 5200) = v1 + 1186;
    *(v1[6] + 5208) = v1 + 1190;
    *(v1[6] + 5216) = v1 + 1210;
    *(v1[6] + 5224) = v1 + 1214;
    *(v1[6] + 5232) = v1 + 1218;
    *(v1[6] + 5240) = v1 + 2122;
    *(v1[6] + 5248) = v1 + 2126;
    *(v1[6] + 5256) = v1 + 2130;
    *(v1[6] + 5264) = v1 + 2134;
    *(v1[6] + 5272) = v1 + 2138;
    *(v1[6] + 5280) = v1 + 2142;
    *(v1[6] + 5288) = v1 + 2146;
    *(v1[6] + 5296) = v1 + 2150;
    *(v1[6] + 5304) = v1 + 2154;
    *(v1[6] + 5312) = v1 + 2158;
    *(v1[6] + 5320) = v1 + 2162;
    *(v1[6] + 5328) = v1 + 2166;
    *(v1[6] + 5336) = v1 + 2170;
    *(v1[6] + 5344) = v1 + 2174;
    *(v1[6] + 5352) = v1 + 2178;
    *(v1[6] + 5360) = v1 + 2182;
    *(v1[6] + 5368) = v1 + 2186;
    *(v1[6] + 5376) = v1 + 2190;
    *(v1[6] + 5384) = v1 + 2194;
    *(v1[6] + 5392) = v1 + 2198;
    *(v1[6] + 5400) = v1 + 2202;
    *(v1[6] + 5408) = v1 + 2206;
    *(v1[6] + 5416) = v1 + 2210;
    *(v1[6] + 5424) = v1 + 2214;
    *(v1[6] + 5432) = v1 + 2218;
    *(v1[6] + 5440) = v1 + 2222;
    *(v1[6] + 5448) = v1 + 2226;
    *(v1[6] + 5456) = v1 + 2230;
    *(v1[6] + 5464) = v1 + 2234;
    *(v1[6] + 5472) = v1 + 2238;
    *(v1[6] + 5480) = v1 + 2242;
    *(v1[6] + 5488) = v1 + 2246;
    *(v1[6] + 5496) = v1 + 2250;
    *(v1[6] + 5504) = v1 + 2254;
    *(v1[6] + 5512) = v1 + 2258;
    *(v1[6] + 5520) = v1 + 2262;
    *(v1[6] + 5528) = v1 + 2266;
    *(v1[6] + 5536) = v1 + 2270;
    *(v1[6] + 5544) = v1 + 2274;
    *(v1[6] + 5552) = v1 + 2278;
    *(v1[6] + 5560) = v1 + 2282;
    *(v1[6] + 5568) = v1 + 2286;
    *(v1[6] + 5576) = v1 + 2466;
    *(v1[6] + 5584) = v1 + 2470;
    *(v1[6] + 5592) = v1 + 2474;
    *(v1[6] + 5600) = v1 + 2478;
    *(v1[6] + 5608) = v1 + 2482;
    *(v1[6] + 5616) = v1 + 2538;
    *(v1[6] + 5624) = v1 + 2542;
    *(v1[6] + 5632) = v1 + 2546;
    *(v1[6] + 5640) = v1 + 2578;
    *(v1[6] + 5648) = v1 + 2582;
    *(v1[6] + 5656) = v1 + 2586;
    *(v1[6] + 5664) = v1 + 2590;
    *(v1[6] + 5672) = v1 + 2594;
    *(v1[6] + 5680) = v1 + 2598;
    *(v1[6] + 5688) = v1 + 2602;
    *(v1[6] + 5696) = v1 + 2606;
    *(v1[6] + 5704) = v1 + 2610;
    *(v1[6] + 5712) = v1 + 2614;
    *(v1[6] + 5720) = v1 + 2618;
    *(v1[6] + 5728) = v1 + 2622;
    *(v1[6] + 5736) = v1 + 2626;
    *(v1[6] + 5744) = v1 + 2630;
    *(v1[6] + 5752) = v1 + 2634;
    *(v1[6] + 5760) = v1 + 2638;
    *(v1[6] + 5768) = v1 + 2706;
    *(v1[6] + 5776) = v1 + 2730;
    *(v1[6] + 5784) = v1 + 2734;
    *(v1[6] + 5792) = v1 + 2738;
    *(v1[6] + 5800) = v1 + 2742;
    *(v1[6] + 5808) = v1 + 2746;
    *(v1[6] + 5816) = v1 + 2750;
    *(v1[6] + 5824) = v1 + 2754;
    *(v1[6] + 5832) = v1 + 2758;
    *(v1[6] + 5840) = v1 + 2762;
    *(v1[6] + 5848) = v1 + 2766;
    *(v1[6] + 5856) = v1 + 2770;
    *(v1[6] + 5864) = v1 + 2774;
    *(v1[6] + 5872) = v1 + 2778;
    *(v1[6] + 5880) = v1 + 2782;
    *(v1[6] + 5888) = v1 + 2786;
    *(v1[6] + 5896) = v1 + 2790;
    *(v1[6] + 5904) = v1 + 2794;
    *(v1[6] + 5912) = v1 + 2798;
    *(v1[6] + 5920) = v1 + 2802;
    *(v1[6] + 5928) = v1 + 2806;
    *(v1[6] + 5936) = v1 + 2810;
    *(v1[6] + 5944) = v1 + 2814;
    *(v1[6] + 5952) = v1 + 2818;
    *(v1[6] + 5960) = v1 + 2822;
    *(v1[6] + 5968) = v1 + 2826;
    *(v1[6] + 5976) = v1 + 2830;
    *(v1[6] + 5984) = v1 + 2834;
    *(v1[6] + 5992) = v1 + 2838;
    *(v1[6] + 6000) = v1 + 2842;
    *(v1[6] + 6008) = v1 + 2846;
    *(v1[6] + 6016) = v1 + 2850;
    *(v1[6] + 6024) = v1 + 2854;
    *(v1[6] + 6032) = v1 + 2858;
    *(v1[6] + 6040) = v1 + 2862;
    *(v1[6] + 6048) = v1 + 2866;
    *(v1[6] + 6056) = v1 + 2870;
    *(v1[6] + 6064) = v1 + 2874;
    *(v1[6] + 6072) = v1 + 2878;
    *(v1[6] + 6080) = v1 + 2882;
    *(v1[6] + 6088) = v1 + 2886;
    *(v1[6] + 6096) = v1 + 2890;
    *(v1[6] + 6104) = v1 + 2894;
    *(v1[6] + 6112) = v1 + 2898;
    *(v1[6] + 6120) = v1 + 2902;
    *(v1[6] + 6128) = v1 + 2906;
    *(v1[6] + 6136) = v1 + 2910;
    *(v1[6] + 6144) = v1 + 2914;
    *(v1[6] + 6152) = v1 + 2918;
    *(v1[6] + 6160) = v1 + 2922;
    *(v1[6] + 6168) = v1 + 2926;
    *(v1[6] + 6176) = v1 + 2930;
    *(v1[6] + 6184) = v1 + 2934;
    *(v1[6] + 6192) = v1 + 2938;
    *(v1[6] + 6200) = v1 + 2942;
    *(v1[6] + 6208) = v1 + 2946;
    *(v1[6] + 6216) = v1 + 2950;
    *(v1[6] + 6224) = v1 + 2954;
    *(v1[6] + 6232) = v1 + 2958;
    *(v1[6] + 6240) = v1 + 2962;
    *(v1[6] + 6248) = v1 + 2966;
    *(v1[6] + 6256) = v1 + 2970;
    *(v1[6] + 6264) = v1 + 2974;
    *(v1[6] + 6272) = v1 + 2978;
    *(v1[6] + 6280) = v1 + 2982;
    *(v1[6] + 6288) = v1 + 2986;
    *(v1[6] + 6296) = v1 + 2990;
    *(v1[6] + 6304) = v1 + 2994;
    *(v1[6] + 6312) = v1 + 2998;
    *(v1[6] + 6320) = v1 + 3002;
    *(v1[6] + 6328) = v1 + 3006;
    *(v1[6] + 6336) = v1 + 3010;
    *(v1[6] + 6344) = v1 + 3014;
    *(v1[6] + 6352) = v1 + 3018;
    *(v1[6] + 6360) = v1 + 3022;
    *(v1[6] + 6368) = v1 + 3026;
    *(v1[6] + 6376) = v1 + 3030;
    *(v1[6] + 6384) = v1 + 3034;
    *(v1[6] + 6392) = v1 + 3038;
    *(v1[6] + 6400) = v1 + 3042;
    *(v1[6] + 6408) = v1 + 3046;
    *(v1[6] + 6416) = v1 + 3050;
    *(v1[6] + 6424) = v1 + 3054;
    *(v1[6] + 6432) = v1 + 3058;
    *(v1[6] + 6440) = v1 + 3062;
    *(v1[6] + 6448) = v1 + 3066;
    *(v1[6] + 6456) = v1 + 3070;
    *(v1[6] + 6464) = v1 + 3074;
    *(v1[6] + 6472) = v1 + 3078;
    *(v1[6] + 6480) = v1 + 3082;
    *(v1[6] + 6488) = v1 + 3086;
    *(v1[6] + 6496) = v1 + 3090;
    *(v1[6] + 6504) = v1 + 3094;
    *(v1[6] + 6512) = v1 + 3098;
    *(v1[6] + 6520) = v1 + 3102;
    *(v1[6] + 6528) = v1 + 3106;
    *(v1[6] + 6536) = v1 + 3110;
    *(v1[6] + 6544) = v1 + 3114;
    *(v1[6] + 6552) = v1 + 3118;
    *(v1[6] + 6560) = v1 + 3122;
    *(v1[6] + 6568) = v1 + 3126;
    *(v1[6] + 6576) = v1 + 3130;
    *(v1[6] + 6584) = v1 + 3134;
    *(v1[6] + 6592) = v1 + 3138;
    *(v1[6] + 6600) = v1 + 3142;
    *(v1[6] + 6608) = v1 + 3146;
    *(v1[6] + 6616) = v1 + 3150;
    *(v1[6] + 6624) = v1 + 3154;
    *(v1[6] + 6632) = v1 + 3158;
    *(v1[6] + 6640) = v1 + 3162;
    *(v1[6] + 6648) = v1 + 3166;
    *(v1[6] + 6656) = v1 + 3170;
    *(v1[6] + 6664) = v1 + 3174;
    *(v1[6] + 6672) = v1 + 3178;
    *(v1[6] + 6680) = v1 + 3182;
    *(v1[6] + 6688) = v1 + 3186;
    *(v1[6] + 6696) = v1 + 3190;
    *(v1[6] + 6704) = v1 + 3194;
    *(v1[6] + 6712) = v1 + 3198;
    *(v1[6] + 6720) = v1 + 3202;
    *(v1[6] + 6728) = v1 + 3206;
    *(v1[6] + 6736) = v1 + 3210;
    *(v1[6] + 6744) = v1 + 3214;
    *(v1[6] + 6752) = v1 + 3218;
    *(v1[6] + 6760) = v1 + 3222;
    *(v1[6] + 6768) = v1 + 3226;
    *(v1[6] + 6776) = v1 + 3230;
    *(v1[6] + 6784) = v1 + 3234;
    *(v1[6] + 6792) = v1 + 3238;
    *(v1[6] + 6800) = v1 + 3242;
    *(v1[6] + 6808) = v1 + 3246;
    *(v1[6] + 6816) = v1 + 3250;
    *(v1[6] + 6824) = v1 + 3254;
    *(v1[6] + 6832) = v1 + 3258;
    *(v1[6] + 6840) = v1 + 3262;
    *(v1[6] + 6848) = v1 + 3266;
    *(v1[6] + 6856) = v1 + 3270;
    *(v1[6] + 6864) = v1 + 3274;
    *(v1[6] + 6872) = v1 + 3278;
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
    *(v1[6] + 7568) = v1 + 3954;
    *(v1[6] + 7576) = v1 + 3986;
    *(v1[6] + 7584) = v1 + 4010;
    *(v1[6] + 7592) = v1 + 4014;
    *(v1[6] + 7600) = v1 + 4018;
    *(v1[6] + 7608) = v1 + 4042;
    *(v1[6] + 7616) = v1 + 4046;
    *(v1[6] + 7624) = v1 + 4050;
    *(v1[6] + 7632) = v1 + 4054;
    *(v1[6] + 7640) = v1 + 4058;
    *(v1[6] + 7648) = v1 + 4082;
    *(v1[6] + 7656) = v1 + 4086;
    *(v1[6] + 7664) = v1 + 4090;
    *(v1[6] + 7672) = v1 + 4094;
    *(v1[6] + 7680) = v1 + 4098;
    *(v1[6] + 7688) = v1 + 4102;
    *(v1[6] + 7696) = v1 + 4106;
    *(v1[6] + 7704) = v1 + 4110;
    *(v1[6] + 7712) = v1 + 4114;
    *(v1[6] + 7720) = v1 + 4118;
    *(v1[6] + 7728) = v1 + 4218;
    *(v1[6] + 7736) = v1 + 4222;
    *(v1[6] + 7744) = v1 + 4242;
    *(v1[6] + 7752) = v1 + 4246;
    *(v1[6] + 7760) = v1 + 4250;
    *(v1[6] + 7768) = v1 + 4254;
    *(v1[6] + 7776) = v1 + 4258;
    *(v1[6] + 7784) = v1 + 4262;
    *(v1[6] + 7792) = v1 + 4426;
    *(v1[6] + 7800) = v1 + 4430;
    *(v1[6] + 7808) = v1 + 4434;
    *(v1[6] + 7816) = v1 + 4438;
    *(v1[6] + 7824) = v1 + 4442;
    *(v1[6] + 7832) = v1 + 4446;
    *(v1[6] + 7840) = v1 + 4450;
    *(v1[6] + 7848) = v1 + 4454;
    *(v1[6] + 7856) = v1 + 4458;
    *(v1[6] + 7864) = v1 + 4462;
    *(v1[6] + 7872) = v1 + 4466;
    *(v1[6] + 7880) = v1 + 4490;
    *(v1[6] + 7888) = v1 + 4494;
    *(v1[6] + 7896) = v1 + 4498;
    *(v1[6] + 7904) = v1 + 4502;
    *(v1[6] + 7912) = v1 + 4506;
    *(v1[6] + 7920) = v1 + 4510;
    *(v1[6] + 7928) = v1 + 4514;
    *(v1[6] + 7936) = v1 + 4518;
    *(v1[6] + 7944) = v1 + 4522;
    *(v1[6] + 7952) = v1 + 4526;
    *(v1[6] + 7960) = v1 + 4530;
    *(v1[6] + 7968) = v1 + 4534;
    *(v1[6] + 7976) = v1 + 4538;
    *(v1[6] + 7984) = v1 + 4542;
    *(v1[6] + 7992) = v1 + 4546;
    *(v1[6] + 8000) = v1 + 4550;
    *(v1[6] + 8008) = v1 + 4554;
    *(v1[6] + 8016) = v1 + 4558;
    *(v1[6] + 8024) = v1 + 4562;
    *(v1[6] + 8032) = v1 + 4566;
    *(v1[6] + 8040) = v1 + 4570;
    *(v1[6] + 8048) = v1 + 4574;
    *(v1[6] + 8056) = v1 + 4578;
    *(v1[6] + 8064) = v1 + 4582;
    *(v1[6] + 8072) = v1 + 4586;
    *(v1[6] + 8080) = v1 + 4590;
    *(v1[6] + 8088) = v1 + 4594;
    *(v1[6] + 8096) = v1 + 4598;
    *(v1[6] + 8104) = v1 + 4602;
    *(v1[6] + 8112) = v1 + 4606;
    *(v1[6] + 8120) = v1 + 4610;
    *(v1[6] + 8128) = v1 + 4614;
    *(v1[6] + 8136) = v1 + 4618;
    *(v1[6] + 8144) = v1 + 4622;
    *(v1[6] + 8152) = v1 + 4626;
    *(v1[6] + 8160) = v1 + 4630;
    *(v1[6] + 8168) = v1 + 4634;
    *(v1[6] + 8176) = v1 + 4638;
    *(v1[6] + 8184) = v1 + 4642;
    *(v1[6] + 0x2000) = v1 + 4646;
    *(v1[6] + 8200) = v1 + 4650;
    *(v1[6] + 8208) = v1 + 4654;
    *(v1[6] + 8216) = v1 + 4658;
    *(v1[6] + 8224) = v1 + 4662;
    *(v1[6] + 8232) = v1 + 4666;
    *(v1[6] + 8240) = v1 + 4670;
    *(v1[6] + 8248) = v1 + 4674;
    *(v1[6] + 8256) = v1 + 4678;
    *(v1[6] + 8264) = v1 + 4682;
    *(v1[6] + 8272) = v1 + 4686;
    *(v1[6] + 8280) = v1 + 4690;
    *(v1[6] + 8288) = v1 + 4694;
    *(v1[6] + 8296) = v1 + 4698;
    *(v1[6] + 8304) = v1 + 4702;
    *(v1[6] + 8312) = v1 + 4706;
    *(v1[6] + 8320) = v1 + 4710;
    *(v1[6] + 8328) = v1 + 4714;
    *(v1[6] + 8336) = v1 + 4718;
    *(v1[6] + 8344) = v1 + 4722;
    *(v1[6] + 8352) = v1 + 4726;
    *(v1[6] + 8360) = v1 + 4730;
    *(v1[6] + 8368) = v1 + 4734;
    *(v1[6] + 8376) = v1 + 4738;
    *(v1[6] + 8384) = v1 + 4742;
    *(v1[6] + 8392) = v1 + 4746;
    *(v1[6] + 8400) = v1 + 4750;
    *(v1[6] + 8408) = v1 + 4754;
    *(v1[6] + 8416) = v1 + 4758;
    *(v1[6] + 8424) = v1 + 4762;
    *(v1[6] + 8432) = v1 + 4766;
    *(v1[6] + 8440) = v1 + 4770;
    *(v1[6] + 8448) = v1 + 4774;
    *(v1[6] + 8456) = v1 + 4778;
    *(v1[6] + 8464) = v1 + 4782;
    *(v1[6] + 8472) = v1 + 4786;
    *(v1[6] + 8480) = v1 + 4790;
    *(v1[6] + 8488) = v1 + 4794;
    *(v1[6] + 8496) = v1 + 4798;
    *(v1[6] + 8504) = v1 + 4802;
    *(v1[6] + 8512) = v1 + 4806;
    *(v1[6] + 8520) = v1 + 4810;
    *(v1[6] + 8528) = v1 + 4814;
    *(v1[6] + 8536) = v1 + 4818;
    *(v1[6] + 8544) = v1 + 4822;
    *(v1[6] + 8552) = v1 + 4890;
    *(v1[6] + 8560) = v1 + 4894;
    *(v1[6] + 8568) = v1 + 4898;
    *(v1[6] + 8576) = v1 + 4902;
    *(v1[6] + 8584) = v1 + 4906;
    *(v1[6] + 8592) = v1 + 4910;
    *(v1[6] + 8600) = v1 + 4914;
    *(v1[6] + 8608) = v1 + 4918;
    *(v1[6] + 8616) = v1 + 4922;
    *(v1[6] + 8624) = v1 + 5122;
    *(v1[6] + 8632) = v1 + 5126;
    *(v1[6] + 8640) = v1 + 5178;
    *(v1[6] + 8648) = v1 + 5182;
    *(v1[6] + 8656) = v1 + 5250;
    *(v1[6] + 8664) = v1 + 5274;
    *(v1[6] + 8672) = v1 + 5298;
    *(v1[6] + 8680) = v1 + 5302;
    *(v1[6] + 8688) = v1 + 5306;
    *(v1[6] + 8696) = v1 + 5310;
    *(v1[6] + 8704) = v1 + 5314;
    *(v1[6] + 8712) = v1 + 5318;
    *(v1[6] + 8720) = v1 + 5322;
    *(v1[6] + 8728) = v1 + 5326;
    *(v1[6] + 8736) = v1 + 5330;
    *(v1[6] + 8744) = v1 + 5334;
    *(v1[6] + 8752) = v1 + 5338;
    *(v1[6] + 8760) = v1 + 5342;
    *(v1[6] + 8768) = v1 + 5346;
    *(v1[6] + 8776) = v1 + 5350;
    *(v1[6] + 8784) = v1 + 5354;
    *(v1[6] + 8792) = v1 + 5426;
    *(v1[6] + 8800) = v1 + 5430;
    *(v1[6] + 8808) = v1 + 5546;
    *(v1[6] + 8816) = v1 + 5602;
    *(v1[6] + 8824) = v1 + 5606;
    *(v1[6] + 8832) = v1 + 5610;
    *(v1[6] + 8840) = v1 + 5614;
    *(v1[6] + 8848) = v1 + 5618;
    *(v1[6] + 8856) = v1 + 5622;
    *(v1[6] + 8864) = v1 + 5642;
    *(v1[6] + 8872) = v1 + 5646;
    *(v1[6] + 8880) = v1 + 5650;
    *(v1[6] + 8888) = v1 + 5654;
    *(v1[6] + 8896) = v1 + 5658;
    *(v1[6] + 8904) = v1 + 5662;
    *(v1[6] + 8912) = v1 + 5666;
    *(v1[6] + 8920) = v1 + 5670;
    *(v1[6] + 8928) = v1 + 5674;
    *(v1[6] + 8936) = v1 + 5678;
    *(v1[6] + 8944) = v1 + 5682;
    *(v1[6] + 8952) = v1 + 5686;
    *(v1[6] + 8960) = v1 + 5690;
    *(v1[6] + 8968) = v1 + 5694;
    *(v1[6] + 8976) = v1 + 5698;
    *(v1[6] + 8984) = v1 + 5702;
    *(v1[6] + 8992) = v1 + 5706;
    *(v1[6] + 9000) = v1 + 5710;
    *(v1[6] + 9008) = v1 + 5714;
    *(v1[6] + 9016) = v1 + 5718;
    *(v1[6] + 9024) = v1 + 5722;
    *(v1[6] + 9032) = v1 + 5726;
    *(v1[6] + 9040) = v1 + 5730;
    *(v1[6] + 9048) = v1 + 5734;
    *(v1[6] + 9056) = v1 + 5738;
    *(v1[6] + 9064) = v1 + 5742;
    *(v1[6] + 9072) = v1 + 5746;
    *(v1[6] + 9080) = v1 + 5750;
    *(v1[6] + 9088) = v1 + 5754;
    *(v1[6] + 9096) = v1 + 5758;
    *(v1[6] + 9104) = v1 + 5762;
    *(v1[6] + 9112) = v1 + 5766;
    *(v1[6] + 9120) = v1 + 5770;
    *(v1[6] + 9128) = v1 + 5774;
    *(v1[6] + 9136) = v1 + 5778;
    *(v1[6] + 9144) = v1 + 5782;
    *(v1[6] + 9152) = v1 + 5786;
    *(v1[6] + 9160) = v1 + 5790;
    *(v1[6] + 9168) = v1 + 5794;
    *(v1[6] + 9176) = v1 + 5798;
    *(v1[6] + 9184) = v1 + 5802;
    *(v1[6] + 9192) = v1 + 5806;
    *(v1[6] + 9200) = v1 + 5810;
    *(v1[6] + 9208) = v1 + 5814;
    *(v1[6] + 9216) = v1 + 5818;
    *(v1[6] + 9224) = v1 + 5822;
    *(v1[6] + 9232) = v1 + 5826;
    *(v1[6] + 9240) = v1 + 5830;
    *(v1[6] + 9248) = v1 + 5834;
    *(v1[6] + 9256) = v1 + 5838;
    *(v1[6] + 9264) = v1 + 5842;
    *(v1[6] + 9272) = v1 + 5846;
    *(v1[6] + 9280) = v1 + 5850;
    *(v1[6] + 9288) = v1 + 5854;
    *(v1[6] + 9296) = v1 + 5858;
    *(v1[6] + 9304) = v1 + 5862;
    *(v1[6] + 9312) = v1 + 5866;
    *(v1[6] + 9320) = v1 + 5870;
    *(v1[6] + 9328) = v1 + 5874;
    *(v1[6] + 9336) = v1 + 5878;
    *(v1[6] + 9344) = v1 + 5882;
    *(v1[6] + 9352) = v1 + 5886;
    *(v1[6] + 9360) = v1 + 5890;
    *(v1[6] + 9368) = v1 + 5894;
    *(v1[6] + 9376) = v1 + 5898;
    *(v1[6] + 9384) = v1 + 5902;
    *(v1[6] + 9392) = v1 + 5906;
    *(v1[6] + 9400) = v1 + 5910;
    *(v1[6] + 9408) = v1 + 5914;
    *(v1[6] + 9416) = v1 + 5918;
    *(v1[6] + 9424) = v1 + 5922;
    *(v1[6] + 9432) = v1 + 5926;
    *(v1[6] + 9440) = v1 + 5930;
    *(v1[6] + 9448) = v1 + 5934;
    *(v1[6] + 9456) = v1 + 5938;
    *(v1[6] + 9464) = v1 + 5942;
    *(v1[6] + 9472) = v1 + 5946;
    *(v1[6] + 9480) = v1 + 5950;
    *(v1[6] + 9488) = v1 + 5954;
    *(v1[6] + 9496) = v1 + 5958;
    *(v1[6] + 9504) = v1 + 5962;
    *(v1[6] + 9512) = v1 + 6186;
    *(v1[6] + 9520) = v1 + 6190;
    *(v1[6] + 9528) = v1 + 6274;
    *(v1[6] + 9536) = v1 + 6278;
    *(v1[6] + 9544) = v1 + 6282;
    *(v1[6] + 9552) = v1 + 6286;
    *(v1[6] + 9560) = v1 + 6290;
    *(v1[6] + 9568) = v1 + 6294;
    *(v1[6] + 9576) = v1 + 6298;
    *(v1[6] + 9584) = v1 + 6302;
    *(v1[6] + 9592) = v1 + 6306;
    *(v1[6] + 9600) = v1 + 6310;
    *(v1[6] + 9608) = v1 + 6314;
    *(v1[6] + 9616) = v1 + 6318;
    *(v1[6] + 9624) = v1 + 6322;
    *(v1[6] + 9632) = v1 + 6326;
    *(v1[6] + 9640) = v1 + 6330;
    *(v1[6] + 9648) = v1 + 6334;
    *(v1[6] + 9656) = v1 + 6338;
    *(v1[6] + 9664) = v1 + 6342;
    *(v1[6] + 9672) = v1 + 6346;
    *(v1[6] + 9680) = v1 + 6350;
    *(v1[6] + 9688) = v1 + 6354;
    *(v1[6] + 9696) = v1 + 6358;
    *(v1[6] + 9704) = v1 + 6362;
    *(v1[6] + 9712) = v1 + 6366;
    *(v1[6] + 9720) = v1 + 6370;
    *(v1[6] + 9728) = v1 + 6374;
    *(v1[6] + 9736) = v1 + 6378;
    *(v1[6] + 9744) = v1 + 6402;
    *(v1[6] + 9752) = v1 + 6406;
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
      *(v1[7] + 168) = v1 + 493;
      *(v1[7] + 176) = v1 + 529;
      *(v1[7] + 184) = v1 + 534;
      *(v1[7] + 192) = v1 + 536;
      *(v1[7] + 200) = v1 + 538;
      *(v1[7] + 208) = v1 + 540;
      *(v1[7] + 216) = v1 + 542;
      *(v1[7] + 224) = v1 + 544;
      *(v1[7] + 232) = v1 + 546;
      *(v1[7] + 240) = v1 + 548;
      *(v1[7] + 248) = v1 + 550;
      *(v1[7] + 256) = v1 + 552;
      *(v1[7] + 264) = v1 + 560;
      *(v1[7] + 272) = v1 + 606;
      *(v1[7] + 280) = v1 + 608;
      *(v1[7] + 288) = v1 + 644;
      *(v1[7] + 296) = v1 + 646;
      *(v1[7] + 304) = v1 + 658;
      *(v1[7] + 312) = v1 + 671;
      *(v1[7] + 320) = v1 + 673;
      *(v1[7] + 328) = v1 + 675;
      *(v1[7] + 336) = v1 + 695;
      *(v1[7] + 344) = v1 + 697;
      *(v1[7] + 352) = v1 + 699;
      *(v1[7] + 360) = v1 + 704;
      *(v1[7] + 368) = v1 + 747;
      *(v1[7] + 376) = v1 + 749;
      *(v1[7] + 384) = v1 + 751;
      *(v1[7] + 392) = v1 + 753;
      *(v1[7] + 400) = v1 + 755;
      *(v1[7] + 408) = v1 + 757;
      *(v1[7] + 416) = v1 + 759;
      *(v1[7] + 424) = v1 + 761;
      *(v1[7] + 432) = v1 + 763;
      *(v1[7] + 440) = v1 + 765;
      *(v1[7] + 448) = v1 + 767;
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
      *(v1[7] + 624) = v1 + 493;
      *(v1[7] + 632) = v1 + 529;
      *(v1[7] + 640) = v1 + 534;
      *(v1[7] + 648) = v1 + 536;
      *(v1[7] + 656) = v1 + 538;
      *(v1[7] + 664) = v1 + 540;
      *(v1[7] + 672) = v1 + 542;
      *(v1[7] + 680) = v1 + 544;
      *(v1[7] + 688) = v1 + 546;
      *(v1[7] + 696) = v1 + 548;
      *(v1[7] + 704) = v1 + 550;
      *(v1[7] + 712) = v1 + 552;
      *(v1[7] + 720) = v1 + 560;
      *(v1[7] + 728) = v1 + 606;
      *(v1[7] + 736) = v1 + 608;
      *(v1[7] + 744) = v1 + 644;
      *(v1[7] + 752) = v1 + 646;
      *(v1[7] + 760) = v1 + 658;
      *(v1[7] + 768) = v1 + 671;
      *(v1[7] + 776) = v1 + 673;
      *(v1[7] + 784) = v1 + 675;
      *(v1[7] + 792) = v1 + 695;
      *(v1[7] + 800) = v1 + 697;
      *(v1[7] + 808) = v1 + 699;
      *(v1[7] + 816) = v1 + 704;
      *(v1[7] + 824) = v1 + 747;
      *(v1[7] + 832) = v1 + 749;
      *(v1[7] + 840) = v1 + 751;
      *(v1[7] + 848) = v1 + 753;
      *(v1[7] + 856) = v1 + 755;
      *(v1[7] + 864) = v1 + 757;
      *(v1[7] + 872) = v1 + 759;
      *(v1[7] + 880) = v1 + 761;
      *(v1[7] + 888) = v1 + 763;
      *(v1[7] + 896) = v1 + 765;
      *(v1[7] + 904) = v1 + 767;
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
  qword_28064CCC0 = 0x400000004;
  *&result = 0xE0000000ELL;
  qword_28064CD20 = 0xE0000000ELL;
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
  *(a1 + 306) = 196;
  *(a1 + 312) = "frc.ddl";
  *(a1 + 320) = 12;
  v5 = malloc_type_malloc(0x4240uLL, 0x101004026C630D6uLL);
  *(a1 + 64) = v5;
  if (!v5)
  {
    goto LABEL_9;
  }

  memcpy(v5, &vsetdtbl_glob, 0x4240uLL);
  v6 = malloc_type_malloc(0x340uLL, 0x1010040E30AAE52uLL);
  *(a1 + 72) = v6;
  if (v6)
  {

    memcpy(v6, &vactdtbl_glob, 0x340uLL);
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

double vfp0055(uint64_t a1, double *a2)
{
  result = *a2;
  *(a1 + 16) = *a2;
  return result;
}

double vfp0057(uint64_t a1, double *a2)
{
  result = *a2;
  *(a1 + 32) = *a2;
  return result;
}

void act_dict_new(uint64_t a1)
{
  v2 = malloc_type_malloc(0x60uLL, 0x10040436913F5uLL);
  *(a1 + 176) = v2;
  if (v2)
  {
    *v2 = &fren_gramm_cat_dict_actentries;
    *(*(a1 + 176) + 8) = &unk_28064F9CF;
    *(*(a1 + 176) + 16) = &unk_28064FC95;
    *(*(a1 + 176) + 24) = &_MergedGlobals_1;
    *(*(a1 + 176) + 32) = &unk_2806500AC;
    *(*(a1 + 176) + 40) = &fren_words_actentries;
    *(*(a1 + 176) + 48) = &unk_280650CDE;
    *(*(a1 + 176) + 56) = &unk_28064FB3B;
    *(*(a1 + 176) + 64) = &unk_28064F95B;
    *(*(a1 + 176) + 72) = &unk_28064F933;
    *(*(a1 + 176) + 80) = &unk_28064FA64;
    *(*(a1 + 176) + 88) = &_MergedGlobals_41;
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
  v2 = malloc_type_malloc(0x620uLL, 0x10040436913F5uLL);
  *(a1 + 80) = v2;
  v3 = a1 + 80;
  if (v2)
  {
    *v2 = &unk_280660788;
    *(*v3 + 8) = &unk_28065F09A;
    *(*v3 + 16) = &unk_28065F3C8;
    *(*v3 + 24) = &unk_280660D5B;
    *(*v3 + 32) = &unk_28066181F;
    *(*v3 + 40) = &unk_280664127;
    *(*v3 + 48) = &unk_28065F475;
    *(*v3 + 56) = &unk_28065F32B;
    *(*v3 + 64) = &unk_28065F76E;
    *(*v3 + 72) = &unk_28066061E;
    *(*v3 + 80) = &unk_28065FAAF;
    *(*v3 + 88) = &unk_280661F52;
    *(*v3 + 96) = &unk_2806611B8;
    *(*v3 + 104) = &unk_28065F911;
    *(*v3 + 112) = &unk_28065F563;
    *(*v3 + 120) = &unk_28065EF43;
    *(*v3 + 128) = &unk_2806622D6;
    *(*v3 + 136) = &unk_28065F3A0;
    *(*v3 + 144) = &unk_28065F11D;
    *(*v3 + 152) = &unk_28065EFFB;
    *(*v3 + 160) = &unk_280660BA1;
    *(*v3 + 168) = &unk_2806614B2;
    *(*v3 + 176) = &unk_28065FDDD;
    *(*v3 + 184) = &unk_28065F449;
    *(*v3 + 192) = &unk_280660696;
    *(*v3 + 200) = &unk_28065F06A;
    *(*v3 + 208) = &unk_2806603D8;
    *(*v3 + 216) = &unk_28065F595;
    *(*v3 + 224) = &unk_28066044A;
    *(*v3 + 232) = &unk_28065F011;
    *(*v3 + 240) = &unk_280662C62;
    *(*v3 + 248) = &unk_28065F1AE;
    *(*v3 + 256) = &unk_28066021C;
    *(*v3 + 264) = &unk_280660CC6;
    *(*v3 + 272) = &unk_28066126B;
    *(*v3 + 280) = &unk_28065F952;
    *(*v3 + 288) = &_MergedGlobals_42;
    *(*v3 + 296) = &unk_28065F139;
    *(*v3 + 304) = &unk_280663140;
    *(*v3 + 312) = &unk_280661903;
    *(*v3 + 320) = &unk_28065F082;
    *(*v3 + 328) = &unk_28066014C;
    *(*v3 + 336) = &unk_2806671D1;
    *(*v3 + 344) = &unk_28065EEED;
    *(*v3 + 352) = &unk_28065F9D8;
    *(*v3 + 360) = &unk_28066070F;
    *(*v3 + 368) = &pronounced_final_s_setentries;
    *(*v3 + 376) = &unk_280663926;
    *(*v3 + 384) = &unk_280661AF3;
    *(*v3 + 392) = &unk_28065F1CD;
    *(*v3 + 400) = &unk_28065FE3A;
    *(*v3 + 408) = &unk_280663E28;
    *(*v3 + 416) = &unk_28065F0CC;
    *(*v3 + 424) = &unk_28065EF96;
    *(*v3 + 432) = &unk_28065F4D2;
    *(*v3 + 440) = &_MergedGlobals_9;
    *(*v3 + 448) = &unk_280662410;
    *(*v3 + 456) = &unk_280660FC0;
    *(*v3 + 464) = &unk_28065F5F9;
    *(*v3 + 472) = &unk_28065FC7E;
    *(*v3 + 480) = &unk_280661D0F;
    *(*v3 + 488) = &unk_28065F274;
    *(*v3 + 496) = &unk_2806619F7;
    *(*v3 + 504) = &unk_28065F7DE;
    *(*v3 + 512) = &unk_28065EF34;
    *(*v3 + 520) = &unk_28065F2BC;
    *(*v3 + 528) = &unk_28065F0E7;
    *(*v3 + 536) = &unk_28065FF5C;
    *(*v3 + 544) = &unk_28065EF84;
    *(*v3 + 552) = &unk_28065EFAA;
    *(*v3 + 560) = &unk_28065F3F3;
    *(*v3 + 568) = &unk_28065F661;
    *(*v3 + 576) = &unk_28065F172;
    *(*v3 + 584) = &unk_28065F027;
    *(*v3 + 592) = &unk_28065EEE3;
    *(*v3 + 600) = &unk_28065F532;
    *(*v3 + 608) = &unk_28065FFBE;
    *(*v3 + 616) = &unk_28065EEF8;
    *(*v3 + 624) = &unk_28065EFE6;
    *(*v3 + 632) = &unk_280660C33;
    *(*v3 + 640) = &unk_28065FA1E;
    *(*v3 + 648) = &unk_280661BFD;
    *(*v3 + 656) = &unk_280660802;
    *(*v3 + 664) = &unk_28065FCD3;
    *(*v3 + 672) = &unk_28066370D;
    *(*v3 + 680) = &unk_28066087D;
    *(*v3 + 688) = &unk_28065F994;
    *(*v3 + 696) = &unk_28065EF53;
    *(*v3 + 704) = &unk_28065F053;
    *(*v3 + 712) = &_MergedGlobals_3;
    *(*v3 + 720) = &unk_280664FE7;
    *(*v3 + 728) = &unk_280661585;
    *(*v3 + 736) = &unk_28066110A;
    *(*v3 + 744) = &_MergedGlobals_7;
    *(*v3 + 752) = &unk_280662AED;
    *(*v3 + 760) = &_MergedGlobals_1_0;
    *(*v3 + 768) = &unk_28065FD83;
    *(*v3 + 776) = &_MergedGlobals_10;
    *(*v3 + 784) = &pl_modal_verbs_setentries;
    *(*v3 + 792) = &unk_28066443D;
    *(*v3 + 800) = &unk_28065F7A6;
    *(*v3 + 808) = &unk_28065EFBE;
    *(*v3 + 816) = &unk_280660082;
    *(*v3 + 824) = &unk_28065F0B3;
    *(*v3 + 832) = &unk_28065FAFA;
    *(*v3 + 840) = &unk_28065EEB4;
    *(*v3 + 848) = &unk_280660532;
    *(*v3 + 856) = &unk_28065EEDA;
    *(*v3 + 864) = &unk_28065F6CB;
    *(*v3 + 872) = &unk_28065F03D;
    *(*v3 + 880) = &unk_28065F22E;
    *(*v3 + 888) = &unk_28065EF63;
    *(*v3 + 896) = &unk_28065EED2;
    *(*v3 + 904) = &unk_28065FA66;
    *(*v3 + 912) = &unk_28066028A;
    *(*v3 + 920) = &unk_280663509;
    *(*v3 + 928) = &unk_2806680D1;
    *(*v3 + 936) = &unk_280665886;
    *(*v3 + 944) = &unk_28065FBDE;
    *(*v3 + 952) = &unk_28065F298;
    *(*v3 + 960) = &unk_28066207B;
    *(*v3 + 968) = &unk_280660B15;
    *(*v3 + 976) = &unk_28065EEC4;
    *(*v3 + 984) = &unk_2806604BD;
    *(*v3 + 992) = &unk_28065FC2C;
    *(*v3 + 1000) = &unk_280660DF2;
    *(*v3 + 1008) = &unambiguous_verb_stems1_setentries;
    *(*v3 + 1016) = &unambiguous_verb_stems2_setentries;
    *(*v3 + 1024) = &unk_280660F24;
    *(*v3 + 1032) = &unk_28066173D;
    *(*v3 + 1040) = &_MergedGlobals_5;
    *(*v3 + 1048) = &_MergedGlobals_6;
    *(*v3 + 1056) = &unk_2806605A8;
    *(*v3 + 1064) = &fren_infinitives_setentries;
    *(*v3 + 1072) = &_MergedGlobals_2;
    *(*v3 + 1080) = &unk_28065FB46;
    *(*v3 + 1088) = &unk_280660A03;
    *(*v3 + 1096) = &unk_28065EFD2;
    *(*v3 + 1104) = &unk_28065F737;
    *(*v3 + 1112) = &unk_28065EEB9;
    *(*v3 + 1120) = &adj_stems_setentries;
    *(*v3 + 1128) = &unk_2806621A7;
    *(*v3 + 1136) = &unk_28065F2E1;
    *(*v3 + 1144) = &unk_28065F1EC;
    *(*v3 + 1152) = &unk_28066331F;
    *(*v3 + 1160) = &unk_280662F65;
    *(*v3 + 1168) = &_MergedGlobals_8;
    *(*v3 + 1176) = &unk_28066132A;
    *(*v3 + 1184) = &are_nouns_setentries;
    *(*v3 + 1192) = &unk_28065F701;
    *(*v3 + 1200) = &unk_2806664C2;
    *(*v3 + 1208) = &unk_2806626A2;
    *(*v3 + 1216) = &unk_28065EF0E;
    *(*v3 + 1224) = &unk_280660020;
    *(*v3 + 1232) = &unk_28066280E;
    *(*v3 + 1240) = &unk_28065F62D;
    *(*v3 + 1248) = &unk_28065EEBE;
    *(*v3 + 1256) = &unk_28065F306;
    *(*v3 + 1264) = &unk_28065FD2A;
    *(*v3 + 1272) = &unk_280661064;
    *(*v3 + 1280) = &unk_28065F696;
    *(*v3 + 1288) = &unk_280662556;
    *(*v3 + 1296) = &unk_28065F352;
    *(*v3 + 1304) = &unk_28065EF03;
    *(*v3 + 1312) = &unk_28065EF73;
    *(*v3 + 1320) = &unk_28065F8D1;
    *(*v3 + 1328) = &unk_28065F155;
    *(*v3 + 1336) = &unk_280660A8A;
    *(*v3 + 1344) = &unk_28065F893;
    *(*v3 + 1352) = &unk_28065F190;
    *(*v3 + 1360) = &unk_28065F20D;
    *(*v3 + 1368) = &unk_28065F41E;
    *(*v3 + 1376) = &unk_2806602F8;
    *(*v3 + 1384) = &unk_28065F379;
    *(*v3 + 1392) = &unk_28065F5C7;
    *(*v3 + 1400) = &unk_28065FEFB;
    *(*v3 + 1408) = &_MergedGlobals_4;
    *(*v3 + 1416) = &unk_280660368;
    *(*v3 + 1424) = &unk_28066165E;
    *(*v3 + 1432) = &unk_28065EF1A;
    *(*v3 + 1440) = &unk_2806613EC;
    *(*v3 + 1448) = &unk_28065F102;
    *(*v3 + 1456) = &unk_28065F502;
    *(*v3 + 1464) = &unk_2806600E7;
    *(*v3 + 1472) = &unk_28065F819;
    *(*v3 + 1480) = &unk_28065F856;
    *(*v3 + 1488) = &unk_28065FB92;
    *(*v3 + 1496) = &unk_28065F251;
    *(*v3 + 1504) = &unk_28065EECB;
    *(*v3 + 1512) = &unk_2806601B4;
    *(*v3 + 1520) = &unk_28066297D;
    *(*v3 + 1528) = &unk_28065F4A3;
    *(*v3 + 1536) = &unk_28066097E;
    *(*v3 + 1544) = &unk_2806608FD;
    *(*v3 + 1552) = &unk_280664BC8;
    *(*v3 + 1560) = &unk_28065EF26;
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
    OUTLINED_FUNCTION_1_48(a1);
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
  v2 = OUTLINED_FUNCTION_1_48(a1);
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
      if (OUTLINED_FUNCTION_0_50("Eloquence output", *(v1 + v8)) && vffind_lf(v1, "pgmout") != -1)
      {
        v9 = showDialogs();
        v10 = 224;
        if (!v9)
        {
          v10 = 216;
        }

        if (OUTLINED_FUNCTION_0_50("Eloquence program output", *(v1 + v10)))
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
  OUTLINED_FUNCTION_1_48(a1);
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
  OUTLINED_FUNCTION_1_48(a1);
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

uint64_t OUTLINED_FUNCTION_0_50@<X0>(char *a1@<X2>, uint64_t a2@<X8>)
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
  if ((atomic_load_explicit(&_MergedGlobals_44, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_44))
  {
    RequestLicense::RequestLicense(&qword_280669980);
    __cxa_guard_release(&_MergedGlobals_44);
  }

  *a2 = 0;
  if ((a1 - 1) > 1)
  {
    if (a1 == 3)
    {
      *a2 = &qword_280669980;
      (*(qword_280669980 + 8))(&qword_280669980);
    }
  }

  else if (RequestLicense::licenseGranted(&qword_280669980))
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
  OUTLINED_FUNCTION_2_46(a1);
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
  OUTLINED_FUNCTION_2_46(a1);
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
  OUTLINED_FUNCTION_2_46(a1);
  if (v3)
  {
    v4 = -8;
LABEL_3:
    setEngsynError(v1, v4);
    goto LABEL_4;
  }

  if (!eciLinkDataFromECI(*(v2 + 232), &unk_26E1F942A))
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
  OUTLINED_FUNCTION_3_46();
  if (v3)
  {
    DictionarySet::~DictionarySet(a1);
  }

  MEMORY[0x27437BDA0](a1, v1);
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
    return OUTLINED_FUNCTION_0_51();
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
    return OUTLINED_FUNCTION_0_51();
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
    return OUTLINED_FUNCTION_0_51();
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
    return OUTLINED_FUNCTION_0_51();
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
    return OUTLINED_FUNCTION_0_51();
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
      v2 = unk_28203C0D0;
      *(v1 + 72) = eciLinkFileClass_glob;
      *(v1 + 88) = v2;
      v3 = *&off_28203C0F0;
      *(v1 + 104) = xmmword_28203C0E0;
      *(v1 + 120) = v3;
      v4 = *(a1 + 224);
      v5 = unk_28203C110;
      *(v4 + 136) = dialogFileClass_glob;
      *(v4 + 152) = v5;
      result = *&xmmword_28203C120;
      v7 = *&off_28203C130;
      *(v4 + 168) = xmmword_28203C120;
      *(v4 + 184) = v7;
    }
  }

  return result;
}

uint64_t eciLinkDelete(void ***a1)
{
  dynaBufDelete(*a1);
  dynaBufDelete(a1[1]);
  MEMORY[0x27437BDA0](a1, 0x20C40A4A59CD2);
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
  OUTLINED_FUNCTION_2_47();
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
  OUTLINED_FUNCTION_2_47();
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
    MEMORY[0x27437BDA0](this, 0x1081C40F6F63E5DLL);
  }

  return v2;
}

uint64_t EngineWrapper::start(EngineWrapper *this)
{
  OUTLINED_FUNCTION_1_50(this);
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

  return OUTLINED_FUNCTION_0_52(v3);
}

uint64_t EngineWrapper::end(EngineWrapper *this)
{
  OUTLINED_FUNCTION_1_50(this);
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

  return OUTLINED_FUNCTION_0_52(v3);
}

uint64_t EngineWrapper::processSentences(EngineWrapper *this, const char *a2)
{
  OUTLINED_FUNCTION_1_50(this);
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

  return OUTLINED_FUNCTION_0_52(v4);
}

uint64_t EngineWrapper::processRemaining(EngineWrapper *this, const char *a2)
{
  OUTLINED_FUNCTION_1_50(this);
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

  return OUTLINED_FUNCTION_0_52(v4);
}

uint64_t EngineWrapper::getLastError(EngineWrapper *this, int *a2, int *a3)
{
  OUTLINED_FUNCTION_1_50(this);
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

  return OUTLINED_FUNCTION_0_52(LastError);
}

uint64_t EngineWrapper::restart(EngineWrapper *this)
{
  OUTLINED_FUNCTION_1_50(this);
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

  return OUTLINED_FUNCTION_0_52(v3);
}

uint64_t EngineWrapper::readPhonemes(EngineWrapper *this, char *a2, int a3, int *a4)
{
  OUTLINED_FUNCTION_1_50(this);
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

  return OUTLINED_FUNCTION_0_52(Phonemes);
}

uint64_t EngineWrapper::readErrorMessage(EngineWrapper *this, char *a2, int a3, int *a4)
{
  OUTLINED_FUNCTION_1_50(this);
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

  return OUTLINED_FUNCTION_0_52(ErrorMessage);
}

BOOL EngineWrapper::flush(EngineWrapper *this, int a2)
{
  *(this + 24) = 0;
  *(this + 25) = a2 != 0;
  return engsynFlush(*(this + 2), a2);
}

uint64_t EngineWrapper::clearInput(EngineWrapper *this)
{
  OUTLINED_FUNCTION_1_50(this);
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

  return OUTLINED_FUNCTION_0_52(v3);
}

uint64_t EngineWrapper::setAbort(EngineWrapper *this)
{
  OUTLINED_FUNCTION_1_50(this);
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

  return OUTLINED_FUNCTION_0_52(v3);
}

uint64_t EngineWrapper::outputPlaying(EngineWrapper *this)
{
  OUTLINED_FUNCTION_1_50(this);
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

  return OUTLINED_FUNCTION_0_52(v3);
}

uint64_t EngineWrapper::pause(EngineWrapper *this)
{
  OUTLINED_FUNCTION_1_50(this);
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

  return OUTLINED_FUNCTION_0_52(v3);
}

uint64_t EngineWrapper::setSynthToNamedFile(EngineWrapper *this, const char *a2)
{
  OUTLINED_FUNCTION_1_50(this);
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

  return OUTLINED_FUNCTION_0_52(v5);
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
  OUTLINED_FUNCTION_1_50(this);
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

  return OUTLINED_FUNCTION_0_52(v7);
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

uint64_t EngineWrapper::registerWordIndexCallback(uint64_t this, void (*a2)(int, void *), uint64_t a3)
{
  if (!*(this + 24))
  {
    return engsynRegisterWordIndexCallback(*(this + 16), a2, a3);
  }

  return this;
}

uint64_t EngineWrapper::registerUserIndexCallback(uint64_t this, void (*a2)(void *), uint64_t a3)
{
  if (!*(this + 24))
  {
    return engsynRegisterUserIndexCallback(*(this + 16), a2, a3);
  }

  return this;
}

uint64_t EngineWrapper::registerIndexCallback(uint64_t this, void (*a2)(int, void *), void *a3)
{
  if (!*(this + 24))
  {
    return engsynRegisterIndexCallback(*(this + 16), a2, a3);
  }

  return this;
}

uint64_t EngineWrapper::registerPhonemeCallback(uint64_t this, void (*a2)(int, unsigned int, void *), void *a3)
{
  if (!*(this + 24))
  {
    return engsynRegisterPhonemeCallback(*(this + 16), a2, a3);
  }

  return this;
}

uint64_t EngineWrapper::registerAnnoCallback(uint64_t this, void (*a2)(uint64_t, uint64_t, void *), uint64_t a3)
{
  if (!*(this + 24))
  {
    return engsynRegisterAnnoCallback(*(this + 16), a2, a3);
  }

  return this;
}

uint64_t EngineWrapper::insertSynthesisIndex(EngineWrapper *this)
{
  OUTLINED_FUNCTION_1_50(this);
  if (v3)
  {
    inserted = 1;
  }

  else
  {
    inserted = engsynInsertSynthesisIndex(*(v1 + 16), v2);
    if (inserted)
    {
      *(v1 + 24) = 1;
    }
  }

  return OUTLINED_FUNCTION_0_52(inserted);
}

uint64_t EngineWrapper::insertDelayedSynthesisIndex(EngineWrapper *this)
{
  OUTLINED_FUNCTION_1_50(this);
  if (v3)
  {
    inserted = 1;
  }

  else
  {
    inserted = engsynInsertDelayedSynthesisIndex(*(v1 + 16), v2);
    if (inserted)
    {
      *(v1 + 24) = 1;
    }
  }

  return OUTLINED_FUNCTION_0_52(inserted);
}

uint64_t EngineWrapper::wantPhonemeIndices(uint64_t this, char a2)
{
  if (!*(this + 24))
  {
    return engsynWantPhonemeIndices(*(this + 16), a2);
  }

  return this;
}

uint64_t EngineWrapper::close(EngineWrapper *this)
{
  if (engsynClose(*(this + 2)))
  {
    v2 = 1;
    *(this + 24) = 1;
  }

  else
  {
    v2 = 0;
  }

  if (*(this + 25))
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t OUTLINED_FUNCTION_0_52(uint64_t result)
{
  if (*(v1 + 25))
  {
    return 0;
  }

  else
  {
    return result;
  }
}

char *LanguageID::getLanguageString(LanguageID *this)
{
  v1 = this + 3;
  sprintf(this + 3, "%d", *this);
  return v1;
}

_BYTE *OUTLINED_FUNCTION_0_53(_BYTE *result, int a2)
{
  *result = BYTE2(a2);
  result[1] = BYTE1(a2);
  result[2] = a2;
  return result;
}

_BYTE *OUTLINED_FUNCTION_1_51(_BYTE *result, char a2, char a3)
{
  *result = a2;
  result[1] = 0;
  result[2] = a3;
  return result;
}

_BYTE *OUTLINED_FUNCTION_2_48(_BYTE *result, char a2, char a3, char a4)
{
  *result = a2;
  result[1] = a3;
  result[2] = a4;
  return result;
}

BOOL reg(uint64_t a1)
{
  v2 = delta_new();
  engsynStart(v2);
  if (ensureInputStream(v2))
  {
    qword_280669998 = a1;
    DeltaProc_registerLanguages(v2);
    delta_delete(v2);
    return (_MergedGlobals_45 & 1) == 0;
  }

  else
  {
    delta_delete(v2);
    return 1;
  }
}

BOOL ensureInputStream(uint64_t a1)
{
  if (*(*(a1 + 224) + 221) != 255)
  {
    return 1;
  }

  for (i = 0; i < num_streams(a1); ++i)
  {
    v4 = stream_name(i);
    if (!strcmp(v4, "inp"))
    {
      break;
    }
  }

  if (num_streams(a1) == i)
  {
    return 0;
  }

  *(*(a1 + 224) + 221) = i;
  return single_letter_stream(i) != 0;
}

uint64_t unreg()
{
  v0 = MEMORY[0x28223BE20]();
  v7 = *MEMORY[0x277D85DE8];
  globalJustGetLanguage = 1;
  v1 = delta_new();
  engsynStart(v1);
  if (ensureInputStream(v1))
  {
    DeltaProc_registerLanguages(v1);
    LanguageID::LanguageID(v6, *(v1[28] + 224));
    IniFileWriter::IniFileWriter(v5, v0);
    LanguageDialectString = LanguageID::getLanguageDialectString(v6);
    IniFileWriter::deleteSection(v5, LanguageDialectString);
  }

  delta_delete(v1);
  result = 1;
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_26E1D1250(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IniFileWriter::~IniFileWriter(va);
  _Unwind_Resume(a1);
}

void registerPhoneme(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  MEMORY[0x28223BE20]();
  v34 = *MEMORY[0x277D85DE8];
  if (!globalJustGetLanguage && (_MergedGlobals_45 & 1) == 0)
  {
    OUTLINED_FUNCTION_1_52();
    v33 = 0;
    v23[4] = 0u;
    v23[5] = 0u;
    v23[2] = 0u;
    v23[3] = 0u;
    *v23 = 0u;
    v23[1] = 0u;
    if (sprintf(v32, "%d %d %d %d %d %d %d %d %d %d %d %d %d %d %d", *(v24 + 2), *(v25 + 2), *(v26 + 2), *(v27 + 2), *(a9 + 2), *(a10 + 2), *(a11 + 2), *(a12 + 2), *(a13 + 2), *(a14 + 2), *(a15 + 2), *(a16 + 2), *(a17 + 2), *(a18 + 2), *(a19 + 2)) == -1)
    {
      OUTLINED_FUNCTION_0_54();
    }

    else
    {
      LanguageID::LanguageID(v31, *(v21 + 2), *(v20 + 2));
      IniFileWriter::IniFileWriter(v29, qword_280669998);
      if (sprintf(v30, "Phoneme%d", *(v19 + 2)) != -1)
      {
        LanguageDialectString = LanguageID::getLanguageDialectString(v31);
        IniFileWriter::writeString(v29, LanguageDialectString, v30, v32);
      }

      OUTLINED_FUNCTION_0_54();
      IniFileWriter::~IniFileWriter(v29);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

void sub_26E1D1458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  IniFileWriter::~IniFileWriter(va);
  _Unwind_Resume(a1);
}

uint64_t registerLanguage()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v17 = *MEMORY[0x277D85DE8];
  v8 = LanguageID::LanguageID(v16, *(v6 + 2), *(v7 + 2));
  *(*(v5 + 224) + 224) = LanguageID::getPackedInt(v8);
  if (v16[0] - 6 > 4)
  {
    v9 = 63;
  }

  else
  {
    v9 = dword_26E1F7C6C[(v16[0] - 6)];
  }

  sprintf(byte_2806699A0, "%#x", v9);
  if (globalJustGetLanguage || (_MergedGlobals_45 & 1) != 0)
  {
    result = 0;
  }

  else
  {
    IniFileWriter::IniFileWriter(v14, qword_280669998);
    if (sprintf(v15, "%d.%d", *(v4 + 2), *(v2 + 2)) != -1)
    {
      LanguageDialectString = LanguageID::getLanguageDialectString(v16);
      FullPathName = getFullPathName();
      IniFileWriter::writeString(v14, LanguageDialectString, "Path", FullPathName);
    }

    _MergedGlobals_45 = 1;
    IniFileWriter::~IniFileWriter(v14);
    result = 0xFFFFFFFFLL;
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_26E1D1650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  IniFileWriter::~IniFileWriter(va);
  _Unwind_Resume(a1);
}

void registerVoice(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  MEMORY[0x28223BE20]();
  v27 = *MEMORY[0x277D85DE8];
  if (!globalJustGetLanguage && (_MergedGlobals_45 & 1) == 0)
  {
    OUTLINED_FUNCTION_1_52();
    v26 = 0;
    v18[4] = 0u;
    v18[5] = 0u;
    v18[2] = 0u;
    v18[3] = 0u;
    *v18 = 0u;
    v18[1] = 0u;
    if (sprintf(v25, "%d %d %d %d %d %d %d %d", *(v19 + 2), *(v20 + 2), *(a9 + 2), *(a10 + 2), *(a11 + 2), *(a12 + 2), *(a13 + 2), *(a14 + 2)) == -1)
    {
      OUTLINED_FUNCTION_0_54();
    }

    else
    {
      LanguageID::LanguageID(v24, *(v16 + 2), *(v15 + 2));
      IniFileWriter::IniFileWriter(v22, qword_280669998);
      if (sprintf(v23, "Voice%d", *(v14 + 2)) != -1)
      {
        LanguageDialectString = LanguageID::getLanguageDialectString(v24);
        IniFileWriter::writeString(v22, LanguageDialectString, v23, v25);
      }

      OUTLINED_FUNCTION_0_54();
      IniFileWriter::~IniFileWriter(v22);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

void sub_26E1D180C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  IniFileWriter::~IniFileWriter(va);
  _Unwind_Resume(a1);
}

uint64_t extractInputStreamString(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, int a5)
{
  v8 = *(a2 + 8);
  v9 = *(a3 + 8);
  result = sync_in_stm(a1, *(*(a1 + 224) + 221), v8);
  if (!result)
  {
    return result;
  }

  result = sync_in_stm(a1, *(*(a1 + 224) + 221), v9);
  if (!result)
  {
    return result;
  }

  result = extract_string(a1, *(*(a1 + 224) + 221), v8, v9, a4, a5);
  if (!result)
  {
    return result;
  }

  if (strlen(a4) < 3)
  {
    return 1;
  }

  for (i = a4; ; ++i)
  {
    v12 = *a4;
    if (v12 != 39)
    {
      break;
    }

    if (a4[1] == 32 && a4[2] == 39)
    {
      LOBYTE(v12) = 32;
      v13 = 3;
      goto LABEL_13;
    }

LABEL_12:
    v13 = 1;
LABEL_13:
    *i = v12;
    a4 += v13;
  }

  if (*a4)
  {
    goto LABEL_12;
  }

  *i = 0;
  return 1;
}

uint64_t sendArrayParameters(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, uint64_t a7, unsigned int a8, uint64_t a9, uint64_t a10)
{
  v13 = a3;
  v14 = a2;
  v52 = *MEMORY[0x277D85DE8];
  v16 = *(a1 + 208);
  if (!a2)
  {
    *(v16 + 140) = 0;
  }

  v17 = 0;
  *(v16 + 144) = a3;
  while (v17 != 62)
  {
    v51[v17] = *(a10 + v17 * 4);
    ++v17;
  }

  v51[0] = a8;
  if (a4)
  {
    if (a5)
    {
      if (!a6)
      {
LABEL_11:
        for (i = 4; i != 252; i += 4)
        {
          v19 = *(a9 + i);
          if (v19 != -1)
          {
            Offset = arrayStreamLastOffset(a1, v19);
            if (v13 >= Offset)
            {
              v13 = Offset;
            }
          }
        }

        if (v13 <= v14)
        {
          v21 = v14;
        }

        else
        {
          v21 = v13;
        }

        v13 = v14 + (v21 - v14) / a8 * a8;
        v16 = *(a1 + 208);
      }
    }

    else
    {
      v14 = *(v16 + 8);
      if (!a6)
      {
        goto LABEL_11;
      }
    }

    *(v16 + 8) = v13;
  }

  *(v16 + 136) = v13;
  v22 = *v16;
  if (!*v16)
  {
    v23 = malloc_type_malloc(0x18uLL, 0x102004024DAA5DEuLL);
    if (v23)
    {
      v24 = v23;
      v25 = streamArrayCount(a1);
      v26 = malloc_type_calloc(v25, 0x30uLL, 0x1000040732E9A81uLL);
      *v24 = v26;
      if (v26)
      {
        valueSetReset(a1, v24, v14, v13);
        **(a1 + 208) = v24;
        goto LABEL_30;
      }

      free(v24);
    }

    result = 0;
    **(a1 + 208) = 0;
    goto LABEL_62;
  }

  if (!a4 || a5)
  {
    valueSetReset(a1, v22, v14, v13);
  }

  else
  {
    v22[2] = v13;
  }

LABEL_30:
  v27 = 0;
  v50 = a8;
  while (!v27)
  {
    if (checkInterrupt(a1) || (v28 = **(a1 + 208), *(v28 + 8) > v14) || *(v28 + 16) <= v14)
    {
      result = 1;
      goto LABEL_62;
    }

    for (j = 0; j != 62; ++j)
    {
      v30 = *(a9 + 4 + 4 * j);
      if (v30 != -1)
      {
        v31 = **(a1 + 208);
        v32 = *v31 + 48 * v30;
        v33 = *(v32 + 16);
        while (v33 < v14)
        {
          if (v33 == -1)
          {
            v38 = OUTLINED_FUNCTION_0_55();
            Val = arrayStreamFirstVal(v38, v39, v40, v41);
            *v32 = 0;
            *(v32 + 8) = 0;
            if (Val)
            {
              v33 = 0;
              *(v32 + 16) = 0;
            }

            else
            {
              v33 = v31[2];
              *(v32 + 16) = v33;
            }

            *(v32 + 24) = 0;
          }

          else
          {
            *v32 = v33;
            *(v32 + 8) = *(v32 + 24);
            v34 = OUTLINED_FUNCTION_0_55();
            if (arrayStreamNextVal(v34, v35, v36, v37))
            {
              v33 = 0;
              *(v32 + 16) = 0;
              *(v32 + 24) = 0;
            }

            else
            {
              v33 = v31[2];
              *(v32 + 16) = v33;
            }
          }
        }

        v43 = *v32;
        v44 = v33 - *v32;
        *(v32 + 32) = v44;
        v45 = *(v32 + 8);
        v46 = *(v32 + 24) - v45;
        *(v32 + 40) = v46;
        if (v46)
        {
          v47 = v33 == v43;
        }

        else
        {
          v47 = 1;
        }

        if (!v47)
        {
          v45 = ((((v14 - v43) * v46) / v44) + v45);
        }

        v51[j] = v45;
      }
    }

    v14 += v50;
    if (v14 > v13)
    {
      v51[0] = (v14 - v13);
    }

    (*(*(*(a1 + 208) + 32) + 32))(v51, *(*(*(a1 + 208) + 32) + 40));
    v27 = !KlattSynth(*(*(a1 + 208) + 64), v51);
  }

  result = 0;
LABEL_62:
  v49 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t valueSetReset(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = 0;
  a2[1] = a3;
  a2[2] = a4;
  for (i = 16; ; i += 48)
  {
    result = streamArrayCount(a1);
    if (v6 >= result)
    {
      break;
    }

    *(*a2 + i) = -1;
    ++v6;
  }

  return result;
}