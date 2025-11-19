void final_two()
{
  OUTLINED_FUNCTION_88_11();
  v1 = v0;
  v68 = *MEMORY[0x277D85DE8];
  v62 = 0;
  v63 = 0;
  OUTLINED_FUNCTION_52_17();
  bzero(v61, v2);
  OUTLINED_FUNCTION_51_17();
  bzero(v67, v3);
  if (!setjmp(v67) && !ventproc(v1, v61, v66, v65, v64, v67))
  {
    v62 = 65532;
    v63 = 65532;
    fence_46(v1, &_MergedGlobals_39);
    v4 = OUTLINED_FUNCTION_81_12();
    starttest(v4, v5);
    v6 = OUTLINED_FUNCTION_22_34();
    if (!lpta_loadp_setscan_l(v6, v7))
    {
      v9 = OUTLINED_FUNCTION_37_23();
      bspush_ca_scan(v9, v10);
      OUTLINED_FUNCTION_3_45();
      v11 = test_string_s();
      v12 = 0;
      v13 = 0;
      if (!v11)
      {
LABEL_32:
        v52 = v13;
        v53 = OUTLINED_FUNCTION_25_32();
        starttest(v53, v54);
        v55 = OUTLINED_FUNCTION_18_37();
        move_i(v55, v56, v57);
        v58 = OUTLINED_FUNCTION_49_17();
        move_i(v58, v59, 0);
        OUTLINED_FUNCTION_29_30();
        apply_strong_alternation();
        v12 = v52;
        if (!v60)
        {
          goto LABEL_4;
        }
      }

      while (2)
      {
        v14 = v1[13];
        if (v14)
        {
          v15 = OUTLINED_FUNCTION_53_17(v14);
          v17 = v16;
        }

        else
        {
          v15 = vback(v1, v12);
          v17 = 0;
        }

        v13 = v17;
        switch(v15)
        {
          case 2:
            v18 = OUTLINED_FUNCTION_86_11();
            bspush_ca_scan(v18, v19);
            OUTLINED_FUNCTION_4_44();
            v20 = test_string_s();
            v12 = v17;
            if (v20)
            {
              continue;
            }

            v21 = OUTLINED_FUNCTION_93_9();
            bspush_ca_scan(v21, v22);
            OUTLINED_FUNCTION_2_46();
            goto LABEL_20;
          case 3:
          case 6:
            goto LABEL_32;
          case 4:
            v31 = OUTLINED_FUNCTION_82_12();
            bspush_ca_scan(v31, v32);
            OUTLINED_FUNCTION_38_22();
            goto LABEL_20;
          case 5:
            OUTLINED_FUNCTION_2_46();
            goto LABEL_20;
          case 7:
            v27 = OUTLINED_FUNCTION_74_12();
            bspush_ca_scan(v27, v28);
            OUTLINED_FUNCTION_33_27();
            goto LABEL_20;
          case 8:
            v25 = OUTLINED_FUNCTION_95_9();
            bspush_ca_scan(v25, v26);
            OUTLINED_FUNCTION_3_45();
            goto LABEL_20;
          case 9:
            v33 = OUTLINED_FUNCTION_49_17();
            bspush_ca_scan(v33, v34);
            OUTLINED_FUNCTION_5_44();
            goto LABEL_20;
          case 10:
            v36 = OUTLINED_FUNCTION_103_8();
            bspush_ca_scan(v36, v37);
            OUTLINED_FUNCTION_5_44();
            v38 = test_string_s();
            v12 = v17;
            if (!v38)
            {
              OUTLINED_FUNCTION_102_8();
              bspush_ca_scan_boa();
              v39 = OUTLINED_FUNCTION_1_46();
              v43 = testFldeq(v39, v40, v41, v42);
              v12 = v17;
              if (!v43)
              {
                if (advance_tok(v1))
                {
                  v12 = v17;
                }

                else
                {
                  v12 = 1;
                }
              }
            }

            continue;
          case 11:
            v29 = OUTLINED_FUNCTION_66_15();
            bspush_ca_scan(v29, v30);
            OUTLINED_FUNCTION_33_27();
            goto LABEL_20;
          case 12:
            bspop_boa(v1);
            v13 = v17;
            goto LABEL_32;
          case 13:
            v44 = OUTLINED_FUNCTION_42_21();
            bspush_ca_scan(v44, v45);
            OUTLINED_FUNCTION_5_44();
            v46 = test_string_s();
            v12 = v17;
            if (v46)
            {
              continue;
            }

            v47 = OUTLINED_FUNCTION_0_47();
            v51 = testFldeq(v47, v48, v49, v50);
            v12 = v17;
            if (v51)
            {
              continue;
            }

            advance_tok(v1);
            goto LABEL_21;
          case 14:
            v23 = OUTLINED_FUNCTION_43_20();
            bspush_ca_scan(v23, v24);
            OUTLINED_FUNCTION_33_27();
            goto LABEL_20;
          case 15:
            OUTLINED_FUNCTION_5_44();
LABEL_20:
            test_string_s();
LABEL_21:
            OUTLINED_FUNCTION_124_7();
            if (!v35)
            {
              goto LABEL_32;
            }

            continue;
          default:
            goto LABEL_4;
        }
      }
    }
  }

LABEL_4:
  vretproc(v1);
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_87_11();
}

void antepenult_one()
{
  OUTLINED_FUNCTION_88_11();
  v1 = v0;
  v61 = *MEMORY[0x277D85DE8];
  v56 = 0;
  v55 = 0;
  OUTLINED_FUNCTION_52_17();
  bzero(v54, v2);
  OUTLINED_FUNCTION_51_17();
  bzero(v60, v3);
  if (!setjmp(v60) && !ventproc(v1, v54, v59, v58, v57, v60))
  {
    v56 = 65532;
    v55 = 65532;
    fence_46(v1, &_MergedGlobals_39);
    if (*(v1 + 4002) != 2)
    {
      v5 = 0;
      OUTLINED_FUNCTION_116_7();
      v53 = v6;
      while (2)
      {
        starttest(v1, v6);
        v7 = OUTLINED_FUNCTION_8_43();
        if (!lpta_loadp_setscan_l(v7, v8))
        {
          bspush_ca_scan(v1, 3);
          bspush_ca_scan(v1, 4);
          OUTLINED_FUNCTION_38_22();
          v9 = test_string_s();
          v10 = v5;
          if (!v9)
          {
LABEL_8:
            v5 = v10;
            bspush_ca_scan(v1, 6);
            v11 = OUTLINED_FUNCTION_110_7();
            bspush_ca_scan(v11, v12);
            OUTLINED_FUNCTION_33_27();
            v13 = test_string_s();
            v14 = v5;
            if (!v13)
            {
LABEL_9:
              v5 = v14;
              OUTLINED_FUNCTION_101_8();
              bspush_ca_scan_boa();
              v15 = OUTLINED_FUNCTION_33_27();
              if (!testFldeq(v15, v16, v17, 2))
              {
                v5 = 1;
              }
            }
          }

          v18 = v5;
LABEL_12:
          v19 = *(v1 + 104);
          if (v19)
          {
            v20 = OUTLINED_FUNCTION_53_17(v19);
            v5 = v21;
          }

          else
          {
            v20 = vback(v1, v18);
            v5 = 0;
          }

          v10 = v5;
          v14 = v5;
          switch(v20)
          {
            case 1:
              v6 = v53;
              continue;
            case 3:
              v22 = OUTLINED_FUNCTION_109_7();
              bspush_ca_scan(v22, v23);
              OUTLINED_FUNCTION_17_38();
              goto LABEL_36;
            case 4:
              OUTLINED_FUNCTION_2_46();
              test_string_s();
              OUTLINED_FUNCTION_124_7();
              if (!v32)
              {
                goto LABEL_8;
              }

              goto LABEL_12;
            case 5:
              goto LABEL_8;
            case 6:
              v44 = OUTLINED_FUNCTION_92_10();
              bspush_ca_scan(v44, v45);
              OUTLINED_FUNCTION_33_27();
              goto LABEL_36;
            case 7:
              OUTLINED_FUNCTION_5_44();
              v30 = test_string_s();
              v14 = v5;
              v18 = v5;
              if (!v30)
              {
                goto LABEL_9;
              }

              goto LABEL_12;
            case 8:
              goto LABEL_9;
            case 9:
              bspop_boa(v1);
              v31 = advance_tok(v1);
              goto LABEL_37;
            case 10:
            case 12:
            case 19:
              goto LABEL_38;
            case 11:
              OUTLINED_FUNCTION_33_27();
              goto LABEL_36;
            case 13:
              v24 = OUTLINED_FUNCTION_94_9();
              bspush_ca_scan(v24, v25);
              OUTLINED_FUNCTION_38_22();
              goto LABEL_36;
            case 14:
              v26 = OUTLINED_FUNCTION_86_11();
              bspush_ca_scan(v26, v27);
              OUTLINED_FUNCTION_38_22();
              goto LABEL_36;
            case 15:
              v36 = OUTLINED_FUNCTION_93_9();
              bspush_ca_scan(v36, v37);
              OUTLINED_FUNCTION_17_38();
              goto LABEL_36;
            case 16:
              v39 = OUTLINED_FUNCTION_43_20();
              bspush_ca_scan(v39, v40);
              OUTLINED_FUNCTION_33_27();
              v41 = test_string_s();
              v18 = v5;
              if (v41)
              {
                goto LABEL_12;
              }

              v42 = OUTLINED_FUNCTION_82_12();
              bspush_ca_scan(v42, v43);
              OUTLINED_FUNCTION_2_46();
              goto LABEL_36;
            case 17:
              OUTLINED_FUNCTION_2_46();
              v33 = test_string_s();
              v18 = v5;
              if (v33)
              {
                goto LABEL_12;
              }

              v34 = OUTLINED_FUNCTION_102_8();
              bspush_ca_scan(v34, v35);
              OUTLINED_FUNCTION_2_46();
              goto LABEL_31;
            case 18:
              v28 = OUTLINED_FUNCTION_49_17();
              bspush_ca_scan(v28, v29);
              OUTLINED_FUNCTION_2_46();
              goto LABEL_36;
            case 20:
              OUTLINED_FUNCTION_2_46();
              goto LABEL_36;
            case 21:
              OUTLINED_FUNCTION_2_46();
LABEL_31:
              v38 = test_string_s();
              v18 = v5;
              if (!v38)
              {
                goto LABEL_32;
              }

              goto LABEL_12;
            case 22:
LABEL_32:
              OUTLINED_FUNCTION_38_22();
LABEL_36:
              v31 = test_string_s();
LABEL_37:
              v18 = v5;
              if (v31)
              {
                goto LABEL_12;
              }

LABEL_38:
              v46 = OUTLINED_FUNCTION_74_12();
              starttest(v46, v47);
              v48 = OUTLINED_FUNCTION_66_15();
              move_i(v48, v49, 1);
              v50 = OUTLINED_FUNCTION_103_8();
              move_i(v50, v51, 2);
              OUTLINED_FUNCTION_66_15();
              apply_strong_alternation();
              v18 = v5;
              if (!v52)
              {
                goto LABEL_4;
              }

              goto LABEL_12;
            default:
              goto LABEL_4;
          }
        }

        break;
      }
    }
  }

LABEL_4:
  vretproc(v1);
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_87_11();
}

void penult_two()
{
  OUTLINED_FUNCTION_88_11();
  v1 = v0;
  v58 = *MEMORY[0x277D85DE8];
  v53 = 0;
  v52 = 0;
  OUTLINED_FUNCTION_52_17();
  bzero(v51, v2);
  OUTLINED_FUNCTION_51_17();
  bzero(v57, v3);
  if (!setjmp(v57) && !ventproc(v1, v51, v56, v55, v54, v57))
  {
    v53 = 65532;
    v52 = 65532;
    fence_46(v1, &_MergedGlobals_39);
    OUTLINED_FUNCTION_117_7();
    if (v4 == v5)
    {
      v6 = 0;
      OUTLINED_FUNCTION_78_12();
      OUTLINED_FUNCTION_116_7();
      v50 = v7;
      while (2)
      {
        starttest(v1, v7);
        v8 = OUTLINED_FUNCTION_8_43();
        if (!lpta_loadp_setscan_l(v8, v9))
        {
          bspush_ca_scan(v1, 3);
          OUTLINED_FUNCTION_38_22();
          if (test_string_s())
          {
            goto LABEL_10;
          }

          v17 = OUTLINED_FUNCTION_110_7();
          bspush_ca_scan(v17, v18);
          OUTLINED_FUNCTION_2_46();
LABEL_16:
          v19 = test_string_s();
          v20 = v6;
          v16 = v6;
          if (v19)
          {
            goto LABEL_20;
          }

LABEL_17:
          v6 = v20;
          v21 = OUTLINED_FUNCTION_101_8();
          bspush_ca_scan(v21, v22);
          v23 = OUTLINED_FUNCTION_38_22();
          if (testFldeq(v23, v24, 4, 1))
          {
LABEL_10:
            v16 = v6;
            goto LABEL_20;
          }

          v25 = advance_tok(v1);
          v16 = v6;
          v26 = v6;
          if (!v25)
          {
LABEL_19:
            v27 = v26;
            v28 = OUTLINED_FUNCTION_109_7();
            starttest(v28, v29);
            move_i(v1, &v53, 2);
            move_i(v1, &v52, 1);
            OUTLINED_FUNCTION_66_15();
            apply_strong_alternation();
            v16 = v27;
            if (!v30)
            {
              goto LABEL_40;
            }
          }

LABEL_20:
          v31 = *(v1 + 104);
          if (v31)
          {
            v32 = OUTLINED_FUNCTION_53_17(v31);
            v6 = v33;
          }

          else
          {
            v32 = vback(v1, v16);
            v6 = 0;
          }

          v20 = v6;
          v26 = v6;
          switch(v32)
          {
            case 1:
              v7 = v50;
              continue;
            case 2:
              goto LABEL_6;
            case 3:
              v34 = OUTLINED_FUNCTION_74_12();
              bspush_ca_scan(v34, v35);
              OUTLINED_FUNCTION_38_22();
              goto LABEL_34;
            case 4:
              OUTLINED_FUNCTION_2_46();
              goto LABEL_16;
            case 5:
              goto LABEL_17;
            case 6:
              v36 = OUTLINED_FUNCTION_42_21();
              bspush_ca_scan(v36, v37);
              OUTLINED_FUNCTION_2_46();
              goto LABEL_34;
            case 7:
            case 9:
            case 15:
              goto LABEL_19;
            case 8:
              OUTLINED_FUNCTION_2_46();
              goto LABEL_34;
            case 10:
              v44 = OUTLINED_FUNCTION_92_10();
              bspush_ca_scan(v44, v45);
              OUTLINED_FUNCTION_38_22();
              goto LABEL_34;
            case 11:
              v41 = OUTLINED_FUNCTION_94_9();
              bspush_ca_scan(v41, v42);
              OUTLINED_FUNCTION_38_22();
              goto LABEL_34;
            case 12:
              OUTLINED_FUNCTION_2_46();
              v38 = test_string_s();
              v16 = v6;
              if (v38)
              {
                goto LABEL_20;
              }

              v39 = OUTLINED_FUNCTION_86_11();
              bspush_ca_scan(v39, v40);
              OUTLINED_FUNCTION_2_46();
              goto LABEL_31;
            case 13:
              OUTLINED_FUNCTION_2_46();
LABEL_31:
              v43 = test_string_s();
              v16 = v6;
              if (!v43)
              {
                goto LABEL_32;
              }

              goto LABEL_20;
            case 14:
LABEL_32:
              OUTLINED_FUNCTION_17_38();
LABEL_34:
              test_string_s();
              OUTLINED_FUNCTION_124_7();
              if (!v46)
              {
                goto LABEL_19;
              }

              goto LABEL_20;
            case 17:
              bspop_boa(v1);
              v47 = *(v1 + 4002);
              OUTLINED_FUNCTION_124_7();
              if (v48 >= 4)
              {
                goto LABEL_19;
              }

              goto LABEL_20;
            default:
              goto LABEL_40;
          }
        }

        break;
      }

LABEL_6:
      v10 = OUTLINED_FUNCTION_93_9();
      starttest(v10, v11);
      v12 = OUTLINED_FUNCTION_8_43();
      if (!lpta_loadp_setscan_l(v12, v13))
      {
        OUTLINED_FUNCTION_38_22();
        if (!test_string_s())
        {
          OUTLINED_FUNCTION_82_12();
          bspush_ca_scan_boa();
          OUTLINED_FUNCTION_38_22();
          if (!test_string_s())
          {
            v14 = OUTLINED_FUNCTION_38_22();
            if (!testFldeq(v14, v15, 4, 1))
            {
              if (advance_tok(v1))
              {
                v16 = v6;
              }

              else
              {
                v16 = 1;
              }

              goto LABEL_20;
            }
          }

          goto LABEL_10;
        }
      }
    }
  }

LABEL_40:
  vretproc(v1);
  v49 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_87_11();
}

