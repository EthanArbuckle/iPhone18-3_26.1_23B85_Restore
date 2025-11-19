uint64_t ce_vow_elision(uint64_t a1)
{
  v81 = *MEMORY[0x277D85DE8];
  v74 = 0;
  v75 = 0;
  OUTLINED_FUNCTION_24_25();
  bzero(&v51, v3);
  OUTLINED_FUNCTION_23_25();
  OUTLINED_FUNCTION_61_12(v4, v5, v6, v7, v8, v9, v10, v11, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80);
  v12 = setjmp(v1);
  if (v12 || OUTLINED_FUNCTION_12_34(v12, v13, v14, v15, v16, v17, v18, v19, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, SBYTE4(v76), v77, SWORD2(v77), SBYTE6(v77), v78, SWORD2(v78), SBYTE6(v78), SHIBYTE(v78), v79, v80))
  {
    goto LABEL_3;
  }

  v23 = OUTLINED_FUNCTION_38_16();
  push_ptr_init(v23, v24);
  fence_36(a1, 0, &null_str_13);
  v25 = OUTLINED_FUNCTION_11_34();
  fence_36(v25, v26, v27);
  v28 = OUTLINED_FUNCTION_31_20();
  starttest(v28, v29);
  if (!lpta_loadp_setscan_l(a1, a1 + 1752))
  {
    v44 = OUTLINED_FUNCTION_9_34();
    bspush_ca_scan(v44, v45);
    OUTLINED_FUNCTION_18_31();
    if (!test_string_s())
    {
LABEL_16:
      *(a1 + 136) = 1;
      v46 = *(a1 + 1744);
      if (!OUTLINED_FUNCTION_30_21())
      {
LABEL_23:
        v20 = 0;
        goto LABEL_4;
      }
    }

LABEL_17:
    while (2)
    {
      v47 = *(a1 + 104);
      if (v47)
      {
        v48 = OUTLINED_FUNCTION_28_22(v47);
      }

      else
      {
        v49 = OUTLINED_FUNCTION_44_14();
        v48 = vback(v49, v50);
      }

      switch(v48)
      {
        case 1:
          break;
        case 2:
          OUTLINED_FUNCTION_20_27();
          if (!test_string_s())
          {
            goto LABEL_16;
          }

          continue;
        case 3:
          goto LABEL_16;
        case 4:
          goto LABEL_23;
        case 6:
          goto LABEL_7;
        case 7:
          goto LABEL_11;
        case 8:
          goto LABEL_13;
        default:
          goto LABEL_3;
      }

      break;
    }
  }

  v30 = OUTLINED_FUNCTION_9_34();
  starttest(v30, v31);
  v32 = OUTLINED_FUNCTION_13_33();
  if (!lpta_loadp_setscan_r(v32, v33))
  {
LABEL_7:
    OUTLINED_FUNCTION_39_15(6, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74);
    v34 = OUTLINED_FUNCTION_5_35();
    if (!testFldeq(v34, v35, v36, 7) && !advance_tok(a1))
    {
      v37 = OUTLINED_FUNCTION_13_33();
      if (!lpta_loadp_setscan_l(v37, v38) && !advance_tok(a1))
      {
LABEL_11:
        v39 = OUTLINED_FUNCTION_9_34();
        if (!chstream(v39, v40, 1u))
        {
          OUTLINED_FUNCTION_20_27();
          if (!test_string_s())
          {
LABEL_13:
            v41 = OUTLINED_FUNCTION_9_34();
            if (!test_synch(v41, v42, 1u, v43))
            {
              goto LABEL_23;
            }
          }
        }
      }
    }

    goto LABEL_17;
  }

LABEL_3:
  v20 = 94;
LABEL_4:
  vretproc(a1);
  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

void le_de_vow_elision()
{
  OUTLINED_FUNCTION_42_14();
  v1 = v0;
  v100 = *MEMORY[0x277D85DE8];
  v87 = 0;
  v88 = 0;
  OUTLINED_FUNCTION_24_25();
  bzero(v86, v2);
  OUTLINED_FUNCTION_23_25();
  bzero(v99, v3);
  v4 = setjmp(v99);
  if (v4 || OUTLINED_FUNCTION_55_13(v4, v86, v5, v6, v7, v8, v9, v10, v85, v86[0], v86[1], v86[2], v86[3], v86[4], v86[5], v86[6], v86[7], v86[8], v86[9], v86[10], v86[11], v86[12], v86[13], v86[14], v86[15], v86[16], v86[17], v86[18], v86[19], v86[20], v86[21], v86[22], v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99[0]))
  {
    goto LABEL_3;
  }

  v12 = OUTLINED_FUNCTION_54_13();
  v14 = push_ptr_init(v12, v13);
  v15 = 0;
  OUTLINED_FUNCTION_46_14(v14, v16, &null_str_13);
  v17 = OUTLINED_FUNCTION_21_26();
  fence_36(v17, v18, v19);
  v20 = OUTLINED_FUNCTION_40_15();
  starttest(v20, v21);
  v22 = OUTLINED_FUNCTION_13_33();
  v24 = 0;
  if (!lpta_loadp_setscan_l(v22, v23))
  {
LABEL_9:
    savescptr(v1, 2, &v87);
    v31 = advance_tok(v1);
    v30 = v15;
    if (v31)
    {
      goto LABEL_19;
    }

LABEL_12:
    v32 = OUTLINED_FUNCTION_9_34();
    if (chstream(v32, v33, 1u))
    {
      goto LABEL_18;
    }

    v34 = OUTLINED_FUNCTION_9_34();
    bspush_ca_scan(v34, v35);
    OUTLINED_FUNCTION_20_27();
    v36 = test_string_s();
    v37 = v15;
    v30 = v15;
    if (v36)
    {
      goto LABEL_19;
    }

LABEL_14:
    v15 = v37;
    v38 = OUTLINED_FUNCTION_9_34();
    if (test_synch(v38, v39, 1u, v40))
    {
      goto LABEL_18;
    }

    v41 = OUTLINED_FUNCTION_13_33();
    if (lpta_loadp_setscan_r(v41, v42))
    {
      goto LABEL_18;
    }

    v43 = OUTLINED_FUNCTION_0_39();
    if (testFldeq(v43, v44, v45, 2))
    {
      goto LABEL_18;
    }

    v46 = advance_tok(v1);
LABEL_38:
    v30 = v15;
    if (!v46)
    {
      goto LABEL_3;
    }

    goto LABEL_19;
  }

LABEL_5:
  v15 = v24;
  v25 = OUTLINED_FUNCTION_9_34();
  starttest(v25, v26);
  v27 = OUTLINED_FUNCTION_15_32();
  if (!lpta_loadp_setscan_l(v27, v28))
  {
LABEL_6:
    savescptr(v1, 8, &v87);
    OUTLINED_FUNCTION_7_35();
    v29 = test_string_s();
    v15 = v24;
    v30 = v24;
    if (v29)
    {
      goto LABEL_19;
    }

LABEL_41:
    v68 = OUTLINED_FUNCTION_9_34();
    if (!chstream(v68, v69, 2u))
    {
      v70 = OUTLINED_FUNCTION_4_36();
      if (!testFldeq(v70, v71, v72, 1))
      {
        OUTLINED_FUNCTION_9_34();
        bspush_ca_scan_boa();
        v73 = OUTLINED_FUNCTION_22_25();
        if (OUTLINED_FUNCTION_60_12(v73, v74))
        {
          v30 = v15;
        }

        else
        {
          v30 = 1;
        }

        goto LABEL_19;
      }
    }

    goto LABEL_18;
  }

LABEL_47:
  v75 = OUTLINED_FUNCTION_9_34();
  starttest(v75, v76);
  if (lpta_loadp_setscan_l(v1, v1 + 1752))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_18_31();
  if (test_string_s())
  {
    goto LABEL_3;
  }

LABEL_49:
  v77 = OUTLINED_FUNCTION_9_34();
  if (test_synch(v77, v78, 1u, v79) || (v80 = OUTLINED_FUNCTION_16_32(), lpta_loadp_setscan_r(v80, v81)))
  {
LABEL_18:
    v30 = v15;
    goto LABEL_19;
  }

  v82 = OUTLINED_FUNCTION_9_34();
  bspush_ca_scan(v82, v83);
  OUTLINED_FUNCTION_18_31();
  v84 = test_string_s();
  v30 = v15;
  v50 = v15;
  if (!v84)
  {
LABEL_37:
    v15 = v50;
    *(v1 + 136) = 1;
    v67 = *(v1 + 1792);
    v46 = OUTLINED_FUNCTION_30_21();
    goto LABEL_38;
  }

LABEL_19:
  while (2)
  {
    v47 = *(v1 + 104);
    if (v47)
    {
      v48 = OUTLINED_FUNCTION_28_22(v47);
      v24 = v49;
    }

    else
    {
      v48 = vback(v1, v30);
      v24 = 0;
    }

    if ((v48 - 1) <= 0xF)
    {
      OUTLINED_FUNCTION_59_12();
      v37 = v24;
      v50 = v24;
      switch(v51)
      {
        case 1:
          v15 = v24;
          goto LABEL_9;
        case 2:
          v15 = v24;
          goto LABEL_12;
        case 3:
          OUTLINED_FUNCTION_21_26();
          v52 = test_string_s();
          v37 = v24;
          v30 = v24;
          if (!v52)
          {
            goto LABEL_14;
          }

          continue;
        case 4:
          goto LABEL_14;
        case 5:
        case 10:
          goto LABEL_3;
        case 6:
          v15 = v24;
          goto LABEL_47;
        case 7:
          goto LABEL_6;
        case 8:
          v15 = v24;
          goto LABEL_41;
        case 9:
          bspop_boa(v1);
          v57 = advance_tok(v1);
          v30 = v24;
          if (v57)
          {
            continue;
          }

          v58 = OUTLINED_FUNCTION_37_16();
          v60 = lpta_loadp_setscan_r(v58, v59);
          v30 = v24;
          if (v60)
          {
            continue;
          }

          v61 = advance_tok(v1);
          v30 = v24;
          if (v61)
          {
            continue;
          }

          v62 = advance_tok(v1);
          v30 = v24;
          if (v62)
          {
            continue;
          }

          OUTLINED_FUNCTION_21_26();
          v63 = test_string_s();
          v30 = v24;
          if (v63)
          {
            continue;
          }

          *(v1 + 136) = 1;
          v64 = *(v1 + 1776);
          v65 = OUTLINED_FUNCTION_30_21();
          v30 = v24;
          if (v65)
          {
            continue;
          }

          goto LABEL_3;
        case 11:
          v15 = v24;
          goto LABEL_49;
        case 12:
          v53 = OUTLINED_FUNCTION_53_13();
          bspush_ca_scan(v53, v54);
          OUTLINED_FUNCTION_21_26();
          goto LABEL_36;
        case 13:
          goto LABEL_37;
        case 14:
          v55 = OUTLINED_FUNCTION_41_14();
          bspush_ca_scan(v55, v56);
          OUTLINED_FUNCTION_21_26();
          goto LABEL_36;
        case 15:
          OUTLINED_FUNCTION_21_26();
LABEL_36:
          v66 = test_string_s();
          v50 = v24;
          v30 = v24;
          if (!v66)
          {
            goto LABEL_37;
          }

          continue;
        default:
          goto LABEL_5;
      }
    }

    break;
  }

LABEL_3:
  OUTLINED_FUNCTION_57_12();
  v11 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_48_14();
}

uint64_t ne_vow_elision(void *a1)
{
  OUTLINED_FUNCTION_14_33(*MEMORY[0x277D85DE8], v43);
  OUTLINED_FUNCTION_8_35(v3, v4, v5, v6, v7, v8, v9, v10, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_1_38(v11, v12, v13, v14, v15, v16, v17, v18, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, *v91, v91[4], *v93, *&v93[4], v93[6], v95, SWORD2(v95), SBYTE6(v95), SHIBYTE(v95), v97, v99) || (fence_36(a1, 0, &null_str_13), v19 = OUTLINED_FUNCTION_11_34(), fence_36(v19, v20, v21), v22 = OUTLINED_FUNCTION_31_20(), starttest(v22, v23), v24 = OUTLINED_FUNCTION_2_37(), lpta_loadp_setscan_l(v24, v25)))
  {
LABEL_4:
    vretproc(a1);
    result = 94;
  }

  else
  {
    v28 = OUTLINED_FUNCTION_0_39();
    if (testFldeq(v28, v29, v30, 4) || advance_tok(a1) || (v31 = OUTLINED_FUNCTION_27_23(), lpta_loadp_setscan_l(v31, v32)) || (v33 = OUTLINED_FUNCTION_4_36(), testFldeq(v33, v34, v35, 1)))
    {
      v36 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_29_22();
      bspush_ca_scan_boa();
      v41 = OUTLINED_FUNCTION_26_25();
      v36 = !OUTLINED_FUNCTION_60_12(v41, v42);
    }

    v37 = v36;
    while (1)
    {
      v38 = a1[13];
      if (v38)
      {
        v39 = OUTLINED_FUNCTION_28_22(v38);
        v37 = v40;
      }

      else
      {
        v39 = vback(a1, v37);
        v37 = 0;
      }

      if (v39 != 2)
      {
        break;
      }

      bspop_boa(a1);
      if (!advance_tok(a1))
      {
        goto LABEL_19;
      }
    }

    if (v39 != 3)
    {
      goto LABEL_4;
    }

LABEL_19:
    vretproc(a1);
    result = 0;
  }

  v27 = *MEMORY[0x277D85DE8];
  return result;
}

void break_into_phones()
{
  OUTLINED_FUNCTION_42_14();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v56 = *MEMORY[0x277D85DE8];
  memset(v51, 0, sizeof(v51));
  v49 = 0;
  v50 = 0;
  OUTLINED_FUNCTION_24_25();
  bzero(v48, v6);
  OUTLINED_FUNCTION_23_25();
  bzero(v55, v7);
  if (!setjmp(v55) && !ventproc(v5, v48, v54, v53, v52, v55))
  {
    v9 = OUTLINED_FUNCTION_52_13();
    get_parm(v9, v10, v3, -6);
    v11 = OUTLINED_FUNCTION_47_14();
    get_parm(v11, v12, v1, -6);
    v13 = OUTLINED_FUNCTION_45_14();
    push_ptr_init(v13, v14);
    v15 = OUTLINED_FUNCTION_37_16();
    v17 = push_ptr_init(v15, v16);
    OUTLINED_FUNCTION_46_14(v17, v18, &null_str_13);
    startloop(v5, 1);
    v19 = OUTLINED_FUNCTION_52_13();
    lpta_loadpn(v19, v20);
    OUTLINED_FUNCTION_33_19();
    lpta_mover();
    v21 = OUTLINED_FUNCTION_50_14();
    lpta_storep(v21, v22);
    v23 = OUTLINED_FUNCTION_47_14();
    lpta_loadpn(v23, v24);
    OUTLINED_FUNCTION_33_19();
    lpta_mover();
    v25 = OUTLINED_FUNCTION_45_14();
    lpta_storep(v25, v26);
LABEL_5:
    while (1)
    {
      v27 = OUTLINED_FUNCTION_50_14();
      if (forall_to_test(v27, v28, v51))
      {
        break;
      }

LABEL_6:
      v29 = OUTLINED_FUNCTION_41_14();
      bspush_ca(v29);
      v30 = OUTLINED_FUNCTION_50_14();
      if (lpta_loadp_setscan_r(v30, v31) || advance_tok(v5))
      {
        break;
      }

LABEL_15:
      savescptr(v5, 4, (v5 + 199));
LABEL_16:
      v35 = OUTLINED_FUNCTION_50_14();
      if (lpta_loadp_setscan_r(v35, v36) || (OUTLINED_FUNCTION_33_19(), test_string_s()) || (OUTLINED_FUNCTION_43_14(), v37 = OUTLINED_FUNCTION_33_19(), insert_2pt_s(v37, v38, 2, &unk_28064B7C8, 0)) || (OUTLINED_FUNCTION_43_14(), OUTLINED_FUNCTION_33_19(), mark_s()))
      {
LABEL_20:
        v39 = OUTLINED_FUNCTION_50_14();
        if (lpta_loadp_setscan_r(v39, v40) || (OUTLINED_FUNCTION_33_19(), test_string_s()) || (OUTLINED_FUNCTION_43_14(), v41 = OUTLINED_FUNCTION_33_19(), insert_2pt_s(v41, v42, 2, &unk_28064B7CA, 0)) || (OUTLINED_FUNCTION_43_14(), OUTLINED_FUNCTION_33_19(), mark_s()))
        {
LABEL_24:
          OUTLINED_FUNCTION_35_16();
          if (v43)
          {
            break_into_canfren_phones(v5);
          }
        }
      }

LABEL_27:
      insert_nasal_glide();
LABEL_28:
      lpta_loadpn(v5, v5 + 199);
      v44 = OUTLINED_FUNCTION_47_14();
      rpta_loadpn(v44, v45);
      if (!compare_ptas(v5) && !testeq(v5))
      {
        goto LABEL_3;
      }

LABEL_30:
      lpta_loadpn(v5, v5 + 199);
      OUTLINED_FUNCTION_33_19();
      lpta_mover();
      v46 = OUTLINED_FUNCTION_37_16();
      lpta_storep(v46, v47);
      forall_cont_from(v5);
    }

    while (2)
    {
      v32 = v5[13];
      if (v32)
      {
        v33 = OUTLINED_FUNCTION_28_22(v32);
      }

      else
      {
        v33 = vback(v5, 0);
      }

      if ((v33 - 1) <= 0xB)
      {
        OUTLINED_FUNCTION_59_12();
        switch(v34)
        {
          case 1:
            goto LABEL_16;
          case 2:
            if (forto_adv_upto_r(v5, 1, 2, 12, 2, (v5 + 197)))
            {
              continue;
            }

            break;
          case 3:
            goto LABEL_15;
          case 4:
            goto LABEL_20;
          case 5:
          case 7:
            goto LABEL_27;
          case 6:
            goto LABEL_24;
          case 8:
            goto LABEL_28;
          case 9:
            goto LABEL_30;
          case 10:
            goto LABEL_5;
          case 11:
            goto LABEL_6;
          default:
            goto LABEL_3;
        }
      }

      break;
    }
  }

LABEL_3:
  OUTLINED_FUNCTION_57_12();
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_48_14();
}

void insert_nasal_glide()
{
  OUTLINED_FUNCTION_42_14();
  v1 = v0;
  v3 = v2;
  v85 = *MEMORY[0x277D85DE8];
  v72 = 0;
  v73 = 0;
  v70 = 0;
  v71 = 0;
  OUTLINED_FUNCTION_24_25();
  bzero(v47, v4);
  OUTLINED_FUNCTION_23_25();
  bzero(v84, v5);
  v6 = setjmp(v84);
  if (!v6 && !OUTLINED_FUNCTION_49_14(v6, v7, v8, v9, v10, v11, v12, v13, v46, v47[0], v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84[0]))
  {
    get_parm(v3, &v72, v1, -6);
    v15 = OUTLINED_FUNCTION_54_13();
    v17 = push_ptr_init(v15, v16);
    OUTLINED_FUNCTION_46_14(v17, v18, &null_str_13);
    v19 = OUTLINED_FUNCTION_9_34();
    starttest(v19, v20);
    v21 = OUTLINED_FUNCTION_27_23();
    if (!lpta_loadp_setscan_l(v21, v22))
    {
      v23 = 0;
      while (2)
      {
        v24 = OUTLINED_FUNCTION_40_15();
        savescptr(v24, v25, &v70);
        v26 = OUTLINED_FUNCTION_21_26();
        if (!OUTLINED_FUNCTION_60_12(v26, v27) && !advance_tok(v3))
        {
          v28 = OUTLINED_FUNCTION_37_16();
          if (!lpta_loadp_setscan_r(v28, v29))
          {
            bspush_ca_scan_boa();
            v30 = OUTLINED_FUNCTION_52_13();
            bspush_ca_scan(v30, v31);
            OUTLINED_FUNCTION_21_26();
            OUTLINED_FUNCTION_34_17();
LABEL_10:
            v36 = testFldeq(v32, v33, v34, v35);
            v37 = v23;
            if (!v36)
            {
LABEL_18:
              v23 = v37;
              if (!advance_tok(v3))
              {
                v23 = 1;
              }
            }
          }
        }

        v38 = *(v3 + 104);
        if (v38)
        {
          v39 = OUTLINED_FUNCTION_28_22(v38);
          v23 = v40;
        }

        else
        {
          v39 = vback(v3, v23);
          v23 = 0;
        }

        v37 = v23;
        switch(v39)
        {
          case 2:
            continue;
          case 3:
            bspop_boa(v3);
            *(v3 + 168) = 1;
            *(v3 + 144) = v73;
            *(v3 + 128) = 0;
            v45 = OUTLINED_FUNCTION_22_25();
            insert_l(v45);
            break;
          case 4:
            v41 = OUTLINED_FUNCTION_41_14();
            bspush_ca_scan(v41, v42);
            v32 = OUTLINED_FUNCTION_21_26();
            v34 = 4;
            v35 = 4;
            goto LABEL_10;
          case 5:
            goto LABEL_18;
          case 6:
            v43 = OUTLINED_FUNCTION_51_13();
            bspush_ca_scan(v43, v44);
            v32 = OUTLINED_FUNCTION_19_27();
            v35 = 24;
            goto LABEL_10;
          case 7:
            v32 = OUTLINED_FUNCTION_19_27();
            v35 = 23;
            goto LABEL_10;
          default:
            goto LABEL_3;
        }

        break;
      }
    }
  }

LABEL_3:
  vretproc(v3);
  v14 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_48_14();
}

uint64_t OUTLINED_FUNCTION_1_38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, char a33, int a34, __int16 a35, char a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, char a42)
{

  return ventproc(v42, &a9, &a40, &a36, &a33, &a42);
}

void OUTLINED_FUNCTION_8_35(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{

  bzero(&a36, 0xC0uLL);
}

uint64_t OUTLINED_FUNCTION_12_34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, char a35, int a36, __int16 a37, char a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, char a44)
{

  return ventproc(v44, &a9, &a42, &a38, &a35, &a44);
}

void OUTLINED_FUNCTION_14_33(uint64_t a1@<X8>, uint64_t a2)
{
  *(v2 - 40) = a1;

  bzero(&a2, 0xB8uLL);
}

uint64_t OUTLINED_FUNCTION_30_21()
{
  *(v1 + 112) = v0;
  *(v1 + 128) = 0;

  return test_ptr(v1);
}

double OUTLINED_FUNCTION_39_15@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{

  *&result = savescptr(v25, a1, &a25).n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_43_14()
{

  return lpta_rpta_loadp(v0, v0 + 1576, v0 + 1592);
}

void *OUTLINED_FUNCTION_46_14(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return fence_36(v3, 0, a3);
}

uint64_t OUTLINED_FUNCTION_49_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37, char a38, int a39, __int16 a40, char a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, char a47)
{

  return ventproc(v47, &a10, &a45, &a41, &a38, &a47);
}

uint64_t OUTLINED_FUNCTION_55_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, char a36, int a37, __int16 a38, char a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, char a45)
{

  return ventproc(v45, a2, &a43, &a39, &a36, &a45);
}

uint64_t OUTLINED_FUNCTION_56_12()
{

  return rpta_loadpn(v0, v0 + 3536);
}

BOOL OUTLINED_FUNCTION_57_12()
{

  return vretproc(v0);
}

BOOL OUTLINED_FUNCTION_60_12(uint64_t a1, unsigned int a2)
{

  return testFldeq(a1, a2, 11, 1);
}

void OUTLINED_FUNCTION_61_12(uint64_t a1, size_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{

  bzero(&a38, a2);
}

void *fence_37(uint64_t a1, int a2, uint64_t a3)
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
  OUTLINED_FUNCTION_132_4();
  v1 = v0;
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_158_3();
  v180 = 0;
  v181 = 0;
  OUTLINED_FUNCTION_90_9();
  bzero(v179, v3);
  OUTLINED_FUNCTION_89_9();
  bzero(v195, v4);
  v5 = setjmp(v195);
  if (!v5 && !OUTLINED_FUNCTION_150_4(v5, v179, v6, v7, v8, v9, v10, v11, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179[0], v179[1], v179[2], v179[3], v179[4], v179[5], v179[6], v179[7], v179[8], v179[9], v179[10], v179[11], v179[12], v179[13], v179[14], v179[15], v179[16], v179[17], v179[18], v179[19], v179[20], v179[21], v179[22], v180, v181, v182[0], v182[1], v183[0], v183[1], v184[0], v184[1], v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195[0]))
  {
    v13 = OUTLINED_FUNCTION_97_7();
    push_ptr_init(v13, v14);
    v15 = OUTLINED_FUNCTION_74_12();
    push_ptr_init(v15, v16);
    v17 = OUTLINED_FUNCTION_80_11();
    push_ptr_init(v17, v18);
    push_ptr_init(v1, &v180);
    v19 = OUTLINED_FUNCTION_98_7();
    fence_37(v19, v20, v21);
    v22 = OUTLINED_FUNCTION_113_4();
    fence_37(v22, v23, v24);
    startloop(v1, 1);
    v25 = OUTLINED_FUNCTION_99_7();
    lpta_loadpn(v25, v26);
    OUTLINED_FUNCTION_113_4();
    lpta_mover();
    v27 = OUTLINED_FUNCTION_97_7();
    lpta_storep(v27, v28);
    v29 = OUTLINED_FUNCTION_105_5();
    lpta_loadpn(v29, v30);
    OUTLINED_FUNCTION_113_4();
    lpta_mover();
    v31 = OUTLINED_FUNCTION_80_11();
    lpta_storep(v31, v32);
    v33 = 0;
    while (1)
    {
LABEL_5:
      v34 = OUTLINED_FUNCTION_97_7();
      v36 = forall_to_test(v34, v35, v182);
      v37 = v33;
      if (v36)
      {
        goto LABEL_37;
      }

LABEL_6:
      v33 = v37;
      bspush_ca(v1);
      v38 = OUTLINED_FUNCTION_97_7();
      if (lpta_loadp_setscan_r(v38, v39))
      {
        goto LABEL_37;
      }

      v40 = advance_tok(v1);
      v41 = v33;
      if (v40)
      {
        goto LABEL_37;
      }

LABEL_8:
      v33 = v41;
      savescptr(v1, 4, v183);
      while (2)
      {
        v42 = OUTLINED_FUNCTION_110_4();
        starttest(v42, v43);
        v44 = OUTLINED_FUNCTION_97_7();
        if (!lpta_loadp_setscan_r(v44, v45))
        {
          bspush_ca_scan_boa();
          v70 = OUTLINED_FUNCTION_113_4();
          v72 = testFldeq(v70, v71, 4, 1);
LABEL_25:
          if (!v72)
          {
            LODWORD(v33) = 1;
          }

LABEL_37:
          v81 = v33;
LABEL_38:
          v82 = v1[13];
          if (v82)
          {
            v83 = OUTLINED_FUNCTION_92_9(v82);
            v33 = v84;
          }

          else
          {
            v83 = vback(v1, v81);
            v33 = 0;
          }

          v74 = v33;
          v76 = v33;
          v80 = v33;
          v69 = v33;
          switch(v83)
          {
            case 1:
              goto LABEL_137;
            case 2:
              continue;
            case 3:
              v85 = forto_adv_upto_r(v1, 1, 2, 87, 1, v184);
              v81 = v33;
              if (!v85)
              {
                goto LABEL_137;
              }

              goto LABEL_38;
            case 4:
              v41 = v33;
              goto LABEL_8;
            case 5:
              goto LABEL_10;
            case 6:
              bspop_boa(v1);
              v86 = advance_tok(v1);
              v81 = v33;
              if (v86)
              {
                goto LABEL_38;
              }

              v100 = OUTLINED_FUNCTION_71_12();
              if (lpta_loadp_setscan_r(v100, v101))
              {
                goto LABEL_64;
              }

              OUTLINED_FUNCTION_5_36();
              if (test_string_s())
              {
                goto LABEL_64;
              }

              OUTLINED_FUNCTION_25_26();
              b_rules();
              goto LABEL_128;
            case 7:
LABEL_64:
              v103 = OUTLINED_FUNCTION_71_12();
              if (lpta_loadp_setscan_r(v103, v104))
              {
                goto LABEL_66;
              }

              OUTLINED_FUNCTION_5_36();
              if (test_string_s())
              {
                goto LABEL_66;
              }

              OUTLINED_FUNCTION_25_26();
              c_rules();
              goto LABEL_128;
            case 8:
            case 9:
            case 11:
            case 13:
            case 15:
            case 17:
            case 19:
            case 21:
            case 23:
            case 25:
            case 27:
            case 29:
            case 31:
            case 33:
            case 35:
            case 37:
            case 39:
            case 41:
            case 43:
            case 45:
            case 47:
            case 49:
            case 50:
            case 51:
            case 56:
            case 58:
            case 60:
            case 65:
            case 70:
            case 72:
            case 74:
            case 79:
              goto LABEL_128;
            case 10:
LABEL_66:
              v105 = OUTLINED_FUNCTION_71_12();
              if (lpta_loadp_setscan_r(v105, v106))
              {
                goto LABEL_68;
              }

              OUTLINED_FUNCTION_5_36();
              if (test_string_s())
              {
                goto LABEL_68;
              }

              OUTLINED_FUNCTION_25_26();
              cedille_rules();
              goto LABEL_128;
            case 12:
LABEL_68:
              v107 = OUTLINED_FUNCTION_71_12();
              if (lpta_loadp_setscan_r(v107, v108))
              {
                goto LABEL_70;
              }

              OUTLINED_FUNCTION_5_36();
              if (test_string_s())
              {
                goto LABEL_70;
              }

              OUTLINED_FUNCTION_25_26();
              d_rules();
              goto LABEL_128;
            case 14:
LABEL_70:
              v109 = OUTLINED_FUNCTION_71_12();
              if (lpta_loadp_setscan_r(v109, v110))
              {
                goto LABEL_72;
              }

              OUTLINED_FUNCTION_5_36();
              if (test_string_s())
              {
                goto LABEL_72;
              }

              OUTLINED_FUNCTION_25_26();
              f_rules();
              goto LABEL_128;
            case 16:
LABEL_72:
              v111 = OUTLINED_FUNCTION_71_12();
              if (lpta_loadp_setscan_r(v111, v112))
              {
                goto LABEL_74;
              }

              OUTLINED_FUNCTION_5_36();
              if (test_string_s())
              {
                goto LABEL_74;
              }

              OUTLINED_FUNCTION_25_26();
              g_rules();
              goto LABEL_128;
            case 18:
LABEL_74:
              v113 = OUTLINED_FUNCTION_71_12();
              if (lpta_loadp_setscan_r(v113, v114))
              {
                goto LABEL_76;
              }

              OUTLINED_FUNCTION_5_36();
              if (test_string_s())
              {
                goto LABEL_76;
              }

              OUTLINED_FUNCTION_25_26();
              h_rules();
              goto LABEL_128;
            case 20:
LABEL_76:
              v115 = OUTLINED_FUNCTION_71_12();
              if (lpta_loadp_setscan_r(v115, v116))
              {
                goto LABEL_78;
              }

              OUTLINED_FUNCTION_5_36();
              if (test_string_s())
              {
                goto LABEL_78;
              }

              OUTLINED_FUNCTION_25_26();
              j_rules();
              goto LABEL_128;
            case 22:
LABEL_78:
              v117 = OUTLINED_FUNCTION_71_12();
              if (lpta_loadp_setscan_r(v117, v118))
              {
                goto LABEL_80;
              }

              OUTLINED_FUNCTION_5_36();
              if (test_string_s())
              {
                goto LABEL_80;
              }

              OUTLINED_FUNCTION_25_26();
              k_rules();
              goto LABEL_128;
            case 24:
LABEL_80:
              v119 = OUTLINED_FUNCTION_71_12();
              if (lpta_loadp_setscan_r(v119, v120))
              {
                goto LABEL_82;
              }

              OUTLINED_FUNCTION_5_36();
              if (test_string_s())
              {
                goto LABEL_82;
              }

              OUTLINED_FUNCTION_25_26();
              l_rules();
              goto LABEL_128;
            case 26:
LABEL_82:
              v121 = OUTLINED_FUNCTION_71_12();
              if (lpta_loadp_setscan_r(v121, v122))
              {
                goto LABEL_84;
              }

              OUTLINED_FUNCTION_5_36();
              if (test_string_s())
              {
                goto LABEL_84;
              }

              OUTLINED_FUNCTION_25_26();
              m_rules();
              goto LABEL_128;
            case 28:
LABEL_84:
              v123 = OUTLINED_FUNCTION_71_12();
              if (lpta_loadp_setscan_r(v123, v124))
              {
                goto LABEL_86;
              }

              OUTLINED_FUNCTION_5_36();
              if (test_string_s())
              {
                goto LABEL_86;
              }

              OUTLINED_FUNCTION_25_26();
              n_rules();
              goto LABEL_128;
            case 30:
LABEL_86:
              v125 = OUTLINED_FUNCTION_71_12();
              if (lpta_loadp_setscan_r(v125, v126))
              {
                goto LABEL_88;
              }

              OUTLINED_FUNCTION_5_36();
              if (test_string_s())
              {
                goto LABEL_88;
              }

              OUTLINED_FUNCTION_25_26();
              p_rules();
              goto LABEL_128;
            case 32:
LABEL_88:
              v127 = OUTLINED_FUNCTION_71_12();
              if (lpta_loadp_setscan_r(v127, v128))
              {
                goto LABEL_90;
              }

              OUTLINED_FUNCTION_5_36();
              if (test_string_s())
              {
                goto LABEL_90;
              }

              OUTLINED_FUNCTION_25_26();
              q_rules();
              goto LABEL_128;
            case 34:
LABEL_90:
              v129 = OUTLINED_FUNCTION_71_12();
              if (lpta_loadp_setscan_r(v129, v130))
              {
                goto LABEL_92;
              }

              OUTLINED_FUNCTION_5_36();
              if (test_string_s())
              {
                goto LABEL_92;
              }

              OUTLINED_FUNCTION_25_26();
              r_rules();
              goto LABEL_128;
            case 36:
LABEL_92:
              v131 = OUTLINED_FUNCTION_71_12();
              if (lpta_loadp_setscan_r(v131, v132))
              {
                goto LABEL_94;
              }

              OUTLINED_FUNCTION_5_36();
              if (test_string_s())
              {
                goto LABEL_94;
              }

              OUTLINED_FUNCTION_25_26();
              s_rules();
              goto LABEL_128;
            case 38:
LABEL_94:
              v133 = OUTLINED_FUNCTION_71_12();
              if (lpta_loadp_setscan_r(v133, v134))
              {
                goto LABEL_96;
              }

              OUTLINED_FUNCTION_5_36();
              if (test_string_s())
              {
                goto LABEL_96;
              }

              OUTLINED_FUNCTION_25_26();
              t_rules();
              goto LABEL_128;
            case 40:
LABEL_96:
              v135 = OUTLINED_FUNCTION_71_12();
              if (lpta_loadp_setscan_r(v135, v136))
              {
                goto LABEL_98;
              }

              OUTLINED_FUNCTION_5_36();
              if (test_string_s())
              {
                goto LABEL_98;
              }

              OUTLINED_FUNCTION_25_26();
              v_rules();
              goto LABEL_128;
            case 42:
LABEL_98:
              v137 = OUTLINED_FUNCTION_71_12();
              if (lpta_loadp_setscan_r(v137, v138))
              {
                goto LABEL_100;
              }

              OUTLINED_FUNCTION_5_36();
              if (test_string_s())
              {
                goto LABEL_100;
              }

              OUTLINED_FUNCTION_25_26();
              w_rules();
              goto LABEL_128;
            case 44:
LABEL_100:
              v139 = OUTLINED_FUNCTION_71_12();
              if (lpta_loadp_setscan_r(v139, v140))
              {
                goto LABEL_102;
              }

              OUTLINED_FUNCTION_5_36();
              if (test_string_s())
              {
                goto LABEL_102;
              }

              OUTLINED_FUNCTION_25_26();
              x_rules();
              goto LABEL_128;
            case 46:
LABEL_102:
              v141 = OUTLINED_FUNCTION_71_12();
              if (lpta_loadp_setscan_r(v141, v142))
              {
                goto LABEL_104;
              }

              OUTLINED_FUNCTION_5_36();
              if (test_string_s())
              {
                goto LABEL_104;
              }

              OUTLINED_FUNCTION_25_26();
              y_rules();
              goto LABEL_128;
            case 48:
LABEL_104:
              v143 = OUTLINED_FUNCTION_71_12();
              if (!lpta_loadp_setscan_r(v143, v144))
              {
                OUTLINED_FUNCTION_5_36();
                if (!test_string_s())
                {
                  OUTLINED_FUNCTION_25_26();
                  z_rules();
                }
              }

              goto LABEL_128;
            case 52:
              goto LABEL_11;
            case 53:
              v87 = OUTLINED_FUNCTION_70_12();
              bspush_ca_scan(v87, v88);
              goto LABEL_47;
            case 54:
              goto LABEL_28;
            case 55:
LABEL_47:
              OUTLINED_FUNCTION_5_36();
              test_string_s();
              OUTLINED_FUNCTION_144_4();
              if (!v89)
              {
                goto LABEL_28;
              }

              goto LABEL_38;
            case 57:
              goto LABEL_13;
            case 59:
              goto LABEL_15;
            case 61:
              goto LABEL_16;
            case 62:
              v90 = OUTLINED_FUNCTION_70_12();
              bspush_ca_scan(v90, v91);
              goto LABEL_50;
            case 63:
              goto LABEL_30;
            case 64:
LABEL_50:
              OUTLINED_FUNCTION_5_36();
              v92 = test_string_s();
              v76 = v33;
              v81 = v33;
              if (!v92)
              {
                goto LABEL_30;
              }

              goto LABEL_38;
            case 66:
              goto LABEL_17;
            case 67:
              v93 = OUTLINED_FUNCTION_70_12();
              bspush_ca_scan(v93, v94);
              goto LABEL_53;
            case 68:
              goto LABEL_32;
            case 69:
LABEL_53:
              OUTLINED_FUNCTION_5_36();
              v95 = test_string_s();
              v80 = v33;
              v81 = v33;
              if (!v95)
              {
                goto LABEL_32;
              }

              goto LABEL_38;
            case 71:
              goto LABEL_19;
            case 73:
              goto LABEL_21;
            case 75:
            case 77:
              v96 = OUTLINED_FUNCTION_70_12();
              bspush_ca_scan(v96, v97);
              goto LABEL_56;
            case 76:
              goto LABEL_57;
            case 78:
LABEL_56:
              OUTLINED_FUNCTION_5_36();
              test_string_s();
              OUTLINED_FUNCTION_145_4();
              if (!v98)
              {
                goto LABEL_57;
              }

              goto LABEL_38;
            case 80:
              goto LABEL_129;
            case 81:
              v99 = v33;
              goto LABEL_133;
            case 82:
              bspop_boa(v1);
              OUTLINED_FUNCTION_96_7();
              OUTLINED_FUNCTION_9_35();
              delete_1pt();
              goto LABEL_130;
            case 83:
              goto LABEL_136;
            case 84:
              goto LABEL_130;
            case 85:
              goto LABEL_132;
            case 86:
              goto LABEL_5;
            case 87:
              v37 = v33;
              goto LABEL_6;
            case 88:
              goto LABEL_140;
            case 89:
              goto LABEL_139;
            default:
              goto LABEL_3;
          }
        }

        break;
      }

LABEL_10:
      v46 = OUTLINED_FUNCTION_95_8();
      starttest(v46, v47);
      v48 = OUTLINED_FUNCTION_97_7();
      if (lpta_loadp_setscan_r(v48, v49))
      {
LABEL_11:
        v50 = OUTLINED_FUNCTION_97_7();
        if (lpta_loadp_setscan_r(v50, v51) || (OUTLINED_FUNCTION_68_12(), test_string_s()))
        {
LABEL_13:
          v52 = OUTLINED_FUNCTION_97_7();
          if (lpta_loadp_setscan_r(v52, v53) || (OUTLINED_FUNCTION_68_12(), test_string_s()))
          {
LABEL_15:
            starttest(v1, 61);
            v54 = OUTLINED_FUNCTION_97_7();
            if (lpta_loadp_setscan_r(v54, v55))
            {
LABEL_16:
              starttest(v1, 66);
              v56 = OUTLINED_FUNCTION_97_7();
              if (lpta_loadp_setscan_r(v56, v57))
              {
LABEL_17:
                v58 = OUTLINED_FUNCTION_97_7();
                if (lpta_loadp_setscan_r(v58, v59) || (OUTLINED_FUNCTION_68_12(), test_string_s()))
                {
LABEL_19:
                  v60 = OUTLINED_FUNCTION_97_7();
                  if (lpta_loadp_setscan_r(v60, v61) || (OUTLINED_FUNCTION_68_12(), test_string_s()))
                  {
LABEL_21:
                    v62 = OUTLINED_FUNCTION_147_4();
                    starttest(v62, v63);
                    v64 = OUTLINED_FUNCTION_97_7();
                    if (!lpta_loadp_setscan_r(v64, v65))
                    {
                      v66 = OUTLINED_FUNCTION_154_3();
                      bspush_ca_scan(v66, v67);
                      OUTLINED_FUNCTION_68_12();
                      v68 = test_string_s();
                      v69 = v33;
                      if (v68)
                      {
                        goto LABEL_37;
                      }

LABEL_57:
                      v33 = v69;
                      OUTLINED_FUNCTION_36_17();
                      u_rules();
                    }
                  }

                  else
                  {
                    OUTLINED_FUNCTION_36_17();
                    o_circ_rules();
                  }
                }

                else
                {
                  OUTLINED_FUNCTION_36_17();
                  o_rules();
                }
              }

              else
              {
                v77 = OUTLINED_FUNCTION_156_3();
                bspush_ca_scan(v77, v78);
                OUTLINED_FUNCTION_68_12();
                v79 = test_string_s();
                v80 = v33;
                if (v79)
                {
                  goto LABEL_37;
                }

LABEL_32:
                v33 = v80;
                OUTLINED_FUNCTION_36_17();
                i_rules();
              }
            }

            else
            {
              bspush_ca_scan(v1, 62);
              OUTLINED_FUNCTION_68_12();
              v75 = test_string_s();
              v76 = v33;
              if (v75)
              {
                goto LABEL_37;
              }

LABEL_30:
              v33 = v76;
              OUTLINED_FUNCTION_36_17();
              accented_e_rules();
            }
          }

          else
          {
            OUTLINED_FUNCTION_36_17();
            e_acute_rules();
          }
        }

        else
        {
          OUTLINED_FUNCTION_36_17();
          e_rules();
        }
      }

      else
      {
        bspush_ca_scan(v1, 53);
        OUTLINED_FUNCTION_68_12();
        v73 = test_string_s();
        v74 = v33;
        if (v73)
        {
          goto LABEL_37;
        }

LABEL_28:
        v33 = v74;
        OUTLINED_FUNCTION_36_17();
        a_rules();
      }

LABEL_128:
      v145 = OUTLINED_FUNCTION_119_4();
      starttest(v145, v146);
      v147 = OUTLINED_FUNCTION_97_7();
      v149 = lpta_loadp_setscan_l(v147, v148);
      v99 = v33;
      if (!v149)
      {
LABEL_133:
        LODWORD(v33) = v99;
        savescptr(v1, 81, &v180);
        if (!advanc(v1))
        {
          v154 = OUTLINED_FUNCTION_125_4();
          if (!lpta_loadp_setscan_r(v154, v155))
          {
            bspush_ca_scan_boa();
LABEL_136:
            v72 = test_synch(v1, 83, 1u, &_MergedGlobals_33);
            goto LABEL_25;
          }
        }

        goto LABEL_37;
      }

LABEL_129:
      OUTLINED_FUNCTION_36_17();
      reduce_duplicate_cons();
LABEL_130:
      v150 = OUTLINED_FUNCTION_74_12();
      lpta_loadpn(v150, v151);
      v152 = OUTLINED_FUNCTION_105_5();
      rpta_loadpn(v152, v153);
      if (!compare_ptas(v1) && !testeq(v1))
      {
        break;
      }

LABEL_132:
      forall_cont_from(v1);
    }

LABEL_137:
    v156 = OUTLINED_FUNCTION_105_5();
    if (!lpta_loadp_setscan_l(v156, v157) && !advanc(v1))
    {
LABEL_139:
      savescptr(v1, 89, v184);
      OUTLINED_FUNCTION_96_7();
      OUTLINED_FUNCTION_9_35();
      delete_1pt();
    }

LABEL_140:
    OUTLINED_FUNCTION_22_26();
    if (v165)
    {
      a_to_A_in_stems(v1, v158, v159, v160, v161, v162, v163, v164);
    }
  }

LABEL_3:
  vretproc(v1);
  v12 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_131_4();
}

