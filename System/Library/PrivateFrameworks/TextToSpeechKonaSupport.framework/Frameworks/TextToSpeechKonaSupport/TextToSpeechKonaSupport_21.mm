uint64_t subj_pro()
{
  OUTLINED_FUNCTION_16_34();
  v182 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_19_29(v2, v3, v4, v5, v6, v7, v8, v9, v98, v101, v104, v107, v110, v113, v116, v119, v122, v125, v128, v131, v134, v137, v140, v143, v146, v149, v152, v155, v158, v161, v164, v167, v170, v173, v175, SHIDWORD(v175), v177, v178, v179, v180);
  OUTLINED_FUNCTION_52_15();
  bzero(v181, v10);
  if (setjmp(v181))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_25_27();
  if (ventproc(v0, v11, v12, v13, v14, v181))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_43_16();
  v17 = OUTLINED_FUNCTION_49_16();
  OUTLINED_FUNCTION_82_11(v17, v18);
  OUTLINED_FUNCTION_55_15(v19, v20, v21, v22, v23, v24, v25, v26, v99, v102, v105, v108, v111, v114, v117, v120, v123, v126, v129, v132, v135, v138, v141, v144, v147, v150, v153, v156, v159, v162, v165, v168, v171, v174, *v176, v176[4]);
  v27 = OUTLINED_FUNCTION_47_16();
  push_ptr_init(v27, v28);
  fence_38(v0, 0, &null_str_15);
  v29 = OUTLINED_FUNCTION_64_13();
  fence_38(v29, v30, v31);
  v32 = OUTLINED_FUNCTION_93_10();
  starttest(v32, v33);
  v34 = OUTLINED_FUNCTION_22_27();
  if (!lpta_loadp_setscan_l(v34, v35))
  {
    v65 = OUTLINED_FUNCTION_27_25();
    bspush_ca_scan(v65, v66);
    goto LABEL_20;
  }

  while (2)
  {
    v36 = OUTLINED_FUNCTION_38_18();
    starttest(v36, v37);
    v38 = OUTLINED_FUNCTION_12_36();
    if (!lpta_loadp_setscan_l(v38, v39))
    {
LABEL_32:
      OUTLINED_FUNCTION_45_16(9, v100, v103, v106, v109, v112, v115, v118, v121, v124, v127, v130, v133, v136, v139, v142, v145, v148, v151, v154, v157, v160, v163, v166, v169, v172);
      v77 = OUTLINED_FUNCTION_30_23();
      bspush_ca_scan(v77, v78);
LABEL_33:
      v79 = OUTLINED_FUNCTION_10_36();
      if (testFldeq(v79, v80, v81, 1) || advance_tok(v0))
      {
        goto LABEL_22;
      }

      v82 = OUTLINED_FUNCTION_38_18();
      bspush_ca_scan(v82, v83);
LABEL_36:
      v84 = OUTLINED_FUNCTION_10_36();
      if (testFldeq(v84, v85, v86, 13))
      {
        goto LABEL_22;
      }

      if (advance_tok(v0))
      {
        goto LABEL_22;
      }

      v87 = OUTLINED_FUNCTION_15_34();
      if (lpta_loadp_setscan_r(v87, v88))
      {
        goto LABEL_22;
      }

      v89 = OUTLINED_FUNCTION_11_36();
      if (testFldeq(v89, v90, v91, 9) || advance_tok(v0))
      {
        goto LABEL_22;
      }

LABEL_20:
      v61 = OUTLINED_FUNCTION_9_36();
      v64 = 5;
LABEL_21:
      if (!testFldeq(v61, v62, v63, v64))
      {
LABEL_46:
        if (!advance_tok(v0))
        {
          break;
        }
      }

      goto LABEL_22;
    }

LABEL_6:
    v40 = OUTLINED_FUNCTION_34_19();
    starttest(v40, v41);
    v42 = OUTLINED_FUNCTION_12_36();
    if (lpta_loadp_setscan_r(v42, v43))
    {
LABEL_7:
      v44 = OUTLINED_FUNCTION_21_28();
      if (!lpta_loadp_setscan_r(v44, v45))
      {
        OUTLINED_FUNCTION_17_34();
        if (!test_string_s())
        {
          break;
        }
      }

LABEL_9:
      v46 = OUTLINED_FUNCTION_21_28();
      if (!lpta_loadp_setscan_l(v46, v47))
      {
        OUTLINED_FUNCTION_42_16();
        if (!test_string_s())
        {
          break;
        }
      }

LABEL_11:
      v48 = OUTLINED_FUNCTION_38_18();
      starttest(v48, v49);
      v50 = OUTLINED_FUNCTION_12_36();
      if (lpta_loadp_setscan_r(v50, v51))
      {
        break;
      }

      v52 = OUTLINED_FUNCTION_9_36();
      if (!testFldeq(v52, v53, v54, 4))
      {
        v55 = OUTLINED_FUNCTION_10_36();
        if (!testFldeq(v55, v56, v57, 11) && !advance_tok(v0))
        {
LABEL_15:
          *(v1 + 2) = 3;
          break;
        }
      }

      goto LABEL_22;
    }

    v58 = OUTLINED_FUNCTION_11_36();
    if (!testFldeq(v58, v59, v60, 9) && !advance_tok(v0))
    {
      v61 = OUTLINED_FUNCTION_10_36();
      v64 = 33;
      goto LABEL_21;
    }

LABEL_22:
    v67 = *(v0 + 104);
    if (v67)
    {
      v68 = OUTLINED_FUNCTION_56_14(v67);
    }

    else
    {
      v69 = OUTLINED_FUNCTION_69_13();
      v68 = vback(v69, v70);
    }

    switch(v68)
    {
      case 1:
        continue;
      case 2:
        v92 = OUTLINED_FUNCTION_93_10();
        bspush_ca_scan(v92, v93);
        v61 = OUTLINED_FUNCTION_36_18();
        v64 = 6;
        goto LABEL_21;
      case 3:
        goto LABEL_46;
      case 4:
        v96 = OUTLINED_FUNCTION_38_18();
        bspush_ca_scan(v96, v97);
        v61 = OUTLINED_FUNCTION_3_39();
        goto LABEL_21;
      case 5:
        v94 = OUTLINED_FUNCTION_38_18();
        bspush_ca_scan(v94, v95);
        v61 = OUTLINED_FUNCTION_6_37();
        goto LABEL_21;
      case 6:
        v61 = OUTLINED_FUNCTION_10_36();
        v64 = 34;
        goto LABEL_21;
      case 7:
        goto LABEL_15;
      case 8:
        goto LABEL_6;
      case 9:
        goto LABEL_32;
      case 10:
        v71 = OUTLINED_FUNCTION_10_36();
        if (!testFldeq(v71, v72, v73, 8) && !advance_tok(v0))
        {
          goto LABEL_33;
        }

        goto LABEL_22;
      case 11:
        goto LABEL_33;
      case 12:
        v74 = OUTLINED_FUNCTION_10_36();
        if (!testFldeq(v74, v75, v76, 25) && !advance_tok(v0))
        {
          goto LABEL_36;
        }

        goto LABEL_22;
      case 13:
        goto LABEL_36;
      case 14:
        goto LABEL_7;
      case 15:
        goto LABEL_9;
      case 16:
        goto LABEL_11;
      default:
        goto LABEL_3;
    }
  }

LABEL_3:
  vretproc(v0);
  v15 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_103_7();
}

void coord_conj()
{
  OUTLINED_FUNCTION_91_10();
  OUTLINED_FUNCTION_16_34();
  v129 = *MEMORY[0x277D85DE8];
  v116 = 0;
  v117 = 0;
  v114 = 0;
  v115 = 0;
  HIDWORD(v113) = 0;
  v111 = 0;
  v112 = 0;
  OUTLINED_FUNCTION_53_15();
  bzero(v110, v4);
  OUTLINED_FUNCTION_52_15();
  bzero(v128, v5);
  v6 = setjmp(v128);
  if (v6 || OUTLINED_FUNCTION_99_8(v6, v110, v7, v8, v9, v10, v11, v12, v102, v103, v104, v105, v106, v107, v108, v109, v110[0], v110[1], v110[2], v110[3], v110[4], v110[5], v110[6], v110[7], v110[8], v110[9], v110[10], v110[11], v110[12], v110[13], v110[14], v110[15], v110[16], v110[17], v110[18], v110[19], v110[20], v110[21], v110[22], v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128[0]))
  {
LABEL_3:
    vretproc(v0);
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_43_16();
  OUTLINED_FUNCTION_68_13(v14, &v114);
  v15 = OUTLINED_FUNCTION_59_14();
  get_parm(v15, v16, v17, -4);
  v18 = OUTLINED_FUNCTION_60_14();
  push_ptr_init(v18, v19);
  v20 = OUTLINED_FUNCTION_58_14();
  fence_38(v20, v21, v22);
  v23 = OUTLINED_FUNCTION_62_13();
  fence_38(v23, v24, v25);
  v26 = OUTLINED_FUNCTION_89_10();
  starttest(v26, v27);
  OUTLINED_FUNCTION_27_25();
  bspush_ca_boa();
  v28 = OUTLINED_FUNCTION_22_27();
  if (lpta_loadp_setscan_r(v28, v29))
  {
    v30 = 0;
  }

  else
  {
    v31 = OUTLINED_FUNCTION_11_36();
    v30 = !testFldeq(v31, v32, v33, 11) && (v34 = OUTLINED_FUNCTION_9_36(), !testFldeq(v34, v35, v36, 7)) && !advance_tok(v0);
  }

  v37 = v30;
  while (2)
  {
    v38 = v0[13];
    if (v38)
    {
      v39 = OUTLINED_FUNCTION_56_14(v38);
      v41 = v40;
    }

    else
    {
      v39 = vback(v0, v37);
      v41 = 0;
    }

    switch(v39)
    {
      case 1:
        v42 = OUTLINED_FUNCTION_67_13();
        if (lpta_loadp_setscan_r(v42, v43))
        {
          goto LABEL_17;
        }

        OUTLINED_FUNCTION_42_16();
        if (test_string_s())
        {
          goto LABEL_17;
        }

        goto LABEL_51;
      case 2:
        bspop_boa(v0);
        goto LABEL_3;
      case 3:
LABEL_17:
        v44 = OUTLINED_FUNCTION_89_10();
        starttest(v44, v45);
        v46 = OUTLINED_FUNCTION_67_13();
        if (lpta_loadp_setscan_r(v46, v47))
        {
          goto LABEL_52;
        }

        bspush_ca_scan(v0, 5);
        OUTLINED_FUNCTION_17_34();
LABEL_20:
        v48 = test_string_s();
        v37 = v41;
        if (v48)
        {
          continue;
        }

LABEL_21:
        starttest(v0, 7);
        v49 = OUTLINED_FUNCTION_46_16();
        if (!lpta_loadp_setscan_r(v49, v50))
        {
          v97 = OUTLINED_FUNCTION_62_13();
          v99 = testFldeq(v97, v98, 2, 25);
          v37 = v41;
          if (!v99)
          {
            v100 = advance_tok(v0);
            v37 = v41;
            if (!v100)
            {
LABEL_51:
              v101 = 2;
              HIWORD(v113) = 2;
              goto LABEL_53;
            }
          }

          continue;
        }

LABEL_22:
        starttest(v0, 9);
        v51 = OUTLINED_FUNCTION_67_13();
        if (!lpta_loadp_setscan_l(v51, v52))
        {
LABEL_40:
          savescptr(v0, 10, &v111);
          v85 = OUTLINED_FUNCTION_62_13();
          v87 = testFldeq(v85, v86, 3, 2);
          v37 = v41;
          if (!v87)
          {
            v88 = advance_tok(v0);
            v37 = v41;
            if (!v88)
            {
              v89 = lpta_loadp_setscan_r(v0, &v111);
              v37 = v41;
              if (!v89)
              {
                v90 = advance_tok(v0);
                v37 = v41;
                if (!v90)
                {
                  v91 = OUTLINED_FUNCTION_106_5();
                  bspush_ca_scan(v91, v92);
                  v64 = OUTLINED_FUNCTION_62_13();
                  v67 = 1;
                  v66 = 5;
LABEL_29:
                  v68 = testFldeq(v64, v65, v67, v66);
                  v37 = v41;
                  if (!v68)
                  {
LABEL_30:
                    v69 = advance_tok(v0);
                    v37 = v41;
                    if (!v69)
                    {
                      goto LABEL_52;
                    }
                  }
                }
              }
            }
          }

          continue;
        }

LABEL_23:
        v53 = OUTLINED_FUNCTION_110_5();
        starttest(v53, v54);
        v55 = OUTLINED_FUNCTION_67_13();
        if (!lpta_loadp_setscan_l(v55, v56))
        {
LABEL_32:
          v70 = OUTLINED_FUNCTION_107_5();
          savescptr(v70, v71, &v111);
          v72 = OUTLINED_FUNCTION_62_13();
          v74 = testFldeq(v72, v73, 1, 4);
          v37 = v41;
          if (!v74)
          {
            v75 = OUTLINED_FUNCTION_62_13();
            v77 = testFldeq(v75, v76, 2, 24);
            v37 = v41;
            if (!v77)
            {
              v78 = advance_tok(v0);
              v37 = v41;
              if (!v78)
              {
                v79 = lpta_loadp_setscan_r(v0, &v111);
                v37 = v41;
                if (!v79)
                {
                  v80 = advance_tok(v0);
                  v37 = v41;
                  if (!v80)
                  {
                    v81 = OUTLINED_FUNCTION_62_13();
                    v83 = testFldeq(v81, v82, 3, 13);
                    v37 = v41;
                    if (!v83)
                    {
                      v84 = advance_tok(v0);
                      v37 = v41;
                      if (!v84)
                      {
                        goto LABEL_3;
                      }
                    }
                  }
                }
              }
            }
          }

          continue;
        }

LABEL_24:
        OUTLINED_FUNCTION_67_13();
        conjoined_words_same_category();
        if (!v57)
        {
          goto LABEL_52;
        }

LABEL_25:
        OUTLINED_FUNCTION_67_13();
        if (no_pause_btw_coordinated_NPs())
        {
LABEL_26:
          v58 = OUTLINED_FUNCTION_96_8();
          starttest(v58, v59);
          v60 = OUTLINED_FUNCTION_46_16();
          if (lpta_loadp_setscan_r(v60, v61))
          {
            goto LABEL_51;
          }

          v62 = OUTLINED_FUNCTION_108_5();
          bspush_ca_scan(v62, v63);
LABEL_28:
          v64 = OUTLINED_FUNCTION_62_13();
          v67 = 1;
          goto LABEL_29;
        }

LABEL_52:
        v101 = HIWORD(v113);
LABEL_53:
        *(v3 + 8) = v117;
        *(v2 + 8) = v115;
        *(v1 + 2) = v101;
        vretproc(v0);
LABEL_4:
        v13 = *MEMORY[0x277D85DE8];
        OUTLINED_FUNCTION_90_10();
        return;
      case 4:
      case 8:
        goto LABEL_52;
      case 5:
        OUTLINED_FUNCTION_17_34();
        goto LABEL_20;
      case 6:
        goto LABEL_21;
      case 7:
        goto LABEL_22;
      case 9:
        goto LABEL_23;
      case 10:
        goto LABEL_40;
      case 11:
        v64 = OUTLINED_FUNCTION_62_13();
        v67 = 3;
        v66 = 7;
        goto LABEL_29;
      case 12:
        goto LABEL_30;
      case 13:
        goto LABEL_24;
      case 14:
        goto LABEL_32;
      case 15:
        goto LABEL_25;
      case 16:
        goto LABEL_26;
      case 17:
        goto LABEL_51;
      case 18:
        v93 = OUTLINED_FUNCTION_62_13();
        v95 = testFldeq(v93, v94, 1, 8);
        v37 = v41;
        if (v95)
        {
          continue;
        }

        v96 = advance_tok(v0);
        v37 = v41;
        if (v96)
        {
          continue;
        }

        goto LABEL_28;
      case 19:
        goto LABEL_28;
      default:
        goto LABEL_3;
    }
  }
}

uint64_t noun_phrase()
{
  OUTLINED_FUNCTION_104_7();
  v392 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_19_29(v5, v6, v7, v8, v9, v10, v11, v12, v231, v236, v241, v246, v251, v256, v261, v266, v271, v276, v281, v286, v291, v296, v301, v306, v311, v316, v321, v326, v331, v336, v341, v346, v351, v356, v361, SHIDWORD(v361), v366, v370, v374, v378);
  OUTLINED_FUNCTION_52_15();
  OUTLINED_FUNCTION_100_7(v13, v14, v15, v16, v17, v18, v19, v20, v232, v237, v242, v247, v252, v257, v262, v267, v272, v277, v282, v287, v292, v297, v302, v307, v312, v317, v322, v327, v332, v337, v342, v347, v352, v357, v362, v367, v371, v375, v379, v382, v384, v386, v388, v390);
  if (!setjmp(v4))
  {
    OUTLINED_FUNCTION_25_27();
    if (!OUTLINED_FUNCTION_98_8(v21, v22, v23, v24, v25, v26, v27, v28, v233, v238, v243, v248, v253, v258, v263, v268, v273, v278, v283, v288, v293, v298, v303, v308, v313, v318, v323, v328, v333, v338, v343, v348, v353, v358, v363, v368, v372, v376, v380, v383, v385, v387, v389, v391))
    {
      v31 = OUTLINED_FUNCTION_46_16();
      OUTLINED_FUNCTION_82_11(v31, v32);
      v33 = OUTLINED_FUNCTION_49_16();
      get_parm(v33, v34, v3, -6);
      OUTLINED_FUNCTION_55_15(v35, v36, v37, v38, v39, v40, v41, v42, v234, v239, v244, v249, v254, v259, v264, v269, v274, v279, v284, v289, v294, v299, v304, v309, v314, v319, v324, v329, v334, v339, v344, v349, v354, v359, *v364, v364[4]);
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
        v56 = OUTLINED_FUNCTION_8_37();
        if (testFldeq(v56, v57, v58, v59))
        {
          v55 = 0;
        }

        else
        {
          OUTLINED_FUNCTION_31_22();
          bspush_ca_scan_boa();
          v60 = OUTLINED_FUNCTION_3_39();
          v55 = !testFldeq(v60, v61, v62, v63);
        }
      }

      v64 = v55;
      while (2)
      {
        v65 = *(v0 + 104);
        if (v65)
        {
          v66 = OUTLINED_FUNCTION_56_14(v65);
          v68 = v67;
        }

        else
        {
          v66 = vback(v0, v64);
          v68 = 0;
        }

        switch(v66)
        {
          case 1:
            v69 = OUTLINED_FUNCTION_88_10();
            starttest(v69, v70);
            OUTLINED_FUNCTION_0_41(v71, v72, v73, v74, v75, v76, v77, v78, v235, v240, v245, v250, v255, v260, v265, v270, v275, v280, v285, v290, v295, v300, v305, v310, v315, v320, v325, v330, v335, v340, v345, v350, v355, v360, v365, v369, v373, v377, v381);
            if (!lpta_tstmovel())
            {
              v79 = OUTLINED_FUNCTION_42_16();
              setscan_l(v79);
              if (!v80)
              {
                OUTLINED_FUNCTION_42_16();
                if (!test_string_s())
                {
                  goto LABEL_30;
                }
              }
            }

            goto LABEL_17;
          case 2:
            bspop_boa(v0);
            break;
          case 3:
            bspop_boa(v0);
            v149 = advance_tok(v0);
            goto LABEL_80;
          case 4:
LABEL_17:
            v81 = OUTLINED_FUNCTION_38_18();
            starttest(v81, v82);
            v83 = OUTLINED_FUNCTION_20_29();
            if (lpta_loadp_setscan_r(v83, v84) || advanc(v0))
            {
              goto LABEL_19;
            }

            v218 = OUTLINED_FUNCTION_4_38();
            v222 = testFldeq(v218, v219, v220, v221);
            v64 = v68;
            if (v222)
            {
              continue;
            }

            v223 = OUTLINED_FUNCTION_10_36();
            v226 = testFldeq(v223, v224, v225, 7);
            v64 = v68;
            if (v226)
            {
              continue;
            }

            v227 = advance_tok(v0);
            v64 = v68;
            if (v227)
            {
              continue;
            }

            v145 = OUTLINED_FUNCTION_1_40();
            goto LABEL_60;
          case 5:
LABEL_30:
            v122 = OUTLINED_FUNCTION_13_35();
            v126 = test_synch(v122, v123, v124, v125);
            goto LABEL_62;
          case 6:
          case 28:
            goto LABEL_88;
          case 7:
LABEL_19:
            v85 = OUTLINED_FUNCTION_38_18();
            starttest(v85, v86);
            v87 = OUTLINED_FUNCTION_12_36();
            if (lpta_loadp_setscan_l(v87, v88))
            {
              goto LABEL_20;
            }

            goto LABEL_25;
          case 8:
LABEL_20:
            v89 = OUTLINED_FUNCTION_38_18();
            starttest(v89, v90);
            v91 = OUTLINED_FUNCTION_12_36();
            if (lpta_loadp_setscan_l(v91, v92))
            {
              goto LABEL_3;
            }

            v93 = OUTLINED_FUNCTION_34_19();
            bspush_ca_scan(v93, v94);
            v95 = OUTLINED_FUNCTION_10_36();
            v98 = testFldeq(v95, v96, v97, 28);
            v64 = v68;
            if (!v98)
            {
              v99 = advance_tok(v0);
              v64 = v68;
              if (!v99)
              {
                goto LABEL_23;
              }
            }

            continue;
          case 9:
LABEL_25:
            OUTLINED_FUNCTION_45_16(9, v235, v240, v245, v250, v255, v260, v265, v270, v275, v280, v285, v290, v295, v300, v305, v310, v315, v320, v325, v330, v335, v340, v345, v350, v355);
            v108 = OUTLINED_FUNCTION_10_36();
            v111 = testFldeq(v108, v109, v110, 29);
            v64 = v68;
            if (!v111)
            {
              v112 = advance_tok(v0);
              v64 = v68;
              if (!v112)
              {
                v113 = OUTLINED_FUNCTION_15_34();
                v115 = lpta_loadp_setscan_r(v113, v114);
                v64 = v68;
                if (!v115)
                {
                  goto LABEL_28;
                }
              }
            }

            continue;
          case 10:
LABEL_28:
            v116 = OUTLINED_FUNCTION_13_35();
            v119 = chstream(v116, v117, v118);
            v64 = v68;
            if (v119)
            {
              continue;
            }

            v120 = OUTLINED_FUNCTION_38_18();
            bspush_ca_scan(v120, v121);
            OUTLINED_FUNCTION_17_34();
LABEL_40:
            v140 = test_string_s();
            v64 = v68;
            if (v140)
            {
              continue;
            }

LABEL_41:
            v141 = OUTLINED_FUNCTION_38_18();
            v143 = chstream(v141, v142, 4u);
            v64 = v68;
            if (v143)
            {
              continue;
            }

            v144 = advanc(v0);
            v64 = v68;
            if (v144)
            {
              continue;
            }

            v145 = OUTLINED_FUNCTION_10_36();
            v148 = 29;
            goto LABEL_60;
          case 11:
            OUTLINED_FUNCTION_17_34();
            v139 = test_string_s();
            v64 = v68;
            if (v139)
            {
              continue;
            }

            OUTLINED_FUNCTION_35_18();
            goto LABEL_40;
          case 12:
            goto LABEL_41;
          case 14:
LABEL_23:
            OUTLINED_FUNCTION_61_14(14, v235, v240, v245, v250, v255, v260, v265, v270, v275, v280, v285, v290, v295, v300, v305, v310, v315, v320, v325, v330, v335, v340, v345, v350, v355, v360, v365, v369, v373, v377);
            v100 = OUTLINED_FUNCTION_1_40();
            v104 = testFldeq(v100, v101, v102, v103);
            v64 = v68;
            if (v104)
            {
              continue;
            }

            OUTLINED_FUNCTION_38_18();
            bspush_ca_scan_boa();
            v105 = OUTLINED_FUNCTION_10_36();
LABEL_51:
            v156 = 3;
LABEL_79:
            v149 = testFldeq(v105, v106, v107, v156);
LABEL_80:
            if (v149)
            {
              v64 = v68;
            }

            else
            {
              v64 = 1;
            }

            continue;
          case 15:
            bspop_boa(v0);
            OUTLINED_FUNCTION_38_18();
            bspush_ca_scan_boa();
            v105 = OUTLINED_FUNCTION_10_36();
            v156 = 28;
            goto LABEL_79;
          case 16:
            bspop_boa(v0);
            OUTLINED_FUNCTION_38_18();
            bspush_ca_scan_boa();
            v105 = OUTLINED_FUNCTION_11_36();
            v156 = 2;
            goto LABEL_79;
          case 17:
            bspop_boa(v0);
            OUTLINED_FUNCTION_38_18();
            bspush_ca_scan_boa();
            v105 = OUTLINED_FUNCTION_11_36();
            goto LABEL_51;
          case 18:
            bspop_boa(v0);
            v157 = advance_tok(v0);
            v64 = v68;
            if (v157)
            {
              continue;
            }

            v158 = OUTLINED_FUNCTION_38_18();
            starttest(v158, v159);
            v160 = OUTLINED_FUNCTION_12_36();
            if (lpta_loadp_setscan_l(v160, v161) || advance_tok(v0))
            {
              goto LABEL_55;
            }

            v228 = OUTLINED_FUNCTION_38_18();
            bspush_ca_scan(v228, v229);
            goto LABEL_48;
          case 19:
LABEL_55:
            v162 = OUTLINED_FUNCTION_38_18();
            starttest(v162, v163);
            v172 = OUTLINED_FUNCTION_0_41(v164, v165, v166, v167, v168, v169, v170, v171, v235, v240, v245, v250, v255, v260, v265, v270, v275, v280, v285, v290, v295, v300, v305, v310, v315, v320, v325, v330, v335, v340, v345, v350, v355, v360, v365, v369, v373, v377, v381);
            setscan_nof_l(v172);
            if (v173)
            {
              goto LABEL_56;
            }

            goto LABEL_68;
          case 20:
            v150 = OUTLINED_FUNCTION_38_18();
            bspush_ca_scan(v150, v151);
            v131 = OUTLINED_FUNCTION_9_36();
            v134 = 6;
            goto LABEL_46;
          case 21:
            goto LABEL_48;
          case 22:
            v131 = OUTLINED_FUNCTION_10_36();
            v134 = 15;
LABEL_46:
            v152 = testFldeq(v131, v132, v133, v134);
            v64 = v68;
            if (!v152)
            {
              goto LABEL_47;
            }

            continue;
          case 23:
LABEL_47:
            v153 = advance_tok(v0);
            v64 = v68;
            if (v153)
            {
              continue;
            }

LABEL_48:
            v154 = OUTLINED_FUNCTION_38_18();
            bspush_ca_scan(v154, v155);
            goto LABEL_49;
          case 24:
            v135 = OUTLINED_FUNCTION_38_18();
            bspush_ca_scan(v135, v136);
            v127 = OUTLINED_FUNCTION_4_38();
            goto LABEL_35;
          case 25:
            goto LABEL_49;
          case 26:
            v127 = OUTLINED_FUNCTION_3_39();
LABEL_35:
            v137 = testFldeq(v127, v128, v129, v130);
            v64 = v68;
            if (!v137)
            {
              goto LABEL_36;
            }

            continue;
          case 27:
LABEL_36:
            v138 = advance_tok(v0);
            v64 = v68;
            if (v138)
            {
              continue;
            }

LABEL_49:
            v145 = OUTLINED_FUNCTION_2_39();
            goto LABEL_60;
          case 29:
LABEL_56:
            v174 = OUTLINED_FUNCTION_38_18();
            starttest(v174, v175);
            v184 = OUTLINED_FUNCTION_0_41(v176, v177, v178, v179, v180, v181, v182, v183, v235, v240, v245, v250, v255, v260, v265, v270, v275, v280, v285, v290, v295, v300, v305, v310, v315, v320, v325, v330, v335, v340, v345, v350, v355, v360, v365, v369, v373, v377, v381);
            setscan_nof_l(v184);
            if (v185)
            {
              goto LABEL_57;
            }

            goto LABEL_64;
          case 30:
LABEL_68:
            OUTLINED_FUNCTION_45_16(30, v235, v240, v245, v250, v255, v260, v265, v270, v275, v280, v285, v290, v295, v300, v305, v310, v315, v320, v325, v330, v335, v340, v345, v350, v355);
            goto LABEL_69;
          case 31:
LABEL_69:
            v199 = OUTLINED_FUNCTION_13_35();
            v202 = chstream(v199, v200, v201);
            v64 = v68;
            if (v202)
            {
              continue;
            }

            v203 = OUTLINED_FUNCTION_33_21();
            bspush_ca_scan(v203, v204);
            OUTLINED_FUNCTION_42_16();
LABEL_71:
            v205 = test_string_s();
            v64 = v68;
            if (v205)
            {
              continue;
            }

LABEL_72:
            v206 = test_synch(v0, 33, 1u, &unk_28064B999);
            v64 = v68;
            if (v206)
            {
              continue;
            }

            *(v0 + 136) = 1;
            v207 = OUTLINED_FUNCTION_5_37();
            v208 = setscan_nof_r(v207);
            v64 = v68;
            if (v208)
            {
              continue;
            }

            v209 = OUTLINED_FUNCTION_9_36();
            v212 = testFldeq(v209, v210, v211, 6);
            v64 = v68;
            if (v212)
            {
              continue;
            }

            v213 = OUTLINED_FUNCTION_8_37();
            v217 = testFldeq(v213, v214, v215, v216);
            v64 = v68;
            if (v217)
            {
              continue;
            }

            v145 = OUTLINED_FUNCTION_10_36();
            v148 = 19;
LABEL_60:
            v190 = testFldeq(v145, v146, v147, v148);
            v64 = v68;
            if (v190)
            {
              continue;
            }

            v126 = advance_tok(v0);
LABEL_62:
            v64 = v68;
            if (v126)
            {
              continue;
            }

LABEL_88:
            v230 = HIWORD(v365);
LABEL_90:
            *(v2 + 8) = v381;
            *(v1 + 2) = v230;
            break;
          case 32:
            OUTLINED_FUNCTION_42_16();
            goto LABEL_71;
          case 33:
            goto LABEL_72;
          case 34:
LABEL_57:
            v186 = OUTLINED_FUNCTION_38_18();
            starttest(v186, v187);
            v188 = OUTLINED_FUNCTION_12_36();
            if (lpta_loadp_setscan_l(v188, v189) || advance_tok(v0))
            {
              goto LABEL_89;
            }

            v145 = OUTLINED_FUNCTION_11_36();
            v148 = 9;
            goto LABEL_60;
          case 35:
LABEL_64:
            v191 = OUTLINED_FUNCTION_13_35();
            v194 = chstream(v191, v192, v193);
            v64 = v68;
            if (!v194)
            {
              OUTLINED_FUNCTION_42_16();
              v195 = test_string_s();
              v64 = v68;
              if (!v195)
              {
                goto LABEL_66;
              }
            }

            continue;
          case 36:
LABEL_66:
            v196 = OUTLINED_FUNCTION_38_18();
            v198 = chstream(v196, v197, 4u);
            v64 = v68;
            if (v198)
            {
              continue;
            }

            v145 = OUTLINED_FUNCTION_10_36();
            v148 = 23;
            goto LABEL_60;
          case 37:
LABEL_89:
            v230 = 2;
            goto LABEL_90;
          default:
            goto LABEL_3;
        }

        break;
      }
    }
  }

LABEL_3:
  vretproc(v0);
  v29 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_103_7();
}