void special_cases()
{
  OUTLINED_FUNCTION_88_11();
  v1 = v0;
  v79 = *MEMORY[0x277D85DE8];
  v74 = 0;
  OUTLINED_FUNCTION_104_8();
  v70 = 0;
  OUTLINED_FUNCTION_52_17();
  bzero(v69, v2);
  OUTLINED_FUNCTION_51_17();
  bzero(v78, v3);
  if (setjmp(v78))
  {
    goto LABEL_56;
  }

  if (ventproc(v1, v69, v77, v76, v75, v78))
  {
    goto LABEL_56;
  }

  LOWORD(v74) = -4;
  push_ptr_init(v1, v73);
  push_ptr_init(v1, v72);
  push_ptr_init(v1, v71);
  v70 = 65532;
  fence_46(v1, &_MergedGlobals_39);
  HIWORD(v74) = 1;
  OUTLINED_FUNCTION_117_7();
  if (v4 != v5)
  {
    goto LABEL_56;
  }

  v6 = 0;
  while (2)
  {
    v7 = OUTLINED_FUNCTION_8_43();
    if (lpta_loadp_setscan_l(v7, v8) || (OUTLINED_FUNCTION_17_38(), v9 = v6, test_string_s()))
    {
LABEL_41:
      v9 = v6;
      v58 = OUTLINED_FUNCTION_94_9();
      starttest(v58, v59);
      v60 = OUTLINED_FUNCTION_8_43();
      if (lpta_loadp_setscan_l(v60, v61))
      {
        goto LABEL_56;
      }

      OUTLINED_FUNCTION_5_44();
      if (test_string_s())
      {
        goto LABEL_56;
      }

LABEL_43:
      v62 = OUTLINED_FUNCTION_66_15();
      savescptr(v62, v63, v71);
      OUTLINED_FUNCTION_3_45();
      v19 = v9;
      if (!test_string_s())
      {
LABEL_44:
        v64 = OUTLINED_FUNCTION_86_11();
        savescptr(v64, v65, v72);
        if (*(v1 + 4002) != 5 || (OUTLINED_FUNCTION_93_9(), bspush_ca_boa(), v66 = OUTLINED_FUNCTION_8_43(), lpta_loadp_setscan_r(v66, v67)))
        {
LABEL_46:
          v9 = v19;
          goto LABEL_23;
        }

        OUTLINED_FUNCTION_4_44();
        if (test_string_s())
        {
          v9 = v19;
        }

        else
        {
          v9 = 1;
        }
      }

LABEL_23:
      v45 = v9;
LABEL_24:
      v46 = *(v1 + 104);
      if (v46)
      {
        v47 = OUTLINED_FUNCTION_53_17(v46);
        v9 = v48;
      }

      else
      {
        v47 = vback(v1, v45);
        v9 = 0;
      }

      v17 = 2;
      v18 = v9;
      switch(v47)
      {
        case 1:
          v6 = v9;
          continue;
        case 2:
          v6 = v9;
          goto LABEL_41;
        case 3:
          goto LABEL_7;
        case 4:
          goto LABEL_8;
        case 5:
          v49 = OUTLINED_FUNCTION_100_8();
          bspush_ca_scan(v49, v50);
          OUTLINED_FUNCTION_38_22();
          goto LABEL_33;
        case 6:
        case 14:
          goto LABEL_21;
        case 7:
          v54 = OUTLINED_FUNCTION_95_9();
          bspush_ca_scan(v54, v55);
          OUTLINED_FUNCTION_38_22();
          goto LABEL_33;
        case 8:
          OUTLINED_FUNCTION_38_22();
LABEL_33:
          v56 = test_string_s();
          v45 = v9;
          if (v56)
          {
            goto LABEL_24;
          }

          v17 = 2;
          goto LABEL_55;
        case 9:
        case 16:
        case 17:
          goto LABEL_22;
        case 10:
          v16 = *(v1 + 4002);
          goto LABEL_9;
        case 11:
          v26 = *(v1 + 4002);
          v19 = v9;
          goto LABEL_15;
        case 12:
          v17 = 3;
          goto LABEL_55;
        case 13:
          OUTLINED_FUNCTION_2_46();
          v51 = test_string_s();
          v45 = v9;
          if (v51)
          {
            goto LABEL_24;
          }

          v52 = OUTLINED_FUNCTION_92_10();
          bspush_ca_scan(v52, v53);
          OUTLINED_FUNCTION_2_46();
          goto LABEL_36;
        case 15:
          OUTLINED_FUNCTION_2_46();
LABEL_36:
          v57 = test_string_s();
          v45 = v9;
          if (!v57)
          {
            goto LABEL_54;
          }

          goto LABEL_24;
        case 19:
          goto LABEL_43;
        case 20:
          v19 = v9;
          goto LABEL_44;
        case 21:
          bspop_boa(v1);
LABEL_54:
          v17 = 2;
LABEL_55:
          v18 = v9;
          goto LABEL_21;
        default:
          goto LABEL_56;
      }
    }

    break;
  }

LABEL_7:
  v10 = OUTLINED_FUNCTION_101_8();
  savescptr(v10, v11, v73);
  v12 = OUTLINED_FUNCTION_109_7();
  starttest(v12, v13);
  v14 = OUTLINED_FUNCTION_20_35();
  if (!lpta_loadp_setscan_l(v14, v15))
  {
    v23 = OUTLINED_FUNCTION_23_34();
    bspush_ca_scan(v23, v24);
    OUTLINED_FUNCTION_38_22();
    v25 = test_string_s();
    v17 = 2;
    v18 = v9;
    if (v25)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

LABEL_8:
  v16 = *(v1 + 4002);
  v17 = 2;
  v18 = v9;
  if (v16 == 3)
  {
LABEL_21:
    v9 = v18;
    HIWORD(v74) = v17;
    goto LABEL_22;
  }

LABEL_9:
  v19 = v9;
  if (v16 == 4)
  {
    v20 = OUTLINED_FUNCTION_82_12();
    starttest(v20, v21);
    v22 = lpta_loadp_setscan_l(v1, v73);
    v17 = 3;
    if (v22)
    {
      v18 = v9;
      goto LABEL_21;
    }

    v28 = OUTLINED_FUNCTION_102_8();
    bspush_ca_scan(v28, v29);
    v30 = OUTLINED_FUNCTION_0_47();
    if (!testFldeq(v30, v31, v32, v33) && !advance_tok(v1))
    {
      v34 = OUTLINED_FUNCTION_0_47();
      if (!testFldeq(v34, v35, v36, v37))
      {
        v38 = advance_tok(v1);
        v17 = 2;
        v18 = v9;
        if (v38)
        {
          goto LABEL_23;
        }

        goto LABEL_21;
      }
    }

    goto LABEL_46;
  }

  v26 = v16;
LABEL_15:
  v27 = v26;
  v17 = 3;
  v9 = v19;
  v18 = v19;
  if (v27 == 5)
  {
    goto LABEL_21;
  }

LABEL_22:
  v39 = OUTLINED_FUNCTION_103_8();
  starttest(v39, v40);
  v41 = OUTLINED_FUNCTION_11_42();
  move_i(v41, v42, v43);
  OUTLINED_FUNCTION_42_21();
  apply_strong_alternation();
  if (v44)
  {
    goto LABEL_23;
  }

LABEL_56:
  vretproc(v1);
  v68 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_87_11();
}

void default_stress()
{
  OUTLINED_FUNCTION_88_11();
  v1 = v0;
  v104 = *MEMORY[0x277D85DE8];
  v91 = 0;
  v92 = 0;
  v89 = 0;
  v90 = 0;
  v87 = 0;
  v88 = 0;
  v86 = 0;
  OUTLINED_FUNCTION_52_17();
  bzero(v63, v2);
  OUTLINED_FUNCTION_51_17();
  bzero(v103, v3);
  v4 = setjmp(v103);
  if (v4 || OUTLINED_FUNCTION_107_8(v4, v5, v6, v7, v8, v9, v10, v11, v61, v62, v63[0], v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103[0]))
  {
    goto LABEL_3;
  }

  v13 = OUTLINED_FUNCTION_42_21();
  push_ptr_init(v13, v14);
  v15 = OUTLINED_FUNCTION_49_17();
  push_ptr_init(v15, v16);
  v17 = OUTLINED_FUNCTION_43_20();
  push_ptr_init(v17, v18);
  v86 = 0xFFFC0000FFFCLL;
  fence_46(v1, &_MergedGlobals_39);
  OUTLINED_FUNCTION_44_20();
  find_last_syll();
  v19 = 0;
  while (2)
  {
    if (*(v1 + 4002) != 2)
    {
LABEL_19:
      starttest(v1, 7);
      OUTLINED_FUNCTION_49_17();
      bspush_ca_boa();
      OUTLINED_FUNCTION_42_21();
      heavy_syllable();
      if (v51)
      {
        v19 = v19;
      }

      else
      {
        v19 = 1;
      }

      goto LABEL_10;
    }

    v20 = OUTLINED_FUNCTION_58_16();
    if (!lpta_loadp_setscan_r(v20, v21))
    {
      v22 = advance_tok(v1);
      v23 = v19;
      if (!v22)
      {
LABEL_8:
        v19 = v23;
        v24 = OUTLINED_FUNCTION_82_12();
        savescptr(v24, v25, &v87);
      }
    }

LABEL_9:
    v26 = OUTLINED_FUNCTION_66_15();
    starttest(v26, v27);
    v28 = OUTLINED_FUNCTION_74_12();
    move_i(v28, v29, 1);
    v30 = OUTLINED_FUNCTION_58_16();
    if (insert_stressval(v30, v31, &v87, &v86 + 4, v32, v33, v34, v35))
    {
LABEL_10:
      v36 = *(v1 + 104);
      if (v36)
      {
        v37 = OUTLINED_FUNCTION_53_17(v36);
      }

      else
      {
        v37 = vback(v1, v19);
        v19 = 0;
      }

      switch(v37)
      {
        case 1:
          continue;
        case 2:
          goto LABEL_19;
        case 3:
          goto LABEL_9;
        case 4:
          v23 = v19;
          goto LABEL_8;
        case 5:
        case 6:
        case 9:
          goto LABEL_22;
        case 7:
          v38 = OUTLINED_FUNCTION_100_8();
          starttest(v38, v39);
          v40 = OUTLINED_FUNCTION_95_9();
          move_i(v40, v41, 1);
          v42 = OUTLINED_FUNCTION_74_12();
          move_i(v42, v43, 1);
          OUTLINED_FUNCTION_95_9();
          goto LABEL_16;
        case 8:
          bspop_boa(v1);
          v44 = OUTLINED_FUNCTION_103_8();
          starttest(v44, v45);
          v46 = OUTLINED_FUNCTION_74_12();
          move_i(v46, v47, 1);
          v48 = OUTLINED_FUNCTION_95_9();
          move_i(v48, v49, 2);
          OUTLINED_FUNCTION_74_12();
LABEL_16:
          apply_strong_alternation();
          if (!v50)
          {
            goto LABEL_22;
          }

          goto LABEL_10;
        default:
          goto LABEL_3;
      }
    }

    break;
  }

LABEL_22:
  two_stress_ending();
  if (!v52)
  {
    v53 = OUTLINED_FUNCTION_119_7();
    lpta_rpta_loadp(v53, v54, v55);
    v56 = OUTLINED_FUNCTION_9_43();
    insert_2pt_i(v56, v57, v58, v59, v60);
  }

LABEL_3:
  vretproc(v1);
  v12 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_87_11();
}

uint64_t two_stress_begin()
{
  OUTLINED_FUNCTION_108_7();
  v206 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_45_19(v1, v2, v3, v4, v5, v6, v7, v8, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203[0], v203[1], v204[0], v204[1]);
  OUTLINED_FUNCTION_51_17();
  bzero(v205, v9);
  if (setjmp(v205) || (OUTLINED_FUNCTION_57_16(), ventproc(v0, v10, v11, v12, v13, v205)))
  {
LABEL_3:
    v14 = 94;
  }

  else
  {
    v18 = OUTLINED_FUNCTION_34_27();
    get_parm(v18, v19, v20, -6);
    v21 = OUTLINED_FUNCTION_89_11();
    push_ptr_init(v21, v22);
    fence_46(v0, &_MergedGlobals_39);
    v23 = OUTLINED_FUNCTION_37_23();
    starttest(v23, v24);
    v25 = OUTLINED_FUNCTION_43_20();
    if (!lpta_loadp_setscan_r(v25, v26))
    {
      OUTLINED_FUNCTION_14_41();
      if (!test_string_i())
      {
        v27 = 0;
        while (2)
        {
          v28 = OUTLINED_FUNCTION_81_12();
          savescptr(v28, v29, v203);
          OUTLINED_FUNCTION_49_17();
          bspush_ca_scan_boa();
          OUTLINED_FUNCTION_56_17();
          v30 = test_string_i();
LABEL_10:
          if (v30)
          {
            v31 = v27;
          }

          else
          {
            v31 = 1;
          }

LABEL_13:
          v32 = *(v0 + 104);
          if (v32)
          {
            v33 = OUTLINED_FUNCTION_53_17(v32);
            v27 = v34;
          }

          else
          {
            v33 = vback(v0, v31);
            v27 = 0;
          }

          v35 = v33;
          v14 = 94;
          switch(v35)
          {
            case 1:
              break;
            case 2:
              continue;
            case 3:
              bspop_boa(v0);
              v36 = OUTLINED_FUNCTION_70_13();
              lpta_rpta_loadp(v36, v37, v38);
              v39 = OUTLINED_FUNCTION_38_22();
              if (!setd_lookup(v39, v40, 480))
              {
                goto LABEL_3;
              }

              goto LABEL_18;
            case 4:
LABEL_18:
              v41 = OUTLINED_FUNCTION_37_23();
              starttest(v41, v42);
              if (*(v0 + 6010) != 1)
              {
                goto LABEL_19;
              }

              goto LABEL_86;
            case 5:
            case 33:
            case 45:
            case 57:
              goto LABEL_86;
            case 6:
LABEL_19:
              v43 = OUTLINED_FUNCTION_28_30();
              starttest(v43, v44);
              v45 = OUTLINED_FUNCTION_62_16();
              if (lpta_loadp_setscan_r(v45, v46))
              {
                goto LABEL_20;
              }

              v165 = OUTLINED_FUNCTION_27_31();
              bspush_ca_scan(v165, v166);
              goto LABEL_93;
            case 7:
LABEL_20:
              v47 = OUTLINED_FUNCTION_37_23();
              starttest(v47, v48);
              v49 = OUTLINED_FUNCTION_39_22();
              if (lpta_loadp_setscan_r(v49, v50))
              {
                goto LABEL_21;
              }

              v157 = OUTLINED_FUNCTION_37_23();
              bspush_ca_scan(v157, v158);
              goto LABEL_89;
            case 8:
              while (1)
              {
                v69 = OUTLINED_FUNCTION_10_42();
                if (testFldeq(v69, v70, v71, 2) || advance_tok(v0))
                {
                  break;
                }

                v67 = OUTLINED_FUNCTION_37_23();
                bspush_ca_scan(v67, v68);
              }

              goto LABEL_95;
            case 9:
              OUTLINED_FUNCTION_10_42();
              v95 = test_string_s();
              v31 = v27;
              if (v95)
              {
                goto LABEL_13;
              }

              goto LABEL_74;
            case 10:
              do
              {
LABEL_93:
                v167 = OUTLINED_FUNCTION_37_23();
                bspush_ca_scan(v167, v168);
                v169 = OUTLINED_FUNCTION_10_42();
              }

              while (!testFldeq(v169, v170, v171, 2) && !advance_tok(v0));
              goto LABEL_95;
            case 11:
            case 13:
            case 14:
LABEL_74:
              v137 = OUTLINED_FUNCTION_37_23();
              bspush_ca_scan(v137, v138);
              goto LABEL_75;
            case 12:
            case 16:
            case 24:
            case 25:
            case 31:
              goto LABEL_84;
            case 15:
LABEL_75:
              OUTLINED_FUNCTION_10_42();
              goto LABEL_76;
            case 17:
              OUTLINED_FUNCTION_46_19();
LABEL_76:
              v139 = test_string_s();
              v31 = v27;
              if (!v139)
              {
                goto LABEL_84;
              }

              goto LABEL_13;
            case 18:
LABEL_21:
              v51 = OUTLINED_FUNCTION_37_23();
              starttest(v51, v52);
              if (*(v0 + 4002) != 4)
              {
                goto LABEL_24;
              }

              v53 = OUTLINED_FUNCTION_8_43();
              if (lpta_loadp_setscan_l(v53, v54))
              {
                goto LABEL_24;
              }

              OUTLINED_FUNCTION_5_44();
              if (test_string_s())
              {
                goto LABEL_24;
              }

              v172 = OUTLINED_FUNCTION_37_23();
              bspush_ca_scan(v172, v173);
              goto LABEL_38;
            case 19:
              v135 = OUTLINED_FUNCTION_37_23();
              bspush_ca_scan(v135, v136);
              OUTLINED_FUNCTION_17_38();
              goto LABEL_52;
            case 20:
              v92 = OUTLINED_FUNCTION_37_23();
              bspush_ca_scan(v92, v93);
              OUTLINED_FUNCTION_2_46();
              v94 = test_string_s();
              v31 = v27;
              if (v94)
              {
                goto LABEL_13;
              }

              goto LABEL_81;
            case 21:
              do
              {
LABEL_89:
                v159 = OUTLINED_FUNCTION_37_23();
                bspush_ca_scan(v159, v160);
                v161 = OUTLINED_FUNCTION_0_47();
              }

              while (!testFldeq(v161, v162, v163, v164) && !advance_tok(v0));
              goto LABEL_95;
            case 22:
              v97 = OUTLINED_FUNCTION_37_23();
              bspush_ca_scan(v97, v98);
              OUTLINED_FUNCTION_76_12();
              v99 = OUTLINED_FUNCTION_7_43();
              v100 = test_ptr(v99);
              v31 = v27;
              if (v100)
              {
                goto LABEL_13;
              }

              v101 = OUTLINED_FUNCTION_37_23();
              bspush_ca_scan(v101, v102);
              goto LABEL_80;
            case 23:
            case 30:
              goto LABEL_82;
            case 26:
              v103 = OUTLINED_FUNCTION_37_23();
              bspush_ca_scan(v103, v104);
              OUTLINED_FUNCTION_4_44();
              goto LABEL_83;
            case 27:
              v105 = OUTLINED_FUNCTION_0_47();
              v109 = testFldeq(v105, v106, v107, v108);
              v31 = v27;
              if (v109)
              {
                goto LABEL_13;
              }

              OUTLINED_FUNCTION_37_23();
              bspush_ca_scan_boa();
              v176 = OUTLINED_FUNCTION_15_40();
              v179 = 12;
              goto LABEL_102;
            case 28:
              goto LABEL_80;
            case 29:
              bspop_boa(v0);
              v142 = advance_tok(v0);
              v31 = v27;
              if (v142)
              {
                goto LABEL_13;
              }

LABEL_80:
              OUTLINED_FUNCTION_2_46();
              v143 = test_string_s();
              v31 = v27;
              if (v143)
              {
                goto LABEL_13;
              }

LABEL_81:
              v144 = OUTLINED_FUNCTION_37_23();
              bspush_ca_scan(v144, v145);
LABEL_82:
              OUTLINED_FUNCTION_2_46();
LABEL_83:
              v146 = test_string_s();
              v31 = v27;
              if (v146)
              {
                goto LABEL_13;
              }

LABEL_84:
              v147 = OUTLINED_FUNCTION_19_37();
              v96 = test_synch(v147, v148, v149, v150);
              goto LABEL_85;
            case 32:
              v85 = OUTLINED_FUNCTION_1_46();
              v89 = testFldeq(v85, v86, v87, v88);
              v31 = v27;
              if (v89)
              {
                goto LABEL_13;
              }

              v90 = advance_tok(v0);
              v31 = v27;
              if (v90)
              {
                goto LABEL_13;
              }

              goto LABEL_82;
            case 34:
              v140 = OUTLINED_FUNCTION_37_23();
              bspush_ca_scan(v140, v141);
              OUTLINED_FUNCTION_3_45();
              goto LABEL_52;
            case 35:
              v174 = OUTLINED_FUNCTION_37_23();
              bspush_ca_scan(v174, v175);
              goto LABEL_99;
            case 36:
              while (1)
              {
                v63 = OUTLINED_FUNCTION_0_47();
                if (testFldeq(v63, v64, v65, v66) || advance_tok(v0))
                {
                  break;
                }

                v61 = OUTLINED_FUNCTION_37_23();
                bspush_ca_scan(v61, v62);
              }

LABEL_95:
              v31 = v27;
              goto LABEL_13;
            case 37:
              bspop_boa(v0);
              v110 = advance_tok(v0);
              v31 = v27;
              if (v110)
              {
                goto LABEL_13;
              }

              v111 = OUTLINED_FUNCTION_37_23();
              bspush_ca_scan(v111, v112);
              v113 = OUTLINED_FUNCTION_37_23();
              bspush_ca_scan(v113, v114);
              goto LABEL_62;
            case 38:
LABEL_99:
              OUTLINED_FUNCTION_37_23();
              bspush_ca_scan_boa();
              v176 = OUTLINED_FUNCTION_1_46();
              goto LABEL_102;
            case 39:
              OUTLINED_FUNCTION_2_46();
              v74 = test_string_s();
              v31 = v27;
              if (v74)
              {
                goto LABEL_13;
              }

              goto LABEL_62;
            case 40:
LABEL_62:
              OUTLINED_FUNCTION_2_46();
              v115 = test_string_s();
              v31 = v27;
              if (v115)
              {
                goto LABEL_13;
              }

              v116 = OUTLINED_FUNCTION_37_23();
              bspush_ca_scan(v116, v117);
              v118 = OUTLINED_FUNCTION_0_47();
              v122 = testFldeq(v118, v119, v120, v121);
              v31 = v27;
              if (v122)
              {
                goto LABEL_13;
              }

              OUTLINED_FUNCTION_37_23();
              bspush_ca_scan_boa();
              v176 = OUTLINED_FUNCTION_15_40();
              v179 = 21;
              goto LABEL_102;
            case 41:
              v81 = OUTLINED_FUNCTION_37_23();
              bspush_ca_scan(v81, v82);
              v83 = OUTLINED_FUNCTION_37_23();
              bspush_ca_scan(v83, v84);
              goto LABEL_45;
            case 42:
              bspop_boa(v0);
              OUTLINED_FUNCTION_37_23();
              bspush_ca_scan_boa();
              v176 = OUTLINED_FUNCTION_15_40();
              v179 = 29;
              goto LABEL_102;
            case 43:
              bspop_boa(v0);
              goto LABEL_101;
            case 44:
              bspop_boa(v0);
              v129 = advance_tok(v0);
              v31 = v27;
              if (v129)
              {
                goto LABEL_13;
              }

              v130 = OUTLINED_FUNCTION_1_46();
              v134 = testFldeq(v130, v131, v132, v133);
              v31 = v27;
              if (v134)
              {
                goto LABEL_13;
              }

              goto LABEL_66;
            case 46:
              OUTLINED_FUNCTION_4_44();
              goto LABEL_52;
            case 47:
              v72 = OUTLINED_FUNCTION_37_23();
              bspush_ca_scan(v72, v73);
              goto LABEL_45;
            case 48:
            case 56:
              goto LABEL_51;
            case 49:
LABEL_45:
              OUTLINED_FUNCTION_2_46();
              v91 = test_string_s();
              v31 = v27;
              if (!v91)
              {
                goto LABEL_51;
              }

              goto LABEL_13;
            case 50:
              v123 = OUTLINED_FUNCTION_1_46();
              v127 = testFldeq(v123, v124, v125, v126);
              v31 = v27;
              if (v127)
              {
                goto LABEL_13;
              }

              v128 = advance_tok(v0);
              v31 = v27;
              if (v128)
              {
                goto LABEL_13;
              }

              goto LABEL_51;
            case 51:
LABEL_24:
              v55 = OUTLINED_FUNCTION_37_23();
              starttest(v55, v56);
              v57 = OUTLINED_FUNCTION_39_22();
              if (lpta_loadp_setscan_r(v57, v58))
              {
                goto LABEL_3;
              }

              OUTLINED_FUNCTION_5_44();
              if (test_string_s())
              {
                goto LABEL_3;
              }

              v59 = OUTLINED_FUNCTION_37_23();
              bspush_ca_scan(v59, v60);
LABEL_51:
              OUTLINED_FUNCTION_2_46();
LABEL_52:
              v96 = test_string_s();
              goto LABEL_85;
            case 52:
LABEL_38:
              OUTLINED_FUNCTION_4_44();
              v75 = test_string_s();
              v31 = v27;
              if (!v75)
              {
                goto LABEL_39;
              }

              goto LABEL_13;
            case 53:
LABEL_39:
              v76 = OUTLINED_FUNCTION_0_47();
              v80 = testFldeq(v76, v77, v78, v79);
              v31 = v27;
              if (v80)
              {
                goto LABEL_13;
              }

LABEL_101:
              OUTLINED_FUNCTION_37_23();
              bspush_ca_scan_boa();
              v176 = OUTLINED_FUNCTION_15_40();
              v179 = 24;
LABEL_102:
              v30 = testFldeq(v176, v177, v178, v179);
              goto LABEL_10;
            case 54:
              bspop_boa(v0);
LABEL_66:
              v96 = advance_tok(v0);
LABEL_85:
              v31 = v27;
              if (v96)
              {
                goto LABEL_13;
              }

LABEL_86:
              lpta_rpta_loadp(v0, v204, v203);
              v151 = OUTLINED_FUNCTION_9_43();
              inserted = insert_2pt_i(v151, v152, v153, v154, v155);
              v31 = v27;
              if (!inserted)
              {
                goto LABEL_7;
              }

              goto LABEL_13;
            default:
              goto LABEL_4;
          }

          break;
        }
      }
    }

LABEL_7:
    v14 = 0;
  }

LABEL_4:
  v15 = v14;
  vretproc(v0);
  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

void apply_long_alternation()
{
  OUTLINED_FUNCTION_88_11();
  OUTLINED_FUNCTION_21_34();
  v133 = *MEMORY[0x277D85DE8];
  v122 = 0;
  v120 = 0;
  v121 = 0;
  v118 = 0;
  v119 = 0;
  OUTLINED_FUNCTION_104_8();
  OUTLINED_FUNCTION_52_17();
  bzero(v113, v1);
  OUTLINED_FUNCTION_51_17();
  bzero(v132, v2);
  v3 = setjmp(v132);
  if (v3 || OUTLINED_FUNCTION_79_12(v3, v113, v4, v5, v6, v7, v8, v9, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113[0], v113[1], v113[2], v113[3], v113[4], v113[5], v113[6], v113[7], v113[8], v113[9], v113[10], v113[11], v113[12], v113[13], v113[14], v113[15], v113[16], v113[17], v113[18], v113[19], v113[20], v113[21], v113[22], v114[0], v114[1], v115[0], v115[1], v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132[0]))
  {
    goto LABEL_3;
  }

  v11 = OUTLINED_FUNCTION_83_12();
  get_parm(v11, v12, v13, -4);
  v14 = OUTLINED_FUNCTION_59_16();
  get_parm(v14, v15, v16, -4);
  LODWORD(v121) = 65532;
  v17 = OUTLINED_FUNCTION_49_17();
  push_ptr_init(v17, v18);
  v19 = OUTLINED_FUNCTION_43_20();
  push_ptr_init(v19, v20);
  v116 = 0xFFFC0000FFFCLL;
  v21 = OUTLINED_FUNCTION_66_15();
  push_ptr_init(v21, v22);
  v23 = OUTLINED_FUNCTION_74_12();
  push_ptr_init(v23, v24);
  v25 = OUTLINED_FUNCTION_42_21();
  fence_46(v25, v26);
  v27 = OUTLINED_FUNCTION_42_21();
  fence_46(v27, v28);
  OUTLINED_FUNCTION_44_20();
  find_last_syll();
  v29 = 0;
  while (2)
  {
    if (HIWORD(v121))
    {
      startloop(v0, 2);
      move_i(v0, &v121, 1);
      move_i(v0, &v116 + 4, 1);
      copyvar(v0, &v116, &v121 + 2);
      v30 = for_test(v0, &v121, &v116, &v116 + 2);
      v31 = v29;
      if (v30)
      {
        goto LABEL_18;
      }

      do
      {
LABEL_41:
        v29 = v31;
        v87 = OUTLINED_FUNCTION_94_9();
        starttest(v87, v88);
        v89 = OUTLINED_FUNCTION_123_7();
        v91 = lpta_loadp_setscan_l(v89, v90);
        v86 = v29;
        if (!v91)
        {
LABEL_42:
          v29 = v86;
          v92 = OUTLINED_FUNCTION_86_11();
          savescptr(v92, v93, &v117);
          v94 = advance_tok(v0);
          v85 = v29;
          if (v94)
          {
            goto LABEL_18;
          }

LABEL_43:
          v29 = v85;
          v95 = OUTLINED_FUNCTION_93_9();
          savescptr(v95, v96, &v119);
        }

LABEL_44:
        v97 = for_adv(v0, 2, 3, &v121, &v116, &v116 + 2);
        v31 = v29;
      }

      while (v97);
    }

LABEL_8:
    v32 = OUTLINED_FUNCTION_123_7();
    insert_stressval(v32, v33, &v117, &v122, v34, v35, v36, v37);
LABEL_9:
    v38 = OUTLINED_FUNCTION_58_16();
    if (!lpta_loadp_setscan_r(v38, v39) && !advance_tok(v0))
    {
      OUTLINED_FUNCTION_76_12();
      v40 = OUTLINED_FUNCTION_7_43();
      if (!test_ptr(v40))
      {
        if (HIWORD(v122) != 2)
        {
          break;
        }

        v99 = &v119;
        v98 = (v0 + 1640);
LABEL_52:
        lpta_rpta_loadp(v0, v98, v99);
        v100 = OUTLINED_FUNCTION_14_41();
        insert_2pt_i(v100, v101, v102, v103, 0);
        break;
      }
    }

LABEL_12:
    v41 = OUTLINED_FUNCTION_123_7();
    lpta_loadpn(v41, v42);
    v43 = OUTLINED_FUNCTION_58_16();
    rpta_loadpn(v43, v44);
    if (!compare_ptas(v0) && !testeq(v0))
    {
      if (HIWORD(v122) != 1)
      {
        break;
      }

      v98 = &v119;
      v99 = &v117;
      goto LABEL_52;
    }

LABEL_14:
    v45 = 2;
    v46 = v29;
    if (HIWORD(v122) != 1)
    {
LABEL_15:
      v45 = 1;
      v46 = v29;
    }

    LODWORD(v29) = v46;
    HIWORD(v122) = v45;
LABEL_17:
    v47 = OUTLINED_FUNCTION_110_7();
    starttest(v47, v48);
    c_assvar(v0, &v116 + 2);
    HIWORD(v116) = *(v0 + 3998) - HIWORD(v121);
    if (SHIWORD(v116) >= 3)
    {
LABEL_18:
      v49 = v29;
LABEL_19:
      v50 = *(v0 + 104);
      if (v50)
      {
        v51 = OUTLINED_FUNCTION_53_17(v50);
        v29 = v56;
      }

      else
      {
        v51 = vback(v0, v49);
        v29 = 0;
      }

      switch(v51)
      {
        case 1:
          continue;
        case 2:
          goto LABEL_8;
        case 3:
          v31 = v29;
          goto LABEL_41;
        case 4:
          goto LABEL_44;
        case 5:
          v86 = v29;
          goto LABEL_42;
        case 6:
          v85 = v29;
          goto LABEL_43;
        case 7:
          goto LABEL_9;
        case 8:
          goto LABEL_12;
        case 10:
          goto LABEL_14;
        case 12:
          goto LABEL_15;
        case 13:
          goto LABEL_17;
        case 14:
          v57 = OUTLINED_FUNCTION_43_20();
          starttest(v57, v58);
          v59 = OUTLINED_FUNCTION_123_7();
          if (!lpta_loadp_setscan_l(v59, v60) && !advance_tok(v0))
          {
            goto LABEL_25;
          }

          goto LABEL_27;
        case 15:
          goto LABEL_27;
        case 16:
LABEL_25:
          v61 = OUTLINED_FUNCTION_101_8();
          savescptr(v61, v62, v114);
          v63 = OUTLINED_FUNCTION_109_7();
          bspush_ca_scan(v63, v64);
          v65 = advance_tok(v0);
          v49 = v29;
          if (!v65)
          {
            goto LABEL_26;
          }

          goto LABEL_19;
        case 17:
LABEL_26:
          v66 = OUTLINED_FUNCTION_37_23();
          savescptr(v66, v67, v115);
LABEL_27:
          v68 = OUTLINED_FUNCTION_100_8();
          starttest(v68, v69);
          OUTLINED_FUNCTION_103_8();
          bspush_ca_boa();
          OUTLINED_FUNCTION_74_12();
          heavy_syllable();
          if (v70)
          {
            v49 = v29;
          }

          else
          {
            v49 = 1;
          }

          goto LABEL_19;
        case 18:
          goto LABEL_46;
        case 19:
          bspop_boa(v0);
          v71 = OUTLINED_FUNCTION_37_23();
          starttest_e(v71, v72);
          v73 = OUTLINED_FUNCTION_66_15();
          if (!lpta_loadp_setscan_l(v73, v74))
          {
            goto LABEL_31;
          }

          goto LABEL_46;
        case 20:
LABEL_31:
          v75 = OUTLINED_FUNCTION_95_9();
          savescptr(v75, v76, v114);
          v77 = advance_tok(v0);
          v49 = v29;
          if (!v77)
          {
            goto LABEL_35;
          }

          goto LABEL_19;
        case 21:
LABEL_35:
          v81 = OUTLINED_FUNCTION_92_10();
          savescptr(v81, v82, v115);
          goto LABEL_36;
        case 22:
          OUTLINED_FUNCTION_76_12();
          v78 = *(v0 + 1648);
          v79 = OUTLINED_FUNCTION_7_43();
          v80 = test_ptr(v79);
          v49 = v29;
          if (v80)
          {
            goto LABEL_19;
          }

LABEL_46:
          insert_stressval(v0, v115, v114, &v122, v52, v53, v54, v55);
          goto LABEL_3;
        case 23:
          do
          {
LABEL_36:
            v83 = OUTLINED_FUNCTION_42_21();
            bspush_ca_scan(v83, v84);
          }

          while (!advance_tok(v0));
          goto LABEL_18;
        default:
          goto LABEL_3;
      }
    }

    break;
  }

LABEL_3:
  vretproc(v0);
  v10 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_87_11();
}

uint64_t apply_longalt_final_two_opt(uint64_t a1)
{
  v73 = *MEMORY[0x277D85DE8];
  HIDWORD(v62) = 0;
  v63 = 0;
  v60 = 0;
  v61 = 0;
  v58 = 0;
  v59 = 0;
  OUTLINED_FUNCTION_52_17();
  bzero(v35, v2);
  OUTLINED_FUNCTION_51_17();
  bzero(v72, v3);
  v4 = setjmp(v72);
  if (v4 || OUTLINED_FUNCTION_69_13(v4, v5, v6, v7, v8, v9, v10, v11, v34, v35[0], v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71))
  {
    goto LABEL_3;
  }

  HIDWORD(v62) = 65532;
  v63 = 65532;
  push_ptr_init(a1, &v60);
  v15 = OUTLINED_FUNCTION_112_7();
  push_ptr_init(v15, v16);
  fence_46(a1, &_MergedGlobals_39);
  v17 = OUTLINED_FUNCTION_81_12();
  starttest(v17, v18);
  v19 = OUTLINED_FUNCTION_43_20();
  move_i(v19, v20, 1);
  v21 = OUTLINED_FUNCTION_49_17();
  move_i(v21, v22, 1);
  OUTLINED_FUNCTION_29_30();
  apply_long_alternation();
  if (!v23 || ((v24 = *(a1 + 104)) == 0 ? (v25 = OUTLINED_FUNCTION_99_8()) : (v25 = OUTLINED_FUNCTION_53_17(v24)), v25 == 1))
  {
    OUTLINED_FUNCTION_44_20();
    find_last_syll();
LABEL_14:
    two_stress_ending();
    if (!v26)
    {
      v27 = OUTLINED_FUNCTION_111_7();
      lpta_rpta_loadp(v27, v28, v29);
      v12 = 0;
      v30 = OUTLINED_FUNCTION_14_41();
      insert_2pt_i(v30, v31, v32, v33, 0);
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  if (v25 == 2)
  {
    goto LABEL_14;
  }

  if (v25 == 3)
  {
LABEL_15:
    v12 = 0;
    goto LABEL_4;
  }

LABEL_3:
  v12 = 94;
LABEL_4:
  vretproc(a1);
  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

void two_stress_ending()
{
  OUTLINED_FUNCTION_88_11();
  v1 = v0;
  v389 = *MEMORY[0x277D85DE8];
  v383[0] = 0;
  v383[1] = 0;
  v384 = 0;
  v382[0] = 0;
  v382[1] = 0;
  OUTLINED_FUNCTION_52_17();
  bzero(v381, v2);
  OUTLINED_FUNCTION_51_17();
  bzero(v388, v3);
  if (!setjmp(v388) && !ventproc(v1, v381, v387, v386, v385, v388))
  {
    BYTE4(v384) = 0;
    LODWORD(v384) = 0;
    LODWORD(v383[0]) = -65535;
    push_ptr_init(v1, v382);
    v5 = OUTLINED_FUNCTION_42_21();
    fence_46(v5, v6);
    fence_46(v1, &unk_280581339);
    if (*(v1 + 5954) != 1)
    {
      v7 = 0;
      while (2)
      {
        v8 = *(v1 + 5290);
        OUTLINED_FUNCTION_118_7();
        if (!v9 || (v10 = OUTLINED_FUNCTION_22_34(), lpta_loadp_setscan_l(v10, v11)) || (OUTLINED_FUNCTION_48_17(), test_string_s()))
        {
LABEL_11:
          v12 = OUTLINED_FUNCTION_55_17();
          lpta_rpta_loadp(v12, v13, v14);
          v15 = OUTLINED_FUNCTION_48_17();
          if (!setd_lookup(v15, v16, 479))
          {
            break;
          }

LABEL_12:
          v17 = OUTLINED_FUNCTION_49_17();
          starttest(v17, v18);
          v19 = OUTLINED_FUNCTION_44_20();
          v21 = lpta_loadp_setscan_l(v19, v20);
          v22 = v7;
          if (!v21)
          {
LABEL_40:
            v7 = v22;
            bspush_ca_scan(v1, 8);
            v73 = OUTLINED_FUNCTION_35_26();
            goto LABEL_41;
          }

LABEL_13:
          v23 = OUTLINED_FUNCTION_55_17();
          lpta_rpta_loadp(v23, v24, v25);
          v26 = OUTLINED_FUNCTION_48_17();
          if (!setd_lookup(v26, v27, 478))
          {
            break;
          }

LABEL_14:
          v28 = OUTLINED_FUNCTION_22_34();
          if (lpta_loadp_setscan_l(v28, v29) || (OUTLINED_FUNCTION_48_17(), test_string_s()) || (OUTLINED_FUNCTION_117_7(), v30 ^ v31) || lpta_loadp_setscan_l(v1, v1 + 4008) || advance_tok(v1) || (OUTLINED_FUNCTION_14_41(), test_string_i()))
          {
LABEL_20:
            v32 = OUTLINED_FUNCTION_100_8();
            starttest(v32, v33);
            v34 = OUTLINED_FUNCTION_22_34();
            if (!lpta_loadp_setscan_l(v34, v35))
            {
              OUTLINED_FUNCTION_48_17();
              v36 = test_string_s();
              v37 = v7;
              if (!v36)
              {
LABEL_223:
                v7 = v37;
                v379 = OUTLINED_FUNCTION_43_20();
                savescptr(v379, v380, v382);
                bspush_ca(v1);
                OUTLINED_FUNCTION_117_7();
                if (v30 == v31)
                {
                  break;
                }

                goto LABEL_43;
              }
            }

LABEL_22:
            starttest(v1, 17);
            v38 = OUTLINED_FUNCTION_44_20();
            if (lpta_loadp_setscan_l(v38, v39))
            {
LABEL_23:
              v40 = OUTLINED_FUNCTION_101_8();
              starttest(v40, v41);
              v42 = OUTLINED_FUNCTION_22_34();
              if (!lpta_loadp_setscan_l(v42, v43))
              {
                OUTLINED_FUNCTION_48_17();
                if (!test_string_s())
                {
                  OUTLINED_FUNCTION_109_7();
                  bspush_ca_boa();
                  v63 = OUTLINED_FUNCTION_22_34();
                  if (!lpta_loadp_setscan_r(v63, v64))
                  {
                    v65 = OUTLINED_FUNCTION_92_10();
                    bspush_ca_scan(v65, v66);
                    *(v1 + 136) = 1;
                    v67 = *(v1 + 1344);
                    v68 = OUTLINED_FUNCTION_7_43();
                    if (!test_ptr(v68))
                    {
LABEL_37:
                      v7 = 1;
                    }
                  }

                  goto LABEL_43;
                }
              }

LABEL_25:
              v44 = OUTLINED_FUNCTION_94_9();
              starttest(v44, v45);
              v46 = OUTLINED_FUNCTION_22_34();
              if (lpta_loadp_setscan_l(v46, v47) || (OUTLINED_FUNCTION_48_17(), test_string_s()))
              {
LABEL_27:
                v48 = OUTLINED_FUNCTION_93_9();
                starttest(v48, v49);
                v50 = OUTLINED_FUNCTION_22_34();
                if (lpta_loadp_setscan_l(v50, v51))
                {
                  break;
                }

                v52 = OUTLINED_FUNCTION_82_12();
                bspush_ca_scan(v52, v53);
                v54 = OUTLINED_FUNCTION_102_8();
                bspush_ca_scan(v54, v55);
                OUTLINED_FUNCTION_48_17();
                v56 = test_string_s();
                v57 = v7;
                if (!v56)
                {
LABEL_29:
                  v7 = v57;
                  v58 = OUTLINED_FUNCTION_48_17();
                  if (!testFldeq(v58, v59, 4, 1) && !advance_tok(v1))
                  {
                    break;
                  }
                }

LABEL_43:
                v77 = v7;
LABEL_44:
                v78 = *(v1 + 104);
                if (v78)
                {
                  v79 = OUTLINED_FUNCTION_53_17(v78);
                  v7 = v80;
                }

                else
                {
                  v79 = vback(v1, v77);
                  v7 = 0;
                }

                v22 = v7;
                v62 = v7;
                v57 = v7;
                switch(v79)
                {
                  case 1:
                    continue;
                  case 3:
                    goto LABEL_11;
                  case 4:
                    goto LABEL_12;
                  case 5:
                    goto LABEL_13;
                  case 6:
                    goto LABEL_40;
                  case 7:
                    bspop_boa(v1);
                    v81 = advance_tok(v1);
                    v22 = v7;
                    v77 = v7;
                    if (!v81)
                    {
                      goto LABEL_40;
                    }

                    goto LABEL_44;
                  case 8:
                    OUTLINED_FUNCTION_28_30();
                    bspush_ca_scan_boa();
                    v91 = OUTLINED_FUNCTION_10_42();
                    goto LABEL_139;
                  case 9:
                    goto LABEL_14;
                  case 10:
                    goto LABEL_20;
                  case 11:
                    goto LABEL_22;
                  case 12:
                    v37 = v7;
                    goto LABEL_223;
                  case 13:
                    v88 = OUTLINED_FUNCTION_39_22();
                    v90 = lpta_loadp_setscan_l(v88, v89);
                    v77 = v7;
                    if (v90)
                    {
                      goto LABEL_44;
                    }

                    OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan_boa();
                    v91 = OUTLINED_FUNCTION_3_45();
LABEL_139:
                    v164 = 1;
                    goto LABEL_140;
                  case 15:
                    bspop_boa(v1);
                    OUTLINED_FUNCTION_25_32();
                    bspush_ca_scan_boa();
                    v91 = OUTLINED_FUNCTION_15_40();
                    v164 = 19;
                    goto LABEL_140;
                  case 16:
                    bspop_boa(v1);
                    goto LABEL_195;
                  case 17:
                    goto LABEL_23;
                  case 18:
                    v302 = OUTLINED_FUNCTION_10_42();
                    v305 = testFldeq(v302, v303, v304, 2);
                    v77 = v7;
                    if (v305)
                    {
                      goto LABEL_44;
                    }

                    OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan_boa();
                    v306 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v306, v307);
                    v199 = OUTLINED_FUNCTION_46_19();
                    v202 = 24;
                    goto LABEL_215;
                  case 19:
                    goto LABEL_33;
                  case 20:
                    bspop_boa(v1);
                    v180 = advance_tok(v1);
                    v62 = v7;
                    v77 = v7;
                    if (!v180)
                    {
                      goto LABEL_33;
                    }

                    goto LABEL_44;
                  case 21:
                    v371 = OUTLINED_FUNCTION_81_12();
                    bspush_ca_scan(v371, v372);
                    v199 = OUTLINED_FUNCTION_46_19();
                    v202 = 23;
                    goto LABEL_215;
                  case 22:
                  case 55:
                  case 120:
                    goto LABEL_217;
                  case 23:
                    v358 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v358, v359);
                    v199 = OUTLINED_FUNCTION_46_19();
                    v202 = 20;
                    goto LABEL_215;
                  case 24:
                    v230 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v230, v231);
                    v199 = OUTLINED_FUNCTION_46_19();
                    v202 = 14;
                    goto LABEL_215;
                  case 25:
                    v199 = OUTLINED_FUNCTION_46_19();
                    v202 = 10;
LABEL_215:
                    v357 = testFldeq(v199, v200, v201, v202);
                    goto LABEL_216;
                  case 26:
                    goto LABEL_25;
                  case 27:
                    bspop_boa(v1);
                    goto LABEL_3;
                  case 28:
                    v165 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v165, v166);
                    OUTLINED_FUNCTION_2_46();
                    goto LABEL_212;
                  case 29:
                    goto LABEL_37;
                  case 30:
                    v348 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v348, v349);
                    goto LABEL_211;
                  case 31:
                    v82 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v82, v83);
                    OUTLINED_FUNCTION_5_44();
                    goto LABEL_212;
                  case 32:
LABEL_211:
                    OUTLINED_FUNCTION_4_44();
LABEL_212:
                    v370 = test_string_s();
                    v77 = v7;
                    if (!v370)
                    {
                      goto LABEL_37;
                    }

                    goto LABEL_44;
                  case 33:
                    goto LABEL_27;
                  case 34:
                    v126 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v126, v127);
                    v128 = OUTLINED_FUNCTION_0_47();
                    v132 = testFldeq(v128, v129, v130, v131);
                    v77 = v7;
                    if (v132)
                    {
                      goto LABEL_44;
                    }

                    v133 = OUTLINED_FUNCTION_15_40();
                    v136 = 19;
                    goto LABEL_65;
                  case 36:
                    v360 = OUTLINED_FUNCTION_0_47();
                    v364 = testFldeq(v360, v361, v362, v363);
                    v77 = v7;
                    if (v364)
                    {
                      goto LABEL_44;
                    }

                    v365 = OUTLINED_FUNCTION_15_40();
                    v368 = testFldeq(v365, v366, v367, 13);
                    v77 = v7;
                    if (v368)
                    {
                      goto LABEL_44;
                    }

                    v369 = advance_tok(v1);
                    v77 = v7;
                    if (v369)
                    {
                      goto LABEL_44;
                    }

                    v133 = OUTLINED_FUNCTION_1_46();
LABEL_65:
                    v137 = testFldeq(v133, v134, v135, v136);
                    v77 = v7;
                    if (!v137)
                    {
                      v138 = advance_tok(v1);
                      v77 = v7;
                      if (!v138)
                      {
                        goto LABEL_3;
                      }
                    }

                    goto LABEL_44;
                  case 38:
                    v145 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v145, v146);
                    OUTLINED_FUNCTION_2_46();
                    v147 = test_string_s();
                    v77 = v7;
                    if (v147)
                    {
                      goto LABEL_44;
                    }

                    v148 = OUTLINED_FUNCTION_1_46();
                    v152 = testFldeq(v148, v149, v150, v151);
                    v77 = v7;
                    if (v152)
                    {
                      goto LABEL_44;
                    }

                    v153 = advance_tok(v1);
                    v77 = v7;
                    if (v153)
                    {
                      goto LABEL_44;
                    }

                    OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan_boa();
                    v154 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v154, v155);
                    goto LABEL_185;
                  case 39:
                    OUTLINED_FUNCTION_2_46();
                    v265 = test_string_s();
                    v57 = v7;
                    v77 = v7;
                    if (!v265)
                    {
                      goto LABEL_29;
                    }

                    goto LABEL_44;
                  case 40:
                    goto LABEL_29;
                  case 42:
                    v275 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v275, v276);
                    v277 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v277, v278);
                    OUTLINED_FUNCTION_2_46();
                    v279 = test_string_s();
                    v77 = v7;
                    if (v279)
                    {
                      goto LABEL_44;
                    }

                    v280 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v280, v281);
                    goto LABEL_146;
                  case 43:
                  case 63:
                  case 118:
                    bspop_boa(v1);
                    goto LABEL_3;
                  case 44:
LABEL_185:
                    OUTLINED_FUNCTION_2_46();
                    v334 = test_string_s();
                    v77 = v7;
                    if (!v334)
                    {
                      goto LABEL_186;
                    }

                    goto LABEL_44;
                  case 45:
LABEL_186:
                    v335 = OUTLINED_FUNCTION_1_46();
                    v339 = testFldeq(v335, v336, v337, v338);
                    v77 = v7;
                    if (v339)
                    {
                      goto LABEL_44;
                    }

                    v125 = advance_tok(v1);
                    goto LABEL_201;
                  case 46:
                    v84 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v84, v85);
                    OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan_boa();
                    v86 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v86, v87);
                    goto LABEL_204;
                  case 47:
                    v266 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v266, v267);
                    goto LABEL_144;
                  case 48:
                  case 51:
                    goto LABEL_146;
                  case 49:
                  case 50:
                  case 73:
                  case 86:
                  case 93:
                  case 97:
                  case 105:
                  case 109:
                  case 125:
                  case 129:
                  case 135:
                  case 141:
                  case 150:
                  case 153:
                  case 156:
                    goto LABEL_181;
                  case 52:
                    v94 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v94, v95);
                    OUTLINED_FUNCTION_4_44();
                    v96 = test_string_s();
                    v77 = v7;
                    if (v96)
                    {
                      goto LABEL_44;
                    }

                    v97 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v97, v98);
                    goto LABEL_56;
                  case 53:
                    bspop_boa(v1);
                    goto LABEL_198;
                  case 54:
