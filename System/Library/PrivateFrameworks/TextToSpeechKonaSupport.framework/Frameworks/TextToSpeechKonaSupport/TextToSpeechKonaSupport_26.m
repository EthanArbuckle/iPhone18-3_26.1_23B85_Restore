uint64_t begins_noun_phrase()
{
  OUTLINED_FUNCTION_102_6();
  v96 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_22_31(v1, v2, v3, v4, v5, v6, v7, v8, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84);
  OUTLINED_FUNCTION_56_15();
  bzero(v95, v9);
  v10 = setjmp(v95);
  if (v10 || OUTLINED_FUNCTION_53_15(v10, &v60, v11, v12, v13, v14, v15, v16, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95[0]))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_40_18();
  fence_42(v0, 0, &null_str_10);
  v20 = OUTLINED_FUNCTION_6_39();
  fence_42(v20, v21, v22);
  v23 = OUTLINED_FUNCTION_66_13();
  starttest(v23, v24);
  v25 = OUTLINED_FUNCTION_50_15();
  if (lpta_loadp_setscan_r(v25, v26))
  {
LABEL_6:
    v27 = OUTLINED_FUNCTION_26_29();
    starttest(v27, v28);
    v29 = OUTLINED_FUNCTION_46_16();
    if (lpta_loadp_setscan_r(v29, v30))
    {
LABEL_3:
      v17 = 94;
      goto LABEL_4;
    }

    bspush_boa(v0);
    do
    {
LABEL_8:
      v31 = OUTLINED_FUNCTION_17_35();
      bspush_ca_scan(v31, v32);
      v33 = OUTLINED_FUNCTION_13_38();
      bspush_ca_scan(v33, v34);
LABEL_9:
      v35 = OUTLINED_FUNCTION_1_42();
    }

    while (!testFldeq(v35, v36, v37, v38) && !advance_tok(v0));
  }

  else
  {
    v39 = OUTLINED_FUNCTION_9_39();
    bspush_ca_scan(v39, v40);
    v41 = OUTLINED_FUNCTION_2_42();
    v44 = 7;
LABEL_13:
    if (!testFldeq(v41, v42, v43, v44))
    {
LABEL_14:
      if (!advance_tok(v0))
      {
        v17 = 0;
        goto LABEL_4;
      }
    }
  }

  while (2)
  {
    v45 = *(v0 + 104);
    if (v45)
    {
      v46 = OUTLINED_FUNCTION_58_14(v45);
    }

    else
    {
      v47 = OUTLINED_FUNCTION_76_10();
      v46 = vback(v47, v48);
    }

    v17 = 94;
    switch(v46)
    {
      case 1:
        goto LABEL_6;
      case 2:
        v56 = OUTLINED_FUNCTION_66_13();
        bspush_ca_scan(v56, v57);
        v41 = OUTLINED_FUNCTION_51_15();
        v44 = 14;
        goto LABEL_13;
      case 3:
      case 13:
        goto LABEL_14;
      case 4:
        v58 = OUTLINED_FUNCTION_28_27();
        bspush_ca_scan(v58, v59);
        v41 = OUTLINED_FUNCTION_2_42();
        v44 = 6;
        goto LABEL_13;
      case 5:
        v52 = OUTLINED_FUNCTION_27_28();
        bspush_ca_scan(v52, v53);
        v41 = OUTLINED_FUNCTION_2_42();
        v44 = 15;
        goto LABEL_13;
      case 6:
        v41 = OUTLINED_FUNCTION_2_42();
        v44 = 16;
        goto LABEL_13;
      case 8:
        bspush_nboa(v0);
        v54 = OUTLINED_FUNCTION_32_25();
        bspush_ca_scan(v54, v55);
        v41 = OUTLINED_FUNCTION_2_42();
        v44 = 10;
        goto LABEL_13;
      case 9:
        v49 = OUTLINED_FUNCTION_2_42();
        if (!testFldeq(v49, v50, v51, 2) && !advance_tok(v0))
        {
          goto LABEL_9;
        }

        continue;
      case 10:
        goto LABEL_9;
      case 11:
        goto LABEL_8;
      case 12:
        v41 = OUTLINED_FUNCTION_2_42();
        v44 = 23;
        goto LABEL_13;
      default:
        goto LABEL_4;
    }
  }

LABEL_4:
  vretproc(v0);
  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

void preceded_by_copula_verb()
{
  OUTLINED_FUNCTION_88_9();
  OUTLINED_FUNCTION_102_6();
  v47 = *MEMORY[0x277D85DE8];
  memset(v42, 0, sizeof(v42));
  v41[0] = 0;
  v41[1] = 0;
  v40[0] = 0;
  v40[1] = 0;
  OUTLINED_FUNCTION_57_14();
  bzero(v39, v1);
  OUTLINED_FUNCTION_56_15();
  bzero(v46, v2);
  if (setjmp(v46))
  {
    goto LABEL_5;
  }

  if (ventproc(v0, v39, v45, v44, v43, v46))
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_40_18();
  push_ptr_init(v0, v42);
  v3 = OUTLINED_FUNCTION_99_6();
  push_ptr_init(v3, v4);
  push_ptr_init(v0, v40);
  fence_42(v0, 0, &null_str_10);
  v5 = OUTLINED_FUNCTION_6_39();
  fence_42(v5, v6, v7);
  v8 = OUTLINED_FUNCTION_66_13();
  starttest(v8, v9);
  v10 = OUTLINED_FUNCTION_50_15();
  if (lpta_loadp_setscan_l(v10, v11) || advanc(v0))
  {
    goto LABEL_5;
  }

  while (2)
  {
    v13 = OUTLINED_FUNCTION_59_14();
    savescptr(v13, v14, v41);
    if (!advance_tok(v0))
    {
LABEL_7:
      v15 = OUTLINED_FUNCTION_80_10();
      savescptr(v15, v16, v42);
      starttest(v0, 4);
      v17 = OUTLINED_FUNCTION_77_10();
      if (!lpta_loadp_setscan_r(v17, v18))
      {
        v19 = OUTLINED_FUNCTION_123_6();
LABEL_9:
        if (!testFldeq(v19, v20, v21, v22) && !advance_tok(v0))
        {
          break;
        }

        goto LABEL_11;
      }

LABEL_15:
      v27 = OUTLINED_FUNCTION_86_9();
      starttest(v27, v28);
      v29 = OUTLINED_FUNCTION_77_10();
      if (lpta_loadp_setscan_l(v29, v30))
      {
LABEL_20:
        is_copula_verb();
        break;
      }

LABEL_16:
      v31 = OUTLINED_FUNCTION_92_8();
      savescptr(v31, v32, v40);
      v33 = OUTLINED_FUNCTION_123_6();
      if (!testFldeq(v33, v34, v35, v36) && !advance_tok(v0))
      {
        v37 = OUTLINED_FUNCTION_54_15();
        if (!lpta_loadp_setscan_r(v37, v38))
        {
          OUTLINED_FUNCTION_95_7();
          goto LABEL_9;
        }
      }
    }

LABEL_11:
    v23 = v0[13];
    if (v23)
    {
      v24 = OUTLINED_FUNCTION_58_14(v23);
    }

    else
    {
      v25 = OUTLINED_FUNCTION_76_10();
      v24 = vback(v25, v26);
    }

    switch(v24)
    {
      case 2:
        continue;
      case 3:
        goto LABEL_7;
      case 4:
        goto LABEL_15;
      case 5:
        goto LABEL_20;
      case 6:
        goto LABEL_16;
      default:
        goto LABEL_5;
    }
  }

LABEL_5:
  vretproc(v0);
  v12 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_87_9();
}

uint64_t apply_eng_comma_rules()
{
  OUTLINED_FUNCTION_19_34();
  v126 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_10_38(v3, v4, v5, v6, v7, v8, v9, v10, v34, v37, v40, v43, v46, v49, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v110, v113);
  OUTLINED_FUNCTION_56_15();
  OUTLINED_FUNCTION_113_6(v11, v12, v13, v14, v15, v16, v17, v18, v35, v38, v41, v44, v47, v50, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v111, v114, v116, v118, v120, v122, v124);
  v19 = setjmp(v2);
  if (!v19 && !OUTLINED_FUNCTION_16_37(v19, v20, v21, v22, v23, v24, v25, v26, v36, v39, v42, v45, v48, v51, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v112, v115, *v117, v117[4], *v119, *&v119[4], v119[6], v121, SWORD2(v121), SBYTE6(v121), SHIBYTE(v121), v123, v125))
  {
    v29 = OUTLINED_FUNCTION_12_38();
    get_parm(v29, v30, v31, -6);
    OUTLINED_FUNCTION_40_18();
    OUTLINED_FUNCTION_94_7(v32, v33, &null_str_10);
    OUTLINED_FUNCTION_12_38();
    continuation_phrase();
    OUTLINED_FUNCTION_12_38();
    insert_comma_phrase();
    *(v1 + 8) = v109;
  }

  vretproc(v0);
  v27 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_121_6();
}

uint64_t continuation_phrase()
{
  OUTLINED_FUNCTION_19_34();
  v119 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_10_38(v1, v2, v3, v4, v5, v6, v7, v8, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117);
  OUTLINED_FUNCTION_56_15();
  bzero(v118, v9);
  if (setjmp(v118))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_62_14();
  if (ventproc(v0, v10, v11, v12, v13, v118))
  {
    goto LABEL_3;
  }

  v16 = OUTLINED_FUNCTION_12_38();
  get_parm(v16, v17, v18, -6);
  v19 = OUTLINED_FUNCTION_67_13();
  OUTLINED_FUNCTION_97_7(v19, v20);
  v21 = OUTLINED_FUNCTION_64_13();
  push_ptr_init(v21, v22);
  v23 = OUTLINED_FUNCTION_63_14();
  v25 = push_ptr_init(v23, v24);
  v26 = 0;
  OUTLINED_FUNCTION_94_7(v25, v27, &null_str_10);
  v28 = OUTLINED_FUNCTION_39_19();
  starttest(v28, v29);
  v30 = OUTLINED_FUNCTION_54_15();
  if (lpta_loadp_setscan_r(v30, v31))
  {
LABEL_29:
    OUTLINED_FUNCTION_67_13();
    if (day_month())
    {
LABEL_35:
      v60 = OUTLINED_FUNCTION_27_28();
      starttest(v60, v61);
      v62 = OUTLINED_FUNCTION_46_16();
      v43 = v26;
      if (!lpta_loadp_setscan_r(v62, v63))
      {
LABEL_36:
        v35 = v43;
        v64 = OUTLINED_FUNCTION_69_11();
        savescptr(v64, v65, v66);
        if (advance_tok(v0))
        {
          goto LABEL_49;
        }

LABEL_37:
        v26 = v43;
        v67 = OUTLINED_FUNCTION_73_10();
        savescptr(v67, v68, v69);
      }

LABEL_38:
      OUTLINED_FUNCTION_38_19();
      if (!is_pick_up_word())
      {
        v70 = OUTLINED_FUNCTION_13_38();
        starttest_e(v70, v71);
        OUTLINED_FUNCTION_65_13();
        v72 = OUTLINED_FUNCTION_5_40();
        if (!setscan_nof_r(v72))
        {
          v43 = v26;
          if (!advanc(v0))
          {
LABEL_41:
            v35 = v43;
            v73 = OUTLINED_FUNCTION_69_11();
            savescptr(v73, v74, v75);
            if (advance_tok(v0))
            {
              goto LABEL_49;
            }

LABEL_42:
            v26 = v43;
            v76 = OUTLINED_FUNCTION_73_10();
            savescptr(v76, v77, v78);
          }
        }
      }

LABEL_43:
      OUTLINED_FUNCTION_111_6();
      subordinate_clause();
      v43 = v26;
      if (v79)
      {
LABEL_44:
        OUTLINED_FUNCTION_111_6();
        v35 = v43;
        if (short_continuation_phrase())
        {
LABEL_45:
          v80 = OUTLINED_FUNCTION_24_29();
          starttest(v80, v81);
          v82 = OUTLINED_FUNCTION_33_24();
          if (lpta_loadp_setscan_r(v82, v83))
          {
            goto LABEL_3;
          }

          v84 = OUTLINED_FUNCTION_2_42();
          if (!testFldeq(v84, v85, v86, 3))
          {
            OUTLINED_FUNCTION_23_31();
            bspush_ca_scan_boa();
            v87 = OUTLINED_FUNCTION_2_42();
            if (!testFldeq(v87, v88, v89, 14))
            {
              v35 = 1;
            }
          }

          goto LABEL_49;
        }
      }
    }

    goto LABEL_50;
  }

  v32 = OUTLINED_FUNCTION_2_42();
  if (testFldeq(v32, v33, v34, 5) || advance_tok(v0))
  {
    v35 = 0;
    goto LABEL_49;
  }

  v36 = OUTLINED_FUNCTION_9_39();
  bspush_ca_scan(v36, v37);
  v38 = 0;
  while (2)
  {
    v35 = v38;
    OUTLINED_FUNCTION_65_13();
    v39 = OUTLINED_FUNCTION_5_40();
    if (!test_ptr(v39))
    {
LABEL_50:
      v90 = OUTLINED_FUNCTION_47_16();
      npush_s(v90);
      *(v0 + 3282) = 4;
      npop(v0, (v0 + 3280));
      break;
    }

LABEL_49:
    v47 = v35;
LABEL_11:
    v40 = *(v0 + 104);
    if (v40)
    {
      v41 = OUTLINED_FUNCTION_58_14(v40);
      v43 = v42;
    }

    else
    {
      v41 = vback(v0, v47);
      v43 = 0;
    }

    v38 = v43;
    switch(v41)
    {
      case 1:
        v26 = v43;
        goto LABEL_29;
      case 2:
        v44 = OUTLINED_FUNCTION_45_16();
        v46 = testFldeq(v44, v45, 1, 19);
        v47 = v43;
        if (!v46)
        {
          v48 = advance_tok(v0);
          v38 = v43;
          v47 = v43;
          if (!v48)
          {
            continue;
          }
        }

        goto LABEL_11;
      case 3:
        continue;
      case 4:
        goto LABEL_50;
      case 5:
        v26 = v43;
        goto LABEL_35;
      case 6:
        v26 = v43;
        goto LABEL_38;
      case 7:
        goto LABEL_36;
      case 8:
        goto LABEL_37;
      case 9:
        v26 = v43;
        goto LABEL_43;
      case 10:
        goto LABEL_41;
      case 11:
        goto LABEL_42;
      case 12:
        goto LABEL_44;
      case 13:
        v35 = v43;
        goto LABEL_45;
      case 15:
        bspop_boa(v0);
        v54 = advance_tok(v0);
        v47 = v43;
        if (!v54)
        {
          v55 = OUTLINED_FUNCTION_50_15();
          v57 = lpta_loadp_setscan_l(v55, v56);
          v47 = v43;
          if (!v57)
          {
            OUTLINED_FUNCTION_54_15();
            bspush_ca_scan_boa();
            v58 = OUTLINED_FUNCTION_45_16();
            if (testFldeq(v58, v59, 1, 18))
            {
              v47 = v43;
            }

            else
            {
              v47 = 1;
            }
          }
        }

        goto LABEL_11;
      case 16:
        bspop_boa(v0);
        v49 = advance_tok(v0);
        v47 = v43;
        if (!v49)
        {
          *(v0 + 136) = 1;
          OUTLINED_FUNCTION_5_40();
          v50 = lpta_tstmovel();
          v47 = v43;
          if (!v50)
          {
            v51 = OUTLINED_FUNCTION_52_15();
            setscan_r(v51);
            v47 = v43;
            if (!v52)
            {
              OUTLINED_FUNCTION_52_15();
              v53 = test_string_s();
              v47 = v43;
              if (!v53)
              {
                goto LABEL_50;
              }
            }
          }
        }

        goto LABEL_11;
      default:
        goto LABEL_3;
    }
  }

LABEL_3:
  vretproc(v0);
  v14 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_120_6();
}

uint64_t day_month()
{
  OUTLINED_FUNCTION_102_6();
  v104 = *MEMORY[0x277D85DE8];
  v99 = 0;
  v100 = 0;
  v97 = 0;
  v98 = 0;
  v95 = 0;
  v96 = 0;
  v93 = 0;
  v94 = 0;
  OUTLINED_FUNCTION_10_38(v1, v2, v3, v4, v5, v6, v7, v8, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92);
  OUTLINED_FUNCTION_56_15();
  bzero(v103, v9);
  v10 = setjmp(v103);
  if (v10 || OUTLINED_FUNCTION_114_6(v10, &v66, v11, v12, v13, v14, v15, v16, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102))
  {
LABEL_3:
    vretproc(v0);
    result = 94;
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_40_18();
  push_ptr_init(v0, &v97);
  push_ptr_init(v0, &v95);
  v19 = OUTLINED_FUNCTION_67_13();
  push_ptr_init(v19, v20);
  v21 = OUTLINED_FUNCTION_64_13();
  push_ptr_init(v21, v22);
  v23 = OUTLINED_FUNCTION_63_14();
  v25 = push_ptr_init(v23, v24);
  OUTLINED_FUNCTION_94_7(v25, v26, &null_str_10);
  v27 = OUTLINED_FUNCTION_39_19();
  starttest(v27, v28);
  v29 = OUTLINED_FUNCTION_50_15();
  v31 = lpta_loadp_setscan_l(v29, v30);
  v32 = 0;
  v33 = 0;
  if (v31)
  {
    goto LABEL_13;
  }

  while (2)
  {
    v34 = v32;
    OUTLINED_FUNCTION_61_14();
    v35 = OUTLINED_FUNCTION_73_10();
    savescptr(v35, v36, v37);
    v38 = v34;
LABEL_7:
    v39 = v38;
    OUTLINED_FUNCTION_116_6(3, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95);
    v40 = advance_tok(v0);
    v41 = v39;
    v42 = v39;
    if (!v40)
    {
LABEL_8:
      savescptr(v0, 4, &v97);
      v43 = OUTLINED_FUNCTION_63_14();
      if (lpta_loadp_setscan_r(v43, v44))
      {
        v42 = v41;
        goto LABEL_18;
      }

      v45 = advanc(v0);
      v46 = v41;
      v42 = v41;
      if (v45)
      {
        goto LABEL_18;
      }

LABEL_11:
      v47 = v46;
      OUTLINED_FUNCTION_78_10(5, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93);
      v48 = advance_tok(v0);
      v49 = v47;
      v42 = v47;
      if (v48)
      {
        goto LABEL_18;
      }

LABEL_12:
      v33 = v49;
      v50 = OUTLINED_FUNCTION_69_11();
      savescptr(v50, v51, v52);
LABEL_13:
      v53 = OUTLINED_FUNCTION_26_29();
      starttest(v53, v54);
      OUTLINED_FUNCTION_17_35();
      bspush_ca_boa();
      lpta_rpta_loadp(v0, &v97, &v95);
      v55 = OUTLINED_FUNCTION_47_16();
      if (setd_lookup(v55, v56, 394))
      {
        v42 = v33;
      }

      else
      {
        v57 = OUTLINED_FUNCTION_69_11();
        lpta_rpta_loadp(v57, v58, v59);
        v60 = OUTLINED_FUNCTION_47_16();
        if (setd_lookup(v60, v61, 395))
        {
          v42 = v33;
        }

        else
        {
          v42 = 1;
        }
      }
    }

LABEL_18:
    v62 = *(v0 + 104);
    if (v62)
    {
      *(v0 + 104) = 0;
      v63 = v62;
      v64 = v42;
    }

    else
    {
      v63 = vback(v0, v42);
      v64 = 0;
    }

    v65 = v63 - 1;
    v32 = v64;
    v38 = v64;
    v41 = v64;
    v46 = v64;
    v49 = v64;
    v33 = v64;
    switch(v65)
    {
      case 0:
        goto LABEL_13;
      case 1:
        continue;
      case 2:
        goto LABEL_7;
      case 3:
        goto LABEL_8;
      case 4:
        goto LABEL_11;
      case 5:
        goto LABEL_12;
      case 6:
        *(v0 + 3754) = *(v0 + 3454);
        vretproc(v0);
        result = 0;
        break;
      case 7:
        bspop_boa(v0);
        goto LABEL_3;
      default:
        goto LABEL_3;
    }

    break;
  }

LABEL_4:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t is_pick_up_word()
{
  OUTLINED_FUNCTION_19_34();
  v140 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_10_38(v2, v3, v4, v5, v6, v7, v8, v9, v49, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118, v121, v124, v127);
  OUTLINED_FUNCTION_56_15();
  OUTLINED_FUNCTION_113_6(v10, v11, v12, v13, v14, v15, v16, v17, v50, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v119, v122, v125, v128, v130, v132, v134, v136, v138);
  v18 = setjmp(v1);
  if (!v18 && !OUTLINED_FUNCTION_16_37(v18, v19, v20, v21, v22, v23, v24, v25, v51, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117, v120, v123, v126, v129, *v131, v131[4], *v133, *&v133[4], v133[6], v135, SWORD2(v135), SBYTE6(v135), SHIBYTE(v135), v137, v139))
  {
    v26 = OUTLINED_FUNCTION_12_38();
    get_parm(v26, v27, v28, -6);
    v29 = OUTLINED_FUNCTION_63_14();
    OUTLINED_FUNCTION_97_7(v29, v30);
    fence_42(v0, 0, &null_str_10);
    v31 = OUTLINED_FUNCTION_39_19();
    starttest(v31, v32);
    v33 = OUTLINED_FUNCTION_54_15();
    if (lpta_loadp_setscan_r(v33, v34) || ((v42 = OUTLINED_FUNCTION_3_41(), testFldeq(v42, v43, v44, 4)) || advance_tok(v0)) && ((v45 = *(v0 + 104)) == 0 ? (v47 = OUTLINED_FUNCTION_76_10(), v46 = vback(v47, v48)) : (v46 = OUTLINED_FUNCTION_58_14(v45)), v46 == 1))
    {
      v35 = OUTLINED_FUNCTION_38_19();
      lpta_rpta_loadp(v35, v36, v37);
      v38 = OUTLINED_FUNCTION_47_16();
      setd_lookup(v38, v39, 450);
    }
  }

  vretproc(v0);
  v40 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_121_6();
}

void subordinate_clause()
{
  OUTLINED_FUNCTION_88_9();
  OUTLINED_FUNCTION_110_6();
  v69 = *MEMORY[0x277D85DE8];
  memset(v64, 0, sizeof(v64));
  v62 = 0;
  v63 = 0;
  OUTLINED_FUNCTION_57_14();
  bzero(v61, v3);
  OUTLINED_FUNCTION_56_15();
  bzero(v68, v4);
  if (setjmp(v68))
  {
    goto LABEL_3;
  }

  if (ventproc(v0, v61, v67, v66, v65, v68))
  {
    goto LABEL_3;
  }

  v6 = OUTLINED_FUNCTION_80_10();
  get_parm(v6, v7, v2, -6);
  v8 = OUTLINED_FUNCTION_119_6();
  OUTLINED_FUNCTION_112_6(v8, v9);
  OUTLINED_FUNCTION_93_7(v10, v64);
  v11 = OUTLINED_FUNCTION_75_10();
  get_parm(v11, v12, v13, -6);
  fence_42(v0, 0, &null_str_10);
  v14 = OUTLINED_FUNCTION_6_39();
  fence_42(v14, v15, v16);
  lpta_loadpn(v0, v0 + 1416);
  v17 = OUTLINED_FUNCTION_80_10();
  rpta_loadpn(v17, v18);
  if (!compare_ptas(v0) && !testneq(v0))
  {
    goto LABEL_3;
  }

  while (2)
  {
    v19 = OUTLINED_FUNCTION_100_6();
    starttest(v19, v20);
    v21 = OUTLINED_FUNCTION_85_10();
    if (lpta_loadp_setscan_r(v21, v22))
    {
LABEL_7:
      v23 = OUTLINED_FUNCTION_106_6();
      starttest(v23, v24);
      v25 = OUTLINED_FUNCTION_85_10();
      if (lpta_loadp_setscan_r(v25, v26))
      {
LABEL_18:
        v35 = OUTLINED_FUNCTION_101_6();
        starttest(v35, v36);
        v37 = OUTLINED_FUNCTION_85_10();
        if (lpta_loadp_setscan_r(v37, v38))
        {
LABEL_19:
          v39 = OUTLINED_FUNCTION_124_6();
          starttest(v39, v40);
          v41 = OUTLINED_FUNCTION_85_10();
          if (lpta_loadp_setscan_r(v41, v42))
          {
LABEL_20:
            v43 = OUTLINED_FUNCTION_91_8();
            starttest(v43, v44);
            v45 = OUTLINED_FUNCTION_85_10();
            if (lpta_loadp_setscan_r(v45, v46))
            {
              break;
            }

            OUTLINED_FUNCTION_52_15();
            if (test_string_s())
            {
              break;
            }

LABEL_22:
            v47 = OUTLINED_FUNCTION_122_6();
            if (!test_synch(v47, v48, v1, &unk_280580E1A))
            {
              break;
            }
          }

          else
          {
            v58 = OUTLINED_FUNCTION_41_18();
            if (!testFldeq(v58, v59, v60, 19) && !advance_tok(v0) && !lpta_loadp_setscan_l(v0, v64))
            {
              OUTLINED_FUNCTION_52_15();
              if (!test_string_s())
              {
                break;
              }
            }
          }
        }

        else
        {
          v49 = OUTLINED_FUNCTION_98_7();
          bspush_ca_scan(v49, v50);
          OUTLINED_FUNCTION_34_24();
LABEL_29:
          if (!test_string_s())
          {
LABEL_30:
            *(v0 + 136) = v1;
            v57 = OUTLINED_FUNCTION_5_40();
            if (!test_ptr(v57))
            {
              break;
            }
          }
        }

        goto LABEL_12;
      }

      bspush_ca_scan(v0, 5);
      v27 = OUTLINED_FUNCTION_41_18();
LABEL_17:
      v30 = 13;
    }

    else
    {
      v27 = OUTLINED_FUNCTION_70_11();
      v29 = 2;
      v30 = 32;
    }

    if (!testFldeq(v27, v28, v29, v30))
    {
LABEL_11:
      if (!advance_tok(v0))
      {
        break;
      }
    }

LABEL_12:
    v31 = *(v0 + 104);
    if (v31)
    {
      v32 = OUTLINED_FUNCTION_58_14(v31);
    }

    else
    {
      v33 = OUTLINED_FUNCTION_76_10();
      v32 = vback(v33, v34);
    }

    switch(v32)
    {
      case 1:
        continue;
      case 3:
        goto LABEL_7;
      case 4:
        goto LABEL_18;
      case 5:
        v27 = OUTLINED_FUNCTION_70_11();
        v29 = 2;
        goto LABEL_17;
      case 6:
        goto LABEL_11;
      case 7:
        goto LABEL_19;
      case 8:
        v51 = OUTLINED_FUNCTION_77_10();
        bspush_ca_scan(v51, v52);
        OUTLINED_FUNCTION_52_15();
        goto LABEL_29;
      case 9:
        goto LABEL_30;
      case 10:
        v55 = OUTLINED_FUNCTION_92_8();
        bspush_ca_scan(v55, v56);
        OUTLINED_FUNCTION_52_15();
        goto LABEL_29;
      case 11:
        v53 = OUTLINED_FUNCTION_54_15();
        bspush_ca_scan(v53, v54);
        OUTLINED_FUNCTION_52_15();
        goto LABEL_29;
      case 12:
        OUTLINED_FUNCTION_52_15();
        goto LABEL_29;
      case 13:
        goto LABEL_20;
      case 15:
        goto LABEL_22;
      default:
        goto LABEL_3;
    }
  }

LABEL_3:
  vretproc(v0);
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_87_9();
}

uint64_t short_continuation_phrase()
{
  OUTLINED_FUNCTION_110_6();
  v137 = *MEMORY[0x277D85DE8];
  v132[0] = 0;
  v132[1] = 0;
  memset(&v131[27], 0, 32);
  OUTLINED_FUNCTION_10_38(v3, v4, v5, v6, v7, v8, v9, v10, v131[0], v131[1], v131[2], v131[3], v131[4], v131[5], v131[6], v131[7], v131[8], v131[9], v131[10], v131[11], v131[12], v131[13], v131[14], v131[15], v131[16], v131[17], v131[18], v131[19], v131[20], v131[21], v131[22], v131[23], v131[24], v131[25], v131[26]);
  OUTLINED_FUNCTION_56_15();
  bzero(v136, v11);
  if (setjmp(v136) || ventproc(v0, v131, v135, v134, v133, v136))
  {
    goto LABEL_3;
  }

  get_parm(v0, v132, v2, -6);
  v15 = OUTLINED_FUNCTION_74_10();
  OUTLINED_FUNCTION_112_6(v15, v16);
  v17 = OUTLINED_FUNCTION_67_13();
  get_parm(v17, v18, v1, -6);
  v19 = OUTLINED_FUNCTION_64_13();
  OUTLINED_FUNCTION_97_7(v19, v20);
  v21 = OUTLINED_FUNCTION_63_14();
  v23 = push_ptr_init(v21, v22);
  v24 = 0;
  OUTLINED_FUNCTION_94_7(v23, v25, &null_str_10);
  v26 = OUTLINED_FUNCTION_47_16();
  fence_42(v26, v27, v28);
  v29 = OUTLINED_FUNCTION_74_10();
  if (!lpta_loadp_setscan_r(v29, v30))
  {
    if (!advance_tok(v0))
    {
      OUTLINED_FUNCTION_65_13();
      v31 = OUTLINED_FUNCTION_5_40();
      if (!test_ptr(v31))
      {
        v53 = OUTLINED_FUNCTION_9_39();
        starttest(v53, v54);
        OUTLINED_FUNCTION_14_38();
        bspush_ca_boa();
        v55 = OUTLINED_FUNCTION_69_11();
        lpta_rpta_loadp(v55, v56, v57);
        v58 = OUTLINED_FUNCTION_47_16();
        v24 = !setd_lookup(v58, v59, 441);
        goto LABEL_53;
      }
    }

    v24 = 0;
  }

LABEL_9:
  v32 = OUTLINED_FUNCTION_28_27();
  starttest(v32, v33);
  v34 = OUTLINED_FUNCTION_33_24();
  if (!lpta_loadp_setscan_r(v34, v35))
  {
    v36 = v24;
    if (!advanc(v0))
    {
LABEL_21:
      v60 = OUTLINED_FUNCTION_73_10();
      savescptr(v60, v61, v62);
      if (advance_tok(v0))
      {
        goto LABEL_23;
      }

      OUTLINED_FUNCTION_65_13();
      v63 = OUTLINED_FUNCTION_5_40();
      if (test_ptr(v63))
      {
        goto LABEL_23;
      }

      v64 = OUTLINED_FUNCTION_49_15();
      if (lpta_loadp_setscan_r(v64, v65) || (OUTLINED_FUNCTION_6_39(), test_string_s()) || (*(v0 + 136) = v24, v66 = OUTLINED_FUNCTION_5_40(), test_ptr(v66)))
      {
LABEL_38:
        v87 = OUTLINED_FUNCTION_49_15();
        if (!lpta_loadp_setscan_r(v87, v88))
        {
          OUTLINED_FUNCTION_6_39();
          if (!test_string_s())
          {
            *(v0 + 136) = v24;
            v89 = OUTLINED_FUNCTION_5_40();
            if (!test_ptr(v89))
            {
              v90 = OUTLINED_FUNCTION_43_17();
              starttest_l(v90, v91);
              OUTLINED_FUNCTION_29_27();
              bspush_ca_boa();
              v92 = OUTLINED_FUNCTION_46_16();
              if (!lpta_loadp_setscan_r(v92, v93))
              {
                v94 = OUTLINED_FUNCTION_44_17();
                bspush_ca_scan(v94, v95);
                v96 = OUTLINED_FUNCTION_3_41();
                v99 = testFldeq(v96, v97, v98, 21);
                v100 = v36;
                v24 = v36;
                if (!v99)
                {
LABEL_43:
                  v24 = v100;
                  v52 = advance_tok(v0);
LABEL_44:
                  if (!v52)
                  {
                    v24 = 1;
                  }

                  goto LABEL_53;
                }

                do
                {
LABEL_53:
                  v111 = v24;
                  LOBYTE(v24) = 15;
                  do
                  {
                    while (2)
                    {
                      v112 = *(v0 + 104);
                      if (v112)
                      {
                        v113 = OUTLINED_FUNCTION_58_14(v112);
                        v111 = v114;
                      }

                      else
                      {
                        v113 = vback(v0, v111);
                        v111 = 0;
                      }

                      v77 = v111;
                      v85 = v111;
                      v100 = v111;
                      switch(v113)
                      {
                        case 1:
                          v24 = v111;
                          goto LABEL_9;
                        case 2:
                        case 4:
                        case 11:
                        case 16:
                        case 18:
                        case 23:
                        case 27:
                          goto LABEL_31;
                        case 3:
                        case 19:
                        case 24:
                        case 28:
                          bspop_boa(v0);
                          goto LABEL_3;
                        case 5:
                          v24 = v111;
                          goto LABEL_11;
                        case 6:
                          v36 = v111;
                          goto LABEL_21;
                        case 7:
                          v36 = v111;
                          goto LABEL_38;
                        case 8:
                          v24 = v111;
                          goto LABEL_33;
                        case 9:
                          v115 = OUTLINED_FUNCTION_3_41();
                          v118 = testFldeq(v115, v116, v117, 44);
                          v77 = v111;
                          if (!v118)
                          {
                            goto LABEL_30;
                          }

                          continue;
                        case 10:
                          goto LABEL_30;
                        case 13:
                          v119 = OUTLINED_FUNCTION_60_14();
                          bspush_ca_scan(v119, v120);
                          OUTLINED_FUNCTION_47_16();
                          break;
                        case 14:
                          goto LABEL_35;
                        case 15:
                          OUTLINED_FUNCTION_21_31();
                          break;
                        case 17:
                          v36 = v111;
                          goto LABEL_47;
                        case 20:
                          v122 = OUTLINED_FUNCTION_3_41();
                          v125 = testFldeq(v122, v123, v124, 44);
                          v100 = v111;
                          if (!v125)
                          {
                            goto LABEL_43;
                          }

                          continue;
                        case 21:
                          goto LABEL_43;
                        case 22:
                          goto LABEL_67;
                        default:
                          goto LABEL_3;
                      }

                      break;
                    }

                    v121 = test_string_s();
                    v85 = v111;
                  }

                  while (v121);
LABEL_35:
                  v24 = v85;
                  OUTLINED_FUNCTION_65_13();
                  v86 = OUTLINED_FUNCTION_5_40();
                }

                while (test_ptr(v86));
                goto LABEL_31;
              }

LABEL_23:
              v24 = v36;
              goto LABEL_53;
            }
          }
        }

LABEL_47:
        v101 = OUTLINED_FUNCTION_49_15();
        if (!lpta_loadp_setscan_r(v101, v102))
        {
          OUTLINED_FUNCTION_6_39();
          if (!test_string_s())
          {
            *(v0 + 136) = v24;
            v103 = OUTLINED_FUNCTION_5_40();
            if (!test_ptr(v103))
            {
              v104 = OUTLINED_FUNCTION_44_17();
              starttest_l(v104, v105);
              OUTLINED_FUNCTION_44_17();
              bspush_ca_boa();
              v106 = OUTLINED_FUNCTION_69_11();
              lpta_rpta_loadp(v106, v107, v108);
              v109 = OUTLINED_FUNCTION_47_16();
              if (setd_lookup(v109, v110, 444))
              {
                v24 = v36;
              }

              else
              {
                v24 = 1;
              }

              goto LABEL_53;
            }
          }
        }

LABEL_67:
        v126 = OUTLINED_FUNCTION_69_11();
        lpta_rpta_loadp(v126, v127, v128);
        v129 = OUTLINED_FUNCTION_47_16();
        if (setd_lookup(v129, v130, 442))
        {
          goto LABEL_3;
        }
      }

      else
      {
        v67 = OUTLINED_FUNCTION_17_35();
        starttest(v67, v68);
        v69 = OUTLINED_FUNCTION_46_16();
        if (lpta_loadp_setscan_r(v69, v70))
        {
          v24 = v36;
LABEL_33:
          v78 = OUTLINED_FUNCTION_32_25();
          starttest(v78, v79);
          v80 = OUTLINED_FUNCTION_49_15();
          if (lpta_loadp_setscan_r(v80, v81))
          {
            goto LABEL_3;
          }

          v82 = OUTLINED_FUNCTION_25_29();
          bspush_ca_scan(v82, v83);
          OUTLINED_FUNCTION_47_16();
          v84 = test_string_s();
          v85 = v24;
          if (!v84)
          {
            goto LABEL_35;
          }

          goto LABEL_53;
        }

        v71 = OUTLINED_FUNCTION_13_38();
        bspush_ca_scan(v71, v72);
        v73 = OUTLINED_FUNCTION_3_41();
        v76 = testFldeq(v73, v74, v75, 21);
        v77 = v36;
        v24 = v36;
        if (v76)
        {
          goto LABEL_53;
        }

LABEL_30:
        v24 = v77;
        if (advance_tok(v0))
        {
          goto LABEL_53;
        }
      }

LABEL_31:
      v12 = 0;
      goto LABEL_4;
    }
  }

LABEL_11:
  v37 = OUTLINED_FUNCTION_44_17();
  starttest(v37, v38);
  v39 = OUTLINED_FUNCTION_46_16();
  if (!lpta_loadp_setscan_r(v39, v40))
  {
    v41 = OUTLINED_FUNCTION_2_42();
    if (!testFldeq(v41, v42, v43, 13) && !advance_tok(v0) && !advance_tok(v0) && !advance_tok(v0))
    {
      OUTLINED_FUNCTION_65_13();
      v44 = OUTLINED_FUNCTION_5_40();
      if (!test_ptr(v44))
      {
        v45 = OUTLINED_FUNCTION_36_21();
        starttest(v45, v46);
        OUTLINED_FUNCTION_44_17();
        bspush_ca_boa();
        v47 = OUTLINED_FUNCTION_69_11();
        lpta_rpta_loadp(v47, v48, v49);
        v50 = OUTLINED_FUNCTION_47_16();
        v52 = setd_lookup(v50, v51, 443);
        goto LABEL_44;
      }
    }

    goto LABEL_53;
  }

LABEL_3:
  v12 = 94;
LABEL_4:
  vretproc(v0);
  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

void isit_eng_WH()
{
  OUTLINED_FUNCTION_88_9();
  OUTLINED_FUNCTION_102_6();
  v78 = *MEMORY[0x277D85DE8];
  memset(v76, 0, 32);
  v74 = 0;
  v75 = 0;
  v73 = 0;
  HIDWORD(v72) = 0;
  OUTLINED_FUNCTION_57_14();
  bzero(v71, v1);
  OUTLINED_FUNCTION_56_15();
  bzero(v77, v2);
  if (!setjmp(v77))
  {
    OUTLINED_FUNCTION_62_14();
    if (!ventproc(v0, v3, v4, v5, v6, v77))
    {
      OUTLINED_FUNCTION_40_18();
      v8 = OUTLINED_FUNCTION_67_13();
      push_ptr_init(v8, v9);
      v10 = OUTLINED_FUNCTION_64_13();
      v12 = push_ptr_init(v10, v11);
      v73 = 0xFFFC0000FFFCLL;
      HIDWORD(v72) = 65532;
      v13 = 0;
      OUTLINED_FUNCTION_94_7(v12, v14, &null_str_10);
      v15 = OUTLINED_FUNCTION_39_19();
      starttest(v15, v16);
      v17 = OUTLINED_FUNCTION_50_15();
      v19 = 0;
      if (!lpta_loadp_setscan_r(v17, v18))
      {
LABEL_7:
        OUTLINED_FUNCTION_61_14();
        savescptr(v0, v20, v76);
        v19 = v13;
        if (advance_tok(v0))
        {
          goto LABEL_20;
        }

LABEL_8:
        v21 = OUTLINED_FUNCTION_69_11();
        savescptr(v21, v22, v23);
      }

      while (2)
      {
        v24 = OUTLINED_FUNCTION_44_17();
        startloop(v24, v25);
        v26 = OUTLINED_FUNCTION_60_14();
        move_i(v26, v27, 1);
        v28 = OUTLINED_FUNCTION_59_14();
        move_i(v28, v29, 1);
        v30 = OUTLINED_FUNCTION_54_15();
        move_i(v30, v31, 2);
        v32 = OUTLINED_FUNCTION_60_14();
        LODWORD(v13) = v19;
        if (!for_test(v32, v33, &v72 + 2, &v73))
        {
          do
          {
LABEL_10:
            LODWORD(v13) = v19;
            v34 = OUTLINED_FUNCTION_27_28();
            starttest(v34, v35);
            v36 = OUTLINED_FUNCTION_26_29();
            bspush_ca(v36);
            v37 = OUTLINED_FUNCTION_33_24();
            if (lpta_loadp_setscan_r(v37, v38))
            {
              goto LABEL_20;
            }

            v39 = OUTLINED_FUNCTION_2_42();
            if (testFldeq(v39, v40, v41, 13))
            {
              goto LABEL_20;
            }

            v42 = advance_tok(v0);
            v43 = v19;
            if (v42)
            {
              goto LABEL_20;
            }

LABEL_13:
            v44 = v43;
            v45 = OUTLINED_FUNCTION_13_38();
            starttest(v45, v46);
            v47 = OUTLINED_FUNCTION_46_16();
            if (!lpta_loadp_setscan_r(v47, v48))
            {
              v19 = v44;
              if (!advanc(v0))
              {
LABEL_15:
                LODWORD(v13) = v19;
                OUTLINED_FUNCTION_78_10(10, v71[0], v71[1], v71[2], v71[3], v71[4], v71[5], v71[6], v71[7], v71[8], v71[9], v71[10], v71[11], v71[12], v71[13], v71[14], v71[15], v71[16], v71[17], v71[18], v71[19], v71[20], v71[21], v71[22], v72, v73, v74, v75, v76[0]);
                if (advance_tok(v0))
                {
                  goto LABEL_20;
                }

LABEL_16:
                v49 = OUTLINED_FUNCTION_69_11();
                savescptr(v49, v50, v51);
LABEL_17:
                v44 = v19;
              }
            }

            v52 = for_adv(v0, 4, 5, &v73 + 2, &v72 + 2, &v73);
            v19 = v44;
            v53 = v44;
          }

          while (v52);
LABEL_19:
          LODWORD(v13) = v53;
          v54 = OUTLINED_FUNCTION_23_31();
          starttest(v54, v55);
          OUTLINED_FUNCTION_31_27();
          bspush_ca_boa();
          v56 = OUTLINED_FUNCTION_33_24();
          if (!lpta_loadp_setscan_r(v56, v57))
          {
            v68 = OUTLINED_FUNCTION_2_42();
            if (!testFldeq(v68, v69, v70, 19) && !advance_tok(v0))
            {
              LODWORD(v13) = 1;
            }
          }
        }

LABEL_20:
        LODWORD(v19) = v13;
LABEL_21:
        v58 = v0[13];
        if (v58)
        {
          v59 = OUTLINED_FUNCTION_58_14(v58);
          v19 = v60;
        }

        else
        {
          v59 = vback(v0, v19);
          v19 = 0;
        }

        v43 = v19;
        v53 = v19;
        switch(v59)
        {
          case 1:
            continue;
          case 2:
            v13 = v19;
            goto LABEL_7;
          case 3:
            goto LABEL_8;
          case 4:
          case 13:
            goto LABEL_19;
          case 5:
            goto LABEL_10;
          case 6:
            v61 = OUTLINED_FUNCTION_60_14();
            starttest(v61, v62);
            v63 = OUTLINED_FUNCTION_54_15();
            if (!lpta_loadp_setscan_r(v63, v64))
            {
              OUTLINED_FUNCTION_47_16();
              if (!test_string_s())
              {
                goto LABEL_27;
              }
            }

            v53 = v19;
            goto LABEL_19;
          case 7:
            OUTLINED_FUNCTION_54_15();
            v67 = is_pick_up_word();
            v43 = v19;
            if (!v67)
            {
              goto LABEL_13;
            }

            goto LABEL_21;
          case 8:
            goto LABEL_13;
          case 9:
          case 12:
            goto LABEL_17;
          case 10:
            goto LABEL_15;
          case 11:
            goto LABEL_16;
          case 14:
LABEL_27:
            v65 = OUTLINED_FUNCTION_74_10();
            if (!test_synch(v65, v66, 1u, &unk_280580E1A))
            {
              goto LABEL_3;
            }

            goto LABEL_21;
          case 16:
            bspop_boa(v0);
            goto LABEL_3;
          default:
            goto LABEL_3;
        }
      }
    }
  }

LABEL_3:
  vretproc(v0);
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_87_9();
}

uint64_t isit_eng_Alt()
{
  OUTLINED_FUNCTION_19_34();
  v79 = *MEMORY[0x277D85DE8];
  memset(&v77[2], 0, 32);
  OUTLINED_FUNCTION_10_38(v1, v2, v3, v4, v5, v6, v7, v8, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76[0], v76[1], v77[0], v77[1]);
  OUTLINED_FUNCTION_56_15();
  bzero(v78, v9);
  if (!setjmp(v78))
  {
    OUTLINED_FUNCTION_62_14();
    if (!ventproc(v0, v10, v11, v12, v13, v78))
    {
      v14 = OUTLINED_FUNCTION_12_38();
      get_parm(v14, v15, v16, -6);
      OUTLINED_FUNCTION_40_18();
      v17 = OUTLINED_FUNCTION_60_14();
      push_ptr_init(v17, v18);
      v19 = OUTLINED_FUNCTION_74_10();
      push_ptr_init(v19, v20);
      fence_42(v0, 0, &null_str_10);
      v21 = OUTLINED_FUNCTION_39_19();
      startloop(v21, v22);
      v23 = OUTLINED_FUNCTION_54_15();
      lpta_loadpn(v23, v24);
      OUTLINED_FUNCTION_45_16();
      lpta_mover();
      v25 = OUTLINED_FUNCTION_60_14();
      lpta_storep(v25, v26);
      v27 = OUTLINED_FUNCTION_59_14();
      lpta_loadpn(v27, v28);
      OUTLINED_FUNCTION_45_16();
      lpta_mover();
      v29 = OUTLINED_FUNCTION_74_10();
      lpta_storep(v29, v30);
      v31 = OUTLINED_FUNCTION_60_14();
      if (!forall_to_test(v31, v32, v76))
      {
LABEL_6:
        v35 = OUTLINED_FUNCTION_14_38();
        bspush_ca(v35);
        v36 = OUTLINED_FUNCTION_46_16();
        if (!lpta_loadp_setscan_r(v36, v37))
        {
          v38 = OUTLINED_FUNCTION_2_42();
          if (!testFldeq(v38, v39, v40, 5) && !advance_tok(v0))
          {
LABEL_9:
            v41 = OUTLINED_FUNCTION_14_38();
            starttest(v41, v42);
            v43 = OUTLINED_FUNCTION_49_15();
            if (lpta_loadp_setscan_r(v43, v44) || (OUTLINED_FUNCTION_15_37(), test_string_s()))
            {
LABEL_13:
              if (!forto_adv_upto_r(v0, 1, 2, 5, 4, v77))
              {
                goto LABEL_5;
              }
            }

            else
            {
LABEL_11:
              v45 = OUTLINED_FUNCTION_7_39();
              if (!test_synch(v45, v46, v47, v48))
              {
                goto LABEL_5;
              }
            }
          }
        }
      }

      v49 = *(v0 + 104);
      if (v49)
      {
        v50 = OUTLINED_FUNCTION_58_14(v49);
      }

      else
      {
        v51 = OUTLINED_FUNCTION_76_10();
        v50 = vback(v51, v52);
      }

      switch(v50)
      {
        case 2:
          goto LABEL_9;
        case 3:
          goto LABEL_13;
        case 4:
          goto LABEL_11;
        case 5:
          goto LABEL_6;
        default:
          break;
      }
    }
  }

LABEL_5:
  vretproc(v0);
  v33 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_120_6();
}

uint64_t is_prep_phrase()
{
  OUTLINED_FUNCTION_19_34();
  v103 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_10_38(v1, v2, v3, v4, v5, v6, v7, v8, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97);
  OUTLINED_FUNCTION_56_15();
  bzero(v102, v9);
  v10 = setjmp(v102);
  if (v10)
  {
    goto LABEL_11;
  }

  if (OUTLINED_FUNCTION_105_6(v10, v11, v12, v13, v14, v15, v16, v17, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, 0, 0, *v99, v99[4], *v100, *&v100[4], v100[6], v101, SWORD2(v101), SBYTE6(v101), SHIBYTE(v101)))
  {
    goto LABEL_11;
  }

  v18 = OUTLINED_FUNCTION_12_38();
  get_parm(v18, v19, v20, -6);
  v21 = OUTLINED_FUNCTION_64_13();
  OUTLINED_FUNCTION_97_7(v21, v22);
  v23 = OUTLINED_FUNCTION_63_14();
  push_ptr_init(v23, v24);
  fence_42(v0, 0, &null_str_10);
  v25 = OUTLINED_FUNCTION_6_39();
  fence_42(v25, v26, v27);
  v28 = OUTLINED_FUNCTION_66_13();
  starttest(v28, v29);
  v30 = OUTLINED_FUNCTION_54_15();
  if (lpta_loadp_setscan_r(v30, v31))
  {
    goto LABEL_11;
  }

  v32 = OUTLINED_FUNCTION_2_42();
  if (testFldeq(v32, v33, v34, 13) || advance_tok(v0))
  {
    v35 = *(v0 + 104);
    if (v35)
    {
      v36 = OUTLINED_FUNCTION_58_14(v35);
    }

    else
    {
      v37 = OUTLINED_FUNCTION_76_10();
      v36 = vback(v37, v38);
    }

    if (v36 != 2)
    {
      goto LABEL_11;
    }
  }

  OUTLINED_FUNCTION_61_14();
  v39 = OUTLINED_FUNCTION_75_10();
  savescptr(v39, v40, v41);
  OUTLINED_FUNCTION_60_14();
  if (is_noun_phrase())
  {
LABEL_11:
    v42 = 94;
  }

  else
  {
    v42 = 0;
  }

  vretproc(v0);
  v43 = *MEMORY[0x277D85DE8];
  return v42;
}

uint64_t OUTLINED_FUNCTION_5_40()
{
  *(v1 + 112) = v0;
  *(v1 + 128) = 0;
  return v1;
}

void OUTLINED_FUNCTION_10_38(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  a34 = 0;
  a35 = 0;
  a32 = 0;
  a33 = 0;

  bzero(&a9, 0xB8uLL);
}

uint64_t OUTLINED_FUNCTION_16_37(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, char a37, int a38, __int16 a39, char a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, char a46)
{

  return ventproc(v46, &a9, &a44, &a40, &a37, &a46);
}

void OUTLINED_FUNCTION_22_31(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  a32 = 0;
  a33 = 0;

  bzero(&a9, 0xB8uLL);
}

void OUTLINED_FUNCTION_40_18()
{

  get_parm(v0, v2, v1, -6);
}

uint64_t OUTLINED_FUNCTION_53_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, char a35, int a36, __int16 a37, char a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, char a44)
{

  return ventproc(v44, a2, &a42, &a38, &a35, &a44);
}

uint64_t OUTLINED_FUNCTION_55_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, char a33, int a34, __int16 a35, char a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, char a42)
{

  return ventproc(v42, &a9, &a40, &a36, &a33, &a42);
}

double OUTLINED_FUNCTION_68_11@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{

  *&result = savescptr(v26, a1, &a26).n128_u64[0];
  return result;
}

double OUTLINED_FUNCTION_78_10@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{

  *&result = savescptr(v29, a1, &a29).n128_u64[0];
  return result;
}

double OUTLINED_FUNCTION_81_10@<D0>(uint64_t a1@<X8>)
{

  *&result = savescptr(v1, a1, v1 + 1336).n128_u64[0];
  return result;
}

void OUTLINED_FUNCTION_93_7(uint64_t a1, uint64_t a2)
{

  get_parm(v2, a2, v3, -6);
}

void *OUTLINED_FUNCTION_94_7(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return fence_42(v3, 0, a3);
}

void OUTLINED_FUNCTION_97_7(uint64_t a1, uint64_t a2)
{

  get_parm(a1, a2, v2, -6);
}

uint64_t OUTLINED_FUNCTION_104_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, char a34, int a35, __int16 a36, char a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, char a43)
{

  return ventproc(v43, &a10, &a41, &a37, &a34, &a43);
}

uint64_t OUTLINED_FUNCTION_105_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, int a38, char a39, int a40, __int16 a41, char a42, int a43, __int16 a44, char a45, char a46)
{

  return ventproc(v46, &a9, &a46, &a42, &a39, v47 - 248);
}

