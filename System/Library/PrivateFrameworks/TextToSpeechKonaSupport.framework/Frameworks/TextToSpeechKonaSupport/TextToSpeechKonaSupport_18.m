uint64_t fren_hyphen_between_nums(uint64_t a1, __int16 *a2, __int16 *a3, int a4, int a5, int a6, int a7, int a8)
{
  v52 = *MEMORY[0x277D85DE8];
  memset(v47, 0, sizeof(v47));
  v46[0] = 0;
  v46[1] = 0;
  v45[0] = 0;
  v45[1] = 0;
  memset(v44, 0, sizeof(v44));
  OUTLINED_FUNCTION_15_30(a1, a2, a3, a4, a5, a6, a7, a8, v43[0], v43[1], v43[2], v43[3], v43[4], v43[5], v43[6], v43[7], v43[8], v43[9], v43[10], v43[11], v43[12], v43[13], v43[14], v43[15], v43[16], v43[17], v43[18], v43[19], v43[20], v43[21], v43[22], v43[23], v43[24]);
  OUTLINED_FUNCTION_18_29();
  bzero(v51, v11);
  if (setjmp(v51) || ventproc(a1, v43, v50, v49, v48, v51))
  {
LABEL_3:
    vretproc(a1);
    result = 94;
    goto LABEL_4;
  }

  v14 = OUTLINED_FUNCTION_21_24();
  get_parm(v14, v15, a2, -6);
  get_parm(a1, v47, a3, -6);
  OUTLINED_FUNCTION_28_20(a1, v46);
  OUTLINED_FUNCTION_25_23(a1, v45);
  v16 = OUTLINED_FUNCTION_22_23();
  push_ptr_init(v16, v17);
  v18 = OUTLINED_FUNCTION_11_32();
  push_ptr_init(v18, v19);
  push_ptr_init(a1, v44);
  v20 = OUTLINED_FUNCTION_12_32();
  push_ptr_init(v20, v21);
  fence_34(a1);
  OUTLINED_FUNCTION_22_23();
  find_previous_word();
  if (!v22)
  {
    v23 = OUTLINED_FUNCTION_5_33();
    starttest(v23, v24);
    if (*(a1 + 3094) != 4 || (v25 = OUTLINED_FUNCTION_10_32(), lpta_loadp_setscan_r(v25, v26)) || advance_tok(a1) || advance_tok(a1) || (*(a1 + 136) = 1, OUTLINED_FUNCTION_14_31()) || (v27 = OUTLINED_FUNCTION_10_32(), lpta_loadp_setscan_r(v27, v28)))
    {
LABEL_12:
      v29 = OUTLINED_FUNCTION_10_32();
      if (lpta_loadp_setscan_r(v29, v30))
      {
        goto LABEL_16;
      }

      OUTLINED_FUNCTION_13_31();
      if (test_string_s())
      {
        goto LABEL_16;
      }

      *(a1 + 136) = 1;
      if (OUTLINED_FUNCTION_14_31())
      {
        goto LABEL_16;
      }
    }

    else
    {
      v37 = OUTLINED_FUNCTION_5_33();
      bspush_ca_scan(v37, v38);
      OUTLINED_FUNCTION_3_35();
      if (test_string_s())
      {
        while (2)
        {
          v39 = *(a1 + 104);
          if (v39)
          {
            v40 = OUTLINED_FUNCTION_20_25(v39);
          }

          else
          {
            v41 = OUTLINED_FUNCTION_26_23();
            v40 = vback(v41, v42);
          }

          switch(v40)
          {
            case 1:
              goto LABEL_16;
            case 2:
              goto LABEL_12;
            case 3:
              OUTLINED_FUNCTION_6_33();
              if (!test_string_s())
              {
                break;
              }

              continue;
            case 4:
              goto LABEL_15;
            case 5:
              goto LABEL_17;
            case 6:
              goto LABEL_20;
            default:
              goto LABEL_3;
          }

          break;
        }
      }
    }

LABEL_15:
    *(a1 + 2982) = *(a1 + 2986);
  }

LABEL_16:
  if (!*(a1 + 2982))
  {
LABEL_17:
    find_next_word();
    if (!v31)
    {
      v32 = OUTLINED_FUNCTION_29_20();
      lpta_rpta_loadp(v32, v33, v34);
      v35 = OUTLINED_FUNCTION_6_33();
      if (!setd_lookup(v35, v36, 59))
      {
        *(a1 + 2982) = *(a1 + 2990);
      }
    }
  }

LABEL_20:
  vretproc(a1);
  result = 0;
LABEL_4:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void t_intercole()
{
  OUTLINED_FUNCTION_30_19();
  OUTLINED_FUNCTION_17_30();
  v53 = *MEMORY[0x277D85DE8];
  v40 = 0;
  v41 = 0;
  v38 = 0;
  v39 = 0;
  v36 = 0;
  v37 = 0;
  v34 = 0;
  v35 = 0;
  OUTLINED_FUNCTION_19_25();
  bzero(v33, v2);
  OUTLINED_FUNCTION_18_29();
  bzero(v52, v3);
  v4 = setjmp(v52);
  if (v4)
  {
    goto LABEL_5;
  }

  if (OUTLINED_FUNCTION_27_21(v4, v33, v5, v6, v7, v8, v9, v10, v26, v27, v28, v29, v30, v31, v32, v33[0], v33[1], v33[2], v33[3], v33[4], v33[5], v33[6], v33[7], v33[8], v33[9], v33[10], v33[11], v33[12], v33[13], v33[14], v33[15], v33[16], v33[17], v33[18], v33[19], v33[20], v33[21], v33[22], v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52[0]))
  {
    goto LABEL_5;
  }

  v11 = OUTLINED_FUNCTION_16_30();
  OUTLINED_FUNCTION_28_20(v11, v12);
  OUTLINED_FUNCTION_25_23(v0, &v38);
  push_ptr_init(v0, &v36);
  push_ptr_init(v0, &v34);
  fence_34(v0);
  starttest(v0, 1);
  v13 = OUTLINED_FUNCTION_16_30();
  if (lpta_loadp_setscan_r(v13, v14))
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_0_37();
  if (test_string_s())
  {
    goto LABEL_5;
  }

LABEL_6:
  savescptr(v0, 2, &v36);
  OUTLINED_FUNCTION_0_37();
  if (test_string_s())
  {
    goto LABEL_11;
  }

LABEL_7:
  savescptr(v0, 3, &v34);
  bspush_ca_scan(v0, 4);
  bspush_ca_scan(v0, 5);
  OUTLINED_FUNCTION_3_35();
LABEL_8:
  if (test_string_s())
  {
    goto LABEL_11;
  }

LABEL_9:
  bspush_ca_scan(v0, 9);
  bspush_ca_scan(v0, 10);
  OUTLINED_FUNCTION_0_37();
  while (1)
  {
    if (test_string_s())
    {
      goto LABEL_11;
    }

LABEL_26:
    savescptr(v0, 11, &v38);
    if (!end_of_word())
    {
      break;
    }

LABEL_11:
    while (2)
    {
      v16 = *(v0 + 104);
      if (v16)
      {
        v17 = OUTLINED_FUNCTION_20_25(v16);
      }

      else
      {
        v18 = OUTLINED_FUNCTION_26_23();
        v17 = vback(v18, v19);
      }

      switch(v17)
      {
        case 2:
          goto LABEL_6;
        case 3:
          goto LABEL_7;
        case 4:
          v20 = OUTLINED_FUNCTION_16_30();
          bspush_ca_scan(v20, v21);
          v22 = OUTLINED_FUNCTION_23_23();
          bspush_ca_scan(v22, v23);
          OUTLINED_FUNCTION_0_37();
          goto LABEL_21;
        case 5:
          bspush_ca_scan(v0, 7);
          OUTLINED_FUNCTION_3_35();
          goto LABEL_8;
        case 6:
          goto LABEL_9;
        case 7:
          bspush_ca_scan(v0, 8);
          OUTLINED_FUNCTION_6_33();
          goto LABEL_8;
        case 8:
          OUTLINED_FUNCTION_6_33();
          goto LABEL_8;
        case 9:
        case 11:
          goto LABEL_26;
        case 10:
        case 14:
        case 16:
          goto LABEL_22;
        case 12:
          v24 = OUTLINED_FUNCTION_7_33();
          bspush_ca_scan(v24, v25);
          OUTLINED_FUNCTION_0_37();
          goto LABEL_18;
        case 13:
          OUTLINED_FUNCTION_0_37();
LABEL_21:
          if (!test_string_s())
          {
            goto LABEL_22;
          }

          continue;
        case 15:
          OUTLINED_FUNCTION_0_37();
LABEL_18:
          if (test_string_s())
          {
            continue;
          }

LABEL_22:
          OUTLINED_FUNCTION_0_37();
          break;
        case 17:
          goto LABEL_27;
        case 18:
          goto LABEL_29;
        default:
          goto LABEL_5;
      }

      break;
    }
  }

LABEL_27:
  lpta_rpta_loadp(v0, &v36, &v34);
  OUTLINED_FUNCTION_6_33();
  if (mark_s())
  {
    goto LABEL_11;
  }

  convert_to_lowercase();
LABEL_29:
  *(v1 + 8) = v39;
LABEL_5:
  vretproc(v0);
  v15 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_31_18();
}

uint64_t OUTLINED_FUNCTION_14_31()
{
  *(v1 + 112) = v0;
  *(v1 + 128) = 0;

  return test_ptr(v1);
}

void OUTLINED_FUNCTION_15_30(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  a32 = 0;
  a33 = 0;

  bzero(&a9, 0xB8uLL);
}

void OUTLINED_FUNCTION_24_23()
{
  fence_34(v0);

  starttest(v0, 1);
}

void OUTLINED_FUNCTION_25_23(uint64_t a1, uint64_t a2)
{

  get_parm(a1, a2, v2, -6);
}

uint64_t OUTLINED_FUNCTION_27_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, int a47, char a48, int a49, __int16 a50, char a51, int a52, __int16 a53, char a54, char a55, uint64_t a56, char a57)
{

  return ventproc(v57, a2, &a55, &a51, &a48, &a57);
}

void OUTLINED_FUNCTION_28_20(uint64_t a1, uint64_t a2)
{

  get_parm(a1, a2, v2, -6);
}

uint64_t convert_fren_digits_to_words()
{
  OUTLINED_FUNCTION_5_34();
  v45 = *MEMORY[0x277D85DE8];
  v42 = 0;
  v43 = 0;
  v40 = 0;
  v41 = 0;
  v39 = 0;
  OUTLINED_FUNCTION_38_15();
  bzero(&v38, v1);
  OUTLINED_FUNCTION_37_15();
  bzero(v44, v2);
  if (!setjmp(v44))
  {
    OUTLINED_FUNCTION_33_18();
    if (!ventproc(v0, v3, v4, v5, v6, v44))
    {
      v9 = OUTLINED_FUNCTION_7_34();
      get_parm(v9, v10, v11, -6);
      v12 = OUTLINED_FUNCTION_27_22();
      OUTLINED_FUNCTION_72_11(v12, v13);
      v39 = 0xFFFC0000FFFCLL;
      fence_35(v0);
      v14 = OUTLINED_FUNCTION_21_25();
      starttest(v14, v15);
      v16 = OUTLINED_FUNCTION_61_11();
      move_i(v16, v17, 0);
      v18 = OUTLINED_FUNCTION_52_12();
      move_i(v18, v19, 0);
      OUTLINED_FUNCTION_7_34();
      convert_fren_monetary_exp();
      if (v20)
      {
        while (2)
        {
          v21 = *(v0 + 104);
          if (v21)
          {
            v22 = OUTLINED_FUNCTION_40_14(v21);
          }

          else
          {
            v22 = OUTLINED_FUNCTION_85_9();
          }

          switch(v22)
          {
            case 1:
              OUTLINED_FUNCTION_27_22();
              if (!convert_fren_date())
              {
                break;
              }

              goto LABEL_10;
            case 2:
            case 9:
              goto LABEL_18;
            case 3:
LABEL_10:
              v23 = OUTLINED_FUNCTION_27_22();
              if (convert_fren_time(v23, v24))
              {
                goto LABEL_11;
              }

              break;
            case 4:
LABEL_11:
              OUTLINED_FUNCTION_27_22();
              if (convert_fren_phone_number())
              {
                goto LABEL_12;
              }

              break;
            case 5:
LABEL_12:
              v25 = OUTLINED_FUNCTION_87_8();
              starttest(v25, v26);
              v27 = OUTLINED_FUNCTION_6_34();
              if (!lpta_loadp_setscan_r(v27, v28))
              {
                OUTLINED_FUNCTION_0_38();
                if (!test_string_s())
                {
                  goto LABEL_14;
                }
              }

              goto LABEL_17;
            case 6:
LABEL_17:
              OUTLINED_FUNCTION_12_33();
              convert_digits();
              goto LABEL_18;
            case 7:
              OUTLINED_FUNCTION_58_11();
              v35 = OUTLINED_FUNCTION_30_20();
              savescptr(v35, v36, v37);
              OUTLINED_FUNCTION_9_33();
              single_chars();
LABEL_18:
              if (*(v0 + 3042) != *(v0 + 3018))
              {
                goto LABEL_19;
              }

              break;
            case 8:
              do
              {
LABEL_14:
                v29 = OUTLINED_FUNCTION_52_12();
                bspush_ca_scan(v29, v30);
                v31 = OUTLINED_FUNCTION_3_36();
              }

              while (!testFldeq(v31, v32, v33, 2) && !advance_tok(v0));
              continue;
            case 10:
LABEL_19:
              OUTLINED_FUNCTION_49_13();
              if (convert_fren_ordinal())
              {
                goto LABEL_20;
              }

              goto LABEL_23;
            case 11:
              goto LABEL_22;
            case 12:
LABEL_20:
              OUTLINED_FUNCTION_49_13();
              add_fren_point_digits();
              if (v34)
              {
                goto LABEL_21;
              }

              goto LABEL_22;
            case 13:
LABEL_21:
              OUTLINED_FUNCTION_49_13();
              convert_fren_fraction();
LABEL_22:
              OUTLINED_FUNCTION_49_13();
              separate_number_sequences();
              goto LABEL_23;
            case 14:
              goto LABEL_23;
            default:
              goto LABEL_3;
          }

          break;
        }
      }

LABEL_23:
      OUTLINED_FUNCTION_81_10(v41);
    }
  }

LABEL_3:
  vretproc(v0);
  v7 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_95_7();
}

void convert_fren_monetary_exp()
{
  OUTLINED_FUNCTION_74_11();
  v1 = v0;
  v315 = v2;
  v4 = v3;
  v6 = v5;
  v356 = *MEMORY[0x277D85DE8];
  v351[0] = 0;
  v351[1] = 0;
  v349 = 0;
  v350 = 0;
  v347[1] = 0;
  v348 = 0;
  v346[1] = 0;
  v347[0] = 0;
  v345[1] = 0;
  v346[0] = 0;
  v344 = 0;
  v345[0] = 0;
  v342 = 0;
  v343 = 0;
  v340 = 0;
  v341 = 0;
  v339 = 0;
  OUTLINED_FUNCTION_38_15();
  bzero(&v316, v7);
  OUTLINED_FUNCTION_37_15();
  bzero(v355, v8);
  if (setjmp(v355) || ventproc(v6, &v316, v354, v353, v352, v355))
  {
    goto LABEL_3;
  }

  get_parm(v6, v351, v4, -6);
  get_parm(v6, &v349, v315, -6);
  v10 = OUTLINED_FUNCTION_87_8();
  get_parm(v10, v11, v1, -4);
  v12 = OUTLINED_FUNCTION_30_20();
  get_parm(v12, v13, v14, -4);
  push_ptr_init(v6, v347);
  v15 = OUTLINED_FUNCTION_79_10();
  push_ptr_init(v15, v16);
  v17 = OUTLINED_FUNCTION_94_7();
  push_ptr_init(v17, v18);
  v19 = OUTLINED_FUNCTION_86_8();
  push_ptr_init(v19, v20);
  v21 = OUTLINED_FUNCTION_51_12();
  push_ptr_init(v21, v22);
  v23 = OUTLINED_FUNCTION_29_21();
  push_ptr_init(v23, v24);
  fence_35(v6);
  v25 = OUTLINED_FUNCTION_21_25();
  starttest(v25, v26);
  v313 = &v348 + 6;
  v314 = v6 + 3118;
  if (*(v6 + 3118) != HIWORD(v348) || (v27 = OUTLINED_FUNCTION_22_24(), lpta_loadp_setscan_r(v27, v28)))
  {
    v29 = 0;
LABEL_8:
    v30 = OUTLINED_FUNCTION_21_25();
    starttest(v30, v31);
    v32 = OUTLINED_FUNCTION_22_24();
    if (lpta_loadp_setscan_r(v32, v33))
    {
      goto LABEL_3;
    }

    v34 = OUTLINED_FUNCTION_21_25();
    bspush_ca_scan(v34, v35);
    OUTLINED_FUNCTION_0_38();
    v36 = test_string_s();
    v37 = v29;
    if (!v36)
    {
LABEL_10:
      v29 = v37;
      OUTLINED_FUNCTION_58_11();
      savescptr(v6, v38, v351);
      v39 = OUTLINED_FUNCTION_21_25();
      bspush_ca_scan(v39, v40);
      OUTLINED_FUNCTION_0_38();
      v41 = test_string_s();
      v42 = v29;
      if (!v41)
      {
LABEL_11:
        v29 = v42;
        v43 = OUTLINED_FUNCTION_78_10();
        savescptr(v43, v44, v45);
        v46 = OUTLINED_FUNCTION_3_36();
        if (!testFldeq(v46, v47, v48, 2) && !advance_tok(v6))
        {
          v49 = OUTLINED_FUNCTION_16_31();
          bspush_ca_scan(v49, v50);
          v51 = v29;
LABEL_14:
          v52 = v51;
          v53 = OUTLINED_FUNCTION_21_25();
          bspush_ca_scan(v53, v54);
          v55 = v52;
LABEL_15:
          v29 = v55;
          v56 = OUTLINED_FUNCTION_21_25();
          bspush_ca_scan(v56, v57);
          v58 = OUTLINED_FUNCTION_21_25();
          bspush_ca_scan(v58, v59);
LABEL_16:
          while (1)
          {
            OUTLINED_FUNCTION_0_38();
            if (test_string_s())
            {
              break;
            }

            v60 = OUTLINED_FUNCTION_3_36();
            if (testFldeq(v60, v61, v62, 2))
            {
              break;
            }

            if (advance_tok(v6))
            {
              break;
            }

            v63 = OUTLINED_FUNCTION_3_36();
            if (testFldeq(v63, v64, v65, 2))
            {
              break;
            }

            if (advance_tok(v6))
            {
              break;
            }

            v66 = OUTLINED_FUNCTION_3_36();
            if (testFldeq(v66, v67, v68, 2) || advance_tok(v6))
            {
              break;
            }

            v69 = OUTLINED_FUNCTION_31_19();
            bspush_ca_scan(v69, v70);
          }
        }
      }
    }

    goto LABEL_181;
  }

  v71 = OUTLINED_FUNCTION_13_32();
  bspush_ca_scan(v71, v72);
  OUTLINED_FUNCTION_0_38();
  v73 = test_string_s();
  v74 = 0;
  v29 = 0;
  if (v73)
  {
    goto LABEL_181;
  }

  while (2)
  {
    v29 = v74;
    OUTLINED_FUNCTION_45_13();
    v75 = OUTLINED_FUNCTION_78_10();
    savescptr(v75, v76, v77);
    OUTLINED_FUNCTION_0_38();
    v78 = test_string_s();
    v79 = v29;
    if (!v78)
    {
LABEL_30:
      v29 = v79;
      savescptr(v6, 3, v346);
      v80 = OUTLINED_FUNCTION_20_26();
      if (testFldeq(v80, v81, 3, 2))
      {
        goto LABEL_181;
      }

      if (advance_tok(v6))
      {
        goto LABEL_181;
      }

      v82 = OUTLINED_FUNCTION_3_36();
      if (testFldeq(v82, v83, v84, 2))
      {
        goto LABEL_181;
      }

      v85 = advance_tok(v6);
      v86 = v29;
      if (v85)
      {
        goto LABEL_181;
      }

LABEL_36:
      v29 = v86;
      OUTLINED_FUNCTION_50_13();
      v87 = OUTLINED_FUNCTION_92_8();
      savescptr(v87, v88, v89);
LABEL_37:
      if (HIWORD(v348))
      {
        v90 = OUTLINED_FUNCTION_86_8();
        lpta_loadpn(v90, v91);
        OUTLINED_FUNCTION_90_8();
        compare_ptas(v6);
        OUTLINED_FUNCTION_57_11();
        if (!v93)
        {
          testneq(v6);
          OUTLINED_FUNCTION_57_11();
          if (!v94)
          {
            goto LABEL_3;
          }
        }

LABEL_179:
        starttest(v6, v92);
        OUTLINED_FUNCTION_27_22();
        bspush_ca_boa();
        if (!end_of_word())
        {
          v29 = 1;
        }

        goto LABEL_181;
      }

LABEL_133:
      v258 = OUTLINED_FUNCTION_86_8();
      lpta_loadpn(v258, v259);
      OUTLINED_FUNCTION_90_8();
      if (compare_ptas(v6))
      {
LABEL_134:
        v260 = v29;
      }

      else
      {
        v261 = testneq(v6);
        v92 = 32;
        v260 = v29;
        if (!v261)
        {
          goto LABEL_179;
        }
      }

      v29 = v260;
      v262 = OUTLINED_FUNCTION_21_25();
      starttest(v262, v263);
      v264 = OUTLINED_FUNCTION_22_24();
      if (!lpta_loadp_setscan_r(v264, v265))
      {
        bspush_boa(v6);
        do
        {
LABEL_145:
          v284 = OUTLINED_FUNCTION_27_22();
          bspush_ca_scan(v284, v285);
          OUTLINED_FUNCTION_0_38();
        }

        while (!test_string_s());
        goto LABEL_181;
      }

LABEL_137:
      v266 = OUTLINED_FUNCTION_21_25();
      starttest(v266, v267);
      v268 = OUTLINED_FUNCTION_22_24();
      if (!lpta_loadp_setscan_r(v268, v269))
      {
        bspush_boa(v6);
        do
        {
LABEL_149:
          v286 = OUTLINED_FUNCTION_27_22();
          bspush_ca_scan(v286, v287);
          OUTLINED_FUNCTION_0_38();
        }

        while (!test_string_s());
        goto LABEL_181;
      }

LABEL_138:
      v270 = OUTLINED_FUNCTION_21_25();
      starttest(v270, v271);
      v272 = OUTLINED_FUNCTION_22_24();
      if (!lpta_loadp_setscan_r(v272, v273))
      {
        bspush_boa(v6);
        do
        {
LABEL_152:
          v288 = OUTLINED_FUNCTION_27_22();
          bspush_ca_scan(v288, v289);
          OUTLINED_FUNCTION_0_38();
        }

        while (!test_string_s());
        goto LABEL_181;
      }

LABEL_139:
      v274 = OUTLINED_FUNCTION_21_25();
      starttest(v274, v275);
      v276 = OUTLINED_FUNCTION_22_24();
      if (!lpta_loadp_setscan_r(v276, v277))
      {
        bspush_boa(v6);
        do
        {
LABEL_165:
          v302 = OUTLINED_FUNCTION_27_22();
          bspush_ca_scan(v302, v303);
          OUTLINED_FUNCTION_0_38();
        }

        while (!test_string_s());
        goto LABEL_181;
      }

LABEL_140:
      v278 = OUTLINED_FUNCTION_21_25();
      starttest(v278, v279);
      v280 = OUTLINED_FUNCTION_22_24();
      if (!lpta_loadp_setscan_r(v280, v281))
      {
        bspush_boa(v6);
        do
        {
LABEL_142:
          v282 = OUTLINED_FUNCTION_27_22();
          bspush_ca_scan(v282, v283);
          OUTLINED_FUNCTION_0_38();
        }

        while (!test_string_s());
        goto LABEL_181;
      }

LABEL_3:
      vretproc(v6);
      goto LABEL_4;
    }

LABEL_181:
    v104 = v29;
LABEL_43:
    v95 = *(v6 + 104);
    if (v95)
    {
      v96 = OUTLINED_FUNCTION_40_14(v95);
      v29 = v97;
    }

    else
    {
      v96 = vback(v6, v104);
      v29 = 0;
    }

    v51 = v29;
    v55 = v29;
    v98 = 1;
    v99 = 0;
    switch(v96)
    {
      case 1:
        goto LABEL_8;
      case 2:
        v74 = v29;
        continue;
      case 3:
        v79 = v29;
        goto LABEL_30;
      case 4:
        v86 = v29;
        goto LABEL_36;
      case 5:
        goto LABEL_37;
      case 7:
        v37 = v29;
        goto LABEL_10;
      case 8:
        v42 = v29;
        goto LABEL_11;
      case 9:
        v177 = OUTLINED_FUNCTION_3_36();
        v180 = testFldeq(v177, v178, v179, 2);
        v104 = v29;
        if (!v180)
        {
          v181 = advance_tok(v6);
          v51 = v29;
          v104 = v29;
          if (!v181)
          {
            goto LABEL_14;
          }
        }

        goto LABEL_43;
      case 10:
        goto LABEL_14;
      case 11:
        v172 = OUTLINED_FUNCTION_3_36();
        v175 = testFldeq(v172, v173, v174, 2);
        v104 = v29;
        if (!v175)
        {
          v176 = advance_tok(v6);
          v55 = v29;
          v104 = v29;
          if (!v176)
          {
            goto LABEL_15;
          }
        }

        goto LABEL_43;
      case 12:
        goto LABEL_15;
      case 13:
      case 15:
        OUTLINED_FUNCTION_59_11();
        savescptr(v6, v100, v345);
        OUTLINED_FUNCTION_21_25();
        bspush_ca_scan_boa();
        v101 = OUTLINED_FUNCTION_21_25();
        bspush_ca_scan(v101, v102);
        goto LABEL_62;
      case 14:
        goto LABEL_125;
      case 16:
        goto LABEL_16;
      case 17:
        do
        {
          v241 = OUTLINED_FUNCTION_3_36();
          v244 = testFldeq(v241, v242, v243, 2);
          v104 = v29;
          if (v244)
          {
            break;
          }

          v245 = advance_tok(v6);
          v104 = v29;
          if (v245)
          {
            break;
          }

          v246 = OUTLINED_FUNCTION_3_36();
          v249 = testFldeq(v246, v247, v248, 2);
          v104 = v29;
          if (v249)
          {
            break;
          }

          v250 = advance_tok(v6);
          v104 = v29;
          if (v250)
          {
            break;
          }

          v251 = OUTLINED_FUNCTION_3_36();
          v254 = testFldeq(v251, v252, v253, 2);
          v104 = v29;
          if (v254)
          {
            break;
          }

          v255 = advance_tok(v6);
          v104 = v29;
          if (v255)
          {
            break;
          }

          v256 = OUTLINED_FUNCTION_21_25();
          bspush_ca_scan(v256, v257);
LABEL_125:
          v238 = OUTLINED_FUNCTION_21_25();
          bspush_ca_scan(v238, v239);
          OUTLINED_FUNCTION_0_38();
          v240 = test_string_s();
          v104 = v29;
        }

        while (!v240);
        goto LABEL_43;
      case 18:
        goto LABEL_108;
      case 19:
        v121 = OUTLINED_FUNCTION_21_25();
        bspush_ca_scan(v121, v122);
LABEL_62:
        OUTLINED_FUNCTION_0_38();
        v123 = test_string_s();
        v104 = v29;
        if (!v123)
        {
          goto LABEL_104;
        }

        goto LABEL_43;
      case 20:
        goto LABEL_104;
      case 21:
        OUTLINED_FUNCTION_62_11(21, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334, v335, v336, v337, v338, v339, v340, v341, v342, v343);
        v195 = OUTLINED_FUNCTION_21_25();
        bspush_ca_scan(v195, v196);
        goto LABEL_102;
      case 22:
LABEL_102:
        OUTLINED_FUNCTION_0_38();
        v201 = test_string_s();
        v104 = v29;
        if (!v201)
        {
          goto LABEL_103;
        }

        goto LABEL_43;
      case 23:
LABEL_103:
        v202 = OUTLINED_FUNCTION_54_12();
        savescptr(v202, v203, v204);
LABEL_104:
        savescptr(v6, 20, v346);
        v205 = OUTLINED_FUNCTION_3_36();
        v208 = testFldeq(v205, v206, v207, 2);
        v104 = v29;
        if (v208)
        {
          goto LABEL_43;
        }

        v209 = advance_tok(v6);
        v104 = v29;
        if (v209)
        {
          goto LABEL_43;
        }

        v210 = OUTLINED_FUNCTION_3_36();
        v213 = testFldeq(v210, v211, v212, 2);
        v104 = v29;
        if (v213)
        {
          goto LABEL_43;
        }

        v214 = advance_tok(v6);
        v104 = v29;
        if (v214)
        {
          goto LABEL_43;
        }

LABEL_108:
        bspush_nboa(v6);
LABEL_109:
        v215 = OUTLINED_FUNCTION_92_8();
        savescptr(v215, v216, v217);
        OUTLINED_FUNCTION_21_25();
        bspush_ca_scan_boa();
        v218 = OUTLINED_FUNCTION_3_36();
        v221 = testFldeq(v218, v219, v220, 2);
        v104 = v29;
        if (v221)
        {
          goto LABEL_43;
        }

        v222 = advance_tok(v6);
        goto LABEL_122;
      case 24:
        goto LABEL_109;
      case 25:
        bspop_boa(v6);
        goto LABEL_37;
      case 26:
        goto LABEL_133;
      case 27:
        OUTLINED_FUNCTION_57_11();
        goto LABEL_179;
      case 28:
      case 30:
        goto LABEL_69;
      case 29:
      case 33:
      case 71:
        bspop_boa(v6);
        goto LABEL_3;
      case 31:
        goto LABEL_134;
      case 32:
        v124 = OUTLINED_FUNCTION_22_24();
        v126 = lpta_loadp_setscan_r(v124, v125);
        v127 = (v6 + 3142);
        if (!v126)
        {
          OUTLINED_FUNCTION_0_38();
          v128 = test_string_s();
          v127 = (v6 + 3126);
          if (v128)
          {
            goto LABEL_66;
          }
        }

        goto LABEL_67;
      case 34:
LABEL_66:
        v127 = (v6 + 3142);
LABEL_67:
        HIWORD(v348) = *v127;
        goto LABEL_68;
      case 35:
      case 36:
LABEL_68:
        OUTLINED_FUNCTION_54_12();
        mark_non_letter();
LABEL_69:
        *(v6 + 2806) = *(v6 + 2834);
        *(v6 + 3018) = *(v6 + 3046);
        lpta_loadpn(v6, v351);
        rpta_loadpn(v6, v347);
        if (!compare_ptas(v6) && !testneq(v6))
        {
          v129 = OUTLINED_FUNCTION_78_10();
          lpta_rpta_loadp(v129, v130, v131);
          v132 = OUTLINED_FUNCTION_2_36();
          insert_2pt_s(v132, v133, 6, v134, v135);
        }

        goto LABEL_72;
      case 37:
        goto LABEL_137;
      case 38:
        bspush_nboa(v6);
        goto LABEL_93;
      case 39:
        goto LABEL_145;
      case 40:
LABEL_93:
        OUTLINED_FUNCTION_62_11(40, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334, v335, v336, v337, v338, v339, v340, v341, v342, v343);
        OUTLINED_FUNCTION_0_38();
        v182 = test_string_s();
        v104 = v29;
        if (!v182)
        {
          goto LABEL_94;
        }

        goto LABEL_43;
      case 41:
LABEL_94:
        v183 = OUTLINED_FUNCTION_30_20();
        savescptr(v183, v184, v185);
        HIWORD(v348) = *(v6 + 3126);
        v186 = OUTLINED_FUNCTION_21_25();
        starttest(v186, v187);
        v188 = OUTLINED_FUNCTION_6_34();
        if (lpta_loadp_setscan_r(v188, v189))
        {
          goto LABEL_95;
        }

        v230 = OUTLINED_FUNCTION_21_25();
        bspush_ca_scan(v230, v231);
        goto LABEL_117;
      case 42:
LABEL_95:
        v190 = OUTLINED_FUNCTION_22_24();
        if (!lpta_loadp_setscan_r(v190, v191))
        {
          OUTLINED_FUNCTION_0_38();
          if (!test_string_s())
          {
            goto LABEL_97;
          }
        }

        goto LABEL_121;
      case 43:
        OUTLINED_FUNCTION_0_38();
        v103 = test_string_s();
        v104 = v29;
        if (v103)
        {
          goto LABEL_43;
        }

        goto LABEL_117;
      case 44:
LABEL_117:
        OUTLINED_FUNCTION_0_38();
        v232 = test_string_s();
        v104 = v29;
        if (!v232)
        {
          goto LABEL_118;
        }

        goto LABEL_43;
      case 45:
LABEL_118:
        v233 = OUTLINED_FUNCTION_54_12();
        savescptr(v233, v234, v235);
        v112 = (v6 + 3178);
        goto LABEL_119;
      case 46:
      case 48:
        goto LABEL_121;
      case 47:
LABEL_97:
        v192 = OUTLINED_FUNCTION_54_12();
        savescptr(v192, v193, v194);
        v112 = (v6 + 3174);
        goto LABEL_119;
      case 49:
        goto LABEL_138;
      case 50:
        bspush_nboa(v6);
        goto LABEL_112;
      case 51:
        goto LABEL_149;
      case 52:
LABEL_112:
        OUTLINED_FUNCTION_62_11(52, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334, v335, v336, v337, v338, v339, v340, v341, v342, v343);
        v223 = OUTLINED_FUNCTION_21_25();
        bspush_ca_scan(v223, v224);
        OUTLINED_FUNCTION_3_36();
        goto LABEL_113;
      case 53:
        OUTLINED_FUNCTION_0_38();
LABEL_113:
        v225 = test_string_s();
        v104 = v29;
        if (!v225)
        {
          goto LABEL_114;
        }

        goto LABEL_43;
      case 54:
LABEL_114:
        v226 = OUTLINED_FUNCTION_54_12();
        savescptr(v226, v227, v228);
        v112 = (v6 + 3142);
        goto LABEL_115;
      case 55:
        goto LABEL_139;
      case 56:
        bspush_nboa(v6);
        goto LABEL_51;
      case 57:
        goto LABEL_152;
      case 58:
LABEL_51:
        OUTLINED_FUNCTION_62_11(58, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334, v335, v336, v337, v338, v339, v340, v341, v342, v343);
        OUTLINED_FUNCTION_10_33();
        v105 = test_string_s();
        v104 = v29;
        if (v105)
        {
          goto LABEL_43;
        }

        v106 = OUTLINED_FUNCTION_21_25();
        bspush_ca_scan(v106, v107);
LABEL_53:
        OUTLINED_FUNCTION_0_38();
        v108 = test_string_s();
        v104 = v29;
        if (v108)
        {
          goto LABEL_43;
        }

LABEL_54:
        v109 = OUTLINED_FUNCTION_54_12();
        savescptr(v109, v110, v111);
        HIWORD(v348) = *(v6 + 3118);
        v112 = (v6 + 3182);
LABEL_119:
        v229 = &v348 + 1;
        goto LABEL_120;
      case 59:
        goto LABEL_53;
      case 60:
        goto LABEL_54;
      case 61:
        goto LABEL_140;
      case 62:
        bspush_nboa(v6);
        goto LABEL_56;
      case 63:
        goto LABEL_165;
      case 64:
LABEL_56:
        OUTLINED_FUNCTION_62_11(64, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334, v335, v336, v337, v338, v339, v340, v341, v342, v343);
        OUTLINED_FUNCTION_0_38();
        v113 = test_string_s();
        v104 = v29;
        if (!v113)
        {
          goto LABEL_57;
        }

        goto LABEL_43;
      case 65:
LABEL_57:
        v114 = OUTLINED_FUNCTION_54_12();
        savescptr(v114, v115, v116);
        v112 = v314;
        goto LABEL_115;
      case 67:
        bspush_nboa(v6);
        goto LABEL_100;
      case 68:
        goto LABEL_142;
      case 69:
LABEL_100:
        OUTLINED_FUNCTION_62_11(69, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334, v335, v336, v337, v338, v339, v340, v341, v342, v343);
        OUTLINED_FUNCTION_0_38();
        v197 = test_string_s();
        v104 = v29;
        if (!v197)
        {
          goto LABEL_101;
        }

        goto LABEL_43;
      case 70:
LABEL_101:
        v198 = OUTLINED_FUNCTION_54_12();
        savescptr(v198, v199, v200);
        v112 = (v6 + 3130);
LABEL_115:
        v229 = v313;
LABEL_120:
        *v229 = *v112;
LABEL_121:
        v236 = OUTLINED_FUNCTION_21_25();
        starttest(v236, v237);
        OUTLINED_FUNCTION_21_25();
        bspush_ca_boa();
        OUTLINED_FUNCTION_51_12();
        v222 = end_of_word();
LABEL_122:
        if (v222)
        {
          v104 = v29;
        }

        else
        {
          v104 = 1;
        }

        goto LABEL_43;
      case 72:
LABEL_72:
        v136 = OUTLINED_FUNCTION_94_7();
        lpta_loadpn(v136, v137);
        OUTLINED_FUNCTION_90_8();
        if (compare_ptas(v6) || testneq(v6))
        {
          v98 = 1;
          v99 = 0;
          goto LABEL_157;
        }

        v138 = OUTLINED_FUNCTION_22_24();
        if (lpta_loadp_setscan_r(v138, v139) || (OUTLINED_FUNCTION_4_35(), test_string_s()) || (*(v6 + 136) = 1, v140 = OUTLINED_FUNCTION_8_34(), test_ptr(v140)) || (v141 = OUTLINED_FUNCTION_83_9(), lpta_rpta_loadp(v141, v142, v143), v144 = OUTLINED_FUNCTION_15_31(), insert_2pt_s(v144, v145, v146, v147, v148)))
        {
LABEL_78:
          v149 = OUTLINED_FUNCTION_21_25();
          starttest(v149, v150);
          v151 = OUTLINED_FUNCTION_22_24();
          if (lpta_loadp_setscan_r(v151, v152))
          {
LABEL_154:
            OUTLINED_FUNCTION_83_9();
            convert_digits();
            goto LABEL_155;
          }

LABEL_79:
          OUTLINED_FUNCTION_4_35();
          v153 = test_string_s();
          v104 = v29;
          if (!v153)
          {
            v154 = OUTLINED_FUNCTION_21_25();
            bspush_ca_scan(v154, v155);
            *(v6 + 136) = 1;
            v156 = OUTLINED_FUNCTION_8_34();
            v157 = test_ptr(v156);
            v104 = v29;
            if (!v157)
            {
              v158 = OUTLINED_FUNCTION_21_25();
              starttest(v158, v159);
              v160 = OUTLINED_FUNCTION_21_25();
              bspush_ca(v160);
              v161 = OUTLINED_FUNCTION_94_7();
              lpta_loadpn(v161, v162);
              rpta_loadpn(v6, &v349);
              v163 = compare_ptas(v6);
              v104 = v29;
              if (!v163)
              {
                v120 = testeq(v6);
LABEL_83:
                v104 = v29;
                if (!v120)
                {
LABEL_84:
                  v164 = OUTLINED_FUNCTION_83_9();
                  lpta_rpta_loadp(v164, v165, v166);
                  v167 = OUTLINED_FUNCTION_2_36();
                  inserted = insert_2pt_s(v167, v168, 4, v169, v170);
                  v104 = v29;
                  if (!inserted)
                  {
                    goto LABEL_155;
                  }
                }
              }
            }
          }

          goto LABEL_43;
        }

        *(v6 + 3102) = 1;
LABEL_155:
        add_fren_currency_units(v6, v345, &v348 + 4, &v348);
LABEL_156:
        v98 = 0;
        *(v6 + 3102) = 0;
        v99 = 1;
LABEL_157:
        v290 = v98;
        v291 = OUTLINED_FUNCTION_79_10();
        lpta_loadpn(v291, v292);
        OUTLINED_FUNCTION_90_8();
        if (!compare_ptas(v6) && !testneq(v6))
        {
          v293 = OUTLINED_FUNCTION_22_24();
          if (lpta_loadp_setscan_r(v293, v294) || (OUTLINED_FUNCTION_10_33(), test_string_s()))
          {
LABEL_169:
            OUTLINED_FUNCTION_92_8();
            convert_fren_double();
            if (!v99)
            {
              goto LABEL_170;
            }
          }

          else if (v290)
          {
            v295 = OUTLINED_FUNCTION_92_8();
            lpta_rpta_loadp(v295, v296, v297);
            v298 = OUTLINED_FUNCTION_2_36();
            if (!insert_2pt_s(v298, v299, 4, v300, v301))
            {
LABEL_170:
              add_fren_subunits();
            }
          }
        }

LABEL_171:
        HIWORD(v348) = 0;
        WORD1(v348) = 0;
        v304 = OUTLINED_FUNCTION_51_12();
        lpta_loadpn(v304, v305);
        v306 = OUTLINED_FUNCTION_29_21();
        rpta_loadpn(v306, v307);
        if (!compare_ptas(v6) && !testneq(v6))
        {
          v308 = OUTLINED_FUNCTION_51_12();
          lpta_loadpn(v308, v309);
          v310 = OUTLINED_FUNCTION_79_10();
          rpta_loadpn(v310, v311);
          if (!compare_ptas(v6) && !testneq(v6))
          {
            v350 = v342;
          }
        }

LABEL_176:
        *(v315 + 8) = v350;
        vretproc(v6);
LABEL_4:
        v9 = *MEMORY[0x277D85DE8];
        OUTLINED_FUNCTION_73_11();
        return;
      case 73:
      case 78:
        goto LABEL_157;
      case 74:
        goto LABEL_78;
      case 75:
      case 81:
        goto LABEL_155;
      case 76:
        goto LABEL_154;
      case 77:
        goto LABEL_79;
      case 79:
        v117 = OUTLINED_FUNCTION_22_24();
        v119 = lpta_loadp_setscan_r(v117, v118);
        v104 = v29;
        if (v119)
        {
          goto LABEL_43;
        }

        OUTLINED_FUNCTION_10_33();
        v120 = test_string_s();
        goto LABEL_83;
      case 80:
        goto LABEL_84;
      case 82:
        goto LABEL_156;
      case 83:
      case 85:
        goto LABEL_171;
      case 84:
        v99 = 0;
        goto LABEL_169;
      case 86:
      case 87:
        goto LABEL_170;
      case 88:
        goto LABEL_176;
      default:
        goto LABEL_3;
    }
  }
}

