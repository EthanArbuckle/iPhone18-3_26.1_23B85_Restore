uint64_t mark_por_subcategory()
{
  OUTLINED_FUNCTION_22_21();
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_18_23(v3, v4, v5, v6, v7, v8, v9, v10, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144, v148, v152, v156, v160, v164, v168, v172, v176, v180, v184, v188, v192, v196, v199, v202);
  OUTLINED_FUNCTION_62_6(v11, v12, v13, v14, v15, v16, v17, v18, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, v149, v153, v157, v161, v165, v169, v173, v177, v181, v185, v189, v193, v197, v200, v203, v205, v207, v209, v211, v213);
  v19 = setjmp(v1);
  if (!v19 && !OUTLINED_FUNCTION_17_24(v19, v20, v21, v22, v23, v24, v25, v26, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142, v146, v150, v154, v158, v162, v166, v170, v174, v178, v182, v186, v190, v194, v198, v201, v204, *v206, v206[4], *v208, *&v208[4], v208[6], v210, SWORD2(v210), SBYTE6(v210), SHIBYTE(v210), v212, v214))
  {
    v29 = OUTLINED_FUNCTION_26_20();
    get_parm(v29, v30, v31, -6);
    OUTLINED_FUNCTION_70_6(v32, v33, v34, v35, v36, v37, v38, v39, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v147, v151, v155, v159, v163, v167, v171, v175, v179, v183, v187, v191, v195);
    fence_29(v0, 0, &null_str_8);
    v40 = OUTLINED_FUNCTION_72_6();
    starttest(v40, v41);
    v42 = OUTLINED_FUNCTION_41_8();
    if (lpta_loadp_setscan_r(v42, v43))
    {
LABEL_5:
      v44 = OUTLINED_FUNCTION_16_25();
      lpta_rpta_loadp(v44, v45, v46);
      v47 = OUTLINED_FUNCTION_73_6();
      if (setd_lookup(v47, v48, 49) || (v49 = OUTLINED_FUNCTION_16_25(), lpta_rpta_loadp(v49, v50, v51), OUTLINED_FUNCTION_11_28(), mark_s()))
      {
LABEL_14:
        v60 = OUTLINED_FUNCTION_16_25();
        lpta_rpta_loadp(v60, v61, v62);
        v63 = OUTLINED_FUNCTION_73_6();
        if (setd_lookup(v63, v64, 22) || (v65 = OUTLINED_FUNCTION_16_25(), lpta_rpta_loadp(v65, v66, v67), OUTLINED_FUNCTION_11_28(), mark_s()))
        {
LABEL_16:
          v68 = OUTLINED_FUNCTION_16_25();
          lpta_rpta_loadp(v68, v69, v70);
          v71 = OUTLINED_FUNCTION_73_6();
          if (setd_lookup(v71, v72, 21) || (v73 = OUTLINED_FUNCTION_16_25(), lpta_rpta_loadp(v73, v74, v75), OUTLINED_FUNCTION_11_28(), mark_s()))
          {
LABEL_18:
            v76 = OUTLINED_FUNCTION_16_25();
            lpta_rpta_loadp(v76, v77, v78);
            v79 = OUTLINED_FUNCTION_73_6();
            if (setd_lookup(v79, v80, 20) || (v81 = OUTLINED_FUNCTION_16_25(), lpta_rpta_loadp(v81, v82, v83), OUTLINED_FUNCTION_11_28(), mark_s()))
            {
LABEL_20:
              v84 = OUTLINED_FUNCTION_16_25();
              lpta_rpta_loadp(v84, v85, v86);
              v87 = OUTLINED_FUNCTION_73_6();
              if (setd_lookup(v87, v88, 24) || (v89 = OUTLINED_FUNCTION_16_25(), lpta_rpta_loadp(v89, v90, v91), OUTLINED_FUNCTION_11_28(), mark_s()))
              {
LABEL_22:
                v92 = OUTLINED_FUNCTION_16_25();
                lpta_rpta_loadp(v92, v93, v94);
                v95 = OUTLINED_FUNCTION_73_6();
                if (!setd_lookup(v95, v96, 23))
                {
                  v97 = OUTLINED_FUNCTION_16_25();
                  lpta_rpta_loadp(v97, v98, v99);
                  OUTLINED_FUNCTION_11_28();
                  mark_s();
                }
              }
            }
          }
        }
      }
    }

    else
    {
      v52 = OUTLINED_FUNCTION_7_29();
      if (testFldeq(v52, v53, v54, v55) || advance_tok(v0))
      {
        v56 = *(v0 + 104);
        if (v56)
        {
          v57 = OUTLINED_FUNCTION_87_4(v56);
        }

        else
        {
          v58 = OUTLINED_FUNCTION_90_4();
          v57 = vback(v58, v59);
        }

        switch(v57)
        {
          case 1:
            goto LABEL_5;
          case 3:
            goto LABEL_14;
          case 4:
            goto LABEL_16;
          case 5:
            goto LABEL_18;
          case 6:
            goto LABEL_20;
          case 7:
            goto LABEL_22;
          default:
            break;
        }
      }
    }
  }

  vretproc(v0);
  v27 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_109_1();
}

void disambiguate_noun_from_adj()
{
  OUTLINED_FUNCTION_123_0();
  v1 = v0;
  v95 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_67_6(v0, v2, v3, v4, v5, v6, v7, v8, v65, v66[0], v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90);
  OUTLINED_FUNCTION_84_4();
  bzero(v94, v9);
  if (!setjmp(v94) && !ventproc(v1, v66, v93, v92, v91, v94))
  {
    OUTLINED_FUNCTION_53_7();
    v11 = 0;
    OUTLINED_FUNCTION_115_1(v12, v13, &null_str_8);
    v14 = OUTLINED_FUNCTION_57_7();
    fence_29(v14, v15, v16);
    OUTLINED_FUNCTION_125_0();
    v17 = OUTLINED_FUNCTION_66_6();
    if (lpta_loadp_setscan_l(v17, v18))
    {
LABEL_5:
      v19 = OUTLINED_FUNCTION_60_7();
      starttest(v19, v20);
      v21 = OUTLINED_FUNCTION_80_5();
      if (lpta_loadp_setscan_l(v21, v22))
      {
        goto LABEL_3;
      }

      v23 = OUTLINED_FUNCTION_64_6();
      bspush_ca_scan(v23, v24);
      v25 = OUTLINED_FUNCTION_5_29();
      v29 = testFldeq(v25, v26, v27, v28);
      v30 = v11;
      if (!v29)
      {
LABEL_12:
        v11 = v30;
        if (!advance_tok(v1))
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      v31 = OUTLINED_FUNCTION_63_6();
      bspush_ca_scan(v31, v32);
      v33 = 0;
LABEL_9:
      v11 = v33;
      v34 = OUTLINED_FUNCTION_52_7();
      bspush_ca_scan(v34, v35);
      v36 = OUTLINED_FUNCTION_14_26();
      v39 = testFldeq(v36, v37, v38, 18);
      v40 = v11;
      if (!v39)
      {
LABEL_10:
        v11 = v40;
        if (!advance_tok(v1))
        {
          goto LABEL_3;
        }
      }
    }

    while (2)
    {
      v41 = *(v1 + 104);
      if (v41)
      {
        v42 = OUTLINED_FUNCTION_87_4(v41);
      }

      else
      {
        v43 = OUTLINED_FUNCTION_79_6();
        v42 = vback(v43, v44);
        v11 = 0;
      }

      v33 = v11;
      v40 = v11;
      v30 = v11;
      switch(v42)
      {
        case 1:
          goto LABEL_5;
        case 2:
          bspush_ca_scan_boa();
          v45 = OUTLINED_FUNCTION_5_29();
          goto LABEL_29;
        case 3:
          goto LABEL_9;
        case 4:
          bspop_boa(v1);
          OUTLINED_FUNCTION_81_5();
          bspush_ca_scan_boa();
          v45 = OUTLINED_FUNCTION_4_29();
          goto LABEL_29;
        case 5:
          bspop_boa(v1);
          OUTLINED_FUNCTION_77_6();
          bspush_ca_scan_boa();
          v45 = OUTLINED_FUNCTION_14_26();
          v48 = 3;
          goto LABEL_29;
        case 6:
          bspop_boa(v1);
          OUTLINED_FUNCTION_91_3();
          bspush_ca_scan_boa();
          v45 = OUTLINED_FUNCTION_9_29();
          goto LABEL_29;
        case 7:
          bspop_boa(v1);
          OUTLINED_FUNCTION_120_1();
          bspush_ca_scan_boa();
          v45 = OUTLINED_FUNCTION_14_26();
          v48 = 37;
LABEL_29:
          if (testFldeq(v45, v46, v47, v48))
          {
            v11 = v11;
          }

          else
          {
            v11 = 1;
          }

          continue;
        case 8:
          bspop_boa(v1);
          v57 = advance_tok(v1);
          v33 = v11;
          if (!v57)
          {
            goto LABEL_9;
          }

          continue;
        case 9:
          v58 = OUTLINED_FUNCTION_14_26();
          v61 = testFldeq(v58, v59, v60, 14);
          v40 = v11;
          if (!v61)
          {
            goto LABEL_10;
          }

          continue;
        case 10:
          goto LABEL_10;
        case 13:
          v62 = OUTLINED_FUNCTION_146_0();
          bspush_ca_scan(v62, v63);
          v49 = OUTLINED_FUNCTION_4_29();
          goto LABEL_35;
        case 14:
          goto LABEL_12;
        case 15:
          v52 = OUTLINED_FUNCTION_134_0();
          bspush_ca_scan(v52, v53);
          v49 = OUTLINED_FUNCTION_14_26();
          goto LABEL_20;
        case 16:
          v55 = OUTLINED_FUNCTION_133_0();
          bspush_ca_scan(v55, v56);
          v49 = OUTLINED_FUNCTION_9_29();
          goto LABEL_35;
        case 17:
          bspush_ca_scan(v1, 18);
          v49 = OUTLINED_FUNCTION_14_26();
          v54 = 37;
          goto LABEL_35;
        case 18:
          v49 = OUTLINED_FUNCTION_13_28();
LABEL_20:
          v54 = 3;
LABEL_35:
          v64 = testFldeq(v49, v50, v51, v54);
          v30 = v11;
          if (!v64)
          {
            goto LABEL_12;
          }

          continue;
        default:
          goto LABEL_3;
      }
    }
  }

LABEL_3:
  vretproc(v1);
  v10 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_109_1();
  OUTLINED_FUNCTION_122_0();
}

void disambiguate_travesso()
{
  OUTLINED_FUNCTION_123_0();
  OUTLINED_FUNCTION_108_1();
  v128 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_103_1();
  HIDWORD(v118) = 0;
  OUTLINED_FUNCTION_67_6(v2, v3, v4, v5, v6, v7, v8, v9, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v117);
  OUTLINED_FUNCTION_84_4();
  bzero(v127, v10);
  if (!setjmp(v127))
  {
    OUTLINED_FUNCTION_37_12();
    if (!OUTLINED_FUNCTION_141_0(v11, v12, v13, v14, v15, v16, v17, v18, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127[0]))
    {
      v20 = OUTLINED_FUNCTION_86_4();
      OUTLINED_FUNCTION_137_0(v20, v21);
      v22 = OUTLINED_FUNCTION_26_20();
      get_parm(v22, v23, v24, -6);
      v25 = OUTLINED_FUNCTION_95_3();
      get_parm(v25, v26, v27, -4);
      v28 = OUTLINED_FUNCTION_96_3();
      v30 = push_ptr_init(v28, v29);
      v31 = 0;
      OUTLINED_FUNCTION_115_1(v30, v32, &null_str_8);
      fence_29(v0, 1, &unk_2806BBF44);
      starttest(v0, 1);
      v33 = OUTLINED_FUNCTION_41_8();
      if (!lpta_loadp_setscan_r(v33, v34))
      {
        v31 = 0;
        v35 = 0;
        if (!advanc(v0))
        {
LABEL_8:
          v36 = OUTLINED_FUNCTION_63_6();
          if (!chstream(v36, v37, 1u))
          {
            OUTLINED_FUNCTION_36_12();
            v31 = v35;
            if (!test_string_s())
            {
LABEL_12:
              v38 = OUTLINED_FUNCTION_38_11();
              if (!chstream(v38, v39, 2u) && !advanc(v0))
              {
                OUTLINED_FUNCTION_32_15();
                bspush_ca_scan_boa();
                v40 = OUTLINED_FUNCTION_14_26();
                if (testFldeq(v40, v41, v42, 12))
                {
                  v35 = v31;
                }

                else
                {
                  v35 = 1;
                }

                goto LABEL_18;
              }

LABEL_17:
              v35 = v31;
              goto LABEL_18;
            }
          }

          goto LABEL_18;
        }
      }

      while (2)
      {
        v51 = OUTLINED_FUNCTION_47_8();
        starttest(v51, v52);
        v53 = OUTLINED_FUNCTION_49_7();
        if (lpta_loadp_setscan_l(v53, v54))
        {
LABEL_39:
          HIWORD(v118) = 1;
        }

        else
        {
          v55 = OUTLINED_FUNCTION_1_31();
          if (testFldeq(v55, v56, v57, v58))
          {
            goto LABEL_17;
          }

          if (advance_tok(v0))
          {
            goto LABEL_17;
          }

          v59 = OUTLINED_FUNCTION_5_29();
          if (testFldeq(v59, v60, v61, v62))
          {
            goto LABEL_17;
          }

          v35 = v31;
          v43 = v31;
          if (advance_tok(v0))
          {
            goto LABEL_18;
          }

LABEL_36:
          v35 = v43;
          OUTLINED_FUNCTION_99_2();
          savescptr(v0, v63, &v116);
          v64 = OUTLINED_FUNCTION_81_5();
          if (lpta_loadp_setscan_r(v64, v65) || (v66 = OUTLINED_FUNCTION_34_14(), bspush_ca_scan(v66, v67), OUTLINED_FUNCTION_36_12(), test_string_s()))
          {
LABEL_18:
            v43 = v35;
LABEL_19:
            v44 = v0[13];
            if (v44)
            {
              v45 = OUTLINED_FUNCTION_87_4(v44);
              v43 = v46;
            }

            else
            {
              v45 = vback(v0, v43);
              v43 = 0;
            }

            switch(v45)
            {
              case 1:
                v31 = v43;
                continue;
              case 2:
                v35 = v43;
                goto LABEL_8;
              case 3:
                v31 = v43;
                goto LABEL_12;
              case 4:
                bspop_boa(v0);
                if (!advance_tok(v0))
                {
                  goto LABEL_40;
                }

                goto LABEL_19;
              case 5:
              case 9:
                goto LABEL_40;
              case 6:
                goto LABEL_39;
              case 7:
                goto LABEL_36;
              case 8:
                v47 = OUTLINED_FUNCTION_81_5();
                bspush_ca_scan(v47, v48);
                OUTLINED_FUNCTION_36_12();
                goto LABEL_28;
              case 10:
                v49 = OUTLINED_FUNCTION_91_3();
                bspush_ca_scan(v49, v50);
                OUTLINED_FUNCTION_36_12();
                goto LABEL_28;
              case 11:
                OUTLINED_FUNCTION_42_8();
LABEL_28:
                if (!test_string_s())
                {
                  goto LABEL_40;
                }

                goto LABEL_19;
              default:
                goto LABEL_3;
            }
          }
        }

        break;
      }

LABEL_40:
      *(v1 + 2) = HIWORD(v118);
    }
  }

LABEL_3:
  vretproc(v0);
  v19 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_113_1();
  OUTLINED_FUNCTION_122_0();
}

uint64_t OUTLINED_FUNCTION_17_24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, char a37, int a38, __int16 a39, char a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, char a46)
{

  return ventproc(v46, &a9, &a44, &a40, &a37, &a46);
}

void OUTLINED_FUNCTION_18_23(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  *(v36 - 56) = v35;
  a34 = 0;
  a35 = 0;
  a32 = 0;
  a33 = 0;

  bzero(&a9, 0xB8uLL);
}

uint64_t OUTLINED_FUNCTION_21_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  *(v35 + 112) = a35;
  *(v35 + 128) = 0;
  return v35;
}

uint64_t OUTLINED_FUNCTION_23_21()
{
  *(v1 + 112) = v0;
  *(v1 + 128) = 0;
  return v1;
}

void OUTLINED_FUNCTION_27_18(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  a34 = 0;
  a35 = 0;
  a32 = 0;
  a33 = 0;

  bzero(&a9, 0xB8uLL);
}

uint64_t OUTLINED_FUNCTION_39_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, int a38, char a39, int a40, __int16 a41, char a42, int a43, __int16 a44, char a45, char a46)
{

  return ventproc(v46, a2, &a46, &a42, &a39, v47 - 248);
}

void OUTLINED_FUNCTION_45_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, int a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  a37 = 0;
  a38 = 0;
  a35 = 0;
  a36 = 0;
  a34 = 0;

  bzero(&a10, 0xB8uLL);
}

void OUTLINED_FUNCTION_53_7()
{

  get_parm(v0, v2, v1, -6);
}

void OUTLINED_FUNCTION_56_7()
{

  bzero((v0 - 248), 0xC0uLL);
}

void OUTLINED_FUNCTION_62_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{

  bzero(&a40, 0xC0uLL);
}

void OUTLINED_FUNCTION_67_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  a33 = 0;
  a34 = 0;

  bzero(&a10, 0xB8uLL);
}

void OUTLINED_FUNCTION_70_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{

  get_parm(v32, &a32, v33, -6);
}

void OUTLINED_FUNCTION_92_3(uint64_t a1, uint64_t a2)
{

  get_parm(v2, a2, v3, -6);
}

void OUTLINED_FUNCTION_94_3(uint64_t a1, uint64_t a2)
{

  get_parm(v2, a2, v3, -6);
}

void *OUTLINED_FUNCTION_104_1(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return fence_29(v3, 1, a3);
}

void OUTLINED_FUNCTION_110_1(uint64_t a1, uint64_t a2)
{

  get_parm(a1, a2, v2, -6);
}

void OUTLINED_FUNCTION_114_1(uint64_t a1, uint64_t a2)
{

  get_parm(a1, a2, v2, -6);
}

void *OUTLINED_FUNCTION_115_1(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return fence_29(v3, 0, a3);
}

uint64_t OUTLINED_FUNCTION_116_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return ventproc(v5, a2, a3, a4, a5, v6 - 248);
}

uint64_t OUTLINED_FUNCTION_124_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return lpta_loadp_setscan_r(v69, &a69);
}

void OUTLINED_FUNCTION_125_0()
{

  starttest(v0, v1);
}

void OUTLINED_FUNCTION_127_0()
{

  starttest(v0, v1);
}

uint64_t OUTLINED_FUNCTION_136_0()
{

  return mark_word_stress();
}

void OUTLINED_FUNCTION_137_0(uint64_t a1, uint64_t a2)
{

  get_parm(a1, a2, v2, -6);
}

uint64_t OUTLINED_FUNCTION_138_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, char a42)
{

  return lpta_rpta_loadp(v42, &a42, &a40);
}

uint64_t OUTLINED_FUNCTION_139_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, __int16 a45, __int16 a46)
{
  a46 = v47;

  return npush_v(v46, &a45, a3, a4, a5, a6, a7, a8);
}

uint64_t OUTLINED_FUNCTION_140_0()
{

  return mark_i();
}

uint64_t OUTLINED_FUNCTION_141_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{

  return ventproc(v44, a2, a3, a4, a5, &a44);
}

void OUTLINED_FUNCTION_148_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, __int16 a45, __int16 a46)
{
  a46 = 4;

  npop(v46, &a45);
}

uint64_t OUTLINED_FUNCTION_149_0()
{

  return mark_number();
}

void *fence_30(uint64_t a1, int a2, uint64_t a3)
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