uint64_t prep_phrase()
{
  OUTLINED_FUNCTION_16_34();
  v636 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_19_29(v2, v3, v4, v5, v6, v7, v8, v9, v486, v491, v496, v501, v506, v511, v516, v521, v526, v531, v536, v541, v546, v551, v556, v561, v566, v571, v576, v581, v586, v591, v596, v601, v606, v611, v616, SHIDWORD(v616), v621, v625, v629, v630);
  OUTLINED_FUNCTION_52_15();
  OUTLINED_FUNCTION_100_7(v10, v11, v12, v13, v14, v15, v16, v17, v487, v492, v497, v502, v507, v512, v517, v522, v527, v532, v537, v542, v547, v552, v557, v562, v567, v572, v577, v582, v587, v592, v597, v602, v607, v612, v617, v622, v626, v629, v630, v631, v632, v633, v634, v635);
  if (setjmp(v1))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_25_27();
  if (OUTLINED_FUNCTION_98_8(v18, v19, v20, v21, v22, v23, v24, v25, v488, v493, v498, v503, v508, v513, v518, v523, v528, v533, v538, v543, v548, v553, v558, v563, v568, v573, v578, v583, v588, v593, v598, v603, v608, v613, v618, v623, v627, v629, v630, v631, v632, v633, v634, v635))
  {
    goto LABEL_3;
  }

  v28 = &v629;
  OUTLINED_FUNCTION_43_16();
  v29 = OUTLINED_FUNCTION_49_16();
  OUTLINED_FUNCTION_82_11(v29, v30);
  OUTLINED_FUNCTION_55_15(v31, v32, v33, v34, v35, v36, v37, v38, v489, v494, v499, v504, v509, v514, v519, v524, v529, v534, v539, v544, v549, v554, v559, v564, v569, v574, v579, v584, v589, v594, v599, v604, v609, v614, *v619, v619[4]);
  v39 = OUTLINED_FUNCTION_47_16();
  push_ptr_init(v39, v40);
  v41 = OUTLINED_FUNCTION_58_14();
  fence_38(v41, v42, v43);
  v44 = OUTLINED_FUNCTION_62_13();
  fence_38(v44, v45, v46);
  v47 = OUTLINED_FUNCTION_89_10();
  starttest(v47, v48);
  OUTLINED_FUNCTION_27_25();
  bspush_ca_boa();
  v49 = OUTLINED_FUNCTION_22_27();
  if (lpta_loadp_setscan_r(v49, v50))
  {
    v51 = 0;
  }

  else
  {
    v52 = OUTLINED_FUNCTION_3_39();
    if (testFldeq(v52, v53, v54, v55))
    {
      v51 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_31_22();
      bspush_ca_scan_boa();
      v56 = OUTLINED_FUNCTION_10_36();
      v51 = !testFldeq(v56, v57, v58, 21);
    }
  }

  LODWORD(v59) = v51;
  while (2)
  {
    v60 = *(v0 + 104);
    if (v60)
    {
      v61 = OUTLINED_FUNCTION_56_14(v60);
      v68 = v59;
    }

    else
    {
      v61 = vback(v0, v59);
      v68 = 0;
    }

    switch(v61)
    {
      case 1:
        v104 = OUTLINED_FUNCTION_44_16();
        if (!lpta_loadp_setscan_r(v104, v105))
        {
          OUTLINED_FUNCTION_42_16();
          v61 = test_string_s();
          if (!v61)
          {
            goto LABEL_222;
          }
        }

        goto LABEL_31;
      case 2:
        bspop_boa(v0);
        goto LABEL_3;
      case 3:
        bspop_boa(v0);
        LOBYTE(v28) = 4;
        bspush_ca_scan_boa();
        v95 = v0;
        v96 = 4;
        v97 = 2;
        v98 = 23;
        goto LABEL_140;
      case 4:
        bspop_boa(v0);
        OUTLINED_FUNCTION_38_18();
        bspush_ca_scan_boa();
        v95 = OUTLINED_FUNCTION_10_36();
        v98 = 18;
        goto LABEL_140;
      case 5:
        bspop_boa(v0);
        goto LABEL_203;
      case 6:
LABEL_31:
        v106 = OUTLINED_FUNCTION_38_18();
        starttest(v106, v107);
        v108 = OUTLINED_FUNCTION_12_36();
        if (lpta_loadp_setscan_l(v108, v109))
        {
          goto LABEL_32;
        }

        v403 = OUTLINED_FUNCTION_38_18();
        bspush_ca_scan(v403, v404);
        v101 = OUTLINED_FUNCTION_10_36();
        v294 = 21;
        goto LABEL_170;
      case 7:
        goto LABEL_39;
      case 8:
LABEL_32:
        v110 = OUTLINED_FUNCTION_38_18();
        starttest(v110, v111);
        v112 = OUTLINED_FUNCTION_44_16();
        if (lpta_loadp_setscan_l(v112, v113))
        {
          goto LABEL_34;
        }

        OUTLINED_FUNCTION_42_16();
        if (test_string_s())
        {
          goto LABEL_34;
        }

        goto LABEL_123;
      case 9:
        v399 = OUTLINED_FUNCTION_38_18();
        bspush_ca_scan(v399, v400);
        v101 = OUTLINED_FUNCTION_10_36();
        v294 = 23;
        goto LABEL_170;
      case 10:
      case 87:
      case 95:
        goto LABEL_171;
      case 11:
        v101 = OUTLINED_FUNCTION_10_36();
        v294 = 18;
        goto LABEL_170;
      case 12:
LABEL_34:
        v114 = OUTLINED_FUNCTION_34_19();
        starttest(v114, v115);
        v116 = OUTLINED_FUNCTION_12_36();
        if (lpta_loadp_setscan_l(v116, v117))
        {
          goto LABEL_35;
        }

        goto LABEL_88;
      case 13:
      case 24:
        goto LABEL_123;
      case 14:
LABEL_35:
        v118 = OUTLINED_FUNCTION_38_18();
        starttest(v118, v119);
        v120 = OUTLINED_FUNCTION_12_36();
        if (lpta_loadp_setscan_l(v120, v121))
        {
          goto LABEL_36;
        }

        goto LABEL_95;
      case 15:
LABEL_88:
        OUTLINED_FUNCTION_45_16(15, v490, v495, v500, v505, v510, v515, v520, v525, v530, v535, v540, v545, v550, v555, v560, v565, v570, v575, v580, v585, v590, v595, v600, v605, v610);
        v244 = OUTLINED_FUNCTION_4_38();
        v248 = testFldeq(v244, v245, v246, v247);
        LODWORD(v59) = v68;
        if (!v248)
        {
          v249 = advance_tok(v0);
          LODWORD(v59) = v68;
          if (!v249)
          {
            v250 = OUTLINED_FUNCTION_2_39();
            v254 = testFldeq(v250, v251, v252, v253);
            LODWORD(v59) = v68;
            if (!v254)
            {
              v255 = advance_tok(v0);
              LODWORD(v59) = v68;
              if (!v255)
              {
                v256 = OUTLINED_FUNCTION_15_34();
                v258 = lpta_loadp_setscan_r(v256, v257);
                LODWORD(v59) = v68;
                if (!v258)
                {
                  goto LABEL_93;
                }
              }
            }
          }
        }

        continue;
      case 16:
LABEL_93:
        v259 = OUTLINED_FUNCTION_13_35();
        v262 = chstream(v259, v260, v261);
        LODWORD(v59) = v68;
        if (v262)
        {
          continue;
        }

        v263 = OUTLINED_FUNCTION_38_18();
        bspush_ca_scan(v263, v264);
        OUTLINED_FUNCTION_35_18();
        goto LABEL_159;
      case 17:
        v383 = OUTLINED_FUNCTION_38_18();
        bspush_ca_scan(v383, v384);
        goto LABEL_158;
      case 18:
        goto LABEL_160;
      case 19:
LABEL_158:
        OUTLINED_FUNCTION_28_24();
LABEL_159:
        v385 = test_string_s();
        LODWORD(v59) = v68;
        if (v385)
        {
          continue;
        }

LABEL_160:
        v386 = OUTLINED_FUNCTION_38_18();
        v388 = chstream(v386, v387, 4u);
        LODWORD(v59) = v68;
        if (v388)
        {
          continue;
        }

        v61 = advanc(v0);
        goto LABEL_172;
      case 20:
LABEL_36:
        v122 = OUTLINED_FUNCTION_38_18();
        starttest(v122, v123);
        v124 = OUTLINED_FUNCTION_12_36();
        if (lpta_loadp_setscan_l(v124, v125))
        {
          goto LABEL_37;
        }

        goto LABEL_100;
      case 21:
LABEL_95:
        OUTLINED_FUNCTION_45_16(21, v490, v495, v500, v505, v510, v515, v520, v525, v530, v535, v540, v545, v550, v555, v560, v565, v570, v575, v580, v585, v590, v595, v600, v605, v610);
        v265 = OUTLINED_FUNCTION_3_39();
        v269 = testFldeq(v265, v266, v267, v268);
        LODWORD(v59) = v68;
        if (!v269)
        {
          v270 = advance_tok(v0);
          LODWORD(v59) = v68;
          if (!v270)
          {
            v271 = OUTLINED_FUNCTION_15_34();
            v273 = lpta_loadp_setscan_r(v271, v272);
            LODWORD(v59) = v68;
            if (!v273)
            {
              goto LABEL_98;
            }
          }
        }

        continue;
      case 22:
LABEL_98:
        v274 = OUTLINED_FUNCTION_13_35();
        v277 = chstream(v274, v275, v276);
        LODWORD(v59) = v68;
        if (v277)
        {
          continue;
        }

        v278 = OUTLINED_FUNCTION_38_18();
        bspush_ca_scan(v278, v279);
        OUTLINED_FUNCTION_42_16();
LABEL_122:
        v317 = test_string_s();
        LODWORD(v59) = v68;
        if (v317)
        {
          continue;
        }

LABEL_123:
        v318 = OUTLINED_FUNCTION_13_35();
        v61 = test_synch(v318, v319, v320, v321);
        goto LABEL_172;
      case 23:
        OUTLINED_FUNCTION_42_16();
        goto LABEL_122;
      case 25:
LABEL_37:
        v126 = OUTLINED_FUNCTION_21_28();
        if (!lpta_loadp_setscan_r(v126, v127))
        {
          OUTLINED_FUNCTION_42_16();
          v61 = test_string_s();
          if (!v61)
          {
            goto LABEL_222;
          }
        }

LABEL_39:
        v128 = OUTLINED_FUNCTION_33_21();
        starttest(v128, v129);
        v130 = OUTLINED_FUNCTION_20_29();
        if (lpta_loadp_setscan_l(v130, v131))
        {
          goto LABEL_40;
        }

        goto LABEL_73;
      case 26:
LABEL_100:
        OUTLINED_FUNCTION_45_16(26, v490, v495, v500, v505, v510, v515, v520, v525, v530, v535, v540, v545, v550, v555, v560, v565, v570, v575, v580, v585, v590, v595, v600, v605, v610);
        v280 = OUTLINED_FUNCTION_38_18();
        bspush_ca_scan(v280, v281);
        goto LABEL_101;
      case 27:
        v389 = OUTLINED_FUNCTION_10_36();
        v392 = testFldeq(v389, v390, v391, 8);
        LODWORD(v59) = v68;
        if (v392)
        {
          continue;
        }

        v393 = OUTLINED_FUNCTION_4_38();
        v397 = testFldeq(v393, v394, v395, v396);
        LODWORD(v59) = v68;
        if (v397)
        {
          continue;
        }

        v398 = advance_tok(v0);
        LODWORD(v59) = v68;
        if (v398)
        {
          continue;
        }

        goto LABEL_101;
      case 28:
LABEL_101:
        v282 = OUTLINED_FUNCTION_2_39();
        v286 = testFldeq(v282, v283, v284, v285);
        LODWORD(v59) = v68;
        if (!v286)
        {
          v287 = advance_tok(v0);
          LODWORD(v59) = v68;
          if (!v287)
          {
            v288 = OUTLINED_FUNCTION_15_34();
            v290 = lpta_loadp_setscan_r(v288, v289);
            LODWORD(v59) = v68;
            if (!v290)
            {
              v291 = advance_tok(v0);
              LODWORD(v59) = v68;
              if (!v291)
              {
                goto LABEL_20;
              }
            }
          }
        }

        continue;
      case 29:
        v350 = OUTLINED_FUNCTION_9_36();
        v353 = testFldeq(v350, v351, v352, 6);
        LODWORD(v59) = v68;
        if (v353)
        {
          continue;
        }

        OUTLINED_FUNCTION_38_18();
        bspush_ca_scan_boa();
        v95 = OUTLINED_FUNCTION_3_39();
LABEL_140:
        v354 = testFldeq(v95, v96, v97, v98);
        goto LABEL_204;
      case 30:
        goto LABEL_135;
      case 31:
        bspop_boa(v0);
        v347 = advance_tok(v0);
        LODWORD(v59) = v68;
        if (v347)
        {
          continue;
        }

        goto LABEL_135;
      case 32:
LABEL_40:
        v132 = OUTLINED_FUNCTION_38_18();
        starttest(v132, v133);
        v134 = OUTLINED_FUNCTION_12_36();
        if (lpta_loadp_setscan_r(v134, v135))
        {
          goto LABEL_41;
        }

        v297 = OUTLINED_FUNCTION_11_36();
        v300 = testFldeq(v297, v298, v299, 12);
        LODWORD(v59) = v68;
        if (!v300)
        {
          v301 = advance_tok(v0);
          LODWORD(v59) = v68;
          if (!v301)
          {
            goto LABEL_212;
          }
        }

        continue;
      case 33:
LABEL_73:
        OUTLINED_FUNCTION_45_16(33, v490, v495, v500, v505, v510, v515, v520, v525, v530, v535, v540, v545, v550, v555, v560, v565, v570, v575, v580, v585, v590, v595, v600, v605, v610);
        goto LABEL_74;
      case 34:
LABEL_74:
        v211 = OUTLINED_FUNCTION_13_35();
        v214 = chstream(v211, v212, v213);
        LODWORD(v59) = v68;
        if (!v214)
        {
          OUTLINED_FUNCTION_75_13();
          v215 = test_string_s();
          LODWORD(v59) = v68;
          if (!v215)
          {
            *(v0 + 136) = v28;
            v222 = OUTLINED_FUNCTION_7_37(v215, v68, v216, v217, v218, v219, v220, v221, v490, v495, v500, v505, v510, v515, v520, v525, v530, v535, v540, v545, v550, v555, v560, v565, v570, v575, v580, v585, v590, v595, v600, v605, v610, v615, v620, v624, v628, v629, v630);
            v223 = test_ptr(v222);
            LODWORD(v59) = v68;
            if (!v223)
            {
              goto LABEL_77;
            }
          }
        }

        continue;
      case 35:
LABEL_77:
        v224 = OUTLINED_FUNCTION_38_18();
        v226 = chstream(v224, v225, 4u);
        LODWORD(v59) = v68;
        if (!v226)
        {
          goto LABEL_200;
        }

        continue;
      case 36:
        bspop_boa(v0);
        v355 = OUTLINED_FUNCTION_15_34();
        v357 = lpta_loadp_setscan_r(v355, v356);
        LODWORD(v59) = v68;
        if (v357)
        {
          continue;
        }

        v358 = OUTLINED_FUNCTION_10_36();
        v361 = testFldeq(v358, v359, v360, 21);
        LODWORD(v59) = v68;
        if (v361)
        {
          continue;
        }

        v362 = advance_tok(v0);
        LODWORD(v59) = v68;
        if (v362)
        {
          continue;
        }

        goto LABEL_144;
      case 37:
      case 69:
      case 81:
        v69 = OUTLINED_FUNCTION_10_36();
        v72 = testFldeq(v69, v70, v71, 8);
        LODWORD(v59) = v68;
        if (v72)
        {
          continue;
        }

        v73 = OUTLINED_FUNCTION_4_38();
        v77 = testFldeq(v73, v74, v75, v76);
        LODWORD(v59) = v68;
        if (v77)
        {
          continue;
        }

        v78 = advance_tok(v0);
        LODWORD(v59) = v68;
        if (v78)
        {
          continue;
        }

        goto LABEL_201;
      case 38:
      case 70:
      case 82:
        goto LABEL_201;
      case 39:
LABEL_144:
        OUTLINED_FUNCTION_79_12(39, v490, v495, v500, v505, v510, v515, v520, v525, v530, v535, v540, v545, v550, v555, v560, v565, v570, v575, v580, v585, v590, v595, v600, v605, v610, v615, v620, v624);
        goto LABEL_145;
      case 40:
      case 47:
      case 52:
      case 65:
        goto LABEL_193;
      case 41:
LABEL_41:
        v136 = OUTLINED_FUNCTION_38_18();
        starttest(v136, v137);
        v138 = OUTLINED_FUNCTION_21_28();
        if (lpta_loadp_setscan_r(v138, v139))
        {
          goto LABEL_42;
        }

        v302 = OUTLINED_FUNCTION_38_18();
        bspush_ca_scan(v302, v303);
        OUTLINED_FUNCTION_28_24();
        goto LABEL_113;
      case 42:
LABEL_42:
        v140 = OUTLINED_FUNCTION_21_28();
        if (lpta_loadp_setscan_r(v140, v141))
        {
          goto LABEL_44;
        }

        OUTLINED_FUNCTION_28_24();
        if (test_string_s())
        {
          goto LABEL_44;
        }

        v467 = OUTLINED_FUNCTION_38_18();
        starttest(v467, v468);
        v469 = OUTLINED_FUNCTION_12_36();
        if (lpta_loadp_setscan_l(v469, v470))
        {
          goto LABEL_191;
        }

        v471 = OUTLINED_FUNCTION_1_40();
        v475 = testFldeq(v471, v472, v473, v474);
        LODWORD(v59) = v68;
        if (v475)
        {
          continue;
        }

        v476 = advance_tok(v0);
        LODWORD(v59) = v68;
        if (v476)
        {
          continue;
        }

        v101 = OUTLINED_FUNCTION_8_37();
        goto LABEL_170;
      case 43:
        OUTLINED_FUNCTION_35_18();
LABEL_113:
        v304 = test_string_s();
        LODWORD(v59) = v68;
        if (!v304)
        {
          goto LABEL_114;
        }

        continue;
      case 44:
LABEL_114:
        OUTLINED_FUNCTION_54_15();
        v305 = OUTLINED_FUNCTION_14_35();
        v306 = test_ptr(v305);
        LODWORD(v59) = v68;
        if (v306)
        {
          continue;
        }

        v307 = OUTLINED_FUNCTION_38_18();
        starttest(v307, v308);
        v309 = OUTLINED_FUNCTION_20_29();
        if (!lpta_loadp_setscan_r(v309, v310))
        {
          v477 = OUTLINED_FUNCTION_9_36();
          v480 = testFldeq(v477, v478, v479, 4);
          LODWORD(v59) = v68;
          if (!v480)
          {
            v481 = OUTLINED_FUNCTION_11_36();
            v484 = testFldeq(v481, v482, v483, 9);
            LODWORD(v59) = v68;
            if (!v484)
            {
              v485 = advance_tok(v0);
              LODWORD(v59) = v68;
              if (!v485)
              {
                OUTLINED_FUNCTION_38_18();
                bspush_ca_scan_boa();
                v457 = OUTLINED_FUNCTION_11_36();
LABEL_202:
                v460 = testFldeq(v457, v458, v459, 1);
                LODWORD(v59) = v68;
                if (!v460)
                {
LABEL_203:
                  v354 = advance_tok(v0);
LABEL_204:
                  if (v354)
                  {
                    LODWORD(v59) = v68;
                  }

                  else
                  {
                    LODWORD(v59) = 1;
                  }
                }
              }
            }
          }

          continue;
        }

LABEL_116:
        v311 = OUTLINED_FUNCTION_38_18();
        starttest(v311, v312);
        v313 = OUTLINED_FUNCTION_12_36();
        v61 = lpta_loadp_setscan_l(v313, v314);
        if (!v61)
        {
          v406 = OUTLINED_FUNCTION_11_36();
          v409 = testFldeq(v406, v407, v408, 3);
          LODWORD(v59) = v68;
          if (!v409)
          {
            v410 = advance_tok(v0);
            LODWORD(v59) = v68;
            if (!v410)
            {
              goto LABEL_193;
            }
          }

          continue;
        }

LABEL_117:
        OUTLINED_FUNCTION_0_41(v61, v59, v62, v63, v64, v65, v66, v67, v490, v495, v500, v505, v510, v515, v520, v525, v530, v535, v540, v545, v550, v555, v560, v565, v570, v575, v580, v585, v590, v595, v600, v605, v610, v615, v620, v624, v628, v629, v630);
        if (lpta_tstmovel() || (v315 = OUTLINED_FUNCTION_42_16(), setscan_l(v315), v316) || (OUTLINED_FUNCTION_42_16(), test_string_s()))
        {
LABEL_145:
          v363 = 3;
LABEL_192:
          HIWORD(v620) = v363;
        }

LABEL_193:
        v437 = OUTLINED_FUNCTION_38_18();
        starttest(v437, v438);
        v439 = OUTLINED_FUNCTION_12_36();
        v61 = lpta_loadp_setscan_l(v439, v440);
        if (v61)
        {
          goto LABEL_222;
        }

        v441 = OUTLINED_FUNCTION_6_37();
        v445 = testFldeq(v441, v442, v443, v444);
        LODWORD(v59) = v68;
        if (v445)
        {
          continue;
        }

        v446 = advance_tok(v0);
        LODWORD(v59) = v68;
        if (v446)
        {
          continue;
        }

        v447 = OUTLINED_FUNCTION_38_18();
        bspush_ca_scan(v447, v448);
        v449 = OUTLINED_FUNCTION_10_36();
        v452 = testFldeq(v449, v450, v451, 13);
        LODWORD(v59) = v68;
        if (v452)
        {
          continue;
        }

        v453 = advance_tok(v0);
        LODWORD(v59) = v68;
        if (v453)
        {
          continue;
        }

LABEL_221:
        OUTLINED_FUNCTION_61_14(109, v490, v495, v500, v505, v510, v515, v520, v525, v530, v535, v540, v545, v550, v555, v560, v565, v570, v575, v580, v585, v590, v595, v600, v605, v610, v615, v620, v624, v628, v629);
LABEL_222:
        OUTLINED_FUNCTION_50_16(v61, v59, v62, v63, v64, v65, v66, v67, v490, v495, v500, v505, v510, v515, v520, v525, v530, v535, v540, v545, v550, v555, v560, v565, v570, v575, v580, v585, v590, v595, v600, v605, v610, v615, v620, SWORD2(v620), SHIWORD(v620), v624, v628, v629, v630);
LABEL_3:
        vretproc(v0);
        v26 = *MEMORY[0x277D85DE8];
        return OUTLINED_FUNCTION_103_7();
      case 45:
        goto LABEL_116;
      case 46:
        bspop_boa(v0);
        goto LABEL_193;
      case 48:
        goto LABEL_117;
      case 49:
        goto LABEL_145;
      case 50:
LABEL_44:
        v142 = OUTLINED_FUNCTION_38_18();
        starttest(v142, v143);
        v144 = OUTLINED_FUNCTION_12_36();
        if (lpta_loadp_setscan_r(v144, v145))
        {
          goto LABEL_45;
        }

        goto LABEL_79;
      case 51:
      case 74:
      case 98:
        goto LABEL_191;
      case 53:
LABEL_45:
        v146 = OUTLINED_FUNCTION_21_28();
        if (lpta_loadp_setscan_r(v146, v147))
        {
          goto LABEL_47;
        }

        OUTLINED_FUNCTION_35_18();
        if (test_string_s())
        {
          goto LABEL_47;
        }

        v411 = OUTLINED_FUNCTION_38_18();
        starttest(v411, v412);
        v413 = OUTLINED_FUNCTION_20_29();
        if (!lpta_loadp_setscan_r(v413, v414) && !advanc(v0))
        {
          goto LABEL_179;
        }

        goto LABEL_181;
      case 54:
LABEL_79:
        OUTLINED_FUNCTION_45_16(54, v490, v495, v500, v505, v510, v515, v520, v525, v530, v535, v540, v545, v550, v555, v560, v565, v570, v575, v580, v585, v590, v595, v600, v605, v610);
        goto LABEL_80;
      case 55:
LABEL_80:
        v227 = OUTLINED_FUNCTION_13_35();
        v230 = chstream(v227, v228, v229);
        LODWORD(v59) = v68;
        if (!v230)
        {
          OUTLINED_FUNCTION_17_34();
          v231 = test_string_s();
          LODWORD(v59) = v68;
          if (!v231)
          {
            v232 = OUTLINED_FUNCTION_15_34();
            v234 = lpta_loadp_setscan_l(v232, v233);
            LODWORD(v59) = v68;
            if (!v234)
            {
              v235 = advanc(v0);
              LODWORD(v59) = v68;
              if (!v235)
              {
                goto LABEL_84;
              }
            }
          }
        }

        continue;
      case 56:
LABEL_84:
        v236 = OUTLINED_FUNCTION_13_35();
        v239 = chstream(v236, v237, v238);
        LODWORD(v59) = v68;
        if (!v239)
        {
          OUTLINED_FUNCTION_35_18();
          v240 = test_string_s();
          LODWORD(v59) = v68;
          if (!v240)
          {
            goto LABEL_86;
          }
        }

        continue;
      case 57:
LABEL_86:
        v241 = OUTLINED_FUNCTION_38_18();
        v243 = chstream(v241, v242, 4u);
        LODWORD(v59) = v68;
        if (!v243)
        {
          goto LABEL_87;
        }

        continue;
      case 58:
LABEL_87:
        v194 = 58;
        goto LABEL_190;
      case 59:
LABEL_47:
        v148 = OUTLINED_FUNCTION_38_18();
        starttest(v148, v149);
        v150 = OUTLINED_FUNCTION_20_29();
        if (lpta_loadp_setscan_l(v150, v151))
        {
          goto LABEL_48;
        }

        goto LABEL_67;
      case 60:
        goto LABEL_181;
      case 61:
LABEL_179:
        savescptr(v0, 61, v0 + 1768);
        v415 = advance_tok(v0);
        LODWORD(v59) = v68;
        if (!v415)
        {
          goto LABEL_180;
        }

        continue;
      case 62:
LABEL_180:
        savescptr(v0, 62, v0 + 1784);
LABEL_181:
        v416 = OUTLINED_FUNCTION_44_16();
        if (lpta_loadp_setscan_r(v416, v417))
        {
          goto LABEL_184;
        }

        OUTLINED_FUNCTION_75_13();
        if (test_string_s())
        {
          goto LABEL_184;
        }

        *(v0 + 136) = v28;
        v418 = *(v0 + 1792);
        v419 = OUTLINED_FUNCTION_14_35();
        if (test_ptr(v419))
        {
          goto LABEL_184;
        }

        goto LABEL_210;
      case 63:
LABEL_184:
        v420 = OUTLINED_FUNCTION_38_18();
        starttest(v420, v421);
        v422 = OUTLINED_FUNCTION_20_29();
        if (lpta_loadp_setscan_l(v422, v423))
        {
          goto LABEL_185;
        }

        goto LABEL_199;
      case 64:
LABEL_210:
        v376 = 64;
        goto LABEL_211;
      case 66:
LABEL_185:
        v424 = OUTLINED_FUNCTION_38_18();
        starttest(v424, v425);
        v426 = OUTLINED_FUNCTION_12_36();
        if (lpta_loadp_setscan_l(v426, v427))
        {
          goto LABEL_186;
        }

        v461 = OUTLINED_FUNCTION_1_40();
        v465 = testFldeq(v461, v462, v463, v464);
        LODWORD(v59) = v68;
        if (v465)
        {
          continue;
        }

        v466 = advance_tok(v0);
        LODWORD(v59) = v68;
        if (v466)
        {
          continue;
        }

        HIWORD(v620) = 0;
        goto LABEL_193;
      case 67:
LABEL_199:
        OUTLINED_FUNCTION_45_16(67, v490, v495, v500, v505, v510, v515, v520, v525, v530, v535, v540, v545, v550, v555, v560, v565, v570, v575, v580, v585, v590, v595, v600, v605, v610);
        v454 = advance_tok(v0);
        LODWORD(v59) = v68;
        if (!v454)
        {
          goto LABEL_200;
        }

        continue;
      case 68:
        bspop_boa(v0);
        v322 = OUTLINED_FUNCTION_15_34();
        v324 = lpta_loadp_setscan_r(v322, v323);
        LODWORD(v59) = v68;
        if (v324)
        {
          continue;
        }

        v325 = OUTLINED_FUNCTION_9_36();
        v328 = testFldeq(v325, v326, v327, 6);
        LODWORD(v59) = v68;
        if (v328)
        {
          continue;
        }

        v329 = OUTLINED_FUNCTION_8_37();
        v333 = testFldeq(v329, v330, v331, v332);
        LODWORD(v59) = v68;
        if (v333)
        {
          continue;
        }

        v334 = OUTLINED_FUNCTION_10_36();
        v337 = testFldeq(v334, v335, v336, 19);
        LODWORD(v59) = v68;
        if (v337)
        {
          continue;
        }

        v338 = advance_tok(v0);
        LODWORD(v59) = v68;
        if (v338)
        {
          continue;
        }

        v339 = OUTLINED_FUNCTION_1_40();
        v343 = testFldeq(v339, v340, v341, v342);
        LODWORD(v59) = v68;
        if (v343)
        {
          continue;
        }

        v344 = advance_tok(v0);
        LODWORD(v59) = v68;
        if (v344)
        {
          continue;
        }

        v345 = OUTLINED_FUNCTION_38_18();
        bspush_ca_scan(v345, v346);
        goto LABEL_23;
      case 71:
        v83 = OUTLINED_FUNCTION_1_40();
        v87 = testFldeq(v83, v84, v85, v86);
        LODWORD(v59) = v68;
        if (v87)
        {
          continue;
        }

        v88 = advance_tok(v0);
        LODWORD(v59) = v68;
        if (v88)
        {
          continue;
        }

        goto LABEL_23;
      case 72:
LABEL_23:
        v89 = OUTLINED_FUNCTION_6_37();
        v93 = testFldeq(v89, v90, v91, v92);
        LODWORD(v59) = v68;
        if (!v93)
        {
          v94 = advance_tok(v0);
          LODWORD(v59) = v68;
          if (!v94)
          {
            goto LABEL_145;
          }
        }

        continue;
      case 73:
LABEL_186:
        v428 = OUTLINED_FUNCTION_38_18();
        starttest(v428, v429);
        v430 = OUTLINED_FUNCTION_12_36();
        if (lpta_loadp_setscan_l(v430, v431))
        {
          goto LABEL_191;
        }

        v432 = OUTLINED_FUNCTION_11_36();
        v435 = testFldeq(v432, v433, v434, 2);
        LODWORD(v59) = v68;
        if (v435)
        {
          continue;
        }

        v436 = advance_tok(v0);
        LODWORD(v59) = v68;
        if (v436)
        {
          continue;
        }

LABEL_189:
        v194 = 75;
        goto LABEL_190;
      case 75:
        goto LABEL_189;
      case 76:
LABEL_48:
        v152 = OUTLINED_FUNCTION_21_28();
        if (lpta_loadp_setscan_r(v152, v153))
        {
          goto LABEL_51;
        }

        OUTLINED_FUNCTION_75_13();
        if (test_string_s())
        {
          goto LABEL_51;
        }

        *(v0 + 136) = v28;
        v154 = OUTLINED_FUNCTION_14_35();
        if (test_ptr(v154))
        {
          goto LABEL_51;
        }

        goto LABEL_145;
      case 77:
LABEL_67:
        OUTLINED_FUNCTION_45_16(77, v490, v495, v500, v505, v510, v515, v520, v525, v530, v535, v540, v545, v550, v555, v560, v565, v570, v575, v580, v585, v590, v595, v600, v605, v610);
        goto LABEL_68;
      case 78:
LABEL_68:
        v195 = OUTLINED_FUNCTION_13_35();
        v198 = chstream(v195, v196, v197);
        LODWORD(v59) = v68;
        if (!v198)
        {
          OUTLINED_FUNCTION_75_13();
          v199 = test_string_s();
          LODWORD(v59) = v68;
          if (!v199)
          {
            *(v0 + 136) = v28;
            v206 = OUTLINED_FUNCTION_7_37(v199, v68, v200, v201, v202, v203, v204, v205, v490, v495, v500, v505, v510, v515, v520, v525, v530, v535, v540, v545, v550, v555, v560, v565, v570, v575, v580, v585, v590, v595, v600, v605, v610, v615, v620, v624, v628, v629, v630);
            v207 = test_ptr(v206);
            LODWORD(v59) = v68;
            if (!v207)
            {
              goto LABEL_71;
            }
          }
        }

        continue;
      case 79:
LABEL_71:
        v208 = OUTLINED_FUNCTION_38_18();
        v210 = chstream(v208, v209, 4u);
        LODWORD(v59) = v68;
        if (v210)
        {
          continue;
        }

LABEL_200:
        OUTLINED_FUNCTION_38_18();
        bspush_ca_scan_boa();
        v455 = OUTLINED_FUNCTION_38_18();
        bspush_ca_scan(v455, v456);
LABEL_201:
        v457 = OUTLINED_FUNCTION_9_36();
        goto LABEL_202;
      case 80:
        bspop_boa(v0);
        v368 = OUTLINED_FUNCTION_15_34();
        v370 = lpta_loadp_setscan_r(v368, v369);
        LODWORD(v59) = v68;
        if (v370)
        {
          continue;
        }

        v371 = OUTLINED_FUNCTION_11_36();
        v374 = testFldeq(v371, v372, v373, 1);
        LODWORD(v59) = v68;
        if (v374)
        {
          continue;
        }

        v375 = advance_tok(v0);
        LODWORD(v59) = v68;
        if (v375)
        {
          continue;
        }

        goto LABEL_152;
      case 83:
LABEL_152:
        v376 = 83;
LABEL_211:
        OUTLINED_FUNCTION_79_12(v376, v490, v495, v500, v505, v510, v515, v520, v525, v530, v535, v540, v545, v550, v555, v560, v565, v570, v575, v580, v585, v590, v595, v600, v605, v610, v615, v620, v624);
LABEL_212:
        v363 = 2;
        goto LABEL_192;
      case 84:
LABEL_51:
        v155 = OUTLINED_FUNCTION_38_18();
        starttest(v155, v156);
        v157 = OUTLINED_FUNCTION_12_36();
        if (lpta_loadp_setscan_l(v157, v158))
        {
          goto LABEL_52;
        }

        v292 = OUTLINED_FUNCTION_38_18();
        bspush_ca_scan(v292, v293);
        v101 = OUTLINED_FUNCTION_10_36();
        v294 = 1;
        goto LABEL_170;
      case 85:
LABEL_52:
        v159 = OUTLINED_FUNCTION_38_18();
        starttest(v159, v160);
        v161 = OUTLINED_FUNCTION_12_36();
        if (lpta_loadp_setscan_l(v161, v162))
        {
          goto LABEL_53;
        }

        v295 = OUTLINED_FUNCTION_38_18();
        bspush_ca_scan(v295, v296);
        v101 = OUTLINED_FUNCTION_9_36();
        v294 = 5;
        goto LABEL_170;
      case 86:
        v348 = OUTLINED_FUNCTION_38_18();
        bspush_ca_scan(v348, v349);
        v101 = OUTLINED_FUNCTION_10_36();
        goto LABEL_137;
      case 88:
        v377 = OUTLINED_FUNCTION_38_18();
        bspush_ca_scan(v377, v378);
        v101 = OUTLINED_FUNCTION_10_36();
        v294 = 3;
        goto LABEL_170;
      case 89:
        v99 = OUTLINED_FUNCTION_38_18();
        bspush_ca_scan(v99, v100);
        v101 = OUTLINED_FUNCTION_11_36();
        goto LABEL_137;
      case 90:
LABEL_20:
        v81 = OUTLINED_FUNCTION_38_18();
        bspush_ca_scan(v81, v82);
LABEL_135:
        v101 = OUTLINED_FUNCTION_9_36();
LABEL_137:
        v294 = 2;
        goto LABEL_170;
      case 91:
        v401 = OUTLINED_FUNCTION_38_18();
        bspush_ca_scan(v401, v402);
        v101 = OUTLINED_FUNCTION_9_36();
        goto LABEL_170;
      case 92:
        v379 = OUTLINED_FUNCTION_9_36();
        v382 = testFldeq(v379, v380, v381, 4);
        LODWORD(v59) = v68;
        if (v382)
        {
          continue;
        }

        v101 = OUTLINED_FUNCTION_11_36();
        goto LABEL_156;
      case 93:
LABEL_53:
        v163 = OUTLINED_FUNCTION_38_18();
        starttest(v163, v164);
        v165 = OUTLINED_FUNCTION_12_36();
        if (!lpta_loadp_setscan_r(v165, v166))
        {
          goto LABEL_54;
        }

        goto LABEL_191;
      case 94:
        v366 = OUTLINED_FUNCTION_38_18();
        bspush_ca_scan(v366, v367);
        v101 = OUTLINED_FUNCTION_10_36();
        v294 = 6;
        goto LABEL_170;
      case 96:
        v364 = OUTLINED_FUNCTION_38_18();
        bspush_ca_scan(v364, v365);
        v101 = OUTLINED_FUNCTION_11_36();
        v294 = 12;
        goto LABEL_170;
      case 97:
        v101 = OUTLINED_FUNCTION_9_36();
LABEL_156:
        v294 = 9;
LABEL_170:
        v405 = testFldeq(v101, v102, v103, v294);
        LODWORD(v59) = v68;
        if (v405)
        {
          continue;
        }

LABEL_171:
        v61 = advance_tok(v0);
LABEL_172:
        v59 = v68;
        if (!v61)
        {
          goto LABEL_222;
        }

        continue;
      case 99:
LABEL_54:
        OUTLINED_FUNCTION_45_16(99, v490, v495, v500, v505, v510, v515, v520, v525, v530, v535, v540, v545, v550, v555, v560, v565, v570, v575, v580, v585, v590, v595, v600, v605, v610);
        goto LABEL_55;
      case 100:
LABEL_55:
        v167 = OUTLINED_FUNCTION_13_35();
        v170 = chstream(v167, v168, v169);
        LODWORD(v59) = v68;
        if (v170)
        {
          continue;
        }

        v171 = OUTLINED_FUNCTION_38_18();
        bspush_ca_scan(v171, v172);
LABEL_57:
        OUTLINED_FUNCTION_35_18();
LABEL_58:
        v173 = test_string_s();
        LODWORD(v59) = v68;
        if (v173)
        {
          continue;
        }

LABEL_59:
        v174 = OUTLINED_FUNCTION_38_18();
        v176 = chstream(v174, v175, 4u);
        LODWORD(v59) = v68;
        if (v176)
        {
          continue;
        }

LABEL_60:
        v177 = OUTLINED_FUNCTION_13_35();
        v181 = test_synch(v177, v178, v179, v180);
        LODWORD(v59) = v68;
        if (v181)
        {
          continue;
        }

        v182 = OUTLINED_FUNCTION_15_34();
        v184 = lpta_loadp_setscan_l(v182, v183);
        LODWORD(v59) = v68;
        if (v184)
        {
          continue;
        }

        v185 = advanc(v0);
        LODWORD(v59) = v68;
        if (v185)
        {
          continue;
        }

LABEL_63:
        v186 = OUTLINED_FUNCTION_13_35();
        v189 = chstream(v186, v187, v188);
        LODWORD(v59) = v68;
        if (v189)
        {
          continue;
        }

        OUTLINED_FUNCTION_28_24();
        v190 = test_string_s();
        LODWORD(v59) = v68;
        if (v190)
        {
          continue;
        }

LABEL_65:
        v191 = OUTLINED_FUNCTION_38_18();
        v193 = chstream(v191, v192, 4u);
        LODWORD(v59) = v68;
        if (v193)
        {
          continue;
        }

LABEL_66:
        v194 = 107;
LABEL_190:
        OUTLINED_FUNCTION_61_14(v194, v490, v495, v500, v505, v510, v515, v520, v525, v530, v535, v540, v545, v550, v555, v560, v565, v570, v575, v580, v585, v590, v595, v600, v605, v610, v615, v620, v624, v628, v629);
LABEL_191:
        v363 = 4;
        goto LABEL_192;
      case 101:
        v79 = OUTLINED_FUNCTION_38_18();
        bspush_ca_scan(v79, v80);
        OUTLINED_FUNCTION_28_24();
        goto LABEL_58;
      case 102:
        goto LABEL_59;
      case 103:
        goto LABEL_57;
      case 104:
        goto LABEL_60;
      case 105:
        goto LABEL_63;
      case 106:
        goto LABEL_65;
      case 107:
        goto LABEL_66;
      case 108:
        goto LABEL_222;
      case 109:
        goto LABEL_221;
      default:
        goto LABEL_3;
    }
  }
}