LABEL_204:
                    OUTLINED_FUNCTION_3_45();
                    goto LABEL_205;
                  case 56:
                    goto LABEL_198;
                  case 57:
                    v309 = OUTLINED_FUNCTION_0_47();
                    v313 = testFldeq(v309, v310, v311, v312);
                    v77 = v7;
                    if (v313)
                    {
                      goto LABEL_44;
                    }

                    v314 = advance_tok(v1);
                    v77 = v7;
                    if (v314)
                    {
                      goto LABEL_44;
                    }

LABEL_198:
                    v350 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v350, v351);
                    OUTLINED_FUNCTION_2_46();
                    v352 = test_string_s();
                    v77 = v7;
                    if (v352)
                    {
                      goto LABEL_44;
                    }

                    OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan_boa();
LABEL_200:
                    v353 = OUTLINED_FUNCTION_19_37();
                    v125 = test_synch(v353, v354, v355, v356);
                    goto LABEL_201;
                  case 58:
                    bspop_boa(v1);
                    goto LABEL_181;
                  case 59:
                    goto LABEL_200;
                  case 60:
                  case 67:
                    v326 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v326, v327);
                    v328 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v328, v329);
                    goto LABEL_178;
                  case 61:
LABEL_56:
                    OUTLINED_FUNCTION_2_46();
                    v99 = test_string_s();
                    v77 = v7;
                    if (!v99)
                    {
                      goto LABEL_57;
                    }

                    goto LABEL_44;
                  case 62:
LABEL_57:
                    v100 = savetok(v1, v383);
                    v77 = v7;
                    if (v100)
                    {
                      goto LABEL_44;
                    }

                    v101 = OUTLINED_FUNCTION_0_47();
                    v105 = testFldeq(v101, v102, v103, v104);
                    v77 = v7;
                    if (v105)
                    {
                      goto LABEL_44;
                    }

                    v106 = advance_tok(v1);
                    v77 = v7;
                    if (v106)
                    {
                      goto LABEL_44;
                    }

                    OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan_boa();
                    v107 = OUTLINED_FUNCTION_15_40();
                    v110 = npush_fld(v107, v108, v109);
                    v77 = v7;
                    if (v110)
                    {
                      goto LABEL_44;
                    }

                    v111 = advance_tok(v1);
                    v77 = v7;
                    if (v111)
                    {
                      goto LABEL_44;
                    }

                    WORD1(v383[0]) = 0;
                    npush_vf(v1, v383, v112, v113, v114, v115, v116, v117);
                    v125 = if_testeq(v1, v118, v119, v120, v121, v122, v123, v124);
                    goto LABEL_201;
                  case 64:
                    v211 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v211, v212);
                    goto LABEL_106;
                  case 65:
                  case 68:
                    v143 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v143, v144);
                    goto LABEL_178;
                  case 66:
                  case 128:
                  case 144:
                  case 146:
                  case 147:
                  case 148:
                    goto LABEL_180;
                  case 69:
                    OUTLINED_FUNCTION_4_44();
                    v245 = test_string_s();
                    v77 = v7;
                    if (v245)
                    {
                      goto LABEL_44;
                    }

                    goto LABEL_178;
                  case 70:
LABEL_178:
                    OUTLINED_FUNCTION_2_46();
                    goto LABEL_179;
                  case 71:
                    v315 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v315, v316);
                    goto LABEL_172;
                  case 72:
LABEL_172:
                    OUTLINED_FUNCTION_4_44();
LABEL_179:
                    v330 = test_string_s();
                    v77 = v7;
                    if (!v330)
                    {
                      goto LABEL_180;
                    }

                    goto LABEL_44;
                  case 75:
                  case 76:
                  case 94:
                  case 126:
                    v297 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v297, v298);
                    OUTLINED_FUNCTION_3_45();
                    goto LABEL_182;
                  case 77:
                    v139 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v139, v140);
                    v141 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v141, v142);
                    OUTLINED_FUNCTION_2_46();
                    goto LABEL_190;
                  case 78:
                    v187 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v187, v188);
                    v189 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v189, v190);
LABEL_106:
                    OUTLINED_FUNCTION_5_44();
                    goto LABEL_192;
                  case 79:
                    v340 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v340, v341);
                    goto LABEL_189;
                  case 80:
                  case 83:
                    goto LABEL_191;
                  case 81:
LABEL_189:
                    OUTLINED_FUNCTION_4_44();
LABEL_190:
                    v342 = test_string_s();
                    v77 = v7;
                    if (v342)
                    {
                      goto LABEL_44;
                    }

LABEL_191:
                    OUTLINED_FUNCTION_4_44();
LABEL_192:
                    v240 = test_string_s();
                    goto LABEL_193;
                  case 82:
                    v246 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v246, v247);
                    OUTLINED_FUNCTION_4_44();
                    v248 = test_string_s();
                    v77 = v7;
                    if (v248)
                    {
                      goto LABEL_44;
                    }

                    goto LABEL_180;
                  case 84:
                    goto LABEL_194;
                  case 85:
                    v249 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v249, v250);
                    OUTLINED_FUNCTION_2_46();
                    v251 = test_string_s();
                    v77 = v7;
                    if (v251)
                    {
                      goto LABEL_44;
                    }

                    v252 = OUTLINED_FUNCTION_0_47();
                    v256 = testFldeq(v252, v253, v254, v255);
                    v77 = v7;
                    if (v256)
                    {
                      goto LABEL_44;
                    }

                    OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan_boa();
                    v91 = OUTLINED_FUNCTION_15_40();
                    v164 = 24;
                    goto LABEL_140;
                  case 88:
                  case 91:
                  case 115:
                    goto LABEL_153;
                  case 89:
                    bspop_boa(v1);
                    v226 = advance_tok(v1);
                    v77 = v7;
                    if (v226)
                    {
                      goto LABEL_44;
                    }

                    goto LABEL_181;
                  case 90:
                    v269 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v269, v270);
                    v271 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v271, v272);
LABEL_146:
                    OUTLINED_FUNCTION_2_46();
                    goto LABEL_147;
                  case 92:
LABEL_144:
                    OUTLINED_FUNCTION_4_44();
LABEL_147:
                    v273 = test_string_s();
                    v77 = v7;
                    if (!v273)
                    {
                      goto LABEL_181;
                    }

                    goto LABEL_44;
                  case 95:
                    v299 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v299, v300);
                    OUTLINED_FUNCTION_4_44();
                    v301 = test_string_s();
                    v77 = v7;
                    if (v301)
                    {
                      goto LABEL_44;
                    }

                    goto LABEL_180;
                  case 96:
                    v289 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v289, v290);
                    goto LABEL_158;
                  case 99:
                    v167 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v167, v168);
                    goto LABEL_81;
                  case 100:
LABEL_158:
                    v291 = OUTLINED_FUNCTION_0_47();
                    v295 = testFldeq(v291, v292, v293, v294);
                    v77 = v7;
                    if (!v295)
                    {
                      v296 = advance_tok(v1);
                      v77 = v7;
                      if (!v296)
                      {
                        goto LABEL_85;
                      }
                    }

                    goto LABEL_44;
                  case 101:
                    v317 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v317, v318);
                    OUTLINED_FUNCTION_2_46();
                    v319 = test_string_s();
                    v77 = v7;
                    if (v319)
                    {
                      goto LABEL_44;
                    }

                    v320 = OUTLINED_FUNCTION_0_47();
                    v324 = testFldeq(v320, v321, v322, v323);
                    v77 = v7;
                    if (v324)
                    {
                      goto LABEL_44;
                    }

                    v325 = advance_tok(v1);
                    v77 = v7;
                    if (v325)
                    {
                      goto LABEL_44;
                    }

                    goto LABEL_181;
                  case 102:
LABEL_81:
                    v169 = OUTLINED_FUNCTION_0_47();
                    v173 = testFldeq(v169, v170, v171, v172);
                    v77 = v7;
                    if (!v173)
                    {
                      v174 = advance_tok(v1);
                      v77 = v7;
                      if (!v174)
                      {
                        goto LABEL_85;
                      }
                    }

                    goto LABEL_44;
                  case 103:
                    v223 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v223, v224);
                    OUTLINED_FUNCTION_4_44();
                    v225 = test_string_s();
                    v77 = v7;
                    if (v225)
                    {
                      goto LABEL_44;
                    }

                    goto LABEL_180;
                  case 104:
                    v203 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v203, v204);
                    OUTLINED_FUNCTION_2_46();
                    v205 = test_string_s();
                    v77 = v7;
                    if (v205)
                    {
                      goto LABEL_44;
                    }

                    v206 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v206, v207);
                    goto LABEL_166;
                  case 107:
                    v175 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v175, v176);
                    OUTLINED_FUNCTION_2_46();
                    v177 = test_string_s();
                    v77 = v7;
                    if (v177)
                    {
                      goto LABEL_44;
                    }

                    goto LABEL_85;
                  case 108:
LABEL_166:
                    OUTLINED_FUNCTION_2_46();
                    v308 = test_string_s();
                    v77 = v7;
                    if (!v308)
                    {
                      goto LABEL_181;
                    }

                    goto LABEL_44;
                  case 110:
                    v156 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v156, v157);
                    goto LABEL_75;
                  case 111:
                    OUTLINED_FUNCTION_2_46();
                    v268 = test_string_s();
                    v77 = v7;
                    if (v268)
                    {
                      goto LABEL_44;
                    }

                    goto LABEL_143;
                  case 112:
                  case 154:
                    goto LABEL_143;
                  case 113:
                    v213 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v213, v214);
                    v215 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v215, v216);
                    OUTLINED_FUNCTION_2_46();
                    v217 = test_string_s();
                    v77 = v7;
                    if (v217)
                    {
                      goto LABEL_44;
                    }

                    goto LABEL_108;
                  case 114:
LABEL_75:
                    v158 = OUTLINED_FUNCTION_0_47();
                    v162 = testFldeq(v158, v159, v160, v161);
                    v77 = v7;
                    if (!v162)
                    {
                      v163 = advance_tok(v1);
                      v77 = v7;
                      if (!v163)
                      {
                        goto LABEL_85;
                      }
                    }

                    goto LABEL_44;
                  case 116:
LABEL_108:
                    v218 = OUTLINED_FUNCTION_0_47();
                    v222 = testFldeq(v218, v219, v220, v221);
                    v77 = v7;
                    if (v222)
                    {
                      goto LABEL_44;
                    }

                    OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan_boa();
                    v91 = OUTLINED_FUNCTION_15_40();
                    v164 = 26;
LABEL_140:
                    v125 = testFldeq(v91, v92, v93, v164);
                    goto LABEL_201;
                  case 117:
                    bspop_boa(v1);
                    v181 = advance_tok(v1);
                    v77 = v7;
                    if (v181)
                    {
                      goto LABEL_44;
                    }

                    v182 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v182, v183);
                    OUTLINED_FUNCTION_4_44();
                    v184 = test_string_s();
                    v77 = v7;
                    if (v184)
                    {
                      goto LABEL_44;
                    }

                    OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan_boa();
                    v185 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v185, v186);
                    goto LABEL_88;
                  case 119:
LABEL_88:
                    OUTLINED_FUNCTION_2_46();
LABEL_205:
                    v357 = test_string_s();
LABEL_216:
                    v77 = v7;
                    if (!v357)
                    {
LABEL_217:
                      v77 = 1;
                    }

                    goto LABEL_44;
                  case 121:
                    v191 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v191, v192);
                    OUTLINED_FUNCTION_5_44();
                    v193 = test_string_s();
                    v77 = v7;
                    if (v193)
                    {
                      goto LABEL_44;
                    }

LABEL_153:
                    v282 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v282, v283);
                    OUTLINED_FUNCTION_5_44();
                    goto LABEL_182;
                  case 122:
                    v194 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v194, v195);
                    OUTLINED_FUNCTION_2_46();
                    v196 = test_string_s();
                    v77 = v7;
                    if (v196)
                    {
                      goto LABEL_44;
                    }

                    v197 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v197, v198);
                    goto LABEL_149;
                  case 123:
                  case 131:
                  case 149:
LABEL_85:
                    v178 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v178, v179);
LABEL_143:
                    OUTLINED_FUNCTION_4_44();
                    goto LABEL_182;
                  case 127:
LABEL_149:
                    OUTLINED_FUNCTION_2_46();
                    v274 = test_string_s();
                    v77 = v7;
                    if (!v274)
                    {
                      goto LABEL_180;
                    }

                    goto LABEL_44;
                  case 132:
                    v284 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v284, v285);
                    v286 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v286, v287);
                    OUTLINED_FUNCTION_3_45();
                    goto LABEL_155;
                  case 133:
                    v227 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v227, v228);
                    OUTLINED_FUNCTION_4_44();
                    v229 = test_string_s();
                    v77 = v7;
                    if (v229)
                    {
                      goto LABEL_44;
                    }

                    OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan_boa();
                    OUTLINED_FUNCTION_4_44();
                    v125 = test_string_s();
LABEL_201:
                    if (v125)
                    {
                      v77 = v7;
                    }

                    else
                    {
                      v77 = 1;
                    }

                    goto LABEL_44;
                  case 134:
                    while (1)
                    {
                      v375 = OUTLINED_FUNCTION_0_47();
                      if (testFldeq(v375, v376, v377, v378) || advance_tok(v1))
                      {
                        break;
                      }

                      v373 = OUTLINED_FUNCTION_37_23();
                      bspush_ca_scan(v373, v374);
                    }

                    goto LABEL_43;
                  case 136:
                  case 152:
                    OUTLINED_FUNCTION_2_46();
                    goto LABEL_155;
                  case 137:
                    v257 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v257, v258);
                    v259 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v259, v260);
                    OUTLINED_FUNCTION_2_46();
                    goto LABEL_130;
                  case 138:
                    bspop_boa(v1);
                    goto LABEL_194;
                  case 139:
                    v232 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v232, v233);
                    OUTLINED_FUNCTION_5_44();
                    v234 = test_string_s();
                    v77 = v7;
                    if (v234)
                    {
                      goto LABEL_44;
                    }

                    v235 = OUTLINED_FUNCTION_0_47();
                    v239 = testFldeq(v235, v236, v237, v238);
                    v77 = v7;
                    if (v239)
                    {
                      goto LABEL_44;
                    }

                    v240 = advance_tok(v1);
LABEL_193:
                    v77 = v7;
                    if (v240)
                    {
                      goto LABEL_44;
                    }

LABEL_194:
                    v343 = OUTLINED_FUNCTION_0_47();
                    v347 = testFldeq(v343, v344, v345, v346);
                    v77 = v7;
                    if (v347)
                    {
                      goto LABEL_44;
                    }

LABEL_195:
                    v333 = advance_tok(v1);
                    goto LABEL_183;
                  case 140:
                    OUTLINED_FUNCTION_5_44();
LABEL_130:
                    v261 = test_string_s();
                    v77 = v7;
                    if (!v261)
                    {
                      goto LABEL_181;
                    }

                    goto LABEL_44;
                  case 142:
                    v208 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v208, v209);
                    OUTLINED_FUNCTION_4_44();
                    v210 = test_string_s();
                    v77 = v7;
                    if (v210)
                    {
                      goto LABEL_44;
                    }

                    goto LABEL_180;
                  case 143:
                    v262 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v262, v263);
                    OUTLINED_FUNCTION_5_44();
                    v264 = test_string_s();
                    v77 = v7;
                    if (v264)
                    {
                      goto LABEL_44;
                    }

LABEL_180:
                    v331 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v331, v332);
                    goto LABEL_181;
                  case 151:
                    v241 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v241, v242);
                    v243 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v243, v244);
                    OUTLINED_FUNCTION_4_44();
                    goto LABEL_155;
                  case 155:
                    OUTLINED_FUNCTION_5_44();
LABEL_155:
                    v288 = test_string_s();
                    v77 = v7;
                    if (v288)
                    {
                      goto LABEL_44;
                    }

LABEL_181:
                    OUTLINED_FUNCTION_2_46();
LABEL_182:
                    v333 = test_string_s();
LABEL_183:
                    v77 = v7;
                    if (!v333)
                    {
                      goto LABEL_3;
                    }

                    goto LABEL_44;
                  default:
                    goto LABEL_3;
                }
              }

              v69 = OUTLINED_FUNCTION_86_11();
              bspush_ca_scan(v69, v70);
              v71 = OUTLINED_FUNCTION_48_17();
              if (testFldeq(v71, v72, 4, 2))
              {
                goto LABEL_43;
              }

              v73 = OUTLINED_FUNCTION_48_17();
              v76 = 24;
LABEL_41:
              if (!testFldeq(v73, v74, v75, v76) && !advance_tok(v1))
              {
                break;
              }

              goto LABEL_43;
            }

            v60 = OUTLINED_FUNCTION_110_7();
            bspush_ca_scan(v60, v61);
            v62 = v7;
LABEL_33:
            v7 = v62;
            OUTLINED_FUNCTION_46_19();
            if (test_string_s())
            {
              goto LABEL_43;
            }
          }
        }

        break;
      }
    }
  }

LABEL_3:
  vretproc(v1);
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_87_11();
}