uint64_t convert_fren_date()
{
  OUTLINED_FUNCTION_5_34();
  v286 = *MEMORY[0x277D85DE8];
  v281 = 0;
  v282 = 0;
  v279 = 0;
  v280 = 0;
  v276 = 0;
  v277 = 0;
  v278 = 0;
  v275[0] = 0;
  v275[1] = 0;
  v273 = 0;
  v274 = 0;
  v271 = 0;
  v272 = 0;
  v268 = 0;
  v269 = 0;
  v270 = 0;
  OUTLINED_FUNCTION_26_24(v2, v3, v4, v5, v6, v7, v8, v9, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258, v259, v260, v261, v262, v263, v264, v265, v266, v267);
  OUTLINED_FUNCTION_35_15();
  v10 = setjmp(v1);
  if (v10)
  {
    goto LABEL_4;
  }

  if (OUTLINED_FUNCTION_88_8(v10, &v243, v285, v284, v283))
  {
    goto LABEL_4;
  }

  v11 = OUTLINED_FUNCTION_7_34();
  get_parm(v11, v12, v13, -6);
  OUTLINED_FUNCTION_43_13(v14, &v279);
  WORD2(v278) = 0;
  LODWORD(v278) = 0;
  LODWORD(v276) = -65535;
  push_ptr_init(v0, v275);
  v15 = OUTLINED_FUNCTION_70_11();
  push_ptr_init(v15, v16);
  v17 = OUTLINED_FUNCTION_46_13();
  push_ptr_init(v17, v18);
  WORD2(v270) = 0;
  LODWORD(v270) = 0;
  LODWORD(v268) = -65535;
  v19 = OUTLINED_FUNCTION_48_13();
  push_ptr_init(v19, v20);
  OUTLINED_FUNCTION_32_18();
  v21 = OUTLINED_FUNCTION_31_19();
  if (lpta_loadp_setscan_r(v21, v22))
  {
LABEL_4:
    vretproc(v0);
    result = 94;
  }

  else
  {
    bspush_ca_scan(v0, 2);
    v25 = OUTLINED_FUNCTION_3_36();
    if (testFldeq(v25, v26, v27, 2))
    {
      v28 = 0;
    }

    else
    {
      v28 = 0;
      v29 = 0;
      if (!advance_tok(v0))
      {
LABEL_9:
        v28 = v29;
        v30 = OUTLINED_FUNCTION_3_36();
        if (!testFldeq(v30, v31, v32, 2) && !advance_tok(v0))
        {
LABEL_11:
          OUTLINED_FUNCTION_69_11();
          v33 = OUTLINED_FUNCTION_68_11();
          savescptr(v33, v34, v35);
          v36 = OUTLINED_FUNCTION_21_25();
          bspush_ca_scan(v36, v37);
          OUTLINED_FUNCTION_0_38();
          v38 = test_string_s();
          v39 = v29;
          v28 = v29;
          if (!v38)
          {
LABEL_12:
            v28 = v39;
            v40 = OUTLINED_FUNCTION_67_11();
            if (!savetok(v40, v41))
            {
              v42 = OUTLINED_FUNCTION_21_25();
              bspush_ca_scan(v42, v43);
              OUTLINED_FUNCTION_0_38();
              if (!test_string_s())
              {
                v44 = OUTLINED_FUNCTION_21_25();
                bspush_ca_scan(v44, v45);
                OUTLINED_FUNCTION_0_38();
                v46 = test_string_s();
                v47 = v28;
                if (!v46)
                {
LABEL_15:
                  v28 = v47;
                  if (!advance_tok(v0))
                  {
                    v48 = OUTLINED_FUNCTION_49_13();
                    if (!savetok(v48, v49))
                    {
                      v50 = OUTLINED_FUNCTION_39_14();
                      v29 = v28;
                      if (!testeq_tvars(v50, v51, v52))
                      {
LABEL_18:
                        v28 = v29;
                        v53 = OUTLINED_FUNCTION_42_13();
                        savescptr(v53, v54, v55);
                        v56 = OUTLINED_FUNCTION_21_25();
                        bspush_ca_scan(v56, v57);
                        v58 = OUTLINED_FUNCTION_3_36();
                        if (!testFldeq(v58, v59, v60, 2) && !advance_tok(v0))
                        {
                          v61 = OUTLINED_FUNCTION_3_36();
                          if (!testFldeq(v61, v62, v63, 2) && !advance_tok(v0))
                          {
LABEL_22:
                            v28 = v29;
                            OUTLINED_FUNCTION_59_11();
                            v64 = OUTLINED_FUNCTION_36_15();
                            savescptr(v64, v65, v66);
                            v67 = OUTLINED_FUNCTION_3_36();
                            if (!testFldeq(v67, v68, v69, 2) && !advance_tok(v0))
                            {
                              v70 = OUTLINED_FUNCTION_3_36();
                              if (!testFldeq(v70, v71, v72, 2) && !advance_tok(v0))
                              {
LABEL_26:
                                v28 = v29;
                                v73 = OUTLINED_FUNCTION_78_10();
                                savescptr(v73, v74, v75);
                                OUTLINED_FUNCTION_21_25();
                                bspush_ca_scan_boa();
                                v76 = OUTLINED_FUNCTION_3_36();
                                if (!testFldeq(v76, v77, v78, 2))
                                {
                                  if (advance_tok(v0))
                                  {
                                    v28 = v29;
                                  }

                                  else
                                  {
                                    v28 = 1;
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

    v79 = v28;
    while (2)
    {
      v80 = *(v0 + 104);
      if (v80)
      {
        v81 = OUTLINED_FUNCTION_40_14(v80);
        v29 = v82;
      }

      else
      {
        v81 = vback(v0, v79);
        v29 = 0;
      }

      v39 = v29;
      v47 = v29;
      switch(v81)
      {
        case 2:
          goto LABEL_9;
        case 3:
          goto LABEL_11;
        case 4:
          OUTLINED_FUNCTION_0_38();
          v83 = test_string_s();
          v39 = v29;
          v79 = v29;
          if (!v83)
          {
            goto LABEL_12;
          }

          continue;
        case 5:
          goto LABEL_12;
        case 6:
          v84 = OUTLINED_FUNCTION_21_25();
          bspush_ca_scan(v84, v85);
          OUTLINED_FUNCTION_0_38();
          v86 = test_string_s();
          v79 = v29;
          if (v86)
          {
            continue;
          }

          goto LABEL_38;
        case 7:
          v92 = OUTLINED_FUNCTION_16_31();
          bspush_ca_scan(v92, v93);
          goto LABEL_41;
        case 8:
        case 10:
          goto LABEL_15;
        case 9:
LABEL_41:
          OUTLINED_FUNCTION_0_38();
          v91 = test_string_s();
          goto LABEL_42;
        case 11:
LABEL_38:
          v87 = OUTLINED_FUNCTION_3_36();
          v90 = testFldeq(v87, v88, v89, 2);
          v79 = v29;
          if (v90)
          {
            continue;
          }

          v91 = advance_tok(v0);
LABEL_42:
          v47 = v29;
          v79 = v29;
          if (!v91)
          {
            goto LABEL_15;
          }

          continue;
        case 12:
          goto LABEL_18;
        case 13:
          goto LABEL_22;
        case 14:
          goto LABEL_26;
        case 15:
          bspop_boa(v0);
          v94 = end_of_word();
          v79 = v29;
          if (v94)
          {
            continue;
          }

          *(v0 + 3018) = *(v0 + 3030);
          v95 = OUTLINED_FUNCTION_21_25();
          starttest(v95, v96);
          v97 = OUTLINED_FUNCTION_22_24();
          if (lpta_loadp_setscan_r(v97, v98))
          {
            goto LABEL_51;
          }

          v99 = OUTLINED_FUNCTION_21_25();
          bspush_ca_scan(v99, v100);
          OUTLINED_FUNCTION_0_38();
          v101 = test_string_s();
          v79 = v29;
          if (!v101)
          {
            goto LABEL_47;
          }

          continue;
        case 16:
LABEL_51:
          v113 = OUTLINED_FUNCTION_22_24();
          if (lpta_loadp_setscan_r(v113, v114))
          {
            goto LABEL_54;
          }

          if (advance_tok(v0))
          {
            goto LABEL_54;
          }

          *(v0 + 136) = 1;
          v115 = OUTLINED_FUNCTION_8_34();
          if (test_ptr(v115))
          {
            goto LABEL_54;
          }

          OUTLINED_FUNCTION_68_11();
          fren_char_name();
          goto LABEL_55;
        case 17:
LABEL_47:
          OUTLINED_FUNCTION_4_35();
          v102 = test_string_s();
          v79 = v29;
          if (!v102)
          {
            *(v0 + 136) = 1;
            v103 = OUTLINED_FUNCTION_8_34();
            v104 = test_ptr(v103);
            v79 = v29;
            if (!v104)
            {
              v105 = OUTLINED_FUNCTION_68_11();
              lpta_rpta_loadp(v105, v106, v107);
              v108 = OUTLINED_FUNCTION_2_36();
              inserted = insert_2pt_s(v108, v109, 10, v110, v111);
              v79 = v29;
              if (!inserted)
              {
                goto LABEL_55;
              }
            }
          }

          continue;
        case 18:
        case 20:
          goto LABEL_55;
        case 19:
LABEL_54:
          OUTLINED_FUNCTION_68_11();
          convert_fren_double();
LABEL_55:
          v116 = OUTLINED_FUNCTION_22_24();
          if (!lpta_loadp_setscan_r(v116, v117) && !advance_tok(v0))
          {
            goto LABEL_57;
          }

          goto LABEL_58;
        case 21:
          goto LABEL_58;
        case 22:
LABEL_57:
          v118 = OUTLINED_FUNCTION_68_11();
          savescptr(v118, v119, v120);
LABEL_58:
          v121 = OUTLINED_FUNCTION_22_24();
          if (!lpta_loadp_setscan_r(v121, v122))
          {
            OUTLINED_FUNCTION_0_38();
            if (!test_string_s())
            {
              goto LABEL_60;
            }
          }

          goto LABEL_61;
        case 23:
          goto LABEL_61;
        case 24:
LABEL_60:
          v123 = OUTLINED_FUNCTION_68_11();
          savescptr(v123, v124, v125);
LABEL_61:
          v126 = OUTLINED_FUNCTION_22_24();
          if (lpta_loadp_setscan_r(v126, v127))
          {
            goto LABEL_63;
          }

          OUTLINED_FUNCTION_0_38();
          if (test_string_s())
          {
            goto LABEL_63;
          }

          goto LABEL_87;
        case 25:
LABEL_63:
          v128 = OUTLINED_FUNCTION_22_24();
          if (lpta_loadp_setscan_r(v128, v129))
          {
            goto LABEL_66;
          }

          OUTLINED_FUNCTION_0_38();
          if (test_string_s())
          {
            goto LABEL_66;
          }

          v130 = OUTLINED_FUNCTION_42_13();
          lpta_rpta_loadp(v130, v131, v132);
          v133 = OUTLINED_FUNCTION_2_36();
          if (insert_2pt_s(v133, v134, 9, v135, v136))
          {
            goto LABEL_66;
          }

          goto LABEL_102;
        case 26:
LABEL_87:
          OUTLINED_FUNCTION_18_30(26, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258, v259, v260, v261, v262, v263, v264, v265, v266);
          v202 = OUTLINED_FUNCTION_6_34();
          if (lpta_loadp_setscan_r(v202, v203))
          {
            goto LABEL_92;
          }

          if (advance_tok(v0))
          {
            goto LABEL_92;
          }

          v204 = OUTLINED_FUNCTION_49_13();
          if (savetok(v204, v205))
          {
            goto LABEL_92;
          }

          v206 = OUTLINED_FUNCTION_39_14();
          if (testeq_tvars(v206, v207, v208))
          {
            goto LABEL_92;
          }

          v209 = OUTLINED_FUNCTION_42_13();
          lpta_rpta_loadp(v209, v210, v211);
          v212 = OUTLINED_FUNCTION_2_36();
          if (insert_2pt_s(v212, v213, 9, v214, v215))
          {
            goto LABEL_92;
          }

          goto LABEL_102;
        case 27:
LABEL_92:
          v216 = OUTLINED_FUNCTION_17_31();
          if (lpta_loadp_setscan_r(v216, v217))
          {
            goto LABEL_95;
          }

          OUTLINED_FUNCTION_0_38();
          if (test_string_s())
          {
            goto LABEL_95;
          }

          v218 = OUTLINED_FUNCTION_42_13();
          lpta_rpta_loadp(v218, v219, v220);
          v221 = OUTLINED_FUNCTION_2_36();
          if (insert_2pt_s(v221, v222, 9, v223, v224))
          {
            goto LABEL_95;
          }

          goto LABEL_102;
        case 28:
        case 31:
          goto LABEL_102;
        case 29:
LABEL_95:
          v225 = OUTLINED_FUNCTION_17_31();
          if (lpta_loadp_setscan_r(v225, v226))
          {
            goto LABEL_98;
          }

          OUTLINED_FUNCTION_0_38();
          if (test_string_s())
          {
            goto LABEL_98;
          }

          v227 = OUTLINED_FUNCTION_42_13();
          lpta_rpta_loadp(v227, v228, v229);
          v230 = OUTLINED_FUNCTION_2_36();
          if (insert_2pt_s(v230, v231, 10, v232, v233))
          {
            goto LABEL_98;
          }

          goto LABEL_102;
        case 30:
LABEL_98:
          v234 = OUTLINED_FUNCTION_17_31();
          if (lpta_loadp_setscan_r(v234, v235))
          {
            goto LABEL_102;
          }

          OUTLINED_FUNCTION_0_38();
          if (test_string_s())
          {
            goto LABEL_102;
          }

          v236 = OUTLINED_FUNCTION_42_13();
          lpta_rpta_loadp(v236, v237, v238);
          v197 = OUTLINED_FUNCTION_2_36();
          v201 = 10;
          goto LABEL_101;
        case 32:
LABEL_66:
          v137 = OUTLINED_FUNCTION_22_24();
          if (lpta_loadp_setscan_r(v137, v138))
          {
            goto LABEL_69;
          }

          OUTLINED_FUNCTION_0_38();
          if (test_string_s())
          {
            goto LABEL_69;
          }

          v139 = OUTLINED_FUNCTION_42_13();
          lpta_rpta_loadp(v139, v140, v141);
          v142 = OUTLINED_FUNCTION_2_36();
          if (insert_2pt_s(v142, v143, 6, v144, v145))
          {
            goto LABEL_69;
          }

          goto LABEL_102;
        case 33:
LABEL_69:
          v146 = OUTLINED_FUNCTION_22_24();
          if (lpta_loadp_setscan_r(v146, v147))
          {
            goto LABEL_72;
          }

          OUTLINED_FUNCTION_0_38();
          if (test_string_s())
          {
            goto LABEL_72;
          }

          v148 = OUTLINED_FUNCTION_42_13();
          lpta_rpta_loadp(v148, v149, v150);
          v151 = OUTLINED_FUNCTION_2_36();
          if (insert_2pt_s(v151, v152, 7, v153, v154))
          {
            goto LABEL_72;
          }

          goto LABEL_102;
        case 34:
LABEL_72:
          v155 = OUTLINED_FUNCTION_22_24();
          if (lpta_loadp_setscan_r(v155, v156))
          {
            goto LABEL_75;
          }

          OUTLINED_FUNCTION_0_38();
          if (test_string_s())
          {
            goto LABEL_75;
          }

          v157 = OUTLINED_FUNCTION_42_13();
          lpta_rpta_loadp(v157, v158, v159);
          v160 = OUTLINED_FUNCTION_1_37();
          if (insert_2pt_s(v160, v161, v162, v163, v164))
          {
            goto LABEL_75;
          }

          goto LABEL_102;
        case 35:
LABEL_75:
          v165 = OUTLINED_FUNCTION_22_24();
          if (lpta_loadp_setscan_r(v165, v166))
          {
            goto LABEL_78;
          }

          OUTLINED_FUNCTION_0_38();
          if (test_string_s())
          {
            goto LABEL_78;
          }

          v167 = OUTLINED_FUNCTION_42_13();
          lpta_rpta_loadp(v167, v168, v169);
          v170 = OUTLINED_FUNCTION_2_36();
          if (insert_2pt_s(v170, v171, 6, v172, v173))
          {
            goto LABEL_78;
          }

          goto LABEL_102;
        case 36:
LABEL_78:
          v174 = OUTLINED_FUNCTION_22_24();
          if (lpta_loadp_setscan_r(v174, v175))
          {
            goto LABEL_81;
          }

          OUTLINED_FUNCTION_0_38();
          if (test_string_s())
          {
            goto LABEL_81;
          }

          v176 = OUTLINED_FUNCTION_42_13();
          lpta_rpta_loadp(v176, v177, v178);
          v179 = OUTLINED_FUNCTION_2_36();
          if (insert_2pt_s(v179, v180, 9, v181, v182))
          {
            goto LABEL_81;
          }

          goto LABEL_102;
        case 37:
LABEL_81:
          v183 = OUTLINED_FUNCTION_22_24();
          if (lpta_loadp_setscan_r(v183, v184))
          {
            goto LABEL_84;
          }

          OUTLINED_FUNCTION_0_38();
          if (test_string_s())
          {
            goto LABEL_84;
          }

          v185 = OUTLINED_FUNCTION_42_13();
          lpta_rpta_loadp(v185, v186, v187);
          v188 = OUTLINED_FUNCTION_2_36();
          if (insert_2pt_s(v188, v189, 6, v190, v191))
          {
            goto LABEL_84;
          }

          goto LABEL_102;
        case 38:
LABEL_84:
          v192 = OUTLINED_FUNCTION_22_24();
          if (!lpta_loadp_setscan_r(v192, v193))
          {
            OUTLINED_FUNCTION_0_38();
            if (!test_string_s())
            {
              v194 = OUTLINED_FUNCTION_42_13();
              lpta_rpta_loadp(v194, v195, v196);
              v197 = OUTLINED_FUNCTION_2_36();
              v201 = 11;
LABEL_101:
              insert_2pt_s(v197, v198, v201, v199, v200);
            }
          }

LABEL_102:
          v239 = OUTLINED_FUNCTION_70_11();
          lpta_loadpn(v239, v240);
          v241 = OUTLINED_FUNCTION_46_13();
          rpta_loadpn(v241, v242);
          if (compare_ptas(v0) || testeq(v0))
          {
            goto LABEL_104;
          }

          OUTLINED_FUNCTION_78_10();
          convert_fren_double();
          break;
        case 39:
LABEL_104:
          *(v0 + 3094) = 4;
          OUTLINED_FUNCTION_78_10();
          convert_fren_thousands();
          break;
        case 40:
        case 41:
        case 42:
          goto LABEL_105;
        default:
          goto LABEL_4;
      }

      break;
    }

LABEL_105:
    OUTLINED_FUNCTION_82_9(v280);
    result = 0;
  }

  v24 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t convert_fren_time(uint64_t a1, __int16 *a2)
{
  v249 = *MEMORY[0x277D85DE8];
  v243 = 0;
  v244 = 0;
  v241 = 0;
  v242 = 0;
  v239[1] = 0;
  v240 = 0;
  v238 = 0;
  v239[0] = 0;
  v236[1] = 0;
  v237 = 0;
  v235 = 0;
  v236[0] = 0;
  v233 = 0;
  memset(v234, 0, sizeof(v234));
  v232 = 0;
  OUTLINED_FUNCTION_38_15();
  bzero(v231, v4);
  OUTLINED_FUNCTION_37_15();
  bzero(v248, v5);
  v6 = setjmp(v248);
  if (!v6 && !OUTLINED_FUNCTION_88_8(v6, v231, v247, v246, v245))
  {
    v7 = OUTLINED_FUNCTION_27_22();
    get_parm(v7, v8, a2, -6);
    OUTLINED_FUNCTION_43_13(v9, &v241);
    WORD2(v240) = -4;
    LOWORD(v240) = -4;
    push_ptr_init(a1, v239);
    v10 = OUTLINED_FUNCTION_67_11();
    push_ptr_init(v10, v11);
    push_ptr_init(a1, v236);
    v12 = OUTLINED_FUNCTION_70_11();
    push_ptr_init(v12, v13);
    v14 = OUTLINED_FUNCTION_46_13();
    push_ptr_init(v14, v15);
    v16 = OUTLINED_FUNCTION_55_12();
    push_ptr_init(v16, v17);
    v18 = OUTLINED_FUNCTION_76_11();
    push_ptr_init(v18, v19);
    fence_35(a1);
    WORD1(v240) = 0;
    HIWORD(v240) = 0;
    OUTLINED_FUNCTION_89_8();
    v20 = OUTLINED_FUNCTION_27_22();
    if (!lpta_loadp_setscan_r(v20, v21))
    {
      bspush_ca_scan(a1, 2);
      v24 = OUTLINED_FUNCTION_3_36();
      if (testFldeq(v24, v25, v26, 2))
      {
        v27 = 0;
      }

      else
      {
        v27 = 0;
        v28 = 0;
        if (!advance_tok(a1))
        {
LABEL_9:
          v27 = v28;
          v29 = OUTLINED_FUNCTION_3_36();
          if (!testFldeq(v29, v30, v31, 2) && !advance_tok(a1))
          {
LABEL_11:
            OUTLINED_FUNCTION_69_11();
            savescptr(a1, v32, v239);
            v33 = OUTLINED_FUNCTION_21_25();
            bspush_ca_scan(v33, v34);
            OUTLINED_FUNCTION_0_38();
            v35 = test_string_s();
            v36 = v28;
            v27 = v28;
            if (!v35)
            {
LABEL_12:
              v27 = v36;
              savescptr(a1, 5, &v237);
              v37 = OUTLINED_FUNCTION_21_25();
              bspush_ca_scan(v37, v38);
              v39 = OUTLINED_FUNCTION_3_36();
              if (!testFldeq(v39, v40, v41, 2) && !advance_tok(a1))
              {
                v42 = OUTLINED_FUNCTION_3_36();
                if (!testFldeq(v42, v43, v44, 2))
                {
                  v28 = v27;
                  if (!advance_tok(a1))
                  {
LABEL_16:
                    v27 = v28;
                    OUTLINED_FUNCTION_58_11();
                    v45 = OUTLINED_FUNCTION_75_11();
                    savescptr(v45, v46, v47);
                    OUTLINED_FUNCTION_21_25();
                    bspush_ca_scan_boa();
                    v48 = OUTLINED_FUNCTION_3_36();
                    if (!testFldeq(v48, v49, v50, 2))
                    {
                      if (advance_tok(a1))
                      {
                        v27 = v28;
                      }

                      else
                      {
                        v27 = 1;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      v51 = v27;
      while (1)
      {
        v52 = *(a1 + 104);
        if (v52)
        {
          v53 = OUTLINED_FUNCTION_40_14(v52);
          v28 = v59;
        }

        else
        {
          v53 = vback(a1, v51);
          v28 = 0;
        }

        v36 = v28;
        switch(v53)
        {
          case 2:
            goto LABEL_9;
          case 3:
            goto LABEL_11;
          case 4:
            v60 = OUTLINED_FUNCTION_21_25();
            bspush_ca_scan(v60, v61);
            goto LABEL_26;
          case 5:
            goto LABEL_12;
          case 6:
LABEL_26:
            OUTLINED_FUNCTION_0_38();
            v62 = test_string_s();
            v36 = v28;
            v51 = v28;
            if (!v62)
            {
              goto LABEL_12;
            }

            continue;
          case 7:
            goto LABEL_16;
          case 8:
            bspop_boa(a1);
            v106 = OUTLINED_FUNCTION_16_31();
            starttest(v106, v107);
            v108 = OUTLINED_FUNCTION_67_11();
            lpta_loadpn(v108, v109);
            rpta_loadpn(a1, &v241);
            if (compare_ptas(a1) || testeq(a1))
            {
              goto LABEL_47;
            }

            v215 = OUTLINED_FUNCTION_21_25();
            bspush_ca(v215);
            v216 = OUTLINED_FUNCTION_22_24();
            v218 = lpta_loadp_setscan_r(v216, v217);
            v51 = v28;
            if (v218)
            {
              continue;
            }

            OUTLINED_FUNCTION_0_38();
            v72 = test_string_s();
LABEL_99:
            v51 = v28;
            if (!v72)
            {
              goto LABEL_4;
            }

            continue;
          case 9:
LABEL_47:
            v110 = OUTLINED_FUNCTION_21_25();
            starttest(v110, v111);
            v112 = OUTLINED_FUNCTION_22_24();
            if (lpta_loadp_setscan_l(v112, v113) || advance_tok(a1))
            {
              goto LABEL_49;
            }

            goto LABEL_54;
          case 10:
            v65 = OUTLINED_FUNCTION_22_24();
            v67 = lpta_loadp_setscan_r(v65, v66);
            v51 = v28;
            if (v67)
            {
              continue;
            }

            v68 = OUTLINED_FUNCTION_3_36();
            v71 = testFldeq(v68, v69, v70, 1);
            v51 = v28;
            if (v71)
            {
              continue;
            }

            v72 = advance_tok(a1);
            goto LABEL_99;
          case 12:
            goto LABEL_49;
          case 13:
LABEL_54:
            OUTLINED_FUNCTION_59_11();
            v117 = OUTLINED_FUNCTION_68_11();
            savescptr(v117, v118, v119);
            OUTLINED_FUNCTION_4_35();
            v120 = test_string_s();
            v51 = v28;
            if (v120)
            {
              continue;
            }

            *(a1 + 136) = 1;
            v121 = OUTLINED_FUNCTION_8_34();
            v122 = test_ptr(v121);
            v51 = v28;
            if (v122)
            {
              continue;
            }

            v123 = OUTLINED_FUNCTION_68_11();
            lpta_rpta_loadp(v123, v124, v125);
            v126 = OUTLINED_FUNCTION_28_21();
            v128 = delete_2pt(v126, v127);
            v51 = v28;
            if (v128)
            {
              continue;
            }

            *(a1 + 136) = 1;
            OUTLINED_FUNCTION_8_34();
            delete_1pt();
LABEL_49:
            *(a1 + 3018) = *(a1 + 3026);
            string_to_short();
LABEL_50:
            v114 = OUTLINED_FUNCTION_22_24();
            if (lpta_loadp_setscan_r(v114, v115) || advance_tok(a1) || (*(a1 + 136) = 1, v116 = OUTLINED_FUNCTION_8_34(), test_ptr(v116)))
            {
LABEL_53:
              OUTLINED_FUNCTION_56_11();
              convert_fren_double();
              goto LABEL_64;
            }

            v129 = OUTLINED_FUNCTION_21_25();
            starttest(v129, v130);
            v131 = OUTLINED_FUNCTION_22_24();
            if (lpta_loadp_setscan_r(v131, v132) || (OUTLINED_FUNCTION_0_38(), test_string_s()))
            {
LABEL_60:
              v133 = OUTLINED_FUNCTION_22_24();
              if (lpta_loadp_setscan_r(v133, v134) || (OUTLINED_FUNCTION_0_38(), test_string_s()) || (v135 = OUTLINED_FUNCTION_56_11(), lpta_rpta_loadp(v135, v136, v137), v138 = OUTLINED_FUNCTION_2_36(), insert_2pt_s(v138, v139, 7, v140, v141)))
              {
LABEL_63:
                OUTLINED_FUNCTION_56_11();
                convert_fren_single_digit();
              }

              goto LABEL_64;
            }

            v219 = OUTLINED_FUNCTION_22_24();
            move_i(v219, v220, v221);
            v222 = OUTLINED_FUNCTION_56_11();
            lpta_rpta_loadp(v222, v223, v224);
            v225 = OUTLINED_FUNCTION_1_37();
            inserted = insert_2pt_s(v225, v226, v227, v228, v229);
            v51 = v28;
            if (!inserted)
            {
LABEL_64:
              *(a1 + 3018) = *(a1 + 3022);
              v142 = OUTLINED_FUNCTION_21_25();
              starttest_l(v142, v143);
              v144 = OUTLINED_FUNCTION_22_24();
              if (!lpta_loadp_setscan_r(v144, v145))
              {
                OUTLINED_FUNCTION_10_33();
                if (!test_string_s())
                {
                  v146 = OUTLINED_FUNCTION_75_11();
                  copyvar(v146, v147, v148);
                }
              }

LABEL_67:
              lpta_rpta_loadp(a1, v239, &v237);
              v149 = OUTLINED_FUNCTION_1_37();
              v154 = insert_2pt_s(v149, v150, v151, v152, v153);
              v51 = v28;
              if (!v154)
              {
                if (HIWORD(v240) != 1)
                {
                  OUTLINED_FUNCTION_65_11();
                  *(a1 + 144) = v238;
                  *(a1 + 128) = 0;
                  v155 = OUTLINED_FUNCTION_23_24();
                  insert_l(v155);
                }

LABEL_70:
                insert_space(a1, v239, v36, v54, v55, v56, v57, v58);
LABEL_71:
                v156 = OUTLINED_FUNCTION_67_11();
                lpta_loadpn(v156, v157);
                rpta_loadpn(a1, &v241);
                if (compare_ptas(a1) || testneq(a1))
                {
LABEL_85:
                  v190 = OUTLINED_FUNCTION_21_25();
                  starttest(v190, v191);
                  v192 = OUTLINED_FUNCTION_22_24();
                  if (lpta_loadp_setscan_r(v192, v193))
                  {
LABEL_86:
                    v194 = OUTLINED_FUNCTION_21_25();
                    starttest(v194, v195);
                    v196 = OUTLINED_FUNCTION_22_24();
                    if (lpta_loadp_setscan_r(v196, v197))
                    {
LABEL_103:
                      OUTLINED_FUNCTION_82_9(v242);
                      result = 0;
                      goto LABEL_5;
                    }

LABEL_89:
                    while (1)
                    {
                      OUTLINED_FUNCTION_0_38();
                      if (test_string_s())
                      {
                        break;
                      }

                      v198 = OUTLINED_FUNCTION_21_25();
                      bspush_ca_scan(v198, v199);
                    }
                  }

                  else
                  {
LABEL_92:
                    while (1)
                    {
                      OUTLINED_FUNCTION_0_38();
                      if (test_string_s())
                      {
                        break;
                      }

                      v200 = OUTLINED_FUNCTION_21_25();
                      bspush_ca_scan(v200, v201);
                    }
                  }

                  v51 = v28;
                }

                else
                {
                  v235 = v242;
                  v158 = OUTLINED_FUNCTION_22_24();
                  if (!lpta_loadp_setscan_r(v158, v159))
                  {
                    OUTLINED_FUNCTION_10_33();
                    if (!test_string_s())
                    {
                      v160 = OUTLINED_FUNCTION_42_13();
                      lpta_rpta_loadp(v160, v161, v162);
                      v163 = OUTLINED_FUNCTION_2_36();
                      if (!insert_2pt_s(v163, v164, 9, v165, v166))
                      {
                        goto LABEL_82;
                      }
                    }
                  }

LABEL_76:
                  v167 = OUTLINED_FUNCTION_22_24();
                  if (!lpta_loadp_setscan_r(v167, v168))
                  {
                    OUTLINED_FUNCTION_10_33();
                    if (!test_string_s())
                    {
                      v169 = OUTLINED_FUNCTION_42_13();
                      lpta_rpta_loadp(v169, v170, v171);
                      v172 = OUTLINED_FUNCTION_2_36();
                      if (!insert_2pt_s(v172, v173, 9, v174, v175))
                      {
                        goto LABEL_82;
                      }
                    }
                  }

LABEL_79:
                  v176 = OUTLINED_FUNCTION_21_25();
                  starttest(v176, v177);
                  v178 = OUTLINED_FUNCTION_22_24();
                  if (lpta_loadp_setscan_r(v178, v179) || (OUTLINED_FUNCTION_0_38(), test_string_s()))
                  {
LABEL_81:
                    OUTLINED_FUNCTION_42_13();
                    convert_fren_double();
LABEL_82:
                    v180 = OUTLINED_FUNCTION_70_11();
                    lpta_loadpn(v180, v181);
                    rpta_loadpn(a1, &v241);
                    if (!compare_ptas(a1) && !testneq(a1))
                    {
                      v182 = OUTLINED_FUNCTION_75_11();
                      lpta_rpta_loadp(v182, v183, v184);
                      v185 = OUTLINED_FUNCTION_0_38();
                      insert_2pt_s(v185, v186, v187, v188, v189);
                    }

                    goto LABEL_85;
                  }

LABEL_94:
                  v202 = OUTLINED_FUNCTION_36_15();
                  savescptr(v202, v203, v204);
                  v205 = advance_tok(a1);
                  v51 = v28;
                  if (!v205)
                  {
                    v206 = OUTLINED_FUNCTION_36_15();
                    lpta_rpta_loadp(v206, v207, v208);
                    v209 = OUTLINED_FUNCTION_0_38();
                    v214 = insert_2pt_s(v209, v210, v211, v212, v213);
                    v51 = v28;
                    if (!v214)
                    {
                      OUTLINED_FUNCTION_42_13();
                      convert_fren_single_digit();
                      goto LABEL_82;
                    }
                  }
                }
              }
            }

            break;
          case 14:
            goto LABEL_50;
          case 15:
            goto LABEL_53;
          case 16:
            goto LABEL_60;
          case 17:
          case 19:
            goto LABEL_64;
          case 18:
            goto LABEL_63;
          case 20:
            goto LABEL_67;
          case 21:
            goto LABEL_70;
          case 22:
            goto LABEL_71;
          case 23:
            goto LABEL_85;
          case 24:
            goto LABEL_76;
          case 25:
          case 29:
            goto LABEL_82;
          case 26:
            goto LABEL_79;
          case 27:
            goto LABEL_81;
          case 28:
            goto LABEL_94;
          case 30:
            goto LABEL_86;
          case 31:
            savescptr(a1, 31, v234);
            v63 = OUTLINED_FUNCTION_21_25();
            bspush_ca_scan(v63, v64);
            goto LABEL_32;
          case 32:
            goto LABEL_92;
          case 33:
LABEL_32:
            OUTLINED_FUNCTION_10_33();
            v73 = test_string_s();
            v51 = v28;
            if (!v73)
            {
              goto LABEL_33;
            }

            continue;
          case 34:
LABEL_33:
            v74 = OUTLINED_FUNCTION_30_20();
            savescptr(v74, v75, v76);
            OUTLINED_FUNCTION_27_22();
            v77 = end_of_word();
            v51 = v28;
            if (v77)
            {
              continue;
            }

            v78 = OUTLINED_FUNCTION_75_11();
            lpta_rpta_loadp(v78, v79, v80);
            v81 = OUTLINED_FUNCTION_2_36();
            v85 = 8;
            goto LABEL_43;
          case 35:
          case 43:
          case 44:
            goto LABEL_103;
          case 36:
            v86 = OUTLINED_FUNCTION_91_8();
            savescptr(v86, v87, v88);
            v89 = OUTLINED_FUNCTION_21_25();
            bspush_ca_scan(v89, v90);
            goto LABEL_36;
          case 37:
            goto LABEL_89;
          case 38:
LABEL_36:
            OUTLINED_FUNCTION_10_33();
            v91 = test_string_s();
            v51 = v28;
            if (!v91)
            {
              goto LABEL_37;
            }

            continue;
          case 39:
LABEL_37:
            v92 = OUTLINED_FUNCTION_30_20();
            savescptr(v92, v93, v94);
            OUTLINED_FUNCTION_27_22();
            v95 = end_of_word();
            v51 = v28;
            if (!v95)
            {
              v96 = OUTLINED_FUNCTION_21_25();
              starttest(v96, v97);
              v98 = OUTLINED_FUNCTION_21_25();
              bspush_ca(v98);
              v51 = v28;
              if (WORD1(v240) - 12 >= 0xFFFFFFFA)
              {
                goto LABEL_42;
              }
            }

            continue;
          case 40:
            v99 = OUTLINED_FUNCTION_75_11();
            lpta_rpta_loadp(v99, v100, v101);
            v81 = OUTLINED_FUNCTION_2_36();
            v85 = 14;
            goto LABEL_43;
          case 41:
            v51 = v28;
            if (SWORD1(v240) < 19)
            {
              continue;
            }

            goto LABEL_42;
          case 42:
LABEL_42:
            v102 = OUTLINED_FUNCTION_75_11();
            lpta_rpta_loadp(v102, v103, v104);
            v81 = OUTLINED_FUNCTION_2_36();
            v85 = 7;
LABEL_43:
            v105 = insert_2pt_s(v81, v82, v85, v83, v84);
            v51 = v28;
            if (!v105)
            {
              goto LABEL_103;
            }

            continue;
          default:
            goto LABEL_4;
        }
      }
    }
  }

LABEL_4:
  vretproc(a1);
  result = 94;
LABEL_5:
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t convert_fren_phone_number()
{
  OUTLINED_FUNCTION_5_34();
  v67 = *MEMORY[0x277D85DE8];
  v54 = 0;
  v55 = 0;
  OUTLINED_FUNCTION_26_24(v1, v2, v3, v4, v5, v6, v7, v8, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53);
  OUTLINED_FUNCTION_37_15();
  bzero(v66, v9);
  v10 = setjmp(v66);
  if (!v10 && !OUTLINED_FUNCTION_63_11(v10, &v29, v11, v12, v13, v14, v15, v16, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66[0]))
  {
    v19 = OUTLINED_FUNCTION_7_34();
    get_parm(v19, v20, v21, -6);
    v22 = OUTLINED_FUNCTION_27_22();
    OUTLINED_FUNCTION_72_11(v22, v23);
    fence_35(v0);
    v24 = OUTLINED_FUNCTION_21_25();
    starttest(v24, v25);
    OUTLINED_FUNCTION_13_32();
    bspush_ca_boa();
    OUTLINED_FUNCTION_7_34();
    v26 = convert_NA_phone_number();
    v27 = v0[13];
    if (v27)
    {
      v28 = OUTLINED_FUNCTION_40_14(v27);
    }

    else
    {
      v28 = vback(v0, v26 == 0);
    }

    if (v28 == 2)
    {
      bspop_boa(v0);
    }

    else if (v28 == 1)
    {
      OUTLINED_FUNCTION_82_9(v53);
      result = 0;
      goto LABEL_4;
    }
  }

  vretproc(v0);
  result = 94;
LABEL_4:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t convert_fren_ordinal()
{
  OUTLINED_FUNCTION_5_34();
  v165 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_11_33(v3, v4, v5, v6, v7, v8, v9, v10, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118, v121, v124, v127, v130, v133, v136, v139, v142, v145, v148, v151, v153, v155, v157, v159);
  OUTLINED_FUNCTION_35_15();
  v11 = setjmp(v2);
  if (!v11 && !OUTLINED_FUNCTION_84_9(v11, v12, v13, v14, v15, v16, v17, v18, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v119, v122, v125, v128, v131, v134, v137, v140, v143, v146, v149, v152, v154, v156, v158, v160, 0, 0, *v162, v162[4], *v163, *&v163[4], v163[6], v164, SWORD2(v164), SBYTE6(v164), SHIBYTE(v164)))
  {
    v19 = OUTLINED_FUNCTION_7_34();
    get_parm(v19, v20, v21, -6);
    v22 = OUTLINED_FUNCTION_27_22();
    OUTLINED_FUNCTION_72_11(v22, v23);
    v24 = OUTLINED_FUNCTION_49_13();
    push_ptr_init(v24, v25);
    v26 = OUTLINED_FUNCTION_48_13();
    push_ptr_init(v26, v27);
    fence_35(v0);
    OUTLINED_FUNCTION_7_34();
    test_for_fren_ordinal();
    if (!v28)
    {
      v31 = OUTLINED_FUNCTION_13_32();
      starttest(v31, v32);
      v33 = OUTLINED_FUNCTION_22_24();
      v35 = 0;
      v36 = 0;
      if (lpta_loadp_setscan_l(v33, v34))
      {
        goto LABEL_20;
      }

LABEL_7:
      bspush_ca_scan_boa();
      v37 = OUTLINED_FUNCTION_20_26();
      if (testFldeq(v37, v38, 3, 1))
      {
        v39 = v36;
      }

      else
      {
        v39 = 1;
      }

      while (1)
      {
        v40 = *(v0 + 104);
        if (v40)
        {
          v41 = OUTLINED_FUNCTION_40_14(v40);
          v36 = v42;
        }

        else
        {
          v41 = vback(v0, v39);
          v36 = 0;
        }

        switch(v41)
        {
          case 2:
            goto LABEL_19;
          case 3:
            bspop_boa(v0);
            v43 = advance_tok(v0);
            v39 = v36;
            if (v43)
            {
              continue;
            }

            v44 = OUTLINED_FUNCTION_21_25();
            bspush_ca_scan(v44, v45);
            goto LABEL_7;
          case 4:
            OUTLINED_FUNCTION_50_13();
            v46 = OUTLINED_FUNCTION_30_20();
            savescptr(v46, v47, v48);
            OUTLINED_FUNCTION_27_22();
            delete_inp_from_left();
LABEL_19:
            v35 = v36;
            break;
          case 5:
            goto LABEL_7;
          case 6:
            v35 = v36;
            goto LABEL_25;
          case 7:
            goto LABEL_22;
          case 8:
            v35 = v36;
            goto LABEL_26;
          case 9:
          case 11:
            goto LABEL_29;
          case 10:
            v35 = v36;
            goto LABEL_28;
          default:
            goto LABEL_4;
        }

LABEL_20:
        v49 = OUTLINED_FUNCTION_21_25();
        starttest(v49, v50);
        v51 = OUTLINED_FUNCTION_22_24();
        if (lpta_loadp_setscan_l(v51, v52) || (OUTLINED_FUNCTION_0_38(), v36 = v35, test_string_s()))
        {
LABEL_25:
          *(v0 + 136) = 1;
          OUTLINED_FUNCTION_44_13();
          v65 = OUTLINED_FUNCTION_23_24();
          insert_r(v65);
LABEL_26:
          v66 = OUTLINED_FUNCTION_16_31();
          starttest(v66, v67);
          v68 = OUTLINED_FUNCTION_22_24();
          if (lpta_loadp_setscan_l(v68, v69) || (OUTLINED_FUNCTION_0_38(), test_string_s()))
          {
LABEL_29:
            OUTLINED_FUNCTION_81_10(v161);
            goto LABEL_5;
          }

LABEL_28:
          OUTLINED_FUNCTION_18_30(10, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117, v120, v123, v126, v129, v132, v135, v138, v141, v144, v147, v150);
          v70 = OUTLINED_FUNCTION_27_22();
          lpta_rpta_loadp(v70, v71, v72);
          v73 = OUTLINED_FUNCTION_0_38();
          inserted = insert_2pt_s(v73, v74, v75, v76, v77);
          v39 = v35;
          if (!inserted)
          {
            goto LABEL_29;
          }
        }

        else
        {
LABEL_22:
          OUTLINED_FUNCTION_58_11();
          v53 = OUTLINED_FUNCTION_30_20();
          savescptr(v53, v54, v55);
          v56 = OUTLINED_FUNCTION_27_22();
          lpta_rpta_loadp(v56, v57, v58);
          v59 = OUTLINED_FUNCTION_0_38();
          v64 = insert_2pt_s(v59, v60, v61, v62, v63);
          v39 = v36;
          v35 = v36;
          if (!v64)
          {
            goto LABEL_26;
          }
        }
      }
    }
  }

LABEL_4:
  v1 = 94;
LABEL_5:
  vretproc(v0);
  v29 = *MEMORY[0x277D85DE8];
  return v1;
}

void add_fren_point_digits()
{
  OUTLINED_FUNCTION_74_11();
  OUTLINED_FUNCTION_5_34();
  v112 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_34_16();
  OUTLINED_FUNCTION_38_15();
  bzero(v95, v2);
  OUTLINED_FUNCTION_37_15();
  bzero(v111, v3);
  v4 = setjmp(v111);
  if (v4 || OUTLINED_FUNCTION_60_11(v4, v95, v5, v6, v7, v8, v9, v10, v92, v93, v94, v95[0], v95[1], v95[2], v95[3], v95[4], v95[5], v95[6], v95[7], v95[8], v95[9], v95[10], v95[11], v95[12], v95[13], v95[14], v95[15], v95[16], v95[17], v95[18], v95[19], v95[20], v95[21], v95[22], v96[0], v96[1], v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111[0]) || (v11 = OUTLINED_FUNCTION_7_34(), get_parm(v11, v12, v13, -6), OUTLINED_FUNCTION_43_13(v14, &v97), v15 = OUTLINED_FUNCTION_55_12(), push_ptr_init(v15, v16), OUTLINED_FUNCTION_32_18(), v17 = OUTLINED_FUNCTION_31_19(), lpta_loadp_setscan_r(v17, v18)))
  {
LABEL_4:
    vretproc(v0);
  }

  else
  {
    v20 = OUTLINED_FUNCTION_13_32();
    bspush_ca_scan(v20, v21);
    OUTLINED_FUNCTION_4_35();
    v22 = test_string_s();
    v23 = 0;
    v24 = 0;
    if (!v22)
    {
LABEL_47:
      v23 = v24;
      OUTLINED_FUNCTION_69_11();
      savescptr(v0, v86, v96);
LABEL_48:
      while (1)
      {
        v87 = OUTLINED_FUNCTION_3_36();
        if (testFldeq(v87, v88, v89, 2) || advance_tok(v0))
        {
          break;
        }

        v90 = OUTLINED_FUNCTION_31_19();
        bspush_ca_scan(v90, v91);
      }
    }

LABEL_7:
    v25 = v23;
    while (2)
    {
      v26 = *(v0 + 104);
      if (v26)
      {
        v27 = OUTLINED_FUNCTION_40_14(v26);
        v23 = v28;
      }

      else
      {
        v27 = vback(v0, v25);
        v23 = 0;
      }

      v24 = v23;
      switch(v27)
      {
        case 2:
          OUTLINED_FUNCTION_4_35();
          v29 = test_string_s();
          v24 = v23;
          v25 = v23;
          if (!v29)
          {
            goto LABEL_47;
          }

          continue;
        case 3:
          goto LABEL_47;
        case 4:
          v43 = OUTLINED_FUNCTION_31_19();
          savescptr(v43, v44, &v97);
          fren_char_name();
          goto LABEL_22;
        case 5:
          goto LABEL_48;
        case 6:
LABEL_22:
          v45 = OUTLINED_FUNCTION_80_10();
          starttest(v45, v46);
          v47 = OUTLINED_FUNCTION_52_12();
          if (lpta_loadp_setscan_r(v47, v48))
          {
            goto LABEL_23;
          }

          goto LABEL_40;
        case 7:
LABEL_23:
          v49 = OUTLINED_FUNCTION_41_13();
          starttest(v49, v50);
          v51 = OUTLINED_FUNCTION_52_12();
          if (lpta_loadp_setscan_r(v51, v52))
          {
            goto LABEL_24;
          }

          v71 = OUTLINED_FUNCTION_15_31();
          v74 = testFldeq(v71, v72, v73, 2);
          v25 = v23;
          if (v74)
          {
            continue;
          }

          OUTLINED_FUNCTION_96_6();
          goto LABEL_36;
        case 8:
          *(v0 + 136) = v1;
          v69 = OUTLINED_FUNCTION_8_34();
          v70 = test_ptr(v69);
          v25 = v23;
          if (v70)
          {
            continue;
          }

          goto LABEL_44;
        case 9:
LABEL_40:
          while (1)
          {
            v80 = OUTLINED_FUNCTION_15_31();
            if (testFldeq(v80, v81, v82, 2))
            {
              break;
            }

            v83 = OUTLINED_FUNCTION_28_21();
            if (testFldeq(v83, v84, v85, 53) || advance_tok(v0))
            {
              break;
            }

            v78 = OUTLINED_FUNCTION_97_6();
            bspush_ca_scan(v78, v79);
          }

          goto LABEL_7;
        case 10:
        case 11:
        case 14:
        case 17:
          goto LABEL_45;
        case 12:
LABEL_24:
          v53 = OUTLINED_FUNCTION_61_11();
          starttest(v53, v54);
          v55 = OUTLINED_FUNCTION_52_12();
          if (lpta_loadp_setscan_r(v55, v56))
          {
            goto LABEL_44;
          }

          v57 = OUTLINED_FUNCTION_15_31();
          v60 = testFldeq(v57, v58, v59, 2);
          v25 = v23;
          if (v60)
          {
            continue;
          }

          OUTLINED_FUNCTION_99_6();
LABEL_36:
          bspush_ca_scan_boa();
          v75 = OUTLINED_FUNCTION_28_21();
          if (testFldeq(v75, v76, v77, 53))
          {
            v25 = v23;
          }

          else
          {
            v25 = 1;
          }

          continue;
        case 13:
          bspop_boa(v0);
          v61 = advance_tok(v0);
          v25 = v23;
          if (v61)
          {
            continue;
          }

          v62 = OUTLINED_FUNCTION_15_31();
          v65 = testFldeq(v62, v63, v64, 2);
          v25 = v23;
          if (v65)
          {
            continue;
          }

          v66 = advance_tok(v0);
          v25 = v23;
          if (v66)
          {
            continue;
          }

          *(v0 + 136) = v1;
          v67 = OUTLINED_FUNCTION_8_34();
          v68 = test_ptr(v67);
          v25 = v23;
          if (v68)
          {
            continue;
          }

          OUTLINED_FUNCTION_36_15();
          convert_fren_double();
          goto LABEL_45;
        case 15:
LABEL_44:
          OUTLINED_FUNCTION_36_15();
          single_chars();
          goto LABEL_45;
        case 16:
          bspop_boa(v0);
          v30 = advance_tok(v0);
          v25 = v23;
          if (v30)
          {
            continue;
          }

          v31 = OUTLINED_FUNCTION_15_31();
          v34 = testFldeq(v31, v32, v33, 2);
          v25 = v23;
          if (v34)
          {
            continue;
          }

          v35 = advance_tok(v0);
          v25 = v23;
          if (v35)
          {
            continue;
          }

          v36 = OUTLINED_FUNCTION_15_31();
          v39 = testFldeq(v36, v37, v38, 2);
          v25 = v23;
          if (v39)
          {
            continue;
          }

          v40 = advance_tok(v0);
          v25 = v23;
          if (v40)
          {
            continue;
          }

          *(v0 + 136) = v1;
          v41 = OUTLINED_FUNCTION_8_34();
          v42 = test_ptr(v41);
          v25 = v23;
          if (v42)
          {
            continue;
          }

          OUTLINED_FUNCTION_36_15();
          convert_fren_hundreds();
LABEL_45:
          *(v0 + 2806) = *(v0 + 2834);
          goto LABEL_46;
        case 18:
LABEL_46:
          OUTLINED_FUNCTION_82_9(v98);
          break;
        default:
          goto LABEL_4;
      }

      break;
    }
  }

  v19 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_73_11();
}

void convert_fren_fraction()
{
  OUTLINED_FUNCTION_74_11();
  OUTLINED_FUNCTION_5_34();
  v174 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_34_16();
  v156 = 0;
  v157 = 0;
  OUTLINED_FUNCTION_38_15();
  bzero(v155, v1);
  OUTLINED_FUNCTION_37_15();
  bzero(v173, v2);
  v3 = setjmp(v173);
  if (v3 || OUTLINED_FUNCTION_60_11(v3, v155, v4, v5, v6, v7, v8, v9, v154, v155[0], v155[1], v155[2], v155[3], v155[4], v155[5], v155[6], v155[7], v155[8], v155[9], v155[10], v155[11], v155[12], v155[13], v155[14], v155[15], v155[16], v155[17], v155[18], v155[19], v155[20], v155[21], v155[22], v156, v157, v158[0], v158[1], v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173[0]))
  {
LABEL_3:
    vretproc(v0);
    goto LABEL_4;
  }

  v11 = OUTLINED_FUNCTION_7_34();
  get_parm(v11, v12, v13, -6);
  OUTLINED_FUNCTION_43_13(v14, &v159);
  v15 = OUTLINED_FUNCTION_55_12();
  push_ptr_init(v15, v16);
  v17 = OUTLINED_FUNCTION_76_11();
  push_ptr_init(v17, v18);
  OUTLINED_FUNCTION_32_18();
  v19 = OUTLINED_FUNCTION_31_19();
  if (lpta_loadp_setscan_r(v19, v20))
  {
    v21 = 0;
LABEL_7:
    v22 = OUTLINED_FUNCTION_21_25();
    starttest(v22, v23);
    v24 = OUTLINED_FUNCTION_22_24();
    if (lpta_loadp_setscan_r(v24, v25))
    {
      goto LABEL_3;
    }

    OUTLINED_FUNCTION_0_38();
    if (test_string_s())
    {
      goto LABEL_3;
    }

LABEL_9:
    OUTLINED_FUNCTION_58_11();
    savescptr(v0, v26, v158);
    v27 = OUTLINED_FUNCTION_3_36();
    if (!testFldeq(v27, v28, v29, 2))
    {
      v30 = v21;
      if (!advance_tok(v0))
      {
LABEL_11:
        v31 = OUTLINED_FUNCTION_91_8();
        savescptr(v31, v32, v33);
        OUTLINED_FUNCTION_0_38();
        if (test_string_s() || (v34 = OUTLINED_FUNCTION_3_36(), testFldeq(v34, v35, v36, 2)))
        {
          v21 = v30;
        }

        else
        {
          OUTLINED_FUNCTION_16_31();
          bspush_ca_scan_boa();
          v53 = OUTLINED_FUNCTION_20_26();
          if (testFldeq(v53, v54, v55, 53))
          {
            v21 = v30;
          }

          else
          {
            v21 = 1;
          }
        }
      }
    }
  }

  else
  {
    v37 = OUTLINED_FUNCTION_3_36();
    if (testFldeq(v37, v38, v39, 3))
    {
      v21 = 0;
    }

    else
    {
      v30 = 0;
      v21 = 0;
      if (!advance_tok(v0))
      {
LABEL_17:
        OUTLINED_FUNCTION_45_13();
        v40 = OUTLINED_FUNCTION_30_20();
        savescptr(v40, v41, v42);
        OUTLINED_FUNCTION_27_22();
        v21 = v30;
        if (!end_of_word())
        {
          v43 = OUTLINED_FUNCTION_22_24();
          if (lpta_loadp_setscan_r(v43, v44) || (OUTLINED_FUNCTION_0_38(), test_string_s()) || (v45 = OUTLINED_FUNCTION_36_15(), lpta_rpta_loadp(v45, v46, v47), v48 = OUTLINED_FUNCTION_2_36(), insert_2pt_s(v48, v49, 4, v50, v51)))
          {
LABEL_21:
            OUTLINED_FUNCTION_36_15();
            fren_char_name();
          }

LABEL_22:
          *(v0 + 136) = 1;
          OUTLINED_FUNCTION_44_13();
          v52 = OUTLINED_FUNCTION_23_24();
          insert_r(v52);
          goto LABEL_66;
        }
      }
    }
  }

  v56 = v21;
  while (2)
  {
    v57 = *(v0 + 104);
    if (v57)
    {
      v58 = OUTLINED_FUNCTION_40_14(v57);
      v30 = v59;
    }

    else
    {
      v58 = vback(v0, v56);
      v30 = 0;
    }

    switch(v58)
    {
      case 1:
        v21 = v30;
        goto LABEL_7;
      case 2:
        goto LABEL_17;
      case 3:
        goto LABEL_21;
      case 4:
        goto LABEL_22;
      case 5:
      case 23:
        goto LABEL_66;
      case 7:
        v21 = v30;
        goto LABEL_9;
      case 8:
        goto LABEL_11;
      case 9:
        bspop_boa(v0);
        OUTLINED_FUNCTION_27_22();
        bspush_ca_scan_boa();
        v60 = OUTLINED_FUNCTION_66_11();
        if (testFldeq(v60, v61, v62, 54))
        {
          v56 = v30;
        }

        else
        {
          v56 = 1;
        }

        continue;
      case 10:
        bspop_boa(v0);
        v63 = advance_tok(v0);
        v56 = v30;
        if (v63)
        {
          continue;
        }

        goto LABEL_35;
      case 11:
LABEL_35:
        v64 = OUTLINED_FUNCTION_87_8();
        savescptr(v64, v65, &v159);
        OUTLINED_FUNCTION_61_11();
        v66 = end_of_word();
        v56 = v30;
        if (v66)
        {
          continue;
        }

        *(v0 + 3018) = *(v0 + 3038);
        *(v0 + 136) = 1;
        OUTLINED_FUNCTION_44_13();
        v67 = OUTLINED_FUNCTION_23_24();
        insert_r(v67);
        v68 = OUTLINED_FUNCTION_61_11();
        if (!lpta_loadp_setscan_l(v68, v69))
        {
          OUTLINED_FUNCTION_66_11();
          if (!test_string_s())
          {
            v70 = OUTLINED_FUNCTION_97_6();
            starttest(v70, v71);
            v72 = OUTLINED_FUNCTION_41_13();
            if (!lpta_loadp_setscan_l(v72, v73))
            {
              OUTLINED_FUNCTION_66_11();
              if (!test_string_s())
              {
                lpta_rpta_loadp(v0, v158, &v159);
                v74 = OUTLINED_FUNCTION_23_24();
                if (!insert_2pt_s(v74, 1u, 4, &unk_28064B562, v75))
                {
                  goto LABEL_66;
                }
              }
            }

LABEL_41:
            v76 = OUTLINED_FUNCTION_41_13();
            lpta_rpta_loadp(v76, v77, &v159);
            v78 = OUTLINED_FUNCTION_23_24();
            inserted = insert_2pt_s(v78, 1u, 4, &unk_28064B562, v79);
            v56 = v30;
            if (!inserted)
            {
              goto LABEL_64;
            }

            continue;
          }
        }

LABEL_43:
        v81 = OUTLINED_FUNCTION_22_24();
        if (lpta_loadp_setscan_l(v81, v82) || (OUTLINED_FUNCTION_0_38(), test_string_s()) || (v83 = OUTLINED_FUNCTION_36_15(), lpta_rpta_loadp(v83, v84, v85), v86 = OUTLINED_FUNCTION_1_37(), insert_2pt_s(v86, v87, v88, v89, v90)))
        {
LABEL_46:
          v91 = OUTLINED_FUNCTION_22_24();
          if (lpta_loadp_setscan_l(v91, v92) || (OUTLINED_FUNCTION_0_38(), test_string_s()) || (v93 = OUTLINED_FUNCTION_36_15(), lpta_rpta_loadp(v93, v94, v95), v96 = OUTLINED_FUNCTION_1_37(), insert_2pt_s(v96, v97, v98, v99, v100)))
          {
LABEL_49:
            v101 = OUTLINED_FUNCTION_22_24();
            if (lpta_loadp_setscan_l(v101, v102) || (OUTLINED_FUNCTION_0_38(), test_string_s()) || (v103 = OUTLINED_FUNCTION_36_15(), lpta_rpta_loadp(v103, v104, v105), v106 = OUTLINED_FUNCTION_2_36(), insert_2pt_s(v106, v107, 9, v108, v109)))
            {
LABEL_52:
              v110 = OUTLINED_FUNCTION_22_24();
              if (lpta_loadp_setscan_l(v110, v111) || (OUTLINED_FUNCTION_0_38(), test_string_s()) || (v112 = OUTLINED_FUNCTION_36_15(), lpta_rpta_loadp(v112, v113, v114), v115 = OUTLINED_FUNCTION_2_36(), insert_2pt_s(v115, v116, 7, v117, v118)))
              {
LABEL_55:
                v119 = OUTLINED_FUNCTION_22_24();
                if (lpta_loadp_setscan_l(v119, v120) || (OUTLINED_FUNCTION_0_38(), test_string_s()) || (v121 = OUTLINED_FUNCTION_36_15(), lpta_rpta_loadp(v121, v122, v123), v124 = OUTLINED_FUNCTION_2_36(), insert_2pt_s(v124, v125, 8, v126, v127)))
                {
LABEL_58:
                  v128 = OUTLINED_FUNCTION_22_24();
                  if (lpta_loadp_setscan_l(v128, v129) || (OUTLINED_FUNCTION_0_38(), test_string_s()) || (v130 = OUTLINED_FUNCTION_36_15(), lpta_rpta_loadp(v130, v131, v132), v133 = OUTLINED_FUNCTION_2_36(), insert_2pt_s(v133, v134, 8, v135, v136)))
                  {
LABEL_61:
                    v137 = OUTLINED_FUNCTION_22_24();
                    if (!lpta_loadp_setscan_l(v137, v138))
                    {
                      OUTLINED_FUNCTION_0_38();
                      if (!test_string_s())
                      {
                        v139 = OUTLINED_FUNCTION_36_15();
                        lpta_rpta_loadp(v139, v140, v141);
                        v142 = OUTLINED_FUNCTION_2_36();
                        insert_2pt_s(v142, v143, 8, v144, v145);
                      }
                    }
                  }
                }
              }
            }
          }
        }

LABEL_64:
        OUTLINED_FUNCTION_91_8();
        fren_char_name();
LABEL_65:
        v146 = OUTLINED_FUNCTION_76_11();
        insert_space(v146, v147, v148, v149, v150, v151, v152, v153);
LABEL_66:
        OUTLINED_FUNCTION_82_9(v160);
LABEL_4:
        v10 = *MEMORY[0x277D85DE8];
        OUTLINED_FUNCTION_73_11();
        return;
      case 12:
        goto LABEL_43;
      case 13:
        goto LABEL_41;
      case 14:
      case 15:
        goto LABEL_64;
      case 16:
        goto LABEL_46;
      case 17:
        goto LABEL_49;
      case 18:
        goto LABEL_52;
      case 19:
        goto LABEL_55;
      case 20:
        goto LABEL_58;
      case 21:
        goto LABEL_61;
      case 22:
        goto LABEL_65;
      default:
        goto LABEL_3;
    }
  }
}

void separate_number_sequences()
{
  OUTLINED_FUNCTION_74_11();
  v1 = v0;
  v70 = *MEMORY[0x277D85DE8];
  v65[0] = 0;
  v65[1] = 0;
  v62 = 0;
  v63 = 0;
  v64 = 0;
  v60 = 0;
  v61 = 0;
  v59[0] = 0;
  v59[1] = 0;
  v57 = 0;
  v58 = 0;
  v55[0] = 0;
  v55[1] = 0;
  v56 = 0;
  OUTLINED_FUNCTION_38_15();
  bzero(v54, v2);
  OUTLINED_FUNCTION_37_15();
  bzero(v69, v3);
  if (!setjmp(v69))
  {
    v4 = ventproc(v1, v54, v68, v67, v66, v69);
    if (!v4)
    {
      OUTLINED_FUNCTION_43_13(v4, v65);
      WORD2(v64) = 0;
      LODWORD(v64) = 0;
      LODWORD(v62) = -65535;
      v6 = OUTLINED_FUNCTION_79_10();
      push_ptr_init(v6, v7);
      v8 = OUTLINED_FUNCTION_94_7();
      push_ptr_init(v8, v9);
      v10 = OUTLINED_FUNCTION_86_8();
      push_ptr_init(v10, v11);
      WORD2(v56) = 0;
      LODWORD(v56) = 0;
      LODWORD(v55[0]) = -65535;
      fence_35(v1);
      if (*(v1 + 2614) != 1)
      {
LABEL_6:
        starttest(v1, 2);
        if (!lpta_loadp_setscan_r(v1, v65))
        {
LABEL_7:
          savescptr(v1, 3, &v60);
          v12 = OUTLINED_FUNCTION_96_6();
          bspush_ca_scan(v12, v13);
          OUTLINED_FUNCTION_0_38();
          if (test_string_s())
          {
            goto LABEL_16;
          }

          v14 = OUTLINED_FUNCTION_98_6();
          if (savetok(v14, v15))
          {
            goto LABEL_16;
          }

LABEL_9:
          v16 = OUTLINED_FUNCTION_20_26();
          if (testFldeq(v16, v17, 3, 2) || advance_tok(v1))
          {
            goto LABEL_16;
          }

LABEL_11:
          v18 = OUTLINED_FUNCTION_93_8();
          startloop(v18, v19);
          while (1)
          {
LABEL_12:
            v20 = OUTLINED_FUNCTION_93_8();
            bspush_ca(v20);
            v21 = OUTLINED_FUNCTION_52_12();
            if (!lpta_loadp_setscan_r(v21, v22) && !advance_tok(v1) && !savetok(v1, v55))
            {
              v23 = OUTLINED_FUNCTION_98_6();
              if (!testeq_tvars(v23, v24, v55))
              {
LABEL_31:
                v48 = OUTLINED_FUNCTION_99_6();
                savescptr(v48, v49, v59);
LABEL_32:
                while (1)
                {
                  v50 = OUTLINED_FUNCTION_20_26();
                  if (testFldeq(v50, v51, 3, 2) || advance_tok(v1))
                  {
                    break;
                  }

                  v52 = OUTLINED_FUNCTION_27_22();
                  bspush_ca_scan(v52, v53);
                }
              }
            }

LABEL_16:
            while (2)
            {
              v25 = *(v1 + 104);
              if (v25)
              {
                v26 = OUTLINED_FUNCTION_40_14(v25);
              }

              else
              {
                v26 = OUTLINED_FUNCTION_85_9();
              }

              switch(v26)
              {
                case 1:
                  goto LABEL_6;
                case 3:
                  goto LABEL_7;
                case 4:
                  OUTLINED_FUNCTION_0_38();
                  if (test_string_s())
                  {
                    continue;
                  }

                  v27 = OUTLINED_FUNCTION_98_6();
                  if (savetok(v27, v28))
                  {
                    continue;
                  }

                  goto LABEL_22;
                case 5:
                  goto LABEL_11;
                case 6:
                  OUTLINED_FUNCTION_0_38();
                  if (!test_string_s())
                  {
                    goto LABEL_9;
                  }

                  continue;
                case 7:
LABEL_22:
                  while (1)
                  {
                    v29 = OUTLINED_FUNCTION_20_26();
                    if (testFldeq(v29, v30, 3, 2) || advance_tok(v1))
                    {
                      break;
                    }

                    v31 = OUTLINED_FUNCTION_61_11();
                    bspush_ca_scan(v31, v32);
                  }

                  continue;
                case 8:
                  goto LABEL_28;
                case 9:
                  goto LABEL_31;
                case 10:
                  savescptr(v1, 10, &v57);
LABEL_28:
                  v33 = OUTLINED_FUNCTION_52_12();
                  lpta_rpta_loadp(v33, v34, v59);
                  v35 = OUTLINED_FUNCTION_2_36();
                  if (insert_2pt_s(v35, v36, 2, &unk_28064B538, v37))
                  {
                    continue;
                  }

                  v61 = v58;
                  WORD1(v62) = 0;
                  v38 = OUTLINED_FUNCTION_98_6();
                  npush_v(v38, v39, v40, v41, v42, v43, v44, v45);
                  ncompare_s(v1, 0x48u);
                  if (!testeq(v1))
                  {
                    goto LABEL_3;
                  }

LABEL_30:
                  v46 = OUTLINED_FUNCTION_93_8();
                  while_iterate(v46, v47, 8);
                  break;
                case 11:
                  goto LABEL_32;
                case 12:
                  goto LABEL_30;
                case 13:
                  goto LABEL_12;
                default:
                  goto LABEL_3;
              }

              break;
            }
          }
        }
      }
    }
  }

LABEL_3:
  vretproc(v1);
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_73_11();
}

uint64_t fren_monetary_exp()
{
  OUTLINED_FUNCTION_5_34();
  v79 = *MEMORY[0x277D85DE8];
  v76 = 0;
  v77 = 0;
  v74 = 0;
  v75 = 0;
  v73 = 0;
  OUTLINED_FUNCTION_38_15();
  bzero(v72, v2);
  OUTLINED_FUNCTION_37_15();
  bzero(v78, v3);
  if (setjmp(v78))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_33_18();
  if (ventproc(v0, v4, v5, v6, v7, v78))
  {
    goto LABEL_3;
  }

  v10 = OUTLINED_FUNCTION_7_34();
  get_parm(v10, v11, v12, -6);
  OUTLINED_FUNCTION_43_13(v13, &v74);
  WORD2(v73) = -4;
  LOWORD(v73) = -4;
  fence_35(v0);
  HIWORD(v73) = 0;
  WORD1(v73) = 0;
  v14 = OUTLINED_FUNCTION_31_19();
  v16 = 0;
  if (lpta_loadp_setscan_r(v14, v15) || (OUTLINED_FUNCTION_0_38(), v16 = 0, v17 = 0, test_string_s()))
  {
LABEL_15:
    v34 = OUTLINED_FUNCTION_21_25();
    starttest(v34, v35);
    v36 = OUTLINED_FUNCTION_22_24();
    if (lpta_loadp_setscan_r(v36, v37) || (OUTLINED_FUNCTION_10_33(), test_string_s()))
    {
LABEL_20:
      v45 = OUTLINED_FUNCTION_22_24();
      if (lpta_loadp_setscan_r(v45, v46))
      {
        goto LABEL_3;
      }

      OUTLINED_FUNCTION_3_36();
      if (test_string_s())
      {
        goto LABEL_3;
      }

LABEL_22:
      v47 = OUTLINED_FUNCTION_71_11();
      savescptr(v47, v48, v49);
      v28 = 3142;
    }

    else
    {
      v38 = OUTLINED_FUNCTION_16_31();
      bspush_ca_scan(v38, v39);
      OUTLINED_FUNCTION_0_38();
      v40 = test_string_s();
      v41 = v16;
      if (v40)
      {
        goto LABEL_34;
      }

LABEL_18:
      v16 = v41;
      v42 = OUTLINED_FUNCTION_71_11();
      savescptr(v42, v43, v44);
      WORD1(v73) = *(v0 + 3182);
      v28 = 3118;
    }

    v29 = &v73 + 6;
    goto LABEL_24;
  }

  while (2)
  {
    OUTLINED_FUNCTION_45_13();
    savescptr(v0, v18, &v76);
    HIWORD(v73) = *(v0 + 3126);
    v19 = OUTLINED_FUNCTION_31_19();
    if (!lpta_loadp_setscan_r(v19, v20))
    {
      OUTLINED_FUNCTION_0_38();
      v21 = test_string_s();
      v22 = v17;
      if (!v21)
      {
LABEL_13:
        v16 = v22;
        OUTLINED_FUNCTION_50_13();
        v31 = OUTLINED_FUNCTION_71_11();
        savescptr(v31, v32, v33);
        v28 = 3178;
        v29 = &v73 + 2;
LABEL_24:
        v30 = v16;
        goto LABEL_25;
      }
    }

LABEL_9:
    v16 = v17;
    v23 = OUTLINED_FUNCTION_22_24();
    if (!lpta_loadp_setscan_r(v23, v24))
    {
      OUTLINED_FUNCTION_0_38();
      if (!test_string_s())
      {
LABEL_11:
        v25 = OUTLINED_FUNCTION_71_11();
        savescptr(v25, v26, v27);
        v28 = 3174;
        v29 = &v73 + 2;
        v30 = v17;
LABEL_25:
        *v29 = *(v0 + v28);
        v16 = v30;
      }
    }

LABEL_26:
    v50 = OUTLINED_FUNCTION_21_25();
    starttest(v50, v51);
    v52 = OUTLINED_FUNCTION_22_24();
    if (lpta_loadp_setscan_r(v52, v53))
    {
LABEL_27:
      v54 = OUTLINED_FUNCTION_21_25();
      starttest(v54, v55);
      OUTLINED_FUNCTION_21_25();
      bspush_ca_boa();
      convert_fren_monetary_exp();
      if (!v56)
      {
        v16 = 1;
      }

      goto LABEL_34;
    }

    v57 = OUTLINED_FUNCTION_21_25();
    bspush_ca_scan(v57, v58);
    v59 = OUTLINED_FUNCTION_3_36();
    v62 = testFldeq(v59, v60, v61, 1);
    v63 = v16;
    if (!v62)
    {
LABEL_33:
      v16 = v63;
      if (advance_tok(v0))
      {
        goto LABEL_34;
      }

LABEL_3:
      vretproc(v0);
      result = 94;
      break;
    }

LABEL_34:
    v17 = v16;
LABEL_35:
    v64 = *(v0 + 104);
    if (v64)
    {
      v65 = OUTLINED_FUNCTION_40_14(v64);
      v17 = v66;
    }

    else
    {
      v65 = vback(v0, v17);
      v17 = 0;
    }

    v41 = v17;
    v63 = v17;
    switch(v65)
    {
      case 1:
        v16 = v17;
        goto LABEL_15;
      case 2:
        continue;
      case 3:
        goto LABEL_9;
      case 4:
        v22 = v17;
        goto LABEL_13;
      case 5:
      case 7:
        v16 = v17;
        goto LABEL_26;
      case 6:
        goto LABEL_11;
      case 8:
        v16 = v17;
        goto LABEL_20;
      case 9:
        OUTLINED_FUNCTION_0_38();
        v67 = test_string_s();
        v41 = v17;
        if (!v67)
        {
          goto LABEL_18;
        }

        goto LABEL_35;
      case 10:
        goto LABEL_18;
      case 12:
        v16 = v17;
        goto LABEL_22;
      case 13:
        v16 = v17;
        goto LABEL_27;
      case 14:
        v68 = OUTLINED_FUNCTION_20_26();
        v71 = testFldeq(v68, v69, v70, 63);
        v63 = v17;
        if (!v71)
        {
          goto LABEL_33;
        }

        goto LABEL_35;
      case 15:
        goto LABEL_33;
      case 16:
        *(v1 + 8) = v77;
        OUTLINED_FUNCTION_82_9(v75);
        result = 0;
        break;
      case 17:
        bspop_boa(v0);
        goto LABEL_3;
      default:
        goto LABEL_3;
    }

    break;
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t add_fren_currency_units(uint64_t a1, __int16 *a2, uint64_t a3, __int16 *a4)
{
  v74 = *MEMORY[0x277D85DE8];
  v61 = 0;
  v62 = 0;
  v60 = 0;
  OUTLINED_FUNCTION_38_15();
  bzero(&v37, v7);
  OUTLINED_FUNCTION_37_15();
  bzero(v73, v8);
  v9 = setjmp(v73);
  if (!v9 && !OUTLINED_FUNCTION_63_11(v9, &v37, v10, v11, v12, v13, v14, v15, v35, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73[0]))
  {
    v18 = OUTLINED_FUNCTION_49_13();
    get_parm(v18, v19, a2, -6);
    v20 = OUTLINED_FUNCTION_30_20();
    get_parm(v20, v21, v22, -4);
    v23 = OUTLINED_FUNCTION_76_11();
    get_parm(v23, v24, a4, -4);
    v25 = fence_35(a1);
    if (*(a1 + 3126) == HIWORD(v60))
    {
      if (*(a1 + 3178) == WORD1(v60))
      {
LABEL_7:
        OUTLINED_FUNCTION_19_26(v25, v26, v27, v28, v29, v30, v31, v32, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62);
        v33 = OUTLINED_FUNCTION_23_24();
LABEL_18:
        insert_l(v33);
        goto LABEL_19;
      }

      v34 = *(a1 + 3174);
      *(a1 + 168) = 1;
      *(a1 + 144) = v62;
      *(a1 + 128) = 0;
    }

    else
    {
      if (*(a1 + 3118) == HIWORD(v60))
      {
        if (*(a1 + 3182) != WORD1(v60))
        {
          goto LABEL_7;
        }
      }

      else if (*(a1 + 3142) != HIWORD(v60))
      {
        if (*(a1 + 3130) != HIWORD(v60))
        {
LABEL_19:
          vretproc(a1);
          result = 0;
          goto LABEL_4;
        }

        goto LABEL_7;
      }

      OUTLINED_FUNCTION_77_10(v25, v26, v27, v28, v29, v30, v31, v32, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62);
    }

    v33 = OUTLINED_FUNCTION_2_36();
    goto LABEL_18;
  }

  vretproc(a1);
  result = 94;
LABEL_4:
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t convert_fren_double()
{
  OUTLINED_FUNCTION_5_34();
  v175[30] = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_11_33(v3, v4, v5, v6, v7, v8, v9, v10, v123, v125, v127, v129, v131, v133, v135, v137, v139, v141, v143, v145, v147, v149, v151, v153, v155, v157, v159, v161, v163, v165, v167, v169, v171, v173, v174, v175[0], v175[1]);
  OUTLINED_FUNCTION_35_15();
  if (setjmp(v2))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_33_18();
  if (OUTLINED_FUNCTION_88_8(v11, v12, v13, v14, v15))
  {
    goto LABEL_3;
  }

  v18 = OUTLINED_FUNCTION_7_34();
  get_parm(v18, v19, v20, -6);
  OUTLINED_FUNCTION_43_13(v21, &v173);
  v22 = OUTLINED_FUNCTION_48_13();
  push_ptr_init(v22, v23);
  fence_35(v0);
  v24 = OUTLINED_FUNCTION_31_19();
  if (!lpta_loadp_setscan_r(v24, v25))
  {
    OUTLINED_FUNCTION_0_38();
    if (!test_string_s())
    {
LABEL_48:
      OUTLINED_FUNCTION_18_30(2, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142, v144, v146, v148, v150, v152, v154, v156, v158, v160, v162, v164, v166, v168, v170);
      OUTLINED_FUNCTION_27_22();
      convert_fren_single_digit();
LABEL_50:
      v115 = OUTLINED_FUNCTION_29_21();
      insert_space(v115, v116, v117, v118, v119, v120, v121, v122);
      goto LABEL_51;
    }
  }

  while (2)
  {
    v26 = OUTLINED_FUNCTION_22_24();
    if (!lpta_loadp_setscan_r(v26, v27))
    {
      OUTLINED_FUNCTION_0_38();
      if (!test_string_s())
      {
LABEL_47:
        OUTLINED_FUNCTION_39_14();
        convert_fren_teens();
LABEL_51:
        OUTLINED_FUNCTION_81_10(v174);
        break;
      }
    }

LABEL_8:
    v28 = OUTLINED_FUNCTION_21_25();
    starttest(v28, v29);
    v30 = OUTLINED_FUNCTION_22_24();
    if (!lpta_loadp_setscan_r(v30, v31))
    {
      OUTLINED_FUNCTION_0_38();
      if (!test_string_s())
      {
LABEL_10:
        OUTLINED_FUNCTION_18_30(9, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142, v144, v146, v148, v150, v152, v154, v156, v158, v160, v162, v164, v166, v168, v170);
        v32 = OUTLINED_FUNCTION_9_33();
        lpta_rpta_loadp(v32, v33, v34);
        v35 = OUTLINED_FUNCTION_14_32();
        v39 = 5;
        goto LABEL_11;
      }
    }

LABEL_16:
    v42 = OUTLINED_FUNCTION_21_25();
    starttest(v42, v43);
    v44 = OUTLINED_FUNCTION_22_24();
    if (!lpta_loadp_setscan_r(v44, v45))
    {
      OUTLINED_FUNCTION_0_38();
      if (!test_string_s())
      {
LABEL_33:
        OUTLINED_FUNCTION_18_30(11, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142, v144, v146, v148, v150, v152, v154, v156, v158, v160, v162, v164, v166, v168, v170);
        v76 = OUTLINED_FUNCTION_9_33();
        lpta_rpta_loadp(v76, v77, v78);
        v35 = OUTLINED_FUNCTION_14_32();
        v39 = 6;
        goto LABEL_11;
      }
    }

LABEL_18:
    v46 = OUTLINED_FUNCTION_21_25();
    starttest(v46, v47);
    v48 = OUTLINED_FUNCTION_22_24();
    if (!lpta_loadp_setscan_r(v48, v49))
    {
      OUTLINED_FUNCTION_0_38();
      if (!test_string_s())
      {
LABEL_34:
        OUTLINED_FUNCTION_18_30(13, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142, v144, v146, v148, v150, v152, v154, v156, v158, v160, v162, v164, v166, v168, v170);
        v79 = OUTLINED_FUNCTION_9_33();
        lpta_rpta_loadp(v79, v80, v81);
LABEL_37:
        v35 = OUTLINED_FUNCTION_14_32();
        v39 = 8;
        goto LABEL_11;
      }
    }

LABEL_20:
    v50 = OUTLINED_FUNCTION_21_25();
    starttest(v50, v51);
    v52 = OUTLINED_FUNCTION_22_24();
    if (!lpta_loadp_setscan_r(v52, v53))
    {
      OUTLINED_FUNCTION_0_38();
      if (!test_string_s())
      {
LABEL_35:
        OUTLINED_FUNCTION_18_30(15, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142, v144, v146, v148, v150, v152, v154, v156, v158, v160, v162, v164, v166, v168, v170);
        v82 = OUTLINED_FUNCTION_9_33();
        lpta_rpta_loadp(v82, v83, v84);
        v35 = OUTLINED_FUNCTION_14_32();
        v39 = 9;
        goto LABEL_11;
      }
    }

LABEL_22:
    v54 = OUTLINED_FUNCTION_21_25();
    starttest(v54, v55);
    v56 = OUTLINED_FUNCTION_22_24();
    if (!lpta_loadp_setscan_r(v56, v57))
    {
      OUTLINED_FUNCTION_0_38();
      if (!test_string_s())
      {
LABEL_36:
        OUTLINED_FUNCTION_18_30(17, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142, v144, v146, v148, v150, v152, v154, v156, v158, v160, v162, v164, v166, v168, v170);
        v85 = OUTLINED_FUNCTION_9_33();
        lpta_rpta_loadp(v85, v86, v87);
        goto LABEL_37;
      }
    }

LABEL_24:
    v58 = OUTLINED_FUNCTION_21_25();
    starttest(v58, v59);
    v60 = OUTLINED_FUNCTION_22_24();
    if (!lpta_loadp_setscan_r(v60, v61))
    {
      OUTLINED_FUNCTION_0_38();
      if (!test_string_s())
      {
LABEL_38:
        OUTLINED_FUNCTION_18_30(19, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142, v144, v146, v148, v150, v152, v154, v156, v158, v160, v162, v164, v166, v168, v170);
        v88 = OUTLINED_FUNCTION_9_33();
        lpta_rpta_loadp(v88, v89, v90);
        v71 = OUTLINED_FUNCTION_2_36();
        v75 = 9;
LABEL_31:
        if (insert_2pt_s(v71, v72, v75, v73, v74))
        {
          goto LABEL_12;
        }

        v107 = OUTLINED_FUNCTION_29_21();
        insert_space(v107, v108, v109, v110, v111, v112, v113, v114);
        goto LABEL_47;
      }
    }

LABEL_26:
    v62 = OUTLINED_FUNCTION_21_25();
    starttest(v62, v63);
    v64 = OUTLINED_FUNCTION_22_24();
    if (lpta_loadp_setscan_r(v64, v65) || (OUTLINED_FUNCTION_0_38(), test_string_s()))
    {
LABEL_28:
      v66 = OUTLINED_FUNCTION_21_25();
      starttest(v66, v67);
      v1 = 1;
      if (lpta_loadp_setscan_r(v0, v175) || (OUTLINED_FUNCTION_4_35(), test_string_s()))
      {
LABEL_40:
        v94 = OUTLINED_FUNCTION_17_31();
        if (lpta_loadp_setscan_r(v94, v95) || (OUTLINED_FUNCTION_0_38(), test_string_s()))
        {
          if (v1)
          {
LABEL_43:
            v96 = OUTLINED_FUNCTION_17_31();
            if (!lpta_loadp_setscan_r(v96, v97))
            {
              OUTLINED_FUNCTION_4_35();
              v98 = test_string_s();
              if (!v98)
              {
                *(v0 + 168) = 1;
                OUTLINED_FUNCTION_47_13(v98, v99, v100, v101, v102, v103, v104, v105, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142, v144, v146, v148, v150, v152, v154, v156, v158, v160, v162, v164, v166, v168, v170, v172);
                v106 = OUTLINED_FUNCTION_23_24();
                insert_l(v106);
              }
            }
          }

LABEL_46:
          OUTLINED_FUNCTION_39_14();
          fren_char_name();
        }

        else
        {
          OUTLINED_FUNCTION_39_14();
          delete_inp_from_left();
        }

        goto LABEL_50;
      }

LABEL_30:
      OUTLINED_FUNCTION_18_30(24, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142, v144, v146, v148, v150, v152, v154, v156, v158, v160, v162, v164, v166, v168, v170);
      v68 = OUTLINED_FUNCTION_9_33();
      lpta_rpta_loadp(v68, v69, v70);
      v71 = OUTLINED_FUNCTION_2_36();
      v75 = 13;
      goto LABEL_31;
    }

LABEL_39:
    OUTLINED_FUNCTION_18_30(23, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142, v144, v146, v148, v150, v152, v154, v156, v158, v160, v162, v164, v166, v168, v170);
    v91 = OUTLINED_FUNCTION_9_33();
    lpta_rpta_loadp(v91, v92, v93);
    v1 = 0;
    v35 = OUTLINED_FUNCTION_20_26();
    v39 = 13;
    v38 = 0;
LABEL_11:
    if (!insert_2pt_s(v35, v36, v39, v37, v38))
    {
      goto LABEL_40;
    }

LABEL_12:
    v40 = *(v0 + 104);
    if (v40)
    {
      v41 = OUTLINED_FUNCTION_40_14(v40);
    }

    else
    {
      v41 = OUTLINED_FUNCTION_85_9();
    }

    v1 = 1;
    switch(v41)
    {
      case 1:
        continue;
      case 2:
        goto LABEL_48;
      case 3:
      case 28:
      case 29:
        goto LABEL_50;
      case 4:
      case 7:
      case 21:
      case 26:
      case 31:
        goto LABEL_51;
      case 5:
        goto LABEL_40;
      case 6:
        goto LABEL_8;
      case 8:
        goto LABEL_16;
      case 9:
        goto LABEL_10;
      case 10:
        goto LABEL_18;
      case 11:
        goto LABEL_33;
      case 12:
        goto LABEL_20;
      case 13:
        goto LABEL_34;
      case 14:
        goto LABEL_22;
      case 15:
        goto LABEL_35;
      case 16:
        goto LABEL_24;
      case 17:
        goto LABEL_36;
      case 18:
        goto LABEL_26;
      case 19:
        goto LABEL_38;
      case 20:
      case 25:
        goto LABEL_47;
      case 22:
        goto LABEL_28;
      case 23:
        goto LABEL_39;
      case 24:
        goto LABEL_30;
      case 27:
        goto LABEL_43;
      case 30:
        goto LABEL_46;
      default:
        goto LABEL_3;
    }
  }

LABEL_3:
  vretproc(v0);
  v16 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_95_7();
}

uint64_t add_fren_subunits()
{
  OUTLINED_FUNCTION_5_34();
  v69 = *MEMORY[0x277D85DE8];
  v56 = 0;
  v57 = 0;
  HIDWORD(v55) = 0;
  OUTLINED_FUNCTION_38_15();
  bzero(&v32, v2);
  OUTLINED_FUNCTION_37_15();
  bzero(v68, v3);
  v4 = setjmp(v68);
  if (v4 || OUTLINED_FUNCTION_63_11(v4, &v32, v5, v6, v7, v8, v9, v10, v30, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68[0]))
  {
LABEL_3:
    vretproc(v0);
    result = 94;
  }

  else
  {
    v13 = OUTLINED_FUNCTION_30_20();
    get_parm(v13, v14, v15, -6);
    get_parm(v0, &v55 + 4, v1, -4);
    fence_35(v0);
    v16 = OUTLINED_FUNCTION_93_8();
    starttest(v16, v17);
    v18 = OUTLINED_FUNCTION_13_32();
    bspush_ca(v18);
    v27 = *(v0 + 3126);
    while (2)
    {
      if (v27 == HIWORD(v55))
      {
LABEL_12:
        *(v0 + 168) = 1;
        OUTLINED_FUNCTION_25_24(v19, v20, v21, v22, v23, v24, v25, v26, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57);
        v29 = OUTLINED_FUNCTION_23_24();
      }

      else
      {
        v28 = *(v0 + 104);
        if (v28)
        {
          v19 = OUTLINED_FUNCTION_40_14(v28);
        }

        else
        {
          v19 = OUTLINED_FUNCTION_85_9();
        }

        switch(v19)
        {
          case 1:
            if (*(v0 + 3118) != HIWORD(v55))
            {
              goto LABEL_14;
            }

            OUTLINED_FUNCTION_19_26(v19, v20, v21, v22, v23, v24, v25, v26, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57);
            v29 = OUTLINED_FUNCTION_23_24();
            break;
          case 2:
            v27 = *(v0 + 3142);
            continue;
          case 3:
            goto LABEL_12;
          case 4:
            goto LABEL_14;
          default:
            goto LABEL_3;
        }
      }

      break;
    }

    insert_l(v29);
LABEL_14:
    vretproc(v0);
    result = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void test_for_fren_ordinal()
{
  OUTLINED_FUNCTION_74_11();
  OUTLINED_FUNCTION_5_34();
  v98 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_34_16();
  v80 = 0;
  v81 = 0;
  OUTLINED_FUNCTION_38_15();
  bzero(v79, v2);
  OUTLINED_FUNCTION_37_15();
  bzero(v97, v3);
  v4 = setjmp(v97);
  if (v4)
  {
    goto LABEL_4;
  }

  if (OUTLINED_FUNCTION_60_11(v4, v79, v5, v6, v7, v8, v9, v10, v78, v79[0], v79[1], v79[2], v79[3], v79[4], v79[5], v79[6], v79[7], v79[8], v79[9], v79[10], v79[11], v79[12], v79[13], v79[14], v79[15], v79[16], v79[17], v79[18], v79[19], v79[20], v79[21], v79[22], v80, v81, v82[0], v82[1], v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97[0]))
  {
    goto LABEL_4;
  }

  v11 = OUTLINED_FUNCTION_7_34();
  get_parm(v11, v12, v13, -6);
  OUTLINED_FUNCTION_43_13(v14, &v83);
  v15 = OUTLINED_FUNCTION_55_12();
  push_ptr_init(v15, v16);
  v17 = OUTLINED_FUNCTION_76_11();
  push_ptr_init(v17, v18);
  OUTLINED_FUNCTION_32_18();
  v19 = OUTLINED_FUNCTION_31_19();
  if (lpta_loadp_setscan_r(v19, v20))
  {
LABEL_4:
    vretproc(v0);
  }

  else
  {
    v22 = OUTLINED_FUNCTION_13_32();
    bspush_ca_scan(v22, v23);
    OUTLINED_FUNCTION_4_35();
    if (test_string_s())
    {
      v24 = 0;
    }

    else
    {
      v25 = OUTLINED_FUNCTION_21_25();
      bspush_ca_scan(v25, v26);
      v27 = OUTLINED_FUNCTION_21_25();
      bspush_ca_scan(v27, v28);
      OUTLINED_FUNCTION_0_38();
      v29 = test_string_s();
      v30 = 0;
      v24 = 0;
      if (!v29)
      {
LABEL_9:
        v31 = v30;
        OUTLINED_FUNCTION_0_38();
        v32 = test_string_s();
        v33 = v31;
        v24 = v31;
        if (!v32)
        {
LABEL_10:
          v34 = v33;
          v35 = OUTLINED_FUNCTION_36_15();
          savescptr(v35, v36, v37);
          v38 = OUTLINED_FUNCTION_16_31();
          bspush_ca_scan(v38, v39);
          OUTLINED_FUNCTION_0_38();
          v40 = test_string_s();
          v41 = v34;
          v24 = v34;
          if (!v40)
          {
LABEL_11:
            savescptr(v0, 9, &v80);
            v42 = OUTLINED_FUNCTION_21_25();
            starttest(v42, v43);
            OUTLINED_FUNCTION_21_25();
            bspush_ca_boa();
            OUTLINED_FUNCTION_31_19();
            if (end_of_word())
            {
              v24 = v41;
            }

            else
            {
              v24 = 1;
            }
          }
        }
      }
    }

    while (2)
    {
      v44 = *(v0 + 104);
      if (v44)
      {
        v45 = OUTLINED_FUNCTION_40_14(v44);
        v41 = v46;
      }

      else
      {
        v45 = vback(v0, v24);
        v41 = 0;
      }

      v30 = v41;
      v33 = v41;
      switch(v45)
      {
        case 2:
          v47 = OUTLINED_FUNCTION_31_19();
          bspush_ca_scan(v47, v48);
          OUTLINED_FUNCTION_4_35();
          v49 = test_string_s();
          v24 = v41;
          if (v49)
          {
            continue;
          }

          v50 = OUTLINED_FUNCTION_61_11();
          bspush_ca_scan(v50, v51);
          OUTLINED_FUNCTION_4_35();
          goto LABEL_21;
        case 3:
        case 6:
        case 8:
          goto LABEL_10;
        case 4:
          OUTLINED_FUNCTION_4_35();
          v73 = test_string_s();
          v30 = v41;
          v24 = v41;
          if (!v73)
          {
            goto LABEL_9;
          }

          continue;
        case 5:
          goto LABEL_9;
        case 7:
          savescptr(v0, 7, v82);
          OUTLINED_FUNCTION_28_21();
LABEL_21:
          v52 = test_string_s();
          v33 = v41;
          v24 = v41;
          if (!v52)
          {
            goto LABEL_10;
          }

          continue;
        case 9:
          goto LABEL_11;
        case 10:
          v53 = OUTLINED_FUNCTION_41_13();
          if (lpta_loadp_setscan_r(v53, v54))
          {
            goto LABEL_34;
          }

          if (advance_tok(v0))
          {
            goto LABEL_34;
          }

          *(v0 + 136) = v1;
          v55 = OUTLINED_FUNCTION_8_34();
          if (test_ptr(v55))
          {
            goto LABEL_34;
          }

          v56 = OUTLINED_FUNCTION_87_8();
          starttest(v56, v57);
          v58 = OUTLINED_FUNCTION_41_13();
          if (lpta_loadp_setscan_l(v58, v59))
          {
            goto LABEL_30;
          }

          OUTLINED_FUNCTION_4_35();
          if (test_string_s())
          {
            goto LABEL_30;
          }

          if (*(v0 + 3094) != 1)
          {
            goto LABEL_30;
          }

          v60 = OUTLINED_FUNCTION_41_13();
          lpta_rpta_loadp(v60, v61, &v83);
          v62 = OUTLINED_FUNCTION_15_31();
          if (insert_2pt_s(v62, v63, v64, &unk_28064B540, v65))
          {
            goto LABEL_30;
          }

          goto LABEL_37;
        case 11:
          bspop_boa(v0);
          goto LABEL_4;
        case 12:
        case 15:
        case 16:
          goto LABEL_37;
        case 13:
LABEL_34:
          v74 = OUTLINED_FUNCTION_55_12();
          lpta_loadpn(v74, v75);
          OUTLINED_FUNCTION_90_8();
          if (!compare_ptas(v0) && !testneq(v0))
          {
            *(v0 + 136) = 1;
            OUTLINED_FUNCTION_44_13();
            v76 = OUTLINED_FUNCTION_23_24();
            insert_r(v76);
          }

          goto LABEL_37;
        case 14:
LABEL_30:
          v66 = OUTLINED_FUNCTION_41_13();
          lpta_rpta_loadp(v66, v67, &v83);
          v68 = OUTLINED_FUNCTION_15_31();
          inserted = insert_2pt_s(v68, v69, v70, &unk_28064B543, v71);
          v24 = v41;
          if (inserted)
          {
            continue;
          }

LABEL_37:
          v77 = v81;
          v84 = v81;
          *(v0 + 3018) = *(v0 + 3042);
          OUTLINED_FUNCTION_82_9(v77);
          break;
        default:
          goto LABEL_4;
      }

      break;
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_73_11();
}

uint64_t convert_fren_single_digit()
{
  OUTLINED_FUNCTION_5_34();
  v153 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_11_33(v1, v2, v3, v4, v5, v6, v7, v8, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v148, v149, v150, v151);
  OUTLINED_FUNCTION_37_15();
  bzero(v152, v9);
  if (setjmp(v152))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_33_18();
  if (ventproc(v0, v10, v11, v12, v13, v152))
  {
    goto LABEL_3;
  }

  v16 = OUTLINED_FUNCTION_9_33();
  get_parm(v16, v17, v18, -6);
  v19 = OUTLINED_FUNCTION_27_22();
  OUTLINED_FUNCTION_72_11(v19, v20);
  v21 = OUTLINED_FUNCTION_31_19();
  push_ptr_init(v21, v22);
  fence_35(v0);
  OUTLINED_FUNCTION_27_22();
  test_for_fren_ordinal();
  if (v23)
  {
LABEL_5:
    OUTLINED_FUNCTION_12_33();
    fren_char_name();
LABEL_40:
    OUTLINED_FUNCTION_81_10(v149);
    goto LABEL_3;
  }

  v24 = OUTLINED_FUNCTION_22_24();
  if (lpta_loadp_setscan_r(v24, v25) || (OUTLINED_FUNCTION_0_38(), test_string_s()))
  {
LABEL_8:
    v26 = OUTLINED_FUNCTION_22_24();
    if (lpta_loadp_setscan_r(v26, v27) || (OUTLINED_FUNCTION_0_38(), test_string_s()) || (v28 = OUTLINED_FUNCTION_12_33(), lpta_rpta_loadp(v28, v29, v30), v31 = OUTLINED_FUNCTION_1_37(), insert_2pt_s(v31, v32, v33, v34, v35)))
    {
LABEL_11:
      v36 = OUTLINED_FUNCTION_22_24();
      if (lpta_loadp_setscan_r(v36, v37) || (OUTLINED_FUNCTION_0_38(), test_string_s()) || (v38 = OUTLINED_FUNCTION_12_33(), lpta_rpta_loadp(v38, v39, v40), v41 = OUTLINED_FUNCTION_2_36(), insert_2pt_s(v41, v42, 6, v43, v44)))
      {
LABEL_14:
        v45 = OUTLINED_FUNCTION_22_24();
        if (lpta_loadp_setscan_r(v45, v46) || (OUTLINED_FUNCTION_0_38(), test_string_s()) || (v47 = OUTLINED_FUNCTION_12_33(), lpta_rpta_loadp(v47, v48, v49), v50 = OUTLINED_FUNCTION_2_36(), insert_2pt_s(v50, v51, 6, v52, v53)))
        {
LABEL_17:
          v54 = OUTLINED_FUNCTION_22_24();
          if (lpta_loadp_setscan_r(v54, v55) || (OUTLINED_FUNCTION_0_38(), test_string_s()) || (v56 = OUTLINED_FUNCTION_12_33(), lpta_rpta_loadp(v56, v57, v58), v59 = OUTLINED_FUNCTION_1_37(), insert_2pt_s(v59, v60, v61, v62, v63)))
          {
LABEL_20:
            v64 = OUTLINED_FUNCTION_22_24();
            if (lpta_loadp_setscan_r(v64, v65) || (OUTLINED_FUNCTION_0_38(), test_string_s()) || (v66 = OUTLINED_FUNCTION_12_33(), lpta_rpta_loadp(v66, v67, v68), v69 = OUTLINED_FUNCTION_2_36(), insert_2pt_s(v69, v70, 4, v71, v72)))
            {
LABEL_23:
              v73 = OUTLINED_FUNCTION_22_24();
              if (lpta_loadp_setscan_r(v73, v74) || (OUTLINED_FUNCTION_0_38(), test_string_s()) || (v75 = OUTLINED_FUNCTION_12_33(), lpta_rpta_loadp(v75, v76, v77), v78 = OUTLINED_FUNCTION_1_37(), insert_2pt_s(v78, v79, v80, v81, v82)))
              {
LABEL_26:
                v83 = OUTLINED_FUNCTION_22_24();
                if (lpta_loadp_setscan_r(v83, v84) || (OUTLINED_FUNCTION_0_38(), test_string_s()) || (v85 = OUTLINED_FUNCTION_12_33(), lpta_rpta_loadp(v85, v86, v87), v88 = OUTLINED_FUNCTION_1_37(), insert_2pt_s(v88, v89, v90, v91, v92)))
                {
LABEL_29:
                  v93 = OUTLINED_FUNCTION_22_24();
                  if (!lpta_loadp_setscan_r(v93, v94))
                  {
                    OUTLINED_FUNCTION_0_38();
                    if (!test_string_s())
                    {
                      v95 = OUTLINED_FUNCTION_12_33();
                      lpta_rpta_loadp(v95, v96, v97);
                      v98 = OUTLINED_FUNCTION_1_37();
                      insert_2pt_s(v98, v99, v100, v101, v102);
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    goto LABEL_39;
  }

  v103 = OUTLINED_FUNCTION_21_25();
  starttest(v103, v104);
  if (*(v0 + 3094) == 1)
  {
    v105 = OUTLINED_FUNCTION_12_33();
    lpta_rpta_loadp(v105, v106, v107);
    v108 = OUTLINED_FUNCTION_1_37();
    if (!insert_2pt_s(v108, v109, v110, v111, v112))
    {
LABEL_39:
      v149 = v147;
      goto LABEL_40;
    }
  }

  while (2)
  {
    v113 = OUTLINED_FUNCTION_31_19();
    lpta_rpta_loadp(v113, v114, &v148);
    v115 = OUTLINED_FUNCTION_3_36();
    if (!insert_2pt_s(v115, v116, v117, &unk_28064B54C, 0))
    {
      goto LABEL_39;
    }

    v118 = *(v0 + 104);
    if (v118)
    {
      v119 = OUTLINED_FUNCTION_40_14(v118);
    }

    else
    {
      v120 = OUTLINED_FUNCTION_28_21();
      v119 = vback(v120, v121);
    }

    switch(v119)
    {
      case 1:
        goto LABEL_5;
      case 2:
        goto LABEL_8;
      case 3:
        continue;
      case 4:
      case 5:
        goto LABEL_39;
      case 6:
        goto LABEL_11;
      case 7:
        goto LABEL_14;
      case 8:
        goto LABEL_17;
      case 9:
        goto LABEL_20;
      case 10:
        goto LABEL_23;
      case 11:
        goto LABEL_26;
      case 12:
        goto LABEL_29;
      case 13:
        goto LABEL_40;
      default:
        goto LABEL_3;
    }
  }

LABEL_3:
  vretproc(v0);
  v14 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_95_7();
}

void convert_fren_thousands()
{
  OUTLINED_FUNCTION_74_11();
  v57 = v0;
  v2 = v1;
  v79 = *MEMORY[0x277D85DE8];
  v66 = 0;
  v67 = 0;
  OUTLINED_FUNCTION_34_16();
  v60 = 0;
  v61 = 0;
  OUTLINED_FUNCTION_38_15();
  bzero(v59, v3);
  OUTLINED_FUNCTION_37_15();
  bzero(v78, v4);
  v5 = setjmp(v78);
  if (v5 || (v12 = OUTLINED_FUNCTION_64_11(v5, v59, v6, v7, v8, v9, v10, v11, v57, v59[0], v59[1], v59[2], v59[3], v59[4], v59[5], v59[6], v59[7], v59[8], v59[9], v59[10], v59[11], v59[12], v59[13], v59[14], v59[15], v59[16], v59[17], v59[18], v59[19], v59[20], v59[21], v59[22], v60, v61, v62[0], v62[1], v62[2], v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78[0]), v12))
  {
LABEL_3:
    vretproc(v2);
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_43_13(v12, &v66);
  get_parm(v2, &v64, v58, -6);
  v14 = OUTLINED_FUNCTION_46_13();
  push_ptr_init(v14, v15);
  v16 = OUTLINED_FUNCTION_55_12();
  push_ptr_init(v16, v17);
  v18 = OUTLINED_FUNCTION_76_11();
  push_ptr_init(v18, v19);
  OUTLINED_FUNCTION_32_18();
  if (lpta_loadp_setscan_l(v2, &v64) || advance_tok(v2) || advance_tok(v2) || advance_tok(v2))
  {
    v20 = 0;
  }

  else
  {
    v22 = OUTLINED_FUNCTION_13_32();
    bspush_ca_scan(v22, v23);
    OUTLINED_FUNCTION_0_38();
    v24 = test_string_s();
    v25 = 0;
    v20 = 0;
    if (v24)
    {
      goto LABEL_23;
    }

LABEL_18:
    v20 = v25;
    OUTLINED_FUNCTION_45_13();
    v26 = OUTLINED_FUNCTION_36_15();
    savescptr(v26, v27, v28);
  }

  while (2)
  {
    if (*(v2 + 3094) == 6)
    {
      OUTLINED_FUNCTION_36_15();
      convert_fren_hundreds();
      goto LABEL_19;
    }

    v21 = *(v2 + 3094);
LABEL_13:
    if (v21 == 5)
    {
      OUTLINED_FUNCTION_36_15();
      convert_fren_double();
      goto LABEL_19;
    }

LABEL_38:
    if (v21 != 4)
    {
LABEL_19:
      v29 = OUTLINED_FUNCTION_21_25();
      starttest(v29, v30);
      OUTLINED_FUNCTION_21_25();
      bspush_ca_boa();
      v31 = OUTLINED_FUNCTION_22_24();
      if (!lpta_loadp_setscan_r(v31, v32))
      {
        OUTLINED_FUNCTION_3_36();
        goto LABEL_21;
      }

      goto LABEL_23;
    }

    v53 = OUTLINED_FUNCTION_21_25();
    starttest_l(v53, v54);
    OUTLINED_FUNCTION_16_31();
    bspush_ca_boa();
    v55 = OUTLINED_FUNCTION_22_24();
    if (!lpta_loadp_setscan_r(v55, v56))
    {
      OUTLINED_FUNCTION_0_38();
LABEL_21:
      if (!test_string_s())
      {
        v20 = 1;
      }
    }

LABEL_23:
    v33 = v20;
LABEL_24:
    v34 = *(v2 + 104);
    if (v34)
    {
      v35 = OUTLINED_FUNCTION_40_14(v34);
      v20 = v36;
    }

    else
    {
      v35 = vback(v2, v33);
      v20 = 0;
    }

    switch(v35)
    {
      case 1:
        continue;
      case 2:
        v25 = v20;
        goto LABEL_18;
      case 3:
        v21 = *(v2 + 3094);
        goto LABEL_13;
      case 4:
      case 5:
      case 7:
      case 8:
        goto LABEL_19;
      case 6:
        v21 = *(v2 + 3094);
        goto LABEL_38;
      case 9:
        bspop_boa(v2);
        OUTLINED_FUNCTION_36_15();
        convert_fren_single_digit();
        goto LABEL_19;
      case 10:
        goto LABEL_29;
      case 11:
        bspop_boa(v2);
        *(v2 + 168) = 1;
        *(v2 + 144) = v63;
        *(v2 + 128) = 0;
        v37 = OUTLINED_FUNCTION_23_24();
        insert_l(v37);
LABEL_29:
        v38 = OUTLINED_FUNCTION_27_22();
        starttest(v38, v39);
        v40 = OUTLINED_FUNCTION_31_19();
        if (!lpta_loadp_setscan_l(v40, v41))
        {
          goto LABEL_30;
        }

        goto LABEL_34;
      case 12:
        goto LABEL_34;
      case 13:
LABEL_30:
        v42 = OUTLINED_FUNCTION_61_11();
        savescptr(v42, v43, &v60);
        goto LABEL_31;
      case 14:
LABEL_31:
        v44 = OUTLINED_FUNCTION_80_10();
        savescptr(v44, v45, v62);
        v46 = OUTLINED_FUNCTION_52_12();
        v48 = lpta_loadp_setscan_r(v46, v47);
        v33 = v20;
        if (!v48)
        {
          v49 = test_string_s();
          v33 = v20;
          if (!v49)
          {
            goto LABEL_33;
          }
        }

        goto LABEL_24;
      case 15:
LABEL_33:
        v50 = OUTLINED_FUNCTION_36_15();
        savescptr(v50, v51, v52);
LABEL_34:
        OUTLINED_FUNCTION_42_13();
        convert_fren_hundreds();
        break;
      case 16:
        goto LABEL_35;
      default:
        goto LABEL_3;
    }

    break;
  }

LABEL_35:
  *(v58 + 8) = v65;
  vretproc(v2);
LABEL_4:
  v13 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_73_11();
}

uint64_t convert_fren_hundreds()
{
  OUTLINED_FUNCTION_5_34();
  v157 = *MEMORY[0x277D85DE8];
  v146 = 0;
  v147 = 0;
  OUTLINED_FUNCTION_11_33(v3, v4, v5, v6, v7, v8, v9, v10, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118, v121, v124, v127, v130, v133, v136, v139, v142, v143, v144, v145);
  OUTLINED_FUNCTION_35_15();
  v11 = setjmp(v2);
  if (!v11 && !OUTLINED_FUNCTION_84_9(v11, v12, v13, v14, v15, v16, v17, v18, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v119, v122, v125, v128, v131, v134, v137, v140, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156))
  {
    v21 = OUTLINED_FUNCTION_7_34();
    get_parm(v21, v22, v23, -6);
    v24 = OUTLINED_FUNCTION_29_21();
    OUTLINED_FUNCTION_72_11(v24, v25);
    v26 = OUTLINED_FUNCTION_49_13();
    push_ptr_init(v26, v27);
    v28 = OUTLINED_FUNCTION_48_13();
    push_ptr_init(v28, v29);
    fence_35(v0);
    v30 = OUTLINED_FUNCTION_31_19();
    if (!lpta_loadp_setscan_r(v30, v31))
    {
      OUTLINED_FUNCTION_3_36();
      if (!test_string_s())
      {
        goto LABEL_26;
      }
    }

    v32 = OUTLINED_FUNCTION_22_24();
    if (lpta_loadp_setscan_r(v32, v33) || (OUTLINED_FUNCTION_10_33(), test_string_s()))
    {
      v34 = OUTLINED_FUNCTION_22_24();
      if (!lpta_loadp_setscan_r(v34, v35))
      {
        OUTLINED_FUNCTION_0_38();
        if (!test_string_s())
        {
          OUTLINED_FUNCTION_58_11();
          v61 = OUTLINED_FUNCTION_30_20();
          savescptr(v61, v62, v63);
          OUTLINED_FUNCTION_27_22();
          goto LABEL_22;
        }
      }

      v36 = OUTLINED_FUNCTION_22_24();
      if (!lpta_loadp_setscan_r(v36, v37) && !advance_tok(v0))
      {
        savescptr(v0, 10, &v142);
        v38 = OUTLINED_FUNCTION_31_19();
        if (lpta_loadp_setscan_l(v38, v39) || (OUTLINED_FUNCTION_66_11(), v40 = test_string_s(), v40))
        {
          OUTLINED_FUNCTION_39_14();
          v48 = convert_fren_single_digit();
          *(v0 + 168) = 1;
          OUTLINED_FUNCTION_25_24(v48, v49, v50, v51, v52, v53, v54, v55, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117, v120, v123, v126, v129, v132, v135, v138, v141, v142, v143);
          v56 = OUTLINED_FUNCTION_23_24();
        }

        else
        {
          *(v0 + 168) = 1;
          OUTLINED_FUNCTION_25_24(v40, v41, v42, v43, v44, v45, v46, v47, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117, v120, v123, v126, v129, v132, v135, v138, v141, v142, v143);
          v56 = OUTLINED_FUNCTION_23_24();
        }

        insert_l(v56);
      }

      v57 = OUTLINED_FUNCTION_22_24();
      if (!lpta_loadp_setscan_r(v57, v58))
      {
        OUTLINED_FUNCTION_10_33();
        if (!test_string_s())
        {
          goto LABEL_26;
        }
      }

      v59 = OUTLINED_FUNCTION_22_24();
      if (lpta_loadp_setscan_r(v59, v60) || (OUTLINED_FUNCTION_0_38(), test_string_s()))
      {
        OUTLINED_FUNCTION_71_11();
LABEL_22:
        convert_fren_double();
LABEL_26:
        OUTLINED_FUNCTION_81_10(v145);
        goto LABEL_4;
      }
    }

    else
    {
      OUTLINED_FUNCTION_50_13();
    }

    v64 = OUTLINED_FUNCTION_30_20();
    savescptr(v64, v65, v66);
    OUTLINED_FUNCTION_27_22();
    convert_fren_single_digit();
    goto LABEL_26;
  }

  v1 = 94;
LABEL_4:
  vretproc(v0);
  v19 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t convert_fren_millions()
{
  OUTLINED_FUNCTION_5_34();
  v130 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_11_33(v2, v3, v4, v5, v6, v7, v8, v9, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v126, v128, v129);
  OUTLINED_FUNCTION_35_15();
  if (setjmp(v1) || (OUTLINED_FUNCTION_33_18(), OUTLINED_FUNCTION_88_8(v10, v11, v12, v13, v14)))
  {
LABEL_3:
    vretproc(v0);
    result = 94;
    goto LABEL_4;
  }

  v17 = OUTLINED_FUNCTION_9_33();
  get_parm(v17, v18, v19, -6);
  v20 = OUTLINED_FUNCTION_27_22();
  OUTLINED_FUNCTION_72_11(v20, v21);
  v22 = OUTLINED_FUNCTION_48_13();
  push_ptr_init(v22, v23);
  fence_35(v0);
  OUTLINED_FUNCTION_89_8();
  v24 = OUTLINED_FUNCTION_27_22();
  if (lpta_loadp_setscan_l(v24, v25) || advance_tok(v0) || advance_tok(v0) || advance_tok(v0))
  {
    v26 = 0;
  }

  else
  {
    v27 = OUTLINED_FUNCTION_13_32();
    bspush_ca_scan(v27, v28);
    OUTLINED_FUNCTION_0_38();
    v29 = test_string_s();
    v30 = 0;
    v31 = 0;
    if (v29)
    {
      goto LABEL_17;
    }

LABEL_11:
    v32 = v30;
    if (advance_tok(v0) || advance_tok(v0) || advance_tok(v0))
    {
LABEL_16:
      v31 = v32;
      goto LABEL_17;
    }

    v33 = OUTLINED_FUNCTION_21_25();
    bspush_ca_scan(v33, v34);
    OUTLINED_FUNCTION_0_38();
    v35 = test_string_s();
    v36 = v32;
    v31 = v32;
    if (v35)
    {
      goto LABEL_17;
    }

LABEL_21:
    v26 = v36;
    OUTLINED_FUNCTION_69_11();
    v43 = OUTLINED_FUNCTION_53_12();
    savescptr(v43, v44, v45);
  }

  while (2)
  {
    if (*(v0 + 3094) == 9)
    {
      OUTLINED_FUNCTION_24_24();
      convert_fren_hundreds();
    }

    else
    {
      v46 = *(v0 + 3094);
LABEL_25:
      if (v46 == 8)
      {
        OUTLINED_FUNCTION_24_24();
        convert_fren_double();
      }

      else
      {
        v41 = v26;
LABEL_28:
        v26 = v41;
        OUTLINED_FUNCTION_24_24();
        convert_fren_single_digit();
      }
    }

    v42 = v26;
LABEL_30:
    v32 = v42;
    v47 = OUTLINED_FUNCTION_16_31();
    starttest(v47, v48);
    OUTLINED_FUNCTION_21_25();
    bspush_ca_boa();
    v49 = OUTLINED_FUNCTION_22_24();
    if (lpta_loadp_setscan_r(v49, v50))
    {
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_3_36();
    if (test_string_s())
    {
      v31 = v32;
    }

    else
    {
      v31 = 1;
    }

LABEL_17:
    v37 = *(v0 + 104);
    if (v37)
    {
      *(v0 + 104) = 0;
      v38 = v37;
      v39 = v31;
    }

    else
    {
      v38 = vback(v0, v31);
      v39 = 0;
    }

    v40 = v38 - 1;
    v30 = v39;
    v36 = v39;
    v26 = v39;
    v41 = v39;
    v42 = v39;
    switch(v40)
    {
      case 0:
        continue;
      case 1:
        goto LABEL_11;
      case 2:
        goto LABEL_21;
      case 3:
        v46 = *(v0 + 3094);
        v26 = v39;
        goto LABEL_25;
      case 4:
      case 5:
      case 7:
        goto LABEL_30;
      case 6:
        goto LABEL_28;
      case 8:
        goto LABEL_39;
      case 9:
        bspop_boa(v0);
        v51 = OUTLINED_FUNCTION_17_31();
        if (lpta_loadp_setscan_l(v51, v52))
        {
          goto LABEL_37;
        }

        OUTLINED_FUNCTION_14_32();
        v53 = test_string_s();
        if (v53)
        {
          goto LABEL_37;
        }

        *(v0 + 168) = v26;
        OUTLINED_FUNCTION_47_13(v53, v54, v55, v56, v57, v58, v59, v60, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124);
        v69 = OUTLINED_FUNCTION_23_24();
        goto LABEL_38;
      case 10:
LABEL_37:
        OUTLINED_FUNCTION_65_11();
        OUTLINED_FUNCTION_47_13(v61, v62, v63, v64, v65, v66, v67, v68, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124);
        v69 = OUTLINED_FUNCTION_23_24();
LABEL_38:
        insert_l(v69);
LABEL_39:
        v70 = OUTLINED_FUNCTION_17_31();
        if (!lpta_loadp_setscan_r(v70, v71))
        {
          OUTLINED_FUNCTION_0_38();
          if (!test_string_s())
          {
            goto LABEL_41;
          }
        }

        goto LABEL_42;
      case 11:
        goto LABEL_42;
      case 12:
LABEL_41:
        OUTLINED_FUNCTION_59_11();
        v72 = OUTLINED_FUNCTION_53_12();
        savescptr(v72, v73, v74);
LABEL_42:
        *(v0 + 3094) = 6;
        OUTLINED_FUNCTION_39_14();
        convert_fren_thousands();
        break;
      case 13:
        goto LABEL_43;
      default:
        goto LABEL_3;
    }

    break;
  }

LABEL_43:
  OUTLINED_FUNCTION_82_9(v127);
  result = 0;
LABEL_4:
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t convert_fren_billions()
{
  OUTLINED_FUNCTION_5_34();
  v125 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_11_33(v2, v3, v4, v5, v6, v7, v8, v9, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v122, v123, v124);
  OUTLINED_FUNCTION_35_15();
  if (setjmp(v1) || (OUTLINED_FUNCTION_33_18(), OUTLINED_FUNCTION_88_8(v10, v11, v12, v13, v14)))
  {
LABEL_3:
    vretproc(v0);
    result = 94;
    goto LABEL_4;
  }

  v17 = OUTLINED_FUNCTION_9_33();
  get_parm(v17, v18, v19, -6);
  v20 = OUTLINED_FUNCTION_27_22();
  OUTLINED_FUNCTION_72_11(v20, v21);
  v22 = OUTLINED_FUNCTION_48_13();
  push_ptr_init(v22, v23);
  fence_35(v0);
  OUTLINED_FUNCTION_89_8();
  v24 = OUTLINED_FUNCTION_27_22();
  if (!lpta_loadp_setscan_l(v24, v25) && !advance_tok(v0) && !advance_tok(v0) && !advance_tok(v0))
  {
    v27 = OUTLINED_FUNCTION_13_32();
    bspush_ca_scan(v27, v28);
    OUTLINED_FUNCTION_0_38();
    if (!test_string_s())
    {
LABEL_12:
      if (!advance_tok(v0) && !advance_tok(v0) && !advance_tok(v0))
      {
        v29 = OUTLINED_FUNCTION_21_25();
        bspush_ca_scan(v29, v30);
        OUTLINED_FUNCTION_0_38();
        if (!test_string_s())
        {
LABEL_16:
          if (!advance_tok(v0) && !advance_tok(v0) && !advance_tok(v0))
          {
            v31 = OUTLINED_FUNCTION_21_25();
            bspush_ca_scan(v31, v32);
            OUTLINED_FUNCTION_0_38();
            if (!test_string_s())
            {
LABEL_24:
              OUTLINED_FUNCTION_50_13();
              v35 = OUTLINED_FUNCTION_53_12();
              savescptr(v35, v36, v37);
              goto LABEL_9;
            }
          }
        }
      }
    }

    v33 = *(v0 + 104);
    if (v33)
    {
      v34 = OUTLINED_FUNCTION_40_14(v33);
    }

    else
    {
      v34 = OUTLINED_FUNCTION_85_9();
    }

    switch(v34)
    {
      case 1:
        break;
      case 2:
        goto LABEL_12;
      case 3:
        goto LABEL_16;
      case 4:
        goto LABEL_24;
      case 5:
        v26 = *(v0 + 3094);
        goto LABEL_26;
      case 6:
      case 7:
      case 9:
        goto LABEL_32;
      case 8:
        goto LABEL_28;
      case 10:
        goto LABEL_31;
      case 11:
        goto LABEL_34;
      case 12:
        goto LABEL_36;
      case 13:
        goto LABEL_39;
      case 14:
        goto LABEL_38;
      case 15:
        goto LABEL_40;
      default:
        goto LABEL_3;
    }
  }

LABEL_9:
  v26 = *(v0 + 3094);
  if (v26 == 12)
  {
    OUTLINED_FUNCTION_24_24();
    convert_fren_hundreds();
  }

  else
  {
LABEL_26:
    if (v26 == 11)
    {
      OUTLINED_FUNCTION_24_24();
      convert_fren_double();
    }

    else
    {
LABEL_28:
      v38 = OUTLINED_FUNCTION_22_24();
      if (lpta_loadp_setscan_r(v38, v39) || (OUTLINED_FUNCTION_0_38(), test_string_s()) || (v40 = OUTLINED_FUNCTION_24_24(), lpta_rpta_loadp(v40, v41, v42), v43 = OUTLINED_FUNCTION_2_36(), insert_2pt_s(v43, v44, 2, v45, v46)))
      {
LABEL_31:
        OUTLINED_FUNCTION_24_24();
        convert_fren_single_digit();
      }
    }
  }

LABEL_32:
  v47 = OUTLINED_FUNCTION_17_31();
  if (lpta_loadp_setscan_l(v47, v48) || (OUTLINED_FUNCTION_14_32(), v49 = test_string_s(), v49))
  {
LABEL_34:
    OUTLINED_FUNCTION_65_11();
    OUTLINED_FUNCTION_47_13(v57, v58, v59, v60, v61, v62, v63, v64, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120);
    v65 = OUTLINED_FUNCTION_23_24();
  }

  else
  {
    *(v0 + 168) = &v121;
    OUTLINED_FUNCTION_47_13(v49, v50, v51, v52, v53, v54, v55, v56, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120);
    v65 = OUTLINED_FUNCTION_23_24();
  }

  insert_l(v65);
LABEL_36:
  v66 = OUTLINED_FUNCTION_17_31();
  if (!lpta_loadp_setscan_r(v66, v67))
  {
    OUTLINED_FUNCTION_0_38();
    if (!test_string_s())
    {
LABEL_38:
      v68 = OUTLINED_FUNCTION_53_12();
      savescptr(v68, v69, v70);
    }
  }

LABEL_39:
  *(v0 + 3094) = 9;
  OUTLINED_FUNCTION_39_14();
  convert_fren_millions();
LABEL_40:
  OUTLINED_FUNCTION_82_9(v122);
  result = 0;
LABEL_4:
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void convert_fren_teens()
{
  OUTLINED_FUNCTION_74_11();
  OUTLINED_FUNCTION_5_34();
  v109 = *MEMORY[0x277D85DE8];
  v103 = 0;
  v104 = 0;
  v101 = 0;
  v102 = 0;
  OUTLINED_FUNCTION_38_15();
  bzero(v100, v1);
  OUTLINED_FUNCTION_37_15();
  bzero(v108, v2);
  if (setjmp(v108) || ventproc(v0, v100, v107, v106, v105, v108))
  {
    goto LABEL_3;
  }

  v4 = OUTLINED_FUNCTION_30_20();
  get_parm(v4, v5, v6, -6);
  v7 = OUTLINED_FUNCTION_27_22();
  OUTLINED_FUNCTION_72_11(v7, v8);
  fence_35(v0);
  v9 = OUTLINED_FUNCTION_6_34();
  if (lpta_loadp_setscan_l(v9, v10) || (OUTLINED_FUNCTION_0_38(), test_string_s()) || (v11 = OUTLINED_FUNCTION_91_8(), lpta_rpta_loadp(v11, v12, v13), v14 = OUTLINED_FUNCTION_2_36(), insert_2pt_s(v14, v15, 3, v16, v17)))
  {
    while (2)
    {
      v18 = OUTLINED_FUNCTION_6_34();
      if (lpta_loadp_setscan_l(v18, v19) || (OUTLINED_FUNCTION_0_38(), test_string_s()) || (v20 = OUTLINED_FUNCTION_41_13(), lpta_rpta_loadp(v20, v21, &v101), v22 = OUTLINED_FUNCTION_2_36(), insert_2pt_s(v22, v23, 4, &unk_28064B55E, v24)))
      {
LABEL_10:
        v25 = OUTLINED_FUNCTION_6_34();
        if (lpta_loadp_setscan_l(v25, v26) || (OUTLINED_FUNCTION_0_38(), test_string_s()) || (v27 = OUTLINED_FUNCTION_41_13(), lpta_rpta_loadp(v27, v28, &v101), v29 = OUTLINED_FUNCTION_1_37(), insert_2pt_s(v29, v30, v31, &unk_28064B598, v32)))
        {
LABEL_13:
          v33 = OUTLINED_FUNCTION_6_34();
          if (lpta_loadp_setscan_l(v33, v34) || (OUTLINED_FUNCTION_0_38(), test_string_s()) || (v35 = OUTLINED_FUNCTION_41_13(), lpta_rpta_loadp(v35, v36, &v101), v37 = OUTLINED_FUNCTION_2_36(), insert_2pt_s(v37, v38, 6, &unk_28064B5E7, v39)))
          {
LABEL_16:
            v40 = OUTLINED_FUNCTION_6_34();
            if (lpta_loadp_setscan_l(v40, v41) || (OUTLINED_FUNCTION_0_38(), test_string_s()) || (v42 = OUTLINED_FUNCTION_41_13(), lpta_rpta_loadp(v42, v43, &v101), v44 = OUTLINED_FUNCTION_2_36(), insert_2pt_s(v44, v45, 8, &unk_28064B65A, v46)))
            {
LABEL_19:
              v47 = OUTLINED_FUNCTION_6_34();
              if (lpta_loadp_setscan_l(v47, v48) || (OUTLINED_FUNCTION_0_38(), test_string_s()) || (v49 = OUTLINED_FUNCTION_41_13(), lpta_rpta_loadp(v49, v50, &v101), v51 = OUTLINED_FUNCTION_2_36(), insert_2pt_s(v51, v52, 6, &unk_28064B5ED, v53)))
              {
LABEL_22:
                v54 = OUTLINED_FUNCTION_6_34();
                if (lpta_loadp_setscan_l(v54, v55) || (OUTLINED_FUNCTION_0_38(), test_string_s()) || (v56 = OUTLINED_FUNCTION_41_13(), lpta_rpta_loadp(v56, v57, &v101), v58 = OUTLINED_FUNCTION_1_37(), insert_2pt_s(v58, v59, v60, &unk_28064B59D, v61)))
                {
LABEL_25:
                  v62 = OUTLINED_FUNCTION_6_34();
                  if (lpta_loadp_setscan_l(v62, v63) || (OUTLINED_FUNCTION_0_38(), test_string_s()) || (v64 = OUTLINED_FUNCTION_41_13(), lpta_rpta_loadp(v64, v65, &v101), v66 = OUTLINED_FUNCTION_2_36(), insert_2pt_s(v66, v67, 8, &unk_28064B662, v68)))
                  {
LABEL_28:
                    v69 = OUTLINED_FUNCTION_6_34();
                    if (lpta_loadp_setscan_l(v69, v70) || (OUTLINED_FUNCTION_0_38(), test_string_s()) || (v71 = OUTLINED_FUNCTION_41_13(), lpta_rpta_loadp(v71, v72, &v101), v73 = OUTLINED_FUNCTION_2_36(), insert_2pt_s(v73, v74, 8, &unk_28064B66A, v75)))
                    {
LABEL_31:
                      v76 = OUTLINED_FUNCTION_6_34();
                      if (!lpta_loadp_setscan_l(v76, v77))
                      {
                        OUTLINED_FUNCTION_0_38();
                        if (!test_string_s())
                        {
                          v78 = OUTLINED_FUNCTION_41_13();
                          lpta_rpta_loadp(v78, v79, &v101);
                          v80 = OUTLINED_FUNCTION_2_36();
                          if (!insert_2pt_s(v80, v81, 7, &unk_28064B624, v82))
                          {
                            v83 = OUTLINED_FUNCTION_52_12();
                            starttest(v83, v84);
                            v85 = OUTLINED_FUNCTION_6_34();
                            if (!lpta_loadp_setscan_r(v85, v86))
                            {
                              v87 = OUTLINED_FUNCTION_20_26();
                              if (testFldeq(v87, v88, 4, 1) || advance_tok(v0))
                              {
                                v89 = v0[13];
                                if (v89)
                                {
                                  v90 = OUTLINED_FUNCTION_40_14(v89);
                                }

                                else
                                {
                                  v90 = OUTLINED_FUNCTION_85_9();
                                }

                                switch(v90)
                                {
                                  case 1:
                                    continue;
                                  case 2:
                                  case 12:
                                    goto LABEL_42;
                                  case 3:
                                    goto LABEL_10;
                                  case 4:
                                    goto LABEL_13;
                                  case 5:
                                    goto LABEL_16;
                                  case 6:
                                    goto LABEL_19;
                                  case 7:
                                    goto LABEL_22;
                                  case 8:
                                    goto LABEL_25;
                                  case 9:
                                    goto LABEL_28;
                                  case 10:
                                    goto LABEL_31;
                                  case 11:
                                    goto LABEL_41;
                                  case 13:
                                    goto LABEL_43;
                                  default:
                                    goto LABEL_3;
                                }

                                goto LABEL_3;
                              }
                            }

LABEL_41:
                            OUTLINED_FUNCTION_65_11();
                            v0[18] = v102;
                            v0[16] = 0;
                            v91 = OUTLINED_FUNCTION_23_24();
                            insert_l(v91);
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

      break;
    }
  }

LABEL_42:
  v92 = OUTLINED_FUNCTION_55_12();
  insert_space(v92, v93, v94, v95, v96, v97, v98, v99);
LABEL_43:
  OUTLINED_FUNCTION_81_10(v102);
LABEL_3:
  vretproc(v0);
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_95_7();
  OUTLINED_FUNCTION_73_11();
}

void convert_fren_roman_num()
{
  OUTLINED_FUNCTION_74_11();
  OUTLINED_FUNCTION_5_34();
  v80 = *MEMORY[0x277D85DE8];
  v67 = 0;
  v68 = 0;
  OUTLINED_FUNCTION_34_16();
  OUTLINED_FUNCTION_38_15();
  bzero(v62, v2);
  OUTLINED_FUNCTION_37_15();
  bzero(v79, v3);
  v4 = setjmp(v79);
  if (v4)
  {
    goto LABEL_4;
  }

  if (OUTLINED_FUNCTION_64_11(v4, v62, v5, v6, v7, v8, v9, v10, v59, v60, v61, v62[0], v62[1], v62[2], v62[3], v62[4], v62[5], v62[6], v62[7], v62[8], v62[9], v62[10], v62[11], v62[12], v62[13], v62[14], v62[15], v62[16], v62[17], v62[18], v62[19], v62[20], v62[21], v62[22], v63[0], v63[1], v64[0], v64[1], v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79[0]))
  {
    goto LABEL_4;
  }

  v11 = OUTLINED_FUNCTION_7_34();
  get_parm(v11, v12, v13, -6);
  OUTLINED_FUNCTION_43_13(v14, &v65);
  v15 = OUTLINED_FUNCTION_46_13();
  push_ptr_init(v15, v16);
  v17 = OUTLINED_FUNCTION_55_12();
  push_ptr_init(v17, v18);
  OUTLINED_FUNCTION_32_18();
  v19 = OUTLINED_FUNCTION_31_19();
  if (lpta_loadp_setscan_r(v19, v20))
  {
LABEL_4:
    vretproc(v0);
  }

  else
  {
    while (2)
    {
      while (1)
      {
        v22 = OUTLINED_FUNCTION_4_35();
        if (testFldeq(v22, v23, v24, 2) || advance_tok(v0))
        {
          break;
        }

        v57 = OUTLINED_FUNCTION_13_32();
        bspush_ca_scan(v57, v58);
      }

LABEL_8:
      v25 = *(v0 + 104);
      if (v25)
      {
        v26 = OUTLINED_FUNCTION_40_14(v25);
      }

      else
      {
        v26 = OUTLINED_FUNCTION_85_9();
      }

      switch(v26)
      {
        case 2:
          v27 = OUTLINED_FUNCTION_13_32();
          savescptr(v27, v28, v64);
          goto LABEL_13;
        case 3:
          continue;
        case 4:
          v34 = OUTLINED_FUNCTION_21_25();
          savescptr(v34, v35, v63);
          *(v0 + 136) = v1;
          v36 = OUTLINED_FUNCTION_8_34();
          if (test_ptr(v36))
          {
            goto LABEL_8;
          }

          goto LABEL_18;
        case 5:
LABEL_13:
          while (1)
          {
            v29 = OUTLINED_FUNCTION_4_35();
            if (testFldeq(v29, v30, v31, v1) || advance_tok(v0))
            {
              break;
            }

            v32 = OUTLINED_FUNCTION_61_11();
            bspush_ca_scan(v32, v33);
          }

          goto LABEL_8;
        case 6:
LABEL_18:
          v37 = OUTLINED_FUNCTION_52_12();
          if (!lpta_loadp_setscan_l(v37, v38))
          {
            OUTLINED_FUNCTION_4_35();
            if (!test_string_s())
            {
              goto LABEL_20;
            }
          }

          goto LABEL_21;
        case 7:
          goto LABEL_21;
        case 8:
LABEL_20:
          v39 = OUTLINED_FUNCTION_97_6();
          savescptr(v39, v40, v63);
LABEL_21:
          v41 = OUTLINED_FUNCTION_41_13();
          starttest(v41, v42);
          v43 = OUTLINED_FUNCTION_80_10();
          if (lpta_loadp_setscan_r(v43, v44))
          {
            goto LABEL_4;
          }

          v45 = OUTLINED_FUNCTION_87_8();
          bspush_ca_scan(v45, v46);
          if (!advance_tok(v0))
          {
LABEL_25:
            while (!advance_tok(v0))
            {
              v47 = OUTLINED_FUNCTION_31_19();
              bspush_ca_scan(v47, v48);
            }
          }

          goto LABEL_8;
        case 10:
          v49 = OUTLINED_FUNCTION_96_6();
          bspush_ca_scan(v49, v50);
          OUTLINED_FUNCTION_4_35();
          goto LABEL_28;
        case 11:
        case 13:
          goto LABEL_29;
        case 12:
          goto LABEL_25;
        case 14:
          OUTLINED_FUNCTION_4_35();
LABEL_28:
          if (test_string_s())
          {
            goto LABEL_8;
          }

LABEL_29:
          *(v0 + 136) = v1;
          v51 = OUTLINED_FUNCTION_8_34();
          if (test_ptr(v51))
          {
            goto LABEL_8;
          }

          v52 = OUTLINED_FUNCTION_99_6();
          bspush_ca_scan(v52, v53);
          OUTLINED_FUNCTION_28_21();
          if (test_string_s())
          {
            goto LABEL_8;
          }

LABEL_31:
          OUTLINED_FUNCTION_4_35();
          if (test_string_s())
          {
            goto LABEL_8;
          }

          *(v0 + 136) = v1;
          v54 = OUTLINED_FUNCTION_8_34();
          if (test_ptr(v54))
          {
            goto LABEL_8;
          }

          v55 = OUTLINED_FUNCTION_80_10();
          if (convert_roman_nums(v55, v56))
          {
            goto LABEL_8;
          }

          OUTLINED_FUNCTION_36_15();
          convert_digits();
LABEL_36:
          if (*(v0 + 3042) != *(v0 + 3018))
          {
            OUTLINED_FUNCTION_42_13();
            convert_fren_ordinal();
          }

LABEL_38:
          OUTLINED_FUNCTION_82_9(v66);
          break;
        case 15:
          goto LABEL_31;
        case 16:
          goto LABEL_36;
        case 17:
        case 18:
          goto LABEL_38;
        default:
          goto LABEL_4;
      }

      break;
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_73_11();
}

void assign_fren_gender_to_number()
{
  OUTLINED_FUNCTION_74_11();
  v1 = v0;
  v67 = *MEMORY[0x277D85DE8];
  v54 = 0;
  v55 = 0;
  OUTLINED_FUNCTION_34_16();
  OUTLINED_FUNCTION_38_15();
  bzero(v50, v2);
  OUTLINED_FUNCTION_37_15();
  bzero(v66, v3);
  v4 = setjmp(v66);
  if (!v4)
  {
    v11 = OUTLINED_FUNCTION_64_11(v4, v50, v5, v6, v7, v8, v9, v10, v47, v48, v49, v50[0], v50[1], v50[2], v50[3], v50[4], v50[5], v50[6], v50[7], v50[8], v50[9], v50[10], v50[11], v50[12], v50[13], v50[14], v50[15], v50[16], v50[17], v50[18], v50[19], v50[20], v50[21], v50[22], v51[0], v51[1], v52[0], v52[1], v53[0], v53[1], v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66[0]);
    if (!v11)
    {
      OUTLINED_FUNCTION_43_13(v11, &v54);
      v13 = OUTLINED_FUNCTION_70_11();
      push_ptr_init(v13, v14);
      v15 = OUTLINED_FUNCTION_46_13();
      push_ptr_init(v15, v16);
      v17 = OUTLINED_FUNCTION_55_12();
      push_ptr_init(v17, v18);
      fence_35(v1);
      *(v1 + 3206) = 0;
      if (*(v1 + 3026) == *(v1 + 3018))
      {
LABEL_22:
        *(v1 + 3206) = *(v1 + 3214);
      }

      else
      {
        while (2)
        {
          v19 = OUTLINED_FUNCTION_96_6();
          starttest(v19, v20);
          if (!lpta_loadp_setscan_r(v1, &v54))
          {
            bspush_boa(v1);
            do
            {
LABEL_7:
              v21 = OUTLINED_FUNCTION_99_6();
              bspush_ca_scan(v21, v22);
              OUTLINED_FUNCTION_0_38();
            }

            while (!test_string_s());
LABEL_8:
            v23 = *(v1 + 104);
            if (v23)
            {
              v24 = OUTLINED_FUNCTION_40_14(v23);
            }

            else
            {
              v24 = OUTLINED_FUNCTION_85_9();
            }

            switch(v24)
            {
              case 1:
                continue;
              case 3:
                bspush_nboa(v1);
                goto LABEL_13;
              case 4:
                goto LABEL_7;
              case 5:
LABEL_13:
                v25 = OUTLINED_FUNCTION_52_12();
                savescptr(v25, v26, v53);
                goto LABEL_14;
              case 6:
                v31 = OUTLINED_FUNCTION_21_25();
                savescptr(v31, v32, v52);
                OUTLINED_FUNCTION_41_13();
                if (end_of_word())
                {
                  goto LABEL_8;
                }

                v33 = OUTLINED_FUNCTION_80_10();
                lpta_rpta_loadp(v33, v34, v52);
                v35 = OUTLINED_FUNCTION_20_26();
                if (setd_lookup(v35, v36, 60))
                {
                  goto LABEL_19;
                }

                goto LABEL_22;
              case 7:
LABEL_14:
                while (1)
                {
                  v27 = OUTLINED_FUNCTION_20_26();
                  if (testFldeq(v27, v28, 3, 1) || advance_tok(v1))
                  {
                    break;
                  }

                  v29 = OUTLINED_FUNCTION_97_6();
                  bspush_ca_scan(v29, v30);
                }

                goto LABEL_8;
              case 8:
LABEL_19:
                v37 = OUTLINED_FUNCTION_27_22();
                starttest(v37, v38);
                v39 = OUTLINED_FUNCTION_41_13();
                if (!lpta_loadp_setscan_l(v39, v40))
                {
                  OUTLINED_FUNCTION_0_38();
                  if (!test_string_s())
                  {
                    goto LABEL_21;
                  }
                }

                goto LABEL_3;
              case 10:
LABEL_21:
                v41 = OUTLINED_FUNCTION_61_11();
                savescptr(v41, v42, v51);
                v43 = OUTLINED_FUNCTION_80_10();
                lpta_rpta_loadp(v43, v44, v51);
                v45 = OUTLINED_FUNCTION_20_26();
                if (!setd_lookup(v45, v46, 60))
                {
                  goto LABEL_22;
                }

                goto LABEL_8;
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
  vretproc(v1);
  v12 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_73_11();
}

uint64_t OUTLINED_FUNCTION_8_34()
{
  *(v1 + 112) = v0;
  *(v1 + 128) = 0;
  return v1;
}

void OUTLINED_FUNCTION_11_33(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  a36 = 0;
  a37 = 0;
  a34 = 0;
  a35 = 0;
  a32 = 0;
  a33 = 0;

  bzero(&a9, 0xB8uLL);
}

double OUTLINED_FUNCTION_18_30@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{

  *&result = savescptr(v25, a1, &a25).n128_u64[0];
  return result;
}

void OUTLINED_FUNCTION_19_26(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  *(v35 + 168) = 1;
  *(v35 + 144) = a35;
  *(v35 + 128) = 0;
}

void OUTLINED_FUNCTION_26_24(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  a32 = 0;
  a33 = 0;

  bzero(&a9, 0xB8uLL);
}

void OUTLINED_FUNCTION_32_18()
{
  fence_35(v0);

  starttest(v0, 1);
}

void OUTLINED_FUNCTION_35_15()
{

  bzero((v0 - 248), 0xC0uLL);
}

void OUTLINED_FUNCTION_43_13(uint64_t a1, uint64_t a2)
{

  get_parm(v2, a2, v3, -6);
}

uint64_t OUTLINED_FUNCTION_60_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41, char a42, int a43, __int16 a44, char a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, char a51)
{

  return ventproc(v51, a2, &a49, &a45, &a42, &a51);
}

double OUTLINED_FUNCTION_62_11@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{

  *&result = savescptr(v33, a1, &a33).n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_63_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, char a37, int a38, __int16 a39, char a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, char a46)
{

  return ventproc(v46, a2, &a44, &a40, &a37, &a46);
}

uint64_t OUTLINED_FUNCTION_64_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, int a43, char a44, int a45, __int16 a46, char a47, int a48, __int16 a49, char a50, char a51, uint64_t a52, char a53)
{

  return ventproc(v53, a2, &a51, &a47, &a44, &a53);
}

void OUTLINED_FUNCTION_72_11(uint64_t a1, uint64_t a2)
{

  get_parm(a1, a2, v2, -6);
}

void OUTLINED_FUNCTION_77_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  v36 = *(v35 + 3102);
  *(v35 + 168) = 1;
  *(v35 + 144) = a35;
  *(v35 + 128) = 0;
}

BOOL OUTLINED_FUNCTION_82_9@<W0>(uint64_t a1@<X8>)
{
  *(v2 + 8) = a1;

  return vretproc(v1);
}

uint64_t OUTLINED_FUNCTION_84_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, int a40, char a41, int a42, __int16 a43, char a44, int a45, __int16 a46, char a47, char a48)
{

  return ventproc(v48, &a9, &a48, &a44, &a41, v49 - 248);
}

uint64_t OUTLINED_FUNCTION_85_9()
{

  return vback(v0, 0);
}

uint64_t OUTLINED_FUNCTION_88_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return ventproc(v5, a2, a3, a4, a5, v6 - 248);
}

void OUTLINED_FUNCTION_89_8()
{

  starttest(v0, 1);
}

uint64_t OUTLINED_FUNCTION_90_8()
{

  return rpta_loadpn(v0, v0 + 3536);
}

void *fence_36(uint64_t a1, int a2, uint64_t a3)
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

uint64_t pre_syll_phonology(uint64_t a1)
{
  OUTLINED_FUNCTION_14_33(*MEMORY[0x277D85DE8], v29);
  OUTLINED_FUNCTION_8_35(v3, v4, v5, v6, v7, v8, v9, v10, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84);
  v11 = setjmp(v1);
  if (!v11 && !OUTLINED_FUNCTION_1_38(v11, v12, v13, v14, v15, v16, v17, v18, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, *v77, v77[4], *v79, *&v79[4], v79[6], v81, SWORD2(v81), SBYTE6(v81), SHIBYTE(v81), v83, v85))
  {
    fence_36(a1, 0, &null_str_13);
    if (liaison_rules(a1))
    {
      if (*(a1 + 4050) == 1)
      {
        goto LABEL_11;
      }

      particle_vow_elision();
    }

    schwa_deletion();
    delete_h_aspire();
    OUTLINED_FUNCTION_35_16();
    if (!v28)
    {
      goto LABEL_12;
    }

    assign_canfren_affricates(a1);
LABEL_11:
    canfren_phon_rules(a1, v21, v22, v23, v24, v25, v26, v27);
LABEL_12:
    vretproc(a1);
    result = 0;
    goto LABEL_4;
  }

  vretproc(a1);
  result = 94;
LABEL_4:
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t liaison_rules(void *a1)
{
  OUTLINED_FUNCTION_14_33(*MEMORY[0x277D85DE8], v33);
  OUTLINED_FUNCTION_8_35(v3, v4, v5, v6, v7, v8, v9, v10, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88);
  v11 = setjmp(v1);
  if (v11 || (v19 = OUTLINED_FUNCTION_1_38(v11, v12, v13, v14, v15, v16, v17, v18, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, *v81, v81[4], *v83, *&v83[4], v83[6], v85, SWORD2(v85), SBYTE6(v85), SHIBYTE(v85), v87, v89), v19))
  {
LABEL_3:
    vretproc(a1);
    result = 94;
  }

  else
  {
    OUTLINED_FUNCTION_46_14(v19, v20, &null_str_13);
    v23 = OUTLINED_FUNCTION_9_34();
    starttest(v23, v24);
    OUTLINED_FUNCTION_40_15();
    bspush_ca_boa();
    v25 = OUTLINED_FUNCTION_32_19();
    if (lpta_loadp_setscan_l(v25, v26))
    {
      v27 = 0;
    }

    else
    {
      v28 = OUTLINED_FUNCTION_22_25();
      v27 = !testFldeq(v28, v29, 17, 1) && !advance_tok(a1);
    }

    v30 = a1[13];
    if (v30)
    {
      v31 = OUTLINED_FUNCTION_28_22(v30);
    }

    else
    {
      v31 = vback(a1, v27);
    }

    switch(v31)
    {
      case 1:
        if (liaison_phone_context(a1))
        {
          goto LABEL_16;
        }

        liaison_gcat_context();
        if (v32)
        {
          goto LABEL_16;
        }

        denasalization(a1);
        break;
      case 2:
        bspop_boa(a1);
        goto LABEL_3;
      case 3:
LABEL_16:
        delete_liaison_con(a1);
        break;
      case 4:
      case 5:
        break;
      default:
        goto LABEL_3;
    }

    vretproc(a1);
    result = 0;
  }

  v22 = *MEMORY[0x277D85DE8];
  return result;
}

void particle_vow_elision()
{
  OUTLINED_FUNCTION_42_14();
  v1 = v0;
  v149 = *MEMORY[0x277D85DE8];
  memset(v144, 0, sizeof(v144));
  memset(v143, 0, 40);
  v142[0] = 0;
  v142[1] = 0;
  OUTLINED_FUNCTION_24_25();
  bzero(v141, v2);
  OUTLINED_FUNCTION_23_25();
  bzero(v148, v3);
  if (setjmp(v148) || ventproc(v1, v141, v147, v146, v145, v148))
  {
    goto LABEL_3;
  }

  *&v144[16] = 0;
  *&v144[24] = 0;
  *&v144[30] = 0;
  *v144 = -65534;
  memset(&v143[1], 0, 22);
  LODWORD(v143[0]) = -65534;
  v5 = OUTLINED_FUNCTION_54_13();
  v7 = push_ptr_init(v5, v6);
  v8 = 0;
  OUTLINED_FUNCTION_46_14(v7, v9, &null_str_13);
  v10 = OUTLINED_FUNCTION_9_34();
  starttest(v10, v11);
  v12 = OUTLINED_FUNCTION_2_37();
  if (lpta_loadp_setscan_r(v12, v13))
  {
LABEL_5:
    lpta_loadpn(v1, v1 + 1736);
    OUTLINED_FUNCTION_56_12();
    if (compare_ptas(v1))
    {
      v14 = v8;
    }

    else
    {
      v14 = v8;
      if (!testeq(v1))
      {
        goto LABEL_3;
      }
    }

LABEL_8:
    v15 = OUTLINED_FUNCTION_31_20();
    starttest(v15, v16);
    v17 = OUTLINED_FUNCTION_15_32();
    if (!lpta_loadp_setscan_r(v17, v18))
    {
      v42 = OUTLINED_FUNCTION_10_34();
      if (!npush_fld(v42, v43, 6))
      {
        v44 = OUTLINED_FUNCTION_44_14();
        npush_i(v44);
        if (!if_testle(v1, v45, v46, v47, v48, v49, v50, v51) && !advance_tok(v1))
        {
          goto LABEL_3;
        }
      }

      goto LABEL_29;
    }

    v19 = v14;
LABEL_10:
    v20 = OUTLINED_FUNCTION_9_34();
    starttest(v20, v21);
    v22 = OUTLINED_FUNCTION_6_35();
    if (lpta_loadp_setscan_r(v22, v23))
    {
LABEL_11:
      v24 = OUTLINED_FUNCTION_9_34();
      starttest(v24, v25);
      v26 = OUTLINED_FUNCTION_2_37();
      if (lpta_loadp_setscan_r(v26, v27))
      {
LABEL_12:
        v28 = OUTLINED_FUNCTION_9_34();
        starttest(v28, v29);
        v30 = OUTLINED_FUNCTION_15_32();
        if (!lpta_loadp_setscan_r(v30, v31))
        {
          v132 = OUTLINED_FUNCTION_9_34();
          bspush_ca_scan(v132, v133);
          OUTLINED_FUNCTION_7_35();
          v134 = test_string_s();
          v64 = v19;
          v14 = v19;
          if (!v134)
          {
LABEL_56:
            v14 = v64;
            OUTLINED_FUNCTION_11_34();
            if (!test_string_s())
            {
              *(v1 + 136) = v19;
              v135 = *(v1 + 1344);
              if (!OUTLINED_FUNCTION_30_21())
              {
                v136 = OUTLINED_FUNCTION_9_34();
                starttest_l(v136, v137);
                OUTLINED_FUNCTION_9_34();
                bspush_ca_boa();
                le_de_vow_elision();
                if (!v138)
                {
                  v14 = 1;
                }
              }
            }
          }

          goto LABEL_29;
        }

LABEL_13:
        v32 = OUTLINED_FUNCTION_9_34();
        starttest(v32, v33);
        v34 = OUTLINED_FUNCTION_2_37();
        if (lpta_loadp_setscan_r(v34, v35))
        {
          goto LABEL_3;
        }

        v36 = OUTLINED_FUNCTION_3_37();
        if (!testFldeq(v36, v37, v38, 25) && !advance_tok(v1))
        {
          v39 = OUTLINED_FUNCTION_9_34();
          starttest_l(v39, v40);
          OUTLINED_FUNCTION_9_34();
          bspush_ca_boa();
          v41 = ne_vow_elision(v1);
          goto LABEL_69;
        }
      }

      else
      {
        v56 = OUTLINED_FUNCTION_3_37();
        if (!testFldeq(v56, v57, v58, 13) && !advance_tok(v1))
        {
          v139 = OUTLINED_FUNCTION_9_34();
          starttest_l(v139, v140);
          OUTLINED_FUNCTION_9_34();
          bspush_ca_boa();
          v41 = ce_vow_elision(v1);
LABEL_69:
          if (v41)
          {
            v14 = v19;
          }

          else
          {
            v14 = 1;
          }

          goto LABEL_29;
        }
      }
    }

    else
    {
      v52 = OUTLINED_FUNCTION_10_34();
      if (!testFldeq(v52, v53, 4, 1))
      {
        v14 = v19;
        if (!advance_tok(v1))
        {
          goto LABEL_3;
        }

        goto LABEL_29;
      }
    }

    v14 = v19;
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_9_34();
  bspush_ca_scan_boa();
  v54 = OUTLINED_FUNCTION_10_34();
  v14 = !testFldeq(v54, v55, 4, 3) && !advance_tok(v1);
LABEL_29:
  v59 = v14;
  LOBYTE(v19) = 18;
  do
  {
LABEL_30:
    v60 = *(v1 + 104);
    if (v60)
    {
      v61 = OUTLINED_FUNCTION_28_22(v60);
      v63 = v62;
    }

    else
    {
      v61 = vback(v1, v59);
      v63 = 0;
    }

    if ((v61 - 1) > 0x15)
    {
      break;
    }

    OUTLINED_FUNCTION_59_12();
    v64 = v63;
    switch(v65)
    {
      case 1:
        bspop_boa(v1);
        goto LABEL_3;
      case 2:
        v14 = v63;
        goto LABEL_8;
      case 3:
        v19 = v63;
        goto LABEL_10;
      case 4:
        v19 = v63;
        goto LABEL_11;
      case 5:
        v19 = v63;
        goto LABEL_12;
      case 6:
      case 8:
      case 12:
      case 15:
        v66 = OUTLINED_FUNCTION_47_14();
        starttest(v66, v67);
        v68 = OUTLINED_FUNCTION_27_23();
        if (lpta_loadp_setscan_l(v68, v69))
        {
          goto LABEL_36;
        }

        goto LABEL_42;
      case 7:
      case 13:
      case 16:
        bspop_boa(v1);
        goto LABEL_3;
      case 9:
        v19 = v63;
        goto LABEL_13;
      case 10:
        OUTLINED_FUNCTION_7_35();
        v131 = test_string_s();
        v64 = v63;
        v59 = v63;
        if (!v131)
        {
          goto LABEL_56;
        }

        goto LABEL_30;
      case 11:
        goto LABEL_56;
      case 14:
        goto LABEL_3;
      case 17:
LABEL_36:
        v70 = OUTLINED_FUNCTION_27_23();
        if (!lpta_loadp_setscan_l(v70, v71) && !advance_tok(v1))
        {
          goto LABEL_38;
        }

        goto LABEL_39;
      case 18:
LABEL_42:
        v81 = OUTLINED_FUNCTION_45_14();
        savescptr(v81, v82, v142);
        v83 = advance_tok(v1);
        v59 = v63;
        if (!v83)
        {
          v84 = savetok(v1, v144);
          v59 = v63;
          if (!v84)
          {
            v85 = advance_tok(v1);
            v59 = v63;
            if (!v85)
            {
              v86 = OUTLINED_FUNCTION_37_16();
              v88 = lpta_loadp_setscan_r(v86, v87);
              v59 = v63;
              if (!v88)
              {
                v89 = advance_tok(v1);
                v59 = v63;
                if (!v89)
                {
                  v90 = savetok(v1, v143);
                  v59 = v63;
                  if (!v90)
                  {
                    *&v144[2] = 4;
                    npush_v(v1, v144, v91, v92, v93, v94, v95, v96);
                    WORD1(v143[0]) = 4;
                    npush_v(v1, v143, v97, v98, v99, v100, v101, v102);
                    v110 = if_testeq(v1, v103, v104, v105, v106, v107, v108, v109);
                    v59 = v63;
                    if (!v110)
                    {
                      *&v144[2] = 5;
                      npush_v(v1, v144, v111, v112, v113, v114, v115, v116);
                      WORD1(v143[0]) = 5;
                      npush_v(v1, v143, v117, v118, v119, v120, v121, v122);
                      v130 = if_testeq(v1, v123, v124, v125, v126, v127, v128, v129);
                      v59 = v63;
                      if (!v130)
                      {
                        goto LABEL_3;
                      }
                    }
                  }
                }
              }
            }
          }
        }

        goto LABEL_30;
      case 19:
        goto LABEL_39;
      case 20:
LABEL_38:
        v72 = OUTLINED_FUNCTION_41_14();
        savescptr(v72, v73, v74);
LABEL_39:
        v75 = OUTLINED_FUNCTION_51_13();
        starttest(v75, v76);
        OUTLINED_FUNCTION_58_12();
        delete_phone_from_left();
        break;
      case 21:
        break;
      default:
        v8 = v63;
        goto LABEL_5;
    }

    v77 = OUTLINED_FUNCTION_58_12();
    lpta_rpta_loadp(v77, v78, v79);
    OUTLINED_FUNCTION_33_19();
    v80 = mark_s();
    v59 = v63;
  }

  while (v80);
LABEL_3:
  OUTLINED_FUNCTION_57_12();
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_48_14();
}

void schwa_deletion()
{
  OUTLINED_FUNCTION_42_14();
  v1 = v0;
  v168 = *MEMORY[0x277D85DE8];
  v163[0] = 0;
  v163[1] = 0;
  v162[0] = 0;
  v162[1] = 0;
  v160 = 0;
  v161 = 0;
  OUTLINED_FUNCTION_24_25();
  bzero(&v137, v2);
  OUTLINED_FUNCTION_23_25();
  bzero(v167, v3);
  if (!setjmp(v167) && !ventproc(v1, &v137, v166, v165, v164, v167))
  {
    push_ptr_init(v1, v163);
    push_ptr_init(v1, v162);
    v4 = OUTLINED_FUNCTION_38_16();
    push_ptr_init(v4, v5);
    fence_36(v1, 0, &null_str_13);
    v6 = OUTLINED_FUNCTION_11_34();
    fence_36(v6, v7, v8);
    v9 = OUTLINED_FUNCTION_31_20();
    starttest(v9, v10);
    v11 = OUTLINED_FUNCTION_27_23();
    if (!lpta_loadp_setscan_l(v11, v12))
    {
      v14 = OUTLINED_FUNCTION_29_22();
      bspush_ca_scan(v14, v15);
      v16 = 0;
      while (2)
      {
        v17 = v16;
        savescptr(v1, 3, v162);
        v18 = OUTLINED_FUNCTION_17_32();
        if (!testFldeq(v18, v19, v20, 47))
        {
          OUTLINED_FUNCTION_52_13();
          bspush_ca_scan_boa();
          v21 = OUTLINED_FUNCTION_26_25();
          if (!testFldeq(v21, v22, 17, 3))
          {
            v17 = 1;
          }
        }

        v23 = v17;
LABEL_10:
        v24 = *(v1 + 104);
        if (v24)
        {
          v25 = OUTLINED_FUNCTION_28_22(v24);
          v27 = v26;
        }

        else
        {
          v25 = vback(v1, v23);
          v27 = 0;
        }

        v16 = v27;
        switch(v25)
        {
          case 2:
            v28 = OUTLINED_FUNCTION_22_25();
            v30 = testFldeq(v28, v29, 17, 1);
            v23 = v27;
            if (!v30)
            {
              v31 = advance_tok(v1);
              v16 = v27;
              v23 = v27;
              if (!v31)
              {
                continue;
              }
            }

            goto LABEL_10;
          case 3:
            continue;
          case 4:
            bspop_boa(v1);
            v59 = advance_tok(v1);
            v23 = v27;
            if (v59)
            {
              goto LABEL_10;
            }

            goto LABEL_28;
          case 5:
LABEL_28:
            savescptr(v1, 5, v163);
            goto LABEL_29;
          case 6:
LABEL_29:
            v60 = OUTLINED_FUNCTION_9_34();
            starttest(v60, v61);
            v62 = OUTLINED_FUNCTION_27_23();
            if (lpta_loadp_setscan_r(v62, v63))
            {
              goto LABEL_30;
            }

            goto LABEL_51;
          case 7:
LABEL_30:
            v64 = OUTLINED_FUNCTION_27_23();
            if (lpta_loadp_setscan_r(v64, v65))
            {
              goto LABEL_32;
            }

            OUTLINED_FUNCTION_4_36();
            if (test_string_s())
            {
              goto LABEL_32;
            }

            goto LABEL_4;
          case 8:
          case 34:
            goto LABEL_77;
          case 9:
LABEL_32:
            v66 = OUTLINED_FUNCTION_9_34();
            starttest(v66, v67);
            v68 = OUTLINED_FUNCTION_27_23();
            if (lpta_loadp_setscan_l(v68, v69))
            {
              goto LABEL_33;
            }

            v102 = OUTLINED_FUNCTION_9_34();
            bspush_ca_scan(v102, v103);
            OUTLINED_FUNCTION_9_34();
            bspush_ca_scan_boa();
            v104 = OUTLINED_FUNCTION_4_36();
            v87 = testFldeq(v104, v105, v106, 1);
            goto LABEL_46;
          case 10:
LABEL_33:
            lpta_loadpn(v1, v162);
            rpta_loadpn(v1, v1 + 1656);
            if (compare_ptas(v1) || testneq(v1))
            {
              goto LABEL_35;
            }

            goto LABEL_4;
          case 11:
            goto LABEL_51;
          case 12:
            bspop_boa(v1);
            v110 = advance_tok(v1);
            v23 = v27;
            if (v110)
            {
              goto LABEL_10;
            }

LABEL_51:
            OUTLINED_FUNCTION_22_25();
            goto LABEL_52;
          case 13:
LABEL_35:
            v70 = OUTLINED_FUNCTION_9_34();
            starttest(v70, v71);
            OUTLINED_FUNCTION_35_16();
            if (!v41)
            {
              goto LABEL_38;
            }

            v72 = OUTLINED_FUNCTION_27_23();
            if (lpta_loadp_setscan_l(v72, v73))
            {
              goto LABEL_38;
            }

            goto LABEL_44;
          case 14:
LABEL_38:
            v74 = OUTLINED_FUNCTION_27_23();
            if (lpta_loadp_setscan_r(v74, v75))
            {
              goto LABEL_40;
            }

            OUTLINED_FUNCTION_4_36();
            if (test_string_s())
            {
              goto LABEL_40;
            }

            goto LABEL_77;
          case 15:
LABEL_44:
            OUTLINED_FUNCTION_39_15(15, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160);
            v100 = OUTLINED_FUNCTION_9_34();
            bspush_ca_scan(v100, v101);
            goto LABEL_58;
          case 16:
LABEL_58:
            OUTLINED_FUNCTION_4_36();
            v115 = test_string_s();
            v23 = v27;
            if (!v115)
            {
              goto LABEL_59;
            }

            goto LABEL_10;
          case 17:
LABEL_59:
            v116 = OUTLINED_FUNCTION_4_36();
            v119 = testFldeq(v116, v117, v118, 2);
            v23 = v27;
            if (v119)
            {
              goto LABEL_10;
            }

            v120 = advance_tok(v1);
            v23 = v27;
            if (v120)
            {
              goto LABEL_10;
            }

            v121 = OUTLINED_FUNCTION_27_23();
            v123 = lpta_loadp_setscan_r(v121, v122);
            v23 = v27;
            if (v123)
            {
              goto LABEL_10;
            }

            v124 = advance_tok(v1);
            v23 = v27;
            if (v124)
            {
              goto LABEL_10;
            }

            v125 = OUTLINED_FUNCTION_9_34();
            bspush_ca_scan(v125, v126);
LABEL_55:
            OUTLINED_FUNCTION_4_36();
            v58 = test_string_s();
            goto LABEL_56;
          case 18:
            goto LABEL_55;
          case 20:
LABEL_40:
            v76 = OUTLINED_FUNCTION_9_34();
            starttest(v76, v77);
            v78 = OUTLINED_FUNCTION_6_35();
            if (lpta_loadp_setscan_r(v78, v79))
            {
              goto LABEL_41;
            }

            v88 = OUTLINED_FUNCTION_10_34();
            v90 = npush_fld(v88, v89, 6);
            v23 = v27;
            if (v90)
            {
              goto LABEL_10;
            }

            v91 = OUTLINED_FUNCTION_44_14();
            npush_i(v91);
            v99 = if_testgt(v1, v92, v93, v94, v95, v96, v97, v98);
            goto LABEL_67;
          case 21:
LABEL_41:
            v80 = OUTLINED_FUNCTION_9_34();
            starttest(v80, v81);
            OUTLINED_FUNCTION_9_34();
            bspush_ca_boa();
            v87 = is_one_syll(v1, (v1 + 1768), (v1 + 1784), v82, v83, v84, v85, v86);
LABEL_46:
            if (v87)
            {
              v23 = v27;
            }

            else
            {
              v23 = 1;
            }

            goto LABEL_10;
          case 22:
            v37 = OUTLINED_FUNCTION_9_34();
            starttest(v37, v38);
            v39 = OUTLINED_FUNCTION_2_37();
            if (lpta_loadp_setscan_r(v39, v40))
            {
              goto LABEL_19;
            }

            v128 = OUTLINED_FUNCTION_0_39();
            v131 = testFldeq(v128, v129, v130, 2);
            v23 = v27;
            if (v131)
            {
              goto LABEL_10;
            }

            v132 = advance_tok(v1);
            v23 = v27;
            if (v132)
            {
              goto LABEL_10;
            }

            v133 = OUTLINED_FUNCTION_9_34();
            bspush_ca_scan(v133, v134);
            OUTLINED_FUNCTION_10_34();
LABEL_52:
            OUTLINED_FUNCTION_34_17();
            goto LABEL_66;
          case 23:
            bspop_boa(v1);
            goto LABEL_77;
          case 24:
LABEL_19:
            OUTLINED_FUNCTION_35_16();
            if (!v41)
            {
              goto LABEL_4;
            }

            v42 = OUTLINED_FUNCTION_9_34();
            starttest(v42, v43);
            v44 = OUTLINED_FUNCTION_6_35();
            if (!lpta_loadp_setscan_l(v44, v45))
            {
              goto LABEL_22;
            }

            goto LABEL_73;
          case 25:
            v113 = OUTLINED_FUNCTION_9_34();
            bspush_ca_scan(v113, v114);
            v34 = OUTLINED_FUNCTION_0_39();
            v109 = 8;
            goto LABEL_66;
          case 26:
            goto LABEL_68;
          case 27:
            v32 = OUTLINED_FUNCTION_9_34();
            bspush_ca_scan(v32, v33);
            v34 = OUTLINED_FUNCTION_0_39();
            goto LABEL_65;
          case 28:
            v107 = OUTLINED_FUNCTION_9_34();
            bspush_ca_scan(v107, v108);
            v34 = OUTLINED_FUNCTION_3_37();
            v109 = 28;
            goto LABEL_66;
          case 29:
            v111 = OUTLINED_FUNCTION_9_34();
            bspush_ca_scan(v111, v112);
            v34 = OUTLINED_FUNCTION_5_35();
            v109 = 2;
            goto LABEL_66;
          case 30:
            v34 = OUTLINED_FUNCTION_5_35();
LABEL_65:
            v109 = 3;
LABEL_66:
            v99 = testFldeq(v34, v35, v36, v109);
LABEL_67:
            v23 = v27;
            if (v99)
            {
              goto LABEL_10;
            }

LABEL_68:
            v127 = advance_tok(v1);
            v23 = v27;
            if (v127)
            {
              goto LABEL_10;
            }

LABEL_77:
            delete_phone_from_left();
            break;
          case 32:
LABEL_73:
            v135 = OUTLINED_FUNCTION_16_32();
            if (!lpta_loadp_setscan_l(v135, v136))
            {
              OUTLINED_FUNCTION_7_35();
              if (!test_string_s())
              {
                goto LABEL_4;
              }
            }

            goto LABEL_77;
          case 33:
LABEL_22:
            OUTLINED_FUNCTION_39_15(33, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160);
            v46 = OUTLINED_FUNCTION_3_37();
            v49 = testFldeq(v46, v47, v48, 29);
            v23 = v27;
            if (!v49)
            {
              v50 = advance_tok(v1);
              v23 = v27;
              if (!v50)
              {
                v51 = OUTLINED_FUNCTION_13_33();
                v53 = lpta_loadp_setscan_r(v51, v52);
                v23 = v27;
                if (!v53)
                {
                  v54 = OUTLINED_FUNCTION_3_37();
                  v57 = testFldeq(v54, v55, v56, 29);
                  v23 = v27;
                  if (!v57)
                  {
                    v58 = advance_tok(v1);
LABEL_56:
                    v23 = v27;
                    if (!v58)
                    {
                      goto LABEL_4;
                    }
                  }
                }
              }
            }

            goto LABEL_10;
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
  OUTLINED_FUNCTION_48_14();
}

void delete_h_aspire()
{
  OUTLINED_FUNCTION_42_14();
  v1 = v0;
  v83 = *MEMORY[0x277D85DE8];
  v70 = 0;
  v71 = 0;
  v68 = 0;
  v69 = 0;
  OUTLINED_FUNCTION_24_25();
  bzero(v45, v2);
  OUTLINED_FUNCTION_23_25();
  bzero(v82, v3);
  v4 = setjmp(v82);
  if (!v4 && !OUTLINED_FUNCTION_49_14(v4, v5, v6, v7, v8, v9, v10, v11, v44, v45[0], v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82[0]))
  {
    push_ptr_init(v1, &v70);
    v13 = OUTLINED_FUNCTION_54_13();
    v15 = push_ptr_init(v13, v14);
    OUTLINED_FUNCTION_46_14(v15, v16, &null_str_13);
    v17 = OUTLINED_FUNCTION_9_34();
    starttest(v17, v18);
    v19 = OUTLINED_FUNCTION_15_32();
    if (!lpta_loadp_setscan_r(v19, v20))
    {
      OUTLINED_FUNCTION_4_36();
      if (!test_string_s())
      {
        v21 = 0;
        while (2)
        {
          v22 = OUTLINED_FUNCTION_37_16();
          savescptr(v22, v23, &v70);
          v24 = advance_tok(v1);
          v25 = v21;
          if (!v24)
          {
LABEL_8:
            v21 = v25;
            v26 = OUTLINED_FUNCTION_53_13();
            savescptr(v26, v27, &v68);
            v28 = OUTLINED_FUNCTION_41_14();
            starttest(v28, v29);
            v30 = OUTLINED_FUNCTION_15_32();
            if (lpta_loadp_setscan_l(v30, v31))
            {
LABEL_21:
              OUTLINED_FUNCTION_15_32();
              delete_phone_from_right();
              break;
            }

            OUTLINED_FUNCTION_21_26();
            OUTLINED_FUNCTION_34_17();
            if (!testFldeq(v32, v33, v34, v35))
            {
              OUTLINED_FUNCTION_51_13();
              bspush_ca_scan_boa();
              v36 = OUTLINED_FUNCTION_21_26();
              if (!OUTLINED_FUNCTION_60_12(v36, v37))
              {
                v21 = 1;
              }
            }
          }

          v38 = v21;
LABEL_13:
          v39 = v1[13];
          if (v39)
          {
            v40 = OUTLINED_FUNCTION_28_22(v39);
            v21 = v41;
          }

          else
          {
            v40 = vback(v1, v38);
            v21 = 0;
          }

          switch(v40)
          {
            case 2:
              continue;
            case 3:
              v25 = v21;
              goto LABEL_8;
            case 4:
              goto LABEL_21;
            case 5:
              bspop_boa(v1);
              v42 = advance_tok(v1);
              v38 = v21;
              if (!v42)
              {
                lpta_rpta_loadp(v1, &v70, &v68);
                OUTLINED_FUNCTION_21_26();
                v43 = mark_s();
                v38 = v21;
                if (!v43)
                {
                  goto LABEL_21;
                }
              }

              goto LABEL_13;
            default:
              goto LABEL_3;
          }
        }
      }
    }
  }

LABEL_3:
  vretproc(v1);
  v12 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_48_14();
}

uint64_t liaison_phone_context(uint64_t a1)
{
  OUTLINED_FUNCTION_14_33(*MEMORY[0x277D85DE8], v48);
  OUTLINED_FUNCTION_8_35(v3, v4, v5, v6, v7, v8, v9, v10, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_1_38(v11, v12, v13, v14, v15, v16, v17, v18, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, *v96, v96[4], *v98, *&v98[4], v98[6], v100, SWORD2(v100), SBYTE6(v100), SHIBYTE(v100), v102, v104))
  {
    goto LABEL_3;
  }

  fence_36(a1, 0, &null_str_13);
  v22 = OUTLINED_FUNCTION_9_34();
  starttest(v22, v23);
  v24 = OUTLINED_FUNCTION_25_25();
  if (lpta_loadp_setscan_r(v24, v25))
  {
LABEL_10:
    v29 = OUTLINED_FUNCTION_9_34();
    starttest(v29, v30);
    v31 = OUTLINED_FUNCTION_25_25();
    if (lpta_loadp_setscan_r(v31, v32))
    {
      goto LABEL_3;
    }

    v33 = OUTLINED_FUNCTION_4_36();
    if (testFldeq(v33, v34, v35, 3) || advance_tok(a1))
    {
      goto LABEL_13;
    }

    v44 = OUTLINED_FUNCTION_16_32();
    if (!lpta_loadp_setscan_r(v44, v45))
    {
      OUTLINED_FUNCTION_7_35();
      if (!test_string_s())
      {
        lpta_rpta_loadp(a1, a1 + 1768, a1 + 6224);
        v46 = OUTLINED_FUNCTION_20_27();
        if (!setd_lookup(v46, v47, 53))
        {
LABEL_9:
          v19 = 0;
          goto LABEL_4;
        }
      }
    }

LABEL_17:
    v40 = OUTLINED_FUNCTION_9_34();
    starttest(v40, v41);
    v42 = OUTLINED_FUNCTION_16_32();
    if (lpta_loadp_setscan_r(v42, v43))
    {
LABEL_3:
      v19 = 94;
      goto LABEL_4;
    }

    v26 = OUTLINED_FUNCTION_18_31();
  }

  else
  {
    v26 = OUTLINED_FUNCTION_4_36();
  }

  if (!testFldeq(v26, v27, v28, 1) && !advance_tok(a1))
  {
    goto LABEL_9;
  }

LABEL_13:
  v36 = *(a1 + 104);
  if (v36)
  {
    v37 = OUTLINED_FUNCTION_28_22(v36);
  }

  else
  {
    v38 = OUTLINED_FUNCTION_44_14();
    v37 = vback(v38, v39);
  }

  v19 = 0;
  switch(v37)
  {
    case 1:
      goto LABEL_10;
    case 2:
    case 5:
      break;
    case 4:
      goto LABEL_17;
    default:
      goto LABEL_3;
  }

LABEL_4:
  vretproc(a1);
  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

void liaison_gcat_context()
{
  OUTLINED_FUNCTION_42_14();
  v1 = v0;
  v71 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_24_25();
  bzero(v59, v2);
  OUTLINED_FUNCTION_23_25();
  bzero(v70, v3);
  v4 = setjmp(v70);
  if (v4)
  {
    goto LABEL_3;
  }

  v11 = OUTLINED_FUNCTION_55_13(v4, v59, v5, v6, v7, v8, v9, v10, v56, v57, v58, v59[0], v59[1], v59[2], v59[3], v59[4], v59[5], v59[6], v59[7], v59[8], v59[9], v59[10], v59[11], v59[12], v59[13], v59[14], v59[15], v59[16], v59[17], v59[18], v59[19], v59[20], v59[21], v59[22], v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70[0]);
  if (v11)
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_46_14(v11, v12, &null_str_13);
  if (*(v1 + 4050) == 1)
  {
    goto LABEL_3;
  }

  v14 = 0;
  while (2)
  {
    v15 = OUTLINED_FUNCTION_45_14();
    starttest(v15, v16);
    v17 = OUTLINED_FUNCTION_15_32();
    if (!lpta_loadp_setscan_r(v17, v18))
    {
      v41 = OUTLINED_FUNCTION_36_16();
      v44 = 8;
      goto LABEL_31;
    }

LABEL_7:
    starttest(v1, 4);
    v19 = OUTLINED_FUNCTION_32_19();
    if (!lpta_loadp_setscan_r(v19, v20) && !test_string_s())
    {
      *(v1 + 136) = 1;
      v21 = *(v1 + 1776);
      if (!OUTLINED_FUNCTION_30_21())
      {
        bspush_ca_boa();
        if (lpta_loadp_setscan_r(v1, v1 + 1784) || test_string_s())
        {
          goto LABEL_33;
        }

        *(v1 + 136) = 1;
        v45 = *(v1 + 1840);
        v40 = OUTLINED_FUNCTION_30_21();
LABEL_24:
        if (v40)
        {
          v14 = v14;
        }

        else
        {
          v14 = 1;
        }

        goto LABEL_33;
      }
    }

LABEL_10:
    if (!liaison_expressions(v1))
    {
      break;
    }

LABEL_11:
    v22 = OUTLINED_FUNCTION_41_14();
    starttest(v22, v23);
    v24 = OUTLINED_FUNCTION_15_32();
    if (!lpta_loadp_setscan_r(v24, v25))
    {
      v35 = OUTLINED_FUNCTION_36_16();
      if (testFldeq(v35, v36, v37, 1) || advance_tok(v1))
      {
        goto LABEL_33;
      }

      v38 = OUTLINED_FUNCTION_9_34();
      starttest_l(v38, v39);
      bspush_ca_boa();
      v40 = verb_liaison(v1);
      goto LABEL_24;
    }

LABEL_12:
    if (!noun_phrase_liaison(v1))
    {
      break;
    }

LABEL_13:
    adv_liaison();
    if (!v26)
    {
      break;
    }

LABEL_14:
    if (!other_liaison(v1))
    {
      break;
    }

LABEL_15:
    if (!tout_liaison(v1))
    {
      break;
    }

LABEL_16:
    v27 = OUTLINED_FUNCTION_53_13();
    starttest(v27, v28);
    v29 = OUTLINED_FUNCTION_15_32();
    if (!lpta_loadp_setscan_r(v29, v30))
    {
      v31 = OUTLINED_FUNCTION_36_16();
      if (!testFldeq(v31, v32, v33, 9) && !testFldeq(v1, 4u, 2, 8) && !advance_tok(v1))
      {
        bspush_ca_scan(v1, 15);
        v34 = v14;
LABEL_40:
        v14 = v34;
        v41 = v1;
        v42 = 4;
        v43 = 3;
        v44 = 2;
LABEL_31:
        if (!testFldeq(v41, v42, v43, v44) && !advance_tok(v1))
        {
          break;
        }
      }

LABEL_33:
      v46 = v14;
LABEL_34:
      v14 = v46;
      v47 = *(v1 + 104);
      if (v47)
      {
        v48 = OUTLINED_FUNCTION_28_22(v47);
      }

      else
      {
        v49 = OUTLINED_FUNCTION_33_19();
        v48 = vback(v49, v50);
        v14 = 0;
      }

      v34 = v14;
      switch(v48)
      {
        case 1:
          continue;
        case 3:
          goto LABEL_7;
        case 4:
          goto LABEL_10;
        case 5:
          bspop_boa(v1);
          break;
        case 6:
          goto LABEL_11;
        case 7:
          goto LABEL_12;
        case 9:
          bspop_boa(v1);
          break;
        case 10:
          goto LABEL_13;
        case 11:
          goto LABEL_14;
        case 12:
          goto LABEL_15;
        case 13:
          goto LABEL_16;
        case 15:
          v51 = OUTLINED_FUNCTION_36_16();
          v54 = testFldeq(v51, v52, v53, 3);
          v46 = v14;
          if (!v54)
          {
            v55 = advance_tok(v1);
            v34 = v14;
            v46 = v14;
            if (!v55)
            {
              goto LABEL_40;
            }
          }

          goto LABEL_34;
        case 16:
          goto LABEL_40;
        default:
          goto LABEL_3;
      }
    }

    break;
  }

LABEL_3:
  vretproc(v1);
  v13 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_48_14();
}

uint64_t denasalization(uint64_t a1)
{
  v83 = *MEMORY[0x277D85DE8];
  v76 = 0;
  v77 = 0;
  OUTLINED_FUNCTION_24_25();
  bzero(&v53, v3);
  OUTLINED_FUNCTION_23_25();
  OUTLINED_FUNCTION_61_12(v4, v5, v6, v7, v8, v9, v10, v11, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82);
  v12 = setjmp(v1);
  if (v12 || OUTLINED_FUNCTION_12_34(v12, v13, v14, v15, v16, v17, v18, v19, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, SBYTE4(v78), v79, SWORD2(v79), SBYTE6(v79), v80, SWORD2(v80), SBYTE6(v80), SHIBYTE(v80), v81, v82) || (v20 = OUTLINED_FUNCTION_38_16(), push_ptr_init(v20, v21), fence_36(a1, 0, &null_str_13), v22 = OUTLINED_FUNCTION_9_34(), starttest(v22, v23), v24 = OUTLINED_FUNCTION_27_23(), lpta_loadp_setscan_l(v24, v25)) || (OUTLINED_FUNCTION_4_36(), test_string_s()))
  {
LABEL_5:
    v26 = 94;
  }

  else
  {
    while (2)
    {
      v29 = OUTLINED_FUNCTION_31_20();
      savescptr(v29, v30, &v76);
      OUTLINED_FUNCTION_26_25();
      OUTLINED_FUNCTION_34_17();
      if (testFldeq(v31, v32, v33, v34) || (v35 = OUTLINED_FUNCTION_26_25(), testFldeq(v35, v36, 17, 2)) || advance_tok(a1))
      {
        v37 = *(a1 + 104);
        if (v37)
        {
          v38 = OUTLINED_FUNCTION_28_22(v37);
        }

        else
        {
          v39 = OUTLINED_FUNCTION_44_14();
          v38 = vback(v39, v40);
        }

        switch(v38)
        {
          case 2:
            continue;
          case 3:
            goto LABEL_14;
          case 4:
            goto LABEL_15;
          case 5:
            goto LABEL_18;
          case 6:
            goto LABEL_20;
          default:
            goto LABEL_5;
        }
      }

      break;
    }

LABEL_14:
    savescptr(a1, 3, a1 + 1272);
LABEL_15:
    v41 = OUTLINED_FUNCTION_27_23();
    if (lpta_loadp_setscan_r(v41, v42) || (OUTLINED_FUNCTION_4_36(), test_string_s()) || (lpta_rpta_loadp(a1, a1 + 1272, &v76), v26 = 0, v43 = OUTLINED_FUNCTION_4_36(), insert_2pt_s(v43, v44, v45, v46, 0)))
    {
LABEL_18:
      v47 = OUTLINED_FUNCTION_27_23();
      if (lpta_loadp_setscan_r(v47, v48) || (OUTLINED_FUNCTION_4_36(), test_string_s()))
      {
LABEL_20:
        v26 = 0;
      }

      else
      {
        lpta_rpta_loadp(a1, a1 + 1272, &v76);
        v26 = 0;
        v49 = OUTLINED_FUNCTION_4_36();
        insert_2pt_s(v49, v50, v51, v52, 0);
      }
    }
  }

  vretproc(a1);
  v27 = *MEMORY[0x277D85DE8];
  return v26;
}

uint64_t delete_liaison_con(uint64_t a1)
{
  v59 = *MEMORY[0x277D85DE8];
  v52 = 0;
  v53 = 0;
  OUTLINED_FUNCTION_24_25();
  bzero(&v29, v3);
  OUTLINED_FUNCTION_23_25();
  OUTLINED_FUNCTION_61_12(v4, v5, v6, v7, v8, v9, v10, v11, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58);
  v12 = setjmp(v1);
  if (v12 || OUTLINED_FUNCTION_12_34(v12, v13, v14, v15, v16, v17, v18, v19, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, SBYTE4(v54), v55, SWORD2(v55), SBYTE6(v55), v56, SWORD2(v56), SBYTE6(v56), SHIBYTE(v56), v57, v58))
  {
    v20 = 94;
  }

  else
  {
    v23 = OUTLINED_FUNCTION_38_16();
    push_ptr_init(v23, v24);
    fence_36(a1, 0, &null_str_13);
    v25 = OUTLINED_FUNCTION_27_23();
    if (!lpta_loadp_setscan_l(v25, v26) && !advance_tok(a1))
    {
      OUTLINED_FUNCTION_39_15(2, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52);
    }

    v27 = OUTLINED_FUNCTION_38_16();
    if (!lpta_loadp_setscan_l(v27, v28))
    {
      OUTLINED_FUNCTION_58_12();
      delete_morph_from_left();
      *(a1 + 1664) = *(a1 + 1344);
    }

    OUTLINED_FUNCTION_58_12();
    delete_phone_from_left();
    v20 = 0;
  }

  vretproc(a1);
  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

uint64_t liaison_expressions(uint64_t a1)
{
  OUTLINED_FUNCTION_14_33(*MEMORY[0x277D85DE8], v32);
  OUTLINED_FUNCTION_8_35(v3, v4, v5, v6, v7, v8, v9, v10, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87);
  v11 = setjmp(v1);
  if (!v11)
  {
    v19 = OUTLINED_FUNCTION_1_38(v11, v12, v13, v14, v15, v16, v17, v18, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, *v80, v80[4], *v82, *&v82[4], v82[6], v84, SWORD2(v84), SBYTE6(v84), SHIBYTE(v84), v86, v88);
    if (!v19)
    {
      v21 = 0;
      OUTLINED_FUNCTION_46_14(v19, v20, &null_str_13);
      v24 = OUTLINED_FUNCTION_20_27();
      fence_36(v24, v25, v26);
      lpta_rpta_loadp(a1, a1 + 1320, a1 + 1784);
      v27 = OUTLINED_FUNCTION_18_31();
      if (!setd_lookup(v27, v28, v29))
      {
        goto LABEL_4;
      }

      lpta_loadpn(a1, a1 + 1848);
      OUTLINED_FUNCTION_56_12();
      if (!compare_ptas(a1) && !testneq(a1))
      {
        lpta_rpta_loadp(a1, a1 + 1320, a1 + 1848);
        v30 = OUTLINED_FUNCTION_20_27();
        if (!setd_lookup(v30, v31, 5))
        {
          v21 = 0;
          goto LABEL_4;
        }
      }
    }
  }

  v21 = 94;
LABEL_4:
  vretproc(a1);
  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

uint64_t verb_liaison(uint64_t a1)
{
  v93 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_24_25();
  bzero(&v65, v3);
  OUTLINED_FUNCTION_8_35(v4, v5, v6, v7, v8, v9, v10, v11, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92);
  v12 = setjmp(v1);
  if (v12 || OUTLINED_FUNCTION_1_38(v12, v13, v14, v15, v16, v17, v18, v19, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, SBYTE4(v88), v89, SWORD2(v89), SBYTE6(v89), v90, SWORD2(v90), SBYTE6(v90), SHIBYTE(v90), v91, v92))
  {
    goto LABEL_3;
  }

  fence_36(a1, 0, &null_str_13);
  v23 = OUTLINED_FUNCTION_9_34();
  starttest(v23, v24);
  v25 = OUTLINED_FUNCTION_2_37();
  if (lpta_loadp_setscan_r(v25, v26))
  {
LABEL_6:
    v27 = OUTLINED_FUNCTION_9_34();
    starttest(v27, v28);
    v29 = OUTLINED_FUNCTION_2_37();
    if (lpta_loadp_setscan_r(v29, v30))
    {
LABEL_3:
      v20 = 94;
      goto LABEL_4;
    }

    v31 = OUTLINED_FUNCTION_3_37();
    if (testFldeq(v31, v32, v33, 3))
    {
      goto LABEL_17;
    }

    if (advance_tok(a1))
    {
      goto LABEL_17;
    }

    v34 = OUTLINED_FUNCTION_0_39();
    if (testFldeq(v34, v35, v36, 3) || advance_tok(a1))
    {
      goto LABEL_17;
    }

    v37 = OUTLINED_FUNCTION_5_35();
  }

  else
  {
    v40 = OUTLINED_FUNCTION_29_22();
    bspush_ca_scan(v40, v41);
    v42 = OUTLINED_FUNCTION_10_34();
    if (testFldeq(v42, v43, v1, 1))
    {
      goto LABEL_17;
    }

LABEL_13:
    if (advance_tok(a1))
    {
      goto LABEL_17;
    }

    v44 = OUTLINED_FUNCTION_31_20();
    bspush_ca_scan(v44, v45);
    v37 = OUTLINED_FUNCTION_26_25();
    v39 = 1;
  }

  if (testFldeq(v37, v38, v39, 1))
  {
    goto LABEL_17;
  }

LABEL_16:
  while (advance_tok(a1))
  {
    do
    {
LABEL_17:
      while (2)
      {
        v46 = *(a1 + 104);
        if (v46)
        {
          v47 = OUTLINED_FUNCTION_28_22(v46);
        }

        else
        {
          v48 = OUTLINED_FUNCTION_44_14();
          v47 = vback(v48, v49);
        }

        switch(v47)
        {
          case 1:
            goto LABEL_6;
          case 2:
            v50 = OUTLINED_FUNCTION_3_37();
            if (!testFldeq(v50, v51, v52, 2))
            {
              goto LABEL_13;
            }

            continue;
          case 3:
            goto LABEL_13;
          case 4:
            v53 = OUTLINED_FUNCTION_47_14();
            bspush_ca_scan(v53, v54);
            v55 = OUTLINED_FUNCTION_0_39();
            v58 = 8;
            break;
          case 5:
            goto LABEL_16;
          case 6:
            v61 = OUTLINED_FUNCTION_37_16();
            bspush_ca_scan(v61, v62);
            v55 = OUTLINED_FUNCTION_0_39();
            v58 = 2;
            break;
          case 7:
            v59 = OUTLINED_FUNCTION_40_15();
            bspush_ca_scan(v59, v60);
            v55 = OUTLINED_FUNCTION_0_39();
            v58 = 3;
            break;
          case 8:
            v63 = OUTLINED_FUNCTION_53_13();
            bspush_ca_scan(v63, v64);
            v55 = OUTLINED_FUNCTION_5_35();
            v58 = 10;
            break;
          case 9:
            v55 = OUTLINED_FUNCTION_5_35();
            v58 = 9;
            break;
          case 10:
            goto LABEL_30;
          default:
            goto LABEL_3;
        }

        break;
      }
    }

    while (testFldeq(v55, v56, v57, v58));
  }

LABEL_30:
  v20 = 0;
LABEL_4:
  vretproc(a1);
  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

uint64_t noun_phrase_liaison(uint64_t a1)
{
  v188 = *MEMORY[0x277D85DE8];
  v181 = 0;
  v182 = 0;
  OUTLINED_FUNCTION_24_25();
  bzero(&v158, v3);
  OUTLINED_FUNCTION_23_25();
  OUTLINED_FUNCTION_61_12(v4, v5, v6, v7, v8, v9, v10, v11, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187);
  v12 = setjmp(v1);
  if (v12 || OUTLINED_FUNCTION_12_34(v12, v13, v14, v15, v16, v17, v18, v19, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, SBYTE4(v183), v184, SWORD2(v184), SBYTE6(v184), v185, SWORD2(v185), SBYTE6(v185), SHIBYTE(v185), v186, v187))
  {
    goto LABEL_3;
  }

  v22 = OUTLINED_FUNCTION_38_16();
  v24 = push_ptr_init(v22, v23);
  v1 = 0;
  OUTLINED_FUNCTION_46_14(v24, v25, &null_str_13);
  v26 = OUTLINED_FUNCTION_21_26();
  fence_36(v26, v27, v28);
  v29 = OUTLINED_FUNCTION_40_15();
  starttest(v29, v30);
  v31 = OUTLINED_FUNCTION_2_37();
  if (!lpta_loadp_setscan_r(v31, v32))
  {
    OUTLINED_FUNCTION_9_34();
    bspush_ca_scan_boa();
    v78 = OUTLINED_FUNCTION_31_20();
    bspush_ca_scan(v78, v79);
    v80 = OUTLINED_FUNCTION_10_34();
    v82 = testFldeq(v80, v81, 3, 10);
    LODWORD(v1) = 0;
    v83 = 0;
    if (v82)
    {
      goto LABEL_53;
    }

LABEL_25:
    LODWORD(v1) = v83;
    goto LABEL_50;
  }

LABEL_5:
  v33 = OUTLINED_FUNCTION_9_34();
  starttest(v33, v34);
  v35 = OUTLINED_FUNCTION_6_35();
  if (!lpta_loadp_setscan_r(v35, v36))
  {
    v68 = OUTLINED_FUNCTION_0_39();
    if (testFldeq(v68, v69, v70, 2) || advance_tok(a1))
    {
      goto LABEL_53;
    }

    v71 = OUTLINED_FUNCTION_9_34();
    starttest(v71, v72);
    v73 = OUTLINED_FUNCTION_2_37();
    if (!lpta_loadp_setscan_r(v73, v74))
    {
      v75 = OUTLINED_FUNCTION_5_35();
      if (!testFldeq(v75, v76, v77, 10) && !advance_tok(a1))
      {
        goto LABEL_3;
      }

      goto LABEL_53;
    }

LABEL_32:
    v95 = OUTLINED_FUNCTION_9_34();
    starttest(v95, v96);
    v97 = OUTLINED_FUNCTION_2_37();
    if (!lpta_loadp_setscan_r(v97, v98))
    {
      v99 = OUTLINED_FUNCTION_5_35();
      if (!testFldeq(v99, v100, v101, 13) && !advance_tok(a1))
      {
        v102 = OUTLINED_FUNCTION_5_35();
        if (!testFldeq(v102, v103, v104, 13) && !advance_tok(a1))
        {
          goto LABEL_3;
        }
      }

      goto LABEL_53;
    }

LABEL_39:
    v105 = OUTLINED_FUNCTION_9_34();
    starttest(v105, v106);
    v107 = OUTLINED_FUNCTION_2_37();
    if (!lpta_loadp_setscan_r(v107, v108))
    {
      v109 = OUTLINED_FUNCTION_0_39();
      if (testFldeq(v109, v110, v111, 2))
      {
        goto LABEL_53;
      }

      v112 = OUTLINED_FUNCTION_10_34();
      if (testFldeq(v112, v113, 5, 2) || advance_tok(a1))
      {
        goto LABEL_53;
      }

      OUTLINED_FUNCTION_9_34();
      bspush_ca_scan_boa();
      v114 = OUTLINED_FUNCTION_10_34();
      v116 = testFldeq(v114, v115, 5, 1);
LABEL_51:
      if (!v116)
      {
        LODWORD(v1) = 1;
      }

      goto LABEL_53;
    }

LABEL_45:
    v117 = OUTLINED_FUNCTION_9_34();
    starttest(v117, v118);
    v119 = OUTLINED_FUNCTION_2_37();
    if (lpta_loadp_setscan_l(v119, v120))
    {
      goto LABEL_3;
    }

LABEL_48:
    OUTLINED_FUNCTION_39_15(13, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181);
    OUTLINED_FUNCTION_9_34();
    bspush_ca_scan_boa();
    v91 = OUTLINED_FUNCTION_0_39();
    v94 = 2;
    goto LABEL_49;
  }

  v37 = v1;
LABEL_7:
  v38 = OUTLINED_FUNCTION_9_34();
  starttest(v38, v39);
  v40 = OUTLINED_FUNCTION_2_37();
  if (lpta_loadp_setscan_r(v40, v41))
  {
    goto LABEL_3;
  }

  v42 = OUTLINED_FUNCTION_9_34();
  bspush_ca_scan(v42, v43);
  v44 = OUTLINED_FUNCTION_0_39();
  v47 = testFldeq(v44, v45, v46, 4);
  v1 = v37;
  v48 = v37;
  if (!v47)
  {
LABEL_9:
    v49 = v48;
    if (advance_tok(a1))
    {
      goto LABEL_17;
    }

    v50 = OUTLINED_FUNCTION_9_34();
    starttest(v50, v51);
    v52 = OUTLINED_FUNCTION_6_35();
    if (lpta_loadp_setscan_r(v52, v53))
    {
      goto LABEL_3;
    }

    v54 = OUTLINED_FUNCTION_9_34();
    bspush_ca_scan(v54, v55);
    v56 = OUTLINED_FUNCTION_0_39();
    v59 = testFldeq(v56, v57, v58, 4);
    v1 = v49;
    v60 = v49;
    if (v59)
    {
      goto LABEL_53;
    }

LABEL_12:
    LODWORD(v49) = v60;
    if (advance_tok(a1))
    {
      goto LABEL_17;
    }

    v61 = OUTLINED_FUNCTION_15_32();
    if (lpta_loadp_setscan_l(v61, v62))
    {
      goto LABEL_3;
    }

    OUTLINED_FUNCTION_11_34();
    if (test_string_s())
    {
      goto LABEL_3;
    }

    *(a1 + 136) = v1;
    v63 = *(a1 + 1760);
    if (OUTLINED_FUNCTION_30_21())
    {
      goto LABEL_3;
    }

    v64 = OUTLINED_FUNCTION_9_34();
    starttest(v64, v65);
    OUTLINED_FUNCTION_9_34();
    bspush_ca_boa();
    v66 = OUTLINED_FUNCTION_2_37();
    if (lpta_loadp_setscan_r(v66, v67))
    {
LABEL_17:
      LODWORD(v1) = v49;
      goto LABEL_53;
    }

    v84 = OUTLINED_FUNCTION_9_34();
    bspush_ca_scan(v84, v85);
    v86 = OUTLINED_FUNCTION_3_37();
    v89 = testFldeq(v86, v87, v88, 11);
    LODWORD(v1) = v49;
    v90 = v49;
    if (v89)
    {
      goto LABEL_53;
    }

LABEL_27:
    LODWORD(v1) = v90;
    if (advance_tok(a1))
    {
      goto LABEL_53;
    }

    v91 = OUTLINED_FUNCTION_0_39();
    v94 = 4;
LABEL_49:
    if (testFldeq(v91, v92, v93, v94))
    {
      goto LABEL_53;
    }

LABEL_50:
    v116 = advance_tok(a1);
    goto LABEL_51;
  }

LABEL_53:
  v121 = v1;
  v1 = 5;
  while (2)
  {
    v122 = *(a1 + 104);
    if (v122)
    {
      v123 = OUTLINED_FUNCTION_28_22(v122);
      v125 = v124;
    }

    else
    {
      v123 = vback(a1, v121);
      v125 = 0;
    }

    if ((v123 - 1) <= 0x19)
    {
      OUTLINED_FUNCTION_59_12();
      v83 = v125;
      v48 = v125;
      v60 = v125;
      v90 = v125;
      switch(v126)
      {
        case 1:
        case 22:
          bspop_boa(a1);
          break;
        case 2:
          v127 = OUTLINED_FUNCTION_47_14();
          bspush_ca_scan(v127, v128);
          v129 = OUTLINED_FUNCTION_0_39();
          v132 = 4;
          goto LABEL_68;
        case 3:
          goto LABEL_25;
        case 4:
          v129 = OUTLINED_FUNCTION_0_39();
          v132 = 2;
LABEL_68:
          v149 = testFldeq(v129, v130, v131, v132);
          v83 = v125;
          v121 = v125;
          if (!v149)
          {
            goto LABEL_25;
          }

          continue;
        case 5:
          v37 = v125;
          goto LABEL_7;
        case 6:
          v1 = v125;
          goto LABEL_32;
        case 7:
        case 11:
        case 14:
        case 15:
        case 18:
        case 21:
        case 25:
          goto LABEL_3;
        case 8:
          v1 = v125;
          goto LABEL_39;
        case 9:
          v1 = v125;
          goto LABEL_45;
        case 10:
          bspop_boa(a1);
          goto LABEL_71;
        case 12:
          LODWORD(v1) = v125;
          goto LABEL_48;
        case 13:
          bspop_boa(a1);
          v151 = OUTLINED_FUNCTION_45_14();
          v153 = lpta_loadp_setscan_r(v151, v152);
          v121 = v125;
          if (v153)
          {
            continue;
          }

          v154 = OUTLINED_FUNCTION_3_37();
          v157 = testFldeq(v154, v155, v156, 32);
          v121 = v125;
          if (v157)
          {
            continue;
          }

LABEL_71:
          v150 = advance_tok(a1);
          v121 = v125;
          if (!v150)
          {
            goto LABEL_3;
          }

          continue;
        case 16:
          v137 = OUTLINED_FUNCTION_3_37();
          v140 = testFldeq(v137, v138, v139, 6);
          v121 = v125;
          if (!v140)
          {
            v141 = OUTLINED_FUNCTION_5_35();
            v144 = testFldeq(v141, v142, v143, 10);
            v48 = v125;
            v121 = v125;
            if (!v144)
            {
              goto LABEL_9;
            }
          }

          continue;
        case 17:
          goto LABEL_9;
        case 19:
          v145 = OUTLINED_FUNCTION_0_39();
          v148 = testFldeq(v145, v146, v147, 1);
          v60 = v125;
          v121 = v125;
          if (!v148)
          {
            goto LABEL_12;
          }

          continue;
        case 20:
          goto LABEL_12;
        case 23:
          v133 = OUTLINED_FUNCTION_3_37();
          v136 = testFldeq(v133, v134, v135, 36);
          v90 = v125;
          v121 = v125;
          if (!v136)
          {
            goto LABEL_27;
          }

          continue;
        case 24:
          goto LABEL_27;
        default:
          v1 = v125;
          goto LABEL_5;
      }
    }

    break;
  }

LABEL_3:
  OUTLINED_FUNCTION_57_12();
  v20 = *MEMORY[0x277D85DE8];
  return v1;
}

void adv_liaison()
{
  OUTLINED_FUNCTION_42_14();
  v1 = v0;
  v92 = *MEMORY[0x277D85DE8];
  v87[0] = 0;
  v87[1] = 0;
  OUTLINED_FUNCTION_24_25();
  bzero(v86, v2);
  OUTLINED_FUNCTION_23_25();
  bzero(v91, v3);
  if (!setjmp(v91) && !ventproc(v1, v86, v90, v89, v88, v91))
  {
    v5 = push_ptr_init(v1, v87);
    OUTLINED_FUNCTION_46_14(v5, v6, &null_str_13);
    v7 = OUTLINED_FUNCTION_31_20();
    starttest(v7, v8);
    OUTLINED_FUNCTION_9_34();
    bspush_ca_boa();
    v9 = OUTLINED_FUNCTION_2_37();
    if (lpta_loadp_setscan_r(v9, v10))
    {
      v11 = 0;
    }

    else
    {
      v12 = OUTLINED_FUNCTION_0_39();
      if (testFldeq(v12, v13, v14, 3))
      {
        v11 = 0;
      }

      else
      {
        OUTLINED_FUNCTION_9_34();
        bspush_ca_scan_boa();
        v15 = OUTLINED_FUNCTION_3_37();
        v11 = !testFldeq(v15, v16, v17, 6);
      }
    }

    v18 = v11;
    while (2)
    {
      v19 = *(v1 + 104);
      if (v19)
      {
        v20 = OUTLINED_FUNCTION_28_22(v19);
        v22 = v21;
      }

      else
      {
        v20 = vback(v1, v18);
        v22 = 0;
      }

      switch(v20)
      {
        case 1:
          v23 = OUTLINED_FUNCTION_40_15();
          starttest(v23, v24);
          v25 = OUTLINED_FUNCTION_25_25();
          if (lpta_loadp_setscan_r(v25, v26))
          {
            goto LABEL_15;
          }

          v78 = OUTLINED_FUNCTION_19_27();
          v81 = testFldeq(v78, v79, v80, 8);
          v18 = v22;
          if (v81)
          {
            continue;
          }

          v82 = advance_tok(v1);
          v18 = v22;
          if (v82)
          {
            continue;
          }

          starttest_l(v1, 5);
          bspush_ca_boa();
          v83 = OUTLINED_FUNCTION_15_32();
          v85 = lpta_loadp_setscan_r(v83, v84);
          v18 = v22;
          if (v85)
          {
            continue;
          }

          bspush_ca_scan(v1, 7);
          OUTLINED_FUNCTION_26_25();
          goto LABEL_39;
        case 2:
        case 6:
          bspop_boa(v1);
          goto LABEL_3;
        case 3:
          bspop_boa(v1);
          v56 = advance_tok(v1);
          goto LABEL_41;
        case 4:
LABEL_15:
          starttest(v1, 11);
          v27 = OUTLINED_FUNCTION_25_25();
          if (lpta_loadp_setscan_r(v27, v28))
          {
            goto LABEL_16;
          }

          bspush_ca_scan(v1, 12);
          v57 = OUTLINED_FUNCTION_19_27();
          v60 = 2;
          goto LABEL_46;
        case 7:
          v65 = OUTLINED_FUNCTION_9_34();
          bspush_ca_scan(v65, v66);
          OUTLINED_FUNCTION_17_32();
          goto LABEL_39;
        case 8:
          goto LABEL_40;
        case 9:
          OUTLINED_FUNCTION_17_32();
LABEL_39:
          v67 = test_string_s();
          v18 = v22;
          if (!v67)
          {
LABEL_40:
            *(v1 + 136) = 1;
            v68 = *(v1 + 1344);
            v56 = OUTLINED_FUNCTION_30_21();
LABEL_41:
            if (v56)
            {
              v18 = v22;
            }

            else
            {
              v18 = 1;
            }
          }

          continue;
        case 11:
LABEL_16:
          v29 = OUTLINED_FUNCTION_53_13();
          starttest(v29, v30);
          v31 = OUTLINED_FUNCTION_32_19();
          if (lpta_loadp_setscan_r(v31, v32))
          {
            goto LABEL_17;
          }

          goto LABEL_22;
        case 12:
          bspush_ca_scan(v1, 14);
          v57 = OUTLINED_FUNCTION_19_27();
          v60 = 3;
          goto LABEL_46;
        case 13:
          goto LABEL_47;
        case 14:
          bspush_ca_scan(v1, 15);
          v57 = OUTLINED_FUNCTION_19_27();
          v60 = 1;
          goto LABEL_46;
        case 15:
          v57 = OUTLINED_FUNCTION_21_26();
          v59 = 3;
          v60 = 10;
LABEL_46:
          v69 = testFldeq(v57, v58, v59, v60);
          v18 = v22;
          if (v69)
          {
            continue;
          }

LABEL_47:
          v70 = advance_tok(v1);
          v18 = v22;
          if (v70)
          {
            continue;
          }

          starttest(v1, 16);
          v71 = OUTLINED_FUNCTION_15_32();
          if (lpta_loadp_setscan_r(v71, v72))
          {
            goto LABEL_3;
          }

          OUTLINED_FUNCTION_17_32();
          if (test_string_s())
          {
            goto LABEL_3;
          }

LABEL_50:
          v73 = chstream(v1, 17, 4u);
          v18 = v22;
          if (!v73)
          {
            v74 = OUTLINED_FUNCTION_21_26();
            v76 = testFldeq(v74, v75, 3, 10);
            v18 = v22;
            if (!v76)
            {
              v77 = advance_tok(v1);
              v18 = v22;
              if (!v77)
              {
                goto LABEL_3;
              }
            }
          }

          continue;
        case 17:
          goto LABEL_50;
        case 18:
LABEL_17:
          v33 = OUTLINED_FUNCTION_37_16();
          starttest(v33, v34);
          v35 = OUTLINED_FUNCTION_15_32();
          if (!lpta_loadp_setscan_l(v35, v36))
          {
            goto LABEL_18;
          }

          goto LABEL_3;
        case 19:
LABEL_22:
          savescptr(v1, 19, v87);
          v45 = OUTLINED_FUNCTION_21_26();
          v47 = testFldeq(v45, v46, 3, 9);
          v18 = v22;
          if (v47)
          {
            continue;
          }

          v48 = advance_tok(v1);
          v18 = v22;
          if (v48)
          {
            continue;
          }

          v49 = OUTLINED_FUNCTION_51_13();
          v51 = lpta_loadp_setscan_l(v49, v50);
          v18 = v22;
          if (v51)
          {
            continue;
          }

          v52 = advance_tok(v1);
          v18 = v22;
          if (v52)
          {
            continue;
          }

          v53 = OUTLINED_FUNCTION_21_26();
          v55 = 1;
          goto LABEL_34;
        case 21:
LABEL_18:
          v37 = OUTLINED_FUNCTION_41_14();
          savescptr(v37, v38, v87);
          goto LABEL_19;
        case 22:
LABEL_19:
          v39 = OUTLINED_FUNCTION_52_13();
          v41 = test_synch(v39, v40, 1u, &unk_28064B7B4);
          v18 = v22;
          if (v41)
          {
            continue;
          }

          v42 = OUTLINED_FUNCTION_51_13();
          v44 = lpta_loadp_setscan_r(v42, v43);
          v18 = v22;
          if (v44)
          {
            continue;
          }

          bspush_ca_scan(v1, 23);
          OUTLINED_FUNCTION_17_32();
LABEL_31:
          v61 = test_string_s();
          v18 = v22;
          if (v61)
          {
            continue;
          }

LABEL_32:
          v62 = chstream(v1, 24, 4u);
          v18 = v22;
          if (!v62)
          {
            v53 = OUTLINED_FUNCTION_21_26();
            v55 = 11;
LABEL_34:
            v63 = testFldeq(v53, v54, 2, v55);
            v18 = v22;
            if (!v63)
            {
              v64 = advance_tok(v1);
              v18 = v22;
              if (!v64)
              {
                goto LABEL_3;
              }
            }
          }

          continue;
        case 23:
          OUTLINED_FUNCTION_17_32();
          goto LABEL_31;
        case 24:
          goto LABEL_32;
        default:
          goto LABEL_3;
      }
    }
  }

LABEL_3:
  OUTLINED_FUNCTION_57_12();
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_48_14();
}

uint64_t other_liaison(uint64_t a1)
{
  OUTLINED_FUNCTION_14_33(*MEMORY[0x277D85DE8], v60);
  OUTLINED_FUNCTION_8_35(v3, v4, v5, v6, v7, v8, v9, v10, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115);
  v11 = setjmp(v1);
  if (v11)
  {
    goto LABEL_3;
  }

  v19 = OUTLINED_FUNCTION_1_38(v11, v12, v13, v14, v15, v16, v17, v18, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, *v108, v108[4], *v110, *&v110[4], v110[6], v112, SWORD2(v112), SBYTE6(v112), SHIBYTE(v112), v114, v116);
  if (v19)
  {
    goto LABEL_3;
  }

  v23 = 0;
  OUTLINED_FUNCTION_46_14(v19, v20, &null_str_13);
  v24 = OUTLINED_FUNCTION_9_34();
  starttest(v24, v25);
  v26 = OUTLINED_FUNCTION_2_37();
  if (!lpta_loadp_setscan_r(v26, v27))
  {
    v28 = OUTLINED_FUNCTION_3_37();
    if (testFldeq(v28, v29, v30, 27))
    {
      v23 = 0;
      goto LABEL_18;
    }

    v23 = 0;
    v31 = 0;
    if (advance_tok(a1))
    {
      goto LABEL_18;
    }

LABEL_14:
    v23 = v31;
    v41 = OUTLINED_FUNCTION_9_34();
    starttest(v41, v42);
    OUTLINED_FUNCTION_9_34();
    bspush_ca_boa();
    v43 = OUTLINED_FUNCTION_6_35();
    if (!lpta_loadp_setscan_r(v43, v44))
    {
      v45 = OUTLINED_FUNCTION_9_34();
      bspush_ca_scan(v45, v46);
      v47 = OUTLINED_FUNCTION_5_35();
      v50 = testFldeq(v47, v48, v49, 10);
      v51 = v31;
      if (!v50)
      {
LABEL_16:
        v23 = v51;
        if (!advance_tok(a1))
        {
          v23 = 1;
        }
      }
    }

    goto LABEL_18;
  }

  while (2)
  {
    v32 = OUTLINED_FUNCTION_9_34();
    starttest(v32, v33);
    v34 = OUTLINED_FUNCTION_15_32();
    if (lpta_loadp_setscan_r(v34, v35))
    {
LABEL_3:
      vretproc(a1);
      result = 94;
      break;
    }

    v36 = OUTLINED_FUNCTION_9_34();
    bspush_ca_scan(v36, v37);
    OUTLINED_FUNCTION_20_27();
    v38 = test_string_s();
    v39 = v23;
    if (!v38)
    {
LABEL_13:
      v23 = v39;
      *(a1 + 136) = 1;
      v40 = *(a1 + 1344);
      v31 = v39;
      if (OUTLINED_FUNCTION_30_21())
      {
        goto LABEL_18;
      }

      goto LABEL_14;
    }

LABEL_18:
    v31 = v23;
LABEL_19:
    v52 = *(a1 + 104);
    if (v52)
    {
      v53 = OUTLINED_FUNCTION_28_22(v52);
      v31 = v54;
    }

    else
    {
      v53 = vback(a1, v31);
      v31 = 0;
    }

    v39 = v31;
    v51 = v31;
    switch(v53)
    {
      case 1:
        v23 = v31;
        continue;
      case 2:
        goto LABEL_14;
      case 4:
        OUTLINED_FUNCTION_18_31();
        v55 = test_string_s();
        v39 = v31;
        if (!v55)
        {
          goto LABEL_13;
        }

        goto LABEL_19;
      case 5:
        goto LABEL_13;
      case 6:
        vretproc(a1);
        result = 0;
        break;
      case 7:
        bspop_boa(a1);
        goto LABEL_3;
      case 8:
        v56 = OUTLINED_FUNCTION_0_39();
        v59 = testFldeq(v56, v57, v58, 4);
        v51 = v31;
        if (!v59)
        {
          goto LABEL_16;
        }

        goto LABEL_19;
      case 9:
        goto LABEL_16;
      default:
        goto LABEL_3;
    }

    break;
  }

  v22 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t tout_liaison(uint64_t a1)
{
  v163 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_24_25();
  bzero(&v135, v3);
  OUTLINED_FUNCTION_8_35(v4, v5, v6, v7, v8, v9, v10, v11, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162);
  v12 = setjmp(v1);
  if (v12)
  {
    goto LABEL_3;
  }

  v20 = OUTLINED_FUNCTION_1_38(v12, v13, v14, v15, v16, v17, v18, v19, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, SBYTE4(v158), v159, SWORD2(v159), SBYTE6(v159), v160, SWORD2(v160), SBYTE6(v160), SHIBYTE(v160), v161, v162);
  if (v20)
  {
    goto LABEL_3;
  }

  LODWORD(v25) = 0;
  OUTLINED_FUNCTION_46_14(v20, v21, &null_str_13);
  v26 = OUTLINED_FUNCTION_21_26();
  fence_36(v26, v27, v28);
  v29 = OUTLINED_FUNCTION_40_15();
  starttest(v29, v30);
  v31 = OUTLINED_FUNCTION_2_37();
  if (!lpta_loadp_setscan_r(v31, v32))
  {
    OUTLINED_FUNCTION_29_22();
    bspush_ca_scan_boa();
    v94 = OUTLINED_FUNCTION_10_34();
    LODWORD(v25) = !testFldeq(v94, v95, 0, 28) && !advance_tok(a1);
    goto LABEL_74;
  }

LABEL_6:
  v33 = OUTLINED_FUNCTION_13_33();
  if (!lpta_loadp_setscan_r(v33, v34))
  {
    v35 = v25;
    if (!advance_tok(a1))
    {
LABEL_8:
      LODWORD(v25) = v35;
      savescptr(a1, 4, a1 + 1912);
    }
  }

LABEL_9:
  v36 = OUTLINED_FUNCTION_9_34();
  starttest(v36, v37);
  if (!lpta_loadp_setscan_l(a1, a1 + 1752))
  {
    v59 = OUTLINED_FUNCTION_9_34();
    bspush_ca_scan(v59, v60);
    OUTLINED_FUNCTION_7_35();
    v61 = test_string_s();
    v62 = v25;
    if (v61)
    {
      goto LABEL_74;
    }

LABEL_20:
    LODWORD(v25) = v62;
    OUTLINED_FUNCTION_20_27();
    v35 = v25;
    if (test_string_s())
    {
      goto LABEL_74;
    }

LABEL_21:
    LODWORD(v25) = v35;
    v63 = OUTLINED_FUNCTION_9_34();
    if (test_synch(v63, v64, 1u, v65))
    {
      goto LABEL_74;
    }

    goto LABEL_3;
  }

LABEL_10:
  v38 = OUTLINED_FUNCTION_9_34();
  starttest(v38, v39);
  v40 = OUTLINED_FUNCTION_6_35();
  if (lpta_loadp_setscan_r(v40, v41))
  {
LABEL_11:
    v42 = OUTLINED_FUNCTION_9_34();
    starttest(v42, v43);
    v44 = OUTLINED_FUNCTION_13_33();
    if (lpta_loadp_setscan_l(v44, v45))
    {
      v46 = v25;
LABEL_13:
      v47 = OUTLINED_FUNCTION_9_34();
      starttest(v47, v48);
      v49 = OUTLINED_FUNCTION_6_35();
      if (!lpta_loadp_setscan_r(v49, v50))
      {
        v87 = OUTLINED_FUNCTION_9_34();
        bspush_ca_scan(v87, v88);
        v89 = OUTLINED_FUNCTION_0_39();
        v92 = testFldeq(v89, v90, v91, 2);
        LODWORD(v25) = v46;
        v93 = v46;
        if (v92)
        {
          goto LABEL_74;
        }

        goto LABEL_85;
      }

      LODWORD(v25) = v46;
LABEL_15:
      v51 = OUTLINED_FUNCTION_9_34();
      starttest(v51, v52);
      v53 = OUTLINED_FUNCTION_6_35();
      if (lpta_loadp_setscan_r(v53, v54))
      {
        goto LABEL_3;
      }

      goto LABEL_16;
    }

    v80 = OUTLINED_FUNCTION_0_39();
    if (testFldeq(v80, v81, v82, 6))
    {
      goto LABEL_74;
    }

    v83 = OUTLINED_FUNCTION_3_37();
    v86 = 19;
LABEL_61:
    if (testFldeq(v83, v84, v85, v86) || advance_tok(a1))
    {
      goto LABEL_74;
    }

    goto LABEL_3;
  }

  v66 = OUTLINED_FUNCTION_0_39();
  if (testFldeq(v66, v67, v68, 8) || advance_tok(a1))
  {
    goto LABEL_74;
  }

  v69 = OUTLINED_FUNCTION_9_34();
  starttest(v69, v70);
  v71 = OUTLINED_FUNCTION_6_35();
  if (lpta_loadp_setscan_r(v71, v72))
  {
LABEL_46:
    v100 = OUTLINED_FUNCTION_16_32();
    if (lpta_loadp_setscan_r(v100, v101) || (OUTLINED_FUNCTION_7_35(), test_string_s()))
    {
      v102 = v25;
LABEL_68:
      v115 = OUTLINED_FUNCTION_16_32();
      if (!lpta_loadp_setscan_r(v115, v116))
      {
        OUTLINED_FUNCTION_11_34();
        if (!test_string_s())
        {
          *(a1 + 136) = v25;
          v117 = *(a1 + 1792);
          if (!OUTLINED_FUNCTION_30_21())
          {
            v118 = OUTLINED_FUNCTION_9_34();
            starttest_l(v118, v119);
            OUTLINED_FUNCTION_9_34();
            bspush_ca_boa();
            lpta_loadpn(a1, a1 + 1848);
            OUTLINED_FUNCTION_56_12();
            if (compare_ptas(a1) || testneq(a1))
            {
              LODWORD(v25) = v102;
            }

            else
            {
              lpta_rpta_loadp(a1, a1 + 1832, a1 + 1848);
              v133 = OUTLINED_FUNCTION_20_27();
              if (setd_lookup(v133, v134, 7))
              {
                LODWORD(v25) = v102;
              }

              else
              {
                LODWORD(v25) = 1;
              }
            }

            goto LABEL_74;
          }
        }
      }

      goto LABEL_3;
    }

    lpta_loadpn(a1, a1 + 1848);
    OUTLINED_FUNCTION_56_12();
    if (compare_ptas(a1) || testneq(a1) || (lpta_rpta_loadp(a1, a1 + 1832, a1 + 1848), v103 = OUTLINED_FUNCTION_20_27(), setd_lookup(v103, v104, 6)))
    {
LABEL_54:
      lpta_loadpn(a1, a1 + 1912);
      OUTLINED_FUNCTION_56_12();
      if (compare_ptas(a1) || testneq(a1) || (lpta_rpta_loadp(a1, a1 + 1832, a1 + 1912), v105 = OUTLINED_FUNCTION_20_27(), setd_lookup(v105, v106, 6)))
      {
LABEL_59:
        v107 = OUTLINED_FUNCTION_9_34();
        starttest(v107, v108);
        v109 = OUTLINED_FUNCTION_13_33();
        if (!lpta_loadp_setscan_l(v109, v110))
        {
          v83 = OUTLINED_FUNCTION_0_39();
          v86 = 1;
          goto LABEL_61;
        }

LABEL_65:
        v111 = OUTLINED_FUNCTION_9_34();
        starttest(v111, v112);
        v113 = OUTLINED_FUNCTION_13_33();
        if (!lpta_loadp_setscan_l(v113, v114))
        {
          v83 = OUTLINED_FUNCTION_5_35();
          v86 = 10;
          goto LABEL_61;
        }
      }
    }

LABEL_41:
    v22 = 0;
    goto LABEL_4;
  }

  v73 = OUTLINED_FUNCTION_3_37();
  if (testFldeq(v73, v74, v75, 18) || advance_tok(a1))
  {
    goto LABEL_74;
  }

  v76 = OUTLINED_FUNCTION_9_34();
  starttest(v76, v77);
  v78 = OUTLINED_FUNCTION_2_37();
  if (!lpta_loadp_setscan_r(v78, v79))
  {
LABEL_16:
    v55 = OUTLINED_FUNCTION_0_39();
    v58 = 3;
LABEL_17:
    if (testFldeq(v55, v56, v57, v58))
    {
      goto LABEL_74;
    }

    while (advance_tok(a1))
    {
LABEL_74:
      v35 = v25;
      v25 = &unk_28064B7B4;
      do
      {
        while (2)
        {
          v120 = *(a1 + 104);
          if (v120)
          {
            v121 = OUTLINED_FUNCTION_28_22(v120);
            v35 = v122;
          }

          else
          {
            v121 = vback(a1, v35);
            v35 = 0;
          }

          v62 = v35;
          v93 = v35;
          switch(v121)
          {
            case 1:
              LODWORD(v25) = v35;
              goto LABEL_6;
            case 2:
            case 23:
              bspop_boa(a1);
              goto LABEL_3;
            case 3:
              LODWORD(v25) = v35;
              goto LABEL_9;
            case 4:
              goto LABEL_8;
            case 5:
              LODWORD(v25) = v35;
              goto LABEL_10;
            case 6:
              OUTLINED_FUNCTION_7_35();
              v123 = test_string_s();
              v62 = v35;
              if (!v123)
              {
                goto LABEL_20;
              }

              continue;
            case 7:
              goto LABEL_20;
            case 8:
              goto LABEL_21;
            case 9:
            case 13:
            case 15:
            case 18:
            case 22:
              goto LABEL_41;
            case 10:
              LODWORD(v25) = v35;
              goto LABEL_11;
            case 11:
              LODWORD(v25) = v35;
              goto LABEL_46;
            case 12:
              LODWORD(v25) = v35;
              goto LABEL_43;
            case 16:
              v102 = v35;
              goto LABEL_68;
            case 17:
              LODWORD(v25) = v35;
              goto LABEL_54;
            case 19:
              LODWORD(v25) = v35;
              goto LABEL_59;
            case 20:
              LODWORD(v25) = v35;
              goto LABEL_65;
            case 24:
              v46 = v35;
              goto LABEL_13;
            case 25:
              LODWORD(v25) = v35;
              goto LABEL_15;
            case 26:
              v128 = OUTLINED_FUNCTION_45_14();
              bspush_ca_scan(v128, v129);
              v124 = OUTLINED_FUNCTION_3_37();
              v127 = 2;
              break;
            case 27:
              goto LABEL_85;
            case 28:
              v130 = OUTLINED_FUNCTION_37_16();
              bspush_ca_scan(v130, v131);
              v124 = OUTLINED_FUNCTION_3_37();
              v127 = 1;
              break;
            case 29:
              v124 = OUTLINED_FUNCTION_0_39();
              v127 = 6;
              break;
            default:
              goto LABEL_3;
          }

          break;
        }

        v132 = testFldeq(v124, v125, v126, v127);
        v93 = v35;
      }

      while (v132);
LABEL_85:
      LODWORD(v25) = v93;
    }

    goto LABEL_41;
  }

LABEL_43:
  v96 = OUTLINED_FUNCTION_9_34();
  starttest(v96, v97);
  v98 = OUTLINED_FUNCTION_13_33();
  if (!lpta_loadp_setscan_l(v98, v99))
  {
    v55 = OUTLINED_FUNCTION_0_39();
    v58 = 2;
    goto LABEL_17;
  }

LABEL_3:
  v22 = 94;
LABEL_4:
  vretproc(a1);
  v23 = *MEMORY[0x277D85DE8];
  return v22;
}

uint64_t insert_clitic_vowel(uint64_t a1)
{
  OUTLINED_FUNCTION_14_33(*MEMORY[0x277D85DE8], v43);
  OUTLINED_FUNCTION_8_35(v3, v4, v5, v6, v7, v8, v9, v10, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98);
  v11 = setjmp(v1);
  if (!v11 && !OUTLINED_FUNCTION_1_38(v11, v12, v13, v14, v15, v16, v17, v18, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, *v91, v91[4], *v93, *&v93[4], v93[6], v95, SWORD2(v95), SBYTE6(v95), SHIBYTE(v95), v97, v99))
  {
    fence_36(a1, 0, &null_str_13);
    v19 = OUTLINED_FUNCTION_11_34();
    fence_36(v19, v20, v21);
    v22 = OUTLINED_FUNCTION_31_20();
    starttest(v22, v23);
    v24 = OUTLINED_FUNCTION_13_33();
    if (!lpta_loadp_setscan_l(v24, v25))
    {
      v29 = OUTLINED_FUNCTION_10_34();
      if (testFldeq(v29, v30, 4, 1) || advance_tok(a1))
      {
        goto LABEL_8;
      }

      v36 = OUTLINED_FUNCTION_29_22();
      starttest(v36, v37);
      v38 = OUTLINED_FUNCTION_32_19();
      if (lpta_loadp_setscan_r(v38, v39))
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_9_34();
      bspush_ca_scan_boa();
      v40 = OUTLINED_FUNCTION_4_36();
      if (testFldeq(v40, v41, v42, 1))
      {
LABEL_8:
        v31 = 0;
      }

      else
      {
        v31 = !advance_tok(a1);
      }

      v32 = *(a1 + 104);
      if (v32)
      {
        v33 = OUTLINED_FUNCTION_28_22(v32);
      }

      else
      {
        v33 = vback(a1, v31);
      }

      if (v33 != 2 && v33 != 4)
      {
        if (v33 == 3)
        {
          bspop_boa(a1);
          *(a1 + 168) = 1;
          *(a1 + 144) = *(a1 + 1344);
          *(a1 + 128) = 0;
          v26 = 0;
          v35 = OUTLINED_FUNCTION_22_25();
          insert_l(v35);
          goto LABEL_5;
        }

        goto LABEL_4;
      }

LABEL_17:
      v26 = 0;
      goto LABEL_5;
    }
  }

LABEL_4:
  v26 = 94;
LABEL_5:
  vretproc(a1);
  v27 = *MEMORY[0x277D85DE8];
  return v26;
}