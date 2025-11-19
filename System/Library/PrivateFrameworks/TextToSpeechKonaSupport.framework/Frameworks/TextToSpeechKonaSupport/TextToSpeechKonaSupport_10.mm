uint64_t disambiguate_a()
{
  OUTLINED_FUNCTION_22_21();
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_18_23(v4, v5, v6, v7, v8, v9, v10, v11, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118, v121, v124, v127, v130, v133, v136, v139, v142, v145, v148, v151, v154, v157, v160, v163, v166, v169);
  OUTLINED_FUNCTION_62_6(v12, v13, v14, v15, v16, v17, v18, v19, v92, v95, v98, v101, v104, v107, v110, v113, v116, v119, v122, v125, v128, v131, v134, v137, v140, v143, v146, v149, v152, v155, v158, v161, v164, v167, v170, v172, v174, v176, v178, v180);
  v20 = setjmp(v2);
  if (v20 || OUTLINED_FUNCTION_17_24(v20, v21, v22, v23, v24, v25, v26, v27, v93, v96, v99, v102, v105, v108, v111, v114, v117, v120, v123, v126, v129, v132, v135, v138, v141, v144, v147, v150, v153, v156, v159, v162, v165, v168, v171, *v173, v173[4], *v175, *&v175[4], v175[6], v177, SWORD2(v177), SBYTE6(v177), SHIBYTE(v177), v179, v181))
  {
    goto LABEL_3;
  }

  v30 = OUTLINED_FUNCTION_76_6();
  OUTLINED_FUNCTION_110_1(v30, v31);
  OUTLINED_FUNCTION_53_7();
  fence_29(v0, 0, &null_str_8);
  v32 = OUTLINED_FUNCTION_24_21();
  fence_29(v32, v33, v34);
  v35 = OUTLINED_FUNCTION_97_3();
  starttest(v35, v36);
  v37 = OUTLINED_FUNCTION_66_6();
  if (!lpta_loadp_setscan_r(v37, v38))
  {
    v47 = OUTLINED_FUNCTION_78_6();
    bspush_ca_scan(v47, v48);
    v43 = OUTLINED_FUNCTION_79_6();
    v45 = v1;
    v46 = v1;
    goto LABEL_9;
  }

  while (2)
  {
    v39 = OUTLINED_FUNCTION_31_16();
    starttest(v39, v40);
    v41 = OUTLINED_FUNCTION_80_5();
    if (!lpta_loadp_setscan_r(v41, v42))
    {
      v43 = OUTLINED_FUNCTION_14_26();
      v46 = 33;
      goto LABEL_9;
    }

LABEL_15:
    v53 = OUTLINED_FUNCTION_47_8();
    starttest(v53, v54);
    v55 = OUTLINED_FUNCTION_80_5();
    if (!lpta_loadp_setscan_r(v55, v56))
    {
      v75 = OUTLINED_FUNCTION_1_31();
      if (testFldeq(v75, v76, v77, v78))
      {
        goto LABEL_10;
      }

      v43 = OUTLINED_FUNCTION_28_17();
      v46 = 2;
      goto LABEL_9;
    }

LABEL_16:
    v57 = OUTLINED_FUNCTION_46_8();
    starttest(v57, v58);
    v59 = OUTLINED_FUNCTION_80_5();
    if (!lpta_loadp_setscan_r(v59, v60))
    {
      v43 = OUTLINED_FUNCTION_14_26();
      v46 = 12;
      goto LABEL_9;
    }

LABEL_17:
    v61 = OUTLINED_FUNCTION_34_14();
    starttest(v61, v62);
    v63 = OUTLINED_FUNCTION_80_5();
    if (!lpta_loadp_setscan_r(v63, v64))
    {
      v43 = OUTLINED_FUNCTION_15_26();
      v46 = 6;
LABEL_9:
      if (testFldeq(v43, v44, v45, v46))
      {
        goto LABEL_10;
      }

LABEL_28:
      if (!advance_tok(v0))
      {
        v79 = 2074;
        goto LABEL_33;
      }

LABEL_10:
      v49 = *(v0 + 104);
      if (v49)
      {
        v50 = OUTLINED_FUNCTION_87_4(v49);
      }

      else
      {
        v51 = OUTLINED_FUNCTION_90_4();
        v50 = vback(v51, v52);
      }

      switch(v50)
      {
        case 1:
          continue;
        case 2:
          v43 = OUTLINED_FUNCTION_4_29();
          goto LABEL_9;
        case 3:
          goto LABEL_28;
        case 4:
          v81 = 0;
          goto LABEL_37;
        case 5:
          goto LABEL_15;
        case 6:
          goto LABEL_16;
        case 7:
          goto LABEL_17;
        case 8:
          goto LABEL_18;
        case 9:
          goto LABEL_20;
        case 10:
          goto LABEL_30;
        case 12:
          v81 = 0;
          goto LABEL_40;
        case 13:
          goto LABEL_50;
        case 14:
          v81 = 0;
          goto LABEL_46;
        default:
          goto LABEL_3;
      }
    }

    break;
  }

LABEL_18:
  v65 = OUTLINED_FUNCTION_29_17();
  if (lpta_loadp_setscan_l(v65, v66) || (OUTLINED_FUNCTION_20_21(), test_string_s()))
  {
LABEL_20:
    v67 = OUTLINED_FUNCTION_68_6();
    starttest(v67, v68);
    v69 = OUTLINED_FUNCTION_35_13();
    if (lpta_loadp_setscan_l(v69, v70))
    {
LABEL_30:
      OUTLINED_FUNCTION_43_8();
      if (!v80)
      {
LABEL_3:
        vretproc(v0);
        result = 94;
        goto LABEL_4;
      }
    }

    else
    {
      v71 = OUTLINED_FUNCTION_5_29();
      if (testFldeq(v71, v72, v73, v74) || advance_tok(v0))
      {
        goto LABEL_10;
      }
    }

    v79 = 2066;
  }

  else
  {
    v79 = 2070;
  }

LABEL_33:
  v81 = *(v0 + v79);
LABEL_37:
  OUTLINED_FUNCTION_128_0();
  if (!v80 || (v82 = OUTLINED_FUNCTION_16_25(), lpta_rpta_loadp(v82, v83, v84), OUTLINED_FUNCTION_0_33(), mark_s()))
  {
LABEL_40:
    OUTLINED_FUNCTION_111_1();
    if (!v80 || (v85 = OUTLINED_FUNCTION_16_25(), lpta_rpta_loadp(v85, v86, v87), OUTLINED_FUNCTION_0_33(), mark_s()) || (OUTLINED_FUNCTION_3_30(), mark_s()) || (OUTLINED_FUNCTION_2_31(), mark_s()) || (OUTLINED_FUNCTION_6_29(), mark_s()))
    {
LABEL_46:
      if (*(v0 + 2066) == v81)
      {
        v88 = OUTLINED_FUNCTION_16_25();
        lpta_rpta_loadp(v88, v89, v90);
        OUTLINED_FUNCTION_0_33();
        if (!mark_s())
        {
          OUTLINED_FUNCTION_3_30();
          if (!mark_s())
          {
            OUTLINED_FUNCTION_6_29();
            mark_s();
          }
        }
      }
    }
  }

LABEL_50:
  vretproc(v0);
  result = 0;
LABEL_4:
  v29 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t disambiguate_um()
{
  OUTLINED_FUNCTION_22_21();
  v53 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_98_2();
  OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_85_4();
  bzero(v51, v3);
  OUTLINED_FUNCTION_56_7();
  if (setjmp(v2) || (OUTLINED_FUNCTION_30_16(), OUTLINED_FUNCTION_116_1(v4, v5, v6, v7, v8)))
  {
LABEL_3:
    vretproc(v0);
    result = 94;
    goto LABEL_4;
  }

  v11 = OUTLINED_FUNCTION_93_3();
  OUTLINED_FUNCTION_110_1(v11, v12);
  v13 = OUTLINED_FUNCTION_76_6();
  OUTLINED_FUNCTION_114_1(v13, v14);
  fence_29(v0, 0, &null_str_8);
  v15 = OUTLINED_FUNCTION_24_21();
  fence_29(v15, v16, v17);
  v18 = OUTLINED_FUNCTION_97_3();
  starttest(v18, v19);
  *(v0 + 136) = v1;
  OUTLINED_FUNCTION_23_21();
  if (!lpta_tstmovel())
  {
    v20 = OUTLINED_FUNCTION_73_6();
    setscan_l(v20);
    if (!v21)
    {
      v22 = OUTLINED_FUNCTION_63_6();
      bspush_ca_scan(v22, v23);
      OUTLINED_FUNCTION_58_7();
      while (2)
      {
        if (!test_string_s())
        {
LABEL_9:
          v24 = OUTLINED_FUNCTION_38_11();
          if (!test_synch(v24, v25, 1u, v26))
          {
LABEL_10:
            v27 = 3070;
            v28 = 2070;
            goto LABEL_22;
          }
        }

LABEL_14:
        v37 = *(v0 + 104);
        if (v37)
        {
          v38 = OUTLINED_FUNCTION_87_4(v37);
        }

        else
        {
          v39 = OUTLINED_FUNCTION_90_4();
          v38 = vback(v39, v40);
        }

        switch(v38)
        {
          case 1:
            break;
          case 2:
            OUTLINED_FUNCTION_73_6();
            continue;
          case 3:
            goto LABEL_9;
          case 4:
            v43 = 0;
            goto LABEL_23;
          case 5:
            goto LABEL_19;
          case 6:
            goto LABEL_21;
          case 7:
            v43 = 0;
            goto LABEL_31;
          case 8:
            goto LABEL_35;
          case 9:
            goto LABEL_36;
          default:
            goto LABEL_3;
        }

        break;
      }
    }
  }

  v29 = OUTLINED_FUNCTION_31_16();
  starttest(v29, v30);
  v31 = OUTLINED_FUNCTION_35_13();
  if (!lpta_loadp_setscan_r(v31, v32))
  {
    v33 = OUTLINED_FUNCTION_5_29();
    if (!testFldeq(v33, v34, v35, v36) && !advance_tok(v0))
    {
      goto LABEL_10;
    }

    goto LABEL_14;
  }

LABEL_19:
  v41 = OUTLINED_FUNCTION_65_6();
  if (!lpta_loadp_setscan_l(v41, v42))
  {
    OUTLINED_FUNCTION_20_21();
    if (!test_string_s())
    {
      goto LABEL_10;
    }
  }

LABEL_21:
  v27 = 3054;
  v28 = 2066;
LABEL_22:
  v43 = *(v0 + v28);
  v52 = *(v0 + v27);
LABEL_23:
  OUTLINED_FUNCTION_111_1();
  if (!v44 || (v45 = OUTLINED_FUNCTION_19_22(), lpta_rpta_loadp(v45, v46, v47), OUTLINED_FUNCTION_0_33(), mark_s()) || (OUTLINED_FUNCTION_3_30(), mark_s()) || (OUTLINED_FUNCTION_2_31(), mark_s()))
  {
LABEL_31:
    if (*(v0 + 2066) == v43)
    {
      v48 = OUTLINED_FUNCTION_19_22();
      lpta_rpta_loadp(v48, v49, v50);
      OUTLINED_FUNCTION_0_33();
      if (!mark_s())
      {
        OUTLINED_FUNCTION_3_30();
        if (!mark_s())
        {
          OUTLINED_FUNCTION_2_31();
          mark_s();
        }
      }
    }
  }

LABEL_35:
  mark_word_stress();
LABEL_36:
  vretproc(v0);
  result = 0;
LABEL_4:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t disambiguate_esse()
{
  OUTLINED_FUNCTION_22_21();
  v148 = *MEMORY[0x277D85DE8];
  v137 = 0;
  v138 = 0;
  OUTLINED_FUNCTION_27_18(v2, v3, v4, v5, v6, v7, v8, v9, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136);
  OUTLINED_FUNCTION_56_7();
  v10 = setjmp(v1);
  if (v10 || OUTLINED_FUNCTION_39_10(v10, &v110, v11, v12, v13, v14, v15, v16, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147))
  {
    goto LABEL_3;
  }

  v19 = OUTLINED_FUNCTION_26_20();
  get_parm(v19, v20, v21, -6);
  v22 = OUTLINED_FUNCTION_76_6();
  OUTLINED_FUNCTION_114_1(v22, v23);
  v24 = OUTLINED_FUNCTION_89_4();
  v26 = push_ptr_init(v24, v25);
  v28 = OUTLINED_FUNCTION_115_1(v26, v27, &null_str_8);
  OUTLINED_FUNCTION_104_1(v28, v29, &unk_2806BBF44);
  OUTLINED_FUNCTION_127_0();
  v30 = OUTLINED_FUNCTION_41_8();
  v32 = lpta_loadp_setscan_l(v30, v31);
  v33 = 0;
  if (!v32)
  {
    v34 = OUTLINED_FUNCTION_4_29();
    if (testFldeq(v34, v35, v36, v37) || (v38 = OUTLINED_FUNCTION_6_29(), testFldeq(v38, v39, v40, v41)) || advance_tok(v0))
    {
      v42 = 0;
LABEL_34:
      v97 = v42;
      v98 = *(v0 + 104);
      if (v98)
      {
        v99 = OUTLINED_FUNCTION_87_4(v98);
      }

      else
      {
        v100 = OUTLINED_FUNCTION_90_4();
        v99 = vback(v100, v101);
      }

      v102 = v99 - 1;
      v33 = v97;
      v50 = v97;
      v74 = v97;
      v79 = v97;
      v80 = v97;
      v91 = v97;
      v103 = v97;
      switch(v102)
      {
        case 0:
          goto LABEL_11;
        case 1:
          goto LABEL_25;
        case 2:
          goto LABEL_13;
        case 3:
          goto LABEL_22;
        case 4:
          goto LABEL_23;
        case 6:
          goto LABEL_29;
        case 7:
          goto LABEL_27;
        case 8:
          goto LABEL_39;
        case 9:
          goto LABEL_33;
        default:
          goto LABEL_3;
      }

      goto LABEL_3;
    }

    goto LABEL_10;
  }

LABEL_11:
  v45 = v33;
  v46 = OUTLINED_FUNCTION_38_11();
  starttest(v46, v47);
  v48 = OUTLINED_FUNCTION_54_7();
  if (!lpta_loadp_setscan_l(v48, v49))
  {
    v64 = OUTLINED_FUNCTION_1_31();
    if (!testFldeq(v64, v65, v66, v67))
    {
      v68 = OUTLINED_FUNCTION_6_29();
      if (!testFldeq(v68, v69, v70, v71))
      {
        v43 = advance_tok(v0);
        v42 = v45;
        if (v43)
        {
          goto LABEL_34;
        }

LABEL_10:
        v44 = 2054;
        goto LABEL_24;
      }
    }

    goto LABEL_20;
  }

  v50 = v45;
LABEL_13:
  v45 = v50;
  v51 = OUTLINED_FUNCTION_32_15();
  starttest(v51, v52);
  v53 = OUTLINED_FUNCTION_35_13();
  if (!lpta_loadp_setscan_r(v53, v54))
  {
    v55 = OUTLINED_FUNCTION_1_31();
    if (!testFldeq(v55, v56, v57, v58))
    {
      v59 = OUTLINED_FUNCTION_6_29();
      if (!testFldeq(v59, v60, v61, v62))
      {
        v63 = advance_tok(v0);
        v42 = v45;
        if (v63)
        {
          goto LABEL_34;
        }

        goto LABEL_21;
      }
    }

LABEL_20:
    v42 = v45;
    goto LABEL_34;
  }

LABEL_22:
  v72 = OUTLINED_FUNCTION_93_3();
  if (!lpta_loadp_setscan_l(v72, v73))
  {
LABEL_21:
    v44 = 2070;
    goto LABEL_24;
  }

LABEL_23:
  v44 = 2070;
  if (*(v0 + 3078) != *(v0 + 3074))
  {
    goto LABEL_3;
  }

LABEL_24:
  v74 = *(v0 + v44);
LABEL_25:
  v75 = v74;
  v76 = OUTLINED_FUNCTION_93_3();
  if (lpta_loadp_setscan_r(v76, v77))
  {
    goto LABEL_28;
  }

  v78 = advance_tok(v0);
  v79 = v75;
  v80 = v75;
  if (!v78)
  {
LABEL_27:
    v75 = v79;
    v81 = OUTLINED_FUNCTION_74_6();
    savescptr(v81, v82, v83);
LABEL_28:
    v80 = v75;
  }

LABEL_29:
  v84 = v80;
  OUTLINED_FUNCTION_111_1();
  if (!v85 || (v86 = OUTLINED_FUNCTION_19_22(), lpta_rpta_loadp(v86, v87, v88), OUTLINED_FUNCTION_3_30(), mark_s()))
  {
    v103 = v84;
LABEL_39:
    if (*(v0 + 2054) == v103)
    {
      v104 = OUTLINED_FUNCTION_19_22();
      lpta_rpta_loadp(v104, v105, v106);
      OUTLINED_FUNCTION_1_31();
      if (!mark_s())
      {
        v107 = OUTLINED_FUNCTION_74_6();
        lpta_rpta_loadp(v107, v108, v109);
        insert_2pt_s(v0, 4u, 1, &unk_2806BBF48, 0);
      }
    }
  }

  else
  {
    v89 = OUTLINED_FUNCTION_68_6();
    starttest(v89, v90);
    OUTLINED_FUNCTION_19_22();
    pro_vs_det();
    v91 = v84;
LABEL_33:
    v92 = v91;
    v93 = OUTLINED_FUNCTION_19_22();
    lpta_rpta_loadp(v93, v94, v95);
    OUTLINED_FUNCTION_11_28();
    v96 = mark_s();
    v42 = v92;
    if (v96)
    {
      goto LABEL_34;
    }
  }

LABEL_3:
  vretproc(v0);
  v17 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_119_1();
}

uint64_t disambiguate_este()
{
  OUTLINED_FUNCTION_22_21();
  v125 = *MEMORY[0x277D85DE8];
  v114 = 0;
  v115 = 0;
  OUTLINED_FUNCTION_27_18(v2, v3, v4, v5, v6, v7, v8, v9, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113);
  OUTLINED_FUNCTION_56_7();
  v10 = setjmp(v1);
  if (v10 || OUTLINED_FUNCTION_39_10(v10, &v87, v11, v12, v13, v14, v15, v16, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124))
  {
    goto LABEL_3;
  }

  v19 = OUTLINED_FUNCTION_26_20();
  get_parm(v19, v20, v21, -6);
  v22 = OUTLINED_FUNCTION_76_6();
  OUTLINED_FUNCTION_114_1(v22, v23);
  v24 = OUTLINED_FUNCTION_89_4();
  push_ptr_init(v24, v25);
  fence_29(v0, 0, &null_str_8);
  v26 = OUTLINED_FUNCTION_24_21();
  fence_29(v26, v27, v28);
  v29 = OUTLINED_FUNCTION_97_3();
  starttest(v29, v30);
  v31 = OUTLINED_FUNCTION_41_8();
  if (!lpta_loadp_setscan_l(v31, v32))
  {
    v33 = OUTLINED_FUNCTION_4_29();
    if (!testFldeq(v33, v34, v35, v36))
    {
      v37 = OUTLINED_FUNCTION_6_29();
      if (!testFldeq(v37, v38, v39, v40) && !advance_tok(v0))
      {
        v41 = 2054;
LABEL_22:
        v59 = *(v0 + v41);
LABEL_23:
        v61 = v59;
        v66 = OUTLINED_FUNCTION_93_3();
        if (!lpta_loadp_setscan_r(v66, v67))
        {
          v68 = advance_tok(v0);
          v60 = v61;
          if (!v68)
          {
LABEL_25:
            v61 = v60;
            OUTLINED_FUNCTION_99_2();
            v69 = OUTLINED_FUNCTION_74_6();
            savescptr(v69, v70, v71);
          }
        }

LABEL_26:
        OUTLINED_FUNCTION_111_1();
        if (v65)
        {
          v72 = OUTLINED_FUNCTION_19_22();
          lpta_rpta_loadp(v72, v73, v74);
          OUTLINED_FUNCTION_3_30();
          v75 = mark_s();
          v62 = v61;
          if (!v75)
          {
            OUTLINED_FUNCTION_19_22();
            pro_vs_det();
LABEL_33:
            vretproc(v0);
            result = 0;
            goto LABEL_4;
          }
        }

        else
        {
          v62 = v61;
        }

LABEL_30:
        if (*(v0 + 2054) == v62)
        {
          v76 = OUTLINED_FUNCTION_19_22();
          lpta_rpta_loadp(v76, v77, v78);
          OUTLINED_FUNCTION_0_33();
          if (!mark_s())
          {
            v79 = OUTLINED_FUNCTION_74_6();
            lpta_rpta_loadp(v79, v80, v81);
            v82 = OUTLINED_FUNCTION_44_8();
            insert_2pt_s(v82, v83, v84, v85, v86);
          }
        }

        goto LABEL_33;
      }
    }

LABEL_14:
    v54 = *(v0 + 104);
    if (v54)
    {
      v55 = OUTLINED_FUNCTION_87_4(v54);
    }

    else
    {
      v56 = OUTLINED_FUNCTION_90_4();
      v55 = vback(v56, v57);
    }

    v58 = v55 - 1;
    v59 = 0;
    v60 = 0;
    v61 = 0;
    v62 = 0;
    switch(v58)
    {
      case 0:
        break;
      case 1:
        goto LABEL_23;
      case 2:
        goto LABEL_18;
      case 3:
        goto LABEL_19;
      case 5:
        goto LABEL_26;
      case 6:
        goto LABEL_25;
      case 7:
        goto LABEL_30;
      case 8:
      case 9:
        goto LABEL_33;
      default:
        goto LABEL_3;
    }
  }

  v42 = OUTLINED_FUNCTION_38_11();
  starttest(v42, v43);
  v44 = OUTLINED_FUNCTION_35_13();
  if (!lpta_loadp_setscan_r(v44, v45))
  {
    v46 = OUTLINED_FUNCTION_1_31();
    if (testFldeq(v46, v47, v48, v49))
    {
      goto LABEL_14;
    }

    v50 = OUTLINED_FUNCTION_6_29();
    if (testFldeq(v50, v51, v52, v53) || advance_tok(v0))
    {
      goto LABEL_14;
    }

LABEL_21:
    v41 = 2070;
    goto LABEL_22;
  }

LABEL_18:
  v63 = OUTLINED_FUNCTION_93_3();
  if (!lpta_loadp_setscan_l(v63, v64))
  {
    goto LABEL_21;
  }

LABEL_19:
  OUTLINED_FUNCTION_43_8();
  if (v65)
  {
    goto LABEL_21;
  }

LABEL_3:
  vretproc(v0);
  result = 94;
LABEL_4:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t disambiguate_nos()
{
  OUTLINED_FUNCTION_22_21();
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_18_23(v3, v4, v5, v6, v7, v8, v9, v10, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118, v121, v124, v127, v130, v133, v136, v139, v142, v145, v148, v151);
  OUTLINED_FUNCTION_62_6(v11, v12, v13, v14, v15, v16, v17, v18, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v119, v122, v125, v128, v131, v134, v137, v140, v143, v146, v149, v152, v154, v156, v158, v160, v162);
  v19 = setjmp(v1);
  if (v19 || OUTLINED_FUNCTION_17_24(v19, v20, v21, v22, v23, v24, v25, v26, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117, v120, v123, v126, v129, v132, v135, v138, v141, v144, v147, v150, v153, *v155, v155[4], *v157, *&v157[4], v157[6], v159, SWORD2(v159), SBYTE6(v159), SHIBYTE(v159), v161, v163))
  {
    goto LABEL_3;
  }

  v29 = OUTLINED_FUNCTION_76_6();
  OUTLINED_FUNCTION_110_1(v29, v30);
  OUTLINED_FUNCTION_53_7();
  fence_29(v0, 0, &null_str_8);
  v31 = OUTLINED_FUNCTION_24_21();
  fence_29(v31, v32, v33);
  v34 = OUTLINED_FUNCTION_97_3();
  starttest(v34, v35);
  v36 = OUTLINED_FUNCTION_66_6();
  if (!lpta_loadp_setscan_r(v36, v37))
  {
    v38 = OUTLINED_FUNCTION_8_29();
    if (!testFldeq(v38, v39, v40, v41) && !advance_tok(v0))
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

  while (2)
  {
    v43 = OUTLINED_FUNCTION_29_17();
    if (!lpta_loadp_setscan_l(v43, v44))
    {
      OUTLINED_FUNCTION_20_21();
      if (!test_string_s())
      {
LABEL_8:
        v42 = 2070;
        goto LABEL_23;
      }
    }

LABEL_11:
    v45 = OUTLINED_FUNCTION_32_15();
    starttest(v45, v46);
    v47 = OUTLINED_FUNCTION_80_5();
    if (lpta_loadp_setscan_r(v47, v48))
    {
LABEL_20:
      v61 = OUTLINED_FUNCTION_31_16();
      starttest(v61, v62);
      v63 = OUTLINED_FUNCTION_80_5();
      if (lpta_loadp_setscan_r(v63, v64))
      {
LABEL_3:
        vretproc(v0);
        result = 94;
        goto LABEL_4;
      }

      v53 = OUTLINED_FUNCTION_14_26();
      v56 = 12;
    }

    else
    {
      v49 = OUTLINED_FUNCTION_1_31();
      if (testFldeq(v49, v50, v51, v52))
      {
        goto LABEL_16;
      }

      v53 = OUTLINED_FUNCTION_28_17();
      v56 = 2;
    }

    if (testFldeq(v53, v54, v55, v56) || advance_tok(v0))
    {
LABEL_16:
      v57 = *(v0 + 104);
      if (v57)
      {
        v58 = OUTLINED_FUNCTION_87_4(v57);
      }

      else
      {
        v59 = OUTLINED_FUNCTION_90_4();
        v58 = vback(v59, v60);
      }

      switch(v58)
      {
        case 1:
          continue;
        case 2:
          goto LABEL_24;
        case 3:
          goto LABEL_11;
        case 4:
          goto LABEL_20;
        case 6:
          goto LABEL_29;
        case 7:
          goto LABEL_35;
        default:
          goto LABEL_3;
      }
    }

    break;
  }

  v42 = 2074;
LABEL_23:
  v65 = *(v0 + v42);
LABEL_24:
  OUTLINED_FUNCTION_111_1();
  if (!v66 || (v67 = OUTLINED_FUNCTION_16_25(), lpta_rpta_loadp(v67, v68, v69), OUTLINED_FUNCTION_0_33(), mark_s()) || (OUTLINED_FUNCTION_3_30(), mark_s()) || (OUTLINED_FUNCTION_2_31(), mark_s()))
  {
LABEL_29:
    OUTLINED_FUNCTION_128_0();
    if (v66)
    {
      v70 = OUTLINED_FUNCTION_16_25();
      lpta_rpta_loadp(v70, v71, v72);
      OUTLINED_FUNCTION_0_33();
      if (!mark_s())
      {
        OUTLINED_FUNCTION_3_30();
        if (!mark_s())
        {
          OUTLINED_FUNCTION_2_31();
          if (!mark_s())
          {
            OUTLINED_FUNCTION_10_29();
            mark_s();
          }
        }
      }
    }
  }

LABEL_35:
  vretproc(v0);
  result = 0;
LABEL_4:
  v28 = *MEMORY[0x277D85DE8];
  return result;
}

void disambiguate_pelo()
{
  OUTLINED_FUNCTION_123_0();
  OUTLINED_FUNCTION_22_21();
  v241 = *MEMORY[0x277D85DE8];
  v236[0] = 0;
  v236[1] = 0;
  v234 = 0;
  v235 = 0;
  v232 = 0u;
  v233 = 0u;
  v230 = 0;
  v231 = 0;
  v228 = 0;
  v229 = 0;
  v226 = 0;
  v227 = 0;
  OUTLINED_FUNCTION_85_4();
  bzero(&v203, v1);
  OUTLINED_FUNCTION_84_4();
  bzero(v240, v2);
  if (setjmp(v240))
  {
    goto LABEL_3;
  }

  v3 = ventproc(v0, &v203, v239, v238, v237, v240);
  if (v3)
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_94_3(v3, v236);
  OUTLINED_FUNCTION_53_7();
  v233 = 0uLL;
  LODWORD(v232) = -65534;
  push_ptr_init(v0, &v230);
  push_ptr_init(v0, &v228);
  v5 = push_ptr_init(v0, &v226);
  v6 = 0;
  OUTLINED_FUNCTION_115_1(v5, v7, &null_str_8);
  v8 = OUTLINED_FUNCTION_73_6();
  fence_29(v8, v9, v10);
  v11 = OUTLINED_FUNCTION_81_5();
  v13 = 0;
  if (lpta_loadp_setscan_l(v11, v12) || (OUTLINED_FUNCTION_20_21(), test_string_s(), OUTLINED_FUNCTION_144_0(), v13 = 0, v16))
  {
LABEL_10:
    v30 = OUTLINED_FUNCTION_73_6();
    v31 = npush_s(v30);
    OUTLINED_FUNCTION_148_0(v31, v32, v33, v34, v35, v36, v37, v38, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, SWORD1(v232));
    v231 = v235;
    v28 = v6;
    v29 = v13;
  }

  else
  {
LABEL_8:
    v17 = v14;
    v18 = v15;
    savescptr(v0, 2, &v230);
    v19 = OUTLINED_FUNCTION_79_6();
    v20 = npush_s(v19);
    OUTLINED_FUNCTION_148_0(v20, v21, v22, v23, v24, v25, v26, v27, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, SWORD1(v232));
    v28 = v18;
    v29 = v17;
  }

  v39 = (v0 + 2054);
  v40 = (v0 + 2058);
  v41 = 4;
  v202 = 5;
  v201 = 19;
  v200 = 20;
  v199 = 21;
  v198 = 8;
  v197 = 10;
  LODWORD(v42) = v29;
  while (2)
  {
    v43 = v28;
    v44 = OUTLINED_FUNCTION_133_0();
    starttest(v44, v45);
    v46 = OUTLINED_FUNCTION_66_6();
    if (lpta_loadp_setscan_l(v46, v47))
    {
      v48 = v43;
LABEL_14:
      v49 = v48;
      starttest(v0, v198);
      v50 = OUTLINED_FUNCTION_66_6();
      if (lpta_loadp_setscan_l(v50, v51))
      {
        v52 = v49;
LABEL_16:
        v49 = v52;
        v53 = OUTLINED_FUNCTION_52_7();
        starttest(v53, v54);
        v55 = OUTLINED_FUNCTION_134_0();
        if (lpta_loadp_setscan_r(v55, v56))
        {
          v57 = v49;
LABEL_18:
          v49 = v57;
          starttest(v0, v197);
          v58 = OUTLINED_FUNCTION_134_0();
          if (lpta_loadp_setscan_r(v58, v59))
          {
            v60 = v49;
LABEL_20:
            v49 = v60;
            v61 = OUTLINED_FUNCTION_51_7();
            starttest(v61, v62);
            v63 = OUTLINED_FUNCTION_134_0();
            if (lpta_loadp_setscan_r(v63, v64))
            {
LABEL_21:
              v65 = (v0 + 2074);
              v66 = v42;
              if (*(v0 + 3078) != *(v0 + 3074))
              {
                goto LABEL_3;
              }

              goto LABEL_43;
            }

            v107 = OUTLINED_FUNCTION_1_31();
            if (!testFldeq(v107, v108, v109, v110))
            {
              OUTLINED_FUNCTION_60_7();
              bspush_ca_scan_boa();
              v111 = OUTLINED_FUNCTION_64_6();
              bspush_ca_scan(v111, v112);
              v113 = OUTLINED_FUNCTION_61_7();
              v116 = npush_fld(v113, v114, v115);
              if (!v116)
              {
                OUTLINED_FUNCTION_139_0(v116, v117, v118, v119, v120, v121, v122, v123, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, SWORD1(v232));
                v131 = if_testeq(v0, v124, v125, v126, v127, v128, v129, v130);
                v132 = v49;
                v103 = v49;
                if (!v131)
                {
LABEL_73:
                  LODWORD(v42) = 1;
                  v103 = v132;
                }

                goto LABEL_62;
              }
            }

LABEL_40:
            v103 = v49;
            goto LABEL_62;
          }

          v104 = OUTLINED_FUNCTION_14_26();
          if (testFldeq(v104, v105, v106, 12))
          {
            goto LABEL_40;
          }
        }

        else
        {
          v74 = OUTLINED_FUNCTION_1_31();
          if (testFldeq(v74, v75, v76, v77))
          {
            goto LABEL_40;
          }

          v78 = OUTLINED_FUNCTION_61_7();
          v81 = npush_fld(v78, v79, v80);
          if (v81)
          {
            goto LABEL_40;
          }

          OUTLINED_FUNCTION_139_0(v81, v82, v83, v84, v85, v86, v87, v88, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, SWORD1(v232));
          if (if_testeq(v0, v89, v90, v91, v92, v93, v94, v95))
          {
            goto LABEL_40;
          }
        }

        v73 = advance_tok(v0);
        v65 = (v0 + 2074);
      }

      else
      {
        v67 = OUTLINED_FUNCTION_14_26();
        if (testFldeq(v67, v68, v69, 11))
        {
          goto LABEL_40;
        }

        v70 = OUTLINED_FUNCTION_61_7();
        if (testFldeq(v70, v71, v72, 1))
        {
          goto LABEL_40;
        }

        v73 = advance_tok(v0);
        v65 = v40;
      }
    }

    else
    {
      bspush_ca_scan(v0, v202);
      v96 = OUTLINED_FUNCTION_4_29();
      v100 = testFldeq(v96, v97, v98, v99);
      v101 = v43;
      v102 = v42;
      v103 = v43;
      if (v100)
      {
        goto LABEL_62;
      }

LABEL_38:
      LODWORD(v42) = v102;
      v49 = v101;
      v133 = OUTLINED_FUNCTION_61_7();
      v136 = npush_fld(v133, v134, v135);
      if (v136)
      {
        goto LABEL_40;
      }

      OUTLINED_FUNCTION_139_0(v136, v137, v138, v139, v140, v141, v142, v143, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, SWORD1(v232));
      if (if_testeq(v0, v144, v145, v146, v147, v148, v149, v150))
      {
        goto LABEL_40;
      }

      v73 = advance_tok(v0);
      v65 = v39;
    }

    v66 = v42;
    v103 = v49;
    if (v73)
    {
      goto LABEL_62;
    }

LABEL_43:
    v151 = *v65;
    v152 = v66;
LABEL_44:
    v153 = v151;
    if (*(v0 + 2074) != v151 || (v154 = OUTLINED_FUNCTION_81_5(), lpta_rpta_loadp(v154, v155, &v234), OUTLINED_FUNCTION_0_33(), mark_s()) || (OUTLINED_FUNCTION_3_30(), mark_s()) || (OUTLINED_FUNCTION_2_31(), mark_s()))
    {
      v156 = v153;
      v13 = v152;
    }

    else
    {
      WORD1(v232) = 4;
      v164 = OUTLINED_FUNCTION_12_28();
      v166 = mark_v(v164, v165, 4, &v232);
      v156 = v153;
      v13 = v152;
      if (!v166)
      {
        goto LABEL_3;
      }
    }

LABEL_49:
    v42 = v156;
    if (*v40 == v156)
    {
      v157 = OUTLINED_FUNCTION_81_5();
      lpta_rpta_loadp(v157, v158, &v234);
      OUTLINED_FUNCTION_0_33();
      if (!mark_s())
      {
        OUTLINED_FUNCTION_3_30();
        if (!mark_s())
        {
          OUTLINED_FUNCTION_12_28();
          if (!mark_s())
          {
            OUTLINED_FUNCTION_12_28();
            if (!OUTLINED_FUNCTION_140_0())
            {
              starttest_l(v0, v201);
              v159 = OUTLINED_FUNCTION_81_5();
              if (!lpta_loadp_setscan_r(v159, v160))
              {
                v161 = advance_tok(v0);
                v162 = v42;
                v163 = v13;
                if (!v161)
                {
LABEL_59:
                  LODWORD(v42) = v163;
                  v167 = v40;
                  v168 = v41;
                  v169 = v39;
                  v170 = v162;
                  savescptr(v0, v200, &v228);
                  v171 = advance_tok(v0);
                  v172 = v170;
                  v13 = v42;
                  v103 = v170;
                  v39 = v169;
                  v41 = v168;
                  v40 = v167;
                  if (v171)
                  {
                    goto LABEL_62;
                  }

LABEL_60:
                  v42 = v172;
                  savescptr(v0, v199, &v226);
                }
              }

LABEL_61:
              lpta_rpta_loadp(v0, &v228, &v226);
              v173 = OUTLINED_FUNCTION_79_6();
              inserted = insert_2pt_s(v173, v174, 1, &unk_2806BBF48, v175);
              v103 = v42;
              LODWORD(v42) = v13;
              if (!inserted)
              {
                goto LABEL_3;
              }

LABEL_62:
              v177 = v42;
              v42 = v103;
              v178 = v177;
LABEL_63:
              v179 = *(v0 + 104);
              if (v179)
              {
                v180 = OUTLINED_FUNCTION_87_4(v179);
                v13 = v181;
              }

              else
              {
                v180 = vback(v0, v178);
                v13 = 0;
              }

              v101 = v42;
              v102 = v13;
              v132 = v42;
              switch(v180)
              {
                case 1:
                  v6 = v42;
                  goto LABEL_10;
                case 2:
                  v15 = v42;
                  v14 = v13;
                  goto LABEL_8;
                case 3:
                  v28 = OUTLINED_FUNCTION_129_0();
                  continue;
                case 4:
                  v48 = OUTLINED_FUNCTION_129_0();
                  goto LABEL_14;
                case 5:
                  v182 = OUTLINED_FUNCTION_15_26();
                  v185 = testFldeq(v182, v183, v184, 4);
                  v178 = v13;
                  if (v185)
                  {
                    goto LABEL_63;
                  }

                  v101 = v42;
                  v102 = v13;
                  goto LABEL_38;
                case 6:
                  goto LABEL_38;
                case 7:
                  v151 = v42;
                  v152 = v13;
                  goto LABEL_44;
                case 8:
                  v52 = OUTLINED_FUNCTION_129_0();
                  goto LABEL_16;
                case 9:
                  v57 = OUTLINED_FUNCTION_129_0();
                  goto LABEL_18;
                case 10:
                  v60 = OUTLINED_FUNCTION_129_0();
                  goto LABEL_20;
                case 11:
                  LODWORD(v42) = v13;
                  goto LABEL_21;
                case 12:
                  bspop_boa(v0);
                  v186 = advance_tok(v0);
                  v178 = v13;
                  if (v186)
                  {
                    goto LABEL_63;
                  }

                  v65 = v40;
                  v66 = v13;
                  goto LABEL_43;
                case 13:
                  v187 = OUTLINED_FUNCTION_61_7();
                  v191 = testFldeq(v187, v188, v189, v190);
                  v178 = v13;
                  if (v191)
                  {
                    goto LABEL_63;
                  }

                  v132 = v42;
                  goto LABEL_73;
                case 14:
                  goto LABEL_73;
                case 16:
                  v156 = v42;
                  goto LABEL_49;
                case 18:
                  goto LABEL_84;
                case 19:
                  goto LABEL_61;
                case 20:
                  v162 = v42;
                  v163 = v13;
                  goto LABEL_59;
                case 21:
                  v172 = v42;
                  goto LABEL_60;
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

LABEL_84:
  if (*v39 == v42)
  {
    lpta_rpta_loadp(v0, v236, &v234);
    OUTLINED_FUNCTION_0_33();
    if (!mark_s())
    {
      OUTLINED_FUNCTION_12_28();
      if (!OUTLINED_FUNCTION_140_0())
      {
        WORD1(v232) = 4;
        v192 = OUTLINED_FUNCTION_71_6();
        mark_v(v192, v193, v194, v195);
      }
    }
  }

LABEL_3:
  vretproc(v0);
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_122_0();
}

uint64_t disambiguate_por()
{
  OUTLINED_FUNCTION_22_21();
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_18_23(v3, v4, v5, v6, v7, v8, v9, v10, v54, v58, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142, v146, v150, v153, v156);
  OUTLINED_FUNCTION_62_6(v11, v12, v13, v14, v15, v16, v17, v18, v55, v59, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v147, v151, v154, v157, v159, v161, v163, v165, v167);
  v19 = setjmp(v1);
  if (v19 || OUTLINED_FUNCTION_17_24(v19, v20, v21, v22, v23, v24, v25, v26, v56, v60, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144, v148, v152, v155, v158, *v160, v160[4], *v162, *&v162[4], v162[6], v164, SWORD2(v164), SBYTE6(v164), SHIBYTE(v164), v166, v168) || (v27 = OUTLINED_FUNCTION_76_6(), OUTLINED_FUNCTION_110_1(v27, v28), OUTLINED_FUNCTION_70_6(v29, v30, v31, v32, v33, v34, v35, v36, v57, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, v149), fence_29(v0, 0, &null_str_8), v37 = OUTLINED_FUNCTION_73_6(), fence_29(v37, v38, v39), OUTLINED_FUNCTION_43_8(), !v40))
  {
    vretproc(v0);
    result = 94;
  }

  else
  {
    v41 = *(v0 + 2074);
    OUTLINED_FUNCTION_112_1();
    if (!v40 || (v42 = OUTLINED_FUNCTION_16_25(), lpta_rpta_loadp(v42, v43, v44), OUTLINED_FUNCTION_0_33(), mark_s()) || (OUTLINED_FUNCTION_3_30(), mark_s()) || (v45 = OUTLINED_FUNCTION_40_9(), mark_v(v45, v46, v47, v48)))
    {
      OUTLINED_FUNCTION_128_0();
      if (v40)
      {
        v49 = OUTLINED_FUNCTION_16_25();
        lpta_rpta_loadp(v49, v50, v51);
        OUTLINED_FUNCTION_0_33();
        if (!mark_s())
        {
          OUTLINED_FUNCTION_2_31();
          mark_s();
        }
      }
    }

    vretproc(v0);
    result = 0;
  }

  v53 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t disambiguate_se()
{
  OUTLINED_FUNCTION_22_21();
  v170 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_103_1();
  OUTLINED_FUNCTION_27_18(v2, v3, v4, v5, v6, v7, v8, v9, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142, v144, v146, v148, v150, v152, v154, v156, v158, v160, v162, v164, v166, v168);
  OUTLINED_FUNCTION_56_7();
  if (setjmp(v1))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_50_7();
  if (OUTLINED_FUNCTION_116_1(v10, v11, v12, v13, v14))
  {
    goto LABEL_3;
  }

  v17 = OUTLINED_FUNCTION_59_7();
  get_parm(v17, v18, v19, -6);
  OUTLINED_FUNCTION_53_7();
  v20 = OUTLINED_FUNCTION_76_6();
  push_ptr_init(v20, v21);
  v22 = OUTLINED_FUNCTION_89_4();
  push_ptr_init(v22, v23);
  fence_29(v0, 0, &null_str_8);
  v24 = OUTLINED_FUNCTION_24_21();
  fence_29(v24, v25, v26);
  v27 = OUTLINED_FUNCTION_97_3();
  starttest(v27, v28);
  v29 = OUTLINED_FUNCTION_66_6();
  if (!lpta_loadp_setscan_r(v29, v30))
  {
    v64 = OUTLINED_FUNCTION_8_29();
    goto LABEL_20;
  }

LABEL_6:
  v31 = OUTLINED_FUNCTION_38_11();
  starttest(v31, v32);
  v33 = OUTLINED_FUNCTION_49_7();
  if (!lpta_loadp_setscan_l(v33, v34))
  {
    v64 = OUTLINED_FUNCTION_13_28();
    v67 = 8;
LABEL_20:
    if (testFldeq(v64, v65, v66, v67) || advance_tok(v0))
    {
      goto LABEL_30;
    }

    goto LABEL_22;
  }

LABEL_7:
  v35 = OUTLINED_FUNCTION_32_15();
  starttest(v35, v36);
  v37 = OUTLINED_FUNCTION_49_7();
  if (!lpta_loadp_setscan_l(v37, v38))
  {
    v64 = OUTLINED_FUNCTION_14_26();
    v67 = 29;
    goto LABEL_20;
  }

LABEL_8:
  v39 = OUTLINED_FUNCTION_31_16();
  starttest(v39, v40);
  v41 = OUTLINED_FUNCTION_49_7();
  if (!lpta_loadp_setscan_l(v41, v42))
  {
    v64 = OUTLINED_FUNCTION_13_28();
    v67 = 10;
    goto LABEL_20;
  }

LABEL_9:
  v43 = OUTLINED_FUNCTION_48_8();
  if (!lpta_loadp_setscan_l(v43, v44))
  {
    OUTLINED_FUNCTION_20_21();
    if (!test_string_s())
    {
LABEL_22:
      v68 = 2070;
      goto LABEL_23;
    }
  }

LABEL_11:
  v45 = OUTLINED_FUNCTION_46_8();
  starttest(v45, v46);
  v47 = OUTLINED_FUNCTION_49_7();
  if (!lpta_loadp_setscan_l(v47, v48))
  {
    v64 = OUTLINED_FUNCTION_5_29();
    goto LABEL_20;
  }

LABEL_12:
  v49 = OUTLINED_FUNCTION_34_14();
  starttest(v49, v50);
  v51 = OUTLINED_FUNCTION_49_7();
  if (!lpta_loadp_setscan_l(v51, v52))
  {
LABEL_13:
    v53 = OUTLINED_FUNCTION_74_6();
    savescptr(v53, v54, v55);
    v56 = OUTLINED_FUNCTION_68_6();
    bspush_ca_scan(v56, v57);
LABEL_14:
    v58 = OUTLINED_FUNCTION_60_7();
    bspush_ca_scan(v58, v59);
    v60 = OUTLINED_FUNCTION_14_26();
    for (i = 16; ; i = v85)
    {
LABEL_50:
      if (!testFldeq(v60, v61, v62, i))
      {
LABEL_51:
        if (!advance_tok(v0))
        {
          v92 = OUTLINED_FUNCTION_80_5();
          if (!lpta_loadp_setscan_r(v92, v93) && !advance_tok(v0) && !advance_tok(v0))
          {
LABEL_55:
            v94 = OUTLINED_FUNCTION_82_5();
            savescptr(v94, v95, v96);
            OUTLINED_FUNCTION_117_1();
            OUTLINED_FUNCTION_21_21(v97, v98, v99, v100, v101, v102, v103, v104, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, v141, v143, v145, v147, v149, v151, v153, v155, v157, v159, v161, v163, v165, v167, v169);
            if (!lpta_tstmovel())
            {
              v105 = OUTLINED_FUNCTION_73_6();
              setscan_l(v105);
              if (!v106)
              {
                v107 = OUTLINED_FUNCTION_72_6();
                bspush_ca_scan(v107, v108);
                OUTLINED_FUNCTION_36_12();
LABEL_44:
                if (!test_string_s())
                {
LABEL_37:
                  v81 = OUTLINED_FUNCTION_72_6();
                  bspush_ca_scan(v81, v82);
LABEL_38:
                  OUTLINED_FUNCTION_20_21();
                  if (!test_string_s())
                  {
                    goto LABEL_22;
                  }
                }
              }
            }
          }
        }
      }

LABEL_30:
      while (2)
      {
        v74 = *(v0 + 104);
        if (v74)
        {
          v75 = OUTLINED_FUNCTION_87_4(v74);
        }

        else
        {
          v76 = OUTLINED_FUNCTION_90_4();
          v75 = vback(v76, v77);
        }

        v68 = 2070;
        switch(v75)
        {
          case 1:
            goto LABEL_6;
          case 2:
            v69 = 0;
            goto LABEL_24;
          case 3:
            goto LABEL_7;
          case 4:
            goto LABEL_8;
          case 5:
            goto LABEL_9;
          case 6:
            goto LABEL_11;
          case 7:
            goto LABEL_12;
          case 8:
            goto LABEL_58;
          case 9:
            goto LABEL_13;
          case 10:
            v78 = OUTLINED_FUNCTION_13_28();
            if (!testFldeq(v78, v79, v80, 1) && !advance_tok(v0))
            {
              goto LABEL_14;
            }

            continue;
          case 11:
            goto LABEL_14;
          case 12:
            v85 = 14;
            break;
          case 13:
            goto LABEL_51;
          case 14:
            v88 = OUTLINED_FUNCTION_69_6();
            bspush_ca_scan(v88, v89);
            v60 = OUTLINED_FUNCTION_14_26();
            i = 19;
            goto LABEL_50;
          case 15:
            v83 = OUTLINED_FUNCTION_72_6();
            bspush_ca_scan(v83, v84);
            v60 = OUTLINED_FUNCTION_14_26();
            i = 15;
            goto LABEL_50;
          case 16:
            v85 = 17;
            break;
          case 17:
            v60 = OUTLINED_FUNCTION_14_26();
            i = 20;
            goto LABEL_50;
          case 18:
            goto LABEL_55;
          case 19:
            v86 = OUTLINED_FUNCTION_72_6();
            bspush_ca_scan(v86, v87);
            OUTLINED_FUNCTION_20_21();
            goto LABEL_44;
          case 20:
          case 22:
            goto LABEL_37;
          case 21:
            OUTLINED_FUNCTION_42_8();
            goto LABEL_44;
          case 23:
            goto LABEL_23;
          case 24:
            goto LABEL_38;
          case 25:
            goto LABEL_62;
          case 27:
            v69 = 0;
            goto LABEL_66;
          case 28:
            goto LABEL_69;
          default:
            goto LABEL_3;
        }

        break;
      }

      v90 = OUTLINED_FUNCTION_97_3();
      bspush_ca_scan(v90, v91);
      v60 = OUTLINED_FUNCTION_14_26();
    }
  }

LABEL_58:
  v109 = OUTLINED_FUNCTION_49_7();
  if (!lpta_loadp_setscan_r(v109, v110) && !advance_tok(v0) && !advance_tok(v0))
  {
    OUTLINED_FUNCTION_117_1();
    v111 = *(v0 + 1440);
    v112 = OUTLINED_FUNCTION_23_21();
    if (!test_ptr(v112))
    {
      goto LABEL_22;
    }
  }

LABEL_62:
  OUTLINED_FUNCTION_43_8();
  if (!v70)
  {
LABEL_3:
    vretproc(v0);
    result = 94;
    goto LABEL_4;
  }

  v68 = 2082;
LABEL_23:
  v69 = *(v0 + v68);
LABEL_24:
  OUTLINED_FUNCTION_111_1();
  if (!v70 || (v71 = OUTLINED_FUNCTION_25_20(), lpta_rpta_loadp(v71, v72, v73), OUTLINED_FUNCTION_0_33(), mark_s()) || (OUTLINED_FUNCTION_3_30(), mark_s()) || (OUTLINED_FUNCTION_2_31(), mark_s()))
  {
LABEL_66:
    if (*(v0 + 2082) == v69)
    {
      v113 = OUTLINED_FUNCTION_25_20();
      lpta_rpta_loadp(v113, v114, v115);
      OUTLINED_FUNCTION_0_33();
      if (!mark_s())
      {
        OUTLINED_FUNCTION_2_31();
        mark_s();
      }
    }
  }

LABEL_69:
  vretproc(v0);
  result = 0;
LABEL_4:
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t disambiguate_sao()
{
  OUTLINED_FUNCTION_22_21();
  v196 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_103_1();
  OUTLINED_FUNCTION_27_18(v1, v2, v3, v4, v5, v6, v7, v8, v140, v142, v144, v146, v148, v150, v152, v154, v156, v158, v160, v162, v164, v166, v168, v170, v172, v174, v176, v178, v180, v182, v184, v186, v188, v190, v192);
  OUTLINED_FUNCTION_84_4();
  bzero(v195, v9);
  if (setjmp(v195))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_50_7();
  if (OUTLINED_FUNCTION_141_0(v10, v11, v12, v13, v14, v15, v16, v17, v141, v143, v145, v147, v149, v151, v153, v155, v157, v159, v161, v163, v165, v167, v169, v171, v173, v175, v177, v179, v181, v183, v185, v187, v189, v191, v193, v194[0], v194[1], v194[2], v194[3], v194[4], v194[5], v194[6], v194[7], v195[0]))
  {
    goto LABEL_3;
  }

  v20 = OUTLINED_FUNCTION_59_7();
  get_parm(v20, v21, v22, -6);
  OUTLINED_FUNCTION_53_7();
  v23 = OUTLINED_FUNCTION_76_6();
  push_ptr_init(v23, v24);
  v25 = OUTLINED_FUNCTION_89_4();
  v27 = push_ptr_init(v25, v26);
  OUTLINED_FUNCTION_115_1(v27, v28, &null_str_8);
  v29 = OUTLINED_FUNCTION_57_7();
  fence_29(v29, v30, v31);
  OUTLINED_FUNCTION_125_0();
  v32 = OUTLINED_FUNCTION_66_6();
  v34 = 0;
  if (!lpta_loadp_setscan_r(v32, v33))
  {
    v34 = 0;
    v35 = 0;
    if (!advanc(v0))
    {
LABEL_6:
      v34 = v35;
      OUTLINED_FUNCTION_102_1();
      v36 = OUTLINED_FUNCTION_82_5();
      savescptr(v36, v37, v38);
      if (advance_tok(v0))
      {
        goto LABEL_35;
      }

LABEL_7:
      v39 = OUTLINED_FUNCTION_74_6();
      savescptr(v39, v40, v41);
LABEL_8:
      v34 = v35;
    }
  }

  v42 = OUTLINED_FUNCTION_89_4();
  lpta_loadpn(v42, v43);
  rpta_loadpn(v0, v0 + 418);
  if (!compare_ptas(v0) && !testneq(v0))
  {
    v44 = OUTLINED_FUNCTION_86_4();
    if (!is_proper_name(v44, v45, v46, v47, v48, v49, v50, v51))
    {
      v52 = OUTLINED_FUNCTION_76_6();
      if (!is_proper_name(v52, v53, v54, v55, v56, v57, v58, v59))
      {
        v60 = OUTLINED_FUNCTION_25_20();
        lpta_rpta_loadp(v60, v61, v62);
        OUTLINED_FUNCTION_0_33();
        if (!mark_s())
        {
          OUTLINED_FUNCTION_3_30();
          if (!mark_s())
          {
            OUTLINED_FUNCTION_11_28();
            if (!mark_s())
            {
              goto LABEL_3;
            }
          }
        }
      }
    }
  }

  while (2)
  {
    v63 = v34;
    v64 = OUTLINED_FUNCTION_47_8();
    starttest(v64, v65);
    v66 = OUTLINED_FUNCTION_49_7();
    if (!lpta_loadp_setscan_l(v66, v67))
    {
      v85 = OUTLINED_FUNCTION_46_8();
      bspush_ca_scan(v85, v86);
      v87 = OUTLINED_FUNCTION_14_26();
      v90 = testFldeq(v87, v88, v89, 11);
      v91 = v34;
      if (!v90)
      {
LABEL_25:
        v34 = v91;
        if (!advance_tok(v0))
        {
          v92 = OUTLINED_FUNCTION_25_20();
          lpta_rpta_loadp(v92, v93, v94);
          OUTLINED_FUNCTION_0_33();
          if (!mark_s())
          {
            OUTLINED_FUNCTION_3_30();
            if (!mark_s())
            {
              OUTLINED_FUNCTION_2_31();
              if (!mark_s())
              {
                OUTLINED_FUNCTION_10_29();
                if (!mark_s())
                {
                  v95 = OUTLINED_FUNCTION_40_9();
                  if (!mark_v(v95, v96, v97, v98))
                  {
                    goto LABEL_3;
                  }
                }
              }
            }
          }
        }
      }

LABEL_35:
      v103 = v34;
LABEL_36:
      v104 = v0[13];
      if (v104)
      {
        v105 = OUTLINED_FUNCTION_87_4(v104);
        v35 = v106;
      }

      else
      {
        v105 = vback(v0, v103);
        v35 = 0;
      }

      v91 = v35;
      v79 = v35;
      switch(v105)
      {
        case 1:
          goto LABEL_8;
        case 2:
          goto LABEL_6;
        case 3:
          goto LABEL_7;
        case 4:
          v34 = v35;
          continue;
        case 6:
          v63 = v35;
          goto LABEL_19;
        case 7:
          v107 = OUTLINED_FUNCTION_101_1();
          bspush_ca_scan(v107, v108);
          v109 = OUTLINED_FUNCTION_13_28();
          goto LABEL_44;
        case 8:
          goto LABEL_25;
        case 9:
          v109 = OUTLINED_FUNCTION_15_26();
LABEL_44:
          v117 = testFldeq(v109, v110, v111, 2);
          v103 = v35;
          if (!v117)
          {
            goto LABEL_45;
          }

          goto LABEL_36;
        case 10:
LABEL_45:
          v118 = OUTLINED_FUNCTION_28_17();
          v121 = testFldeq(v118, v119, v120, 2);
          v91 = v35;
          v103 = v35;
          if (!v121)
          {
            goto LABEL_25;
          }

          goto LABEL_36;
        case 11:
          goto LABEL_52;
        case 12:
          v112 = OUTLINED_FUNCTION_1_31();
          v116 = testFldeq(v112, v113, v114, v115);
          v79 = v35;
          v103 = v35;
          if (!v116)
          {
            goto LABEL_21;
          }

          goto LABEL_36;
        case 13:
          goto LABEL_21;
        case 14:
          bspop_boa(v0);
          v122 = advance_tok(v0);
          v103 = v35;
          if (v122)
          {
            goto LABEL_36;
          }

          v123 = OUTLINED_FUNCTION_81_5();
          lpta_rpta_loadp(v123, v124, v194);
          OUTLINED_FUNCTION_0_33();
          v125 = mark_s();
          v103 = v35;
          if (v125)
          {
            goto LABEL_36;
          }

          OUTLINED_FUNCTION_6_29();
          v126 = mark_s();
          v103 = v35;
          if (v126)
          {
            goto LABEL_36;
          }

          v127 = OUTLINED_FUNCTION_40_9();
          v131 = mark_v(v127, v128, v129, v130);
          v103 = v35;
          if (v131)
          {
            goto LABEL_36;
          }

          goto LABEL_3;
        default:
          goto LABEL_3;
      }
    }

    break;
  }

LABEL_19:
  v68 = OUTLINED_FUNCTION_51_7();
  starttest(v68, v69);
  v70 = OUTLINED_FUNCTION_49_7();
  if (!lpta_loadp_setscan_l(v70, v71))
  {
    v72 = OUTLINED_FUNCTION_60_7();
    bspush_ca_scan(v72, v73);
    v74 = OUTLINED_FUNCTION_4_29();
    v78 = testFldeq(v74, v75, v76, v77);
    v79 = v63;
    v34 = v63;
    if (!v78)
    {
LABEL_21:
      v80 = v79;
      v81 = OUTLINED_FUNCTION_6_29();
      if (testFldeq(v81, v82, v83, v84) || advance_tok(v0))
      {
        v34 = v80;
      }

      else
      {
        OUTLINED_FUNCTION_72_6();
        bspush_ca_scan_boa();
        v99 = OUTLINED_FUNCTION_5_29();
        if (testFldeq(v99, v100, v101, v102))
        {
          v34 = v80;
        }

        else
        {
          v34 = 1;
        }
      }
    }

    goto LABEL_35;
  }

LABEL_52:
  OUTLINED_FUNCTION_43_8();
  if (v132)
  {
    v133 = OUTLINED_FUNCTION_25_20();
    lpta_rpta_loadp(v133, v134, v135);
    OUTLINED_FUNCTION_0_33();
    if (!mark_s())
    {
      OUTLINED_FUNCTION_3_30();
      if (!mark_s())
      {
        OUTLINED_FUNCTION_2_31();
        if (!mark_s())
        {
          OUTLINED_FUNCTION_10_29();
          if (!mark_s())
          {
            v136 = OUTLINED_FUNCTION_40_9();
            mark_v(v136, v137, v138, v139);
          }
        }
      }
    }
  }

LABEL_3:
  vretproc(v0);
  v18 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_113_1();
}

uint64_t pro_vs_det()
{
  OUTLINED_FUNCTION_22_21();
  v126 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_45_8(v2, v3, v4, v5, v6, v7, v8, v9, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125);
  OUTLINED_FUNCTION_56_7();
  if (setjmp(v1))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_30_16();
  if (OUTLINED_FUNCTION_116_1(v10, v11, v12, v13, v14))
  {
    goto LABEL_3;
  }

  v17 = OUTLINED_FUNCTION_26_20();
  get_parm(v17, v18, v19, -6);
  v20 = OUTLINED_FUNCTION_76_6();
  OUTLINED_FUNCTION_114_1(v20, v21);
  OUTLINED_FUNCTION_131_0();
  v24 = OUTLINED_FUNCTION_115_1(v22, v23, &null_str_8);
  OUTLINED_FUNCTION_104_1(v24, v25, &unk_2806BBF44);
  HIWORD(v121) = 0;
  OUTLINED_FUNCTION_127_0();
  v26 = OUTLINED_FUNCTION_77_6();
  if (!lpta_loadp_setscan_l(v26, v27))
  {
    OUTLINED_FUNCTION_20_21();
    if (!test_string_s())
    {
      copyvar(v0, &v121, (v0 + 2068));
      v28 = OUTLINED_FUNCTION_19_22();
      lpta_rpta_loadp(v28, v29, v30);
      OUTLINED_FUNCTION_2_31();
      if (mark_s())
      {
        goto LABEL_31;
      }

      goto LABEL_8;
    }
  }

  while (2)
  {
    v48 = OUTLINED_FUNCTION_38_11();
    starttest(v48, v49);
    v50 = OUTLINED_FUNCTION_35_13();
    if (!lpta_loadp_setscan_r(v50, v51))
    {
      v52 = OUTLINED_FUNCTION_1_31();
      if (testFldeq(v52, v53, v54, v55))
      {
        goto LABEL_31;
      }

LABEL_19:
      if (advance_tok(v0))
      {
        goto LABEL_31;
      }

      v56 = 2066;
      goto LABEL_41;
    }

LABEL_21:
    v57 = OUTLINED_FUNCTION_32_15();
    starttest(v57, v58);
    v59 = OUTLINED_FUNCTION_35_13();
    if (!lpta_loadp_setscan_r(v59, v60))
    {
      v81 = OUTLINED_FUNCTION_31_16();
      bspush_ca_scan(v81, v82);
      v83 = OUTLINED_FUNCTION_5_29();
LABEL_30:
      if (testFldeq(v83, v84, v85, v86))
      {
        goto LABEL_31;
      }

LABEL_39:
      if (advance_tok(v0))
      {
        goto LABEL_31;
      }

      goto LABEL_40;
    }

LABEL_22:
    v61 = OUTLINED_FUNCTION_34_14();
    starttest(v61, v62);
    v63 = OUTLINED_FUNCTION_35_13();
    if (!lpta_loadp_setscan_r(v63, v64))
    {
LABEL_37:
      v93 = OUTLINED_FUNCTION_52_7();
      if (test_synch(v93, v94, 1u, v95))
      {
        goto LABEL_31;
      }

      goto LABEL_40;
    }

LABEL_23:
    OUTLINED_FUNCTION_43_8();
    if (v65)
    {
      v66 = OUTLINED_FUNCTION_51_7();
      starttest(v66, v67);
      v68 = OUTLINED_FUNCTION_54_7();
      if (!lpta_loadp_setscan_r(v68, v69))
      {
        v70 = OUTLINED_FUNCTION_40_9();
        if (npush_fld(v70, v71, v72))
        {
          goto LABEL_31;
        }

        v73 = OUTLINED_FUNCTION_90_4();
        npush_i(v73);
        if (if_testgt(v0, v74, v75, v76, v77, v78, v79, v80))
        {
          goto LABEL_31;
        }

        goto LABEL_19;
      }

LABEL_40:
      v56 = 2070;
LABEL_41:
      HIWORD(v121) = *(v0 + v56);
LABEL_8:
      if (*(v0 + 2070) != HIWORD(v121) || (v31 = OUTLINED_FUNCTION_19_22(), lpta_rpta_loadp(v31, v32, v33), OUTLINED_FUNCTION_3_30(), mark_s()))
      {
LABEL_10:
        if (*(v0 + 2066) == HIWORD(v121))
        {
          v34 = OUTLINED_FUNCTION_19_22();
          lpta_rpta_loadp(v34, v35, v36);
          OUTLINED_FUNCTION_3_30();
          mark_s();
        }
      }

LABEL_12:
      v37 = OUTLINED_FUNCTION_69_6();
      starttest(v37, v38);
      v39 = OUTLINED_FUNCTION_54_7();
      if (lpta_loadp_setscan_r(v39, v40) || (v41 = OUTLINED_FUNCTION_13_28(), !testFldeq(v41, v42, v43, v44)) && !advance_tok(v0) && (v45 = OUTLINED_FUNCTION_19_22(), lpta_rpta_loadp(v45, v46, v47), OUTLINED_FUNCTION_0_33(), !mark_s()))
      {
LABEL_16:
        vretproc(v0);
        result = 0;
        goto LABEL_4;
      }

LABEL_31:
      v87 = *(v0 + 104);
      if (v87)
      {
        v88 = OUTLINED_FUNCTION_87_4(v87);
      }

      else
      {
        v89 = OUTLINED_FUNCTION_90_4();
        v88 = vback(v89, v90);
      }

      switch(v88)
      {
        case 1:
          continue;
        case 2:
        case 12:
          goto LABEL_8;
        case 3:
          goto LABEL_21;
        case 4:
          goto LABEL_22;
        case 5:
          v91 = OUTLINED_FUNCTION_46_8();
          bspush_ca_scan(v91, v92);
          v83 = OUTLINED_FUNCTION_8_29();
          goto LABEL_30;
        case 6:
          goto LABEL_39;
        case 7:
          v83 = OUTLINED_FUNCTION_13_28();
          v86 = 10;
          goto LABEL_30;
        case 8:
          goto LABEL_23;
        case 9:
          goto LABEL_37;
        case 11:
          goto LABEL_40;
        case 13:
          goto LABEL_10;
        case 14:
          goto LABEL_12;
        case 15:
          goto LABEL_16;
        default:
          goto LABEL_3;
      }
    }

    break;
  }

LABEL_3:
  vretproc(v0);
  result = 94;
LABEL_4:
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t det_vs_nounadj()
{
  OUTLINED_FUNCTION_22_21();
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_18_23(v3, v4, v5, v6, v7, v8, v9, v10, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, v149, v153, v157, v161, v164, v167);
  OUTLINED_FUNCTION_62_6(v11, v12, v13, v14, v15, v16, v17, v18, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142, v146, v150, v154, v158, v162, v165, v168, v170, v172, v174, v176, v178);
  v19 = setjmp(v1);
  if (!v19 && !OUTLINED_FUNCTION_17_24(v19, v20, v21, v22, v23, v24, v25, v26, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v147, v151, v155, v159, v163, v166, v169, *v171, v171[4], *v173, *&v173[4], v173[6], v175, SWORD2(v175), SBYTE6(v175), SHIBYTE(v175), v177, v179))
  {
    v29 = OUTLINED_FUNCTION_26_20();
    get_parm(v29, v30, v31, -6);
    OUTLINED_FUNCTION_70_6(v32, v33, v34, v35, v36, v37, v38, v39, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144, v148, v152, v156, v160);
    fence_29(v0, 0, &null_str_8);
    v40 = OUTLINED_FUNCTION_24_21();
    fence_29(v40, v41, v42);
    v43 = OUTLINED_FUNCTION_97_3();
    starttest(v43, v44);
    v45 = OUTLINED_FUNCTION_41_8();
    if (lpta_loadp_setscan_l(v45, v46))
    {
      goto LABEL_5;
    }

    v51 = OUTLINED_FUNCTION_4_29();
    if (testFldeq(v51, v52, v53, v54) || (v55 = OUTLINED_FUNCTION_14_26(), testFldeq(v55, v56, v57, 2)) || advance_tok(v0) || (v58 = OUTLINED_FUNCTION_16_25(), lpta_rpta_loadp(v58, v59, v60), OUTLINED_FUNCTION_0_33(), mark_s()) || (OUTLINED_FUNCTION_15_26(), mark_s()))
    {
      v61 = *(v0 + 104);
      if (v61)
      {
        v62 = OUTLINED_FUNCTION_87_4(v61);
      }

      else
      {
        v63 = OUTLINED_FUNCTION_90_4();
        v62 = vback(v63, v64);
      }

      if (v62 == 1)
      {
LABEL_5:
        OUTLINED_FUNCTION_43_8();
        if (v47)
        {
          v48 = OUTLINED_FUNCTION_16_25();
          lpta_rpta_loadp(v48, v49, v50);
          OUTLINED_FUNCTION_0_33();
          if (!mark_s())
          {
            OUTLINED_FUNCTION_4_29();
            mark_s();
          }
        }
      }
    }
  }

  vretproc(v0);
  v27 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_109_1();
}

uint64_t disambiguate_cedo()
{
  OUTLINED_FUNCTION_22_21();
  v117 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_103_1();
  OUTLINED_FUNCTION_27_18(v3, v4, v5, v6, v7, v8, v9, v10, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115);
  OUTLINED_FUNCTION_56_7();
  if (setjmp(v2) || (OUTLINED_FUNCTION_50_7(), OUTLINED_FUNCTION_116_1(v11, v12, v13, v14, v15)))
  {
LABEL_3:
    vretproc(v0);
    result = 94;
    goto LABEL_4;
  }

  v18 = OUTLINED_FUNCTION_59_7();
  get_parm(v18, v19, v20, -6);
  OUTLINED_FUNCTION_92_3(v21, v116);
  v22 = OUTLINED_FUNCTION_76_6();
  push_ptr_init(v22, v23);
  v24 = OUTLINED_FUNCTION_89_4();
  v26 = push_ptr_init(v24, v25);
  v28 = OUTLINED_FUNCTION_115_1(v26, v27, &null_str_8);
  OUTLINED_FUNCTION_104_1(v28, v29, &unk_2806BBF44);
  OUTLINED_FUNCTION_127_0();
  *(v0 + 136) = v1;
  OUTLINED_FUNCTION_23_21();
  if (lpta_tstmovel() || (v30 = OUTLINED_FUNCTION_73_6(), setscan_l(v30), v31) || (OUTLINED_FUNCTION_36_12(), v1 = 0, test_string_s()))
  {
LABEL_10:
    v36 = OUTLINED_FUNCTION_32_15();
    starttest(v36, v37);
    OUTLINED_FUNCTION_25_20();
    if (!followed_by_hyphen())
    {
      v38 = OUTLINED_FUNCTION_54_7();
      if (!lpta_loadp_setscan_r(v38, v39))
      {
        v50 = OUTLINED_FUNCTION_31_16();
        bspush_ca_scan(v50, v51);
        v52 = OUTLINED_FUNCTION_9_29();
        testFldeq(v52, v53, v54, v55);
        OUTLINED_FUNCTION_143_0();
        if (!v57)
        {
          goto LABEL_25;
        }

        goto LABEL_30;
      }
    }

LABEL_12:
    v35 = 2078;
    goto LABEL_13;
  }

LABEL_8:
  v32 = OUTLINED_FUNCTION_63_6();
  if (test_synch(v32, v33, 1u, v34))
  {
    goto LABEL_30;
  }

  while (1)
  {
    v35 = 2058;
LABEL_13:
    v40 = *(v0 + v35);
LABEL_14:
    v41 = OUTLINED_FUNCTION_34_14();
    starttest(v41, v42);
    if (*(v0 + 2058) != v40 || (v43 = OUTLINED_FUNCTION_25_20(), lpta_rpta_loadp(v43, v44, v45), OUTLINED_FUNCTION_0_33(), mark_s()) || (OUTLINED_FUNCTION_3_30(), mark_s()) || (OUTLINED_FUNCTION_6_29(), mark_s()) || (OUTLINED_FUNCTION_12_28(), OUTLINED_FUNCTION_140_0()))
    {
LABEL_39:
      v75 = OUTLINED_FUNCTION_25_20();
      lpta_rpta_loadp(v75, v76, v77);
      OUTLINED_FUNCTION_0_33();
      if (mark_s())
      {
        v1 = v40;
      }

      else
      {
        OUTLINED_FUNCTION_2_31();
        v1 = v40;
        if (!mark_s())
        {
          break;
        }
      }

      goto LABEL_30;
    }

    v46 = OUTLINED_FUNCTION_52_7();
    starttest_l(v46, v47);
    v48 = OUTLINED_FUNCTION_86_4();
    if (lpta_loadp_setscan_r(v48, v49))
    {
      v1 = v40;
    }

    else
    {
      advance_tok(v0);
      OUTLINED_FUNCTION_143_0();
      if (!v59)
      {
LABEL_29:
        v1 = v58;
        v60 = OUTLINED_FUNCTION_82_5();
        savescptr(v60, v61, v62);
        v63 = advance_tok(v0);
        v64 = v1;
        if (v63)
        {
          goto LABEL_30;
        }

LABEL_44:
        v1 = v64;
        v78 = OUTLINED_FUNCTION_74_6();
        savescptr(v78, v79, v80);
      }
    }

LABEL_45:
    v81 = OUTLINED_FUNCTION_16_25();
    lpta_rpta_loadp(v81, v82, v83);
    v84 = OUTLINED_FUNCTION_44_8();
    if (!insert_2pt_s(v84, v85, v86, v87, v88))
    {
      break;
    }

    do
    {
      do
      {
LABEL_30:
        v65 = *(v0 + 104);
        if (v65)
        {
          v66 = OUTLINED_FUNCTION_87_4(v65);
        }

        else
        {
          v67 = OUTLINED_FUNCTION_90_4();
          v66 = vback(v67, v68);
        }

        v56 = v1;
        switch(v66)
        {
          case 1:
            goto LABEL_10;
          case 2:
            goto LABEL_8;
          case 3:
            v40 = v1;
            goto LABEL_14;
          case 4:
            goto LABEL_12;
          case 5:
            v69 = OUTLINED_FUNCTION_101_1();
            bspush_ca_scan(v69, v70);
            v71 = OUTLINED_FUNCTION_15_26();
            v74 = 4;
            break;
          case 6:
            goto LABEL_25;
          case 7:
            v71 = OUTLINED_FUNCTION_14_26();
            v74 = 29;
            break;
          case 8:
            v40 = v1;
            goto LABEL_39;
          case 9:
            goto LABEL_45;
          case 10:
            v58 = v1;
            goto LABEL_29;
          case 11:
            v64 = v1;
            goto LABEL_44;
          case 12:
          case 13:
            goto LABEL_47;
          default:
            goto LABEL_3;
        }
      }

      while (testFldeq(v71, v72, v73, v74));
      v56 = v1;
LABEL_25:
      v1 = v56;
    }

    while (advance_tok(v0));
  }

  OUTLINED_FUNCTION_136_0();
LABEL_47:
  vretproc(v0);
  result = 0;
LABEL_4:
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t disambiguate_mesmo()
{
  OUTLINED_FUNCTION_22_21();
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_18_23(v4, v5, v6, v7, v8, v9, v10, v11, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142, v146, v150, v154, v158, v162, v166, v170, v174, v177, v180);
  OUTLINED_FUNCTION_62_6(v12, v13, v14, v15, v16, v17, v18, v19, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v147, v151, v155, v159, v163, v167, v171, v175, v178, v181, v183, v185, v187, v189, v191);
  v20 = setjmp(v2);
  if (v20 || OUTLINED_FUNCTION_17_24(v20, v21, v22, v23, v24, v25, v26, v27, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144, v148, v152, v156, v160, v164, v168, v172, v176, v179, v182, *v184, v184[4], *v186, *&v186[4], v186[6], v188, SWORD2(v188), SBYTE6(v188), SHIBYTE(v188), v190, v192))
  {
    goto LABEL_3;
  }

  v30 = OUTLINED_FUNCTION_26_20();
  get_parm(v30, v31, v32, -6);
  OUTLINED_FUNCTION_70_6(v33, v34, v35, v36, v37, v38, v39, v40, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, v149, v153, v157, v161, v165, v169, v173);
  fence_29(v0, 0, &null_str_8);
  v41 = OUTLINED_FUNCTION_24_21();
  fence_29(v41, v42, v43);
  v44 = OUTLINED_FUNCTION_97_3();
  starttest(v44, v45);
  v46 = OUTLINED_FUNCTION_41_8();
  if (!lpta_loadp_setscan_l(v46, v47))
  {
    v50 = OUTLINED_FUNCTION_78_6();
    bspush_ca_scan(v50, v51);
    v52 = OUTLINED_FUNCTION_79_6();
    v54 = testFldeq(v52, v53, v1, 1);
    v55 = 0;
    v56 = 0;
    if (!v54)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_6:
  OUTLINED_FUNCTION_43_8();
  if (!v48)
  {
LABEL_3:
    vretproc(v0);
    result = 94;
  }

  else
  {
    for (i = 2078; ; i = 2062)
    {
      v57 = *(v0 + i);
LABEL_13:
      v58 = OUTLINED_FUNCTION_34_14();
      starttest(v58, v59);
      if (*(v0 + 2078) == v57)
      {
        v60 = OUTLINED_FUNCTION_16_25();
        lpta_rpta_loadp(v60, v61, v62);
        OUTLINED_FUNCTION_0_33();
        if (!mark_s())
        {
          OUTLINED_FUNCTION_2_31();
          if (!mark_s())
          {
            break;
          }
        }
      }

LABEL_20:
      v63 = OUTLINED_FUNCTION_16_25();
      lpta_rpta_loadp(v63, v64, v65);
      OUTLINED_FUNCTION_0_33();
      if (mark_s())
      {
        v56 = v57;
      }

      else
      {
        OUTLINED_FUNCTION_2_31();
        v56 = v57;
        if (!mark_s())
        {
          break;
        }
      }

      do
      {
        do
        {
LABEL_23:
          v66 = *(v0 + 104);
          if (v66)
          {
            v67 = OUTLINED_FUNCTION_87_4(v66);
          }

          else
          {
            v68 = OUTLINED_FUNCTION_90_4();
            v67 = vback(v68, v69);
          }

          v55 = v56;
          switch(v67)
          {
            case 1:
              goto LABEL_6;
            case 2:
              v70 = OUTLINED_FUNCTION_97_3();
              bspush_ca_scan(v70, v71);
              v72 = OUTLINED_FUNCTION_15_26();
              v75 = 4;
              break;
            case 3:
              goto LABEL_10;
            case 4:
              v76 = OUTLINED_FUNCTION_81_5();
              bspush_ca_scan(v76, v77);
              v72 = OUTLINED_FUNCTION_14_26();
              v75 = 3;
              break;
            case 5:
              v72 = OUTLINED_FUNCTION_14_26();
              v75 = 37;
              break;
            case 6:
              v57 = v56;
              goto LABEL_13;
            case 8:
              v57 = v56;
              goto LABEL_20;
            case 9:
              goto LABEL_18;
            default:
              goto LABEL_3;
          }
        }

        while (testFldeq(v72, v73, v74, v75));
        v55 = v56;
LABEL_10:
        v56 = v55;
      }

      while (advance_tok(v0));
    }

LABEL_18:
    vretproc(v0);
    result = 0;
  }

  v29 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t disambiguate_como()
{
  OUTLINED_FUNCTION_22_21();
  v172 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_103_1();
  OUTLINED_FUNCTION_27_18(v3, v4, v5, v6, v7, v8, v9, v10, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170);
  OUTLINED_FUNCTION_56_7();
  if (setjmp(v2) || (OUTLINED_FUNCTION_50_7(), OUTLINED_FUNCTION_116_1(v11, v12, v13, v14, v15)))
  {
LABEL_3:
    vretproc(v0);
    result = 94;
    goto LABEL_4;
  }

  v18 = OUTLINED_FUNCTION_59_7();
  get_parm(v18, v19, v20, -6);
  OUTLINED_FUNCTION_92_3(v21, v171);
  v22 = OUTLINED_FUNCTION_76_6();
  push_ptr_init(v22, v23);
  v24 = OUTLINED_FUNCTION_89_4();
  v26 = push_ptr_init(v24, v25);
  v27 = 0;
  v29 = OUTLINED_FUNCTION_115_1(v26, v28, &null_str_8);
  OUTLINED_FUNCTION_104_1(v29, v30, &unk_2806BBF44);
  OUTLINED_FUNCTION_127_0();
  *(v0 + 136) = v1;
  OUTLINED_FUNCTION_23_21();
  if (!lpta_tstmovel())
  {
    v31 = OUTLINED_FUNCTION_73_6();
    setscan_l(v31);
    if (v32)
    {
      v27 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_36_12();
      test_string_s();
      OUTLINED_FUNCTION_144_0();
      if (!v34)
      {
LABEL_32:
        v27 = v33;
        v76 = OUTLINED_FUNCTION_63_6();
        if (test_synch(v76, v77, 1u, v78))
        {
          goto LABEL_35;
        }

LABEL_20:
        v50 = 2058;
        goto LABEL_21;
      }
    }
  }

LABEL_9:
  v35 = OUTLINED_FUNCTION_32_15();
  starttest(v35, v36);
  OUTLINED_FUNCTION_25_20();
  if (!followed_by_hyphen())
  {
    v37 = OUTLINED_FUNCTION_54_7();
    if (!lpta_loadp_setscan_r(v37, v38))
    {
      v59 = OUTLINED_FUNCTION_31_16();
      bspush_ca_scan(v59, v60);
      v61 = OUTLINED_FUNCTION_9_29();
      v65 = testFldeq(v61, v62, v63, v64);
      v66 = v27;
      if (v65)
      {
        goto LABEL_35;
      }

LABEL_19:
      v27 = v66;
      if (advance_tok(v0))
      {
        goto LABEL_35;
      }

      goto LABEL_20;
    }
  }

LABEL_11:
  v39 = OUTLINED_FUNCTION_34_14();
  starttest(v39, v40);
  v41 = OUTLINED_FUNCTION_54_7();
  v43 = lpta_loadp_setscan_r(v41, v42);
  v44 = v27;
  if (!v43)
  {
LABEL_74:
    v27 = v44;
    v133 = OUTLINED_FUNCTION_68_6();
    bspush_ca_scan(v133, v134);
    v135 = OUTLINED_FUNCTION_51_7();
    bspush_ca_scan(v135, v136);
LABEL_75:
    v84 = v27;
LABEL_76:
    v27 = v84;
    v137 = OUTLINED_FUNCTION_64_6();
    bspush_ca_scan(v137, v138);
    v139 = OUTLINED_FUNCTION_8_29();
    v143 = testFldeq(v139, v140, v141, v142);
    v85 = v27;
    if (v143)
    {
      goto LABEL_35;
    }

LABEL_77:
    v27 = v85;
    if (advance_tok(v0))
    {
      goto LABEL_35;
    }

    v50 = 2070;
    goto LABEL_21;
  }

LABEL_12:
  v45 = OUTLINED_FUNCTION_69_6();
  starttest(v45, v46);
  v47 = OUTLINED_FUNCTION_54_7();
  if (!lpta_loadp_setscan_r(v47, v48))
  {
    v51 = OUTLINED_FUNCTION_72_6();
    bspush_ca_scan(v51, v52);
    v53 = OUTLINED_FUNCTION_4_29();
    v57 = testFldeq(v53, v54, v55, v56);
    v58 = v27;
    if (!v57)
    {
      goto LABEL_34;
    }

    goto LABEL_35;
  }

LABEL_13:
  OUTLINED_FUNCTION_43_8();
  if (!v49)
  {
    goto LABEL_3;
  }

  while (1)
  {
    v50 = 2082;
LABEL_21:
    v27 = *(v0 + v50);
LABEL_22:
    OUTLINED_FUNCTION_112_1();
    if (!v49)
    {
      break;
    }

    v67 = OUTLINED_FUNCTION_25_20();
    lpta_rpta_loadp(v67, v68, v69);
    OUTLINED_FUNCTION_0_33();
    if (mark_s())
    {
      break;
    }

    OUTLINED_FUNCTION_3_30();
    if (mark_s())
    {
      break;
    }

    OUTLINED_FUNCTION_6_29();
    if (mark_s())
    {
      break;
    }

    OUTLINED_FUNCTION_12_28();
    if (OUTLINED_FUNCTION_140_0())
    {
      break;
    }

    v70 = OUTLINED_FUNCTION_72_6();
    starttest_l(v70, v71);
    v72 = OUTLINED_FUNCTION_86_4();
    if (!lpta_loadp_setscan_r(v72, v73))
    {
      v74 = advance_tok(v0);
      v75 = v27;
      if (!v74)
      {
LABEL_67:
        v27 = v75;
        v117 = OUTLINED_FUNCTION_82_5();
        savescptr(v117, v118, v119);
        v120 = advance_tok(v0);
        v121 = v27;
        if (v120)
        {
          goto LABEL_35;
        }

LABEL_70:
        v27 = v121;
        v122 = OUTLINED_FUNCTION_74_6();
        savescptr(v122, v123, v124);
      }
    }

LABEL_71:
    v125 = OUTLINED_FUNCTION_16_25();
    lpta_rpta_loadp(v125, v126, v127);
    v128 = OUTLINED_FUNCTION_44_8();
    if (!insert_2pt_s(v128, v129, v130, v131, v132))
    {
      goto LABEL_72;
    }

    do
    {
LABEL_35:
      while (2)
      {
        v79 = *(v0 + 104);
        if (v79)
        {
          v80 = OUTLINED_FUNCTION_87_4(v79);
        }

        else
        {
          v81 = OUTLINED_FUNCTION_90_4();
          v80 = vback(v81, v82);
        }

        v83 = v80 - 1;
        v66 = v27;
        v44 = v27;
        v84 = v27;
        v85 = v27;
        v58 = v27;
        switch(v83)
        {
          case 0:
            goto LABEL_9;
          case 1:
            v33 = v27;
            goto LABEL_32;
          case 2:
            goto LABEL_22;
          case 3:
            goto LABEL_11;
          case 4:
            v86 = OUTLINED_FUNCTION_46_8();
            bspush_ca_scan(v86, v87);
            v88 = OUTLINED_FUNCTION_15_26();
            v91 = 4;
            goto LABEL_50;
          case 5:
            goto LABEL_19;
          case 6:
            v88 = OUTLINED_FUNCTION_14_26();
            v91 = 29;
LABEL_50:
            if (testFldeq(v88, v89, v90, v91))
            {
              continue;
            }

            v66 = v27;
            goto LABEL_19;
          case 7:
            goto LABEL_12;
          case 8:
            goto LABEL_74;
          case 9:
            v95 = OUTLINED_FUNCTION_1_31();
            if (testFldeq(v95, v96, v97, v98) || advance_tok(v0))
            {
              continue;
            }

            v44 = v27;
            goto LABEL_74;
          case 10:
            v99 = OUTLINED_FUNCTION_9_29();
            if (!testFldeq(v99, v100, v101, v102) && !advance_tok(v0))
            {
              goto LABEL_75;
            }

            continue;
          case 11:
            goto LABEL_76;
          case 12:
            v92 = OUTLINED_FUNCTION_15_26();
            if (testFldeq(v92, v93, v94, 6))
            {
              continue;
            }

            v85 = v27;
            goto LABEL_77;
          case 13:
            goto LABEL_77;
          case 14:
            goto LABEL_13;
          case 15:
            v103 = OUTLINED_FUNCTION_72_6();
            bspush_ca_scan(v103, v104);
            v105 = OUTLINED_FUNCTION_13_28();
            goto LABEL_53;
          case 16:
            goto LABEL_34;
          case 17:
            v108 = OUTLINED_FUNCTION_72_6();
            bspush_ca_scan(v108, v109);
            v105 = OUTLINED_FUNCTION_15_26();
LABEL_53:
            v110 = 2;
            goto LABEL_55;
          case 18:
            v105 = OUTLINED_FUNCTION_13_28();
            v110 = 5;
LABEL_55:
            if (testFldeq(v105, v106, v107, v110))
            {
              continue;
            }

            v58 = v27;
            break;
          case 20:
            goto LABEL_57;
          case 21:
            goto LABEL_71;
          case 22:
            v75 = v27;
            goto LABEL_67;
          case 23:
            v121 = v27;
            goto LABEL_70;
          case 24:
          case 25:
          case 27:
          case 28:
            goto LABEL_73;
          case 26:
            goto LABEL_62;
          default:
            goto LABEL_3;
        }

        break;
      }

LABEL_34:
      v27 = v58;
    }

    while (advance_tok(v0));
  }

LABEL_57:
  OUTLINED_FUNCTION_111_1();
  if (v49)
  {
    v111 = OUTLINED_FUNCTION_25_20();
    lpta_rpta_loadp(v111, v112, v113);
    OUTLINED_FUNCTION_0_33();
    if (!mark_s())
    {
      OUTLINED_FUNCTION_3_30();
      if (!mark_s())
      {
        OUTLINED_FUNCTION_2_31();
        if (!mark_s())
        {
          goto LABEL_72;
        }
      }
    }
  }

LABEL_62:
  if (*(v0 + 2082) == v27)
  {
    v114 = OUTLINED_FUNCTION_25_20();
    lpta_rpta_loadp(v114, v115, v116);
    OUTLINED_FUNCTION_0_33();
    if (!mark_s())
    {
      OUTLINED_FUNCTION_3_30();
      if (!mark_s())
      {
LABEL_72:
        OUTLINED_FUNCTION_136_0();
      }
    }
  }

LABEL_73:
  vretproc(v0);
  result = 0;
LABEL_4:
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t disambiguate_acerca()
{
  OUTLINED_FUNCTION_22_21();
  v115 = *MEMORY[0x277D85DE8];
  v111[0] = 0;
  v111[1] = 0;
  v110[0] = 0;
  v110[1] = 0;
  v109 = 65532;
  v107 = 0;
  v108 = 0;
  OUTLINED_FUNCTION_67_6(v2, v3, v4, v5, v6, v7, v8, v9, v81, v82[0], v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106);
  OUTLINED_FUNCTION_56_7();
  v10 = setjmp(v1);
  if (v10 || (v11 = OUTLINED_FUNCTION_116_1(v10, v82, v114, v113, v112), v11))
  {
LABEL_3:
    vretproc(v0);
    result = 94;
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_94_3(v11, v111);
  v14 = v110;
  OUTLINED_FUNCTION_53_7();
  v15 = OUTLINED_FUNCTION_107_1();
  push_ptr_init(v15, v16);
  v17 = OUTLINED_FUNCTION_96_3();
  v19 = push_ptr_init(v17, v18);
  OUTLINED_FUNCTION_115_1(v19, v20, &null_str_8);
  v21 = OUTLINED_FUNCTION_57_7();
  fence_29(v21, v22, v23);
  OUTLINED_FUNCTION_125_0();
  v24 = OUTLINED_FUNCTION_66_6();
  if (lpta_loadp_setscan_r(v24, v25))
  {
LABEL_10:
    v32 = OUTLINED_FUNCTION_38_11();
    starttest(v32, v33);
    OUTLINED_FUNCTION_100_1();
    if (!followed_by_hyphen())
    {
      v34 = OUTLINED_FUNCTION_49_7();
      if (!lpta_loadp_setscan_r(v34, v35))
      {
        v49 = OUTLINED_FUNCTION_32_15();
        bspush_ca_scan(v49, v50);
        v51 = OUTLINED_FUNCTION_9_29();
        testFldeq(v51, v52, v53, v54);
        OUTLINED_FUNCTION_143_0();
        if (!v56)
        {
          goto LABEL_26;
        }

        goto LABEL_32;
      }
    }

LABEL_12:
    v30 = *(v0 + 2058);
    v31 = *(v0 + 3070);
LABEL_13:
    HIWORD(v109) = v31;
    goto LABEL_14;
  }

  v26 = OUTLINED_FUNCTION_5_29();
  if (!testFldeq(v26, v27, v28, v29) && !advance_tok(v0))
  {
    v30 = *(v0 + 2078);
    v31 = *(v0 + 3066);
    goto LABEL_13;
  }

  v14 = 0;
  while (1)
  {
    do
    {
LABEL_32:
      OUTLINED_FUNCTION_142_0();
      do
      {
        v68 = *(v0 + 104);
        if (v68)
        {
          v69 = OUTLINED_FUNCTION_87_4(v68);
        }

        else
        {
          v70 = OUTLINED_FUNCTION_90_4();
          v69 = vback(v70, v71);
        }

        v55 = v14;
        switch(v69)
        {
          case 1:
            goto LABEL_10;
          case 2:
            v30 = v14;
            goto LABEL_14;
          case 3:
            goto LABEL_12;
          case 4:
            v72 = OUTLINED_FUNCTION_101_1();
            bspush_ca_scan(v72, v73);
            v74 = OUTLINED_FUNCTION_15_26();
            v77 = 4;
            break;
          case 5:
            goto LABEL_26;
          case 6:
            v74 = OUTLINED_FUNCTION_14_26();
            v77 = 29;
            break;
          case 7:
            LODWORD(v30) = v14;
            goto LABEL_42;
          case 8:
            v30 = v14;
            goto LABEL_31;
          case 9:
            goto LABEL_23;
          case 10:
            v48 = v14;
            goto LABEL_30;
          case 11:
            goto LABEL_44;
          case 12:
            goto LABEL_45;
          default:
            goto LABEL_3;
        }
      }

      while (testFldeq(v74, v75, v76, v77));
      v55 = v14;
LABEL_26:
      v14 = v55;
    }

    while (advance_tok(v0));
    v30 = *(v0 + 2058);
LABEL_14:
    OUTLINED_FUNCTION_112_1();
    if (!v36)
    {
      break;
    }

    v37 = OUTLINED_FUNCTION_100_1();
    lpta_rpta_loadp(v37, v38, v39);
    OUTLINED_FUNCTION_0_33();
    if (mark_s())
    {
      break;
    }

    OUTLINED_FUNCTION_3_30();
    if (mark_s())
    {
      break;
    }

    OUTLINED_FUNCTION_6_29();
    if (mark_s())
    {
      break;
    }

    v40 = OUTLINED_FUNCTION_34_14();
    starttest_l(v40, v41);
    v42 = OUTLINED_FUNCTION_86_4();
    if (lpta_loadp_setscan_l(v42, v43))
    {
      goto LABEL_31;
    }

    if (advance_tok(v0))
    {
      goto LABEL_31;
    }

    if (advance_tok(v0))
    {
      goto LABEL_31;
    }

    v14 = v30;
    if (advance_tok(v0))
    {
      goto LABEL_31;
    }

LABEL_23:
    v44 = OUTLINED_FUNCTION_106_1();
    savescptr(v44, v45, v46);
    v47 = advance_tok(v0);
    v48 = v14;
    if (!v47)
    {
LABEL_30:
      v30 = v48;
      v57 = OUTLINED_FUNCTION_145_0();
      savescptr(v57, v58, v59);
LABEL_31:
      v60 = OUTLINED_FUNCTION_106_1();
      lpta_rpta_loadp(v60, v61, v62);
      v63 = OUTLINED_FUNCTION_44_8();
      v14 = v30;
      if (!insert_2pt_s(v63, v64, v65, v66, v67))
      {
        goto LABEL_44;
      }
    }
  }

LABEL_42:
  if (*(v0 + 2078) == v30)
  {
    v78 = OUTLINED_FUNCTION_100_1();
    lpta_rpta_loadp(v78, v79, v80);
    OUTLINED_FUNCTION_0_33();
    mark_s();
  }

LABEL_44:
  mark_word_stress();
LABEL_45:
  vretproc(v0);
  result = 0;
LABEL_4:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mark_por_content_word()
{
  OUTLINED_FUNCTION_22_21();
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_18_23(v3, v4, v5, v6, v7, v8, v9, v10, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118, v121, v124, v127, v130);
  OUTLINED_FUNCTION_62_6(v11, v12, v13, v14, v15, v16, v17, v18, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v119, v122, v125, v128, v131, v133, v135, v137, v139, v141);
  v19 = setjmp(v1);
  if (!v19 && !OUTLINED_FUNCTION_17_24(v19, v20, v21, v22, v23, v24, v25, v26, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117, v120, v123, v126, v129, v132, *v134, v134[4], *v136, *&v136[4], v136[6], v138, SWORD2(v138), SBYTE6(v138), SHIBYTE(v138), v140, v142))
  {
    v29 = OUTLINED_FUNCTION_26_20();
    get_parm(v29, v30, v31, -6);
    OUTLINED_FUNCTION_53_7();
    fence_29(v0, 0, &null_str_8);
    v32 = OUTLINED_FUNCTION_73_6();
    fence_29(v32, v33, v34);
    v35 = OUTLINED_FUNCTION_26_20();
    lpta_rpta_loadp(v35, v36, v37);
    v38 = OUTLINED_FUNCTION_73_6();
    if (setd_lookup(v38, v39, 17))
    {
      v40 = OUTLINED_FUNCTION_16_25();
      lpta_rpta_loadp(v40, v41, v42);
      v43 = OUTLINED_FUNCTION_73_6();
      if (setd_lookup(v43, v44, 18) || (v45 = OUTLINED_FUNCTION_16_25(), lpta_rpta_loadp(v45, v46, v47), OUTLINED_FUNCTION_0_33(), mark_s()) || (v48 = OUTLINED_FUNCTION_40_9(), mark_v(v48, v49, v50, v51)))
      {
        OUTLINED_FUNCTION_16_25();
        if (mark_proper_name())
        {
          OUTLINED_FUNCTION_16_25();
          if (mark_aux_verb())
          {
            OUTLINED_FUNCTION_16_25();
            if (mark_numbers())
            {
              OUTLINED_FUNCTION_16_25();
              if (mark_nounadj_from_sets())
              {
                OUTLINED_FUNCTION_16_25();
                if (mark_verb_from_sets())
                {
                  OUTLINED_FUNCTION_16_25();
                  if (mark_noun_verb_from_sets())
                  {
                    OUTLINED_FUNCTION_16_25();
                    if (mark_prespart())
                    {
                      OUTLINED_FUNCTION_16_25();
                      if (mark_inf())
                      {
                        OUTLINED_FUNCTION_16_25();
                        if (mark_adverb())
                        {
                          OUTLINED_FUNCTION_16_25();
                          if (mark_verb_by_rule())
                          {
                            OUTLINED_FUNCTION_16_25();
                            if (mark_nounadj_by_rule())
                            {
                              OUTLINED_FUNCTION_16_25();
                              mark_noun_verb();
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

  vretproc(v0);
  v27 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_109_1();
}

uint64_t mark_proper_name()
{
  OUTLINED_FUNCTION_22_21();
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_18_23(v3, v4, v5, v6, v7, v8, v9, v10, v56, v60, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144, v148, v149, v150, v151);
  OUTLINED_FUNCTION_62_6(v11, v12, v13, v14, v15, v16, v17, v18, v57, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, v148, v149, v150, v151, v152, v153, v154, v155, v156);
  v19 = setjmp(v1);
  if (!v19 && !OUTLINED_FUNCTION_17_24(v19, v20, v21, v22, v23, v24, v25, v26, v58, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142, v146, v148, v149, v150, v151, v152, SBYTE4(v152), v153, SWORD2(v153), SBYTE6(v153), v154, SWORD2(v154), SBYTE6(v154), SHIBYTE(v154), v155, v156))
  {
    v27 = OUTLINED_FUNCTION_26_20();
    get_parm(v27, v28, v29, -6);
    OUTLINED_FUNCTION_70_6(v30, v31, v32, v33, v34, v35, v36, v37, v59, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v147, v148);
    fence_29(v0, 0, &null_str_8);
    v38 = OUTLINED_FUNCTION_72_6();
    starttest(v38, v39);
    v40 = OUTLINED_FUNCTION_77_6();
    if (!is_proper_name(v40, v41, v42, v43, v44, v45, v46, v47))
    {
      do
      {
        v48 = OUTLINED_FUNCTION_81_5();
        lpta_rpta_loadp(v48, v49, &v148);
        OUTLINED_FUNCTION_1_31();
        if (!mark_s())
        {
          OUTLINED_FUNCTION_14_26();
          if (!mark_s())
          {
            break;
          }
        }

        v50 = *(v0 + 104);
        if (v50)
        {
          v51 = OUTLINED_FUNCTION_87_4(v50);
        }

        else
        {
          v52 = OUTLINED_FUNCTION_79_6();
          v51 = vback(v52, v53);
        }
      }

      while (v51 == 2);
    }
  }

  vretproc(v0);
  v54 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_109_1();
}

uint64_t mark_aux_verb()
{
  OUTLINED_FUNCTION_22_21();
  v137[33] = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_98_2();
  v137[0] = 0;
  OUTLINED_FUNCTION_85_4();
  bzero(&v136, v2);
  OUTLINED_FUNCTION_56_7();
  if (setjmp(v1))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_30_16();
  if (OUTLINED_FUNCTION_116_1(v3, v4, v5, v6, v7))
  {
    goto LABEL_3;
  }

  v10 = OUTLINED_FUNCTION_26_20();
  get_parm(v10, v11, v12, -6);
  OUTLINED_FUNCTION_53_7();
  v137[0] = 0xFFFC0000FFFCLL;
  OUTLINED_FUNCTION_115_1(v13, v14, &null_str_8);
  HIWORD(v137[0]) = 0;
  WORD1(v137[0]) = *(v0 + 3066);
  v15 = OUTLINED_FUNCTION_97_3();
  starttest(v15, v16);
  v17 = OUTLINED_FUNCTION_26_20();
  lpta_rpta_loadp(v17, v18, v19);
  v20 = OUTLINED_FUNCTION_79_6();
  if (!setd_lookup(v20, v21, 7))
  {
    goto LABEL_5;
  }

  while (2)
  {
    v34 = OUTLINED_FUNCTION_38_11();
    starttest(v34, v35);
    v36 = OUTLINED_FUNCTION_19_22();
    lpta_rpta_loadp(v36, v37, v38);
    v39 = OUTLINED_FUNCTION_73_6();
    if (setd_lookup(v39, v40, 8))
    {
LABEL_14:
      v41 = OUTLINED_FUNCTION_32_15();
      starttest(v41, v42);
      v43 = OUTLINED_FUNCTION_19_22();
      lpta_rpta_loadp(v43, v44, v45);
      v46 = OUTLINED_FUNCTION_73_6();
      if (!setd_lookup(v46, v47, 9))
      {
LABEL_17:
        OUTLINED_FUNCTION_105_1();
        goto LABEL_19;
      }

LABEL_15:
      v48 = OUTLINED_FUNCTION_31_16();
      starttest(v48, v49);
      v50 = OUTLINED_FUNCTION_19_22();
      lpta_rpta_loadp(v50, v51, v52);
      v53 = OUTLINED_FUNCTION_73_6();
      if (setd_lookup(v53, v54, 10))
      {
LABEL_16:
        v55 = OUTLINED_FUNCTION_47_8();
        starttest(v55, v56);
        v57 = OUTLINED_FUNCTION_19_22();
        lpta_rpta_loadp(v57, v58, v59);
        v60 = OUTLINED_FUNCTION_73_6();
        if (!setd_lookup(v60, v61, 11))
        {
          goto LABEL_17;
        }

LABEL_24:
        v71 = OUTLINED_FUNCTION_46_8();
        starttest(v71, v72);
        v73 = OUTLINED_FUNCTION_19_22();
        lpta_rpta_loadp(v73, v74, v75);
        v76 = OUTLINED_FUNCTION_73_6();
        if (setd_lookup(v76, v77, 12))
        {
LABEL_25:
          v78 = OUTLINED_FUNCTION_34_14();
          starttest(v78, v79);
          v80 = OUTLINED_FUNCTION_19_22();
          lpta_rpta_loadp(v80, v81, v82);
          v83 = OUTLINED_FUNCTION_73_6();
          if (setd_lookup(v83, v84, 13))
          {
LABEL_26:
            v85 = OUTLINED_FUNCTION_52_7();
            starttest(v85, v86);
            v87 = OUTLINED_FUNCTION_19_22();
            lpta_rpta_loadp(v87, v88, v89);
            v90 = OUTLINED_FUNCTION_73_6();
            if (!setd_lookup(v90, v91, 14))
            {
              goto LABEL_13;
            }

LABEL_27:
            v92 = OUTLINED_FUNCTION_68_6();
            starttest(v92, v93);
            v94 = OUTLINED_FUNCTION_19_22();
            lpta_rpta_loadp(v94, v95, v96);
            v97 = OUTLINED_FUNCTION_73_6();
            if (!setd_lookup(v97, v98, 15))
            {
              goto LABEL_17;
            }

LABEL_28:
            v99 = OUTLINED_FUNCTION_51_7();
            starttest(v99, v100);
            v101 = OUTLINED_FUNCTION_19_22();
            lpta_rpta_loadp(v101, v102, v103);
            v104 = OUTLINED_FUNCTION_73_6();
            if (!setd_lookup(v104, v105, 16))
            {
              goto LABEL_18;
            }

LABEL_29:
            v106 = OUTLINED_FUNCTION_60_7();
            starttest(v106, v107);
            v108 = OUTLINED_FUNCTION_19_22();
            lpta_rpta_loadp(v108, v109, v110);
            v111 = OUTLINED_FUNCTION_73_6();
            if (setd_lookup(v111, v112, 5))
            {
LABEL_30:
              v113 = OUTLINED_FUNCTION_64_6();
              starttest(v113, v114);
              v115 = OUTLINED_FUNCTION_19_22();
              lpta_rpta_loadp(v115, v116, v117);
              v118 = OUTLINED_FUNCTION_73_6();
              if (!setd_lookup(v118, v119, 6))
              {
                goto LABEL_13;
              }

LABEL_31:
              v120 = OUTLINED_FUNCTION_72_6();
              starttest(v120, v121);
              v122 = OUTLINED_FUNCTION_19_22();
              lpta_rpta_loadp(v122, v123, v124);
              v125 = OUTLINED_FUNCTION_42_8();
              if (!setd_lookup(v125, v126, v127))
              {
                goto LABEL_17;
              }

LABEL_32:
              v128 = OUTLINED_FUNCTION_69_6();
              starttest(v128, v129);
              v130 = OUTLINED_FUNCTION_19_22();
              lpta_rpta_loadp(v130, v131, v132);
              v133 = OUTLINED_FUNCTION_58_7();
              if (setd_lookup(v133, v134, v135))
              {
                break;
              }

              goto LABEL_18;
            }
          }

LABEL_5:
          OUTLINED_FUNCTION_105_1();
          goto LABEL_6;
        }
      }

LABEL_18:
      OUTLINED_FUNCTION_118_1();
LABEL_19:
      copyvar(v0, v62, v63);
      v64 = OUTLINED_FUNCTION_19_22();
      lpta_rpta_loadp(v64, v65, v66);
      OUTLINED_FUNCTION_2_31();
      if (!mark_s())
      {
        goto LABEL_8;
      }

      goto LABEL_20;
    }

LABEL_13:
    OUTLINED_FUNCTION_118_1();
LABEL_6:
    copyvar(v0, v22, v23);
    v24 = OUTLINED_FUNCTION_19_22();
    lpta_rpta_loadp(v24, v25, v26);
    OUTLINED_FUNCTION_2_31();
    if (!mark_s())
    {
      copyvar(v0, v137, (v0 + 3052));
LABEL_8:
      v27 = OUTLINED_FUNCTION_19_22();
      lpta_rpta_loadp(v27, v28, v29);
      OUTLINED_FUNCTION_0_33();
      if (!mark_s())
      {
        OUTLINED_FUNCTION_3_30();
        if (!mark_s())
        {
          v30 = OUTLINED_FUNCTION_40_9();
          if (!mark_v(v30, v31, v32, v33))
          {
            OUTLINED_FUNCTION_83_4();
            OUTLINED_FUNCTION_130_0();
            mark_number();
            break;
          }
        }
      }
    }

LABEL_20:
    v67 = *(v0 + 104);
    if (v67)
    {
      v68 = OUTLINED_FUNCTION_87_4(v67);
    }

    else
    {
      v69 = OUTLINED_FUNCTION_90_4();
      v68 = vback(v69, v70);
    }

    switch(v68)
    {
      case 1:
        continue;
      case 2:
        goto LABEL_8;
      case 3:
        goto LABEL_14;
      case 4:
        goto LABEL_15;
      case 5:
        goto LABEL_16;
      case 6:
        goto LABEL_24;
      case 7:
        goto LABEL_25;
      case 8:
        goto LABEL_26;
      case 9:
        goto LABEL_27;
      case 10:
        goto LABEL_28;
      case 11:
        goto LABEL_29;
      case 12:
        goto LABEL_30;
      case 13:
        goto LABEL_31;
      case 14:
        goto LABEL_32;
      default:
        goto LABEL_3;
    }
  }

LABEL_3:
  vretproc(v0);
  v8 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_119_1();
}

uint64_t mark_numbers()
{
  OUTLINED_FUNCTION_22_21();
  v112 = *MEMORY[0x277D85DE8];
  v107 = 0;
  v108 = 0;
  v105 = 0;
  v106 = 0;
  v104 = 0;
  v102 = 0;
  v103 = 0;
  OUTLINED_FUNCTION_67_6(v2, v3, v4, v5, v6, v7, v8, v9, v76, v77[0], v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101);
  OUTLINED_FUNCTION_56_7();
  v10 = setjmp(v1);
  if (v10 || OUTLINED_FUNCTION_116_1(v10, v77, v111, v110, v109))
  {
    goto LABEL_3;
  }

  v14 = OUTLINED_FUNCTION_26_20();
  get_parm(v14, v15, v16, -6);
  v17 = OUTLINED_FUNCTION_86_4();
  OUTLINED_FUNCTION_114_1(v17, v18);
  LOWORD(v104) = -4;
  v19 = OUTLINED_FUNCTION_107_1();
  push_ptr_init(v19, v20);
  v21 = OUTLINED_FUNCTION_96_3();
  v23 = push_ptr_init(v21, v22);
  OUTLINED_FUNCTION_115_1(v23, v24, &null_str_8);
  HIWORD(v104) = 0;
  v25 = OUTLINED_FUNCTION_97_3();
  starttest(v25, v26);
  v27 = OUTLINED_FUNCTION_77_6();
  if (!lpta_loadp_setscan_r(v27, v28))
  {
    OUTLINED_FUNCTION_79_6();
    if (!test_string_s())
    {
      *(v0 + 136) = 1;
      v29 = OUTLINED_FUNCTION_23_21();
      if (!test_ptr(v29))
      {
        goto LABEL_28;
      }
    }
  }

  while (2)
  {
    v30 = OUTLINED_FUNCTION_38_11();
    starttest(v30, v31);
    v32 = OUTLINED_FUNCTION_100_1();
    lpta_rpta_loadp(v32, v33, v34);
    v35 = OUTLINED_FUNCTION_73_6();
    if (setd_lookup(v35, v36, 26))
    {
LABEL_14:
      v41 = OUTLINED_FUNCTION_32_15();
      starttest(v41, v42);
      v43 = OUTLINED_FUNCTION_48_8();
      if (lpta_loadp_setscan_l(v43, v44))
      {
LABEL_3:
        v11 = 94;
        goto LABEL_4;
      }

      v45 = OUTLINED_FUNCTION_31_16();
      bspush_ca_scan(v45, v46);
      v47 = OUTLINED_FUNCTION_47_8();
      bspush_ca_scan(v47, v48);
LABEL_16:
      OUTLINED_FUNCTION_99_2();
      v49 = OUTLINED_FUNCTION_106_1();
      savescptr(v49, v50, v51);
      OUTLINED_FUNCTION_20_21();
      if (!test_string_s())
      {
LABEL_17:
        v52 = OUTLINED_FUNCTION_34_14();
        bspush_ca_scan(v52, v53);
LABEL_18:
        OUTLINED_FUNCTION_20_21();
        if (test_string_s())
        {
          goto LABEL_19;
        }

LABEL_23:
        v58 = OUTLINED_FUNCTION_95_3();
        savescptr(v58, v59, v60);
        v61 = OUTLINED_FUNCTION_95_3();
        lpta_rpta_loadp(v61, v62, v63);
        v64 = OUTLINED_FUNCTION_73_6();
        if (!setd_lookup(v64, v65, 27))
        {
          v66 = OUTLINED_FUNCTION_52_7();
          starttest(v66, v67);
          v68 = OUTLINED_FUNCTION_96_3();
          lpta_loadpn(v68, v69);
          rpta_loadpn(v0, v0 + 3344);
          if (!compare_ptas(v0) && !testneq(v0))
          {
            break;
          }

LABEL_26:
          v70 = OUTLINED_FUNCTION_51_7();
          starttest(v70, v71);
          v72 = OUTLINED_FUNCTION_107_1();
          lpta_loadpn(v72, v73);
          v74 = OUTLINED_FUNCTION_86_4();
          rpta_loadpn(v74, v75);
          if (!compare_ptas(v0) && !testeq(v0))
          {
            goto LABEL_11;
          }

LABEL_28:
          v37 = (v0 + 3020);
          goto LABEL_10;
        }
      }

LABEL_19:
      v54 = *(v0 + 104);
      if (v54)
      {
        v55 = OUTLINED_FUNCTION_87_4(v54);
      }

      else
      {
        v56 = OUTLINED_FUNCTION_90_4();
        v55 = vback(v56, v57);
      }

      switch(v55)
      {
        case 1:
          continue;
        case 2:
        case 10:
          goto LABEL_11;
        case 3:
          goto LABEL_14;
        case 5:
          goto LABEL_23;
        case 6:
          goto LABEL_17;
        case 7:
          goto LABEL_16;
        case 8:
          goto LABEL_18;
        case 9:
          goto LABEL_26;
        case 11:
          goto LABEL_28;
        case 12:
          goto LABEL_29;
        default:
          goto LABEL_3;
      }
    }

    break;
  }

  v37 = (v0 + 3024);
LABEL_10:
  copyvar(v0, &v104, v37);
LABEL_11:
  v38 = OUTLINED_FUNCTION_100_1();
  lpta_rpta_loadp(v38, v39, v40);
  OUTLINED_FUNCTION_0_33();
  if (mark_s())
  {
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_2_31();
  if (mark_s())
  {
    goto LABEL_19;
  }

  mark_number();
LABEL_29:
  v11 = 0;
LABEL_4:
  vretproc(v0);
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t mark_nounadj_from_sets()
{
  OUTLINED_FUNCTION_22_21();
  v148 = *MEMORY[0x277D85DE8];
  v144[0] = 0;
  v144[1] = 0;
  v142 = 0;
  v143 = 0;
  HIDWORD(v141) = 0;
  v139 = 0;
  v140 = 0;
  v137 = 0;
  v138 = 0;
  OUTLINED_FUNCTION_67_6(v2, v3, v4, v5, v6, v7, v8, v9, v110, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136);
  OUTLINED_FUNCTION_56_7();
  v10 = setjmp(v1);
  if (v10)
  {
    goto LABEL_3;
  }

  v11 = OUTLINED_FUNCTION_116_1(v10, &v112, v147, v146, v145);
  if (v11)
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_94_3(v11, v144);
  OUTLINED_FUNCTION_53_7();
  WORD2(v141) = -4;
  push_ptr_init(v0, &v139);
  v15 = OUTLINED_FUNCTION_107_1();
  push_ptr_init(v15, v16);
  v17 = OUTLINED_FUNCTION_96_3();
  v19 = push_ptr_init(v17, v18);
  OUTLINED_FUNCTION_115_1(v19, v20, &null_str_8);
  v21 = OUTLINED_FUNCTION_73_6();
  fence_29(v21, v22, v23);
  HIWORD(v141) = 0;
  v24 = OUTLINED_FUNCTION_81_5();
  v26 = lpta_loadp_setscan_l(v24, v25);
  if (!v26)
  {
    OUTLINED_FUNCTION_42_8();
    v26 = test_string_s();
    if (!v26)
    {
      v37 = 3022;
      goto LABEL_23;
    }
  }

  while (2)
  {
    OUTLINED_FUNCTION_138_0(v26, v27, v28, v29, v30, v31, v32, v33, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144[0]);
    v34 = OUTLINED_FUNCTION_73_6();
    v36 = setd_lookup(v34, v35, 29);
    v37 = 3026;
    if (!v36)
    {
LABEL_23:
      HIWORD(v141) = *(v0 + v37);
      goto LABEL_24;
    }

LABEL_8:
    strip_plural();
    if (v38)
    {
LABEL_9:
      v138 = v143;
      v39 = 3022;
    }

    else
    {
      v39 = 3026;
    }

    HIWORD(v141) = *(v0 + v39);
LABEL_12:
    v40 = OUTLINED_FUNCTION_145_0();
    lpta_rpta_loadp(v40, v41, v42);
    v43 = OUTLINED_FUNCTION_73_6();
    if (!setd_lookup(v43, v44, 28))
    {
      goto LABEL_24;
    }

LABEL_13:
    v45 = OUTLINED_FUNCTION_75_6();
    if (!lpta_loadp_setscan_l(v45, v46))
    {
      OUTLINED_FUNCTION_73_6();
      if (!test_string_s())
      {
        goto LABEL_24;
      }
    }

LABEL_15:
    v47 = OUTLINED_FUNCTION_34_14();
    starttest(v47, v48);
    v49 = OUTLINED_FUNCTION_75_6();
    if (!lpta_loadp_setscan_l(v49, v50))
    {
      OUTLINED_FUNCTION_42_8();
      if (!test_string_s())
      {
LABEL_38:
        v85 = OUTLINED_FUNCTION_106_1();
        savescptr(v85, v86, v87);
        v88 = OUTLINED_FUNCTION_68_6();
        bspush_ca_scan(v88, v89);
        v90 = OUTLINED_FUNCTION_73_6();
        if (testFldeq(v90, v91, v92, 1))
        {
          goto LABEL_26;
        }

LABEL_39:
        if (!advance_tok(v0))
        {
          v93 = OUTLINED_FUNCTION_106_1();
          lpta_rpta_loadp(v93, v94, v95);
          v96 = OUTLINED_FUNCTION_73_6();
          v98 = 30;
          goto LABEL_44;
        }

LABEL_26:
        v70 = *(v0 + 104);
        if (v70)
        {
          v26 = OUTLINED_FUNCTION_87_4(v70);
        }

        else
        {
          v71 = OUTLINED_FUNCTION_90_4();
          v26 = vback(v71, v72);
        }

        switch(v26)
        {
          case 1:
            continue;
          case 2:
            goto LABEL_24;
          case 3:
            goto LABEL_8;
          case 4:
            goto LABEL_9;
          case 5:
            goto LABEL_12;
          case 6:
            goto LABEL_13;
          case 7:
            goto LABEL_15;
          case 8:
            goto LABEL_17;
          case 9:
            goto LABEL_38;
          case 10:
            v73 = OUTLINED_FUNCTION_101_1();
            bspush_ca_scan(v73, v74);
            v75 = OUTLINED_FUNCTION_73_6();
            v78 = 2;
            goto LABEL_32;
          case 11:
            goto LABEL_39;
          case 12:
            v75 = OUTLINED_FUNCTION_73_6();
            v78 = 3;
LABEL_32:
            if (!testFldeq(v75, v76, v77, v78))
            {
              goto LABEL_39;
            }

            goto LABEL_26;
          case 13:
            goto LABEL_19;
          case 14:
            goto LABEL_41;
          case 15:
            v79 = OUTLINED_FUNCTION_81_5();
            bspush_ca_scan(v79, v80);
            v81 = OUTLINED_FUNCTION_73_6();
            v84 = 2;
            goto LABEL_36;
          case 16:
            goto LABEL_42;
          case 17:
            v81 = OUTLINED_FUNCTION_73_6();
            v84 = 3;
LABEL_36:
            if (!testFldeq(v81, v82, v83, v84))
            {
              goto LABEL_42;
            }

            goto LABEL_26;
          case 19:
            goto LABEL_25;
          default:
            goto LABEL_3;
        }
      }
    }

    break;
  }

LABEL_17:
  v51 = OUTLINED_FUNCTION_64_6();
  starttest(v51, v52);
  v53 = OUTLINED_FUNCTION_75_6();
  if (!lpta_loadp_setscan_l(v53, v54))
  {
    OUTLINED_FUNCTION_36_12();
    if (!test_string_s())
    {
LABEL_41:
      v99 = OUTLINED_FUNCTION_106_1();
      savescptr(v99, v100, v101);
      v102 = OUTLINED_FUNCTION_69_6();
      bspush_ca_scan(v102, v103);
      v104 = OUTLINED_FUNCTION_73_6();
      if (testFldeq(v104, v105, v106, 1))
      {
        goto LABEL_26;
      }

LABEL_42:
      if (!advance_tok(v0))
      {
        v107 = OUTLINED_FUNCTION_106_1();
        lpta_rpta_loadp(v107, v108, v109);
        v96 = OUTLINED_FUNCTION_73_6();
        v98 = 31;
LABEL_44:
        if (!setd_lookup(v96, v97, v98))
        {
          goto LABEL_24;
        }

        goto LABEL_26;
      }

      goto LABEL_26;
    }
  }

LABEL_19:
  v55 = OUTLINED_FUNCTION_145_0();
  lpta_rpta_loadp(v55, v56, v57);
  v58 = OUTLINED_FUNCTION_73_6();
  v60 = setd_lookup(v58, v59, 32);
  if (v60 || (OUTLINED_FUNCTION_138_0(v60, v61, v62, v63, v64, v65, v66, v67, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144[0]), OUTLINED_FUNCTION_2_31(), mark_s()))
  {
LABEL_3:
    v12 = 94;
    goto LABEL_4;
  }

LABEL_24:
  v68 = OUTLINED_FUNCTION_72_6();
  starttest(v68, v69);
  v26 = mark_number();
LABEL_25:
  OUTLINED_FUNCTION_138_0(v26, v27, v28, v29, v30, v31, v32, v33, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144[0]);
  v12 = 0;
  OUTLINED_FUNCTION_1_31();
  if (mark_s())
  {
    goto LABEL_26;
  }

LABEL_4:
  vretproc(v0);
  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t mark_verb_from_sets()
{
  OUTLINED_FUNCTION_22_21();
  v75 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_45_8(v2, v3, v4, v5, v6, v7, v8, v9, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, SHIDWORD(v70), v71, v72, v73, v74);
  OUTLINED_FUNCTION_56_7();
  if (!setjmp(v1))
  {
    OUTLINED_FUNCTION_30_16();
    if (!OUTLINED_FUNCTION_116_1(v10, v11, v12, v13, v14))
    {
      v17 = OUTLINED_FUNCTION_26_20();
      get_parm(v17, v18, v19, -6);
      OUTLINED_FUNCTION_53_7();
      OUTLINED_FUNCTION_115_1(v20, v21, &null_str_8);
      fence_29(v0, 1, &unk_2806BBF47);
      starttest(v0, 1);
      v22 = OUTLINED_FUNCTION_26_20();
      lpta_rpta_loadp(v22, v23, v24);
      if (setd_lookup(v0, 1u, 36))
      {
        goto LABEL_6;
      }

      OUTLINED_FUNCTION_105_1();
      copyvar(v0, v25, v26);
LABEL_8:
      while (1)
      {
        v39 = OUTLINED_FUNCTION_19_22();
        lpta_rpta_loadp(v39, v40, v41);
        OUTLINED_FUNCTION_0_33();
        if (!mark_s())
        {
          OUTLINED_FUNCTION_3_30();
          if (!mark_s())
          {
            break;
          }
        }

        while (1)
        {
          v42 = v0[13];
          if (v42)
          {
            v43 = OUTLINED_FUNCTION_87_4(v42);
          }

          else
          {
            v44 = OUTLINED_FUNCTION_90_4();
            v43 = vback(v44, v45);
          }

          if (v43 != 1)
          {
            break;
          }

LABEL_6:
          v27 = OUTLINED_FUNCTION_38_11();
          starttest(v27, v28);
          v29 = OUTLINED_FUNCTION_19_22();
          lpta_rpta_loadp(v29, v30, v31);
          v32 = OUTLINED_FUNCTION_73_6();
          if (setd_lookup(v32, v33, 42))
          {
            goto LABEL_3;
          }

          OUTLINED_FUNCTION_105_1();
          copyvar(v0, v34, v35);
          v36 = OUTLINED_FUNCTION_19_22();
          lpta_rpta_loadp(v36, v37, v38);
          OUTLINED_FUNCTION_2_31();
          if (!mark_s())
          {
            goto LABEL_8;
          }
        }

        if (v43 != 2)
        {
          goto LABEL_3;
        }
      }

      OUTLINED_FUNCTION_83_4();
      OUTLINED_FUNCTION_130_0();
      mark_number();
    }
  }

LABEL_3:
  vretproc(v0);
  v15 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_119_1();
}

uint64_t mark_noun_verb_from_sets()
{
  OUTLINED_FUNCTION_22_21();
  v62[32] = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_45_8(v2, v3, v4, v5, v6, v7, v8, v9, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, SHIDWORD(v61), v62[0], v62[1], v62[2], v62[3]);
  OUTLINED_FUNCTION_56_7();
  if (!setjmp(v1))
  {
    OUTLINED_FUNCTION_30_16();
    if (!OUTLINED_FUNCTION_116_1(v10, v11, v12, v13, v14))
    {
      v15 = OUTLINED_FUNCTION_26_20();
      get_parm(v15, v16, v17, -6);
      OUTLINED_FUNCTION_53_7();
      OUTLINED_FUNCTION_115_1(v18, v19, &null_str_8);
      v20 = OUTLINED_FUNCTION_97_3();
      starttest(v20, v21);
      v22 = OUTLINED_FUNCTION_26_20();
      lpta_rpta_loadp(v22, v23, v24);
      v25 = OUTLINED_FUNCTION_79_6();
      if (!setd_lookup(v25, v26, 33))
      {
        OUTLINED_FUNCTION_105_1();
        copyvar(v0, v29, v30);
        while (1)
        {
          v31 = OUTLINED_FUNCTION_81_5();
          lpta_rpta_loadp(v31, v32, v62);
          OUTLINED_FUNCTION_13_28();
          if (!mark_s())
          {
            break;
          }

          v33 = *(v0 + 104);
          if (v33)
          {
            v34 = OUTLINED_FUNCTION_87_4(v33);
          }

          else
          {
            v35 = OUTLINED_FUNCTION_79_6();
            v34 = vback(v35, v36);
          }

          if (v34 != 2)
          {
            goto LABEL_4;
          }
        }

        OUTLINED_FUNCTION_83_4();
        OUTLINED_FUNCTION_130_0();
        mark_number();
      }
    }
  }

LABEL_4:
  vretproc(v0);
  v27 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_119_1();
}

uint64_t mark_prespart()
{
  OUTLINED_FUNCTION_22_21();
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_18_23(v3, v4, v5, v6, v7, v8, v9, v10, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118, v121, v124, v127, v130, v133, v136, v139, v142, v145, v148, v151, v154, v157, v160);
  OUTLINED_FUNCTION_62_6(v11, v12, v13, v14, v15, v16, v17, v18, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v119, v122, v125, v128, v131, v134, v137, v140, v143, v146, v149, v152, v155, v158, v161, v163, v165, v167, v169, v171);
  v19 = setjmp(v1);
  if (v19)
  {
    goto LABEL_5;
  }

  if (OUTLINED_FUNCTION_17_24(v19, v20, v21, v22, v23, v24, v25, v26, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117, v120, v123, v126, v129, v132, v135, v138, v141, v144, v147, v150, v153, v156, v159, v162, *v164, v164[4], *v166, *&v166[4], v166[6], v168, SWORD2(v168), SBYTE6(v168), SHIBYTE(v168), v170, v172))
  {
    goto LABEL_5;
  }

  v27 = OUTLINED_FUNCTION_76_6();
  OUTLINED_FUNCTION_110_1(v27, v28);
  OUTLINED_FUNCTION_53_7();
  fence_29(v0, 0, &null_str_8);
  v29 = OUTLINED_FUNCTION_97_3();
  starttest(v29, v30);
  v31 = OUTLINED_FUNCTION_81_5();
  if (lpta_loadp_setscan_l(v31, v32))
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_42_8();
  if (test_string_s())
  {
    goto LABEL_5;
  }

  v35 = OUTLINED_FUNCTION_63_6();
  bspush_ca_scan(v35, v36);
  while (2)
  {
    OUTLINED_FUNCTION_20_21();
    if (test_string_s())
    {
      goto LABEL_8;
    }

LABEL_13:
    v43 = OUTLINED_FUNCTION_16_25();
    lpta_rpta_loadp(v43, v44, v45);
    OUTLINED_FUNCTION_3_30();
    if (mark_s())
    {
LABEL_8:
      v37 = *(v0 + 104);
      if (v37)
      {
        v38 = OUTLINED_FUNCTION_87_4(v37);
      }

      else
      {
        v39 = OUTLINED_FUNCTION_90_4();
        v38 = vback(v39, v40);
      }

      switch(v38)
      {
        case 2:
          v41 = OUTLINED_FUNCTION_32_15();
          bspush_ca_scan(v41, v42);
          continue;
        case 3:
        case 5:
          goto LABEL_13;
        case 4:
          continue;
        case 6:
          goto LABEL_18;
        case 8:
          goto LABEL_22;
        case 9:
          goto LABEL_26;
        case 10:
          goto LABEL_30;
        case 11:
          goto LABEL_34;
        default:
          goto LABEL_5;
      }

      goto LABEL_5;
    }

    break;
  }

  v46 = OUTLINED_FUNCTION_29_17();
  if (lpta_loadp_setscan_r(v46, v47) || (OUTLINED_FUNCTION_24_21(), test_string_s()) || (*(v0 + 136) = 1, v48 = OUTLINED_FUNCTION_23_21(), test_ptr(v48)) || (v49 = OUTLINED_FUNCTION_16_25(), lpta_rpta_loadp(v49, v50, v51), OUTLINED_FUNCTION_11_28(), mark_s()))
  {
LABEL_18:
    v52 = OUTLINED_FUNCTION_29_17();
    if (lpta_loadp_setscan_r(v52, v53) || (OUTLINED_FUNCTION_24_21(), test_string_s()) || (*(v0 + 136) = 1, v54 = OUTLINED_FUNCTION_23_21(), test_ptr(v54)) || (v55 = OUTLINED_FUNCTION_16_25(), lpta_rpta_loadp(v55, v56, v57), OUTLINED_FUNCTION_11_28(), mark_s()))
    {
LABEL_22:
      v58 = OUTLINED_FUNCTION_29_17();
      if (lpta_loadp_setscan_r(v58, v59) || (OUTLINED_FUNCTION_24_21(), test_string_s()) || (*(v0 + 136) = 1, v60 = OUTLINED_FUNCTION_23_21(), test_ptr(v60)) || (v61 = OUTLINED_FUNCTION_16_25(), lpta_rpta_loadp(v61, v62, v63), OUTLINED_FUNCTION_11_28(), mark_s()))
      {
LABEL_26:
        v64 = OUTLINED_FUNCTION_29_17();
        if (lpta_loadp_setscan_r(v64, v65) || (OUTLINED_FUNCTION_24_21(), test_string_s()) || (*(v0 + 136) = 1, v66 = OUTLINED_FUNCTION_23_21(), test_ptr(v66)) || (v67 = OUTLINED_FUNCTION_16_25(), lpta_rpta_loadp(v67, v68, v69), OUTLINED_FUNCTION_11_28(), mark_s()))
        {
LABEL_30:
          v70 = OUTLINED_FUNCTION_29_17();
          if (lpta_loadp_setscan_r(v70, v71) || (OUTLINED_FUNCTION_24_21(), test_string_s()) || (*(v0 + 136) = 1, v72 = OUTLINED_FUNCTION_23_21(), test_ptr(v72)) || (v73 = OUTLINED_FUNCTION_16_25(), lpta_rpta_loadp(v73, v74, v75), OUTLINED_FUNCTION_11_28(), mark_s()))
          {
LABEL_34:
            v76 = OUTLINED_FUNCTION_29_17();
            if (!lpta_loadp_setscan_r(v76, v77))
            {
              OUTLINED_FUNCTION_24_21();
              if (!test_string_s())
              {
                *(v0 + 136) = 1;
                v78 = OUTLINED_FUNCTION_23_21();
                if (!test_ptr(v78))
                {
                  v79 = OUTLINED_FUNCTION_16_25();
                  lpta_rpta_loadp(v79, v80, v81);
                  OUTLINED_FUNCTION_11_28();
                  mark_s();
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_5:
  vretproc(v0);
  v33 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_109_1();
}

uint64_t mark_inf()
{
  OUTLINED_FUNCTION_22_21();
  v223 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_45_8(v3, v4, v5, v6, v7, v8, v9, v10, v167, v169, v171, v173, v175, v177, v179, v181, v183, v185, v187, v189, v191, v193, v195, v197, v199, v201, v203, v205, v207, v209, v211, v213, v215, SHIDWORD(v215), v217, v219, v221, v222);
  OUTLINED_FUNCTION_56_7();
  if (setjmp(v2))
  {
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_37_12();
  if (OUTLINED_FUNCTION_116_1(v11, v12, v13, v14, v15))
  {
    goto LABEL_4;
  }

  v16 = OUTLINED_FUNCTION_59_7();
  get_parm(v16, v17, v18, -6);
  OUTLINED_FUNCTION_53_7();
  v19 = OUTLINED_FUNCTION_76_6();
  push_ptr_init(v19, v20);
  OUTLINED_FUNCTION_131_0();
  fence_29(v0, 0, &null_str_8);
  v21 = OUTLINED_FUNCTION_24_21();
  fence_29(v21, v22, v23);
  v24 = OUTLINED_FUNCTION_97_3();
  starttest(v24, v25);
  v26 = OUTLINED_FUNCTION_81_5();
  if (lpta_loadp_setscan_l(v26, v27))
  {
    goto LABEL_4;
  }

  v30 = OUTLINED_FUNCTION_78_6();
  bspush_ca_scan(v30, v31);
  v32 = OUTLINED_FUNCTION_38_11();
  bspush_ca_scan(v32, v33);
  OUTLINED_FUNCTION_73_6();
  if (test_string_s())
  {
    goto LABEL_39;
  }

  v34 = OUTLINED_FUNCTION_32_15();
  bspush_ca_scan(v34, v35);
  OUTLINED_FUNCTION_20_21();
LABEL_7:
  if (test_string_s())
  {
    goto LABEL_39;
  }

  while (2)
  {
    OUTLINED_FUNCTION_102_1();
    v36 = OUTLINED_FUNCTION_82_5();
    savescptr(v36, v37, v38);
LABEL_9:
    v39 = OUTLINED_FUNCTION_46_8();
    bspush_ca_scan(v39, v40);
    v41 = OUTLINED_FUNCTION_58_7();
    if (testFldeq(v41, v42, v43, 1) || advance_tok(v0))
    {
      goto LABEL_39;
    }

LABEL_11:
    v44 = OUTLINED_FUNCTION_82_5();
    lpta_rpta_loadp(v44, v45, v46);
    v47 = OUTLINED_FUNCTION_73_6();
    if (!setd_lookup(v47, v48, 34))
    {
      goto LABEL_4;
    }

LABEL_12:
    v49 = OUTLINED_FUNCTION_51_7();
    starttest(v49, v50);
    v51 = OUTLINED_FUNCTION_82_5();
    lpta_rpta_loadp(v51, v52, v53);
    v54 = OUTLINED_FUNCTION_73_6();
    if (!setd_lookup(v54, v55, 35))
    {
      goto LABEL_25;
    }

LABEL_13:
    v56 = OUTLINED_FUNCTION_60_7();
    starttest(v56, v57);
    v58 = OUTLINED_FUNCTION_29_17();
    if (lpta_loadp_setscan_l(v58, v59) || (OUTLINED_FUNCTION_20_21(), test_string_s()))
    {
LABEL_15:
      v60 = OUTLINED_FUNCTION_72_6();
      starttest(v60, v61);
      v62 = OUTLINED_FUNCTION_29_17();
      if (lpta_loadp_setscan_l(v62, v63))
      {
        goto LABEL_4;
      }

      OUTLINED_FUNCTION_20_21();
      if (test_string_s())
      {
        goto LABEL_4;
      }

      v64 = OUTLINED_FUNCTION_72_6();
      bspush_ca_scan(v64, v65);
LABEL_23:
      OUTLINED_FUNCTION_20_21();
      if (test_string_s())
      {
        goto LABEL_39;
      }

LABEL_24:
      OUTLINED_FUNCTION_20_21();
      if (!test_string_s())
      {
        goto LABEL_25;
      }

LABEL_39:
      v117 = *(v0 + 104);
      if (v117)
      {
        v118 = OUTLINED_FUNCTION_87_4(v117);
      }

      else
      {
        v119 = OUTLINED_FUNCTION_90_4();
        v118 = vback(v119, v120);
      }

      switch(v118)
      {
        case 2:
        case 4:
          continue;
        case 3:
          v121 = OUTLINED_FUNCTION_31_16();
          bspush_ca_scan(v121, v122);
          OUTLINED_FUNCTION_42_8();
          goto LABEL_7;
        case 5:
          OUTLINED_FUNCTION_36_12();
          goto LABEL_7;
        case 6:
          goto LABEL_9;
        case 7:
          if (!advance_tok(v0))
          {
            goto LABEL_9;
          }

          goto LABEL_39;
        case 8:
          goto LABEL_11;
        case 9:
          goto LABEL_12;
        case 10:
          goto LABEL_25;
        case 11:
          goto LABEL_13;
        case 12:
          goto LABEL_15;
        case 13:
          v123 = OUTLINED_FUNCTION_69_6();
          bspush_ca_scan(v123, v124);
          goto LABEL_19;
        case 14:
          goto LABEL_20;
        case 15:
          goto LABEL_19;
        case 17:
          goto LABEL_23;
        case 18:
          goto LABEL_24;
        case 19:
          goto LABEL_30;
        case 22:
          goto LABEL_34;
        case 24:
          goto LABEL_48;
        case 26:
          goto LABEL_52;
        case 27:
          goto LABEL_56;
        default:
          goto LABEL_4;
      }

      goto LABEL_4;
    }

    break;
  }

  v66 = OUTLINED_FUNCTION_64_6();
  bspush_ca_scan(v66, v67);
LABEL_19:
  OUTLINED_FUNCTION_20_21();
  if (test_string_s())
  {
    goto LABEL_39;
  }

LABEL_20:
  if (advance_tok(v0) || advance_tok(v0))
  {
    goto LABEL_39;
  }

LABEL_25:
  v68 = OUTLINED_FUNCTION_25_20();
  lpta_rpta_loadp(v68, v69, v70);
  OUTLINED_FUNCTION_3_30();
  if (mark_s())
  {
    goto LABEL_39;
  }

  v71 = OUTLINED_FUNCTION_48_8();
  if (!lpta_loadp_setscan_r(v71, v72))
  {
    OUTLINED_FUNCTION_24_21();
    v73 = test_string_s();
    if (!v73)
    {
      *(v0 + 136) = v1;
      v81 = OUTLINED_FUNCTION_21_21(v73, v74, v75, v76, v77, v78, v79, v80, v168, v170, v172, v174, v176, v178, v180, v182, v184, v186, v188, v190, v192, v194, v196, v198, v200, v202, v204, v206, v208, v210, v212, v214, v216, v218, v220);
      if (!test_ptr(v81))
      {
        v82 = OUTLINED_FUNCTION_25_20();
        lpta_rpta_loadp(v82, v83, v84);
        OUTLINED_FUNCTION_2_31();
        if (!mark_s())
        {
LABEL_38:
          v113 = OUTLINED_FUNCTION_72_6();
          starttest_l(v113, v114);
          v1 = 0;
          v115 = OUTLINED_FUNCTION_81_5();
          move_i(v115, v116, 0);
          OUTLINED_FUNCTION_59_7();
          if (!mark_word_stress())
          {
            goto LABEL_4;
          }

          goto LABEL_39;
        }
      }
    }
  }

LABEL_30:
  v85 = OUTLINED_FUNCTION_48_8();
  if (!lpta_loadp_setscan_r(v85, v86))
  {
    OUTLINED_FUNCTION_24_21();
    v87 = test_string_s();
    if (!v87)
    {
      *(v0 + 136) = v1;
      v95 = OUTLINED_FUNCTION_21_21(v87, v88, v89, v90, v91, v92, v93, v94, v168, v170, v172, v174, v176, v178, v180, v182, v184, v186, v188, v190, v192, v194, v196, v198, v200, v202, v204, v206, v208, v210, v212, v214, v216, v218, v220);
      if (!test_ptr(v95))
      {
        v96 = OUTLINED_FUNCTION_25_20();
        lpta_rpta_loadp(v96, v97, v98);
        OUTLINED_FUNCTION_2_31();
        if (!mark_s())
        {
          goto LABEL_38;
        }
      }
    }
  }

LABEL_34:
  v99 = OUTLINED_FUNCTION_48_8();
  if (!lpta_loadp_setscan_r(v99, v100))
  {
    OUTLINED_FUNCTION_24_21();
    v101 = test_string_s();
    if (!v101)
    {
      *(v0 + 136) = v1;
      v109 = OUTLINED_FUNCTION_21_21(v101, v102, v103, v104, v105, v106, v107, v108, v168, v170, v172, v174, v176, v178, v180, v182, v184, v186, v188, v190, v192, v194, v196, v198, v200, v202, v204, v206, v208, v210, v212, v214, v216, v218, v220);
      if (!test_ptr(v109))
      {
        v110 = OUTLINED_FUNCTION_25_20();
        lpta_rpta_loadp(v110, v111, v112);
        OUTLINED_FUNCTION_2_31();
        if (!mark_s())
        {
          goto LABEL_38;
        }
      }
    }
  }

LABEL_48:
  v125 = OUTLINED_FUNCTION_48_8();
  if (lpta_loadp_setscan_r(v125, v126) || (OUTLINED_FUNCTION_24_21(), v127 = test_string_s(), v127) || (*(v0 + 136) = v1, v135 = OUTLINED_FUNCTION_21_21(v127, v128, v129, v130, v131, v132, v133, v134, v168, v170, v172, v174, v176, v178, v180, v182, v184, v186, v188, v190, v192, v194, v196, v198, v200, v202, v204, v206, v208, v210, v212, v214, v216, v218, v220), test_ptr(v135)) || (v136 = OUTLINED_FUNCTION_25_20(), lpta_rpta_loadp(v136, v137, v138), OUTLINED_FUNCTION_11_28(), mark_s()))
  {
LABEL_52:
    v139 = OUTLINED_FUNCTION_48_8();
    if (lpta_loadp_setscan_r(v139, v140) || (OUTLINED_FUNCTION_24_21(), v141 = test_string_s(), v141) || (*(v0 + 136) = v1, v149 = OUTLINED_FUNCTION_21_21(v141, v142, v143, v144, v145, v146, v147, v148, v168, v170, v172, v174, v176, v178, v180, v182, v184, v186, v188, v190, v192, v194, v196, v198, v200, v202, v204, v206, v208, v210, v212, v214, v216, v218, v220), test_ptr(v149)) || (v150 = OUTLINED_FUNCTION_25_20(), lpta_rpta_loadp(v150, v151, v152), OUTLINED_FUNCTION_11_28(), mark_s()))
    {
LABEL_56:
      v153 = OUTLINED_FUNCTION_48_8();
      if (!lpta_loadp_setscan_r(v153, v154))
      {
        OUTLINED_FUNCTION_24_21();
        v155 = test_string_s();
        if (!v155)
        {
          *(v0 + 136) = v1;
          v163 = OUTLINED_FUNCTION_21_21(v155, v156, v157, v158, v159, v160, v161, v162, v168, v170, v172, v174, v176, v178, v180, v182, v184, v186, v188, v190, v192, v194, v196, v198, v200, v202, v204, v206, v208, v210, v212, v214, v216, v218, v220);
          if (!test_ptr(v163))
          {
            v164 = OUTLINED_FUNCTION_25_20();
            lpta_rpta_loadp(v164, v165, v166);
            OUTLINED_FUNCTION_11_28();
            mark_s();
          }
        }
      }
    }
  }

LABEL_4:
  vretproc(v0);
  v28 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_113_1();
}

uint64_t mark_adverb()
{
  OUTLINED_FUNCTION_22_21();
  v108 = *MEMORY[0x277D85DE8];
  v97 = 0;
  v98 = 0;
  OUTLINED_FUNCTION_27_18(v2, v3, v4, v5, v6, v7, v8, v9, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96);
  OUTLINED_FUNCTION_56_7();
  v10 = setjmp(v1);
  if (!v10 && !OUTLINED_FUNCTION_39_10(v10, &v70, v11, v12, v13, v14, v15, v16, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107))
  {
    v19 = OUTLINED_FUNCTION_93_3();
    OUTLINED_FUNCTION_110_1(v19, v20);
    OUTLINED_FUNCTION_53_7();
    v21 = OUTLINED_FUNCTION_89_4();
    v23 = push_ptr_init(v21, v22);
    OUTLINED_FUNCTION_115_1(v23, v24, &null_str_8);
    v25 = OUTLINED_FUNCTION_57_7();
    fence_29(v25, v26, v27);
    OUTLINED_FUNCTION_125_0();
    v28 = OUTLINED_FUNCTION_81_5();
    v30 = 0;
    if (lpta_loadp_setscan_l(v28, v29) || (OUTLINED_FUNCTION_73_6(), v31 = test_string_s(), v32 = 0, v30 = 0, v31))
    {
LABEL_6:
      v33 = OUTLINED_FUNCTION_52_7();
      starttest(v33, v34);
      v35 = OUTLINED_FUNCTION_19_22();
      lpta_rpta_loadp(v35, v36, v37);
      v38 = OUTLINED_FUNCTION_73_6();
      v40 = setd_lookup(v38, v39, 19);
      v41 = v30;
      if (v40)
      {
        goto LABEL_3;
      }

LABEL_7:
      v42 = v41;
      v43 = OUTLINED_FUNCTION_19_22();
      lpta_rpta_loadp(v43, v44, v45);
      OUTLINED_FUNCTION_13_28();
      if (!mark_s())
      {
        goto LABEL_3;
      }
    }

    else
    {
LABEL_10:
      v46 = v32;
      OUTLINED_FUNCTION_102_1();
      v47 = OUTLINED_FUNCTION_74_6();
      savescptr(v47, v48, v49);
      v50 = v46;
LABEL_11:
      v42 = v50;
      v51 = OUTLINED_FUNCTION_97_3();
      bspush_ca_scan(v51, v52);
      v53 = OUTLINED_FUNCTION_73_6();
      if (!testFldeq(v53, v54, 4, 1))
      {
        v55 = advance_tok(v0);
        v56 = v42;
        if (!v55)
        {
LABEL_13:
          v57 = v56;
          v58 = OUTLINED_FUNCTION_47_8();
          bspush_ca_scan(v58, v59);
          OUTLINED_FUNCTION_117_1();
          v60 = OUTLINED_FUNCTION_23_21();
          if (test_ptr(v60))
          {
            v42 = v57;
          }

          else
          {
            OUTLINED_FUNCTION_46_8();
            bspush_ca_boa();
            v61 = OUTLINED_FUNCTION_74_6();
            if (one_syllable(v61))
            {
              v42 = v57;
            }

            else
            {
              v42 = 1;
            }
          }
        }
      }
    }

    v30 = v42;
    while (2)
    {
      v62 = v0[13];
      if (v62)
      {
        v63 = OUTLINED_FUNCTION_87_4(v62);
        v30 = v64;
      }

      else
      {
        v63 = vback(v0, v30);
        v30 = 0;
      }

      v50 = v30;
      v56 = v30;
      v41 = v30;
      switch(v63)
      {
        case 1:
          goto LABEL_6;
        case 2:
          v32 = v30;
          goto LABEL_10;
        case 3:
          goto LABEL_11;
        case 4:
          v65 = advance_tok(v0);
          v50 = v30;
          if (!v65)
          {
            goto LABEL_11;
          }

          continue;
        case 5:
          goto LABEL_13;
        case 6:
          v69 = advance_tok(v0);
          v56 = v30;
          if (!v69)
          {
            goto LABEL_13;
          }

          continue;
        case 7:
          bspop_boa(v0);
          v66 = OUTLINED_FUNCTION_101_1();
          lpta_rpta_loadp(v66, v67, &v95);
          OUTLINED_FUNCTION_2_31();
          v68 = mark_s();
          v41 = v30;
          if (!v68)
          {
            goto LABEL_7;
          }

          continue;
        case 8:
          goto LABEL_7;
        default:
          goto LABEL_3;
      }
    }
  }

LABEL_3:
  vretproc(v0);
  v17 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_119_1();
}

uint64_t mark_verb_by_rule()
{
  OUTLINED_FUNCTION_22_21();
  v75 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_103_1();
  v74 = 0;
  OUTLINED_FUNCTION_67_6(v2, v3, v4, v5, v6, v7, v8, v9, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73);
  OUTLINED_FUNCTION_56_7();
  if (setjmp(v1))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_37_12();
  if (OUTLINED_FUNCTION_116_1(v10, v11, v12, v13, v14))
  {
    goto LABEL_3;
  }

  v17 = OUTLINED_FUNCTION_59_7();
  get_parm(v17, v18, v19, -6);
  OUTLINED_FUNCTION_53_7();
  v74 = 65532;
  v20 = OUTLINED_FUNCTION_96_3();
  v22 = push_ptr_init(v20, v21);
  OUTLINED_FUNCTION_115_1(v22, v23, &null_str_8);
  v24 = OUTLINED_FUNCTION_57_7();
  fence_29(v24, v25, v26);
  OUTLINED_FUNCTION_125_0();
  v27 = OUTLINED_FUNCTION_81_5();
  if (!lpta_loadp_setscan_l(v27, v28))
  {
    OUTLINED_FUNCTION_42_8();
    if (!test_string_s())
    {
      copyvar(v0, &v74, (v0 + 3020));
LABEL_14:
      v41 = OUTLINED_FUNCTION_25_20();
      lpta_rpta_loadp(v41, v42, v43);
      OUTLINED_FUNCTION_0_33();
      if (!mark_s())
      {
        OUTLINED_FUNCTION_3_30();
        if (!mark_s())
        {
          OUTLINED_FUNCTION_88_4();
          OUTLINED_FUNCTION_149_0();
          goto LABEL_3;
        }
      }

      goto LABEL_16;
    }
  }

  while (2)
  {
    v29 = OUTLINED_FUNCTION_38_11();
    starttest(v29, v30);
    v31 = OUTLINED_FUNCTION_65_6();
    if (lpta_loadp_setscan_l(v31, v32))
    {
      break;
    }

LABEL_7:
    v33 = OUTLINED_FUNCTION_72_6();
    bspush_ca_scan(v33, v34);
LABEL_8:
    v35 = OUTLINED_FUNCTION_58_7();
    if (testFldeq(v35, v36, v37, 1) || advance_tok(v0))
    {
      goto LABEL_16;
    }

LABEL_10:
    v38 = OUTLINED_FUNCTION_106_1();
    savescptr(v38, v39, v40);
    if (!advance_tok(v0) && !match_verb_pattern())
    {
      goto LABEL_14;
    }

LABEL_16:
    v44 = *(v0 + 104);
    if (v44)
    {
      v45 = OUTLINED_FUNCTION_87_4(v44);
    }

    else
    {
      v46 = OUTLINED_FUNCTION_90_4();
      v45 = vback(v46, v47);
    }

    switch(v45)
    {
      case 1:
        continue;
      case 2:
        goto LABEL_14;
      case 4:
        if (!advance_tok(v0))
        {
          goto LABEL_7;
        }

        goto LABEL_16;
      case 5:
        goto LABEL_8;
      case 6:
        if (!advance_tok(v0))
        {
          goto LABEL_7;
        }

        goto LABEL_16;
      case 7:
        if (!advance_tok(v0))
        {
          goto LABEL_8;
        }

        goto LABEL_16;
      case 8:
        goto LABEL_10;
      default:
        goto LABEL_3;
    }
  }

LABEL_3:
  vretproc(v0);
  v15 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_113_1();
}

uint64_t mark_nounadj_by_rule()
{
  OUTLINED_FUNCTION_22_21();
  v175 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_103_1();
  v174 = 0;
  OUTLINED_FUNCTION_67_6(v2, v3, v4, v5, v6, v7, v8, v9, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173);
  OUTLINED_FUNCTION_56_7();
  if (setjmp(v1))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_37_12();
  if (OUTLINED_FUNCTION_116_1(v10, v11, v12, v13, v14))
  {
    goto LABEL_3;
  }

  v17 = OUTLINED_FUNCTION_59_7();
  get_parm(v17, v18, v19, -6);
  OUTLINED_FUNCTION_53_7();
  v174 = 65532;
  v20 = OUTLINED_FUNCTION_96_3();
  v22 = push_ptr_init(v20, v21);
  OUTLINED_FUNCTION_115_1(v22, v23, &null_str_8);
  v24 = OUTLINED_FUNCTION_57_7();
  fence_29(v24, v25, v26);
  OUTLINED_FUNCTION_125_0();
  v27 = OUTLINED_FUNCTION_81_5();
  if (!lpta_loadp_setscan_l(v27, v28))
  {
    OUTLINED_FUNCTION_36_12();
    if (!test_string_s())
    {
      goto LABEL_6;
    }
  }

  while (2)
  {
    v33 = OUTLINED_FUNCTION_38_11();
    starttest(v33, v34);
    v35 = OUTLINED_FUNCTION_65_6();
    if (!lpta_loadp_setscan_l(v35, v36))
    {
      OUTLINED_FUNCTION_42_8();
      if (!test_string_s())
      {
LABEL_6:
        v29 = 3024;
LABEL_7:
        copyvar(v0, &v174, (v0 + v29));
        goto LABEL_8;
      }
    }

LABEL_12:
    v37 = OUTLINED_FUNCTION_32_15();
    starttest(v37, v38);
    v39 = OUTLINED_FUNCTION_65_6();
    if (!lpta_loadp_setscan_l(v39, v40))
    {
      OUTLINED_FUNCTION_73_6();
      if (!test_string_s() && !advance_tok(v0) && !advance_tok(v0))
      {
LABEL_40:
        v29 = 3020;
        goto LABEL_7;
      }
    }

LABEL_16:
    v41 = OUTLINED_FUNCTION_31_16();
    starttest(v41, v42);
    v43 = OUTLINED_FUNCTION_65_6();
    if (!lpta_loadp_setscan_l(v43, v44))
    {
      OUTLINED_FUNCTION_36_12();
      if (!test_string_s())
      {
        goto LABEL_40;
      }
    }

LABEL_18:
    v45 = OUTLINED_FUNCTION_47_8();
    starttest(v45, v46);
    v47 = OUTLINED_FUNCTION_65_6();
    if (!lpta_loadp_setscan_l(v47, v48))
    {
      OUTLINED_FUNCTION_20_21();
      v49 = test_string_s();
      v29 = 3020;
      if (!v49)
      {
        goto LABEL_7;
      }
    }

LABEL_20:
    strip_plural();
    if (v50)
    {
LABEL_21:
      HIWORD(v174) = *(v0 + 3022);
    }

    else
    {
      HIWORD(v174) = *(v0 + 3026);
    }

LABEL_23:
    v51 = OUTLINED_FUNCTION_52_7();
    starttest(v51, v52);
    v53 = OUTLINED_FUNCTION_75_6();
    if (!lpta_loadp_setscan_l(v53, v54))
    {
      v93 = OUTLINED_FUNCTION_68_6();
      bspush_ca_scan(v93, v94);
      goto LABEL_68;
    }

LABEL_24:
    v55 = OUTLINED_FUNCTION_64_6();
    starttest(v55, v56);
    v57 = OUTLINED_FUNCTION_75_6();
    if (!lpta_loadp_setscan_l(v57, v58))
    {
      v95 = OUTLINED_FUNCTION_72_6();
      bspush_ca_scan(v95, v96);
LABEL_46:
      OUTLINED_FUNCTION_20_21();
      if (test_string_s())
      {
        goto LABEL_50;
      }

LABEL_47:
      if (advance_tok(v0))
      {
        goto LABEL_50;
      }

      goto LABEL_48;
    }

LABEL_25:
    v59 = OUTLINED_FUNCTION_72_6();
    starttest(v59, v60);
    v61 = OUTLINED_FUNCTION_75_6();
    if (!lpta_loadp_setscan_l(v61, v62))
    {
      OUTLINED_FUNCTION_58_7();
      if (!test_string_s())
      {
        goto LABEL_8;
      }
    }

LABEL_27:
    v63 = OUTLINED_FUNCTION_72_6();
    starttest(v63, v64);
    v65 = OUTLINED_FUNCTION_75_6();
    if (!lpta_loadp_setscan_l(v65, v66))
    {
      OUTLINED_FUNCTION_36_12();
      if (!test_string_s())
      {
        goto LABEL_8;
      }
    }

LABEL_29:
    v67 = OUTLINED_FUNCTION_72_6();
    starttest(v67, v68);
    v69 = OUTLINED_FUNCTION_75_6();
    if (!lpta_loadp_setscan_l(v69, v70))
    {
      v97 = OUTLINED_FUNCTION_72_6();
      bspush_ca_scan(v97, v98);
LABEL_61:
      OUTLINED_FUNCTION_20_21();
      if (test_string_s())
      {
        goto LABEL_50;
      }

LABEL_62:
      OUTLINED_FUNCTION_42_8();
      goto LABEL_77;
    }

LABEL_30:
    v71 = OUTLINED_FUNCTION_72_6();
    starttest(v71, v72);
    v73 = OUTLINED_FUNCTION_75_6();
    if (!lpta_loadp_setscan_l(v73, v74))
    {
      OUTLINED_FUNCTION_42_8();
      if (!test_string_s())
      {
        v103 = OUTLINED_FUNCTION_72_6();
        bspush_ca_scan(v103, v104);
LABEL_70:
        OUTLINED_FUNCTION_20_21();
        goto LABEL_71;
      }
    }

LABEL_32:
    v75 = OUTLINED_FUNCTION_72_6();
    starttest(v75, v76);
    v77 = OUTLINED_FUNCTION_75_6();
    if (!lpta_loadp_setscan_l(v77, v78))
    {
      v99 = OUTLINED_FUNCTION_72_6();
      bspush_ca_scan(v99, v100);
LABEL_59:
      OUTLINED_FUNCTION_20_21();
      if (test_string_s())
      {
        goto LABEL_50;
      }

      goto LABEL_62;
    }

LABEL_33:
    v79 = OUTLINED_FUNCTION_72_6();
    starttest(v79, v80);
    v81 = OUTLINED_FUNCTION_75_6();
    if (!lpta_loadp_setscan_l(v81, v82))
    {
      v101 = OUTLINED_FUNCTION_72_6();
      bspush_ca_scan(v101, v102);
LABEL_57:
      OUTLINED_FUNCTION_20_21();
      if (test_string_s())
      {
        goto LABEL_50;
      }

LABEL_74:
      OUTLINED_FUNCTION_36_12();
LABEL_71:
      if (test_string_s())
      {
        goto LABEL_50;
      }

LABEL_49:
      if (advance_tok(v0))
      {
        goto LABEL_50;
      }

LABEL_8:
      v30 = OUTLINED_FUNCTION_25_20();
      lpta_rpta_loadp(v30, v31, v32);
      OUTLINED_FUNCTION_0_33();
      if (!mark_s())
      {
        OUTLINED_FUNCTION_88_4();
        OUTLINED_FUNCTION_149_0();
        break;
      }

      goto LABEL_50;
    }

LABEL_34:
    v83 = OUTLINED_FUNCTION_72_6();
    starttest(v83, v84);
    v85 = OUTLINED_FUNCTION_75_6();
    if (!lpta_loadp_setscan_l(v85, v86))
    {
      v105 = OUTLINED_FUNCTION_72_6();
      bspush_ca_scan(v105, v106);
LABEL_55:
      OUTLINED_FUNCTION_20_21();
      if (test_string_s())
      {
        goto LABEL_50;
      }

      goto LABEL_74;
    }

LABEL_35:
    v87 = OUTLINED_FUNCTION_72_6();
    starttest(v87, v88);
    v89 = OUTLINED_FUNCTION_75_6();
    if (!lpta_loadp_setscan_l(v89, v90))
    {
      OUTLINED_FUNCTION_20_21();
      if (!test_string_s())
      {
        v91 = OUTLINED_FUNCTION_72_6();
        bspush_ca_scan(v91, v92);
LABEL_63:
        OUTLINED_FUNCTION_20_21();
        if (test_string_s())
        {
          goto LABEL_50;
        }

        goto LABEL_70;
      }
    }

LABEL_79:
    v115 = OUTLINED_FUNCTION_72_6();
    starttest(v115, v116);
    v117 = OUTLINED_FUNCTION_75_6();
    if (!lpta_loadp_setscan_l(v117, v118))
    {
      v142 = OUTLINED_FUNCTION_72_6();
      bspush_ca_scan(v142, v143);
LABEL_73:
      OUTLINED_FUNCTION_20_21();
      if (test_string_s())
      {
        goto LABEL_50;
      }

      goto LABEL_74;
    }

LABEL_80:
    v119 = OUTLINED_FUNCTION_72_6();
    starttest(v119, v120);
    v121 = OUTLINED_FUNCTION_75_6();
    if (!lpta_loadp_setscan_l(v121, v122))
    {
      OUTLINED_FUNCTION_42_8();
      if (!test_string_s() && !advance_tok(v0))
      {
        goto LABEL_8;
      }
    }

LABEL_83:
    v123 = OUTLINED_FUNCTION_72_6();
    starttest(v123, v124);
    v125 = OUTLINED_FUNCTION_75_6();
    if (!lpta_loadp_setscan_l(v125, v126))
    {
      OUTLINED_FUNCTION_58_7();
      if (!test_string_s() && !advance_tok(v0) && !advance_tok(v0))
      {
        goto LABEL_8;
      }
    }

LABEL_87:
    v127 = OUTLINED_FUNCTION_72_6();
    starttest(v127, v128);
    v129 = OUTLINED_FUNCTION_75_6();
    if (!lpta_loadp_setscan_l(v129, v130))
    {
      OUTLINED_FUNCTION_58_7();
      if (!test_string_s() && !advance_tok(v0) && !advance_tok(v0))
      {
        goto LABEL_8;
      }
    }

LABEL_91:
    v131 = OUTLINED_FUNCTION_72_6();
    starttest(v131, v132);
    v133 = OUTLINED_FUNCTION_75_6();
    if (!lpta_loadp_setscan_l(v133, v134))
    {
      v144 = OUTLINED_FUNCTION_72_6();
      bspush_ca_scan(v144, v145);
LABEL_75:
      OUTLINED_FUNCTION_20_21();
      if (test_string_s())
      {
        goto LABEL_50;
      }

LABEL_76:
      OUTLINED_FUNCTION_36_12();
LABEL_77:
      if (test_string_s())
      {
        goto LABEL_50;
      }

LABEL_48:
      if (!advance_tok(v0))
      {
        goto LABEL_49;
      }

      goto LABEL_50;
    }

LABEL_92:
    v135 = OUTLINED_FUNCTION_72_6();
    starttest(v135, v136);
    v137 = OUTLINED_FUNCTION_75_6();
    if (lpta_loadp_setscan_l(v137, v138))
    {
LABEL_93:
      v139 = OUTLINED_FUNCTION_72_6();
      starttest(v139, v140);
      is_antepenult_stress();
      if (v141)
      {
        break;
      }

      goto LABEL_8;
    }

    v146 = OUTLINED_FUNCTION_72_6();
    bspush_ca_scan(v146, v147);
LABEL_65:
    OUTLINED_FUNCTION_20_21();
    if (test_string_s())
    {
      goto LABEL_50;
    }

LABEL_66:
    OUTLINED_FUNCTION_20_21();
    if (!test_string_s())
    {
      v113 = OUTLINED_FUNCTION_72_6();
      bspush_ca_scan(v113, v114);
LABEL_68:
      OUTLINED_FUNCTION_20_21();
      if (test_string_s())
      {
        goto LABEL_50;
      }

      goto LABEL_8;
    }

LABEL_50:
    v107 = *(v0 + 104);
    if (v107)
    {
      v108 = OUTLINED_FUNCTION_87_4(v107);
    }

    else
    {
      v109 = OUTLINED_FUNCTION_90_4();
      v108 = vback(v109, v110);
    }

    switch(v108)
    {
      case 1:
        continue;
      case 2:
      case 11:
      case 49:
        goto LABEL_8;
      case 3:
        goto LABEL_12;
      case 4:
        goto LABEL_16;
      case 5:
        goto LABEL_18;
      case 6:
        goto LABEL_20;
      case 7:
        goto LABEL_21;
      case 8:
        goto LABEL_23;
      case 9:
        goto LABEL_24;
      case 10:
        v111 = OUTLINED_FUNCTION_60_7();
        bspush_ca_scan(v111, v112);
        goto LABEL_68;
      case 12:
      case 48:
        goto LABEL_68;
      case 13:
        goto LABEL_25;
      case 14:
        goto LABEL_46;
      case 15:
        goto LABEL_47;
      case 16:
        goto LABEL_27;
      case 17:
        goto LABEL_29;
      case 18:
        goto LABEL_30;
      case 19:
        goto LABEL_61;
      case 20:
      case 26:
        goto LABEL_62;
      case 21:
        goto LABEL_32;
      case 22:
      case 35:
        goto LABEL_70;
      case 23:
        goto LABEL_49;
      case 24:
        goto LABEL_33;
      case 25:
        goto LABEL_59;
      case 27:
        goto LABEL_34;
      case 28:
        goto LABEL_57;
      case 29:
      case 32:
      case 38:
        goto LABEL_74;
      case 30:
        goto LABEL_35;
      case 31:
        goto LABEL_55;
      case 33:
        goto LABEL_79;
      case 34:
        goto LABEL_63;
      case 36:
        goto LABEL_80;
      case 37:
        goto LABEL_73;
      case 39:
        goto LABEL_83;
      case 40:
        goto LABEL_87;
      case 41:
        goto LABEL_91;
      case 42:
        goto LABEL_92;
      case 43:
        goto LABEL_75;
      case 44:
        goto LABEL_76;
      case 45:
        goto LABEL_93;
      case 46:
        goto LABEL_65;
      case 47:
        goto LABEL_66;
      default:
        goto LABEL_3;
    }
  }

LABEL_3:
  vretproc(v0);
  v15 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_113_1();
}

void mark_noun_verb()
{
  OUTLINED_FUNCTION_123_0();
  OUTLINED_FUNCTION_22_21();
  v58 = *MEMORY[0x277D85DE8];
  v51 = 0;
  v52 = 0;
  OUTLINED_FUNCTION_98_2();
  v48[0] = 0;
  OUTLINED_FUNCTION_85_4();
  bzero(v47, v1);
  OUTLINED_FUNCTION_84_4();
  bzero(v57, v2);
  if (!setjmp(v57))
  {
    OUTLINED_FUNCTION_37_12();
    if (!OUTLINED_FUNCTION_141_0(v3, v4, v5, v6, v7, v8, v9, v10, v46, v47[0], v47[1], v47[2], v47[3], v47[4], v47[5], v47[6], v47[7], v47[8], v47[9], v47[10], v47[11], v47[12], v47[13], v47[14], v47[15], v47[16], v47[17], v47[18], v47[19], v47[20], v47[21], v47[22], v48[0], v48[1], v49, v50[0], v50[1], v51, v52, v53, v54, v55, v56, v57[0]))
    {
      v11 = OUTLINED_FUNCTION_59_7();
      get_parm(v11, v12, v13, -6);
      OUTLINED_FUNCTION_53_7();
      WORD2(v49) = -4;
      LOWORD(v49) = -4;
      v14 = OUTLINED_FUNCTION_96_3();
      v16 = push_ptr_init(v14, v15);
      OUTLINED_FUNCTION_115_1(v16, v17, &null_str_8);
      HIWORD(v49) = 0;
      WORD1(v49) = 0;
      v18 = OUTLINED_FUNCTION_24_21();
      fence_29(v18, v19, v20);
      v21 = OUTLINED_FUNCTION_97_3();
      starttest(v21, v22);
      v23 = OUTLINED_FUNCTION_81_5();
      if (!lpta_loadp_setscan_l(v23, v24))
      {
        while (2)
        {
          if (!advance_tok(v0))
          {
            v26 = OUTLINED_FUNCTION_81_5();
            bspush_ca_scan(v26, v27);
LABEL_7:
            v28 = OUTLINED_FUNCTION_77_6();
            savescptr(v28, v29, v48);
            if (!advance_tok(v0) && !advance_tok(v0))
            {
              OUTLINED_FUNCTION_91_3();
              if (!is_ambig_noun_verb_ending())
              {
LABEL_10:
                v30 = OUTLINED_FUNCTION_133_0();
                lpta_rpta_loadp(v30, v31, v50);
                OUTLINED_FUNCTION_79_6();
                if (!mark_s())
                {
                  OUTLINED_FUNCTION_88_4();
                  OUTLINED_FUNCTION_149_0();
LABEL_17:
                  v36 = WORD1(v49);
                  if (WORD1(v49) == 1)
                  {
                    v37 = OUTLINED_FUNCTION_25_20();
                    lpta_rpta_loadp(v37, v38, v39);
                    OUTLINED_FUNCTION_15_26();
                    if (!mark_s())
                    {
                      break;
                    }

LABEL_19:
                    v36 = WORD1(v49);
                  }

                  if (v36 == 2)
                  {
                    v40 = OUTLINED_FUNCTION_25_20();
                    lpta_rpta_loadp(v40, v41, v42);
                    OUTLINED_FUNCTION_15_26();
                    if (!mark_s() || WORD1(v49) != 3)
                    {
                      break;
                    }
                  }

                  else
                  {
LABEL_24:
                    if (v36 != 3)
                    {
                      break;
                    }
                  }

                  v43 = OUTLINED_FUNCTION_25_20();
                  lpta_rpta_loadp(v43, v44, v45);
                  OUTLINED_FUNCTION_15_26();
                  mark_s();
                  break;
                }
              }
            }
          }

          v32 = *(v0 + 104);
          if (v32)
          {
            v33 = OUTLINED_FUNCTION_87_4(v32);
          }

          else
          {
            v34 = OUTLINED_FUNCTION_90_4();
            v33 = vback(v34, v35);
          }

          switch(v33)
          {
            case 2:
              continue;
            case 3:
              goto LABEL_7;
            case 4:
              goto LABEL_10;
            case 5:
              goto LABEL_17;
            case 6:
              goto LABEL_19;
            case 8:
              v36 = WORD1(v49);
              goto LABEL_24;
            default:
              goto LABEL_4;
          }
        }
      }
    }
  }

LABEL_4:
  vretproc(v0);
  v25 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_113_1();
  OUTLINED_FUNCTION_122_0();
}

void strip_plural()
{
  OUTLINED_FUNCTION_123_0();
  v1 = v0;
  v3 = v2;
  v50 = *MEMORY[0x277D85DE8];
  v44 = 0;
  v45 = 0;
  OUTLINED_FUNCTION_27_18(v2, v4, v0, v5, v6, v7, v8, v9, v41[0], v41[1], v41[2], v41[3], v41[4], v41[5], v41[6], v41[7], v41[8], v41[9], v41[10], v41[11], v41[12], v41[13], v41[14], v41[15], v41[16], v41[17], v41[18], v41[19], v41[20], v41[21], v41[22], v41[23], v41[24], v42, v43);
  OUTLINED_FUNCTION_84_4();
  bzero(v49, v10);
  if (!setjmp(v49) && !ventproc(v3, v41, v48, v47, v46, v49))
  {
    v11 = OUTLINED_FUNCTION_93_3();
    OUTLINED_FUNCTION_137_0(v11, v12);
    v13 = OUTLINED_FUNCTION_76_6();
    OUTLINED_FUNCTION_114_1(v13, v14);
    v15 = OUTLINED_FUNCTION_26_20();
    get_parm(v15, v16, v17, -6);
    v18 = fence_29(v3, 0, &null_str_8);
    OUTLINED_FUNCTION_104_1(v18, v19, &unk_2806BBF47);
    OUTLINED_FUNCTION_127_0();
    v20 = OUTLINED_FUNCTION_77_6();
    if (lpta_loadp_setscan_l(v20, v21) || (OUTLINED_FUNCTION_36_12(), test_string_s()))
    {
LABEL_5:
      v22 = OUTLINED_FUNCTION_75_6();
      if (lpta_loadp_setscan_l(v22, v23))
      {
        goto LABEL_7;
      }

      OUTLINED_FUNCTION_20_21();
      if (test_string_s())
      {
        goto LABEL_7;
      }

LABEL_18:
      v38 = OUTLINED_FUNCTION_82_5();
      savescptr(v38, v39, v40);
LABEL_19:
      *(v1 + 8) = v43;
      goto LABEL_7;
    }

    while (2)
    {
      v25 = OUTLINED_FUNCTION_81_5();
      savescptr(v25, v26, &v42);
      v27 = OUTLINED_FUNCTION_120_1();
      bspush_ca_scan(v27, v28);
      OUTLINED_FUNCTION_20_21();
LABEL_9:
      if (!test_string_s())
      {
LABEL_10:
        v29 = OUTLINED_FUNCTION_58_7();
        if (!testFldeq(v29, v30, v31, 1) && !advance_tok(v3))
        {
          goto LABEL_19;
        }
      }

      v32 = *(v3 + 104);
      if (v32)
      {
        v33 = OUTLINED_FUNCTION_87_4(v32);
      }

      else
      {
        v34 = OUTLINED_FUNCTION_90_4();
        v33 = vback(v34, v35);
      }

      switch(v33)
      {
        case 1:
          goto LABEL_5;
        case 2:
          continue;
        case 3:
          v36 = OUTLINED_FUNCTION_146_0();
          bspush_ca_scan(v36, v37);
          OUTLINED_FUNCTION_20_21();
          goto LABEL_9;
        case 4:
          goto LABEL_10;
        case 5:
          OUTLINED_FUNCTION_20_21();
          goto LABEL_9;
        case 6:
          goto LABEL_19;
        case 8:
          goto LABEL_18;
        default:
          goto LABEL_7;
      }
    }
  }

LABEL_7:
  vretproc(v3);
  v24 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_119_1();
  OUTLINED_FUNCTION_122_0();
}

uint64_t match_verb_pattern()
{
  OUTLINED_FUNCTION_135_0();
  v56 = *MEMORY[0x277D85DE8];
  v49 = 0;
  v50 = 0;
  OUTLINED_FUNCTION_98_2();
  v47 = 0;
  OUTLINED_FUNCTION_85_4();
  bzero(v46, v3);
  OUTLINED_FUNCTION_84_4();
  bzero(v55, v4);
  if (!setjmp(v55))
  {
    OUTLINED_FUNCTION_37_12();
    if (!OUTLINED_FUNCTION_141_0(v5, v6, v7, v8, v9, v10, v11, v12, v45, v46[0], v46[1], v46[2], v46[3], v46[4], v46[5], v46[6], v46[7], v46[8], v46[9], v46[10], v46[11], v46[12], v46[13], v46[14], v46[15], v46[16], v46[17], v46[18], v46[19], v46[20], v46[21], v46[22], v47, v48[0], v48[1], v48[2], v48[3], v49, v50, v51, v52, v53, v54, v55[0]))
    {
      v15 = OUTLINED_FUNCTION_86_4();
      get_parm(v15, v16, v2, -6);
      v17 = OUTLINED_FUNCTION_91_3();
      OUTLINED_FUNCTION_137_0(v17, v18);
      v19 = OUTLINED_FUNCTION_26_20();
      get_parm(v19, v20, v21, -6);
      v22 = OUTLINED_FUNCTION_95_3();
      get_parm(v22, v23, v24, -4);
      LOWORD(v47) = -4;
      OUTLINED_FUNCTION_115_1(v25, v26, &null_str_8);
      v27 = OUTLINED_FUNCTION_73_6();
      fence_29(v27, v28, v29);
      WORD1(v47) = 0;
      v30 = OUTLINED_FUNCTION_91_3();
      lpta_rpta_loadp(v30, v31, v48);
      v32 = OUTLINED_FUNCTION_73_6();
      if (setd_lookup(v32, v33, 37))
      {
        v34 = OUTLINED_FUNCTION_19_22();
        lpta_rpta_loadp(v34, v35, v36);
        v37 = OUTLINED_FUNCTION_73_6();
        if (setd_lookup(v37, v38, 38))
        {
          OUTLINED_FUNCTION_83_4();
          OUTLINED_FUNCTION_130_0();
          if (match_por_paradigm_verb())
          {
            v39 = OUTLINED_FUNCTION_25_20();
            lpta_rpta_loadp(v39, v40, v41);
            v42 = OUTLINED_FUNCTION_73_6();
            if (setd_lookup(v42, v43, 41))
            {
              goto LABEL_3;
            }

            OUTLINED_FUNCTION_83_4();
            if (is_ambig_noun_verb_ending())
            {
              goto LABEL_3;
            }
          }

LABEL_13:
          *(v1 + 2) = HIWORD(v47);
          goto LABEL_3;
        }

        v44 = 3026;
      }

      else
      {
        v44 = 3022;
      }

      HIWORD(v47) = *(v0 + v44);
      goto LABEL_13;
    }
  }

LABEL_3:
  vretproc(v0);
  v13 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_113_1();
}

uint64_t match_por_paradigm_verb()
{
  OUTLINED_FUNCTION_108_1();
  v74 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_45_8(v2, v3, v4, v5, v6, v7, v8, v9, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, SHIDWORD(v67), v69, v70, v71, v72);
  OUTLINED_FUNCTION_84_4();
  bzero(v73, v10);
  if (setjmp(v73) || (OUTLINED_FUNCTION_30_16(), OUTLINED_FUNCTION_116_1(v11, v12, v13, v14, v15)))
  {
LABEL_3:
    vretproc(v0);
    result = 94;
  }

  else
  {
    v18 = OUTLINED_FUNCTION_91_3();
    OUTLINED_FUNCTION_137_0(v18, v19);
    v20 = OUTLINED_FUNCTION_76_6();
    OUTLINED_FUNCTION_110_1(v20, v21);
    v22 = OUTLINED_FUNCTION_95_3();
    get_parm(v22, v23, v24, -4);
    v25 = 0;
    OUTLINED_FUNCTION_115_1(v26, v27, &null_str_8);
    OUTLINED_FUNCTION_125_0();
    OUTLINED_FUNCTION_63_6();
    bspush_ca_boa();
    v28 = OUTLINED_FUNCTION_91_3();
    if (!lpta_loadp_setscan_l(v28, v29))
    {
      OUTLINED_FUNCTION_20_21();
      v25 = test_string_s() == 0;
    }

    v30 = *(v0 + 104);
    if (v30)
    {
      v31 = OUTLINED_FUNCTION_87_4(v30);
    }

    else
    {
      v31 = vback(v0, v25);
    }

    switch(v31)
    {
      case 1:
        v32 = OUTLINED_FUNCTION_19_22();
        lpta_rpta_loadp(v32, v33, v34);
        v35 = OUTLINED_FUNCTION_73_6();
        if (setd_lookup(v35, v36, 39))
        {
          goto LABEL_12;
        }

        v42 = *(v0 + 3022);
        goto LABEL_17;
      case 2:
        bspop_boa(v0);
        goto LABEL_3;
      case 3:
LABEL_12:
        v37 = OUTLINED_FUNCTION_19_22();
        lpta_rpta_loadp(v37, v38, v39);
        v40 = OUTLINED_FUNCTION_73_6();
        if (setd_lookup(v40, v41, 40))
        {
          goto LABEL_3;
        }

        v42 = *(v0 + 3026);
LABEL_17:
        *(v1 + 2) = v42;
        vretproc(v0);
        result = 0;
        break;
      case 4:
        v42 = v68;
        goto LABEL_17;
      default:
        goto LABEL_3;
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t is_ambig_noun_verb_ending()
{
  OUTLINED_FUNCTION_135_0();
  v115 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_98_2();
  v111 = 0;
  OUTLINED_FUNCTION_85_4();
  bzero(&v88, v5);
  OUTLINED_FUNCTION_84_4();
  bzero(v114, v6);
  if (setjmp(v114))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_30_16();
  if (ventproc(v0, v7, v8, v9, v10, v114))
  {
    goto LABEL_3;
  }

  v13 = OUTLINED_FUNCTION_120_1();
  get_parm(v13, v14, v4, -6);
  v15 = OUTLINED_FUNCTION_76_6();
  OUTLINED_FUNCTION_137_0(v15, v16);
  get_parm(v0, &v111 + 4, v2, -4);
  v17 = OUTLINED_FUNCTION_95_3();
  get_parm(v17, v18, v19, -4);
  fence_29(v0, 0, &null_str_8);
  v20 = OUTLINED_FUNCTION_57_7();
  fence_29(v20, v21, v22);
  OUTLINED_FUNCTION_125_0();
  v23 = OUTLINED_FUNCTION_120_1();
  if (!lpta_loadp_setscan_r(v23, v24))
  {
    v25 = OUTLINED_FUNCTION_63_6();
    bspush_ca_scan(v25, v26);
LABEL_7:
    OUTLINED_FUNCTION_20_21();
    if (!test_string_s())
    {
LABEL_8:
      OUTLINED_FUNCTION_57_7();
      v27 = test_string_s();
      if (!v27)
      {
        *(v0 + 136) = v3;
        v35 = OUTLINED_FUNCTION_21_21(v27, v28, v29, v30, v31, v32, v33, v34, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113);
        if (!test_ptr(v35))
        {
          v36 = *(v0 + 3026);
LABEL_11:
          HIWORD(v111) = v36;
          v37 = v36;
          v38 = 2;
LABEL_12:
          WORD1(v111) = v38;
LABEL_34:
          v2[1] = v37;
          *(v1 + 2) = v38;
          vretproc(v0);
          result = 0;
          goto LABEL_4;
        }
      }
    }

    goto LABEL_26;
  }

  while (2)
  {
    v39 = OUTLINED_FUNCTION_31_16();
    starttest(v39, v40);
    v41 = OUTLINED_FUNCTION_65_6();
    if (!lpta_loadp_setscan_r(v41, v42))
    {
      v43 = OUTLINED_FUNCTION_47_8();
      bspush_ca_scan(v43, v44);
LABEL_15:
      OUTLINED_FUNCTION_20_21();
      if (!test_string_s())
      {
LABEL_16:
        OUTLINED_FUNCTION_57_7();
        v45 = test_string_s();
        if (!v45)
        {
          *(v0 + 136) = v3;
          v53 = OUTLINED_FUNCTION_21_21(v45, v46, v47, v48, v49, v50, v51, v52, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113);
          if (!test_ptr(v53))
          {
            v36 = *(v0 + 3022);
            goto LABEL_11;
          }
        }
      }

LABEL_26:
      v75 = *(v0 + 104);
      if (v75)
      {
        v66 = OUTLINED_FUNCTION_87_4(v75);
      }

      else
      {
        v76 = OUTLINED_FUNCTION_90_4();
        v66 = vback(v76, v77);
      }

      switch(v66)
      {
        case 1:
          continue;
        case 2:
          goto LABEL_7;
        case 3:
          goto LABEL_8;
        case 4:
          v37 = HIWORD(v111);
          v38 = WORD1(v111);
          goto LABEL_34;
        case 5:
          goto LABEL_19;
        case 6:
          goto LABEL_15;
        case 7:
          goto LABEL_16;
        case 8:
          goto LABEL_20;
        case 9:
          goto LABEL_30;
        case 10:
          goto LABEL_31;
        case 12:
          goto LABEL_23;
        case 13:
          goto LABEL_24;
        default:
          goto LABEL_3;
      }
    }

    break;
  }

LABEL_19:
  v54 = OUTLINED_FUNCTION_34_14();
  starttest(v54, v55);
  v56 = OUTLINED_FUNCTION_65_6();
  if (!lpta_loadp_setscan_r(v56, v57))
  {
    v64 = OUTLINED_FUNCTION_52_7();
    bspush_ca_scan(v64, v65);
LABEL_30:
    OUTLINED_FUNCTION_20_21();
    if (!test_string_s())
    {
LABEL_31:
      OUTLINED_FUNCTION_117_1();
      v86 = OUTLINED_FUNCTION_21_21(v78, v79, v80, v81, v82, v83, v84, v85, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113);
      if (!test_ptr(v86))
      {
        HIWORD(v111) = *(v0 + 3022);
        v37 = HIWORD(v111);
        v38 = 3;
        goto LABEL_12;
      }
    }

    goto LABEL_26;
  }

LABEL_20:
  v58 = OUTLINED_FUNCTION_51_7();
  starttest(v58, v59);
  v60 = OUTLINED_FUNCTION_65_6();
  if (!lpta_loadp_setscan_r(v60, v61))
  {
    v62 = OUTLINED_FUNCTION_60_7();
    bspush_ca_scan(v62, v63);
LABEL_23:
    OUTLINED_FUNCTION_20_21();
    v66 = test_string_s();
    if (!v66)
    {
LABEL_24:
      v3 = 1;
      *(v0 + 136) = 1;
      v74 = OUTLINED_FUNCTION_21_21(v66, v67, v68, v69, v70, v71, v72, v73, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113);
      if (!test_ptr(v74))
      {
        HIWORD(v111) = *(v0 + 3022);
        v37 = HIWORD(v111);
        WORD1(v111) = 1;
        v38 = 1;
        goto LABEL_34;
      }
    }

    goto LABEL_26;
  }

LABEL_3:
  vretproc(v0);
  result = 94;
LABEL_4:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void is_antepenult_stress()
{
  OUTLINED_FUNCTION_123_0();
  OUTLINED_FUNCTION_22_21();
  v134 = *MEMORY[0x277D85DE8];
  memset(v129, 0, sizeof(v129));
  OUTLINED_FUNCTION_67_6(v1, v2, v3, v4, v5, v6, v7, v8, v104, v105[0], v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128[0], v128[1]);
  OUTLINED_FUNCTION_84_4();
  bzero(v133, v9);
  if (!setjmp(v133) && !ventproc(v0, v105, v132, v131, v130, v133))
  {
    v10 = OUTLINED_FUNCTION_26_20();
    get_parm(v10, v11, v12, -6);
    OUTLINED_FUNCTION_92_3(v13, v129);
    v14 = OUTLINED_FUNCTION_96_3();
    push_ptr_init(v14, v15);
    fence_29(v0, 0, &null_str_8);
    v16 = OUTLINED_FUNCTION_97_3();
    starttest(v16, v17);
    v18 = OUTLINED_FUNCTION_77_6();
    if (!lpta_loadp_setscan_l(v18, v19))
    {
      v21 = OUTLINED_FUNCTION_55_7();
      if (testFldeq(v21, v22, v23, 1) || advance_tok(v0))
      {
        v24 = 0;
      }

      else
      {
        v25 = OUTLINED_FUNCTION_63_6();
        bspush_ca_scan(v25, v26);
        v27 = 0;
LABEL_45:
        v24 = v27;
        v85 = OUTLINED_FUNCTION_58_7();
        if (!testFldeq(v85, v86, v87, 1) && !advance_tok(v0))
        {
          v88 = OUTLINED_FUNCTION_47_8();
          bspush_ca_scan(v88, v89);
          v32 = v24;
LABEL_48:
          v24 = v32;
          v90 = OUTLINED_FUNCTION_68_6();
          bspush_ca_scan(v90, v91);
          v92 = OUTLINED_FUNCTION_51_7();
          bspush_ca_scan(v92, v93);
          v94 = OUTLINED_FUNCTION_73_6();
          v97 = testFldeq(v94, v95, v96, 5);
          v33 = v24;
          if (!v97)
          {
LABEL_49:
            v24 = v33;
            v31 = v33;
            if (!advance_tok(v0))
            {
LABEL_50:
              v24 = v31;
              v98 = OUTLINED_FUNCTION_58_7();
              if (!testFldeq(v98, v99, v100, 1))
              {
                OUTLINED_FUNCTION_64_6();
                bspush_ca_scan_boa();
                v101 = OUTLINED_FUNCTION_73_6();
                if (testFldeq(v101, v102, 5, v103))
                {
                  v24 = v31;
                }

                else
                {
                  v24 = 1;
                }
              }
            }
          }
        }
      }

      v38 = v24;
      while (2)
      {
        v28 = *(v0 + 104);
        if (v28)
        {
          v29 = OUTLINED_FUNCTION_87_4(v28);
          v31 = v30;
        }

        else
        {
          v29 = vback(v0, v38);
          v31 = 0;
        }

        v27 = v31;
        v32 = v31;
        v33 = v31;
        switch(v29)
        {
          case 2:
            v34 = OUTLINED_FUNCTION_55_7();
            v37 = testFldeq(v34, v35, v36, 2);
            v38 = v31;
            if (v37)
            {
              continue;
            }

            v39 = advance_tok(v0);
            v38 = v31;
            if (v39)
            {
              continue;
            }

            goto LABEL_44;
          case 3:
            goto LABEL_45;
          case 4:
            v64 = OUTLINED_FUNCTION_55_7();
            v67 = testFldeq(v64, v65, v66, 2);
            v38 = v31;
            if (v67)
            {
              continue;
            }

            v68 = advance_tok(v0);
            v38 = v31;
            if (v68)
            {
              continue;
            }

LABEL_44:
            v83 = OUTLINED_FUNCTION_72_6();
            bspush_ca_scan(v83, v84);
            v27 = v31;
            goto LABEL_45;
          case 5:
            v54 = OUTLINED_FUNCTION_55_7();
            v57 = testFldeq(v54, v55, v56, 2);
            v38 = v31;
            if (!v57)
            {
              v58 = advance_tok(v0);
              v27 = v31;
              v38 = v31;
              if (!v58)
              {
                goto LABEL_45;
              }
            }

            continue;
          case 6:
            v59 = OUTLINED_FUNCTION_55_7();
            v62 = testFldeq(v59, v60, v61, 2);
            v38 = v31;
            if (v62)
            {
              continue;
            }

            v63 = advance_tok(v0);
            v38 = v31;
            if (v63)
            {
              continue;
            }

            goto LABEL_43;
          case 7:
            goto LABEL_48;
          case 8:
            v49 = OUTLINED_FUNCTION_55_7();
            v52 = testFldeq(v49, v50, v51, 2);
            v38 = v31;
            if (v52)
            {
              continue;
            }

            v53 = advance_tok(v0);
            v38 = v31;
            if (v53)
            {
              continue;
            }

LABEL_43:
            v81 = OUTLINED_FUNCTION_72_6();
            bspush_ca_scan(v81, v82);
            v32 = v31;
            goto LABEL_48;
          case 9:
            v69 = OUTLINED_FUNCTION_55_7();
            v72 = testFldeq(v69, v70, v71, 2);
            v38 = v31;
            if (!v72)
            {
              v73 = advance_tok(v0);
              v32 = v31;
              v38 = v31;
              if (!v73)
              {
                goto LABEL_48;
              }
            }

            continue;
          case 10:
            goto LABEL_50;
          case 11:
            v74 = OUTLINED_FUNCTION_79_6();
            v77 = testFldeq(v74, v75, v76, 3);
            v33 = v31;
            v38 = v31;
            if (!v77)
            {
              goto LABEL_49;
            }

            continue;
          case 12:
            goto LABEL_49;
          case 13:
            bspop_boa(v0);
            v40 = advance_tok(v0);
            v38 = v31;
            if (v40)
            {
              continue;
            }

            goto LABEL_17;
          case 14:
LABEL_17:
            v41 = OUTLINED_FUNCTION_81_5();
            savescptr(v41, v42, v128);
            goto LABEL_18;
          case 15:
LABEL_18:
            v43 = OUTLINED_FUNCTION_91_3();
            starttest(v43, v44);
            v45 = OUTLINED_FUNCTION_77_6();
            if (lpta_loadp_setscan_r(v45, v46))
            {
              goto LABEL_4;
            }

            OUTLINED_FUNCTION_79_6();
            if (test_string_s())
            {
              goto LABEL_4;
            }

            v47 = OUTLINED_FUNCTION_146_0();
            bspush_ca_scan(v47, v48);
            OUTLINED_FUNCTION_79_6();
LABEL_39:
            v78 = test_string_s();
            v38 = v31;
            if (v78)
            {
              continue;
            }

LABEL_40:
            *(v0 + 136) = 1;
            v79 = OUTLINED_FUNCTION_23_21();
            v80 = test_ptr(v79);
            v38 = v31;
            if (!v80)
            {
              goto LABEL_4;
            }

            continue;
          case 17:
            OUTLINED_FUNCTION_79_6();
            goto LABEL_39;
          case 18:
            goto LABEL_40;
          default:
            goto LABEL_4;
        }
      }
    }
  }

LABEL_4:
  vretproc(v0);
  v20 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_122_0();
}

void disambig_por_single_word()
{
  OUTLINED_FUNCTION_123_0();
  OUTLINED_FUNCTION_22_21();
  v95 = *MEMORY[0x277D85DE8];
  v90[0] = 0;
  v90[1] = 0;
  v89[0] = 0;
  v89[1] = 0;
  v88[0] = 0;
  v88[1] = 0;
  OUTLINED_FUNCTION_67_6(v1, v2, v3, v4, v5, v6, v7, v8, v63, v64[0], v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87[0], v87[1]);
  OUTLINED_FUNCTION_84_4();
  bzero(v94, v9);
  if (!setjmp(v94) && !ventproc(v0, v64, v93, v92, v91, v94))
  {
    v11 = OUTLINED_FUNCTION_26_20();
    get_parm(v11, v12, v13, -6);
    OUTLINED_FUNCTION_92_3(v14, v89);
    v15 = OUTLINED_FUNCTION_107_1();
    push_ptr_init(v15, v16);
    v17 = OUTLINED_FUNCTION_96_3();
    v19 = push_ptr_init(v17, v18);
    OUTLINED_FUNCTION_115_1(v19, v20, &null_str_8);
    v21 = OUTLINED_FUNCTION_72_6();
    starttest(v21, v22);
    v23 = OUTLINED_FUNCTION_41_8();
    if (lpta_loadp_setscan_r(v23, v24))
    {
LABEL_10:
      v28 = OUTLINED_FUNCTION_38_11();
      starttest(v28, v29);
      v30 = OUTLINED_FUNCTION_80_5();
      if (lpta_loadp_setscan_r(v30, v31))
      {
        goto LABEL_3;
      }

      v32 = OUTLINED_FUNCTION_14_26();
      if (!testFldeq(v32, v33, v34, 31) && !advance_tok(v0))
      {
        v35 = OUTLINED_FUNCTION_32_15();
        starttest_l(v35, v36);
        OUTLINED_FUNCTION_31_16();
        bspush_ca_boa();
        v37 = OUTLINED_FUNCTION_75_6();
        if (!lpta_loadp_setscan_l(v37, v38))
        {
          OUTLINED_FUNCTION_36_12();
          test_string_s();
        }
      }
    }

    else
    {
      v25 = OUTLINED_FUNCTION_13_28();
      if (!testFldeq(v25, v26, v27, 11) && !advance_tok(v0))
      {
        lpta_rpta_loadp(v0, v90, v89);
        OUTLINED_FUNCTION_7_29();
        if (!mark_s())
        {
          goto LABEL_3;
        }
      }
    }

    OUTLINED_FUNCTION_142_0();
    while (2)
    {
      v40 = v0[13];
      if (v40)
      {
        v41 = OUTLINED_FUNCTION_87_4(v40);
        v43 = v42;
      }

      else
      {
        v41 = vback(v0, v39);
        v43 = 0;
      }

      switch(v41)
      {
        case 1:
          goto LABEL_10;
        case 5:
          bspop_boa(v0);
          v44 = OUTLINED_FUNCTION_101_1();
          starttest(v44, v45);
          v46 = OUTLINED_FUNCTION_81_5();
          if (!lpta_loadp_setscan_r(v46, v47) && !advance_tok(v0))
          {
            goto LABEL_22;
          }

          goto LABEL_24;
        case 6:
          goto LABEL_24;
        case 7:
LABEL_22:
          v48 = OUTLINED_FUNCTION_77_6();
          savescptr(v48, v49, v88);
          v50 = advance_tok(v0);
          v39 = v43;
          if (!v50)
          {
            goto LABEL_23;
          }

          continue;
        case 8:
LABEL_23:
          v51 = OUTLINED_FUNCTION_120_1();
          savescptr(v51, v52, v87);
LABEL_24:
          v53 = OUTLINED_FUNCTION_91_3();
          lpta_rpta_loadp(v53, v54, v87);
          v55 = OUTLINED_FUNCTION_44_8();
          inserted = insert_2pt_s(v55, v56, v57, &unk_2806BBF48, v58);
          v39 = v43;
          if (!inserted)
          {
            v60 = OUTLINED_FUNCTION_81_5();
            lpta_rpta_loadp(v60, v61, v89);
            OUTLINED_FUNCTION_7_29();
            v62 = mark_s();
            v39 = v43;
            if (!v62)
            {
              goto LABEL_3;
            }
          }

          continue;
        default:
          goto LABEL_3;
      }
    }
  }

LABEL_3:
  vretproc(v0);
  v10 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_122_0();
}

uint64_t disambig_por_content_word()
{
  OUTLINED_FUNCTION_22_21();
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_18_23(v4, v5, v6, v7, v8, v9, v10, v11, v122, v126, v130, v134, v138, v142, v146, v150, v154, v158, v162, v166, v170, v174, v178, v182, v186, v190, v194, v198, v202, v206, v210, v214, v218, v221, v224);
  OUTLINED_FUNCTION_62_6(v12, v13, v14, v15, v16, v17, v18, v19, v123, v127, v131, v135, v139, v143, v147, v151, v155, v159, v163, v167, v171, v175, v179, v183, v187, v191, v195, v199, v203, v207, v211, v215, v219, v222, v225, v227, v229, v231, v233, v235);
  v20 = setjmp(v2);
  if (v20 || OUTLINED_FUNCTION_17_24(v20, v21, v22, v23, v24, v25, v26, v27, v124, v128, v132, v136, v140, v144, v148, v152, v156, v160, v164, v168, v172, v176, v180, v184, v188, v192, v196, v200, v204, v208, v212, v216, v220, v223, v226, *v228, v228[4], *v230, *&v230[4], v230[6], v232, SWORD2(v232), SBYTE6(v232), SHIBYTE(v232), v234, v236))
  {
    goto LABEL_3;
  }

  v30 = OUTLINED_FUNCTION_26_20();
  get_parm(v30, v31, v32, -6);
  OUTLINED_FUNCTION_70_6(v33, v34, v35, v36, v37, v38, v39, v40, v125, v129, v133, v137, v141, v145, v149, v153, v157, v161, v165, v169, v173, v177, v181, v185, v189, v193, v197, v201, v205, v209, v213, v217);
  fence_29(v0, 0, &null_str_8);
  v41 = OUTLINED_FUNCTION_72_6();
  starttest(v41, v42);
  v43 = OUTLINED_FUNCTION_41_8();
  if (lpta_loadp_setscan_r(v43, v44))
  {
LABEL_5:
    v45 = OUTLINED_FUNCTION_72_6();
    starttest(v45, v46);
    v47 = OUTLINED_FUNCTION_35_13();
    if (lpta_loadp_setscan_r(v47, v48))
    {
LABEL_6:
      v49 = OUTLINED_FUNCTION_72_6();
      starttest(v49, v50);
      v51 = OUTLINED_FUNCTION_35_13();
      if (lpta_loadp_setscan_r(v51, v52))
      {
        goto LABEL_3;
      }

      v53 = OUTLINED_FUNCTION_15_26();
      if (!testFldeq(v53, v54, v55, 4) && !advance_tok(v0))
      {
        OUTLINED_FUNCTION_16_25();
        pro_vs_det();
        goto LABEL_3;
      }
    }

    else
    {
      v56 = OUTLINED_FUNCTION_13_28();
      if (!testFldeq(v56, v57, v58, 11) && !advance_tok(v0))
      {
        OUTLINED_FUNCTION_16_25();
        noun_vs_verb();
        goto LABEL_3;
      }
    }

    goto LABEL_49;
  }

  v59 = OUTLINED_FUNCTION_13_28();
  if (testFldeq(v59, v60, v61, v62) || advance_tok(v0))
  {
LABEL_49:
    while (2)
    {
      v106 = *(v0 + 104);
      if (v106)
      {
        v107 = OUTLINED_FUNCTION_87_4(v106);
      }

      else
      {
        v108 = OUTLINED_FUNCTION_90_4();
        v107 = vback(v108, v109);
      }

      switch(v107)
      {
        case 1:
          goto LABEL_5;
        case 2:
          goto LABEL_16;
        case 5:
          goto LABEL_17;
        case 7:
          goto LABEL_18;
        case 8:
          OUTLINED_FUNCTION_20_21();
          if (!test_string_s())
          {
            goto LABEL_38;
          }

          continue;
        case 9:
          goto LABEL_38;
        case 11:
          goto LABEL_21;
        case 13:
          goto LABEL_24;
        case 15:
          goto LABEL_26;
        case 16:
          goto LABEL_48;
        case 17:
          goto LABEL_69;
        case 18:
          OUTLINED_FUNCTION_20_21();
          if (!test_string_s())
          {
            goto LABEL_71;
          }

          continue;
        case 19:
          goto LABEL_71;
        case 21:
          goto LABEL_29;
        case 23:
          goto LABEL_59;
        case 24:
          OUTLINED_FUNCTION_36_12();
          if (!test_string_s())
          {
            goto LABEL_32;
          }

          continue;
        case 25:
          goto LABEL_32;
        case 27:
          goto LABEL_62;
        case 29:
          goto LABEL_65;
        case 31:
          goto LABEL_68;
        case 34:
          goto LABEL_6;
        default:
          goto LABEL_3;
      }
    }

    goto LABEL_3;
  }

  v63 = OUTLINED_FUNCTION_78_6();
  starttest(v63, v64);
  v65 = OUTLINED_FUNCTION_76_6();
  if (!lpta_loadp_setscan_r(v65, v66))
  {
    v103 = OUTLINED_FUNCTION_15_26();
    if (!testFldeq(v103, v104, v105, 6) && !advance_tok(v0))
    {
      OUTLINED_FUNCTION_16_25();
      assign_inf_category();
      goto LABEL_3;
    }

    goto LABEL_49;
  }

LABEL_16:
  v67 = OUTLINED_FUNCTION_31_16();
  starttest(v67, v68);
  v69 = OUTLINED_FUNCTION_35_13();
  if (!lpta_loadp_setscan_r(v69, v70))
  {
    v95 = OUTLINED_FUNCTION_14_26();
    if (!testFldeq(v95, v96, v97, 6) && !advance_tok(v0))
    {
      OUTLINED_FUNCTION_16_25();
      disambiguate_mais();
      goto LABEL_3;
    }

    goto LABEL_49;
  }

LABEL_17:
  v71 = OUTLINED_FUNCTION_46_8();
  starttest(v71, v72);
  v73 = OUTLINED_FUNCTION_29_17();
  if (!lpta_loadp_setscan_r(v73, v74))
  {
    v98 = OUTLINED_FUNCTION_34_14();
    bspush_ca_scan(v98, v99);
LABEL_38:
    OUTLINED_FUNCTION_24_21();
    if (!test_string_s())
    {
      *(v0 + 136) = v1;
      v100 = OUTLINED_FUNCTION_23_21();
      if (!test_ptr(v100))
      {
        OUTLINED_FUNCTION_16_25();
        disambiguate_acerca();
        goto LABEL_3;
      }
    }

    goto LABEL_49;
  }

LABEL_18:
  v75 = OUTLINED_FUNCTION_29_17();
  if (!lpta_loadp_setscan_r(v75, v76))
  {
    OUTLINED_FUNCTION_24_21();
    if (!test_string_s())
    {
      *(v0 + 136) = v1;
      v77 = OUTLINED_FUNCTION_23_21();
      if (!test_ptr(v77))
      {
        OUTLINED_FUNCTION_16_25();
        disambiguate_cedo();
        goto LABEL_3;
      }
    }
  }

LABEL_21:
  v78 = OUTLINED_FUNCTION_29_17();
  if (!lpta_loadp_setscan_r(v78, v79))
  {
    OUTLINED_FUNCTION_24_21();
    if (!test_string_s())
    {
      *(v0 + 136) = v1;
      v80 = OUTLINED_FUNCTION_23_21();
      if (!test_ptr(v80))
      {
        OUTLINED_FUNCTION_16_25();
        disambiguate_como();
        goto LABEL_3;
      }
    }
  }

LABEL_24:
  v81 = OUTLINED_FUNCTION_69_6();
  starttest(v81, v82);
  v83 = OUTLINED_FUNCTION_29_17();
  if (!lpta_loadp_setscan_r(v83, v84))
  {
    OUTLINED_FUNCTION_42_8();
    if (!test_string_s())
    {
      v101 = OUTLINED_FUNCTION_72_6();
      bspush_ca_scan(v101, v102);
LABEL_48:
      OUTLINED_FUNCTION_20_21();
      if (!test_string_s())
      {
LABEL_69:
        OUTLINED_FUNCTION_20_21();
        if (!test_string_s())
        {
          v119 = OUTLINED_FUNCTION_72_6();
          bspush_ca_scan(v119, v120);
LABEL_71:
          OUTLINED_FUNCTION_117_1();
          v121 = OUTLINED_FUNCTION_23_21();
          if (!test_ptr(v121))
          {
            OUTLINED_FUNCTION_16_25();
            disambiguate_desse_or_deste();
            goto LABEL_3;
          }
        }
      }

      goto LABEL_49;
    }
  }

LABEL_26:
  v85 = OUTLINED_FUNCTION_29_17();
  if (!lpta_loadp_setscan_r(v85, v86))
  {
    OUTLINED_FUNCTION_24_21();
    if (!test_string_s())
    {
      *(v0 + 136) = v1;
      v87 = OUTLINED_FUNCTION_23_21();
      if (!test_ptr(v87))
      {
        OUTLINED_FUNCTION_16_25();
        disambiguate_mesmo();
        goto LABEL_3;
      }
    }
  }

LABEL_29:
  v88 = OUTLINED_FUNCTION_72_6();
  starttest(v88, v89);
  v90 = OUTLINED_FUNCTION_29_17();
  if (!lpta_loadp_setscan_r(v90, v91))
  {
    OUTLINED_FUNCTION_73_6();
    if (!test_string_s())
    {
      v92 = OUTLINED_FUNCTION_72_6();
      bspush_ca_scan(v92, v93);
LABEL_32:
      OUTLINED_FUNCTION_117_1();
      v94 = OUTLINED_FUNCTION_23_21();
      if (!test_ptr(v94))
      {
        OUTLINED_FUNCTION_16_25();
        disambiguate_colher();
        goto LABEL_3;
      }

      goto LABEL_49;
    }
  }

LABEL_59:
  v110 = OUTLINED_FUNCTION_29_17();
  if (lpta_loadp_setscan_r(v110, v111) || (OUTLINED_FUNCTION_24_21(), test_string_s()) || (*(v0 + 136) = v1, v112 = OUTLINED_FUNCTION_23_21(), test_ptr(v112)))
  {
LABEL_62:
    v113 = OUTLINED_FUNCTION_29_17();
    if (lpta_loadp_setscan_r(v113, v114) || (OUTLINED_FUNCTION_24_21(), test_string_s()) || (*(v0 + 136) = v1, v115 = OUTLINED_FUNCTION_23_21(), test_ptr(v115)))
    {
LABEL_65:
      v116 = OUTLINED_FUNCTION_29_17();
      if (lpta_loadp_setscan_r(v116, v117) || (OUTLINED_FUNCTION_24_21(), test_string_s()) || (*(v0 + 136) = v1, v118 = OUTLINED_FUNCTION_23_21(), test_ptr(v118)))
      {
LABEL_68:
        OUTLINED_FUNCTION_16_25();
        is_nounadj();
      }

      else
      {
        OUTLINED_FUNCTION_16_25();
        disambiguate_sobre();
      }
    }

    else
    {
      OUTLINED_FUNCTION_16_25();
      disambiguate_segundo();
    }
  }

  else
  {
    OUTLINED_FUNCTION_16_25();
    disambiguate_muito();
  }

LABEL_3:
  vretproc(v0);
  v28 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_109_1();
}

uint64_t assign_inf_category()
{
  OUTLINED_FUNCTION_22_21();
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_18_23(v3, v4, v5, v6, v7, v8, v9, v10, v124, v128, v132, v136, v140, v144, v148, v152, v156, v160, v164, v168, v172, v176, v180, v184, v188, v192, v196, v200, v204, v208, v212, v216, v220, v223, v226);
  OUTLINED_FUNCTION_62_6(v11, v12, v13, v14, v15, v16, v17, v18, v125, v129, v133, v137, v141, v145, v149, v153, v157, v161, v165, v169, v173, v177, v181, v185, v189, v193, v197, v201, v205, v209, v213, v217, v221, v224, v227, v229, v231, v233, v235, v237);
  v19 = setjmp(v1);
  if (v19 || OUTLINED_FUNCTION_17_24(v19, v20, v21, v22, v23, v24, v25, v26, v126, v130, v134, v138, v142, v146, v150, v154, v158, v162, v166, v170, v174, v178, v182, v186, v190, v194, v198, v202, v206, v210, v214, v218, v222, v225, v228, *v230, v230[4], *v232, *&v232[4], v232[6], v234, SWORD2(v234), SBYTE6(v234), SHIBYTE(v234), v236, v238))
  {
    goto LABEL_3;
  }

  v29 = OUTLINED_FUNCTION_26_20();
  get_parm(v29, v30, v31, -6);
  OUTLINED_FUNCTION_70_6(v32, v33, v34, v35, v36, v37, v38, v39, v127, v131, v135, v139, v143, v147, v151, v155, v159, v163, v167, v171, v175, v179, v183, v187, v191, v195, v199, v203, v207, v211, v215, v219);
  v42 = OUTLINED_FUNCTION_115_1(v40, v41, &null_str_8);
  OUTLINED_FUNCTION_104_1(v42, v43, &unk_2806BBF44);
  OUTLINED_FUNCTION_127_0();
  v44 = OUTLINED_FUNCTION_41_8();
  if (!lpta_loadp_setscan_l(v44, v45))
  {
    v46 = OUTLINED_FUNCTION_14_26();
    if (testFldeq(v46, v47, v48, 30) || advance_tok(v0))
    {
      goto LABEL_34;
    }

    goto LABEL_31;
  }

  while (2)
  {
    v49 = OUTLINED_FUNCTION_38_11();
    starttest(v49, v50);
    v51 = OUTLINED_FUNCTION_35_13();
    if (!lpta_loadp_setscan_l(v51, v52))
    {
      v53 = OUTLINED_FUNCTION_32_15();
      bspush_ca_scan(v53, v54);
      v55 = OUTLINED_FUNCTION_4_29();
      if (testFldeq(v55, v56, v57, v58))
      {
        goto LABEL_34;
      }

LABEL_24:
      if (!advance_tok(v0))
      {
        v115 = 2054;
        goto LABEL_35;
      }

      goto LABEL_34;
    }

LABEL_26:
    v92 = OUTLINED_FUNCTION_46_8();
    starttest(v92, v93);
    v94 = OUTLINED_FUNCTION_35_13();
    if (!lpta_loadp_setscan_l(v94, v95))
    {
      v108 = OUTLINED_FUNCTION_5_29();
      if (!testFldeq(v108, v109, v110, v111))
      {
        OUTLINED_FUNCTION_34_14();
        bspush_ca_scan_boa();
        v112 = OUTLINED_FUNCTION_14_26();
        testFldeq(v112, v113, v114, 30);
      }

      goto LABEL_34;
    }

LABEL_27:
    v96 = OUTLINED_FUNCTION_52_7();
    starttest(v96, v97);
    v98 = OUTLINED_FUNCTION_35_13();
    if (lpta_loadp_setscan_l(v98, v99))
    {
LABEL_3:
      vretproc(v0);
      result = 94;
      goto LABEL_4;
    }

    v100 = OUTLINED_FUNCTION_7_29();
    if (testFldeq(v100, v101, v102, v103) || (v104 = OUTLINED_FUNCTION_8_29(), testFldeq(v104, v105, v106, v107)) || advance_tok(v0))
    {
LABEL_34:
      OUTLINED_FUNCTION_142_0();
LABEL_12:
      v59 = v0[13];
      if (v59)
      {
        v60 = OUTLINED_FUNCTION_87_4(v59);
        v62 = v61;
      }

      else
      {
        v60 = vback(v0, v69);
        v62 = 0;
      }

      switch(v60)
      {
        case 1:
          continue;
        case 2:
          goto LABEL_36;
        case 3:
          goto LABEL_26;
        case 4:
          v63 = OUTLINED_FUNCTION_101_1();
          bspush_ca_scan(v63, v64);
          v65 = OUTLINED_FUNCTION_15_26();
          v68 = testFldeq(v65, v66, v67, 4);
          v69 = v62;
          if (v68)
          {
            goto LABEL_12;
          }

          v70 = OUTLINED_FUNCTION_40_9();
          v73 = npush_fld(v70, v71, v72);
          v69 = v62;
          if (v73)
          {
            goto LABEL_12;
          }

          v74 = OUTLINED_FUNCTION_90_4();
          npush_i(v74);
          v82 = if_testgt(v0, v75, v76, v77, v78, v79, v80, v81);
          goto LABEL_23;
        case 5:
          goto LABEL_24;
        case 6:
          v89 = OUTLINED_FUNCTION_14_26();
          v82 = testFldeq(v89, v90, v91, 3);
LABEL_23:
          v69 = v62;
          if (!v82)
          {
            goto LABEL_24;
          }

          goto LABEL_12;
        case 7:
          goto LABEL_27;
        case 8:
          bspop_boa(v0);
          v83 = OUTLINED_FUNCTION_15_26();
          v87 = testFldeq(v83, v84, v85, v86);
          v69 = v62;
          if (v87)
          {
            goto LABEL_12;
          }

          v88 = advance_tok(v0);
          v69 = v62;
          if (v88)
          {
            goto LABEL_12;
          }

          v115 = 2054;
          goto LABEL_35;
        case 10:
          goto LABEL_40;
        case 11:
          goto LABEL_43;
        default:
          goto LABEL_3;
      }
    }

    break;
  }

LABEL_31:
  v115 = 2058;
LABEL_35:
  v116 = *(v0 + v115);
LABEL_36:
  OUTLINED_FUNCTION_121_0();
  if (!v117 || (v118 = OUTLINED_FUNCTION_16_25(), lpta_rpta_loadp(v118, v119, v120), OUTLINED_FUNCTION_0_33(), mark_s()) || (OUTLINED_FUNCTION_6_29(), mark_s()))
  {
LABEL_40:
    OUTLINED_FUNCTION_112_1();
    if (v117)
    {
      v121 = OUTLINED_FUNCTION_16_25();
      lpta_rpta_loadp(v121, v122, v123);
      OUTLINED_FUNCTION_0_33();
      mark_s();
    }
  }

LABEL_43:
  vretproc(v0);
  result = 0;
LABEL_4:
  v28 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t disambiguate_mais()
{
  OUTLINED_FUNCTION_22_21();
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_18_23(v3, v4, v5, v6, v7, v8, v9, v10, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v147, v151, v155, v159, v163, v167, v171, v175, v178, v181);
  OUTLINED_FUNCTION_62_6(v11, v12, v13, v14, v15, v16, v17, v18, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144, v148, v152, v156, v160, v164, v168, v172, v176, v179, v182, v184, v186, v188, v190, v192);
  v19 = setjmp(v1);
  if (v19 || OUTLINED_FUNCTION_17_24(v19, v20, v21, v22, v23, v24, v25, v26, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, v149, v153, v157, v161, v165, v169, v173, v177, v180, v183, *v185, v185[4], *v187, *&v187[4], v187[6], v189, SWORD2(v189), SBYTE6(v189), SHIBYTE(v189), v191, v193))
  {
    goto LABEL_3;
  }

  v29 = OUTLINED_FUNCTION_26_20();
  get_parm(v29, v30, v31, -6);
  OUTLINED_FUNCTION_70_6(v32, v33, v34, v35, v36, v37, v38, v39, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142, v146, v150, v154, v158, v162, v166, v170, v174);
  fence_29(v0, 0, &null_str_8);
  v40 = OUTLINED_FUNCTION_24_21();
  fence_29(v40, v41, v42);
  v43 = OUTLINED_FUNCTION_97_3();
  starttest(v43, v44);
  v45 = OUTLINED_FUNCTION_41_8();
  if (!lpta_loadp_setscan_l(v45, v46))
  {
    v49 = OUTLINED_FUNCTION_4_29();
    goto LABEL_9;
  }

  while (2)
  {
    v47 = OUTLINED_FUNCTION_89_4();
    if (!lpta_loadp_setscan_l(v47, v48))
    {
      break;
    }

LABEL_12:
    v54 = OUTLINED_FUNCTION_32_15();
    starttest(v54, v55);
    v56 = OUTLINED_FUNCTION_35_13();
    if (lpta_loadp_setscan_l(v56, v57))
    {
LABEL_27:
      OUTLINED_FUNCTION_43_8();
      if (!v72)
      {
LABEL_3:
        vretproc(v0);
        result = 94;
        goto LABEL_4;
      }

      goto LABEL_11;
    }

LABEL_13:
    v58 = OUTLINED_FUNCTION_31_16();
    if (test_synch(v58, v59, 1u, v60))
    {
      goto LABEL_14;
    }

    v65 = OUTLINED_FUNCTION_47_8();
    starttest(v65, v66);
    v67 = OUTLINED_FUNCTION_80_5();
    if (!lpta_loadp_setscan_r(v67, v68))
    {
      v69 = OUTLINED_FUNCTION_46_8();
      bspush_ca_scan(v69, v70);
      v49 = OUTLINED_FUNCTION_1_31();
LABEL_9:
      if (testFldeq(v49, v50, v51, v52))
      {
        goto LABEL_14;
      }

LABEL_10:
      if (advance_tok(v0))
      {
LABEL_14:
        v61 = *(v0 + 104);
        if (v61)
        {
          v62 = OUTLINED_FUNCTION_87_4(v61);
        }

        else
        {
          v63 = OUTLINED_FUNCTION_90_4();
          v62 = vback(v63, v64);
        }

        switch(v62)
        {
          case 1:
            continue;
          case 2:
          case 9:
            v71 = 0;
            goto LABEL_23;
          case 3:
            goto LABEL_12;
          case 4:
            goto LABEL_27;
          case 5:
            goto LABEL_13;
          case 6:
            goto LABEL_21;
          case 7:
            v49 = OUTLINED_FUNCTION_13_28();
            v52 = 11;
            goto LABEL_9;
          case 8:
            goto LABEL_10;
          case 11:
            v71 = 0;
            goto LABEL_32;
          case 12:
            goto LABEL_34;
          default:
            goto LABEL_3;
        }
      }

LABEL_11:
      v53 = 2054;
      goto LABEL_22;
    }

    break;
  }

LABEL_21:
  v53 = 2078;
LABEL_22:
  v71 = *(v0 + v53);
LABEL_23:
  OUTLINED_FUNCTION_121_0();
  if (!v72 || (v73 = OUTLINED_FUNCTION_16_25(), lpta_rpta_loadp(v73, v74, v75), OUTLINED_FUNCTION_0_33(), mark_s()))
  {
LABEL_32:
    if (*(v0 + 2078) == v71)
    {
      v76 = OUTLINED_FUNCTION_16_25();
      lpta_rpta_loadp(v76, v77, v78);
      OUTLINED_FUNCTION_0_33();
      mark_s();
    }
  }

LABEL_34:
  vretproc(v0);
  result = 0;
LABEL_4:
  v28 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t disambiguate_desse_or_deste()
{
  OUTLINED_FUNCTION_22_21();
  v178 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_45_8(v2, v3, v4, v5, v6, v7, v8, v9, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, SHIDWORD(v173), v174, v175, v176, v177);
  OUTLINED_FUNCTION_56_7();
  if (setjmp(v1))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_37_12();
  if (OUTLINED_FUNCTION_116_1(v10, v11, v12, v13, v14))
  {
    goto LABEL_3;
  }

  v17 = OUTLINED_FUNCTION_59_7();
  get_parm(v17, v18, v19, -6);
  OUTLINED_FUNCTION_53_7();
  v20 = OUTLINED_FUNCTION_76_6();
  push_ptr_init(v20, v21);
  OUTLINED_FUNCTION_131_0();
  v22 = 0;
  OUTLINED_FUNCTION_115_1(v23, v24, &null_str_8);
  v25 = OUTLINED_FUNCTION_57_7();
  fence_29(v25, v26, v27);
  OUTLINED_FUNCTION_125_0();
  v28 = OUTLINED_FUNCTION_66_6();
  if (!lpta_loadp_setscan_r(v28, v29))
  {
    v77 = OUTLINED_FUNCTION_78_6();
    bspush_ca_scan(v77, v78);
    v79 = OUTLINED_FUNCTION_79_6();
    testFldeq(v79, v80, 1, 9);
    OUTLINED_FUNCTION_144_0();
    if (!v82)
    {
LABEL_30:
      v22 = v81;
      goto LABEL_31;
    }

    goto LABEL_57;
  }

LABEL_6:
  v30 = OUTLINED_FUNCTION_34_14();
  starttest(v30, v31);
  OUTLINED_FUNCTION_25_20();
  if (!followed_by_hyphen())
  {
    v32 = OUTLINED_FUNCTION_54_7();
    if (!lpta_loadp_setscan_r(v32, v33))
    {
      v69 = OUTLINED_FUNCTION_52_7();
      bspush_ca_scan(v69, v70);
      v71 = OUTLINED_FUNCTION_9_29();
      v75 = testFldeq(v71, v72, v73, v74);
      v76 = v22;
      if (!v75)
      {
        goto LABEL_55;
      }

      goto LABEL_57;
    }
  }

LABEL_8:
  v34 = v22;
  v35 = OUTLINED_FUNCTION_60_7();
  starttest(v35, v36);
  v37 = OUTLINED_FUNCTION_49_7();
  if (lpta_loadp_setscan_l(v37, v38))
  {
LABEL_9:
    OUTLINED_FUNCTION_43_8();
    if (!v39)
    {
LABEL_3:
      vretproc(v0);
      result = 94;
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v41 = OUTLINED_FUNCTION_14_26();
  if (testFldeq(v41, v42, v43, 11) || (v44 = OUTLINED_FUNCTION_9_29(), testFldeq(v44, v45, v46, v47)) || advance_tok(v0))
  {
LABEL_56:
    v22 = v34;
    goto LABEL_57;
  }

  v48 = OUTLINED_FUNCTION_64_6();
  starttest(v48, v49);
  v50 = OUTLINED_FUNCTION_49_7();
  if (!lpta_loadp_setscan_l(v50, v51))
  {
    v83 = OUTLINED_FUNCTION_6_29();
    if (testFldeq(v83, v84, v85, v86))
    {
      goto LABEL_56;
    }

    if (advance_tok(v0))
    {
      goto LABEL_56;
    }

    v87 = OUTLINED_FUNCTION_48_8();
    if (lpta_loadp_setscan_r(v87, v88))
    {
      goto LABEL_56;
    }

LABEL_79:
    OUTLINED_FUNCTION_24_21();
    if (!test_string_s())
    {
      *(v0 + 136) = v22;
      v148 = OUTLINED_FUNCTION_23_21();
      v22 = v34;
      if (test_ptr(v148))
      {
        goto LABEL_57;
      }

      goto LABEL_32;
    }

    goto LABEL_56;
  }

LABEL_16:
  v52 = OUTLINED_FUNCTION_69_6();
  starttest(v52, v53);
  v54 = OUTLINED_FUNCTION_48_8();
  v34 = v22;
  if (!lpta_loadp_setscan_l(v54, v55))
  {
LABEL_77:
    v143 = OUTLINED_FUNCTION_82_5();
    savescptr(v143, v144, v145);
    OUTLINED_FUNCTION_58_7();
    if (test_string_s())
    {
      goto LABEL_56;
    }

    v146 = OUTLINED_FUNCTION_29_17();
    if (lpta_loadp_setscan_r(v146, v147))
    {
      goto LABEL_56;
    }

    goto LABEL_79;
  }

LABEL_17:
  v56 = OUTLINED_FUNCTION_72_6();
  starttest(v56, v57);
  v58 = OUTLINED_FUNCTION_48_8();
  v34 = v22;
  if (!lpta_loadp_setscan_l(v58, v59))
  {
LABEL_72:
    v138 = OUTLINED_FUNCTION_82_5();
    savescptr(v138, v139, v140);
    OUTLINED_FUNCTION_42_8();
    if (test_string_s())
    {
      goto LABEL_56;
    }

    v141 = OUTLINED_FUNCTION_29_17();
    if (lpta_loadp_setscan_r(v141, v142))
    {
      goto LABEL_56;
    }

    goto LABEL_79;
  }

LABEL_18:
  v60 = OUTLINED_FUNCTION_72_6();
  starttest(v60, v61);
  v62 = OUTLINED_FUNCTION_48_8();
  if (!lpta_loadp_setscan_l(v62, v63))
  {
LABEL_19:
    v34 = v22;
    v64 = OUTLINED_FUNCTION_82_5();
    savescptr(v64, v65, v66);
    OUTLINED_FUNCTION_42_8();
    if (test_string_s())
    {
      goto LABEL_56;
    }

    v67 = OUTLINED_FUNCTION_29_17();
    if (lpta_loadp_setscan_r(v67, v68))
    {
      goto LABEL_56;
    }

    goto LABEL_79;
  }

LABEL_11:
  for (i = 2070; ; i = 2058)
  {
    v22 = *(v0 + i);
LABEL_34:
    OUTLINED_FUNCTION_111_1();
    if (v39)
    {
      v89 = OUTLINED_FUNCTION_25_20();
      lpta_rpta_loadp(v89, v90, v91);
      OUTLINED_FUNCTION_0_33();
      if (!mark_s())
      {
        OUTLINED_FUNCTION_3_30();
        if (!mark_s())
        {
          break;
        }
      }
    }

LABEL_38:
    OUTLINED_FUNCTION_112_1();
    if (!v39)
    {
      goto LABEL_52;
    }

    v92 = OUTLINED_FUNCTION_25_20();
    lpta_rpta_loadp(v92, v93, v94);
    OUTLINED_FUNCTION_0_33();
    if (mark_s())
    {
      goto LABEL_52;
    }

    OUTLINED_FUNCTION_3_30();
    if (mark_s())
    {
      goto LABEL_52;
    }

    v95 = OUTLINED_FUNCTION_72_6();
    starttest_l(v95, v96);
    v97 = OUTLINED_FUNCTION_101_1();
    move_i(v97, v98, 1);
    OUTLINED_FUNCTION_86_4();
    v99 = mark_word_stress();
    v100 = v22;
    if (!v99)
    {
LABEL_43:
      v101 = v100;
      v102 = OUTLINED_FUNCTION_72_6();
      starttest(v102, v103);
      v104 = OUTLINED_FUNCTION_48_8();
      if (lpta_loadp_setscan_r(v104, v105) || (OUTLINED_FUNCTION_24_21(), test_string_s()) || (*(v0 + 136) = v22, v106 = OUTLINED_FUNCTION_23_21(), test_ptr(v106)))
      {
        v22 = v101;
      }

      else
      {
        v115 = OUTLINED_FUNCTION_25_20();
        lpta_rpta_loadp(v115, v116, v117);
        OUTLINED_FUNCTION_10_29();
        v22 = v101;
        if (!mark_s())
        {
          goto LABEL_52;
        }
      }

LABEL_47:
      v107 = OUTLINED_FUNCTION_25_20();
      lpta_rpta_loadp(v107, v108, v109);
      OUTLINED_FUNCTION_6_29();
      if (!mark_s())
      {
        goto LABEL_52;
      }
    }

    do
    {
LABEL_57:
      while (2)
      {
        v118 = *(v0 + 104);
        if (v118)
        {
          v119 = OUTLINED_FUNCTION_87_4(v118);
        }

        else
        {
          v120 = OUTLINED_FUNCTION_90_4();
          v119 = vback(v120, v121);
        }

        v81 = v22;
        v76 = v22;
        switch(v119)
        {
          case 1:
            goto LABEL_6;
          case 2:
            v122 = OUTLINED_FUNCTION_32_15();
            bspush_ca_scan(v122, v123);
            v124 = OUTLINED_FUNCTION_13_28();
            v127 = 10;
            goto LABEL_66;
          case 3:
            goto LABEL_30;
          case 4:
            v132 = OUTLINED_FUNCTION_31_16();
            bspush_ca_scan(v132, v133);
            v124 = OUTLINED_FUNCTION_13_28();
            v127 = 6;
            goto LABEL_66;
          case 5:
            v134 = OUTLINED_FUNCTION_47_8();
            bspush_ca_scan(v134, v135);
            v124 = OUTLINED_FUNCTION_13_28();
            v127 = 5;
            goto LABEL_66;
          case 6:
            v124 = OUTLINED_FUNCTION_4_29();
LABEL_66:
            if (testFldeq(v124, v125, v126, v127))
            {
              continue;
            }

            v81 = v22;
            goto LABEL_30;
          case 7:
          case 14:
            goto LABEL_34;
          case 8:
            goto LABEL_8;
          case 9:
            v136 = OUTLINED_FUNCTION_51_7();
            bspush_ca_scan(v136, v137);
            v128 = OUTLINED_FUNCTION_15_26();
            v131 = 4;
            goto LABEL_69;
          case 10:
            goto LABEL_55;
          case 11:
            v128 = OUTLINED_FUNCTION_14_26();
            v131 = 29;
LABEL_69:
            if (testFldeq(v128, v129, v130, v131))
            {
              continue;
            }

            v76 = v22;
            break;
          case 12:
            goto LABEL_9;
          case 13:
            goto LABEL_16;
          case 15:
            goto LABEL_17;
          case 16:
            v34 = v22;
            goto LABEL_77;
          case 17:
            goto LABEL_18;
          case 18:
            v34 = v22;
            goto LABEL_72;
          case 19:
            goto LABEL_11;
          case 20:
            goto LABEL_19;
          case 22:
            goto LABEL_38;
          case 23:
            goto LABEL_50;
          case 24:
          case 25:
          case 28:
            goto LABEL_52;
          case 26:
            v100 = v22;
            goto LABEL_43;
          case 27:
            goto LABEL_47;
          default:
            goto LABEL_3;
        }

        break;
      }

LABEL_55:
      v22 = v76;
LABEL_31:
      ;
    }

    while (advance_tok(v0));
LABEL_32:
    ;
  }

  v110 = OUTLINED_FUNCTION_72_6();
  starttest_l(v110, v111);
  OUTLINED_FUNCTION_25_20();
  pro_vs_det();
LABEL_50:
  v112 = OUTLINED_FUNCTION_25_20();
  lpta_rpta_loadp(v112, v113, v114);
  OUTLINED_FUNCTION_2_31();
  if (mark_s())
  {
    goto LABEL_57;
  }

  mark_word_stress();
LABEL_52:
  vretproc(v0);
  result = 0;
LABEL_4:
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t disambiguate_colher()
{
  OUTLINED_FUNCTION_22_21();
  v148 = *MEMORY[0x277D85DE8];
  v144[0] = 0;
  v144[1] = 0;
  v143[0] = 0;
  v143[1] = 0;
  v141 = 0u;
  v142 = 0u;
  v140[0] = 0;
  v140[1] = 0;
  v138 = 0;
  v139 = 0;
  OUTLINED_FUNCTION_67_6(v3, v4, v5, v6, v7, v8, v9, v10, v112, v113[0], v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137);
  OUTLINED_FUNCTION_56_7();
  v11 = setjmp(v2);
  if (v11)
  {
    goto LABEL_3;
  }

  v12 = OUTLINED_FUNCTION_116_1(v11, v113, v147, v146, v145);
  if (v12)
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_94_3(v12, v144);
  OUTLINED_FUNCTION_53_7();
  v142 = 0uLL;
  LODWORD(v141) = -65534;
  push_ptr_init(v0, v140);
  v15 = OUTLINED_FUNCTION_107_1();
  push_ptr_init(v15, v16);
  v17 = OUTLINED_FUNCTION_96_3();
  v19 = push_ptr_init(v17, v18);
  OUTLINED_FUNCTION_115_1(v19, v20, &null_str_8);
  v21 = OUTLINED_FUNCTION_57_7();
  fence_29(v21, v22, v23);
  OUTLINED_FUNCTION_125_0();
  v24 = OUTLINED_FUNCTION_81_5();
  v26 = lpta_loadp_setscan_l(v24, v25);
  v27 = 0;
  if (!v26)
  {
    v28 = OUTLINED_FUNCTION_78_6();
    bspush_ca_scan(v28, v29);
    OUTLINED_FUNCTION_73_6();
    test_string_s();
    OUTLINED_FUNCTION_144_0();
    if (v31)
    {
      goto LABEL_30;
    }

LABEL_7:
    v32 = v30;
    OUTLINED_FUNCTION_102_1();
    savescptr(v0, v33, v140);
    v27 = v32;
  }

  while (2)
  {
    v34 = v27;
    lpta_loadpn(v0, v140);
    rpta_loadpn(v0, v143);
    if (compare_ptas(v0) || testeq(v0))
    {
      v35 = v34;
LABEL_11:
      v34 = v35;
    }

    npush_s(v0);
    WORD1(v141) = 4;
    npop(v0, &v141);
    v36 = v34;
LABEL_13:
    v37 = OUTLINED_FUNCTION_31_16();
    starttest(v37, v38);
    v39 = OUTLINED_FUNCTION_80_5();
    if (lpta_loadp_setscan_l(v39, v40))
    {
      v41 = v36;
LABEL_15:
      v1 = v41;
      v42 = OUTLINED_FUNCTION_46_8();
      starttest(v42, v43);
      v44 = OUTLINED_FUNCTION_80_5();
      if (lpta_loadp_setscan_l(v44, v45))
      {
        v46 = v1;
LABEL_17:
        v36 = v46;
        v47 = OUTLINED_FUNCTION_34_14();
        starttest(v47, v48);
        v49 = OUTLINED_FUNCTION_80_5();
        if (!lpta_loadp_setscan_r(v49, v50))
        {
          v51 = OUTLINED_FUNCTION_1_31();
          goto LABEL_20;
        }

LABEL_34:
        if (lpta_loadp_setscan_l(v0, v144))
        {
LABEL_35:
          v75 = 2058;
          if (*(v0 + 3078) != *(v0 + 3074))
          {
LABEL_3:
            vretproc(v0);
            result = 94;
            goto LABEL_4;
          }

          goto LABEL_38;
        }
      }

      else
      {
        v71 = OUTLINED_FUNCTION_8_29();
        if (testFldeq(v71, v72, v73, v74) || advance_tok(v0))
        {
          goto LABEL_30;
        }
      }

      v75 = 2058;
      goto LABEL_38;
    }

    v51 = OUTLINED_FUNCTION_4_29();
LABEL_20:
    if (testFldeq(v51, v52, v53, v54) || (v55 = OUTLINED_FUNCTION_61_7(), npush_fld(v55, v56, v57)) || (WORD1(v141) = 4, npush_v(v0, &v141, v58, v59, v60, v61, v62, v63), if_testeq(v0, v64, v65, v66, v67, v68, v69, v70)))
    {
      v1 = v36;
      goto LABEL_30;
    }

    v1 = v36;
    if (advance_tok(v0))
    {
      goto LABEL_30;
    }

    v75 = 2054;
LABEL_38:
    v81 = *(v0 + v75);
LABEL_39:
    v83 = v81;
    v84 = OUTLINED_FUNCTION_51_7();
    starttest(v84, v85);
    if (!lpta_loadp_setscan_r(v0, v144) && !advance_tok(v0) && !advance_tok(v0))
    {
      v86 = advance_tok(v0);
      v82 = v83;
      if (!v86)
      {
LABEL_43:
        v1 = v82;
        v87 = OUTLINED_FUNCTION_145_0();
        savescptr(v87, v88, v89);
        if (!advance_tok(v0))
        {
LABEL_44:
          v90 = OUTLINED_FUNCTION_106_1();
          savescptr(v90, v91, v92);
          break;
        }

LABEL_30:
        v76 = *(v0 + 104);
        if (v76)
        {
          v77 = OUTLINED_FUNCTION_87_4(v76);
        }

        else
        {
          v78 = OUTLINED_FUNCTION_90_4();
          v77 = vback(v78, v79);
        }

        v80 = v77 - 1;
        v30 = v1;
        v27 = v1;
        v35 = v1;
        v36 = v1;
        v41 = v1;
        v46 = v1;
        v81 = v1;
        v82 = v1;
        switch(v80)
        {
          case 0:
            continue;
          case 1:
            goto LABEL_7;
          case 2:
            goto LABEL_11;
          case 3:
            goto LABEL_13;
          case 4:
            goto LABEL_15;
          case 5:
            goto LABEL_39;
          case 6:
            goto LABEL_17;
          case 7:
            goto LABEL_34;
          case 8:
            goto LABEL_35;
          case 10:
            goto LABEL_45;
          case 11:
            goto LABEL_43;
          case 12:
            goto LABEL_44;
          case 13:
            goto LABEL_48;
          case 14:
          case 15:
            goto LABEL_54;
          default:
            goto LABEL_3;
        }
      }
    }

    break;
  }

LABEL_45:
  OUTLINED_FUNCTION_112_1();
  if (v93 && (v94 = OUTLINED_FUNCTION_126_0(), lpta_rpta_loadp(v94, v95, v96), OUTLINED_FUNCTION_3_30(), !mark_s()))
  {
    OUTLINED_FUNCTION_126_0();
    assign_inf_category();
  }

  else
  {
LABEL_48:
    OUTLINED_FUNCTION_121_0();
    if (v93)
    {
      v97 = OUTLINED_FUNCTION_126_0();
      lpta_rpta_loadp(v97, v98, v99);
      OUTLINED_FUNCTION_0_33();
      if (!mark_s())
      {
        WORD1(v141) = 4;
        v100 = OUTLINED_FUNCTION_71_6();
        if (!mark_v(v100, v101, v102, v103))
        {
          v104 = OUTLINED_FUNCTION_106_1();
          lpta_rpta_loadp(v104, v105, v106);
          v107 = OUTLINED_FUNCTION_44_8();
          insert_2pt_s(v107, v108, v109, v110, v111);
        }
      }
    }
  }

LABEL_54:
  vretproc(v0);
  result = 0;
LABEL_4:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t disambiguate_muito()
{
  OUTLINED_FUNCTION_22_21();
  v117 = *MEMORY[0x277D85DE8];
  v106 = 0;
  v107 = 0;
  OUTLINED_FUNCTION_27_18(v2, v3, v4, v5, v6, v7, v8, v9, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105);
  OUTLINED_FUNCTION_56_7();
  v10 = setjmp(v1);
  if (v10 || OUTLINED_FUNCTION_39_10(v10, &v79, v11, v12, v13, v14, v15, v16, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116))
  {
    goto LABEL_3;
  }

  v19 = OUTLINED_FUNCTION_26_20();
  get_parm(v19, v20, v21, -6);
  v22 = OUTLINED_FUNCTION_76_6();
  OUTLINED_FUNCTION_114_1(v22, v23);
  v24 = OUTLINED_FUNCTION_89_4();
  push_ptr_init(v24, v25);
  fence_29(v0, 0, &null_str_8);
  v26 = OUTLINED_FUNCTION_24_21();
  fence_29(v26, v27, v28);
  v29 = OUTLINED_FUNCTION_97_3();
  starttest(v29, v30);
  v31 = OUTLINED_FUNCTION_41_8();
  if (!lpta_loadp_setscan_l(v31, v32))
  {
    v33 = OUTLINED_FUNCTION_14_26();
    v36 = 18;
    goto LABEL_7;
  }

  while (2)
  {
    v48 = OUTLINED_FUNCTION_38_11();
    starttest(v48, v49);
    v50 = OUTLINED_FUNCTION_54_7();
    if (lpta_loadp_setscan_l(v50, v51))
    {
LABEL_21:
      v52 = OUTLINED_FUNCTION_47_8();
      starttest(v52, v53);
      v54 = OUTLINED_FUNCTION_54_7();
      if (lpta_loadp_setscan_l(v54, v55))
      {
LABEL_3:
        vretproc(v0);
        result = 94;
        goto LABEL_4;
      }

LABEL_22:
      OUTLINED_FUNCTION_99_2();
      v56 = OUTLINED_FUNCTION_74_6();
      savescptr(v56, v57, v58);
LABEL_23:
      v59 = OUTLINED_FUNCTION_34_14();
      if (test_synch(v59, v60, 1u, v61))
      {
        goto LABEL_16;
      }

      v62 = OUTLINED_FUNCTION_80_5();
      if (lpta_loadp_setscan_r(v62, v63) || advance_tok(v0))
      {
        goto LABEL_16;
      }

      v33 = OUTLINED_FUNCTION_1_31();
LABEL_7:
      if (!testFldeq(v33, v34, v35, v36) && !advance_tok(v0))
      {
        v37 = 2054;
        goto LABEL_10;
      }

LABEL_16:
      v44 = *(v0 + 104);
      if (v44)
      {
        v45 = OUTLINED_FUNCTION_87_4(v44);
      }

      else
      {
        v46 = OUTLINED_FUNCTION_90_4();
        v45 = vback(v46, v47);
      }

      v39 = 0;
      v38 = 0;
      switch(v45)
      {
        case 1:
          continue;
        case 2:
          goto LABEL_11;
        case 3:
          goto LABEL_21;
        case 4:
          goto LABEL_27;
        case 5:
          goto LABEL_31;
        case 7:
          goto LABEL_22;
        case 8:
          goto LABEL_23;
        case 9:
          goto LABEL_33;
        case 10:
          goto LABEL_35;
        default:
          goto LABEL_3;
      }
    }

    break;
  }

LABEL_27:
  v64 = OUTLINED_FUNCTION_74_6();
  savescptr(v64, v65, v66);
  v67 = OUTLINED_FUNCTION_7_29();
  if (testFldeq(v67, v68, v69, v70))
  {
    goto LABEL_16;
  }

  if (advance_tok(v0))
  {
    goto LABEL_16;
  }

  v71 = OUTLINED_FUNCTION_80_5();
  if (lpta_loadp_setscan_r(v71, v72) || advance_tok(v0))
  {
    goto LABEL_16;
  }

LABEL_31:
  v73 = OUTLINED_FUNCTION_31_16();
  if (test_synch(v73, v74, 1u, v75))
  {
    goto LABEL_16;
  }

  v37 = 2078;
LABEL_10:
  v38 = *(v0 + v37);
LABEL_11:
  v39 = v38;
  OUTLINED_FUNCTION_121_0();
  if (!v40 || (v41 = OUTLINED_FUNCTION_19_22(), lpta_rpta_loadp(v41, v42, v43), OUTLINED_FUNCTION_0_33(), mark_s()) || (OUTLINED_FUNCTION_6_29(), mark_s()))
  {
LABEL_33:
    if (*(v0 + 2078) == v39)
    {
      v76 = OUTLINED_FUNCTION_19_22();
      lpta_rpta_loadp(v76, v77, v78);
      OUTLINED_FUNCTION_0_33();
      mark_s();
    }
  }

LABEL_35:
  vretproc(v0);
  result = 0;
LABEL_4:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t disambiguate_segundo()
{
  OUTLINED_FUNCTION_22_21();
  v267 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_27_18(v2, v3, v4, v5, v6, v7, v8, v9, v152, v156, v160, v164, v168, v172, v176, v180, v184, v188, v192, v196, v200, v204, v208, v212, v216, v220, v224, v228, v232, v236, v240, v244, v248, v251, v254);
  OUTLINED_FUNCTION_62_6(v10, v11, v12, v13, v14, v15, v16, v17, v153, v157, v161, v165, v169, v173, v177, v181, v185, v189, v193, v197, v201, v205, v209, v213, v217, v221, v225, v229, v233, v237, v241, v245, v249, v252, v255, v257, v259, v261, v263, v265);
  v18 = setjmp(v1);
  if (v18 || OUTLINED_FUNCTION_17_24(v18, v19, v20, v21, v22, v23, v24, v25, v154, v158, v162, v166, v170, v174, v178, v182, v186, v190, v194, v198, v202, v206, v210, v214, v218, v222, v226, v230, v234, v238, v242, v246, v250, v253, v256, *v258, v258[4], *v260, *&v260[4], v260[6], v262, SWORD2(v262), SBYTE6(v262), SHIBYTE(v262), v264, v266))
  {
    goto LABEL_3;
  }

  v28 = OUTLINED_FUNCTION_26_20();
  get_parm(v28, v29, v30, -6);
  OUTLINED_FUNCTION_70_6(v31, v32, v33, v34, v35, v36, v37, v38, v155, v159, v163, v167, v171, v175, v179, v183, v187, v191, v195, v199, v203, v207, v211, v215, v219, v223, v227, v231, v235, v239, v243, v247);
  v39 = 0;
  v42 = OUTLINED_FUNCTION_115_1(v40, v41, &null_str_8);
  OUTLINED_FUNCTION_104_1(v42, v43, &unk_2806BBF44);
  OUTLINED_FUNCTION_127_0();
  v44 = OUTLINED_FUNCTION_77_6();
  lpta_loadpn(v44, v45);
  rpta_loadpn(v0, v0 + 177);
  if (!compare_ptas(v0))
  {
    if (!testeq(v0))
    {
      OUTLINED_FUNCTION_78_6();
      bspush_ca_boa();
      v46 = OUTLINED_FUNCTION_76_6();
      if (lpta_loadp_setscan_r(v46, v47))
      {
        v48 = 0;
      }

      else
      {
        v49 = advance_tok(v0);
        v50 = 0;
        v48 = 0;
        if (!v49)
        {
LABEL_11:
          v51 = OUTLINED_FUNCTION_38_11();
          if (test_synch(v51, v52, 1u, v53))
          {
            v48 = v50;
          }

          else
          {
            v48 = 1;
          }
        }
      }

      goto LABEL_31;
    }

    v39 = 0;
  }

LABEL_15:
  v54 = OUTLINED_FUNCTION_31_16();
  starttest(v54, v55);
  v56 = OUTLINED_FUNCTION_35_13();
  if (!lpta_loadp_setscan_l(v56, v57))
  {
    v58 = OUTLINED_FUNCTION_47_8();
    bspush_ca_scan(v58, v59);
    v60 = OUTLINED_FUNCTION_14_26();
    v63 = testFldeq(v60, v61, v62, 29);
    v64 = v39;
    v48 = v39;
    if (!v63)
    {
LABEL_17:
      v65 = v64;
      goto LABEL_18;
    }

    do
    {
      do
      {
LABEL_31:
        while (2)
        {
          v101 = v0[13];
          if (v101)
          {
            v102 = OUTLINED_FUNCTION_87_4(v101);
            v50 = v103;
          }

          else
          {
            v102 = vback(v0, v48);
            v50 = 0;
          }

          v64 = v50;
          v93 = v50;
          v100 = v50;
          v85 = v50;
          switch(v102)
          {
            case 1:
              v39 = v50;
              goto LABEL_15;
            case 2:
              bspop_boa(v0);
              goto LABEL_58;
            case 3:
              goto LABEL_11;
            case 4:
              goto LABEL_60;
            case 5:
              v39 = v50;
              goto LABEL_21;
            case 6:
              v104 = OUTLINED_FUNCTION_4_29();
              v108 = testFldeq(v104, v105, v106, v107);
              v64 = v50;
              v48 = v50;
              if (!v108)
              {
                goto LABEL_17;
              }

              continue;
            case 7:
              goto LABEL_17;
            case 8:
              v39 = v50;
              goto LABEL_22;
            case 9:
              v113 = OUTLINED_FUNCTION_14_26();
              v116 = testFldeq(v113, v114, v115, 38);
              v93 = v50;
              v48 = v50;
              if (!v116)
              {
                goto LABEL_27;
              }

              continue;
            case 10:
              goto LABEL_27;
            case 11:
              v39 = v50;
              goto LABEL_23;
            case 12:
              v117 = OUTLINED_FUNCTION_101_1();
              bspush_ca_scan(v117, v118);
              v119 = OUTLINED_FUNCTION_4_29();
              v123 = testFldeq(v119, v120, v121, v122);
              v48 = v50;
              if (!v123)
              {
                OUTLINED_FUNCTION_81_5();
                bspush_ca_scan_boa();
                v124 = OUTLINED_FUNCTION_5_29();
                if (testFldeq(v124, v125, v126, v127))
                {
                  v48 = v50;
                }

                else
                {
                  v48 = 1;
                }
              }

              continue;
            case 13:
              goto LABEL_54;
            case 14:
              v132 = OUTLINED_FUNCTION_77_6();
              bspush_ca_scan(v132, v133);
              v109 = OUTLINED_FUNCTION_14_26();
              v112 = 37;
              break;
            case 15:
              bspop_boa(v0);
              v100 = v50;
              goto LABEL_54;
            case 16:
              v134 = OUTLINED_FUNCTION_91_3();
              bspush_ca_scan(v134, v135);
              v109 = OUTLINED_FUNCTION_14_26();
              v112 = 3;
              break;
            case 17:
              v109 = OUTLINED_FUNCTION_14_26();
              v112 = 4;
              break;
            case 18:
              goto LABEL_50;
            case 19:
              v128 = OUTLINED_FUNCTION_14_26();
              v131 = testFldeq(v128, v129, v130, 10);
              v85 = v50;
              v48 = v50;
              if (!v131)
              {
                goto LABEL_25;
              }

              continue;
            case 20:
              goto LABEL_25;
            case 22:
              goto LABEL_65;
            case 23:
            case 24:
              goto LABEL_72;
            default:
              goto LABEL_3;
          }

          break;
        }

        v136 = testFldeq(v109, v110, v111, v112);
        v100 = v50;
        v48 = v50;
      }

      while (v136);
LABEL_54:
      v86 = v100;
LABEL_55:
      v139 = advance_tok(v0);
      v48 = v86;
    }

    while (v139);
LABEL_58:
    v138 = 2074;
    goto LABEL_59;
  }

LABEL_21:
  v67 = OUTLINED_FUNCTION_34_14();
  starttest(v67, v68);
  v69 = OUTLINED_FUNCTION_35_13();
  if (lpta_loadp_setscan_r(v69, v70))
  {
LABEL_22:
    v71 = OUTLINED_FUNCTION_51_7();
    starttest(v71, v72);
    v73 = OUTLINED_FUNCTION_80_5();
    if (lpta_loadp_setscan_r(v73, v74))
    {
LABEL_23:
      v75 = OUTLINED_FUNCTION_72_6();
      starttest(v75, v76);
      v77 = OUTLINED_FUNCTION_80_5();
      if (lpta_loadp_setscan_r(v77, v78))
      {
LABEL_50:
        OUTLINED_FUNCTION_43_8();
        if (!v137)
        {
LABEL_3:
          vretproc(v0);
          result = 94;
          goto LABEL_4;
        }

        goto LABEL_52;
      }

      v79 = OUTLINED_FUNCTION_72_6();
      bspush_ca_scan(v79, v80);
      v81 = OUTLINED_FUNCTION_14_26();
      v84 = testFldeq(v81, v82, v83, 11);
      v48 = v39;
      v85 = v39;
      if (!v84)
      {
LABEL_25:
        v86 = v85;
        goto LABEL_55;
      }
    }

    else
    {
      v94 = OUTLINED_FUNCTION_60_7();
      bspush_ca_scan(v94, v95);
      v96 = OUTLINED_FUNCTION_14_26();
      v99 = testFldeq(v96, v97, v98, 29);
      v48 = v39;
      v100 = v39;
      if (!v99)
      {
        goto LABEL_54;
      }
    }

    goto LABEL_31;
  }

  v87 = OUTLINED_FUNCTION_52_7();
  bspush_ca_scan(v87, v88);
  v89 = OUTLINED_FUNCTION_14_26();
  v92 = testFldeq(v89, v90, v91, 37);
  v93 = v39;
  v48 = v39;
  if (v92)
  {
    goto LABEL_31;
  }

LABEL_27:
  v65 = v93;
LABEL_18:
  v66 = advance_tok(v0);
  v48 = v65;
  if (v66)
  {
    goto LABEL_31;
  }

LABEL_52:
  v138 = 2054;
LABEL_59:
  v140 = *(v0 + v138);
LABEL_60:
  OUTLINED_FUNCTION_121_0();
  if (!v137 || (v141 = OUTLINED_FUNCTION_16_25(), lpta_rpta_loadp(v141, v142, v143), OUTLINED_FUNCTION_0_33(), mark_s()) || (OUTLINED_FUNCTION_6_29(), mark_s()) || (OUTLINED_FUNCTION_2_31(), mark_s()))
  {
LABEL_65:
    OUTLINED_FUNCTION_128_0();
    if (v137)
    {
      v144 = OUTLINED_FUNCTION_16_25();
      lpta_rpta_loadp(v144, v145, v146);
      OUTLINED_FUNCTION_0_33();
      if (!mark_s())
      {
        OUTLINED_FUNCTION_40_9();
        if (!mark_i())
        {
          v147 = OUTLINED_FUNCTION_76_6();
          lpta_loadpn(v147, v148);
          rpta_loadpn(v0, v0 + 177);
          if (!compare_ptas(v0) && !testeq(v0))
          {
            v149 = OUTLINED_FUNCTION_16_25();
            lpta_rpta_loadp(v149, v150, v151);
            OUTLINED_FUNCTION_2_31();
            mark_s();
          }
        }
      }
    }
  }

LABEL_72:
  vretproc(v0);
  result = 0;
LABEL_4:
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t disambiguate_sobre()
{
  OUTLINED_FUNCTION_22_21();
  v148 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_103_1();
  OUTLINED_FUNCTION_27_18(v3, v4, v5, v6, v7, v8, v9, v10, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146);
  OUTLINED_FUNCTION_56_7();
  if (setjmp(v2) || (OUTLINED_FUNCTION_50_7(), OUTLINED_FUNCTION_116_1(v11, v12, v13, v14, v15)))
  {
LABEL_3:
    vretproc(v0);
    result = 94;
    goto LABEL_4;
  }

  v18 = OUTLINED_FUNCTION_26_20();
  get_parm(v18, v19, v20, -6);
  OUTLINED_FUNCTION_92_3(v21, v147);
  v22 = OUTLINED_FUNCTION_76_6();
  push_ptr_init(v22, v23);
  v24 = OUTLINED_FUNCTION_89_4();
  v26 = push_ptr_init(v24, v25);
  v27 = 0;
  v29 = OUTLINED_FUNCTION_115_1(v26, v28, &null_str_8);
  OUTLINED_FUNCTION_104_1(v29, v30, &unk_2806BBF44);
  OUTLINED_FUNCTION_127_0();
  v31 = OUTLINED_FUNCTION_41_8();
  if (lpta_loadp_setscan_l(v31, v32))
  {
LABEL_6:
    v33 = OUTLINED_FUNCTION_38_11();
    starttest(v33, v34);
    OUTLINED_FUNCTION_25_20();
    if (!followed_by_hyphen())
    {
      v35 = OUTLINED_FUNCTION_54_7();
      if (!lpta_loadp_setscan_r(v35, v36))
      {
        v68 = OUTLINED_FUNCTION_32_15();
        bspush_ca_scan(v68, v69);
        v70 = OUTLINED_FUNCTION_9_29();
        testFldeq(v70, v71, v72, v73);
        OUTLINED_FUNCTION_143_0();
        if (!v75)
        {
          goto LABEL_29;
        }

        goto LABEL_66;
      }
    }

LABEL_8:
    v37 = OUTLINED_FUNCTION_46_8();
    starttest(v37, v38);
    v39 = OUTLINED_FUNCTION_54_7();
    if (lpta_loadp_setscan_r(v39, v40))
    {
LABEL_9:
      v41 = OUTLINED_FUNCTION_34_14();
      starttest(v41, v42);
      v43 = OUTLINED_FUNCTION_49_7();
      if (lpta_loadp_setscan_l(v43, v44))
      {
LABEL_10:
        OUTLINED_FUNCTION_43_8();
        if (v45)
        {
          i = 2074;
          goto LABEL_31;
        }

        goto LABEL_3;
      }

      v47 = OUTLINED_FUNCTION_52_7();
      bspush_ca_scan(v47, v48);
      v49 = v27;
LABEL_14:
      v27 = v49;
      v50 = OUTLINED_FUNCTION_13_28();
      if (testFldeq(v50, v51, v52, 10) || advance_tok(v0))
      {
LABEL_17:
        v1 = v27;
        goto LABEL_66;
      }
    }

    v53 = OUTLINED_FUNCTION_5_29();
    if (!testFldeq(v53, v54, v55, v56))
    {
      v1 = v27;
      if (advance_tok(v0))
      {
        goto LABEL_66;
      }

      goto LABEL_30;
    }

    goto LABEL_17;
  }

  v57 = OUTLINED_FUNCTION_4_29();
  if (testFldeq(v57, v58, v59, v60) || (v61 = OUTLINED_FUNCTION_6_29(), testFldeq(v61, v62, v63, v64)) || (v65 = OUTLINED_FUNCTION_14_26(), testFldeq(v65, v66, v67, 2)) || advance_tok(v0))
  {
    v1 = 0;
    goto LABEL_66;
  }

  for (i = 2054; ; i = 2058)
  {
LABEL_31:
    v76 = *(v0 + i);
LABEL_32:
    OUTLINED_FUNCTION_121_0();
    if (v45)
    {
      v77 = OUTLINED_FUNCTION_25_20();
      lpta_rpta_loadp(v77, v78, v79);
      OUTLINED_FUNCTION_0_33();
      if (!mark_s())
      {
        OUTLINED_FUNCTION_6_29();
        if (!mark_s())
        {
          OUTLINED_FUNCTION_12_28();
          if (!OUTLINED_FUNCTION_140_0())
          {
            goto LABEL_71;
          }
        }
      }
    }

LABEL_55:
    OUTLINED_FUNCTION_112_1();
    if (!v45)
    {
      break;
    }

    v95 = OUTLINED_FUNCTION_25_20();
    lpta_rpta_loadp(v95, v96, v97);
    OUTLINED_FUNCTION_0_33();
    if (mark_s())
    {
      break;
    }

    OUTLINED_FUNCTION_3_30();
    if (mark_s())
    {
      break;
    }

    OUTLINED_FUNCTION_6_29();
    if (mark_s())
    {
      break;
    }

    OUTLINED_FUNCTION_12_28();
    if (OUTLINED_FUNCTION_140_0())
    {
      break;
    }

    v98 = OUTLINED_FUNCTION_72_6();
    starttest_l(v98, v99);
    v100 = OUTLINED_FUNCTION_86_4();
    if (!lpta_loadp_setscan_r(v100, v101))
    {
      v1 = v76;
      if (!advance_tok(v0))
      {
LABEL_63:
        v102 = OUTLINED_FUNCTION_82_5();
        savescptr(v102, v103, v104);
        v105 = advance_tok(v0);
        v94 = v1;
        if (v105)
        {
          goto LABEL_66;
        }

LABEL_64:
        v76 = v94;
        v106 = OUTLINED_FUNCTION_74_6();
        savescptr(v106, v107, v108);
      }
    }

LABEL_65:
    v109 = OUTLINED_FUNCTION_16_25();
    lpta_rpta_loadp(v109, v110, v111);
    v112 = OUTLINED_FUNCTION_44_8();
    v1 = v76;
    if (!insert_2pt_s(v112, v113, v114, v115, v116))
    {
      goto LABEL_71;
    }

    do
    {
LABEL_66:
      OUTLINED_FUNCTION_142_0();
      while (2)
      {
        v80 = *(v0 + 104);
        if (v80)
        {
          v81 = OUTLINED_FUNCTION_87_4(v80);
        }

        else
        {
          v82 = OUTLINED_FUNCTION_90_4();
          v81 = vback(v82, v83);
        }

        v84 = v81 - 1;
        v74 = v1;
        v49 = v1;
        switch(v84)
        {
          case 0:
            v27 = v1;
            goto LABEL_6;
          case 1:
            v76 = v1;
            goto LABEL_32;
          case 2:
            v27 = v1;
            goto LABEL_8;
          case 3:
            v85 = OUTLINED_FUNCTION_101_1();
            bspush_ca_scan(v85, v86);
            v87 = OUTLINED_FUNCTION_15_26();
            v90 = 4;
            goto LABEL_46;
          case 4:
            break;
          case 5:
            v87 = OUTLINED_FUNCTION_14_26();
            v90 = 29;
LABEL_46:
            if (testFldeq(v87, v88, v89, v90))
            {
              continue;
            }

            v74 = v1;
            break;
          case 6:
            v27 = v1;
            goto LABEL_9;
          case 7:
            goto LABEL_10;
          case 8:
            v91 = OUTLINED_FUNCTION_13_28();
            if (testFldeq(v91, v92, v93, 8) || advance_tok(v0))
            {
              continue;
            }

            v49 = v1;
            goto LABEL_14;
          case 9:
            goto LABEL_14;
          case 11:
            v76 = v1;
            goto LABEL_55;
          case 12:
          case 13:
          case 18:
          case 19:
            goto LABEL_72;
          case 14:
            goto LABEL_67;
          case 15:
            v76 = v1;
            goto LABEL_65;
          case 16:
            goto LABEL_63;
          case 17:
            v94 = v1;
            goto LABEL_64;
          default:
            goto LABEL_3;
        }

        break;
      }

LABEL_29:
      v1 = v74;
    }

    while (advance_tok(v0));
LABEL_30:
    ;
  }

LABEL_67:
  OUTLINED_FUNCTION_128_0();
  if (v45)
  {
    v117 = OUTLINED_FUNCTION_25_20();
    lpta_rpta_loadp(v117, v118, v119);
    OUTLINED_FUNCTION_0_33();
    if (!mark_s())
    {
      OUTLINED_FUNCTION_40_9();
      if (!mark_i())
      {
LABEL_71:
        OUTLINED_FUNCTION_136_0();
      }
    }
  }

LABEL_72:
  vretproc(v0);
  result = 0;
LABEL_4:
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

void is_nounadj()
{
  OUTLINED_FUNCTION_123_0();
  OUTLINED_FUNCTION_22_21();
  v120 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_103_1();
  HIDWORD(v116) = 65532;
  OUTLINED_FUNCTION_67_6(v1, v2, v3, v4, v5, v6, v7, v8, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114);
  OUTLINED_FUNCTION_84_4();
  bzero(v119, v9);
  if (setjmp(v119))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_37_12();
  if (OUTLINED_FUNCTION_141_0(v10, v11, v12, v13, v14, v15, v16, v17, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v116, v118[0], v118[1], v118[2], v118[3], v118[4], v118[5], v118[6], v118[7], v119[0]))
  {
    goto LABEL_3;
  }

  v19 = OUTLINED_FUNCTION_26_20();
  get_parm(v19, v20, v21, -6);
  OUTLINED_FUNCTION_53_7();
  v22 = OUTLINED_FUNCTION_101_1();
  push_ptr_init(v22, v23);
  fence_29(v0, 0, &null_str_8);
  v24 = OUTLINED_FUNCTION_73_6();
  fence_29(v24, v25, v26);
  OUTLINED_FUNCTION_77_6();
  strip_plural();
  if (v27)
  {
LABEL_5:
    v28 = 3022;
  }

  else
  {
    v28 = 3026;
  }

  v117 = *(v0 + v28);
  while (2)
  {
    v29 = OUTLINED_FUNCTION_81_5();
    starttest(v29, v30);
    if (*(v0 + 3022) != v117 || (v31 = OUTLINED_FUNCTION_41_8(), lpta_loadp_setscan_l(v31, v32)))
    {
LABEL_10:
      v33 = OUTLINED_FUNCTION_134_0();
      starttest(v33, v34);
      if (*(v0 + 3026) != v117)
      {
        break;
      }

      v35 = OUTLINED_FUNCTION_41_8();
      if (lpta_loadp_setscan_l(v35, v36))
      {
        break;
      }

      v37 = OUTLINED_FUNCTION_133_0();
      bspush_ca_scan(v37, v38);
LABEL_13:
      v39 = OUTLINED_FUNCTION_4_29();
      if (testFldeq(v39, v40, v41, v42))
      {
        goto LABEL_21;
      }

      v43 = OUTLINED_FUNCTION_71_6();
      v45 = 2;
      goto LABEL_18;
    }

    v46 = OUTLINED_FUNCTION_120_1();
    bspush_ca_scan(v46, v47);
LABEL_16:
    v48 = OUTLINED_FUNCTION_4_29();
    if (!testFldeq(v48, v49, v50, v51))
    {
      v43 = OUTLINED_FUNCTION_71_6();
      v45 = 1;
LABEL_18:
      if (!testFldeq(v43, v44, 4, v45) && !advance_tok(v0))
      {
LABEL_20:
        v52 = OUTLINED_FUNCTION_77_6();
        lpta_rpta_loadp(v52, v53, v118);
        OUTLINED_FUNCTION_0_33();
        if (!mark_s())
        {
          OUTLINED_FUNCTION_88_4();
          OUTLINED_FUNCTION_149_0();
          break;
        }
      }
    }

LABEL_21:
    v54 = *(v0 + 104);
    if (v54)
    {
      v55 = OUTLINED_FUNCTION_87_4(v54);
    }

    else
    {
      v56 = OUTLINED_FUNCTION_90_4();
      v55 = vback(v56, v57);
    }

    switch(v55)
    {
      case 1:
        goto LABEL_5;
      case 2:
        continue;
      case 3:
        goto LABEL_10;
      case 4:
        v58 = OUTLINED_FUNCTION_61_7();
        if (!testFldeq(v58, v59, v60, 4) && !advance_tok(v0))
        {
          goto LABEL_16;
        }

        goto LABEL_21;
      case 5:
        goto LABEL_16;
      case 6:
        goto LABEL_20;
      case 8:
        v61 = OUTLINED_FUNCTION_61_7();
        if (!testFldeq(v61, v62, v63, 4) && !advance_tok(v0))
        {
          goto LABEL_13;
        }

        goto LABEL_21;
      case 9:
        goto LABEL_13;
      default:
        goto LABEL_3;
    }
  }

LABEL_3:
  vretproc(v0);
  v18 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_113_1();
  OUTLINED_FUNCTION_122_0();
}

void noun_vs_verb()
{
  OUTLINED_FUNCTION_123_0();
  OUTLINED_FUNCTION_22_21();
  v437 = *MEMORY[0x277D85DE8];
  v432[1] = 0;
  v432[0] = 0;
  v431[1] = 0;
  v431[0] = 0;
  v429 = 0u;
  v430 = 0u;
  v427 = 0u;
  v428 = 0u;
  memset(v426, 0, sizeof(v426));
  OUTLINED_FUNCTION_85_4();
  bzero(&v408, v1);
  OUTLINED_FUNCTION_84_4();
  bzero(v436, v2);
  if (setjmp(v436) || ventproc(v0, &v408, v435, v434, v433, v436))
  {
    goto LABEL_3;
  }

  v4 = OUTLINED_FUNCTION_26_20();
  get_parm(v4, v5, v6, -6);
  OUTLINED_FUNCTION_53_7();
  v430 = 0uLL;
  LODWORD(v429) = -65534;
  v428 = 0uLL;
  LODWORD(v427) = -65534;
  v7 = OUTLINED_FUNCTION_101_1();
  push_ptr_init(v7, v8);
  v9 = push_ptr_init(v0, v426);
  v10 = 0;
  OUTLINED_FUNCTION_115_1(v9, v11, &null_str_8);
  v12 = OUTLINED_FUNCTION_73_6();
  fence_29(v12, v13, v14);
  OUTLINED_FUNCTION_77_6();
  strip_plural();
  if (v15)
  {
LABEL_5:
    v16 = v10;
  }

  else
  {
    v16 = 0;
  }

  npush_s(v0);
  WORD1(v427) = 4;
  npop(v0, &v427);
  v375 = 7;
  v17 = 23;
  v18 = 24;
  v19 = 27;
  v405 = 28;
  v404 = 31;
  v403 = 32;
  v20 = 33;
  v21 = 34;
  v400 = 36;
  v22 = 37;
  v23 = 38;
  v24 = 39;
  v25 = 40;
  v26 = 41;
  v27 = 42;
  v28 = 44;
  v29 = 45;
  v30 = 46;
  v31 = 47;
  v32 = 48;
  v33 = 52;
  v34 = 54;
  v35 = 55;
  v36 = 56;
  v37 = 57;
  v383 = 58;
  v382 = 59;
  v381 = 60;
  v380 = 62;
  v379 = 68;
  v378 = 70;
  v377 = 71;
  v38 = 72;
  v372 = 6;
  v374 = 8;
  v373 = 12;
  while (2)
  {
    v376 = v38;
    v384 = v37;
    v385 = v36;
    v386 = v35;
    v387 = v34;
    v388 = v33;
    v389 = v32;
    v390 = v31;
    v391 = v30;
    v392 = v29;
    v393 = v28;
    v394 = v27;
    v395 = v26;
    v396 = v25;
    v397 = v24;
    v398 = v23;
    v399 = v22;
    v401 = v21;
    v402 = v20;
    v39 = OUTLINED_FUNCTION_33_15();
    if (!lpta_loadp_setscan_r(v39, v40) && !advance_tok(v0))
    {
      savetok(v0, &v429);
    }

LABEL_11:
    v41 = OUTLINED_FUNCTION_32_15();
    starttest(v41, v42);
    v43 = OUTLINED_FUNCTION_33_15();
    if (!lpta_loadp_setscan_l(v43, v44))
    {
      v125 = OUTLINED_FUNCTION_8_29();
LABEL_85:
      if (!testFldeq(v125, v126, v127, v128))
      {
LABEL_91:
        v114 = advance_tok(v0);
        goto LABEL_92;
      }

      goto LABEL_182;
    }

LABEL_12:
    starttest(v0, v372);
    if (!lpta_loadp_setscan_r(v0, v431))
    {
      v90 = OUTLINED_FUNCTION_8_29();
      if (testFldeq(v90, v91, v92, v93) || advance_tok(v0))
      {
        goto LABEL_182;
      }

      starttest(v0, v375);
      v94 = OUTLINED_FUNCTION_33_15();
      if (lpta_loadp_setscan_l(v94, v95))
      {
LABEL_41:
        v96 = OUTLINED_FUNCTION_51_7();
        starttest(v96, v97);
        v98 = OUTLINED_FUNCTION_33_15();
        if (lpta_loadp_setscan_l(v98, v99))
        {
          goto LABEL_185;
        }

        v100 = OUTLINED_FUNCTION_1_31();
        if (testFldeq(v100, v101, v102, v103) || advance_tok(v0))
        {
          goto LABEL_182;
        }

        bspush_ca_scan(v0, v373);
        v104 = v16;
LABEL_45:
        v105 = v104;
        v106 = OUTLINED_FUNCTION_120_1();
        bspush_ca_scan(v106, v107);
        v108 = v105;
LABEL_46:
        v16 = v108;
        bspush_ca_scan(v0, 21);
        v109 = OUTLINED_FUNCTION_13_28();
        v112 = 10;
LABEL_158:
        v307 = testFldeq(v109, v110, v111, v112);
        v206 = v16;
        v147 = v16;
        if (v307)
        {
          goto LABEL_93;
        }

LABEL_159:
        v16 = v206;
      }

      else
      {
        v151 = OUTLINED_FUNCTION_14_26();
        if (testFldeq(v151, v152, v153, 11) || advance_tok(v0))
        {
          goto LABEL_182;
        }

        bspush_ca_scan(v0, v374);
        v154 = OUTLINED_FUNCTION_13_28();
        v157 = 10;
LABEL_148:
        v298 = testFldeq(v154, v155, v156, v157);
        v205 = v16;
        v147 = v16;
        if (v298)
        {
          goto LABEL_93;
        }

LABEL_149:
        v16 = v205;
      }

LABEL_145:
      v297 = advance_tok(v0);
      v147 = v16;
      if (v297)
      {
        goto LABEL_93;
      }

      break;
    }

LABEL_13:
    v45 = OUTLINED_FUNCTION_146_0();
    starttest(v45, v46);
    OUTLINED_FUNCTION_91_3();
    if (!followed_by_hyphen())
    {
      v47 = OUTLINED_FUNCTION_41_8();
      if (!lpta_loadp_setscan_r(v47, v48))
      {
        v119 = OUTLINED_FUNCTION_81_5();
        bspush_ca_scan(v119, v120);
        v121 = OUTLINED_FUNCTION_9_29();
LABEL_155:
        v306 = testFldeq(v121, v122, v123, v124);
        v207 = v16;
        v147 = v16;
        if (v306)
        {
          goto LABEL_93;
        }

LABEL_156:
        v16 = v207;
        goto LABEL_145;
      }
    }

LABEL_15:
    v49 = OUTLINED_FUNCTION_133_0();
    starttest(v49, v50);
    v51 = OUTLINED_FUNCTION_91_3();
    if (!lpta_loadp_setscan_l(v51, v52))
    {
      bspush_ca_scan(v0, v405);
      v113 = v16;
LABEL_48:
      v16 = v113;
      OUTLINED_FUNCTION_20_21();
      v114 = test_string_s();
LABEL_92:
      v147 = v16;
      if (v114)
      {
        goto LABEL_93;
      }

      goto LABEL_185;
    }

LABEL_16:
    v53 = OUTLINED_FUNCTION_91_3();
    if (lpta_loadp_setscan_l(v53, v54))
    {
LABEL_17:
      starttest(v0, v404);
      v55 = OUTLINED_FUNCTION_33_15();
      if (!lpta_loadp_setscan_l(v55, v56))
      {
        v115 = OUTLINED_FUNCTION_13_28();
LABEL_50:
        v118 = 10;
        goto LABEL_51;
      }

LABEL_18:
      starttest(v0, v403);
      v57 = OUTLINED_FUNCTION_33_15();
      if (!lpta_loadp_setscan_l(v57, v58))
      {
LABEL_165:
        v309 = OUTLINED_FUNCTION_147_0();
        savescptr(v309, v402, v426);
        v310 = OUTLINED_FUNCTION_14_26();
        if (!testFldeq(v310, v311, v312, 12))
        {
          v313 = advance_tok(v0);
          if (!v313 && !OUTLINED_FUNCTION_124_0(v313, v314, v315, v316, v317, v318, v319, v320, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415, v416, v417, v418, v419, v420, v421, v422, v423, v424, v425))
          {
            bspush_ca_scan(v0, v401);
            v301 = OUTLINED_FUNCTION_15_26();
            v304 = 9;
LABEL_152:
            v305 = testFldeq(v301, v302, v303, v304);
            v208 = v16;
            v147 = v16;
            if (v305)
            {
              goto LABEL_93;
            }

LABEL_153:
            v16 = v208;
            goto LABEL_91;
          }
        }

LABEL_182:
        v147 = v16;
        goto LABEL_93;
      }

LABEL_19:
      starttest(v0, v400);
      v59 = OUTLINED_FUNCTION_33_15();
      if (!lpta_loadp_setscan_l(v59, v60))
      {
LABEL_169:
        v321 = OUTLINED_FUNCTION_147_0();
        savescptr(v321, v399, v426);
        v322 = OUTLINED_FUNCTION_14_26();
        if (testFldeq(v322, v323, v324, 12))
        {
          goto LABEL_182;
        }

        v325 = advance_tok(v0);
        if (v325 || OUTLINED_FUNCTION_124_0(v325, v326, v327, v328, v329, v330, v331, v332, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415, v416, v417, v418, v419, v420, v421, v422, v423, v424, v425))
        {
          goto LABEL_182;
        }

        v115 = OUTLINED_FUNCTION_15_26();
        v118 = 11;
LABEL_51:
        if (testFldeq(v115, v116, v117, v118))
        {
          goto LABEL_182;
        }

        goto LABEL_145;
      }

LABEL_20:
      starttest(v0, v398);
      v61 = OUTLINED_FUNCTION_33_15();
      if (lpta_loadp_setscan_l(v61, v62))
      {
LABEL_21:
        starttest(v0, v397);
        v63 = OUTLINED_FUNCTION_33_15();
        if (!lpta_loadp_setscan_l(v63, v64))
        {
          v148 = OUTLINED_FUNCTION_14_26();
          if (testFldeq(v148, v149, v150, 6))
          {
            goto LABEL_182;
          }

          v125 = OUTLINED_FUNCTION_1_31();
          goto LABEL_85;
        }

LABEL_22:
        starttest(v0, v396);
        v65 = OUTLINED_FUNCTION_33_15();
        if (!lpta_loadp_setscan_l(v65, v66))
        {
          v158 = OUTLINED_FUNCTION_5_29();
          if (testFldeq(v158, v159, v160, v161))
          {
            goto LABEL_182;
          }

          v125 = OUTLINED_FUNCTION_15_26();
          goto LABEL_85;
        }

LABEL_23:
        starttest(v0, v395);
        v67 = OUTLINED_FUNCTION_33_15();
        if (lpta_loadp_setscan_l(v67, v68))
        {
LABEL_24:
          starttest(v0, v393);
          v69 = OUTLINED_FUNCTION_33_15();
          if (lpta_loadp_setscan_l(v69, v70))
          {
LABEL_25:
            starttest(v0, v392);
            v71 = OUTLINED_FUNCTION_33_15();
            if (lpta_loadp_setscan_l(v71, v72))
            {
LABEL_26:
              starttest(v0, v391);
              v73 = OUTLINED_FUNCTION_33_15();
              if (!lpta_loadp_setscan_l(v73, v74))
              {
                v182 = OUTLINED_FUNCTION_14_26();
                if (!testFldeq(v182, v183, v184, 3) && !advance_tok(v0))
                {
                  starttest(v0, v390);
                  v185 = OUTLINED_FUNCTION_33_15();
                  if (!lpta_loadp_setscan_l(v185, v186) && !advance_tok(v0))
                  {
                    v187 = OUTLINED_FUNCTION_1_31();
                    if (!testFldeq(v187, v188, v189, v190))
                    {
                      bspush_ca_scan_boa();
                      v191 = OUTLINED_FUNCTION_14_26();
                      v194 = 5;
                      goto LABEL_161;
                    }

                    goto LABEL_182;
                  }

                  goto LABEL_185;
                }

                goto LABEL_182;
              }

LABEL_27:
              OUTLINED_FUNCTION_43_8();
              if (!v75)
              {
                goto LABEL_3;
              }

              starttest(v0, v388);
              if (lpta_loadp_setscan_r(v0, v431))
              {
LABEL_30:
                starttest(v0, v387);
                v76 = OUTLINED_FUNCTION_33_15();
                if (lpta_loadp_setscan_r(v76, v77))
                {
LABEL_31:
                  starttest(v0, v386);
                  v78 = OUTLINED_FUNCTION_33_15();
                  if (lpta_loadp_setscan_l(v78, v79))
                  {
LABEL_32:
                    starttest(v0, v384);
                    v80 = OUTLINED_FUNCTION_33_15();
                    if (lpta_loadp_setscan_l(v80, v81))
                    {
LABEL_33:
                      starttest(v0, v382);
                      v82 = OUTLINED_FUNCTION_33_15();
                      if (lpta_loadp_setscan_l(v82, v83))
                      {
LABEL_34:
                        starttest(v0, v378);
                        v84 = OUTLINED_FUNCTION_33_15();
                        if (lpta_loadp_setscan_l(v84, v85))
                        {
                          goto LABEL_3;
                        }

LABEL_35:
                        savescptr(v0, v377, v426);
                        v86 = OUTLINED_FUNCTION_1_31();
                        if (!testFldeq(v86, v87, v88, v89) && !advance_tok(v0))
                        {
LABEL_160:
                          bspush_ca_scan_boa();
                          v191 = OUTLINED_FUNCTION_5_29();
LABEL_161:
                          v308 = testFldeq(v191, v192, v193, v194);
LABEL_162:
                          if (v308)
                          {
                            v147 = v16;
                          }

                          else
                          {
                            v147 = 1;
                          }

                          goto LABEL_93;
                        }

                        goto LABEL_182;
                      }

                      bspush_ca_scan(v0, v381);
                      v195 = v16;
LABEL_82:
                      v196 = v195;
                      bspush_ca_scan(v0, v380);
                      v197 = v196;
LABEL_83:
                      v198 = v197;
                      bspush_ca_scan(v0, v379);
                      v199 = v198;
LABEL_84:
                      v16 = v199;
                      v125 = OUTLINED_FUNCTION_7_29();
                    }

                    else
                    {
LABEL_178:
                      v350 = OUTLINED_FUNCTION_147_0();
                      savescptr(v350, v383, v426);
                      v351 = OUTLINED_FUNCTION_1_31();
                      if (testFldeq(v351, v352, v353, v354))
                      {
                        goto LABEL_182;
                      }

                      v355 = OUTLINED_FUNCTION_28_17();
                      if (testFldeq(v355, v356, v357, 2))
                      {
                        goto LABEL_182;
                      }

                      v358 = advance_tok(v0);
                      if (v358 || OUTLINED_FUNCTION_124_0(v358, v359, v360, v361, v362, v363, v364, v365, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415, v416, v417, v418, v419, v420, v421, v422, v423, v424, v425))
                      {
                        goto LABEL_182;
                      }

                      v125 = OUTLINED_FUNCTION_6_29();
                    }
                  }

                  else
                  {
LABEL_173:
                    v333 = OUTLINED_FUNCTION_147_0();
                    savescptr(v333, v385, v426);
                    v334 = OUTLINED_FUNCTION_1_31();
                    if (testFldeq(v334, v335, v336, v337))
                    {
                      goto LABEL_182;
                    }

                    v338 = OUTLINED_FUNCTION_6_29();
                    if (testFldeq(v338, v339, v340, v341))
                    {
                      goto LABEL_182;
                    }

                    v342 = advance_tok(v0);
                    if (v342 || OUTLINED_FUNCTION_124_0(v342, v343, v344, v345, v346, v347, v348, v349, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415, v416, v417, v418, v419, v420, v421, v422, v423, v424, v425))
                    {
                      goto LABEL_182;
                    }

                    v125 = OUTLINED_FUNCTION_15_26();
                    v128 = 9;
                  }
                }

                else
                {
                  v125 = OUTLINED_FUNCTION_15_26();
                  v128 = 10;
                }

                goto LABEL_85;
              }

              v115 = OUTLINED_FUNCTION_15_26();
              v118 = 6;
            }

            else
            {
              v115 = OUTLINED_FUNCTION_13_28();
              v118 = 8;
            }

            goto LABEL_51;
          }

          v115 = OUTLINED_FUNCTION_14_26();
          goto LABEL_50;
        }

        bspush_ca_scan(v0, v394);
        v162 = v16;
LABEL_67:
        v16 = v162;
        v163 = OUTLINED_FUNCTION_4_29();
        if (testFldeq(v163, v164, v165, v166))
        {
          goto LABEL_182;
        }

        v406 = v17;
        v17 = v19;
        v19 = v18;
        v18 = 21;
        v167 = OUTLINED_FUNCTION_71_6();
        if (npush_fld(v167, v168, 4) || (WORD1(v427) = 4, npush_v(v0, &v427, v169, v170, v171, v172, v173, v174), if_testeq(v0, v175, v176, v177, v178, v179, v180, v181)))
        {
          OUTLINED_FUNCTION_132_0();
          goto LABEL_93;
        }

        advance_tok(v0);
        OUTLINED_FUNCTION_132_0();
        if (!v201)
        {
LABEL_185:
          v209 = 2054;
          goto LABEL_189;
        }

LABEL_93:
        v202 = v0[13];
        if (v202)
        {
          v203 = OUTLINED_FUNCTION_87_4(v202);
          v16 = v204;
        }

        else
        {
          v203 = vback(v0, v147);
          v16 = 0;
        }

        v205 = v16;
        v104 = v16;
        v108 = v16;
        v206 = v16;
        v207 = v16;
        v113 = v16;
        v208 = v16;
        v162 = v16;
        v195 = v16;
        v197 = v16;
        v199 = v16;
        v209 = 2054;
        switch(v203)
        {
          case 1:
            v10 = v16;
            goto LABEL_5;
          case 2:
            v21 = v401;
            v20 = v402;
            v23 = v398;
            v22 = v399;
            v25 = v396;
            v24 = v397;
            v27 = v394;
            v26 = v395;
            v29 = v392;
            v28 = v393;
            v31 = v390;
            v30 = v391;
            v33 = v388;
            v32 = v389;
            v35 = v386;
            v34 = v387;
            v37 = v384;
            v36 = v385;
            v38 = v376;
            continue;
          case 3:
            goto LABEL_11;
          case 4:
            goto LABEL_12;
          case 5:
          case 10:
          case 50:
          case 53:
            goto LABEL_190;
          case 6:
            goto LABEL_13;
          case 7:
            goto LABEL_41;
          case 8:
            v154 = OUTLINED_FUNCTION_13_28();
            v157 = 6;
            goto LABEL_148;
          case 9:
            goto LABEL_149;
          case 11:
          case 47:
            goto LABEL_189;
          case 12:
            v210 = OUTLINED_FUNCTION_72_6();
            bspush_ca_scan(v210, v211);
            v212 = OUTLINED_FUNCTION_14_26();
            v215 = 37;
            goto LABEL_118;
          case 13:
            goto LABEL_45;
          case 14:
            v253 = OUTLINED_FUNCTION_72_6();
            bspush_ca_scan(v253, v254);
            v212 = OUTLINED_FUNCTION_14_26();
            v215 = 3;
            goto LABEL_118;
          case 15:
            goto LABEL_119;
          case 16:
            v234 = OUTLINED_FUNCTION_72_6();
            bspush_ca_scan(v234, v235);
            v212 = OUTLINED_FUNCTION_15_26();
            goto LABEL_115;
          case 17:
            v212 = OUTLINED_FUNCTION_13_28();
LABEL_115:
            v215 = 2;
LABEL_118:
            v255 = testFldeq(v212, v213, v214, v215);
            v147 = v16;
            if (v255)
            {
              goto LABEL_93;
            }

LABEL_119:
            v256 = advance_tok(v0);
            v104 = v16;
            v147 = v16;
            if (!v256)
            {
              goto LABEL_45;
            }

            goto LABEL_93;
          case 18:
            v236 = OUTLINED_FUNCTION_4_29();
            v240 = testFldeq(v236, v237, v238, v239);
            v147 = v16;
            if (v240)
            {
              goto LABEL_93;
            }

            OUTLINED_FUNCTION_72_6();
            goto LABEL_160;
          case 19:
            goto LABEL_46;
          case 20:
            bspop_boa(v0);
            v263 = advance_tok(v0);
            v108 = v16;
            v147 = v16;
            if (!v263)
            {
              goto LABEL_46;
            }

            goto LABEL_93;
          case 21:
            v109 = OUTLINED_FUNCTION_13_28();
            v112 = 6;
            goto LABEL_158;
          case 22:
            goto LABEL_159;
          case 23:
            goto LABEL_15;
          case 24:
            v299 = OUTLINED_FUNCTION_72_6();
            bspush_ca_scan(v299, v300);
            v121 = OUTLINED_FUNCTION_15_26();
            v124 = 4;
            goto LABEL_155;
          case 25:
            goto LABEL_156;
          case 26:
            v121 = OUTLINED_FUNCTION_14_26();
            v124 = 29;
            goto LABEL_155;
          case 27:
            goto LABEL_16;
          case 28:
            OUTLINED_FUNCTION_20_21();
            v227 = test_string_s();
            v113 = v16;
            v147 = v16;
            if (!v227)
            {
              goto LABEL_48;
            }

            goto LABEL_93;
          case 29:
            goto LABEL_48;
          case 30:
            goto LABEL_17;
          case 31:
            goto LABEL_18;
          case 32:
            goto LABEL_19;
          case 33:
            goto LABEL_165;
          case 34:
            v301 = OUTLINED_FUNCTION_15_26();
            v304 = 10;
            goto LABEL_152;
          case 35:
            goto LABEL_153;
          case 36:
            goto LABEL_20;
          case 37:
            goto LABEL_169;
          case 38:
            goto LABEL_21;
          case 39:
            goto LABEL_22;
          case 40:
            goto LABEL_23;
          case 41:
            goto LABEL_24;
          case 42:
            v216 = OUTLINED_FUNCTION_14_26();
            v219 = testFldeq(v216, v217, v218, 4);
            v147 = v16;
            if (!v219)
            {
              v220 = advance_tok(v0);
              v162 = v16;
              v147 = v16;
              if (!v220)
              {
                goto LABEL_67;
              }
            }

            goto LABEL_93;
          case 43:
            goto LABEL_67;
          case 44:
            goto LABEL_25;
          case 45:
            goto LABEL_26;
          case 46:
            goto LABEL_27;
          case 48:
            bspop_boa(v0);
            v264 = advance_tok(v0);
            v147 = v16;
            if (v264)
            {
              goto LABEL_93;
            }

            OUTLINED_FUNCTION_72_6();
            bspush_ca_scan_boa();
            v265 = OUTLINED_FUNCTION_5_29();
            v269 = testFldeq(v265, v266, v267, v268);
            v147 = v16;
            if (v269)
            {
              goto LABEL_93;
            }

            v308 = advance_tok(v0);
            goto LABEL_162;
          case 49:
            bspop_boa(v0);
            goto LABEL_188;
          case 52:
            goto LABEL_30;
          case 54:
            goto LABEL_31;
          case 55:
            goto LABEL_32;
          case 56:
            goto LABEL_173;
          case 57:
            goto LABEL_33;
          case 58:
            goto LABEL_178;
          case 59:
            goto LABEL_34;
          case 60:
            v228 = OUTLINED_FUNCTION_1_31();
            v232 = testFldeq(v228, v229, v230, v231);
            v147 = v16;
            if (!v232)
            {
              v233 = advance_tok(v0);
              v195 = v16;
              v147 = v16;
              if (!v233)
              {
                goto LABEL_82;
              }
            }

            goto LABEL_93;
          case 61:
            goto LABEL_82;
          case 62:
            v221 = OUTLINED_FUNCTION_72_6();
            bspush_ca_scan(v221, v222);
            v223 = OUTLINED_FUNCTION_4_29();
            goto LABEL_129;
          case 63:
            goto LABEL_83;
          case 64:
            v257 = OUTLINED_FUNCTION_72_6();
            bspush_ca_scan(v257, v258);
            v223 = OUTLINED_FUNCTION_14_26();
            v226 = 3;
            goto LABEL_129;
          case 65:
            goto LABEL_130;
          case 66:
            v270 = OUTLINED_FUNCTION_72_6();
            bspush_ca_scan(v270, v271);
            v223 = OUTLINED_FUNCTION_14_26();
            v226 = 37;
            goto LABEL_129;
          case 67:
            v223 = OUTLINED_FUNCTION_9_29();
LABEL_129:
            v272 = testFldeq(v223, v224, v225, v226);
            v147 = v16;
            if (v272)
            {
              goto LABEL_93;
            }

LABEL_130:
            v273 = advance_tok(v0);
            v197 = v16;
            v147 = v16;
            if (!v273)
            {
              goto LABEL_83;
            }

            goto LABEL_93;
          case 68:
            v241 = OUTLINED_FUNCTION_5_29();
            v245 = testFldeq(v241, v242, v243, v244);
            v147 = v16;
            if (!v245)
            {
              v246 = advance_tok(v0);
              v199 = v16;
              v147 = v16;
              if (!v246)
              {
                goto LABEL_84;
              }
            }

            goto LABEL_93;
          case 69:
            goto LABEL_84;
          case 71:
            goto LABEL_35;
          case 72:
            bspop_boa(v0);
            v274 = OUTLINED_FUNCTION_72_6();
            bspush_ca_scan(v274, v275);
            v249 = OUTLINED_FUNCTION_4_29();
            goto LABEL_136;
          case 73:
            v247 = OUTLINED_FUNCTION_72_6();
            bspush_ca_scan(v247, v248);
            v249 = OUTLINED_FUNCTION_14_26();
            v252 = 37;
            goto LABEL_136;
          case 74:
            goto LABEL_137;
          case 75:
            v278 = OUTLINED_FUNCTION_72_6();
            bspush_ca_scan(v278, v279);
            v249 = OUTLINED_FUNCTION_14_26();
            v252 = 3;
            goto LABEL_136;
          case 76:
            v249 = OUTLINED_FUNCTION_9_29();
LABEL_136:
            v280 = testFldeq(v249, v250, v251, v252);
            v147 = v16;
            if (v280)
            {
              goto LABEL_93;
            }

LABEL_137:
            v281 = advance_tok(v0);
            v147 = v16;
            if (v281)
            {
              goto LABEL_93;
            }

            v282 = OUTLINED_FUNCTION_80_5();
            v284 = lpta_loadp_setscan_r(v282, v283);
            v147 = v16;
            if (v284)
            {
              goto LABEL_93;
            }

            v285 = advance_tok(v0);
            v147 = v16;
            if (v285)
            {
              goto LABEL_93;
            }

            v286 = OUTLINED_FUNCTION_72_6();
            bspush_ca_scan(v286, v287);
            v259 = OUTLINED_FUNCTION_4_29();
LABEL_142:
            v290 = testFldeq(v259, v260, v261, v262);
            v147 = v16;
            if (v290)
            {
              goto LABEL_93;
            }

LABEL_143:
            v291 = advance_tok(v0);
            v147 = v16;
            if (!v291)
            {
              v292 = OUTLINED_FUNCTION_1_31();
              v296 = testFldeq(v292, v293, v294, v295);
              v147 = v16;
              if (!v296)
              {
                goto LABEL_145;
              }
            }

            goto LABEL_93;
          case 77:
            v288 = OUTLINED_FUNCTION_72_6();
            bspush_ca_scan(v288, v289);
            v259 = OUTLINED_FUNCTION_14_26();
            v262 = 37;
            goto LABEL_142;
          case 78:
            goto LABEL_143;
          case 79:
            v276 = OUTLINED_FUNCTION_72_6();
            bspush_ca_scan(v276, v277);
            v259 = OUTLINED_FUNCTION_14_26();
            v262 = 3;
            goto LABEL_142;
          case 80:
            v259 = OUTLINED_FUNCTION_9_29();
            goto LABEL_142;
          case 81:
            goto LABEL_195;
          default:
            goto LABEL_3;
        }
      }

      v129 = OUTLINED_FUNCTION_14_26();
      if (testFldeq(v129, v130, v131, 11))
      {
        goto LABEL_182;
      }

      v407 = v19;
      v132 = OUTLINED_FUNCTION_71_6();
      if (npush_fld(v132, v133, 4) || (WORD1(v429) = 4, npush_v(v0, &v429, v134, v135, v136, v137, v138, v139), if_testeq(v0, v140, v141, v142, v143, v144, v145, v146)))
      {
        v147 = v16;
        goto LABEL_93;
      }

      v200 = advance_tok(v0);
      v147 = v16;
      if (v200)
      {
        goto LABEL_93;
      }
    }

    break;
  }

LABEL_188:
  v209 = 2058;
LABEL_189:
  v366 = *(v0 + v209);
LABEL_190:
  OUTLINED_FUNCTION_121_0();
  if (!v75 || (lpta_rpta_loadp(v0, v432, v431), OUTLINED_FUNCTION_0_33(), mark_s()) || (OUTLINED_FUNCTION_15_26(), mark_s()) || (WORD1(v427) = 4, v367 = OUTLINED_FUNCTION_71_6(), mark_v(v367, v368, v369, v370)))
  {
LABEL_195:
    OUTLINED_FUNCTION_112_1();
    if (v75)
    {
      lpta_rpta_loadp(v0, v432, v431);
      OUTLINED_FUNCTION_0_33();
      if (!mark_s())
      {
        OUTLINED_FUNCTION_3_30();
        mark_s();
      }
    }
  }

LABEL_3:
  vretproc(v0);
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_122_0();
}