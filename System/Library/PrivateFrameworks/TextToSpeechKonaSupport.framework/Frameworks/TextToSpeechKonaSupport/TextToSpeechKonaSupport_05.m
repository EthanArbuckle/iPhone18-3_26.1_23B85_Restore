void OUTLINED_FUNCTION_0_19(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  a34 = 0;
  a35 = 0;
  a32 = 0;
  a33 = 0;

  bzero(&a9, 0xB8uLL);
}

void OUTLINED_FUNCTION_12_17()
{
  *(v0 + 3602) = v1;

  npop(v0, (v0 + 3600));
}

uint64_t OUTLINED_FUNCTION_16_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  *(v39 + 112) = a39;
  *(v39 + 128) = 0;
  return v39;
}

void OUTLINED_FUNCTION_18_13(uint64_t a1, uint64_t a2)
{

  get_parm(a1, a2, v2, -6);
}

double OUTLINED_FUNCTION_19_12@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{

  *&result = savescptr(v27, a1, &a27).n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_20_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 3698) = v9;

  return npush_v(v8, (v8 + 3696), a3, a4, a5, a6, a7, a8);
}

void OUTLINED_FUNCTION_21_11(uint64_t a1, uint64_t a2)
{

  get_parm(a1, a2, v2, -6);
}

uint64_t OUTLINED_FUNCTION_22_11()
{

  return vback(v0, 0);
}

void *fence_20(uint64_t a1, int a2, uint64_t a3)
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

void token_to_number()
{
  OUTLINED_FUNCTION_71_2();
  OUTLINED_FUNCTION_6_18();
  v64 = *MEMORY[0x277D85DE8];
  v58 = 0uLL;
  v59 = 0;
  v57 = 0;
  v54 = 0;
  v55 = 0;
  v56 = 0;
  OUTLINED_FUNCTION_26_11();
  bzero(v53, v2);
  OUTLINED_FUNCTION_25_11();
  bzero(v63, v3);
  if (!setjmp(v63) && !ventproc(v0, v53, v62, v61, v60, v63))
  {
    v58 = *v1;
    v59 = *(v1 + 2);
    LODWORD(v58) = -65535;
    v5 = OUTLINED_FUNCTION_30_7();
    get_parm(v5, v6, v7, -4);
    WORD2(v56) = 0;
    LODWORD(v56) = 0;
    LODWORD(v54) = -65535;
    fence_20(v0, 0, &_MergedGlobals_1_1);
    v8 = OUTLINED_FUNCTION_14_16();
    starttest(v8, v9);
    OUTLINED_FUNCTION_27_9();
    settvar_s();
    v10 = OUTLINED_FUNCTION_27_9();
    if (testeq_tvars(v10, v11, v12))
    {
      while (2)
      {
        v13 = *(v0 + 104);
        if (v13)
        {
          v14 = OUTLINED_FUNCTION_33_6(v13);
        }

        else
        {
          v14 = OUTLINED_FUNCTION_51_2();
        }

        switch(v14)
        {
          case 1:
            starttest(v0, 3);
            OUTLINED_FUNCTION_24_12();
            settvar_s();
            v15 = OUTLINED_FUNCTION_19_13();
            if (testeq_tvars(v15, v16, v17))
            {
              continue;
            }

            v52 = 1;
            goto LABEL_29;
          case 2:
            v52 = HIWORD(v57);
            goto LABEL_30;
          case 3:
            starttest(v0, 4);
            OUTLINED_FUNCTION_24_12();
            settvar_s();
            v26 = OUTLINED_FUNCTION_19_13();
            if (testeq_tvars(v26, v27, v28))
            {
              continue;
            }

            v52 = 2;
            goto LABEL_29;
          case 4:
            starttest(v0, 5);
            OUTLINED_FUNCTION_24_12();
            settvar_s();
            v23 = OUTLINED_FUNCTION_19_13();
            if (testeq_tvars(v23, v24, v25))
            {
              continue;
            }

            v52 = 3;
            goto LABEL_29;
          case 5:
            v47 = OUTLINED_FUNCTION_49_2();
            starttest(v47, v48);
            OUTLINED_FUNCTION_24_12();
            settvar_s();
            v49 = OUTLINED_FUNCTION_19_13();
            if (testeq_tvars(v49, v50, v51))
            {
              continue;
            }

            v52 = 4;
            goto LABEL_29;
          case 6:
            v42 = OUTLINED_FUNCTION_53_2();
            starttest(v42, v43);
            OUTLINED_FUNCTION_24_12();
            settvar_s();
            v44 = OUTLINED_FUNCTION_19_13();
            if (testeq_tvars(v44, v45, v46))
            {
              continue;
            }

            v52 = 5;
            goto LABEL_29;
          case 7:
            starttest(v0, 8);
            OUTLINED_FUNCTION_24_12();
            settvar_s();
            v29 = OUTLINED_FUNCTION_19_13();
            if (testeq_tvars(v29, v30, v31))
            {
              continue;
            }

            v52 = 6;
            goto LABEL_29;
          case 8:
            v32 = OUTLINED_FUNCTION_82_2();
            starttest(v32, v33);
            OUTLINED_FUNCTION_24_12();
            settvar_s();
            v34 = OUTLINED_FUNCTION_19_13();
            if (testeq_tvars(v34, v35, v36))
            {
              continue;
            }

            v52 = 7;
            goto LABEL_29;
          case 9:
            v18 = OUTLINED_FUNCTION_27_9();
            starttest(v18, v19);
            OUTLINED_FUNCTION_24_12();
            settvar_s();
            v20 = OUTLINED_FUNCTION_19_13();
            if (testeq_tvars(v20, v21, v22))
            {
              continue;
            }

            v52 = 8;
            goto LABEL_29;
          case 10:
            v37 = OUTLINED_FUNCTION_29_8();
            starttest(v37, v38);
            OUTLINED_FUNCTION_24_12();
            settvar_s();
            v39 = OUTLINED_FUNCTION_19_13();
            if (testeq_tvars(v39, v40, v41))
            {
              continue;
            }

            v52 = 9;
LABEL_29:
            HIWORD(v57) = v52;
            goto LABEL_30;
          default:
            goto LABEL_3;
        }
      }
    }

    v52 = 0;
    HIWORD(v57) = 0;
LABEL_30:
    OUTLINED_FUNCTION_62_2(v52);
  }

LABEL_3:
  vretproc(v0);
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_70_2();
}

void string_to_short()
{
  OUTLINED_FUNCTION_71_2();
  OUTLINED_FUNCTION_31_7();
  v62 = *MEMORY[0x277D85DE8];
  v49 = 0;
  v50 = 0;
  v47 = 0;
  v48 = 0;
  v45 = 0;
  v46 = 0;
  v44 = 0;
  OUTLINED_FUNCTION_26_11();
  bzero(v43, v3);
  OUTLINED_FUNCTION_25_11();
  bzero(v61, v4);
  v5 = setjmp(v61);
  if (v5 || OUTLINED_FUNCTION_67_2(v5, v6, v7, v8, v9, v10, v11, v12, v43[0], v43[1], v43[2], v43[3], v43[4], v43[5], v43[6], v43[7], v43[8], v43[9], v43[10], v43[11], v43[12], v43[13], v43[14], v43[15], v43[16], v43[17], v43[18], v43[19], v43[20], v43[21], v43[22], v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61[0]))
  {
LABEL_3:
    vretproc(v0);
  }

  else
  {
    v14 = OUTLINED_FUNCTION_27_9();
    OUTLINED_FUNCTION_73_2(v14, v15);
    v16 = OUTLINED_FUNCTION_46_2();
    OUTLINED_FUNCTION_57_2(v16, v17);
    v18 = OUTLINED_FUNCTION_30_7();
    get_parm(v18, v19, v20, -4);
    LOWORD(v46) = -4;
    v21 = OUTLINED_FUNCTION_24_12();
    v23 = push_ptr_init(v21, v22);
    OUTLINED_FUNCTION_52_2(v23, v24, &_MergedGlobals_1_1);
    WORD1(v46) = 0;
    HIWORD(v46) = 0;
    v45 = v48;
    v25 = OUTLINED_FUNCTION_60_2();
    startloop(v25, v26);
    v27 = 1;
    OUTLINED_FUNCTION_77_2();
    while (2)
    {
      while (1)
      {
        v28 = OUTLINED_FUNCTION_60_2();
        bspush_ca(v28);
        v29 = OUTLINED_FUNCTION_24_12();
        lpta_loadpn(v29, v30);
        v31 = OUTLINED_FUNCTION_27_9();
        rpta_loadpn(v31, v32);
        if (compare_ptas(v0) || testneq(v0))
        {
          break;
        }

LABEL_12:
        OUTLINED_FUNCTION_24_12();
        token_to_digit();
LABEL_13:
        HIWORD(v46) += WORD1(v46) * v27;
        v27 = (10 * v27);
        v35 = OUTLINED_FUNCTION_24_12();
        if (!lpta_loadp_setscan_l(v35, v36))
        {
          v37 = advance_tok(v0);
          v38 = v27;
          if (!v37)
          {
LABEL_17:
            v27 = v38;
            v39 = OUTLINED_FUNCTION_53_2();
            savescptr(v39, v40, &v44);
          }
        }

LABEL_18:
        v41 = OUTLINED_FUNCTION_60_2();
        while_iterate(v41, v42, v2);
      }

      v33 = v0[13];
      if (v33)
      {
        v34 = OUTLINED_FUNCTION_33_6(v33);
      }

      else
      {
        v34 = vback(v0, 0);
      }

      switch(v34)
      {
        case 1:
          *(v1 + 2) = HIWORD(v46);
          vretproc(v0);
          break;
        case 2:
          goto LABEL_12;
        case 3:
          goto LABEL_13;
        case 4:
          goto LABEL_18;
        case 5:
          v38 = v27;
          goto LABEL_17;
        case 6:
          continue;
        default:
          goto LABEL_3;
      }

      break;
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_70_2();
}

uint64_t token_to_digit()
{
  OUTLINED_FUNCTION_6_18();
  v88 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_22_12(v2, v3, v4, v5, v6, v7, v8, v9, v54, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, SHIDWORD(v80), v81, v82);
  OUTLINED_FUNCTION_20_12(v10, v11, v12, v13, v14, v15, v16, v17, v55, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87);
  v18 = setjmp(v1);
  if (!v18 && !OUTLINED_FUNCTION_8_18(v18, &v57, v19, v20, v21, v22, v23, v24, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, SBYTE4(v83), v84, SWORD2(v84), SBYTE6(v84), v85, SWORD2(v85), SBYTE6(v85), SHIBYTE(v85), v86, v87))
  {
    v27 = OUTLINED_FUNCTION_0_20();
    get_parm(v27, v28, v29, -6);
    v30 = OUTLINED_FUNCTION_30_7();
    get_parm(v30, v31, v32, -4);
    fence_20(v0, 0, &_MergedGlobals_1_1);
    v33 = OUTLINED_FUNCTION_24_12();
    if (lpta_loadp_setscan_l(v33, v34) || (OUTLINED_FUNCTION_9_18(), test_string_s()))
    {
      v35 = OUTLINED_FUNCTION_21_12();
      if (lpta_loadp_setscan_l(v35, v36) || test_string_s())
      {
        v37 = OUTLINED_FUNCTION_21_12();
        if (lpta_loadp_setscan_l(v37, v38) || (OUTLINED_FUNCTION_9_18(), test_string_s()))
        {
          v39 = OUTLINED_FUNCTION_21_12();
          if (lpta_loadp_setscan_l(v39, v40) || (OUTLINED_FUNCTION_9_18(), test_string_s()))
          {
            v41 = OUTLINED_FUNCTION_21_12();
            if (lpta_loadp_setscan_l(v41, v42) || (OUTLINED_FUNCTION_9_18(), test_string_s()))
            {
              v43 = OUTLINED_FUNCTION_21_12();
              if (lpta_loadp_setscan_l(v43, v44) || (OUTLINED_FUNCTION_9_18(), test_string_s()))
              {
                v45 = OUTLINED_FUNCTION_21_12();
                if (lpta_loadp_setscan_l(v45, v46) || (OUTLINED_FUNCTION_9_18(), test_string_s()))
                {
                  v47 = OUTLINED_FUNCTION_21_12();
                  if (lpta_loadp_setscan_l(v47, v48) || (OUTLINED_FUNCTION_9_18(), test_string_s()))
                  {
                    v49 = OUTLINED_FUNCTION_21_12();
                    if (lpta_loadp_setscan_l(v49, v50) || (OUTLINED_FUNCTION_9_18(), test_string_s()))
                    {
                      v51 = OUTLINED_FUNCTION_21_12();
                      if (lpta_loadp_setscan_l(v51, v52))
                      {
                        goto LABEL_3;
                      }

                      OUTLINED_FUNCTION_9_18();
                      if (test_string_s())
                      {
                        goto LABEL_3;
                      }

                      v53 = 9;
                    }

                    else
                    {
                      v53 = 8;
                    }
                  }

                  else
                  {
                    v53 = 7;
                  }
                }

                else
                {
                  v53 = 6;
                }
              }

              else
              {
                v53 = 5;
              }
            }

            else
            {
              v53 = 4;
            }
          }

          else
          {
            v53 = 3;
          }
        }

        else
        {
          v53 = 2;
        }
      }

      else
      {
        v53 = 1;
      }
    }

    else
    {
      v53 = 0;
    }

    HIWORD(v80) = v53;
    OUTLINED_FUNCTION_62_2(v53);
  }

LABEL_3:
  vretproc(v0);
  v25 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_40_2();
}

void string_to_number()
{
  OUTLINED_FUNCTION_71_2();
  OUTLINED_FUNCTION_31_7();
  v54 = *MEMORY[0x277D85DE8];
  v48 = 0;
  v49 = 0;
  v46 = 0;
  v47 = 0;
  v44 = 0;
  v45 = 0;
  v43 = 0;
  OUTLINED_FUNCTION_15_16(v3, v4, v5, v6, v7, v8, v9, v10, v40[0], v40[1], v40[2], v40[3], v40[4], v40[5], v40[6], v40[7], v40[8], v40[9], v40[10], v40[11], v40[12], v40[13], v40[14], v40[15], v40[16], v40[17], v40[18], v40[19], v40[20], v40[21], v40[22], v41, v42);
  OUTLINED_FUNCTION_25_11();
  bzero(v53, v11);
  if (setjmp(v53) || ventproc(v0, v40, v52, v51, v50, v53))
  {
LABEL_3:
    vretproc(v0);
  }

  else
  {
    v13 = OUTLINED_FUNCTION_27_9();
    OUTLINED_FUNCTION_73_2(v13, v14);
    OUTLINED_FUNCTION_57_2(v0, &v46);
    v15 = OUTLINED_FUNCTION_30_7();
    get_parm(v15, v16, v17, -3);
    LOWORD(v43) = -4;
    v18 = OUTLINED_FUNCTION_24_12();
    v20 = push_ptr_init(v18, v19);
    OUTLINED_FUNCTION_52_2(v20, v21, &_MergedGlobals_1_1);
    HIWORD(v43) = 0;
    v45 = 0;
    v42 = v47;
    v22 = 1;
    v23 = OUTLINED_FUNCTION_82_2();
    startloop(v23, v24);
    OUTLINED_FUNCTION_77_2();
    while (2)
    {
      while (1)
      {
        v25 = OUTLINED_FUNCTION_60_2();
        bspush_ca(v25);
        v26 = OUTLINED_FUNCTION_24_12();
        lpta_loadpn(v26, v27);
        v28 = OUTLINED_FUNCTION_27_9();
        rpta_loadpn(v28, v29);
        if (compare_ptas(v0) || testneq(v0))
        {
          break;
        }

LABEL_12:
        OUTLINED_FUNCTION_24_12();
        token_to_digit();
LABEL_13:
        v45 += v22 * SHIWORD(v43);
        v22 *= 10;
        v32 = OUTLINED_FUNCTION_24_12();
        if (!lpta_loadp_setscan_l(v32, v33))
        {
          v34 = advance_tok(v0);
          v35 = v22;
          if (!v34)
          {
LABEL_17:
            v22 = v35;
            v36 = OUTLINED_FUNCTION_53_2();
            savescptr(v36, v37, &v41);
          }
        }

LABEL_18:
        v38 = OUTLINED_FUNCTION_60_2();
        while_iterate(v38, v39, v2);
      }

      v30 = v0[13];
      if (v30)
      {
        v0[13] = 0;
        v31 = v30;
      }

      else
      {
        v31 = vback(v0, 0);
      }

      switch(v31)
      {
        case 1:
          *(v1 + 8) = v45;
          vretproc(v0);
          break;
        case 2:
          goto LABEL_12;
        case 3:
          goto LABEL_13;
        case 4:
          goto LABEL_18;
        case 5:
          v35 = v22;
          goto LABEL_17;
        case 6:
          continue;
        default:
          goto LABEL_3;
      }

      break;
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_70_2();
}

uint64_t absval()
{
  OUTLINED_FUNCTION_6_18();
  v37 = *MEMORY[0x277D85DE8];
  HIDWORD(v25) = 0;
  v26 = 0;
  OUTLINED_FUNCTION_26_11();
  bzero(v24, v3);
  OUTLINED_FUNCTION_25_11();
  bzero(v36, v4);
  v5 = setjmp(v36);
  if (v5 || OUTLINED_FUNCTION_35_4(v5, v24, v6, v7, v8, v9, v10, v11, v23, v24[0], v24[1], v24[2], v24[3], v24[4], v24[5], v24[6], v24[7], v24[8], v24[9], v24[10], v24[11], v24[12], v24[13], v24[14], v24[15], v24[16], v24[17], v24[18], v24[19], v24[20], v24[21], v24[22], v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36[0]))
  {
    v12 = 94;
  }

  else
  {
    v15 = OUTLINED_FUNCTION_38_4();
    get_parm(v15, v16, v2, -4);
    v17 = OUTLINED_FUNCTION_30_7();
    get_parm(v17, v18, v19, -4);
    OUTLINED_FUNCTION_52_2(v20, v21, &_MergedGlobals_1_1);
    LOWORD(v22) = HIWORD(v26);
    if (v26 < 0)
    {
      v22 = -SHIWORD(v26);
    }

    HIWORD(v25) = v22;
    *(v1 + 2) = v22;
    v12 = 0;
  }

  vretproc(v0);
  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t find_last_syll()
{
  OUTLINED_FUNCTION_7_18();
  v91 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_18(v3, v4, v5, v6, v7, v8, v9, v10, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v87, v88);
  OUTLINED_FUNCTION_25_11();
  bzero(v90, v11);
  if (setjmp(v90) || (OUTLINED_FUNCTION_18_14(), ventproc(v0, v12, v13, v14, v15, v90)))
  {
LABEL_3:
    vretproc(v0);
    result = 94;
  }

  else
  {
    v18 = OUTLINED_FUNCTION_10_18();
    get_parm(v18, v19, v20, -6);
    v21 = OUTLINED_FUNCTION_38_4();
    OUTLINED_FUNCTION_50_2(v21, v22);
    v23 = OUTLINED_FUNCTION_30_7();
    get_parm(v23, v24, v25, -6);
    OUTLINED_FUNCTION_52_2(v26, v27, &_MergedGlobals_1_1);
    v28 = OUTLINED_FUNCTION_60_2();
    starttest(v28, v29);
    v30 = OUTLINED_FUNCTION_29_8();
    v32 = lpta_loadp_setscan_l(v30, v31);
    v33 = 0;
    v34 = 0;
    if (v32)
    {
      goto LABEL_19;
    }

LABEL_6:
    v35 = v33;
    bspush_ca_scan(v0, 2);
    OUTLINED_FUNCTION_16_16();
    bspush_ca_scan_boa();
    v36 = OUTLINED_FUNCTION_42_2();
    if (testFldeq(v36, v37, 1, 2))
    {
      v38 = v35;
    }

    else
    {
      v38 = 1;
    }

    while (1)
    {
      v39 = *(v0 + 104);
      if (v39)
      {
        v40 = OUTLINED_FUNCTION_33_6(v39);
        v34 = v41;
      }

      else
      {
        v40 = vback(v0, v38);
        v34 = 0;
      }

      v33 = v34;
      switch(v40)
      {
        case 1:
          goto LABEL_19;
        case 2:
          v42 = OUTLINED_FUNCTION_42_2();
          v44 = testFldeq(v42, v43, 1, 2);
          v38 = v34;
          if (v44)
          {
            continue;
          }

          v45 = advance_tok(v0);
          v38 = v34;
          if (v45)
          {
            continue;
          }

          break;
        case 3:
          bspop_boa(v0);
          v46 = advance_tok(v0);
          v33 = v34;
          v38 = v34;
          if (!v46)
          {
            goto LABEL_6;
          }

          continue;
        case 4:
          goto LABEL_6;
        case 5:
          break;
        case 6:
          goto LABEL_23;
        case 7:
          goto LABEL_21;
        case 8:
          goto LABEL_22;
        default:
          goto LABEL_3;
      }

      v47 = OUTLINED_FUNCTION_69_2();
      savescptr(v47, v48, v49);
LABEL_19:
      v50 = OUTLINED_FUNCTION_28_8();
      starttest(v50, v51);
      *(v0 + 136) = 1;
      OUTLINED_FUNCTION_13_18();
      if (lpta_tstctxtl())
      {
        break;
      }

      v52 = OUTLINED_FUNCTION_36_4();
      setscan_r(v52);
      if (v53)
      {
        break;
      }

LABEL_21:
      v54 = OUTLINED_FUNCTION_69_2();
      savescptr(v54, v55, v56);
      v57 = advance_tok(v0);
      v38 = v34;
      if (!v57)
      {
LABEL_22:
        v58 = OUTLINED_FUNCTION_63_2();
        savescptr(v58, v59, v60);
        break;
      }
    }

LABEL_23:
    *(v2 + 8) = v89;
    *(v1 + 8) = v86;
    vretproc(v0);
    result = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return result;
}

void get_numRootSylls()
{
  OUTLINED_FUNCTION_71_2();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v55 = *MEMORY[0x277D85DE8];
  v50[0] = 0;
  v50[1] = 0;
  v48 = 0;
  v49 = 0;
  v47 = 0;
  v45 = 0;
  v46 = 0;
  memset(v44, 0, sizeof(v44));
  v43[0] = 0;
  v43[1] = 0;
  OUTLINED_FUNCTION_26_11();
  bzero(v42, v6);
  OUTLINED_FUNCTION_25_11();
  bzero(v54, v7);
  if (!setjmp(v54) && !ventproc(v5, v42, v53, v52, v51, v54))
  {
    OUTLINED_FUNCTION_73_2(v5, v50);
    v9 = OUTLINED_FUNCTION_10_18();
    get_parm(v9, v10, v11, -6);
    v12 = OUTLINED_FUNCTION_43_2();
    get_parm(v12, v13, v14, -4);
    v15 = OUTLINED_FUNCTION_41_2();
    get_parm(v15, v16, v1, -6);
    v17 = OUTLINED_FUNCTION_24_12();
    push_ptr_init(v17, v18);
    v19 = OUTLINED_FUNCTION_49_2();
    push_ptr_init(v19, v20);
    v21 = OUTLINED_FUNCTION_53_2();
    v23 = push_ptr_init(v21, v22);
    OUTLINED_FUNCTION_52_2(v23, v24, &_MergedGlobals_1_1);
    HIWORD(v47) = 0;
    OUTLINED_FUNCTION_10_18();
    find_last_syll();
    while (2)
    {
      v25 = OUTLINED_FUNCTION_82_2();
      startloop(v25, v26);
      v27 = OUTLINED_FUNCTION_49_2();
      copyvar(v27, v28, v50);
      v29 = OUTLINED_FUNCTION_53_2();
      copyvar(v29, v30, &v45);
      v31 = OUTLINED_FUNCTION_49_2();
      if (!forall_to_test(v31, v32, v43))
      {
LABEL_6:
        v33 = OUTLINED_FUNCTION_24_12();
        bspush_ca(v33);
        v34 = OUTLINED_FUNCTION_49_2();
        if (!lpta_loadp_setscan_r(v34, v35) && !advance_tok(v5))
        {
LABEL_8:
          c_assvar(v5, &v47);
          ++HIWORD(v47);
LABEL_9:
          v36 = OUTLINED_FUNCTION_54_2();
          if (!forto_adv_r(v36, v37, 3, 5, 7, v44))
          {
LABEL_15:
            *(v3 + 2) = HIWORD(v47);
            *(v1 + 8) = v46;
            break;
          }
        }
      }

      v38 = v5[13];
      if (v38)
      {
        OUTLINED_FUNCTION_33_6(v38);
      }

      else
      {
        vback(v5, 0);
      }

      OUTLINED_FUNCTION_56_2();
      if (!(!v41 & v40))
      {
        switch(v39)
        {
          case 1:
            goto LABEL_15;
          case 2:
            goto LABEL_8;
          case 3:
            goto LABEL_9;
          case 4:
            goto LABEL_6;
          default:
            continue;
        }
      }

      break;
    }
  }

  vretproc(v5);
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_70_2();
}

uint64_t mark_syll_stress()
{
  OUTLINED_FUNCTION_7_18();
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_68_2();
  OUTLINED_FUNCTION_22_12(v3, v4, v5, v6, v7, v8, v9, v10, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69);
  OUTLINED_FUNCTION_25_11();
  OUTLINED_FUNCTION_74_2(v11, v12);
  if (!setjmp(v1))
  {
    OUTLINED_FUNCTION_12_18();
    if (!OUTLINED_FUNCTION_64_2(v13, v14, v15, v16, v17))
    {
      v18 = OUTLINED_FUNCTION_10_18();
      get_parm(v18, v19, v20, -6);
      v21 = OUTLINED_FUNCTION_0_20();
      get_parm(v21, v22, v23, -6);
      v24 = OUTLINED_FUNCTION_11_18();
      get_parm(v24, v25, v26, -4);
      OUTLINED_FUNCTION_52_2(v27, v28, &_MergedGlobals_1_1);
      v29 = OUTLINED_FUNCTION_10_18();
      lpta_rpta_loadp(v29, v30, v31);
      v32 = OUTLINED_FUNCTION_36_4();
      if (mark_v(v32, v33, 0, &v67) || (v34 = OUTLINED_FUNCTION_69_2(), lpta_rpta_loadp(v34, v35, v36), v37 = OUTLINED_FUNCTION_42_2(), mark_v(v37, v38, 8, v39)))
      {
        if (*(v0 + 104))
        {
          *(v0 + 104) = 0;
        }

        else
        {
          OUTLINED_FUNCTION_51_2();
        }
      }
    }
  }

  vretproc(v0);
  v40 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_47_2();
}

uint64_t insert_stress()
{
  OUTLINED_FUNCTION_7_18();
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_68_2();
  OUTLINED_FUNCTION_22_12(v3, v4, v5, v6, v7, v8, v9, v10, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, SHIDWORD(v54), v55, v56);
  OUTLINED_FUNCTION_25_11();
  OUTLINED_FUNCTION_74_2(v11, v12);
  if (!setjmp(v1))
  {
    OUTLINED_FUNCTION_12_18();
    if (!OUTLINED_FUNCTION_64_2(v13, v14, v15, v16, v17))
    {
      v20 = OUTLINED_FUNCTION_80_2();
      OUTLINED_FUNCTION_57_2(v20, v21);
      v22 = OUTLINED_FUNCTION_38_4();
      OUTLINED_FUNCTION_50_2(v22, v23);
      v24 = OUTLINED_FUNCTION_11_18();
      get_parm(v24, v25, v26, -4);
      OUTLINED_FUNCTION_52_2(v27, v28, &_MergedGlobals_1_1);
      *(v0 + 136) = 1;
      *(v0 + 112) = v58;
      *(v0 + 128) = 0;
      OUTLINED_FUNCTION_36_4();
      lpta_ctxtl();
      *(v0 + 168) = 1;
      *(v0 + 144) = v57;
      *(v0 + 128) = 0;
      OUTLINED_FUNCTION_36_4();
      rpta_ctxtr();
      OUTLINED_FUNCTION_36_4();
      insert_2ptv();
      if (!v29)
      {
        vretproc(v0);
        result = 0;
        goto LABEL_4;
      }

      if (*(v0 + 104))
      {
        *(v0 + 104) = 0;
      }

      else
      {
        OUTLINED_FUNCTION_51_2();
      }
    }
  }

  vretproc(v0);
  result = 94;
LABEL_4:
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t insert_penult_stress()
{
  OUTLINED_FUNCTION_6_18();
  v100 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_17_15(v2, v3, v4, v5, v6, v7, v8, v9, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94[0], v94[1], v95[0], v95[1], v96, v97, v98, v99);
  OUTLINED_FUNCTION_25_11();
  OUTLINED_FUNCTION_75_2(v10, v11);
  if (!setjmp(v1))
  {
    OUTLINED_FUNCTION_65_2();
    if (!OUTLINED_FUNCTION_64_2(v12, v13, v14, v15, v16))
    {
      v19 = OUTLINED_FUNCTION_4_18();
      get_parm(v19, v20, v21, -6);
      v22 = OUTLINED_FUNCTION_30_7();
      get_parm(v22, v23, v24, -4);
      v25 = OUTLINED_FUNCTION_46_2();
      push_ptr_init(v25, v26);
      v27 = OUTLINED_FUNCTION_59_2();
      push_ptr_init(v27, v28);
      fence_20(v0, 0, &_MergedGlobals_1_1);
      v29 = OUTLINED_FUNCTION_44_2();
      fence_20(v29, v30, v31);
      v32 = OUTLINED_FUNCTION_54_2();
      starttest(v32, v33);
      v34 = OUTLINED_FUNCTION_24_12();
      if (!lpta_loadp_setscan_l(v34, v35))
      {
        v36 = advanc(v0);
        if (!v36)
        {
          goto LABEL_6;
        }
      }

LABEL_8:
      while (1)
      {
        lpta_rpta_loadp(v0, v95, v94);
        OUTLINED_FUNCTION_36_4();
        insert_2ptv();
        if (!v44)
        {
          break;
        }

        while (1)
        {
          v45 = v0[13];
          v36 = v45 ? OUTLINED_FUNCTION_33_6(v45) : OUTLINED_FUNCTION_51_2();
          if (v36 == 1)
          {
            break;
          }

          if (v36 != 2)
          {
            if (v36 == 3)
            {
LABEL_7:
              savescptr(v0, 3, v95);
              goto LABEL_8;
            }

            goto LABEL_3;
          }

LABEL_6:
          OUTLINED_FUNCTION_58_2(v36, v37, v38, v39, v40, v41, v42, v43, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v94[0]);
          if (!advanc(v0))
          {
            goto LABEL_7;
          }
        }
      }
    }
  }

LABEL_3:
  vretproc(v0);
  v17 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_81_2();
}

uint64_t insert_final_stress()
{
  OUTLINED_FUNCTION_6_18();
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_68_2();
  OUTLINED_FUNCTION_23_12(v3, v4, v5, v6, v7, v8, v9, v10, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94);
  OUTLINED_FUNCTION_25_11();
  OUTLINED_FUNCTION_75_2(v11, v12);
  if (!setjmp(v1))
  {
    OUTLINED_FUNCTION_12_18();
    if (!OUTLINED_FUNCTION_64_2(v13, v14, v15, v16, v17))
    {
      v18 = OUTLINED_FUNCTION_4_18();
      get_parm(v18, v19, v20, -6);
      v21 = OUTLINED_FUNCTION_30_7();
      get_parm(v21, v22, v23, -4);
      v24 = OUTLINED_FUNCTION_59_2();
      push_ptr_init(v24, v25);
      fence_20(v0, 0, &_MergedGlobals_1_1);
      v26 = OUTLINED_FUNCTION_14_16();
      starttest(v26, v27);
      v28 = OUTLINED_FUNCTION_24_12();
      if (!lpta_loadp_setscan_l(v28, v29))
      {
        v30 = advanc(v0);
        if (!v30)
        {
          goto LABEL_5;
        }
      }

      do
      {
LABEL_6:
        v38 = OUTLINED_FUNCTION_48_2();
        lpta_rpta_loadp(v38, v39, v95);
        OUTLINED_FUNCTION_36_4();
        insert_2ptv();
        if (!v40)
        {
          goto LABEL_12;
        }

        v41 = v0[13];
        if (v41)
        {
          v30 = OUTLINED_FUNCTION_33_6(v41);
        }

        else
        {
          v30 = OUTLINED_FUNCTION_51_2();
        }
      }

      while (v30 == 1);
      if (v30 == 2)
      {
LABEL_5:
        OUTLINED_FUNCTION_58_2(v30, v31, v32, v33, v34, v35, v36, v37, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93);
        goto LABEL_6;
      }
    }
  }

LABEL_12:
  vretproc(v0);
  v42 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_47_2();
}

uint64_t insert_initial_stress()
{
  OUTLINED_FUNCTION_6_18();
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_68_2();
  v93 = 0;
  OUTLINED_FUNCTION_23_12(v3, v4, v5, v6, v7, v8, v9, v10, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92[0], v92[1]);
  OUTLINED_FUNCTION_25_11();
  OUTLINED_FUNCTION_75_2(v11, v12);
  if (!setjmp(v1))
  {
    OUTLINED_FUNCTION_12_18();
    if (!OUTLINED_FUNCTION_64_2(v13, v14, v15, v16, v17))
    {
      v18 = OUTLINED_FUNCTION_4_18();
      get_parm(v18, v19, v20, -6);
      v21 = OUTLINED_FUNCTION_30_7();
      get_parm(v21, v22, v23, -4);
      v24 = OUTLINED_FUNCTION_59_2();
      push_ptr_init(v24, v25);
      fence_20(v0, 0, &_MergedGlobals_1_1);
      v26 = OUTLINED_FUNCTION_14_16();
      starttest(v26, v27);
      v28 = OUTLINED_FUNCTION_24_12();
      if (!lpta_loadp_setscan_r(v28, v29))
      {
        v30 = advanc(v0);
        if (!v30)
        {
          goto LABEL_5;
        }
      }

      do
      {
LABEL_6:
        v38 = OUTLINED_FUNCTION_48_2();
        lpta_rpta_loadp(v38, v39, v92);
        OUTLINED_FUNCTION_36_4();
        insert_2ptv();
        if (!v40)
        {
          goto LABEL_12;
        }

        v41 = v0[13];
        if (v41)
        {
          v30 = OUTLINED_FUNCTION_33_6(v41);
        }

        else
        {
          v30 = OUTLINED_FUNCTION_51_2();
        }
      }

      while (v30 == 1);
      if (v30 == 2)
      {
LABEL_5:
        OUTLINED_FUNCTION_58_2(v30, v31, v32, v33, v34, v35, v36, v37, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v92[0]);
        goto LABEL_6;
      }
    }
  }

LABEL_12:
  vretproc(v0);
  v42 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_47_2();
}

uint64_t insert_root_final_stress()
{
  OUTLINED_FUNCTION_6_18();
  v67 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_17_15(v2, v3, v4, v5, v6, v7, v8, v9, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61[0], v61[1], v62[0], v62[1], v63, v64, v65, v66);
  OUTLINED_FUNCTION_25_11();
  OUTLINED_FUNCTION_75_2(v10, v11);
  if (setjmp(v1))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_65_2();
  if (OUTLINED_FUNCTION_64_2(v12, v13, v14, v15, v16))
  {
    goto LABEL_3;
  }

  v19 = OUTLINED_FUNCTION_4_18();
  get_parm(v19, v20, v21, -6);
  v22 = OUTLINED_FUNCTION_30_7();
  get_parm(v22, v23, v24, -4);
  v25 = OUTLINED_FUNCTION_46_2();
  push_ptr_init(v25, v26);
  v27 = OUTLINED_FUNCTION_59_2();
  push_ptr_init(v27, v28);
  fence_20(v0, 0, &_MergedGlobals_1_1);
  v29 = OUTLINED_FUNCTION_14_16();
  starttest(v29, v30);
  v31 = OUTLINED_FUNCTION_24_12();
  if (lpta_loadp_setscan_l(v31, v32))
  {
LABEL_5:
    insert_stress();
    goto LABEL_3;
  }

  while (2)
  {
    v33 = OUTLINED_FUNCTION_48_2();
    bspush_ca_scan(v33, v34);
LABEL_7:
    savescptr(v0, 4, v61);
    if (!testFldeq(v0, 4u, 1, 2) && !advance_tok(v0))
    {
LABEL_15:
      savescptr(v0, 5, v62);
      goto LABEL_5;
    }

LABEL_9:
    v35 = *(v0 + 104);
    if (v35)
    {
      v36 = OUTLINED_FUNCTION_33_6(v35);
    }

    else
    {
      v36 = OUTLINED_FUNCTION_51_2();
    }

    switch(v36)
    {
      case 1:
        goto LABEL_5;
      case 2:
        continue;
      case 3:
        if (!advance_tok(v0))
        {
          continue;
        }

        goto LABEL_9;
      case 4:
        goto LABEL_7;
      case 5:
        goto LABEL_15;
      default:
        goto LABEL_3;
    }
  }

LABEL_3:
  vretproc(v0);
  v17 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_81_2();
}

uint64_t insert_zero_sylls()
{
  OUTLINED_FUNCTION_6_18();
  v85[30] = *MEMORY[0x277D85DE8];
  v85[0] = 0;
  v85[1] = 0;
  v84[0] = 0;
  v84[1] = 0;
  v83[0] = 0;
  v83[1] = 0;
  OUTLINED_FUNCTION_5_18(v2, v3, v4, v5, v6, v7, v8, v9, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82[0], v82[1], v82[2], v82[3]);
  OUTLINED_FUNCTION_25_11();
  OUTLINED_FUNCTION_75_2(v10, v11);
  if (setjmp(v1))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_66_2();
  if (OUTLINED_FUNCTION_64_2(v12, v13, v14, v15, v16))
  {
    goto LABEL_3;
  }

  v20 = OUTLINED_FUNCTION_4_18();
  get_parm(v20, v21, v22, -6);
  v23 = OUTLINED_FUNCTION_11_18();
  get_parm(v23, v24, v25, -6);
  v26 = OUTLINED_FUNCTION_48_2();
  push_ptr_init(v26, v27);
  v28 = OUTLINED_FUNCTION_38_4();
  push_ptr_init(v28, v29);
  v30 = OUTLINED_FUNCTION_29_8();
  push_ptr_init(v30, v31);
  fence_20(v0, 0, &_MergedGlobals_1_1);
  v32 = OUTLINED_FUNCTION_14_16();
  startloop(v32, v33);
  v34 = OUTLINED_FUNCTION_48_2();
  copyvar(v34, v35, v85);
  v36 = OUTLINED_FUNCTION_29_8();
  copyvar(v36, v37, v84);
  v38 = OUTLINED_FUNCTION_48_2();
  if (!forall_to_test(v38, v39, v82))
  {
LABEL_6:
    v40 = OUTLINED_FUNCTION_16_16();
    bspush_ca(v40);
    v41 = OUTLINED_FUNCTION_80_2();
    if (!lpta_loadp_setscan_r(v41, v42) && !advanc(v0))
    {
LABEL_8:
      OUTLINED_FUNCTION_78_2();
      v43 = OUTLINED_FUNCTION_69_2();
      savescptr(v43, v44, v45);
LABEL_9:
      v46 = OUTLINED_FUNCTION_69_2();
      lpta_rpta_loadp(v46, v47, v48);
      v49 = OUTLINED_FUNCTION_36_4();
      if (!insert_2pt_i(v49, v50, 2, v51, v52))
      {
LABEL_10:
        OUTLINED_FUNCTION_79_2();
        if (!forto_adv_r(v0, v53, v54, 5, 7, v83))
        {
          v17 = 0;
          goto LABEL_4;
        }
      }
    }
  }

  v55 = v0[13];
  if (v55)
  {
    OUTLINED_FUNCTION_33_6(v55);
  }

  else
  {
    OUTLINED_FUNCTION_51_2();
  }

  OUTLINED_FUNCTION_56_2();
  if (!v58 & v57)
  {
LABEL_3:
    v17 = 94;
  }

  else
  {
    v17 = 0;
    switch(v56)
    {
      case 1:
        goto LABEL_9;
      case 2:
        goto LABEL_10;
      case 3:
        goto LABEL_8;
      case 4:
        goto LABEL_6;
      default:
        break;
    }
  }

LABEL_4:
  vretproc(v0);
  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

uint64_t test_stress_annot()
{
  OUTLINED_FUNCTION_6_18();
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_19(v3, v4, v5, v6, v7, v8, v9, v10, v40, v43, v46, v49, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118);
  OUTLINED_FUNCTION_20_12(v11, v12, v13, v14, v15, v16, v17, v18, v41, v44, v47, v50, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v119, v121, v123, v125, v127, v129);
  v19 = setjmp(v1);
  if (!v19 && !OUTLINED_FUNCTION_3_19(v19, v20, v21, v22, v23, v24, v25, v26, v42, v45, v48, v51, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117, v120, *v122, v122[4], *v124, *&v124[4], v124[6], v126, SWORD2(v126), SBYTE6(v126), SHIBYTE(v126), v128, v130))
  {
    v27 = OUTLINED_FUNCTION_0_20();
    get_parm(v27, v28, v29, -6);
    v30 = OUTLINED_FUNCTION_30_7();
    get_parm(v30, v31, v32, -6);
    fence_20(v0, 0, &_MergedGlobals_1_1);
    starttest(v0, 1);
    v33 = OUTLINED_FUNCTION_24_12();
    if (!lpta_loadp_setscan_r(v33, v34))
    {
      do
      {
LABEL_6:
        bspush_ca_scan(v0, 2);
      }

      while (!testFldeq(v0, 2u, 8, 0) && !advance_tok(v0));
      while (1)
      {
        v37 = *(v0 + 104);
        v38 = v37 ? OUTLINED_FUNCTION_33_6(v37) : vback(v0, 0);
        if (v38 != 2)
        {
          break;
        }

        *(v0 + 136) = 1;
        v39 = OUTLINED_FUNCTION_13_18();
        if (!test_ptr(v39))
        {
          goto LABEL_16;
        }
      }

      if (v38 == 3)
      {
        goto LABEL_6;
      }

      if (v38 == 4)
      {
LABEL_16:
        vretproc(v0);
        result = 0;
        goto LABEL_5;
      }
    }
  }

  vretproc(v0);
  result = 94;
LABEL_5:
  v36 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mark_word_stress()
{
  OUTLINED_FUNCTION_6_18();
  v82 = *MEMORY[0x277D85DE8];
  v79 = 0;
  v80 = 0;
  v78 = 0;
  OUTLINED_FUNCTION_23_12(v1, v2, v3, v4, v5, v6, v7, v8, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77);
  OUTLINED_FUNCTION_25_11();
  bzero(v81, v9);
  if (!setjmp(v81))
  {
    OUTLINED_FUNCTION_12_18();
    if (!ventproc(v0, v10, v11, v12, v13, v81))
    {
      v16 = OUTLINED_FUNCTION_4_18();
      get_parm(v16, v17, v18, -6);
      v19 = OUTLINED_FUNCTION_30_7();
      get_parm(v19, v20, v21, -4);
      v22 = OUTLINED_FUNCTION_59_2();
      v24 = push_ptr_init(v22, v23);
      OUTLINED_FUNCTION_52_2(v24, v25, &_MergedGlobals_1_1);
      v26 = OUTLINED_FUNCTION_14_16();
      starttest(v26, v27);
      v28 = OUTLINED_FUNCTION_24_12();
      if (!lpta_loadp_setscan_r(v28, v29))
      {
        OUTLINED_FUNCTION_54_2();
        bspush_ca_scan_boa();
        v30 = OUTLINED_FUNCTION_16_16();
        bspush_ca_scan(v30, v31);
        if (testFldeq(v0, 2u, 8, 1))
        {
          v32 = 0;
        }

        else
        {
LABEL_16:
          v32 = 1;
        }

        v40 = v32;
        while (2)
        {
          v33 = v0[13];
          if (v33)
          {
            OUTLINED_FUNCTION_33_6(v33);
            v35 = v34;
          }

          else
          {
            vback(v0, v40);
            v35 = 0;
          }

          OUTLINED_FUNCTION_56_2();
          if (!(!v38 & v37))
          {
            switch(v36)
            {
              case 1:
                bspop_boa(v0);
                v39 = advance_tok(v0);
                v40 = v35;
                if (v39)
                {
                  continue;
                }

                goto LABEL_13;
              case 2:
                v48 = OUTLINED_FUNCTION_45_2();
                v51 = testFldeq(v48, v49, v50, 4);
                v40 = v35;
                if (!v51)
                {
                  goto LABEL_16;
                }

                continue;
              case 3:
                goto LABEL_16;
              case 4:
LABEL_13:
                v41 = OUTLINED_FUNCTION_43_2();
                savescptr(v41, v42, v43);
                v44 = OUTLINED_FUNCTION_4_18();
                lpta_rpta_loadp(v44, v45, v46);
                v47 = mark_v(v0, 2u, 5, &v78);
                v40 = v35;
                if (!v47)
                {
                  goto LABEL_3;
                }

                continue;
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
  v14 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_47_2();
}

uint64_t demote_word()
{
  OUTLINED_FUNCTION_6_18();
  v86 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_22_12(v2, v3, v4, v5, v6, v7, v8, v9, v52, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, SHIDWORD(v78), v79, v80);
  OUTLINED_FUNCTION_20_12(v10, v11, v12, v13, v14, v15, v16, v17, v53, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85);
  v18 = setjmp(v1);
  if (!v18 && !OUTLINED_FUNCTION_8_18(v18, &v55, v19, v20, v21, v22, v23, v24, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, SBYTE4(v81), v82, SWORD2(v82), SBYTE6(v82), v83, SWORD2(v83), SBYTE6(v83), SHIBYTE(v83), v84, v85))
  {
    v27 = OUTLINED_FUNCTION_0_20();
    get_parm(v27, v28, v29, -6);
    v30 = OUTLINED_FUNCTION_30_7();
    get_parm(v30, v31, v32, -4);
    fence_20(v0, 0, &_MergedGlobals_1_1);
    v33 = OUTLINED_FUNCTION_14_16();
    starttest(v33, v34);
    v35 = OUTLINED_FUNCTION_24_12();
    if (lpta_loadp_setscan_r(v35, v36) || (npush_fld(v0, 2u, 5) || (npush_v(v0, &v78 + 2, v37, v38, v39, v40, v41, v42), if_testge(v0, v43, v44, v45, v46, v47, v48, v49)) || advance_tok(v0)) && ((v50 = *(v0 + 104)) == 0 ? (v51 = OUTLINED_FUNCTION_51_2()) : (v51 = OUTLINED_FUNCTION_33_6(v50)), v51 == 1))
    {
      mark_word_stress();
    }
  }

  vretproc(v0);
  v25 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_40_2();
}

uint64_t promote_word()
{
  OUTLINED_FUNCTION_6_18();
  v86 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_22_12(v2, v3, v4, v5, v6, v7, v8, v9, v52, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, SHIDWORD(v78), v79, v80);
  OUTLINED_FUNCTION_20_12(v10, v11, v12, v13, v14, v15, v16, v17, v53, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85);
  v18 = setjmp(v1);
  if (!v18 && !OUTLINED_FUNCTION_8_18(v18, &v55, v19, v20, v21, v22, v23, v24, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, SBYTE4(v81), v82, SWORD2(v82), SBYTE6(v82), v83, SWORD2(v83), SBYTE6(v83), SHIBYTE(v83), v84, v85))
  {
    v27 = OUTLINED_FUNCTION_0_20();
    get_parm(v27, v28, v29, -6);
    v30 = OUTLINED_FUNCTION_30_7();
    get_parm(v30, v31, v32, -4);
    fence_20(v0, 0, &_MergedGlobals_1_1);
    v33 = OUTLINED_FUNCTION_14_16();
    starttest(v33, v34);
    v35 = OUTLINED_FUNCTION_24_12();
    if (lpta_loadp_setscan_r(v35, v36) || (npush_fld(v0, 2u, 5) || (npush_v(v0, &v78 + 2, v37, v38, v39, v40, v41, v42), if_testle(v0, v43, v44, v45, v46, v47, v48, v49)) || advance_tok(v0)) && ((v50 = *(v0 + 104)) == 0 ? (v51 = OUTLINED_FUNCTION_51_2()) : (v51 = OUTLINED_FUNCTION_33_6(v50)), v51 == 1))
    {
      mark_word_stress();
    }
  }

  vretproc(v0);
  v25 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_40_2();
}

uint64_t insert_space(uint64_t a1, __int16 *a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v80 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_15_16(a1, a2, a3, a4, a5, a6, a7, a8, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68);
  OUTLINED_FUNCTION_25_11();
  bzero(v79, v10);
  v11 = setjmp(v79);
  if (v11 || OUTLINED_FUNCTION_35_4(v11, &v44, v12, v13, v14, v15, v16, v17, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79[0]))
  {
    goto LABEL_3;
  }

  v20 = OUTLINED_FUNCTION_24_12();
  get_parm(v20, v21, a2, -6);
  OUTLINED_FUNCTION_52_2(v22, v23, &_MergedGlobals_1_1);
  v24 = OUTLINED_FUNCTION_54_2();
  starttest(v24, v25);
  OUTLINED_FUNCTION_28_8();
  bspush_ca_boa();
  v26 = OUTLINED_FUNCTION_24_12();
  if (lpta_loadp_setscan_l(v26, v27))
  {
    v28 = 0;
  }

  else
  {
    v29 = OUTLINED_FUNCTION_16_16();
    bspush_ca_scan(v29, v30);
    OUTLINED_FUNCTION_9_18();
    if (test_string_s())
    {
      v28 = 0;
    }

    else
    {
LABEL_19:
      v28 = 1;
    }
  }

  v40 = v28;
  while (2)
  {
    v31 = *(a1 + 104);
    if (v31)
    {
      OUTLINED_FUNCTION_33_6(v31);
      v33 = v32;
    }

    else
    {
      vback(a1, v40);
      v33 = 0;
    }

    OUTLINED_FUNCTION_56_2();
    if (!v36 & v35)
    {
LABEL_3:
      vretproc(a1);
      result = 94;
    }

    else
    {
      switch(v34)
      {
        case 1:
          bspop_boa(a1);
          OUTLINED_FUNCTION_27_9();
          bspush_ca_boa();
          v37 = OUTLINED_FUNCTION_24_12();
          v39 = lpta_loadp_setscan_r(v37, v38);
          v40 = v33;
          if (!v39)
          {
            if (test_string_s())
            {
              v40 = v33;
            }

            else
            {
              v40 = 1;
            }
          }

          continue;
        case 2:
          *(a1 + 136) = 1;
          v41 = *(a1 + 1408);
          v42 = OUTLINED_FUNCTION_13_18();
          v43 = test_ptr(v42);
          v40 = v33;
          if (!v43)
          {
            goto LABEL_19;
          }

          continue;
        case 3:
          goto LABEL_19;
        case 4:
          bspop_boa(a1);
          *(a1 + 136) = 1;
          *(a1 + 112) = v68;
          *(a1 + 128) = 0;
          insert_r(a1);
          break;
        default:
          break;
      }

      vretproc(a1);
      result = 0;
    }

    break;
  }

  v19 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t delete_inp_from_left()
{
  OUTLINED_FUNCTION_6_18();
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_19(v4, v5, v6, v7, v8, v9, v10, v11, v43, v46, v49, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118, v121);
  OUTLINED_FUNCTION_20_12(v12, v13, v14, v15, v16, v17, v18, v19, v44, v47, v50, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v119, v122, v124, v126, v128, v130, v132);
  v20 = setjmp(v2);
  if (!v20 && !OUTLINED_FUNCTION_3_19(v20, v21, v22, v23, v24, v25, v26, v27, v45, v48, v51, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117, v120, v123, *v125, v125[4], *v127, *&v127[4], v127[6], v129, SWORD2(v129), SBYTE6(v129), SHIBYTE(v129), v131, v133))
  {
    v30 = OUTLINED_FUNCTION_0_20();
    get_parm(v30, v31, v32, -6);
    v33 = OUTLINED_FUNCTION_1_19();
    get_parm(v33, v34, v35, -6);
    OUTLINED_FUNCTION_52_2(v36, v37, &_MergedGlobals_1_1);
    v38 = OUTLINED_FUNCTION_4_18();
    lpta_rpta_loadp(v38, v39, v40);
    v41 = OUTLINED_FUNCTION_44_2();
    if (delete_2pt(v41, v42))
    {
      if (*(v0 + 104))
      {
        *(v0 + 104) = 0;
      }

      else
      {
        OUTLINED_FUNCTION_51_2();
      }
    }

    else
    {
      *(v0 + 136) = v1;
      OUTLINED_FUNCTION_13_18();
      delete_1pt();
    }
  }

  vretproc(v0);
  v28 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_40_2();
}

uint64_t delete_inp_from_right()
{
  OUTLINED_FUNCTION_6_18();
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_19(v4, v5, v6, v7, v8, v9, v10, v11, v43, v46, v49, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118, v121);
  OUTLINED_FUNCTION_20_12(v12, v13, v14, v15, v16, v17, v18, v19, v44, v47, v50, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v119, v122, v124, v126, v128, v130, v132);
  v20 = setjmp(v2);
  if (!v20 && !OUTLINED_FUNCTION_3_19(v20, v21, v22, v23, v24, v25, v26, v27, v45, v48, v51, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117, v120, v123, *v125, v125[4], *v127, *&v127[4], v127[6], v129, SWORD2(v129), SBYTE6(v129), SHIBYTE(v129), v131, v133))
  {
    v30 = OUTLINED_FUNCTION_0_20();
    get_parm(v30, v31, v32, -6);
    v33 = OUTLINED_FUNCTION_1_19();
    get_parm(v33, v34, v35, -6);
    OUTLINED_FUNCTION_52_2(v36, v37, &_MergedGlobals_1_1);
    v38 = OUTLINED_FUNCTION_4_18();
    lpta_rpta_loadp(v38, v39, v40);
    v41 = OUTLINED_FUNCTION_44_2();
    if (delete_2pt(v41, v42))
    {
      if (*(v0 + 104))
      {
        *(v0 + 104) = 0;
      }

      else
      {
        OUTLINED_FUNCTION_51_2();
      }
    }

    else
    {
      *(v0 + 136) = v1;
      OUTLINED_FUNCTION_13_18();
      delete_1pt();
    }
  }

  vretproc(v0);
  v28 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_40_2();
}

uint64_t delete_phone_from_left()
{
  OUTLINED_FUNCTION_6_18();
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_19(v3, v4, v5, v6, v7, v8, v9, v10, v42, v45, v48, v51, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117, v120);
  OUTLINED_FUNCTION_20_12(v11, v12, v13, v14, v15, v16, v17, v18, v43, v46, v49, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118, v121, v123, v125, v127, v129, v131);
  v19 = setjmp(v1);
  if (!v19 && !OUTLINED_FUNCTION_3_19(v19, v20, v21, v22, v23, v24, v25, v26, v44, v47, v50, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v119, v122, *v124, v124[4], *v126, *&v126[4], v126[6], v128, SWORD2(v128), SBYTE6(v128), SHIBYTE(v128), v130, v132))
  {
    v29 = OUTLINED_FUNCTION_0_20();
    get_parm(v29, v30, v31, -6);
    v32 = OUTLINED_FUNCTION_1_19();
    get_parm(v32, v33, v34, -6);
    OUTLINED_FUNCTION_52_2(v35, v36, &_MergedGlobals_1_1);
    v37 = OUTLINED_FUNCTION_4_18();
    lpta_rpta_loadp(v37, v38, v39);
    v40 = OUTLINED_FUNCTION_42_2();
    if (delete_2pt(v40, v41))
    {
      if (*(v0 + 104))
      {
        *(v0 + 104) = 0;
      }

      else
      {
        OUTLINED_FUNCTION_51_2();
      }
    }

    else
    {
      OUTLINED_FUNCTION_61_2();
      OUTLINED_FUNCTION_13_18();
      delete_1pt();
    }
  }

  vretproc(v0);
  v27 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_40_2();
}

uint64_t delete_phone_from_right()
{
  OUTLINED_FUNCTION_6_18();
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_19(v3, v4, v5, v6, v7, v8, v9, v10, v42, v45, v48, v51, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117, v120);
  OUTLINED_FUNCTION_20_12(v11, v12, v13, v14, v15, v16, v17, v18, v43, v46, v49, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118, v121, v123, v125, v127, v129, v131);
  v19 = setjmp(v1);
  if (!v19 && !OUTLINED_FUNCTION_3_19(v19, v20, v21, v22, v23, v24, v25, v26, v44, v47, v50, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v119, v122, *v124, v124[4], *v126, *&v126[4], v126[6], v128, SWORD2(v128), SBYTE6(v128), SHIBYTE(v128), v130, v132))
  {
    v29 = OUTLINED_FUNCTION_0_20();
    get_parm(v29, v30, v31, -6);
    v32 = OUTLINED_FUNCTION_1_19();
    get_parm(v32, v33, v34, -6);
    OUTLINED_FUNCTION_52_2(v35, v36, &_MergedGlobals_1_1);
    v37 = OUTLINED_FUNCTION_4_18();
    lpta_rpta_loadp(v37, v38, v39);
    v40 = OUTLINED_FUNCTION_42_2();
    if (delete_2pt(v40, v41))
    {
      if (*(v0 + 104))
      {
        *(v0 + 104) = 0;
      }

      else
      {
        OUTLINED_FUNCTION_51_2();
      }
    }

    else
    {
      OUTLINED_FUNCTION_61_2();
      OUTLINED_FUNCTION_13_18();
      delete_1pt();
    }
  }

  vretproc(v0);
  v27 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_40_2();
}

uint64_t delete_morph_from_left()
{
  OUTLINED_FUNCTION_6_18();
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_19(v3, v4, v5, v6, v7, v8, v9, v10, v40, v43, v46, v49, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118);
  OUTLINED_FUNCTION_20_12(v11, v12, v13, v14, v15, v16, v17, v18, v41, v44, v47, v50, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v119, v121, v123, v125, v127, v129);
  v19 = setjmp(v1);
  if (!v19 && !OUTLINED_FUNCTION_3_19(v19, v20, v21, v22, v23, v24, v25, v26, v42, v45, v48, v51, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117, v120, *v122, v122[4], *v124, *&v124[4], v124[6], v126, SWORD2(v126), SBYTE6(v126), SHIBYTE(v126), v128, v130))
  {
    v29 = OUTLINED_FUNCTION_0_20();
    get_parm(v29, v30, v31, -6);
    v32 = OUTLINED_FUNCTION_1_19();
    get_parm(v32, v33, v34, -6);
    OUTLINED_FUNCTION_52_2(v35, v36, &_MergedGlobals_1_1);
    v37 = OUTLINED_FUNCTION_4_18();
    lpta_rpta_loadp(v37, v38, v39);
    if (delete_2pt(v0, 3))
    {
      if (v0[13])
      {
        v0[13] = 0;
      }

      else
      {
        OUTLINED_FUNCTION_51_2();
      }
    }

    else
    {
      OUTLINED_FUNCTION_61_2();
      OUTLINED_FUNCTION_13_18();
      delete_1pt();
    }
  }

  vretproc(v0);
  v27 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_40_2();
}

uint64_t delete_morph_from_right()
{
  OUTLINED_FUNCTION_6_18();
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_19(v3, v4, v5, v6, v7, v8, v9, v10, v40, v43, v46, v49, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118);
  OUTLINED_FUNCTION_20_12(v11, v12, v13, v14, v15, v16, v17, v18, v41, v44, v47, v50, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v119, v121, v123, v125, v127, v129);
  v19 = setjmp(v1);
  if (!v19 && !OUTLINED_FUNCTION_3_19(v19, v20, v21, v22, v23, v24, v25, v26, v42, v45, v48, v51, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117, v120, *v122, v122[4], *v124, *&v124[4], v124[6], v126, SWORD2(v126), SBYTE6(v126), SHIBYTE(v126), v128, v130))
  {
    v29 = OUTLINED_FUNCTION_0_20();
    get_parm(v29, v30, v31, -6);
    v32 = OUTLINED_FUNCTION_1_19();
    get_parm(v32, v33, v34, -6);
    OUTLINED_FUNCTION_52_2(v35, v36, &_MergedGlobals_1_1);
    v37 = OUTLINED_FUNCTION_4_18();
    lpta_rpta_loadp(v37, v38, v39);
    if (delete_2pt(v0, 3))
    {
      if (v0[13])
      {
        v0[13] = 0;
      }

      else
      {
        OUTLINED_FUNCTION_51_2();
      }
    }

    else
    {
      OUTLINED_FUNCTION_61_2();
      OUTLINED_FUNCTION_13_18();
      delete_1pt();
    }
  }

  vretproc(v0);
  v27 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_40_2();
}

uint64_t delete_syll_from_left()
{
  OUTLINED_FUNCTION_6_18();
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_19(v3, v4, v5, v6, v7, v8, v9, v10, v42, v45, v48, v51, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117, v120);
  OUTLINED_FUNCTION_20_12(v11, v12, v13, v14, v15, v16, v17, v18, v43, v46, v49, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118, v121, v123, v125, v127, v129, v131);
  v19 = setjmp(v1);
  if (!v19 && !OUTLINED_FUNCTION_3_19(v19, v20, v21, v22, v23, v24, v25, v26, v44, v47, v50, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v119, v122, *v124, v124[4], *v126, *&v126[4], v126[6], v128, SWORD2(v128), SBYTE6(v128), SHIBYTE(v128), v130, v132))
  {
    v29 = OUTLINED_FUNCTION_0_20();
    get_parm(v29, v30, v31, -6);
    v32 = OUTLINED_FUNCTION_1_19();
    get_parm(v32, v33, v34, -6);
    OUTLINED_FUNCTION_52_2(v35, v36, &_MergedGlobals_1_1);
    v37 = OUTLINED_FUNCTION_4_18();
    lpta_rpta_loadp(v37, v38, v39);
    v40 = OUTLINED_FUNCTION_36_4();
    if (delete_2pt(v40, v41))
    {
      if (*(v0 + 104))
      {
        *(v0 + 104) = 0;
      }

      else
      {
        OUTLINED_FUNCTION_51_2();
      }
    }

    else
    {
      OUTLINED_FUNCTION_61_2();
      OUTLINED_FUNCTION_13_18();
      delete_1pt();
    }
  }

  vretproc(v0);
  v27 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_40_2();
}

uint64_t delete_syll_from_right()
{
  OUTLINED_FUNCTION_6_18();
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_19(v3, v4, v5, v6, v7, v8, v9, v10, v42, v45, v48, v51, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117, v120);
  OUTLINED_FUNCTION_20_12(v11, v12, v13, v14, v15, v16, v17, v18, v43, v46, v49, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118, v121, v123, v125, v127, v129, v131);
  v19 = setjmp(v1);
  if (!v19 && !OUTLINED_FUNCTION_3_19(v19, v20, v21, v22, v23, v24, v25, v26, v44, v47, v50, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v119, v122, *v124, v124[4], *v126, *&v126[4], v126[6], v128, SWORD2(v128), SBYTE6(v128), SHIBYTE(v128), v130, v132))
  {
    v29 = OUTLINED_FUNCTION_0_20();
    get_parm(v29, v30, v31, -6);
    v32 = OUTLINED_FUNCTION_1_19();
    get_parm(v32, v33, v34, -6);
    OUTLINED_FUNCTION_52_2(v35, v36, &_MergedGlobals_1_1);
    v37 = OUTLINED_FUNCTION_4_18();
    lpta_rpta_loadp(v37, v38, v39);
    v40 = OUTLINED_FUNCTION_36_4();
    if (delete_2pt(v40, v41))
    {
      if (*(v0 + 104))
      {
        *(v0 + 104) = 0;
      }

      else
      {
        OUTLINED_FUNCTION_51_2();
      }
    }

    else
    {
      OUTLINED_FUNCTION_61_2();
      OUTLINED_FUNCTION_13_18();
      delete_1pt();
    }
  }

  vretproc(v0);
  v27 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_40_2();
}

uint64_t strip_last_digit()
{
  OUTLINED_FUNCTION_6_18();
  v58 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_22_12(v3, v4, v5, v6, v7, v8, v9, v10, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, SHIDWORD(v53), v54, v55);
  OUTLINED_FUNCTION_25_11();
  bzero(v57, v11);
  if (!setjmp(v57))
  {
    OUTLINED_FUNCTION_12_18();
    if (!ventproc(v0, v12, v13, v14, v15, v57))
    {
      v18 = OUTLINED_FUNCTION_4_18();
      get_parm(v18, v19, v20, -3);
      v21 = OUTLINED_FUNCTION_29_8();
      get_parm(v21, v22, v1, -3);
      fence_20(v0, 0, &_MergedGlobals_1_1);
      v23 = OUTLINED_FUNCTION_14_16();
      starttest(v23, v24);
      v25 = OUTLINED_FUNCTION_41_2();
      move_i(v25, v26, 10);
      OUTLINED_FUNCTION_19_13();
      if (!modulus() || ((v27 = *(v0 + 104)) == 0 ? (v28 = OUTLINED_FUNCTION_51_2()) : (v28 = OUTLINED_FUNCTION_33_6(v27)), v28 == 1))
      {
        *(v2 + 8) = (0 / 10.0);
        OUTLINED_FUNCTION_55_2(v56);
      }
    }
  }

  vretproc(v0);
  v16 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_47_2();
}

uint64_t modulus()
{
  OUTLINED_FUNCTION_7_18();
  v62 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_18(v3, v4, v5, v6, v7, v8, v9, v10, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v60, v61);
  OUTLINED_FUNCTION_25_11();
  OUTLINED_FUNCTION_74_2(v11, v12);
  if (!setjmp(v2))
  {
    OUTLINED_FUNCTION_18_14();
    if (!OUTLINED_FUNCTION_64_2(v13, v14, v15, v16, v17))
    {
      v20 = OUTLINED_FUNCTION_10_18();
      get_parm(v20, v21, v22, -3);
      v23 = OUTLINED_FUNCTION_0_20();
      get_parm(v23, v24, v25, -3);
      v26 = OUTLINED_FUNCTION_1_19();
      get_parm(v26, v27, v28, -3);
      OUTLINED_FUNCTION_52_2(v29, v30, &_MergedGlobals_1_1);
      v31 = OUTLINED_FUNCTION_10_18();
      modulo(v31, v32, v33, v1);
      OUTLINED_FUNCTION_55_2(v59);
    }
  }

  vretproc(v0);
  v18 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_47_2();
}

void copy_string()
{
  OUTLINED_FUNCTION_71_2();
  OUTLINED_FUNCTION_31_7();
  v105 = *MEMORY[0x277D85DE8];
  v99 = 0;
  v100 = 0;
  v97 = 0;
  v98 = 0;
  v95 = 0;
  v96 = 0;
  v93 = 0;
  v94 = 0;
  v91[0] = 0;
  v91[1] = 0;
  v92 = 0;
  v90[2] = 0;
  v90[3] = 0;
  OUTLINED_FUNCTION_23_12(v1, v2, v3, v4, v5, v6, v7, v8, v66, v67[0], v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90[0], v90[1]);
  OUTLINED_FUNCTION_25_11();
  bzero(v104, v9);
  if (!setjmp(v104) && !ventproc(v0, v67, v103, v102, v101, v104))
  {
    v11 = OUTLINED_FUNCTION_39_3();
    get_parm(v11, v12, v13, -6);
    v14 = OUTLINED_FUNCTION_10_18();
    get_parm(v14, v15, v16, -6);
    v17 = OUTLINED_FUNCTION_30_7();
    get_parm(v17, v18, v19, -6);
    v20 = OUTLINED_FUNCTION_43_2();
    get_parm(v20, v21, v22, -6);
    WORD2(v92) = 0;
    LODWORD(v92) = 0;
    LODWORD(v91[0]) = -65535;
    v23 = OUTLINED_FUNCTION_24_12();
    push_ptr_init(v23, v24);
    v25 = OUTLINED_FUNCTION_49_2();
    v27 = push_ptr_init(v25, v26);
    OUTLINED_FUNCTION_52_2(v27, v28, &_MergedGlobals_1_1);
    startloop(v0, 1);
    v29 = OUTLINED_FUNCTION_41_2();
    lpta_loadpn(v29, v30);
    lpta_mover();
    v31 = OUTLINED_FUNCTION_24_12();
    lpta_storep(v31, v32);
    v33 = OUTLINED_FUNCTION_29_8();
    lpta_loadpn(v33, v34);
    lpta_mover();
    v35 = OUTLINED_FUNCTION_49_2();
    lpta_storep(v35, v36);
    v37 = OUTLINED_FUNCTION_24_12();
    v39 = forall_to_test(v37, v38, v90);
    v40 = 0;
    v41 = 0;
    if (!v39)
    {
LABEL_5:
      v41 = v40;
      v42 = OUTLINED_FUNCTION_16_16();
      bspush_ca(v42);
      v43 = OUTLINED_FUNCTION_37_4();
      if (!lpta_loadp_setscan_r(v43, v44) && !advance_tok(v0))
      {
        v45 = savetok(v0, v91);
        v46 = v41;
        if (!v45)
        {
LABEL_8:
          *(v0 + 168) = 1;
          v41 = (v46 + 1);
          v47 = v46;
          *(v0 + 144) = v94;
          *(v0 + 128) = 0;
          insert_lv();
          v48 = OUTLINED_FUNCTION_16_16();
          starttest_l(v48, v49);
          if (!v47)
          {
            v50 = OUTLINED_FUNCTION_16_16();
            starttest_e(v50, v51);
            v41 = 1;
            if (!lpta_loadp_setscan_l(v0, &v93))
            {
              v52 = advance_tok(v0);
              v41 = 1;
              v53 = 1;
              if (!v52)
              {
LABEL_11:
                v41 = v53;
                OUTLINED_FUNCTION_78_2();
                savescptr(v0, v54, &v95);
              }
            }
          }

LABEL_12:
          OUTLINED_FUNCTION_34_5();
          v55 = OUTLINED_FUNCTION_32_6();
          if (!forto_adv_upto_r(v55, v56, v57, v58, v59, v60))
          {
LABEL_18:
            OUTLINED_FUNCTION_55_2(v96);
            goto LABEL_3;
          }
        }
      }
    }

    v61 = *(v0 + 104);
    if (v61)
    {
      OUTLINED_FUNCTION_33_6(v61);
    }

    else
    {
      OUTLINED_FUNCTION_51_2();
    }

    OUTLINED_FUNCTION_56_2();
    if (!(!v64 & v63))
    {
      v65 = v62;
      v40 = v41;
      v46 = v41;
      v53 = v41;
      switch(v65)
      {
        case 1:
          goto LABEL_8;
        case 2:
          goto LABEL_12;
        case 3:
          goto LABEL_11;
        case 4:
          goto LABEL_5;
        default:
          goto LABEL_18;
      }
    }
  }

LABEL_3:
  vretproc(v0);
  v10 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_70_2();
}

uint64_t copy_token()
{
  OUTLINED_FUNCTION_31_7();
  v58 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_18(v2, v3, v4, v5, v6, v7, v8, v9, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55);
  OUTLINED_FUNCTION_25_11();
  bzero(v57, v10);
  if (!setjmp(v57))
  {
    OUTLINED_FUNCTION_65_2();
    if (!ventproc(v0, v11, v12, v13, v14, v57))
    {
      v17 = OUTLINED_FUNCTION_39_3();
      get_parm(v17, v18, v19, -6);
      v20 = OUTLINED_FUNCTION_10_18();
      get_parm(v20, v21, v22, -6);
      v23 = OUTLINED_FUNCTION_24_12();
      get_parm(v23, v24, v1, -6);
      v25 = OUTLINED_FUNCTION_49_2();
      OUTLINED_FUNCTION_50_2(v25, v26);
      OUTLINED_FUNCTION_52_2(v27, v28, &_MergedGlobals_1_1);
      OUTLINED_FUNCTION_39_3();
      copy_string();
      *(v0 + 168) = 1;
      *(v0 + 144) = v56;
      *(v0 + 128) = 0;
      insert_l(v0);
      OUTLINED_FUNCTION_55_2(v56);
    }
  }

  vretproc(v0);
  v15 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_81_2();
}

uint64_t same_inp(uint64_t a1, int a2, __int16 *a3, int a4, int a5, int a6, int a7, int a8)
{
  v99 = *MEMORY[0x277D85DE8];
  v94[0] = 0;
  v94[1] = 0;
  v92 = 0;
  v93 = 0;
  v91 = 0;
  memset(v90, 0, sizeof(v90));
  v88[0] = 0;
  v88[1] = 0;
  v89 = 0;
  v86[0] = 0;
  v86[1] = 0;
  v87 = 0;
  v84 = 0;
  v85 = 0;
  v83[0] = 0;
  v83[1] = 0;
  v82[0] = 0;
  v82[1] = 0;
  OUTLINED_FUNCTION_5_18(a1, a2, a3, a4, a5, a6, a7, a8, v79[0], v79[1], v79[2], v79[3], v79[4], v79[5], v79[6], v79[7], v79[8], v79[9], v79[10], v79[11], v79[12], v79[13], v79[14], v79[15], v79[16], v79[17], v79[18], v79[19], v79[20], v79[21], v79[22], v80[0], v80[1], v81[0], v81[1]);
  OUTLINED_FUNCTION_25_11();
  bzero(v98, v10);
  if (setjmp(v98) || ventproc(a1, v79, v97, v96, v95, v98))
  {
    goto LABEL_24;
  }

  v11 = OUTLINED_FUNCTION_24_12();
  OUTLINED_FUNCTION_73_2(v11, v12);
  v13 = OUTLINED_FUNCTION_29_8();
  get_parm(v13, v14, a3, -6);
  v15 = OUTLINED_FUNCTION_43_2();
  get_parm(v15, v16, v17, -6);
  v18 = OUTLINED_FUNCTION_30_7();
  get_parm(v18, v19, v20, -6);
  WORD2(v89) = 0;
  LODWORD(v89) = 0;
  LODWORD(v88[0]) = -65535;
  WORD2(v87) = 0;
  LODWORD(v87) = 0;
  LODWORD(v86[0]) = -65535;
  push_ptr_init(a1, &v84);
  v21 = OUTLINED_FUNCTION_27_9();
  push_ptr_init(v21, v22);
  v23 = OUTLINED_FUNCTION_80_2();
  push_ptr_init(v23, v24);
  v25 = OUTLINED_FUNCTION_41_2();
  push_ptr_init(v25, v26);
  v27 = push_ptr_init(a1, v80);
  OUTLINED_FUNCTION_52_2(v27, v28, &_MergedGlobals_1_1);
  v85 = v91;
  v29 = OUTLINED_FUNCTION_14_16();
  startloop(v29, v30);
  v31 = OUTLINED_FUNCTION_27_9();
  copyvar(v31, v32, v94);
  v33 = OUTLINED_FUNCTION_39_3();
  copyvar(v33, v34, v35);
  v36 = OUTLINED_FUNCTION_27_9();
  if (forall_to_test(v36, v37, v81))
  {
    goto LABEL_17;
  }

  while (2)
  {
    v38 = OUTLINED_FUNCTION_16_16();
    bspush_ca(v38);
    v39 = OUTLINED_FUNCTION_37_4();
    if (!lpta_loadp_setscan_r(v39, v40) && !advance_tok(a1) && !savetok(a1, v88))
    {
LABEL_7:
      OUTLINED_FUNCTION_78_2();
      savescptr(a1, v41, v82);
LABEL_8:
      lpta_loadpn(a1, &v84);
      rpta_loadpn(a1, v90);
      if (compare_ptas(a1) || testeq(a1))
      {
LABEL_10:
        v42 = OUTLINED_FUNCTION_37_4();
        if (!lpta_loadp_setscan_r(v42, v43) && !advance_tok(a1) && !savetok(a1, v86))
        {
LABEL_13:
          v44 = OUTLINED_FUNCTION_63_2();
          savescptr(v44, v45, v46);
        }

LABEL_14:
        v47 = OUTLINED_FUNCTION_28_8();
        starttest(v47, v48);
        WORD1(v88[0]) = 0;
        npush_v(a1, v88, v49, v50, v51, v52, v53, v54);
        WORD1(v86[0]) = 0;
        npush_v(a1, v86, v55, v56, v57, v58, v59, v60);
        if (if_testneq(a1, v61, v62, v63, v64, v65, v66, v67))
        {
LABEL_15:
          v68 = OUTLINED_FUNCTION_63_2();
          copyvar(v68, v69, v70);
LABEL_16:
          OUTLINED_FUNCTION_34_5();
          if (forto_adv_r(a1, v71, v72, 9, v73, v83))
          {
            goto LABEL_17;
          }

LABEL_21:
          lpta_loadpn(a1, v80);
          rpta_loadpn(a1, v90);
          if (compare_ptas(a1) || testneq(a1))
          {
            v76 = 0;
            break;
          }
        }
      }

LABEL_24:
      v76 = 94;
      break;
    }

LABEL_17:
    v74 = *(a1 + 104);
    if (v74)
    {
      v75 = OUTLINED_FUNCTION_33_6(v74);
    }

    else
    {
      v75 = OUTLINED_FUNCTION_51_2();
    }

    v76 = 0;
    switch(v75)
    {
      case 1:
        goto LABEL_21;
      case 2:
        goto LABEL_8;
      case 3:
        goto LABEL_16;
      case 4:
        goto LABEL_7;
      case 5:
        goto LABEL_10;
      case 6:
        goto LABEL_14;
      case 7:
        goto LABEL_13;
      case 8:
        goto LABEL_15;
      case 9:
        continue;
      case 10:
        goto LABEL_25;
      default:
        goto LABEL_24;
    }
  }

LABEL_25:
  vretproc(a1);
  v77 = *MEMORY[0x277D85DE8];
  return v76;
}

uint64_t num_words_in_range()
{
  OUTLINED_FUNCTION_7_18();
  v67 = *MEMORY[0x277D85DE8];
  memset(v63, 0, sizeof(v63));
  v62 = 0;
  v59[0] = 0;
  v59[1] = 0;
  OUTLINED_FUNCTION_23_12(v3, v4, v5, v6, v7, v8, v9, v10, v31, v32[0], v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56);
  OUTLINED_FUNCTION_25_11();
  OUTLINED_FUNCTION_74_2(v11, v12);
  v13 = setjmp(v2);
  if (v13 || OUTLINED_FUNCTION_64_2(v13, v32, v66, v65, v64))
  {
    v1 = 94;
  }

  else
  {
    v16 = OUTLINED_FUNCTION_10_18();
    get_parm(v16, v17, v18, -6);
    v19 = OUTLINED_FUNCTION_43_2();
    get_parm(v19, v20, v21, -6);
    v22 = OUTLINED_FUNCTION_30_7();
    get_parm(v22, v23, v24, -4);
    v60 = 0;
    v61 = 0;
    LODWORD(v59[0]) = -65534;
    v57 = 0;
    v58 = 0;
    LODWORD(v55) = -65534;
    OUTLINED_FUNCTION_52_2(v25, v26, &_MergedGlobals_1_1);
    HIWORD(v62) = 0;
    v27 = OUTLINED_FUNCTION_29_8();
    if (!lpta_loadp_setscan_r(v27, v28) && !advance_tok(v0))
    {
      savetok(v0, v59);
    }

    if (!lpta_loadp_setscan_l(v0, v63))
    {
      v29 = OUTLINED_FUNCTION_59_2();
      if (!savetok(v29, v30))
      {
        advance_tok(v0);
      }
    }

    HIWORD(v62) = (v57 - v60 + 1) & ~((v57 - v60 + 1) >> 15);
    OUTLINED_FUNCTION_62_2(SHIWORD(v62));
  }

  vretproc(v0);
  v14 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t mark_word_str_annot()
{
  OUTLINED_FUNCTION_6_18();
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_19(v3, v4, v5, v6, v7, v8, v9, v10, v47, v50, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v119, v122, v125);
  OUTLINED_FUNCTION_20_12(v11, v12, v13, v14, v15, v16, v17, v18, v48, v51, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117, v120, v123, v126, v128, v130, v132, v134, v136);
  v19 = setjmp(v1);
  if (!v19 && !OUTLINED_FUNCTION_3_19(v19, v20, v21, v22, v23, v24, v25, v26, v49, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118, v121, v124, v127, *v129, v129[4], *v131, *&v131[4], v131[6], v133, SWORD2(v133), SBYTE6(v133), SHIBYTE(v133), v135, v137))
  {
    v29 = OUTLINED_FUNCTION_0_20();
    get_parm(v29, v30, v31, -6);
    v32 = OUTLINED_FUNCTION_30_7();
    get_parm(v32, v33, v34, -6);
    fence_20(v0, 0, &_MergedGlobals_1_1);
    v35 = OUTLINED_FUNCTION_14_16();
    starttest(v35, v36);
    v37 = OUTLINED_FUNCTION_24_12();
    if (!lpta_loadp_setscan_r(v37, v38))
    {
      v39 = OUTLINED_FUNCTION_45_2();
      if (testFldeq(v39, v40, v41, 2) || advance_tok(v0))
      {
        goto LABEL_8;
      }
    }

    do
    {
      v42 = OUTLINED_FUNCTION_63_2();
      lpta_rpta_loadp(v42, v43, v44);
      OUTLINED_FUNCTION_45_2();
      if (!mark_s())
      {
        break;
      }

LABEL_8:
      v45 = *(v0 + 104);
      if (v45)
      {
        v46 = OUTLINED_FUNCTION_33_6(v45);
      }

      else
      {
        v46 = OUTLINED_FUNCTION_51_2();
      }
    }

    while (v46 == 1);
  }

  vretproc(v0);
  v27 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_40_2();
}

uint64_t is_proper_name(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v89 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_15_16(a1, a2, a3, a4, a5, a6, a7, a8, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77);
  OUTLINED_FUNCTION_25_11();
  bzero(v88, v9);
  v10 = setjmp(v88);
  if (v10)
  {
    goto LABEL_4;
  }

  if (OUTLINED_FUNCTION_35_4(v10, &v53, v11, v12, v13, v14, v15, v16, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88[0]))
  {
    goto LABEL_4;
  }

  v17 = OUTLINED_FUNCTION_1_19();
  get_parm(v17, v18, v19, -6);
  fence_20(a1, 0, &_MergedGlobals_1_1);
  v20 = OUTLINED_FUNCTION_54_2();
  starttest(v20, v21);
  v22 = OUTLINED_FUNCTION_27_9();
  if (lpta_loadp_setscan_r(v22, v23))
  {
    goto LABEL_4;
  }

  v28 = OUTLINED_FUNCTION_9_18();
  if (testFldeq(v28, v29, v30, 2))
  {
    goto LABEL_10;
  }

  if (advance_tok(a1))
  {
    goto LABEL_10;
  }

  v31 = OUTLINED_FUNCTION_9_18();
  if (testFldeq(v31, v32, v33, 1) || advance_tok(a1))
  {
    goto LABEL_10;
  }

  v35 = OUTLINED_FUNCTION_28_8();
  starttest(v35, v36);
  if (lpta_loadp_setscan_l(a1, &v76))
  {
    v34 = 0;
    while (2)
    {
      v41 = OUTLINED_FUNCTION_37_4();
      if (lpta_loadp_setscan_l(v41, v42) || (OUTLINED_FUNCTION_9_18(), test_string_s()))
      {
LABEL_31:
        v24 = 0;
        goto LABEL_5;
      }

      v43 = OUTLINED_FUNCTION_28_8();
      starttest(v43, v44);
      OUTLINED_FUNCTION_28_8();
      bspush_ca_boa();
      v45 = OUTLINED_FUNCTION_28_8();
      bspush_ca(v45);
      if (*(a1 + 5102) == *(a1 + 5090))
      {
LABEL_19:
        v34 = 1;
      }

LABEL_20:
      v46 = v34;
LABEL_21:
      v47 = *(a1 + 104);
      if (v47)
      {
        v48 = OUTLINED_FUNCTION_33_6(v47);
        v46 = v49;
      }

      else
      {
        v48 = vback(a1, v46);
        v46 = 0;
      }

      v24 = 94;
      switch(v48)
      {
        case 2:
          v34 = v46;
          continue;
        case 3:
          v50 = OUTLINED_FUNCTION_48_2();
          bspush_ca_scan(v50, v51);
          OUTLINED_FUNCTION_9_18();
          goto LABEL_29;
        case 5:
          OUTLINED_FUNCTION_9_18();
LABEL_29:
          v52 = test_string_s();
          v24 = 94;
          if (!v52)
          {
            goto LABEL_5;
          }

          goto LABEL_21;
        case 6:
        case 7:
        case 11:
          goto LABEL_31;
        case 8:
          bspop_boa(a1);
          goto LABEL_4;
        case 9:
          if (*(a1 + 5110) == *(a1 + 5090))
          {
            goto LABEL_19;
          }

          goto LABEL_21;
        case 10:
          goto LABEL_19;
        default:
          goto LABEL_5;
      }
    }
  }

  v37 = OUTLINED_FUNCTION_16_16();
  bspush_ca_scan(v37, v38);
  *(a1 + 136) = 1;
  v39 = *(a1 + 1232);
  v40 = OUTLINED_FUNCTION_13_18();
  if (test_ptr(v40))
  {
LABEL_10:
    v34 = 0;
    goto LABEL_20;
  }

LABEL_4:
  v24 = 94;
LABEL_5:
  v25 = v24;
  vretproc(a1);
  v26 = *MEMORY[0x277D85DE8];
  return v25;
}

uint64_t is_in_parentheses()
{
  OUTLINED_FUNCTION_6_18();
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_19(v3, v4, v5, v6, v7, v8, v9, v10, v39, v42, v45, v48, v51, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117);
  OUTLINED_FUNCTION_20_12(v11, v12, v13, v14, v15, v16, v17, v18, v40, v43, v46, v49, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118, v120, v122, v124, v126, v128);
  v19 = setjmp(v1);
  if (!v19 && !OUTLINED_FUNCTION_3_19(v19, v20, v21, v22, v23, v24, v25, v26, v41, v44, v47, v50, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v119, *v121, v121[4], *v123, *&v123[4], v123[6], v125, SWORD2(v125), SBYTE6(v125), SHIBYTE(v125), v127, v129))
  {
    v27 = OUTLINED_FUNCTION_0_20();
    get_parm(v27, v28, v29, -6);
    v30 = OUTLINED_FUNCTION_30_7();
    get_parm(v30, v31, v32, -6);
    fence_20(v0, 0, &_MergedGlobals_1_1);
    v33 = OUTLINED_FUNCTION_24_12();
    if (!lpta_loadp_setscan_l(v33, v34))
    {
      OUTLINED_FUNCTION_9_18();
      if (!test_string_s())
      {
        v35 = OUTLINED_FUNCTION_37_4();
        if (!lpta_loadp_setscan_r(v35, v36))
        {
          OUTLINED_FUNCTION_9_18();
          test_string_s();
        }
      }
    }
  }

  vretproc(v0);
  v37 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_40_2();
}

uint64_t count_sylls()
{
  OUTLINED_FUNCTION_7_18();
  v86 = *MEMORY[0x277D85DE8];
  v83 = 0;
  v84 = 0;
  OUTLINED_FUNCTION_17_15(v2, v3, v4, v5, v6, v7, v8, v9, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78[0], v78[1], v78[2], v78[3], v79, v80, v81, v82);
  OUTLINED_FUNCTION_25_11();
  bzero(v85, v10);
  if (!setjmp(v85))
  {
    OUTLINED_FUNCTION_66_2();
    if (!ventproc(v0, v11, v12, v13, v14, v85))
    {
      v17 = OUTLINED_FUNCTION_10_18();
      get_parm(v17, v18, v19, -6);
      v20 = OUTLINED_FUNCTION_4_18();
      get_parm(v20, v21, v22, -6);
      v23 = OUTLINED_FUNCTION_30_7();
      get_parm(v23, v24, v25, -4);
      v26 = OUTLINED_FUNCTION_27_9();
      push_ptr_init(v26, v27);
      v28 = OUTLINED_FUNCTION_41_2();
      v30 = push_ptr_init(v28, v29);
      OUTLINED_FUNCTION_52_2(v30, v31, &_MergedGlobals_1_1);
      HIWORD(v80) = 0;
      v32 = OUTLINED_FUNCTION_14_16();
      startloop(v32, v33);
      v34 = OUTLINED_FUNCTION_29_8();
      lpta_loadpn(v34, v35);
      OUTLINED_FUNCTION_36_4();
      lpta_mover();
      v36 = OUTLINED_FUNCTION_27_9();
      lpta_storep(v36, v37);
      v38 = OUTLINED_FUNCTION_24_12();
      lpta_loadpn(v38, v39);
      OUTLINED_FUNCTION_36_4();
      lpta_mover();
      v40 = OUTLINED_FUNCTION_41_2();
      lpta_storep(v40, v41);
      v42 = OUTLINED_FUNCTION_27_9();
      if (!forall_to_test(v42, v43, v78))
      {
LABEL_6:
        v44 = OUTLINED_FUNCTION_16_16();
        bspush_ca(v44);
        v45 = OUTLINED_FUNCTION_46_2();
        if (!lpta_loadp_setscan_r(v45, v46) && !advance_tok(v0))
        {
LABEL_8:
          c_assvar(v0, &v80);
          ++HIWORD(v80);
LABEL_9:
          OUTLINED_FUNCTION_79_2();
          v47 = OUTLINED_FUNCTION_32_6();
          if (!forto_adv_upto_r(v47, v48, v49, v50, 7, v51))
          {
LABEL_14:
            OUTLINED_FUNCTION_62_2(SHIWORD(v80));
            goto LABEL_4;
          }
        }
      }

      v52 = *(v0 + 104);
      if (v52)
      {
        v53 = OUTLINED_FUNCTION_33_6(v52);
      }

      else
      {
        v53 = OUTLINED_FUNCTION_51_2();
      }

      switch(v53)
      {
        case 1:
          goto LABEL_14;
        case 2:
          goto LABEL_8;
        case 3:
          goto LABEL_9;
        case 4:
          goto LABEL_6;
        default:
          break;
      }
    }
  }

  v1 = 94;
LABEL_4:
  vretproc(v0);
  v15 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t count_chars()
{
  OUTLINED_FUNCTION_7_18();
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_68_2();
  OUTLINED_FUNCTION_22_12(v3, v4, v5, v6, v7, v8, v9, v10, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, SHIDWORD(v55), v56, v57);
  OUTLINED_FUNCTION_25_11();
  OUTLINED_FUNCTION_74_2(v11, v12);
  if (!setjmp(v1))
  {
    OUTLINED_FUNCTION_12_18();
    if (!OUTLINED_FUNCTION_64_2(v13, v14, v15, v16, v17))
    {
      v20 = OUTLINED_FUNCTION_10_18();
      get_parm(v20, v21, v22, -6);
      v23 = OUTLINED_FUNCTION_0_20();
      get_parm(v23, v24, v25, -6);
      v26 = OUTLINED_FUNCTION_11_18();
      get_parm(v26, v27, v28, -4);
      OUTLINED_FUNCTION_52_2(v29, v30, &_MergedGlobals_1_1);
      OUTLINED_FUNCTION_10_18();
      count_cumulative_chars();
      OUTLINED_FUNCTION_62_2(0);
    }
  }

  vretproc(v0);
  v18 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_47_2();
}

uint64_t count_cumulative_chars()
{
  OUTLINED_FUNCTION_7_18();
  v85 = *MEMORY[0x277D85DE8];
  v82 = 0;
  v83 = 0;
  OUTLINED_FUNCTION_17_15(v2, v3, v4, v5, v6, v7, v8, v9, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77[0], v77[1], v77[2], v77[3], v78, v79, v80, v81);
  OUTLINED_FUNCTION_25_11();
  bzero(v84, v10);
  if (!setjmp(v84))
  {
    OUTLINED_FUNCTION_66_2();
    if (!ventproc(v0, v11, v12, v13, v14, v84))
    {
      v17 = OUTLINED_FUNCTION_10_18();
      get_parm(v17, v18, v19, -6);
      v20 = OUTLINED_FUNCTION_4_18();
      get_parm(v20, v21, v22, -6);
      v23 = OUTLINED_FUNCTION_30_7();
      get_parm(v23, v24, v25, -4);
      v26 = OUTLINED_FUNCTION_27_9();
      push_ptr_init(v26, v27);
      v28 = OUTLINED_FUNCTION_41_2();
      push_ptr_init(v28, v29);
      fence_20(v0, 0, &_MergedGlobals_1_1);
      v30 = OUTLINED_FUNCTION_72_2();
      startloop(v30, v31);
      v32 = OUTLINED_FUNCTION_29_8();
      lpta_loadpn(v32, v33);
      OUTLINED_FUNCTION_76_2();
      v34 = OUTLINED_FUNCTION_27_9();
      lpta_storep(v34, v35);
      v36 = OUTLINED_FUNCTION_24_12();
      lpta_loadpn(v36, v37);
      OUTLINED_FUNCTION_76_2();
      v38 = OUTLINED_FUNCTION_41_2();
      lpta_storep(v38, v39);
      v40 = OUTLINED_FUNCTION_27_9();
      if (!forall_to_test(v40, v41, v77))
      {
LABEL_6:
        v42 = OUTLINED_FUNCTION_16_16();
        bspush_ca(v42);
        v43 = OUTLINED_FUNCTION_37_4();
        if (!lpta_loadp_setscan_r(v43, v44) && !advance_tok(v0))
        {
LABEL_8:
          c_assvar(v0, &v79);
          ++HIWORD(v79);
LABEL_9:
          OUTLINED_FUNCTION_34_5();
          v45 = OUTLINED_FUNCTION_32_6();
          if (!forto_adv_upto_r(v45, v46, v47, v48, v49, v50))
          {
LABEL_14:
            OUTLINED_FUNCTION_62_2(SHIWORD(v79));
            goto LABEL_4;
          }
        }
      }

      v51 = *(v0 + 104);
      if (v51)
      {
        v52 = OUTLINED_FUNCTION_33_6(v51);
      }

      else
      {
        v52 = OUTLINED_FUNCTION_51_2();
      }

      switch(v52)
      {
        case 1:
          goto LABEL_14;
        case 2:
          goto LABEL_8;
        case 3:
          goto LABEL_9;
        case 4:
          goto LABEL_6;
        default:
          break;
      }
    }
  }

  v1 = 94;
LABEL_4:
  vretproc(v0);
  v15 = *MEMORY[0x277D85DE8];
  return v1;
}

void reset_endptr()
{
  OUTLINED_FUNCTION_71_2();
  v1 = v0;
  v115 = *MEMORY[0x277D85DE8];
  v102 = 0;
  v103 = 0;
  v100 = 0;
  v101 = 0;
  HIDWORD(v99) = 0;
  OUTLINED_FUNCTION_15_16(v0, v2, v3, v4, v5, v6, v7, v8, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v98);
  OUTLINED_FUNCTION_25_11();
  bzero(v114, v9);
  v10 = setjmp(v114);
  if (!v10 && !OUTLINED_FUNCTION_67_2(v10, v11, v12, v13, v14, v15, v16, v17, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114[0]))
  {
    v19 = OUTLINED_FUNCTION_53_2();
    OUTLINED_FUNCTION_57_2(v19, v20);
    v21 = OUTLINED_FUNCTION_30_7();
    get_parm(v21, v22, v23, -6);
    v24 = OUTLINED_FUNCTION_4_18();
    get_parm(v24, v25, v26, -4);
    v27 = OUTLINED_FUNCTION_29_8();
    v29 = push_ptr_init(v27, v28);
    OUTLINED_FUNCTION_52_2(v29, v30, &_MergedGlobals_1_1);
    v31 = OUTLINED_FUNCTION_72_2();
    startloop(v31, v32);
    v33 = OUTLINED_FUNCTION_53_2();
    lpta_loadpn(v33, v34);
    OUTLINED_FUNCTION_76_2();
    v35 = OUTLINED_FUNCTION_29_8();
    lpta_storep(v35, v36);
    while (2)
    {
      v37 = OUTLINED_FUNCTION_72_2();
      bspush_ca(v37);
      if (SHIWORD(v99) >= 1)
      {
        bsclear(v1);
        v38 = OUTLINED_FUNCTION_27_9();
        bspush_ca(v38);
        v39 = OUTLINED_FUNCTION_29_8();
        if (!lpta_loadp_setscan_r(v39, v40) && !advance_tok(v1))
        {
LABEL_13:
          v45 = OUTLINED_FUNCTION_82_2();
          savescptr(v45, v46, &v100);
LABEL_14:
          v47 = OUTLINED_FUNCTION_24_12();
          c_assvar(v47, v48);
          --HIWORD(v99);
LABEL_15:
          v49 = OUTLINED_FUNCTION_72_2();
          if (!forall_adv_upto_r(v49, v50, 2, 5, 1, &v97))
          {
LABEL_16:
            OUTLINED_FUNCTION_55_2(v101);
            break;
          }
        }
      }

      v41 = v1[13];
      if (v41)
      {
        OUTLINED_FUNCTION_33_6(v41);
      }

      else
      {
        vback(v1, 0);
      }

      OUTLINED_FUNCTION_56_2();
      if (!(!v44 & v43))
      {
        switch(v42)
        {
          case 1:
            goto LABEL_14;
          case 2:
            goto LABEL_15;
          case 3:
            goto LABEL_13;
          case 4:
            continue;
          default:
            goto LABEL_16;
        }
      }

      break;
    }
  }

  vretproc(v1);
  v18 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_81_2();
  OUTLINED_FUNCTION_70_2();
}

uint64_t reset_endptr_bounded(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  v93 = *MEMORY[0x277D85DE8];
  v87 = 0;
  v88 = 0;
  v85 = 0;
  v86 = 0;
  OUTLINED_FUNCTION_17_15(a1, a2, a3, a4, a5, a6, a7, a8, v56, v57[0], v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80[0], v80[1], v80[2], v80[3], v81, v82, v83, v84);
  OUTLINED_FUNCTION_25_11();
  bzero(v92, v10);
  if (!setjmp(v92) && !ventproc(a1, v57, v91, v90, v89, v92))
  {
    v13 = OUTLINED_FUNCTION_39_3();
    get_parm(v13, v14, v15, -6);
    v16 = OUTLINED_FUNCTION_30_7();
    get_parm(v16, v17, v18, -6);
    v19 = OUTLINED_FUNCTION_10_18();
    get_parm(v19, v20, v21, -6);
    v22 = OUTLINED_FUNCTION_43_2();
    get_parm(v22, v23, v24, -4);
    v25 = OUTLINED_FUNCTION_27_9();
    push_ptr_init(v25, v26);
    v27 = OUTLINED_FUNCTION_24_12();
    push_ptr_init(v27, v28);
    fence_20(a1, 0, &_MergedGlobals_1_1);
    v29 = OUTLINED_FUNCTION_72_2();
    startloop(v29, v30);
    v31 = OUTLINED_FUNCTION_41_2();
    lpta_loadpn(v31, v32);
    OUTLINED_FUNCTION_76_2();
    v33 = OUTLINED_FUNCTION_27_9();
    lpta_storep(v33, v34);
    v35 = OUTLINED_FUNCTION_29_8();
    lpta_loadpn(v35, v36);
    OUTLINED_FUNCTION_76_2();
    v37 = OUTLINED_FUNCTION_24_12();
    lpta_storep(v37, v38);
    v39 = OUTLINED_FUNCTION_27_9();
    if (!forall_to_test(v39, v40, v80))
    {
LABEL_6:
      v41 = OUTLINED_FUNCTION_14_16();
      bspush_ca(v41);
      if (SHIWORD(v82) >= 1)
      {
        bsclear(a1);
        v42 = OUTLINED_FUNCTION_16_16();
        bspush_ca(v42);
        v43 = OUTLINED_FUNCTION_37_4();
        if (!lpta_loadp_setscan_r(v43, v44) && !advance_tok(a1))
        {
LABEL_9:
          OUTLINED_FUNCTION_78_2();
          savescptr(a1, v45, &v85);
LABEL_10:
          c_assvar(a1, &v82);
          --HIWORD(v82);
LABEL_11:
          OUTLINED_FUNCTION_34_5();
          v46 = OUTLINED_FUNCTION_32_6();
          if (!forto_adv_upto_r(v46, v47, v48, v49, v50, v51))
          {
LABEL_17:
            OUTLINED_FUNCTION_55_2(v86);
            goto LABEL_4;
          }
        }
      }
    }

    v52 = *(a1 + 104);
    if (v52)
    {
      OUTLINED_FUNCTION_33_6(v52);
    }

    else
    {
      OUTLINED_FUNCTION_51_2();
    }

    OUTLINED_FUNCTION_56_2();
    if (!(!v55 & v54))
    {
      switch(v53)
      {
        case 1:
          goto LABEL_10;
        case 2:
          goto LABEL_11;
        case 3:
          goto LABEL_9;
        case 4:
          goto LABEL_6;
        default:
          goto LABEL_17;
      }
    }
  }

  v8 = 94;
LABEL_4:
  vretproc(a1);
  v11 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t in_syllable()
{
  OUTLINED_FUNCTION_7_18();
  v62 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_18(v2, v3, v4, v5, v6, v7, v8, v9, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61);
  OUTLINED_FUNCTION_25_11();
  OUTLINED_FUNCTION_74_2(v10, v11);
  if (!setjmp(v1))
  {
    OUTLINED_FUNCTION_18_14();
    if (!OUTLINED_FUNCTION_64_2(v12, v13, v14, v15, v16))
    {
      v17 = OUTLINED_FUNCTION_10_18();
      get_parm(v17, v18, v19, -6);
      v20 = OUTLINED_FUNCTION_38_4();
      OUTLINED_FUNCTION_50_2(v20, v21);
      v22 = OUTLINED_FUNCTION_1_19();
      get_parm(v22, v23, v24, -6);
      fence_20(v0, 0, &_MergedGlobals_1_1);
      v25 = OUTLINED_FUNCTION_29_8();
      lpta_loadpn(v25, v26);
      v27 = OUTLINED_FUNCTION_27_9();
      rpta_loadpn(v27, v28);
      if (compare_ptas(v0) || testeq(v0))
      {
        v29 = OUTLINED_FUNCTION_80_2();
        lpta_loadpn(v29, v30);
        OUTLINED_FUNCTION_36_4();
        lpta_ctxtl();
        v31 = OUTLINED_FUNCTION_38_4();
        rpta_loadpn(v31, v32);
        if (!compare_ptas(v0))
        {
          testeq(v0);
        }
      }
    }
  }

  vretproc(v0);
  v33 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_47_2();
}

uint64_t is_spr()
{
  OUTLINED_FUNCTION_6_18();
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_19(v3, v4, v5, v6, v7, v8, v9, v10, v42, v45, v48, v51, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v118, v121);
  OUTLINED_FUNCTION_20_12(v11, v12, v13, v14, v15, v16, v17, v18, v43, v46, v49, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v119, v122, v124, v126, v128, v130, v132);
  v19 = setjmp(v1);
  if (!v19 && !OUTLINED_FUNCTION_3_19(v19, v20, v21, v22, v23, v24, v25, v26, v44, v47, v50, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v120, v123, *v125, v125[4], *v127, *&v127[4], v127[6], v129, SWORD2(v129), SBYTE6(v129), SHIBYTE(v129), v131, v133))
  {
    if ((v27 = OUTLINED_FUNCTION_0_20(), get_parm(v27, v28, v29, -6), v30 = OUTLINED_FUNCTION_30_7(), get_parm(v30, v31, v32, -6), fence_20(v0, 0, &_MergedGlobals_1_1), v33 = OUTLINED_FUNCTION_24_12(), !lpta_loadp_setscan_r(v33, v34)) && !test_string_s() || (v35 = OUTLINED_FUNCTION_21_12(), !lpta_loadp_setscan_r(v35, v36)) && !test_string_s())
    {
      v39 = OUTLINED_FUNCTION_63_2();
      savescptr(v39, v40, v41);
      OUTLINED_FUNCTION_55_2(v117);
    }
  }

  vretproc(v0);
  v37 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_40_2();
}

uint64_t first_root_vow(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v8 = a2;
  v72 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_15_16(a1, a2, a3, a4, a5, a6, a7, a8, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60);
  OUTLINED_FUNCTION_25_11();
  bzero(v71, v10);
  v11 = setjmp(v71);
  if (!v11 && !OUTLINED_FUNCTION_35_4(v11, &v36, v12, v13, v14, v15, v16, v17, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71[0]))
  {
    v20 = OUTLINED_FUNCTION_30_7();
    get_parm(v20, v21, v22, -6);
    fence_20(a1, 0, &_MergedGlobals_1_1);
    v23 = OUTLINED_FUNCTION_44_2();
    fence_20(v23, v24, v25);
    v26 = OUTLINED_FUNCTION_54_2();
    starttest(v26, v27);
    *(a1 + 136) = v8;
    OUTLINED_FUNCTION_13_18();
    if (lpta_tstctxtl() || (v28 = OUTLINED_FUNCTION_42_2(), setscan_l(v28), v29))
    {
LABEL_7:
      vretproc(a1);
      result = 0;
      goto LABEL_4;
    }

LABEL_8:
    do
    {
      v30 = OUTLINED_FUNCTION_48_2();
      bspush_ca_scan(v30, v31);
      v32 = OUTLINED_FUNCTION_42_2();
      if (!testFldeq(v32, v33, 1, 2) && !advance_tok(a1))
      {
        break;
      }

      while (1)
      {
        v34 = *(a1 + 104);
        v35 = v34 ? OUTLINED_FUNCTION_33_6(v34) : OUTLINED_FUNCTION_51_2();
        if (v35 != 3)
        {
          break;
        }

        if (!advance_tok(a1))
        {
          goto LABEL_8;
        }
      }

      if (v35 == 1)
      {
        goto LABEL_7;
      }
    }

    while (v35 == 2);
  }

  vretproc(a1);
  result = 94;
LABEL_4:
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

void OUTLINED_FUNCTION_2_19(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  *(v36 - 56) = v35;
  a34 = 0;
  a35 = 0;
  a32 = 0;
  a33 = 0;

  bzero(&a9, 0xB8uLL);
}

uint64_t OUTLINED_FUNCTION_3_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, char a37, int a38, __int16 a39, char a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, char a46)
{

  return ventproc(v46, &a9, &a44, &a40, &a37, &a46);
}

void OUTLINED_FUNCTION_5_18(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  a34 = 0;
  a35 = 0;
  a32 = 0;
  a33 = 0;

  bzero(&a9, 0xB8uLL);
}

uint64_t OUTLINED_FUNCTION_8_18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, char a37, int a38, __int16 a39, char a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, char a46)
{

  return ventproc(v46, a2, &a44, &a40, &a37, &a46);
}

uint64_t OUTLINED_FUNCTION_13_18()
{
  *(v1 + 112) = v0;
  *(v1 + 128) = 0;
  return v1;
}

void OUTLINED_FUNCTION_15_16(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  a32 = 0;
  a33 = 0;

  bzero(&a9, 0xB8uLL);
}

void OUTLINED_FUNCTION_17_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37, int a38, uint64_t a39, uint64_t a40)
{
  a39 = 0;
  a40 = 0;
  a38 = 0;
  a35 = 0;
  a36 = 0;
  a33 = 0;
  a34 = 0;

  bzero(&a10, 0xB8uLL);
}

void OUTLINED_FUNCTION_20_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{

  bzero(&a40, 0xC0uLL);
}

void OUTLINED_FUNCTION_22_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, int a34, uint64_t a35, uint64_t a36)
{
  a35 = 0;
  a36 = 0;
  a34 = 0;

  bzero(&a10, 0xB8uLL);
}

void OUTLINED_FUNCTION_23_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  a33 = 0;
  a34 = 0;

  bzero(&a10, 0xB8uLL);
}

uint64_t OUTLINED_FUNCTION_35_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, char a35, int a36, __int16 a37, char a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, char a44)
{

  return ventproc(v44, a2, &a42, &a38, &a35, &a44);
}

void OUTLINED_FUNCTION_50_2(uint64_t a1, uint64_t a2)
{

  get_parm(a1, a2, v2, -6);
}

uint64_t OUTLINED_FUNCTION_51_2()
{

  return vback(v0, 0);
}

void *OUTLINED_FUNCTION_52_2(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return fence_20(v3, 0, a3);
}

void OUTLINED_FUNCTION_57_2(uint64_t a1, uint64_t a2)
{

  get_parm(a1, a2, v2, -6);
}

double OUTLINED_FUNCTION_58_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{

  *&result = savescptr(v33, 2, &a33).n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_64_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return ventproc(v5, a2, a3, a4, a5, v6 - 248);
}

uint64_t OUTLINED_FUNCTION_67_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39, char a40, int a41, __int16 a42, char a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, char a49)
{

  return ventproc(v49, &a9, &a47, &a43, &a40, &a49);
}

void OUTLINED_FUNCTION_73_2(uint64_t a1, uint64_t a2)
{

  get_parm(a1, a2, v2, -6);
}

void OUTLINED_FUNCTION_74_2(uint64_t a1, size_t a2)
{

  bzero((v2 - 248), a2);
}

void OUTLINED_FUNCTION_75_2(uint64_t a1, size_t a2)
{

  bzero((v2 - 248), a2);
}

_BYTE *OUTLINED_FUNCTION_76_2()
{

  return lpta_mover();
}

uint64_t register_por_phones(uint64_t a1, __int16 *a2, __int16 *a3)
{
  v2655 = *MEMORY[0x277D85DE8];
  v2650 = 0;
  v2648 = 0;
  v2649 = 0;
  v2646 = 0;
  v2647 = 0;
  v2644 = 0;
  v2645 = 0;
  v2642 = 0;
  v2643 = 0;
  bzero(&v2619, 0xB8uLL);
  v7 = v2654;
  bzero(v2654, 0xC0uLL);
  if (!setjmp(v2654) && !ventproc(a1, &v2619, v2653, v2652, v2651, v2654))
  {
    get_parm(a1, &v2650, a2, -4);
    get_parm(a1, &v2649 + 4, a3, -4);
    LODWORD(v2649) = 65532;
    v2648 = 0xFFFC0000FFFCLL;
    v2647 = 0xFFFC0000FFFCLL;
    v2646 = 0xFFFC0000FFFCLL;
    v2645 = 0xFFFC0000FFFCLL;
    v2644 = 0xFFFC0000FFFCLL;
    v2643 = 0xFFFC0000FFFCLL;
    v2642 = 0xFFFC0000FFFCLL;
    *(*(a1 + 192) + 8121) = 0;
    memset(*(a1 + 264), *(a1 + 288), *(a1 + 288));
    OUTLINED_FUNCTION_41_3(1);
    v10 = OUTLINED_FUNCTION_37_5();
    move_i(v10, v11, 69);
    OUTLINED_FUNCTION_35_5(v12, v13, v14, v15, v16, v17, v18, v19, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, v2648, SBYTE4(v2648));
    OUTLINED_FUNCTION_30_8(v20, v21, v22, v23, v24, v25, v26, v27, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, v2648);
    OUTLINED_FUNCTION_29_9(v28, v29, v30, v31, v32, v33, v34, v35, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, SBYTE4(v2647));
    OUTLINED_FUNCTION_28_9(v36, v37, v38, v39, v40, v41, v42, v43, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647);
    OUTLINED_FUNCTION_27_10(v44, v45, v46, v47, v48, v49, v50, v51, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, SBYTE4(v2646));
    v52 = &v2646;
    move_i(a1, &v2646, 0);
    v53 = OUTLINED_FUNCTION_26_12();
    move_i(v53, v54, 50);
    v55 = OUTLINED_FUNCTION_9_19();
    move_i(v55, v56, 100);
    v57 = OUTLINED_FUNCTION_8_19();
    move_i(v57, v58, 128);
    move_i(a1, &v2644, 75);
    v59 = &v2643 + 4;
    move_i(a1, &v2643 + 4, 130);
    v60 = &v2643;
    move_i(a1, &v2643, 175);
    v61 = &v2642 + 4;
    move_i(a1, &v2642 + 4, 0);
    v62 = &v2642;
    move_i(a1, &v2642, 125);
    registerPhoneme(a1, &v2650, &v2649 + 4, a1 + 3552, &v2649, &v2648 + 4, &v2648, &v2647 + 4, &v2647, &v2646 + 4, &v2646, &v2645 + 4, v2654, v3, &v2644, &v2643 + 4, &v2643, &v2642 + 4, &v2642);
    if (!v63)
    {
LABEL_6:
      OUTLINED_FUNCTION_6_19();
      OUTLINED_FUNCTION_41_3(2);
      v64 = OUTLINED_FUNCTION_38_5();
      move_i(v64, v65, 78);
      OUTLINED_FUNCTION_36_5(v66, v67, v68, v69, v70, v71, v72, v73, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, SBYTE4(v2642));
      OUTLINED_FUNCTION_32_7(v74, v75, v76, v77, v78, v79, v80, v81, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643);
      OUTLINED_FUNCTION_31_8(v82, v83, v84, v85, v86, v87, v88, v89, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, SBYTE4(v2643));
      move_i(a1, &v2644, 0);
      move_i(a1, &v2644 + 4, 0);
      move_i(a1, &v2645, 0);
      v61 = &v2645 + 4;
      move_i(a1, &v2645 + 4, 50);
      v62 = &v2646;
      move_i(a1, &v2646, 100);
      v3 = &v2646 + 4;
      move_i(a1, &v2646 + 4, 128);
      v7 = &v2647;
      move_i(a1, &v2647, 75);
      move_i(a1, &v2647 + 4, 130);
      v52 = &v2648;
      move_i(a1, &v2648, 130);
      v60 = (&v2648 + 4);
      move_i(a1, &v2648 + 4, 0);
      v59 = &v2649;
      move_i(a1, &v2649, 0);
      OUTLINED_FUNCTION_4_19(&v2650, &v2649 + 4, a1 + 3552, &v2608, v2608, &v2644 + 4, &v2645, &v2645 + 4, &v2646, &v2646 + 4, &v2647, &v2647 + 4, &v2648, &v2648 + 4, &v2649, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, SWORD1(v2642), SBYTE4(v2642), SHIWORD(v2642), v2643, SWORD1(v2643), SBYTE4(v2643), SHIWORD(v2643), v2644);
      if (!v90)
      {
LABEL_7:
        OUTLINED_FUNCTION_6_19();
        OUTLINED_FUNCTION_41_3(3);
        v91 = OUTLINED_FUNCTION_37_5();
        move_i(v91, v92, 82);
        OUTLINED_FUNCTION_35_5(v93, v94, v95, v96, v97, v98, v99, v100, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, v2648, SBYTE4(v2648));
        OUTLINED_FUNCTION_30_8(v101, v102, v103, v104, v105, v106, v107, v108, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, v2648);
        OUTLINED_FUNCTION_29_9(v109, v110, v111, v112, v113, v114, v115, v116, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, SBYTE4(v2647));
        OUTLINED_FUNCTION_28_9(v117, v118, v119, v120, v121, v122, v123, v124, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647);
        OUTLINED_FUNCTION_27_10(v125, v126, v127, v128, v129, v130, v131, v132, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, SBYTE4(v2646));
        OUTLINED_FUNCTION_39_4(v133, v134, v135, v136, v137, v138, v139, v140, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646);
        v141 = OUTLINED_FUNCTION_7_19();
        move_i(v141, v142, 50);
        v143 = OUTLINED_FUNCTION_9_19();
        move_i(v143, v144, 100);
        v145 = OUTLINED_FUNCTION_8_19();
        move_i(v145, v146, 128);
        v147 = OUTLINED_FUNCTION_12_19();
        move_i(v147, v148, 75);
        v149 = OUTLINED_FUNCTION_11_19();
        move_i(v149, v150, 130);
        v151 = OUTLINED_FUNCTION_10_19();
        move_i(v151, v152, 130);
        v153 = OUTLINED_FUNCTION_26_12();
        move_i(v153, v154, 0);
        v155 = OUTLINED_FUNCTION_18_15();
        move_i(v155, v156, 0);
        v2617 = (&v2642 + 4);
        v2618 = v59;
        OUTLINED_FUNCTION_1_20(&v2608);
        v157[2] = &v2646;
        v157[1] = &v2646 + 4;
        OUTLINED_FUNCTION_5_19(v158, v159, v160, v157, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, SWORD1(v2647), SBYTE4(v2647), SHIWORD(v2647), v2648, SWORD1(v2648), SBYTE4(v2648), SHIWORD(v2648), v2649);
        if (!v161)
        {
LABEL_8:
          OUTLINED_FUNCTION_6_19();
          OUTLINED_FUNCTION_41_3(4);
          v162 = OUTLINED_FUNCTION_38_5();
          move_i(v162, v163, 83);
          OUTLINED_FUNCTION_36_5(v164, v165, v166, v167, v168, v169, v170, v171, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, SBYTE4(v2642));
          OUTLINED_FUNCTION_32_7(v172, v173, v174, v175, v176, v177, v178, v179, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643);
          OUTLINED_FUNCTION_31_8(v180, v181, v182, v183, v184, v185, v186, v187, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, SBYTE4(v2643));
          OUTLINED_FUNCTION_34_6(v188, v189, v190, v191, v192, v193, v194, v195, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644);
          OUTLINED_FUNCTION_33_7(v196, v197, v198, v199, v200, v201, v202, v203, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, SBYTE4(v2644));
          OUTLINED_FUNCTION_23_13(v204, v205, v206, v207, v208, v209, v210, v211, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645);
          v212 = OUTLINED_FUNCTION_7_19();
          move_i(v212, v213, 75);
          v214 = OUTLINED_FUNCTION_17_16();
          move_i(v214, v215, 125);
          v216 = OUTLINED_FUNCTION_13_19();
          move_i(v216, v217, 128);
          v218 = OUTLINED_FUNCTION_16_17();
          move_i(v218, v219, 100);
          v220 = OUTLINED_FUNCTION_15_17();
          move_i(v220, v221, 130);
          v222 = OUTLINED_FUNCTION_14_17();
          move_i(v222, v223, 130);
          OUTLINED_FUNCTION_22_13(v224, v225, v226, v227, v228, v229, v230, v231, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, v2648, SBYTE4(v2648));
          v232 = OUTLINED_FUNCTION_21_13();
          move_i(v232, v233, 200);
          OUTLINED_FUNCTION_0_21();
          OUTLINED_FUNCTION_3_20(v234, v235, v236, v237, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, SWORD1(v2642), SBYTE4(v2642), SHIWORD(v2642), v2643, SWORD1(v2643), SBYTE4(v2643), SHIWORD(v2643), v2644, SWORD1(v2644), SBYTE4(v2644));
          if (!v238)
          {
LABEL_9:
            OUTLINED_FUNCTION_6_19();
            OUTLINED_FUNCTION_41_3(5);
            v239 = OUTLINED_FUNCTION_37_5();
            move_i(v239, v240, 87);
            OUTLINED_FUNCTION_35_5(v241, v242, v243, v244, v245, v246, v247, v248, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, v2648, SBYTE4(v2648));
            OUTLINED_FUNCTION_30_8(v249, v250, v251, v252, v253, v254, v255, v256, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, v2648);
            OUTLINED_FUNCTION_29_9(v257, v258, v259, v260, v261, v262, v263, v264, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, SBYTE4(v2647));
            OUTLINED_FUNCTION_28_9(v265, v266, v267, v268, v269, v270, v271, v272, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647);
            OUTLINED_FUNCTION_27_10(v273, v274, v275, v276, v277, v278, v279, v280, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, SBYTE4(v2646));
            OUTLINED_FUNCTION_25_12(v281, v282, v283, v284, v285, v286, v287, v288, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646);
            v289 = OUTLINED_FUNCTION_7_19();
            move_i(v289, v290, 25);
            v291 = OUTLINED_FUNCTION_9_19();
            move_i(v291, v292, 0);
            v293 = OUTLINED_FUNCTION_8_19();
            move_i(v293, v294, 130);
            v295 = OUTLINED_FUNCTION_12_19();
            move_i(v295, v296, 90);
            v297 = OUTLINED_FUNCTION_11_19();
            move_i(v297, v298, 60);
            v299 = OUTLINED_FUNCTION_10_19();
            move_i(v299, v300, 60);
            OUTLINED_FUNCTION_19_14(v301, v302, v303, v304, v305, v306, v307, v308, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, SBYTE4(v2642));
            v309 = OUTLINED_FUNCTION_20_13();
            move_i(v309, v310, 255);
            OUTLINED_FUNCTION_0_21();
            v311[1] = &v2646 + 4;
            v311[2] = v59;
            OUTLINED_FUNCTION_5_19(v312, v313, v314, v311, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, SWORD1(v2647), SBYTE4(v2647), SHIWORD(v2647), v2648, SWORD1(v2648), SBYTE4(v2648), SHIWORD(v2648), v2649);
            if (!v315)
            {
LABEL_10:
              OUTLINED_FUNCTION_6_19();
              OUTLINED_FUNCTION_41_3(6);
              v316 = OUTLINED_FUNCTION_38_5();
              move_i(v316, v317, 89);
              OUTLINED_FUNCTION_36_5(v318, v319, v320, v321, v322, v323, v324, v325, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, SBYTE4(v2642));
              OUTLINED_FUNCTION_32_7(v326, v327, v328, v329, v330, v331, v332, v333, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643);
              OUTLINED_FUNCTION_31_8(v334, v335, v336, v337, v338, v339, v340, v341, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, SBYTE4(v2643));
              OUTLINED_FUNCTION_34_6(v342, v343, v344, v345, v346, v347, v348, v349, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644);
              OUTLINED_FUNCTION_33_7(v350, v351, v352, v353, v354, v355, v356, v357, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, SBYTE4(v2644));
              OUTLINED_FUNCTION_23_13(v358, v359, v360, v361, v362, v363, v364, v365, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645);
              v366 = OUTLINED_FUNCTION_7_19();
              move_i(v366, v367, 25);
              v368 = OUTLINED_FUNCTION_17_16();
              move_i(v368, v369, 150);
              v370 = OUTLINED_FUNCTION_13_19();
              move_i(v370, v371, 128);
              v372 = OUTLINED_FUNCTION_16_17();
              move_i(v372, v373, 50);
              v374 = OUTLINED_FUNCTION_15_17();
              move_i(v374, v375, 130);
              v376 = OUTLINED_FUNCTION_14_17();
              move_i(v376, v377, 130);
              OUTLINED_FUNCTION_22_13(v378, v379, v380, v381, v382, v383, v384, v385, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, v2648, SBYTE4(v2648));
              v386 = OUTLINED_FUNCTION_21_13();
              move_i(v386, v387, 255);
              OUTLINED_FUNCTION_0_21();
              OUTLINED_FUNCTION_3_20(v388, v389, v390, v391, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, SWORD1(v2642), SBYTE4(v2642), SHIWORD(v2642), v2643, SWORD1(v2643), SBYTE4(v2643), SHIWORD(v2643), v2644, SWORD1(v2644), SBYTE4(v2644));
              if (!v392)
              {
LABEL_11:
                OUTLINED_FUNCTION_6_19();
                OUTLINED_FUNCTION_41_3(7);
                v393 = OUTLINED_FUNCTION_37_5();
                move_i(v393, v394, 90);
                OUTLINED_FUNCTION_35_5(v395, v396, v397, v398, v399, v400, v401, v402, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, v2648, SBYTE4(v2648));
                OUTLINED_FUNCTION_30_8(v403, v404, v405, v406, v407, v408, v409, v410, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, v2648);
                OUTLINED_FUNCTION_29_9(v411, v412, v413, v414, v415, v416, v417, v418, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, SBYTE4(v2647));
                OUTLINED_FUNCTION_28_9(v419, v420, v421, v422, v423, v424, v425, v426, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647);
                OUTLINED_FUNCTION_27_10(v427, v428, v429, v430, v431, v432, v433, v434, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, SBYTE4(v2646));
                OUTLINED_FUNCTION_25_12(v435, v436, v437, v438, v439, v440, v441, v442, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646);
                v443 = OUTLINED_FUNCTION_7_19();
                move_i(v443, v444, 75);
                v445 = OUTLINED_FUNCTION_9_19();
                move_i(v445, v446, 125);
                v447 = OUTLINED_FUNCTION_8_19();
                move_i(v447, v448, 128);
                v449 = OUTLINED_FUNCTION_12_19();
                move_i(v449, v450, 100);
                v451 = OUTLINED_FUNCTION_11_19();
                move_i(v451, v452, 130);
                v453 = OUTLINED_FUNCTION_10_19();
                move_i(v453, v454, 130);
                OUTLINED_FUNCTION_19_14(v455, v456, v457, v458, v459, v460, v461, v462, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, SBYTE4(v2642));
                v463 = OUTLINED_FUNCTION_20_13();
                move_i(v463, v464, 200);
                OUTLINED_FUNCTION_0_21();
                v465[1] = &v2646 + 4;
                v465[2] = v59;
                OUTLINED_FUNCTION_5_19(v466, v467, v468, v465, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, SWORD1(v2647), SBYTE4(v2647), SHIWORD(v2647), v2648, SWORD1(v2648), SBYTE4(v2648), SHIWORD(v2648), v2649);
                if (!v469)
                {
LABEL_12:
                  OUTLINED_FUNCTION_6_19();
                  OUTLINED_FUNCTION_41_3(8);
                  v470 = OUTLINED_FUNCTION_38_5();
                  move_i(v470, v471, 97);
                  OUTLINED_FUNCTION_36_5(v472, v473, v474, v475, v476, v477, v478, v479, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, SBYTE4(v2642));
                  OUTLINED_FUNCTION_32_7(v480, v481, v482, v483, v484, v485, v486, v487, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643);
                  OUTLINED_FUNCTION_31_8(v488, v489, v490, v491, v492, v493, v494, v495, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, SBYTE4(v2643));
                  OUTLINED_FUNCTION_34_6(v496, v497, v498, v499, v500, v501, v502, v503, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644);
                  OUTLINED_FUNCTION_33_7(v504, v505, v506, v507, v508, v509, v510, v511, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, SBYTE4(v2644));
                  OUTLINED_FUNCTION_23_13(v512, v513, v514, v515, v516, v517, v518, v519, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645);
                  v520 = OUTLINED_FUNCTION_7_19();
                  move_i(v520, v521, 100);
                  v522 = OUTLINED_FUNCTION_26_12();
                  move_i(v522, v523, 125);
                  OUTLINED_FUNCTION_48_3(v524, v525, v526, v527, v528, v529, v530, v531, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, SBYTE4(v2646));
                  OUTLINED_FUNCTION_47_3(v532, v533, v534, v535, v536, v537, v538, v539, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647);
                  OUTLINED_FUNCTION_46_3(v540, v541, v542, v543, v544, v545, v546, v547, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, SBYTE4(v2647));
                  OUTLINED_FUNCTION_45_3(v548, v549, v550, v551, v552, v553, v554, v555, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, v2648);
                  OUTLINED_FUNCTION_44_3(v556, v557, v558, v559, v560, v561, v562, v563, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, v2648, SBYTE4(v2648));
                  OUTLINED_FUNCTION_43_3(v564, v565, v566, v567, v568, v569, v570, v571, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, v2648, v2649);
                  OUTLINED_FUNCTION_2_20(&v2608, v2608, v2609, v2610, v60, &v2646, v7, v3, v62, v61, &v2644, v52, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, SWORD1(v2642), SBYTE4(v2642), SHIWORD(v2642), v2643, SWORD1(v2643), SBYTE4(v2643), SHIWORD(v2643), v2644, SWORD1(v2644), SBYTE4(v2644), v2645, v2646, v2647, v2648, v2649, SBYTE4(v2649), SHIWORD(v2649), v2650);
                  if (!v572)
                  {
LABEL_13:
                    OUTLINED_FUNCTION_6_19();
                    OUTLINED_FUNCTION_41_3(9);
                    v573 = OUTLINED_FUNCTION_37_5();
                    move_i(v573, v574, 98);
                    OUTLINED_FUNCTION_35_5(v575, v576, v577, v578, v579, v580, v581, v582, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, v2648, SBYTE4(v2648));
                    OUTLINED_FUNCTION_30_8(v583, v584, v585, v586, v587, v588, v589, v590, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, v2648);
                    OUTLINED_FUNCTION_29_9(v591, v592, v593, v594, v595, v596, v597, v598, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, SBYTE4(v2647));
                    OUTLINED_FUNCTION_28_9(v599, v600, v601, v602, v603, v604, v605, v606, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647);
                    OUTLINED_FUNCTION_27_10(v607, v608, v609, v610, v611, v612, v613, v614, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, SBYTE4(v2646));
                    OUTLINED_FUNCTION_25_12(v615, v616, v617, v618, v619, v620, v621, v622, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646);
                    v623 = OUTLINED_FUNCTION_7_19();
                    move_i(v623, v624, 0);
                    v625 = OUTLINED_FUNCTION_9_19();
                    move_i(v625, v626, 100);
                    v627 = OUTLINED_FUNCTION_8_19();
                    move_i(v627, v628, 128);
                    v629 = OUTLINED_FUNCTION_12_19();
                    move_i(v629, v630, 0);
                    v631 = OUTLINED_FUNCTION_11_19();
                    move_i(v631, v632, 0);
                    v633 = OUTLINED_FUNCTION_10_19();
                    move_i(v633, v634, 0);
                    OUTLINED_FUNCTION_19_14(v635, v636, v637, v638, v639, v640, v641, v642, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, SBYTE4(v2642));
                    v643 = OUTLINED_FUNCTION_20_13();
                    move_i(v643, v644, 200);
                    OUTLINED_FUNCTION_0_21();
                    v645[1] = &v2646 + 4;
                    v645[2] = v59;
                    OUTLINED_FUNCTION_5_19(v646, v647, v648, v645, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, SWORD1(v2647), SBYTE4(v2647), SHIWORD(v2647), v2648, SWORD1(v2648), SBYTE4(v2648), SHIWORD(v2648), v2649);
                    if (!v649)
                    {
LABEL_14:
                      OUTLINED_FUNCTION_6_19();
                      OUTLINED_FUNCTION_41_3(10);
                      v650 = OUTLINED_FUNCTION_38_5();
                      move_i(v650, v651, 99);
                      OUTLINED_FUNCTION_36_5(v652, v653, v654, v655, v656, v657, v658, v659, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, SBYTE4(v2642));
                      OUTLINED_FUNCTION_32_7(v660, v661, v662, v663, v664, v665, v666, v667, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643);
                      OUTLINED_FUNCTION_31_8(v668, v669, v670, v671, v672, v673, v674, v675, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, SBYTE4(v2643));
                      OUTLINED_FUNCTION_34_6(v676, v677, v678, v679, v680, v681, v682, v683, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644);
                      OUTLINED_FUNCTION_33_7(v684, v685, v686, v687, v688, v689, v690, v691, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, SBYTE4(v2644));
                      OUTLINED_FUNCTION_23_13(v692, v693, v694, v695, v696, v697, v698, v699, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645);
                      v700 = OUTLINED_FUNCTION_7_19();
                      move_i(v700, v701, 25);
                      v702 = OUTLINED_FUNCTION_17_16();
                      move_i(v702, v703, 0);
                      v704 = OUTLINED_FUNCTION_13_19();
                      move_i(v704, v705, 130);
                      v706 = OUTLINED_FUNCTION_16_17();
                      move_i(v706, v707, 150);
                      v708 = OUTLINED_FUNCTION_15_17();
                      move_i(v708, v709, 60);
                      v710 = OUTLINED_FUNCTION_14_17();
                      move_i(v710, v711, 60);
                      OUTLINED_FUNCTION_22_13(v712, v713, v714, v715, v716, v717, v718, v719, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, v2648, SBYTE4(v2648));
                      v720 = OUTLINED_FUNCTION_21_13();
                      move_i(v720, v721, 255);
                      OUTLINED_FUNCTION_0_21();
                      OUTLINED_FUNCTION_3_20(v722, v723, v724, v725, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, SWORD1(v2642), SBYTE4(v2642), SHIWORD(v2642), v2643, SWORD1(v2643), SBYTE4(v2643), SHIWORD(v2643), v2644, SWORD1(v2644), SBYTE4(v2644));
                      if (!v726)
                      {
LABEL_15:
                        OUTLINED_FUNCTION_6_19();
                        OUTLINED_FUNCTION_41_3(11);
                        v727 = OUTLINED_FUNCTION_37_5();
                        move_i(v727, v728, 100);
                        OUTLINED_FUNCTION_35_5(v729, v730, v731, v732, v733, v734, v735, v736, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, v2648, SBYTE4(v2648));
                        OUTLINED_FUNCTION_30_8(v737, v738, v739, v740, v741, v742, v743, v744, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, v2648);
                        OUTLINED_FUNCTION_29_9(v745, v746, v747, v748, v749, v750, v751, v752, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, SBYTE4(v2647));
                        OUTLINED_FUNCTION_28_9(v753, v754, v755, v756, v757, v758, v759, v760, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647);
                        OUTLINED_FUNCTION_27_10(v761, v762, v763, v764, v765, v766, v767, v768, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, SBYTE4(v2646));
                        OUTLINED_FUNCTION_39_4(v769, v770, v771, v772, v773, v774, v775, v776, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646);
                        v777 = OUTLINED_FUNCTION_7_19();
                        move_i(v777, v778, 75);
                        v779 = OUTLINED_FUNCTION_9_19();
                        move_i(v779, v780, 150);
                        v781 = OUTLINED_FUNCTION_8_19();
                        move_i(v781, v782, 128);
                        v783 = OUTLINED_FUNCTION_12_19();
                        move_i(v783, v784, 50);
                        v785 = OUTLINED_FUNCTION_11_19();
                        move_i(v785, v786, 130);
                        v787 = OUTLINED_FUNCTION_10_19();
                        move_i(v787, v788, 130);
                        v789 = OUTLINED_FUNCTION_26_12();
                        move_i(v789, v790, 255);
                        v791 = OUTLINED_FUNCTION_18_15();
                        move_i(v791, v792, 0);
                        v2617 = (&v2642 + 4);
                        v2618 = v59;
                        OUTLINED_FUNCTION_1_20(&v2608);
                        v793[2] = &v2646;
                        v793[1] = &v2646 + 4;
                        OUTLINED_FUNCTION_5_19(v794, v795, v796, v793, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, SWORD1(v2647), SBYTE4(v2647), SHIWORD(v2647), v2648, SWORD1(v2648), SBYTE4(v2648), SHIWORD(v2648), v2649);
                        if (!v797)
                        {
LABEL_16:
                          OUTLINED_FUNCTION_6_19();
                          OUTLINED_FUNCTION_41_3(12);
                          v798 = OUTLINED_FUNCTION_38_5();
                          move_i(v798, v799, 101);
                          OUTLINED_FUNCTION_36_5(v800, v801, v802, v803, v804, v805, v806, v807, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, SBYTE4(v2642));
                          OUTLINED_FUNCTION_32_7(v808, v809, v810, v811, v812, v813, v814, v815, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643);
                          OUTLINED_FUNCTION_31_8(v816, v817, v818, v819, v820, v821, v822, v823, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, SBYTE4(v2643));
                          OUTLINED_FUNCTION_34_6(v824, v825, v826, v827, v828, v829, v830, v831, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644);
                          OUTLINED_FUNCTION_33_7(v832, v833, v834, v835, v836, v837, v838, v839, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, SBYTE4(v2644));
                          OUTLINED_FUNCTION_23_13(v840, v841, v842, v843, v844, v845, v846, v847, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645);
                          v848 = OUTLINED_FUNCTION_7_19();
                          move_i(v848, v849, 50);
                          v850 = OUTLINED_FUNCTION_17_16();
                          move_i(v850, v851, 100);
                          v852 = OUTLINED_FUNCTION_13_19();
                          move_i(v852, v853, 128);
                          v854 = OUTLINED_FUNCTION_16_17();
                          move_i(v854, v855, 75);
                          v856 = OUTLINED_FUNCTION_15_17();
                          move_i(v856, v857, 130);
                          v858 = OUTLINED_FUNCTION_14_17();
                          move_i(v858, v859, 175);
                          OUTLINED_FUNCTION_22_13(v860, v861, v862, v863, v864, v865, v866, v867, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, v2648, SBYTE4(v2648));
                          v868 = OUTLINED_FUNCTION_21_13();
                          move_i(v868, v869, 255);
                          OUTLINED_FUNCTION_0_21();
                          OUTLINED_FUNCTION_3_20(v870, v871, v872, v873, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, SWORD1(v2642), SBYTE4(v2642), SHIWORD(v2642), v2643, SWORD1(v2643), SBYTE4(v2643), SHIWORD(v2643), v2644, SWORD1(v2644), SBYTE4(v2644));
                          if (!v874)
                          {
LABEL_17:
                            OUTLINED_FUNCTION_6_19();
                            OUTLINED_FUNCTION_41_3(13);
                            v875 = OUTLINED_FUNCTION_37_5();
                            move_i(v875, v876, 102);
                            OUTLINED_FUNCTION_35_5(v877, v878, v879, v880, v881, v882, v883, v884, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, v2648, SBYTE4(v2648));
                            OUTLINED_FUNCTION_30_8(v885, v886, v887, v888, v889, v890, v891, v892, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, v2648);
                            OUTLINED_FUNCTION_29_9(v893, v894, v895, v896, v897, v898, v899, v900, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, SBYTE4(v2647));
                            OUTLINED_FUNCTION_28_9(v901, v902, v903, v904, v905, v906, v907, v908, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647);
                            OUTLINED_FUNCTION_27_10(v909, v910, v911, v912, v913, v914, v915, v916, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, SBYTE4(v2646));
                            OUTLINED_FUNCTION_25_12(v917, v918, v919, v920, v921, v922, v923, v924, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646);
                            v925 = OUTLINED_FUNCTION_7_19();
                            move_i(v925, v926, 10);
                            v927 = OUTLINED_FUNCTION_9_19();
                            move_i(v927, v928, 100);
                            v929 = OUTLINED_FUNCTION_8_19();
                            move_i(v929, v930, 128);
                            v931 = OUTLINED_FUNCTION_12_19();
                            move_i(v931, v932, 25);
                            v933 = OUTLINED_FUNCTION_11_19();
                            move_i(v933, v934, 130);
                            v935 = OUTLINED_FUNCTION_10_19();
                            move_i(v935, v936, 0);
                            OUTLINED_FUNCTION_19_14(v937, v938, v939, v940, v941, v942, v943, v944, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, SBYTE4(v2642));
                            v945 = OUTLINED_FUNCTION_20_13();
                            move_i(v945, v946, 200);
                            OUTLINED_FUNCTION_0_21();
                            v947[1] = &v2646 + 4;
                            v947[2] = v59;
                            OUTLINED_FUNCTION_5_19(v948, v949, v950, v947, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, SWORD1(v2647), SBYTE4(v2647), SHIWORD(v2647), v2648, SWORD1(v2648), SBYTE4(v2648), SHIWORD(v2648), v2649);
                            if (!v951)
                            {
LABEL_18:
                              OUTLINED_FUNCTION_6_19();
                              OUTLINED_FUNCTION_41_3(14);
                              v952 = OUTLINED_FUNCTION_38_5();
                              move_i(v952, v953, 103);
                              OUTLINED_FUNCTION_36_5(v954, v955, v956, v957, v958, v959, v960, v961, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, SBYTE4(v2642));
                              OUTLINED_FUNCTION_32_7(v962, v963, v964, v965, v966, v967, v968, v969, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643);
                              OUTLINED_FUNCTION_31_8(v970, v971, v972, v973, v974, v975, v976, v977, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, SBYTE4(v2643));
                              OUTLINED_FUNCTION_34_6(v978, v979, v980, v981, v982, v983, v984, v985, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644);
                              OUTLINED_FUNCTION_33_7(v986, v987, v988, v989, v990, v991, v992, v993, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, SBYTE4(v2644));
                              OUTLINED_FUNCTION_40_3(v994, &v2645);
                              v995 = OUTLINED_FUNCTION_7_19();
                              move_i(v995, v996, 50);
                              v997 = OUTLINED_FUNCTION_17_16();
                              move_i(v997, v998, 100);
                              v999 = OUTLINED_FUNCTION_13_19();
                              move_i(v999, v1000, 128);
                              v1001 = OUTLINED_FUNCTION_16_17();
                              move_i(v1001, v1002, 75);
                              v1003 = OUTLINED_FUNCTION_15_17();
                              move_i(v1003, v1004, 130);
                              v1005 = OUTLINED_FUNCTION_14_17();
                              move_i(v1005, v1006, 130);
                              v1007 = OUTLINED_FUNCTION_26_12();
                              move_i(v1007, v1008, 0);
                              v1009 = OUTLINED_FUNCTION_24_13();
                              move_i(v1009, v1010, 0);
                              v2617 = (&v2648 + 4);
                              v2618 = v59;
                              OUTLINED_FUNCTION_1_20(&v2608);
                              v1011[2] = &v2645;
                              v1011[1] = &v2644 + 4;
                              OUTLINED_FUNCTION_4_19(v1012, v1013, v1014, v1011, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, SWORD1(v2642), SBYTE4(v2642), SHIWORD(v2642), v2643, SWORD1(v2643), SBYTE4(v2643), SHIWORD(v2643), v2644);
                              if (!v1015)
                              {
LABEL_19:
                                OUTLINED_FUNCTION_6_19();
                                OUTLINED_FUNCTION_41_3(15);
                                v1016 = OUTLINED_FUNCTION_37_5();
                                move_i(v1016, v1017, 105);
                                OUTLINED_FUNCTION_35_5(v1018, v1019, v1020, v1021, v1022, v1023, v1024, v1025, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, v2648, SBYTE4(v2648));
                                OUTLINED_FUNCTION_30_8(v1026, v1027, v1028, v1029, v1030, v1031, v1032, v1033, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, v2648);
                                OUTLINED_FUNCTION_29_9(v1034, v1035, v1036, v1037, v1038, v1039, v1040, v1041, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, SBYTE4(v2647));
                                OUTLINED_FUNCTION_28_9(v1042, v1043, v1044, v1045, v1046, v1047, v1048, v1049, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647);
                                OUTLINED_FUNCTION_27_10(v1050, v1051, v1052, v1053, v1054, v1055, v1056, v1057, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, SBYTE4(v2646));
                                OUTLINED_FUNCTION_25_12(v1058, v1059, v1060, v1061, v1062, v1063, v1064, v1065, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646);
                                v1066 = OUTLINED_FUNCTION_7_19();
                                move_i(v1066, v1067, 25);
                                v1068 = OUTLINED_FUNCTION_9_19();
                                move_i(v1068, v1069, 150);
                                v1070 = OUTLINED_FUNCTION_8_19();
                                move_i(v1070, v1071, 128);
                                v1072 = OUTLINED_FUNCTION_12_19();
                                move_i(v1072, v1073, 50);
                                v1074 = OUTLINED_FUNCTION_11_19();
                                move_i(v1074, v1075, 130);
                                v1076 = OUTLINED_FUNCTION_10_19();
                                move_i(v1076, v1077, 130);
                                OUTLINED_FUNCTION_19_14(v1078, v1079, v1080, v1081, v1082, v1083, v1084, v1085, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, SBYTE4(v2642));
                                v1086 = OUTLINED_FUNCTION_20_13();
                                move_i(v1086, v1087, 255);
                                OUTLINED_FUNCTION_0_21();
                                v1088[1] = &v2646 + 4;
                                v1088[2] = v59;
                                OUTLINED_FUNCTION_5_19(v1089, v1090, v1091, v1088, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, SWORD1(v2647), SBYTE4(v2647), SHIWORD(v2647), v2648, SWORD1(v2648), SBYTE4(v2648), SHIWORD(v2648), v2649);
                                if (!v1092)
                                {
LABEL_20:
                                  OUTLINED_FUNCTION_6_19();
                                  OUTLINED_FUNCTION_41_3(16);
                                  v1093 = OUTLINED_FUNCTION_38_5();
                                  move_i(v1093, v1094, 107);
                                  OUTLINED_FUNCTION_36_5(v1095, v1096, v1097, v1098, v1099, v1100, v1101, v1102, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, SBYTE4(v2642));
                                  OUTLINED_FUNCTION_32_7(v1103, v1104, v1105, v1106, v1107, v1108, v1109, v1110, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643);
                                  OUTLINED_FUNCTION_31_8(v1111, v1112, v1113, v1114, v1115, v1116, v1117, v1118, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, SBYTE4(v2643));
                                  OUTLINED_FUNCTION_34_6(v1119, v1120, v1121, v1122, v1123, v1124, v1125, v1126, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644);
                                  OUTLINED_FUNCTION_33_7(v1127, v1128, v1129, v1130, v1131, v1132, v1133, v1134, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, SBYTE4(v2644));
                                  OUTLINED_FUNCTION_40_3(v1135, &v2645);
                                  v1136 = OUTLINED_FUNCTION_7_19();
                                  move_i(v1136, v1137, 50);
                                  v1138 = OUTLINED_FUNCTION_17_16();
                                  move_i(v1138, v1139, 100);
                                  v1140 = OUTLINED_FUNCTION_13_19();
                                  move_i(v1140, v1141, 128);
                                  v1142 = OUTLINED_FUNCTION_16_17();
                                  move_i(v1142, v1143, 75);
                                  v1144 = OUTLINED_FUNCTION_15_17();
                                  move_i(v1144, v1145, 130);
                                  v1146 = OUTLINED_FUNCTION_14_17();
                                  move_i(v1146, v1147, 130);
                                  v1148 = OUTLINED_FUNCTION_26_12();
                                  move_i(v1148, v1149, 0);
                                  v1150 = OUTLINED_FUNCTION_24_13();
                                  move_i(v1150, v1151, 0);
                                  v2617 = (&v2648 + 4);
                                  v2618 = v59;
                                  OUTLINED_FUNCTION_1_20(&v2608);
                                  v1152[2] = &v2645;
                                  v1152[1] = &v2644 + 4;
                                  OUTLINED_FUNCTION_4_19(v1153, v1154, v1155, v1152, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, SWORD1(v2642), SBYTE4(v2642), SHIWORD(v2642), v2643, SWORD1(v2643), SBYTE4(v2643), SHIWORD(v2643), v2644);
                                  if (!v1156)
                                  {
LABEL_21:
                                    OUTLINED_FUNCTION_6_19();
                                    OUTLINED_FUNCTION_41_3(17);
                                    v1157 = OUTLINED_FUNCTION_37_5();
                                    move_i(v1157, v1158, 108);
                                    OUTLINED_FUNCTION_35_5(v1159, v1160, v1161, v1162, v1163, v1164, v1165, v1166, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, v2648, SBYTE4(v2648));
                                    OUTLINED_FUNCTION_30_8(v1167, v1168, v1169, v1170, v1171, v1172, v1173, v1174, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, v2648);
                                    OUTLINED_FUNCTION_29_9(v1175, v1176, v1177, v1178, v1179, v1180, v1181, v1182, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, SBYTE4(v2647));
                                    OUTLINED_FUNCTION_28_9(v1183, v1184, v1185, v1186, v1187, v1188, v1189, v1190, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647);
                                    OUTLINED_FUNCTION_27_10(v1191, v1192, v1193, v1194, v1195, v1196, v1197, v1198, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, SBYTE4(v2646));
                                    OUTLINED_FUNCTION_39_4(v1199, v1200, v1201, v1202, v1203, v1204, v1205, v1206, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646);
                                    v1207 = OUTLINED_FUNCTION_7_19();
                                    move_i(v1207, v1208, 75);
                                    v1209 = OUTLINED_FUNCTION_9_19();
                                    move_i(v1209, v1210, 150);
                                    v1211 = OUTLINED_FUNCTION_8_19();
                                    move_i(v1211, v1212, 128);
                                    v1213 = OUTLINED_FUNCTION_12_19();
                                    move_i(v1213, v1214, 50);
                                    v1215 = OUTLINED_FUNCTION_11_19();
                                    move_i(v1215, v1216, 130);
                                    v1217 = OUTLINED_FUNCTION_10_19();
                                    move_i(v1217, v1218, 130);
                                    v1219 = OUTLINED_FUNCTION_26_12();
                                    move_i(v1219, v1220, 255);
                                    v1221 = OUTLINED_FUNCTION_18_15();
                                    move_i(v1221, v1222, 0);
                                    v2617 = (&v2642 + 4);
                                    v2618 = v59;
                                    OUTLINED_FUNCTION_1_20(&v2608);
                                    v1223[2] = &v2646;
                                    v1223[1] = &v2646 + 4;
                                    OUTLINED_FUNCTION_5_19(v1224, v1225, v1226, v1223, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, SWORD1(v2647), SBYTE4(v2647), SHIWORD(v2647), v2648, SWORD1(v2648), SBYTE4(v2648), SHIWORD(v2648), v2649);
                                    if (!v1227)
                                    {
LABEL_22:
                                      OUTLINED_FUNCTION_6_19();
                                      OUTLINED_FUNCTION_41_3(18);
                                      v1228 = OUTLINED_FUNCTION_38_5();
                                      move_i(v1228, v1229, 109);
                                      OUTLINED_FUNCTION_36_5(v1230, v1231, v1232, v1233, v1234, v1235, v1236, v1237, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, SBYTE4(v2642));
                                      OUTLINED_FUNCTION_32_7(v1238, v1239, v1240, v1241, v1242, v1243, v1244, v1245, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643);
                                      OUTLINED_FUNCTION_31_8(v1246, v1247, v1248, v1249, v1250, v1251, v1252, v1253, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, SBYTE4(v2643));
                                      OUTLINED_FUNCTION_34_6(v1254, v1255, v1256, v1257, v1258, v1259, v1260, v1261, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644);
                                      OUTLINED_FUNCTION_33_7(v1262, v1263, v1264, v1265, v1266, v1267, v1268, v1269, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, SBYTE4(v2644));
                                      OUTLINED_FUNCTION_23_13(v1270, v1271, v1272, v1273, v1274, v1275, v1276, v1277, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645);
                                      v1278 = OUTLINED_FUNCTION_7_19();
                                      move_i(v1278, v1279, 0);
                                      v1280 = OUTLINED_FUNCTION_17_16();
                                      move_i(v1280, v1281, 100);
                                      v1282 = OUTLINED_FUNCTION_13_19();
                                      move_i(v1282, v1283, 128);
                                      v1284 = OUTLINED_FUNCTION_16_17();
                                      move_i(v1284, v1285, 0);
                                      v1286 = OUTLINED_FUNCTION_15_17();
                                      move_i(v1286, v1287, 0);
                                      v1288 = OUTLINED_FUNCTION_14_17();
                                      move_i(v1288, v1289, 0);
                                      OUTLINED_FUNCTION_22_13(v1290, v1291, v1292, v1293, v1294, v1295, v1296, v1297, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, v2648, SBYTE4(v2648));
                                      v1298 = OUTLINED_FUNCTION_21_13();
                                      move_i(v1298, v1299, 200);
                                      OUTLINED_FUNCTION_0_21();
                                      OUTLINED_FUNCTION_3_20(v1300, v1301, v1302, v1303, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, SWORD1(v2642), SBYTE4(v2642), SHIWORD(v2642), v2643, SWORD1(v2643), SBYTE4(v2643), SHIWORD(v2643), v2644, SWORD1(v2644), SBYTE4(v2644));
                                      if (!v1304)
                                      {
LABEL_23:
                                        OUTLINED_FUNCTION_6_19();
                                        OUTLINED_FUNCTION_41_3(19);
                                        v1305 = OUTLINED_FUNCTION_37_5();
                                        move_i(v1305, v1306, 110);
                                        OUTLINED_FUNCTION_35_5(v1307, v1308, v1309, v1310, v1311, v1312, v1313, v1314, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, v2648, SBYTE4(v2648));
                                        OUTLINED_FUNCTION_30_8(v1315, v1316, v1317, v1318, v1319, v1320, v1321, v1322, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, v2648);
                                        OUTLINED_FUNCTION_29_9(v1323, v1324, v1325, v1326, v1327, v1328, v1329, v1330, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, SBYTE4(v2647));
                                        OUTLINED_FUNCTION_28_9(v1331, v1332, v1333, v1334, v1335, v1336, v1337, v1338, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647);
                                        OUTLINED_FUNCTION_27_10(v1339, v1340, v1341, v1342, v1343, v1344, v1345, v1346, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, SBYTE4(v2646));
                                        OUTLINED_FUNCTION_39_4(v1347, v1348, v1349, v1350, v1351, v1352, v1353, v1354, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646);
                                        v1355 = OUTLINED_FUNCTION_7_19();
                                        move_i(v1355, v1356, 75);
                                        v1357 = OUTLINED_FUNCTION_9_19();
                                        move_i(v1357, v1358, 150);
                                        v1359 = OUTLINED_FUNCTION_8_19();
                                        move_i(v1359, v1360, 128);
                                        v1361 = OUTLINED_FUNCTION_12_19();
                                        move_i(v1361, v1362, 50);
                                        v1363 = OUTLINED_FUNCTION_11_19();
                                        move_i(v1363, v1364, 130);
                                        v1365 = OUTLINED_FUNCTION_10_19();
                                        move_i(v1365, v1366, 130);
                                        v1367 = OUTLINED_FUNCTION_26_12();
                                        move_i(v1367, v1368, 255);
                                        v1369 = OUTLINED_FUNCTION_18_15();
                                        move_i(v1369, v1370, 0);
                                        v2617 = (&v2642 + 4);
                                        v2618 = v59;
                                        OUTLINED_FUNCTION_1_20(&v2608);
                                        v1371[2] = &v2646;
                                        v1371[1] = &v2646 + 4;
                                        OUTLINED_FUNCTION_5_19(v1372, v1373, v1374, v1371, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, SWORD1(v2647), SBYTE4(v2647), SHIWORD(v2647), v2648, SWORD1(v2648), SBYTE4(v2648), SHIWORD(v2648), v2649);
                                        if (!v1375)
                                        {
LABEL_24:
                                          OUTLINED_FUNCTION_6_19();
                                          OUTLINED_FUNCTION_41_3(20);
                                          v1376 = OUTLINED_FUNCTION_38_5();
                                          move_i(v1376, v1377, 111);
                                          OUTLINED_FUNCTION_36_5(v1378, v1379, v1380, v1381, v1382, v1383, v1384, v1385, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, SBYTE4(v2642));
                                          OUTLINED_FUNCTION_32_7(v1386, v1387, v1388, v1389, v1390, v1391, v1392, v1393, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643);
                                          OUTLINED_FUNCTION_31_8(v1394, v1395, v1396, v1397, v1398, v1399, v1400, v1401, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, SBYTE4(v2643));
                                          OUTLINED_FUNCTION_34_6(v1402, v1403, v1404, v1405, v1406, v1407, v1408, v1409, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644);
                                          OUTLINED_FUNCTION_33_7(v1410, v1411, v1412, v1413, v1414, v1415, v1416, v1417, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, SBYTE4(v2644));
                                          OUTLINED_FUNCTION_23_13(v1418, v1419, v1420, v1421, v1422, v1423, v1424, v1425, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645);
                                          v1426 = OUTLINED_FUNCTION_7_19();
                                          move_i(v1426, v1427, 25);
                                          v1428 = OUTLINED_FUNCTION_17_16();
                                          move_i(v1428, v1429, 0);
                                          v1430 = OUTLINED_FUNCTION_13_19();
                                          move_i(v1430, v1431, 130);
                                          v1432 = OUTLINED_FUNCTION_16_17();
                                          move_i(v1432, v1433, 130);
                                          v1434 = OUTLINED_FUNCTION_15_17();
                                          move_i(v1434, v1435, 60);
                                          v1436 = OUTLINED_FUNCTION_14_17();
                                          move_i(v1436, v1437, 60);
                                          OUTLINED_FUNCTION_22_13(v1438, v1439, v1440, v1441, v1442, v1443, v1444, v1445, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, v2648, SBYTE4(v2648));
                                          v1446 = OUTLINED_FUNCTION_21_13();
                                          move_i(v1446, v1447, 255);
                                          OUTLINED_FUNCTION_0_21();
                                          OUTLINED_FUNCTION_3_20(v1448, v1449, v1450, v1451, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, SWORD1(v2642), SBYTE4(v2642), SHIWORD(v2642), v2643, SWORD1(v2643), SBYTE4(v2643), SHIWORD(v2643), v2644, SWORD1(v2644), SBYTE4(v2644));
                                          if (!v1452)
                                          {
LABEL_25:
                                            OUTLINED_FUNCTION_6_19();
                                            OUTLINED_FUNCTION_41_3(21);
                                            v1453 = OUTLINED_FUNCTION_37_5();
                                            move_i(v1453, v1454, 112);
                                            OUTLINED_FUNCTION_35_5(v1455, v1456, v1457, v1458, v1459, v1460, v1461, v1462, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, v2648, SBYTE4(v2648));
                                            OUTLINED_FUNCTION_30_8(v1463, v1464, v1465, v1466, v1467, v1468, v1469, v1470, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, v2648);
                                            OUTLINED_FUNCTION_29_9(v1471, v1472, v1473, v1474, v1475, v1476, v1477, v1478, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, SBYTE4(v2647));
                                            OUTLINED_FUNCTION_28_9(v1479, v1480, v1481, v1482, v1483, v1484, v1485, v1486, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647);
                                            OUTLINED_FUNCTION_27_10(v1487, v1488, v1489, v1490, v1491, v1492, v1493, v1494, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, SBYTE4(v2646));
                                            OUTLINED_FUNCTION_25_12(v1495, v1496, v1497, v1498, v1499, v1500, v1501, v1502, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646);
                                            v1503 = OUTLINED_FUNCTION_7_19();
                                            move_i(v1503, v1504, 0);
                                            v1505 = OUTLINED_FUNCTION_9_19();
                                            move_i(v1505, v1506, 100);
                                            v1507 = OUTLINED_FUNCTION_8_19();
                                            move_i(v1507, v1508, 128);
                                            v1509 = OUTLINED_FUNCTION_12_19();
                                            move_i(v1509, v1510, 0);
                                            v1511 = OUTLINED_FUNCTION_11_19();
                                            move_i(v1511, v1512, 0);
                                            v1513 = OUTLINED_FUNCTION_10_19();
                                            move_i(v1513, v1514, 0);
                                            OUTLINED_FUNCTION_19_14(v1515, v1516, v1517, v1518, v1519, v1520, v1521, v1522, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, SBYTE4(v2642));
                                            v1523 = OUTLINED_FUNCTION_20_13();
                                            move_i(v1523, v1524, 200);
                                            OUTLINED_FUNCTION_0_21();
                                            v1525[1] = &v2646 + 4;
                                            v1525[2] = v59;
                                            OUTLINED_FUNCTION_5_19(v1526, v1527, v1528, v1525, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, SWORD1(v2647), SBYTE4(v2647), SHIWORD(v2647), v2648, SWORD1(v2648), SBYTE4(v2648), SHIWORD(v2648), v2649);
                                            if (!v1529)
                                            {
LABEL_26:
                                              OUTLINED_FUNCTION_6_19();
                                              OUTLINED_FUNCTION_41_3(22);
                                              v1530 = OUTLINED_FUNCTION_38_5();
                                              move_i(v1530, v1531, 114);
                                              OUTLINED_FUNCTION_36_5(v1532, v1533, v1534, v1535, v1536, v1537, v1538, v1539, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, SBYTE4(v2642));
                                              OUTLINED_FUNCTION_32_7(v1540, v1541, v1542, v1543, v1544, v1545, v1546, v1547, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643);
                                              OUTLINED_FUNCTION_31_8(v1548, v1549, v1550, v1551, v1552, v1553, v1554, v1555, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, SBYTE4(v2643));
                                              OUTLINED_FUNCTION_34_6(v1556, v1557, v1558, v1559, v1560, v1561, v1562, v1563, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644);
                                              OUTLINED_FUNCTION_33_7(v1564, v1565, v1566, v1567, v1568, v1569, v1570, v1571, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, SBYTE4(v2644));
                                              OUTLINED_FUNCTION_40_3(v1572, &v2645);
                                              v1573 = OUTLINED_FUNCTION_7_19();
                                              move_i(v1573, v1574, 75);
                                              v1575 = OUTLINED_FUNCTION_17_16();
                                              move_i(v1575, v1576, 150);
                                              v1577 = OUTLINED_FUNCTION_13_19();
                                              move_i(v1577, v1578, 128);
                                              v1579 = OUTLINED_FUNCTION_16_17();
                                              move_i(v1579, v1580, 50);
                                              v1581 = OUTLINED_FUNCTION_15_17();
                                              move_i(v1581, v1582, 130);
                                              v1583 = OUTLINED_FUNCTION_14_17();
                                              move_i(v1583, v1584, 130);
                                              v1585 = OUTLINED_FUNCTION_26_12();
                                              move_i(v1585, v1586, 255);
                                              v1587 = OUTLINED_FUNCTION_24_13();
                                              move_i(v1587, v1588, 0);
                                              v2617 = (&v2648 + 4);
                                              v2618 = v59;
                                              OUTLINED_FUNCTION_1_20(&v2608);
                                              v1589[2] = &v2645;
                                              v1589[1] = &v2644 + 4;
                                              OUTLINED_FUNCTION_4_19(v1590, v1591, v1592, v1589, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, SWORD1(v2642), SBYTE4(v2642), SHIWORD(v2642), v2643, SWORD1(v2643), SBYTE4(v2643), SHIWORD(v2643), v2644);
                                              if (!v1593)
                                              {
LABEL_27:
                                                OUTLINED_FUNCTION_6_19();
                                                OUTLINED_FUNCTION_41_3(23);
                                                v1594 = OUTLINED_FUNCTION_37_5();
                                                move_i(v1594, v1595, 115);
                                                OUTLINED_FUNCTION_35_5(v1596, v1597, v1598, v1599, v1600, v1601, v1602, v1603, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, v2648, SBYTE4(v2648));
                                                OUTLINED_FUNCTION_30_8(v1604, v1605, v1606, v1607, v1608, v1609, v1610, v1611, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, v2648);
                                                OUTLINED_FUNCTION_29_9(v1612, v1613, v1614, v1615, v1616, v1617, v1618, v1619, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, SBYTE4(v2647));
                                                OUTLINED_FUNCTION_28_9(v1620, v1621, v1622, v1623, v1624, v1625, v1626, v1627, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647);
                                                OUTLINED_FUNCTION_27_10(v1628, v1629, v1630, v1631, v1632, v1633, v1634, v1635, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, SBYTE4(v2646));
                                                OUTLINED_FUNCTION_39_4(v1636, v1637, v1638, v1639, v1640, v1641, v1642, v1643, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646);
                                                v1644 = OUTLINED_FUNCTION_7_19();
                                                move_i(v1644, v1645, 50);
                                                v1646 = OUTLINED_FUNCTION_9_19();
                                                move_i(v1646, v1647, 100);
                                                v1648 = OUTLINED_FUNCTION_8_19();
                                                move_i(v1648, v1649, 128);
                                                v1650 = OUTLINED_FUNCTION_12_19();
                                                move_i(v1650, v1651, 75);
                                                v1652 = OUTLINED_FUNCTION_11_19();
                                                move_i(v1652, v1653, 130);
                                                v1654 = OUTLINED_FUNCTION_10_19();
                                                move_i(v1654, v1655, 130);
                                                v1656 = OUTLINED_FUNCTION_26_12();
                                                move_i(v1656, v1657, 150);
                                                v1658 = OUTLINED_FUNCTION_18_15();
                                                move_i(v1658, v1659, 0);
                                                v2617 = (&v2642 + 4);
                                                v2618 = v59;
                                                OUTLINED_FUNCTION_1_20(&v2608);
                                                v1660[2] = &v2646;
                                                v1660[1] = &v2646 + 4;
                                                OUTLINED_FUNCTION_5_19(v1661, v1662, v1663, v1660, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, SWORD1(v2647), SBYTE4(v2647), SHIWORD(v2647), v2648, SWORD1(v2648), SBYTE4(v2648), SHIWORD(v2648), v2649);
                                                if (!v1664)
                                                {
LABEL_28:
                                                  OUTLINED_FUNCTION_6_19();
                                                  OUTLINED_FUNCTION_41_3(24);
                                                  v1665 = OUTLINED_FUNCTION_38_5();
                                                  move_i(v1665, v1666, 116);
                                                  OUTLINED_FUNCTION_36_5(v1667, v1668, v1669, v1670, v1671, v1672, v1673, v1674, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, SBYTE4(v2642));
                                                  OUTLINED_FUNCTION_32_7(v1675, v1676, v1677, v1678, v1679, v1680, v1681, v1682, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643);
                                                  OUTLINED_FUNCTION_31_8(v1683, v1684, v1685, v1686, v1687, v1688, v1689, v1690, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, SBYTE4(v2643));
                                                  OUTLINED_FUNCTION_34_6(v1691, v1692, v1693, v1694, v1695, v1696, v1697, v1698, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644);
                                                  OUTLINED_FUNCTION_33_7(v1699, v1700, v1701, v1702, v1703, v1704, v1705, v1706, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, SBYTE4(v2644));
                                                  OUTLINED_FUNCTION_40_3(v1707, &v2645);
                                                  v1708 = OUTLINED_FUNCTION_7_19();
                                                  move_i(v1708, v1709, 75);
                                                  v1710 = OUTLINED_FUNCTION_17_16();
                                                  move_i(v1710, v1711, 150);
                                                  v1712 = OUTLINED_FUNCTION_13_19();
                                                  move_i(v1712, v1713, 128);
                                                  v1714 = OUTLINED_FUNCTION_16_17();
                                                  move_i(v1714, v1715, 50);
                                                  v1716 = OUTLINED_FUNCTION_15_17();
                                                  move_i(v1716, v1717, 130);
                                                  v1718 = OUTLINED_FUNCTION_14_17();
                                                  move_i(v1718, v1719, 130);
                                                  v1720 = OUTLINED_FUNCTION_26_12();
                                                  move_i(v1720, v1721, 255);
                                                  v1722 = OUTLINED_FUNCTION_24_13();
                                                  move_i(v1722, v1723, 0);
                                                  v2617 = (&v2648 + 4);
                                                  v2618 = v59;
                                                  OUTLINED_FUNCTION_1_20(&v2608);
                                                  v1724[2] = &v2645;
                                                  v1724[1] = &v2644 + 4;
                                                  OUTLINED_FUNCTION_4_19(v1725, v1726, v1727, v1724, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, SWORD1(v2642), SBYTE4(v2642), SHIWORD(v2642), v2643, SWORD1(v2643), SBYTE4(v2643), SHIWORD(v2643), v2644);
                                                  if (!v1728)
                                                  {
LABEL_29:
                                                    OUTLINED_FUNCTION_6_19();
                                                    v7 = 25;
                                                    starttest(a1, 25);
                                                    v1729 = OUTLINED_FUNCTION_37_5();
                                                    move_i(v1729, v1730, 117);
                                                    OUTLINED_FUNCTION_35_5(v1731, v1732, v1733, v1734, v1735, v1736, v1737, v1738, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, v2648, SBYTE4(v2648));
                                                    OUTLINED_FUNCTION_30_8(v1739, v1740, v1741, v1742, v1743, v1744, v1745, v1746, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, v2648);
                                                    OUTLINED_FUNCTION_29_9(v1747, v1748, v1749, v1750, v1751, v1752, v1753, v1754, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, SBYTE4(v2647));
                                                    OUTLINED_FUNCTION_28_9(v1755, v1756, v1757, v1758, v1759, v1760, v1761, v1762, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647);
                                                    OUTLINED_FUNCTION_27_10(v1763, v1764, v1765, v1766, v1767, v1768, v1769, v1770, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, SBYTE4(v2646));
                                                    OUTLINED_FUNCTION_25_12(v1771, v1772, v1773, v1774, v1775, v1776, v1777, v1778, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646);
                                                    v1779 = OUTLINED_FUNCTION_7_19();
                                                    move_i(v1779, v1780, 25);
                                                    v1781 = OUTLINED_FUNCTION_9_19();
                                                    move_i(v1781, v1782, 0);
                                                    v1783 = OUTLINED_FUNCTION_8_19();
                                                    move_i(v1783, v1784, 130);
                                                    v1785 = OUTLINED_FUNCTION_12_19();
                                                    move_i(v1785, v1786, 90);
                                                    v1787 = OUTLINED_FUNCTION_11_19();
                                                    move_i(v1787, v1788, 60);
                                                    v1789 = OUTLINED_FUNCTION_10_19();
                                                    move_i(v1789, v1790, 60);
                                                    OUTLINED_FUNCTION_19_14(v1791, v1792, v1793, v1794, v1795, v1796, v1797, v1798, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, SBYTE4(v2642));
                                                    v1799 = OUTLINED_FUNCTION_20_13();
                                                    move_i(v1799, v1800, 255);
                                                    OUTLINED_FUNCTION_0_21();
                                                    v1801[1] = &v2646 + 4;
                                                    v1801[2] = v59;
                                                    OUTLINED_FUNCTION_5_19(v1802, v1803, v1804, v1801, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, SWORD1(v2647), SBYTE4(v2647), SHIWORD(v2647), v2648, SWORD1(v2648), SBYTE4(v2648), SHIWORD(v2648), v2649);
                                                    if (!v1805)
                                                    {
LABEL_30:
                                                      OUTLINED_FUNCTION_6_19();
                                                      OUTLINED_FUNCTION_41_3(26);
                                                      v1806 = OUTLINED_FUNCTION_38_5();
                                                      move_i(v1806, v1807, 118);
                                                      OUTLINED_FUNCTION_36_5(v1808, v1809, v1810, v1811, v1812, v1813, v1814, v1815, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, SBYTE4(v2642));
                                                      OUTLINED_FUNCTION_32_7(v1816, v1817, v1818, v1819, v1820, v1821, v1822, v1823, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643);
                                                      OUTLINED_FUNCTION_31_8(v1824, v1825, v1826, v1827, v1828, v1829, v1830, v1831, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, SBYTE4(v2643));
                                                      OUTLINED_FUNCTION_34_6(v1832, v1833, v1834, v1835, v1836, v1837, v1838, v1839, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644);
                                                      OUTLINED_FUNCTION_33_7(v1840, v1841, v1842, v1843, v1844, v1845, v1846, v1847, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, SBYTE4(v2644));
                                                      OUTLINED_FUNCTION_23_13(v1848, v1849, v1850, v1851, v1852, v1853, v1854, v1855, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645);
                                                      v1856 = OUTLINED_FUNCTION_7_19();
                                                      move_i(v1856, v1857, 10);
                                                      v1858 = OUTLINED_FUNCTION_17_16();
                                                      move_i(v1858, v1859, 100);
                                                      v1860 = OUTLINED_FUNCTION_13_19();
                                                      move_i(v1860, v1861, 128);
                                                      v1862 = OUTLINED_FUNCTION_16_17();
                                                      move_i(v1862, v1863, 25);
                                                      v1864 = OUTLINED_FUNCTION_15_17();
                                                      move_i(v1864, v1865, 130);
                                                      v1866 = OUTLINED_FUNCTION_14_17();
                                                      move_i(v1866, v1867, 0);
                                                      OUTLINED_FUNCTION_22_13(v1868, v1869, v1870, v1871, v1872, v1873, v1874, v1875, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, v2648, SBYTE4(v2648));
                                                      v1876 = OUTLINED_FUNCTION_21_13();
                                                      move_i(v1876, v1877, 200);
                                                      OUTLINED_FUNCTION_0_21();
                                                      OUTLINED_FUNCTION_3_20(v1878, v1879, v1880, v1881, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, SWORD1(v2642), SBYTE4(v2642), SHIWORD(v2642), v2643, SWORD1(v2643), SBYTE4(v2643), SHIWORD(v2643), v2644, SWORD1(v2644), SBYTE4(v2644));
                                                      if (!v1882)
                                                      {
LABEL_31:
                                                        OUTLINED_FUNCTION_6_19();
                                                        OUTLINED_FUNCTION_41_3(27);
                                                        v1883 = OUTLINED_FUNCTION_37_5();
                                                        move_i(v1883, v1884, 119);
                                                        OUTLINED_FUNCTION_35_5(v1885, v1886, v1887, v1888, v1889, v1890, v1891, v1892, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, v2648, SBYTE4(v2648));
                                                        OUTLINED_FUNCTION_30_8(v1893, v1894, v1895, v1896, v1897, v1898, v1899, v1900, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, v2648);
                                                        OUTLINED_FUNCTION_29_9(v1901, v1902, v1903, v1904, v1905, v1906, v1907, v1908, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, SBYTE4(v2647));
                                                        OUTLINED_FUNCTION_28_9(v1909, v1910, v1911, v1912, v1913, v1914, v1915, v1916, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647);
                                                        OUTLINED_FUNCTION_27_10(v1917, v1918, v1919, v1920, v1921, v1922, v1923, v1924, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, SBYTE4(v2646));
                                                        OUTLINED_FUNCTION_25_12(v1925, v1926, v1927, v1928, v1929, v1930, v1931, v1932, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646);
                                                        v1933 = OUTLINED_FUNCTION_7_19();
                                                        move_i(v1933, v1934, 25);
                                                        v1935 = OUTLINED_FUNCTION_9_19();
                                                        move_i(v1935, v1936, 0);
                                                        v1937 = OUTLINED_FUNCTION_8_19();
                                                        move_i(v1937, v1938, 130);
                                                        v1939 = OUTLINED_FUNCTION_12_19();
                                                        move_i(v1939, v1940, 90);
                                                        v1941 = OUTLINED_FUNCTION_11_19();
                                                        move_i(v1941, v1942, 60);
                                                        v1943 = OUTLINED_FUNCTION_10_19();
                                                        move_i(v1943, v1944, 60);
                                                        OUTLINED_FUNCTION_19_14(v1945, v1946, v1947, v1948, v1949, v1950, v1951, v1952, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, SBYTE4(v2642));
                                                        v1953 = OUTLINED_FUNCTION_20_13();
                                                        move_i(v1953, v1954, 255);
                                                        OUTLINED_FUNCTION_0_21();
                                                        v1955[1] = &v2646 + 4;
                                                        v1955[2] = v59;
                                                        OUTLINED_FUNCTION_5_19(v1956, v1957, v1958, v1955, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, SWORD1(v2647), SBYTE4(v2647), SHIWORD(v2647), v2648, SWORD1(v2648), SBYTE4(v2648), SHIWORD(v2648), v2649);
                                                        if (!v1959)
                                                        {
LABEL_32:
                                                          OUTLINED_FUNCTION_6_19();
                                                          OUTLINED_FUNCTION_41_3(28);
                                                          v1960 = OUTLINED_FUNCTION_38_5();
                                                          move_i(v1960, v1961, 121);
                                                          OUTLINED_FUNCTION_36_5(v1962, v1963, v1964, v1965, v1966, v1967, v1968, v1969, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, SBYTE4(v2642));
                                                          OUTLINED_FUNCTION_32_7(v1970, v1971, v1972, v1973, v1974, v1975, v1976, v1977, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643);
                                                          OUTLINED_FUNCTION_31_8(v1978, v1979, v1980, v1981, v1982, v1983, v1984, v1985, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, SBYTE4(v2643));
                                                          OUTLINED_FUNCTION_34_6(v1986, v1987, v1988, v1989, v1990, v1991, v1992, v1993, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644);
                                                          OUTLINED_FUNCTION_33_7(v1994, v1995, v1996, v1997, v1998, v1999, v2000, v2001, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, SBYTE4(v2644));
                                                          OUTLINED_FUNCTION_23_13(v2002, v2003, v2004, v2005, v2006, v2007, v2008, v2009, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645);
                                                          v2010 = OUTLINED_FUNCTION_7_19();
                                                          move_i(v2010, v2011, 25);
                                                          v2012 = OUTLINED_FUNCTION_17_16();
                                                          move_i(v2012, v2013, 150);
                                                          v2014 = OUTLINED_FUNCTION_13_19();
                                                          move_i(v2014, v2015, 128);
                                                          v2016 = OUTLINED_FUNCTION_16_17();
                                                          move_i(v2016, v2017, 50);
                                                          v2018 = OUTLINED_FUNCTION_15_17();
                                                          move_i(v2018, v2019, 130);
                                                          v2020 = OUTLINED_FUNCTION_14_17();
                                                          move_i(v2020, v2021, 130);
                                                          OUTLINED_FUNCTION_22_13(v2022, v2023, v2024, v2025, v2026, v2027, v2028, v2029, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, v2648, SBYTE4(v2648));
                                                          v2030 = OUTLINED_FUNCTION_21_13();
                                                          move_i(v2030, v2031, 255);
                                                          OUTLINED_FUNCTION_0_21();
                                                          OUTLINED_FUNCTION_3_20(v2032, v2033, v2034, v2035, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, SWORD1(v2642), SBYTE4(v2642), SHIWORD(v2642), v2643, SWORD1(v2643), SBYTE4(v2643), SHIWORD(v2643), v2644, SWORD1(v2644), SBYTE4(v2644));
                                                          if (!v2036)
                                                          {
LABEL_33:
                                                            OUTLINED_FUNCTION_6_19();
                                                            OUTLINED_FUNCTION_41_3(29);
                                                            v2037 = OUTLINED_FUNCTION_37_5();
                                                            move_i(v2037, v2038, 122);
                                                            OUTLINED_FUNCTION_35_5(v2039, v2040, v2041, v2042, v2043, v2044, v2045, v2046, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, v2648, SBYTE4(v2648));
                                                            OUTLINED_FUNCTION_30_8(v2047, v2048, v2049, v2050, v2051, v2052, v2053, v2054, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, v2648);
                                                            OUTLINED_FUNCTION_29_9(v2055, v2056, v2057, v2058, v2059, v2060, v2061, v2062, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, SBYTE4(v2647));
                                                            OUTLINED_FUNCTION_28_9(v2063, v2064, v2065, v2066, v2067, v2068, v2069, v2070, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647);
                                                            OUTLINED_FUNCTION_27_10(v2071, v2072, v2073, v2074, v2075, v2076, v2077, v2078, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, SBYTE4(v2646));
                                                            OUTLINED_FUNCTION_39_4(v2079, v2080, v2081, v2082, v2083, v2084, v2085, v2086, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646);
                                                            v2087 = OUTLINED_FUNCTION_7_19();
                                                            move_i(v2087, v2088, 50);
                                                            v2089 = OUTLINED_FUNCTION_9_19();
                                                            move_i(v2089, v2090, 100);
                                                            v2091 = OUTLINED_FUNCTION_8_19();
                                                            move_i(v2091, v2092, 128);
                                                            v2093 = OUTLINED_FUNCTION_12_19();
                                                            move_i(v2093, v2094, 75);
                                                            v2095 = OUTLINED_FUNCTION_11_19();
                                                            move_i(v2095, v2096, 130);
                                                            v2097 = OUTLINED_FUNCTION_10_19();
                                                            move_i(v2097, v2098, 130);
                                                            v2099 = OUTLINED_FUNCTION_26_12();
                                                            move_i(v2099, v2100, 150);
                                                            v2101 = OUTLINED_FUNCTION_18_15();
                                                            move_i(v2101, v2102, 0);
                                                            v2617 = (&v2642 + 4);
                                                            v2618 = v59;
                                                            OUTLINED_FUNCTION_1_20(&v2608);
                                                            v2103[2] = &v2646;
                                                            v2103[1] = &v2646 + 4;
                                                            OUTLINED_FUNCTION_5_19(v2104, v2105, v2106, v2103, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, SWORD1(v2647), SBYTE4(v2647), SHIWORD(v2647), v2648, SWORD1(v2648), SBYTE4(v2648), SHIWORD(v2648), v2649);
                                                            if (!v2107)
                                                            {
LABEL_34:
                                                              OUTLINED_FUNCTION_6_19();
                                                              OUTLINED_FUNCTION_41_3(30);
                                                              v2108 = OUTLINED_FUNCTION_38_5();
                                                              move_i(v2108, v2109, 164);
                                                              OUTLINED_FUNCTION_36_5(v2110, v2111, v2112, v2113, v2114, v2115, v2116, v2117, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, SBYTE4(v2642));
                                                              OUTLINED_FUNCTION_32_7(v2118, v2119, v2120, v2121, v2122, v2123, v2124, v2125, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643);
                                                              OUTLINED_FUNCTION_31_8(v2126, v2127, v2128, v2129, v2130, v2131, v2132, v2133, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, SBYTE4(v2643));
                                                              OUTLINED_FUNCTION_34_6(v2134, v2135, v2136, v2137, v2138, v2139, v2140, v2141, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644);
                                                              OUTLINED_FUNCTION_33_7(v2142, v2143, v2144, v2145, v2146, v2147, v2148, v2149, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, SBYTE4(v2644));
                                                              OUTLINED_FUNCTION_40_3(v2150, &v2645);
                                                              v2151 = OUTLINED_FUNCTION_7_19();
                                                              move_i(v2151, v2152, 0);
                                                              v2153 = OUTLINED_FUNCTION_17_16();
                                                              move_i(v2153, v2154, 170);
                                                              v2155 = OUTLINED_FUNCTION_13_19();
                                                              move_i(v2155, v2156, 128);
                                                              v2157 = OUTLINED_FUNCTION_16_17();
                                                              move_i(v2157, v2158, 0);
                                                              v2159 = OUTLINED_FUNCTION_15_17();
                                                              move_i(v2159, v2160, 0);
                                                              v2161 = OUTLINED_FUNCTION_14_17();
                                                              move_i(v2161, v2162, 0);
                                                              v2163 = OUTLINED_FUNCTION_26_12();
                                                              move_i(v2163, v2164, 0);
                                                              v2165 = OUTLINED_FUNCTION_24_13();
                                                              move_i(v2165, v2166, 0);
                                                              v2617 = (&v2648 + 4);
                                                              v2618 = v59;
                                                              OUTLINED_FUNCTION_1_20(&v2608);
                                                              v2167[2] = &v2645;
                                                              v2167[1] = &v2644 + 4;
                                                              OUTLINED_FUNCTION_4_19(v2168, v2169, v2170, v2167, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, SWORD1(v2642), SBYTE4(v2642), SHIWORD(v2642), v2643, SWORD1(v2643), SBYTE4(v2643), SHIWORD(v2643), v2644);
                                                              if (!v2171)
                                                              {
LABEL_35:
                                                                OUTLINED_FUNCTION_6_19();
                                                                OUTLINED_FUNCTION_41_3(31);
                                                                v2172 = OUTLINED_FUNCTION_37_5();
                                                                move_i(v2172, v2173, 108);
                                                                move_i(a1, &v2648 + 4, 121);
                                                                OUTLINED_FUNCTION_30_8(v2174, v2175, v2176, v2177, v2178, v2179, v2180, v2181, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, v2648);
                                                                OUTLINED_FUNCTION_29_9(v2182, v2183, v2184, v2185, v2186, v2187, v2188, v2189, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, SBYTE4(v2647));
                                                                OUTLINED_FUNCTION_28_9(v2190, v2191, v2192, v2193, v2194, v2195, v2196, v2197, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647);
                                                                OUTLINED_FUNCTION_27_10(v2198, v2199, v2200, v2201, v2202, v2203, v2204, v2205, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, SBYTE4(v2646));
                                                                v2206 = OUTLINED_FUNCTION_26_12();
                                                                move_i(v2206, v2207, 0);
                                                                v2208 = OUTLINED_FUNCTION_7_19();
                                                                move_i(v2208, v2209, 25);
                                                                v2210 = OUTLINED_FUNCTION_9_19();
                                                                move_i(v2210, v2211, 150);
                                                                v2212 = OUTLINED_FUNCTION_8_19();
                                                                move_i(v2212, v2213, 128);
                                                                v2214 = OUTLINED_FUNCTION_12_19();
                                                                move_i(v2214, v2215, 50);
                                                                v2216 = OUTLINED_FUNCTION_11_19();
                                                                move_i(v2216, v2217, 130);
                                                                v2218 = OUTLINED_FUNCTION_10_19();
                                                                move_i(v2218, v2219, 130);
                                                                OUTLINED_FUNCTION_19_14(v2220, v2221, v2222, v2223, v2224, v2225, v2226, v2227, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, SBYTE4(v2642));
                                                                v2228 = OUTLINED_FUNCTION_18_15();
                                                                move_i(v2228, v2229, 255);
                                                                v2617 = v52;
                                                                v2618 = v59;
                                                                OUTLINED_FUNCTION_1_20(&v2608);
                                                                v2230[1] = &v2646 + 4;
                                                                v2230[2] = &v2646;
                                                                OUTLINED_FUNCTION_5_19(v2231, v2232, v2233, v2230, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, SWORD1(v2647), SBYTE4(v2647), SHIWORD(v2647), v2648, SWORD1(v2648), SBYTE4(v2648), SHIWORD(v2648), v2649);
                                                                if (!v2234)
                                                                {
LABEL_36:
                                                                  OUTLINED_FUNCTION_6_19();
                                                                  OUTLINED_FUNCTION_41_3(32);
                                                                  v2235 = OUTLINED_FUNCTION_38_5();
                                                                  move_i(v2235, v2236, 97);
                                                                  OUTLINED_FUNCTION_42_3(v2237, v2238, v2239, v2240, v2241, v2242, v2243, v2244, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, SBYTE4(v2642));
                                                                  OUTLINED_FUNCTION_32_7(v2245, v2246, v2247, v2248, v2249, v2250, v2251, v2252, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643);
                                                                  OUTLINED_FUNCTION_31_8(v2253, v2254, v2255, v2256, v2257, v2258, v2259, v2260, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, SBYTE4(v2643));
                                                                  OUTLINED_FUNCTION_34_6(v2261, v2262, v2263, v2264, v2265, v2266, v2267, v2268, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644);
                                                                  OUTLINED_FUNCTION_33_7(v2269, v2270, v2271, v2272, v2273, v2274, v2275, v2276, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, SBYTE4(v2644));
                                                                  OUTLINED_FUNCTION_23_13(v2277, v2278, v2279, v2280, v2281, v2282, v2283, v2284, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645);
                                                                  v2285 = OUTLINED_FUNCTION_7_19();
                                                                  move_i(v2285, v2286, 100);
                                                                  v2287 = OUTLINED_FUNCTION_26_12();
                                                                  move_i(v2287, v2288, 125);
                                                                  OUTLINED_FUNCTION_48_3(v2289, v2290, v2291, v2292, v2293, v2294, v2295, v2296, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, SBYTE4(v2646));
                                                                  OUTLINED_FUNCTION_47_3(v2297, v2298, v2299, v2300, v2301, v2302, v2303, v2304, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647);
                                                                  OUTLINED_FUNCTION_46_3(v2305, v2306, v2307, v2308, v2309, v2310, v2311, v2312, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, SBYTE4(v2647));
                                                                  OUTLINED_FUNCTION_45_3(v2313, v2314, v2315, v2316, v2317, v2318, v2319, v2320, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, v2648);
                                                                  OUTLINED_FUNCTION_44_3(v2321, v2322, v2323, v2324, v2325, v2326, v2327, v2328, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, v2648, SBYTE4(v2648));
                                                                  OUTLINED_FUNCTION_43_3(v2329, v2330, v2331, v2332, v2333, v2334, v2335, v2336, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, v2648, v2649);
                                                                  OUTLINED_FUNCTION_2_20(&v2608, v2608, v2609, v2610, v60, &v2646, v7, v3, v62, v61, &v2644, v52, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, SWORD1(v2642), SBYTE4(v2642), SHIWORD(v2642), v2643, SWORD1(v2643), SBYTE4(v2643), SHIWORD(v2643), v2644, SWORD1(v2644), SBYTE4(v2644), v2645, v2646, v2647, v2648, v2649, SBYTE4(v2649), SHIWORD(v2649), v2650);
                                                                  if (!v2337)
                                                                  {
LABEL_37:
                                                                    OUTLINED_FUNCTION_6_19();
                                                                    OUTLINED_FUNCTION_41_3(33);
                                                                    v2338 = OUTLINED_FUNCTION_37_5();
                                                                    move_i(v2338, v2339, 101);
                                                                    move_i(a1, &v2648 + 4, 126);
                                                                    OUTLINED_FUNCTION_30_8(v2340, v2341, v2342, v2343, v2344, v2345, v2346, v2347, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, v2648);
                                                                    OUTLINED_FUNCTION_29_9(v2348, v2349, v2350, v2351, v2352, v2353, v2354, v2355, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, SBYTE4(v2647));
                                                                    OUTLINED_FUNCTION_28_9(v2356, v2357, v2358, v2359, v2360, v2361, v2362, v2363, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647);
                                                                    OUTLINED_FUNCTION_27_10(v2364, v2365, v2366, v2367, v2368, v2369, v2370, v2371, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, SBYTE4(v2646));
                                                                    v2372 = OUTLINED_FUNCTION_26_12();
                                                                    move_i(v2372, v2373, 0);
                                                                    v2374 = OUTLINED_FUNCTION_7_19();
                                                                    move_i(v2374, v2375, 50);
                                                                    v2376 = OUTLINED_FUNCTION_9_19();
                                                                    move_i(v2376, v2377, 100);
                                                                    v2378 = OUTLINED_FUNCTION_8_19();
                                                                    move_i(v2378, v2379, 128);
                                                                    v2380 = OUTLINED_FUNCTION_12_19();
                                                                    move_i(v2380, v2381, 75);
                                                                    v2382 = OUTLINED_FUNCTION_11_19();
                                                                    move_i(v2382, v2383, 130);
                                                                    v2384 = OUTLINED_FUNCTION_10_19();
                                                                    move_i(v2384, v2385, 175);
                                                                    OUTLINED_FUNCTION_19_14(v2386, v2387, v2388, v2389, v2390, v2391, v2392, v2393, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, SBYTE4(v2642));
                                                                    v2394 = OUTLINED_FUNCTION_18_15();
                                                                    move_i(v2394, v2395, 255);
                                                                    v2617 = v52;
                                                                    v2618 = v59;
                                                                    OUTLINED_FUNCTION_1_20(&v2608);
                                                                    v2396[1] = &v2646 + 4;
                                                                    v2396[2] = &v2646;
                                                                    OUTLINED_FUNCTION_5_19(v2397, v2398, v2399, v2396, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, SWORD1(v2647), SBYTE4(v2647), SHIWORD(v2647), v2648, SWORD1(v2648), SBYTE4(v2648), SHIWORD(v2648), v2649);
                                                                    if (!v2400)
                                                                    {
LABEL_38:
                                                                      OUTLINED_FUNCTION_6_19();
                                                                      OUTLINED_FUNCTION_41_3(34);
                                                                      v2401 = OUTLINED_FUNCTION_38_5();
                                                                      move_i(v2401, v2402, 105);
                                                                      OUTLINED_FUNCTION_42_3(v2403, v2404, v2405, v2406, v2407, v2408, v2409, v2410, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, SBYTE4(v2642));
                                                                      OUTLINED_FUNCTION_32_7(v2411, v2412, v2413, v2414, v2415, v2416, v2417, v2418, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643);
                                                                      OUTLINED_FUNCTION_31_8(v2419, v2420, v2421, v2422, v2423, v2424, v2425, v2426, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, SBYTE4(v2643));
                                                                      OUTLINED_FUNCTION_34_6(v2427, v2428, v2429, v2430, v2431, v2432, v2433, v2434, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644);
                                                                      OUTLINED_FUNCTION_33_7(v2435, v2436, v2437, v2438, v2439, v2440, v2441, v2442, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, SBYTE4(v2644));
                                                                      v2443 = OUTLINED_FUNCTION_26_12();
                                                                      move_i(v2443, v2444, 0);
                                                                      v2445 = OUTLINED_FUNCTION_7_19();
                                                                      move_i(v2445, v2446, 25);
                                                                      v2447 = OUTLINED_FUNCTION_17_16();
                                                                      move_i(v2447, v2448, 150);
                                                                      v2449 = OUTLINED_FUNCTION_13_19();
                                                                      move_i(v2449, v2450, 128);
                                                                      v2451 = OUTLINED_FUNCTION_16_17();
                                                                      move_i(v2451, v2452, 50);
                                                                      v2453 = OUTLINED_FUNCTION_15_17();
                                                                      move_i(v2453, v2454, 130);
                                                                      v2455 = OUTLINED_FUNCTION_14_17();
                                                                      move_i(v2455, v2456, 130);
                                                                      OUTLINED_FUNCTION_22_13(v2457, v2458, v2459, v2460, v2461, v2462, v2463, v2464, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, v2648, SBYTE4(v2648));
                                                                      v2465 = OUTLINED_FUNCTION_24_13();
                                                                      move_i(v2465, v2466, 255);
                                                                      v2617 = v52;
                                                                      v2618 = v59;
                                                                      OUTLINED_FUNCTION_1_20(&v2608);
                                                                      v2467[1] = &v2644 + 4;
                                                                      v2467[2] = &v2645;
                                                                      OUTLINED_FUNCTION_4_19(v2468, v2469, v2470, v2467, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, SWORD1(v2642), SBYTE4(v2642), SHIWORD(v2642), v2643, SWORD1(v2643), SBYTE4(v2643), SHIWORD(v2643), v2644);
                                                                      if (!v2471)
                                                                      {
LABEL_39:
                                                                        OUTLINED_FUNCTION_6_19();
                                                                        OUTLINED_FUNCTION_41_3(35);
                                                                        v2472 = OUTLINED_FUNCTION_37_5();
                                                                        move_i(v2472, v2473, 111);
                                                                        move_i(a1, &v2648 + 4, 126);
                                                                        OUTLINED_FUNCTION_30_8(v2474, v2475, v2476, v2477, v2478, v2479, v2480, v2481, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, v2648);
                                                                        OUTLINED_FUNCTION_29_9(v2482, v2483, v2484, v2485, v2486, v2487, v2488, v2489, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, SBYTE4(v2647));
                                                                        OUTLINED_FUNCTION_28_9(v2490, v2491, v2492, v2493, v2494, v2495, v2496, v2497, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647);
                                                                        OUTLINED_FUNCTION_27_10(v2498, v2499, v2500, v2501, v2502, v2503, v2504, v2505, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, SBYTE4(v2646));
                                                                        v2506 = OUTLINED_FUNCTION_26_12();
                                                                        move_i(v2506, v2507, 0);
                                                                        v2508 = OUTLINED_FUNCTION_7_19();
                                                                        move_i(v2508, v2509, 25);
                                                                        v2510 = OUTLINED_FUNCTION_9_19();
                                                                        move_i(v2510, v2511, 0);
                                                                        v2512 = OUTLINED_FUNCTION_8_19();
                                                                        move_i(v2512, v2513, 130);
                                                                        v2514 = OUTLINED_FUNCTION_12_19();
                                                                        move_i(v2514, v2515, 130);
                                                                        v2516 = OUTLINED_FUNCTION_11_19();
                                                                        move_i(v2516, v2517, 60);
                                                                        v2518 = OUTLINED_FUNCTION_10_19();
                                                                        move_i(v2518, v2519, 60);
                                                                        OUTLINED_FUNCTION_19_14(v2520, v2521, v2522, v2523, v2524, v2525, v2526, v2527, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, SBYTE4(v2642));
                                                                        v2528 = OUTLINED_FUNCTION_18_15();
                                                                        move_i(v2528, v2529, 255);
                                                                        v2617 = v52;
                                                                        v2618 = v59;
                                                                        OUTLINED_FUNCTION_1_20(&v2608);
                                                                        v2530[1] = &v2646 + 4;
                                                                        v2530[2] = &v2646;
                                                                        OUTLINED_FUNCTION_5_19(v2531, v2532, v2533, v2530, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, SWORD1(v2647), SBYTE4(v2647), SHIWORD(v2647), v2648, SWORD1(v2648), SBYTE4(v2648), SHIWORD(v2648), v2649);
                                                                        if (!v2534)
                                                                        {
LABEL_40:
                                                                          OUTLINED_FUNCTION_6_19();
                                                                          OUTLINED_FUNCTION_41_3(36);
                                                                          v2535 = OUTLINED_FUNCTION_38_5();
                                                                          move_i(v2535, v2536, 117);
                                                                          OUTLINED_FUNCTION_42_3(v2537, v2538, v2539, v2540, v2541, v2542, v2543, v2544, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, SBYTE4(v2642));
                                                                          OUTLINED_FUNCTION_32_7(v2545, v2546, v2547, v2548, v2549, v2550, v2551, v2552, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643);
                                                                          OUTLINED_FUNCTION_31_8(v2553, v2554, v2555, v2556, v2557, v2558, v2559, v2560, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, SBYTE4(v2643));
                                                                          OUTLINED_FUNCTION_34_6(v2561, v2562, v2563, v2564, v2565, v2566, v2567, v2568, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644);
                                                                          OUTLINED_FUNCTION_33_7(v2569, v2570, v2571, v2572, v2573, v2574, v2575, v2576, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, SBYTE4(v2644));
                                                                          v2577 = OUTLINED_FUNCTION_26_12();
                                                                          move_i(v2577, v2578, 0);
                                                                          v2579 = OUTLINED_FUNCTION_7_19();
                                                                          move_i(v2579, v2580, 25);
                                                                          v2581 = OUTLINED_FUNCTION_17_16();
                                                                          move_i(v2581, v2582, 0);
                                                                          v2583 = OUTLINED_FUNCTION_13_19();
                                                                          move_i(v2583, v2584, 130);
                                                                          v2585 = OUTLINED_FUNCTION_16_17();
                                                                          move_i(v2585, v2586, 90);
                                                                          v2587 = OUTLINED_FUNCTION_15_17();
                                                                          move_i(v2587, v2588, 60);
                                                                          v2589 = OUTLINED_FUNCTION_14_17();
                                                                          move_i(v2589, v2590, 60);
                                                                          OUTLINED_FUNCTION_22_13(v2591, v2592, v2593, v2594, v2595, v2596, v2597, v2598, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, v2648, SBYTE4(v2648));
                                                                          v2599 = OUTLINED_FUNCTION_24_13();
                                                                          move_i(v2599, v2600, 255);
                                                                          v2617 = v52;
                                                                          v2618 = v59;
                                                                          OUTLINED_FUNCTION_1_20(&v2608);
                                                                          v2601[1] = &v2644 + 4;
                                                                          v2601[2] = &v2645;
                                                                          OUTLINED_FUNCTION_4_19(v2602, v2603, v2604, v2601, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, SWORD1(v2642), SBYTE4(v2642), SHIWORD(v2642), v2643, SWORD1(v2643), SBYTE4(v2643), SHIWORD(v2643), v2644);
                                                                          if (!v2605)
                                                                          {
LABEL_45:
                                                                            OUTLINED_FUNCTION_6_19();
                                                                            vretproc(a1);
                                                                            result = 0;
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
          }
        }
      }
    }

    v2606 = *(a1 + 104);
    if (v2606)
    {
      *(a1 + 104) = 0;
      v2607 = v2606;
    }

    else
    {
      v2607 = vback(a1, 0);
    }

    switch(v2607)
    {
      case 1:
        goto LABEL_6;
      case 2:
        goto LABEL_7;
      case 3:
        goto LABEL_8;
      case 4:
        goto LABEL_9;
      case 5:
        goto LABEL_10;
      case 6:
        goto LABEL_11;
      case 7:
        goto LABEL_12;
      case 8:
        goto LABEL_13;
      case 9:
        goto LABEL_14;
      case 10:
        goto LABEL_15;
      case 11:
        goto LABEL_16;
      case 12:
        goto LABEL_17;
      case 13:
        goto LABEL_18;
      case 14:
        goto LABEL_19;
      case 15:
        goto LABEL_20;
      case 16:
        goto LABEL_21;
      case 17:
        goto LABEL_22;
      case 18:
        goto LABEL_23;
      case 19:
        goto LABEL_24;
      case 20:
        goto LABEL_25;
      case 21:
        goto LABEL_26;
      case 22:
        goto LABEL_27;
      case 23:
        goto LABEL_28;
      case 24:
        goto LABEL_29;
      case 25:
        goto LABEL_30;
      case 26:
        goto LABEL_31;
      case 27:
        goto LABEL_32;
      case 28:
        goto LABEL_33;
      case 29:
        goto LABEL_34;
      case 30:
        goto LABEL_35;
      case 31:
        goto LABEL_36;
      case 32:
        goto LABEL_37;
      case 33:
        goto LABEL_38;
      case 34:
        goto LABEL_39;
      case 35:
        goto LABEL_40;
      case 36:
        goto LABEL_45;
      default:
        break;
    }
  }

  vretproc(a1);
  result = 94;
LABEL_4:
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void OUTLINED_FUNCTION_1_20(void *a1@<X8>)
{
  a1[7] = v5;
  a1[8] = v6;
  a1[5] = v3;
  a1[6] = v4;
  a1[3] = v1;
  a1[4] = v2;
}

void OUTLINED_FUNCTION_2_20(void *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, __int16 a37, char a38, __int16 a39, char a40, __int16 a41, char a42, __int16 a43, char a44, __int16 a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, int a51, char a52, __int16 a53, char a54)
{
  a1[1] = &a46;
  a1[2] = v55;
  *a1 = &a44;

  registerPhoneme(v54, &a54, &a52, v54 + 3552, &a36, &a38, &a40, &a42, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
}

void OUTLINED_FUNCTION_3_20(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, __int16 a40, char a41, __int16 a42, char a43, __int16 a44, char a45, __int16 a46, char a47, __int16 a48, char a49)
{
  a4[1] = &a49;
  a4[2] = v50;
  *a4 = &a47;

  registerPhoneme(v49, a1, a2, a3, &a39, &a41, &a43, &a45, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15);
}

void OUTLINED_FUNCTION_4_19(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, __int16 a40, char a41, __int16 a42, char a43, __int16 a44, char a45, __int16 a46, char a47)
{
  *a4 = &a47;

  registerPhoneme(v47, a1, a2, a3, &a39, &a41, &a43, &a45, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15);
}

void OUTLINED_FUNCTION_5_19(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, __int16 a45, char a46, __int16 a47, char a48, __int16 a49, char a50, __int16 a51, char a52)
{
  *a4 = &a44;

  registerPhoneme(v52, a1, a2, a3, &a52, &a50, &a48, &a46, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15);
}

void OUTLINED_FUNCTION_19_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, int a43, char a44)
{

  move_i(v44, &a44, 0);
}

void OUTLINED_FUNCTION_22_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, int a49, char a50)
{

  move_i(v50, &a50, 0);
}

void OUTLINED_FUNCTION_23_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46)
{

  move_i(v46, &a46, 0);
}

void OUTLINED_FUNCTION_25_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{

  move_i(v47, &a47, 0);
}

void OUTLINED_FUNCTION_27_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, int a47, char a48)
{

  move_i(v48, &a48, 0);
}

void OUTLINED_FUNCTION_28_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48)
{

  move_i(v48, &a48, 0);
}

void OUTLINED_FUNCTION_29_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, int a48, char a49)
{

  move_i(v49, &a49, 0);
}

void OUTLINED_FUNCTION_30_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{

  move_i(v49, &a49, 0);
}

void OUTLINED_FUNCTION_31_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, int a44, char a45)
{

  move_i(v45, &a45, 0);
}

void OUTLINED_FUNCTION_32_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{

  move_i(v44, &a44, 0);
}

void OUTLINED_FUNCTION_33_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, int a45, char a46)
{

  move_i(v46, &a46, 0);
}

void OUTLINED_FUNCTION_34_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{

  move_i(v45, &a45, 0);
}

void OUTLINED_FUNCTION_35_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, int a49, char a50)
{

  move_i(v50, &a50, 0);
}

void OUTLINED_FUNCTION_36_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, int a43, char a44)
{

  move_i(v44, &a44, 0);
}

void OUTLINED_FUNCTION_39_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{

  move_i(v47, &a47, 0);
}

void OUTLINED_FUNCTION_40_3(uint64_t a1, uint64_t a2)
{

  move_i(v2, a2, 0);
}

void OUTLINED_FUNCTION_41_3(uint64_t a1@<X8>)
{

  starttest(v1, a1);
}

void OUTLINED_FUNCTION_42_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, int a43, char a44)
{

  move_i(v44, &a44, 126);
}

void OUTLINED_FUNCTION_43_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50)
{

  move_i(v50, &a50, 150);
}

void OUTLINED_FUNCTION_44_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, int a49, char a50)
{

  move_i(v50, &a50, 150);
}

void OUTLINED_FUNCTION_45_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{

  move_i(v49, &a49, 130);
}

void OUTLINED_FUNCTION_46_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, int a48, char a49)
{

  move_i(v49, &a49, 150);
}

void OUTLINED_FUNCTION_47_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48)
{

  move_i(v48, &a48, 200);
}

void OUTLINED_FUNCTION_48_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, int a47, char a48)
{

  move_i(v48, &a48, 128);
}

uint64_t set_por_global_constants(_WORD *a1)
{
  OUTLINED_FUNCTION_1_21(*MEMORY[0x277D85DE8], v22);
  OUTLINED_FUNCTION_2_21(v3, v4, v5, v6, v7, v8, v9, v10, v23, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_0_22(v11, v12, v13, v14, v15, v16, v17, v18, v24, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, *v70, v70[4], *v72, *&v72[4], v72[6], v74, SWORD2(v74), SBYTE6(v74), SHIBYTE(v74), v76, v78))
  {
    v19 = 94;
  }

  else
  {
    fence_21(a1);
    v19 = 0;
    a1[2969] = 3;
    a1[2971] = 9;
    a1[1613] = 3;
    a1[1609] = 5;
    a1[1615] = 2;
    a1[2981] = 2;
    a1[2979] = 1;
    a1[2983] = 0;
    a1[2985] = 1;
    a1[2965] = 9;
    a1[2967] = 10;
  }

  vretproc(a1);
  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

uint64_t init_por_vars(__int16 *a1)
{
  OUTLINED_FUNCTION_1_21(*MEMORY[0x277D85DE8], v22);
  OUTLINED_FUNCTION_2_21(v3, v4, v5, v6, v7, v8, v9, v10, v23, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_0_22(v11, v12, v13, v14, v15, v16, v17, v18, v24, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, *v70, v70[4], *v72, *&v72[4], v72[6], v74, SWORD2(v74), SBYTE6(v74), SHIBYTE(v74), v76, v78))
  {
    v19 = 94;
  }

  else
  {
    fence_21(a1);
    a1[2545] = a1[2561];
    npush_s(a1);
    a1[1577] = 2;
    npop(a1, a1 + 1576);
    npush_s(a1);
    a1[1577] = 3;
    npop(a1, a1 + 1576);
    npush_s(a1);
    a1[1577] = 4;
    npop(a1, a1 + 1576);
    npush_s(a1);
    a1[1561] = 2;
    npop(a1, a1 + 1560);
    v19 = 0;
  }

  vretproc(a1);
  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

uint64_t reset_por_sent_vars(uint64_t a1)
{
  OUTLINED_FUNCTION_1_21(*MEMORY[0x277D85DE8], v22);
  OUTLINED_FUNCTION_2_21(v3, v4, v5, v6, v7, v8, v9, v10, v23, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_0_22(v11, v12, v13, v14, v15, v16, v17, v18, v24, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, *v70, v70[4], *v72, *&v72[4], v72[6], v74, SWORD2(v74), SBYTE6(v74), SHIBYTE(v74), v76, v78))
  {
    v19 = 94;
  }

  else
  {
    fence_21(a1);
    v19 = 0;
  }

  vretproc(a1);
  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

uint64_t OUTLINED_FUNCTION_0_22(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, char a33, int a34, __int16 a35, char a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, char a42)
{

  return ventproc(v42, &a9, &a40, &a36, &a33, &a42);
}

void OUTLINED_FUNCTION_1_21(uint64_t a1@<X8>, uint64_t a2)
{
  *(v2 - 40) = a1;

  bzero(&a2, 0xB8uLL);
}

void OUTLINED_FUNCTION_2_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{

  bzero(&a36, 0xC0uLL);
}

uint64_t por_gramm_cat_dict(uint64_t a1, __int16 *a2, __int16 *a3)
{
  v1597 = *MEMORY[0x277D85DE8];
  v1592[0] = 0;
  v1592[1] = 0;
  v1591[0] = 0;
  v1591[1] = 0;
  v1590 = 0;
  v1588 = 0u;
  v1589 = 0u;
  v1585 = 0;
  v1586 = 0;
  v1587 = 0;
  bzero(&v1562, 0xB8uLL);
  bzero(v1596, 0xC0uLL);
  if (!setjmp(v1596) && !ventproc(a1, &v1562, v1595, v1594, v1593, v1596))
  {
    get_parm(a1, v1592, a2, -6);
    get_parm(a1, v1591, a3, -6);
    v1590 = 65532;
    v1589 = 0uLL;
    LODWORD(v1588) = -65534;
    LOBYTE(v1587) = 0;
    LODWORD(v1585) = -65533;
    *(*(a1 + 192) + 8121) = 0;
    memset(*(a1 + 264), *(a1 + 288), *(a1 + 288));
    v8 = OUTLINED_FUNCTION_33_8();
    starttest(v8, v9);
    lpta_rpta_loadp(a1, v1592, v1591);
    if (!actd_lookup(a1, 0, 0, 0))
    {
LABEL_6:
      move_i(a1, &v1590, 0);
      OUTLINED_FUNCTION_28_10();
      copyvar(a1, &v1588, (a1 + 3052));
      copyvar(a1, &v1590, (a1 + 2284));
      actd_goto(a1);
      while (1)
      {
        while (1)
        {
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

          v14 = &unk_2806BB32F;
          v15 = 5;
          switch(v13)
          {
            case 1:
              v42 = OUTLINED_FUNCTION_1_22();
              lpta_rpta_loadp(v42, v43, v44);
              LOWORD(v14) = 4;
              v45 = OUTLINED_FUNCTION_14_18();
              if (insert_2pt_s(v45, v46, 1, v47, v48))
              {
                continue;
              }

              v49 = OUTLINED_FUNCTION_23_14();
              v50 = npush_s(v49);
              OUTLINED_FUNCTION_13_20(v50, v51, v52, v53, v54, v55, v56, v57, v1562, v1563, v1564, v1565, v1566, v1567, v1568, v1569, v1570, v1571, v1572, v1573, v1574, v1575, v1576, v1577, v1578, v1579, v1580, v1581, v1582, v1583, v1584, v1585, v1586, v1587, v1588, SWORD1(v1588));
              v58 = OUTLINED_FUNCTION_17_17();
              npush_s(v58);
              v4 = 2;
              WORD1(v1588) = 2;
              v59 = OUTLINED_FUNCTION_15_18();
              npop(v59, v60);
              v61 = OUTLINED_FUNCTION_30_9();
              goto LABEL_209;
            case 2:
              v1181 = OUTLINED_FUNCTION_1_22();
              lpta_rpta_loadp(v1181, v1182, v1183);
              v1184 = OUTLINED_FUNCTION_3_21();
              if (insert_2pt_s(v1184, v1185, 1, v1186, v1187))
              {
                continue;
              }

              v1024 = a1;
              goto LABEL_193;
            case 3:
              v1113 = OUTLINED_FUNCTION_1_22();
              v1116 = lpta_rpta_loadp(v1113, v1114, v1115);
              if (OUTLINED_FUNCTION_11_20(v1116, v1117, v1118, &unk_2806BB1E6, 0))
              {
                continue;
              }

              goto LABEL_320;
            case 4:
            case 5:
              v1487 = OUTLINED_FUNCTION_1_22();
              lpta_rpta_loadp(v1487, v1488, v1489);
              v1490 = OUTLINED_FUNCTION_0_23();
              if (insert_2pt_s(v1490, v1491, v1492, v1493, v1494))
              {
                continue;
              }

              LOWORD(v15) = 2;
LABEL_320:
              v1495 = OUTLINED_FUNCTION_17_17();
              npush_s(v1495);
              WORD1(v1588) = v15;
              v1496 = OUTLINED_FUNCTION_18_16();
              npop(v1496, v1497);
              v1483 = OUTLINED_FUNCTION_24_14();
              goto LABEL_321;
            case 6:
            case 118:
              v1295 = OUTLINED_FUNCTION_1_22();
              lpta_rpta_loadp(v1295, v1296, v1297);
              v193 = OUTLINED_FUNCTION_0_23();
              goto LABEL_269;
            case 7:
            case 119:
              v190 = OUTLINED_FUNCTION_1_22();
              lpta_rpta_loadp(v190, v191, v192);
              v193 = OUTLINED_FUNCTION_2_22();
              v197 = 6;
LABEL_269:
              if (insert_2pt_s(v193, v194, v197, v195, v196))
              {
                continue;
              }

              v1298 = OUTLINED_FUNCTION_24_14();
              v1299 = npush_s(v1298);
              OUTLINED_FUNCTION_8_20(v1299, v1300, v1301, v1302, v1303, v1304, v1305, v1306, v1562, v1563, v1564, v1565, v1566, v1567, v1568, v1569, v1570, v1571, v1572, v1573, v1574, v1575, v1576, v1577, v1578, v1579, v1580, v1581, v1582, v1583, v1584, v1585, v1586, v1587, v1588, SWORD1(v1588));
              v1307 = OUTLINED_FUNCTION_14_18();
              npush_s(v1307);
              v1308 = OUTLINED_FUNCTION_12_20();
              npop(v1308, v3);
              v1309 = OUTLINED_FUNCTION_17_17();
              npush_s(v1309);
              WORD1(v1588) = &unk_2806BB32F;
              v1310 = OUTLINED_FUNCTION_15_18();
              npop(v1310, v1311);
              v1312 = OUTLINED_FUNCTION_14_18();
              npush_s(v1312);
              OUTLINED_FUNCTION_21_14();
              goto LABEL_271;
            case 8:
              v104 = OUTLINED_FUNCTION_1_22();
              v107 = lpta_rpta_loadp(v104, v105, v106);
              v110 = &unk_2806BB30C;
              goto LABEL_56;
            case 9:
            case 121:
              v1198 = OUTLINED_FUNCTION_1_22();
              lpta_rpta_loadp(v1198, v1199, v1200);
              v1201 = OUTLINED_FUNCTION_2_22();
              if (insert_2pt_s(v1201, v1202, 7, v1203, v1204))
              {
                continue;
              }

              v1205 = OUTLINED_FUNCTION_24_14();
              v1206 = npush_s(v1205);
              OUTLINED_FUNCTION_5_20(v1206, v1207, v1208, v1209, v1210, v1211, v1212, v1213, v1562, v1563, v1564, v1565, v1566, v1567, v1568, v1569, v1570, v1571, v1572, v1573, v1574, v1575, v1576, v1577, v1578, v1579, v1580, v1581, v1582, v1583, v1584, v1585, v1586, v1587, v1588, SWORD1(v1588));
              v1214 = OUTLINED_FUNCTION_14_18();
              npush_s(v1214);
              OUTLINED_FUNCTION_32_8();
              v1215 = OUTLINED_FUNCTION_18_16();
              npop(v1215, v1216);
              v1217 = OUTLINED_FUNCTION_20_14();
              npush_s(v1217);
              WORD1(v1588) = &unk_2806BB32F;
              v1218 = OUTLINED_FUNCTION_18_16();
              npop(v1218, v1219);
              v1220 = OUTLINED_FUNCTION_14_18();
              goto LABEL_327;
            case 10:
              v62 = OUTLINED_FUNCTION_1_22();
              v31 = lpta_rpta_loadp(v62, v63, v64);
              v34 = &unk_2806BB311;
              goto LABEL_19;
            case 11:
              v28 = OUTLINED_FUNCTION_1_22();
              v31 = lpta_rpta_loadp(v28, v29, v30);
              v34 = &unk_2806BB316;
LABEL_19:
              if (OUTLINED_FUNCTION_4_20(v31, v32, v33, v34, 0))
              {
                continue;
              }

              v65 = OUTLINED_FUNCTION_24_14();
              npush_s(v65);
              OUTLINED_FUNCTION_22_14();
              v3 = &v1588;
              v66 = OUTLINED_FUNCTION_15_18();
              npop(v66, v67);
              v68 = OUTLINED_FUNCTION_17_17();
              npush_s(v68);
              v4 = 2;
              WORD1(v1588) = 2;
              v69 = OUTLINED_FUNCTION_15_18();
              npop(v69, v70);
              v71 = OUTLINED_FUNCTION_30_9();
              npush_s(v71);
              WORD1(v1588) = 5;
              goto LABEL_284;
            case 12:
              v303 = OUTLINED_FUNCTION_1_22();
              v38 = lpta_rpta_loadp(v303, v304, v305);
              v41 = &unk_2806BB1E6;
              goto LABEL_274;
            case 13:
              v111 = OUTLINED_FUNCTION_1_22();
              v83 = lpta_rpta_loadp(v111, v112, v113);
              v86 = &unk_2806BB21C;
              goto LABEL_232;
            case 14:
              v1454 = OUTLINED_FUNCTION_1_22();
              v1281 = lpta_rpta_loadp(v1454, v1455, v1456);
              v1284 = &unk_2806BB31B;
              goto LABEL_304;
            case 15:
            case 17:
              v121 = OUTLINED_FUNCTION_1_22();
              lpta_rpta_loadp(v121, v122, v123);
              v124 = OUTLINED_FUNCTION_2_22();
              if (insert_2pt_s(v124, v125, 6, v126, v127))
              {
                continue;
              }

              v128 = OUTLINED_FUNCTION_23_14();
              goto LABEL_326;
            case 16:
              v1278 = OUTLINED_FUNCTION_1_22();
              v1281 = lpta_rpta_loadp(v1278, v1279, v1280);
              v1284 = &unk_2806BB320;
LABEL_304:
              if (OUTLINED_FUNCTION_4_20(v1281, v1282, v1283, v1284, 0))
              {
                continue;
              }

              v182 = OUTLINED_FUNCTION_23_14();
              goto LABEL_306;
            case 18:
              v21 = OUTLINED_FUNCTION_1_22();
              v24 = lpta_rpta_loadp(v21, v22, v23);
              v27 = &unk_2806BB31B;
              goto LABEL_43;
            case 19:
              v1500 = OUTLINED_FUNCTION_1_22();
              lpta_rpta_loadp(v1500, v1501, v1502);
              v1503 = OUTLINED_FUNCTION_2_22();
              if (insert_2pt_s(v1503, v1504, 6, v1505, v1506))
              {
                continue;
              }

              v128 = OUTLINED_FUNCTION_24_14();
LABEL_326:
              v1507 = npush_s(v128);
              OUTLINED_FUNCTION_5_20(v1507, v1508, v1509, v1510, v1511, v1512, v1513, v1514, v1562, v1563, v1564, v1565, v1566, v1567, v1568, v1569, v1570, v1571, v1572, v1573, v1574, v1575, v1576, v1577, v1578, v1579, v1580, v1581, v1582, v1583, v1584, v1585, v1586, v1587, v1588, SWORD1(v1588));
              v1515 = OUTLINED_FUNCTION_14_18();
              npush_s(v1515);
              OUTLINED_FUNCTION_32_8();
              v1516 = OUTLINED_FUNCTION_18_16();
              npop(v1516, v1517);
              v1518 = OUTLINED_FUNCTION_20_14();
              npush_s(v1518);
              WORD1(v1588) = &unk_2806BB32F;
              v1519 = OUTLINED_FUNCTION_18_16();
              npop(v1519, v1520);
              v1220 = OUTLINED_FUNCTION_27_11();
LABEL_327:
              npush_s(v1220);
              OUTLINED_FUNCTION_21_14();
              goto LABEL_328;
            case 20:
              v179 = OUTLINED_FUNCTION_1_22();
              v24 = lpta_rpta_loadp(v179, v180, v181);
              v27 = &unk_2806BB320;
LABEL_43:
              if (OUTLINED_FUNCTION_4_20(v24, v25, v26, v27, 0))
              {
                continue;
              }

              v182 = OUTLINED_FUNCTION_24_14();
LABEL_306:
              v1457 = npush_s(v182);
              OUTLINED_FUNCTION_7_20(v1457, v1458, v1459, v1460, v1461, v1462, v1463, v1464, v1562, v1563, v1564, v1565, v1566, v1567, v1568, v1569, v1570, v1571, v1572, v1573, v1574, v1575, v1576, v1577, v1578, v1579, v1580, v1581, v1582, v1583, v1584, v1585, v1586, v1587, v1588, SWORD1(v1588));
              v1465 = OUTLINED_FUNCTION_17_17();
              npush_s(v1465);
              v1466 = OUTLINED_FUNCTION_12_20();
              npop(v1466, v4);
              v1467 = OUTLINED_FUNCTION_20_14();
              npush_s(v1467);
              WORD1(v1588) = 5;
              v1468 = OUTLINED_FUNCTION_16_18();
              npop(v1468, v1469);
              v1470 = OUTLINED_FUNCTION_27_11();
              npush_s(v1470);
              OUTLINED_FUNCTION_21_14();
              goto LABEL_307;
            case 21:
              v887 = OUTLINED_FUNCTION_1_22();
              lpta_rpta_loadp(v887, v888, v889);
              v890 = OUTLINED_FUNCTION_2_22();
              if (insert_2pt_s(v890, v891, 6, v892, v893))
              {
                continue;
              }

              v894 = OUTLINED_FUNCTION_24_14();
              v895 = npush_s(v894);
              OUTLINED_FUNCTION_5_20(v895, v896, v897, v898, v899, v900, v901, v902, v1562, v1563, v1564, v1565, v1566, v1567, v1568, v1569, v1570, v1571, v1572, v1573, v1574, v1575, v1576, v1577, v1578, v1579, v1580, v1581, v1582, v1583, v1584, v1585, v1586, v1587, v1588, SWORD1(v1588));
              v903 = OUTLINED_FUNCTION_14_18();
              npush_s(v903);
              OUTLINED_FUNCTION_32_8();
              v904 = OUTLINED_FUNCTION_18_16();
              npop(v904, v905);
              v906 = OUTLINED_FUNCTION_20_14();
              npush_s(v906);
              WORD1(v1588) = &unk_2806BB32F;
              v907 = OUTLINED_FUNCTION_18_16();
              npop(v907, v908);
              v909 = OUTLINED_FUNCTION_27_11();
              npush_s(v909);
              OUTLINED_FUNCTION_21_14();
              goto LABEL_328;
            case 22:
              v959 = OUTLINED_FUNCTION_1_22();
              v962 = lpta_rpta_loadp(v959, v960, v961);
              if (OUTLINED_FUNCTION_4_20(v962, v963, v964, &unk_2806BB325, 0))
              {
                continue;
              }

              v965 = OUTLINED_FUNCTION_20_14();
              npush_s(v965);
              WORD1(v1588) = 2;
              v3 = &v1588;
              v966 = OUTLINED_FUNCTION_15_18();
              npop(v966, v967);
              v968 = OUTLINED_FUNCTION_24_14();
              goto LABEL_185;
            case 23:
              v975 = OUTLINED_FUNCTION_1_22();
              v978 = lpta_rpta_loadp(v975, v976, v977);
              if (OUTLINED_FUNCTION_4_20(v978, v979, v980, &unk_2806BB325, 0))
              {
                continue;
              }

              v981 = OUTLINED_FUNCTION_20_14();
              npush_s(v981);
              WORD1(v1588) = 2;
              v3 = &v1588;
              v982 = OUTLINED_FUNCTION_15_18();
              npop(v982, v983);
              v968 = OUTLINED_FUNCTION_23_14();
LABEL_185:
              npush_s(v968);
              v4 = 1;
              WORD1(v1588) = 1;
              v984 = OUTLINED_FUNCTION_15_18();
              npop(v984, v985);
              v986 = OUTLINED_FUNCTION_30_9();
              npush_s(v986);
              WORD1(v1588) = 5;
              v987 = OUTLINED_FUNCTION_15_18();
              npop(v987, v988);
              v989 = OUTLINED_FUNCTION_27_11();
              npush_s(v989);
              OUTLINED_FUNCTION_21_14();
              goto LABEL_284;
            case 24:
              v87 = OUTLINED_FUNCTION_1_22();
              v83 = lpta_rpta_loadp(v87, v88, v89);
              v86 = &unk_2806BB21F;
              goto LABEL_232;
            case 25:
              v160 = OUTLINED_FUNCTION_1_22();
              v163 = lpta_rpta_loadp(v160, v161, v162);
              v166 = &unk_2806BB1E8;
              goto LABEL_180;
            case 26:
              v129 = OUTLINED_FUNCTION_1_22();
              lpta_rpta_loadp(v129, v130, v131);
              v132 = OUTLINED_FUNCTION_3_21();
              v136 = 6;
              goto LABEL_254;
            case 27:
              v1285 = OUTLINED_FUNCTION_1_22();
              lpta_rpta_loadp(v1285, v1286, v1287);
              v1288 = OUTLINED_FUNCTION_3_21();
              if (insert_2pt_s(v1288, v1289, 3, v1290, v1291))
              {
                continue;
              }

              goto LABEL_266;
            case 28:
              v72 = OUTLINED_FUNCTION_1_22();
              lpta_rpta_loadp(v72, v73, v74);
              v75 = OUTLINED_FUNCTION_3_21();
              if (insert_2pt_s(v75, v76, 3, v77, v78))
              {
                continue;
              }

              v79 = OUTLINED_FUNCTION_23_14();
              npush_s(v79);
              OUTLINED_FUNCTION_22_14();
              goto LABEL_267;
            case 29:
            case 34:
              v1250 = OUTLINED_FUNCTION_1_22();
              lpta_rpta_loadp(v1250, v1251, v1252);
              v132 = OUTLINED_FUNCTION_3_21();
              v136 = 4;
LABEL_254:
              if (!insert_2pt_s(v132, v133, v136, v134, v135))
              {
                goto LABEL_255;
              }

              continue;
            case 30:
            case 167:
              v1119 = OUTLINED_FUNCTION_1_22();
              lpta_rpta_loadp(v1119, v1120, v1121);
              v1122 = OUTLINED_FUNCTION_19_15();
              if (insert_2pt_s(v1122, v1123, 5, v1124, v1125))
              {
                continue;
              }

              WORD1(v1588) = 5;
              goto LABEL_256;
            case 31:
              goto LABEL_225;
            case 32:
              v14 = &unk_2806BB44D;
              v15 = 7;
              goto LABEL_225;
            case 33:
            case 46:
            case 162:
              v771 = OUTLINED_FUNCTION_1_22();
              lpta_rpta_loadp(v771, v772, v773);
              v774 = OUTLINED_FUNCTION_3_21();
              if (insert_2pt_s(v774, v775, 2, v776, v777))
              {
                continue;
              }

              v159 = OUTLINED_FUNCTION_23_14();
              goto LABEL_314;
            case 35:
            case 37:
              v1484 = OUTLINED_FUNCTION_1_22();
              lpta_rpta_loadp(v1484, v1485, v1486);
              v1343 = OUTLINED_FUNCTION_3_21();
              v1347 = 4;
              goto LABEL_312;
            case 36:
            case 38:
              v1451 = OUTLINED_FUNCTION_1_22();
              lpta_rpta_loadp(v1451, v1452, v1453);
              v1343 = OUTLINED_FUNCTION_3_21();
              v1347 = 5;
              goto LABEL_312;
            case 39:
              v35 = OUTLINED_FUNCTION_1_22();
              v38 = lpta_rpta_loadp(v35, v36, v37);
              v41 = &unk_2806BB1EC;
              goto LABEL_274;
            case 40:
            case 42:
            case 107:
            case 109:
              v868 = OUTLINED_FUNCTION_1_22();
              lpta_rpta_loadp(v868, v869, v870);
              v871 = OUTLINED_FUNCTION_2_22();
              if (insert_2pt_s(v871, v872, 6, v873, v874))
              {
                continue;
              }

              v875 = OUTLINED_FUNCTION_23_14();
              v876 = npush_s(v875);
              OUTLINED_FUNCTION_8_20(v876, v877, v878, v879, v880, v881, v882, v883, v1562, v1563, v1564, v1565, v1566, v1567, v1568, v1569, v1570, v1571, v1572, v1573, v1574, v1575, v1576, v1577, v1578, v1579, v1580, v1581, v1582, v1583, v1584, v1585, v1586, v1587, v1588, SWORD1(v1588));
              v884 = OUTLINED_FUNCTION_14_18();
              npush_s(v884);
              v885 = OUTLINED_FUNCTION_12_20();
              npop(v885, v3);
              v886 = OUTLINED_FUNCTION_17_17();
              npush_s(v886);
              WORD1(v1588) = &unk_2806BB32F;
LABEL_271:
              v1313 = OUTLINED_FUNCTION_15_18();
              npop(v1313, v1314);
              OUTLINED_FUNCTION_28_10();
              goto LABEL_289;
            case 41:
            case 43:
            case 108:
            case 110:
              v1431 = OUTLINED_FUNCTION_1_22();
              lpta_rpta_loadp(v1431, v1432, v1433);
              v1434 = OUTLINED_FUNCTION_2_22();
              if (insert_2pt_s(v1434, v1435, 7, v1436, v1437))
              {
                continue;
              }

              v1438 = OUTLINED_FUNCTION_23_14();
              v1439 = npush_s(v1438);
              OUTLINED_FUNCTION_5_20(v1439, v1440, v1441, v1442, v1443, v1444, v1445, v1446, v1562, v1563, v1564, v1565, v1566, v1567, v1568, v1569, v1570, v1571, v1572, v1573, v1574, v1575, v1576, v1577, v1578, v1579, v1580, v1581, v1582, v1583, v1584, v1585, v1586, v1587, v1588, SWORD1(v1588));
              v1447 = OUTLINED_FUNCTION_14_18();
              npush_s(v1447);
              OUTLINED_FUNCTION_32_8();
              goto LABEL_301;
            case 44:
            case 111:
              v1473 = OUTLINED_FUNCTION_1_22();
              lpta_rpta_loadp(v1473, v1474, v1475);
              v1476 = OUTLINED_FUNCTION_2_22();
              if (insert_2pt_s(v1476, v1477, 6, v1478, v1479))
              {
                continue;
              }

              v1480 = OUTLINED_FUNCTION_17_17();
              npush_s(v1480);
              WORD1(v1588) = 2;
              v1481 = OUTLINED_FUNCTION_18_16();
              npop(v1481, v1482);
              v1483 = OUTLINED_FUNCTION_23_14();
LABEL_321:
              npush_s(v1483);
              OUTLINED_FUNCTION_26_13();
              goto LABEL_322;
            case 45:
              v1154 = OUTLINED_FUNCTION_1_22();
              v83 = lpta_rpta_loadp(v1154, v1155, v1156);
              v86 = &unk_2806BB228;
              goto LABEL_232;
            case 47:
            case 113:
            case 115:
              v990 = OUTLINED_FUNCTION_1_22();
              lpta_rpta_loadp(v990, v991, v992);
              v993 = OUTLINED_FUNCTION_0_23();
              if (insert_2pt_s(v993, v994, v995, v996, v997))
              {
                continue;
              }

              v998 = OUTLINED_FUNCTION_17_17();
              npush_s(v998);
              WORD1(v1588) = 2;
              v999 = OUTLINED_FUNCTION_18_16();
              npop(v999, v1000);
              v1001 = OUTLINED_FUNCTION_23_14();
              npush_s(v1001);
              OUTLINED_FUNCTION_26_13();
              v1002 = OUTLINED_FUNCTION_18_16();
              npop(v1002, v1003);
              v1004 = OUTLINED_FUNCTION_31_9();
              npush_s(v1004);
              OUTLINED_FUNCTION_21_14();
LABEL_301:
              v1448 = OUTLINED_FUNCTION_18_16();
              npop(v1448, v1449);
              v1450 = OUTLINED_FUNCTION_20_14();
              npush_s(v1450);
              WORD1(v1588) = &unk_2806BB32F;
              goto LABEL_328;
            case 48:
              v145 = OUTLINED_FUNCTION_1_22();
              v148 = lpta_rpta_loadp(v145, v146, v147);
              v151 = &unk_2806BB33E;
              goto LABEL_175;
            case 49:
              v275 = OUTLINED_FUNCTION_1_22();
              lpta_rpta_loadp(v275, v276, v277);
              v278 = OUTLINED_FUNCTION_0_23();
              if (insert_2pt_s(v278, v279, v280, v281, v282))
              {
                continue;
              }

              v283 = OUTLINED_FUNCTION_17_17();
              npush_s(v283);
              WORD1(v1588) = 2;
              v284 = OUTLINED_FUNCTION_18_16();
              npop(v284, v285);
              v286 = OUTLINED_FUNCTION_23_14();
              npush_s(v286);
              OUTLINED_FUNCTION_26_13();
              v287 = OUTLINED_FUNCTION_18_16();
              npop(v287, v288);
              v289 = OUTLINED_FUNCTION_31_9();
              goto LABEL_249;
            case 50:
              v1375 = OUTLINED_FUNCTION_1_22();
              v1378 = lpta_rpta_loadp(v1375, v1376, v1377);
              if (OUTLINED_FUNCTION_4_20(v1378, v1379, v1380, &unk_2806BB343, 0))
              {
                continue;
              }

              v3 = 2;
              v1381 = OUTLINED_FUNCTION_20_14();
              v1382 = npush_s(v1381);
              OUTLINED_FUNCTION_10_20(v1382, v1383, v1384, v1385, v1386, v1387, v1388, v1389, v1562, v1563, v1564, v1565, v1566, v1567, v1568, v1569, v1570, v1571, v1572, v1573, v1574, v1575, v1576, v1577, v1578, v1579, v1580, v1581, v1582, v1583, v1584, v1585, v1586, v1587, v1588, SWORD1(v1588));
              v1390 = OUTLINED_FUNCTION_23_14();
              npush_s(v1390);
              OUTLINED_FUNCTION_22_14();
              v1391 = OUTLINED_FUNCTION_16_18();
              npop(v1391, v1392);
              v1393 = OUTLINED_FUNCTION_31_9();
              npush_s(v1393);
              v1394 = OUTLINED_FUNCTION_6_20();
              npop(v1394, v4);
              v1395 = OUTLINED_FUNCTION_20_14();
              npush_s(v1395);
              WORD1(v1588) = 5;
              v1396 = OUTLINED_FUNCTION_16_18();
              npop(v1396, v1397);
              WORD1(v1588) = &unk_2806BB32F;
              goto LABEL_308;
            case 51:
              v1398 = OUTLINED_FUNCTION_1_22();
              lpta_rpta_loadp(v1398, v1399, v1400);
              v1401 = OUTLINED_FUNCTION_19_15();
              if (insert_2pt_s(v1401, v1402, 5, v1403, v1404))
              {
                continue;
              }

              v1405 = OUTLINED_FUNCTION_23_14();
              v1406 = npush_s(v1405);
              OUTLINED_FUNCTION_5_20(v1406, v1407, v1408, v1409, v1410, v1411, v1412, v1413, v1562, v1563, v1564, v1565, v1566, v1567, v1568, v1569, v1570, v1571, v1572, v1573, v1574, v1575, v1576, v1577, v1578, v1579, v1580, v1581, v1582, v1583, v1584, v1585, v1586, v1587, v1588, SWORD1(v1588));
              WORD1(v1588) = 5;
              goto LABEL_329;
            case 52:
            case 55:
              v1052 = OUTLINED_FUNCTION_1_22();
              lpta_rpta_loadp(v1052, v1053, v1054);
              v1055 = OUTLINED_FUNCTION_0_23();
              goto LABEL_207;
            case 53:
            case 56:
              v1315 = OUTLINED_FUNCTION_1_22();
              lpta_rpta_loadp(v1315, v1316, v1317);
              v1318 = OUTLINED_FUNCTION_2_22();
              v1322 = 5;
              goto LABEL_295;
            case 54:
            case 61:
              HIWORD(v1590) = *(a1 + 2290);
              OUTLINED_FUNCTION_28_10();
              v16 = OUTLINED_FUNCTION_29_10();
              copyvar(v16, v17, v18);
              v19 = OUTLINED_FUNCTION_36_6();
              npush_s(v19);
              v20 = 4;
              goto LABEL_197;
            case 57:
            case 63:
              HIWORD(v1590) = *(a1 + 2290);
LABEL_255:
              OUTLINED_FUNCTION_28_10();
LABEL_256:
              v1253 = &v1588;
              v1254 = (a1 + 3064);
              v1255 = a1;
              goto LABEL_330;
            case 58:
            case 60:
              v1060 = OUTLINED_FUNCTION_1_22();
              lpta_rpta_loadp(v1060, v1061, v1062);
              v1055 = OUTLINED_FUNCTION_2_22();
              v1057 = 5;
LABEL_207:
              if (insert_2pt_s(v1055, v1056, v1057, v1058, v1059))
              {
                continue;
              }

              v1063 = OUTLINED_FUNCTION_23_14();
              v1064 = npush_s(v1063);
              OUTLINED_FUNCTION_8_20(v1064, v1065, v1066, v1067, v1068, v1069, v1070, v1071, v1562, v1563, v1564, v1565, v1566, v1567, v1568, v1569, v1570, v1571, v1572, v1573, v1574, v1575, v1576, v1577, v1578, v1579, v1580, v1581, v1582, v1583, v1584, v1585, v1586, v1587, v1588, SWORD1(v1588));
              v1072 = OUTLINED_FUNCTION_14_18();
              npush_s(v1072);
              v1073 = OUTLINED_FUNCTION_12_20();
              npop(v1073, v3);
              v61 = OUTLINED_FUNCTION_27_11();
              goto LABEL_209;
            case 59:
            case 62:
              v1414 = OUTLINED_FUNCTION_1_22();
              lpta_rpta_loadp(v1414, v1415, v1416);
              v1318 = OUTLINED_FUNCTION_2_22();
              v1322 = 6;
LABEL_295:
              if (insert_2pt_s(v1318, v1319, v1322, v1320, v1321))
              {
                continue;
              }

              v1417 = OUTLINED_FUNCTION_23_14();
              v1418 = npush_s(v1417);
              OUTLINED_FUNCTION_5_20(v1418, v1419, v1420, v1421, v1422, v1423, v1424, v1425, v1562, v1563, v1564, v1565, v1566, v1567, v1568, v1569, v1570, v1571, v1572, v1573, v1574, v1575, v1576, v1577, v1578, v1579, v1580, v1581, v1582, v1583, v1584, v1585, v1586, v1587, v1588, SWORD1(v1588));
              v1426 = OUTLINED_FUNCTION_14_18();
              npush_s(v1426);
              OUTLINED_FUNCTION_32_8();
              v1427 = OUTLINED_FUNCTION_18_16();
              npop(v1427, v1428);
              v1429 = OUTLINED_FUNCTION_27_11();
              npush_s(v1429);
              v1430 = OUTLINED_FUNCTION_6_20();
              npop(v1430, 5);
              v371 = OUTLINED_FUNCTION_20_14();
              goto LABEL_297;
            case 64:
            case 130:
              v1221 = OUTLINED_FUNCTION_1_22();
              lpta_rpta_loadp(v1221, v1222, v1223);
              v1224 = OUTLINED_FUNCTION_0_23();
              if (insert_2pt_s(v1224, v1225, v1226, v1227, v1228))
              {
                continue;
              }

              v1229 = OUTLINED_FUNCTION_17_17();
              npush_s(v1229);
              WORD1(v1588) = 2;
              v1230 = OUTLINED_FUNCTION_18_16();
              npop(v1230, v1231);
              v1112 = OUTLINED_FUNCTION_23_14();
              goto LABEL_248;
            case 65:
              v1348 = OUTLINED_FUNCTION_1_22();
              v673 = lpta_rpta_loadp(v1348, v1349, v1350);
              v676 = &unk_2806BB361;
              goto LABEL_281;
            case 66:
              v1323 = OUTLINED_FUNCTION_1_22();
              v38 = lpta_rpta_loadp(v1323, v1324, v1325);
              v41 = &unk_2806BB1F0;
              goto LABEL_274;
            case 67:
              v80 = OUTLINED_FUNCTION_1_22();
              v83 = lpta_rpta_loadp(v80, v81, v82);
              v86 = &unk_2806BB22B;
              goto LABEL_232;
            case 68:
              v90 = OUTLINED_FUNCTION_1_22();
              lpta_rpta_loadp(v90, v91, v92);
              LOWORD(v14) = 4;
              v93 = OUTLINED_FUNCTION_14_18();
              if (insert_2pt_s(v93, v94, 1, v95, v96))
              {
                continue;
              }

              v3 = 3;
              v97 = OUTLINED_FUNCTION_20_14();
              npush_s(v97);
              WORD1(v1588) = 1;
              v4 = &v1588;
              v98 = OUTLINED_FUNCTION_16_18();
              npop(v98, v99);
              npush_s(a1);
              v100 = OUTLINED_FUNCTION_12_20();
              npop(v100, &v1588);
              npush_s(a1);
              WORD1(v1588) = 3;
              v101 = OUTLINED_FUNCTION_16_18();
              npop(v101, v102);
              v103 = OUTLINED_FUNCTION_17_17();
              goto LABEL_97;
            case 69:
              v563 = OUTLINED_FUNCTION_1_22();
              lpta_rpta_loadp(v563, v564, v565);
              v566 = OUTLINED_FUNCTION_19_15();
              if (insert_2pt_s(v566, v567, 1, v568, v569))
              {
                continue;
              }

              npush_s(a1);
              WORD1(v1588) = 1;
              v570 = OUTLINED_FUNCTION_29_10();
              npop(v570, v571);
              v302 = a1;
              goto LABEL_196;
            case 70:
              v854 = OUTLINED_FUNCTION_1_22();
              v857 = lpta_rpta_loadp(v854, v855, v856);
              v860 = &unk_2806BB22E;
              goto LABEL_286;
            case 71:
            case 73:
              v334 = OUTLINED_FUNCTION_1_22();
              lpta_rpta_loadp(v334, v335, v336);
              v337 = OUTLINED_FUNCTION_0_23();
              if (insert_2pt_s(v337, v338, v339, v340, v341))
              {
                continue;
              }

              v342 = OUTLINED_FUNCTION_17_17();
              v343 = npush_s(v342);
              OUTLINED_FUNCTION_13_20(v343, v344, v345, v346, v347, v348, v349, v350, v1562, v1563, v1564, v1565, v1566, v1567, v1568, v1569, v1570, v1571, v1572, v1573, v1574, v1575, v1576, v1577, v1578, v1579, v1580, v1581, v1582, v1583, v1584, v1585, v1586, v1587, v1588, SWORD1(v1588));
              v351 = OUTLINED_FUNCTION_24_14();
              npush_s(v351);
              OUTLINED_FUNCTION_22_14();
              v352 = OUTLINED_FUNCTION_15_18();
              npop(v352, v353);
              v354 = OUTLINED_FUNCTION_31_9();
              goto LABEL_138;
            case 72:
              v1361 = OUTLINED_FUNCTION_1_22();
              v857 = lpta_rpta_loadp(v1361, v1362, v1363);
              v860 = &unk_2806BB231;
LABEL_286:
              if (OUTLINED_FUNCTION_9_20(v857, v858, v859, v860, 0))
              {
                continue;
              }

              v1364 = OUTLINED_FUNCTION_20_14();
              npush_s(v1364);
              WORD1(v1588) = 2;
              v3 = &v1588;
              v1365 = OUTLINED_FUNCTION_15_18();
              npop(v1365, v1366);
              v1367 = OUTLINED_FUNCTION_24_14();
              npush_s(v1367);
              v4 = 1;
              WORD1(v1588) = 1;
              v1368 = OUTLINED_FUNCTION_15_18();
              npop(v1368, v1369);
              v1370 = OUTLINED_FUNCTION_31_9();
              npush_s(v1370);
              WORD1(v1588) = 5;
              v1371 = OUTLINED_FUNCTION_15_18();
              npop(v1371, v1372);
              v745 = OUTLINED_FUNCTION_30_9();
              goto LABEL_288;
            case 74:
              v137 = OUTLINED_FUNCTION_1_22();
              lpta_rpta_loadp(v137, v138, v139);
              LOWORD(v14) = 1;
              v140 = OUTLINED_FUNCTION_19_15();
              if (insert_2pt_s(v140, v141, 1, v142, v143))
              {
                continue;
              }

              v144 = OUTLINED_FUNCTION_23_14();
              goto LABEL_75;
            case 75:
              v1340 = OUTLINED_FUNCTION_1_22();
              lpta_rpta_loadp(v1340, v1341, v1342);
              v1343 = OUTLINED_FUNCTION_3_21();
              v1347 = 6;
LABEL_312:
              if (insert_2pt_s(v1343, v1344, v1347, v1345, v1346))
              {
                continue;
              }

              v159 = OUTLINED_FUNCTION_35_6();
              goto LABEL_314;
            case 76:
              v114 = OUTLINED_FUNCTION_1_22();
              v117 = lpta_rpta_loadp(v114, v115, v116);
              v120 = &unk_2806BB234;
              goto LABEL_228;
            case 77:
            case 80:
              v413 = OUTLINED_FUNCTION_1_22();
              lpta_rpta_loadp(v413, v414, v415);
              v416 = OUTLINED_FUNCTION_0_23();
              if (insert_2pt_s(v416, v417, v418, v419, v420))
              {
                continue;
              }

              v421 = OUTLINED_FUNCTION_24_14();
              goto LABEL_212;
            case 78:
              v1135 = OUTLINED_FUNCTION_1_22();
              v117 = lpta_rpta_loadp(v1135, v1136, v1137);
              v120 = &unk_2806BB237;
LABEL_228:
              if (OUTLINED_FUNCTION_9_20(v117, v118, v119, v120, 0))
              {
                continue;
              }

              v1138 = OUTLINED_FUNCTION_24_14();
              v1139 = npush_s(v1138);
              OUTLINED_FUNCTION_7_20(v1139, v1140, v1141, v1142, v1143, v1144, v1145, v1146, v1562, v1563, v1564, v1565, v1566, v1567, v1568, v1569, v1570, v1571, v1572, v1573, v1574, v1575, v1576, v1577, v1578, v1579, v1580, v1581, v1582, v1583, v1584, v1585, v1586, v1587, v1588, SWORD1(v1588));
              v1147 = OUTLINED_FUNCTION_14_18();
              npush_s(v1147);
              v1148 = OUTLINED_FUNCTION_12_20();
              npop(v1148, v4);
              v481 = OUTLINED_FUNCTION_27_11();
              goto LABEL_230;
            case 79:
              v326 = OUTLINED_FUNCTION_1_22();
              lpta_rpta_loadp(v326, v327, v328);
              v329 = OUTLINED_FUNCTION_2_22();
              v333 = 3;
              goto LABEL_199;
            case 81:
            case 83:
              v726 = OUTLINED_FUNCTION_1_22();
              lpta_rpta_loadp(v726, v727, v728);
              v729 = OUTLINED_FUNCTION_0_23();
              if (insert_2pt_s(v729, v730, v731, v732, v733))
              {
                continue;
              }

              v490 = OUTLINED_FUNCTION_24_14();
              goto LABEL_137;
            case 82:
              v1188 = OUTLINED_FUNCTION_1_22();
              v1191 = lpta_rpta_loadp(v1188, v1189, v1190);
              if (OUTLINED_FUNCTION_4_20(v1191, v1192, v1193, &unk_2806BB366, 0))
              {
                continue;
              }

              v1194 = OUTLINED_FUNCTION_27_11();
              npush_s(v1194);
              OUTLINED_FUNCTION_21_14();
              v3 = &v1588;
              v1195 = OUTLINED_FUNCTION_15_18();
              npop(v1195, v1196);
              v1197 = OUTLINED_FUNCTION_25_13();
              goto LABEL_260;
            case 84:
              v1038 = OUTLINED_FUNCTION_1_22();
              lpta_rpta_loadp(v1038, v1039, v1040);
              v329 = OUTLINED_FUNCTION_0_23();
LABEL_199:
              if (insert_2pt_s(v329, v330, v333, v331, v332))
              {
                continue;
              }

              v1041 = OUTLINED_FUNCTION_36_6();
LABEL_263:
              npush_s(v1041);
              WORD1(v1588) = v14;
              goto LABEL_267;
            case 85:
              v1256 = OUTLINED_FUNCTION_1_22();
              v1259 = lpta_rpta_loadp(v1256, v1257, v1258);
              if (OUTLINED_FUNCTION_4_20(v1259, v1260, v1261, &unk_2806BB36B, 0))
              {
                continue;
              }

              v1100 = OUTLINED_FUNCTION_24_14();
              goto LABEL_259;
            case 86:
              v797 = OUTLINED_FUNCTION_1_22();
              v664 = lpta_rpta_loadp(v797, v798, v799);
              v667 = &unk_2806BB1F2;
              goto LABEL_150;
            case 87:
              v491 = OUTLINED_FUNCTION_1_22();
              v494 = lpta_rpta_loadp(v491, v492, v493);
              if (OUTLINED_FUNCTION_9_20(v494, v495, v496, &unk_2806BB23A, 0))
              {
                continue;
              }

              v497 = OUTLINED_FUNCTION_17_17();
              v498 = npush_s(v497);
              OUTLINED_FUNCTION_7_20(v498, v499, v500, v501, v502, v503, v504, v505, v1562, v1563, v1564, v1565, v1566, v1567, v1568, v1569, v1570, v1571, v1572, v1573, v1574, v1575, v1576, v1577, v1578, v1579, v1580, v1581, v1582, v1583, v1584, v1585, v1586, v1587, v1588, SWORD1(v1588));
              npush_s(a1);
              v506 = OUTLINED_FUNCTION_12_20();
              npop(v506, v4);
              npush_s(a1);
              WORD1(v1588) = 5;
              v507 = OUTLINED_FUNCTION_16_18();
              npop(v507, v508);
              v103 = OUTLINED_FUNCTION_20_14();
LABEL_97:
              npush_s(v103);
              WORD1(v1588) = v14;
              v509 = OUTLINED_FUNCTION_16_18();
              npop(v509, v510);
              WORD1(v1588) = 5;
              goto LABEL_308;
            case 88:
              v223 = OUTLINED_FUNCTION_1_22();
              v226 = lpta_rpta_loadp(v223, v224, v225);
              if (OUTLINED_FUNCTION_9_20(v226, v227, v228, &unk_2806BB23D, 0))
              {
                continue;
              }

              v229 = OUTLINED_FUNCTION_20_14();
              npush_s(v229);
              WORD1(v1588) = 2;
              v3 = &v1588;
              v230 = OUTLINED_FUNCTION_15_18();
              npop(v230, v231);
              v232 = OUTLINED_FUNCTION_24_14();
              npush_s(v232);
              v4 = 1;
              WORD1(v1588) = 1;
              v233 = OUTLINED_FUNCTION_15_18();
              npop(v233, v234);
              v235 = OUTLINED_FUNCTION_27_11();
              npush_s(v235);
              WORD1(v1588) = 5;
              v236 = OUTLINED_FUNCTION_15_18();
              npop(v236, v237);
              v238 = OUTLINED_FUNCTION_30_9();
              npush_s(v238);
              WORD1(v1588) = &unk_2806BB32F;
              v239 = OUTLINED_FUNCTION_15_18();
              npop(v239, v240);
              OUTLINED_FUNCTION_28_10();
              goto LABEL_289;
            case 89:
              v1101 = OUTLINED_FUNCTION_1_22();
              lpta_rpta_loadp(v1101, v1102, v1103);
              v1104 = OUTLINED_FUNCTION_0_23();
              if (insert_2pt_s(v1104, v1105, v1106, v1107, v1108))
              {
                continue;
              }

              v1109 = OUTLINED_FUNCTION_17_17();
              npush_s(v1109);
              WORD1(v1588) = 2;
              v1110 = OUTLINED_FUNCTION_18_16();
              npop(v1110, v1111);
              v1112 = OUTLINED_FUNCTION_24_14();
LABEL_248:
              npush_s(v1112);
              OUTLINED_FUNCTION_26_13();
              v1232 = OUTLINED_FUNCTION_18_16();
              npop(v1232, v1233);
              v289 = OUTLINED_FUNCTION_27_11();
LABEL_249:
              npush_s(v289);
              OUTLINED_FUNCTION_21_14();
LABEL_322:
              v1498 = OUTLINED_FUNCTION_18_16();
              npop(v1498, v1499);
              v412 = OUTLINED_FUNCTION_20_14();
              goto LABEL_323;
            case 90:
              v1271 = OUTLINED_FUNCTION_1_22();
              lpta_rpta_loadp(v1271, v1272, v1273);
              v1274 = OUTLINED_FUNCTION_3_21();
              if (insert_2pt_s(v1274, v1275, 2, v1276, v1277))
              {
                continue;
              }

              LOWORD(v14) = 1;
              v1041 = OUTLINED_FUNCTION_14_18();
              goto LABEL_263;
            case 91:
            case 92:
              v651 = OUTLINED_FUNCTION_1_22();
              lpta_rpta_loadp(v651, v652, v653);
              v654 = OUTLINED_FUNCTION_3_21();
              if (insert_2pt_s(v654, v655, 2, v656, v657))
              {
                continue;
              }

LABEL_266:
              v1292 = OUTLINED_FUNCTION_14_18();
              npush_s(v1292);
              WORD1(v1588) = 1;
              goto LABEL_267;
            case 93:
              v1126 = OUTLINED_FUNCTION_1_22();
              v208 = lpta_rpta_loadp(v1126, v1127, v1128);
              v211 = &unk_2806BB1F6;
              goto LABEL_251;
            case 94:
              v212 = OUTLINED_FUNCTION_1_22();
              v186 = lpta_rpta_loadp(v212, v213, v214);
              v189 = &unk_2806BB240;
              goto LABEL_236;
            case 95:
              v205 = OUTLINED_FUNCTION_1_22();
              v208 = lpta_rpta_loadp(v205, v206, v207);
              v211 = &unk_2806BB1FA;
              goto LABEL_251;
            case 96:
              v1169 = OUTLINED_FUNCTION_1_22();
              v186 = lpta_rpta_loadp(v1169, v1170, v1171);
              v189 = &unk_2806BB243;
              goto LABEL_236;
            case 97:
              v386 = OUTLINED_FUNCTION_1_22();
              v208 = lpta_rpta_loadp(v386, v387, v388);
              v211 = &unk_2806BB1FC;
              goto LABEL_251;
            case 98:
              v183 = OUTLINED_FUNCTION_1_22();
              v186 = lpta_rpta_loadp(v183, v184, v185);
              v189 = &unk_2806BB246;
              goto LABEL_236;
            case 99:
              v215 = OUTLINED_FUNCTION_1_22();
              lpta_rpta_loadp(v215, v216, v217);
              v218 = OUTLINED_FUNCTION_3_21();
              if (insert_2pt_s(v218, v219, 4, v220, v221))
              {
                continue;
              }

              npush_s(a1);
              v222 = 3;
              goto LABEL_163;
            case 100:
              v1042 = OUTLINED_FUNCTION_1_22();
              lpta_rpta_loadp(v1042, v1043, v1044);
              v721 = OUTLINED_FUNCTION_3_21();
              v725 = 3;
              goto LABEL_202;
            case 101:
              v1234 = OUTLINED_FUNCTION_1_22();
              v208 = lpta_rpta_loadp(v1234, v1235, v1236);
              v211 = &unk_2806BB1FE;
              goto LABEL_251;
            case 102:
              v254 = OUTLINED_FUNCTION_1_22();
              v257 = lpta_rpta_loadp(v254, v255, v256);
              if (OUTLINED_FUNCTION_11_20(v257, v258, v259, &unk_2806BB200, 0))
              {
                continue;
              }

              v260 = OUTLINED_FUNCTION_24_14();
              v261 = npush_s(v260);
              OUTLINED_FUNCTION_7_20(v261, v262, v263, v264, v265, v266, v267, v268, v1562, v1563, v1564, v1565, v1566, v1567, v1568, v1569, v1570, v1571, v1572, v1573, v1574, v1575, v1576, v1577, v1578, v1579, v1580, v1581, v1582, v1583, v1584, v1585, v1586, v1587, v1588, SWORD1(v1588));
              v269 = OUTLINED_FUNCTION_17_17();
              npush_s(v269);
              WORD1(v1588) = 5;
              v270 = OUTLINED_FUNCTION_16_18();
              npop(v270, v271);
              v272 = OUTLINED_FUNCTION_35_6();
              npush_s(v272);
              v273 = OUTLINED_FUNCTION_6_20();
              npop(v273, v4);
              v274 = OUTLINED_FUNCTION_20_14();
              npush_s(v274);
              WORD1(v1588) = &unk_2806BB32F;
              goto LABEL_118;
            case 103:
              v170 = OUTLINED_FUNCTION_1_22();
              lpta_rpta_loadp(v170, v171, v172);
              v173 = OUTLINED_FUNCTION_19_15();
              if (insert_2pt_s(v173, v174, 5, v175, v176))
              {
                continue;
              }

              npush_s(a1);
              OUTLINED_FUNCTION_21_14();
              v177 = OUTLINED_FUNCTION_18_16();
              npop(v177, v178);
              WORD1(v1588) = 5;
              goto LABEL_329;
            case 104:
              v763 = OUTLINED_FUNCTION_1_22();
              lpta_rpta_loadp(v763, v764, v765);
              v766 = OUTLINED_FUNCTION_3_21();
              if (insert_2pt_s(v766, v767, 4, v768, v769))
              {
                continue;
              }

              v770 = a1;
              goto LABEL_172;
            case 105:
              v152 = OUTLINED_FUNCTION_1_22();
              lpta_rpta_loadp(v152, v153, v154);
              v155 = OUTLINED_FUNCTION_3_21();
              if (insert_2pt_s(v155, v156, 3, v157, v158))
              {
                continue;
              }

              v159 = a1;
              goto LABEL_314;
            case 106:
              v829 = OUTLINED_FUNCTION_1_22();
              v38 = lpta_rpta_loadp(v829, v830, v831);
              v41 = &unk_2806BB202;
              goto LABEL_274;
            case 112:
              v290 = OUTLINED_FUNCTION_1_22();
              v83 = lpta_rpta_loadp(v290, v291, v292);
              v86 = &unk_2806BB24F;
LABEL_232:
              if (OUTLINED_FUNCTION_9_20(v83, v84, v85, v86, 0))
              {
                continue;
              }

              v1157 = OUTLINED_FUNCTION_23_14();
              v1158 = npush_s(v1157);
              OUTLINED_FUNCTION_7_20(v1158, v1159, v1160, v1161, v1162, v1163, v1164, v1165, v1562, v1563, v1564, v1565, v1566, v1567, v1568, v1569, v1570, v1571, v1572, v1573, v1574, v1575, v1576, v1577, v1578, v1579, v1580, v1581, v1582, v1583, v1584, v1585, v1586, v1587, v1588, SWORD1(v1588));
              v1166 = OUTLINED_FUNCTION_20_14();
              npush_s(v1166);
              OUTLINED_FUNCTION_32_8();
              v1167 = OUTLINED_FUNCTION_16_18();
              npop(v1167, v1168);
              v562 = OUTLINED_FUNCTION_20_14();
              goto LABEL_234;
            case 114:
              v167 = OUTLINED_FUNCTION_1_22();
              v148 = lpta_rpta_loadp(v167, v168, v169);
              v151 = &unk_2806BB375;
              goto LABEL_175;
            case 116:
              v941 = OUTLINED_FUNCTION_1_22();
              v148 = lpta_rpta_loadp(v941, v942, v943);
              v151 = &unk_2806BB37A;
LABEL_175:
              if (OUTLINED_FUNCTION_4_20(v148, v149, v150, v151, 0))
              {
                continue;
              }

              v3 = 2;
              v944 = OUTLINED_FUNCTION_20_14();
              v945 = npush_s(v944);
              OUTLINED_FUNCTION_10_20(v945, v946, v947, v948, v949, v950, v951, v952, v1562, v1563, v1564, v1565, v1566, v1567, v1568, v1569, v1570, v1571, v1572, v1573, v1574, v1575, v1576, v1577, v1578, v1579, v1580, v1581, v1582, v1583, v1584, v1585, v1586, v1587, v1588, SWORD1(v1588));
              v953 = OUTLINED_FUNCTION_23_14();
              npush_s(v953);
              OUTLINED_FUNCTION_22_14();
              v954 = OUTLINED_FUNCTION_16_18();
              npop(v954, v955);
              v956 = OUTLINED_FUNCTION_31_9();
              npush_s(v956);
              v957 = OUTLINED_FUNCTION_6_20();
              npop(v957, v4);
              v958 = OUTLINED_FUNCTION_20_14();
              npush_s(v958);
              WORD1(v1588) = 5;
LABEL_307:
              v1471 = OUTLINED_FUNCTION_16_18();
              npop(v1471, v1472);
              WORD1(v1588) = &unk_2806BB32F;
              goto LABEL_308;
            case 117:
              v718 = OUTLINED_FUNCTION_1_22();
              lpta_rpta_loadp(v718, v719, v720);
              v721 = OUTLINED_FUNCTION_3_21();
              v725 = 2;
LABEL_202:
              if (insert_2pt_s(v721, v722, v725, v723, v724))
              {
                continue;
              }

              v159 = a1;
              goto LABEL_314;
            case 120:
              v241 = OUTLINED_FUNCTION_1_22();
              v107 = lpta_rpta_loadp(v241, v242, v243);
              v110 = &unk_2806BB37F;
LABEL_56:
              if (OUTLINED_FUNCTION_4_20(v107, v108, v109, v110, 0))
              {
                continue;
              }

              v244 = OUTLINED_FUNCTION_24_14();
              npush_s(v244);
              OUTLINED_FUNCTION_22_14();
              v3 = &v1588;
              v245 = OUTLINED_FUNCTION_15_18();
              npop(v245, v246);
              v247 = OUTLINED_FUNCTION_17_17();
              npush_s(v247);
              v4 = 2;
              WORD1(v1588) = 2;
              v248 = OUTLINED_FUNCTION_15_18();
              npop(v248, v249);
              v250 = OUTLINED_FUNCTION_30_9();
              npush_s(v250);
              WORD1(v1588) = 5;
              v251 = OUTLINED_FUNCTION_15_18();
              npop(v251, v252);
              v253 = OUTLINED_FUNCTION_17_17();
              npush_s(v253);
              OUTLINED_FUNCTION_21_14();
              goto LABEL_284;
            case 122:
            case 124:
              v482 = OUTLINED_FUNCTION_1_22();
              lpta_rpta_loadp(v482, v483, v484);
              v485 = OUTLINED_FUNCTION_0_23();
              if (insert_2pt_s(v485, v486, v487, v488, v489))
              {
                continue;
              }

              v490 = OUTLINED_FUNCTION_23_14();
LABEL_137:
              v734 = npush_s(v490);
              OUTLINED_FUNCTION_8_20(v734, v735, v736, v737, v738, v739, v740, v741, v1562, v1563, v1564, v1565, v1566, v1567, v1568, v1569, v1570, v1571, v1572, v1573, v1574, v1575, v1576, v1577, v1578, v1579, v1580, v1581, v1582, v1583, v1584, v1585, v1586, v1587, v1588, SWORD1(v1588));
              v742 = OUTLINED_FUNCTION_14_18();
              npush_s(v742);
              v743 = OUTLINED_FUNCTION_12_20();
              npop(v743, v3);
              v354 = OUTLINED_FUNCTION_27_11();
LABEL_138:
              npush_s(v354);
              v744 = OUTLINED_FUNCTION_6_20();
              npop(v744, v3);
              v745 = OUTLINED_FUNCTION_17_17();
LABEL_288:
              npush_s(v745);
              WORD1(v1588) = &unk_2806BB32F;
              v1373 = OUTLINED_FUNCTION_15_18();
              npop(v1373, v1374);
              OUTLINED_FUNCTION_28_10();
              goto LABEL_289;
            case 123:
              v1045 = OUTLINED_FUNCTION_1_22();
              v1048 = lpta_rpta_loadp(v1045, v1046, v1047);
              v1051 = &unk_2806BB384;
              goto LABEL_215;
            case 125:
              v1097 = OUTLINED_FUNCTION_1_22();
              v1048 = lpta_rpta_loadp(v1097, v1098, v1099);
              v1051 = &unk_2806BB389;
LABEL_215:
              if (OUTLINED_FUNCTION_4_20(v1048, v1049, v1050, v1051, 0))
              {
                continue;
              }

              v1100 = OUTLINED_FUNCTION_23_14();
LABEL_259:
              npush_s(v1100);
              OUTLINED_FUNCTION_22_14();
              v3 = &v1588;
              v1262 = OUTLINED_FUNCTION_15_18();
              npop(v1262, v1263);
              v1264 = OUTLINED_FUNCTION_17_17();
              npush_s(v1264);
              v4 = 2;
              WORD1(v1588) = 2;
              v1265 = OUTLINED_FUNCTION_15_18();
              npop(v1265, v1266);
              v1267 = OUTLINED_FUNCTION_27_11();
              npush_s(v1267);
              v1268 = OUTLINED_FUNCTION_6_20();
              npop(v1268, &v1588);
              v1197 = OUTLINED_FUNCTION_30_9();
LABEL_260:
              npush_s(v1197);
              WORD1(v1588) = 5;
              v1269 = OUTLINED_FUNCTION_15_18();
              npop(v1269, v1270);
              WORD1(v1588) = &unk_2806BB32F;
              goto LABEL_289;
            case 126:
              v511 = OUTLINED_FUNCTION_1_22();
              v425 = lpta_rpta_loadp(v511, v512, v513);
              v428 = &unk_2806BB38E;
              goto LABEL_99;
            case 127:
            case 129:
              v1075 = OUTLINED_FUNCTION_1_22();
              lpta_rpta_loadp(v1075, v1076, v1077);
              v1078 = OUTLINED_FUNCTION_2_22();
              if (insert_2pt_s(v1078, v1079, 6, v1080, v1081))
              {
                continue;
              }

              v421 = OUTLINED_FUNCTION_23_14();
LABEL_212:
              v1082 = npush_s(v421);
              OUTLINED_FUNCTION_5_20(v1082, v1083, v1084, v1085, v1086, v1087, v1088, v1089, v1562, v1563, v1564, v1565, v1566, v1567, v1568, v1569, v1570, v1571, v1572, v1573, v1574, v1575, v1576, v1577, v1578, v1579, v1580, v1581, v1582, v1583, v1584, v1585, v1586, v1587, v1588, SWORD1(v1588));
              v1090 = OUTLINED_FUNCTION_14_18();
              npush_s(v1090);
              OUTLINED_FUNCTION_32_8();
              v1091 = OUTLINED_FUNCTION_18_16();
              npop(v1091, v1092);
              v806 = OUTLINED_FUNCTION_27_11();
              goto LABEL_213;
            case 128:
              v422 = OUTLINED_FUNCTION_1_22();
              v425 = lpta_rpta_loadp(v422, v423, v424);
              v428 = &unk_2806BB393;
LABEL_99:
              if (OUTLINED_FUNCTION_4_20(v425, v426, v427, v428, 0))
              {
                continue;
              }

              v514 = OUTLINED_FUNCTION_23_14();
              v515 = npush_s(v514);
              OUTLINED_FUNCTION_7_20(v515, v516, v517, v518, v519, v520, v521, v522, v1562, v1563, v1564, v1565, v1566, v1567, v1568, v1569, v1570, v1571, v1572, v1573, v1574, v1575, v1576, v1577, v1578, v1579, v1580, v1581, v1582, v1583, v1584, v1585, v1586, v1587, v1588, SWORD1(v1588));
              v523 = OUTLINED_FUNCTION_17_17();
              npush_s(v523);
              v524 = OUTLINED_FUNCTION_12_20();
              npop(v524, v4);
              v525 = OUTLINED_FUNCTION_27_11();
              goto LABEL_131;
            case 131:
              v670 = OUTLINED_FUNCTION_1_22();
              v673 = lpta_rpta_loadp(v670, v671, v672);
              v676 = &unk_2806BB398;
LABEL_281:
              if (OUTLINED_FUNCTION_4_20(v673, v674, v675, v676, 0))
              {
                continue;
              }

              v1351 = OUTLINED_FUNCTION_20_14();
              npush_s(v1351);
              WORD1(v1588) = 2;
              v3 = &v1588;
              v1352 = OUTLINED_FUNCTION_15_18();
              npop(v1352, v1353);
              v1354 = OUTLINED_FUNCTION_23_14();
              npush_s(v1354);
              v4 = 1;
              WORD1(v1588) = 1;
              v1355 = OUTLINED_FUNCTION_15_18();
              npop(v1355, v1356);
              v1357 = OUTLINED_FUNCTION_27_11();
              npush_s(v1357);
              v1358 = OUTLINED_FUNCTION_6_20();
              npop(v1358, &v1588);
              v762 = OUTLINED_FUNCTION_30_9();
              goto LABEL_283;
            case 132:
              v593 = OUTLINED_FUNCTION_1_22();
              v38 = lpta_rpta_loadp(v593, v594, v595);
              v41 = &unk_2806BB206;
LABEL_274:
              if (OUTLINED_FUNCTION_11_20(v38, v39, v40, v41, 0))
              {
                continue;
              }

              v1326 = OUTLINED_FUNCTION_23_14();
              v1327 = npush_s(v1326);
              OUTLINED_FUNCTION_7_20(v1327, v1328, v1329, v1330, v1331, v1332, v1333, v1334, v1562, v1563, v1564, v1565, v1566, v1567, v1568, v1569, v1570, v1571, v1572, v1573, v1574, v1575, v1576, v1577, v1578, v1579, v1580, v1581, v1582, v1583, v1584, v1585, v1586, v1587, v1588, SWORD1(v1588));
              v1335 = OUTLINED_FUNCTION_20_14();
              npush_s(v1335);
              WORD1(v1588) = 5;
              v1336 = OUTLINED_FUNCTION_16_18();
              npop(v1336, v1337);
              v1249 = OUTLINED_FUNCTION_17_17();
              goto LABEL_276;
            case 133:
              v198 = OUTLINED_FUNCTION_1_22();
              v201 = lpta_rpta_loadp(v198, v199, v200);
              v204 = &unk_2806BB252;
              goto LABEL_91;
            case 134:
              v14 = &unk_2806BB255;
              goto LABEL_112;
            case 135:
              v861 = OUTLINED_FUNCTION_1_22();
              lpta_rpta_loadp(v861, v862, v863);
              v864 = OUTLINED_FUNCTION_3_21();
              if (insert_2pt_s(v864, v865, 4, v866, v867))
              {
                continue;
              }

              npush_s(a1);
              v222 = 1;
LABEL_163:
              WORD1(v1588) = v222;
              goto LABEL_267;
            case 136:
              v778 = OUTLINED_FUNCTION_1_22();
              lpta_rpta_loadp(v778, v779, v780);
              v781 = OUTLINED_FUNCTION_2_22();
              if (insert_2pt_s(v781, v782, 1, v783, v784))
              {
                continue;
              }

              v785 = OUTLINED_FUNCTION_14_18();
              v786 = npush_s(v785);
              OUTLINED_FUNCTION_13_20(v786, v787, v788, v789, v790, v791, v792, v793, v1562, v1563, v1564, v1565, v1566, v1567, v1568, v1569, v1570, v1571, v1572, v1573, v1574, v1575, v1576, v1577, v1578, v1579, v1580, v1581, v1582, v1583, v1584, v1585, v1586, v1587, v1588, SWORD1(v1588));
              v794 = OUTLINED_FUNCTION_17_17();
              npush_s(v794);
              v795 = OUTLINED_FUNCTION_6_20();
              npop(v795, v3);
              v796 = OUTLINED_FUNCTION_36_6();
              goto LABEL_238;
            case 137:
              v677 = OUTLINED_FUNCTION_1_22();
              lpta_rpta_loadp(v677, v678, v679);
              LOWORD(v14) = 3;
              v680 = OUTLINED_FUNCTION_19_15();
              if (insert_2pt_s(v680, v681, 3, v682, v683))
              {
                continue;
              }

              v684 = OUTLINED_FUNCTION_35_6();
              v685 = npush_s(v684);
              OUTLINED_FUNCTION_5_20(v685, v686, v687, v688, v689, v690, v691, v692, v1562, v1563, v1564, v1565, v1566, v1567, v1568, v1569, v1570, v1571, v1572, v1573, v1574, v1575, v1576, v1577, v1578, v1579, v1580, v1581, v1582, v1583, v1584, v1585, v1586, v1587, v1588, SWORD1(v1588));
              v371 = OUTLINED_FUNCTION_34_7();
              goto LABEL_297;
            case 138:
              v969 = OUTLINED_FUNCTION_1_22();
              v163 = lpta_rpta_loadp(v969, v970, v971);
              v166 = &unk_2806BB208;
LABEL_180:
              if (OUTLINED_FUNCTION_11_20(v163, v164, v165, v166, 0))
              {
                continue;
              }

              v972 = OUTLINED_FUNCTION_14_18();
              npush_s(v972);
              WORD1(v1588) = 5;
              v3 = &v1588;
              goto LABEL_182;
            case 139:
              v293 = OUTLINED_FUNCTION_1_22();
              lpta_rpta_loadp(v293, v294, v295);
              v296 = OUTLINED_FUNCTION_3_21();
              if (insert_2pt_s(v296, v297, 2, v298, v299))
              {
                continue;
              }

              npush_s(a1);
              OUTLINED_FUNCTION_22_14();
              v300 = OUTLINED_FUNCTION_29_10();
              npop(v300, v301);
              v302 = a1;
              goto LABEL_196;
            case 140:
            case 141:
              v910 = OUTLINED_FUNCTION_1_22();
              lpta_rpta_loadp(v910, v911, v912);
              v913 = OUTLINED_FUNCTION_3_21();
              if (insert_2pt_s(v913, v914, 4, v915, v916))
              {
                continue;
              }

              v917 = OUTLINED_FUNCTION_14_18();
              v918 = npush_s(v917);
              OUTLINED_FUNCTION_5_20(v918, v919, v920, v921, v922, v923, v924, v925, v1562, v1563, v1564, v1565, v1566, v1567, v1568, v1569, v1570, v1571, v1572, v1573, v1574, v1575, v1576, v1577, v1578, v1579, v1580, v1581, v1582, v1583, v1584, v1585, v1586, v1587, v1588, SWORD1(v1588));
              WORD1(v1588) = 5;
              goto LABEL_329;
            case 142:
              v355 = OUTLINED_FUNCTION_1_22();
              lpta_rpta_loadp(v355, v356, v357);
              LOWORD(v14) = 3;
              v358 = OUTLINED_FUNCTION_19_15();
              if (insert_2pt_s(v358, v359, 3, v360, v361))
              {
                continue;
              }

              v362 = OUTLINED_FUNCTION_23_14();
              v363 = npush_s(v362);
              OUTLINED_FUNCTION_5_20(v363, v364, v365, v366, v367, v368, v369, v370, v1562, v1563, v1564, v1565, v1566, v1567, v1568, v1569, v1570, v1571, v1572, v1573, v1574, v1575, v1576, v1577, v1578, v1579, v1580, v1581, v1582, v1583, v1584, v1585, v1586, v1587, v1588, SWORD1(v1588));
              v371 = a1;
              goto LABEL_297;
            case 143:
              v1026 = OUTLINED_FUNCTION_1_22();
              lpta_rpta_loadp(v1026, v1027, v1028);
              v1029 = OUTLINED_FUNCTION_3_21();
              if (insert_2pt_s(v1029, v1030, 4, v1031, v1032))
              {
                continue;
              }

              v1033 = OUTLINED_FUNCTION_23_14();
              npush_s(v1033);
              OUTLINED_FUNCTION_22_14();
              v1034 = OUTLINED_FUNCTION_29_10();
              npop(v1034, v1035);
              v302 = a1;
              goto LABEL_196;
            case 144:
            case 146:
              v933 = OUTLINED_FUNCTION_1_22();
              lpta_rpta_loadp(v933, v934, v935);
              v936 = OUTLINED_FUNCTION_3_21();
              v940 = 4;
              goto LABEL_191;
            case 145:
            case 147:
              v1021 = OUTLINED_FUNCTION_1_22();
              lpta_rpta_loadp(v1021, v1022, v1023);
              v936 = OUTLINED_FUNCTION_3_21();
              v940 = 5;
LABEL_191:
              if (insert_2pt_s(v936, v937, v940, v938, v939))
              {
                continue;
              }

              v1024 = a1;
LABEL_193:
              npush_s(v1024);
              v1025 = 3;
LABEL_315:
              WORD1(v1588) = v1025;
              goto LABEL_316;
            case 148:
              v14 = &unk_2806BB25E;
              goto LABEL_112;
            case 149:
              v379 = OUTLINED_FUNCTION_1_22();
              lpta_rpta_loadp(v379, v380, v381);
              v382 = OUTLINED_FUNCTION_3_21();
              if (insert_2pt_s(v382, v383, 5, v384, v385))
              {
                continue;
              }

              v159 = a1;
LABEL_314:
              npush_s(v159);
              v1025 = 1;
              goto LABEL_315;
            case 150:
              v807 = OUTLINED_FUNCTION_1_22();
              lpta_rpta_loadp(v807, v808, v809);
              v810 = OUTLINED_FUNCTION_2_22();
              if (insert_2pt_s(v810, v811, 8, v812, v813))
              {
                continue;
              }

              v814 = OUTLINED_FUNCTION_25_13();
              v815 = npush_s(v814);
              OUTLINED_FUNCTION_5_20(v815, v816, v817, v818, v819, v820, v821, v822, v1562, v1563, v1564, v1565, v1566, v1567, v1568, v1569, v1570, v1571, v1572, v1573, v1574, v1575, v1576, v1577, v1578, v1579, v1580, v1581, v1582, v1583, v1584, v1585, v1586, v1587, v1588, SWORD1(v1588));
              v412 = OUTLINED_FUNCTION_25_13();
              goto LABEL_323;
            case 151:
              v306 = OUTLINED_FUNCTION_1_22();
              lpta_rpta_loadp(v306, v307, v308);
              v309 = OUTLINED_FUNCTION_2_22();
              if (insert_2pt_s(v309, v310, 5, v311, v312))
              {
                continue;
              }

              v313 = OUTLINED_FUNCTION_25_13();
              v314 = npush_s(v313);
              OUTLINED_FUNCTION_5_20(v314, v315, v316, v317, v318, v319, v320, v321, v1562, v1563, v1564, v1565, v1566, v1567, v1568, v1569, v1570, v1571, v1572, v1573, v1574, v1575, v1576, v1577, v1578, v1579, v1580, v1581, v1582, v1583, v1584, v1585, v1586, v1587, v1588, SWORD1(v1588));
              v322 = OUTLINED_FUNCTION_25_13();
              npush_s(v322);
              WORD1(v1588) = &unk_2806BB32F;
              v323 = OUTLINED_FUNCTION_18_16();
              npop(v323, v324);
              v325 = OUTLINED_FUNCTION_34_7();
              npush_s(v325);
              OUTLINED_FUNCTION_21_14();
              goto LABEL_298;
            case 152:
              v429 = OUTLINED_FUNCTION_1_22();
              lpta_rpta_loadp(v429, v430, v431);
              v432 = OUTLINED_FUNCTION_0_23();
              if (insert_2pt_s(v432, v433, v434, v435, v436))
              {
                continue;
              }

              v437 = OUTLINED_FUNCTION_25_13();
              v438 = npush_s(v437);
              OUTLINED_FUNCTION_8_20(v438, v439, v440, v441, v442, v443, v444, v445, v1562, v1563, v1564, v1565, v1566, v1567, v1568, v1569, v1570, v1571, v1572, v1573, v1574, v1575, v1576, v1577, v1578, v1579, v1580, v1581, v1582, v1583, v1584, v1585, v1586, v1587, v1588, SWORD1(v1588));
              v446 = OUTLINED_FUNCTION_17_17();
              npush_s(v446);
              WORD1(v1588) = &unk_2806BB32F;
              v447 = OUTLINED_FUNCTION_15_18();
              npop(v447, v448);
              v449 = OUTLINED_FUNCTION_34_7();
              npush_s(v449);
              OUTLINED_FUNCTION_21_14();
              goto LABEL_239;
            case 153:
              v746 = OUTLINED_FUNCTION_1_22();
              lpta_rpta_loadp(v746, v747, v748);
              v749 = OUTLINED_FUNCTION_3_21();
              v753 = 5;
              goto LABEL_155;
            case 154:
            case 155:
              v526 = OUTLINED_FUNCTION_1_22();
              lpta_rpta_loadp(v526, v527, v528);
              v529 = OUTLINED_FUNCTION_2_22();
              if (insert_2pt_s(v529, v530, 6, v531, v532))
              {
                continue;
              }

              v533 = OUTLINED_FUNCTION_25_13();
              v534 = npush_s(v533);
              OUTLINED_FUNCTION_5_20(v534, v535, v536, v537, v538, v539, v540, v541, v1562, v1563, v1564, v1565, v1566, v1567, v1568, v1569, v1570, v1571, v1572, v1573, v1574, v1575, v1576, v1577, v1578, v1579, v1580, v1581, v1582, v1583, v1584, v1585, v1586, v1587, v1588, SWORD1(v1588));
              v542 = OUTLINED_FUNCTION_34_7();
              npush_s(v542);
              v543 = OUTLINED_FUNCTION_6_20();
              npop(v543, 5);
              v371 = OUTLINED_FUNCTION_25_13();
LABEL_297:
              npush_s(v371);
              WORD1(v1588) = v14;
LABEL_298:
              v1036 = OUTLINED_FUNCTION_18_16();
              goto LABEL_317;
            case 156:
            case 157:
              v1005 = OUTLINED_FUNCTION_1_22();
              lpta_rpta_loadp(v1005, v1006, v1007);
              v1008 = OUTLINED_FUNCTION_2_22();
              if (insert_2pt_s(v1008, v1009, 5, v1010, v1011))
              {
                continue;
              }

              v1012 = OUTLINED_FUNCTION_25_13();
              v1013 = npush_s(v1012);
              OUTLINED_FUNCTION_8_20(v1013, v1014, v1015, v1016, v1017, v1018, v1019, v1020, v1562, v1563, v1564, v1565, v1566, v1567, v1568, v1569, v1570, v1571, v1572, v1573, v1574, v1575, v1576, v1577, v1578, v1579, v1580, v1581, v1582, v1583, v1584, v1585, v1586, v1587, v1588, SWORD1(v1588));
              v61 = OUTLINED_FUNCTION_34_7();
              goto LABEL_209;
            case 158:
            case 159:
              v823 = OUTLINED_FUNCTION_1_22();
              lpta_rpta_loadp(v823, v824, v825);
              v749 = OUTLINED_FUNCTION_3_21();
              v753 = 2;
LABEL_155:
              if (insert_2pt_s(v749, v750, v753, v751, v752))
              {
                continue;
              }

              v826 = OUTLINED_FUNCTION_35_6();
              npush_s(v826);
              OUTLINED_FUNCTION_22_14();
              v827 = OUTLINED_FUNCTION_29_10();
              npop(v827, v828);
              v302 = OUTLINED_FUNCTION_34_7();
              goto LABEL_196;
            case 160:
              v14 = &unk_2806BB261;
LABEL_112:
              v15 = 3;
              goto LABEL_225;
            case 161:
              v14 = &unk_2806BB210;
              v15 = 2;
LABEL_225:
              v1129 = OUTLINED_FUNCTION_1_22();
              lpta_rpta_loadp(v1129, v1130, v1131);
              v1132 = OUTLINED_FUNCTION_3_21();
              if (!insert_2pt_s(v1132, v1133, v15, v14, v1134))
              {
                break;
              }

              continue;
            case 163:
              v450 = OUTLINED_FUNCTION_1_22();
              v208 = lpta_rpta_loadp(v450, v451, v452);
              v211 = &unk_2806BB210;
              goto LABEL_251;
            case 164:
              v396 = OUTLINED_FUNCTION_1_22();
              lpta_rpta_loadp(v396, v397, v398);
              v399 = OUTLINED_FUNCTION_2_22();
              if (insert_2pt_s(v399, v400, 6, v401, v402))
              {
                continue;
              }

              v403 = OUTLINED_FUNCTION_25_13();
              v404 = npush_s(v403);
              OUTLINED_FUNCTION_5_20(v404, v405, v406, v407, v408, v409, v410, v411, v1562, v1563, v1564, v1565, v1566, v1567, v1568, v1569, v1570, v1571, v1572, v1573, v1574, v1575, v1576, v1577, v1578, v1579, v1580, v1581, v1582, v1583, v1584, v1585, v1586, v1587, v1588, SWORD1(v1588));
              v412 = a1;
LABEL_323:
              npush_s(v412);
              WORD1(v1588) = &unk_2806BB32F;
LABEL_328:
              v1521 = OUTLINED_FUNCTION_18_16();
              npop(v1521, v1522);
              OUTLINED_FUNCTION_28_10();
              goto LABEL_329;
            case 165:
              v453 = OUTLINED_FUNCTION_1_22();
              lpta_rpta_loadp(v453, v454, v455);
              v456 = OUTLINED_FUNCTION_3_21();
              if (insert_2pt_s(v456, v457, 2, v458, v459))
              {
                continue;
              }

              v460 = OUTLINED_FUNCTION_14_18();
              npush_s(v460);
              WORD1(v1588) = 1;
              v461 = OUTLINED_FUNCTION_29_10();
              npop(v461, v462);
              OUTLINED_FUNCTION_28_10();
              v463 = OUTLINED_FUNCTION_29_10();
              copyvar(v463, v464, v465);
              v302 = a1;
LABEL_196:
              npush_s(v302);
              v20 = 3;
LABEL_197:
              WORD1(v1588) = v20;
              v1036 = OUTLINED_FUNCTION_29_10();
              goto LABEL_317;
            case 166:
              v926 = OUTLINED_FUNCTION_1_22();
              lpta_rpta_loadp(v926, v927, v928);
              v929 = OUTLINED_FUNCTION_3_21();
              if (insert_2pt_s(v929, v930, 3, v931, v932))
              {
                continue;
              }

              v770 = OUTLINED_FUNCTION_23_14();
LABEL_172:
              npush_s(v770);
              OUTLINED_FUNCTION_22_14();
LABEL_267:
              v1293 = OUTLINED_FUNCTION_29_10();
              npop(v1293, v1294);
              OUTLINED_FUNCTION_28_10();
              v1255 = OUTLINED_FUNCTION_29_10();
              goto LABEL_330;
            case 168:
              v715 = OUTLINED_FUNCTION_1_22();
              v208 = lpta_rpta_loadp(v715, v716, v717);
              v211 = &unk_2806BB216;
LABEL_251:
              if (OUTLINED_FUNCTION_11_20(v208, v209, v210, v211, 0))
              {
                continue;
              }

              v1237 = OUTLINED_FUNCTION_24_14();
              v1238 = npush_s(v1237);
              OUTLINED_FUNCTION_7_20(v1238, v1239, v1240, v1241, v1242, v1243, v1244, v1245, v1562, v1563, v1564, v1565, v1566, v1567, v1568, v1569, v1570, v1571, v1572, v1573, v1574, v1575, v1576, v1577, v1578, v1579, v1580, v1581, v1582, v1583, v1584, v1585, v1586, v1587, v1588, SWORD1(v1588));
              v1246 = OUTLINED_FUNCTION_17_17();
              npush_s(v1246);
              WORD1(v1588) = 5;
              v1247 = OUTLINED_FUNCTION_16_18();
              npop(v1247, v1248);
              v1249 = OUTLINED_FUNCTION_35_6();
LABEL_276:
              npush_s(v1249);
              OUTLINED_FUNCTION_21_14();
              goto LABEL_277;
            case 169:
            case 171:
              v832 = OUTLINED_FUNCTION_1_22();
              lpta_rpta_loadp(v832, v833, v834);
              v835 = OUTLINED_FUNCTION_0_23();
              if (insert_2pt_s(v835, v836, v837, v838, v839))
              {
                continue;
              }

              v840 = OUTLINED_FUNCTION_25_13();
              v841 = npush_s(v840);
              OUTLINED_FUNCTION_8_20(v841, v842, v843, v844, v845, v846, v847, v848, v1562, v1563, v1564, v1565, v1566, v1567, v1568, v1569, v1570, v1571, v1572, v1573, v1574, v1575, v1576, v1577, v1578, v1579, v1580, v1581, v1582, v1583, v1584, v1585, v1586, v1587, v1588, SWORD1(v1588));
              v4 = 5;
              v849 = OUTLINED_FUNCTION_30_9();
              npush_s(v849);
              v850 = OUTLINED_FUNCTION_6_20();
              npop(v850, v3);
              v851 = OUTLINED_FUNCTION_17_17();
              npush_s(v851);
              WORD1(v1588) = &unk_2806BB32F;
              v852 = OUTLINED_FUNCTION_15_18();
              npop(v852, v853);
              WORD1(v1588) = 5;
              goto LABEL_289;
            case 170:
              v754 = OUTLINED_FUNCTION_1_22();
              v392 = lpta_rpta_loadp(v754, v755, v756);
              v395 = &unk_2806BB3C5;
              goto LABEL_141;
            case 172:
              v389 = OUTLINED_FUNCTION_1_22();
              v392 = lpta_rpta_loadp(v389, v390, v391);
              v395 = &unk_2806BB3CA;
LABEL_141:
              if (OUTLINED_FUNCTION_4_20(v392, v393, v394, v395, 0))
              {
                continue;
              }

              v757 = OUTLINED_FUNCTION_25_13();
              npush_s(v757);
              OUTLINED_FUNCTION_22_14();
              v3 = &v1588;
              v758 = OUTLINED_FUNCTION_15_18();
              npop(v758, v759);
              v760 = OUTLINED_FUNCTION_14_18();
              npush_s(v760);
              v761 = OUTLINED_FUNCTION_6_20();
              npop(v761, &v1588);
              v762 = OUTLINED_FUNCTION_25_13();
LABEL_283:
              npush_s(v762);
              WORD1(v1588) = 5;
LABEL_284:
              v1359 = OUTLINED_FUNCTION_15_18();
              npop(v1359, v1360);
              WORD1(v1588) = &unk_2806BB32F;
LABEL_289:
              v1255 = OUTLINED_FUNCTION_15_18();
              goto LABEL_330;
            case 173:
              v661 = OUTLINED_FUNCTION_1_22();
              v664 = lpta_rpta_loadp(v661, v662, v663);
              v667 = &unk_2806BB218;
LABEL_150:
              if (!OUTLINED_FUNCTION_11_20(v664, v665, v666, v667, 0))
              {
                goto LABEL_151;
              }

              continue;
            case 174:
              v617 = OUTLINED_FUNCTION_1_22();
              lpta_rpta_loadp(v617, v618, v619);
              v620 = OUTLINED_FUNCTION_0_23();
              if (insert_2pt_s(v620, v621, v622, v623, v624))
              {
                continue;
              }

              v625 = OUTLINED_FUNCTION_17_17();
              v626 = npush_s(v625);
              OUTLINED_FUNCTION_7_20(v626, v627, v628, v629, v630, v631, v632, v633, v1562, v1563, v1564, v1565, v1566, v1567, v1568, v1569, v1570, v1571, v1572, v1573, v1574, v1575, v1576, v1577, v1578, v1579, v1580, v1581, v1582, v1583, v1584, v1585, v1586, v1587, v1588, SWORD1(v1588));
              v634 = OUTLINED_FUNCTION_17_17();
              npush_s(v634);
              WORD1(v1588) = 2;
              v635 = OUTLINED_FUNCTION_16_18();
              npop(v635, v636);
              v637 = OUTLINED_FUNCTION_20_14();
              npush_s(v637);
              WORD1(v1588) = &unk_2806BB32F;
              v638 = OUTLINED_FUNCTION_16_18();
              npop(v638, v639);
              v640 = OUTLINED_FUNCTION_14_18();
              npush_s(v640);
              OUTLINED_FUNCTION_21_14();
LABEL_118:
              v641 = OUTLINED_FUNCTION_16_18();
              npop(v641, v642);
              OUTLINED_FUNCTION_28_10();
              goto LABEL_308;
            case 175:
              v372 = OUTLINED_FUNCTION_1_22();
              lpta_rpta_loadp(v372, v373, v374);
              v375 = OUTLINED_FUNCTION_2_22();
              if (insert_2pt_s(v375, v376, 1, v377, v378))
              {
                continue;
              }

              v144 = OUTLINED_FUNCTION_36_6();
LABEL_75:
              npush_s(v144);
              WORD1(v1588) = v14;
LABEL_316:
              v1037 = &v1588;
              v1036 = a1;
              goto LABEL_317;
            case 176:
              v544 = OUTLINED_FUNCTION_1_22();
              v547 = lpta_rpta_loadp(v544, v545, v546);
              if (OUTLINED_FUNCTION_9_20(v547, v548, v549, &unk_2806BB267, 0))
              {
                continue;
              }

              v550 = OUTLINED_FUNCTION_24_14();
              v551 = npush_s(v550);
              OUTLINED_FUNCTION_7_20(v551, v552, v553, v554, v555, v556, v557, v558, v1562, v1563, v1564, v1565, v1566, v1567, v1568, v1569, v1570, v1571, v1572, v1573, v1574, v1575, v1576, v1577, v1578, v1579, v1580, v1581, v1582, v1583, v1584, v1585, v1586, v1587, v1588, SWORD1(v1588));
              v559 = OUTLINED_FUNCTION_20_14();
              npush_s(v559);
              WORD1(v1588) = 2;
              v560 = OUTLINED_FUNCTION_16_18();
              npop(v560, v561);
              v562 = a1;
LABEL_234:
              npush_s(v562);
              WORD1(v1588) = 5;
LABEL_277:
              v1338 = OUTLINED_FUNCTION_16_18();
              npop(v1338, v1339);
              v592 = OUTLINED_FUNCTION_20_14();
              goto LABEL_278;
            case 177:
              v596 = OUTLINED_FUNCTION_1_22();
              lpta_rpta_loadp(v596, v597, v598);
              v599 = OUTLINED_FUNCTION_0_23();
              if (insert_2pt_s(v599, v600, v601, v602, v603))
              {
                continue;
              }

              v604 = OUTLINED_FUNCTION_24_14();
              v605 = npush_s(v604);
              OUTLINED_FUNCTION_8_20(v605, v606, v607, v608, v609, v610, v611, v612, v1562, v1563, v1564, v1565, v1566, v1567, v1568, v1569, v1570, v1571, v1572, v1573, v1574, v1575, v1576, v1577, v1578, v1579, v1580, v1581, v1582, v1583, v1584, v1585, v1586, v1587, v1588, SWORD1(v1588));
              v613 = OUTLINED_FUNCTION_17_17();
              npush_s(v613);
              WORD1(v1588) = 2;
LABEL_182:
              v973 = OUTLINED_FUNCTION_15_18();
              npop(v973, v974);
              v61 = OUTLINED_FUNCTION_17_17();
LABEL_209:
              npush_s(v61);
              v1074 = OUTLINED_FUNCTION_6_20();
              npop(v1074, v3);
              v796 = OUTLINED_FUNCTION_17_17();
              goto LABEL_238;
            case 178:
              v572 = OUTLINED_FUNCTION_1_22();
              v575 = lpta_rpta_loadp(v572, v573, v574);
              if (OUTLINED_FUNCTION_11_20(v575, v576, v577, &unk_2806BB21A, 0))
              {
                continue;
              }

              v578 = OUTLINED_FUNCTION_24_14();
              v579 = npush_s(v578);
              OUTLINED_FUNCTION_7_20(v579, v580, v581, v582, v583, v584, v585, v586, v1562, v1563, v1564, v1565, v1566, v1567, v1568, v1569, v1570, v1571, v1572, v1573, v1574, v1575, v1576, v1577, v1578, v1579, v1580, v1581, v1582, v1583, v1584, v1585, v1586, v1587, v1588, SWORD1(v1588));
              v587 = OUTLINED_FUNCTION_20_14();
              npush_s(v587);
              WORD1(v1588) = 5;
              v588 = OUTLINED_FUNCTION_16_18();
              npop(v588, v589);
              v590 = OUTLINED_FUNCTION_17_17();
              npush_s(v590);
              v591 = OUTLINED_FUNCTION_6_20();
              npop(v591, v4);
              v592 = OUTLINED_FUNCTION_17_17();
LABEL_278:
              npush_s(v592);
              WORD1(v1588) = &unk_2806BB32F;
              v1036 = OUTLINED_FUNCTION_16_18();
              goto LABEL_317;
            case 179:
              v643 = OUTLINED_FUNCTION_1_22();
              lpta_rpta_loadp(v643, v644, v645);
              v646 = OUTLINED_FUNCTION_0_23();
              if (insert_2pt_s(v646, v647, v648, v649, v650))
              {
                continue;
              }

              LOWORD(v15) = 2;
LABEL_151:
              v800 = OUTLINED_FUNCTION_17_17();
              npush_s(v800);
              WORD1(v1588) = v15;
              v15 = &v1588;
              v801 = OUTLINED_FUNCTION_18_16();
              npop(v801, v802);
              v803 = OUTLINED_FUNCTION_24_14();
              npush_s(v803);
              OUTLINED_FUNCTION_26_13();
              v804 = OUTLINED_FUNCTION_18_16();
              npop(v804, v805);
              v806 = OUTLINED_FUNCTION_31_9();
LABEL_213:
              npush_s(v806);
              v1093 = OUTLINED_FUNCTION_6_20();
              npop(v1093, v15);
              v1094 = OUTLINED_FUNCTION_20_14();
              npush_s(v1094);
              WORD1(v1588) = &unk_2806BB32F;
              v1095 = OUTLINED_FUNCTION_18_16();
              npop(v1095, v1096);
              OUTLINED_FUNCTION_28_10();
LABEL_329:
              v1255 = OUTLINED_FUNCTION_18_16();
              goto LABEL_330;
            case 180:
              v614 = OUTLINED_FUNCTION_1_22();
              v186 = lpta_rpta_loadp(v614, v615, v616);
              v189 = &unk_2806BB26A;
LABEL_236:
              if (OUTLINED_FUNCTION_9_20(v186, v187, v188, v189, 0))
              {
                continue;
              }

              v1172 = OUTLINED_FUNCTION_24_14();
              npush_s(v1172);
              OUTLINED_FUNCTION_22_14();
              v3 = &v1588;
              v1173 = OUTLINED_FUNCTION_15_18();
              npop(v1173, v1174);
              v4 = 2;
              v1175 = OUTLINED_FUNCTION_30_9();
              npush_s(v1175);
              WORD1(v1588) = 2;
              v1176 = OUTLINED_FUNCTION_15_18();
              npop(v1176, v1177);
              v1178 = OUTLINED_FUNCTION_35_6();
              npush_s(v1178);
              WORD1(v1588) = 5;
              v1179 = OUTLINED_FUNCTION_15_18();
              npop(v1179, v1180);
              v796 = OUTLINED_FUNCTION_30_9();
LABEL_238:
              npush_s(v796);
              WORD1(v1588) = v14;
LABEL_239:
              v1036 = OUTLINED_FUNCTION_15_18();
LABEL_317:
              npop(v1036, v1037);
              break;
            case 181:
              v466 = OUTLINED_FUNCTION_1_22();
              v201 = lpta_rpta_loadp(v466, v467, v468);
              v204 = &unk_2806BB26D;
LABEL_91:
              if (OUTLINED_FUNCTION_9_20(v201, v202, v203, v204, 0))
              {
                continue;
              }

              v3 = 2;
              v469 = OUTLINED_FUNCTION_20_14();
              v470 = npush_s(v469);
              OUTLINED_FUNCTION_10_20(v470, v471, v472, v473, v474, v475, v476, v477, v1562, v1563, v1564, v1565, v1566, v1567, v1568, v1569, v1570, v1571, v1572, v1573, v1574, v1575, v1576, v1577, v1578, v1579, v1580, v1581, v1582, v1583, v1584, v1585, v1586, v1587, v1588, SWORD1(v1588));
              v478 = OUTLINED_FUNCTION_24_14();
              npush_s(v478);
              OUTLINED_FUNCTION_22_14();
              v479 = OUTLINED_FUNCTION_16_18();
              npop(v479, v480);
              v481 = OUTLINED_FUNCTION_31_9();
LABEL_230:
              npush_s(v481);
              WORD1(v1588) = 5;
              v1149 = OUTLINED_FUNCTION_16_18();
              npop(v1149, v1150);
              v1151 = OUTLINED_FUNCTION_20_14();
              npush_s(v1151);
              WORD1(v1588) = &unk_2806BB32F;
              v1152 = OUTLINED_FUNCTION_16_18();
              npop(v1152, v1153);
              OUTLINED_FUNCTION_28_10();
LABEL_308:
              v1255 = OUTLINED_FUNCTION_16_18();
LABEL_330:
              copyvar(v1255, v1253, v1254);
              break;
            case 182:
              v693 = OUTLINED_FUNCTION_1_22();
              v696 = lpta_rpta_loadp(v693, v694, v695);
              if (OUTLINED_FUNCTION_4_20(v696, v697, v698, &unk_2806BB3CF, 0))
              {
                continue;
              }

              v3 = 2;
              v699 = OUTLINED_FUNCTION_20_14();
              v700 = npush_s(v699);
              OUTLINED_FUNCTION_10_20(v700, v701, v702, v703, v704, v705, v706, v707, v1562, v1563, v1564, v1565, v1566, v1567, v1568, v1569, v1570, v1571, v1572, v1573, v1574, v1575, v1576, v1577, v1578, v1579, v1580, v1581, v1582, v1583, v1584, v1585, v1586, v1587, v1588, SWORD1(v1588));
              v708 = OUTLINED_FUNCTION_24_14();
              npush_s(v708);
              OUTLINED_FUNCTION_22_14();
              v709 = OUTLINED_FUNCTION_16_18();
              npop(v709, v710);
              v525 = OUTLINED_FUNCTION_31_9();
LABEL_131:
              npush_s(v525);
              v711 = OUTLINED_FUNCTION_6_20();
              npop(v711, v4);
              v712 = OUTLINED_FUNCTION_20_14();
              npush_s(v712);
              WORD1(v1588) = 5;
              v713 = OUTLINED_FUNCTION_16_18();
              npop(v713, v714);
              WORD1(v1588) = &unk_2806BB32F;
              goto LABEL_308;
            case 184:
              goto LABEL_6;
            case 185:
            case 194:
              break;
            case 186:
              goto LABEL_332;
            case 187:
              v668 = OUTLINED_FUNCTION_33_8();
              bspush_ca_scan(v668, v669);
              v658 = OUTLINED_FUNCTION_25_13();
              v660 = 2;
              goto LABEL_337;
            case 188:
              goto LABEL_338;
            case 189:
              v658 = OUTLINED_FUNCTION_25_13();
              v660 = 4;
              goto LABEL_337;
            case 190:
              goto LABEL_341;
            case 191:
              goto LABEL_333;
            case 192:
              goto LABEL_334;
            case 193:
              goto LABEL_347;
            default:
              goto LABEL_4;
          }

          v1523 = OUTLINED_FUNCTION_33_8();
          starttest(v1523, v1524);
          if (!lpta_loadp_setscan_r(a1, v1592))
          {
            break;
          }

LABEL_332:
          v1525 = OUTLINED_FUNCTION_33_8();
          starttest(v1525, v1526);
          OUTLINED_FUNCTION_1_22();
          if (!followed_by_hyphen())
          {
            goto LABEL_341;
          }

LABEL_333:
          v1527 = OUTLINED_FUNCTION_33_8();
          starttest(v1527, v1528);
          OUTLINED_FUNCTION_1_22();
          if (!in_quotes())
          {
            copyvar(a1, &v1588, (a1 + 3696));
            goto LABEL_341;
          }

LABEL_334:
          v1529 = OUTLINED_FUNCTION_1_22();
          lpta_rpta_loadp(v1529, v1530, v1531);
          OUTLINED_FUNCTION_37_6();
          v1532 = OUTLINED_FUNCTION_25_13();
          if (!mark_v(v1532, v1533, v1534, v1535))
          {
LABEL_341:
            v1538 = OUTLINED_FUNCTION_1_22();
            lpta_rpta_loadp(v1538, v1539, v1540);
            OUTLINED_FUNCTION_37_6();
            v1541 = OUTLINED_FUNCTION_14_18();
            if (!mark_v(v1541, v1542, v1543, v1544))
            {
              WORD1(v1588) = 2;
              v1545 = OUTLINED_FUNCTION_14_18();
              if (!mark_v(v1545, v1546, 2, v1547))
              {
                OUTLINED_FUNCTION_37_6();
                v1548 = OUTLINED_FUNCTION_25_13();
                if (!mark_v(v1548, v1549, v1550, v1551))
                {
                  OUTLINED_FUNCTION_37_6();
                  v1552 = OUTLINED_FUNCTION_25_13();
                  if (!mark_v(v1552, v1553, v1554, v1555))
                  {
                    v1556 = OUTLINED_FUNCTION_33_8();
                    starttest(v1556, v1557);
                    if (*(a1 + 2286) != HIWORD(v1590) || (v1558 = OUTLINED_FUNCTION_1_22(), lpta_rpta_loadp(v1558, v1559, v1560), OUTLINED_FUNCTION_29_10(), settvar_s(), insert_2ptv(), !v1561))
                    {
LABEL_347:
                      vretproc(a1);
                      result = 0;
                      goto LABEL_5;
                    }
                  }
                }
              }
            }
          }
        }

        v1536 = OUTLINED_FUNCTION_33_8();
        bspush_ca_scan(v1536, v1537);
        v658 = OUTLINED_FUNCTION_25_13();
        v660 = 1;
LABEL_337:
        if (!testFldeq(v658, v659, 8, v660))
        {
LABEL_338:
          if (!advance_tok(a1))
          {
            goto LABEL_341;
          }
        }
      }
    }
  }

LABEL_4:
  vretproc(a1);
  result = 94;
LABEL_5:
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t OUTLINED_FUNCTION_4_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{

  return insert_2pt_s(v5, 4u, 5, a4, a5);
}

void OUTLINED_FUNCTION_5_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, __int16 a35, __int16 a36)
{
  a36 = 1;

  npop(v36, &a35);
}

void OUTLINED_FUNCTION_7_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, __int16 a35, __int16 a36)
{
  a36 = 1;

  npop(v36, &a35);
}

void OUTLINED_FUNCTION_8_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, __int16 a35, __int16 a36)
{
  a36 = 1;

  npop(v36, &a35);
}

uint64_t OUTLINED_FUNCTION_9_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{

  return insert_2pt_s(v5, 4u, 3, a4, a5);
}

void OUTLINED_FUNCTION_10_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, __int16 a35, __int16 a36)
{
  a36 = v37;

  npop(v36, &a35);
}

uint64_t OUTLINED_FUNCTION_11_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{

  return insert_2pt_s(v5, 4u, 2, a4, a5);
}

void OUTLINED_FUNCTION_13_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, __int16 a35, __int16 a36)
{
  a36 = v37;

  npop(v36, &a35);
}

uint64_t por_roots(uint64_t a1, __int16 *a2, __int16 *a3, __int16 *a4)
{
  v239 = *MEMORY[0x277D85DE8];
  v233 = 0;
  v234 = 0;
  v231 = 0;
  v232 = 0;
  v229 = 0;
  v230 = 0;
  HIDWORD(v228) = 0;
  v225 = 0;
  v226 = 0;
  v227 = 0;
  bzero(&v202, 0xB8uLL);
  bzero(v238, 0xC0uLL);
  if (setjmp(v238))
  {
    goto LABEL_4;
  }

  if (ventproc(a1, &v202, v237, v236, v235, v238))
  {
    goto LABEL_4;
  }

  get_parm(a1, &v233, a2, -6);
  get_parm(a1, &v231, a3, -6);
  get_parm(a1, &v229, a4, -6);
  HIDWORD(v228) = 65532;
  LOBYTE(v227) = 0;
  LODWORD(v225) = -65533;
  *(*(a1 + 192) + 8121) = 1;
  memset(*(a1 + 264), *(a1 + 288), *(a1 + 288));
  v8 = _MergedGlobals_16;
  **(a1 + 248) = _MergedGlobals_16;
  *(*(a1 + 264) + v8) = 0;
  v9 = OUTLINED_FUNCTION_3_22();
  starttest(v9, v10);
  lpta_rpta_loadp(a1, &v233, &v231);
  if (actd_lookup(a1, 1, 0, 0))
  {
LABEL_4:
    v11 = 94;
  }

  else
  {
LABEL_6:
    move_i(a1, &v228 + 4, 0);
    actd_goto(a1);
    while (2)
    {
      v21 = *(a1 + 104);
      if (v21)
      {
        *(a1 + 104) = 0;
        v22 = v21;
      }

      else
      {
        v22 = vback(a1, 0);
      }

      v23 = v22 - 1;
      inserted = &unk_2806BB484;
      v25 = 3;
      switch(v23)
      {
        case 0:
          goto LABEL_65;
        case 1:
          OUTLINED_FUNCTION_4_21(&unk_2806BB484, v14, v15, v16, v17, v18, v19, v20, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233);
          v26 = OUTLINED_FUNCTION_0_24();
          if (insert_2pt_s(v26, v27, 1, v28, v29))
          {
            continue;
          }

          OUTLINED_FUNCTION_8_21();
          lpta_storep(a1, a1 + 5976);
          v30 = &unk_2806BB487;
          goto LABEL_52;
        case 2:
          OUTLINED_FUNCTION_4_21(&unk_2806BB484, v14, v15, v16, v17, v18, v19, v20, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233);
          v114 = OUTLINED_FUNCTION_0_24();
          if (insert_2pt_s(v114, v115, 1, v116, v117))
          {
            continue;
          }

          OUTLINED_FUNCTION_8_21();
          lpta_storep(a1, a1 + 5976);
          v30 = &unk_2806BB48A;
LABEL_52:
          v79 = a1;
          v80 = 4;
          v82 = 3;
          v81 = 0;
          goto LABEL_103;
        case 3:
          inserted = &unk_2806BB49D;
          goto LABEL_64;
        case 4:
          inserted = &unk_2806BB4A2;
LABEL_64:
          v25 = 5;
          goto LABEL_65;
        case 5:
          inserted = &unk_2806BB4BB;
          goto LABEL_47;
        case 6:
          inserted = &unk_2806BB4C1;
LABEL_47:
          v25 = 6;
LABEL_65:
          v146 = inserted;
          OUTLINED_FUNCTION_4_21(inserted, v14, v15, v16, v17, v18, v19, v20, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233);
          v79 = OUTLINED_FUNCTION_0_24();
          v82 = v25;
          v30 = v146;
          goto LABEL_103;
        case 7:
          v73 = OUTLINED_FUNCTION_3_22();
          starttest(v73, v74);
          disambiguate_noun_from_adj();
          if (inserted)
          {
            goto LABEL_32;
          }

          OUTLINED_FUNCTION_4_21(inserted, v14, v15, v16, v17, v18, v19, v20, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233);
          v75 = OUTLINED_FUNCTION_0_24();
          inserted = insert_2pt_s(v75, v76, 6, v77, v78);
          if (inserted)
          {
            goto LABEL_32;
          }

          goto LABEL_104;
        case 8:
          v45 = OUTLINED_FUNCTION_3_22();
          starttest(v45, v46);
          v47 = OUTLINED_FUNCTION_5_21();
          if (lpta_loadp_setscan_r(v47, v48))
          {
            goto LABEL_22;
          }

          v196 = OUTLINED_FUNCTION_1_23();
          if (!testFldeq(v196, v197, v198, 3) && !advance_tok(a1))
          {
            goto LABEL_94;
          }

          continue;
        case 9:
          v92 = OUTLINED_FUNCTION_3_22();
          starttest(v92, v93);
          v94 = OUTLINED_FUNCTION_5_21();
          if (lpta_loadp_setscan_r(v94, v95))
          {
            goto LABEL_37;
          }

          v199 = OUTLINED_FUNCTION_1_23();
          if (!testFldeq(v199, v200, v201, 3) && !advance_tok(a1))
          {
            goto LABEL_82;
          }

          continue;
        case 10:
          v118 = OUTLINED_FUNCTION_3_22();
          starttest(v118, v119);
          if (lpta_loadp_setscan_r(a1, &v231))
          {
            goto LABEL_54;
          }

          v194 = 0;
          v192 = a1;
          v193 = 3;
          v195 = 3;
          goto LABEL_116;
        case 11:
          v147 = OUTLINED_FUNCTION_3_22();
          starttest(v147, v148);
          disambiguate_noun_from_adj();
          if (inserted)
          {
            goto LABEL_96;
          }

          OUTLINED_FUNCTION_4_21(inserted, v14, v15, v16, v17, v18, v19, v20, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233);
          v149 = OUTLINED_FUNCTION_0_24();
          inserted = insert_2pt_s(v149, v150, 5, v151, v152);
          if (inserted)
          {
            goto LABEL_96;
          }

          goto LABEL_104;
        case 12:
          disambiguate_noun_from_adj();
          if (v102)
          {
            goto LABEL_40;
          }

          goto LABEL_41;
        case 13:
          OUTLINED_FUNCTION_10_21();
          goto LABEL_16;
        case 15:
          goto LABEL_6;
        case 16:
        case 17:
        case 19:
        case 32:
        case 43:
        case 54:
        case 56:
        case 60:
        case 63:
          goto LABEL_104;
        case 18:
LABEL_32:
          OUTLINED_FUNCTION_4_21(inserted, v14, v15, v16, v17, v18, v19, v20, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233);
          v79 = OUTLINED_FUNCTION_0_24();
          v82 = 6;
          goto LABEL_103;
        case 20:
LABEL_22:
          v49 = OUTLINED_FUNCTION_3_22();
          starttest(v49, v50);
          v51 = OUTLINED_FUNCTION_5_21();
          if (lpta_loadp_setscan_r(v51, v52))
          {
            goto LABEL_23;
          }

          goto LABEL_27;
        case 21:
          goto LABEL_94;
        case 22:
LABEL_23:
          v53 = OUTLINED_FUNCTION_3_22();
          starttest(v53, v54);
          v55 = OUTLINED_FUNCTION_5_21();
          if (lpta_loadp_setscan_l(v55, v56))
          {
            goto LABEL_24;
          }

          v165 = OUTLINED_FUNCTION_3_22();
          bspush_ca_scan(v165, v166);
          v85 = OUTLINED_FUNCTION_6_21();
          v87 = 2;
          v113 = 1;
          goto LABEL_87;
        case 23:
LABEL_24:
          v57 = OUTLINED_FUNCTION_3_22();
          starttest(v57, v58);
          if (OUTLINED_FUNCTION_9_21(v59, v60, v61, v62, v63, v64, v65, v66, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229))
          {
            goto LABEL_94;
          }

          v67 = OUTLINED_FUNCTION_1_23();
          if (testFldeq(v67, v68, v69, 9) || advance_tok(a1))
          {
            continue;
          }

LABEL_27:
          v70 = OUTLINED_FUNCTION_2_23();
          if (!testFldeq(v70, v71, v72, 12) && !advance_tok(a1))
          {
            goto LABEL_93;
          }

          continue;
        case 24:
          v111 = OUTLINED_FUNCTION_3_22();
          bspush_ca_scan(v111, v112);
          v85 = OUTLINED_FUNCTION_2_23();
          v113 = 3;
          goto LABEL_87;
        case 25:
          goto LABEL_88;
        case 26:
          v83 = OUTLINED_FUNCTION_3_22();
          bspush_ca_scan(v83, v84);
          v85 = OUTLINED_FUNCTION_6_21();
          v87 = 2;
          goto LABEL_49;
        case 27:
          v163 = OUTLINED_FUNCTION_3_22();
          bspush_ca_scan(v163, v164);
          v85 = OUTLINED_FUNCTION_2_23();
          v113 = 37;
          goto LABEL_87;
        case 28:
          v85 = OUTLINED_FUNCTION_1_23();
LABEL_49:
          v113 = 2;
LABEL_87:
          if (testFldeq(v85, v86, v87, v113))
          {
            continue;
          }

LABEL_88:
          if (advance_tok(a1))
          {
            continue;
          }

          *(a1 + 136) = 1;
          *(a1 + 112) = v234;
          *(a1 + 128) = 0;
          OUTLINED_FUNCTION_6_21();
          if (lpta_tstmovel())
          {
            continue;
          }

          v167 = OUTLINED_FUNCTION_7_21();
          setscan_l(v167);
          if (v168)
          {
            continue;
          }

          v169 = OUTLINED_FUNCTION_3_22();
          bspush_ca_scan(v169, v170);
LABEL_92:
          OUTLINED_FUNCTION_7_21();
          if (test_string_s())
          {
            continue;
          }

LABEL_93:
          HIWORD(v228) = 1;
LABEL_94:
          v171 = OUTLINED_FUNCTION_3_22();
          starttest(v171, v172);
          if (!HIWORD(v228))
          {
            OUTLINED_FUNCTION_4_21(inserted, v14, v15, v16, v17, v18, v19, v20, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233);
            v173 = OUTLINED_FUNCTION_0_24();
            inserted = insert_2pt_s(v173, v174, 5, v175, v176);
            if (!inserted)
            {
              goto LABEL_104;
            }
          }

LABEL_96:
          OUTLINED_FUNCTION_4_21(inserted, v14, v15, v16, v17, v18, v19, v20, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233);
          v79 = OUTLINED_FUNCTION_0_24();
          v82 = 5;
          goto LABEL_103;
        case 29:
          OUTLINED_FUNCTION_7_21();
          if (test_string_s())
          {
            continue;
          }

          goto LABEL_92;
        case 30:
          goto LABEL_92;
        case 31:
        case 55:
          goto LABEL_96;
        case 33:
LABEL_37:
          v96 = OUTLINED_FUNCTION_3_22();
          starttest(v96, v97);
          v98 = OUTLINED_FUNCTION_5_21();
          if (lpta_loadp_setscan_l(v98, v99))
          {
            goto LABEL_82;
          }

          v100 = OUTLINED_FUNCTION_3_22();
          bspush_ca_scan(v100, v101);
          v33 = OUTLINED_FUNCTION_6_21();
          v35 = 2;
          v36 = 1;
          goto LABEL_75;
        case 34:
          goto LABEL_82;
        case 35:
          v31 = OUTLINED_FUNCTION_3_22();
          bspush_ca_scan(v31, v32);
          v33 = OUTLINED_FUNCTION_2_23();
          v36 = 3;
          goto LABEL_75;
        case 36:
          goto LABEL_76;
        case 37:
          v109 = OUTLINED_FUNCTION_3_22();
          bspush_ca_scan(v109, v110);
          v33 = OUTLINED_FUNCTION_6_21();
          v35 = 2;
          goto LABEL_74;
        case 38:
          v37 = OUTLINED_FUNCTION_3_22();
          bspush_ca_scan(v37, v38);
          v33 = OUTLINED_FUNCTION_2_23();
          v36 = 37;
          goto LABEL_75;
        case 39:
          v33 = OUTLINED_FUNCTION_1_23();
LABEL_74:
          v36 = 2;
LABEL_75:
          if (testFldeq(v33, v34, v35, v36))
          {
            continue;
          }

LABEL_76:
          if (advance_tok(a1))
          {
            continue;
          }

          *(a1 + 136) = 1;
          *(a1 + 112) = v234;
          *(a1 + 128) = 0;
          OUTLINED_FUNCTION_6_21();
          if (lpta_tstmovel())
          {
            continue;
          }

          v153 = OUTLINED_FUNCTION_7_21();
          setscan_l(v153);
          if (v154)
          {
            continue;
          }

          v155 = OUTLINED_FUNCTION_3_22();
          bspush_ca_scan(v155, v156);
LABEL_80:
          if (test_string_s())
          {
            continue;
          }

          HIWORD(v228) = 1;
LABEL_82:
          v157 = OUTLINED_FUNCTION_3_22();
          starttest(v157, v158);
          if (HIWORD(v228))
          {
            goto LABEL_102;
          }

          OUTLINED_FUNCTION_4_21(inserted, v14, v15, v16, v17, v18, v19, v20, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233);
          v159 = OUTLINED_FUNCTION_0_24();
          inserted = insert_2pt_s(v159, v160, 4, v161, v162);
          if (inserted)
          {
            goto LABEL_102;
          }

          goto LABEL_104;
        case 40:
          OUTLINED_FUNCTION_7_21();
          if (test_string_s())
          {
            continue;
          }

          goto LABEL_80;
        case 41:
          goto LABEL_80;
        case 42:
        case 53:
          goto LABEL_102;
        case 44:
LABEL_54:
          v120 = OUTLINED_FUNCTION_3_22();
          starttest(v120, v121);
          if (OUTLINED_FUNCTION_9_21(v122, v123, v124, v125, v126, v127, v128, v129, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229))
          {
            goto LABEL_55;
          }

          v189 = OUTLINED_FUNCTION_1_23();
          if (!testFldeq(v189, v190, v191, 9) && !advance_tok(a1))
          {
            v192 = OUTLINED_FUNCTION_2_23();
            v195 = 12;
LABEL_116:
            if (!testFldeq(v192, v193, v194, v195) && !advance_tok(a1))
            {
              goto LABEL_100;
            }
          }

          continue;
        case 45:
          goto LABEL_100;
        case 46:
LABEL_55:
          v130 = OUTLINED_FUNCTION_3_22();
          starttest(v130, v131);
          if (OUTLINED_FUNCTION_9_21(v132, v133, v134, v135, v136, v137, v138, v139, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229))
          {
            goto LABEL_56;
          }

          v177 = OUTLINED_FUNCTION_3_22();
          bspush_ca_scan(v177, v178);
          goto LABEL_98;
        case 47:
LABEL_56:
          v140 = OUTLINED_FUNCTION_3_22();
          starttest(v140, v141);
          v142 = OUTLINED_FUNCTION_5_21();
          if (lpta_loadp_setscan_l(v142, v143))
          {
            goto LABEL_100;
          }

          v144 = OUTLINED_FUNCTION_3_22();
          bspush_ca_scan(v144, v145);
          goto LABEL_58;
        case 48:
          v88 = OUTLINED_FUNCTION_1_23();
          v91 = 5;
          goto LABEL_59;
        case 49:
LABEL_98:
          v179 = OUTLINED_FUNCTION_3_22();
          if (!test_synch(v179, v180, 1u, v181))
          {
            goto LABEL_99;
          }

          continue;
        case 50:
          goto LABEL_99;
        case 51:
          if (advance_tok(a1))
          {
            continue;
          }

          goto LABEL_58;
        case 52:
LABEL_58:
          v88 = OUTLINED_FUNCTION_2_23();
          v91 = 19;
LABEL_59:
          if (testFldeq(v88, v89, v90, v91) || advance_tok(a1))
          {
            continue;
          }

LABEL_99:
          HIWORD(v228) = 1;
LABEL_100:
          v182 = OUTLINED_FUNCTION_3_22();
          starttest(v182, v183);
          if (!HIWORD(v228))
          {
            OUTLINED_FUNCTION_4_21(inserted, v14, v15, v16, v17, v18, v19, v20, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233);
            v184 = OUTLINED_FUNCTION_0_24();
            inserted = insert_2pt_s(v184, v185, 4, v186, v187);
            if (!inserted)
            {
              goto LABEL_104;
            }
          }

LABEL_102:
          OUTLINED_FUNCTION_4_21(inserted, v14, v15, v16, v17, v18, v19, v20, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233);
          v79 = OUTLINED_FUNCTION_0_24();
          v82 = 4;
          goto LABEL_103;
        case 57:
LABEL_40:
          OUTLINED_FUNCTION_10_21();
          goto LABEL_41;
        case 58:
LABEL_41:
          v103 = OUTLINED_FUNCTION_3_22();
          starttest(v103, v104);
          if (HIWORD(v228) != 1)
          {
            goto LABEL_43;
          }

          OUTLINED_FUNCTION_4_21(inserted, v14, v15, v16, v17, v18, v19, v20, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233);
          v105 = OUTLINED_FUNCTION_0_24();
          inserted = insert_2pt_s(v105, v106, 7, v107, v108);
          if (inserted)
          {
            goto LABEL_43;
          }

          goto LABEL_104;
        case 59:
        case 62:
          goto LABEL_43;
        case 61:
LABEL_16:
          v39 = OUTLINED_FUNCTION_3_22();
          starttest(v39, v40);
          if (HIWORD(v228) == 1)
          {
            OUTLINED_FUNCTION_4_21(inserted, v14, v15, v16, v17, v18, v19, v20, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233);
            v41 = OUTLINED_FUNCTION_0_24();
            inserted = insert_2pt_s(v41, v42, 7, v43, v44);
            if (!inserted)
            {
              goto LABEL_104;
            }
          }

LABEL_43:
          OUTLINED_FUNCTION_4_21(inserted, v14, v15, v16, v17, v18, v19, v20, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233);
          v79 = OUTLINED_FUNCTION_0_24();
          v82 = 7;
LABEL_103:
          inserted = insert_2pt_s(v79, v80, v82, v30, v81);
          if (inserted)
          {
            continue;
          }

LABEL_104:
          OUTLINED_FUNCTION_4_21(inserted, v14, v15, v16, v17, v18, v19, v20, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233);
          settvar_s();
          insert_2ptv();
          if (v188)
          {
            continue;
          }

          v11 = 0;
          *(a1 + 3886) = 1;
          break;
        default:
          goto LABEL_4;
      }

      break;
    }
  }

  vretproc(a1);
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t OUTLINED_FUNCTION_4_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, char a40)
{

  return lpta_rpta_loadp(v40, &a40, &a38);
}

uint64_t OUTLINED_FUNCTION_8_21()
{

  return insert_l(v0);
}

uint64_t OUTLINED_FUNCTION_9_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{

  return lpta_loadp_setscan_r(v36, &a36);
}

void OUTLINED_FUNCTION_10_21()
{

  disambiguate_travesso();
}

uint64_t suffixes(uint64_t a1, __int16 *a2, __int16 *a3, __int16 *a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v21[0] = 0;
  v21[1] = 0;
  v20[0] = 0;
  v20[1] = 0;
  v19[0] = 0;
  v19[1] = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  bzero(v15, 0xB8uLL);
  bzero(v25, 0xC0uLL);
  if (setjmp(v25))
  {
    goto LABEL_4;
  }

  if (ventproc(a1, v15, v24, v23, v22, v25))
  {
    goto LABEL_4;
  }

  get_parm(a1, v21, a2, -6);
  get_parm(a1, v20, a3, -6);
  get_parm(a1, v19, a4, -6);
  LOBYTE(v18) = 0;
  LODWORD(v16) = -65533;
  *(*(a1 + 192) + 8121) = 0;
  memset(*(a1 + 264), *(a1 + 288), *(a1 + 288));
  starttest(a1, 4);
  lpta_rpta_loadp(a1, v21, v20);
  if (actd_lookup(a1, 2, 0, 0))
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

      v13 = &_MergedGlobals_17;
      switch(v12)
      {
        case 1:
          goto LABEL_13;
        case 2:
          v13 = &unk_2806BB4F3;
          goto LABEL_13;
        case 3:
          v13 = &unk_2806BB4F7;
LABEL_13:
          lpta_rpta_loadp(a1, v21, v20);
          if (!insert_2pt_s(a1, 4u, 4, v13, 0))
          {
            goto LABEL_14;
          }

          continue;
        case 5:
          goto LABEL_6;
        case 6:
        case 7:
LABEL_14:
          lpta_rpta_loadp(a1, v21, v20);
          settvar_s();
          insert_2ptv();
          if (v14)
          {
            continue;
          }

          v8 = 0;
          ++*(a1 + 5946);
          *(a1 + 3874) = 1;
          break;
        default:
          goto LABEL_4;
      }

      break;
    }
  }

  vretproc(a1);
  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t por_char_name()
{
  OUTLINED_FUNCTION_12_21();
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_10_22(v3, v4, v5, v6, v7, v8, v9, v10, v233, v237, v241, v245, v249, v253, v257, v261, v265, v269, v273, v277, v281, v285, v289, v293, v297, v301, v305, v309, v313, v317, v321, v325, v329, v330, v331, SHIDWORD(v331), v332, v333, v334, v335);
  OUTLINED_FUNCTION_14_19(v11, v12, v13, v14, v15, v16, v17, v18, v234, v238, v242, v246, v250, v254, v258, v262, v266, v270, v274, v278, v282, v286, v290, v294, v298, v302, v306, v310, v314, v318, v322, v326, v329, v330, v331, v332, v333, v334, v335, v336, v337, v338, v339, v340);
  v19 = setjmp(v1);
  if (v19 || OUTLINED_FUNCTION_13_21(v19, v20, v21, v22, v23, v24, v25, v26, v235, v239, v243, v247, v251, v255, v259, v263, v267, v271, v275, v279, v283, v287, v291, v295, v299, v303, v307, v311, v315, v319, v323, v327, v329, v330, v331, v332, v333, v334, v335, v336, SBYTE4(v336), v337, SWORD2(v337), SBYTE6(v337), v338, SWORD2(v338), SBYTE6(v338), SHIBYTE(v338), v339, v340) || (v27 = OUTLINED_FUNCTION_5_22(), get_parm(v27, v28, v29, -6), OUTLINED_FUNCTION_11_21(), OUTLINED_FUNCTION_15_19(v30, v31, v32, v33, v34, v35, v36, v37, v236, v240, v244, v248, v252, v256, v260, v264, v268, v272, v276, v280, v284, v288, v292, v296, v300, v304, v308, v312, v316, v320, v324, v328, v329, v330, v331, SHIDWORD(v331)), fence_22(v0), v38 = OUTLINED_FUNCTION_5_22(), lpta_rpta_loadp(v38, v39, v40), actd_lookup(v0, 3, 0, 0)))
  {
LABEL_4:
    vretproc(v0);
    result = 94;
    goto LABEL_5;
  }

  v43 = 0;
LABEL_7:
  starttest(v0, 148);
  if (*(v0 + 2750) == *(v0 + 2742) && (starttest_e(v0, 148), !lpta_loadp_setscan_r(v0, &v334)))
  {
    bspush_ca_scan_boa();
    v51 = OUTLINED_FUNCTION_2_24();
    if (testFldeq(v51, v52, v53, 1))
    {
      v50 = v43;
    }

    else
    {
      v50 = 1;
    }
  }

  else
  {
LABEL_9:
    actd_goto(v0);
    v50 = v43;
  }

  while (2)
  {
    v54 = *(v0 + 104);
    if (v54)
    {
      *(v0 + 104) = 0;
      v55 = v54;
      v56 = v50;
    }

    else
    {
      v55 = vback(v0, v50);
      v56 = 0;
    }

    v57 = &unk_2806BBB06;
    v58 = 15;
    switch(v55)
    {
      case 1:
        v57 = &unk_2806BB549;
        goto LABEL_204;
      case 2:
        v115 = OUTLINED_FUNCTION_6_22();
        starttest(v115, v116);
        v117 = v0;
        v118 = 1;
        goto LABEL_210;
      case 3:
        v209 = OUTLINED_FUNCTION_6_22();
        starttest(v209, v210);
        v117 = v0;
        v118 = 2;
LABEL_210:
        move_i(v117, &v331 + 4, v118);
        OUTLINED_FUNCTION_0_25();
        por_1_and_2();
        goto LABEL_207;
      case 4:
        v112 = OUTLINED_FUNCTION_0_25();
        lpta_rpta_loadp(v112, v113, v114);
        v107 = OUTLINED_FUNCTION_1_24();
        v111 = 4;
        goto LABEL_206;
      case 5:
        v57 = &unk_2806BB63F;
        goto LABEL_200;
      case 6:
        v57 = &unk_2806BB5A9;
        goto LABEL_160;
      case 7:
        v57 = &unk_2806BB551;
        goto LABEL_204;
      case 8:
        v57 = &unk_2806BB555;
        goto LABEL_204;
      case 9:
        v57 = &unk_2806BB559;
        goto LABEL_204;
      case 10:
        v57 = &unk_2806BB55D;
        goto LABEL_204;
      case 11:
        OUTLINED_FUNCTION_4_22();
        if (v60)
        {
          goto LABEL_4;
        }

        goto LABEL_227;
      case 12:
        OUTLINED_FUNCTION_4_22();
        if (v60)
        {
          goto LABEL_4;
        }

        v61 = OUTLINED_FUNCTION_6_22();
        starttest(v61, v62);
        v63 = OUTLINED_FUNCTION_6_22();
        bspush_ca(v63);
        v64 = OUTLINED_FUNCTION_9_22();
        v66 = lpta_loadp_setscan_l(v64, v65);
        v50 = v56;
        if (!v66)
        {
          v67 = OUTLINED_FUNCTION_2_24();
          v70 = testFldeq(v67, v68, v69, 1);
          v50 = v56;
          if (!v70)
          {
            goto LABEL_125;
          }
        }

        continue;
      case 13:
        v119 = OUTLINED_FUNCTION_0_25();
        lpta_rpta_loadp(v119, v120, v121);
        v107 = OUTLINED_FUNCTION_1_24();
        v111 = 15;
        goto LABEL_206;
      case 14:
        v57 = &unk_2806BBD39;
        goto LABEL_130;
      case 15:
        v57 = &unk_2806BB645;
        goto LABEL_200;
      case 16:
        v57 = &unk_2806BB503;
        goto LABEL_191;
      case 17:
        v57 = &unk_2806BB505;
        goto LABEL_191;
      case 18:
        v57 = &unk_2806BB8F7;
        goto LABEL_212;
      case 19:
        v57 = &unk_2806BB51F;
        goto LABEL_198;
      case 20:
        OUTLINED_FUNCTION_4_22();
        if (v60)
        {
          goto LABEL_45;
        }

        v85 = OUTLINED_FUNCTION_0_25();
        lpta_rpta_loadp(v85, v86, v87);
        v88 = OUTLINED_FUNCTION_1_24();
        if (insert_2pt_s(v88, v89, 2, v90, v91))
        {
          goto LABEL_45;
        }

        goto LABEL_229;
      case 21:
        OUTLINED_FUNCTION_4_22();
        if (v60)
        {
          goto LABEL_4;
        }

        goto LABEL_223;
      case 22:
        v154 = OUTLINED_FUNCTION_0_25();
        lpta_rpta_loadp(v154, v155, v156);
        v107 = OUTLINED_FUNCTION_1_24();
        v111 = 21;
        goto LABEL_206;
      case 23:
        v57 = &unk_2806BB522;
        goto LABEL_198;
      case 24:
        v57 = &unk_2806BB509;
        goto LABEL_191;
      case 25:
        v57 = &unk_2806BB525;
        goto LABEL_198;
      case 26:
        v57 = &unk_2806BB50B;
        goto LABEL_191;
      case 27:
        v57 = &unk_2806BBB33;
        goto LABEL_205;
      case 28:
        v57 = &unk_2806BB561;
        goto LABEL_204;
      case 29:
        v57 = &unk_2806BB50D;
        goto LABEL_191;
      case 30:
        v57 = &unk_2806BB565;
        goto LABEL_204;
      case 31:
        v57 = &unk_2806BB528;
        goto LABEL_198;
      case 32:
        v57 = &unk_2806BB52B;
        goto LABEL_198;
      case 33:
        OUTLINED_FUNCTION_4_22();
        if (v60)
        {
          goto LABEL_4;
        }

LABEL_227:
        v229 = OUTLINED_FUNCTION_0_25();
        lpta_rpta_loadp(v229, v230, v231);
        v221 = OUTLINED_FUNCTION_1_24();
        v225 = 2;
        goto LABEL_228;
      case 34:
        OUTLINED_FUNCTION_4_22();
        if (v60)
        {
          goto LABEL_4;
        }

LABEL_223:
        v218 = OUTLINED_FUNCTION_0_25();
        lpta_rpta_loadp(v218, v219, v220);
        v221 = OUTLINED_FUNCTION_1_24();
        v225 = 15;
        goto LABEL_228;
      case 35:
        OUTLINED_FUNCTION_4_22();
        if (v60)
        {
          goto LABEL_4;
        }

        v226 = OUTLINED_FUNCTION_0_25();
        lpta_rpta_loadp(v226, v227, v228);
        v221 = OUTLINED_FUNCTION_1_24();
        v225 = 21;
LABEL_228:
        if (!insert_2pt_s(v221, v222, v225, v223, v224))
        {
          goto LABEL_229;
        }

        goto LABEL_4;
      case 36:
      case 186:
      case 189:
        goto LABEL_187;
      case 37:
        v57 = &unk_2806BB511;
        goto LABEL_191;
      case 38:
        v57 = &unk_2806BB569;
        goto LABEL_204;
      case 39:
        v57 = &unk_2806BB56D;
        goto LABEL_204;
      case 40:
        v57 = &unk_2806BB571;
        goto LABEL_204;
      case 41:
        v57 = &unk_2806BB513;
        goto LABEL_191;
      case 42:
        v57 = &unk_2806BB515;
        goto LABEL_191;
      case 43:
        v57 = &unk_2806BBB51;
        goto LABEL_205;
      case 44:
        v57 = &unk_2806BBB60;
        goto LABEL_205;
      case 45:
        v57 = &unk_2806BB75D;
        goto LABEL_115;
      case 46:
        v57 = &unk_2806BB52E;
        goto LABEL_198;
      case 47:
        v57 = &unk_2806BB64B;
        goto LABEL_200;
      case 48:
        v57 = &unk_2806BB531;
        goto LABEL_198;
      case 49:
        v57 = &unk_2806BB6C3;
        goto LABEL_189;
      case 50:
        v57 = &unk_2806BB517;
        goto LABEL_191;
      case 51:
        v57 = &unk_2806BBCEC;
        goto LABEL_152;
      case 52:
        v57 = &unk_2806BB651;
        goto LABEL_200;
      case 53:
        v57 = &unk_2806BBCDA;
        v58 = 18;
        goto LABEL_205;
      case 54:
        v57 = &unk_2806BB657;
        goto LABEL_200;
      case 55:
        v71 = OUTLINED_FUNCTION_0_25();
        lpta_rpta_loadp(v71, v72, v73);
        v74 = OUTLINED_FUNCTION_1_24();
        inserted = insert_2pt_s(v74, v75, 5, v76, v77);
        v50 = v56;
        if (inserted)
        {
          continue;
        }

        OUTLINED_FUNCTION_0_25();
        add_por_plural();
        goto LABEL_36;
      case 56:
      case 182:
      case 187:
        goto LABEL_172;
      case 57:
        v57 = &unk_2806BB816;
        goto LABEL_183;
      case 58:
        v190 = OUTLINED_FUNCTION_6_22();
        starttest(v190, v191);
        if (*(v0 + 2838) != *(v0 + 2822))
        {
          goto LABEL_172;
        }

        v192 = OUTLINED_FUNCTION_0_25();
        lpta_rpta_loadp(v192, v193, v194);
        v195 = OUTLINED_FUNCTION_1_24();
        if (insert_2pt_s(v195, v196, 5, v197, v198))
        {
          goto LABEL_172;
        }

        goto LABEL_229;
      case 59:
      case 91:
        v57 = &unk_2806BB537;
        goto LABEL_198;
      case 60:
        v57 = &unk_2806BBC14;
        goto LABEL_112;
      case 61:
        v57 = &unk_2806BBC74;
        goto LABEL_178;
      case 62:
        if (*(v0 + 2794) != *(v0 + 2790))
        {
          goto LABEL_79;
        }

        v122 = OUTLINED_FUNCTION_0_25();
        lpta_rpta_loadp(v122, v123, v124);
        v125 = OUTLINED_FUNCTION_1_24();
        if (insert_2pt_s(v125, v126, 1, v127, v128))
        {
          goto LABEL_79;
        }

        goto LABEL_229;
      case 63:
        v57 = &unk_2806BB765;
        goto LABEL_115;
      case 64:
        v57 = &unk_2806BB57D;
        goto LABEL_204;
      case 65:
        v57 = &unk_2806BB5C7;
        goto LABEL_160;
      case 66:
        v57 = &unk_2806BBA6C;
        goto LABEL_148;
      case 67:
        v57 = &unk_2806BBB6F;
        goto LABEL_205;
      case 68:
        v57 = &unk_2806BBC24;
        goto LABEL_112;
      case 69:
        v57 = &unk_2806BB9B4;
        goto LABEL_195;
      case 70:
        v57 = &unk_2806BBA38;
        goto LABEL_186;
      case 71:
        v57 = &unk_2806BB95C;
        goto LABEL_175;
      case 72:
        v57 = &unk_2806BBB7E;
        goto LABEL_205;
      case 73:
        v57 = &unk_2806BB5CC;
        goto LABEL_160;
      case 74:
        v186 = OUTLINED_FUNCTION_6_22();
        starttest(v186, v187);
        v188 = OUTLINED_FUNCTION_9_22();
        if (!lpta_loadp_setscan_r(v188, v189))
        {
          v211 = OUTLINED_FUNCTION_3_23();
          v213 = testFldeq(v211, v212, 4, 4);
          v50 = v56;
          if (!v213)
          {
            v214 = advance_tok(v0);
            v50 = v56;
            if (!v214)
            {
              v215 = OUTLINED_FUNCTION_0_25();
              lpta_rpta_loadp(v215, v216, v217);
              v107 = OUTLINED_FUNCTION_1_24();
              v111 = 12;
              goto LABEL_206;
            }
          }

          continue;
        }

LABEL_172:
        v199 = OUTLINED_FUNCTION_0_25();
        lpta_rpta_loadp(v199, v200, v201);
        v107 = OUTLINED_FUNCTION_1_24();
        v111 = 9;
LABEL_206:
        v208 = insert_2pt_s(v107, v108, v111, v109, v110);
LABEL_207:
        v50 = v56;
        if (v208)
        {
          continue;
        }

LABEL_229:
        insert_space(v0, &v334, v44, v45, v46, v47, v48, v49);
LABEL_230:
        vretproc(v0);
        result = 0;
LABEL_5:
        v42 = *MEMORY[0x277D85DE8];
        return result;
      case 75:
        v57 = &unk_2806BB828;
        goto LABEL_183;
      case 76:
        v57 = &unk_2806BB831;
        goto LABEL_183;
      case 77:
        v57 = &unk_2806BB83A;
        goto LABEL_183;
      case 78:
        v57 = &unk_2806BB6CA;
        goto LABEL_189;
      case 79:
      case 88:
        v57 = &unk_2806BB5D1;
        goto LABEL_160;
      case 80:
        v57 = &unk_2806BBD78;
        goto LABEL_130;
      case 81:
        v145 = OUTLINED_FUNCTION_6_22();
        starttest(v145, v146);
        if (*(v0 + 2810) != *(v0 + 2806))
        {
          goto LABEL_187;
        }

        v147 = OUTLINED_FUNCTION_0_25();
        lpta_rpta_loadp(v147, v148, v149);
        v150 = OUTLINED_FUNCTION_1_24();
        if (insert_2pt_s(v150, v151, 3, v152, v153))
        {
          goto LABEL_187;
        }

        goto LABEL_229;
      case 82:
        v57 = &unk_2806BBB8D;
        goto LABEL_205;
      case 83:
        v57 = &unk_2806BBCFF;
LABEL_152:
        v58 = 19;
        goto LABEL_205;
      case 84:
        v57 = &unk_2806BB581;
        goto LABEL_204;
      case 85:
        v57 = &unk_2806BB967;
LABEL_175:
        v58 = 11;
        goto LABEL_205;
      case 86:
        v57 = &unk_2806BBA45;
LABEL_186:
        v58 = 13;
        goto LABEL_205;
      case 87:
        v57 = &unk_2806BBA7A;
        goto LABEL_148;
      case 89:
      case 106:
        v57 = &unk_2806BB5C2;
        goto LABEL_160;
      case 90:
        v57 = &unk_2806BBC34;
        goto LABEL_112;
      case 92:
      case 107:
        v57 = &unk_2806BBC44;
        goto LABEL_112;
      case 93:
      case 152:
        goto LABEL_230;
      case 94:
        v57 = &unk_2806BBE19;
        v58 = 29;
        goto LABEL_205;
      case 95:
        v57 = &unk_2806BB6D1;
        goto LABEL_189;
      case 96:
        v57 = &unk_2806BB5DB;
        goto LABEL_160;
      case 97:
      case 105:
        v57 = &unk_2806BB6D8;
        goto LABEL_189;
      case 98:
        v57 = &unk_2806BB53D;
LABEL_198:
        v58 = 3;
        goto LABEL_205;
      case 99:
        v57 = &unk_2806BBDB7;
        v58 = 22;
        goto LABEL_205;
      case 100:
        v57 = &unk_2806BB6DF;
        goto LABEL_189;
      case 101:
        v57 = &unk_2806BB5E0;
        goto LABEL_160;
      case 102:
        v57 = &unk_2806BB843;
        goto LABEL_183;
      case 103:
        v57 = &unk_2806BBC54;
LABEL_112:
        v58 = 16;
        goto LABEL_205;
      case 104:
        v57 = &unk_2806BBDE5;
        v58 = 25;
        goto LABEL_205;
      case 108:
        v57 = &unk_2806BB65D;
LABEL_200:
        v58 = 6;
        goto LABEL_205;
      case 109:
        v157 = OUTLINED_FUNCTION_0_25();
        lpta_rpta_loadp(v157, v158, v159);
        v160 = OUTLINED_FUNCTION_1_24();
        v164 = insert_2pt_s(v160, v161, 4, v162, v163);
        v50 = v56;
        if (v164)
        {
          continue;
        }

        OUTLINED_FUNCTION_0_25();
        add_por_plural();
        goto LABEL_229;
      case 110:
        v175 = OUTLINED_FUNCTION_0_25();
        lpta_rpta_loadp(v175, v176, v177);
        v107 = OUTLINED_FUNCTION_1_24();
        v111 = 13;
        goto LABEL_206;
      case 111:
        v57 = &unk_2806BBC85;
        goto LABEL_178;
      case 112:
        v57 = &unk_2806BBC96;
        goto LABEL_178;
      case 113:
        v57 = &unk_2806BB51B;
        goto LABEL_191;
      case 114:
        v57 = &unk_2806BB84C;
        goto LABEL_183;
      case 115:
        v57 = &unk_2806BBA88;
LABEL_148:
        v58 = 14;
        goto LABEL_205;
      case 116:
        v57 = &unk_2806BB6E6;
LABEL_189:
        v58 = 7;
        goto LABEL_205;
      case 117:
        v57 = &unk_2806BBB9C;
        goto LABEL_205;
      case 118:
        v57 = &unk_2806BBCA7;
LABEL_178:
        v58 = 17;
        goto LABEL_205;
      case 119:
        v57 = &unk_2806BBDCD;
        v58 = 24;
        goto LABEL_205;
      case 120:
        v57 = &unk_2806BB855;
        goto LABEL_183;
      case 121:
        v178 = OUTLINED_FUNCTION_0_25();
        lpta_rpta_loadp(v178, v179, v180);
        v181 = OUTLINED_FUNCTION_1_24();
        v185 = insert_2pt_s(v181, v182, 3, v183, v184);
        v50 = v56;
        if (v185)
        {
          continue;
        }

        v232 = OUTLINED_FUNCTION_3_23();
        npush_s(v232);
        *(v0 + 3602) = 10;
        npop(v0, (v0 + 3600));
        goto LABEL_229;
      case 122:
        v57 = &unk_2806BB9CC;
        goto LABEL_195;
      case 123:
        v57 = &unk_2806BBE36;
        v58 = 31;
        goto LABEL_205;
      case 124:
        v57 = &unk_2806BB5B8;
        goto LABEL_160;
      case 125:
        v57 = &unk_2806BB589;
        goto LABEL_204;
      case 126:
        v57 = &unk_2806BB9D8;
LABEL_195:
        v58 = 12;
        goto LABEL_205;
      case 127:
        v57 = &unk_2806BB76D;
        goto LABEL_115;
      case 128:
        v57 = &unk_2806BB5E5;
        goto LABEL_160;
      case 129:
        v57 = &unk_2806BB58D;
LABEL_204:
        v58 = 4;
        goto LABEL_205;
      case 130:
        v57 = &unk_2806BB775;
        goto LABEL_115;
      case 131:
        v57 = &unk_2806BBDFE;
        v58 = 27;
        goto LABEL_205;
      case 132:
        v57 = &unk_2806BB5EA;
LABEL_160:
        v58 = 5;
        goto LABEL_205;
      case 133:
        v57 = &unk_2806BBBAB;
        goto LABEL_205;
      case 134:
        v57 = &unk_2806BB77D;
        goto LABEL_115;
      case 135:
        v57 = &unk_2806BBBBA;
        goto LABEL_205;
      case 136:
        v57 = &unk_2806BBD8D;
        goto LABEL_130;
      case 137:
        v57 = &unk_2806BB785;
        goto LABEL_115;
      case 138:
        v57 = &unk_2806BB51D;
LABEL_191:
        v58 = 2;
        goto LABEL_205;
      case 139:
        v57 = &unk_2806BBBC9;
        goto LABEL_205;
      case 140:
        v57 = &unk_2806BB78D;
LABEL_115:
        v58 = 8;
        goto LABEL_205;
      case 141:
        v57 = &unk_2806BB901;
LABEL_212:
        v58 = 10;
        goto LABEL_205;
      case 142:
        v57 = &unk_2806BBDA2;
LABEL_130:
        v58 = 21;
        goto LABEL_205;
      case 143:
        v57 = &unk_2806BBD25;
        v58 = 20;
        goto LABEL_205;
      case 144:
        v57 = &unk_2806BB85E;
LABEL_183:
        v58 = 9;
        goto LABEL_205;
      case 146:
        v43 = v56;
        goto LABEL_7;
      case 147:
      case 153:
      case 154:
      case 155:
      case 157:
      case 164:
      case 165:
      case 167:
      case 171:
      case 173:
      case 175:
      case 177:
      case 179:
      case 183:
      case 185:
      case 188:
      case 190:
      case 191:
        goto LABEL_229;
      case 148:
        v43 = v56;
        goto LABEL_9;
      case 149:
        bspop_boa(v0);
        OUTLINED_FUNCTION_6_22();
        bspush_ca_scan_boa();
        v138 = OUTLINED_FUNCTION_2_24();
        v141 = 2;
        goto LABEL_126;
      case 150:
        bspop_boa(v0);
        OUTLINED_FUNCTION_6_22();
        bspush_ca_scan_boa();
        v138 = OUTLINED_FUNCTION_2_24();
        v141 = 3;
        goto LABEL_126;
      case 151:
        bspop_boa(v0);
        v165 = advance_tok(v0);
        v50 = v56;
        if (!v165)
        {
          goto LABEL_4;
        }

        continue;
      case 159:
        v142 = OUTLINED_FUNCTION_0_25();
        lpta_rpta_loadp(v142, v143, v144);
        v107 = OUTLINED_FUNCTION_1_24();
        v111 = 11;
        goto LABEL_206;
      case 160:
        v168 = OUTLINED_FUNCTION_9_22();
        v170 = lpta_loadp_setscan_r(v168, v169);
        v50 = v56;
        if (v170)
        {
          continue;
        }

        v171 = OUTLINED_FUNCTION_2_24();
        v174 = testFldeq(v171, v172, v173, 1);
        v50 = v56;
        if (v174)
        {
          continue;
        }

LABEL_125:
        OUTLINED_FUNCTION_6_22();
        bspush_ca_scan_boa();
        v138 = OUTLINED_FUNCTION_3_23();
        v141 = 73;
LABEL_126:
        if (testFldeq(v138, v139, v140, v141))
        {
          v50 = v56;
        }

        else
        {
          v50 = 1;
        }

        continue;
      case 161:
      case 163:
        bspop_boa(v0);
        v59 = advance_tok(v0);
        v50 = v56;
        if (v59)
        {
          continue;
        }

        v57 = &unk_2806BBB06;
        goto LABEL_205;
      case 162:
LABEL_205:
        v205 = OUTLINED_FUNCTION_0_25();
        lpta_rpta_loadp(v205, v206, v207);
        v107 = OUTLINED_FUNCTION_1_24();
        v111 = v58;
        v109 = v57;
        goto LABEL_206;
      case 166:
LABEL_45:
        v92 = OUTLINED_FUNCTION_6_22();
        starttest(v92, v93);
        v94 = OUTLINED_FUNCTION_9_22();
        if (!lpta_loadp_setscan_l(v94, v95))
        {
          goto LABEL_46;
        }

        goto LABEL_4;
      case 169:
LABEL_46:
        savescptr(v0, 169, &v329);
        v96 = OUTLINED_FUNCTION_3_23();
        v98 = testFldeq(v96, v97, 1, 2);
        v50 = v56;
        if (v98)
        {
          continue;
        }

        v99 = advance_tok(v0);
        v50 = v56;
        if (v99)
        {
          continue;
        }

        v100 = OUTLINED_FUNCTION_9_22();
        v102 = lpta_loadp_setscan_r(v100, v101);
        v50 = v56;
        if (v102)
        {
          continue;
        }

        OUTLINED_FUNCTION_3_23();
        v103 = test_string_s();
        v50 = v56;
        if (v103)
        {
          continue;
        }

        v104 = OUTLINED_FUNCTION_0_25();
        lpta_rpta_loadp(v104, v105, v106);
        v107 = OUTLINED_FUNCTION_1_24();
        v111 = 2;
        goto LABEL_206;
      case 178:
LABEL_36:
        v79 = OUTLINED_FUNCTION_6_22();
        starttest(v79, v80);
        v81 = OUTLINED_FUNCTION_9_22();
        if (lpta_loadp_setscan_l(v81, v82))
        {
          goto LABEL_229;
        }

        OUTLINED_FUNCTION_3_23();
        if (test_string_s())
        {
          goto LABEL_229;
        }

        v83 = OUTLINED_FUNCTION_6_22();
        bspush_ca_scan(v83, v84);
        OUTLINED_FUNCTION_3_23();
LABEL_120:
        v166 = test_string_s();
        v50 = v56;
        if (v166)
        {
          continue;
        }

LABEL_121:
        v167 = test_string_s();
        v50 = v56;
        if (v167)
        {
          continue;
        }

        *(v0 + 168) = 1;
        *(v0 + 144) = v335;
        *(v0 + 128) = 0;
        insert_l(v0);
        goto LABEL_229;
      case 180:
        OUTLINED_FUNCTION_2_24();
        goto LABEL_120;
      case 181:
        goto LABEL_121;
      case 184:
LABEL_79:
        v129 = OUTLINED_FUNCTION_6_22();
        starttest(v129, v130);
        if (*(v0 + 2838) == *(v0 + 2822))
        {
          v131 = OUTLINED_FUNCTION_0_25();
          lpta_rpta_loadp(v131, v132, v133);
          v134 = OUTLINED_FUNCTION_1_24();
          if (!insert_2pt_s(v134, v135, 5, v136, v137))
          {
            goto LABEL_229;
          }
        }

LABEL_187:
        v202 = OUTLINED_FUNCTION_0_25();
        lpta_rpta_loadp(v202, v203, v204);
        v107 = OUTLINED_FUNCTION_1_24();
        v111 = 5;
        goto LABEL_206;
      default:
        goto LABEL_4;
    }
  }
}

uint64_t por_abbr()
{
  OUTLINED_FUNCTION_12_21();
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_10_22(v3, v4, v5, v6, v7, v8, v9, v10, v192, v196, v200, v204, v208, v212, v216, v220, v224, v228, v232, v236, v240, v244, v248, v252, v256, v260, v264, v268, v272, v276, v280, v284, v288, v289, v290, SHIDWORD(v290), v291, v292, v293, v294);
  OUTLINED_FUNCTION_14_19(v11, v12, v13, v14, v15, v16, v17, v18, v193, v197, v201, v205, v209, v213, v217, v221, v225, v229, v233, v237, v241, v245, v249, v253, v257, v261, v265, v269, v273, v277, v281, v285, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299);
  v19 = setjmp(v1);
  if (v19 || OUTLINED_FUNCTION_13_21(v19, v20, v21, v22, v23, v24, v25, v26, v194, v198, v202, v206, v210, v214, v218, v222, v226, v230, v234, v238, v242, v246, v250, v254, v258, v262, v266, v270, v274, v278, v282, v286, v288, v289, v290, v291, v292, v293, v294, v295, SBYTE4(v295), v296, SWORD2(v296), SBYTE6(v296), v297, SWORD2(v297), SBYTE6(v297), SHIBYTE(v297), v298, v299) || (v27 = OUTLINED_FUNCTION_5_22(), get_parm(v27, v28, v29, -6), OUTLINED_FUNCTION_11_21(), OUTLINED_FUNCTION_15_19(v30, v31, v32, v33, v34, v35, v36, v37, v195, v199, v203, v207, v211, v215, v219, v223, v227, v231, v235, v239, v243, v247, v251, v255, v259, v263, v267, v271, v275, v279, v283, v287, v288, v289, v290, SHIDWORD(v290)), fence_22(v0), v38 = OUTLINED_FUNCTION_5_22(), lpta_rpta_loadp(v38, v39, v40), actd_lookup(v0, 4, 0, 0)))
  {
LABEL_4:
    vretproc(v0);
    result = 94;
    goto LABEL_5;
  }

LABEL_6:
  HIWORD(v290) = 0;
  starttest_l(v0, 95);
  if (lpta_loadp_setscan_r(v0, &v293))
  {
    goto LABEL_7;
  }

  v43 = OUTLINED_FUNCTION_3_23();
  if (!testFldeq(v43, v44, 1, 2) && !advance_tok(v0))
  {
    move_i(v0, &v290 + 4, 1);
LABEL_7:
    actd_goto(v0);
  }

  while (2)
  {
    v45 = *(v0 + 104);
    if (v45)
    {
      *(v0 + 104) = 0;
      v46 = v45;
    }

    else
    {
      v46 = vback(v0, 0);
    }

    v47 = &unk_2806BB5EF;
    v48 = 5;
    switch(v46)
    {
      case 1:
        goto LABEL_103;
      case 2:
        v47 = &unk_2806BB663;
        goto LABEL_92;
      case 3:
        v47 = &unk_2806BB6ED;
        goto LABEL_94;
      case 4:
      case 73:
      case 77:
        v139 = OUTLINED_FUNCTION_0_25();
        lpta_rpta_loadp(v139, v140, v141);
        v108 = OUTLINED_FUNCTION_1_24();
        v112 = 9;
        goto LABEL_99;
      case 5:
        v47 = &unk_2806BB870;
        goto LABEL_68;
      case 6:
        v47 = &unk_2806BB972;
        goto LABEL_75;
      case 7:
        v47 = &unk_2806BB669;
        goto LABEL_92;
      case 8:
        v47 = &unk_2806BB795;
        goto LABEL_87;
      case 9:
        v47 = &unk_2806BB6F4;
        goto LABEL_94;
      case 10:
        v47 = &unk_2806BB9E4;
        goto LABEL_102;
      case 11:
        v93 = OUTLINED_FUNCTION_6_22();
        starttest(v93, v94);
        *(v0 + 136) = 1;
        *(v0 + 112) = v294;
        *(v0 + 128) = 0;
        if (lpta_tstctxtl())
        {
          goto LABEL_4;
        }

        v95 = OUTLINED_FUNCTION_3_23();
        setscan_l(v95);
        if (v96)
        {
          goto LABEL_4;
        }

        v97 = OUTLINED_FUNCTION_6_22();
        bspush_ca_scan(v97, v98);
        OUTLINED_FUNCTION_3_23();
        if (!test_string_s())
        {
          goto LABEL_45;
        }

        continue;
      case 12:
      case 17:
      case 49:
        v118 = OUTLINED_FUNCTION_0_25();
        lpta_rpta_loadp(v118, v119, v120);
        v81 = OUTLINED_FUNCTION_1_24();
        v85 = 9;
        goto LABEL_104;
      case 13:
      case 14:
      case 21:
      case 36:
      case 84:
        v148 = OUTLINED_FUNCTION_0_25();
        lpta_rpta_loadp(v148, v149, v150);
        v108 = OUTLINED_FUNCTION_1_24();
        v112 = 7;
        goto LABEL_99;
      case 15:
      case 37:
      case 60:
        v115 = OUTLINED_FUNCTION_0_25();
        lpta_rpta_loadp(v115, v116, v117);
        v73 = OUTLINED_FUNCTION_1_24();
        v77 = 7;
        goto LABEL_83;
      case 16:
      case 45:
      case 47:
      case 48:
        v127 = OUTLINED_FUNCTION_0_25();
        lpta_rpta_loadp(v127, v128, v129);
        v73 = OUTLINED_FUNCTION_1_24();
        v77 = 10;
        goto LABEL_83;
      case 18:
        v86 = OUTLINED_FUNCTION_6_22();
        starttest(v86, v87);
        goto LABEL_36;
      case 19:
        v113 = OUTLINED_FUNCTION_6_22();
        starttest(v113, v114);
        if (lpta_loadp_setscan_l(v0, &v293))
        {
          goto LABEL_90;
        }

        *(v0 + 136) = 1;
        *(v0 + 112) = *(v0 + 1232);
        *(v0 + 128) = 0;
        if (test_ptr(v0))
        {
          goto LABEL_90;
        }

LABEL_36:
        if (!ambig_abbr())
        {
          goto LABEL_4;
        }

        goto LABEL_90;
      case 20:
      case 83:
      case 91:
        v151 = OUTLINED_FUNCTION_0_25();
        lpta_rpta_loadp(v151, v152, v153);
        v108 = OUTLINED_FUNCTION_1_24();
        v112 = 6;
        goto LABEL_99;
      case 22:
        v47 = &unk_2806BB5F4;
        goto LABEL_103;
      case 23:
        v47 = &unk_2806BB7A5;
        goto LABEL_87;
      case 24:
        v47 = &unk_2806BB675;
        goto LABEL_92;
      case 25:
        v47 = &unk_2806BB97D;
LABEL_75:
        v48 = 11;
        goto LABEL_103;
      case 26:
        v47 = &unk_2806BB67B;
        goto LABEL_92;
      case 27:
        v47 = &unk_2806BB7AD;
        goto LABEL_87;
      case 28:
      case 30:
        v105 = OUTLINED_FUNCTION_0_25();
        lpta_rpta_loadp(v105, v106, v107);
        v108 = OUTLINED_FUNCTION_1_24();
        v112 = 14;
        goto LABEL_99;
      case 29:
      case 31:
        v124 = OUTLINED_FUNCTION_0_25();
        lpta_rpta_loadp(v124, v125, v126);
        v108 = OUTLINED_FUNCTION_1_24();
        v112 = 15;
        goto LABEL_99;
      case 32:
        v47 = &unk_2806BB88B;
        goto LABEL_68;
      case 33:
        v47 = &unk_2806BB894;
        goto LABEL_68;
      case 34:
        v47 = &unk_2806BB681;
        goto LABEL_92;
      case 35:
        OUTLINED_FUNCTION_7_22();
        if (!v51)
        {
          goto LABEL_4;
        }

        goto LABEL_117;
      case 38:
        v49 = OUTLINED_FUNCTION_6_22();
        starttest(v49, v50);
        OUTLINED_FUNCTION_7_22();
        if (!v51)
        {
          goto LABEL_76;
        }

        v52 = OUTLINED_FUNCTION_0_25();
        lpta_rpta_loadp(v52, v53, v54);
        v55 = OUTLINED_FUNCTION_1_24();
        if (insert_2pt_s(v55, v56, 4, v57, v58))
        {
          goto LABEL_76;
        }

        goto LABEL_126;
      case 39:
        OUTLINED_FUNCTION_7_22();
        if (!v51)
        {
          goto LABEL_122;
        }

        v182 = OUTLINED_FUNCTION_0_25();
        lpta_rpta_loadp(v182, v183, v184);
        v185 = OUTLINED_FUNCTION_1_24();
        if (insert_2pt_s(v185, v186, 4, v187, v188))
        {
          goto LABEL_122;
        }

        goto LABEL_126;
      case 40:
        v130 = OUTLINED_FUNCTION_0_25();
        lpta_rpta_loadp(v130, v131, v132);
        v81 = OUTLINED_FUNCTION_1_24();
        v85 = 5;
        goto LABEL_104;
      case 41:
        v47 = &unk_2806BB603;
        goto LABEL_103;
      case 42:
        v47 = &unk_2806BB71E;
        goto LABEL_94;
      case 43:
        v47 = &unk_2806BB608;
        goto LABEL_103;
      case 44:
        v47 = &unk_2806BB60D;
        goto LABEL_103;
      case 46:
        goto LABEL_47;
      case 50:
        v70 = OUTLINED_FUNCTION_0_25();
        lpta_rpta_loadp(v70, v71, v72);
        v73 = OUTLINED_FUNCTION_1_24();
        v77 = 14;
        goto LABEL_83;
      case 51:
        OUTLINED_FUNCTION_7_22();
        if (!v51)
        {
          goto LABEL_113;
        }

        v160 = OUTLINED_FUNCTION_0_25();
        lpta_rpta_loadp(v160, v161, v162);
        v163 = OUTLINED_FUNCTION_1_24();
        if (insert_2pt_s(v163, v164, 5, v165, v166))
        {
          goto LABEL_113;
        }

        goto LABEL_126;
      case 52:
      case 66:
      case 104:
      case 106:
LABEL_90:
        v142 = OUTLINED_FUNCTION_0_25();
        lpta_rpta_loadp(v142, v143, v144);
        v81 = OUTLINED_FUNCTION_1_24();
        v85 = 8;
        goto LABEL_104;
      case 53:
        v47 = &unk_2806BB599;
        v48 = 4;
        goto LABEL_103;
      case 54:
        v47 = &unk_2806BBCB8;
        v48 = 17;
        goto LABEL_103;
      case 55:
        v47 = &unk_2806BB7BD;
        goto LABEL_87;
      case 56:
        v47 = &unk_2806BB68D;
        goto LABEL_92;
      case 57:
        OUTLINED_FUNCTION_7_22();
        if (!v51)
        {
          goto LABEL_4;
        }

LABEL_117:
        v175 = OUTLINED_FUNCTION_0_25();
        lpta_rpta_loadp(v175, v176, v177);
        v178 = OUTLINED_FUNCTION_1_24();
        if (!insert_2pt_s(v178, v179, 5, v180, v181))
        {
          goto LABEL_126;
        }

        goto LABEL_4;
      case 58:
        v78 = OUTLINED_FUNCTION_0_25();
        lpta_rpta_loadp(v78, v79, v80);
        v81 = OUTLINED_FUNCTION_1_24();
        v85 = 4;
        goto LABEL_104;
      case 59:
        v47 = &unk_2806BB693;
        goto LABEL_92;
      case 61:
        v59 = OUTLINED_FUNCTION_0_25();
        lpta_rpta_loadp(v59, v60, v61);
        v62 = OUTLINED_FUNCTION_1_24();
        if (insert_2pt_s(v62, v63, 7, v64, v65))
        {
          continue;
        }

        v66 = OUTLINED_FUNCTION_3_23();
        insert_l(v66);
        lpta_storep(v0, &v288);
        v67 = OUTLINED_FUNCTION_3_23();
        if (insert_2pt_s(v67, v68, 12, v69, 0))
        {
          continue;
        }

        goto LABEL_126;
      case 62:
      case 63:
      case 65:
        v133 = OUTLINED_FUNCTION_0_25();
        lpta_rpta_loadp(v133, v134, v135);
        v73 = OUTLINED_FUNCTION_1_24();
        v77 = 9;
LABEL_83:
        if (insert_2pt_s(v73, v74, v77, v75, v76))
        {
          continue;
        }

LABEL_126:
        add_por_plural();
        goto LABEL_127;
      case 64:
      case 112:
LABEL_76:
        v121 = OUTLINED_FUNCTION_0_25();
        lpta_rpta_loadp(v121, v122, v123);
        v81 = OUTLINED_FUNCTION_1_24();
        v85 = 6;
        goto LABEL_104;
      case 67:
        v47 = &unk_2806BB7CD;
        goto LABEL_87;
      case 68:
        v47 = &unk_2806BB72C;
        goto LABEL_94;
      case 69:
        v47 = &unk_2806BB733;
LABEL_94:
        v48 = 7;
        goto LABEL_103;
      case 70:
        v47 = &unk_2806BB69F;
        goto LABEL_92;
      case 71:
        v47 = &unk_2806BB8C1;
LABEL_68:
        v48 = 9;
        goto LABEL_103;
      case 72:
        v47 = &unk_2806BB61C;
        goto LABEL_103;
      case 74:
        v154 = OUTLINED_FUNCTION_0_25();
        lpta_rpta_loadp(v154, v155, v156);
        v108 = OUTLINED_FUNCTION_1_24();
        v112 = 11;
        goto LABEL_99;
      case 75:
        v47 = &unk_2806BB9FC;
        goto LABEL_102;
      case 76:
        v47 = &unk_2806BBA08;
        goto LABEL_102;
      case 78:
        v47 = &unk_2806BB6A5;
        goto LABEL_92;
      case 79:
        v47 = &unk_2806BB6AB;
LABEL_92:
        v48 = 6;
        goto LABEL_103;
      case 80:
        v47 = &unk_2806BBA5F;
        v48 = 13;
        goto LABEL_103;
      case 81:
        v47 = &unk_2806BB7D5;
        goto LABEL_87;
      case 82:
        v47 = &unk_2806BBA14;
LABEL_102:
        v48 = 12;
        goto LABEL_103;
      case 85:
      case 86:
        v145 = OUTLINED_FUNCTION_0_25();
        lpta_rpta_loadp(v145, v146, v147);
        v108 = OUTLINED_FUNCTION_1_24();
        v112 = 8;
        goto LABEL_99;
      case 87:
        v88 = OUTLINED_FUNCTION_6_22();
        starttest(v88, v89);
        if (!ambig_abbr())
        {
          goto LABEL_4;
        }

        goto LABEL_40;
      case 88:
        v47 = &unk_2806BB7ED;
LABEL_87:
        v48 = 8;
        goto LABEL_103;
      case 89:
        v136 = OUTLINED_FUNCTION_0_25();
        lpta_rpta_loadp(v136, v137, v138);
        v108 = OUTLINED_FUNCTION_1_24();
        v112 = 12;
LABEL_99:
        if (insert_2pt_s(v108, v109, v112, v110, v111))
        {
          continue;
        }

        *(v0 + 2698) = *(v0 + 2710);
        goto LABEL_127;
      case 90:
        v47 = &unk_2806BB621;
LABEL_103:
        v157 = OUTLINED_FUNCTION_0_25();
        lpta_rpta_loadp(v157, v158, v159);
        v81 = OUTLINED_FUNCTION_1_24();
        v85 = v48;
        v83 = v47;
        goto LABEL_104;
      case 93:
        goto LABEL_6;
      case 94:
      case 97:
      case 101:
      case 102:
      case 103:
      case 105:
      case 107:
      case 109:
      case 110:
      case 111:
      case 113:
      case 114:
      case 116:
      case 117:
      case 119:
      case 120:
      case 121:
      case 122:
      case 124:
      case 125:
      case 128:
      case 129:
      case 130:
      case 131:
      case 132:
      case 133:
      case 134:
      case 136:
        goto LABEL_127;
      case 95:
        goto LABEL_7;
      case 96:
        goto LABEL_128;
      case 99:
LABEL_45:
        OUTLINED_FUNCTION_3_23();
        if (!test_string_s())
        {
          goto LABEL_46;
        }

        continue;
      case 100:
LABEL_46:
        v99 = OUTLINED_FUNCTION_6_22();
        if (test_synch(v99, v100, 1u, v101))
        {
          continue;
        }

LABEL_47:
        v102 = OUTLINED_FUNCTION_0_25();
        lpta_rpta_loadp(v102, v103, v104);
        v81 = OUTLINED_FUNCTION_1_24();
        v85 = 10;
LABEL_104:
        if (!insert_2pt_s(v81, v82, v85, v83, v84))
        {
          goto LABEL_127;
        }

        continue;
      case 115:
LABEL_122:
        if (*(v0 + 2646) != *(v0 + 2610))
        {
          goto LABEL_4;
        }

        v189 = OUTLINED_FUNCTION_0_25();
        lpta_rpta_loadp(v189, v190, v191);
        v170 = OUTLINED_FUNCTION_1_24();
        v174 = 4;
        goto LABEL_124;
      case 123:
LABEL_113:
        if (*(v0 + 2646) != *(v0 + 2610))
        {
          goto LABEL_4;
        }

        v167 = OUTLINED_FUNCTION_0_25();
        lpta_rpta_loadp(v167, v168, v169);
        v170 = OUTLINED_FUNCTION_1_24();
        v174 = 5;
LABEL_124:
        if (insert_2pt_s(v170, v171, v174, v172, v173))
        {
          goto LABEL_4;
        }

LABEL_127:
        mark_uppercase();
LABEL_128:
        vretproc(v0);
        result = 0;
        break;
      case 135:
LABEL_40:
        v90 = OUTLINED_FUNCTION_0_25();
        lpta_rpta_loadp(v90, v91, v92);
        v81 = OUTLINED_FUNCTION_1_24();
        v85 = 11;
        goto LABEL_104;
      default:
        goto LABEL_4;
    }

    break;
  }

LABEL_5:
  v42 = *MEMORY[0x277D85DE8];
  return result;
}