uint64_t verb_phrase()
{
  OUTLINED_FUNCTION_16_34();
  v503 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_19_29(v2, v3, v4, v5, v6, v7, v8, v9, v353, v358, v363, v368, v373, v378, v383, v388, v393, v398, v403, v408, v413, v418, v423, v428, v433, v438, v443, v448, v453, v458, v463, v468, v473, v478, v483, SHIDWORD(v483), v488, v492, v496, v497);
  OUTLINED_FUNCTION_52_15();
  OUTLINED_FUNCTION_100_7(v10, v11, v12, v13, v14, v15, v16, v17, v354, v359, v364, v369, v374, v379, v384, v389, v394, v399, v404, v409, v414, v419, v424, v429, v434, v439, v444, v449, v454, v459, v464, v469, v474, v479, v484, v489, v493, v496, v497, v498, v499, v500, v501, v502);
  if (setjmp(v1))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_25_27();
  if (OUTLINED_FUNCTION_98_8(v18, v19, v20, v21, v22, v23, v24, v25, v355, v360, v365, v370, v375, v380, v385, v390, v395, v400, v405, v410, v415, v420, v425, v430, v435, v440, v445, v450, v455, v460, v465, v470, v475, v480, v485, v490, v494, v496, v497, v498, v499, v500, v501, v502))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_43_16();
  v28 = OUTLINED_FUNCTION_49_16();
  OUTLINED_FUNCTION_82_11(v28, v29);
  OUTLINED_FUNCTION_55_15(v30, v31, v32, v33, v34, v35, v36, v37, v356, v361, v366, v371, v376, v381, v386, v391, v396, v401, v406, v411, v416, v421, v426, v431, v436, v441, v446, v451, v456, v461, v466, v471, v476, v481, *v486, v486[4]);
  v38 = OUTLINED_FUNCTION_47_16();
  push_ptr_init(v38, v39);
  v40 = 0;
  v41 = OUTLINED_FUNCTION_58_14();
  fence_38(v41, v42, v43);
  v44 = OUTLINED_FUNCTION_62_13();
  fence_38(v44, v45, v46);
  v47 = OUTLINED_FUNCTION_89_10();
  starttest(v47, v48);
  v49 = OUTLINED_FUNCTION_22_27();
  LODWORD(v51) = 0;
  if (lpta_loadp_setscan_l(v49, v50))
  {
LABEL_5:
    v52 = OUTLINED_FUNCTION_38_18();
    starttest(v52, v53);
    v54 = OUTLINED_FUNCTION_12_36();
    if (lpta_loadp_setscan_l(v54, v55))
    {
LABEL_6:
      v56 = OUTLINED_FUNCTION_30_23();
      starttest(v56, v57);
      OUTLINED_FUNCTION_38_18();
      bspush_ca_boa();
      v58 = OUTLINED_FUNCTION_12_36();
      if (!lpta_loadp_setscan_r(v58, v59))
      {
        v60 = OUTLINED_FUNCTION_2_39();
        if (!testFldeq(v60, v61, v62, v63))
        {
          v64 = OUTLINED_FUNCTION_11_36();
          v67 = 4;
          goto LABEL_141;
        }
      }

      goto LABEL_137;
    }

    v68 = OUTLINED_FUNCTION_10_36();
    if (testFldeq(v68, v69, v70, 25))
    {
      goto LABEL_137;
    }

    if (advance_tok(v0))
    {
      goto LABEL_137;
    }

    v71 = OUTLINED_FUNCTION_1_40();
    if (testFldeq(v71, v72, v73, v74) || advance_tok(v0))
    {
      goto LABEL_137;
    }

    v75 = OUTLINED_FUNCTION_38_18();
    bspush_ca_scan(v75, v76);
    LODWORD(v77) = v51;
LABEL_14:
    LODWORD(v51) = v77;
    v78 = OUTLINED_FUNCTION_1_40();
  }

  else
  {
LABEL_16:
    OUTLINED_FUNCTION_45_16(2, v357, v362, v367, v372, v377, v382, v387, v392, v397, v402, v407, v412, v417, v422, v427, v432, v437, v442, v447, v452, v457, v462, v467, v472, v477);
    v82 = OUTLINED_FUNCTION_31_22();
    bspush_ca_scan(v82, v83);
LABEL_17:
    v84 = OUTLINED_FUNCTION_6_37();
    if (testFldeq(v84, v85, v86, v87))
    {
      goto LABEL_32;
    }

    v88 = advance_tok(v0);
    v89 = v40;
    LODWORD(v90) = v40;
    if (v88)
    {
      goto LABEL_38;
    }

LABEL_19:
    LODWORD(v51) = v89;
    OUTLINED_FUNCTION_61_14(5, v357, v362, v367, v372, v377, v382, v387, v392, v397, v402, v407, v412, v417, v422, v427, v432, v437, v442, v447, v452, v457, v462, v467, v472, v477, v482, v487, v491, v495, v496);
    v91 = OUTLINED_FUNCTION_1_40();
    if (testFldeq(v91, v92, v93, v94))
    {
      goto LABEL_137;
    }

    if (advance_tok(v0))
    {
      goto LABEL_137;
    }

    v95 = OUTLINED_FUNCTION_15_34();
    if (lpta_loadp_setscan_r(v95, v96))
    {
      goto LABEL_137;
    }

    v97 = OUTLINED_FUNCTION_2_39();
    if (testFldeq(v97, v98, v99, v100))
    {
      goto LABEL_137;
    }

    v78 = OUTLINED_FUNCTION_11_36();
    v81 = 4;
  }

  if (testFldeq(v78, v79, v80, v81))
  {
    goto LABEL_137;
  }

  v101 = advance_tok(v0);
  LODWORD(v90) = v51;
  if (v101)
  {
    goto LABEL_38;
  }

  HIWORD(v487) = 4;
LABEL_27:
  LODWORD(v102) = v51;
LABEL_28:
  LODWORD(v51) = v102;
  v103 = OUTLINED_FUNCTION_38_18();
  starttest(v103, v104);
  v105 = OUTLINED_FUNCTION_20_29();
  v107 = lpta_loadp_setscan_r(v105, v106);
  LODWORD(v108) = v51;
  if (!v107)
  {
LABEL_128:
    v316 = v108;
    v317 = OUTLINED_FUNCTION_38_18();
    bspush_ca_scan(v317, v318);
    v319 = OUTLINED_FUNCTION_38_18();
    bspush_ca_scan(v319, v320);
    LODWORD(v118) = v316;
LABEL_129:
    LODWORD(v51) = v118;
    v321 = OUTLINED_FUNCTION_38_18();
    bspush_ca_scan(v321, v322);
    v323 = OUTLINED_FUNCTION_11_36();
    if (testFldeq(v323, v324, v325, 1))
    {
      goto LABEL_137;
    }

    v326 = advance_tok(v0);
    LODWORD(v90) = v51;
    LODWORD(v119) = v51;
    if (v326)
    {
      goto LABEL_38;
    }

LABEL_131:
    LODWORD(v51) = v119;
    v327 = OUTLINED_FUNCTION_38_18();
    bspush_ca_scan(v327, v328);
    v329 = OUTLINED_FUNCTION_4_38();
    if (testFldeq(v329, v330, v331, v332))
    {
      goto LABEL_137;
    }

    v333 = advance_tok(v0);
    LODWORD(v90) = v51;
    if (v333)
    {
      goto LABEL_38;
    }

LABEL_133:
    OUTLINED_FUNCTION_79_12(58, v357, v362, v367, v372, v377, v382, v387, v392, v397, v402, v407, v412, v417, v422, v427, v432, v437, v442, v447, v452, v457, v462, v467, v472, v477, v482, v487, v491);
  }

LABEL_29:
  v109 = OUTLINED_FUNCTION_38_18();
  starttest(v109, v110);
  v111 = OUTLINED_FUNCTION_12_36();
  v113 = lpta_loadp_setscan_l(v111, v112);
  LODWORD(v114) = v51;
  v40 = v51;
  if (!v113)
  {
LABEL_134:
    v334 = v114;
    v335 = OUTLINED_FUNCTION_38_18();
    bspush_ca_scan(v335, v336);
    v129 = v334;
LABEL_135:
    LODWORD(v51) = v129;
    v337 = OUTLINED_FUNCTION_38_18();
    bspush_ca_scan(v337, v338);
LABEL_136:
    OUTLINED_FUNCTION_61_14(67, v357, v362, v367, v372, v377, v382, v387, v392, v397, v402, v407, v412, v417, v422, v427, v432, v437, v442, v447, v452, v457, v462, v467, v472, v477, v482, v487, v491, v495, v496);
    OUTLINED_FUNCTION_38_18();
    bspush_ca_scan_boa();
    v339 = OUTLINED_FUNCTION_38_18();
    bspush_ca_scan(v339, v340);
    v341 = OUTLINED_FUNCTION_9_36();
    if (!testFldeq(v341, v342, v343, 4))
    {
      v344 = OUTLINED_FUNCTION_38_18();
      bspush_ca_scan(v344, v345);
      v64 = OUTLINED_FUNCTION_10_36();
      v67 = 12;
LABEL_141:
      v352 = testFldeq(v64, v65, v66, v67);
      v128 = v51;
      LODWORD(v90) = v51;
      if (!v352)
      {
LABEL_142:
        LODWORD(v51) = v128;
        v351 = advance_tok(v0);
LABEL_143:
        if (v351)
        {
          LODWORD(v90) = v51;
        }

        else
        {
          LODWORD(v90) = 1;
        }
      }

      while (1)
      {
LABEL_38:
        v125 = v0[13];
        if (v125)
        {
          v126 = OUTLINED_FUNCTION_56_14(v125);
          v51 = v90;
        }

        else
        {
          v126 = vback(v0, v90);
          v51 = 0;
        }

        v127 = v126 - 1;
        v124 = 4;
        v40 = v51;
        v77 = v51;
        v128 = v51;
        v102 = v51;
        v108 = v51;
        v118 = v51;
        v119 = v51;
        v114 = v51;
        v129 = v51;
        switch(v127)
        {
          case 0:
            goto LABEL_5;
          case 1:
            v40 = v51;
            goto LABEL_16;
          case 2:
            v130 = OUTLINED_FUNCTION_10_36();
            v133 = testFldeq(v130, v131, v132, 25);
            LODWORD(v90) = v51;
            if (!v133)
            {
              v134 = advance_tok(v0);
              v40 = v51;
              LODWORD(v90) = v51;
              if (!v134)
              {
                goto LABEL_17;
              }
            }

            continue;
          case 3:
            goto LABEL_17;
          case 4:
            v89 = v51;
            goto LABEL_19;
          case 5:
            goto LABEL_28;
          case 6:
            goto LABEL_6;
          case 7:
            v212 = OUTLINED_FUNCTION_3_39();
            v216 = testFldeq(v212, v213, v214, v215);
            LODWORD(v90) = v51;
            if (!v216)
            {
              v217 = advance_tok(v0);
              LODWORD(v77) = v51;
              LODWORD(v90) = v51;
              if (!v217)
              {
                goto LABEL_14;
              }
            }

            continue;
          case 8:
            goto LABEL_14;
          case 9:
            v168 = OUTLINED_FUNCTION_38_18();
            starttest(v168, v169);
            v170 = OUTLINED_FUNCTION_12_36();
            if (lpta_loadp_setscan_l(v170, v171))
            {
              goto LABEL_59;
            }

            v301 = OUTLINED_FUNCTION_2_39();
            v305 = testFldeq(v301, v302, v303, v304);
            LODWORD(v90) = v51;
            if (v305)
            {
              continue;
            }

            v306 = OUTLINED_FUNCTION_11_36();
            v309 = testFldeq(v306, v307, v308, 1);
            LODWORD(v90) = v51;
            if (v309)
            {
              continue;
            }

            v102 = advance_tok(v0);
            v90 = v51;
            if (v102)
            {
              continue;
            }

            v124 = 2;
            goto LABEL_36;
          case 10:
            bspop_boa(v0);
            goto LABEL_3;
          case 11:
LABEL_59:
            v172 = OUTLINED_FUNCTION_38_18();
            starttest(v172, v173);
            v174 = OUTLINED_FUNCTION_12_36();
            if (lpta_loadp_setscan_l(v174, v175))
            {
              goto LABEL_60;
            }

            v297 = OUTLINED_FUNCTION_34_19();
            bspush_ca_scan(v297, v298);
            v226 = OUTLINED_FUNCTION_9_36();
            v229 = 5;
            goto LABEL_117;
          case 12:
LABEL_60:
            v176 = OUTLINED_FUNCTION_38_18();
            starttest(v176, v177);
            v178 = OUTLINED_FUNCTION_12_36();
            if (lpta_loadp_setscan_l(v178, v179))
            {
              goto LABEL_61;
            }

            break;
          case 13:
            v226 = OUTLINED_FUNCTION_6_37();
            goto LABEL_117;
          case 14:
            goto LABEL_118;
          case 15:
LABEL_61:
            v180 = OUTLINED_FUNCTION_38_18();
            starttest(v180, v181);
            v182 = OUTLINED_FUNCTION_20_29();
            if (lpta_loadp_setscan_r(v182, v183))
            {
              goto LABEL_62;
            }

            goto LABEL_68;
          case 16:
            v226 = OUTLINED_FUNCTION_3_39();
            goto LABEL_117;
          case 17:
            v256 = OUTLINED_FUNCTION_38_18();
            bspush_ca_scan(v256, v257);
            v220 = OUTLINED_FUNCTION_10_36();
            v223 = 17;
            goto LABEL_125;
          case 18:
            goto LABEL_126;
          case 19:
            v220 = OUTLINED_FUNCTION_10_36();
            v223 = 18;
            goto LABEL_125;
          case 20:
            break;
          case 21:
LABEL_62:
            v184 = OUTLINED_FUNCTION_38_18();
            starttest(v184, v185);
            v186 = OUTLINED_FUNCTION_12_36();
            if (lpta_loadp_setscan_l(v186, v187))
            {
              goto LABEL_63;
            }

            goto LABEL_67;
          case 22:
LABEL_68:
            v200 = OUTLINED_FUNCTION_13_35();
            v203 = chstream(v200, v201, v202);
            LODWORD(v90) = v51;
            if (!v203)
            {
              OUTLINED_FUNCTION_42_16();
              v204 = test_string_s();
              LODWORD(v90) = v51;
              if (!v204)
              {
                goto LABEL_70;
              }
            }

            continue;
          case 23:
LABEL_70:
            v205 = OUTLINED_FUNCTION_38_18();
            v207 = chstream(v205, v206, 4u);
            LODWORD(v90) = v51;
            if (v207)
            {
              continue;
            }

            OUTLINED_FUNCTION_38_18();
            bspush_ca_scan_boa();
            v348 = OUTLINED_FUNCTION_9_36();
            v351 = testFldeq(v348, v349, v350, 4);
            goto LABEL_143;
          case 24:
            bspop_boa(v0);
            goto LABEL_118;
          case 25:
LABEL_63:
            v188 = OUTLINED_FUNCTION_38_18();
            starttest(v188, v189);
            v190 = OUTLINED_FUNCTION_12_36();
            if (!lpta_loadp_setscan_l(v190, v191))
            {
              goto LABEL_64;
            }

            goto LABEL_27;
          case 26:
LABEL_67:
            OUTLINED_FUNCTION_45_16(27, v357, v362, v367, v372, v377, v382, v387, v392, v397, v402, v407, v412, v417, v422, v427, v432, v437, v442, v447, v452, v457, v462, v467, v472, v477);
            goto LABEL_90;
          case 27:
            goto LABEL_90;
          case 28:
            v208 = OUTLINED_FUNCTION_10_36();
            v211 = 25;
            goto LABEL_88;
          case 29:
            v218 = OUTLINED_FUNCTION_33_21();
            bspush_ca_scan(v218, v219);
            v208 = OUTLINED_FUNCTION_10_36();
            v211 = 18;
            goto LABEL_88;
          case 30:
          case 32:
            goto LABEL_89;
          case 31:
            v208 = OUTLINED_FUNCTION_10_36();
            v211 = 17;
            goto LABEL_88;
          case 33:
            v236 = OUTLINED_FUNCTION_38_18();
            bspush_ca_scan(v236, v237);
            v238 = OUTLINED_FUNCTION_9_36();
            v241 = testFldeq(v238, v239, v240, 4);
            LODWORD(v90) = v51;
            if (v241)
            {
              continue;
            }

            v242 = OUTLINED_FUNCTION_38_18();
            bspush_ca_scan(v242, v243);
            v208 = OUTLINED_FUNCTION_10_36();
            v211 = 12;
LABEL_88:
            v244 = testFldeq(v208, v209, v210, v211);
            LODWORD(v90) = v51;
            if (v244)
            {
              continue;
            }

LABEL_89:
            v245 = advance_tok(v0);
            LODWORD(v90) = v51;
            if (v245)
            {
              continue;
            }

LABEL_90:
            v246 = OUTLINED_FUNCTION_38_18();
            bspush_ca_scan(v246, v247);
            v248 = OUTLINED_FUNCTION_38_18();
            bspush_ca_scan(v248, v249);
            v250 = OUTLINED_FUNCTION_9_36();
            v253 = testFldeq(v250, v251, v252, 4);
            LODWORD(v90) = v51;
            if (v253)
            {
              continue;
            }

            v254 = OUTLINED_FUNCTION_38_18();
            bspush_ca_scan(v254, v255);
            v147 = OUTLINED_FUNCTION_10_36();
            v150 = 11;
            goto LABEL_96;
          case 34:
            v147 = OUTLINED_FUNCTION_9_36();
            v150 = 10;
            goto LABEL_96;
          case 35:
            v258 = OUTLINED_FUNCTION_38_18();
            bspush_ca_scan(v258, v259);
            v147 = OUTLINED_FUNCTION_10_36();
            v150 = 36;
            goto LABEL_96;
          case 36:
          case 38:
          case 47:
            goto LABEL_97;
          case 37:
            v147 = OUTLINED_FUNCTION_10_36();
            v150 = 14;
            goto LABEL_96;
          case 39:
LABEL_64:
            OUTLINED_FUNCTION_45_16(40, v357, v362, v367, v372, v377, v382, v387, v392, v397, v402, v407, v412, v417, v422, v427, v432, v437, v442, v447, v452, v457, v462, v467, v472, v477);
            goto LABEL_65;
          case 40:
            v153 = OUTLINED_FUNCTION_10_36();
            v156 = 25;
            goto LABEL_82;
          case 41:
            v151 = OUTLINED_FUNCTION_38_18();
            bspush_ca_scan(v151, v152);
            v153 = OUTLINED_FUNCTION_10_36();
            v156 = 18;
            goto LABEL_82;
          case 42:
          case 44:
            goto LABEL_83;
          case 43:
            v153 = OUTLINED_FUNCTION_10_36();
            v156 = 17;
            goto LABEL_82;
          case 45:
LABEL_65:
            v192 = OUTLINED_FUNCTION_38_18();
            bspush_ca_scan(v192, v193);
            v194 = OUTLINED_FUNCTION_9_36();
            v197 = testFldeq(v194, v195, v196, 4);
            LODWORD(v90) = v51;
            if (v197)
            {
              continue;
            }

            v198 = OUTLINED_FUNCTION_38_18();
            bspush_ca_scan(v198, v199);
            v153 = OUTLINED_FUNCTION_10_36();
            v156 = 12;
LABEL_82:
            v230 = testFldeq(v153, v154, v155, v156);
            LODWORD(v90) = v51;
            if (v230)
            {
              continue;
            }

LABEL_83:
            v231 = advance_tok(v0);
            LODWORD(v90) = v51;
            if (v231)
            {
              continue;
            }

            v232 = OUTLINED_FUNCTION_38_18();
            bspush_ca_scan(v232, v233);
            v234 = OUTLINED_FUNCTION_38_18();
            bspush_ca_scan(v234, v235);
            v147 = OUTLINED_FUNCTION_1_40();
LABEL_96:
            v260 = testFldeq(v147, v148, v149, v150);
            LODWORD(v90) = v51;
            if (v260)
            {
              continue;
            }

LABEL_97:
            v261 = advance_tok(v0);
            LODWORD(v90) = v51;
            if (v261)
            {
              continue;
            }

            v262 = OUTLINED_FUNCTION_15_34();
            v264 = lpta_loadp_setscan_r(v262, v263);
            LODWORD(v90) = v51;
            if (v264)
            {
              continue;
            }

            v226 = OUTLINED_FUNCTION_2_39();
LABEL_117:
            v299 = testFldeq(v226, v227, v228, v229);
            LODWORD(v90) = v51;
            if (v299)
            {
              continue;
            }

LABEL_118:
            v300 = advance_tok(v0);
            LODWORD(v90) = v51;
            if (!v300)
            {
              goto LABEL_3;
            }

            continue;
          case 46:
            v224 = OUTLINED_FUNCTION_38_18();
            bspush_ca_scan(v224, v225);
            v147 = OUTLINED_FUNCTION_9_36();
            goto LABEL_96;
          case 48:
            v145 = OUTLINED_FUNCTION_38_18();
            bspush_ca_scan(v145, v146);
            v147 = OUTLINED_FUNCTION_10_36();
            v150 = 6;
            goto LABEL_96;
          case 49:
            v147 = OUTLINED_FUNCTION_9_36();
            v150 = 5;
            goto LABEL_96;
          case 50:
            goto LABEL_29;
          case 51:
            goto LABEL_128;
          case 52:
            v265 = OUTLINED_FUNCTION_4_38();
            v269 = testFldeq(v265, v266, v267, v268);
            LODWORD(v90) = v51;
            if (!v269)
            {
              v270 = OUTLINED_FUNCTION_11_36();
              v273 = testFldeq(v270, v271, v272, 5);
              LODWORD(v90) = v51;
              if (!v273)
              {
                v274 = advance_tok(v0);
                LODWORD(v108) = v51;
                LODWORD(v90) = v51;
                if (!v274)
                {
                  goto LABEL_128;
                }
              }
            }

            continue;
          case 53:
            v163 = OUTLINED_FUNCTION_11_36();
            v166 = testFldeq(v163, v164, v165, 2);
            LODWORD(v90) = v51;
            if (!v166)
            {
              v167 = advance_tok(v0);
              LODWORD(v119) = v51;
              LODWORD(v90) = v51;
              if (!v167)
              {
                goto LABEL_131;
              }
            }

            continue;
          case 54:
            goto LABEL_129;
          case 55:
            v283 = OUTLINED_FUNCTION_10_36();
            v286 = testFldeq(v283, v284, v285, 12);
            LODWORD(v90) = v51;
            if (!v286)
            {
              v287 = OUTLINED_FUNCTION_9_36();
              v290 = testFldeq(v287, v288, v289, 4);
              LODWORD(v90) = v51;
              if (!v290)
              {
                v291 = advance_tok(v0);
                LODWORD(v118) = v51;
                LODWORD(v90) = v51;
                if (!v291)
                {
                  goto LABEL_129;
                }
              }
            }

            continue;
          case 56:
            goto LABEL_131;
          case 57:
            goto LABEL_133;
          case 58:
            goto LABEL_149;
          case 59:
            goto LABEL_134;
          case 60:
            v135 = OUTLINED_FUNCTION_4_38();
            v139 = testFldeq(v135, v136, v137, v138);
            LODWORD(v90) = v51;
            if (!v139)
            {
              v140 = OUTLINED_FUNCTION_11_36();
              v143 = testFldeq(v140, v141, v142, 5);
              LODWORD(v90) = v51;
              if (!v143)
              {
                v144 = advance_tok(v0);
                LODWORD(v114) = v51;
                LODWORD(v90) = v51;
                if (!v144)
                {
                  goto LABEL_134;
                }
              }
            }

            continue;
          case 61:
            goto LABEL_135;
          case 62:
            v161 = OUTLINED_FUNCTION_38_18();
            bspush_ca_scan(v161, v162);
            v157 = OUTLINED_FUNCTION_10_36();
            v160 = 18;
            goto LABEL_107;
          case 63:
            goto LABEL_108;
          case 64:
            v157 = OUTLINED_FUNCTION_10_36();
            v160 = 17;
            goto LABEL_107;
          case 65:
            v275 = OUTLINED_FUNCTION_9_36();
            v278 = testFldeq(v275, v276, v277, 4);
            LODWORD(v90) = v51;
            if (v278)
            {
              continue;
            }

            v279 = OUTLINED_FUNCTION_38_18();
            bspush_ca_scan(v279, v280);
            v157 = OUTLINED_FUNCTION_10_36();
            v160 = 12;
LABEL_107:
            v281 = testFldeq(v157, v158, v159, v160);
            LODWORD(v90) = v51;
            if (v281)
            {
              continue;
            }

LABEL_108:
            v282 = advance_tok(v0);
            v129 = v51;
            LODWORD(v90) = v51;
            if (!v282)
            {
              goto LABEL_135;
            }

            continue;
          case 66:
            goto LABEL_136;
          case 67:
            bspop_boa(v0);
LABEL_149:
            v40 = v51;
            goto LABEL_30;
          case 68:
            v292 = OUTLINED_FUNCTION_4_38();
            v296 = testFldeq(v292, v293, v294, v295);
            LODWORD(v90) = v51;
            if (v296)
            {
              continue;
            }

            v64 = OUTLINED_FUNCTION_11_36();
            v67 = 5;
            goto LABEL_141;
          case 69:
            v346 = OUTLINED_FUNCTION_38_18();
            bspush_ca_scan(v346, v347);
            v64 = OUTLINED_FUNCTION_10_36();
            v67 = 18;
            goto LABEL_141;
          case 70:
          case 72:
            goto LABEL_142;
          case 71:
            v64 = OUTLINED_FUNCTION_10_36();
            v67 = 17;
            goto LABEL_141;
          case 73:
            goto LABEL_36;
          case 74:
            goto LABEL_34;
          case 75:
            goto LABEL_37;
          default:
            goto LABEL_3;
        }

        while (1)
        {
          v310 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v310, v311);
          v312 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v312, v313);
          v220 = OUTLINED_FUNCTION_10_36();
          v223 = 12;
LABEL_125:
          v314 = testFldeq(v220, v221, v222, v223);
          LODWORD(v90) = v51;
          if (v314)
          {
            break;
          }

LABEL_126:
          v315 = advance_tok(v0);
          LODWORD(v90) = v51;
          if (v315)
          {
            goto LABEL_38;
          }
        }
      }
    }

LABEL_137:
    LODWORD(v90) = v51;
    goto LABEL_38;
  }

LABEL_30:
  v115 = OUTLINED_FUNCTION_38_18();
  starttest(v115, v116);
  v102 = lpta_loadp_setscan_l(v0, &v496);
  if (v102)
  {
    v124 = 4;
  }

  else
  {
    v120 = OUTLINED_FUNCTION_10_36();
    if (testFldeq(v120, v121, v122, 25))
    {
LABEL_32:
      LODWORD(v90) = v40;
      goto LABEL_38;
    }

    v123 = advance_tok(v0);
    LODWORD(v90) = v40;
    if (v123)
    {
      goto LABEL_38;
    }

LABEL_34:
    OUTLINED_FUNCTION_61_14(75, v357, v362, v367, v372, v377, v382, v387, v392, v397, v402, v407, v412, v417, v422, v427, v432, v437, v442, v447, v452, v457, v462, v467, v472, v477, v482, v487, v491, v495, v496);
    v124 = 3;
  }

LABEL_36:
  HIWORD(v487) = v124;
LABEL_37:
  OUTLINED_FUNCTION_50_16(v102, v90, v117, v77, v108, v118, v119, v114, v357, v362, v367, v372, v377, v382, v387, v392, v397, v402, v407, v412, v417, v422, v427, v432, v437, v442, v447, v452, v457, v462, v467, v472, v477, v482, v487, SWORD2(v487), SHIWORD(v487), v491, v495, v496, v497);
LABEL_3:
  vretproc(v0);
  v26 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_103_7();
}

