void convert_por_time()
{
  OUTLINED_FUNCTION_70_8();
  v104 = v0;
  v2 = v1;
  v117 = *MEMORY[0x277D85DE8];
  v111 = 0;
  v112 = 0;
  v109 = 0;
  v110 = 0;
  v108[0] = 0;
  v108[1] = 0;
  v107[0] = 0;
  v107[1] = 0;
  v106[0] = 0;
  v106[1] = 0;
  OUTLINED_FUNCTION_38_13();
  bzero(v105, v3);
  OUTLINED_FUNCTION_37_14();
  bzero(v116, v4);
  if (setjmp(v116))
  {
    goto LABEL_4;
  }

  if (ventproc(v2, v105, v115, v114, v113, v116))
  {
    goto LABEL_4;
  }

  v5 = OUTLINED_FUNCTION_10_32();
  get_parm(v5, v6, v7, -6);
  get_parm(v2, &v109, v104, -6);
  push_ptr_init(v2, v108);
  v8 = OUTLINED_FUNCTION_77_8();
  push_ptr_init(v8, v9);
  v10 = OUTLINED_FUNCTION_68_8();
  push_ptr_init(v10, v11);
  fence_33(v2, 0, &null_str_11);
  v12 = OUTLINED_FUNCTION_58_9();
  starttest(v12, v13);
  v14 = OUTLINED_FUNCTION_34_16();
  if (lpta_loadp_setscan_r(v14, v15))
  {
LABEL_4:
    vretproc(v2);
  }

  else
  {
    v17 = OUTLINED_FUNCTION_28_19();
    bspush_ca_scan(v17, v18);
    v19 = OUTLINED_FUNCTION_28_19();
    bspush_ca_scan(v19, v20);
    OUTLINED_FUNCTION_2_35();
    v21 = test_string_s();
    v22 = 0;
    v23 = 0;
    if (!v21)
    {
LABEL_7:
      v22 = v23;
      v24 = OUTLINED_FUNCTION_4_33();
      if (!testFldeq(v24, v25, v26, 2))
      {
        v27 = v22;
        if (!advance_tok(v2))
        {
LABEL_9:
          v22 = v27;
          savescptr(v2, 5, v108);
          v28 = OUTLINED_FUNCTION_28_19();
          bspush_ca_scan(v28, v29);
          OUTLINED_FUNCTION_2_35();
          if (!test_string_s())
          {
LABEL_10:
            v22 = v27;
            OUTLINED_FUNCTION_64_8();
            savescptr(v2, v30, v107);
            v31 = OUTLINED_FUNCTION_4_33();
            if (!testFldeq(v31, v32, v33, 2) && !advance_tok(v2))
            {
              v34 = OUTLINED_FUNCTION_4_33();
              if (!testFldeq(v34, v35, v36, 2) && !advance_tok(v2))
              {
LABEL_14:
                v22 = v27;
                v37 = OUTLINED_FUNCTION_56_9();
                savescptr(v37, v38, v39);
                OUTLINED_FUNCTION_22_23();
                bspush_ca_scan_boa();
                v40 = OUTLINED_FUNCTION_4_33();
                if (!testFldeq(v40, v41, v42, 2))
                {
                  if (advance_tok(v2))
                  {
                    v22 = v27;
                  }

                  else
                  {
                    v22 = 1;
                  }
                }
              }
            }
          }
        }
      }
    }

    v43 = v22;
    while (2)
    {
      v44 = *(v2 + 104);
      if (v44)
      {
        v45 = OUTLINED_FUNCTION_47_10(v44);
        v27 = v46;
      }

      else
      {
        v45 = vback(v2, v43);
        v27 = 0;
      }

      v23 = v27;
      switch(v45)
      {
        case 2:
          goto LABEL_7;
        case 3:
          bspush_ca_scan(v2, 4);
          OUTLINED_FUNCTION_2_35();
          goto LABEL_37;
        case 4:
          OUTLINED_FUNCTION_2_35();
LABEL_37:
          v73 = test_string_s();
          v23 = v27;
          v43 = v27;
          if (!v73)
          {
            goto LABEL_7;
          }

          continue;
        case 5:
          goto LABEL_9;
        case 6:
          OUTLINED_FUNCTION_2_35();
          v74 = test_string_s();
          v43 = v27;
          if (v74)
          {
            continue;
          }

          goto LABEL_40;
        case 7:
          goto LABEL_10;
        case 8:
          goto LABEL_14;
        case 9:
          bspop_boa(v2);
          bspush_ca_scan(v2, 10);
          OUTLINED_FUNCTION_2_35();
          goto LABEL_47;
        case 10:
        case 11:
          goto LABEL_48;
        case 12:
LABEL_40:
          savescptr(v2, 12, v107);
          bspush_ca_scan(v2, 11);
          v75 = OUTLINED_FUNCTION_4_33();
          v78 = testFldeq(v75, v76, v77, 2);
          v43 = v27;
          if (!v78)
          {
            v79 = advance_tok(v2);
            v43 = v27;
            if (!v79)
            {
              v80 = OUTLINED_FUNCTION_4_33();
              v83 = testFldeq(v80, v81, v82, 2);
              v43 = v27;
              if (!v83)
              {
                v84 = advance_tok(v2);
                v43 = v27;
                if (!v84)
                {
                  goto LABEL_44;
                }
              }
            }
          }

          continue;
        case 13:
LABEL_44:
          savescptr(v2, 13, v106);
          v85 = OUTLINED_FUNCTION_63_8();
          bspush_ca_scan(v85, v86);
          OUTLINED_FUNCTION_2_35();
          v87 = test_string_s();
          v43 = v27;
          if (v87)
          {
            continue;
          }

          v88 = OUTLINED_FUNCTION_63_8();
          bspush_ca_scan(v88, v89);
          OUTLINED_FUNCTION_16_28();
LABEL_47:
          v90 = test_string_s();
          v43 = v27;
          if (v90)
          {
            continue;
          }

LABEL_48:
          v91 = OUTLINED_FUNCTION_31_18();
          savescptr(v91, v92, v93);
LABEL_49:
          v94 = OUTLINED_FUNCTION_66_8();
          starttest(v94, v95);
          OUTLINED_FUNCTION_34_16();
          bspush_ca_boa();
          OUTLINED_FUNCTION_40_11();
          v96 = end_of_word();
          goto LABEL_50;
        case 14:
          goto LABEL_49;
        case 15:
          *(v2 + 2822) = *(v2 + 2830);
          convert_1_or_2_digits();
          goto LABEL_31;
        case 16:
          bspop_boa(v2);
          goto LABEL_4;
        case 17:
LABEL_31:
          v62 = OUTLINED_FUNCTION_92_5();
          starttest(v62, v63);
          lpta_loadpn(v2, v106);
          OUTLINED_FUNCTION_78_8();
          if (compare_ptas(v2) || testneq(v2))
          {
            goto LABEL_33;
          }

          bspush_ca_boa();
          v97 = OUTLINED_FUNCTION_93_5();
          v99 = lpta_loadp_setscan_r(v97, v98);
          v43 = v27;
          if (v99)
          {
            continue;
          }

          OUTLINED_FUNCTION_16_28();
          goto LABEL_55;
        case 18:
LABEL_33:
          v64 = OUTLINED_FUNCTION_50_9();
          lpta_rpta_loadp(v64, v65, &v109);
          v66 = OUTLINED_FUNCTION_3_34();
          inserted = insert_2pt_s(v66, v67, 5, &unk_2806BC167, v68);
          v43 = v27;
          if (inserted)
          {
            continue;
          }

          starttest_l(v2, 23);
          bspush_ca_boa();
          v70 = OUTLINED_FUNCTION_50_9();
          v72 = lpta_loadp_setscan_l(v70, v71);
          v43 = v27;
          if (v72)
          {
            continue;
          }

          OUTLINED_FUNCTION_4_33();
LABEL_55:
          v96 = test_string_s();
LABEL_50:
          if (v96)
          {
            v43 = v27;
          }

          else
          {
            v43 = 1;
          }

          continue;
        case 19:
          bspop_boa(v2);
          *(v2 + 2822) = *(v2 + 2826);
          starttest(v2, 20);
          v47 = OUTLINED_FUNCTION_93_5();
          if (lpta_loadp_setscan_r(v47, v48))
          {
            goto LABEL_27;
          }

          OUTLINED_FUNCTION_16_28();
          if (test_string_s())
          {
            goto LABEL_27;
          }

          v49 = OUTLINED_FUNCTION_93_5();
          lpta_rpta_loadp(v49, v50, v106);
          v51 = OUTLINED_FUNCTION_3_34();
          if (insert_2pt_s(v51, v52, 4, &unk_2806BC133, v53))
          {
            goto LABEL_27;
          }

          goto LABEL_28;
        case 20:
LABEL_27:
          v54 = OUTLINED_FUNCTION_104_2();
          starttest(v54, v55);
          OUTLINED_FUNCTION_93_5();
          convert_por_double();
          goto LABEL_28;
        case 21:
LABEL_28:
          v56 = OUTLINED_FUNCTION_50_9();
          lpta_rpta_loadp(v56, v57, v107);
          v58 = OUTLINED_FUNCTION_3_34();
          v61 = insert_2pt_s(v58, v59, 3, &unk_2806BC0E9, v60);
          v43 = v27;
          if (v61)
          {
            continue;
          }

          v100 = OUTLINED_FUNCTION_68_8();
          lpta_loadpn(v100, v101);
          rpta_loadpn(v2, &v109);
          v102 = compare_ptas(v2);
          if (!v102 && !testneq(v2))
          {
            delete_inp_from_left();
          }

LABEL_60:
          *(v104 + 8) = v110;
          vretproc(v2);
          break;
        case 22:
        case 23:
          goto LABEL_60;
        case 24:
          bspop_boa(v2);
          OUTLINED_FUNCTION_46_10();
          OUTLINED_FUNCTION_35_15();
          v103 = OUTLINED_FUNCTION_20_24();
          insert_l(v103);
          goto LABEL_60;
        default:
          goto LABEL_4;
      }

      break;
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_69_8();
}

uint64_t convert_por_date()
{
  OUTLINED_FUNCTION_6_32();
  v192 = *MEMORY[0x277D85DE8];
  v181 = 0;
  v182 = 0;
  v179 = 0;
  v180 = 0;
  v176 = 0;
  v177 = 0;
  v178 = 0;
  v174 = 0;
  v175 = 0;
  v172 = 0;
  v173 = 0;
  OUTLINED_FUNCTION_83_6();
  v163 = 0;
  v164 = 0;
  v165 = 0;
  OUTLINED_FUNCTION_38_13();
  bzero(&v140, v2);
  OUTLINED_FUNCTION_37_14();
  OUTLINED_FUNCTION_108_2(v3, v4);
  v5 = setjmp(v1);
  if (v5)
  {
    goto LABEL_4;
  }

  if (OUTLINED_FUNCTION_87_6(v5, v6, v7, v8, v9, v10, v11, v12, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191))
  {
    goto LABEL_4;
  }

  v13 = OUTLINED_FUNCTION_10_32();
  get_parm(v13, v14, v15, -6);
  v16 = OUTLINED_FUNCTION_42_10();
  get_parm(v16, v17, v18, -6);
  WORD2(v178) = 0;
  LODWORD(v178) = 0;
  LODWORD(v176) = -65535;
  v19 = OUTLINED_FUNCTION_68_8();
  push_ptr_init(v19, v20);
  v21 = OUTLINED_FUNCTION_76_8();
  v23 = push_ptr_init(v21, v22);
  OUTLINED_FUNCTION_99_4(v23, v24, v25, v26, v27, v28, v29, v30, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170);
  v31 = OUTLINED_FUNCTION_52_9();
  push_ptr_init(v31, v32);
  v33 = OUTLINED_FUNCTION_54_9();
  v35 = push_ptr_init(v33, v34);
  WORD2(v165) = 0;
  LODWORD(v165) = 0;
  LODWORD(v163) = -65535;
  OUTLINED_FUNCTION_82_7(v35, v36, &null_str_11);
  v37 = OUTLINED_FUNCTION_58_9();
  starttest(v37, v38);
  v39 = OUTLINED_FUNCTION_34_16();
  if (lpta_loadp_setscan_r(v39, v40))
  {
LABEL_4:
    vretproc(v0);
    result = 94;
    goto LABEL_5;
  }

  v43 = OUTLINED_FUNCTION_58_9();
  bspush_ca_scan(v43, v44);
  v45 = OUTLINED_FUNCTION_4_33();
  if (testFldeq(v45, v46, v47, 2) || advance_tok(v0))
  {
    goto LABEL_15;
  }

LABEL_8:
  v48 = OUTLINED_FUNCTION_4_33();
  if (testFldeq(v48, v49, v50, 2) || advance_tok(v0))
  {
    goto LABEL_15;
  }

LABEL_10:
  OUTLINED_FUNCTION_67_8();
  v51 = OUTLINED_FUNCTION_56_9();
  savescptr(v51, v52, v53);
  v54 = OUTLINED_FUNCTION_28_19();
  bspush_ca_scan(v54, v55);
LABEL_11:
  OUTLINED_FUNCTION_2_35();
  if (test_string_s())
  {
    goto LABEL_15;
  }

LABEL_12:
  v56 = OUTLINED_FUNCTION_77_8();
  if (savetok(v56, v57))
  {
    goto LABEL_15;
  }

LABEL_13:
  OUTLINED_FUNCTION_64_8();
  v58 = OUTLINED_FUNCTION_91_5();
  savescptr(v58, v59, v60);
  v61 = OUTLINED_FUNCTION_28_19();
  bspush_ca_scan(v61, v62);
  OUTLINED_FUNCTION_2_35();
  if (test_string_s())
  {
    goto LABEL_15;
  }

  v63 = OUTLINED_FUNCTION_22_23();
  bspush_ca_scan(v63, v64);
LABEL_29:
  OUTLINED_FUNCTION_2_35();
  if (test_string_s())
  {
    goto LABEL_15;
  }

  while (1)
  {
LABEL_30:
    v81 = OUTLINED_FUNCTION_101_2();
    savescptr(v81, v82, v83);
    if (advance_tok(v0))
    {
      goto LABEL_15;
    }

    v84 = OUTLINED_FUNCTION_45_10();
    if (savetok(v84, v85))
    {
      goto LABEL_15;
    }

    v86 = OUTLINED_FUNCTION_33_17();
    if (testeq_tvars(v86, v87, v88))
    {
      goto LABEL_15;
    }

LABEL_33:
    v89 = OUTLINED_FUNCTION_89_6();
    savescptr(v89, v90, v91);
    v92 = OUTLINED_FUNCTION_28_19();
    bspush_ca_scan(v92, v93);
    v94 = OUTLINED_FUNCTION_4_33();
    if (testFldeq(v94, v95, v96, 2))
    {
      goto LABEL_15;
    }

    if (advance_tok(v0))
    {
      goto LABEL_15;
    }

    v97 = OUTLINED_FUNCTION_4_33();
    if (testFldeq(v97, v98, v99, 2) || advance_tok(v0))
    {
      goto LABEL_15;
    }

LABEL_37:
    v100 = OUTLINED_FUNCTION_62_8();
    savescptr(v100, v101, v102);
LABEL_38:
    v103 = OUTLINED_FUNCTION_4_33();
    if (testFldeq(v103, v104, v105, 2))
    {
      goto LABEL_15;
    }

    if (advance_tok(v0))
    {
      goto LABEL_15;
    }

    v106 = OUTLINED_FUNCTION_4_33();
    if (testFldeq(v106, v107, v108, 2) || advance_tok(v0))
    {
      goto LABEL_15;
    }

LABEL_42:
    v109 = OUTLINED_FUNCTION_31_18();
    savescptr(v109, v110, v111);
    OUTLINED_FUNCTION_40_11();
    if (end_of_word())
    {
      goto LABEL_15;
    }

LABEL_43:
    *(v0 + 2822) = *(v0 + 2834);
    v112 = OUTLINED_FUNCTION_28_19();
    starttest(v112, v113);
    v114 = OUTLINED_FUNCTION_30_18();
    if (lpta_loadp_setscan_r(v114, v115))
    {
      break;
    }

    v138 = OUTLINED_FUNCTION_28_19();
    bspush_ca_scan(v138, v139);
LABEL_24:
    OUTLINED_FUNCTION_49_9();
    if (!test_string_s())
    {
      *(v0 + 136) = 1;
      if (!OUTLINED_FUNCTION_39_12())
      {
        v72 = OUTLINED_FUNCTION_56_9();
        lpta_rpta_loadp(v72, v73, v74);
        v75 = OUTLINED_FUNCTION_3_34();
        if (!insert_2pt_s(v75, v76, 8, v77, v78))
        {
          goto LABEL_45;
        }
      }
    }

    do
    {
LABEL_15:
      while (2)
      {
        v65 = *(v0 + 104);
        if (v65)
        {
          v66 = OUTLINED_FUNCTION_47_10(v65);
        }

        else
        {
          v66 = OUTLINED_FUNCTION_74_8();
        }

        switch(v66)
        {
          case 2:
            goto LABEL_8;
          case 3:
            goto LABEL_10;
          case 4:
            v136 = OUTLINED_FUNCTION_28_19();
            bspush_ca_scan(v136, v137);
            goto LABEL_11;
          case 5:
            goto LABEL_12;
          case 6:
            goto LABEL_11;
          case 7:
            goto LABEL_13;
          case 8:
            v67 = OUTLINED_FUNCTION_28_19();
            bspush_ca_scan(v67, v68);
            OUTLINED_FUNCTION_2_35();
            if (test_string_s())
            {
              continue;
            }

            break;
          case 9:
            v79 = OUTLINED_FUNCTION_28_19();
            bspush_ca_scan(v79, v80);
            goto LABEL_29;
          case 10:
          case 12:
            goto LABEL_30;
          case 11:
            goto LABEL_29;
          case 13:
            goto LABEL_20;
          case 14:
            goto LABEL_33;
          case 15:
            goto LABEL_38;
          case 16:
            goto LABEL_37;
          case 17:
            goto LABEL_42;
          case 18:
            goto LABEL_43;
          case 19:
            goto LABEL_44;
          case 20:
            OUTLINED_FUNCTION_2_35();
            if (!test_string_s())
            {
              goto LABEL_24;
            }

            continue;
          case 21:
            goto LABEL_24;
          case 22:
            goto LABEL_45;
          case 23:
            goto LABEL_47;
          case 24:
            goto LABEL_50;
          case 25:
          case 26:
            goto LABEL_51;
          default:
            goto LABEL_4;
        }

        break;
      }

LABEL_20:
      v69 = OUTLINED_FUNCTION_4_33();
    }

    while (testFldeq(v69, v70, v71, 2) || advance_tok(v0));
  }

LABEL_44:
  v116 = OUTLINED_FUNCTION_28_19();
  starttest(v116, v117);
  OUTLINED_FUNCTION_56_9();
  convert_1_or_2_digits();
LABEL_45:
  v118 = OUTLINED_FUNCTION_91_5();
  lpta_rpta_loadp(v118, v119, v120);
  v121 = OUTLINED_FUNCTION_3_34();
  if (insert_2pt_s(v121, v122, 4, v123, v124))
  {
    goto LABEL_15;
  }

  v125 = OUTLINED_FUNCTION_28_19();
  starttest_l(v125, v126);
  OUTLINED_FUNCTION_101_2();
  convert_1_or_2_digits();
LABEL_47:
  v127 = OUTLINED_FUNCTION_89_6();
  lpta_rpta_loadp(v127, v128, v129);
  v130 = OUTLINED_FUNCTION_3_34();
  if (insert_2pt_s(v130, v131, 3, v132, v133))
  {
    goto LABEL_15;
  }

  v134 = OUTLINED_FUNCTION_54_9();
  lpta_loadpn(v134, v135);
  OUTLINED_FUNCTION_78_8();
  if (compare_ptas(v0) || testneq(v0))
  {
LABEL_50:
    convert_por_double();
  }

  else
  {
    *(v0 + 2898) = 4;
    convert_large_numbers();
  }

LABEL_51:
  OUTLINED_FUNCTION_97_5(v180);
  result = 0;
LABEL_5:
  v42 = *MEMORY[0x277D85DE8];
  return result;
}

void add_por_point_digits()
{
  OUTLINED_FUNCTION_70_8();
  OUTLINED_FUNCTION_6_32();
  v43 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_83_6();
  OUTLINED_FUNCTION_38_13();
  bzero(v35, v1);
  OUTLINED_FUNCTION_37_14();
  bzero(v42, v2);
  if (setjmp(v42))
  {
    goto LABEL_5;
  }

  if (ventproc(v0, v35, v41, v40, v39, v42))
  {
    goto LABEL_5;
  }

  v3 = OUTLINED_FUNCTION_10_32();
  get_parm(v3, v4, v5, -6);
  v6 = OUTLINED_FUNCTION_42_10();
  get_parm(v6, v7, v8, -6);
  v9 = OUTLINED_FUNCTION_54_9();
  push_ptr_init(v9, v10);
  fence_33(v0, 0, &null_str_11);
  v11 = OUTLINED_FUNCTION_58_9();
  starttest(v11, v12);
  v13 = OUTLINED_FUNCTION_34_16();
  if (lpta_loadp_setscan_r(v13, v14) || (OUTLINED_FUNCTION_49_9(), test_string_s()))
  {
LABEL_5:
    vretproc(v0);
  }

  else
  {
    v16 = 0;
    while (2)
    {
      savescptr(v0, 2, v36);
LABEL_9:
      while (1)
      {
        v17 = OUTLINED_FUNCTION_49_9();
        if (testFldeq(v17, v18, 3, 2) || advance_tok(v0))
        {
          break;
        }

        bspush_ca_scan(v0, 3);
      }

      v19 = v16;
LABEL_13:
      v20 = *(v0 + 104);
      if (v20)
      {
        v21 = OUTLINED_FUNCTION_47_10(v20);
        v16 = v22;
      }

      else
      {
        v21 = vback(v0, v19);
        v16 = 0;
      }

      switch(v21)
      {
        case 2:
          continue;
        case 3:
          savescptr(v0, 3, v37);
          copyvar(v0, (v0 + 2820), (v0 + 2868));
          v23 = OUTLINED_FUNCTION_104_2();
          lpta_rpta_loadp(v23, v24, v36);
          v25 = OUTLINED_FUNCTION_49_9();
          inserted = insert_2pt_s(v25, v26, 9, &unk_2806BC2F2, 0);
          v19 = v16;
          if (inserted)
          {
            goto LABEL_13;
          }

          starttest(v0, 5);
          v28 = OUTLINED_FUNCTION_66_8();
          if (lpta_loadp_setscan_r(v28, v29))
          {
            goto LABEL_26;
          }

          bspush_ca_scan_boa();
          v30 = OUTLINED_FUNCTION_49_9();
          if (testFldeq(v30, v31, 0, 53))
          {
            v19 = v16;
          }

          else
          {
            v19 = 1;
          }

          goto LABEL_13;
        case 4:
          goto LABEL_9;
        case 5:
LABEL_26:
          OUTLINED_FUNCTION_89_6();
          single_chars();
          goto LABEL_27;
        case 6:
          bspop_boa(v0);
          v32 = advance_tok(v0);
          v19 = v16;
          if (v32)
          {
            goto LABEL_13;
          }

          v33 = advance_tok(v0);
          v19 = v16;
          if (v33)
          {
            goto LABEL_13;
          }

          *(v0 + 136) = 1;
          v34 = OUTLINED_FUNCTION_39_12();
          v19 = v16;
          if (v34)
          {
            goto LABEL_13;
          }

          OUTLINED_FUNCTION_89_6();
          convert_por_double();
          goto LABEL_27;
        case 7:
        case 8:
LABEL_27:
          *(v0 + 2614) = *(v0 + 2642);
          break;
        case 9:
          goto LABEL_28;
        default:
          goto LABEL_5;
      }

      break;
    }

LABEL_28:
    OUTLINED_FUNCTION_97_5(v38);
  }

  v15 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_69_8();
}

void process_por_fraction()
{
  OUTLINED_FUNCTION_70_8();
  OUTLINED_FUNCTION_6_32();
  v86 = *MEMORY[0x277D85DE8];
  v80 = 0;
  v81 = 0;
  v78 = 0;
  v79 = 0;
  v77[0] = 0;
  v77[1] = 0;
  v76[0] = 0;
  v76[1] = 0;
  v75[0] = 0;
  v75[1] = 0;
  v73 = 0;
  v74 = 0;
  OUTLINED_FUNCTION_38_13();
  bzero(v72, v1);
  OUTLINED_FUNCTION_37_14();
  bzero(v85, v2);
  if (setjmp(v85))
  {
    goto LABEL_4;
  }

  if (ventproc(v0, v72, v84, v83, v82, v85))
  {
    goto LABEL_4;
  }

  v3 = OUTLINED_FUNCTION_10_32();
  get_parm(v3, v4, v5, -6);
  v6 = OUTLINED_FUNCTION_42_10();
  get_parm(v6, v7, v8, -6);
  v9 = OUTLINED_FUNCTION_68_8();
  push_ptr_init(v9, v10);
  v11 = OUTLINED_FUNCTION_76_8();
  v13 = push_ptr_init(v11, v12);
  OUTLINED_FUNCTION_99_4(v13, v14, v15, v16, v17, v18, v19, v20, v67, v68, v69, v70, v71, v72[0], v72[1], v72[2], v72[3], v72[4], v72[5], v72[6], v72[7], v72[8], v72[9], v72[10], v72[11], v72[12], v72[13], v72[14], v72[15], v72[16], v72[17], v72[18], v72[19], v72[20], v72[21], v72[22], v73, v74, v75[0]);
  v21 = OUTLINED_FUNCTION_52_9();
  push_ptr_init(v21, v22);
  fence_33(v0, 0, &null_str_11);
  v23 = OUTLINED_FUNCTION_58_9();
  starttest(v23, v24);
  v25 = OUTLINED_FUNCTION_34_16();
  if (lpta_loadp_setscan_r(v25, v26))
  {
LABEL_4:
    vretproc(v0);
    goto LABEL_5;
  }

  bspush_boa(v0);
  v28 = 0;
  do
  {
LABEL_7:
    v29 = OUTLINED_FUNCTION_50_9();
    bspush_ca_scan(v29, v30);
    OUTLINED_FUNCTION_2_35();
  }

  while (!test_string_s());
  v31 = v28;
  while (2)
  {
    v32 = *(v0 + 104);
    if (v32)
    {
      v33 = OUTLINED_FUNCTION_47_10(v32);
      v28 = v34;
    }

    else
    {
      v33 = vback(v0, v31);
      v28 = 0;
    }

    switch(v33)
    {
      case 2:
        bspush_nboa(v0);
        goto LABEL_14;
      case 3:
        goto LABEL_7;
      case 4:
LABEL_14:
        v35 = OUTLINED_FUNCTION_66_8();
        savescptr(v35, v36, v77);
        v37 = OUTLINED_FUNCTION_93_5();
        bspush_ca_scan(v37, v38);
        v39 = OUTLINED_FUNCTION_4_33();
        v42 = testFldeq(v39, v40, v41, 3);
        v31 = v28;
        if (!v42)
        {
          goto LABEL_24;
        }

        continue;
      case 5:
        v43 = OUTLINED_FUNCTION_4_33();
        v46 = testFldeq(v43, v44, v45, 2);
        v31 = v28;
        if (v46)
        {
          continue;
        }

        v47 = advance_tok(v0);
        v31 = v28;
        if (v47)
        {
          continue;
        }

        OUTLINED_FUNCTION_2_35();
        v48 = test_string_s();
        v31 = v28;
        if (v48)
        {
          continue;
        }

        v49 = OUTLINED_FUNCTION_4_33();
        v52 = testFldeq(v49, v50, v51, 2);
        v31 = v28;
        if (v52)
        {
          continue;
        }

        bspush_ca_scan_boa();
        v53 = OUTLINED_FUNCTION_27_20();
        v55 = 53;
        goto LABEL_22;
      case 6:
        goto LABEL_25;
      case 7:
        bspop_boa(v0);
        bspush_ca_scan_boa();
        v53 = OUTLINED_FUNCTION_27_20();
        v55 = 54;
LABEL_22:
        v56 = testFldeq(v53, v54, 0, v55);
        goto LABEL_28;
      case 8:
        bspop_boa(v0);
LABEL_24:
        v57 = advance_tok(v0);
        v31 = v28;
        if (v57)
        {
          continue;
        }

LABEL_25:
        v58 = OUTLINED_FUNCTION_104_2();
        savescptr(v58, v59, &v78);
        OUTLINED_FUNCTION_34_16();
        v60 = end_of_word();
        v31 = v28;
        if (v60)
        {
          continue;
        }

LABEL_26:
        *(v0 + 2822) = *(v0 + 2842);
        v61 = OUTLINED_FUNCTION_92_5();
        starttest(v61, v62);
        OUTLINED_FUNCTION_34_16();
        find_next_word();
        if (!v63)
        {
          bspush_ca_boa();
          lpta_rpta_loadp(v0, v76, v75);
          v64 = OUTLINED_FUNCTION_27_20();
          v56 = setd_lookup(v64, v65, 54);
LABEL_28:
          if (v56)
          {
            v31 = v28;
          }

          else
          {
            v31 = 1;
          }

          continue;
        }

LABEL_34:
        convert_por_fraction();
LABEL_35:
        *(v0 + 3010) = 0;
        OUTLINED_FUNCTION_97_5(v79);
LABEL_5:
        v27 = *MEMORY[0x277D85DE8];
        OUTLINED_FUNCTION_69_8();
        return;
      case 9:
        goto LABEL_26;
      case 10:
        goto LABEL_34;
      case 11:
        bspop_boa(v0);
        copy_string();
        goto LABEL_33;
      case 12:
LABEL_33:
        OUTLINED_FUNCTION_46_10();
        OUTLINED_FUNCTION_35_15();
        v66 = OUTLINED_FUNCTION_20_24();
        insert_l(v66);
        goto LABEL_34;
      case 13:
      case 14:
        goto LABEL_35;
      default:
        goto LABEL_4;
    }
  }
}

void por_monetary_exp()
{
  OUTLINED_FUNCTION_70_8();
  v60 = v0;
  v61 = v1;
  v3 = v2;
  v76 = *MEMORY[0x277D85DE8];
  v70 = 0;
  v71 = 0;
  v68 = 0;
  v69 = 0;
  v67 = 0;
  v66[0] = 0;
  v66[1] = 0;
  OUTLINED_FUNCTION_75_8();
  v63 = 0;
  OUTLINED_FUNCTION_38_13();
  bzero(v62, v4);
  OUTLINED_FUNCTION_37_14();
  bzero(v75, v5);
  if (!setjmp(v75) && !ventproc(v3, v62, v74, v73, v72, v75))
  {
    v6 = OUTLINED_FUNCTION_51_9();
    get_parm(v6, v7, v60, -6);
    v8 = OUTLINED_FUNCTION_68_8();
    get_parm(v8, v9, v61, -6);
    LOWORD(v67) = -4;
    push_ptr_init(v3, v66);
    v10 = OUTLINED_FUNCTION_73_8();
    push_ptr_init(v10, v11);
    v12 = OUTLINED_FUNCTION_32_17();
    v14 = push_ptr_init(v12, v13);
    v63 = 65532;
    OUTLINED_FUNCTION_82_7(v14, v15, &null_str_11);
    HIWORD(v67) = 0;
    v16 = OUTLINED_FUNCTION_58_9();
    starttest(v16, v17);
    v18 = OUTLINED_FUNCTION_51_9();
    if (!lpta_loadp_setscan_r(v18, v19))
    {
      v21 = OUTLINED_FUNCTION_28_19();
      bspush_ca_scan(v21, v22);
      OUTLINED_FUNCTION_2_35();
      v23 = test_string_s();
      v24 = 0;
      v25 = 0;
      if (v23)
      {
LABEL_8:
        while (2)
        {
          v28 = v3[13];
          if (v28)
          {
            v29 = OUTLINED_FUNCTION_47_10(v28);
            v24 = v30;
          }

          else
          {
            v29 = vback(v3, v25);
            v24 = 0;
          }

          v31 = v24;
          switch(v29)
          {
            case 2:
              v32 = OUTLINED_FUNCTION_34_16();
              bspush_ca_scan(v32, v33);
              OUTLINED_FUNCTION_16_28();
              v34 = test_string_s();
              v25 = v24;
              if (v34)
              {
                continue;
              }

              goto LABEL_24;
            case 3:
              goto LABEL_7;
            case 4:
              goto LABEL_26;
            case 5:
              OUTLINED_FUNCTION_2_35();
              v35 = test_string_s();
              v25 = v24;
              if (v35)
              {
                continue;
              }

              v36 = OUTLINED_FUNCTION_66_8();
              bspush_ca_scan(v36, v37);
              v38 = OUTLINED_FUNCTION_92_5();
              bspush_ca_scan(v38, v39);
              OUTLINED_FUNCTION_2_35();
              goto LABEL_17;
            case 6:
LABEL_24:
              OUTLINED_FUNCTION_65_8();
              v27 = &v65;
              goto LABEL_25;
            case 7:
              v41 = OUTLINED_FUNCTION_51_9();
              bspush_ca_scan(v41, v42);
              OUTLINED_FUNCTION_2_35();
              goto LABEL_21;
            case 8:
              OUTLINED_FUNCTION_2_35();
LABEL_17:
              v40 = test_string_s();
              v25 = v24;
              if (!v40)
              {
                goto LABEL_23;
              }

              continue;
            case 9:
LABEL_23:
              v26 = 9;
              v27 = &v64;
              goto LABEL_25;
            case 10:
              OUTLINED_FUNCTION_2_35();
LABEL_21:
              v43 = test_string_s();
              v31 = v24;
              v25 = v24;
              if (!v43)
              {
                goto LABEL_26;
              }

              continue;
            case 11:
              v46 = v24;
              goto LABEL_27;
            case 12:
              goto LABEL_30;
            case 13:
            case 16:
              goto LABEL_36;
            case 14:
              goto LABEL_32;
            case 15:
              goto LABEL_34;
            case 17:
              *(v60 + 8) = v71;
              *(v61 + 8) = v69;
              vretproc(v3);
              goto LABEL_5;
            case 18:
              bspop_boa(v3);
              goto LABEL_4;
            default:
              goto LABEL_4;
          }
        }
      }

LABEL_7:
      OUTLINED_FUNCTION_67_8();
      v27 = v66;
LABEL_25:
      savescptr(v3, v26, v27);
      v31 = v24;
LABEL_26:
      v44 = v31;
      OUTLINED_FUNCTION_2_35();
      v45 = test_string_s();
      v46 = v44;
      v25 = v44;
      if (v45)
      {
        goto LABEL_8;
      }

LABEL_27:
      savescptr(v3, 11, &v70);
      lpta_loadpn(v3, v66);
      OUTLINED_FUNCTION_78_8();
      if (compare_ptas(v3))
      {
        v24 = v46;
      }

      else
      {
        v47 = testneq(v3);
        v48 = 2950;
        v24 = v46;
        if (!v47)
        {
LABEL_35:
          v24 = v46;
          HIWORD(v67) = *(v3 + v48);
LABEL_36:
          v55 = OUTLINED_FUNCTION_28_19();
          starttest(v55, v56);
          OUTLINED_FUNCTION_28_19();
          bspush_ca_boa();
          v57 = OUTLINED_FUNCTION_51_9();
          move_i(v57, v58, v59);
          if (convert_por_monetary_exp(v3, &v70, &v68, &v67))
          {
            v25 = v24;
          }

          else
          {
            v25 = 1;
          }

          goto LABEL_8;
        }
      }

LABEL_30:
      v46 = v24;
      v49 = OUTLINED_FUNCTION_73_8();
      lpta_loadpn(v49, v50);
      OUTLINED_FUNCTION_78_8();
      if (compare_ptas(v3) || (v51 = testneq(v3), v48 = 2922, v51))
      {
LABEL_32:
        v46 = v24;
        v52 = OUTLINED_FUNCTION_32_17();
        lpta_loadpn(v52, v53);
        OUTLINED_FUNCTION_78_8();
        if (compare_ptas(v3) || (v54 = testneq(v3), v48 = 5930, v54))
        {
LABEL_34:
          v48 = 5934;
          v46 = v24;
        }
      }

      goto LABEL_35;
    }
  }

LABEL_4:
  vretproc(v3);
LABEL_5:
  v20 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_69_8();
}

uint64_t convert_por_monetary_exp(uint64_t a1, __int16 *a2, uint64_t a3, __int16 *a4)
{
  v277 = *MEMORY[0x277D85DE8];
  v272[0] = 0;
  v272[1] = 0;
  v270 = 0;
  v271 = 0;
  v268[1] = 0;
  v269 = 0;
  v267 = 0;
  v268[0] = 0;
  OUTLINED_FUNCTION_43_10();
  v264[0] = 0;
  OUTLINED_FUNCTION_38_13();
  bzero(v263, v7);
  OUTLINED_FUNCTION_37_14();
  bzero(v276, v8);
  if (setjmp(v276) || ventproc(a1, v263, v275, v274, v273, v276))
  {
    goto LABEL_3;
  }

  v11 = OUTLINED_FUNCTION_34_16();
  get_parm(v11, v12, a2, -6);
  v13 = OUTLINED_FUNCTION_42_10();
  get_parm(v13, v14, v15, -6);
  get_parm(a1, &v269 + 4, a4, -4);
  v16 = OUTLINED_FUNCTION_31_18();
  get_parm(v16, v17, v18, -4);
  push_ptr_init(a1, v268);
  v19 = OUTLINED_FUNCTION_77_8();
  push_ptr_init(v19, v20);
  v21 = OUTLINED_FUNCTION_68_8();
  push_ptr_init(v21, v22);
  v23 = OUTLINED_FUNCTION_76_8();
  v25 = push_ptr_init(v23, v24);
  OUTLINED_FUNCTION_99_4(v25, v26, v27, v28, v29, v30, v31, v32, v262, v263[0], v263[1], v263[2], v263[3], v263[4], v263[5], v263[6], v263[7], v263[8], v263[9], v263[10], v263[11], v263[12], v263[13], v263[14], v263[15], v263[16], v263[17], v263[18], v263[19], v263[20], v263[21], v263[22], v264[0], v264[1], v264[2], v264[3], v264[4], v264[5], v265);
  v33 = OUTLINED_FUNCTION_52_9();
  push_ptr_init(v33, v34);
  v35 = OUTLINED_FUNCTION_54_9();
  push_ptr_init(v35, v36);
  v37 = OUTLINED_FUNCTION_44_10();
  v39 = push_ptr_init(v37, v38);
  v40 = 0;
  OUTLINED_FUNCTION_82_7(v39, v41, &null_str_11);
  starttest(a1, 1);
  v42 = OUTLINED_FUNCTION_34_16();
  v44 = 0;
  if (lpta_loadp_setscan_r(v42, v43))
  {
LABEL_6:
    v45 = v40;
    v46 = OUTLINED_FUNCTION_28_19();
    starttest(v46, v47);
    v48 = OUTLINED_FUNCTION_30_18();
    if (lpta_loadp_setscan_r(v48, v49))
    {
LABEL_3:
      vretproc(a1);
      result = 94;
      goto LABEL_4;
    }

    v50 = OUTLINED_FUNCTION_28_19();
    bspush_ca_scan(v50, v51);
    OUTLINED_FUNCTION_2_35();
    if (!test_string_s())
    {
LABEL_8:
      OUTLINED_FUNCTION_94_5();
      savescptr(a1, 31, v272);
      v52 = OUTLINED_FUNCTION_28_19();
      bspush_ca_scan(v52, v53);
      OUTLINED_FUNCTION_2_35();
      if (!test_string_s())
      {
LABEL_9:
        OUTLINED_FUNCTION_94_5();
        v54 = OUTLINED_FUNCTION_62_8();
        savescptr(v54, v55, v56);
        v57 = OUTLINED_FUNCTION_4_33();
        if (!testFldeq(v57, v58, v59, 2) && !advance_tok(a1))
        {
          v60 = OUTLINED_FUNCTION_28_19();
          bspush_ca_scan(v60, v61);
          v62 = v44;
LABEL_12:
          v63 = v62;
          v64 = OUTLINED_FUNCTION_28_19();
          bspush_ca_scan(v64, v65);
          v66 = v45;
          v67 = v63;
LABEL_13:
          v68 = v67;
          v45 = v66;
          v69 = OUTLINED_FUNCTION_28_19();
          bspush_ca_scan(v69, v70);
          v71 = OUTLINED_FUNCTION_28_19();
          bspush_ca_scan(v71, v72);
LABEL_14:
          while (1)
          {
            OUTLINED_FUNCTION_2_35();
            if (test_string_s())
            {
              break;
            }

            v73 = OUTLINED_FUNCTION_4_33();
            if (testFldeq(v73, v74, v75, 2))
            {
              break;
            }

            if (advance_tok(a1))
            {
              break;
            }

            v76 = OUTLINED_FUNCTION_4_33();
            if (testFldeq(v76, v77, v78, 2))
            {
              break;
            }

            if (advance_tok(a1))
            {
              break;
            }

            v79 = OUTLINED_FUNCTION_4_33();
            if (testFldeq(v79, v80, v81, 2) || advance_tok(a1))
            {
              break;
            }

            v82 = OUTLINED_FUNCTION_34_16();
            bspush_ca_scan(v82, v83);
          }

          v44 = v68;
        }
      }
    }
  }

  else
  {
    v84 = OUTLINED_FUNCTION_28_19();
    bspush_ca_scan(v84, v85);
    OUTLINED_FUNCTION_2_35();
    v45 = 0;
    v44 = 0;
    if (!test_string_s())
    {
LABEL_23:
      OUTLINED_FUNCTION_94_5();
      savescptr(a1, 2, v272);
      v86 = OUTLINED_FUNCTION_4_33();
      if (!testFldeq(v86, v87, v88, 2) && !advance_tok(a1))
      {
        v89 = OUTLINED_FUNCTION_58_9();
        bspush_ca_scan(v89, v90);
        v91 = OUTLINED_FUNCTION_27_20();
        if (!testFldeq(v91, v92, 3, 2) && !advance_tok(a1))
        {
LABEL_136:
          OUTLINED_FUNCTION_94_5();
          savescptr(a1, 4, v268);
          v244 = OUTLINED_FUNCTION_58_9();
          bspush_ca_scan(v244, v245);
          v246 = OUTLINED_FUNCTION_27_20();
          if (!testFldeq(v246, v247, 3, 2))
          {
            v248 = advance_tok(a1);
            v95 = v45;
            v243 = v44;
            if (!v248)
            {
LABEL_138:
              v44 = v243;
              savescptr(a1, 5, v266);
LABEL_139:
              OUTLINED_FUNCTION_67_8();
              v249 = OUTLINED_FUNCTION_56_9();
              savescptr(v249, v250, v251);
              v252 = OUTLINED_FUNCTION_28_19();
              bspush_ca_scan(v252, v253);
LABEL_140:
              v45 = v95;
              OUTLINED_FUNCTION_64_8();
              v254 = OUTLINED_FUNCTION_91_5();
              savescptr(v254, v255, v256);
              OUTLINED_FUNCTION_2_35();
              if (!test_string_s())
              {
LABEL_141:
                OUTLINED_FUNCTION_94_5();
                while (1)
                {
                  v259 = OUTLINED_FUNCTION_4_33();
                  if (testFldeq(v259, v260, v261, 2) || advance_tok(a1))
                  {
                    break;
                  }

                  v257 = OUTLINED_FUNCTION_40_11();
                  bspush_ca_scan(v257, v258);
                }
              }
            }
          }
        }
      }
    }
  }

  v93 = v45;
LABEL_30:
  v94 = v44;
  while (2)
  {
    v95 = v93;
    v96 = *(a1 + 104);
    if (v96)
    {
      v97 = OUTLINED_FUNCTION_47_10(v96);
      v44 = v98;
    }

    else
    {
      v97 = vback(a1, v94);
      v44 = 0;
    }

    v99 = v97 - 1;
    v45 = v95;
    v62 = v44;
    v66 = v95;
    v67 = v44;
    v100 = v95;
    v101 = v95;
    LODWORD(v102) = v95;
    v103 = v95;
    switch(v99)
    {
      case 0:
        v40 = v95;
        goto LABEL_6;
      case 1:
        goto LABEL_23;
      case 2:
        goto LABEL_139;
      case 3:
        goto LABEL_136;
      case 4:
        v243 = v44;
        goto LABEL_138;
      case 5:
        OUTLINED_FUNCTION_65_8();
        v221 = OUTLINED_FUNCTION_101_2();
        savescptr(v221, v222, v223);
        bspush_boa(a1);
        goto LABEL_109;
      case 6:
        goto LABEL_140;
      case 7:
        goto LABEL_141;
      case 8:
        bspush_nboa(a1);
        OUTLINED_FUNCTION_28_19();
        bspush_ca_scan_boa();
        OUTLINED_FUNCTION_28_19();
        bspush_ca_scan_boa();
        goto LABEL_74;
      case 9:
LABEL_109:
        while (1)
        {
          OUTLINED_FUNCTION_2_35();
          if (test_string_s())
          {
            break;
          }

          v224 = OUTLINED_FUNCTION_22_23();
          bspush_ca_scan(v224, v225);
        }

        goto LABEL_110;
      case 10:
        OUTLINED_FUNCTION_4_33();
        test_string_s();
        OUTLINED_FUNCTION_41_10();
        if (v177)
        {
          continue;
        }

        goto LABEL_82;
      case 11:
        v170 = OUTLINED_FUNCTION_28_19();
        bspush_ca_scan(v170, v171);
LABEL_74:
        OUTLINED_FUNCTION_2_35();
        goto LABEL_75;
      case 12:
        goto LABEL_76;
      case 13:
        OUTLINED_FUNCTION_16_28();
LABEL_75:
        test_string_s();
        OUTLINED_FUNCTION_41_10();
        if (v172)
        {
          continue;
        }

LABEL_76:
        bspush_nboa(a1);
        OUTLINED_FUNCTION_4_33();
        test_string_s();
        OUTLINED_FUNCTION_41_10();
        if (v173)
        {
          continue;
        }

        v174 = OUTLINED_FUNCTION_28_19();
        bspush_ca_scan(v174, v175);
        OUTLINED_FUNCTION_16_28();
LABEL_79:
        test_string_s();
        OUTLINED_FUNCTION_41_10();
        if (v176)
        {
          continue;
        }

LABEL_83:
        bspush_nboa(a1);
LABEL_84:
        v181 = OUTLINED_FUNCTION_31_18();
        savescptr(v181, v182, v183);
        OUTLINED_FUNCTION_40_11();
        end_of_word();
        OUTLINED_FUNCTION_41_10();
        if (v184)
        {
          continue;
        }

        OUTLINED_FUNCTION_107_2();
LABEL_114:
        v229 = OUTLINED_FUNCTION_77_8();
        lpta_loadpn(v229, v230);
        OUTLINED_FUNCTION_78_8();
        if (compare_ptas(a1) || testneq(a1))
        {
LABEL_116:
          lpta_loadpn(a1, v268);
          OUTLINED_FUNCTION_78_8();
          if (compare_ptas(a1) || testneq(a1))
          {
LABEL_118:
            OUTLINED_FUNCTION_56_9();
            convert_por_single_digit();
          }

          else
          {
            OUTLINED_FUNCTION_56_9();
            convert_por_double();
          }
        }

        else
        {
          OUTLINED_FUNCTION_56_9();
          convert_por_hundreds();
        }

LABEL_119:
        v231 = OUTLINED_FUNCTION_76_8();
        lpta_loadpn(v231, v232);
        OUTLINED_FUNCTION_78_8();
        if (!compare_ptas(a1) && !testneq(a1))
        {
          OUTLINED_FUNCTION_101_2();
          add_por_point_digits();
        }

LABEL_122:
        v233 = OUTLINED_FUNCTION_52_9();
        lpta_loadpn(v233, v234);
        OUTLINED_FUNCTION_78_8();
        if (!compare_ptas(a1) && !testeq(a1))
        {
          OUTLINED_FUNCTION_46_10();
          OUTLINED_FUNCTION_35_15();
          v235 = OUTLINED_FUNCTION_29_19();
          insert_l(v235);
        }

LABEL_125:
        add_por_currency_units();
        goto LABEL_133;
      case 14:
        OUTLINED_FUNCTION_4_33();
        goto LABEL_79;
      case 15:
      case 16:
        goto LABEL_83;
      case 17:
LABEL_82:
        v178 = OUTLINED_FUNCTION_89_6();
        savescptr(v178, v179, v180);
        goto LABEL_83;
      case 18:
        goto LABEL_84;
      case 19:
        goto LABEL_114;
      case 20:
        goto LABEL_116;
      case 21:
      case 22:
      case 24:
        goto LABEL_119;
      case 23:
        goto LABEL_118;
      case 25:
        goto LABEL_122;
      case 26:
        goto LABEL_125;
      case 27:
      case 28:
      case 60:
        goto LABEL_133;
      case 30:
        goto LABEL_8;
      case 31:
        goto LABEL_9;
      case 32:
        v158 = OUTLINED_FUNCTION_4_33();
        testFldeq(v158, v159, v160, 2);
        OUTLINED_FUNCTION_41_10();
        if (!v161)
        {
          advance_tok(a1);
          v45 = v95;
          OUTLINED_FUNCTION_41_10();
          if (!v162)
          {
            goto LABEL_12;
          }
        }

        continue;
      case 33:
        goto LABEL_12;
      case 34:
        v153 = OUTLINED_FUNCTION_4_33();
        testFldeq(v153, v154, v155, 2);
        OUTLINED_FUNCTION_41_10();
        if (!v156)
        {
          advance_tok(a1);
          OUTLINED_FUNCTION_41_10();
          if (!v157)
          {
            goto LABEL_13;
          }
        }

        continue;
      case 35:
        goto LABEL_13;
      case 36:
      case 38:
        v104 = OUTLINED_FUNCTION_56_9();
        savescptr(v104, v105, v106);
        OUTLINED_FUNCTION_28_19();
        bspush_ca_scan_boa();
        OUTLINED_FUNCTION_2_35();
        test_string_s();
        OUTLINED_FUNCTION_41_10();
        if (v107)
        {
          continue;
        }

        goto LABEL_36;
      case 37:
        goto LABEL_96;
      case 39:
        v45 = v95;
        v68 = v44;
        goto LABEL_14;
      case 40:
        do
        {
          v202 = OUTLINED_FUNCTION_4_33();
          testFldeq(v202, v203, v204, 2);
          OUTLINED_FUNCTION_41_10();
          if (v205)
          {
            break;
          }

          advance_tok(a1);
          OUTLINED_FUNCTION_41_10();
          if (v206)
          {
            break;
          }

          v207 = OUTLINED_FUNCTION_4_33();
          testFldeq(v207, v208, v209, 2);
          OUTLINED_FUNCTION_41_10();
          if (v210)
          {
            break;
          }

          advance_tok(a1);
          OUTLINED_FUNCTION_41_10();
          if (v211)
          {
            break;
          }

          v212 = OUTLINED_FUNCTION_4_33();
          testFldeq(v212, v213, v214, 2);
          OUTLINED_FUNCTION_41_10();
          if (v215)
          {
            break;
          }

          advance_tok(a1);
          OUTLINED_FUNCTION_41_10();
          if (v216)
          {
            break;
          }

          v217 = OUTLINED_FUNCTION_28_19();
          bspush_ca_scan(v217, v218);
LABEL_96:
          v199 = OUTLINED_FUNCTION_28_19();
          bspush_ca_scan(v199, v200);
          OUTLINED_FUNCTION_2_35();
          test_string_s();
          OUTLINED_FUNCTION_41_10();
        }

        while (!v201);
        continue;
      case 41:
        goto LABEL_40;
      case 42:
LABEL_36:
        v108 = OUTLINED_FUNCTION_57_9();
        savescptr(v108, v109, v110);
        v111 = OUTLINED_FUNCTION_4_33();
        testFldeq(v111, v112, v113, 2);
        OUTLINED_FUNCTION_41_10();
        if (v114)
        {
          continue;
        }

        advance_tok(a1);
        OUTLINED_FUNCTION_41_10();
        if (v115)
        {
          continue;
        }

        v116 = OUTLINED_FUNCTION_4_33();
        testFldeq(v116, v117, v118, 2);
        OUTLINED_FUNCTION_41_10();
        if (v119)
        {
          continue;
        }

        advance_tok(a1);
        OUTLINED_FUNCTION_41_10();
        if (v120)
        {
          continue;
        }

LABEL_40:
        bspush_nboa(a1);
LABEL_41:
        savescptr(a1, 44, &v270);
        OUTLINED_FUNCTION_28_19();
        bspush_ca_scan_boa();
        v121 = OUTLINED_FUNCTION_4_33();
        testFldeq(v121, v122, v123, 2);
        OUTLINED_FUNCTION_41_10();
        if (!v124)
        {
          v125 = advance_tok(a1);
LABEL_87:
          if (v125)
          {
            v94 = v44;
          }

          else
          {
            v94 = 1;
          }

          v93 = v95;
        }

        continue;
      case 43:
        goto LABEL_41;
      case 44:
        bspop_boa(a1);
        v185 = OUTLINED_FUNCTION_28_19();
        starttest(v185, v186);
        OUTLINED_FUNCTION_28_19();
        bspush_ca_boa();
        v125 = end_of_word();
        goto LABEL_87;
      case 45:
        OUTLINED_FUNCTION_107_2();
        goto LABEL_44;
      case 46:
        bspop_boa(a1);
        goto LABEL_3;
      case 47:
LABEL_44:
        lpta_loadpn(a1, v272);
        v126 = OUTLINED_FUNCTION_54_9();
        rpta_loadpn(v126, v127);
        if (!compare_ptas(a1) && !testneq(a1))
        {
          v128 = OUTLINED_FUNCTION_62_8();
          lpta_rpta_loadp(v128, v129, v130);
          v131 = OUTLINED_FUNCTION_3_34();
          insert_2pt_s(v131, v132, 6, v133, v134);
        }

        goto LABEL_47;
      case 48:
LABEL_47:
        v135 = OUTLINED_FUNCTION_28_19();
        starttest(v135, v136);
        v137 = OUTLINED_FUNCTION_30_18();
        if (lpta_loadp_setscan_r(v137, v138))
        {
          goto LABEL_48;
        }

        goto LABEL_105;
      case 49:
LABEL_48:
        v139 = OUTLINED_FUNCTION_30_18();
        if (!lpta_loadp_setscan_r(v139, v140))
        {
          OUTLINED_FUNCTION_49_9();
          if (!test_string_s())
          {
            *(a1 + 136) = 1;
            if (!OUTLINED_FUNCTION_39_12())
            {
              *(a1 + 2906) = 1;
            }
          }
        }

        goto LABEL_52;
      case 50:
        OUTLINED_FUNCTION_102_2();
        OUTLINED_FUNCTION_39_12();
        OUTLINED_FUNCTION_41_10();
        if (v163)
        {
          continue;
        }

        v164 = OUTLINED_FUNCTION_28_19();
        starttest(v164, v165);
        v166 = OUTLINED_FUNCTION_28_19();
        bspush_ca(v166);
        v167 = OUTLINED_FUNCTION_68_8();
        lpta_loadpn(v167, v168);
        rpta_loadpn(a1, &v270);
        compare_ptas(a1);
        OUTLINED_FUNCTION_41_10();
        if (v169)
        {
          continue;
        }

        testeq(a1);
        goto LABEL_93;
      case 51:
LABEL_105:
        while (1)
        {
          OUTLINED_FUNCTION_2_35();
          if (test_string_s())
          {
            break;
          }

          v219 = OUTLINED_FUNCTION_28_19();
          bspush_ca_scan(v219, v220);
        }

LABEL_110:
        v93 = v95;
        goto LABEL_30;
      case 52:
      case 56:
        goto LABEL_55;
      case 53:
        v187 = OUTLINED_FUNCTION_7_32();
        lpta_loadp_setscan_r(v187, v188);
        OUTLINED_FUNCTION_41_10();
        if (v189)
        {
          continue;
        }

        OUTLINED_FUNCTION_16_28();
        test_string_s();
LABEL_93:
        OUTLINED_FUNCTION_41_10();
        if (!v190)
        {
          goto LABEL_94;
        }

        continue;
      case 54:
LABEL_94:
        v191 = OUTLINED_FUNCTION_56_9();
        lpta_rpta_loadp(v191, v192, v193);
        v194 = OUTLINED_FUNCTION_3_34();
        insert_2pt_s(v194, v195, 4, v196, v197);
        OUTLINED_FUNCTION_41_10();
        if (!v198)
        {
          goto LABEL_53;
        }

        continue;
      case 55:
      case 57:
        goto LABEL_53;
      case 58:
LABEL_52:
        OUTLINED_FUNCTION_56_9();
        convert_digits();
LABEL_53:
        add_por_currency_units();
        goto LABEL_54;
      case 59:
LABEL_54:
        *(a1 + 2906) = 0;
        v100 = 1;
LABEL_55:
        v102 = v100;
        v141 = OUTLINED_FUNCTION_44_10();
        lpta_loadpn(v141, v142);
        OUTLINED_FUNCTION_78_8();
        if (compare_ptas(a1) || testneq(a1))
        {
          goto LABEL_133;
        }

        v143 = OUTLINED_FUNCTION_7_32();
        if (!lpta_loadp_setscan_r(v143, v144))
        {
          OUTLINED_FUNCTION_16_28();
          if (!test_string_s())
          {
            v145 = OUTLINED_FUNCTION_28_19();
            starttest(v145, v146);
            v101 = v102;
            if (v102 == 1)
            {
              goto LABEL_133;
            }

LABEL_60:
            v147 = v101;
            lpta_rpta_loadp(a1, v264, &v270);
            v148 = OUTLINED_FUNCTION_3_34();
            inserted = insert_2pt_s(v148, v149, 4, v150, v151);
            v103 = v147;
            v93 = v147;
            v94 = v44;
            if (!inserted)
            {
              goto LABEL_129;
            }

            continue;
          }
        }

LABEL_111:
        v226 = v102;
        v227 = OUTLINED_FUNCTION_7_32();
        if (!lpta_loadp_setscan_r(v227, v228))
        {
          OUTLINED_FUNCTION_49_9();
          if (!test_string_s())
          {
            *(a1 + 2906) = 1;
          }
        }

LABEL_128:
        convert_por_double();
        v103 = v226;
LABEL_129:
        LODWORD(v95) = v103;
        add_por_subunits();
LABEL_130:
        if (v95 == 1)
        {
          v236 = OUTLINED_FUNCTION_57_9();
          lpta_rpta_loadp(v236, v237, v238);
          v239 = OUTLINED_FUNCTION_3_34();
          insert_2pt_s(v239, v240, 3, v241, v242);
        }

LABEL_132:
        *(a1 + 2906) = 0;
LABEL_133:
        *(a1 + 2614) = *(a1 + 2642);
        *(a1 + 3010) = 0;
        OUTLINED_FUNCTION_97_5(v271);
        result = 0;
LABEL_4:
        v10 = *MEMORY[0x277D85DE8];
        return result;
      case 61:
        goto LABEL_111;
      case 62:
        goto LABEL_60;
      case 63:
      case 64:
        goto LABEL_129;
      case 65:
        v226 = v95;
        goto LABEL_128;
      case 66:
        goto LABEL_130;
      case 67:
        goto LABEL_132;
      default:
        goto LABEL_3;
    }
  }
}

uint64_t assign_gender_to_currency()
{
  OUTLINED_FUNCTION_100_3();
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0;
  OUTLINED_FUNCTION_38_13();
  bzero(v8, v1);
  OUTLINED_FUNCTION_37_14();
  bzero(v13, v2);
  if (setjmp(v13) || ventproc(v0, v8, v12, v11, v10, v13))
  {
    vretproc(v0);
    result = 94;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_42_10();
    get_parm(v5, v6, v7, -4);
    fence_33(v0, 0, &null_str_11);
    v0[1505] = v0[1507];
    if (v0[1467] == HIWORD(v9))
    {
      v0[1505] = v0[1509];
    }

    vretproc(v0);
    result = 0;
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void convert_por_hundreds()
{
  OUTLINED_FUNCTION_70_8();
  OUTLINED_FUNCTION_6_32();
  v198 = *MEMORY[0x277D85DE8];
  v192 = 0;
  v193 = 0;
  v190 = 0;
  v191 = 0;
  v188 = 0;
  v189 = 0;
  OUTLINED_FUNCTION_38_13();
  bzero(&v165, v1);
  OUTLINED_FUNCTION_37_14();
  bzero(v197, v2);
  if (setjmp(v197) || ventproc(v0, &v165, v196, v195, v194, v197))
  {
    goto LABEL_3;
  }

  v4 = OUTLINED_FUNCTION_10_32();
  get_parm(v4, v5, v6, -6);
  v7 = OUTLINED_FUNCTION_42_10();
  get_parm(v7, v8, v9, -6);
  v10 = OUTLINED_FUNCTION_44_10();
  push_ptr_init(v10, v11);
  fence_33(v0, 0, &null_str_11);
  v12 = OUTLINED_FUNCTION_34_16();
  if (!lpta_loadp_setscan_r(v12, v13))
  {
    OUTLINED_FUNCTION_4_33();
    if (!test_string_s())
    {
LABEL_62:
      OUTLINED_FUNCTION_105_2(v191);
      goto LABEL_3;
    }
  }

  while (2)
  {
    v14 = OUTLINED_FUNCTION_40_11();
    if (!lpta_loadp_setscan_r(v14, v15))
    {
      OUTLINED_FUNCTION_2_35();
      if (!test_string_s())
      {
LABEL_60:
        OUTLINED_FUNCTION_67_8();
        v161 = OUTLINED_FUNCTION_57_9();
        savescptr(v161, v162, v163);
        OUTLINED_FUNCTION_52_9();
        insert_e_before_hundreds();
LABEL_61:
        OUTLINED_FUNCTION_62_8();
        convert_por_double();
        goto LABEL_62;
      }
    }

LABEL_8:
    v16 = OUTLINED_FUNCTION_40_11();
    if (!lpta_loadp_setscan_r(v16, v17) && !advance_tok(v0))
    {
LABEL_10:
      v18 = OUTLINED_FUNCTION_50_9();
      savescptr(v18, v19, &v188);
    }

LABEL_11:
    v20 = OUTLINED_FUNCTION_81_7();
    if (lpta_loadp_setscan_l(v20, v21) || (OUTLINED_FUNCTION_2_35(), test_string_s()))
    {
LABEL_26:
      v46 = OUTLINED_FUNCTION_7_32();
      if (lpta_loadp_setscan_l(v46, v47) || (OUTLINED_FUNCTION_2_35(), v48 = test_string_s(), v48) || (OUTLINED_FUNCTION_55_9(v48, v49, v50, v51, v52, v53, v54, v55, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192), v56 = OUTLINED_FUNCTION_3_34(), insert_2pt_s(v56, v57, 6, v58, v59)))
      {
LABEL_29:
        v60 = OUTLINED_FUNCTION_7_32();
        if (lpta_loadp_setscan_l(v60, v61) || (OUTLINED_FUNCTION_2_35(), v62 = test_string_s(), v62) || (OUTLINED_FUNCTION_55_9(v62, v63, v64, v65, v66, v67, v68, v69, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192), v70 = OUTLINED_FUNCTION_3_34(), insert_2pt_s(v70, v71, 7, v72, v73)))
        {
LABEL_32:
          v74 = OUTLINED_FUNCTION_7_32();
          if (lpta_loadp_setscan_l(v74, v75) || (OUTLINED_FUNCTION_2_35(), v76 = test_string_s(), v76) || (OUTLINED_FUNCTION_55_9(v76, v77, v78, v79, v80, v81, v82, v83, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192), v84 = OUTLINED_FUNCTION_3_34(), insert_2pt_s(v84, v85, 10, v86, v87)))
          {
LABEL_35:
            v88 = OUTLINED_FUNCTION_7_32();
            if (lpta_loadp_setscan_l(v88, v89) || (OUTLINED_FUNCTION_2_35(), v90 = test_string_s(), v90) || (OUTLINED_FUNCTION_55_9(v90, v91, v92, v93, v94, v95, v96, v97, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192), v98 = OUTLINED_FUNCTION_3_34(), insert_2pt_s(v98, v99, 8, v100, v101)))
            {
LABEL_38:
              v102 = OUTLINED_FUNCTION_7_32();
              if (lpta_loadp_setscan_l(v102, v103) || (OUTLINED_FUNCTION_2_35(), v104 = test_string_s(), v104) || (OUTLINED_FUNCTION_55_9(v104, v105, v106, v107, v108, v109, v110, v111, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192), v112 = OUTLINED_FUNCTION_3_34(), insert_2pt_s(v112, v113, 8, v114, v115)))
              {
LABEL_41:
                v116 = OUTLINED_FUNCTION_7_32();
                if (lpta_loadp_setscan_l(v116, v117) || (OUTLINED_FUNCTION_2_35(), v118 = test_string_s(), v118) || (OUTLINED_FUNCTION_55_9(v118, v119, v120, v121, v122, v123, v124, v125, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192), v126 = OUTLINED_FUNCTION_3_34(), insert_2pt_s(v126, v127, 8, v128, v129)))
                {
LABEL_44:
                  v130 = OUTLINED_FUNCTION_7_32();
                  if (lpta_loadp_setscan_l(v130, v131) || (OUTLINED_FUNCTION_2_35(), v132 = test_string_s(), v132) || (OUTLINED_FUNCTION_55_9(v132, v133, v134, v135, v136, v137, v138, v139, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192), v140 = OUTLINED_FUNCTION_3_34(), insert_2pt_s(v140, v141, 8, v142, v143)))
                  {
LABEL_47:
                    v144 = OUTLINED_FUNCTION_7_32();
                    if (!lpta_loadp_setscan_l(v144, v145))
                    {
                      OUTLINED_FUNCTION_2_35();
                      v146 = test_string_s();
                      if (!v146)
                      {
                        OUTLINED_FUNCTION_55_9(v146, v147, v148, v149, v150, v151, v152, v153, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192);
                        v154 = OUTLINED_FUNCTION_3_34();
                        insert_2pt_s(v154, v155, 8, v156, v157);
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

LABEL_50:
      OUTLINED_FUNCTION_26_22();
      if (!v22)
      {
LABEL_53:
        add_gender_to_hundreds();
        goto LABEL_54;
      }

LABEL_52:
      insert_ordinal_ending();
LABEL_54:
      v158 = OUTLINED_FUNCTION_7_32();
      if (lpta_loadp_setscan_r(v158, v159) || (OUTLINED_FUNCTION_16_28(), test_string_s()))
      {
LABEL_56:
        OUTLINED_FUNCTION_62_8();
        convert_por_double();
LABEL_57:
        OUTLINED_FUNCTION_26_22();
        if (!v22)
        {
          OUTLINED_FUNCTION_46_10();
          OUTLINED_FUNCTION_35_15();
          v160 = OUTLINED_FUNCTION_29_19();
          insert_l(v160);
        }
      }

      else
      {
        OUTLINED_FUNCTION_52_9();
        insert_e_before_hundreds();
      }

      goto LABEL_62;
    }

    OUTLINED_FUNCTION_26_22();
    if (v22)
    {
      v23 = OUTLINED_FUNCTION_40_11();
      lpta_rpta_loadp(v23, v24, &v188);
      v25 = OUTLINED_FUNCTION_3_34();
      if (!insert_2pt_s(v25, v26, 5, &unk_2806BC176, v27))
      {
        goto LABEL_52;
      }
    }

LABEL_16:
    v28 = OUTLINED_FUNCTION_104_2();
    starttest(v28, v29);
    v30 = OUTLINED_FUNCTION_81_7();
    if (lpta_loadp_setscan_r(v30, v31) || (OUTLINED_FUNCTION_16_28(), test_string_s()))
    {
LABEL_24:
      v41 = OUTLINED_FUNCTION_40_11();
      lpta_rpta_loadp(v41, v42, &v188);
      v43 = OUTLINED_FUNCTION_3_34();
      if (insert_2pt_s(v43, v44, 6, &unk_2806BC1DC, v45))
      {
        goto LABEL_20;
      }

      goto LABEL_54;
    }

    v32 = OUTLINED_FUNCTION_34_16();
    starttest(v32, v33);
    OUTLINED_FUNCTION_40_11();
    insert_e_before_hundreds();
LABEL_19:
    v34 = OUTLINED_FUNCTION_40_11();
    lpta_rpta_loadp(v34, v35, &v188);
    v36 = OUTLINED_FUNCTION_3_34();
    if (!insert_2pt_s(v36, v37, 4, &unk_2806BC13F, v38))
    {
      goto LABEL_62;
    }

LABEL_20:
    v39 = *(v0 + 104);
    if (v39)
    {
      v40 = OUTLINED_FUNCTION_47_10(v39);
    }

    else
    {
      v40 = OUTLINED_FUNCTION_74_8();
    }

    switch(v40)
    {
      case 1:
        continue;
      case 2:
        goto LABEL_8;
      case 3:
        goto LABEL_60;
      case 4:
        goto LABEL_61;
      case 5:
      case 26:
      case 27:
        goto LABEL_62;
      case 6:
        goto LABEL_11;
      case 7:
        goto LABEL_10;
      case 8:
        goto LABEL_26;
      case 9:
        goto LABEL_16;
      case 10:
      case 11:
      case 14:
      case 24:
        goto LABEL_54;
      case 12:
        goto LABEL_24;
      case 13:
        goto LABEL_19;
      case 15:
        goto LABEL_29;
      case 16:
        goto LABEL_50;
      case 17:
        goto LABEL_32;
      case 18:
        goto LABEL_35;
      case 19:
        goto LABEL_38;
      case 20:
        goto LABEL_41;
      case 21:
        goto LABEL_44;
      case 22:
        goto LABEL_47;
      case 23:
        goto LABEL_53;
      case 25:
        goto LABEL_56;
      case 28:
        goto LABEL_57;
      default:
        goto LABEL_3;
    }
  }

LABEL_3:
  vretproc(v0);
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_69_8();
}

uint64_t convert_por_double()
{
  OUTLINED_FUNCTION_6_32();
  v247 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_19_25(v3, v4, v5, v6, v7, v8, v9, v10, v193, v195, v197, v199, v201, v203, v205, v207, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v244);
  OUTLINED_FUNCTION_37_14();
  OUTLINED_FUNCTION_108_2(v11, v12);
  if (!setjmp(v2))
  {
    OUTLINED_FUNCTION_84_6();
    if (!ventproc(v0, v13, v14, v15, v16, v246))
    {
      v19 = OUTLINED_FUNCTION_10_32();
      get_parm(v19, v20, v21, -6);
      v22 = OUTLINED_FUNCTION_36_14();
      OUTLINED_FUNCTION_71_8(v22, v23);
      v24 = OUTLINED_FUNCTION_45_10();
      push_ptr_init(v24, v25);
      fence_33(v0, 0, &null_str_11);
      v26 = OUTLINED_FUNCTION_34_16();
      if (!lpta_loadp_setscan_r(v26, v27))
      {
        OUTLINED_FUNCTION_2_35();
        if (!test_string_s())
        {
LABEL_74:
          OUTLINED_FUNCTION_17_27(2, v194, v196, v198, v200, v202, v204, v206, v208, v210, v212, v214, v216, v218, v220, v222, v224, v226, v228, v230, v232, v234, v236, v238, v240);
          OUTLINED_FUNCTION_40_11();
          convert_por_single_digit();
          goto LABEL_83;
        }
      }

      while (2)
      {
        OUTLINED_FUNCTION_26_22();
        if (!v28)
        {
LABEL_16:
          v49 = OUTLINED_FUNCTION_30_18();
          if (lpta_loadp_setscan_r(v49, v50) || (OUTLINED_FUNCTION_2_35(), test_string_s()))
          {
LABEL_18:
            v51 = OUTLINED_FUNCTION_28_19();
            starttest(v51, v52);
            v53 = OUTLINED_FUNCTION_30_18();
            if (!lpta_loadp_setscan_r(v53, v54))
            {
              OUTLINED_FUNCTION_2_35();
              if (!test_string_s())
              {
LABEL_36:
                OUTLINED_FUNCTION_17_27(29, v194, v196, v198, v200, v202, v204, v206, v208, v210, v212, v214, v216, v218, v220, v222, v224, v226, v228, v230, v232, v234, v236, v238, v240);
                v91 = OUTLINED_FUNCTION_31_18();
                lpta_rpta_loadp(v91, v92, v93);
                v86 = OUTLINED_FUNCTION_3_34();
                v90 = 5;
                goto LABEL_42;
              }
            }

LABEL_20:
            v55 = OUTLINED_FUNCTION_28_19();
            starttest(v55, v56);
            v57 = OUTLINED_FUNCTION_30_18();
            if (!lpta_loadp_setscan_r(v57, v58))
            {
              OUTLINED_FUNCTION_2_35();
              if (!test_string_s())
              {
LABEL_37:
                OUTLINED_FUNCTION_17_27(31, v194, v196, v198, v200, v202, v204, v206, v208, v210, v212, v214, v216, v218, v220, v222, v224, v226, v228, v230, v232, v234, v236, v238, v240);
                v94 = OUTLINED_FUNCTION_31_18();
                lpta_rpta_loadp(v94, v95, v96);
                v86 = OUTLINED_FUNCTION_3_34();
                v90 = 6;
                goto LABEL_42;
              }
            }

LABEL_22:
            v59 = OUTLINED_FUNCTION_28_19();
            starttest(v59, v60);
            v61 = OUTLINED_FUNCTION_30_18();
            if (lpta_loadp_setscan_r(v61, v62) || (OUTLINED_FUNCTION_2_35(), test_string_s()))
            {
LABEL_24:
              v63 = OUTLINED_FUNCTION_28_19();
              starttest(v63, v64);
              v65 = OUTLINED_FUNCTION_30_18();
              if (!lpta_loadp_setscan_r(v65, v66))
              {
                OUTLINED_FUNCTION_2_35();
                if (!test_string_s())
                {
LABEL_39:
                  OUTLINED_FUNCTION_17_27(35, v194, v196, v198, v200, v202, v204, v206, v208, v210, v212, v214, v216, v218, v220, v222, v224, v226, v228, v230, v232, v234, v236, v238, v240);
                  v100 = OUTLINED_FUNCTION_31_18();
                  lpta_rpta_loadp(v100, v101, v102);
                  v86 = OUTLINED_FUNCTION_3_34();
                  v90 = 9;
                  goto LABEL_42;
                }
              }

LABEL_26:
              v67 = OUTLINED_FUNCTION_28_19();
              starttest(v67, v68);
              v69 = OUTLINED_FUNCTION_30_18();
              if (lpta_loadp_setscan_r(v69, v70) || (OUTLINED_FUNCTION_2_35(), test_string_s()))
              {
LABEL_28:
                v71 = OUTLINED_FUNCTION_28_19();
                starttest(v71, v72);
                v73 = OUTLINED_FUNCTION_30_18();
                if (lpta_loadp_setscan_r(v73, v74) || (OUTLINED_FUNCTION_2_35(), test_string_s()))
                {
LABEL_30:
                  v75 = OUTLINED_FUNCTION_28_19();
                  starttest(v75, v76);
                  v77 = OUTLINED_FUNCTION_30_18();
                  if (lpta_loadp_setscan_r(v77, v78) || (OUTLINED_FUNCTION_2_35(), test_string_s()))
                  {
LABEL_32:
                    v79 = OUTLINED_FUNCTION_28_19();
                    starttest(v79, v80);
                    v81 = OUTLINED_FUNCTION_30_18();
                    if (lpta_loadp_setscan_r(v81, v82))
                    {
                      goto LABEL_77;
                    }

                    OUTLINED_FUNCTION_2_35();
                    if (test_string_s())
                    {
                      goto LABEL_77;
                    }

LABEL_34:
                    OUTLINED_FUNCTION_17_27(42, v194, v196, v198, v200, v202, v204, v206, v208, v210, v212, v214, v216, v218, v220, v222, v224, v226, v228, v230, v232, v234, v236, v238, v240);
                    v83 = OUTLINED_FUNCTION_31_18();
                    lpta_rpta_loadp(v83, v84, v85);
                  }

                  else
                  {
LABEL_45:
                    OUTLINED_FUNCTION_17_27(41, v194, v196, v198, v200, v202, v204, v206, v208, v210, v212, v214, v216, v218, v220, v222, v224, v226, v228, v230, v232, v234, v236, v238, v240);
                    v109 = OUTLINED_FUNCTION_31_18();
                    lpta_rpta_loadp(v109, v110, v111);
                  }
                }

                else
                {
LABEL_44:
                  OUTLINED_FUNCTION_17_27(39, v194, v196, v198, v200, v202, v204, v206, v208, v210, v212, v214, v216, v218, v220, v222, v224, v226, v228, v230, v232, v234, v236, v238, v240);
                  v106 = OUTLINED_FUNCTION_31_18();
                  lpta_rpta_loadp(v106, v107, v108);
                }

                v86 = OUTLINED_FUNCTION_3_34();
                v90 = 7;
LABEL_42:
                if (!insert_2pt_s(v86, v87, v90, v88, v89))
                {
                  goto LABEL_77;
                }

                goto LABEL_12;
              }

LABEL_40:
              OUTLINED_FUNCTION_17_27(37, v194, v196, v198, v200, v202, v204, v206, v208, v210, v212, v214, v216, v218, v220, v222, v224, v226, v228, v230, v232, v234, v236, v238, v240);
              v103 = OUTLINED_FUNCTION_31_18();
              lpta_rpta_loadp(v103, v104, v105);
            }

            else
            {
LABEL_38:
              OUTLINED_FUNCTION_17_27(33, v194, v196, v198, v200, v202, v204, v206, v208, v210, v212, v214, v216, v218, v220, v222, v224, v226, v228, v230, v232, v234, v236, v238, v240);
              v97 = OUTLINED_FUNCTION_31_18();
              lpta_rpta_loadp(v97, v98, v99);
            }

            v86 = OUTLINED_FUNCTION_3_34();
            v90 = 8;
            goto LABEL_42;
          }

          OUTLINED_FUNCTION_53_9();
          convert_por_teens();
LABEL_83:
          OUTLINED_FUNCTION_105_2(v245);
          goto LABEL_4;
        }

        v29 = OUTLINED_FUNCTION_28_19();
        starttest(v29, v30);
        v31 = OUTLINED_FUNCTION_30_18();
        if (!lpta_loadp_setscan_r(v31, v32))
        {
          OUTLINED_FUNCTION_2_35();
          if (!test_string_s())
          {
LABEL_11:
            OUTLINED_FUNCTION_17_27(7, v194, v196, v198, v200, v202, v204, v206, v208, v210, v212, v214, v216, v218, v220, v222, v224, v226, v228, v230, v232, v234, v236, v238, v240);
            v33 = OUTLINED_FUNCTION_31_18();
            lpta_rpta_loadp(v33, v34, v35);
            v36 = OUTLINED_FUNCTION_3_34();
            if (!insert_2pt_s(v36, v37, 5, v38, v39))
            {
              OUTLINED_FUNCTION_85_6();
              inserted = insert_gender();
LABEL_76:
              OUTLINED_FUNCTION_15_29(inserted, v42, v43, v44, v45, v46, v47, v48, v194, v196, v198, v200, v202, v204, v206, v208, v210, v212, v214, v216, v218, v220, v222, v224, v226, v228, v230, v232, v234, v236, v238, v240, v242);
              v173 = OUTLINED_FUNCTION_20_24();
              insert_l(v173);
LABEL_77:
              v174 = OUTLINED_FUNCTION_14_29();
              if (lpta_loadp_setscan_r(v174, v175) || (OUTLINED_FUNCTION_2_35(), test_string_s()))
              {
LABEL_79:
                OUTLINED_FUNCTION_26_22();
                if (!v28)
                {
                  OUTLINED_FUNCTION_15_29(v176, v177, v178, v179, v180, v181, v182, v183, v194, v196, v198, v200, v202, v204, v206, v208, v210, v212, v214, v216, v218, v220, v222, v224, v226, v228, v230, v232, v234, v236, v238, v240, v242);
                  v184 = OUTLINED_FUNCTION_29_19();
                  insert_l(v184);
                }

LABEL_81:
                OUTLINED_FUNCTION_59_9();
                convert_por_single_digit();
              }

              else
              {
                OUTLINED_FUNCTION_59_9();
                delete_inp_from_left();
              }

LABEL_82:
              v185 = OUTLINED_FUNCTION_32_17();
              insert_space(v185, v186, v187, v188, v189, v190, v191, v192);
              goto LABEL_83;
            }

LABEL_12:
            v40 = *(v0 + 104);
            if (v40)
            {
              inserted = OUTLINED_FUNCTION_47_10(v40);
            }

            else
            {
              inserted = OUTLINED_FUNCTION_74_8();
            }

            switch(inserted)
            {
              case 1:
                continue;
              case 2:
                goto LABEL_74;
              case 3:
              case 27:
              case 47:
                goto LABEL_83;
              case 4:
              case 9:
                goto LABEL_77;
              case 5:
                goto LABEL_16;
              case 6:
                goto LABEL_46;
              case 7:
                goto LABEL_11;
              case 8:
                goto LABEL_76;
              case 10:
                goto LABEL_48;
              case 11:
                goto LABEL_66;
              case 12:
                goto LABEL_73;
              case 13:
                goto LABEL_50;
              case 14:
                goto LABEL_67;
              case 15:
                goto LABEL_52;
              case 16:
                goto LABEL_68;
              case 17:
                goto LABEL_54;
              case 18:
                goto LABEL_69;
              case 19:
                goto LABEL_56;
              case 20:
                goto LABEL_70;
              case 21:
                goto LABEL_58;
              case 22:
                goto LABEL_71;
              case 23:
                goto LABEL_60;
              case 24:
                goto LABEL_72;
              case 25:
                goto LABEL_62;
              case 26:
                goto LABEL_18;
              case 28:
                goto LABEL_20;
              case 29:
                goto LABEL_36;
              case 30:
                goto LABEL_22;
              case 31:
                goto LABEL_37;
              case 32:
                goto LABEL_24;
              case 33:
                goto LABEL_38;
              case 34:
                goto LABEL_26;
              case 35:
                goto LABEL_39;
              case 36:
                goto LABEL_28;
              case 37:
                goto LABEL_40;
              case 38:
                goto LABEL_30;
              case 39:
                goto LABEL_44;
              case 40:
                goto LABEL_32;
              case 41:
                goto LABEL_45;
              case 42:
                goto LABEL_34;
              case 43:
                goto LABEL_79;
              case 44:
              case 45:
                goto LABEL_82;
              case 46:
                goto LABEL_81;
              default:
                goto LABEL_3;
            }
          }
        }

        break;
      }

LABEL_46:
      v112 = OUTLINED_FUNCTION_28_19();
      starttest(v112, v113);
      v114 = OUTLINED_FUNCTION_30_18();
      if (lpta_loadp_setscan_r(v114, v115) || (OUTLINED_FUNCTION_2_35(), test_string_s()))
      {
LABEL_48:
        v116 = OUTLINED_FUNCTION_28_19();
        starttest(v116, v117);
        v118 = OUTLINED_FUNCTION_30_18();
        if (lpta_loadp_setscan_r(v118, v119) || (OUTLINED_FUNCTION_2_35(), test_string_s()))
        {
LABEL_50:
          v120 = OUTLINED_FUNCTION_28_19();
          starttest(v120, v121);
          v122 = OUTLINED_FUNCTION_30_18();
          if (lpta_loadp_setscan_r(v122, v123) || (OUTLINED_FUNCTION_2_35(), test_string_s()))
          {
LABEL_52:
            v124 = OUTLINED_FUNCTION_28_19();
            starttest(v124, v125);
            v126 = OUTLINED_FUNCTION_30_18();
            if (lpta_loadp_setscan_r(v126, v127) || (OUTLINED_FUNCTION_2_35(), test_string_s()))
            {
LABEL_54:
              v128 = OUTLINED_FUNCTION_28_19();
              starttest(v128, v129);
              v130 = OUTLINED_FUNCTION_30_18();
              if (!lpta_loadp_setscan_r(v130, v131))
              {
                OUTLINED_FUNCTION_2_35();
                if (!test_string_s())
                {
LABEL_70:
                  OUTLINED_FUNCTION_17_27(20, v194, v196, v198, v200, v202, v204, v206, v208, v210, v212, v214, v216, v218, v220, v222, v224, v226, v228, v230, v232, v234, v236, v238, v240);
                  v164 = OUTLINED_FUNCTION_31_18();
                  lpta_rpta_loadp(v164, v165, v166);
LABEL_63:
                  v147 = OUTLINED_FUNCTION_3_34();
                  v151 = 5;
                  goto LABEL_64;
                }
              }

LABEL_56:
              v132 = OUTLINED_FUNCTION_28_19();
              starttest(v132, v133);
              v134 = OUTLINED_FUNCTION_30_18();
              if (lpta_loadp_setscan_r(v134, v135) || (OUTLINED_FUNCTION_2_35(), test_string_s()))
              {
LABEL_58:
                v136 = OUTLINED_FUNCTION_28_19();
                starttest(v136, v137);
                v138 = OUTLINED_FUNCTION_30_18();
                if (lpta_loadp_setscan_r(v138, v139) || (OUTLINED_FUNCTION_2_35(), test_string_s()))
                {
LABEL_60:
                  v140 = OUTLINED_FUNCTION_28_19();
                  starttest(v140, v141);
                  v142 = OUTLINED_FUNCTION_30_18();
                  if (lpta_loadp_setscan_r(v142, v143))
                  {
                    goto LABEL_73;
                  }

                  OUTLINED_FUNCTION_2_35();
                  if (test_string_s())
                  {
                    goto LABEL_73;
                  }

LABEL_62:
                  OUTLINED_FUNCTION_17_27(25, v194, v196, v198, v200, v202, v204, v206, v208, v210, v212, v214, v216, v218, v220, v222, v224, v226, v228, v230, v232, v234, v236, v238, v240);
                  v144 = OUTLINED_FUNCTION_31_18();
                  lpta_rpta_loadp(v144, v145, v146);
                }

                else
                {
LABEL_72:
                  OUTLINED_FUNCTION_17_27(24, v194, v196, v198, v200, v202, v204, v206, v208, v210, v212, v214, v216, v218, v220, v222, v224, v226, v228, v230, v232, v234, v236, v238, v240);
                  v170 = OUTLINED_FUNCTION_31_18();
                  lpta_rpta_loadp(v170, v171, v172);
                }

                goto LABEL_63;
              }

LABEL_71:
              OUTLINED_FUNCTION_17_27(22, v194, v196, v198, v200, v202, v204, v206, v208, v210, v212, v214, v216, v218, v220, v222, v224, v226, v228, v230, v232, v234, v236, v238, v240);
              v167 = OUTLINED_FUNCTION_31_18();
              lpta_rpta_loadp(v167, v168, v169);
              v147 = OUTLINED_FUNCTION_3_34();
              v151 = 6;
            }

            else
            {
LABEL_69:
              OUTLINED_FUNCTION_17_27(18, v194, v196, v198, v200, v202, v204, v206, v208, v210, v212, v214, v216, v218, v220, v222, v224, v226, v228, v230, v232, v234, v236, v238, v240);
              v161 = OUTLINED_FUNCTION_31_18();
              lpta_rpta_loadp(v161, v162, v163);
              v147 = OUTLINED_FUNCTION_3_34();
              v151 = 8;
            }
          }

          else
          {
LABEL_68:
            OUTLINED_FUNCTION_17_27(16, v194, v196, v198, v200, v202, v204, v206, v208, v210, v212, v214, v216, v218, v220, v222, v224, v226, v228, v230, v232, v234, v236, v238, v240);
            v158 = OUTLINED_FUNCTION_31_18();
            lpta_rpta_loadp(v158, v159, v160);
            v147 = OUTLINED_FUNCTION_3_34();
            v151 = 7;
          }
        }

        else
        {
LABEL_67:
          OUTLINED_FUNCTION_17_27(14, v194, v196, v198, v200, v202, v204, v206, v208, v210, v212, v214, v216, v218, v220, v222, v224, v226, v228, v230, v232, v234, v236, v238, v240);
          v155 = OUTLINED_FUNCTION_31_18();
          lpta_rpta_loadp(v155, v156, v157);
          v147 = OUTLINED_FUNCTION_3_34();
          v151 = 4;
        }
      }

      else
      {
LABEL_66:
        OUTLINED_FUNCTION_17_27(11, v194, v196, v198, v200, v202, v204, v206, v208, v210, v212, v214, v216, v218, v220, v222, v224, v226, v228, v230, v232, v234, v236, v238, v240);
        v152 = OUTLINED_FUNCTION_31_18();
        lpta_rpta_loadp(v152, v153, v154);
        v147 = OUTLINED_FUNCTION_3_34();
        v151 = 3;
      }

LABEL_64:
      if (insert_2pt_s(v147, v148, v151, v149, v150))
      {
        goto LABEL_12;
      }

LABEL_73:
      OUTLINED_FUNCTION_85_6();
      insert_ordinal_ending();
      goto LABEL_77;
    }
  }

LABEL_3:
  v1 = 94;
LABEL_4:
  vretproc(v0);
  v17 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t convert_por_single_digit()
{
  OUTLINED_FUNCTION_6_32();
  v101 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_19_25(v2, v3, v4, v5, v6, v7, v8, v9, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95);
  OUTLINED_FUNCTION_23_23(v10, v11, v12, v13, v14, v15, v16, v17, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100);
  v18 = setjmp(v1);
  if (v18 || OUTLINED_FUNCTION_12_31(v18, &v69, v19, v20, v21, v22, v23, v24, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, SBYTE4(v96), v97, SWORD2(v97), SBYTE6(v97), v98, SWORD2(v98), SBYTE6(v98), SHIBYTE(v98), v99, v100))
  {
    vretproc(v0);
    result = 94;
  }

  else
  {
    v27 = OUTLINED_FUNCTION_21_24();
    get_parm(v27, v28, v29, -6);
    v30 = OUTLINED_FUNCTION_42_10();
    get_parm(v30, v31, v32, -6);
    fence_33(v0, 0, &null_str_11);
    if (*(v0 + 2846) == *(v0 + 2822))
    {
      v33 = OUTLINED_FUNCTION_30_18();
      if (lpta_loadp_setscan_r(v33, v34) || (OUTLINED_FUNCTION_2_35(), test_string_s()) || (v35 = OUTLINED_FUNCTION_5_33(), lpta_rpta_loadp(v35, v36, v37), v38 = OUTLINED_FUNCTION_3_34(), insert_2pt_s(v38, v39, 7, v40, v41)))
      {
        v42 = OUTLINED_FUNCTION_30_18();
        if (lpta_loadp_setscan_r(v42, v43) || (OUTLINED_FUNCTION_2_35(), test_string_s()) || (v44 = OUTLINED_FUNCTION_5_33(), lpta_rpta_loadp(v44, v45, v46), v47 = OUTLINED_FUNCTION_3_34(), insert_2pt_s(v47, v48, 6, v49, v50)))
        {
          v51 = OUTLINED_FUNCTION_30_18();
          if (lpta_loadp_setscan_r(v51, v52) || (OUTLINED_FUNCTION_2_35(), test_string_s()) || (v53 = OUTLINED_FUNCTION_5_33(), lpta_rpta_loadp(v53, v54, v55), v56 = OUTLINED_FUNCTION_3_34(), insert_2pt_s(v56, v57, 7, v58, v59)))
          {
            OUTLINED_FUNCTION_5_33();
            insert_ordinal_stem();
          }
        }
      }

      OUTLINED_FUNCTION_85_6();
      inserted = insert_gender();
      OUTLINED_FUNCTION_15_29(inserted, v61, v62, v63, v64, v65, v66, v67, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93);
      v68 = OUTLINED_FUNCTION_20_24();
      insert_l(v68);
    }

    else
    {
      OUTLINED_FUNCTION_33_17();
      por_char_name();
    }

    OUTLINED_FUNCTION_97_5(v93);
    result = 0;
  }

  v26 = *MEMORY[0x277D85DE8];
  return result;
}

void add_por_currency_units()
{
  OUTLINED_FUNCTION_70_8();
  OUTLINED_FUNCTION_6_32();
  v103 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_25_22(v2, v3, v4, v5, v6, v7, v8, v9, v67, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, SHIDWORD(v95), v96, v97);
  OUTLINED_FUNCTION_23_23(v10, v11, v12, v13, v14, v15, v16, v17, v68, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102);
  v18 = setjmp(v1);
  if (!v18 && !OUTLINED_FUNCTION_12_31(v18, &v72, v19, v20, v21, v22, v23, v24, v69, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, SBYTE4(v98), v99, SWORD2(v99), SBYTE6(v99), v100, SWORD2(v100), SBYTE6(v100), SHIBYTE(v100), v101, v102))
  {
    v26 = OUTLINED_FUNCTION_21_24();
    get_parm(v26, v27, v28, -6);
    v29 = OUTLINED_FUNCTION_42_10();
    get_parm(v29, v30, v31, -4);
    inserted = fence_33(v0, 0, &null_str_11);
    if (*(v0 + 2902) >= 7)
    {
      v40 = OUTLINED_FUNCTION_63_8();
      starttest_l(v40, v41);
      v42 = OUTLINED_FUNCTION_36_14();
      inserted = lpta_loadp_setscan_l(v42, v43);
      if (!inserted)
      {
        bspush_boa(v0);
        v46 = 0;
        while (2)
        {
          v47 = v46;
          v48 = OUTLINED_FUNCTION_40_11();
          bspush_ca_scan(v48, v49);
          bspush_ca_scan_boa();
          v50 = OUTLINED_FUNCTION_27_20();
          if (!testFldeq(v50, v51, 3, 1))
          {
            v47 = 1;
          }

LABEL_12:
          v52 = *(v0 + 104);
          if (v52)
          {
            inserted = OUTLINED_FUNCTION_47_10(v52);
            v47 = v33;
          }

          else
          {
            inserted = vback(v0, v47);
            v47 = 0;
          }

          v46 = v47;
          switch(inserted)
          {
            case 1:
              break;
            case 2:
              bspush_nboa(v0);
              v53 = OUTLINED_FUNCTION_50_9();
              bspush_ca_scan(v53, v54);
              OUTLINED_FUNCTION_27_20();
              goto LABEL_18;
            case 3:
              bspop_boa(v0);
              v55 = advance_tok(v0);
              v46 = v47;
              if (!v55)
              {
                continue;
              }

              goto LABEL_12;
            case 4:
              continue;
            case 5:
              OUTLINED_FUNCTION_27_20();
LABEL_18:
              inserted = test_string_s();
              if (!inserted)
              {
                goto LABEL_22;
              }

              goto LABEL_12;
            case 6:
LABEL_22:
              OUTLINED_FUNCTION_1_35(inserted, v33, v34, v35, v36, v37, v38, v39, v70, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97);
              v56 = OUTLINED_FUNCTION_29_19();
              inserted = insert_l(v56);
              goto LABEL_6;
            case 7:
              v44 = HIWORD(v95);
              goto LABEL_27;
            case 8:
              goto LABEL_8;
            case 11:
              v44 = HIWORD(v95);
              goto LABEL_30;
            case 13:
              v44 = HIWORD(v95);
              goto LABEL_33;
            case 14:
              goto LABEL_37;
            case 15:
              v44 = HIWORD(v95);
              goto LABEL_34;
            case 16:
              v44 = HIWORD(v95);
              goto LABEL_35;
            default:
              goto LABEL_3;
          }

          break;
        }
      }
    }

LABEL_6:
    v44 = HIWORD(v95);
    if (*(v0 + 2950) == HIWORD(v95))
    {
      *(v0 + 2906);
LABEL_8:
      OUTLINED_FUNCTION_1_35(inserted, v33, v34, v35, v36, v37, v38, v39, v70, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97);
      v45 = OUTLINED_FUNCTION_29_19();
      goto LABEL_39;
    }

LABEL_27:
    if (*(v0 + 2922) == v44)
    {
      *(v0 + 168) = 1;
      OUTLINED_FUNCTION_13_31(inserted, v33, v34, v35, v36, v37, v38, v39, v70, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97);
      v57 = OUTLINED_FUNCTION_29_19();
      v58 = insert_l(v57);
      if (*(v0 + 2906))
      {
        goto LABEL_3;
      }

      *(v0 + 168) = 1;
      OUTLINED_FUNCTION_13_31(v58, v59, v60, v61, v62, v63, v64, v65, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97);
      v45 = OUTLINED_FUNCTION_29_19();
LABEL_39:
      insert_l(v45);
      goto LABEL_3;
    }

LABEL_30:
    if (*(v0 + 2934) != v44)
    {
LABEL_33:
      if (*(v0 + 2946) != v44)
      {
LABEL_34:
        if (*(v0 + 5930) != v44)
        {
LABEL_35:
          if (*(v0 + 5934) != v44)
          {
LABEL_37:
            if (*(v0 + 2906))
            {
              goto LABEL_3;
            }

            OUTLINED_FUNCTION_1_35(inserted, v33, v34, v35, v36, v37, v38, v39, v70, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97);
            v45 = OUTLINED_FUNCTION_20_24();
            goto LABEL_39;
          }
        }
      }
    }

    OUTLINED_FUNCTION_1_35(inserted, v33, v34, v35, v36, v37, v38, v39, v70, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97);
    v66 = OUTLINED_FUNCTION_29_19();
    inserted = insert_l(v66);
    goto LABEL_37;
  }

LABEL_3:
  vretproc(v0);
  v25 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_69_8();
}

uint64_t add_por_subunits()
{
  OUTLINED_FUNCTION_6_32();
  v92 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_25_22(v2, v3, v4, v5, v6, v7, v8, v9, v57, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, SHIDWORD(v84), v85, v86);
  OUTLINED_FUNCTION_23_23(v10, v11, v12, v13, v14, v15, v16, v17, v58, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91);
  v18 = setjmp(v1);
  if (v18 || OUTLINED_FUNCTION_12_31(v18, &v61, v19, v20, v21, v22, v23, v24, v59, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, SBYTE4(v87), v88, SWORD2(v88), SBYTE6(v88), v89, SWORD2(v89), SBYTE6(v89), SHIBYTE(v89), v90, v91))
  {
LABEL_3:
    vretproc(v0);
    result = 94;
  }

  else
  {
    v27 = OUTLINED_FUNCTION_21_24();
    get_parm(v27, v28, v29, -6);
    v30 = OUTLINED_FUNCTION_42_10();
    get_parm(v30, v31, v32, -4);
    fence_33(v0, 0, &null_str_11);
    v33 = OUTLINED_FUNCTION_63_8();
    starttest(v33, v34);
    v35 = OUTLINED_FUNCTION_28_19();
    bspush_ca(v35);
    v36 = *(v0 + 2950);
    OUTLINED_FUNCTION_90_6();
    if (v45)
    {
LABEL_7:
      *(v0 + 168) = 1;
      OUTLINED_FUNCTION_13_31(inserted, v38, v39, v40, v41, v42, v43, v44, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86);
      v46 = OUTLINED_FUNCTION_29_19();
    }

    else
    {
      while (2)
      {
        v48 = *(v0 + 104);
        if (v48)
        {
          inserted = OUTLINED_FUNCTION_47_10(v48);
        }

        else
        {
          inserted = OUTLINED_FUNCTION_74_8();
        }

        switch(inserted)
        {
          case 1:
            v49 = OUTLINED_FUNCTION_40_11();
            starttest(v49, v50);
            v51 = OUTLINED_FUNCTION_34_16();
            bspush_ca(v51);
            v52 = *(v0 + 2946);
            goto LABEL_23;
          case 2:
            v54 = OUTLINED_FUNCTION_50_9();
            bspush_ca(v54);
            v55 = *(v0 + 5930);
            goto LABEL_19;
          case 3:
            goto LABEL_7;
          case 4:
            v53 = *(v0 + 5934);
LABEL_19:
            OUTLINED_FUNCTION_90_6();
            if (!v45)
            {
              continue;
            }

            goto LABEL_7;
          case 5:
            goto LABEL_9;
          case 7:
            v56 = *(v0 + 2922);
LABEL_23:
            OUTLINED_FUNCTION_90_6();
            if (!v45)
            {
              continue;
            }

            goto LABEL_25;
          case 8:
LABEL_25:
            OUTLINED_FUNCTION_1_35(inserted, v38, v39, v40, v41, v42, v43, v44, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86);
            v46 = OUTLINED_FUNCTION_29_19();
            break;
          case 9:
            goto LABEL_11;
          default:
            goto LABEL_3;
        }

        break;
      }
    }

    inserted = insert_l(v46);
LABEL_9:
    if (!*(v0 + 2906))
    {
      OUTLINED_FUNCTION_1_35(inserted, v38, v39, v40, v41, v42, v43, v44, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86);
      v47 = OUTLINED_FUNCTION_20_24();
      insert_l(v47);
    }

LABEL_11:
    vretproc(v0);
    result = 0;
  }

  v26 = *MEMORY[0x277D85DE8];
  return result;
}

void insert_por_large_number()
{
  OUTLINED_FUNCTION_70_8();
  v2 = v1;
  OUTLINED_FUNCTION_100_3();
  v93 = *MEMORY[0x277D85DE8];
  v80 = 0;
  v81 = 0;
  v78 = 0;
  v79 = 0;
  OUTLINED_FUNCTION_38_13();
  bzero(&v55, v3);
  OUTLINED_FUNCTION_37_14();
  bzero(v92, v4);
  v5 = setjmp(v92);
  if (v5 || OUTLINED_FUNCTION_95_5(v5, &v55, v6, v7, v8, v9, v10, v11, v53, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92[0]))
  {
LABEL_3:
    vretproc(v0);
  }

  else
  {
    v13 = OUTLINED_FUNCTION_42_10();
    get_parm(v13, v14, v15, -6);
    v16 = OUTLINED_FUNCTION_50_9();
    get_parm(v16, v17, v2, -6);
    v18 = 0;
    OUTLINED_FUNCTION_82_7(v19, v20, &null_str_11);
    v21 = OUTLINED_FUNCTION_58_9();
    starttest(v21, v22);
    OUTLINED_FUNCTION_28_19();
    bspush_ca_boa();
    v23 = OUTLINED_FUNCTION_50_9();
    if (!lpta_loadp_setscan_l(v23, v24))
    {
      OUTLINED_FUNCTION_79_8();
      if (test_string_s())
      {
        v18 = 0;
      }

      else
      {
        *(v0 + 136) = v92;
        v18 = OUTLINED_FUNCTION_39_12() == 0;
      }
    }

    while (2)
    {
      v25 = *(v0 + 104);
      if (v25)
      {
        v26 = OUTLINED_FUNCTION_47_10(v25);
      }

      else
      {
        v26 = vback(v0, v18);
        v18 = 0;
      }

      switch(v26)
      {
        case 1:
        case 8:
          goto LABEL_29;
        case 2:
          bspop_boa(v0);
          OUTLINED_FUNCTION_26_22();
          if (!v34)
          {
            goto LABEL_16;
          }

          v35 = *(v0 + 2898);
          goto LABEL_27;
        case 3:
LABEL_16:
          v36 = *(v0 + 2898);
          if (v36 <= 6)
          {
            goto LABEL_26;
          }

          goto LABEL_23;
        case 4:
          v39 = *(v0 + 2898);
          goto LABEL_27;
        case 5:
          goto LABEL_28;
        case 6:
          v40 = *(v0 + 2898);
          goto LABEL_27;
        case 7:
LABEL_27:
          v45 = OUTLINED_FUNCTION_0_37(v26, v27, v28, v29, v30, v31, v32, v33, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79);
          insert_l(v45);
LABEL_28:
          OUTLINED_FUNCTION_50_9();
          insert_ordinal_ending();
          goto LABEL_29;
        case 9:
          v38 = *(v0 + 2898);
          goto LABEL_23;
        case 10:
          v37 = *(v0 + 2898);
          goto LABEL_23;
        case 11:
          goto LABEL_24;
        case 12:
LABEL_23:
          v41 = OUTLINED_FUNCTION_0_37(v26, v27, v28, v29, v30, v31, v32, v33, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79);
          insert_l(v41);
LABEL_24:
          v42 = OUTLINED_FUNCTION_92_5();
          v26 = lpta_loadp_setscan_r(v42, v43);
          if (!v26)
          {
            OUTLINED_FUNCTION_49_9();
            v26 = test_string_s();
          }

          goto LABEL_26;
        case 13:
LABEL_26:
          v44 = OUTLINED_FUNCTION_0_37(v26, v27, v28, v29, v30, v31, v32, v33, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79);
          insert_l(v44);
LABEL_29:
          v46 = OUTLINED_FUNCTION_34_16();
          starttest(v46, v47);
          v48 = OUTLINED_FUNCTION_50_9();
          if (lpta_loadp_setscan_r(v48, v49))
          {
            goto LABEL_32;
          }

          bspush_ca_scan(v0, 15);
          OUTLINED_FUNCTION_49_9();
          if (test_string_s())
          {
            continue;
          }

LABEL_31:
          v50 = OUTLINED_FUNCTION_62_8();
          savescptr(v50, v51, v52);
LABEL_32:
          OUTLINED_FUNCTION_97_5(v81);
          break;
        case 14:
          goto LABEL_32;
        case 15:
          goto LABEL_31;
        default:
          goto LABEL_3;
      }

      break;
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_69_8();
}

uint64_t insert_ordinal_ending()
{
  OUTLINED_FUNCTION_6_32();
  v87 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_25_22(v3, v4, v5, v6, v7, v8, v9, v10, v51, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, SHIDWORD(v79), v80, v81);
  OUTLINED_FUNCTION_23_23(v11, v12, v13, v14, v15, v16, v17, v18, v52, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86);
  v19 = setjmp(v2);
  if (!v19 && !OUTLINED_FUNCTION_12_31(v19, &v56, v20, v21, v22, v23, v24, v25, v53, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, SBYTE4(v82), v83, SWORD2(v83), SBYTE6(v83), v84, SWORD2(v84), SBYTE6(v84), SHIBYTE(v84), v85, v86))
  {
    v28 = OUTLINED_FUNCTION_10_32();
    get_parm(v28, v29, v30, -6);
    v31 = OUTLINED_FUNCTION_40_11();
    get_parm(v31, v32, v1, -4);
    v35 = OUTLINED_FUNCTION_82_7(v33, v34, &null_str_11);
    OUTLINED_FUNCTION_106_2(v35, v36, v37, v38, v39, v40, v41, v42, v54, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81);
    insert_l(v0);
    OUTLINED_FUNCTION_10_32();
    inserted = insert_gender();
    OUTLINED_FUNCTION_106_2(inserted, v44, v45, v46, v47, v48, v49, v50, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81);
    insert_l(v0);
  }

  vretproc(v0);
  v26 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_103_2();
}

uint64_t insert_e_before_hundreds()
{
  OUTLINED_FUNCTION_100_3();
  v113 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_24_23(v1, v2, v3, v4, v5, v6, v7, v8, v33, v36, v39, v42, v45, v48, v51, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105);
  OUTLINED_FUNCTION_37_14();
  bzero(v112, v9);
  v10 = setjmp(v112);
  if (v10 || OUTLINED_FUNCTION_88_6(v10, v11, v12, v13, v14, v15, v16, v17, v34, v37, v40, v43, v46, v49, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, *v108, v108[4], *v109, *&v109[4], v109[6], v110, SWORD2(v110), SBYTE6(v110), SHIBYTE(v110), v111, v112[0]))
  {
    vretproc(v0);
    result = 94;
  }

  else
  {
    v20 = OUTLINED_FUNCTION_42_10();
    get_parm(v20, v21, v22, -6);
    fence_33(v0, 0, &null_str_11);
    OUTLINED_FUNCTION_26_22();
    if (!v31 && *(v0 + 2898) == 3 && *(v0 + 2902) >= 4)
    {
      OUTLINED_FUNCTION_15_29(v23, v24, v25, v26, v27, v28, v29, v30, v35, v38, v41, v44, v47, v50, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107);
      v32 = OUTLINED_FUNCTION_29_19();
      insert_l(v32);
    }

    vretproc(v0);
    result = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
  return result;
}

void add_gender_to_hundreds()
{
  OUTLINED_FUNCTION_70_8();
  OUTLINED_FUNCTION_80_7();
  v66 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_25_22(v1, v2, v3, v4, v5, v6, v7, v8, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, SHIDWORD(v61), v63, v64);
  OUTLINED_FUNCTION_37_14();
  bzero(v65, v9);
  if (!setjmp(v65))
  {
    OUTLINED_FUNCTION_84_6();
    if (!ventproc(v0, v10, v11, v12, v13, v65))
    {
      v15 = OUTLINED_FUNCTION_32_17();
      OUTLINED_FUNCTION_98_4(v15, v16);
      v17 = OUTLINED_FUNCTION_21_24();
      get_parm(v17, v18, v19, -6);
      v20 = OUTLINED_FUNCTION_42_10();
      get_parm(v20, v21, v22, -4);
      fence_33(v0, 0, &null_str_11);
      if (*(v0 + 2850) != *(v0 + 2822))
      {
        while (2)
        {
          v23 = OUTLINED_FUNCTION_51_9();
          starttest(v23, v24);
          v25 = OUTLINED_FUNCTION_40_11();
          bspush_ca(v25);
          if (*(v0 + 2898) <= 3)
          {
LABEL_6:
            v26 = *(v0 + 104);
            if (v26)
            {
              v27 = OUTLINED_FUNCTION_47_10(v26);
            }

            else
            {
              v27 = OUTLINED_FUNCTION_74_8();
            }

            switch(v27)
            {
              case 1:
                continue;
              case 2:
                goto LABEL_19;
              case 3:
                v36 = OUTLINED_FUNCTION_27_20();
                npush_s(v36);
                OUTLINED_FUNCTION_72_8();
                goto LABEL_3;
              case 4:
                v28 = OUTLINED_FUNCTION_34_16();
                bspush_ca(v28);
                v29 = *(v0 + 2834);
                v30 = *(v0 + 2822);
                goto LABEL_13;
              case 5:
              case 9:
                goto LABEL_18;
              case 6:
                v31 = OUTLINED_FUNCTION_50_9();
                bspush_ca(v31);
                v32 = OUTLINED_FUNCTION_81_7();
                if (lpta_loadp_setscan_r(v32, v33))
                {
                  goto LABEL_6;
                }

                v34 = OUTLINED_FUNCTION_66_8();
                bspush_ca_scan(v34, v35);
                OUTLINED_FUNCTION_2_35();
                goto LABEL_17;
              case 7:
                v29 = *(v0 + 2646);
                v30 = *(v0 + 2610);
LABEL_13:
                if (v29 == v30)
                {
                  goto LABEL_18;
                }

                goto LABEL_6;
              case 8:
                OUTLINED_FUNCTION_2_35();
LABEL_17:
                if (!test_string_s())
                {
                  goto LABEL_18;
                }

                goto LABEL_6;
              default:
                goto LABEL_3;
            }
          }

          break;
        }

LABEL_18:
        v62 = *(v0 + 3014);
      }

LABEL_19:
      insert_hundreds_ending();
    }
  }

LABEL_3:
  vretproc(v0);
  v14 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_69_8();
}

uint64_t insert_hundreds_ending()
{
  OUTLINED_FUNCTION_6_32();
  v70 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_25_22(v2, v3, v4, v5, v6, v7, v8, v9, v36, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, SHIDWORD(v62), v63, v64);
  OUTLINED_FUNCTION_23_23(v10, v11, v12, v13, v14, v15, v16, v17, v37, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69);
  v18 = setjmp(v1);
  if (v18 || OUTLINED_FUNCTION_12_31(v18, &v39, v19, v20, v21, v22, v23, v24, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, SBYTE4(v65), v66, SWORD2(v66), SBYTE6(v66), v67, SWORD2(v67), SBYTE6(v67), SHIBYTE(v67), v68, v69))
  {
    vretproc(v0);
    result = 94;
  }

  else
  {
    v27 = OUTLINED_FUNCTION_21_24();
    get_parm(v27, v28, v29, -6);
    v30 = OUTLINED_FUNCTION_42_10();
    get_parm(v30, v31, v32, -4);
    OUTLINED_FUNCTION_82_7(v33, v34, &null_str_11);
    v35 = *(v0 + 3014);
    OUTLINED_FUNCTION_46_10();
    *(v0 + 144) = v64;
    *(v0 + 128) = 0;
    insert_l(v0);
    vretproc(v0);
    result = 0;
  }

  v26 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t insert_gender()
{
  OUTLINED_FUNCTION_6_32();
  v70 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_25_22(v2, v3, v4, v5, v6, v7, v8, v9, v36, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, SHIDWORD(v62), v63, v64);
  OUTLINED_FUNCTION_23_23(v10, v11, v12, v13, v14, v15, v16, v17, v37, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69);
  v18 = setjmp(v1);
  if (v18 || OUTLINED_FUNCTION_12_31(v18, &v39, v19, v20, v21, v22, v23, v24, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, SBYTE4(v65), v66, SWORD2(v66), SBYTE6(v66), v67, SWORD2(v67), SBYTE6(v67), SHIBYTE(v67), v68, v69))
  {
    vretproc(v0);
    result = 94;
  }

  else
  {
    v27 = OUTLINED_FUNCTION_21_24();
    get_parm(v27, v28, v29, -6);
    v30 = OUTLINED_FUNCTION_42_10();
    get_parm(v30, v31, v32, -4);
    OUTLINED_FUNCTION_82_7(v33, v34, &null_str_11);
    v35 = *(v0 + 3014);
    OUTLINED_FUNCTION_46_10();
    *(v0 + 144) = v64;
    *(v0 + 128) = 0;
    insert_l(v0);
    vretproc(v0);
    result = 0;
  }

  v26 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t convert_por_teens()
{
  OUTLINED_FUNCTION_6_32();
  v162 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_19_25(v2, v3, v4, v5, v6, v7, v8, v9, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156);
  OUTLINED_FUNCTION_23_23(v10, v11, v12, v13, v14, v15, v16, v17, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161);
  v18 = setjmp(v1);
  if (!v18 && !OUTLINED_FUNCTION_12_31(v18, &v130, v19, v20, v21, v22, v23, v24, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, SBYTE4(v157), v158, SWORD2(v158), SBYTE6(v158), v159, SWORD2(v159), SBYTE6(v159), SHIBYTE(v159), v160, v161))
  {
    v27 = OUTLINED_FUNCTION_21_24();
    get_parm(v27, v28, v29, -6);
    v30 = OUTLINED_FUNCTION_40_11();
    OUTLINED_FUNCTION_71_8(v30, v31);
    fence_33(v0, 0, &null_str_11);
    v32 = OUTLINED_FUNCTION_40_11();
    if (lpta_loadp_setscan_l(v32, v33) || (OUTLINED_FUNCTION_2_35(), test_string_s()) || (v34 = OUTLINED_FUNCTION_5_33(), lpta_rpta_loadp(v34, v35, v36), v37 = OUTLINED_FUNCTION_3_34(), insert_2pt_s(v37, v38, 3, v39, v40)))
    {
      v41 = OUTLINED_FUNCTION_14_29();
      if (lpta_loadp_setscan_l(v41, v42) || (OUTLINED_FUNCTION_2_35(), test_string_s()) || (v43 = OUTLINED_FUNCTION_5_33(), lpta_rpta_loadp(v43, v44, v45), v46 = OUTLINED_FUNCTION_3_34(), insert_2pt_s(v46, v47, 4, v48, v49)))
      {
        v50 = OUTLINED_FUNCTION_14_29();
        if (lpta_loadp_setscan_l(v50, v51) || (OUTLINED_FUNCTION_2_35(), test_string_s()) || (v52 = OUTLINED_FUNCTION_5_33(), lpta_rpta_loadp(v52, v53, v54), v55 = OUTLINED_FUNCTION_3_34(), insert_2pt_s(v55, v56, 4, v57, v58)))
        {
          v59 = OUTLINED_FUNCTION_14_29();
          if (lpta_loadp_setscan_l(v59, v60) || (OUTLINED_FUNCTION_2_35(), test_string_s()) || (v61 = OUTLINED_FUNCTION_5_33(), lpta_rpta_loadp(v61, v62, v63), v64 = OUTLINED_FUNCTION_3_34(), insert_2pt_s(v64, v65, 5, v66, v67)))
          {
            v68 = OUTLINED_FUNCTION_14_29();
            if (lpta_loadp_setscan_l(v68, v69) || (OUTLINED_FUNCTION_2_35(), test_string_s()) || (v70 = OUTLINED_FUNCTION_5_33(), lpta_rpta_loadp(v70, v71, v72), v73 = OUTLINED_FUNCTION_3_34(), insert_2pt_s(v73, v74, 8, v75, v76)))
            {
              v77 = OUTLINED_FUNCTION_14_29();
              if (lpta_loadp_setscan_l(v77, v78) || (OUTLINED_FUNCTION_2_35(), test_string_s()) || (v79 = OUTLINED_FUNCTION_5_33(), lpta_rpta_loadp(v79, v80, v81), v82 = OUTLINED_FUNCTION_3_34(), insert_2pt_s(v82, v83, 6, v84, v85)))
              {
                v86 = OUTLINED_FUNCTION_14_29();
                if (lpta_loadp_setscan_l(v86, v87) || (OUTLINED_FUNCTION_2_35(), test_string_s()) || (v88 = OUTLINED_FUNCTION_5_33(), lpta_rpta_loadp(v88, v89, v90), v91 = OUTLINED_FUNCTION_3_34(), insert_2pt_s(v91, v92, 9, v93, v94)))
                {
                  v95 = OUTLINED_FUNCTION_14_29();
                  if (lpta_loadp_setscan_l(v95, v96) || (OUTLINED_FUNCTION_2_35(), test_string_s()) || (v97 = OUTLINED_FUNCTION_5_33(), lpta_rpta_loadp(v97, v98, v99), v100 = OUTLINED_FUNCTION_3_34(), insert_2pt_s(v100, v101, 9, v102, v103)))
                  {
                    v104 = OUTLINED_FUNCTION_14_29();
                    if (lpta_loadp_setscan_l(v104, v105) || (OUTLINED_FUNCTION_2_35(), test_string_s()) || (v106 = OUTLINED_FUNCTION_5_33(), lpta_rpta_loadp(v106, v107, v108), v109 = OUTLINED_FUNCTION_3_34(), insert_2pt_s(v109, v110, 7, v111, v112)))
                    {
                      v113 = OUTLINED_FUNCTION_14_29();
                      if (!lpta_loadp_setscan_l(v113, v114))
                      {
                        OUTLINED_FUNCTION_2_35();
                        if (!test_string_s())
                        {
                          v115 = OUTLINED_FUNCTION_5_33();
                          lpta_rpta_loadp(v115, v116, v117);
                          v118 = OUTLINED_FUNCTION_3_34();
                          insert_2pt_s(v118, v119, 8, v120, v121);
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

    v122 = OUTLINED_FUNCTION_36_14();
    insert_space(v122, v123, v124, v125, v126, v127, v128, v129);
    OUTLINED_FUNCTION_105_2(v154);
  }

  vretproc(v0);
  v25 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_103_2();
}

uint64_t insert_ordinal_stem()
{
  OUTLINED_FUNCTION_6_32();
  v119 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_19_25(v2, v3, v4, v5, v6, v7, v8, v9, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113);
  OUTLINED_FUNCTION_23_23(v10, v11, v12, v13, v14, v15, v16, v17, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118);
  v18 = setjmp(v1);
  if (!v18 && !OUTLINED_FUNCTION_12_31(v18, &v87, v19, v20, v21, v22, v23, v24, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, SBYTE4(v114), v115, SWORD2(v115), SBYTE6(v115), v116, SWORD2(v116), SBYTE6(v116), SHIBYTE(v116), v117, v118))
  {
    v27 = OUTLINED_FUNCTION_10_32();
    get_parm(v27, v28, v29, -6);
    v30 = OUTLINED_FUNCTION_42_10();
    get_parm(v30, v31, v32, -6);
    fence_33(v0, 0, &null_str_11);
    v33 = OUTLINED_FUNCTION_34_16();
    if (lpta_loadp_setscan_r(v33, v34) || (OUTLINED_FUNCTION_2_35(), test_string_s()) || (v35 = OUTLINED_FUNCTION_5_33(), lpta_rpta_loadp(v35, v36, v37), v38 = OUTLINED_FUNCTION_8_32(), insert_2pt_s(v38, v39, v40, v41, 0)))
    {
      v42 = OUTLINED_FUNCTION_30_18();
      if (lpta_loadp_setscan_r(v42, v43) || (OUTLINED_FUNCTION_2_35(), test_string_s()) || (v44 = OUTLINED_FUNCTION_5_33(), lpta_rpta_loadp(v44, v45, v46), v47 = OUTLINED_FUNCTION_8_32(), insert_2pt_s(v47, v48, v49, v50, 0)))
      {
        v51 = OUTLINED_FUNCTION_30_18();
        if (lpta_loadp_setscan_r(v51, v52) || (OUTLINED_FUNCTION_2_35(), test_string_s()) || (v53 = OUTLINED_FUNCTION_5_33(), lpta_rpta_loadp(v53, v54, v55), v56 = OUTLINED_FUNCTION_9_32(), insert_2pt_s(v56, v57, v58, v59, 0)))
        {
          v60 = OUTLINED_FUNCTION_30_18();
          if (lpta_loadp_setscan_r(v60, v61) || (OUTLINED_FUNCTION_2_35(), test_string_s()) || (v62 = OUTLINED_FUNCTION_5_33(), lpta_rpta_loadp(v62, v63, v64), v65 = OUTLINED_FUNCTION_8_32(), insert_2pt_s(v65, v66, v67, v68, 0)))
          {
            v69 = OUTLINED_FUNCTION_30_18();
            if (lpta_loadp_setscan_r(v69, v70) || (OUTLINED_FUNCTION_2_35(), test_string_s()) || (v71 = OUTLINED_FUNCTION_5_33(), lpta_rpta_loadp(v71, v72, v73), v74 = OUTLINED_FUNCTION_8_32(), insert_2pt_s(v74, v75, v76, v77, 0)))
            {
              v78 = OUTLINED_FUNCTION_30_18();
              if (!lpta_loadp_setscan_r(v78, v79))
              {
                OUTLINED_FUNCTION_2_35();
                if (!test_string_s())
                {
                  v80 = OUTLINED_FUNCTION_5_33();
                  lpta_rpta_loadp(v80, v81, v82);
                  v83 = OUTLINED_FUNCTION_4_33();
                  insert_2pt_s(v83, v84, v85, v86, 0);
                }
              }
            }
          }
        }
      }
    }
  }

  vretproc(v0);
  v25 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_103_2();
}

uint64_t convert_por_fraction()
{
  OUTLINED_FUNCTION_6_32();
  v109 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75_8();
  OUTLINED_FUNCTION_19_25(v2, v3, v4, v5, v6, v7, v8, v9, v104[0], v104[1], v104[2], v104[3], v104[4], v104[5], v104[6], v104[7], v104[8], v104[9], v104[10], v104[11], v104[12], v104[13], v104[14], v104[15], v104[16], v104[17], v104[18], v104[19], v104[20], v104[21], v104[22], v104[23], v104[24], v104[25], v104[26]);
  OUTLINED_FUNCTION_37_14();
  OUTLINED_FUNCTION_108_2(v10, v11);
  if (!setjmp(v1) && !ventproc(v0, v104, v107, v106, v105, v108))
  {
    v15 = OUTLINED_FUNCTION_10_32();
    get_parm(v15, v16, v17, -6);
    v18 = OUTLINED_FUNCTION_32_17();
    OUTLINED_FUNCTION_71_8(v18, v19);
    v20 = OUTLINED_FUNCTION_36_14();
    push_ptr_init(v20, v21);
    v22 = OUTLINED_FUNCTION_45_10();
    v24 = push_ptr_init(v22, v23);
    OUTLINED_FUNCTION_82_7(v24, v25, &null_str_11);
    v26 = OUTLINED_FUNCTION_58_9();
    starttest(v26, v27);
    v28 = OUTLINED_FUNCTION_34_16();
    v30 = lpta_loadp_setscan_r(v28, v29);
    v31 = 0;
    if (!v30)
    {
      v32 = OUTLINED_FUNCTION_4_33();
      if (testFldeq(v32, v33, v34, 3) || advance_tok(v0))
      {
        v35 = 0;
        goto LABEL_10;
      }

      por_char_name();
LABEL_33:
      *(v0 + 136) = 1;
      *(v0 + 112) = v104[30];
      *(v0 + 128) = 0;
      v12 = 0;
      insert_r(v0);
      goto LABEL_4;
    }

    while (2)
    {
      v35 = v31;
      v46 = OUTLINED_FUNCTION_28_19();
      starttest(v46, v47);
      v48 = OUTLINED_FUNCTION_30_18();
      if (lpta_loadp_setscan_r(v48, v49))
      {
        goto LABEL_33;
      }

      v50 = OUTLINED_FUNCTION_4_33();
      if (!testFldeq(v50, v51, v52, 2))
      {
        v53 = advance_tok(v0);
        v39 = v35;
        if (!v53)
        {
LABEL_17:
          v35 = v39;
          v54 = OUTLINED_FUNCTION_59_9();
          savescptr(v54, v55, v56);
          OUTLINED_FUNCTION_2_35();
          v57 = test_string_s();
          v40 = v35;
          if (v57)
          {
            goto LABEL_10;
          }

LABEL_18:
          v35 = v40;
          v58 = OUTLINED_FUNCTION_33_17();
          savescptr(v58, v59, v60);
          v61 = OUTLINED_FUNCTION_4_33();
          if (!testFldeq(v61, v62, v63, 2) && !advance_tok(v0))
          {
            v64 = OUTLINED_FUNCTION_14_29();
            if (lpta_loadp_setscan_r(v64, v65) || (OUTLINED_FUNCTION_2_35(), test_string_s()))
            {
              v41 = v35;
            }

            else
            {
              v96 = OUTLINED_FUNCTION_86_6();
              lpta_rpta_loadp(v96, v97, v98);
              v99 = OUTLINED_FUNCTION_3_34();
              inserted = insert_2pt_s(v99, v100, 3, v101, v102);
              v43 = 2;
              v41 = v35;
              if (!inserted)
              {
                goto LABEL_27;
              }
            }

LABEL_23:
            v66 = v41;
            v67 = OUTLINED_FUNCTION_14_29();
            if (lpta_loadp_setscan_r(v67, v68) || (OUTLINED_FUNCTION_2_35(), test_string_s()))
            {
              v42 = v66;
            }

            else
            {
              v88 = OUTLINED_FUNCTION_86_6();
              lpta_rpta_loadp(v88, v89, v90);
              v91 = OUTLINED_FUNCTION_3_34();
              v95 = insert_2pt_s(v91, v92, 4, v93, v94);
              v42 = v66;
              v43 = v66;
              if (!v95)
              {
                goto LABEL_27;
              }
            }

LABEL_26:
            v43 = v42;
            OUTLINED_FUNCTION_86_6();
            insert_ordinal_stem();
LABEL_27:
            *(v0 + 168) = 1;
            OUTLINED_FUNCTION_35_15();
            v69 = OUTLINED_FUNCTION_29_19();
            insert_l(v69);
            v70 = OUTLINED_FUNCTION_73_8();
            if (lpta_loadp_setscan_r(v70, v71) || (OUTLINED_FUNCTION_2_35(), test_string_s()))
            {
              v44 = v43;
LABEL_30:
              v72 = v44;
              v73 = OUTLINED_FUNCTION_28_19();
              starttest(v73, v74);
              OUTLINED_FUNCTION_59_9();
              por_char_name();
              v45 = v72;
LABEL_31:
              v35 = v45;
              OUTLINED_FUNCTION_46_10();
              OUTLINED_FUNCTION_35_15();
              v75 = OUTLINED_FUNCTION_20_24();
              insert_l(v75);
            }

            else
            {
              v84 = OUTLINED_FUNCTION_28_19();
              starttest(v84, v85);
              v35 = 2;
              if (v43 != 2)
              {
                v86 = OUTLINED_FUNCTION_28_19();
                starttest_e(v86, v87);
                OUTLINED_FUNCTION_59_9();
                por_char_name();
                v35 = v43;
              }
            }

LABEL_32:
            v76 = OUTLINED_FUNCTION_5_33();
            lpta_rpta_loadp(v76, v77, v78);
            v79 = OUTLINED_FUNCTION_2_35();
            if (!insert_2pt_s(v79, v80, v81, v82, v83))
            {
              goto LABEL_33;
            }
          }
        }
      }

LABEL_10:
      v36 = *(v0 + 104);
      if (v36)
      {
        v37 = OUTLINED_FUNCTION_47_10(v36);
      }

      else
      {
        v37 = OUTLINED_FUNCTION_74_8();
      }

      v38 = v37 - 1;
      v31 = v35;
      v39 = v35;
      v40 = v35;
      v41 = v35;
      v42 = v35;
      v43 = v35;
      v44 = v35;
      v45 = v35;
      switch(v38)
      {
        case 0:
          continue;
        case 1:
        case 2:
          goto LABEL_33;
        case 3:
          goto LABEL_17;
        case 4:
          goto LABEL_18;
        case 5:
          goto LABEL_23;
        case 6:
          goto LABEL_27;
        case 7:
          goto LABEL_26;
        case 8:
          goto LABEL_30;
        case 9:
        case 10:
          goto LABEL_32;
        case 11:
          goto LABEL_31;
        default:
          goto LABEL_3;
      }
    }
  }

LABEL_3:
  v12 = 94;
LABEL_4:
  vretproc(v0);
  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

void por_1_and_2()
{
  OUTLINED_FUNCTION_70_8();
  OUTLINED_FUNCTION_80_7();
  v62 = *MEMORY[0x277D85DE8];
  v49 = 0;
  v50 = 0;
  v47 = 0;
  v48 = 0;
  v46 = 65532;
  OUTLINED_FUNCTION_38_13();
  bzero(v45, v1);
  OUTLINED_FUNCTION_37_14();
  bzero(v61, v2);
  v3 = setjmp(v61);
  if (v3 || OUTLINED_FUNCTION_95_5(v3, v45, v4, v5, v6, v7, v8, v9, v45[0], v45[1], v45[2], v45[3], v45[4], v45[5], v45[6], v45[7], v45[8], v45[9], v45[10], v45[11], v45[12], v45[13], v45[14], v45[15], v45[16], v45[17], v45[18], v45[19], v45[20], v45[21], v45[22], v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61[0]))
  {
    goto LABEL_3;
  }

  v11 = OUTLINED_FUNCTION_54_9();
  OUTLINED_FUNCTION_98_4(v11, v12);
  v13 = OUTLINED_FUNCTION_31_18();
  get_parm(v13, v14, v15, -6);
  v16 = OUTLINED_FUNCTION_42_10();
  get_parm(v16, v17, v18, -4);
  fence_33(v0, 0, &null_str_11);
  WORD1(v46) = *(v0 + 3014);
  v19 = *(v0 + 2822);
  if (*(v0 + 2850) == v19)
  {
    v20 = *(v0 + 3010);
LABEL_6:
    WORD1(v46) = v20;
LABEL_7:
    insert_1_2(v0, &v49);
    goto LABEL_3;
  }

  v21 = 0;
  while (2)
  {
    if (*(v0 + 2830) == v19)
    {
      v20 = *(v0 + 3018);
      goto LABEL_6;
    }

LABEL_11:
    if (*(v0 + 2826) == v19)
    {
      goto LABEL_7;
    }

LABEL_12:
    if (*(v0 + 2870) == v19)
    {
      goto LABEL_7;
    }

LABEL_13:
    if (*(v0 + 2862) == v19)
    {
      v22 = OUTLINED_FUNCTION_40_11();
      lpta_rpta_loadp(v22, v23, &v47);
      OUTLINED_FUNCTION_4_33();
      if (!mark_s())
      {
        v44 = v0;
        goto LABEL_43;
      }
    }

LABEL_15:
    if (*(v0 + 2898) == 4 && HIWORD(v46) == 1)
    {
      break;
    }

LABEL_19:
    if (*(v0 + 2834) == *(v0 + 2822))
    {
      goto LABEL_7;
    }

LABEL_20:
    if (*(v0 + 2898) > 3)
    {
      goto LABEL_7;
    }

LABEL_21:
    if (*(v0 + 2842) == *(v0 + 2822))
    {
      goto LABEL_7;
    }

LABEL_22:
    v25 = OUTLINED_FUNCTION_50_9();
    starttest(v25, v26);
    v27 = OUTLINED_FUNCTION_34_16();
    if (lpta_loadp_setscan_r(v27, v28))
    {
LABEL_23:
      v29 = OUTLINED_FUNCTION_92_5();
      starttest(v29, v30);
      if (*(v0 + 2646) == *(v0 + 2610))
      {
        goto LABEL_7;
      }

LABEL_24:
      v31 = OUTLINED_FUNCTION_40_11();
      lpta_rpta_loadp(v31, v32, &v47);
      OUTLINED_FUNCTION_3_34();
      if (mark_s())
      {
        goto LABEL_25;
      }

      v44 = OUTLINED_FUNCTION_27_20();
LABEL_43:
      npush_s(v44);
      OUTLINED_FUNCTION_72_8();
      break;
    }

    bspush_ca_scan_boa();
    v42 = OUTLINED_FUNCTION_66_8();
    bspush_ca_scan(v42, v43);
    OUTLINED_FUNCTION_2_35();
    if (!test_string_s())
    {
LABEL_34:
      v21 = 1;
    }

LABEL_25:
    v33 = v21;
LABEL_26:
    v34 = *(v0 + 104);
    if (v34)
    {
      v35 = OUTLINED_FUNCTION_47_10(v34);
      v21 = v36;
    }

    else
    {
      v35 = vback(v0, v33);
      v21 = 0;
    }

    switch(v35)
    {
      case 1:
        v19 = *(v0 + 2822);
        continue;
      case 2:
        goto LABEL_7;
      case 3:
        v19 = *(v0 + 2822);
        goto LABEL_11;
      case 4:
        v19 = *(v0 + 2822);
        goto LABEL_12;
      case 5:
        v19 = *(v0 + 2822);
        goto LABEL_13;
      case 6:
        goto LABEL_15;
      case 7:
        goto LABEL_19;
      case 8:
        goto LABEL_20;
      case 9:
        goto LABEL_21;
      case 10:
        goto LABEL_22;
      case 11:
        goto LABEL_23;
      case 12:
        bspop_boa(v0);
        goto LABEL_7;
      case 13:
        v37 = OUTLINED_FUNCTION_4_33();
        v40 = testFldeq(v37, v38, v39, 3);
        v33 = v21;
        if (!v40)
        {
          v41 = advance_tok(v0);
          v33 = v21;
          if (!v41)
          {
            goto LABEL_34;
          }
        }

        goto LABEL_26;
      case 14:
        goto LABEL_34;
      case 15:
        goto LABEL_24;
      default:
        goto LABEL_3;
    }
  }

LABEL_3:
  vretproc(v0);
  v10 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_69_8();
}

uint64_t insert_1_2(uint64_t a1, __int16 *a2)
{
  v60 = *MEMORY[0x277D85DE8];
  v57 = 0;
  v58 = 0;
  v55 = 0;
  v56 = 0;
  v54 = 0;
  OUTLINED_FUNCTION_38_13();
  bzero(v53, v4);
  OUTLINED_FUNCTION_37_14();
  bzero(v59, v5);
  if (setjmp(v59) || (OUTLINED_FUNCTION_84_6(), ventproc(a1, v6, v7, v8, v9, v59)))
  {
LABEL_3:
    v10 = 94;
    goto LABEL_4;
  }

  v13 = OUTLINED_FUNCTION_32_17();
  get_parm(v13, v14, a2, -6);
  v15 = OUTLINED_FUNCTION_36_14();
  OUTLINED_FUNCTION_98_4(v15, v16);
  v17 = OUTLINED_FUNCTION_31_18();
  get_parm(v17, v18, v19, -4);
  v20 = OUTLINED_FUNCTION_42_10();
  get_parm(v20, v21, v22, -4);
  fence_33(a1, 0, &null_str_11);
  if (WORD1(v54) == 1)
  {
    v23 = OUTLINED_FUNCTION_28_19();
    starttest(v23, v24);
    v25 = *(a1 + 3014);
    OUTLINED_FUNCTION_90_6();
    if (v26)
    {
      v27 = OUTLINED_FUNCTION_53_9();
      lpta_rpta_loadp(v27, v28, v29);
      v10 = 0;
      v30 = OUTLINED_FUNCTION_4_33();
      if (!insert_2pt_s(v30, v31, v32, v33, 0))
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_10:
    v34 = OUTLINED_FUNCTION_28_19();
    starttest(v34, v35);
    v36 = *(a1 + 3014);
    OUTLINED_FUNCTION_90_6();
    if (v26)
    {
      v37 = OUTLINED_FUNCTION_53_9();
      lpta_rpta_loadp(v37, v38, v39);
      v10 = 0;
      v40 = OUTLINED_FUNCTION_9_32();
      if (!insert_2pt_s(v40, v41, v42, v43, 0))
      {
        goto LABEL_4;
      }
    }
  }

  while (2)
  {
    v44 = OUTLINED_FUNCTION_53_9();
    lpta_rpta_loadp(v44, v45, v46);
    v10 = 0;
    v47 = OUTLINED_FUNCTION_9_32();
    if (insert_2pt_s(v47, v48, v49, v50, 0))
    {
      v51 = *(a1 + 104);
      if (v51)
      {
        v52 = OUTLINED_FUNCTION_47_10(v51);
      }

      else
      {
        v52 = OUTLINED_FUNCTION_74_8();
      }

      v10 = 0;
      switch(v52)
      {
        case 1:
          goto LABEL_10;
        case 2:
        case 5:
          continue;
        case 3:
        case 4:
          goto LABEL_4;
        default:
          goto LABEL_3;
      }
    }

    break;
  }

LABEL_4:
  vretproc(a1);
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t assign_gender_to_por_number()
{
  OUTLINED_FUNCTION_6_32();
  v133 = *MEMORY[0x277D85DE8];
  v128[0] = 0;
  v128[1] = 0;
  v127[0] = 0;
  v127[1] = 0;
  v126 = 0;
  v124 = 0;
  v125 = 0;
  OUTLINED_FUNCTION_83_6();
  v118 = 0;
  v119 = 0;
  HIDWORD(v117) = 0;
  OUTLINED_FUNCTION_38_13();
  bzero(&v94, v2);
  OUTLINED_FUNCTION_37_14();
  OUTLINED_FUNCTION_108_2(v3, v4);
  if (!setjmp(v1) && !ventproc(v0, &v94, v131, v130, v129, v132))
  {
    v8 = OUTLINED_FUNCTION_31_18();
    get_parm(v8, v9, v10, -6);
    v11 = OUTLINED_FUNCTION_40_11();
    OUTLINED_FUNCTION_71_8(v11, v12);
    v126 = 65532;
    v13 = OUTLINED_FUNCTION_76_8();
    v15 = push_ptr_init(v13, v14);
    OUTLINED_FUNCTION_99_4(v15, v16, v17, v18, v19, v20, v21, v22, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122[0], v122[1], v123);
    v23 = OUTLINED_FUNCTION_52_9();
    push_ptr_init(v23, v24);
    v25 = OUTLINED_FUNCTION_54_9();
    push_ptr_init(v25, v26);
    v27 = OUTLINED_FUNCTION_44_10();
    push_ptr_init(v27, v28);
    HIDWORD(v117) = 65532;
    fence_33(v0, 0, &null_str_11);
    v29 = OUTLINED_FUNCTION_18_26();
    fence_33(v29, v30, v31);
    HIWORD(v126) = *(v0 + 3014);
    v32 = OUTLINED_FUNCTION_63_8();
    starttest(v32, v33);
    v34 = OUTLINED_FUNCTION_40_11();
    if (lpta_loadp_setscan_r(v34, v35) || advanc(v0))
    {
      goto LABEL_10;
    }

LABEL_7:
    v36 = OUTLINED_FUNCTION_91_5();
    savescptr(v36, v37, v38);
    v39 = OUTLINED_FUNCTION_28_19();
    bspush_ca_scan(v39, v40);
    v41 = OUTLINED_FUNCTION_48_10();
    if (testFldeq(v41, v42, 1, 2))
    {
      goto LABEL_28;
    }

    while (1)
    {
LABEL_8:
      if (advance_tok(v0))
      {
        goto LABEL_28;
      }

LABEL_9:
      OUTLINED_FUNCTION_65_8();
      v43 = OUTLINED_FUNCTION_42_10();
      savescptr(v43, v44, v45);
      v46 = OUTLINED_FUNCTION_42_10();
      get_gender_number(v46, v47, v48, v49, v50);
LABEL_10:
      v51 = OUTLINED_FUNCTION_28_19();
      startloop(v51, v52);
      lpta_loadpn(v0, v128);
      OUTLINED_FUNCTION_60_9();
      lpta_mover();
      v53 = OUTLINED_FUNCTION_51_9();
      lpta_storep(v53, v54);
      lpta_loadpn(v0, v127);
      OUTLINED_FUNCTION_60_9();
      lpta_mover();
      v55 = OUTLINED_FUNCTION_40_11();
      lpta_storep(v55, v56);
      v57 = OUTLINED_FUNCTION_51_9();
      if (!forall_to_test(v57, v58, &v118))
      {
        break;
      }

      do
      {
LABEL_28:
        v87 = *(v0 + 104);
        if (v87)
        {
          v88 = OUTLINED_FUNCTION_47_10(v87);
        }

        else
        {
          v88 = OUTLINED_FUNCTION_74_8();
        }

        switch(v88)
        {
          case 1:
            goto LABEL_10;
          case 2:
            goto LABEL_7;
          case 3:
            v89 = OUTLINED_FUNCTION_51_9();
            bspush_ca_scan(v89, v90);
            v91 = OUTLINED_FUNCTION_60_9();
            v93 = 11;
            break;
          case 4:
            goto LABEL_8;
          case 5:
            v91 = OUTLINED_FUNCTION_60_9();
            break;
          case 6:
            goto LABEL_9;
          case 7:
            goto LABEL_36;
          case 8:
            goto LABEL_14;
          case 9:
          case 12:
          case 14:
          case 16:
          case 17:
            goto LABEL_27;
          case 10:
            goto LABEL_13;
          case 11:
            goto LABEL_16;
          case 13:
            goto LABEL_18;
          case 15:
            goto LABEL_20;
          case 18:
            goto LABEL_11;
          default:
            goto LABEL_3;
        }
      }

      while (testFldeq(v91, v92, 1, v93));
    }

LABEL_11:
    v59 = OUTLINED_FUNCTION_22_23();
    bspush_ca(v59);
    v60 = OUTLINED_FUNCTION_52_9();
    if (lpta_loadp_setscan_r(v60, v61) || advance_tok(v0))
    {
      goto LABEL_28;
    }

LABEL_13:
    v62 = OUTLINED_FUNCTION_62_8();
    savescptr(v62, v63, v64);
LABEL_14:
    v65 = OUTLINED_FUNCTION_30_18();
    if (lpta_loadp_setscan_r(v65, v66) || (OUTLINED_FUNCTION_2_35(), test_string_s()))
    {
LABEL_16:
      v67 = OUTLINED_FUNCTION_30_18();
      if (lpta_loadp_setscan_r(v67, v68) || (OUTLINED_FUNCTION_2_35(), test_string_s()))
      {
LABEL_18:
        v69 = OUTLINED_FUNCTION_30_18();
        if (lpta_loadp_setscan_l(v69, v70) || (OUTLINED_FUNCTION_4_33(), test_string_s()))
        {
LABEL_20:
          v71 = OUTLINED_FUNCTION_22_23();
          starttest(v71, v72);
          v73 = OUTLINED_FUNCTION_30_18();
          if (!lpta_loadp_setscan_r(v73, v74))
          {
            OUTLINED_FUNCTION_4_33();
            if (!test_string_s())
            {
              v75 = OUTLINED_FUNCTION_28_19();
              starttest_e(v75, v76);
              insert_gender();
            }
          }
        }

        else
        {
          v77 = OUTLINED_FUNCTION_28_19();
          starttest_l(v77, v78);
          insert_hundreds_ending();
        }

LABEL_27:
        OUTLINED_FUNCTION_64_8();
        if (!OUTLINED_FUNCTION_96_5(v86, 8, 18, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122[0]))
        {
LABEL_36:
          v5 = 0;
          goto LABEL_4;
        }

        goto LABEL_28;
      }

      v79 = OUTLINED_FUNCTION_28_19();
      starttest_e(v79, v80);
      v81 = OUTLINED_FUNCTION_51_9();
      v83 = 2;
    }

    else
    {
      v84 = OUTLINED_FUNCTION_28_19();
      starttest_e(v84, v85);
      v81 = OUTLINED_FUNCTION_51_9();
      v83 = 1;
    }

    move_i(v81, v82, v83);
    if (insert_1_2(v0, v122))
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

LABEL_3:
  v5 = 94;
LABEL_4:
  vretproc(v0);
  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t get_gender_number(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v74 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75_8();
  v67 = 0;
  v68 = 0;
  v66 = 0;
  OUTLINED_FUNCTION_38_13();
  bzero(v65, v10);
  OUTLINED_FUNCTION_37_14();
  bzero(v73, v11);
  if (!setjmp(v73) && !ventproc(a1, v65, v72, v71, v70, v73))
  {
    v14 = OUTLINED_FUNCTION_50_9();
    get_parm(v14, v15, a2, -6);
    v16 = OUTLINED_FUNCTION_32_17();
    OUTLINED_FUNCTION_98_4(v16, v17);
    v18 = OUTLINED_FUNCTION_31_18();
    get_parm(v18, v19, v20, -4);
    v21 = OUTLINED_FUNCTION_42_10();
    get_parm(v21, v22, v23, -4);
    v24 = OUTLINED_FUNCTION_44_10();
    push_ptr_init(v24, v25);
    fence_33(a1, 0, &null_str_11);
    v26 = OUTLINED_FUNCTION_79_8();
    fence_33(v26, v27, v28);
    HIWORD(v68) = *(a1 + 3014);
    WORD1(v68) = *(a1 + 3022);
    starttest(a1, a3);
    v29 = OUTLINED_FUNCTION_50_9();
    if (!lpta_loadp_setscan_r(v29, v30))
    {
      v55 = OUTLINED_FUNCTION_60_9();
      if (testFldeq(v55, v56, 2, 6) || advance_tok(a1))
      {
        goto LABEL_20;
      }

      goto LABEL_34;
    }

LABEL_6:
    v67 = v69;
    strip_plural();
    if (!v31)
    {
      WORD1(v68) = *(a1 + 3026);
    }

LABEL_8:
    v32 = OUTLINED_FUNCTION_7_32();
    if (lpta_loadp_setscan_l(v32, v33) || (OUTLINED_FUNCTION_4_33(), test_string_s()))
    {
LABEL_10:
      v34 = OUTLINED_FUNCTION_7_32();
      if (lpta_loadp_setscan_l(v34, v35) || (OUTLINED_FUNCTION_4_33(), test_string_s()))
      {
LABEL_12:
        v36 = OUTLINED_FUNCTION_57_9();
        lpta_rpta_loadp(v36, v37, v38);
        v39 = OUTLINED_FUNCTION_27_20();
        if (!setd_lookup(v39, v40, 57))
        {
LABEL_34:
          *(a4 + 2) = HIWORD(v68);
          *(a5 + 2) = WORD1(v68);
          vretproc(a1);
          result = 0;
          goto LABEL_4;
        }

LABEL_13:
        v41 = OUTLINED_FUNCTION_28_19();
        starttest(v41, v42);
        v43 = OUTLINED_FUNCTION_7_32();
        if (!lpta_loadp_setscan_l(v43, v44))
        {
          v51 = OUTLINED_FUNCTION_28_19();
          bspush_ca_scan(v51, v52);
          OUTLINED_FUNCTION_2_35();
          if (test_string_s())
          {
            goto LABEL_20;
          }

          v53 = OUTLINED_FUNCTION_22_23();
          bspush_ca_scan(v53, v54);
          goto LABEL_31;
        }

LABEL_14:
        v45 = OUTLINED_FUNCTION_28_19();
        starttest(v45, v46);
        v47 = OUTLINED_FUNCTION_7_32();
        if (lpta_loadp_setscan_l(v47, v48))
        {
          goto LABEL_34;
        }

        v49 = OUTLINED_FUNCTION_28_19();
        bspush_ca_scan(v49, v50);
LABEL_28:
        OUTLINED_FUNCTION_2_35();
        if (test_string_s())
        {
          goto LABEL_20;
        }

LABEL_29:
        OUTLINED_FUNCTION_16_28();
LABEL_32:
        while (test_string_s())
        {
          do
          {
LABEL_20:
            while (2)
            {
              v57 = *(a1 + 104);
              if (v57)
              {
                v58 = OUTLINED_FUNCTION_47_10(v57);
              }

              else
              {
                v58 = OUTLINED_FUNCTION_74_8();
              }

              switch(v58)
              {
                case 1:
                  goto LABEL_6;
                case 2:
                  goto LABEL_8;
                case 3:
                  goto LABEL_10;
                case 4:
                  goto LABEL_34;
                case 5:
                  goto LABEL_12;
                case 6:
                  goto LABEL_13;
                case 7:
                  goto LABEL_14;
                case 8:
                  v59 = OUTLINED_FUNCTION_28_19();
                  bspush_ca_scan(v59, v60);
                  OUTLINED_FUNCTION_2_35();
                  if (test_string_s())
                  {
                    continue;
                  }

                  v61 = OUTLINED_FUNCTION_28_19();
                  bspush_ca_scan(v61, v62);
                  v63 = OUTLINED_FUNCTION_28_19();
                  bspush_ca_scan(v63, v64);
                  break;
                case 9:
                case 12:
                case 15:
                  goto LABEL_31;
                case 10:
                case 11:
                case 16:
                  goto LABEL_33;
                case 13:
                  OUTLINED_FUNCTION_4_33();
                  goto LABEL_32;
                case 14:
                  goto LABEL_26;
                case 17:
                  goto LABEL_28;
                case 18:
                  goto LABEL_29;
                default:
                  goto LABEL_3;
              }

              break;
            }

LABEL_26:
            OUTLINED_FUNCTION_2_35();
          }

          while (test_string_s());
LABEL_31:
          OUTLINED_FUNCTION_2_35();
        }
      }
    }

LABEL_33:
    HIWORD(v68) = *(a1 + 3018);
    goto LABEL_34;
  }

LABEL_3:
  vretproc(a1);
  result = 94;
LABEL_4:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t adjust_num_in_por_ordinal()
{
  OUTLINED_FUNCTION_100_3();
  v128 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_24_23(v2, v3, v4, v5, v6, v7, v8, v9, v48, v51, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117, v120);
  OUTLINED_FUNCTION_37_14();
  bzero(v127, v10);
  v11 = setjmp(v127);
  if (!v11 && !OUTLINED_FUNCTION_88_6(v11, v12, v13, v14, v15, v16, v17, v18, v49, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118, v121, *v123, v123[4], *v124, *&v124[4], v124[6], v125, SWORD2(v125), SBYTE6(v125), SHIBYTE(v125), v126, v127[0]))
  {
    v22 = OUTLINED_FUNCTION_40_11();
    OUTLINED_FUNCTION_71_8(v22, v23);
    v19 = 0;
    OUTLINED_FUNCTION_82_7(v24, v25, &null_str_11);
    v26 = OUTLINED_FUNCTION_79_8();
    fence_33(v26, v27, v28);
    starttest(v0, v1);
    v29 = OUTLINED_FUNCTION_40_11();
    if (lpta_loadp_setscan_r(v29, v30))
    {
      goto LABEL_4;
    }

    v31 = OUTLINED_FUNCTION_63_8();
    bspush_ca_scan(v31, v32);
    v33 = OUTLINED_FUNCTION_48_10();
    for (i = 2; ; i = 11)
    {
      if (testFldeq(v33, v34, 1, i))
      {
        goto LABEL_10;
      }

      while (1)
      {
        v36 = OUTLINED_FUNCTION_60_9();
        if (!testFldeq(v36, v37, 4, 2))
        {
          v38 = advance_tok(v0);
          if (!v38)
          {
            OUTLINED_FUNCTION_15_29(v38, v39, v40, v41, v42, v43, v44, v45, v50, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v119, v122);
            v19 = 0;
            insert_l(v0);
            goto LABEL_4;
          }
        }

LABEL_10:
        v46 = *(v0 + 104);
        v47 = v46 ? OUTLINED_FUNCTION_47_10(v46) : OUTLINED_FUNCTION_74_8();
        if (v47 == 2)
        {
          break;
        }

        if (v47 == 1)
        {
          v19 = 0;
          goto LABEL_4;
        }

        if (v47 != 3)
        {
          goto LABEL_3;
        }
      }

      v33 = OUTLINED_FUNCTION_60_9();
    }
  }

LABEL_3:
  v19 = 94;
LABEL_4:
  vretproc(v0);
  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

void convert_por_roman_num()
{
  OUTLINED_FUNCTION_70_8();
  OUTLINED_FUNCTION_6_32();
  v114 = *MEMORY[0x277D85DE8];
  memset(v109, 0, sizeof(v109));
  OUTLINED_FUNCTION_75_8();
  OUTLINED_FUNCTION_19_25(v1, v2, v3, v4, v5, v6, v7, v8, v106[0], v106[1], v106[2], v106[3], v106[4], v106[5], v106[6], v106[7], v106[8], v106[9], v106[10], v106[11], v106[12], v106[13], v106[14], v106[15], v106[16], v106[17], v106[18], v106[19], v106[20], v106[21], v106[22], v106[23], v106[24], v106[25], v106[26]);
  OUTLINED_FUNCTION_37_14();
  bzero(v113, v9);
  if (setjmp(v113))
  {
    goto LABEL_4;
  }

  if (ventproc(v0, v106, v112, v111, v110, v113))
  {
    goto LABEL_4;
  }

  v10 = OUTLINED_FUNCTION_10_32();
  get_parm(v10, v11, v12, -6);
  v13 = OUTLINED_FUNCTION_42_10();
  get_parm(v13, v14, v15, -6);
  push_ptr_init(v0, v109);
  v16 = OUTLINED_FUNCTION_73_8();
  push_ptr_init(v16, v17);
  v18 = OUTLINED_FUNCTION_32_17();
  push_ptr_init(v18, v19);
  v20 = OUTLINED_FUNCTION_36_14();
  push_ptr_init(v20, v21);
  v22 = OUTLINED_FUNCTION_45_10();
  push_ptr_init(v22, v23);
  fence_33(v0, 0, &null_str_11);
  v24 = OUTLINED_FUNCTION_63_8();
  starttest(v24, v25);
  v26 = OUTLINED_FUNCTION_34_16();
  if (lpta_loadp_setscan_r(v26, v27))
  {
    goto LABEL_4;
  }

  v29 = 0;
  while (2)
  {
    v30 = OUTLINED_FUNCTION_48_10();
    if (!testFldeq(v30, v31, 1, 2) && !advance_tok(v0))
    {
      v32 = OUTLINED_FUNCTION_58_9();
      bspush_ca_scan(v32, v33);
      *(v0 + 136) = 1;
      if (!OUTLINED_FUNCTION_39_12())
      {
        v34 = OUTLINED_FUNCTION_34_16();
        v36 = v29;
        if (!lpta_loadp_setscan_r(v34, v35))
        {
LABEL_10:
          while (1)
          {
            v37 = OUTLINED_FUNCTION_50_9();
            bspush_ca_scan(v37, v38);
            OUTLINED_FUNCTION_48_10();
            v39 = test_string_s();
            LODWORD(v29) = v36;
            v40 = v36;
            if (v39)
            {
              break;
            }

LABEL_50:
            v36 = v40;
            v95 = OUTLINED_FUNCTION_66_8();
            bspush_ca_scan(v95, v96);
          }
        }
      }
    }

    v41 = v29;
LABEL_12:
    v42 = *(v0 + 104);
    if (v42)
    {
      v43 = OUTLINED_FUNCTION_47_10(v42);
      v36 = v44;
    }

    else
    {
      v43 = vback(v0, v41);
      v36 = 0;
    }

    v40 = v36;
    switch(v43)
    {
      case 2:
        v29 = v36;
        continue;
      case 3:
        v45 = OUTLINED_FUNCTION_28_19();
        bspush_ca_scan(v45, v46);
        goto LABEL_23;
      case 4:
        goto LABEL_50;
      case 5:
LABEL_23:
        OUTLINED_FUNCTION_2_35();
        v60 = test_string_s();
        v40 = v36;
        v41 = v36;
        if (!v60)
        {
          goto LABEL_50;
        }

        goto LABEL_12;
      case 6:
        OUTLINED_FUNCTION_102_2();
        v62 = OUTLINED_FUNCTION_39_12();
        v41 = v36;
        if (v62)
        {
          goto LABEL_12;
        }

        goto LABEL_27;
      case 7:
        goto LABEL_10;
      case 8:
LABEL_27:
        v63 = OUTLINED_FUNCTION_22_23();
        starttest(v63, v64);
        v65 = OUTLINED_FUNCTION_30_18();
        if (lpta_loadp_setscan_r(v65, v66))
        {
          goto LABEL_28;
        }

        v77 = OUTLINED_FUNCTION_28_19();
        bspush_ca_scan(v77, v78);
        v61 = advance_tok(v0);
        goto LABEL_33;
      case 9:
LABEL_28:
        v67 = OUTLINED_FUNCTION_28_19();
        starttest(v67, v68);
        v69 = OUTLINED_FUNCTION_30_18();
        if (lpta_loadp_setscan_r(v69, v70))
        {
          goto LABEL_52;
        }

        v71 = OUTLINED_FUNCTION_28_19();
        bspush_ca_scan(v71, v72);
        goto LABEL_30;
      case 10:
        OUTLINED_FUNCTION_16_28();
        v61 = test_string_s();
LABEL_33:
        v41 = v36;
        if (!v61)
        {
          goto LABEL_34;
        }

        goto LABEL_12;
      case 11:
LABEL_34:
        OUTLINED_FUNCTION_102_2();
        v79 = OUTLINED_FUNCTION_39_12();
        v41 = v36;
        if (v79)
        {
          goto LABEL_12;
        }

        find_previous_word();
        if (v80)
        {
          goto LABEL_41;
        }

        v81 = OUTLINED_FUNCTION_28_19();
        starttest(v81, v82);
        v83 = OUTLINED_FUNCTION_30_18();
        if (!lpta_loadp_setscan_l(v83, v84))
        {
LABEL_45:
          savescptr(v0, 14, v107);
          OUTLINED_FUNCTION_28_19();
          bspush_ca_scan_boa();
          OUTLINED_FUNCTION_102_2();
          v94 = *(v0 + 1408);
          goto LABEL_46;
        }

LABEL_37:
        v85 = OUTLINED_FUNCTION_30_18();
        if (!lpta_loadp_setscan_l(v85, v86))
        {
          OUTLINED_FUNCTION_2_35();
          if (!test_string_s())
          {
LABEL_39:
            savescptr(v0, 18, v108);
          }
        }

LABEL_40:
        lpta_rpta_loadp(v0, v109, v108);
        v87 = OUTLINED_FUNCTION_27_20();
        if (!setd_lookup(v87, v88, 55))
        {
          goto LABEL_57;
        }

LABEL_41:
        find_next_word();
        if (v89)
        {
          goto LABEL_4;
        }

        v90 = OUTLINED_FUNCTION_28_19();
        starttest(v90, v91);
        v92 = OUTLINED_FUNCTION_14_29();
        if (!lpta_loadp_setscan_l(v92, v93) && !test_string_s())
        {
          OUTLINED_FUNCTION_28_19();
          bspush_ca_scan_boa();
          *(v0 + 136) = 1;
LABEL_46:
          v76 = OUTLINED_FUNCTION_39_12();
LABEL_47:
          if (v76)
          {
            v41 = v36;
          }

          else
          {
            v41 = 1;
          }

          goto LABEL_12;
        }

LABEL_56:
        v101 = OUTLINED_FUNCTION_5_33();
        lpta_rpta_loadp(v101, v102, v103);
        v104 = OUTLINED_FUNCTION_27_20();
        if (!setd_lookup(v104, v105, 56))
        {
LABEL_57:
          OUTLINED_FUNCTION_61_9();
          convert_roman_num_to_ordinal();
        }

LABEL_4:
        vretproc(v0);
        v28 = *MEMORY[0x277D85DE8];
        OUTLINED_FUNCTION_69_8();
        return;
      case 12:
        goto LABEL_41;
      case 13:
        goto LABEL_37;
      case 14:
        goto LABEL_45;
      case 15:
        bspop_boa(v0);
        v47 = OUTLINED_FUNCTION_30_18();
        v49 = lpta_loadp_setscan_r(v47, v48);
        v41 = v36;
        if (v49)
        {
          goto LABEL_12;
        }

        v50 = OUTLINED_FUNCTION_2_35();
        v53 = testFldeq(v50, v51, v52, 2);
        v41 = v36;
        if (v53)
        {
          goto LABEL_12;
        }

        v54 = advance_tok(v0);
        v41 = v36;
        if (v54)
        {
          goto LABEL_12;
        }

        v55 = OUTLINED_FUNCTION_2_35();
        v58 = testFldeq(v55, v56, v57, 1);
        v41 = v36;
        if (v58)
        {
          goto LABEL_12;
        }

        v59 = advance_tok(v0);
        v41 = v36;
        if (v59)
        {
          goto LABEL_12;
        }

        goto LABEL_57;
      case 16:
        goto LABEL_57;
      case 17:
        goto LABEL_40;
      case 18:
        goto LABEL_39;
      case 20:
        goto LABEL_56;
      case 21:
        bspop_boa(v0);
        goto LABEL_55;
      case 22:
LABEL_55:
        v98 = OUTLINED_FUNCTION_33_17();
        savescptr(v98, v99, v100);
        goto LABEL_56;
      case 25:
LABEL_52:
        OUTLINED_FUNCTION_61_9();
        convert_roman_nums();
        if (!v97)
        {
          *(v0 + 2822) = *(v0 + 2862);
          OUTLINED_FUNCTION_61_9();
          convert_digits();
        }

        goto LABEL_4;
      case 26:
LABEL_30:
        OUTLINED_FUNCTION_2_35();
        v73 = test_string_s();
        v41 = v36;
        if (!v73)
        {
          goto LABEL_31;
        }

        goto LABEL_12;
      case 27:
LABEL_31:
        v74 = OUTLINED_FUNCTION_28_19();
        starttest(v74, v75);
        OUTLINED_FUNCTION_28_19();
        bspush_ca_boa();
        OUTLINED_FUNCTION_61_9();
        v76 = convert_roman_num_to_ordinal();
        goto LABEL_47;
      case 29:
        bspop_boa(v0);
        goto LABEL_4;
      default:
        goto LABEL_4;
    }
  }
}

uint64_t convert_roman_num_to_ordinal()
{
  OUTLINED_FUNCTION_6_32();
  v235 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_19_25(v2, v3, v4, v5, v6, v7, v8, v9, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229);
  OUTLINED_FUNCTION_23_23(v10, v11, v12, v13, v14, v15, v16, v17, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234);
  v18 = setjmp(v1);
  if (v18 || OUTLINED_FUNCTION_12_31(v18, &v203, v19, v20, v21, v22, v23, v24, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, SBYTE4(v230), v231, SWORD2(v231), SBYTE6(v231), v232, SWORD2(v232), SBYTE6(v232), SHIBYTE(v232), v233, v234))
  {
    goto LABEL_43;
  }

  v25 = OUTLINED_FUNCTION_10_32();
  get_parm(v25, v26, v27, -6);
  v28 = OUTLINED_FUNCTION_42_10();
  get_parm(v28, v29, v30, -6);
  fence_33(v0, 0, &null_str_11);
  v31 = OUTLINED_FUNCTION_34_16();
  if (!lpta_loadp_setscan_r(v31, v32))
  {
    OUTLINED_FUNCTION_18_26();
    v33 = test_string_s();
    if (!v33 && !OUTLINED_FUNCTION_11_31(v33, v34, v35, v36, v37, v38, v39, v40, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227))
    {
      v41 = OUTLINED_FUNCTION_5_33();
      lpta_rpta_loadp(v41, v42, v43);
      v44 = OUTLINED_FUNCTION_3_34();
      if (!insert_2pt_s(v44, v45, 7, v46, v47))
      {
        goto LABEL_45;
      }
    }
  }

  v48 = OUTLINED_FUNCTION_30_18();
  if (!lpta_loadp_setscan_r(v48, v49))
  {
    OUTLINED_FUNCTION_18_26();
    v50 = test_string_s();
    if (!v50 && !OUTLINED_FUNCTION_11_31(v50, v51, v52, v53, v54, v55, v56, v57, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227))
    {
      v58 = OUTLINED_FUNCTION_5_33();
      lpta_rpta_loadp(v58, v59, v60);
      v61 = OUTLINED_FUNCTION_3_34();
      if (!insert_2pt_s(v61, v62, 6, v63, v64))
      {
        goto LABEL_45;
      }
    }
  }

  v65 = OUTLINED_FUNCTION_30_18();
  if (!lpta_loadp_setscan_r(v65, v66))
  {
    OUTLINED_FUNCTION_18_26();
    v67 = test_string_s();
    if (!v67 && !OUTLINED_FUNCTION_11_31(v67, v68, v69, v70, v71, v72, v73, v74, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227))
    {
      v75 = OUTLINED_FUNCTION_5_33();
      lpta_rpta_loadp(v75, v76, v77);
      v78 = OUTLINED_FUNCTION_3_34();
      if (!insert_2pt_s(v78, v79, 7, v80, v81))
      {
        goto LABEL_45;
      }
    }
  }

  v82 = OUTLINED_FUNCTION_30_18();
  if (!lpta_loadp_setscan_r(v82, v83))
  {
    OUTLINED_FUNCTION_18_26();
    v84 = test_string_s();
    if (!v84 && !OUTLINED_FUNCTION_11_31(v84, v85, v86, v87, v88, v89, v90, v91, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227))
    {
      v92 = OUTLINED_FUNCTION_5_33();
      lpta_rpta_loadp(v92, v93, v94);
      v95 = OUTLINED_FUNCTION_3_34();
      if (!insert_2pt_s(v95, v96, 5, v97, v98))
      {
        goto LABEL_45;
      }
    }
  }

  v99 = OUTLINED_FUNCTION_30_18();
  if (!lpta_loadp_setscan_r(v99, v100))
  {
    OUTLINED_FUNCTION_18_26();
    v101 = test_string_s();
    if (!v101 && !OUTLINED_FUNCTION_11_31(v101, v102, v103, v104, v105, v106, v107, v108, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227))
    {
      v109 = OUTLINED_FUNCTION_5_33();
      lpta_rpta_loadp(v109, v110, v111);
      v112 = OUTLINED_FUNCTION_3_34();
      if (!insert_2pt_s(v112, v113, 5, v114, v115))
      {
        goto LABEL_45;
      }
    }
  }

  v116 = OUTLINED_FUNCTION_30_18();
  if (!lpta_loadp_setscan_r(v116, v117))
  {
    OUTLINED_FUNCTION_18_26();
    v118 = test_string_s();
    if (!v118 && !OUTLINED_FUNCTION_11_31(v118, v119, v120, v121, v122, v123, v124, v125, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227))
    {
      v126 = OUTLINED_FUNCTION_5_33();
      lpta_rpta_loadp(v126, v127, v128);
      v129 = OUTLINED_FUNCTION_3_34();
      if (!insert_2pt_s(v129, v130, 4, v131, v132))
      {
        goto LABEL_45;
      }
    }
  }

  v133 = OUTLINED_FUNCTION_30_18();
  if (!lpta_loadp_setscan_r(v133, v134))
  {
    OUTLINED_FUNCTION_18_26();
    v135 = test_string_s();
    if (!v135 && !OUTLINED_FUNCTION_11_31(v135, v136, v137, v138, v139, v140, v141, v142, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227))
    {
      v143 = OUTLINED_FUNCTION_5_33();
      lpta_rpta_loadp(v143, v144, v145);
      v146 = OUTLINED_FUNCTION_3_34();
      if (!insert_2pt_s(v146, v147, 5, v148, v149))
      {
        goto LABEL_45;
      }
    }
  }

  v150 = OUTLINED_FUNCTION_30_18();
  if (!lpta_loadp_setscan_r(v150, v151))
  {
    OUTLINED_FUNCTION_18_26();
    v152 = test_string_s();
    if (!v152 && !OUTLINED_FUNCTION_11_31(v152, v153, v154, v155, v156, v157, v158, v159, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227))
    {
      v160 = OUTLINED_FUNCTION_5_33();
      lpta_rpta_loadp(v160, v161, v162);
      v163 = OUTLINED_FUNCTION_3_34();
      if (!insert_2pt_s(v163, v164, 5, v165, v166))
      {
        goto LABEL_45;
      }
    }
  }

  v167 = OUTLINED_FUNCTION_30_18();
  if (!lpta_loadp_setscan_r(v167, v168))
  {
    OUTLINED_FUNCTION_18_26();
    v169 = test_string_s();
    if (!v169 && !OUTLINED_FUNCTION_11_31(v169, v170, v171, v172, v173, v174, v175, v176, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227))
    {
      v177 = OUTLINED_FUNCTION_5_33();
      lpta_rpta_loadp(v177, v178, v179);
      v180 = OUTLINED_FUNCTION_3_34();
      if (!insert_2pt_s(v180, v181, 3, v182, v183))
      {
        goto LABEL_45;
      }
    }
  }

  v184 = OUTLINED_FUNCTION_30_18();
  if (lpta_loadp_setscan_r(v184, v185) || (OUTLINED_FUNCTION_18_26(), v186 = test_string_s(), v186) || OUTLINED_FUNCTION_11_31(v186, v187, v188, v189, v190, v191, v192, v193, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227) || (v194 = OUTLINED_FUNCTION_5_33(), lpta_rpta_loadp(v194, v195, v196), v197 = OUTLINED_FUNCTION_3_34(), insert_2pt_s(v197, v198, 5, v199, v200)))
  {
LABEL_43:
    vretproc(v0);
    result = 94;
  }

  else
  {
LABEL_45:
    npush_s(v0);
    OUTLINED_FUNCTION_72_8();
    vretproc(v0);
    result = 0;
  }

  v202 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t assign_gend_to_por_roman_num()
{
  OUTLINED_FUNCTION_80_7();
  v161 = *MEMORY[0x277D85DE8];
  v149 = 0;
  v150 = 0;
  v147 = 0;
  v148 = 0;
  v145 = 0;
  v146 = 0;
  OUTLINED_FUNCTION_43_10();
  v132 = 0;
  HIDWORD(v131) = 0;
  OUTLINED_FUNCTION_38_13();
  bzero(&v108, v1);
  OUTLINED_FUNCTION_37_14();
  bzero(v160, v2);
  v3 = setjmp(v160);
  if (v3 || OUTLINED_FUNCTION_87_6(v3, v4, v5, v6, v7, v8, v9, v10, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159))
  {
LABEL_3:
    v11 = 94;
    goto LABEL_4;
  }

  v14 = OUTLINED_FUNCTION_51_9();
  OUTLINED_FUNCTION_98_4(v14, v15);
  v16 = OUTLINED_FUNCTION_31_18();
  get_parm(v16, v17, v18, -6);
  v146 = 0xFFFC0000FFFCLL;
  v19 = OUTLINED_FUNCTION_77_8();
  push_ptr_init(v19, v20);
  v21 = OUTLINED_FUNCTION_68_8();
  push_ptr_init(v21, v22);
  v23 = OUTLINED_FUNCTION_76_8();
  v25 = push_ptr_init(v23, v24);
  OUTLINED_FUNCTION_99_4(v25, v26, v27, v28, v29, v30, v31, v32, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138);
  v33 = OUTLINED_FUNCTION_52_9();
  push_ptr_init(v33, v34);
  v35 = OUTLINED_FUNCTION_54_9();
  push_ptr_init(v35, v36);
  v37 = OUTLINED_FUNCTION_44_10();
  push_ptr_init(v37, v38);
  HIDWORD(v131) = 65532;
  fence_33(v0, 0, &null_str_11);
  v39 = OUTLINED_FUNCTION_49_9();
  fence_33(v39, v40, v41);
  HIWORD(v146) = *(v0 + 3014);
  WORD1(v146) = *(v0 + 3022);
  v42 = OUTLINED_FUNCTION_58_9();
  starttest(v42, v43);
  v44 = OUTLINED_FUNCTION_51_9();
  if (!lpta_loadp_setscan_l(v44, v45) && !advanc(v0))
  {
LABEL_7:
    v46 = OUTLINED_FUNCTION_56_9();
    savescptr(v46, v47, v48);
    v49 = OUTLINED_FUNCTION_48_10();
    if (testFldeq(v49, v50, 1, 2) || advance_tok(v0))
    {
      goto LABEL_34;
    }

LABEL_9:
    OUTLINED_FUNCTION_67_8();
    v51 = OUTLINED_FUNCTION_42_10();
    savescptr(v51, v52, v53);
    v54 = OUTLINED_FUNCTION_51_9();
    goto LABEL_15;
  }

  while (2)
  {
    v59 = OUTLINED_FUNCTION_28_19();
    starttest(v59, v60);
    if (!lpta_loadp_setscan_r(v0, &v147) && !advanc(v0))
    {
LABEL_12:
      OUTLINED_FUNCTION_65_8();
      v61 = OUTLINED_FUNCTION_91_5();
      savescptr(v61, v62, v63);
      v64 = OUTLINED_FUNCTION_60_9();
      if (testFldeq(v64, v65, 1, 2) || advance_tok(v0))
      {
        goto LABEL_34;
      }

LABEL_14:
      OUTLINED_FUNCTION_64_8();
      v66 = OUTLINED_FUNCTION_42_10();
      savescptr(v66, v67, v68);
      v54 = OUTLINED_FUNCTION_42_10();
LABEL_15:
      get_gender_number(v54, v55, v56, v57, v58);
    }

LABEL_16:
    v69 = OUTLINED_FUNCTION_22_23();
    startloop(v69, v70);
    lpta_loadpn(v0, &v149);
    OUTLINED_FUNCTION_60_9();
    lpta_mover();
    v71 = OUTLINED_FUNCTION_51_9();
    lpta_storep(v71, v72);
    lpta_loadpn(v0, &v147);
    OUTLINED_FUNCTION_60_9();
    lpta_mover();
    v73 = OUTLINED_FUNCTION_40_11();
    lpta_storep(v73, v74);
    v75 = OUTLINED_FUNCTION_51_9();
    if (forall_to_test(v75, v76, &v132))
    {
      goto LABEL_34;
    }

LABEL_17:
    v77 = OUTLINED_FUNCTION_28_19();
    bspush_ca(v77);
    v78 = OUTLINED_FUNCTION_52_9();
    if (!lpta_loadp_setscan_r(v78, v79) && !advance_tok(v0))
    {
LABEL_19:
      v80 = OUTLINED_FUNCTION_62_8();
      savescptr(v80, v81, v82);
LABEL_20:
      v83 = OUTLINED_FUNCTION_28_19();
      starttest(v83, v84);
      v85 = OUTLINED_FUNCTION_30_18();
      if (lpta_loadp_setscan_l(v85, v86))
      {
LABEL_21:
        v87 = OUTLINED_FUNCTION_30_18();
        if (!lpta_loadp_setscan_r(v87, v88))
        {
          OUTLINED_FUNCTION_2_35();
          if (!test_string_s())
          {
            v89 = OUTLINED_FUNCTION_28_19();
            starttest_e(v89, v90);
            v91 = OUTLINED_FUNCTION_51_9();
            v93 = 1;
            goto LABEL_32;
          }
        }

LABEL_29:
        v100 = OUTLINED_FUNCTION_28_19();
        starttest(v100, v101);
        v102 = OUTLINED_FUNCTION_30_18();
        if (!lpta_loadp_setscan_r(v102, v103))
        {
          OUTLINED_FUNCTION_2_35();
          if (!test_string_s())
          {
            v104 = OUTLINED_FUNCTION_28_19();
            starttest_e(v104, v105);
            v91 = OUTLINED_FUNCTION_51_9();
            v93 = 2;
LABEL_32:
            move_i(v91, v92, v93);
            if (!insert_1_2(v0, &v136))
            {
              goto LABEL_33;
            }

            goto LABEL_34;
          }
        }
      }

      else
      {
        v94 = OUTLINED_FUNCTION_9_32();
        if (testFldeq(v94, v95, v96, 2) || advance_tok(v0))
        {
          goto LABEL_34;
        }

        insert_gender();
LABEL_27:
        v97 = OUTLINED_FUNCTION_28_19();
        starttest(v97, v98);
        if (*(v0 + 3026) == WORD1(v146))
        {
          OUTLINED_FUNCTION_46_10();
          OUTLINED_FUNCTION_35_15();
          v99 = OUTLINED_FUNCTION_20_24();
          insert_l(v99);
        }
      }

LABEL_33:
      if (!OUTLINED_FUNCTION_96_5(9, 10, 19, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136))
      {
        v11 = 0;
        break;
      }
    }

LABEL_34:
    v106 = *(v0 + 104);
    if (v106)
    {
      v107 = OUTLINED_FUNCTION_47_10(v106);
    }

    else
    {
      v107 = OUTLINED_FUNCTION_74_8();
    }

    v11 = 0;
    switch(v107)
    {
      case 1:
        continue;
      case 2:
        goto LABEL_7;
      case 3:
        goto LABEL_9;
      case 4:
      case 5:
      case 8:
        goto LABEL_16;
      case 6:
        goto LABEL_12;
      case 7:
        goto LABEL_14;
      case 9:
        goto LABEL_4;
      case 10:
        goto LABEL_20;
      case 11:
      case 15:
      case 17:
      case 18:
        goto LABEL_33;
      case 12:
        goto LABEL_19;
      case 13:
        goto LABEL_21;
      case 14:
        goto LABEL_27;
      case 16:
        goto LABEL_29;
      case 19:
        goto LABEL_17;
      default:
        goto LABEL_3;
    }
  }

LABEL_4:
  vretproc(v0);
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t OUTLINED_FUNCTION_0_37(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  *(v34 + 168) = v35;
  *(v34 + 144) = a34;
  *(v34 + 128) = 0;
  return v34;
}

void OUTLINED_FUNCTION_1_35(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  *(v35 + 168) = 1;
  *(v35 + 144) = a35;
  *(v35 + 128) = 0;
}

uint64_t OUTLINED_FUNCTION_11_31(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  *(v33 + 136) = v34;
  *(v33 + 112) = a33;
  *(v33 + 128) = 0;

  return test_ptr(v33);
}

uint64_t OUTLINED_FUNCTION_12_31(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, char a37, int a38, __int16 a39, char a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, char a46)
{

  return ventproc(v46, a2, &a44, &a40, &a37, &a46);
}

void OUTLINED_FUNCTION_15_29(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  *(v33 + 168) = 1;
  *(v33 + 144) = a33;
  *(v33 + 128) = 0;
}

double OUTLINED_FUNCTION_17_27@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{

  *&result = savescptr(v25, a1, &a25).n128_u64[0];
  return result;
}

void OUTLINED_FUNCTION_19_25(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  a34 = 0;
  a35 = 0;
  a32 = 0;
  a33 = 0;

  bzero(&a9, 0xB8uLL);
}

void OUTLINED_FUNCTION_23_23(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{

  bzero(&a40, 0xC0uLL);
}

void OUTLINED_FUNCTION_24_23(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  a32 = 0;
  a33 = 0;

  bzero(&a9, 0xB8uLL);
}

void OUTLINED_FUNCTION_25_22(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, int a34, uint64_t a35, uint64_t a36)
{
  a35 = 0;
  a36 = 0;
  a34 = 0;

  bzero(&a10, 0xB8uLL);
}

uint64_t OUTLINED_FUNCTION_39_12()
{
  *(v1 + 112) = v0;
  *(v1 + 128) = 0;

  return test_ptr(v1);
}

uint64_t OUTLINED_FUNCTION_55_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{

  return lpta_rpta_loadp(v37, &a37, &a33);
}

void OUTLINED_FUNCTION_71_8(uint64_t a1, uint64_t a2)
{

  get_parm(a1, a2, v2, -6);
}

void OUTLINED_FUNCTION_72_8()
{
  *(v0 + 3602) = 10;

  npop(v0, (v0 + 3600));
}

uint64_t OUTLINED_FUNCTION_74_8()
{

  return vback(v0, 0);
}

uint64_t OUTLINED_FUNCTION_78_8()
{

  return rpta_loadpn(v0, v0 + 3344);
}

void *OUTLINED_FUNCTION_82_7(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return fence_33(v3, 0, a3);
}

uint64_t OUTLINED_FUNCTION_87_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, int a52, char a53, int a54, __int16 a55, char a56, int a57, __int16 a58, char a59, char a60)
{

  return ventproc(v60, &a9, &a60, &a56, &a53, v61 - 248);
}

uint64_t OUTLINED_FUNCTION_88_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, char a35, int a36, __int16 a37, char a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, char a44)
{

  return ventproc(v44, &a9, &a42, &a38, &a35, &a44);
}

uint64_t OUTLINED_FUNCTION_95_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37, char a38, int a39, __int16 a40, char a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, char a47)
{

  return ventproc(v47, a2, &a45, &a41, &a38, &a47);
}

uint64_t OUTLINED_FUNCTION_96_5@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{

  return forto_adv_upto_r(v32, a1, a2, a3, 2, &a32);
}

BOOL OUTLINED_FUNCTION_97_5@<W0>(uint64_t a1@<X8>)
{
  *(v2 + 8) = a1;

  return vretproc(v1);
}

void OUTLINED_FUNCTION_98_4(uint64_t a1, uint64_t a2)
{

  get_parm(a1, a2, v2, -6);
}

uint64_t OUTLINED_FUNCTION_99_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{

  return push_ptr_init(v39, &a39);
}

void OUTLINED_FUNCTION_106_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  *(v35 + 168) = v36;
  *(v35 + 144) = a35;
  *(v35 + 128) = 0;
}

uint64_t OUTLINED_FUNCTION_107_2()
{
  *(v0 + 2822) = *(v0 + 2850);

  return assign_gender_to_currency();
}

void OUTLINED_FUNCTION_108_2(uint64_t a1, size_t a2)
{

  bzero((v2 - 248), a2);
}

void *fence_34(uint64_t a1, int a2, uint64_t a3)
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

void adjust_phones()
{
  OUTLINED_FUNCTION_41_11();
  OUTLINED_FUNCTION_46_11();
  v1 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_17_28();
  v43 = 0;
  v44 = 0;
  v41 = 0;
  v42 = 0;
  v39 = 0;
  v40 = 0;
  OUTLINED_FUNCTION_22_24();
  bzero(v38, v2);
  OUTLINED_FUNCTION_21_25();
  bzero(v60, v3);
  v4 = setjmp(v60);
  if (v4)
  {
    goto LABEL_4;
  }

  v11 = OUTLINED_FUNCTION_25_23(v4, v38, v5, v6, v7, v8, v9, v10, v35, v36, v37, v38[0], v38[1], v38[2], v38[3], v38[4], v38[5], v38[6], v38[7], v38[8], v38[9], v38[10], v38[11], v38[12], v38[13], v38[14], v38[15], v38[16], v38[17], v38[18], v38[19], v38[20], v38[21], v38[22], v39, v40, v41, v42, v43, v44, v45, v46, v47[0], v47[1], v48[0], v48[1], v49[0], v49[1], v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60[0]);
  if (v11)
  {
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_48_11(v11, v49);
  OUTLINED_FUNCTION_29_20(v12, v48);
  OUTLINED_FUNCTION_30_19(v13, v47);
  v14 = OUTLINED_FUNCTION_19_26();
  get_parm(v14, v15, v16, -6);
  push_ptr_init(v0, &v43);
  push_ptr_init(v0, &v41);
  push_ptr_init(v0, &v39);
  fence_34(v0, 0, &_MergedGlobals_1_3);
  if (*(v0 + 2286) == *(v0 + 3842))
  {
    goto LABEL_4;
  }

  while (2)
  {
    mid_vowel_lowering();
LABEL_6:
    v18 = OUTLINED_FUNCTION_44_11();
    startloop(v18, v19);
    lpta_loadpn(v0, v47);
    OUTLINED_FUNCTION_37_15();
    lpta_movel();
    v20 = OUTLINED_FUNCTION_16_29();
    lpta_storep(v20, v21);
    lpta_loadpn(v0, v49);
    OUTLINED_FUNCTION_37_15();
    lpta_movel();
    lpta_storep(v0, &v39);
    v22 = OUTLINED_FUNCTION_16_29();
    if (forall_to_test(v22, v23, &v39))
    {
      goto LABEL_14;
    }

LABEL_7:
    v24 = OUTLINED_FUNCTION_36_15();
    bspush_ca(v24);
    v25 = OUTLINED_FUNCTION_16_29();
    if (lpta_loadp_setscan_l(v25, v26) || advance_tok(v0))
    {
LABEL_14:
      v33 = *(v0 + 104);
      if (v33)
      {
        v34 = OUTLINED_FUNCTION_26_23(v33);
      }

      else
      {
        v34 = OUTLINED_FUNCTION_50_10();
      }

      switch(v34)
      {
        case 1:
          continue;
        case 2:
          goto LABEL_6;
        case 4:
          goto LABEL_10;
        case 5:
        case 8:
          goto LABEL_13;
        case 6:
          goto LABEL_9;
        case 7:
          goto LABEL_11;
        case 9:
          goto LABEL_7;
        default:
          goto LABEL_4;
      }

      goto LABEL_4;
    }

    break;
  }

LABEL_9:
  savescptr(v0, 6, &v43);
LABEL_10:
  v27 = OUTLINED_FUNCTION_31_19();
  starttest(v27, v28);
  OUTLINED_FUNCTION_28_20();
  gliding();
  if (v29)
  {
LABEL_11:
    starttest(v0, 5);
    OUTLINED_FUNCTION_28_20();
    vowel_epenthesis();
    if (!v30)
    {
      v31 = OUTLINED_FUNCTION_18_27();
      starttest_l(v31, v32);
      OUTLINED_FUNCTION_28_20();
      affrication();
    }
  }

LABEL_13:
  if (forto_adv_upto_l(v0, 3, 4, 9, 4, &v41))
  {
    goto LABEL_14;
  }

LABEL_4:
  vretproc(v0);
  v17 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_40_12();
}

void mid_vowel_lowering()
{
  OUTLINED_FUNCTION_41_11();
  OUTLINED_FUNCTION_46_11();
  v105 = *MEMORY[0x277D85DE8];
  v100[0] = 0;
  v100[1] = 0;
  v99[0] = 0;
  v99[1] = 0;
  v97 = 0;
  v98 = 0;
  v95 = 0;
  v96 = 0;
  v94 = 0;
  v92 = 0;
  v93 = 0;
  v91[0] = 0;
  v91[1] = 0;
  v90[0] = 0;
  v90[1] = 0;
  v89[0] = 0;
  v89[1] = 0;
  OUTLINED_FUNCTION_22_24();
  bzero(v88, v2);
  OUTLINED_FUNCTION_21_25();
  bzero(v104, v3);
  if (!setjmp(v104))
  {
    v4 = ventproc(v0, v88, v103, v102, v101, v104);
    if (!v4)
    {
      OUTLINED_FUNCTION_48_11(v4, v100);
      OUTLINED_FUNCTION_29_20(v6, v99);
      OUTLINED_FUNCTION_30_19(v7, &v97);
      v8 = OUTLINED_FUNCTION_19_26();
      get_parm(v8, v9, v10, -6);
      LOWORD(v94) = -4;
      push_ptr_init(v0, &v92);
      push_ptr_init(v0, v91);
      push_ptr_init(v0, v90);
      v11 = push_ptr_init(v0, v89);
      OUTLINED_FUNCTION_51_10(v11, v12, &_MergedGlobals_1_3);
      HIWORD(v94) = 0;
      v13 = OUTLINED_FUNCTION_6_33();
      fence_34(v13, v14, v15);
      if (*(v0 + 2286) != *(v0 + 3886))
      {
        v16 = 0;
        while (2)
        {
          v93 = v96;
          starttest_l(v0, 2);
          *(v0 + 136) = v1;
          *(v0 + 112) = v98;
          *(v0 + 128) = 0;
          OUTLINED_FUNCTION_12_32();
          if (lpta_tstctxtr())
          {
            v17 = v16;
          }

          else
          {
            v18 = OUTLINED_FUNCTION_12_32();
            setscan_l(v18);
            v17 = v16;
            if (!v19)
            {
LABEL_34:
              v54 = OUTLINED_FUNCTION_45_11();
              bspush_ca_scan(v54, 4);
LABEL_35:
              savescptr(v0, 5, &v92);
              OUTLINED_FUNCTION_18_27();
              bspush_ca_scan_boa();
              v55 = OUTLINED_FUNCTION_12_32();
              if (npush_fld(v55, v56, 0))
              {
                goto LABEL_40;
              }

              v57 = OUTLINED_FUNCTION_54_10();
              npush_i(v57);
              v43 = if_testeq(v0, v58, v59, v60, v61, v62, v63, v64);
              goto LABEL_37;
            }
          }

LABEL_10:
          v16 = v17;
          starttest(v0, 7);
          v20 = OUTLINED_FUNCTION_28_20();
          v22 = lpta_loadp_setscan_l(v20, v21);
          v23 = v16;
          if (!v22)
          {
LABEL_11:
            v16 = v23;
            bspush_ca_scan(v0, 9);
LABEL_12:
            savescptr(v0, 10, v90);
            v24 = OUTLINED_FUNCTION_37_15();
            if (testFldeq(v24, v25, v1, 2) || advance_tok(v0))
            {
              goto LABEL_40;
            }

LABEL_14:
            v26 = OUTLINED_FUNCTION_45_11();
            savescptr(v26, 11, v91);
          }

LABEL_15:
          if (lpta_loadp_setscan_r(v0, v91) || (OUTLINED_FUNCTION_37_15(), v27 = test_string_s(), v28 = (v0 + 5966), v27))
          {
LABEL_17:
            v29 = OUTLINED_FUNCTION_45_11();
            if (lpta_loadp_setscan_r(v29, v91))
            {
              break;
            }

            OUTLINED_FUNCTION_37_15();
            v30 = test_string_s();
            v28 = (v0 + 5970);
            if (v30)
            {
              break;
            }
          }

          HIWORD(v94) = *v28;
LABEL_20:
          starttest(v0, 15);
          v31 = OUTLINED_FUNCTION_16_29();
          if (lpta_loadp_setscan_l(v31, v32))
          {
LABEL_21:
            starttest(v0, 17);
            v33 = OUTLINED_FUNCTION_16_29();
            if (lpta_loadp_setscan_r(v33, v34))
            {
LABEL_22:
              v35 = OUTLINED_FUNCTION_16_29();
              if (!lpta_loadp_setscan_r(v35, v36))
              {
                OUTLINED_FUNCTION_9_33();
                if (!test_string_s())
                {
                  break;
                }
              }

LABEL_24:
              starttest(v0, 21);
              v37 = OUTLINED_FUNCTION_16_29();
              v39 = lpta_loadp_setscan_l(v37, v38);
              v40 = v16;
              if (v39)
              {
LABEL_25:
                starttest(v0, 25);
                if (lpta_loadp_setscan_r(v0, v100))
                {
LABEL_26:
                  if (*(v0 + 5966) == HIWORD(v94))
                  {
                    v41 = OUTLINED_FUNCTION_53_10();
                    starttest_l(v41, v42);
                    OUTLINED_FUNCTION_52_10();
                    bspush_ca_boa();
                    OUTLINED_FUNCTION_35_16();
                    nonverb_e_lowering();
                  }

                  else
                  {
LABEL_62:
                    v84 = OUTLINED_FUNCTION_44_11();
                    starttest(v84, v85);
                    OUTLINED_FUNCTION_36_15();
                    bspush_ca_boa();
                    OUTLINED_FUNCTION_35_16();
                    v43 = nonverb_o_lowering();
                  }

                  goto LABEL_37;
                }

                bspush_ca_scan(v0, 26);
                v50 = OUTLINED_FUNCTION_12_32();
                v52 = testFldeq(v50, v51, v1, 3);
                v53 = v16;
                if (!v52)
                {
LABEL_32:
                  v16 = v53;
                  if (!advance_tok(v0))
                  {
                    starttest_l(v0, 28);
                    bspush_ca_boa();
                    v43 = verb_stem_vowel_lowering();
LABEL_37:
                    if (v43)
                    {
                      v16 = v16;
                    }

                    else
                    {
                      v16 = 1;
                    }
                  }
                }
              }

              else
              {
LABEL_64:
                v16 = v40;
                savescptr(v0, 22, v89);
                OUTLINED_FUNCTION_3_35();
                if (!test_string_s())
                {
                  v86 = OUTLINED_FUNCTION_16_29();
                  if (!lpta_loadp_setscan_r(v86, v87))
                  {
                    bspush_ca_scan(v0, 23);
                    OUTLINED_FUNCTION_3_35();
                    if (!test_string_s())
                    {
                      break;
                    }
                  }
                }
              }
            }

            else
            {
              bspush_ca_scan(v0, 18);
              v46 = OUTLINED_FUNCTION_37_15();
              v48 = 4;
              v49 = 6;
LABEL_59:
              v83 = testFldeq(v46, v47, v48, v49);
              v67 = v16;
              if (!v83)
              {
LABEL_60:
                v16 = v67;
                if (!advance_tok(v0))
                {
                  break;
                }
              }
            }
          }

          else
          {
            bspush_ca_scan_boa();
            v44 = OUTLINED_FUNCTION_9_33();
            if (!testFldeq(v44, v45, 5, 0))
            {
              v43 = advance_tok(v0);
              goto LABEL_37;
            }
          }

LABEL_40:
          v65 = *(v0 + 104);
          if (v65)
          {
            *(v0 + 104) = 0;
            v66 = v65;
          }

          else
          {
            v66 = vback(v0, v16);
            v16 = 0;
          }

          v17 = v16;
          v23 = v16;
          v67 = v16;
          v53 = v16;
          switch(v66)
          {
            case 1:
              continue;
            case 2:
              goto LABEL_10;
            case 3:
              goto LABEL_34;
            case 4:
              if (!advance_tok(v0))
              {
                goto LABEL_34;
              }

              goto LABEL_40;
            case 5:
              goto LABEL_35;
            case 6:
              bspop_boa(v0);
              v82 = advance_tok(v0);
              v17 = v16;
              if (!v82)
              {
                goto LABEL_10;
              }

              goto LABEL_40;
            case 7:
              goto LABEL_15;
            case 8:
              goto LABEL_11;
            case 9:
              v81 = advance_tok(v0);
              v23 = v16;
              if (!v81)
              {
                goto LABEL_11;
              }

              goto LABEL_40;
            case 10:
              goto LABEL_12;
            case 11:
              goto LABEL_14;
            case 12:
              goto LABEL_17;
            case 13:
              goto LABEL_20;
            case 15:
              goto LABEL_21;
            case 16:
            case 29:
            case 33:
            case 34:
              bspop_boa(v0);
              goto LABEL_3;
            case 17:
              goto LABEL_22;
            case 18:
              v46 = OUTLINED_FUNCTION_5_34();
              v49 = 2;
              goto LABEL_59;
            case 19:
              goto LABEL_60;
            case 20:
              goto LABEL_24;
            case 21:
              goto LABEL_25;
            case 22:
              v40 = v16;
              goto LABEL_64;
            case 23:
              OUTLINED_FUNCTION_0_38();
              if (test_string_s())
              {
                goto LABEL_40;
              }

              goto LABEL_3;
            case 25:
              goto LABEL_26;
            case 26:
              v80 = testFldeq(v0, 2u, 2, 6);
              v53 = v16;
              if (!v80)
              {
                goto LABEL_32;
              }

              goto LABEL_40;
            case 27:
              goto LABEL_32;
            case 28:
            case 30:
            case 32:
              v68 = OUTLINED_FUNCTION_8_33();
              starttest(v68, v69);
              if (*(v0 + 5966) != HIWORD(v94))
              {
                goto LABEL_46;
              }

              lpta_rpta_loadp(v0, v91, v90);
              v70 = OUTLINED_FUNCTION_5_34();
              if (insert_2pt_s(v70, v71, v72, v73, v74))
              {
                goto LABEL_46;
              }

              goto LABEL_3;
            case 31:
              goto LABEL_62;
            case 35:
LABEL_46:
              lpta_rpta_loadp(v0, v91, v90);
              v75 = OUTLINED_FUNCTION_5_34();
              if (!insert_2pt_s(v75, v76, v77, v78, v79))
              {
                goto LABEL_3;
              }

              goto LABEL_40;
            default:
              goto LABEL_3;
          }
        }
      }
    }
  }

LABEL_3:
  vretproc(v0);
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_40_12();
}

void gliding()
{
  OUTLINED_FUNCTION_41_11();
  OUTLINED_FUNCTION_27_21();
  v1 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_17_28();
  OUTLINED_FUNCTION_22_24();
  bzero(v83, v2);
  OUTLINED_FUNCTION_21_25();
  bzero(v96, v3);
  v4 = setjmp(v96);
  if (v4)
  {
    goto LABEL_4;
  }

  if (OUTLINED_FUNCTION_25_23(v4, v83, v5, v6, v7, v8, v9, v10, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83[0], v83[1], v83[2], v83[3], v83[4], v83[5], v83[6], v83[7], v83[8], v83[9], v83[10], v83[11], v83[12], v83[13], v83[14], v83[15], v83[16], v83[17], v83[18], v83[19], v83[20], v83[21], v83[22], v84[0], v84[1], v84[2], v84[3], v85[0], v85[1], v85[2], v85[3], v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96[0]))
  {
    goto LABEL_4;
  }

  v11 = OUTLINED_FUNCTION_18_27();
  OUTLINED_FUNCTION_42_11(v11, v12);
  v13 = OUTLINED_FUNCTION_19_26();
  get_parm(v13, v14, v15, -6);
  v16 = OUTLINED_FUNCTION_33_18();
  push_ptr_init(v16, v17);
  push_ptr_init(v0, v84);
  fence_34(v0, 0, &_MergedGlobals_1_3);
  v18 = OUTLINED_FUNCTION_7_33();
  fence_34(v18, v19, v20);
  v21 = OUTLINED_FUNCTION_18_27();
  lpta_loadpn(v21, v22);
  lpta_ctxtl();
  v23 = OUTLINED_FUNCTION_33_18();
  lpta_storep(v23, v24);
  if (*(v0 + 2286) == *(v0 + 3886))
  {
LABEL_4:
    vretproc(v0);
  }

  else
  {
    v26 = 0;
    while (2)
    {
      starttest(v0, 3);
      OUTLINED_FUNCTION_31_19();
      bspush_ca_boa();
      v27 = OUTLINED_FUNCTION_28_20();
      if (!lpta_loadp_setscan_r(v27, v28) && !test_string_i())
      {
        v26 = 1;
      }

      v29 = v26;
LABEL_11:
      v30 = *(v0 + 104);
      if (v30)
      {
        v31 = OUTLINED_FUNCTION_26_23(v30);
        v26 = v32;
      }

      else
      {
        v31 = vback(v0, v29);
        v26 = 0;
      }

      switch(v31)
      {
        case 1:
          continue;
        case 2:
        case 10:
        case 15:
          goto LABEL_33;
        case 3:
          v33 = OUTLINED_FUNCTION_16_29();
          if (lpta_loadp_setscan_r(v33, v34))
          {
            goto LABEL_17;
          }

          OUTLINED_FUNCTION_10_33();
          if (test_string_s())
          {
            goto LABEL_17;
          }

          goto LABEL_23;
        case 4:
        case 8:
          bspop_boa(v0);
          goto LABEL_4;
        case 5:
LABEL_17:
          v35 = OUTLINED_FUNCTION_16_29();
          if (!lpta_loadp_setscan_r(v35, v36))
          {
            OUTLINED_FUNCTION_10_33();
            if (!test_string_s())
            {
              v37 = OUTLINED_FUNCTION_52_10();
              starttest(v37, v38);
              v39 = OUTLINED_FUNCTION_14_30();
              if (!lpta_loadp_setscan_r(v39, v40))
              {
                OUTLINED_FUNCTION_10_33();
                if (!test_string_s())
                {
                  goto LABEL_21;
                }
              }
            }
          }

          goto LABEL_4;
        case 6:
LABEL_23:
          savescptr(v0, 6, v84);
          starttest(v0, 7);
          bspush_ca_boa();
          v44 = OUTLINED_FUNCTION_14_30();
          v46 = lpta_loadp_setscan_r(v44, v45);
          v29 = v26;
          if (!v46)
          {
            v47 = OUTLINED_FUNCTION_10_33();
            v50 = testFldeq(v47, v48, v49, 2);
            v29 = v26;
            if (!v50)
            {
              v51 = advance_tok(v0);
              v29 = v26;
              if (!v51)
              {
                OUTLINED_FUNCTION_53_10();
                bspush_ca_scan_boa();
                v52 = testFldeq(v0, 4u, 4, 6);
                v29 = v26;
                if (!v52)
                {
                  if (advance_tok(v0))
                  {
                    v29 = v26;
                  }

                  else
                  {
                    v29 = 1;
                  }
                }
              }
            }
          }

          goto LABEL_11;
        case 7:
          v53 = OUTLINED_FUNCTION_36_15();
          starttest(v53, v54);
          v55 = OUTLINED_FUNCTION_14_30();
          if (lpta_loadp_setscan_r(v55, v56))
          {
            goto LABEL_33;
          }

          OUTLINED_FUNCTION_7_33();
          if (test_string_s())
          {
            goto LABEL_33;
          }

          goto LABEL_39;
        case 9:
          bspop_boa(v0);
          v29 = 1;
          goto LABEL_11;
        case 11:
LABEL_39:
          v73 = test_synch(v0, 11, 1u, &_MergedGlobals_31);
          v29 = v26;
          if (!v73)
          {
            goto LABEL_4;
          }

          goto LABEL_11;
        case 14:
LABEL_21:
          v41 = OUTLINED_FUNCTION_44_11();
          v43 = test_synch(v41, v42, 1u, &_MergedGlobals_31);
          v29 = v26;
          if (v43)
          {
            goto LABEL_11;
          }

LABEL_33:
          starttest(v0, 16);
          v57 = OUTLINED_FUNCTION_15_30();
          lpta_loadpn(v57, v58);
          rpta_loadpn(v0, v0 + 3344);
          if (!compare_ptas(v0) && !testneq(v0))
          {
            v59 = OUTLINED_FUNCTION_16_29();
            lpta_rpta_loadp(v59, v60, v85);
            v61 = OUTLINED_FUNCTION_10_33();
            if (!insert_2pt_s(v61, v62, v63, &unk_2806BC31B, 0))
            {
              goto LABEL_37;
            }
          }

LABEL_36:
          v64 = OUTLINED_FUNCTION_16_29();
          lpta_rpta_loadp(v64, v65, v85);
          v66 = OUTLINED_FUNCTION_10_33();
          inserted = insert_2pt_s(v66, v67, v68, &unk_2806BC315, 0);
          v29 = v26;
          if (inserted)
          {
            goto LABEL_11;
          }

LABEL_37:
          v70 = OUTLINED_FUNCTION_31_19();
          lpta_rpta_loadp(v70, v71, v85);
          v72 = delete_2pt(v0, 7);
          v29 = v26;
          if (v72)
          {
            goto LABEL_11;
          }

          OUTLINED_FUNCTION_38_14();
          OUTLINED_FUNCTION_1_36();
          delete_1pt();
          vretproc(v0);
          break;
        case 16:
          goto LABEL_36;
        case 17:
          goto LABEL_37;
        default:
          goto LABEL_4;
      }

      break;
    }
  }

  v25 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_40_12();
}

void vowel_epenthesis()
{
  OUTLINED_FUNCTION_41_11();
  v38 = v0;
  v2 = v1;
  v53 = *MEMORY[0x277D85DE8];
  v47 = 0;
  v48 = 0;
  v45 = 0;
  v46 = 0;
  v43 = 0;
  v44 = 0;
  v42[0] = 0;
  v42[1] = 0;
  v40 = 0u;
  v41 = 0u;
  OUTLINED_FUNCTION_22_24();
  bzero(v39, v3);
  OUTLINED_FUNCTION_21_25();
  bzero(v52, v4);
  if (setjmp(v52) || ventproc(v2, v39, v51, v50, v49, v52))
  {
LABEL_3:
    vretproc(v2);
  }

  else
  {
    v6 = OUTLINED_FUNCTION_18_27();
    OUTLINED_FUNCTION_39_13(v6, v7);
    get_parm(v2, &v45, v38, -6);
    push_ptr_init(v2, &v43);
    v8 = push_ptr_init(v2, v42);
    *&v41 = 0;
    *(&v41 + 6) = 0;
    LODWORD(v40) = -65532;
    OUTLINED_FUNCTION_51_10(v8, v9, &_MergedGlobals_1_3);
    v10 = OUTLINED_FUNCTION_54_10();
    fence_34(v10, v11, v12);
    starttest(v2, 1);
    OUTLINED_FUNCTION_8_33();
    bspush_ca_boa();
    v13 = OUTLINED_FUNCTION_18_27();
    if (lpta_loadp_setscan_r(v13, v14))
    {
      v15 = 0;
    }

    else
    {
      v15 = !testFldeq(v2, 4u, 4, 1) && !advance_tok(v2);
    }

    v16 = v15;
    while (1)
    {
      v17 = *(v2 + 104);
      if (v17)
      {
        v18 = OUTLINED_FUNCTION_26_23(v17);
        v20 = v19;
      }

      else
      {
        v18 = vback(v2, v16);
        v20 = 0;
      }

      switch(v18)
      {
        case 1:
          v21 = OUTLINED_FUNCTION_36_15();
          starttest(v21, v22);
          if (!lpta_loadp_setscan_r(v2, &v45))
          {
            goto LABEL_16;
          }

          goto LABEL_25;
        case 2:
          bspop_boa(v2);
          goto LABEL_3;
        case 3:
          goto LABEL_25;
        case 4:
LABEL_16:
          savescptr(v2, 4, &v43);
          v23 = OUTLINED_FUNCTION_16_29();
          bspush_ca_scan(v23, v24);
          goto LABEL_17;
        case 5:
          v36 = testFldeq(v2, 4u, 1, 1);
          v16 = v20;
          if (v36)
          {
            continue;
          }

          v37 = advance_tok(v2);
          v16 = v20;
          if (v37)
          {
            continue;
          }

          goto LABEL_17;
        case 6:
LABEL_17:
          savescptr(v2, 6, v42);
          break;
        case 7:
          break;
        default:
          goto LABEL_3;
      }

      v25 = OUTLINED_FUNCTION_34_17();
      v27 = test_synch(v25, v26, 1u, &unk_2806BC310);
      v16 = v20;
      if (!v27)
      {
        *(v2 + 168) = 1;
        *(v2 + 144) = v44;
        *(v2 + 128) = 0;
        insert_l(v2);
        lpta_storep(v2, &v45);
        settvar_s();
        npush_s(v2);
        WORD1(v40) = 10;
        v28 = OUTLINED_FUNCTION_15_30();
        npop(v28, v29);
        insert_2ptv();
        v16 = v20;
        if (!v30)
        {
          *(v2 + 168) = 1;
          *(v2 + 144) = v48;
          *(v2 + 136) = 1;
          v31 = OUTLINED_FUNCTION_1_36();
          proj_l(v31);
          lpta_rpta_loadp(v2, &v47, v42);
          v32 = OUTLINED_FUNCTION_54_10();
          inserted = insert_2pt_i(v32, v33, 2, &unk_2806C4690, v34);
          v16 = v20;
          if (!inserted)
          {
            break;
          }
        }
      }
    }

LABEL_25:
    *(v38 + 8) = v46;
    vretproc(v2);
  }

  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_40_12();
}

uint64_t affrication()
{
  OUTLINED_FUNCTION_27_21();
  v54 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_20_25(v2, v3, v4, v5, v6, v7, v8, v9, v48[0], v48[1], v48[2], v48[3], v48[4], v48[5], v48[6], v48[7], v48[8], v48[9], v48[10], v48[11], v48[12], v48[13], v48[14], v48[15], v48[16], v48[17], v48[18], v48[19], v48[20], v48[21], v48[22], v49[0], v49[1], v49[2], v49[3], v49[4], v49[5]);
  OUTLINED_FUNCTION_21_25();
  bzero(v53, v10);
  if (!setjmp(v53) && !ventproc(v0, v48, v52, v51, v50, v53))
  {
    v11 = OUTLINED_FUNCTION_18_27();
    OUTLINED_FUNCTION_42_11(v11, v12);
    v13 = OUTLINED_FUNCTION_19_26();
    get_parm(v13, v14, v15, -6);
    push_ptr_init(v0, v49);
    fence_34(v0, 0, &_MergedGlobals_1_3);
    v16 = OUTLINED_FUNCTION_6_33();
    fence_34(v16, v17, v18);
    starttest(v0, v1);
    v19 = OUTLINED_FUNCTION_18_27();
    if (!lpta_loadp_setscan_r(v19, v20))
    {
      v23 = OUTLINED_FUNCTION_8_33();
      bspush_ca_scan(v23, v24);
      OUTLINED_FUNCTION_5_34();
      if (test_string_s())
      {
        goto LABEL_11;
      }

LABEL_7:
      savescptr(v0, 3, v49);
      while (2)
      {
        OUTLINED_FUNCTION_38_14();
        v25 = OUTLINED_FUNCTION_1_36();
        if (test_ptr(v25))
        {
          goto LABEL_11;
        }

LABEL_9:
        v26 = OUTLINED_FUNCTION_8_33();
        bspush_ca_scan(v26, v27);
LABEL_10:
        OUTLINED_FUNCTION_5_34();
        if (test_string_s())
        {
LABEL_11:
          v28 = *(v0 + 104);
          if (v28)
          {
            v29 = OUTLINED_FUNCTION_26_23(v28);
          }

          else
          {
            v29 = OUTLINED_FUNCTION_50_10();
          }

          switch(v29)
          {
            case 2:
              OUTLINED_FUNCTION_5_34();
              if (!test_string_s())
              {
                continue;
              }

              goto LABEL_11;
            case 3:
              goto LABEL_7;
            case 4:
              continue;
            case 5:
              goto LABEL_9;
            case 6:
              goto LABEL_17;
            case 7:
              goto LABEL_10;
            case 8:
              goto LABEL_20;
            case 9:
            case 10:
              goto LABEL_21;
            default:
              goto LABEL_4;
          }
        }

        break;
      }

LABEL_17:
      v30 = OUTLINED_FUNCTION_8_33();
      starttest(v30, v31);
      lpta_loadpn(v0, v49);
      rpta_loadpn(v0, v0 + 3344);
      if (compare_ptas(v0) || testneq(v0) || (v32 = OUTLINED_FUNCTION_23_24(), lpta_rpta_loadp(v32, v33, v34), v35 = OUTLINED_FUNCTION_5_34(), insert_2pt_s(v35, v36, v37, v38, v39)))
      {
LABEL_20:
        v40 = OUTLINED_FUNCTION_23_24();
        lpta_rpta_loadp(v40, v41, v42);
        v43 = OUTLINED_FUNCTION_5_34();
        if (insert_2pt_s(v43, v44, v45, v46, v47))
        {
          goto LABEL_11;
        }
      }

LABEL_21:
      vretproc(v0);
      result = 0;
      goto LABEL_5;
    }
  }

LABEL_4:
  vretproc(v0);
  result = 94;
LABEL_5:
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t verb_stem_vowel_lowering()
{
  OUTLINED_FUNCTION_11_32();
  v114 = *MEMORY[0x277D85DE8];
  v109[0] = 0;
  v109[1] = 0;
  v108[0] = 0;
  v108[1] = 0;
  v107[0] = 0;
  v107[1] = 0;
  v106[0] = 0;
  v106[1] = 0;
  v105 = 0;
  v104[0] = 0;
  v104[1] = 0;
  v103[0] = 0;
  v103[1] = 0;
  OUTLINED_FUNCTION_22_24();
  bzero(v102, v1);
  OUTLINED_FUNCTION_21_25();
  bzero(v113, v2);
  if (setjmp(v113))
  {
    goto LABEL_3;
  }

  v3 = ventproc(v0, v102, v112, v111, v110, v113);
  if (v3)
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_49_10(v3, v109);
  OUTLINED_FUNCTION_48_11(v6, v108);
  OUTLINED_FUNCTION_29_20(v7, v107);
  OUTLINED_FUNCTION_30_19(v8, v106);
  v9 = OUTLINED_FUNCTION_19_26();
  get_parm(v9, v10, v11, -4);
  push_ptr_init(v0, v104);
  push_ptr_init(v0, v103);
  fence_34(v0, 0, &_MergedGlobals_1_3);
  v12 = OUTLINED_FUNCTION_7_33();
  fence_34(v12, v13, v14);
  if (*(v0 + 5966) != HIWORD(v105))
  {
    while (2)
    {
      v66 = OUTLINED_FUNCTION_8_33();
      starttest(v66, v67);
      v68 = OUTLINED_FUNCTION_2_36();
      if (lpta_loadp_setscan_l(v68, v69))
      {
LABEL_36:
        v70 = OUTLINED_FUNCTION_8_33();
        starttest(v70, v71);
        v72 = OUTLINED_FUNCTION_2_36();
        if (lpta_loadp_setscan_l(v72, v73))
        {
LABEL_60:
          vretproc(v0);
          result = 0;
          goto LABEL_4;
        }

        v74 = OUTLINED_FUNCTION_8_33();
        bspush_ca_scan(v74, v75);
LABEL_57:
        OUTLINED_FUNCTION_0_38();
        if (!test_string_s())
        {
LABEL_58:
          v92 = OUTLINED_FUNCTION_19_26();
          savescptr(v92, v93, v94);
          v95 = OUTLINED_FUNCTION_19_26();
          lpta_rpta_loadp(v95, v96, v97);
          v55 = OUTLINED_FUNCTION_7_33();
          v57 = 71;
LABEL_59:
          if (setd_lookup(v55, v56, v57))
          {
            goto LABEL_60;
          }

          goto LABEL_3;
        }
      }

      else
      {
        v76 = OUTLINED_FUNCTION_8_33();
        bspush_ca_scan(v76, v77);
LABEL_39:
        OUTLINED_FUNCTION_0_38();
        if (!test_string_s())
        {
LABEL_40:
          OUTLINED_FUNCTION_0_38();
          if (!test_string_s())
          {
            goto LABEL_3;
          }
        }
      }

LABEL_41:
      v78 = *(v0 + 104);
      if (v78)
      {
        v79 = OUTLINED_FUNCTION_26_23(v78);
      }

      else
      {
        v79 = OUTLINED_FUNCTION_50_10();
      }

      v45 = 14;
      switch(v79)
      {
        case 1:
          continue;
        case 2:
          goto LABEL_7;
        case 3:
          goto LABEL_15;
        case 4:
          OUTLINED_FUNCTION_0_38();
          v43 = test_string_s();
          v44 = 10;
          goto LABEL_22;
        case 5:
          goto LABEL_20;
        case 6:
          goto LABEL_21;
        case 7:
        case 16:
          goto LABEL_54;
        case 8:
        case 9:
        case 15:
          goto LABEL_24;
        case 10:
          v98 = OUTLINED_FUNCTION_8_33();
          bspush_ca_scan(v98, v99);
          v100 = OUTLINED_FUNCTION_8_33();
          bspush_ca_scan(v100, v101);
          goto LABEL_63;
        case 11:
          v80 = OUTLINED_FUNCTION_8_33();
          bspush_ca_scan(v80, v81);
          goto LABEL_52;
        case 12:
LABEL_63:
          OUTLINED_FUNCTION_0_38();
          v43 = test_string_s();
          v44 = 14;
          goto LABEL_22;
        case 13:
          goto LABEL_23;
        case 14:
          v90 = OUTLINED_FUNCTION_8_33();
          bspush_ca_scan(v90, v91);
LABEL_54:
          OUTLINED_FUNCTION_0_38();
          goto LABEL_55;
        case 17:
LABEL_52:
          OUTLINED_FUNCTION_7_33();
LABEL_55:
          if (!test_string_s())
          {
            goto LABEL_24;
          }

          goto LABEL_41;
        case 19:
        case 20:
        case 27:
        case 33:
        case 34:
        case 42:
          goto LABEL_60;
        case 21:
          goto LABEL_9;
        case 22:
          goto LABEL_11;
        case 23:
          goto LABEL_12;
        case 24:
          goto LABEL_28;
        case 25:
          goto LABEL_27;
        case 26:
          goto LABEL_29;
        case 28:
          goto LABEL_32;
        case 29:
          v82 = OUTLINED_FUNCTION_8_33();
          bspush_ca_scan(v82, v83);
          v84 = OUTLINED_FUNCTION_8_33();
          bspush_ca_scan(v84, v85);
          goto LABEL_47;
        case 30:
          goto LABEL_31;
        case 31:
          goto LABEL_30;
        case 32:
LABEL_47:
          OUTLINED_FUNCTION_0_38();
          if (!test_string_s())
          {
            goto LABEL_30;
          }

          goto LABEL_41;
        case 35:
          goto LABEL_36;
        case 36:
          goto LABEL_39;
        case 37:
          goto LABEL_40;
        case 38:
          v86 = OUTLINED_FUNCTION_8_33();
          bspush_ca_scan(v86, v87);
          v88 = OUTLINED_FUNCTION_8_33();
          bspush_ca_scan(v88, v89);
          goto LABEL_50;
        case 39:
          goto LABEL_58;
        case 40:
          goto LABEL_57;
        case 41:
LABEL_50:
          OUTLINED_FUNCTION_0_38();
          if (!test_string_s())
          {
            goto LABEL_57;
          }

          goto LABEL_41;
        default:
          goto LABEL_3;
      }
    }
  }

  v15 = OUTLINED_FUNCTION_8_33();
  starttest(v15, v16);
  v17 = OUTLINED_FUNCTION_13_32();
  if (!lpta_loadp_setscan_l(v17, v18))
  {
LABEL_15:
    savescptr(v0, 3, v104);
    if (!advance_tok(v0) && !advance_tok(v0))
    {
      v37 = OUTLINED_FUNCTION_13_32();
      if (!lpta_loadp_setscan_r(v37, v38))
      {
        v39 = OUTLINED_FUNCTION_8_33();
        bspush_ca_scan(v39, v40);
        OUTLINED_FUNCTION_0_38();
        if (!test_string_s())
        {
          v41 = OUTLINED_FUNCTION_8_33();
          bspush_ca_scan(v41, v42);
LABEL_20:
          OUTLINED_FUNCTION_0_38();
          if (!test_string_s())
          {
LABEL_21:
            OUTLINED_FUNCTION_0_38();
            v43 = test_string_s();
            v44 = 7;
LABEL_22:
            v45 = v44;
            if (!v43)
            {
LABEL_23:
              bspush_ca_scan(v0, v45);
LABEL_24:
              OUTLINED_FUNCTION_38_14();
              v46 = OUTLINED_FUNCTION_1_36();
              if (!test_ptr(v46))
              {
                lpta_rpta_loadp(v0, v109, v108);
                v47 = OUTLINED_FUNCTION_7_33();
                if (!setd_lookup(v47, v48, 68))
                {
                  goto LABEL_60;
                }

                goto LABEL_3;
              }
            }
          }
        }
      }
    }

    goto LABEL_41;
  }

LABEL_7:
  v19 = OUTLINED_FUNCTION_2_36();
  if (!lpta_loadp_setscan_l(v19, v20))
  {
    OUTLINED_FUNCTION_7_33();
    if (!test_string_s())
    {
      goto LABEL_3;
    }
  }

LABEL_9:
  v21 = OUTLINED_FUNCTION_13_32();
  if (lpta_loadp_setscan_r(v21, v22) || (OUTLINED_FUNCTION_7_33(), test_string_s()))
  {
LABEL_11:
    v23 = OUTLINED_FUNCTION_8_33();
    starttest(v23, v24);
    v25 = OUTLINED_FUNCTION_2_36();
    if (lpta_loadp_setscan_l(v25, v26))
    {
LABEL_12:
      v27 = OUTLINED_FUNCTION_8_33();
      starttest(v27, v28);
      v29 = OUTLINED_FUNCTION_2_36();
      if (lpta_loadp_setscan_l(v29, v30))
      {
LABEL_32:
        v64 = OUTLINED_FUNCTION_2_36();
        if (lpta_loadp_setscan_l(v64, v65))
        {
          goto LABEL_60;
        }

        OUTLINED_FUNCTION_0_38();
        if (test_string_s())
        {
          goto LABEL_60;
        }

        goto LABEL_3;
      }

      v31 = OUTLINED_FUNCTION_8_33();
      bspush_ca_scan(v31, v32);
LABEL_30:
      OUTLINED_FUNCTION_0_38();
      if (!test_string_s())
      {
LABEL_31:
        v58 = OUTLINED_FUNCTION_19_26();
        savescptr(v58, v59, v60);
        v61 = OUTLINED_FUNCTION_19_26();
        lpta_rpta_loadp(v61, v62, v63);
        v55 = OUTLINED_FUNCTION_7_33();
        v57 = 69;
        goto LABEL_59;
      }
    }

    else
    {
      v33 = OUTLINED_FUNCTION_8_33();
      bspush_ca_scan(v33, v34);
      v35 = OUTLINED_FUNCTION_8_33();
      bspush_ca_scan(v35, v36);
LABEL_27:
      OUTLINED_FUNCTION_0_38();
      if (!test_string_s())
      {
LABEL_28:
        OUTLINED_FUNCTION_0_38();
        if (!test_string_s())
        {
LABEL_29:
          v49 = OUTLINED_FUNCTION_19_26();
          savescptr(v49, v50, v51);
          v52 = OUTLINED_FUNCTION_19_26();
          lpta_rpta_loadp(v52, v53, v54);
          v55 = OUTLINED_FUNCTION_7_33();
          v57 = 70;
          goto LABEL_59;
        }
      }
    }

    goto LABEL_41;
  }

LABEL_3:
  vretproc(v0);
  result = 94;
LABEL_4:
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void nonverb_e_lowering()
{
  OUTLINED_FUNCTION_41_11();
  OUTLINED_FUNCTION_11_32();
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_17_28();
  v151 = 0;
  v152 = 0;
  v149 = 0;
  v150 = 0;
  OUTLINED_FUNCTION_22_24();
  bzero(&v126, v3);
  OUTLINED_FUNCTION_21_25();
  bzero(v170, v4);
  v5 = setjmp(v170);
  if (v5)
  {
    goto LABEL_3;
  }

  v12 = OUTLINED_FUNCTION_25_23(v5, &v126, v6, v7, v8, v9, v10, v11, v116, v118, v120, v122, v124, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159[0], v159[1], v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170[0]);
  if (v12)
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_49_10(v12, v159);
  v14 = OUTLINED_FUNCTION_15_30();
  get_parm(v14, v15, v1, -6);
  OUTLINED_FUNCTION_29_20(v16, &v155);
  OUTLINED_FUNCTION_30_19(v17, &v153);
  v18 = OUTLINED_FUNCTION_19_26();
  get_parm(v18, v19, v20, -6);
  push_ptr_init(v0, &v149);
  fence_34(v0, 0, &_MergedGlobals_1_3);
  v21 = OUTLINED_FUNCTION_4_34();
  if (!lpta_loadp_setscan_r(v21, v22))
  {
    OUTLINED_FUNCTION_54_10();
    if (!test_string_s())
    {
      *(v0 + 136) = 1;
      v23 = OUTLINED_FUNCTION_1_36();
      if (!test_ptr(v23))
      {
        goto LABEL_3;
      }
    }
  }

  v24 = 0;
  v125 = 10;
  v123 = 11;
  v121 = 17;
  v119 = 22;
  v117 = 25;
  while (2)
  {
    v25 = OUTLINED_FUNCTION_4_34();
    if (!lpta_loadp_setscan_r(v25, v26))
    {
      OUTLINED_FUNCTION_3_35();
      if (!test_string_s())
      {
        *(v0 + 136) = 1;
        v27 = OUTLINED_FUNCTION_1_36();
        if (!test_ptr(v27))
        {
          goto LABEL_3;
        }
      }
    }

LABEL_11:
    v28 = OUTLINED_FUNCTION_4_34();
    if (!lpta_loadp_setscan_r(v28, v29))
    {
      OUTLINED_FUNCTION_3_35();
      if (!test_string_s())
      {
        *(v0 + 136) = 1;
        v30 = OUTLINED_FUNCTION_1_36();
        if (!test_ptr(v30))
        {
          goto LABEL_3;
        }
      }
    }

LABEL_14:
    v31 = OUTLINED_FUNCTION_4_34();
    v33 = lpta_loadp_setscan_r(v31, v32);
    if (!v33)
    {
      OUTLINED_FUNCTION_9_33();
      v33 = test_string_s();
      if (!v33)
      {
        *(v0 + 136) = 1;
        v41 = OUTLINED_FUNCTION_1_36();
        v33 = test_ptr(v41);
        if (!v33)
        {
          goto LABEL_3;
        }
      }
    }

LABEL_17:
    if (*(v0 + 5950) == 2)
    {
      OUTLINED_FUNCTION_47_11(v33, v34, v35, v36, v37, v38, v39, v40, 25, 22, 17, 11, 10, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159[0]);
      v111 = OUTLINED_FUNCTION_7_33();
      v33 = setd_lookup(v111, v112, 72);
      if (!v33)
      {
        goto LABEL_3;
      }

LABEL_73:
      OUTLINED_FUNCTION_32_18(v33, v34, v35, v36, v37, v38, v39, v40, v117, v119, v121, v123, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159[0]);
      v113 = OUTLINED_FUNCTION_7_33();
      v115 = 73;
      goto LABEL_74;
    }

LABEL_18:
    v42 = OUTLINED_FUNCTION_16_29();
    starttest(v42, v43);
    v44 = OUTLINED_FUNCTION_4_34();
    if (!lpta_loadp_setscan_r(v44, v45))
    {
      v67 = OUTLINED_FUNCTION_53_10();
      bspush_ca_scan(v67, v68);
      v69 = OUTLINED_FUNCTION_9_33();
      if (!testFldeq(v69, v70, 4, 2) && !advance_tok(v0))
      {
        v71 = OUTLINED_FUNCTION_9_33();
        if (!testFldeq(v71, v72, 4, 2))
        {
          OUTLINED_FUNCTION_52_10();
          bspush_ca_scan_boa();
          v101 = OUTLINED_FUNCTION_9_33();
          if (testFldeq(v101, v102, 0, 16))
          {
            v73 = v24;
          }

          else
          {
            v73 = 1;
          }

          goto LABEL_38;
        }
      }

      goto LABEL_37;
    }

LABEL_19:
    v46 = OUTLINED_FUNCTION_8_33();
    starttest(v46, v47);
    v48 = OUTLINED_FUNCTION_4_34();
    if (!lpta_loadp_setscan_r(v48, v49))
    {
      OUTLINED_FUNCTION_3_35();
      if (!test_string_s())
      {
        v80 = OUTLINED_FUNCTION_44_11();
        bspush_ca_scan(v80, v81);
        OUTLINED_FUNCTION_3_35();
        v82 = test_string_s();
        v73 = v24;
        v35 = v24;
        if (v82)
        {
          goto LABEL_38;
        }

LABEL_54:
        v83 = v35;
        *(v0 + 136) = 1;
        v84 = OUTLINED_FUNCTION_1_36();
        v85 = test_ptr(v84);
        v73 = v83;
        if (v85)
        {
          goto LABEL_38;
        }

        OUTLINED_FUNCTION_32_18(v85, v83, v86, v87, v88, v89, v90, v91, 25, 22, 17, 11, 10, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159[0]);
        v113 = OUTLINED_FUNCTION_7_33();
        v115 = 76;
LABEL_74:
        setd_lookup(v113, v114, v115);
        goto LABEL_3;
      }
    }

LABEL_21:
    v50 = OUTLINED_FUNCTION_4_34();
    if (!lpta_loadp_setscan_r(v50, v51))
    {
      OUTLINED_FUNCTION_9_33();
      if (!test_string_s())
      {
        *(v0 + 136) = 1;
        v52 = OUTLINED_FUNCTION_1_36();
        if (!test_ptr(v52))
        {
          goto LABEL_3;
        }
      }
    }

LABEL_24:
    v53 = OUTLINED_FUNCTION_18_27();
    starttest(v53, v54);
    v55 = OUTLINED_FUNCTION_4_34();
    if (!lpta_loadp_setscan_r(v55, v56))
    {
      OUTLINED_FUNCTION_3_35();
      if (!test_string_s())
      {
        v92 = OUTLINED_FUNCTION_36_15();
        bspush_ca_scan(v92, v93);
        OUTLINED_FUNCTION_3_35();
        v94 = test_string_s();
        v73 = v24;
        v36 = v24;
        if (v94)
        {
          goto LABEL_38;
        }

LABEL_57:
        v95 = v36;
        *(v0 + 136) = 1;
        v96 = OUTLINED_FUNCTION_1_36();
        v97 = test_ptr(v96);
        v73 = v95;
        if (!v97)
        {
          goto LABEL_3;
        }

LABEL_38:
        v24 = v73;
LABEL_39:
        v74 = *(v0 + 104);
        if (v74)
        {
          v33 = OUTLINED_FUNCTION_26_23(v74);
        }

        else
        {
          v75 = OUTLINED_FUNCTION_12_32();
          v33 = vback(v75, v76);
          v24 = 0;
        }

        v35 = v24;
        v36 = v24;
        v37 = v24;
        switch(v33)
        {
          case 1:
            continue;
          case 3:
            goto LABEL_11;
          case 4:
            goto LABEL_14;
          case 5:
            goto LABEL_17;
          case 6:
            goto LABEL_18;
          case 7:
            goto LABEL_73;
          case 9:
            goto LABEL_19;
          case 10:
            OUTLINED_FUNCTION_0_38();
            if (test_string_s())
            {
              goto LABEL_39;
            }

            goto LABEL_66;
          case 11:
            bspop_boa(v0);
            if (advance_tok(v0))
            {
              goto LABEL_39;
            }

            goto LABEL_66;
          case 12:
LABEL_66:
            v103 = OUTLINED_FUNCTION_13_32();
            v33 = lpta_loadp_setscan_r(v103, v104);
            if (v33)
            {
              goto LABEL_68;
            }

            OUTLINED_FUNCTION_7_33();
            v33 = test_string_s();
            if (v33)
            {
              goto LABEL_68;
            }

            goto LABEL_3;
          case 13:
LABEL_68:
            OUTLINED_FUNCTION_47_11(v33, v34, v35, v36, v37, v38, v39, v40, 25, 22, 17, 11, 10, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159[0]);
            v105 = OUTLINED_FUNCTION_7_33();
            v33 = setd_lookup(v105, v106, 74);
            if (v33)
            {
              goto LABEL_69;
            }

            goto LABEL_3;
          case 15:
LABEL_69:
            OUTLINED_FUNCTION_32_18(v33, v34, v35, v36, v37, v38, v39, v40, v117, v119, v121, v123, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159[0]);
            v113 = OUTLINED_FUNCTION_7_33();
            v115 = 75;
            goto LABEL_74;
          case 16:
            goto LABEL_21;
          case 17:
            OUTLINED_FUNCTION_0_38();
            v77 = test_string_s();
            v35 = v24;
            if (!v77)
            {
              goto LABEL_54;
            }

            goto LABEL_39;
          case 18:
            goto LABEL_54;
          case 20:
            goto LABEL_24;
          case 21:
            goto LABEL_26;
          case 22:
            OUTLINED_FUNCTION_0_38();
            v78 = test_string_s();
            v36 = v24;
            if (!v78)
            {
              goto LABEL_57;
            }

            goto LABEL_39;
          case 23:
            goto LABEL_57;
          case 24:
            goto LABEL_28;
          case 25:
            OUTLINED_FUNCTION_0_38();
            v79 = test_string_s();
            v37 = v24;
            if (!v79)
            {
              goto LABEL_60;
            }

            goto LABEL_39;
          case 26:
            goto LABEL_60;
          case 27:
            goto LABEL_70;
          case 28:
            goto LABEL_29;
          case 29:
            goto LABEL_71;
          default:
            goto LABEL_3;
        }
      }
    }

    break;
  }

LABEL_26:
  v57 = OUTLINED_FUNCTION_28_20();
  starttest(v57, v58);
  v59 = OUTLINED_FUNCTION_4_34();
  if (!lpta_loadp_setscan_r(v59, v60))
  {
    OUTLINED_FUNCTION_3_35();
    if (!test_string_s())
    {
      bspush_ca_scan(v0, 25);
      OUTLINED_FUNCTION_3_35();
      v98 = test_string_s();
      v73 = v24;
      v37 = v24;
      if (v98)
      {
        goto LABEL_38;
      }

LABEL_60:
      v24 = v37;
      goto LABEL_61;
    }
  }

LABEL_28:
  v61 = OUTLINED_FUNCTION_34_17();
  starttest(v61, v62);
  v63 = OUTLINED_FUNCTION_4_34();
  v33 = lpta_loadp_setscan_l(v63, v64);
  if (!v33)
  {
LABEL_29:
    v65 = OUTLINED_FUNCTION_31_19();
    savescptr(v65, v66, &v149);
    if (!advance_tok(v0))
    {
      OUTLINED_FUNCTION_9_33();
      if (!test_string_s() && !lpta_loadp_setscan_r(v0, &v149))
      {
        OUTLINED_FUNCTION_9_33();
        if (!test_string_s())
        {
LABEL_61:
          *(v0 + 136) = 1;
          v99 = OUTLINED_FUNCTION_1_36();
          v100 = test_ptr(v99);
          v73 = v24;
          if (!v100)
          {
            goto LABEL_3;
          }

          goto LABEL_38;
        }
      }
    }

LABEL_37:
    v73 = v24;
    goto LABEL_38;
  }

LABEL_70:
  OUTLINED_FUNCTION_47_11(v33, v34, v35, v36, v37, v38, v39, v40, 25, 22, 17, 11, 10, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159[0]);
  v107 = OUTLINED_FUNCTION_7_33();
  v33 = setd_lookup(v107, v108, 77);
  if (v33)
  {
LABEL_71:
    OUTLINED_FUNCTION_32_18(v33, v34, v35, v36, v37, v38, v39, v40, v117, v119, v121, v123, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159[0]);
    v109 = OUTLINED_FUNCTION_7_33();
    setd_lookup(v109, v110, 78);
  }

LABEL_3:
  vretproc(v0);
  v13 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_40_12();
}

uint64_t nonverb_o_lowering()
{
  OUTLINED_FUNCTION_11_32();
  v232 = *MEMORY[0x277D85DE8];
  v230[0] = 0;
  v230[1] = 0;
  v228 = 0;
  v229 = 0;
  OUTLINED_FUNCTION_20_25(v2, v3, v4, v5, v6, v7, v8, v9, v176, v178, v180, v182, v184, v186, v188, v190, v192, v194, v196, v198, v200, v202, v204, v206, v208, v210, v212, v214, v216, v218, v220, v222, v223, v224, v225, v226, v227);
  OUTLINED_FUNCTION_21_25();
  bzero(v231, v10);
  if (setjmp(v231))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_55_10();
  v15 = ventproc(v0, v11, v12, v13, v14, v231);
  if (v15)
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_49_10(v15, v230);
  v19 = OUTLINED_FUNCTION_15_30();
  get_parm(v19, v20, v1, -6);
  OUTLINED_FUNCTION_29_20(v21, &v226);
  OUTLINED_FUNCTION_30_19(v22, &v224);
  v23 = OUTLINED_FUNCTION_19_26();
  get_parm(v23, v24, v25, -6);
  v26 = 0;
  OUTLINED_FUNCTION_51_10(v27, v28, &_MergedGlobals_1_3);
  v29 = OUTLINED_FUNCTION_15_30();
  if (!lpta_loadp_setscan_r(v29, v30))
  {
    OUTLINED_FUNCTION_3_35();
    if (!test_string_s())
    {
      *(v0 + 136) = 1;
      v31 = OUTLINED_FUNCTION_1_36();
      if (!test_ptr(v31))
      {
        v93 = OUTLINED_FUNCTION_8_33();
        starttest_l(v93, v94);
        OUTLINED_FUNCTION_8_33();
        bspush_ca_boa();
        OUTLINED_FUNCTION_24_24(v95, v96, v97, v98, v99, v100, v101, v102, v177, v179, v181, v183, v185, v187, v189, v191, v193, v195, v197, v199, v201, v203, v205, v207, v209, v211, v213, v215, v217, v219, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230[0]);
        v103 = OUTLINED_FUNCTION_7_33();
        v77 = !setd_lookup(v103, v104, 79);
        goto LABEL_38;
      }
    }

    v26 = 0;
  }

LABEL_9:
  v32 = OUTLINED_FUNCTION_2_36();
  if (!lpta_loadp_setscan_r(v32, v33))
  {
    OUTLINED_FUNCTION_6_33();
    if (!test_string_s())
    {
      *(v0 + 136) = v26;
      v34 = OUTLINED_FUNCTION_1_36();
      v35 = test_ptr(v34);
      if (!v35)
      {
        OUTLINED_FUNCTION_24_24(v35, v36, v37, v38, v39, v40, v41, v42, v177, v179, v181, v183, v185, v187, v189, v191, v193, v195, v197, v199, v201, v203, v205, v207, v209, v211, v213, v215, v217, v219, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230[0]);
        v88 = OUTLINED_FUNCTION_7_33();
        if (!setd_lookup(v88, v89, 79))
        {
          goto LABEL_87;
        }
      }
    }
  }

LABEL_12:
  v43 = OUTLINED_FUNCTION_8_33();
  starttest(v43, v44);
  v45 = OUTLINED_FUNCTION_2_36();
  if (!lpta_loadp_setscan_r(v45, v46))
  {
    v73 = OUTLINED_FUNCTION_7_33();
    if (!testFldeq(v73, v74, 4, 2) && !advance_tok(v0))
    {
      OUTLINED_FUNCTION_38_14();
      v75 = OUTLINED_FUNCTION_1_36();
      v76 = test_ptr(v75);
      v77 = v26;
      if (v76)
      {
        goto LABEL_38;
      }

      v78 = OUTLINED_FUNCTION_23_24();
      lpta_rpta_loadp(v78, v79, v80);
      v70 = OUTLINED_FUNCTION_7_33();
      v72 = 80;
      goto LABEL_86;
    }

    goto LABEL_28;
  }

LABEL_13:
  v47 = OUTLINED_FUNCTION_8_33();
  starttest(v47, v48);
  v49 = OUTLINED_FUNCTION_13_32();
  if (!lpta_loadp_setscan_r(v49, v50))
  {
    OUTLINED_FUNCTION_0_38();
    if (!test_string_s())
    {
      v85 = OUTLINED_FUNCTION_8_33();
      bspush_ca(v85);
      v86 = OUTLINED_FUNCTION_13_32();
      if (!lpta_loadp_setscan_l(v86, v87))
      {
        OUTLINED_FUNCTION_7_33();
        v92 = test_string_s();
        v77 = v26;
        if (v92)
        {
          goto LABEL_38;
        }

        goto LABEL_34;
      }

LABEL_28:
      v77 = v26;
      goto LABEL_38;
    }
  }

LABEL_15:
  v51 = OUTLINED_FUNCTION_8_33();
  starttest(v51, v52);
  v53 = OUTLINED_FUNCTION_2_36();
  if (!lpta_loadp_setscan_r(v53, v54))
  {
    v81 = OUTLINED_FUNCTION_8_33();
    bspush_ca_scan(v81, v82);
    OUTLINED_FUNCTION_0_38();
    v83 = test_string_s();
    v77 = v26;
    v84 = v26;
    if (v83)
    {
      goto LABEL_38;
    }

LABEL_25:
    OUTLINED_FUNCTION_3_35();
    if (test_string_s())
    {
      v77 = v84;
      goto LABEL_38;
    }

    *(v0 + 136) = 1;
    v90 = OUTLINED_FUNCTION_1_36();
    v91 = test_ptr(v90);
    v77 = v84;
    if (v91)
    {
      goto LABEL_38;
    }

    goto LABEL_87;
  }

LABEL_16:
  v55 = v26;
  v56 = OUTLINED_FUNCTION_2_36();
  v58 = lpta_loadp_setscan_r(v56, v57);
  if (!v58)
  {
    OUTLINED_FUNCTION_6_33();
    v58 = test_string_s();
    if (!v58)
    {
      *(v0 + 136) = v26;
      v66 = OUTLINED_FUNCTION_1_36();
      v58 = test_ptr(v66);
      if (!v58)
      {
        v67 = OUTLINED_FUNCTION_23_24();
        lpta_rpta_loadp(v67, v68, v69);
        v70 = OUTLINED_FUNCTION_7_33();
        v72 = 82;
        goto LABEL_86;
      }
    }
  }

LABEL_57:
  if (*(v0 + 5950) == 2)
  {
    OUTLINED_FUNCTION_24_24(v58, v59, v60, v61, v62, v63, v64, v65, v177, v179, v181, v183, v185, v187, v189, v191, v193, v195, v197, v199, v201, v203, v205, v207, v209, v211, v213, v215, v217, v219, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230[0]);
    v166 = OUTLINED_FUNCTION_7_33();
    if (!setd_lookup(v166, v167, 83))
    {
      goto LABEL_3;
    }

LABEL_82:
    v168 = OUTLINED_FUNCTION_23_24();
    lpta_rpta_loadp(v168, v169, v170);
    v70 = OUTLINED_FUNCTION_7_33();
    v72 = 84;
    goto LABEL_86;
  }

LABEL_58:
  v115 = OUTLINED_FUNCTION_2_36();
  if (!lpta_loadp_setscan_r(v115, v116))
  {
    LOBYTE(v26) = 1;
    OUTLINED_FUNCTION_3_35();
    if (!test_string_s())
    {
      *(v0 + 136) = 1;
      v117 = OUTLINED_FUNCTION_1_36();
      if (!test_ptr(v117))
      {
        v171 = OUTLINED_FUNCTION_13_32();
        if (lpta_loadp_setscan_r(v171, v172) || (OUTLINED_FUNCTION_0_38(), test_string_s()))
        {
LABEL_85:
          v173 = OUTLINED_FUNCTION_23_24();
          lpta_rpta_loadp(v173, v174, v175);
          v70 = OUTLINED_FUNCTION_7_33();
          v72 = 85;
          goto LABEL_86;
        }

LABEL_34:
        lpta_loadpn(v0, &v224);
        rpta_loadpn(v0, &v222);
        if (compare_ptas(v0) || testeq(v0))
        {
          goto LABEL_87;
        }

        goto LABEL_3;
      }
    }
  }

LABEL_61:
  v118 = OUTLINED_FUNCTION_2_36();
  if (lpta_loadp_setscan_r(v118, v119) || (OUTLINED_FUNCTION_6_33(), test_string_s()))
  {
    v26 = v55;
  }

  else
  {
    *(v0 + 136) = v26;
    v158 = OUTLINED_FUNCTION_1_36();
    v26 = v55;
    if (!test_ptr(v158))
    {
      goto LABEL_87;
    }
  }

LABEL_64:
  v120 = OUTLINED_FUNCTION_8_33();
  starttest(v120, v121);
  v122 = OUTLINED_FUNCTION_2_36();
  if (!lpta_loadp_setscan_r(v122, v123))
  {
    OUTLINED_FUNCTION_0_38();
    if (!test_string_s())
    {
      v141 = OUTLINED_FUNCTION_8_33();
      bspush_ca_scan(v141, v142);
      OUTLINED_FUNCTION_0_38();
      v143 = test_string_s();
      v77 = v26;
      v61 = v26;
      if (v143)
      {
        goto LABEL_38;
      }

LABEL_72:
      v144 = v61;
      OUTLINED_FUNCTION_38_14();
      v145 = OUTLINED_FUNCTION_1_36();
      v146 = test_ptr(v145);
      v77 = v144;
      if (v146)
      {
        goto LABEL_38;
      }

      OUTLINED_FUNCTION_24_24(v146, v144, v147, v148, v149, v150, v151, v152, v177, v179, v181, v183, v185, v187, v189, v191, v193, v195, v197, v199, v201, v203, v205, v207, v209, v211, v213, v215, v217, v219, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230[0]);
      v153 = OUTLINED_FUNCTION_7_33();
      if (!setd_lookup(v153, v154, 86))
      {
        goto LABEL_3;
      }

LABEL_74:
      v155 = OUTLINED_FUNCTION_23_24();
      lpta_rpta_loadp(v155, v156, v157);
      v70 = OUTLINED_FUNCTION_7_33();
      v72 = 87;
LABEL_86:
      if (setd_lookup(v70, v71, v72))
      {
        goto LABEL_87;
      }

      goto LABEL_3;
    }
  }

LABEL_66:
  v124 = OUTLINED_FUNCTION_8_33();
  starttest(v124, v125);
  v126 = OUTLINED_FUNCTION_2_36();
  v58 = lpta_loadp_setscan_r(v126, v127);
  if (!v58)
  {
    v128 = OUTLINED_FUNCTION_8_33();
    bspush_ca_scan(v128, v129);
    OUTLINED_FUNCTION_0_38();
    v130 = test_string_s();
    v77 = v26;
    v60 = v26;
    if (v130)
    {
      goto LABEL_38;
    }

    while (1)
    {
LABEL_68:
      v131 = v60;
      v132 = OUTLINED_FUNCTION_8_33();
      bspush_ca_scan(v132, v133);
      OUTLINED_FUNCTION_0_38();
      v134 = test_string_s();
      v77 = v131;
      v62 = v131;
      if (!v134)
      {
LABEL_69:
        v135 = v62;
        OUTLINED_FUNCTION_38_14();
        v136 = OUTLINED_FUNCTION_1_36();
        v137 = test_ptr(v136);
        v77 = v135;
        if (!v137)
        {
          v138 = OUTLINED_FUNCTION_23_24();
          lpta_rpta_loadp(v138, v139, v140);
          v70 = OUTLINED_FUNCTION_7_33();
          v72 = 88;
          goto LABEL_86;
        }
      }

LABEL_38:
      v26 = v77;
      do
      {
        while (2)
        {
          v105 = *(v0 + 104);
          if (v105)
          {
            v58 = OUTLINED_FUNCTION_26_23(v105);
          }

          else
          {
            v106 = OUTLINED_FUNCTION_9_33();
            v58 = vback(v106, v107);
            v26 = 0;
          }

          v84 = v26;
          v61 = v26;
          v60 = v26;
          v62 = v26;
          switch(v58)
          {
            case 1:
              goto LABEL_9;
            case 2:
            case 4:
            case 7:
            case 11:
            case 16:
            case 19:
            case 22:
            case 23:
            case 29:
            case 37:
              goto LABEL_87;
            case 3:
              bspop_boa(v0);
              goto LABEL_3;
            case 5:
              goto LABEL_12;
            case 6:
              goto LABEL_13;
            case 8:
              goto LABEL_15;
            case 9:
              OUTLINED_FUNCTION_24_24(v58, v59, v26, v26, v26, v63, v64, v65, v177, v179, v181, v183, v185, v187, v189, v191, v193, v195, v197, v199, v201, v203, v205, v207, v209, v211, v213, v215, v217, v219, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230[0]);
              v108 = OUTLINED_FUNCTION_7_33();
              if (!setd_lookup(v108, v109, 81))
              {
                goto LABEL_34;
              }

              continue;
            case 10:
              goto LABEL_34;
            case 12:
              goto LABEL_16;
            case 13:
              OUTLINED_FUNCTION_0_38();
              v84 = v26;
              if (!test_string_s())
              {
                goto LABEL_25;
              }

              continue;
            case 14:
              goto LABEL_25;
            case 15:
              v55 = v26;
              goto LABEL_57;
            case 17:
              v55 = v26;
              goto LABEL_58;
            case 18:
              goto LABEL_82;
            case 20:
              v55 = v26;
              goto LABEL_61;
            case 21:
              goto LABEL_85;
            case 24:
              goto LABEL_64;
            case 25:
              goto LABEL_66;
            case 26:
              OUTLINED_FUNCTION_0_38();
              v110 = test_string_s();
              v61 = v26;
              if (!v110)
              {
                goto LABEL_72;
              }

              continue;
            case 27:
              goto LABEL_72;
            case 28:
              goto LABEL_74;
            case 30:
              goto LABEL_77;
            case 31:
            case 33:
              v112 = OUTLINED_FUNCTION_8_33();
              bspush_ca_scan(v112, v113);
              break;
            case 32:
              goto LABEL_68;
            case 34:
              goto LABEL_52;
            case 35:
              OUTLINED_FUNCTION_0_38();
              v111 = test_string_s();
              v62 = v26;
              if (!v111)
              {
                goto LABEL_69;
              }

              continue;
            case 36:
              goto LABEL_69;
            case 38:
              goto LABEL_78;
            default:
              goto LABEL_3;
          }

          break;
        }

LABEL_52:
        OUTLINED_FUNCTION_0_38();
        v114 = test_string_s();
        v60 = v26;
      }

      while (v114);
    }
  }

LABEL_77:
  OUTLINED_FUNCTION_24_24(v58, v59, v60, v61, v62, v63, v64, v65, v177, v179, v181, v183, v185, v187, v189, v191, v193, v195, v197, v199, v201, v203, v205, v207, v209, v211, v213, v215, v217, v219, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230[0]);
  v159 = OUTLINED_FUNCTION_7_33();
  if (!setd_lookup(v159, v160, 89))
  {
    goto LABEL_87;
  }

LABEL_78:
  v161 = OUTLINED_FUNCTION_23_24();
  lpta_rpta_loadp(v161, v162, v163);
  v164 = OUTLINED_FUNCTION_7_33();
  if (!setd_lookup(v164, v165, 90))
  {
LABEL_87:
    v16 = 0;
    goto LABEL_4;
  }

LABEL_3:
  v16 = 94;
LABEL_4:
  vretproc(v0);
  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

uint64_t por_phrase_level_rules()
{
  OUTLINED_FUNCTION_27_21();
  v72 = *MEMORY[0x277D85DE8];
  memset(&v70[2], 0, 32);
  OUTLINED_FUNCTION_20_25(v1, v2, v3, v4, v5, v6, v7, v8, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68[0], v68[1], v69[0], v69[1], v70[0], v70[1]);
  OUTLINED_FUNCTION_21_25();
  bzero(v71, v9);
  if (setjmp(v71) || (OUTLINED_FUNCTION_55_10(), ventproc(v0, v10, v11, v12, v13, v71)))
  {
LABEL_3:
    v14 = 94;
  }

  else
  {
    v17 = OUTLINED_FUNCTION_18_27();
    OUTLINED_FUNCTION_42_11(v17, v18);
    v19 = OUTLINED_FUNCTION_14_30();
    OUTLINED_FUNCTION_39_13(v19, v20);
    v21 = OUTLINED_FUNCTION_33_18();
    push_ptr_init(v21, v22);
    push_ptr_init(v0, v69);
    v23 = OUTLINED_FUNCTION_31_19();
    push_ptr_init(v23, v24);
    fence_34(v0, 0, &_MergedGlobals_1_3);
    v25 = OUTLINED_FUNCTION_8_33();
    startloop(v25, v26);
    v27 = OUTLINED_FUNCTION_18_27();
    lpta_loadpn(v27, v28);
    lpta_mover();
    v29 = OUTLINED_FUNCTION_33_18();
    lpta_storep(v29, v30);
    v31 = OUTLINED_FUNCTION_14_30();
    lpta_loadpn(v31, v32);
    lpta_mover();
    v33 = OUTLINED_FUNCTION_31_19();
    lpta_storep(v33, v34);
    v35 = OUTLINED_FUNCTION_33_18();
    if (!forall_to_test(v35, v36, v68))
    {
LABEL_6:
      v37 = OUTLINED_FUNCTION_8_33();
      bspush_ca(v37);
      if (!lpta_loadp_setscan_r(v0, v70) && !advance_tok(v0))
      {
LABEL_8:
        v38 = OUTLINED_FUNCTION_23_24();
        savescptr(v38, v39, v40);
LABEL_9:
        voicing_assimilation();
LABEL_10:
        v41 = OUTLINED_FUNCTION_8_33();
        starttest(v41, v42);
        OUTLINED_FUNCTION_23_24();
        break_into_phones();
LABEL_11:
        if (!forto_adv_upto_r(v0, 1, 2, 6, 2, v70))
        {
          v14 = 0;
          goto LABEL_4;
        }
      }
    }

    v43 = *(v0 + 104);
    if (v43)
    {
      v44 = OUTLINED_FUNCTION_26_23(v43);
    }

    else
    {
      v44 = OUTLINED_FUNCTION_50_10();
    }

    v14 = 0;
    switch(v44)
    {
      case 1:
        break;
      case 2:
        goto LABEL_9;
      case 3:
        goto LABEL_11;
      case 4:
        goto LABEL_8;
      case 5:
        goto LABEL_10;
      case 6:
        goto LABEL_6;
      default:
        goto LABEL_3;
    }
  }

LABEL_4:
  vretproc(v0);
  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

void voicing_assimilation()
{
  OUTLINED_FUNCTION_41_11();
  v1 = v0;
  v34 = *MEMORY[0x277D85DE8];
  v29[0] = 0;
  v29[1] = 0;
  v28[0] = 0;
  v28[1] = 0;
  v27[0] = 0;
  v27[1] = 0;
  OUTLINED_FUNCTION_22_24();
  bzero(v26, v2);
  OUTLINED_FUNCTION_21_25();
  bzero(v33, v3);
  if (!setjmp(v33) && !ventproc(v1, v26, v32, v31, v30, v33))
  {
    v5 = OUTLINED_FUNCTION_14_30();
    OUTLINED_FUNCTION_39_13(v5, v6);
    push_ptr_init(v1, v28);
    v7 = push_ptr_init(v1, v27);
    OUTLINED_FUNCTION_51_10(v7, v8, &_MergedGlobals_1_3);
    v9 = OUTLINED_FUNCTION_8_33();
    starttest(v9, v10);
    v11 = OUTLINED_FUNCTION_14_30();
    if (!lpta_loadp_setscan_l(v11, v12))
    {
      while (1)
      {
        v13 = OUTLINED_FUNCTION_14_30();
        savescptr(v13, v14, v27);
        OUTLINED_FUNCTION_5_34();
        if (test_string_s())
        {
          goto LABEL_10;
        }

        while (1)
        {
          v15 = OUTLINED_FUNCTION_15_30();
          savescptr(v15, v16, v28);
          v17 = OUTLINED_FUNCTION_31_19();
          if (!lpta_loadp_setscan_r(v17, v18) && !testFldeq(v1, 4u, 2, 0) && !advance_tok(v1))
          {
            v19 = OUTLINED_FUNCTION_34_17();
            lpta_rpta_loadp(v19, v20, v29);
            v21 = OUTLINED_FUNCTION_5_34();
            if (!insert_2pt_s(v21, v22, v23, &unk_2806BC328, 0))
            {
              goto LABEL_3;
            }
          }

LABEL_10:
          v24 = *(v1 + 104);
          v25 = v24 ? OUTLINED_FUNCTION_26_23(v24) : OUTLINED_FUNCTION_50_10();
          if (v25 == 2)
          {
            break;
          }

          if (v25 != 3)
          {
            goto LABEL_3;
          }
        }
      }
    }
  }

LABEL_3:
  vretproc(v1);
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_40_12();
}

void break_into_phones()
{
  OUTLINED_FUNCTION_41_11();
  OUTLINED_FUNCTION_27_21();
  v122 = *MEMORY[0x277D85DE8];
  v117[0] = 0;
  v117[1] = 0;
  v115 = 0;
  v116 = 0;
  v113 = 0u;
  v114 = 0u;
  v112[0] = 0;
  v112[1] = 0;
  v110 = 0;
  v111 = 0;
  v109[0] = 0;
  v109[1] = 0;
  v107 = 0u;
  v108 = 0u;
  v106[0] = 0;
  v106[1] = 0;
  OUTLINED_FUNCTION_22_24();
  bzero(v105, v1);
  OUTLINED_FUNCTION_21_25();
  bzero(v121, v2);
  if (!setjmp(v121) && !ventproc(v0, v105, v120, v119, v118, v121))
  {
    v4 = OUTLINED_FUNCTION_16_29();
    OUTLINED_FUNCTION_42_11(v4, v5);
    v6 = OUTLINED_FUNCTION_15_30();
    OUTLINED_FUNCTION_39_13(v6, v7);
    *&v114 = 0;
    *(&v114 + 6) = 0;
    LODWORD(v113) = -65532;
    v8 = OUTLINED_FUNCTION_14_30();
    push_ptr_init(v8, v9);
    v10 = OUTLINED_FUNCTION_18_27();
    push_ptr_init(v10, v11);
    v12 = OUTLINED_FUNCTION_28_20();
    push_ptr_init(v12, v13);
    *&v108 = 0;
    *(&v108 + 6) = 0;
    LODWORD(v107) = -65532;
    v14 = push_ptr_init(v0, v106);
    OUTLINED_FUNCTION_51_10(v14, v15, &_MergedGlobals_1_3);
    v16 = OUTLINED_FUNCTION_8_33();
    startloop(v16, v17);
    v18 = OUTLINED_FUNCTION_15_30();
    lpta_loadpn(v18, v19);
    OUTLINED_FUNCTION_12_32();
    lpta_movel();
    v20 = OUTLINED_FUNCTION_18_27();
    lpta_storep(v20, v21);
    v22 = OUTLINED_FUNCTION_16_29();
    lpta_loadpn(v22, v23);
    OUTLINED_FUNCTION_12_32();
    lpta_movel();
    v24 = OUTLINED_FUNCTION_28_20();
    lpta_storep(v24, v25);
    v26 = 0;
    v27 = 2;
    while (1)
    {
LABEL_5:
      v28 = forall_to_test(v0, &v110, v109);
      v29 = v26;
      v30 = v26;
      v31 = 1;
      if (v28)
      {
        goto LABEL_36;
      }

LABEL_6:
      v26 = v29;
      bspush_ca(v0);
      v32 = OUTLINED_FUNCTION_16_29();
      if (lpta_loadp_setscan_l(v32, v33))
      {
        goto LABEL_23;
      }

      v34 = advance_tok(v0);
      v35 = v26;
      v30 = v26;
      if (v34)
      {
        goto LABEL_36;
      }

LABEL_8:
      v26 = v35;
      savescptr(v0, 4, v112);
      while (2)
      {
        v36 = OUTLINED_FUNCTION_14_30();
        if (lpta_loadp_setscan_r(v36, v37) || (OUTLINED_FUNCTION_12_32(), test_string_s()))
        {
LABEL_11:
          v38 = v26;
        }

        else
        {
          v54 = OUTLINED_FUNCTION_14_30();
          v31 = &v110;
          lpta_rpta_loadp(v54, v55, &v110);
          v56 = OUTLINED_FUNCTION_12_32();
          v57 = v27;
          v27 = 0;
          if (insert_2pt_s(v56, v58, v57, &unk_2806BC33C, 0))
          {
            OUTLINED_FUNCTION_43_11();
          }

          else
          {
            v69 = OUTLINED_FUNCTION_14_30();
            lpta_rpta_loadp(v69, v70, &v110);
            OUTLINED_FUNCTION_12_32();
            v31 = 1;
            v71 = mark_s();
            v38 = v26;
            v27 = 2;
            if (!v71)
            {
              break;
            }
          }
        }

        v26 = v38;
        v39 = OUTLINED_FUNCTION_14_30();
        if (!lpta_loadp_setscan_r(v39, v40))
        {
          OUTLINED_FUNCTION_12_32();
          if (!test_string_s())
          {
            v59 = OUTLINED_FUNCTION_14_30();
            v31 = &v110;
            lpta_rpta_loadp(v59, v60, &v110);
            v61 = OUTLINED_FUNCTION_12_32();
            v62 = v27;
            v27 = 0;
            if (insert_2pt_s(v61, v63, v62, &unk_2806BC33E, 0))
            {
              OUTLINED_FUNCTION_43_11();
            }

            else
            {
              v72 = OUTLINED_FUNCTION_14_30();
              lpta_rpta_loadp(v72, v73, &v110);
              OUTLINED_FUNCTION_12_32();
              mark_s();
              OUTLINED_FUNCTION_43_11();
              if (!v74)
              {
                break;
              }
            }
          }
        }

LABEL_14:
        v41 = OUTLINED_FUNCTION_45_11();
        starttest(v41, 8);
        v42 = OUTLINED_FUNCTION_14_30();
        if (lpta_loadp_setscan_r(v42, v43) || (OUTLINED_FUNCTION_12_32(), test_string_s()))
        {
LABEL_16:
          v44 = OUTLINED_FUNCTION_8_33();
          starttest(v44, v45);
          v46 = OUTLINED_FUNCTION_14_30();
          if (!lpta_loadp_setscan_r(v46, v47))
          {
            v50 = OUTLINED_FUNCTION_12_32();
            if (testFldeq(v50, v51, v31, v27) || (v52 = OUTLINED_FUNCTION_12_32(), testFldeq(v52, v53, 7, v31)) || advance_tok(v0))
            {
LABEL_23:
              v30 = v26;
              goto LABEL_36;
            }

            v75 = OUTLINED_FUNCTION_52_10();
            starttest_l(v75, v76);
            v77 = OUTLINED_FUNCTION_16_29();
            v79 = lpta_loadp_setscan_r(v77, v78);
            v80 = v26;
            if (!v79)
            {
LABEL_53:
              v26 = v80;
              v101 = OUTLINED_FUNCTION_8_33();
              savescptr(v101, v102, v106);
              OUTLINED_FUNCTION_44_11();
              bspush_ca_scan_boa();
              v103 = OUTLINED_FUNCTION_36_15();
              bspush_ca_scan(v103, v104);
              v93 = OUTLINED_FUNCTION_12_32();
              v95 = v31;
              v96 = v27;
LABEL_47:
              v99 = testFldeq(v93, v94, v95, v96);
              v83 = v26;
              v30 = v26;
              if (!v99)
              {
LABEL_48:
                v100 = v83;
                if (advance_tok(v0))
                {
                  v30 = v100;
                }

                else
                {
                  v30 = 1;
                }
              }

LABEL_36:
              v81 = *(v0 + 104);
              if (v81)
              {
                *(v0 + 104) = 0;
                v82 = v81;
                v26 = v30;
              }

              else
              {
                v82 = vback(v0, v30);
                v26 = 0;
              }

              v83 = v26;
              switch(v82)
              {
                case 2:
                  continue;
                case 3:
                  v84 = forto_adv_upto_l(v0, v31, v27, 17, 4, &v110);
                  v30 = v26;
                  if (v84)
                  {
                    goto LABEL_36;
                  }

                  goto LABEL_3;
                case 4:
                  v35 = v26;
                  goto LABEL_8;
                case 5:
                  goto LABEL_11;
                case 6:
                case 9:
                  goto LABEL_17;
                case 7:
                  goto LABEL_14;
                case 8:
                  goto LABEL_16;
                case 10:
                  v80 = v26;
                  goto LABEL_53;
                case 11:
                  bspop_boa(v0);
                  v85 = lpta_loadp_setscan_l(v0, v106);
                  v30 = v26;
                  if (v85)
                  {
                    goto LABEL_36;
                  }

                  v86 = OUTLINED_FUNCTION_33_18();
                  v88 = savetok(v86, v87);
                  v30 = v26;
                  if (v88)
                  {
                    goto LABEL_36;
                  }

                  *(v0 + 168) = v31;
                  *(v0 + 144) = v111;
                  *(v0 + 128) = 0;
                  settvar_s();
                  WORD1(v107) = 5;
                  WORD1(v113) = 5;
                  v89 = OUTLINED_FUNCTION_34_17();
                  copyvar(v89, v90, &v113);
                  WORD1(v107) = 6;
                  WORD1(v113) = 6;
                  v91 = OUTLINED_FUNCTION_34_17();
                  copyvar(v91, v92, &v113);
                  OUTLINED_FUNCTION_12_32();
                  insert_lv();
                  goto LABEL_17;
                case 12:
                  v97 = OUTLINED_FUNCTION_53_10();
                  bspush_ca_scan(v97, v98);
                  v93 = OUTLINED_FUNCTION_12_32();
                  v95 = 4;
                  v96 = 6;
                  goto LABEL_47;
                case 13:
                  goto LABEL_48;
                case 14:
                  v93 = OUTLINED_FUNCTION_12_32();
                  v95 = 4;
                  v96 = 4;
                  goto LABEL_47;
                case 15:
                  goto LABEL_19;
                case 16:
                  goto LABEL_5;
                case 17:
                  v29 = v26;
                  goto LABEL_6;
                default:
                  goto LABEL_3;
              }
            }
          }
        }

        else
        {
          v64 = OUTLINED_FUNCTION_14_30();
          lpta_rpta_loadp(v64, v65, &v110);
          settvar_s();
          npush_s(v0);
          WORD1(v107) = 10;
          v66 = OUTLINED_FUNCTION_34_17();
          npop(v66, v67);
          OUTLINED_FUNCTION_12_32();
          insert_2ptv();
          v30 = v26;
          if (v68)
          {
            goto LABEL_36;
          }
        }

        break;
      }

LABEL_17:
      v48 = OUTLINED_FUNCTION_14_30();
      lpta_loadpn(v48, v49);
      rpta_loadpn(v0, v117);
      if (!compare_ptas(v0) && !testeq(v0))
      {
        break;
      }

LABEL_19:
      forall_cont_from(v0);
    }
  }

LABEL_3:
  vretproc(v0);
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_40_12();
}

uint64_t OUTLINED_FUNCTION_1_36()
{
  *(v1 + 112) = v0;
  *(v1 + 128) = 0;
  return v1;
}

void OUTLINED_FUNCTION_20_25(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  a36 = 0;
  a37 = 0;
  a34 = 0;
  a35 = 0;
  a32 = 0;
  a33 = 0;

  bzero(&a9, 0xB8uLL);
}

uint64_t OUTLINED_FUNCTION_24_24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{

  return lpta_rpta_loadp(v40, &a40, &a36);
}

uint64_t OUTLINED_FUNCTION_25_23(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, int a49, char a50, int a51, __int16 a52, char a53, int a54, __int16 a55, char a56, char a57, uint64_t a58, char a59)
{

  return ventproc(v59, a2, &a57, &a53, &a50, &a59);
}

void OUTLINED_FUNCTION_29_20(uint64_t a1, uint64_t a2)
{

  get_parm(v2, a2, v3, -6);
}

void OUTLINED_FUNCTION_30_19(uint64_t a1, uint64_t a2)
{

  get_parm(v2, a2, v3, -6);
}

uint64_t OUTLINED_FUNCTION_32_18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{

  return lpta_rpta_loadp(v47, &a47, &a41);
}

void OUTLINED_FUNCTION_39_13(uint64_t a1, uint64_t a2)
{

  get_parm(a1, a2, v2, -6);
}

void OUTLINED_FUNCTION_42_11(uint64_t a1, uint64_t a2)
{

  get_parm(a1, a2, v2, -6);
}

uint64_t OUTLINED_FUNCTION_47_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{

  return lpta_rpta_loadp(v47, &a47, &a43);
}

void OUTLINED_FUNCTION_48_11(uint64_t a1, uint64_t a2)
{

  get_parm(v2, a2, v3, -6);
}

void OUTLINED_FUNCTION_49_10(uint64_t a1, uint64_t a2)
{

  get_parm(v2, a2, v3, -6);
}

uint64_t OUTLINED_FUNCTION_50_10()
{

  return vback(v0, 0);
}

void *OUTLINED_FUNCTION_51_10(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return fence_34(v3, 0, a3);
}

void *fence_35(uint64_t a1, int a2, uint64_t a3)
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

void generate_diaphones()
{
  OUTLINED_FUNCTION_61_10();
  v1 = v0;
  v3 = v2;
  v158 = *MEMORY[0x277D85DE8];
  v152 = 0;
  v153 = 0;
  v150 = 0;
  v151 = 0;
  v148 = 0;
  v149 = 0;
  v146 = 0u;
  v147 = 0u;
  v144 = 0;
  v145 = 0;
  v143[0] = 0;
  v143[1] = 0;
  v142[0] = 0;
  v142[1] = 0;
  v141[0] = 0;
  v141[1] = 0;
  v139 = 0u;
  v140 = 0u;
  OUTLINED_FUNCTION_29_21();
  bzero(v138, v4);
  OUTLINED_FUNCTION_28_21();
  bzero(v157, v5);
  if (!setjmp(v157) && !ventproc(v3, v138, v156, v155, v154, v157))
  {
    v7 = OUTLINED_FUNCTION_32_19();
    get_parm(v7, v8, v9, -6);
    v137 = v1;
    get_parm(v3, &v150, v1, -6);
    v10 = OUTLINED_FUNCTION_42_12();
    get_parm(v10, v11, v12, -6);
    *&v147 = 0;
    *(&v147 + 6) = 0;
    LODWORD(v146) = -65532;
    push_ptr_init(v3, &v144);
    push_ptr_init(v3, v143);
    push_ptr_init(v3, v142);
    push_ptr_init(v3, v141);
    *&v140 = 0;
    *(&v140 + 6) = 0;
    LODWORD(v139) = -65532;
    fence_35(v3, 0, &null_str_12);
    v13 = OUTLINED_FUNCTION_21_26();
    fence_35(v13, v14, v15);
    if (*(v3 + 3886) == 1)
    {
      goto LABEL_5;
    }

    v16 = 0;
LABEL_7:
    if (*(v3 + 3842) == 1)
    {
LABEL_5:
      *(v137 + 1) = v151;
      goto LABEL_3;
    }

LABEL_8:
    starttest(v3, 3);
    if (!lpta_loadp_setscan_l(v3, &v148))
    {
      bspush_ca_scan(v3, 4);
      bspush_ca_scan(v3, 5);
      OUTLINED_FUNCTION_3_36();
      v17 = test_string_s();
      v18 = v16;
      if (v17)
      {
        goto LABEL_62;
      }

LABEL_10:
      v16 = v18;
      savescptr(v3, 4, &v150);
    }

LABEL_11:
    *(v3 + 1648) = v153;
    *(v3 + 1664) = v149;
    startloop(v3, 6);
    lpta_loadpn(v3, v3 + 1640);
    OUTLINED_FUNCTION_21_26();
    lpta_mover();
    v19 = OUTLINED_FUNCTION_31_20();
    lpta_storep(v19, v20);
    v21 = OUTLINED_FUNCTION_59_10();
    lpta_loadpn(v21, v22);
    OUTLINED_FUNCTION_21_26();
    lpta_mover();
    v23 = OUTLINED_FUNCTION_25_24();
    lpta_storep(v23, v24);
    while (1)
    {
LABEL_12:
      v25 = OUTLINED_FUNCTION_31_20();
      v27 = forall_to_test(v25, v26, v142);
      v28 = v16;
      if (v27)
      {
        goto LABEL_62;
      }

LABEL_13:
      v16 = v28;
      bspush_ca(v3);
      v29 = OUTLINED_FUNCTION_31_20();
      if (lpta_loadp_setscan_r(v29, v30))
      {
        goto LABEL_62;
      }

      v31 = advance_tok(v3);
      v32 = v16;
      if (v31)
      {
        goto LABEL_62;
      }

LABEL_15:
      v16 = v32;
      savescptr(v3, 9, v143);
LABEL_16:
      v33 = OUTLINED_FUNCTION_26_24();
      starttest(v33, v34);
      v35 = OUTLINED_FUNCTION_31_20();
      if (!lpta_loadp_setscan_r(v35, v36))
      {
        bspush_ca_scan_boa();
        v66 = OUTLINED_FUNCTION_21_26();
        v68 = testFldeq(v66, v67, 4, 1);
        goto LABEL_46;
      }

LABEL_17:
      v37 = OUTLINED_FUNCTION_31_20();
      if (!lpta_loadp_setscan_r(v37, v38))
      {
        OUTLINED_FUNCTION_3_36();
        if (!test_string_s())
        {
          break;
        }
      }

LABEL_19:
      v39 = v16;
      starttest(v3, 63);
      v40 = OUTLINED_FUNCTION_31_20();
      if (lpta_loadp_setscan_r(v40, v41))
      {
LABEL_20:
        v42 = OUTLINED_FUNCTION_31_20();
        if (!lpta_loadp_setscan_r(v42, v43))
        {
          OUTLINED_FUNCTION_3_36();
          if (!test_string_s())
          {
            OUTLINED_FUNCTION_13_33();
            a_tilda_rules();
            goto LABEL_151;
          }
        }

LABEL_22:
        v44 = OUTLINED_FUNCTION_31_20();
        if (!lpta_loadp_setscan_r(v44, v45))
        {
          OUTLINED_FUNCTION_3_36();
          if (!test_string_s())
          {
            OUTLINED_FUNCTION_13_33();
            e_rules();
            goto LABEL_151;
          }
        }

LABEL_24:
        v46 = OUTLINED_FUNCTION_31_20();
        if (!lpta_loadp_setscan_r(v46, v47))
        {
          OUTLINED_FUNCTION_3_36();
          if (!test_string_s())
          {
            OUTLINED_FUNCTION_13_33();
            e_acute_rules();
            goto LABEL_151;
          }
        }

LABEL_26:
        v48 = OUTLINED_FUNCTION_31_20();
        if (!lpta_loadp_setscan_r(v48, v49))
        {
          OUTLINED_FUNCTION_3_36();
          if (!test_string_s())
          {
            OUTLINED_FUNCTION_13_33();
            e_circon_rules();
            goto LABEL_151;
          }
        }

LABEL_28:
        v50 = OUTLINED_FUNCTION_31_20();
        if (!lpta_loadp_setscan_r(v50, v51))
        {
          OUTLINED_FUNCTION_3_36();
          if (!test_string_s())
          {
            OUTLINED_FUNCTION_13_33();
            i_rules();
            goto LABEL_151;
          }
        }

LABEL_30:
        v52 = OUTLINED_FUNCTION_31_20();
        if (!lpta_loadp_setscan_r(v52, v53))
        {
          OUTLINED_FUNCTION_3_36();
          if (!test_string_s())
          {
            OUTLINED_FUNCTION_13_33();
            i_acute_rules();
            goto LABEL_151;
          }
        }

LABEL_32:
        v54 = OUTLINED_FUNCTION_31_20();
        if (!lpta_loadp_setscan_r(v54, v55))
        {
          OUTLINED_FUNCTION_3_36();
          if (!test_string_s())
          {
            OUTLINED_FUNCTION_13_33();
            o_rules();
            goto LABEL_151;
          }
        }

LABEL_34:
        v56 = OUTLINED_FUNCTION_31_20();
        if (!lpta_loadp_setscan_r(v56, v57))
        {
          OUTLINED_FUNCTION_3_36();
          if (!test_string_s())
          {
            OUTLINED_FUNCTION_13_33();
            o_acute_rules();
            goto LABEL_151;
          }
        }

LABEL_36:
        v58 = OUTLINED_FUNCTION_31_20();
        if (!lpta_loadp_setscan_r(v58, v59))
        {
          OUTLINED_FUNCTION_3_36();
          if (!test_string_s())
          {
            OUTLINED_FUNCTION_13_33();
            o_circon_rules();
            goto LABEL_151;
          }
        }

LABEL_38:
        v60 = OUTLINED_FUNCTION_31_20();
        if (!lpta_loadp_setscan_r(v60, v61))
        {
          OUTLINED_FUNCTION_3_36();
          if (!test_string_s())
          {
            OUTLINED_FUNCTION_13_33();
            o_tilda_rules();
            goto LABEL_151;
          }
        }

LABEL_40:
        v62 = OUTLINED_FUNCTION_31_20();
        if (!lpta_loadp_setscan_r(v62, v63))
        {
          OUTLINED_FUNCTION_3_36();
          if (!test_string_s())
          {
            OUTLINED_FUNCTION_13_33();
            u_rules();
            goto LABEL_151;
          }
        }

LABEL_42:
        v39 = v16;
        v64 = OUTLINED_FUNCTION_31_20();
        if (!lpta_loadp_setscan_r(v64, v65))
        {
          OUTLINED_FUNCTION_3_36();
          if (!test_string_s())
          {
            OUTLINED_FUNCTION_13_33();
            u_acute_rules();
          }
        }
      }

      else
      {
        bspush_ca_scan(v3, 64);
        OUTLINED_FUNCTION_3_36();
        if (test_string_s())
        {
          goto LABEL_62;
        }

LABEL_49:
        OUTLINED_FUNCTION_13_33();
        accented_a_rules();
      }

LABEL_152:
      starttest(v3, 91);
      v130 = OUTLINED_FUNCTION_31_20();
      LODWORD(v16) = v39;
      if (!lpta_loadp_setscan_l(v130, v131))
      {
LABEL_157:
        savescptr(v3, 92, v141);
        if (!advanc(v3))
        {
          v134 = OUTLINED_FUNCTION_57_10();
          if (!lpta_loadp_setscan_r(v134, v135))
          {
            bspush_ca_scan_boa();
LABEL_160:
            v68 = test_synch(v3, 94, 1u, &_MergedGlobals_32);
LABEL_46:
            if (!v68)
            {
              LODWORD(v16) = 1;
            }
          }
        }

LABEL_62:
        v69 = v16;
        while (2)
        {
          v70 = *(v3 + 104);
          if (v70)
          {
            v71 = OUTLINED_FUNCTION_36_16(v70);
            v16 = v72;
          }

          else
          {
            v71 = vback(v3, v69);
            v16 = 0;
          }

          v18 = v16;
          v39 = v16;
          switch(v71)
          {
            case 1:
              goto LABEL_7;
            case 2:
              goto LABEL_8;
            case 3:
              goto LABEL_11;
            case 4:
              goto LABEL_10;
            case 5:
              OUTLINED_FUNCTION_3_36();
              v73 = test_string_s();
              v18 = v16;
              v69 = v16;
              if (!v73)
              {
                goto LABEL_10;
              }

              continue;
            case 6:
              goto LABEL_5;
            case 7:
              goto LABEL_16;
            case 8:
              v118 = forto_adv_upto_r(v3, 6, 7, 99, 1, &v144);
              v69 = v16;
              if (!v118)
              {
                goto LABEL_5;
              }

              continue;
            case 9:
              v32 = v16;
              goto LABEL_15;
            case 10:
              goto LABEL_17;
            case 11:
              bspop_boa(v3);
              v76 = advance_tok(v3);
              v69 = v16;
              if (v76)
              {
                continue;
              }

              v77 = OUTLINED_FUNCTION_24_25();
              if (lpta_loadp_setscan_r(v77, v78))
              {
                goto LABEL_73;
              }

              OUTLINED_FUNCTION_3_36();
              if (test_string_s())
              {
                goto LABEL_73;
              }

              OUTLINED_FUNCTION_11_33();
              b_rules();
              goto LABEL_151;
            case 12:
LABEL_73:
              v79 = OUTLINED_FUNCTION_24_25();
              if (lpta_loadp_setscan_r(v79, v80))
              {
                goto LABEL_75;
              }

              OUTLINED_FUNCTION_3_36();
              if (test_string_s())
              {
                goto LABEL_75;
              }

              OUTLINED_FUNCTION_11_33();
              c_rules();
              goto LABEL_151;
            case 13:
            case 14:
            case 16:
            case 18:
            case 20:
            case 22:
            case 24:
            case 26:
            case 28:
            case 30:
            case 32:
            case 34:
            case 36:
            case 38:
            case 40:
            case 42:
            case 44:
            case 46:
            case 50:
            case 52:
            case 54:
            case 56:
            case 58:
            case 59:
            case 60:
            case 62:
            case 67:
            case 69:
            case 71:
            case 73:
            case 75:
            case 77:
            case 79:
            case 81:
            case 83:
            case 85:
            case 87:
            case 89:
            case 90:
              goto LABEL_151;
            case 15:
LABEL_75:
              v81 = OUTLINED_FUNCTION_24_25();
              if (lpta_loadp_setscan_r(v81, v82))
              {
                goto LABEL_77;
              }

              OUTLINED_FUNCTION_3_36();
              if (test_string_s())
              {
                goto LABEL_77;
              }

              OUTLINED_FUNCTION_11_33();
              c_cedille_rules();
              goto LABEL_151;
            case 17:
LABEL_77:
              v83 = OUTLINED_FUNCTION_24_25();
              if (lpta_loadp_setscan_r(v83, v84))
              {
                goto LABEL_79;
              }

              OUTLINED_FUNCTION_3_36();
              if (test_string_s())
              {
                goto LABEL_79;
              }

              OUTLINED_FUNCTION_11_33();
              d_rules();
              goto LABEL_151;
            case 19:
LABEL_79:
              v85 = OUTLINED_FUNCTION_24_25();
              if (lpta_loadp_setscan_r(v85, v86))
              {
                goto LABEL_81;
              }

              OUTLINED_FUNCTION_3_36();
              if (test_string_s())
              {
                goto LABEL_81;
              }

              OUTLINED_FUNCTION_11_33();
              f_rules();
              goto LABEL_151;
            case 21:
LABEL_81:
              v87 = OUTLINED_FUNCTION_24_25();
              if (lpta_loadp_setscan_r(v87, v88))
              {
                goto LABEL_83;
              }

              OUTLINED_FUNCTION_3_36();
              if (test_string_s())
              {
                goto LABEL_83;
              }

              OUTLINED_FUNCTION_11_33();
              g_rules();
              goto LABEL_151;
            case 23:
LABEL_83:
              v89 = OUTLINED_FUNCTION_24_25();
              if (lpta_loadp_setscan_r(v89, v90))
              {
                goto LABEL_85;
              }

              OUTLINED_FUNCTION_3_36();
              if (test_string_s())
              {
                goto LABEL_85;
              }

              OUTLINED_FUNCTION_11_33();
              h_rules();
              goto LABEL_151;
            case 25:
LABEL_85:
              v91 = OUTLINED_FUNCTION_24_25();
              if (lpta_loadp_setscan_r(v91, v92))
              {
                goto LABEL_87;
              }

              OUTLINED_FUNCTION_3_36();
              if (test_string_s())
              {
                goto LABEL_87;
              }

              OUTLINED_FUNCTION_11_33();
              j_rules();
              goto LABEL_151;
            case 27:
LABEL_87:
              v93 = OUTLINED_FUNCTION_24_25();
              if (lpta_loadp_setscan_r(v93, v94))
              {
                goto LABEL_89;
              }

              OUTLINED_FUNCTION_3_36();
              if (test_string_s())
              {
                goto LABEL_89;
              }

              OUTLINED_FUNCTION_11_33();
              k_rules();
              goto LABEL_151;
            case 29:
LABEL_89:
              v95 = OUTLINED_FUNCTION_24_25();
              if (lpta_loadp_setscan_r(v95, v96))
              {
                goto LABEL_91;
              }

              OUTLINED_FUNCTION_3_36();
              if (test_string_s())
              {
                goto LABEL_91;
              }

              OUTLINED_FUNCTION_11_33();
              l_rules();
              goto LABEL_151;
            case 31:
LABEL_91:
              v97 = OUTLINED_FUNCTION_24_25();
              if (lpta_loadp_setscan_r(v97, v98))
              {
                goto LABEL_93;
              }

              OUTLINED_FUNCTION_3_36();
              if (test_string_s())
              {
                goto LABEL_93;
              }

              OUTLINED_FUNCTION_11_33();
              m_rules();
              goto LABEL_151;
            case 33:
LABEL_93:
              v99 = OUTLINED_FUNCTION_24_25();
              if (lpta_loadp_setscan_r(v99, v100))
              {
                goto LABEL_95;
              }

              OUTLINED_FUNCTION_3_36();
              if (test_string_s())
              {
                goto LABEL_95;
              }

              OUTLINED_FUNCTION_11_33();
              n_rules();
              goto LABEL_151;
            case 35:
LABEL_95:
              v101 = OUTLINED_FUNCTION_24_25();
              if (lpta_loadp_setscan_r(v101, v102))
              {
                goto LABEL_97;
              }

              OUTLINED_FUNCTION_3_36();
              if (test_string_s())
              {
                goto LABEL_97;
              }

              OUTLINED_FUNCTION_11_33();
              p_rules();
              goto LABEL_151;
            case 37:
LABEL_97:
              v103 = OUTLINED_FUNCTION_24_25();
              if (lpta_loadp_setscan_r(v103, v104))
              {
                goto LABEL_99;
              }

              OUTLINED_FUNCTION_3_36();
              if (test_string_s())
              {
                goto LABEL_99;
              }

              OUTLINED_FUNCTION_11_33();
              q_rules();
              goto LABEL_151;
            case 39:
LABEL_99:
              v105 = OUTLINED_FUNCTION_24_25();
              if (lpta_loadp_setscan_r(v105, v106))
              {
                goto LABEL_101;
              }

              OUTLINED_FUNCTION_3_36();
              if (test_string_s())
              {
                goto LABEL_101;
              }

              OUTLINED_FUNCTION_11_33();
              r_rules();
              goto LABEL_151;
            case 41:
LABEL_101:
              v107 = OUTLINED_FUNCTION_24_25();
              if (lpta_loadp_setscan_r(v107, v108))
              {
                goto LABEL_103;
              }

              OUTLINED_FUNCTION_3_36();
              if (test_string_s())
              {
                goto LABEL_103;
              }

              OUTLINED_FUNCTION_11_33();
              s_rules();
              goto LABEL_151;
            case 43:
LABEL_103:
              v109 = OUTLINED_FUNCTION_24_25();
              if (lpta_loadp_setscan_r(v109, v110))
              {
                goto LABEL_105;
              }

              OUTLINED_FUNCTION_3_36();
              if (test_string_s())
              {
                goto LABEL_105;
              }

              OUTLINED_FUNCTION_11_33();
              t_rules();
              goto LABEL_151;
            case 45:
LABEL_105:
              v111 = OUTLINED_FUNCTION_22_25();
              starttest(v111, v112);
              v113 = OUTLINED_FUNCTION_24_25();
              if (lpta_loadp_setscan_r(v113, v114))
              {
                goto LABEL_114;
              }

              v115 = OUTLINED_FUNCTION_22_25();
              bspush_ca_scan(v115, v116);
              goto LABEL_107;
            case 47:
LABEL_114:
              v120 = OUTLINED_FUNCTION_24_25();
              if (lpta_loadp_setscan_r(v120, v121))
              {
                goto LABEL_116;
              }

              OUTLINED_FUNCTION_3_36();
              if (test_string_s())
              {
                goto LABEL_116;
              }

              OUTLINED_FUNCTION_11_33();
              v_rules();
              goto LABEL_151;
            case 48:
LABEL_107:
              OUTLINED_FUNCTION_3_36();
              v117 = test_string_s();
              v69 = v16;
              if (!v117)
              {
                goto LABEL_113;
              }

              continue;
            case 49:
LABEL_113:
              OUTLINED_FUNCTION_11_33();
              accented_u_rules();
              goto LABEL_151;
            case 51:
LABEL_116:
              v122 = OUTLINED_FUNCTION_24_25();
              if (lpta_loadp_setscan_r(v122, v123))
              {
                goto LABEL_118;
              }

              OUTLINED_FUNCTION_3_36();
              if (test_string_s())
              {
                goto LABEL_118;
              }

              OUTLINED_FUNCTION_11_33();
              w_rules();
              goto LABEL_151;
            case 53:
LABEL_118:
              v124 = OUTLINED_FUNCTION_24_25();
              if (lpta_loadp_setscan_r(v124, v125))
              {
                goto LABEL_120;
              }

              OUTLINED_FUNCTION_3_36();
              if (test_string_s())
              {
                goto LABEL_120;
              }

              OUTLINED_FUNCTION_11_33();
              x_rules();
              goto LABEL_151;
            case 55:
LABEL_120:
              v126 = OUTLINED_FUNCTION_24_25();
              if (lpta_loadp_setscan_r(v126, v127))
              {
                goto LABEL_122;
              }

              OUTLINED_FUNCTION_3_36();
              if (test_string_s())
              {
                goto LABEL_122;
              }

              OUTLINED_FUNCTION_11_33();
              y_rules();
              goto LABEL_151;
            case 57:
LABEL_122:
              v128 = OUTLINED_FUNCTION_24_25();
              if (!lpta_loadp_setscan_r(v128, v129))
              {
                OUTLINED_FUNCTION_3_36();
                if (!test_string_s())
                {
                  OUTLINED_FUNCTION_11_33();
                  z_rules();
                }
              }

              goto LABEL_151;
            case 61:
              goto LABEL_19;
            case 63:
              goto LABEL_20;
            case 64:
              v74 = OUTLINED_FUNCTION_22_25();
              bspush_ca_scan(v74, v75);
              goto LABEL_111;
            case 65:
              goto LABEL_49;
            case 66:
LABEL_111:
              OUTLINED_FUNCTION_3_36();
              v119 = test_string_s();
              v39 = v16;
              v69 = v16;
              if (!v119)
              {
                goto LABEL_49;
              }

              continue;
            case 68:
              goto LABEL_22;
            case 70:
              goto LABEL_24;
            case 72:
              goto LABEL_26;
            case 74:
              goto LABEL_28;
            case 76:
              goto LABEL_30;
            case 78:
              goto LABEL_32;
            case 80:
              goto LABEL_34;
            case 82:
              goto LABEL_36;
            case 84:
              goto LABEL_38;
            case 86:
              goto LABEL_40;
            case 88:
              goto LABEL_42;
            case 91:
              v39 = v16;
              goto LABEL_153;
            case 92:
              goto LABEL_157;
            case 93:
              bspop_boa(v3);
              *(v3 + 136) = 1;
              *(v3 + 112) = v145;
              *(v3 + 128) = 0;
              OUTLINED_FUNCTION_23_25();
              delete_1pt();
              goto LABEL_145;
            case 94:
              goto LABEL_160;
            case 95:
            case 96:
LABEL_145:
              v39 = v16;
              goto LABEL_155;
            case 97:
              goto LABEL_162;
            case 98:
              goto LABEL_12;
            case 99:
              v28 = v16;
              goto LABEL_13;
            default:
              goto LABEL_3;
          }
        }
      }

LABEL_153:
      starttest(v3, 95);
      if (!lpta_loadp_setscan_l(v3, v143) && !savetok(v3, &v146))
      {
        if (testFldeq(v3, 4u, 1, 1) || advance_tok(v3) || savetok(v3, &v139) || advance_tok(v3) || testeq_tvars(v3, &v146, &v139))
        {
          LODWORD(v16) = v39;
          goto LABEL_62;
        }

        OUTLINED_FUNCTION_13_33();
        delete_phone_from_left();
      }

LABEL_155:
      lpta_loadpn(v3, v143);
      v132 = OUTLINED_FUNCTION_59_10();
      rpta_loadpn(v132, v133);
      if (compare_ptas(v3))
      {
        v16 = v39;
      }

      else
      {
        v16 = v39;
        if (!testeq(v3))
        {
          goto LABEL_5;
        }
      }

LABEL_162:
      v136 = OUTLINED_FUNCTION_22_25();
      forall_cont_from(v136);
    }

    OUTLINED_FUNCTION_13_33();
    a_rules();
LABEL_151:
    v39 = v16;
    goto LABEL_152;
  }

LABEL_3:
  vretproc(v3);
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_60_10();
}