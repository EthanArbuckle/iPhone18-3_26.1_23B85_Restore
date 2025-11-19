uint64_t skip_punct_and_delimiters()
{
  OUTLINED_FUNCTION_76_1();
  v122 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_10_14(v2, v3, v4, v5, v6, v7, v8, v9, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v121);
  OUTLINED_FUNCTION_57_1();
  OUTLINED_FUNCTION_179(v10, v11);
  if (setjmp(v1) || (OUTLINED_FUNCTION_0_16(), v17 = OUTLINED_FUNCTION_178(v12, v13, v14, v15, v16), v17))
  {
LABEL_3:
    vretproc(v0);
    result = 94;
  }

  else
  {
    OUTLINED_FUNCTION_62_1(v17, &v120);
    v20 = OUTLINED_FUNCTION_66_1();
    push_ptr_init(v20, v21);
    fence_16(v0, 0, &_MergedGlobals_1_0);
    v22 = OUTLINED_FUNCTION_42_1();
    starttest(v22, v23);
    v24 = OUTLINED_FUNCTION_15_12();
    bspush_ca(v24);
    v25 = *(v0 + 5114);
LABEL_6:
    OUTLINED_FUNCTION_88_1();
    if (!v26)
    {
      while (1)
      {
        v41 = *(v0 + 104);
        if (v41)
        {
          v31 = OUTLINED_FUNCTION_65_1(v41);
        }

        else
        {
          v31 = OUTLINED_FUNCTION_133();
        }

        switch(v31)
        {
          case 1:
          case 7:
            goto LABEL_31;
          case 2:
            v60 = OUTLINED_FUNCTION_52_1();
            bspush_ca(v60);
            v61 = *(v0 + 5102);
            goto LABEL_6;
          case 3:
            goto LABEL_8;
          case 4:
            v49 = OUTLINED_FUNCTION_22_8();
            bspush_ca(v49);
            v50 = *(v0 + 5110);
            goto LABEL_6;
          case 5:
            v54 = OUTLINED_FUNCTION_36_2();
            bspush_ca(v54);
            v55 = *(v0 + 5122);
            goto LABEL_6;
          case 6:
            v51 = *(v0 + 5098);
            goto LABEL_6;
          case 8:
            v42 = OUTLINED_FUNCTION_45_1();
            bspush_ca_scan(v42, v43);
            OUTLINED_FUNCTION_4_14();
            if (test_string_s())
            {
              continue;
            }

            break;
          case 9:
            goto LABEL_29;
          case 10:
            v58 = OUTLINED_FUNCTION_35_2();
            bspush_ca_scan(v58, v59);
            goto LABEL_10;
          case 11:
            break;
          case 12:
            v52 = OUTLINED_FUNCTION_32_3();
            bspush_ca_scan(v52, v53);
            goto LABEL_10;
          case 13:
            v56 = OUTLINED_FUNCTION_33_3();
            bspush_ca_scan(v56, v57);
            goto LABEL_10;
          case 14:
            v47 = OUTLINED_FUNCTION_46_1();
            bspush_ca_scan(v47, v48);
            goto LABEL_10;
          case 15:
            v44 = OUTLINED_FUNCTION_9_14();
            if (!testFldeq(v44, v45, v46, 4) && !advance_tok(v0))
            {
              goto LABEL_29;
            }

            continue;
          case 16:
            v67 = OUTLINED_FUNCTION_59_1();
            savescptr(v67, v68, v69);
            goto LABEL_31;
          case 17:
            goto LABEL_9;
          default:
            goto LABEL_3;
        }

        OUTLINED_FUNCTION_109();
        v62 = OUTLINED_FUNCTION_83_1();
        savescptr(v62, v63, v64);
        do
        {
LABEL_29:
          v65 = OUTLINED_FUNCTION_41_1();
          bspush_ca_scan(v65, v66);
LABEL_9:
          v39 = OUTLINED_FUNCTION_38_2();
          bspush_ca_scan(v39, v40);
LABEL_10:
          OUTLINED_FUNCTION_4_14();
        }

        while (!test_string_s());
      }
    }

LABEL_8:
    v27 = OUTLINED_FUNCTION_27_6();
    starttest(v27, v28);
    v29 = OUTLINED_FUNCTION_14_12();
    v31 = lpta_loadp_setscan_r(v29, v30);
    if (!v31)
    {
      goto LABEL_9;
    }

LABEL_31:
    OUTLINED_FUNCTION_131(v31, v32, v33, v34, v35, v36, v37, v38, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v120, v121);
    result = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t build_phrase_final_structure()
{
  OUTLINED_FUNCTION_76_1();
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_14(v3, v4, v5, v6, v7, v8, v9, v10, v49, v53, v57, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, v149, v153);
  OUTLINED_FUNCTION_57_1();
  OUTLINED_FUNCTION_164(v11, v12, v13, v14, v15, v16, v17, v18, v50, v54, v58, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142, v146, v150, v154, v157, v159, v161, v163, v165);
  if (setjmp(v1))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_0_16();
  if (OUTLINED_FUNCTION_132(v19, v20, v21, v22, v23, v24, v25, v26, v51, v55, v59, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v147, v151, v155, v158, v160, v162, v164, v166))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_21_8();
  v29 = OUTLINED_FUNCTION_66_1();
  push_ptr_init(v29, v30);
  fence_16(v0, 0, &_MergedGlobals_1_0);
  OUTLINED_FUNCTION_103();
  v31 = OUTLINED_FUNCTION_55_1();
  v33 = lpta_loadp_setscan_r(v31, v32);
  if (v33)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_15_12();
  bspush_ca_scan_boa();
  v41 = OUTLINED_FUNCTION_6_14();
  v44 = !testFldeq(v41, v42, v43, 72);
  while (1)
  {
    v45 = *(v0 + 104);
    if (v45)
    {
      v33 = OUTLINED_FUNCTION_60_1(v45);
    }

    else
    {
      v33 = vback(v0, v44);
      v44 = 0;
    }

    if (v33 != 2)
    {
      break;
    }

    bspop_boa(v0);
    if (!advance_tok(v0))
    {
      *(v0 + 136) = 1;
      *(v0 + 112) = v156;
      *(v0 + 128) = 0;
      v46 = OUTLINED_FUNCTION_129();
      insert_r(v46);
      v47 = OUTLINED_FUNCTION_66_1();
      v33 = rpta_storep(v47, v48);
      goto LABEL_6;
    }
  }

  if (v33 == 1)
  {
LABEL_6:
    if (!*(v0 + 2538))
    {
      OUTLINED_FUNCTION_172();
    }

    goto LABEL_17;
  }

  if (v33 == 3)
  {
LABEL_17:
    OUTLINED_FUNCTION_131(v33, v34, v35, v36, v37, v38, v39, v40, v52, v56, v60, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144, v148, v152, v156);
    result = 0;
    goto LABEL_4;
  }

LABEL_3:
  vretproc(v0);
  result = 94;
LABEL_4:
  v28 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t in_quotes()
{
  OUTLINED_FUNCTION_11_14();
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_14(v3, v4, v5, v6, v7, v8, v9, v10, v52, v56, v60, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144, v148, v151, v154);
  OUTLINED_FUNCTION_26_8(v11, v12, v13, v14, v15, v16, v17, v18, v53, v57, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, v149, v152, v155, v157, v159, v161, v163, v165);
  if (!setjmp(v1))
  {
    OUTLINED_FUNCTION_0_16();
    if (!OUTLINED_FUNCTION_132(v19, v20, v21, v22, v23, v24, v25, v26, v54, v58, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142, v146, v150, v153, v156, v158, v160, v162, v164, v166))
    {
      v27 = OUTLINED_FUNCTION_13_14();
      get_parm(v27, v28, v29, -6);
      OUTLINED_FUNCTION_43_1(v30, v31, v32, v33, v34, v35, v36, v37, v55, v59, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v147);
      fence_16(v0, 0, &_MergedGlobals_1_0);
      v38 = OUTLINED_FUNCTION_29_5();
      if (lpta_loadp_setscan_l(v38, v39) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v40 = OUTLINED_FUNCTION_31_4(), lpta_loadp_setscan_r(v40, v41)) || (OUTLINED_FUNCTION_4_14(), test_string_s()))
      {
        v42 = OUTLINED_FUNCTION_14_12();
        if (lpta_loadp_setscan_l(v42, v43) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v44 = OUTLINED_FUNCTION_31_4(), lpta_loadp_setscan_r(v44, v45)) || (OUTLINED_FUNCTION_4_14(), test_string_s()))
        {
          v46 = OUTLINED_FUNCTION_14_12();
          if (!lpta_loadp_setscan_l(v46, v47))
          {
            OUTLINED_FUNCTION_4_14();
            if (!test_string_s())
            {
              v48 = OUTLINED_FUNCTION_31_4();
              if (!lpta_loadp_setscan_r(v48, v49))
              {
                OUTLINED_FUNCTION_4_14();
                test_string_s();
              }
            }
          }
        }
      }
    }
  }

  vretproc(v0);
  v50 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_105();
}

uint64_t in_brackets()
{
  OUTLINED_FUNCTION_11_14();
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_14(v3, v4, v5, v6, v7, v8, v9, v10, v52, v56, v60, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144, v148, v151, v154);
  OUTLINED_FUNCTION_26_8(v11, v12, v13, v14, v15, v16, v17, v18, v53, v57, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, v149, v152, v155, v157, v159, v161, v163, v165);
  if (!setjmp(v1))
  {
    OUTLINED_FUNCTION_0_16();
    if (!OUTLINED_FUNCTION_132(v19, v20, v21, v22, v23, v24, v25, v26, v54, v58, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142, v146, v150, v153, v156, v158, v160, v162, v164, v166))
    {
      v27 = OUTLINED_FUNCTION_13_14();
      get_parm(v27, v28, v29, -6);
      OUTLINED_FUNCTION_43_1(v30, v31, v32, v33, v34, v35, v36, v37, v55, v59, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v147);
      fence_16(v0, 0, &_MergedGlobals_1_0);
      v38 = OUTLINED_FUNCTION_29_5();
      if (lpta_loadp_setscan_l(v38, v39) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v40 = OUTLINED_FUNCTION_31_4(), lpta_loadp_setscan_r(v40, v41)) || (OUTLINED_FUNCTION_4_14(), test_string_s()))
      {
        v42 = OUTLINED_FUNCTION_14_12();
        if (lpta_loadp_setscan_l(v42, v43) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v44 = OUTLINED_FUNCTION_31_4(), lpta_loadp_setscan_r(v44, v45)) || (OUTLINED_FUNCTION_4_14(), test_string_s()))
        {
          v46 = OUTLINED_FUNCTION_14_12();
          if (!lpta_loadp_setscan_l(v46, v47))
          {
            OUTLINED_FUNCTION_4_14();
            if (!test_string_s())
            {
              v48 = OUTLINED_FUNCTION_31_4();
              if (!lpta_loadp_setscan_r(v48, v49))
              {
                OUTLINED_FUNCTION_4_14();
                test_string_s();
              }
            }
          }
        }
      }
    }
  }

  vretproc(v0);
  v50 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_105();
}

void beg_of_word()
{
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_76_1();
  v72 = *MEMORY[0x277D85DE8];
  v59 = 0;
  v60 = 0;
  OUTLINED_FUNCTION_58_1();
  bzero(v58, v1);
  OUTLINED_FUNCTION_57_1();
  bzero(v71, v2);
  v3 = setjmp(v71);
  if (!v3 && !OUTLINED_FUNCTION_44_1(v3, v58, v4, v5, v6, v7, v8, v9, v55, v56, v57, v58[0], v58[1], v58[2], v58[3], v58[4], v58[5], v58[6], v58[7], v58[8], v58[9], v58[10], v58[11], v58[12], v58[13], v58[14], v58[15], v58[16], v58[17], v58[18], v58[19], v58[20], v58[21], v58[22], v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71[0]))
  {
    OUTLINED_FUNCTION_21_8();
    fence_16(v0, 0, &_MergedGlobals_1_0);
    v11 = OUTLINED_FUNCTION_100();
    starttest(v11, v12);
    v13 = OUTLINED_FUNCTION_55_1();
    if (lpta_loadp_setscan_l(v13, v14))
    {
LABEL_5:
      v15 = OUTLINED_FUNCTION_38_2();
      starttest(v15, v16);
      v17 = OUTLINED_FUNCTION_37_2();
      bspush_ca(v17);
      v18 = *(v0 + 5114);
      OUTLINED_FUNCTION_88_1();
      if (v19)
      {
LABEL_7:
        v20 = OUTLINED_FUNCTION_53_1();
        if (!lpta_loadp_setscan_l(v20, v21))
        {
          do
          {
LABEL_11:
            v24 = OUTLINED_FUNCTION_71_1();
            bspush_ca_scan(v24, v25);
            v26 = OUTLINED_FUNCTION_55_1();
            bspush_ca_scan(v26, v27);
            OUTLINED_FUNCTION_4_14();
          }

          while (!test_string_s());
        }
      }
    }

    else
    {
      v22 = OUTLINED_FUNCTION_15_12();
      bspush_ca_scan(v22, v23);
      OUTLINED_FUNCTION_4_14();
      if (!test_string_s())
      {
        goto LABEL_3;
      }
    }

    OUTLINED_FUNCTION_153();
    OUTLINED_FUNCTION_165();
    while (2)
    {
      v28 = *(v0 + 104);
      if (v28)
      {
        v29 = OUTLINED_FUNCTION_65_1(v28);
      }

      else
      {
        v29 = OUTLINED_FUNCTION_133();
      }

      switch(v29)
      {
        case 1:
          goto LABEL_5;
        case 2:
          v30 = OUTLINED_FUNCTION_111();
          bspush_ca_scan(v30, v31);
          OUTLINED_FUNCTION_30_4();
          goto LABEL_28;
        case 4:
          v39 = OUTLINED_FUNCTION_106();
          bspush_ca_scan(v39, v40);
          OUTLINED_FUNCTION_30_4();
          goto LABEL_28;
        case 5:
          v35 = OUTLINED_FUNCTION_112();
          bspush_ca_scan(v35, v36);
          OUTLINED_FUNCTION_30_4();
          goto LABEL_28;
        case 6:
        case 22:
          OUTLINED_FUNCTION_30_4();
LABEL_28:
          if (!test_string_s())
          {
            break;
          }

          continue;
        case 9:
          v32 = OUTLINED_FUNCTION_91_0();
          bspush_ca(v32);
          v33 = *(v0 + 5102);
          goto LABEL_24;
        case 10:
          goto LABEL_7;
        case 11:
          v41 = OUTLINED_FUNCTION_55_1();
          bspush_ca(v41);
          v42 = *(v0 + 5110);
          goto LABEL_24;
        case 12:
          v34 = *(v0 + 5122);
LABEL_24:
          OUTLINED_FUNCTION_88_1();
          if (!v19)
          {
            continue;
          }

          goto LABEL_7;
        case 13:
          v47 = OUTLINED_FUNCTION_64_1();
          bspush_ca_scan(v47, v48);
          *(v0 + 136) = 1;
          v49 = *(v0 + 1408);
          v50 = OUTLINED_FUNCTION_12_14();
          if (test_ptr(v50))
          {
            continue;
          }

          goto LABEL_3;
        case 14:
          v43 = OUTLINED_FUNCTION_74_1();
          bspush_ca_scan(v43, v44);
          OUTLINED_FUNCTION_30_4();
          goto LABEL_37;
        case 15:
        case 21:
          goto LABEL_11;
        case 16:
          v51 = OUTLINED_FUNCTION_84_1();
          bspush_ca_scan(v51, v52);
          OUTLINED_FUNCTION_30_4();
          goto LABEL_37;
        case 17:
          v45 = OUTLINED_FUNCTION_71_1();
          bspush_ca_scan(v45, v46);
          OUTLINED_FUNCTION_30_4();
          goto LABEL_37;
        case 18:
          v53 = OUTLINED_FUNCTION_70_1();
          bspush_ca_scan(v53, v54);
          OUTLINED_FUNCTION_30_4();
          goto LABEL_37;
        case 19:
          v37 = OUTLINED_FUNCTION_81_1();
          bspush_ca_scan(v37, v38);
          OUTLINED_FUNCTION_30_4();
          goto LABEL_37;
        case 20:
          OUTLINED_FUNCTION_30_4();
LABEL_37:
          if (!test_string_s())
          {
            goto LABEL_11;
          }

          continue;
        default:
          goto LABEL_3;
      }

      break;
    }
  }

LABEL_3:
  vretproc(v0);
  v10 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_154();
  OUTLINED_FUNCTION_113();
}