void OUTLINED_FUNCTION_112_6(uint64_t a1, uint64_t a2)
{

  get_parm(a1, a2, v2, -6);
}

void OUTLINED_FUNCTION_113_6(uint64_t a1, size_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{

  bzero(&a40, a2);
}

uint64_t OUTLINED_FUNCTION_114_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, int a44, char a45)
{

  return ventproc(v45, a2, v46 - 241, v46 - 250, &a45, v46 - 232);
}

double OUTLINED_FUNCTION_115_6@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{

  *&result = savescptr(v44, a1, &a44).n128_u64[0];
  return result;
}

double OUTLINED_FUNCTION_116_6@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{

  *&result = savescptr(v31, a1, &a31).n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_117_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, int a55, char a56, int a57, __int16 a58, char a59, int a60, __int16 a61, char a62, char a63)
{

  return ventproc(v65, a2, &a63, &a59, &a56, &a65);
}

void OUTLINED_FUNCTION_125_6(uint64_t a1, size_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{

  bzero(&a38, a2);
}

void OUTLINED_FUNCTION_126_6(uint64_t a1, size_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{

  bzero(&a36, a2);
}

void *fence_43(uint64_t a1, int a2, uint64_t a3)
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

uint64_t strip_nonlex_prefixes(uint64_t a1)
{
  v43 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_23_32();
  bzero(v38, v2);
  OUTLINED_FUNCTION_22_32();
  bzero(v42, v3);
  if (setjmp(v42) || (v4 = ventproc(a1, v38, v41, v40, v39, v42), v4))
  {
LABEL_3:
    vretproc(a1);
    result = 94;
  }

  else
  {
    OUTLINED_FUNCTION_35_24(v4, v5, &null_str_11);
    v8 = OUTLINED_FUNCTION_11_39();
    fence_43(v8, v9, v10);
    *(a1 + 5938) = 0;
    if (strip_single_nonlex_prefix(a1, v11, v12, v13, v14, v15, v16, v17))
    {
      v18 = 0;
      while (2)
      {
        v19 = v18;
        strip_scientific_prefixes();
        if (v27)
        {
LABEL_8:
          if (strip_pname_prefix(a1, v20, v21, v22, v23, v24, v25, v26))
          {
LABEL_9:
            v28 = OUTLINED_FUNCTION_17_36();
            starttest(v28, v29);
            OUTLINED_FUNCTION_41_19();
            bspush_ca_boa();
            if (strip_outer_prefixes(a1, v30, v31, v32, v33, v34, v35, v36))
            {
              v20 = v19;
            }

            else
            {
              v20 = 1;
            }

            v37 = *(a1 + 104);
            if (v37)
            {
              *(a1 + 104) = 0;
              v21 = v37;
              v18 = v20;
            }

            else
            {
              v21 = vback(a1, v20);
              v18 = 0;
            }

            v19 = v18;
            switch(v21)
            {
              case 1:
                continue;
              case 2:
                goto LABEL_18;
              case 3:
                v19 = v18;
                goto LABEL_8;
              case 4:
                goto LABEL_9;
              case 5:
                strip_medial_prefix(a1, v20, v21, v22, v23, v24, v25, v26);
                goto LABEL_18;
              case 6:
                bspop_boa(a1);
                goto LABEL_3;
              default:
                goto LABEL_3;
            }
          }
        }

        break;
      }
    }

LABEL_18:
    vretproc(a1);
    result = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t strip_single_nonlex_prefix(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v217 = *MEMORY[0x277D85DE8];
  v214[0] = 0;
  v214[1] = 0;
  v213[2] = 0;
  v213[3] = 0;
  OUTLINED_FUNCTION_6_40(a1, a2, a3, a4, a5, a6, a7, a8, v160, v162, v164, v166, v168, v170, v172, v174, v176, v178, v180, v182, v184, v186, v188, v190, v192, v194, v196, v198, v200, v202, v204, v206, v208, SHIDWORD(v208), v209, v210, v211, v212, v213[0], v213[1]);
  OUTLINED_FUNCTION_22_32();
  v10 = v216;
  bzero(v216, v11);
  if (setjmp(v216))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_34_25();
  if (ventproc(a1, v12, v13, v14, v215, v216))
  {
    goto LABEL_3;
  }

  v18 = OUTLINED_FUNCTION_18_35();
  push_ptr_init(v18, v19);
  v20 = OUTLINED_FUNCTION_33_25();
  push_ptr_init(v20, v21);
  v22 = OUTLINED_FUNCTION_31_28();
  push_ptr_init(v22, v23);
  v24 = OUTLINED_FUNCTION_20_33();
  push_ptr_init(v24, v25);
  v26 = OUTLINED_FUNCTION_16_38();
  push_ptr_init(v26, v27);
  OUTLINED_FUNCTION_27_29();
  OUTLINED_FUNCTION_35_24(v28, v29, &null_str_11);
  v30 = OUTLINED_FUNCTION_9_40();
  fence_43(v30, v31, v32);
  v33 = OUTLINED_FUNCTION_30_28();
  starttest(v33, v34);
  v35 = OUTLINED_FUNCTION_15_38();
  if (!lpta_loadp_setscan_r(v35, v36))
  {
    OUTLINED_FUNCTION_0_44();
    v10 = 0;
    if (!test_string_s())
    {
      v37 = OUTLINED_FUNCTION_11_39();
      if (testFldeq(v37, v38, 0, 63))
      {
        goto LABEL_29;
      }

      v39 = OUTLINED_FUNCTION_3_42();
      if (testFldeq(v39, v40, v41, 1))
      {
        LODWORD(v10) = 0;
        goto LABEL_29;
      }

      LODWORD(v10) = 0;
      v8 = 0;
      if (!advance_tok(a1))
      {
LABEL_11:
        savescptr(a1, 2, v214);
LABEL_12:
        v42 = v8;
LABEL_13:
        v8 = v42;
        v43 = OUTLINED_FUNCTION_10_39();
        starttest(v43, v44);
        v45 = OUTLINED_FUNCTION_7_40();
        move_i(v45, v46, v47);
        v48 = OUTLINED_FUNCTION_15_38();
        LODWORD(v10) = v8;
        if (!nonlex_prefixes(v48, v49, v50, &v208 + 2))
        {
LABEL_78:
          v15 = 0;
          goto LABEL_4;
        }

        goto LABEL_29;
      }

      goto LABEL_29;
    }
  }

  while (2)
  {
    v51 = OUTLINED_FUNCTION_13_39();
    if (lpta_loadp_setscan_r(v51, v52) || (OUTLINED_FUNCTION_0_44(), v8 = v10, test_string_s()))
    {
LABEL_18:
      v53 = OUTLINED_FUNCTION_10_39();
      starttest(v53, v54);
      v55 = OUTLINED_FUNCTION_13_39();
      if (!lpta_loadp_setscan_r(v55, v56))
      {
        v57 = OUTLINED_FUNCTION_10_39();
        bspush_ca_scan(v57, v58);
        OUTLINED_FUNCTION_2_43();
        v59 = test_string_s();
        v60 = v10;
        if (!v59)
        {
LABEL_20:
          v8 = v60;
          v61 = OUTLINED_FUNCTION_14_39();
          savescptr(v61, v62, v63);
          v64 = OUTLINED_FUNCTION_10_39();
          starttest(v64, v65);
          OUTLINED_FUNCTION_10_39();
          bspush_ca_boa();
          OUTLINED_FUNCTION_17_36();
          potential_prefix();
          if (v66)
          {
            LODWORD(v10) = v8;
          }

          else
          {
            LODWORD(v10) = 1;
          }
        }

        goto LABEL_29;
      }
    }

    else
    {
LABEL_23:
      v67 = OUTLINED_FUNCTION_14_39();
      savescptr(v67, v68, v69);
      v70 = OUTLINED_FUNCTION_10_39();
      starttest(v70, v71);
      v72 = OUTLINED_FUNCTION_7_40();
      if (!lpta_loadp_setscan_r(v72, v73))
      {
        v74 = OUTLINED_FUNCTION_2_43();
        if (testFldeq(v74, v75, v76, 2) || advance_tok(a1) || advance_tok(a1) || advance_tok(a1))
        {
          LODWORD(v10) = v8;
          goto LABEL_29;
        }

        v159 = advance_tok(a1);
        v147 = v8;
        LODWORD(v10) = v8;
        if (!v159)
        {
LABEL_82:
          v10 = v147;
          if (advance_tok(a1))
          {
            goto LABEL_29;
          }

          v148 = OUTLINED_FUNCTION_10_39();
          bspush_ca_scan(v148, v149);
          v8 = v10;
LABEL_84:
          v150 = OUTLINED_FUNCTION_14_39();
          savescptr(v150, v151, v152);
          v153 = OUTLINED_FUNCTION_14_39();
          lpta_rpta_loadp(v153, v154, v155);
          v156 = OUTLINED_FUNCTION_11_39();
          v158 = setd_lookup(v156, v157, 339);
          LODWORD(v10) = v8;
          v42 = v8;
          if (v158)
          {
            goto LABEL_29;
          }

          goto LABEL_13;
        }

LABEL_29:
        v77 = v10;
LABEL_30:
        v78 = a1[13];
        if (v78)
        {
          v79 = OUTLINED_FUNCTION_19_35(v78);
        }

        else
        {
          v79 = vback(a1, v77);
          v8 = 0;
        }

        v15 = 94;
        v60 = v8;
        v42 = v8;
        switch(v79)
        {
          case 1:
            v10 = v8;
            continue;
          case 2:
            goto LABEL_11;
          case 3:
          case 9:
          case 18:
          case 21:
            goto LABEL_13;
          case 4:
            v10 = v8;
            goto LABEL_18;
          case 5:
            goto LABEL_23;
          case 7:
            v147 = v8;
            goto LABEL_82;
          case 8:
            goto LABEL_84;
          case 11:
            v80 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v80, v81);
            OUTLINED_FUNCTION_3_42();
            v82 = test_string_s();
            v77 = v8;
            if (v82)
            {
              goto LABEL_30;
            }

            goto LABEL_79;
          case 12:
            goto LABEL_20;
          case 13:
            v138 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v138, v139);
            goto LABEL_71;
          case 14:
LABEL_79:
            savescptr(a1, 14, v213);
            v60 = v8;
            goto LABEL_20;
          case 15:
LABEL_71:
            OUTLINED_FUNCTION_1_43();
            v140 = test_string_s();
            v60 = v8;
            v77 = v8;
            if (!v140)
            {
              goto LABEL_20;
            }

            goto LABEL_30;
          case 16:
            v83 = OUTLINED_FUNCTION_31_28();
            lpta_loadpn(v83, v84);
            OUTLINED_FUNCTION_32_26();
            if (compare_ptas(a1) || testneq(a1))
            {
              goto LABEL_12;
            }

            v85 = OUTLINED_FUNCTION_10_39();
            starttest(v85, v86);
            v87 = OUTLINED_FUNCTION_5_41();
            if (lpta_loadp_setscan_l(v87, v88))
            {
              goto LABEL_39;
            }

            goto LABEL_54;
          case 17:
            bspop_boa(a1);
            goto LABEL_78;
          case 19:
LABEL_39:
            v89 = OUTLINED_FUNCTION_10_39();
            starttest(v89, v90);
            v91 = OUTLINED_FUNCTION_5_41();
            if (lpta_loadp_setscan_r(v91, v92) || advance_tok(a1) || advance_tok(a1))
            {
              goto LABEL_42;
            }

            goto LABEL_52;
          case 20:
LABEL_54:
            OUTLINED_FUNCTION_38_20(20, v161, v163, v165, v167, v169, v171, v173, v175, v177, v179, v181, v183, v185, v187, v189, v191, v193, v195, v197, v199, v201, v203, v205, v207, v208, v209, v210, v211);
            v107 = OUTLINED_FUNCTION_0_44();
            v110 = testFldeq(v107, v108, v109, 1);
            v77 = v8;
            if (v110)
            {
              goto LABEL_30;
            }

            v111 = advance_tok(a1);
            v77 = v8;
            if (v111)
            {
              goto LABEL_30;
            }

            v112 = OUTLINED_FUNCTION_13_39();
            v114 = lpta_loadp_setscan_r(v112, v113);
            v77 = v8;
            if (v114)
            {
              goto LABEL_30;
            }

            v115 = OUTLINED_FUNCTION_0_44();
            v118 = testFldeq(v115, v116, v117, 2);
            v77 = v8;
            if (v118)
            {
              goto LABEL_30;
            }

            v119 = advance_tok(a1);
            v77 = v8;
            if (v119)
            {
              goto LABEL_30;
            }

            v120 = OUTLINED_FUNCTION_10_39();
            starttest_l(v120, v121);
            v122 = OUTLINED_FUNCTION_5_41();
            if (lpta_loadp_setscan_r(v122, v123) || advance_tok(a1) || advance_tok(a1))
            {
              goto LABEL_12;
            }

LABEL_64:
            while (!advance_tok(a1))
            {
              v124 = OUTLINED_FUNCTION_10_39();
              bspush_ca_scan(v124, v125);
            }

            goto LABEL_65;
          case 22:
            OUTLINED_FUNCTION_12_39(22, v161, v163, v165, v167, v169, v171, v173, v175, v177, v179, v181, v183, v185, v187, v189, v191, v193, v195, v197, v199, v201, v203, v205, v207, v208, v209);
            v141 = OUTLINED_FUNCTION_14_39();
            lpta_rpta_loadp(v141, v142, v143);
            v129 = OUTLINED_FUNCTION_11_39();
            v131 = 341;
            goto LABEL_74;
          case 23:
            goto LABEL_64;
          case 24:
LABEL_42:
            v93 = OUTLINED_FUNCTION_5_41();
            if (lpta_loadp_setscan_r(v93, v94))
            {
              goto LABEL_44;
            }

            OUTLINED_FUNCTION_1_43();
            if (test_string_s())
            {
              goto LABEL_44;
            }

            goto LABEL_4;
          case 25:
            OUTLINED_FUNCTION_12_39(25, v161, v163, v165, v167, v169, v171, v173, v175, v177, v179, v181, v183, v185, v187, v189, v191, v193, v195, v197, v199, v201, v203, v205, v207, v208, v209);
            v132 = OUTLINED_FUNCTION_14_39();
            lpta_rpta_loadp(v132, v133, v134);
            v135 = OUTLINED_FUNCTION_11_39();
            v137 = setd_lookup(v135, v136, 340);
            v42 = v8;
            v77 = v8;
            if (!v137)
            {
              goto LABEL_13;
            }

            goto LABEL_30;
          case 26:
LABEL_52:
            while (!advance_tok(a1))
            {
              v105 = OUTLINED_FUNCTION_10_39();
              bspush_ca_scan(v105, v106);
            }

            goto LABEL_65;
          case 27:
LABEL_44:
            v95 = OUTLINED_FUNCTION_10_39();
            starttest(v95, v96);
            v97 = OUTLINED_FUNCTION_5_41();
            if (lpta_loadp_setscan_r(v97, v98))
            {
              goto LABEL_45;
            }

            goto LABEL_75;
          case 28:
LABEL_45:
            v99 = OUTLINED_FUNCTION_10_39();
            starttest(v99, v100);
            v101 = OUTLINED_FUNCTION_5_41();
            if (lpta_loadp_setscan_r(v101, v102) || advance_tok(a1))
            {
              goto LABEL_12;
            }

            goto LABEL_49;
          case 29:
          case 31:
LABEL_75:
            v145 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v145, v146);
            goto LABEL_76;
          case 30:
          case 35:
            goto LABEL_78;
          case 32:
LABEL_76:
            OUTLINED_FUNCTION_0_44();
            v144 = test_string_s();
            goto LABEL_77;
          case 33:
            OUTLINED_FUNCTION_12_39(33, v161, v163, v165, v167, v169, v171, v173, v175, v177, v179, v181, v183, v185, v187, v189, v191, v193, v195, v197, v199, v201, v203, v205, v207, v208, v209);
            v126 = OUTLINED_FUNCTION_14_39();
            lpta_rpta_loadp(v126, v127, v128);
            v129 = OUTLINED_FUNCTION_11_39();
            v131 = 342;
LABEL_74:
            v144 = setd_lookup(v129, v130, v131);
LABEL_77:
            v77 = v8;
            if (!v144)
            {
              goto LABEL_78;
            }

            goto LABEL_30;
          case 34:
LABEL_49:
            while (!advance_tok(a1))
            {
              v103 = OUTLINED_FUNCTION_10_39();
              bspush_ca_scan(v103, v104);
            }

LABEL_65:
            v77 = v8;
            goto LABEL_30;
          default:
            goto LABEL_4;
        }
      }
    }

    break;
  }

LABEL_3:
  v15 = 94;
LABEL_4:
  vretproc(a1);
  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

void strip_scientific_prefixes()
{
  OUTLINED_FUNCTION_45_17();
  v1 = v0;
  v70 = *MEMORY[0x277D85DE8];
  v64 = 0;
  v65 = 0;
  v63[0] = 0;
  v63[1] = 0;
  v62[0] = 0;
  v62[1] = 0;
  v61 = 0;
  OUTLINED_FUNCTION_23_32();
  bzero(v60, v2);
  OUTLINED_FUNCTION_22_32();
  bzero(v69, v3);
  if (setjmp(v69) || ventproc(v1, v60, v68, v67, v66, v69))
  {
    goto LABEL_3;
  }

  push_ptr_init(v1, &v64);
  v5 = OUTLINED_FUNCTION_17_36();
  push_ptr_init(v5, v6);
  v7 = push_ptr_init(v1, v62);
  v61 = 65532;
  OUTLINED_FUNCTION_35_24(v7, v8, &null_str_11);
  v9 = OUTLINED_FUNCTION_9_40();
  fence_43(v9, v10, v11);
  v65 = v1[206];
  v12 = OUTLINED_FUNCTION_30_28();
  startloop(v12, v13);
  v14 = 0;
LABEL_5:
  v15 = OUTLINED_FUNCTION_30_28();
  bspush_ca(v15);
  v16 = OUTLINED_FUNCTION_15_38();
  if (lpta_loadp_setscan_r(v16, v17) || (v18 = OUTLINED_FUNCTION_42_19(), bspush_ca_scan(v18, v19), v20 = test_string_s(), v21 = v14, v20))
  {
LABEL_12:
    v26 = v14;
    while (2)
    {
      v27 = v1[13];
      if (v27)
      {
        v28 = OUTLINED_FUNCTION_25_30(v27);
        v22 = v29;
      }

      else
      {
        v28 = vback(v1, v26);
        v22 = 0;
      }

      v14 = v22;
      v21 = v22;
      switch(v28)
      {
        case 1:
          v58 = OUTLINED_FUNCTION_15_38();
          lpta_loadpn(v58, v59);
          rpta_loadpn(v1, &v64);
          if (!compare_ptas(v1))
          {
            testeq(v1);
          }

          goto LABEL_3;
        case 2:
          goto LABEL_8;
        case 3:
        case 5:
        case 7:
        case 8:
        case 9:
        case 14:
          v55 = OUTLINED_FUNCTION_10_39();
          bspush_ca_scan(v55, v56);
          goto LABEL_31;
        case 4:
          break;
        case 6:
          bspush_ca_scan(v1, 7);
          OUTLINED_FUNCTION_11_39();
          goto LABEL_32;
        case 10:
          v49 = OUTLINED_FUNCTION_10_39();
          bspush_ca_scan(v49, v50);
          v51 = OUTLINED_FUNCTION_10_39();
          bspush_ca_scan(v51, v52);
          goto LABEL_28;
        case 11:
        case 15:
          v53 = OUTLINED_FUNCTION_10_39();
          bspush_ca_scan(v53, v54);
          OUTLINED_FUNCTION_2_43();
          goto LABEL_32;
        case 12:
          OUTLINED_FUNCTION_1_43();
          v30 = test_string_s();
          v26 = v22;
          if (v30)
          {
            continue;
          }

          goto LABEL_28;
        case 13:
LABEL_28:
          OUTLINED_FUNCTION_3_42();
          goto LABEL_32;
        case 16:
LABEL_31:
          OUTLINED_FUNCTION_11_39();
LABEL_32:
          v57 = test_string_s();
          v21 = v22;
          v26 = v22;
          if (!v57)
          {
            goto LABEL_7;
          }

          continue;
        case 17:
          goto LABEL_9;
        case 18:
          v31 = OUTLINED_FUNCTION_10_39();
          starttest(v31, v32);
          v33 = OUTLINED_FUNCTION_13_39();
          if (lpta_loadp_setscan_r(v33, v34))
          {
            goto LABEL_21;
          }

          goto LABEL_23;
        case 19:
          bspop_boa(v1);
          goto LABEL_3;
        case 20:
LABEL_21:
          v35 = OUTLINED_FUNCTION_10_39();
          starttest(v35, v36);
          move_i(v1, &v61, 1);
          v37 = OUTLINED_FUNCTION_15_38();
          v40 = nonlex_prefixes(v37, v38, v39, &v61);
          v26 = v22;
          if (!v40)
          {
            goto LABEL_34;
          }

          continue;
        case 21:
LABEL_23:
          v41 = advance_tok(v1);
          v26 = v22;
          if (v41)
          {
            continue;
          }

          v42 = OUTLINED_FUNCTION_10_39();
          bspush_ca_scan(v42, v43);
LABEL_25:
          savescptr(v1, 22, v62);
          v44 = OUTLINED_FUNCTION_15_38();
          lpta_rpta_loadp(v44, v45, v62);
          v46 = OUTLINED_FUNCTION_11_39();
          v48 = setd_lookup(v46, v47, 349);
          v26 = v22;
          if (!v48)
          {
            goto LABEL_3;
          }

          continue;
        case 22:
          goto LABEL_25;
        case 23:
LABEL_34:
          while_iterate(v1, 1, 2);
          v14 = v22;
          goto LABEL_5;
        case 24:
          goto LABEL_5;
        default:
          goto LABEL_3;
      }

      break;
    }
  }

LABEL_7:
  v22 = v21;
  v23 = OUTLINED_FUNCTION_26_30();
  savescptr(v23, v24, v63);
LABEL_8:
  OUTLINED_FUNCTION_4_41();
  if (eng_roots_dict_lookup())
  {
LABEL_9:
    starttest(v1, 18);
    bspush_ca_boa();
    OUTLINED_FUNCTION_17_36();
    potential_prefix();
    if (v25)
    {
      v14 = v22;
    }

    else
    {
      v14 = 1;
    }

    goto LABEL_12;
  }

LABEL_3:
  vretproc(v1);
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_44_18();
}

uint64_t strip_pname_prefix(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v256 = *MEMORY[0x277D85DE8];
  v251[0] = 0;
  v251[1] = 0;
  v250[0] = 0;
  v250[1] = 0;
  v249[0] = 0;
  v249[1] = 0;
  v247 = 0;
  v248 = 0;
  v245 = 0;
  v246 = 0;
  v243 = 0;
  v244 = 0;
  OUTLINED_FUNCTION_6_40(a1, a2, a3, a4, a5, a6, a7, a8, v211, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, SHIDWORD(v236), v237, v238, v239, v240, v241, v242);
  OUTLINED_FUNCTION_22_32();
  v10 = v255;
  bzero(v255, v11);
  if (setjmp(v255) || ventproc(a1, &v213, v254, v253, v252, v255))
  {
    goto LABEL_3;
  }

  v15 = OUTLINED_FUNCTION_37_21();
  push_ptr_init(v15, v16);
  v17 = OUTLINED_FUNCTION_36_22();
  push_ptr_init(v17, v18);
  v19 = OUTLINED_FUNCTION_21_32();
  push_ptr_init(v19, v20);
  push_ptr_init(a1, &v247);
  v21 = OUTLINED_FUNCTION_18_35();
  push_ptr_init(v21, v22);
  v23 = OUTLINED_FUNCTION_33_25();
  push_ptr_init(v23, v24);
  v25 = OUTLINED_FUNCTION_31_28();
  push_ptr_init(v25, v26);
  v27 = OUTLINED_FUNCTION_20_33();
  push_ptr_init(v27, v28);
  v29 = OUTLINED_FUNCTION_16_38();
  push_ptr_init(v29, v30);
  OUTLINED_FUNCTION_27_29();
  OUTLINED_FUNCTION_35_24(v31, v32, &null_str_11);
  v33 = OUTLINED_FUNCTION_9_40();
  fence_43(v33, v34, v35);
  v36 = OUTLINED_FUNCTION_30_28();
  starttest(v36, v37);
  v38 = OUTLINED_FUNCTION_15_38();
  if (!lpta_loadp_setscan_r(v38, v39))
  {
    v48 = OUTLINED_FUNCTION_10_39();
    bspush_ca_scan(v48, v49);
    OUTLINED_FUNCTION_11_39();
    v50 = test_string_s();
    LODWORD(v10) = 0;
    v51 = 0;
    if (v50)
    {
      goto LABEL_10;
    }

LABEL_85:
    LODWORD(v10) = v51;
    OUTLINED_FUNCTION_29_28(3, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247);
    OUTLINED_FUNCTION_4_41();
    if (!eng_roots_dict_lookup())
    {
LABEL_120:
      v12 = 0;
      goto LABEL_4;
    }

LABEL_86:
    v166 = OUTLINED_FUNCTION_36_22();
    lpta_loadpn(v166, v167);
    OUTLINED_FUNCTION_32_26();
    if (compare_ptas(a1) || testneq(a1))
    {
LABEL_88:
      v168 = OUTLINED_FUNCTION_21_32();
      lpta_loadpn(v168, v169);
      OUTLINED_FUNCTION_32_26();
      if (!compare_ptas(a1) && !testneq(a1))
      {
        v170 = OUTLINED_FUNCTION_10_39();
        starttest_l(v170, v171);
        v172 = OUTLINED_FUNCTION_13_39();
        v174 = lpta_loadp_setscan_r(v172, v173);
        v57 = v10;
        if (!v174)
        {
LABEL_91:
          LODWORD(v10) = v57;
          v175 = OUTLINED_FUNCTION_10_39();
          bspush_ca_scan(v175, v176);
          v177 = OUTLINED_FUNCTION_2_43();
          if (!testFldeq(v177, v178, v179, 1) && !advance_tok(a1))
          {
            OUTLINED_FUNCTION_43_18();
            v180 = a1[208];
            v181 = OUTLINED_FUNCTION_8_40();
            if (!test_ptr(v181))
            {
              goto LABEL_120;
            }
          }

LABEL_10:
          v52 = v10;
          while (2)
          {
            v53 = a1[13];
            if (v53)
            {
              v54 = OUTLINED_FUNCTION_19_35(v53);
            }

            else
            {
              v54 = vback(a1, v52);
              v8 = 0;
            }

            v12 = 0;
            v55 = 43;
            v51 = v8;
            v56 = v8;
            v57 = v8;
            v47 = v8;
            switch(v54)
            {
              case 1:
                v10 = v8;
                goto LABEL_6;
              case 2:
                v58 = OUTLINED_FUNCTION_10_39();
                bspush_ca_scan(v58, v59);
                OUTLINED_FUNCTION_3_42();
                v60 = test_string_s();
                v52 = v8;
                if (v60)
                {
                  continue;
                }

                v61 = OUTLINED_FUNCTION_10_39();
                bspush_ca_scan(v61, v62);
                OUTLINED_FUNCTION_0_44();
                goto LABEL_28;
              case 3:
                goto LABEL_85;
              case 4:
                v92 = OUTLINED_FUNCTION_10_39();
                bspush_ca_scan(v92, v93);
                OUTLINED_FUNCTION_2_43();
                v94 = test_string_s();
                v51 = v8;
                v52 = v8;
                if (!v94)
                {
                  goto LABEL_85;
                }

                continue;
              case 5:
                OUTLINED_FUNCTION_1_43();
LABEL_28:
                v88 = test_string_s();
                v52 = v8;
                if (!v88)
                {
                  goto LABEL_79;
                }

                continue;
              case 6:
LABEL_79:
                v163 = 6;
                goto LABEL_82;
              case 7:
                v89 = OUTLINED_FUNCTION_10_39();
                bspush_ca_scan(v89, v90);
                OUTLINED_FUNCTION_11_39();
                v91 = test_string_s();
                v52 = v8;
                if (v91)
                {
                  continue;
                }

                goto LABEL_80;
              case 8:
                OUTLINED_FUNCTION_2_43();
                v87 = test_string_s();
                v52 = v8;
                if (v87)
                {
                  continue;
                }

                goto LABEL_83;
              case 9:
LABEL_80:
                savescptr(a1, 9, v250);
                goto LABEL_81;
              case 10:
LABEL_81:
                v163 = 10;
LABEL_82:
                v164 = v163;
                v165 = v251;
                goto LABEL_84;
              case 11:
LABEL_83:
                v164 = 11;
                v165 = v249;
LABEL_84:
                savescptr(a1, v164, v165);
                v51 = v8;
                goto LABEL_85;
              case 12:
                LODWORD(v10) = v8;
                goto LABEL_86;
              case 13:
                LODWORD(v10) = v8;
                goto LABEL_88;
              case 14:
              case 18:
              case 19:
                LODWORD(v10) = v8;
                goto LABEL_100;
              case 15:
                v108 = OUTLINED_FUNCTION_10_39();
                bspush_ca_scan(v108, v109);
                goto LABEL_45;
              case 16:
                goto LABEL_97;
              case 17:
LABEL_45:
                OUTLINED_FUNCTION_0_44();
                v110 = test_string_s();
                v56 = v8;
                v52 = v8;
                if (!v110)
                {
                  goto LABEL_97;
                }

                continue;
              case 20:
                goto LABEL_91;
              case 21:
                v95 = OUTLINED_FUNCTION_2_43();
                v98 = testFldeq(v95, v96, v97, 2);
                v52 = v8;
                if (!v98)
                {
                  v99 = advance_tok(a1);
                  v57 = v8;
                  v52 = v8;
                  if (!v99)
                  {
                    goto LABEL_91;
                  }
                }

                continue;
              case 22:
                v100 = OUTLINED_FUNCTION_37_21();
                lpta_loadpn(v100, v101);
                OUTLINED_FUNCTION_32_26();
                if (compare_ptas(a1) || testneq(a1))
                {
                  goto LABEL_39;
                }

                v149 = OUTLINED_FUNCTION_10_39();
                starttest(v149, v150);
                v151 = OUTLINED_FUNCTION_13_39();
                if (lpta_loadp_setscan_r(v151, v152))
                {
                  goto LABEL_69;
                }

                goto LABEL_75;
              case 23:
                bspop_boa(a1);
                goto LABEL_120;
              case 24:
LABEL_39:
                v102 = OUTLINED_FUNCTION_10_39();
                starttest(v102, v103);
                v104 = OUTLINED_FUNCTION_13_39();
                if (!lpta_loadp_setscan_r(v104, v105))
                {
                  goto LABEL_42;
                }

                goto LABEL_71;
              case 25:
              case 52:
              case 54:
                goto LABEL_69;
              case 26:
              case 30:
                v68 = OUTLINED_FUNCTION_14_39();
                savescptr(v68, v69, v70);
                v71 = OUTLINED_FUNCTION_14_39();
                lpta_rpta_loadp(v71, v72, v73);
                v74 = OUTLINED_FUNCTION_11_39();
                v76 = setd_lookup(v74, v75, 346);
                goto LABEL_72;
              case 27:
LABEL_75:
                while (!advance_tok(a1))
                {
                  v161 = OUTLINED_FUNCTION_10_39();
                  bspush_ca_scan(v161, v162);
                }

                goto LABEL_76;
              case 28:
              case 29:
              case 32:
              case 50:
              case 55:
              case 56:
              case 57:
                goto LABEL_71;
              case 31:
LABEL_42:
                while (!advance_tok(a1))
                {
                  v106 = OUTLINED_FUNCTION_10_39();
                  bspush_ca_scan(v106, v107);
                }

LABEL_76:
                v52 = v8;
                continue;
              case 34:
                v111 = OUTLINED_FUNCTION_10_39();
                bspush_ca_scan(v111, v112);
                goto LABEL_48;
              case 35:
              case 44:
                goto LABEL_104;
              case 36:
                v63 = OUTLINED_FUNCTION_10_39();
                bspush_ca_scan(v63, v64);
                OUTLINED_FUNCTION_0_44();
                v65 = test_string_s();
                v52 = v8;
                if (v65)
                {
                  continue;
                }

                v66 = OUTLINED_FUNCTION_10_39();
                bspush_ca_scan(v66, v67);
                OUTLINED_FUNCTION_1_43();
                goto LABEL_22;
              case 37:
                v114 = OUTLINED_FUNCTION_10_39();
                bspush_ca_scan(v114, v115);
                OUTLINED_FUNCTION_0_44();
                v116 = test_string_s();
                v52 = v8;
                if (v116)
                {
                  continue;
                }

                v117 = OUTLINED_FUNCTION_10_39();
                bspush_ca_scan(v117, v118);
                v119 = OUTLINED_FUNCTION_10_39();
                bspush_ca_scan(v119, v120);
                goto LABEL_53;
              case 38:
                OUTLINED_FUNCTION_0_44();
LABEL_22:
                v77 = test_string_s();
                v52 = v8;
                if (!v77)
                {
                  goto LABEL_78;
                }

                continue;
              case 39:
LABEL_78:
                v195 = 39;
                goto LABEL_102;
              case 40:
LABEL_48:
                OUTLINED_FUNCTION_2_43();
                goto LABEL_49;
              case 41:
                OUTLINED_FUNCTION_3_42();
LABEL_49:
                v113 = test_string_s();
                v47 = v8;
                v52 = v8;
                if (!v113)
                {
                  goto LABEL_104;
                }

                continue;
              case 42:
LABEL_53:
                OUTLINED_FUNCTION_0_44();
                v121 = test_string_s();
                v52 = v8;
                if (v121)
                {
                  continue;
                }

                v195 = 43;
LABEL_102:
                v55 = v195;
LABEL_103:
                savescptr(a1, v55, &v241);
                v47 = v8;
                goto LABEL_104;
              case 43:
                goto LABEL_103;
              case 45:
                v196 = v8;
                goto LABEL_106;
              case 47:
                v122 = OUTLINED_FUNCTION_14_39();
                savescptr(v122, v123, v124);
                v125 = OUTLINED_FUNCTION_14_39();
                lpta_rpta_loadp(v125, v126, v127);
                v128 = OUTLINED_FUNCTION_11_39();
                v130 = setd_lookup(v128, v129, 353);
                v52 = v8;
                if (v130)
                {
                  continue;
                }

                OUTLINED_FUNCTION_28_28();
                OUTLINED_FUNCTION_24_30();
                v131 = mark_s();
                v52 = v8;
                if (v131)
                {
                  continue;
                }

                v132 = OUTLINED_FUNCTION_33_25();
                lpta_loadpn(v132, v133);
                rpta_loadpn(a1, a1 + 207);
                if (compare_ptas(a1))
                {
                  goto LABEL_60;
                }

                if (testeq(a1))
                {
                  goto LABEL_60;
                }

                OUTLINED_FUNCTION_28_28();
                if (mark_s())
                {
                  goto LABEL_60;
                }

                goto LABEL_71;
              case 48:
                goto LABEL_114;
              case 49:
LABEL_60:
                v134 = OUTLINED_FUNCTION_13_39();
                if (!lpta_loadp_setscan_l(v134, v135))
                {
                  OUTLINED_FUNCTION_0_44();
                  if (!test_string_s())
                  {
                    goto LABEL_62;
                  }
                }

                goto LABEL_71;
              case 51:
LABEL_62:
                v136 = OUTLINED_FUNCTION_14_39();
                savescptr(v136, v137, v138);
                v139 = OUTLINED_FUNCTION_10_39();
                starttest(v139, v140);
                v141 = OUTLINED_FUNCTION_7_40();
                if (!lpta_loadp_setscan_l(v141, v142))
                {
                  OUTLINED_FUNCTION_0_44();
                  if (!test_string_s())
                  {
                    goto LABEL_64;
                  }
                }

                goto LABEL_69;
              case 53:
LABEL_64:
                OUTLINED_FUNCTION_12_39(53, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237);
                v143 = OUTLINED_FUNCTION_10_39();
                starttest(v143, v144);
                v145 = OUTLINED_FUNCTION_17_36();
                lpta_loadpn(v145, v146);
                v147 = OUTLINED_FUNCTION_33_25();
                rpta_loadpn(v147, v148);
                if (!compare_ptas(a1) && !testeq(a1))
                {
                  OUTLINED_FUNCTION_28_28();
                  OUTLINED_FUNCTION_24_30();
                  if (!mark_s())
                  {
                    goto LABEL_71;
                  }
                }

LABEL_69:
                OUTLINED_FUNCTION_28_28();
                OUTLINED_FUNCTION_24_30();
                v86 = mark_s();
LABEL_70:
                v52 = v8;
                if (v86)
                {
                  continue;
                }

LABEL_71:
                v153 = OUTLINED_FUNCTION_10_39();
                starttest(v153, v154);
                v155 = OUTLINED_FUNCTION_7_40();
                move_i(v155, v156, v157);
                v158 = OUTLINED_FUNCTION_15_38();
                v76 = nonlex_prefixes(v158, v159, v160, &v236 + 2);
LABEL_72:
                v52 = v8;
                if (!v76)
                {
                  goto LABEL_120;
                }

                continue;
              case 59:
                v78 = OUTLINED_FUNCTION_14_39();
                savescptr(v78, v79, v80);
                v81 = OUTLINED_FUNCTION_14_39();
                lpta_rpta_loadp(v81, v82, v83);
                v84 = OUTLINED_FUNCTION_11_39();
                v86 = setd_lookup(v84, v85, 352);
                goto LABEL_70;
              case 60:
                goto LABEL_109;
              case 61:
                goto LABEL_4;
              default:
                goto LABEL_3;
            }
          }
        }
      }
    }

    else
    {
      v182 = OUTLINED_FUNCTION_10_39();
      starttest_l(v182, v183);
      v184 = OUTLINED_FUNCTION_13_39();
      if (!lpta_loadp_setscan_r(v184, v185))
      {
        v186 = OUTLINED_FUNCTION_10_39();
        bspush_ca_scan(v186, v187);
        OUTLINED_FUNCTION_0_44();
        v188 = test_string_s();
        v56 = v10;
        if (v188)
        {
          goto LABEL_10;
        }

LABEL_97:
        LODWORD(v10) = v56;
        savescptr(a1, 16, &v245);
        v189 = OUTLINED_FUNCTION_2_43();
        if (testFldeq(v189, v190, v191, 2) || advance_tok(a1))
        {
          goto LABEL_10;
        }

        v248 = v246;
      }
    }

LABEL_100:
    v192 = OUTLINED_FUNCTION_10_39();
    starttest(v192, v193);
    OUTLINED_FUNCTION_10_39();
    bspush_ca_boa();
    potential_prefix();
    if (!v194)
    {
      LODWORD(v10) = 1;
    }

    goto LABEL_10;
  }

LABEL_6:
  v40 = OUTLINED_FUNCTION_10_39();
  starttest(v40, v41);
  v42 = OUTLINED_FUNCTION_13_39();
  if (!lpta_loadp_setscan_r(v42, v43))
  {
    v44 = OUTLINED_FUNCTION_10_39();
    bspush_ca_scan(v44, v45);
    OUTLINED_FUNCTION_11_39();
    v46 = test_string_s();
    v47 = v10;
    if (v46)
    {
      goto LABEL_10;
    }

LABEL_104:
    v196 = v47;
    OUTLINED_FUNCTION_29_28(35, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247);
    v197 = OUTLINED_FUNCTION_31_28();
    lpta_loadpn(v197, v198);
    OUTLINED_FUNCTION_32_26();
    if (compare_ptas(a1) || testneq(a1))
    {
LABEL_106:
      v199 = OUTLINED_FUNCTION_10_39();
      starttest(v199, v200);
      v201 = OUTLINED_FUNCTION_13_39();
      if (!lpta_loadp_setscan_r(v201, v202) && !advance_tok(a1))
      {
        v8 = v196;
        if (!advance_tok(a1))
        {
LABEL_109:
          while (!advance_tok(a1))
          {
            v203 = OUTLINED_FUNCTION_17_36();
            bspush_ca_scan(v203, v204);
          }

          goto LABEL_116;
        }
      }
    }

    else
    {
      v205 = OUTLINED_FUNCTION_10_39();
      starttest(v205, v206);
      v207 = OUTLINED_FUNCTION_13_39();
      if (!lpta_loadp_setscan_r(v207, v208) && !advance_tok(a1))
      {
        v8 = v196;
        if (!advance_tok(a1))
        {
LABEL_114:
          while (!advance_tok(a1))
          {
            v209 = OUTLINED_FUNCTION_17_36();
            bspush_ca_scan(v209, v210);
          }

LABEL_116:
          LODWORD(v10) = v8;
          goto LABEL_10;
        }
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

uint64_t strip_outer_prefixes(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v177 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6_40(a1, a2, a3, a4, a5, a6, a7, a8, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, v141, v143, v145, v147, v149, v151, v153, v155, v157, v159, v161, v163, v165, v167, v169, SHIDWORD(v169), v170, v171, v172, v173, v174[0], v174[1]);
  OUTLINED_FUNCTION_22_32();
  v9 = v176;
  bzero(v176, v10);
  if (setjmp(v176))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_34_25();
  if (ventproc(a1, v11, v12, v13, v175, v176))
  {
    goto LABEL_3;
  }

  v17 = OUTLINED_FUNCTION_31_28();
  push_ptr_init(v17, v18);
  v19 = OUTLINED_FUNCTION_20_33();
  push_ptr_init(v19, v20);
  v21 = OUTLINED_FUNCTION_16_38();
  push_ptr_init(v21, v22);
  OUTLINED_FUNCTION_27_29();
  OUTLINED_FUNCTION_35_24(v23, v24, &null_str_11);
  v25 = OUTLINED_FUNCTION_9_40();
  fence_43(v25, v26, v27);
  v28 = OUTLINED_FUNCTION_30_28();
  starttest(v28, v29);
  v30 = OUTLINED_FUNCTION_15_38();
  if (!lpta_loadp_setscan_r(v30, v31))
  {
    v42 = OUTLINED_FUNCTION_39_20();
    bspush_ca_scan(v42, v43);
    OUTLINED_FUNCTION_11_39();
    v9 = 0;
    v44 = 0;
    if (test_string_s())
    {
      goto LABEL_25;
    }

LABEL_14:
    savescptr(a1, 3, v174);
    v45 = v44;
    while (2)
    {
      v9 = v45;
      OUTLINED_FUNCTION_38_20(4, v122, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142, v144, v146, v148, v150, v152, v154, v156, v158, v160, v162, v164, v166, v168, v169, v170, v171, v172);
      v46 = OUTLINED_FUNCTION_31_28();
      lpta_loadpn(v46, v47);
      OUTLINED_FUNCTION_32_26();
      if (!compare_ptas(a1) && !testneq(a1))
      {
        v48 = OUTLINED_FUNCTION_13_39();
        if (!lpta_loadp_setscan_r(v48, v49))
        {
          OUTLINED_FUNCTION_3_42();
          if (!test_string_s())
          {
            goto LABEL_61;
          }
        }

LABEL_53:
        v96 = OUTLINED_FUNCTION_13_39();
        if (!lpta_loadp_setscan_r(v96, v97))
        {
          OUTLINED_FUNCTION_0_44();
          if (!test_string_s())
          {
            v98 = OUTLINED_FUNCTION_10_39();
            starttest(v98, v99);
            v100 = OUTLINED_FUNCTION_13_39();
            if (!lpta_loadp_setscan_r(v100, v101) && !advance_tok(a1))
            {
              v44 = v9;
              if (!advance_tok(a1))
              {
LABEL_58:
                v9 = v44;
                if (advance_tok(a1))
                {
                  goto LABEL_25;
                }

                v102 = OUTLINED_FUNCTION_10_39();
                bspush_ca_scan(v102, v103);
LABEL_60:
                OUTLINED_FUNCTION_12_39(9, v122, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142, v144, v146, v148, v150, v152, v154, v156, v158, v160, v162, v164, v166, v168, v169, v170);
                v104 = OUTLINED_FUNCTION_14_39();
                lpta_rpta_loadp(v104, v105, v106);
                v107 = OUTLINED_FUNCTION_11_39();
                if (setd_lookup(v107, v108, 344))
                {
                  goto LABEL_25;
                }

                goto LABEL_61;
              }
            }

LABEL_69:
            v110 = OUTLINED_FUNCTION_10_39();
            starttest(v110, v111);
            v112 = OUTLINED_FUNCTION_13_39();
            if (!lpta_loadp_setscan_r(v112, v113) && !advance_tok(a1))
            {
LABEL_71:
              if (!advance_tok(a1))
              {
                v114 = OUTLINED_FUNCTION_10_39();
                bspush_ca_scan(v114, v115);
                v44 = v9;
LABEL_73:
                OUTLINED_FUNCTION_12_39(11, v122, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142, v144, v146, v148, v150, v152, v154, v156, v158, v160, v162, v164, v166, v168, v169, v170);
                v116 = OUTLINED_FUNCTION_14_39();
                lpta_rpta_loadp(v116, v117, v118);
                v119 = OUTLINED_FUNCTION_11_39();
                v9 = v44;
                if (!setd_lookup(v119, v120, 343))
                {
                  goto LABEL_3;
                }
              }

LABEL_25:
              v44 = v9;
LABEL_26:
              v52 = a1[13];
              if (v52)
              {
                v53 = OUTLINED_FUNCTION_19_35(v52);
              }

              else
              {
                v53 = vback(a1, v44);
                v44 = 0;
              }

              v45 = v44;
              LODWORD(v9) = v44;
              switch(v53)
              {
                case 1:
                  goto LABEL_6;
                case 2:
                  OUTLINED_FUNCTION_3_42();
                  v54 = test_string_s();
                  v45 = v44;
                  if (!v54)
                  {
                    continue;
                  }

                  goto LABEL_26;
                case 3:
                  goto LABEL_14;
                case 4:
                  continue;
                case 5:
                  v109 = 12;
                  goto LABEL_76;
                case 6:
                  v9 = v44;
                  goto LABEL_53;
                case 7:
                  v9 = v44;
                  goto LABEL_69;
                case 8:
                  goto LABEL_58;
                case 9:
                  v9 = v44;
                  goto LABEL_60;
                case 10:
                  v9 = v44;
                  goto LABEL_71;
                case 11:
                  goto LABEL_73;
                case 12:
                  v64 = OUTLINED_FUNCTION_10_39();
                  starttest(v64, v65);
                  v66 = OUTLINED_FUNCTION_13_39();
                  if (lpta_loadp_setscan_r(v66, v67) || advance_tok(a1))
                  {
                    goto LABEL_36;
                  }

                  goto LABEL_39;
                case 13:
                case 23:
                  bspop_boa(a1);
                  goto LABEL_3;
                case 14:
LABEL_36:
                  v68 = OUTLINED_FUNCTION_10_39();
                  starttest(v68, v69);
                  v70 = OUTLINED_FUNCTION_17_36();
                  move_i(v70, v71, v72);
                  v73 = OUTLINED_FUNCTION_15_38();
                  LODWORD(v9) = v44;
                  if (!nonlex_prefixes(v73, v74, v75, &v169 + 2))
                  {
                    goto LABEL_6;
                  }

                  goto LABEL_26;
                case 15:
                  OUTLINED_FUNCTION_12_39(15, v122, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142, v144, v146, v148, v150, v152, v154, v156, v158, v160, v162, v164, v166, v168, v169, v170);
                  v55 = OUTLINED_FUNCTION_14_39();
                  lpta_rpta_loadp(v55, v56, v57);
                  v58 = OUTLINED_FUNCTION_11_39();
                  v60 = 345;
                  goto LABEL_42;
                case 16:
LABEL_39:
                  while (!advance_tok(a1))
                  {
                    v76 = OUTLINED_FUNCTION_10_39();
                    bspush_ca_scan(v76, v77);
                  }

                  goto LABEL_26;
                case 17:
                  goto LABEL_61;
                case 18:
                  LODWORD(v9) = v44;
                  goto LABEL_8;
                case 19:
                  LODWORD(v9) = v44;
                  goto LABEL_9;
                case 20:
                  LODWORD(v9) = v44;
                  goto LABEL_11;
                case 21:
                  v109 = 22;
LABEL_76:
                  v50 = v109;
                  LODWORD(v9) = v44;
                  goto LABEL_22;
                case 22:
                  v82 = OUTLINED_FUNCTION_10_39();
                  starttest(v82, v83);
                  v84 = OUTLINED_FUNCTION_13_39();
                  if (lpta_loadp_setscan_r(v84, v85) || advance_tok(a1))
                  {
                    goto LABEL_46;
                  }

                  goto LABEL_49;
                case 24:
LABEL_46:
                  v86 = OUTLINED_FUNCTION_10_39();
                  starttest(v86, v87);
                  v88 = OUTLINED_FUNCTION_17_36();
                  move_i(v88, v89, v90);
                  v91 = OUTLINED_FUNCTION_15_38();
                  if (!nonlex_prefixes(v91, v92, v93, &v169 + 2))
                  {
                    goto LABEL_61;
                  }

                  goto LABEL_26;
                case 25:
                  OUTLINED_FUNCTION_12_39(25, v122, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142, v144, v146, v148, v150, v152, v154, v156, v158, v160, v162, v164, v166, v168, v169, v170);
                  v78 = OUTLINED_FUNCTION_10_39();
                  bspush_ca(v78);
                  v79 = OUTLINED_FUNCTION_14_39();
                  lpta_rpta_loadp(v79, v80, v81);
                  v58 = OUTLINED_FUNCTION_11_39();
                  v60 = 360;
                  goto LABEL_42;
                case 26:
LABEL_49:
                  while (!advance_tok(a1))
                  {
                    v94 = OUTLINED_FUNCTION_10_39();
                    bspush_ca_scan(v94, v95);
                  }

                  goto LABEL_26;
                case 27:
                  v61 = OUTLINED_FUNCTION_15_38();
                  lpta_rpta_loadp(v61, v62, v63);
                  v58 = OUTLINED_FUNCTION_11_39();
                  v60 = 348;
LABEL_42:
                  if (!setd_lookup(v58, v59, v60))
                  {
                    goto LABEL_3;
                  }

                  goto LABEL_26;
                default:
                  goto LABEL_3;
              }
            }
          }
        }
      }

      break;
    }

    v41 = 12;
LABEL_21:
    v50 = v41;
LABEL_22:
    starttest(a1, v50);
    OUTLINED_FUNCTION_17_36();
    bspush_ca_boa();
    OUTLINED_FUNCTION_20_33();
    potential_prefix();
    if (v51)
    {
      v9 = v9;
    }

    else
    {
      v9 = 1;
    }

    goto LABEL_25;
  }

LABEL_6:
  v32 = OUTLINED_FUNCTION_13_39();
  if (lpta_loadp_setscan_r(v32, v33))
  {
    goto LABEL_61;
  }

  OUTLINED_FUNCTION_1_43();
  if (test_string_s())
  {
    goto LABEL_61;
  }

LABEL_8:
  OUTLINED_FUNCTION_38_20(18, v122, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142, v144, v146, v148, v150, v152, v154, v156, v158, v160, v162, v164, v166, v168, v169, v170, v171, v172);
  OUTLINED_FUNCTION_4_41();
  if (eng_roots_dict_lookup())
  {
LABEL_9:
    v34 = OUTLINED_FUNCTION_13_39();
    if (lpta_loadp_setscan_r(v34, v35) || (OUTLINED_FUNCTION_3_42(), test_string_s()))
    {
LABEL_11:
      v36 = OUTLINED_FUNCTION_4_41();
      lpta_rpta_loadp(v36, v37, v38);
      v39 = OUTLINED_FUNCTION_11_39();
      if (setd_lookup(v39, v40, 347))
      {
        v41 = 22;
        goto LABEL_21;
      }
    }

LABEL_61:
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

uint64_t strip_medial_prefix(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v423 = *MEMORY[0x277D85DE8];
  v420[0] = 0;
  v420[1] = 0;
  v419[0] = 0;
  v419[1] = 0;
  v418[0] = 0;
  v418[1] = 0;
  v417[0] = 0;
  v417[1] = 0;
  v416[0] = 0;
  v416[1] = 0;
  v414 = 0;
  v415 = 0;
  v412 = 0;
  v413 = 0;
  OUTLINED_FUNCTION_6_40(a1, a2, a3, a4, a5, a6, a7, a8, v357, v359, v361, v363, v365, v367, v369, v371, v373, v375, v377, v379, v381, v383, v385, v387, v389, v391, v393, v395, v397, v399, v401, v403, v405, SHIDWORD(v405), v406, v407, v408, v409, v410, v411);
  OUTLINED_FUNCTION_22_32();
  v10 = v422;
  bzero(v422, v11);
  if (setjmp(v422))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_34_25();
  if (ventproc(a1, v12, v13, v14, v421, v422))
  {
    goto LABEL_3;
  }

  push_ptr_init(a1, v420);
  v19 = OUTLINED_FUNCTION_37_21();
  push_ptr_init(v19, v20);
  v21 = OUTLINED_FUNCTION_36_22();
  push_ptr_init(v21, v22);
  v23 = OUTLINED_FUNCTION_21_32();
  push_ptr_init(v23, v24);
  push_ptr_init(a1, v416);
  v25 = OUTLINED_FUNCTION_18_35();
  push_ptr_init(v25, v26);
  v27 = OUTLINED_FUNCTION_33_25();
  push_ptr_init(v27, v28);
  v29 = OUTLINED_FUNCTION_31_28();
  push_ptr_init(v29, v30);
  v31 = OUTLINED_FUNCTION_20_33();
  push_ptr_init(v31, v32);
  v33 = OUTLINED_FUNCTION_16_38();
  push_ptr_init(v33, v34);
  OUTLINED_FUNCTION_27_29();
  OUTLINED_FUNCTION_35_24(v35, v36, &null_str_11);
  v37 = OUTLINED_FUNCTION_9_40();
  fence_43(v37, v38, v39);
  v40 = OUTLINED_FUNCTION_30_28();
  starttest(v40, v41);
  v42 = OUTLINED_FUNCTION_15_38();
  if (lpta_loadp_setscan_r(v42, v43))
  {
    while (2)
    {
      v44 = OUTLINED_FUNCTION_10_39();
      starttest(v44, v45);
      v46 = OUTLINED_FUNCTION_13_39();
      if (lpta_loadp_setscan_r(v46, v47))
      {
LABEL_3:
        v15 = 94;
        goto LABEL_4;
      }

      v48 = OUTLINED_FUNCTION_10_39();
      bspush_ca_scan(v48, v49);
      OUTLINED_FUNCTION_3_42();
      v50 = test_string_s();
      v51 = v10;
      v52 = v10;
      if (v50)
      {
        goto LABEL_45;
      }

LABEL_8:
      v8 = v51;
      v53 = OUTLINED_FUNCTION_14_39();
      savescptr(v53, v54, v55);
      v56 = OUTLINED_FUNCTION_10_39();
      starttest(v56, v57);
      v58 = OUTLINED_FUNCTION_7_40();
      if (!lpta_loadp_setscan_r(v58, v59) && !advance_tok(a1))
      {
        v69 = OUTLINED_FUNCTION_10_39();
        bspush_ca_scan(v69, v70);
        OUTLINED_FUNCTION_0_44();
        if (test_string_s())
        {
          v52 = v8;
        }

        else
        {
          v118 = OUTLINED_FUNCTION_10_39();
          bspush_ca_scan(v118, v119);
LABEL_182:
          OUTLINED_FUNCTION_0_44();
LABEL_184:
          v301 = test_string_s();
          v131 = v8;
          v52 = v8;
          if (!v301)
          {
LABEL_185:
            v302 = v131;
            OUTLINED_FUNCTION_43_18();
            v303 = *(a1 + 1664);
            v304 = OUTLINED_FUNCTION_8_40();
            v15 = test_ptr(v304);
            v52 = v302;
            if (!v15)
            {
              goto LABEL_4;
            }
          }
        }

        goto LABEL_45;
      }

LABEL_10:
      v60 = v8;
      v61 = OUTLINED_FUNCTION_18_35();
      lpta_loadpn(v61, v62);
      OUTLINED_FUNCTION_32_26();
      if (compare_ptas(a1) || testneq(a1))
      {
LABEL_12:
        v63 = OUTLINED_FUNCTION_33_25();
        lpta_loadpn(v63, v64);
        OUTLINED_FUNCTION_32_26();
        if (compare_ptas(a1) || testneq(a1))
        {
LABEL_14:
          v65 = OUTLINED_FUNCTION_20_33();
          lpta_loadpn(v65, v66);
          OUTLINED_FUNCTION_32_26();
          if (!compare_ptas(a1) && !testneq(a1))
          {
            v67 = OUTLINED_FUNCTION_13_39();
            if (!lpta_loadp_setscan_r(v67, v68))
            {
              OUTLINED_FUNCTION_1_43();
              v8 = v60;
              if (!test_string_s())
              {
                goto LABEL_36;
              }

LABEL_31:
              v93 = OUTLINED_FUNCTION_10_39();
              starttest(v93, v94);
              v95 = OUTLINED_FUNCTION_13_39();
              v60 = v8;
              if (lpta_loadp_setscan_r(v95, v96))
              {
LABEL_198:
                v15 = 0;
                goto LABEL_4;
              }

LABEL_32:
              if (!advance_tok(a1))
              {
                v97 = OUTLINED_FUNCTION_10_39();
                bspush_ca_scan(v97, v98);
LABEL_34:
                v8 = v60;
                v99 = OUTLINED_FUNCTION_14_39();
                savescptr(v99, v100, v101);
                v102 = OUTLINED_FUNCTION_14_39();
                lpta_rpta_loadp(v102, v103, v104);
                v105 = OUTLINED_FUNCTION_11_39();
                v107 = setd_lookup(v105, v106, 354);
LABEL_35:
                v52 = v8;
                v60 = v8;
                if (v107)
                {
                  goto LABEL_45;
                }

                goto LABEL_36;
              }

LABEL_227:
              v52 = v60;
              goto LABEL_45;
            }
          }

LABEL_30:
          v8 = v60;
          goto LABEL_31;
        }

        v89 = OUTLINED_FUNCTION_10_39();
        starttest(v89, v90);
        v91 = OUTLINED_FUNCTION_13_39();
        if (lpta_loadp_setscan_r(v91, v92))
        {
          goto LABEL_30;
        }

        v120 = OUTLINED_FUNCTION_10_39();
        bspush_ca_scan(v120, v121);
        OUTLINED_FUNCTION_0_44();
        if (test_string_s())
        {
          goto LABEL_227;
        }

        v122 = OUTLINED_FUNCTION_10_39();
        bspush_ca_scan(v122, v123);
        OUTLINED_FUNCTION_0_44();
        v88 = test_string_s();
LABEL_42:
        v52 = v60;
        if (v88)
        {
          goto LABEL_45;
        }

        goto LABEL_36;
      }

      v71 = OUTLINED_FUNCTION_10_39();
      starttest(v71, v72);
      v73 = OUTLINED_FUNCTION_5_41();
      if (lpta_loadp_setscan_l(v73, v74))
      {
LABEL_22:
        v75 = OUTLINED_FUNCTION_10_39();
        starttest(v75, v76);
        v77 = OUTLINED_FUNCTION_5_41();
        if (!lpta_loadp_setscan_r(v77, v78))
        {
          OUTLINED_FUNCTION_0_44();
          if (!test_string_s())
          {
            v79 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v79, v80);
            v81 = v60;
LABEL_25:
            v60 = v81;
            v82 = OUTLINED_FUNCTION_2_43();
            if (testFldeq(v82, v83, v84, 1))
            {
              goto LABEL_227;
            }

            if (advance_tok(a1))
            {
              goto LABEL_227;
            }

            v85 = OUTLINED_FUNCTION_2_43();
            if (testFldeq(v85, v86, v87, 2))
            {
              goto LABEL_227;
            }

            v88 = advance_tok(a1);
            goto LABEL_42;
          }
        }

LABEL_212:
        v330 = OUTLINED_FUNCTION_10_39();
        starttest(v330, v331);
        v332 = OUTLINED_FUNCTION_13_39();
        v334 = lpta_loadp_setscan_l(v332, v333);
        v329 = v60;
        v8 = v60;
        if (v334)
        {
LABEL_213:
          v60 = v8;
          lpta_rpta_loadp(a1, v417, v416);
          v335 = OUTLINED_FUNCTION_11_39();
          if (!setd_lookup(v335, v336, 351))
          {
LABEL_36:
            v8 = v60;
            v108 = OUTLINED_FUNCTION_10_39();
            starttest(v108, v109);
            v110 = OUTLINED_FUNCTION_7_40();
            move_i(v110, v111, v112);
            v113 = OUTLINED_FUNCTION_15_38();
            v15 = nonlex_prefixes(v113, v114, v115, &v405 + 2);
            goto LABEL_189;
          }

LABEL_214:
          v337 = OUTLINED_FUNCTION_10_39();
          starttest(v337, v338);
          v339 = OUTLINED_FUNCTION_5_41();
          v60 = v8;
          if (!lpta_loadp_setscan_l(v339, v340))
          {
LABEL_225:
            savescptr(a1, 149, &v406);
            OUTLINED_FUNCTION_1_43();
            if (test_string_s())
            {
              goto LABEL_227;
            }

            v345 = OUTLINED_FUNCTION_13_39();
            if (lpta_loadp_setscan_r(v345, v346))
            {
              goto LABEL_227;
            }

            OUTLINED_FUNCTION_0_44();
            v347 = test_string_s();
            v52 = v60;
            v8 = v60;
            if (v347)
            {
              goto LABEL_45;
            }

LABEL_235:
            v348 = OUTLINED_FUNCTION_14_39();
            savescptr(v348, v349, v350);
            v351 = OUTLINED_FUNCTION_10_39();
            starttest(v351, v352);
            v353 = OUTLINED_FUNCTION_7_40();
            if (!lpta_loadp_setscan_r(v353, v354))
            {
              OUTLINED_FUNCTION_0_44();
              if (!test_string_s())
              {
                v355 = OUTLINED_FUNCTION_10_39();
                bspush_ca_scan(v355, v356);
                OUTLINED_FUNCTION_0_44();
                v107 = test_string_s();
                goto LABEL_35;
              }
            }
          }

          goto LABEL_31;
        }

LABEL_216:
        v8 = v329;
        OUTLINED_FUNCTION_29_28(145, v358, v360, v362, v364, v366, v368, v370, v372, v374, v376, v378, v380, v382, v384, v386, v388, v390, v392, v394, v396, v398, v400, v402, v404, v405, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415, v416[0]);
        v341 = OUTLINED_FUNCTION_10_39();
        bspush_ca_scan(v341, v342);
        OUTLINED_FUNCTION_0_44();
        v343 = test_string_s();
        v52 = v8;
        if (v343)
        {
          goto LABEL_45;
        }

LABEL_217:
        OUTLINED_FUNCTION_29_28(146, v358, v360, v362, v364, v366, v368, v370, v372, v374, v376, v378, v380, v382, v384, v386, v388, v390, v392, v394, v396, v398, v400, v402, v404, v405, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415, v416[0]);
        OUTLINED_FUNCTION_0_44();
        v344 = test_string_s();
        v52 = v8;
        if (!v344)
        {
          goto LABEL_213;
        }

LABEL_45:
        v128 = *(a1 + 104);
        if (v128)
        {
          v129 = OUTLINED_FUNCTION_19_35(v128);
        }

        else
        {
          v129 = vback(a1, v52);
          v8 = 0;
        }

        v130 = v129 - 1;
        v15 = 0;
        v127 = v8;
        v51 = v8;
        v131 = v8;
        v81 = v8;
        v60 = v8;
        switch(v130)
        {
          case 0:
            v10 = v8;
            continue;
          case 1:
          case 2:
          case 19:
          case 35:
          case 38:
          case 49:
            goto LABEL_148;
          case 3:
          case 7:
          case 11:
          case 15:
          case 18:
          case 23:
          case 32:
          case 36:
          case 40:
          case 46:
          case 50:
          case 56:
          case 59:
          case 62:
          case 65:
          case 68:
          case 71:
          case 76:
          case 77:
          case 80:
          case 85:
            goto LABEL_161;
          case 4:
            v258 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v258, v259);
            OUTLINED_FUNCTION_0_44();
            v260 = test_string_s();
            v52 = v8;
            if (v260)
            {
              goto LABEL_45;
            }

            goto LABEL_148;
          case 5:
            v163 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v163, v164);
            OUTLINED_FUNCTION_3_42();
            v165 = test_string_s();
            v52 = v8;
            if (v165)
            {
              goto LABEL_45;
            }

            goto LABEL_199;
          case 6:
          case 33:
          case 61:
          case 70:
          case 75:
          case 82:
            goto LABEL_156;
          case 8:
          case 16:
          case 45:
          case 51:
          case 84:
            goto LABEL_158;
          case 9:
LABEL_199:
            v324 = 10;
            v325 = v420;
            goto LABEL_208;
          case 10:
          case 53:
          case 64:
          case 66:
          case 79:
            goto LABEL_149;
          case 12:
            v275 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v275, v276);
            OUTLINED_FUNCTION_1_43();
            v277 = test_string_s();
            v52 = v8;
            if (v277)
            {
              goto LABEL_45;
            }

            goto LABEL_158;
          case 13:
            v261 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v261, v262);
            OUTLINED_FUNCTION_0_44();
            v263 = test_string_s();
            v52 = v8;
            if (v263)
            {
              goto LABEL_45;
            }

            goto LABEL_148;
          case 14:
            goto LABEL_63;
          case 17:
          case 43:
          case 47:
          case 58:
          case 67:
          case 83:
            goto LABEL_159;
          case 20:
            v136 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v136, v137);
            OUTLINED_FUNCTION_0_44();
            v138 = test_string_s();
            v52 = v8;
            if (v138)
            {
              goto LABEL_45;
            }

            goto LABEL_54;
          case 21:
            v133 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v133, v134);
            OUTLINED_FUNCTION_1_43();
            v135 = test_string_s();
            v52 = v8;
            if (v135)
            {
              goto LABEL_45;
            }

            goto LABEL_148;
          case 22:
            v182 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v182, v183);
            OUTLINED_FUNCTION_1_43();
            v184 = test_string_s();
            v52 = v8;
            if (v184)
            {
              goto LABEL_45;
            }

            v185 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v185, v186);
            v187 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v187, v188);
            goto LABEL_92;
          case 24:
            OUTLINED_FUNCTION_1_43();
            v272 = test_string_s();
            v52 = v8;
            if (v272)
            {
              goto LABEL_45;
            }

            goto LABEL_155;
          case 25:
          case 29:
          case 42:
            goto LABEL_137;
          case 26:
            OUTLINED_FUNCTION_0_44();
            v132 = test_string_s();
            v52 = v8;
            if (v132)
            {
              goto LABEL_45;
            }

            goto LABEL_50;
          case 27:
            goto LABEL_92;
          case 28:
LABEL_50:
            savescptr(a1, 29, v419);
LABEL_92:
            OUTLINED_FUNCTION_0_44();
            v189 = test_string_s();
            v52 = v8;
            if (!v189)
            {
              goto LABEL_137;
            }

            goto LABEL_45;
          case 30:
            v266 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v266, v267);
            OUTLINED_FUNCTION_0_44();
            v268 = test_string_s();
            v52 = v8;
            if (v268)
            {
              goto LABEL_45;
            }

            goto LABEL_158;
          case 31:
            OUTLINED_FUNCTION_0_44();
            v144 = test_string_s();
            v52 = v8;
            if (v144)
            {
              goto LABEL_45;
            }

            goto LABEL_155;
          case 34:
            v145 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v145, v146);
            OUTLINED_FUNCTION_0_44();
            v147 = test_string_s();
            v52 = v8;
            if (v147)
            {
              goto LABEL_45;
            }

            goto LABEL_155;
          case 37:
            v230 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v230, v231);
            OUTLINED_FUNCTION_0_44();
            v232 = test_string_s();
            v52 = v8;
            if (v232)
            {
              goto LABEL_45;
            }

            goto LABEL_148;
          case 39:
            goto LABEL_69;
          case 41:
          case 52:
            goto LABEL_155;
          case 44:
            v141 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v141, v142);
            OUTLINED_FUNCTION_0_44();
            v143 = test_string_s();
            v52 = v8;
            if (v143)
            {
              goto LABEL_45;
            }

            goto LABEL_148;
          case 48:
            v191 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v191, v192);
            OUTLINED_FUNCTION_0_44();
            v193 = test_string_s();
            v52 = v8;
            if (v193)
            {
              goto LABEL_45;
            }

            goto LABEL_148;
          case 54:
            v248 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v248, v249);
            OUTLINED_FUNCTION_3_42();
            v250 = test_string_s();
            v52 = v8;
            if (v250)
            {
              goto LABEL_45;
            }

            goto LABEL_148;
          case 55:
            v208 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v208, v209);
            OUTLINED_FUNCTION_0_44();
            v210 = test_string_s();
            v52 = v8;
            if (v210)
            {
              goto LABEL_45;
            }

            goto LABEL_148;
          case 57:
            v152 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v152, v153);
            OUTLINED_FUNCTION_0_44();
            v154 = test_string_s();
            v52 = v8;
            if (v154)
            {
              goto LABEL_45;
            }

            goto LABEL_155;
          case 60:
            v148 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v148, v149);
            OUTLINED_FUNCTION_0_44();
            v150 = test_string_s();
            v52 = v8;
            if (v150)
            {
              goto LABEL_45;
            }

            goto LABEL_69;
          case 63:
            v269 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v269, v270);
            OUTLINED_FUNCTION_0_44();
            v271 = test_string_s();
            v52 = v8;
            if (v271)
            {
              goto LABEL_45;
            }