void conjoined_words_same_category()
{
  OUTLINED_FUNCTION_91_10();
  OUTLINED_FUNCTION_24_27();
  v97 = *MEMORY[0x277D85DE8];
  v91 = 0;
  v92 = 0;
  v89 = 0;
  v90 = 0;
  v88 = 0;
  v86 = 0u;
  v87 = 0u;
  v85 = 0;
  v83 = 0u;
  v84 = 0u;
  v82[0] = 0;
  v82[1] = 0;
  OUTLINED_FUNCTION_53_15();
  bzero(v81, v3);
  OUTLINED_FUNCTION_52_15();
  bzero(v96, v4);
  if (setjmp(v96))
  {
    goto LABEL_4;
  }

  if (ventproc(v0, v81, v95, v94, v93, v96))
  {
    goto LABEL_4;
  }

  v5 = OUTLINED_FUNCTION_46_16();
  OUTLINED_FUNCTION_82_11(v5, v6);
  v7 = OUTLINED_FUNCTION_59_14();
  get_parm(v7, v8, v9, -6);
  v87 = 0uLL;
  LOWORD(v88) = 0;
  LODWORD(v86) = -65532;
  v84 = 0uLL;
  LOWORD(v85) = 0;
  LODWORD(v83) = -65532;
  v10 = OUTLINED_FUNCTION_94_9();
  push_ptr_init(v10, v11);
  v12 = OUTLINED_FUNCTION_58_14();
  fence_38(v12, v13, v14);
  v15 = OUTLINED_FUNCTION_95_9();
  fence_38(v15, v16, v17);
  v18 = OUTLINED_FUNCTION_88_10();
  starttest(v18, v19);
  v20 = OUTLINED_FUNCTION_22_27();
  if (lpta_loadp_setscan_l(v20, v21))
  {
LABEL_4:
    vretproc(v0);
  }

  else
  {
    v23 = 0;
    OUTLINED_FUNCTION_65_13();
    v80 = v24;
    while (2)
    {
      savescptr(v0, v24, v82);
      v25 = OUTLINED_FUNCTION_46_16();
      if (!savetok(v25, v26) && !advance_tok(v0))
      {
        v27 = OUTLINED_FUNCTION_83_11();
        if (!lpta_loadp_setscan_r(v27, v28) && !advance_tok(v0))
        {
          OUTLINED_FUNCTION_106_5();
          bspush_ca_scan_boa();
          bspush_ca_scan(v0, 4);
          if (!testFldeq(v0, 4u, 2, 21))
          {
LABEL_13:
            v23 = 1;
          }
        }
      }

      v29 = v23;
LABEL_15:
      v30 = v0[13];
      if (v30)
      {
        v31 = OUTLINED_FUNCTION_56_14(v30);
        v23 = v32;
      }

      else
      {
        v31 = vback(v0, v29);
        v23 = 0;
      }

      switch(v31)
      {
        case 2:
          v24 = v80;
          continue;
        case 3:
          bspop_boa(v0);
          v33 = advance_tok(v0);
          v29 = v23;
          if (v33)
          {
            goto LABEL_15;
          }

          v34 = savetok(v0, &v83);
          v29 = v23;
          if (v34)
          {
            goto LABEL_15;
          }

          goto LABEL_21;
        case 4:
          v38 = testFldeq(v0, 4u, 3, 10);
          v29 = v23;
          if (!v38)
          {
            goto LABEL_13;
          }

          goto LABEL_15;
        case 5:
          goto LABEL_13;
        case 6:
LABEL_21:
          v35 = OUTLINED_FUNCTION_110_5();
          starttest(v35, v36);
          v37 = 1;
          goto LABEL_32;
        case 7:
          WORD1(v86) = 1;
          v39 = OUTLINED_FUNCTION_46_16();
          npush_v(v39, v40, v41, v42, v43, v44, v45, v46);
          ncompare_s(v0, 1u);
          if (testeq(v0))
          {
            goto LABEL_25;
          }

          v57 = OUTLINED_FUNCTION_107_5();
          starttest_l(v57, v58);
          v37 = 3;
LABEL_32:
          bspush_ca_boa();
          WORD1(v86) = v37;
          v59 = OUTLINED_FUNCTION_46_16();
          npush_v(v59, v60, v61, v62, v63, v64, v65, v66);
          WORD1(v83) = v37;
          npush_v(v0, &v83, v67, v68, v69, v70, v71, v72);
          if (if_testeq(v0, v73, v74, v75, v76, v77, v78, v79))
          {
            v29 = v23;
          }

          else
          {
            v29 = 1;
          }

          goto LABEL_15;
        case 8:
        case 10:
          bspop_boa(v0);
          goto LABEL_4;
        case 9:
LABEL_25:
          starttest(v0, 11);
          if (!lpta_loadp_setscan_l(v0, &v91))
          {
            goto LABEL_26;
          }

          goto LABEL_38;
        case 11:
          goto LABEL_38;
        case 12:
LABEL_26:
          v47 = OUTLINED_FUNCTION_67_13();
          savescptr(v47, v48, v82);
          v49 = advance_tok(v0);
          v29 = v23;
          if (!v49)
          {
            goto LABEL_27;
          }

          goto LABEL_15;
        case 13:
LABEL_27:
          v50 = OUTLINED_FUNCTION_96_8();
          savescptr(v50, v51, &v91);
          v52 = OUTLINED_FUNCTION_83_11();
          v54 = lpta_loadp_setscan_r(v52, v53);
          v29 = v23;
          if (!v54)
          {
            v55 = advance_tok(v0);
            v29 = v23;
            if (!v55)
            {
              v56 = advance_tok(v0);
              v29 = v23;
              if (!v56)
              {
                goto LABEL_37;
              }
            }
          }

          goto LABEL_15;
        case 14:
LABEL_37:
          savescptr(v0, 14, &v89);
LABEL_38:
          *(v2 + 8) = v92;
          *(v1 + 8) = v90;
          vretproc(v0);
          break;
        default:
          goto LABEL_4;
      }

      break;
    }
  }

  v22 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_90_10();
}

uint64_t no_pause_btw_coordinated_NPs()
{
  OUTLINED_FUNCTION_24_27();
  v345 = *MEMORY[0x277D85DE8];
  v339 = 0;
  v340 = 0;
  v337 = 0;
  v338 = 0;
  v335 = 0;
  v336 = 0;
  OUTLINED_FUNCTION_73_13();
  OUTLINED_FUNCTION_23_27(v3, v4, v5, v6, v7, v8, v9, v10, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330);
  OUTLINED_FUNCTION_52_15();
  bzero(v344, v11);
  if (setjmp(v344) || ventproc(v0, &v304, v343, v342, v341, v344))
  {
    goto LABEL_3;
  }

  v15 = OUTLINED_FUNCTION_29_24();
  get_parm(v15, v16, v17, -6);
  v18 = OUTLINED_FUNCTION_59_14();
  get_parm(v18, v19, v20, -6);
  v21 = OUTLINED_FUNCTION_60_14();
  push_ptr_init(v21, v22);
  v23 = OUTLINED_FUNCTION_41_16();
  push_ptr_init(v23, v24);
  v25 = OUTLINED_FUNCTION_49_16();
  push_ptr_init(v25, v26);
  v27 = OUTLINED_FUNCTION_87_10();
  push_ptr_init(v27, v28);
  v29 = OUTLINED_FUNCTION_70_13();
  push_ptr_init(v29, v30);
  v31 = 0;
  v32 = OUTLINED_FUNCTION_58_14();
  fence_38(v32, v33, v34);
  v35 = OUTLINED_FUNCTION_84_11();
  fence_38(v35, v36, v37);
  v38 = OUTLINED_FUNCTION_105_6();
  starttest(v38, v39);
  v40 = OUTLINED_FUNCTION_57_14();
  if (!lpta_loadp_setscan_l(v40, v41))
  {
LABEL_12:
    savescptr(v0, 2, &v335);
    v57 = OUTLINED_FUNCTION_9_36();
    if (!testFldeq(v57, v58, v59, 2) && !advance_tok(v0))
    {
      v60 = OUTLINED_FUNCTION_18_33();
      if (!lpta_loadp_setscan_r(v60, v61) && !advance_tok(v0))
      {
        v62 = OUTLINED_FUNCTION_1_40();
        if (!testFldeq(v62, v63, v64, v65))
        {
          v66 = advance_tok(v0);
          goto LABEL_151;
        }
      }
    }

    goto LABEL_18;
  }

  while (2)
  {
    v42 = 4;
    v43 = OUTLINED_FUNCTION_88_10();
    starttest(v43, v44);
    lpta_loadp_setscan_l(v0, &v339);
    OUTLINED_FUNCTION_81_12();
    if (!v45)
    {
LABEL_7:
      OUTLINED_FUNCTION_71_13(5, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334, v335);
LABEL_8:
      v46 = OUTLINED_FUNCTION_13_35();
      v49 = chstream(v46, v47, v48);
      v50 = v42;
      if (v49)
      {
        goto LABEL_126;
      }

LABEL_9:
      v51 = OUTLINED_FUNCTION_13_35();
      if (!test_synch(v51, v52, v53, v54))
      {
        v55 = OUTLINED_FUNCTION_38_18();
        bspush_ca_scan(v55, v56);
LABEL_132:
        OUTLINED_FUNCTION_17_34();
        test_string_s();
        OUTLINED_FUNCTION_81_12();
        if (v261)
        {
          goto LABEL_126;
        }

LABEL_133:
        v262 = OUTLINED_FUNCTION_30_23();
        if (!chstream(v262, v263, 4u))
        {
          v264 = OUTLINED_FUNCTION_9_36();
          if (!testFldeq(v264, v265, v266, 6) && !advance_tok(v0))
          {
            v267 = OUTLINED_FUNCTION_18_33();
            if (!lpta_loadp_setscan_r(v267, v268) && !advance_tok(v0))
            {
              v269 = OUTLINED_FUNCTION_9_36();
              if (!testFldeq(v269, v270, v271, 6))
              {
                v272 = advance_tok(v0);
                v50 = v42;
                if (!v272)
                {
                  goto LABEL_65;
                }

LABEL_126:
                v42 = v50;
LABEL_127:
                v258 = v0[13];
                if (v258)
                {
                  v259 = OUTLINED_FUNCTION_56_14(v258);
                  v42 = v260;
                }

                else
                {
                  v259 = vback(v0, v42);
                  v42 = 0;
                }

                switch(v259)
                {
                  case 1:
                    continue;
                  case 2:
                    v31 = v42;
                    goto LABEL_12;
                  case 3:
                    goto LABEL_65;
                  case 4:
                    goto LABEL_19;
                  case 5:
                    goto LABEL_7;
                  case 6:
                    goto LABEL_8;
                  case 7:
                    goto LABEL_9;
                  case 8:
                    OUTLINED_FUNCTION_42_16();
                    if (!test_string_s())
                    {
                      goto LABEL_132;
                    }

                    goto LABEL_127;
                  case 9:
                    goto LABEL_132;
                  case 10:
                    goto LABEL_133;
                  case 11:
                    goto LABEL_20;
                  case 12:
                    goto LABEL_32;
                  case 13:
                    v119 = v42;
                    goto LABEL_38;
                  case 14:
                    v136 = v42;
                    goto LABEL_48;
                  case 15:
                    goto LABEL_50;
                  case 16:
                    v76 = v42;
                    goto LABEL_21;
                  case 17:
                    goto LABEL_51;
                  case 18:
                    v153 = v42;
                    goto LABEL_57;
                  case 19:
                    goto LABEL_62;
                  case 20:
                    goto LABEL_22;
                  case 21:
                    v31 = v42;
                    goto LABEL_75;
                  case 22:
                    goto LABEL_79;
                  case 23:
                    goto LABEL_85;
                  case 24:
                    goto LABEL_23;
                  case 25:
                    goto LABEL_67;
                  case 26:
                    v178 = v42;
                    goto LABEL_87;
                  case 27:
                    goto LABEL_95;
                  case 28:
                    goto LABEL_24;
                  case 29:
                    goto LABEL_96;
                  case 30:
                    v219 = v42;
                    goto LABEL_102;
                  case 31:
                    goto LABEL_108;
                  case 32:
                    v95 = v42;
                    goto LABEL_120;
                  case 33:
                    goto LABEL_25;
                  case 34:
                    v108 = v42;
                    goto LABEL_110;
                  case 35:
                    goto LABEL_118;
                  case 37:
                    goto LABEL_121;
                  case 38:
                    goto LABEL_122;
                  case 39:
                    v256 = v42;
                    goto LABEL_142;
                  case 40:
                    v280 = v42;
                    goto LABEL_154;
                  case 41:
                    v282 = v42;
                    goto LABEL_146;
                  case 42:
                    v287 = v42;
                    goto LABEL_150;
                  default:
                    goto LABEL_3;
                }
              }
            }
          }
        }
      }

LABEL_125:
      v50 = v42;
      goto LABEL_126;
    }

    break;
  }

LABEL_19:
  v67 = OUTLINED_FUNCTION_38_18();
  starttest(v67, v68);
  v69 = OUTLINED_FUNCTION_32_21();
  lpta_loadp_setscan_l(v69, v70);
  OUTLINED_FUNCTION_81_12();
  if (!v71)
  {
LABEL_32:
    OUTLINED_FUNCTION_71_13(12, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334, v335);
    v110 = OUTLINED_FUNCTION_1_40();
    if (testFldeq(v110, v111, v112, v113))
    {
      goto LABEL_125;
    }

    if (advance_tok(v0))
    {
      goto LABEL_125;
    }

    v114 = OUTLINED_FUNCTION_38_18();
    bspush_ca_scan(v114, v115);
    v116 = OUTLINED_FUNCTION_10_36();
    if (testFldeq(v116, v117, v118, 32))
    {
      goto LABEL_125;
    }

    advance_tok(v0);
    OUTLINED_FUNCTION_72_13();
    if (v120)
    {
      goto LABEL_126;
    }

LABEL_38:
    v42 = v119;
    v121 = OUTLINED_FUNCTION_8_37();
    if (testFldeq(v121, v122, v123, v124))
    {
      goto LABEL_125;
    }

    if (advance_tok(v0))
    {
      goto LABEL_125;
    }

    v125 = OUTLINED_FUNCTION_18_33();
    if (lpta_loadp_setscan_r(v125, v126))
    {
      goto LABEL_125;
    }

    if (advance_tok(v0))
    {
      goto LABEL_125;
    }

    v127 = OUTLINED_FUNCTION_8_37();
    if (testFldeq(v127, v128, v129, v130))
    {
      goto LABEL_125;
    }

    if (advance_tok(v0))
    {
      goto LABEL_125;
    }

    v131 = OUTLINED_FUNCTION_34_19();
    bspush_ca_scan(v131, v132);
    v133 = OUTLINED_FUNCTION_10_36();
    if (testFldeq(v133, v134, v135, 32))
    {
      goto LABEL_125;
    }

    advance_tok(v0);
    OUTLINED_FUNCTION_72_13();
    if (v137)
    {
      goto LABEL_126;
    }

LABEL_48:
    v42 = v136;
    v138 = OUTLINED_FUNCTION_1_40();
    if (testFldeq(v138, v139, v140, v141))
    {
      goto LABEL_125;
    }

    v142 = advance_tok(v0);
    v50 = v42;
    if (v142)
    {
      goto LABEL_126;
    }

LABEL_50:
    v143 = 15;
    v144 = &v337;
LABEL_64:
    savescptr(v0, v143, v144);
LABEL_65:
    *(v2 + 8) = v340;
    *(v1 + 8) = v338;
    v12 = 0;
    goto LABEL_4;
  }

LABEL_20:
  v72 = OUTLINED_FUNCTION_38_18();
  starttest(v72, v73);
  v74 = OUTLINED_FUNCTION_39_17();
  lpta_loadp_setscan_r(v74, v75);
  OUTLINED_FUNCTION_81_12();
  if (!v77)
  {
LABEL_51:
    OUTLINED_FUNCTION_71_13(17, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334, v335);
    v145 = OUTLINED_FUNCTION_1_40();
    if (testFldeq(v145, v146, v147, v148))
    {
      goto LABEL_125;
    }

    if (advance_tok(v0))
    {
      goto LABEL_125;
    }

    v149 = OUTLINED_FUNCTION_1_40();
    if (testFldeq(v149, v150, v151, v152))
    {
      goto LABEL_125;
    }

    advance_tok(v0);
    OUTLINED_FUNCTION_72_13();
    if (v154)
    {
      goto LABEL_126;
    }

LABEL_57:
    v42 = v153;
    OUTLINED_FUNCTION_80_12(18, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334, v335, v336, v337);
    v155 = OUTLINED_FUNCTION_18_33();
    if (lpta_loadp_setscan_l(v155, v156))
    {
      goto LABEL_125;
    }

    v157 = OUTLINED_FUNCTION_1_40();
    if (testFldeq(v157, v158, v159, v160))
    {
      goto LABEL_125;
    }

    if (advance_tok(v0))
    {
      goto LABEL_125;
    }

    v161 = OUTLINED_FUNCTION_1_40();
    if (testFldeq(v161, v162, v163, v164))
    {
      goto LABEL_125;
    }

    v165 = advance_tok(v0);
    v50 = v42;
    if (v165)
    {
      goto LABEL_126;
    }

LABEL_62:
    v166 = 19;
    goto LABEL_63;
  }

LABEL_21:
  v42 = v76;
  v78 = OUTLINED_FUNCTION_38_18();
  starttest(v78, v79);
  v80 = OUTLINED_FUNCTION_39_17();
  v31 = v42;
  if (!lpta_loadp_setscan_r(v80, v81))
  {
LABEL_75:
    v42 = 21;
    savescptr(v0, 21, &v335);
    v180 = OUTLINED_FUNCTION_10_36();
    if (!testFldeq(v180, v181, v182, 21) && !advance_tok(v0))
    {
      v183 = OUTLINED_FUNCTION_1_40();
      if (!testFldeq(v183, v184, v185, v186))
      {
        advance_tok(v0);
        OUTLINED_FUNCTION_81_12();
        if (v187)
        {
          goto LABEL_126;
        }

LABEL_79:
        OUTLINED_FUNCTION_80_12(22, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334, v335, v336, v337);
        v188 = OUTLINED_FUNCTION_18_33();
        if (lpta_loadp_setscan_l(v188, v189))
        {
          goto LABEL_125;
        }

        if (advance_tok(v0))
        {
          goto LABEL_125;
        }

        v190 = OUTLINED_FUNCTION_1_40();
        if (testFldeq(v190, v191, v192, v193))
        {
          goto LABEL_125;
        }

        if (advance_tok(v0))
        {
          goto LABEL_125;
        }

        v194 = OUTLINED_FUNCTION_10_36();
        if (testFldeq(v194, v195, v196, 21))
        {
          goto LABEL_125;
        }

        v197 = advance_tok(v0);
        v50 = v42;
        if (v197)
        {
          goto LABEL_126;
        }

LABEL_85:
        v166 = 23;
        goto LABEL_63;
      }
    }

LABEL_18:
    v50 = v31;
    goto LABEL_126;
  }

LABEL_22:
  v82 = OUTLINED_FUNCTION_38_18();
  starttest(v82, v83);
  v84 = OUTLINED_FUNCTION_39_17();
  if (!lpta_loadp_setscan_r(v84, v85))
  {
LABEL_67:
    OUTLINED_FUNCTION_71_13(25, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334, v335);
    v167 = OUTLINED_FUNCTION_10_36();
    if (testFldeq(v167, v168, v169, 21))
    {
      goto LABEL_125;
    }

    if (advance_tok(v0))
    {
      goto LABEL_125;
    }

    v170 = OUTLINED_FUNCTION_8_37();
    if (testFldeq(v170, v171, v172, v173))
    {
      goto LABEL_125;
    }

    if (advance_tok(v0))
    {
      goto LABEL_125;
    }

    v174 = OUTLINED_FUNCTION_1_40();
    if (testFldeq(v174, v175, v176, v177))
    {
      goto LABEL_125;
    }

    advance_tok(v0);
    OUTLINED_FUNCTION_72_13();
    if (v179)
    {
      goto LABEL_126;
    }

LABEL_87:
    v42 = v178;
    OUTLINED_FUNCTION_80_12(26, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334, v335, v336, v337);
    v198 = OUTLINED_FUNCTION_18_33();
    if (lpta_loadp_setscan_l(v198, v199))
    {
      goto LABEL_125;
    }

    if (advance_tok(v0))
    {
      goto LABEL_125;
    }

    v200 = OUTLINED_FUNCTION_1_40();
    if (testFldeq(v200, v201, v202, v203))
    {
      goto LABEL_125;
    }

    if (advance_tok(v0))
    {
      goto LABEL_125;
    }

    v204 = OUTLINED_FUNCTION_8_37();
    if (testFldeq(v204, v205, v206, v207))
    {
      goto LABEL_125;
    }

    if (advance_tok(v0))
    {
      goto LABEL_125;
    }

    v208 = OUTLINED_FUNCTION_10_36();
    if (testFldeq(v208, v209, v210, 21))
    {
      goto LABEL_125;
    }

    v211 = advance_tok(v0);
    v50 = v42;
    if (v211)
    {
      goto LABEL_126;
    }

LABEL_95:
    v166 = 27;
    goto LABEL_63;
  }

LABEL_23:
  v86 = OUTLINED_FUNCTION_38_18();
  starttest(v86, v87);
  v88 = OUTLINED_FUNCTION_39_17();
  lpta_loadp_setscan_r(v88, v89);
  OUTLINED_FUNCTION_81_12();
  if (!v90)
  {
LABEL_96:
    OUTLINED_FUNCTION_71_13(29, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334, v335);
    v212 = OUTLINED_FUNCTION_10_36();
    if (testFldeq(v212, v213, v214, 23))
    {
      goto LABEL_125;
    }

    if (advance_tok(v0))
    {
      goto LABEL_125;
    }

    v215 = OUTLINED_FUNCTION_1_40();
    if (testFldeq(v215, v216, v217, v218))
    {
      goto LABEL_125;
    }

    advance_tok(v0);
    OUTLINED_FUNCTION_72_13();
    if (v220)
    {
      goto LABEL_126;
    }

LABEL_102:
    v42 = v219;
    OUTLINED_FUNCTION_80_12(30, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334, v335, v336, v337);
    v221 = OUTLINED_FUNCTION_18_33();
    if (lpta_loadp_setscan_l(v221, v222))
    {
      goto LABEL_125;
    }

    if (advance_tok(v0))
    {
      goto LABEL_125;
    }

    v223 = OUTLINED_FUNCTION_1_40();
    if (testFldeq(v223, v224, v225, v226))
    {
      goto LABEL_125;
    }

    if (advance_tok(v0))
    {
      goto LABEL_125;
    }

    v227 = OUTLINED_FUNCTION_10_36();
    if (testFldeq(v227, v228, v229, 23))
    {
      goto LABEL_125;
    }

    v230 = advance_tok(v0);
    v50 = v42;
    if (v230)
    {
      goto LABEL_126;
    }

LABEL_108:
    v166 = 31;
LABEL_63:
    v143 = v166;
    v144 = &v339;
    goto LABEL_64;
  }

LABEL_24:
  v91 = OUTLINED_FUNCTION_33_21();
  starttest(v91, v92);
  v93 = OUTLINED_FUNCTION_39_17();
  lpta_loadp_setscan_r(v93, v94);
  OUTLINED_FUNCTION_81_12();
  if (!v96)
  {
LABEL_25:
    OUTLINED_FUNCTION_71_13(33, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334, v335);
    v97 = OUTLINED_FUNCTION_10_36();
    if (testFldeq(v97, v98, v99, 23))
    {
      goto LABEL_125;
    }

    if (advance_tok(v0))
    {
      goto LABEL_125;
    }

    v100 = OUTLINED_FUNCTION_8_37();
    if (testFldeq(v100, v101, v102, v103))
    {
      goto LABEL_125;
    }

    if (advance_tok(v0))
    {
      goto LABEL_125;
    }

    v104 = OUTLINED_FUNCTION_1_40();
    if (testFldeq(v104, v105, v106, v107))
    {
      goto LABEL_125;
    }

    advance_tok(v0);
    OUTLINED_FUNCTION_72_13();
    if (v109)
    {
      goto LABEL_126;
    }

LABEL_110:
    v42 = v108;
    OUTLINED_FUNCTION_80_12(34, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334, v335, v336, v337);
    v231 = OUTLINED_FUNCTION_18_33();
    if (lpta_loadp_setscan_l(v231, v232))
    {
      goto LABEL_125;
    }

    if (advance_tok(v0))
    {
      goto LABEL_125;
    }

    v233 = OUTLINED_FUNCTION_1_40();
    if (testFldeq(v233, v234, v235, v236))
    {
      goto LABEL_125;
    }

    if (advance_tok(v0))
    {
      goto LABEL_125;
    }

    v237 = OUTLINED_FUNCTION_8_37();
    if (testFldeq(v237, v238, v239, v240))
    {
      goto LABEL_125;
    }

    if (advance_tok(v0))
    {
      goto LABEL_125;
    }

    v241 = OUTLINED_FUNCTION_10_36();
    if (testFldeq(v241, v242, v243, 23))
    {
      goto LABEL_125;
    }

    v244 = advance_tok(v0);
    v50 = v42;
    if (v244)
    {
      goto LABEL_126;
    }

LABEL_118:
    v166 = 35;
    goto LABEL_63;
  }

LABEL_120:
  v42 = v95;
  v245 = OUTLINED_FUNCTION_38_18();
  starttest(v245, v246);
  v247 = OUTLINED_FUNCTION_39_17();
  if (!lpta_loadp_setscan_r(v247, v248))
  {
LABEL_121:
    OUTLINED_FUNCTION_71_13(37, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334, v335);
LABEL_122:
    v249 = OUTLINED_FUNCTION_85_11();
    savescptr(v249, v250, v251);
    v252 = OUTLINED_FUNCTION_3_39();
    if (testFldeq(v252, v253, v254, v255))
    {
      goto LABEL_125;
    }

    advance_tok(v0);
    OUTLINED_FUNCTION_72_13();
    if (v257)
    {
      goto LABEL_126;
    }

LABEL_142:
    v42 = v256;
    v273 = OUTLINED_FUNCTION_101_7();
    savescptr(v273, v274, v275);
    v276 = OUTLINED_FUNCTION_1_40();
    if (testFldeq(v276, v277, v278, v279))
    {
      goto LABEL_125;
    }

    advance_tok(v0);
    OUTLINED_FUNCTION_72_13();
    if (v281)
    {
      goto LABEL_126;
    }

LABEL_154:
    v42 = v280;
    OUTLINED_FUNCTION_80_12(40, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334, v335, v336, v337);
    v297 = OUTLINED_FUNCTION_18_33();
    if (lpta_loadp_setscan_l(v297, v298))
    {
      goto LABEL_125;
    }

    if (advance_tok(v0))
    {
      goto LABEL_125;
    }

    v299 = OUTLINED_FUNCTION_1_40();
    if (testFldeq(v299, v300, v301, v302))
    {
      goto LABEL_125;
    }

    advance_tok(v0);
    OUTLINED_FUNCTION_72_13();
    if (v303)
    {
      goto LABEL_126;
    }

LABEL_146:
    v42 = v282;
    OUTLINED_FUNCTION_79_12(41, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331);
    v283 = OUTLINED_FUNCTION_3_39();
    if (testFldeq(v283, v284, v285, v286))
    {
      goto LABEL_125;
    }

    advance_tok(v0);
    OUTLINED_FUNCTION_72_13();
    if (v288)
    {
      goto LABEL_126;
    }

LABEL_150:
    v31 = v287;
    savescptr(v0, 42, &v333);
    v289 = OUTLINED_FUNCTION_57_14();
    v66 = same_inp(v289, v290, v291, v292, v293, v294, v295, v296);
LABEL_151:
    v50 = v31;
    if (!v66)
    {
      goto LABEL_65;
    }

    goto LABEL_126;
  }

LABEL_3:
  v12 = 94;
LABEL_4:
  vretproc(v0);
  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t adjust_prev_phr_ending()
{
  OUTLINED_FUNCTION_111_5();
  v57 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_23_27(v2, v3, v4, v5, v6, v7, v8, v9, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55);
  OUTLINED_FUNCTION_52_15();
  bzero(v56, v10);
  if (setjmp(v56) || (OUTLINED_FUNCTION_78_12(), ventproc(v0, v11, v12, v13, v14, v56)))
  {
    v1 = 94;
  }

  else
  {
    OUTLINED_FUNCTION_48_16();
    v17 = OUTLINED_FUNCTION_70_13();
    push_ptr_init(v17, v18);
    fence_38(v0, 0, &null_str_15);
    v19 = OUTLINED_FUNCTION_51_15();
    if (!lpta_loadp_setscan_l(v19, v20) && !advance_tok(v0))
    {
      OUTLINED_FUNCTION_65_13();
      v21 = OUTLINED_FUNCTION_101_7();
      savescptr(v21, v22, v23);
    }

    v24 = OUTLINED_FUNCTION_70_13();
    lpta_loadpn(v24, v25);
    OUTLINED_FUNCTION_112_5();
    if (compare_ptas(v0) || testneq(v0) || *(v0 + 3738) != *(v0 + 3706))
    {
      v1 = 0;
    }

    else
    {
      v26 = OUTLINED_FUNCTION_85_11();
      lpta_rpta_loadp(v26, v27, v28);
      OUTLINED_FUNCTION_76_13();
      if (!mark_s())
      {
        OUTLINED_FUNCTION_76_13();
        if (!mark_s())
        {
          OUTLINED_FUNCTION_76_13();
          if (!mark_s())
          {
            OUTLINED_FUNCTION_76_13();
            mark_s();
          }
        }
      }
    }
  }

  vretproc(v0);
  v15 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t fren_post_comma_phrase()
{
  OUTLINED_FUNCTION_24_27();
  v53 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_23_27(v1, v2, v3, v4, v5, v6, v7, v8, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51);
  OUTLINED_FUNCTION_52_15();
  bzero(v52, v9);
  if (!setjmp(v52))
  {
    OUTLINED_FUNCTION_78_12();
    if (!ventproc(v0, v10, v11, v12, v13, v52))
    {
      v17 = OUTLINED_FUNCTION_29_24();
      get_parm(v17, v18, v19, -6);
      OUTLINED_FUNCTION_48_16();
      v14 = 0;
      v20 = OUTLINED_FUNCTION_58_14();
      fence_38(v20, v21, v22);
      OUTLINED_FUNCTION_29_24();
      if (!tag_phrase())
      {
        goto LABEL_4;
      }

      OUTLINED_FUNCTION_101_7();
      vocative_phrase();
      if (!v23 || (said_phrase(), !v24))
      {
        v14 = 0;
        goto LABEL_4;
      }
    }
  }

  v14 = 94;
LABEL_4:
  vretproc(v0);
  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t tag_phrase()
{
  OUTLINED_FUNCTION_24_27();
  v97 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_23_27(v1, v2, v3, v4, v5, v6, v7, v8, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95);
  OUTLINED_FUNCTION_52_15();
  bzero(v96, v9);
  if (setjmp(v96))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_92_10();
  if (ventproc(v0, v10, v11, v12, v13, v96))
  {
    goto LABEL_3;
  }

  v17 = OUTLINED_FUNCTION_29_24();
  get_parm(v17, v18, v19, -6);
  v20 = OUTLINED_FUNCTION_59_14();
  get_parm(v20, v21, v22, -6);
  v23 = OUTLINED_FUNCTION_70_13();
  push_ptr_init(v23, v24);
  v25 = 0;
  v26 = OUTLINED_FUNCTION_58_14();
  fence_38(v26, v27, v28);
  v29 = OUTLINED_FUNCTION_57_14();
  if (!lpta_loadp_setscan_r(v29, v30))
  {
    if (!advance_tok(v0) && !advance_tok(v0))
    {
      OUTLINED_FUNCTION_54_15();
      v31 = OUTLINED_FUNCTION_14_35();
      if (!test_ptr(v31))
      {
        v43 = OUTLINED_FUNCTION_27_25();
        starttest_l(v43, v44);
        OUTLINED_FUNCTION_31_22();
        bspush_ca_boa();
        v45 = OUTLINED_FUNCTION_85_11();
        lpta_rpta_loadp(v45, v46, v47);
        v48 = OUTLINED_FUNCTION_42_16();
        v50 = !setd_lookup(v48, v49, 169);
        goto LABEL_29;
      }
    }

    v25 = 0;
  }

  while (2)
  {
    v32 = OUTLINED_FUNCTION_20_29();
    if (lpta_loadp_setscan_r(v32, v33) || advance_tok(v0) || advance_tok(v0) || advance_tok(v0) || (OUTLINED_FUNCTION_54_15(), v34 = OUTLINED_FUNCTION_14_35(), test_ptr(v34)))
    {
LABEL_19:
      v51 = OUTLINED_FUNCTION_20_29();
      if (lpta_loadp_setscan_r(v51, v52) || advance_tok(v0) || advance_tok(v0) || advance_tok(v0) || advance_tok(v0) || (OUTLINED_FUNCTION_54_15(), v53 = OUTLINED_FUNCTION_14_35(), test_ptr(v53)))
      {
LABEL_3:
        v14 = 94;
        break;
      }

      v54 = OUTLINED_FUNCTION_38_18();
      starttest_l(v54, v55);
      OUTLINED_FUNCTION_30_23();
      bspush_ca_boa();
      v56 = OUTLINED_FUNCTION_85_11();
      lpta_rpta_loadp(v56, v57, v58);
      v40 = OUTLINED_FUNCTION_42_16();
      v42 = 171;
    }

    else
    {
      v35 = OUTLINED_FUNCTION_38_18();
      starttest_l(v35, v36);
      OUTLINED_FUNCTION_38_18();
      bspush_ca_boa();
      v37 = OUTLINED_FUNCTION_85_11();
      lpta_rpta_loadp(v37, v38, v39);
      v40 = OUTLINED_FUNCTION_42_16();
      v42 = 170;
    }

    if (setd_lookup(v40, v41, v42))
    {
      v50 = v25;
    }

    else
    {
      v50 = 1;
    }

LABEL_29:
    v59 = v50;
LABEL_30:
    v60 = *(v0 + 104);
    if (v60)
    {
      v61 = OUTLINED_FUNCTION_56_14(v60);
      v59 = v62;
    }

    else
    {
      v61 = vback(v0, v59);
      v59 = 0;
    }

    switch(v61)
    {
      case 1:
        v25 = v59;
        continue;
      case 2:
      case 4:
      case 6:
      case 9:
        OUTLINED_FUNCTION_63_13();
        adjust_prev_phr_pause();
        goto LABEL_35;
      case 3:
      case 7:
      case 10:
        bspop_boa(v0);
        goto LABEL_3;
      case 5:
        v25 = v59;
        goto LABEL_19;
      case 11:
LABEL_35:
        v63 = OUTLINED_FUNCTION_51_15();
        starttest(v63, v64);
        v65 = OUTLINED_FUNCTION_63_13();
        lpta_loadpn(v65, v66);
        OUTLINED_FUNCTION_77_12();
        lpta_movel();
        v67 = OUTLINED_FUNCTION_57_14();
        lpta_storep(v67, v68);
        OUTLINED_FUNCTION_57_14();
        if (!adjust_prev_phr_ending())
        {
          goto LABEL_36;
        }

        goto LABEL_30;
      case 12:
LABEL_36:
        v14 = 0;
        *(v0 + 3382) = *(v0 + 3390);
        break;
      default:
        goto LABEL_3;
    }

    break;
  }

  vretproc(v0);
  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

void vocative_phrase()
{
  OUTLINED_FUNCTION_91_10();
  OUTLINED_FUNCTION_24_27();
  v66 = *MEMORY[0x277D85DE8];
  v61[0] = 0;
  v61[1] = 0;
  v60[0] = 0;
  v60[1] = 0;
  v58 = 0;
  v59 = 0;
  v57 = 0;
  OUTLINED_FUNCTION_53_15();
  bzero(v56, v1);
  OUTLINED_FUNCTION_52_15();
  bzero(v65, v2);
  if (!setjmp(v65))
  {
    v3 = ventproc(v0, v56, v64, v63, v62, v65);
    if (!v3)
    {
      OUTLINED_FUNCTION_68_13(v3, v61);
      OUTLINED_FUNCTION_48_16();
      v5 = OUTLINED_FUNCTION_47_16();
      push_ptr_init(v5, v6);
      v57 = 65532;
      fence_38(v0, 0, &null_str_15);
      v7 = OUTLINED_FUNCTION_109_5();
      fence_38(v7, v8, v9);
      OUTLINED_FUNCTION_51_15();
      if (is_member_of_list())
      {
LABEL_6:
        v10 = OUTLINED_FUNCTION_51_15();
        if (lpta_loadp_setscan_r(v10, v11) || advance_tok(v0) || (*(v0 + 136) = 1, v12 = OUTLINED_FUNCTION_14_35(), test_ptr(v12)))
        {
LABEL_9:
          v13 = OUTLINED_FUNCTION_51_15();
          if (!lpta_loadp_setscan_r(v13, v14) && !advance_tok(v0) && !advance_tok(v0))
          {
            *(v0 + 136) = 1;
            v15 = OUTLINED_FUNCTION_14_35();
            if (!test_ptr(v15))
            {
              v16 = OUTLINED_FUNCTION_51_15();
              lpta_rpta_loadp(v16, v17, v60);
              v18 = OUTLINED_FUNCTION_109_5();
              if (!setd_lookup(v18, v19, 173))
              {
LABEL_14:
                v20 = OUTLINED_FUNCTION_96_8();
                starttest(v20, v21);
                move_i(v0, &v57, 35);
                OUTLINED_FUNCTION_51_15();
                adjust_prev_phr_pause();
                if (v22)
                {
                  goto LABEL_16;
                }

LABEL_15:
                v23 = OUTLINED_FUNCTION_108_5();
                starttest(v23, v24);
                v25 = OUTLINED_FUNCTION_51_15();
                lpta_loadpn(v25, v26);
                OUTLINED_FUNCTION_77_12();
                lpta_movel();
                v27 = OUTLINED_FUNCTION_46_16();
                lpta_storep(v27, v28);
                OUTLINED_FUNCTION_46_16();
                if (!adjust_prev_phr_ending())
                {
LABEL_29:
                  *(v0 + 3382) = *(v0 + 3394);
                  vretproc(v0);
                  goto LABEL_4;
                }

LABEL_16:
                while (1)
                {
                  v29 = *(v0 + 104);
                  if (v29)
                  {
                    v30 = OUTLINED_FUNCTION_56_14(v29);
                  }

                  else
                  {
                    v31 = OUTLINED_FUNCTION_69_13();
                    v30 = vback(v31, v32);
                  }

                  switch(v30)
                  {
                    case 1:
                      goto LABEL_6;
                    case 2:
                    case 5:
                    case 10:
                      goto LABEL_14;
                    case 3:
                      goto LABEL_9;
                    case 4:
                      v33 = OUTLINED_FUNCTION_51_15();
                      lpta_rpta_loadp(v33, v34, v60);
                      v35 = OUTLINED_FUNCTION_109_5();
                      if (!setd_lookup(v35, v36, 172))
                      {
                        goto LABEL_14;
                      }

                      break;
                    case 6:
                      break;
                    case 11:
                      goto LABEL_15;
                    case 12:
                      goto LABEL_29;
                    default:
                      goto LABEL_3;
                  }

                  v37 = OUTLINED_FUNCTION_83_11();
                  starttest(v37, v38);
                  v39 = OUTLINED_FUNCTION_51_15();
                  if (lpta_loadp_setscan_r(v39, v40))
                  {
                    break;
                  }

                  v41 = OUTLINED_FUNCTION_95_9();
                  if (!testFldeq(v41, v42, 2, 29) && !advance_tok(v0))
                  {
                    *(v0 + 136) = 1;
                    v43 = OUTLINED_FUNCTION_14_35();
                    if (!test_ptr(v43))
                    {
                      v44 = OUTLINED_FUNCTION_51_15();
                      lpta_loadpn(v44, v45);
                      OUTLINED_FUNCTION_77_12();
                      lpta_movel();
                      v46 = OUTLINED_FUNCTION_46_16();
                      lpta_storep(v46, v47);
                      OUTLINED_FUNCTION_46_16();
                      prev_phrase_triggers_voc();
                      if (!v48)
                      {
                        goto LABEL_14;
                      }
                    }
                  }
                }
              }
            }
          }
        }

        else
        {
          v49 = OUTLINED_FUNCTION_88_10();
          starttest(v49, v50);
          v51 = OUTLINED_FUNCTION_51_15();
          lpta_loadpn(v51, v52);
          OUTLINED_FUNCTION_77_12();
          lpta_movel();
          v53 = OUTLINED_FUNCTION_46_16();
          lpta_storep(v53, v54);
          OUTLINED_FUNCTION_46_16();
          block_vocative();
          if (v55)
          {
            goto LABEL_16;
          }
        }
      }
    }
  }

LABEL_3:
  vretproc(v0);
LABEL_4:
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_90_10();
}

uint64_t is_member_of_list()
{
  OUTLINED_FUNCTION_111_5();
  v66 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_23_27(v1, v2, v3, v4, v5, v6, v7, v8, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64[0], v64[1], v64[2], v64[3]);
  OUTLINED_FUNCTION_52_15();
  bzero(v65, v9);
  if (!setjmp(v65))
  {
    OUTLINED_FUNCTION_78_12();
    if (!ventproc(v0, v10, v11, v12, v13, v65))
    {
      OUTLINED_FUNCTION_48_16();
      v14 = OUTLINED_FUNCTION_70_13();
      push_ptr_init(v14, v15);
      v16 = OUTLINED_FUNCTION_58_14();
      fence_38(v16, v17, &null_str_15);
      v18 = OUTLINED_FUNCTION_58_14();
      fence_38(v18, v19, &null_str_15);
      v20 = OUTLINED_FUNCTION_38_18();
      starttest(v20, v21);
      v22 = OUTLINED_FUNCTION_51_15();
      if (!lpta_loadp_setscan_r(v22, v23) && !advance_tok(v0))
      {
        v31 = OUTLINED_FUNCTION_27_25();
        bspush_ca_scan(v31, v32);
        while (2)
        {
          v33 = OUTLINED_FUNCTION_63_13();
          savescptr(v33, v34, v64);
LABEL_13:
          v35 = OUTLINED_FUNCTION_46_16();
          if (test_synch(v35, v36, 1u, &_MergedGlobals_34))
          {
LABEL_14:
            v37 = *(v0 + 104);
            if (v37)
            {
              v38 = OUTLINED_FUNCTION_56_14(v37);
            }

            else
            {
              v39 = OUTLINED_FUNCTION_69_13();
              v38 = vback(v39, v40);
            }

            switch(v38)
            {
              case 1:
                break;
              case 2:
                if (!advance_tok(v0))
                {
                  continue;
                }

                goto LABEL_14;
              case 3:
                continue;
              case 4:
                goto LABEL_13;
              case 5:
                goto LABEL_7;
              case 7:
                goto LABEL_20;
              default:
                goto LABEL_9;
            }
          }

          break;
        }
      }

      v24 = OUTLINED_FUNCTION_70_13();
      lpta_loadpn(v24, v25);
      OUTLINED_FUNCTION_112_5();
      if (compare_ptas(v0) || testeq(v0))
      {
LABEL_7:
        v26 = OUTLINED_FUNCTION_44_16();
        if (!lpta_loadp_setscan_r(v26, v27))
        {
          OUTLINED_FUNCTION_42_16();
          if (!test_string_s())
          {
LABEL_20:
            v28 = 0;
            goto LABEL_10;
          }
        }
      }
    }
  }

LABEL_9:
  v28 = 94;
LABEL_10:
  vretproc(v0);
  v29 = *MEMORY[0x277D85DE8];
  return v28;
}

void block_vocative()
{
  OUTLINED_FUNCTION_91_10();
  OUTLINED_FUNCTION_24_27();
  v80 = *MEMORY[0x277D85DE8];
  v78[0] = 0;
  v78[1] = 0;
  OUTLINED_FUNCTION_23_27(v1, v2, v3, v4, v5, v6, v7, v8, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77);
  OUTLINED_FUNCTION_52_15();
  bzero(v79, v9);
  if (!setjmp(v79))
  {
    OUTLINED_FUNCTION_92_10();
    if (!ventproc(v0, v10, v11, v12, v13, v79))
    {
      v15 = OUTLINED_FUNCTION_29_24();
      get_parm(v15, v16, v17, -6);
      v18 = OUTLINED_FUNCTION_59_14();
      get_parm(v18, v19, v20, -6);
      v21 = OUTLINED_FUNCTION_70_13();
      push_ptr_init(v21, v22);
      v23 = OUTLINED_FUNCTION_58_14();
      fence_38(v23, v24, &null_str_15);
      v25 = OUTLINED_FUNCTION_58_14();
      fence_38(v25, v26, &null_str_15);
      v27 = OUTLINED_FUNCTION_57_14();
      if (!lpta_loadp_setscan_l(v27, v28) && !advance_tok(v0))
      {
LABEL_6:
        OUTLINED_FUNCTION_65_13();
        v29 = OUTLINED_FUNCTION_101_7();
        savescptr(v29, v30, v31);
      }

      while (2)
      {
        v32 = OUTLINED_FUNCTION_63_13();
        lpta_loadpn(v32, v33);
        OUTLINED_FUNCTION_112_5();
        if (compare_ptas(v0) || testeq(v0))
        {
LABEL_9:
          v34 = OUTLINED_FUNCTION_63_13();
          if (lpta_loadp_setscan_r(v34, v35) || advance_tok(v0) || (*(v0 + 136) = 1, v36 = OUTLINED_FUNCTION_14_35(), test_ptr(v36)))
          {
LABEL_12:
            v37 = OUTLINED_FUNCTION_63_13();
            lpta_rpta_loadp(v37, v38, v78);
            v39 = OUTLINED_FUNCTION_64_13();
            if (setd_lookup(v39, v40, 172))
            {
LABEL_13:
              v41 = OUTLINED_FUNCTION_46_16();
              starttest(v41, v42);
              v43 = OUTLINED_FUNCTION_67_13();
              if (!lpta_loadp_setscan_l(v43, v44))
              {
                v45 = OUTLINED_FUNCTION_83_11();
                bspush_ca_scan(v45, v46);
                OUTLINED_FUNCTION_64_13();
LABEL_15:
                if (test_string_s())
                {
                  v47 = *(v0 + 104);
                  if (v47)
                  {
                    v48 = OUTLINED_FUNCTION_56_14(v47);
                  }

                  else
                  {
                    v49 = OUTLINED_FUNCTION_69_13();
                    v48 = vback(v49, v50);
                  }

                  switch(v48)
                  {
                    case 1:
                      continue;
                    case 2:
                      goto LABEL_6;
                    case 3:
                      goto LABEL_9;
                    case 4:
                      goto LABEL_12;
                    case 5:
                      goto LABEL_13;
                    case 8:
                      OUTLINED_FUNCTION_36_18();
                      goto LABEL_15;
                    default:
                      goto LABEL_3;
                  }
                }
              }
            }
          }
        }

        break;
      }
    }
  }

LABEL_3:
  vretproc(v0);
  v14 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_90_10();
}

void prev_phrase_triggers_voc()
{
  OUTLINED_FUNCTION_91_10();
  OUTLINED_FUNCTION_111_5();
  v84 = *MEMORY[0x277D85DE8];
  v79[0] = 0;
  v79[1] = 0;
  v78[0] = 0;
  v78[1] = 0;
  v76 = 0;
  v77 = 0;
  OUTLINED_FUNCTION_53_15();
  bzero(v75, v1);
  OUTLINED_FUNCTION_52_15();
  bzero(v83, v2);
  if (!setjmp(v83) && !ventproc(v0, v75, v82, v81, v80, v83))
  {
    OUTLINED_FUNCTION_48_16();
    push_ptr_init(v0, v78);
    v4 = OUTLINED_FUNCTION_94_9();
    push_ptr_init(v4, v5);
    v6 = OUTLINED_FUNCTION_58_14();
    fence_38(v6, v7, &null_str_15);
    v8 = OUTLINED_FUNCTION_58_14();
    fence_38(v8, v9, &null_str_15);
    v10 = OUTLINED_FUNCTION_51_15();
    if (!lpta_loadp_setscan_l(v10, v11) && !advance_tok(v0))
    {
LABEL_6:
      OUTLINED_FUNCTION_65_13();
      savescptr(v0, v12, v78);
    }

    while (2)
    {
      v13 = OUTLINED_FUNCTION_63_13();
      lpta_loadpn(v13, v14);
      OUTLINED_FUNCTION_112_5();
      if (compare_ptas(v0) || testeq(v0))
      {
LABEL_9:
        v15 = OUTLINED_FUNCTION_93_10();
        starttest(v15, v16);
        v17 = OUTLINED_FUNCTION_57_14();
        if (!lpta_loadp_setscan_l(v17, v18))
        {
          v58 = OUTLINED_FUNCTION_36_18();
          if (!testFldeq(v58, v59, v60, 29) && !advance_tok(v0))
          {
            break;
          }

          goto LABEL_42;
        }

LABEL_10:
        OUTLINED_FUNCTION_63_13();
        get_nonpickup_word();
LABEL_11:
        v19 = OUTLINED_FUNCTION_63_13();
        lpta_rpta_loadp(v19, v20, v79);
        v21 = OUTLINED_FUNCTION_84_11();
        if (!setd_lookup(v21, v22, 174))
        {
          break;
        }

LABEL_12:
        starttest(v0, 8);
        v23 = OUTLINED_FUNCTION_63_13();
        if (lpta_loadp_setscan_r(v23, v24))
        {
LABEL_13:
          v25 = OUTLINED_FUNCTION_96_8();
          starttest(v25, v26);
          v27 = OUTLINED_FUNCTION_63_13();
          if (lpta_loadp_setscan_r(v27, v28))
          {
LABEL_14:
            v29 = OUTLINED_FUNCTION_83_11();
            starttest(v29, v30);
            v31 = OUTLINED_FUNCTION_63_13();
            if (!lpta_loadp_setscan_r(v31, v32))
            {
              v54 = OUTLINED_FUNCTION_110_5();
              bspush_ca_scan(v54, v55);
LABEL_35:
              v56 = OUTLINED_FUNCTION_108_5();
              bspush_ca_scan(v56, v57);
LABEL_36:
              v39 = OUTLINED_FUNCTION_36_18();
              v42 = 6;
LABEL_37:
              if (!testFldeq(v39, v40, v41, v42) && !advance_tok(v0))
              {
                break;
              }

              goto LABEL_42;
            }

LABEL_15:
            starttest(v0, 19);
            v33 = OUTLINED_FUNCTION_57_14();
            if (lpta_loadp_setscan_l(v33, v34))
            {
              break;
            }

            v35 = OUTLINED_FUNCTION_64_13();
            if (!testFldeq(v35, v36, 1, 4) && !advance_tok(v0))
            {
LABEL_18:
              v37 = OUTLINED_FUNCTION_107_5();
              if (!chstream(v37, v38, 1u))
              {
                OUTLINED_FUNCTION_84_11();
                if (!test_string_s())
                {
LABEL_20:
                  if (!chstream(v0, 21, 4u))
                  {
                    v39 = OUTLINED_FUNCTION_64_13();
                    v41 = 1;
                    v42 = 1;
                    goto LABEL_37;
                  }
                }
              }
            }

LABEL_42:
            v61 = *(v0 + 104);
            if (v61)
            {
              v62 = OUTLINED_FUNCTION_56_14(v61);
            }

            else
            {
              v63 = OUTLINED_FUNCTION_69_13();
              v62 = vback(v63, v64);
            }

            switch(v62)
            {
              case 1:
                continue;
              case 2:
                goto LABEL_6;
              case 3:
                goto LABEL_9;
              case 4:
                goto LABEL_10;
              case 5:
                goto LABEL_11;
              case 6:
                goto LABEL_12;
              case 8:
                goto LABEL_13;
              case 9:
                goto LABEL_14;
              case 10:
                v65 = OUTLINED_FUNCTION_36_18();
                if (!testFldeq(v65, v66, v67, 25) && !advance_tok(v0))
                {
                  goto LABEL_29;
                }

                goto LABEL_42;
              case 11:
                goto LABEL_29;
              case 12:
                v68 = OUTLINED_FUNCTION_36_18();
                if (!testFldeq(v68, v69, v70, 8))
                {
                  goto LABEL_26;
                }

                goto LABEL_42;
              case 13:
                goto LABEL_32;
              case 14:
                goto LABEL_15;
              case 15:
                v71 = OUTLINED_FUNCTION_64_13();
                if (!testFldeq(v71, v72, 3, 11) && !advance_tok(v0))
                {
                  goto LABEL_35;
                }

                goto LABEL_42;
              case 16:
                goto LABEL_35;
              case 17:
                v73 = OUTLINED_FUNCTION_64_13();
                if (!testFldeq(v73, v74, 1, 8) && !advance_tok(v0))
                {
                  goto LABEL_36;
                }

                goto LABEL_42;
              case 18:
                goto LABEL_36;
              case 20:
                goto LABEL_18;
              case 21:
                goto LABEL_20;
              default:
                goto LABEL_3;
            }

            break;
          }

          bspush_ca_scan(v0, 10);
LABEL_29:
          v49 = OUTLINED_FUNCTION_64_13();
          if (testFldeq(v49, v50, 1, 1) || advance_tok(v0))
          {
            goto LABEL_42;
          }

          v51 = OUTLINED_FUNCTION_106_5();
          bspush_ca_scan(v51, v52);
        }

        else
        {
          v43 = OUTLINED_FUNCTION_36_18();
          if (testFldeq(v43, v44, v45, 13))
          {
            goto LABEL_42;
          }

          if (advance_tok(v0))
          {
            goto LABEL_42;
          }

          v46 = OUTLINED_FUNCTION_36_18();
          if (testFldeq(v46, v47, v48, 1) || advance_tok(v0))
          {
            goto LABEL_42;
          }

LABEL_26:
          if (advance_tok(v0))
          {
            goto LABEL_42;
          }
        }

LABEL_32:
        *(v0 + 136) = 1;
        v53 = OUTLINED_FUNCTION_14_35();
        if (!test_ptr(v53))
        {
          break;
        }

        goto LABEL_42;
      }

      break;
    }
  }

LABEL_3:
  vretproc(v0);
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_90_10();
}

uint64_t fren_said_phrase()
{
  OUTLINED_FUNCTION_16_34();
  v281 = *MEMORY[0x277D85DE8];
  v269 = 0;
  v270 = 0;
  v267 = 0;
  v268 = 0;
  HIDWORD(v266) = 0;
  v264 = 0;
  v265 = 0;
  OUTLINED_FUNCTION_40_17(v1, v2, v3, v4, v5, v6, v7, v8, v236, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258, v259, v260, v261, v262, v263);
  OUTLINED_FUNCTION_52_15();
  bzero(v280, v9);
  v10 = setjmp(v280);
  if (v10 || OUTLINED_FUNCTION_74_13(v10, &v239, v11, v12, v13, v14, v15, v16, v237, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258, v259, v260, v261, v262, v263, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279))
  {
LABEL_3:
    vretproc(v0);
    result = 94;
  }

  else
  {
    OUTLINED_FUNCTION_43_16();
    v19 = OUTLINED_FUNCTION_41_16();
    OUTLINED_FUNCTION_82_11(v19, v20);
    v21 = OUTLINED_FUNCTION_59_14();
    get_parm(v21, v22, v23, -4);
    push_ptr_init(v0, &v264);
    v24 = OUTLINED_FUNCTION_47_16();
    push_ptr_init(v24, v25);
    v26 = OUTLINED_FUNCTION_58_14();
    fence_38(v26, v27, v28);
    v29 = OUTLINED_FUNCTION_38_18();
    starttest(v29, v30);
    OUTLINED_FUNCTION_27_25();
    bspush_ca_boa();
    v31 = OUTLINED_FUNCTION_22_27();
    if (lpta_loadp_setscan_r(v31, v32))
    {
      v33 = 0;
    }

    else if (advance_tok(v0))
    {
      v33 = 0;
    }

    else
    {
      v34 = OUTLINED_FUNCTION_31_22();
      bspush_ca_scan(v34, v35);
      v36 = 0;
LABEL_112:
      v235 = v36;
      *(v0 + 136) = 1;
      *(v0 + 112) = v268;
      *(v0 + 128) = 0;
      if (test_ptr(v0))
      {
        v33 = v235;
      }

      else
      {
        v33 = 1;
      }
    }

    LODWORD(v39) = v33;
    while (2)
    {
      v37 = *(v0 + 104);
      if (v37)
      {
        v38 = OUTLINED_FUNCTION_56_14(v37);
        v46 = v39;
      }

      else
      {
        v38 = vback(v0, v39);
        v46 = 0;
      }

      v36 = v46;
      switch(v38)
      {
        case 1:
          v56 = OUTLINED_FUNCTION_30_23();
          starttest(v56, v57);
          v58 = OUTLINED_FUNCTION_18_33();
          if (lpta_loadp_setscan_r(v58, v59))
          {
            goto LABEL_22;
          }

          v221 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v221, v222);
          goto LABEL_104;
        case 2:
          bspop_boa(v0);
          goto LABEL_3;
        case 3:
          v95 = advance_tok(v0);
          LODWORD(v39) = v46;
          if (v95)
          {
            continue;
          }

          goto LABEL_111;
        case 4:
          goto LABEL_112;
        case 5:
          v55 = advance_tok(v0);
          LODWORD(v39) = v46;
          if (v55)
          {
            continue;
          }

          goto LABEL_111;
        case 6:
          v142 = advance_tok(v0);
          LODWORD(v39) = v46;
          if (v142)
          {
            continue;
          }

          goto LABEL_111;
        case 7:
          v115 = advance_tok(v0);
          LODWORD(v39) = v46;
          if (v115)
          {
            continue;
          }

          goto LABEL_111;
        case 8:
          v130 = advance_tok(v0);
          LODWORD(v39) = v46;
          if (v130)
          {
            continue;
          }

LABEL_111:
          v233 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v233, v234);
          v36 = v46;
          goto LABEL_112;
        case 9:
          v129 = advance_tok(v0);
          v36 = v46;
          LODWORD(v39) = v46;
          if (!v129)
          {
            goto LABEL_112;
          }

          continue;
        case 10:
LABEL_22:
          v60 = OUTLINED_FUNCTION_38_18();
          starttest(v60, v61);
          v62 = OUTLINED_FUNCTION_18_33();
          if (lpta_loadp_setscan_r(v62, v63))
          {
            goto LABEL_23;
          }

          v198 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v198, v199);
          goto LABEL_93;
        case 11:
          v177 = OUTLINED_FUNCTION_10_36();
          v180 = testFldeq(v177, v178, v179, 34);
          LODWORD(v39) = v46;
          if (v180)
          {
            continue;
          }

          v181 = advance_tok(v0);
          LODWORD(v39) = v46;
          if (v181)
          {
            continue;
          }

          goto LABEL_104;
        case 12:
LABEL_104:
          v223 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v223, v224);
          goto LABEL_105;
        case 13:
          v110 = OUTLINED_FUNCTION_10_36();
          v113 = testFldeq(v110, v111, v112, 12);
          LODWORD(v39) = v46;
          if (v113)
          {
            continue;
          }

          v114 = advance_tok(v0);
          LODWORD(v39) = v46;
          if (v114)
          {
            continue;
          }

          goto LABEL_105;
        case 14:
LABEL_105:
          OUTLINED_FUNCTION_66_13(14, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258, v259, v260, v261, v262, v263, v264);
          v225 = OUTLINED_FUNCTION_2_39();
          v229 = testFldeq(v225, v226, v227, v228);
          LODWORD(v39) = v46;
          if (!v229)
          {
            OUTLINED_FUNCTION_38_18();
            bspush_ca_scan_boa();
            v230 = OUTLINED_FUNCTION_10_36();
            if (testFldeq(v230, v231, v232, 2))
            {
              LODWORD(v39) = v46;
            }

            else
            {
              LODWORD(v39) = 1;
            }
          }

          continue;
        case 15:
          bspop_boa(v0);
          v96 = OUTLINED_FUNCTION_11_36();
          v99 = testFldeq(v96, v97, v98, 4);
          LODWORD(v39) = v46;
          if (v99)
          {
            continue;
          }

          v100 = advance_tok(v0);
          LODWORD(v39) = v46;
          if (v100)
          {
            continue;
          }

          goto LABEL_39;
        case 16:
LABEL_39:
          v101 = OUTLINED_FUNCTION_59_14();
          savescptr(v101, v102, v103);
          v104 = OUTLINED_FUNCTION_59_14();
          lpta_rpta_loadp(v104, v105, v106);
          v107 = OUTLINED_FUNCTION_42_16();
          v109 = 93;
          goto LABEL_100;
        case 17:
          goto LABEL_109;
        case 18:
LABEL_23:
          v64 = OUTLINED_FUNCTION_38_18();
          starttest(v64, v65);
          v66 = OUTLINED_FUNCTION_18_33();
          if (lpta_loadp_setscan_r(v66, v67))
          {
            goto LABEL_24;
          }

          v182 = OUTLINED_FUNCTION_9_36();
          v185 = testFldeq(v182, v183, v184, 4);
          LODWORD(v39) = v46;
          if (v185)
          {
            continue;
          }

          v186 = OUTLINED_FUNCTION_10_36();
          v189 = testFldeq(v186, v187, v188, 12);
          LODWORD(v39) = v46;
          if (v189)
          {
            continue;
          }

          v190 = advance_tok(v0);
          LODWORD(v39) = v46;
          if (v190)
          {
            continue;
          }

          v191 = OUTLINED_FUNCTION_10_36();
          v194 = testFldeq(v191, v192, v193, 1);
          LODWORD(v39) = v46;
          if (v194)
          {
            continue;
          }

          v195 = advance_tok(v0);
          LODWORD(v39) = v46;
          if (v195)
          {
            continue;
          }

          v196 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v196, v197);
LABEL_79:
          v169 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v169, v170);
LABEL_80:
          OUTLINED_FUNCTION_66_13(30, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258, v259, v260, v261, v262, v263, v264);
          v171 = OUTLINED_FUNCTION_2_39();
          v175 = testFldeq(v171, v172, v173, v174);
          LODWORD(v39) = v46;
          if (!v175)
          {
            v176 = advance_tok(v0);
            LODWORD(v39) = v46;
            if (!v176)
            {
              goto LABEL_99;
            }
          }

          continue;
        case 19:
          v143 = OUTLINED_FUNCTION_10_36();
          v146 = testFldeq(v143, v144, v145, 12);
          LODWORD(v39) = v46;
          if (v146)
          {
            continue;
          }

          v147 = advance_tok(v0);
          LODWORD(v39) = v46;
          if (v147)
          {
            continue;
          }

          goto LABEL_93;
        case 20:
LABEL_93:
          v200 = OUTLINED_FUNCTION_10_36();
          v203 = testFldeq(v200, v201, v202, 2);
          LODWORD(v39) = v46;
          if (v203)
          {
            continue;
          }

          v204 = advance_tok(v0);
          LODWORD(v39) = v46;
          if (v204)
          {
            continue;
          }

          v205 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v205, v206);
LABEL_96:
          v207 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v207, v208);