uint64_t skip_delimiters()
{
  OUTLINED_FUNCTION_76_1();
  v117 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_10_14(v2, v3, v4, v5, v6, v7, v8, v9, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v116);
  OUTLINED_FUNCTION_57_1();
  OUTLINED_FUNCTION_179(v10, v11);
  if (setjmp(v1) || (OUTLINED_FUNCTION_0_16(), v17 = OUTLINED_FUNCTION_178(v12, v13, v14, v15, v16), v17))
  {
LABEL_3:
    vretproc(v0);
    result = 94;
  }

  else
  {
    OUTLINED_FUNCTION_62_1(v17, &v115);
    v20 = OUTLINED_FUNCTION_66_1();
    push_ptr_init(v20, v21);
    fence_16(v0, 0, &_MergedGlobals_1_0);
    v22 = OUTLINED_FUNCTION_42_1();
    starttest(v22, v23);
    v24 = OUTLINED_FUNCTION_15_12();
    bspush_ca(v24);
    v25 = *(v0 + 5114);
LABEL_6:
    OUTLINED_FUNCTION_88_1();
    if (!v26)
    {
      while (1)
      {
        v41 = *(v0 + 104);
        if (v41)
        {
          v31 = OUTLINED_FUNCTION_65_1(v41);
        }

        else
        {
          v31 = OUTLINED_FUNCTION_133();
        }

        switch(v31)
        {
          case 1:
          case 7:
            goto LABEL_26;
          case 2:
            v53 = OUTLINED_FUNCTION_52_1();
            bspush_ca(v53);
            v54 = *(v0 + 5102);
            goto LABEL_6;
          case 3:
            goto LABEL_8;
          case 4:
            v51 = OUTLINED_FUNCTION_22_8();
            bspush_ca(v51);
            v52 = *(v0 + 5110);
            goto LABEL_6;
          case 5:
            v58 = OUTLINED_FUNCTION_36_2();
            bspush_ca(v58);
            v59 = *(v0 + 5122);
            goto LABEL_6;
          case 6:
            v57 = *(v0 + 5098);
            goto LABEL_6;
          case 8:
            v42 = OUTLINED_FUNCTION_45_1();
            bspush_ca_scan(v42, v43);
            OUTLINED_FUNCTION_4_14();
            if (test_string_s())
            {
              continue;
            }

            break;
          case 9:
            goto LABEL_17;
          case 10:
            v49 = OUTLINED_FUNCTION_35_2();
            bspush_ca_scan(v49, v50);
            goto LABEL_10;
          case 11:
            break;
          case 12:
            v55 = OUTLINED_FUNCTION_32_3();
            bspush_ca_scan(v55, v56);
            goto LABEL_10;
          case 13:
            v60 = OUTLINED_FUNCTION_33_3();
            bspush_ca_scan(v60, v61);
            goto LABEL_10;
          case 14:
            goto LABEL_10;
          case 15:
            v62 = OUTLINED_FUNCTION_59_1();
            savescptr(v62, v63, v64);
            goto LABEL_26;
          case 16:
            goto LABEL_9;
          default:
            goto LABEL_3;
        }

        OUTLINED_FUNCTION_109();
        v44 = OUTLINED_FUNCTION_83_1();
        savescptr(v44, v45, v46);
        do
        {
LABEL_17:
          v47 = OUTLINED_FUNCTION_46_1();
          bspush_ca_scan(v47, v48);
LABEL_9:
          v39 = OUTLINED_FUNCTION_38_2();
          bspush_ca_scan(v39, v40);
LABEL_10:
          OUTLINED_FUNCTION_4_14();
        }

        while (!test_string_s());
      }
    }

LABEL_8:
    v27 = OUTLINED_FUNCTION_27_6();
    starttest(v27, v28);
    v29 = OUTLINED_FUNCTION_14_12();
    v31 = lpta_loadp_setscan_r(v29, v30);
    if (!v31)
    {
      goto LABEL_9;
    }

LABEL_26:
    OUTLINED_FUNCTION_131(v31, v32, v33, v34, v35, v36, v37, v38, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v115, v116);
    result = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t longdash()
{
  OUTLINED_FUNCTION_11_14();
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_14(v3, v4, v5, v6, v7, v8, v9, v10, v65, v70, v75, v80, v85, v90, v95, v100, v105, v110, v115, v120, v125, v130, v135, v140, v145, v150, v155, v160, v165, v170, v175, v180, v185, v189, v192);
  OUTLINED_FUNCTION_26_8(v11, v12, v13, v14, v15, v16, v17, v18, v66, v71, v76, v81, v86, v91, v96, v101, v106, v111, v116, v121, v126, v131, v136, v141, v146, v151, v156, v161, v166, v171, v176, v181, v186, v190, v193, v195, v197, v199, v201, v203);
  if (setjmp(v1))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_0_16();
  if (OUTLINED_FUNCTION_132(v19, v20, v21, v22, v23, v24, v25, v26, v67, v72, v77, v82, v87, v92, v97, v102, v107, v112, v117, v122, v127, v132, v137, v142, v147, v152, v157, v162, v167, v172, v177, v182, v187, v191, v194, v196, v198, v200, v202, v204))
  {
    goto LABEL_3;
  }

  v29 = OUTLINED_FUNCTION_63_1();
  get_parm(v29, v30, v31, -6);
  OUTLINED_FUNCTION_19_9(v32, v33, v34, v35, v36, v37, v38, v39, v68, v73, v78, v83, v88, v93, v98, v103, v108, v113, v118, v123, v128, v133, v138, v143, v148, v153, v158, v163, v168, v173, v178, v183);
  fence_16(v0, 0, &_MergedGlobals_1_0);
  OUTLINED_FUNCTION_103();
  v40 = OUTLINED_FUNCTION_55_1();
  v42 = lpta_loadp_setscan_r(v40, v41);
  if (v42)
  {
LABEL_20:
    OUTLINED_FUNCTION_61_1(v42, v43, v44, v45, v46, v47, v48, v49, v69, v74, v79, v84, v89, v94, v99, v104, v109, v114, v119, v124, v129, v134, v139, v144, v149, v154, v159, v164, v169, v174, v179, v184, v188);
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_15_12();
  bspush_ca_scan_boa();
  OUTLINED_FUNCTION_80_1();
  OUTLINED_FUNCTION_116();
  v54 = !testFldeq(v50, v51, v52, v53) && !advance_tok(v0);
  v55 = v54;
  while (2)
  {
    v56 = *(v0 + 104);
    if (v56)
    {
      OUTLINED_FUNCTION_65_1(v56);
      v58 = v57;
    }

    else
    {
      vback(v0, v55);
      v58 = 0;
    }

    OUTLINED_FUNCTION_152();
    if (!(!v61 & v60))
    {
      switch(v59)
      {
        case 1:
          bspop_boa(v0);
          OUTLINED_FUNCTION_54_1();
          bspush_ca_boa();
          *(v0 + 136) = 1;
          OUTLINED_FUNCTION_12_14();
          v62 = lpta_tstctxtl();
          v55 = v58;
          if (!v62)
          {
            v63 = OUTLINED_FUNCTION_135();
            setscan_l(v63);
            if (v64)
            {
              v55 = v58;
            }

            else
            {
              v55 = 1;
            }
          }

          continue;
        case 2:
          bspop_boa(v0);
          *(v0 + 2614) = *(v0 + 2662);
          OUTLINED_FUNCTION_66_1();
          skip_delimiters();
          break;
        case 3:
          break;
        default:
          goto LABEL_20;
      }

      OUTLINED_FUNCTION_66_1();
      v42 = build_phrase_final_structure();
      goto LABEL_20;
    }

    break;
  }

LABEL_3:
  vretproc(v0);
  v27 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_105();
}

uint64_t shortdash()
{
  OUTLINED_FUNCTION_11_14();
  v153 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_10_14(v2, v3, v4, v5, v6, v7, v8, v9, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151);
  OUTLINED_FUNCTION_57_1();
  OUTLINED_FUNCTION_161(v10, v11);
  if (!setjmp(v1))
  {
    OUTLINED_FUNCTION_119();
    if (!OUTLINED_FUNCTION_160(v12, v13, v14, v15, v16))
    {
      v19 = OUTLINED_FUNCTION_56_1();
      OUTLINED_FUNCTION_127(v19, v20);
      OUTLINED_FUNCTION_21_8();
      v21 = OUTLINED_FUNCTION_66_1();
      push_ptr_init(v21, v22);
      v23 = 0;
      v24 = OUTLINED_FUNCTION_73_1();
      fence_16(v24, v25, v26);
      v27 = OUTLINED_FUNCTION_139();
      starttest(v27, v28);
      v29 = OUTLINED_FUNCTION_55_1();
      if (!lpta_loadp_setscan_r(v29, v30))
      {
        v68 = OUTLINED_FUNCTION_3_15();
        if (testFldeq(v68, v69, v70, v71) || advance_tok(v0))
        {
          v31 = 0;
        }

        else
        {
          v74 = OUTLINED_FUNCTION_110();
          starttest(v74, v75);
          OUTLINED_FUNCTION_52_1();
          bspush_ca_boa();
          v76 = OUTLINED_FUNCTION_56_1();
          v31 = lpta_loadp_setscan_l(v76, v77) == 0;
        }

        goto LABEL_31;
      }

      while (2)
      {
        v31 = v23;
        v32 = OUTLINED_FUNCTION_22_8();
        starttest(v32, v33);
        v34 = OUTLINED_FUNCTION_14_12();
        if (lpta_loadp_setscan_r(v34, v35))
        {
LABEL_6:
          OUTLINED_FUNCTION_8_14();
          if (!in_quotes())
          {
LABEL_67:
            OUTLINED_FUNCTION_8_14();
            single_chars();
            goto LABEL_68;
          }

LABEL_7:
          lpta_loadpn(v0, v0 + 1400);
          v36 = OUTLINED_FUNCTION_56_1();
          rpta_loadpn(v36, v37);
          OUTLINED_FUNCTION_94_0();
          rpta_ctxtl();
          if (!compare_ptas(v0) && !testeq(v0))
          {
            goto LABEL_68;
          }

LABEL_9:
          v38 = OUTLINED_FUNCTION_35_2();
          starttest(v38, v39);
          v40 = OUTLINED_FUNCTION_7_14();
          v42 = lpta_loadp_setscan_l(v40, v41);
          v43 = v31;
          if (!v42)
          {
LABEL_51:
            v104 = OUTLINED_FUNCTION_83_1();
            savescptr(v104, v105, v106);
            OUTLINED_FUNCTION_4_14();
            if (test_string_s())
            {
              goto LABEL_31;
            }

            v107 = OUTLINED_FUNCTION_31_4();
            if (lpta_loadp_setscan_r(v107, v108))
            {
              goto LABEL_31;
            }

            if (advance_tok(v0))
            {
              goto LABEL_31;
            }

            OUTLINED_FUNCTION_98_0();
            v109 = OUTLINED_FUNCTION_12_14();
            if (test_ptr(v109))
            {
              goto LABEL_31;
            }

            v110 = OUTLINED_FUNCTION_33_3();
            bspush_ca_scan(v110, v111);
            OUTLINED_FUNCTION_4_14();
            if (test_string_s())
            {
              goto LABEL_31;
            }

LABEL_56:
            *(v0 + 2614) = *(v0 + 2662);
            OUTLINED_FUNCTION_172();
LABEL_68:
            OUTLINED_FUNCTION_95_0(v152);
            goto LABEL_3;
          }

LABEL_10:
          v31 = v43;
          v44 = OUTLINED_FUNCTION_41_1();
          starttest(v44, v45);
          v46 = OUTLINED_FUNCTION_14_12();
          if (lpta_loadp_setscan_r(v46, v47))
          {
LABEL_11:
            OUTLINED_FUNCTION_79_1();
            if (v48)
            {
              v49 = OUTLINED_FUNCTION_14_12();
              if (!lpta_loadp_setscan_r(v49, v50))
              {
                OUTLINED_FUNCTION_9_14();
                if (!test_string_s())
                {
                  goto LABEL_68;
                }
              }
            }

LABEL_15:
            v51 = OUTLINED_FUNCTION_52_1();
            starttest(v51, v52);
            v53 = OUTLINED_FUNCTION_14_12();
            v55 = lpta_loadp_setscan_r(v53, v54);
            v56 = v31;
            if (v55)
            {
LABEL_16:
              v31 = v56;
              v57 = OUTLINED_FUNCTION_52_1();
              starttest(v57, v58);
              v59 = OUTLINED_FUNCTION_14_12();
              if (!lpta_loadp_setscan_r(v59, v60))
              {
                v61 = OUTLINED_FUNCTION_52_1();
                bspush_ca_scan(v61, v62);
                OUTLINED_FUNCTION_4_14();
                v63 = test_string_s();
                v64 = v31;
                if (!v63)
                {
LABEL_64:
                  v31 = v64;
                  OUTLINED_FUNCTION_4_14();
                  if (!test_string_s())
                  {
                    goto LABEL_68;
                  }
                }

LABEL_31:
                v78 = v31;
LABEL_32:
                v79 = *(v0 + 104);
                if (v79)
                {
                  v80 = OUTLINED_FUNCTION_60_1(v79);
                }

                else
                {
                  v80 = vback(v0, v78);
                  v31 = 0;
                }

                v81 = v31;
                switch(v80)
                {
                  case 1:
                    v23 = v31;
                    continue;
                  case 2:
                  case 4:
                  case 8:
                  case 10:
                  case 20:
                    goto LABEL_68;
                  case 3:
                    bspop_boa(v0);
                    *(v0 + 2822) = *(v0 + 2838);
                    goto LABEL_67;
                  case 5:
                    goto LABEL_6;
                  case 6:
                    bspush_nboa(v0);
                    v82 = OUTLINED_FUNCTION_3_15();
                    v86 = testFldeq(v82, v83, v84, v85);
                    v78 = v31;
                    if (!v86)
                    {
                      v87 = advance_tok(v0);
                      v78 = v31;
                      if (!v87)
                      {
                        goto LABEL_67;
                      }
                    }

                    goto LABEL_32;
                  case 7:
                    goto LABEL_20;
                  case 9:
                    goto LABEL_7;
                  case 11:
                    goto LABEL_9;
                  case 12:
                    v43 = v31;
                    goto LABEL_10;
                  case 13:
                    goto LABEL_51;
                  case 14:
                    OUTLINED_FUNCTION_98_0();
                    v98 = *(v0 + 1392);
                    v99 = OUTLINED_FUNCTION_12_14();
                    v100 = test_ptr(v99);
                    v78 = v31;
                    if (!v100)
                    {
                      goto LABEL_56;
                    }

                    goto LABEL_32;
                  case 15:
                    goto LABEL_56;
                  case 16:
                    goto LABEL_11;
                  case 17:
                    bspush_nboa(v0);
                    goto LABEL_46;
                  case 18:
                    goto LABEL_27;
                  case 19:
                    OUTLINED_FUNCTION_98_0();
                    v92 = *(v0 + 1392);
                    v93 = OUTLINED_FUNCTION_12_14();
                    v94 = test_ptr(v93);
                    goto LABEL_49;
                  case 21:
                    goto LABEL_15;
                  case 22:
                    v56 = v31;
                    goto LABEL_16;
                  case 23:
                    goto LABEL_57;
                  case 24:
                    OUTLINED_FUNCTION_98_0();
                    v95 = *(v0 + 1392);
                    v96 = OUTLINED_FUNCTION_12_14();
                    v97 = test_ptr(v96);
                    v81 = v31;
                    v78 = v31;
                    if (!v97)
                    {
                      goto LABEL_60;
                    }

                    goto LABEL_32;
                  case 25:
                    goto LABEL_60;
                  case 26:
LABEL_46:
                    v101 = OUTLINED_FUNCTION_52_1();
                    bspush_ca_scan(v101, v102);
                    v88 = OUTLINED_FUNCTION_1_15();
                    goto LABEL_47;
                  case 27:
                    v65 = v31;
                    goto LABEL_73;
                  case 28:
                    v88 = OUTLINED_FUNCTION_3_15();
LABEL_47:
                    v103 = testFldeq(v88, v89, v90, v91);
                    v78 = v31;
                    if (!v103)
                    {
                      goto LABEL_48;
                    }

                    goto LABEL_32;
                  case 29:
LABEL_48:
                    v94 = advance_tok(v0);
LABEL_49:
                    v78 = v31;
                    if (!v94)
                    {
                      goto LABEL_68;
                    }

                    goto LABEL_32;
                  case 30:
                    goto LABEL_67;
                  case 31:
                    v64 = v31;
                    goto LABEL_64;
                  default:
                    goto LABEL_3;
                }
              }

              goto LABEL_67;
            }

LABEL_57:
            v112 = OUTLINED_FUNCTION_83_1();
            savescptr(v112, v113, v114);
            v115 = OUTLINED_FUNCTION_9_14();
            if (testFldeq(v115, v116, v117, 4))
            {
              goto LABEL_31;
            }

            if (advance_tok(v0))
            {
              goto LABEL_31;
            }

            v118 = OUTLINED_FUNCTION_52_1();
            bspush_ca_scan(v118, v119);
            OUTLINED_FUNCTION_4_14();
            v120 = test_string_s();
            v81 = v31;
            if (v120)
            {
              goto LABEL_31;
            }

LABEL_60:
            v31 = v81;
            v121 = OUTLINED_FUNCTION_31_4();
            if (lpta_loadp_setscan_l(v121, v122))
            {
              goto LABEL_31;
            }

            v65 = v31;
            if (advance_tok(v0))
            {
              goto LABEL_31;
            }

            do
            {
LABEL_73:
              v123 = OUTLINED_FUNCTION_55_1();
              bspush_ca_scan(v123, v124);
              OUTLINED_FUNCTION_4_14();
            }

            while (!test_string_s());
          }

          else
          {
            bspush_boa(v0);
LABEL_27:
            v65 = v31;
            do
            {
              v72 = OUTLINED_FUNCTION_55_1();
              bspush_ca_scan(v72, v73);
              OUTLINED_FUNCTION_4_14();
            }

            while (!test_string_s());
          }
        }

        else
        {
          bspush_boa(v0);
LABEL_20:
          v65 = v31;
          while (1)
          {
            OUTLINED_FUNCTION_4_14();
            if (test_string_s())
            {
              break;
            }

            v66 = OUTLINED_FUNCTION_54_1();
            bspush_ca_scan(v66, v67);
          }
        }

        break;
      }

      v31 = v65;
      goto LABEL_31;
    }
  }

LABEL_3:
  vretproc(v0);
  v17 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_154();
}

void hyphen_between_nums()
{
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_11_14();
  v63 = *MEMORY[0x277D85DE8];
  v57 = 0;
  v58 = 0;
  OUTLINED_FUNCTION_48_1();
  OUTLINED_FUNCTION_58_1();
  bzero(v52, v1);
  OUTLINED_FUNCTION_57_1();
  bzero(v62, v2);
  if (setjmp(v62))
  {
    goto LABEL_4;
  }

  if (ventproc(v0, v52, v61, v60, v59, v62))
  {
    goto LABEL_4;
  }

  v3 = OUTLINED_FUNCTION_72_1();
  get_parm(v3, v4, v5, -6);
  v6 = OUTLINED_FUNCTION_54_1();
  OUTLINED_FUNCTION_126(v6, v7);
  v8 = OUTLINED_FUNCTION_87_1();
  push_ptr_init(v8, v9);
  v10 = OUTLINED_FUNCTION_86_1();
  push_ptr_init(v10, v11);
  fence_16(v0, 0, &_MergedGlobals_1_0);
  v12 = OUTLINED_FUNCTION_110();
  starttest(v12, v13);
  v14 = OUTLINED_FUNCTION_54_1();
  if (lpta_loadp_setscan_r(v14, v15))
  {
LABEL_4:
    vretproc(v0);
  }

  else
  {
    OUTLINED_FUNCTION_153();
    while (2)
    {
      v17 = OUTLINED_FUNCTION_111();
      savescptr(v17, v18, v54);
      OUTLINED_FUNCTION_24_8();
      if (!test_string_s())
      {
LABEL_8:
        v19 = OUTLINED_FUNCTION_106();
        savescptr(v19, v20, v55);
LABEL_10:
        while (1)
        {
          v23 = OUTLINED_FUNCTION_80_1();
          if (OUTLINED_FUNCTION_163(v23, v24) || advance_tok(v0))
          {
            break;
          }

          v21 = OUTLINED_FUNCTION_91_0();
          bspush_ca_scan(v21, v22);
        }
      }

LABEL_12:
      v25 = *(v0 + 104);
      if (v25)
      {
        v26 = OUTLINED_FUNCTION_65_1(v25);
      }

      else
      {
        v26 = OUTLINED_FUNCTION_133();
      }

      switch(v26)
      {
        case 2:
          continue;
        case 3:
          goto LABEL_8;
        case 4:
          v27 = OUTLINED_FUNCTION_52_1();
          savescptr(v27, v28, v53);
          v29 = OUTLINED_FUNCTION_112();
          starttest(v29, v30);
          v31 = OUTLINED_FUNCTION_70_1();
          bspush_ca(v31);
          v32 = *(v0 + 5102);
          goto LABEL_21;
        case 5:
          goto LABEL_10;
        case 6:
          lang_hyphen_between_nums();
          goto LABEL_37;
        case 7:
          v35 = OUTLINED_FUNCTION_64_1();
          bspush_ca(v35);
          v36 = *(v0 + 5110);
          goto LABEL_21;
        case 8:
          goto LABEL_23;
        case 9:
          v38 = OUTLINED_FUNCTION_84_1();
          bspush_ca(v38);
          v39 = *(v0 + 5122);
          goto LABEL_21;
        case 10:
          v33 = OUTLINED_FUNCTION_74_1();
          bspush_ca(v33);
          v34 = *(v0 + 5098);
          goto LABEL_21;
        case 11:
          v37 = *(v0 + 5130);
LABEL_21:
          OUTLINED_FUNCTION_88_1();
          if (!v40)
          {
            goto LABEL_12;
          }

LABEL_23:
          if (*(v0 + 2902) != 4)
          {
            goto LABEL_12;
          }

          v41 = OUTLINED_FUNCTION_141();
          if (lpta_loadp_setscan_r(v41, v42))
          {
            goto LABEL_12;
          }

          v43 = OUTLINED_FUNCTION_80_1();
          if (OUTLINED_FUNCTION_163(v43, v44))
          {
            goto LABEL_12;
          }

          if (advance_tok(v0))
          {
            goto LABEL_12;
          }

          v45 = OUTLINED_FUNCTION_80_1();
          if (OUTLINED_FUNCTION_163(v45, v46))
          {
            goto LABEL_12;
          }

          if (advance_tok(v0))
          {
            goto LABEL_12;
          }

          v47 = OUTLINED_FUNCTION_80_1();
          if (OUTLINED_FUNCTION_163(v47, v48))
          {
            goto LABEL_12;
          }

          if (advance_tok(v0))
          {
            goto LABEL_12;
          }

          v49 = OUTLINED_FUNCTION_80_1();
          if (OUTLINED_FUNCTION_163(v49, v50))
          {
            goto LABEL_12;
          }

          if (advance_tok(v0))
          {
            goto LABEL_12;
          }

          *(v0 + 136) = 1;
          v51 = OUTLINED_FUNCTION_12_14();
          if (test_ptr(v51))
          {
            goto LABEL_12;
          }

          OUTLINED_FUNCTION_156();
          if (end_of_word())
          {
            goto LABEL_12;
          }

          *(v0 + 2790) = *(v0 + 2794);
LABEL_37:
          OUTLINED_FUNCTION_147();
          single_chars();
LABEL_38:
          *(v0 + 2790) = 0;
          OUTLINED_FUNCTION_136();
          OUTLINED_FUNCTION_117();
          insert_l(v0);
          OUTLINED_FUNCTION_137(v56);
          break;
        case 12:
        case 13:
          goto LABEL_37;
        case 14:
          goto LABEL_38;
        default:
          goto LABEL_4;
      }

      break;
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_113();
}

uint64_t slash_before_measure()
{
  OUTLINED_FUNCTION_11_14();
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_14(v3, v4, v5, v6, v7, v8, v9, v10, v47, v51, v55, v59, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v146, v149);
  OUTLINED_FUNCTION_26_8(v11, v12, v13, v14, v15, v16, v17, v18, v48, v52, v56, v60, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144, v147, v150, v152, v154, v156, v158, v160);
  if (setjmp(v1))
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_0_16();
  if (OUTLINED_FUNCTION_132(v19, v20, v21, v22, v23, v24, v25, v26, v49, v53, v57, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, v148, v151, v153, v155, v157, v159, v161))
  {
    goto LABEL_6;
  }

  v27 = OUTLINED_FUNCTION_63_1();
  get_parm(v27, v28, v29, -6);
  OUTLINED_FUNCTION_43_1(v30, v31, v32, v33, v34, v35, v36, v37, v50, v54, v58, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142);
  fence_16(v0, 0, &_MergedGlobals_1_0);
  OUTLINED_FUNCTION_79_1();
  if (!v38 || (v39 = OUTLINED_FUNCTION_50_1(), lpta_rpta_loadp(v39, v40, v41), v42 = OUTLINED_FUNCTION_6_14(), setd_lookup(v42, v43, v44)))
  {
LABEL_6:
    vretproc(v0);
    result = 94;
  }

  else
  {
    *(v0 + 2806) = *(v0 + 2810);
    vretproc(v0);
    result = 0;
  }

  v46 = *MEMORY[0x277D85DE8];
  return result;
}

void adjust_numbers()
{
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_11_14();
  v120 = *MEMORY[0x277D85DE8];
  memset(v115, 0, sizeof(v115));
  v113 = 0u;
  v114 = 0u;
  v112[0] = 0;
  v112[1] = 0;
  OUTLINED_FUNCTION_48_1();
  OUTLINED_FUNCTION_58_1();
  bzero(v109, v1);
  OUTLINED_FUNCTION_57_1();
  bzero(v119, v2);
  if (!setjmp(v119) && !ventproc(v0, v109, v118, v117, v116, v119))
  {
    v4 = OUTLINED_FUNCTION_70_1();
    OUTLINED_FUNCTION_127(v4, v5);
    OUTLINED_FUNCTION_21_8();
    v114 = 0uLL;
    LODWORD(v113) = -65534;
    v6 = OUTLINED_FUNCTION_71_1();
    push_ptr_init(v6, v7);
    v8 = OUTLINED_FUNCTION_107();
    push_ptr_init(v8, v9);
    v10 = OUTLINED_FUNCTION_64_1();
    push_ptr_init(v10, v11);
    v12 = OUTLINED_FUNCTION_86_1();
    push_ptr_init(v12, v13);
    v14 = OUTLINED_FUNCTION_73_1();
    fence_16(v14, v15, v16);
    fence_16(v0, 1, &string_7_1);
    startloop(v0, 1);
    v17 = OUTLINED_FUNCTION_70_1();
    lpta_loadpn(v17, v18);
    OUTLINED_FUNCTION_97_0();
    lpta_mover();
    v19 = OUTLINED_FUNCTION_71_1();
    lpta_storep(v19, v20);
    v21 = OUTLINED_FUNCTION_55_1();
    lpta_loadpn(v21, v22);
    OUTLINED_FUNCTION_97_0();
    lpta_mover();
    v23 = OUTLINED_FUNCTION_64_1();
    lpta_storep(v23, v24);
    v25 = 0;
LABEL_5:
    v26 = v25;
    v27 = OUTLINED_FUNCTION_140();
    v29 = forall_to_test(v27, v28, v110);
    v30 = v26;
    if (!v29)
    {
LABEL_6:
      v26 = v30;
      v31 = OUTLINED_FUNCTION_106();
      bspush_ca(v31);
      v32 = OUTLINED_FUNCTION_140();
      if (!lpta_loadp_setscan_r(v32, v33))
      {
        OUTLINED_FUNCTION_112();
        bspush_ca_scan_boa();
        v34 = OUTLINED_FUNCTION_97_0();
        if (testFldeq(v34, v35, 10, 0))
        {
          v26 = v26;
        }

        else
        {
          v26 = 1;
        }
      }
    }

LABEL_10:
    v36 = v26;
    while (2)
    {
      v37 = *(v0 + 104);
      if (v37)
      {
        *(v0 + 104) = 0;
        v38 = v37;
        v26 = v36;
      }

      else
      {
        v38 = vback(v0, v36);
        v26 = 0;
      }

      v39 = v38 - 1;
      v25 = v26;
      switch(v39)
      {
        case 1:
          goto LABEL_21;
        case 2:
          v40 = OUTLINED_FUNCTION_176();
          v43 = forto_adv_upto_r(v40, v41, v42, 18, 2, v112);
          v36 = v26;
          if (v43)
          {
            continue;
          }

          goto LABEL_3;
        case 3:
          bspop_boa(v0);
          v44 = advance_tok(v0);
          v36 = v26;
          if (v44)
          {
            continue;
          }

          v45 = OUTLINED_FUNCTION_81_1();
          v47 = savetok(v45, v46);
          v36 = v26;
          if (v47)
          {
            continue;
          }

          goto LABEL_25;
        case 4:
          v48 = OUTLINED_FUNCTION_22_8();
          savescptr(v48, v49, v111);
LABEL_21:
          v50 = OUTLINED_FUNCTION_91_0();
          starttest(v50, v51);
          v52 = OUTLINED_FUNCTION_64_1();
          bspush_ca(v52);
          v53 = *(v0 + 5122);
          goto LABEL_23;
        case 5:
          do
          {
LABEL_25:
            v54 = OUTLINED_FUNCTION_74_1();
            bspush_ca_scan(v54, v55);
            v56 = OUTLINED_FUNCTION_97_0();
            if (npush_fld(v56, v57, 10))
            {
              break;
            }

            WORD1(v113) = 10;
            v58 = OUTLINED_FUNCTION_81_1();
            npush_v(v58, v59, v60, v61, v62, v63, v64, v65);
            if (if_testeq(v0, v66, v67, v68, v69, v70, v71, v72))
            {
              break;
            }
          }

          while (!advance_tok(v0));
          goto LABEL_10;
        case 6:
        case 10:
        case 11:
        case 13:
        case 14:
          goto LABEL_37;
        case 7:
          v53 = *(v0 + 5098);
LABEL_23:
          v36 = v26;
          if (v53 == *(v0 + 5090))
          {
            goto LABEL_29;
          }

          continue;
        case 8:
LABEL_29:
          WORD1(v113) = 10;
          v73 = OUTLINED_FUNCTION_81_1();
          npush_v(v73, v74, v75, v76, v77, v78, v79, v80);
          v81 = OUTLINED_FUNCTION_51_1();
          ncompare_s(v81, v82);
          if (testeq(v0))
          {
            goto LABEL_30;
          }

          OUTLINED_FUNCTION_140();
          assign_gender_to_number();
          goto LABEL_37;
        case 9:
LABEL_30:
          WORD1(v113) = 10;
          v83 = OUTLINED_FUNCTION_81_1();
          npush_v(v83, v84, v85, v86, v87, v88, v89, v90);
          v91 = OUTLINED_FUNCTION_97_0();
          ncompare_s(v91, v92);
          if (testeq(v0))
          {
            goto LABEL_31;
          }

          OUTLINED_FUNCTION_141();
          adjust_num_in_ordinal();
          goto LABEL_37;
        case 12:
LABEL_31:
          OUTLINED_FUNCTION_79_1();
          if (v93)
          {
            WORD1(v113) = 10;
            v94 = OUTLINED_FUNCTION_81_1();
            npush_v(v94, v95, v96, v97, v98, v99, v100, v101);
            ncompare_s(v0, 3u);
            if (!testeq(v0))
            {
              OUTLINED_FUNCTION_140();
              assign_gend_to_roman_num();
            }
          }

LABEL_37:
          v102 = OUTLINED_FUNCTION_141();
          lpta_loadpn(v102, v103);
          rpta_loadpn(v0, v115);
          if (compare_ptas(v0) || testeq(v0))
          {
            goto LABEL_39;
          }

          goto LABEL_3;
        case 15:
LABEL_39:
          v104 = OUTLINED_FUNCTION_141();
          lpta_loadpn(v104, v105);
          OUTLINED_FUNCTION_97_0();
          lpta_mover();
          v106 = OUTLINED_FUNCTION_156();
          lpta_storep(v106, v107);
          v108 = OUTLINED_FUNCTION_176();
          forall_cont_from(v108);
          v25 = v26;
          goto LABEL_5;
        case 16:
          goto LABEL_5;
        case 17:
          v30 = v26;
          goto LABEL_6;
        default:
          goto LABEL_3;
      }
    }
  }

LABEL_3:
  vretproc(v0);
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_113();
}

void potential_sent_end()
{
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_76_1();
  v84 = *MEMORY[0x277D85DE8];
  v71 = 0;
  v72 = 0;
  v69 = 0;
  v70 = 0;
  OUTLINED_FUNCTION_58_1();
  bzero(v68, v1);
  OUTLINED_FUNCTION_57_1();
  bzero(v83, v2);
  v3 = setjmp(v83);
  if (v3 || OUTLINED_FUNCTION_34_3(v3, v68, v4, v5, v6, v7, v8, v9, v65, v66, v67, v68[0], v68[1], v68[2], v68[3], v68[4], v68[5], v68[6], v68[7], v68[8], v68[9], v68[10], v68[11], v68[12], v68[13], v68[14], v68[15], v68[16], v68[17], v68[18], v68[19], v68[20], v68[21], v68[22], v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83[0]))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_21_8();
  v11 = OUTLINED_FUNCTION_86_1();
  push_ptr_init(v11, v12);
  v13 = 0;
  v14 = OUTLINED_FUNCTION_73_1();
  fence_16(v14, v15, v16);
  OUTLINED_FUNCTION_103();
  v17 = OUTLINED_FUNCTION_55_1();
  v19 = 0;
  if (lpta_loadp_setscan_l(v17, v18))
  {
LABEL_6:
    v20 = OUTLINED_FUNCTION_52_1();
    starttest(v20, v21);
    v22 = OUTLINED_FUNCTION_52_1();
    bspush_ca(v22);
    v23 = v19;
    if (*(v0 + 5102) == *(v0 + 5090))
    {
LABEL_7:
      v19 = v23;
      v24 = OUTLINED_FUNCTION_38_2();
      starttest(v24, v25);
      OUTLINED_FUNCTION_37_2();
      bspush_ca_boa();
      v26 = OUTLINED_FUNCTION_53_1();
      v28 = lpta_loadp_setscan_l(v26, v27);
      v29 = v19;
      if (!v28)
      {
LABEL_8:
        v30 = v29;
        do
        {
          v31 = OUTLINED_FUNCTION_71_1();
          bspush_ca_scan(v31, v32);
          v33 = OUTLINED_FUNCTION_55_1();
          bspush_ca_scan(v33, v34);
          OUTLINED_FUNCTION_4_14();
        }

        while (!test_string_s());
        v19 = v30;
      }
    }

    while (1)
    {
LABEL_15:
      v40 = *(v0 + 104);
      if (v40)
      {
        v41 = OUTLINED_FUNCTION_65_1(v40);
      }

      else
      {
        v42 = OUTLINED_FUNCTION_80_1();
        v41 = vback(v42, v43);
        v19 = 0;
      }

      v44 = v41 - 1;
      v23 = v19;
      v29 = v19;
      switch(v44)
      {
        case 0:
          goto LABEL_6;
        case 1:
          v13 = v19;
          goto LABEL_12;
        case 2:
        case 7:
          *(v0 + 2488) = v72;
          vretproc(v0);
          goto LABEL_4;
        case 3:
          v45 = OUTLINED_FUNCTION_111();
          bspush_ca(v45);
          v46 = *(v0 + 5110);
          goto LABEL_29;
        case 4:
          goto LABEL_7;
        case 5:
          v59 = OUTLINED_FUNCTION_106();
          bspush_ca(v59);
          v46 = *(v0 + 5122);
          goto LABEL_29;
        case 6:
          v46 = *(v0 + 5098);
LABEL_29:
          v23 = v19;
          if (v46 == *(v0 + 5090))
          {
            goto LABEL_7;
          }

          continue;
        case 8:
          bspop_boa(v0);
          goto LABEL_3;
        case 9:
          v53 = OUTLINED_FUNCTION_54_1();
          bspush_ca_scan(v53, v54);
          OUTLINED_FUNCTION_4_14();
          goto LABEL_36;
        case 10:
          v51 = OUTLINED_FUNCTION_81_1();
          bspush_ca_scan(v51, v52);
          OUTLINED_FUNCTION_4_14();
          goto LABEL_33;
        case 11:
        case 16:
          goto LABEL_8;
        case 12:
          v55 = OUTLINED_FUNCTION_74_1();
          bspush_ca_scan(v55, v56);
          OUTLINED_FUNCTION_4_14();
          goto LABEL_33;
        case 13:
          v57 = OUTLINED_FUNCTION_70_1();
          bspush_ca_scan(v57, v58);
          OUTLINED_FUNCTION_4_14();
          goto LABEL_33;
        case 14:
          v60 = OUTLINED_FUNCTION_64_1();
          bspush_ca_scan(v60, v61);
          OUTLINED_FUNCTION_4_14();
          goto LABEL_33;
        case 15:
          OUTLINED_FUNCTION_4_14();
LABEL_33:
          v62 = test_string_s();
          v29 = v19;
          if (!v62)
          {
            goto LABEL_8;
          }

          continue;
        case 17:
          v49 = OUTLINED_FUNCTION_84_1();
          bspush_ca_scan(v49, v50);
          OUTLINED_FUNCTION_4_14();
          goto LABEL_36;
        case 18:
          goto LABEL_37;
        case 19:
          v47 = OUTLINED_FUNCTION_91_0();
          bspush_ca_scan(v47, v48);
          OUTLINED_FUNCTION_4_14();
          goto LABEL_36;
        case 20:
          v63 = OUTLINED_FUNCTION_71_1();
          bspush_ca_scan(v63, v64);
          OUTLINED_FUNCTION_4_14();
          goto LABEL_36;
        case 21:
          OUTLINED_FUNCTION_4_14();
LABEL_36:
          if (!test_string_s())
          {
LABEL_37:
            v19 = 1;
          }

          break;
        default:
          goto LABEL_3;
      }
    }
  }

LABEL_12:
  v19 = v13;
  OUTLINED_FUNCTION_75_1();
  v35 = OUTLINED_FUNCTION_138();
  savescptr(v35, v36, v37);
  OUTLINED_FUNCTION_4_14();
  if (test_string_s())
  {
    goto LABEL_15;
  }

  v38 = OUTLINED_FUNCTION_53_1();
  if (lpta_loadp_setscan_r(v38, v39))
  {
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_51_1();
  if (test_string_s())
  {
    goto LABEL_15;
  }

LABEL_3:
  vretproc(v0);
LABEL_4:
  v10 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_113();
}

void end_of_token()
{
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_76_1();
  v61 = *MEMORY[0x277D85DE8];
  v48 = 0;
  v49 = 0;
  OUTLINED_FUNCTION_58_1();
  bzero(v47, v1);
  OUTLINED_FUNCTION_57_1();
  bzero(v60, v2);
  v3 = setjmp(v60);
  if (!v3)
  {
    v10 = OUTLINED_FUNCTION_44_1(v3, v47, v4, v5, v6, v7, v8, v9, v44, v45, v46, v47[0], v47[1], v47[2], v47[3], v47[4], v47[5], v47[6], v47[7], v47[8], v47[9], v47[10], v47[11], v47[12], v47[13], v47[14], v47[15], v47[16], v47[17], v47[18], v47[19], v47[20], v47[21], v47[22], v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60[0]);
    if (!v10)
    {
      OUTLINED_FUNCTION_62_1(v10, &v48);
      fence_16(v0, 0, &_MergedGlobals_1_0);
      OUTLINED_FUNCTION_180();
      OUTLINED_FUNCTION_150();
      if (compare_ptas(v0) || testneq(v0) || (OUTLINED_FUNCTION_180(), v12 = OUTLINED_FUNCTION_86_1(), rpta_loadpn(v12, v13), compare_ptas(v0)) || testneq(v0))
      {
        OUTLINED_FUNCTION_165();
        while (2)
        {
          v14 = OUTLINED_FUNCTION_111();
          starttest(v14, v15);
          v16 = OUTLINED_FUNCTION_156();
          if (!lpta_loadp_setscan_r(v16, v17))
          {
            do
            {
LABEL_10:
              v18 = OUTLINED_FUNCTION_139();
              bspush_ca_scan(v18, v19);
              v20 = OUTLINED_FUNCTION_106();
              bspush_ca_scan(v20, v21);
              v22 = OUTLINED_FUNCTION_9_14();
            }

            while (!testFldeq(v22, v23, v24, 4) && !advance_tok(v0));
LABEL_12:
            v25 = *(v0 + 104);
            if (v25)
            {
              v26 = OUTLINED_FUNCTION_65_1(v25);
            }

            else
            {
              v26 = OUTLINED_FUNCTION_133();
            }

            switch(v26)
            {
              case 1:
                continue;
              case 4:
                v27 = OUTLINED_FUNCTION_53_1();
                if (test_synch(v27, v28, v29, &unk_2806C4680))
                {
                  goto LABEL_12;
                }

                goto LABEL_3;
              case 5:
                v40 = OUTLINED_FUNCTION_74_1();
                bspush_ca_scan(v40, v41);
                OUTLINED_FUNCTION_4_14();
                goto LABEL_26;
              case 6:
              case 14:
                goto LABEL_10;
              case 7:
                v34 = OUTLINED_FUNCTION_54_1();
                bspush_ca_scan(v34, v35);
                OUTLINED_FUNCTION_4_14();
                goto LABEL_26;
              case 8:
                v42 = OUTLINED_FUNCTION_55_1();
                bspush_ca_scan(v42, v43);
                OUTLINED_FUNCTION_4_14();
                goto LABEL_26;
              case 9:
                v32 = OUTLINED_FUNCTION_84_1();
                bspush_ca_scan(v32, v33);
                OUTLINED_FUNCTION_4_14();
                goto LABEL_26;
              case 10:
                v36 = OUTLINED_FUNCTION_91_0();
                bspush_ca_scan(v36, v37);
                OUTLINED_FUNCTION_4_14();
                goto LABEL_26;
              case 11:
                v38 = OUTLINED_FUNCTION_71_1();
                bspush_ca_scan(v38, v39);
                OUTLINED_FUNCTION_4_14();
                goto LABEL_26;
              case 12:
                v30 = OUTLINED_FUNCTION_64_1();
                bspush_ca_scan(v30, v31);
                OUTLINED_FUNCTION_4_14();
                goto LABEL_26;
              case 13:
                OUTLINED_FUNCTION_4_14();
LABEL_26:
                if (!test_string_s())
                {
                  goto LABEL_10;
                }

                goto LABEL_12;
              default:
                goto LABEL_3;
            }
          }

          break;
        }
      }
    }
  }

LABEL_3:
  vretproc(v0);
  v11 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_113();
}

uint64_t create_sentence()
{
  OUTLINED_FUNCTION_76_1();
  v105 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_10_14(v2, v3, v4, v5, v6, v7, v8, v9, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v104);
  OUTLINED_FUNCTION_57_1();
  OUTLINED_FUNCTION_179(v10, v11);
  if (setjmp(v1) || (OUTLINED_FUNCTION_0_16(), OUTLINED_FUNCTION_178(v12, v13, v14, v15, v16)))
  {
LABEL_3:
    vretproc(v0);
    result = 94;
  }

  else
  {
    v19 = &v103;
    OUTLINED_FUNCTION_21_8();
    v20 = OUTLINED_FUNCTION_66_1();
    push_ptr_init(v20, v21);
    v22 = 0;
    v23 = OUTLINED_FUNCTION_73_1();
    fence_16(v23, v24, v25);
    v26 = OUTLINED_FUNCTION_42_1();
    starttest(v26, v27);
    v28 = OUTLINED_FUNCTION_55_1();
    if (lpta_loadp_setscan_l(v28, v29))
    {
LABEL_7:
      v31 = OUTLINED_FUNCTION_67_1();
      lpta_loadpn(v31, v32);
      OUTLINED_FUNCTION_94_0();
      lpta_ctxtl();
      OUTLINED_FUNCTION_94_0();
      lpta_movel();
      v33 = OUTLINED_FUNCTION_66_1();
      lpta_storep(v33, v34);
      v35 = v22;
LABEL_8:
      v36 = v35;
      *(v0 + 2538) = *(v0 + 2570);
      v37 = OUTLINED_FUNCTION_22_8();
      starttest(v37, v38);
      OUTLINED_FUNCTION_36_2();
      bspush_ca_boa();
      OUTLINED_FUNCTION_59_1();
      build_phrases();
      if (v39)
      {
        v30 = v36;
      }

      else
      {
        v30 = 1;
      }
    }

    else
    {
      OUTLINED_FUNCTION_15_12();
      bspush_ca_scan_boa();
      v30 = !advanc(v0);
    }

    v40 = *(v0 + 104);
    if (v40)
    {
      v41 = OUTLINED_FUNCTION_60_1(v40);
    }

    else
    {
      v41 = vback(v0, v30);
      LODWORD(v19) = 0;
    }

    v22 = v19;
    v35 = v19;
    switch(v41)
    {
      case 1:
        goto LABEL_7;
      case 2:
        v42 = bspop_boa(v0);
        OUTLINED_FUNCTION_102(v42, v43, v44, v45, v46, v47, v48, v49, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v103, v104);
        v50 = OUTLINED_FUNCTION_129();
        insert_l(v50);
        v51 = OUTLINED_FUNCTION_71_1();
        lpta_storep(v51, v52);
        OUTLINED_FUNCTION_59_1();
        project_word_boundary_sync();
        v35 = v19;
        goto LABEL_8;
      case 3:
      case 4:
        goto LABEL_8;
      case 5:
        break;
      case 6:
        bspop_boa(v0);
        OUTLINED_FUNCTION_59_1();
        delimit_sentence();
        break;
      default:
        goto LABEL_3;
    }

    vretproc(v0);
    result = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t project_word_boundary_sync()
{
  OUTLINED_FUNCTION_11_14();
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_14(v3, v4, v5, v6, v7, v8, v9, v10, v97, v107, v117, v127, v137, v147, v157, v167, v177, v187, v197, v207, v217, v227, v237, v247, v257, v267, v277, v287, v297, v307, v317, v327, v337, v346, v355);
  OUTLINED_FUNCTION_26_8(v11, v12, v13, v14, v15, v16, v17, v18, v98, v108, v118, v128, v138, v148, v158, v168, v178, v188, v198, v208, v218, v228, v238, v248, v258, v268, v278, v288, v298, v308, v318, v328, v338, v347, v356, v364, v366, v368, v370, v372);
  if (!setjmp(v1))
  {
    OUTLINED_FUNCTION_0_16();
    if (!OUTLINED_FUNCTION_132(v19, v20, v21, v22, v23, v24, v25, v26, v99, v109, v119, v129, v139, v149, v159, v169, v179, v189, v199, v209, v219, v229, v239, v249, v259, v269, v279, v289, v299, v309, v319, v329, v339, v348, v357, v365, v367, v369, v371, v373))
    {
      v29 = OUTLINED_FUNCTION_63_1();
      get_parm(v29, v30, v31, -6);
      OUTLINED_FUNCTION_43_1(v32, v33, v34, v35, v36, v37, v38, v39, v100, v110, v120, v130, v140, v150, v160, v170, v180, v190, v200, v210, v220, v230, v240, v250, v260, v270, v280, v290, v300, v310, v320, v330);
      v40 = OUTLINED_FUNCTION_73_1();
      v43 = fence_16(v40, v41, v42);
      v51 = OUTLINED_FUNCTION_2_15(v43, v44, v45, v46, v47, v48, v49, v50, v101, v111, v121, v131, v141, v151, v161, v171, v181, v191, v201, v211, v221, v231, v241, v251, v261, v271, v281, v291, v301, v311, v321, v331, v340, v349, v358);
      v52 = proj_l(v51);
      v60 = OUTLINED_FUNCTION_2_15(v52, v53, v54, v55, v56, v57, v58, v59, v102, v112, v122, v132, v142, v152, v162, v172, v182, v192, v202, v212, v222, v232, v242, v252, v262, v272, v282, v292, v302, v312, v322, v332, v341, v350, v359);
      v61 = proj_l(v60);
      v69 = OUTLINED_FUNCTION_2_15(v61, v62, v63, v64, v65, v66, v67, v68, v103, v113, v123, v133, v143, v153, v163, v173, v183, v193, v203, v213, v223, v233, v243, v253, v263, v273, v283, v293, v303, v313, v323, v333, v342, v351, v360);
      v70 = proj_l(v69);
      v78 = OUTLINED_FUNCTION_2_15(v70, v71, v72, v73, v74, v75, v76, v77, v104, v114, v124, v134, v144, v154, v164, v174, v184, v194, v204, v214, v224, v234, v244, v254, v264, v274, v284, v294, v304, v314, v324, v334, v343, v352, v361);
      v79 = proj_l(v78);
      v87 = OUTLINED_FUNCTION_2_15(v79, v80, v81, v82, v83, v84, v85, v86, v105, v115, v125, v135, v145, v155, v165, v175, v185, v195, v205, v215, v225, v235, v245, v255, v265, v275, v285, v295, v305, v315, v325, v335, v344, v353, v362);
      v88 = proj_l(v87);
      v96 = OUTLINED_FUNCTION_2_15(v88, v89, v90, v91, v92, v93, v94, v95, v106, v116, v126, v136, v146, v156, v166, v176, v186, v196, v206, v216, v226, v236, v246, v256, v266, v276, v286, v296, v306, v316, v326, v336, v345, v354, v363);
      proj_l(v96);
    }
  }

  vretproc(v0);
  v27 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_105();
}

void divide_char_count_token()
{
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_76_1();
  v66 = *MEMORY[0x277D85DE8];
  v53 = 0;
  v54 = 0;
  v51 = 0;
  v52 = 0;
  v49 = 0;
  v50 = 0;
  v48 = 0;
  OUTLINED_FUNCTION_58_1();
  bzero(v47, v1);
  OUTLINED_FUNCTION_57_1();
  bzero(v65, v2);
  v3 = setjmp(v65);
  if (!v3 && !OUTLINED_FUNCTION_89_1(v3, v47, v4, v5, v6, v7, v8, v9, v46, v47[0], v47[1], v47[2], v47[3], v47[4], v47[5], v47[6], v47[7], v47[8], v47[9], v47[10], v47[11], v47[12], v47[13], v47[14], v47[15], v47[16], v47[17], v47[18], v47[19], v47[20], v47[21], v47[22], v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65[0]))
  {
    OUTLINED_FUNCTION_21_8();
    WORD2(v52) = -4;
    LOWORD(v52) = -4;
    v10 = OUTLINED_FUNCTION_71_1();
    push_ptr_init(v10, v11);
    v12 = OUTLINED_FUNCTION_54_1();
    push_ptr_init(v12, v13);
    v14 = OUTLINED_FUNCTION_73_1();
    fence_16(v14, v15, v16);
    HIWORD(v52) = 0;
    WORD1(v52) = 0;
    v17 = OUTLINED_FUNCTION_55_1();
    lpta_loadpn(v17, v18);
    OUTLINED_FUNCTION_73_1();
    lpta_ctxtl();
    v19 = OUTLINED_FUNCTION_71_1();
    lpta_storep(v19, v20);
    v21 = OUTLINED_FUNCTION_55_1();
    lpta_loadpn(v21, v22);
    OUTLINED_FUNCTION_73_1();
    lpta_ctxtr();
    v23 = OUTLINED_FUNCTION_54_1();
    lpta_storep(v23, v24);
    v25 = OUTLINED_FUNCTION_71_1();
    if (!lpta_loadp_setscan_r(v25, v26) && !advance_tok(v0))
    {
      savetok(v0, (v0 + 1904));
    }

    OUTLINED_FUNCTION_143();
LABEL_7:
    v27 = OUTLINED_FUNCTION_55_1();
    starttest(v27, v28);
    OUTLINED_FUNCTION_54_1();
    count_chars();
    while (1)
    {
      v29 = OUTLINED_FUNCTION_81_1();
      c_assvar(v29, v30);
      HIWORD(v52) = *(v0 + 1920) - WORD1(v52);
      v31 = OUTLINED_FUNCTION_74_1();
      lpta_rpta_loadp(v31, v32, &v48);
      v33 = OUTLINED_FUNCTION_130();
      if (!delete_2pt(v33, v34))
      {
        v35 = OUTLINED_FUNCTION_74_1();
        lpta_rpta_loadp(v35, v36, &v53);
        OUTLINED_FUNCTION_130();
        insert_2ptv();
        if (!v37)
        {
          v38 = OUTLINED_FUNCTION_54_1();
          lpta_rpta_loadp(v38, v39, &v48);
          OUTLINED_FUNCTION_130();
          insert_2ptv();
          if (!v40)
          {
            break;
          }
        }
      }

      v41 = *(v0 + 104);
      if (v41)
      {
        v42 = OUTLINED_FUNCTION_65_1(v41);
      }

      else
      {
        v43 = OUTLINED_FUNCTION_130();
        v42 = vback(v43, v44);
      }

      if (v42 != 2)
      {
        if (v42 == 1)
        {
          goto LABEL_7;
        }

        break;
      }
    }
  }

  vretproc(v0);
  v45 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_113();
}

uint64_t insert_non_phrase_pause(uint64_t a1, uint64_t a2, __int16 *a3)
{
  OUTLINED_FUNCTION_76_1();
  v44 = *MEMORY[0x277D85DE8];
  v38 = 0;
  v39 = 0;
  v37 = 0;
  v35 = 0;
  v36 = 0;
  v33 = 0;
  v34 = 0;
  v31 = 0u;
  v32 = 0u;
  OUTLINED_FUNCTION_58_1();
  bzero(v30, v5);
  OUTLINED_FUNCTION_57_1();
  bzero(v43, v6);
  if (!setjmp(v43))
  {
    v7 = ventproc(v3, v30, v42, v41, v40, v43);
    if (!v7)
    {
      OUTLINED_FUNCTION_62_1(v7, &v38);
      v10 = OUTLINED_FUNCTION_71_1();
      get_parm(v10, v11, a3, -4);
      v12 = OUTLINED_FUNCTION_54_1();
      push_ptr_init(v12, v13);
      v14 = OUTLINED_FUNCTION_70_1();
      push_ptr_init(v14, v15);
      *&v32 = 0;
      *(&v32 + 6) = 0;
      LODWORD(v31) = -65532;
      v16 = OUTLINED_FUNCTION_73_1();
      fence_16(v16, v17, v18);
      *(v3 + 168) = 1;
      *(v3 + 144) = v39;
      *(v3 + 128) = 0;
      v19 = OUTLINED_FUNCTION_47_1();
      insert_l(v19);
      v20 = OUTLINED_FUNCTION_54_1();
      lpta_storep(v20, v21);
      *(v3 + 168) = 1;
      *(v3 + 144) = v36;
      *(v3 + 128) = 0;
      v22 = OUTLINED_FUNCTION_47_1();
      insert_l(v22);
      v23 = OUTLINED_FUNCTION_70_1();
      lpta_storep(v23, v24);
      v25 = OUTLINED_FUNCTION_70_1();
      lpta_rpta_loadp(v25, v26, &v35);
      OUTLINED_FUNCTION_54_1();
      settvar_s();
      WORD1(v31) = 11;
      v27 = OUTLINED_FUNCTION_54_1();
      copyvar(v27, v28, &v37);
      insert_2ptv();
      if (!v29)
      {
        vretproc(v3);
        result = 0;
        goto LABEL_4;
      }

      if (*(v3 + 104))
      {
        *(v3 + 104) = 0;
      }

      else
      {
        OUTLINED_FUNCTION_133();
      }
    }
  }

  vretproc(v3);
  result = 94;
LABEL_4:
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void find_next_token()
{
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_146();
  v84 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_16_12(v2, v3, v4, v5, v6, v7, v8, v9, v41, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72);
  OUTLINED_FUNCTION_57_1();
  bzero(v83, v10);
  v11 = setjmp(v83);
  if (!v11 && !OUTLINED_FUNCTION_34_3(v11, &v44, v12, v13, v14, v15, v16, v17, v42, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83[0]))
  {
    v18 = OUTLINED_FUNCTION_70_1();
    OUTLINED_FUNCTION_159(v18, v19);
    v20 = OUTLINED_FUNCTION_72_1();
    get_parm(v20, v21, v22, -6);
    OUTLINED_FUNCTION_62_1(v23, &v67);
    fence_16(v0, 0, &_MergedGlobals_1_0);
    OUTLINED_FUNCTION_103();
    v24 = OUTLINED_FUNCTION_70_1();
    if (!lpta_loadp_setscan_r(v24, v25))
    {
      bspush_boa(v0);
      v27 = 0;
      OUTLINED_FUNCTION_168();
      OUTLINED_FUNCTION_153();
LABEL_7:
      while (1)
      {
        OUTLINED_FUNCTION_4_14();
        if (test_string_s())
        {
          break;
        }

        v28 = OUTLINED_FUNCTION_64_1();
        bspush_ca_scan(v28, v29);
      }

      v30 = v27;
      while (1)
      {
        v31 = v0[13];
        if (v31)
        {
          v32 = OUTLINED_FUNCTION_65_1(v31);
          v27 = v33;
        }

        else
        {
          v32 = vback(v0, v30);
          v27 = 0;
        }

        switch(v32)
        {
          case 2:
            bspush_nboa(v0);
            goto LABEL_15;
          case 3:
            goto LABEL_7;
          case 4:
LABEL_15:
            v34 = OUTLINED_FUNCTION_81_1();
            savescptr(v34, v35, &v69);
            goto LABEL_16;
          case 5:
            bspop_boa(v0);
            v38 = advance_tok(v0);
            v30 = v27;
            if (v38)
            {
              continue;
            }

            v39 = OUTLINED_FUNCTION_112();
            bspush_ca_scan(v39, v40);
            goto LABEL_16;
          case 6:
            OUTLINED_FUNCTION_162(6, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67);
            *(v1 + 8) = v70;
            OUTLINED_FUNCTION_137(v68);
            goto LABEL_5;
          case 7:
LABEL_16:
            OUTLINED_FUNCTION_84_1();
            bspush_ca_scan_boa();
            v36 = OUTLINED_FUNCTION_51_1();
            if (testFldeq(v36, v37, 0, 72))
            {
              v30 = v27;
            }

            else
            {
              v30 = 1;
            }

            break;
          default:
            goto LABEL_4;
        }
      }
    }
  }

LABEL_4:
  vretproc(v0);
LABEL_5:
  v26 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_113();
}

void find_next_word()
{
  OUTLINED_FUNCTION_114();
  v66 = v2;
  OUTLINED_FUNCTION_146();
  v86 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_78_1();
  OUTLINED_FUNCTION_58_1();
  bzero(v68, v3);
  OUTLINED_FUNCTION_57_1();
  bzero(v85, v4);
  v5 = setjmp(v85);
  if (!v5 && !OUTLINED_FUNCTION_92_0(v5, v68, v6, v7, v8, v9, v10, v11, v60, v61, v62, v63, v64, v65, v66, v68[0], v68[1], v68[2], v68[3], v68[4], v68[5], v68[6], v68[7], v68[8], v68[9], v68[10], v68[11], v68[12], v68[13], v68[14], v68[15], v68[16], v68[17], v68[18], v68[19], v68[20], v68[21], v68[22], v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85[0]))
  {
    v12 = OUTLINED_FUNCTION_70_1();
    OUTLINED_FUNCTION_159(v12, v13);
    v14 = OUTLINED_FUNCTION_72_1();
    get_parm(v14, v15, v16, -6);
    v17 = OUTLINED_FUNCTION_107();
    get_parm(v17, v18, v67, -6);
    fence_16(v0, 0, &_MergedGlobals_1_0);
    OUTLINED_FUNCTION_103();
    v19 = OUTLINED_FUNCTION_70_1();
    if (!lpta_loadp_setscan_r(v19, v20))
    {
      bspush_boa(v0);
      v22 = 0;
      OUTLINED_FUNCTION_145();
      while (2)
      {
        while (1)
        {
          OUTLINED_FUNCTION_4_14();
          if (test_string_s())
          {
            break;
          }

          v23 = OUTLINED_FUNCTION_70_1();
          bspush_ca_scan(v23, v24);
        }

LABEL_9:
        v25 = v22;
LABEL_10:
        v26 = v0[13];
        if (v26)
        {
          v27 = OUTLINED_FUNCTION_65_1(v26);
          v22 = v28;
        }

        else
        {
          v27 = vback(v0, v25);
          v22 = 0;
        }

        switch(v27)
        {
          case 2:
            bspush_nboa(v0);
            goto LABEL_15;
          case 3:
            continue;
          case 4:
LABEL_15:
            v29 = OUTLINED_FUNCTION_64_1();
            savescptr(v29, v30, &v71);
            v31 = OUTLINED_FUNCTION_1_15();
            v35 = testFldeq(v31, v32, v33, v34);
            v25 = v22;
            if (v35)
            {
              goto LABEL_10;
            }

            OUTLINED_FUNCTION_157();
LABEL_25:
            bspush_ca_scan_boa();
            v52 = OUTLINED_FUNCTION_51_1();
            v46 = testFldeq(v52, v53, 0, 73);
            goto LABEL_26;
          case 5:
            bspop_boa(v0);
            v36 = advance_tok(v0);
            v25 = v22;
            if (v36)
            {
              goto LABEL_10;
            }

            v37 = OUTLINED_FUNCTION_134();
            starttest(v37, v38);
            v39 = OUTLINED_FUNCTION_140();
            if (!lpta_loadp_setscan_r(v39, v40))
            {
              goto LABEL_29;
            }

            goto LABEL_22;
          case 6:
            goto LABEL_22;
          case 7:
            v47 = OUTLINED_FUNCTION_1_15();
            v51 = testFldeq(v47, v48, v49, v50);
            v25 = v22;
            if (v51)
            {
              goto LABEL_10;
            }

            OUTLINED_FUNCTION_111();
            goto LABEL_25;
          case 8:
            do
            {
LABEL_29:
              v54 = OUTLINED_FUNCTION_91_0();
              bspush_ca_scan(v54, v55);
              v56 = OUTLINED_FUNCTION_1_15();
            }

            while (!testFldeq(v56, v57, v58, v59) && !advance_tok(v0));
            goto LABEL_9;
          case 9:
            bspop_boa(v0);
            v41 = advance_tok(v0);
            v25 = v22;
            if (v41)
            {
              goto LABEL_10;
            }

            goto LABEL_21;
          case 10:
LABEL_21:
            v42 = OUTLINED_FUNCTION_106();
            savescptr(v42, v43, &v69);
LABEL_22:
            v44 = OUTLINED_FUNCTION_84_1();
            starttest(v44, v45);
            OUTLINED_FUNCTION_74_1();
            bspush_ca_boa();
            OUTLINED_FUNCTION_81_1();
            v46 = end_of_word();
LABEL_26:
            if (v46)
            {
              v25 = v22;
            }

            else
            {
              v25 = 1;
            }

            goto LABEL_10;
          case 11:
          case 13:
            *(v1 + 8) = v72;
            *(v67 + 8) = v70;
            vretproc(v0);
            goto LABEL_5;
          case 12:
            bspop_boa(v0);
            goto LABEL_4;
          default:
            goto LABEL_4;
        }
      }
    }
  }

LABEL_4:
  vretproc(v0);
LABEL_5:
  v21 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_113();
}

void find_previous_word()
{
  OUTLINED_FUNCTION_114();
  v3 = v2;
  OUTLINED_FUNCTION_11_14();
  v99 = *MEMORY[0x277D85DE8];
  v96 = 0;
  v97 = 0;
  OUTLINED_FUNCTION_10_14(v4, v5, v6, v7, v8, v9, v10, v11, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v95);
  OUTLINED_FUNCTION_57_1();
  bzero(v98, v12);
  if (setjmp(v98))
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_119();
  if (ventproc(v0, v13, v14, v15, v16, v98))
  {
    goto LABEL_6;
  }

  v17 = OUTLINED_FUNCTION_56_1();
  OUTLINED_FUNCTION_127(v17, v18);
  OUTLINED_FUNCTION_62_1(v19, &v94);
  v20 = OUTLINED_FUNCTION_66_1();
  OUTLINED_FUNCTION_159(v20, v21);
  fence_16(v0, 0, &_MergedGlobals_1_0);
  OUTLINED_FUNCTION_103();
  *(v0 + 136) = v3;
  OUTLINED_FUNCTION_12_14();
  if (lpta_tstctxtl() || (OUTLINED_FUNCTION_94_0(), lpta_tstmovel()) || (v22 = OUTLINED_FUNCTION_94_0(), setscan_l(v22), v23))
  {
LABEL_6:
    vretproc(v0);
  }

  else
  {
    OUTLINED_FUNCTION_15_12();
    bspush_ca_scan_boa();
    OUTLINED_FUNCTION_145();
    v25 = 0;
    while (2)
    {
      v26 = OUTLINED_FUNCTION_70_1();
      if (!test_synch(v26, v27, 1u, &string_7_1))
      {
        v25 = 1;
      }

LABEL_11:
      v28 = *(v0 + 104);
      if (v28)
      {
        v29 = OUTLINED_FUNCTION_65_1(v28);
        v25 = v30;
      }

      else
      {
        v29 = vback(v0, v25);
        v25 = 0;
      }

      switch(v29)
      {
        case 2:
          bspop_boa(v0);
          goto LABEL_16;
        case 3:
          continue;
        case 4:
LABEL_16:
          v31 = OUTLINED_FUNCTION_64_1();
          savescptr(v31, v32, &v94);
          if (!advance_tok(v0))
          {
            goto LABEL_17;
          }

          goto LABEL_11;
        case 5:
LABEL_17:
          OUTLINED_FUNCTION_93_0();
          v33 = OUTLINED_FUNCTION_90_1();
          savescptr(v33, v34, v35);
          *(v1 + 8) = v97;
          OUTLINED_FUNCTION_131(v36, v37, v38, v39, v40, v41, v42, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v94, v95);
          break;
        default:
          goto LABEL_6;
      }

      break;
    }
  }

  v24 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_113();
}

void find_prev_word_optional_comma()
{
  OUTLINED_FUNCTION_114();
  v3 = v2;
  OUTLINED_FUNCTION_11_14();
  v85 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_16_12(v4, v5, v6, v7, v8, v9, v10, v11, v43, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73);
  OUTLINED_FUNCTION_57_1();
  bzero(v84, v12);
  v13 = setjmp(v84);
  if (v13)
  {
    goto LABEL_20;
  }

  if (OUTLINED_FUNCTION_34_3(v13, &v45, v14, v15, v16, v17, v18, v19, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84[0]))
  {
    goto LABEL_20;
  }

  v20 = OUTLINED_FUNCTION_72_1();
  get_parm(v20, v21, v22, -6);
  OUTLINED_FUNCTION_62_1(v23, &v70);
  v24 = OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_159(v24, v25);
  fence_16(v0, 0, &_MergedGlobals_1_0);
  OUTLINED_FUNCTION_103();
  *(v0 + 136) = v3;
  OUTLINED_FUNCTION_12_14();
  if (lpta_tstctxtl())
  {
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_94_0();
  if (lpta_tstmovel())
  {
    goto LABEL_20;
  }

  v26 = OUTLINED_FUNCTION_94_0();
  setscan_l(v26);
  if (v27)
  {
    goto LABEL_20;
  }

  v28 = 0;
  OUTLINED_FUNCTION_175();
  do
  {
    v29 = OUTLINED_FUNCTION_54_1();
    savescptr(v29, v30, &v70);
    v31 = advance_tok(v0);
    v32 = v28;
    v33 = v28;
    if (!v31)
    {
      goto LABEL_8;
    }

LABEL_13:
    if (*(v0 + 104))
    {
      v40 = OUTLINED_FUNCTION_144(v31, v33);
    }

    else
    {
      v41 = vback(v0, v33);
      v40 = 0;
    }

    v28 = v40;
  }

  while (v41 == 2);
  v32 = v40;
  if (v41 == 3)
  {
LABEL_8:
    v34 = OUTLINED_FUNCTION_64_1();
    savescptr(v34, v35, &v72);
    v36 = OUTLINED_FUNCTION_74_1();
    starttest_l(v36, v37);
    OUTLINED_FUNCTION_84_1();
    bspush_ca_boa();
    v38 = OUTLINED_FUNCTION_70_1();
    v31 = lpta_loadp_setscan_l(v38, v39);
    if (v31)
    {
      v33 = v32;
    }

    else
    {
      v31 = advance_tok(v0);
      if (v31)
      {
        v33 = v32;
      }

      else
      {
        v33 = 1;
      }
    }

    goto LABEL_13;
  }

  if (v41 != 4)
  {
LABEL_20:
    vretproc(v0);
    goto LABEL_21;
  }

  bspop_boa(v0);
  *(v1 + 8) = v73;
  OUTLINED_FUNCTION_137(v71);
LABEL_21:
  v42 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_113();
}

uint64_t precedes_number()
{
  OUTLINED_FUNCTION_11_14();
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_14(v3, v4, v5, v6, v7, v8, v9, v10, v62, v67, v72, v77, v82, v87, v92, v97, v102, v107, v112, v117, v122, v127, v132, v137, v142, v147, v152, v157, v162, v167, v172, v177, v182, v186, v189);
  OUTLINED_FUNCTION_26_8(v11, v12, v13, v14, v15, v16, v17, v18, v63, v68, v73, v78, v83, v88, v93, v98, v103, v108, v113, v118, v123, v128, v133, v138, v143, v148, v153, v158, v163, v168, v173, v178, v183, v187, v190, v192, v194, v196, v198, v200);
  if (!setjmp(v1))
  {
    OUTLINED_FUNCTION_0_16();
    if (!OUTLINED_FUNCTION_132(v19, v20, v21, v22, v23, v24, v25, v26, v64, v69, v74, v79, v84, v89, v94, v99, v104, v109, v114, v119, v124, v129, v134, v139, v144, v149, v154, v159, v164, v169, v174, v179, v184, v188, v191, v193, v195, v197, v199, v201))
    {
      v27 = OUTLINED_FUNCTION_13_14();
      get_parm(v27, v28, v29, -6);
      OUTLINED_FUNCTION_43_1(v30, v31, v32, v33, v34, v35, v36, v37, v65, v70, v75, v80, v85, v90, v95, v100, v105, v110, v115, v120, v125, v130, v135, v140, v145, v150, v155, v160, v165, v170, v175, v180);
      fence_16(v0, 0, &_MergedGlobals_1_0);
      v38 = OUTLINED_FUNCTION_110();
      starttest(v38, v39);
      v40 = OUTLINED_FUNCTION_54_1();
      if (!lpta_loadp_setscan_r(v40, v41))
      {
        OUTLINED_FUNCTION_15_12();
        bspush_ca_scan_boa();
        OUTLINED_FUNCTION_4_14();
        if (!test_string_s())
        {
LABEL_14:
          bspush_nboa(v0);
          bspush_boa(v0);
LABEL_15:
          while (1)
          {
            OUTLINED_FUNCTION_4_14();
            if (test_string_s())
            {
              break;
            }

            v60 = OUTLINED_FUNCTION_54_1();
            bspush_ca_scan(v60, v61);
          }
        }

        while (2)
        {
          v44 = *(v0 + 104);
          if (v44)
          {
            v45 = OUTLINED_FUNCTION_65_1(v44);
          }

          else
          {
            v45 = OUTLINED_FUNCTION_133();
          }

          switch(v45)
          {
            case 2:
              goto LABEL_14;
            case 3:
              bspush_nboa(v0);
              goto LABEL_11;
            case 4:
              goto LABEL_15;
            case 5:
LABEL_11:
              OUTLINED_FUNCTION_93_0();
              v53 = OUTLINED_FUNCTION_83_1();
              savescptr(v53, v54, v55);
              v56 = OUTLINED_FUNCTION_3_15();
              if (!testFldeq(v56, v57, v58, v59))
              {
                v45 = advance_tok(v0);
                if (!v45)
                {
                  goto LABEL_13;
                }
              }

              continue;
            case 6:
LABEL_13:
              OUTLINED_FUNCTION_61_1(v45, v46, v47, v48, v49, v50, v51, v52, v66, v71, v76, v81, v86, v91, v96, v101, v106, v111, v116, v121, v126, v131, v136, v141, v146, v151, v156, v161, v166, v171, v176, v181, v185);
              break;
            default:
              goto LABEL_4;
          }

          break;
        }
      }
    }
  }

LABEL_4:
  vretproc(v0);
  v42 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_105();
}

uint64_t abbr_before_num()
{
  OUTLINED_FUNCTION_76_1();
  v165 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_20_8(v2, v3, v4, v5, v6, v7, v8, v9, v56, v60, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144, v148, v152);
  OUTLINED_FUNCTION_57_1();
  OUTLINED_FUNCTION_158(v10, v11, v12, v13, v14, v15, v16, v17, v57, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, v149, v153, v155, v157, v159, v161, v163);
  v18 = setjmp(v1);
  if (v18)
  {
    goto LABEL_3;
  }

  v26 = OUTLINED_FUNCTION_25_8(v18, v19, v20, v21, v22, v23, v24, v25, v58, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142, v146, v150, v154, *v156, v156[4], *v158, *&v158[4], v158[6], v160, SWORD2(v160), SBYTE6(v160), SHIBYTE(v160), v162, v164);
  if (v26)
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_19_9(v26, v27, v28, v29, v30, v31, v32, v33, v59, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v147, v151);
  v36 = OUTLINED_FUNCTION_73_1();
  fence_16(v36, v37, v38);
  OUTLINED_FUNCTION_103();
  OUTLINED_FUNCTION_15_12();
  bspush_ca_boa();
  v39 = OUTLINED_FUNCTION_55_1();
  if (lpta_loadp_setscan_r(v39, v40))
  {
    v41 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_4_14();
    if (test_string_s())
    {
      v41 = 0;
    }

    else
    {
      bspush_boa(v0);
      v41 = 0;
LABEL_13:
      while (1)
      {
        OUTLINED_FUNCTION_4_14();
        if (test_string_s())
        {
          break;
        }

        v42 = OUTLINED_FUNCTION_55_1();
        bspush_ca_scan(v42, v43);
      }
    }
  }

  v44 = v41;
  while (2)
  {
    v45 = v0[13];
    if (v45)
    {
      OUTLINED_FUNCTION_65_1(v45);
      v47 = v46;
    }

    else
    {
      vback(v0, v44);
      v47 = 0;
    }

    OUTLINED_FUNCTION_152();
    if (!v50 & v49)
    {
LABEL_3:
      vretproc(v0);
      result = 94;
    }

    else
    {
      switch(v48)
      {
        case 1:
          bspop_boa(v0);
          goto LABEL_3;
        case 2:
          bspush_nboa(v0);
          v51 = OUTLINED_FUNCTION_3_15();
          v55 = testFldeq(v51, v52, v53, v54);
          v44 = v47;
          if (!v55)
          {
            if (advance_tok(v0))
            {
              v44 = v47;
            }

            else
            {
              v44 = 1;
            }
          }

          continue;
        case 3:
          v41 = v47;
          goto LABEL_13;
        default:
          vretproc(v0);
          result = 0;
          break;
      }
    }

    break;
  }

  v35 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t spell_out_token()
{
  OUTLINED_FUNCTION_11_14();
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_14(v3, v4, v5, v6, v7, v8, v9, v10, v51, v56, v61, v66, v71, v76, v81, v86, v91, v96, v101, v106, v111, v116, v121, v126, v131, v136, v141, v146, v151, v156, v161, v166, v171, v175, v178);
  OUTLINED_FUNCTION_26_8(v11, v12, v13, v14, v15, v16, v17, v18, v52, v57, v62, v67, v72, v77, v82, v87, v92, v97, v102, v107, v112, v117, v122, v127, v132, v137, v142, v147, v152, v157, v162, v167, v172, v176, v179, v181, v183, v185, v187, v189);
  if (!setjmp(v1))
  {
    OUTLINED_FUNCTION_0_16();
    if (!OUTLINED_FUNCTION_132(v19, v20, v21, v22, v23, v24, v25, v26, v53, v58, v63, v68, v73, v78, v83, v88, v93, v98, v103, v108, v113, v118, v123, v128, v133, v138, v143, v148, v153, v158, v163, v168, v173, v177, v180, v182, v184, v186, v188, v190))
    {
      v29 = OUTLINED_FUNCTION_13_14();
      get_parm(v29, v30, v31, -6);
      OUTLINED_FUNCTION_19_9(v32, v33, v34, v35, v36, v37, v38, v39, v54, v59, v64, v69, v74, v79, v84, v89, v94, v99, v104, v109, v114, v119, v124, v129, v134, v139, v144, v149, v154, v159, v164, v169);
      v40 = OUTLINED_FUNCTION_73_1();
      fence_16(v40, v41, v42);
      *(v0 + 2742) = *(v0 + 2754);
      OUTLINED_FUNCTION_13_14();
      single_chars_token();
      OUTLINED_FUNCTION_167();
      OUTLINED_FUNCTION_61_1(v43, v44, v45, v46, v47, v48, v49, v50, v55, v60, v65, v70, v75, v80, v85, v90, v95, v100, v105, v110, v115, v120, v125, v130, v135, v140, v145, v150, v155, v160, v165, v170, v174);
    }
  }

  vretproc(v0);
  v27 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_105();
}

void single_chars_to_punct()
{
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_11_14();
  v83 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_18_10(v2, v3, v4, v5, v6, v7, v8, v9, v48, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77);
  OUTLINED_FUNCTION_57_1();
  OUTLINED_FUNCTION_177(v10, v11, v12, v13, v14, v15, v16, v17, v49, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82);
  v18 = setjmp(v1);
  if (v18 || OUTLINED_FUNCTION_44_1(v18, &v51, v19, v20, v21, v22, v23, v24, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, SBYTE4(v78), v79, SWORD2(v79), SBYTE6(v79), v80, SWORD2(v80), SBYTE6(v80), SHIBYTE(v80), v81, v82))
  {
LABEL_3:
    vretproc(v0);
    goto LABEL_4;
  }

  v26 = OUTLINED_FUNCTION_13_14();
  get_parm(v26, v27, v28, -6);
  OUTLINED_FUNCTION_62_1(v29, &v74);
  fence_16(v0, 0, &_MergedGlobals_1_0);
  v30 = OUTLINED_FUNCTION_110();
  starttest(v30, v31);
  v32 = OUTLINED_FUNCTION_54_1();
  if (!lpta_loadp_setscan_r(v32, v33))
  {
    while (2)
    {
      v34 = OUTLINED_FUNCTION_70_1();
      bspush_ca_scan(v34, v35);
LABEL_9:
      v36 = OUTLINED_FUNCTION_142();
      savescptr(v36, v37, &v74);
      v38 = OUTLINED_FUNCTION_74_1();
      bspush_ca_scan(v38, v39);
      v40 = OUTLINED_FUNCTION_80_1();
      if (!testFldeq(v40, v41, 3, 4) && !advance_tok(v0))
      {
LABEL_11:
        v42 = OUTLINED_FUNCTION_84_1();
        bspush_ca_scan(v42, v43);
        OUTLINED_FUNCTION_24_8();
        if (!test_string_s())
        {
          break;
        }
      }

LABEL_12:
      v44 = *(v0 + 104);
      if (v44)
      {
        v45 = OUTLINED_FUNCTION_65_1(v44);
      }

      else
      {
        v45 = OUTLINED_FUNCTION_133();
      }

      switch(v45)
      {
        case 1:
          break;
        case 2:
          continue;
        case 3:
          if (!advance_tok(v0))
          {
            continue;
          }

          goto LABEL_12;
        case 4:
          goto LABEL_9;
        case 5:
          goto LABEL_11;
        case 6:
          *(v0 + 136) = 1;
          v46 = *(v0 + 1392);
          v47 = OUTLINED_FUNCTION_12_14();
          if (!test_ptr(v47))
          {
            goto LABEL_6;
          }

          goto LABEL_12;
        case 7:
          goto LABEL_7;
        default:
          goto LABEL_3;
      }

      break;
    }
  }

LABEL_6:
  *(v0 + 2742) = *(v0 + 2754);
  OUTLINED_FUNCTION_124();
  single_chars();
LABEL_7:
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_137(v75);
LABEL_4:
  v25 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_113();
}

void single_chars_count_inp()
{
  OUTLINED_FUNCTION_114();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v59 = *MEMORY[0x277D85DE8];
  v46 = 0;
  v47 = 0;
  v44 = 0;
  v45 = 0;
  v42 = 0;
  v43 = 0;
  v41 = 0;
  OUTLINED_FUNCTION_58_1();
  bzero(v40, v10);
  OUTLINED_FUNCTION_57_1();
  bzero(v58, v11);
  v12 = setjmp(v58);
  if (!v12 && !OUTLINED_FUNCTION_89_1(v12, v40, v13, v14, v15, v16, v17, v18, v39, v40[0], v40[1], v40[2], v40[3], v40[4], v40[5], v40[6], v40[7], v40[8], v40[9], v40[10], v40[11], v40[12], v40[13], v40[14], v40[15], v40[16], v40[17], v40[18], v40[19], v40[20], v40[21], v40[22], v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58[0]))
  {
    v20 = OUTLINED_FUNCTION_54_1();
    get_parm(v20, v21, v7, -6);
    v22 = OUTLINED_FUNCTION_64_1();
    get_parm(v22, v23, v5, -6);
    v24 = OUTLINED_FUNCTION_70_1();
    get_parm(v24, v25, v3, -4);
    v26 = OUTLINED_FUNCTION_81_1();
    get_parm(v26, v27, v1, -4);
    v28 = OUTLINED_FUNCTION_74_1();
    push_ptr_init(v28, v29);
    v30 = OUTLINED_FUNCTION_73_1();
    fence_16(v30, v31, v32);
    HIWORD(v43) = *(v9 + 2414);
    count_cumulative_chars();
    v33 = OUTLINED_FUNCTION_64_1();
    lpta_loadpn(v33, v34);
    OUTLINED_FUNCTION_73_1();
    lpta_ctxtr();
    v35 = OUTLINED_FUNCTION_74_1();
    lpta_storep(v35, v36);
    OUTLINED_FUNCTION_54_1();
    count_chars();
    v37 = OUTLINED_FUNCTION_74_1();
    count_unnormalized_inp(v37, v38, &v43);
    v3[1] = HIWORD(v43);
    v1[1] = WORD1(v43);
  }

  vretproc(v9);
  v19 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_173();
  OUTLINED_FUNCTION_113();
}

uint64_t ambig_abbr()
{
  OUTLINED_FUNCTION_76_1();
  v156 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_20_8(v2, v3, v4, v5, v6, v7, v8, v9, v47, v51, v55, v59, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143);
  OUTLINED_FUNCTION_57_1();
  OUTLINED_FUNCTION_158(v10, v11, v12, v13, v14, v15, v16, v17, v48, v52, v56, v60, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144, v146, v148, v150, v152, v154);
  v18 = setjmp(v1);
  if (!v18)
  {
    v26 = OUTLINED_FUNCTION_25_8(v18, v19, v20, v21, v22, v23, v24, v25, v49, v53, v57, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, *v147, v147[4], *v149, *&v149[4], v149[6], v151, SWORD2(v151), SBYTE6(v151), SHIBYTE(v151), v153, v155);
    if (!v26)
    {
      OUTLINED_FUNCTION_19_9(v26, v27, v28, v29, v30, v31, v32, v33, v50, v54, v58, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142);
      v34 = 0;
      v37 = OUTLINED_FUNCTION_73_1();
      fence_16(v37, v38, v39);
      OUTLINED_FUNCTION_103();
      v40 = OUTLINED_FUNCTION_55_1();
      if (lpta_loadp_setscan_r(v40, v41))
      {
        goto LABEL_4;
      }

      OUTLINED_FUNCTION_4_14();
      if (test_string_s())
      {
        goto LABEL_7;
      }

      bspush_ca_scan_boa();
      OUTLINED_FUNCTION_51_1();
      test_string_s();
      OUTLINED_FUNCTION_149();
      while (1)
      {
        v43 = v0[13];
        if (v43)
        {
          v44 = OUTLINED_FUNCTION_65_1(v43);
          v46 = v45;
        }

        else
        {
          v44 = vback(v0, v42);
          v46 = 0;
        }

        if (v44 != 2)
        {
          break;
        }

        bspop_boa(v0);
        OUTLINED_FUNCTION_71_1();
        bspush_ca_boa();
        OUTLINED_FUNCTION_55_1();
        if (end_of_sentence())
        {
          v42 = v46;
        }

        else
        {
          v42 = 1;
        }
      }

      if (v44 == 1)
      {
LABEL_7:
        v34 = 0;
        goto LABEL_4;
      }

      if (v44 == 3)
      {
        bspop_boa(v0);
      }
    }
  }

  v34 = 94;
LABEL_4:
  vretproc(v0);
  v35 = *MEMORY[0x277D85DE8];
  return v34;
}

void delete_comma_sync()
{
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_76_1();
  v130 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_10_14(v2, v3, v4, v5, v6, v7, v8, v9, v48, v51, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117, v120, v123, v124);
  OUTLINED_FUNCTION_57_1();
  OUTLINED_FUNCTION_164(v10, v11, v12, v13, v14, v15, v16, v17, v49, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118, v121, v123, v124, v125, v126, v127, v128, v129);
  if (!setjmp(v1))
  {
    OUTLINED_FUNCTION_0_16();
    v26 = OUTLINED_FUNCTION_132(v18, v19, v20, v21, v22, v23, v24, v25, v50, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v119, v122, v123, v124, v125, v126, v127, v128, v129);
    if (!v26)
    {
      OUTLINED_FUNCTION_62_1(v26, &v123);
      v27 = OUTLINED_FUNCTION_66_1();
      push_ptr_init(v27, v28);
      fence_16(v0, 0, &_MergedGlobals_1_0);
      if (*(v0 + 2282) != *(v0 + 3238))
      {
        OUTLINED_FUNCTION_168();
        v30 = 0;
        while (2)
        {
          v31 = OUTLINED_FUNCTION_71_1();
          lpta_loadpn(v31, v32);
          OUTLINED_FUNCTION_80_1();
          lpta_ctxtl();
          v33 = OUTLINED_FUNCTION_54_1();
          lpta_storep(v33, v34);
          v35 = OUTLINED_FUNCTION_110();
          starttest(v35, v36);
          v37 = OUTLINED_FUNCTION_54_1();
          if (!lpta_loadp_setscan_l(v37, v38))
          {
            OUTLINED_FUNCTION_64_1();
            bspush_ca_scan_boa();
            OUTLINED_FUNCTION_81_1();
            bspush_ca_scan_boa();
            if (advanc(v0))
            {
              v39 = v30;
            }

            else
            {
              v39 = 1;
            }

LABEL_10:
            v40 = *(v0 + 104);
            if (v40)
            {
              v41 = OUTLINED_FUNCTION_65_1(v40);
              v30 = v42;
            }

            else
            {
              v41 = vback(v0, v39);
              v30 = 0;
            }

            switch(v41)
            {
              case 1:
                continue;
              case 3:
                bspop_boa(v0);
                OUTLINED_FUNCTION_98_0();
                OUTLINED_FUNCTION_12_14();
                delete_1pt();
                goto LABEL_4;
              case 4:
                bspop_boa(v0);
                v43 = OUTLINED_FUNCTION_139();
                bspush_ca_scan(v43, v44);
                v45 = advance_tok(v0);
                goto LABEL_16;
              case 5:
                *(v0 + 136) = 1;
                v46 = *(v0 + 1408);
                v47 = OUTLINED_FUNCTION_12_14();
                v45 = test_ptr(v47);
LABEL_16:
                v39 = v30;
                if (!v45)
                {
                  goto LABEL_17;
                }

                goto LABEL_10;
              case 6:
LABEL_17:
                v39 = 1;
                goto LABEL_10;
              default:
                goto LABEL_4;
            }
          }

          break;
        }
      }
    }
  }

LABEL_4:
  vretproc(v0);
  v29 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_113();
}

uint64_t is_hyphenated_word()
{
  OUTLINED_FUNCTION_76_1();
  v152 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_20_8(v2, v3, v4, v5, v6, v7, v8, v9, v43, v47, v51, v55, v59, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139);
  OUTLINED_FUNCTION_57_1();
  OUTLINED_FUNCTION_158(v10, v11, v12, v13, v14, v15, v16, v17, v44, v48, v52, v56, v60, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v142, v144, v146, v148, v150);
  v18 = setjmp(v1);
  if (v18)
  {
    goto LABEL_10;
  }

  v26 = OUTLINED_FUNCTION_25_8(v18, v19, v20, v21, v22, v23, v24, v25, v45, v49, v53, v57, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, *v143, v143[4], *v145, *&v145[4], v145[6], v147, SWORD2(v147), SBYTE6(v147), SHIBYTE(v147), v149, v151);
  if (v26)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_19_9(v26, v27, v28, v29, v30, v31, v32, v33, v46, v50, v54, v58, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138);
  fence_16(v0, 0, &_MergedGlobals_1_0);
  v34 = OUTLINED_FUNCTION_100();
  starttest(v34, v35);
  v36 = OUTLINED_FUNCTION_55_1();
  if (lpta_loadp_setscan_r(v36, v37))
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_4_14();
  if (test_string_s())
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_15_12();
  bspush_ca_scan_boa();
  OUTLINED_FUNCTION_4_14();
  v38 = test_string_s();
  v39 = v0[13];
  v40 = v39 ? OUTLINED_FUNCTION_65_1(v39) : vback(v0, v38 == 0);
  if (v40 != 2)
  {
LABEL_10:
    vretproc(v0);
    result = 94;
  }

  else
  {
    bspop_boa(v0);
    vretproc(v0);
    result = 0;
  }

  v42 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t followed_by_hyphen()
{
  OUTLINED_FUNCTION_11_14();
  v168 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_10_14(v2, v3, v4, v5, v6, v7, v8, v9, v53, v57, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, v149, v152, v155);
  OUTLINED_FUNCTION_26_8(v10, v11, v12, v13, v14, v15, v16, v17, v54, v58, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142, v146, v150, v153, v156, v158, v160, v162, v164, v166);
  if (setjmp(v1))
  {
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_0_16();
  if (OUTLINED_FUNCTION_132(v18, v19, v20, v21, v22, v23, v24, v25, v55, v59, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v147, v151, v154, v157, v159, v161, v163, v165, v167))
  {
    goto LABEL_16;
  }

  v26 = OUTLINED_FUNCTION_63_1();
  get_parm(v26, v27, v28, -6);
  OUTLINED_FUNCTION_19_9(v29, v30, v31, v32, v33, v34, v35, v36, v56, v60, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144, v148);
  fence_16(v0, 0, &_MergedGlobals_1_0);
  v37 = OUTLINED_FUNCTION_100();
  starttest(v37, v38);
  v39 = OUTLINED_FUNCTION_55_1();
  if (lpta_loadp_setscan_r(v39, v40))
  {
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_4_14();
  if (test_string_s())
  {
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_15_12();
  bspush_ca_scan_boa();
  OUTLINED_FUNCTION_24_8();
  test_string_s();
  OUTLINED_FUNCTION_149();
  while (1)
  {
    v42 = v0[13];
    if (v42)
    {
      v43 = OUTLINED_FUNCTION_65_1(v42);
      v45 = v44;
    }

    else
    {
      v43 = vback(v0, v41);
      v45 = 0;
    }

    if (v43 != 2)
    {
      break;
    }

    bspop_boa(v0);
    v46 = OUTLINED_FUNCTION_110();
    starttest_e(v46, v47);
    OUTLINED_FUNCTION_54_1();
    bspush_ca_boa();
    v48 = OUTLINED_FUNCTION_70_1();
    v50 = lpta_loadp_setscan_l(v48, v49);
    v41 = v45;
    if (!v50)
    {
      OUTLINED_FUNCTION_24_8();
      if (test_string_s())
      {
        v41 = v45;
      }

      else
      {
        v41 = 1;
      }
    }
  }

  if (v43 != 3)
  {
LABEL_16:
    vretproc(v0);
    result = 94;
  }

  else
  {
    bspop_boa(v0);
    vretproc(v0);
    result = 0;
  }

  v52 = *MEMORY[0x277D85DE8];
  return result;
}

void between_proper_names()
{
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_11_14();
  v101 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_78_1();
  OUTLINED_FUNCTION_16_12(v1, v2, v3, v4, v5, v6, v7, v8, v53, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83);
  OUTLINED_FUNCTION_57_1();
  bzero(v100, v9);
  v10 = setjmp(v100);
  if (!v10 && !OUTLINED_FUNCTION_92_0(v10, &v55, v11, v12, v13, v14, v15, v16, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100[0]))
  {
    v17 = OUTLINED_FUNCTION_72_1();
    get_parm(v17, v18, v19, -6);
    v20 = OUTLINED_FUNCTION_64_1();
    OUTLINED_FUNCTION_126(v20, v21);
    v22 = OUTLINED_FUNCTION_55_1();
    push_ptr_init(v22, v23);
    v24 = OUTLINED_FUNCTION_71_1();
    push_ptr_init(v24, v25);
    v26 = OUTLINED_FUNCTION_54_1();
    push_ptr_init(v26, v27);
    v28 = OUTLINED_FUNCTION_104();
    push_ptr_init(v28, v29);
    fence_16(v0, 0, &_MergedGlobals_1_0);
    v30 = OUTLINED_FUNCTION_42_1();
    starttest(v30, v31);
    OUTLINED_FUNCTION_15_12();
    bspush_ca_boa();
    OUTLINED_FUNCTION_64_1();
    find_next_word();
    OUTLINED_FUNCTION_149();
    while (2)
    {
      v33 = v0[13];
      if (v33)
      {
        v34 = OUTLINED_FUNCTION_65_1(v33);
        v36 = v35;
      }

      else
      {
        v34 = vback(v0, v32);
        v36 = 0;
      }

      switch(v34)
      {
        case 1:
          v37 = OUTLINED_FUNCTION_64_1();
          starttest(v37, v38);
          OUTLINED_FUNCTION_81_1();
          bspush_ca_boa();
          OUTLINED_FUNCTION_54_1();
          find_previous_word();
          goto LABEL_12;
        case 2:
        case 4:
        case 6:
        case 8:
          bspop_boa(v0);
          break;
        case 3:
          v40 = OUTLINED_FUNCTION_74_1();
          starttest(v40, v41);
          OUTLINED_FUNCTION_84_1();
          bspush_ca_boa();
          v42 = OUTLINED_FUNCTION_55_1();
          goto LABEL_11;
        case 5:
          v50 = OUTLINED_FUNCTION_91_0();
          starttest(v50, v51);
          OUTLINED_FUNCTION_71_1();
          bspush_ca_boa();
          v42 = OUTLINED_FUNCTION_54_1();
LABEL_11:
          v39 = is_proper_name(v42, v43, v44, v45, v46, v47, v48, v49);
LABEL_12:
          if (v39)
          {
            v32 = v36;
          }

          else
          {
            v32 = 1;
          }

          continue;
        default:
          goto LABEL_16;
      }

      break;
    }
  }

LABEL_16:
  vretproc(v0);
  v52 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_113();
}

uint64_t mark_uppercase()
{
  OUTLINED_FUNCTION_11_14();
  v35 = *MEMORY[0x277D85DE8];
  v30 = 0;
  v31 = 0;
  v29 = 0;
  v28[0] = 0;
  v28[1] = 0;
  OUTLINED_FUNCTION_58_1();
  bzero(v27, v2);
  OUTLINED_FUNCTION_57_1();
  OUTLINED_FUNCTION_161(v3, v4);
  v5 = setjmp(v1);
  if (!v5 && !OUTLINED_FUNCTION_160(v5, v27, v34, v33, v32))
  {
    v8 = OUTLINED_FUNCTION_56_1();
    OUTLINED_FUNCTION_127(v8, v9);
    v10 = OUTLINED_FUNCTION_68_1();
    get_parm(v10, v11, v12, -4);
    v13 = OUTLINED_FUNCTION_104();
    push_ptr_init(v13, v14);
    v15 = OUTLINED_FUNCTION_73_1();
    fence_16(v15, v16, v17);
    if (HIWORD(v29) == 1)
    {
      v18 = OUTLINED_FUNCTION_15_12();
      starttest(v18, v19);
      v20 = OUTLINED_FUNCTION_7_14();
      if (!lpta_loadp_setscan_r(v20, v21) && !advance_tok(v0))
      {
        goto LABEL_7;
      }

      do
      {
LABEL_8:
        v22 = OUTLINED_FUNCTION_71_1();
        lpta_rpta_loadp(v22, v23, v28);
        OUTLINED_FUNCTION_4_14();
        if (!mark_s())
        {
          goto LABEL_3;
        }

        v24 = *(v0 + 104);
        if (v24)
        {
          v25 = OUTLINED_FUNCTION_65_1(v24);
        }

        else
        {
          v25 = OUTLINED_FUNCTION_133();
        }
      }

      while (v25 == 2);
      if (v25 == 3)
      {
LABEL_7:
        OUTLINED_FUNCTION_162(3, v26, v27[0], v27[1], v27[2], v27[3], v27[4], v27[5], v27[6], v27[7], v27[8], v27[9], v27[10], v27[11], v27[12], v27[13], v27[14], v27[15], v27[16], v27[17], v27[18], v27[19], v27[20], v27[21], v27[22], v28[0]);
        goto LABEL_8;
      }
    }
  }

LABEL_3:
  vretproc(v0);
  v6 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_154();
}

uint64_t mark_non_letter()
{
  OUTLINED_FUNCTION_11_14();
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_14(v3, v4, v5, v6, v7, v8, v9, v10, v46, v50, v54, v58, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142, v145, v148);
  OUTLINED_FUNCTION_26_8(v11, v12, v13, v14, v15, v16, v17, v18, v47, v51, v55, v59, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v146, v149, v151, v153, v155, v157, v159);
  if (!setjmp(v1))
  {
    OUTLINED_FUNCTION_0_16();
    if (!OUTLINED_FUNCTION_132(v19, v20, v21, v22, v23, v24, v25, v26, v48, v52, v56, v60, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144, v147, v150, v152, v154, v156, v158, v160))
    {
      v27 = OUTLINED_FUNCTION_13_14();
      get_parm(v27, v28, v29, -6);
      OUTLINED_FUNCTION_19_9(v30, v31, v32, v33, v34, v35, v36, v37, v49, v53, v57, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141);
      v38 = OUTLINED_FUNCTION_73_1();
      fence_16(v38, v39, v40);
      v41 = OUTLINED_FUNCTION_13_14();
      lpta_rpta_loadp(v41, v42, v43);
      OUTLINED_FUNCTION_9_14();
      if (mark_s() || (OUTLINED_FUNCTION_51_1(), mark_s()) || (OUTLINED_FUNCTION_4_14(), mark_s()))
      {
        if (*(v0 + 104))
        {
          *(v0 + 104) = 0;
        }

        else
        {
          OUTLINED_FUNCTION_133();
        }
      }
    }
  }

  vretproc(v0);
  v44 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_105();
}

uint64_t inside_orig_inp_token()
{
  OUTLINED_FUNCTION_76_1();
  v63[32] = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_10_14(v2, v3, v4, v5, v6, v7, v8, v9, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63[0], v63[1], v63[2], v63[3]);
  OUTLINED_FUNCTION_57_1();
  OUTLINED_FUNCTION_179(v10, v11);
  if (!setjmp(v1))
  {
    OUTLINED_FUNCTION_0_16();
    if (!OUTLINED_FUNCTION_178(v12, v13, v14, v15, v16))
    {
      OUTLINED_FUNCTION_21_8();
      v17 = OUTLINED_FUNCTION_71_1();
      push_ptr_init(v17, v18);
      v19 = OUTLINED_FUNCTION_73_1();
      fence_16(v19, v20, v21);
      v22 = OUTLINED_FUNCTION_55_1();
      lpta_loadpn(v22, v23);
      OUTLINED_FUNCTION_73_1();
      lpta_movel();
      v24 = OUTLINED_FUNCTION_71_1();
      lpta_storep(v24, v25);
      v26 = OUTLINED_FUNCTION_100();
      starttest_l(v26, v27);
      *(v0 + 136) = v63;
      OUTLINED_FUNCTION_12_14();
      if (!lpta_tstctxtr())
      {
        v28 = OUTLINED_FUNCTION_94_0();
        setscan_r(v28);
        if (!v29)
        {
          OUTLINED_FUNCTION_15_12();
          bspush_ca_scan_boa();
          OUTLINED_FUNCTION_98_0();
          v33 = OUTLINED_FUNCTION_12_14();
          v34 = test_ptr(v33) == 0;
          while (1)
          {
            v35 = *(v0 + 104);
            if (v35)
            {
              v36 = OUTLINED_FUNCTION_65_1(v35);
              v38 = v37;
            }

            else
            {
              v36 = vback(v0, v34);
              v38 = 0;
            }

            if (v36 != 2)
            {
              break;
            }

            bspop_boa(v0);
            v39 = advance_tok(v0);
            v34 = v38;
            v30 = 0;
            if (!v39)
            {
              goto LABEL_6;
            }
          }
        }
      }
    }
  }

  v30 = 94;
LABEL_6:
  vretproc(v0);
  v31 = *MEMORY[0x277D85DE8];
  return v30;
}

uint64_t lowercase_and_normalize()
{
  OUTLINED_FUNCTION_11_14();
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_14(v3, v4, v5, v6, v7, v8, v9, v10, v43, v47, v51, v55, v59, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v142, v145);
  OUTLINED_FUNCTION_26_8(v11, v12, v13, v14, v15, v16, v17, v18, v44, v48, v52, v56, v60, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v143, v146, v148, v150, v152, v154, v156);
  if (!setjmp(v1))
  {
    OUTLINED_FUNCTION_0_16();
    if (!OUTLINED_FUNCTION_132(v19, v20, v21, v22, v23, v24, v25, v26, v45, v49, v53, v57, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v144, v147, v149, v151, v153, v155, v157))
    {
      v29 = OUTLINED_FUNCTION_13_14();
      get_parm(v29, v30, v31, -6);
      OUTLINED_FUNCTION_19_9(v32, v33, v34, v35, v36, v37, v38, v39, v46, v50, v54, v58, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138);
      v40 = OUTLINED_FUNCTION_73_1();
      fence_16(v40, v41, v42);
      OUTLINED_FUNCTION_13_14();
      convert_to_lowercase();
      OUTLINED_FUNCTION_13_14();
      normalize_letters();
    }
  }

  vretproc(v0);
  v27 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_105();
}

uint64_t OUTLINED_FUNCTION_2_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  *(v35 + 168) = v36;
  *(v35 + 144) = a35;
  *(v35 + 136) = v36;
  *(v35 + 112) = a33;
  *(v35 + 128) = 0;
  return v35;
}

void OUTLINED_FUNCTION_5_14(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  *(v36 - 56) = v35;
  a34 = 0;
  a35 = 0;
  a32 = 0;
  a33 = 0;

  bzero(&a9, 0xB8uLL);
}

void OUTLINED_FUNCTION_10_14(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  a34 = 0;
  a35 = 0;
  a32 = 0;
  a33 = 0;

  bzero(&a9, 0xB8uLL);
}

uint64_t OUTLINED_FUNCTION_12_14()
{
  *(v1 + 112) = v0;
  *(v1 + 128) = 0;
  return v1;
}

void OUTLINED_FUNCTION_16_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  a37 = 0;
  a38 = 0;
  a35 = 0;
  a36 = 0;
  a33 = 0;
  a34 = 0;

  bzero(&a10, 0xB8uLL);
}

void OUTLINED_FUNCTION_18_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  a35 = 0;
  a36 = 0;
  a33 = 0;
  a34 = 0;

  bzero(&a10, 0xB8uLL);
}

void OUTLINED_FUNCTION_19_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{

  get_parm(v32, &a32, v33, -6);
}

void OUTLINED_FUNCTION_20_8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  a32 = 0;
  a33 = 0;

  bzero(&a9, 0xB8uLL);
}

void OUTLINED_FUNCTION_21_8()
{

  get_parm(v0, v2, v1, -6);
}

uint64_t OUTLINED_FUNCTION_25_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, char a35, int a36, __int16 a37, char a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, char a44)
{

  return ventproc(v44, &a9, &a42, &a38, &a35, &a44);
}

void OUTLINED_FUNCTION_26_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{

  bzero(&a40, 0xC0uLL);
}

uint64_t OUTLINED_FUNCTION_34_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39, char a40, int a41, __int16 a42, char a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, char a49)
{

  return ventproc(v49, a2, &a47, &a43, &a40, &a49);
}

void OUTLINED_FUNCTION_43_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{

  get_parm(v32, &a32, v33, -6);
}

uint64_t OUTLINED_FUNCTION_44_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37, char a38, int a39, __int16 a40, char a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, char a47)
{

  return ventproc(v47, a2, &a45, &a41, &a38, &a47);
}

void OUTLINED_FUNCTION_62_1(uint64_t a1, uint64_t a2)
{

  get_parm(v2, a2, v3, -6);
}

uint64_t OUTLINED_FUNCTION_69_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41, char a42, int a43, __int16 a44, char a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, char a51)
{

  return ventproc(v51, a2, &a49, &a45, &a42, &a51);
}

uint64_t OUTLINED_FUNCTION_89_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, int a40, char a41, int a42, __int16 a43, char a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, char a50)
{

  return ventproc(v50, a2, &a48, &a44, &a41, &a50);
}

uint64_t OUTLINED_FUNCTION_92_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, int a45, char a46, int a47, __int16 a48, char a49, int a50, __int16 a51, char a52, char a53, uint64_t a54, char a55)
{

  return ventproc(v55, a2, &a53, &a49, &a46, &a55);
}

void OUTLINED_FUNCTION_102(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  *(v35 + 168) = 1;
  *(v35 + 144) = a35;
  *(v35 + 128) = 0;
}

void OUTLINED_FUNCTION_103()
{

  starttest(v0, 1);
}

void OUTLINED_FUNCTION_126(uint64_t a1, uint64_t a2)
{

  get_parm(a1, a2, v2, -6);
}

void OUTLINED_FUNCTION_127(uint64_t a1, uint64_t a2)
{

  get_parm(a1, a2, v2, -6);
}

BOOL OUTLINED_FUNCTION_131(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  *(v36 + 8) = a35;

  return vretproc(v35);
}

uint64_t OUTLINED_FUNCTION_132(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{

  return ventproc(v40, a2, a3, a4, a5, &a40);
}

uint64_t OUTLINED_FUNCTION_133()
{

  return vback(v0, 0);
}

BOOL OUTLINED_FUNCTION_137@<W0>(uint64_t a1@<X8>)
{
  *(v2 + 8) = a1;

  return vretproc(v1);
}

uint64_t OUTLINED_FUNCTION_150()
{

  return rpta_loadpn(v0, v0 + 3344);
}

void OUTLINED_FUNCTION_158(uint64_t a1, size_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{

  bzero(&a38, a2);
}

void OUTLINED_FUNCTION_159(uint64_t a1, uint64_t a2)
{

  get_parm(a1, a2, v2, -6);
}

uint64_t OUTLINED_FUNCTION_160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return ventproc(v5, a2, a3, a4, a5, v6 - 248);
}

void OUTLINED_FUNCTION_161(uint64_t a1, size_t a2)
{

  bzero((v2 - 248), a2);
}

double OUTLINED_FUNCTION_162@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{

  *&result = savescptr(v26, a1, &a26).n128_u64[0];
  return result;
}

BOOL OUTLINED_FUNCTION_163(uint64_t a1, unsigned int a2)
{

  return testFldeq(a1, a2, v3, v2);
}

void OUTLINED_FUNCTION_164(uint64_t a1, size_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{

  bzero(&a40, a2);
}

void OUTLINED_FUNCTION_177(uint64_t a1, size_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{

  bzero(&a41, a2);
}

uint64_t OUTLINED_FUNCTION_178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return ventproc(v5, a2, a3, a4, a5, v6 - 232);
}

void OUTLINED_FUNCTION_179(uint64_t a1, size_t a2)
{

  bzero((v2 - 232), a2);
}

uint64_t OUTLINED_FUNCTION_180()
{

  return lpta_loadpn(v0, v0 + 2496);
}

uint64_t convert_digits_to_words()
{
  OUTLINED_FUNCTION_6_15();
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_16(v3, v4, v5, v6, v7, v8, v9, v10, v51, v56, v61, v66, v71, v76, v81, v86, v91, v96, v101, v106, v111, v116, v121, v126, v131, v136, v141, v146, v151, v156, v161, v166, v171, v175, v178);
  OUTLINED_FUNCTION_10_15(v11, v12, v13, v14, v15, v16, v17, v18, v52, v57, v62, v67, v72, v77, v82, v87, v92, v97, v102, v107, v112, v117, v122, v127, v132, v137, v142, v147, v152, v157, v162, v167, v172, v176, v179, v181, v183, v185, v187, v189);
  v19 = setjmp(v1);
  if (v19)
  {
    goto LABEL_4;
  }

  if (OUTLINED_FUNCTION_2_16(v19, v20, v21, v22, v23, v24, v25, v26, v53, v58, v63, v68, v73, v78, v83, v88, v93, v98, v103, v108, v113, v118, v123, v128, v133, v138, v143, v148, v153, v158, v163, v168, v173, v177, v180, *v182, v182[4], *v184, *&v184[4], v184[6], v186, SWORD2(v186), SBYTE6(v186), SHIBYTE(v186), v188, v190))
  {
    goto LABEL_4;
  }

  v27 = OUTLINED_FUNCTION_5_15();
  get_parm(v27, v28, v29, -6);
  OUTLINED_FUNCTION_14_13(v30, v31, v32, v33, v34, v35, v36, v37, v54, v59, v64, v69, v74, v79, v84, v89, v94, v99, v104, v109, v114, v119, v124, v129, v134, v139, v144, v149, v154, v159, v164, v169);
  fence_17(v0);
  starttest(v0, 1);
  v38 = OUTLINED_FUNCTION_15_13();
  if (lpta_loadp_setscan_r(v38, v39))
  {
    goto LABEL_4;
  }

  if (!OUTLINED_FUNCTION_8_15() && !advance_tok(v0))
  {
    *(v0 + 2614) = *(v0 + 2642);
    OUTLINED_FUNCTION_4_15();
    convert_lang_digits_to_words();
    goto LABEL_16;
  }

  v42 = *(v0 + 104);
  if (v42)
  {
    v43 = OUTLINED_FUNCTION_31_5(v42);
  }

  else
  {
    v43 = OUTLINED_FUNCTION_39_2();
  }

  if ((v43 - 4) < 2)
  {
    goto LABEL_18;
  }

  if (v43 == 2)
  {
LABEL_16:
    OUTLINED_FUNCTION_4_15();
    hyphen_between_nums();
    if (!v43)
    {
LABEL_18:
      OUTLINED_FUNCTION_25_9(v43, v44, v45, v46, v47, v48, v49, v50, v55, v60, v65, v70, v75, v80, v85, v90, v95, v100, v105, v110, v115, v120, v125, v130, v135, v140, v145, v150, v155, v160, v165, v170, v174);
      result = 0;
      goto LABEL_5;
    }

LABEL_17:
    v43 = separate_tokens();
    goto LABEL_18;
  }

  if (v43 == 3)
  {
    goto LABEL_17;
  }

LABEL_4:
  vretproc(v0);
  result = 94;
LABEL_5:
  v41 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t convert_digits()
{
  OUTLINED_FUNCTION_6_15();
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_16(v4, v5, v6, v7, v8, v9, v10, v11, v37, v40, v43, v46, v49, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v113, v116);
  OUTLINED_FUNCTION_10_15(v12, v13, v14, v15, v16, v17, v18, v19, v38, v41, v44, v47, v50, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v114, v117, v119, v121, v123, v125, v127);
  v20 = setjmp(v2);
  if (v20 || OUTLINED_FUNCTION_2_16(v20, v21, v22, v23, v24, v25, v26, v27, v39, v42, v45, v48, v51, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v115, v118, *v120, v120[4], *v122, *&v122[4], v122[6], v124, SWORD2(v124), SBYTE6(v124), SHIBYTE(v124), v126, v128))
  {
    v28 = 94;
  }

  else
  {
    v31 = OUTLINED_FUNCTION_5_15();
    get_parm(v31, v32, v33, -6);
    v34 = OUTLINED_FUNCTION_18_11();
    OUTLINED_FUNCTION_28_6(v34, v35);
    fence_17(v0);
    OUTLINED_FUNCTION_5_15();
    count_digits();
    OUTLINED_FUNCTION_5_15();
    get_number_info();
    OUTLINED_FUNCTION_5_15();
    convert_numbers();
    v36 = OUTLINED_FUNCTION_18_11();
    reset_enum_ptr(v36);
    *(v1 + 8) = v112;
    v28 = 0;
  }

  vretproc(v0);
  v29 = *MEMORY[0x277D85DE8];
  return v28;
}

void count_digits()
{
  OUTLINED_FUNCTION_37_3();
  OUTLINED_FUNCTION_6_15();
  v63 = *MEMORY[0x277D85DE8];
  v58[0] = 0;
  v58[1] = 0;
  v56 = 0;
  v57 = 0;
  v55 = 0;
  v54[0] = 0;
  v54[1] = 0;
  OUTLINED_FUNCTION_20_9();
  bzero(v53, v3);
  OUTLINED_FUNCTION_19_10();
  bzero(v62, v4);
  if (setjmp(v62) || ventproc(v0, v53, v61, v60, v59, v62))
  {
LABEL_3:
    vretproc(v0);
    goto LABEL_4;
  }

  get_parm(v0, v58, v2, -6);
  OUTLINED_FUNCTION_28_6(v0, &v56);
  v55 = 65532;
  push_ptr_init(v0, v54);
  fence_17(v0);
  *(v0 + 2910) = 0;
  *(v0 + 2902) = 0;
  *(v0 + 2898) = 0;
  v6 = OUTLINED_FUNCTION_35_3();
  starttest(v6, v7);
  OUTLINED_FUNCTION_35_3();
  bspush_ca_boa();
  v8 = OUTLINED_FUNCTION_35_3();
  bspush_ca(v8);
  v9 = 0;
  if (*(v0 + 5094) == *(v0 + 5090))
  {
LABEL_6:
    v9 = 1;
  }

  v10 = v9;
  while (2)
  {
    v11 = *(v0 + 104);
    if (v11)
    {
      v12 = OUTLINED_FUNCTION_31_5(v11);
      v14 = v13;
    }

    else
    {
      v12 = vback(v0, v10);
      v14 = 0;
    }

    switch(v12)
    {
      case 1:
      case 6:
        goto LABEL_56;
      case 2:
        bspop_boa(v0);
        *(v0 + 2918) = 0;
        HIWORD(v55) = 0;
        startloop(v0, 6);
        v15 = OUTLINED_FUNCTION_15_13();
        copyvar(v15, v16, v58);
        goto LABEL_13;
      case 3:
        bspush_ca(v0);
        v28 = *(v0 + 5114);
        goto LABEL_31;
      case 4:
        goto LABEL_6;
      case 5:
        v28 = *(v0 + 5118);
LABEL_31:
        v10 = v14;
        if (v28 == *(v0 + 5090))
        {
          goto LABEL_6;
        }

        continue;
      case 7:
        goto LABEL_16;
      case 8:
        goto LABEL_38;
      case 9:
        goto LABEL_15;
      case 10:
        goto LABEL_19;
      case 11:
        bspop_boa(v0);
        v29 = v0;
        v30 = &v55;
        goto LABEL_37;
      case 12:
        goto LABEL_22;
      case 13:
        bspop_boa(v0);
        starttest(v0, 15);
        if (HIWORD(v55) != 1)
        {
          goto LABEL_35;
        }

        goto LABEL_56;
      case 14:
        goto LABEL_25;
      case 15:
LABEL_35:
        v31 = OUTLINED_FUNCTION_15_13();
        lpta_rpta_loadp(v31, v32, v54);
        v33 = OUTLINED_FUNCTION_1_16();
        inserted = insert_2pt_s(v33, v34, v35, &_MergedGlobals_11, v36);
        v10 = v14;
        if (inserted)
        {
          continue;
        }

        v30 = (v0 + 2916);
        v29 = v0;
LABEL_37:
        move_i(v29, v30, 1);
        goto LABEL_38;
      case 16:
        goto LABEL_23;
      case 17:
        bspop_boa(v0);
        goto LABEL_56;
      case 18:
LABEL_13:
        bspush_ca(v0);
        v17 = OUTLINED_FUNCTION_15_13();
        v19 = lpta_loadp_setscan_r(v17, v18);
        v10 = v14;
        if (v19)
        {
          continue;
        }

        v20 = advance_tok(v0);
        v10 = v14;
        if (v20)
        {
          continue;
        }

LABEL_15:
        savescptr(v0, 9, v54);
LABEL_16:
        v21 = OUTLINED_FUNCTION_15_13();
        if (!lpta_loadp_setscan_r(v21, v22))
        {
          OUTLINED_FUNCTION_1_16();
          if (!test_string_s())
          {
            starttest_l(v0, 10);
            if (!lpta_loadp_setscan_r(v0, v54))
            {
              v46 = OUTLINED_FUNCTION_8_15();
              v10 = v14;
              if (!v46)
              {
                v47 = advance_tok(v0);
                v10 = v14;
                if (!v47)
                {
                  v48 = OUTLINED_FUNCTION_8_15();
                  v10 = v14;
                  if (!v48)
                  {
                    v49 = advance_tok(v0);
                    v10 = v14;
                    if (!v49)
                    {
                      v50 = OUTLINED_FUNCTION_8_15();
                      v10 = v14;
                      if (!v50)
                      {
                        v51 = advance_tok(v0);
                        v10 = v14;
                        if (!v51)
                        {
                          goto LABEL_24;
                        }
                      }
                    }
                  }
                }
              }

              continue;
            }
          }
        }

LABEL_19:
        v23 = OUTLINED_FUNCTION_15_13();
        if (!lpta_loadp_setscan_r(v23, v24))
        {
          OUTLINED_FUNCTION_1_16();
          if (!test_string_s())
          {
            starttest(v0, 12);
            if (!lpta_loadp_setscan_r(v0, v54))
            {
              v39 = OUTLINED_FUNCTION_8_15();
              v10 = v14;
              if (!v39)
              {
                v40 = advance_tok(v0);
                v10 = v14;
                if (!v40)
                {
                  v41 = OUTLINED_FUNCTION_8_15();
                  v10 = v14;
                  if (!v41)
                  {
                    v42 = advance_tok(v0);
                    v10 = v14;
                    if (!v42)
                    {
                      v43 = OUTLINED_FUNCTION_8_15();
                      v10 = v14;
                      if (!v43)
                      {
                        v44 = advance_tok(v0);
                        v10 = v14;
                        if (!v44)
                        {
                          bspush_ca_scan_boa();
                          bspush_ca_scan(v0, 14);
                          OUTLINED_FUNCTION_1_16();
                          v45 = test_string_s();
                          v10 = v14;
                          if (!v45)
                          {
                            goto LABEL_25;
                          }
                        }
                      }
                    }
                  }
                }
              }

              continue;
            }
          }
        }

LABEL_22:
        starttest(v0, 16);
        v25 = OUTLINED_FUNCTION_15_13();
        if (!lpta_loadp_setscan_r(v25, v26))
        {
LABEL_24:
          bspush_ca_scan_boa();
LABEL_25:
          v27 = OUTLINED_FUNCTION_8_15();
          v10 = v14;
          if (!v27)
          {
            if (advance_tok(v0))
            {
              v10 = v14;
            }

            else
            {
              v10 = 1;
            }
          }

          continue;
        }

LABEL_23:
        c_assvar(v0, (v0 + 2896));
        ++*(v0 + 2898);
LABEL_38:
        v38 = forall_adv_over_r(v0, 6, 7, 18, 1, &v56);
        v10 = v14;
        if (v38)
        {
          continue;
        }

LABEL_56:
        v52 = *(v0 + 2898);
        *(v0 + 2902) = v52;
        if (v52 == 1 && !lpta_loadp_setscan_l(v0, &v56))
        {
          OUTLINED_FUNCTION_1_16();
          if (!test_string_s())
          {
            *(v0 + 2910) = *(v0 + 2286);
          }
        }

LABEL_60:
        *(v1 + 8) = v57;
        vretproc(v0);
LABEL_4:
        v5 = *MEMORY[0x277D85DE8];
        OUTLINED_FUNCTION_38_3();
        return;
      case 19:
        goto LABEL_60;
      default:
        goto LABEL_3;
    }
  }
}

uint64_t get_number_info()
{
  OUTLINED_FUNCTION_6_15();
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_16(v3, v4, v5, v6, v7, v8, v9, v10, v55, v61, v67, v73, v79, v85, v91, v97, v103, v109, v115, v121, v127, v133, v139, v145, v151, v157, v163, v169, v175, v181, v187, v193, v199, v204, v208);
  OUTLINED_FUNCTION_10_15(v11, v12, v13, v14, v15, v16, v17, v18, v56, v62, v68, v74, v80, v86, v92, v98, v104, v110, v116, v122, v128, v134, v140, v146, v152, v158, v164, v170, v176, v182, v188, v194, v200, v205, v209, v211, v213, v215, v217, v219);
  v19 = setjmp(v1);
  if (v19 || (v27 = OUTLINED_FUNCTION_2_16(v19, v20, v21, v22, v23, v24, v25, v26, v57, v63, v69, v75, v81, v87, v93, v99, v105, v111, v117, v123, v129, v135, v141, v147, v153, v159, v165, v171, v177, v183, v189, v195, v201, v206, v210, *v212, v212[4], *v214, *&v214[4], v214[6], v216, SWORD2(v216), SBYTE6(v216), SHIBYTE(v216), v218, v220), v27))
  {
    vretproc(v0);
    result = 94;
  }

  else
  {
    OUTLINED_FUNCTION_27_7(v27, v28, v29, v30, v31, v32, v33, v34, v58, v64, v70, v76, v82, v88, v94, v100, v106, v112, v118, v124, v130, v136, v142, v148, v154, v160, v166, v172, v178, v184, v190, v196, v202, v207);
    OUTLINED_FUNCTION_14_13(v37, v38, v39, v40, v41, v42, v43, v44, v59, v65, v71, v77, v83, v89, v95, v101, v107, v113, v119, v125, v131, v137, v143, v149, v155, v161, v167, v173, v179, v185, v191, v197);
    fence_17(v0);
    v45 = *(v0 + 5122);
    OUTLINED_FUNCTION_33_4();
    if (v54)
    {
      identify_ordinal();
    }

    OUTLINED_FUNCTION_25_9(v46, v47, v48, v49, v50, v51, v52, v53, v60, v66, v72, v78, v84, v90, v96, v102, v108, v114, v120, v126, v132, v138, v144, v150, v156, v162, v168, v174, v180, v186, v192, v198, v203);
    result = 0;
  }

  v36 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t convert_numbers()
{
  OUTLINED_FUNCTION_6_15();
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_16(v3, v4, v5, v6, v7, v8, v9, v10, v60, v66, v72, v78, v84, v90, v96, v102, v108, v114, v120, v126, v132, v138, v144, v150, v156, v162, v168, v174, v180, v186, v192, v198, v204, v209, v213);
  OUTLINED_FUNCTION_10_15(v11, v12, v13, v14, v15, v16, v17, v18, v61, v67, v73, v79, v85, v91, v97, v103, v109, v115, v121, v127, v133, v139, v145, v151, v157, v163, v169, v175, v181, v187, v193, v199, v205, v210, v214, v216, v218, v220, v222, v224);
  v19 = setjmp(v1);
  if (v19 || (v27 = OUTLINED_FUNCTION_2_16(v19, v20, v21, v22, v23, v24, v25, v26, v62, v68, v74, v80, v86, v92, v98, v104, v110, v116, v122, v128, v134, v140, v146, v152, v158, v164, v170, v176, v182, v188, v194, v200, v206, v211, v215, *v217, v217[4], *v219, *&v219[4], v219[6], v221, SWORD2(v221), SBYTE6(v221), SHIBYTE(v221), v223, v225), v27))
  {
LABEL_3:
    vretproc(v0);
    result = 94;
  }

  else
  {
    OUTLINED_FUNCTION_27_7(v27, v28, v29, v30, v31, v32, v33, v34, v63, v69, v75, v81, v87, v93, v99, v105, v111, v117, v123, v129, v135, v141, v147, v153, v159, v165, v171, v177, v183, v189, v195, v201, v207, v212);
    OUTLINED_FUNCTION_14_13(v37, v38, v39, v40, v41, v42, v43, v44, v64, v70, v76, v82, v88, v94, v100, v106, v112, v118, v124, v130, v136, v142, v148, v154, v160, v166, v172, v178, v184, v190, v196, v202);
    fence_17(v0);
    v45 = *(v0 + 2898);
    if (v45 == 1)
    {
      OUTLINED_FUNCTION_4_15();
      v46 = convert_single_digit();
    }

    else
    {
      while (2)
      {
        if (v45 == 2)
        {
          OUTLINED_FUNCTION_4_15();
          v46 = convert_double();
        }

        else
        {
LABEL_9:
          if (v45 == 3)
          {
            OUTLINED_FUNCTION_4_15();
            v46 = convert_hundreds();
          }

          else
          {
LABEL_10:
            v54 = OUTLINED_FUNCTION_18_11();
            starttest(v54, v55);
            v56 = OUTLINED_FUNCTION_15_13();
            bspush_ca(v56);
            if (*(v0 + 2898) >= 16)
            {
LABEL_11:
              v57 = *(v0 + 104);
              if (v57)
              {
                v46 = OUTLINED_FUNCTION_31_5(v57);
              }

              else
              {
                v46 = OUTLINED_FUNCTION_39_2();
              }

              switch(v46)
              {
                case 1:
                  v45 = *(v0 + 2898);
                  continue;
                case 2:
                case 3:
                case 5:
                case 7:
                case 11:
                  goto LABEL_7;
                case 4:
                  v45 = *(v0 + 2898);
                  goto LABEL_9;
                case 6:
                  goto LABEL_10;
                case 8:
                  OUTLINED_FUNCTION_4_15();
                  v46 = spell_out_large_num();
                  goto LABEL_7;
                case 9:
                  v58 = *(v0 + 5094);
                  OUTLINED_FUNCTION_33_4();
                  if (v59 && *(v0 + 2898) <= 18)
                  {
                    break;
                  }

                  goto LABEL_11;
                case 10:
                  break;
                default:
                  goto LABEL_3;
              }
            }

            OUTLINED_FUNCTION_4_15();
            convert_large_numbers();
          }
        }

        break;
      }
    }

LABEL_7:
    OUTLINED_FUNCTION_25_9(v46, v47, v48, v49, v50, v51, v52, v53, v65, v71, v77, v83, v89, v95, v101, v107, v113, v119, v125, v131, v137, v143, v149, v155, v161, v167, v173, v179, v185, v191, v197, v203, v208);
    result = 0;
  }

  v36 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t reset_enum_ptr(uint64_t a1)
{
  v53 = *MEMORY[0x277D85DE8];
  v47 = 0;
  v48 = 0;
  OUTLINED_FUNCTION_20_9();
  bzero(&v24, v2);
  OUTLINED_FUNCTION_19_10();
  bzero(v52, v3);
  if (setjmp(v52) || (v4 = ventproc(a1, &v24, v51, v50, v49, v52), v4))
  {
    vretproc(a1);
    result = 94;
  }

  else
  {
    OUTLINED_FUNCTION_14_13(v4, v5, v6, v7, v8, v9, v10, v11, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47);
    fence_17(a1);
    v14 = *(a1 + 5122);
    OUTLINED_FUNCTION_33_4();
    if (v23 && *(a1 + 2846) == *(a1 + 2822))
    {
      v48 = *(a1 + 6000);
    }

    OUTLINED_FUNCTION_25_9(v15, v16, v17, v18, v19, v20, v21, v22, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48);
    result = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void identify_ordinal()
{
  OUTLINED_FUNCTION_37_3();
  v1 = v0;
  v34 = *MEMORY[0x277D85DE8];
  v29[0] = 0;
  v29[1] = 0;
  v28[0] = 0;
  v28[1] = 0;
  v26 = 0;
  v27 = 0;
  OUTLINED_FUNCTION_20_9();
  bzero(v25, v2);
  OUTLINED_FUNCTION_19_10();
  bzero(v33, v3);
  if (setjmp(v33))
  {
    goto LABEL_4;
  }

  if (ventproc(v1, v25, v32, v31, v30, v33))
  {
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_28_6(v1, v29);
  push_ptr_init(v1, v28);
  push_ptr_init(v1, &v26);
  fence_17(v1);
  if (*(v1 + 2918) == 1)
  {
    goto LABEL_4;
  }

  v5 = 0;
  while (2)
  {
    starttest(v1, 3);
    v6 = OUTLINED_FUNCTION_15_13();
    if (!lpta_loadp_setscan_r(v6, v7))
    {
      bspush_ca_scan(v1, 4);
      OUTLINED_FUNCTION_1_16();
      v10 = test_string_s();
      v11 = v5;
      if (v10)
      {
        goto LABEL_20;
      }

LABEL_19:
      v5 = v11;
      savescptr(v1, 5, v1 + 5992);
      if (!end_of_word())
      {
        goto LABEL_49;
      }

LABEL_20:
      v12 = v5;
LABEL_21:
      v13 = *(v1 + 104);
      if (v13)
      {
        v14 = OUTLINED_FUNCTION_31_5(v13);
        v5 = v15;
      }

      else
      {
        v14 = vback(v1, v12);
        v5 = 0;
      }

      switch(v14)
      {
        case 1:
          continue;
        case 2:
          goto LABEL_49;
        case 3:
          goto LABEL_7;
        case 4:
          OUTLINED_FUNCTION_1_16();
          v16 = test_string_s();
          v12 = v5;
          if (v16)
          {
            goto LABEL_21;
          }

          goto LABEL_46;
        case 5:
          goto LABEL_47;
        case 6:
LABEL_46:
          savescptr(v1, 6, v28);
LABEL_47:
          v11 = v5;
          goto LABEL_19;
        case 8:
          goto LABEL_9;
        case 9:
          goto LABEL_10;
        case 10:
          OUTLINED_FUNCTION_1_16();
          goto LABEL_38;
        case 12:
          goto LABEL_48;
        case 13:
          goto LABEL_11;
        case 14:
          bspush_nboa(v1);
          bspush_ca_scan(v1, 16);
          OUTLINED_FUNCTION_1_16();
          v20 = test_string_s();
          v12 = v5;
          if (v20)
          {
            goto LABEL_21;
          }

          bspush_ca_scan(v1, 17);
          OUTLINED_FUNCTION_12_15();
          goto LABEL_36;
        case 15:
          goto LABEL_44;
        case 16:
        case 19:
          OUTLINED_FUNCTION_12_15();
          goto LABEL_38;
        case 17:
          OUTLINED_FUNCTION_12_15();
LABEL_36:
          v21 = test_string_s();
          v12 = v5;
          if (!v21)
          {
            goto LABEL_37;
          }

          goto LABEL_21;
        case 18:
LABEL_37:
          bspush_ca_scan(v1, 19);
          OUTLINED_FUNCTION_1_16();
LABEL_38:
          v22 = test_string_s();
          v12 = v5;
          if (!v22)
          {
            goto LABEL_4;
          }

          goto LABEL_21;
        case 22:
          goto LABEL_13;
        case 23:
          bspop_boa(v1);
          goto LABEL_4;
        case 24:
          bspush_nboa(v1);
          v17 = OUTLINED_FUNCTION_12_15();
          v19 = testFldeq(v17, v18, 3, 1);
          v12 = v5;
          if (!v19)
          {
            if (advance_tok(v1))
            {
              v12 = v5;
            }

            else
            {
              v12 = 1;
            }
          }

          goto LABEL_21;
        case 25:
          goto LABEL_41;
        default:
          goto LABEL_4;
      }
    }

    break;
  }

LABEL_7:
  v8 = OUTLINED_FUNCTION_15_13();
  if (lpta_loadp_setscan_r(v8, v9))
  {
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_1_16();
  if (test_string_s())
  {
    goto LABEL_4;
  }

LABEL_9:
  savescptr(v1, 8, &v26);
  starttest(v1, 9);
  if (!OUTLINED_FUNCTION_29_6())
  {
    bspush_ca_scan(v1, 10);
    OUTLINED_FUNCTION_1_16();
    if (!test_string_s())
    {
      goto LABEL_4;
    }

    goto LABEL_20;
  }

LABEL_10:
  starttest(v1, 13);
  if (!OUTLINED_FUNCTION_29_6())
  {
    bspush_boa(v1);
LABEL_44:
    while (1)
    {
      OUTLINED_FUNCTION_1_16();
      if (test_string_s())
      {
        break;
      }

      v23 = OUTLINED_FUNCTION_18_11();
      bspush_ca_scan(v23, v24);
    }

    goto LABEL_20;
  }

LABEL_11:
  if (OUTLINED_FUNCTION_29_6() || (OUTLINED_FUNCTION_1_16(), test_string_s()))
  {
LABEL_13:
    starttest(v1, 12);
    if (!OUTLINED_FUNCTION_29_6())
    {
      bspush_ca_scan_boa();
      bspush_boa(v1);
LABEL_41:
      while (1)
      {
        OUTLINED_FUNCTION_1_16();
        if (test_string_s())
        {
          break;
        }

        bspush_ca_scan(v1, 24);
      }

      goto LABEL_20;
    }
  }

LABEL_48:
  *(v1 + 6000) = v27;
LABEL_49:
  *(v1 + 2822) = *(v1 + 2846);
  npush_s(v1);
  *(v1 + 3602) = 10;
  npop(v1, (v1 + 3600));
  *(v1 + 3010) = *(v1 + 3014);
  lpta_loadpn(v1, v28);
  rpta_loadpn(v1, v1 + 3344);
  if (!compare_ptas(v1) && !testneq(v1))
  {
    *(v1 + 3010) = *(v1 + 3018);
  }

LABEL_4:
  vretproc(v1);
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_38_3();
}

void convert_large_numbers()
{
  OUTLINED_FUNCTION_37_3();
  v19 = v0;
  v2 = v1;
  v33 = *MEMORY[0x277D85DE8];
  v27 = 0;
  v28 = 0;
  v25 = 0;
  v26 = 0;
  v23 = 0;
  v24 = 0;
  v22 = 0;
  v21[0] = 0;
  v21[1] = 0;
  OUTLINED_FUNCTION_20_9();
  bzero(v20, v3);
  OUTLINED_FUNCTION_19_10();
  bzero(v32, v4);
  if (setjmp(v32) || ventproc(v2, v20, v31, v30, v29, v32))
  {
LABEL_3:
    vretproc(v2);
  }

  else
  {
    v6 = OUTLINED_FUNCTION_18_11();
    OUTLINED_FUNCTION_28_6(v6, v7);
    get_parm(v2, &v25, v19, -6);
    LOWORD(v23) = -3;
    v22 = 65532;
    v8 = OUTLINED_FUNCTION_15_13();
    push_ptr_init(v8, v9);
    fence_17(v2);
    v24 = 0;
    startloop(v2, 1);
    while (2)
    {
      while (1)
      {
        bspush_ca(v2);
        if (*(v2 + 2898) < 4)
        {
          break;
        }

LABEL_11:
        starttest(v2, 3);
        move_i(v2, &v22, 3);
        if (modulo(v2, (v2 + 2896), &v22, &v23))
        {
          break;
        }

LABEL_12:
        v12 = v24;
        if (v24)
        {
LABEL_13:
          if (v12 == 2)
          {
            v13 = OUTLINED_FUNCTION_18_11();
            if (!lpta_loadp_setscan_r(v13, v14) && !advance_tok(v2) && !advance_tok(v2))
            {
LABEL_17:
              savescptr(v2, 11, v21);
            }

LABEL_18:
            OUTLINED_FUNCTION_18_11();
            convert_double();
          }

          else
          {
LABEL_19:
            v15 = OUTLINED_FUNCTION_18_11();
            if (!lpta_loadp_setscan_r(v15, v16) && !advance_tok(v2))
            {
LABEL_21:
              savescptr(v2, 14, v21);
            }

LABEL_22:
            OUTLINED_FUNCTION_18_11();
            insert_single_digit();
          }
        }

        else
        {
          v17 = OUTLINED_FUNCTION_18_11();
          if (!lpta_loadp_setscan_r(v17, v18) && !advance_tok(v2) && !advance_tok(v2) && !advance_tok(v2))
          {
LABEL_27:
            savescptr(v2, 6, v21);
          }

LABEL_28:
          OUTLINED_FUNCTION_18_11();
          convert_hundreds();
LABEL_29:
          v24 = 3;
        }

LABEL_30:
        OUTLINED_FUNCTION_18_11();
        insert_lang_large_number();
LABEL_31:
        *(v2 + 2898) -= v24;
        while_iterate(v2, 1, 2);
      }

      v10 = *(v2 + 104);
      if (v10)
      {
        *(v2 + 104) = 0;
        v11 = v10;
      }

      else
      {
        v11 = OUTLINED_FUNCTION_39_2();
      }

      switch(v11)
      {
        case 1:
          convert_hundreds();
          break;
        case 2:
          goto LABEL_11;
        case 3:
          goto LABEL_12;
        case 4:
          v12 = v24;
          goto LABEL_13;
        case 5:
          goto LABEL_28;
        case 6:
          goto LABEL_27;
        case 7:
          goto LABEL_29;
        case 8:
        case 12:
          goto LABEL_30;
        case 9:
          goto LABEL_19;
        case 10:
          goto LABEL_18;
        case 11:
          goto LABEL_17;
        case 13:
          goto LABEL_22;
        case 14:
          goto LABEL_21;
        case 15:
          goto LABEL_31;
        case 16:
          continue;
        case 17:
          goto LABEL_34;
        default:
          goto LABEL_3;
      }

      break;
    }

LABEL_34:
    *(v19 + 8) = v26;
    vretproc(v2);
  }

  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_38_3();
}

uint64_t spell_out_large_num()
{
  OUTLINED_FUNCTION_6_15();
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_16(v3, v4, v5, v6, v7, v8, v9, v10, v60, v66, v72, v78, v84, v90, v96, v102, v108, v114, v120, v126, v132, v138, v144, v150, v156, v162, v168, v174, v180, v186, v192, v198, v199, v200, v201);
  OUTLINED_FUNCTION_10_15(v11, v12, v13, v14, v15, v16, v17, v18, v61, v67, v73, v79, v85, v91, v97, v103, v109, v115, v121, v127, v133, v139, v145, v151, v157, v163, v169, v175, v181, v187, v193, v198, v199, v200, v201, v202, v203, v204, v205, v206);
  v19 = setjmp(v1);
  if (v19 || (v27 = OUTLINED_FUNCTION_2_16(v19, v20, v21, v22, v23, v24, v25, v26, v62, v68, v74, v80, v86, v92, v98, v104, v110, v116, v122, v128, v134, v140, v146, v152, v158, v164, v170, v176, v182, v188, v194, v198, v199, v200, v201, v202, SBYTE4(v202), v203, SWORD2(v203), SBYTE6(v203), v204, SWORD2(v204), SBYTE6(v204), SHIBYTE(v204), v205, v206), v27))
  {
LABEL_3:
    vretproc(v0);
    result = 94;
  }

  else
  {
    OUTLINED_FUNCTION_27_7(v27, v28, v29, v30, v31, v32, v33, v34, v63, v69, v75, v81, v87, v93, v99, v105, v111, v117, v123, v129, v135, v141, v147, v153, v159, v165, v171, v177, v183, v189, v195, v198, v199, v200);
    OUTLINED_FUNCTION_14_13(v37, v38, v39, v40, v41, v42, v43, v44, v64, v70, v76, v82, v88, v94, v100, v106, v112, v118, v124, v130, v136, v142, v148, v154, v160, v166, v172, v178, v184, v190, v196, v198);
    fence_17(v0);
    v45 = *(v0 + 5130);
    OUTLINED_FUNCTION_33_4();
    if (!v54)
    {
      v55 = OUTLINED_FUNCTION_35_3();
      starttest(v55, v56);
      if (!lpta_loadp_setscan_r(v0, &v198))
      {
        do
        {
LABEL_9:
          bspush_ca_scan(v0, 3);
          v57 = OUTLINED_FUNCTION_12_15();
        }

        while (!testFldeq(v57, v58, 3, 1) && !advance_tok(v0));
        v59 = *(v0 + 104);
        if (v59)
        {
          v46 = OUTLINED_FUNCTION_31_5(v59);
        }

        else
        {
          v46 = OUTLINED_FUNCTION_39_2();
        }

        switch(v46)
        {
          case 1:
          case 5:
            goto LABEL_8;
          case 2:
            break;
          case 3:
            savescptr(v0, 3, &v198);
            break;
          case 4:
            goto LABEL_9;
          default:
            goto LABEL_3;
        }
      }

      OUTLINED_FUNCTION_4_15();
      v46 = spell_out_alphanum();
    }

LABEL_8:
    OUTLINED_FUNCTION_25_9(v46, v47, v48, v49, v50, v51, v52, v53, v65, v71, v77, v83, v89, v95, v101, v107, v113, v119, v125, v131, v137, v143, v149, v155, v161, v167, v173, v179, v185, v191, v197, v198, v199);
    result = 0;
  }

  v36 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t insert_single_digit()
{
  OUTLINED_FUNCTION_6_15();
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_16(v3, v4, v5, v6, v7, v8, v9, v10, v35, v38, v41, v44, v47, v50, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113);
  OUTLINED_FUNCTION_10_15(v11, v12, v13, v14, v15, v16, v17, v18, v36, v39, v42, v45, v48, v51, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v116, v118, v120, v122, v124);
  v19 = setjmp(v1);
  if (v19 || OUTLINED_FUNCTION_2_16(v19, v20, v21, v22, v23, v24, v25, v26, v37, v40, v43, v46, v49, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, *v117, v117[4], *v119, *&v119[4], v119[6], v121, SWORD2(v121), SBYTE6(v121), SHIBYTE(v121), v123, v125))
  {
    v27 = 94;
  }

  else
  {
    v30 = OUTLINED_FUNCTION_5_15();
    get_parm(v30, v31, v32, -6);
    v33 = OUTLINED_FUNCTION_18_11();
    OUTLINED_FUNCTION_28_6(v33, v34);
    fence_17(v0);
    OUTLINED_FUNCTION_5_15();
    char_name();
    v27 = 0;
  }

  vretproc(v0);
  v28 = *MEMORY[0x277D85DE8];
  return v27;
}

uint64_t convert_1_or_2_digits()
{
  OUTLINED_FUNCTION_6_15();
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_16(v4, v5, v6, v7, v8, v9, v10, v11, v44, v48, v52, v56, v60, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144, v147);
  OUTLINED_FUNCTION_10_15(v12, v13, v14, v15, v16, v17, v18, v19, v45, v49, v53, v57, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, v148, v150, v152, v154, v156, v158);
  v20 = setjmp(v2);
  if (v20 || OUTLINED_FUNCTION_2_16(v20, v21, v22, v23, v24, v25, v26, v27, v46, v50, v54, v58, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142, v146, v149, *v151, v151[4], *v153, *&v153[4], v153[6], v155, SWORD2(v155), SBYTE6(v155), SHIBYTE(v155), v157, v159))
  {
    v28 = 94;
  }

  else
  {
    v31 = OUTLINED_FUNCTION_5_15();
    get_parm(v31, v32, v33, -6);
    OUTLINED_FUNCTION_14_13(v34, v35, v36, v37, v38, v39, v40, v41, v47, v51, v55, v59, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139);
    fence_17(v0);
    v42 = OUTLINED_FUNCTION_15_13();
    if (lpta_loadp_setscan_r(v42, v43) || advance_tok(v0) || (*(v0 + 136) = 1, *(v0 + 112) = v143, *(v0 + 128) = 0, test_ptr(v0)))
    {
      OUTLINED_FUNCTION_4_15();
      convert_double();
    }

    else
    {
      OUTLINED_FUNCTION_4_15();
      char_name();
    }

    *(v1 + 8) = v143;
    v28 = 0;
  }

  vretproc(v0);
  v29 = *MEMORY[0x277D85DE8];
  return v28;
}

void convert_roman_nums()
{
  OUTLINED_FUNCTION_37_3();
  v1 = v0;
  v3 = v2;
  v281 = *MEMORY[0x277D85DE8];
  v276 = 0;
  v275 = 0;
  v274 = 0;
  v273 = 0;
  v272 = 0;
  v271 = 0;
  v270 = 0;
  v269 = 0;
  OUTLINED_FUNCTION_20_9();
  bzero(v268, v4);
  OUTLINED_FUNCTION_19_10();
  bzero(v280, v5);
  v267 = v3;
  if (!setjmp(v280) && !ventproc(v3, v268, v279, v278, v277, v280))
  {
    get_parm(v3, &v275, v1, -6);
    OUTLINED_FUNCTION_28_6(v3, &v273);
    push_ptr_init(v3, &v271);
    v270 = 0xFFFC0000FFFCLL;
    v269 = 65532;
    fence_17(v3);
    v272 = *(v3 + 3352);
    HIWORD(v270) = 0;
    starttest(v3, 1);
    if (!lpta_loadp_setscan_r(v3, &v275))
    {
      bspush_boa(v3);
      v7 = 0;
      HIDWORD(v266) = 0;
      v8 = 2;
      v264 = 9;
      v265 = 2;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      while (1)
      {
        v12 = v11;
        bspush_ca_scan(v3, v8);
        OUTLINED_FUNCTION_9_15();
        v13 = test_string_s();
        LODWORD(v260) = v7;
        v258 = __PAIR64__(v9, v10);
        HIDWORD(v256) = v12;
        v20 = v7;
        v21 = v12;
        if (v13)
        {
          break;
        }

LABEL_136:
        v127 = HIDWORD(v256);
        v10 = v258;
        v9 = HIDWORD(v258);
        v7 = v260;
        v128 = OUTLINED_FUNCTION_36_3(v13, v14, v15, v16, v21, v17, v18, v19, v179, v180, v182, v184, v186, v188, v190, v192, v194, v196, v198, v200, v202, v204, v206, v208, v210, v212, v214, v216, v218, v220, v222, v224, v226, v228, v230, v232, v234, v236, v238, v240, v242, v244, v246, v248, v250, v252, v254, v256, v258, v260, v262, v264, v265, v266, v267);
        bspush_ca_scan(v128, v264);
        v11 = v127;
LABEL_137:
        v8 = v265;
      }

      while (1)
      {
        v7 = v20;
        v22 = *(v267 + 104);
        if (v22)
        {
          *(v267 + 104) = 0;
          v23 = v22;
        }

        else
        {
          v24 = v21;
          v23 = vback(v267, SHIDWORD(v266));
          v21 = v24;
        }

        v25 = v23 - 2;
        v260 = __PAIR64__(v9, v7);
        v258 = __PAIR64__(v9, v10);
        v256 = __PAIR64__(v21, v7);
        HIDWORD(v252) = v7;
        HIDWORD(v254) = v7;
        HIDWORD(v250) = v7;
        LODWORD(v252) = v7;
        LODWORD(v250) = v7;
        HIDWORD(v248) = v7;
        LODWORD(v246) = v7;
        LODWORD(v244) = v7;
        LODWORD(v248) = v7;
        HIDWORD(v244) = v7;
        HIDWORD(v246) = v7;
        LODWORD(v240) = v9;
        HIDWORD(v240) = v9;
        LODWORD(v242) = v7;
        HIDWORD(v242) = v7;
        HIDWORD(v236) = v9;
        v238 = __PAIR64__(v9, v7);
        HIDWORD(v234) = v7;
        LODWORD(v236) = v9;
        HIDWORD(v232) = v7;
        LODWORD(v234) = v7;
        LODWORD(v254) = v7;
        v228 = v9;
        HIDWORD(v230) = v7;
        LODWORD(v232) = 94;
        v226 = __PAIR64__(v7, v9);
        v222 = __PAIR64__(v7, v9);
        LODWORD(v224) = v7;
        HIDWORD(v224) = v7;
        HIDWORD(v218) = v9;
        v220 = __PAIR64__(v7, v9);
        LODWORD(v218) = v9;
        v212 = __PAIR64__(v9, v10);
        v214 = __PAIR64__(v9, v7);
        v210 = __PAIR64__(v9, v10);
        v216 = __PAIR64__(v9, v7);
        HIDWORD(v206) = v10;
        v208 = __PAIR64__(v7, v9);
        v204 = __PAIR64__(v10, v7);
        LODWORD(v202) = v7;
        LODWORD(v198) = v9;
        HIDWORD(v198) = v9;
        LODWORD(v230) = v7;
        LODWORD(v206) = v10;
        HIDWORD(v202) = v7;
        v196 = __PAIR64__(v10, v7);
        v200 = __PAIR64__(v9, v7);
        v194 = __PAIR64__(v9, v7);
        v15 = v10;
        v192 = __PAIR64__(v9, v7);
        v190 = __PAIR64__(v7, v10);
        v26 = v9;
        v19 = v10;
        v186 = __PAIR64__(v9, v10);
        v188 = __PAIR64__(v9, v7);
        v182 = __PAIR64__(v7, v10);
        v13 = v21;
        v184 = __PAIR64__(v9, v7);
        HIDWORD(v179) = v10;
        v180 = __PAIR64__(v10, v9);
        v14 = v9;
        v27 = v10;
        v28 = v9;
        v18 = v10;
        v17 = v7;
        v29 = v9;
        v30 = v10;
        v31 = v9;
        v16 = v10;
        v3 = v9;
        v32 = v10;
        v33 = v21;
        v34 = v7;
        v262 = __PAIR64__(v21, v10);
        switch(v25)
        {
          case 0:
            v35 = OUTLINED_FUNCTION_24_9(v21, 4, v10, v10, v21, v7, v10, v10, v179, __SPAIR64__(v10, v9), __SPAIR64__(v7, v10), __SPAIR64__(v9, v7), __SPAIR64__(v9, v10), __SPAIR64__(v9, v7), __SPAIR64__(v7, v10), __SPAIR64__(v9, v7), __SPAIR64__(v9, v7), __SPAIR64__(v10, v7), v198, __SPAIR64__(v9, v7), v202, __SPAIR64__(v10, v7), v206, __SPAIR64__(v7, v9), __SPAIR64__(v9, v10), __SPAIR64__(v9, v10), __SPAIR64__(v9, v7), __SPAIR64__(v9, v7), v218, __SPAIR64__(v7, v9), __SPAIR64__(v7, v9), v224, __SPAIR64__(v7, v9), v9, v230, v232, v234, v236, __SPAIR64__(v9, v7), v240, v242, v244, v246, v248, v250, v252, v254, __SPAIR64__(v21, v7), __SPAIR64__(v9, v10), __SPAIR64__(v9, v7), __SPAIR64__(v21, v10), v264, v265, v266, v267);
            bspush_ca_scan(v35, v36);
            goto LABEL_26;
          case 1:
            goto LABEL_136;
          case 2:
            v55 = OUTLINED_FUNCTION_24_9(v21, 5, v10, v10, v21, v7, v10, v10, v179, __SPAIR64__(v10, v9), __SPAIR64__(v7, v10), __SPAIR64__(v9, v7), __SPAIR64__(v9, v10), __SPAIR64__(v9, v7), __SPAIR64__(v7, v10), __SPAIR64__(v9, v7), __SPAIR64__(v9, v7), __SPAIR64__(v10, v7), v198, __SPAIR64__(v9, v7), v202, __SPAIR64__(v10, v7), v206, __SPAIR64__(v7, v9), __SPAIR64__(v9, v10), __SPAIR64__(v9, v10), __SPAIR64__(v9, v7), __SPAIR64__(v9, v7), v218, __SPAIR64__(v7, v9), __SPAIR64__(v7, v9), v224, __SPAIR64__(v7, v9), v9, v230, v232, v234, v236, __SPAIR64__(v9, v7), v240, v242, v244, v246, v248, v250, v252, v254, __SPAIR64__(v21, v7), __SPAIR64__(v9, v10), __SPAIR64__(v9, v7), __SPAIR64__(v21, v10), v264, v265, v266, v267);
            bspush_ca_scan(v55, v56);
            goto LABEL_26;
          case 3:
            v57 = OUTLINED_FUNCTION_24_9(v21, 6, v10, v10, v21, v7, v10, v10, v179, __SPAIR64__(v10, v9), __SPAIR64__(v7, v10), __SPAIR64__(v9, v7), __SPAIR64__(v9, v10), __SPAIR64__(v9, v7), __SPAIR64__(v7, v10), __SPAIR64__(v9, v7), __SPAIR64__(v9, v7), __SPAIR64__(v10, v7), v198, __SPAIR64__(v9, v7), v202, __SPAIR64__(v10, v7), v206, __SPAIR64__(v7, v9), __SPAIR64__(v9, v10), __SPAIR64__(v9, v10), __SPAIR64__(v9, v7), __SPAIR64__(v9, v7), v218, __SPAIR64__(v7, v9), __SPAIR64__(v7, v9), v224, __SPAIR64__(v7, v9), v9, v230, v232, v234, v236, __SPAIR64__(v9, v7), v240, v242, v244, v246, v248, v250, v252, v254, __SPAIR64__(v21, v7), __SPAIR64__(v9, v10), __SPAIR64__(v9, v7), __SPAIR64__(v21, v10), v264, v265, v266, v267);
            bspush_ca_scan(v57, v58);
            goto LABEL_26;
          case 4:
            v51 = OUTLINED_FUNCTION_24_9(v21, 7, v10, v10, v21, v7, v10, v10, v179, __SPAIR64__(v10, v9), __SPAIR64__(v7, v10), __SPAIR64__(v9, v7), __SPAIR64__(v9, v10), __SPAIR64__(v9, v7), __SPAIR64__(v7, v10), __SPAIR64__(v9, v7), __SPAIR64__(v9, v7), __SPAIR64__(v10, v7), v198, __SPAIR64__(v9, v7), v202, __SPAIR64__(v10, v7), v206, __SPAIR64__(v7, v9), __SPAIR64__(v9, v10), __SPAIR64__(v9, v10), __SPAIR64__(v9, v7), __SPAIR64__(v9, v7), v218, __SPAIR64__(v7, v9), __SPAIR64__(v7, v9), v224, __SPAIR64__(v7, v9), v9, v230, v232, v234, v236, __SPAIR64__(v9, v7), v240, v242, v244, v246, v248, v250, v252, v254, __SPAIR64__(v21, v7), __SPAIR64__(v9, v10), __SPAIR64__(v9, v7), __SPAIR64__(v21, v10), v264, v265, v266, v267);
            bspush_ca_scan(v51, v52);
            goto LABEL_26;
          case 5:
            v53 = OUTLINED_FUNCTION_24_9(v21, 8, v10, v10, v21, v7, v10, v10, v179, __SPAIR64__(v10, v9), __SPAIR64__(v7, v10), __SPAIR64__(v9, v7), __SPAIR64__(v9, v10), __SPAIR64__(v9, v7), __SPAIR64__(v7, v10), __SPAIR64__(v9, v7), __SPAIR64__(v9, v7), __SPAIR64__(v10, v7), v198, __SPAIR64__(v9, v7), v202, __SPAIR64__(v10, v7), v206, __SPAIR64__(v7, v9), __SPAIR64__(v9, v10), __SPAIR64__(v9, v10), __SPAIR64__(v9, v7), __SPAIR64__(v9, v7), v218, __SPAIR64__(v7, v9), __SPAIR64__(v7, v9), v224, __SPAIR64__(v7, v9), v9, v230, v232, v234, v236, __SPAIR64__(v9, v7), v240, v242, v244, v246, v248, v250, v252, v254, __SPAIR64__(v21, v7), __SPAIR64__(v9, v10), __SPAIR64__(v9, v7), __SPAIR64__(v21, v10), v264, v265, v266, v267);
            bspush_ca_scan(v53, v54);
            goto LABEL_26;
          case 6:
LABEL_26:
            OUTLINED_FUNCTION_9_15();
            v13 = test_string_s();
            LODWORD(v260) = v7;
            v9 = HIDWORD(v260);
            v10 = v262;
            v258 = __PAIR64__(HIDWORD(v260), v262);
            v21 = HIDWORD(v262);
            HIDWORD(v256) = HIDWORD(v262);
            v20 = v7;
            if (!v13)
            {
              goto LABEL_136;
            }

            continue;
          case 7:
            v37 = OUTLINED_FUNCTION_24_9(v21, v9, v10, v10, v21, v7, v10, v10, v179, __SPAIR64__(v10, v9), __SPAIR64__(v7, v10), __SPAIR64__(v9, v7), __SPAIR64__(v9, v10), __SPAIR64__(v9, v7), __SPAIR64__(v7, v10), __SPAIR64__(v9, v7), __SPAIR64__(v9, v7), __SPAIR64__(v10, v7), v198, __SPAIR64__(v9, v7), v202, __SPAIR64__(v10, v7), v206, __SPAIR64__(v7, v9), __SPAIR64__(v9, v10), __SPAIR64__(v9, v10), __SPAIR64__(v9, v7), __SPAIR64__(v9, v7), v218, __SPAIR64__(v7, v9), __SPAIR64__(v7, v9), v224, __SPAIR64__(v7, v9), v9, v230, v232, v234, v236, __SPAIR64__(v9, v7), v240, v242, v244, v246, v248, v250, v252, v254, __SPAIR64__(v21, v7), __SPAIR64__(v9, v10), __SPAIR64__(v9, v7), __SPAIR64__(v21, v10), v264, v265, v266, v267);
            bspush_nboa(v37);
            *(v33 + 136) = 1;
            *(v33 + 112) = v274;
            *(v33 + 128) = 0;
            test_ptr(v33);
            OUTLINED_FUNCTION_7_15();
            if (v38)
            {
              continue;
            }

            v272 = v276;
            v44 = OUTLINED_FUNCTION_24_9(v38, &v271, v39, v40, v21, v41, v42, v43, v179, v181, v183, v185, v187, v189, v191, v193, v195, v197, v199, v201, v203, v205, v207, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249, v251, v253, v255, v257, v259, v261, v263, v264, v265, v266, v267);
            v13 = lpta_loadp_setscan_r(v44, v45);
            if (v13 || (OUTLINED_FUNCTION_1_16(), v13 = test_string_s(), v13))
            {
              LODWORD(v256) = v7;
            }

            else
            {
LABEL_16:
              OUTLINED_FUNCTION_13_15(12, v179, v180, v182, v184, v186, v188, v190, v192, v194, v196, v198, v200, v202, v204, v206, v208, v210, v212, v214, v216, v218, v220, v222, v224, v226, v228, v230, v232, v234, v236, v238, v240, v242, v244, v246, v248, v250, v252, v254, v256, v258, v260, v262, v264, v265, v266, v267);
              LODWORD(v256) = v7 + 1;
            }

LABEL_17:
            v46 = v256;
            v13 = OUTLINED_FUNCTION_16_13(v13, v14, v15, v16, v21, v17, v18, v19, v179, v180, v182, v184, v186, v188, v190, v192, v194, v196, v198, v200, v202, v204, v206, v208, v210, v212, v214, v216, v218, v220, v222, v224, v226, v228, v230, v232, v234, v236, v238, v240, v242, v244, v246, v248, v250, v252, v254, v256, v258, v260, v262, v264, v265, v266, v267);
            if (v13)
            {
              HIDWORD(v254) = v46;
            }

            else
            {
              OUTLINED_FUNCTION_9_15();
              v13 = test_string_s();
              HIDWORD(v252) = v46;
              HIDWORD(v254) = v46;
              if (!v13)
              {
LABEL_34:
                v59 = HIDWORD(v252);
                OUTLINED_FUNCTION_13_15(14, v179, v180, v182, v184, v186, v188, v190, v192, v194, v196, v198, v200, v202, v204, v206, v208, v210, v212, v214, v216, v218, v220, v222, v224, v226, v228, v230, v232, v234, v236, v238, v240, v242, v244, v246, v248, v250, v252, v254, v256, v258, v260, v262, v264, v265, v266, v267);
                HIDWORD(v254) = v59 + 1;
              }
            }

LABEL_35:
            v60 = HIDWORD(v254);
            v13 = OUTLINED_FUNCTION_16_13(v13, v14, v15, v16, v21, v17, v18, v19, v179, v180, v182, v184, v186, v188, v190, v192, v194, v196, v198, v200, v202, v204, v206, v208, v210, v212, v214, v216, v218, v220, v222, v224, v226, v228, v230, v232, v234, v236, v238, v240, v242, v244, v246, v248, v250, v252, v254, v256, v258, v260, v262, v264, v265, v266, v267);
            if (v13)
            {
              LODWORD(v252) = v60;
            }

            else
            {
              OUTLINED_FUNCTION_9_15();
              v13 = test_string_s();
              HIDWORD(v250) = v60;
              LODWORD(v252) = v60;
              if (!v13)
              {
LABEL_38:
                v61 = HIDWORD(v250);
                OUTLINED_FUNCTION_13_15(16, v179, v180, v182, v184, v186, v188, v190, v192, v194, v196, v198, v200, v202, v204, v206, v208, v210, v212, v214, v216, v218, v220, v222, v224, v226, v228, v230, v232, v234, v236, v238, v240, v242, v244, v246, v248, v250, v252, v254, v256, v258, v260, v262, v264, v265, v266, v267);
                LODWORD(v252) = v61 + 1;
              }
            }

LABEL_39:
            v62 = v252;
            v13 = OUTLINED_FUNCTION_16_13(v13, v14, v15, v16, v21, v17, v18, v19, v179, v180, v182, v184, v186, v188, v190, v192, v194, v196, v198, v200, v202, v204, v206, v208, v210, v212, v214, v216, v218, v220, v222, v224, v226, v228, v230, v232, v234, v236, v238, v240, v242, v244, v246, v248, v250, v252, v254, v256, v258, v260, v262, v264, v265, v266, v267);
            if (v13)
            {
              HIDWORD(v248) = v62;
            }

            else
            {
              v13 = test_string_s();
              LODWORD(v250) = v62;
              HIDWORD(v248) = v62;
              if (!v13)
              {
LABEL_58:
                v72 = v250;
                OUTLINED_FUNCTION_13_15(18, v179, v180, v182, v184, v186, v188, v190, v192, v194, v196, v198, v200, v202, v204, v206, v208, v210, v212, v214, v216, v218, v220, v222, v224, v226, v228, v230, v232, v234, v236, v238, v240, v242, v244, v246, v248, v250, v252, v254, v256, v258, v260, v262, v264, v265, v266, v267);
                v65 = HIDWORD(v260) + 9;
                goto LABEL_60;
              }
            }

LABEL_42:
            v63 = HIDWORD(v248);
            if (OUTLINED_FUNCTION_16_13(v13, v14, v15, v16, v21, v17, v18, v19, v179, v180, v182, v184, v186, v188, v190, v192, v194, v196, v198, v200, v202, v204, v206, v208, v210, v212, v214, v216, v218, v220, v222, v224, v226, v228, v230, v232, v234, v236, v238, v240, v242, v244, v246, v248, v250, v252, v254, v256, v258, v260, v262, v264, v265, v266, v267))
            {
              LODWORD(v244) = v63;
            }

            else
            {
              LODWORD(v246) = v63;
              LODWORD(v244) = v63;
              if (!test_string_s())
              {
LABEL_57:
                v72 = v246;
                OUTLINED_FUNCTION_13_15(21, v179, v180, v182, v184, v186, v188, v190, v192, v194, v196, v198, v200, v202, v204, v206, v208, v210, v212, v214, v216, v218, v220, v222, v224, v226, v228, v230, v232, v234, v236, v238, v240, v242, v244, v246, v248, v250, v252, v254, v256, v258, v260, v262, v264, v265, v266, v267);
                v65 = HIDWORD(v260) + 4;
                goto LABEL_60;
              }
            }

LABEL_45:
            starttest(v267, 22);
            v13 = lpta_loadp_setscan_r(v267, &v271);
            if (v13)
            {
              LODWORD(v234) = v244;
LABEL_47:
              v64 = v234;
              v13 = OUTLINED_FUNCTION_16_13(v13, v14, v15, v16, v21, v17, v18, v19, v179, v180, v182, v184, v186, v188, v190, v192, v194, v196, v198, v200, v202, v204, v206, v208, v210, v212, v214, v216, v218, v220, v222, v224, v226, v228, v230, v232, v234, v236, v238, v240, v242, v244, v246, v248, v250, v252, v254, v256, v258, v260, v262, v264, v265, v266, v267);
              if (v13 || (OUTLINED_FUNCTION_9_15(), v13 = test_string_s(), HIDWORD(v232) = v64, v13))
              {
                LODWORD(v254) = v64;
                v65 = HIDWORD(v260);
LABEL_67:
                HIDWORD(v240) = v65;
                goto LABEL_68;
              }

LABEL_59:
              v72 = HIDWORD(v232);
              OUTLINED_FUNCTION_13_15(30, v179, v180, v182, v184, v186, v188, v190, v192, v194, v196, v198, v200, v202, v204, v206, v208, v210, v212, v214, v216, v218, v220, v222, v224, v226, v228, v230, v232, v234, v236, v238, v240, v242, v244, v246, v248, v250, v252, v254, v256, v258, v260, v262, v264, v265, v266, v267);
              v65 = HIDWORD(v260) + 5;
LABEL_60:
              LODWORD(v254) = v72;
              goto LABEL_67;
            }

            bspush_ca_scan(v267, 23);
            OUTLINED_FUNCTION_9_15();
            test_string_s();
            LODWORD(v248) = v244;
            OUTLINED_FUNCTION_7_15();
            if (!v66)
            {
LABEL_51:
              OUTLINED_FUNCTION_9_15();
              test_string_s();
              HIDWORD(v244) = v248;
              OUTLINED_FUNCTION_7_15();
              if (!v13)
              {
LABEL_52:
                v67 = HIDWORD(v244);
                v68 = OUTLINED_FUNCTION_36_3(v13, 24, v15, v16, v21, v17, v18, v19, v179, v180, v182, v184, v186, v188, v190, v192, v194, v196, v198, v200, v202, v204, v206, v208, v210, v212, v214, v216, v218, v220, v222, v224, v226, v228, v230, v232, v234, v236, v238, v240, v242, v244, v246, v248, v250, v252, v254, v256, v258, v260, v262, v264, v265, v266, v267);
                savescptr(v68, v69, &v271);
                v13 = lpta_loadp_setscan_l(v9, &v271);
                if (v13 || (v13 = advance_tok(v9), v13))
                {
                  HIDWORD(v246) = v67;
                  LODWORD(v240) = HIDWORD(v260) + 1;
                }

                else
                {
                  OUTLINED_FUNCTION_9_15();
                  v13 = test_string_s();
                  v126 = HIDWORD(v260) + 6;
                  if (v13)
                  {
                    v126 = HIDWORD(v260) + 1;
                  }

                  HIDWORD(v246) = v67;
                  LODWORD(v240) = v126;
                }

LABEL_55:
                v70 = v240;
                v71 = HIDWORD(v246);
                v13 = OUTLINED_FUNCTION_11_15(v13, v14, v15, v16, v21, v17, v18, v19, v179, v180, v182, v184, v186, v188, v190, v192, v194, v196, v198, v200, v202, v204, v206, v208, v210, v212, v214, v216, v218, v220, v222, v224, v226, v228, v230, v232, v234, v236, v238, v240, v242, v244, v246, v248, v250, v252, v254, v256, v258, v260, v262, v264, v265, v266, v267);
                if (v13)
                {
                  HIDWORD(v242) = v71;
                  HIDWORD(v236) = v70;
                }

                else
                {
                  OUTLINED_FUNCTION_9_15();
                  v13 = test_string_s();
                  LODWORD(v242) = v71;
                  HIDWORD(v238) = v70;
                  HIDWORD(v242) = v71;
                  HIDWORD(v236) = v70;
                  if (!v13)
                  {
LABEL_62:
                    v73 = HIDWORD(v238);
                    v74 = v242;
                    OUTLINED_FUNCTION_13_15(27, v179, v180, v182, v184, v186, v188, v190, v192, v194, v196, v198, v200, v202, v204, v206, v208, v210, v212, v214, v216, v218, v220, v222, v224, v226, v228, v230, v232, v234, v236, v238, v240, v242, v244, v246, v248, v250, v252, v254, v256, v258, v260, v262, v264, v265, v266, v267);
                    HIDWORD(v242) = v74;
                    HIDWORD(v236) = v73 + 1;
                  }
                }

LABEL_63:
                v75 = HIDWORD(v236);
                v76 = HIDWORD(v242);
                v13 = OUTLINED_FUNCTION_11_15(v13, v14, v15, v16, v21, v17, v18, v19, v179, v180, v182, v184, v186, v188, v190, v192, v194, v196, v198, v200, v202, v204, v206, v208, v210, v212, v214, v216, v218, v220, v222, v224, v226, v228, v230, v232, v234, v236, v238, v240, v242, v244, v246, v248, v250, v252, v254, v256, v258, v260, v262, v264, v265, v266, v267);
                if (v13)
                {
                  LODWORD(v254) = v76;
                  HIDWORD(v240) = v75;
                  goto LABEL_68;
                }

                OUTLINED_FUNCTION_9_15();
                v13 = test_string_s();
                LODWORD(v238) = v76;
                LODWORD(v236) = v75;
                LODWORD(v254) = v76;
                HIDWORD(v240) = v75;
                if (!v13)
                {
LABEL_66:
                  v77 = v236;
                  v78 = v238;
                  OUTLINED_FUNCTION_13_15(29, v179, v180, v182, v184, v186, v188, v190, v192, v194, v196, v198, v200, v202, v204, v206, v208, v210, v212, v214, v216, v218, v220, v222, v224, v226, v228, v230, v232, v234, v236, v238, v240, v242, v244, v246, v248, v250, v252, v254, v256, v258, v260, v262, v264, v265, v266, v267);
                  v65 = v77 + 1;
                  LODWORD(v254) = v78;
                  goto LABEL_67;
                }

LABEL_68:
                v79 = HIDWORD(v240);
                v80 = v254;
                v13 = OUTLINED_FUNCTION_11_15(v13, v14, v15, v16, v21, v17, v18, v19, v179, v180, v182, v184, v186, v188, v190, v192, v194, v196, v198, v200, v202, v204, v206, v208, v210, v212, v214, v216, v218, v220, v222, v224, v226, v228, v230, v232, v234, v236, v238, v240, v242, v244, v246, v248, v250, v252, v254, v256, v258, v260, v262, v264, v265, v266, v267);
                if (v13)
                {
                  HIDWORD(v230) = v80;
                  LODWORD(v226) = v79;
                }

                else
                {
                  OUTLINED_FUNCTION_23_9();
                  v13 = test_string_s();
                  HIDWORD(v234) = v80;
                  LODWORD(v228) = v79;
                  HIDWORD(v230) = v80;
                  LODWORD(v226) = v79;
                  if (!v13)
                  {
LABEL_86:
                    v94 = v228;
                    v95 = HIDWORD(v234);
                    OUTLINED_FUNCTION_13_15(32, v179, v180, v182, v184, v186, v188, v190, v192, v194, v196, v198, v200, v202, v204, v206, v208, v210, v212, v214, v216, v218, v220, v222, v224, v226, v228, v230, v232, v234, v236, v238, v240, v242, v244, v246, v248, v250, v252, v254, v256, v258, v260, v262, v264, v265, v266, v267);
                    v85 = v262 + 9;
                    goto LABEL_89;
                  }
                }

LABEL_71:
                v81 = v226;
                v82 = HIDWORD(v230);
                if (OUTLINED_FUNCTION_11_15(v13, v14, v15, v16, v21, v17, v18, v19, v179, v180, v182, v184, v186, v188, v190, v192, v194, v196, v198, v200, v202, v204, v206, v208, v210, v212, v214, v216, v218, v220, v222, v224, v226, v228, v230, v232, v234, v236, v238, v240, v242, v244, v246, v248, v250, v252, v254, v256, v258, v260, v262, v264, v265, v266, v267))
                {
                  HIDWORD(v224) = v82;
                  HIDWORD(v218) = v81;
                }

                else
                {
                  OUTLINED_FUNCTION_23_9();
                  HIDWORD(v226) = v82;
                  LODWORD(v222) = v81;
                  HIDWORD(v224) = v82;
                  HIDWORD(v218) = v81;
                  if (!test_string_s())
                  {
LABEL_87:
                    v94 = v222;
                    v95 = HIDWORD(v226);
                    OUTLINED_FUNCTION_13_15(35, v179, v180, v182, v184, v186, v188, v190, v192, v194, v196, v198, v200, v202, v204, v206, v208, v210, v212, v214, v216, v218, v220, v222, v224, v226, v228, v230, v232, v234, v236, v238, v240, v242, v244, v246, v248, v250, v252, v254, v256, v258, v260, v262, v264, v265, v266, v267);
                    v85 = v262 + 4;
                    goto LABEL_89;
                  }
                }

LABEL_74:
                v9 = HIDWORD(v218);
                starttest(v267, 36);
                v13 = lpta_loadp_setscan_r(v267, &v271);
                if (v13)
                {
                  LODWORD(v204) = HIDWORD(v224);
                  HIDWORD(v200) = HIDWORD(v218);
LABEL_76:
                  v83 = HIDWORD(v200);
                  v84 = v204;
                  v13 = OUTLINED_FUNCTION_11_15(v13, v14, v15, v16, v21, v17, v18, v19, v179, v180, v182, v184, v186, v188, v190, v192, v194, v196, v198, v200, v202, v204, v206, v208, v210, v212, v214, v216, v218, v220, v222, v224, v226, v228, v230, v232, v234, v236, v238, v240, v242, v244, v246, v248, v250, v252, v254, v256, v258, v260, v262, v264, v265, v266, v267);
                  if (v13 || (OUTLINED_FUNCTION_9_15(), v13 = test_string_s(), LODWORD(v202) = v84, LODWORD(v198) = v83, v13))
                  {
                    LODWORD(v230) = v84;
                    HIDWORD(v214) = v83;
                    v85 = v262;
LABEL_90:
                    LODWORD(v206) = v85;
                    goto LABEL_91;
                  }

LABEL_88:
                  v94 = v198;
                  v95 = v202;
                  OUTLINED_FUNCTION_13_15(44, v179, v180, v182, v184, v186, v188, v190, v192, v194, v196, v198, v200, v202, v204, v206, v208, v210, v212, v214, v216, v218, v220, v222, v224, v226, v228, v230, v232, v234, v236, v238, v240, v242, v244, v246, v248, v250, v252, v254, v256, v258, v260, v262, v264, v265, v266, v267);
                  v85 = v262 + 5;
LABEL_89:
                  LODWORD(v230) = v95;
                  HIDWORD(v214) = v94;
                  goto LABEL_90;
                }

                bspush_ca_scan(v267, 37);
                OUTLINED_FUNCTION_9_15();
                v86 = test_string_s();
                LODWORD(v224) = HIDWORD(v224);
                LODWORD(v220) = HIDWORD(v218);
                v20 = HIDWORD(v224);
                v10 = v262;
                v21 = HIDWORD(v262);
                if (!v86)
                {
LABEL_80:
                  v9 = v220;
                  OUTLINED_FUNCTION_9_15();
                  v13 = test_string_s();
                  HIDWORD(v220) = v224;
                  LODWORD(v218) = v220;
                  v20 = v224;
                  v10 = v262;
                  v21 = HIDWORD(v262);
                  if (!v13)
                  {
LABEL_81:
                    v87 = v218;
                    v88 = HIDWORD(v220);
                    v89 = OUTLINED_FUNCTION_36_3(v13, 38, v15, v16, v21, v17, v18, v19, v179, v180, v182, v184, v186, v188, v190, v192, v194, v196, v198, v200, v202, v204, v206, v208, v210, v212, v214, v216, v218, v220, v222, v224, v226, v228, v230, v232, v234, v236, v238, v240, v242, v244, v246, v248, v250, v252, v254, v256, v258, v260, v262, v264, v265, v266, v267);
                    savescptr(v89, v90, &v271);
                    v13 = lpta_loadp_setscan_l(v3, &v271);
                    if (v13 || (v13 = advance_tok(v3), v13))
                    {
                      HIDWORD(v222) = v88;
                      HIDWORD(v216) = v87;
                      LODWORD(v212) = v262 + 1;
                    }

                    else
                    {
                      OUTLINED_FUNCTION_9_15();
                      v13 = test_string_s();
                      v125 = v262 + 6;
                      if (v13)
                      {
                        v125 = v262 + 1;
                      }

                      HIDWORD(v222) = v88;
                      HIDWORD(v216) = v87;
                      LODWORD(v212) = v125;
                    }

LABEL_84:
                    v91 = v212;
                    v92 = HIDWORD(v216);
                    v93 = HIDWORD(v222);
                    v13 = OUTLINED_FUNCTION_21_9(v13, v14, v15, v16, v21, v17, v18, v19, v179, v180, v182, v184, v186, v188, v190, v192, v194, v196, v198, v200, v202, v204, v206, v208, v210, v212, v214, v216, v218, v220, v222, v224, v226, v228, v230, v232, v234, v236, v238, v240, v242, v244, v246, v248, v250, v252, v254, v256, v258, v260, v262, v264, v265, v266, v267);
                    if (v13)
                    {
                      LODWORD(v216) = v93;
                      HIDWORD(v210) = v92;
                      HIDWORD(v206) = v91;
                    }

                    else
                    {
                      OUTLINED_FUNCTION_9_15();
                      v13 = test_string_s();
                      HIDWORD(v212) = v92;
                      LODWORD(v214) = v93;
                      v210 = __PAIR64__(v92, v91);
                      LODWORD(v216) = v93;
                      HIDWORD(v206) = v91;
                      if (!v13)
                      {
LABEL_121:
                        v116 = v210;
                        v117 = HIDWORD(v212);
                        v118 = v214;
                        OUTLINED_FUNCTION_13_15(41, v179, v180, v182, v184, v186, v188, v190, v192, v194, v196, v198, v200, v202, v204, v206, v208, v210, v212, v214, v216, v218, v220, v222, v224, v226, v228, v230, v232, v234, v236, v238, v240, v242, v244, v246, v248, v250, v252, v254, v256, v258, v260, v262, v264, v265, v266, v267);
                        LODWORD(v216) = v118;
                        HIDWORD(v210) = v117;
                        HIDWORD(v206) = v116 + 1;
                      }
                    }

LABEL_122:
                    v119 = HIDWORD(v206);
                    v120 = HIDWORD(v210);
                    v121 = v216;
                    v13 = OUTLINED_FUNCTION_21_9(v13, v14, v15, v16, v21, v17, v18, v19, v179, v180, v182, v184, v186, v188, v190, v192, v194, v196, v198, v200, v202, v204, v206, v208, v210, v212, v214, v216, v218, v220, v222, v224, v226, v228, v230, v232, v234, v236, v238, v240, v242, v244, v246, v248, v250, v252, v254, v256, v258, v260, v262, v264, v265, v266, v267);
                    if (v13)
                    {
                      LODWORD(v230) = v121;
                      HIDWORD(v214) = v120;
                      LODWORD(v206) = v119;
                    }

                    else
                    {
                      OUTLINED_FUNCTION_9_15();
                      v13 = test_string_s();
                      v208 = __PAIR64__(v121, v120);
                      HIDWORD(v204) = v119;
                      LODWORD(v206) = v119;
                      LODWORD(v230) = v121;
                      HIDWORD(v214) = v120;
                      if (!v13)
                      {
LABEL_125:
                        v122 = HIDWORD(v204);
                        v123 = v208;
                        v124 = HIDWORD(v208);
                        OUTLINED_FUNCTION_13_15(43, v179, v180, v182, v184, v186, v188, v190, v192, v194, v196, v198, v200, v202, v204, v206, v208, v210, v212, v214, v216, v218, v220, v222, v224, v226, v228, v230, v232, v234, v236, v238, v240, v242, v244, v246, v248, v250, v252, v254, v256, v258, v260, v262, v264, v265, v266, v267);
                        v85 = v122 + 1;
                        LODWORD(v230) = v124;
                        HIDWORD(v214) = v123;
                        goto LABEL_90;
                      }
                    }

LABEL_91:
                    v96 = v206;
                    v10 = HIDWORD(v214);
                    v97 = v230;
                    v13 = OUTLINED_FUNCTION_11_15(v13, v14, v15, v16, v21, v17, v18, v19, v179, v180, v182, v184, v186, v188, v190, v192, v194, v196, v198, v200, v202, v204, v206, v208, v210, v212, v214, v216, v218, v220, v222, v224, v226, v228, v230, v232, v234, v236, v238, v240, v242, v244, v246, v248, v250, v252, v254, v256, v258, v260, v262, v264, v265, v266, v267);
                    if (v13)
                    {
                      LODWORD(v200) = v97;
                      HIDWORD(v194) = v10;
                      v15 = v96;
                    }

                    else
                    {
                      OUTLINED_FUNCTION_23_9();
                      v13 = test_string_s();
                      HIDWORD(v202) = v97;
                      HIDWORD(v198) = v10;
                      LODWORD(v200) = v97;
                      HIDWORD(v196) = v96;
                      HIDWORD(v194) = v10;
                      v15 = v96;
                      if (!v13)
                      {
LABEL_109:
                        v3 = HIDWORD(v198);
                        OUTLINED_FUNCTION_13_15(46, v179, v180, v182, v184, v186, v188, v190, v192, v194, v196, v198, v200, v202, v204, v206, v208, v210, v212, v214, v216, v218, v220, v222, v224, v226, v228, v230, v232, v234, v236, v238, v240, v242, v244, v246, v248, v250, v252, v254, v256, v258, v260, v262, v264, v265, v266, v267);
                        goto LABEL_117;
                      }
                    }

LABEL_94:
                    v98 = v15;
                    v10 = HIDWORD(v194);
                    v99 = v200;
                    if (OUTLINED_FUNCTION_11_15(v13, v14, v15, v16, v21, v17, v18, v19, v179, v180, v182, v184, v186, v188, v190, v192, v194, v196, v198, v200, v202, v204, v206, v208, v210, v212, v214, v216, v218, v220, v222, v224, v226, v228, v230, v232, v234, v236, v238, v240, v242, v244, v246, v248, v250, v252, v254, v256, v258, v260, v262, v264, v265, v266, v267))
                    {
                      LODWORD(v194) = v99;
                      v26 = v10;
                      v19 = v98;
                      goto LABEL_97;
                    }

                    OUTLINED_FUNCTION_23_9();
                    v100 = test_string_s();
                    LODWORD(v196) = v99;
                    HIDWORD(v192) = v10;
                    LODWORD(v194) = v99;
                    LODWORD(v190) = v98;
                    v26 = v10;
                    v19 = v98;
                    if (v100)
                    {
LABEL_97:
                      v30 = v19;
                      v9 = v26;
                      starttest(v267, 50);
                      v13 = lpta_loadp_setscan_r(v267, &v271);
                      if (v13)
                      {
                        v17 = v194;
                        v29 = v9;
LABEL_99:
                        v13 = OUTLINED_FUNCTION_21_9(v13, v14, v15, v16, v21, v17, v18, v19, v179, v180, v182, v184, v186, v188, v190, v192, v194, v196, v198, v200, v202, v204, v206, v208, v210, v212, v214, v216, v218, v220, v222, v224, v226, v228, v230, v232, v234, v236, v238, v240, v242, v244, v246, v248, v250, v252, v254, v256, v258, v260, v262, v264, v265, v266, v267);
                        if (v13 || (OUTLINED_FUNCTION_9_15(), v13 = test_string_s(), v31 = v29, v16 = v30, v13))
                        {
                          v3 = v29;
                        }

                        else
                        {
LABEL_111:
                          v3 = v31;
                          OUTLINED_FUNCTION_13_15(58, v179, v180, v182, v184, v186, v188, v190, v192, v194, v196, v198, v200, v202, v204, v206, v208, v210, v212, v214, v216, v218, v220, v222, v224, v226, v228, v230, v232, v234, v236, v238, v240, v242, v244, v246, v248, v250, v252, v254, v256, v258, v260, v262, v264, v265, v266, v267);
                        }

                        goto LABEL_117;
                      }

                      bspush_ca_scan(v267, 51);
                      OUTLINED_FUNCTION_9_15();
                      v101 = test_string_s();
                      LODWORD(v192) = v194;
                      HIDWORD(v188) = v9;
                      LODWORD(v186) = v30;
                      v20 = v194;
                      v10 = v30;
                      v21 = HIDWORD(v262);
                      if (!v101)
                      {
LABEL_103:
                        v10 = v186;
                        v9 = HIDWORD(v188);
                        OUTLINED_FUNCTION_9_15();
                        v102 = test_string_s();
                        LODWORD(v188) = v192;
                        HIDWORD(v184) = HIDWORD(v188);
                        LODWORD(v182) = v186;
                        v20 = v192;
                        v21 = HIDWORD(v262);
                        if (!v102)
                        {
LABEL_104:
                          v10 = v267;
                          savescptr(v267, 52, &v271);
                          if (lpta_loadp_setscan_l(v267, &v271) || advance_tok(v267))
                          {
                            HIDWORD(v190) = v188;
                            HIDWORD(v186) = HIDWORD(v184);
                            HIDWORD(v180) = v182;
                            v13 = (HIDWORD(v262) + 1);
                          }

                          else
                          {
                            OUTLINED_FUNCTION_9_15();
                            if (test_string_s())
                            {
                              v13 = (HIDWORD(v262) + 1);
                            }

                            else
                            {
                              v13 = (HIDWORD(v262) + 6);
                            }

                            HIDWORD(v190) = v188;
                            HIDWORD(v186) = HIDWORD(v184);
                            HIDWORD(v180) = v182;
                          }

LABEL_107:
                          v103 = HIDWORD(v180);
                          v104 = HIDWORD(v186);
                          v105 = HIDWORD(v190);
                          v13 = OUTLINED_FUNCTION_21_9(v13, v14, v15, v16, v21, v17, v18, v19, v179, v180, v182, v184, v186, v188, v190, v192, v194, v196, v198, v200, v202, v204, v206, v208, v210, v212, v214, v216, v218, v220, v222, v224, v226, v228, v230, v232, v234, v236, v238, v240, v242, v244, v246, v248, v250, v252, v254, v256, v258, v260, v262, v264, v265, v266, v267);
                          if (v13)
                          {
                            LODWORD(v184) = v105;
                            v14 = v104;
                            v27 = v103;
                          }

                          else
                          {
                            OUTLINED_FUNCTION_9_15();
                            v13 = test_string_s();
                            HIDWORD(v182) = v105;
                            LODWORD(v184) = v105;
                            HIDWORD(v179) = v103;
                            LODWORD(v180) = v104;
                            v14 = v104;
                            v27 = v103;
                            if (!v13)
                            {
LABEL_113:
                              v106 = HIDWORD(v179);
                              v107 = v180;
                              v108 = HIDWORD(v182);
                              OUTLINED_FUNCTION_13_15(55, v179, v180, v182, v184, v186, v188, v190, v192, v194, v196, v198, v200, v202, v204, v206, v208, v210, v212, v214, v216, v218, v220, v222, v224, v226, v228, v230, v232, v234, v236, v238, v240, v242, v244, v246, v248, v250, v252, v254, v256, v258, v260, v262, v264, v265, v266, v267);
                              LODWORD(v184) = v108;
                              v14 = v107;
                              v27 = v106;
                            }
                          }

LABEL_114:
                          v109 = v27;
                          v3 = v14;
                          v110 = OUTLINED_FUNCTION_24_9(v13, &v271, v15, v16, v21, v17, v18, v19, v179, v180, v182, v184, v186, v188, v190, v192, v194, v196, v198, v200, v202, v204, v206, v208, v210, v212, v214, v216, v218, v220, v222, v224, v226, v228, v230, v232, v234, v236, v238, v240, v242, v244, v246, v248, v250, v252, v254, v256, v258, v260, v262, v264, v265, v266, v267);
                          v13 = lpta_loadp_setscan_r(v110, v111);
                          if (!v13)
                          {
                            OUTLINED_FUNCTION_1_16();
                            v13 = test_string_s();
                            v28 = v3;
                            v18 = v109;
                            if (!v13)
                            {
LABEL_116:
                              v3 = v28;
                              OUTLINED_FUNCTION_13_15(57, v179, v180, v182, v184, v186, v188, v190, v192, v194, v196, v198, v200, v202, v204, v206, v208, v210, v212, v214, v216, v218, v220, v222, v224, v226, v228, v230, v232, v234, v236, v238, v240, v242, v244, v246, v248, v250, v252, v254, v256, v258, v260, v262, v264, v265, v266, v267);
                            }
                          }

                          goto LABEL_117;
                        }
                      }
                    }

                    else
                    {
LABEL_110:
                      v3 = HIDWORD(v192);
                      OUTLINED_FUNCTION_13_15(49, v179, v180, v182, v184, v186, v188, v190, v192, v194, v196, v198, v200, v202, v204, v206, v208, v210, v212, v214, v216, v218, v220, v222, v224, v226, v228, v230, v232, v234, v236, v238, v240, v242, v244, v246, v248, v250, v252, v254, v256, v258, v260, v262, v264, v265, v266, v267);
LABEL_117:
                      v112 = OUTLINED_FUNCTION_36_3(v13, 59, v15, v16, v21, v17, v18, v19, v179, v180, v182, v184, v186, v188, v190, v192, v194, v196, v198, v200, v202, v204, v206, v208, v210, v212, v214, v216, v218, v220, v222, v224, v226, v228, v230, v232, v234, v236, v238, v240, v242, v244, v246, v248, v250, v252, v254, v256, v258, v260, v262, v264, v265, v266, v267);
                      starttest(v112, v113);
                      bspush_ca(v3);
                      lpta_loadpn(v3, &v271);
                      rpta_loadpn(v3, &v273);
                      compare_ptas(v3);
                      OUTLINED_FUNCTION_32_4();
                      if (!v114)
                      {
                        testneq(v267);
                        OUTLINED_FUNCTION_32_4();
                        if (!v115)
                        {
                          goto LABEL_4;
                        }
                      }
                    }
                  }
                }
              }
            }

            break;
          case 8:
            v9 = v9;
            v10 = v10;
            v11 = v21;
            v3 = v267;
            goto LABEL_137;
          case 9:
            goto LABEL_17;
          case 10:
            goto LABEL_16;
          case 11:
            goto LABEL_35;
          case 12:
            goto LABEL_34;
          case 13:
            goto LABEL_39;
          case 14:
            goto LABEL_38;
          case 15:
            goto LABEL_42;
          case 16:
            goto LABEL_58;
          case 17:
          case 26:
            goto LABEL_68;
          case 18:
            goto LABEL_45;
          case 19:
            goto LABEL_57;
          case 20:
            goto LABEL_47;
          case 21:
            goto LABEL_51;
          case 22:
            goto LABEL_52;
          case 23:
            goto LABEL_55;
          case 24:
            goto LABEL_63;
          case 25:
            goto LABEL_62;
          case 27:
            goto LABEL_66;
          case 28:
            goto LABEL_59;
          case 29:
            goto LABEL_71;
          case 30:
            goto LABEL_86;
          case 31:
          case 40:
            goto LABEL_91;
          case 32:
            goto LABEL_74;
          case 33:
            goto LABEL_87;
          case 34:
            goto LABEL_76;
          case 35:
            goto LABEL_80;
          case 36:
            goto LABEL_81;
          case 37:
            goto LABEL_84;
          case 38:
            goto LABEL_122;
          case 39:
            goto LABEL_121;
          case 41:
            goto LABEL_125;
          case 42:
            goto LABEL_88;
          case 43:
            goto LABEL_94;
          case 44:
            goto LABEL_109;
          case 45:
          case 54:
            goto LABEL_117;
          case 46:
            goto LABEL_97;
          case 47:
            goto LABEL_110;
          case 48:
            goto LABEL_99;
          case 49:
            goto LABEL_103;
          case 50:
            goto LABEL_104;
          case 51:
            goto LABEL_107;
          case 52:
            goto LABEL_114;
          case 53:
            goto LABEL_113;
          case 55:
            goto LABEL_116;
          case 56:
            goto LABEL_111;
          case 57:
            copyvar(v267, (v267 + 2612), (v267 + 2640));
            lpta_rpta_loadp(v267, &v275, &v273);
            v47 = OUTLINED_FUNCTION_12_15();
            delete_2pt(v47, v48);
            OUTLINED_FUNCTION_7_15();
            if (v49)
            {
              continue;
            }

            startloop(v267, 62);
            move_i(v267, &v270 + 4, 0);
            move_i(v267, &v270, 1);
            v29 = &v269;
            move_i(v267, &v269, 3);
            for_test(v267, &v270 + 2, &v269, &v270);
            OUTLINED_FUNCTION_7_15();
            if (v50)
            {
              continue;
            }

            v34 = v7;
            OUTLINED_FUNCTION_7_15();
            WORD2(v228) = 0;
            goto LABEL_148;
          case 58:
            OUTLINED_FUNCTION_7_15();
            if (!v7)
            {
              v20 = v7;
              v9 = v9;
              v10 = v262;
              v21 = HIDWORD(v262);
              if (!v9)
              {
                v20 = v7;
                v9 = v9;
                v10 = v262;
                v21 = HIDWORD(v262);
                if (!v262)
                {
                  v20 = v7;
                  v9 = v9;
                  v10 = v262;
                  v21 = HIDWORD(v262);
                  if (!WORD2(v262))
                  {
                    goto LABEL_4;
                  }
                }
              }
            }

            continue;
          case 61:
            goto LABEL_148;
          case 62:
            v136 = OUTLINED_FUNCTION_26_9();
            goto LABEL_149;
          case 63:
            v146 = HIWORD(v270);
            v147 = v9;
            v148 = v10;
            v149 = v21;
            v32 = v267;
            while (2)
            {
              v130 = v148;
              v129 = v147;
              if (v146)
              {
                OUTLINED_FUNCTION_30_5();
              }

              else
              {
                OUTLINED_FUNCTION_17_12();
                v157 = OUTLINED_FUNCTION_0_17();
                insert_2pt_s(v157, v158, v159, v160, 0);
                OUTLINED_FUNCTION_30_5();
                v132 = 0;
                v131 = v149;
                if (!v161)
                {
                  goto LABEL_182;
                }
              }

LABEL_181:
              v169 = v152;
              *(v32 + 136) = 1;
              v129 = v151;
              v7 = v150;
              *(v32 + 112) = v276;
              *(v32 + 128) = 0;
              insert_r(v32);
              v130 = v29;
              v131 = v9;
              v132 = v169;
LABEL_182:
              v133 = v132;
              v134 = v131;
              if (HIWORD(v270))
              {
                v135 = HIWORD(v270);
                v29 = v7;
LABEL_184:
                if (v135 == 1)
                {
                  v170 = OUTLINED_FUNCTION_34_4();
                  starttest_e(v170, v171);
                  v34 = v29;
                  v9 = v129;
                  if (!(v129 | v29))
                  {
                    goto LABEL_4;
                  }
                }

                else
                {
                  v9 = v129;
LABEL_188:
                  v172 = OUTLINED_FUNCTION_34_4();
                  starttest(v172, v173);
                  if (HIWORD(v270) == 2)
                  {
                    v174 = OUTLINED_FUNCTION_34_4();
                    starttest_e(v174, v175);
                    v34 = v29;
                    if (!v29)
                    {
                      goto LABEL_4;
                    }
                  }

                  else
                  {
                    v34 = v29;
                  }
                }
              }

              else
              {
                v176 = OUTLINED_FUNCTION_34_4();
                starttest_e(v176, v177);
                if (v130 || v129)
                {
                  v34 = v7;
                  v9 = v129;
                }

                else
                {
                  v34 = v7;
                  v9 = v129;
                  if (!v7)
                  {
                    goto LABEL_4;
                  }
                }
              }

LABEL_197:
              v10 = v130;
              v178 = for_adv(v32, 62, 63, &v270 + 2, &v269, &v270);
              v21 = v134;
              WORD2(v228) = v133;
              if (v178)
              {
LABEL_148:
                v137 = v10;
                v140 = HIWORD(v270);
                v153 = 0;
                v154 = v34;
                v136 = v34;
                v129 = v9;
                v130 = v137;
                v131 = v21;
                v155 = v21;
                v138 = v21;
                v139 = WORD2(v228);
                v32 = v267;
                if (HIWORD(v270))
                {
LABEL_149:
                  v153 = 1;
                  v154 = v136;
                  v129 = v9;
                  v130 = v137;
                  v155 = v137;
                  v131 = v138;
                  if (v140 != 1)
                  {
LABEL_150:
                    v153 = 2;
                    v154 = v136;
                    v142 = v136;
                    v129 = v9;
                    v155 = v9;
                    v143 = v9;
                    v130 = v137;
                    v144 = v137;
                    v131 = v138;
                    v145 = v138;
                    v141 = v139;
                    if (v140 != 2)
                    {
LABEL_151:
                      if (v140 == 3)
                      {
                        v155 = v142;
                      }

                      else
                      {
                        v155 = v141;
                      }

                      v153 = v140;
                      v154 = v142;
                      v129 = v143;
                      v130 = v144;
                      v131 = v145;
                    }
                  }
                }

                v156 = v155;
                v146 = v153;
                v7 = v154;
                v147 = v129;
                v148 = v130;
                v149 = v131;
                switch(v156)
                {
                  case 0:
                    continue;
                  case 1:
                    if (v153)
                    {
                      goto LABEL_178;
                    }

                    OUTLINED_FUNCTION_17_12();
                    v29 = 1;
                    insert_2pt_s(v32, 1u, 1, &unk_2806BB16A, 0);
                    OUTLINED_FUNCTION_22_9();
                    v132 = v152;
                    goto LABEL_180;
                  case 2:
                    if (!v153)
                    {
                      goto LABEL_179;
                    }

                    goto LABEL_178;
                  case 3:
                    if (!v153)
                    {
                      goto LABEL_179;
                    }

                    goto LABEL_178;
                  case 4:
                    if (!v153)
                    {
                      goto LABEL_179;
                    }

                    goto LABEL_178;
                  case 5:
                    if (!v153)
                    {
                      goto LABEL_179;
                    }

                    goto LABEL_178;
                  case 6:
                    if (!v153)
                    {
                      goto LABEL_179;
                    }

                    goto LABEL_178;
                  case 7:
                    if (!v153)
                    {
                      goto LABEL_179;
                    }

                    goto LABEL_178;
                  case 8:
                    if (v153)
                    {
                      goto LABEL_178;
                    }

                    goto LABEL_179;
                  case 9:
                    if (v153)
                    {
LABEL_178:
                      OUTLINED_FUNCTION_22_9();
                      goto LABEL_181;
                    }

LABEL_179:
                    OUTLINED_FUNCTION_17_12();
                    v163 = OUTLINED_FUNCTION_0_17();
                    insert_2pt_s(v163, v164, v165, v166, v167);
                    OUTLINED_FUNCTION_22_9();
                    v132 = v168;
                    v152 = v168;
LABEL_180:
                    v7 = v154;
                    if (v162)
                    {
                      goto LABEL_181;
                    }

                    goto LABEL_182;
                  default:
                    v7 = v154;
                    v132 = v153;
                    goto LABEL_182;
                }
              }

              goto LABEL_4;
            }

          case 64:
            v136 = OUTLINED_FUNCTION_26_9();
            goto LABEL_150;
          case 65:
            v140 = HIWORD(v270);
            v141 = 0;
            v142 = v7;
            v143 = v9;
            v144 = v10;
            v145 = v21;
            v32 = v267;
            goto LABEL_151;
          case 66:
          case 68:
          case 69:
          case 70:
          case 72:
          case 73:
          case 75:
          case 76:
          case 78:
          case 79:
          case 81:
          case 82:
          case 84:
          case 85:
          case 87:
          case 88:
          case 90:
          case 91:
          case 93:
          case 95:
            v129 = v9;
            v130 = v10;
            v131 = v21;
            v132 = 0;
            v32 = v267;
            goto LABEL_182;
          case 67:
          case 71:
          case 74:
          case 77:
          case 80:
          case 83:
          case 86:
          case 89:
          case 92:
          case 94:
            v150 = v7;
            v151 = v9;
            v29 = v262;
            v9 = HIDWORD(v262);
            v152 = 0;
            v32 = v267;
            goto LABEL_181;
          case 96:
            v135 = HIWORD(v270);
            v133 = 0;
            v29 = v7;
            v129 = v9;
            v130 = v10;
            v134 = v21;
            v32 = v267;
            goto LABEL_184;
          case 97:
          case 98:
          case 100:
          case 101:
            v133 = 0;
            v34 = v7;
            v9 = v9;
            v130 = v10;
            v134 = v21;
            v32 = v267;
            goto LABEL_197;
          case 99:
            v29 = v7;
            v9 = v9;
            v130 = v10;
            v134 = v21;
            v133 = 0;
            v32 = v267;
            goto LABEL_188;
          default:
            goto LABEL_4;
        }
      }
    }
  }

LABEL_4:
  vretproc(v267);
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_38_3();
}

uint64_t OUTLINED_FUNCTION_2_16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, char a37, int a38, __int16 a39, char a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, char a46)
{

  return ventproc(v46, &a9, &a44, &a40, &a37, &a46);
}

void OUTLINED_FUNCTION_3_16(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  *(v36 - 56) = v35;
  a34 = 0;
  a35 = 0;
  a32 = 0;
  a33 = 0;

  bzero(&a9, 0xB8uLL);
}

BOOL OUTLINED_FUNCTION_8_15()
{

  return testFldeq(v0, 1u, 3, 2);
}

void OUTLINED_FUNCTION_10_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{

  bzero(&a40, 0xC0uLL);
}

uint64_t OUTLINED_FUNCTION_11_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{

  return lpta_loadp_setscan_r(a55, &STACK[0x240]);
}

double OUTLINED_FUNCTION_13_15@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{

  *&result = savescptr(a48, a1, &STACK[0x240]).n128_u64[0];
  return result;
}

void OUTLINED_FUNCTION_14_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{

  get_parm(v32, &a32, v33, -6);
}

uint64_t OUTLINED_FUNCTION_16_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{

  return lpta_loadp_setscan_r(a55, &STACK[0x240]);
}

uint64_t OUTLINED_FUNCTION_17_12()
{

  return lpta_rpta_loadp(v0, &STACK[0x260], &STACK[0x250]);
}

uint64_t OUTLINED_FUNCTION_21_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{

  return lpta_loadp_setscan_r(a55, &STACK[0x240]);
}

BOOL OUTLINED_FUNCTION_25_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  *(v34 + 8) = a33;

  return vretproc(v33);
}

void OUTLINED_FUNCTION_27_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{

  get_parm(v34, &a34, v35, -6);
}

void OUTLINED_FUNCTION_28_6(uint64_t a1, uint64_t a2)
{

  get_parm(a1, a2, v2, -6);
}

uint64_t OUTLINED_FUNCTION_29_6()
{

  return lpta_loadp_setscan_r(v0, v1);
}

uint64_t OUTLINED_FUNCTION_39_2()
{

  return vback(v0, 0);
}

void *fence_18(uint64_t a1, int a2, uint64_t a3)
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

void print_spr()
{
  OUTLINED_FUNCTION_31_6();
  v1 = v0;
  v81 = *MEMORY[0x277D85DE8];
  v75[0] = 0;
  v75[1] = 0;
  v76 = 0;
  v74[0] = 0;
  v74[1] = 0;
  v73[0] = 0;
  v73[1] = 0;
  v71 = 0;
  v72 = 0;
  OUTLINED_FUNCTION_10_16();
  bzero(v70, v2);
  OUTLINED_FUNCTION_9_16();
  bzero(v80, v3);
  if (!setjmp(v80) && !ventproc(v1, v70, v79, v78, v77, v80))
  {
    LOWORD(v76) = 0;
    LODWORD(v75[0]) = -65529;
    v5 = OUTLINED_FUNCTION_16_14();
    push_ptr_init(v5, v6);
    push_ptr_init(v1, v73);
    v7 = OUTLINED_FUNCTION_6_16();
    v9 = push_ptr_init(v7, v8);
    OUTLINED_FUNCTION_25_10(v9, v10, &null_str_4);
    v11 = OUTLINED_FUNCTION_2_17();
    startloop(v11, v12);
    lpta_loadpn(v1, v1 + 1400);
    OUTLINED_FUNCTION_4_16();
    lpta_mover();
    v13 = OUTLINED_FUNCTION_20_10();
    lpta_storep(v13, v14);
    lpta_loadpn(v1, v1 + 1240);
    OUTLINED_FUNCTION_4_16();
    lpta_mover();
    v15 = OUTLINED_FUNCTION_16_14();
    lpta_storep(v15, v16);
    v17 = 0;
    while (1)
    {
LABEL_5:
      v18 = v17;
      v19 = OUTLINED_FUNCTION_20_10();
      v21 = forall_to_test(v19, v20, v74);
      v22 = v18;
      if (!v21)
      {
LABEL_6:
        v18 = v22;
        bspush_ca(v1);
        v23 = OUTLINED_FUNCTION_20_10();
        if (!lpta_loadp_setscan_r(v23, v24))
        {
          bspush_ca_scan_boa();
          v25 = OUTLINED_FUNCTION_4_16();
          if (!testFldeq(v25, v26, 0, 40))
          {
            v18 = 1;
          }
        }
      }

      v27 = v18;
      while (2)
      {
        v28 = *(v1 + 104);
        if (v28)
        {
          v29 = OUTLINED_FUNCTION_21_10(v28);
          v31 = v30;
        }

        else
        {
          v29 = vback(v1, v27);
          v31 = 0;
        }

        v32 = v29 - 1;
        v17 = v31;
        switch(v32)
        {
          case 1:
            goto LABEL_18;
          case 2:
            v33 = forto_adv_upto_r(v1, 1, 2, 15, 4, v1 + 1576);
            v27 = v31;
            if (v33)
            {
              continue;
            }

            goto LABEL_3;
          case 3:
            bspop_boa(v1);
            v34 = advance_tok(v1);
            v27 = v31;
            if (v34)
            {
              continue;
            }

            goto LABEL_17;
          case 4:
LABEL_17:
            v35 = OUTLINED_FUNCTION_16_14();
            savescptr(v35, v36, v37);
LABEL_18:
            v38 = OUTLINED_FUNCTION_20_10();
            if (lpta_loadp_setscan_l(v38, v39))
            {
              goto LABEL_24;
            }

            v40 = OUTLINED_FUNCTION_20_10();
            lpta_loadpn(v40, v41);
            rpta_loadpn(v1, v1 + 1224);
            if (!compare_ptas(v1) && !testeq(v1))
            {
              print_between_word_chars();
            }

LABEL_22:
            v42 = OUTLINED_FUNCTION_20_10();
            print_word_stress(v42);
LABEL_23:
            v43 = OUTLINED_FUNCTION_17_13();
LABEL_24:
            v45 = OUTLINED_FUNCTION_20_10();
            if (!lpta_loadp_setscan_r(v45, v46) && !advance_tok(v1) && !savetok(v1, v75))
            {
LABEL_27:
              v47 = OUTLINED_FUNCTION_22_10();
              savescptr(v47, v48, v73);
              v49 = OUTLINED_FUNCTION_17_13();
              print_lit(v49, v50, ".");
              if (*(v1 + 5102) != *(v1 + 5090))
              {
                WORD1(v75[0]) = 0;
                v51 = OUTLINED_FUNCTION_17_13();
                print_var(v51, v52, v75);
              }
            }

LABEL_29:
            lang_specific_SPR();
LABEL_30:
            v53 = OUTLINED_FUNCTION_24_10();
            if (!lpta_loadp_setscan_l(v53, v54))
            {
              v55 = OUTLINED_FUNCTION_17_13();
              print_lit(v55, v56, "]");
              v57 = OUTLINED_FUNCTION_7_16();
              starttest(v57, v58);
              v59 = OUTLINED_FUNCTION_24_10();
              lpta_loadpn(v59, v60);
              lpta_mover();
              v61 = OUTLINED_FUNCTION_6_16();
              lpta_storep(v61, v62);
              OUTLINED_FUNCTION_24_10();
              v63 = print_between_word_chars();
              v27 = v31;
              if (v63)
              {
                continue;
              }
            }

LABEL_32:
            v64 = OUTLINED_FUNCTION_24_10();
            lpta_loadpn(v64, v65);
            rpta_loadpn(v1, v1 + 1240);
            if (!compare_ptas(v1) && !testeq(v1))
            {
              goto LABEL_3;
            }

LABEL_34:
            v66 = OUTLINED_FUNCTION_24_10();
            lpta_loadpn(v66, v67);
            OUTLINED_FUNCTION_4_16();
            lpta_mover();
            v68 = OUTLINED_FUNCTION_6_16();
            lpta_storep(v68, v69);
            forall_cont_from(v1);
            v17 = v31;
            break;
          case 5:
            goto LABEL_24;
          case 6:
            goto LABEL_22;
          case 7:
            goto LABEL_23;
          case 8:
            goto LABEL_29;
          case 9:
            goto LABEL_27;
          case 10:
            goto LABEL_30;
          case 11:
            goto LABEL_32;
          case 12:
            goto LABEL_34;
          case 13:
            goto LABEL_5;
          case 14:
            v22 = v31;
            goto LABEL_6;
          default:
            goto LABEL_3;
        }

        break;
      }
    }
  }

LABEL_3:
  vretproc(v1);
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_32_5();
}

uint64_t print_between_word_chars()
{
  OUTLINED_FUNCTION_11_16();
  v40 = *MEMORY[0x277D85DE8];
  v27 = 0;
  v28 = 0;
  v25 = 0;
  v26 = 0;
  OUTLINED_FUNCTION_10_16();
  bzero(v24, v1);
  OUTLINED_FUNCTION_9_16();
  bzero(v39, v2);
  v3 = setjmp(v39);
  if (v3 || OUTLINED_FUNCTION_23_10(v3, v4, v5, v6, v7, v8, v9, v10, v24[0], v24[1], v24[2], v24[3], v24[4], v24[5], v24[6], v24[7], v24[8], v24[9], v24[10], v24[11], v24[12], v24[13], v24[14], v24[15], v24[16], v24[17], v24[18], v24[19], v24[20], v24[21], v24[22], v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39[0]))
  {
    v11 = 94;
  }

  else
  {
    v14 = OUTLINED_FUNCTION_3_17();
    get_parm(v14, v15, v16, -6);
    OUTLINED_FUNCTION_8_16();
    v11 = 0;
    OUTLINED_FUNCTION_25_10(v17, v18, &null_str_4);
    OUTLINED_FUNCTION_3_17();
    print_after_word_chars();
    v19 = OUTLINED_FUNCTION_7_16();
    lpta_loadpn(v19, v20);
    rpta_loadpn(v0, v0 + 1240);
    if (!compare_ptas(v0))
    {
      if (!testneq(v0))
      {
        v21 = OUTLINED_FUNCTION_17_13();
        print_lit(v21, v22, v23);
      }

      v11 = 0;
    }
  }

  vretproc(v0);
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t print_word_stress(uint64_t a1)
{
  v174 = *MEMORY[0x277D85DE8];
  v168 = 0;
  v169 = 0;
  OUTLINED_FUNCTION_10_16();
  bzero(&v145, v2);
  OUTLINED_FUNCTION_9_16();
  bzero(v173, v3);
  if (setjmp(v173) || (v4 = ventproc(a1, &v145, v172, v171, v170, v173), v4))
  {
LABEL_3:
    v5 = 94;
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_26_10(v4, &v168);
  fence_18(a1, 0, &null_str_4);
  starttest(a1, 1);
  *(a1 + 136) = 1;
  *(a1 + 112) = v169;
  *(a1 + 128) = 0;
  if (lpta_tstctxtl() || (setscan_r(a1), v8) || advance_tok(a1))
  {
LABEL_10:
    v12 = OUTLINED_FUNCTION_2_17();
    starttest(v12, v13);
    if (OUTLINED_FUNCTION_14_14(v14, v15, v16, v17, v18, v19, v20, v21, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168))
    {
LABEL_18:
      v44 = OUTLINED_FUNCTION_2_17();
      starttest(v44, v45);
      if (OUTLINED_FUNCTION_14_14(v46, v47, v48, v49, v50, v51, v52, v53, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168))
      {
LABEL_19:
        v54 = OUTLINED_FUNCTION_2_17();
        starttest(v54, v55);
        if (OUTLINED_FUNCTION_14_14(v56, v57, v58, v59, v60, v61, v62, v63, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168))
        {
LABEL_20:
          v64 = OUTLINED_FUNCTION_2_17();
          starttest(v64, v65);
          if (OUTLINED_FUNCTION_14_14(v66, v67, v68, v69, v70, v71, v72, v73, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168))
          {
LABEL_21:
            v74 = OUTLINED_FUNCTION_2_17();
            starttest(v74, v75);
            v36 = OUTLINED_FUNCTION_14_14(v76, v77, v78, v79, v80, v81, v82, v83, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168);
            if (v36)
            {
LABEL_38:
              if (!OUTLINED_FUNCTION_14_14(v36, v37, v38, v39, v40, v41, v42, v43, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168) && !advance_tok(a1))
              {
                savetok(a1, (a1 + 3600));
              }

LABEL_41:
              v136 = OUTLINED_FUNCTION_17_13();
              print_lit(v136, v137, v138);
              *(a1 + 3602) = 5;
              v139 = OUTLINED_FUNCTION_17_13();
              print_var(v139, v140, v141);
            }

            else
            {
              if (OUTLINED_FUNCTION_19_11())
              {
                goto LABEL_14;
              }

              npush_v(a1, (a1 + 3060), v84, v85, v86, v87, v88, v89);
              if (if_testeq(a1, v90, v91, v92, v93, v94, v95, v96) || advance_tok(a1))
              {
                goto LABEL_14;
              }
            }
          }

          else
          {
            if (OUTLINED_FUNCTION_19_11())
            {
              goto LABEL_14;
            }

            npush_v(a1, (a1 + 3056), v123, v124, v125, v126, v127, v128);
            if (if_testeq(a1, v129, v130, v131, v132, v133, v134, v135) || advance_tok(a1))
            {
              goto LABEL_14;
            }
          }
        }

        else
        {
          if (OUTLINED_FUNCTION_19_11())
          {
            goto LABEL_14;
          }

          npush_v(a1, (a1 + 3032), v110, v111, v112, v113, v114, v115);
          if (if_testeq(a1, v116, v117, v118, v119, v120, v121, v122) || advance_tok(a1))
          {
            goto LABEL_14;
          }
        }
      }

      else
      {
        if (OUTLINED_FUNCTION_19_11())
        {
          goto LABEL_14;
        }

        npush_v(a1, (a1 + 3044), v97, v98, v99, v100, v101, v102);
        if (if_testgt(a1, v103, v104, v105, v106, v107, v108, v109) || advance_tok(a1))
        {
          goto LABEL_14;
        }
      }

      v142 = OUTLINED_FUNCTION_17_13();
      print_lit(v142, v143, v144);
      goto LABEL_9;
    }

    if (!OUTLINED_FUNCTION_19_11())
    {
      npush_v(a1, (a1 + 3036), v22, v23, v24, v25, v26, v27);
      if (!if_testeq(a1, v28, v29, v30, v31, v32, v33, v34) && !advance_tok(a1))
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_8:
    v9 = OUTLINED_FUNCTION_2_17();
    if (!test_synch(v9, v10, 1u, v11))
    {
LABEL_9:
      v5 = 0;
      goto LABEL_4;
    }
  }

LABEL_14:
  v35 = *(a1 + 104);
  if (v35)
  {
    v36 = OUTLINED_FUNCTION_21_10(v35);
  }

  else
  {
    v36 = OUTLINED_FUNCTION_27_8();
  }

  v5 = 0;
  switch(v36)
  {
    case 1:
      goto LABEL_10;
    case 2:
      goto LABEL_8;
    case 3:
      break;
    case 4:
      goto LABEL_18;
    case 5:
      goto LABEL_19;
    case 6:
      goto LABEL_20;
    case 7:
      goto LABEL_21;
    case 8:
      goto LABEL_38;
    case 9:
      goto LABEL_41;
    default:
      goto LABEL_3;
  }

LABEL_4:
  vretproc(a1);
  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

void print_after_word_chars()
{
  OUTLINED_FUNCTION_31_6();
  OUTLINED_FUNCTION_11_16();
  v76 = *MEMORY[0x277D85DE8];
  v71[0] = 0;
  v71[1] = 0;
  memset(v70, 0, sizeof(v70));
  v69[0] = 0;
  v69[1] = 0;
  v68[0] = 0;
  v68[1] = 0;
  OUTLINED_FUNCTION_10_16();
  bzero(v67, v2);
  OUTLINED_FUNCTION_9_16();
  bzero(v75, v3);
  if (!setjmp(v75) && !ventproc(v0, v67, v74, v73, v72, v75))
  {
    v5 = OUTLINED_FUNCTION_6_16();
    get_parm(v5, v6, v1, -6);
    OUTLINED_FUNCTION_8_16();
    v7 = OUTLINED_FUNCTION_13_16();
    push_ptr_init(v7, v8);
    push_ptr_init(v0, v69);
    v9 = OUTLINED_FUNCTION_7_16();
    v11 = push_ptr_init(v9, v10);
    OUTLINED_FUNCTION_25_10(v11, v12, &null_str_4);
    v13 = OUTLINED_FUNCTION_4_16();
    fence_18(v13, v14, v15);
    startloop(v0, 1);
    v16 = OUTLINED_FUNCTION_13_16();
    copyvar(v16, v17, v71);
    v18 = OUTLINED_FUNCTION_3_17();
    copyvar(v18, v19, v20);
    v21 = 0;
    while (1)
    {
LABEL_5:
      v22 = OUTLINED_FUNCTION_13_16();
      v24 = forall_to_test(v22, v23, v68);
      v25 = v21;
      v26 = v21;
      if (v24)
      {
        goto LABEL_20;
      }

LABEL_6:
      v21 = v25;
      bspush_ca(v0);
      v27 = OUTLINED_FUNCTION_13_16();
      if (lpta_loadp_setscan_r(v27, v28))
      {
        goto LABEL_19;
      }

      bspush_ca_scan(v0, 4);
      v29 = OUTLINED_FUNCTION_4_16();
      if (testFldeq(v29, v30, 3, 4))
      {
        v26 = v21;
        goto LABEL_20;
      }

      v31 = advance_tok(v0);
      v32 = v21;
      v26 = v21;
      if (v31)
      {
        goto LABEL_20;
      }

LABEL_10:
      v21 = v32;
      savescptr(v0, 5, v69);
      while (2)
      {
        starttest(v0, 6);
        v33 = OUTLINED_FUNCTION_13_16();
        if (lpta_loadp_setscan_r(v33, v34))
        {
LABEL_12:
          starttest(v0, 8);
          if (!lpta_loadp_setscan_r(v0, v69))
          {
            bspush_ca_scan(v0, 9);
            OUTLINED_FUNCTION_1_17();
            v35 = test_string_s();
            v26 = v21;
            v36 = v21;
            if (!v35)
            {
LABEL_14:
              v37 = v36;
              v38 = OUTLINED_FUNCTION_2_17();
              bspush_ca_scan(v38, v39);
              bspush_ca_scan_boa();
              v40 = OUTLINED_FUNCTION_4_16();
              if (testFldeq(v40, v41, v42, 72))
              {
                v26 = v37;
              }

              else
              {
                v26 = 1;
              }
            }

LABEL_20:
            v45 = *(v0 + 104);
            if (v45)
            {
              v46 = OUTLINED_FUNCTION_21_10(v45);
              v21 = v47;
            }

            else
            {
              v46 = vback(v0, v26);
              v21 = 0;
            }

            v32 = v21;
            v36 = v21;
            switch(v46)
            {
              case 2:
                continue;
              case 3:
                v48 = forto_adv_r(v0, 1, 2, 18, 1, v70);
                v26 = v21;
                if (v48)
                {
                  goto LABEL_20;
                }

                goto LABEL_3;
              case 4:
                OUTLINED_FUNCTION_1_17();
                v60 = test_string_s();
                v32 = v21;
                v26 = v21;
                if (!v60)
                {
                  goto LABEL_10;
                }

                goto LABEL_20;
              case 5:
                goto LABEL_10;
              case 6:
                goto LABEL_12;
              case 7:
              case 8:
                goto LABEL_42;
              case 9:
                v54 = OUTLINED_FUNCTION_22_10();
                bspush_ca_scan(v54, v55);
                OUTLINED_FUNCTION_1_17();
                v56 = test_string_s();
                v26 = v21;
                if (v56)
                {
                  goto LABEL_20;
                }

                v57 = OUTLINED_FUNCTION_4_16();
                v59 = testFldeq(v57, v58, 3, 2);
                v26 = v21;
                if (v59)
                {
                  goto LABEL_20;
                }

                goto LABEL_30;
              case 10:
                goto LABEL_14;
              case 11:
                v51 = OUTLINED_FUNCTION_6_16();
                bspush_ca_scan(v51, v52);
                OUTLINED_FUNCTION_1_17();
                goto LABEL_32;
              case 12:
                v49 = OUTLINED_FUNCTION_16_14();
                bspush_ca_scan(v49, v50);
                OUTLINED_FUNCTION_1_17();
                goto LABEL_32;
              case 13:
                bspush_ca_scan(v0, 14);
                OUTLINED_FUNCTION_1_17();
                goto LABEL_32;
              case 14:
                OUTLINED_FUNCTION_1_17();
LABEL_32:
                v53 = test_string_s();
                goto LABEL_33;
              case 15:
                savescptr(v0, 15, v69);
                print_lit(v0, 8, " ");
                v61 = v21;
                goto LABEL_41;
              case 16:
                bspop_boa(v0);
LABEL_30:
                v53 = advance_tok(v0);
LABEL_33:
                v36 = v21;
                v26 = v21;
                if (!v53)
                {
                  goto LABEL_14;
                }

                goto LABEL_20;
              case 17:
                goto LABEL_5;
              case 18:
                v25 = v21;
                goto LABEL_6;
              default:
                goto LABEL_3;
            }
          }
        }

        else
        {
          v43 = OUTLINED_FUNCTION_4_16();
          if (testFldeq(v43, v44, 3, 4) || advance_tok(v0))
          {
LABEL_19:
            v26 = v21;
            goto LABEL_20;
          }

          *(v0 + 136) = 1;
          OUTLINED_FUNCTION_0_18();
          if (!lpta_tstctxtl())
          {
            v64 = OUTLINED_FUNCTION_5_16();
            setscan_r(v64);
            if (!v65 && !advance_tok(v0))
            {
              *(v0 + 136) = 1;
              OUTLINED_FUNCTION_0_18();
              if (!lpta_tstctxtr())
              {
                v66 = test_ptr(v0);
                v61 = v21;
                if (!v66)
                {
LABEL_41:
                  v21 = v61;
                  v62 = OUTLINED_FUNCTION_13_16();
                  lpta_rpta_loadp(v62, v63, v69);
                  print_stream(v0, 8, 1, 0, &unk_26E7817DA);
                }
              }
            }
          }
        }

        break;
      }

LABEL_42:
      forall_cont_from(v0);
    }
  }

LABEL_3:
  vretproc(v0);
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_32_5();
}

void handle_SPR()
{
  OUTLINED_FUNCTION_31_6();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v151 = *MEMORY[0x277D85DE8];
  v145 = 0;
  v146 = 0;
  v144[0] = 0;
  v144[1] = 0;
  v142 = 0;
  v143 = 0;
  v140 = 0;
  v141 = 0;
  v139[0] = 0;
  v139[1] = 0;
  v138[0] = 0;
  v138[1] = 0;
  v137[0] = 0;
  v137[1] = 0;
  v136[0] = 0;
  v136[1] = 0;
  v135[0] = 0;
  v135[1] = 0;
  v134 = 0;
  OUTLINED_FUNCTION_10_16();
  bzero(v133, v10);
  OUTLINED_FUNCTION_9_16();
  bzero(v150, v11);
  if (setjmp(v150))
  {
    goto LABEL_93;
  }

  if (ventproc(v9, v133, v149, v148, v147, v150))
  {
    goto LABEL_93;
  }

  get_parm(v9, &v145, v7, -6);
  v12 = OUTLINED_FUNCTION_6_16();
  get_parm(v12, v13, v5, -6);
  OUTLINED_FUNCTION_26_10(v14, &v142);
  get_parm(v9, &v141 + 4, v1, -4);
  LOWORD(v141) = -4;
  WORD2(v140) = -4;
  LOWORD(v140) = -4;
  push_ptr_init(v9, v139);
  v15 = OUTLINED_FUNCTION_15_14();
  push_ptr_init(v15, v16);
  push_ptr_init(v9, v137);
  push_ptr_init(v9, v136);
  v17 = push_ptr_init(v9, v135);
  v134 = 65532;
  OUTLINED_FUNCTION_25_10(v17, v18, &null_str_4);
  WORD1(v141) = 0;
  WORD1(v140) = 0;
  HIWORD(v140) = 0;
  *(v9 + 4686) = 0;
  starttest(v9, 1);
  v19 = OUTLINED_FUNCTION_6_16();
  if (lpta_loadp_setscan_r(v19, v20))
  {
    goto LABEL_93;
  }

  v21 = 0;
  v22 = 2;
  while (2)
  {
    if (advance_tok(v9))
    {
      v132 = v22;
    }

    else
    {
      v23 = OUTLINED_FUNCTION_7_16();
      bspush_ca_scan(v23, v24);
LABEL_8:
      v132 = v22;
      savescptr(v9, 3, v139);
      OUTLINED_FUNCTION_12_16();
      v25 = test_string_s();
      v26 = v21;
      if (!v25)
      {
LABEL_9:
        v21 = v26;
        v27 = OUTLINED_FUNCTION_22_10();
        savescptr(v27, v28, &v142);
LABEL_10:
        if (*(v9 + 2622) == HIWORD(v141))
        {
          starttest_l(v9, 7);
          bspush_ca_boa();
          v29 = lpta_loadp_setscan_l(v9, &v142);
        }

        else
        {
LABEL_86:
          starttest(v9, 9);
          OUTLINED_FUNCTION_6_16();
          bspush_ca_boa();
          v29 = end_of_word();
        }

        if (!v29)
        {
          v21 = 1;
        }
      }
    }

    v30 = v21;
LABEL_15:
    v31 = *(v9 + 104);
    if (v31)
    {
      v32 = OUTLINED_FUNCTION_21_10(v31);
      v21 = v33;
    }

    else
    {
      v32 = vback(v9, v30);
      v21 = 0;
    }

    switch(v32)
    {
      case 2:
        v22 = v132;
        continue;
      case 3:
        v22 = v132;
        goto LABEL_8;
      case 4:
        v26 = v21;
        goto LABEL_9;
      case 5:
        goto LABEL_10;
      case 6:
        goto LABEL_86;
      case 7:
      case 9:
        *(v9 + 136) = 1;
        *(v9 + 112) = v146;
        *(v9 + 128) = 0;
        OUTLINED_FUNCTION_5_16();
        proj_def();
        *(v9 + 136) = 1;
        *(v9 + 112) = v143;
        *(v9 + 128) = 0;
        OUTLINED_FUNCTION_5_16();
        proj_def();
        WORD1(v141) = -1;
        v34 = OUTLINED_FUNCTION_2_17();
        startloop(v34, v35);
        lpta_loadpn(v9, v144);
        lpta_mover();
        v36 = OUTLINED_FUNCTION_15_14();
        lpta_storep(v36, v37);
        lpta_loadpn(v9, v139);
        lpta_mover();
        lpta_storep(v9, v135);
        goto LABEL_41;
      case 8:
      case 10:
        bspop_boa(v9);
        goto LABEL_93;
      case 11:
        goto LABEL_62;
      case 12:
        goto LABEL_46;
      case 13:
        OUTLINED_FUNCTION_30_6();
        v109 = forto_adv_upto_r(v9, v107, v108, 32, 1, v138);
        v30 = v21;
        if (v109)
        {
          goto LABEL_15;
        }

LABEL_62:
        v110 = *(v9 + 5090);
        if (*(v9 + 5114) == v110 || *(v9 + 5126) == v110)
        {
          goto LABEL_64;
        }

        v111 = *(v9 + 4686);
        if (v111 != 1)
        {
          goto LABEL_65;
        }

        v127 = OUTLINED_FUNCTION_2_17();
        starttest(v127, v128);
        v129 = OUTLINED_FUNCTION_18_12();
        if (!lpta_loadp_setscan_r(v129, v130))
        {
          goto LABEL_26;
        }

        goto LABEL_30;
      case 14:
        goto LABEL_44;
      case 15:
        goto LABEL_45;
      case 16:
        goto LABEL_48;
      case 17:
        goto LABEL_39;
      case 18:
        goto LABEL_49;
      case 19:
        goto LABEL_57;
      case 20:
        LOWORD(v84) = *(v9 + 3778);
        goto LABEL_38;
      case 22:
        v121 = OUTLINED_FUNCTION_2_17();
        starttest(v121, v122);
        OUTLINED_FUNCTION_2_17();
        bspush_ca_boa();
        inserted = insert_spr_phone();
        goto LABEL_50;
      case 23:
      case 26:
        bspop_boa(v9);
        goto LABEL_92;
      case 25:
        v38 = OUTLINED_FUNCTION_2_17();
        starttest(v38, v39);
        v40 = OUTLINED_FUNCTION_15_14();
        if (lpta_loadp_setscan_r(v40, v41))
        {
          goto LABEL_21;
        }

        v123 = OUTLINED_FUNCTION_5_16();
        v125 = OUTLINED_FUNCTION_33_5(v123, v124);
        v30 = v21;
        if (v125)
        {
          goto LABEL_15;
        }

        v126 = advance_tok(v9);
        v30 = v21;
        if (v126)
        {
          goto LABEL_15;
        }

        ++*(v9 + 4686);
LABEL_21:
        v42 = OUTLINED_FUNCTION_2_17();
        starttest(v42, v43);
        v44 = OUTLINED_FUNCTION_15_14();
        if (lpta_loadp_setscan_r(v44, v45))
        {
          goto LABEL_39;
        }

        v46 = OUTLINED_FUNCTION_5_16();
        v48 = OUTLINED_FUNCTION_33_5(v46, v47);
        v30 = v21;
        if (v48)
        {
          goto LABEL_15;
        }

        v49 = advance_tok(v9);
        v30 = v21;
        if (v49)
        {
          goto LABEL_15;
        }

        mark_spr_syll_vals(v9, v138, v137, &v141, &v140 + 2, &v140);
        break;
      case 28:
        goto LABEL_21;
      case 29:
        goto LABEL_40;
      case 30:
        bspop_boa(v9);
        OUTLINED_FUNCTION_28_7();
        OUTLINED_FUNCTION_0_18();
        delete_1pt();
        goto LABEL_40;
      case 31:
        goto LABEL_41;
      case 32:
        goto LABEL_42;
      case 33:
LABEL_64:
        v111 = *(v9 + 4686);
LABEL_65:
        if (v111)
        {
          goto LABEL_66;
        }

        goto LABEL_92;
      case 34:
        goto LABEL_30;
      case 35:
        goto LABEL_26;
      case 36:
        v50 = advance_tok(v9);
        v30 = v21;
        if (v50)
        {
          goto LABEL_15;
        }

LABEL_26:
        v51 = OUTLINED_FUNCTION_2_17();
        bspush_ca_scan(v51, v52);
        goto LABEL_27;
      case 37:
LABEL_27:
        savescptr(v9, 37, v9 + 1272);
        v53 = OUTLINED_FUNCTION_5_16();
        v55 = OUTLINED_FUNCTION_33_5(v53, v54);
        v30 = v21;
        if (!v55)
        {
          v56 = advance_tok(v9);
          v30 = v21;
          if (!v56)
          {
            goto LABEL_29;
          }
        }

        goto LABEL_15;
      case 38:
LABEL_29:
        savescptr(v9, 38, v9 + 1288);
LABEL_30:
        v57 = OUTLINED_FUNCTION_2_17();
        starttest(v57, v58);
        v59 = OUTLINED_FUNCTION_18_12();
        if (lpta_loadp_setscan_r(v59, v60))
        {
          goto LABEL_71;
        }

        v61 = OUTLINED_FUNCTION_5_16();
        v63 = npush_fld(v61, v62, 8);
        v30 = v21;
        if (!v63)
        {
          v64 = OUTLINED_FUNCTION_7_16();
          c_assvar(v64, v65);
          HIWORD(v134) = -1;
          v66 = OUTLINED_FUNCTION_7_16();
          npush_v(v66, v67, v68, v69, v70, v71, v72, v73);
          v81 = if_testeq(v9, v74, v75, v76, v77, v78, v79, v80);
          v30 = v21;
          if (!v81)
          {
            v82 = advance_tok(v9);
            v30 = v21;
            if (!v82)
            {
              lpta_rpta_loadp(v9, v9 + 1272, v9 + 1288);
              OUTLINED_FUNCTION_5_16();
              v83 = mark_i();
              v30 = v21;
              if (!v83)
              {
                goto LABEL_71;
              }
            }
          }
        }

        goto LABEL_15;
      case 39:
      case 40:
        goto LABEL_71;
      case 41:
LABEL_66:
        v112 = *(v9 + 5090);
        if (*(v9 + 5114) != v112 && *(v9 + 5126) != v112 && HIWORD(v140) == 0)
        {
          goto LABEL_92;
        }

LABEL_71:
        v114 = OUTLINED_FUNCTION_18_12();
        if (!lpta_loadp_setscan_r(v114, v115) && !advanc(v9))
        {
LABEL_73:
          savescptr(v9, 45, v138);
          OUTLINED_FUNCTION_28_7();
          OUTLINED_FUNCTION_0_18();
          delete_1pt();
        }

LABEL_74:
        v116 = OUTLINED_FUNCTION_2_17();
        starttest(v116, v117);
        v118 = OUTLINED_FUNCTION_18_12();
        if (!lpta_loadp_setscan_l(v118, v119) && !advanc(v9))
        {
LABEL_76:
          savescptr(v9, 47, v138);
          OUTLINED_FUNCTION_28_7();
          OUTLINED_FUNCTION_0_18();
          delete_1pt();
        }

LABEL_77:
        lpta_rpta_loadp(v9, &v145, &v142);
        v120 = insert_2pt_s(v9, 3u, 1, &_MergedGlobals_12, 0);
        v30 = v21;
        if (v120)
        {
          goto LABEL_15;
        }

        *(v9 + 3842) = 1;
        *(v3 + 8) = v143;
        vretproc(v9);
        goto LABEL_94;
      case 44:
        goto LABEL_74;
      case 45:
        goto LABEL_73;
      case 46:
        goto LABEL_77;
      case 47:
        goto LABEL_76;
      default:
        goto LABEL_93;
    }

    break;
  }

  while (1)
  {
    do
    {
LABEL_39:
      v85 = OUTLINED_FUNCTION_2_17();
      starttest(v85, v86);
      v87 = OUTLINED_FUNCTION_15_14();
      if (!lpta_loadp_setscan_l(v87, v88) && !advanc(v9))
      {
        OUTLINED_FUNCTION_2_17();
        bspush_ca_scan_boa();
        OUTLINED_FUNCTION_28_7();
        *(v9 + 112) = *(v9 + 352);
        *(v9 + 128) = 0;
        inserted = test_ptr(v9);
LABEL_50:
        if (inserted)
        {
          v30 = v21;
        }

        else
        {
          v30 = 1;
        }

        goto LABEL_15;
      }

LABEL_40:
      OUTLINED_FUNCTION_30_6();
      forall_cont_from(v9);
LABEL_41:
      v89 = forall_to_test(v9, v138, v135);
      v30 = v21;
      if (v89)
      {
        goto LABEL_15;
      }

LABEL_42:
      v90 = OUTLINED_FUNCTION_2_17();
      bspush_ca(v90);
      v91 = OUTLINED_FUNCTION_15_14();
      v93 = lpta_loadp_setscan_r(v91, v92);
      v30 = v21;
      if (v93)
      {
        goto LABEL_15;
      }

      v94 = advance_tok(v9);
      v30 = v21;
      if (v94)
      {
        goto LABEL_15;
      }

LABEL_44:
      savescptr(v9, 14, v137);
LABEL_45:
      savescptr(v9, 15, v136);
LABEL_46:
      v95 = OUTLINED_FUNCTION_15_14();
      if (lpta_loadp_setscan_r(v95, v96))
      {
        break;
      }

      OUTLINED_FUNCTION_12_16();
    }

    while (!test_string_s());
LABEL_48:
    v97 = OUTLINED_FUNCTION_2_17();
    starttest(v97, v98);
    v99 = OUTLINED_FUNCTION_15_14();
    if (lpta_loadp_setscan_r(v99, v100))
    {
LABEL_49:
      v101 = OUTLINED_FUNCTION_2_17();
      starttest(v101, v102);
      OUTLINED_FUNCTION_2_17();
      bspush_ca_boa();
      find_pair_of_single_quotes();
      goto LABEL_50;
    }

    v104 = testFldeq(v9, 1u, 3, 2);
    v30 = v21;
    if (v104)
    {
      goto LABEL_15;
    }

    v105 = advance_tok(v9);
    v30 = v21;
    if (v105)
    {
      goto LABEL_15;
    }

    v106 = savetok(v9, (v9 + 1784));
    v30 = v21;
    if (v106)
    {
      goto LABEL_15;
    }

    token_to_number();
LABEL_57:
    v84 = *(v9 + 3778);
    if (*(v9 + 2630) < v84)
    {
      break;
    }

LABEL_38:
    WORD1(v141) = v84;
  }

LABEL_92:
  delete_invalid_SPR();
LABEL_93:
  vretproc(v9);
LABEL_94:
  v131 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_32_5();
}

uint64_t delete_invalid_SPR()
{
  OUTLINED_FUNCTION_11_16();
  v40 = *MEMORY[0x277D85DE8];
  v27 = 0;
  v28 = 0;
  v25 = 0;
  v26 = 0;
  OUTLINED_FUNCTION_10_16();
  bzero(v24, v1);
  OUTLINED_FUNCTION_9_16();
  bzero(v39, v2);
  v3 = setjmp(v39);
  if (!v3 && !OUTLINED_FUNCTION_23_10(v3, v4, v5, v6, v7, v8, v9, v10, v24[0], v24[1], v24[2], v24[3], v24[4], v24[5], v24[6], v24[7], v24[8], v24[9], v24[10], v24[11], v24[12], v24[13], v24[14], v24[15], v24[16], v24[17], v24[18], v24[19], v24[20], v24[21], v24[22], v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39[0]))
  {
    v14 = OUTLINED_FUNCTION_3_17();
    get_parm(v14, v15, v16, -6);
    OUTLINED_FUNCTION_8_16();
    v11 = 0;
    OUTLINED_FUNCTION_25_10(v17, v18, &null_str_4);
    v19 = OUTLINED_FUNCTION_3_17();
    lpta_rpta_loadp(v19, v20, v21);
    v22 = OUTLINED_FUNCTION_5_16();
    if (!delete_2pt(v22, v23))
    {
      goto LABEL_4;
    }

    if (*(v0 + 104))
    {
      *(v0 + 104) = 0;
    }

    else
    {
      OUTLINED_FUNCTION_27_8();
    }
  }

  v11 = 94;
LABEL_4:
  vretproc(v0);
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

void find_pair_of_single_quotes()
{
  OUTLINED_FUNCTION_31_6();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v33 = *MEMORY[0x277D85DE8];
  v27 = 0;
  v28 = 0;
  v25 = 0;
  v26 = 0;
  v23 = 0;
  v24 = 0;
  OUTLINED_FUNCTION_10_16();
  bzero(v22, v8);
  OUTLINED_FUNCTION_9_16();
  bzero(v32, v9);
  if (setjmp(v32) || ventproc(v7, v22, v31, v30, v29, v32))
  {
    goto LABEL_3;
  }

  v11 = OUTLINED_FUNCTION_6_16();
  get_parm(v11, v12, v5, -6);
  get_parm(v7, &v25, v3, -6);
  OUTLINED_FUNCTION_26_10(v13, &v23);
  fence_18(v7, 0, &null_str_4);
  v14 = OUTLINED_FUNCTION_6_16();
  if (lpta_loadp_setscan_r(v14, v15) || (OUTLINED_FUNCTION_12_16(), test_string_s()))
  {
LABEL_15:
    *(v5 + 8) = v28;
    *(v3 + 8) = v26;
    *(v1 + 8) = v24;
    goto LABEL_3;
  }

  while (2)
  {
    savescptr(v7, 2, &v27);
    v16 = OUTLINED_FUNCTION_22_10();
    starttest(v16, v17);
    v18 = OUTLINED_FUNCTION_6_16();
    if (lpta_loadp_setscan_r(v18, v19))
    {
      break;
    }

LABEL_7:
    if (!advance_tok(v7))
    {
      bspush_ca_scan(v7, 4);
LABEL_9:
      savescptr(v7, 5, &v25);
      OUTLINED_FUNCTION_12_16();
      if (!test_string_s())
      {
LABEL_14:
        savescptr(v7, 6, &v23);
        goto LABEL_15;
      }
    }

    v20 = *(v7 + 104);
    if (v20)
    {
      v21 = OUTLINED_FUNCTION_21_10(v20);
    }

    else
    {
      v21 = OUTLINED_FUNCTION_27_8();
    }

    switch(v21)
    {
      case 1:
        goto LABEL_15;
      case 2:
        continue;
      case 4:
        goto LABEL_7;
      case 5:
        goto LABEL_9;
      case 6:
        goto LABEL_14;
      default:
        goto LABEL_3;
    }
  }

LABEL_3:
  vretproc(v7);
  v10 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_32_5();
}

uint64_t mark_spr_syll_vals(uint64_t a1, __int16 *a2, __int16 *a3, __int16 *a4, __int16 *a5, __int16 *a6)
{
  v37 = *MEMORY[0x277D85DE8];
  memset(v32, 0, sizeof(v32));
  v31 = 0;
  v30 = 0;
  OUTLINED_FUNCTION_10_16();
  bzero(v29, v12);
  OUTLINED_FUNCTION_9_16();
  bzero(v36, v13);
  if (!setjmp(v36) && !ventproc(a1, v29, v35, v34, v33, v36))
  {
    v17 = OUTLINED_FUNCTION_22_10();
    get_parm(v17, v18, a2, -6);
    get_parm(a1, v32, a3, -6);
    v19 = OUTLINED_FUNCTION_6_16();
    get_parm(v19, v20, a4, -4);
    get_parm(a1, &v31, a5, -4);
    get_parm(a1, &v30, a6, -4);
    OUTLINED_FUNCTION_25_10(v21, v22, &null_str_4);
    v23 = OUTLINED_FUNCTION_22_10();
    lpta_rpta_loadp(v23, v24, v32);
    v25 = OUTLINED_FUNCTION_5_16();
    if (mark_v(v25, v26, 8, &v31 + 2))
    {
      v27 = *(a1 + 104);
      if (v27)
      {
        v28 = OUTLINED_FUNCTION_21_10(v27);
      }

      else
      {
        v28 = OUTLINED_FUNCTION_27_8();
      }

      if (v28 != 1)
      {
        goto LABEL_3;
      }
    }

    else if (HIWORD(v31) == 1)
    {
      WORD1(v31) = HIWORD(v31);
    }

    HIWORD(v31) = -1;
    a4[1] = -1;
    a5[1] = WORD1(v31);
    a6[1] = HIWORD(v30);
    v14 = 0;
    goto LABEL_4;
  }

LABEL_3:
  v14 = 94;
LABEL_4:
  vretproc(a1);
  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t assign_user_stress()
{
  OUTLINED_FUNCTION_11_16();
  v56 = *MEMORY[0x277D85DE8];
  v51[0] = 0;
  v51[1] = 0;
  v50[0] = 0;
  v50[1] = 0;
  v48 = 0u;
  v49 = 0u;
  v47[0] = 0;
  v47[1] = 0;
  v46[0] = 0;
  v46[1] = 0;
  v45[0] = 0;
  v45[1] = 0;
  OUTLINED_FUNCTION_10_16();
  bzero(v44, v1);
  OUTLINED_FUNCTION_9_16();
  bzero(v55, v2);
  if (!setjmp(v55) && !ventproc(v0, v44, v54, v53, v52, v55))
  {
    v6 = OUTLINED_FUNCTION_3_17();
    get_parm(v6, v7, v8, -6);
    OUTLINED_FUNCTION_8_16();
    *&v49 = 0;
    *(&v49 + 6) = 0;
    LODWORD(v48) = -65532;
    v9 = OUTLINED_FUNCTION_13_16();
    push_ptr_init(v9, v10);
    push_ptr_init(v0, v46);
    v11 = OUTLINED_FUNCTION_6_16();
    push_ptr_init(v11, v12);
    fence_18(v0, 0, &null_str_4);
    v13 = OUTLINED_FUNCTION_2_17();
    startloop(v13, v14);
    v15 = OUTLINED_FUNCTION_13_16();
    copyvar(v15, v16, v51);
    v17 = OUTLINED_FUNCTION_6_16();
    copyvar(v17, v18, v50);
    v19 = OUTLINED_FUNCTION_13_16();
    if (forall_to_test(v19, v20, v45))
    {
      goto LABEL_18;
    }

LABEL_6:
    v21 = OUTLINED_FUNCTION_2_17();
    bspush_ca(v21);
    if (lpta_loadp_setscan_r(v0, v47) || advanc(v0))
    {
      goto LABEL_18;
    }

LABEL_8:
    savescptr(v0, 4, v46);
    while (2)
    {
      v22 = OUTLINED_FUNCTION_2_17();
      starttest(v22, v23);
      v24 = OUTLINED_FUNCTION_18_12();
      if (!lpta_loadp_setscan_r(v24, v25))
      {
LABEL_15:
        v38 = OUTLINED_FUNCTION_2_17();
        bspush_ca_scan(v38, v39);
        v40 = OUTLINED_FUNCTION_5_16();
        if (OUTLINED_FUNCTION_33_5(v40, v41) || advance_tok(v0) || savetok(v0, &v48))
        {
          goto LABEL_18;
        }
      }

LABEL_10:
      starttest(v0, 8);
      v26 = OUTLINED_FUNCTION_29_7();
      if (!if_testgt_v_i(v26, v27, v28, v29, v30, v31, v32, v33))
      {
        v34 = OUTLINED_FUNCTION_29_7();
        move_i(v34, v35, v36);
      }

LABEL_12:
      lpta_rpta_loadp(v0, v47, v46);
      WORD1(v48) = 8;
      insert_2ptv();
      if (!v37)
      {
LABEL_13:
        if (!forto_adv_r(v0, 1, 2, 9, 7, v47))
        {
LABEL_14:
          v3 = 0;
          goto LABEL_4;
        }
      }

LABEL_18:
      v42 = v0[13];
      if (v42)
      {
        v43 = OUTLINED_FUNCTION_21_10(v42);
      }

      else
      {
        v43 = OUTLINED_FUNCTION_27_8();
      }

      switch(v43)
      {
        case 1:
          goto LABEL_14;
        case 2:
          continue;
        case 3:
          goto LABEL_13;
        case 4:
          goto LABEL_8;
        case 5:
          goto LABEL_10;
        case 6:
          goto LABEL_15;
        case 7:
          if (!advance_tok(v0))
          {
            goto LABEL_15;
          }

          goto LABEL_18;
        case 8:
          goto LABEL_12;
        case 9:
          goto LABEL_6;
        default:
          goto LABEL_3;
      }
    }
  }

LABEL_3:
  v3 = 94;
LABEL_4:
  vretproc(v0);
  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t OUTLINED_FUNCTION_0_18()
{
  *(v1 + 112) = v0;
  *(v1 + 128) = 0;
  return v1;
}

void OUTLINED_FUNCTION_8_16()
{

  get_parm(v0, v2, v1, -6);
}

uint64_t OUTLINED_FUNCTION_14_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{

  return lpta_loadp_setscan_r(v32, &a32);
}

uint64_t OUTLINED_FUNCTION_19_11()
{

  return npush_fld(v0, 2u, 5);
}

uint64_t OUTLINED_FUNCTION_23_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, char a37, int a38, __int16 a39, char a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, char a46)
{

  return ventproc(v46, &a9, &a44, &a40, &a37, &a46);
}

void *OUTLINED_FUNCTION_25_10(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return fence_18(v3, 0, a3);
}

void OUTLINED_FUNCTION_26_10(uint64_t a1, uint64_t a2)
{

  get_parm(v2, a2, v3, -6);
}

uint64_t OUTLINED_FUNCTION_27_8()
{

  return vback(v0, 0);
}

BOOL OUTLINED_FUNCTION_33_5(uint64_t a1, unsigned int a2)
{

  return testFldeq(a1, a2, 1, 2);
}

void *fence_19(uint64_t a1, int a2, uint64_t a3)
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

uint64_t word_level_rules(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v54 = *MEMORY[0x277D85DE8];
  v48 = 0;
  v49 = 0;
  v46[2] = 0;
  v47 = 0;
  OUTLINED_FUNCTION_0_19(a1, a2, a3, a4, a5, a6, a7, a8, v45[0], v45[1], v45[2], v45[3], v45[4], v45[5], v45[6], v45[7], v45[8], v45[9], v45[10], v45[11], v45[12], v45[13], v45[14], v45[15], v45[16], v45[17], v45[18], v45[19], v45[20], v45[21], v45[22], v45[23], v45[24], v46[0], v46[1]);
  OUTLINED_FUNCTION_6_17();
  bzero(v53, v10);
  if (!setjmp(v53) && !ventproc(a1, v45, v52, v51, v50, v53))
  {
    v14 = OUTLINED_FUNCTION_2_18();
    OUTLINED_FUNCTION_18_13(v14, v15);
    v16 = OUTLINED_FUNCTION_14_15();
    OUTLINED_FUNCTION_21_11(v16, v17);
    v18 = OUTLINED_FUNCTION_11_17();
    push_ptr_init(v18, v19);
    v20 = OUTLINED_FUNCTION_13_17();
    push_ptr_init(v20, v21);
    fence_19(a1, 0, &null_str_5);
    v22 = OUTLINED_FUNCTION_1_18();
    startloop(v22, v23);
    v24 = OUTLINED_FUNCTION_2_18();
    lpta_loadpn(v24, v25);
    lpta_mover();
    v26 = OUTLINED_FUNCTION_23_11();
    lpta_storep(v26, v27);
    v28 = OUTLINED_FUNCTION_14_15();
    lpta_loadpn(v28, v29);
    lpta_mover();
    v30 = OUTLINED_FUNCTION_11_17();
    lpta_storep(v30, v31);
    v32 = OUTLINED_FUNCTION_23_11();
    if (!forall_to_test(v32, v33, v46))
    {
LABEL_6:
      v34 = OUTLINED_FUNCTION_1_18();
      bspush_ca(v34);
      v35 = OUTLINED_FUNCTION_23_11();
      if (!lpta_loadp_setscan_r(v35, v36) && !advance_tok(a1))
      {
LABEL_8:
        savescptr(a1, 4, a1 + 1336);
LABEL_9:
        OUTLINED_FUNCTION_23_11();
        if (!is_spr())
        {
          *(a1 + 3842) = 1;
        }

LABEL_11:
        v37 = OUTLINED_FUNCTION_1_18();
        starttest(v37, v38);
        v39 = *(a1 + 5122);
        OUTLINED_FUNCTION_3_18();
        if (v40)
        {
          v41 = OUTLINED_FUNCTION_1_18();
          starttest_e(v41, v42);
          por_symbolic_rules(a1, a1 + 1320, (a1 + 1336));
        }

LABEL_14:
        move_i(a1, a1 + 3840, 0);
LABEL_15:
        if (!forto_adv_upto_r(a1, 1, 2, 8, 2, a1 + 1320))
        {
LABEL_20:
          v49 = v47;
          *(a2 + 8) = v47;
          v11 = 0;
          goto LABEL_4;
        }
      }
    }

    v43 = *(a1 + 104);
    if (v43)
    {
      v44 = OUTLINED_FUNCTION_8_17(v43);
    }

    else
    {
      v44 = OUTLINED_FUNCTION_22_11();
    }

    switch(v44)
    {
      case 1:
        goto LABEL_20;
      case 2:
        goto LABEL_9;
      case 3:
        goto LABEL_15;
      case 4:
        goto LABEL_8;
      case 5:
        goto LABEL_11;
      case 6:
      case 7:
        goto LABEL_14;
      case 8:
        goto LABEL_6;
      default:
        break;
    }
  }

  v11 = 94;
LABEL_4:
  vretproc(a1);
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t phrase_level_rules(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v29 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_19(a1, a2, a3, a4, a5, a6, a7, a8, v21[0], v21[1], v21[2], v21[3], v21[4], v21[5], v21[6], v21[7], v21[8], v21[9], v21[10], v21[11], v21[12], v21[13], v21[14], v21[15], v21[16], v21[17], v21[18], v21[19], v21[20], v21[21], v21[22], v21[23], v22, v23, v24);
  OUTLINED_FUNCTION_6_17();
  bzero(v28, v10);
  if (setjmp(v28) || ventproc(a1, v21, v27, v26, v25, v28))
  {
    v11 = 94;
  }

  else
  {
    v14 = OUTLINED_FUNCTION_2_18();
    OUTLINED_FUNCTION_18_13(v14, v15);
    v16 = OUTLINED_FUNCTION_14_15();
    OUTLINED_FUNCTION_21_11(v16, v17);
    v18 = OUTLINED_FUNCTION_17_14();
    fence_19(v18, v19, v20);
    OUTLINED_FUNCTION_2_18();
    lang_phrase_level_rules();
    OUTLINED_FUNCTION_2_18();
    copy_stress_to_phones();
    v24 = v22;
    *(a2 + 8) = v22;
    v11 = 0;
  }

  vretproc(a1);
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t copy_stress_to_phones()
{
  OUTLINED_FUNCTION_4_17();
  v85 = *MEMORY[0x277D85DE8];
  v79 = 0;
  v80 = 0;
  v77 = 0;
  v78 = 0;
  v75[0] = 0;
  v75[1] = 0;
  v76 = 0;
  v74 = 0;
  v73[0] = 0;
  v73[1] = 0;
  OUTLINED_FUNCTION_0_19(v1, v2, v3, v4, v5, v6, v7, v8, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72[0], v72[1]);
  OUTLINED_FUNCTION_6_17();
  bzero(v84, v9);
  if (setjmp(v84) || ventproc(v0, &v47, v83, v82, v81, v84))
  {
LABEL_3:
    v10 = 94;
  }

  else
  {
    v13 = OUTLINED_FUNCTION_2_18();
    OUTLINED_FUNCTION_21_11(v13, v14);
    v15 = OUTLINED_FUNCTION_11_17();
    OUTLINED_FUNCTION_18_13(v15, v16);
    LOWORD(v76) = 0;
    LODWORD(v75[0]) = -65529;
    LOWORD(v74) = -4;
    v17 = OUTLINED_FUNCTION_10_17();
    push_ptr_init(v17, v18);
    push_ptr_init(v0, v72);
    v19 = OUTLINED_FUNCTION_7_17();
    push_ptr_init(v19, v20);
    v21 = OUTLINED_FUNCTION_17_14();
    fence_19(v21, v22, v23);
    HIWORD(v74) = 0;
    v24 = OUTLINED_FUNCTION_1_18();
    startloop(v24, v25);
    v26 = OUTLINED_FUNCTION_2_18();
    lpta_loadpn(v26, v27);
    lpta_mover();
    v28 = OUTLINED_FUNCTION_10_17();
    lpta_storep(v28, v29);
    v30 = OUTLINED_FUNCTION_11_17();
    lpta_loadpn(v30, v31);
    lpta_mover();
    v32 = OUTLINED_FUNCTION_7_17();
    lpta_storep(v32, v33);
    v34 = OUTLINED_FUNCTION_10_17();
    if (!forall_to_test(v34, v35, &v70))
    {
LABEL_6:
      v36 = OUTLINED_FUNCTION_1_18();
      bspush_ca(v36);
      v37 = OUTLINED_FUNCTION_9_17();
      if (!lpta_loadp_setscan_r(v37, v38) && !advance_tok(v0) && !savetok(v0, v75))
      {
LABEL_9:
        OUTLINED_FUNCTION_19_12(4, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72[0]);
LABEL_10:
        WORD1(v75[0]) = 0;
        v39 = OUTLINED_FUNCTION_11_17();
        copyvar(v39, v40, v41);
        v42 = OUTLINED_FUNCTION_5_17();
        lpta_rpta_loadp(v42, v43, v44);
        if (!mark_v(v0, 4u, 8, &v74))
        {
LABEL_11:
          if (!forto_adv_upto_r(v0, 1, 2, 5, 7, v73))
          {
            v10 = 0;
            goto LABEL_4;
          }
        }
      }
    }

    v45 = *(v0 + 104);
    if (v45)
    {
      v46 = OUTLINED_FUNCTION_8_17(v45);
    }

    else
    {
      v46 = OUTLINED_FUNCTION_22_11();
    }

    v10 = 0;
    switch(v46)
    {
      case 1:
        break;
      case 2:
        goto LABEL_10;
      case 3:
        goto LABEL_11;
      case 4:
        goto LABEL_9;
      case 5:
        goto LABEL_6;
      default:
        goto LABEL_3;
    }
  }

LABEL_4:
  vretproc(v0);
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t build_words()
{
  OUTLINED_FUNCTION_4_17();
  v95 = *MEMORY[0x277D85DE8];
  v89 = 0;
  v90 = 0;
  v87 = 0;
  v88 = 0;
  v85 = 0;
  v86 = 0;
  OUTLINED_FUNCTION_0_19(v1, v2, v3, v4, v5, v6, v7, v8, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84);
  OUTLINED_FUNCTION_6_17();
  bzero(v94, v9);
  if (setjmp(v94) || ventproc(v0, &v58, v93, v92, v91, v94))
  {
LABEL_3:
    vretproc(v0);
    result = 94;
  }

  else
  {
    OUTLINED_FUNCTION_21_11(v0, &v89);
    OUTLINED_FUNCTION_18_13(v0, &v87);
    v12 = OUTLINED_FUNCTION_9_17();
    push_ptr_init(v12, v13);
    push_ptr_init(v0, &v83);
    v14 = OUTLINED_FUNCTION_13_17();
    push_ptr_init(v14, v15);
    fence_19(v0, 0, &null_str_5);
    if (*(v0 + 3842) == 1)
    {
      v86 = v90;
      v16 = OUTLINED_FUNCTION_1_18();
      starttest_l(v16, v17);
      v18 = OUTLINED_FUNCTION_9_17();
      if (!lpta_loadp_setscan_r(v18, v19))
      {
LABEL_9:
        while (!advance_tok(v0))
        {
          v20 = OUTLINED_FUNCTION_10_17();
          bspush_ca_scan(v20, v21);
        }

        while (1)
        {
          v51 = *(v0 + 104);
          if (v51)
          {
            v33 = OUTLINED_FUNCTION_8_17(v51);
          }

          else
          {
            v33 = OUTLINED_FUNCTION_22_11();
          }

          switch(v33)
          {
            case 1:
              goto LABEL_14;
            case 2:
              goto LABEL_12;
            case 3:
              OUTLINED_FUNCTION_19_12(3, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83);
              goto LABEL_12;
            case 4:
              goto LABEL_9;
            case 5:
              goto LABEL_13;
            case 6:
              goto LABEL_24;
            case 7:
              goto LABEL_23;
            case 8:
              goto LABEL_30;
            case 9:
              v52 = OUTLINED_FUNCTION_10_17();
              v33 = forto_adv_upto_r(v52, v53, 8, 14, 1, &v85);
              if (!v33)
              {
                goto LABEL_23;
              }

              continue;
            case 10:
              OUTLINED_FUNCTION_19_12(10, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83);
LABEL_30:
              OUTLINED_FUNCTION_5_17();
              insert_word();
              break;
            case 11:
              goto LABEL_26;
            case 12:
              break;
            case 13:
              goto LABEL_16;
            case 14:
              goto LABEL_17;
            case 15:
              goto LABEL_25;
            default:
              goto LABEL_3;
          }

          forall_cont_from(v0);
LABEL_16:
          if (!forall_to_test(v0, &v85, &v81))
          {
LABEL_17:
            v48 = OUTLINED_FUNCTION_1_18();
            bspush_ca(v48);
            v49 = OUTLINED_FUNCTION_9_17();
            if (!lpta_loadp_setscan_r(v49, v50))
            {
LABEL_26:
              while (!testFldeq(v0, 1u, 3, 1) && !advance_tok(v0))
              {
                v56 = OUTLINED_FUNCTION_10_17();
                bspush_ca_scan(v56, v57);
              }
            }
          }
        }
      }

LABEL_12:
      OUTLINED_FUNCTION_5_17();
      insert_word();
LABEL_13:
      *(v0 + 3842) = 0;
    }

    else
    {
LABEL_14:
      v22 = fence_19(v0, 1, &string_5_0);
      *(v0 + 136) = 1;
      v30 = OUTLINED_FUNCTION_16_15(v22, v23, v24, v25, v26, v27, v28, v29, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88);
      addfence(v30, v31);
      v32 = *(v0 + 5114);
      OUTLINED_FUNCTION_3_18();
      if (!v41)
      {
        v42 = OUTLINED_FUNCTION_1_18();
        startloop(v42, v43);
        lpta_loadpn(v0, &v89);
        lpta_mover();
        v44 = OUTLINED_FUNCTION_9_17();
        lpta_storep(v44, v45);
        lpta_loadpn(v0, &v87);
        lpta_mover();
        v46 = OUTLINED_FUNCTION_13_17();
        lpta_storep(v46, v47);
        goto LABEL_16;
      }

LABEL_23:
      *(v0 + 136) = 1;
      v54 = OUTLINED_FUNCTION_16_15(v33, v34, v35, v36, v37, v38, v39, v40, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88);
      remfence(v54, v55);
    }

LABEL_24:
    reset_word_vals(v0);
LABEL_25:
    vretproc(v0);
    result = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t insert_word()
{
  OUTLINED_FUNCTION_4_17();
  v49 = *MEMORY[0x277D85DE8];
  v43 = 0;
  v44 = 0;
  OUTLINED_FUNCTION_0_19(v1, v2, v3, v4, v5, v6, v7, v8, v39[0], v39[1], v39[2], v39[3], v39[4], v39[5], v39[6], v39[7], v39[8], v39[9], v39[10], v39[11], v39[12], v39[13], v39[14], v39[15], v39[16], v39[17], v39[18], v39[19], v39[20], v39[21], v39[22], v39[23], v40, v41, v42);
  OUTLINED_FUNCTION_6_17();
  bzero(v48, v9);
  if (setjmp(v48) || ventproc(v0, v39, v47, v46, v45, v48))
  {
    goto LABEL_3;
  }

  v12 = OUTLINED_FUNCTION_2_18();
  OUTLINED_FUNCTION_21_11(v12, v13);
  v14 = OUTLINED_FUNCTION_11_17();
  OUTLINED_FUNCTION_18_13(v14, v15);
  v16 = OUTLINED_FUNCTION_13_17();
  push_ptr_init(v16, v17);
  v18 = OUTLINED_FUNCTION_17_14();
  fence_19(v18, v19, v20);
  v21 = OUTLINED_FUNCTION_2_18();
  lpta_rpta_loadp(v21, v22, &v41);
  insert_2ptv();
  if (v23 || (v24 = OUTLINED_FUNCTION_5_17(), lpta_rpta_loadp(v24, v25, v26), insert_2ptv(), v27))
  {
    v28 = 0;
  }

  else
  {
    v35 = OUTLINED_FUNCTION_1_18();
    starttest(v35, v36);
    OUTLINED_FUNCTION_1_18();
    bspush_ca_boa();
    v37 = OUTLINED_FUNCTION_9_17();
    v28 = lpta_loadp_setscan_l(v37, v38) == 0;
  }

  v29 = *(v0 + 104);
  if (v29)
  {
    v30 = OUTLINED_FUNCTION_8_17(v29);
  }

  else
  {
    v30 = vback(v0, v28);
  }

  switch(v30)
  {
    case 1:
      goto LABEL_15;
    case 3:
LABEL_16:
      vretproc(v0);
      result = 0;
      goto LABEL_4;
    case 2:
      bspop_boa(v0);
      *(v0 + 168) = 1;
      *(v0 + 144) = v44;
      *(v0 + 128) = 0;
      v31 = OUTLINED_FUNCTION_9_17();
      lpta_loadpn(v31, v32);
      OUTLINED_FUNCTION_17_14();
      lpta_ctxtl();
      v33 = OUTLINED_FUNCTION_13_17();
      lpta_storep(v33, v34);
      *(v0 + 136) = 1;
      *(v0 + 112) = v40;
      *(v0 + 128) = 0;
      OUTLINED_FUNCTION_17_14();
      proj_r();
LABEL_15:
      *(v0 + 136) = 1;
      *(v0 + 112) = v44;
      *(v0 + 128) = 0;
      proj_def_mult(v0, 6u, _MergedGlobals_13, &v43);
      *(v0 + 136) = 1;
      *(v0 + 112) = v42;
      *(v0 + 128) = 0;
      proj_def_mult(v0, 6u, &_MergedGlobals_13[6], &v41);
      init_word(v0);
      goto LABEL_16;
  }

LABEL_3:
  vretproc(v0);
  result = 94;
LABEL_4:
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t reset_word_vals(uint64_t a1)
{
  v44 = *MEMORY[0x277D85DE8];
  v39[23] = 0;
  v39[24] = 0;
  bzero(v39, 0xB8uLL);
  OUTLINED_FUNCTION_6_17();
  bzero(v43, v2);
  if (setjmp(v43) || ventproc(a1, v39, v42, v41, v40, v43))
  {
LABEL_3:
    vretproc(a1);
    result = 94;
    goto LABEL_4;
  }

  v5 = OUTLINED_FUNCTION_13_17();
  OUTLINED_FUNCTION_18_13(v5, v6);
  fence_19(a1, 0, &null_str_5);
  v7 = OUTLINED_FUNCTION_1_18();
  starttest(v7, v8);
  v9 = OUTLINED_FUNCTION_1_18();
  bspush_ca(v9);
  v10 = *(a1 + 5106);
  while (2)
  {
    OUTLINED_FUNCTION_3_18();
    if (!v19)
    {
LABEL_11:
      v24 = *(a1 + 104);
      if (v24)
      {
        v11 = OUTLINED_FUNCTION_8_17(v24);
      }

      else
      {
        v11 = OUTLINED_FUNCTION_22_11();
      }

      switch(v11)
      {
        case 1:
          goto LABEL_9;
        case 2:
          v25 = OUTLINED_FUNCTION_1_18();
          bspush_ca(v25);
          v26 = *(a1 + 5110);
          continue;
        case 3:
          goto LABEL_8;
        case 4:
          v27 = OUTLINED_FUNCTION_1_18();
          bspush_ca(v27);
          v28 = *(a1 + 5122);
          continue;
        case 5:
          v29 = *(a1 + 5098);
          continue;
        case 6:
          goto LABEL_20;
        case 7:
          v30 = *(a1 + 5122);
          goto LABEL_10;
        case 8:
          goto LABEL_19;
        default:
          goto LABEL_3;
      }
    }

    break;
  }

LABEL_8:
  OUTLINED_FUNCTION_20_11(v11, v12, v13, v14, v15, v16, v17, v18);
  OUTLINED_FUNCTION_12_17();
LABEL_9:
  v20 = OUTLINED_FUNCTION_1_18();
  starttest(v20, v21);
  v22 = OUTLINED_FUNCTION_1_18();
  bspush_ca(v22);
  v23 = *(a1 + 5094);
LABEL_10:
  OUTLINED_FUNCTION_3_18();
  if (!v19)
  {
    goto LABEL_11;
  }

LABEL_19:
  OUTLINED_FUNCTION_20_11(v11, v12, v13, v14, v15, v16, v17, v18);
  OUTLINED_FUNCTION_12_17();
  OUTLINED_FUNCTION_20_11(v31, v32, v33, v34, v35, v36, v37, v38);
  OUTLINED_FUNCTION_12_17();
LABEL_20:
  vretproc(a1);
  result = 0;
LABEL_4:
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t init_word(uint64_t a1)
{
  v52 = *MEMORY[0x277D85DE8];
  v46 = 0u;
  v47 = 0u;
  bzero(v45, 0xB8uLL);
  OUTLINED_FUNCTION_6_17();
  bzero(v51, v2);
  if (setjmp(v51) || ventproc(a1, v45, v50, v49, v48, v51))
  {
LABEL_3:
    vretproc(a1);
    result = 94;
    goto LABEL_4;
  }

  v47 = 0uLL;
  LODWORD(v46) = -65534;
  fence_19(a1, 0, &null_str_5);
  copyvar(a1, &v46, (a1 + 3600));
  v5 = *(a1 + 5102);
  OUTLINED_FUNCTION_3_18();
  if (!v6)
  {
    copyvar(a1, (a1 + 3600), (a1 + 3696));
  }

  while (2)
  {
    *(a1 + 3616) = v47 + 1;
    v7 = OUTLINED_FUNCTION_10_17();
    starttest(v7, v8);
    v9 = OUTLINED_FUNCTION_11_17();
    bspush_ca(v9);
    v10 = *(a1 + 5106);
LABEL_8:
    OUTLINED_FUNCTION_3_18();
    if (!v6)
    {
LABEL_16:
      v38 = *(a1 + 104);
      if (v38)
      {
        v39 = OUTLINED_FUNCTION_8_17(v38);
      }

      else
      {
        v39 = OUTLINED_FUNCTION_22_11();
      }

      switch(v39)
      {
        case 1:
          continue;
        case 2:
          goto LABEL_11;
        case 3:
          bspush_ca(a1);
          v40 = *(a1 + 5110);
          goto LABEL_8;
        case 4:
          goto LABEL_10;
        case 5:
          v42 = OUTLINED_FUNCTION_15_15();
          bspush_ca(v42);
          v43 = *(a1 + 5122);
          goto LABEL_8;
        case 6:
          v41 = *(a1 + 5098);
          goto LABEL_8;
        case 7:
          goto LABEL_14;
        case 8:
          goto LABEL_25;
        case 9:
          v44 = *(a1 + 5094);
          goto LABEL_15;
        case 10:
          goto LABEL_24;
        default:
          goto LABEL_3;
      }
    }

    break;
  }

LABEL_10:
  WORD1(v46) = 10;
  v11 = OUTLINED_FUNCTION_2_18();
  npush_v(v11, v12, v13, v14, v15, v16, v17, v18);
  *(a1 + 3602) = 10;
  npop(a1, (a1 + 3600));
LABEL_11:
  v19 = *(a1 + 5122);
  OUTLINED_FUNCTION_3_18();
  if (v6)
  {
    WORD1(v46) = 1;
    v20 = OUTLINED_FUNCTION_2_18();
    npush_v(v20, v21, v22, v23, v24, v25, v26, v27);
    *(a1 + 3602) = 1;
    npop(a1, (a1 + 3600));
  }

LABEL_14:
  v28 = OUTLINED_FUNCTION_14_15();
  starttest(v28, v29);
  v30 = OUTLINED_FUNCTION_7_17();
  bspush_ca(v30);
  v31 = *(a1 + 5122);
LABEL_15:
  OUTLINED_FUNCTION_3_18();
  if (!v6)
  {
    goto LABEL_16;
  }

LABEL_24:
  WORD1(v46) = 3;
  npush_v(a1, &v46, v32, v33, v34, v35, v36, v37);
  OUTLINED_FUNCTION_12_17();
LABEL_25:
  vretproc(a1);
  result = 0;
LABEL_4:
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t estimate_nsylls(uint64_t a1, uint64_t a2, uint64_t a3, __int16 *a4)
{
  OUTLINED_FUNCTION_4_17();
  v54 = *MEMORY[0x277D85DE8];
  v49[0] = 0;
  v49[1] = 0;
  v48[0] = 0;
  v48[1] = 0;
  v47 = 0;
  v46[0] = 0;
  v46[1] = 0;
  v45[0] = 0;
  v45[1] = 0;
  v44[0] = 0;
  v44[1] = 0;
  v43[0] = 0;
  v43[1] = 0;
  v42[0] = 0;
  v42[1] = 0;
  v41[0] = 0;
  v41[1] = 0;
  v40[0] = 0;
  v40[1] = 0;
  bzero(v39, 0xB8uLL);
  OUTLINED_FUNCTION_6_17();
  bzero(v53, v6);
  if (!setjmp(v53) && !ventproc(v4, v39, v52, v51, v50, v53))
  {
    OUTLINED_FUNCTION_21_11(v4, v49);
    OUTLINED_FUNCTION_18_13(v4, v48);
    get_parm(v4, &v47, a4, -4);
    push_ptr_init(v4, v46);
    push_ptr_init(v4, v45);
    push_ptr_init(v4, v44);
    push_ptr_init(v4, v43);
    push_ptr_init(v4, v42);
    push_ptr_init(v4, v41);
    push_ptr_init(v4, v40);
    fence_19(v4, 0, &null_str_5);
    v10 = *(v4 + 5114);
    OUTLINED_FUNCTION_3_18();
    if (v11)
    {
      goto LABEL_7;
    }

    while (2)
    {
      HIWORD(v47) = 0;
      startloop(v4, 2);
      lpta_loadpn(v4, v49);
      OUTLINED_FUNCTION_24_11();
      lpta_mover();
      v12 = OUTLINED_FUNCTION_7_17();
      lpta_storep(v12, v13);
      lpta_loadpn(v4, v48);
      OUTLINED_FUNCTION_24_11();
      lpta_mover();
      lpta_storep(v4, v44);
      v14 = OUTLINED_FUNCTION_7_17();
      if (forall_to_test(v14, v15, v44))
      {
        goto LABEL_24;
      }

LABEL_9:
      bspush_ca(v4);
      v16 = OUTLINED_FUNCTION_7_17();
      if (lpta_loadp_setscan_r(v16, v17) || advance_tok(v4))
      {
        goto LABEL_24;
      }

LABEL_11:
      savescptr(v4, 5, v45);
LABEL_12:
      v18 = *(v4 + 5102);
      OUTLINED_FUNCTION_3_18();
      if (!v11)
      {
        v19 = OUTLINED_FUNCTION_7_17();
        if (!lpta_loadp_setscan_r(v19, v20) && !advance_tok(v4))
        {
          startloop(v4, 7);
          v21 = OUTLINED_FUNCTION_7_17();
          lpta_loadpn(v21, v22);
          OUTLINED_FUNCTION_24_11();
          lpta_mover();
          lpta_storep(v4, v43);
          lpta_loadpn(v4, v45);
          OUTLINED_FUNCTION_24_11();
          lpta_mover();
          v23 = OUTLINED_FUNCTION_14_15();
          lpta_storep(v23, v24);
          if (forall_to_test(v4, v43, v42))
          {
            goto LABEL_24;
          }

LABEL_35:
          bspush_ca(v4);
          if (lpta_loadp_setscan_r(v4, v43) || advance_tok(v4))
          {
            goto LABEL_24;
          }

LABEL_28:
          c_assvar(v4, &v47);
          ++HIWORD(v47);
LABEL_29:
          if (forto_adv_upto_r(v4, 7, 8, 10, 7, v43))
          {
            goto LABEL_24;
          }

          goto LABEL_23;
        }
      }

LABEL_17:
      startloop(v4, 4);
      v25 = OUTLINED_FUNCTION_15_15();
      copyvar(v25, v26, v46);
      v27 = OUTLINED_FUNCTION_14_15();
      copyvar(v27, v28, v45);
      v29 = OUTLINED_FUNCTION_15_15();
      if (forall_to_test(v29, v30, v42))
      {
        goto LABEL_24;
      }

LABEL_18:
      bspush_ca(v4);
      v31 = OUTLINED_FUNCTION_15_15();
      if (!lpta_loadp_setscan_l(v31, v32))
      {
LABEL_19:
        v33 = OUTLINED_FUNCTION_15_15();
        if (!lpta_loadp_setscan_r(v33, v34) && !advanc(v4))
        {
LABEL_21:
          savescptr(v4, 14, v40);
          starttest_l(v4, 15);
          estimate_lang_nsylls(v4, &v47, v41);
          goto LABEL_22;
        }

LABEL_31:
        starttest(v4, 12);
        v37 = OUTLINED_FUNCTION_15_15();
        if (lpta_loadp_setscan_r(v37, v38))
        {
LABEL_22:
          if (forto_adv_r(v4, 4, 11, 16, 4, v41))
          {
            goto LABEL_24;
          }

LABEL_23:
          if (forto_adv_upto_r(v4, 2, 3, 17, 2, v46))
          {
            goto LABEL_24;
          }

LABEL_7:
          v7 = 0;
          a4[1] = HIWORD(v47);
          goto LABEL_4;
        }

        if (!testFldeq(v4, 4u, 1, 2) && !advance_tok(v4))
        {
          c_assvar(v4, &v47);
          ++HIWORD(v47);
          goto LABEL_22;
        }
      }

LABEL_24:
      v35 = *(v4 + 104);
      if (v35)
      {
        v36 = OUTLINED_FUNCTION_8_17(v35);
      }

      else
      {
        v36 = vback(v4, 0);
      }

      switch(v36)
      {
        case 1:
          continue;
        case 2:
          goto LABEL_7;
        case 3:
          goto LABEL_12;
        case 4:
        case 7:
          goto LABEL_23;
        case 5:
          goto LABEL_11;
        case 6:
          goto LABEL_17;
        case 8:
          goto LABEL_28;
        case 9:
          goto LABEL_29;
        case 10:
          goto LABEL_35;
        case 11:
          goto LABEL_19;
        case 12:
        case 15:
          goto LABEL_22;
        case 13:
          goto LABEL_31;
        case 14:
          goto LABEL_21;
        case 16:
          goto LABEL_18;
        case 17:
          goto LABEL_9;
        default:
          goto LABEL_3;
      }
    }
  }

LABEL_3:
  v7 = 94;
LABEL_4:
  vretproc(v4);
  v8 = *MEMORY[0x277D85DE8];
  return v7;
}