LABEL_158:
            v278 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v278, v279);
LABEL_159:
            OUTLINED_FUNCTION_2_43();
            goto LABEL_160;
          case 69:
LABEL_54:
            v139 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v139, v140);
LABEL_63:
            OUTLINED_FUNCTION_11_39();
            goto LABEL_160;
          case 72:
            v252 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v252, v253);
            OUTLINED_FUNCTION_0_44();
            v254 = test_string_s();
            v52 = v8;
            if (v254)
            {
              goto LABEL_45;
            }

            v255 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v255, v256);
            OUTLINED_FUNCTION_0_44();
            v257 = test_string_s();
            v52 = v8;
            if (v257)
            {
              goto LABEL_45;
            }

            goto LABEL_155;
          case 73:
            v155 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v155, v156);
            OUTLINED_FUNCTION_0_44();
            v157 = test_string_s();
            v52 = v8;
            if (v157)
            {
              goto LABEL_45;
            }

            goto LABEL_69;
          case 74:
            v166 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v166, v167);
            OUTLINED_FUNCTION_0_44();
            v168 = test_string_s();
            v52 = v8;
            if (v168)
            {
              goto LABEL_45;
            }

            goto LABEL_148;
          case 78:
            OUTLINED_FUNCTION_0_44();
            v151 = test_string_s();
            v52 = v8;
            if (v151)
            {
              goto LABEL_45;
            }