LABEL_97:
          OUTLINED_FUNCTION_66_13(24, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258, v259, v260, v261, v262, v263, v264);
          v209 = OUTLINED_FUNCTION_2_39();
          v213 = testFldeq(v209, v210, v211, v212);
          LODWORD(v39) = v46;
          if (v213)
          {
            continue;
          }

          v214 = advance_tok(v0);
          LODWORD(v39) = v46;
          if (v214)
          {
            continue;
          }

LABEL_99:
          v215 = OUTLINED_FUNCTION_59_14();
          savescptr(v215, v216, v217);
          v218 = OUTLINED_FUNCTION_59_14();
          lpta_rpta_loadp(v218, v219, v220);
          v107 = OUTLINED_FUNCTION_42_16();
          v109 = 94;
LABEL_100:
          v163 = setd_lookup(v107, v108, v109);
          goto LABEL_101;
        case 21:
          v131 = OUTLINED_FUNCTION_10_36();
          v134 = testFldeq(v131, v132, v133, 11);
          LODWORD(v39) = v46;
          if (v134)
          {
            continue;
          }

          v135 = advance_tok(v0);
          LODWORD(v39) = v46;
          if (v135)
          {
            continue;
          }

          goto LABEL_96;
        case 22:
          goto LABEL_96;
        case 23:
          v123 = OUTLINED_FUNCTION_4_38();
          v127 = testFldeq(v123, v124, v125, v126);
          LODWORD(v39) = v46;
          if (v127)
          {
            continue;
          }

          v128 = advance_tok(v0);
          LODWORD(v39) = v46;
          if (v128)
          {
            continue;
          }

          goto LABEL_97;
        case 24:
          goto LABEL_97;
        case 25:
        case 31:
          goto LABEL_99;
        case 26:
LABEL_24:
          v68 = OUTLINED_FUNCTION_33_21();
          starttest(v68, v69);
          v70 = OUTLINED_FUNCTION_18_33();
          if (lpta_loadp_setscan_r(v70, v71))
          {
            goto LABEL_3;
          }

          bspush_boa(v0);
LABEL_26:
          v72 = OUTLINED_FUNCTION_13_35();
          v75 = chstream(v72, v73, v74);
          LODWORD(v39) = v46;
          if (v75)
          {
            continue;
          }

          v76 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v76, v77);
          OUTLINED_FUNCTION_42_16();
LABEL_30:
          v78 = test_string_s();
          LODWORD(v39) = v46;
          if (v78)
          {
            continue;
          }

LABEL_31:
          v79 = OUTLINED_FUNCTION_38_18();
          v81 = chstream(v79, v80, 4u);
          LODWORD(v39) = v46;
          if (v81)
          {
            continue;
          }

          v82 = advanc(v0);
          LODWORD(v39) = v46;
          if (v82)
          {
            continue;
          }

          bspush_nboa(v0);
          v83 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v83, v84);
          v85 = OUTLINED_FUNCTION_9_36();
          v88 = testFldeq(v85, v86, v87, 4);
          LODWORD(v39) = v46;
          if (v88)
          {
            continue;
          }

          v89 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v89, v90);
          v91 = OUTLINED_FUNCTION_10_36();
          v94 = 11;
LABEL_46:
          v116 = testFldeq(v91, v92, v93, v94);
          LODWORD(v39) = v46;
          if (v116)
          {
            continue;
          }

LABEL_14:
          v38 = advance_tok(v0);
          v39 = v46;
          if (!v38)
          {
            goto LABEL_76;
          }

          continue;
        case 27:
          v164 = OUTLINED_FUNCTION_10_36();
          v167 = testFldeq(v164, v165, v166, 11);
          LODWORD(v39) = v46;
          if (v167)
          {
            continue;
          }

          v168 = advance_tok(v0);
          LODWORD(v39) = v46;
          if (v168)
          {
            continue;
          }

          goto LABEL_79;
        case 28:
          goto LABEL_79;
        case 29:
          v117 = OUTLINED_FUNCTION_4_38();
          v121 = testFldeq(v117, v118, v119, v120);
          LODWORD(v39) = v46;
          if (v121)
          {
            continue;
          }

          v122 = advance_tok(v0);
          LODWORD(v39) = v46;
          if (v122)
          {
            continue;
          }

          goto LABEL_80;
        case 30:
          goto LABEL_80;
        case 33:
          goto LABEL_26;
        case 34:
          OUTLINED_FUNCTION_42_16();
          goto LABEL_30;
        case 35:
          goto LABEL_31;
        case 36:
          v47 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v47, v48);
          v49 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v49, v50);
          goto LABEL_73;
        case 37:
          v91 = OUTLINED_FUNCTION_11_36();
          v94 = 9;
          goto LABEL_46;
        case 38:
        case 46:
          goto LABEL_14;
        case 39:
        case 47:
          goto LABEL_76;
        case 40:
          v136 = OUTLINED_FUNCTION_8_37();
          v140 = testFldeq(v136, v137, v138, v139);
          LODWORD(v39) = v46;
          if (v140)
          {
            continue;
          }

          v141 = advance_tok(v0);
          LODWORD(v39) = v46;
          if (v141)
          {
            continue;
          }

          v91 = OUTLINED_FUNCTION_1_40();
          goto LABEL_46;
        case 41:
          v51 = OUTLINED_FUNCTION_13_35();
          v54 = chstream(v51, v52, v53);
          LODWORD(v39) = v46;
          if (v54)
          {
            continue;
          }

          goto LABEL_69;
        case 42:
          goto LABEL_73;
        case 43:
LABEL_69:
          v148 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v148, v149);
          OUTLINED_FUNCTION_42_16();
          goto LABEL_70;
        case 44:
          goto LABEL_71;
        case 45:
          OUTLINED_FUNCTION_42_16();
LABEL_70:
          v150 = test_string_s();
          LODWORD(v39) = v46;
          if (v150)
          {
            continue;
          }

LABEL_71:
          v151 = OUTLINED_FUNCTION_38_18();
          v153 = chstream(v151, v152, 4u);
          LODWORD(v39) = v46;
          if (v153)
          {
            continue;
          }

          v154 = advanc(v0);
          LODWORD(v39) = v46;
          if (v154)
          {
            continue;
          }

LABEL_73:
          v155 = OUTLINED_FUNCTION_10_36();
          v158 = testFldeq(v155, v156, v157, 29);
          LODWORD(v39) = v46;
          if (v158)
          {
            continue;
          }

          v159 = advance_tok(v0);
          LODWORD(v39) = v46;
          if (v159)
          {
            continue;
          }

          v160 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v160, v161);
LABEL_76:
          v162 = OUTLINED_FUNCTION_0_41(v38, v39, v40, v41, v42, v43, v44, v45, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258, v259, v260, v261, v262, v263, v264, v265, v266, v267, v268);
          v163 = test_ptr(v162);
LABEL_101:
          LODWORD(v39) = v46;
          if (v163)
          {
            continue;
          }

LABEL_109:
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