void heavy_syllable()
{
  OUTLINED_FUNCTION_88_11();
  OUTLINED_FUNCTION_108_7();
  v164 = *MEMORY[0x277D85DE8];
  v151 = 0;
  v152 = 0;
  v149 = 0;
  v150 = 0;
  v146 = 0;
  v147 = 0;
  v148 = 0;
  OUTLINED_FUNCTION_52_17();
  bzero(v123, v1);
  OUTLINED_FUNCTION_51_17();
  bzero(v163, v2);
  v3 = setjmp(v163);
  if (v3 || OUTLINED_FUNCTION_107_8(v3, v4, v5, v6, v7, v8, v9, v10, v121, v122, v123[0], v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163[0]))
  {
    goto LABEL_8;
  }

  v11 = OUTLINED_FUNCTION_34_27();
  get_parm(v11, v12, v13, -6);
  push_ptr_init(v0, &v149);
  BYTE4(v148) = 0;
  LODWORD(v148) = 0;
  LODWORD(v146) = -65535;
  fence_46(v0, &_MergedGlobals_39);
  v14 = OUTLINED_FUNCTION_37_23();
  starttest(v14, v15);
  v16 = OUTLINED_FUNCTION_18_37();
  v18 = 0;
  v19 = 0;
  if (!lpta_loadp_setscan_l(v16, v17))
  {
LABEL_9:
    v25 = OUTLINED_FUNCTION_119_7();
    savescptr(v25, v26, v27);
    OUTLINED_FUNCTION_48_17();
    if (test_string_s())
    {
      goto LABEL_19;
    }

    v28 = OUTLINED_FUNCTION_62_16();
    if (lpta_loadp_setscan_r(v28, v29))
    {
      goto LABEL_19;
    }

    v30 = OUTLINED_FUNCTION_10_42();
    if (testFldeq(v30, v31, v32, 2))
    {
      goto LABEL_19;
    }

    v33 = advance_tok(v0);
    v34 = v18;
    if (v33)
    {
      goto LABEL_19;
    }

LABEL_15:
    v18 = v34;
    v35 = OUTLINED_FUNCTION_19_37();
    if (chstream(v35, v36, v37))
    {
      goto LABEL_19;
    }

    OUTLINED_FUNCTION_4_44();
    if (test_string_s())
    {
      goto LABEL_19;
    }

    goto LABEL_8;
  }

  while (2)
  {
    v20 = OUTLINED_FUNCTION_37_23();
    starttest(v20, v21);
    v22 = OUTLINED_FUNCTION_39_22();
    if (!lpta_loadp_setscan_r(v22, v23))
    {
      OUTLINED_FUNCTION_23_34();
      bspush_ca_scan_boa();
      OUTLINED_FUNCTION_4_44();
      if (test_string_s())
      {
        v18 = v19;
      }

      else
      {
        v18 = 1;
      }

      goto LABEL_19;
    }

LABEL_53:
    v77 = OUTLINED_FUNCTION_28_30();
    starttest(v77, v78);
    v79 = OUTLINED_FUNCTION_62_16();
    if (lpta_loadp_setscan_l(v79, v80))
    {
      v18 = v19;
LABEL_55:
      v81 = OUTLINED_FUNCTION_37_23();
      starttest(v81, v82);
      v83 = OUTLINED_FUNCTION_62_16();
      v76 = v18;
      if (lpta_loadp_setscan_l(v83, v84))
      {
LABEL_56:
        v85 = OUTLINED_FUNCTION_37_23();
        starttest(v85, v86);
        v87 = OUTLINED_FUNCTION_62_16();
        if (!lpta_loadp_setscan_l(v87, v88))
        {
          v115 = OUTLINED_FUNCTION_10_42();
          if (testFldeq(v115, v116, v117, 1))
          {
            goto LABEL_19;
          }

          if (advance_tok(v0))
          {
            goto LABEL_19;
          }

          v118 = OUTLINED_FUNCTION_10_42();
          if (testFldeq(v118, v119, v120, 1) || advance_tok(v0))
          {
            goto LABEL_19;
          }

          break;
        }

LABEL_57:
        v76 = v18;
        v89 = OUTLINED_FUNCTION_37_23();
        starttest(v89, v90);
        v91 = OUTLINED_FUNCTION_62_16();
        if (lpta_loadp_setscan_l(v91, v92))
        {
          break;
        }

LABEL_58:
        v93 = OUTLINED_FUNCTION_119_7();
        savescptr(v93, v94, v95);
        OUTLINED_FUNCTION_10_42();
        if (test_string_s())
        {
          goto LABEL_69;
        }

        v96 = OUTLINED_FUNCTION_62_16();
        if (lpta_loadp_setscan_r(v96, v97))
        {
          goto LABEL_69;
        }

        OUTLINED_FUNCTION_10_42();
        if (test_string_s())
        {
          goto LABEL_69;
        }
      }

      else
      {
LABEL_65:
        v104 = OUTLINED_FUNCTION_119_7();
        savescptr(v104, v105, v106);
        v107 = OUTLINED_FUNCTION_10_42();
        if (testFldeq(v107, v108, v109, 1))
        {
          goto LABEL_69;
        }

        if (advance_tok(v0))
        {
          goto LABEL_69;
        }

        v110 = OUTLINED_FUNCTION_62_16();
        if (lpta_loadp_setscan_r(v110, v111))
        {
          goto LABEL_69;
        }
      }

      v112 = OUTLINED_FUNCTION_10_42();
      if (testFldeq(v112, v113, v114, 1))
      {
LABEL_69:
        v18 = v76;
        goto LABEL_19;
      }

      v18 = v76;
      if (advance_tok(v0))
      {
        goto LABEL_19;
      }
    }

    else
    {
      v98 = OUTLINED_FUNCTION_27_31();
      bspush_ca_scan(v98, v99);
      v100 = OUTLINED_FUNCTION_37_23();
      bspush_ca_scan(v100, v101);
      OUTLINED_FUNCTION_10_42();
      v18 = v19;
      if (test_string_s())
      {
        goto LABEL_19;
      }

LABEL_63:
      v18 = v19;
      v102 = OUTLINED_FUNCTION_26_32();
      bspush_ca_scan(v102, v103);
      OUTLINED_FUNCTION_10_42();
      if (test_string_s())
      {
LABEL_19:
        v38 = v18;
LABEL_20:
        v39 = v0[13];
        if (v39)
        {
          v40 = OUTLINED_FUNCTION_53_17(v39);
          v18 = v41;
        }

        else
        {
          v40 = vback(v0, v38);
          v18 = 0;
        }

        switch(v40)
        {
          case 1:
            v19 = v18;
            continue;
          case 2:
            goto LABEL_9;
          case 3:
            v34 = v18;
            goto LABEL_15;
          case 4:
            v19 = v18;
            goto LABEL_53;
          case 5:
            bspop_boa(v0);
            v42 = OUTLINED_FUNCTION_0_47();
            v46 = testFldeq(v42, v43, v44, v45);
            v38 = v18;
            if (!v46)
            {
              v47 = advance_tok(v0);
              v38 = v18;
              if (!v47)
              {
                v48 = OUTLINED_FUNCTION_122_7();
                v50 = savetok(v48, v49);
                v38 = v18;
                if (!v50)
                {
                  v51 = advance_tok(v0);
                  v38 = v18;
                  if (!v51)
                  {
                    v52 = savetok(v0, &v146);
                    v38 = v18;
                    if (!v52)
                    {
                      v53 = OUTLINED_FUNCTION_122_7();
                      v55 = testeq_tvars(v53, v54, &v146);
                      v38 = v18;
                      if (!v55)
                      {
                        OUTLINED_FUNCTION_82_12();
                        bspush_ca_scan_boa();
                        OUTLINED_FUNCTION_2_46();
                        if (test_string_s())
                        {
                          v38 = v18;
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

            goto LABEL_20;
          case 6:
            bspop_boa(v0);
            goto LABEL_8;
          case 7:
            goto LABEL_55;
          case 8:
            bspush_ca_scan(v0, 15);
            OUTLINED_FUNCTION_10_42();
            goto LABEL_44;
          case 9:
            v19 = v18;
            goto LABEL_63;
          case 10:
            v72 = OUTLINED_FUNCTION_74_12();
            bspush_ca_scan(v72, v73);
            OUTLINED_FUNCTION_10_42();
            goto LABEL_44;
          case 12:
            v74 = OUTLINED_FUNCTION_95_9();
            bspush_ca_scan(v74, v75);
            OUTLINED_FUNCTION_10_42();
            goto LABEL_44;
          case 13:
            v58 = OUTLINED_FUNCTION_35_26();
            v62 = testFldeq(v58, v59, v60, v61);
            v38 = v18;
            if (v62)
            {
              goto LABEL_20;
            }

            v63 = advance_tok(v0);
            goto LABEL_45;
          case 15:
            v66 = OUTLINED_FUNCTION_103_8();
            bspush_ca_scan(v66, v67);
            OUTLINED_FUNCTION_10_42();
            goto LABEL_44;
          case 16:
            v70 = OUTLINED_FUNCTION_49_17();
            bspush_ca_scan(v70, v71);
            OUTLINED_FUNCTION_10_42();
            goto LABEL_44;
          case 17:
            v56 = OUTLINED_FUNCTION_100_8();
            bspush_ca_scan(v56, v57);
            OUTLINED_FUNCTION_10_42();
            goto LABEL_44;
          case 18:
            v64 = OUTLINED_FUNCTION_66_15();
            bspush_ca_scan(v64, v65);
            OUTLINED_FUNCTION_10_42();
            goto LABEL_44;
          case 19:
            v68 = OUTLINED_FUNCTION_42_21();
            bspush_ca_scan(v68, v69);
            OUTLINED_FUNCTION_10_42();
            goto LABEL_44;
          case 20:
            OUTLINED_FUNCTION_10_42();
LABEL_44:
            v63 = test_string_s();
LABEL_45:
            v38 = v18;
            if (!v63)
            {
              goto LABEL_8;
            }

            goto LABEL_20;
          case 21:
            goto LABEL_56;
          case 22:
            v76 = v18;
            goto LABEL_65;
          case 23:
            goto LABEL_57;
          case 25:
            v76 = v18;
            goto LABEL_58;
          default:
            goto LABEL_8;
        }
      }
    }

    break;
  }

LABEL_8:
  vretproc(v0);
  v24 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_98_9();
  OUTLINED_FUNCTION_87_11();
}

void apply_strong_alternation()
{
  OUTLINED_FUNCTION_88_11();
  OUTLINED_FUNCTION_21_34();
  v109 = *MEMORY[0x277D85DE8];
  v98 = 0;
  v96 = 0;
  v97 = 0;
  v94 = 0;
  v95 = 0;
  OUTLINED_FUNCTION_104_8();
  OUTLINED_FUNCTION_52_17();
  bzero(v89, v1);
  OUTLINED_FUNCTION_51_17();
  bzero(v108, v2);
  v3 = setjmp(v108);
  if (v3 || OUTLINED_FUNCTION_79_12(v3, v89, v4, v5, v6, v7, v8, v9, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89[0], v89[1], v89[2], v89[3], v89[4], v89[5], v89[6], v89[7], v89[8], v89[9], v89[10], v89[11], v89[12], v89[13], v89[14], v89[15], v89[16], v89[17], v89[18], v89[19], v89[20], v89[21], v89[22], v90[0], v90[1], v91[0], v91[1], v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108[0]))
  {
    goto LABEL_3;
  }

  v11 = OUTLINED_FUNCTION_83_12();
  get_parm(v11, v12, v13, -4);
  v14 = OUTLINED_FUNCTION_59_16();
  get_parm(v14, v15, v16, -4);
  LODWORD(v97) = 65532;
  v17 = OUTLINED_FUNCTION_49_17();
  push_ptr_init(v17, v18);
  v19 = OUTLINED_FUNCTION_43_20();
  push_ptr_init(v19, v20);
  v92 = 0xFFFC0000FFFCLL;
  v21 = OUTLINED_FUNCTION_66_15();
  push_ptr_init(v21, v22);
  v23 = OUTLINED_FUNCTION_74_12();
  push_ptr_init(v23, v24);
  v25 = OUTLINED_FUNCTION_42_21();
  fence_46(v25, v26);
  fence_46(v0, &unk_280581339);
  OUTLINED_FUNCTION_44_20();
  find_last_syll();
  while (2)
  {
    if (HIWORD(v97))
    {
      startloop(v0, 2);
      move_i(v0, &v97, 1);
      move_i(v0, &v92 + 4, 1);
      copyvar(v0, &v92, &v97 + 2);
      if (for_test(v0, &v97, &v92, &v92 + 2))
      {
LABEL_25:
        v63 = *(v0 + 104);
        if (v63)
        {
          v64 = OUTLINED_FUNCTION_53_17(v63);
        }

        else
        {
          v64 = OUTLINED_FUNCTION_99_8();
        }

        switch(v64)
        {
          case 1:
            continue;
          case 2:
            goto LABEL_8;
          case 3:
            goto LABEL_31;
          case 4:
            goto LABEL_34;
          case 5:
            goto LABEL_32;
          case 6:
            goto LABEL_33;
          case 7:
            goto LABEL_9;
          case 8:
            goto LABEL_12;
          case 10:
            goto LABEL_13;
          case 11:
            goto LABEL_15;
          case 13:
            goto LABEL_21;
          case 14:
            if (forto_adv_l(v0, 12, 13, 20, 7, v91))
            {
              goto LABEL_25;
            }

            break;
          case 15:
            goto LABEL_19;
          case 16:
            goto LABEL_20;
          case 17:
            goto LABEL_22;
          case 18:
            goto LABEL_24;
          case 19:
            goto LABEL_16;
          case 20:
            goto LABEL_17;
          default:
            goto LABEL_3;
        }

        goto LABEL_3;
      }

      do
      {
LABEL_31:
        v65 = OUTLINED_FUNCTION_92_10();
        starttest(v65, v66);
        v67 = OUTLINED_FUNCTION_49_17();
        if (!lpta_loadp_setscan_l(v67, v68))
        {
LABEL_32:
          v69 = OUTLINED_FUNCTION_94_9();
          savescptr(v69, v70, &v93);
          if (advance_tok(v0))
          {
            goto LABEL_25;
          }

LABEL_33:
          v71 = OUTLINED_FUNCTION_86_11();
          savescptr(v71, v72, &v95);
        }

LABEL_34:
        ;
      }

      while (for_adv(v0, 2, 3, &v97, &v92, &v92 + 2));
    }

    break;
  }

LABEL_8:
  v27 = OUTLINED_FUNCTION_49_17();
  insert_stressval(v27, v28, &v93, &v98, v29, v30, v31, v32);
LABEL_9:
  v33 = OUTLINED_FUNCTION_58_16();
  if (lpta_loadp_setscan_r(v33, v34) || advance_tok(v0) || (OUTLINED_FUNCTION_76_12(), v35 = OUTLINED_FUNCTION_7_43(), test_ptr(v35)))
  {
LABEL_12:
    v36 = 2;
    if (HIWORD(v98) != 1)
    {
LABEL_13:
      v36 = 1;
    }

    HIWORD(v98) = v36;
LABEL_15:
    v37 = OUTLINED_FUNCTION_102_8();
    startloop(v37, v38);
    v39 = OUTLINED_FUNCTION_66_15();
    copyvar(v39, v40, &v95);
    v41 = OUTLINED_FUNCTION_74_12();
    copyvar(v41, v42, v43);
LABEL_16:
    while (1)
    {
      v44 = OUTLINED_FUNCTION_66_15();
      if (forall_to_test(v44, v45, v90))
      {
        goto LABEL_25;
      }

LABEL_17:
      v46 = OUTLINED_FUNCTION_82_12();
      bspush_ca(v46);
      v47 = OUTLINED_FUNCTION_66_15();
      if (lpta_loadp_setscan_l(v47, v48) || advance_tok(v0))
      {
        goto LABEL_25;
      }

LABEL_19:
      v49 = OUTLINED_FUNCTION_110_7();
      savescptr(v49, v50, &v93);
      if (advance_tok(v0))
      {
        goto LABEL_25;
      }

LABEL_20:
      v51 = OUTLINED_FUNCTION_101_8();
      savescptr(v51, v52, &v95);
LABEL_21:
      v53 = OUTLINED_FUNCTION_49_17();
      insert_stressval(v53, v54, &v93, &v98, v55, v56, v57, v58);
LABEL_22:
      HIWORD(v98) = 2;
      v59 = OUTLINED_FUNCTION_49_17();
      lpta_loadpn(v59, v60);
      v61 = OUTLINED_FUNCTION_58_16();
      rpta_loadpn(v61, v62);
      if (!compare_ptas(v0) && !testeq(v0))
      {
        goto LABEL_3;
      }

LABEL_24:
      forall_cont_from(v0);
    }
  }

  if (HIWORD(v98) == 2)
  {
    v73 = OUTLINED_FUNCTION_58_16();
    lpta_rpta_loadp(v73, v74, v75);
    v76 = OUTLINED_FUNCTION_14_41();
    insert_2pt_i(v76, v77, v78, v79, 0);
  }

LABEL_3:
  vretproc(v0);
  v10 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_87_11();
}

uint64_t insert_adj_stress()
{
  OUTLINED_FUNCTION_21_34();
  v54 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_30_30();
  v53 = 0;
  OUTLINED_FUNCTION_52_17();
  bzero(&v52, v2);
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
  v53 = 0xFFFC0000FFFCLL;
  fence_46(v0, &_MergedGlobals_39);
  v22 = OUTLINED_FUNCTION_37_23();
  starttest(v22, v23);
  v24 = OUTLINED_FUNCTION_44_20();
  if (lpta_loadp_setscan_l(v24, v25) || advance_tok(v0))
  {
    goto LABEL_8;
  }

  while (2)
  {
    v26 = OUTLINED_FUNCTION_80_12();
    savescptr(v26, v27, v28);
    OUTLINED_FUNCTION_48_17();
    if (!test_string_s())
    {
LABEL_7:
      OUTLINED_FUNCTION_77_12();
      v29 = OUTLINED_FUNCTION_67_15();
      savescptr(v29, v30, v31);
LABEL_8:
      v32 = OUTLINED_FUNCTION_65_15();
      lpta_rpta_loadp(v32, v33, v34);
      v35 = OUTLINED_FUNCTION_10_42();
      if (!insert_2pt_s(v35, v36, v37, v38, v39))
      {
        v40 = OUTLINED_FUNCTION_37_23();
        starttest_l(v40, v41);
        v42 = OUTLINED_FUNCTION_11_42();
        move_i(v42, v43, v44);
        v45 = OUTLINED_FUNCTION_18_37();
        move_i(v45, v46, v47);
        OUTLINED_FUNCTION_32_28();
        apply_strong_alternation();
        if (!v48)
        {
          break;
        }
      }
    }

    v49 = *(v0 + 104);
    if (v49)
    {
      v50 = OUTLINED_FUNCTION_53_17(v49);
    }

    else
    {
      v50 = OUTLINED_FUNCTION_99_8();
    }

    if ((v50 - 1) <= 3)
    {
      OUTLINED_FUNCTION_91_10();
      switch(v51)
      {
        case 1:
          continue;
        case 2:
          goto LABEL_7;
        case 3:
          goto LABEL_3;
        default:
          goto LABEL_8;
      }
    }

    break;
  }

LABEL_3:
  vretproc(v0);
  v10 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_98_9();
}

uint64_t test_lex_pre(uint64_t a1)
{
  v57 = *MEMORY[0x277D85DE8];
  v50 = 0;
  v51 = 0;
  v52 = 0;
  OUTLINED_FUNCTION_52_17();
  bzero(v49, v2);
  OUTLINED_FUNCTION_51_17();
  bzero(v56, v3);
  if (setjmp(v56))
  {
    goto LABEL_4;
  }

  if (ventproc(a1, v49, v55, v54, v53, v56))
  {
    goto LABEL_4;
  }

  BYTE4(v52) = 0;
  LODWORD(v52) = 0;
  LODWORD(v50) = -65535;
  fence_46(a1, &_MergedGlobals_39);
  v4 = 1;
  v5 = OUTLINED_FUNCTION_81_12();
  starttest(v5, v6);
  v7 = OUTLINED_FUNCTION_58_16();
  if (lpta_loadp_setscan_r(v7, v8))
  {
LABEL_4:
    v4 = 94;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_37_23();
    bspush_ca_scan(v11, v12);
    OUTLINED_FUNCTION_2_46();
    if (test_string_s())
    {
      goto LABEL_10;
    }

LABEL_7:
    v13 = OUTLINED_FUNCTION_37_23();
    bspush_ca_scan(v13, v14);
LABEL_8:
    OUTLINED_FUNCTION_2_46();
LABEL_9:
    while (test_string_s())
    {
LABEL_10:
      while (2)
      {
        v15 = *(a1 + 104);
        if (v15)
        {
          v16 = OUTLINED_FUNCTION_53_17(v15);
        }

        else
        {
          v16 = OUTLINED_FUNCTION_99_8();
        }

        if ((v16 - 2) > 0x21)
        {
          goto LABEL_4;
        }

        OUTLINED_FUNCTION_91_10();
        switch(v17)
        {
          case 1:
            v41 = OUTLINED_FUNCTION_23_34();
            bspush_ca_scan(v41, v42);
            goto LABEL_40;
          case 2:
          case 4:
          case 7:
          case 12:
          case 21:
          case 24:
          case 28:
          case 32:
            goto LABEL_5;
          case 3:
          case 20:
          case 33:
            v18 = OUTLINED_FUNCTION_0_47();
            if (!testFldeq(v18, v19, v20, v21) && !advance_tok(a1))
            {
              v22 = OUTLINED_FUNCTION_122_7();
              if (!savetok(v22, v23) && !advance_tok(a1))
              {
                v24 = OUTLINED_FUNCTION_112_7();
                if (!savetok(v24, v25))
                {
                  v26 = OUTLINED_FUNCTION_122_7();
                  if (!testeq_tvars(v26, v27, v28))
                  {
                    goto LABEL_41;
                  }
                }
              }
            }

            continue;
          case 5:
            v37 = OUTLINED_FUNCTION_37_23();
            bspush_ca_scan(v37, v38);
            OUTLINED_FUNCTION_2_46();
            if (!test_string_s())
            {
              goto LABEL_7;
            }

            continue;
          case 6:
          case 8:
          case 11:
          case 23:
          case 30:
            goto LABEL_7;
          case 9:
          case 13:
          case 25:
          case 27:
          case 31:
            goto LABEL_8;
          case 10:
            v43 = OUTLINED_FUNCTION_25_32();
            bspush_ca_scan(v43, v44);
            goto LABEL_40;
          case 14:
          case 16:
          case 17:
            v45 = OUTLINED_FUNCTION_37_23();
            bspush_ca_scan(v45, v46);
            OUTLINED_FUNCTION_5_44();
            goto LABEL_9;
          case 15:
            v47 = OUTLINED_FUNCTION_37_23();
            bspush_ca_scan(v47, v48);
LABEL_40:
            OUTLINED_FUNCTION_4_44();
            break;
          case 18:
            v33 = OUTLINED_FUNCTION_37_23();
            bspush_ca_scan(v33, v34);
            OUTLINED_FUNCTION_2_46();
            if (!test_string_s())
            {
              goto LABEL_7;
            }

            continue;
          case 19:
            v39 = OUTLINED_FUNCTION_37_23();
            bspush_ca_scan(v39, v40);
            OUTLINED_FUNCTION_2_46();
            if (!test_string_s())
            {
              goto LABEL_7;
            }

            continue;
          case 22:
            v31 = OUTLINED_FUNCTION_37_23();
            bspush_ca_scan(v31, v32);
            OUTLINED_FUNCTION_4_44();
            if (!test_string_s())
            {
              goto LABEL_7;
            }

            continue;
          case 26:
            OUTLINED_FUNCTION_4_44();
            if (!test_string_s())
            {
              goto LABEL_7;
            }

            continue;
          case 29:
            v29 = OUTLINED_FUNCTION_37_23();
            bspush_ca_scan(v29, v30);
            OUTLINED_FUNCTION_2_46();
            if (!test_string_s())
            {
              goto LABEL_7;
            }

            continue;
          default:
            v35 = OUTLINED_FUNCTION_28_30();
            bspush_ca_scan(v35, v36);
            OUTLINED_FUNCTION_4_44();
            if (!test_string_s())
            {
              goto LABEL_7;
            }

            continue;
        }

        break;
      }
    }

LABEL_41:
    v4 = 0;
  }

LABEL_5:
  vretproc(a1);
  v9 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t insert_eng_stress()
{
  OUTLINED_FUNCTION_21_34();
  v84 = *MEMORY[0x277D85DE8];
  v82 = 0;
  v83 = 0;
  v81 = 0;
  v80[0] = 0;
  v80[1] = 0;
  v79[0] = 0;
  v79[1] = 0;
  v78 = 0;
  OUTLINED_FUNCTION_52_17();
  bzero(&v77, v4);
  OUTLINED_FUNCTION_51_17();
  OUTLINED_FUNCTION_114_7(v5, v6);
  if (setjmp(v3) || (OUTLINED_FUNCTION_106_8(), OUTLINED_FUNCTION_105_8(v7, v8, v9, v10, v11)))
  {
LABEL_3:
    v1 = 94;
    goto LABEL_4;
  }

  v14 = OUTLINED_FUNCTION_75_12();
  get_parm(v14, v15, v2, -6);
  v16 = OUTLINED_FUNCTION_59_16();
  get_parm(v16, v17, v18, -4);
  push_ptr_init(v0, v80);
  v19 = OUTLINED_FUNCTION_112_7();
  push_ptr_init(v19, v20);
  v78 = 65532;
  fence_46(v0, &_MergedGlobals_39);
  v21 = OUTLINED_FUNCTION_37_23();
  starttest(v21, v22);
  v23 = OUTLINED_FUNCTION_58_16();
  if (!lpta_loadp_setscan_r(v23, v24) && !advance_tok(v0))
  {
LABEL_7:
    OUTLINED_FUNCTION_78_12();
    savescptr(v0, v25, v80);
    if (advance_tok(v0))
    {
      goto LABEL_12;
    }

LABEL_8:
    OUTLINED_FUNCTION_77_12();
    v26 = OUTLINED_FUNCTION_111_7();
    savescptr(v26, v27, v28);
  }

LABEL_9:
  v29 = HIWORD(v81);
  if (HIWORD(v81) == 1)
  {
    v30 = OUTLINED_FUNCTION_23_34();
    starttest(v30, v31);
    v1 = &v78;
    v32 = OUTLINED_FUNCTION_11_42();
    move_i(v32, v33, v34);
    v39 = v80;
    v40 = (v0 + 1640);
    goto LABEL_11;
  }

  while (2)
  {
    if (v29 == 2)
    {
      v44 = OUTLINED_FUNCTION_27_31();
      starttest(v44, v45);
LABEL_29:
      v1 = &v78;
      v74 = OUTLINED_FUNCTION_11_42();
      move_i(v74, v75, v76);
      v40 = v80;
      v39 = v79;
LABEL_11:
      if (insert_stressval(v0, v40, v39, &v78, v35, v36, v37, v38))
      {
        goto LABEL_12;
      }

LABEL_30:
      v1 = 0;
      break;
    }

LABEL_22:
    if (v29 != 3)
    {
LABEL_26:
      if (v29 != 4)
      {
        goto LABEL_30;
      }

      v65 = OUTLINED_FUNCTION_58_16();
      lpta_rpta_loadp(v65, v66, v67);
      v1 = 0;
      v68 = OUTLINED_FUNCTION_14_41();
      if (insert_2pt_i(v68, v69, v70, v71, 0))
      {
        break;
      }

      v72 = OUTLINED_FUNCTION_37_23();
      starttest_l(v72, v73);
      goto LABEL_29;
    }

    v46 = OUTLINED_FUNCTION_26_32();
    starttest(v46, v47);
    v1 = &v78;
    v48 = OUTLINED_FUNCTION_11_42();
    move_i(v48, v49, v50);
    v51 = OUTLINED_FUNCTION_58_16();
    if (!insert_stressval(v51, v52, v53, &v78, v54, v55, v56, v57))
    {
LABEL_24:
      v58 = OUTLINED_FUNCTION_111_7();
      lpta_rpta_loadp(v58, v59, v60);
      v1 = 0;
      v61 = OUTLINED_FUNCTION_14_41();
      if (!insert_2pt_i(v61, v62, v63, v64, 0))
      {
        break;
      }
    }

LABEL_12:
    v41 = *(v0 + 104);
    if (v41)
    {
      v42 = OUTLINED_FUNCTION_53_17(v41);
    }

    else
    {
      v42 = OUTLINED_FUNCTION_99_8();
    }

    if ((v42 - 1) > 0xA)
    {
      goto LABEL_3;
    }

    OUTLINED_FUNCTION_91_10();
    switch(v43)
    {
      case 1:
        goto LABEL_7;
      case 2:
        goto LABEL_8;
      case 3:
        v29 = HIWORD(v81);
        continue;
      case 4:
      case 5:
      case 7:
      case 10:
        goto LABEL_4;
      case 6:
        v29 = HIWORD(v81);
        goto LABEL_22;
      case 8:
        v29 = HIWORD(v81);
        goto LABEL_26;
      case 9:
        goto LABEL_24;
      default:
        goto LABEL_9;
    }
  }

LABEL_4:
  vretproc(v0);
  v12 = *MEMORY[0x277D85DE8];
  return v1;
}

void multi_stress()
{
  OUTLINED_FUNCTION_88_11();
  OUTLINED_FUNCTION_21_34();
  v677 = *MEMORY[0x277D85DE8];
  v664 = 0;
  v665 = 0;
  v662 = 0;
  v663 = 0;
  HIDWORD(v661) = 0;
  v659 = 0;
  v660 = 0;
  HIDWORD(v658) = 0;
  v656 = 0;
  v657 = 0;
  v654 = 0;
  v655 = 0;
  v652 = 0;
  v653 = 0;
  v650 = 0;
  v651 = 0;
  v648 = 0;
  v649 = 0;
  OUTLINED_FUNCTION_52_17();
  bzero(v647, v1);
  OUTLINED_FUNCTION_51_17();
  bzero(v676, v2);
  v3 = setjmp(v676);
  if (v3 || OUTLINED_FUNCTION_79_12(v3, v647, v4, v5, v6, v7, v8, v9, v646, v647[0], v647[1], v647[2], v647[3], v647[4], v647[5], v647[6], v647[7], v647[8], v647[9], v647[10], v647[11], v647[12], v647[13], v647[14], v647[15], v647[16], v647[17], v647[18], v647[19], v647[20], v647[21], v647[22], v648, v649, v650, v651, v652, v653, v654, v655, v656, v657, v658, v659, v660, v661, v662, v663, v664, v665, v666, v667, v668, v669, v670, v671, v672, v673, v674, v675, v676[0]))
  {
    goto LABEL_3;
  }

  v11 = OUTLINED_FUNCTION_41_21();
  get_parm(v11, v12, v13, -6);
  v14 = OUTLINED_FUNCTION_34_27();
  get_parm(v14, v15, v16, -6);
  HIDWORD(v661) = 65532;
  push_ptr_init(v0, &v659);
  HIDWORD(v658) = 65532;
  push_ptr_init(v0, &v656);
  push_ptr_init(v0, &v654);
  push_ptr_init(v0, &v652);
  push_ptr_init(v0, &v650);
  v17 = OUTLINED_FUNCTION_112_7();
  push_ptr_init(v17, v18);
  v19 = OUTLINED_FUNCTION_42_21();
  fence_46(v19, v20);
  fence_46(v0, &unk_280581335);
  v21 = OUTLINED_FUNCTION_41_21();
  lpta_rpta_loadp(v21, v22, v23);
  v24 = OUTLINED_FUNCTION_38_22();
  if (!setd_lookup(v24, v25, 454))
  {
    OUTLINED_FUNCTION_6_43();
    test_noun_verb();
    v36 = 0;
LABEL_13:
    OUTLINED_FUNCTION_31_30();
    if (v37)
    {
      goto LABEL_15;
    }

    goto LABEL_87;
  }

  LODWORD(v26) = 0;
LABEL_6:
  v27 = OUTLINED_FUNCTION_6_43();
  lpta_rpta_loadp(v27, v28, v29);
  v30 = OUTLINED_FUNCTION_38_22();
  if (setd_lookup(v30, v31, 455))
  {
LABEL_129:
    v220 = OUTLINED_FUNCTION_6_43();
    lpta_rpta_loadp(v220, v221, v222);
    v223 = OUTLINED_FUNCTION_38_22();
    if (!setd_lookup(v223, v224, 456))
    {
      OUTLINED_FUNCTION_6_43();
      test_noun_verb();
      v36 = v26;
LABEL_192:
      OUTLINED_FUNCTION_24_32();
      if (!v37)
      {
LABEL_199:
        v311 = OUTLINED_FUNCTION_37_23();
        starttest(v311, v312);
        v313 = OUTLINED_FUNCTION_39_22();
        LODWORD(v26) = v36;
        if (lpta_loadp_setscan_l(v313, v314))
        {
          goto LABEL_15;
        }

LABEL_206:
        savescptr(v0, 26, &v659);
        OUTLINED_FUNCTION_2_46();
        if (test_string_s())
        {
          goto LABEL_374;
        }

        v317 = OUTLINED_FUNCTION_37_23();
        bspush_ca_scan(v317, v318);
        OUTLINED_FUNCTION_38_22();
        v319 = test_string_s();
        v48 = v26;
        v44 = v26;
        if (v319)
        {
          goto LABEL_17;
        }

LABEL_208:
        LODWORD(v26) = v48;
        v320 = OUTLINED_FUNCTION_39_22();
        if (lpta_loadp_setscan_r(v320, v321))
        {
          goto LABEL_374;
        }

        v322 = OUTLINED_FUNCTION_37_23();
        bspush_ca_scan(v322, v323);
        OUTLINED_FUNCTION_4_44();
        v324 = test_string_s();
        v49 = v26;
        v44 = v26;
        if (v324)
        {
          goto LABEL_17;
        }

LABEL_210:
        v36 = v49;
        OUTLINED_FUNCTION_13_41();
        if (test_string_s())
        {
          goto LABEL_464;
        }

        *(v0 + 136) = v26;
        v325 = *(v0 + 1344);
        v326 = OUTLINED_FUNCTION_7_43();
        if (test_ptr(v326))
        {
          goto LABEL_464;
        }
      }

      goto LABEL_87;
    }

LABEL_130:
    v225 = OUTLINED_FUNCTION_6_43();
    lpta_rpta_loadp(v225, v226, v227);
    v228 = OUTLINED_FUNCTION_38_22();
    if (setd_lookup(v228, v229, 457))
    {
      v36 = v26;
LABEL_132:
      v230 = OUTLINED_FUNCTION_39_22();
      if (lpta_loadp_setscan_r(v230, v231) || (OUTLINED_FUNCTION_13_41(), test_string_s()) || (*(v0 + 136) = v26, v232 = OUTLINED_FUNCTION_7_43(), test_ptr(v232)))
      {
LABEL_135:
        v233 = OUTLINED_FUNCTION_39_22();
        if (!lpta_loadp_setscan_r(v233, v234))
        {
          OUTLINED_FUNCTION_13_41();
          if (!test_string_s())
          {
            *(v0 + 136) = v26;
            v235 = OUTLINED_FUNCTION_7_43();
            if (!test_ptr(v235))
            {
              OUTLINED_FUNCTION_6_43();
              test_noun_adj();
LABEL_251:
              v361 = *(v0 + 2254);
              OUTLINED_FUNCTION_60_16();
              if (!v37)
              {
                goto LABEL_100;
              }

              goto LABEL_201;
            }
          }
        }

LABEL_138:
        LODWORD(v26) = v36;
        v236 = OUTLINED_FUNCTION_37_23();
        starttest(v236, v237);
        v238 = OUTLINED_FUNCTION_39_22();
        if (!lpta_loadp_setscan_r(v238, v239))
        {
          OUTLINED_FUNCTION_4_44();
          if (!test_string_s())
          {
            v335 = OUTLINED_FUNCTION_37_23();
            bspush_ca_scan(v335, v336);
            OUTLINED_FUNCTION_17_38();
            v337 = test_string_s();
            v50 = v36;
            v44 = v36;
            if (v337)
            {
              goto LABEL_17;
            }

LABEL_224:
            LODWORD(v26) = v50;
            OUTLINED_FUNCTION_76_12();
            v338 = OUTLINED_FUNCTION_7_43();
            if (test_ptr(v338))
            {
              goto LABEL_374;
            }

            v339 = OUTLINED_FUNCTION_50_17();
            lpta_loadpn(v339, v340);
            v341 = OUTLINED_FUNCTION_71_13();
            rpta_loadpn(v341, v342);
            if (compare_ptas(v0) || testeq(v0) || (v343 = OUTLINED_FUNCTION_68_13(), lpta_loadpn(v343, v344), v345 = OUTLINED_FUNCTION_84_12(), rpta_loadpn(v345, v346), compare_ptas(v0)) || testeq(v0))
            {
LABEL_229:
              OUTLINED_FUNCTION_6_43();
              test_noun_adj();
              v36 = v26;
LABEL_230:
              v347 = *(v0 + 2254);
              OUTLINED_FUNCTION_60_16();
              if (v37)
              {
                goto LABEL_15;
              }
            }

            else
            {
              v634 = OUTLINED_FUNCTION_37_23();
              starttest(v634, v635);
              v636 = OUTLINED_FUNCTION_50_17();
              if (lpta_loadp_setscan_l(v636, v637))
              {
LABEL_381:
                v543 = OUTLINED_FUNCTION_37_23();
                starttest(v543, v544);
                v545 = OUTLINED_FUNCTION_63_16();
                if (lpta_loadp_setscan_r(v545, v546))
                {
                  v36 = v26;
LABEL_383:
                  OUTLINED_FUNCTION_6_43();
                  test_noun_adj();
                  if (!v547)
                  {
                    v548 = *(v0 + 2254);
                    OUTLINED_FUNCTION_60_16();
                    if (v37)
                    {
                      goto LABEL_15;
                    }
                  }
                }

                else
                {
                  v602 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v602, v603);
                  v604 = OUTLINED_FUNCTION_16_40();
                  v607 = testFldeq(v604, v605, v606, 10);
                  v53 = v26;
                  v44 = v26;
                  if (v607)
                  {
                    goto LABEL_17;
                  }

LABEL_430:
                  v36 = v53;
                  if (advance_tok(v0))
                  {
                    goto LABEL_464;
                  }
                }
              }

              else
              {
                v638 = OUTLINED_FUNCTION_37_23();
                bspush_ca_scan(v638, v639);
                v51 = v26;
LABEL_462:
                LODWORD(v26) = v51;
                v640 = OUTLINED_FUNCTION_37_23();
                bspush_ca_scan(v640, v641);
                v642 = OUTLINED_FUNCTION_16_40();
                v645 = testFldeq(v642, v643, v644, 7);
                v52 = v26;
                v44 = v26;
                if (v645)
                {
                  goto LABEL_17;
                }

LABEL_463:
                v36 = v52;
                if (advance_tok(v0))
                {
                  goto LABEL_464;
                }
              }
            }

            goto LABEL_87;
          }
        }

LABEL_140:
        v240 = OUTLINED_FUNCTION_39_22();
        if (lpta_loadp_setscan_r(v240, v241) || (OUTLINED_FUNCTION_13_41(), test_string_s()) || (*(v0 + 136) = v26, v242 = OUTLINED_FUNCTION_7_43(), test_ptr(v242)))
        {
LABEL_143:
          v243 = OUTLINED_FUNCTION_39_22();
          if (!lpta_loadp_setscan_r(v243, v244))
          {
            OUTLINED_FUNCTION_13_41();
            if (!test_string_s())
            {
              *(v0 + 136) = v26;
              v245 = OUTLINED_FUNCTION_7_43();
              if (!test_ptr(v245))
              {
                OUTLINED_FUNCTION_6_43();
                test_verb_adj();
LABEL_283:
                OUTLINED_FUNCTION_31_30();
                if (!v37)
                {
                  goto LABEL_100;
                }

                goto LABEL_15;
              }
            }
          }

LABEL_146:
          LOBYTE(v26) = v36;
          v246 = OUTLINED_FUNCTION_6_43();
          lpta_rpta_loadp(v246, v247, v248);
          v249 = OUTLINED_FUNCTION_38_22();
          if (setd_lookup(v249, v250, 458))
          {
LABEL_147:
            v251 = OUTLINED_FUNCTION_39_22();
            if (lpta_loadp_setscan_r(v251, v252) || (OUTLINED_FUNCTION_13_41(), test_string_s()) || (*(v0 + 136) = v26, v253 = OUTLINED_FUNCTION_7_43(), test_ptr(v253)))
            {
LABEL_150:
              LODWORD(v26) = v36;
              v254 = OUTLINED_FUNCTION_6_43();
              lpta_rpta_loadp(v254, v255, v256);
              v257 = OUTLINED_FUNCTION_38_22();
              if (setd_lookup(v257, v258, 459))
              {
LABEL_151:
                v259 = OUTLINED_FUNCTION_6_43();
                lpta_rpta_loadp(v259, v260, v261);
                v262 = OUTLINED_FUNCTION_38_22();
                if (setd_lookup(v262, v263, 460))
                {
LABEL_152:
                  v264 = OUTLINED_FUNCTION_37_23();
                  starttest(v264, v265);
                  v266 = OUTLINED_FUNCTION_39_22();
                  if (lpta_loadp_setscan_r(v266, v267))
                  {
LABEL_153:
                    v268 = OUTLINED_FUNCTION_37_23();
                    starttest(v268, v269);
                    v270 = OUTLINED_FUNCTION_39_22();
                    if (!lpta_loadp_setscan_r(v270, v271))
                    {
                      v375 = OUTLINED_FUNCTION_37_23();
                      bspush_ca_scan(v375, v376);
                      OUTLINED_FUNCTION_4_44();
                      v377 = test_string_s();
                      v58 = v26;
                      v44 = v26;
                      if (v377)
                      {
                        goto LABEL_17;
                      }

LABEL_264:
                      v36 = v58;
                      OUTLINED_FUNCTION_13_41();
                      if (!test_string_s())
                      {
                        *(v0 + 136) = v26;
                        v378 = OUTLINED_FUNCTION_7_43();
                        if (!test_ptr(v378))
                        {
                          OUTLINED_FUNCTION_6_43();
                          test_noun_verb();
LABEL_267:
                          LODWORD(v26) = v36;
                          OUTLINED_FUNCTION_24_32();
                          if (v37)
                          {
                            v379 = OUTLINED_FUNCTION_37_23();
                            starttest_l(v379, v380);
                            v381 = OUTLINED_FUNCTION_62_16();
                            if (!lpta_loadp_setscan_l(v381, v382) && !advance_tok(v0))
                            {
LABEL_271:
                              v383 = OUTLINED_FUNCTION_59_16();
                              savescptr(v383, v384, v385);
                              v386 = OUTLINED_FUNCTION_42_21();
                              lpta_rpta_loadp(v386, v387, v388);
                              v389 = OUTLINED_FUNCTION_10_42();
                              inserted = insert_2pt_s(v389, v390, v391, v392, v393);
                              LODWORD(v26) = v36;
                              v44 = v36;
                              if (inserted)
                              {
                                goto LABEL_17;
                              }
                            }
                          }

LABEL_396:
                          v36 = v26;
                          goto LABEL_15;
                        }
                      }

                      goto LABEL_464;
                    }

                    v36 = v26;
LABEL_155:
                    v272 = OUTLINED_FUNCTION_39_22();
                    if (!lpta_loadp_setscan_r(v272, v273))
                    {
                      OUTLINED_FUNCTION_13_41();
                      if (!test_string_s())
                      {
                        *(v0 + 136) = v26;
                        v274 = OUTLINED_FUNCTION_7_43();
                        if (!test_ptr(v274))
                        {
                          OUTLINED_FUNCTION_6_43();
                          test_noun_verb();
LABEL_402:
                          OUTLINED_FUNCTION_24_32();
                          if (!v37)
                          {
                            goto LABEL_15;
                          }

                          v557 = OUTLINED_FUNCTION_37_23();
                          starttest(v557, v558);
                          v559 = OUTLINED_FUNCTION_62_16();
                          if (!lpta_loadp_setscan_l(v559, v560))
                          {
                            v630 = advance_tok(v0);
                            v466 = v36;
                            if (!v630)
                            {
LABEL_331:
                              v467 = v466;
                              v26 = &v648;
                              v468 = OUTLINED_FUNCTION_59_16();
                              savescptr(v468, v469, v470);
                              v471 = OUTLINED_FUNCTION_42_21();
                              lpta_rpta_loadp(v471, v472, v473);
                              v474 = OUTLINED_FUNCTION_10_42();
                              v479 = insert_2pt_s(v474, v475, v476, v477, v478);
                              v36 = v467;
                              v44 = v467;
                              if (v479)
                              {
                                goto LABEL_17;
                              }
                            }
                          }

                          goto LABEL_87;
                        }
                      }
                    }

LABEL_158:
                    LODWORD(v26) = v36;
                    v275 = OUTLINED_FUNCTION_37_23();
                    starttest(v275, v276);
                    v277 = OUTLINED_FUNCTION_39_22();
                    if (lpta_loadp_setscan_r(v277, v278))
                    {
LABEL_159:
                      v279 = OUTLINED_FUNCTION_37_23();
                      starttest(v279, v280);
                      v281 = OUTLINED_FUNCTION_39_22();
                      if (!lpta_loadp_setscan_r(v281, v282))
                      {
                        v430 = OUTLINED_FUNCTION_37_23();
                        bspush_ca_scan(v430, v431);
                        OUTLINED_FUNCTION_38_22();
                        v432 = test_string_s();
                        v60 = v26;
                        v44 = v26;
                        if (v432)
                        {
                          goto LABEL_17;
                        }

LABEL_299:
                        LODWORD(v26) = v60;
                        OUTLINED_FUNCTION_76_12();
                        v433 = OUTLINED_FUNCTION_7_43();
                        if (!test_ptr(v433))
                        {
                          OUTLINED_FUNCTION_6_43();
                          test_nva();
LABEL_389:
                          if (!*(v0 + 4438))
                          {
                            OUTLINED_FUNCTION_6_43();
                            test_noun_verb();
                          }

                          v36 = v26;
LABEL_392:
                          OUTLINED_FUNCTION_31_30();
                          if (!v37)
                          {
                            goto LABEL_100;
                          }

                          goto LABEL_15;
                        }

                        goto LABEL_374;
                      }

                      v36 = v26;
LABEL_161:
                      v283 = OUTLINED_FUNCTION_39_22();
                      if (lpta_loadp_setscan_r(v283, v284) || (OUTLINED_FUNCTION_13_41(), test_string_s()) || (*(v0 + 136) = v26, v285 = OUTLINED_FUNCTION_7_43(), test_ptr(v285)))
                      {
LABEL_164:
                        v286 = OUTLINED_FUNCTION_39_22();
                        if (lpta_loadp_setscan_r(v286, v287) || (OUTLINED_FUNCTION_13_41(), test_string_s()) || (*(v0 + 136) = v26, v288 = OUTLINED_FUNCTION_7_43(), test_ptr(v288)))
                        {
LABEL_167:
                          v289 = OUTLINED_FUNCTION_39_22();
                          if (lpta_loadp_setscan_r(v289, v290) || (OUTLINED_FUNCTION_13_41(), test_string_s()) || (*(v0 + 136) = v26, v291 = OUTLINED_FUNCTION_7_43(), test_ptr(v291)))
                          {
LABEL_170:
                            v292 = OUTLINED_FUNCTION_39_22();
                            if (lpta_loadp_setscan_r(v292, v293) || (OUTLINED_FUNCTION_13_41(), test_string_s()) || (*(v0 + 136) = v26, v294 = OUTLINED_FUNCTION_7_43(), test_ptr(v294)))
                            {
LABEL_173:
                              LODWORD(v26) = v36;
                              v295 = OUTLINED_FUNCTION_37_23();
                              starttest(v295, v296);
                              v297 = OUTLINED_FUNCTION_39_22();
                              if (lpta_loadp_setscan_r(v297, v298) || (OUTLINED_FUNCTION_5_44(), test_string_s()))
                              {
LABEL_175:
                                v299 = OUTLINED_FUNCTION_39_22();
                                if (lpta_loadp_setscan_r(v299, v300) || (OUTLINED_FUNCTION_13_41(), test_string_s()) || (*(v0 + 136) = v26, v301 = OUTLINED_FUNCTION_7_43(), test_ptr(v301)))
                                {
LABEL_178:
                                  v302 = OUTLINED_FUNCTION_39_22();
                                  if (lpta_loadp_setscan_r(v302, v303) || (OUTLINED_FUNCTION_13_41(), test_string_s()) || (*(v0 + 136) = v26, v304 = OUTLINED_FUNCTION_7_43(), test_ptr(v304)))
                                  {
LABEL_181:
                                    v305 = OUTLINED_FUNCTION_39_22();
                                    if (lpta_loadp_setscan_r(v305, v306) || (OUTLINED_FUNCTION_13_41(), test_string_s()) || (*(v0 + 136) = v26, v307 = OUTLINED_FUNCTION_7_43(), test_ptr(v307)))
                                    {
LABEL_184:
                                      v308 = OUTLINED_FUNCTION_39_22();
                                      if (lpta_loadp_setscan_r(v308, v309))
                                      {
                                        goto LABEL_3;
                                      }

                                      OUTLINED_FUNCTION_13_41();
                                      if (test_string_s())
                                      {
                                        goto LABEL_3;
                                      }

                                      *(v0 + 136) = v26;
                                      v310 = OUTLINED_FUNCTION_7_43();
                                      if (test_ptr(v310))
                                      {
                                        goto LABEL_3;
                                      }

                                      OUTLINED_FUNCTION_6_43();
                                      test_verb_adj();
LABEL_188:
                                      v205 = v36;
                                      OUTLINED_FUNCTION_31_30();
                                      if (!v37)
                                      {
LABEL_377:
                                        v537 = OUTLINED_FUNCTION_37_23();
                                        starttest(v537, v538);
                                        v26 = (&v658 + 4);
                                        v539 = OUTLINED_FUNCTION_11_42();
                                        move_i(v539, v540, v541);
                                        OUTLINED_FUNCTION_59_16();
                                        v542 = insert_eng_stress();
                                        v44 = v205;
                                        if (!v542)
                                        {
                                          goto LABEL_3;
                                        }

                                        goto LABEL_17;
                                      }

                                      goto LABEL_238;
                                    }

                                    v561 = OUTLINED_FUNCTION_37_23();
                                    starttest(v561, v562);
                                    v563 = OUTLINED_FUNCTION_39_22();
                                    if (!lpta_loadp_setscan_r(v563, v564))
                                    {
                                      OUTLINED_FUNCTION_2_46();
                                      v205 = v36;
                                      if (!test_string_s())
                                      {
LABEL_359:
                                        v521 = OUTLINED_FUNCTION_19_37();
                                        if (test_synch(v521, v522, v523, v524))
                                        {
                                          v44 = v205;
                                          goto LABEL_17;
                                        }

                                        goto LABEL_238;
                                      }
                                    }

LABEL_408:
                                    v205 = v36;
                                    v565 = OUTLINED_FUNCTION_37_23();
                                    starttest(v565, v566);
                                    v369 = OUTLINED_FUNCTION_20_35();
LABEL_260:
                                    move_i(v369, v370, v371);
                                    LODWORD(v26) = 0;
LABEL_261:
                                    v372 = OUTLINED_FUNCTION_49_17();
                                    move_i(v372, v373, 0);
                                    OUTLINED_FUNCTION_29_30();
                                    apply_strong_alternation();
                                    v44 = v205;
                                    if (!v374)
                                    {
                                      goto LABEL_3;
                                    }

                                    goto LABEL_17;
                                  }

                                  v567 = OUTLINED_FUNCTION_37_23();
                                  starttest(v567, v568);
                                  v569 = OUTLINED_FUNCTION_37_23();
                                  bspush_ca(v569);
                                  v570 = OUTLINED_FUNCTION_40_21();
                                  if (!lpta_loadp_setscan_r(v570, v571))
                                  {
                                    v572 = OUTLINED_FUNCTION_37_23();
                                    bspush_ca_scan(v572, v573);
                                    v574 = OUTLINED_FUNCTION_16_40();
                                    v577 = testFldeq(v574, v575, v576, 1);
                                    v44 = v36;
                                    v68 = v36;
                                    if (!v577)
                                    {
LABEL_411:
                                      v578 = advance_tok(v0);
                                      v44 = v68;
                                      v69 = v68;
                                      if (!v578)
                                      {
LABEL_412:
                                        v579 = OUTLINED_FUNCTION_37_23();
                                        starttest(v579, v580);
                                        v26 = (&v661 + 4);
                                        v581 = OUTLINED_FUNCTION_42_21();
                                        move_i(v581, v582, 3);
                                        OUTLINED_FUNCTION_59_16();
                                        v583 = insert_eng_stress();
                                        v44 = v69;
                                        if (!v583)
                                        {
                                          goto LABEL_3;
                                        }
                                      }
                                    }

                                    goto LABEL_17;
                                  }
                                }

                                else
                                {
                                  v584 = OUTLINED_FUNCTION_37_23();
                                  starttest(v584, v585);
                                  v586 = OUTLINED_FUNCTION_37_23();
                                  bspush_ca(v586);
                                  v587 = OUTLINED_FUNCTION_40_21();
                                  if (!lpta_loadp_setscan_r(v587, v588))
                                  {
                                    v589 = OUTLINED_FUNCTION_37_23();
                                    bspush_ca_scan(v589, v590);
                                    v591 = OUTLINED_FUNCTION_16_40();
                                    v594 = testFldeq(v591, v592, v593, 1);
                                    v44 = v36;
                                    v66 = v36;
                                    if (!v594)
                                    {
LABEL_416:
                                      v595 = advance_tok(v0);
                                      v44 = v66;
                                      v67 = v66;
                                      if (!v595)
                                      {
LABEL_417:
                                        v596 = OUTLINED_FUNCTION_37_23();
                                        starttest(v596, v597);
                                        v26 = (&v661 + 4);
                                        v598 = OUTLINED_FUNCTION_42_21();
                                        move_i(v598, v599, 3);
                                        OUTLINED_FUNCTION_59_16();
                                        v600 = insert_eng_stress();
                                        v44 = v67;
                                        if (!v600)
                                        {
                                          goto LABEL_3;
                                        }
                                      }
                                    }

                                    goto LABEL_17;
                                  }
                                }

LABEL_464:
                                v44 = v36;
                                goto LABEL_17;
                              }

                              v453 = OUTLINED_FUNCTION_37_23();
                              bspush_ca_scan(v453, v454);
                              OUTLINED_FUNCTION_4_44();
                              if (test_string_s())
                              {
                                goto LABEL_374;
                              }

                              v455 = OUTLINED_FUNCTION_37_23();
                              bspush_ca_scan(v455, v456);
                              OUTLINED_FUNCTION_2_46();
                              v457 = test_string_s();
                              v44 = v36;
                              v64 = v36;
                              if (v457)
                              {
                                goto LABEL_17;
                              }

LABEL_322:
                              LODWORD(v26) = v64;
                              v458 = OUTLINED_FUNCTION_19_37();
                              if (test_synch(v458, v459, v460, v461))
                              {
                                goto LABEL_374;
                              }

                              v462 = OUTLINED_FUNCTION_37_23();
                              starttest(v462, v463);
                              v464 = OUTLINED_FUNCTION_40_21();
                              if (lpta_loadp_setscan_r(v464, v465))
                              {
                                v36 = v64;
                                goto LABEL_15;
                              }

                              v551 = OUTLINED_FUNCTION_37_23();
                              bspush_ca_scan(v551, v552);
                              v553 = OUTLINED_FUNCTION_16_40();
                              v556 = testFldeq(v553, v554, v555, 1);
                              v44 = v64;
                              v65 = v64;
                              if (v556)
                              {
                                goto LABEL_17;
                              }

LABEL_399:
                              v36 = v65;
                              if (advance_tok(v0))
                              {
                                goto LABEL_464;
                              }
                            }

                            else
                            {
                              OUTLINED_FUNCTION_6_43();
                              test_nva();
LABEL_420:
                              OUTLINED_FUNCTION_121_7();
                              if (!v601)
                              {
                                OUTLINED_FUNCTION_6_43();
                                test_noun_verb();
                              }

LABEL_422:
                              if (!*(v0 + 4438))
                              {
                                OUTLINED_FUNCTION_6_43();
                                test_noun_adj();
                              }

                              v36 = v26;
LABEL_425:
                              OUTLINED_FUNCTION_24_32();
                              if (!v37)
                              {
                                goto LABEL_15;
                              }
                            }
                          }

                          else
                          {
                            v608 = OUTLINED_FUNCTION_37_23();
                            starttest(v608, v609);
                            v610 = OUTLINED_FUNCTION_50_17();
                            if (!lpta_loadp_setscan_r(v610, v611))
                            {
                              OUTLINED_FUNCTION_37_23();
                              bspush_ca_scan_boa();
                              *(v0 + 136) = v26;
                              v631 = *(v0 + 1232);
                              v632 = OUTLINED_FUNCTION_7_43();
                              if (test_ptr(v632))
                              {
                                v44 = v36;
                              }

                              else
                              {
                                v44 = 1;
                              }

                              goto LABEL_17;
                            }

LABEL_433:
                            OUTLINED_FUNCTION_6_43();
                            test_nva();
LABEL_434:
                            OUTLINED_FUNCTION_121_7();
                            if (!v612)
                            {
                              OUTLINED_FUNCTION_6_43();
                              test_noun_adj();
                            }

                            v36 = v26;
LABEL_437:
                            v613 = *(v0 + 2254);
                            OUTLINED_FUNCTION_60_16();
                            if (!v37)
                            {
                              goto LABEL_15;
                            }
                          }

                          goto LABEL_87;
                        }

                        v614 = OUTLINED_FUNCTION_37_23();
                        starttest(v614, v615);
                        v616 = OUTLINED_FUNCTION_68_13();
                        lpta_loadpn(v616, v617);
                        v618 = OUTLINED_FUNCTION_84_12();
                        rpta_loadpn(v618, v619);
                        if (compare_ptas(v0) || testeq(v0) || (v620 = OUTLINED_FUNCTION_50_17(), LODWORD(v26) = v36, lpta_loadp_setscan_l(v620, v621)))
                        {
LABEL_443:
                          OUTLINED_FUNCTION_6_43();
                          test_nva();
LABEL_444:
                          OUTLINED_FUNCTION_121_7();
                          if (!v622)
                          {
                            OUTLINED_FUNCTION_6_43();
                            test_noun_verb();
                          }

LABEL_446:
                          if (!*(v0 + 4438))
                          {
                            OUTLINED_FUNCTION_6_43();
                            test_noun_adj();
                          }

LABEL_448:
                          v623 = OUTLINED_FUNCTION_37_23();
                          starttest(v623, v624);
                          v625 = OUTLINED_FUNCTION_37_23();
                          bspush_ca(v625);
                          v203 = *(v0 + 2250);
                          v204 = *(v0 + 4438);
                          v63 = v26;
                          v44 = v26;
LABEL_109:
                          if (v203 == v204)
                          {
LABEL_110:
                            v36 = v63;
                            goto LABEL_15;
                          }

                          goto LABEL_17;
                        }

LABEL_117:
                        v206 = OUTLINED_FUNCTION_19_37();
                        if (!chstream(v206, v207, v208))
                        {
                          OUTLINED_FUNCTION_2_46();
                          if (!test_string_s())
                          {
                            v209 = OUTLINED_FUNCTION_37_23();
                            bspush_ca_scan(v209, v210);
                            OUTLINED_FUNCTION_4_44();
                            v211 = test_string_s();
                            v62 = v26;
                            v44 = v26;
                            if (v211)
                            {
                              goto LABEL_17;
                            }

LABEL_120:
                            OUTLINED_FUNCTION_17_38();
                            v212 = test_string_s();
                            v36 = v62;
                            v44 = v62;
                            if (v212)
                            {
                              goto LABEL_17;
                            }

LABEL_121:
                            v213 = OUTLINED_FUNCTION_37_23();
                            if (!chstream(v213, v214, 4u))
                            {
                              v215 = OUTLINED_FUNCTION_16_40();
                              if (!testFldeq(v215, v216, v217, 7))
                              {
                                v218 = OUTLINED_FUNCTION_61_16();
                                if (!testFldeq(v218, v219, 2, 25) && !advance_tok(v0))
                                {
                                  goto LABEL_15;
                                }
                              }
                            }

                            goto LABEL_464;
                          }
                        }

LABEL_374:
                        v44 = v26;
                        goto LABEL_17;
                      }

                      OUTLINED_FUNCTION_6_43();
                      test_nva();
LABEL_450:
                      OUTLINED_FUNCTION_121_7();
                      if (!v626)
                      {
                        OUTLINED_FUNCTION_6_43();
                        test_noun_verb();
                      }

LABEL_452:
                      v627 = OUTLINED_FUNCTION_37_23();
                      starttest(v627, v628);
                      v629 = OUTLINED_FUNCTION_37_23();
                      bspush_ca(v629);
                      v194 = *(v0 + 2246);
                      v195 = *(v0 + 4438);
                      v61 = v26;
                      v44 = v26;
LABEL_103:
                      if (v194 != v195)
                      {
                        goto LABEL_17;
                      }

LABEL_104:
                      v36 = v61;
LABEL_87:
                      v164 = OUTLINED_FUNCTION_37_23();
                      starttest(v164, v165);
LABEL_88:
                      v26 = (&v661 + 4);
                      v40 = OUTLINED_FUNCTION_42_21();
                      v42 = 3;
LABEL_16:
                      move_i(v40, v41, v42);
                      OUTLINED_FUNCTION_59_16();
                      v43 = insert_eng_stress();
                      v44 = v36;
                      if (!v43)
                      {
                        goto LABEL_3;
                      }

                      goto LABEL_17;
                    }

                    v413 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v413, v414);
                    OUTLINED_FUNCTION_4_44();
                    v415 = test_string_s();
                    v59 = v36;
                    v44 = v36;
                    if (v415)
                    {
                      goto LABEL_17;
                    }

LABEL_287:
                    v36 = v59;
                    OUTLINED_FUNCTION_13_41();
                    if (test_string_s())
                    {
                      goto LABEL_464;
                    }

                    *(v0 + 136) = v26;
                    v416 = OUTLINED_FUNCTION_7_43();
                    if (test_ptr(v416))
                    {
                      goto LABEL_464;
                    }

                    OUTLINED_FUNCTION_6_43();
                    test_verb_adj();
LABEL_290:
                    LODWORD(v26) = v36;
                    v417 = OUTLINED_FUNCTION_62_16();
                    if (!lpta_loadp_setscan_l(v417, v418) && !advance_tok(v0))
                    {
LABEL_292:
                      v419 = OUTLINED_FUNCTION_111_7();
                      savescptr(v419, v420, v421);
LABEL_293:
                      LODWORD(v26) = v36;
                    }

                    v422 = OUTLINED_FUNCTION_37_23();
                    starttest(v422, v423);
                    v424 = *(v0 + 2254);
                    OUTLINED_FUNCTION_60_16();
                    if (v37)
                    {
                      lpta_rpta_loadp(v0, &v648, &v662);
                      v425 = OUTLINED_FUNCTION_10_42();
                      v36 = v26;
                      if (!insert_2pt_s(v425, v426, v427, v428, v429))
                      {
                        goto LABEL_362;
                      }
                    }

                    else
                    {
                      v36 = v26;
                    }

LABEL_318:
                    lpta_rpta_loadp(v0, &v648, &v662);
                    v447 = OUTLINED_FUNCTION_10_42();
                    v452 = insert_2pt_s(v447, v448, v449, v450, v451);
                    LODWORD(v26) = v36;
                    v44 = v36;
                    if (v452)
                    {
                      goto LABEL_17;
                    }

LABEL_362:
                    v36 = v26;
                    goto LABEL_15;
                  }

                  v357 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v357, v358);
                  OUTLINED_FUNCTION_17_38();
                  v359 = test_string_s();
                  v57 = v26;
                  v44 = v26;
                  if (v359)
                  {
                    goto LABEL_17;
                  }

LABEL_240:
                  v36 = v57;
                  OUTLINED_FUNCTION_13_41();
                  if (test_string_s())
                  {
                    goto LABEL_464;
                  }

                  *(v0 + 136) = v26;
                  v360 = OUTLINED_FUNCTION_7_43();
                  if (test_ptr(v360))
                  {
                    goto LABEL_464;
                  }

                  OUTLINED_FUNCTION_97_9();
LABEL_243:
                  OUTLINED_FUNCTION_6_43();
                  test_noun_verb();
LABEL_244:
                  OUTLINED_FUNCTION_24_32();
                  if (!v37)
                  {
LABEL_245:
                    v205 = v36;
LABEL_259:
                    v367 = OUTLINED_FUNCTION_37_23();
                    starttest(v367, v368);
                    v369 = OUTLINED_FUNCTION_18_37();
                    goto LABEL_260;
                  }

                  goto LABEL_305;
                }

                OUTLINED_FUNCTION_97_9();
LABEL_234:
                OUTLINED_FUNCTION_6_43();
                test_verb_adj();
                v36 = v26;
LABEL_235:
                LODWORD(v26) = v36;
                if (*(v0 + 2254) == *(v0 + 4438))
                {
                  goto LABEL_305;
                }

LABEL_236:
                v348 = OUTLINED_FUNCTION_37_23();
                starttest(v348, v349);
                v350 = OUTLINED_FUNCTION_39_22();
                if (!lpta_loadp_setscan_r(v350, v351))
                {
                  v362 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v362, v363);
                  OUTLINED_FUNCTION_2_46();
                  if (test_string_s())
                  {
                    goto LABEL_374;
                  }

                  v364 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v364, v365);
                  OUTLINED_FUNCTION_2_46();
                  v366 = test_string_s();
                  v56 = v26;
                  v44 = v26;
                  if (v366)
                  {
                    goto LABEL_17;
                  }

LABEL_256:
                  v36 = v56;
                  OUTLINED_FUNCTION_6_43();
                  test_noun_verb();
LABEL_257:
                  OUTLINED_FUNCTION_24_32();
                  if (!v37)
                  {
LABEL_258:
                    v205 = v36;
                    goto LABEL_259;
                  }

LABEL_305:
                  insert_adj_stress();
                  goto LABEL_3;
                }

LABEL_237:
                v205 = v26;
              }

              else
              {
                OUTLINED_FUNCTION_97_9();
LABEL_214:
                OUTLINED_FUNCTION_6_43();
                test_verb_adj();
                v205 = v26;
LABEL_215:
                OUTLINED_FUNCTION_31_30();
                if (!v37)
                {
                  goto LABEL_305;
                }
              }

LABEL_238:
              v352 = OUTLINED_FUNCTION_37_23();
              starttest(v352, v353);
              v354 = OUTLINED_FUNCTION_18_37();
              move_i(v354, v355, v356);
              LODWORD(v26) = 0;
              goto LABEL_261;
            }

            OUTLINED_FUNCTION_6_43();
            test_noun_verb();
LABEL_302:
            v205 = v36;
            OUTLINED_FUNCTION_24_32();
            if (v37)
            {
              goto LABEL_259;
            }

            LODWORD(v26) = v36;
LABEL_307:
            v434 = OUTLINED_FUNCTION_37_23();
            starttest(v434, v435);
            v436 = OUTLINED_FUNCTION_50_17();
            if (!lpta_loadp_setscan_r(v436, v437))
            {
              v36 = v26;
              if (!advance_tok(v0))
              {
LABEL_309:
                savescptr(v0, 113, &v656);
                v438 = advance_tok(v0);
                v44 = v36;
                if (v438)
                {
                  goto LABEL_17;
                }

LABEL_310:
                savescptr(v0, 114, &v654);
LABEL_311:
                LODWORD(v26) = v36;
              }
            }

            v332 = v26;
            v333 = &v656;
            v334 = &v654;
          }

          else
          {
            OUTLINED_FUNCTION_6_43();
            test_noun_verb();
            v205 = v36;
LABEL_203:
            OUTLINED_FUNCTION_31_30();
            if (v37)
            {
              goto LABEL_238;
            }

            v327 = v205;
LABEL_218:
            v328 = OUTLINED_FUNCTION_37_23();
            starttest(v328, v329);
            v330 = OUTLINED_FUNCTION_50_17();
            if (!lpta_loadp_setscan_r(v330, v331))
            {
              v36 = v327;
              if (!advance_tok(v0))
              {
LABEL_220:
                savescptr(v0, 106, &v656);
LABEL_221:
                v327 = v36;
              }
            }

            v332 = v327;
            v333 = &v664;
            v334 = &v656;
          }

          lpta_rpta_loadp(v0, v333, v334);
          LODWORD(v26) = 0;
          v439 = OUTLINED_FUNCTION_14_41();
          v443 = insert_2pt_i(v439, v440, v441, v442, 0);
          v44 = v332;
          if (!v443)
          {
            goto LABEL_3;
          }

          goto LABEL_17;
        }

        v395 = OUTLINED_FUNCTION_37_23();
        starttest(v395, v396);
        v397 = OUTLINED_FUNCTION_40_21();
        if (lpta_loadp_setscan_r(v397, v398))
        {
LABEL_274:
          LODWORD(v26) = v36;
          v399 = OUTLINED_FUNCTION_37_23();
          starttest(v399, v400);
          v401 = OUTLINED_FUNCTION_50_17();
          lpta_loadpn(v401, v402);
          v403 = OUTLINED_FUNCTION_71_13();
          rpta_loadpn(v403, v404);
          if (!compare_ptas(v0) && !testeq(v0))
          {
            v405 = OUTLINED_FUNCTION_68_13();
            lpta_loadpn(v405, v406);
            v407 = OUTLINED_FUNCTION_84_12();
            rpta_loadpn(v407, v408);
            if (!compare_ptas(v0) && !testeq(v0))
            {
              v409 = OUTLINED_FUNCTION_40_21();
              if (!lpta_loadp_setscan_l(v409, v410))
              {
LABEL_279:
                savescptr(v0, 75, &v659);
                v411 = advanc(v0);
                v44 = v36;
                if (v411)
                {
                  goto LABEL_17;
                }

LABEL_280:
                savescptr(v0, 76, v0 + 1752);
                v412 = advance_tok(v0);
                LODWORD(v26) = v36;
                v44 = v36;
                if (v412)
                {
                  goto LABEL_17;
                }

LABEL_369:
                savescptr(v0, 77, v0 + 1736);
                v525 = OUTLINED_FUNCTION_63_16();
                if (lpta_loadp_setscan_r(v525, v526))
                {
                  goto LABEL_374;
                }

                v527 = advance_tok(v0);
                v36 = v26;
                v44 = v26;
                if (v527)
                {
                  goto LABEL_17;
                }

LABEL_371:
                LODWORD(v26) = v36;
                v528 = OUTLINED_FUNCTION_19_37();
                if (test_synch(v528, v529, v530, v531))
                {
                  goto LABEL_374;
                }

                v532 = OUTLINED_FUNCTION_37_23();
                bspush_ca(v532);
                v533 = OUTLINED_FUNCTION_40_21();
                if (lpta_loadp_setscan_l(v533, v534))
                {
                  goto LABEL_374;
                }

                v535 = OUTLINED_FUNCTION_61_16();
                if (testFldeq(v535, v536, 2, 3))
                {
                  goto LABEL_374;
                }

                v633 = advance_tok(v0);
                v54 = v36;
                v44 = v36;
                if (v633)
                {
                  goto LABEL_17;
                }

LABEL_459:
                v36 = v54;
                goto LABEL_201;
              }
            }
          }

LABEL_334:
          v480 = OUTLINED_FUNCTION_37_23();
          starttest(v480, v481);
          v482 = OUTLINED_FUNCTION_50_17();
          lpta_loadpn(v482, v483);
          v484 = OUTLINED_FUNCTION_71_13();
          rpta_loadpn(v484, v485);
          if (!compare_ptas(v0) && !testeq(v0))
          {
            v486 = OUTLINED_FUNCTION_68_13();
            lpta_loadpn(v486, v487);
            v488 = OUTLINED_FUNCTION_84_12();
            rpta_loadpn(v488, v489);
            if (!compare_ptas(v0) && !testeq(v0))
            {
              v490 = OUTLINED_FUNCTION_63_16();
              if (!lpta_loadp_setscan_r(v490, v491))
              {
                v36 = v26;
                if (!advanc(v0))
                {
LABEL_352:
                  OUTLINED_FUNCTION_115_7(83);
                  v512 = advance_tok(v0);
                  v44 = v36;
                  if (v512)
                  {
                    goto LABEL_17;
                  }

LABEL_353:
                  v513 = OUTLINED_FUNCTION_90_10();
                  savescptr(v513, v514, v515);
                  v516 = OUTLINED_FUNCTION_90_10();
                  lpta_rpta_loadp(v516, v517, v518);
                  v519 = OUTLINED_FUNCTION_38_22();
                  if (setd_lookup(v519, v520, 245))
                  {
                    goto LABEL_464;
                  }

                  goto LABEL_201;
                }
              }
            }
          }

LABEL_340:
          v492 = OUTLINED_FUNCTION_37_23();
          starttest(v492, v493);
          v494 = OUTLINED_FUNCTION_50_17();
          lpta_loadpn(v494, v495);
          v496 = OUTLINED_FUNCTION_71_13();
          rpta_loadpn(v496, v497);
          if (compare_ptas(v0) || testeq(v0) || (v498 = OUTLINED_FUNCTION_68_13(), lpta_loadpn(v498, v499), v500 = OUTLINED_FUNCTION_84_12(), rpta_loadpn(v500, v501), compare_ptas(v0)) || testeq(v0) || (v502 = OUTLINED_FUNCTION_63_16(), lpta_loadp_setscan_r(v502, v503)) || (v36 = v26, advanc(v0)))
          {
LABEL_346:
            OUTLINED_FUNCTION_6_43();
            test_noun_adj();
            v36 = v26;
LABEL_347:
            OUTLINED_FUNCTION_24_32();
            if (v37)
            {
              goto LABEL_100;
            }

            goto LABEL_201;
          }

LABEL_350:
          OUTLINED_FUNCTION_115_7(87);
          v504 = advance_tok(v0);
          v44 = v36;
          if (v504)
          {
            goto LABEL_17;
          }

LABEL_351:
          v505 = OUTLINED_FUNCTION_90_10();
          savescptr(v505, v506, v507);
          v508 = OUTLINED_FUNCTION_37_23();
          bspush_ca(v508);
          v509 = OUTLINED_FUNCTION_90_10();
          lpta_rpta_loadp(v509, v510, v511);
          v199 = OUTLINED_FUNCTION_38_22();
          v201 = 51;
LABEL_106:
          v202 = setd_lookup(v199, v200, v201);
          v55 = v36;
          v44 = v36;
          if (v202)
          {
            goto LABEL_17;
          }

LABEL_107:
          v36 = v55;
        }

        else
        {
          v444 = OUTLINED_FUNCTION_16_40();
          if (testFldeq(v444, v445, v446, 18) || advance_tok(v0))
          {
            goto LABEL_464;
          }
        }

LABEL_100:
        v192 = OUTLINED_FUNCTION_37_23();
        starttest(v192, v193);
LABEL_101:
        v26 = (&v661 + 4);
        v40 = OUTLINED_FUNCTION_11_42();
        goto LABEL_16;
      }

      OUTLINED_FUNCTION_6_43();
      test_noun_verb();
LABEL_247:
      OUTLINED_FUNCTION_31_30();
      if (!v37)
      {
        goto LABEL_87;
      }
    }

    else
    {
      OUTLINED_FUNCTION_6_43();
      test_noun_verb();
      v36 = v26;
LABEL_196:
      OUTLINED_FUNCTION_24_32();
      if (v37)
      {
        goto LABEL_87;
      }
    }

LABEL_201:
    v315 = OUTLINED_FUNCTION_37_23();
    starttest(v315, v316);
    v26 = (&v661 + 4);
    v40 = OUTLINED_FUNCTION_42_21();
    v42 = 4;
    goto LABEL_16;
  }

  v32 = OUTLINED_FUNCTION_27_31();
  starttest(v32, v33);
  v34 = OUTLINED_FUNCTION_40_21();
  v36 = v26;
  if (lpta_loadp_setscan_r(v34, v35))
  {
LABEL_8:
    OUTLINED_FUNCTION_6_43();
    test_noun_verb();
    v36 = v26;
LABEL_9:
    OUTLINED_FUNCTION_31_30();
    if (!v37)
    {
      goto LABEL_100;
    }

LABEL_15:
    v38 = OUTLINED_FUNCTION_37_23();
    starttest(v38, v39);
    v26 = (&v661 + 4);
    v40 = OUTLINED_FUNCTION_42_21();
    v42 = 2;
    goto LABEL_16;
  }

  while (2)
  {
    LODWORD(v26) = v36;
    v166 = OUTLINED_FUNCTION_19_37();
    if (chstream(v166, v167, v168))
    {
      goto LABEL_374;
    }

    OUTLINED_FUNCTION_38_22();
    v169 = test_string_s();
    v44 = v36;
    if (v169)
    {
      goto LABEL_17;
    }

LABEL_91:
    LODWORD(v26) = v36;
    v170 = OUTLINED_FUNCTION_26_32();
    if (chstream(v170, v171, 4u))
    {
      goto LABEL_374;
    }

    v172 = OUTLINED_FUNCTION_37_23();
    bspush_ca_scan(v172, v173);
    v174 = OUTLINED_FUNCTION_16_40();
    if (testFldeq(v174, v175, v176, 3))
    {
      goto LABEL_374;
    }

    v177 = OUTLINED_FUNCTION_61_16();
    if (testFldeq(v177, v178, 2, 3))
    {
      goto LABEL_374;
    }

    v179 = advance_tok(v0);
    v44 = v36;
    if (v179)
    {
      goto LABEL_17;
    }

LABEL_95:
    v180 = advanc(v0);
    v44 = v36;
    if (!v180)
    {
LABEL_96:
      OUTLINED_FUNCTION_115_7(12);
      v181 = advance_tok(v0);
      v44 = v36;
      if (v181)
      {
        goto LABEL_17;
      }

LABEL_97:
      v182 = OUTLINED_FUNCTION_90_10();
      savescptr(v182, v183, v184);
      v185 = OUTLINED_FUNCTION_90_10();
      lpta_rpta_loadp(v185, v186, v187);
      v188 = OUTLINED_FUNCTION_38_22();
      if (!setd_lookup(v188, v189, 291))
      {
        if (*(v0 + 3710) != *(v0 + 3706))
        {
          break;
        }

        v190 = OUTLINED_FUNCTION_37_23();
        starttest_e(v190, v191);
        goto LABEL_101;
      }

      goto LABEL_464;
    }

LABEL_17:
    v45 = *(v0 + 104);
    if (v45)
    {
      v46 = OUTLINED_FUNCTION_53_17(v45);
      v36 = v47;
    }

    else
    {
      v46 = vback(v0, v44);
      v36 = 0;
    }

    if ((v46 - 1) <= 0x100)
    {
      OUTLINED_FUNCTION_91_10();
      v48 = v36;
      v49 = v36;
      v50 = v36;
      v51 = v36;
      v52 = v36;
      v53 = v36;
      v54 = v36;
      v55 = v36;
      v56 = v36;
      v57 = v36;
      v58 = v36;
      v59 = v36;
      v60 = v36;
      v61 = v36;
      v62 = v36;
      v63 = v36;
      v64 = v36;
      v65 = v36;
      v66 = v36;
      v67 = v36;
      v68 = v36;
      v69 = v36;
      switch(v70)
      {
        case 1:
          goto LABEL_13;
        case 2:
        case 40:
        case 63:
        case 67:
        case 157:
        case 197:
          goto LABEL_87;
        case 3:
        case 4:
        case 5:
        case 13:
        case 14:
        case 15:
        case 18:
        case 22:
        case 23:
        case 32:
        case 36:
        case 37:
        case 41:
        case 42:
        case 46:
        case 47:
        case 57:
        case 58:
        case 62:
        case 64:
        case 65:
        case 68:
        case 71:
        case 72:
        case 80:
        case 84:
        case 90:
        case 93:
        case 97:
        case 98:
        case 102:
        case 103:
        case 109:
        case 110:
        case 118:
        case 119:
        case 124:
        case 125:
        case 136:
        case 137:
        case 144:
        case 145:
        case 153:
        case 159:
        case 160:
        case 169:
        case 176:
        case 177:
        case 184:
        case 185:
        case 192:
        case 193:
        case 200:
        case 204:
        case 205:
        case 209:
        case 215:
        case 216:
        case 225:
        case 226:
        case 235:
        case 236:
        case 245:
        case 246:
        case 250:
        case 251:
        case 252:
        case 255:
        case 256:
          break;
        case 6:
          LODWORD(v26) = v36;
          goto LABEL_129;
        case 7:
          LODWORD(v26) = v36;
          goto LABEL_8;
        case 8:
          continue;
        case 9:
          goto LABEL_91;
        case 10:
          goto LABEL_95;
        case 11:
          goto LABEL_96;
        case 12:
          goto LABEL_97;
        case 16:
          goto LABEL_9;
        case 17:
        case 45:
        case 96:
        case 175:
          goto LABEL_100;
        case 19:
          LODWORD(v26) = v36;
          goto LABEL_130;
        case 20:
          goto LABEL_192;
        case 21:
          goto LABEL_199;
        case 24:
        case 156:
        case 181:
        case 208:
        case 214:
        case 222:
          goto LABEL_15;
        case 25:
          LODWORD(v26) = v36;
          goto LABEL_206;
        case 26:
          v71 = OUTLINED_FUNCTION_37_23();
          bspush_ca_scan(v71, v72);
          goto LABEL_26;
        case 27:
          goto LABEL_208;
        case 28:
          OUTLINED_FUNCTION_2_46();
          v76 = test_string_s();
          v44 = v36;
          if (v76)
          {
            goto LABEL_17;
          }

          goto LABEL_26;
        case 29:
LABEL_26:
          OUTLINED_FUNCTION_38_22();
          v77 = test_string_s();
          v48 = v36;
          v44 = v36;
          if (!v77)
          {
            goto LABEL_208;
          }

          goto LABEL_17;
        case 30:
          OUTLINED_FUNCTION_4_44();
          v155 = test_string_s();
          v49 = v36;
          v44 = v36;
          if (!v155)
          {
            goto LABEL_210;
          }

          goto LABEL_17;
        case 31:
          goto LABEL_210;
        case 33:
          goto LABEL_132;
        case 34:
          goto LABEL_196;
        case 35:
        case 92:
        case 228:
        case 238:
          goto LABEL_201;
        case 38:
          goto LABEL_135;
        case 39:
          goto LABEL_247;
        case 43:
          goto LABEL_138;
        case 44:
          goto LABEL_251;
        case 48:
          goto LABEL_140;
        case 49:
          OUTLINED_FUNCTION_38_22();
          v163 = test_string_s();
          v50 = v36;
          v44 = v36;
          if (!v163)
          {
            goto LABEL_224;
          }

          goto LABEL_17;
        case 50:
          goto LABEL_224;
        case 51:
          LODWORD(v26) = v36;
          goto LABEL_229;
        case 52:
          LODWORD(v26) = v36;
          goto LABEL_381;
        case 53:
          v82 = OUTLINED_FUNCTION_16_40();
          v85 = testFldeq(v82, v83, v84, 2);
          v44 = v36;
          if (!v85)
          {
            v86 = advance_tok(v0);
            v51 = v36;
            v44 = v36;
            if (!v86)
            {
              goto LABEL_462;
            }
          }

          goto LABEL_17;
        case 54:
          goto LABEL_462;
        case 55:
          v73 = OUTLINED_FUNCTION_61_16();
          v75 = testFldeq(v73, v74, 2, 25);
          v52 = v36;
          v44 = v36;
          if (!v75)
          {
            goto LABEL_463;
          }

          goto LABEL_17;
        case 56:
          goto LABEL_463;
        case 59:
          goto LABEL_383;
        case 60:
          v78 = OUTLINED_FUNCTION_16_40();
          v81 = testFldeq(v78, v79, v80, 1);
          v53 = v36;
          v44 = v36;
          if (!v81)
          {
            goto LABEL_430;
          }

          goto LABEL_17;
        case 61:
          goto LABEL_430;
        case 66:
          goto LABEL_230;
        case 69:
          goto LABEL_143;
        case 70:
          goto LABEL_274;
        case 73:
          LODWORD(v26) = v36;
          goto LABEL_334;
        case 74:
          goto LABEL_279;
        case 75:
          goto LABEL_280;
        case 76:
          LODWORD(v26) = v36;
          goto LABEL_369;
        case 77:
          goto LABEL_371;
        case 78:
          is_copula_verb();
          v54 = v36;
          v44 = v36;
          if (!v161)
          {
            goto LABEL_459;
          }

          goto LABEL_17;
        case 79:
          goto LABEL_459;
        case 81:
          LODWORD(v26) = v36;
          goto LABEL_340;
        case 82:
          goto LABEL_352;
        case 83:
          goto LABEL_353;
        case 85:
          LODWORD(v26) = v36;
          goto LABEL_346;
        case 86:
          goto LABEL_350;
        case 87:
          goto LABEL_351;
        case 88:
          v196 = OUTLINED_FUNCTION_90_10();
          lpta_rpta_loadp(v196, v197, v198);
          v199 = OUTLINED_FUNCTION_38_22();
          v201 = 221;
          goto LABEL_106;
        case 89:
          goto LABEL_107;
        case 91:
          goto LABEL_347;
        case 94:
          goto LABEL_146;
        case 95:
          goto LABEL_283;
        case 99:
          goto LABEL_147;
        case 100:
          v205 = v36;
          goto LABEL_203;
        case 101:
          v327 = v36;
          goto LABEL_218;
        case 104:
          goto LABEL_221;
        case 105:
          goto LABEL_220;
        case 106:
          goto LABEL_150;
        case 107:
          goto LABEL_302;
        case 108:
          LODWORD(v26) = v36;
          goto LABEL_307;
        case 111:
          goto LABEL_311;
        case 112:
          goto LABEL_309;
        case 113:
          goto LABEL_310;
        case 114:
          LODWORD(v26) = v36;
          goto LABEL_151;
        case 115:
          LODWORD(v26) = v36;
          goto LABEL_214;
        case 116:
          v205 = v36;
          goto LABEL_215;
        case 117:
          goto LABEL_305;
        case 120:
          LODWORD(v26) = v36;
          goto LABEL_152;
        case 121:
          LODWORD(v26) = v36;
          goto LABEL_234;
        case 122:
          goto LABEL_235;
        case 123:
          LODWORD(v26) = v36;
          goto LABEL_236;
        case 126:
          LODWORD(v26) = v36;
          goto LABEL_237;
        case 127:
          v150 = OUTLINED_FUNCTION_37_23();
          bspush_ca_scan(v150, v151);
          OUTLINED_FUNCTION_2_46();
          v152 = test_string_s();
          v44 = v36;
          if (v152)
          {
            goto LABEL_17;
          }

          v153 = OUTLINED_FUNCTION_37_23();
          bspush_ca_scan(v153, v154);
          goto LABEL_79;
        case 128:
        case 131:
        case 132:
LABEL_79:
          OUTLINED_FUNCTION_2_46();
          v160 = test_string_s();
          v56 = v36;
          v44 = v36;
          if (!v160)
          {
            goto LABEL_256;
          }

          goto LABEL_17;
        case 129:
        case 130:
        case 133:
          goto LABEL_256;
        case 134:
          goto LABEL_257;
        case 135:
          goto LABEL_258;
        case 138:
          LODWORD(v26) = v36;
          goto LABEL_153;
        case 139:
          OUTLINED_FUNCTION_17_38();
          v162 = test_string_s();
          v57 = v36;
          v44 = v36;
          if (!v162)
          {
            goto LABEL_240;
          }

          goto LABEL_17;
        case 140:
          goto LABEL_240;
        case 141:
          goto LABEL_243;
        case 142:
          goto LABEL_244;
        case 143:
          goto LABEL_245;
        case 146:
          goto LABEL_155;
        case 147:
          v156 = OUTLINED_FUNCTION_37_23();
          bspush_ca_scan(v156, v157);
          goto LABEL_75;
        case 148:
          goto LABEL_264;
        case 149:
LABEL_75:
          OUTLINED_FUNCTION_5_44();
          v158 = test_string_s();
          v58 = v36;
          v44 = v36;
          if (!v158)
          {
            goto LABEL_264;
          }

          goto LABEL_17;
        case 150:
          goto LABEL_267;
        case 151:
          LODWORD(v26) = v36;
          goto LABEL_396;
        case 152:
          goto LABEL_271;
        case 154:
          goto LABEL_158;
        case 155:
          goto LABEL_402;
        case 158:
          v466 = v36;
          goto LABEL_331;
        case 161:
          LODWORD(v26) = v36;
          goto LABEL_159;
        case 162:
          OUTLINED_FUNCTION_2_46();
          v159 = test_string_s();
          v59 = v36;
          v44 = v36;
          if (!v159)
          {
            goto LABEL_287;
          }

          goto LABEL_17;
        case 163:
          goto LABEL_287;
        case 164:
          goto LABEL_290;
        case 165:
          goto LABEL_293;
        case 166:
          goto LABEL_292;
        case 167:
          goto LABEL_318;
        case 168:
          LODWORD(v26) = v36;
          goto LABEL_362;
        case 170:
          goto LABEL_161;
        case 171:
          OUTLINED_FUNCTION_38_22();
          v141 = test_string_s();
          v60 = v36;
          v44 = v36;
          if (!v141)
          {
            goto LABEL_299;
          }

          goto LABEL_17;
        case 172:
          goto LABEL_299;
        case 173:
          LODWORD(v26) = v36;
          goto LABEL_389;
        case 174:
          goto LABEL_392;
        case 178:
          goto LABEL_164;
        case 179:
          goto LABEL_450;
        case 180:
          LODWORD(v26) = v36;
          goto LABEL_452;
        case 182:
          v194 = *(v0 + 2254);
          v195 = *(v0 + 4438);
          v61 = v36;
          v44 = v36;
          goto LABEL_103;
        case 183:
          goto LABEL_104;
        case 186:
          goto LABEL_167;
        case 187:
          goto LABEL_443;
        case 188:
          LODWORD(v26) = v36;
          goto LABEL_117;
        case 189:
          OUTLINED_FUNCTION_4_44();
          v87 = test_string_s();
          v62 = v36;
          v44 = v36;
          if (!v87)
          {
            goto LABEL_120;
          }

          goto LABEL_17;
        case 190:
          goto LABEL_120;
        case 191:
          goto LABEL_121;
        case 194:
          goto LABEL_444;
        case 195:
          LODWORD(v26) = v36;
          goto LABEL_446;
        case 196:
          LODWORD(v26) = v36;
          goto LABEL_448;
        case 198:
          v203 = *(v0 + 2254);
          v204 = *(v0 + 4438);
          v63 = v36;
          v44 = v36;
          goto LABEL_109;
        case 199:
          goto LABEL_110;
        case 201:
          goto LABEL_170;
        case 202:
          goto LABEL_433;
        case 203:
          bspop_boa(v0);
          v104 = OUTLINED_FUNCTION_2_46();
          v107 = testFldeq(v104, v105, v106, 2);
          v44 = v36;
          if (v107)
          {
            goto LABEL_17;
          }

          v108 = advance_tok(v0);
          v44 = v36;
          if (v108)
          {
            goto LABEL_17;
          }

          v109 = OUTLINED_FUNCTION_2_46();
          v112 = testFldeq(v109, v110, v111, 1);
          v44 = v36;
          if (v112)
          {
            goto LABEL_17;
          }

          v113 = advance_tok(v0);
          v44 = v36;
          if (v113)
          {
            goto LABEL_17;
          }

          v549 = OUTLINED_FUNCTION_37_23();
          starttest_l(v549, v550);
          goto LABEL_88;
        case 206:
          goto LABEL_434;
        case 207:
          goto LABEL_437;
        case 210:
          goto LABEL_173;
        case 211:
          goto LABEL_420;
        case 212:
          LODWORD(v26) = v36;
          goto LABEL_422;
        case 213:
          goto LABEL_425;
        case 217:
          goto LABEL_175;
        case 218:
        case 219:
          OUTLINED_FUNCTION_2_46();
          v133 = test_string_s();
          v64 = v36;
          v44 = v36;
          if (!v133)
          {
            goto LABEL_322;
          }

          goto LABEL_17;
        case 220:
        case 221:
          goto LABEL_322;
        case 223:
          v142 = OUTLINED_FUNCTION_16_40();
          v145 = testFldeq(v142, v143, v144, 10);
          v65 = v36;
          v44 = v36;
          if (!v145)
          {
            goto LABEL_399;
          }

          goto LABEL_17;
        case 224:
          goto LABEL_399;
        case 227:
          goto LABEL_178;
        case 229:
          OUTLINED_FUNCTION_76_12();
          v114 = *(v0 + 1344);
          OUTLINED_FUNCTION_7_43();
          v115 = lpta_tstmover();
          v44 = v36;
          if (v115)
          {
            goto LABEL_17;
          }

          v116 = OUTLINED_FUNCTION_38_22();
          setscan_r(v116);
          v44 = v36;
          if (v117)
          {
            goto LABEL_17;
          }

          OUTLINED_FUNCTION_5_44();
          v118 = test_string_s();
          v44 = v36;
          if (v118)
          {
            goto LABEL_17;
          }

          v119 = OUTLINED_FUNCTION_37_23();
          bspush_ca_scan(v119, v120);
          goto LABEL_53;
        case 230:
          v146 = OUTLINED_FUNCTION_16_40();
          v149 = testFldeq(v146, v147, v148, 10);
          v66 = v36;
          v44 = v36;
          if (!v149)
          {
            goto LABEL_416;
          }

          goto LABEL_17;
        case 231:
          goto LABEL_416;
        case 232:
          goto LABEL_417;
        case 233:
          v134 = OUTLINED_FUNCTION_37_23();
          v136 = chstream(v134, v135, 4u);
          v44 = v36;
          if (v136)
          {
            goto LABEL_17;
          }

          v137 = OUTLINED_FUNCTION_16_40();
          v140 = testFldeq(v137, v138, v139, 5);
          v44 = v36;
          if (v140)
          {
            goto LABEL_17;
          }

          v125 = advance_tok(v0);
          goto LABEL_54;
        case 234:
LABEL_53:
          v121 = OUTLINED_FUNCTION_19_37();
          v125 = test_synch(v121, v122, v123, v124);
LABEL_54:
          v67 = v36;
          v44 = v36;
          if (!v125)
          {
            goto LABEL_417;
          }

          goto LABEL_17;
        case 237:
          goto LABEL_181;
        case 239:
          OUTLINED_FUNCTION_76_12();
          v88 = *(v0 + 1344);
          OUTLINED_FUNCTION_7_43();
          v89 = lpta_tstmover();
          v44 = v36;
          if (v89)
          {
            goto LABEL_17;
          }

          v90 = OUTLINED_FUNCTION_38_22();
          setscan_r(v90);
          v44 = v36;
          if (v91)
          {
            goto LABEL_17;
          }

          OUTLINED_FUNCTION_4_44();
          v92 = test_string_s();
          v44 = v36;
          if (v92)
          {
            goto LABEL_17;
          }

          v93 = OUTLINED_FUNCTION_37_23();
          bspush_ca_scan(v93, v94);
          goto LABEL_39;
        case 240:
          v100 = OUTLINED_FUNCTION_16_40();
          v103 = testFldeq(v100, v101, v102, 10);
          v68 = v36;
          v44 = v36;
          if (!v103)
          {
            goto LABEL_411;
          }

          goto LABEL_17;
        case 241:
          goto LABEL_411;
        case 242:
          goto LABEL_412;
        case 243:
          v126 = OUTLINED_FUNCTION_37_23();
          v128 = chstream(v126, v127, 4u);
          v44 = v36;
          if (v128)
          {
            goto LABEL_17;
          }

          v129 = OUTLINED_FUNCTION_16_40();
          v132 = testFldeq(v129, v130, v131, 5);
          v44 = v36;
          if (v132)
          {
            goto LABEL_17;
          }

          v99 = advance_tok(v0);
          goto LABEL_40;
        case 244:
LABEL_39:
          v95 = OUTLINED_FUNCTION_19_37();
          v99 = test_synch(v95, v96, v97, v98);
LABEL_40:
          v69 = v36;
          v44 = v36;
          if (!v99)
          {
            goto LABEL_412;
          }

          goto LABEL_17;
        case 247:
          goto LABEL_184;
        case 248:
          goto LABEL_408;
        case 249:
          v205 = v36;
          goto LABEL_359;
        case 253:
          goto LABEL_188;
        case 254:
          v205 = v36;
          goto LABEL_377;
        default:
          LODWORD(v26) = v36;
          goto LABEL_6;
      }
    }

    break;
  }

LABEL_3:
  vretproc(v0);
  v10 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_87_11();
}

uint64_t except_stress1()
{
  OUTLINED_FUNCTION_21_34();
  v134 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_30_30();
  v131 = 0;
  OUTLINED_FUNCTION_52_17();
  bzero(&v130, v2);
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

  v12 = OUTLINED_FUNCTION_41_21();
  get_parm(v12, v13, v14, -6);
  v15 = OUTLINED_FUNCTION_59_16();
  get_parm(v15, v16, v17, -6);
  v18 = OUTLINED_FUNCTION_73_12();
  push_ptr_init(v18, v19);
  v20 = OUTLINED_FUNCTION_72_12();
  push_ptr_init(v20, v21);
  v131 = 65532;
  v22 = OUTLINED_FUNCTION_42_21();
  fence_46(v22, v23);
  v24 = OUTLINED_FUNCTION_42_21();
  fence_46(v24, v25);
  v26 = OUTLINED_FUNCTION_37_23();
  starttest(v26, v27);
  v28 = OUTLINED_FUNCTION_49_17();
  if (lpta_loadp_setscan_r(v28, v29) || advance_tok(v0))
  {
LABEL_8:
    v36 = OUTLINED_FUNCTION_12_41();
    lpta_rpta_loadp(v36, v37, v38);
    v39 = OUTLINED_FUNCTION_38_22();
    if (!setd_lookup(v39, v40, 461))
    {
      v41 = OUTLINED_FUNCTION_23_34();
      starttest(v41, v42);
LABEL_10:
      v43 = OUTLINED_FUNCTION_11_42();
      move_i(v43, v44, v45);
      v46 = OUTLINED_FUNCTION_65_15();
      if (!insert_stressval(v46, v47, v48, &v131, v49, v50, v51, v52))
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

LABEL_16:
    v56 = OUTLINED_FUNCTION_12_41();
    lpta_rpta_loadp(v56, v57, v58);
    v59 = OUTLINED_FUNCTION_38_22();
    if (setd_lookup(v59, v60, 462) || (v61 = OUTLINED_FUNCTION_64_15(), lpta_rpta_loadp(v61, v62, v63), v64 = OUTLINED_FUNCTION_9_43(), insert_2pt_i(v64, v65, v66, v67, v68)) || (v69 = OUTLINED_FUNCTION_65_15(), lpta_rpta_loadp(v69, v70, v71), v72 = OUTLINED_FUNCTION_9_43(), insert_2pt_i(v72, v73, v74, v75, v76)))
    {
LABEL_19:
      v77 = OUTLINED_FUNCTION_12_41();
      lpta_rpta_loadp(v77, v78, v79);
      v80 = OUTLINED_FUNCTION_38_22();
      if (setd_lookup(v80, v81, 463) || (v82 = OUTLINED_FUNCTION_64_15(), lpta_rpta_loadp(v82, v83, v84), v85 = OUTLINED_FUNCTION_9_43(), insert_2pt_i(v85, v86, v87, v88, v89)) || (lpta_rpta_loadp(v0, v132, v133), OUTLINED_FUNCTION_56_17(), rpta_ctxtr(), v90 = OUTLINED_FUNCTION_9_43(), insert_2pt_i(v90, v91, v92, v93, v94)))
      {
LABEL_22:
        v95 = OUTLINED_FUNCTION_12_41();
        lpta_rpta_loadp(v95, v96, v97);
        v98 = OUTLINED_FUNCTION_38_22();
        if (!setd_lookup(v98, v99, 464))
        {
          v100 = OUTLINED_FUNCTION_64_15();
          lpta_rpta_loadp(v100, v101, v102);
          v103 = OUTLINED_FUNCTION_9_43();
          if (!insert_2pt_i(v103, v104, v105, v106, v107))
          {
            v108 = OUTLINED_FUNCTION_65_15();
            lpta_rpta_loadp(v108, v109, v110);
            v111 = OUTLINED_FUNCTION_14_41();
            if (!insert_2pt_i(v111, v112, v113, v114, 0))
            {
              goto LABEL_3;
            }
          }
        }

LABEL_25:
        v115 = OUTLINED_FUNCTION_12_41();
        lpta_rpta_loadp(v115, v116, v117);
        v118 = OUTLINED_FUNCTION_38_22();
        if (setd_lookup(v118, v119, 465))
        {
          goto LABEL_3;
        }

        v120 = OUTLINED_FUNCTION_64_15();
        lpta_rpta_loadp(v120, v121, v122);
        v123 = OUTLINED_FUNCTION_9_43();
        if (insert_2pt_i(v123, v124, v125, v126, v127))
        {
          goto LABEL_3;
        }

        v128 = OUTLINED_FUNCTION_37_23();
        starttest_l(v128, v129);
        goto LABEL_10;
      }
    }

    *(v0 + 4094) = 1;
    goto LABEL_3;
  }

  while (2)
  {
    OUTLINED_FUNCTION_78_12();
    v30 = OUTLINED_FUNCTION_67_15();
    savescptr(v30, v31, v32);
    if (!advance_tok(v0))
    {
LABEL_7:
      OUTLINED_FUNCTION_77_12();
      v33 = OUTLINED_FUNCTION_80_12();
      savescptr(v33, v34, v35);
      goto LABEL_8;
    }

LABEL_11:
    v53 = *(v0 + 104);
    if (v53)
    {
      v54 = OUTLINED_FUNCTION_53_17(v53);
    }

    else
    {
      v54 = OUTLINED_FUNCTION_99_8();
    }

    if ((v54 - 1) <= 0xA)
    {
      OUTLINED_FUNCTION_91_10();
      switch(v55)
      {
        case 1:
          continue;
        case 2:
          goto LABEL_7;
        case 3:
          goto LABEL_16;
        case 4:
        case 5:
        case 9:
        case 10:
          goto LABEL_3;
        case 6:
          goto LABEL_19;
        case 7:
          goto LABEL_22;
        case 8:
          goto LABEL_25;
        default:
          goto LABEL_8;
      }
    }

    break;
  }

LABEL_3:
  vretproc(v0);
  v10 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_98_9();
}

uint64_t except_stress2()
{
  OUTLINED_FUNCTION_21_34();
  v177[37] = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_30_30();
  v177[0] = 0;
  OUTLINED_FUNCTION_52_17();
  bzero(&v176, v2);
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

  v12 = OUTLINED_FUNCTION_41_21();
  get_parm(v12, v13, v14, -6);
  v15 = OUTLINED_FUNCTION_59_16();
  get_parm(v15, v16, v17, -6);
  v18 = OUTLINED_FUNCTION_73_12();
  push_ptr_init(v18, v19);
  v20 = OUTLINED_FUNCTION_72_12();
  push_ptr_init(v20, v21);
  v177[0] = 0xFFFC0000FFFCLL;
  v22 = &_MergedGlobals_39;
  v23 = OUTLINED_FUNCTION_42_21();
  fence_46(v23, v24);
  v25 = OUTLINED_FUNCTION_42_21();
  fence_46(v25, v26);
  v27 = OUTLINED_FUNCTION_37_23();
  starttest(v27, v28);
  v29 = OUTLINED_FUNCTION_49_17();
  if (lpta_loadp_setscan_r(v29, v30) || advance_tok(v0))
  {
LABEL_8:
    v37 = OUTLINED_FUNCTION_12_41();
    lpta_rpta_loadp(v37, v38, v39);
    v40 = OUTLINED_FUNCTION_38_22();
    if (setd_lookup(v40, v41, 466))
    {
LABEL_9:
      v42 = OUTLINED_FUNCTION_12_41();
      lpta_rpta_loadp(v42, v43, v44);
      v45 = OUTLINED_FUNCTION_38_22();
      if (setd_lookup(v45, v46, 467))
      {
LABEL_10:
        v47 = OUTLINED_FUNCTION_12_41();
        lpta_rpta_loadp(v47, v48, v49);
        v50 = OUTLINED_FUNCTION_38_22();
        if (!setd_lookup(v50, v51, 468))
        {
          v74 = OUTLINED_FUNCTION_26_32();
          starttest(v74, v75);
          v22 = v177 + 4;
          v76 = OUTLINED_FUNCTION_11_42();
          move_i(v76, v77, v78);
          goto LABEL_18;
        }

LABEL_11:
        v52 = OUTLINED_FUNCTION_12_41();
        lpta_rpta_loadp(v52, v53, v54);
        v55 = OUTLINED_FUNCTION_38_22();
        if (!setd_lookup(v55, v56, 469))
        {
          v57 = OUTLINED_FUNCTION_37_23();
          starttest(v57, v58);
          v22 = v177;
          v59 = OUTLINED_FUNCTION_42_21();
          move_i(v59, v60, 2);
LABEL_18:
          v79 = OUTLINED_FUNCTION_20_35();
          goto LABEL_19;
        }

LABEL_21:
        v83 = OUTLINED_FUNCTION_12_41();
        lpta_rpta_loadp(v83, v84, v85);
        v86 = OUTLINED_FUNCTION_38_22();
        if (!setd_lookup(v86, v87, 470))
        {
          v88 = OUTLINED_FUNCTION_37_23();
          starttest(v88, v89);
          v22 = v177 + 4;
          v90 = OUTLINED_FUNCTION_11_42();
          move_i(v90, v91, v92);
LABEL_23:
          v79 = OUTLINED_FUNCTION_18_37();
LABEL_19:
          move_i(v79, v80, v81);
          OUTLINED_FUNCTION_32_28();
          apply_strong_alternation();
          if (!v82)
          {
            goto LABEL_3;
          }

          goto LABEL_45;
        }

LABEL_24:
        v93 = OUTLINED_FUNCTION_39_22();
        if (!lpta_loadp_setscan_r(v93, v94))
        {
          OUTLINED_FUNCTION_13_41();
          if (!test_string_s())
          {
            *(v0 + 136) = v22;
            v95 = OUTLINED_FUNCTION_7_43();
            if (!test_ptr(v95))
            {
              v96 = OUTLINED_FUNCTION_25_32();
              starttest(v96, v97);
              v22 = v177;
              v98 = OUTLINED_FUNCTION_42_21();
              move_i(v98, v99, 2);
              goto LABEL_23;
            }
          }
        }

LABEL_28:
        v100 = OUTLINED_FUNCTION_12_41();
        lpta_rpta_loadp(v100, v101, v102);
        v103 = OUTLINED_FUNCTION_38_22();
        if (!setd_lookup(v103, v104, 471))
        {
          v105 = OUTLINED_FUNCTION_37_23();
          starttest(v105, v106);
          v107 = OUTLINED_FUNCTION_20_35();
          move_i(v107, v108, v109);
          LOBYTE(v22) = 0;
          goto LABEL_30;
        }

LABEL_32:
        v113 = OUTLINED_FUNCTION_12_41();
        lpta_rpta_loadp(v113, v114, v115);
        v116 = OUTLINED_FUNCTION_38_22();
        if (!setd_lookup(v116, v117, 472))
        {
          v118 = OUTLINED_FUNCTION_37_23();
          starttest(v118, v119);
          v120 = OUTLINED_FUNCTION_18_37();
          move_i(v120, v121, v122);
          LOBYTE(v22) = 0;
LABEL_30:
          v110 = OUTLINED_FUNCTION_49_17();
          move_i(v110, v111, 0);
          OUTLINED_FUNCTION_29_30();
          apply_long_alternation();
          if (!v112)
          {
            goto LABEL_3;
          }

          goto LABEL_45;
        }

LABEL_34:
        v123 = OUTLINED_FUNCTION_12_41();
        lpta_rpta_loadp(v123, v124, v125);
        v126 = OUTLINED_FUNCTION_38_22();
        if (setd_lookup(v126, v127, 473))
        {
LABEL_39:
          v137 = OUTLINED_FUNCTION_12_41();
          lpta_rpta_loadp(v137, v138, v139);
          v140 = OUTLINED_FUNCTION_38_22();
          if (setd_lookup(v140, v141, 475))
          {
LABEL_41:
            v146 = OUTLINED_FUNCTION_12_41();
            lpta_rpta_loadp(v146, v147, v148);
            v149 = OUTLINED_FUNCTION_38_22();
            if (setd_lookup(v149, v150, 474))
            {
LABEL_43:
              v156 = OUTLINED_FUNCTION_12_41();
              lpta_rpta_loadp(v156, v157, v158);
              v159 = OUTLINED_FUNCTION_38_22();
              if (setd_lookup(v159, v160, 476))
              {
                goto LABEL_3;
              }

              v161 = OUTLINED_FUNCTION_37_23();
              starttest(v161, v162);
              v22 = v177;
              v163 = OUTLINED_FUNCTION_11_42();
              move_i(v163, v164, v165);
              v166 = OUTLINED_FUNCTION_64_15();
              if (!insert_stressval(v166, v167, v168, v177, v169, v170, v171, v172))
              {
                goto LABEL_3;
              }

              goto LABEL_45;
            }

            v151 = OUTLINED_FUNCTION_37_23();
            starttest(v151, v152);
            v22 = v177 + 4;
            v153 = OUTLINED_FUNCTION_11_42();
            move_i(v153, v154, v155);
            v133 = OUTLINED_FUNCTION_18_37();
            goto LABEL_37;
          }

          v142 = OUTLINED_FUNCTION_37_23();
          starttest(v142, v143);
          v22 = v177;
          v144 = OUTLINED_FUNCTION_42_21();
          move_i(v144, v145, 2);
        }

        else
        {
          v128 = OUTLINED_FUNCTION_37_23();
          starttest(v128, v129);
          v22 = v177 + 4;
          v130 = OUTLINED_FUNCTION_11_42();
          move_i(v130, v131, v132);
        }

        v133 = OUTLINED_FUNCTION_20_35();
LABEL_37:
        move_i(v133, v134, v135);
        OUTLINED_FUNCTION_32_28();
        apply_long_alternation();
        if (!v136)
        {
          goto LABEL_3;
        }

        goto LABEL_45;
      }

      v66 = OUTLINED_FUNCTION_27_31();
      starttest(v66, v67);
      v68 = OUTLINED_FUNCTION_18_37();
      move_i(v68, v69, v70);
      LOBYTE(v22) = 0;
    }

    else
    {
      v61 = OUTLINED_FUNCTION_23_34();
      starttest(v61, v62);
      v63 = OUTLINED_FUNCTION_20_35();
      move_i(v63, v64, v65);
      LOBYTE(v22) = 0;
    }

    v71 = OUTLINED_FUNCTION_49_17();
    move_i(v71, v72, 0);
    OUTLINED_FUNCTION_29_30();
    apply_strong_alternation();
    if (!v73)
    {
      goto LABEL_3;
    }

    goto LABEL_45;
  }

  while (2)
  {
    OUTLINED_FUNCTION_78_12();
    v31 = OUTLINED_FUNCTION_67_15();
    savescptr(v31, v32, v33);
    if (!advance_tok(v0))
    {
LABEL_7:
      OUTLINED_FUNCTION_77_12();
      v34 = OUTLINED_FUNCTION_80_12();
      savescptr(v34, v35, v36);
      goto LABEL_8;
    }

LABEL_45:
    v173 = *(v0 + 104);
    if (v173)
    {
      v174 = OUTLINED_FUNCTION_53_17(v173);
    }

    else
    {
      v174 = OUTLINED_FUNCTION_99_8();
    }

    if ((v174 - 1) <= 0x1B)
    {
      OUTLINED_FUNCTION_91_10();
      switch(v175)
      {
        case 1:
          continue;
        case 2:
          goto LABEL_7;
        case 3:
          goto LABEL_9;
        case 4:
        case 5:
        case 7:
        case 9:
        case 11:
        case 13:
        case 15:
        case 17:
        case 19:
        case 21:
        case 23:
        case 25:
        case 26:
        case 27:
          goto LABEL_3;
        case 6:
          goto LABEL_10;
        case 8:
          goto LABEL_11;
        case 10:
          goto LABEL_21;
        case 12:
          goto LABEL_24;
        case 14:
          goto LABEL_28;
        case 16:
          goto LABEL_32;
        case 18:
          goto LABEL_34;
        case 20:
          goto LABEL_39;
        case 22:
          goto LABEL_41;
        case 24:
          goto LABEL_43;
        default:
          goto LABEL_8;
      }
    }

    break;
  }

LABEL_3:
  vretproc(v0);
  v10 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_98_9();
}

uint64_t zero_stress_syll()
{
  OUTLINED_FUNCTION_108_7();
  v72 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_45_19(v1, v2, v3, v4, v5, v6, v7, v8, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70);
  OUTLINED_FUNCTION_51_17();
  bzero(v71, v9);
  if (setjmp(v71))
  {
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_57_16();
  if (ventproc(v0, v10, v11, v12, v13, v71))
  {
    goto LABEL_4;
  }

  v14 = OUTLINED_FUNCTION_34_27();
  get_parm(v14, v15, v16, -6);
  v17 = OUTLINED_FUNCTION_89_11();
  push_ptr_init(v17, v18);
  fence_46(v0, &_MergedGlobals_39);
  v19 = OUTLINED_FUNCTION_37_23();
  starttest(v19, v20);
  v21 = OUTLINED_FUNCTION_43_20();
  if (lpta_loadp_setscan_r(v21, v22))
  {
LABEL_4:
    v23 = 94;
  }

  else
  {
    v26 = OUTLINED_FUNCTION_54_17();
    if (npush_fld(v26, 7u, v27))
    {
      goto LABEL_10;
    }

    v28 = OUTLINED_FUNCTION_38_22();
    npush_i(v28);
    if (if_testneq(v0, v29, v30, v31, v32, v33, v34, v35) || advance_tok(v0))
    {
      goto LABEL_10;
    }

    while (1)
    {
      OUTLINED_FUNCTION_78_12();
      v36 = OUTLINED_FUNCTION_59_16();
      savescptr(v36, v37, v38);
      v39 = OUTLINED_FUNCTION_59_16();
      lpta_rpta_loadp(v39, v40, v41);
      v23 = 0;
      OUTLINED_FUNCTION_56_17();
      if (!mark_i())
      {
        break;
      }

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

      if (v43 != 2)
      {
        if (v43 != 3)
        {
          goto LABEL_4;
        }

        v23 = 0;
        break;
      }
    }
  }

  vretproc(v0);
  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

uint64_t OUTLINED_FUNCTION_7_43()
{
  *(v1 + 112) = v0;
  *(v1 + 128) = 0;
  return v1;
}

void OUTLINED_FUNCTION_45_19(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  a34 = 0;
  a35 = 0;
  a32 = 0;
  a33 = 0;

  bzero(&a9, 0xB8uLL);
}

void OUTLINED_FUNCTION_47_18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, int a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  a37 = 0;
  a38 = 0;
  a35 = 0;
  a36 = 0;
  a34 = 0;

  bzero(&a10, 0xB8uLL);
}

uint64_t OUTLINED_FUNCTION_69_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, int a38, char a39, int a40, __int16 a41, char a42, int a43, __int16 a44, char a45, char a46)
{

  return ventproc(v46, &a10, &a46, &a42, &a39, v47 - 248);
}

uint64_t OUTLINED_FUNCTION_79_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, int a51, char a52, int a53, __int16 a54, char a55, int a56, __int16 a57, char a58, char a59, uint64_t a60, char a61)
{

  return ventproc(v61, a2, &a59, &a55, &a52, &a61);
}

uint64_t OUTLINED_FUNCTION_97_9()
{

  return find_last_syll();
}

uint64_t OUTLINED_FUNCTION_99_8()
{

  return vback(v0, 0);
}

uint64_t OUTLINED_FUNCTION_105_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return ventproc(v5, a2, a3, a4, a5, v6 - 248);
}

uint64_t OUTLINED_FUNCTION_107_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41, char a42, int a43, __int16 a44, char a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, char a51)
{

  return ventproc(v51, &a11, &a49, &a45, &a42, &a51);
}

uint64_t OUTLINED_FUNCTION_113_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, char a35, int a36, __int16 a37, char a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, char a44)
{

  return ventproc(v44, a2, &a42, &a38, &a35, &a44);
}