LABEL_69:
            v158 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v158, v159);
LABEL_137:
            OUTLINED_FUNCTION_0_44();
            goto LABEL_160;
          case 81:
            OUTLINED_FUNCTION_0_44();
            v181 = test_string_s();
            v52 = v8;
            if (v181)
            {
              goto LABEL_45;
            }

LABEL_155:
            v273 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v273, v274);
LABEL_156:
            OUTLINED_FUNCTION_1_43();
            goto LABEL_160;
          case 86:
            OUTLINED_FUNCTION_0_44();
            v251 = test_string_s();
            v52 = v8;
            if (v251)
            {
              goto LABEL_45;
            }

LABEL_148:
            v264 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v264, v265);
LABEL_149:
            OUTLINED_FUNCTION_3_42();
LABEL_160:
            v280 = test_string_s();
            v127 = v8;
            v52 = v8;
            if (!v280)
            {
              goto LABEL_161;
            }

            goto LABEL_45;
          case 87:
            OUTLINED_FUNCTION_0_44();
            v169 = test_string_s();
            v52 = v8;
            if (v169)
            {
              goto LABEL_45;
            }

            goto LABEL_207;
          case 88:
LABEL_207:
            v324 = 89;
            v325 = v418;
LABEL_208:
            savescptr(a1, v324, v325);
            v127 = v8;
            goto LABEL_161;
          case 89:
            v60 = v8;
            goto LABEL_163;
          case 90:
            v60 = v8;
            goto LABEL_165;
          case 91:
          case 93:
          case 95:
          case 100:
            LODWORD(v60) = v8;
            goto LABEL_178;
          case 92:
          case 102:
            bspop_boa(a1);
            goto LABEL_198;
          case 94:
            v60 = v8;
            goto LABEL_167;
          case 96:
            goto LABEL_191;
          case 97:
            v60 = v8;
            goto LABEL_193;
          case 98:
            goto LABEL_172;
          case 99:
            goto LABEL_171;
          case 101:
            v217 = OUTLINED_FUNCTION_10_39();
            starttest(v217, v218);
            v219 = OUTLINED_FUNCTION_13_39();
            if (!lpta_loadp_setscan_r(v219, v220))
            {
              goto LABEL_114;
            }

            v60 = v8;
            goto LABEL_36;
          case 103:
          case 106:
          case 139:
          case 151:
          case 156:
          case 158:
          case 166:
          case 172:
            goto LABEL_36;
          case 104:
LABEL_114:
            v221 = advance_tok(a1);
            v52 = v8;
            if (v221)
            {
              goto LABEL_45;
            }

            v305 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v305, v306);
LABEL_187:
            v307 = OUTLINED_FUNCTION_14_39();
            savescptr(v307, v308, v309);
            v310 = OUTLINED_FUNCTION_14_39();
            lpta_rpta_loadp(v310, v311, v312);
            v313 = OUTLINED_FUNCTION_11_39();
            v315 = 350;
            goto LABEL_188;
          case 105:
            goto LABEL_187;
          case 108:
            v160 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v160, v161);
            OUTLINED_FUNCTION_1_43();
            v162 = test_string_s();
            v52 = v8;
            if (v162)
            {
              goto LABEL_45;
            }

            goto LABEL_200;
          case 109:
          case 117:
          case 121:
            goto LABEL_8;
          case 110:
            v205 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v205, v206);
            OUTLINED_FUNCTION_1_43();
            v207 = test_string_s();
            v52 = v8;
            if (v207)
            {
              goto LABEL_45;
            }

            goto LABEL_201;
          case 111:
LABEL_200:
            v326 = 112;
            goto LABEL_205;
          case 112:
            v172 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v172, v173);
            OUTLINED_FUNCTION_0_44();
            v174 = test_string_s();
            v52 = v8;
            if (v174)
            {
              goto LABEL_45;
            }

            v175 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v175, v176);
            OUTLINED_FUNCTION_0_44();
            v177 = test_string_s();
            v52 = v8;
            if (v177)
            {
              goto LABEL_45;
            }

            goto LABEL_209;
          case 113:
LABEL_201:
            v327 = 114;
            v328 = &v412;
            goto LABEL_206;
          case 114:
            v178 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v178, v179);
            OUTLINED_FUNCTION_0_44();
            v180 = test_string_s();
            v52 = v8;
            if (v180)
            {
              goto LABEL_45;
            }

            goto LABEL_134;
          case 115:
            OUTLINED_FUNCTION_0_44();
            v190 = test_string_s();
            v52 = v8;
            if (v190)
            {
              goto LABEL_45;
            }

            goto LABEL_204;
          case 116:
LABEL_209:
            v327 = 117;
            v328 = &v410;
            goto LABEL_206;
          case 118:
LABEL_204:
            v326 = 119;
            goto LABEL_205;
          case 119:
          case 125:
            goto LABEL_128;
          case 120:
          case 122:
LABEL_134:
            v245 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v245, v246);
            OUTLINED_FUNCTION_0_44();
            goto LABEL_135;
          case 123:
            OUTLINED_FUNCTION_0_44();
            v211 = test_string_s();
            v52 = v8;
            if (v211)
            {
              goto LABEL_45;
            }

            goto LABEL_203;
          case 124:
LABEL_203:
            v327 = 125;
            v328 = &v408;
            goto LABEL_206;
          case 126:
            OUTLINED_FUNCTION_1_43();
            v237 = test_string_s();
            v52 = v8;
            if (v237)
            {
              goto LABEL_45;
            }

LABEL_128:
            v238 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v238, v239);
            OUTLINED_FUNCTION_3_42();
LABEL_135:
            v247 = test_string_s();
            v51 = v8;
            v52 = v8;
            if (!v247)
            {
              goto LABEL_8;
            }

            goto LABEL_45;
          case 127:
            OUTLINED_FUNCTION_0_44();
            v170 = test_string_s();
            v52 = v8;
            if (v170)
            {
              goto LABEL_45;
            }

            goto LABEL_202;
          case 128:
LABEL_202:
            v326 = 129;
LABEL_205:
            v327 = v326;
            v328 = &v414;
LABEL_206:
            savescptr(a1, v327, v328);
            v51 = v8;
            goto LABEL_8;
          case 129:
            goto LABEL_10;
          case 130:
            OUTLINED_FUNCTION_3_42();
            goto LABEL_184;
          case 131:
            goto LABEL_182;
          case 132:
          case 133:
            goto LABEL_185;
          case 134:
          case 147:
          case 153:
          case 173:
            goto LABEL_31;
          case 135:
            v60 = v8;
            goto LABEL_12;
          case 136:
            v60 = v8;
            goto LABEL_22;
          case 137:
            goto LABEL_194;
          case 138:
            bspop_boa(a1);
            v240 = OUTLINED_FUNCTION_13_39();
            v242 = lpta_loadp_setscan_r(v240, v241);
            v52 = v8;
            if (v242)
            {
              goto LABEL_45;
            }

            goto LABEL_130;
          case 140:
            v60 = v8;
            goto LABEL_212;
          case 141:
            OUTLINED_FUNCTION_0_44();
            v171 = test_string_s();
            v81 = v8;
            v52 = v8;
            if (!v171)
            {
              goto LABEL_25;
            }

            goto LABEL_45;
          case 142:
            goto LABEL_25;
          case 143:
            goto LABEL_213;
          case 144:
            v329 = v8;
            goto LABEL_216;
          case 145:
            goto LABEL_217;
          case 146:
            goto LABEL_214;
          case 148:
            v60 = v8;
            goto LABEL_225;
          case 149:
            goto LABEL_235;
          case 150:
          case 169:
            goto LABEL_112;
          case 152:
            v60 = v8;
            goto LABEL_14;
          case 154:
            v197 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v197, v198);
            OUTLINED_FUNCTION_0_44();
            v199 = test_string_s();
            v52 = v8;
            if (v199)
            {
              goto LABEL_45;
            }

            v200 = OUTLINED_FUNCTION_2_43();
            v203 = 2;
            goto LABEL_132;
          case 155:
            goto LABEL_119;
          case 157:
            OUTLINED_FUNCTION_3_42();
            goto LABEL_121;
          case 159:
            v233 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v233, v234);
            v235 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v235, v236);
            goto LABEL_130;
          case 160:
            v222 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v222, v223);
            OUTLINED_FUNCTION_2_43();
            goto LABEL_121;
          case 161:
LABEL_130:
            OUTLINED_FUNCTION_0_44();
            v243 = test_string_s();
            v52 = v8;
            if (!v243)
            {
              goto LABEL_131;
            }

            goto LABEL_45;
          case 162:
LABEL_131:
            v200 = OUTLINED_FUNCTION_2_43();
            v203 = 1;
LABEL_132:
            v244 = testFldeq(v200, v201, v202, v203);
            v52 = v8;
            if (v244)
            {
              goto LABEL_45;
            }

            v229 = advance_tok(a1);
            goto LABEL_122;
          case 163:
            v224 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v224, v225);
            OUTLINED_FUNCTION_0_44();
            v226 = test_string_s();
            v52 = v8;
            if (v226)
            {
              goto LABEL_45;
            }

LABEL_119:
            v227 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v227, v228);
            goto LABEL_120;
          case 164:
            v212 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v212, v213);
            OUTLINED_FUNCTION_0_44();
            v214 = test_string_s();
            v52 = v8;
            if (v214)
            {
              goto LABEL_45;
            }

            goto LABEL_111;
          case 165:
            OUTLINED_FUNCTION_11_39();
            goto LABEL_121;
          case 167:
            v194 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v194, v195);
            OUTLINED_FUNCTION_0_44();
            v196 = test_string_s();
            v52 = v8;
            if (v196)
            {
              goto LABEL_45;
            }

LABEL_111:
            v215 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v215, v216);
            goto LABEL_112;
          case 168:
            OUTLINED_FUNCTION_0_44();
            v204 = test_string_s();
            v52 = v8;
            if (v204)
            {
              goto LABEL_45;
            }

LABEL_112:
            OUTLINED_FUNCTION_0_44();
            goto LABEL_121;
          case 170:
          case 171:
LABEL_120:
            OUTLINED_FUNCTION_1_43();
LABEL_121:
            v229 = test_string_s();
LABEL_122:
            v60 = v8;
            v52 = v8;
            if (!v229)
            {
              goto LABEL_36;
            }

            goto LABEL_45;
          case 174:
          case 177:
            goto LABEL_4;
          case 175:
            v60 = v8;
            goto LABEL_32;
          case 176:
            v60 = v8;
            goto LABEL_34;
          default:
            goto LABEL_3;
        }
      }

      break;
    }

LABEL_194:
    LODWORD(v60) = v8;
    savescptr(a1, 138, &v406);
    OUTLINED_FUNCTION_10_39();
    bspush_ca_scan_boa();
    if (advance_tok(a1))
    {
      goto LABEL_227;
    }

    OUTLINED_FUNCTION_0_44();
    v294 = test_string_s();
LABEL_179:
    if (v294)
    {
      v52 = v60;
    }

    else
    {
      v52 = 1;
    }

    goto LABEL_45;
  }

  v116 = OUTLINED_FUNCTION_10_39();
  bspush_ca_scan(v116, v117);
  OUTLINED_FUNCTION_0_44();
  if (test_string_s())
  {
    v52 = 0;
    goto LABEL_45;
  }

  v124 = OUTLINED_FUNCTION_39_20();
  bspush_ca_scan(v124, v125);
  OUTLINED_FUNCTION_11_39();
  v126 = test_string_s();
  v127 = 0;
  v52 = 0;
  if (v126)
  {
    goto LABEL_45;
  }

LABEL_161:
  v60 = v127;
  savescptr(a1, 12, v417);
  if (*(a1 + 5938) != 1 || (OUTLINED_FUNCTION_4_41(), v15 = eng_roots_dict_lookup(), v15))
  {
LABEL_163:
    lpta_loadpn(a1, v420);
    OUTLINED_FUNCTION_32_26();
    if (compare_ptas(a1) || testneq(a1))
    {
LABEL_165:
      v281 = OUTLINED_FUNCTION_36_22();
      lpta_loadpn(v281, v282);
      OUTLINED_FUNCTION_32_26();
      if (compare_ptas(a1) || testneq(a1))
      {
LABEL_167:
        v283 = OUTLINED_FUNCTION_37_21();
        lpta_loadpn(v283, v284);
        OUTLINED_FUNCTION_32_26();
        if (!compare_ptas(a1) && !testneq(a1))
        {
          v285 = OUTLINED_FUNCTION_13_39();
          if (!lpta_loadp_setscan_l(v285, v286))
          {
            v8 = v60;
            if (!advance_tok(a1))
            {
LABEL_171:
              OUTLINED_FUNCTION_29_28(100, v358, v360, v362, v364, v366, v368, v370, v372, v374, v376, v378, v380, v382, v384, v386, v388, v390, v392, v394, v396, v398, v400, v402, v404, v405, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415, v416[0]);
LABEL_172:
              LODWORD(v60) = v8;
            }
          }

          delete_inp_from_left();
        }
      }

      else
      {
        v295 = OUTLINED_FUNCTION_10_39();
        starttest_l(v295, v296);
        v297 = OUTLINED_FUNCTION_13_39();
        v8 = v60;
        if (!lpta_loadp_setscan_r(v297, v298))
        {
LABEL_191:
          v60 = v8;
          if (!advance_tok(a1))
          {
            v316 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v316, v317);
LABEL_193:
            v8 = v60;
            v318 = OUTLINED_FUNCTION_14_39();
            savescptr(v318, v319, v320);
            v321 = OUTLINED_FUNCTION_14_39();
            lpta_rpta_loadp(v321, v322, v323);
            v313 = OUTLINED_FUNCTION_11_39();
            v315 = 343;
LABEL_188:
            v15 = setd_lookup(v313, v314, v315);
LABEL_189:
            v52 = v8;
            if (!v15)
            {
              goto LABEL_4;
            }

            goto LABEL_45;
          }

          goto LABEL_227;
        }
      }

LABEL_178:
      v299 = OUTLINED_FUNCTION_10_39();
      starttest(v299, v300);
      OUTLINED_FUNCTION_10_39();
      bspush_ca_boa();
      OUTLINED_FUNCTION_21_32();
      potential_prefix();
    }

    else
    {
      v287 = OUTLINED_FUNCTION_10_39();
      starttest_e(v287, v288);
      OUTLINED_FUNCTION_10_39();
      bspush_ca_boa();
      v289 = OUTLINED_FUNCTION_13_39();
      if (lpta_loadp_setscan_r(v289, v290))
      {
        goto LABEL_227;
      }

      v291 = OUTLINED_FUNCTION_2_43();
      if (testFldeq(v291, v292, v293, 2))
      {
        goto LABEL_227;
      }

      v294 = advance_tok(a1);
    }

    goto LABEL_179;
  }

LABEL_4:
  v16 = v15;
  vretproc(a1);
  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

void potential_prefix()
{
  OUTLINED_FUNCTION_45_17();
  v1 = v0;
  v41 = *MEMORY[0x277D85DE8];
  v35 = 0;
  v36 = 0;
  OUTLINED_FUNCTION_23_32();
  bzero(v34, v2);
  OUTLINED_FUNCTION_22_32();
  bzero(v40, v3);
  if (!setjmp(v40) && !ventproc(v1, v34, v39, v38, v37, v40))
  {
    v4 = OUTLINED_FUNCTION_14_39();
    get_parm(v4, v5, v6, -6);
    OUTLINED_FUNCTION_35_24(v7, v8, &null_str_11);
    v9 = OUTLINED_FUNCTION_9_40();
    fence_43(v9, v10, v11);
    v12 = OUTLINED_FUNCTION_30_28();
    starttest(v12, v13);
    OUTLINED_FUNCTION_10_39();
    bspush_ca_boa();
    *(v1 + 136) = v40;
    v14 = OUTLINED_FUNCTION_8_40();
    if (setscan_nof_r(v14))
    {
      v15 = 0;
    }

    else
    {
      v15 = !advance_tok(v1) && !advance_tok(v1);
    }

    v16 = v15;
    while (1)
    {
      v17 = *(v1 + 104);
      if (v17)
      {
        v18 = OUTLINED_FUNCTION_25_30(v17);
        v20 = v19;
      }

      else
      {
        v18 = vback(v1, v16);
        v20 = 0;
      }

      switch(v18)
      {
        case 1:
          v21 = OUTLINED_FUNCTION_41_19();
          starttest(v21, v22);
          OUTLINED_FUNCTION_40_19();
          bspush_ca_boa();
          v23 = OUTLINED_FUNCTION_26_30();
          v25 = lpta_loadp_setscan_r(v23, v24);
          goto LABEL_17;
        case 2:
        case 4:
        case 10:
          bspop_boa(v1);
          goto LABEL_25;
        case 3:
          starttest(v1, 9);
          bspush_ca_boa();
          v29 = OUTLINED_FUNCTION_26_30();
          v31 = legal_initial_consonants(v29, v30);
          goto LABEL_21;
        case 5:
          goto LABEL_18;
        case 6:
          v25 = advance_tok(v1);
LABEL_17:
          v16 = v20;
          if (v25)
          {
            continue;
          }

LABEL_18:
          bspush_ca_scan(v1, 6);
          bspush_ca_scan(v1, 7);
          v26 = OUTLINED_FUNCTION_11_39();
          v28 = 1;
LABEL_19:
          v32 = testFldeq(v26, v27, 4, v28);
          v16 = v20;
          if (!v32)
          {
LABEL_20:
            v31 = advance_tok(v1);
LABEL_21:
            if (v31)
            {
              v16 = v20;
            }

            else
            {
              v16 = 1;
            }
          }

          break;
        case 7:
          v26 = OUTLINED_FUNCTION_11_39();
          v28 = 3;
          goto LABEL_19;
        case 8:
          goto LABEL_20;
        default:
          goto LABEL_25;
      }
    }
  }

LABEL_25:
  vretproc(v1);
  v33 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_44_18();
}