void apply_fren_comma_rules()
{
  OUTLINED_FUNCTION_91_10();
  OUTLINED_FUNCTION_24_27();
  v71 = *MEMORY[0x277D85DE8];
  v66[0] = 0;
  v66[1] = 0;
  OUTLINED_FUNCTION_40_17(v2, v3, v4, v5, v6, v7, v8, v9, v40, v41[0], v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65);
  OUTLINED_FUNCTION_52_15();
  bzero(v70, v10);
  if (setjmp(v70) || ventproc(v0, v41, v69, v68, v67, v70))
  {
    goto LABEL_3;
  }

  v12 = OUTLINED_FUNCTION_29_24();
  get_parm(v12, v13, v14, -6);
  OUTLINED_FUNCTION_48_16();
  fence_38(v0, 0, &null_str_15);
  OUTLINED_FUNCTION_29_24();
  if (!follows_cest_vrai())
  {
    v35 = OUTLINED_FUNCTION_69_13();
    goto LABEL_27;
  }

  while (2)
  {
    v15 = OUTLINED_FUNCTION_57_14();
    starttest(v15, v16);
    if (!lpta_loadp_setscan_r(v0, v66))
    {
      v24 = OUTLINED_FUNCTION_105_6();
      bspush_ca_scan(v24, v25);
LABEL_14:
      v26 = OUTLINED_FUNCTION_83_11();
      if (chstream(v26, v27, 1u) || test_string_s())
      {
        goto LABEL_18;
      }

LABEL_16:
      if (chstream(v0, 6, 4u) || (*(v0 + 136) = 1, v28 = OUTLINED_FUNCTION_14_35(), test_ptr(v28)))
      {
LABEL_18:
        v29 = *(v0 + 104);
        if (v29)
        {
          v30 = OUTLINED_FUNCTION_56_14(v29);
        }

        else
        {
          v31 = OUTLINED_FUNCTION_69_13();
          v30 = vback(v31, v32);
        }

        switch(v30)
        {
          case 1:
            continue;
          case 2:
            goto LABEL_29;
          case 3:
            goto LABEL_7;
          case 4:
            v33 = OUTLINED_FUNCTION_84_11();
            if (!testFldeq(v33, v34, 1, 7) && !advance_tok(v0) && !advanc(v0))
            {
              goto LABEL_14;
            }

            goto LABEL_18;
          case 5:
            goto LABEL_14;
          case 6:
            goto LABEL_16;
          case 7:
            goto LABEL_8;
          case 9:
            goto LABEL_30;
          default:
            goto LABEL_3;
        }
      }

      v38 = OUTLINED_FUNCTION_64_13();
      npush_s(v38);
      *(v0 + 3282) = 2;
      npop(v0, (v0 + 3280));
      v39 = OUTLINED_FUNCTION_58_14();
      npush_s(v39);
      *(v0 + 3282) = 3;
      npop(v0, (v0 + 3280));
      v35 = OUTLINED_FUNCTION_58_14();
LABEL_27:
      npush_s(v35);
      v36 = 4;
      goto LABEL_28;
    }

    break;
  }

LABEL_7:
  if (is_low_rising_comma_phrase())
  {
LABEL_8:
    v17 = OUTLINED_FUNCTION_46_16();
    starttest(v17, v18);
    v19 = OUTLINED_FUNCTION_108_5();
    if (lpta_loadp_setscan_l(v19, v20))
    {
LABEL_3:
      vretproc(v0);
      goto LABEL_4;
    }

    v21 = OUTLINED_FUNCTION_84_11();
    if (!testFldeq(v21, v22, 1, 7) && !advance_tok(v0))
    {
      *(v0 + 136) = 1;
      v23 = OUTLINED_FUNCTION_14_35();
      if (!test_ptr(v23))
      {
        goto LABEL_31;
      }
    }

    goto LABEL_18;
  }

LABEL_31:
  v37 = OUTLINED_FUNCTION_69_13();
  npush_s(v37);
  v36 = 3;
LABEL_28:
  *(v0 + 3282) = v36;
  npop(v0, (v0 + 3280));
LABEL_29:
  insert_comma_phrase();
LABEL_30:
  *(v1 + 8) = v65;
  vretproc(v0);
LABEL_4:
  v11 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_90_10();
}

uint64_t follows_cest_vrai()
{
  OUTLINED_FUNCTION_24_27();
  v78 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_73_13();
  OUTLINED_FUNCTION_23_27(v2, v3, v4, v5, v6, v7, v8, v9, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69);
  OUTLINED_FUNCTION_52_15();
  bzero(v77, v10);
  v11 = setjmp(v77);
  if (!v11 && !OUTLINED_FUNCTION_98_8(v11, &v43, v76 + 7, &v75 + 6, &v74 + 4, v12, v13, v14, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76[0], v76[1], v77[0]))
  {
    v15 = OUTLINED_FUNCTION_29_24();
    get_parm(v15, v16, v17, -6);
    v18 = OUTLINED_FUNCTION_49_16();
    get_parm(v18, v19, v1, -6);
    v20 = OUTLINED_FUNCTION_87_10();
    push_ptr_init(v20, v21);
    v22 = OUTLINED_FUNCTION_70_13();
    push_ptr_init(v22, v23);
    fence_38(v0, 0, &null_str_15);
    v24 = OUTLINED_FUNCTION_38_18();
    starttest(v24, v25);
    v26 = OUTLINED_FUNCTION_57_14();
    if (!lpta_loadp_setscan_l(v26, v27) && !advanc(v0))
    {
      while (1)
      {
        v28 = OUTLINED_FUNCTION_63_13();
        savescptr(v28, v29, &v66);
        v30 = OUTLINED_FUNCTION_77_12();
        if (testFldeq(v30, v31, 1, 1) || advance_tok(v0))
        {
          goto LABEL_10;
        }

        while (1)
        {
          v32 = OUTLINED_FUNCTION_46_16();
          savescptr(v32, v33, &v68);
          v34 = OUTLINED_FUNCTION_67_13();
          if (!lpta_loadp_setscan_r(v34, v35))
          {
            OUTLINED_FUNCTION_95_9();
            if (!test_string_s())
            {
              *(v0 + 136) = 1;
              v36 = OUTLINED_FUNCTION_14_35();
              if (!test_ptr(v36))
              {
                vretproc(v0);
                result = 0;
                goto LABEL_16;
              }
            }
          }

LABEL_10:
          v37 = *(v0 + 104);
          if (v37)
          {
            v38 = OUTLINED_FUNCTION_56_14(v37);
          }

          else
          {
            v39 = OUTLINED_FUNCTION_69_13();
            v38 = vback(v39, v40);
          }

          if (v38 == 2)
          {
            break;
          }

          if (v38 != 3)
          {
            goto LABEL_15;
          }
        }
      }
    }
  }

LABEL_15:
  vretproc(v0);
  result = 94;
LABEL_16:
  v42 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t is_low_rising_comma_phrase()
{
  OUTLINED_FUNCTION_24_27();
  v217 = *MEMORY[0x277D85DE8];
  v205 = 0;
  v206 = 0;
  OUTLINED_FUNCTION_73_13();
  OUTLINED_FUNCTION_23_27(v2, v3, v4, v5, v6, v7, v8, v9, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200);
  OUTLINED_FUNCTION_52_15();
  bzero(v216, v10);
  v11 = setjmp(v216);
  if (!v11 && !OUTLINED_FUNCTION_74_13(v11, &v174, v12, v13, v14, v15, v16, v17, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215))
  {
    v20 = OUTLINED_FUNCTION_29_24();
    get_parm(v20, v21, v22, -6);
    v23 = OUTLINED_FUNCTION_41_16();
    get_parm(v23, v24, v1, -6);
    v25 = OUTLINED_FUNCTION_49_16();
    push_ptr_init(v25, v26);
    v27 = OUTLINED_FUNCTION_87_10();
    push_ptr_init(v27, v28);
    v29 = OUTLINED_FUNCTION_70_13();
    push_ptr_init(v29, v30);
    v31 = OUTLINED_FUNCTION_58_14();
    fence_38(v31, v32, v33);
    v34 = OUTLINED_FUNCTION_93_10();
    starttest(v34, v35);
    OUTLINED_FUNCTION_27_25();
    bspush_ca_boa();
    v36 = OUTLINED_FUNCTION_57_14();
    if (lpta_loadp_setscan_l(v36, v37))
    {
      v38 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_17_34();
      if (test_string_s() || (v39 = OUTLINED_FUNCTION_21_28(), lpta_loadp_setscan_r(v39, v40)))
      {
        v38 = 0;
      }

      else
      {
        OUTLINED_FUNCTION_42_16();
        v38 = test_string_s() == 0;
      }
    }

    LODWORD(v41) = v38;
    while (1)
    {
      v42 = v0[13];
      if (v42)
      {
        v43 = OUTLINED_FUNCTION_56_14(v42);
        v50 = v41;
      }

      else
      {
        v43 = vback(v0, v41);
        v50 = 0;
      }

      switch(v43)
      {
        case 1:
          starttest(v0, 4);
          OUTLINED_FUNCTION_38_18();
          bspush_ca_boa();
          v51 = OUTLINED_FUNCTION_60_14();
          v53 = lpta_loadp_setscan_r(v51, v52);
          LODWORD(v41) = v50;
          if (v53)
          {
            continue;
          }

          v54 = advance_tok(v0);
          LODWORD(v41) = v50;
          if (v54)
          {
            continue;
          }

          goto LABEL_51;
        case 2:
        case 5:
        case 23:
          bspop_boa(v0);
          goto LABEL_3;
        case 3:
          goto LABEL_80;
        case 4:
          v95 = OUTLINED_FUNCTION_38_18();
          starttest(v95, v96);
          v97 = OUTLINED_FUNCTION_12_36();
          if (lpta_loadp_setscan_r(v97, v98))
          {
            goto LABEL_41;
          }

          v171 = OUTLINED_FUNCTION_34_19();
          bspush_ca_scan(v171, v172);
          v90 = OUTLINED_FUNCTION_10_36();
          v93 = 2;
          goto LABEL_74;
        case 6:
          v121 = advance_tok(v0);
          LODWORD(v41) = v50;
          if (v121)
          {
            continue;
          }

          goto LABEL_51;
        case 7:
          goto LABEL_52;
        case 8:
          v89 = advance_tok(v0);
          LODWORD(v41) = v50;
          if (v89)
          {
            continue;
          }

          goto LABEL_51;
        case 9:
          v120 = advance_tok(v0);
          LODWORD(v41) = v50;
          if (v120)
          {
            continue;
          }

          goto LABEL_51;
        case 10:
          v86 = advance_tok(v0);
          LODWORD(v41) = v50;
          if (v86)
          {
            continue;
          }

          goto LABEL_51;
        case 11:
          v94 = advance_tok(v0);
          LODWORD(v41) = v50;
          if (v94)
          {
            continue;
          }

LABEL_51:
          v122 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v122, v123);
          goto LABEL_52;
        case 12:
          v43 = advance_tok(v0);
          v41 = v50;
          if (v43)
          {
            continue;
          }

LABEL_52:
          v124 = OUTLINED_FUNCTION_0_41(v43, v41, v44, v45, v46, v47, v48, v49, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204);
          v119 = test_ptr(v124);
          goto LABEL_77;
        case 13:
LABEL_41:
          v99 = OUTLINED_FUNCTION_38_18();
          starttest(v99, v100);
          v101 = OUTLINED_FUNCTION_18_33();
          if (lpta_loadp_setscan_r(v101, v102))
          {
            goto LABEL_42;
          }

          v161 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v161, v162);
          goto LABEL_69;
        case 14:
          v90 = OUTLINED_FUNCTION_10_36();
          v93 = 1;
LABEL_74:
          v173 = testFldeq(v90, v91, v92, v93);
          LODWORD(v41) = v50;
          if (!v173)
          {
            goto LABEL_75;
          }

          continue;
        case 15:
LABEL_75:
          OUTLINED_FUNCTION_38_18();
          bspush_ca_scan_boa();
          v148 = OUTLINED_FUNCTION_11_36();
          v151 = 1;
          goto LABEL_76;
        case 16:
          bspop_boa(v0);
          v80 = advance_tok(v0);
          goto LABEL_26;
        case 17:
LABEL_42:
          v103 = OUTLINED_FUNCTION_38_18();
          starttest(v103, v104);
          v105 = OUTLINED_FUNCTION_18_33();
          if (lpta_loadp_setscan_r(v105, v106))
          {
            goto LABEL_43;
          }

          v152 = OUTLINED_FUNCTION_10_36();
          v155 = testFldeq(v152, v153, v154, 23);
          LODWORD(v41) = v50;
          if (v155)
          {
            continue;
          }

          v156 = advance_tok(v0);
          LODWORD(v41) = v50;
          if (v156)
          {
            continue;
          }

          v157 = OUTLINED_FUNCTION_12_36();
          v159 = lpta_loadp_setscan_r(v157, v158);
          LODWORD(v41) = v50;
          if (v159)
          {
            continue;
          }

          v139 = OUTLINED_FUNCTION_10_36();
          v142 = 23;
          goto LABEL_66;
        case 18:
          v125 = OUTLINED_FUNCTION_8_37();
          v129 = testFldeq(v125, v126, v127, v128);
          LODWORD(v41) = v50;
          if (v129)
          {
            continue;
          }

          v130 = advance_tok(v0);
          LODWORD(v41) = v50;
          if (v130)
          {
            continue;
          }

          goto LABEL_69;
        case 19:
LABEL_69:
          v163 = advance_tok(v0);
          LODWORD(v41) = v50;
          if (v163)
          {
            continue;
          }

          v170 = OUTLINED_FUNCTION_0_41(v163, v50, v164, v165, v166, v167, v168, v169, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204);
          v85 = test_ptr(v170);
          goto LABEL_71;
        case 20:
LABEL_43:
          v107 = OUTLINED_FUNCTION_38_18();
          starttest(v107, v108);
          v109 = OUTLINED_FUNCTION_18_33();
          if (lpta_loadp_setscan_r(v109, v110))
          {
            goto LABEL_44;
          }

          v131 = OUTLINED_FUNCTION_10_36();
          v134 = testFldeq(v131, v132, v133, 21);
          LODWORD(v41) = v50;
          if (v134)
          {
            continue;
          }

          v135 = advance_tok(v0);
          LODWORD(v41) = v50;
          if (v135)
          {
            continue;
          }

          v136 = OUTLINED_FUNCTION_12_36();
          v138 = lpta_loadp_setscan_r(v136, v137);
          LODWORD(v41) = v50;
          if (v138)
          {
            continue;
          }

          v139 = OUTLINED_FUNCTION_10_36();
          v142 = 21;
LABEL_66:
          v160 = testFldeq(v139, v140, v141, v142);
          LODWORD(v41) = v50;
          if (v160)
          {
            continue;
          }

LABEL_29:
          v85 = advance_tok(v0);
LABEL_71:
          LODWORD(v41) = v50;
          if (!v85)
          {
            goto LABEL_3;
          }

          continue;
        case 21:
LABEL_44:
          v111 = OUTLINED_FUNCTION_38_18();
          starttest(v111, v112);
          OUTLINED_FUNCTION_38_18();
          bspush_ca_boa();
          v113 = OUTLINED_FUNCTION_18_33();
          v115 = lpta_loadp_setscan_r(v113, v114);
          LODWORD(v41) = v50;
          if (v115)
          {
            continue;
          }

          v116 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v116, v117);
          v81 = OUTLINED_FUNCTION_3_39();
LABEL_46:
          v118 = testFldeq(v81, v82, v83, v84);
          LODWORD(v41) = v50;
          if (v118)
          {
            continue;
          }

LABEL_47:
          v119 = advance_tok(v0);
          goto LABEL_77;
        case 22:
          v55 = OUTLINED_FUNCTION_31_22();
          startloop(v55, v56);
          v57 = OUTLINED_FUNCTION_60_14();
          lpta_loadpn(v57, v58);
          OUTLINED_FUNCTION_37_18();
          lpta_mover();
          v59 = OUTLINED_FUNCTION_63_13();
          lpta_storep(v59, v60);
          v61 = OUTLINED_FUNCTION_41_16();
          lpta_loadpn(v61, v62);
          OUTLINED_FUNCTION_37_18();
          lpta_mover();
          v63 = OUTLINED_FUNCTION_51_15();
          lpta_storep(v63, v64);
          v65 = OUTLINED_FUNCTION_63_13();
          v67 = forall_to_test(v65, v66, &v197);
          LODWORD(v41) = v50;
          if (v67)
          {
            continue;
          }

          goto LABEL_19;
        case 24:
          v87 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v87, v88);
          v81 = OUTLINED_FUNCTION_11_36();
          v84 = 12;
          goto LABEL_46;
        case 25:
          goto LABEL_47;
        case 26:
          v81 = OUTLINED_FUNCTION_11_36();
          v84 = 3;
          goto LABEL_46;
        case 27:
          goto LABEL_22;
        case 28:
          goto LABEL_23;
        case 29:
          goto LABEL_21;
        case 30:
          bspop_boa(v0);
          goto LABEL_29;
        case 31:
LABEL_19:
          v68 = OUTLINED_FUNCTION_38_18();
          bspush_ca(v68);
          v69 = OUTLINED_FUNCTION_20_29();
          v71 = lpta_loadp_setscan_r(v69, v70);
          LODWORD(v41) = v50;
          if (v71)
          {
            continue;
          }

          v72 = advance_tok(v0);
          LODWORD(v41) = v50;
          if (v72)
          {
            continue;
          }

LABEL_21:
          v73 = OUTLINED_FUNCTION_85_11();
          savescptr(v73, v74, v75);
LABEL_22:
          v76 = OUTLINED_FUNCTION_38_18();
          starttest(v76, v77);
          v78 = OUTLINED_FUNCTION_20_29();
          if (lpta_loadp_setscan_r(v78, v79))
          {
LABEL_23:
            v80 = OUTLINED_FUNCTION_97_8(3, 27, 31, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201);
LABEL_26:
            LODWORD(v41) = v50;
            if (!v80)
            {
LABEL_80:
              vretproc(v0);
              result = 0;
              goto LABEL_4;
            }
          }

          else
          {
            v143 = OUTLINED_FUNCTION_2_39();
            v147 = testFldeq(v143, v144, v145, v146);
            LODWORD(v41) = v50;
            if (!v147)
            {
              OUTLINED_FUNCTION_38_18();
              bspush_ca_scan_boa();
              v148 = OUTLINED_FUNCTION_11_36();
              v151 = 3;
LABEL_76:
              v119 = testFldeq(v148, v149, v150, v151);
LABEL_77:
              if (v119)
              {
                LODWORD(v41) = v50;
              }

              else
              {
                LODWORD(v41) = 1;
              }
            }
          }

          break;
        default:
          goto LABEL_3;
      }
    }
  }

LABEL_3:
  vretproc(v0);
  result = 94;
LABEL_4:
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

void isit_fren_WH()
{
  OUTLINED_FUNCTION_91_10();
  OUTLINED_FUNCTION_24_27();
  v97 = *MEMORY[0x277D85DE8];
  v84 = 0;
  v85 = 0;
  v82 = 0;
  v83 = 0;
  v80 = 0;
  v81 = 0;
  v78 = 0;
  v79 = 0;
  v76 = 0;
  v77 = 0;
  OUTLINED_FUNCTION_53_15();
  bzero(v75, v2);
  OUTLINED_FUNCTION_52_15();
  bzero(v96, v3);
  v4 = setjmp(v96);
  if (v4 || OUTLINED_FUNCTION_99_8(v4, v75, v5, v6, v7, v8, v9, v10, v70, v71, v72, v73, v74, v75[0], v75[1], v75[2], v75[3], v75[4], v75[5], v75[6], v75[7], v75[8], v75[9], v75[10], v75[11], v75[12], v75[13], v75[14], v75[15], v75[16], v75[17], v75[18], v75[19], v75[20], v75[21], v75[22], v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96[0]))
  {
    goto LABEL_3;
  }

  v12 = OUTLINED_FUNCTION_46_16();
  OUTLINED_FUNCTION_82_11(v12, v13);
  v14 = OUTLINED_FUNCTION_67_13();
  get_parm(v14, v15, v1, -6);
  v16 = OUTLINED_FUNCTION_63_13();
  push_ptr_init(v16, v17);
  v18 = OUTLINED_FUNCTION_51_15();
  push_ptr_init(v18, v19);
  v20 = OUTLINED_FUNCTION_94_9();
  push_ptr_init(v20, v21);
  v22 = 0;
  v23 = OUTLINED_FUNCTION_58_14();
  fence_38(v23, v24, v25);
  v81 = v85;
  OUTLINED_FUNCTION_46_16();
  get_nonpickup_word();
  while (2)
  {
    v26 = OUTLINED_FUNCTION_67_13();
    starttest(v26, v27);
    v28 = OUTLINED_FUNCTION_51_15();
    v30 = lpta_loadp_setscan_l(v28, v29);
    v31 = v22;
    if (v30)
    {
LABEL_6:
      v32 = OUTLINED_FUNCTION_106_5();
      starttest(v32, v33);
      v34 = OUTLINED_FUNCTION_51_15();
      v36 = lpta_loadp_setscan_l(v34, v35);
      v37 = v22;
      if (v36)
      {
LABEL_25:
        v22 = v37;
        v57 = OUTLINED_FUNCTION_96_8();
        starttest(v57, v58);
        v59 = OUTLINED_FUNCTION_63_13();
        if (lpta_loadp_setscan_r(v59, v60))
        {
          goto LABEL_3;
        }

        v61 = OUTLINED_FUNCTION_62_13();
        if (!testFldeq(v61, v62, 2, 6) && !advance_tok(v0))
        {
          goto LABEL_3;
        }
      }

      else
      {
LABEL_7:
        v38 = OUTLINED_FUNCTION_88_10();
        savescptr(v38, v39, &v76);
        v40 = OUTLINED_FUNCTION_62_13();
        if (!testFldeq(v40, v41, 1, 8) && !advance_tok(v0))
        {
          v42 = lpta_loadp_setscan_r(v0, &v76);
          v43 = v22;
          if (!v42)
          {
LABEL_32:
            v22 = v43;
            v63 = OUTLINED_FUNCTION_110_5();
            savescptr(v63, v64, &v80);
            v65 = OUTLINED_FUNCTION_62_13();
            if (!testFldeq(v65, v66, 2, 6))
            {
              OUTLINED_FUNCTION_107_5();
              bspush_ca_scan_boa();
              v67 = OUTLINED_FUNCTION_62_13();
              if (testFldeq(v67, v68, 3, 7))
              {
                v22 = v22;
              }

              else
              {
                v22 = 1;
              }
            }
          }
        }
      }

LABEL_18:
      v55 = v0[13];
      if (v55)
      {
        v56 = OUTLINED_FUNCTION_56_14(v55);
      }

      else
      {
        v56 = vback(v0, v22);
        v22 = 0;
      }

      switch(v56)
      {
        case 1:
          continue;
        case 2:
          goto LABEL_6;
        case 3:
          v31 = v22;
          goto LABEL_11;
        case 4:
          v49 = v22;
          goto LABEL_16;
        case 5:
          goto LABEL_37;
        case 7:
          v37 = v22;
          goto LABEL_25;
        case 8:
          goto LABEL_7;
        case 9:
          v43 = v22;
          goto LABEL_32;
        case 10:
          bspop_boa(v0);
          if (advance_tok(v0))
          {
            goto LABEL_18;
          }

          goto LABEL_36;
        case 11:
LABEL_36:
          v69 = 11;
          goto LABEL_38;
        default:
          goto LABEL_3;
      }
    }

    break;
  }

LABEL_11:
  v22 = v31;
  savescptr(v0, 3, &v76);
  v44 = OUTLINED_FUNCTION_62_13();
  if (testFldeq(v44, v45, 2, 13))
  {
    goto LABEL_18;
  }

  if (advance_tok(v0))
  {
    goto LABEL_18;
  }

  if (lpta_loadp_setscan_r(v0, &v76))
  {
    goto LABEL_18;
  }

  v46 = OUTLINED_FUNCTION_62_13();
  if (testFldeq(v46, v47, 2, 1))
  {
    goto LABEL_18;
  }

  v48 = advance_tok(v0);
  v49 = v22;
  if (v48)
  {
    goto LABEL_18;
  }

LABEL_16:
  v22 = v49;
  v50 = OUTLINED_FUNCTION_59_14();
  savescptr(v50, v51, v52);
  v53 = OUTLINED_FUNCTION_62_13();
  if (testFldeq(v53, v54, 2, 6) || advance_tok(v0))
  {
    goto LABEL_18;
  }

LABEL_37:
  v69 = 5;
LABEL_38:
  savescptr(v0, v69, &v78);
LABEL_3:
  vretproc(v0);
  v11 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_90_10();
}

uint64_t isit_fren_Alt()
{
  OUTLINED_FUNCTION_24_27();
  v104 = *MEMORY[0x277D85DE8];
  v92 = 0;
  v93 = 0;
  OUTLINED_FUNCTION_73_13();
  OUTLINED_FUNCTION_23_27(v1, v2, v3, v4, v5, v6, v7, v8, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87);
  OUTLINED_FUNCTION_52_15();
  bzero(v103, v9);
  v10 = setjmp(v103);
  if (v10 || OUTLINED_FUNCTION_74_13(v10, &v61, v11, v12, v13, v14, v15, v16, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102))
  {
    goto LABEL_18;
  }

  v17 = OUTLINED_FUNCTION_29_24();
  get_parm(v17, v18, v19, -6);
  OUTLINED_FUNCTION_48_16();
  v20 = OUTLINED_FUNCTION_63_13();
  push_ptr_init(v20, v21);
  v22 = OUTLINED_FUNCTION_87_10();
  push_ptr_init(v22, v23);
  v24 = OUTLINED_FUNCTION_46_16();
  push_ptr_init(v24, v25);
  fence_38(v0, 0, &null_str_15);
  v26 = OUTLINED_FUNCTION_38_18();
  startloop(v26, v27);
  v28 = OUTLINED_FUNCTION_57_14();
  lpta_loadpn(v28, v29);
  OUTLINED_FUNCTION_37_18();
  lpta_mover();
  v30 = OUTLINED_FUNCTION_63_13();
  lpta_storep(v30, v31);
  v32 = OUTLINED_FUNCTION_51_15();
  lpta_loadpn(v32, v33);
  OUTLINED_FUNCTION_37_18();
  lpta_mover();
  v34 = OUTLINED_FUNCTION_46_16();
  lpta_storep(v34, v35);
  v36 = OUTLINED_FUNCTION_63_13();
  if (forall_to_test(v36, v37, &v84))
  {
    goto LABEL_14;
  }

LABEL_4:
  v38 = OUTLINED_FUNCTION_31_22();
  bspush_ca(v38);
  v39 = OUTLINED_FUNCTION_20_29();
  if (lpta_loadp_setscan_r(v39, v40))
  {
    goto LABEL_14;
  }

  v41 = OUTLINED_FUNCTION_11_36();
  if (testFldeq(v41, v42, v43, 11))
  {
    goto LABEL_14;
  }

  v44 = OUTLINED_FUNCTION_9_36();
  if (testFldeq(v44, v45, v46, 7) || advance_tok(v0))
  {
    goto LABEL_14;
  }

LABEL_8:
  v47 = OUTLINED_FUNCTION_85_11();
  savescptr(v47, v48, v49);
  while (2)
  {
    v50 = OUTLINED_FUNCTION_31_22();
    starttest(v50, v51);
    v52 = OUTLINED_FUNCTION_44_16();
    if (lpta_loadp_setscan_r(v52, v53) || (OUTLINED_FUNCTION_109_5(), test_string_s()) || (*(v0 + 136) = 1, v54 = OUTLINED_FUNCTION_14_35(), test_ptr(v54)))
    {
LABEL_13:
      if (OUTLINED_FUNCTION_97_8(1, 2, 5, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88))
      {
LABEL_14:
        v56 = *(v0 + 104);
        if (v56)
        {
          v57 = OUTLINED_FUNCTION_56_14(v56);
        }

        else
        {
          v58 = OUTLINED_FUNCTION_69_13();
          v57 = vback(v58, v59);
        }

        switch(v57)
        {
          case 2:
            continue;
          case 3:
            goto LABEL_13;
          case 4:
            goto LABEL_8;
          case 5:
            goto LABEL_4;
          default:
            break;
        }
      }

LABEL_18:
      vretproc(v0);
      result = 94;
      goto LABEL_19;
    }

    break;
  }

  vretproc(v0);
  result = 0;
LABEL_19:
  v60 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t OUTLINED_FUNCTION_0_41(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  *(v39 + 136) = 1;
  *(v39 + 112) = a39;
  *(v39 + 128) = 0;
  return v39;
}

uint64_t OUTLINED_FUNCTION_5_37()
{
  *(v1 + 112) = v0;
  *(v1 + 128) = 0;
  return v1;
}

uint64_t OUTLINED_FUNCTION_7_37(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  *(v39 + 112) = a39;
  *(v39 + 128) = 0;
  return v39;
}

uint64_t OUTLINED_FUNCTION_14_35()
{
  *(v1 + 112) = v0;
  *(v1 + 128) = 0;
  return v1;
}

void OUTLINED_FUNCTION_19_29(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, int a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  a39 = 0;
  a40 = 0;
  a37 = 0;
  a38 = 0;
  a36 = 0;
  a33 = 0;
  a34 = 0;

  bzero(&a10, 0xB8uLL);
}

void OUTLINED_FUNCTION_23_27(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  a34 = 0;
  a35 = 0;
  a32 = 0;
  a33 = 0;

  bzero(&a9, 0xB8uLL);
}

void OUTLINED_FUNCTION_40_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  a33 = 0;
  a34 = 0;

  bzero(&a10, 0xB8uLL);
}

void OUTLINED_FUNCTION_43_16()
{

  get_parm(v0, v2, v1, -6);
}

double OUTLINED_FUNCTION_45_16@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{

  *&result = savescptr(v26, a1, &a26).n128_u64[0];
  return result;
}

void OUTLINED_FUNCTION_48_16()
{

  get_parm(v0, v2, v1, -6);
}

void OUTLINED_FUNCTION_50_16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, __int16 a36, __int16 a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  *(v43 + 8) = a41;
  *(v42 + 8) = a39;
  *(v41 + 2) = a37;
}

void OUTLINED_FUNCTION_55_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, char a36)
{

  get_parm(v36, &a36, v37, -4);
}

double OUTLINED_FUNCTION_61_14@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{

  *&result = savescptr(v31, a1, &a31).n128_u64[0];
  return result;
}

double OUTLINED_FUNCTION_66_13@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{

  *&result = savescptr(v28, a1, &a28).n128_u64[0];
  return result;
}

void OUTLINED_FUNCTION_68_13(uint64_t a1, uint64_t a2)
{

  get_parm(v2, a2, v3, -6);
}

double OUTLINED_FUNCTION_71_13@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{

  *&result = savescptr(v33, a1, &a33).n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_74_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, int a42, char a43, int a44, __int16 a45, char a46, int a47, __int16 a48, char a49, char a50)
{

  return ventproc(v50, a2, &a50, &a46, &a43, v51 - 248);
}

double OUTLINED_FUNCTION_79_12@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{

  *&result = savescptr(v29, a1, &a29).n128_u64[0];
  return result;
}

double OUTLINED_FUNCTION_80_12@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{

  *&result = savescptr(v35, a1, &a35).n128_u64[0];
  return result;
}

void OUTLINED_FUNCTION_82_11(uint64_t a1, uint64_t a2)
{

  get_parm(a1, a2, v2, -6);
}

double OUTLINED_FUNCTION_86_10@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{

  *&result = savescptr(v31, a1, &a31).n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_97_8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{

  return forto_adv_upto_r(v31, a1, a2, a3, 4, &a31);
}

uint64_t OUTLINED_FUNCTION_98_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{

  return ventproc(v44, a2, a3, a4, a5, &a44);
}

uint64_t OUTLINED_FUNCTION_99_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, int a47, char a48, int a49, __int16 a50, char a51, int a52, __int16 a53, char a54, char a55, uint64_t a56, char a57)
{

  return ventproc(v57, a2, &a55, &a51, &a48, &a57);
}