void OUTLINED_FUNCTION_114_7(uint64_t a1, size_t a2)
{

  bzero((v2 - 248), a2);
}

double OUTLINED_FUNCTION_115_7@<D0>(uint64_t a1@<X8>)
{

  *&result = savescptr(v1, a1, v1 + 1768).n128_u64[0];
  return result;
}

void *fence_47(uint64_t a1, int a2, uint64_t a3)
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

uint64_t create_eng_syllables()
{
  OUTLINED_FUNCTION_14_42();
  v54 = *MEMORY[0x277D85DE8];
  v48 = 0;
  v49 = 0;
  v47[0] = 0;
  v47[1] = 0;
  v45 = 0;
  v46 = 0;
  v44[0] = 0;
  v44[1] = 0;
  v43[0] = 0;
  v43[1] = 0;
  OUTLINED_FUNCTION_20_36(v2, v3, v4, v5, v6, v7, v8, v9, v40[0], v40[1], v40[2], v40[3], v40[4], v40[5], v40[6], v40[7], v40[8], v40[9], v40[10], v40[11], v40[12], v40[13], v40[14], v40[15], v40[16], v40[17], v40[18], v40[19], v40[20], v40[21], v40[22], v41[0], v41[1], v42[0], v42[1]);
  OUTLINED_FUNCTION_22_35();
  bzero(v53, v10);
  if (!setjmp(v53) && !ventproc(v0, v40, v52, v51, v50, v53))
  {
    OUTLINED_FUNCTION_27_32(v0, &v48);
    get_parm(v0, v47, v1, -6);
    push_ptr_init(v0, &v45);
    push_ptr_init(v0, v44);
    push_ptr_init(v0, v43);
    push_ptr_init(v0, v42);
    v13 = OUTLINED_FUNCTION_23_35();
    v15 = push_ptr_init(v13, v14);
    OUTLINED_FUNCTION_28_31(v15, v16, &_MergedGlobals_1_7);
    v17 = OUTLINED_FUNCTION_8_44();
    fence_47(v17, v18, v19);
    v46 = v49;
    *(v0 + 3998) = 0;
    if (!*(v0 + 4026))
    {
LABEL_21:
      v28 = OUTLINED_FUNCTION_4_45();
      startloop(v28, v29);
      copyvar(v0, v41, &v48);
      copyvar(v0, v42, v47);
      goto LABEL_25;
    }

    v20 = OUTLINED_FUNCTION_4_45();
    startloop(v20, v21);
    copyvar(v0, &v45, &v48);
    copyvar(v0, v42, v47);
LABEL_7:
    while (!forall_to_test(v0, &v45, v42))
    {
LABEL_8:
      bspush_ca(v0);
      if (lpta_loadp_setscan_r(v0, &v45))
      {
        goto LABEL_13;
      }

      OUTLINED_FUNCTION_25_33();
      if (test_string_s())
      {
        goto LABEL_13;
      }

LABEL_10:
      savescptr(v0, 4, v44);
LABEL_11:
      break_into_eng_syllables();
LABEL_12:
      OUTLINED_FUNCTION_21_35();
      forall_cont_from(v0);
    }

    while (1)
    {
LABEL_13:
      v22 = *(v0 + 104);
      if (v22)
      {
        v23 = OUTLINED_FUNCTION_26_33(v22);
      }

      else
      {
        v23 = vback(v0, 0);
      }

      switch(v23)
      {
        case 1:
          goto LABEL_21;
        case 2:
          goto LABEL_11;
        case 3:
          OUTLINED_FUNCTION_21_35();
          if (!forto_adv_r(v0, v24, v25, 7, 3, &v45))
          {
            goto LABEL_21;
          }

          continue;
        case 4:
          goto LABEL_10;
        case 5:
          goto LABEL_12;
        case 6:
          goto LABEL_7;
        case 7:
          goto LABEL_8;
        case 8:
          goto LABEL_20;
        case 9:
          goto LABEL_23;
        case 10:
          OUTLINED_FUNCTION_11_43();
          if (forto_adv_r(v0, v26, v27, 16, 3, v41))
          {
            continue;
          }

LABEL_20:
          vretproc(v0);
          result = 0;
          goto LABEL_4;
        case 11:
          goto LABEL_27;
        case 12:
          savescptr(v0, 12, v43);
LABEL_23:
          break_into_eng_syllables();
          goto LABEL_24;
        case 13:
          goto LABEL_29;
        case 14:
LABEL_24:
          OUTLINED_FUNCTION_11_43();
          forall_cont_from(v0);
          break;
        case 15:
          break;
        case 16:
          goto LABEL_26;
        default:
          goto LABEL_3;
      }

LABEL_25:
      if (!forall_to_test(v0, v41, v42))
      {
LABEL_26:
        v30 = OUTLINED_FUNCTION_4_45();
        bspush_ca(v30);
        v31 = OUTLINED_FUNCTION_23_35();
        if (!lpta_loadp_setscan_r(v31, v32))
        {
LABEL_27:
          savescptr(v0, 11, v0 + 1640);
          v33 = OUTLINED_FUNCTION_25_33();
          if (!testFldeq(v33, v34, v35, 2) && !advance_tok(v0))
          {
            do
            {
LABEL_29:
              v36 = OUTLINED_FUNCTION_7_44();
              bspush_ca_scan(v36, v37);
              v38 = OUTLINED_FUNCTION_25_33();
            }

            while (!testFldeq(v38, v39, 0, 3) && !advance_tok(v0));
          }
        }
      }
    }
  }

LABEL_3:
  vretproc(v0);
  result = 94;
LABEL_4:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t break_into_eng_syllables()
{
  OUTLINED_FUNCTION_14_42();
  v62 = *MEMORY[0x277D85DE8];
  v57[0] = 0;
  v57[1] = 0;
  v55 = 0;
  v56 = 0;
  v54[0] = 0;
  v54[1] = 0;
  v53[0] = 0;
  v53[1] = 0;
  v52[0] = 0;
  v52[1] = 0;
  v51[0] = 0;
  v51[1] = 0;
  v50[0] = 0;
  v50[1] = 0;
  v49[0] = 0;
  v49[1] = 0;
  v47 = 0;
  v48 = 0;
  bzero(v46, 0xB8uLL);
  OUTLINED_FUNCTION_22_35();
  bzero(v61, v2);
  if (!setjmp(v61) && !ventproc(v0, v46, v60, v59, v58, v61))
  {
    v5 = OUTLINED_FUNCTION_9_44();
    OUTLINED_FUNCTION_27_32(v5, v6);
    v7 = OUTLINED_FUNCTION_18_38();
    get_parm(v7, v8, v1, -6);
    push_ptr_init(v0, v54);
    push_ptr_init(v0, v53);
    v9 = OUTLINED_FUNCTION_13_42();
    push_ptr_init(v9, v10);
    v11 = OUTLINED_FUNCTION_17_39();
    push_ptr_init(v11, v12);
    push_ptr_init(v0, v50);
    push_ptr_init(v0, v49);
    v13 = OUTLINED_FUNCTION_16_41();
    v15 = push_ptr_init(v13, v14);
    OUTLINED_FUNCTION_28_31(v15, v16, &_MergedGlobals_1_7);
    v17 = OUTLINED_FUNCTION_4_45();
    startloop(v17, v18);
    v19 = OUTLINED_FUNCTION_9_44();
    lpta_loadpn(v19, v20);
    OUTLINED_FUNCTION_6_44();
    lpta_mover();
    lpta_storep(v0, v54);
    v21 = OUTLINED_FUNCTION_18_38();
    lpta_loadpn(v21, v22);
    OUTLINED_FUNCTION_6_44();
    lpta_mover();
    v23 = OUTLINED_FUNCTION_17_39();
    lpta_storep(v23, v24);
LABEL_6:
    while (!forall_to_test(v0, v54, v51))
    {
LABEL_7:
      bspush_ca(v0);
      if (lpta_loadp_setscan_r(v0, v54))
      {
        goto LABEL_10;
      }

      v25 = OUTLINED_FUNCTION_6_44();
      if (testFldeq(v25, v26, 1, 1) || advance_tok(v0))
      {
        goto LABEL_10;
      }

LABEL_26:
      savescptr(v0, 4, v53);
LABEL_27:
      assign_eng_syll_init_con();
LABEL_28:
      *(v0 + 136) = 1;
      OUTLINED_FUNCTION_15_41();
      proj_def();
      ++*(v0 + 3998);
      lpta_loadpn(v0, v53);
      OUTLINED_FUNCTION_6_44();
      lpta_mover();
      lpta_storep(v0, v49);
      forall_cont_from(v0);
    }

    while (1)
    {
LABEL_10:
      v27 = *(v0 + 104);
      if (v27)
      {
        v28 = OUTLINED_FUNCTION_26_33(v27);
      }

      else
      {
        v28 = vback(v0, 0);
      }

      switch(v28)
      {
        case 1:
          goto LABEL_15;
        case 2:
          goto LABEL_27;
        case 3:
          if (forto_adv_upto_r(v0, 1, 2, 7, 2, v54))
          {
            continue;
          }

LABEL_15:
          v48 = v56;
          *(v0 + 136) = 1;
          OUTLINED_FUNCTION_15_41();
          proj_def();
          startloop(v0, 8);
          v29 = OUTLINED_FUNCTION_16_41();
          copyvar(v29, v30, &v55);
          v31 = OUTLINED_FUNCTION_17_39();
          copyvar(v31, v32, v57);
          goto LABEL_18;
        case 4:
          goto LABEL_26;
        case 5:
          goto LABEL_28;
        case 6:
          goto LABEL_6;
        case 7:
          goto LABEL_7;
        case 8:
          goto LABEL_29;
        case 9:
          goto LABEL_22;
        case 10:
          OUTLINED_FUNCTION_11_43();
          if (forto_adv_l(v0, v33, v34, 15, 7, &v47))
          {
            continue;
          }

LABEL_29:
          vretproc(v0);
          result = 0;
          goto LABEL_4;
        case 11:
          goto LABEL_21;
        case 12:
          goto LABEL_24;
        case 13:
          goto LABEL_25;
        case 14:
          goto LABEL_18;
        case 15:
          break;
        default:
          goto LABEL_3;
      }

      while (1)
      {
        bspush_ca(v0);
        v37 = OUTLINED_FUNCTION_16_41();
        if (lpta_loadp_setscan_l(v37, v38) || advanc(v0))
        {
          break;
        }

LABEL_21:
        savescptr(v0, 11, v52);
LABEL_22:
        v39 = OUTLINED_FUNCTION_18_38();
        starttest(v39, v40);
        if (*(v0 + 3998) != 1 || (v41 = OUTLINED_FUNCTION_13_42(), lpta_rpta_loadp(v41, v42, &v47), insert_2pt_i(v0, 7u, 2, &string_6_0, 0)))
        {
LABEL_24:
          v43 = OUTLINED_FUNCTION_13_42();
          lpta_rpta_loadp(v43, v44, &v47);
          if (insert_2pt_i(v0, 7u, 2, &unk_2805BF300, 0))
          {
            goto LABEL_10;
          }
        }

LABEL_25:
        v45 = OUTLINED_FUNCTION_4_45();
        forall_cont_from(v45);
LABEL_18:
        v35 = OUTLINED_FUNCTION_16_41();
        if (forall_to_test(v35, v36, v51))
        {
          goto LABEL_10;
        }
      }
    }
  }

LABEL_3:
  vretproc(v0);
  result = 94;
LABEL_4:
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t assign_eng_syll_init_con()
{
  OUTLINED_FUNCTION_14_42();
  v238 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_20_36(v2, v3, v4, v5, v6, v7, v8, v9, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233);
  OUTLINED_FUNCTION_22_35();
  bzero(v237, v10);
  if (!setjmp(v237) && !ventproc(v0, &v207, v236, v235, v234, v237))
  {
    v13 = OUTLINED_FUNCTION_9_44();
    OUTLINED_FUNCTION_27_32(v13, v14);
    v15 = OUTLINED_FUNCTION_23_35();
    get_parm(v15, v16, v1, -6);
    v17 = 0;
    OUTLINED_FUNCTION_28_31(v18, v19, &_MergedGlobals_1_7);
    fence_47(v0, 1, &_MergedGlobals_40);
    starttest(v0, 1);
    v20 = OUTLINED_FUNCTION_9_44();
    LODWORD(v22) = 0;
    if (lpta_loadp_setscan_l(v20, v21))
    {
LABEL_6:
      v23 = OUTLINED_FUNCTION_4_45();
      starttest(v23, v24);
      v25 = lpta_loadp_setscan_r(v0, v0 + 1640);
      v26 = v22;
      if (v25)
      {
LABEL_82:
        v163 = v26;
        v164 = OUTLINED_FUNCTION_4_45();
        starttest(v164, v165);
        v166 = lpta_loadp_setscan_r(v0, v0 + 1320);
        v41 = v163;
        if (v166)
        {
LABEL_83:
          v167 = OUTLINED_FUNCTION_4_45();
          starttest(v167, v168);
          v169 = OUTLINED_FUNCTION_4_45();
          bspush_ca(v169);
          if (OUTLINED_FUNCTION_10_43(v170, v171, v172, v173, v174, v175, v176, v177, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232))
          {
            LODWORD(v22) = v163;
          }

          else
          {
            v185 = OUTLINED_FUNCTION_4_45();
            bspush_ca_scan(v185, v186);
            v187 = OUTLINED_FUNCTION_4_45();
            bspush_ca_scan(v187, v188);
            v189 = OUTLINED_FUNCTION_3_46();
            v192 = testFldeq(v189, v190, v191, 3);
            v42 = v163;
            LODWORD(v22) = v163;
            if (!v192)
            {
LABEL_89:
              LODWORD(v22) = v42;
              v193 = advance_tok(v0);
              v194 = v22;
              if (!v193)
              {
LABEL_93:
                v195 = v194;
                OUTLINED_FUNCTION_4_45();
                bspush_ca_scan_boa();
                v196 = OUTLINED_FUNCTION_5_45();
                if (testFldeq(v196, v197, 2, v198))
                {
                  LODWORD(v22) = v195;
                }

                else
                {
                  LODWORD(v22) = 1;
                }
              }
            }
          }
        }

        else
        {
LABEL_85:
          LODWORD(v22) = v41;
          v178 = OUTLINED_FUNCTION_4_45();
          bspush_ca_scan(v178, v179);
          v180 = OUTLINED_FUNCTION_25_33();
          if (!testFldeq(v180, v181, v182, 1))
          {
            v183 = advance_tok(v0);
            v184 = v22;
            if (!v183)
            {
LABEL_97:
              LODWORD(v22) = v184;
              v199 = OUTLINED_FUNCTION_4_45();
              v201 = chstream(v199, v200, 2u);
              v162 = v22;
              if (!v201)
              {
LABEL_98:
                LODWORD(v22) = v162;
                OUTLINED_FUNCTION_19_38(12, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230);
                do
                {
LABEL_99:
                  v202 = OUTLINED_FUNCTION_7_44();
                  bspush_ca_scan(v202, v203);
                  v204 = OUTLINED_FUNCTION_0_48();
                }

                while (!testFldeq(v204, v205, v206, 2) && !advance_tok(v0));
              }
            }
          }
        }
      }

      else
      {
LABEL_7:
        OUTLINED_FUNCTION_19_38(5, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230);
        do
        {
LABEL_8:
          v27 = OUTLINED_FUNCTION_7_44();
          bspush_ca_scan(v27, v28);
          v29 = OUTLINED_FUNCTION_0_48();
        }

        while (!testFldeq(v29, v30, v31, 2) && !advance_tok(v0));
      }
    }

    else
    {
LABEL_12:
      LODWORD(v22) = v17;
      savescptr(v0, 2, &v230);
      OUTLINED_FUNCTION_4_45();
      bspush_ca_scan_boa();
      if (!testFldeq(v0, 2u, 1, 2))
      {
        if (advance_tok(v0))
        {
          LODWORD(v22) = v17;
        }

        else
        {
          LODWORD(v22) = 1;
        }
      }
    }

    v32 = v22;
    while (1)
    {
      v33 = *(v0 + 104);
      if (v33)
      {
        v34 = OUTLINED_FUNCTION_26_33(v33);
        v22 = v39;
      }

      else
      {
        v34 = vback(v0, v32);
        v22 = 0;
      }

      v40 = 21;
      v41 = v22;
      v42 = v22;
      switch(v34)
      {
        case 1:
          goto LABEL_6;
        case 2:
          v17 = v22;
          goto LABEL_12;
        case 3:
          bspop_boa(v0);
          goto LABEL_6;
        case 4:
          v26 = v22;
          goto LABEL_82;
        case 5:
          goto LABEL_7;
        case 6:
        case 13:
          *(v0 + 136) = 1;
          v43 = OUTLINED_FUNCTION_15_41();
          v44 = test_ptr(v43);
          v32 = v22;
          if (v44)
          {
            continue;
          }

          goto LABEL_103;
        case 7:
          goto LABEL_8;
        case 8:
          v163 = v22;
          goto LABEL_83;
        case 9:
          goto LABEL_85;
        case 10:
          v54 = advance_tok(v0);
          v41 = v22;
          v32 = v22;
          if (!v54)
          {
            goto LABEL_85;
          }

          continue;
        case 11:
          v184 = v22;
          goto LABEL_97;
        case 12:
          v162 = v22;
          goto LABEL_98;
        case 14:
          goto LABEL_99;
        case 15:
          goto LABEL_103;
        case 16:
          v86 = OUTLINED_FUNCTION_4_45();
          bspush_ca(v86);
          v95 = OUTLINED_FUNCTION_10_43(v87, v88, v89, v90, v91, v92, v93, v94, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232);
          v32 = v22;
          if (v95)
          {
            continue;
          }

          v96 = OUTLINED_FUNCTION_4_45();
          bspush_ca_scan(v96, v97);
          v59 = OUTLINED_FUNCTION_3_46();
          v62 = 3;
          goto LABEL_40;
        case 17:
          v194 = v22;
          goto LABEL_93;
        case 18:
          v55 = OUTLINED_FUNCTION_5_45();
          v58 = testFldeq(v55, v56, v57, 26);
          v42 = v22;
          v32 = v22;
          if (!v58)
          {
            goto LABEL_89;
          }

          continue;
        case 19:
          goto LABEL_89;
        case 20:
          bspop_boa(v0);
          v117 = OUTLINED_FUNCTION_3_46();
          v121 = testFldeq(v117, v118, v119, v120);
          v32 = v22;
          if (v121)
          {
            continue;
          }

          v122 = advance_tok(v0);
          v32 = v22;
          if (v122)
          {
            continue;
          }

          OUTLINED_FUNCTION_0_48();
          v123 = test_string_s();
          v32 = v22;
          if (v123)
          {
            continue;
          }

          v53 = 21;
          goto LABEL_70;
        case 21:
          goto LABEL_71;
        case 22:
          goto LABEL_72;
        case 23:
          v124 = OUTLINED_FUNCTION_4_45();
          bspush_ca(v124);
          v133 = OUTLINED_FUNCTION_10_43(v125, v126, v127, v128, v129, v130, v131, v132, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232);
          v32 = v22;
          if (v133)
          {
            continue;
          }

          v134 = OUTLINED_FUNCTION_4_45();
          bspush_ca_scan(v134, v135);
          v63 = OUTLINED_FUNCTION_3_46();
          v66 = 3;
          goto LABEL_59;
        case 24:
          v59 = OUTLINED_FUNCTION_5_45();
          v62 = 26;
LABEL_40:
          v98 = testFldeq(v59, v60, v61, v62);
          v32 = v22;
          if (!v98)
          {
            goto LABEL_41;
          }

          continue;
        case 25:
LABEL_41:
          v99 = advance_tok(v0);
          v32 = v22;
          if (v99)
          {
            continue;
          }

          OUTLINED_FUNCTION_4_45();
          bspush_ca_scan_boa();
          v82 = OUTLINED_FUNCTION_5_45();
          v84 = 2;
          goto LABEL_43;
        case 26:
          bspop_boa(v0);
          v144 = OUTLINED_FUNCTION_3_46();
          v147 = testFldeq(v144, v145, v146, 1);
          v32 = v22;
          if (v147)
          {
            continue;
          }

          v148 = advance_tok(v0);
          v32 = v22;
          if (v148)
          {
            continue;
          }

          goto LABEL_66;
        case 27:
LABEL_66:
          v53 = 27;
          goto LABEL_70;
        case 28:
          v67 = OUTLINED_FUNCTION_4_45();
          bspush_ca(v67);
          v76 = OUTLINED_FUNCTION_10_43(v68, v69, v70, v71, v72, v73, v74, v75, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232);
          v32 = v22;
          if (v76)
          {
            continue;
          }

          OUTLINED_FUNCTION_0_48();
          v77 = test_string_s();
          v32 = v22;
          if (v77)
          {
            continue;
          }

          v78 = OUTLINED_FUNCTION_0_48();
          v81 = testFldeq(v78, v79, v80, 2);
          v32 = v22;
          if (v81)
          {
            continue;
          }

          OUTLINED_FUNCTION_4_45();
          bspush_ca_scan_boa();
          v82 = OUTLINED_FUNCTION_3_46();
          v85 = 3;
LABEL_43:
          if (testFldeq(v82, v83, v84, v85))
          {
            v32 = v22;
          }

          else
          {
            v32 = 1;
          }

          continue;
        case 29:
          v63 = OUTLINED_FUNCTION_5_45();
          v66 = 26;
LABEL_59:
          v136 = testFldeq(v63, v64, v65, v66);
          v32 = v22;
          if (!v136)
          {
            goto LABEL_60;
          }

          continue;
        case 30:
LABEL_60:
          v137 = advance_tok(v0);
          v32 = v22;
          if (!v137)
          {
            v138 = OUTLINED_FUNCTION_3_46();
            v142 = testFldeq(v138, v139, v140, v141);
            v32 = v22;
            if (!v142)
            {
              v143 = advance_tok(v0);
              v32 = v22;
              if (!v143)
              {
                goto LABEL_63;
              }
            }
          }

          continue;
        case 31:
LABEL_63:
          v53 = 31;
          goto LABEL_70;
        case 32:
          v106 = OUTLINED_FUNCTION_4_45();
          bspush_ca(v106);
          v115 = OUTLINED_FUNCTION_10_43(v107, v108, v109, v110, v111, v112, v113, v114, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232);
          v32 = v22;
          if (v115)
          {
            continue;
          }

          goto LABEL_51;
        case 33:
          bspop_boa(v0);
          v151 = advance_tok(v0);
          v32 = v22;
          if (v151)
          {
            continue;
          }

          goto LABEL_69;
        case 34:
LABEL_69:
          v53 = 34;
          goto LABEL_70;
        case 35:
          v47 = OUTLINED_FUNCTION_10_43(v34, 21, v22, v22, v35, v36, v37, v38, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232);
          v32 = v22;
          if (v47)
          {
            continue;
          }

          v48 = OUTLINED_FUNCTION_0_48();
          v51 = testFldeq(v48, v49, v50, 2);
          v32 = v22;
          if (v51)
          {
            continue;
          }

          v52 = advance_tok(v0);
          v32 = v22;
          if (v52)
          {
            continue;
          }

          goto LABEL_27;
        case 36:
LABEL_51:
          OUTLINED_FUNCTION_19_38(36, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230);
          OUTLINED_FUNCTION_0_48();
          v116 = test_string_s();
          v32 = v22;
          if (!v116)
          {
            goto LABEL_72;
          }

          continue;
        case 37:
LABEL_27:
          v53 = 37;
LABEL_70:
          v40 = v53;
LABEL_71:
          savescptr(v0, v40, &v230);
LABEL_72:
          OUTLINED_FUNCTION_4_45();
          bspush_ca_boa();
          v152 = OUTLINED_FUNCTION_23_35();
          v154 = lpta_loadp_setscan_r(v152, v153);
          v32 = v22;
          if (!v154)
          {
            v155 = OUTLINED_FUNCTION_4_45();
            bspush_ca_scan(v155, v156);
            v157 = OUTLINED_FUNCTION_4_45();
            bspush_ca_scan(v157, v158);
            OUTLINED_FUNCTION_0_48();
            v159 = test_string_s();
            v32 = v22;
            if (!v159)
            {
              goto LABEL_74;
            }
          }

          continue;
        case 38:
          bspop_boa(v0);
LABEL_103:
          *(v1 + 8) = v231;
          vretproc(v0);
          result = 0;
          goto LABEL_4;
        case 39:
          v100 = OUTLINED_FUNCTION_4_45();
          bspush_ca_scan(v100, v101);
          OUTLINED_FUNCTION_0_48();
          v102 = test_string_s();
          v32 = v22;
          if (v102)
          {
            continue;
          }

          v103 = OUTLINED_FUNCTION_4_45();
          bspush_ca_scan(v103, v104);
          goto LABEL_48;
        case 40:
          goto LABEL_74;
        case 41:
          goto LABEL_78;
        case 42:
          v45 = OUTLINED_FUNCTION_4_45();
          bspush_ca_scan(v45, v46);
LABEL_74:
          OUTLINED_FUNCTION_5_45();
          goto LABEL_77;
        case 43:
LABEL_48:
          OUTLINED_FUNCTION_0_48();
          v105 = test_string_s();
          v32 = v22;
          if (!v105)
          {
            goto LABEL_76;
          }

          continue;
        case 44:
        case 47:
          goto LABEL_76;
        case 45:
          v149 = OUTLINED_FUNCTION_4_45();
          bspush_ca_scan(v149, v150);
          goto LABEL_75;
        case 46:
LABEL_75:
          OUTLINED_FUNCTION_0_48();
          v160 = test_string_s();
          v32 = v22;
          if (!v160)
          {
LABEL_76:
            OUTLINED_FUNCTION_0_48();
LABEL_77:
            v161 = test_string_s();
            v32 = v22;
            if (!v161)
            {
LABEL_78:
              v32 = 1;
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
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t estimate_eng_nsylls(void *a1, __int16 *a2, __int16 *a3)
{
  v175 = *MEMORY[0x277D85DE8];
  v170 = 0;
  v168[1] = 0;
  memset(v169, 0, sizeof(v169));
  v167[1] = 0;
  v168[0] = 0;
  v166[1] = 0;
  v167[0] = 0;
  v165[1] = 0;
  v166[0] = 0;
  v165[0] = 0;
  bzero(v164, 0xB8uLL);
  OUTLINED_FUNCTION_22_35();
  bzero(v174, v6);
  if (!setjmp(v174) && !ventproc(a1, v164, v173, v172, v171, v174))
  {
    get_parm(a1, &v170, a2, -4);
    v10 = OUTLINED_FUNCTION_17_39();
    get_parm(v10, v11, a3, -6);
    v12 = OUTLINED_FUNCTION_13_42();
    OUTLINED_FUNCTION_27_32(v12, v13);
    v14 = OUTLINED_FUNCTION_7_44();
    push_ptr_init(v14, v15);
    v16 = OUTLINED_FUNCTION_9_44();
    push_ptr_init(v16, v17);
    v18 = OUTLINED_FUNCTION_18_38();
    push_ptr_init(v18, v19);
    push_ptr_init(a1, v166);
    v20 = push_ptr_init(a1, v165);
    OUTLINED_FUNCTION_28_31(v20, v21, &_MergedGlobals_1_7);
    v22 = OUTLINED_FUNCTION_6_44();
    fence_47(v22, v23, v24);
    startloop(a1, 1);
    v25 = OUTLINED_FUNCTION_17_39();
    lpta_loadpn(v25, v26);
    OUTLINED_FUNCTION_6_44();
    lpta_mover();
    v27 = OUTLINED_FUNCTION_7_44();
    lpta_storep(v27, v28);
    v29 = OUTLINED_FUNCTION_13_42();
    lpta_loadpn(v29, v30);
    OUTLINED_FUNCTION_6_44();
    lpta_mover();
    v31 = OUTLINED_FUNCTION_18_38();
    lpta_storep(v31, v32);
    while (1)
    {
LABEL_6:
      v33 = OUTLINED_FUNCTION_7_44();
      forall_to_test(v33, v34, v167);
      OUTLINED_FUNCTION_24_33();
      if (v37)
      {
        goto LABEL_47;
      }

LABEL_7:
      v38 = v36;
      bspush_ca(a1);
      v39 = OUTLINED_FUNCTION_2_47();
      if (lpta_loadp_setscan_r(v39, v40))
      {
        goto LABEL_127;
      }

      advance_tok(a1);
      OUTLINED_FUNCTION_24_33();
      if (v42)
      {
        goto LABEL_47;
      }

LABEL_9:
      v38 = v41;
      savescptr(a1, 4, v168);
LABEL_10:
      v43 = OUTLINED_FUNCTION_13_42();
      starttest(v43, v44);
      v45 = OUTLINED_FUNCTION_2_47();
      if (!lpta_loadp_setscan_r(v45, v46))
      {
        v54 = OUTLINED_FUNCTION_6_44();
        if (testFldeq(v54, v55, 4, 2))
        {
          goto LABEL_127;
        }

        v56 = advance_tok(a1);
        v35 = v38;
        if (!v56)
        {
LABEL_13:
          OUTLINED_FUNCTION_21_35();
          v53 = forto_adv_upto_r(a1, v51, v52, 67, 1, v169);
LABEL_46:
          v35 = v38;
          if (!v53)
          {
LABEL_129:
            a2[1] = HIWORD(v170);
            v7 = 0;
            goto LABEL_4;
          }
        }

        goto LABEL_47;
      }

LABEL_11:
      starttest(a1, 7);
      v47 = OUTLINED_FUNCTION_2_47();
      if (lpta_loadp_setscan_r(v47, v48))
      {
        break;
      }

      v57 = OUTLINED_FUNCTION_6_44();
      if (testFldeq(v57, v58, 4, 1) || advance_tok(a1))
      {
        goto LABEL_127;
      }

      v59 = OUTLINED_FUNCTION_2_47();
      if (lpta_loadp_setscan_r(v59, v60) || (OUTLINED_FUNCTION_1_47(), test_string_s()))
      {
LABEL_21:
        v61 = OUTLINED_FUNCTION_2_47();
        if (lpta_loadp_setscan_r(v61, v62) || (OUTLINED_FUNCTION_1_47(), test_string_s()))
        {
LABEL_23:
          v63 = OUTLINED_FUNCTION_2_47();
          if (!lpta_loadp_setscan_r(v63, v64))
          {
            OUTLINED_FUNCTION_1_47();
            if (!test_string_s())
            {
              starttest_l(a1, 54);
              v75 = OUTLINED_FUNCTION_9_44();
              if (lpta_loadp_setscan_r(v75, v76))
              {
                goto LABEL_120;
              }

              bspush_ca_scan(a1, 55);
              OUTLINED_FUNCTION_1_47();
              if (!test_string_s())
              {
LABEL_35:
                v77 = 56;
                goto LABEL_82;
              }

LABEL_127:
              v35 = v38;
              goto LABEL_47;
            }
          }

LABEL_25:
          v65 = OUTLINED_FUNCTION_2_47();
          if (!lpta_loadp_setscan_r(v65, v66))
          {
            OUTLINED_FUNCTION_1_47();
            if (!test_string_s())
            {
              starttest_l(a1, 58);
              v67 = OUTLINED_FUNCTION_9_44();
              if (!lpta_loadp_setscan_r(v67, v68))
              {
                bspush_ca_scan(a1, 59);
                OUTLINED_FUNCTION_1_47();
                if (test_string_s())
                {
                  goto LABEL_127;
                }

                v69 = 60;
LABEL_83:
                savescptr(a1, v69, v168);
              }
            }
          }
        }

        else
        {
          v78 = OUTLINED_FUNCTION_9_44();
          if (!lpta_loadp_setscan_r(v78, v79))
          {
            OUTLINED_FUNCTION_1_47();
            if (!test_string_s())
            {
LABEL_38:
              v77 = 52;
              goto LABEL_82;
            }
          }
        }
      }

      else
      {
        starttest(a1, 9);
        v80 = OUTLINED_FUNCTION_2_47();
        v82 = lpta_loadp_setscan_l(v80, v81);
        v83 = v38;
        if (!v82)
        {
LABEL_108:
          v38 = v83;
          savescptr(a1, 10, v166);
          OUTLINED_FUNCTION_1_47();
          if (test_string_s())
          {
            goto LABEL_127;
          }

          v153 = OUTLINED_FUNCTION_6_44();
          if (testFldeq(v153, v154, 4, 2))
          {
            goto LABEL_127;
          }

          if (advance_tok(a1))
          {
            goto LABEL_127;
          }

          v155 = OUTLINED_FUNCTION_12_42();
          if (lpta_loadp_setscan_r(v155, v156) || advance_tok(a1))
          {
            goto LABEL_127;
          }

          bspush_ca_scan_boa();
          v93 = v38;
LABEL_114:
          v38 = v93;
          bspush_nboa(a1);
LABEL_115:
          v73 = a1;
          v74 = 14;
LABEL_116:
          v157 = test_synch(v73, v74, 1u, &_MergedGlobals_40);
          v35 = v38;
          if (v157)
          {
            goto LABEL_47;
          }

          goto LABEL_120;
        }

        while (2)
        {
          starttest(a1, 16);
          v84 = lpta_loadp_setscan_r(a1, v168);
          v85 = v38;
          if (!v84)
          {
LABEL_41:
            savescptr(a1, 17, v166);
LABEL_42:
            if (test_synch(a1, 18, 1u, &_MergedGlobals_40))
            {
              goto LABEL_127;
            }

            v86 = OUTLINED_FUNCTION_12_42();
            if (lpta_loadp_setscan_l(v86, v87) || advance_tok(a1))
            {
              goto LABEL_127;
            }

            bspush_boa(a1);
            v88 = 19;
LABEL_122:
            v94 = v38;
            goto LABEL_123;
          }

LABEL_90:
          v138 = v85;
          starttest(a1, 22);
          v139 = lpta_loadp_setscan_r(a1, v168);
          v38 = v138;
          v140 = v138;
          if (!v139)
          {
LABEL_91:
            savescptr(a1, 23, v166);
            OUTLINED_FUNCTION_1_47();
            v141 = test_string_s();
            v35 = v38;
            if (v141)
            {
              goto LABEL_47;
            }

LABEL_92:
            if (test_synch(a1, 24, 1u, &_MergedGlobals_40))
            {
              goto LABEL_127;
            }

            v142 = OUTLINED_FUNCTION_12_42();
            if (lpta_loadp_setscan_l(v142, v143))
            {
              goto LABEL_127;
            }

            advance_tok(a1);
            OUTLINED_FUNCTION_24_33();
            if (v145)
            {
              goto LABEL_47;
            }

LABEL_104:
            v136 = v144;
            savescptr(a1, 25, v165);
            bspush_boa(a1);
            v137 = 26;
LABEL_105:
            v88 = v137;
            v94 = v136;
LABEL_123:
            v161 = v94;
            bspush_ca_scan(a1, v88);
            OUTLINED_FUNCTION_16_41();
            bspush_ca_scan_boa();
            v162 = OUTLINED_FUNCTION_6_44();
            if (testFldeq(v162, v163, 4, 1))
            {
              v35 = v161;
            }

            else
            {
              v35 = 1;
            }

            goto LABEL_47;
          }

LABEL_97:
          v146 = v140;
          starttest(a1, 35);
          v147 = lpta_loadp_setscan_r(a1, v168);
          v38 = v146;
          v148 = v146;
          if (!v147)
          {
LABEL_98:
            savescptr(a1, 36, v166);
            OUTLINED_FUNCTION_1_47();
            v149 = test_string_s();
            v35 = v38;
            if (v149)
            {
              goto LABEL_47;
            }

LABEL_99:
            if (test_synch(a1, 37, 1u, &_MergedGlobals_40))
            {
              goto LABEL_127;
            }

            v150 = OUTLINED_FUNCTION_12_42();
            if (lpta_loadp_setscan_l(v150, v151))
            {
              goto LABEL_127;
            }

            advance_tok(a1);
            OUTLINED_FUNCTION_24_33();
            if (!v152)
            {
LABEL_88:
              v136 = v135;
              savescptr(a1, 38, v165);
              bspush_boa(a1);
              v137 = 39;
              goto LABEL_105;
            }

LABEL_47:
            v89 = a1[13];
            if (v89)
            {
              v90 = OUTLINED_FUNCTION_26_33(v89);
              v38 = v91;
            }

            else
            {
              v90 = vback(a1, v35);
              v38 = 0;
            }

            v92 = v90 - 1;
            v69 = 60;
            v88 = 19;
            v93 = v38;
            v94 = v38;
            switch(v92)
            {
              case 0:
                goto LABEL_129;
              case 1:
                goto LABEL_10;
              case 2:
              case 62:
                goto LABEL_13;
              case 3:
                v41 = v38;
                goto LABEL_9;
              case 4:
                goto LABEL_11;
              case 5:
              case 14:
              case 28:
              case 41:
              case 48:
              case 50:
              case 53:
              case 57:
                goto LABEL_120;
              case 6:
                goto LABEL_12;
              case 7:
                goto LABEL_21;
              case 8:
                continue;
              case 9:
                v83 = v38;
                goto LABEL_108;
              case 10:
                v95 = OUTLINED_FUNCTION_4_45();
                bspush_ca_scan(v95, v96);
                goto LABEL_65;
              case 11:
                goto LABEL_114;
              case 12:
LABEL_65:
                OUTLINED_FUNCTION_8_44();
                v123 = test_string_s();
                v93 = v38;
                v35 = v38;
                if (!v123)
                {
                  goto LABEL_114;
                }

                goto LABEL_47;
              case 13:
                goto LABEL_115;
              case 15:
                v85 = v38;
                goto LABEL_90;
              case 16:
                goto LABEL_41;
              case 17:
                goto LABEL_42;
              case 18:
                bspush_nboa(a1);
                v125 = OUTLINED_FUNCTION_8_44();
                v127 = testFldeq(v125, v126, 4, 1);
                v35 = v38;
                if (v127)
                {
                  goto LABEL_47;
                }

                v53 = advance_tok(a1);
                goto LABEL_46;
              case 19:
                bspop_boa(a1);
                v129 = advance_tok(a1);
                v35 = v38;
                if (v129)
                {
                  goto LABEL_47;
                }

                v160 = 19;
                goto LABEL_121;
              case 20:
                goto LABEL_123;
              case 21:
                v140 = v38;
                goto LABEL_97;
              case 22:
                goto LABEL_91;
              case 23:
                goto LABEL_92;
              case 24:
                v144 = v38;
                goto LABEL_104;
              case 25:
                bspush_nboa(a1);
                v111 = OUTLINED_FUNCTION_8_44();
                v113 = testFldeq(v111, v112, 4, 1);
                v35 = v38;
                if (v113)
                {
                  goto LABEL_47;
                }

                v114 = advance_tok(a1);
                v35 = v38;
                if (v114)
                {
                  goto LABEL_47;
                }

                v115 = OUTLINED_FUNCTION_4_45();
                starttest_l(v115, v116);
                OUTLINED_FUNCTION_4_45();
                bspush_ca_boa();
                v117 = lpta_loadp_setscan_l(a1, v165);
                v35 = v38;
                if (v117)
                {
                  goto LABEL_47;
                }

                v118 = OUTLINED_FUNCTION_4_45();
                bspush_ca_scan(v118, v119);
                v120 = OUTLINED_FUNCTION_4_45();
                bspush_ca_scan(v120, v121);
                OUTLINED_FUNCTION_8_44();
                v122 = test_string_s();
                v35 = v38;
                if (v122)
                {
                  goto LABEL_47;
                }

                goto LABEL_71;
              case 26:
                bspop_boa(a1);
                v124 = advance_tok(a1);
                v35 = v38;
                if (v124)
                {
                  goto LABEL_47;
                }

                goto LABEL_84;
              case 27:
LABEL_84:
                v160 = 26;
                goto LABEL_121;
              case 29:
              case 42:
                bspop_boa(a1);
                goto LABEL_129;
              case 30:
                goto LABEL_55;
              case 31:
              case 33:
              case 43:
                goto LABEL_71;
              case 32:
              case 44:
                goto LABEL_72;
              case 34:
                v148 = v38;
                goto LABEL_119;
              case 35:
                goto LABEL_98;
              case 36:
                goto LABEL_99;
              case 37:
                v135 = v38;
                goto LABEL_88;
              case 38:
                bspush_nboa(a1);
                v97 = OUTLINED_FUNCTION_8_44();
                v99 = testFldeq(v97, v98, 4, 1);
                v35 = v38;
                if (v99)
                {
                  goto LABEL_47;
                }

                v100 = advance_tok(a1);
                v35 = v38;
                if (v100)
                {
                  goto LABEL_47;
                }

                v101 = OUTLINED_FUNCTION_4_45();
                starttest_l(v101, v102);
                OUTLINED_FUNCTION_4_45();
                bspush_ca_boa();
                v103 = lpta_loadp_setscan_l(a1, v165);
                v35 = v38;
                if (v103)
                {
                  goto LABEL_47;
                }

LABEL_55:
                v104 = OUTLINED_FUNCTION_4_45();
                bspush_ca_scan(v104, v105);
LABEL_71:
                OUTLINED_FUNCTION_8_44();
                v128 = test_string_s();
                v35 = v38;
                if (!v128)
                {
LABEL_72:
                  v35 = 1;
                }

                goto LABEL_47;
              case 39:
                bspop_boa(a1);
                v130 = advance_tok(a1);
                v35 = v38;
                if (v130)
                {
                  goto LABEL_47;
                }

                goto LABEL_85;
              case 40:
LABEL_85:
                v160 = 39;
LABEL_121:
                v88 = v160;
                goto LABEL_122;
              case 45:
                v132 = OUTLINED_FUNCTION_4_45();
                bspush_ca_scan(v132, v133);
                goto LABEL_80;
              case 46:
                goto LABEL_81;
              case 47:
LABEL_80:
                OUTLINED_FUNCTION_8_44();
                v134 = test_string_s();
                v35 = v38;
                if (!v134)
                {
                  goto LABEL_81;
                }

                goto LABEL_47;
              case 49:
                goto LABEL_23;
              case 51:
                goto LABEL_38;
              case 52:
                goto LABEL_25;
              case 54:
                v109 = OUTLINED_FUNCTION_4_45();
                bspush_ca_scan(v109, v110);
                goto LABEL_77;
              case 55:
                goto LABEL_35;
              case 56:
LABEL_77:
                OUTLINED_FUNCTION_8_44();
                v131 = test_string_s();
                v35 = v38;
                if (!v131)
                {
                  goto LABEL_35;
                }

                goto LABEL_47;
              case 58:
              case 60:
                v106 = OUTLINED_FUNCTION_4_45();
                bspush_ca_scan(v106, v107);
                goto LABEL_57;
              case 59:
                goto LABEL_83;
              case 61:
LABEL_57:
                OUTLINED_FUNCTION_8_44();
                v108 = test_string_s();
                v35 = v38;
                if (v108)
                {
                  goto LABEL_47;
                }

                v77 = 60;
                break;
              case 63:
                goto LABEL_31;
              case 64:
                goto LABEL_32;
              case 65:
                goto LABEL_6;
              case 66:
                v36 = v38;
                goto LABEL_7;
              default:
                goto LABEL_3;
            }

LABEL_82:
            v69 = v77;
            goto LABEL_83;
          }

          break;
        }

LABEL_119:
        v38 = v148;
        starttest(a1, 15);
        v158 = OUTLINED_FUNCTION_9_44();
        if (!lpta_loadp_setscan_r(v158, v159))
        {
          bspush_ca_scan(a1, 46);
          OUTLINED_FUNCTION_1_47();
          if (test_string_s())
          {
            goto LABEL_127;
          }

LABEL_81:
          v77 = 47;
          goto LABEL_82;
        }
      }

LABEL_120:
      ++HIWORD(v170);
      OUTLINED_FUNCTION_21_35();
      forall_cont_from(a1);
    }

LABEL_12:
    starttest(a1, 63);
    v49 = OUTLINED_FUNCTION_9_44();
    if (lpta_loadp_setscan_r(v49, v50))
    {
      goto LABEL_13;
    }

    bspush_ca_scan(a1, 64);
    OUTLINED_FUNCTION_1_47();
    v70 = test_string_s();
    v35 = v38;
    if (v70)
    {
      goto LABEL_47;
    }

LABEL_31:
    v71 = OUTLINED_FUNCTION_4_45();
    savescptr(v71, v72, v168);
LABEL_32:
    v73 = a1;
    v74 = 65;
    goto LABEL_116;
  }

LABEL_3:
  v7 = 94;
LABEL_4:
  vretproc(a1);
  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t OUTLINED_FUNCTION_10_43(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{

  return lpta_loadp_setscan_l(v34, &a34);
}

uint64_t OUTLINED_FUNCTION_15_41()
{
  *(v1 + 112) = v0;
  *(v1 + 128) = 0;
  return v1;
}

double OUTLINED_FUNCTION_19_38@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{

  *&result = savescptr(v25, a1, &a25).n128_u64[0];
  return result;
}

void OUTLINED_FUNCTION_20_36(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  a34 = 0;
  a35 = 0;
  a32 = 0;
  a33 = 0;

  bzero(&a9, 0xB8uLL);
}

void OUTLINED_FUNCTION_27_32(uint64_t a1, uint64_t a2)
{

  get_parm(a1, a2, v2, -6);
}

void *OUTLINED_FUNCTION_28_31(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return fence_47(v3, 0, a3);
}

void *fence_48(uint64_t a1, int a2, uint64_t a3)
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

uint64_t eng_symbolic_rules(uint64_t a1, uint64_t a2, __int16 *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  memset(&v16[184], 0, 32);
  bzero(v16, 0xB8uLL);
  bzero(v20, 0xC0uLL);
  if (setjmp(v20) || ventproc(a1, v16, v19, v18, v17, v20))
  {
    v5 = 94;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_1_48();
    get_parm(v8, v9, v10, -6);
    v11 = OUTLINED_FUNCTION_8_45();
    get_parm(v11, v12, a3, -6);
    fence_48(a1, 0, &null_str_14);
    fence_48(a1, 1, &_MergedGlobals_41);
    init_eng_symbolic_vars(a1);
    OUTLINED_FUNCTION_1_48();
    analyze_morphs2();
    OUTLINED_FUNCTION_1_48();
    generate_diaphones();
    OUTLINED_FUNCTION_1_48();
    pre_syll_phone_adjustments();
    OUTLINED_FUNCTION_1_48();
    create_eng_syllables();
    OUTLINED_FUNCTION_1_48();
    assign_eng_stress();
    OUTLINED_FUNCTION_1_48();
    post_syll_adjustments();
    v13 = OUTLINED_FUNCTION_1_48();
    break_into_phones(v13, v14, v15);
    v5 = 0;
  }

  vretproc(a1);
  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t break_into_phones(uint64_t a1, __int16 *a2, __int16 *a3)
{
  v115 = *MEMORY[0x277D85DE8];
  v110[0] = 0;
  v110[1] = 0;
  memset(v109, 0, sizeof(v109));
  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v104[0] = 0;
  v104[1] = 0;
  bzero(v103, 0xB8uLL);
  bzero(v114, 0xC0uLL);
  if (!setjmp(v114) && !ventproc(a1, v103, v113, v112, v111, v114))
  {
    get_parm(a1, v110, a2, -6);
    v8 = OUTLINED_FUNCTION_8_45();
    get_parm(v8, v9, a3, -6);
    v10 = OUTLINED_FUNCTION_7_45();
    push_ptr_init(v10, v11);
    *&v108 = 0;
    *(&v108 + 6) = 0;
    LODWORD(v107) = -65534;
    *&v106 = 0;
    *(&v106 + 6) = 0;
    LODWORD(v105) = -65534;
    push_ptr_init(a1, v104);
    v12 = 0;
    fence_48(a1, 0, &null_str_14);
    fence_48(a1, 1, &_MergedGlobals_41);
    startloop(a1, 1);
    lpta_loadpn(a1, v110);
    OUTLINED_FUNCTION_2_48();
    lpta_mover();
    lpta_storep(a1, a1 + 1576);
    v13 = OUTLINED_FUNCTION_8_45();
    lpta_loadpn(v13, v14);
    OUTLINED_FUNCTION_2_48();
    lpta_mover();
    v15 = OUTLINED_FUNCTION_7_45();
    lpta_storep(v15, v16);
    v17 = 0;
    if (!forall_to_test(a1, (a1 + 1576), v109))
    {
LABEL_6:
      v17 = v12;
      v18 = OUTLINED_FUNCTION_4_46();
      bspush_ca(v18);
      if (!OUTLINED_FUNCTION_5_46())
      {
        OUTLINED_FUNCTION_4_46();
        bspush_ca_scan_boa();
        v19 = OUTLINED_FUNCTION_2_48();
        if (testFldeq(v19, v20, v21, 19))
        {
          v17 = v12;
        }

        else
        {
          v17 = 1;
        }
      }
    }

    v22 = v17;
    while (1)
    {
      v23 = *(a1 + 104);
      if (v23)
      {
        *(a1 + 104) = 0;
        v24 = v23;
        v25 = v22;
      }

      else
      {
        v24 = vback(a1, v22);
        v25 = 0;
      }

      switch(v24)
      {
        case 1:
          goto LABEL_85;
        case 2:
          goto LABEL_17;
        case 3:
        case 7:
        case 9:
        case 11:
        case 13:
        case 15:
        case 26:
        case 30:
          goto LABEL_84;
        case 4:
          bspop_boa(a1);
          v26 = advance_tok(a1);
          v22 = v25;
          if (v26)
          {
            continue;
          }

          goto LABEL_16;
        case 5:
LABEL_16:
          savescptr(a1, 5, a1 + 1592);
LABEL_17:
          if (OUTLINED_FUNCTION_5_46())
          {
            goto LABEL_19;
          }

          OUTLINED_FUNCTION_0_49();
          if (test_string_s())
          {
            goto LABEL_19;
          }

          v90 = OUTLINED_FUNCTION_4_46();
          starttest(v90, v91);
          OUTLINED_FUNCTION_3_47();
          if (!v55)
          {
            goto LABEL_84;
          }

          goto LABEL_78;
        case 6:
LABEL_19:
          if (OUTLINED_FUNCTION_5_46())
          {
            goto LABEL_21;
          }

          OUTLINED_FUNCTION_0_49();
          if (test_string_s())
          {
            goto LABEL_21;
          }

          v88 = OUTLINED_FUNCTION_4_46();
          starttest(v88, v89);
          OUTLINED_FUNCTION_3_47();
          if (!v55)
          {
            goto LABEL_84;
          }

          goto LABEL_78;
        case 8:
LABEL_21:
          if (OUTLINED_FUNCTION_5_46())
          {
            goto LABEL_23;
          }

          OUTLINED_FUNCTION_0_49();
          if (test_string_s())
          {
            goto LABEL_23;
          }

          v83 = OUTLINED_FUNCTION_4_46();
          starttest(v83, v84);
          OUTLINED_FUNCTION_3_47();
          if (!v55)
          {
            goto LABEL_84;
          }

          goto LABEL_78;
        case 10:
LABEL_23:
          if (OUTLINED_FUNCTION_5_46())
          {
            goto LABEL_25;
          }

          OUTLINED_FUNCTION_0_49();
          if (test_string_s())
          {
            goto LABEL_25;
          }

          v81 = OUTLINED_FUNCTION_4_46();
          starttest(v81, v82);
          OUTLINED_FUNCTION_3_47();
          if (!v55)
          {
            goto LABEL_84;
          }

          goto LABEL_78;
        case 12:
LABEL_25:
          if (OUTLINED_FUNCTION_5_46())
          {
            goto LABEL_27;
          }

          OUTLINED_FUNCTION_0_49();
          if (test_string_s())
          {
            goto LABEL_27;
          }

          v79 = OUTLINED_FUNCTION_4_46();
          starttest(v79, v80);
          OUTLINED_FUNCTION_3_47();
          if (v55)
          {
LABEL_78:
            OUTLINED_FUNCTION_6_45();
            v92 = OUTLINED_FUNCTION_0_49();
            insert_2pt_s(v92, v93, v94, v95, v96);
          }

          goto LABEL_84;
        case 14:
LABEL_27:
          v27 = OUTLINED_FUNCTION_4_46();
          starttest(v27, v28);
          if (OUTLINED_FUNCTION_5_46())
          {
            goto LABEL_29;
          }

          OUTLINED_FUNCTION_0_49();
          if (test_string_s())
          {
            goto LABEL_29;
          }

          OUTLINED_FUNCTION_6_45();
          OUTLINED_FUNCTION_7_45();
          settvar_s();
          OUTLINED_FUNCTION_2_48();
          insert_2ptv();
          v22 = v25;
          if (v74)
          {
            continue;
          }

          OUTLINED_FUNCTION_7_45();
          settvar_s();
          npush_s(a1);
          WORD1(v105) = 1;
          v75 = OUTLINED_FUNCTION_7_45();
          npop(v75, v76);
          npush_s(a1);
          WORD1(v105) = 5;
          v77 = OUTLINED_FUNCTION_7_45();
          npop(v77, v78);
          OUTLINED_FUNCTION_2_48();
          goto LABEL_83;
        case 16:
LABEL_29:
          v29 = OUTLINED_FUNCTION_4_46();
          starttest(v29, v30);
          if (OUTLINED_FUNCTION_5_46())
          {
            goto LABEL_32;
          }

          OUTLINED_FUNCTION_0_49();
          if (test_string_s())
          {
            goto LABEL_32;
          }

          OUTLINED_FUNCTION_6_45();
          v31 = OUTLINED_FUNCTION_2_48();
          if (insert_2pt_s(v31, v32, 1, v33, v34))
          {
            goto LABEL_32;
          }

          OUTLINED_FUNCTION_8_45();
          settvar_s();
          npush_s(a1);
          WORD1(v105) = 1;
          v98 = OUTLINED_FUNCTION_8_45();
          npop(v98, v99);
          npush_s(a1);
          WORD1(v105) = 5;
          v100 = OUTLINED_FUNCTION_8_45();
          npop(v100, v101);
          OUTLINED_FUNCTION_2_48();
LABEL_83:
          insert_lv();
          goto LABEL_84;
        case 17:
LABEL_32:
          v35 = OUTLINED_FUNCTION_4_46();
          starttest(v35, v36);
          if (OUTLINED_FUNCTION_5_46())
          {
            goto LABEL_35;
          }

          OUTLINED_FUNCTION_0_49();
          if (test_string_s())
          {
            goto LABEL_35;
          }

          OUTLINED_FUNCTION_6_45();
          v37 = OUTLINED_FUNCTION_2_48();
          if (insert_2pt_s(v37, v38, 1, v39, v40))
          {
            goto LABEL_35;
          }

          v97 = OUTLINED_FUNCTION_2_48();
          insert_l(v97);
          lpta_storep(a1, v104);
          settvar_s();
          npush_s(a1);
          WORD1(v105) = 1;
          npop(a1, &v105);
          npush_s(a1);
          WORD1(v105) = 5;
          npop(a1, &v105);
          OUTLINED_FUNCTION_2_48();
          insert_2ptv();
          goto LABEL_80;
        case 18:
LABEL_35:
          v41 = OUTLINED_FUNCTION_4_46();
          starttest(v41, v42);
          if (OUTLINED_FUNCTION_5_46())
          {
            goto LABEL_38;
          }

          OUTLINED_FUNCTION_0_49();
          if (test_string_s())
          {
            goto LABEL_38;
          }

          OUTLINED_FUNCTION_6_45();
          v43 = OUTLINED_FUNCTION_2_48();
          if (insert_2pt_s(v43, v44, 2, v45, v46))
          {
            goto LABEL_38;
          }

          goto LABEL_84;
        case 19:
LABEL_38:
          v47 = OUTLINED_FUNCTION_4_46();
          starttest(v47, v48);
          if (OUTLINED_FUNCTION_5_46())
          {
            goto LABEL_41;
          }

          OUTLINED_FUNCTION_0_49();
          if (test_string_s())
          {
            goto LABEL_41;
          }

          OUTLINED_FUNCTION_6_45();
          v49 = OUTLINED_FUNCTION_2_48();
          if (insert_2pt_s(v49, v50, 2, v51, v52))
          {
            goto LABEL_41;
          }

          goto LABEL_84;
        case 20:
LABEL_41:
          v53 = OUTLINED_FUNCTION_4_46();
          starttest(v53, v54);
          OUTLINED_FUNCTION_3_47();
          if (!v55)
          {
            goto LABEL_84;
          }

          v56 = OUTLINED_FUNCTION_4_46();
          starttest(v56, v57);
          if (OUTLINED_FUNCTION_5_46())
          {
LABEL_44:
            v58 = OUTLINED_FUNCTION_4_46();
            starttest(v58, v59);
            if (!OUTLINED_FUNCTION_5_46())
            {
              OUTLINED_FUNCTION_0_49();
              if (!test_string_s())
              {
                goto LABEL_69;
              }
            }

LABEL_46:
            v60 = OUTLINED_FUNCTION_4_46();
            starttest(v60, v61);
            if (OUTLINED_FUNCTION_5_46() || (OUTLINED_FUNCTION_0_49(), test_string_s()))
            {
LABEL_84:
              v102 = forto_adv_upto_r(a1, 1, 2, 33, 2, a1 + 1576);
              v22 = v25;
              if (!v102)
              {
LABEL_85:
                vretproc(a1);
                result = 0;
                goto LABEL_4;
              }
            }

            else
            {
LABEL_69:
              OUTLINED_FUNCTION_4_46();
              bspush_ca_scan_boa();
LABEL_70:
              v85 = OUTLINED_FUNCTION_4_46();
              if (test_synch(v85, v86, 1u, v87))
              {
                v22 = v25;
              }

              else
              {
                v22 = 1;
              }
            }
          }

          else
          {
            v62 = OUTLINED_FUNCTION_4_46();
            bspush_ca_scan(v62, v63);
LABEL_50:
            OUTLINED_FUNCTION_0_49();
            v64 = test_string_s();
            v22 = v25;
            if (!v64)
            {
              goto LABEL_69;
            }
          }

          break;
        case 21:
          goto LABEL_44;
        case 22:
          goto LABEL_50;
        case 23:
          goto LABEL_69;
        case 24:
          bspop_boa(a1);
          OUTLINED_FUNCTION_0_49();
          v66 = test_string_s();
          v22 = v25;
          if (v66)
          {
            continue;
          }

          goto LABEL_57;
        case 25:
        case 29:
        case 32:
          goto LABEL_70;
        case 27:
          goto LABEL_46;
        case 28:
          bspop_boa(a1);
          OUTLINED_FUNCTION_0_49();
          v67 = test_string_s();
          v22 = v25;
          if (v67)
          {
            continue;
          }

          goto LABEL_57;
        case 31:
          bspop_boa(a1);
          OUTLINED_FUNCTION_0_49();
          v65 = test_string_s();
          v22 = v25;
          if (v65)
          {
            continue;
          }

LABEL_57:
          OUTLINED_FUNCTION_6_45();
          v68 = OUTLINED_FUNCTION_0_49();
          inserted = insert_2pt_s(v68, v69, v70, v71, v72);
LABEL_80:
          v22 = v25;
          if (!inserted)
          {
            goto LABEL_84;
          }

          continue;
        case 33:
          v12 = v25;
          goto LABEL_6;
        default:
          goto LABEL_3;
      }
    }
  }

LABEL_3:
  vretproc(a1);
  result = 94;
LABEL_4:
  v7 = *MEMORY[0x277D85DE8];
  return result;
}