uint64_t legal_initial_consonants(uint64_t a1, __int16 *a2)
{
  v96 = *MEMORY[0x277D85DE8];
  v91[0] = 0;
  v91[1] = 0;
  v90[0] = 0;
  v90[1] = 0;
  OUTLINED_FUNCTION_23_32();
  bzero(v89, v4);
  OUTLINED_FUNCTION_22_32();
  bzero(v95, v5);
  if (setjmp(v95) || ventproc(a1, v89, v94, v93, v92, v95))
  {
LABEL_3:
    v6 = 94;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_41_19();
    get_parm(v10, v11, a2, -6);
    v12 = push_ptr_init(a1, v90);
    OUTLINED_FUNCTION_35_24(v12, v13, &null_str_11);
    fence_43(a1, 1, &_MergedGlobals_36);
    starttest(a1, 1);
    v14 = OUTLINED_FUNCTION_41_19();
    if (!lpta_loadp_setscan_r(v14, v15))
    {
      while (2)
      {
        while (1)
        {
          v16 = OUTLINED_FUNCTION_2_43();
          if (testFldeq(v16, v17, v18, 2) || advance_tok(a1))
          {
            break;
          }

          v81 = OUTLINED_FUNCTION_39_20();
          bspush_ca_scan(v81, v82);
        }

LABEL_9:
        v19 = *(a1 + 104);
        if (v19)
        {
          v20 = OUTLINED_FUNCTION_25_30(v19);
        }

        else
        {
          v20 = vback(a1, 0);
        }

        v21 = v20 - 1;
        v6 = 0;
        switch(v21)
        {
          case 0:
            goto LABEL_4;
          case 1:
            savescptr(a1, 2, v90);
            v22 = OUTLINED_FUNCTION_13_39();
            if (lpta_loadp_setscan_r(v22, v23))
            {
              goto LABEL_16;
            }

            if (advance_tok(a1))
            {
              goto LABEL_16;
            }

            OUTLINED_FUNCTION_43_18();
            v24 = OUTLINED_FUNCTION_8_40();
            v6 = test_ptr(v24);
            if (v6)
            {
              goto LABEL_16;
            }

            goto LABEL_4;
          case 2:
            continue;
          case 3:
LABEL_16:
            v25 = OUTLINED_FUNCTION_10_39();
            starttest(v25, v26);
            v27 = OUTLINED_FUNCTION_13_39();
            if (lpta_loadp_setscan_r(v27, v28))
            {
              goto LABEL_18;
            }

            OUTLINED_FUNCTION_0_44();
            if (test_string_s())
            {
              goto LABEL_18;
            }

            goto LABEL_56;
          case 4:
LABEL_18:
            v29 = OUTLINED_FUNCTION_10_39();
            starttest(v29, v30);
            v31 = OUTLINED_FUNCTION_13_39();
            if (lpta_loadp_setscan_r(v31, v32))
            {
              goto LABEL_19;
            }

            OUTLINED_FUNCTION_10_39();
            bspush_ca_scan_boa();
            goto LABEL_52;
          case 5:
          case 7:
          case 8:
          case 9:
          case 10:
          case 12:
          case 18:
          case 20:
          case 21:
          case 29:
          case 36:
            goto LABEL_61;
          case 6:
          case 13:
          case 19:
          case 25:
          case 30:
          case 37:
          case 48:
          case 52:
            goto LABEL_63;
          case 11:
            v74 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v74, v75);
            OUTLINED_FUNCTION_0_44();
            if (test_string_s())
            {
              goto LABEL_9;
            }

            goto LABEL_61;
          case 14:
          case 22:
          case 24:
          case 31:
          case 38:
          case 49:
          case 51:
            goto LABEL_62;
          case 15:
LABEL_19:
            v33 = OUTLINED_FUNCTION_10_39();
            starttest(v33, v34);
            v35 = OUTLINED_FUNCTION_13_39();
            if (lpta_loadp_setscan_r(v35, v36))
            {
              goto LABEL_21;
            }

            OUTLINED_FUNCTION_0_44();
            if (test_string_s())
            {
              goto LABEL_21;
            }

            goto LABEL_56;
          case 16:
LABEL_52:
            OUTLINED_FUNCTION_0_44();
            if (!test_string_s())
            {
              goto LABEL_55;
            }

            goto LABEL_9;
          case 17:
          case 28:
          case 34:
            goto LABEL_55;
          case 23:
LABEL_21:
            v37 = OUTLINED_FUNCTION_10_39();
            starttest(v37, v38);
            v39 = OUTLINED_FUNCTION_13_39();
            if (lpta_loadp_setscan_r(v39, v40))
            {
              goto LABEL_22;
            }

            OUTLINED_FUNCTION_10_39();
            bspush_ca_scan_boa();
            goto LABEL_45;
          case 26:
LABEL_22:
            v41 = OUTLINED_FUNCTION_10_39();
            starttest(v41, v42);
            v43 = OUTLINED_FUNCTION_13_39();
            if (lpta_loadp_setscan_r(v43, v44))
            {
              goto LABEL_23;
            }

            OUTLINED_FUNCTION_10_39();
            bspush_ca_scan_boa();
            goto LABEL_54;
          case 27:
LABEL_45:
            OUTLINED_FUNCTION_0_44();
            if (!test_string_s())
            {
              goto LABEL_55;
            }

            goto LABEL_9;
          case 32:
LABEL_23:
            v45 = OUTLINED_FUNCTION_10_39();
            starttest(v45, v46);
            v47 = OUTLINED_FUNCTION_13_39();
            if (lpta_loadp_setscan_r(v47, v48))
            {
              goto LABEL_24;
            }

            bspush_boa(a1);
            OUTLINED_FUNCTION_0_44();
            if (!test_string_s())
            {
              goto LABEL_57;
            }

            goto LABEL_9;
          case 33:
            v72 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v72, v73);
            goto LABEL_54;
          case 35:
LABEL_54:
            OUTLINED_FUNCTION_0_44();
            if (test_string_s())
            {
              goto LABEL_9;
            }

LABEL_55:
            bspush_nboa(a1);
            goto LABEL_56;
          case 39:
LABEL_24:
            v49 = OUTLINED_FUNCTION_10_39();
            starttest(v49, v50);
            v51 = OUTLINED_FUNCTION_13_39();
            if (lpta_loadp_setscan_r(v51, v52))
            {
              goto LABEL_25;
            }

            OUTLINED_FUNCTION_10_39();
            bspush_ca_scan_boa();
            OUTLINED_FUNCTION_0_44();
            if (!test_string_s())
            {
              goto LABEL_42;
            }

            goto LABEL_9;
          case 40:
          case 42:
LABEL_57:
            v76 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v76, v77);
            goto LABEL_58;
          case 41:
            goto LABEL_59;
          case 43:
LABEL_58:
            OUTLINED_FUNCTION_0_44();
            if (test_string_s())
            {
              goto LABEL_9;
            }

LABEL_59:
            OUTLINED_FUNCTION_9_40();
            if (test_string_s())
            {
              goto LABEL_9;
            }

            bspush_nboa(a1);
            *(a1 + 136) = v91;
            goto LABEL_65;
          case 44:
LABEL_25:
            v53 = OUTLINED_FUNCTION_10_39();
            starttest(v53, v54);
            v55 = OUTLINED_FUNCTION_13_39();
            if (lpta_loadp_setscan_r(v55, v56))
            {
              goto LABEL_27;
            }

            OUTLINED_FUNCTION_0_44();
            if (test_string_s())
            {
              goto LABEL_27;
            }

LABEL_56:
            OUTLINED_FUNCTION_10_39();
            bspush_ca_scan_boa();
            goto LABEL_62;
          case 45:
LABEL_42:
            bspush_nboa(a1);
            v70 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v70, v71);
            OUTLINED_FUNCTION_0_44();
            goto LABEL_48;
          case 46:
            OUTLINED_FUNCTION_1_43();
LABEL_48:
            if (!test_string_s())
            {
              goto LABEL_49;
            }

            goto LABEL_9;
          case 47:
LABEL_49:
            OUTLINED_FUNCTION_10_39();
            bspush_ca_scan_boa();
LABEL_61:
            v78 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v78, v79);
LABEL_62:
            OUTLINED_FUNCTION_0_44();
            if (test_string_s())
            {
              goto LABEL_9;
            }

LABEL_63:
            bspush_nboa(a1);
            goto LABEL_64;
          case 50:
LABEL_27:
            v57 = OUTLINED_FUNCTION_13_39();
            if (lpta_loadp_setscan_r(v57, v58))
            {
              goto LABEL_30;
            }

            OUTLINED_FUNCTION_9_40();
            if (test_string_s())
            {
              goto LABEL_30;
            }

            *(a1 + 136) = v91;
            v59 = OUTLINED_FUNCTION_8_40();
            v6 = test_ptr(v59);
            if (v6)
            {
              goto LABEL_30;
            }

            goto LABEL_4;
          case 53:
LABEL_30:
            v60 = OUTLINED_FUNCTION_10_39();
            starttest(v60, v61);
            v62 = OUTLINED_FUNCTION_13_39();
            if (lpta_loadp_setscan_r(v62, v63))
            {
              goto LABEL_32;
            }

            OUTLINED_FUNCTION_1_43();
            if (test_string_s())
            {
              goto LABEL_32;
            }

            goto LABEL_34;
          case 54:
LABEL_32:
            v64 = OUTLINED_FUNCTION_10_39();
            starttest(v64, v65);
            v66 = OUTLINED_FUNCTION_13_39();
            if (lpta_loadp_setscan_r(v66, v67))
            {
              goto LABEL_72;
            }

            OUTLINED_FUNCTION_1_43();
            if (test_string_s())
            {
              goto LABEL_72;
            }

LABEL_34:
            v68 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v68, v69);
LABEL_35:
            OUTLINED_FUNCTION_0_44();
            if (test_string_s())
            {
              goto LABEL_9;
            }

LABEL_64:
            OUTLINED_FUNCTION_43_18();
LABEL_65:
            v80 = OUTLINED_FUNCTION_8_40();
            v6 = test_ptr(v80);
            if (!v6)
            {
              goto LABEL_4;
            }

            goto LABEL_9;
          case 55:
          case 58:
            goto LABEL_35;
          case 56:
          case 59:
            goto LABEL_64;
          case 57:
LABEL_72:
            v83 = OUTLINED_FUNCTION_13_39();
            if (lpta_loadp_setscan_r(v83, v84))
            {
              goto LABEL_75;
            }

            if (OUTLINED_FUNCTION_46_17())
            {
              goto LABEL_75;
            }

            *(a1 + 136) = 2;
            v85 = OUTLINED_FUNCTION_8_40();
            v6 = test_ptr(v85);
            if (v6)
            {
              goto LABEL_75;
            }

            goto LABEL_4;
          case 60:
LABEL_75:
            v86 = OUTLINED_FUNCTION_13_39();
            if (!lpta_loadp_setscan_r(v86, v87) && !OUTLINED_FUNCTION_46_17())
            {
              *(a1 + 136) = 2;
              v88 = OUTLINED_FUNCTION_8_40();
              v6 = test_ptr(v88);
              if (!v6)
              {
                goto LABEL_4;
              }
            }

            goto LABEL_3;
          default:
            goto LABEL_3;
        }
      }
    }

    v6 = 0;
  }

LABEL_4:
  v7 = v6;
  vretproc(a1);
  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t insert_prefix(uint64_t a1, uint64_t a2, __int16 *a3, __int16 *a4)
{
  v37 = *MEMORY[0x277D85DE8];
  v31 = 0;
  v32 = 0;
  v29 = 0;
  v30 = 0;
  v28 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  OUTLINED_FUNCTION_23_32();
  bzero(v24, v8);
  OUTLINED_FUNCTION_22_32();
  bzero(v36, v9);
  if (!setjmp(v36) && !ventproc(a1, v24, v35, v34, v33, v36))
  {
    v13 = OUTLINED_FUNCTION_40_19();
    get_parm(v13, v14, a2, -6);
    v15 = OUTLINED_FUNCTION_26_30();
    get_parm(v15, v16, a3, -6);
    get_parm(a1, &v28, a4, -4);
    LOWORD(v27) = 0;
    BYTE2(v27) = 0;
    LODWORD(v25) = -65533;
    OUTLINED_FUNCTION_35_24(v17, v18, &null_str_11);
    v19 = OUTLINED_FUNCTION_40_19();
    lpta_rpta_loadp(v19, v20, &v29);
    OUTLINED_FUNCTION_42_19();
    settvar_s();
    insert_2ptv();
    if (v21)
    {
      v22 = *(a1 + 104);
      if (v22)
      {
        v23 = OUTLINED_FUNCTION_25_30(v22);
      }

      else
      {
        v23 = vback(a1, 0);
      }

      if (v23 != 1)
      {
        goto LABEL_3;
      }
    }

    else if (HIWORD(v28) == 1)
    {
      lpta_rpta_loadp(a1, &v31, &v29);
      mark_s();
    }

    *(a1 + 5938) = 1;
    ++*(a1 + 4026);
    v32 = v30;
    *(a2 + 8) = v30;
    v10 = 0;
    goto LABEL_4;
  }

LABEL_3:
  v10 = 94;
LABEL_4:
  vretproc(a1);
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

void strip_inner_prefix()
{
  OUTLINED_FUNCTION_45_17();
  v1 = v0;
  v74 = *MEMORY[0x277D85DE8];
  v69[0] = 0;
  v69[1] = 0;
  OUTLINED_FUNCTION_23_32();
  bzero(v68, v2);
  OUTLINED_FUNCTION_22_32();
  bzero(v73, v3);
  if (setjmp(v73))
  {
    goto LABEL_3;
  }

  if (ventproc(v1, v68, v72, v71, v70, v73))
  {
    goto LABEL_3;
  }

  push_ptr_init(v1, v69);
  fence_43(v1, 0, &null_str_11);
  v5 = OUTLINED_FUNCTION_11_39();
  fence_43(v5, v6, v7);
  OUTLINED_FUNCTION_4_41();
  has_lex_prefix();
  if (!v8)
  {
    goto LABEL_3;
  }

  v9 = 0;
  while (2)
  {
    starttest(v1, 3);
    v10 = OUTLINED_FUNCTION_15_38();
    if (!lpta_loadp_setscan_l(v10, v11))
    {
      if (!testFldeq(v1, 3u, 1, 5))
      {
        v24 = advance_tok(v1);
        v22 = v9;
        if (!v24)
        {
          goto LABEL_3;
        }

        goto LABEL_17;
      }

LABEL_38:
      v22 = v9;
      goto LABEL_17;
    }

LABEL_7:
    v12 = OUTLINED_FUNCTION_13_39();
    if (!lpta_loadp_setscan_r(v12, v13))
    {
      OUTLINED_FUNCTION_0_44();
      v14 = test_string_s();
      v15 = v9;
      if (!v14)
      {
LABEL_33:
        v9 = v15;
        v43 = OUTLINED_FUNCTION_39_20();
        savescptr(v43, v44, v69);
        v45 = OUTLINED_FUNCTION_4_41();
        lpta_rpta_loadp(v45, v46, v47);
        v48 = OUTLINED_FUNCTION_11_39();
        if (!setd_lookup(v48, v49, 355))
        {
LABEL_42:
          v60 = OUTLINED_FUNCTION_15_38();
          lex_prefixes(v60, v61, v62, v63, v64, v65, v66, v67);
          goto LABEL_3;
        }

LABEL_34:
        starttest(v1, 8);
        bspush_ca_boa();
        v50 = OUTLINED_FUNCTION_26_30();
        if (!lpta_loadp_setscan_r(v50, v51))
        {
          v52 = OUTLINED_FUNCTION_2_43();
          if (!testFldeq(v52, v53, v54, 2) && !advance_tok(v1) && !advance_tok(v1))
          {
            v20 = advance_tok(v1);
LABEL_29:
            if (v20)
            {
              v22 = v9;
            }

            else
            {
              v22 = 1;
            }

            goto LABEL_17;
          }
        }

        goto LABEL_38;
      }
    }

LABEL_9:
    starttest(v1, 14);
    v16 = OUTLINED_FUNCTION_13_39();
    if (!lpta_loadp_setscan_r(v16, v17))
    {
      bspush_ca_scan(v1, 15);
      OUTLINED_FUNCTION_1_43();
      v21 = test_string_s();
      v22 = v9;
      v23 = v9;
      if (!v21)
      {
LABEL_25:
        v9 = v23;
        savescptr(v1, 16, v69);
        starttest_l(v1, 18);
        bspush_ca_boa();
        v29 = OUTLINED_FUNCTION_4_41();
        lpta_rpta_loadp(v29, v30, v31);
        v32 = OUTLINED_FUNCTION_11_39();
        v20 = setd_lookup(v32, v33, 357);
        goto LABEL_29;
      }

LABEL_17:
      v25 = v1[13];
      if (v25)
      {
        v26 = OUTLINED_FUNCTION_19_35(v25);
      }

      else
      {
        v26 = vback(v1, v22);
        v9 = 0;
      }

      v23 = v9;
      switch(v26)
      {
        case 1:
          continue;
        case 2:
        case 7:
        case 18:
        case 24:
          goto LABEL_42;
        case 3:
          goto LABEL_7;
        case 4:
          goto LABEL_9;
        case 5:
          v15 = v9;
          goto LABEL_33;
        case 6:
          goto LABEL_34;
        case 8:
          v34 = OUTLINED_FUNCTION_4_41();
          lpta_rpta_loadp(v34, v35, v36);
          v37 = OUTLINED_FUNCTION_11_39();
          if (setd_lookup(v37, v38, 356))
          {
            goto LABEL_27;
          }

          goto LABEL_3;
        case 9:
        case 12:
        case 13:
        case 19:
        case 23:
          bspop_boa(v1);
          goto LABEL_3;
        case 10:
LABEL_27:
          v39 = OUTLINED_FUNCTION_42_19();
          starttest(v39, v40);
          OUTLINED_FUNCTION_40_19();
          bspush_ca_boa();
          v41 = OUTLINED_FUNCTION_26_30();
          v20 = legal_initial_consonants(v41, v42);
          goto LABEL_29;
        case 11:
          starttest(v1, 7);
          bspush_ca_boa();
          OUTLINED_FUNCTION_26_30();
          v20 = one_eng_syllable();
          goto LABEL_29;
        case 14:
          goto LABEL_10;
        case 15:
          OUTLINED_FUNCTION_0_44();
          v27 = test_string_s();
          v22 = v9;
          if (v27)
          {
            goto LABEL_17;
          }

          bspush_ca_scan(v1, 17);
          OUTLINED_FUNCTION_0_44();
          goto LABEL_24;
        case 16:
          goto LABEL_25;
        case 17:
          OUTLINED_FUNCTION_0_44();
LABEL_24:
          v28 = test_string_s();
          v23 = v9;
          v22 = v9;
          if (!v28)
          {
            goto LABEL_25;
          }

          goto LABEL_17;
        case 21:
          goto LABEL_12;
        case 22:
          v55 = OUTLINED_FUNCTION_4_41();
          lpta_rpta_loadp(v55, v56, v57);
          v58 = OUTLINED_FUNCTION_11_39();
          if (setd_lookup(v58, v59, 358))
          {
            goto LABEL_42;
          }

          goto LABEL_3;
        default:
          goto LABEL_3;
      }
    }

    break;
  }

LABEL_10:
  v18 = OUTLINED_FUNCTION_13_39();
  if (!lpta_loadp_setscan_r(v18, v19))
  {
    OUTLINED_FUNCTION_11_39();
    if (!test_string_s())
    {
LABEL_12:
      savescptr(v1, 21, v69);
      starttest(v1, 22);
      bspush_ca_boa();
      OUTLINED_FUNCTION_26_30();
      potential_prefix();
      goto LABEL_29;
    }
  }

LABEL_3:
  vretproc(v1);
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_44_18();
}

void has_lex_prefix()
{
  OUTLINED_FUNCTION_45_17();
  v1 = v0;
  v3 = v2;
  v33 = *MEMORY[0x277D85DE8];
  v28[0] = 0;
  v28[1] = 0;
  v27[0] = 0;
  v27[1] = 0;
  OUTLINED_FUNCTION_23_32();
  bzero(v26, v4);
  OUTLINED_FUNCTION_22_32();
  bzero(v32, v5);
  if (!setjmp(v32) && !ventproc(v3, v26, v31, v30, v29, v32))
  {
    get_parm(v3, v28, v1, -6);
    v7 = OUTLINED_FUNCTION_14_39();
    get_parm(v7, v8, v9, -6);
    fence_43(v3, 0, &null_str_11);
    if (*(v3 + 5942) != 1)
    {
      v10 = 0;
      while (2)
      {
        v11 = OUTLINED_FUNCTION_7_40();
        if (lpta_loadp_setscan_r(v11, v12) || (OUTLINED_FUNCTION_1_43(), test_string_s()))
        {
          v13 = v10;
LABEL_17:
          v10 = v13;
          v24 = OUTLINED_FUNCTION_26_30();
          starttest(v24, v25);
        }

        else
        {
          v14 = OUTLINED_FUNCTION_42_19();
          starttest_l(v14, v15);
        }

        bspush_ca_boa();
        v16 = OUTLINED_FUNCTION_17_36();
        lpta_rpta_loadp(v16, v17, v27);
        v18 = OUTLINED_FUNCTION_11_39();
        if (setd_lookup(v18, v19, v20))
        {
          v21 = v10;
        }

        else
        {
          v21 = 1;
        }

        v22 = *(v3 + 104);
        if (v22)
        {
          *(v3 + 104) = 0;
          v23 = v22;
          v13 = v21;
        }

        else
        {
          v23 = vback(v3, v21);
          v13 = 0;
        }

        v10 = v13;
        switch(v23)
        {
          case 1:
            continue;
          case 2:
            goto LABEL_17;
          case 3:
          case 5:
            *(v3 + 5942) = 1;
            break;
          case 4:
          case 6:
            bspop_boa(v3);
            break;
          default:
            goto LABEL_3;
        }

        break;
      }
    }
  }

LABEL_3:
  vretproc(v3);
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_44_18();
}

void OUTLINED_FUNCTION_6_40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, int a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  a39 = 0;
  a40 = 0;
  a37 = 0;
  a38 = 0;
  a35 = 0;
  a36 = 0;
  a34 = 0;

  bzero(&a10, 0xB8uLL);
}

uint64_t OUTLINED_FUNCTION_8_40()
{
  *(v1 + 112) = v0;
  *(v1 + 128) = 0;
  return v1;
}