void OUTLINED_FUNCTION_100_7(uint64_t a1, size_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{

  bzero(&a44, a2);
}

uint64_t OUTLINED_FUNCTION_112_5()
{

  return rpta_loadpn(v0, v0 + 3536);
}

void *fence_39(uint64_t a1, int a2, uint64_t a3)
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

uint64_t strip_s(uint64_t *a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v25[0] = 0;
  v25[1] = 0;
  memset(v24, 0, sizeof(v24));
  bzero(v23, 0xB8uLL);
  bzero(v29, 0xC0uLL);
  if (setjmp(v29))
  {
    goto LABEL_5;
  }

  if (ventproc(a1, v23, v28, v27, v26, v29))
  {
    goto LABEL_5;
  }

  push_ptr_init(a1, v25);
  *&v24[16] = 0;
  *&v24[24] = 0;
  *&v24[30] = 0;
  *v24 = -65534;
  fence_39(a1, 0, &null_str_16);
  v2 = OUTLINED_FUNCTION_0_42();
  fence_39(v2, v3, v4);
  if (OUTLINED_FUNCTION_3_40())
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_0_42();
  if (test_string_s())
  {
    goto LABEL_5;
  }

  while (2)
  {
    v8 = OUTLINED_FUNCTION_1_41();
    savescptr(v8, v9, v25);
LABEL_8:
    if (!OUTLINED_FUNCTION_3_40())
    {
      OUTLINED_FUNCTION_0_42();
      if (!test_string_s())
      {
        goto LABEL_5;
      }
    }

LABEL_10:
    v10 = OUTLINED_FUNCTION_2_40();
    lpta_rpta_loadp(v10, v11, v12);
    v13 = OUTLINED_FUNCTION_0_42();
    if (!setd_lookup(v13, v14, 46))
    {
LABEL_5:
      v5 = 94;
      goto LABEL_6;
    }

LABEL_11:
    starttest(a1, 6);
    if (lpta_loadp_setscan_l(a1, v25) || (OUTLINED_FUNCTION_0_42(), test_string_s()))
    {
LABEL_18:
      v19 = OUTLINED_FUNCTION_2_40();
      lpta_rpta_loadp(v19, v25, v20);
      settvar_s();
      v21 = OUTLINED_FUNCTION_0_42();
      npush_s(v21);
      *&v24[2] = 17;
      npop(a1, v24);
      insert_2ptv();
      if (v22)
      {
LABEL_14:
        v17 = a1[13];
        if (v17)
        {
          a1[13] = 0;
          v18 = v17;
        }

        else
        {
          v18 = vback(a1, 0);
        }

        switch(v18)
        {
          case 2:
            continue;
          case 3:
            goto LABEL_8;
          case 4:
            goto LABEL_10;
          case 5:
            goto LABEL_11;
          case 6:
            goto LABEL_18;
          case 7:
            goto LABEL_13;
          case 8:
            goto LABEL_19;
          case 9:
            goto LABEL_20;
          default:
            goto LABEL_5;
        }
      }
    }

    else
    {
LABEL_13:
      savescptr(a1, 7, v25);
      v15 = OUTLINED_FUNCTION_2_40();
      lpta_rpta_loadp(v15, v25, v16);
      if (insert_2pt_s(a1, 2u, 1, &unk_28064BAB9, 0))
      {
        goto LABEL_14;
      }
    }

    break;
  }

LABEL_19:
  insert_suffix(a1, v25);
LABEL_20:
  v5 = 0;
LABEL_6:
  vretproc(a1);
  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t insert_suffix(void *a1, __int16 *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v17 = 0;
  v18 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  bzero(v13, 0xB8uLL);
  bzero(v22, 0xC0uLL);
  if (!setjmp(v22) && !ventproc(a1, v13, v21, v20, v19, v22))
  {
    v7 = OUTLINED_FUNCTION_1_41();
    get_parm(v7, v8, a2, -6);
    LOBYTE(v16) = 0;
    LODWORD(v14) = -65533;
    fence_39(a1, 0, &null_str_16);
    v9 = OUTLINED_FUNCTION_1_41();
    lpta_rpta_loadp(v9, v10, v11);
    OUTLINED_FUNCTION_1_41();
    settvar_s();
    insert_2ptv();
    if (!v12)
    {
      v4 = 0;
      a1[208] = v18;
      goto LABEL_4;
    }

    if (a1[13])
    {
      a1[13] = 0;
    }

    else
    {
      vback(a1, 0);
    }
  }

  v4 = 94;
LABEL_4:
  vretproc(a1);
  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t strip_ment(uint64_t *a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v20[0] = 0;
  v20[1] = 0;
  bzero(v19, 0xB8uLL);
  bzero(v24, 0xC0uLL);
  if (setjmp(v24) || ventproc(a1, v19, v23, v22, v21, v24))
  {
LABEL_3:
    vretproc(a1);
    result = 94;
  }

  else
  {
    push_ptr_init(a1, v20);
    fence_39(a1, 0, &null_str_16);
    fence_39(a1, 1, &_MergedGlobals_35);
    starttest(a1, 1);
    bspush_ca_boa();
    if (lpta_loadp_setscan_r(a1, (a1 + 165)))
    {
      v4 = 0;
    }

    else
    {
      v4 = !testFldeq(a1, 4u, 1, 3) && !advance_tok(a1);
    }

    v5 = v4;
    while (2)
    {
      v6 = a1[13];
      if (v6)
      {
        a1[13] = 0;
        v7 = v6;
        v8 = v5;
      }

      else
      {
        v7 = vback(a1, v5);
        v8 = 0;
      }

      switch(v7)
      {
        case 1:
          v9 = OUTLINED_FUNCTION_1_41();
          starttest(v9, v10);
          if (OUTLINED_FUNCTION_3_40())
          {
            goto LABEL_3;
          }

          OUTLINED_FUNCTION_0_42();
          if (test_string_s())
          {
            goto LABEL_3;
          }

          goto LABEL_17;
        case 2:
          bspop_boa(a1);
          goto LABEL_3;
        case 3:
          goto LABEL_20;
        case 5:
LABEL_17:
          savescptr(a1, 5, v20);
          goto LABEL_18;
        case 6:
          goto LABEL_18;
        case 7:
          v18 = advance_tok(a1);
          v5 = v8;
          if (v18)
          {
            continue;
          }

LABEL_18:
          bspush_ca_scan(a1, 7);
          v11 = OUTLINED_FUNCTION_0_42();
          v13 = testFldeq(v11, v12, 4, 1);
          v5 = v8;
          if (v13)
          {
            continue;
          }

          v14 = advance_tok(a1);
          v5 = v8;
          if (v14)
          {
            continue;
          }

LABEL_20:
          v15 = OUTLINED_FUNCTION_2_40();
          lpta_rpta_loadp(v15, v20, v16);
          inserted = insert_2pt_s(a1, 2u, 2, &unk_28064BABA, 0);
          v5 = v8;
          if (inserted)
          {
            continue;
          }

          insert_suffix(a1, v20);
LABEL_24:
          vretproc(a1);
          result = 0;
          break;
        case 8:
          goto LABEL_24;
        default:
          goto LABEL_3;
      }

      break;
    }
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t OUTLINED_FUNCTION_3_40()
{

  return lpta_loadp_setscan_l(v0, v0 + 1656);
}

uint64_t print_fren_SPR(uint64_t a1, __int16 *a2, uint64_t a3)
{
  v148 = *MEMORY[0x277D85DE8];
  v142 = 0;
  v143 = 0;
  v140 = 0;
  v141 = 0;
  v137 = 0;
  v138 = 0;
  v139 = 0;
  bzero(&v114, 0xB8uLL);
  bzero(v147, 0xC0uLL);
  if (!setjmp(v147) && !ventproc(a1, &v114, v146, v145, v144, v147))
  {
    v9 = OUTLINED_FUNCTION_6_38();
    get_parm(v9, v10, a2, -6);
    get_parm(a1, &v140, a3, -6);
    LOWORD(v139) = 0;
    LODWORD(v137) = -65529;
    fence_40(a1);
    v11 = OUTLINED_FUNCTION_9_37();
    starttest(v11, v12);
    v13 = OUTLINED_FUNCTION_6_38();
    v15 = lpta_loadp_setscan_r(v13, v14);
    if (!v15)
    {
      v23 = OUTLINED_FUNCTION_4_39();
      if (testFldeq(v23, v24, v25, 1) || advance_tok(a1))
      {
        goto LABEL_60;
      }

      *(a1 + 136) = 1;
      *(a1 + 112) = v143;
      *(a1 + 128) = 0;
      if (!lpta_tstctxtl())
      {
        setscan_r(a1);
        if (!v26 && !advance_tok(a1))
        {
          savetok(a1, &v137);
        }
      }

LABEL_12:
      WORD1(v137) = 0;
      v27 = OUTLINED_FUNCTION_13_36();
      v15 = print_var(v27, v28, v29);
    }

    while (2)
    {
      if (!OUTLINED_FUNCTION_8_38(v15, v16, v17, v18, v19, v20, v21, v22, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142))
      {
        OUTLINED_FUNCTION_4_39();
        if (!test_string_s())
        {
          goto LABEL_56;
        }
      }

LABEL_15:
      v30 = OUTLINED_FUNCTION_9_37();
      starttest(v30, v31);
      if (!OUTLINED_FUNCTION_8_38(v32, v33, v34, v35, v36, v37, v38, v39, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142))
      {
        v50 = OUTLINED_FUNCTION_7_38();
        if (testFldeq(v50, v51, 15, 6) || advance_tok(a1) || advance_tok(a1))
        {
          goto LABEL_60;
        }

LABEL_54:
        v84 = OUTLINED_FUNCTION_10_37();
        savescptr(v84, v85, v86);
        break;
      }

LABEL_16:
      v40 = OUTLINED_FUNCTION_9_37();
      starttest(v40, v41);
      v15 = OUTLINED_FUNCTION_8_38(v42, v43, v44, v45, v46, v47, v48, v49, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142);
      if (!v15)
      {
        v52 = OUTLINED_FUNCTION_7_38();
        if (testFldeq(v52, v53, 15, 3) || advance_tok(a1) || advance_tok(a1))
        {
          goto LABEL_60;
        }

LABEL_30:
        v57 = OUTLINED_FUNCTION_10_37();
        savescptr(v57, v58, v59);
        v56 = "D";
        v54 = a1;
        v55 = 8;
        goto LABEL_29;
      }

LABEL_17:
      v15 = OUTLINED_FUNCTION_8_38(v15, v16, v17, v18, v19, v20, v21, v22, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142);
      if (!v15)
      {
        OUTLINED_FUNCTION_4_39();
        v15 = test_string_s();
        if (!v15)
        {
          break;
        }
      }

LABEL_31:
      v15 = OUTLINED_FUNCTION_8_38(v15, v16, v17, v18, v19, v20, v21, v22, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142);
      if (!v15)
      {
        OUTLINED_FUNCTION_4_39();
        v15 = test_string_s();
        if (!v15)
        {
          break;
        }
      }

LABEL_33:
      v15 = OUTLINED_FUNCTION_8_38(v15, v16, v17, v18, v19, v20, v21, v22, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142);
      if (v15 || (OUTLINED_FUNCTION_4_39(), v15 = test_string_s(), v15))
      {
LABEL_35:
        v15 = OUTLINED_FUNCTION_8_38(v15, v16, v17, v18, v19, v20, v21, v22, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142);
        if (!v15)
        {
          OUTLINED_FUNCTION_4_39();
          v15 = test_string_s();
          if (!v15)
          {
            break;
          }
        }

LABEL_37:
        v15 = OUTLINED_FUNCTION_8_38(v15, v16, v17, v18, v19, v20, v21, v22, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142);
        if (v15 || (OUTLINED_FUNCTION_4_39(), v15 = test_string_s(), v15))
        {
LABEL_39:
          v15 = OUTLINED_FUNCTION_8_38(v15, v16, v17, v18, v19, v20, v21, v22, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142);
          if (!v15)
          {
            OUTLINED_FUNCTION_4_39();
            v15 = test_string_s();
            if (!v15)
            {
              break;
            }
          }

LABEL_41:
          v15 = OUTLINED_FUNCTION_8_38(v15, v16, v17, v18, v19, v20, v21, v22, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142);
          if (v15 || (OUTLINED_FUNCTION_4_39(), v15 = test_string_s(), v15))
          {
LABEL_43:
            if (!OUTLINED_FUNCTION_8_38(v15, v16, v17, v18, v19, v20, v21, v22, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142))
            {
              OUTLINED_FUNCTION_4_39();
              if (!test_string_s())
              {
                break;
              }
            }

LABEL_45:
            v60 = OUTLINED_FUNCTION_9_37();
            starttest(v60, v61);
            if (!OUTLINED_FUNCTION_8_38(v62, v63, v64, v65, v66, v67, v68, v69, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142))
            {
              v82 = OUTLINED_FUNCTION_7_38();
              if (testFldeq(v82, v83, 15, 2) || advance_tok(a1) || advance_tok(a1))
              {
                goto LABEL_60;
              }

              goto LABEL_54;
            }

LABEL_46:
            v70 = OUTLINED_FUNCTION_9_37();
            starttest(v70, v71);
            if (!OUTLINED_FUNCTION_8_38(v72, v73, v74, v75, v76, v77, v78, v79, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142))
            {
              v80 = OUTLINED_FUNCTION_7_38();
              if (testFldeq(v80, v81, 15, 5) || advance_tok(a1) || advance_tok(a1))
              {
                goto LABEL_60;
              }

              goto LABEL_54;
            }

LABEL_55:
            v87 = OUTLINED_FUNCTION_10_37();
            lpta_rpta_loadp(v87, v88, v89);
            v90 = OUTLINED_FUNCTION_13_36();
            print_stream(v90, v91, 2, v92, v93);
LABEL_56:
            v94 = OUTLINED_FUNCTION_9_37();
            starttest(v94, v95);
            if (!OUTLINED_FUNCTION_8_38(v96, v97, v98, v99, v100, v101, v102, v103, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142))
            {
              v104 = OUTLINED_FUNCTION_7_38();
              if (testFldeq(v104, v105, 17, 1) || advance_tok(a1))
              {
                goto LABEL_60;
              }

LABEL_59:
              v106 = OUTLINED_FUNCTION_9_37();
              if (test_synch(v106, v107, 1u, v108))
              {
LABEL_60:
                v109 = *(a1 + 104);
                if (v109)
                {
                  *(a1 + 104) = 0;
                  v15 = v109;
                }

                else
                {
                  v15 = vback(a1, 0);
                }

                switch(v15)
                {
                  case 1:
                    continue;
                  case 2:
                    goto LABEL_12;
                  case 3:
                    goto LABEL_15;
                  case 4:
                    goto LABEL_56;
                  case 5:
                    goto LABEL_16;
                  case 6:
                  case 18:
                  case 20:
                    goto LABEL_54;
                  case 7:
                    goto LABEL_17;
                  case 8:
                    goto LABEL_30;
                  case 9:
                    goto LABEL_31;
                  case 10:
                    goto LABEL_33;
                  case 11:
                    goto LABEL_35;
                  case 12:
                    goto LABEL_37;
                  case 13:
                    goto LABEL_39;
                  case 14:
                    goto LABEL_41;
                  case 15:
                    goto LABEL_43;
                  case 16:
                    goto LABEL_45;
                  case 17:
                    goto LABEL_46;
                  case 19:
                    goto LABEL_55;
                  case 21:
                    goto LABEL_65;
                  case 22:
                    goto LABEL_59;
                  default:
                    goto LABEL_3;
                }
              }

              v110 = OUTLINED_FUNCTION_13_36();
              print_lit(v110, v111, v112);
            }

LABEL_65:
            *(a3 + 8) = v141;
            v6 = 0;
            goto LABEL_4;
          }
        }
      }

      break;
    }

    v54 = OUTLINED_FUNCTION_13_36();
LABEL_29:
    print_lit(v54, v55, v56);
    goto LABEL_56;
  }

LABEL_3:
  v6 = 94;
LABEL_4:
  vretproc(a1);
  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t insert_fren_spr_phone(uint64_t a1, __int16 *a2, __int16 *a3)
{
  v763 = *MEMORY[0x277D85DE8];
  v758[0] = 0;
  v758[1] = 0;
  v756 = 0;
  v757 = 0;
  memset(v755, 0, sizeof(v755));
  v753 = 0;
  v754 = 0;
  v751 = 0;
  v752 = 0;
  bzero(&v728, 0xB8uLL);
  bzero(v762, 0xC0uLL);
  if (setjmp(v762) || ventproc(a1, &v728, v761, v760, v759, v762))
  {
    goto LABEL_3;
  }

  v8 = OUTLINED_FUNCTION_6_38();
  get_parm(v8, v9, a2, -6);
  get_parm(a1, &v756, a3, -6);
  *&v755[16] = 0;
  *&v755[24] = 0;
  *&v755[30] = 0;
  *v755 = -65534;
  push_ptr_init(a1, &v753);
  push_ptr_init(a1, &v751);
  fence_40(a1);
  v10 = OUTLINED_FUNCTION_6_38();
  if (!lpta_loadp_setscan_r(v10, v11) && !test_string_s())
  {
    *(a1 + 136) = 1;
    *(a1 + 112) = v757;
    *(a1 + 128) = 0;
    if (!test_ptr(a1))
    {
      lpta_rpta_loadp(a1, v758, &v756);
      v12 = OUTLINED_FUNCTION_4_39();
      if (!insert_2pt_s(v12, v13, v14, v15, v16))
      {
        goto LABEL_203;
      }
    }
  }

  v17 = 0;
  HIDWORD(v727) = 0;
  v726 = 47;
  v725 = 49;
  v724 = 50;
LABEL_10:
  v18 = OUTLINED_FUNCTION_6_38();
  if (!lpta_loadp_setscan_r(v18, v19))
  {
    OUTLINED_FUNCTION_3_41();
    v20 = test_string_s();
    if (!v20 && !OUTLINED_FUNCTION_1_42(v20, v21, v22, v23, v24, v25, v26, v27, v723, v724, v725, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, *v755, *&v755[8], *&v755[16], *&v755[24], *&v755[32], v756, v757))
    {
      v28 = OUTLINED_FUNCTION_6_38();
      lpta_rpta_loadp(v28, v29, &v756);
      v30 = OUTLINED_FUNCTION_2_41();
      if (!insert_2pt_s(v30, v31, v32, &unk_28064BACF, SHIDWORD(v727)))
      {
        goto LABEL_203;
      }
    }
  }

LABEL_14:
  v33 = OUTLINED_FUNCTION_6_38();
  if (!lpta_loadp_setscan_r(v33, v34))
  {
    OUTLINED_FUNCTION_3_41();
    v35 = test_string_s();
    if (!v35 && !OUTLINED_FUNCTION_1_42(v35, v36, v37, v38, v39, v40, v41, v42, v723, v724, v725, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, *v755, *&v755[8], *&v755[16], *&v755[24], *&v755[32], v756, v757))
    {
      v43 = OUTLINED_FUNCTION_6_38();
      lpta_rpta_loadp(v43, v44, &v756);
      v45 = OUTLINED_FUNCTION_2_41();
      if (!insert_2pt_s(v45, v46, v47, &unk_28064BAD1, SHIDWORD(v727)))
      {
        goto LABEL_203;
      }
    }
  }

LABEL_18:
  v48 = OUTLINED_FUNCTION_6_38();
  if (!lpta_loadp_setscan_r(v48, v49))
  {
    OUTLINED_FUNCTION_3_41();
    v50 = test_string_s();
    if (!v50 && !OUTLINED_FUNCTION_1_42(v50, v51, v52, v53, v54, v55, v56, v57, v723, v724, v725, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, *v755, *&v755[8], *&v755[16], *&v755[24], *&v755[32], v756, v757))
    {
      v58 = OUTLINED_FUNCTION_6_38();
      lpta_rpta_loadp(v58, v59, &v756);
      v60 = OUTLINED_FUNCTION_2_41();
      if (!insert_2pt_s(v60, v61, v62, &unk_28064BACC, SHIDWORD(v727)))
      {
        goto LABEL_203;
      }
    }
  }

LABEL_22:
  v63 = OUTLINED_FUNCTION_6_38();
  if (!lpta_loadp_setscan_r(v63, v64))
  {
    OUTLINED_FUNCTION_3_41();
    v65 = test_string_s();
    if (!v65 && !OUTLINED_FUNCTION_1_42(v65, v66, v67, v68, v69, v70, v71, v72, v723, v724, v725, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, *v755, *&v755[8], *&v755[16], *&v755[24], *&v755[32], v756, v757))
    {
      v73 = OUTLINED_FUNCTION_6_38();
      lpta_rpta_loadp(v73, v74, &v756);
      v75 = OUTLINED_FUNCTION_2_41();
      if (!insert_2pt_s(v75, v76, v77, &unk_28064BAD4, SHIDWORD(v727)))
      {
        goto LABEL_203;
      }
    }
  }

LABEL_26:
  v78 = OUTLINED_FUNCTION_6_38();
  if (!lpta_loadp_setscan_r(v78, v79))
  {
    OUTLINED_FUNCTION_3_41();
    v80 = test_string_s();
    if (!v80 && !OUTLINED_FUNCTION_1_42(v80, v81, v82, v83, v84, v85, v86, v87, v723, v724, v725, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, *v755, *&v755[8], *&v755[16], *&v755[24], *&v755[32], v756, v757))
    {
      v88 = OUTLINED_FUNCTION_6_38();
      lpta_rpta_loadp(v88, v89, &v756);
      v90 = OUTLINED_FUNCTION_2_41();
      if (!insert_2pt_s(v90, v91, v92, &unk_28064BAD6, SHIDWORD(v727)))
      {
        goto LABEL_203;
      }
    }
  }

LABEL_30:
  v93 = OUTLINED_FUNCTION_6_38();
  if (!lpta_loadp_setscan_r(v93, v94))
  {
    OUTLINED_FUNCTION_3_41();
    v95 = test_string_s();
    if (!v95 && !OUTLINED_FUNCTION_1_42(v95, v96, v97, v98, v99, v100, v101, v102, v723, v724, v725, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, *v755, *&v755[8], *&v755[16], *&v755[24], *&v755[32], v756, v757))
    {
      v103 = OUTLINED_FUNCTION_6_38();
      lpta_rpta_loadp(v103, v104, &v756);
      v105 = OUTLINED_FUNCTION_2_41();
      if (!insert_2pt_s(v105, v106, v107, &unk_28064BAD8, SHIDWORD(v727)))
      {
        goto LABEL_203;
      }
    }
  }

LABEL_34:
  v108 = OUTLINED_FUNCTION_6_38();
  if (!lpta_loadp_setscan_r(v108, v109))
  {
    OUTLINED_FUNCTION_3_41();
    v110 = test_string_s();
    if (!v110 && !OUTLINED_FUNCTION_1_42(v110, v111, v112, v113, v114, v115, v116, v117, v723, v724, v725, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, *v755, *&v755[8], *&v755[16], *&v755[24], *&v755[32], v756, v757))
    {
      v118 = OUTLINED_FUNCTION_6_38();
      lpta_rpta_loadp(v118, v119, &v756);
      v120 = OUTLINED_FUNCTION_2_41();
      if (!insert_2pt_s(v120, v121, v122, &unk_28064BADA, SHIDWORD(v727)))
      {
        goto LABEL_203;
      }
    }
  }

LABEL_38:
  v123 = OUTLINED_FUNCTION_6_38();
  if (!lpta_loadp_setscan_r(v123, v124))
  {
    OUTLINED_FUNCTION_3_41();
    v125 = test_string_s();
    if (!v125 && !OUTLINED_FUNCTION_1_42(v125, v126, v127, v128, v129, v130, v131, v132, v723, v724, v725, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, *v755, *&v755[8], *&v755[16], *&v755[24], *&v755[32], v756, v757))
    {
      v133 = OUTLINED_FUNCTION_6_38();
      lpta_rpta_loadp(v133, v134, &v756);
      v135 = OUTLINED_FUNCTION_2_41();
      if (!insert_2pt_s(v135, v136, v137, &unk_28064BACD, SHIDWORD(v727)))
      {
        goto LABEL_203;
      }
    }
  }

LABEL_42:
  v138 = OUTLINED_FUNCTION_6_38();
  if (!lpta_loadp_setscan_r(v138, v139))
  {
    OUTLINED_FUNCTION_3_41();
    v140 = test_string_s();
    if (!v140 && !OUTLINED_FUNCTION_1_42(v140, v141, v142, v143, v144, v145, v146, v147, v723, v724, v725, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, *v755, *&v755[8], *&v755[16], *&v755[24], *&v755[32], v756, v757))
    {
      v148 = OUTLINED_FUNCTION_6_38();
      lpta_rpta_loadp(v148, v149, &v756);
      v150 = OUTLINED_FUNCTION_2_41();
      if (!insert_2pt_s(v150, v151, v152, &unk_28064BADD, SHIDWORD(v727)))
      {
        goto LABEL_203;
      }
    }
  }

LABEL_46:
  v153 = OUTLINED_FUNCTION_6_38();
  if (!lpta_loadp_setscan_r(v153, v154))
  {
    OUTLINED_FUNCTION_3_41();
    v155 = test_string_s();
    if (!v155 && !OUTLINED_FUNCTION_1_42(v155, v156, v157, v158, v159, v160, v161, v162, v723, v724, v725, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, *v755, *&v755[8], *&v755[16], *&v755[24], *&v755[32], v756, v757))
    {
      v163 = OUTLINED_FUNCTION_6_38();
      lpta_rpta_loadp(v163, v164, &v756);
      v165 = OUTLINED_FUNCTION_2_41();
      if (!insert_2pt_s(v165, v166, v167, &unk_28064BAD0, SHIDWORD(v727)))
      {
        goto LABEL_203;
      }
    }
  }

LABEL_50:
  v168 = OUTLINED_FUNCTION_6_38();
  if (!lpta_loadp_setscan_r(v168, v169))
  {
    OUTLINED_FUNCTION_3_41();
    v170 = test_string_s();
    if (!v170 && !OUTLINED_FUNCTION_1_42(v170, v171, v172, v173, v174, v175, v176, v177, v723, v724, v725, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, *v755, *&v755[8], *&v755[16], *&v755[24], *&v755[32], v756, v757))
    {
      v178 = OUTLINED_FUNCTION_6_38();
      lpta_rpta_loadp(v178, v179, &v756);
      v180 = OUTLINED_FUNCTION_2_41();
      if (!insert_2pt_s(v180, v181, v182, &unk_28064BAE0, SHIDWORD(v727)))
      {
        goto LABEL_203;
      }
    }
  }

LABEL_54:
  v183 = OUTLINED_FUNCTION_6_38();
  if (!lpta_loadp_setscan_r(v183, v184))
  {
    OUTLINED_FUNCTION_3_41();
    v185 = test_string_s();
    if (!v185 && !OUTLINED_FUNCTION_1_42(v185, v186, v187, v188, v189, v190, v191, v192, v723, v724, v725, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, *v755, *&v755[8], *&v755[16], *&v755[24], *&v755[32], v756, v757))
    {
      v193 = OUTLINED_FUNCTION_6_38();
      lpta_rpta_loadp(v193, v194, &v756);
      v195 = OUTLINED_FUNCTION_2_41();
      if (!insert_2pt_s(v195, v196, v197, &unk_28064BAD5, SHIDWORD(v727)))
      {
        goto LABEL_203;
      }
    }
  }

LABEL_58:
  v198 = OUTLINED_FUNCTION_6_38();
  if (!lpta_loadp_setscan_r(v198, v199))
  {
    OUTLINED_FUNCTION_3_41();
    v200 = test_string_s();
    if (!v200 && !OUTLINED_FUNCTION_1_42(v200, v201, v202, v203, v204, v205, v206, v207, v723, v724, v725, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, *v755, *&v755[8], *&v755[16], *&v755[24], *&v755[32], v756, v757))
    {
      v208 = OUTLINED_FUNCTION_6_38();
      lpta_rpta_loadp(v208, v209, &v756);
      v210 = OUTLINED_FUNCTION_2_41();
      if (!insert_2pt_s(v210, v211, v212, &unk_28064BAE1, SHIDWORD(v727)))
      {
        goto LABEL_203;
      }
    }
  }

LABEL_62:
  v213 = OUTLINED_FUNCTION_6_38();
  if (!lpta_loadp_setscan_r(v213, v214))
  {
    OUTLINED_FUNCTION_5_38();
    v215 = test_string_s();
    if (!v215 && !OUTLINED_FUNCTION_1_42(v215, v216, v217, v218, v219, v220, v221, v222, v723, v724, v725, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, *v755, *&v755[8], *&v755[16], *&v755[24], *&v755[32], v756, v757))
    {
      v223 = OUTLINED_FUNCTION_6_38();
      lpta_rpta_loadp(v223, v224, &v756);
      v225 = OUTLINED_FUNCTION_2_41();
      if (!insert_2pt_s(v225, v226, v227, &unk_28064BACA, SHIDWORD(v727)))
      {
        goto LABEL_203;
      }
    }
  }

LABEL_66:
  v228 = OUTLINED_FUNCTION_6_38();
  if (!lpta_loadp_setscan_r(v228, v229))
  {
    OUTLINED_FUNCTION_5_38();
    v230 = test_string_s();
    if (!v230 && !OUTLINED_FUNCTION_1_42(v230, v231, v232, v233, v234, v235, v236, v237, v723, v724, v725, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, *v755, *&v755[8], *&v755[16], *&v755[24], *&v755[32], v756, v757))
    {
      v238 = OUTLINED_FUNCTION_6_38();
      lpta_rpta_loadp(v238, v239, &v756);
      v240 = OUTLINED_FUNCTION_2_41();
      if (!insert_2pt_s(v240, v241, v242, &unk_28064BACB, SHIDWORD(v727)))
      {
        goto LABEL_203;
      }
    }
  }

LABEL_70:
  v243 = OUTLINED_FUNCTION_6_38();
  if (!lpta_loadp_setscan_r(v243, v244))
  {
    OUTLINED_FUNCTION_3_41();
    v245 = test_string_s();
    if (!v245 && !OUTLINED_FUNCTION_1_42(v245, v246, v247, v248, v249, v250, v251, v252, v723, v724, v725, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, *v755, *&v755[8], *&v755[16], *&v755[24], *&v755[32], v756, v757))
    {
      v253 = OUTLINED_FUNCTION_6_38();
      lpta_rpta_loadp(v253, v254, &v756);
      v255 = OUTLINED_FUNCTION_2_41();
      if (!insert_2pt_s(v255, v256, v257, &unk_28064BAE3, SHIDWORD(v727)))
      {
        goto LABEL_203;
      }
    }
  }

LABEL_74:
  v258 = OUTLINED_FUNCTION_6_38();
  if (!lpta_loadp_setscan_r(v258, v259))
  {
    OUTLINED_FUNCTION_3_41();
    v260 = test_string_s();
    if (!v260 && !OUTLINED_FUNCTION_1_42(v260, v261, v262, v263, v264, v265, v266, v267, v723, v724, v725, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, *v755, *&v755[8], *&v755[16], *&v755[24], *&v755[32], v756, v757))
    {
      v268 = OUTLINED_FUNCTION_6_38();
      lpta_rpta_loadp(v268, v269, &v756);
      v270 = OUTLINED_FUNCTION_2_41();
      if (!insert_2pt_s(v270, v271, v272, &unk_28064BAE2, SHIDWORD(v727)))
      {
        goto LABEL_203;
      }
    }
  }

LABEL_78:
  v273 = OUTLINED_FUNCTION_6_38();
  if (!lpta_loadp_setscan_r(v273, v274))
  {
    OUTLINED_FUNCTION_3_41();
    v275 = test_string_s();
    if (!v275 && !OUTLINED_FUNCTION_1_42(v275, v276, v277, v278, v279, v280, v281, v282, v723, v724, v725, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, *v755, *&v755[8], *&v755[16], *&v755[24], *&v755[32], v756, v757))
    {
      v283 = OUTLINED_FUNCTION_6_38();
      lpta_rpta_loadp(v283, v284, &v756);
      v285 = OUTLINED_FUNCTION_0_43();
      if (!insert_2pt_s(v285, v286, v287, &unk_28064BADC, v288))
      {
        goto LABEL_203;
      }
    }
  }

LABEL_82:
  v289 = OUTLINED_FUNCTION_6_38();
  if (!lpta_loadp_setscan_r(v289, v290))
  {
    OUTLINED_FUNCTION_3_41();
    v291 = test_string_s();
    if (!v291 && !OUTLINED_FUNCTION_1_42(v291, v292, v293, v294, v295, v296, v297, v298, v723, v724, v725, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, *v755, *&v755[8], *&v755[16], *&v755[24], *&v755[32], v756, v757))
    {
      v299 = OUTLINED_FUNCTION_6_38();
      lpta_rpta_loadp(v299, v300, &v756);
      v301 = OUTLINED_FUNCTION_0_43();
      if (!insert_2pt_s(v301, v302, v303, &unk_28064BAD2, v304))
      {
        goto LABEL_203;
      }
    }
  }

LABEL_86:
  v305 = OUTLINED_FUNCTION_6_38();
  if (!lpta_loadp_setscan_r(v305, v306))
  {
    OUTLINED_FUNCTION_3_41();
    v307 = test_string_s();
    if (!v307 && !OUTLINED_FUNCTION_1_42(v307, v308, v309, v310, v311, v312, v313, v314, v723, v724, v725, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, *v755, *&v755[8], *&v755[16], *&v755[24], *&v755[32], v756, v757))
    {
      v315 = OUTLINED_FUNCTION_6_38();
      lpta_rpta_loadp(v315, v316, &v756);
      v317 = OUTLINED_FUNCTION_0_43();
      if (!insert_2pt_s(v317, v318, v319, &unk_28064BAD7, v320))
      {
        goto LABEL_203;
      }
    }
  }

LABEL_90:
  v321 = OUTLINED_FUNCTION_6_38();
  if (!lpta_loadp_setscan_r(v321, v322))
  {
    OUTLINED_FUNCTION_3_41();
    v323 = test_string_s();
    if (!v323 && !OUTLINED_FUNCTION_1_42(v323, v324, v325, v326, v327, v328, v329, v330, v723, v724, v725, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, *v755, *&v755[8], *&v755[16], *&v755[24], *&v755[32], v756, v757))
    {
      v331 = OUTLINED_FUNCTION_6_38();
      lpta_rpta_loadp(v331, v332, &v756);
      v333 = OUTLINED_FUNCTION_0_43();
      if (!insert_2pt_s(v333, v334, v335, &unk_28064BAE8, v336))
      {
        goto LABEL_203;
      }
    }
  }

LABEL_94:
  v337 = OUTLINED_FUNCTION_6_38();
  if (!lpta_loadp_setscan_r(v337, v338))
  {
    OUTLINED_FUNCTION_3_41();
    v339 = test_string_s();
    if (!v339 && !OUTLINED_FUNCTION_1_42(v339, v340, v341, v342, v343, v344, v345, v346, v723, v724, v725, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, *v755, *&v755[8], *&v755[16], *&v755[24], *&v755[32], v756, v757))
    {
      v347 = OUTLINED_FUNCTION_6_38();
      lpta_rpta_loadp(v347, v348, &v756);
      v349 = OUTLINED_FUNCTION_0_43();
      if (!insert_2pt_s(v349, v350, v351, &unk_28064BAD9, v352))
      {
        goto LABEL_203;
      }
    }
  }

LABEL_98:
  v353 = OUTLINED_FUNCTION_6_38();
  if (!lpta_loadp_setscan_r(v353, v354))
  {
    OUTLINED_FUNCTION_3_41();
    v355 = test_string_s();
    if (!v355 && !OUTLINED_FUNCTION_1_42(v355, v356, v357, v358, v359, v360, v361, v362, v723, v724, v725, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, *v755, *&v755[8], *&v755[16], *&v755[24], *&v755[32], v756, v757))
    {
      v363 = OUTLINED_FUNCTION_6_38();
      lpta_rpta_loadp(v363, v364, &v756);
      v365 = OUTLINED_FUNCTION_0_43();
      if (!insert_2pt_s(v365, v366, v367, &unk_28064BAD3, v368))
      {
        goto LABEL_203;
      }
    }
  }

LABEL_102:
  v369 = OUTLINED_FUNCTION_6_38();
  if (!lpta_loadp_setscan_r(v369, v370))
  {
    OUTLINED_FUNCTION_5_38();
    v371 = test_string_s();
    if (!v371 && !OUTLINED_FUNCTION_1_42(v371, v372, v373, v374, v375, v376, v377, v378, v723, v724, v725, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, *v755, *&v755[8], *&v755[16], *&v755[24], *&v755[32], v756, v757))
    {
      v379 = OUTLINED_FUNCTION_6_38();
      lpta_rpta_loadp(v379, v380, &v756);
      v381 = OUTLINED_FUNCTION_0_43();
      if (!insert_2pt_s(v381, v382, v383, &unk_28064BAC4, v384))
      {
        goto LABEL_203;
      }
    }
  }

LABEL_106:
  v385 = OUTLINED_FUNCTION_6_38();
  if (!lpta_loadp_setscan_r(v385, v386))
  {
    OUTLINED_FUNCTION_5_38();
    v387 = test_string_s();
    if (!v387 && !OUTLINED_FUNCTION_1_42(v387, v388, v389, v390, v391, v392, v393, v394, v723, v724, v725, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, *v755, *&v755[8], *&v755[16], *&v755[24], *&v755[32], v756, v757))
    {
      v395 = OUTLINED_FUNCTION_6_38();
      lpta_rpta_loadp(v395, v396, &v756);
      v397 = OUTLINED_FUNCTION_0_43();
      if (!insert_2pt_s(v397, v398, v399, &unk_28064BAC5, v400))
      {
        goto LABEL_203;
      }
    }
  }

LABEL_110:
  v401 = OUTLINED_FUNCTION_6_38();
  if (!lpta_loadp_setscan_r(v401, v402))
  {
    OUTLINED_FUNCTION_5_38();
    v403 = test_string_s();
    if (!v403 && !OUTLINED_FUNCTION_1_42(v403, v404, v405, v406, v407, v408, v409, v410, v723, v724, v725, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, *v755, *&v755[8], *&v755[16], *&v755[24], *&v755[32], v756, v757))
    {
      v411 = OUTLINED_FUNCTION_6_38();
      lpta_rpta_loadp(v411, v412, &v756);
      v413 = OUTLINED_FUNCTION_0_43();
      if (!insert_2pt_s(v413, v414, v415, &unk_28064BAC6, v416))
      {
        goto LABEL_203;
      }
    }
  }

LABEL_114:
  v417 = OUTLINED_FUNCTION_6_38();
  if (!lpta_loadp_setscan_r(v417, v418))
  {
    OUTLINED_FUNCTION_5_38();
    v419 = test_string_s();
    if (!v419 && !OUTLINED_FUNCTION_1_42(v419, v420, v421, v422, v423, v424, v425, v426, v723, v724, v725, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, *v755, *&v755[8], *&v755[16], *&v755[24], *&v755[32], v756, v757))
    {
      v427 = OUTLINED_FUNCTION_6_38();
      lpta_rpta_loadp(v427, v428, &v756);
      v429 = OUTLINED_FUNCTION_0_43();
      if (!insert_2pt_s(v429, v430, v431, &unk_28064BAC7, v432))
      {
        goto LABEL_203;
      }
    }
  }

LABEL_118:
  v433 = OUTLINED_FUNCTION_6_38();
  if (!lpta_loadp_setscan_r(v433, v434))
  {
    OUTLINED_FUNCTION_5_38();
    v435 = test_string_s();
    if (!v435 && !OUTLINED_FUNCTION_1_42(v435, v436, v437, v438, v439, v440, v441, v442, v723, v724, v725, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, *v755, *&v755[8], *&v755[16], *&v755[24], *&v755[32], v756, v757))
    {
      v443 = OUTLINED_FUNCTION_6_38();
      lpta_rpta_loadp(v443, v444, &v756);
      v445 = OUTLINED_FUNCTION_0_43();
      if (!insert_2pt_s(v445, v446, v447, &unk_28064BAC8, v448))
      {
        goto LABEL_203;
      }
    }
  }

LABEL_122:
  v449 = OUTLINED_FUNCTION_6_38();
  if (!lpta_loadp_setscan_r(v449, v450))
  {
    OUTLINED_FUNCTION_3_41();
    v451 = test_string_s();
    if (!v451 && !OUTLINED_FUNCTION_1_42(v451, v452, v453, v454, v455, v456, v457, v458, v723, v724, v725, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, *v755, *&v755[8], *&v755[16], *&v755[24], *&v755[32], v756, v757))
    {
      v459 = OUTLINED_FUNCTION_6_38();
      lpta_rpta_loadp(v459, v460, &v756);
      v461 = OUTLINED_FUNCTION_0_43();
      if (!insert_2pt_s(v461, v462, v463, &unk_28064BAEB, v464))
      {
        goto LABEL_203;
      }
    }
  }

LABEL_126:
  v465 = OUTLINED_FUNCTION_6_38();
  if (!lpta_loadp_setscan_r(v465, v466))
  {
    OUTLINED_FUNCTION_3_41();
    v467 = test_string_s();
    if (!v467 && !OUTLINED_FUNCTION_1_42(v467, v468, v469, v470, v471, v472, v473, v474, v723, v724, v725, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, *v755, *&v755[8], *&v755[16], *&v755[24], *&v755[32], v756, v757))
    {
      v475 = OUTLINED_FUNCTION_6_38();
      lpta_rpta_loadp(v475, v476, &v756);
      v477 = OUTLINED_FUNCTION_0_43();
      if (!insert_2pt_s(v477, v478, v479, &unk_28064BAED, v480))
      {
        goto LABEL_203;
      }
    }
  }

LABEL_130:
  v481 = OUTLINED_FUNCTION_6_38();
  if (!lpta_loadp_setscan_r(v481, v482))
  {
    OUTLINED_FUNCTION_3_41();
    v483 = test_string_s();
    if (!v483 && !OUTLINED_FUNCTION_1_42(v483, v484, v485, v486, v487, v488, v489, v490, v723, v724, v725, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, *v755, *&v755[8], *&v755[16], *&v755[24], *&v755[32], v756, v757))
    {
      v491 = OUTLINED_FUNCTION_6_38();
      lpta_rpta_loadp(v491, v492, &v756);
      v493 = OUTLINED_FUNCTION_0_43();
      if (!insert_2pt_s(v493, v494, v495, &unk_28064BAEC, v496))
      {
LABEL_203:
        vretproc(a1);
        result = 0;
        goto LABEL_4;
      }
    }
  }

LABEL_134:
  v497 = OUTLINED_FUNCTION_6_38();
  if (!lpta_loadp_setscan_r(v497, v498))
  {
    OUTLINED_FUNCTION_3_41();
    v499 = test_string_s();
    if (!v499 && !OUTLINED_FUNCTION_1_42(v499, v500, v501, v502, v503, v504, v505, v506, v723, v724, v725, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, *v755, *&v755[8], *&v755[16], *&v755[24], *&v755[32], v756, v757))
    {
      v507 = OUTLINED_FUNCTION_6_38();
      lpta_rpta_loadp(v507, v508, &v756);
      v509 = OUTLINED_FUNCTION_0_43();
      if (!insert_2pt_s(v509, v510, v511, &unk_28064BADB, v512))
      {
        goto LABEL_203;
      }
    }
  }

LABEL_138:
  v513 = OUTLINED_FUNCTION_6_38();
  if (!lpta_loadp_setscan_r(v513, v514))
  {
    OUTLINED_FUNCTION_3_41();
    v515 = test_string_s();
    if (!v515 && !OUTLINED_FUNCTION_1_42(v515, v516, v517, v518, v519, v520, v521, v522, v723, v724, v725, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, *v755, *&v755[8], *&v755[16], *&v755[24], *&v755[32], v756, v757))
    {
      v523 = OUTLINED_FUNCTION_6_38();
      lpta_rpta_loadp(v523, v524, &v756);
      v525 = OUTLINED_FUNCTION_0_43();
      if (!insert_2pt_s(v525, v526, v527, &unk_28064BAE5, v528))
      {
        goto LABEL_203;
      }
    }
  }

LABEL_142:
  v529 = OUTLINED_FUNCTION_6_38();
  if (!lpta_loadp_setscan_r(v529, v530))
  {
    OUTLINED_FUNCTION_3_41();
    v531 = test_string_s();
    if (!v531 && !OUTLINED_FUNCTION_1_42(v531, v532, v533, v534, v535, v536, v537, v538, v723, v724, v725, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, *v755, *&v755[8], *&v755[16], *&v755[24], *&v755[32], v756, v757))
    {
      v539 = OUTLINED_FUNCTION_6_38();
      lpta_rpta_loadp(v539, v540, &v756);
      v541 = OUTLINED_FUNCTION_0_43();
      if (!insert_2pt_s(v541, v542, v543, &unk_28064BAEA, v544))
      {
        goto LABEL_203;
      }
    }
  }

LABEL_146:
  v545 = OUTLINED_FUNCTION_6_38();
  if (!lpta_loadp_setscan_r(v545, v546))
  {
    OUTLINED_FUNCTION_3_41();
    v547 = test_string_s();
    if (!v547 && !OUTLINED_FUNCTION_1_42(v547, v548, v549, v550, v551, v552, v553, v554, v723, v724, v725, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, *v755, *&v755[8], *&v755[16], *&v755[24], *&v755[32], v756, v757))
    {
      v555 = OUTLINED_FUNCTION_6_38();
      lpta_rpta_loadp(v555, v556, &v756);
      v557 = OUTLINED_FUNCTION_0_43();
      if (!insert_2pt_s(v557, v558, v559, &unk_28064BAEF, v560))
      {
        goto LABEL_203;
      }
    }
  }

LABEL_150:
  v561 = OUTLINED_FUNCTION_6_38();
  if (!lpta_loadp_setscan_r(v561, v562))
  {
    OUTLINED_FUNCTION_3_41();
    v563 = test_string_s();
    if (!v563 && !OUTLINED_FUNCTION_1_42(v563, v564, v565, v566, v567, v568, v569, v570, v723, v724, v725, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, *v755, *&v755[8], *&v755[16], *&v755[24], *&v755[32], v756, v757))
    {
      v571 = OUTLINED_FUNCTION_6_38();
      lpta_rpta_loadp(v571, v572, &v756);
      v573 = OUTLINED_FUNCTION_0_43();
      if (!insert_2pt_s(v573, v574, v575, &unk_28064BAE6, v576))
      {
        goto LABEL_203;
      }
    }
  }

LABEL_154:
  v577 = OUTLINED_FUNCTION_6_38();
  if (!lpta_loadp_setscan_r(v577, v578))
  {
    OUTLINED_FUNCTION_3_41();
    v579 = test_string_s();
    if (!v579 && !OUTLINED_FUNCTION_1_42(v579, v580, v581, v582, v583, v584, v585, v586, v723, v724, v725, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, *v755, *&v755[8], *&v755[16], *&v755[24], *&v755[32], v756, v757))
    {
      v587 = OUTLINED_FUNCTION_6_38();
      lpta_rpta_loadp(v587, v588, &v756);
      v589 = OUTLINED_FUNCTION_0_43();
      if (!insert_2pt_s(v589, v590, v591, &unk_28064BAE9, v592))
      {
        goto LABEL_203;
      }
    }
  }

LABEL_158:
  v593 = OUTLINED_FUNCTION_6_38();
  if (!lpta_loadp_setscan_r(v593, v594))
  {
    OUTLINED_FUNCTION_3_41();
    v595 = test_string_s();
    if (!v595 && !OUTLINED_FUNCTION_1_42(v595, v596, v597, v598, v599, v600, v601, v602, v723, v724, v725, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, *v755, *&v755[8], *&v755[16], *&v755[24], *&v755[32], v756, v757))
    {
      v603 = OUTLINED_FUNCTION_6_38();
      lpta_rpta_loadp(v603, v604, &v756);
      v605 = OUTLINED_FUNCTION_0_43();
      if (!insert_2pt_s(v605, v606, v607, &unk_28064BAF1, v608))
      {
        goto LABEL_203;
      }
    }
  }

LABEL_162:
  v609 = OUTLINED_FUNCTION_6_38();
  if (!lpta_loadp_setscan_r(v609, v610))
  {
    OUTLINED_FUNCTION_3_41();
    v611 = test_string_s();
    if (!v611 && !OUTLINED_FUNCTION_1_42(v611, v612, v613, v614, v615, v616, v617, v618, v723, v724, v725, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, *v755, *&v755[8], *&v755[16], *&v755[24], *&v755[32], v756, v757))
    {
      v619 = OUTLINED_FUNCTION_6_38();
      lpta_rpta_loadp(v619, v620, &v756);
      v621 = OUTLINED_FUNCTION_0_43();
      if (!insert_2pt_s(v621, v622, v623, &unk_28064BAF3, v624))
      {
        goto LABEL_203;
      }
    }
  }

LABEL_166:
  v625 = OUTLINED_FUNCTION_6_38();
  if (!lpta_loadp_setscan_r(v625, v626))
  {
    OUTLINED_FUNCTION_3_41();
    v627 = test_string_s();
    if (!v627 && !OUTLINED_FUNCTION_1_42(v627, v628, v629, v630, v631, v632, v633, v634, v723, v724, v725, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, *v755, *&v755[8], *&v755[16], *&v755[24], *&v755[32], v756, v757))
    {
      v635 = OUTLINED_FUNCTION_6_38();
      lpta_rpta_loadp(v635, v636, &v756);
      v637 = OUTLINED_FUNCTION_0_43();
      if (!insert_2pt_s(v637, v638, v639, &unk_28064BAF0, v640))
      {
        goto LABEL_203;
      }
    }
  }

LABEL_170:
  v641 = OUTLINED_FUNCTION_6_38();
  if (!lpta_loadp_setscan_r(v641, v642))
  {
    OUTLINED_FUNCTION_3_41();
    v643 = test_string_s();
    if (!v643 && !OUTLINED_FUNCTION_1_42(v643, v644, v645, v646, v647, v648, v649, v650, v723, v724, v725, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, *v755, *&v755[8], *&v755[16], *&v755[24], *&v755[32], v756, v757))
    {
      v651 = OUTLINED_FUNCTION_6_38();
      lpta_rpta_loadp(v651, v652, &v756);
      v653 = OUTLINED_FUNCTION_0_43();
      if (!insert_2pt_s(v653, v654, v655, &unk_28064BAEE, v656))
      {
        goto LABEL_203;
      }
    }
  }

LABEL_174:
  v657 = OUTLINED_FUNCTION_6_38();
  if (!lpta_loadp_setscan_r(v657, v658))
  {
    v659 = test_string_s();
    if (!v659 && !OUTLINED_FUNCTION_1_42(v659, v660, v661, v662, v663, v664, v665, v666, v723, v724, v725, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, *v755, *&v755[8], *&v755[16], *&v755[24], *&v755[32], v756, v757))
    {
      v667 = OUTLINED_FUNCTION_6_38();
      lpta_rpta_loadp(v667, v668, &v756);
      v669 = OUTLINED_FUNCTION_0_43();
      if (!insert_2pt_s(v669, v670, v671, &unk_28064BAC9, v672))
      {
        goto LABEL_203;
      }
    }
  }

LABEL_178:
  v673 = OUTLINED_FUNCTION_6_38();
  if (!lpta_loadp_setscan_r(v673, v674))
  {
    OUTLINED_FUNCTION_3_41();
    v675 = test_string_s();
    if (!v675 && !OUTLINED_FUNCTION_1_42(v675, v676, v677, v678, v679, v680, v681, v682, v723, v724, v725, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, *v755, *&v755[8], *&v755[16], *&v755[24], *&v755[32], v756, v757))
    {
      v683 = OUTLINED_FUNCTION_6_38();
      lpta_rpta_loadp(v683, v684, &v756);
      v685 = OUTLINED_FUNCTION_0_43();
      if (!insert_2pt_s(v685, v686, v687, &unk_28064BAE7, v688))
      {
        goto LABEL_203;
      }
    }
  }

LABEL_182:
  v689 = OUTLINED_FUNCTION_12_37();
  starttest(v689, v690);
  v691 = OUTLINED_FUNCTION_6_38();
  if (!lpta_loadp_setscan_r(v691, v692))
  {
    OUTLINED_FUNCTION_5_38();
    v693 = test_string_s();
    if (!v693 && !OUTLINED_FUNCTION_1_42(v693, v694, v695, v696, v697, v698, v699, v700, v723, v724, v725, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, *v755, *&v755[8], *&v755[16], *&v755[24], *&v755[32], v756, v757))
    {
      v711 = OUTLINED_FUNCTION_6_38();
      lpta_rpta_loadp(v711, v712, &v756);
      settvar_s();
      npush_s(a1);
      strcpy(&v755[2], "\t");
      npop(a1, v755);
      OUTLINED_FUNCTION_7_38();
      insert_2ptv();
      if (v713)
      {
LABEL_195:
        v714 = v17;
        do
        {
          while (2)
          {
            v715 = *(a1 + 104);
            if (v715)
            {
              *(a1 + 104) = 0;
              v716 = v715;
              v17 = v714;
            }

            else
            {
              v716 = vback(a1, v714);
              v17 = 0;
            }

            switch(v716)
            {
              case 1:
                goto LABEL_10;
              case 2:
                goto LABEL_203;
              case 3:
                goto LABEL_14;
              case 4:
                goto LABEL_18;
              case 5:
                goto LABEL_22;
              case 6:
                goto LABEL_26;
              case 7:
                goto LABEL_30;
              case 8:
                goto LABEL_34;
              case 9:
                goto LABEL_38;
              case 10:
                goto LABEL_42;
              case 11:
                goto LABEL_46;
              case 12:
                goto LABEL_50;
              case 13:
                goto LABEL_54;
              case 14:
                goto LABEL_58;
              case 15:
                goto LABEL_62;
              case 16:
                goto LABEL_66;
              case 17:
                goto LABEL_70;
              case 18:
                goto LABEL_74;
              case 19:
                goto LABEL_78;
              case 20:
                goto LABEL_82;
              case 21:
                goto LABEL_86;
              case 22:
                goto LABEL_90;
              case 23:
                goto LABEL_94;
              case 24:
                goto LABEL_98;
              case 25:
                goto LABEL_102;
              case 26:
                goto LABEL_106;
              case 27:
                goto LABEL_110;
              case 28:
                goto LABEL_114;
              case 29:
                goto LABEL_118;
              case 30:
                goto LABEL_122;
              case 31:
                goto LABEL_126;
              case 32:
                goto LABEL_130;
              case 33:
                goto LABEL_134;
              case 34:
                goto LABEL_138;
              case 35:
                goto LABEL_142;
              case 36:
                goto LABEL_146;
              case 37:
                goto LABEL_150;
              case 38:
                goto LABEL_154;
              case 39:
                goto LABEL_158;
              case 40:
                goto LABEL_162;
              case 41:
                goto LABEL_166;
              case 42:
                goto LABEL_170;
              case 43:
                goto LABEL_174;
              case 44:
                goto LABEL_178;
              case 45:
                goto LABEL_182;
              case 46:
                goto LABEL_185;
              case 48:
                goto LABEL_186;
              case 49:
                bspop_boa(a1);
                v717 = testFldeq(a1, 1u, 4, 2);
                v714 = v17;
                if (v717)
                {
                  continue;
                }

                v718 = advance_tok(a1);
                v714 = v17;
                if (v718)
                {
                  continue;
                }

                break;
              case 50:
                goto LABEL_191;
              case 51:
                goto LABEL_202;
              default:
                goto LABEL_3;
            }

            break;
          }

LABEL_202:
          savescptr(a1, 51, &v753);
          v719 = OUTLINED_FUNCTION_11_37();
          lpta_rpta_loadp(v719, v720, v721);
          OUTLINED_FUNCTION_7_38();
          v722 = mark_s();
          v714 = v17;
        }

        while (v722);
        goto LABEL_203;
      }

      goto LABEL_203;
    }
  }

LABEL_185:
  starttest(a1, v726);
  v701 = OUTLINED_FUNCTION_6_38();
  if (!lpta_loadp_setscan_r(v701, v702))
  {
LABEL_186:
    savescptr(a1, 48, &v751);
    OUTLINED_FUNCTION_3_41();
    v703 = test_string_s();
    if (!v703 && !OUTLINED_FUNCTION_1_42(v703, v704, v705, v706, v707, v708, v709, v710, v723, v724, v725, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, *v755, *&v755[8], *&v755[16], *&v755[24], *&v755[32], v756, v757))
    {
      OUTLINED_FUNCTION_3_41();
      if (!test_string_s() && !lpta_loadp_setscan_l(a1, &v751))
      {
        bspush_ca_scan_boa();
LABEL_191:
        if (test_synch(a1, v724, 1u, &unk_28064BACC))
        {
          v17 = v17;
        }

        else
        {
          v17 = 1;
        }
      }
    }

    goto LABEL_195;
  }

LABEL_3:
  vretproc(a1);
  result = 94;
LABEL_4:
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t next_phone_is_vowel(void *a1, __int16 *a2, uint64_t a3, uint64_t a4)
{
  v43 = *MEMORY[0x277D85DE8];
  v38[0] = 0;
  v38[1] = 0;
  v36 = 0;
  v37 = 0;
  v34 = 0;
  v35 = 0;
  bzero(v33, 0xB8uLL);
  bzero(v42, 0xC0uLL);
  if (setjmp(v42))
  {
    goto LABEL_4;
  }

  if (ventproc(a1, v33, v41, v40, v39, v42))
  {
    goto LABEL_4;
  }

  v8 = OUTLINED_FUNCTION_11_37();
  get_parm(v8, v9, a2, -6);
  v10 = OUTLINED_FUNCTION_6_38();
  get_parm(v10, v11, a3, -6);
  v12 = OUTLINED_FUNCTION_12_37();
  get_parm(v12, v13, a4, -6);
  fence_40(a1);
  OUTLINED_FUNCTION_11_37();
  find_pair_of_single_quotes();
  if (v14)
  {
LABEL_4:
    vretproc(a1);
    result = 94;
  }

  else
  {
    lpta_loadpn(a1, &v36);
    rpta_loadpn(a1, &v34);
    if (compare_ptas(a1) || testeq(a1))
    {
      v17 = 0;
    }

    else
    {
      if (lpta_loadp_setscan_r(a1, v38))
      {
        LODWORD(v18) = 0;
      }

      else
      {
        v19 = advance_tok(a1);
        v20 = 0;
        LODWORD(v18) = 0;
        if (!v19)
        {
LABEL_14:
          LODWORD(v18) = v20;
          savescptr(a1, 4, &v36);
        }
      }

LABEL_15:
      v35 = v37;
      v17 = v18;
    }

    LODWORD(v18) = v17;
    while (2)
    {
      v21 = OUTLINED_FUNCTION_6_38();
      starttest(v21, v22);
      OUTLINED_FUNCTION_11_37();
      bspush_ca_boa();
      OUTLINED_FUNCTION_12_37();
      if (insert_spr_phone())
      {
        v23 = v18;
      }

      else
      {
        v23 = 1;
      }

LABEL_20:
      v24 = a1[13];
      if (v24)
      {
        a1[13] = 0;
        v25 = v24;
        v18 = v23;
      }

      else
      {
        v25 = vback(a1, v23);
        v18 = 0;
      }

      switch(v25)
      {
        case 2:
        case 5:
          continue;
        case 3:
          goto LABEL_15;
        case 4:
          v20 = v18;
          goto LABEL_14;
        case 6:
          starttest(a1, 8);
          v26 = OUTLINED_FUNCTION_12_37();
          if (lpta_loadp_setscan_r(v26, v27))
          {
            goto LABEL_4;
          }

          v28 = OUTLINED_FUNCTION_4_39();
          v31 = testFldeq(v28, v29, v30, 1);
          v23 = v18;
          if (!v31)
          {
            v32 = advance_tok(a1);
            v23 = v18;
            if (!v32)
            {
              goto LABEL_27;
            }
          }

          goto LABEL_20;
        case 7:
          bspop_boa(a1);
          goto LABEL_4;
        case 9:
LABEL_27:
          *(a3 + 8) = v37;
          *(a4 + 8) = v35;
          vretproc(a1);
          result = 0;
          break;
        default:
          goto LABEL_4;
      }

      break;
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t OUTLINED_FUNCTION_1_42(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  *(v47 + 136) = v48;
  *(v47 + 112) = a47;
  *(v47 + 128) = 0;

  return test_ptr(v47);
}

uint64_t OUTLINED_FUNCTION_8_38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{

  return lpta_loadp_setscan_r(v38, &a38);
}

uint64_t assign_stress(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v37 = *MEMORY[0x277D85DE8];
  v32 = 0;
  OUTLINED_FUNCTION_0_44(a1, a2, a3, a4, a5, a6, a7, a8, v31[0]);
  bzero(v36, 0xC0uLL);
  if (setjmp(v36) || ventproc(a1, v31, v35, v34, v33, v36))
  {
LABEL_3:
    v9 = 94;
    goto LABEL_4;
  }

  LOWORD(v32) = -4;
  fence_41(a1);
  HIWORD(v32) = 1;
  *(a1 + 6406) = *(a1 + 4014) - 1;
  if (*(a1 + 4050) == 1)
  {
    assign_user_stress();
LABEL_21:
    v9 = 0;
    goto LABEL_4;
  }

  while (2)
  {
    if (*(a1 + 4014) != 1)
    {
LABEL_18:
      assign_primary_stress(a1, v13, v14, v15, v16, v17, v18, v19);
LABEL_19:
      assign_secondary_stress(a1, v13, v14, v15, v16, v17, v18, v19);
LABEL_20:
      insert_zero_sylls();
      goto LABEL_21;
    }

    starttest(a1, 5);
    if (lpta_loadp_setscan_r(a1, a1 + 1320))
    {
      goto LABEL_13;
    }

    if (!npush_fld(a1, 4u, 6))
    {
      npush_i(a1);
      if (!if_testgt(a1, v20, v21, v22, v23, v24, v25, v26) && !advance_tok(a1))
      {
        move_i(a1, &v32, 0);
LABEL_13:
        lpta_rpta_loadp(a1, a1 + 6240, a1 + 6256);
        insert_2ptv();
        if (!v27)
        {
          v9 = 0;
          break;
        }
      }
    }

    v28 = *(a1 + 104);
    if (v28)
    {
      *(a1 + 104) = 0;
      v29 = v28;
    }

    else
    {
      v29 = vback(a1, 0);
    }

    v30 = v29 - 1;
    v9 = 0;
    switch(v30)
    {
      case 0:
        continue;
      case 1:
      case 2:
        goto LABEL_4;
      case 3:
        goto LABEL_18;
      case 4:
        goto LABEL_13;
      case 5:
        goto LABEL_19;
      case 6:
        goto LABEL_20;
      default:
        goto LABEL_3;
    }
  }

LABEL_4:
  v10 = v9;
  vretproc(a1);
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t assign_primary_stress(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = *MEMORY[0x277D85DE8];
  v15 = 0;
  v16 = 0;
  v14[0] = 0;
  v14[1] = 0;
  OUTLINED_FUNCTION_0_44(a1, a2, a3, a4, a5, a6, a7, a8, v13[0]);
  bzero(v20, 0xC0uLL);
  if (setjmp(v20) || ventproc(a1, v13, v19, v18, v17, v20))
  {
LABEL_3:
    vretproc(a1);
    result = 94;
  }

  else
  {
    push_ptr_init(a1, &v15);
    push_ptr_init(a1, v14);
    fence_41(a1);
    v16 = *(a1 + 6264);
    if (!lpta_loadp_setscan_l(a1, a1 + 6256) && !test_string_s())
    {
      --*(a1 + 6406);
      if (!lpta_loadp_setscan_l(a1, &v15) && !advanc(a1))
      {
LABEL_9:
        savescptr(a1, 2, &v15);
      }
    }

    while (2)
    {
      starttest(a1, 3);
      if (!lpta_loadp_setscan_l(a1, &v15) && !advanc(a1))
      {
LABEL_12:
        savescptr(a1, 4, v14);
      }

LABEL_13:
      lpta_rpta_loadp(a1, v14, &v15);
      if (insert_2pt_i(a1, 7u, 2, &unk_28064BB0C, 0))
      {
        v11 = *(a1 + 104);
        if (v11)
        {
          *(a1 + 104) = 0;
          v12 = v11;
        }

        else
        {
          v12 = vback(a1, 0);
        }

        switch(v12)
        {
          case 1:
            continue;
          case 2:
            goto LABEL_9;
          case 3:
            goto LABEL_13;
          case 4:
            goto LABEL_12;
          default:
            goto LABEL_3;
        }
      }

      break;
    }

    vretproc(a1);
    result = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t assign_secondary_stress(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20 = *MEMORY[0x277D85DE8];
  v15[0] = 0;
  v15[1] = 0;
  OUTLINED_FUNCTION_0_44(a1, a2, a3, a4, a5, a6, a7, a8, v14[0]);
  bzero(v19, 0xC0uLL);
  if (setjmp(v19) || ventproc(a1, v14, v18, v17, v16, v19))
  {
LABEL_3:
    v9 = 94;
  }

  else
  {
    push_ptr_init(a1, v15);
    fence_41(a1);
    if (*(a1 + 6406) >= 2)
    {
      starttest(a1, 2);
      if (!lpta_loadp_setscan_r(a1, a1 + 6240) && !advanc(a1))
      {
        goto LABEL_10;
      }

      do
      {
LABEL_11:
        lpta_rpta_loadp(a1, a1 + 6240, v15);
        if (!insert_2pt_i(a1, 7u, 2, &string_5_1, 0))
        {
          v9 = 0;
          goto LABEL_4;
        }

        v12 = *(a1 + 104);
        if (v12)
        {
          *(a1 + 104) = 0;
          v13 = v12;
        }

        else
        {
          v13 = vback(a1, 0);
        }
      }

      while (v13 == 2);
      if (v13 != 1)
      {
        if (v13 != 3)
        {
          goto LABEL_3;
        }

LABEL_10:
        savescptr(a1, 3, v15);
        goto LABEL_11;
      }
    }

    v9 = 0;
  }

LABEL_4:
  vretproc(a1);
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

void OUTLINED_FUNCTION_0_44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  bzero(&a9, 0xB8uLL);
}

void *fence_42(uint64_t a1, int a2, uint64_t a3)
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

uint64_t create_syllables(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v82 = *MEMORY[0x277D85DE8];
  v77[0] = 0;
  v77[1] = 0;
  v75 = 0;
  v76 = 0;
  v74[0] = 0;
  v74[1] = 0;
  v73[0] = 0;
  v73[1] = 0;
  OUTLINED_FUNCTION_11_38(a1, a2, a3, a4, a5, a6, a7, a8, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72);
  OUTLINED_FUNCTION_16_35();
  bzero(v81, v9);
  if (!setjmp(v81) && !ventproc(a1, &v48, v80, v79, v78, v81))
  {
    push_ptr_init(a1, v77);
    v12 = OUTLINED_FUNCTION_10_38();
    push_ptr_init(v12, v13);
    v14 = OUTLINED_FUNCTION_14_36();
    push_ptr_init(v14, v15);
    v16 = OUTLINED_FUNCTION_20_30();
    push_ptr_init(v16, v17);
    v18 = OUTLINED_FUNCTION_13_37();
    v20 = push_ptr_init(v18, v19);
    OUTLINED_FUNCTION_22_28(v20, v21, &null_str_17);
    fence_42(a1, 1, &_MergedGlobals_38);
    *(a1 + 4014) = 0;
    startloop(a1, 1);
    lpta_loadpn(a1, a1 + 1320);
    OUTLINED_FUNCTION_9_38();
    lpta_mover();
    lpta_storep(a1, v77);
    lpta_loadpn(a1, a1 + 1336);
    OUTLINED_FUNCTION_9_38();
    lpta_mover();
    v22 = OUTLINED_FUNCTION_14_36();
    lpta_storep(v22, v23);
    if (forall_to_test(a1, v77, v74))
    {
      goto LABEL_17;
    }

LABEL_6:
    v24 = OUTLINED_FUNCTION_6_39();
    bspush_ca(v24);
    v25 = OUTLINED_FUNCTION_17_35();
    if (lpta_loadp_setscan_r(v25, v26))
    {
      goto LABEL_17;
    }

    v27 = OUTLINED_FUNCTION_2_42();
    if (testFldeq(v27, v28, v29, 1) || advance_tok(a1))
    {
      goto LABEL_17;
    }

LABEL_9:
    savescptr(a1, 4, &v75);
    while (2)
    {
      v30 = OUTLINED_FUNCTION_17_35();
      lpta_loadpn(v30, v31);
      lpta_ctxtl();
      v32 = OUTLINED_FUNCTION_20_30();
      lpta_storep(v32, v33);
      v34 = OUTLINED_FUNCTION_10_38();
      assign_syll_coda(v34, v35, v36, v37, v38, v39, v40, v41);
LABEL_11:
      *(a1 + 136) = 1;
      OUTLINED_FUNCTION_21_29();
      ++*(a1 + 4014);
      v42 = OUTLINED_FUNCTION_6_39();
      starttest_l(v42, v43);
      if (*(a1 + 4014) == 1)
      {
        copyvar(a1, (a1 + 6240), v73);
      }

LABEL_13:
      if (!forto_adv_upto_r(a1, 1, 2, 6, 2, v77))
      {
LABEL_14:
        *(a1 + 6264) = v76;
        v44 = OUTLINED_FUNCTION_6_39();
        starttest(v44, v45);
        if (!lpta_loadp_setscan_r(a1, a1 + 6256) && !advanc(a1))
        {
LABEL_16:
          OUTLINED_FUNCTION_12_38(8, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71);
          if (advance_tok(a1))
          {
            goto LABEL_17;
          }

          *(a1 + 136) = 1;
          OUTLINED_FUNCTION_21_29();
        }

LABEL_22:
        vretproc(a1);
        result = 0;
        goto LABEL_4;
      }

LABEL_17:
      v46 = *(a1 + 104);
      if (v46)
      {
        v47 = OUTLINED_FUNCTION_18_34(v46);
      }

      else
      {
        v47 = vback(a1, 0);
      }

      switch(v47)
      {
        case 1:
          goto LABEL_14;
        case 2:
          continue;
        case 3:
          goto LABEL_13;
        case 4:
          goto LABEL_9;
        case 5:
          goto LABEL_11;
        case 6:
          goto LABEL_6;
        case 7:
          goto LABEL_22;
        case 8:
          goto LABEL_16;
        default:
          goto LABEL_3;
      }
    }
  }

LABEL_3:
  vretproc(a1);
  result = 94;
LABEL_4:
  v11 = *MEMORY[0x277D85DE8];
  return result;
}