uint64_t b_rules()
{
  OUTLINED_FUNCTION_18_32();
  v104 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8_36(v2, v3, v4, v5, v6, v7, v8, v9, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103);
  OUTLINED_FUNCTION_55_14();
  if (!setjmp(v1))
  {
    OUTLINED_FUNCTION_19_28();
    if (!OUTLINED_FUNCTION_137_4(v10, v11, v12, v13, v14))
    {
      v17 = OUTLINED_FUNCTION_23_26();
      get_parm(v17, v18, v19, -6);
      v20 = OUTLINED_FUNCTION_75_12();
      OUTLINED_FUNCTION_129_4(v20, v21);
      v22 = OUTLINED_FUNCTION_77_11();
      push_ptr_init(v22, v23);
      fence_37(v0, 0, &null_str_14);
      v24 = OUTLINED_FUNCTION_21_27();
      fence_37(v24, v25, v26);
      v27 = OUTLINED_FUNCTION_128_4();
      starttest(v27, v28);
      v29 = OUTLINED_FUNCTION_63_12();
      v31 = lpta_loadp_setscan_l(v29, v30);
      if (v31)
      {
        goto LABEL_16;
      }

      while (1)
      {
        OUTLINED_FUNCTION_81_11(2, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94);
        OUTLINED_FUNCTION_5_36();
        if (!test_string_s())
        {
          v39 = OUTLINED_FUNCTION_16_33();
          if (!lpta_loadp_setscan_r(v39, v40) && !advance_tok(v0) && !OUTLINED_FUNCTION_4_37())
          {
            break;
          }
        }

        while (1)
        {
          v41 = *(v0 + 104);
          v31 = v41 ? OUTLINED_FUNCTION_92_9(v41) : OUTLINED_FUNCTION_136_4();
          if (v31 != 1)
          {
            break;
          }

LABEL_16:
          OUTLINED_FUNCTION_83_10(v31, v32, v33, v34, v35, v36, v37, v38, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102);
          v42 = OUTLINED_FUNCTION_0_40();
          if (!insert_2pt_s(v42, v43, v44, v45, v46))
          {
            goto LABEL_17;
          }
        }

        if (v31 != 2)
        {
          if (v31 != 3)
          {
            goto LABEL_3;
          }

          break;
        }
      }

LABEL_17:
      OUTLINED_FUNCTION_100_6(v100);
    }
  }

LABEL_3:
  vretproc(v0);
  v15 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_126_4();
}