uint64_t adjust_por_accents()
{
  OUTLINED_FUNCTION_22_22();
  v366 = *MEMORY[0x277D85DE8];
  memset(v362, 0, sizeof(v362));
  OUTLINED_FUNCTION_92_4();
  OUTLINED_FUNCTION_12_29(v2, v3, v4, v5, v6, v7, v8, v9, v332, v333, v334, v335, v336, v337, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347, v348, v349, v350, v351, v352, v353, v354, v355, v356, v357, v358);
  OUTLINED_FUNCTION_32_16();
  OUTLINED_FUNCTION_100_2(v10, v11);
  v12 = setjmp(v1);
  if (v12 || OUTLINED_FUNCTION_87_5(v12, &v332, v365, v364, v363))
  {
LABEL_3:
    vretproc(v0);
    result = 94;
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_27_19();
  OUTLINED_FUNCTION_41_9(v15, v362);
  v16 = OUTLINED_FUNCTION_25_21();
  push_ptr_init(v16, v17);
  v18 = OUTLINED_FUNCTION_37_13();
  push_ptr_init(v18, v19);
  v20 = OUTLINED_FUNCTION_28_18();
  push_ptr_init(v20, v21);
  v22 = OUTLINED_FUNCTION_36_13();
  push_ptr_init(v22, v23);
  fence_30(v0, 0, &null_str_9);
  v24 = OUTLINED_FUNCTION_19_23();
  starttest(v24, v25);
  v26 = OUTLINED_FUNCTION_79_7();
  lpta_loadpn(v26, v27);
  v28 = OUTLINED_FUNCTION_29_18();
  rpta_loadpn(v28, v29);
  if (compare_ptas(v0) || testeq(v0) || (v30 = OUTLINED_FUNCTION_60_8(), lpta_loadpn(v30, v31), rpta_loadpn(v0, v0 + 1432), compare_ptas(v0)) || testeq(v0) || (v32 = OUTLINED_FUNCTION_43_9(), lpta_loadp_setscan_r(v32, v33)))
  {
LABEL_10:
    v34 = OUTLINED_FUNCTION_19_23();
    starttest(v34, v35);
    v36 = OUTLINED_FUNCTION_43_9();
    if (lpta_loadp_setscan_r(v36, v37))
    {
LABEL_11:
      v38 = OUTLINED_FUNCTION_19_23();
      startloop(v38, v39);
      v40 = OUTLINED_FUNCTION_43_9();
      lpta_loadpn(v40, v41);
      OUTLINED_FUNCTION_18_24();
      lpta_mover();
      v42 = OUTLINED_FUNCTION_25_21();
      lpta_storep(v42, v43);
      v44 = OUTLINED_FUNCTION_60_8();
      lpta_loadpn(v44, v45);
      OUTLINED_FUNCTION_18_24();
      lpta_mover();
      v46 = OUTLINED_FUNCTION_28_18();
      lpta_storep(v46, v47);
      while (1)
      {
LABEL_12:
        v48 = OUTLINED_FUNCTION_67_7();
        if (forall_to_test(v48, v49, v50))
        {
          goto LABEL_70;
        }

LABEL_13:
        v51 = OUTLINED_FUNCTION_19_23();
        bspush_ca(v51);
        v52 = OUTLINED_FUNCTION_8_30();
        if (lpta_loadp_setscan_r(v52, v53))
        {
          goto LABEL_70;
        }

        v54 = OUTLINED_FUNCTION_18_24();
        v56 = npush_fld(v54, v55, 5);
        if (v56)
        {
          goto LABEL_70;
        }

        OUTLINED_FUNCTION_65_7(v56, v57, v58, v59, v60, v61, v62, v63);
        if (if_testle(v0, v64, v65, v66, v67, v68, v69, v70) || advance_tok(v0))
        {
          goto LABEL_70;
        }

LABEL_17:
        v71 = OUTLINED_FUNCTION_39_11();
        savescptr(v71, v72, v73);
LABEL_18:
        v74 = OUTLINED_FUNCTION_19_23();
        starttest(v74, v75);
        v76 = OUTLINED_FUNCTION_8_30();
        if (lpta_loadp_setscan_r(v76, v77))
        {
LABEL_19:
          v78 = OUTLINED_FUNCTION_19_23();
          starttest(v78, v79);
          v80 = OUTLINED_FUNCTION_8_30();
          if (lpta_loadp_setscan_r(v80, v81))
          {
LABEL_20:
            v82 = OUTLINED_FUNCTION_19_23();
            starttest(v82, v83);
            v84 = OUTLINED_FUNCTION_8_30();
            if (lpta_loadp_setscan_r(v84, v85))
            {
LABEL_21:
              OUTLINED_FUNCTION_25_21();
              is_sentential_adverb();
              if (v86 || (OUTLINED_FUNCTION_35_14(v86, v87, v88, v89, v90, v91, v92, v93, v332, v333, v334, v335, v336, v337, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347, v348, v349, v350, v351, v352, v353, v354, v355, v356, v357, v358, v359, v360, v361), OUTLINED_FUNCTION_5_30(), mark_s()))
              {
LABEL_23:
                OUTLINED_FUNCTION_25_21();
                v94 = is_minor_phrase();
                if (v94 || (OUTLINED_FUNCTION_35_14(v94, v95, v96, v97, v98, v99, v100, v101, v332, v333, v334, v335, v336, v337, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347, v348, v349, v350, v351, v352, v353, v354, v355, v356, v357, v358, v359, v360, v361), OUTLINED_FUNCTION_5_30(), mark_s()))
                {
LABEL_25:
                  OUTLINED_FUNCTION_25_21();
                  is_start_VP();
                  if (v102 || (OUTLINED_FUNCTION_35_14(v102, v103, v104, v105, v106, v107, v108, v109, v332, v333, v334, v335, v336, v337, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347, v348, v349, v350, v351, v352, v353, v354, v355, v356, v357, v358, v359, v360, v361), OUTLINED_FUNCTION_5_30(), mark_s()))
                  {
LABEL_27:
                    OUTLINED_FUNCTION_25_21();
                    v110 = is_emphatic_word();
                    if (v110 || (OUTLINED_FUNCTION_35_14(v110, v111, v112, v113, v114, v115, v116, v117, v332, v333, v334, v335, v336, v337, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347, v348, v349, v350, v351, v352, v353, v354, v355, v356, v357, v358, v359, v360, v361), OUTLINED_FUNCTION_5_30(), mark_s()))
                    {
LABEL_29:
                      OUTLINED_FUNCTION_25_21();
                      adjacent_noun_accent = is_first_adjacent_noun_accent();
                      if (adjacent_noun_accent || (OUTLINED_FUNCTION_35_14(adjacent_noun_accent, v119, v120, v121, v122, v123, v124, v125, v332, v333, v334, v335, v336, v337, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347, v348, v349, v350, v351, v352, v353, v354, v355, v356, v357, v358, v359, v360, v361), OUTLINED_FUNCTION_5_30(), mark_s()))
                      {
LABEL_31:
                        OUTLINED_FUNCTION_25_21();
                        is_initial_matrix_verb();
                        if (v126 || (OUTLINED_FUNCTION_35_14(v126, v127, v128, v129, v130, v131, v132, v133, v332, v333, v334, v335, v336, v337, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347, v348, v349, v350, v351, v352, v353, v354, v355, v356, v357, v358, v359, v360, v361), OUTLINED_FUNCTION_5_30(), mark_s()))
                        {
LABEL_33:
                          OUTLINED_FUNCTION_25_21();
                          v134 = is_accented_wh_word();
                          if (!v134)
                          {
                            OUTLINED_FUNCTION_35_14(v134, v135, v136, v137, v138, v139, v140, v141, v332, v333, v334, v335, v336, v337, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347, v348, v349, v350, v351, v352, v353, v354, v355, v356, v357, v358, v359, v360, v361);
                            OUTLINED_FUNCTION_5_30();
                            mark_s();
                          }
                        }
                      }
                    }
                  }
                }
              }

              goto LABEL_87;
            }

            v183 = OUTLINED_FUNCTION_18_24();
            v185 = npush_fld(v183, v184, 5);
            if (v185)
            {
              goto LABEL_70;
            }

            OUTLINED_FUNCTION_65_7(v185, v186, v187, v188, v189, v190, v191, v192);
            if (if_testlt(v0, v193, v194, v195, v196, v197, v198, v199))
            {
              goto LABEL_70;
            }
          }

          else
          {
            v178 = OUTLINED_FUNCTION_19_23();
            bspush_ca_scan(v178, v179);
            v180 = OUTLINED_FUNCTION_18_24();
            v182 = 2;
LABEL_85:
            if (testFldeq(v180, v181, 8, v182))
            {
              goto LABEL_70;
            }
          }

LABEL_86:
          if (advance_tok(v0))
          {
            goto LABEL_70;
          }
        }

        else
        {
          v155 = OUTLINED_FUNCTION_18_24();
          if (npush_fld(v155, v156, 5))
          {
            goto LABEL_70;
          }

          v157 = OUTLINED_FUNCTION_18_24();
          npush_i(v157);
          if (if_testlt(v0, v158, v159, v160, v161, v162, v163, v164))
          {
            goto LABEL_70;
          }

          if (advance_tok(v0))
          {
            goto LABEL_70;
          }

          v165 = OUTLINED_FUNCTION_19_23();
          starttest(v165, v166);
          v167 = OUTLINED_FUNCTION_43_9();
          if (!lpta_loadp_setscan_r(v167, v168))
          {
            v169 = OUTLINED_FUNCTION_50_8();
            if (testFldeq(v169, v170, v171, 1))
            {
              goto LABEL_70;
            }

            if (advance_tok(v0))
            {
              goto LABEL_70;
            }

            v172 = OUTLINED_FUNCTION_54_8();
            lpta_rpta_loadp(v172, v173, v174);
            if (mark_s())
            {
              goto LABEL_70;
            }

            v175 = OUTLINED_FUNCTION_54_8();
            lpta_rpta_loadp(v175, v176, v177);
            if (mark_s())
            {
              goto LABEL_70;
            }
          }
        }

LABEL_87:
        v283 = OUTLINED_FUNCTION_37_13();
        lpta_loadpn(v283, v284);
        OUTLINED_FUNCTION_18_24();
        lpta_mover();
        v285 = OUTLINED_FUNCTION_44_9();
        lpta_storep(v285, v286);
        v287 = OUTLINED_FUNCTION_74_7();
        forall_cont_from(v287);
      }
    }

    v142 = OUTLINED_FUNCTION_50_8();
    if (!testFldeq(v142, v143, v144, 8) && !advance_tok(v0))
    {
      v145 = OUTLINED_FUNCTION_19_23();
      startloop(v145, v146);
      v147 = OUTLINED_FUNCTION_43_9();
      lpta_loadpn(v147, v148);
      OUTLINED_FUNCTION_18_24();
      lpta_mover();
      v149 = OUTLINED_FUNCTION_25_21();
      lpta_storep(v149, v150);
      v151 = OUTLINED_FUNCTION_60_8();
      lpta_loadpn(v151, v152);
      OUTLINED_FUNCTION_18_24();
      lpta_mover();
      v153 = OUTLINED_FUNCTION_28_18();
      lpta_storep(v153, v154);
LABEL_88:
      while (1)
      {
        v288 = OUTLINED_FUNCTION_67_7();
        if (forall_to_test(v288, v289, v290))
        {
          break;
        }

LABEL_89:
        v291 = OUTLINED_FUNCTION_19_23();
        bspush_ca(v291);
        v292 = OUTLINED_FUNCTION_8_30();
        if (lpta_loadp_setscan_r(v292, v293))
        {
          break;
        }

        v294 = OUTLINED_FUNCTION_18_24();
        v296 = npush_fld(v294, v295, 5);
        if (v296)
        {
          break;
        }

        OUTLINED_FUNCTION_65_7(v296, v297, v298, v299, v300, v301, v302, v303);
        if (if_testeq(v0, v304, v305, v306, v307, v308, v309, v310) || advance_tok(v0))
        {
          break;
        }

LABEL_93:
        v311 = OUTLINED_FUNCTION_39_11();
        savescptr(v311, v312, v313);
LABEL_94:
        v314 = OUTLINED_FUNCTION_19_23();
        starttest(v314, v315);
        v316 = OUTLINED_FUNCTION_8_30();
        if (lpta_loadp_setscan_r(v316, v317))
        {
LABEL_95:
          OUTLINED_FUNCTION_25_21();
          if (is_emphatic_word())
          {
LABEL_96:
            v318 = OUTLINED_FUNCTION_19_23();
            starttest(v318, v319);
            v320 = OUTLINED_FUNCTION_21_22();
            v253 = lpta_loadp_setscan_r(v320, v321);
            if (!v253)
            {
              v329 = OUTLINED_FUNCTION_3_31();
              if (testFldeq(v329, v330, v331, 35))
              {
                break;
              }

              v253 = advance_tok(v0);
              if (v253)
              {
                break;
              }
            }

LABEL_97:
            OUTLINED_FUNCTION_35_14(v253, v254, v255, v256, v257, v258, v259, v260, v332, v333, v334, v335, v336, v337, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347, v348, v349, v350, v351, v352, v353, v354, v355, v356, v357, v358, v359, v360, v361);
            OUTLINED_FUNCTION_5_30();
            if (mark_s())
            {
              break;
            }
          }
        }

        else
        {
          v327 = OUTLINED_FUNCTION_19_23();
          bspush_ca_scan(v327, v328);
          v280 = OUTLINED_FUNCTION_18_24();
          v282 = 2;
LABEL_81:
          if (testFldeq(v280, v281, 8, v282))
          {
            break;
          }

LABEL_82:
          if (advance_tok(v0))
          {
            break;
          }
        }

LABEL_98:
        v322 = OUTLINED_FUNCTION_37_13();
        lpta_loadpn(v322, v323);
        OUTLINED_FUNCTION_18_24();
        lpta_mover();
        v324 = OUTLINED_FUNCTION_44_9();
        lpta_storep(v324, v325);
        OUTLINED_FUNCTION_48_9();
        v326 = OUTLINED_FUNCTION_74_7();
        forall_cont_from(v326);
      }
    }
  }

  else
  {
    v200 = OUTLINED_FUNCTION_50_8();
    if (!testFldeq(v200, v201, v202, 9) && !advance_tok(v0))
    {
      v203 = OUTLINED_FUNCTION_93_4();
      startloop(v203, v204);
      v205 = OUTLINED_FUNCTION_43_9();
      lpta_loadpn(v205, v206);
      OUTLINED_FUNCTION_31_17();
      lpta_mover();
      v207 = OUTLINED_FUNCTION_25_21();
      lpta_storep(v207, v208);
      v209 = OUTLINED_FUNCTION_60_8();
      lpta_loadpn(v209, v210);
      OUTLINED_FUNCTION_31_17();
      lpta_mover();
      v211 = OUTLINED_FUNCTION_28_18();
      lpta_storep(v211, v212);
LABEL_54:
      while (1)
      {
        v213 = OUTLINED_FUNCTION_67_7();
        if (forall_to_test(v213, v214, v215))
        {
          break;
        }

LABEL_55:
        v216 = OUTLINED_FUNCTION_17_25();
        bspush_ca(v216);
        v217 = OUTLINED_FUNCTION_8_30();
        if (lpta_loadp_setscan_r(v217, v218))
        {
          break;
        }

        v219 = OUTLINED_FUNCTION_18_24();
        v221 = npush_fld(v219, v220, 5);
        if (v221)
        {
          break;
        }

        OUTLINED_FUNCTION_65_7(v221, v222, v223, v224, v225, v226, v227, v228);
        if (if_testeq(v0, v229, v230, v231, v232, v233, v234, v235) || advance_tok(v0))
        {
          break;
        }

LABEL_59:
        v236 = OUTLINED_FUNCTION_39_11();
        savescptr(v236, v237, v238);
LABEL_60:
        v239 = OUTLINED_FUNCTION_19_23();
        starttest(v239, v240);
        v241 = OUTLINED_FUNCTION_8_30();
        if (lpta_loadp_setscan_r(v241, v242))
        {
LABEL_61:
          OUTLINED_FUNCTION_25_21();
          v243 = is_accented_wh_word();
          if (v243 || (OUTLINED_FUNCTION_35_14(v243, v244, v245, v246, v247, v248, v249, v250, v332, v333, v334, v335, v336, v337, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347, v348, v349, v350, v351, v352, v353, v354, v355, v356, v357, v358, v359, v360, v361), OUTLINED_FUNCTION_5_30(), mark_s()))
          {
LABEL_63:
            v251 = OUTLINED_FUNCTION_19_23();
            starttest(v251, v252);
            OUTLINED_FUNCTION_25_21();
            v253 = is_emphatic_word();
            if (v253)
            {
LABEL_64:
              OUTLINED_FUNCTION_35_14(v253, v254, v255, v256, v257, v258, v259, v260, v332, v333, v334, v335, v336, v337, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347, v348, v349, v350, v351, v352, v353, v354, v355, v356, v357, v358, v359, v360, v361);
              OUTLINED_FUNCTION_5_30();
              if (mark_s())
              {
                break;
              }
            }
          }
        }

        else
        {
          v261 = OUTLINED_FUNCTION_19_23();
          bspush_ca_scan(v261, v262);
          v263 = OUTLINED_FUNCTION_18_24();
          v265 = 2;
LABEL_67:
          if (testFldeq(v263, v264, 8, v265))
          {
            break;
          }

LABEL_68:
          if (advance_tok(v0))
          {
            break;
          }
        }

LABEL_69:
        v266 = OUTLINED_FUNCTION_37_13();
        lpta_loadpn(v266, v267);
        OUTLINED_FUNCTION_31_17();
        lpta_mover();
        v268 = OUTLINED_FUNCTION_26_21();
        lpta_storep(v268, v269);
        v270 = OUTLINED_FUNCTION_74_7();
        forall_cont_from(v270);
      }
    }
  }

LABEL_70:
  while (2)
  {
    v271 = *(v0 + 104);
    if (v271)
    {
      v253 = OUTLINED_FUNCTION_34_15(v271);
    }

    else
    {
      v272 = OUTLINED_FUNCTION_47_9();
      v253 = vback(v272, v273);
    }

    switch(v253)
    {
      case 1:
        goto LABEL_10;
      case 2:
      case 14:
      case 16:
        goto LABEL_78;
      case 3:
        goto LABEL_60;
      case 4:
        v274 = OUTLINED_FUNCTION_91_4();
        goto LABEL_77;
      case 5:
        goto LABEL_59;
      case 6:
        goto LABEL_61;
      case 7:
        v263 = OUTLINED_FUNCTION_18_24();
        v265 = 4;
        goto LABEL_67;
      case 8:
        goto LABEL_68;
      case 9:
        goto LABEL_69;
      case 10:
        goto LABEL_63;
      case 11:
        goto LABEL_64;
      case 12:
        goto LABEL_54;
      case 13:
        goto LABEL_55;
      case 15:
        goto LABEL_11;
      case 17:
        goto LABEL_94;
      case 18:
        OUTLINED_FUNCTION_48_9();
        goto LABEL_76;
      case 19:
        goto LABEL_93;
      case 20:
        goto LABEL_95;
      case 21:
        v280 = OUTLINED_FUNCTION_18_24();
        v282 = 4;
        goto LABEL_81;
      case 22:
        goto LABEL_82;
      case 23:
        goto LABEL_98;
      case 24:
        goto LABEL_96;
      case 25:
        goto LABEL_97;
      case 26:
        goto LABEL_88;
      case 27:
        goto LABEL_89;
      case 28:
        goto LABEL_18;
      case 29:
LABEL_76:
        v274 = OUTLINED_FUNCTION_91_4();
        v278 = 2;
LABEL_77:
        if (forto_adv_upto_r(v274, v275, v276, v277, v278, v279))
        {
          continue;
        }

LABEL_78:
        vretproc(v0);
        result = 0;
        break;
      case 30:
        goto LABEL_17;
      case 31:
        goto LABEL_19;
      case 32:
      case 33:
        goto LABEL_87;
      case 34:
        goto LABEL_20;
      case 35:
        v180 = OUTLINED_FUNCTION_18_24();
        v182 = 4;
        goto LABEL_85;
      case 36:
        goto LABEL_86;
      case 37:
        goto LABEL_21;
      case 38:
        goto LABEL_23;
      case 39:
        goto LABEL_25;
      case 40:
        goto LABEL_27;
      case 41:
        goto LABEL_29;
      case 42:
        goto LABEL_31;
      case 43:
        goto LABEL_33;
      case 44:
        goto LABEL_12;
      case 45:
        goto LABEL_13;
      default:
        goto LABEL_3;
    }

    break;
  }

LABEL_4:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t is_accented_wh_word()
{
  OUTLINED_FUNCTION_57_8();
  v102 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_12_29(v1, v2, v3, v4, v5, v6, v7, v8, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v99, v100);
  OUTLINED_FUNCTION_32_16();
  bzero(v101, v9);
  if (setjmp(v101))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_30_17();
  if (ventproc(v0, v10, v11, v12, v13, v101))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_20_22();
  v17 = OUTLINED_FUNCTION_36_13();
  push_ptr_init(v17, v18);
  fence_30(v0, 0, &null_str_9);
  v19 = OUTLINED_FUNCTION_19_23();
  starttest(v19, v20);
  v21 = OUTLINED_FUNCTION_14_27();
  if (lpta_loadp_setscan_r(v21, v22))
  {
    goto LABEL_9;
  }

LABEL_6:
  v23 = OUTLINED_FUNCTION_3_31();
  if (!testFldeq(v23, v24, v25, 33) && !advance_tok(v0))
  {
LABEL_8:
    v14 = 0;
    goto LABEL_4;
  }

  while (1)
  {
    v46 = *(v0 + 104);
    if (v46)
    {
      v47 = OUTLINED_FUNCTION_34_15(v46);
    }

    else
    {
      v48 = OUTLINED_FUNCTION_47_9();
      v47 = vback(v48, v49);
    }

    if (v47 == 1)
    {
LABEL_9:
      v26 = OUTLINED_FUNCTION_19_23();
      starttest(v26, v27);
      v28 = OUTLINED_FUNCTION_10_30();
      if (lpta_loadp_setscan_l(v28, v29))
      {
        goto LABEL_3;
      }

      goto LABEL_10;
    }

    if (v47 != 4)
    {
      break;
    }

LABEL_10:
    OUTLINED_FUNCTION_40_10();
    OUTLINED_FUNCTION_76_7(v30, v31, v32, v33, v34, v35, v36, v37, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97);
    v38 = OUTLINED_FUNCTION_3_31();
    if (!testFldeq(v38, v39, v40, 33) && !advance_tok(v0))
    {
      v41 = OUTLINED_FUNCTION_21_22();
      if (!lpta_loadp_setscan_r(v41, v42))
      {
        v43 = OUTLINED_FUNCTION_3_31();
        if (!testFldeq(v43, v44, v45, 18) && !advance_tok(v0))
        {
          goto LABEL_6;
        }
      }
    }
  }

  if (v47 == 2)
  {
    goto LABEL_8;
  }

LABEL_3:
  v14 = 94;
LABEL_4:
  vretproc(v0);
  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t is_emphatic_word()
{
  OUTLINED_FUNCTION_57_8();
  v138 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_12_29(v1, v2, v3, v4, v5, v6, v7, v8, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, v135, v136);
  OUTLINED_FUNCTION_32_16();
  bzero(v137, v9);
  if (setjmp(v137))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_30_17();
  if (ventproc(v0, v10, v11, v12, v13, v137))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_20_22();
  v17 = OUTLINED_FUNCTION_36_13();
  push_ptr_init(v17, v18);
  fence_30(v0, 0, &null_str_9);
  v19 = OUTLINED_FUNCTION_31_17();
  fence_30(v19, v20, v21);
  v22 = OUTLINED_FUNCTION_93_4();
  starttest(v22, v23);
  v24 = OUTLINED_FUNCTION_14_27();
  v26 = lpta_loadp_setscan_l(v24, v25);
  if (!v26)
  {
LABEL_6:
    OUTLINED_FUNCTION_76_7(v26, 2, v27, v28, v29, v30, v31, v32, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133);
    v33 = OUTLINED_FUNCTION_31_17();
    if (testFldeq(v33, v34, 3, 8))
    {
      goto LABEL_32;
    }

    if (advance_tok(v0))
    {
      goto LABEL_32;
    }

    v35 = OUTLINED_FUNCTION_21_22();
    if (lpta_loadp_setscan_r(v35, v36))
    {
      goto LABEL_32;
    }

    v37 = OUTLINED_FUNCTION_3_31();
    if (testFldeq(v37, v38, v39, 6) || advance_tok(v0))
    {
      goto LABEL_32;
    }

    v40 = OUTLINED_FUNCTION_1_32();
    goto LABEL_12;
  }

  while (2)
  {
    v44 = OUTLINED_FUNCTION_17_25();
    starttest(v44, v45);
    v46 = OUTLINED_FUNCTION_10_30();
    if (lpta_loadp_setscan_l(v46, v47))
    {
LABEL_24:
      v61 = OUTLINED_FUNCTION_19_23();
      starttest(v61, v62);
      v63 = OUTLINED_FUNCTION_10_30();
      if (lpta_loadp_setscan_r(v63, v64))
      {
LABEL_36:
        v78 = OUTLINED_FUNCTION_19_23();
        starttest(v78, v79);
        v80 = OUTLINED_FUNCTION_10_30();
        if (lpta_loadp_setscan_r(v80, v81))
        {
LABEL_37:
          v82 = OUTLINED_FUNCTION_19_23();
          starttest(v82, v83);
          v84 = OUTLINED_FUNCTION_10_30();
          if (lpta_loadp_setscan_r(v84, v85))
          {
LABEL_3:
            v14 = 94;
            break;
          }

          v71 = OUTLINED_FUNCTION_3_31();
          v74 = 7;
        }

        else
        {
          v71 = OUTLINED_FUNCTION_3_31();
          v74 = 6;
        }
      }

      else
      {
        v65 = OUTLINED_FUNCTION_3_31();
        if (testFldeq(v65, v66, v67, 8))
        {
          goto LABEL_32;
        }

        if (advance_tok(v0))
        {
          goto LABEL_32;
        }

        v68 = OUTLINED_FUNCTION_3_31();
        if (testFldeq(v68, v69, v70, 6) || advance_tok(v0))
        {
          goto LABEL_32;
        }

        v71 = OUTLINED_FUNCTION_1_32();
      }

      if (!testFldeq(v71, v72, v73, v74) && !advance_tok(v0))
      {
        v14 = 0;
        break;
      }

      goto LABEL_32;
    }

LABEL_16:
    OUTLINED_FUNCTION_58_8(5, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133);
    v48 = OUTLINED_FUNCTION_1_32();
    if (!testFldeq(v48, v49, v50, v51) && !advance_tok(v0))
    {
      v52 = OUTLINED_FUNCTION_21_22();
      if (!lpta_loadp_setscan_r(v52, v53))
      {
        v54 = OUTLINED_FUNCTION_3_31();
        if (!testFldeq(v54, v55, v56, 6) && !advance_tok(v0))
        {
          v57 = OUTLINED_FUNCTION_1_32();
          if (!testFldeq(v57, v58, v59, v60) && !advance_tok(v0))
          {
            v40 = OUTLINED_FUNCTION_3_31();
            v43 = 18;
LABEL_12:
            if (!testFldeq(v40, v41, v42, v43) && !advance_tok(v0))
            {
              goto LABEL_3;
            }
          }
        }
      }
    }

LABEL_32:
    v75 = *(v0 + 104);
    if (v75)
    {
      v26 = OUTLINED_FUNCTION_34_15(v75);
    }

    else
    {
      v76 = OUTLINED_FUNCTION_47_9();
      v26 = vback(v76, v77);
    }

    v14 = 0;
    switch(v26)
    {
      case 1:
        continue;
      case 2:
        goto LABEL_6;
      case 3:
        goto LABEL_4;
      case 4:
        goto LABEL_24;
      case 5:
        goto LABEL_16;
      case 6:
        goto LABEL_36;
      case 7:
        goto LABEL_37;
      default:
        goto LABEL_3;
    }
  }

LABEL_4:
  vretproc(v0);
  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

void is_sentential_adverb()
{
  OUTLINED_FUNCTION_66_7();
  OUTLINED_FUNCTION_57_8();
  v137 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_12_29(v1, v2, v3, v4, v5, v6, v7, v8, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v134, v135);
  OUTLINED_FUNCTION_32_16();
  bzero(v136, v9);
  if (!setjmp(v136))
  {
    OUTLINED_FUNCTION_30_17();
    if (!ventproc(v0, v10, v11, v12, v13, v136))
    {
      OUTLINED_FUNCTION_20_22();
      v15 = OUTLINED_FUNCTION_36_13();
      v17 = push_ptr_init(v15, v16);
      v19 = OUTLINED_FUNCTION_73_7(v17, v18, &null_str_9);
      OUTLINED_FUNCTION_59_8(v19, v20, &_MergedGlobals_27);
      OUTLINED_FUNCTION_88_5();
      v21 = OUTLINED_FUNCTION_26_21();
      lpta_loadpn(v21, v22);
      v23 = OUTLINED_FUNCTION_79_7();
      rpta_loadpn(v23, v24);
      if (compare_ptas(v0))
      {
        v25 = 0;
      }

      else
      {
        if (!testeq(v0))
        {
          v26 = OUTLINED_FUNCTION_10_30();
          if (!lpta_loadp_setscan_r(v26, v27))
          {
            v49 = OUTLINED_FUNCTION_4_30();
            if (testFldeq(v49, v50, v51, 1))
            {
              v48 = 0;
            }

            else
            {
              v52 = advance_tok(v0);
              v48 = 0;
              if (!v52)
              {
                goto LABEL_3;
              }
            }

            goto LABEL_19;
          }
        }

        v25 = 0;
      }

      while (2)
      {
        v28 = OUTLINED_FUNCTION_19_23();
        starttest(v28, v29);
        v30 = OUTLINED_FUNCTION_10_30();
        if (lpta_loadp_setscan_r(v30, v31))
        {
          break;
        }

LABEL_10:
        OUTLINED_FUNCTION_40_10();
        OUTLINED_FUNCTION_76_7(v32, v33, v34, v35, v36, v37, v38, v39, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132);
        v40 = OUTLINED_FUNCTION_19_23();
        bspush_ca_scan(v40, v41);
        v42 = OUTLINED_FUNCTION_1_32();
        v46 = testFldeq(v42, v43, v44, v45);
        v47 = v25;
        v48 = v25;
        if (!v46)
        {
LABEL_16:
          v53 = v47;
          OUTLINED_FUNCTION_19_23();
          bspush_ca_scan_boa();
          v54 = OUTLINED_FUNCTION_0_34();
          if (testFldeq(v54, v55, v56, v57))
          {
            v48 = v53;
          }

          else
          {
            v48 = 1;
          }
        }

LABEL_19:
        v58 = v48;
LABEL_20:
        v59 = *(v0 + 104);
        if (v59)
        {
          v60 = OUTLINED_FUNCTION_34_15(v59);
          v25 = v61;
        }

        else
        {
          v60 = vback(v0, v58);
          v25 = 0;
        }

        v47 = v25;
        switch(v60)
        {
          case 1:
            continue;
          case 4:
            goto LABEL_10;
          case 5:
            v62 = OUTLINED_FUNCTION_44_9();
            bspush_ca_scan(v62, v63);
            v64 = OUTLINED_FUNCTION_3_31();
            v67 = 24;
            goto LABEL_37;
          case 6:
            goto LABEL_16;
          case 7:
            v64 = OUTLINED_FUNCTION_3_31();
            v67 = 25;
LABEL_37:
            v84 = testFldeq(v64, v65, v66, v67);
            v47 = v25;
            v58 = v25;
            if (!v84)
            {
              goto LABEL_16;
            }

            goto LABEL_20;
          case 8:
            bspop_boa(v0);
            v72 = advance_tok(v0);
            v58 = v25;
            if (v72)
            {
              goto LABEL_20;
            }

            v73 = OUTLINED_FUNCTION_14_27();
            v75 = lpta_loadp_setscan_l(v73, v74);
            v58 = v25;
            if (v75)
            {
              goto LABEL_20;
            }

            OUTLINED_FUNCTION_99_3();
            goto LABEL_32;
          case 9:
            bspush_ca_scan(v0, 11);
            v68 = OUTLINED_FUNCTION_6_30();
            v71 = 1;
            goto LABEL_30;
          case 10:
            goto LABEL_32;
          case 11:
            v68 = OUTLINED_FUNCTION_6_30();
            v71 = 2;
LABEL_30:
            v76 = testFldeq(v68, v69, v70, v71);
            v58 = v25;
            if (!v76)
            {
              goto LABEL_31;
            }

            goto LABEL_20;
          case 12:
LABEL_31:
            v77 = advance_tok(v0);
            v58 = v25;
            if (v77)
            {
              goto LABEL_20;
            }

LABEL_32:
            v78 = OUTLINED_FUNCTION_18_24();
            v80 = testFldeq(v78, v79, 1, 9);
            v58 = v25;
            if (!v80)
            {
              v81 = advance_tok(v0);
              v58 = v25;
              if (!v81)
              {
                *(v0 + 136) = 1;
                v82 = *(v0 + 1424);
                v83 = OUTLINED_FUNCTION_69_7();
                v58 = v25;
                if (!v83)
                {
                  goto LABEL_3;
                }
              }
            }

            goto LABEL_20;
          default:
            goto LABEL_3;
        }
      }
    }
  }

LABEL_3:
  vretproc(v0);
  v14 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_71_7();
}

uint64_t is_minor_phrase()
{
  OUTLINED_FUNCTION_57_8();
  v276 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_12_29(v1, v2, v3, v4, v5, v6, v7, v8, v224, v226, v228, v230, v232, v234, v236, v238, v240, v242, v244, v246, v248, v250, v252, v254, v256, v258, v260, v262, v264, v266, v268, v270, v272, v273, v274);
  OUTLINED_FUNCTION_32_16();
  bzero(v275, v9);
  if (setjmp(v275))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_30_17();
  if (ventproc(v0, v10, v11, v12, v13, v275))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_20_22();
  v18 = OUTLINED_FUNCTION_36_13();
  v20 = push_ptr_init(v18, v19);
  v21 = 0;
  v23 = OUTLINED_FUNCTION_73_7(v20, v22, &null_str_9);
  OUTLINED_FUNCTION_59_8(v23, v24, &_MergedGlobals_27);
  OUTLINED_FUNCTION_88_5();
  v25 = OUTLINED_FUNCTION_14_27();
  if (!lpta_loadp_setscan_r(v25, v26))
  {
    if (advance_tok(v0))
    {
      v21 = 0;
    }

    else
    {
      v27 = advance_tok(v0);
      v28 = 0;
      v21 = 0;
      if (!v27)
      {
LABEL_61:
        v21 = v28;
        goto LABEL_10;
      }
    }
  }

  while (2)
  {
    v29 = OUTLINED_FUNCTION_17_25();
    starttest(v29, v30);
    v31 = OUTLINED_FUNCTION_10_30();
    v33 = lpta_loadp_setscan_l(v31, v32);
    v34 = v21;
    if (!v33)
    {
      goto LABEL_10;
    }

LABEL_63:
    v21 = v34;
    v120 = OUTLINED_FUNCTION_19_23();
    starttest(v120, v121);
    v122 = OUTLINED_FUNCTION_10_30();
    if (!lpta_loadp_setscan_r(v122, v123))
    {
      v155 = OUTLINED_FUNCTION_0_34();
      if (testFldeq(v155, v156, v157, v158))
      {
        goto LABEL_11;
      }

      if (advance_tok(v0))
      {
        goto LABEL_11;
      }

      v159 = OUTLINED_FUNCTION_4_30();
      if (testFldeq(v159, v160, v161, 5))
      {
        goto LABEL_11;
      }

      if (advance_tok(v0))
      {
        goto LABEL_11;
      }

      v162 = OUTLINED_FUNCTION_0_34();
      if (testFldeq(v162, v163, v164, v165) || advance_tok(v0))
      {
        goto LABEL_11;
      }

      goto LABEL_3;
    }

LABEL_64:
    v124 = OUTLINED_FUNCTION_19_23();
    starttest(v124, v125);
    v126 = OUTLINED_FUNCTION_10_30();
    if (lpta_loadp_setscan_r(v126, v127))
    {
LABEL_65:
      v128 = OUTLINED_FUNCTION_19_23();
      starttest(v128, v129);
      v130 = OUTLINED_FUNCTION_10_30();
      if (lpta_loadp_setscan_r(v130, v131))
      {
LABEL_66:
        v132 = OUTLINED_FUNCTION_19_23();
        starttest(v132, v133);
        v134 = OUTLINED_FUNCTION_10_30();
        if (!lpta_loadp_setscan_r(v134, v135))
        {
          v206 = OUTLINED_FUNCTION_1_32();
          if (testFldeq(v206, v207, v208, v209) || advance_tok(v0))
          {
            goto LABEL_11;
          }

          v210 = OUTLINED_FUNCTION_19_23();
          bspush_ca_scan(v210, v211);
          v46 = v21;
LABEL_103:
          v212 = v46;
          v213 = OUTLINED_FUNCTION_19_23();
          bspush_ca_scan(v213, v214);
          v47 = v212;
LABEL_104:
          v21 = v47;
          v215 = OUTLINED_FUNCTION_19_23();
          bspush_ca_scan(v215, v216);
          v217 = OUTLINED_FUNCTION_4_30();
          if (testFldeq(v217, v218, v219, 4))
          {
            goto LABEL_11;
          }

          v220 = advance_tok(v0);
          v48 = v21;
          if (v220)
          {
            goto LABEL_11;
          }

LABEL_106:
          v21 = v48;
          OUTLINED_FUNCTION_19_23();
          bspush_ca_scan_boa();
          v221 = OUTLINED_FUNCTION_19_23();
          bspush_ca_scan(v221, v222);
          v151 = OUTLINED_FUNCTION_4_30();
          v154 = 10;
          goto LABEL_107;
        }

LABEL_67:
        v136 = OUTLINED_FUNCTION_19_23();
        starttest(v136, v137);
        v138 = OUTLINED_FUNCTION_10_30();
        v140 = lpta_loadp_setscan_l(v138, v139);
        v119 = v21;
        if (v140)
        {
LABEL_68:
          v21 = v119;
          v141 = OUTLINED_FUNCTION_19_23();
          starttest(v141, v142);
          v143 = OUTLINED_FUNCTION_10_30();
          if (lpta_loadp_setscan_l(v143, v144))
          {
            goto LABEL_3;
          }

LABEL_69:
          OUTLINED_FUNCTION_58_8(34, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249, v251, v253, v255, v257, v259, v261, v263, v265, v267, v269, v271);
          OUTLINED_FUNCTION_19_23();
          bspush_ca_scan_boa();
          v145 = OUTLINED_FUNCTION_19_23();
          bspush_ca_scan(v145, v146);
          v147 = OUTLINED_FUNCTION_4_30();
          v150 = testFldeq(v147, v148, v149, 9);
          v49 = v21;
          if (v150)
          {
            goto LABEL_11;
          }

LABEL_70:
          v21 = v49;
          if (advance_tok(v0))
          {
            goto LABEL_11;
          }

          v151 = OUTLINED_FUNCTION_4_30();
          v154 = 3;
LABEL_107:
          v223 = testFldeq(v151, v152, v153, v154);
          v50 = v21;
          if (!v223)
          {
LABEL_108:
            v21 = v50;
            if (!advance_tok(v0))
            {
              v21 = 1;
            }
          }

          goto LABEL_11;
        }

LABEL_92:
        OUTLINED_FUNCTION_58_8(32, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249, v251, v253, v255, v257, v259, v261, v263, v265, v267, v269, v271);
        v195 = OUTLINED_FUNCTION_3_31();
        if (testFldeq(v195, v196, v197, 10))
        {
          goto LABEL_11;
        }

        if (advance_tok(v0))
        {
          goto LABEL_11;
        }

        v198 = OUTLINED_FUNCTION_21_22();
        if (lpta_loadp_setscan_r(v198, v199))
        {
          goto LABEL_11;
        }

        v200 = OUTLINED_FUNCTION_4_30();
        if (testFldeq(v200, v201, v202, 3))
        {
          goto LABEL_11;
        }

        if (advance_tok(v0))
        {
          goto LABEL_11;
        }

        v203 = OUTLINED_FUNCTION_3_31();
        if (testFldeq(v203, v204, v205, 9) || advance_tok(v0))
        {
          goto LABEL_11;
        }

        v191 = OUTLINED_FUNCTION_4_30();
        v194 = 9;
      }

      else
      {
        v182 = OUTLINED_FUNCTION_19_23();
        bspush_ca_scan(v182, v183);
        v184 = OUTLINED_FUNCTION_1_32();
        if (testFldeq(v184, v185, v186, v187))
        {
          goto LABEL_11;
        }

        v188 = advance_tok(v0);
        v45 = v21;
        if (v188)
        {
          goto LABEL_11;
        }

LABEL_88:
        v21 = v45;
        v189 = OUTLINED_FUNCTION_19_23();
        bspush_ca_scan(v189, v190);
        v191 = OUTLINED_FUNCTION_4_30();
        v194 = 5;
      }

      if (!testFldeq(v191, v192, v193, v194))
      {
        v14 = advance_tok(v0);
        if (!v14)
        {
          break;
        }
      }

      goto LABEL_11;
    }

    v166 = OUTLINED_FUNCTION_1_32();
    if (testFldeq(v166, v167, v168, v169))
    {
      goto LABEL_11;
    }

    if (advance_tok(v0))
    {
      goto LABEL_11;
    }

    v170 = OUTLINED_FUNCTION_19_23();
    bspush_ca_scan(v170, v171);
    v172 = OUTLINED_FUNCTION_3_31();
    v175 = testFldeq(v172, v173, v174, 18);
    v44 = v21;
    if (v175)
    {
      goto LABEL_11;
    }

LABEL_82:
    v21 = v44;
    if (!advance_tok(v0))
    {
      v176 = OUTLINED_FUNCTION_1_32();
      if (!testFldeq(v176, v177, v178, v179) && !advance_tok(v0))
      {
        v180 = OUTLINED_FUNCTION_19_23();
        bspush_ca_scan(v180, v181);
LABEL_10:
        v35 = OUTLINED_FUNCTION_19_23();
        if (test_synch(v35, v36, 1u, v37))
        {
          goto LABEL_11;
        }

LABEL_3:
        v14 = 94;
        break;
      }
    }

LABEL_11:
    v38 = v21;
LABEL_12:
    v39 = v0[13];
    if (v39)
    {
      v40 = OUTLINED_FUNCTION_34_15(v39);
      v21 = v41;
    }

    else
    {
      v40 = vback(v0, v38);
      v21 = 0;
    }

    v42 = v40;
    v14 = 94;
    v43 = v42 - 1;
    v44 = v21;
    v45 = v21;
    v46 = v21;
    v47 = v21;
    v48 = v21;
    v49 = v21;
    v50 = v21;
    switch(v43)
    {
      case 0:
        continue;
      case 1:
        v28 = v21;
        goto LABEL_61;
      case 2:
      case 16:
        goto LABEL_111;
      case 3:
        v34 = v21;
        goto LABEL_63;
      case 4:
      case 10:
        goto LABEL_10;
      case 5:
        goto LABEL_64;
      case 6:
        goto LABEL_65;
      case 7:
        v51 = OUTLINED_FUNCTION_3_31();
        v54 = testFldeq(v51, v52, v53, 14);
        v44 = v21;
        v38 = v21;
        if (!v54)
        {
          goto LABEL_82;
        }

        goto LABEL_12;
      case 8:
        goto LABEL_82;
      case 9:
        v112 = OUTLINED_FUNCTION_4_30();
        v115 = testFldeq(v112, v113, v114, 5);
        v38 = v21;
        if (!v115)
        {
          v116 = advance_tok(v0);
          v38 = v21;
          if (!v116)
          {
            goto LABEL_3;
          }
        }

        goto LABEL_12;
      case 12:
        goto LABEL_66;
      case 13:
        v93 = OUTLINED_FUNCTION_6_30();
        v96 = testFldeq(v93, v94, v95, 2);
        v38 = v21;
        if (!v96)
        {
          v97 = advance_tok(v0);
          v45 = v21;
          v38 = v21;
          if (!v97)
          {
            goto LABEL_88;
          }
        }

        goto LABEL_12;
      case 14:
        goto LABEL_88;
      case 15:
        v98 = OUTLINED_FUNCTION_4_30();
        v101 = 10;
        goto LABEL_52;
      case 17:
        goto LABEL_67;
      case 18:
        v107 = OUTLINED_FUNCTION_4_30();
        v110 = testFldeq(v107, v108, v109, 1);
        v38 = v21;
        if (!v110)
        {
          v111 = advance_tok(v0);
          v46 = v21;
          v38 = v21;
          if (!v111)
          {
            goto LABEL_103;
          }
        }

        goto LABEL_12;
      case 19:
        goto LABEL_103;
      case 20:
        v102 = OUTLINED_FUNCTION_6_30();
        v105 = testFldeq(v102, v103, v104, 2);
        v38 = v21;
        if (!v105)
        {
          v106 = advance_tok(v0);
          v47 = v21;
          v38 = v21;
          if (!v106)
          {
            goto LABEL_104;
          }
        }

        goto LABEL_12;
      case 21:
        goto LABEL_104;
      case 22:
        v82 = OUTLINED_FUNCTION_19_23();
        bspush_ca_scan(v82, v83);
        v84 = OUTLINED_FUNCTION_4_30();
        v87 = testFldeq(v84, v85, v86, 3);
        v38 = v21;
        if (v87)
        {
          goto LABEL_12;
        }

        OUTLINED_FUNCTION_19_23();
        bspush_ca_scan_boa();
        v63 = OUTLINED_FUNCTION_3_31();
        v66 = 16;
        goto LABEL_56;
      case 23:
        goto LABEL_106;
      case 24:
        v88 = OUTLINED_FUNCTION_4_30();
        v91 = testFldeq(v88, v89, v90, 11);
        v38 = v21;
        if (v91)
        {
          goto LABEL_12;
        }

        goto LABEL_33;
      case 25:
        bspop_boa(v0);
        OUTLINED_FUNCTION_19_23();
        bspush_ca_scan_boa();
        v63 = OUTLINED_FUNCTION_3_31();
        v66 = 19;
        goto LABEL_56;
      case 26:
        bspop_boa(v0);
LABEL_33:
        v92 = advance_tok(v0);
        v48 = v21;
        v38 = v21;
        if (!v92)
        {
          goto LABEL_106;
        }

        goto LABEL_12;
      case 27:
        bspop_boa(v0);
        goto LABEL_111;
      case 28:
        v67 = OUTLINED_FUNCTION_4_30();
        v70 = testFldeq(v67, v68, v69, 5);
        v50 = v21;
        v38 = v21;
        if (!v70)
        {
          goto LABEL_108;
        }

        goto LABEL_12;
      case 29:
        goto LABEL_108;
      case 30:
        v119 = v21;
        goto LABEL_68;
      case 31:
        goto LABEL_92;
      case 33:
        goto LABEL_69;
      case 34:
        bspop_boa(v0);
        v55 = OUTLINED_FUNCTION_21_22();
        v57 = lpta_loadp_setscan_r(v55, v56);
        v38 = v21;
        if (v57)
        {
          goto LABEL_12;
        }

        v58 = OUTLINED_FUNCTION_1_32();
        v62 = testFldeq(v58, v59, v60, v61);
        v38 = v21;
        if (v62)
        {
          goto LABEL_12;
        }

        OUTLINED_FUNCTION_19_23();
        bspush_ca_scan_boa();
        v63 = OUTLINED_FUNCTION_0_34();
        goto LABEL_56;
      case 35:
        v78 = OUTLINED_FUNCTION_4_30();
        v81 = testFldeq(v78, v79, v80, 1);
        v49 = v21;
        v38 = v21;
        if (!v81)
        {
          goto LABEL_70;
        }

        goto LABEL_12;
      case 36:
        goto LABEL_70;
      case 37:
        bspop_boa(v0);
        OUTLINED_FUNCTION_19_23();
        bspush_ca_scan_boa();
        v63 = OUTLINED_FUNCTION_3_31();
        v66 = 4;
        goto LABEL_56;
      case 38:
        bspop_boa(v0);
        v71 = advance_tok(v0);
        v38 = v21;
        if (v71)
        {
          goto LABEL_12;
        }

        v72 = OUTLINED_FUNCTION_19_23();
        bspush_ca_scan(v72, v73);
        v74 = OUTLINED_FUNCTION_6_30();
        v77 = testFldeq(v74, v75, v76, 1);
        v38 = v21;
        if (v77)
        {
          goto LABEL_12;
        }

        OUTLINED_FUNCTION_19_23();
        bspush_ca_scan_boa();
        v63 = OUTLINED_FUNCTION_3_31();
        v66 = 3;
        goto LABEL_56;
      case 39:
        v98 = OUTLINED_FUNCTION_0_34();
LABEL_52:
        v117 = testFldeq(v98, v99, v100, v101);
        v38 = v21;
        if (!v117)
        {
          goto LABEL_53;
        }

        goto LABEL_12;
      case 40:
        bspop_boa(v0);
        OUTLINED_FUNCTION_19_23();
        bspush_ca_scan_boa();
        v63 = OUTLINED_FUNCTION_4_30();
        v66 = 9;
LABEL_56:
        if (testFldeq(v63, v64, v65, v66))
        {
          v38 = v21;
        }

        else
        {
          v38 = 1;
        }

        goto LABEL_12;
      case 41:
        bspop_boa(v0);
        goto LABEL_53;
      case 42:
LABEL_53:
        v118 = advance_tok(v0);
        v38 = v21;
        if (v118)
        {
          goto LABEL_12;
        }

LABEL_111:
        v14 = 0;
        break;
      default:
        goto LABEL_4;
    }

    break;
  }

LABEL_4:
  v15 = v14;
  vretproc(v0);
  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

void is_start_VP()
{
  OUTLINED_FUNCTION_66_7();
  OUTLINED_FUNCTION_57_8();
  v45 = *MEMORY[0x277D85DE8];
  memset(v40, 0, sizeof(v40));
  OUTLINED_FUNCTION_33_16();
  bzero(v39, v1);
  OUTLINED_FUNCTION_32_16();
  bzero(v44, v2);
  if (setjmp(v44))
  {
    goto LABEL_4;
  }

  if (ventproc(v0, v39, v43, v42, v41, v44))
  {
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_20_22();
  push_ptr_init(v0, v40);
  fence_30(v0, 0, &null_str_9);
  v3 = OUTLINED_FUNCTION_31_17();
  fence_30(v3, v4, v5);
  v6 = OUTLINED_FUNCTION_93_4();
  starttest(v6, v7);
  v8 = OUTLINED_FUNCTION_14_27();
  if (lpta_loadp_setscan_l(v8, v9))
  {
    goto LABEL_4;
  }

  while (2)
  {
    v11 = OUTLINED_FUNCTION_26_21();
    savescptr(v11, v12, v40);
    v13 = OUTLINED_FUNCTION_63_7();
    bspush_ca_scan(v13, v14);
LABEL_6:
    bspush_ca_scan(v0, 5);
LABEL_7:
    v15 = OUTLINED_FUNCTION_68_7();
    bspush_ca_scan(v15, v16);
    v17 = OUTLINED_FUNCTION_16_26();
LABEL_8:
    if (!testFldeq(v17, v18, v19, 2))
    {
LABEL_9:
      v20 = OUTLINED_FUNCTION_31_17();
      if (!testFldeq(v20, v21, 6, 2) && !advance_tok(v0))
      {
        v22 = OUTLINED_FUNCTION_29_18();
        if (!lpta_loadp_setscan_r(v22, v23))
        {
          bspush_ca_scan(v0, 9);
          v24 = OUTLINED_FUNCTION_16_26();
          v27 = 4;
LABEL_13:
          if (!testFldeq(v24, v25, v26, v27) && !advance_tok(v0))
          {
            break;
          }
        }
      }
    }

LABEL_15:
    v28 = *(v0 + 104);
    if (v28)
    {
      v29 = OUTLINED_FUNCTION_34_15(v28);
    }

    else
    {
      v30 = OUTLINED_FUNCTION_47_9();
      v29 = vback(v30, v31);
    }

    switch(v29)
    {
      case 2:
        continue;
      case 3:
        v32 = OUTLINED_FUNCTION_31_17();
        if (!testFldeq(v32, v33, 2, 2) && !advance_tok(v0))
        {
          goto LABEL_6;
        }

        goto LABEL_15;
      case 4:
        goto LABEL_6;
      case 5:
        v34 = OUTLINED_FUNCTION_16_26();
        if (!testFldeq(v34, v35, v36, 1) && !advance_tok(v0))
        {
          goto LABEL_7;
        }

        goto LABEL_15;
      case 6:
        goto LABEL_7;
      case 7:
        v17 = OUTLINED_FUNCTION_31_17();
        v19 = 2;
        goto LABEL_8;
      case 8:
        goto LABEL_9;
      case 9:
        v37 = OUTLINED_FUNCTION_81_6();
        bspush_ca_scan(v37, v38);
        v24 = OUTLINED_FUNCTION_16_26();
        v27 = 3;
        goto LABEL_13;
      case 11:
        v24 = OUTLINED_FUNCTION_16_26();
        v27 = 11;
        goto LABEL_13;
      default:
        goto LABEL_4;
    }
  }

LABEL_4:
  vretproc(v0);
  v10 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_90_5();
  OUTLINED_FUNCTION_71_7();
}

uint64_t is_first_adjacent_noun_accent()
{
  OUTLINED_FUNCTION_57_8();
  v156 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_12_29(v1, v2, v3, v4, v5, v6, v7, v8, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142, v144, v146, v148, v150, v152, v153, v154);
  OUTLINED_FUNCTION_32_16();
  bzero(v155, v9);
  if (setjmp(v155))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_55_8();
  if (ventproc(v0, v10, v11, v12, v13, v155))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_20_22();
  v16 = OUTLINED_FUNCTION_28_18();
  push_ptr_init(v16, v17);
  v18 = OUTLINED_FUNCTION_36_13();
  v20 = push_ptr_init(v18, v19);
  v22 = OUTLINED_FUNCTION_73_7(v20, v21, &null_str_9);
  OUTLINED_FUNCTION_59_8(v22, v23, &_MergedGlobals_27);
  OUTLINED_FUNCTION_88_5();
  v24 = OUTLINED_FUNCTION_14_27();
  if (!lpta_loadp_setscan_r(v24, v25) && !advance_tok(v0))
  {
LABEL_9:
    v37 = OUTLINED_FUNCTION_67_7();
    savescptr(v37, v38, v39);
    if (!advance_tok(v0))
    {
      OUTLINED_FUNCTION_28_18();
      if (!is_emphatic_word())
      {
        goto LABEL_3;
      }
    }

LABEL_18:
    OUTLINED_FUNCTION_75_7();
    while (1)
    {
      v60 = v0[13];
      if (v60)
      {
        v30 = OUTLINED_FUNCTION_34_15(v60);
        v62 = v61;
      }

      else
      {
        v30 = vback(v0, v59);
        v62 = 0;
      }

      switch(v30)
      {
        case 1:
          goto LABEL_7;
        case 2:
          goto LABEL_9;
        case 3:
          goto LABEL_41;
        case 5:
          goto LABEL_12;
        case 6:
          bspop_boa(v0);
          OUTLINED_FUNCTION_44_9();
          bspush_ca_scan_boa();
          v63 = OUTLINED_FUNCTION_0_34();
          goto LABEL_28;
        case 7:
          bspop_boa(v0);
          OUTLINED_FUNCTION_84_5();
          bspush_ca_scan_boa();
          v63 = OUTLINED_FUNCTION_3_31();
          v66 = 8;
LABEL_28:
          v72 = testFldeq(v63, v64, v65, v66);
          goto LABEL_29;
        case 8:
          bspop_boa(v0);
          v73 = OUTLINED_FUNCTION_18_24();
          v75 = npush_fld(v73, v74, 5);
          v59 = v62;
          if (v75)
          {
            continue;
          }

          v76 = OUTLINED_FUNCTION_47_9();
          npush_i(v76);
          v84 = if_testlt(v0, v77, v78, v79, v80, v81, v82, v83);
          v59 = v62;
          if (v84)
          {
            continue;
          }

          v85 = advance_tok(v0);
          v59 = v62;
          if (v85)
          {
            continue;
          }

          v86 = OUTLINED_FUNCTION_1_32();
          v90 = testFldeq(v86, v87, v88, v89);
          v59 = v62;
          if (v90)
          {
            continue;
          }

          v91 = OUTLINED_FUNCTION_18_24();
          v93 = npush_fld(v91, v92, 5);
          v59 = v62;
          if (v93)
          {
            continue;
          }

          v94 = OUTLINED_FUNCTION_47_9();
          npush_i(v94);
          v102 = if_testlt(v0, v95, v96, v97, v98, v99, v100, v101);
          v59 = v62;
          if (v102)
          {
            continue;
          }

          v103 = advance_tok(v0);
          v59 = v62;
          if (v103)
          {
            continue;
          }

          OUTLINED_FUNCTION_29_18();
          bspush_ca_scan_boa();
          OUTLINED_FUNCTION_99_3();
          v67 = OUTLINED_FUNCTION_4_30();
          v70 = 3;
          goto LABEL_25;
        case 9:
          bspop_boa(v0);
LABEL_41:
          vretproc(v0);
          result = 0;
          goto LABEL_4;
        case 10:
          v67 = OUTLINED_FUNCTION_4_30();
          v70 = 11;
LABEL_25:
          v71 = testFldeq(v67, v68, v69, v70);
          v59 = v62;
          if (!v71)
          {
            goto LABEL_26;
          }

          continue;
        case 11:
LABEL_26:
          v72 = advance_tok(v0);
LABEL_29:
          if (v72)
          {
            v59 = v62;
          }

          else
          {
            v59 = 1;
          }

          break;
        default:
          goto LABEL_3;
      }
    }
  }

LABEL_7:
  v26 = OUTLINED_FUNCTION_17_25();
  starttest(v26, v27);
  v28 = OUTLINED_FUNCTION_21_22();
  v30 = lpta_loadp_setscan_l(v28, v29);
  if (!v30)
  {
LABEL_12:
    OUTLINED_FUNCTION_76_7(v30, 5, v31, v32, v33, v34, v35, v36, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, v141, v143, v145, v147, v149, v151);
    v40 = OUTLINED_FUNCTION_18_24();
    if (!npush_fld(v40, v41, 5))
    {
      npush_i(v0);
      if (!if_testgt(v0, v42, v43, v44, v45, v46, v47, v48) && !advance_tok(v0))
      {
        v49 = OUTLINED_FUNCTION_21_22();
        if (!lpta_loadp_setscan_r(v49, v50))
        {
          v51 = OUTLINED_FUNCTION_1_32();
          if (!testFldeq(v51, v52, v53, v54))
          {
            OUTLINED_FUNCTION_19_23();
            bspush_ca_scan_boa();
            v55 = OUTLINED_FUNCTION_2_32();
            testFldeq(v55, v56, v57, v58);
          }
        }
      }
    }

    goto LABEL_18;
  }

LABEL_3:
  vretproc(v0);
  result = 94;
LABEL_4:
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

void is_initial_matrix_verb()
{
  OUTLINED_FUNCTION_66_7();
  OUTLINED_FUNCTION_57_8();
  v92 = *MEMORY[0x277D85DE8];
  v79 = 0;
  v80 = 0;
  v77 = 0;
  v78 = 0;
  OUTLINED_FUNCTION_33_16();
  bzero(v76, v1);
  OUTLINED_FUNCTION_32_16();
  bzero(v91, v2);
  v3 = setjmp(v91);
  if (!v3 && !OUTLINED_FUNCTION_85_5(v3, v76, v4, v5, v6, v7, v8, v9, v73, v74, v75, v76[0], v76[1], v76[2], v76[3], v76[4], v76[5], v76[6], v76[7], v76[8], v76[9], v76[10], v76[11], v76[12], v76[13], v76[14], v76[15], v76[16], v76[17], v76[18], v76[19], v76[20], v76[21], v76[22], v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91[0]))
  {
    OUTLINED_FUNCTION_20_22();
    v10 = OUTLINED_FUNCTION_82_6();
    push_ptr_init(v10, v11);
    fence_30(v0, 0, &null_str_9);
    v12 = OUTLINED_FUNCTION_19_23();
    starttest(v12, v13);
    v14 = OUTLINED_FUNCTION_14_27();
    if (!lpta_loadp_setscan_l(v14, v15))
    {
      LODWORD(v17) = 0;
      while (2)
      {
        savescptr(v0, 2, &v77);
        v18 = OUTLINED_FUNCTION_29_18();
        bspush_ca_scan(v18, v19);
        v20 = v17;
LABEL_7:
        if (test_synch(v0, 4, 1u, &_MergedGlobals_27) || lpta_loadp_setscan_r(v0, &v77) || (v21 = OUTLINED_FUNCTION_16_26(), testFldeq(v21, v22, v23, 3)) || advance_tok(v0) || (v24 = OUTLINED_FUNCTION_16_26(), testFldeq(v24, v25, v26, 10)) || advance_tok(v0))
        {
          v27 = v20;
LABEL_14:
          v28 = v0[13];
          if (v28)
          {
            v29 = OUTLINED_FUNCTION_34_15(v28);
            v17 = v30;
          }

          else
          {
            v29 = vback(v0, v27);
            v17 = 0;
          }

          v20 = v17;
          switch(v29)
          {
            case 2:
              continue;
            case 3:
              v31 = OUTLINED_FUNCTION_62_7();
              bspush_ca_scan(v31, v32);
              goto LABEL_27;
            case 4:
              goto LABEL_7;
            case 5:
              v33 = OUTLINED_FUNCTION_31_17();
              v35 = npush_fld(v33, v34, 5);
              v27 = v17;
              if (v35)
              {
                goto LABEL_14;
              }

              OUTLINED_FUNCTION_65_7(v35, v17, v36, v37, v38, v39, v40, v41);
              v49 = if_testgt(v0, v42, v43, v44, v45, v46, v47, v48);
              v27 = v17;
              if (v49)
              {
                goto LABEL_14;
              }

              v50 = 5;
              goto LABEL_23;
            case 6:
              goto LABEL_27;
            case 7:
            case 9:
              bspop_boa(v0);
              v50 = 10;
              goto LABEL_23;
            case 8:
              bspop_boa(v0);
              v54 = advance_tok(v0);
              v27 = v17;
              if (v54)
              {
                goto LABEL_14;
              }

LABEL_27:
              v55 = OUTLINED_FUNCTION_31_17();
              v57 = npush_fld(v55, v56, 5);
              v27 = v17;
              if (!v57)
              {
                OUTLINED_FUNCTION_65_7(v57, v17, v58, v59, v60, v61, v62, v63);
                v71 = if_testgt(v0, v64, v65, v66, v67, v68, v69, v70);
                v27 = v17;
                if (!v71)
                {
                  v50 = 5;
LABEL_23:
                  bspush_ca_scan_boa();
                  v51 = OUTLINED_FUNCTION_16_26();
                  if (testFldeq(v51, v52, v53, v50))
                  {
                    v27 = v17;
                  }

                  else
                  {
                    v27 = 1;
                  }
                }
              }

              goto LABEL_14;
            case 10:
              bspop_boa(v0);
              v72 = advance_tok(v0);
              v20 = v17;
              v27 = v17;
              if (!v72)
              {
                goto LABEL_7;
              }

              goto LABEL_14;
            default:
              goto LABEL_4;
          }
        }

        break;
      }
    }
  }

LABEL_4:
  vretproc(v0);
  v16 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_71_7();
}

void adjust_por_word_stress()
{
  OUTLINED_FUNCTION_66_7();
  OUTLINED_FUNCTION_22_22();
  v77 = *MEMORY[0x277D85DE8];
  v72[0] = 0;
  v72[1] = 0;
  v70 = 0;
  v71 = 0;
  v69 = 0;
  v68[0] = 0;
  v68[1] = 0;
  v67[0] = 0;
  v67[1] = 0;
  v66[0] = 0;
  v66[1] = 0;
  v65[0] = 0;
  v65[1] = 0;
  v64[0] = 0;
  v64[1] = 0;
  v63[0] = 0;
  v63[1] = 0;
  v62[0] = 0;
  v62[1] = 0;
  v61 = 0;
  OUTLINED_FUNCTION_33_16();
  bzero(v60, v1);
  OUTLINED_FUNCTION_32_16();
  bzero(v76, v2);
  if (!setjmp(v76) && !ventproc(v0, v60, v75, v74, v73, v76))
  {
    OUTLINED_FUNCTION_27_19();
    OUTLINED_FUNCTION_20_22();
    LOWORD(v69) = -4;
    v4 = OUTLINED_FUNCTION_63_7();
    push_ptr_init(v4, v5);
    push_ptr_init(v0, v67);
    v6 = OUTLINED_FUNCTION_68_7();
    push_ptr_init(v6, v7);
    v8 = OUTLINED_FUNCTION_78_7();
    push_ptr_init(v8, v9);
    push_ptr_init(v0, v64);
    v10 = OUTLINED_FUNCTION_43_9();
    push_ptr_init(v10, v11);
    v12 = OUTLINED_FUNCTION_62_7();
    v14 = push_ptr_init(v12, v13);
    v61 = 65532;
    OUTLINED_FUNCTION_73_7(v14, v15, &null_str_9);
    HIWORD(v69) = 0;
    startloop(v0, 1);
    v16 = OUTLINED_FUNCTION_29_18();
    lpta_loadpn(v16, v17);
    OUTLINED_FUNCTION_49_8();
    lpta_mover();
    v18 = OUTLINED_FUNCTION_63_7();
    lpta_storep(v18, v19);
    v20 = OUTLINED_FUNCTION_26_21();
    lpta_loadpn(v20, v21);
    OUTLINED_FUNCTION_49_8();
    lpta_mover();
    v22 = OUTLINED_FUNCTION_68_7();
    lpta_storep(v22, v23);
    while (1)
    {
LABEL_5:
      if (forall_to_test(v0, v68, v66))
      {
        goto LABEL_8;
      }

LABEL_6:
      bspush_ca(v0);
      if (lpta_loadp_setscan_r(v0, v68) || advance_tok(v0))
      {
        break;
      }

LABEL_27:
      savescptr(v0, 4, v67);
LABEL_28:
      v52 = OUTLINED_FUNCTION_15_27();
      if (upgrade_wh_word(v52, v53, v54, v72, &v69))
      {
LABEL_29:
        OUTLINED_FUNCTION_15_27();
        if (upgrade_misc())
        {
LABEL_30:
          OUTLINED_FUNCTION_15_27();
          if (destress_postnuclear_expr())
          {
LABEL_31:
            OUTLINED_FUNCTION_15_27();
            if (destress_adverbs())
            {
LABEL_32:
              OUTLINED_FUNCTION_15_27();
              destress_verbs();
              if (v55)
              {
LABEL_33:
                OUTLINED_FUNCTION_15_27();
                destress_proper_names();
                if (v56)
                {
LABEL_34:
                  v57 = OUTLINED_FUNCTION_15_27();
                  if (destress_numbers(v57, v58, v59))
                  {
LABEL_35:
                    OUTLINED_FUNCTION_15_27();
                    if (destress_compounds())
                    {
LABEL_36:
                      OUTLINED_FUNCTION_15_27();
                      destress_nps();
                    }
                  }
                }
              }
            }
          }
        }
      }

LABEL_37:
      lpta_loadpn(v0, v67);
      OUTLINED_FUNCTION_49_8();
      lpta_mover();
      lpta_storep(v0, v65);
      forall_cont_from(v0);
    }

    while (1)
    {
LABEL_8:
      v24 = v0[13];
      if (v24)
      {
        v25 = OUTLINED_FUNCTION_34_15(v24);
      }

      else
      {
        v26 = OUTLINED_FUNCTION_31_17();
        v25 = vback(v26, v27);
      }

      switch(v25)
      {
        case 1:
          goto LABEL_13;
        case 2:
          goto LABEL_28;
        case 3:
          if (forto_adv_upto_r(v0, 1, 2, 15, 2, v68))
          {
            continue;
          }

LABEL_13:
          starttest(v0, 16);
          v28 = OUTLINED_FUNCTION_26_21();
          if (lpta_loadp_setscan_l(v28, v29))
          {
            goto LABEL_3;
          }

          v30 = OUTLINED_FUNCTION_49_8();
          if (npush_fld(v30, v31, 5))
          {
            continue;
          }

          npush_i(v0);
          if (if_testgt(v0, v32, v33, v34, v35, v36, v37, v38) || advance_tok(v0))
          {
            continue;
          }

LABEL_17:
          savescptr(v0, 17, v62);
          if (advanc(v0))
          {
            continue;
          }

LABEL_18:
          v39 = OUTLINED_FUNCTION_29_18();
          savescptr(v39, v40, v63);
          if (advance_tok(v0))
          {
            continue;
          }

LABEL_19:
          v41 = OUTLINED_FUNCTION_81_6();
          savescptr(v41, v42, v64);
          OUTLINED_FUNCTION_63_7();
          if (!followed_by_hyphen())
          {
            goto LABEL_3;
          }

LABEL_20:
          OUTLINED_FUNCTION_62_7();
          is_postnuclear_expr();
          if (v43)
          {
LABEL_21:
            v44 = OUTLINED_FUNCTION_19_23();
            starttest(v44, v45);
            v46 = OUTLINED_FUNCTION_68_7();
            move_i(v46, v47, 1);
            OUTLINED_FUNCTION_62_7();
            if (!mark_word_stress())
            {
              goto LABEL_3;
            }
          }

          else
          {
            starttest_l(v0, 22);
            v48 = OUTLINED_FUNCTION_62_7();
            if (lpta_loadp_setscan_r(v48, v49))
            {
              goto LABEL_3;
            }

            v50 = OUTLINED_FUNCTION_49_8();
            if (!testFldeq(v50, v51, 3, 25) && !advance_tok(v0))
            {
              mark_word_stress();
              goto LABEL_3;
            }
          }

          break;
        case 4:
          goto LABEL_27;
        case 5:
          goto LABEL_29;
        case 6:
          goto LABEL_37;
        case 7:
          goto LABEL_30;
        case 8:
          goto LABEL_31;
        case 9:
          goto LABEL_32;
        case 10:
          goto LABEL_33;
        case 11:
          goto LABEL_34;
        case 12:
          goto LABEL_35;
        case 13:
          goto LABEL_36;
        case 14:
          goto LABEL_5;
        case 15:
          goto LABEL_6;
        case 17:
          goto LABEL_17;
        case 18:
          goto LABEL_18;
        case 19:
          goto LABEL_19;
        case 20:
          goto LABEL_20;
        case 21:
          goto LABEL_21;
        default:
          goto LABEL_3;
      }
    }
  }

LABEL_3:
  vretproc(v0);
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_71_7();
}

uint64_t upgrade_wh_word(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4, __int16 *a5)
{
  v147 = *MEMORY[0x277D85DE8];
  v142[0] = 0;
  v142[1] = 0;
  v140 = 0;
  v141 = 0;
  v138 = 0;
  v139 = 0;
  v137 = 0;
  v136[0] = 0;
  v136[1] = 0;
  v134 = 0;
  v135 = 0;
  v132 = 0u;
  v133 = 0u;
  HIDWORD(v131) = 0;
  OUTLINED_FUNCTION_33_16();
  bzero(&v108, v9);
  OUTLINED_FUNCTION_32_16();
  bzero(v146, v10);
  if (setjmp(v146) || ventproc(a1, &v108, v145, v144, v143, v146))
  {
    goto LABEL_3;
  }

  v13 = OUTLINED_FUNCTION_78_7();
  get_parm(v13, v14, a2, -6);
  v15 = OUTLINED_FUNCTION_51_8();
  get_parm(v15, v16, v17, -6);
  v18 = OUTLINED_FUNCTION_43_9();
  OUTLINED_FUNCTION_89_5(v18, v19);
  get_parm(a1, &v137, a5, -4);
  push_ptr_init(a1, v136);
  v20 = push_ptr_init(a1, &v134);
  *&v133 = 0;
  *(&v133 + 6) = 0;
  HIDWORD(v131) = 65532;
  LODWORD(v132) = -65532;
  v21 = 0;
  OUTLINED_FUNCTION_73_7(v20, v22, &null_str_9);
  v23 = OUTLINED_FUNCTION_49_8();
  fence_30(v23, v24, v25);
  OUTLINED_FUNCTION_98_3();
  if (lpta_loadp_setscan_l(a1, a1 + 1432))
  {
LABEL_6:
    if (SHIWORD(v137) >= 1)
    {
LABEL_3:
      vretproc(a1);
      result = 94;
      goto LABEL_4;
    }

LABEL_46:
    v93 = OUTLINED_FUNCTION_43_9();
    lpta_loadpn(v93, v94);
    v95 = OUTLINED_FUNCTION_79_7();
    rpta_loadpn(v95, v96);
    if (!compare_ptas(a1) && !testneq(a1))
    {
      goto LABEL_3;
    }

LABEL_48:
    v97 = OUTLINED_FUNCTION_19_23();
    starttest(v97, v98);
    v99 = OUTLINED_FUNCTION_21_22();
    if (lpta_loadp_setscan_r(v99, v100))
    {
LABEL_49:
      v101 = OUTLINED_FUNCTION_19_23();
      starttest(v101, v102);
      OUTLINED_FUNCTION_19_23();
      bspush_ca_boa();
      v103 = OUTLINED_FUNCTION_43_9();
      v104 = isit_por_WH(v103);
    }

    else
    {
      OUTLINED_FUNCTION_19_23();
      bspush_ca_scan_boa();
      v105 = OUTLINED_FUNCTION_3_31();
      v104 = testFldeq(v105, v106, v107, 33);
    }

    if (v104)
    {
      v29 = v21;
    }

    else
    {
      v29 = 1;
    }
  }

  else
  {
    OUTLINED_FUNCTION_19_23();
    bspush_ca_scan_boa();
    v26 = OUTLINED_FUNCTION_50_8();
    v29 = !testFldeq(v26, v27, v28, 9);
  }

  while (2)
  {
    v30 = *(a1 + 104);
    if (v30)
    {
      v31 = OUTLINED_FUNCTION_34_15(v30);
      v33 = v32;
    }

    else
    {
      v31 = vback(a1, v29);
      v33 = 0;
    }

    switch(v31)
    {
      case 1:
        v21 = v33;
        goto LABEL_6;
      case 2:
      case 7:
        bspop_boa(a1);
        v34 = advance_tok(a1);
        v29 = v33;
        if (!v34)
        {
          goto LABEL_3;
        }

        continue;
      case 3:
        goto LABEL_30;
      case 4:
        v21 = v33;
        goto LABEL_46;
      case 5:
        v21 = v33;
        goto LABEL_48;
      case 6:
        v21 = v33;
        goto LABEL_49;
      case 8:
        v35 = OUTLINED_FUNCTION_19_23();
        starttest(v35, v36);
        v37 = OUTLINED_FUNCTION_13_29();
        if (lpta_loadp_setscan_l(v37, v38))
        {
          goto LABEL_16;
        }

        goto LABEL_32;
      case 9:
        bspop_boa(a1);
        goto LABEL_3;
      case 10:
LABEL_16:
        v39 = OUTLINED_FUNCTION_19_23();
        starttest(v39, v40);
        v41 = OUTLINED_FUNCTION_13_29();
        if (lpta_loadp_setscan_l(v41, v42))
        {
          goto LABEL_17;
        }

        goto LABEL_22;
      case 11:
LABEL_32:
        OUTLINED_FUNCTION_70_7(11, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, *(&v132 + 1), v133, *(&v133 + 1), v134, v135, v136[0]);
        v72 = advance_tok(a1);
        v29 = v33;
        if (!v72)
        {
          v73 = OUTLINED_FUNCTION_21_22();
          v75 = lpta_loadp_setscan_r(v73, v74);
          v29 = v33;
          if (!v75)
          {
            v76 = advanc(a1);
            v29 = v33;
            if (!v76)
            {
              goto LABEL_35;
            }
          }
        }

        continue;
      case 12:
LABEL_35:
        savescptr(a1, 12, v142);
        v77 = OUTLINED_FUNCTION_3_31();
        v80 = testFldeq(v77, v78, v79, 18);
        v29 = v33;
        if (!v80)
        {
          v81 = OUTLINED_FUNCTION_6_30();
          v84 = testFldeq(v81, v82, v83, 5);
          v29 = v33;
          if (!v84)
          {
            v85 = OUTLINED_FUNCTION_18_24();
            v87 = testFldeq(v85, v86, 4, 1);
            v29 = v33;
            if (!v87)
            {
              v88 = advance_tok(a1);
              v29 = v33;
              if (!v88)
              {
                goto LABEL_39;
              }
            }
          }
        }

        continue;
      case 13:
LABEL_39:
        savescptr(a1, 13, &v140);
        v89 = OUTLINED_FUNCTION_3_31();
        v92 = testFldeq(v89, v90, v91, 33);
        v29 = v33;
        if (v92)
        {
          continue;
        }

        v49 = advance_tok(a1);
        goto LABEL_41;
      case 14:
LABEL_17:
        v43 = OUTLINED_FUNCTION_19_23();
        starttest(v43, v44);
        v45 = OUTLINED_FUNCTION_78_7();
        if (!lpta_loadp_setscan_r(v45, v46) && !test_string_s())
        {
          goto LABEL_19;
        }

        goto LABEL_30;
      case 15:
LABEL_22:
        OUTLINED_FUNCTION_70_7(15, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, *(&v132 + 1), v133, *(&v133 + 1), v134, v135, v136[0]);
        v50 = advance_tok(a1);
        v29 = v33;
        if (!v50)
        {
          v51 = OUTLINED_FUNCTION_4_30();
          v54 = testFldeq(v51, v52, v53, 9);
          v29 = v33;
          if (!v54)
          {
            v55 = advance_tok(a1);
            v29 = v33;
            if (!v55)
            {
              v56 = OUTLINED_FUNCTION_21_22();
              v58 = lpta_loadp_setscan_r(v56, v57);
              v29 = v33;
              if (!v58)
              {
                v59 = advanc(a1);
                v29 = v33;
                if (!v59)
                {
                  goto LABEL_27;
                }
              }
            }
          }
        }

        continue;
      case 16:
LABEL_27:
        OUTLINED_FUNCTION_48_9();
        savescptr(a1, v60, v142);
        v61 = OUTLINED_FUNCTION_4_30();
        v64 = testFldeq(v61, v62, v63, 8);
        v29 = v33;
        if (!v64)
        {
          v65 = advance_tok(a1);
          v29 = v33;
          if (!v65)
          {
            goto LABEL_29;
          }
        }

        continue;
      case 17:
LABEL_29:
        OUTLINED_FUNCTION_61_8();
        savescptr(a1, v66, &v140);
        goto LABEL_30;
      case 18:
LABEL_19:
        savescptr(a1, 18, &v134);
        v47 = test_string_s();
        v29 = v33;
        if (v47)
        {
          continue;
        }

        *(a1 + 136) = 1;
        v48 = OUTLINED_FUNCTION_69_7();
        v29 = v33;
        if (v48)
        {
          continue;
        }

        lpta_rpta_loadp(a1, &v134, &v140);
        OUTLINED_FUNCTION_29_18();
        settvar_s();
        insert_2ptv();
LABEL_41:
        v29 = v33;
        if (v49)
        {
          continue;
        }

LABEL_30:
        v67 = OUTLINED_FUNCTION_19_23();
        starttest(v67, v68);
        v69 = OUTLINED_FUNCTION_29_18();
        move_i(v69, v70, 1);
        OUTLINED_FUNCTION_78_7();
        v71 = mark_word_stress();
        v29 = v33;
        if (v71)
        {
          continue;
        }

LABEL_43:
        HIWORD(v137) = 1;
        *(a3 + 8) = v141;
        a5[1] = 1;
        vretproc(a1);
        result = 0;
        break;
      case 19:
        goto LABEL_43;
      default:
        goto LABEL_3;
    }

    break;
  }

LABEL_4:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t upgrade_misc()
{
  OUTLINED_FUNCTION_22_22();
  v478 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_92_4();
  v473 = 65532;
  v472[0] = 0;
  v472[1] = 0;
  OUTLINED_FUNCTION_33_16();
  bzero(&v449, v3);
  OUTLINED_FUNCTION_32_16();
  OUTLINED_FUNCTION_100_2(v4, v5);
  v6 = setjmp(v2);
  if (v6 || OUTLINED_FUNCTION_87_5(v6, &v449, v477, v476, v475))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_27_19();
  v9 = OUTLINED_FUNCTION_37_13();
  OUTLINED_FUNCTION_64_7(v9, v10);
  v11 = push_ptr_init(v0, v472);
  LODWORD(v12) = 0;
  OUTLINED_FUNCTION_73_7(v11, v13, &null_str_9);
  v14 = OUTLINED_FUNCTION_49_8();
  fence_30(v14, v15, v16);
  HIWORD(v473) = *(v0 + 3070);
  OUTLINED_FUNCTION_98_3();
  v17 = OUTLINED_FUNCTION_29_18();
  if (!lpta_loadp_setscan_r(v17, v18))
  {
    v35 = OUTLINED_FUNCTION_18_24();
    if (npush_fld(v35, v36, 5) || (npush_v(v0, (v0 + 3064), v37, v38, v39, v40, v41, v42), if_testlt(v0, v43, v44, v45, v46, v47, v48, v49)) || advance_tok(v0))
    {
      v32 = 0;
      goto LABEL_60;
    }

    goto LABEL_3;
  }

  while (2)
  {
    v19 = OUTLINED_FUNCTION_19_23();
    starttest(v19, v20);
    v21 = OUTLINED_FUNCTION_8_30();
    v23 = lpta_loadp_setscan_l(v21, v22);
    v24 = v12;
    if (!v23)
    {
LABEL_7:
      OUTLINED_FUNCTION_40_10();
      savescptr(v0, v25, v472);
      v26 = OUTLINED_FUNCTION_19_23();
      bspush_ca_scan(v26, v27);
      v28 = OUTLINED_FUNCTION_4_30();
      v31 = 3;
LABEL_8:
      testFldeq(v28, v29, v30, v31);
      OUTLINED_FUNCTION_72_7();
      if (v34)
      {
        goto LABEL_60;
      }

LABEL_9:
      LODWORD(v12) = v33;
      if (advance_tok(v0))
      {
        goto LABEL_149;
      }

LABEL_15:
      v50 = OUTLINED_FUNCTION_21_22();
      if (!lpta_loadp_setscan_r(v50, v51))
      {
        v52 = OUTLINED_FUNCTION_4_30();
        if (!testFldeq(v52, v53, v54, 8))
        {
          v55 = OUTLINED_FUNCTION_18_24();
          if (!npush_fld(v55, v56, 5))
          {
            v57 = OUTLINED_FUNCTION_47_9();
            npush_i(v57);
LABEL_19:
            if (!if_testeq(v0, v58, v59, v60, v61, v62, v63, v64))
            {
              goto LABEL_112;
            }
          }
        }
      }

LABEL_149:
      v32 = v12;
      goto LABEL_60;
    }

LABEL_22:
    LODWORD(v12) = v24;
    v65 = OUTLINED_FUNCTION_19_23();
    starttest(v65, v66);
    v67 = OUTLINED_FUNCTION_8_30();
    if (!lpta_loadp_setscan_r(v67, v68))
    {
      v145 = OUTLINED_FUNCTION_4_30();
      if (testFldeq(v145, v146, v147, 8))
      {
        goto LABEL_149;
      }

      v148 = OUTLINED_FUNCTION_18_24();
      if (npush_fld(v148, v149, 5))
      {
        goto LABEL_149;
      }

      v150 = OUTLINED_FUNCTION_47_9();
      npush_i(v150);
      if (if_testeq(v0, v151, v152, v153, v154, v155, v156, v157) || advance_tok(v0))
      {
        goto LABEL_149;
      }

      v158 = OUTLINED_FUNCTION_19_23();
      bspush_ca_scan(v158, v159);
      v160 = v12;
LABEL_42:
      v161 = v160;
      v162 = OUTLINED_FUNCTION_19_23();
      bspush_ca_scan(v162, v163);
      v164 = v161;
LABEL_43:
      LODWORD(v12) = v164;
      v165 = OUTLINED_FUNCTION_19_23();
      bspush_ca_scan(v165, v166);
      v167 = OUTLINED_FUNCTION_4_30();
      v170 = 3;
LABEL_122:
      v363 = testFldeq(v167, v168, v169, v170);
      v241 = v12;
      v32 = v12;
      if (v363)
      {
        goto LABEL_60;
      }

LABEL_123:
      LODWORD(v12) = v241;
      goto LABEL_112;
    }

LABEL_23:
    v69 = OUTLINED_FUNCTION_19_23();
    starttest(v69, v70);
    v71 = OUTLINED_FUNCTION_8_30();
    if (lpta_loadp_setscan_r(v71, v72))
    {
LABEL_24:
      v73 = OUTLINED_FUNCTION_19_23();
      starttest(v73, v74);
      v75 = OUTLINED_FUNCTION_8_30();
      v77 = lpta_loadp_setscan_l(v75, v76);
      v78 = v12;
      if (!v77)
      {
LABEL_115:
        OUTLINED_FUNCTION_45_9(22, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472[0]);
LABEL_116:
        v356 = OUTLINED_FUNCTION_19_23();
        if (test_synch(v356, v357, 1u, v358))
        {
          goto LABEL_149;
        }

        goto LABEL_15;
      }

LABEL_25:
      LODWORD(v12) = v78;
      v79 = OUTLINED_FUNCTION_19_23();
      starttest(v79, v80);
      v81 = OUTLINED_FUNCTION_8_30();
      if (!lpta_loadp_setscan_r(v81, v82))
      {
        v203 = OUTLINED_FUNCTION_18_24();
        v205 = npush_fld(v203, v204, 5);
        if (v205)
        {
          goto LABEL_149;
        }

        OUTLINED_FUNCTION_65_7(v205, v206, v207, v208, v209, v210, v211, v212);
        if (if_testgt(v0, v213, v214, v215, v216, v217, v218, v219))
        {
          goto LABEL_149;
        }

        v220 = OUTLINED_FUNCTION_3_31();
        if (testFldeq(v220, v221, v222, 24))
        {
          goto LABEL_149;
        }

        if (advance_tok(v0))
        {
          goto LABEL_149;
        }

        v223 = OUTLINED_FUNCTION_18_24();
        if (npush_fld(v223, v224, 5))
        {
          goto LABEL_149;
        }

        npush_v(v0, (v0 + 3064), v225, v226, v227, v228, v229, v230);
        if (if_testgt(v0, v231, v232, v233, v234, v235, v236, v237))
        {
          goto LABEL_149;
        }

        goto LABEL_112;
      }

LABEL_26:
      v83 = OUTLINED_FUNCTION_19_23();
      starttest(v83, v84);
      v85 = OUTLINED_FUNCTION_8_30();
      v87 = lpta_loadp_setscan_l(v85, v86);
      v88 = v12;
      if (v87)
      {
LABEL_27:
        v89 = v88;
        v90 = OUTLINED_FUNCTION_19_23();
        starttest(v90, v91);
        v92 = OUTLINED_FUNCTION_8_30();
        v94 = lpta_loadp_setscan_l(v92, v93);
        LODWORD(v12) = v89;
        v95 = v89;
        if (v94)
        {
LABEL_28:
          v96 = v95;
          v97 = OUTLINED_FUNCTION_19_23();
          starttest(v97, v98);
          v99 = OUTLINED_FUNCTION_8_30();
          v101 = lpta_loadp_setscan_l(v99, v100);
          LODWORD(v12) = v96;
          v102 = v96;
          if (!v101)
          {
LABEL_132:
            OUTLINED_FUNCTION_45_9(36, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472[0]);
            v398 = OUTLINED_FUNCTION_19_23();
            bspush_ca_scan(v398, v399);
            v400 = OUTLINED_FUNCTION_1_32();
            v404 = testFldeq(v400, v401, v402, v403);
            v32 = v12;
            v242 = v12;
            if (v404)
            {
              goto LABEL_60;
            }

LABEL_133:
            LODWORD(v12) = v242;
            if (advance_tok(v0))
            {
              goto LABEL_149;
            }

            v405 = OUTLINED_FUNCTION_21_22();
            if (lpta_loadp_setscan_r(v405, v406))
            {
              goto LABEL_149;
            }

            v407 = OUTLINED_FUNCTION_19_23();
            bspush_ca_scan(v407, v408);
            v409 = OUTLINED_FUNCTION_3_31();
            v412 = testFldeq(v409, v410, v411, 3);
            v32 = v12;
            v243 = v12;
            if (v412)
            {
              goto LABEL_60;
            }

LABEL_136:
            LODWORD(v12) = v243;
            if (advance_tok(v0))
            {
              goto LABEL_149;
            }

            v413 = OUTLINED_FUNCTION_19_23();
            bspush_ca_scan(v413, v414);
            v415 = OUTLINED_FUNCTION_18_24();
            v417 = npush_fld(v415, v416, 5);
            if (v417)
            {
              goto LABEL_149;
            }

            OUTLINED_FUNCTION_77_7(v417, v418, v419, v420, v421, v422, v423, v424);
            goto LABEL_19;
          }

LABEL_29:
          v103 = v102;
          v104 = OUTLINED_FUNCTION_19_23();
          starttest(v104, v105);
          v106 = OUTLINED_FUNCTION_8_30();
          v108 = lpta_loadp_setscan_l(v106, v107);
          LODWORD(v12) = v103;
          v109 = v103;
          if (v108)
          {
LABEL_30:
            v110 = v109;
            v111 = OUTLINED_FUNCTION_19_23();
            starttest(v111, v112);
            v113 = OUTLINED_FUNCTION_8_30();
            v115 = lpta_loadp_setscan_l(v113, v114);
            LODWORD(v12) = v110;
            v116 = v110;
            if (!v115)
            {
LABEL_144:
              OUTLINED_FUNCTION_45_9(52, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472[0]);
              v433 = OUTLINED_FUNCTION_6_30();
              if (!testFldeq(v433, v434, v435, 1) && !advance_tok(v0))
              {
                v436 = OUTLINED_FUNCTION_21_22();
                if (!lpta_loadp_setscan_r(v436, v437))
                {
                  v438 = OUTLINED_FUNCTION_3_31();
                  if (!testFldeq(v438, v439, v440, 26) && !advance_tok(v0))
                  {
                    v441 = OUTLINED_FUNCTION_19_23();
                    bspush_ca_scan(v441, v442);
                    v443 = OUTLINED_FUNCTION_1_32();
                    v447 = testFldeq(v443, v444, v445, v446);
                    v32 = v12;
                    v244 = v12;
                    if (!v447)
                    {
LABEL_157:
                      LODWORD(v12) = v244;
                      goto LABEL_112;
                    }

LABEL_60:
                    v238 = *(v0 + 104);
                    if (v238)
                    {
                      v239 = OUTLINED_FUNCTION_34_15(v238);
                      v12 = v240;
                    }

                    else
                    {
                      v239 = vback(v0, v32);
                      v12 = 0;
                    }

                    v33 = v12;
                    v160 = v12;
                    v164 = v12;
                    v241 = v12;
                    v194 = v12;
                    v198 = v12;
                    v242 = v12;
                    v243 = v12;
                    v244 = v12;
                    switch(v239)
                    {
                      case 1:
                        continue;
                      case 2:
                      case 42:
                        goto LABEL_113;
                      case 3:
                        v24 = v12;
                        goto LABEL_22;
                      case 4:
                        goto LABEL_7;
                      case 5:
                        v359 = OUTLINED_FUNCTION_19_23();
                        bspush_ca_scan(v359, v360);
                        v28 = OUTLINED_FUNCTION_4_30();
                        v31 = 11;
                        goto LABEL_8;
                      case 6:
                        goto LABEL_9;
                      case 7:
                        v28 = OUTLINED_FUNCTION_6_30();
                        v31 = 6;
                        goto LABEL_8;
                      case 8:
                        goto LABEL_23;
                      case 9:
                        v245 = OUTLINED_FUNCTION_4_30();
                        v248 = testFldeq(v245, v246, v247, 1);
                        v32 = v12;
                        if (!v248)
                        {
                          v249 = advance_tok(v0);
                          v160 = v12;
                          v32 = v12;
                          if (!v249)
                          {
                            goto LABEL_42;
                          }
                        }

                        goto LABEL_60;
                      case 10:
                        goto LABEL_42;
                      case 11:
                        v290 = OUTLINED_FUNCTION_3_31();
                        v293 = testFldeq(v290, v291, v292, 10);
                        v32 = v12;
                        if (!v293)
                        {
                          v294 = advance_tok(v0);
                          v164 = v12;
                          v32 = v12;
                          if (!v294)
                          {
                            goto LABEL_43;
                          }
                        }

                        goto LABEL_60;
                      case 12:
                        goto LABEL_43;
                      case 13:
                        v361 = OUTLINED_FUNCTION_19_23();
                        bspush_ca_scan(v361, v362);
                        v167 = OUTLINED_FUNCTION_4_30();
                        v170 = 11;
                        goto LABEL_122;
                      case 14:
                        goto LABEL_123;
                      case 15:
                        v167 = OUTLINED_FUNCTION_6_30();
                        v170 = 6;
                        goto LABEL_122;
                      case 16:
                        goto LABEL_24;
                      case 17:
                        v285 = OUTLINED_FUNCTION_4_30();
                        v288 = testFldeq(v285, v286, v287, 1);
                        v32 = v12;
                        if (!v288)
                        {
                          v289 = advance_tok(v0);
                          v194 = v12;
                          v32 = v12;
                          if (!v289)
                          {
                            goto LABEL_49;
                          }
                        }

                        goto LABEL_60;
                      case 18:
                        goto LABEL_49;
                      case 19:
                        v306 = OUTLINED_FUNCTION_3_31();
                        v309 = testFldeq(v306, v307, v308, 10);
                        v32 = v12;
                        if (!v309)
                        {
                          v310 = advance_tok(v0);
                          v198 = v12;
                          v32 = v12;
                          if (!v310)
                          {
                            goto LABEL_50;
                          }
                        }

                        goto LABEL_60;
                      case 20:
                        goto LABEL_50;
                      case 21:
                        v78 = v12;
                        goto LABEL_25;
                      case 22:
                        goto LABEL_115;
                      case 23:
                        goto LABEL_116;
                      case 24:
                        goto LABEL_26;
                      case 25:
                        v88 = v12;
                        goto LABEL_27;
                      case 26:
                        goto LABEL_126;
                      case 27:
                        bspop_boa(v0);
                        v259 = advance_tok(v0);
                        v32 = v12;
                        if (!v259)
                        {
                          v260 = OUTLINED_FUNCTION_21_22();
                          v262 = lpta_loadp_setscan_r(v260, v261);
                          v32 = v12;
                          if (!v262)
                          {
                            v263 = OUTLINED_FUNCTION_3_31();
                            v266 = testFldeq(v263, v264, v265, 14);
                            v32 = v12;
                            if (!v266)
                            {
                              v267 = advance_tok(v0);
                              v32 = v12;
                              if (!v267)
                              {
                                v268 = OUTLINED_FUNCTION_18_24();
                                v270 = npush_fld(v268, v269, 5);
                                v32 = v12;
                                if (!v270)
                                {
                                  OUTLINED_FUNCTION_77_7(v270, v12, v271, v272, v273, v274, v275, v276);
                                  v284 = if_testeq(v0, v277, v278, v279, v280, v281, v282, v283);
                                  v32 = v12;
                                  if (!v284)
                                  {
                                    goto LABEL_131;
                                  }
                                }
                              }
                            }
                          }
                        }

                        goto LABEL_60;
                      case 28:
                      case 33:
                        bspop_boa(v0);
                        OUTLINED_FUNCTION_19_23();
                        bspush_ca_scan_boa();
                        v141 = OUTLINED_FUNCTION_4_30();
                        v144 = 9;
                        goto LABEL_125;
                      case 29:
                      case 34:
                        bspop_boa(v0);
                        goto LABEL_112;
                      case 30:
                        v95 = v12;
                        goto LABEL_28;
                      case 31:
                        goto LABEL_129;
                      case 32:
                        bspop_boa(v0);
                        v319 = advance_tok(v0);
                        v32 = v12;
                        if (!v319)
                        {
                          v320 = OUTLINED_FUNCTION_21_22();
                          v322 = lpta_loadp_setscan_r(v320, v321);
                          v32 = v12;
                          if (!v322)
                          {
                            v323 = OUTLINED_FUNCTION_3_31();
                            v326 = testFldeq(v323, v324, v325, 18);
                            v32 = v12;
                            if (!v326)
                            {
                              v327 = advance_tok(v0);
                              v32 = v12;
                              if (!v327)
                              {
                                v328 = OUTLINED_FUNCTION_18_24();
                                v330 = npush_fld(v328, v329, 5);
                                v32 = v12;
                                if (!v330)
                                {
                                  OUTLINED_FUNCTION_77_7(v330, v12, v331, v332, v333, v334, v335, v336);
                                  v344 = if_testeq(v0, v337, v338, v339, v340, v341, v342, v343);
                                  v32 = v12;
                                  if (!v344)
                                  {
                                    goto LABEL_131;
                                  }
                                }
                              }
                            }
                          }
                        }

                        goto LABEL_60;
                      case 35:
                        v102 = v12;
                        goto LABEL_29;
                      case 36:
                        goto LABEL_132;
                      case 37:
                        v255 = OUTLINED_FUNCTION_6_30();
                        testFldeq(v255, v256, v257, 1);
                        OUTLINED_FUNCTION_96_4();
                        if (!v258)
                        {
                          goto LABEL_133;
                        }

                        goto LABEL_60;
                      case 38:
                        goto LABEL_133;
                      case 39:
                        v311 = OUTLINED_FUNCTION_6_30();
                        v314 = testFldeq(v311, v312, v313, 2);
                        v32 = v12;
                        if (!v314)
                        {
                          v315 = OUTLINED_FUNCTION_3_31();
                          v318 = testFldeq(v315, v316, v317, 4);
                          v243 = v12;
                          v32 = v12;
                          if (!v318)
                          {
                            goto LABEL_136;
                          }
                        }

                        goto LABEL_60;
                      case 40:
                        goto LABEL_136;
                      case 41:
                        v295 = OUTLINED_FUNCTION_19_23();
                        bspush_ca_scan(v295, v296);
                        goto LABEL_87;
                      case 43:
                        v345 = OUTLINED_FUNCTION_4_30();
                        v348 = testFldeq(v345, v346, v347, 1);
                        v32 = v12;
                        if (v348)
                        {
                          goto LABEL_60;
                        }

                        v349 = advance_tok(v0);
                        v32 = v12;
                        if (v349)
                        {
                          goto LABEL_60;
                        }

                        goto LABEL_87;
                      case 44:
LABEL_87:
                        v297 = OUTLINED_FUNCTION_19_23();
                        bspush_ca_scan(v297, v298);
                        goto LABEL_88;
                      case 45:
                        v350 = OUTLINED_FUNCTION_3_31();
                        v353 = testFldeq(v350, v351, v352, 10);
                        v32 = v12;
                        if (v353)
                        {
                          goto LABEL_60;
                        }

                        v354 = advance_tok(v0);
                        v32 = v12;
                        if (v354)
                        {
                          goto LABEL_60;
                        }

                        goto LABEL_88;
                      case 46:
LABEL_88:
                        v299 = OUTLINED_FUNCTION_19_23();
                        bspush_ca_scan(v299, v300);
                        v301 = OUTLINED_FUNCTION_4_30();
                        v304 = 4;
                        goto LABEL_90;
                      case 47:
                        v301 = OUTLINED_FUNCTION_4_30();
                        v304 = 3;
LABEL_90:
                        v305 = testFldeq(v301, v302, v303, v304);
                        v32 = v12;
                        if (!v305)
                        {
                          goto LABEL_112;
                        }

                        goto LABEL_60;
                      case 48:
                        goto LABEL_112;
                      case 49:
                        v109 = v12;
                        goto LABEL_30;
                      case 50:
                        goto LABEL_139;
                      case 51:
                        v116 = v12;
                        goto LABEL_31;
                      case 52:
                        goto LABEL_144;
                      case 53:
                        v250 = OUTLINED_FUNCTION_4_30();
                        v253 = testFldeq(v250, v251, v252, 11);
                        v244 = v12;
                        v32 = v12;
                        if (!v253)
                        {
                          goto LABEL_157;
                        }

                        goto LABEL_60;
                      case 54:
                        goto LABEL_157;
                      case 56:
                        bspop_boa(v0);
                        v254 = advance_tok(v0);
                        v32 = v12;
                        if (v254)
                        {
                          goto LABEL_60;
                        }

                        HIWORD(v473) = *(v0 + 3066);
                        goto LABEL_113;
                      case 57:
                        goto LABEL_114;
                      default:
                        goto LABEL_3;
                    }
                  }
                }
              }

              goto LABEL_149;
            }

LABEL_31:
            LODWORD(v12) = v116;
            v117 = OUTLINED_FUNCTION_19_23();
            starttest(v117, v118);
            v119 = OUTLINED_FUNCTION_8_30();
            if (!lpta_loadp_setscan_r(v119, v120))
            {
              v121 = OUTLINED_FUNCTION_3_31();
              if (testFldeq(v121, v122, v123, 16))
              {
                goto LABEL_149;
              }

              v124 = OUTLINED_FUNCTION_18_24();
              v126 = npush_fld(v124, v125, 5);
              if (v126)
              {
                goto LABEL_149;
              }

              OUTLINED_FUNCTION_77_7(v126, v127, v128, v129, v130, v131, v132, v133);
              if (if_testeq(v0, v134, v135, v136, v137, v138, v139, v140) || advance_tok(v0))
              {
                goto LABEL_149;
              }

              OUTLINED_FUNCTION_19_23();
              bspush_ca_scan_boa();
              v141 = OUTLINED_FUNCTION_4_30();
              v144 = 3;
LABEL_125:
              testFldeq(v141, v142, v143, v144);
              OUTLINED_FUNCTION_95_4();
              goto LABEL_60;
            }

LABEL_3:
            vretproc(v0);
            result = 94;
            goto LABEL_4;
          }

LABEL_139:
          OUTLINED_FUNCTION_45_9(50, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472[0]);
          v425 = OUTLINED_FUNCTION_3_31();
          if (testFldeq(v425, v426, v427, 18))
          {
            goto LABEL_149;
          }

          if (advance_tok(v0))
          {
            goto LABEL_149;
          }

          v428 = OUTLINED_FUNCTION_21_22();
          if (lpta_loadp_setscan_r(v428, v429))
          {
            goto LABEL_149;
          }

          v430 = OUTLINED_FUNCTION_3_31();
          if (testFldeq(v430, v431, v432, 11))
          {
            goto LABEL_149;
          }

          v199 = OUTLINED_FUNCTION_6_30();
          v202 = 2;
          goto LABEL_51;
        }

LABEL_129:
        OUTLINED_FUNCTION_45_9(31, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472[0]);
        v381 = OUTLINED_FUNCTION_18_24();
        v383 = npush_fld(v381, v382, 5);
        if (v383)
        {
          goto LABEL_149;
        }

        OUTLINED_FUNCTION_77_7(v383, v384, v385, v386, v387, v388, v389, v390);
        if (if_testeq(v0, v391, v392, v393, v394, v395, v396, v397))
        {
          goto LABEL_149;
        }
      }

      else
      {
LABEL_126:
        OUTLINED_FUNCTION_45_9(26, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472[0]);
        v364 = OUTLINED_FUNCTION_18_24();
        v366 = npush_fld(v364, v365, 5);
        if (v366)
        {
          goto LABEL_149;
        }

        OUTLINED_FUNCTION_77_7(v366, v367, v368, v369, v370, v371, v372, v373);
        if (if_testeq(v0, v374, v375, v376, v377, v378, v379, v380))
        {
          goto LABEL_149;
        }
      }

LABEL_131:
      OUTLINED_FUNCTION_19_23();
      bspush_ca_scan_boa();
      v141 = OUTLINED_FUNCTION_3_31();
      v144 = 11;
      goto LABEL_125;
    }

    break;
  }

  v171 = OUTLINED_FUNCTION_1_32();
  if (testFldeq(v171, v172, v173, v174))
  {
    goto LABEL_149;
  }

  v175 = OUTLINED_FUNCTION_18_24();
  v177 = npush_fld(v175, v176, 5);
  if (v177)
  {
    goto LABEL_149;
  }

  OUTLINED_FUNCTION_65_7(v177, v178, v179, v180, v181, v182, v183, v184);
  if (if_testgt(v0, v185, v186, v187, v188, v189, v190, v191) || advance_tok(v0))
  {
    goto LABEL_149;
  }

  v192 = OUTLINED_FUNCTION_19_23();
  bspush_ca_scan(v192, v193);
  v194 = v12;
LABEL_49:
  v195 = v194;
  v196 = OUTLINED_FUNCTION_19_23();
  bspush_ca_scan(v196, v197);
  v198 = v195;
LABEL_50:
  LODWORD(v12) = v198;
  v199 = OUTLINED_FUNCTION_4_30();
  v202 = 3;
LABEL_51:
  if (testFldeq(v199, v200, v201, v202))
  {
    goto LABEL_149;
  }

LABEL_112:
  v355 = advance_tok(v0);
  v32 = v12;
  if (v355)
  {
    goto LABEL_60;
  }

LABEL_113:
  mark_word_stress();
LABEL_114:
  *(v1 + 8) = v474;
  vretproc(v0);
  result = 0;
LABEL_4:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t destress_postnuclear_expr()
{
  OUTLINED_FUNCTION_22_22();
  v51 = *MEMORY[0x277D85DE8];
  v49 = 0;
  v50 = 0;
  v47 = 0;
  v48 = 0;
  v46 = 0;
  OUTLINED_FUNCTION_33_16();
  bzero(&v45, v2);
  OUTLINED_FUNCTION_32_16();
  OUTLINED_FUNCTION_100_2(v3, v4);
  if (setjmp(v1))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_55_8();
  if (OUTLINED_FUNCTION_87_5(v5, v6, v7, v8, v9))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_27_19();
  v12 = OUTLINED_FUNCTION_28_18();
  OUTLINED_FUNCTION_64_7(v12, v13);
  v46 = 65532;
  fence_30(v0, 0, &null_str_9);
  fence_30(v0, 1, &_MergedGlobals_27);
  v14 = OUTLINED_FUNCTION_84_5();
  starttest(v14, v15);
  v16 = OUTLINED_FUNCTION_29_18();
  if (lpta_loadp_setscan_r(v16, v17))
  {
    goto LABEL_15;
  }

  v18 = OUTLINED_FUNCTION_18_24();
  v20 = npush_fld(v18, v19, 5);
  if (!v20)
  {
    OUTLINED_FUNCTION_65_7(v20, v21, v22, v23, v24, v25, v26, v27);
    if (!if_testgt(v0, v28, v29, v30, v31, v32, v33, v34) && !advance_tok(v0))
    {
      goto LABEL_3;
    }
  }

  while (1)
  {
    v35 = *(v0 + 104);
    if (v35)
    {
      v36 = OUTLINED_FUNCTION_34_15(v35);
    }

    else
    {
      v37 = OUTLINED_FUNCTION_47_9();
      v36 = vback(v37, v38);
    }

    if (v36 == 1)
    {
LABEL_15:
      OUTLINED_FUNCTION_67_7();
      is_postnuclear_expr();
      if (v39)
      {
        goto LABEL_3;
      }

      goto LABEL_16;
    }

    if (v36 != 2)
    {
      break;
    }

LABEL_16:
    v40 = OUTLINED_FUNCTION_17_25();
    starttest(v40, v41);
    v42 = OUTLINED_FUNCTION_26_21();
    move_i(v42, v43, v44);
    OUTLINED_FUNCTION_37_13();
    if (!mark_word_stress())
    {
      goto LABEL_17;
    }
  }

  if (v36 != 4)
  {
    goto LABEL_3;
  }

LABEL_17:
  OUTLINED_FUNCTION_94_4(v48);
LABEL_3:
  vretproc(v0);
  v10 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_90_5();
}

uint64_t destress_adverbs()
{
  OUTLINED_FUNCTION_22_22();
  v149 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_12_29(v1, v2, v3, v4, v5, v6, v7, v8, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142, v144, v145, v146);
  OUTLINED_FUNCTION_32_16();
  bzero(v148, v9);
  if (setjmp(v148))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_55_8();
  if (ventproc(v0, v10, v11, v12, v13, v148))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_27_19();
  v16 = OUTLINED_FUNCTION_28_18();
  OUTLINED_FUNCTION_64_7(v16, v17);
  v18 = OUTLINED_FUNCTION_36_13();
  v20 = push_ptr_init(v18, v19);
  OUTLINED_FUNCTION_73_7(v20, v21, &null_str_9);
  v22 = OUTLINED_FUNCTION_49_8();
  fence_30(v22, v23, v24);
  OUTLINED_FUNCTION_98_3();
  v25 = OUTLINED_FUNCTION_29_18();
  v27 = lpta_loadp_setscan_l(v25, v26);
  if (v27)
  {
    while (2)
    {
      v43 = OUTLINED_FUNCTION_17_25();
      starttest(v43, v44);
      v45 = OUTLINED_FUNCTION_21_22();
      if (lpta_loadp_setscan_r(v45, v46))
      {
LABEL_14:
        v47 = OUTLINED_FUNCTION_19_23();
        starttest(v47, v48);
        v49 = OUTLINED_FUNCTION_37_13();
        lpta_loadpn(v49, v50);
        v51 = OUTLINED_FUNCTION_79_7();
        rpta_loadpn(v51, v52);
        if (compare_ptas(v0))
        {
          goto LABEL_3;
        }

        if (testneq(v0))
        {
          goto LABEL_3;
        }

        v53 = OUTLINED_FUNCTION_21_22();
        if (lpta_loadp_setscan_r(v53, v54))
        {
          goto LABEL_3;
        }

        v55 = OUTLINED_FUNCTION_4_30();
        if (!testFldeq(v55, v56, v57, 1))
        {
          OUTLINED_FUNCTION_84_5();
          bspush_ca_scan_boa();
          v58 = OUTLINED_FUNCTION_3_31();
          testFldeq(v58, v59, v60, 6);
        }
      }

      else
      {
        v61 = OUTLINED_FUNCTION_18_24();
        v63 = npush_fld(v61, v62, 5);
        if (!v63)
        {
          OUTLINED_FUNCTION_65_7(v63, v64, v65, v66, v67, v68, v69, v70);
          if (!if_testgt(v0, v71, v72, v73, v74, v75, v76, v77) && !advance_tok(v0))
          {
            goto LABEL_3;
          }
        }
      }

LABEL_21:
      OUTLINED_FUNCTION_75_7();
LABEL_22:
      v79 = v0[13];
      if (v79)
      {
        v27 = OUTLINED_FUNCTION_34_15(v79);
        v81 = v80;
      }

      else
      {
        v27 = vback(v0, v78);
        v81 = 0;
      }

      switch(v27)
      {
        case 1:
          continue;
        case 2:
          goto LABEL_5;
        case 3:
          goto LABEL_36;
        case 4:
          goto LABEL_14;
        case 6:
          bspop_boa(v0);
          OUTLINED_FUNCTION_84_5();
          bspush_ca_scan_boa();
          v82 = OUTLINED_FUNCTION_3_31();
          if (testFldeq(v82, v83, v84, 7))
          {
            v78 = v81;
          }

          else
          {
            v78 = 1;
          }

          goto LABEL_22;
        case 7:
          bspop_boa(v0);
          v91 = advance_tok(v0);
          v78 = v81;
          if (v91)
          {
            goto LABEL_22;
          }

          v92 = OUTLINED_FUNCTION_29_18();
          bspush_ca_scan(v92, v93);
          v87 = OUTLINED_FUNCTION_4_30();
          v90 = 3;
          goto LABEL_34;
        case 8:
          OUTLINED_FUNCTION_99_3();
          v87 = OUTLINED_FUNCTION_4_30();
          v90 = 9;
          goto LABEL_34;
        case 9:
          goto LABEL_35;
        case 10:
          v85 = OUTLINED_FUNCTION_63_7();
          bspush_ca_scan(v85, v86);
          v87 = OUTLINED_FUNCTION_6_30();
          v90 = 6;
          goto LABEL_34;
        case 11:
          v87 = OUTLINED_FUNCTION_6_30();
          v90 = 7;
LABEL_34:
          v94 = testFldeq(v87, v88, v89, v90);
          v78 = v81;
          if (v94)
          {
            goto LABEL_22;
          }

LABEL_35:
          v95 = advance_tok(v0);
          v78 = v81;
          if (!v95)
          {
            goto LABEL_36;
          }

          goto LABEL_22;
        case 12:
          goto LABEL_37;
        default:
          goto LABEL_3;
      }
    }
  }

LABEL_5:
  OUTLINED_FUNCTION_76_7(v27, 2, v28, v29, v30, v31, v32, v33, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, v141, v143);
  if (testFldeq(v0, 2u, 3, 8))
  {
    goto LABEL_21;
  }

  if (advance_tok(v0))
  {
    goto LABEL_21;
  }

  v34 = OUTLINED_FUNCTION_21_22();
  if (lpta_loadp_setscan_r(v34, v35))
  {
    goto LABEL_21;
  }

  v36 = OUTLINED_FUNCTION_3_31();
  if (testFldeq(v36, v37, v38, 6))
  {
    goto LABEL_21;
  }

  if (advance_tok(v0))
  {
    goto LABEL_21;
  }

  v39 = OUTLINED_FUNCTION_1_32();
  if (testFldeq(v39, v40, v41, v42) || advance_tok(v0))
  {
    goto LABEL_21;
  }

LABEL_36:
  mark_word_stress();
LABEL_37:
  OUTLINED_FUNCTION_94_4(v147);
LABEL_3:
  vretproc(v0);
  v14 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_90_5();
}

void destress_verbs()
{
  OUTLINED_FUNCTION_66_7();
  v138 = v1;
  OUTLINED_FUNCTION_57_8();
  v157 = *MEMORY[0x277D85DE8];
  v144 = 0;
  v145 = 0;
  v142 = 0;
  v143 = 0;
  HIDWORD(v141) = 65532;
  OUTLINED_FUNCTION_33_16();
  bzero(v140, v2);
  OUTLINED_FUNCTION_32_16();
  bzero(v156, v3);
  v4 = setjmp(v156);
  if (v4 || OUTLINED_FUNCTION_85_5(v4, v140, v5, v6, v7, v8, v9, v10, v137, v138, v140[0], v140[1], v140[2], v140[3], v140[4], v140[5], v140[6], v140[7], v140[8], v140[9], v140[10], v140[11], v140[12], v140[13], v140[14], v140[15], v140[16], v140[17], v140[18], v140[19], v140[20], v140[21], v140[22], v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156[0]))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_20_22();
  v12 = OUTLINED_FUNCTION_82_6();
  get_parm(v12, v13, v139, -6);
  v16 = OUTLINED_FUNCTION_73_7(v14, v15, &null_str_9);
  OUTLINED_FUNCTION_59_8(v16, v17, &_MergedGlobals_27);
  HIWORD(v141) = *(v0 + 3066);
  OUTLINED_FUNCTION_88_5();
  v18 = OUTLINED_FUNCTION_14_27();
  if (!lpta_loadp_setscan_r(v18, v19))
  {
    v41 = OUTLINED_FUNCTION_18_24();
    v43 = npush_fld(v41, v42, 5);
    if (v43)
    {
      goto LABEL_27;
    }

    OUTLINED_FUNCTION_77_7(v43, v44, v45, v46, v47, v48, v49, v50);
    if (if_testeq(v0, v51, v52, v53, v54, v55, v56, v57) || advance_tok(v0))
    {
      goto LABEL_27;
    }

    goto LABEL_3;
  }

  while (2)
  {
    v20 = OUTLINED_FUNCTION_19_23();
    starttest(v20, v21);
    v22 = OUTLINED_FUNCTION_21_22();
    if (lpta_loadp_setscan_r(v22, v23))
    {
LABEL_21:
      v58 = OUTLINED_FUNCTION_19_23();
      starttest(v58, v59);
      v60 = OUTLINED_FUNCTION_21_22();
      if (!lpta_loadp_setscan_r(v60, v61))
      {
        v62 = OUTLINED_FUNCTION_19_23();
        bspush_ca_scan(v62, v63);
        v64 = OUTLINED_FUNCTION_4_30();
        if (!testFldeq(v64, v65, v66, 3))
        {
LABEL_23:
          if (!advance_tok(v0))
          {
            v67 = OUTLINED_FUNCTION_18_24();
            if (!npush_fld(v67, v68, 5))
            {
              npush_v(v0, (v0 + 3064), v69, v70, v71, v72, v73, v74);
              if (!if_testlt(v0, v75, v76, v77, v78, v79, v80, v81))
              {
                OUTLINED_FUNCTION_19_23();
                bspush_ca_scan_boa();
                v82 = OUTLINED_FUNCTION_3_31();
                testFldeq(v82, v83, v84, 25);
              }
            }
          }
        }

        goto LABEL_27;
      }

LABEL_3:
      vretproc(v0);
      goto LABEL_4;
    }

    v24 = OUTLINED_FUNCTION_17_25();
    bspush_ca_scan(v24, v25);
    v26 = OUTLINED_FUNCTION_4_30();
    if (testFldeq(v26, v27, v28, 3))
    {
      goto LABEL_27;
    }

LABEL_8:
    if (advance_tok(v0))
    {
      goto LABEL_27;
    }

    v29 = OUTLINED_FUNCTION_6_30();
    if (testFldeq(v29, v30, v31, 6) || advance_tok(v0))
    {
      goto LABEL_27;
    }

    v32 = OUTLINED_FUNCTION_19_23();
    starttest_l(v32, v33);
    v34 = OUTLINED_FUNCTION_21_22();
    if (lpta_loadp_setscan_r(v34, v35))
    {
      goto LABEL_15;
    }

    v36 = OUTLINED_FUNCTION_19_23();
    bspush_ca_scan(v36, v37);
    v38 = OUTLINED_FUNCTION_3_31();
    if (testFldeq(v38, v39, v40, 19))
    {
LABEL_27:
      OUTLINED_FUNCTION_75_7();
LABEL_28:
      v86 = *(v0 + 104);
      if (v86)
      {
        v87 = OUTLINED_FUNCTION_34_15(v86);
        v89 = v88;
      }

      else
      {
        v87 = vback(v0, v85);
        v89 = 0;
      }

      switch(v87)
      {
        case 1:
          continue;
        case 2:
        case 7:
        case 21:
          goto LABEL_15;
        case 3:
          goto LABEL_21;
        case 4:
          v90 = OUTLINED_FUNCTION_29_18();
          bspush_ca_scan(v90, v91);
          v92 = OUTLINED_FUNCTION_4_30();
          v95 = 11;
          goto LABEL_49;
        case 5:
          goto LABEL_8;
        case 6:
          v92 = OUTLINED_FUNCTION_6_30();
          v95 = 7;
LABEL_49:
          testFldeq(v92, v93, v94, v95);
          OUTLINED_FUNCTION_72_7();
          if (!v133)
          {
            goto LABEL_8;
          }

          goto LABEL_28;
        case 8:
          OUTLINED_FUNCTION_99_3();
          v111 = OUTLINED_FUNCTION_3_31();
          v114 = 17;
          goto LABEL_46;
        case 9:
          goto LABEL_13;
        case 10:
          v111 = OUTLINED_FUNCTION_3_31();
          v114 = 20;
LABEL_46:
          v132 = testFldeq(v111, v112, v113, v114);
          v85 = v89;
          if (!v132)
          {
            goto LABEL_13;
          }

          goto LABEL_28;
        case 12:
          v102 = OUTLINED_FUNCTION_68_7();
          bspush_ca_scan(v102, v103);
          v104 = OUTLINED_FUNCTION_4_30();
          v107 = 11;
          goto LABEL_52;
        case 13:
          goto LABEL_23;
        case 14:
          v134 = OUTLINED_FUNCTION_81_6();
          bspush_ca_scan(v134, v135);
          v104 = OUTLINED_FUNCTION_6_30();
          v107 = 7;
          goto LABEL_52;
        case 15:
          v104 = OUTLINED_FUNCTION_6_30();
          v107 = 6;
LABEL_52:
          testFldeq(v104, v105, v106, v107);
          OUTLINED_FUNCTION_96_4();
          if (!v136)
          {
            goto LABEL_23;
          }

          goto LABEL_28;
        case 16:
          bspop_boa(v0);
          OUTLINED_FUNCTION_19_23();
          bspush_ca_scan_boa();
          v108 = OUTLINED_FUNCTION_3_31();
          testFldeq(v108, v109, v110, 9);
          OUTLINED_FUNCTION_95_4();
          goto LABEL_28;
        case 17:
          bspop_boa(v0);
          v96 = advance_tok(v0);
          v85 = v89;
          if (v96)
          {
            goto LABEL_28;
          }

          goto LABEL_34;
        case 18:
LABEL_34:
          v97 = OUTLINED_FUNCTION_62_7();
          savescptr(v97, v98, &v142);
          v99 = OUTLINED_FUNCTION_44_9();
          bspush_ca_scan(v99, v100);
          goto LABEL_35;
        case 19:
          v115 = OUTLINED_FUNCTION_18_24();
          v117 = npush_fld(v115, v116, 5);
          v85 = v89;
          if (v117)
          {
            goto LABEL_28;
          }

          OUTLINED_FUNCTION_77_7(v117, v89, v118, v119, v120, v121, v122, v123);
          v131 = if_testeq(v0, v124, v125, v126, v127, v128, v129, v130);
          v85 = v89;
          if (v131)
          {
            goto LABEL_28;
          }

          v101 = advance_tok(v0);
          goto LABEL_36;
        case 20:
LABEL_35:
          v101 = test_synch(v0, 20, 1u, &_MergedGlobals_27);
LABEL_36:
          v85 = v89;
          if (!v101)
          {
            goto LABEL_15;
          }

          goto LABEL_28;
        case 22:
          goto LABEL_16;
        default:
          goto LABEL_3;
      }
    }

    break;
  }

LABEL_13:
  if (advance_tok(v0))
  {
    goto LABEL_27;
  }

  HIWORD(v141) = *(v0 + 3054);
LABEL_15:
  mark_word_stress();
LABEL_16:
  *(v139 + 8) = v143;
  vretproc(v0);
LABEL_4:
  v11 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_71_7();
}

void destress_proper_names()
{
  OUTLINED_FUNCTION_66_7();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v192 = *MEMORY[0x277D85DE8];
  v186 = 0;
  v187 = 0;
  v184 = 0;
  v185 = 0;
  v183[0] = 0;
  v183[1] = 0;
  v182[0] = 0;
  v182[1] = 0;
  v180 = 0;
  v181 = 0;
  v178 = 0;
  v179 = 0;
  HIDWORD(v177) = 0;
  OUTLINED_FUNCTION_33_16();
  bzero(&v154, v6);
  OUTLINED_FUNCTION_32_16();
  bzero(v191, v7);
  if (!setjmp(v191) && !ventproc(v5, &v154, v190, v189, v188, v191))
  {
    v9 = OUTLINED_FUNCTION_44_9();
    get_parm(v9, v10, v3, -6);
    v153 = v1;
    OUTLINED_FUNCTION_89_5(v5, &v184);
    push_ptr_init(v5, v183);
    push_ptr_init(v5, v182);
    push_ptr_init(v5, &v180);
    v11 = OUTLINED_FUNCTION_82_6();
    v13 = push_ptr_init(v11, v12);
    HIDWORD(v177) = 65532;
    v14 = 0;
    v16 = OUTLINED_FUNCTION_73_7(v13, v15, &null_str_9);
    OUTLINED_FUNCTION_59_8(v16, v17, &_MergedGlobals_27);
    OUTLINED_FUNCTION_88_5();
    v18 = OUTLINED_FUNCTION_44_9();
    if (lpta_loadp_setscan_r(v18, v19))
    {
LABEL_5:
      v20 = v14;
      v21 = OUTLINED_FUNCTION_19_23();
      starttest(v21, v22);
      v23 = OUTLINED_FUNCTION_21_22();
      if (!lpta_loadp_setscan_l(v23, v24))
      {
LABEL_6:
        OUTLINED_FUNCTION_40_10();
        savescptr(v5, v25, &v180);
LABEL_7:
        OUTLINED_FUNCTION_19_23();
        bspush_ca_scan_boa();
        v26 = OUTLINED_FUNCTION_2_32();
        testFldeq(v26, v27, v28, v29);
        OUTLINED_FUNCTION_96_4();
        if (!v32)
        {
          v33 = v31;
          if (advance_tok(v5))
          {
            v30 = v33;
          }

          else
          {
            v30 = 1;
          }
        }

        goto LABEL_15;
      }

LABEL_38:
      v101 = OUTLINED_FUNCTION_19_23();
      starttest(v101, v102);
      v103 = OUTLINED_FUNCTION_21_22();
      if (!lpta_loadp_setscan_r(v103, v104))
      {
        v114 = OUTLINED_FUNCTION_2_32();
        if (testFldeq(v114, v115, v116, v117))
        {
          goto LABEL_61;
        }

        v118 = advance_tok(v5);
        v30 = v20;
        if (v118)
        {
          goto LABEL_15;
        }

LABEL_53:
        savescptr(v5, 13, v183);
        v130 = OUTLINED_FUNCTION_2_32();
        if (testFldeq(v130, v131, v132, v133) || advance_tok(v5))
        {
          goto LABEL_61;
        }

        v134 = OUTLINED_FUNCTION_19_23();
        bspush_ca_scan(v134, v135);
        v54 = v20;
LABEL_56:
        v14 = v54;
        OUTLINED_FUNCTION_70_7(15, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182[0]);
        v136 = OUTLINED_FUNCTION_2_32();
        if (!testFldeq(v136, v137, v138, v139))
        {
          v140 = advance_tok(v5);
          v30 = v14;
          if (v140)
          {
            goto LABEL_15;
          }

LABEL_58:
          OUTLINED_FUNCTION_48_9();
          savescptr(v5, v141, &v184);
          goto LABEL_7;
        }

        goto LABEL_65;
      }

LABEL_39:
      v105 = OUTLINED_FUNCTION_19_23();
      starttest(v105, v106);
      v107 = OUTLINED_FUNCTION_21_22();
      if (lpta_loadp_setscan_r(v107, v108))
      {
        goto LABEL_3;
      }

      v109 = OUTLINED_FUNCTION_2_32();
      if (testFldeq(v109, v110, v111, v112))
      {
        goto LABEL_61;
      }

      v113 = advance_tok(v5);
      v30 = v20;
      if (v113)
      {
        goto LABEL_15;
      }

LABEL_60:
      savescptr(v5, 19, v183);
      v142 = OUTLINED_FUNCTION_2_32();
      if (testFldeq(v142, v143, v144, v145))
      {
        goto LABEL_61;
      }

      v146 = advance_tok(v5);
      v30 = v20;
      v14 = v20;
      if (v146)
      {
        goto LABEL_15;
      }

LABEL_63:
      OUTLINED_FUNCTION_70_7(20, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182[0]);
LABEL_64:
      savescptr(v5, 21, &v184);
      v147 = OUTLINED_FUNCTION_2_32();
      if (testFldeq(v147, v148, v149, v150))
      {
LABEL_65:
        v30 = v14;
        goto LABEL_15;
      }

      v151 = advance_tok(v5);
      v30 = v14;
      if (v151)
      {
        goto LABEL_15;
      }

LABEL_34:
      v92 = OUTLINED_FUNCTION_19_23();
      startloop(v92, v93);
      lpta_loadpn(v5, v183);
      OUTLINED_FUNCTION_18_24();
      lpta_mover();
      v94 = OUTLINED_FUNCTION_44_9();
      lpta_storep(v94, v95);
      lpta_loadpn(v5, v182);
      OUTLINED_FUNCTION_18_24();
      lpta_mover();
      v96 = OUTLINED_FUNCTION_26_21();
      lpta_storep(v96, v97);
      v98 = OUTLINED_FUNCTION_44_9();
      v100 = forall_to_test(v98, v99, &v180);
      v30 = v14;
      v20 = v14;
      if (v100)
      {
        goto LABEL_15;
      }

LABEL_47:
      v119 = OUTLINED_FUNCTION_19_23();
      bspush_ca(v119);
      v120 = OUTLINED_FUNCTION_21_22();
      if (lpta_loadp_setscan_r(v120, v121))
      {
LABEL_61:
        v30 = v20;
        goto LABEL_15;
      }

      v122 = advance_tok(v5);
      v30 = v20;
      v14 = v20;
      if (!v122)
      {
LABEL_49:
        v123 = OUTLINED_FUNCTION_19_23();
        starttest(v123, v124);
        v125 = OUTLINED_FUNCTION_44_9();
        move_i(v125, v126, v127);
        OUTLINED_FUNCTION_82_6();
        v128 = mark_word_stress();
        v30 = v14;
        if (!v128)
        {
LABEL_50:
          v129 = forto_adv_upto_r(v5, 22, 23, 25, 2, &v178);
          v30 = v14;
          if (!v129)
          {
LABEL_51:
            *(v153 + 8) = v185;
            goto LABEL_3;
          }
        }
      }
    }

    else
    {
      v34 = OUTLINED_FUNCTION_18_24();
      v36 = npush_fld(v34, v35, 5);
      if (!v36)
      {
        OUTLINED_FUNCTION_65_7(v36, v37, v38, v39, v40, v41, v42, v43);
        if (!if_testgt(v5, v44, v45, v46, v47, v48, v49, v50) && !advance_tok(v5))
        {
          goto LABEL_3;
        }
      }

      v30 = 0;
    }

LABEL_15:
    while (2)
    {
      v51 = v5[13];
      if (v51)
      {
        v52 = OUTLINED_FUNCTION_34_15(v51);
        v14 = v53;
      }

      else
      {
        v52 = vback(v5, v30);
        v14 = 0;
      }

      v54 = v14;
      switch(v52)
      {
        case 1:
          goto LABEL_5;
        case 2:
          goto LABEL_34;
        case 3:
          v20 = v14;
          goto LABEL_38;
        case 4:
          goto LABEL_6;
        case 5:
          bspop_boa(v5);
          v55 = lpta_loadp_setscan_r(v5, &v180);
          v30 = v14;
          if (v55)
          {
            continue;
          }

          goto LABEL_20;
        case 6:
LABEL_20:
          v56 = OUTLINED_FUNCTION_29_18();
          savescptr(v56, v57, v183);
          v58 = OUTLINED_FUNCTION_2_32();
          v62 = testFldeq(v58, v59, v60, v61);
          v30 = v14;
          if (!v62)
          {
            v63 = advance_tok(v5);
            v30 = v14;
            if (!v63)
            {
              goto LABEL_22;
            }
          }

          continue;
        case 7:
LABEL_22:
          v64 = OUTLINED_FUNCTION_63_7();
          savescptr(v64, v65, v182);
          v66 = OUTLINED_FUNCTION_68_7();
          bspush_ca_scan(v66, v67);
          goto LABEL_23;
        case 8:
          v87 = OUTLINED_FUNCTION_4_30();
          v90 = testFldeq(v87, v88, v89, 9);
          v30 = v14;
          if (v90)
          {
            continue;
          }

          v91 = advance_tok(v5);
          v30 = v14;
          if (v91)
          {
            continue;
          }

          goto LABEL_23;
        case 9:
LABEL_23:
          v68 = OUTLINED_FUNCTION_2_32();
          v72 = testFldeq(v68, v69, v70, v71);
          v30 = v14;
          if (!v72)
          {
            v73 = advance_tok(v5);
            v30 = v14;
            if (!v73)
            {
              goto LABEL_25;
            }
          }

          continue;
        case 10:
LABEL_25:
          v74 = OUTLINED_FUNCTION_81_6();
          savescptr(v74, v75, &v184);
          OUTLINED_FUNCTION_44_9();
          bspush_ca_scan_boa();
          v76 = OUTLINED_FUNCTION_2_32();
          v80 = testFldeq(v76, v77, v78, v79);
          v30 = v14;
          if (!v80)
          {
            advance_tok(v5);
            OUTLINED_FUNCTION_95_4();
          }

          continue;
        case 11:
        case 17:
          bspop_boa(v5);
          goto LABEL_34;
        case 12:
          v20 = v14;
          goto LABEL_39;
        case 13:
          v20 = v14;
          goto LABEL_53;
        case 14:
          v81 = OUTLINED_FUNCTION_2_32();
          v85 = testFldeq(v81, v82, v83, v84);
          v30 = v14;
          if (!v85)
          {
            advance_tok(v5);
            OUTLINED_FUNCTION_72_7();
            if (!v86)
            {
              goto LABEL_56;
            }
          }

          continue;
        case 15:
          goto LABEL_56;
        case 16:
          goto LABEL_58;
        case 19:
          v20 = v14;
          goto LABEL_60;
        case 20:
          goto LABEL_63;
        case 21:
          goto LABEL_64;
        case 22:
          goto LABEL_51;
        case 23:
          goto LABEL_49;
        case 24:
          goto LABEL_50;
        case 25:
          v20 = v14;
          goto LABEL_47;
        default:
          goto LABEL_3;
      }
    }
  }

LABEL_3:
  vretproc(v5);
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_71_7();
}

uint64_t destress_numbers(void *a1, uint64_t a2, uint64_t a3)
{
  v312 = *MEMORY[0x277D85DE8];
  v306 = 0;
  v307 = 0;
  v304 = 0;
  v305 = 0;
  v302 = 0;
  v303 = 0;
  OUTLINED_FUNCTION_92_4();
  v296 = 0;
  v297 = 0;
  HIDWORD(v295) = 0;
  OUTLINED_FUNCTION_33_16();
  bzero(&v272, v5);
  OUTLINED_FUNCTION_32_16();
  bzero(v311, v6);
  v7 = setjmp(v311);
  if (v7 || OUTLINED_FUNCTION_87_5(v7, &v272, v310, v309, v308))
  {
    goto LABEL_3;
  }

  v10 = OUTLINED_FUNCTION_26_21();
  OUTLINED_FUNCTION_89_5(v10, v11);
  OUTLINED_FUNCTION_41_9(v12, &v304);
  v13 = OUTLINED_FUNCTION_60_8();
  push_ptr_init(v13, v14);
  v15 = OUTLINED_FUNCTION_25_21();
  push_ptr_init(v15, v16);
  v17 = OUTLINED_FUNCTION_37_13();
  push_ptr_init(v17, v18);
  v19 = OUTLINED_FUNCTION_28_18();
  v21 = push_ptr_init(v19, v20);
  HIDWORD(v295) = 65532;
  v22 = 0;
  OUTLINED_FUNCTION_73_7(v21, v23, &null_str_9);
  v24 = OUTLINED_FUNCTION_49_8();
  fence_30(v24, v25, v26);
  OUTLINED_FUNCTION_98_3();
  v27 = OUTLINED_FUNCTION_14_27();
  if (lpta_loadp_setscan_r(v27, v28))
  {
    while (2)
    {
      v47 = OUTLINED_FUNCTION_19_23();
      starttest(v47, v48);
      v49 = OUTLINED_FUNCTION_13_29();
      LODWORD(v51) = v22;
      if (!lpta_loadp_setscan_r(v49, v50))
      {
LABEL_12:
        OUTLINED_FUNCTION_40_10();
        v52 = OUTLINED_FUNCTION_54_8();
        savescptr(v52, v53, v54);
        v55 = OUTLINED_FUNCTION_0_34();
        if (testFldeq(v55, v56, v57, v58) || advance_tok(a1))
        {
          goto LABEL_111;
        }

        v59 = OUTLINED_FUNCTION_19_23();
        bspush_ca_scan(v59, v60);
        v61 = v51;
LABEL_15:
        LODWORD(v51) = v61;
        v62 = OUTLINED_FUNCTION_3_31();
        if (testFldeq(v62, v63, v64, 32))
        {
          goto LABEL_111;
        }

        advance_tok(a1);
        OUTLINED_FUNCTION_72_7();
        if (v66)
        {
          goto LABEL_17;
        }

LABEL_41:
        LODWORD(v51) = v65;
        OUTLINED_FUNCTION_46_9(7, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300);
        v109 = OUTLINED_FUNCTION_0_34();
        if (testFldeq(v109, v110, v111, v112))
        {
          goto LABEL_111;
        }

        advance_tok(a1);
        OUTLINED_FUNCTION_72_7();
        if (v113)
        {
          goto LABEL_17;
        }

LABEL_39:
        LODWORD(v51) = v108;
        OUTLINED_FUNCTION_52_8(8, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304);
        goto LABEL_96;
      }

LABEL_53:
      v125 = OUTLINED_FUNCTION_19_23();
      starttest(v125, v126);
      v127 = OUTLINED_FUNCTION_13_29();
      LODWORD(v51) = v22;
      if (lpta_loadp_setscan_l(v127, v128))
      {
LABEL_54:
        v129 = OUTLINED_FUNCTION_19_23();
        starttest(v129, v130);
        v131 = OUTLINED_FUNCTION_13_29();
        if (lpta_loadp_setscan_r(v131, v132))
        {
LABEL_55:
          v133 = OUTLINED_FUNCTION_19_23();
          starttest(v133, v134);
          v135 = OUTLINED_FUNCTION_13_29();
          LODWORD(v51) = v22;
          if (lpta_loadp_setscan_r(v135, v136))
          {
LABEL_56:
            v137 = OUTLINED_FUNCTION_19_23();
            starttest(v137, v138);
            v139 = OUTLINED_FUNCTION_13_29();
            if (lpta_loadp_setscan_r(v139, v140))
            {
              LODWORD(v51) = v22;
LABEL_58:
              v141 = OUTLINED_FUNCTION_19_23();
              starttest(v141, v142);
              v143 = OUTLINED_FUNCTION_13_29();
              if (!lpta_loadp_setscan_r(v143, v144))
              {
                v201 = OUTLINED_FUNCTION_0_34();
                if (testFldeq(v201, v202, v203, v204))
                {
                  goto LABEL_111;
                }

                v205 = advance_tok(a1);
                v46 = v51;
                if (v205)
                {
                  goto LABEL_17;
                }

LABEL_90:
                OUTLINED_FUNCTION_53_8(33, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300, v301, v302);
                v206 = OUTLINED_FUNCTION_0_34();
                if (testFldeq(v206, v207, v208, v209))
                {
                  goto LABEL_111;
                }

                v210 = advance_tok(a1);
                v46 = v51;
                if (v210)
                {
                  goto LABEL_17;
                }

LABEL_92:
                OUTLINED_FUNCTION_46_9(34, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300);
LABEL_93:
                v124 = 35;
                goto LABEL_94;
              }

LABEL_59:
              v145 = OUTLINED_FUNCTION_19_23();
              starttest(v145, v146);
              v147 = OUTLINED_FUNCTION_13_29();
              if (lpta_loadp_setscan_r(v147, v148))
              {
                goto LABEL_3;
              }

              v149 = OUTLINED_FUNCTION_0_34();
              if (testFldeq(v149, v150, v151, v152))
              {
                goto LABEL_111;
              }

              if (advance_tok(a1))
              {
                goto LABEL_111;
              }

              v153 = OUTLINED_FUNCTION_3_31();
              if (testFldeq(v153, v154, v155, 34))
              {
                goto LABEL_111;
              }

              v156 = advance_tok(a1);
              v46 = v51;
              v22 = v51;
              if (v156)
              {
                goto LABEL_17;
              }

LABEL_45:
              LODWORD(v51) = 37;
              v114 = OUTLINED_FUNCTION_54_8();
              savescptr(v114, v115, v116);
              v117 = OUTLINED_FUNCTION_3_31();
              if (!testFldeq(v117, v118, v119, 37) && !advance_tok(a1))
              {
                v120 = OUTLINED_FUNCTION_3_31();
                if (!testFldeq(v120, v121, v122, 34))
                {
                  advance_tok(a1);
                  OUTLINED_FUNCTION_97_4();
                  if (v123)
                  {
                    goto LABEL_17;
                  }

LABEL_49:
                  OUTLINED_FUNCTION_46_9(38, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300);
LABEL_50:
                  v124 = 39;
LABEL_94:
                  OUTLINED_FUNCTION_52_8(v124, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304);
                  v211 = OUTLINED_FUNCTION_0_34();
                  if (testFldeq(v211, v212, v213, v214))
                  {
                    goto LABEL_111;
                  }

                  v215 = advance_tok(a1);
                  v46 = v51;
                  if (v215)
                  {
                    goto LABEL_17;
                  }

LABEL_96:
                  v216 = OUTLINED_FUNCTION_19_23();
                  startloop(v216, v217);
                  v218 = OUTLINED_FUNCTION_60_8();
                  lpta_loadpn(v218, v219);
                  OUTLINED_FUNCTION_18_24();
                  lpta_mover();
                  v220 = OUTLINED_FUNCTION_26_21();
                  lpta_storep(v220, v221);
                  v222 = OUTLINED_FUNCTION_25_21();
                  lpta_loadpn(v222, v223);
                  OUTLINED_FUNCTION_18_24();
                  lpta_mover();
                  v224 = OUTLINED_FUNCTION_29_18();
                  lpta_storep(v224, v225);
                  v226 = OUTLINED_FUNCTION_26_21();
                  v228 = forall_to_test(v226, v227, &v298);
                  v46 = v51;
                  if (v228)
                  {
                    goto LABEL_17;
                  }

LABEL_97:
                  v229 = OUTLINED_FUNCTION_19_23();
                  bspush_ca(v229);
                  v230 = OUTLINED_FUNCTION_10_30();
                  if (!lpta_loadp_setscan_r(v230, v231))
                  {
                    v232 = OUTLINED_FUNCTION_18_24();
                    v234 = npush_fld(v232, v233, 5);
                    if (!v234)
                    {
                      OUTLINED_FUNCTION_65_7(v234, v235, v236, v237, v238, v239, v240, v241);
                      if (!if_testeq(a1, v242, v243, v244, v245, v246, v247, v248))
                      {
                        v249 = advance_tok(a1);
                        v46 = v51;
                        if (!v249)
                        {
LABEL_101:
                          v250 = OUTLINED_FUNCTION_19_23();
                          starttest(v250, v251);
                          v51 = &v295 + 4;
                          v252 = OUTLINED_FUNCTION_26_21();
                          move_i(v252, v253, v254);
                          OUTLINED_FUNCTION_28_18();
                          mark_word_stress();
                          OUTLINED_FUNCTION_97_4();
                          if (!v255)
                          {
LABEL_102:
                            v256 = forto_adv_upto_r(a1, 40, 41, 43, 2, &v296);
                            v46 = v51;
                            if (!v256)
                            {
LABEL_103:
                              OUTLINED_FUNCTION_94_4(v305);
                              goto LABEL_4;
                            }
                          }
                        }

LABEL_17:
                        v67 = a1[13];
                        if (v67)
                        {
                          v68 = OUTLINED_FUNCTION_34_15(v67);
                          LODWORD(v51) = v69;
                        }

                        else
                        {
                          v68 = vback(a1, v46);
                          LODWORD(v51) = 0;
                        }

                        v61 = v51;
                        v70 = v51;
                        switch(v68)
                        {
                          case 1:
                            v22 = v51;
                            continue;
                          case 2:
                            goto LABEL_96;
                          case 3:
                            v22 = v51;
                            goto LABEL_53;
                          case 4:
                            goto LABEL_12;
                          case 5:
                            v71 = OUTLINED_FUNCTION_3_31();
                            v74 = testFldeq(v71, v72, v73, 34);
                            v46 = v51;
                            if (!v74)
                            {
                              v75 = advance_tok(a1);
                              v46 = v51;
                              if (!v75)
                              {
                                v76 = OUTLINED_FUNCTION_0_34();
                                v80 = testFldeq(v76, v77, v78, v79);
                                v46 = v51;
                                if (!v80)
                                {
                                  advance_tok(a1);
                                  OUTLINED_FUNCTION_72_7();
                                  if (!v81)
                                  {
                                    goto LABEL_15;
                                  }
                                }
                              }
                            }

                            goto LABEL_17;
                          case 6:
                            goto LABEL_15;
                          case 7:
                            v65 = v51;
                            goto LABEL_41;
                          case 8:
                            v108 = v51;
                            goto LABEL_39;
                          case 9:
                            v22 = v51;
                            goto LABEL_54;
                          case 10:
                            goto LABEL_65;
                          case 11:
                            bspop_boa(a1);
                            v82 = OUTLINED_FUNCTION_21_22();
                            v84 = lpta_loadp_setscan_r(v82, v83);
                            v46 = v51;
                            if (v84)
                            {
                              goto LABEL_17;
                            }

                            goto LABEL_27;
                          case 12:
LABEL_27:
                            OUTLINED_FUNCTION_53_8(12, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300, v301, v302);
                            v85 = OUTLINED_FUNCTION_0_34();
                            v89 = testFldeq(v85, v86, v87, v88);
                            v46 = v51;
                            if (!v89)
                            {
                              v90 = advance_tok(a1);
                              v46 = v51;
                              if (!v90)
                              {
                                goto LABEL_29;
                              }
                            }

                            goto LABEL_17;
                          case 13:
LABEL_29:
                            OUTLINED_FUNCTION_46_9(13, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300);
                            v91 = OUTLINED_FUNCTION_0_34();
                            v95 = testFldeq(v91, v92, v93, v94);
                            v46 = v51;
                            if (!v95)
                            {
                              v96 = advance_tok(a1);
                              v46 = v51;
                              if (!v96)
                              {
                                goto LABEL_31;
                              }
                            }

                            goto LABEL_17;
                          case 14:
LABEL_31:
                            OUTLINED_FUNCTION_52_8(14, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304);
                            OUTLINED_FUNCTION_19_23();
                            bspush_ca_scan_boa();
                            v97 = OUTLINED_FUNCTION_0_34();
                            v101 = testFldeq(v97, v98, v99, v100);
                            v46 = v51;
                            if (!v101)
                            {
                              goto LABEL_68;
                            }

                            goto LABEL_17;
                          case 15:
                          case 21:
                          case 26:
                          case 31:
                            bspop_boa(a1);
                            goto LABEL_96;
                          case 16:
                            v22 = v51;
                            goto LABEL_55;
                          case 17:
                            goto LABEL_71;
                          case 18:
                            v102 = OUTLINED_FUNCTION_0_34();
                            v106 = testFldeq(v102, v103, v104, v105);
                            v46 = v51;
                            if (!v106)
                            {
                              v107 = advance_tok(a1);
                              v70 = v51;
                              v46 = v51;
                              if (!v107)
                              {
                                goto LABEL_74;
                              }
                            }

                            goto LABEL_17;
                          case 19:
                            goto LABEL_74;
                          case 20:
                            goto LABEL_76;
                          case 22:
                            v22 = v51;
                            goto LABEL_56;
                          case 23:
                            goto LABEL_77;
                          case 24:
                            goto LABEL_81;
                          case 25:
                            goto LABEL_83;
                          case 27:
                            goto LABEL_58;
                          case 28:
                            goto LABEL_106;
                          case 29:
                            goto LABEL_110;
                          case 30:
                            goto LABEL_113;
                          case 32:
                            goto LABEL_59;
                          case 33:
                            goto LABEL_90;
                          case 34:
                            goto LABEL_92;
                          case 35:
                            goto LABEL_93;
                          case 37:
                            v22 = v51;
                            goto LABEL_45;
                          case 38:
                            goto LABEL_49;
                          case 39:
                            goto LABEL_50;
                          case 40:
                            goto LABEL_103;
                          case 41:
                            goto LABEL_101;
                          case 42:
                            goto LABEL_102;
                          case 43:
                            goto LABEL_97;
                          default:
                            goto LABEL_3;
                        }
                      }
                    }
                  }

LABEL_111:
                  v46 = v51;
                  goto LABEL_17;
                }
              }

LABEL_87:
              v46 = v22;
              goto LABEL_17;
            }

            v194 = OUTLINED_FUNCTION_0_34();
            if (testFldeq(v194, v195, v196, v197))
            {
              goto LABEL_87;
            }

            if (advance_tok(a1))
            {
              goto LABEL_87;
            }

            v198 = OUTLINED_FUNCTION_3_31();
            if (testFldeq(v198, v199, v200, 34))
            {
              goto LABEL_87;
            }

            advance_tok(a1);
            OUTLINED_FUNCTION_97_4();
            if (v257)
            {
              goto LABEL_17;
            }

LABEL_106:
            OUTLINED_FUNCTION_53_8(28, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300, v301, v302);
            v258 = OUTLINED_FUNCTION_0_34();
            if (testFldeq(v258, v259, v260, v261))
            {
              goto LABEL_111;
            }

            if (advance_tok(a1))
            {
              goto LABEL_111;
            }

            v262 = OUTLINED_FUNCTION_3_31();
            if (testFldeq(v262, v263, v264, 34))
            {
              goto LABEL_111;
            }

            v265 = advance_tok(a1);
            v46 = v51;
            if (v265)
            {
              goto LABEL_17;
            }

LABEL_110:
            OUTLINED_FUNCTION_46_9(29, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300);
            v266 = OUTLINED_FUNCTION_0_34();
            if (testFldeq(v266, v267, v268, v269))
            {
              goto LABEL_111;
            }

            v270 = advance_tok(a1);
            v46 = v51;
            if (v270)
            {
              goto LABEL_17;
            }

LABEL_113:
            OUTLINED_FUNCTION_52_8(30, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304);
          }

          else
          {
LABEL_77:
            OUTLINED_FUNCTION_53_8(23, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300, v301, v302);
            v181 = OUTLINED_FUNCTION_0_34();
            if (testFldeq(v181, v182, v183, v184))
            {
              goto LABEL_111;
            }

            if (advance_tok(a1))
            {
              goto LABEL_111;
            }

            v185 = OUTLINED_FUNCTION_3_31();
            if (testFldeq(v185, v186, v187, 34))
            {
              goto LABEL_111;
            }

            v188 = advance_tok(a1);
            v46 = v51;
            if (v188)
            {
              goto LABEL_17;
            }

LABEL_81:
            OUTLINED_FUNCTION_46_9(24, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300);
            v189 = OUTLINED_FUNCTION_0_34();
            if (testFldeq(v189, v190, v191, v192))
            {
              goto LABEL_111;
            }

            v193 = advance_tok(a1);
            v46 = v51;
            if (v193)
            {
              goto LABEL_17;
            }

LABEL_83:
            OUTLINED_FUNCTION_52_8(25, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304);
          }

          OUTLINED_FUNCTION_19_23();
          bspush_ca_scan_boa();
          v160 = OUTLINED_FUNCTION_3_31();
          v163 = 34;
LABEL_67:
          testFldeq(v160, v161, v162, v163);
          OUTLINED_FUNCTION_96_4();
          if (!v164)
          {
LABEL_68:
            advance_tok(a1);
            OUTLINED_FUNCTION_95_4();
          }

          goto LABEL_17;
        }

        v165 = OUTLINED_FUNCTION_0_34();
        if (testFldeq(v165, v166, v167, v168))
        {
          goto LABEL_87;
        }

        advance_tok(a1);
        OUTLINED_FUNCTION_97_4();
        if (v169)
        {
          goto LABEL_17;
        }

LABEL_71:
        OUTLINED_FUNCTION_53_8(17, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300, v301, v302);
        v170 = OUTLINED_FUNCTION_0_34();
        if (testFldeq(v170, v171, v172, v173) || advance_tok(a1))
        {
          goto LABEL_111;
        }

        v174 = OUTLINED_FUNCTION_19_23();
        bspush_ca_scan(v174, v175);
        v70 = v51;
LABEL_74:
        LODWORD(v51) = v70;
        OUTLINED_FUNCTION_46_9(19, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300);
        v176 = OUTLINED_FUNCTION_0_34();
        if (testFldeq(v176, v177, v178, v179))
        {
          goto LABEL_111;
        }

        v180 = advance_tok(a1);
        v46 = v51;
        if (v180)
        {
          goto LABEL_17;
        }

LABEL_76:
        OUTLINED_FUNCTION_52_8(20, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304);
      }

      else
      {
LABEL_65:
        v157 = OUTLINED_FUNCTION_39_11();
        savescptr(v157, v158, v159);
      }

      break;
    }

    OUTLINED_FUNCTION_19_23();
    bspush_ca_scan_boa();
    v160 = OUTLINED_FUNCTION_0_34();
    goto LABEL_67;
  }

  v29 = OUTLINED_FUNCTION_18_24();
  v31 = npush_fld(v29, v30, 5);
  if (v31 || (OUTLINED_FUNCTION_65_7(v31, v32, v33, v34, v35, v36, v37, v38), if_testgt(a1, v39, v40, v41, v42, v43, v44, v45)) || advance_tok(a1))
  {
    v46 = 0;
    goto LABEL_17;
  }

LABEL_3:
  a3 = 94;
LABEL_4:
  vretproc(a1);
  v8 = *MEMORY[0x277D85DE8];
  return a3;
}

uint64_t destress_compounds()
{
  OUTLINED_FUNCTION_22_22();
  v59 = *MEMORY[0x277D85DE8];
  v57 = 0;
  v58 = 0;
  v55 = 0;
  v56 = 0;
  v54 = 0;
  OUTLINED_FUNCTION_33_16();
  bzero(&v53, v2);
  OUTLINED_FUNCTION_32_16();
  OUTLINED_FUNCTION_100_2(v3, v4);
  if (setjmp(v1))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_55_8();
  if (OUTLINED_FUNCTION_87_5(v5, v6, v7, v8, v9))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_27_19();
  v12 = OUTLINED_FUNCTION_28_18();
  OUTLINED_FUNCTION_64_7(v12, v13);
  v54 = 65532;
  fence_30(v0, 0, &null_str_9);
  v14 = OUTLINED_FUNCTION_31_17();
  fence_30(v14, v15, v16);
  v17 = OUTLINED_FUNCTION_93_4();
  starttest(v17, v18);
  v19 = OUTLINED_FUNCTION_29_18();
  if (lpta_loadp_setscan_r(v19, v20))
  {
LABEL_9:
    v38 = OUTLINED_FUNCTION_19_23();
    starttest(v38, v39);
    v40 = OUTLINED_FUNCTION_10_30();
    if (lpta_loadp_setscan_r(v40, v41))
    {
LABEL_12:
      OUTLINED_FUNCTION_67_7();
      if (followed_by_hyphen())
      {
        goto LABEL_3;
      }

LABEL_13:
      v45 = OUTLINED_FUNCTION_19_23();
      starttest(v45, v46);
      v47 = OUTLINED_FUNCTION_26_21();
      move_i(v47, v48, 0);
      OUTLINED_FUNCTION_37_13();
      if (!mark_word_stress())
      {
        goto LABEL_3;
      }

      goto LABEL_14;
    }

    v42 = OUTLINED_FUNCTION_6_30();
    if (!testFldeq(v42, v43, v44, 2))
    {
      goto LABEL_7;
    }
  }

  else
  {
    v21 = OUTLINED_FUNCTION_18_24();
    v23 = npush_fld(v21, v22, 5);
    if (!v23)
    {
      OUTLINED_FUNCTION_65_7(v23, v24, v25, v26, v27, v28, v29, v30);
      if (!if_testgt(v0, v31, v32, v33, v34, v35, v36, v37))
      {
LABEL_7:
        if (!advance_tok(v0))
        {
          goto LABEL_3;
        }
      }
    }
  }

LABEL_14:
  v49 = *(v0 + 104);
  if (v49)
  {
    v50 = OUTLINED_FUNCTION_34_15(v49);
  }

  else
  {
    v51 = OUTLINED_FUNCTION_47_9();
    v50 = vback(v51, v52);
  }

  switch(v50)
  {
    case 1:
      goto LABEL_9;
    case 2:
      goto LABEL_13;
    case 3:
      goto LABEL_12;
    default:
      break;
  }

LABEL_3:
  vretproc(v0);
  v10 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_90_5();
}

void destress_nps()
{
  OUTLINED_FUNCTION_66_7();
  v812 = v1;
  v814 = v0;
  v835 = *MEMORY[0x277D85DE8];
  v826 = 0u;
  v827 = 0u;
  v830[0] = 0;
  v830[1] = 0;
  v828 = 0;
  v829 = 0;
  v825 = 0;
  v823 = 0;
  v824 = 0;
  v822[0] = 0;
  v822[1] = 0;
  v821[0] = 0;
  v821[1] = 0;
  v820[0] = 0;
  v820[1] = 0;
  v819[0] = 0;
  v819[1] = 0;
  v818 = 0;
  v817[0] = 0;
  v817[1] = 0;
  v816[0] = 0;
  v816[1] = 0;
  OUTLINED_FUNCTION_33_16();
  bzero(v815, v2);
  OUTLINED_FUNCTION_32_16();
  bzero(v834, v3);
  if (!setjmp(v834) && !ventproc(v814, v815, v833, v832, v831, v834))
  {
    OUTLINED_FUNCTION_89_5(v814, v830);
    get_parm(v814, &v828, v812, -6);
    v827 = 0uLL;
    LODWORD(v826) = -65534;
    v825 = 65532;
    push_ptr_init(v814, &v823);
    push_ptr_init(v814, v822);
    push_ptr_init(v814, v821);
    push_ptr_init(v814, v820);
    push_ptr_init(v814, v819);
    v818 = 65532;
    push_ptr_init(v814, v817);
    push_ptr_init(v814, v816);
    fence_30(v814, 0, &null_str_9);
    fence_30(v814, 1, &_MergedGlobals_27);
    starttest(v814, 1);
    v4 = lpta_loadp_setscan_r(v814, v830);
    if (!v4)
    {
      v12 = OUTLINED_FUNCTION_23_22(v4, 2, v5, v6, v7, v8, v9, v10, v552, v555, v558, v577, v596, v615, v634, v653, v672, v691, v710, v729, v748, v767, v788, v812, v814);
      bspush_ca_scan(v12, v13);
      if (testFldeq(65532, 2u, 2, 1))
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
      }

      else
      {
        v17 = advance_tok(65532);
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v16 = 0;
        v14 = 0;
        v15 = 0;
        if (!v17)
        {
LABEL_11:
          v21 = v20;
          v22 = v19;
          v23 = v18;
          bspush_ca_scan_boa();
          if (testFldeq(v814, 2u, 2, 6))
          {
            v15 = v21;
          }

          else
          {
            v15 = 1;
          }

          v16 = v23;
          v14 = v22;
        }
      }

      v24 = v16;
      v25 = v14;
      LODWORD(v26) = v15;
      while (1)
      {
        v27 = v26;
        v28 = v24;
        v29 = *(v814 + 104);
        v30 = v28;
        LODWORD(v31) = v25;
        if (v29)
        {
          *(v814 + 104) = 0;
          v32 = v29;
        }

        else
        {
          v32 = vback(v814, v26);
          v27 = 0;
        }

        HIDWORD(v768) = v30;
        v789 = __PAIR64__(v27, v31);
        v33 = v32 - 2;
        v35 = v30;
        v34 = v31;
        LODWORD(v768) = v30;
        v749 = __PAIR64__(v30, v31);
        HIDWORD(v692) = v31;
        LODWORD(v711) = v30;
        HIDWORD(v711) = v30;
        v730 = __PAIR64__(v31, v30);
        LODWORD(v673) = v31;
        HIDWORD(v673) = v31;
        LODWORD(v692) = v31;
        HIDWORD(v635) = v30;
        LODWORD(v654) = v30;
        LODWORD(v635) = v30;
        HIDWORD(v578) = v31;
        LODWORD(v597) = v31;
        HIDWORD(v654) = v30;
        HIDWORD(v597) = v31;
        v616 = __PAIR64__(v31, v30);
        HIDWORD(v559) = v30;
        LODWORD(v578) = v31;
        v26 = v30;
        v36 = v31;
        HIDWORD(v556) = v31;
        LODWORD(v559) = v30;
        v37 = v30;
        v38 = v31;
        v39 = v30;
        v40 = v31;
        v41 = v31;
        v42 = v30;
        v43 = v31;
        v44 = v30;
        v45 = v31;
        v46 = v30;
        v47 = v31;
        v48 = v30;
        v49 = v31;
        v50 = v30;
        v51 = v30;
        v52 = v31;
        LODWORD(v53) = v30;
        v31 = v31;
        v54 = v31;
        v55 = v30;
        v56 = v31;
        switch(v33)
        {
          case 0:
            v18 = HIDWORD(v768);
            v19 = v31;
            v20 = HIDWORD(v789);
            goto LABEL_11;
          case 1:
            v57 = OUTLINED_FUNCTION_23_22(v31, v31, v26, v31, v44, v31, v50, v48, v553, v556, v559, v578, v597, v616, v635, v654, v673, v692, v711, v730, v749, v768, v789, v813, v814);
            bspop_boa(v57);
            OUTLINED_FUNCTION_17_25();
            bspush_ca_scan_boa();
            v58 = OUTLINED_FUNCTION_2_32();
            goto LABEL_48;
          case 2:
            v273 = OUTLINED_FUNCTION_23_22(v31, v31, v26, v31, v44, v31, v50, v48, v553, v556, v559, v578, v597, v616, v635, v654, v673, v692, v711, v730, v749, v768, v789, v813, v814);
            bspop_boa(v273);
            v274 = OUTLINED_FUNCTION_19_23();
            bspush_ca_scan(v274, v275);
            v170 = OUTLINED_FUNCTION_4_30();
            goto LABEL_72;
          case 3:
            v170 = OUTLINED_FUNCTION_42_9(v31, v31, v26, v31, v44, v31, v50, v48, v553, v556, v559, v578, v597, v616, v635, v654, v673, v692, v711, v730, v749, v768, v789, v813, v814);
            v172 = 2;
LABEL_72:
            testFldeq(v170, v171, v172, 2);
            OUTLINED_FUNCTION_24_22();
            if (!v43)
            {
              goto LABEL_73;
            }

            continue;
          case 4:
LABEL_73:
            v276 = OUTLINED_FUNCTION_42_9(v43, v41, v26, v40, v44, v45, v50, v48, v553, v556, v559, v578, v597, v616, v635, v654, v673, v692, v711, v730, v749, v768, v789, v813, v814);
            npush_fld(v276, v277, 5);
            OUTLINED_FUNCTION_24_22();
            if (!v278)
            {
              v284 = OUTLINED_FUNCTION_23_22(v278, 0, v26, v279, v280, v281, v282, v283, v553, v556, v570, v589, v608, v627, v646, v665, v684, v703, v722, v741, v760, v779, v801, v813, v814);
              npush_i(v284);
              if_testle(v31, v285, v286, v287, v288, v289, v290, v291);
              OUTLINED_FUNCTION_24_22();
              if (!v292)
              {
                advance_tok(v814);
                OUTLINED_FUNCTION_24_22();
                if (!v293)
                {
                  savetok(v814, &v826);
                  OUTLINED_FUNCTION_24_22();
                  if (!v43)
                  {
                    goto LABEL_77;
                  }
                }
              }
            }

            continue;
          case 5:
LABEL_77:
            v294 = OUTLINED_FUNCTION_23_22(v43, 7, &v823, v40, v44, v45, v50, v48, v553, v556, v559, v578, v597, v616, v635, v654, v673, v692, v711, v730, v749, v768, v789, v813, v814);
            savescptr(v294, v295, v296);
            v297 = OUTLINED_FUNCTION_19_23();
            startloop(v297, v298);
            HIDWORD(v730) = 1;
            HIDWORD(v749) = 1;
            goto LABEL_88;
          case 6:
          case 8:
          case 14:
            goto LABEL_91;
          case 7:
            goto LABEL_89;
          case 9:
            v175 = OUTLINED_FUNCTION_23_22(v31, v31, v26, v31, v44, v31, v50, v48, v553, v556, v559, v578, v597, v616, v635, v654, v673, v692, v711, v730, v749, v768, v789, v813, v814);
            bspop_boa(v175);
            OUTLINED_FUNCTION_84_5();
            bspush_ca_scan_boa();
            v58 = OUTLINED_FUNCTION_3_31();
            v61 = 12;
            goto LABEL_48;
          case 10:
            v316 = OUTLINED_FUNCTION_23_22(v31, v31, v26, v31, v44, v31, v50, v48, v553, v556, v559, v578, v597, v616, v635, v654, v673, v692, v711, v730, v749, v768, v789, v813, v814);
            bspop_boa(v316);
            v317 = OUTLINED_FUNCTION_1_32();
            testFldeq(v317, v318, v319, v320);
            OUTLINED_FUNCTION_24_22();
            if (v321)
            {
              continue;
            }

            v328 = OUTLINED_FUNCTION_42_9(v321, v322, v26, v323, v324, v325, v326, v327, v553, v556, v572, v591, v610, v629, v648, v667, v686, v705, v724, v743, v762, v781, v803, v813, v814);
            npush_fld(v328, v329, 4);
            OUTLINED_FUNCTION_24_22();
            if (v330)
            {
              continue;
            }

            WORD1(v826) = 4;
            v336 = OUTLINED_FUNCTION_23_22(v330, &v826, v26, v331, v332, v333, v334, v335, v553, v556, v573, v592, v611, v630, v649, v668, v687, v706, v725, v744, v763, v782, v804, v813, v814);
            npush_v(v336, v337, v338, v339, v340, v341, v342, v343);
            if_testeq(v31, v344, v345, v346, v347, v348, v349, v350);
            OUTLINED_FUNCTION_24_22();
            if (v351)
            {
              continue;
            }

            advance_tok(v814);
            OUTLINED_FUNCTION_24_22();
            if (v352)
            {
              continue;
            }

            goto LABEL_86;
          case 11:
LABEL_86:
            savescptr(v814, 13, &v823);
            HIDWORD(v692) = v789 + 1;
            goto LABEL_87;
          case 12:
LABEL_87:
            while_iterate(v814, 8, 9);
            HIDWORD(v749) = HIDWORD(v768);
            HIDWORD(v730) = HIDWORD(v692);
            goto LABEL_88;
          case 13:
LABEL_88:
            bspush_ca(v814);
            LODWORD(v768) = HIDWORD(v749);
            LODWORD(v749) = HIDWORD(v730);
            OUTLINED_FUNCTION_80_6();
            v26 = HIDWORD(v789);
            if (v353 > 3)
            {
              continue;
            }

LABEL_89:
            v354 = v749;
            v355 = v768;
            v356 = OUTLINED_FUNCTION_9_30(v43, v41, v26, v40, v44, v45, v50, v48, v553, v556, v559, v578, v597, v616, v635, v654, v673, v692, v711, v730, v749, v768, v789, v813, v814);
            starttest(v356, v357);
            v358 = OUTLINED_FUNCTION_21_22();
            if (lpta_loadp_setscan_r(v358, v359))
            {
              HIDWORD(v711) = v355;
              HIDWORD(v673) = v354;
LABEL_91:
              v196 = HIDWORD(v673);
              v197 = HIDWORD(v711);
              OUTLINED_FUNCTION_61_8();
              startloop(v814, v360);
LABEL_92:
              LODWORD(v711) = v197;
              LODWORD(v673) = v196;
LABEL_93:
              v31 = v673;
              v56 = v711;
              OUTLINED_FUNCTION_61_8();
              bspush_ca(v814);
              LODWORD(v730) = v711;
              LODWORD(v692) = v673;
              OUTLINED_FUNCTION_80_6();
              v26 = HIDWORD(v789);
              if (v361 <= 2)
              {
LABEL_94:
                v354 = v692;
                v362 = v730;
                v363 = OUTLINED_FUNCTION_9_30(v43, v41, v26, v40, v44, v45, v50, v48, v553, v556, v559, v578, v597, v616, v635, v654, v673, v692, v711, v730, v749, v768, v789, v813, v814);
                starttest(v363, v364);
                v365 = OUTLINED_FUNCTION_21_22();
                v43 = lpta_loadp_setscan_r(v365, v366);
                if (v43)
                {
                  HIDWORD(v635) = v362;
                  LODWORD(v597) = v354;
LABEL_96:
                  v367 = v597;
                  v368 = HIDWORD(v635);
                  v829 = v824;
                  if (v597 <= 2)
                  {
                    v436 = OUTLINED_FUNCTION_9_30(v43, v41, v26, v40, v44, v45, v50, v48, v553, v556, v559, v578, v597, v616, v635, v654, v673, v692, v711, v730, v749, v768, v789, v813, v814);
                    starttest(v436, v437);
                    if (v367 != 2)
                    {
                      LODWORD(v635) = v368;
                      HIDWORD(v597) = v367;
                      goto LABEL_127;
                    }

                    v43 = lpta_loadp_setscan_l(v31, &v828);
                    HIDWORD(v654) = v368;
                    HIDWORD(v597) = 2;
                    HIDWORD(v578) = 2;
                    LODWORD(v635) = v368;
                    if (v43)
                    {
LABEL_127:
                      v452 = HIDWORD(v597);
                      v453 = v635;
                      v454 = OUTLINED_FUNCTION_9_30(v43, v41, v26, v40, v44, v45, v50, v48, v553, v556, v559, v578, v597, v616, v635, v654, v673, v692, v711, v730, v749, v768, v789, v813, v814);
                      starttest(v454, v455);
                      v456 = OUTLINED_FUNCTION_21_22();
                      v43 = lpta_loadp_setscan_l(v456, v457);
                      if (v43)
                      {
                        v26 = v453;
                        v36 = v452;
LABEL_129:
                        v458 = v36;
                        v459 = v26;
                        v460 = OUTLINED_FUNCTION_9_30(v43, v41, v26, v40, v44, v45, v50, v48, v553, v556, v559, v578, v597, v616, v635, v654, v673, v692, v711, v730, v749, v768, v789, v813, v814);
                        starttest(v460, v461);
                        v462 = OUTLINED_FUNCTION_21_22();
                        v43 = lpta_loadp_setscan_l(v462, v463);
                        if (v43)
                        {
                          v37 = v459;
                          v38 = v458;
LABEL_131:
                          v464 = v38;
                          v465 = v37;
                          v466 = OUTLINED_FUNCTION_9_30(v43, v41, v26, v40, v44, v45, v50, v48, v553, v556, v559, v578, v597, v616, v635, v654, v673, v692, v711, v730, v749, v768, v789, v813, v814);
                          starttest(v466, v467);
                          v468 = OUTLINED_FUNCTION_21_22();
                          v470 = lpta_loadp_setscan_r(v468, v469);
                          if (v470)
                          {
LABEL_162:
                            *(v813 + 8) = v829;
                            vretproc(v814);
                            goto LABEL_5;
                          }

                          v478 = OUTLINED_FUNCTION_9_30(v470, v471, v472, v473, v474, v475, v476, v477, v554, v557, v575, v594, v613, v632, v651, v670, v689, v708, v727, v746, v765, v784, v806, v813, v814);
                          bspush_ca_scan(v478, v479);
                          v480 = OUTLINED_FUNCTION_6_30();
                          v483 = testFldeq(v480, v481, v482, 1);
                          v24 = v465;
                          v25 = v464;
                          LODWORD(v26) = HIDWORD(v789);
                          if (!v483)
                          {
                            v484 = advance_tok(v814);
                            v39 = v465;
                            v24 = v465;
                            v25 = v464;
                            LODWORD(v26) = HIDWORD(v789);
                            if (!v484)
                            {
LABEL_134:
                              v485 = v39;
                              OUTLINED_FUNCTION_83_5();
                              savescptr(v814, v486, v487);
                              bspush_ca_scan(v814, 42);
                              testFldeq(v814, 2u, 3, 8);
                              HIDWORD(v559) = v485;
                              OUTLINED_FUNCTION_80_6();
LABEL_135:
                              LODWORD(v26) = HIDWORD(v789);
                              if (!v107)
                              {
LABEL_136:
                                v354 = v41;
                                v362 = HIDWORD(v559);
                                advance_tok(v814);
                                OUTLINED_FUNCTION_11_29();
                                if (!v488)
                                {
                                  OUTLINED_FUNCTION_7_30();
                                  testFldeq(v489, v490, v491, v492);
                                  OUTLINED_FUNCTION_11_29();
                                  if (!v493)
                                  {
                                    OUTLINED_FUNCTION_9_30(v493, v494, v26, v495, v496, v497, v498, v499, v553, v556, v559, v578, v597, v616, v635, v654, v673, v692, v711, v730, v749, v768, v789, v813, v814);
                                    bspush_ca_scan_boa();
                                    v448 = OUTLINED_FUNCTION_3_31();
                                    v451 = 6;
                                    goto LABEL_139;
                                  }
                                }
                              }
                            }
                          }
                        }

                        else
                        {
                          v538 = OUTLINED_FUNCTION_6_30();
                          testFldeq(v538, v539, v540, 2);
                          OUTLINED_FUNCTION_11_29();
                          if (!v541)
                          {
                            advance_tok(v814);
                            OUTLINED_FUNCTION_11_29();
                            if (!v542)
                            {
                              OUTLINED_FUNCTION_7_30();
                              testFldeq(v543, v544, v545, v546);
                              OUTLINED_FUNCTION_11_29();
                              if (!v547)
                              {
                                advance_tok(v814);
                                OUTLINED_FUNCTION_11_29();
                                if (!v548)
                                {
LABEL_157:
                                  savescptr(v814, 39, v822);
                                  starttest_e(v814, 40);
                                  move_i(v814, &v818, 0);
                                  mark_word_stress();
                                  OUTLINED_FUNCTION_80_6();
                                  goto LABEL_158;
                                }
                              }
                            }
                          }
                        }
                      }

                      else
                      {
                        v500 = OUTLINED_FUNCTION_1_32();
                        testFldeq(v500, v501, v502, v503);
                        OUTLINED_FUNCTION_11_29();
                        if (!v504)
                        {
                          advance_tok(v814);
                          LODWORD(v616) = v453;
                          LODWORD(v578) = v452;
                          OUTLINED_FUNCTION_11_29();
                          if (!v505)
                          {
LABEL_145:
                            v506 = v578;
                            v507 = v616;
                            OUTLINED_FUNCTION_83_5();
                            v516 = OUTLINED_FUNCTION_23_22(v508, v509, v510, v511, v512, v513, v514, v515, v553, v556, v559, v578, v597, v616, v635, v654, v673, v692, v711, v730, v749, v768, v789, v813, v814);
                            savescptr(v516, v517, v518);
                            v519 = OUTLINED_FUNCTION_3_31();
                            v522 = testFldeq(v519, v520, v521, 13);
                            v24 = v507;
                            v25 = v506;
                            LODWORD(v26) = HIDWORD(v807);
                            if (!v522)
                            {
                              v523 = advance_tok(v814);
                              v24 = v507;
                              v25 = v506;
                              LODWORD(v26) = HIDWORD(v807);
                              if (!v523)
                              {
                                v530 = OUTLINED_FUNCTION_9_30(v523, v524, HIDWORD(v807), v525, v526, v527, v528, v529, v553, v556, v576, v595, v614, v633, v652, v671, v690, v709, v728, v747, v766, v785, v807, v813, v814);
                                starttest_e(v530, v531);
                                v532 = OUTLINED_FUNCTION_26_21();
                                move_i(v532, v533, v534);
                                OUTLINED_FUNCTION_51_8();
                                v104 = mark_word_stress();
                                v24 = v507;
                                v25 = v506;
LABEL_158:
                                LODWORD(v26) = HIDWORD(v789);
                                if (!v104)
                                {
                                  goto LABEL_162;
                                }
                              }
                            }
                          }
                        }
                      }
                    }

                    else
                    {
LABEL_123:
                      savescptr(v814, 27, v820);
                      bspush_ca_scan_boa();
                      testFldeq(v814, 2u, 3, 37);
                      OUTLINED_FUNCTION_80_6();
                    }
                  }

                  else
                  {
                    v42 = HIDWORD(v635);
                    v43 = v597;
LABEL_98:
                    v49 = v43;
                    v369 = v42;
                    v370 = OUTLINED_FUNCTION_38_12(v43, v41, v26, v40, v44, v45, v50, v48, v553, v556, v559, v578, v597, v616, v635, v654, v673, v692, v711, v730, v749, v768, v789, v813, v814);
                    starttest(v370, v371);
                    v43 = lpta_loadp_setscan_r(v56, v830);
                    v44 = v369;
                    v45 = v49;
                    v48 = v369;
                    if (v43)
                    {
                      goto LABEL_104;
                    }

LABEL_99:
                    v372 = v45;
                    v373 = OUTLINED_FUNCTION_38_12(v43, v41, v26, v40, v44, v45, v50, v48, v553, v556, v559, v578, v597, v616, v635, v654, v673, v692, v711, v730, v749, v768, v789, v813, v814);
                    bspush_ca_scan(v373, v374);
                    npush_fld(v56, 2u, 5);
                    OUTLINED_FUNCTION_56_8();
                    if (!v375)
                    {
                      v56 = v814;
                      npush_i(v814);
                      if_testle(v814, v376, v377, v378, v379, v380, v381, v382);
                      OUTLINED_FUNCTION_56_8();
                      if (!v383)
                      {
                        advance_tok(v814);
                        OUTLINED_FUNCTION_56_8();
                        if (!v384)
                        {
                          advanc(v814);
                          v47 = v372;
                          OUTLINED_FUNCTION_56_8();
                          if (!v385)
                          {
LABEL_103:
                            v49 = v47;
                            v386 = v46;
                            OUTLINED_FUNCTION_83_5();
                            savescptr(v814, v387, v388);
                            v48 = v386;
LABEL_104:
                            v31 = v49;
                            v53 = v48;
                            if (v48 < 3 || (v389 = OUTLINED_FUNCTION_38_12(v43, v41, v26, v40, v44, v45, v50, v48, v553, v556, v559, v578, v597, v616, v635, v654, v673, v692, v711, v730, v749, v768, v789, v813, v814), starttest_l(v389, v390), v43 = lpta_loadp_setscan_r(v56, v822), v50 = v53, v43))
                            {
LABEL_111:
                              v34 = v31;
                              v35 = v53;
                              v415 = OUTLINED_FUNCTION_38_12(v43, v41, v26, v40, v44, v45, v50, v48, v553, v556, v559, v578, v597, v616, v635, v654, v673, v692, v711, v730, v749, v768, v789, v813, v814);
                              starttest(v415, v416);
                              v43 = lpta_loadp_setscan_l(v56, &v823);
                              v54 = v31;
                              if (v43)
                              {
                                goto LABEL_117;
                              }

LABEL_112:
                              v417 = OUTLINED_FUNCTION_38_12(v43, v41, v26, v40, v44, v45, v50, v48, v553, v556, v559, v578, v597, v616, v635, v654, v673, v692, v711, v730, v749, v768, v789, v813, v814);
                              bspush_ca_scan(v417, v418);
                              npush_fld(v56, 2u, 5);
                              OUTLINED_FUNCTION_86_5();
                              if (!v419)
                              {
                                npush_i(v814);
                                if_testle(v814, v420, v421, v422, v423, v424, v425, v426);
                                OUTLINED_FUNCTION_86_5();
                                if (!v427)
                                {
                                  advance_tok(v814);
                                  OUTLINED_FUNCTION_86_5();
                                  if (!v428)
                                  {
                                    advanc(v814);
                                    LODWORD(v56) = v54;
                                    OUTLINED_FUNCTION_86_5();
                                    v55 = v429;
                                    if (!v430)
                                    {
LABEL_116:
                                      v34 = v56;
                                      v35 = v55;
                                      savescptr(v814, 57, v821);
LABEL_117:
                                      v431 = OUTLINED_FUNCTION_9_30(v43, v41, v26, v40, v44, v45, v50, v48, v553, v556, v559, v578, v597, v616, v635, v654, v673, v692, v711, v730, v749, v768, v789, v813, v814);
                                      starttest(v431, v432);
                                      v433 = OUTLINED_FUNCTION_19_23();
                                      bspush_ca(v433);
                                      lpta_loadpn(v31, v822);
                                      rpta_loadpn(v31, v31 + 3344);
                                      compare_ptas(v31);
                                      OUTLINED_FUNCTION_11_29();
                                      if (!v434)
                                      {
                                        v435 = testeq(v814);
                                        v24 = v35;
                                        v25 = v34;
LABEL_119:
                                        LODWORD(v26) = v810;
                                        if (!v435)
                                        {
                                          goto LABEL_4;
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }

                            else
                            {
LABEL_106:
                              v391 = v50;
                              v392 = OUTLINED_FUNCTION_9_30(v43, v41, v26, v40, v44, v45, v50, v48, v553, v556, v559, v578, v597, v616, v635, v654, v673, v692, v711, v730, v749, v768, v789, v813, v814);
                              bspush_ca_scan(v392, v393);
                              v394 = OUTLINED_FUNCTION_18_24();
                              npush_fld(v394, v395, 5);
                              OUTLINED_FUNCTION_11_29();
                              if (!v396)
                              {
                                v402 = OUTLINED_FUNCTION_23_22(v396, 0, v26, v397, v398, v399, v400, v401, v553, v556, v574, v593, v612, v631, v650, v669, v688, v707, v726, v745, v764, v783, v805, v813, v814);
                                npush_i(v402);
                                if_testle(v31, v403, v404, v405, v406, v407, v408, v409);
                                OUTLINED_FUNCTION_11_29();
                                if (!v410)
                                {
                                  advance_tok(v814);
                                  OUTLINED_FUNCTION_11_29();
                                  if (!v411)
                                  {
                                    advanc(v814);
                                    v51 = v391;
                                    OUTLINED_FUNCTION_11_29();
                                    if (!v412)
                                    {
LABEL_110:
                                      v31 = v52;
                                      LODWORD(v53) = v51;
                                      OUTLINED_FUNCTION_83_5();
                                      savescptr(v814, v413, v414);
                                      goto LABEL_111;
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

                else
                {
                  v438 = OUTLINED_FUNCTION_4_30();
                  testFldeq(v438, v439, v440, 9);
                  OUTLINED_FUNCTION_11_29();
                  if (!v441)
                  {
                    OUTLINED_FUNCTION_9_30(v441, v442, v26, v443, v444, v445, v446, v447, v553, v556, v559, v578, v597, v616, v635, v654, v673, v692, v711, v730, v749, v768, v789, v813, v814);
                    bspush_ca_scan_boa();
                    v448 = OUTLINED_FUNCTION_6_30();
                    v451 = 1;
LABEL_139:
                    if (testFldeq(v448, v449, v450, v451))
                    {
                      LODWORD(v26) = v811;
                    }

                    else
                    {
                      LODWORD(v26) = 1;
                    }

                    v24 = v362;
                    goto LABEL_152;
                  }
                }
              }
            }

            else
            {
              OUTLINED_FUNCTION_19_23();
              bspush_ca_scan_boa();
              v535 = OUTLINED_FUNCTION_6_30();
              if (testFldeq(v535, v536, v537, 6))
              {
                LODWORD(v26) = HIDWORD(v789);
              }

              else
              {
                LODWORD(v26) = 1;
              }

              v24 = v355;
LABEL_152:
              v25 = v354;
            }

            break;
          case 15:
          case 17:
            goto LABEL_96;
          case 16:
            goto LABEL_94;
          case 18:
            v125 = OUTLINED_FUNCTION_23_22(v31, v31, v26, v31, v44, v31, v50, v48, v553, v556, v559, v578, v597, v616, v635, v654, v673, v692, v711, v730, v749, v768, v789, v813, v814);
            bspop_boa(v125);
            v126 = OUTLINED_FUNCTION_18_24();
            npush_fld(v126, v127, 5);
            OUTLINED_FUNCTION_24_22();
            if (v128)
            {
              continue;
            }

            v134 = OUTLINED_FUNCTION_23_22(v128, 0, v26, v129, v130, v131, v132, v133, v553, v556, v563, v582, v601, v620, v639, v658, v677, v696, v715, v734, v753, v772, v794, v813, v814);
            npush_i(v134);
            if_testgt(v31, v135, v136, v137, v138, v139, v140, v141);
            OUTLINED_FUNCTION_24_22();
            if (v142)
            {
              continue;
            }

            advance_tok(v814);
            OUTLINED_FUNCTION_24_22();
            if (v143)
            {
              continue;
            }

            OUTLINED_FUNCTION_7_30();
            testFldeq(v144, v145, v146, v147);
            OUTLINED_FUNCTION_24_22();
            if (v148)
            {
              continue;
            }

            OUTLINED_FUNCTION_9_30(v148, v149, v26, v150, v151, v152, v153, v154, v553, v556, v564, v583, v602, v621, v640, v659, v678, v697, v716, v735, v754, v773, v795, v813, v814);
            bspush_ca_scan_boa();
            v58 = OUTLINED_FUNCTION_6_30();
            v61 = 6;
LABEL_48:
            v176 = testFldeq(v58, v59, v60, v61);
            goto LABEL_49;
          case 19:
            v194 = OUTLINED_FUNCTION_23_22(v31, v31, v26, v31, v44, v31, v50, v48, v553, v556, v559, v578, v597, v616, v635, v654, v673, v692, v711, v730, v749, v768, v789, v813, v814);
            bspop_boa(v194);
            advance_tok(v31);
            OUTLINED_FUNCTION_24_22();
            if (v195)
            {
              continue;
            }

            goto LABEL_58;
          case 20:
LABEL_58:
            savescptr(v814, 22, &v823);
            LODWORD(v654) = HIDWORD(v768) + 1;
            HIDWORD(v616) = v789 + 1;
            goto LABEL_59;
          case 21:
LABEL_59:
            v196 = HIDWORD(v616);
            v197 = v654;
            OUTLINED_FUNCTION_61_8();
            while_iterate(v814, v198, 18);
            goto LABEL_92;
          case 22:
            goto LABEL_93;
          case 23:
            goto LABEL_98;
          case 24:
            goto LABEL_127;
          case 25:
            goto LABEL_123;
          case 26:
            v199 = OUTLINED_FUNCTION_23_22(v31, v31, v26, v31, v44, v31, v50, v48, v553, v556, v559, v578, v597, v616, v635, v654, v673, v692, v711, v730, v749, v768, v789, v813, v814);
            bspop_boa(v199);
            v200 = OUTLINED_FUNCTION_18_24();
            npush_fld(v200, v201, 5);
            OUTLINED_FUNCTION_24_22();
            if (v202)
            {
              continue;
            }

            v208 = OUTLINED_FUNCTION_23_22(v202, 0, v26, v203, v204, v205, v206, v207, v553, v556, v566, v585, v604, v623, v642, v661, v680, v699, v718, v737, v756, v775, v797, v813, v814);
            npush_i(v208);
            if_testlt(v31, v209, v210, v211, v212, v213, v214, v215);
            OUTLINED_FUNCTION_24_22();
            if (v216)
            {
              continue;
            }

            advance_tok(v814);
            OUTLINED_FUNCTION_24_22();
            if (v217)
            {
              continue;
            }

            v224 = OUTLINED_FUNCTION_42_9(v217, v218, v26, v219, v220, v221, v222, v223, v553, v556, v567, v586, v605, v624, v643, v662, v681, v700, v719, v738, v757, v776, v798, v813, v814);
            testFldeq(v224, v225, 1, 9);
            OUTLINED_FUNCTION_24_22();
            if (v226)
            {
              continue;
            }

            advance_tok(v814);
            OUTLINED_FUNCTION_24_22();
            if (v43)
            {
              continue;
            }

            goto LABEL_65;
          case 27:
LABEL_65:
            v227 = OUTLINED_FUNCTION_23_22(v43, 29, v821, v40, v44, v45, v50, v48, v553, v556, v559, v578, v597, v616, v635, v654, v673, v692, v711, v730, v749, v768, v789, v813, v814);
            savescptr(v227, v228, v229);
            v230 = OUTLINED_FUNCTION_18_24();
            npush_fld(v230, v231, 5);
            OUTLINED_FUNCTION_24_22();
            if (!v232)
            {
              v238 = OUTLINED_FUNCTION_23_22(v232, 0, v26, v233, v234, v235, v236, v237, v553, v556, v568, v587, v606, v625, v644, v663, v682, v701, v720, v739, v758, v777, v799, v813, v814);
              npush_i(v238);
              if_testlt(v31, v239, v240, v241, v242, v243, v244, v245);
              OUTLINED_FUNCTION_24_22();
              if (!v246)
              {
                advance_tok(v814);
                OUTLINED_FUNCTION_24_22();
                if (!v247)
                {
                  goto LABEL_68;
                }
              }
            }

            continue;
          case 28:
LABEL_68:
            OUTLINED_FUNCTION_83_5();
            v256 = OUTLINED_FUNCTION_23_22(v248, v249, v250, v251, v252, v253, v254, v255, v553, v556, v559, v578, v597, v616, v635, v654, v673, v692, v711, v730, v749, v768, v789, v813, v814);
            savescptr(v256, v257, v258);
            v259 = OUTLINED_FUNCTION_21_22();
            lpta_loadp_setscan_r(v259, v260);
            OUTLINED_FUNCTION_24_22();
            if (!v261)
            {
              OUTLINED_FUNCTION_9_30(v261, v262, v26, v263, v264, v265, v266, v267, v553, v556, v569, v588, v607, v626, v645, v664, v683, v702, v721, v740, v759, v778, v800, v813, v814);
              bspush_ca_scan_boa();
              v268 = OUTLINED_FUNCTION_1_32();
              testFldeq(v268, v269, v270, v271);
              OUTLINED_FUNCTION_24_22();
              if (!v272)
              {
                v176 = advance_tok(v814);
LABEL_49:
                v25 = v790;
                if (v176)
                {
                  LODWORD(v26) = v809;
                }

                else
                {
                  LODWORD(v26) = 1;
                }

                v24 = v786;
              }
            }

            continue;
          case 29:
            v155 = OUTLINED_FUNCTION_23_22(v31, v31, v26, v31, v44, v31, v50, v48, v553, v556, v559, v578, v597, v616, v635, v654, v673, v692, v711, v730, v749, v768, v789, v813, v814);
            bspop_boa(v155);
            v156 = OUTLINED_FUNCTION_19_23();
            starttest(v156, v157);
            lpta_loadpn(v31, v822);
            lpta_ctxtl();
            v158 = OUTLINED_FUNCTION_26_21();
            lpta_storep(v158, v159);
            lpta_loadpn(v31, v821);
            lpta_ctxtr();
            v160 = OUTLINED_FUNCTION_29_18();
            lpta_storep(v160, v161);
            v162 = OUTLINED_FUNCTION_51_8();
            estimate_por_nsylls(v162, v163, v164, v819);
            OUTLINED_FUNCTION_24_22();
            if (v43)
            {
              continue;
            }

            goto LABEL_40;
          case 30:
LABEL_40:
            if (SHIWORD(v825) <= 3)
            {
              goto LABEL_41;
            }

            goto LABEL_162;
          case 31:
          case 32:
          case 35:
          case 38:
          case 43:
          case 59:
            goto LABEL_162;
          case 33:
            goto LABEL_129;
          case 34:
            goto LABEL_145;
          case 36:
            goto LABEL_131;
          case 37:
            goto LABEL_157;
          case 39:
            goto LABEL_134;
          case 40:
            v105 = OUTLINED_FUNCTION_42_9(v31, v31, v26, v31, v44, v31, v50, v48, v553, v556, v559, v578, v597, v616, v635, v654, v673, v692, v711, v730, v749, v768, v789, v813, v814);
            v107 = testFldeq(v105, v106, 3, 37);
            v24 = HIDWORD(v768);
            v25 = v789;
            HIDWORD(v559) = HIDWORD(v768);
            LODWORD(v41) = v789;
            goto LABEL_135;
          case 41:
            goto LABEL_136;
          case 42:
            v173 = OUTLINED_FUNCTION_23_22(v31, v31, v26, v31, v44, v31, v50, v48, v553, v556, v559, v578, v597, v616, v635, v654, v673, v692, v711, v730, v749, v768, v789, v813, v814);
            bspop_boa(v173);
            advance_tok(v31);
            OUTLINED_FUNCTION_24_22();
            if (v174)
            {
              continue;
            }

            *(v814 + 136) = 1;
            *(v814 + 112) = v829;
            *(v814 + 128) = 0;
            test_ptr(v814);
            OUTLINED_FUNCTION_24_22();
            if (v43)
            {
              continue;
            }

LABEL_41:
            v165 = OUTLINED_FUNCTION_9_30(v43, v41, v26, v40, v44, v45, v50, v48, v553, v556, v559, v578, v597, v616, v635, v654, v673, v692, v711, v730, v749, v768, v789, v813, v814);
            starttest_e(v165, v166);
            v167 = OUTLINED_FUNCTION_26_21();
            move_i(v167, v168, v169);
            OUTLINED_FUNCTION_51_8();
            v104 = mark_word_stress();
            goto LABEL_42;
          case 44:
            goto LABEL_104;
          case 45:
            goto LABEL_99;
          case 46:
            v299 = OUTLINED_FUNCTION_42_9(v31, v31, v26, v31, v44, v31, v50, v48, v553, v556, v559, v578, v597, v616, v635, v654, v673, v692, v711, v730, v749, v768, v789, v813, v814);
            npush_fld(v299, v300, 5);
            OUTLINED_FUNCTION_24_22();
            if (v301)
            {
              continue;
            }

            v307 = OUTLINED_FUNCTION_23_22(v301, 0, v26, v302, v303, v304, v305, v306, v553, v556, v571, v590, v609, v628, v647, v666, v685, v704, v723, v742, v761, v780, v802, v813, v814);
            npush_i(v307);
            if_testgt(v31, v308, v309, v310, v311, v312, v313, v314);
            OUTLINED_FUNCTION_24_22();
            if (v315)
            {
              continue;
            }

            v43 = advance_tok(v814);
            v24 = HIDWORD(v768);
            v25 = v789;
            v44 = HIDWORD(v768);
            v45 = v789;
            v26 = HIDWORD(v789);
            if (v43)
            {
              continue;
            }

            goto LABEL_99;
          case 47:
            goto LABEL_103;
          case 48:
            goto LABEL_111;
          case 49:
            goto LABEL_106;
          case 50:
            v177 = OUTLINED_FUNCTION_42_9(v31, v31, v26, v31, v44, v31, v50, v48, v553, v556, v559, v578, v597, v616, v635, v654, v673, v692, v711, v730, v749, v768, v789, v813, v814);
            npush_fld(v177, v178, 5);
            OUTLINED_FUNCTION_24_22();
            if (v179)
            {
              continue;
            }

            v185 = OUTLINED_FUNCTION_23_22(v179, 0, v26, v180, v181, v182, v183, v184, v553, v556, v565, v584, v603, v622, v641, v660, v679, v698, v717, v736, v755, v774, v796, v813, v814);
            npush_i(v185);
            if_testgt(v31, v186, v187, v188, v189, v190, v191, v192);
            OUTLINED_FUNCTION_24_22();
            if (v193)
            {
              continue;
            }

            v43 = advance_tok(v814);
            v24 = HIDWORD(v768);
            v25 = v789;
            v50 = HIDWORD(v768);
            v26 = HIDWORD(v789);
            if (v43)
            {
              continue;
            }

            goto LABEL_106;
          case 51:
            goto LABEL_110;
          case 52:
            goto LABEL_117;
          case 53:
            goto LABEL_112;
          case 54:
            v108 = OUTLINED_FUNCTION_42_9(v31, v31, v26, v31, v44, v31, v50, v48, v553, v556, v559, v578, v597, v616, v635, v654, v673, v692, v711, v730, v749, v768, v789, v813, v814);
            npush_fld(v108, v109, 5);
            OUTLINED_FUNCTION_24_22();
            if (v110)
            {
              continue;
            }

            v116 = OUTLINED_FUNCTION_23_22(v110, 0, v26, v111, v112, v113, v114, v115, v553, v556, v562, v581, v600, v619, v638, v657, v676, v695, v714, v733, v752, v771, v793, v813, v814);
            npush_i(v116);
            if_testgt(v31, v117, v118, v119, v120, v121, v122, v123);
            OUTLINED_FUNCTION_24_22();
            if (v124)
            {
              continue;
            }

            v43 = advance_tok(v814);
            v24 = HIDWORD(v768);
            v25 = v789;
            v54 = v789;
            v26 = HIDWORD(v789);
            if (v43)
            {
              continue;
            }

            goto LABEL_112;
          case 55:
            goto LABEL_116;
          case 56:
            v62 = OUTLINED_FUNCTION_9_30(v31, v31, v26, v31, v44, v31, v50, v48, v553, v556, v559, v578, v597, v616, v635, v654, v673, v692, v711, v730, v749, v768, v789, v813, v814);
            startloop(v62, v63);
            lpta_loadpn(v31, v822);
            OUTLINED_FUNCTION_18_24();
            lpta_mover();
            v64 = OUTLINED_FUNCTION_26_21();
            lpta_storep(v64, v65);
            lpta_loadpn(v31, v821);
            OUTLINED_FUNCTION_18_24();
            lpta_mover();
            v66 = OUTLINED_FUNCTION_29_18();
            lpta_storep(v66, v67);
            v68 = OUTLINED_FUNCTION_26_21();
            forall_to_test(v68, v69, v819);
            OUTLINED_FUNCTION_24_22();
            if (v43)
            {
              continue;
            }

            goto LABEL_22;
          case 57:
            v549 = OUTLINED_FUNCTION_23_22(v31, v821, v26, v31, v44, v31, v50, v48, v553, v556, v559, v578, v597, v616, v635, v654, v673, v692, v711, v730, v749, v768, v789, v813, v814);
            lpta_loadpn(v549, v550);
            rpta_loadpn(v31, v31 + 3344);
            compare_ptas(v31);
            OUTLINED_FUNCTION_24_22();
            if (v551)
            {
              continue;
            }

            v435 = testeq(v814);
            v24 = v787;
            v25 = v808;
            goto LABEL_119;
          case 60:
            goto LABEL_27;
          case 61:
            goto LABEL_28;
          case 62:
            goto LABEL_26;
          case 63:
LABEL_22:
            v70 = OUTLINED_FUNCTION_9_30(v43, v41, v26, v40, v44, v45, v50, v48, v553, v556, v559, v578, v597, v616, v635, v654, v673, v692, v711, v730, v749, v768, v789, v813, v814);
            bspush_ca(v70);
            v71 = OUTLINED_FUNCTION_21_22();
            lpta_loadp_setscan_r(v71, v72);
            OUTLINED_FUNCTION_24_22();
            if (v73)
            {
              continue;
            }

            v80 = OUTLINED_FUNCTION_42_9(v73, v74, v26, v75, v76, v77, v78, v79, v553, v556, v560, v579, v598, v617, v636, v655, v674, v693, v712, v731, v750, v769, v791, v813, v814);
            npush_fld(v80, v81, 5);
            OUTLINED_FUNCTION_24_22();
            if (v82)
            {
              continue;
            }

            v88 = OUTLINED_FUNCTION_23_22(v82, 0, v26, v83, v84, v85, v86, v87, v553, v556, v561, v580, v599, v618, v637, v656, v675, v694, v713, v732, v751, v770, v792, v813, v814);
            npush_i(v88);
            if_testle(v31, v89, v90, v91, v92, v93, v94, v95);
            OUTLINED_FUNCTION_24_22();
            if (v96)
            {
              continue;
            }

            advance_tok(v814);
            OUTLINED_FUNCTION_24_22();
            if (v97)
            {
              continue;
            }

LABEL_26:
            savescptr(v814, 64, v816);
LABEL_27:
            v98 = OUTLINED_FUNCTION_9_30(v43, v41, v26, v40, v44, v45, v50, v48, v553, v556, v559, v578, v597, v616, v635, v654, v673, v692, v711, v730, v749, v768, v789, v813, v814);
            starttest(v98, v99);
            v100 = OUTLINED_FUNCTION_26_21();
            move_i(v100, v101, v102);
            OUTLINED_FUNCTION_51_8();
            mark_word_stress();
            OUTLINED_FUNCTION_24_22();
            if (v103)
            {
              continue;
            }

LABEL_28:
            v104 = forto_adv_upto_r(v814, 61, 62, 65, 2, v817);
LABEL_42:
            v24 = HIDWORD(v768);
            v25 = v789;
            goto LABEL_158;
          default:
            goto LABEL_4;
        }
      }
    }
  }

LABEL_4:
  vretproc(v814);
LABEL_5:
  v11 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_71_7();
}

void is_postnuclear_expr()
{
  OUTLINED_FUNCTION_66_7();
  OUTLINED_FUNCTION_22_22();
  v64 = *MEMORY[0x277D85DE8];
  v59[0] = 0;
  v59[1] = 0;
  v58[0] = 0;
  v58[1] = 0;
  v57[0] = 0;
  v57[1] = 0;
  OUTLINED_FUNCTION_33_16();
  bzero(v56, v1);
  OUTLINED_FUNCTION_32_16();
  bzero(v63, v2);
  if (!setjmp(v63) && !ventproc(v0, v56, v62, v61, v60, v63))
  {
    OUTLINED_FUNCTION_27_19();
    OUTLINED_FUNCTION_41_9(v4, v58);
    push_ptr_init(v0, v57);
    fence_30(v0, 0, &null_str_9);
    v5 = OUTLINED_FUNCTION_31_17();
    fence_30(v5, v6, v7);
    v8 = OUTLINED_FUNCTION_29_18();
    lpta_loadpn(v8, v9);
    v10 = OUTLINED_FUNCTION_79_7();
    rpta_loadpn(v10, v11);
    if (compare_ptas(v0) || testeq(v0))
    {
      v12 = 0;
      while (2)
      {
        starttest(v0, 3);
        v13 = OUTLINED_FUNCTION_29_18();
        if (lpta_loadp_setscan_l(v13, v14))
        {
LABEL_8:
          starttest(v0, 6);
          if (lpta_loadp_setscan_r(v0, v59))
          {
LABEL_9:
            starttest(v0, 7);
            if (lpta_loadp_setscan_l(v0, v59))
            {
              break;
            }

LABEL_10:
            v15 = OUTLINED_FUNCTION_63_7();
            savescptr(v15, v16, v57);
            v17 = OUTLINED_FUNCTION_62_7();
            bspush_ca_scan(v17, v18);
            v19 = OUTLINED_FUNCTION_18_24();
            v21 = testFldeq(v19, v20, 1, 2);
            v22 = v12;
            if (!v21)
            {
LABEL_36:
              v12 = v22;
              bspush_ca_scan_boa();
              v54 = OUTLINED_FUNCTION_18_24();
              if (!testFldeq(v54, v55, 3, 6))
              {
                v12 = 1;
              }
            }
          }

          else
          {
            v23 = OUTLINED_FUNCTION_18_24();
            if (!testFldeq(v23, v24, 1, 1))
            {
              v25 = OUTLINED_FUNCTION_18_24();
              if (!testFldeq(v25, v26, 3, 25) && !advance_tok(v0))
              {
                *(v0 + 136) = 1;
                v27 = *(v0 + 1440);
                if (!OUTLINED_FUNCTION_69_7())
                {
                  break;
                }
              }
            }
          }
        }

        else
        {
          bspush_ca_scan(v0, 4);
          v28 = OUTLINED_FUNCTION_18_24();
          v30 = testFldeq(v28, v29, 3, 18);
          v31 = v12;
          if (!v30)
          {
LABEL_18:
            v12 = v31;
            if (!advance_tok(v0))
            {
              break;
            }
          }
        }

        v32 = v12;
LABEL_20:
        v33 = *(v0 + 104);
        if (v33)
        {
          v34 = OUTLINED_FUNCTION_34_15(v33);
          v12 = v35;
        }

        else
        {
          v34 = vback(v0, v32);
          v12 = 0;
        }

        v31 = v12;
        v22 = v12;
        switch(v34)
        {
          case 1:
            continue;
          case 3:
            goto LABEL_8;
          case 4:
            v36 = OUTLINED_FUNCTION_18_24();
            v38 = testFldeq(v36, v37, 3, 14);
            v31 = v12;
            v32 = v12;
            if (!v38)
            {
              goto LABEL_18;
            }

            goto LABEL_20;
          case 5:
            goto LABEL_18;
          case 6:
            goto LABEL_9;
          case 8:
            goto LABEL_10;
          case 9:
            v51 = OUTLINED_FUNCTION_18_24();
            v53 = testFldeq(v51, v52, 3, 12);
            v22 = v12;
            v32 = v12;
            if (!v53)
            {
              goto LABEL_36;
            }

            goto LABEL_20;
          case 10:
            goto LABEL_36;
          case 11:
            bspop_boa(v0);
            bspush_ca_scan_boa();
            v49 = OUTLINED_FUNCTION_18_24();
            if (testFldeq(v49, v50, 3, 7))
            {
              v32 = v12;
            }

            else
            {
              v32 = 1;
            }

            goto LABEL_20;
          case 12:
            bspop_boa(v0);
            v39 = advance_tok(v0);
            v32 = v12;
            if (v39)
            {
              goto LABEL_20;
            }

            v40 = OUTLINED_FUNCTION_81_6();
            v42 = lpta_loadp_setscan_r(v40, v41);
            v32 = v12;
            if (v42)
            {
              goto LABEL_20;
            }

            v43 = OUTLINED_FUNCTION_18_24();
            v45 = testFldeq(v43, v44, 3, 24);
            v32 = v12;
            if (v45)
            {
              goto LABEL_20;
            }

            v46 = advance_tok(v0);
            v32 = v12;
            if (v46)
            {
              goto LABEL_20;
            }

            *(v0 + 136) = 1;
            v47 = *(v0 + 1440);
            v48 = OUTLINED_FUNCTION_69_7();
            v32 = v12;
            if (v48)
            {
              goto LABEL_20;
            }

            break;
          default:
            goto LABEL_3;
        }

        break;
      }
    }
  }

LABEL_3:
  vretproc(v0);
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_71_7();
}

uint64_t get_nonpickup_word(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v38 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_92_4();
  OUTLINED_FUNCTION_12_29(v9, v10, v11, v12, v13, v14, v15, v16, v30[0], v30[1], v30[2], v30[3], v30[4], v30[5], v30[6], v30[7], v30[8], v30[9], v30[10], v30[11], v30[12], v30[13], v30[14], v30[15], v30[16], v30[17], v30[18], v30[19], v30[20], v30[21], v30[22], v30[23], v31, v32, v33);
  OUTLINED_FUNCTION_32_16();
  bzero(v37, v17);
  if (setjmp(v37) || ventproc(a1, v30, v36, v35, v34, v37))
  {
    a5 = 94;
  }

  else
  {
    v20 = OUTLINED_FUNCTION_25_21();
    get_parm(v20, v21, a2, -6);
    v22 = OUTLINED_FUNCTION_37_13();
    OUTLINED_FUNCTION_89_5(v22, v23);
    v24 = OUTLINED_FUNCTION_28_18();
    get_parm(v24, v25, a4, -6);
    v26 = OUTLINED_FUNCTION_36_13();
    OUTLINED_FUNCTION_64_7(v26, v27);
    OUTLINED_FUNCTION_73_7(v28, v29, &null_str_9);
    *(a4 + 8) = v33;
    OUTLINED_FUNCTION_94_4(v31);
  }

  vretproc(a1);
  v18 = *MEMORY[0x277D85DE8];
  return a5;
}

void OUTLINED_FUNCTION_12_29(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  a34 = 0;
  a35 = 0;
  a32 = 0;
  a33 = 0;

  bzero(&a9, 0xB8uLL);
}

void OUTLINED_FUNCTION_20_22()
{

  get_parm(v0, v2, v1, -6);
}

void OUTLINED_FUNCTION_27_19()
{

  get_parm(v0, v2, v1, -6);
}

uint64_t OUTLINED_FUNCTION_35_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, char a38)
{

  return lpta_rpta_loadp(v38, &a38, &a36);
}

void OUTLINED_FUNCTION_41_9(uint64_t a1, uint64_t a2)
{

  get_parm(v2, a2, v3, -6);
}

double OUTLINED_FUNCTION_45_9@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{

  *&result = savescptr(v26, a1, &a26).n128_u64[0];
  return result;
}

double OUTLINED_FUNCTION_46_9@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{

  *&result = savescptr(v31, a1, &a31).n128_u64[0];
  return result;
}

double OUTLINED_FUNCTION_52_8@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{

  *&result = savescptr(v35, a1, &a35).n128_u64[0];
  return result;
}

double OUTLINED_FUNCTION_53_8@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{

  *&result = savescptr(v33, a1, &a33).n128_u64[0];
  return result;
}

double OUTLINED_FUNCTION_58_8@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{

  *&result = savescptr(v25, a1, &a25).n128_u64[0];
  return result;
}

void *OUTLINED_FUNCTION_59_8(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return fence_30(v3, 1, a3);
}

void OUTLINED_FUNCTION_64_7(uint64_t a1, uint64_t a2)
{

  get_parm(a1, a2, v2, -6);
}

uint64_t OUTLINED_FUNCTION_65_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  return npush_v(v8, (v8 + 3068), a3, a4, a5, a6, a7, a8);
}

uint64_t OUTLINED_FUNCTION_69_7()
{
  *(v1 + 112) = v0;
  *(v1 + 128) = 0;

  return test_ptr(v1);
}

double OUTLINED_FUNCTION_70_7@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{

  *&result = savescptr(v32, a1, &a32).n128_u64[0];
  return result;
}

void *OUTLINED_FUNCTION_73_7(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return fence_30(v3, 0, a3);
}

double OUTLINED_FUNCTION_76_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{

  *&result = savescptr(v32, a2, &a32).n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_77_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  return npush_v(v8, (v8 + 3052), a3, a4, a5, a6, a7, a8);
}

uint64_t OUTLINED_FUNCTION_85_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39, char a40, int a41, __int16 a42, char a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, char a49)
{

  return ventproc(v49, a2, &a47, &a43, &a40, &a49);
}

uint64_t OUTLINED_FUNCTION_87_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return ventproc(v5, a2, a3, a4, a5, v6 - 248);
}

void OUTLINED_FUNCTION_88_5()
{

  starttest(v0, v1);
}

void OUTLINED_FUNCTION_89_5(uint64_t a1, uint64_t a2)
{

  get_parm(a1, a2, v2, -6);
}

void OUTLINED_FUNCTION_98_3()
{

  starttest(v0, v1);
}

double OUTLINED_FUNCTION_99_3()
{

  *&result = bspush_ca_scan(v0, v1).n128_u64[0];
  return result;
}

void OUTLINED_FUNCTION_100_2(uint64_t a1, size_t a2)
{

  bzero((v2 - 248), a2);
}

void *fence_31(uint64_t a1, int a2, uint64_t a3)
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

uint64_t break_into_morphs(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4, __int16 *a5)
{
  v54 = *MEMORY[0x277D85DE8];
  v41 = 0;
  v42 = 0;
  v39 = 0;
  v40 = 0;
  v37 = 0;
  v38 = 0;
  v35 = 0;
  v36 = 0;
  bzero(v34, 0xB8uLL);
  bzero(v53, 0xC0uLL);
  v10 = setjmp(v53);
  if (!v10 && !OUTLINED_FUNCTION_3_32(v10, v34, v11, v12, v13, v14, v15, v16, v33, v34[0], v34[1], v34[2], v34[3], v34[4], v34[5], v34[6], v34[7], v34[8], v34[9], v34[10], v34[11], v34[12], v34[13], v34[14], v34[15], v34[16], v34[17], v34[18], v34[19], v34[20], v34[21], v34[22], v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53[0]))
  {
    get_parm(a1, &v41, a2, -6);
    get_parm(a1, &v39, a3, -6);
    OUTLINED_FUNCTION_2_33(v20, &v37);
    get_parm(a1, &v35, a5, -6);
    fence_31(a1, 0, &null_str_10);
    fence_31(a1, 1, &_MergedGlobals_28);
    v38 = v36;
    if (*(a1 + 3842) != 1)
    {
      while (2)
      {
        starttest(a1, 3);
        v21 = OUTLINED_FUNCTION_1_33();
        if (lpta_loadp_setscan_r(v21, v22))
        {
LABEL_13:
          v25 = OUTLINED_FUNCTION_1_33();
          if (por_words(v25, v26, &v35))
          {
LABEL_14:
            v27 = OUTLINED_FUNCTION_1_33();
            if (roots_dict_lookup(v27, v28))
            {
LABEL_15:
              OUTLINED_FUNCTION_1_33();
              strip_suffix();
LABEL_16:
              starttest(a1, 7);
              if (!*(a1 + 5946) || (starttest_l(a1, 7), v29 = OUTLINED_FUNCTION_1_33(), roots_dict_lookup(v29, v30)))
              {
LABEL_18:
                v31 = OUTLINED_FUNCTION_1_33();
                lpta_rpta_loadp(v31, v32, &v37);
                if (insert_2pt_s(a1, 3u, 1, &_MergedGlobals_28, 0))
                {
LABEL_9:
                  v23 = *(a1 + 104);
                  if (v23)
                  {
                    *(a1 + 104) = 0;
                    v24 = v23;
                  }

                  else
                  {
                    v24 = vback(a1, 0);
                  }

                  switch(v24)
                  {
                    case 1:
                      continue;
                    case 2:
                      goto LABEL_19;
                    case 3:
                      goto LABEL_13;
                    case 4:
                      goto LABEL_14;
                    case 5:
                      goto LABEL_15;
                    case 6:
                      goto LABEL_16;
                    case 7:
                      goto LABEL_18;
                    default:
                      goto LABEL_3;
                  }
                }
              }
            }
          }
        }

        else
        {
          if (testFldeq(a1, 3u, 0, 2) || advance_tok(a1))
          {
            goto LABEL_9;
          }

          *(a1 + 3886) = *(a1 + 2286);
        }

        break;
      }
    }

LABEL_19:
    *(a3 + 8) = v40;
    *(a4 + 8) = v38;
    v17 = 0;
    goto LABEL_4;
  }

LABEL_3:
  v17 = 94;
LABEL_4:
  vretproc(a1);
  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

uint64_t roots_dict_lookup(uint64_t a1, __int16 *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v13[0] = 0;
  v13[1] = 0;
  v12[0] = 0;
  v12[1] = 0;
  v11[0] = 0;
  v11[1] = 0;
  bzero(v10, 0xB8uLL);
  bzero(v17, 0xC0uLL);
  if (!setjmp(v17) && !ventproc(a1, v10, v16, v15, v14, v17))
  {
    v7 = OUTLINED_FUNCTION_1_33();
    get_parm(v7, v8, a2, -6);
    OUTLINED_FUNCTION_5_31();
    OUTLINED_FUNCTION_2_33(v9, v11);
    v4 = 0;
    fence_31(a1, 0, &null_str_10);
    OUTLINED_FUNCTION_1_33();
    if (!user_rootdict())
    {
      goto LABEL_4;
    }

    if (!por_roots(a1, v13, v12, v11))
    {
      v4 = 0;
      goto LABEL_4;
    }
  }

  v4 = 94;
LABEL_4:
  vretproc(a1);
  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t one_syllable(uint64_t a1)
{
  v46 = *MEMORY[0x277D85DE8];
  v33 = 0;
  v34 = 0;
  v31 = 0;
  v32 = 0;
  bzero(v30, 0xB8uLL);
  bzero(v45, 0xC0uLL);
  v2 = setjmp(v45);
  if (v2 || OUTLINED_FUNCTION_3_32(v2, v30, v3, v4, v5, v6, v7, v8, v25, v26, v27, v28, v29, v30[0], v30[1], v30[2], v30[3], v30[4], v30[5], v30[6], v30[7], v30[8], v30[9], v30[10], v30[11], v30[12], v30[13], v30[14], v30[15], v30[16], v30[17], v30[18], v30[19], v30[20], v30[21], v30[22], v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45[0]) || (OUTLINED_FUNCTION_5_31(), OUTLINED_FUNCTION_2_33(v9, &v31), fence_31(a1, 0, &null_str_10), starttest(a1, 1), lpta_loadp_setscan_r(a1, &v33)))
  {
LABEL_4:
    vretproc(a1);
    result = 94;
  }

  else
  {
    v12 = 0;
LABEL_7:
    v13 = v12;
    bspush_ca_scan(a1, 4);
    bspush_ca_scan(a1, 5);
    if (OUTLINED_FUNCTION_4_31() || advance_tok(a1))
    {
      v14 = v13;
    }

    else
    {
      bspush_ca_scan(a1, 6);
      bspush_ca_scan(a1, 7);
      OUTLINED_FUNCTION_0_35();
      v15 = test_string_s();
      v14 = v13;
      v16 = v13;
      if (!v15)
      {
        goto LABEL_11;
      }
    }

    do
    {
      do
      {
        while (2)
        {
          v19 = v14;
          v20 = *(a1 + 104);
          if (v20)
          {
            *(a1 + 104) = 0;
            v21 = v20;
          }

          else
          {
            v21 = vback(a1, v14);
            v19 = 0;
          }

          v12 = v19;
          v16 = v19;
          switch(v21)
          {
            case 2:
              goto LABEL_7;
            case 3:
              bspop_boa(a1);
              v22 = advance_tok(a1);
              v12 = v19;
              v14 = v19;
              if (!v22)
              {
                goto LABEL_7;
              }

              continue;
            case 4:
            case 14:
              bspush_ca_scan_boa();
              if (OUTLINED_FUNCTION_4_31())
              {
                v14 = v19;
              }

              else
              {
                v14 = 1;
              }

              continue;
            case 5:
              bspush_ca_scan(a1, 9);
              OUTLINED_FUNCTION_0_35();
              v23 = test_string_s();
              v14 = v19;
              if (v23)
              {
                continue;
              }

              bspush_ca_scan(a1, 10);
              OUTLINED_FUNCTION_0_35();
              goto LABEL_24;
            case 6:
            case 8:
            case 11:
            case 12:
              goto LABEL_11;
            case 7:
            case 10:
              OUTLINED_FUNCTION_0_35();
              goto LABEL_24;
            case 9:
LABEL_24:
              v24 = test_string_s();
              break;
            case 13:
              bspop_boa(a1);
              v24 = advance_tok(a1);
              break;
            default:
              goto LABEL_4;
          }

          break;
        }

        v16 = v19;
        v14 = v19;
      }

      while (v24);
LABEL_11:
      v17 = v16;
      bspush_ca_scan(a1, 14);
      *(a1 + 136) = 1;
      *(a1 + 112) = v32;
      *(a1 + 128) = 0;
      v18 = test_ptr(a1);
      v14 = v17;
    }

    while (v18);
    vretproc(a1);
    result = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void OUTLINED_FUNCTION_2_33(uint64_t a1, uint64_t a2)
{

  get_parm(v2, a2, v3, -6);
}

uint64_t OUTLINED_FUNCTION_3_32(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41, char a42, int a43, __int16 a44, char a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, char a51)
{

  return ventproc(v51, a2, &a49, &a45, &a42, &a51);
}

BOOL OUTLINED_FUNCTION_4_31()
{

  return testFldeq(v0, v1, v2, v1);
}

void OUTLINED_FUNCTION_5_31()
{

  get_parm(v0, v2, v1, -6);
}

uint64_t normalize_por_letters()
{
  OUTLINED_FUNCTION_17_26();
  v114 = *MEMORY[0x277D85DE8];
  v109[0] = 0;
  v109[1] = 0;
  v108[0] = 0;
  v108[1] = 0;
  v107[0] = 0;
  v107[1] = 0;
  v106[0] = 0;
  v106[1] = 0;
  v105[0] = 0;
  v105[1] = 0;
  v104[0] = 0;
  v104[1] = 0;
  bzero(v103, 0xB8uLL);
  OUTLINED_FUNCTION_15_28();
  bzero(v113, v1);
  if (setjmp(v113) || ventproc(v0, v103, v112, v111, v110, v113))
  {
LABEL_3:
    v2 = 94;
  }

  else
  {
    OUTLINED_FUNCTION_21_23(v0, v109);
    OUTLINED_FUNCTION_18_25(v0, v108);
    v5 = OUTLINED_FUNCTION_7_31();
    push_ptr_init(v5, v6);
    v7 = OUTLINED_FUNCTION_9_31();
    push_ptr_init(v7, v8);
    v9 = OUTLINED_FUNCTION_14_28();
    push_ptr_init(v9, v10);
    push_ptr_init(v0, v104);
    fence_32(v0);
    startloop(v0, 1);
    v11 = OUTLINED_FUNCTION_7_31();
    copyvar(v11, v12, v109);
    v13 = OUTLINED_FUNCTION_14_28();
    copyvar(v13, v14, v108);
    while (1)
    {
LABEL_6:
      v15 = OUTLINED_FUNCTION_7_31();
      if (forall_to_test(v15, v16, v105))
      {
        goto LABEL_42;
      }

LABEL_7:
      bspush_ca(v0);
      v17 = OUTLINED_FUNCTION_2_34();
      if (lpta_loadp_setscan_r(v17, v18) || advance_tok(v0))
      {
        goto LABEL_42;
      }

LABEL_9:
      savescptr(v0, 4, v106);
LABEL_10:
      v19 = OUTLINED_FUNCTION_2_34();
      if (lpta_loadp_setscan_r(v19, v20))
      {
        break;
      }

      OUTLINED_FUNCTION_1_34();
      if (test_string_s())
      {
        break;
      }

      OUTLINED_FUNCTION_3_33();
      delete_inp_from_right();
LABEL_33:
      forall_cont_from(v0);
    }

LABEL_12:
    starttest(v0, 8);
    v21 = OUTLINED_FUNCTION_2_34();
    if (!lpta_loadp_setscan_r(v21, v22))
    {
      bspush_ca_scan(v0, 9);
      OUTLINED_FUNCTION_1_34();
LABEL_38:
      if (!test_string_s())
      {
LABEL_39:
        v61 = OUTLINED_FUNCTION_3_33();
        lpta_rpta_loadp(v61, v62, v63);
        v64 = OUTLINED_FUNCTION_1_34();
        v68 = &unk_2806BC06B;
        goto LABEL_40;
      }

      goto LABEL_42;
    }

LABEL_13:
    starttest(v0, 12);
    v23 = OUTLINED_FUNCTION_2_34();
    if (lpta_loadp_setscan_r(v23, v24) || (OUTLINED_FUNCTION_1_34(), test_string_s()) || (v25 = OUTLINED_FUNCTION_3_33(), lpta_rpta_loadp(v25, v26, v27), v28 = OUTLINED_FUNCTION_1_34(), insert_2pt_s(v28, v29, v30, &unk_2806BC06D, v31)))
    {
LABEL_16:
      starttest(v0, 13);
      v32 = OUTLINED_FUNCTION_2_34();
      if (!lpta_loadp_setscan_r(v32, v33))
      {
        bspush_ca_scan(v0, 14);
        OUTLINED_FUNCTION_1_34();
LABEL_58:
        if (!test_string_s())
        {
LABEL_59:
          v80 = OUTLINED_FUNCTION_3_33();
          lpta_rpta_loadp(v80, v81, v82);
          v64 = OUTLINED_FUNCTION_1_34();
          v68 = &unk_2806BC070;
          goto LABEL_40;
        }

        goto LABEL_42;
      }

LABEL_17:
      starttest(v0, 16);
      v34 = OUTLINED_FUNCTION_2_34();
      if (!lpta_loadp_setscan_r(v34, v35))
      {
        bspush_ca_scan(v0, 17);
        OUTLINED_FUNCTION_1_34();
LABEL_68:
        if (!test_string_s())
        {
LABEL_69:
          v89 = OUTLINED_FUNCTION_3_33();
          lpta_rpta_loadp(v89, v90, v91);
          v64 = OUTLINED_FUNCTION_1_34();
          v68 = &unk_2806BC074;
          goto LABEL_40;
        }

        goto LABEL_42;
      }

LABEL_18:
      starttest(v0, 20);
      v36 = OUTLINED_FUNCTION_2_34();
      if (lpta_loadp_setscan_r(v36, v37) || (OUTLINED_FUNCTION_1_34(), test_string_s()) || (v38 = OUTLINED_FUNCTION_3_33(), lpta_rpta_loadp(v38, v39, v40), v41 = OUTLINED_FUNCTION_5_32(), insert_2pt_s(v41, v42, 2, &unk_2806BC08B, v43)))
      {
LABEL_21:
        starttest(v0, 21);
        v44 = OUTLINED_FUNCTION_2_34();
        if (!lpta_loadp_setscan_r(v44, v45))
        {
          bspush_ca_scan(v0, 22);
          OUTLINED_FUNCTION_1_34();
          goto LABEL_65;
        }

LABEL_22:
        starttest(v0, 26);
        v46 = OUTLINED_FUNCTION_2_34();
        if (!lpta_loadp_setscan_r(v46, v47))
        {
          bspush_ca_scan(v0, 27);
          OUTLINED_FUNCTION_1_34();
LABEL_61:
          if (!test_string_s())
          {
LABEL_62:
            v83 = OUTLINED_FUNCTION_3_33();
            lpta_rpta_loadp(v83, v84, v85);
            v64 = OUTLINED_FUNCTION_5_32();
            v66 = 2;
            v68 = &unk_2806BC08D;
            goto LABEL_40;
          }

          goto LABEL_42;
        }

LABEL_23:
        v48 = OUTLINED_FUNCTION_2_34();
        if (lpta_loadp_setscan_r(v48, v49) || (OUTLINED_FUNCTION_1_34(), test_string_s()))
        {
LABEL_25:
          starttest(v0, 34);
          v50 = OUTLINED_FUNCTION_2_34();
          if (lpta_loadp_setscan_r(v50, v51) || (OUTLINED_FUNCTION_1_34(), test_string_s()) || (v52 = OUTLINED_FUNCTION_3_33(), lpta_rpta_loadp(v52, v53, v54), v55 = OUTLINED_FUNCTION_1_34(), insert_2pt_s(v55, v56, v57, &unk_2806BC07D, v58)))
          {
LABEL_70:
            v92 = OUTLINED_FUNCTION_10_31();
            starttest(v92, v93);
            v94 = OUTLINED_FUNCTION_2_34();
            if (!lpta_loadp_setscan_r(v94, v95))
            {
              OUTLINED_FUNCTION_1_34();
              if (!test_string_s())
              {
                v96 = OUTLINED_FUNCTION_3_33();
                lpta_rpta_loadp(v96, v97, v98);
                v99 = OUTLINED_FUNCTION_1_34();
                insert_2pt_s(v99, v100, v101, &unk_2806BC082, v102);
              }
            }
          }
        }

        else
        {
          starttest_l(v0, 30);
          v59 = OUTLINED_FUNCTION_2_34();
          if (!lpta_loadp_setscan_l(v59, v60))
          {
LABEL_73:
            savescptr(v0, 31, v104);
            bspush_ca_scan(v0, 32);
            OUTLINED_FUNCTION_1_34();
LABEL_48:
            if (test_string_s())
            {
              goto LABEL_42;
            }

LABEL_49:
            if (lpta_loadp_setscan_r(v0, v104))
            {
              goto LABEL_42;
            }

            if (advance_tok(v0))
            {
              goto LABEL_42;
            }

            if (testFldeq(v0, 1u, 4, 1))
            {
              goto LABEL_42;
            }

            if (advance_tok(v0))
            {
              goto LABEL_42;
            }

            v73 = OUTLINED_FUNCTION_3_33();
            lpta_rpta_loadp(v73, v74, v75);
            OUTLINED_FUNCTION_5_32();
            if (mark_s())
            {
              goto LABEL_42;
            }
          }
        }
      }
    }

LABEL_41:
    while (forto_adv_r(v0, 1, 2, 35, 1, v107))
    {
      do
      {
        do
        {
LABEL_42:
          v69 = v0[13];
          if (v69)
          {
            v70 = OUTLINED_FUNCTION_20_23(v69);
          }

          else
          {
            v70 = vback(v0, 0);
          }

          switch(v70)
          {
            case 1:
              goto LABEL_74;
            case 2:
              goto LABEL_10;
            case 3:
            case 30:
              goto LABEL_41;
            case 4:
              goto LABEL_9;
            case 5:
              goto LABEL_12;
            case 6:
              goto LABEL_33;
            case 7:
              goto LABEL_6;
            case 8:
              goto LABEL_13;
            case 9:
              v71 = OUTLINED_FUNCTION_10_31();
              bspush_ca_scan(v71, v72);
              goto LABEL_63;
            case 10:
              goto LABEL_39;
            case 11:
LABEL_63:
              OUTLINED_FUNCTION_0_36();
              goto LABEL_38;
            case 12:
              goto LABEL_16;
            case 13:
              goto LABEL_17;
            case 14:
              OUTLINED_FUNCTION_0_36();
              goto LABEL_58;
            case 15:
              goto LABEL_59;
            case 16:
              goto LABEL_18;
            case 17:
              v78 = OUTLINED_FUNCTION_10_31();
              bspush_ca_scan(v78, v79);
              goto LABEL_67;
            case 18:
              goto LABEL_69;
            case 19:
LABEL_67:
              OUTLINED_FUNCTION_0_36();
              goto LABEL_68;
            case 20:
              goto LABEL_21;
            case 21:
              goto LABEL_22;
            case 22:
            case 24:
              v76 = OUTLINED_FUNCTION_10_31();
              bspush_ca_scan(v76, v77);
              goto LABEL_64;
            case 23:
              goto LABEL_66;
            case 25:
LABEL_64:
              OUTLINED_FUNCTION_0_36();
              break;
            case 26:
              goto LABEL_23;
            case 27:
              OUTLINED_FUNCTION_0_36();
              goto LABEL_61;
            case 28:
              goto LABEL_62;
            case 29:
              goto LABEL_25;
            case 31:
              goto LABEL_73;
            case 32:
              OUTLINED_FUNCTION_0_36();
              goto LABEL_48;
            case 33:
              goto LABEL_49;
            case 34:
              goto LABEL_70;
            case 35:
              goto LABEL_7;
            default:
              goto LABEL_3;
          }

LABEL_65:
          ;
        }

        while (test_string_s());
LABEL_66:
        v86 = OUTLINED_FUNCTION_3_33();
        lpta_rpta_loadp(v86, v87, v88);
        v64 = OUTLINED_FUNCTION_1_34();
        v68 = &unk_2806BC07A;
LABEL_40:
        ;
      }

      while (insert_2pt_s(v64, v65, v66, v68, v67));
    }

LABEL_74:
    v2 = 0;
  }

  vretproc(v0);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t por_acrotest()
{
  OUTLINED_FUNCTION_17_26();
  v73 = *MEMORY[0x277D85DE8];
  memset(v68, 0, sizeof(v68));
  bzero(v67, 0xB8uLL);
  OUTLINED_FUNCTION_15_28();
  bzero(v72, v1);
  if (setjmp(v72))
  {
    goto LABEL_3;
  }

  if (ventproc(v0, v67, v71, v70, v69, v72))
  {
    goto LABEL_3;
  }

  v6 = OUTLINED_FUNCTION_14_28();
  OUTLINED_FUNCTION_21_23(v6, v7);
  v8 = OUTLINED_FUNCTION_9_31();
  OUTLINED_FUNCTION_18_25(v8, v9);
  fence_32(v0);
  v10 = OUTLINED_FUNCTION_14_28();
  lpta_rpta_loadp(v10, v11, v68);
  if (!setd_lookup(v0, 1u, 50))
  {
    goto LABEL_3;
  }

  v12 = 0;
  while (2)
  {
    v13 = OUTLINED_FUNCTION_9_31();
    lpta_rpta_loadp(v13, v14, v68);
    if (!setd_lookup(v0, 1u, 51))
    {
      goto LABEL_47;
    }

    v15 = v12;
LABEL_9:
    v16 = v15;
    starttest(v0, 4);
    v17 = OUTLINED_FUNCTION_8_31();
    v19 = lpta_loadp_setscan_r(v17, v18);
    v20 = v16;
    if (!v19)
    {
LABEL_10:
      v21 = v20;
      v22 = OUTLINED_FUNCTION_11_30();
      if (!testFldeq(v22, v23, v24, 2) && !advance_tok(v0))
      {
        v25 = v0;
        v26 = 5;
        goto LABEL_13;
      }

LABEL_42:
      v28 = v21;
      goto LABEL_14;
    }

LABEL_18:
    v36 = v20;
    starttest(v0, 6);
    v37 = OUTLINED_FUNCTION_8_31();
    v39 = lpta_loadp_setscan_r(v37, v38);
    v33 = v36;
    if (v39)
    {
LABEL_19:
      v21 = v33;
      starttest(v0, 8);
      v40 = OUTLINED_FUNCTION_8_31();
      if (lpta_loadp_setscan_r(v40, v41) || advance_tok(v0) || advance_tok(v0) || advance_tok(v0) || advance_tok(v0) || advance_tok(v0) || (v42 = advance_tok(v0), v34 = v21, v42))
      {
LABEL_26:
        starttest(v0, 10);
        v43 = OUTLINED_FUNCTION_8_31();
        if (!lpta_loadp_setscan_r(v43, v44))
        {
          v62 = OUTLINED_FUNCTION_11_30();
          if (testFldeq(v62, v63, v64, 2) || advance_tok(v0))
          {
            goto LABEL_42;
          }

          bspush_ca_boa();
          v65 = OUTLINED_FUNCTION_9_31();
          v58 = por_legal_initial_cons(v65);
          goto LABEL_38;
        }

        v35 = v21;
LABEL_28:
        v21 = v35;
        starttest(v0, 12);
        v45 = OUTLINED_FUNCTION_14_28();
        if (!lpta_loadp_setscan_l(v45, v46))
        {
          v47 = OUTLINED_FUNCTION_11_30();
          if (testFldeq(v47, v48, v49, 2) || advance_tok(v0))
          {
            goto LABEL_42;
          }

          bspush_ca_boa();
          v50 = OUTLINED_FUNCTION_14_28();
          v58 = por_legal_final_cons(v50, v51, v52, v53, v54, v55, v56, v57);
LABEL_38:
          if (v58)
          {
            v28 = v21;
          }

          else
          {
            v28 = 1;
          }

          goto LABEL_14;
        }
      }

      else
      {
LABEL_41:
        v21 = v34;
        if (advance_tok(v0))
        {
          goto LABEL_42;
        }

        bspush_ca_scan(v0, 9);
        *(v0 + 136) = 1;
        v66 = OUTLINED_FUNCTION_19_24();
        v28 = v21;
        if (v66)
        {
          goto LABEL_14;
        }
      }

LABEL_3:
      v2 = 94;
      break;
    }

LABEL_32:
    v21 = v33;
    v59 = OUTLINED_FUNCTION_11_30();
    if (testFldeq(v59, v60, v61, 1) || advance_tok(v0))
    {
      goto LABEL_42;
    }

    v25 = v0;
    v26 = 7;
LABEL_13:
    bspush_ca_scan(v25, v26);
    *(v0 + 136) = 1;
    v27 = OUTLINED_FUNCTION_19_24();
    v28 = v21;
    if (!v27)
    {
LABEL_47:
      v2 = 0;
      break;
    }

LABEL_14:
    v29 = *(v0 + 104);
    if (v29)
    {
      *(v0 + 104) = 0;
      v30 = v29;
      v31 = v28;
    }

    else
    {
      v30 = vback(v0, v28);
      v31 = 0;
    }

    v2 = 94;
    v32 = v30 - 1;
    v15 = v31;
    v20 = v31;
    v33 = v31;
    v34 = v31;
    v21 = v31;
    v35 = v31;
    switch(v32)
    {
      case 0:
        v12 = v31;
        continue;
      case 1:
        goto LABEL_47;
      case 2:
        goto LABEL_9;
      case 3:
        goto LABEL_18;
      case 4:
        goto LABEL_10;
      case 5:
        goto LABEL_19;
      case 6:
        goto LABEL_32;
      case 7:
        goto LABEL_26;
      case 8:
        goto LABEL_41;
      case 9:
        goto LABEL_28;
      case 10:
      case 12:
        bspop_boa(v0);
        goto LABEL_47;
      default:
        goto LABEL_4;
    }
  }

LABEL_4:
  v3 = v2;
  vretproc(v0);
  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t por_legal_initial_cons(void *a1)
{
  v69 = *MEMORY[0x277D85DE8];
  v63 = 0;
  v64 = 0;
  bzero(v62, 0xB8uLL);
  OUTLINED_FUNCTION_15_28();
  bzero(v68, v2);
  if (setjmp(v68) || ventproc(a1, v62, v67, v66, v65, v68))
  {
    goto LABEL_3;
  }

  v7 = OUTLINED_FUNCTION_9_31();
  OUTLINED_FUNCTION_18_25(v7, v8);
  fence_32(a1);
  v9 = OUTLINED_FUNCTION_16_27();
  starttest(v9, v10);
  v11 = OUTLINED_FUNCTION_8_31();
  if (!lpta_loadp_setscan_r(v11, v12))
  {
    v14 = OUTLINED_FUNCTION_4_32();
    if (testFldeq(v14, v15, v16, 2) || advance_tok(a1) || (v17 = OUTLINED_FUNCTION_4_32(), testFldeq(v17, v18, v19, 1)))
    {
      v13 = 0;
    }

    else
    {
      v20 = advance_tok(a1);
      v13 = 0;
      v3 = 0;
      if (!v20)
      {
        goto LABEL_4;
      }
    }

    goto LABEL_35;
  }

  v13 = 0;
LABEL_14:
  v21 = OUTLINED_FUNCTION_10_31();
  starttest(v21, v22);
  v23 = OUTLINED_FUNCTION_13_30();
  if (!lpta_loadp_setscan_r(v23, v24))
  {
    v25 = OUTLINED_FUNCTION_4_32();
    if (!testFldeq(v25, v26, v27, 2) && !advance_tok(a1))
    {
      v28 = OUTLINED_FUNCTION_4_32();
      if (!testFldeq(v28, v29, v30, 2) && !advance_tok(a1))
      {
        v31 = OUTLINED_FUNCTION_4_32();
        if (!testFldeq(v31, v32, v33, 2) && !advance_tok(a1))
        {
          goto LABEL_3;
        }
      }
    }

    while (1)
    {
LABEL_35:
      v54 = v13;
      do
      {
        while (2)
        {
          v55 = a1[13];
          if (v55)
          {
            v56 = OUTLINED_FUNCTION_20_23(v55);
          }

          else
          {
            v56 = vback(a1, v54);
            v54 = 0;
          }

          v43 = v54;
          v47 = v54;
          v53 = v54;
          switch(v56)
          {
            case 1:
              v13 = v54;
              goto LABEL_14;
            case 2:
              goto LABEL_54;
            case 3:
              v13 = v54;
              goto LABEL_23;
            case 4:
              v13 = v54;
              goto LABEL_25;
            case 6:
              v57 = OUTLINED_FUNCTION_7_31();
              bspush_ca_scan(v57, v58);
              OUTLINED_FUNCTION_0_36();
              break;
            case 7:
              goto LABEL_29;
            case 8:
              bspush_ca_scan(a1, 9);
              OUTLINED_FUNCTION_0_36();
              break;
            case 9:
              bspush_ca_scan(a1, 10);
              OUTLINED_FUNCTION_0_36();
              break;
            case 10:
              bspush_ca_scan(a1, 11);
              OUTLINED_FUNCTION_0_36();
              break;
            case 11:
              bspush_ca_scan(a1, 12);
              OUTLINED_FUNCTION_0_36();
              break;
            case 12:
              bspush_ca_scan(a1, 13);
              OUTLINED_FUNCTION_0_36();
              break;
            case 13:
              OUTLINED_FUNCTION_0_36();
              break;
            case 14:
              OUTLINED_FUNCTION_0_36();
              v60 = test_string_s();
              v47 = v54;
              if (!v60)
              {
                goto LABEL_30;
              }

              continue;
            case 15:
              goto LABEL_30;
            case 16:
              bspop_boa(a1);
              goto LABEL_54;
            case 17:
              OUTLINED_FUNCTION_0_36();
              v59 = test_string_s();
              v53 = v54;
              if (!v59)
              {
                goto LABEL_32;
              }

              continue;
            case 18:
              goto LABEL_32;
            default:
              goto LABEL_3;
          }

          break;
        }

        v61 = test_string_s();
        v43 = v54;
      }

      while (v61);
LABEL_29:
      v13 = v43;
      v44 = OUTLINED_FUNCTION_10_31();
      bspush_ca_scan(v44, v45);
      OUTLINED_FUNCTION_0_36();
      v46 = test_string_s();
      v47 = v13;
      if (!v46)
      {
LABEL_30:
        v13 = v47;
        OUTLINED_FUNCTION_10_31();
        bspush_ca_boa();
        v48 = OUTLINED_FUNCTION_13_30();
        if (!lpta_loadp_setscan_r(v48, v49))
        {
          v50 = OUTLINED_FUNCTION_10_31();
          bspush_ca_scan(v50, v51);
          OUTLINED_FUNCTION_0_36();
          v52 = test_string_s();
          v53 = v13;
          if (!v52)
          {
LABEL_32:
            LODWORD(v13) = v53;
            OUTLINED_FUNCTION_0_36();
            if (test_string_s())
            {
              v13 = v13;
            }

            else
            {
              v13 = 1;
            }
          }
        }
      }
    }
  }

LABEL_23:
  v34 = OUTLINED_FUNCTION_13_30();
  if (!lpta_loadp_setscan_r(v34, v35))
  {
    OUTLINED_FUNCTION_6_31();
    if (!test_string_s())
    {
LABEL_54:
      v3 = 0;
      goto LABEL_4;
    }
  }

LABEL_25:
  v36 = OUTLINED_FUNCTION_10_31();
  starttest(v36, v37);
  v38 = OUTLINED_FUNCTION_13_30();
  if (!lpta_loadp_setscan_r(v38, v39))
  {
    v40 = OUTLINED_FUNCTION_10_31();
    bspush_ca_scan(v40, v41);
    OUTLINED_FUNCTION_0_36();
    v42 = test_string_s();
    v43 = v13;
    if (!v42)
    {
      goto LABEL_29;
    }

    goto LABEL_35;
  }

LABEL_3:
  v3 = 94;
LABEL_4:
  v4 = v3;
  vretproc(a1);
  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t por_legal_final_cons(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v47 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_12_30(a1, a2, a3, a4, a5, a6, a7, a8, v42[0], v42[1], v42[2], v42[3], v42[4], v42[5], v42[6], v42[7], v42[8], v42[9], v42[10], v42[11], v42[12], v42[13], v42[14], v42[15], v42[16], v42[17], v42[18], v42[19], v42[20], v42[21], v42[22], v42[23], v42[24]);
  OUTLINED_FUNCTION_15_28();
  bzero(v46, v9);
  if (setjmp(v46) || ventproc(a1, v42, v45, v44, v43, v46))
  {
LABEL_3:
    v10 = 94;
  }

  else
  {
    v13 = OUTLINED_FUNCTION_9_31();
    OUTLINED_FUNCTION_18_25(v13, v14);
    fence_32(a1);
    v15 = OUTLINED_FUNCTION_16_27();
    starttest(v15, v16);
    v17 = OUTLINED_FUNCTION_8_31();
    if (lpta_loadp_setscan_l(v17, v18))
    {
      goto LABEL_11;
    }

    v19 = OUTLINED_FUNCTION_4_32();
    if (testFldeq(v19, v20, v21, 2) || advance_tok(a1) || (v22 = OUTLINED_FUNCTION_4_32(), testFldeq(v22, v23, v24, 1)) || advance_tok(a1))
    {
      while (1)
      {
        v38 = a1[13];
        v39 = v38 ? OUTLINED_FUNCTION_20_23(v38) : vback(a1, 0);
        if (v39 != 1)
        {
          break;
        }

LABEL_11:
        v25 = OUTLINED_FUNCTION_10_31();
        starttest(v25, v26);
        v27 = OUTLINED_FUNCTION_13_30();
        if (lpta_loadp_setscan_l(v27, v28))
        {
          goto LABEL_24;
        }

        v29 = OUTLINED_FUNCTION_4_32();
        if (!testFldeq(v29, v30, v31, 2) && !advance_tok(a1))
        {
          v32 = OUTLINED_FUNCTION_4_32();
          if (!testFldeq(v32, v33, v34, 2) && !advance_tok(a1))
          {
            v35 = OUTLINED_FUNCTION_4_32();
            if (!testFldeq(v35, v36, v37, 2) && !advance_tok(a1))
            {
              goto LABEL_3;
            }
          }
        }
      }

      if (v39 == 2)
      {
        goto LABEL_10;
      }

      if (v39 != 3)
      {
        goto LABEL_3;
      }

LABEL_24:
      v40 = OUTLINED_FUNCTION_13_30();
      if (lpta_loadp_setscan_l(v40, v41))
      {
        goto LABEL_3;
      }

      OUTLINED_FUNCTION_6_31();
      if (test_string_s())
      {
        goto LABEL_3;
      }
    }

LABEL_10:
    v10 = 0;
  }

  vretproc(a1);
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t add_por_plural()
{
  OUTLINED_FUNCTION_17_26();
  v20 = *MEMORY[0x277D85DE8];
  v15[0] = 0;
  v15[1] = 0;
  OUTLINED_FUNCTION_12_30(v1, v2, v3, v4, v5, v6, v7, v8, v12[0], v12[1], v12[2], v12[3], v12[4], v12[5], v12[6], v12[7], v12[8], v12[9], v12[10], v12[11], v12[12], v12[13], v12[14], v12[15], v12[16], v12[17], v12[18], v12[19], v12[20], v12[21], v12[22], v13, v14);
  OUTLINED_FUNCTION_15_28();
  bzero(v19, v9);
  if (setjmp(v19) || ventproc(v0, v12, v18, v17, v16, v19))
  {
    vretproc(v0);
    result = 94;
  }

  else
  {
    OUTLINED_FUNCTION_21_23(v0, v15);
    OUTLINED_FUNCTION_18_25(v0, &v13);
    fence_32(v0);
    if (*(v0 + 2290) == *(v0 + 2914))
    {
      *(v0 + 168) = 1;
      *(v0 + 144) = v14;
      *(v0 + 128) = 0;
      insert_l(v0);
    }

    vretproc(v0);
    result = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t por_hyphen_between_nums(uint64_t a1, __int16 *a2, __int16 *a3, int a4, int a5, int a6, int a7, int a8)
{
  v41 = *MEMORY[0x277D85DE8];
  v36[0] = 0;
  v36[1] = 0;
  v35[0] = 0;
  v35[1] = 0;
  v34[0] = 0;
  v34[1] = 0;
  v33[0] = 0;
  v33[1] = 0;
  v32[0] = 0;
  v32[1] = 0;
  memset(v31, 0, sizeof(v31));
  OUTLINED_FUNCTION_12_30(a1, a2, a3, a4, a5, a6, a7, a8, v29[0], v29[1], v29[2], v29[3], v29[4], v29[5], v29[6], v29[7], v29[8], v29[9], v29[10], v29[11], v29[12], v29[13], v29[14], v29[15], v29[16], v29[17], v29[18], v29[19], v29[20], v29[21], v29[22], v30[0], v30[1]);
  OUTLINED_FUNCTION_15_28();
  bzero(v40, v11);
  if (!setjmp(v40) && !ventproc(a1, v29, v39, v38, v37, v40))
  {
    get_parm(a1, v36, a2, -6);
    get_parm(a1, v35, a3, -6);
    OUTLINED_FUNCTION_21_23(a1, v34);
    OUTLINED_FUNCTION_18_25(a1, v33);
    v15 = OUTLINED_FUNCTION_7_31();
    push_ptr_init(v15, v16);
    v17 = OUTLINED_FUNCTION_9_31();
    push_ptr_init(v17, v18);
    push_ptr_init(a1, v31);
    push_ptr_init(a1, v30);
    fence_32(a1);
    OUTLINED_FUNCTION_3_33();
    find_previous_word();
    if (v19 || (v20 = OUTLINED_FUNCTION_16_27(), starttest_l(v20, v21), lpta_loadp_setscan_r(a1, v32)))
    {
LABEL_7:
      find_next_word();
      if (v22)
      {
LABEL_10:
        v12 = 0;
        goto LABEL_4;
      }

      lpta_rpta_loadp(a1, v31, v30);
      v23 = OUTLINED_FUNCTION_6_31();
      if (setd_lookup(v23, v24, 52))
      {
LABEL_9:
        lpta_rpta_loadp(a1, v31, v30);
        v25 = OUTLINED_FUNCTION_6_31();
        if (setd_lookup(v25, v26, 53))
        {
          goto LABEL_10;
        }
      }

LABEL_19:
      v12 = 0;
      *(a1 + 2790) = *(a1 + 2794);
      goto LABEL_4;
    }

    bspush_ca_scan(a1, 2);
    while (2)
    {
      if (!test_string_s())
      {
LABEL_18:
        *(a1 + 136) = v32;
        if (!OUTLINED_FUNCTION_19_24())
        {
          goto LABEL_19;
        }
      }

      v27 = *(a1 + 104);
      if (v27)
      {
        v28 = OUTLINED_FUNCTION_20_23(v27);
      }

      else
      {
        v28 = vback(a1, 0);
      }

      switch(v28)
      {
        case 1:
          goto LABEL_7;
        case 2:
          OUTLINED_FUNCTION_6_31();
          continue;
        case 3:
          goto LABEL_18;
        case 4:
          goto LABEL_10;
        case 5:
          goto LABEL_9;
        default:
          goto LABEL_3;
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

void OUTLINED_FUNCTION_12_30(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  a32 = 0;
  a33 = 0;

  bzero(&a9, 0xB8uLL);
}

void OUTLINED_FUNCTION_18_25(uint64_t a1, uint64_t a2)
{

  get_parm(a1, a2, v2, -6);
}

uint64_t OUTLINED_FUNCTION_19_24()
{
  *(v1 + 112) = v0;
  *(v1 + 128) = 0;

  return test_ptr(v1);
}

void OUTLINED_FUNCTION_21_23(uint64_t a1, uint64_t a2)
{

  get_parm(a1, a2, v2, -6);
}

void *fence_33(uint64_t a1, int a2, uint64_t a3)
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

uint64_t convert_por_digits_to_words()
{
  OUTLINED_FUNCTION_6_32();
  v79 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_19_25(v2, v3, v4, v5, v6, v7, v8, v9, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73);
  OUTLINED_FUNCTION_23_23(v10, v11, v12, v13, v14, v15, v16, v17, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78);
  v18 = setjmp(v1);
  if (v18 || OUTLINED_FUNCTION_12_31(v18, &v47, v19, v20, v21, v22, v23, v24, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, SBYTE4(v74), v75, SWORD2(v75), SBYTE6(v75), v76, SWORD2(v76), SBYTE6(v76), SHIBYTE(v76), v77, v78))
  {
    goto LABEL_3;
  }

  v27 = OUTLINED_FUNCTION_10_32();
  get_parm(v27, v28, v29, -6);
  v30 = OUTLINED_FUNCTION_40_11();
  OUTLINED_FUNCTION_71_8(v30, v31);
  fence_33(v0, 0, &null_str_11);
  OUTLINED_FUNCTION_10_32();
  convert_por_time();
  if (!v32)
  {
    goto LABEL_20;
  }

  while (2)
  {
    OUTLINED_FUNCTION_40_11();
    if (!convert_por_date())
    {
      goto LABEL_20;
    }

LABEL_6:
    v33 = OUTLINED_FUNCTION_50_9();
    starttest(v33, v34);
    v35 = OUTLINED_FUNCTION_40_11();
    if (lpta_loadp_setscan_r(v35, v36) || (OUTLINED_FUNCTION_2_35(), test_string_s()))
    {
LABEL_14:
      OUTLINED_FUNCTION_5_33();
      convert_digits();
LABEL_16:
      OUTLINED_FUNCTION_26_22();
      if (v44)
      {
        goto LABEL_19;
      }

LABEL_17:
      OUTLINED_FUNCTION_45_10();
      add_por_point_digits();
      if (!v45)
      {
LABEL_19:
        *(v0 + 2910) = 0;
        goto LABEL_20;
      }

LABEL_18:
      OUTLINED_FUNCTION_45_10();
      process_por_fraction();
      if (!v46)
      {
        goto LABEL_19;
      }

LABEL_20:
      OUTLINED_FUNCTION_105_2(v71);
      break;
    }

    do
    {
LABEL_8:
      v37 = OUTLINED_FUNCTION_66_8();
      bspush_ca_scan(v37, v38);
      v39 = OUTLINED_FUNCTION_4_33();
    }

    while (!testFldeq(v39, v40, v41, 2) && !advance_tok(v0));
    v42 = *(v0 + 104);
    if (v42)
    {
      v43 = OUTLINED_FUNCTION_47_10(v42);
    }

    else
    {
      v43 = OUTLINED_FUNCTION_74_8();
    }

    switch(v43)
    {
      case 1:
        continue;
      case 2:
      case 7:
        goto LABEL_16;
      case 3:
        goto LABEL_6;
      case 4:
        goto LABEL_14;
      case 5:
        OUTLINED_FUNCTION_17_27(5, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70);
        OUTLINED_FUNCTION_21_24();
        single_chars();
        goto LABEL_16;
      case 6:
        goto LABEL_8;
      case 8:
        goto LABEL_17;
      case 9:
        goto LABEL_19;
      case 10:
        goto LABEL_18;
      case 11:
        goto LABEL_20;
      default:
        goto LABEL_3;
    }
  }

LABEL_3:
  vretproc(v0);
  v25 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_103_2();
}