double OUTLINED_FUNCTION_12_39@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{

  *&result = savescptr(v27, a1, &a27).n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_28_28()
{

  return lpta_rpta_loadp(v0, v0 + 1320, v0 + 1336);
}

double OUTLINED_FUNCTION_29_28@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{

  *&result = savescptr(v37, a1, &a37).n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_32_26()
{

  return rpta_loadpn(v0, v0 + 3536);
}

void *OUTLINED_FUNCTION_35_24(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return fence_43(v3, 0, a3);
}

double OUTLINED_FUNCTION_38_20@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{

  *&result = savescptr(v29, a1, &a29).n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_46_17()
{

  return test_string_s();
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

uint64_t strip_eng_clitics()
{
  OUTLINED_FUNCTION_61_15();
  v55 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7_41(v2, v3, v4, v5, v6, v7, v8, v9, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v52, v53);
  OUTLINED_FUNCTION_30_29();
  bzero(v54, v10);
  if (!setjmp(v54))
  {
    OUTLINED_FUNCTION_37_22();
    if (!ventproc(v0, v11, v12, v13, v14, v54))
    {
      v17 = OUTLINED_FUNCTION_34_26();
      get_parm(v17, v18, v19, -6);
      v20 = OUTLINED_FUNCTION_44_19();
      OUTLINED_FUNCTION_86_10(v20, v21);
      v22 = OUTLINED_FUNCTION_69_12();
      OUTLINED_FUNCTION_92_9(v22, v23);
      fence_44(v0, 0, &null_str_12);
      OUTLINED_FUNCTION_34_26();
      if (strip_possessive())
      {
        strip_contractions();
      }

      *(v1 + 8) = v51;
    }
  }

  vretproc(v0);
  v15 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_100_7();
}

uint64_t strip_possessive()
{
  OUTLINED_FUNCTION_61_15();
  v49 = *MEMORY[0x277D85DE8];
  v46 = 0;
  v47 = 0;
  v44 = 0;
  v45 = 0;
  v42 = 0;
  v43 = 0;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  OUTLINED_FUNCTION_31_29();
  bzero(v38, v3);
  OUTLINED_FUNCTION_30_29();
  bzero(v48, v4);
  if (setjmp(v48))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_85_11();
  if (ventproc(v0, v5, v6, v7, v8, v48))
  {
    goto LABEL_3;
  }

  v11 = OUTLINED_FUNCTION_74_11();
  get_parm(v11, v12, v2, -6);
  v13 = OUTLINED_FUNCTION_36_23();
  get_parm(v13, v14, v15, -6);
  v16 = OUTLINED_FUNCTION_44_19();
  OUTLINED_FUNCTION_92_9(v16, v17);
  OUTLINED_FUNCTION_89_10();
  fence_44(v0, v18, &null_str_12);
  v19 = OUTLINED_FUNCTION_25_31();
  fence_44(v19, v20, v21);
  OUTLINED_FUNCTION_93_8();
  v22 = OUTLINED_FUNCTION_44_19();
  if (lpta_loadp_setscan_l(v22, v23) || (OUTLINED_FUNCTION_5_42(), test_string_s()))
  {
LABEL_12:
    v30 = OUTLINED_FUNCTION_21_33();
    starttest(v30, v31);
    v32 = OUTLINED_FUNCTION_23_33();
    if (lpta_loadp_setscan_l(v32, v33))
    {
      goto LABEL_3;
    }

    OUTLINED_FUNCTION_2_44();
    if (test_string_s())
    {
      goto LABEL_3;
    }

LABEL_14:
    OUTLINED_FUNCTION_60_15(5, v37, v38[0], v38[1], v38[2], v38[3], v38[4], v38[5], v38[6], v38[7], v38[8], v38[9], v38[10], v38[11], v38[12], v38[13], v38[14], v38[15], v38[16], v38[17], v38[18], v38[19], v38[20], v38[21], v38[22], v39, v40, v41, v42, v43, v44);
    OUTLINED_FUNCTION_2_44();
    if (test_string_s())
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

  while (2)
  {
    OUTLINED_FUNCTION_47_17();
    savescptr(v0, v24, &v44);
    v25 = OUTLINED_FUNCTION_6_41();
    if (!testFldeq(v25, v26, v27, 1) && !advance_tok(v0))
    {
LABEL_15:
      lpta_rpta_loadp(v0, &v44, &v42);
      if (!insert_2pt_s(v0, 2u, 1, &unk_280581184, 0))
      {
        lpta_rpta_loadp(v0, &v44, &v42);
        OUTLINED_FUNCTION_44_19();
        settvar_s();
        npush_s(v0);
        WORD1(v39) = 1;
        v34 = OUTLINED_FUNCTION_44_19();
        npop(v34, v35);
        insert_2ptv();
        if (!v36)
        {
          *(v1 + 8) = v45;
          break;
        }
      }
    }

LABEL_8:
    v28 = v0[13];
    if (v28)
    {
      v29 = OUTLINED_FUNCTION_38_21(v28);
    }

    else
    {
      v29 = OUTLINED_FUNCTION_96_8();
    }

    switch(v29)
    {
      case 1:
        goto LABEL_12;
      case 2:
        continue;
      case 3:
        goto LABEL_15;
      case 5:
        goto LABEL_14;
      default:
        goto LABEL_3;
    }
  }

LABEL_3:
  OUTLINED_FUNCTION_94_8();
  v9 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_101_7();
}

void strip_contractions()
{
  OUTLINED_FUNCTION_66_14();
  OUTLINED_FUNCTION_61_15();
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_82_11();
  v58 = 0;
  v59 = 0;
  v56 = 0;
  v57 = 0;
  OUTLINED_FUNCTION_31_29();
  bzero(v55, v4);
  OUTLINED_FUNCTION_30_29();
  bzero(v73, v5);
  v6 = setjmp(v73);
  if (!v6 && !OUTLINED_FUNCTION_57_15(v6, v55, v7, v8, v9, v10, v11, v12, v49, v50, v51, v52, v53, v55[0], v55[1], v55[2], v55[3], v55[4], v55[5], v55[6], v55[7], v55[8], v55[9], v55[10], v55[11], v55[12], v55[13], v55[14], v55[15], v55[16], v55[17], v55[18], v55[19], v55[20], v55[21], v55[22], v56, v57, v58, v59, v60, v61, v62[0], v62[1], v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73[0]))
  {
    v14 = OUTLINED_FUNCTION_73_11();
    get_parm(v14, v15, v2, -6);
    v16 = OUTLINED_FUNCTION_72_11();
    v54 = v1;
    OUTLINED_FUNCTION_86_10(v16, v17);
    v18 = OUTLINED_FUNCTION_98_8();
    OUTLINED_FUNCTION_92_9(v18, v19);
    v20 = OUTLINED_FUNCTION_87_10();
    v22 = push_ptr_init(v20, v21);
    OUTLINED_FUNCTION_71_12(v22, v23, &null_str_12);
    startloop(v0, 1);
    v24 = 0;
    v25 = 0;
    OUTLINED_FUNCTION_97_8();
    while (1)
    {
LABEL_6:
      bspush_ca(v0);
      if (v25 > 1 || lpta_loadp_setscan_l(v0, &v60))
      {
        v26 = v54;
      }

      else
      {
        v27 = OUTLINED_FUNCTION_21_33();
        bspush_ca_scan(v27, v28);
        v29 = test_string_s();
        v30 = v24;
        v26 = v54;
        if (!v29)
        {
LABEL_23:
          v24 = v30;
          OUTLINED_FUNCTION_45_18();
          v41 = test_string_s();
          v42 = v24;
          if (!v41)
          {
LABEL_29:
            v24 = v42;
            v43 = OUTLINED_FUNCTION_78_11();
            savescptr(v43, v44, &v56);
            if (!testFldeq(v0, 1u, 3, 1) && !advance_tok(v0))
            {
              OUTLINED_FUNCTION_102_7();
              bspush_ca_boa();
              v45 = lpta_loadp_setscan_r(v0, v62);
              v46 = v24;
              if (!v45)
              {
LABEL_34:
                v24 = v46;
                while (!testFldeq(v0, 1u, 0, 16) && !advance_tok(v0))
                {
                  v47 = OUTLINED_FUNCTION_64_14();
                  bspush_ca_scan(v47, v48);
                }
              }
            }
          }
        }
      }

      v31 = v24;
      while (2)
      {
        v24 = v31;
        v32 = *(v0 + 104);
        if (v32)
        {
          v33 = OUTLINED_FUNCTION_38_21(v32);
        }

        else
        {
          v33 = OUTLINED_FUNCTION_106_7();
          v24 = 0;
        }

        v30 = v24;
        switch(v33)
        {
          case 1:
            *(v26 + 8) = v61;
            vretproc(v0);
            goto LABEL_4;
          case 2:
            goto LABEL_26;
          case 3:
            v34 = OUTLINED_FUNCTION_40_20();
            bspush_ca_scan(v34, v35);
            OUTLINED_FUNCTION_45_18();
            goto LABEL_22;
          case 4:
            goto LABEL_23;
          case 5:
            OUTLINED_FUNCTION_45_18();
            v37 = test_string_s();
            v31 = v24;
            if (v37)
            {
              continue;
            }

            v38 = OUTLINED_FUNCTION_77_11();
            bspush_ca_scan(v38, v39);
            OUTLINED_FUNCTION_45_18();
            goto LABEL_22;
          case 6:
            OUTLINED_FUNCTION_45_18();
LABEL_22:
            v40 = test_string_s();
            v30 = v24;
            v31 = v24;
            if (!v40)
            {
              goto LABEL_23;
            }

            continue;
          case 7:
            v42 = v24;
            goto LABEL_29;
          case 8:
            bspop_boa(v0);
LABEL_26:
            clitics(v0, &v56, &v60, v62, &v58);
            goto LABEL_27;
          case 9:
            *(v0 + 136) = 1;
            v36 = OUTLINED_FUNCTION_26_31();
            if (test_ptr(v36))
            {
              v31 = v24;
            }

            else
            {
              v31 = 1;
            }

            continue;
          case 10:
            v46 = v24;
            goto LABEL_34;
          case 11:
LABEL_27:
            ++v25;
            v61 = v57;
            while_iterate(v0, 1, 2);
            break;
          case 12:
            goto LABEL_6;
          default:
            goto LABEL_3;
        }

        break;
      }
    }
  }

LABEL_3:
  vretproc(v0);
LABEL_4:
  v13 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_65_14();
}

void strip_s()
{
  OUTLINED_FUNCTION_66_14();
  v1 = v0;
  v270 = *MEMORY[0x277D85DE8];
  v265 = 0;
  v263 = 0;
  v264 = 0;
  v262[0] = 0;
  v262[1] = 0;
  v260 = 0;
  v261 = 0;
  v258 = 0;
  v259 = 0;
  v256 = 0;
  v257 = 0;
  v254 = 0;
  v255 = 0;
  v252 = 0;
  v253 = 0;
  v250 = 0;
  v251 = 0;
  v247 = 0;
  v248 = 0;
  v249 = 0;
  OUTLINED_FUNCTION_31_29();
  bzero(&v224, v2);
  OUTLINED_FUNCTION_30_29();
  bzero(v269, v3);
  if (setjmp(v269))
  {
    goto LABEL_5;
  }

  if (ventproc(v1, &v224, v268, v267, v266, v269))
  {
    goto LABEL_5;
  }

  v265 = 65532;
  push_ptr_init(v1, &v263);
  push_ptr_init(v1, v262);
  push_ptr_init(v1, &v260);
  push_ptr_init(v1, &v258);
  v4 = OUTLINED_FUNCTION_59_15();
  push_ptr_init(v4, v5);
  v6 = OUTLINED_FUNCTION_74_11();
  push_ptr_init(v6, v7);
  v8 = OUTLINED_FUNCTION_53_16();
  push_ptr_init(v8, v9);
  v10 = OUTLINED_FUNCTION_42_20();
  push_ptr_init(v10, v11);
  OUTLINED_FUNCTION_89_10();
  fence_44(v1, v12, &null_str_12);
  v13 = OUTLINED_FUNCTION_13_40();
  fence_44(v13, v14, v15);
  v16 = OUTLINED_FUNCTION_91_9();
  starttest(v16, v17);
  v18 = OUTLINED_FUNCTION_24_31();
  if (lpta_loadp_setscan_l(v18, v19))
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_2_44();
  if (test_string_s())
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_99_7();
  v21 = 0;
  while (2)
  {
    v22 = OUTLINED_FUNCTION_35_25();
    savescptr(v22, v23, &v263);
    OUTLINED_FUNCTION_44_19();
    bspush_ca_scan_boa();
    OUTLINED_FUNCTION_2_44();
    v24 = test_string_s();
LABEL_8:
    if (v24)
    {
      v25 = v21;
    }

    else
    {
      v25 = 1;
    }

LABEL_11:
    v26 = *(v1 + 104);
    if (v26)
    {
      v27 = OUTLINED_FUNCTION_38_21(v26);
      v21 = v28;
    }

    else
    {
      v27 = vback(v1, v25);
      v21 = 0;
    }

    switch(v27)
    {
      case 2:
        continue;
      case 3:
        bspop_boa(v1);
        goto LABEL_16;
      case 4:
LABEL_16:
        v29 = OUTLINED_FUNCTION_21_33();
        starttest(v29, v30);
        OUTLINED_FUNCTION_21_33();
        bspush_ca_boa();
        *(v1 + 136) = 1;
        v31 = OUTLINED_FUNCTION_26_31();
        setscan_nof_l(v31);
        v25 = v21;
        if (v32)
        {
          goto LABEL_11;
        }

        v33 = advance_tok(v1);
        v25 = v21;
        if (v33)
        {
          goto LABEL_11;
        }

        v24 = advance_tok(v1);
        goto LABEL_8;
      case 5:
        v45 = OUTLINED_FUNCTION_21_33();
        starttest(v45, v46);
        if (OUTLINED_FUNCTION_76_11())
        {
          goto LABEL_25;
        }

        v198 = OUTLINED_FUNCTION_55_16();
        v200 = testFldeq(v198, v199, 6, 1);
        v25 = v21;
        if (v200)
        {
          goto LABEL_11;
        }

        v44 = advance_tok(v1);
        goto LABEL_93;
      case 6:
      case 64:
      case 74:
        bspop_boa(v1);
        goto LABEL_5;
      case 7:
      case 10:
      case 22:
      case 31:
      case 34:
      case 40:
      case 43:
      case 60:
      case 65:
      case 68:
        goto LABEL_103;
      case 8:
LABEL_25:
        v47 = OUTLINED_FUNCTION_16_39();
        starttest(v47, v48);
        if (OUTLINED_FUNCTION_76_11())
        {
          goto LABEL_26;
        }

        v176 = OUTLINED_FUNCTION_55_16();
        v178 = testFldeq(v176, v177, 6, 2);
        v25 = v21;
        if (v178)
        {
          goto LABEL_11;
        }

        v179 = advance_tok(v1);
        v25 = v21;
        if (v179)
        {
          goto LABEL_11;
        }

        v180 = OUTLINED_FUNCTION_17_37();
        starttest_e(v180, v181);
        v182 = OUTLINED_FUNCTION_23_33();
        if (!lpta_loadp_setscan_l(v182, v183))
        {
          OUTLINED_FUNCTION_2_44();
          if (!test_string_s())
          {
LABEL_102:
            savescptr(v1, 11, &v263);
          }
        }

        goto LABEL_103;
      case 9:
LABEL_26:
        v49 = OUTLINED_FUNCTION_21_33();
        starttest(v49, v50);
        if (OUTLINED_FUNCTION_76_11())
        {
          goto LABEL_27;
        }

        v172 = OUTLINED_FUNCTION_55_16();
        v174 = testFldeq(v172, v173, 4, 2);
        v25 = v21;
        if (!v174)
        {
          v175 = advance_tok(v1);
          v25 = v21;
          if (!v175)
          {
            goto LABEL_5;
          }
        }

        goto LABEL_11;
      case 11:
        goto LABEL_102;
      case 12:
LABEL_27:
        v51 = OUTLINED_FUNCTION_9_41();
        lpta_rpta_loadp(v51, v52, v53);
        v54 = OUTLINED_FUNCTION_22_33();
        if (setd_lookup(v54, v55, 368))
        {
          goto LABEL_28;
        }

        goto LABEL_5;
      case 13:
LABEL_28:
        v56 = OUTLINED_FUNCTION_21_33();
        starttest(v56, v57);
        v58 = OUTLINED_FUNCTION_23_33();
        if (lpta_loadp_setscan_l(v58, v59))
        {
          goto LABEL_30;
        }

        OUTLINED_FUNCTION_2_44();
        if (test_string_s())
        {
          goto LABEL_30;
        }

        goto LABEL_38;
      case 14:
LABEL_30:
        v60 = OUTLINED_FUNCTION_21_33();
        starttest(v60, v61);
        v62 = OUTLINED_FUNCTION_23_33();
        if (lpta_loadp_setscan_l(v62, v63))
        {
          goto LABEL_31;
        }

        goto LABEL_43;
      case 15:
LABEL_38:
        v81 = OUTLINED_FUNCTION_75_11();
        savescptr(v81, v82, v83);
        OUTLINED_FUNCTION_2_44();
        v84 = test_string_s();
        v25 = v21;
        if (!v84)
        {
          goto LABEL_39;
        }

        goto LABEL_11;
      case 16:
LABEL_39:
        OUTLINED_FUNCTION_95_8(16, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258);
        v85 = OUTLINED_FUNCTION_21_33();
        bspush_ca_scan(v85, v86);
        goto LABEL_40;
      case 17:
        savescptr(v1, 17, &v260);
        goto LABEL_58;
      case 18:
LABEL_40:
        OUTLINED_FUNCTION_80_11(18, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258, v259, v260, v261, v262[0]);
        v87 = OUTLINED_FUNCTION_21_33();
        bspush_ca_scan(v87, v88);
        goto LABEL_58;
      case 19:
LABEL_58:
        OUTLINED_FUNCTION_2_44();
        v106 = test_string_s();
        v25 = v21;
        if (!v106)
        {
          goto LABEL_59;
        }

        goto LABEL_11;
      case 20:
      case 21:
LABEL_59:
        v107 = OUTLINED_FUNCTION_21_33();
        starttest(v107, v108);
        isolate_z_root();
        goto LABEL_103;
      case 23:
LABEL_31:
        v64 = OUTLINED_FUNCTION_21_33();
        starttest(v64, v65);
        v66 = OUTLINED_FUNCTION_23_33();
        if (lpta_loadp_setscan_l(v66, v67))
        {
          goto LABEL_103;
        }

        v68 = OUTLINED_FUNCTION_21_33();
        bspush_ca_scan(v68, v69);
        goto LABEL_33;
      case 24:
LABEL_43:
        v89 = OUTLINED_FUNCTION_21_33();
        bspush_ca_scan(v89, v90);
        OUTLINED_FUNCTION_2_44();
        v91 = test_string_s();
        v25 = v21;
        if (!v91)
        {
          goto LABEL_63;
        }

        goto LABEL_11;
      case 25:
        goto LABEL_63;
      case 26:
        OUTLINED_FUNCTION_2_44();
        v109 = test_string_s();
        v25 = v21;
        if (v109)
        {
          goto LABEL_11;
        }

        goto LABEL_61;
      case 27:
LABEL_61:
        v110 = OUTLINED_FUNCTION_75_11();
        savescptr(v110, v111, v112);
        v113 = OUTLINED_FUNCTION_21_33();
        bspush_ca_scan(v113, v114);
        OUTLINED_FUNCTION_5_42();
        v115 = test_string_s();
        v25 = v21;
        if (!v115)
        {
          goto LABEL_62;
        }

        goto LABEL_11;
      case 28:
LABEL_62:
        savescptr(v1, 28, &v254);
LABEL_63:
        if (isolate_non_plural_root(v1, &v265, v1 + 1640, v1 + 1656))
        {
          goto LABEL_64;
        }

        goto LABEL_5;
      case 29:
LABEL_64:
        v116 = OUTLINED_FUNCTION_21_33();
        starttest(v116, v117);
        v118 = OUTLINED_FUNCTION_59_15();
        lpta_loadpn(v118, v119);
        OUTLINED_FUNCTION_67_14();
        if (compare_ptas(v1) || testneq(v1))
        {
          goto LABEL_103;
        }

        if (!isolate_es_root(v1, &v265, (v1 + 1640)))
        {
          goto LABEL_5;
        }

LABEL_67:
        v120 = OUTLINED_FUNCTION_21_33();
        starttest(v120, v121);
        v122 = OUTLINED_FUNCTION_74_11();
        lpta_loadpn(v122, v123);
        OUTLINED_FUNCTION_67_14();
        if (!compare_ptas(v1) && !testneq(v1))
        {
          v124 = OUTLINED_FUNCTION_41_20();
          lpta_rpta_loadp(v124, v125, v126);
          v127 = OUTLINED_FUNCTION_22_33();
          if (!setd_lookup(v127, v128, 369))
          {
            OUTLINED_FUNCTION_58_15();
            OUTLINED_FUNCTION_14_40();
            if (!mark_s())
            {
              goto LABEL_83;
            }
          }
        }

LABEL_71:
        v129 = OUTLINED_FUNCTION_21_33();
        starttest(v129, v130);
        v131 = OUTLINED_FUNCTION_41_20();
        lpta_rpta_loadp(v131, v132, v133);
        v134 = OUTLINED_FUNCTION_22_33();
        if (!setd_lookup(v134, v135, 367))
        {
LABEL_83:
          v157 = OUTLINED_FUNCTION_75_11();
          copyvar(v157, v158, v159);
          goto LABEL_103;
        }

LABEL_72:
        v136 = OUTLINED_FUNCTION_21_33();
        starttest(v136, v137);
        v138 = OUTLINED_FUNCTION_41_20();
        lpta_rpta_loadp(v138, v139, v140);
        v141 = OUTLINED_FUNCTION_22_33();
        if (!setd_lookup(v141, v142, 366))
        {
          v169 = OUTLINED_FUNCTION_75_11();
          copyvar(v169, v170, v171);
          OUTLINED_FUNCTION_58_15();
          OUTLINED_FUNCTION_14_40();
          v44 = mark_s();
LABEL_93:
          v25 = v21;
          if (!v44)
          {
            goto LABEL_103;
          }

          goto LABEL_11;
        }

LABEL_73:
        v143 = OUTLINED_FUNCTION_23_33();
        if (lpta_loadp_setscan_l(v143, v144) || (OUTLINED_FUNCTION_2_44(), test_string_s()))
        {
LABEL_75:
          v145 = OUTLINED_FUNCTION_23_33();
          if (!lpta_loadp_setscan_l(v145, v146))
          {
            OUTLINED_FUNCTION_2_44();
            if (!test_string_s())
            {
              v213 = OUTLINED_FUNCTION_21_33();
              starttest(v213, v214);
              OUTLINED_FUNCTION_21_33();
              bspush_ca_boa();
              OUTLINED_FUNCTION_41_20();
              v24 = one_eng_syllable();
              goto LABEL_8;
            }
          }

LABEL_77:
          v147 = OUTLINED_FUNCTION_21_33();
          starttest(v147, v148);
          v149 = OUTLINED_FUNCTION_23_33();
          if (lpta_loadp_setscan_l(v149, v150))
          {
            goto LABEL_103;
          }

          v151 = OUTLINED_FUNCTION_21_33();
          bspush_ca_scan(v151, v152);
          OUTLINED_FUNCTION_2_44();
          v153 = test_string_s();
          v25 = v21;
          if (!v153)
          {
LABEL_79:
            v154 = OUTLINED_FUNCTION_21_33();
            bspush_ca_scan(v154, v155);
LABEL_80:
            OUTLINED_FUNCTION_2_44();
LABEL_81:
            v156 = test_string_s();
            v25 = v21;
            if (!v156)
            {
LABEL_111:
              OUTLINED_FUNCTION_21_33();
              bspush_ca_scan_boa();
              OUTLINED_FUNCTION_88_10();
LABEL_112:
              v206 = *(v1 + 1648);
              v207 = OUTLINED_FUNCTION_26_31();
              v24 = test_ptr(v207);
              goto LABEL_8;
            }
          }

          goto LABEL_11;
        }

LABEL_84:
        savescptr(v1, 39, &v252);
        v160 = OUTLINED_FUNCTION_21_33();
        starttest_l(v160, v161);
        v162 = OUTLINED_FUNCTION_69_12();
        if (!lpta_loadp_setscan_l(v162, v163) && !advance_tok(v1) && !advance_tok(v1))
        {
          v215 = OUTLINED_FUNCTION_21_33();
          starttest(v215, v216);
          OUTLINED_FUNCTION_21_33();
          bspush_ca_boa();
          v217 = OUTLINED_FUNCTION_41_20();
          lpta_rpta_loadp(v217, v218, v219);
          v220 = OUTLINED_FUNCTION_22_33();
          v222 = 373;
LABEL_114:
          v24 = setd_lookup(v220, v221, v222);
          goto LABEL_8;
        }

LABEL_103:
        move_i(v1, v1 + 5936, 1);
        v184 = OUTLINED_FUNCTION_39_21();
        lpta_rpta_loadp(v184, v185, v186);
        inserted = insert_2pt_s(v1, 2u, 1, &unk_280581184, 0);
        v25 = v21;
        if (inserted)
        {
          goto LABEL_11;
        }

        v188 = OUTLINED_FUNCTION_39_21();
        lpta_rpta_loadp(v188, v189, v190);
        OUTLINED_FUNCTION_70_12();
        settvar_s();
        v191 = OUTLINED_FUNCTION_55_16();
        npush_s(v191);
        WORD1(v247) = 1;
        v192 = OUTLINED_FUNCTION_70_12();
        npop(v192, v193);
        insert_2ptv();
        v25 = v21;
        if (v194)
        {
          goto LABEL_11;
        }

        *(v1 + 1664) = v264;
        v195 = OUTLINED_FUNCTION_21_33();
        starttest(v195, v196);
        v197 = OUTLINED_FUNCTION_21_33();
        bspush_ca(v197);
        v25 = v21;
        if (*(v1 + 4030) != 2)
        {
          goto LABEL_11;
        }

LABEL_117:
        OUTLINED_FUNCTION_9_41();
        if (eng_roots_dict_lookup())
        {
LABEL_118:
          if (*(v1 + 4030) == 2)
          {
            strip_er();
          }
        }

LABEL_5:
        vretproc(v1);
        v20 = *MEMORY[0x277D85DE8];
        OUTLINED_FUNCTION_65_14();
        return;
      case 32:
        goto LABEL_67;
      case 35:
        goto LABEL_71;
      case 36:
        goto LABEL_72;
      case 37:
        goto LABEL_73;
      case 38:
        goto LABEL_75;
      case 39:
        goto LABEL_84;
      case 41:
        bspop_boa(v1);
        lpta_rpta_loadp(v1, &v252, &v263);
        v39 = OUTLINED_FUNCTION_2_44();
        v44 = insert_2pt_s(v39, v40, v41, v42, v43);
        goto LABEL_93;
      case 42:
        goto LABEL_77;
      case 44:
        bspop_boa(v1);
        v208 = OUTLINED_FUNCTION_21_33();
        starttest_l(v208, v209);
        OUTLINED_FUNCTION_21_33();
        bspush_ca_boa();
        v210 = OUTLINED_FUNCTION_9_41();
        lpta_rpta_loadp(v210, v211, v212);
        v220 = OUTLINED_FUNCTION_22_33();
        v222 = 371;
        goto LABEL_114;
      case 45:
        bspop_boa(v1);
        goto LABEL_83;
      case 46:
      case 50:
        v104 = OUTLINED_FUNCTION_21_33();
        bspush_ca_scan(v104, v105);
        OUTLINED_FUNCTION_5_42();
        goto LABEL_81;
      case 47:
        goto LABEL_80;
      case 48:
      case 49:
        goto LABEL_111;
      case 51:
      case 52:
        goto LABEL_79;
      case 53:
        OUTLINED_FUNCTION_5_42();
        v100 = test_string_s();
        v25 = v21;
        if (v100)
        {
          goto LABEL_11;
        }

        goto LABEL_50;
      case 54:
LABEL_50:
        OUTLINED_FUNCTION_49_16(54, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250);
        OUTLINED_FUNCTION_21_33();
        bspush_ca_scan_boa();
        v101 = OUTLINED_FUNCTION_21_33();
        bspush_ca_scan(v101, v102);
        goto LABEL_51;
      case 55:
        bspop_boa(v1);
        goto LABEL_111;
      case 56:
      case 71:
        v92 = OUTLINED_FUNCTION_21_33();
        bspush_ca_scan(v92, v93);
        goto LABEL_51;
      case 57:
      case 72:
        goto LABEL_53;
      case 58:
        goto LABEL_51;
      case 59:
        bspop_boa(v1);
        v34 = OUTLINED_FUNCTION_21_33();
        starttest_l(v34, v35);
        isolate_e_root();
        if (v36)
        {
          goto LABEL_103;
        }

        v37 = OUTLINED_FUNCTION_21_33();
        starttest(v37, v38);
        if (HIWORD(v265) != 1)
        {
          goto LABEL_103;
        }

        goto LABEL_83;
      case 61:
LABEL_33:
        OUTLINED_FUNCTION_2_44();
        v70 = test_string_s();
        v25 = v21;
        if (!v70)
        {
          goto LABEL_34;
        }

        goto LABEL_11;
      case 62:
LABEL_34:
        v71 = OUTLINED_FUNCTION_21_33();
        starttest(v71, v72);
        v73 = OUTLINED_FUNCTION_23_33();
        if (lpta_loadp_setscan_l(v73, v74) || test_string_s())
        {
          goto LABEL_36;
        }

        OUTLINED_FUNCTION_21_33();
        bspush_ca_scan_boa();
        *(v1 + 136) = 1;
        goto LABEL_112;
      case 63:
LABEL_36:
        v75 = OUTLINED_FUNCTION_21_33();
        starttest(v75, v76);
        v77 = OUTLINED_FUNCTION_23_33();
        if (lpta_loadp_setscan_l(v77, v78))
        {
          goto LABEL_109;
        }

        v79 = OUTLINED_FUNCTION_21_33();
        bspush_ca_scan(v79, v80);
        OUTLINED_FUNCTION_6_41();
        goto LABEL_55;
      case 66:
LABEL_109:
        v201 = OUTLINED_FUNCTION_21_33();
        starttest(v201, v202);
        OUTLINED_FUNCTION_21_33();
        bspush_ca_boa();
        v203 = OUTLINED_FUNCTION_41_20();
        lpta_rpta_loadp(v203, v204, v205);
        v220 = OUTLINED_FUNCTION_22_33();
        v222 = 365;
        goto LABEL_114;
      case 67:
        OUTLINED_FUNCTION_2_44();
        v94 = test_string_s();
        v25 = v21;
        if (v94)
        {
          goto LABEL_11;
        }

        v95 = OUTLINED_FUNCTION_21_33();
        bspush_ca_scan(v95, v96);
        OUTLINED_FUNCTION_2_44();
        v97 = test_string_s();
        v25 = v21;
        if (v97)
        {
          goto LABEL_11;
        }

        OUTLINED_FUNCTION_21_33();
        bspush_ca_scan_boa();
        v98 = OUTLINED_FUNCTION_21_33();
        bspush_ca_scan(v98, v99);
LABEL_51:
        OUTLINED_FUNCTION_2_44();
        v103 = test_string_s();
        goto LABEL_52;
      case 69:
        OUTLINED_FUNCTION_2_44();
LABEL_55:
        v44 = test_string_s();
        goto LABEL_93;
      case 70:
        bspop_boa(v1);
        goto LABEL_103;
      case 73:
        v164 = OUTLINED_FUNCTION_1_44();
        v168 = testFldeq(v164, v165, v166, v167);
        v25 = v21;
        if (v168)
        {
          goto LABEL_11;
        }

        v103 = advance_tok(v1);
LABEL_52:
        v25 = v21;
        if (!v103)
        {
LABEL_53:
          v25 = 1;
        }

        goto LABEL_11;
      case 75:
        goto LABEL_118;
      case 76:
        v25 = v21;
        if (*(v1 + 5970) < 1)
        {
          goto LABEL_11;
        }

        goto LABEL_117;
      case 77:
        goto LABEL_117;
      default:
        goto LABEL_5;
    }
  }
}

void isolate_z_root()
{
  OUTLINED_FUNCTION_66_14();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v92 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7_41(v12, v10, v8, v6, v4, v2, v0, v14, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v85, v86, v88, v89);
  OUTLINED_FUNCTION_30_29();
  bzero(v91, v15);
  if (!setjmp(v91))
  {
    OUTLINED_FUNCTION_85_11();
    if (!ventproc(v13, v16, v17, v18, v19, v91))
    {
      v21 = OUTLINED_FUNCTION_59_15();
      get_parm(v21, v22, v11, -4);
      v23 = OUTLINED_FUNCTION_63_15();
      get_parm(v23, v24, v9, -6);
      v25 = OUTLINED_FUNCTION_53_16();
      get_parm(v25, v26, v7, -6);
      v27 = OUTLINED_FUNCTION_42_20();
      get_parm(v27, v28, v5, -6);
      v29 = OUTLINED_FUNCTION_33_26();
      get_parm(v29, v30, v3, -6);
      v31 = OUTLINED_FUNCTION_32_27();
      OUTLINED_FUNCTION_86_10(v31, v32);
      v33 = 0;
      OUTLINED_FUNCTION_71_12(v34, v35, &null_str_12);
      v90 = 0;
      v36 = OUTLINED_FUNCTION_63_15();
      lpta_loadpn(v36, v37);
      OUTLINED_FUNCTION_67_14();
      if (!compare_ptas(v13))
      {
        if (!testneq(v13))
        {
          v48 = OUTLINED_FUNCTION_23_33();
          if (lpta_loadp_setscan_l(v48, v49) || (OUTLINED_FUNCTION_5_42(), test_string_s()))
          {
            v33 = 0;
LABEL_14:
            v50 = OUTLINED_FUNCTION_41_20();
            lpta_rpta_loadp(v50, v51, v52);
            v53 = OUTLINED_FUNCTION_22_33();
            if (setd_lookup(v53, v54, 378))
            {
LABEL_15:
              v84 = v87;
              v55 = OUTLINED_FUNCTION_21_33();
              starttest(v55, v56);
              OUTLINED_FUNCTION_21_33();
              bspush_ca_boa();
              v38 = v33;
              goto LABEL_16;
            }
          }

LABEL_25:
          v11[1] = v90;
          *(v1 + 8) = v84;
          goto LABEL_3;
        }

        v33 = 0;
      }

      while (2)
      {
        v38 = v33;
        v39 = OUTLINED_FUNCTION_53_16();
        lpta_loadpn(v39, v40);
        OUTLINED_FUNCTION_67_14();
        if (!compare_ptas(v13) && !testneq(v13))
        {
          v41 = OUTLINED_FUNCTION_44_19();
          lpta_rpta_loadp(v41, v42, v43);
          v44 = OUTLINED_FUNCTION_22_33();
          if (!setd_lookup(v44, v45, 379))
          {
            v84 = v87;
            v46 = OUTLINED_FUNCTION_16_39();
            starttest(v46, v47);
            OUTLINED_FUNCTION_17_37();
            bspush_ca_boa();
LABEL_16:
            OUTLINED_FUNCTION_46_18();
            if (one_eng_syllable())
            {
              v33 = v38;
            }

            else
            {
              v33 = 1;
            }

LABEL_19:
            v57 = *(v13 + 104);
            if (v57)
            {
              v58 = OUTLINED_FUNCTION_38_21(v57);
            }

            else
            {
              v58 = OUTLINED_FUNCTION_106_7();
              v33 = 0;
            }

            switch(v58)
            {
              case 1:
                continue;
              case 2:
                goto LABEL_14;
              case 3:
              case 7:
              case 8:
                goto LABEL_25;
              case 4:
                goto LABEL_15;
              case 5:
              case 9:
                goto LABEL_24;
              case 6:
              case 10:
                bspop_boa(v13);
                OUTLINED_FUNCTION_58_15();
                OUTLINED_FUNCTION_14_40();
                if (mark_s())
                {
                  goto LABEL_19;
                }

LABEL_24:
                v90 = 1;
                goto LABEL_25;
              default:
                goto LABEL_3;
            }
          }
        }

        goto LABEL_25;
      }
    }
  }

LABEL_3:
  vretproc(v13);
  v20 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_101_7();
  OUTLINED_FUNCTION_65_14();
}

uint64_t isolate_non_plural_root(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  OUTLINED_FUNCTION_81_11();
  v106 = *MEMORY[0x277D85DE8];
  LODWORD(v101) = 0;
  OUTLINED_FUNCTION_8_41(v7, v8, v9, v10, v11, v12, v13, v14, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99);
  OUTLINED_FUNCTION_30_29();
  bzero(v105, v15);
  if (setjmp(v105))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_19_36();
  if (OUTLINED_FUNCTION_107_7(v16, v17, v18, v19, v20, v21, v22, v23, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v101, v102, v103, v104, v105[0]))
  {
    goto LABEL_3;
  }

  v27 = OUTLINED_FUNCTION_36_23();
  get_parm(v27, v28, v29, -4);
  v30 = OUTLINED_FUNCTION_34_26();
  get_parm(v30, v31, v32, -6);
  v33 = OUTLINED_FUNCTION_44_19();
  OUTLINED_FUNCTION_92_9(v33, v34);
  OUTLINED_FUNCTION_71_12(v35, v36, &null_str_12);
  v37 = OUTLINED_FUNCTION_34_26();
  lpta_rpta_loadp(v37, v38, v39);
  v40 = OUTLINED_FUNCTION_25_31();
  if (!setd_lookup(v40, v41, 367))
  {
    goto LABEL_8;
  }

  v42 = OUTLINED_FUNCTION_46_18();
  lpta_rpta_loadp(v42, v43, v44);
  v45 = OUTLINED_FUNCTION_22_33();
  if (setd_lookup(v45, v46, 366) || (OUTLINED_FUNCTION_58_15(), OUTLINED_FUNCTION_14_40(), mark_s()))
  {
LABEL_3:
    v24 = 94;
  }

  else
  {
LABEL_8:
    *(v5 + 2) = a4;
    v24 = 0;
  }

  vretproc(v4);
  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

uint64_t isolate_es_root(uint64_t a1, uint64_t a2, __int16 *a3)
{
  OUTLINED_FUNCTION_81_11();
  v76 = *MEMORY[0x277D85DE8];
  v74 = 0;
  OUTLINED_FUNCTION_7_41(v6, v7, v8, v9, v10, v11, v12, v13, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71[0], v71[1], v72, v73);
  OUTLINED_FUNCTION_30_29();
  bzero(v75, v14);
  if (!setjmp(v75))
  {
    OUTLINED_FUNCTION_37_22();
    if (!ventproc(v3, v15, v16, v17, v18, v75))
    {
      v19 = OUTLINED_FUNCTION_36_23();
      get_parm(v19, v20, v21, -4);
      v22 = OUTLINED_FUNCTION_42_20();
      get_parm(v22, v23, a3, -6);
      v24 = OUTLINED_FUNCTION_34_26();
      get_parm(v24, v25, v26, -6);
      v27 = OUTLINED_FUNCTION_32_27();
      OUTLINED_FUNCTION_92_9(v27, v28);
      OUTLINED_FUNCTION_71_12(v29, v30, &null_str_12);
      HIWORD(v74) = 0;
      OUTLINED_FUNCTION_93_8();
      v31 = OUTLINED_FUNCTION_40_20();
      if (lpta_loadp_setscan_l(v31, v32))
      {
LABEL_4:
        lpta_rpta_loadp(v3, &v72, v71);
        v33 = OUTLINED_FUNCTION_22_33();
        if (setd_lookup(v33, v34, 370) || (OUTLINED_FUNCTION_58_15(), OUTLINED_FUNCTION_14_40(), mark_s()))
        {
LABEL_6:
          v35 = OUTLINED_FUNCTION_46_18();
          lpta_rpta_loadp(v35, v36, v37);
          v38 = OUTLINED_FUNCTION_22_33();
          if (setd_lookup(v38, v39, 369))
          {
            goto LABEL_8;
          }

          OUTLINED_FUNCTION_58_15();
          OUTLINED_FUNCTION_14_40();
          if (mark_s())
          {
            goto LABEL_8;
          }
        }

LABEL_17:
        HIWORD(v74) = 1;
        *(v4 + 2) = 1;
        goto LABEL_8;
      }

      while (2)
      {
        v42 = OUTLINED_FUNCTION_44_19();
        bspush_ca_scan(v42, v43);
        *(v3 + 136) = 1;
        *(v3 + 112) = v73;
        *(v3 + 128) = 0;
        if (!test_ptr(v3))
        {
          goto LABEL_17;
        }

LABEL_10:
        v44 = *(v3 + 104);
        if (v44)
        {
          *(v3 + 104) = 0;
          v45 = v44;
        }

        else
        {
          v45 = OUTLINED_FUNCTION_96_8();
        }

        switch(v45)
        {
          case 1:
            goto LABEL_4;
          case 2:
            continue;
          case 3:
            if (!testFldeq(v3, 1u, 4, 2) && !advance_tok(v3))
            {
              continue;
            }

            goto LABEL_10;
          case 4:
            goto LABEL_17;
          case 5:
            goto LABEL_6;
          default:
            goto LABEL_8;
        }
      }
    }
  }

LABEL_8:
  vretproc(v3);
  v40 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_100_7();
}

void isolate_e_root()
{
  OUTLINED_FUNCTION_66_14();
  v3 = v2;
  OUTLINED_FUNCTION_81_11();
  v80 = *MEMORY[0x277D85DE8];
  v78 = 0;
  OUTLINED_FUNCTION_7_41(v4, v5, v6, v7, v8, v9, v10, v11, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77[0], v77[1], v77[2], v77[3]);
  OUTLINED_FUNCTION_30_29();
  bzero(v79, v12);
  if (setjmp(v79))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_37_22();
  if (ventproc(v0, v13, v14, v15, v16, v79))
  {
    goto LABEL_3;
  }

  v18 = OUTLINED_FUNCTION_36_23();
  get_parm(v18, v19, v20, -4);
  v21 = OUTLINED_FUNCTION_42_20();
  get_parm(v21, v22, v3, -6);
  v23 = OUTLINED_FUNCTION_34_26();
  get_parm(v23, v24, v25, -6);
  v26 = OUTLINED_FUNCTION_32_27();
  OUTLINED_FUNCTION_92_9(v26, v27);
  OUTLINED_FUNCTION_71_12(v28, v29, &null_str_12);
  HIWORD(v78) = 0;
  v30 = OUTLINED_FUNCTION_41_20();
  lpta_rpta_loadp(v30, v31, v77);
  v32 = OUTLINED_FUNCTION_22_33();
  if (!setd_lookup(v32, v33, 372))
  {
LABEL_22:
    *(v1 + 2) = HIWORD(v78);
    goto LABEL_3;
  }

  v34 = 0;
  while (2)
  {
    v35 = v34;
    v36 = OUTLINED_FUNCTION_44_19();
    starttest(v36, v37);
    v38 = OUTLINED_FUNCTION_40_20();
    if (lpta_loadp_setscan_l(v38, v39) || (OUTLINED_FUNCTION_22_33(), test_string_s()))
    {
LABEL_18:
      v49 = OUTLINED_FUNCTION_42_20();
      lpta_loadpn(v49, v50);
      OUTLINED_FUNCTION_67_14();
      if (compare_ptas(v0) || testneq(v0) || (OUTLINED_FUNCTION_41_20(), has_lex_prefix(), v51))
      {
LABEL_21:
        HIWORD(v78) = 1;
      }

      goto LABEL_22;
    }

    v40 = OUTLINED_FUNCTION_22_33();
    v42 = testFldeq(v40, v41, 4, 2);
    if (v42 || (v42 = advance_tok(v0)))
    {
      v43 = v35;
    }

    else
    {
      bspush_ca_boa();
      v45 = OUTLINED_FUNCTION_41_20();
      lpta_rpta_loadp(v45, v46, v77);
      v47 = OUTLINED_FUNCTION_22_33();
      v42 = setd_lookup(v47, v48, 374);
      if (v42)
      {
        v43 = v35;
      }

      else
      {
        v43 = 1;
      }
    }

    if (v0[13])
    {
      v34 = OUTLINED_FUNCTION_84_11(v42, v43);
    }

    else
    {
      v44 = vback(v0, v43);
      v34 = 0;
    }

    switch(v44)
    {
      case 1:
        continue;
      case 2:
        goto LABEL_22;
      case 3:
        goto LABEL_18;
      case 4:
        bspop_boa(v0);
        goto LABEL_22;
      case 5:
        goto LABEL_21;
      default:
        goto LABEL_3;
    }
  }

LABEL_3:
  vretproc(v0);
  v17 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_100_7();
  OUTLINED_FUNCTION_65_14();
}

void strip_er()
{
  OUTLINED_FUNCTION_66_14();
  v1 = v0;
  v52 = *MEMORY[0x277D85DE8];
  v47[0] = 0;
  v47[1] = 0;
  OUTLINED_FUNCTION_31_29();
  bzero(v46, v2);
  OUTLINED_FUNCTION_30_29();
  bzero(v51, v3);
  if (!setjmp(v51) && !ventproc(v1, v46, v50, v49, v48, v51))
  {
    v4 = OUTLINED_FUNCTION_98_8();
    push_ptr_init(v4, v5);
    fence_44(v1, 0, &null_str_12);
    v6 = OUTLINED_FUNCTION_22_33();
    fence_44(v6, v7, v8);
    v9 = OUTLINED_FUNCTION_4_42();
    if (!lpta_loadp_setscan_l(v9, v10))
    {
      OUTLINED_FUNCTION_13_40();
      if (!test_string_s())
      {
        v12 = 0;
        while (2)
        {
          savescptr(v1, 2, v47);
LABEL_8:
          starttest(v1, 4);
          v13 = OUTLINED_FUNCTION_64_14();
          if (lpta_loadp_setscan_l(v13, v14))
          {
LABEL_9:
            *(v1 + 5958) = v51;
            *(v1 + 5962) = v51;
            *(v1 + 5966) = v51;
            *(v1 + 5978) = v51;
            v15 = OUTLINED_FUNCTION_77_11();
            starttest(v15, v16);
            OUTLINED_FUNCTION_78_11();
            bspush_ca_boa();
            if (strip_suffix())
            {
              v12 = v12;
            }

            else
            {
              v12 = 1;
            }
          }

          else
          {
            bspush_ca_scan(v1, 5);
            OUTLINED_FUNCTION_28_29();
            if (!test_string_s())
            {
              v17 = OUTLINED_FUNCTION_28_29();
              if (!testFldeq(v17, v18, 4, v51) && !advance_tok(v1))
              {
                break;
              }
            }
          }

          v19 = v12;
LABEL_16:
          v12 = v19;
          v20 = *(v1 + 104);
          if (v20)
          {
            v21 = OUTLINED_FUNCTION_38_21(v20);
          }

          else
          {
            v21 = OUTLINED_FUNCTION_106_7();
            v12 = 0;
          }

          v28 = 0;
          switch(v21)
          {
            case 2:
              continue;
            case 3:
              goto LABEL_8;
            case 4:
              goto LABEL_9;
            case 5:
              bspush_ca_scan(v1, 7);
              OUTLINED_FUNCTION_28_29();
              goto LABEL_35;
            case 7:
              v35 = OUTLINED_FUNCTION_90_9();
              bspush_ca_scan(v35, v36);
              OUTLINED_FUNCTION_28_29();
              goto LABEL_29;
            case 8:
              v29 = OUTLINED_FUNCTION_40_20();
              bspush_ca_scan(v29, v30);
              OUTLINED_FUNCTION_12_40();
LABEL_29:
              v37 = test_string_s();
              goto LABEL_30;
            case 9:
              v38 = OUTLINED_FUNCTION_63_15();
              bspush_ca_scan(v38, v39);
              OUTLINED_FUNCTION_28_29();
              goto LABEL_33;
            case 10:
              OUTLINED_FUNCTION_28_29();
LABEL_33:
              v40 = test_string_s();
              v19 = v12;
              if (!v40)
              {
                goto LABEL_34;
              }

              goto LABEL_16;
            case 11:
LABEL_34:
              OUTLINED_FUNCTION_12_40();
LABEL_35:
              v41 = test_string_s();
              v19 = v12;
              if (!v41)
              {
                v42 = OUTLINED_FUNCTION_28_29();
                v44 = testFldeq(v42, v43, 4, 2);
                v19 = v12;
                if (!v44)
                {
                  v37 = advance_tok(v1);
LABEL_30:
                  v19 = v12;
                  if (!v37)
                  {
                    goto LABEL_5;
                  }
                }
              }

              goto LABEL_16;
            case 12:
              OUTLINED_FUNCTION_68_12();
              if (!v31)
              {
                goto LABEL_26;
              }

              goto LABEL_5;
            case 13:
              bspop_boa(v1);
              goto LABEL_5;
            case 14:
LABEL_26:
              v32 = OUTLINED_FUNCTION_69_12();
              starttest(v32, v33);
              v34 = OUTLINED_FUNCTION_70_12();
              bspush_ca(v34);
              v19 = v12;
              if (*(v1 + 5970) >= 2)
              {
                goto LABEL_5;
              }

              goto LABEL_16;
            case 16:
              if (split_final_compound(v1))
              {
                goto LABEL_40;
              }

              goto LABEL_5;
            case 17:
              v19 = v12;
              if (*(v1 + 4030) != 2)
              {
                goto LABEL_16;
              }

              goto LABEL_5;
            case 19:
LABEL_40:
              strip_ly_suffix();
              if (v45)
              {
                goto LABEL_41;
              }

              goto LABEL_5;
            case 20:
LABEL_41:
              if (strip_inner_adj_suffix(v1, v28, v22, v23, v24, v25, v26, v27))
              {
                goto LABEL_42;
              }

              goto LABEL_5;
            case 21:
LABEL_42:
              if (strip_nounadj_suffix(v1, v28, v22, v23, v24, v25, v26, v27))
              {
                goto LABEL_43;
              }

              goto LABEL_5;
            case 22:
LABEL_43:
              strip_ize();
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
  v11 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_101_7();
  OUTLINED_FUNCTION_65_14();
}

void strip_ambig_suffix()
{
  OUTLINED_FUNCTION_66_14();
  v1 = v0;
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_82_11();
  OUTLINED_FUNCTION_31_29();
  bzero(v76, v3);
  OUTLINED_FUNCTION_30_29();
  bzero(v89, v4);
  v5 = setjmp(v89);
  if (v5)
  {
    goto LABEL_4;
  }

  if (OUTLINED_FUNCTION_57_15(v5, v76, v6, v7, v8, v9, v10, v11, v66, v67, v68, v69, v70, v71, v72, v73, v74, v76[0], v76[1], v76[2], v76[3], v76[4], v76[5], v76[6], v76[7], v76[8], v76[9], v76[10], v76[11], v76[12], v76[13], v76[14], v76[15], v76[16], v76[17], v76[18], v76[19], v76[20], v76[21], v76[22], v77[0], v77[1], v78[0], v78[1], v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89[0]))
  {
    goto LABEL_4;
  }

  v12 = OUTLINED_FUNCTION_73_11();
  push_ptr_init(v12, v13);
  v14 = OUTLINED_FUNCTION_72_11();
  push_ptr_init(v14, v15);
  fence_44(v1, 0, &null_str_12);
  v16 = OUTLINED_FUNCTION_13_40();
  fence_44(v16, v17, v18);
  if (*(v1 + 4038) == 1)
  {
    goto LABEL_4;
  }

  v20 = 0;
  OUTLINED_FUNCTION_47_17();
  v75 = v21;
  while (2)
  {
    starttest(v1, v21);
    v22 = OUTLINED_FUNCTION_24_31();
    if (lpta_loadp_setscan_l(v22, v23) || (OUTLINED_FUNCTION_12_40(), test_string_s()))
    {
LABEL_8:
      v24 = OUTLINED_FUNCTION_24_31();
      if (lpta_loadp_setscan_l(v24, v25) || (OUTLINED_FUNCTION_28_29(), v26 = test_string_s(), v27 = v20, v26))
      {
LABEL_10:
        v28 = OUTLINED_FUNCTION_24_31();
        if (lpta_loadp_setscan_l(v28, v29))
        {
          break;
        }

        OUTLINED_FUNCTION_28_29();
        if (test_string_s())
        {
          break;
        }

LABEL_12:
        v30 = OUTLINED_FUNCTION_77_11();
        savescptr(v30, v31, v78);
        v32 = OUTLINED_FUNCTION_78_11();
        starttest_l(v32, v33);
        OUTLINED_FUNCTION_64_14();
        bspush_ca_boa();
        v34 = OUTLINED_FUNCTION_41_20();
        lpta_rpta_loadp(v34, v35, v78);
        v36 = OUTLINED_FUNCTION_28_29();
        v38 = 376;
      }

      else
      {
LABEL_36:
        LODWORD(v20) = v27;
        savescptr(v1, 13, v78);
        starttest_l(v1, 14);
        bspush_ca_boa();
        v60 = OUTLINED_FUNCTION_41_20();
        lpta_rpta_loadp(v60, v61, v78);
        v36 = OUTLINED_FUNCTION_28_29();
        v38 = 377;
      }

      v39 = setd_lookup(v36, v37, v38);
      goto LABEL_22;
    }

    bspush_ca_scan(v1, 3);
    OUTLINED_FUNCTION_12_40();
LABEL_15:
    v40 = test_string_s();
    v41 = v20;
    if (!v40)
    {
LABEL_16:
      v20 = v41;
      OUTLINED_FUNCTION_12_40();
      v42 = test_string_s();
      v43 = v20;
      if (v42)
      {
        goto LABEL_25;
      }

LABEL_17:
      v20 = v43;
      savescptr(v1, 5, v77);
LABEL_18:
      v44 = OUTLINED_FUNCTION_70_12();
      savescptr(v44, v45, v78);
      v46 = OUTLINED_FUNCTION_69_12();
      starttest(v46, v47);
      OUTLINED_FUNCTION_63_15();
      bspush_ca_boa();
      v48 = OUTLINED_FUNCTION_40_20();
      if (!lpta_loadp_setscan_l(v48, v49) && !advance_tok(v1) && !advance_tok(v1))
      {
        v39 = advance_tok(v1);
LABEL_22:
        if (v39)
        {
          v20 = v20;
        }

        else
        {
          v20 = 1;
        }
      }
    }

LABEL_25:
    v50 = *(v1 + 104);
    if (v50)
    {
      v51 = OUTLINED_FUNCTION_38_21(v50);
    }

    else
    {
      v51 = OUTLINED_FUNCTION_106_7();
      v20 = 0;
    }

    v41 = v20;
    switch(v51)
    {
      case 1:
        v21 = v75;
        continue;
      case 2:
        goto LABEL_8;
      case 3:
        OUTLINED_FUNCTION_12_40();
        goto LABEL_15;
      case 4:
        goto LABEL_16;
      case 5:
        v43 = v20;
        goto LABEL_17;
      case 6:
        goto LABEL_18;
      case 7:
        v52 = OUTLINED_FUNCTION_40_20();
        if (lpta_loadp_setscan_l(v52, v53))
        {
          goto LABEL_32;
        }

        OUTLINED_FUNCTION_28_29();
        if (test_string_s())
        {
          goto LABEL_32;
        }

        goto LABEL_4;
      case 8:
      case 22:
        bspop_boa(v1);
        goto LABEL_4;
      case 9:
      case 11:
        goto LABEL_33;
      case 10:
LABEL_32:
        v54 = OUTLINED_FUNCTION_41_20();
        lpta_rpta_loadp(v54, v55, v78);
        v56 = OUTLINED_FUNCTION_28_29();
        if (setd_lookup(v56, v57, 375))
        {
          goto LABEL_33;
        }

        goto LABEL_4;
      case 12:
        goto LABEL_10;
      case 13:
        v27 = v20;
        goto LABEL_36;
      case 14:
      case 16:
      case 19:
        *(v1 + 5990) = v89;
LABEL_33:
        v58 = OUTLINED_FUNCTION_51_16();
        starttest(v58, v59);
        OUTLINED_FUNCTION_90_9();
        bspush_ca_boa();
        OUTLINED_FUNCTION_40_20();
        v39 = strip_suffix();
        goto LABEL_22;
      case 15:
      case 20:
        bspop_boa(v1);
        goto LABEL_4;
      case 18:
        goto LABEL_12;
      case 21:
        v62 = OUTLINED_FUNCTION_72_11();
        lpta_loadpn(v62, v63);
        OUTLINED_FUNCTION_67_14();
        if (!compare_ptas(v1) && !testeq(v1))
        {
          *(v1 + 5950) = 0;
        }

        goto LABEL_44;
      case 23:
LABEL_44:
        if (!*(v1 + 5946) && strip_s(v1, v41))
        {
          goto LABEL_46;
        }

        goto LABEL_4;
      case 25:
LABEL_46:
        v64 = OUTLINED_FUNCTION_72_11();
        lpta_loadpn(v64, v65);
        OUTLINED_FUNCTION_67_14();
        if (!compare_ptas(v1) && !testneq(v1))
        {
          split_final_compound(v1);
        }

        break;
      default:
        goto LABEL_4;
    }

    break;
  }

LABEL_4:
  vretproc(v1);
  v19 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_65_14();
}

uint64_t strip_suffix()
{
  OUTLINED_FUNCTION_81_11();
  v82 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_11_40(v1, v2, v3, v4, v5, v6, v7, v8, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75);
  OUTLINED_FUNCTION_30_29();
  bzero(v81, v9);
  v10 = setjmp(v81);
  if (v10 || OUTLINED_FUNCTION_15_39(v10, v11, v12, v13, v14, v15, v16, v17, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, *v77, v77[4], *v78, *&v78[4], v78[6], v79, SWORD2(v79), SBYTE6(v79), SHIBYTE(v79), v80, v81[0]))
  {
    goto LABEL_3;
  }

  v20 = OUTLINED_FUNCTION_51_16();
  OUTLINED_FUNCTION_86_10(v20, v21);
  fence_44(v0, 0, &null_str_12);
  v22 = OUTLINED_FUNCTION_21_33();
  starttest(v22, v23);
  OUTLINED_FUNCTION_21_33();
  bspush_ca_boa();
  OUTLINED_FUNCTION_51_16();
  potential_suffix();
  v25 = v0[13];
  if (v25)
  {
    v26 = OUTLINED_FUNCTION_38_21(v25);
  }

  else
  {
    v26 = vback(v0, v24 == 0);
  }

  switch(v26)
  {
    case 3:
LABEL_12:
      vretproc(v0);
      result = 0;
      goto LABEL_4;
    case 2:
      bspop_boa(v0);
      break;
    case 1:
      OUTLINED_FUNCTION_32_27();
      insert_suffix();
      goto LABEL_12;
  }

LABEL_3:
  vretproc(v0);
  result = 94;
LABEL_4:
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t strip_suffixes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v106 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_29_29(a1, a2, a3, a4, a5, a6, a7, a8, v77);
  OUTLINED_FUNCTION_30_29();
  bzero(v105, v9);
  v10 = setjmp(v105);
  if (v10 || (v18 = OUTLINED_FUNCTION_52_16(v10, v11, v12, v13, v14, v15, v16, v17, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, *v101, v101[4], *v102, *&v102[4], v102[6], v103, SWORD2(v103), SBYTE6(v103), SHIBYTE(v103), v104, v105[0]), v18))
  {
    v20 = 94;
  }

  else
  {
    v20 = 0;
    OUTLINED_FUNCTION_71_12(v18, v19, &null_str_12);
    if (strip_ing(a1, v23, v24, v25, v26, v27, v28, v29))
    {
      strip_ed();
      if (v30)
      {
        strip_ly_suffix();
        if (v38)
        {
          if (strip_outer_suffix(a1, v31, v32, v33, v34, v35, v36, v37))
          {
            if (strip_pname_suffixes(a1, v39, v40, v41, v42, v43, v44, v45))
            {
              strip_noun_verb_suffix();
              if (v46)
              {
                strip_er();
                if (v54)
                {
                  if (strip_inner_adj_suffix(a1, v47, v48, v49, v50, v51, v52, v53))
                  {
                    if (strip_medial_noun_suffix(a1, v55, v56, v57, v58, v59, v60, v61))
                    {
                      if (strip_inner_noun_suffix(a1, v62, v63, v64, v65, v66, v67, v68))
                      {
                        strip_ation();
                        if (v76)
                        {
                          if (strip_nounadj_suffix(a1, v69, v70, v71, v72, v73, v74, v75))
                          {
                            strip_ize();
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

      v20 = 0;
    }
  }

  vretproc(a1);
  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

uint64_t strip_ing(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v86 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7_41(a1, a2, a3, a4, a5, a6, a7, a8, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82);
  OUTLINED_FUNCTION_30_29();
  OUTLINED_FUNCTION_105_7(v10, v11);
  v12 = setjmp(v8);
  if (v12 || OUTLINED_FUNCTION_104_7(v12, &v54, v85, v84, v83))
  {
    goto LABEL_3;
  }

  v15 = OUTLINED_FUNCTION_42_20();
  push_ptr_init(v15, v16);
  v17 = OUTLINED_FUNCTION_33_26();
  push_ptr_init(v17, v18);
  v19 = OUTLINED_FUNCTION_32_27();
  v21 = push_ptr_init(v19, v20);
  v22 = 0;
  OUTLINED_FUNCTION_71_12(v21, v23, &null_str_12);
  v24 = OUTLINED_FUNCTION_25_31();
  fence_44(v24, v25, v26);
  OUTLINED_FUNCTION_93_8();
  v27 = OUTLINED_FUNCTION_24_31();
  v29 = 0;
  if (lpta_loadp_setscan_l(v27, v28))
  {
LABEL_6:
    v22 = v29;
    v30 = OUTLINED_FUNCTION_21_33();
    starttest(v30, v31);
    v32 = OUTLINED_FUNCTION_4_42();
    if (lpta_loadp_setscan_l(v32, v33))
    {
LABEL_3:
      vretproc(a1);
      result = 94;
      goto LABEL_4;
    }

LABEL_15:
    OUTLINED_FUNCTION_43_19(6, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77);
LABEL_16:
    OUTLINED_FUNCTION_48_16(7, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79);
    OUTLINED_FUNCTION_5_42();
    v29 = v22;
    if (!test_string_s())
    {
LABEL_17:
      v22 = v29;
      OUTLINED_FUNCTION_49_16(8, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81);
      v37 = OUTLINED_FUNCTION_23_33();
      if (!lpta_loadp_setscan_r(v37, v38))
      {
LABEL_18:
        v22 = v29;
        v39 = OUTLINED_FUNCTION_16_39();
        if (test_synch(v39, v40, 1u, v41))
        {
          goto LABEL_20;
        }

        OUTLINED_FUNCTION_2_44();
        if (test_string_s())
        {
          goto LABEL_20;
        }

        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_9:
    OUTLINED_FUNCTION_47_17();
    savescptr(a1, v34, &v79);
    OUTLINED_FUNCTION_6_41();
    v29 = v22;
    if (!test_string_s())
    {
LABEL_10:
      OUTLINED_FUNCTION_49_16(3, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81);
LABEL_11:
      OUTLINED_FUNCTION_20_34();
      v35 = OUTLINED_FUNCTION_17_37();
      starttest_l(v35, v36);
      OUTLINED_FUNCTION_21_33();
      bspush_ca_boa();
      OUTLINED_FUNCTION_42_20();
      if (strip_suffix())
      {
        v22 = v29;
      }

      else
      {
        v22 = 1;
      }
    }
  }

LABEL_20:
  v29 = v22;
  while (2)
  {
    v42 = *(a1 + 104);
    if (v42)
    {
      v43 = OUTLINED_FUNCTION_38_21(v42);
      v29 = v44;
    }

    else
    {
      v43 = vback(a1, v29);
      v29 = 0;
    }

    switch(v43)
    {
      case 1:
        goto LABEL_6;
      case 2:
        v22 = v29;
        goto LABEL_9;
      case 3:
        goto LABEL_10;
      case 4:
        goto LABEL_11;
      case 6:
        v22 = v29;
        goto LABEL_15;
      case 7:
        v22 = v29;
        goto LABEL_16;
      case 8:
        goto LABEL_17;
      case 9:
        goto LABEL_18;
      case 10:
        v45 = OUTLINED_FUNCTION_24_31();
        lpta_rpta_loadp(v45, v46, &v79);
        if (mark_s())
        {
          continue;
        }

        *(a1 + 5978) = 1;
        post_inflection_strip(a1, v47, v48, v49, v50, v51, v52, v53);
        break;
      case 11:
        bspop_boa(a1);
        break;
      case 12:
        goto LABEL_28;
      default:
        goto LABEL_3;
    }

    break;
  }

LABEL_28:
  vretproc(a1);
  result = 0;
LABEL_4:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

void strip_ed()
{
  OUTLINED_FUNCTION_66_14();
  v1 = v0;
  v48 = *MEMORY[0x277D85DE8];
  v43[0] = 0;
  v43[1] = 0;
  v42[0] = 0;
  v42[1] = 0;
  OUTLINED_FUNCTION_31_29();
  bzero(v41, v2);
  OUTLINED_FUNCTION_30_29();
  bzero(v47, v3);
  if (!setjmp(v47) && !ventproc(v1, v41, v46, v45, v44, v47))
  {
    v4 = OUTLINED_FUNCTION_87_10();
    push_ptr_init(v4, v5);
    push_ptr_init(v1, v42);
    fence_44(v1, 0, &null_str_12);
    v6 = OUTLINED_FUNCTION_13_40();
    fence_44(v6, v7, v8);
    v9 = OUTLINED_FUNCTION_91_9();
    starttest(v9, v10);
    v11 = OUTLINED_FUNCTION_24_31();
    if (!lpta_loadp_setscan_l(v11, v12))
    {
      v14 = 0;
      OUTLINED_FUNCTION_97_8();
      while (2)
      {
        v15 = OUTLINED_FUNCTION_50_16();
        savescptr(v15, v16, v17);
        v18 = OUTLINED_FUNCTION_77_11();
        bspush_ca_scan(v18, v19);
        OUTLINED_FUNCTION_28_29();
        v20 = test_string_s();
        v21 = v14;
        v22 = v14;
        if (!v20)
        {
LABEL_7:
          v23 = v21;
          OUTLINED_FUNCTION_12_40();
          v24 = test_string_s();
          LODWORD(v14) = v23;
          v22 = v23;
          if (!v24)
          {
LABEL_8:
            v25 = OUTLINED_FUNCTION_64_14();
            savescptr(v25, v26, v43);
LABEL_9:
            *(v1 + 5958) = v47;
            *(v1 + 5962) = v47;
            *(v1 + 5966) = v47;
            v27 = OUTLINED_FUNCTION_78_11();
            starttest(v27, v28);
            OUTLINED_FUNCTION_102_7();
            bspush_ca_boa();
            OUTLINED_FUNCTION_63_15();
            if (strip_suffix())
            {
              v22 = v14;
            }

            else
            {
              v22 = 1;
            }
          }
        }

        v14 = v22;
LABEL_13:
        v29 = *(v1 + 104);
        if (v29)
        {
          v30 = OUTLINED_FUNCTION_38_21(v29);
        }

        else
        {
          v30 = vback(v1, v14);
          v14 = 0;
        }

        v21 = v14;
        switch(v30)
        {
          case 2:
            continue;
          case 3:
            OUTLINED_FUNCTION_12_40();
            v31 = test_string_s();
            v21 = v14;
            if (!v31)
            {
              goto LABEL_7;
            }

            goto LABEL_13;
          case 4:
            goto LABEL_7;
          case 5:
            goto LABEL_8;
          case 6:
            goto LABEL_9;
          case 7:
            v32 = OUTLINED_FUNCTION_24_31();
            lpta_rpta_loadp(v32, v33, v42);
            if (mark_s())
            {
              goto LABEL_13;
            }

            post_inflection_strip(v1, v34, v35, v36, v37, v38, v39, v40);
            break;
          case 8:
            bspop_boa(v1);
            break;
          default:
            goto LABEL_4;
        }

        break;
      }
    }
  }

LABEL_4:
  vretproc(v1);
  v13 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_65_14();
}

void strip_ly_suffix()
{
  OUTLINED_FUNCTION_66_14();
  v1 = v0;
  v101 = *MEMORY[0x277D85DE8];
  v95 = 0;
  v96 = 0;
  v94[0] = 0;
  v94[1] = 0;
  v93[0] = 0;
  v93[1] = 0;
  v92[0] = 0;
  v92[1] = 0;
  v91[0] = 0;
  v91[1] = 0;
  v90[0] = 0;
  v90[1] = 0;
  OUTLINED_FUNCTION_31_29();
  bzero(v89, v2);
  OUTLINED_FUNCTION_30_29();
  bzero(v100, v3);
  if (setjmp(v100))
  {
    goto LABEL_5;
  }

  if (ventproc(v1, v89, v99, v98, v97, v100))
  {
    goto LABEL_5;
  }

  push_ptr_init(v1, &v95);
  push_ptr_init(v1, v94);
  push_ptr_init(v1, v93);
  push_ptr_init(v1, v92);
  push_ptr_init(v1, v91);
  push_ptr_init(v1, v90);
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
  OUTLINED_FUNCTION_47_17();
  v11 = &unk_280581200;
  while (2)
  {
    v12 = OUTLINED_FUNCTION_50_16();
    savescptr(v12, v13, v14);
LABEL_8:
    v15 = v10;
    if (*(v1 + 5970) >= 1)
    {
      goto LABEL_32;
    }

LABEL_9:
    v10 = v15;
    v16 = OUTLINED_FUNCTION_40_20();
    if (lpta_loadp_setscan_l(v16, v17) || (OUTLINED_FUNCTION_28_29(), v18 = test_string_s(), v19 = v10, v18))
    {
LABEL_11:
      starttest(v1, 15);
      v20 = OUTLINED_FUNCTION_40_20();
      if (lpta_loadp_setscan_l(v20, v21) || (OUTLINED_FUNCTION_12_40(), test_string_s()))
      {
LABEL_13:
        v22 = OUTLINED_FUNCTION_40_20();
        if (!lpta_loadp_setscan_l(v22, v23))
        {
          OUTLINED_FUNCTION_28_29();
          v24 = test_string_s();
          v25 = v10;
          if (!v24)
          {
LABEL_15:
            v10 = v25;
            savescptr(v1, 26, &v95);
LABEL_16:
            v26 = OUTLINED_FUNCTION_77_11();
            savescptr(v26, v27, v90);
            *(v1 + 5958) = v100;
            *(v1 + 5962) = v100;
          }
        }

LABEL_23:
        *(v1 + 5966) = v100;
        goto LABEL_32;
      }

      bspush_ca_scan(v1, 16);
LABEL_18:
      savescptr(v1, 17, v92);
      OUTLINED_FUNCTION_12_40();
      v28 = test_string_s();
      v29 = v10;
      if (!v28)
      {
LABEL_19:
        v10 = v29;
        savescptr(v1, 18, v94);
        starttest(v1, 19);
        v30 = OUTLINED_FUNCTION_64_14();
        v32 = lpta_loadp_setscan_l(v30, v31);
        v33 = v10;
        if (!v32)
        {
LABEL_51:
          v10 = v33;
          bspush_ca_scan(v1, 20);
          bspush_ca_scan(v1, 21);
          bspush_ca_scan_boa();
          v78 = OUTLINED_FUNCTION_28_29();
          v56 = testFldeq(v78, v79, 4, v100);
LABEL_33:
          if (!v56)
          {
            v10 = 1;
          }

          goto LABEL_35;
        }

LABEL_32:
        v54 = OUTLINED_FUNCTION_51_16();
        starttest(v54, v55);
        OUTLINED_FUNCTION_70_12();
        bspush_ca_boa();
        OUTLINED_FUNCTION_40_20();
        v56 = strip_suffix();
        goto LABEL_33;
      }
    }

    else
    {
LABEL_21:
      v34 = v11;
      v35 = v19;
      savescptr(v1, 7, v94);
      starttest(v1, 8);
      v36 = OUTLINED_FUNCTION_63_15();
      v38 = lpta_loadp_setscan_l(v36, v37);
      v10 = v35;
      v39 = v35;
      v11 = v34;
      if (v38)
      {
LABEL_22:
        v10 = v39;
        v40 = OUTLINED_FUNCTION_78_11();
        starttest(v40, v41);
        if (!lpta_loadp_setscan_l(v1, v94))
        {
          v42 = OUTLINED_FUNCTION_28_29();
          if (!testFldeq(v42, v43, 4, 2))
          {
            v44 = advance_tok(v1);
            v45 = v10;
            if (!v44)
            {
LABEL_26:
              v10 = v45;
              v46 = OUTLINED_FUNCTION_102_7();
              bspush_ca_scan(v46, v47);
              v48 = OUTLINED_FUNCTION_28_29();
              if (!testFldeq(v48, v49, 4, v100) && !advance_tok(v1))
              {
                break;
              }
            }
          }

          goto LABEL_35;
        }

        goto LABEL_23;
      }

LABEL_29:
      v50 = OUTLINED_FUNCTION_44_19();
      savescptr(v50, v51, &v95);
LABEL_30:
      v52 = OUTLINED_FUNCTION_69_12();
      savescptr(v52, v53, v93);
      OUTLINED_FUNCTION_28_29();
      if (!test_string_s())
      {
        *(v1 + 5990) = v100;
        goto LABEL_32;
      }
    }

LABEL_35:
    v57 = v10;
LABEL_36:
    v58 = *(v1 + 104);
    if (v58)
    {
      v59 = OUTLINED_FUNCTION_38_21(v58);
      v10 = v60;
    }

    else
    {
      v59 = vback(v1, v57);
      v10 = 0;
    }

    v45 = v10;
    v29 = v10;
    v33 = v10;
    switch(v59)
    {
      case 2:
        continue;
      case 3:
        goto LABEL_8;
      case 4:
        v15 = v10;
        goto LABEL_9;
      case 5:
      case 11:
      case 19:
        goto LABEL_32;
      case 6:
        goto LABEL_11;
      case 7:
        v19 = v10;
        goto LABEL_21;
      case 8:
        v39 = v10;
        goto LABEL_22;
      case 9:
        goto LABEL_29;
      case 10:
        goto LABEL_30;
      case 12:
      case 25:
        goto LABEL_23;
      case 13:
        goto LABEL_26;
      case 14:
        v65 = advance_tok(v1);
        v45 = v10;
        v57 = v10;
        if (!v65)
        {
          goto LABEL_26;
        }

        goto LABEL_36;
      case 15:
        goto LABEL_13;
      case 16:
        savescptr(v1, 16, v91);
        OUTLINED_FUNCTION_2_44();
        v70 = test_string_s();
        v29 = v10;
        v57 = v10;
        if (!v70)
        {
          goto LABEL_19;
        }

        goto LABEL_36;
      case 17:
        goto LABEL_18;
      case 18:
        goto LABEL_19;
      case 20:
        v71 = OUTLINED_FUNCTION_1_44();
        v75 = testFldeq(v71, v72, v73, v74);
        v57 = v10;
        if (v75)
        {
          goto LABEL_36;
        }

        v76 = advance_tok(v1);
        v57 = v10;
        if (v76)
        {
          goto LABEL_36;
        }

        *(v1 + 168) = 1;
        *(v1 + 144) = v96;
        *(v1 + 128) = 0;
        insert_l(v1);
        goto LABEL_32;
      case 21:
        v66 = OUTLINED_FUNCTION_10_40();
        v69 = testFldeq(v66, v67, v68, 30);
        v57 = v10;
        if (v69)
        {
          goto LABEL_36;
        }

        goto LABEL_50;
      case 22:
        bspop_boa(v1);
        goto LABEL_50;
      case 23:
LABEL_50:
        v77 = advance_tok(v1);
        v33 = v10;
        v57 = v10;
        if (!v77)
        {
          goto LABEL_51;
        }

        goto LABEL_36;
      case 24:
        goto LABEL_51;
      case 26:
        v25 = v10;
        goto LABEL_15;
      case 27:
        goto LABEL_16;
      case 28:
        OUTLINED_FUNCTION_68_12();
        if (!v80)
        {
          goto LABEL_57;
        }

        goto LABEL_5;
      case 29:
        bspop_boa(v1);
        goto LABEL_5;
      case 30:
LABEL_57:
        lpta_loadpn(v1, v93);
        OUTLINED_FUNCTION_67_14();
        if (compare_ptas(v1) || testneq(v1))
        {
          goto LABEL_59;
        }

        goto LABEL_5;
      case 32:
LABEL_59:
        lpta_loadpn(v1, v92);
        OUTLINED_FUNCTION_67_14();
        if (compare_ptas(v1) || testneq(v1))
        {
          goto LABEL_61;
        }

        goto LABEL_5;
      case 33:
LABEL_61:
        lpta_loadpn(v1, v91);
        OUTLINED_FUNCTION_67_14();
        if (compare_ptas(v1) || testneq(v1))
        {
          goto LABEL_63;
        }

        strip_inner_adj_suffix(v1, v81, v82, v83, v84, v85, v86, v87);
        goto LABEL_5;
      case 34:
LABEL_63:
        lpta_loadpn(v1, v90);
        OUTLINED_FUNCTION_67_14();
        if (compare_ptas(v1) || testneq(v1))
        {
          goto LABEL_65;
        }

        split_final_compound(v1);
        goto LABEL_5;
      case 36:
LABEL_65:
        strip_ambig_suffix();
        if (v88)
        {
          goto LABEL_66;
        }

        goto LABEL_5;
      case 38:
LABEL_66:
        if (strip_ing(v1, v60, v45, v29, v61, v62, v63, v64))
        {
          goto LABEL_67;
        }

        goto LABEL_5;
      case 39:
LABEL_67:
        if (strip_inner_adj_suffix(v1, v60, v45, v29, v61, v62, v63, v64))
        {
          goto LABEL_68;
        }

        goto LABEL_5;
      case 40:
LABEL_68:
        strip_nounadj_suffix(v1, v60, v45, v29, v61, v62, v63, v64);
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

int *strip_outer_suffix(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v123 = *MEMORY[0x277D85DE8];
  v118 = 0;
  v119 = 0;
  OUTLINED_FUNCTION_7_41(a1, a2, a3, a4, a5, a6, a7, a8, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117);
  OUTLINED_FUNCTION_30_29();
  OUTLINED_FUNCTION_105_7(v10, v11);
  v12 = setjmp(v8);
  if (v12 || OUTLINED_FUNCTION_104_7(v12, &v89, v122, v121, v120))
  {
    goto LABEL_3;
  }

  v15 = OUTLINED_FUNCTION_53_16();
  push_ptr_init(v15, v16);
  v17 = OUTLINED_FUNCTION_42_20();
  push_ptr_init(v17, v18);
  v19 = OUTLINED_FUNCTION_33_26();
  push_ptr_init(v19, v20);
  v21 = OUTLINED_FUNCTION_32_27();
  v23 = push_ptr_init(v21, v22);
  OUTLINED_FUNCTION_71_12(v23, v24, &null_str_12);
  v25 = OUTLINED_FUNCTION_25_31();
  fence_44(v25, v26, v27);
  OUTLINED_FUNCTION_93_8();
  v28 = OUTLINED_FUNCTION_24_31();
  v30 = lpta_loadp_setscan_l(v28, v29);
  v31 = 0;
  if (!v30)
  {
    OUTLINED_FUNCTION_6_41();
    v32 = test_string_s();
    v33 = 0;
    v31 = 0;
    if (!v32)
    {
LABEL_6:
      v34 = v33;
      OUTLINED_FUNCTION_47_17();
      savescptr(a1, v35, &v116);
      OUTLINED_FUNCTION_2_44();
      v36 = test_string_s();
      v37 = v34;
      v38 = v34;
      if (v36)
      {
        goto LABEL_20;
      }

LABEL_7:
      OUTLINED_FUNCTION_62_15();
      v39 = OUTLINED_FUNCTION_36_23();
      savescptr(v39, v40, v41);
      v42 = OUTLINED_FUNCTION_35_25();
      if (lpta_loadp_setscan_l(v42, v43))
      {
        v44 = v37;
      }

      else
      {
        OUTLINED_FUNCTION_5_42();
        v45 = test_string_s();
        v44 = v37;
        if (!v45)
        {
LABEL_13:
          OUTLINED_FUNCTION_48_16(5, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114);
LABEL_14:
          OUTLINED_FUNCTION_60_15(6, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118);
          OUTLINED_FUNCTION_20_34();
LABEL_15:
          OUTLINED_FUNCTION_103_7();
          v52 = v51;
          goto LABEL_16;
        }
      }

LABEL_10:
      v8 = v44;
      v46 = OUTLINED_FUNCTION_41_20();
      lpta_rpta_loadp(v46, v47, v48);
      v49 = OUTLINED_FUNCTION_22_33();
      if (!setd_lookup(v49, v50, 389))
      {
        strip_ess();
        goto LABEL_3;
      }

      goto LABEL_15;
    }
  }

  while (2)
  {
    v67 = v31;
    v68 = OUTLINED_FUNCTION_17_37();
    starttest(v68, v69);
    v70 = OUTLINED_FUNCTION_4_42();
    if (lpta_loadp_setscan_l(v70, v71))
    {
      v64 = v67;
    }

    else
    {
      OUTLINED_FUNCTION_6_41();
      v72 = test_string_s();
      v63 = v67;
      v64 = v67;
      if (!v72)
      {
LABEL_32:
        v53 = v63;
        OUTLINED_FUNCTION_60_15(11, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118);
        OUTLINED_FUNCTION_21_33();
        bspush_ca_scan_boa();
        OUTLINED_FUNCTION_2_44();
        if (test_string_s() || (v77 = OUTLINED_FUNCTION_0_45(), testFldeq(v77, v78, v79, v80)))
        {
          v38 = v53;
          goto LABEL_20;
        }

        v56 = advance_tok(a1);
        goto LABEL_17;
      }
    }

LABEL_27:
    v8 = v64;
    v73 = OUTLINED_FUNCTION_4_42();
    if (lpta_loadp_setscan_l(v73, v74))
    {
      break;
    }

    OUTLINED_FUNCTION_3_43();
    v75 = test_string_s();
    v65 = v8;
    if (v75)
    {
      break;
    }

LABEL_29:
    v76 = v65;
    OUTLINED_FUNCTION_43_19(14, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112);
    v66 = v76;
LABEL_30:
    LODWORD(v8) = v66;
    OUTLINED_FUNCTION_60_15(15, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118);
LABEL_31:
    v52 = v8;
LABEL_16:
    v53 = v52;
    v54 = OUTLINED_FUNCTION_21_33();
    starttest(v54, v55);
    OUTLINED_FUNCTION_21_33();
    bspush_ca_boa();
    OUTLINED_FUNCTION_53_16();
    v56 = strip_suffix();
LABEL_17:
    if (v56)
    {
      v38 = v53;
    }

    else
    {
      v38 = 1;
    }

LABEL_20:
    v57 = *(a1 + 104);
    if (v57)
    {
      v58 = OUTLINED_FUNCTION_38_21(v57);
      v8 = v59;
    }

    else
    {
      v58 = vback(a1, v38);
      v8 = 0;
    }

    v33 = v8;
    v37 = v8;
    v60 = v8;
    v61 = v8;
    v44 = v8;
    v62 = v8;
    v31 = v8;
    v63 = v8;
    v64 = v8;
    v65 = v8;
    v66 = v8;
    v52 = v8;
    switch(v58)
    {
      case 1:
        continue;
      case 2:
        goto LABEL_6;
      case 3:
        goto LABEL_7;
      case 4:
        goto LABEL_10;
      case 5:
        goto LABEL_13;
      case 6:
        goto LABEL_14;
      case 7:
        goto LABEL_15;
      case 9:
        goto LABEL_16;
      case 10:
        goto LABEL_27;
      case 11:
        goto LABEL_32;
      case 12:
        bspop_boa(a1);
        OUTLINED_FUNCTION_20_34();
        *(a1 + 5966) = v81;
        *(a1 + 5978) = v81;
        goto LABEL_31;
      case 14:
        goto LABEL_29;
      case 15:
        goto LABEL_30;
      case 16:
        OUTLINED_FUNCTION_68_12();
        if (!v82)
        {
          goto LABEL_39;
        }

        goto LABEL_3;
      case 17:
        bspop_boa(a1);
        goto LABEL_3;
      case 18:
LABEL_39:
        v83 = OUTLINED_FUNCTION_33_26();
        lpta_loadpn(v83, v84);
        OUTLINED_FUNCTION_67_14();
        if (compare_ptas(a1) || testneq(a1))
        {
          goto LABEL_41;
        }

        goto LABEL_3;
      case 20:
LABEL_41:
        v85 = OUTLINED_FUNCTION_32_27();
        lpta_loadpn(v85, v86);
        OUTLINED_FUNCTION_67_14();
        if (compare_ptas(a1) || testneq(a1))
        {
          goto LABEL_43;
        }

        strip_ambig_suffix();
        goto LABEL_3;
      case 21:
LABEL_43:
        split_final_compound();
        if (v87)
        {
          goto LABEL_44;
        }

        goto LABEL_3;
      case 23:
LABEL_44:
        strip_ly_suffix();
        if (v88)
        {
          goto LABEL_45;
        }

        goto LABEL_3;
      case 24:
LABEL_45:
        if (strip_inner_adj_suffix(a1, v33, v60, v44, v31, v62, v61, v64))
        {
          goto LABEL_46;
        }

        goto LABEL_3;
      case 25:
LABEL_46:
        if (strip_nounadj_suffix(a1, v33, v60, v44, v31, v62, v61, v64))
        {
          goto LABEL_47;
        }

        goto LABEL_3;
      case 26:
LABEL_47:
        strip_ing(a1, v33, v60, v44, v31, v62, v61, v64);
        break;
      default:
        goto LABEL_3;
    }

    break;
  }

LABEL_3:
  OUTLINED_FUNCTION_94_8();
  v13 = *MEMORY[0x277D85DE8];
  return v8;
}

int *strip_pname_suffixes(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v381 = *MEMORY[0x277D85DE8];
  v376 = 0;
  v377 = 0;
  v374 = 0;
  v375 = 0;
  v372 = 0;
  v373 = 0;
  v370 = 0;
  v371 = 0;
  v368 = 0;
  v369 = 0;
  v366 = 0;
  v367 = 0;
  OUTLINED_FUNCTION_7_41(a1, a2, a3, a4, a5, a6, a7, a8, v337, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347, v348, v349, v350, v351, v352, v353, v354, v355, v356, v357, v358, v359, v360, v361, v362, v363, v364, v365);
  OUTLINED_FUNCTION_30_29();
  OUTLINED_FUNCTION_105_7(v10, v11);
  v12 = setjmp(v8);
  if (v12 || OUTLINED_FUNCTION_104_7(v12, &v337, v380, v379, v378))
  {
    goto LABEL_3;
  }

  push_ptr_init(a1, &v376);
  push_ptr_init(a1, &v374);
  push_ptr_init(a1, &v372);
  v15 = OUTLINED_FUNCTION_59_15();
  push_ptr_init(v15, v16);
  v17 = OUTLINED_FUNCTION_74_11();
  push_ptr_init(v17, v18);
  v19 = OUTLINED_FUNCTION_53_16();
  push_ptr_init(v19, v20);
  v21 = OUTLINED_FUNCTION_42_20();
  push_ptr_init(v21, v22);
  v23 = OUTLINED_FUNCTION_33_26();
  push_ptr_init(v23, v24);
  v25 = OUTLINED_FUNCTION_32_27();
  v27 = push_ptr_init(v25, v26);
  v8 = 0;
  OUTLINED_FUNCTION_71_12(v27, v28, &null_str_12);
  v29 = OUTLINED_FUNCTION_25_31();
  fence_44(v29, v30, v31);
  OUTLINED_FUNCTION_93_8();
  v32 = OUTLINED_FUNCTION_24_31();
  if (!lpta_loadp_setscan_l(v32, v33))
  {
    v70 = OUTLINED_FUNCTION_21_33();
    bspush_ca_scan(v70, v71);
    OUTLINED_FUNCTION_3_43();
    v72 = test_string_s();
    LODWORD(v8) = 0;
    v73 = 0;
    if (v72)
    {
      goto LABEL_38;
    }

LABEL_23:
    LODWORD(v40) = v73;
    OUTLINED_FUNCTION_62_15();
    v74 = OUTLINED_FUNCTION_36_23();
    savescptr(v74, v75, v76);
    v77 = OUTLINED_FUNCTION_21_33();
    starttest(v77, v78);
    OUTLINED_FUNCTION_21_33();
    bspush_ca_boa();
    OUTLINED_FUNCTION_35_25();
    goto LABEL_34;
  }

  while (2)
  {
    v34 = OUTLINED_FUNCTION_21_33();
    starttest(v34, v35);
    v36 = OUTLINED_FUNCTION_4_42();
    if (!lpta_loadp_setscan_l(v36, v37))
    {
      v61 = OUTLINED_FUNCTION_91_9();
      bspush_ca_scan(v61, v62);
      OUTLINED_FUNCTION_22_33();
      v63 = test_string_s();
      v64 = v8;
      if (v63)
      {
        goto LABEL_38;
      }

LABEL_18:
      LODWORD(v40) = v64;
      v65 = 8;
LABEL_21:
      OUTLINED_FUNCTION_80_11(v65, v337, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347, v348, v349, v350, v351, v352, v353, v354, v355, v356, v357, v358, v359, v360, v361, v362, v363, v364, v365, v366, v367, v368, v369, v370, v371, v372, v373, v374, v375, v376);
LABEL_33:
      v96 = OUTLINED_FUNCTION_21_33();
      starttest(v96, v97);
      OUTLINED_FUNCTION_21_33();
      bspush_ca_boa();
LABEL_34:
      v98 = strip_suffix();
LABEL_35:
      if (v98)
      {
        LODWORD(v8) = v40;
      }

      else
      {
        LODWORD(v8) = 1;
      }

      goto LABEL_38;
    }

LABEL_6:
    v38 = OUTLINED_FUNCTION_4_42();
    if (!lpta_loadp_setscan_l(v38, v39))
    {
      OUTLINED_FUNCTION_6_41();
      v40 = v8;
      if (!test_string_s())
      {
LABEL_193:
        v312 = OUTLINED_FUNCTION_36_23();
        savescptr(v312, v313, v314);
        v315 = OUTLINED_FUNCTION_21_33();
        starttest(v315, v316);
        v317 = OUTLINED_FUNCTION_35_25();
        if (lpta_loadp_setscan_l(v317, v318))
        {
          LODWORD(v8) = v40;
LABEL_195:
          v319 = OUTLINED_FUNCTION_21_33();
          starttest(v319, v320);
          OUTLINED_FUNCTION_21_33();
          bspush_ca_boa();
          v321 = OUTLINED_FUNCTION_23_33();
          v323 = lpta_loadp_setscan_l(v321, v322);
          v103 = v8;
          if (!v323)
          {
LABEL_196:
            LODWORD(v8) = v103;
            v324 = OUTLINED_FUNCTION_21_33();
            bspush_ca_scan(v324, v325);
LABEL_197:
            OUTLINED_FUNCTION_21_33();
            bspush_ca_scan_boa();
            v326 = OUTLINED_FUNCTION_0_45();
            v330 = testFldeq(v326, v327, v328, v329);
            goto LABEL_204;
          }

          goto LABEL_38;
        }

LABEL_198:
        v331 = OUTLINED_FUNCTION_21_33();
        bspush_ca_scan(v331, v332);
        OUTLINED_FUNCTION_2_44();
        v8 = v40;
        if (!test_string_s())
        {
          goto LABEL_3;
        }

        goto LABEL_38;
      }
    }

LABEL_8:
    v41 = OUTLINED_FUNCTION_4_42();
    if (!lpta_loadp_setscan_l(v41, v42))
    {
      OUTLINED_FUNCTION_6_41();
      v40 = v8;
      if (!test_string_s())
      {
LABEL_184:
        v287 = OUTLINED_FUNCTION_36_23();
        savescptr(v287, v288, v289);
        v290 = OUTLINED_FUNCTION_21_33();
        starttest(v290, v291);
        v292 = OUTLINED_FUNCTION_35_25();
        if (lpta_loadp_setscan_l(v292, v293))
        {
LABEL_185:
          v294 = OUTLINED_FUNCTION_23_33();
          if (!lpta_loadp_setscan_l(v294, v295))
          {
            OUTLINED_FUNCTION_2_44();
            LODWORD(v8) = v40;
            if (!test_string_s())
            {
LABEL_187:
              LODWORD(v40) = v8;
              v296 = OUTLINED_FUNCTION_36_23();
              savescptr(v296, v297, v298);
              v299 = OUTLINED_FUNCTION_21_33();
              starttest(v299, v300);
              v301 = OUTLINED_FUNCTION_35_25();
              if (!lpta_loadp_setscan_l(v301, v302))
              {
                v303 = OUTLINED_FUNCTION_21_33();
                bspush_ca_scan(v303, v304);
                OUTLINED_FUNCTION_5_42();
                if (test_string_s())
                {
                  goto LABEL_16;
                }

                v305 = OUTLINED_FUNCTION_0_45();
                if (testFldeq(v305, v306, v307, v308))
                {
                  goto LABEL_16;
                }

                OUTLINED_FUNCTION_21_33();
                bspush_ca_scan_boa();
                v309 = OUTLINED_FUNCTION_10_40();
                v98 = testFldeq(v309, v310, v311, 19);
                goto LABEL_35;
              }
            }
          }

          goto LABEL_33;
        }

        goto LABEL_198;
      }
    }

LABEL_10:
    v43 = OUTLINED_FUNCTION_21_33();
    starttest(v43, v44);
    v45 = OUTLINED_FUNCTION_4_42();
    if (!lpta_loadp_setscan_l(v45, v46))
    {
      OUTLINED_FUNCTION_2_44();
      if (!test_string_s())
      {
        v88 = OUTLINED_FUNCTION_21_33();
        bspush_ca_scan(v88, v89);
        OUTLINED_FUNCTION_2_44();
        v90 = test_string_s();
        v91 = v8;
        if (v90)
        {
          goto LABEL_38;
        }

LABEL_29:
        v8 = v91;
        OUTLINED_FUNCTION_2_44();
        v40 = v8;
        if (!test_string_s())
        {
LABEL_175:
          v271 = OUTLINED_FUNCTION_36_23();
          savescptr(v271, v272, v273);
          v274 = OUTLINED_FUNCTION_21_33();
          starttest(v274, v275);
          v276 = OUTLINED_FUNCTION_35_25();
          if (lpta_loadp_setscan_l(v276, v277))
          {
            goto LABEL_33;
          }

          v278 = OUTLINED_FUNCTION_21_33();
          bspush_ca_scan(v278, v279);
          v280 = OUTLINED_FUNCTION_21_33();
          bspush_ca_scan(v280, v281);
          v282 = OUTLINED_FUNCTION_10_40();
          v285 = testFldeq(v282, v283, v284, 25);
          v104 = v40;
          LODWORD(v8) = v40;
          if (v285)
          {
            goto LABEL_38;
          }

LABEL_177:
          v8 = v104;
          goto LABEL_178;
        }

        goto LABEL_38;
      }
    }

LABEL_12:
    v47 = OUTLINED_FUNCTION_21_33();
    starttest(v47, v48);
    v49 = OUTLINED_FUNCTION_4_42();
    if (!lpta_loadp_setscan_l(v49, v50))
    {
      v66 = OUTLINED_FUNCTION_21_33();
      bspush_ca_scan(v66, v67);
      OUTLINED_FUNCTION_22_33();
      v68 = test_string_s();
      v69 = v8;
      if (v68)
      {
        goto LABEL_38;
      }

LABEL_20:
      LODWORD(v40) = v69;
      v65 = 63;
      goto LABEL_21;
    }

LABEL_13:
    v51 = OUTLINED_FUNCTION_21_33();
    starttest(v51, v52);
    v53 = OUTLINED_FUNCTION_4_42();
    if (!lpta_loadp_setscan_l(v53, v54))
    {
      v79 = OUTLINED_FUNCTION_21_33();
      bspush_ca_scan(v79, v80);
      v81 = OUTLINED_FUNCTION_21_33();
      bspush_ca_scan(v81, v82);
      v83 = v8;
LABEL_25:
      LODWORD(v8) = v83;
      OUTLINED_FUNCTION_2_44();
      v84 = test_string_s();
      v85 = v8;
      if (!v84)
      {
LABEL_26:
        LODWORD(v8) = v85;
        OUTLINED_FUNCTION_95_8(69, v337, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347, v348, v349, v350, v351, v352, v353, v354, v355, v356, v357, v358, v359, v360, v361, v362, v363, v364, v365, v366, v367, v368, v369, v370, v371, v372);
        OUTLINED_FUNCTION_5_42();
        v86 = test_string_s();
        v87 = v8;
        if (v86)
        {
          goto LABEL_38;
        }

LABEL_202:
        LODWORD(v8) = v87;
        OUTLINED_FUNCTION_80_11(70, v337, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347, v348, v349, v350, v351, v352, v353, v354, v355, v356, v357, v358, v359, v360, v361, v362, v363, v364, v365, v366, v367, v368, v369, v370, v371, v372, v373, v374, v375, v376);
        OUTLINED_FUNCTION_21_33();
        bspush_ca_scan_boa();
        v333 = OUTLINED_FUNCTION_0_45();
        if (!testFldeq(v333, v334, v335, v336))
        {
          v330 = advance_tok(a1);
LABEL_204:
          if (!v330)
          {
            LODWORD(v8) = 1;
          }

          goto LABEL_38;
        }
      }

      goto LABEL_38;
    }

LABEL_14:
    LODWORD(v40) = v8;
    v55 = OUTLINED_FUNCTION_21_33();
    starttest(v55, v56);
    v57 = OUTLINED_FUNCTION_4_42();
    if (!lpta_loadp_setscan_l(v57, v58))
    {
      v59 = OUTLINED_FUNCTION_21_33();
      bspush_ca_scan(v59, v60);
      OUTLINED_FUNCTION_6_41();
      if (test_string_s())
      {
LABEL_16:
        LODWORD(v8) = v40;
        goto LABEL_38;
      }

      v92 = OUTLINED_FUNCTION_21_33();
      bspush_ca_scan(v92, v93);
      OUTLINED_FUNCTION_2_44();
      v94 = test_string_s();
      v95 = v8;
      if (!v94)
      {
LABEL_151:
        v8 = v95;
        OUTLINED_FUNCTION_80_11(80, v337, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347, v348, v349, v350, v351, v352, v353, v354, v355, v356, v357, v358, v359, v360, v361, v362, v363, v364, v365, v366, v367, v368, v369, v370, v371, v372, v373, v374, v375, v376);
        v231 = OUTLINED_FUNCTION_74_11();
        lpta_loadpn(v231, v232);
        OUTLINED_FUNCTION_67_14();
        if (compare_ptas(a1) || testneq(a1))
        {
LABEL_153:
          v233 = OUTLINED_FUNCTION_53_16();
          lpta_loadpn(v233, v234);
          OUTLINED_FUNCTION_67_14();
          if (compare_ptas(a1) || testneq(a1))
          {
LABEL_155:
            v235 = OUTLINED_FUNCTION_42_20();
            lpta_loadpn(v235, v236);
            OUTLINED_FUNCTION_67_14();
            if (compare_ptas(a1) || testneq(a1))
            {
LABEL_157:
              v237 = OUTLINED_FUNCTION_33_26();
              lpta_loadpn(v237, v238);
              OUTLINED_FUNCTION_67_14();
              if (compare_ptas(a1) || testneq(a1))
              {
LABEL_159:
                v239 = OUTLINED_FUNCTION_32_27();
                lpta_loadpn(v239, v240);
                OUTLINED_FUNCTION_67_14();
                if (!compare_ptas(a1) && !testneq(a1))
                {
                  v241 = OUTLINED_FUNCTION_21_33();
                  starttest(v241, v242);
                  v243 = OUTLINED_FUNCTION_23_33();
                  if (!lpta_loadp_setscan_l(v243, v244))
                  {
                    OUTLINED_FUNCTION_21_33();
                    bspush_ca_scan_boa();
                    v245 = OUTLINED_FUNCTION_21_33();
                    bspush_ca_scan(v245, v246);
                    OUTLINED_FUNCTION_2_44();
                    if (!test_string_s())
                    {
LABEL_163:
                      LODWORD(v8) = 1;
                    }

                    goto LABEL_38;
                  }
                }

                goto LABEL_173;
              }

              v267 = OUTLINED_FUNCTION_21_33();
              starttest(v267, v268);
              v269 = OUTLINED_FUNCTION_23_33();
              if (lpta_loadp_setscan_l(v269, v270))
              {
LABEL_173:
                LODWORD(v40) = v8;
                goto LABEL_33;
              }

              goto LABEL_197;
            }

            v261 = OUTLINED_FUNCTION_21_33();
            starttest(v261, v262);
            v263 = OUTLINED_FUNCTION_23_33();
            if (lpta_loadp_setscan_l(v263, v264))
            {
              goto LABEL_173;
            }

            v265 = OUTLINED_FUNCTION_21_33();
            bspush_ca_scan(v265, v266);
            v257 = OUTLINED_FUNCTION_1_44();
            goto LABEL_170;
          }

          v253 = OUTLINED_FUNCTION_21_33();
          starttest(v253, v254);
          v255 = OUTLINED_FUNCTION_23_33();
          if (lpta_loadp_setscan_l(v255, v256))
          {
            goto LABEL_173;
          }
        }

        else
        {
          v247 = OUTLINED_FUNCTION_21_33();
          starttest(v247, v248);
          v249 = OUTLINED_FUNCTION_23_33();
          if (lpta_loadp_setscan_l(v249, v250))
          {
            goto LABEL_173;
          }

          v251 = OUTLINED_FUNCTION_21_33();
          bspush_ca_scan(v251, v252);
        }

        v257 = OUTLINED_FUNCTION_0_45();
LABEL_170:
        if (testFldeq(v257, v258, v259, v260))
        {
          goto LABEL_38;
        }

LABEL_178:
        if (!advance_tok(a1))
        {
          goto LABEL_3;
        }
      }

LABEL_38:
      v99 = v8;
LABEL_39:
      v100 = *(a1 + 104);
      if (v100)
      {
        v101 = OUTLINED_FUNCTION_38_21(v100);
        v8 = v102;
      }

      else
      {
        v101 = vback(a1, v99);
        v8 = 0;
      }

      v73 = v8;
      v64 = v8;
      v103 = v8;
      v91 = v8;
      v104 = v8;
      v69 = v8;
      v83 = v8;
      v85 = v8;
      v95 = v8;
      LODWORD(v40) = v8;
      switch(v101)
      {
        case 1:
          continue;
        case 2:
          OUTLINED_FUNCTION_18_36();
          v157 = test_string_s();
          v73 = v8;
          v99 = v8;
          if (!v157)
          {
            goto LABEL_23;
          }

          goto LABEL_39;
        case 3:
          goto LABEL_23;
        case 4:
          OUTLINED_FUNCTION_68_12();
          if (!v286)
          {
            continue;
          }

          goto LABEL_3;
        case 5:
        case 22:
        case 117:
        case 121:
          bspop_boa(a1);
          goto LABEL_3;
        case 6:
          goto LABEL_6;
        case 7:
          v175 = OUTLINED_FUNCTION_16_39();
          bspush_ca_scan(v175, v176);
          goto LABEL_83;
        case 8:
          goto LABEL_18;
        case 9:
          v177 = OUTLINED_FUNCTION_17_37();
          bspush_ca_scan(v177, v178);
          goto LABEL_83;
        case 10:
          v173 = OUTLINED_FUNCTION_21_33();
          bspush_ca_scan(v173, v174);
LABEL_83:
          OUTLINED_FUNCTION_3_43();
          goto LABEL_93;
        case 11:
          v134 = OUTLINED_FUNCTION_21_33();
          bspush_ca_scan(v134, v135);
          OUTLINED_FUNCTION_6_41();
          goto LABEL_93;
        case 12:
        case 13:
          v155 = OUTLINED_FUNCTION_21_33();
          bspush_ca_scan(v155, v156);
          goto LABEL_92;
        case 14:
LABEL_92:
          OUTLINED_FUNCTION_18_36();
LABEL_93:
          v181 = test_string_s();
          v64 = v8;
          v99 = v8;
          if (!v181)
          {
            goto LABEL_18;
          }

          goto LABEL_39;
        case 15:
        case 21:
        case 44:
        case 46:
        case 55:
        case 72:
        case 102:
        case 106:
        case 108:
        case 110:
        case 114:
        case 116:
          goto LABEL_33;
        case 16:
          goto LABEL_8;
        case 17:
          v40 = v8;
          goto LABEL_193;
        case 18:
          goto LABEL_195;
        case 19:
        case 60:
        case 105:
        case 111:
          goto LABEL_88;
        case 23:
          goto LABEL_196;
        case 24:
          v131 = advance_tok(a1);
          v103 = v8;
          v99 = v8;
          if (!v131)
          {
            goto LABEL_196;
          }

          goto LABEL_39;
        case 25:
          bspop_boa(a1);
          v160 = advance_tok(a1);
          v99 = v8;
          if (v160)
          {
            goto LABEL_39;
          }

          goto LABEL_75;
        case 26:
LABEL_75:
          v161 = OUTLINED_FUNCTION_0_45();
          v165 = testFldeq(v161, v162, v163, v164);
          v99 = v8;
          if (v165)
          {
            goto LABEL_39;
          }

          v166 = advance_tok(a1);
          v99 = v8;
          if (v166)
          {
            goto LABEL_39;
          }

          v167 = OUTLINED_FUNCTION_21_33();
          bspush_ca_scan(v167, v168);
          OUTLINED_FUNCTION_21_33();
          bspush_ca_scan_boa();
          v169 = OUTLINED_FUNCTION_0_45();
          goto LABEL_115;
        case 27:
          bspop_boa(a1);
          goto LABEL_120;
        case 28:
          goto LABEL_10;
        case 29:
          v40 = v8;
          goto LABEL_184;
        case 30:
          LODWORD(v40) = v8;
          goto LABEL_185;
        case 31:
        case 33:
        case 34:
        case 103:
          v158 = OUTLINED_FUNCTION_21_33();
          bspush_ca_scan(v158, v159);
          goto LABEL_88;
        case 35:
          v182 = OUTLINED_FUNCTION_21_33();
          bspush_ca_scan(v182, v183);
          OUTLINED_FUNCTION_5_42();
          goto LABEL_89;
        case 36:
          v125 = OUTLINED_FUNCTION_21_33();
          bspush_ca_scan(v125, v126);
          v127 = OUTLINED_FUNCTION_21_33();
          bspush_ca_scan(v127, v128);
          v129 = OUTLINED_FUNCTION_21_33();
          bspush_ca_scan(v129, v130);
          goto LABEL_84;
        case 37:
        case 56:
          v141 = OUTLINED_FUNCTION_21_33();
          bspush_ca_scan(v141, v142);
          OUTLINED_FUNCTION_6_41();
          goto LABEL_89;
        case 38:
          goto LABEL_135;
        case 39:
LABEL_84:
          OUTLINED_FUNCTION_2_44();
          v179 = test_string_s();
          v99 = v8;
          if (v179)
          {
            goto LABEL_39;
          }

LABEL_135:
          while (1)
          {
            v225 = OUTLINED_FUNCTION_1_44();
            if (testFldeq(v225, v226, v227, v228) || advance_tok(a1))
            {
              break;
            }

            v223 = OUTLINED_FUNCTION_21_33();
            bspush_ca_scan(v223, v224);
          }

          goto LABEL_38;
        case 40:
        case 41:
          goto LABEL_43;
        case 42:
          v143 = OUTLINED_FUNCTION_0_45();
          v147 = testFldeq(v143, v144, v145, v146);
          v99 = v8;
          if (v147)
          {
            goto LABEL_39;
          }

          v148 = advance_tok(a1);
          v99 = v8;
          if (v148)
          {
            goto LABEL_39;
          }

LABEL_43:
          v105 = OUTLINED_FUNCTION_21_33();
          bspush_ca_scan(v105, v106);
          OUTLINED_FUNCTION_88_10();
          v107 = *(a1 + 1648);
          v108 = OUTLINED_FUNCTION_26_31();
          v109 = test_ptr(v108);
          goto LABEL_90;
        case 43:
          OUTLINED_FUNCTION_3_43();
          goto LABEL_89;
        case 45:
          goto LABEL_187;
        case 47:
          OUTLINED_FUNCTION_5_42();
          v132 = test_string_s();
          goto LABEL_107;
        case 48:
          bspop_boa(a1);
          OUTLINED_FUNCTION_21_33();
          bspush_ca_scan_boa();
          v169 = OUTLINED_FUNCTION_10_40();
          v172 = 24;
          goto LABEL_115;
        case 49:
          bspop_boa(a1);
          v132 = advance_tok(a1);
LABEL_107:
          v99 = v8;
          if (!v132)
          {
            goto LABEL_140;
          }

          goto LABEL_39;
        case 50:
LABEL_140:
          v377 = v375;
          goto LABEL_173;
        case 51:
          goto LABEL_12;
        case 52:
          OUTLINED_FUNCTION_2_44();
          v133 = test_string_s();
          v91 = v8;
          v99 = v8;
          if (!v133)
          {
            goto LABEL_29;
          }

          goto LABEL_39;
        case 53:
          goto LABEL_29;
        case 54:
          v40 = v8;
          goto LABEL_175;
        case 57:
          v136 = OUTLINED_FUNCTION_1_44();
          v140 = testFldeq(v136, v137, v138, v139);
          v104 = v8;
          v99 = v8;
          if (!v140)
          {
            goto LABEL_177;
          }

          goto LABEL_39;
        case 58:
          goto LABEL_177;
        case 61:
          goto LABEL_13;
        case 62:
          OUTLINED_FUNCTION_18_36();
          v180 = test_string_s();
          v69 = v8;
          v99 = v8;
          if (!v180)
          {
            goto LABEL_20;
          }

          goto LABEL_39;
        case 63:
          goto LABEL_20;
        case 64:
          goto LABEL_14;
        case 65:
          OUTLINED_FUNCTION_2_44();
          v116 = test_string_s();
          v85 = v8;
          v99 = v8;
          if (!v116)
          {
            goto LABEL_26;
          }

          goto LABEL_39;
        case 66:
          v117 = OUTLINED_FUNCTION_21_33();
          bspush_ca_scan(v117, v118);
          goto LABEL_109;
        case 67:
          goto LABEL_25;
        case 68:
LABEL_109:
          OUTLINED_FUNCTION_2_44();
          v200 = test_string_s();
          v83 = v8;
          v99 = v8;
          if (!v200)
          {
            goto LABEL_25;
          }

          goto LABEL_39;
        case 69:
          goto LABEL_26;
        case 70:
          v87 = v8;
          goto LABEL_202;
        case 71:
          bspop_boa(a1);
          v184 = OUTLINED_FUNCTION_21_33();
          starttest(v184, v185);
          v186 = OUTLINED_FUNCTION_23_33();
          if (lpta_loadp_setscan_l(v186, v187))
          {
            goto LABEL_173;
          }

          goto LABEL_97;
        case 73:
LABEL_97:
          v188 = OUTLINED_FUNCTION_75_11();
          savescptr(v188, v189, v190);
          v191 = advance_tok(a1);
          v99 = v8;
          if (v191)
          {
            goto LABEL_39;
          }

          v192 = advance_tok(a1);
          v99 = v8;
          if (v192)
          {
            goto LABEL_39;
          }

          v193 = OUTLINED_FUNCTION_1_44();
          v197 = testFldeq(v193, v194, v195, v196);
          v99 = v8;
          if (v197)
          {
            goto LABEL_39;
          }

          OUTLINED_FUNCTION_21_33();
          bspush_ca_scan_boa();
          v169 = OUTLINED_FUNCTION_10_40();
          v172 = 3;
LABEL_115:
          v112 = testFldeq(v169, v170, v171, v172);
          goto LABEL_121;
        case 74:
          bspop_boa(a1);
          v201 = advance_tok(a1);
          v99 = v8;
          if (v201)
          {
            goto LABEL_39;
          }

          v202 = OUTLINED_FUNCTION_23_33();
          v204 = lpta_loadp_setscan_r(v202, v203);
          v99 = v8;
          if (v204)
          {
            goto LABEL_39;
          }

LABEL_88:
          OUTLINED_FUNCTION_2_44();
LABEL_89:
          v109 = test_string_s();
          goto LABEL_90;
        case 75:
        case 120:
          goto LABEL_141;
        case 76:
          v149 = OUTLINED_FUNCTION_21_33();
          bspush_ca_scan(v149, v150);
          v151 = OUTLINED_FUNCTION_21_33();
          bspush_ca_scan(v151, v152);
          v153 = OUTLINED_FUNCTION_21_33();
          bspush_ca_scan(v153, v154);
          goto LABEL_128;
        case 77:
          OUTLINED_FUNCTION_2_44();
          v111 = test_string_s();
          v99 = v8;
          if (v111)
          {
            goto LABEL_39;
          }

          OUTLINED_FUNCTION_21_33();
          bspush_ca_scan_boa();
          OUTLINED_FUNCTION_2_44();
          v112 = test_string_s();
          goto LABEL_121;
        case 78:
        case 80:
          goto LABEL_151;
        case 79:
        case 100:
          bspop_boa(a1);
          goto LABEL_150;
        case 81:
          v113 = OUTLINED_FUNCTION_21_33();
          bspush_ca_scan(v113, v114);
          OUTLINED_FUNCTION_3_43();
          v115 = test_string_s();
          v99 = v8;
          if (v115)
          {
            goto LABEL_39;
          }

          goto LABEL_148;
        case 82:
          v212 = OUTLINED_FUNCTION_21_33();
          bspush_ca_scan(v212, v213);
          v214 = OUTLINED_FUNCTION_21_33();
          bspush_ca_scan(v214, v215);
          goto LABEL_125;
        case 83:
LABEL_128:
          OUTLINED_FUNCTION_2_44();
          v220 = test_string_s();
          v99 = v8;
          if (!v220)
          {
            goto LABEL_129;
          }

          goto LABEL_39;
        case 84:
LABEL_129:
          OUTLINED_FUNCTION_5_42();
          v221 = test_string_s();
          v99 = v8;
          if (!v221)
          {
            goto LABEL_130;
          }

          goto LABEL_39;
        case 85:
LABEL_130:
          v218 = 85;
          v219 = &v368;
          goto LABEL_131;
        case 86:
          goto LABEL_132;
        case 87:
        case 89:
          goto LABEL_125;
        case 88:
          OUTLINED_FUNCTION_2_44();
          v205 = test_string_s();
          v99 = v8;
          if (v205)
          {
            goto LABEL_39;
          }

LABEL_125:
          OUTLINED_FUNCTION_2_44();
          v216 = test_string_s();
          v99 = v8;
          if (!v216)
          {
            goto LABEL_126;
          }

          goto LABEL_39;
        case 90:
LABEL_126:
          OUTLINED_FUNCTION_5_42();
          v217 = test_string_s();
          v99 = v8;
          if (!v217)
          {
            goto LABEL_127;
          }

          goto LABEL_39;
        case 91:
LABEL_127:
          v218 = 91;
          v219 = &v366;
LABEL_131:
          savescptr(a1, v218, v219);
LABEL_132:
          OUTLINED_FUNCTION_2_44();
          v222 = test_string_s();
          v95 = v8;
          v99 = v8;
          if (!v222)
          {
            goto LABEL_151;
          }

          goto LABEL_39;
        case 92:
          v119 = OUTLINED_FUNCTION_21_33();
          bspush_ca_scan(v119, v120);
          v121 = OUTLINED_FUNCTION_21_33();
          bspush_ca_scan(v121, v122);
          v123 = OUTLINED_FUNCTION_21_33();
          bspush_ca_scan(v123, v124);
          OUTLINED_FUNCTION_6_41();
          goto LABEL_102;
        case 93:
LABEL_148:
          v229 = 93;
          v230 = &v364;
          goto LABEL_149;
        case 94:
          OUTLINED_FUNCTION_3_43();
          v206 = test_string_s();
          v99 = v8;
          if (v206)
          {
            goto LABEL_39;
          }

          goto LABEL_119;
        case 95:
          OUTLINED_FUNCTION_3_43();
          goto LABEL_104;
        case 96:
          OUTLINED_FUNCTION_5_42();
LABEL_102:
          v198 = test_string_s();
          v99 = v8;
          if (!v198)
          {
            goto LABEL_103;
          }

          goto LABEL_39;
        case 97:
LABEL_103:
          OUTLINED_FUNCTION_2_44();
LABEL_104:
          v199 = test_string_s();
          v99 = v8;
          if (!v199)
          {
            goto LABEL_139;
          }

          goto LABEL_39;
        case 98:
LABEL_139:
          v229 = 98;
          v230 = &v362;
LABEL_149:
          savescptr(a1, v229, v230);
LABEL_150:
          v95 = v8;
          goto LABEL_151;
        case 99:
LABEL_119:
          OUTLINED_FUNCTION_43_19(99, v337, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347, v348, v349, v350, v351, v352, v353, v354, v355, v356, v357, v358, v359, v360);
          OUTLINED_FUNCTION_21_33();
          bspush_ca_scan_boa();
          v207 = OUTLINED_FUNCTION_1_44();
          v211 = testFldeq(v207, v208, v209, v210);
          v99 = v8;
          if (!v211)
          {
LABEL_120:
            v112 = advance_tok(a1);
LABEL_121:
            if (v112)
            {
              v99 = v8;
            }

            else
            {
              v99 = 1;
            }
          }

          goto LABEL_39;
        case 101:
          goto LABEL_153;
        case 107:
          goto LABEL_155;
        case 109:
          goto LABEL_157;
        case 113:
          goto LABEL_159;
        case 115:
          bspop_boa(a1);
          v109 = advance_tok(a1);
LABEL_90:
          v99 = v8;
          if (!v109)
          {
            goto LABEL_3;
          }

          goto LABEL_39;
        case 118:
          OUTLINED_FUNCTION_2_44();
          v110 = test_string_s();
          v99 = v8;
          if (!v110)
          {
            goto LABEL_163;
          }

          goto LABEL_39;
        case 119:
          goto LABEL_163;
        case 122:
          goto LABEL_142;
        case 123:
          goto LABEL_143;
        default:
          goto LABEL_3;
      }
    }

    break;
  }

LABEL_141:
  if (*(a1 + 5970))
  {
LABEL_142:
    *(a1 + 5950) = 0;
    if (*(a1 + 5946) != 1)
    {
LABEL_143:
      lpta_loadpn(a1, &v374);
      OUTLINED_FUNCTION_67_14();
      if (!compare_ptas(a1) && !testeq(a1))
      {
        strip_s();
      }
    }
  }

LABEL_3:
  OUTLINED_FUNCTION_94_8();
  v13 = *MEMORY[0x277D85DE8];
  return v8;
}