uint64_t c_rules()
{
  OUTLINED_FUNCTION_18_32();
  v259 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8_36(v2, v3, v4, v5, v6, v7, v8, v9, v202, v204, v206, v208, v210, v212, v214, v216, v218, v220, v222, v224, v226, v228, v230, v232, v234, v236, v238, v240, v242, v244, v246, v248, v250, v252, v254, v256, v258);
  OUTLINED_FUNCTION_55_14();
  if (!setjmp(v1))
  {
    OUTLINED_FUNCTION_19_28();
    if (!OUTLINED_FUNCTION_137_4(v10, v11, v12, v13, v14))
    {
      v17 = OUTLINED_FUNCTION_67_12();
      get_parm(v17, v18, v19, -6);
      OUTLINED_FUNCTION_41_15();
      v20 = OUTLINED_FUNCTION_77_11();
      push_ptr_init(v20, v21);
      v22 = 0;
      v23 = OUTLINED_FUNCTION_98_7();
      v26 = fence_37(v23, v24, v25);
      OUTLINED_FUNCTION_111_4(v26, v27, &unk_28064B83D);
      v28 = OUTLINED_FUNCTION_116_4();
      starttest(v28, v29);
      v30 = OUTLINED_FUNCTION_74_12();
      if (!lpta_loadp_setscan_r(v30, v31))
      {
        v60 = OUTLINED_FUNCTION_38_17();
        bspush_ca_scan(v60, v61);
        OUTLINED_FUNCTION_5_36();
        v62 = test_string_s();
        v63 = 0;
        LODWORD(v22) = 0;
        if (v62)
        {
          goto LABEL_35;
        }

LABEL_19:
        LODWORD(v22) = v63;
        OUTLINED_FUNCTION_104_6();
        v64 = OUTLINED_FUNCTION_85_10();
        savescptr(v64, v65, v66);
        if (!OUTLINED_FUNCTION_4_37())
        {
          OUTLINED_FUNCTION_87_9();
          v67 = OUTLINED_FUNCTION_69_12();
          if (!setd_lookup(v67, v68, 12))
          {
            goto LABEL_21;
          }
        }

        goto LABEL_35;
      }

      while (2)
      {
        v32 = v22;
        v33 = OUTLINED_FUNCTION_10_35();
        if (lpta_loadp_setscan_r(v33, v34) || (OUTLINED_FUNCTION_5_36(), test_string_s()))
        {
LABEL_7:
          v35 = OUTLINED_FUNCTION_70_12();
          starttest(v35, v36);
          v37 = OUTLINED_FUNCTION_10_35();
          if (lpta_loadp_setscan_r(v37, v38))
          {
LABEL_8:
            v39 = OUTLINED_FUNCTION_70_12();
            starttest(v39, v40);
            v41 = OUTLINED_FUNCTION_11_35();
            LODWORD(v22) = v32;
            if (lpta_loadp_setscan_l(v41, v42))
            {
LABEL_9:
              v43 = OUTLINED_FUNCTION_70_12();
              starttest(v43, v44);
              v45 = OUTLINED_FUNCTION_10_35();
              v47 = lpta_loadp_setscan_r(v45, v46);
              if (!v47)
              {
                OUTLINED_FUNCTION_13_34();
                v47 = test_string_s();
                LODWORD(v22) = v32;
                if (!v47)
                {
LABEL_11:
                  v55 = OUTLINED_FUNCTION_85_10();
                  savescptr(v55, v56, v57);
LABEL_12:
                  v32 = v22;
                }
              }

              LODWORD(v22) = v32;
              goto LABEL_33;
            }

LABEL_88:
            OUTLINED_FUNCTION_81_11(57, v203, v205, v207, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249);
            OUTLINED_FUNCTION_21_27();
            if (!test_string_s())
            {
              *(v0 + 136) = v32;
              v150 = *(v0 + 1648);
              v151 = OUTLINED_FUNCTION_9_35();
              if (!test_ptr(v151))
              {
                v152 = OUTLINED_FUNCTION_16_33();
                if (!lpta_loadp_setscan_r(v152, v153) && !advance_tok(v0))
                {
                  OUTLINED_FUNCTION_29_23();
                  v47 = test_string_s();
                  if (!v47)
                  {
LABEL_33:
                    OUTLINED_FUNCTION_83_10(v47, v48, v49, v50, v51, v52, v53, v54, v203, v205, v207, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249, v251, v253, v255, v257);
                    break;
                  }
                }
              }
            }

            goto LABEL_35;
          }

          v58 = OUTLINED_FUNCTION_70_12();
          bspush_ca_scan(v58, v59);
          OUTLINED_FUNCTION_5_36();
          v47 = test_string_s();
          LODWORD(v22) = v32;
          if (v47)
          {
            goto LABEL_35;
          }

LABEL_15:
          LODWORD(v22) = v32;
          OUTLINED_FUNCTION_83_10(v47, v48, v49, v50, v51, v52, v53, v54, v203, v205, v207, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249, v251, v253, v255, v257);
        }

        else
        {
LABEL_22:
          v69 = OUTLINED_FUNCTION_85_10();
          savescptr(v69, v70, v71);
          v72 = OUTLINED_FUNCTION_51_14();
          starttest(v72, v73);
          OUTLINED_FUNCTION_153_3();
          v74 = OUTLINED_FUNCTION_9_35();
          if (setscan_nof_r(v74))
          {
LABEL_23:
            v75 = v22;
            v76 = OUTLINED_FUNCTION_60_13();
            starttest(v76, v77);
            v78 = OUTLINED_FUNCTION_11_35();
            if (lpta_loadp_setscan_l(v78, v79))
            {
LABEL_96:
              v22 = v75;
              OUTLINED_FUNCTION_87_9();
              v154 = OUTLINED_FUNCTION_69_12();
              v156 = setd_lookup(v154, v155, 15);
              if (!v156)
              {
                OUTLINED_FUNCTION_83_10(v156, v157, v158, v159, v160, v161, v162, v163, v203, v205, v207, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249, v251, v253, v255, v257);
                v164 = OUTLINED_FUNCTION_0_40();
                if (!insert_2pt_s(v164, v165, v166, v167, v168))
                {
                  goto LABEL_21;
                }
              }

LABEL_98:
              v169 = OUTLINED_FUNCTION_70_12();
              starttest(v169, v170);
              v171 = OUTLINED_FUNCTION_11_35();
              if (lpta_loadp_setscan_l(v171, v172) || (OUTLINED_FUNCTION_5_36(), test_string_s()))
              {
LABEL_100:
                v173 = OUTLINED_FUNCTION_70_12();
                starttest(v173, v174);
                v175 = OUTLINED_FUNCTION_70_12();
                bspush_ca(v175);
                v176 = OUTLINED_FUNCTION_10_35();
                if (!lpta_loadp_setscan_r(v176, v177))
                {
                  OUTLINED_FUNCTION_5_36();
                  if (!test_string_s())
                  {
                    v190 = OUTLINED_FUNCTION_70_12();
                    bspush_ca_scan(v190, v191);
                    OUTLINED_FUNCTION_5_36();
                    v47 = test_string_s();
                    v49 = v22;
                    if (!v47)
                    {
LABEL_115:
                      LODWORD(v22) = v49;
                      goto LABEL_33;
                    }
                  }
                }
              }

              else
              {
                v192 = OUTLINED_FUNCTION_57_13();
                bspush_ca(v192);
                v193 = OUTLINED_FUNCTION_10_35();
                v195 = lpta_loadp_setscan_l(v193, v194);
                v178 = v22;
                if (!v195)
                {
LABEL_117:
                  LODWORD(v22) = v178;
                  OUTLINED_FUNCTION_81_11(27, v203, v205, v207, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249);
                  if (!advance_tok(v0) && !advance_tok(v0) && !advance_tok(v0))
                  {
                    OUTLINED_FUNCTION_17_33();
                    if (!test_string_s())
                    {
                      *(v0 + 136) = 1;
                      v196 = *(v0 + 1648);
                      v197 = OUTLINED_FUNCTION_9_35();
                      if (!test_ptr(v197))
                      {
                        v198 = OUTLINED_FUNCTION_16_33();
                        if (!lpta_loadp_setscan_r(v198, v199))
                        {
                          v200 = OUTLINED_FUNCTION_70_12();
                          bspush_ca_scan(v200, v201);
                          OUTLINED_FUNCTION_5_36();
                          if (!test_string_s())
                          {
                            OUTLINED_FUNCTION_70_12();
                            bspush_ca_scan_boa();
                            OUTLINED_FUNCTION_5_36();
                            if (!test_string_s())
                            {
                              LODWORD(v22) = 1;
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
LABEL_24:
              OUTLINED_FUNCTION_81_11(19, v203, v205, v207, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249);
              OUTLINED_FUNCTION_29_23();
              if (!test_string_s())
              {
                v80 = OUTLINED_FUNCTION_16_33();
                if (!lpta_loadp_setscan_r(v80, v81) && !advance_tok(v0) && !advance_tok(v0))
                {
                  v82 = OUTLINED_FUNCTION_70_12();
                  bspush_ca_scan(v82, v83);
                  OUTLINED_FUNCTION_5_36();
                  v47 = test_string_s();
                  v51 = v22;
                  if (!v47)
                  {
LABEL_29:
                    LODWORD(v22) = v51;
                    goto LABEL_33;
                  }
                }
              }
            }

LABEL_35:
            LODWORD(v48) = v22;
LABEL_36:
            v96 = *(v0 + 104);
            if (v96)
            {
              v47 = OUTLINED_FUNCTION_92_9(v96);
              v22 = v48;
            }

            else
            {
              v47 = vback(v0, v48);
              v22 = 0;
            }

            v52 = v22;
            v50 = v22;
            v51 = v22;
            v49 = v22;
            v32 = v22;
            switch(v47)
            {
              case 1:
                continue;
              case 2:
                v63 = v22;
                goto LABEL_19;
              case 3:
              case 16:
              case 17:
                goto LABEL_21;
              case 4:
                v32 = v22;
                goto LABEL_7;
              case 5:
                goto LABEL_22;
              case 6:
                goto LABEL_23;
              case 7:
                goto LABEL_33;
              case 8:
                v48 = v22;
                goto LABEL_107;
              case 9:
                v97 = OUTLINED_FUNCTION_70_12();
                bspush_ca_scan(v97, v98);
                goto LABEL_61;
              case 10:
                OUTLINED_FUNCTION_5_36();
                v133 = test_string_s();
                v52 = v22;
                LODWORD(v48) = v22;
                if (!v133)
                {
                  goto LABEL_112;
                }

                goto LABEL_36;
              case 11:
                goto LABEL_112;
              case 12:
              case 15:
LABEL_61:
                OUTLINED_FUNCTION_5_36();
                test_string_s();
                OUTLINED_FUNCTION_144_4();
                if (!v47)
                {
                  goto LABEL_113;
                }

                goto LABEL_36;
              case 13:
              case 14:
                goto LABEL_113;
              case 18:
                v75 = v22;
                goto LABEL_96;
              case 19:
                goto LABEL_24;
              case 20:
                v131 = OUTLINED_FUNCTION_58_13();
                bspush_ca_scan(v131, v132);
                OUTLINED_FUNCTION_5_36();
                goto LABEL_73;
              case 21:
                goto LABEL_29;
              case 22:
                v142 = OUTLINED_FUNCTION_70_12();
                bspush_ca_scan(v142, v143);
                OUTLINED_FUNCTION_12_35();
                goto LABEL_73;
              case 23:
                OUTLINED_FUNCTION_13_34();
LABEL_73:
                v47 = test_string_s();
                v51 = v22;
                v48 = v22;
                if (!v47)
                {
                  goto LABEL_29;
                }

                goto LABEL_36;
              case 24:
                goto LABEL_98;
              case 25:
                goto LABEL_100;
              case 26:
                v134 = OUTLINED_FUNCTION_70_12();
                bspush_ca(v134);
                v135 = OUTLINED_FUNCTION_10_35();
                v137 = lpta_loadp_setscan_l(v135, v136);
                LODWORD(v48) = v22;
                if (v137)
                {
                  goto LABEL_36;
                }

                goto LABEL_65;
              case 27:
                v178 = v22;
                goto LABEL_117;
              case 28:
                v129 = OUTLINED_FUNCTION_43_15();
                bspush_ca_scan(v129, v130);
                goto LABEL_79;
              case 29:
                v47 = bspop_boa(v0);
                goto LABEL_84;
              case 30:
              case 32:
              case 37:
              case 38:
                goto LABEL_84;
              case 31:
              case 36:
LABEL_79:
                OUTLINED_FUNCTION_5_36();
                goto LABEL_80;
              case 33:
                v121 = OUTLINED_FUNCTION_10_35();
                v123 = lpta_loadp_setscan_r(v121, v122);
                LODWORD(v48) = v22;
                if (v123)
                {
                  goto LABEL_36;
                }

                OUTLINED_FUNCTION_21_27();
                v124 = test_string_s();
                LODWORD(v48) = v22;
                if (v124)
                {
                  goto LABEL_36;
                }

                *(v0 + 136) = v22;
                v125 = *(v0 + 1664);
                v126 = OUTLINED_FUNCTION_9_35();
                v47 = test_ptr(v126);
                goto LABEL_81;
              case 34:
LABEL_65:
                OUTLINED_FUNCTION_81_11(34, v203, v205, v207, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249);
                v138 = advance_tok(v0);
                LODWORD(v48) = v22;
                if (!v138)
                {
                  v139 = advance_tok(v0);
                  LODWORD(v48) = v22;
                  if (!v139)
                  {
                    v140 = advance_tok(v0);
                    LODWORD(v48) = v22;
                    if (!v140)
                    {
                      OUTLINED_FUNCTION_5_36();
                      v141 = test_string_s();
                      LODWORD(v48) = v22;
                      if (!v141)
                      {
                        OUTLINED_FUNCTION_70_12();
                        bspush_ca_scan_boa();
                        OUTLINED_FUNCTION_5_36();
                        if (test_string_s())
                        {
                          LODWORD(v48) = v22;
                        }

                        else
                        {
                          LODWORD(v48) = 1;
                        }
                      }
                    }
                  }
                }

                goto LABEL_36;
              case 35:
                bspop_boa(v0);
                v114 = OUTLINED_FUNCTION_16_33();
                v116 = lpta_loadp_setscan_r(v114, v115);
                LODWORD(v48) = v22;
                if (v116)
                {
                  goto LABEL_36;
                }

                v117 = OUTLINED_FUNCTION_70_12();
                bspush_ca_scan(v117, v118);
                OUTLINED_FUNCTION_13_34();
LABEL_80:
                v47 = test_string_s();
LABEL_81:
                v48 = v22;
                if (v47)
                {
                  goto LABEL_36;
                }

LABEL_84:
                OUTLINED_FUNCTION_83_10(v47, v48, v49, v50, v51, v52, v53, v54, v203, v205, v207, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249, v251, v253, v255, v257);
                v144 = OUTLINED_FUNCTION_0_40();
                inserted = insert_2pt_s(v144, v145, v146, v147, v148);
                LODWORD(v48) = v22;
                if (!inserted)
                {
                  goto LABEL_21;
                }

                goto LABEL_36;
              case 39:
                v99 = OUTLINED_FUNCTION_70_12();
                bspush_ca(v99);
                v100 = OUTLINED_FUNCTION_10_35();
                v102 = lpta_loadp_setscan_l(v100, v101);
                LODWORD(v48) = v22;
                if (v102)
                {
                  goto LABEL_36;
                }

                goto LABEL_42;
              case 40:
                goto LABEL_56;
              case 41:
              case 43:
              case 47:
                goto LABEL_115;
              case 42:
                OUTLINED_FUNCTION_4_37();
                goto LABEL_77;
              case 44:
                OUTLINED_FUNCTION_87_9();
                v112 = OUTLINED_FUNCTION_69_12();
                setd_lookup(v112, v113, 16);
                goto LABEL_77;
              case 45:
LABEL_42:
                OUTLINED_FUNCTION_81_11(45, v203, v205, v207, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249);
                v103 = advance_tok(v0);
                LODWORD(v48) = v22;
                if (v103)
                {
                  goto LABEL_36;
                }

                v104 = advance_tok(v0);
                LODWORD(v48) = v22;
                if (v104)
                {
                  goto LABEL_36;
                }

                OUTLINED_FUNCTION_21_27();
                v105 = test_string_s();
                LODWORD(v48) = v22;
                if (v105)
                {
                  goto LABEL_36;
                }

                *(v0 + 136) = v22;
                v106 = *(v0 + 1648);
                v107 = OUTLINED_FUNCTION_9_35();
                v108 = test_ptr(v107);
                LODWORD(v48) = v22;
                if (v108)
                {
                  goto LABEL_36;
                }

                v109 = OUTLINED_FUNCTION_16_33();
                v111 = lpta_loadp_setscan_r(v109, v110);
                LODWORD(v48) = v22;
                if (v111)
                {
                  goto LABEL_36;
                }

LABEL_56:
                v127 = OUTLINED_FUNCTION_70_12();
                bspush_ca_scan(v127, v128);
                OUTLINED_FUNCTION_5_36();
LABEL_76:
                test_string_s();
LABEL_77:
                OUTLINED_FUNCTION_145_4();
                if (!v47)
                {
                  goto LABEL_115;
                }

                goto LABEL_36;
              case 46:
                OUTLINED_FUNCTION_13_34();
                goto LABEL_76;
              case 48:
                v32 = v22;
                goto LABEL_8;
              case 49:
              case 51:
              case 52:
              case 53:
              case 54:
                v119 = OUTLINED_FUNCTION_70_12();
                bspush_ca_scan(v119, v120);
                goto LABEL_86;
              case 50:
                goto LABEL_15;
              case 55:
LABEL_86:
                OUTLINED_FUNCTION_5_36();
                test_string_s();
                OUTLINED_FUNCTION_133_4();
                if (!v47)
                {
                  goto LABEL_15;
                }

                goto LABEL_36;
              case 56:
                v32 = v22;
                goto LABEL_9;
              case 57:
                goto LABEL_88;
              case 58:
                goto LABEL_12;
              case 59:
                goto LABEL_11;
              default:
                goto LABEL_3;
            }
          }

          v84 = OUTLINED_FUNCTION_12_35();
          if (testFldeq(v84, v85, v86, 2) || advance_tok(v0))
          {
            goto LABEL_35;
          }

          v87 = OUTLINED_FUNCTION_50_15();
          starttest(v87, v88);
          v89 = OUTLINED_FUNCTION_10_35();
          v47 = lpta_loadp_setscan_l(v89, v90);
          v48 = v22;
          if (v47)
          {
            goto LABEL_33;
          }

LABEL_107:
          v22 = v48;
          OUTLINED_FUNCTION_81_11(8, v203, v205, v207, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249);
          if (advance_tok(v0))
          {
            goto LABEL_35;
          }

          if (advance_tok(v0))
          {
            goto LABEL_35;
          }

          OUTLINED_FUNCTION_96_7();
          v179 = *(v0 + 1648);
          v180 = OUTLINED_FUNCTION_9_35();
          if (test_ptr(v180))
          {
            goto LABEL_35;
          }

          v181 = OUTLINED_FUNCTION_16_33();
          if (lpta_loadp_setscan_r(v181, v182))
          {
            goto LABEL_35;
          }

          v183 = OUTLINED_FUNCTION_39_16();
          bspush_ca_scan(v183, v184);
          v185 = OUTLINED_FUNCTION_49_15();
          bspush_ca_scan(v185, v186);
          OUTLINED_FUNCTION_5_36();
          v187 = test_string_s();
          v52 = v22;
          if (v187)
          {
            goto LABEL_35;
          }

LABEL_112:
          v22 = v52;
          v188 = OUTLINED_FUNCTION_66_12();
          bspush_ca_scan(v188, v189);
          OUTLINED_FUNCTION_5_36();
          v47 = test_string_s();
          v50 = v22;
          if (v47)
          {
            goto LABEL_35;
          }

LABEL_113:
          LODWORD(v22) = v50;
          OUTLINED_FUNCTION_83_10(v47, v48, v49, v50, v51, v52, v53, v54, v203, v205, v207, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249, v251, v253, v255, v257);
        }

        break;
      }

      v91 = OUTLINED_FUNCTION_0_40();
      if (insert_2pt_s(v91, v92, v93, v94, v95))
      {
        goto LABEL_35;
      }

LABEL_21:
      OUTLINED_FUNCTION_100_6(v255);
    }
  }

LABEL_3:
  vretproc(v0);
  v15 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_126_4();
}

uint64_t cedille_rules()
{
  OUTLINED_FUNCTION_18_32();
  v167 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_15_33(v2, v3, v4, v5, v6, v7, v8, v9, v51, v55, v59, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v147, v151, v154);
  OUTLINED_FUNCTION_64_12(v10, v11, v12, v13, v14, v15, v16, v17, v52, v56, v60, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144, v148, v152, v155, v157, v159, v161, v163, v165);
  v18 = setjmp(v1);
  if (!v18 && !OUTLINED_FUNCTION_14_34(v18, v19, v20, v21, v22, v23, v24, v25, v53, v57, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, v149, v153, v156, *v158, v158[4], *v160, *&v160[4], v160[6], v162, SWORD2(v162), SBYTE6(v162), SHIBYTE(v162), v164, v166))
  {
    v28 = OUTLINED_FUNCTION_23_26();
    get_parm(v28, v29, v30, -6);
    OUTLINED_FUNCTION_41_15();
    v31 = OUTLINED_FUNCTION_98_7();
    fence_37(v31, v32, v33);
    v34 = OUTLINED_FUNCTION_69_12();
    fence_37(v34, v35, v36);
    v37 = OUTLINED_FUNCTION_23_26();
    lpta_rpta_loadp(v37, v38, v39);
    v40 = OUTLINED_FUNCTION_6_36();
    inserted = insert_2pt_s(v40, v41, v42, &unk_28064B820, 0);
    if (inserted)
    {
      if (*(v0 + 104))
      {
        *(v0 + 104) = 0;
      }

      else
      {
        OUTLINED_FUNCTION_136_4();
      }
    }

    else
    {
      OUTLINED_FUNCTION_79_11(inserted, v44, v45, v46, v47, v48, v49, v50, v54, v58, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142, v146, v150);
    }
  }

  vretproc(v0);
  v26 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_118_4();
}

uint64_t d_rules()
{
  OUTLINED_FUNCTION_18_32();
  v90 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_40_16(v3, v4, v5, v6, v7, v8, v9, v10, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v88, v89);
  OUTLINED_FUNCTION_55_14();
  if (setjmp(v2) || (OUTLINED_FUNCTION_121_4(), OUTLINED_FUNCTION_137_4(v11, v12, v13, v14, v15)))
  {
LABEL_3:
    v1 = 94;
  }

  else
  {
    v18 = OUTLINED_FUNCTION_86_9();
    get_parm(v18, v19, v20, -6);
    OUTLINED_FUNCTION_41_15();
    OUTLINED_FUNCTION_102_6();
    fence_37(v0, 0, &null_str_14);
    v21 = OUTLINED_FUNCTION_56_13();
    fence_37(v21, v22, v23);
    OUTLINED_FUNCTION_143_4();
    v24 = OUTLINED_FUNCTION_74_12();
    lpta_loadpn(v24, v25);
    v26 = OUTLINED_FUNCTION_105_5();
    rpta_loadpn(v26, v27);
    if (compare_ptas(v0) || testeq(v0))
    {
      goto LABEL_18;
    }

    OUTLINED_FUNCTION_87_9();
    v28 = OUTLINED_FUNCTION_69_12();
    if (setd_lookup(v28, v29, 21) || (v30 = OUTLINED_FUNCTION_106_4(), lpta_rpta_loadp(v30, v31, v32), v33 = OUTLINED_FUNCTION_0_40(), insert_2pt_s(v33, v34, v35, v36, v37)))
    {
      while (1)
      {
        v38 = OUTLINED_FUNCTION_61_13();
        starttest(v38, v39);
        is_liaison_con();
        if (v40)
        {
          break;
        }

        v41 = OUTLINED_FUNCTION_106_4();
        lpta_rpta_loadp(v41, v42, v43);
        OUTLINED_FUNCTION_74_12();
        settvar_s();
        v44 = OUTLINED_FUNCTION_69_12();
        npush_s(v44);
        v45 = OUTLINED_FUNCTION_74_12();
        npop(v45, v46);
        OUTLINED_FUNCTION_37_17();
        insert_2ptv();
        if (!v47)
        {
          break;
        }

        while (1)
        {
          v48 = *(v0 + 104);
          v49 = v48 ? OUTLINED_FUNCTION_92_9(v48) : OUTLINED_FUNCTION_136_4();
          if (v49 != 1)
          {
            break;
          }

LABEL_18:
          v50 = OUTLINED_FUNCTION_106_4();
          lpta_rpta_loadp(v50, v51, v52);
          v53 = OUTLINED_FUNCTION_0_40();
          if (!insert_2pt_s(v53, v54, v55, v56, v57))
          {
            goto LABEL_19;
          }
        }

        if (v49 != 2)
        {
          if ((v49 - 3) < 2)
          {
            break;
          }

          goto LABEL_3;
        }
      }
    }

LABEL_19:
    OUTLINED_FUNCTION_100_6(v87);
  }

  vretproc(v0);
  v16 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t f_rules()
{
  OUTLINED_FUNCTION_18_32();
  v165 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_15_33(v2, v3, v4, v5, v6, v7, v8, v9, v49, v53, v57, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, v149, v152);
  OUTLINED_FUNCTION_64_12(v10, v11, v12, v13, v14, v15, v16, v17, v50, v54, v58, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142, v146, v150, v153, v155, v157, v159, v161, v163);
  v18 = setjmp(v1);
  if (!v18 && !OUTLINED_FUNCTION_14_34(v18, v19, v20, v21, v22, v23, v24, v25, v51, v55, v59, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v147, v151, v154, *v156, v156[4], *v158, *&v158[4], v158[6], v160, SWORD2(v160), SBYTE6(v160), SHIBYTE(v160), v162, v164))
  {
    v28 = OUTLINED_FUNCTION_23_26();
    get_parm(v28, v29, v30, -6);
    OUTLINED_FUNCTION_41_15();
    v31 = OUTLINED_FUNCTION_98_7();
    fence_37(v31, v32, v33);
    v34 = OUTLINED_FUNCTION_23_26();
    lpta_rpta_loadp(v34, v35, v36);
    v37 = OUTLINED_FUNCTION_6_36();
    inserted = insert_2pt_s(v37, v38, v39, v40, 0);
    if (inserted)
    {
      if (*(v0 + 104))
      {
        *(v0 + 104) = 0;
      }

      else
      {
        OUTLINED_FUNCTION_136_4();
      }
    }

    else
    {
      OUTLINED_FUNCTION_79_11(inserted, v42, v43, v44, v45, v46, v47, v48, v52, v56, v60, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144, v148);
    }
  }

  vretproc(v0);
  v26 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_118_4();
}

uint64_t g_rules()
{
  OUTLINED_FUNCTION_18_32();
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_140_4();
  OUTLINED_FUNCTION_8_36(v3, v4, v5, v6, v7, v8, v9, v10, v178, v180, v182, v184, v186, v188, v190, v192, v194, v196, v198, v200, v202, v204, v206, v208, v210, v212, v214, v216, v218, v220, v222, v224, v226, v227[0], v227[1], v228, v229);
  OUTLINED_FUNCTION_55_14();
  if (!setjmp(v1))
  {
    OUTLINED_FUNCTION_46_15();
    if (!OUTLINED_FUNCTION_137_4(v11, v12, v13, v14, v15))
    {
      v18 = OUTLINED_FUNCTION_78_11();
      get_parm(v18, v19, v20, -6);
      v21 = OUTLINED_FUNCTION_80_11();
      OUTLINED_FUNCTION_129_4(v21, v22);
      v23 = OUTLINED_FUNCTION_75_12();
      push_ptr_init(v23, v24);
      v25 = OUTLINED_FUNCTION_77_11();
      push_ptr_init(v25, v26);
      LODWORD(v27) = 0;
      v28 = OUTLINED_FUNCTION_98_7();
      fence_37(v28, v29, v30);
      v31 = OUTLINED_FUNCTION_69_12();
      fence_37(v31, v32, v33);
      v34 = OUTLINED_FUNCTION_80_11();
      lpta_loadpn(v34, v35);
      v36 = OUTLINED_FUNCTION_105_5();
      rpta_loadpn(v36, v37);
      if (!compare_ptas(v0))
      {
        if (!testeq(v0))
        {
          OUTLINED_FUNCTION_87_9();
          v73 = OUTLINED_FUNCTION_69_12();
          if (!setd_lookup(v73, v74, 36))
          {
            goto LABEL_68;
          }

          LODWORD(v27) = 0;
LABEL_20:
          v75 = OUTLINED_FUNCTION_52_14();
          starttest(v75, v76);
          v77 = OUTLINED_FUNCTION_33_20();
          if (!lpta_loadp_setscan_l(v77, v78))
          {
            v79 = OUTLINED_FUNCTION_35_17();
            bspush_ca_scan(v79, v80);
LABEL_26:
            OUTLINED_FUNCTION_5_36();
            v85 = test_string_s();
            v86 = v27;
            v71 = v27;
            if (v85)
            {
              goto LABEL_39;
            }

LABEL_27:
            LODWORD(v27) = v86;
            OUTLINED_FUNCTION_50_15();
            bspush_ca_boa();
            OUTLINED_FUNCTION_87_9();
            v65 = OUTLINED_FUNCTION_69_12();
            v67 = 35;
            goto LABEL_28;
          }

          goto LABEL_35;
        }

        LODWORD(v27) = 0;
      }

      while (2)
      {
        v38 = OUTLINED_FUNCTION_11_35();
        if (lpta_loadp_setscan_r(v38, v39) || (OUTLINED_FUNCTION_5_36(), test_string_s()))
        {
LABEL_9:
          v40 = OUTLINED_FUNCTION_70_12();
          starttest(v40, v41);
          v42 = OUTLINED_FUNCTION_33_20();
          v44 = lpta_loadp_setscan_l(v42, v43);
          v45 = v27;
          if (v44)
          {
LABEL_10:
            LODWORD(v27) = v45;
            v46 = OUTLINED_FUNCTION_43_15();
            starttest(v46, v47);
            v48 = OUTLINED_FUNCTION_11_35();
            if (lpta_loadp_setscan_r(v48, v49) || (OUTLINED_FUNCTION_5_36(), v50 = test_string_s(), v51 = v27, v50))
            {
LABEL_12:
              v52 = OUTLINED_FUNCTION_70_12();
              starttest(v52, v53);
              v54 = OUTLINED_FUNCTION_11_35();
              if (lpta_loadp_setscan_r(v54, v55))
              {
LABEL_13:
                v56 = OUTLINED_FUNCTION_70_12();
                starttest(v56, v57);
                v58 = OUTLINED_FUNCTION_11_35();
                if (!lpta_loadp_setscan_r(v58, v59))
                {
                  OUTLINED_FUNCTION_5_36();
                  v60 = test_string_s();
                  v61 = v27;
                  if (!v60)
                  {
LABEL_15:
                    LODWORD(v27) = v61;
                    v62 = OUTLINED_FUNCTION_91_9();
                    savescptr(v62, v63, v64);
                    OUTLINED_FUNCTION_70_12();
                    bspush_ca_boa();
                    OUTLINED_FUNCTION_87_9();
                    v65 = OUTLINED_FUNCTION_69_12();
                    v67 = 34;
LABEL_28:
                    v87 = setd_lookup(v65, v66, v67);
                    goto LABEL_29;
                  }
                }
              }

              else
              {
                v68 = OUTLINED_FUNCTION_70_12();
                bspush_ca_scan(v68, v69);
                OUTLINED_FUNCTION_5_36();
                v70 = test_string_s();
                v71 = v27;
                v72 = v27;
                if (v70)
                {
                  goto LABEL_39;
                }

LABEL_59:
                LODWORD(v27) = v72;
              }

              break;
            }

LABEL_85:
            LODWORD(v27) = v51;
            v164 = OUTLINED_FUNCTION_91_9();
            savescptr(v164, v165, v166);
            v167 = OUTLINED_FUNCTION_3_38();
            if (!testFldeq(v167, v168, v169, v170))
            {
              OUTLINED_FUNCTION_70_12();
              bspush_ca_scan_boa();
              v171 = OUTLINED_FUNCTION_31_21();
              v87 = testFldeq(v171, v172, v173, 5);
LABEL_29:
              if (v87)
              {
                v71 = v27;
              }

              else
              {
                v71 = 1;
              }

              goto LABEL_39;
            }
          }

          else
          {
LABEL_22:
            OUTLINED_FUNCTION_81_11(28, v179, v181, v183, v185, v187, v189, v191, v193, v195, v197, v199, v201, v203, v205, v207, v209, v211, v213, v215, v217, v219, v221, v223, v225);
            OUTLINED_FUNCTION_5_36();
            if (!test_string_s())
            {
              v81 = OUTLINED_FUNCTION_16_33();
              if (!lpta_loadp_setscan_r(v81, v82) && !advance_tok(v0))
              {
                v83 = OUTLINED_FUNCTION_70_12();
                bspush_ca_scan(v83, v84);
                OUTLINED_FUNCTION_13_34();
LABEL_64:
                v131 = test_string_s();
                v106 = v27;
                v71 = v27;
                if (v131)
                {
                  goto LABEL_39;
                }

LABEL_65:
                LODWORD(v27) = v106;
                inserted = OUTLINED_FUNCTION_4_37();
LABEL_38:
                v71 = v27;
                if (inserted)
                {
                  goto LABEL_39;
                }

LABEL_68:
                OUTLINED_FUNCTION_100_6(v229);
                goto LABEL_3;
              }
            }
          }

          goto LABEL_86;
        }

LABEL_71:
        v27 = v227;
        v134 = OUTLINED_FUNCTION_86_9();
        savescptr(v134, v135, v136);
        v137 = OUTLINED_FUNCTION_42_15();
        starttest(v137, v138);
        v139 = OUTLINED_FUNCTION_74_12();
        if (lpta_loadp_setscan_r(v139, v140))
        {
LABEL_72:
          v141 = OUTLINED_FUNCTION_48_15();
          starttest(v141, v142);
          v143 = OUTLINED_FUNCTION_10_35();
          lpta_loadp_setscan_r(v143, v144);
          OUTLINED_FUNCTION_133_4();
          if (!v145)
          {
LABEL_76:
            v149 = OUTLINED_FUNCTION_91_9();
            savescptr(v149, v150, v151);
            v152 = OUTLINED_FUNCTION_3_38();
            if (!testFldeq(v152, v153, v154, v155) && !advance_tok(v0))
            {
              v156 = OUTLINED_FUNCTION_44_15();
              starttest(v156, v157);
              v158 = OUTLINED_FUNCTION_70_12();
              bspush_ca(v158);
              v159 = OUTLINED_FUNCTION_33_20();
              lpta_loadp_setscan_l(v159, v160);
              OUTLINED_FUNCTION_146_4();
              if (v161)
              {
                goto LABEL_39;
              }

LABEL_79:
              LODWORD(v27) = v132;
              OUTLINED_FUNCTION_81_11(21, v179, v181, v183, v185, v187, v189, v191, v193, v195, v197, v199, v201, v203, v205, v207, v209, v211, v213, v215, v217, v219, v221, v223, v225);
              OUTLINED_FUNCTION_29_23();
              if (!test_string_s())
              {
                v162 = OUTLINED_FUNCTION_16_33();
                if (!lpta_loadp_setscan_r(v162, v163) && !advance_tok(v0) && !advance_tok(v0))
                {
                  OUTLINED_FUNCTION_5_36();
LABEL_89:
                  v174 = test_string_s();
                  v105 = v27;
                  v71 = v27;
                  if (v174)
                  {
                    goto LABEL_39;
                  }

LABEL_90:
                  LODWORD(v27) = v105;
                  v175 = OUTLINED_FUNCTION_20_28();
                  lpta_rpta_loadp(v175, v176, v177);
LABEL_62:
                  v95 = OUTLINED_FUNCTION_1_39();
                  goto LABEL_37;
                }
              }
            }

LABEL_86:
            v71 = v27;
LABEL_39:
            v101 = v0[13];
            if (v101)
            {
              v102 = OUTLINED_FUNCTION_92_9(v101);
              LODWORD(v27) = v103;
            }

            else
            {
              v102 = vback(v0, v71);
              LODWORD(v27) = 0;
            }

            v86 = v27;
            v104 = v27;
            v105 = v27;
            v106 = v27;
            v72 = v27;
            switch(v102)
            {
              case 1:
                continue;
              case 2:
                goto LABEL_20;
              case 3:
              case 8:
              case 16:
              case 24:
                goto LABEL_68;
              case 4:
              case 25:
              case 43:
                goto LABEL_35;
              case 5:
                goto LABEL_26;
              case 6:
                goto LABEL_27;
              case 7:
                bspop_boa(v0);
                goto LABEL_68;
              case 9:
                goto LABEL_9;
              case 10:
                goto LABEL_71;
              case 11:
                goto LABEL_72;
              case 12:
                v107 = OUTLINED_FUNCTION_47_15();
                bspush_ca_scan(v107, v108);
                OUTLINED_FUNCTION_5_36();
                goto LABEL_45;
              case 13:
                goto LABEL_75;
              case 14:
                v111 = OUTLINED_FUNCTION_70_12();
                bspush_ca_scan(v111, v112);
                v109 = OUTLINED_FUNCTION_4_37();
                goto LABEL_49;
              case 15:
                OUTLINED_FUNCTION_29_23();
LABEL_45:
                v109 = test_string_s();
LABEL_49:
                v104 = v27;
                v71 = v27;
                if (!v109)
                {
                  goto LABEL_75;
                }

                goto LABEL_39;
              case 17:
                v133 = v27;
                break;
              case 18:
                goto LABEL_76;
              case 19:
                v88 = OUTLINED_FUNCTION_70_12();
                starttest(v88, v89);
                v90 = OUTLINED_FUNCTION_11_35();
                if (lpta_loadp_setscan_r(v90, v91))
                {
                  goto LABEL_35;
                }

                OUTLINED_FUNCTION_5_36();
                if (test_string_s())
                {
                  goto LABEL_35;
                }

                OUTLINED_FUNCTION_57_13();
                bspush_ca_boa();
                lpta_rpta_loadp(v0, &v228, (v0 + 207));
                v65 = OUTLINED_FUNCTION_69_12();
                v67 = 8;
                goto LABEL_28;
              case 20:
                v113 = OUTLINED_FUNCTION_33_20();
                v115 = lpta_loadp_setscan_l(v113, v114);
                v71 = v27;
                if (v115)
                {
                  goto LABEL_39;
                }

                goto LABEL_52;
              case 21:
                v132 = v27;
                goto LABEL_79;
              case 22:
                goto LABEL_90;
              case 23:
LABEL_52:
                OUTLINED_FUNCTION_81_11(23, v179, v181, v183, v185, v187, v189, v191, v193, v195, v197, v199, v201, v203, v205, v207, v209, v211, v213, v215, v217, v219, v221, v223, v225);
                OUTLINED_FUNCTION_13_34();
                v116 = test_string_s();
                v71 = v27;
                if (v116)
                {
                  goto LABEL_39;
                }

                v117 = OUTLINED_FUNCTION_16_33();
                v119 = lpta_loadp_setscan_r(v117, v118);
                v71 = v27;
                if (v119)
                {
                  goto LABEL_39;
                }

                v120 = advance_tok(v0);
                v71 = v27;
                if (v120)
                {
                  goto LABEL_39;
                }

                v121 = advance_tok(v0);
                v71 = v27;
                if (v121)
                {
                  goto LABEL_39;
                }

                OUTLINED_FUNCTION_29_23();
                goto LABEL_89;
              case 26:
                bspop_boa(v0);
                v128 = OUTLINED_FUNCTION_20_28();
                lpta_rpta_loadp(v128, v129, v130);
                goto LABEL_62;
              case 27:
                v45 = v27;
                goto LABEL_10;
              case 28:
                goto LABEL_22;
              case 29:
                OUTLINED_FUNCTION_29_23();
                goto LABEL_64;
              case 30:
                goto LABEL_65;
              case 31:
                goto LABEL_12;
              case 32:
                v51 = v27;
                goto LABEL_85;
              case 33:
                bspop_boa(v0);
                v110 = advance_tok(v0);
                v71 = v27;
                if (!v110)
                {
                  goto LABEL_35;
                }

                goto LABEL_39;
              case 34:
                goto LABEL_13;
              case 35:
              case 37:
              case 38:
              case 39:
              case 40:
              case 41:
                v122 = OUTLINED_FUNCTION_70_12();
                bspush_ca_scan(v122, v123);
                goto LABEL_58;
              case 36:
                goto LABEL_59;
              case 42:
LABEL_58:
                OUTLINED_FUNCTION_5_36();
                test_string_s();
                OUTLINED_FUNCTION_146_4();
                if (!v124)
                {
                  goto LABEL_59;
                }

                goto LABEL_39;
              case 44:
                v61 = v27;
                goto LABEL_15;
              case 45:
                bspop_boa(v0);
                v125 = OUTLINED_FUNCTION_20_28();
                lpta_rpta_loadp(v125, v126, v127);
                goto LABEL_36;
              default:
                goto LABEL_3;
            }
          }

          LODWORD(v27) = v133;
        }

        else
        {
          v146 = OUTLINED_FUNCTION_66_12();
          bspush_ca_scan(v146, v147);
          OUTLINED_FUNCTION_5_36();
          test_string_s();
          OUTLINED_FUNCTION_144_4();
          if (v148)
          {
            goto LABEL_39;
          }

LABEL_75:
          LODWORD(v27) = v104;
        }

        break;
      }

LABEL_35:
      v92 = OUTLINED_FUNCTION_20_28();
      lpta_rpta_loadp(v92, v93, v94);
LABEL_36:
      v95 = OUTLINED_FUNCTION_0_40();
LABEL_37:
      inserted = insert_2pt_s(v95, v96, v97, v98, v99);
      goto LABEL_38;
    }
  }

LABEL_3:
  vretproc(v0);
  v16 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_135_4();
}

uint64_t h_rules()
{
  OUTLINED_FUNCTION_18_32();
  v120 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8_36(v2, v3, v4, v5, v6, v7, v8, v9, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119);
  OUTLINED_FUNCTION_55_14();
  if (setjmp(v1))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_19_28();
  if (OUTLINED_FUNCTION_137_4(v10, v11, v12, v13, v14))
  {
    goto LABEL_3;
  }

  v17 = OUTLINED_FUNCTION_23_26();
  get_parm(v17, v18, v19, -6);
  v20 = OUTLINED_FUNCTION_75_12();
  OUTLINED_FUNCTION_129_4(v20, v21);
  v22 = OUTLINED_FUNCTION_77_11();
  push_ptr_init(v22, v23);
  fence_37(v0, 0, &null_str_14);
  v24 = OUTLINED_FUNCTION_69_12();
  fence_37(v24, v25, v26);
  v27 = OUTLINED_FUNCTION_80_11();
  lpta_loadpn(v27, v28);
  v29 = OUTLINED_FUNCTION_99_7();
  rpta_loadpn(v29, v30);
  if (compare_ptas(v0) || testeq(v0))
  {
LABEL_6:
    OUTLINED_FUNCTION_100_6(v116);
    goto LABEL_3;
  }

  v31 = OUTLINED_FUNCTION_38_17();
  starttest(v31, v32);
  OUTLINED_FUNCTION_87_9();
  v33 = OUTLINED_FUNCTION_69_12();
  v35 = setd_lookup(v33, v34, 50);
  if (!v35)
  {
    goto LABEL_12;
  }

  while (2)
  {
    v43 = OUTLINED_FUNCTION_52_14();
    starttest(v43, v44);
    v45 = OUTLINED_FUNCTION_10_35();
    if (lpta_loadp_setscan_r(v45, v46))
    {
      goto LABEL_6;
    }

LABEL_9:
    if (!advance_tok(v0))
    {
      v47 = OUTLINED_FUNCTION_35_17();
      bspush_ca_scan(v47, v48);
LABEL_11:
      v49 = OUTLINED_FUNCTION_86_9();
      savescptr(v49, v50, v51);
      v52 = OUTLINED_FUNCTION_86_9();
      lpta_rpta_loadp(v52, v53, v54);
      v55 = OUTLINED_FUNCTION_69_12();
      v35 = setd_lookup(v55, v56, 51);
      if (!v35)
      {
LABEL_12:
        OUTLINED_FUNCTION_83_10(v35, v36, v37, v38, v39, v40, v41, v42, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118);
        v57 = OUTLINED_FUNCTION_0_40();
        if (!insert_2pt_s(v57, v58, v59, v60, v61))
        {
          goto LABEL_6;
        }
      }
    }

    v62 = *(v0 + 104);
    if (v62)
    {
      v35 = OUTLINED_FUNCTION_92_9(v62);
    }

    else
    {
      v35 = OUTLINED_FUNCTION_136_4();
    }

    switch(v35)
    {
      case 1:
      case 4:
        goto LABEL_6;
      case 2:
        continue;
      case 3:
        goto LABEL_12;
      case 5:
        goto LABEL_9;
      case 6:
        goto LABEL_11;
      default:
        goto LABEL_3;
    }
  }

LABEL_3:
  vretproc(v0);
  v15 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_126_4();
}

void j_rules()
{
  OUTLINED_FUNCTION_160_3();
  OUTLINED_FUNCTION_18_32();
  v160 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_15_33(v2, v3, v4, v5, v6, v7, v8, v9, v59, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v147, v151, v152, v153, v154);
  OUTLINED_FUNCTION_64_12(v10, v11, v12, v13, v14, v15, v16, v17, v60, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144, v148, v151, v152, v153, v154, v155, v156, v157, v158, v159);
  v18 = setjmp(v1);
  if (!v18 && !OUTLINED_FUNCTION_14_34(v18, v19, v20, v21, v22, v23, v24, v25, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, v149, v151, v152, v153, v154, v155, SBYTE4(v155), v156, SWORD2(v156), SBYTE6(v156), v157, SWORD2(v157), SBYTE6(v157), SHIBYTE(v157), v158, v159))
  {
    v27 = OUTLINED_FUNCTION_75_12();
    OUTLINED_FUNCTION_130_4(v27, v28);
    v29 = OUTLINED_FUNCTION_77_11();
    OUTLINED_FUNCTION_129_4(v29, v30);
    fence_37(v0, 0, &null_str_14);
    v31 = OUTLINED_FUNCTION_128_4();
    starttest(v31, v32);
    OUTLINED_FUNCTION_87_9();
    v33 = OUTLINED_FUNCTION_73_12();
    if (setd_lookup(v33, v34, 17) || (v35 = OUTLINED_FUNCTION_88_9(), lpta_rpta_loadp(v35, v36, v37), v38 = OUTLINED_FUNCTION_0_40(), inserted = insert_2pt_s(v38, v39, v40, v41, v42), inserted))
    {
      while (1)
      {
        v51 = OUTLINED_FUNCTION_80_11();
        lpta_rpta_loadp(v51, v52, &v151);
        v53 = OUTLINED_FUNCTION_6_36();
        inserted = insert_2pt_s(v53, v54, v55, &unk_28064B822, 0);
        if (!inserted)
        {
          break;
        }

        v56 = *(v0 + 104);
        if (v56)
        {
          inserted = OUTLINED_FUNCTION_92_9(v56);
        }

        else
        {
          v57 = OUTLINED_FUNCTION_73_12();
          inserted = vback(v57, v58);
        }

        if (inserted != 1)
        {
          if (inserted != 2)
          {
            goto LABEL_3;
          }

          break;
        }
      }
    }

    OUTLINED_FUNCTION_79_11(inserted, v44, v45, v46, v47, v48, v49, v50, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142, v146, v150, v151, v152);
  }

LABEL_3:
  vretproc(v0);
  v26 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_118_4();
  OUTLINED_FUNCTION_161_3();
}

uint64_t k_rules()
{
  OUTLINED_FUNCTION_18_32();
  v167 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_15_33(v2, v3, v4, v5, v6, v7, v8, v9, v51, v55, v59, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v147, v151, v154);
  OUTLINED_FUNCTION_64_12(v10, v11, v12, v13, v14, v15, v16, v17, v52, v56, v60, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144, v148, v152, v155, v157, v159, v161, v163, v165);
  v18 = setjmp(v1);
  if (!v18 && !OUTLINED_FUNCTION_14_34(v18, v19, v20, v21, v22, v23, v24, v25, v53, v57, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, v149, v153, v156, *v158, v158[4], *v160, *&v160[4], v160[6], v162, SWORD2(v162), SBYTE6(v162), SHIBYTE(v162), v164, v166))
  {
    v28 = OUTLINED_FUNCTION_23_26();
    get_parm(v28, v29, v30, -6);
    OUTLINED_FUNCTION_41_15();
    v31 = OUTLINED_FUNCTION_98_7();
    fence_37(v31, v32, v33);
    v34 = OUTLINED_FUNCTION_69_12();
    fence_37(v34, v35, &unk_28064B83D);
    v36 = OUTLINED_FUNCTION_23_26();
    lpta_rpta_loadp(v36, v37, v38);
    v39 = OUTLINED_FUNCTION_6_36();
    inserted = insert_2pt_s(v39, v40, v41, v42, 0);
    if (inserted)
    {
      if (*(v0 + 104))
      {
        *(v0 + 104) = 0;
      }

      else
      {
        OUTLINED_FUNCTION_136_4();
      }
    }

    else
    {
      OUTLINED_FUNCTION_79_11(inserted, v44, v45, v46, v47, v48, v49, v50, v54, v58, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142, v146, v150);
    }
  }

  vretproc(v0);
  v26 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_118_4();
}

void l_rules()
{
  OUTLINED_FUNCTION_132_4();
  v2 = v1;
  OUTLINED_FUNCTION_148_4();
  v102 = *MEMORY[0x277D85DE8];
  v97[0] = 0;
  v97[1] = 0;
  v95 = 0;
  v96 = 0;
  v94[0] = 0;
  v94[1] = 0;
  OUTLINED_FUNCTION_159_3();
  OUTLINED_FUNCTION_90_9();
  bzero(v91, v3);
  OUTLINED_FUNCTION_89_9();
  bzero(v101, v4);
  if (!setjmp(v101) && !ventproc(v0, v91, v100, v99, v98, v101))
  {
    OUTLINED_FUNCTION_41_15();
    get_parm(v0, &v95, v2, -6);
    push_ptr_init(v0, v94);
    push_ptr_init(v0, v93);
    push_ptr_init(v0, v92);
    v6 = OUTLINED_FUNCTION_98_7();
    fence_37(v6, v7, v8);
    v9 = OUTLINED_FUNCTION_56_13();
    fence_37(v9, v10, v11);
    OUTLINED_FUNCTION_143_4();
    v12 = OUTLINED_FUNCTION_74_12();
    v14 = 0;
    v15 = 0;
    if (lpta_loadp_setscan_l(v12, v13))
    {
LABEL_5:
      v90 = v2;
      v16 = OUTLINED_FUNCTION_47_15();
      starttest(v16, v17);
      lpta_loadpn(v0, &v95);
      v18 = OUTLINED_FUNCTION_105_5();
      rpta_loadpn(v18, v19);
      if (compare_ptas(v0) || testeq(v0))
      {
        goto LABEL_45;
      }

      OUTLINED_FUNCTION_87_9();
      v20 = OUTLINED_FUNCTION_69_12();
      if (!setd_lookup(v20, v21, 13))
      {
LABEL_40:
        *(v90 + 1) = v96;
        goto LABEL_3;
      }

LABEL_43:
      v78 = OUTLINED_FUNCTION_48_15();
      starttest(v78, v79);
      v80 = OUTLINED_FUNCTION_71_12();
      if (lpta_loadp_setscan_l(v80, v81) || (OUTLINED_FUNCTION_5_36(), test_string_s()))
      {
LABEL_45:
        v14 = v15;
        lpta_rpta_loadp(v0, v97, &v95);
      }

      else
      {
        v87 = OUTLINED_FUNCTION_60_13();
        bspush_ca_scan(v87, v88);
        OUTLINED_FUNCTION_5_36();
        v89 = test_string_s();
        v14 = v15;
        v30 = v15;
        if (v89)
        {
          goto LABEL_13;
        }

LABEL_50:
        v14 = v30;
        lpta_rpta_loadp(v0, v97, &v95);
      }

      v82 = OUTLINED_FUNCTION_0_40();
      if (!insert_2pt_s(v82, v83, v84, v85, v86))
      {
        goto LABEL_40;
      }
    }

    else
    {
LABEL_10:
      v90 = v2;
      OUTLINED_FUNCTION_104_6();
      savescptr(v0, v22, v94);
      OUTLINED_FUNCTION_82_10();
      if (!test_string_s())
      {
        OUTLINED_FUNCTION_61_13();
        bspush_ca_scan_boa();
        *(v0 + 136) = v15;
        v23 = *(v0 + 1648);
        v24 = OUTLINED_FUNCTION_9_35();
        if (!test_ptr(v24))
        {
          v14 = 1;
        }
      }
    }

LABEL_13:
    v25 = v14;
    LOBYTE(v15) = 8;
    while (2)
    {
      v26 = *(v0 + 104);
      if (v26)
      {
        v27 = OUTLINED_FUNCTION_92_9(v26);
        v29 = v28;
      }

      else
      {
        v27 = vback(v0, v25);
        v29 = 0;
      }

      v30 = v29;
      switch(v27)
      {
        case 1:
          v15 = v29;
          v2 = v90;
          goto LABEL_5;
        case 2:
          v14 = v29;
          v2 = v90;
          goto LABEL_10;
        case 3:
          bspop_boa(v0);
          v31 = lpta_loadp_setscan_r(v0, v94);
          v25 = v29;
          if (v31)
          {
            continue;
          }

          v32 = advance_tok(v0);
          v25 = v29;
          if (v32)
          {
            continue;
          }

          OUTLINED_FUNCTION_5_36();
          v33 = test_string_s();
          v25 = v29;
          if (v33)
          {
            continue;
          }

          goto LABEL_21;
        case 4:
LABEL_21:
          v34 = OUTLINED_FUNCTION_147_4();
          savescptr(v34, v35, &v95);
          v36 = OUTLINED_FUNCTION_154_3();
          starttest(v36, v37);
          v38 = OUTLINED_FUNCTION_125_4();
          if (lpta_loadp_setscan_l(v38, v39))
          {
            goto LABEL_22;
          }

          goto LABEL_25;
        case 5:
LABEL_22:
          v40 = OUTLINED_FUNCTION_80_11();
          starttest(v40, v41);
          OUTLINED_FUNCTION_87_9();
          v42 = OUTLINED_FUNCTION_69_12();
          if (setd_lookup(v42, v43, 42))
          {
            goto LABEL_24;
          }

          v44 = OUTLINED_FUNCTION_74_12();
          lpta_rpta_loadp(v44, v45, &v95);
          v46 = OUTLINED_FUNCTION_0_40();
          if (insert_2pt_s(v46, v47, v48, &unk_28064B82D, v49))
          {
            goto LABEL_24;
          }

          goto LABEL_40;
        case 6:
LABEL_25:
          v57 = OUTLINED_FUNCTION_95_8();
          savescptr(v57, v58, v94);
          v59 = advance_tok(v0);
          v25 = v29;
          if (!v59)
          {
            v60 = advance_tok(v0);
            v25 = v29;
            if (!v60)
            {
              OUTLINED_FUNCTION_13_34();
              v61 = test_string_s();
              v25 = v29;
              if (!v61)
              {
                goto LABEL_28;
              }
            }
          }

          continue;
        case 7:
LABEL_28:
          v62 = OUTLINED_FUNCTION_119_4();
          savescptr(v62, v63, v93);
          v64 = lpta_loadp_setscan_r(v0, v94);
          v25 = v29;
          if (!v64)
          {
            OUTLINED_FUNCTION_5_36();
            v65 = test_string_s();
            v25 = v29;
            if (!v65)
            {
              goto LABEL_30;
            }
          }

          continue;
        case 8:
LABEL_30:
          v66 = OUTLINED_FUNCTION_97_7();
          savescptr(v66, v67, v92);
          v68 = OUTLINED_FUNCTION_110_4();
          bspush_ca(v68);
          lpta_loadpn(v0, v93);
          v69 = v0 + 1640;
          goto LABEL_36;
        case 9:
          lpta_loadpn(v0, v92);
          v69 = v0 + 1656;
LABEL_36:
          rpta_loadpn(v0, v69);
          v73 = compare_ptas(v0);
          v25 = v29;
          if (!v73)
          {
            v74 = testeq(v0);
            v25 = v29;
            if (!v74)
            {
              goto LABEL_38;
            }
          }

          continue;
        case 10:
LABEL_38:
          v75 = OUTLINED_FUNCTION_74_12();
          lpta_rpta_loadp(v75, v76, &v95);
          v52 = OUTLINED_FUNCTION_0_40();
          v56 = &unk_28064B82D;
          goto LABEL_39;
        case 11:
        case 13:
        case 16:
          goto LABEL_40;
        case 12:
LABEL_24:
          v50 = OUTLINED_FUNCTION_74_12();
          lpta_rpta_loadp(v50, v51, &v95);
          v52 = OUTLINED_FUNCTION_0_40();
          v56 = &unk_28064B82E;
LABEL_39:
          inserted = insert_2pt_s(v52, v53, v54, v56, v55);
          v25 = v29;
          if (!inserted)
          {
            goto LABEL_40;
          }

          continue;
        case 14:
        case 17:
          v15 = v29;
          goto LABEL_45;
        case 15:
          v15 = v29;
          goto LABEL_43;
        case 18:
          v70 = OUTLINED_FUNCTION_112_4();
          bspush_ca_scan(v70, v71);
          OUTLINED_FUNCTION_5_36();
          goto LABEL_33;
        case 19:
          goto LABEL_50;
        case 20:
          OUTLINED_FUNCTION_5_36();
LABEL_33:
          v72 = test_string_s();
          v30 = v29;
          v25 = v29;
          if (!v72)
          {
            goto LABEL_50;
          }

          continue;
        default:
          goto LABEL_3;
      }
    }
  }

LABEL_3:
  vretproc(v0);
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_131_4();
}

void m_rules()
{
  OUTLINED_FUNCTION_132_4();
  OUTLINED_FUNCTION_18_32();
  v123 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_159_3();
  OUTLINED_FUNCTION_84_10(v2, v3, v4, v5, v6, v7, v8, v9, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v107);
  OUTLINED_FUNCTION_89_9();
  bzero(v122, v10);
  v11 = setjmp(v122);
  if (v11 || OUTLINED_FUNCTION_141_4(v11, v12, v13, v14, v15, v16, v17, v18, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122[0]))
  {
    goto LABEL_3;
  }

  v20 = OUTLINED_FUNCTION_86_9();
  get_parm(v20, v21, v22, -6);
  v23 = OUTLINED_FUNCTION_80_11();
  OUTLINED_FUNCTION_129_4(v23, v24);
  v25 = OUTLINED_FUNCTION_117_4();
  push_ptr_init(v25, v26);
  fence_37(v0, 0, &null_str_14);
  v27 = OUTLINED_FUNCTION_21_27();
  fence_37(v27, v28, v29);
  v30 = OUTLINED_FUNCTION_63_12();
  if (!lpta_loadp_setscan_r(v30, v31))
  {
    *(v0 + 136) = v1;
    v32 = *(v0 + 1664);
    v33 = OUTLINED_FUNCTION_9_35();
    if (!test_ptr(v33))
    {
      OUTLINED_FUNCTION_5_36();
      if (!test_string_s())
      {
        goto LABEL_21;
      }
    }
  }

  while (2)
  {
    v34 = OUTLINED_FUNCTION_74_12();
    starttest(v34, v35);
    v36 = OUTLINED_FUNCTION_80_11();
    if (lpta_loadp_setscan_r(v36, v37))
    {
LABEL_20:
      v56 = OUTLINED_FUNCTION_119_4();
      lpta_rpta_loadp(v56, v57, &v108);
      v49 = OUTLINED_FUNCTION_0_40();
      v53 = &unk_28064B827;
LABEL_14:
      if (insert_2pt_s(v49, v50, v51, v53, v52))
      {
        goto LABEL_15;
      }

LABEL_21:
      OUTLINED_FUNCTION_100_6(v109);
      break;
    }

LABEL_8:
    v38 = OUTLINED_FUNCTION_112_4();
    savescptr(v38, v39, &v106);
    OUTLINED_FUNCTION_5_36();
    if (!test_string_s())
    {
LABEL_9:
      v40 = OUTLINED_FUNCTION_107_4();
      savescptr(v40, v41, v42);
      v43 = OUTLINED_FUNCTION_93_9();
      if (!lpta_loadp_setscan_l(v43, v44) && !advance_tok(v0))
      {
        v45 = OUTLINED_FUNCTION_154_3();
        bspush_ca_scan(v45, v46);
        OUTLINED_FUNCTION_13_34();
LABEL_12:
        if (!test_string_s())
        {
LABEL_13:
          v47 = OUTLINED_FUNCTION_119_4();
          lpta_rpta_loadp(v47, v48, &v108);
          v49 = OUTLINED_FUNCTION_0_40();
          v53 = &unk_28064B828;
          goto LABEL_14;
        }
      }
    }

LABEL_15:
    v54 = *(v0 + 104);
    if (v54)
    {
      v55 = OUTLINED_FUNCTION_92_9(v54);
    }

    else
    {
      v55 = OUTLINED_FUNCTION_136_4();
    }

    switch(v55)
    {
      case 1:
        continue;
      case 2:
        goto LABEL_21;
      case 3:
        goto LABEL_20;
      case 4:
        goto LABEL_8;
      case 5:
        goto LABEL_9;
      case 6:
        OUTLINED_FUNCTION_13_34();
        goto LABEL_12;
      case 7:
        goto LABEL_13;
      default:
        goto LABEL_3;
    }
  }

LABEL_3:
  vretproc(v0);
  v19 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_135_4();
  OUTLINED_FUNCTION_131_4();
}

uint64_t n_rules()
{
  OUTLINED_FUNCTION_18_32();
  v59 = *MEMORY[0x277D85DE8];
  v55[0] = 0;
  v55[1] = 0;
  OUTLINED_FUNCTION_40_16(v2, v3, v4, v5, v6, v7, v8, v9, v48, v49[0], v49[1], v49[2], v49[3], v49[4], v49[5], v49[6], v49[7], v49[8], v49[9], v49[10], v49[11], v49[12], v49[13], v49[14], v49[15], v49[16], v49[17], v49[18], v49[19], v49[20], v49[21], v49[22], v50, v51, v52, v53[0], v53[1], v53[2], v54);
  OUTLINED_FUNCTION_55_14();
  v10 = setjmp(v1);
  if (v10 || OUTLINED_FUNCTION_137_4(v10, v49, v58, v57, v56))
  {
    goto LABEL_3;
  }

  v13 = OUTLINED_FUNCTION_86_9();
  get_parm(v13, v14, v15, -6);
  OUTLINED_FUNCTION_41_15();
  v16 = OUTLINED_FUNCTION_94_8();
  push_ptr_init(v16, v17);
  OUTLINED_FUNCTION_102_6();
  fence_37(v0, 0, &null_str_14);
  v18 = OUTLINED_FUNCTION_56_13();
  fence_37(v18, v19, v20);
  OUTLINED_FUNCTION_143_4();
  v21 = OUTLINED_FUNCTION_74_12();
  lpta_loadpn(v21, v22);
  v23 = OUTLINED_FUNCTION_105_5();
  rpta_loadpn(v23, v24);
  if (compare_ptas(v0) || testeq(v0) || lpta_loadp_setscan_l(v0, v55))
  {
LABEL_16:
    v40 = OUTLINED_FUNCTION_115_4();
    lpta_rpta_loadp(v40, v41, v42);
    v43 = OUTLINED_FUNCTION_0_40();
    if (insert_2pt_s(v43, v44, v45, v46, v47))
    {
      goto LABEL_12;
    }

    goto LABEL_17;
  }

  while (2)
  {
    savescptr(v0, 2, v53);
    v25 = OUTLINED_FUNCTION_73_12();
    if (!testFldeq(v25, v26, 11, 1) && !advance_tok(v0))
    {
LABEL_9:
      OUTLINED_FUNCTION_109_4();
      savescptr(v0, v27, v0 + 1272);
      v28 = OUTLINED_FUNCTION_52_14();
      starttest(v28, v29);
      is_liaison_con();
      if (!v30)
      {
        v31 = OUTLINED_FUNCTION_115_4();
        lpta_rpta_loadp(v31, v32, v33);
        OUTLINED_FUNCTION_74_12();
        settvar_s();
        v34 = OUTLINED_FUNCTION_69_12();
        npush_s(v34);
        WORD1(v50) = 17;
        v35 = OUTLINED_FUNCTION_74_12();
        npop(v35, v36);
        OUTLINED_FUNCTION_37_17();
        insert_2ptv();
        if (v37)
        {
          goto LABEL_12;
        }

        lpta_rpta_loadp(v0, v0 + 1272, v53);
        OUTLINED_FUNCTION_7_36();
        if (mark_s())
        {
          goto LABEL_12;
        }
      }

LABEL_17:
      OUTLINED_FUNCTION_100_6(v54);
      break;
    }

LABEL_12:
    v38 = *(v0 + 104);
    if (v38)
    {
      v39 = OUTLINED_FUNCTION_92_9(v38);
    }

    else
    {
      v39 = OUTLINED_FUNCTION_136_4();
    }

    switch(v39)
    {
      case 1:
        goto LABEL_16;
      case 2:
        continue;
      case 3:
        goto LABEL_9;
      case 4:
      case 5:
        goto LABEL_17;
      default:
        goto LABEL_3;
    }
  }

LABEL_3:
  vretproc(v0);
  v11 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_157_3();
}

void p_rules()
{
  OUTLINED_FUNCTION_160_3();
  OUTLINED_FUNCTION_18_32();
  v142 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8_36(v1, v2, v3, v4, v5, v6, v7, v8, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v138, v139, v140);
  OUTLINED_FUNCTION_89_9();
  bzero(v141, v9);
  if (!setjmp(v141))
  {
    OUTLINED_FUNCTION_19_28();
    if (!ventproc(v0, v10, v11, v12, v13, v141))
    {
      v15 = OUTLINED_FUNCTION_67_12();
      get_parm(v15, v16, v17, -6);
      OUTLINED_FUNCTION_41_15();
      v18 = OUTLINED_FUNCTION_77_11();
      push_ptr_init(v18, v19);
      v20 = 0;
      v21 = OUTLINED_FUNCTION_98_7();
      v24 = fence_37(v21, v22, v23);
      OUTLINED_FUNCTION_111_4(v24, v25, &unk_28064B83D);
      v26 = OUTLINED_FUNCTION_116_4();
      starttest(v26, v27);
      v28 = OUTLINED_FUNCTION_74_12();
      if (!lpta_loadp_setscan_r(v28, v29))
      {
        OUTLINED_FUNCTION_5_36();
        v20 = 0;
        v30 = 0;
        if (!test_string_s())
        {
          while (2)
          {
            savescptr(v0, 2, &v137);
            v31 = OUTLINED_FUNCTION_76_12();
            lpta_rpta_loadp(v31, v32, &v137);
            v33 = OUTLINED_FUNCTION_73_12();
LABEL_36:
            inserted = insert_2pt_s(v33, v34, 1, v35, v36);
LABEL_37:
            v58 = v30;
            if (!inserted)
            {
LABEL_38:
              OUTLINED_FUNCTION_100_6(v138);
              goto LABEL_3;
            }

LABEL_18:
            v30 = v58;
LABEL_19:
            v59 = v0[13];
            if (v59)
            {
              v48 = OUTLINED_FUNCTION_92_9(v59);
              v30 = v49;
            }

            else
            {
              v48 = vback(v0, v30);
              v30 = 0;
            }

            switch(v48)
            {
              case 1:
                v20 = v30;
                break;
              case 2:
                continue;
              case 3:
              case 6:
              case 12:
                goto LABEL_38;
              case 4:
                v37 = v30;
                goto LABEL_33;
              case 5:
                v37 = v30;
                goto LABEL_13;
              case 7:
                v37 = v30;
                goto LABEL_29;
              case 8:
                bspop_boa(v0);
                goto LABEL_38;
              case 9:
                goto LABEL_34;
              case 10:
                v37 = v30;
                goto LABEL_40;
              case 11:
                v60 = OUTLINED_FUNCTION_74_12();
                bspush_ca_scan(v60, v61);
                OUTLINED_FUNCTION_29_23();
                goto LABEL_25;
              case 13:
                OUTLINED_FUNCTION_12_35();
LABEL_25:
                if (!test_string_s())
                {
                  goto LABEL_38;
                }

                goto LABEL_19;
              case 14:
                goto LABEL_35;
              case 15:
                v37 = v30;
                goto LABEL_45;
              case 16:
                goto LABEL_50;
              default:
                goto LABEL_3;
            }

            break;
          }
        }
      }

      v37 = v20;
      v38 = OUTLINED_FUNCTION_75_12();
      lpta_loadpn(v38, v39);
      v40 = OUTLINED_FUNCTION_105_5();
      rpta_loadpn(v40, v41);
      if (!compare_ptas(v0) && !testeq(v0))
      {
        OUTLINED_FUNCTION_87_9();
        v42 = OUTLINED_FUNCTION_69_12();
        if (!setd_lookup(v42, v43, 44))
        {
          goto LABEL_38;
        }

LABEL_13:
        v44 = OUTLINED_FUNCTION_50_15();
        starttest(v44, v45);
        v46 = OUTLINED_FUNCTION_11_35();
        v48 = lpta_loadp_setscan_l(v46, v47);
        if (!v48)
        {
          OUTLINED_FUNCTION_5_36();
          v48 = test_string_s();
          if (!v48)
          {
            OUTLINED_FUNCTION_32_20();
            bspush_ca_boa();
            OUTLINED_FUNCTION_87_9();
            v56 = OUTLINED_FUNCTION_69_12();
            if (setd_lookup(v56, v57, 43))
            {
              v58 = v37;
            }

            else
            {
              v58 = 1;
            }

            goto LABEL_18;
          }
        }

LABEL_29:
        OUTLINED_FUNCTION_83_10(v48, v49, v50, v51, v52, v53, v54, v55, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v137, v138, v139);
        v62 = OUTLINED_FUNCTION_0_40();
        v67 = insert_2pt_s(v62, v63, v64, v65, v66);
        goto LABEL_30;
      }

LABEL_33:
      v30 = v37;
      v68 = OUTLINED_FUNCTION_39_16();
      starttest(v68, v69);
      v70 = OUTLINED_FUNCTION_10_35();
      if (lpta_loadp_setscan_r(v70, v71))
      {
LABEL_34:
        v72 = OUTLINED_FUNCTION_47_15();
        starttest(v72, v73);
        v74 = OUTLINED_FUNCTION_10_35();
        v48 = lpta_loadp_setscan_l(v74, v75);
        v37 = v30;
        if (v48)
        {
LABEL_35:
          OUTLINED_FUNCTION_83_10(v48, v49, v50, v51, v52, v53, v54, v55, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v137, v138, v139);
          v33 = OUTLINED_FUNCTION_7_36();
          goto LABEL_36;
        }

LABEL_45:
        OUTLINED_FUNCTION_81_11(15, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134);
        if (!advance_tok(v0))
        {
          OUTLINED_FUNCTION_5_36();
          if (!test_string_s())
          {
            v81 = OUTLINED_FUNCTION_16_33();
            if (!lpta_loadp_setscan_r(v81, v82))
            {
              OUTLINED_FUNCTION_5_36();
              v83 = test_string_s();
              v58 = v37;
              v30 = v37;
              if (v83)
              {
                goto LABEL_18;
              }

LABEL_50:
              v84 = OUTLINED_FUNCTION_85_10();
              savescptr(v84, v85, v86);
              inserted = OUTLINED_FUNCTION_4_37();
              goto LABEL_37;
            }
          }
        }
      }

      else
      {
LABEL_40:
        OUTLINED_FUNCTION_81_11(10, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134);
        OUTLINED_FUNCTION_5_36();
        if (!test_string_s())
        {
          v77 = OUTLINED_FUNCTION_16_33();
          if (!lpta_loadp_setscan_l(v77, v78) && !advance_tok(v0))
          {
            v79 = OUTLINED_FUNCTION_42_15();
            bspush_ca_scan(v79, v80);
            OUTLINED_FUNCTION_13_34();
            v67 = test_string_s();
LABEL_30:
            v58 = v37;
            if (!v67)
            {
              goto LABEL_38;
            }

            goto LABEL_18;
          }
        }
      }

      v58 = v37;
      goto LABEL_18;
    }
  }

LABEL_3:
  vretproc(v0);
  v14 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_126_4();
  OUTLINED_FUNCTION_161_3();
}

void q_rules()
{
  OUTLINED_FUNCTION_160_3();
  OUTLINED_FUNCTION_18_32();
  v183 = *MEMORY[0x277D85DE8];
  v180 = 0;
  v181 = 0;
  OUTLINED_FUNCTION_8_36(v1, v2, v3, v4, v5, v6, v7, v8, v132, v134, v136, v138, v140, v142, v144, v146, v148, v150, v152, v154, v156, v158, v160, v162, v164, v166, v168, v170, v172, v174, v176, v178[0], v178[1], v178[2], v178[3], v178[4], v179);
  OUTLINED_FUNCTION_89_9();
  bzero(v182, v9);
  if (setjmp(v182))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_46_15();
  if (ventproc(v0, v10, v11, v12, v13, v182))
  {
    goto LABEL_3;
  }

  v15 = OUTLINED_FUNCTION_78_11();
  get_parm(v15, v16, v17, -6);
  OUTLINED_FUNCTION_41_15();
  v18 = OUTLINED_FUNCTION_75_12();
  push_ptr_init(v18, v19);
  v20 = OUTLINED_FUNCTION_77_11();
  push_ptr_init(v20, v21);
  v22 = 0;
  v23 = OUTLINED_FUNCTION_98_7();
  v26 = fence_37(v23, v24, v25);
  OUTLINED_FUNCTION_111_4(v26, v27, &unk_28064B83D);
  v28 = OUTLINED_FUNCTION_116_4();
  starttest(v28, v29);
  v30 = OUTLINED_FUNCTION_74_12();
  if (lpta_loadp_setscan_r(v30, v31) || (OUTLINED_FUNCTION_5_36(), v22 = 0, LODWORD(v32) = 0, test_string_s()))
  {
LABEL_60:
    v110 = OUTLINED_FUNCTION_20_28();
    lpta_rpta_loadp(v110, v111, v112);
    v113 = OUTLINED_FUNCTION_0_40();
    if (!insert_2pt_s(v113, v114, v115, v116, v117))
    {
      goto LABEL_24;
    }
  }

  else
  {
LABEL_8:
    v22 = v32;
    OUTLINED_FUNCTION_104_6();
    v33 = OUTLINED_FUNCTION_91_9();
    savescptr(v33, v34, v35);
    v36 = OUTLINED_FUNCTION_3_38();
    if (!testFldeq(v36, v37, v38, v39) && !advance_tok(v0))
    {
      v40 = OUTLINED_FUNCTION_20_28();
      lpta_rpta_loadp(v40, v41, v42);
      v43 = OUTLINED_FUNCTION_0_40();
      if (!insert_2pt_s(v43, v44, v45, v46, v47))
      {
        v48 = OUTLINED_FUNCTION_61_13();
        starttest(v48, v49);
        v50 = OUTLINED_FUNCTION_11_35();
        if (lpta_loadp_setscan_r(v50, v51))
        {
          v52 = v32;
LABEL_13:
          v53 = OUTLINED_FUNCTION_44_15();
          starttest(v53, v54);
          v55 = OUTLINED_FUNCTION_33_20();
          v22 = v52;
          if (lpta_loadp_setscan_l(v55, v56))
          {
LABEL_14:
            v22 = v52;
            v57 = OUTLINED_FUNCTION_60_13();
            starttest(v57, v58);
            v59 = OUTLINED_FUNCTION_11_35();
            if (lpta_loadp_setscan_r(v59, v60))
            {
              goto LABEL_24;
            }

            v61 = OUTLINED_FUNCTION_70_12();
            bspush_ca_scan(v61, v62);
            OUTLINED_FUNCTION_5_36();
            if (!test_string_s())
            {
LABEL_16:
              OUTLINED_FUNCTION_87_9();
              v63 = OUTLINED_FUNCTION_21_27();
              if (!setd_lookup(v63, v64, 38))
              {
LABEL_74:
                *(v0 + 168) = v32;
                *(v0 + 144) = v179;
                *(v0 + 128) = 0;
                goto LABEL_23;
              }

LABEL_17:
              OUTLINED_FUNCTION_87_9();
              v65 = OUTLINED_FUNCTION_21_27();
              if (!setd_lookup(v65, v66, 40))
              {
                *(v0 + 168) = v32;
LABEL_22:
                *(v0 + 144) = v179;
                *(v0 + 128) = 0;
LABEL_23:
                v76 = OUTLINED_FUNCTION_1_39();
                insert_l(v76);
              }

LABEL_24:
              OUTLINED_FUNCTION_100_6(v179);
              goto LABEL_3;
            }
          }

          else
          {
LABEL_64:
            v118 = OUTLINED_FUNCTION_85_10();
            savescptr(v118, v119, v120);
            OUTLINED_FUNCTION_17_33();
            if (!test_string_s())
            {
              *(v0 + 136) = 1;
              v121 = *(v0 + 1648);
              v122 = OUTLINED_FUNCTION_9_35();
              if (!test_ptr(v122))
              {
                v123 = OUTLINED_FUNCTION_10_35();
                if (!lpta_loadp_setscan_r(v123, v124) && !advance_tok(v0) && !advance_tok(v0))
                {
                  OUTLINED_FUNCTION_5_36();
                  v52 = v22;
                  if (!test_string_s())
                  {
LABEL_70:
                    OUTLINED_FUNCTION_81_11(21, v133, v135, v137, v139, v141, v143, v145, v147, v149, v151, v153, v155, v157, v159, v161, v163, v165, v167, v169, v171, v173, v175, v177, v178[0]);
                    OUTLINED_FUNCTION_58_13();
                    bspush_ca_scan_boa();
                    if (OUTLINED_FUNCTION_4_37())
                    {
                      v22 = v52;
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

        else
        {
          v67 = OUTLINED_FUNCTION_52_14();
          bspush_ca_scan(v67, v68);
          OUTLINED_FUNCTION_5_36();
          v69 = test_string_s();
          v70 = v32;
          if (!v69)
          {
LABEL_20:
            v22 = v70;
            v71 = OUTLINED_FUNCTION_51_14();
            starttest(v71, v72);
            v73 = OUTLINED_FUNCTION_11_35();
            v75 = v22;
            if (lpta_loadp_setscan_l(v73, v74))
            {
LABEL_38:
              v89 = OUTLINED_FUNCTION_66_12();
              starttest(v89, v90);
              v91 = OUTLINED_FUNCTION_59_13();
              bspush_ca(v91);
              v92 = OUTLINED_FUNCTION_11_35();
              v94 = v22;
              if (!lpta_loadp_setscan_r(v92, v93))
              {
LABEL_39:
                v95 = OUTLINED_FUNCTION_85_10();
                savescptr(v95, v96, v97);
                OUTLINED_FUNCTION_5_36();
                if (test_string_s() || (v98 = OUTLINED_FUNCTION_10_35(), lpta_loadp_setscan_l(v98, v99)) || advance_tok(v0) || advance_tok(v0))
                {
                  v22 = v94;
                }

                else
                {
                  v127 = OUTLINED_FUNCTION_70_12();
                  bspush_ca_scan(v127, v128);
                  OUTLINED_FUNCTION_5_36();
                  v129 = test_string_s();
                  v103 = v94;
                  v22 = v94;
                  if (!v129)
                  {
LABEL_76:
                    v22 = v103;
                    OUTLINED_FUNCTION_96_7();
                    v130 = *(v0 + 1648);
                    v131 = OUTLINED_FUNCTION_9_35();
                    if (!test_ptr(v131))
                    {
LABEL_58:
                      *(v0 + 168) = 1;
                      goto LABEL_22;
                    }
                  }
                }
              }
            }

            else
            {
LABEL_26:
              v22 = v75;
              v77 = OUTLINED_FUNCTION_85_10();
              savescptr(v77, v78, v79);
              if (!advance_tok(v0) && !advance_tok(v0))
              {
                OUTLINED_FUNCTION_96_7();
                v80 = *(v0 + 1648);
                v81 = OUTLINED_FUNCTION_9_35();
                if (!test_ptr(v81))
                {
                  v82 = OUTLINED_FUNCTION_10_35();
                  if (!lpta_loadp_setscan_r(v82, v83))
                  {
                    OUTLINED_FUNCTION_29_23();
                    if (!test_string_s())
                    {
                      v84 = OUTLINED_FUNCTION_32_20();
                      starttest(v84, v85);
                      v86 = OUTLINED_FUNCTION_39_16();
                      bspush_ca(v86);
                      v87 = OUTLINED_FUNCTION_11_35();
                      if (!lpta_loadp_setscan_r(v87, v88) && !advance_tok(v0) && !advance_tok(v0) && !advance_tok(v0))
                      {
                        OUTLINED_FUNCTION_29_23();
                        if (!test_string_s())
                        {
                          goto LABEL_24;
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

  v32 = &_MergedGlobals_33;
  v52 = v22;
  while (2)
  {
    v100 = *(v0 + 104);
    if (v100)
    {
      v101 = OUTLINED_FUNCTION_92_9(v100);
      v52 = v102;
    }

    else
    {
      v101 = vback(v0, v52);
      v52 = 0;
    }

    v70 = v52;
    v103 = v52;
    switch(v101)
    {
      case 1:
        v22 = v52;
        goto LABEL_60;
      case 2:
        LODWORD(v32) = v52;
        goto LABEL_8;
      case 3:
        goto LABEL_13;
      case 4:
        OUTLINED_FUNCTION_5_36();
        v104 = test_string_s();
        v70 = v52;
        if (!v104)
        {
          goto LABEL_20;
        }

        continue;
      case 5:
        goto LABEL_20;
      case 6:
        v22 = v52;
        goto LABEL_38;
      case 7:
        v75 = v52;
        goto LABEL_26;
      case 8:
      case 17:
        goto LABEL_58;
      case 9:
        OUTLINED_FUNCTION_87_9();
        v106 = OUTLINED_FUNCTION_69_12();
        if (!setd_lookup(v106, v107, 37))
        {
          goto LABEL_24;
        }

        continue;
      case 10:
      case 11:
      case 12:
      case 18:
      case 23:
      case 27:
      case 28:
        goto LABEL_24;
      case 13:
        OUTLINED_FUNCTION_87_9();
        v108 = OUTLINED_FUNCTION_69_12();
        if (!setd_lookup(v108, v109, 38))
        {
          goto LABEL_58;
        }

        continue;
      case 14:
        v94 = v52;
        goto LABEL_39;
      case 15:
        OUTLINED_FUNCTION_5_36();
        v105 = test_string_s();
        v103 = v52;
        if (!v105)
        {
          goto LABEL_76;
        }

        continue;
      case 16:
        goto LABEL_76;
      case 19:
        goto LABEL_14;
      case 20:
        v22 = v52;
        goto LABEL_64;
      case 21:
        goto LABEL_70;
      case 22:
        bspop_boa(v0);
        lpta_rpta_loadp(v0, v178, v0 + 1656);
        v125 = OUTLINED_FUNCTION_21_27();
        if (!setd_lookup(v125, v126, 39))
        {
          goto LABEL_74;
        }

        goto LABEL_24;
      case 24:
        OUTLINED_FUNCTION_5_36();
        if (!test_string_s())
        {
          goto LABEL_16;
        }

        continue;
      case 25:
        goto LABEL_16;
      case 26:
        goto LABEL_17;
      default:
        goto LABEL_3;
    }
  }

LABEL_3:
  vretproc(v0);
  v14 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_135_4();
  OUTLINED_FUNCTION_161_3();
}

uint64_t r_rules()
{
  OUTLINED_FUNCTION_18_32();
  v165 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_15_33(v2, v3, v4, v5, v6, v7, v8, v9, v49, v53, v57, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, v149, v152);
  OUTLINED_FUNCTION_64_12(v10, v11, v12, v13, v14, v15, v16, v17, v50, v54, v58, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142, v146, v150, v153, v155, v157, v159, v161, v163);
  v18 = setjmp(v1);
  if (!v18 && !OUTLINED_FUNCTION_14_34(v18, v19, v20, v21, v22, v23, v24, v25, v51, v55, v59, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v147, v151, v154, *v156, v156[4], *v158, *&v158[4], v158[6], v160, SWORD2(v160), SBYTE6(v160), SHIBYTE(v160), v162, v164))
  {
    v28 = OUTLINED_FUNCTION_23_26();
    get_parm(v28, v29, v30, -6);
    OUTLINED_FUNCTION_41_15();
    v31 = OUTLINED_FUNCTION_98_7();
    fence_37(v31, v32, v33);
    v34 = OUTLINED_FUNCTION_23_26();
    lpta_rpta_loadp(v34, v35, v36);
    v37 = OUTLINED_FUNCTION_6_36();
    inserted = insert_2pt_s(v37, v38, v39, v40, 0);
    if (inserted)
    {
      if (*(v0 + 104))
      {
        *(v0 + 104) = 0;
      }

      else
      {
        OUTLINED_FUNCTION_136_4();
      }
    }

    else
    {
      OUTLINED_FUNCTION_79_11(inserted, v42, v43, v44, v45, v46, v47, v48, v52, v56, v60, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144, v148);
    }
  }

  vretproc(v0);
  v26 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_118_4();
}

uint64_t s_rules()
{
  OUTLINED_FUNCTION_18_32();
  v324 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8_36(v3, v4, v5, v6, v7, v8, v9, v10, v267, v269, v271, v273, v275, v277, v279, v281, v283, v285, v287, v289, v291, v293, v295, v297, v299, v301, v303, v305, v307, v309, v311, v313, v315, v317, v319, v321, v323);
  OUTLINED_FUNCTION_55_14();
  if (!setjmp(v2))
  {
    OUTLINED_FUNCTION_19_28();
    if (!OUTLINED_FUNCTION_137_4(v11, v12, v13, v14, v15))
    {
      v18 = OUTLINED_FUNCTION_67_12();
      get_parm(v18, v19, v20, -6);
      v21 = OUTLINED_FUNCTION_75_12();
      OUTLINED_FUNCTION_129_4(v21, v22);
      v23 = OUTLINED_FUNCTION_77_11();
      push_ptr_init(v23, v24);
      v25 = 0;
      v26 = OUTLINED_FUNCTION_98_7();
      fence_37(v26, v27, v28);
      v29 = OUTLINED_FUNCTION_56_13();
      fence_37(v29, v30, v31);
      OUTLINED_FUNCTION_143_4();
      *(v0 + 136) = v2;
      v32 = OUTLINED_FUNCTION_9_35();
      setscan_nof_l(v32);
      v33 = 0;
      if (!v34)
      {
LABEL_13:
        OUTLINED_FUNCTION_81_11(2, v268, v270, v272, v274, v276, v278, v280, v282, v284, v286, v288, v290, v292, v294, v296, v298, v300, v302, v304, v306, v308, v310, v312, v314);
LABEL_14:
        bspush_ca_scan_boa();
        v46 = OUTLINED_FUNCTION_69_12();
        if (testFldeq(v46, v47, v48, 2))
        {
          LODWORD(v33) = v25;
        }

        else
        {
          LODWORD(v33) = 1;
        }

        goto LABEL_17;
      }

LABEL_6:
      v35 = v33;
      v36 = OUTLINED_FUNCTION_70_12();
      starttest(v36, v37);
      v38 = OUTLINED_FUNCTION_11_35();
      if (!lpta_loadp_setscan_l(v38, v39))
      {
LABEL_7:
        OUTLINED_FUNCTION_81_11(43, v268, v270, v272, v274, v276, v278, v280, v282, v284, v286, v288, v290, v292, v294, v296, v298, v300, v302, v304, v306, v308, v310, v312, v314);
        OUTLINED_FUNCTION_12_35();
        if (test_string_s())
        {
          goto LABEL_17;
        }

        v40 = OUTLINED_FUNCTION_16_33();
        if (lpta_loadp_setscan_r(v40, v41))
        {
          goto LABEL_17;
        }

        if (advance_tok(v0))
        {
          goto LABEL_17;
        }

        v42 = OUTLINED_FUNCTION_3_38();
        v25 = v33;
        if (testFldeq(v42, v43, v44, v45))
        {
          goto LABEL_17;
        }

        goto LABEL_14;
      }

LABEL_103:
      v194 = OUTLINED_FUNCTION_10_35();
      if (lpta_loadp_setscan_r(v194, v195) || (OUTLINED_FUNCTION_5_36(), v33 = v35, test_string_s()))
      {
LABEL_105:
        v196 = OUTLINED_FUNCTION_70_12();
        starttest(v196, v197);
        v198 = OUTLINED_FUNCTION_10_35();
        if (lpta_loadp_setscan_r(v198, v199) || (OUTLINED_FUNCTION_5_36(), LODWORD(v33) = v35, test_string_s()))
        {
LABEL_107:
          v200 = OUTLINED_FUNCTION_70_12();
          starttest(v200, v201);
          v202 = OUTLINED_FUNCTION_11_35();
          lpta_loadp_setscan_l(v202, v203);
          OUTLINED_FUNCTION_138_4();
          if (v205)
          {
LABEL_108:
            LOBYTE(v35) = v204;
            v206 = OUTLINED_FUNCTION_70_12();
            starttest(v206, v207);
            v208 = OUTLINED_FUNCTION_10_35();
            lpta_loadp_setscan_l(v208, v209);
            OUTLINED_FUNCTION_138_4();
            if (!v51)
            {
LABEL_116:
              OUTLINED_FUNCTION_81_11(74, v268, v270, v272, v274, v276, v278, v280, v282, v284, v286, v288, v290, v292, v294, v296, v298, v300, v302, v304, v306, v308, v310, v312, v314);
              if (!advance_tok(v0))
              {
                v214 = OUTLINED_FUNCTION_3_38();
                if (!testFldeq(v214, v215, v216, v217) && !advance_tok(v0))
                {
                  v218 = OUTLINED_FUNCTION_16_33();
                  if (!lpta_loadp_setscan_r(v218, v219))
                  {
                    OUTLINED_FUNCTION_21_27();
                    if (!test_string_s())
                    {
                      *(v0 + 136) = v35;
                      v220 = *(v0 + 1664);
                      v221 = OUTLINED_FUNCTION_9_35();
                      if (!test_ptr(v221))
                      {
                        goto LABEL_146;
                      }
                    }
                  }
                }
              }

              goto LABEL_17;
            }

LABEL_109:
            LODWORD(v33) = v49;
          }

          else
          {
LABEL_110:
            OUTLINED_FUNCTION_81_11(72, v268, v270, v272, v274, v276, v278, v280, v282, v284, v286, v288, v290, v292, v294, v296, v298, v300, v302, v304, v306, v308, v310, v312, v314);
            OUTLINED_FUNCTION_21_27();
            if (test_string_s())
            {
              goto LABEL_17;
            }

            *(v0 + 136) = v35;
            v210 = *(v0 + 1648);
            v211 = OUTLINED_FUNCTION_9_35();
            if (test_ptr(v211))
            {
              goto LABEL_17;
            }

            v212 = OUTLINED_FUNCTION_16_33();
            if (lpta_loadp_setscan_r(v212, v213))
            {
              goto LABEL_17;
            }

            if (advance_tok(v0))
            {
              goto LABEL_17;
            }

            OUTLINED_FUNCTION_5_36();
            v51 = test_string_s();
            if (v51)
            {
              goto LABEL_17;
            }
          }

          goto LABEL_115;
        }

LABEL_127:
        v237 = OUTLINED_FUNCTION_85_10();
        savescptr(v237, v238, v239);
        if (advance_tok(v0))
        {
          goto LABEL_17;
        }

        v240 = OUTLINED_FUNCTION_10_35();
        if (!lpta_loadp_setscan_r(v240, v241))
        {
          OUTLINED_FUNCTION_5_36();
          v58 = v33;
          if (!test_string_s())
          {
LABEL_100:
            v186 = OUTLINED_FUNCTION_86_9();
            savescptr(v186, v187, v188);
            v189 = OUTLINED_FUNCTION_70_12();
            starttest(v189, v190);
            v191 = OUTLINED_FUNCTION_70_12();
            bspush_ca(v191);
            v192 = OUTLINED_FUNCTION_74_12();
            if (lpta_loadp_setscan_r(v192, v193))
            {
              LODWORD(v33) = v58;
              goto LABEL_17;
            }

            OUTLINED_FUNCTION_29_23();
            v51 = test_string_s();
            LODWORD(v33) = v58;
            if (v51)
            {
              goto LABEL_17;
            }

LABEL_143:
            LODWORD(v33) = v58;
            goto LABEL_144;
          }
        }

LABEL_130:
        v242 = OUTLINED_FUNCTION_70_12();
        starttest(v242, v243);
        v244 = OUTLINED_FUNCTION_11_35();
        v185 = v33;
        if (lpta_loadp_setscan_l(v244, v245))
        {
LABEL_131:
          LODWORD(v35) = v33;
          v246 = OUTLINED_FUNCTION_70_12();
          starttest(v246, v247);
          v248 = OUTLINED_FUNCTION_10_35();
          v51 = lpta_loadp_setscan_r(v248, v249);
          if (v51)
          {
LABEL_132:
            LODWORD(v33) = v35;
LABEL_115:
            OUTLINED_FUNCTION_83_10(v51, v49, v57, v52, v53, v54, v55, v56, v268, v270, v272, v274, v276, v278, v280, v282, v284, v286, v288, v290, v292, v294, v296, v298, v300, v302, v304, v306, v308, v310, v312, v314, v316, v318, v320, v322);
LABEL_126:
            v232 = OUTLINED_FUNCTION_0_40();
            goto LABEL_145;
          }

          v260 = OUTLINED_FUNCTION_70_12();
          bspush_ca_scan(v260, v261);
          OUTLINED_FUNCTION_5_36();
          v51 = test_string_s();
          if (v51)
          {
            goto LABEL_17;
          }

LABEL_141:
          LODWORD(v33) = v35;
LABEL_144:
          OUTLINED_FUNCTION_83_10(v51, v49, v57, v52, v53, v54, v55, v56, v268, v270, v272, v274, v276, v278, v280, v282, v284, v286, v288, v290, v292, v294, v296, v298, v300, v302, v304, v306, v308, v310, v312, v314, v316, v318, v320, v322);
          v232 = OUTLINED_FUNCTION_1_39();
LABEL_145:
          if (!insert_2pt_s(v232, v233, v234, v235, v236))
          {
LABEL_146:
            *(v1 + 8) = v320;
            vretproc(v0);
            result = 0;
            goto LABEL_4;
          }

LABEL_17:
          LODWORD(v49) = v33;
          while (1)
          {
            v50 = *(v0 + 104);
            if (v50)
            {
              v51 = OUTLINED_FUNCTION_92_9(v50);
              v33 = v49;
            }

            else
            {
              v51 = vback(v0, v49);
              v33 = 0;
            }

            v57 = v33;
            v58 = v33;
            LODWORD(v35) = v33;
            switch(v51)
            {
              case 1:
                goto LABEL_6;
              case 2:
                v25 = v33;
                goto LABEL_13;
              case 3:
                bspop_boa(v0);
                v141 = advance_tok(v0);
                LODWORD(v49) = v33;
                if (v141)
                {
                  continue;
                }

                OUTLINED_FUNCTION_153_3();
                v142 = OUTLINED_FUNCTION_9_35();
                v143 = setscan_nof_r(v142);
                LODWORD(v49) = v33;
                if (v143)
                {
                  continue;
                }

                v144 = advance_tok(v0);
                LODWORD(v49) = v33;
                if (v144)
                {
                  continue;
                }

                OUTLINED_FUNCTION_128_4();
                bspush_ca_scan_boa();
                v145 = OUTLINED_FUNCTION_69_12();
                v67 = testFldeq(v145, v146, 4, 2);
                goto LABEL_30;
              case 4:
                bspop_boa(v0);
                v68 = advance_tok(v0);
                LODWORD(v49) = v33;
                if (v68)
                {
                  continue;
                }

                OUTLINED_FUNCTION_87_9();
                v69 = OUTLINED_FUNCTION_69_12();
                v71 = setd_lookup(v69, v70, 45);
                if (v71)
                {
                  goto LABEL_36;
                }

                OUTLINED_FUNCTION_83_10(v71, v72, v73, v74, v75, v76, v77, v78, v268, v270, v272, v274, v276, v278, v280, v282, v284, v286, v288, v290, v292, v294, v296, v298, v300, v302, v304, v306, v308, v310, v312, v314, v316, v318, v320, v322);
                v79 = OUTLINED_FUNCTION_0_40();
                if (insert_2pt_s(v79, v80, v81, v82, v83))
                {
                  goto LABEL_36;
                }

                goto LABEL_146;
              case 5:
LABEL_36:
                v84 = OUTLINED_FUNCTION_50_15();
                starttest(v84, v85);
                OUTLINED_FUNCTION_153_3();
                v86 = OUTLINED_FUNCTION_9_35();
                v51 = setscan_nof_r(v86);
                if (v51)
                {
                  goto LABEL_71;
                }

                v51 = advance_tok(v0);
                if (v51)
                {
                  goto LABEL_71;
                }

                v51 = advance_tok(v0);
                if (v51)
                {
                  goto LABEL_71;
                }

                v87 = OUTLINED_FUNCTION_99_7();
                lpta_rpta_loadp(v87, v88, v89);
                v90 = OUTLINED_FUNCTION_69_12();
                v51 = setd_lookup(v90, v91, 9);
                if (v51)
                {
                  goto LABEL_71;
                }

                v92 = OUTLINED_FUNCTION_32_20();
                starttest(v92, v93);
                v94 = OUTLINED_FUNCTION_11_35();
                if (lpta_loadp_setscan_l(v94, v95))
                {
LABEL_41:
                  v96 = OUTLINED_FUNCTION_42_15();
                  starttest(v96, v97);
                  v98 = OUTLINED_FUNCTION_11_35();
                  if (lpta_loadp_setscan_l(v98, v99))
                  {
LABEL_42:
                    v100 = OUTLINED_FUNCTION_44_15();
                    starttest(v100, v101);
                    v102 = OUTLINED_FUNCTION_11_35();
                    if (lpta_loadp_setscan_l(v102, v103))
                    {
LABEL_43:
                      v104 = OUTLINED_FUNCTION_70_12();
                      starttest(v104, v105);
                      v106 = OUTLINED_FUNCTION_11_35();
                      if (lpta_loadp_setscan_l(v106, v107))
                      {
LABEL_44:
                        v108 = OUTLINED_FUNCTION_70_12();
                        starttest(v108, v109);
                        v110 = OUTLINED_FUNCTION_11_35();
                        v51 = lpta_loadp_setscan_l(v110, v111);
                        if (v51)
                        {
LABEL_71:
                          OUTLINED_FUNCTION_83_10(v51, v49, v57, v52, v53, v54, v55, v56, v268, v270, v272, v274, v276, v278, v280, v282, v284, v286, v288, v290, v292, v294, v296, v298, v300, v302, v304, v306, v308, v310, v312, v314, v316, v318, v320, v322);
                          v149 = OUTLINED_FUNCTION_0_40();
                          inserted = insert_2pt_s(v149, v150, v151, v152, v153);
                          LODWORD(v49) = v33;
                          if (!inserted)
                          {
                            goto LABEL_146;
                          }
                        }

                        else
                        {
LABEL_45:
                          OUTLINED_FUNCTION_81_11(37, v268, v270, v272, v274, v276, v278, v280, v282, v284, v286, v288, v290, v292, v294, v296, v298, v300, v302, v304, v306, v308, v310, v312, v314);
                          OUTLINED_FUNCTION_13_34();
                          v112 = test_string_s();
                          LODWORD(v49) = v33;
                          if (!v112)
                          {
                            v113 = OUTLINED_FUNCTION_16_33();
                            v115 = lpta_loadp_setscan_r(v113, v114);
                            LODWORD(v49) = v33;
                            if (!v115)
                            {
                              v116 = advance_tok(v0);
                              LODWORD(v49) = v33;
                              if (!v116)
                              {
                                OUTLINED_FUNCTION_70_12();
                                bspush_ca_scan_boa();
                                v117 = OUTLINED_FUNCTION_70_12();
                                bspush_ca_scan(v117, v118);
LABEL_78:
                                OUTLINED_FUNCTION_13_34();
                                goto LABEL_79;
                              }
                            }
                          }
                        }
                      }

                      else
                      {
                        v176 = OUTLINED_FUNCTION_31_21();
                        v179 = testFldeq(v176, v177, v178, 2);
                        LODWORD(v49) = v33;
                        if (!v179)
                        {
                          v180 = OUTLINED_FUNCTION_5_36();
                          v183 = testFldeq(v180, v181, v182, 2);
                          LODWORD(v49) = v33;
                          if (!v183)
                          {
                            v184 = advance_tok(v0);
                            LODWORD(v49) = v33;
                            if (!v184)
                            {
                              goto LABEL_93;
                            }
                          }
                        }
                      }
                    }

                    else
                    {
LABEL_49:
                      OUTLINED_FUNCTION_81_11(20, v268, v270, v272, v274, v276, v278, v280, v282, v284, v286, v288, v290, v292, v294, v296, v298, v300, v302, v304, v306, v308, v310, v312, v314);
                      OUTLINED_FUNCTION_13_34();
                      v119 = test_string_s();
                      LODWORD(v49) = v33;
                      if (!v119)
                      {
                        v120 = OUTLINED_FUNCTION_16_33();
                        v122 = lpta_loadp_setscan_r(v120, v121);
                        LODWORD(v49) = v33;
                        if (!v122)
                        {
                          v123 = advance_tok(v0);
                          LODWORD(v49) = v33;
                          if (!v123)
                          {
                            OUTLINED_FUNCTION_70_12();
                            bspush_ca_scan_boa();
                            v124 = OUTLINED_FUNCTION_58_13();
                            bspush_ca_scan(v124, v125);
                            OUTLINED_FUNCTION_5_36();
                            v126 = test_string_s();
                            LODWORD(v49) = v33;
                            if (!v126)
                            {
LABEL_77:
                              v162 = OUTLINED_FUNCTION_70_12();
                              bspush_ca_scan(v162, v163);
                              goto LABEL_78;
                            }
                          }
                        }
                      }
                    }
                  }

                  else
                  {
LABEL_54:
                    OUTLINED_FUNCTION_81_11(12, v268, v270, v272, v274, v276, v278, v280, v282, v284, v286, v288, v290, v292, v294, v296, v298, v300, v302, v304, v306, v308, v310, v312, v314);
                    OUTLINED_FUNCTION_29_23();
                    v127 = test_string_s();
                    LODWORD(v49) = v33;
                    if (!v127)
                    {
                      v128 = OUTLINED_FUNCTION_16_33();
                      v130 = lpta_loadp_setscan_r(v128, v129);
                      LODWORD(v49) = v33;
                      if (!v130)
                      {
                        v131 = advance_tok(v0);
                        LODWORD(v49) = v33;
                        if (!v131)
                        {
                          OUTLINED_FUNCTION_59_13();
                          bspush_ca_scan_boa();
                          v132 = OUTLINED_FUNCTION_47_15();
                          bspush_ca_scan(v132, v133);
LABEL_24:
                          OUTLINED_FUNCTION_5_36();
LABEL_79:
                          v164 = test_string_s();
                          LODWORD(v49) = v33;
                          if (!v164)
                          {
LABEL_80:
                            LODWORD(v49) = 1;
                          }
                        }
                      }
                    }
                  }
                }

                else
                {
LABEL_58:
                  OUTLINED_FUNCTION_81_11(9, v268, v270, v272, v274, v276, v278, v280, v282, v284, v286, v288, v290, v292, v294, v296, v298, v300, v302, v304, v306, v308, v310, v312, v314);
                  OUTLINED_FUNCTION_5_36();
                  v134 = test_string_s();
                  LODWORD(v49) = v33;
                  if (!v134)
                  {
                    v135 = OUTLINED_FUNCTION_16_33();
                    v137 = lpta_loadp_setscan_r(v135, v136);
                    LODWORD(v49) = v33;
                    if (!v137)
                    {
                      v138 = advance_tok(v0);
                      LODWORD(v49) = v33;
                      if (!v138)
                      {
LABEL_93:
                        OUTLINED_FUNCTION_5_36();
                        v51 = test_string_s();
LABEL_70:
                        v49 = v33;
                        if (!v51)
                        {
                          goto LABEL_71;
                        }
                      }
                    }
                  }
                }

                break;
              case 6:
              case 10:
              case 41:
              case 53:
              case 61:
              case 62:
                goto LABEL_146;
              case 7:
              case 36:
              case 47:
              case 58:
                goto LABEL_71;
              case 8:
                goto LABEL_41;
              case 9:
                goto LABEL_58;
              case 11:
                goto LABEL_42;
              case 12:
                goto LABEL_54;
              case 13:
              case 21:
              case 38:
                v51 = bspop_boa(v0);
                goto LABEL_71;
              case 14:
              case 26:
                goto LABEL_77;
              case 15:
              case 24:
              case 25:
              case 28:
              case 33:
              case 40:
                goto LABEL_80;
              case 16:
                v139 = OUTLINED_FUNCTION_48_15();
                bspush_ca_scan(v139, v140);
                goto LABEL_78;
              case 17:
                v64 = OUTLINED_FUNCTION_60_13();
                bspush_ca_scan(v64, v65);
                goto LABEL_78;
              case 18:
              case 23:
              case 27:
              case 32:
                goto LABEL_78;
              case 19:
                goto LABEL_43;
              case 20:
                goto LABEL_49;
              case 22:
                v61 = OUTLINED_FUNCTION_57_13();
                bspush_ca_scan(v61, v62);
                OUTLINED_FUNCTION_5_36();
                v63 = test_string_s();
                LODWORD(v49) = v33;
                if (v63)
                {
                  continue;
                }

                goto LABEL_82;
              case 29:
                goto LABEL_82;
              case 30:
                v165 = OUTLINED_FUNCTION_43_15();
                bspush_ca_scan(v165, v166);
                OUTLINED_FUNCTION_5_36();
                v167 = test_string_s();
                LODWORD(v49) = v33;
                if (v167)
                {
                  continue;
                }

LABEL_82:
                v168 = OUTLINED_FUNCTION_70_12();
                bspush_ca_scan(v168, v169);
                OUTLINED_FUNCTION_29_23();
                goto LABEL_79;
              case 31:
                OUTLINED_FUNCTION_5_36();
                v66 = test_string_s();
                LODWORD(v49) = v33;
                if (v66)
                {
                  continue;
                }

                OUTLINED_FUNCTION_70_12();
                bspush_ca_scan_boa();
                OUTLINED_FUNCTION_5_36();
                v67 = test_string_s();
LABEL_30:
                if (v67)
                {
                  LODWORD(v49) = v33;
                }

                else
                {
                  LODWORD(v49) = 1;
                }

                continue;
              case 34:
                bspop_boa(v0);
                goto LABEL_80;
              case 35:
                goto LABEL_44;
              case 37:
                goto LABEL_45;
              case 39:
                goto LABEL_24;
              case 42:
                v35 = v33;
                goto LABEL_103;
              case 43:
                goto LABEL_7;
              case 44:
                bspop_boa(v0);
                v51 = advance_tok(v0);
                goto LABEL_70;
              case 45:
                LODWORD(v35) = v33;
                goto LABEL_105;
              case 46:
                goto LABEL_123;
              case 48:
                v155 = OUTLINED_FUNCTION_70_12();
                bspush_ca(v155);
                v156 = OUTLINED_FUNCTION_10_35();
                v158 = lpta_loadp_setscan_r(v156, v157);
                LODWORD(v49) = v33;
                if (v158)
                {
                  continue;
                }

                v159 = OUTLINED_FUNCTION_70_12();
                bspush_ca_scan(v159, v160);
                OUTLINED_FUNCTION_5_36();
                v161 = test_string_s();
                LODWORD(v49) = v33;
                if (v161)
                {
                  continue;
                }

                goto LABEL_75;
              case 49:
                goto LABEL_125;
              case 50:
                v170 = OUTLINED_FUNCTION_70_12();
                bspush_ca(v170);
                v171 = OUTLINED_FUNCTION_11_35();
                v173 = lpta_loadp_setscan_l(v171, v172);
                LODWORD(v49) = v33;
                if (v173)
                {
                  continue;
                }

                OUTLINED_FUNCTION_5_36();
                test_string_s();
                goto LABEL_85;
              case 51:
LABEL_75:
                OUTLINED_FUNCTION_4_37();
                goto LABEL_85;
              case 52:
                OUTLINED_FUNCTION_87_9();
                v59 = OUTLINED_FUNCTION_69_12();
                setd_lookup(v59, v60, 19);
LABEL_85:
                OUTLINED_FUNCTION_145_4();
                if (!v51)
                {
                  goto LABEL_125;
                }

                continue;
              case 54:
                LOBYTE(v35) = v33;
                goto LABEL_107;
              case 55:
                goto LABEL_127;
              case 56:
                goto LABEL_130;
              case 57:
                v58 = v33;
                goto LABEL_100;
              case 59:
                OUTLINED_FUNCTION_87_9();
                v147 = OUTLINED_FUNCTION_69_12();
                v51 = setd_lookup(v147, v148, 20);
                v58 = v33;
                v49 = v33;
                if (!v51)
                {
                  goto LABEL_143;
                }

                continue;
              case 60:
                goto LABEL_143;
              case 63:
                goto LABEL_131;
              case 64:
                v185 = v33;
                goto LABEL_133;
              case 65:
                LODWORD(v35) = v33;
                goto LABEL_132;
              case 66:
              case 68:
              case 69:
                v174 = OUTLINED_FUNCTION_70_12();
                bspush_ca_scan(v174, v175);
                goto LABEL_88;
              case 67:
                goto LABEL_141;
              case 70:
LABEL_88:
                OUTLINED_FUNCTION_5_36();
                test_string_s();
                OUTLINED_FUNCTION_133_4();
                if (!v51)
                {
                  goto LABEL_141;
                }

                continue;
              case 71:
                v204 = v33;
                goto LABEL_108;
              case 72:
                goto LABEL_110;
              case 73:
                v49 = v33;
                goto LABEL_109;
              case 74:
                goto LABEL_116;
              default:
                goto LABEL_3;
            }
          }
        }

LABEL_133:
        OUTLINED_FUNCTION_81_11(64, v268, v270, v272, v274, v276, v278, v280, v282, v284, v286, v288, v290, v292, v294, v296, v298, v300, v302, v304, v306, v308, v310, v312, v314);
        OUTLINED_FUNCTION_13_34();
        if (!test_string_s())
        {
          v250 = OUTLINED_FUNCTION_16_33();
          if (!lpta_loadp_setscan_r(v250, v251) && !advance_tok(v0) && !advance_tok(v0))
          {
            OUTLINED_FUNCTION_13_34();
            v252 = test_string_s();
            if (!v252)
            {
              OUTLINED_FUNCTION_83_10(v252, v253, v254, v255, v256, v257, v258, v259, v268, v270, v272, v274, v276, v278, v280, v282, v284, v286, v288, v290, v292, v294, v296, v298, v300, v302, v304, v306, v308, v310, v312, v314, v316, v318, v320, v322);
              v262 = OUTLINED_FUNCTION_0_40();
              LODWORD(v33) = v185;
              if (!insert_2pt_s(v262, v263, v264, v265, v266))
              {
                goto LABEL_146;
              }

              goto LABEL_17;
            }
          }
        }
      }

      else
      {
LABEL_123:
        v185 = v33;
        v222 = OUTLINED_FUNCTION_85_10();
        savescptr(v222, v223, v224);
        v225 = OUTLINED_FUNCTION_70_12();
        starttest(v225, v226);
        v227 = OUTLINED_FUNCTION_70_12();
        bspush_ca(v227);
        v228 = OUTLINED_FUNCTION_99_7();
        lpta_loadpn(v228, v229);
        v230 = OUTLINED_FUNCTION_76_12();
        rpta_loadpn(v230, v231);
        if (!compare_ptas(v0))
        {
          v51 = testeq(v0);
          v57 = v33;
          if (v51)
          {
            goto LABEL_17;
          }

LABEL_125:
          LODWORD(v33) = v57;
          OUTLINED_FUNCTION_83_10(v51, v49, v57, v52, v53, v54, v55, v56, v268, v270, v272, v274, v276, v278, v280, v282, v284, v286, v288, v290, v292, v294, v296, v298, v300, v302, v304, v306, v308, v310, v312, v314, v316, v318, v320, v322);
          goto LABEL_126;
        }
      }

      LODWORD(v33) = v185;
      goto LABEL_17;
    }
  }

LABEL_3:
  vretproc(v0);
  result = 94;
LABEL_4:
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

void t_rules()
{
  OUTLINED_FUNCTION_132_4();
  v1 = v0;
  v3 = v2;
  v254 = *MEMORY[0x277D85DE8];
  v241 = 0;
  v242 = 0;
  v239 = 0;
  v240 = 0;
  *&v4 = OUTLINED_FUNCTION_122_4();
  v235 = v4;
  v236 = v4;
  OUTLINED_FUNCTION_84_10(v5, v6, v7, v8, v9, v10, v11, v12, v158, v161, v164, v167, v170, v173, v176, v179, v182, v185, v188, v191, v194, v197, v200, v203, v206, v209, v212, v215, v218, v221, v224, v227, v230, v233);
  OUTLINED_FUNCTION_89_9();
  bzero(v253, v13);
  v14 = setjmp(v253);
  if (!v14 && !OUTLINED_FUNCTION_142_4(v14, v15, v16, v17, v18, v19, v20, v21, v159, v162, v165, v168, v171, v174, v177, v180, v183, v186, v189, v192, v195, v198, v201, v204, v207, v210, v213, v216, v219, v222, v225, v228, v231, v234, v235, *(&v235 + 1), v236, *(&v236 + 1), v237, v238[0], v238[1], v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253[0]))
  {
    v23 = OUTLINED_FUNCTION_86_9();
    get_parm(v23, v24, v25, -6);
    v26 = &v239;
    v27 = OUTLINED_FUNCTION_74_12();
    get_parm(v27, v28, v1, -6);
    push_ptr_init(v3, v238);
    v29 = OUTLINED_FUNCTION_117_4();
    push_ptr_init(v29, v30);
    v31 = 0;
    v32 = OUTLINED_FUNCTION_98_7();
    v35 = fence_37(v32, v33, v34);
    OUTLINED_FUNCTION_111_4(v35, v36, &unk_28064B83D);
    v37 = OUTLINED_FUNCTION_116_4();
    starttest(v37, v38);
    v39 = OUTLINED_FUNCTION_74_12();
    if (lpta_loadp_setscan_r(v39, v40) || (OUTLINED_FUNCTION_5_36(), v41 = test_string_s(), v42 = 0, v31 = 0, v41))
    {
LABEL_45:
      v160 = v1;
      v43 = v31;
      lpta_loadpn(v3, &v239);
      v103 = OUTLINED_FUNCTION_105_5();
      rpta_loadpn(v103, v104);
      if (compare_ptas(v3) || testeq(v3))
      {
LABEL_47:
        v105 = OUTLINED_FUNCTION_48_15();
        starttest(v105, v106);
        v107 = OUTLINED_FUNCTION_65_12();
        v109 = lpta_loadp_setscan_l(v107, v108);
        v101 = v43;
        if (v109)
        {
LABEL_48:
          v43 = v101;
          v110 = OUTLINED_FUNCTION_58_13();
          starttest(v110, v111);
          v112 = OUTLINED_FUNCTION_53_14();
          if (!lpta_loadp_setscan_r(v112, v113))
          {
            OUTLINED_FUNCTION_13_34();
            v114 = test_string_s();
            v102 = v43;
            if (!v114)
            {
LABEL_50:
              v43 = v102;
              v115 = OUTLINED_FUNCTION_86_9();
              savescptr(v115, v116, v117);
              v118 = OUTLINED_FUNCTION_86_9();
              lpta_rpta_loadp(v118, v119, v120);
LABEL_23:
              v83 = OUTLINED_FUNCTION_0_40();
              if (insert_2pt_s(v83, v84, v85, v86, v87))
              {
                goto LABEL_24;
              }

              goto LABEL_42;
            }
          }

          goto LABEL_22;
        }

LABEL_51:
        OUTLINED_FUNCTION_151_3(18, v160, v163, v166, v169, v172, v175, v178, v181, v184, v187, v190, v193, v196, v199, v202, v205, v208, v211, v214, v217, v220, v223, v226, v229, v232);
        OUTLINED_FUNCTION_21_27();
        if (!test_string_s())
        {
          *(v3 + 136) = v26;
          v121 = *(v3 + 1648);
          v122 = OUTLINED_FUNCTION_9_35();
          if (!test_ptr(v122))
          {
            v123 = OUTLINED_FUNCTION_71_12();
            if (!lpta_loadp_setscan_r(v123, v124) && !advance_tok(v3))
            {
              v125 = OUTLINED_FUNCTION_12_35();
              if (!testFldeq(v125, v126, v127, 2))
              {
                OUTLINED_FUNCTION_44_15();
                bspush_ca_scan_boa();
                v128 = OUTLINED_FUNCTION_31_21();
                if (!testFldeq(v128, v129, v130, 16))
                {
                  v43 = 1;
                }
              }
            }
          }
        }
      }

      else
      {
        v131 = OUTLINED_FUNCTION_42_15();
        starttest(v131, v132);
        v133 = OUTLINED_FUNCTION_65_12();
        if (lpta_loadp_setscan_l(v133, v134))
        {
LABEL_59:
          OUTLINED_FUNCTION_87_9();
          v135 = OUTLINED_FUNCTION_69_12();
          if (!setd_lookup(v135, v136, 47))
          {
            v137 = OUTLINED_FUNCTION_34_18();
            lpta_rpta_loadp(v137, v138, v139);
            v140 = OUTLINED_FUNCTION_0_40();
            if (!insert_2pt_s(v140, v141, v142, v143, v144))
            {
              goto LABEL_42;
            }
          }

LABEL_61:
          v145 = OUTLINED_FUNCTION_70_12();
          starttest(v145, v146);
          is_liaison_con();
          if (v147)
          {
            goto LABEL_42;
          }

          v148 = OUTLINED_FUNCTION_34_18();
          lpta_rpta_loadp(v148, v149, v150);
          OUTLINED_FUNCTION_74_12();
          settvar_s();
          v151 = OUTLINED_FUNCTION_69_12();
          npush_s(v151);
          v152 = OUTLINED_FUNCTION_74_12();
          npop(v152, v153);
          OUTLINED_FUNCTION_37_17();
          insert_2ptv();
          if (!v154)
          {
LABEL_42:
            *(v160 + 8) = v240;
            goto LABEL_3;
          }
        }

        else
        {
          v155 = OUTLINED_FUNCTION_66_12();
          bspush_ca_scan(v155, v156);
          OUTLINED_FUNCTION_5_36();
          v157 = test_string_s();
          v92 = v31;
          if (!v157)
          {
LABEL_65:
            v43 = v92;
            goto LABEL_22;
          }
        }
      }
    }

    else
    {
LABEL_8:
      v160 = v1;
      v43 = v42;
      OUTLINED_FUNCTION_104_6();
      v44 = OUTLINED_FUNCTION_115_4();
      savescptr(v44, v45, v46);
      v47 = OUTLINED_FUNCTION_3_38();
      if (!testFldeq(v47, v48, v49, v50) && !advance_tok(v3))
      {
        v51 = OUTLINED_FUNCTION_65_12();
        if (!lpta_loadp_setscan_l(v51, v52))
        {
          OUTLINED_FUNCTION_5_36();
          if (!test_string_s())
          {
            v53 = OUTLINED_FUNCTION_34_18();
            lpta_rpta_loadp(v53, v54, v55);
            v56 = OUTLINED_FUNCTION_0_40();
            if (!insert_2pt_s(v56, v57, v58, v59, v60))
            {
              goto LABEL_42;
            }
          }
        }

LABEL_13:
        v61 = OUTLINED_FUNCTION_71_12();
        if (lpta_loadp_setscan_r(v61, v62) || (OUTLINED_FUNCTION_21_27(), test_string_s()) || (*(v3 + 136) = v26, v63 = *(v3 + 1664), v64 = OUTLINED_FUNCTION_9_35(), test_ptr(v64)))
        {
LABEL_16:
          v65 = OUTLINED_FUNCTION_32_20();
          starttest(v65, v66);
          if (!is_t_pron_s_in_ti(v3, &v241, &v239, v238))
          {
            v67 = OUTLINED_FUNCTION_34_18();
            lpta_rpta_loadp(v67, v68, v69);
            v70 = OUTLINED_FUNCTION_0_40();
            if (!insert_2pt_s(v70, v71, v72, v73, v74))
            {
              goto LABEL_42;
            }
          }

          goto LABEL_22;
        }

        v75 = OUTLINED_FUNCTION_51_14();
        starttest(v75, v76);
        if (OUTLINED_FUNCTION_120_4() || (v77 = OUTLINED_FUNCTION_101_6(), !testFldeq(v77, v78, v79, 1)) && !advance_tok(v3))
        {
LABEL_22:
          v80 = OUTLINED_FUNCTION_34_18();
          lpta_rpta_loadp(v80, v81, v82);
          goto LABEL_23;
        }
      }
    }

LABEL_24:
    LOBYTE(v26) = 14;
    v88 = v43;
    while (2)
    {
      v89 = *(v3 + 104);
      if (v89)
      {
        v90 = OUTLINED_FUNCTION_92_9(v89);
        v43 = v91;
      }

      else
      {
        v90 = vback(v3, v88);
        v43 = 0;
      }

      v92 = v43;
      switch(v90)
      {
        case 1:
          v31 = v43;
          v1 = v160;
          goto LABEL_45;
        case 2:
          v42 = v43;
          v1 = v160;
          goto LABEL_8;
        case 3:
          goto LABEL_13;
        case 4:
        case 7:
        case 9:
        case 15:
          goto LABEL_42;
        case 5:
          goto LABEL_16;
        case 6:
        case 8:
        case 22:
          goto LABEL_22;
        case 10:
          goto LABEL_47;
        case 11:
          goto LABEL_59;
        case 12:
          v93 = OUTLINED_FUNCTION_74_12();
          bspush_ca_scan(v93, v94);
          OUTLINED_FUNCTION_5_36();
          goto LABEL_37;
        case 13:
          goto LABEL_65;
        case 14:
          OUTLINED_FUNCTION_5_36();
LABEL_37:
          v100 = test_string_s();
          v92 = v43;
          v88 = v43;
          if (!v100)
          {
            goto LABEL_65;
          }

          continue;
        case 16:
          goto LABEL_61;
        case 17:
          v101 = v43;
          goto LABEL_48;
        case 18:
          goto LABEL_51;
        case 19:
          bspop_boa(v3);
          v95 = advance_tok(v3);
          v88 = v43;
          if (!v95)
          {
            OUTLINED_FUNCTION_125_4();
            bspush_ca_boa();
            v96 = OUTLINED_FUNCTION_93_9();
            v98 = lpta_loadp_setscan_r(v96, v97);
            v88 = v43;
            if (!v98)
            {
              OUTLINED_FUNCTION_5_36();
              v99 = test_string_s();
              v88 = v43;
              if (!v99)
              {
                OUTLINED_FUNCTION_95_8();
                bspush_ca_scan_boa();
                OUTLINED_FUNCTION_29_23();
                if (test_string_s())
                {
                  v88 = v43;
                }

                else
                {
                  v88 = 1;
                }
              }
            }
          }

          continue;
        case 20:
          bspop_boa(v3);
          goto LABEL_42;
        case 21:
          bspop_boa(v3);
          v88 = 1;
          continue;
        case 23:
          v102 = v43;
          goto LABEL_50;
        default:
          goto LABEL_3;
      }
    }
  }

LABEL_3:
  vretproc(v3);
  v22 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_131_4();
}

uint64_t v_rules()
{
  OUTLINED_FUNCTION_18_32();
  v167 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_15_33(v2, v3, v4, v5, v6, v7, v8, v9, v51, v55, v59, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v147, v151, v154);
  OUTLINED_FUNCTION_64_12(v10, v11, v12, v13, v14, v15, v16, v17, v52, v56, v60, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144, v148, v152, v155, v157, v159, v161, v163, v165);
  v18 = setjmp(v1);
  if (!v18 && !OUTLINED_FUNCTION_14_34(v18, v19, v20, v21, v22, v23, v24, v25, v53, v57, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, v149, v153, v156, *v158, v158[4], *v160, *&v160[4], v160[6], v162, SWORD2(v162), SBYTE6(v162), SHIBYTE(v162), v164, v166))
  {
    v28 = OUTLINED_FUNCTION_23_26();
    get_parm(v28, v29, v30, -6);
    OUTLINED_FUNCTION_41_15();
    v31 = OUTLINED_FUNCTION_98_7();
    fence_37(v31, v32, v33);
    v34 = OUTLINED_FUNCTION_69_12();
    fence_37(v34, v35, &unk_28064B83D);
    v36 = OUTLINED_FUNCTION_23_26();
    lpta_rpta_loadp(v36, v37, v38);
    v39 = OUTLINED_FUNCTION_6_36();
    inserted = insert_2pt_s(v39, v40, v41, v42, 0);
    if (inserted)
    {
      if (*(v0 + 104))
      {
        *(v0 + 104) = 0;
      }

      else
      {
        OUTLINED_FUNCTION_136_4();
      }
    }

    else
    {
      OUTLINED_FUNCTION_79_11(inserted, v44, v45, v46, v47, v48, v49, v50, v54, v58, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142, v146, v150);
    }
  }

  vretproc(v0);
  v26 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_118_4();
}

void w_rules()
{
  OUTLINED_FUNCTION_132_4();
  OUTLINED_FUNCTION_18_32();
  v68 = *MEMORY[0x277D85DE8];
  v63[0] = 0;
  v63[1] = 0;
  OUTLINED_FUNCTION_84_10(v1, v2, v3, v4, v5, v6, v7, v8, v37, v38[0], v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62);
  OUTLINED_FUNCTION_89_9();
  bzero(v67, v9);
  if (!setjmp(v67) && !ventproc(v0, v38, v66, v65, v64, v67))
  {
    v11 = OUTLINED_FUNCTION_86_9();
    get_parm(v11, v12, v13, -6);
    OUTLINED_FUNCTION_103_6(v14, &v61);
    fence_37(v0, 0, &null_str_14);
    OUTLINED_FUNCTION_87_9();
    v15 = OUTLINED_FUNCTION_69_12();
    if (setd_lookup(v15, v16, 49) || (lpta_rpta_loadp(v0, v63, &v61), v17 = OUTLINED_FUNCTION_0_40(), insert_2pt_s(v17, v18, v19, v20, v21)))
    {
      v22 = 0;
      while (2)
      {
        v23 = OUTLINED_FUNCTION_80_11();
        starttest(v23, v24);
        OUTLINED_FUNCTION_125_4();
        bspush_ca_boa();
        v25 = OUTLINED_FUNCTION_93_9();
        if (!lpta_loadp_setscan_r(v25, v26))
        {
          v27 = OUTLINED_FUNCTION_69_12();
          if (!testFldeq(v27, v28, 4, 1) && !advance_tok(v0))
          {
            v22 = 1;
          }
        }

LABEL_11:
        v29 = v0[13];
        if (v29)
        {
          v30 = OUTLINED_FUNCTION_92_9(v29);
          v22 = v31;
        }

        else
        {
          v30 = vback(v0, v22);
          v22 = 0;
        }

        switch(v30)
        {
          case 1:
            continue;
          case 2:
            goto LABEL_18;
          case 3:
            v32 = OUTLINED_FUNCTION_110_4();
            lpta_rpta_loadp(v32, v33, &v61);
            v34 = OUTLINED_FUNCTION_6_36();
            if (!insert_2pt_s(v34, v35, v36, &unk_28064B82F, 0))
            {
              goto LABEL_18;
            }

            goto LABEL_11;
          case 4:
            bspop_boa(v0);
            goto LABEL_18;
          default:
            goto LABEL_3;
        }
      }
    }

    else
    {
LABEL_18:
      OUTLINED_FUNCTION_100_6(v62);
    }
  }

LABEL_3:
  vretproc(v0);
  v10 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_126_4();
  OUTLINED_FUNCTION_131_4();
}

uint64_t x_rules()
{
  OUTLINED_FUNCTION_18_32();
  v192 = *MEMORY[0x277D85DE8];
  v187 = 0;
  v188 = 0;
  *&v2 = OUTLINED_FUNCTION_122_4();
  v183 = v2;
  *v184 = v2;
  OUTLINED_FUNCTION_84_10(v3, v4, v5, v6, v7, v8, v9, v10, v156, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182);
  OUTLINED_FUNCTION_55_14();
  v11 = setjmp(v1);
  if (!v11 && !OUTLINED_FUNCTION_137_4(v11, &v158, v191, v190, v189))
  {
    v14 = OUTLINED_FUNCTION_23_26();
    get_parm(v14, v15, v16, -6);
    OUTLINED_FUNCTION_103_6(v17, v185);
    *v184 = 0;
    *&v184[8] = 0;
    *&v184[14] = 0;
    LODWORD(v183) = -65534;
    v18 = OUTLINED_FUNCTION_117_4();
    push_ptr_init(v18, v19);
    v20 = 0;
    v21 = OUTLINED_FUNCTION_98_7();
    fence_37(v21, v22, v23);
    v24 = OUTLINED_FUNCTION_69_12();
    fence_37(v24, v25, v26);
    v27 = OUTLINED_FUNCTION_80_11();
    lpta_loadpn(v27, v28);
    v29 = OUTLINED_FUNCTION_99_7();
    rpta_loadpn(v29, v30);
    if (!compare_ptas(v0))
    {
      if (!testeq(v0))
      {
        v83 = OUTLINED_FUNCTION_38_17();
        starttest(v83, v84);
        v85 = OUTLINED_FUNCTION_71_12();
        if (lpta_loadp_setscan_r(v85, v86))
        {
          v20 = 0;
        }

        else
        {
          v93 = OUTLINED_FUNCTION_61_13();
          bspush_ca_scan(v93, v94);
          OUTLINED_FUNCTION_5_36();
          v95 = test_string_s();
          v20 = 0;
          v96 = 0;
          if (v95)
          {
            goto LABEL_35;
          }

LABEL_33:
          v20 = v96;
        }

        goto LABEL_34;
      }

      v20 = 0;
    }

    while (2)
    {
      v31 = OUTLINED_FUNCTION_50_15();
      starttest(v31, v32);
      v33 = OUTLINED_FUNCTION_71_12();
      if (lpta_loadp_setscan_r(v33, v34))
      {
LABEL_8:
        v35 = OUTLINED_FUNCTION_70_12();
        starttest(v35, v36);
        v37 = OUTLINED_FUNCTION_71_12();
        if (lpta_loadp_setscan_r(v37, v38) || (OUTLINED_FUNCTION_5_36(), v39 = test_string_s(), v40 = v20, v39))
        {
LABEL_10:
          lpta_loadpn(v0, v185);
          OUTLINED_FUNCTION_149_4();
          if (!compare_ptas(v0) && !testeq(v0))
          {
            v63 = OUTLINED_FUNCTION_70_12();
            starttest(v63, v64);
            v65 = OUTLINED_FUNCTION_53_14();
            if (lpta_loadp_setscan_l(v65, v66))
            {
LABEL_22:
              v67 = v20;
              v68 = OUTLINED_FUNCTION_70_12();
              starttest(v68, v69);
              v70 = OUTLINED_FUNCTION_53_14();
              if (lpta_loadp_setscan_l(v70, v71))
              {
LABEL_74:
                v149 = OUTLINED_FUNCTION_115_4();
                lpta_rpta_loadp(v149, v150, v151);
                OUTLINED_FUNCTION_74_12();
                settvar_s();
                v152 = OUTLINED_FUNCTION_69_12();
                npush_s(v152);
                WORD1(v183) = 17;
                v153 = OUTLINED_FUNCTION_74_12();
                npop(v153, v154);
                OUTLINED_FUNCTION_37_17();
                insert_2ptv();
                v20 = v67;
                if (!v155)
                {
                  goto LABEL_60;
                }

                goto LABEL_35;
              }

              v72 = OUTLINED_FUNCTION_70_12();
              bspush_ca_scan(v72, v73);
              OUTLINED_FUNCTION_5_36();
              if (test_string_s())
              {
                goto LABEL_35;
              }

LABEL_24:
              v20 = v67;
              v74 = OUTLINED_FUNCTION_12_35();
              if (testFldeq(v74, v75, v76, 2) || advance_tok(v0))
              {
                goto LABEL_35;
              }

              OUTLINED_FUNCTION_43_15();
              bspush_ca_boa();
              v77 = OUTLINED_FUNCTION_114_4();
              lpta_rpta_loadp(v77, v78, v79);
              v80 = OUTLINED_FUNCTION_69_12();
              v82 = setd_lookup(v80, v81, 14);
            }

            else
            {
              v87 = OUTLINED_FUNCTION_58_13();
              bspush_ca_scan(v87, v88);
              OUTLINED_FUNCTION_70_12();
              bspush_ca_scan_boa();
              v89 = OUTLINED_FUNCTION_3_38();
              v82 = testFldeq(v89, v90, v91, v92);
            }

            if (!v82)
            {
              v20 = 1;
            }

            goto LABEL_35;
          }

LABEL_12:
          v41 = OUTLINED_FUNCTION_70_12();
          starttest(v41, v42);
          v43 = OUTLINED_FUNCTION_53_14();
          v45 = lpta_loadp_setscan_l(v43, v44);
          v46 = v20;
          if (v45)
          {
LABEL_13:
            v20 = v46;
            goto LABEL_34;
          }

LABEL_61:
          OUTLINED_FUNCTION_151_3(33, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181);
          OUTLINED_FUNCTION_5_36();
          v136 = test_string_s();
          v137 = v20;
          if (!v136)
          {
LABEL_65:
            v20 = v137;
            v138 = OUTLINED_FUNCTION_70_12();
            if (!test_synch(v138, v139, 1u, v140))
            {
              v141 = OUTLINED_FUNCTION_71_12();
              if (!lpta_loadp_setscan_r(v141, v142) && !advance_tok(v0))
              {
                OUTLINED_FUNCTION_5_36();
                if (!test_string_s())
                {
                  goto LABEL_34;
                }
              }
            }
          }
        }

        else
        {
LABEL_71:
          v20 = v40;
          v143 = OUTLINED_FUNCTION_115_4();
          savescptr(v143, v144, v145);
          v146 = OUTLINED_FUNCTION_48_15();
          bspush_ca_scan(v146, v147);
          OUTLINED_FUNCTION_5_36();
          v148 = test_string_s();
          v109 = v20;
          if (!v148)
          {
LABEL_72:
            v20 = v109;
            goto LABEL_34;
          }
        }

LABEL_35:
        v105 = v20;
LABEL_36:
        v106 = v0[13];
        if (v106)
        {
          v107 = OUTLINED_FUNCTION_92_9(v106);
          v20 = v108;
        }

        else
        {
          v107 = vback(v0, v105);
          v20 = 0;
        }

        v96 = v20;
        v60 = v20;
        v109 = v20;
        v67 = v20;
        switch(v107)
        {
          case 1:
            continue;
          case 2:
          case 8:
            goto LABEL_34;
          case 3:
            OUTLINED_FUNCTION_5_36();
            v110 = test_string_s();
            v96 = v20;
            v105 = v20;
            if (!v110)
            {
              goto LABEL_33;
            }

            goto LABEL_36;
          case 4:
            goto LABEL_33;
          case 5:
          case 6:
          case 14:
          case 27:
            goto LABEL_60;
          case 7:
            goto LABEL_8;
          case 9:
            goto LABEL_19;
          case 10:
            v114 = OUTLINED_FUNCTION_42_15();
            bspush_ca_scan(v114, v115);
            OUTLINED_FUNCTION_5_36();
            goto LABEL_49;
          case 11:
            v116 = OUTLINED_FUNCTION_66_12();
            bspush_ca_scan(v116, v117);
            goto LABEL_47;
          case 12:
            v118 = OUTLINED_FUNCTION_59_13();
            bspush_ca_scan(v118, v119);
            OUTLINED_FUNCTION_29_23();
            goto LABEL_49;
          case 13:
LABEL_47:
            OUTLINED_FUNCTION_13_34();
LABEL_49:
            test_string_s();
            OUTLINED_FUNCTION_146_4();
            if (!v120)
            {
              goto LABEL_19;
            }

            goto LABEL_36;
          case 15:
            goto LABEL_10;
          case 16:
            v40 = v20;
            goto LABEL_71;
          case 17:
            v121 = OUTLINED_FUNCTION_44_15();
            bspush_ca_scan(v121, v122);
            goto LABEL_54;
          case 18:
            goto LABEL_72;
          case 19:
LABEL_54:
            OUTLINED_FUNCTION_5_36();
            v124 = test_string_s();
            v109 = v20;
            v105 = v20;
            if (!v124)
            {
              goto LABEL_72;
            }

            goto LABEL_36;
          case 20:
            goto LABEL_12;
          case 21:
            goto LABEL_22;
          case 22:
            v112 = OUTLINED_FUNCTION_70_12();
            bspush_ca_scan(v112, v113);
            goto LABEL_57;
          case 23:
            bspop_boa(v0);
            v123 = advance_tok(v0);
            goto LABEL_58;
          case 24:
            goto LABEL_59;
          case 25:
            v125 = OUTLINED_FUNCTION_57_13();
            bspush_ca_scan(v125, v126);
            goto LABEL_57;
          case 26:
LABEL_57:
            OUTLINED_FUNCTION_5_36();
            v123 = test_string_s();
LABEL_58:
            v105 = v20;
            if (!v123)
            {
              goto LABEL_59;
            }

            goto LABEL_36;
          case 28:
            v67 = v20;
            goto LABEL_74;
          case 29:
            OUTLINED_FUNCTION_5_36();
            test_string_s();
            OUTLINED_FUNCTION_138_4();
            if (!v111)
            {
              goto LABEL_24;
            }

            goto LABEL_36;
          case 30:
            goto LABEL_24;
          case 31:
            bspop_boa(v0);
LABEL_59:
            v127 = OUTLINED_FUNCTION_115_4();
            lpta_rpta_loadp(v127, v128, v129);
            v130 = OUTLINED_FUNCTION_1_39();
            inserted = insert_2pt_s(v130, v131, v132, v133, v134);
            v105 = v20;
            if (!inserted)
            {
              goto LABEL_60;
            }

            goto LABEL_36;
          case 32:
            v46 = v20;
            goto LABEL_13;
          case 33:
            goto LABEL_61;
          case 34:
            v137 = v20;
            goto LABEL_65;
          default:
            goto LABEL_3;
        }
      }

      break;
    }

    v47 = OUTLINED_FUNCTION_3_38();
    if (testFldeq(v47, v48, v49, v50) || advance_tok(v0))
    {
      goto LABEL_35;
    }

    v51 = OUTLINED_FUNCTION_32_20();
    starttest(v51, v52);
    v53 = OUTLINED_FUNCTION_53_14();
    if (!lpta_loadp_setscan_l(v53, v54))
    {
      OUTLINED_FUNCTION_5_36();
      if (!test_string_s())
      {
        v55 = OUTLINED_FUNCTION_39_16();
        bspush_ca_scan(v55, v56);
        v57 = OUTLINED_FUNCTION_49_15();
        bspush_ca_scan(v57, v58);
        OUTLINED_FUNCTION_13_34();
        v59 = test_string_s();
        v60 = v20;
        if (v59)
        {
          goto LABEL_35;
        }

LABEL_19:
        v20 = v60;
        OUTLINED_FUNCTION_96_7();
        v61 = v0[206];
        v62 = OUTLINED_FUNCTION_9_35();
        if (test_ptr(v62))
        {
          goto LABEL_35;
        }
      }
    }

LABEL_34:
    v97 = OUTLINED_FUNCTION_115_4();
    lpta_rpta_loadp(v97, v98, v99);
    v100 = OUTLINED_FUNCTION_1_39();
    if (insert_2pt_s(v100, v101, v102, v103, v104))
    {
      goto LABEL_35;
    }

LABEL_60:
    OUTLINED_FUNCTION_100_6(v186);
  }

LABEL_3:
  vretproc(v0);
  v12 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_157_3();
}

void y_rules()
{
  OUTLINED_FUNCTION_132_4();
  OUTLINED_FUNCTION_18_32();
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_158_3();
  OUTLINED_FUNCTION_90_9();
  bzero(v143, v3);
  OUTLINED_FUNCTION_89_9();
  bzero(v159, v4);
  v5 = setjmp(v159);
  if (!v5 && !OUTLINED_FUNCTION_150_4(v5, v143, v6, v7, v8, v9, v10, v11, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v143[0], v143[1], v143[2], v143[3], v143[4], v143[5], v143[6], v143[7], v143[8], v143[9], v143[10], v143[11], v143[12], v143[13], v143[14], v143[15], v143[16], v143[17], v143[18], v143[19], v143[20], v143[21], v143[22], v144[0], v144[1], v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159[0]))
  {
    v13 = OUTLINED_FUNCTION_86_9();
    get_parm(v13, v14, v15, -6);
    v16 = OUTLINED_FUNCTION_80_11();
    OUTLINED_FUNCTION_129_4(v16, v17);
    push_ptr_init(v0, v144);
    fence_37(v0, 0, &null_str_14);
    v18 = OUTLINED_FUNCTION_21_27();
    fence_37(v18, v19, v20);
    OUTLINED_FUNCTION_80_11();
    is_nasal_vow();
    if (!v21)
    {
      v22 = OUTLINED_FUNCTION_25_26();
      lpta_rpta_loadp(v22, v23, v24);
      v25 = OUTLINED_FUNCTION_0_40();
      if (!insert_2pt_s(v25, v26, v27, v28, v29))
      {
        goto LABEL_72;
      }
    }

    v30 = 0;
    v31 = 3;
    while (2)
    {
      v32 = OUTLINED_FUNCTION_112_4();
      starttest(v32, v33);
      v34 = OUTLINED_FUNCTION_24_26();
      v36 = lpta_loadp_setscan_l(v34, v35);
      v37 = v30;
      if (!v36)
      {
LABEL_15:
        v142 = v31;
        v30 = v37;
        v49 = OUTLINED_FUNCTION_116_4();
        savescptr(v49, v50, v144);
        bspush_ca_scan_boa();
        v51 = OUTLINED_FUNCTION_73_12();
        if (testFldeq(v51, v52, 4, v1))
        {
          goto LABEL_19;
        }

LABEL_16:
        v53 = advance_tok(v0);
        goto LABEL_17;
      }

LABEL_8:
      v142 = v31;
      v38 = v30;
      starttest(v0, 7);
      v39 = OUTLINED_FUNCTION_24_26();
      if (!lpta_loadp_setscan_l(v39, v40))
      {
LABEL_9:
        savescptr(v0, 8, v144);
        v41 = OUTLINED_FUNCTION_45_15();
        if (testFldeq(v41, v42, v43, v1))
        {
          goto LABEL_19;
        }

        if (advance_tok(v0))
        {
          goto LABEL_19;
        }

        v44 = OUTLINED_FUNCTION_95_8();
        if (lpta_loadp_setscan_r(v44, v45))
        {
          goto LABEL_19;
        }

        if (advance_tok(v0))
        {
          goto LABEL_19;
        }

        bspush_ca_scan_boa();
        v46 = OUTLINED_FUNCTION_45_15();
        if (testFldeq(v46, v47, v48, v1))
        {
          goto LABEL_19;
        }

        goto LABEL_16;
      }

LABEL_47:
      starttest(v0, 10);
      v89 = OUTLINED_FUNCTION_24_26();
      v30 = v38;
      if (!lpta_loadp_setscan_l(v89, v90))
      {
LABEL_50:
        savescptr(v0, 11, v144);
        bspush_ca_scan_boa();
        v93 = OUTLINED_FUNCTION_45_15();
        if (!testFldeq(v93, v94, v95, v1) && !advance_tok(v0))
        {
          v30 = 1;
        }

        goto LABEL_19;
      }

LABEL_48:
      v30 = v38;
      starttest(v0, 13);
      v91 = OUTLINED_FUNCTION_119_4();
      if (lpta_loadp_setscan_r(v91, v92))
      {
        goto LABEL_64;
      }

      v96 = OUTLINED_FUNCTION_45_15();
      if (testFldeq(v96, v97, v98, v1) || advance_tok(v0))
      {
        goto LABEL_19;
      }

      starttest(v0, 14);
      v99 = OUTLINED_FUNCTION_24_26();
      if (!lpta_loadp_setscan_l(v99, v100))
      {
        OUTLINED_FUNCTION_17_33();
        if (!test_string_s())
        {
          OUTLINED_FUNCTION_156_3();
          bspush_ca_scan_boa();
          OUTLINED_FUNCTION_17_33();
          v53 = test_string_s();
LABEL_17:
          if (!v53)
          {
            v30 = 1;
          }

LABEL_19:
          v54 = v30;
LABEL_20:
          v55 = *(v0 + 104);
          if (v55)
          {
            v56 = OUTLINED_FUNCTION_92_9(v55);
            v30 = v57;
          }

          else
          {
            v56 = vback(v0, v54);
            v30 = 0;
          }

          switch(v56)
          {
            case 1:
              v31 = v142;
              continue;
            case 2:
            case 18:
            case 19:
              goto LABEL_72;
            case 3:
              v31 = v142;
              goto LABEL_8;
            case 4:
              v37 = v30;
              v31 = v142;
              goto LABEL_15;
            case 5:
              bspop_boa(v0);
              v58 = OUTLINED_FUNCTION_95_8();
              v60 = lpta_loadp_setscan_r(v58, v59);
              v54 = v30;
              if (v60)
              {
                goto LABEL_20;
              }

              v61 = advance_tok(v0);
              v54 = v30;
              if (v61)
              {
                goto LABEL_20;
              }

              bspush_ca_scan(v0, 6);
              OUTLINED_FUNCTION_17_33();
              v62 = test_string_s();
              v54 = v30;
              if (v62)
              {
                goto LABEL_20;
              }

              goto LABEL_27;
            case 6:
LABEL_27:
              v63 = OUTLINED_FUNCTION_116_4();
              savescptr(v63, v64, &v145);
              *(v0 + 136) = v1;
              v65 = *(v0 + 1664);
              v66 = OUTLINED_FUNCTION_9_35();
              v67 = test_ptr(v66);
              goto LABEL_28;
            case 7:
              v38 = v30;
              goto LABEL_47;
            case 8:
              goto LABEL_9;
            case 9:
              bspop_boa(v0);
              goto LABEL_72;
            case 10:
              v38 = v30;
              goto LABEL_48;
            case 11:
              goto LABEL_50;
            case 12:
              bspop_boa(v0);
              v78 = OUTLINED_FUNCTION_95_8();
              v80 = lpta_loadp_setscan_r(v78, v79);
              v54 = v30;
              if (v80)
              {
                goto LABEL_20;
              }

              v81 = advance_tok(v0);
              v54 = v30;
              if (v81)
              {
                goto LABEL_20;
              }

              v82 = OUTLINED_FUNCTION_45_15();
              v85 = testFldeq(v82, v83, v84, 2);
              v54 = v30;
              if (v85)
              {
                goto LABEL_20;
              }

              v67 = advance_tok(v0);
LABEL_28:
              v54 = v30;
              if (!v67)
              {
                goto LABEL_31;
              }

              goto LABEL_20;
            case 13:
            case 21:
              goto LABEL_64;
            case 14:
              goto LABEL_58;
            case 15:
              bspop_boa(v0);
              v68 = OUTLINED_FUNCTION_110_4();
              starttest(v68, v69);
              v70 = OUTLINED_FUNCTION_119_4();
              if (lpta_loadp_setscan_r(v70, v71))
              {
                goto LABEL_31;
              }

              bspush_ca_scan_boa();
              OUTLINED_FUNCTION_17_33();
              if (test_string_s())
              {
                v54 = v30;
              }

              else
              {
                v54 = 1;
              }

              goto LABEL_20;
            case 16:
LABEL_31:
              v72 = OUTLINED_FUNCTION_93_9();
              lpta_rpta_loadp(v72, v73, &v145);
              v74 = OUTLINED_FUNCTION_28_23();
              v77 = &unk_28064B849;
              goto LABEL_37;
            case 17:
              bspop_boa(v0);
              v86 = OUTLINED_FUNCTION_93_9();
              lpta_rpta_loadp(v86, v87, &v145);
              v74 = OUTLINED_FUNCTION_26_26();
              v77 = &unk_28064B8AA;
LABEL_37:
              inserted = insert_2pt_s(v74, v75, v76, v77, 0);
              v54 = v30;
              if (!inserted)
              {
                goto LABEL_72;
              }

              goto LABEL_20;
            case 20:
              goto LABEL_62;
            default:
              goto LABEL_3;
          }
        }
      }

      break;
    }

LABEL_58:
    v101 = OUTLINED_FUNCTION_24_26();
    if (!lpta_loadp_setscan_l(v101, v102))
    {
      OUTLINED_FUNCTION_73_12();
      if (!test_string_s())
      {
        *(v0 + 136) = v1;
        v103 = *(v0 + 1648);
        v104 = OUTLINED_FUNCTION_9_35();
        if (!test_ptr(v104))
        {
          v105 = OUTLINED_FUNCTION_93_9();
          lpta_rpta_loadp(v105, v106, &v145);
          v107 = OUTLINED_FUNCTION_2_38();
          if (!insert_2pt_s(v107, v108, v109, &unk_28064B849, v110))
          {
LABEL_72:
            OUTLINED_FUNCTION_100_6(v146);
            goto LABEL_3;
          }
        }
      }
    }

LABEL_62:
    v111 = OUTLINED_FUNCTION_147_4();
    starttest(v111, v112);
    v113 = OUTLINED_FUNCTION_24_26();
    if (lpta_loadp_setscan_l(v113, v114) || (OUTLINED_FUNCTION_17_33(), test_string_s()))
    {
LABEL_64:
      v115 = OUTLINED_FUNCTION_93_9();
      lpta_rpta_loadp(v115, v116, &v145);
      v117 = OUTLINED_FUNCTION_2_38();
      v121 = &unk_28064B82E;
    }

    else
    {
      v122 = OUTLINED_FUNCTION_45_15();
      if (testFldeq(v122, v123, v124, 2) || advance_tok(v0))
      {
        goto LABEL_19;
      }

      v125 = OUTLINED_FUNCTION_93_9();
      lpta_rpta_loadp(v125, v126, &v145);
      v117 = OUTLINED_FUNCTION_1_39();
      v121 = &unk_28064B8AA;
    }

    if (insert_2pt_s(v117, v118, v119, v121, v120))
    {
      goto LABEL_19;
    }

    goto LABEL_72;
  }

LABEL_3:
  vretproc(v0);
  v12 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_131_4();
}

void z_rules()
{
  OUTLINED_FUNCTION_132_4();
  OUTLINED_FUNCTION_18_32();
  v99 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_40_16(v1, v2, v3, v4, v5, v6, v7, v8, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97);
  OUTLINED_FUNCTION_89_9();
  bzero(v98, v9);
  if (setjmp(v98))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_121_4();
  if (ventproc(v0, v10, v11, v12, v13, v98))
  {
    goto LABEL_3;
  }

  v15 = OUTLINED_FUNCTION_23_26();
  get_parm(v15, v16, v17, -6);
  v18 = OUTLINED_FUNCTION_94_8();
  OUTLINED_FUNCTION_129_4(v18, v19);
  OUTLINED_FUNCTION_102_6();
  fence_37(v0, 0, &null_str_14);
  v20 = OUTLINED_FUNCTION_69_12();
  fence_37(v20, v21, v22);
  v23 = OUTLINED_FUNCTION_80_11();
  if (!lpta_loadp_setscan_l(v23, v24))
  {
    OUTLINED_FUNCTION_5_36();
    if (!test_string_s())
    {
      v25 = OUTLINED_FUNCTION_106_4();
      lpta_rpta_loadp(v25, v26, v27);
      v28 = OUTLINED_FUNCTION_0_40();
      if (!insert_2pt_s(v28, v29, v30, v31, v32))
      {
        goto LABEL_21;
      }
    }
  }

  while (2)
  {
    v33 = OUTLINED_FUNCTION_74_12();
    starttest(v33, v34);
    v35 = OUTLINED_FUNCTION_80_11();
    lpta_loadpn(v35, v36);
    OUTLINED_FUNCTION_149_4();
    if (compare_ptas(v0) || testeq(v0))
    {
LABEL_14:
      v46 = OUTLINED_FUNCTION_93_9();
      starttest(v46, v47);
      OUTLINED_FUNCTION_87_9();
      v48 = OUTLINED_FUNCTION_69_12();
      if (setd_lookup(v48, v49, 41))
      {
LABEL_15:
        v50 = OUTLINED_FUNCTION_108_4();
        lpta_rpta_loadp(v50, v51, v52);
        v53 = OUTLINED_FUNCTION_0_40();
        v57 = &unk_28064B81F;
      }

      else
      {
        v58 = OUTLINED_FUNCTION_95_8();
        starttest(v58, v59);
        v60 = OUTLINED_FUNCTION_80_11();
        if (!lpta_loadp_setscan_r(v60, v61))
        {
          OUTLINED_FUNCTION_5_36();
          if (!test_string_s())
          {
LABEL_18:
            v62 = OUTLINED_FUNCTION_154_3();
            savescptr(v62, v63, &v94);
          }
        }

LABEL_19:
        v64 = OUTLINED_FUNCTION_108_4();
        lpta_rpta_loadp(v64, v65, v66);
        v53 = OUTLINED_FUNCTION_1_39();
        v57 = &unk_28064B888;
      }

      if (insert_2pt_s(v53, v54, v55, v57, v56))
      {
        goto LABEL_10;
      }

LABEL_21:
      OUTLINED_FUNCTION_100_6(v95);
      break;
    }

    v37 = OUTLINED_FUNCTION_108_4();
    lpta_rpta_loadp(v37, v38, v39);
    settvar_s();
    v40 = OUTLINED_FUNCTION_69_12();
    npush_s(v40);
    v41 = OUTLINED_FUNCTION_93_9();
    npop(v41, v42);
    OUTLINED_FUNCTION_37_17();
    insert_2ptv();
    if (!v43)
    {
      goto LABEL_21;
    }

LABEL_10:
    v44 = *(v0 + 104);
    if (v44)
    {
      v45 = OUTLINED_FUNCTION_92_9(v44);
    }

    else
    {
      v45 = OUTLINED_FUNCTION_136_4();
    }

    switch(v45)
    {
      case 1:
        continue;
      case 2:
        goto LABEL_21;
      case 3:
        goto LABEL_14;
      case 4:
        goto LABEL_15;
      case 5:
        goto LABEL_19;
      case 6:
        goto LABEL_18;
      default:
        goto LABEL_3;
    }
  }

LABEL_3:
  vretproc(v0);
  v14 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_157_3();
  OUTLINED_FUNCTION_131_4();
}

void a_rules()
{
  OUTLINED_FUNCTION_132_4();
  OUTLINED_FUNCTION_18_32();
  v321 = *MEMORY[0x277D85DE8];
  v316 = 0;
  v315 = 0;
  v314 = 0;
  v313 = 0;
  v311 = 0u;
  memset(v312, 0, sizeof(v312));
  v310[1] = 0;
  v309[1] = 0;
  v310[0] = 0;
  v309[0] = 0;
  OUTLINED_FUNCTION_90_9();
  bzero(v308, v2);
  OUTLINED_FUNCTION_89_9();
  bzero(v320, v3);
  if (!setjmp(v320) && !ventproc(v0, v308, v319, v318, v317, v320))
  {
    v5 = OUTLINED_FUNCTION_86_9();
    get_parm(v5, v6, v7, -6);
    v8 = OUTLINED_FUNCTION_80_11();
    OUTLINED_FUNCTION_129_4(v8, v9);
    memset(v312, 0, 22);
    LODWORD(v311) = -65534;
    push_ptr_init(v0, v310);
    push_ptr_init(v0, v309);
    fence_37(v0, 0, &null_str_14);
    v10 = OUTLINED_FUNCTION_21_27();
    fence_37(v10, v11, v12);
    v13 = OUTLINED_FUNCTION_63_12();
    if (!lpta_loadp_setscan_r(v13, v14))
    {
      OUTLINED_FUNCTION_56_13();
      if (!test_string_s())
      {
        *(v0 + 136) = &v313;
        v15 = *(v0 + 1664);
        v16 = OUTLINED_FUNCTION_9_35();
        if (!test_ptr(v16))
        {
          OUTLINED_FUNCTION_127_4();
          v17 = OUTLINED_FUNCTION_0_40();
          if (!insert_2pt_s(v17, v18, v19, v20, v21))
          {
            goto LABEL_244;
          }
        }
      }
    }

    v22 = 0;
    v23 = &unk_28064B84A;
    while (2)
    {
      OUTLINED_FUNCTION_93_9();
      is_nasal_vow();
      if (!v24)
      {
        v25 = OUTLINED_FUNCTION_95_8();
        lpta_rpta_loadp(v25, v26, &v313);
        v27 = OUTLINED_FUNCTION_28_23();
        if (!insert_2pt_s(v27, v28, v29, &unk_28064B84A, v22))
        {
          goto LABEL_244;
        }
      }

LABEL_11:
      v30 = OUTLINED_FUNCTION_134_4();
      starttest(v30, 4);
      OUTLINED_FUNCTION_22_26();
      if (v31)
      {
        v32 = OUTLINED_FUNCTION_24_26();
        if (!lpta_loadp_setscan_r(v32, v33))
        {
          v111 = OUTLINED_FUNCTION_73_12();
          if (testFldeq(v111, v112, v22, 3))
          {
            goto LABEL_236;
          }

          v113 = OUTLINED_FUNCTION_73_12();
          if (OUTLINED_FUNCTION_152_3(v113, v114))
          {
            goto LABEL_236;
          }

          v115 = advance_tok(v0);
          LODWORD(v73) = v23;
          v102 = v23;
          if (v115)
          {
            goto LABEL_70;
          }

LABEL_67:
          v116 = OUTLINED_FUNCTION_35_17();
          savescptr(v116, v117, &v313);
          v118 = OUTLINED_FUNCTION_95_8();
          lpta_rpta_loadp(v118, v119, &v313);
          v23 = &v311;
          settvar_s();
          npush_s(v0);
          WORD1(v311) = 9;
          v120 = OUTLINED_FUNCTION_110_4();
          npop(v120, v121);
          OUTLINED_FUNCTION_72_12();
          insert_2ptv();
          goto LABEL_69;
        }
      }

LABEL_14:
      OUTLINED_FUNCTION_22_26();
      if (!v31 || *(v0 + 6190) || (v34 = OUTLINED_FUNCTION_114_4(), lpta_rpta_loadp(v34, v35, v36), v37 = OUTLINED_FUNCTION_73_12(), setd_lookup(v37, v38, 175)) || (v39 = OUTLINED_FUNCTION_95_8(), lpta_rpta_loadp(v39, v40, &v313), v41 = OUTLINED_FUNCTION_28_23(), insert_2pt_s(v41, v42, v43, &unk_28064B832, v22)))
      {
LABEL_19:
        OUTLINED_FUNCTION_22_26();
        if (!v31 || *(v0 + 6190) || (OUTLINED_FUNCTION_87_9(), v44 = OUTLINED_FUNCTION_73_12(), setd_lookup(v44, v45, 176)) || (v46 = OUTLINED_FUNCTION_95_8(), lpta_rpta_loadp(v46, v47, &v313), v48 = OUTLINED_FUNCTION_28_23(), insert_2pt_s(v48, v49, v50, &unk_28064B832, v22)))
        {
LABEL_24:
          v51 = OUTLINED_FUNCTION_24_26();
          if (lpta_loadp_setscan_r(v51, v52) || (OUTLINED_FUNCTION_17_33(), test_string_s()))
          {
LABEL_26:
            v53 = OUTLINED_FUNCTION_24_26();
            if (!lpta_loadp_setscan_r(v53, v54))
            {
              OUTLINED_FUNCTION_17_33();
              if (!test_string_s())
              {
LABEL_117:
                v184 = OUTLINED_FUNCTION_134_4();
                savescptr(v184, 40, &v313);
                starttest(v0, 41);
                v185 = OUTLINED_FUNCTION_24_26();
                if (lpta_loadp_setscan_r(v185, v186))
                {
LABEL_118:
                  starttest(v0, 50);
                  v187 = OUTLINED_FUNCTION_24_26();
                  if (!lpta_loadp_setscan_r(v187, v188))
                  {
                    OUTLINED_FUNCTION_54_14();
                    v73 = v23;
                    if (!test_string_s())
                    {
LABEL_120:
                      savescptr(v0, 51, &v313);
LABEL_121:
                      v23 = v73;
                    }
                  }

                  v189 = OUTLINED_FUNCTION_95_8();
                  lpta_rpta_loadp(v189, v190, &v313);
                  v91 = OUTLINED_FUNCTION_2_38();
                  v95 = &unk_28064B84D;
                }

                else
                {
                  bspush_ca_scan(v0, 42);
                  OUTLINED_FUNCTION_17_33();
                  v208 = test_string_s();
                  v128 = v23;
                  v102 = v23;
                  if (v208)
                  {
                    goto LABEL_70;
                  }

LABEL_139:
                  v23 = v128;
                  v209 = OUTLINED_FUNCTION_95_8();
                  lpta_rpta_loadp(v209, v210, &v313);
                  v91 = OUTLINED_FUNCTION_2_38();
                  v95 = &unk_28064B84C;
                }

                goto LABEL_140;
              }
            }

LABEL_28:
            v55 = OUTLINED_FUNCTION_24_26();
            if (!lpta_loadp_setscan_r(v55, v56))
            {
              OUTLINED_FUNCTION_17_33();
              if (!test_string_s())
              {
                starttest(v0, 53);
                bspush_ca(v0);
                v105 = OUTLINED_FUNCTION_95_8();
                if (lpta_loadp_setscan_l(v105, v106))
                {
                  goto LABEL_236;
                }

                bspush_ca_scan(v0, 55);
                OUTLINED_FUNCTION_17_33();
                v107 = test_string_s();
                v108 = v23;
                v102 = v23;
                if (v107)
                {
                  goto LABEL_70;
                }

LABEL_62:
                v23 = v108;
                goto LABEL_63;
              }
            }

LABEL_30:
            v57 = OUTLINED_FUNCTION_112_4();
            starttest(v57, v58);
            v59 = OUTLINED_FUNCTION_95_8();
            if (!lpta_loadp_setscan_r(v59, v60))
            {
              v87 = OUTLINED_FUNCTION_73_12();
              if (!OUTLINED_FUNCTION_152_3(v87, v88) && !advance_tok(v0))
              {
                goto LABEL_54;
              }

              goto LABEL_236;
            }

LABEL_31:
            starttest(v0, 67);
            OUTLINED_FUNCTION_22_26();
            if (!v31 || (v61 = OUTLINED_FUNCTION_24_26(), lpta_loadp_setscan_r(v61, v62)) || (OUTLINED_FUNCTION_45_15(), test_string_s()) || (*(v0 + 136) = v1, v63 = *(v0 + 1664), v64 = OUTLINED_FUNCTION_9_35(), test_ptr(v64)))
            {
LABEL_36:
              v65 = OUTLINED_FUNCTION_125_4();
              starttest(v65, v66);
              v67 = OUTLINED_FUNCTION_24_26();
              if (lpta_loadp_setscan_r(v67, v68) || (OUTLINED_FUNCTION_17_33(), test_string_s()))
              {
LABEL_38:
                starttest(v0, 73);
                v69 = OUTLINED_FUNCTION_24_26();
                if (lpta_loadp_setscan_r(v69, v70) || (OUTLINED_FUNCTION_54_14(), test_string_s()) || (*(v0 + 136) = v1, v71 = *(v0 + 1664), v72 = OUTLINED_FUNCTION_9_35(), LODWORD(v73) = v23, test_ptr(v72)))
                {
LABEL_41:
                  OUTLINED_FUNCTION_87_9();
                  v74 = OUTLINED_FUNCTION_73_12();
                  if (!setd_lookup(v74, v75, 27))
                  {
                    v76 = OUTLINED_FUNCTION_95_8();
                    lpta_rpta_loadp(v76, v77, &v313);
                    v78 = OUTLINED_FUNCTION_2_38();
                    if (!insert_2pt_s(v78, v79, v80, &unk_28064B84D, v81))
                    {
                      goto LABEL_244;
                    }
                  }

LABEL_43:
                  starttest(v0, 76);
                  OUTLINED_FUNCTION_22_26();
                  if (v31)
                  {
                    v82 = OUTLINED_FUNCTION_24_26();
                    if (!lpta_loadp_setscan_l(v82, v83))
                    {
LABEL_46:
                      v84 = OUTLINED_FUNCTION_134_4();
                      savescptr(v84, 77, v310);
                      if (!advance_tok(v0))
                      {
                        OUTLINED_FUNCTION_17_33();
                        if (!test_string_s())
                        {
                          *(v0 + 136) = v1;
                          v85 = *(v0 + 1648);
                          v86 = OUTLINED_FUNCTION_9_35();
                          if (!test_ptr(v86) && !lpta_loadp_setscan_r(v0, v310))
                          {
                            OUTLINED_FUNCTION_73_12();
                            if (!test_string_s())
                            {
LABEL_54:
                              v89 = OUTLINED_FUNCTION_95_8();
                              lpta_rpta_loadp(v89, v90, &v313);
                              v91 = OUTLINED_FUNCTION_2_38();
                              v95 = &unk_28064B832;
LABEL_140:
                              inserted = insert_2pt_s(v91, v92, v93, v95, v94);
                              goto LABEL_141;
                            }
                          }
                        }
                      }

LABEL_236:
                      v102 = v23;
                      goto LABEL_70;
                    }
                  }

LABEL_63:
                  v109 = OUTLINED_FUNCTION_95_8();
                  lpta_rpta_loadp(v109, v110, &v313);
                  v91 = OUTLINED_FUNCTION_2_38();
                  v95 = &unk_28064B831;
                  goto LABEL_140;
                }

LABEL_143:
                savescptr(v0, 74, &v313);
                v217 = OUTLINED_FUNCTION_95_8();
                lpta_rpta_loadp(v217, v218, &v313);
                v212 = OUTLINED_FUNCTION_2_38();
                v215 = &unk_28064B84A;
                goto LABEL_129;
              }

LABEL_133:
              v203 = OUTLINED_FUNCTION_134_4();
              savescptr(v203, 69, &v313);
              bspush_ca_scan_boa();
              v204 = OUTLINED_FUNCTION_45_15();
              if (testFldeq(v204, v205, v206, v1))
              {
                goto LABEL_236;
              }

              v207 = advance_tok(v0);
LABEL_135:
              if (v207)
              {
                v102 = v23;
              }

              else
              {
                v102 = 1;
              }

              goto LABEL_70;
            }

LABEL_214:
            v273 = OUTLINED_FUNCTION_95_8();
            lpta_rpta_loadp(v273, v274, &v313);
            OUTLINED_FUNCTION_123_4();
            settvar_s();
            v275 = OUTLINED_FUNCTION_98_7();
            npush_s(v275);
            WORD1(v311) = 9;
            v276 = OUTLINED_FUNCTION_125_4();
            npop(v276, v277);
            OUTLINED_FUNCTION_72_12();
            v22 = 66;
            insert_2ptv();
LABEL_141:
            v102 = v23;
            if (!inserted)
            {
              goto LABEL_244;
            }

LABEL_70:
            v123 = *(v0 + 104);
            if (v123)
            {
              v124 = OUTLINED_FUNCTION_92_9(v123);
              v73 = v125;
            }

            else
            {
              v124 = vback(v0, v102);
              v73 = 0;
            }

            v101 = v73;
            v126 = v73;
            v127 = v73;
            v128 = v73;
            v108 = v73;
            switch(v124)
            {
              case 1:
                v23 = &unk_28064B84A;
                continue;
              case 2:
              case 12:
              case 49:
              case 59:
              case 72:
                goto LABEL_244;
              case 3:
                goto LABEL_11;
              case 4:
                v23 = v73;
                goto LABEL_14;
              case 5:
                goto LABEL_67;
              case 6:
                v23 = v73;
                goto LABEL_19;
              case 7:
                v23 = v73;
                goto LABEL_24;
              case 8:
                v23 = v73;
                goto LABEL_26;
              case 9:
                v23 = v73;
                goto LABEL_162;
              case 10:
                v129 = OUTLINED_FUNCTION_4_37();
                v101 = v73;
                v102 = v73;
                if (!v129)
                {
                  goto LABEL_59;
                }

                goto LABEL_70;
              case 11:
                goto LABEL_59;
              case 13:
                v23 = v73;
                goto LABEL_165;
              case 14:
                goto LABEL_164;
              case 15:
                v23 = v73;
                goto LABEL_167;
              case 16:
                v23 = v73;
                goto LABEL_168;
              case 17:
                goto LABEL_175;
              case 18:
                v23 = v73;
                goto LABEL_170;
              case 19:
                goto LABEL_184;
              case 20:
                goto LABEL_132;
              case 21:
                OUTLINED_FUNCTION_5_36();
                goto LABEL_131;
              case 22:
                v23 = v73;
                goto LABEL_186;
              case 23:
                v23 = v73;
                goto LABEL_189;
              case 24:
                v178 = OUTLINED_FUNCTION_57_13();
                bspush_ca_scan(v178, v179);
                goto LABEL_112;
              case 25:
                goto LABEL_208;
              case 26:
                v180 = OUTLINED_FUNCTION_70_12();
                bspush_ca_scan(v180, v181);
LABEL_112:
                OUTLINED_FUNCTION_5_36();
                goto LABEL_113;
              case 27:
                OUTLINED_FUNCTION_29_23();
LABEL_113:
                v182 = test_string_s();
                v127 = v73;
                v102 = v73;
                if (!v182)
                {
                  goto LABEL_208;
                }

                goto LABEL_70;
              case 28:
                v23 = v73;
                goto LABEL_193;
              case 29:
                goto LABEL_211;
              case 30:
                v23 = v73;
                goto LABEL_197;
              case 31:
                goto LABEL_215;
              case 32:
                v23 = v73;
                goto LABEL_200;
              case 33:
                v23 = v73;
                goto LABEL_219;
              case 34:
                bspop_boa(v0);
                v183 = advance_tok(v0);
                v102 = v73;
                if (v183)
                {
                  goto LABEL_70;
                }

                goto LABEL_128;
              case 35:
                v23 = v73;
                goto LABEL_228;
              case 36:
                goto LABEL_229;
              case 37:
                v23 = v73;
                goto LABEL_230;
              case 38:
                goto LABEL_233;
              case 39:
                v23 = v73;
                goto LABEL_28;
              case 40:
                goto LABEL_117;
              case 41:
                v23 = v73;
                goto LABEL_118;
              case 42:
                v161 = OUTLINED_FUNCTION_70_12();
                bspush_ca_scan(v161, v162);
                OUTLINED_FUNCTION_5_36();
                v163 = test_string_s();
                v102 = v73;
                if (v163)
                {
                  goto LABEL_70;
                }

                OUTLINED_FUNCTION_5_36();
                v164 = test_string_s();
                v102 = v73;
                if (v164)
                {
                  goto LABEL_70;
                }

                OUTLINED_FUNCTION_70_12();
                bspush_ca_scan_boa();
                OUTLINED_FUNCTION_5_36();
                v148 = test_string_s();
                goto LABEL_91;
              case 43:
                goto LABEL_139;
              case 44:
                v165 = OUTLINED_FUNCTION_70_12();
                bspush_ca_scan(v165, v166);
                OUTLINED_FUNCTION_5_36();
                v167 = test_string_s();
                v102 = v73;
                if (v167)
                {
                  goto LABEL_70;
                }

                v168 = OUTLINED_FUNCTION_12_35();
                v171 = testFldeq(v168, v169, v170, 2);
                v102 = v73;
                if (v171)
                {
                  goto LABEL_70;
                }

                OUTLINED_FUNCTION_70_12();
                bspush_ca_scan_boa();
                v156 = OUTLINED_FUNCTION_31_21();
                v159 = 25;
                goto LABEL_90;
              case 45:
                bspop_boa(v0);
                v128 = v73;
                goto LABEL_139;
              case 46:
                OUTLINED_FUNCTION_5_36();
                v172 = test_string_s();
                v102 = v73;
                if (v172)
                {
                  goto LABEL_70;
                }

                v173 = OUTLINED_FUNCTION_3_38();
                v177 = testFldeq(v173, v174, v175, v176);
                v102 = v73;
                if (v177)
                {
                  goto LABEL_70;
                }

                goto LABEL_95;
              case 47:
                bspop_boa(v0);
                OUTLINED_FUNCTION_70_12();
                bspush_ca_scan_boa();
                v156 = OUTLINED_FUNCTION_31_21();
                v159 = 26;
LABEL_90:
                v148 = testFldeq(v156, v157, v158, v159);
                goto LABEL_91;
              case 48:
                bspop_boa(v0);
LABEL_95:
                v160 = advance_tok(v0);
                v128 = v73;
                v102 = v73;
                if (!v160)
                {
                  goto LABEL_139;
                }

                goto LABEL_70;
              case 50:
                goto LABEL_121;
              case 51:
                goto LABEL_120;
              case 52:
                v23 = v73;
                goto LABEL_30;
              case 53:
                v135 = OUTLINED_FUNCTION_70_12();
                starttest(v135, v136);
                v137 = OUTLINED_FUNCTION_71_12();
                if (lpta_loadp_setscan_l(v137, v138))
                {
                  goto LABEL_79;
                }

                goto LABEL_83;
              case 54:
                OUTLINED_FUNCTION_87_9();
                v132 = OUTLINED_FUNCTION_69_12();
                v134 = setd_lookup(v132, v133, 26);
                goto LABEL_104;
              case 55:
                v130 = OUTLINED_FUNCTION_70_12();
                bspush_ca_scan(v130, v131);
                goto LABEL_103;
              case 56:
              case 58:
                goto LABEL_62;
              case 57:
LABEL_103:
                OUTLINED_FUNCTION_5_36();
                v134 = test_string_s();
LABEL_104:
                v108 = v73;
                v102 = v73;
                if (!v134)
                {
                  goto LABEL_62;
                }

                goto LABEL_70;
              case 60:
LABEL_79:
                v139 = OUTLINED_FUNCTION_70_12();
                starttest(v139, v140);
                v141 = OUTLINED_FUNCTION_71_12();
                if (!lpta_loadp_setscan_r(v141, v142) && !advance_tok(v0))
                {
                  goto LABEL_81;
                }

                goto LABEL_128;
              case 61:
LABEL_83:
                savescptr(v0, 61, v310);
                OUTLINED_FUNCTION_5_36();
                v149 = test_string_s();
                v102 = v73;
                if (!v149)
                {
                  v150 = OUTLINED_FUNCTION_71_12();
                  v152 = lpta_loadp_setscan_r(v150, v151);
                  v102 = v73;
                  if (!v152)
                  {
                    v153 = advance_tok(v0);
                    v102 = v73;
                    if (!v153)
                    {
                      v154 = advance_tok(v0);
                      v102 = v73;
                      if (!v154)
                      {
                        goto LABEL_87;
                      }
                    }
                  }
                }

                goto LABEL_70;
              case 62:
LABEL_87:
                savescptr(v0, 62, &v313);
                OUTLINED_FUNCTION_5_36();
                v155 = test_string_s();
                v102 = v73;
                if (v155)
                {
                  goto LABEL_70;
                }

                OUTLINED_FUNCTION_127_4();
                v212 = OUTLINED_FUNCTION_1_39();
                goto LABEL_129;
              case 63:
              case 71:
                goto LABEL_128;
              case 64:
LABEL_81:
                savescptr(v0, 64, &v313);
                OUTLINED_FUNCTION_70_12();
                bspush_ca_scan_boa();
                v143 = OUTLINED_FUNCTION_3_38();
                v147 = testFldeq(v143, v144, v145, v146);
                v102 = v73;
                if (!v147)
                {
                  v148 = advance_tok(v0);
LABEL_91:
                  if (v148)
                  {
                    v102 = v73;
                  }

                  else
                  {
                    v102 = 1;
                  }
                }

                goto LABEL_70;
              case 65:
                bspop_boa(v0);
                goto LABEL_128;
              case 66:
                v23 = v73;
                goto LABEL_31;
              case 67:
                v23 = v73;
                goto LABEL_36;
              case 68:
                v23 = v73;
                goto LABEL_38;
              case 69:
                goto LABEL_133;
              case 70:
                bspop_boa(v0);
                v191 = OUTLINED_FUNCTION_70_12();
                starttest(v191, v192);
                v193 = OUTLINED_FUNCTION_71_12();
                if (!lpta_loadp_setscan_r(v193, v194))
                {
                  OUTLINED_FUNCTION_5_36();
                  if (!test_string_s())
                  {
                    OUTLINED_FUNCTION_127_4();
                    v195 = OUTLINED_FUNCTION_0_40();
                    if (!insert_2pt_s(v195, v196, v197, v198, v199))
                    {
                      goto LABEL_244;
                    }
                  }
                }

LABEL_128:
                OUTLINED_FUNCTION_127_4();
                v212 = OUTLINED_FUNCTION_0_40();
                goto LABEL_129;
              case 73:
                v23 = v73;
                goto LABEL_41;
              case 74:
                goto LABEL_143;
              case 75:
                v23 = v73;
                goto LABEL_43;
              case 76:
                v23 = v73;
                goto LABEL_63;
              case 77:
                goto LABEL_46;
              default:
                goto LABEL_3;
            }
          }

          v96 = OUTLINED_FUNCTION_39_16();
          starttest(v96, v97);
          v98 = OUTLINED_FUNCTION_24_26();
          if (!lpta_loadp_setscan_r(v98, v99) && !advance_tok(v0))
          {
            OUTLINED_FUNCTION_17_33();
            if (!test_string_s())
            {
              bspush_ca_scan(v0, 10);
              OUTLINED_FUNCTION_17_33();
              v100 = test_string_s();
              v101 = v23;
              v102 = v23;
              if (v100)
              {
                goto LABEL_70;
              }

LABEL_59:
              v23 = v101;
              v103 = OUTLINED_FUNCTION_95_8();
              lpta_rpta_loadp(v103, v104, &v313);
              v91 = OUTLINED_FUNCTION_28_23();
              v95 = &unk_28064B831;
              v94 = v22;
              goto LABEL_140;
            }
          }

LABEL_162:
          v219 = OUTLINED_FUNCTION_24_26();
          if (!lpta_loadp_setscan_r(v219, v220))
          {
            OUTLINED_FUNCTION_17_33();
            if (!test_string_s())
            {
LABEL_164:
              v221 = OUTLINED_FUNCTION_134_4();
              savescptr(v221, 14, &v313);
            }
          }

LABEL_165:
          OUTLINED_FUNCTION_93_9();
          is_nasal_vow();
          if (!v222)
          {
            v223 = OUTLINED_FUNCTION_95_8();
            lpta_rpta_loadp(v223, v224, &v313);
            v225 = OUTLINED_FUNCTION_28_23();
            if (!insert_2pt_s(v225, v226, v227, &unk_28064B848, v22))
            {
              goto LABEL_244;
            }
          }

LABEL_167:
          starttest(v0, 16);
          v228 = OUTLINED_FUNCTION_95_8();
          LODWORD(v73) = v23;
          if (lpta_loadp_setscan_l(v228, v229))
          {
LABEL_168:
            starttest(v0, 18);
            v230 = OUTLINED_FUNCTION_24_26();
            if (!lpta_loadp_setscan_r(v230, v231))
            {
              OUTLINED_FUNCTION_17_33();
              if (!test_string_s())
              {
                v239 = OUTLINED_FUNCTION_156_3();
                bspush_ca_scan(v239, v240);
                OUTLINED_FUNCTION_17_33();
                v241 = test_string_s();
                v73 = v23;
                v102 = v23;
                if (v241)
                {
                  goto LABEL_70;
                }

LABEL_184:
                v242 = OUTLINED_FUNCTION_44_15();
                savescptr(v242, v243, &v313);
                bspush_ca_scan(v0, 20);
                bspush_ca_scan(v0, 21);
                OUTLINED_FUNCTION_17_33();
LABEL_131:
                v200 = test_string_s();
                v126 = v73;
                v102 = v73;
                if (v200)
                {
                  goto LABEL_70;
                }

LABEL_132:
                v23 = v126;
                v201 = OUTLINED_FUNCTION_95_8();
                lpta_rpta_loadp(v201, v202, &v313);
                v91 = OUTLINED_FUNCTION_2_38();
                v95 = &unk_28064B834;
                goto LABEL_140;
              }
            }

LABEL_170:
            starttest(v0, 22);
            OUTLINED_FUNCTION_22_26();
            if (v31)
            {
              v232 = OUTLINED_FUNCTION_24_26();
              if (!lpta_loadp_setscan_r(v232, v233))
              {
                OUTLINED_FUNCTION_17_33();
                if (!test_string_s())
                {
                  goto LABEL_214;
                }
              }
            }

LABEL_186:
            starttest(v0, 23);
            OUTLINED_FUNCTION_22_26();
            if (v31 && (v244 = OUTLINED_FUNCTION_24_26(), !lpta_loadp_setscan_r(v244, v245)))
            {
              bspush_ca_scan(v0, 24);
              OUTLINED_FUNCTION_54_14();
              v256 = test_string_s();
              v127 = v23;
              v102 = v23;
              if (v256)
              {
                goto LABEL_70;
              }

LABEL_208:
              v23 = v127;
              savescptr(v0, 25, v309);
              v257 = OUTLINED_FUNCTION_99_7();
              lpta_rpta_loadp(v257, v258, v309);
              v259 = OUTLINED_FUNCTION_73_12();
              if (setd_lookup(v259, v260, 177))
              {
                goto LABEL_236;
              }

              v261 = OUTLINED_FUNCTION_114_4();
              lpta_rpta_loadp(v261, v309, v262);
              v263 = OUTLINED_FUNCTION_73_12();
              v265 = 178;
            }

            else
            {
LABEL_189:
              v246 = OUTLINED_FUNCTION_147_4();
              starttest(v246, v247);
              OUTLINED_FUNCTION_22_26();
              if (!v31 || (v248 = OUTLINED_FUNCTION_24_26(), lpta_loadp_setscan_r(v248, v249)) || (OUTLINED_FUNCTION_17_33(), test_string_s()))
              {
LABEL_193:
                starttest(v0, 30);
                OUTLINED_FUNCTION_22_26();
                if (v31)
                {
                  v250 = OUTLINED_FUNCTION_24_26();
                  if (!lpta_loadp_setscan_r(v250, v251))
                  {
                    OUTLINED_FUNCTION_45_15();
                    v73 = v23;
                    if (!test_string_s())
                    {
LABEL_215:
                      v23 = v73;
                      v278 = OUTLINED_FUNCTION_43_15();
                      savescptr(v278, v279, v309);
                      v280 = OUTLINED_FUNCTION_99_7();
                      lpta_rpta_loadp(v280, v281, v309);
                      v282 = OUTLINED_FUNCTION_73_12();
                      if (!setd_lookup(v282, v283, 181))
                      {
                        v284 = OUTLINED_FUNCTION_114_4();
                        lpta_rpta_loadp(v284, v309, v285);
                        v286 = OUTLINED_FUNCTION_73_12();
                        if (!setd_lookup(v286, v287, 178))
                        {
                          v288 = OUTLINED_FUNCTION_95_8();
                          lpta_rpta_loadp(v288, v289, &v313);
                          v91 = OUTLINED_FUNCTION_2_38();
                          v95 = &unk_28064B833;
                          goto LABEL_140;
                        }
                      }

                      goto LABEL_236;
                    }
                  }
                }

LABEL_197:
                starttest(v0, 32);
                OUTLINED_FUNCTION_22_26();
                if (v31)
                {
                  OUTLINED_FUNCTION_87_9();
                  v252 = OUTLINED_FUNCTION_73_12();
                  if (!setd_lookup(v252, v253, 182))
                  {
                    goto LABEL_214;
                  }
                }

LABEL_200:
                starttest(v0, 33);
                OUTLINED_FUNCTION_22_26();
                if (v31)
                {
                  v254 = OUTLINED_FUNCTION_93_9();
                  lpta_loadpn(v254, v255);
                  OUTLINED_FUNCTION_149_4();
                  if (!compare_ptas(v0) && !testeq(v0) && !lpta_loadp_setscan_r(v0, v0 + 1320))
                  {
                    if (testFldeq(v0, 4u, v1, v1))
                    {
                      goto LABEL_236;
                    }

                    bspush_ca_scan_boa();
                    v207 = testFldeq(v0, 4u, 2, 2);
                    goto LABEL_135;
                  }
                }

LABEL_219:
                OUTLINED_FUNCTION_22_26();
                if (v31)
                {
                  OUTLINED_FUNCTION_87_9();
                  v290 = OUTLINED_FUNCTION_73_12();
                  if (!setd_lookup(v290, v291, 183))
                  {
                    v292 = OUTLINED_FUNCTION_95_8();
                    lpta_rpta_loadp(v292, v293, &v313);
                    v294 = OUTLINED_FUNCTION_2_38();
                    if (!insert_2pt_s(v294, v295, v296, &unk_28064B833, v297))
                    {
                      goto LABEL_244;
                    }
                  }
                }

LABEL_228:
                LODWORD(v73) = v23;
                starttest(v0, 36);
                v298 = OUTLINED_FUNCTION_24_26();
                if (!lpta_loadp_setscan_l(v298, v299))
                {
LABEL_230:
                  savescptr(v0, 37, v310);
                  if (!advance_tok(v0) && !advance_tok(v0))
                  {
                    OUTLINED_FUNCTION_17_33();
                    v302 = test_string_s();
                    v102 = v23;
                    if (v302)
                    {
                      goto LABEL_70;
                    }

LABEL_233:
                    v303 = OUTLINED_FUNCTION_134_4();
                    if (!test_synch(v303, 38, v1, &_MergedGlobals_33) && !lpta_loadp_setscan_r(v0, v310))
                    {
                      OUTLINED_FUNCTION_54_14();
                      if (!test_string_s())
                      {
                        v304 = OUTLINED_FUNCTION_95_8();
                        lpta_rpta_loadp(v304, v305, &v313);
                        v91 = OUTLINED_FUNCTION_1_39();
                        v95 = &unk_28064B8AE;
                        goto LABEL_140;
                      }
                    }
                  }

                  goto LABEL_236;
                }

LABEL_229:
                v300 = OUTLINED_FUNCTION_95_8();
                lpta_rpta_loadp(v300, v301, &v313);
                v212 = OUTLINED_FUNCTION_2_38();
                v215 = &unk_28064B834;
LABEL_129:
                v122 = insert_2pt_s(v212, v213, v214, v215, v216);
LABEL_69:
                v102 = v73;
                if (v122)
                {
                  goto LABEL_70;
                }

LABEL_244:
                OUTLINED_FUNCTION_100_6(v314);
                goto LABEL_3;
              }

LABEL_211:
              v266 = OUTLINED_FUNCTION_134_4();
              savescptr(v266, 29, v309);
              v267 = OUTLINED_FUNCTION_99_7();
              lpta_rpta_loadp(v267, v268, v309);
              v269 = OUTLINED_FUNCTION_73_12();
              if (setd_lookup(v269, v270, 179))
              {
                goto LABEL_236;
              }

              v271 = OUTLINED_FUNCTION_114_4();
              lpta_rpta_loadp(v271, v309, v272);
              v263 = OUTLINED_FUNCTION_73_12();
              v265 = 180;
            }

            if (setd_lookup(v263, v264, v265))
            {
              goto LABEL_236;
            }

            goto LABEL_214;
          }

LABEL_175:
          v23 = v310;
          savescptr(v0, 17, v310);
          OUTLINED_FUNCTION_17_33();
          if (test_string_s() || (v234 = OUTLINED_FUNCTION_110_4(), lpta_loadp_setscan_r(v234, v235)) || advance_tok(v0) || advance_tok(v0) || (OUTLINED_FUNCTION_17_33(), test_string_s()) || (v236 = OUTLINED_FUNCTION_45_15(), testFldeq(v236, v237, v238, v1)) || advance_tok(v0))
          {
            v102 = v73;
            goto LABEL_70;
          }

          v306 = OUTLINED_FUNCTION_95_8();
          lpta_rpta_loadp(v306, v307, &v313);
          v212 = OUTLINED_FUNCTION_2_38();
          v215 = &unk_28064B84B;
          goto LABEL_129;
        }
      }

      break;
    }

    *(v0 + 6190) = 1;
    goto LABEL_244;
  }

LABEL_3:
  vretproc(v0);
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_131_4();
}

uint64_t e_rules()
{
  OUTLINED_FUNCTION_18_32();
  v550 = *MEMORY[0x277D85DE8];
  v546[0] = 0;
  v546[1] = 0;
  v544 = 0;
  v545 = 0;
  v543[0] = 0;
  v543[1] = 0;
  v541 = 0;
  v542 = 0;
  *&v3 = OUTLINED_FUNCTION_122_4();
  v537 = v3;
  *v538 = v3;
  OUTLINED_FUNCTION_84_10(v4, v5, v6, v7, v8, v9, v10, v11, v510, v512, v513, v514, v515, v516, v517, v518, v519, v520, v521, v522, v523, v524, v525, v526, v527, v528, v529, v530, v531, v532, v533, v534, v535, v536);
  OUTLINED_FUNCTION_55_14();
  v12 = setjmp(v2);
  if (!v12 && !OUTLINED_FUNCTION_137_4(v12, &v512, v549, v548, v547))
  {
    v15 = OUTLINED_FUNCTION_86_9();
    get_parm(v15, v16, v17, -6);
    OUTLINED_FUNCTION_41_15();
    push_ptr_init(v0, v543);
    push_ptr_init(v0, &v541);
    push_ptr_init(v0, &v539);
    *v538 = 0;
    *&v538[8] = 0;
    *&v538[14] = 0;
    LODWORD(v537) = -65534;
    v18 = OUTLINED_FUNCTION_117_4();
    push_ptr_init(v18, v19);
    v20 = 0;
    v21 = OUTLINED_FUNCTION_98_7();
    v24 = fence_37(v21, v22, v23);
    OUTLINED_FUNCTION_111_4(v24, v25, &unk_28064B83D);
    v26 = OUTLINED_FUNCTION_116_4();
    starttest(v26, v27);
    v28 = OUTLINED_FUNCTION_74_12();
    if (lpta_loadp_setscan_r(v28, v29))
    {
      while (2)
      {
        v30 = OUTLINED_FUNCTION_32_20();
        starttest(v30, v31);
        v32 = OUTLINED_FUNCTION_27_24();
        v34 = v20;
        v35 = v20;
        if (lpta_loadp_setscan_l(v32, v33))
        {
LABEL_7:
          v36 = OUTLINED_FUNCTION_47_15();
          starttest(v36, v37);
          v38 = OUTLINED_FUNCTION_27_24();
          v40 = v35;
          v34 = v35;
          if (lpta_loadp_setscan_l(v38, v39))
          {
LABEL_8:
            v41 = OUTLINED_FUNCTION_27_24();
            if (lpta_loadp_setscan_r(v41, v42) || (OUTLINED_FUNCTION_5_36(), test_string_s()))
            {
LABEL_10:
              v43 = OUTLINED_FUNCTION_27_24();
              if (lpta_loadp_setscan_r(v43, v44) || (OUTLINED_FUNCTION_5_36(), test_string_s()))
              {
LABEL_12:
                v45 = OUTLINED_FUNCTION_27_24();
                if (lpta_loadp_setscan_r(v45, v46) || (OUTLINED_FUNCTION_5_36(), test_string_s()))
                {
LABEL_14:
                  v47 = OUTLINED_FUNCTION_70_12();
                  starttest(v47, v48);
                  v49 = OUTLINED_FUNCTION_27_24();
                  if (lpta_loadp_setscan_r(v49, v50))
                  {
LABEL_15:
                    v51 = OUTLINED_FUNCTION_27_24();
                    if (lpta_loadp_setscan_r(v51, v52) || (OUTLINED_FUNCTION_5_36(), test_string_s()))
                    {
LABEL_17:
                      v53 = OUTLINED_FUNCTION_70_12();
                      starttest(v53, v54);
                      v55 = OUTLINED_FUNCTION_27_24();
                      if (!lpta_loadp_setscan_r(v55, v56))
                      {
                        OUTLINED_FUNCTION_13_34();
                        v35 = v34;
                        if (!test_string_s())
                        {
LABEL_188:
                          v369 = OUTLINED_FUNCTION_86_9();
                          savescptr(v369, v370, v371);
                          v372 = OUTLINED_FUNCTION_86_9();
                          lpta_rpta_loadp(v372, v373, v374);
LABEL_182:
                          v359 = OUTLINED_FUNCTION_0_40();
                          inserted = insert_2pt_s(v359, v360, v361, v362, v363);
LABEL_183:
                          v89 = v35;
                          if (!inserted)
                          {
                            goto LABEL_280;
                          }

                          goto LABEL_91;
                        }
                      }

LABEL_19:
                      v40 = v34;
                      v57 = OUTLINED_FUNCTION_71_12();
                      if (!lpta_loadp_setscan_l(v57, v58))
                      {
                        OUTLINED_FUNCTION_17_33();
                        if (!test_string_s())
                        {
                          *(v0 + 136) = 1;
                          v59 = *(v0 + 1648);
                          v60 = OUTLINED_FUNCTION_9_35();
                          if (!test_ptr(v60))
                          {
                            v164 = OUTLINED_FUNCTION_70_12();
                            starttest(v164, v165);
                            v166 = OUTLINED_FUNCTION_27_24();
                            if (lpta_loadp_setscan_r(v166, v167) || (OUTLINED_FUNCTION_5_36(), test_string_s()))
                            {
LABEL_71:
                              v168 = OUTLINED_FUNCTION_70_12();
                              starttest(v168, v169);
                              v170 = OUTLINED_FUNCTION_27_24();
                              if (!lpta_loadp_setscan_r(v170, v171))
                              {
                                v172 = OUTLINED_FUNCTION_70_12();
                                bspush_ca_scan(v172, v173);
                                v174 = OUTLINED_FUNCTION_70_12();
                                bspush_ca_scan(v174, v175);
                                OUTLINED_FUNCTION_5_36();
                                v176 = test_string_s();
                                v89 = v34;
                                v177 = v34;
                                if (v176)
                                {
                                  goto LABEL_91;
                                }

LABEL_73:
                                v178 = v177;
                                OUTLINED_FUNCTION_5_36();
                                v179 = test_string_s();
                                v89 = v178;
                                v180 = v178;
                                if (v179)
                                {
                                  goto LABEL_91;
                                }

LABEL_246:
                                v34 = v180;
                              }
                            }

                            else
                            {
                              v189 = OUTLINED_FUNCTION_70_12();
                              bspush_ca_scan(v189, v190);
                              OUTLINED_FUNCTION_13_34();
                              v191 = test_string_s();
                              v89 = v34;
                              v192 = v34;
                              if (v191)
                              {
                                goto LABEL_91;
                              }

LABEL_78:
                              v34 = v192;
                            }

LABEL_279:
                            v501 = OUTLINED_FUNCTION_30_22();
                            lpta_rpta_loadp(v501, v502, v503);
                            v504 = OUTLINED_FUNCTION_0_40();
                            v509 = insert_2pt_s(v504, v505, v506, v507, v508);
                            v89 = v34;
                            if (!v509)
                            {
                              goto LABEL_280;
                            }

                            goto LABEL_91;
                          }
                        }
                      }

LABEL_22:
                      v34 = v40;
                      v61 = OUTLINED_FUNCTION_70_12();
                      starttest(v61, v62);
                      v63 = OUTLINED_FUNCTION_71_12();
                      if (!lpta_loadp_setscan_l(v63, v64))
                      {
LABEL_204:
                        OUTLINED_FUNCTION_139_4(65, v511, v512, v513, v514, v515, v516, v517, v518, v519, v520, v521, v522, v523, v524, v525, v526, v527, v528, v529, v530, v531, v532, v533, v534, v535, v536, v537, *(&v537 + 1), *v538, *&v538[8], *&v538[16], v539, v540, v541, v542, v543[0]);
                        OUTLINED_FUNCTION_17_33();
                        if (test_string_s())
                        {
                          goto LABEL_266;
                        }

                        *(v0 + 136) = 1;
                        v401 = *(v0 + 1648);
                        v402 = OUTLINED_FUNCTION_9_35();
                        if (test_ptr(v402))
                        {
                          goto LABEL_266;
                        }

                        v403 = OUTLINED_FUNCTION_65_12();
                        if (lpta_loadp_setscan_r(v403, v404))
                        {
                          goto LABEL_266;
                        }

                        if (advance_tok(v0))
                        {
                          goto LABEL_266;
                        }

                        OUTLINED_FUNCTION_5_36();
                        if (test_string_s())
                        {
                          goto LABEL_266;
                        }

                        v405 = OUTLINED_FUNCTION_12_35();
                        if (testFldeq(v405, v406, v407, 2))
                        {
                          goto LABEL_266;
                        }

                        if (advance_tok(v0))
                        {
                          goto LABEL_266;
                        }

                        v408 = OUTLINED_FUNCTION_12_35();
                        if (testFldeq(v408, v409, v410, 2) || advance_tok(v0))
                        {
                          goto LABEL_266;
                        }

                        goto LABEL_268;
                      }

LABEL_23:
                      v65 = OUTLINED_FUNCTION_70_12();
                      starttest(v65, v66);
                      v67 = OUTLINED_FUNCTION_27_24();
                      if (lpta_loadp_setscan_r(v67, v68))
                      {
LABEL_24:
                        v69 = OUTLINED_FUNCTION_27_24();
                        if (!lpta_loadp_setscan_r(v69, v70))
                        {
                          OUTLINED_FUNCTION_5_36();
                          v40 = v34;
                          if (!test_string_s())
                          {
LABEL_225:
                            v416 = OUTLINED_FUNCTION_86_9();
                            savescptr(v416, v417, v418);
                            v419 = OUTLINED_FUNCTION_70_12();
                            starttest(v419, v420);
                            v421 = OUTLINED_FUNCTION_74_12();
                            lpta_loadpn(v421, v422);
                            OUTLINED_FUNCTION_149_4();
                            if (!compare_ptas(v0) && !testeq(v0))
                            {
                              v423 = OUTLINED_FUNCTION_30_22();
                              lpta_rpta_loadp(v423, v424, v425);
                              v426 = OUTLINED_FUNCTION_0_40();
                              if (!insert_2pt_s(v426, v427, v428, v429, v430))
                              {
                                goto LABEL_280;
                              }
                            }

                            goto LABEL_268;
                          }
                        }

LABEL_26:
                        v71 = OUTLINED_FUNCTION_70_12();
                        starttest(v71, v72);
                        v73 = OUTLINED_FUNCTION_27_24();
                        if (lpta_loadp_setscan_r(v73, v74))
                        {
LABEL_27:
                          v75 = OUTLINED_FUNCTION_70_12();
                          starttest(v75, v76);
                          v77 = OUTLINED_FUNCTION_27_24();
                          if (lpta_loadp_setscan_r(v77, v78))
                          {
LABEL_28:
                            v79 = OUTLINED_FUNCTION_70_12();
                            starttest(v79, v80);
                            v81 = OUTLINED_FUNCTION_27_24();
                            if (!lpta_loadp_setscan_r(v81, v82))
                            {
                              v83 = OUTLINED_FUNCTION_70_12();
                              bspush_ca_scan(v83, v84);
                              v85 = OUTLINED_FUNCTION_12_35();
                              v88 = testFldeq(v85, v86, v87, 2);
                              v89 = v34;
                              v90 = v34;
                              if (v88)
                              {
                                goto LABEL_91;
                              }

LABEL_30:
                              v40 = v90;
                              v91 = advance_tok(v0);
                              v89 = v40;
                              if (!v91)
                              {
LABEL_251:
                                v449 = OUTLINED_FUNCTION_86_9();
                                savescptr(v449, v450, v451);
                                v452 = OUTLINED_FUNCTION_70_12();
                                starttest(v452, v453);
                                v454 = OUTLINED_FUNCTION_70_12();
                                bspush_ca(v454);
                                v455 = OUTLINED_FUNCTION_74_12();
                                lpta_loadpn(v455, v456);
                                v457 = OUTLINED_FUNCTION_105_5();
                                rpta_loadpn(v457, v458);
                                if (!compare_ptas(v0))
                                {
                                  v459 = testeq(v0);
                                  v89 = v40;
                                  v213 = v40;
                                  if (v459)
                                  {
                                    goto LABEL_91;
                                  }

LABEL_253:
                                  v34 = v213;
                                  goto LABEL_279;
                                }

LABEL_266:
                                v89 = v40;
                              }

LABEL_91:
                              v209 = *(v0 + 104);
                              if (v209)
                              {
                                v210 = OUTLINED_FUNCTION_92_9(v209);
                                v35 = v211;
                              }

                              else
                              {
                                v210 = vback(v0, v89);
                                v35 = 0;
                              }

                              v120 = v35;
                              v192 = v35;
                              v177 = v35;
                              v180 = v35;
                              v144 = v35;
                              v40 = v35;
                              v212 = v35;
                              v158 = v35;
                              v90 = v35;
                              v213 = v35;
                              switch(v210)
                              {
                                case 1:
                                  v20 = v35;
                                  continue;
                                case 2:
                                  OUTLINED_FUNCTION_5_36();
                                  v214 = test_string_s();
                                  v120 = v35;
                                  v89 = v35;
                                  if (!v214)
                                  {
                                    goto LABEL_46;
                                  }

                                  goto LABEL_91;
                                case 3:
                                  goto LABEL_46;
                                case 4:
                                case 44:
                                case 93:
                                case 99:
                                case 104:
                                case 121:
                                case 123:
                                  goto LABEL_181;
                                case 5:
                                  bspop_boa(v0);
                                  v349 = OUTLINED_FUNCTION_30_22();
                                  lpta_rpta_loadp(v349, v350, v351);
                                  goto LABEL_182;
                                case 6:
                                case 7:
                                case 25:
                                case 28:
                                case 31:
                                case 35:
                                case 41:
                                case 45:
                                case 54:
                                case 70:
                                case 74:
                                case 92:
                                case 96:
                                case 110:
                                case 120:
                                  goto LABEL_280;
                                case 8:
                                  goto LABEL_7;
                                case 9:
                                  v34 = v35;
                                  goto LABEL_84;
                                case 10:
                                  bspop_boa(v0);
                                  v271 = advance_tok(v0);
                                  v89 = v35;
                                  if (v271)
                                  {
                                    goto LABEL_91;
                                  }

                                  v272 = OUTLINED_FUNCTION_3_38();
                                  v276 = testFldeq(v272, v273, v274, v275);
                                  v89 = v35;
                                  if (v276)
                                  {
                                    goto LABEL_91;
                                  }

                                  goto LABEL_133;
                                case 11:
                                  v287 = OUTLINED_FUNCTION_59_13();
                                  bspush_ca_scan(v287, v288);
                                  v262 = OUTLINED_FUNCTION_31_21();
                                  v265 = 21;
                                  goto LABEL_141;
                                case 12:
                                case 19:
                                  goto LABEL_90;
                                case 13:
                                  v262 = OUTLINED_FUNCTION_31_21();
                                  v265 = 29;
                                  goto LABEL_141;
                                case 14:
                                  v34 = v35;
                                  goto LABEL_8;
                                case 15:
                                  v40 = v35;
                                  goto LABEL_217;
                                case 16:
                                  v34 = v35;
                                  goto LABEL_238;
                                case 17:
                                  bspop_boa(v0);
LABEL_133:
                                  v281 = advance_tok(v0);
                                  v89 = v35;
                                  if (!v281)
                                  {
                                    goto LABEL_181;
                                  }

                                  goto LABEL_91;
                                case 18:
                                  v260 = OUTLINED_FUNCTION_70_12();
                                  bspush_ca_scan(v260, v261);
                                  v262 = OUTLINED_FUNCTION_31_21();
                                  v265 = 23;
                                  goto LABEL_141;
                                case 20:
                                  v266 = OUTLINED_FUNCTION_70_12();
                                  bspush_ca_scan(v266, v267);
                                  v262 = OUTLINED_FUNCTION_31_21();
                                  v265 = 22;
                                  goto LABEL_141;
                                case 21:
                                  v277 = OUTLINED_FUNCTION_58_13();
                                  bspush_ca_scan(v277, v278);
                                  v262 = OUTLINED_FUNCTION_31_21();
                                  v265 = 25;
                                  goto LABEL_141;
                                case 22:
                                  v262 = OUTLINED_FUNCTION_31_21();
                                  v265 = 26;
LABEL_141:
                                  v289 = testFldeq(v262, v263, v264, v265);
                                  v89 = v35;
                                  if (!v289)
                                  {
                                    goto LABEL_90;
                                  }

                                  goto LABEL_91;
                                case 23:
                                  v34 = v35;
                                  goto LABEL_10;
                                case 24:
                                  goto LABEL_189;
                                case 26:
                                  v34 = v35;
                                  goto LABEL_12;
                                case 27:
                                  goto LABEL_190;
                                case 29:
                                  v34 = v35;
                                  goto LABEL_14;
                                case 30:
                                  goto LABEL_191;
                                case 32:
                                  v34 = v35;
                                  goto LABEL_15;
                                case 33:
                                  OUTLINED_FUNCTION_5_36();
                                  v279 = test_string_s();
                                  v89 = v35;
                                  if (!v279)
                                  {
                                    goto LABEL_33;
                                  }

                                  goto LABEL_91;
                                case 34:
                                  goto LABEL_33;
                                case 36:
                                  v34 = v35;
                                  goto LABEL_17;
                                case 37:
                                  v34 = v35;
                                  goto LABEL_279;
                                case 38:
                                  goto LABEL_43;
                                case 39:
                                  bspop_boa(v0);
                                  v231 = advance_tok(v0);
                                  v89 = v35;
                                  if (v231)
                                  {
                                    goto LABEL_91;
                                  }

                                  is_nasal_vow();
                                  if (v232)
                                  {
                                    goto LABEL_110;
                                  }

                                  v233 = OUTLINED_FUNCTION_30_22();
                                  lpta_rpta_loadp(v233, v234, v235);
                                  v236 = OUTLINED_FUNCTION_0_40();
                                  if (insert_2pt_s(v236, v237, v238, v239, v240))
                                  {
                                    goto LABEL_110;
                                  }

                                  goto LABEL_280;
                                case 40:
LABEL_110:
                                  v241 = OUTLINED_FUNCTION_70_12();
                                  starttest(v241, v242);
                                  OUTLINED_FUNCTION_22_26();
                                  if (v137)
                                  {
                                    v243 = OUTLINED_FUNCTION_27_24();
                                    if (!lpta_loadp_setscan_r(v243, v244))
                                    {
                                      OUTLINED_FUNCTION_5_36();
                                      if (!test_string_s())
                                      {
                                        goto LABEL_114;
                                      }
                                    }
                                  }

                                  goto LABEL_175;
                                case 42:
LABEL_175:
                                  v338 = OUTLINED_FUNCTION_70_12();
                                  starttest(v338, v339);
                                  OUTLINED_FUNCTION_22_26();
                                  if (v137)
                                  {
                                    OUTLINED_FUNCTION_87_9();
                                    v340 = OUTLINED_FUNCTION_69_12();
                                    if (!setd_lookup(v340, v341, 185))
                                    {
                                      goto LABEL_178;
                                    }
                                  }

                                  goto LABEL_181;
                                case 43:
LABEL_114:
                                  v245 = OUTLINED_FUNCTION_86_9();
                                  savescptr(v245, v246, v247);
                                  v248 = OUTLINED_FUNCTION_86_9();
                                  lpta_rpta_loadp(v248, v249, v250);
                                  v251 = OUTLINED_FUNCTION_69_12();
                                  v253 = setd_lookup(v251, v252, 177);
                                  v89 = v35;
                                  if (!v253)
                                  {
                                    v254 = OUTLINED_FUNCTION_114_4();
                                    lpta_rpta_loadp(v254, v255, v256);
                                    v257 = OUTLINED_FUNCTION_69_12();
                                    v259 = setd_lookup(v257, v258, 178);
                                    v89 = v35;
                                    if (!v259)
                                    {
                                      goto LABEL_178;
                                    }
                                  }

                                  goto LABEL_91;
                                case 46:
                                  v34 = v35;
                                  goto LABEL_19;
                                case 47:
                                  goto LABEL_188;
                                case 48:
                                  v40 = v35;
                                  goto LABEL_22;
                                case 49:
                                  v34 = v35;
                                  goto LABEL_71;
                                case 50:
                                  OUTLINED_FUNCTION_13_34();
                                  v294 = test_string_s();
                                  v89 = v35;
                                  if (v294)
                                  {
                                    goto LABEL_91;
                                  }

                                  goto LABEL_147;
                                case 51:
                                  goto LABEL_78;
                                case 52:
LABEL_147:
                                  v295 = OUTLINED_FUNCTION_70_12();
                                  bspush_ca_scan(v295, v296);
                                  OUTLINED_FUNCTION_5_36();
                                  goto LABEL_148;
                                case 53:
                                  OUTLINED_FUNCTION_13_34();
LABEL_148:
                                  v297 = test_string_s();
                                  v192 = v35;
                                  v89 = v35;
                                  if (!v297)
                                  {
                                    goto LABEL_78;
                                  }

                                  goto LABEL_91;
                                case 55:
                                case 112:
                                  v34 = v35;
                                  goto LABEL_279;
                                case 56:
                                  OUTLINED_FUNCTION_5_36();
                                  v290 = test_string_s();
                                  v89 = v35;
                                  if (v290)
                                  {
                                    goto LABEL_91;
                                  }

                                  goto LABEL_144;
                                case 57:
                                  OUTLINED_FUNCTION_5_36();
                                  v300 = test_string_s();
                                  v177 = v35;
                                  v89 = v35;
                                  if (!v300)
                                  {
                                    goto LABEL_73;
                                  }

                                  goto LABEL_91;
                                case 58:
                                  goto LABEL_73;
                                case 59:
                                  goto LABEL_246;
                                case 60:
                                case 61:
LABEL_144:
                                  v291 = OUTLINED_FUNCTION_70_12();
                                  bspush_ca_scan(v291, v292);
                                  OUTLINED_FUNCTION_5_36();
                                  v293 = test_string_s();
                                  v180 = v35;
                                  v89 = v35;
                                  if (!v293)
                                  {
                                    goto LABEL_246;
                                  }

                                  goto LABEL_91;
                                case 62:
                                  OUTLINED_FUNCTION_5_36();
                                  v299 = test_string_s();
                                  v89 = v35;
                                  if (!v299)
                                  {
                                    OUTLINED_FUNCTION_70_12();
                                    bspush_ca_scan_boa();
                                    OUTLINED_FUNCTION_29_23();
                                    if (test_string_s())
                                    {
                                      v89 = v35;
                                    }

                                    else
                                    {
                                      v89 = 1;
                                    }
                                  }

                                  goto LABEL_91;
                                case 63:
                                  bspop_boa(v0);
                                  v180 = v35;
                                  goto LABEL_246;
                                case 64:
                                  v34 = v35;
                                  goto LABEL_23;
                                case 65:
                                  v40 = v35;
                                  goto LABEL_204;
                                case 66:
                                  v34 = v35;
                                  goto LABEL_24;
                                case 67:
                                  v34 = v35;
                                  goto LABEL_26;
                                case 68:
                                  v40 = v35;
                                  goto LABEL_225;
                                case 69:
                                  v40 = v35;
                                  goto LABEL_268;
                                case 71:
                                  v34 = v35;
                                  goto LABEL_27;
                                case 72:
                                  goto LABEL_59;
                                case 73:
                                  v194 = v35;
                                  goto LABEL_232;
                                case 75:
                                  goto LABEL_62;
                                case 76:
                                  v144 = v35;
                                  goto LABEL_195;
                                case 77:
                                case 79:
                                case 80:
                                case 81:
                                  v225 = OUTLINED_FUNCTION_70_12();
                                  bspush_ca_scan(v225, v226);
                                  goto LABEL_102;
                                case 78:
                                  goto LABEL_64;
                                case 82:
LABEL_102:
                                  OUTLINED_FUNCTION_13_34();
                                  v227 = test_string_s();
                                  v144 = v35;
                                  v89 = v35;
                                  if (!v227)
                                  {
                                    goto LABEL_64;
                                  }

                                  goto LABEL_91;
                                case 83:
                                  v40 = v35;
                                  goto LABEL_265;
                                case 84:
                                  v352 = OUTLINED_FUNCTION_70_12();
                                  starttest(v352, v353);
                                  v354 = OUTLINED_FUNCTION_71_12();
                                  if (lpta_loadp_setscan_l(v354, v355))
                                  {
                                    goto LABEL_181;
                                  }

                                  goto LABEL_186;
                                case 85:
                                  v268 = OUTLINED_FUNCTION_53_14();
                                  v270 = lpta_loadp_setscan_r(v268, v269);
                                  v89 = v35;
                                  if (v270)
                                  {
                                    goto LABEL_91;
                                  }

                                  goto LABEL_135;
                                case 86:
                                  goto LABEL_268;
                                case 87:
                                  v228 = OUTLINED_FUNCTION_70_12();
                                  bspush_ca_scan(v228, v229);
                                  OUTLINED_FUNCTION_13_34();
                                  goto LABEL_138;
                                case 88:
                                  v284 = OUTLINED_FUNCTION_70_12();
                                  bspush_ca_scan(v284, v285);
                                  OUTLINED_FUNCTION_12_35();
                                  goto LABEL_138;
                                case 89:
                                case 90:
LABEL_135:
                                  v282 = OUTLINED_FUNCTION_70_12();
                                  bspush_ca_scan(v282, v283);
                                  goto LABEL_136;
                                case 91:
LABEL_136:
                                  OUTLINED_FUNCTION_29_23();
LABEL_138:
                                  v286 = test_string_s();
                                  v40 = v35;
                                  v89 = v35;
                                  if (!v286)
                                  {
                                    goto LABEL_268;
                                  }

                                  goto LABEL_91;
                                case 94:
                                  OUTLINED_FUNCTION_96_7();
                                  v308 = *(v0 + 1648);
                                  v309 = OUTLINED_FUNCTION_9_35();
                                  v310 = test_ptr(v309);
                                  v89 = v35;
                                  if (v310)
                                  {
                                    goto LABEL_91;
                                  }

                                  OUTLINED_FUNCTION_22_26();
                                  if (!v137)
                                  {
                                    goto LABEL_280;
                                  }

                                  v311 = OUTLINED_FUNCTION_70_12();
                                  starttest(v311, v312);
                                  v313 = OUTLINED_FUNCTION_53_14();
                                  if (lpta_loadp_setscan_l(v313, v314))
                                  {
                                    goto LABEL_171;
                                  }

                                  v315 = OUTLINED_FUNCTION_70_12();
                                  bspush_ca_scan(v315, v316);
                                  v317 = OUTLINED_FUNCTION_3_38();
                                  v321 = testFldeq(v317, v318, v319, v320);
                                  v89 = v35;
                                  if (v321)
                                  {
                                    goto LABEL_91;
                                  }

                                  v322 = advance_tok(v0);
                                  v89 = v35;
                                  if (v322)
                                  {
                                    goto LABEL_91;
                                  }

LABEL_170:
                                  OUTLINED_FUNCTION_151_3(98, v511, v512, v513, v514, v515, v516, v517, v518, v519, v520, v521, v522, v523, v524, v525, v526, v527, v528, v529, v530, v531, v532, v533, v534, v535);
LABEL_171:
                                  v323 = OUTLINED_FUNCTION_70_12();
                                  starttest(v323, v324);
                                  v325 = OUTLINED_FUNCTION_99_7();
                                  lpta_rpta_loadp(v325, v326, v327);
                                  v328 = OUTLINED_FUNCTION_69_12();
                                  if (setd_lookup(v328, v329, 187))
                                  {
                                    goto LABEL_181;
                                  }

                                  v330 = OUTLINED_FUNCTION_30_22();
                                  lpta_rpta_loadp(v330, v331, v332);
                                  v333 = OUTLINED_FUNCTION_0_40();
                                  if (insert_2pt_s(v333, v334, v335, v336, v337))
                                  {
                                    goto LABEL_181;
                                  }

                                  goto LABEL_280;
                                case 95:
                                  do
                                  {
LABEL_186:
                                    v364 = OUTLINED_FUNCTION_70_12();
                                    bspush_ca_scan(v364, v365);
                                    v366 = OUTLINED_FUNCTION_12_35();
                                  }

                                  while (!testFldeq(v366, v367, v368, 2) && !advance_tok(v0));
                                  goto LABEL_187;
                                case 97:
                                  goto LABEL_171;
                                case 98:
                                  goto LABEL_170;
                                case 100:
                                  v388 = v35;
                                  goto LABEL_257;
                                case 101:
                                  OUTLINED_FUNCTION_5_36();
                                  v280 = test_string_s();
                                  v212 = v35;
                                  v89 = v35;
                                  if (!v280)
                                  {
                                    goto LABEL_278;
                                  }

                                  goto LABEL_91;
                                case 102:
                                  goto LABEL_278;
                                case 103:
                                  v388 = v35;
                                  goto LABEL_271;
                                case 105:
                                  v34 = v35;
                                  goto LABEL_272;
                                case 106:
                                  v34 = v35;
                                  goto LABEL_28;
                                case 107:
                                  OUTLINED_FUNCTION_5_36();
                                  v301 = test_string_s();
                                  v158 = v35;
                                  v89 = v35;
                                  if (!v301)
                                  {
                                    goto LABEL_67;
                                  }

                                  goto LABEL_91;
                                case 108:
                                  goto LABEL_67;
                                case 109:
                                  v34 = v35;
                                  goto LABEL_199;
                                case 111:
                                  v34 = v35;
                                  goto LABEL_279;
                                case 113:
                                  v215 = OUTLINED_FUNCTION_12_35();
                                  v218 = testFldeq(v215, v216, v217, 3);
                                  v90 = v35;
                                  v89 = v35;
                                  if (!v218)
                                  {
                                    goto LABEL_30;
                                  }

                                  goto LABEL_91;
                                case 114:
                                  goto LABEL_30;
                                case 115:
                                  v40 = v35;
                                  goto LABEL_251;
                                case 116:
                                  v219 = OUTLINED_FUNCTION_70_12();
                                  starttest(v219, v220);
                                  v221 = OUTLINED_FUNCTION_27_24();
                                  if (lpta_loadp_setscan_r(v221, v222))
                                  {
                                    goto LABEL_181;
                                  }

                                  v223 = OUTLINED_FUNCTION_70_12();
                                  bspush_ca_scan(v223, v224);
                                  goto LABEL_105;
                                case 117:
                                  v302 = OUTLINED_FUNCTION_53_14();
                                  v304 = lpta_loadp_setscan_r(v302, v303);
                                  v89 = v35;
                                  if (v304)
                                  {
                                    goto LABEL_91;
                                  }

                                  OUTLINED_FUNCTION_5_36();
                                  v305 = test_string_s();
                                  v89 = v35;
                                  if (v305)
                                  {
                                    goto LABEL_91;
                                  }

                                  v306 = OUTLINED_FUNCTION_70_12();
                                  bspush_ca_scan(v306, v307);
                                  OUTLINED_FUNCTION_29_23();
                                  goto LABEL_151;
                                case 118:
                                  goto LABEL_253;
                                case 119:
                                  OUTLINED_FUNCTION_69_12();
LABEL_151:
                                  v298 = test_string_s();
                                  v213 = v35;
                                  v89 = v35;
                                  if (!v298)
                                  {
                                    goto LABEL_253;
                                  }

                                  goto LABEL_91;
                                case 122:
LABEL_105:
                                  OUTLINED_FUNCTION_5_36();
                                  v230 = test_string_s();
                                  v89 = v35;
                                  if (!v230)
                                  {
                                    goto LABEL_181;
                                  }

                                  goto LABEL_91;
                                default:
                                  goto LABEL_3;
                              }
                            }
                          }

                          else
                          {
                            v155 = OUTLINED_FUNCTION_70_12();
                            bspush_ca_scan(v155, v156);
                            OUTLINED_FUNCTION_5_36();
                            v157 = test_string_s();
                            v89 = v34;
                            v158 = v34;
                            if (v157)
                            {
                              goto LABEL_91;
                            }

LABEL_67:
                            v159 = v158;
                            v160 = OUTLINED_FUNCTION_86_9();
                            savescptr(v160, v161, v162);
                            OUTLINED_FUNCTION_74_12();
                            is_nasal_vow();
                            if (v163)
                            {
                              v34 = v159;
                            }

                            else
                            {
                              v181 = OUTLINED_FUNCTION_30_22();
                              lpta_rpta_loadp(v181, v182, v183);
                              v184 = OUTLINED_FUNCTION_0_40();
                              v34 = v159;
                              if (!insert_2pt_s(v184, v185, v186, v187, v188))
                              {
                                goto LABEL_280;
                              }
                            }

LABEL_199:
                            v389 = OUTLINED_FUNCTION_70_12();
                            starttest(v389, v390);
                            v391 = OUTLINED_FUNCTION_27_24();
                            if (!lpta_loadp_setscan_r(v391, v392))
                            {
                              OUTLINED_FUNCTION_13_34();
                              if (!test_string_s())
                              {
                                v393 = OUTLINED_FUNCTION_30_22();
                                lpta_rpta_loadp(v393, v394, v395);
                                v396 = OUTLINED_FUNCTION_0_40();
                                if (!insert_2pt_s(v396, v397, v398, v399, v400))
                                {
                                  goto LABEL_280;
                                }
                              }
                            }
                          }

                          goto LABEL_279;
                        }

                        v129 = OUTLINED_FUNCTION_12_35();
                        if (!testFldeq(v129, v130, v131, 2) && !advance_tok(v0))
                        {
                          v132 = OUTLINED_FUNCTION_12_35();
                          if (!testFldeq(v132, v133, v134, 2) && !advance_tok(v0))
                          {
                            v135 = OUTLINED_FUNCTION_70_12();
                            starttest(v135, v136);
                            OUTLINED_FUNCTION_22_26();
                            if (v137 && (v138 = OUTLINED_FUNCTION_27_24(), !lpta_loadp_setscan_r(v138, v139)))
                            {
                              OUTLINED_FUNCTION_13_34();
                              v193 = test_string_s();
                              v194 = v34;
                              v35 = v34;
                              if (!v193)
                              {
LABEL_232:
                                v35 = v194;
                                v431 = OUTLINED_FUNCTION_86_9();
                                savescptr(v431, v432, v433);
                                v434 = OUTLINED_FUNCTION_86_9();
                                lpta_rpta_loadp(v434, v435, v436);
                                v437 = OUTLINED_FUNCTION_69_12();
                                if (setd_lookup(v437, v438, 177) || (v439 = OUTLINED_FUNCTION_114_4(), lpta_rpta_loadp(v439, v440, v441), v442 = OUTLINED_FUNCTION_69_12(), setd_lookup(v442, v443, 178)))
                                {
LABEL_187:
                                  v89 = v35;
                                  goto LABEL_91;
                                }

                                goto LABEL_178;
                              }
                            }

                            else
                            {
                              v35 = v34;
                            }

LABEL_59:
                            v140 = OUTLINED_FUNCTION_70_12();
                            starttest(v140, v141);
                            OUTLINED_FUNCTION_22_26();
                            if (!v137 || (OUTLINED_FUNCTION_87_9(), v142 = OUTLINED_FUNCTION_69_12(), setd_lookup(v142, v143, 186)))
                            {
LABEL_62:
                              v144 = v35;
                              v145 = OUTLINED_FUNCTION_70_12();
                              starttest(v145, v146);
                              v147 = OUTLINED_FUNCTION_27_24();
                              if (!lpta_loadp_setscan_r(v147, v148))
                              {
                                v149 = OUTLINED_FUNCTION_70_12();
                                bspush_ca_scan(v149, v150);
                                OUTLINED_FUNCTION_13_34();
                                v151 = test_string_s();
                                v89 = v35;
                                if (v151)
                                {
                                  goto LABEL_91;
                                }

LABEL_64:
                                v152 = OUTLINED_FUNCTION_70_12();
                                bspush_ca_scan(v152, v153);
                                v154 = advance_tok(v0);
                                v89 = v144;
                                v40 = v144;
                                if (v154)
                                {
                                  goto LABEL_91;
                                }

LABEL_265:
                                v472 = OUTLINED_FUNCTION_86_9();
                                savescptr(v472, v473, v474);
                                v475 = OUTLINED_FUNCTION_70_12();
                                starttest(v475, v476);
                                v477 = OUTLINED_FUNCTION_70_12();
                                bspush_ca(v477);
                                v478 = OUTLINED_FUNCTION_74_12();
                                lpta_loadpn(v478, v479);
                                v480 = OUTLINED_FUNCTION_105_5();
                                rpta_loadpn(v480, v481);
                                if (compare_ptas(v0))
                                {
                                  goto LABEL_266;
                                }

                                v482 = testeq(v0);
                                v89 = v40;
                                if (v482)
                                {
                                  goto LABEL_91;
                                }

LABEL_268:
                                v483 = OUTLINED_FUNCTION_30_22();
                                lpta_rpta_loadp(v483, v484, v485);
                                v486 = OUTLINED_FUNCTION_0_40();
                                v491 = insert_2pt_s(v486, v487, v488, v489, v490);
                                v89 = v40;
                                if (!v491)
                                {
                                  goto LABEL_280;
                                }

                                goto LABEL_91;
                              }

LABEL_195:
                              v384 = OUTLINED_FUNCTION_70_12();
                              starttest(v384, v385);
                              v386 = OUTLINED_FUNCTION_27_24();
                              if (!lpta_loadp_setscan_r(v386, v387) && !advance_tok(v0))
                              {
                                v498 = OUTLINED_FUNCTION_70_12();
                                bspush_ca_scan(v498, v499);
                                OUTLINED_FUNCTION_5_36();
                                v500 = test_string_s();
                                v89 = v144;
                                v212 = v144;
                                if (v500)
                                {
                                  goto LABEL_91;
                                }

LABEL_278:
                                v34 = v212;
                                goto LABEL_279;
                              }

                              v388 = v144;
LABEL_257:
                              v460 = OUTLINED_FUNCTION_71_12();
                              if (!lpta_loadp_setscan_l(v460, v461))
                              {
                                OUTLINED_FUNCTION_21_27();
                                if (!test_string_s())
                                {
                                  *(v0 + 136) = v144;
                                  v462 = *(v0 + 1648);
                                  v463 = OUTLINED_FUNCTION_9_35();
                                  if (!test_ptr(v463))
                                  {
                                    v464 = OUTLINED_FUNCTION_30_22();
                                    lpta_rpta_loadp(v464, v465, v466);
                                    v467 = OUTLINED_FUNCTION_0_40();
                                    if (!insert_2pt_s(v467, v468, v469, v470, v471))
                                    {
                                      goto LABEL_280;
                                    }
                                  }
                                }
                              }

LABEL_271:
                              v492 = OUTLINED_FUNCTION_70_12();
                              starttest(v492, v493);
                              v494 = OUTLINED_FUNCTION_71_12();
                              v34 = v388;
                              v35 = v388;
                              if (!lpta_loadp_setscan_l(v494, v495))
                              {
LABEL_272:
                                OUTLINED_FUNCTION_139_4(105, v511, v512, v513, v514, v515, v516, v517, v518, v519, v520, v521, v522, v523, v524, v525, v526, v527, v528, v529, v530, v531, v532, v533, v534, v535, v536, v537, *(&v537 + 1), *v538, *&v538[8], *&v538[16], v539, v540, v541, v542, v543[0]);
                                OUTLINED_FUNCTION_5_36();
                                if (!test_string_s())
                                {
                                  v496 = OUTLINED_FUNCTION_65_12();
                                  if (!lpta_loadp_setscan_r(v496, v497) && !advance_tok(v0))
                                  {
                                    OUTLINED_FUNCTION_13_34();
                                    if (!test_string_s())
                                    {
                                      goto LABEL_279;
                                    }
                                  }
                                }

                                goto LABEL_81;
                              }

LABEL_181:
                              v356 = OUTLINED_FUNCTION_30_22();
                              lpta_rpta_loadp(v356, v357, v358);
                              goto LABEL_182;
                            }

LABEL_178:
                            v342 = OUTLINED_FUNCTION_30_22();
                            lpta_rpta_loadp(v342, v343, v344);
                            OUTLINED_FUNCTION_74_12();
                            settvar_s();
                            v345 = OUTLINED_FUNCTION_98_7();
                            npush_s(v345);
                            WORD1(v537) = 9;
                            v346 = OUTLINED_FUNCTION_74_12();
                            npop(v346, v347);
                            OUTLINED_FUNCTION_72_12();
                            insert_2ptv();
                            goto LABEL_183;
                          }
                        }
                      }

                      else
                      {
                        v98 = OUTLINED_FUNCTION_12_35();
                        if (!testFldeq(v98, v99, v100, 2) && !advance_tok(v0))
                        {
                          v101 = OUTLINED_FUNCTION_12_35();
                          if (!testFldeq(v101, v102, v103, 2) && !advance_tok(v0))
                          {
                            v104 = OUTLINED_FUNCTION_12_35();
                            if (!testFldeq(v104, v105, v106, 2) && !advance_tok(v0))
                            {
                              goto LABEL_279;
                            }
                          }
                        }
                      }

LABEL_81:
                      v89 = v34;
                      goto LABEL_91;
                    }

                    v107 = OUTLINED_FUNCTION_70_12();
                    starttest(v107, v108);
                    v109 = OUTLINED_FUNCTION_27_24();
                    if (lpta_loadp_setscan_r(v109, v110))
                    {
                      goto LABEL_279;
                    }

                    OUTLINED_FUNCTION_5_36();
                    v35 = v34;
                    if (test_string_s())
                    {
                      goto LABEL_279;
                    }

LABEL_43:
                    v34 = v35;
                    savescptr(v0, 38, &v544);
                    v111 = OUTLINED_FUNCTION_12_35();
                    if (testFldeq(v111, v112, v113, 2))
                    {
                      goto LABEL_81;
                    }

                    OUTLINED_FUNCTION_70_12();
                    bspush_ca_scan_boa();
                    v114 = OUTLINED_FUNCTION_31_21();
                    root_vow = testFldeq(v114, v115, v116, 19);
LABEL_48:
                    if (root_vow)
                    {
                      v89 = v34;
                    }

                    else
                    {
                      v89 = 1;
                    }

                    goto LABEL_91;
                  }

                  v92 = OUTLINED_FUNCTION_70_12();
                  bspush_ca_scan(v92, v93);
                  OUTLINED_FUNCTION_5_36();
                  v94 = test_string_s();
                  v89 = v34;
                  if (v94)
                  {
                    goto LABEL_91;
                  }

LABEL_33:
                  v95 = OUTLINED_FUNCTION_86_9();
                  savescptr(v95, v96, v97);
                  OUTLINED_FUNCTION_86_9();
                  eu_rules();
                }

                else
                {
LABEL_191:
                  v381 = OUTLINED_FUNCTION_86_9();
                  savescptr(v381, v382, v383);
                  OUTLINED_FUNCTION_30_22();
                  em_rules();
                }
              }

              else
              {
LABEL_190:
                v378 = OUTLINED_FUNCTION_86_9();
                savescptr(v378, v379, v380);
                OUTLINED_FUNCTION_30_22();
                er_rules();
              }
            }

            else
            {
LABEL_189:
              v375 = OUTLINED_FUNCTION_86_9();
              savescptr(v375, v376, v377);
              OUTLINED_FUNCTION_30_22();
              en_rules();
            }

LABEL_280:
            OUTLINED_FUNCTION_100_6(v545);
            goto LABEL_4;
          }

LABEL_217:
          OUTLINED_FUNCTION_139_4(15, v511, v512, v513, v514, v515, v516, v517, v518, v519, v520, v521, v522, v523, v524, v525, v526, v527, v528, v529, v530, v531, v532, v533, v534, v535, v536, v537, *(&v537 + 1), *v538, *&v538[8], *&v538[16], v539, v540, v541, v542, v543[0]);
          if (advance_tok(v0))
          {
            goto LABEL_266;
          }

          v34 = 1;
          OUTLINED_FUNCTION_17_33();
          if (test_string_s())
          {
            goto LABEL_266;
          }

          *(v0 + 136) = 1;
          v411 = *(v0 + 1648);
          v412 = OUTLINED_FUNCTION_9_35();
          if (test_ptr(v412))
          {
            goto LABEL_266;
          }

          v413 = OUTLINED_FUNCTION_65_12();
          if (lpta_loadp_setscan_r(v413, v414))
          {
            goto LABEL_266;
          }

          OUTLINED_FUNCTION_5_36();
          test_string_s();
          OUTLINED_FUNCTION_133_4();
          if (v415)
          {
            goto LABEL_91;
          }

LABEL_238:
          savescptr(v0, 16, &v544);
          v444 = OUTLINED_FUNCTION_12_35();
          if (testFldeq(v444, v445, v446, 2))
          {
            goto LABEL_81;
          }

          OUTLINED_FUNCTION_48_15();
          bspush_ca_scan_boa();
          v447 = OUTLINED_FUNCTION_60_13();
          bspush_ca_scan(v447, v448);
          v204 = OUTLINED_FUNCTION_31_21();
          v207 = 12;
        }

        else
        {
LABEL_84:
          OUTLINED_FUNCTION_139_4(9, v511, v512, v513, v514, v515, v516, v517, v518, v519, v520, v521, v522, v523, v524, v525, v526, v527, v528, v529, v530, v531, v532, v533, v534, v535, v536, v537, *(&v537 + 1), *v538, *&v538[8], *&v538[16], v539, v540, v541, v542, v543[0]);
          if (advance_tok(v0))
          {
            goto LABEL_81;
          }

          OUTLINED_FUNCTION_96_7();
          v195 = *(v0 + 1648);
          v196 = OUTLINED_FUNCTION_9_35();
          if (test_ptr(v196))
          {
            goto LABEL_81;
          }

          v197 = OUTLINED_FUNCTION_65_12();
          if (lpta_loadp_setscan_r(v197, v198))
          {
            goto LABEL_81;
          }

          v199 = OUTLINED_FUNCTION_12_35();
          if (testFldeq(v199, v200, v201, 2))
          {
            goto LABEL_81;
          }

          OUTLINED_FUNCTION_49_15();
          bspush_ca_scan_boa();
          v202 = OUTLINED_FUNCTION_42_15();
          bspush_ca_scan(v202, v203);
          v204 = OUTLINED_FUNCTION_31_21();
          v207 = 20;
        }

        break;
      }

      v208 = testFldeq(v204, v205, v206, v207);
      v89 = v34;
      if (!v208)
      {
LABEL_90:
        v89 = 1;
      }

      goto LABEL_91;
    }

    v118 = OUTLINED_FUNCTION_38_17();
    bspush_ca_scan(v118, v119);
    v120 = 0;
LABEL_46:
    v34 = v120;
    *(v0 + 136) = 1;
    *(v0 + 112) = *(v0 + 1344);
    *(v0 + 128) = 0;
    if (test_ptr(v0))
    {
      goto LABEL_81;
    }

    v121 = OUTLINED_FUNCTION_52_14();
    starttest(v121, v122);
    OUTLINED_FUNCTION_35_17();
    bspush_ca_boa();
    root_vow = first_root_vow(v0, v546, v123, v124, v125, v126, v127, v128);
    goto LABEL_48;
  }

LABEL_3:
  v1 = 94;
LABEL_4:
  vretproc(v0);
  v13 = *MEMORY[0x277D85DE8];
  return v1;
}