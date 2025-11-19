uint64_t DeltaProc_process_sentences(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v102 = *MEMORY[0x277D85DE8];
  LODWORD(v92) = 0;
  OUTLINED_FUNCTION_4_13(a1, a2, a3, a4, a5, a6, a7, a8, v45);
  OUTLINED_FUNCTION_1_14(v10, v11, v12, v13, v14, v15, v16, v17, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100);
  v18 = setjmp(v8);
  if (v18 || OUTLINED_FUNCTION_0_15(v18, v19, v20, v21, v22, v23, v24, v25, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, *v93, v93[4], *v95, *&v95[4], v95[6], v97, SWORD2(v97), SBYTE6(v97), SHIBYTE(v97), v99, v101))
  {
    goto LABEL_3;
  }

  fence_15(a1);
  v29 = OUTLINED_FUNCTION_11_13();
  starttest(v29, v30);
  v31 = OUTLINED_FUNCTION_8_13();
  move_i(v31, v32, 3);
  v33 = OUTLINED_FUNCTION_8_13();
  if (!process_input(v33, v34, v35, v36, v37, v38, v39, v40))
  {
    goto LABEL_10;
  }

  v41 = *(a1 + 104);
  if (v41)
  {
    v42 = OUTLINED_FUNCTION_12_13(v41);
  }

  else
  {
    v43 = OUTLINED_FUNCTION_10_13();
    v42 = vback(v43, v44);
  }

  if (v42 != 1)
  {
LABEL_3:
    v26 = 94;
  }

  else
  {
LABEL_10:
    v26 = 0;
  }

  vretproc(a1);
  v27 = *MEMORY[0x277D85DE8];
  return v26;
}

uint64_t no_words_in_delta(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v35 = *MEMORY[0x277D85DE8];
  v30[0] = 0;
  v30[1] = 0;
  OUTLINED_FUNCTION_4_13(a1, a2, a3, a4, a5, a6, a7, a8, v29[0]);
  OUTLINED_FUNCTION_6_13();
  bzero(v34, v9);
  if (setjmp(v34) || ventproc(a1, v29, v33, v32, v31, v34) || (push_ptr_init(a1, v30), fence_15(a1), *(a1 + 2446) != 1))
  {
LABEL_15:
    v26 = 94;
  }

  else
  {
    while (2)
    {
      v10 = OUTLINED_FUNCTION_8_13();
      starttest(v10, v11);
      lpta_loadpn(a1, a1 + 1400);
      lpta_mover();
      v12 = OUTLINED_FUNCTION_9_13();
      lpta_storep(v12, v13);
      v14 = OUTLINED_FUNCTION_9_13();
      if (text_index(v14, v15))
      {
        v16 = *(a1 + 104);
        if (v16)
        {
          v17 = OUTLINED_FUNCTION_12_13(v16);
        }

        else
        {
          v18 = OUTLINED_FUNCTION_10_13();
          v17 = vback(v18, v19);
        }

        switch(v17)
        {
          case 1:
            continue;
          case 2:
            goto LABEL_9;
          case 3:
            goto LABEL_13;
          case 4:
            goto LABEL_12;
          case 5:
            goto LABEL_14;
          default:
            goto LABEL_15;
        }
      }

      break;
    }

LABEL_9:
    if (!lpta_loadp_setscan_l(a1, a1 + 1384) && !advance_tok(a1))
    {
      handle_pause(a1, (a1 + 1400), v20, v21, v22, v23, v24, v25);
LABEL_12:
      resetStreamArrayC(a1);
    }

LABEL_13:
    clear_delta(a1);
LABEL_14:
    v26 = 0;
    *(a1 + 2410) = 0;
    *(a1 + 2402) = 0;
  }

  vretproc(a1);
  v27 = *MEMORY[0x277D85DE8];
  return v26;
}

uint64_t apply_rules(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v92 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_13(a1, a2, a3, a4, a5, a6, a7, a8, v35);
  OUTLINED_FUNCTION_1_14(v10, v11, v12, v13, v14, v15, v16, v17, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90);
  v18 = setjmp(v8);
  if (v18 || OUTLINED_FUNCTION_0_15(v18, v19, v20, v21, v22, v23, v24, v25, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, *v83, v83[4], *v85, *&v85[4], v85[6], v87, SWORD2(v87), SBYTE6(v87), SHIBYTE(v87), v89, v91))
  {
LABEL_3:
    vretproc(a1);
    result = 94;
    goto LABEL_4;
  }

  v28 = OUTLINED_FUNCTION_17_10();
  init_symbolic_vars(v28);
  while (2)
  {
    startloop(a1, 2);
    lpta_loadpn(a1, a1 + 1400);
    lpta_mover();
    lpta_storep(a1, a1 + 640);
LABEL_7:
    v29 = OUTLINED_FUNCTION_9_13();
    bspush_ca(v29);
    if (lpta_loadp_setscan_r(a1, a1 + 640) || advance_tok(a1))
    {
LABEL_14:
      v31 = *(a1 + 104);
      if (v31)
      {
        v32 = OUTLINED_FUNCTION_12_13(v31);
      }

      else
      {
        v33 = OUTLINED_FUNCTION_10_13();
        v32 = vback(v33, v34);
      }

      switch(v32)
      {
        case 1:
          continue;
        case 2:
          goto LABEL_18;
        case 3:
          goto LABEL_10;
        case 4:
          goto LABEL_13;
        case 5:
          goto LABEL_9;
        case 6:
          goto LABEL_11;
        case 7:
          goto LABEL_7;
        case 8:
          goto LABEL_19;
        case 9:
          goto LABEL_21;
        case 10:
          goto LABEL_23;
        case 11:
          goto LABEL_24;
        default:
          goto LABEL_3;
      }
    }

    break;
  }

LABEL_9:
  savescptr(a1, 5, a1 + 656);
LABEL_10:
  run_text_module(a1);
LABEL_11:
  starttest(a1, 4);
  OUTLINED_FUNCTION_14_11();
  if (!v30)
  {
    starttest_e(a1, 4);
    run_speech_module(a1);
  }

LABEL_13:
  if (forall_adv_upto_r(a1, 2, 3, 7, 2, a1 + 640))
  {
    goto LABEL_14;
  }

LABEL_18:
  printouts(a1);
LABEL_19:
  if (*(a1 + 3430) == 1)
  {
    pause();
  }

LABEL_21:
  if (*(a1 + 3426) == 1)
  {
    pause();
  }

LABEL_23:
  init_delta(a1);
LABEL_24:
  vretproc(a1);
  result = 0;
LABEL_4:
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t text_index(uint64_t a1, __int16 *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v21 = 0;
  v22 = 0;
  v19 = 65532;
  v20 = 65532;
  OUTLINED_FUNCTION_7_13();
  bzero(v18, v4);
  OUTLINED_FUNCTION_6_13();
  bzero(v26, v5);
  if (setjmp(v26) || ventproc(a1, v18, v25, v24, v23, v26))
  {
    v6 = 94;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_9_13();
    get_parm(v9, v10, a2, -6);
    fence_15(a1);
    v11 = OUTLINED_FUNCTION_9_13();
    get_indices(v11, v12, &v20, v13, v14, v15);
    v16 = OUTLINED_FUNCTION_8_13();
    synthesizingWord(v16, v17);
    v6 = 0;
  }

  vretproc(a1);
  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t clear_delta(uint64_t *a1)
{
  OUTLINED_FUNCTION_2_14(*MEMORY[0x277D85DE8], v26);
  OUTLINED_FUNCTION_1_14(v3, v4, v5, v6, v7, v8, v9, v10, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_0_15(v11, v12, v13, v14, v15, v16, v17, v18, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, *v74, v74[4], *v76, *&v76[4], v76[6], v78, SWORD2(v78), SBYTE6(v78), SHIBYTE(v78), v80, v82))
  {
LABEL_9:
    v23 = 94;
  }

  else
  {
    fence_15(a1);
    starttest(a1, 1);
    delete_2_more(a1);
    while (1)
    {
      OUTLINED_FUNCTION_3_14();
      if (!delete_2pt(a1, 1))
      {
        break;
      }

      v19 = a1[13];
      if (v19)
      {
        v20 = OUTLINED_FUNCTION_12_13(v19);
      }

      else
      {
        v21 = OUTLINED_FUNCTION_10_13();
        v20 = vback(v21, v22);
      }

      if (v20 != 1)
      {
        goto LABEL_9;
      }
    }

    v23 = 0;
  }

  vretproc(a1);
  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

uint64_t run_text_module(uint64_t a1)
{
  OUTLINED_FUNCTION_2_14(*MEMORY[0x277D85DE8], v33);
  OUTLINED_FUNCTION_1_14(v3, v4, v5, v6, v7, v8, v9, v10, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_0_15(v11, v12, v13, v14, v15, v16, v17, v18, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, *v81, v81[4], *v83, *&v83[4], v83[6], v85, SWORD2(v85), SBYTE6(v85), SHIBYTE(v85), v87, v89))
  {
    v19 = 94;
  }

  else
  {
    v22 = OUTLINED_FUNCTION_17_10();
    init_tm_vars(v22);
    word_level_rules(a1, a1 + 3912, a1 + 3928, v23, v24, v25, v26, v27);
    phrase_level_rules(a1, a1 + 3944, a1 + 3960, v28, v29, v30, v31, v32);
    v19 = 0;
  }

  vretproc(a1);
  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

uint64_t run_speech_module(uint64_t a1)
{
  v52 = *MEMORY[0x277D85DE8];
  memset(v47, 0, sizeof(v47));
  OUTLINED_FUNCTION_7_13();
  bzero(v46, v2);
  OUTLINED_FUNCTION_6_13();
  bzero(v51, v3);
  if (setjmp(v51) || ventproc(a1, v46, v50, v49, v48, v51))
  {
LABEL_3:
    vretproc(a1);
    result = 94;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_8_13();
    push_ptr_init(v6, v7);
    v8 = OUTLINED_FUNCTION_9_13();
    push_ptr_init(v8, v9);
    fence_15(a1);
    v10 = OUTLINED_FUNCTION_11_13();
    starttest(v10, v11);
    OUTLINED_FUNCTION_11_13();
    bspush_ca_boa();
    v12 = init_word_vars(a1) == 0;
    while (2)
    {
      v13 = *(a1 + 104);
      if (v13)
      {
        v14 = OUTLINED_FUNCTION_12_13(v13);
        v22 = v21;
      }

      else
      {
        v14 = vback(a1, v12);
        v22 = 0;
      }

      switch(v14)
      {
        case 1:
          startloop(a1, 3);
          lpta_loadpn(a1, a1 + 672);
          lpta_mover();
          lpta_storep(a1, a1 + 768);
          lpta_loadpn(a1, a1 + 688);
          lpta_mover();
          v23 = OUTLINED_FUNCTION_8_13();
          lpta_storep(v23, v24);
          v25 = OUTLINED_FUNCTION_16_11();
          v28 = forall_to_test(v25, v26, v27);
          v12 = v22;
          if (v28)
          {
            continue;
          }

          goto LABEL_11;
        case 2:
          bspop_boa(a1);
          goto LABEL_3;
        case 3:
          goto LABEL_20;
        case 4:
          goto LABEL_14;
        case 5:
          goto LABEL_19;
        case 6:
          goto LABEL_13;
        case 7:
          goto LABEL_15;
        case 8:
          goto LABEL_16;
        case 9:
          goto LABEL_17;
        case 10:
LABEL_11:
          bspush_ca(a1);
          v29 = lpta_loadp_setscan_r(a1, a1 + 768);
          v12 = v22;
          if (v29)
          {
            continue;
          }

          v30 = advance_tok(a1);
          v12 = v22;
          if (v30)
          {
            continue;
          }

LABEL_13:
          savescptr(a1, 6, a1 + 784);
LABEL_14:
          init_syll_vars(a1);
LABEL_15:
          generate_durations(a1);
LABEL_16:
          generate_intonation(a1);
LABEL_17:
          starttest(a1, 5);
          if (*(a1 + 3438) == *(a1 + 3434))
          {
            starttest_e(a1, 5);
            generate_acoustic_vals(a1, v31, v32, v33, v34, v35, v36, v37);
          }

LABEL_19:
          v38 = forto_adv_upto_r(a1, 3, 4, 10, 7, a1 + 768);
          v12 = v22;
          if (v38)
          {
            continue;
          }

LABEL_20:
          if (*(a1 + 3438) != *(a1 + 3434))
          {
            goto LABEL_26;
          }

          if (!lpta_loadp_setscan_r(a1, a1 + 656) && !advanc(a1))
          {
LABEL_23:
            savescptr(a1, 13, v47);
          }

LABEL_24:
          starttest(a1, 14);
          v39 = OUTLINED_FUNCTION_9_13();
          lpta_loadpn(v39, v40);
          OUTLINED_FUNCTION_10_13();
          lpta_ctxtl();
          v41 = OUTLINED_FUNCTION_8_13();
          lpta_storep(v41, v42);
          v43 = OUTLINED_FUNCTION_8_13();
          v45 = text_index(v43, v44);
          v12 = v22;
          if (v45)
          {
            continue;
          }

LABEL_25:
          handle_pause(a1, v47, v15, v16, v17, v18, v19, v20);
LABEL_26:
          vretproc(a1);
          result = 0;
          break;
        case 11:
        case 15:
          goto LABEL_26;
        case 12:
          goto LABEL_24;
        case 13:
          goto LABEL_23;
        case 14:
          goto LABEL_25;
        default:
          goto LABEL_3;
      }

      break;
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t printouts(uint64_t a1)
{
  OUTLINED_FUNCTION_2_14(*MEMORY[0x277D85DE8], v21);
  OUTLINED_FUNCTION_1_14(v3, v4, v5, v6, v7, v8, v9, v10, v22, v24, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_0_15(v11, v12, v13, v14, v15, v16, v17, v18, v23, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, *v69, v69[4], *v71, *&v71[4], v71[6], v73, SWORD2(v73), SBYTE6(v73), SHIBYTE(v73), v75, v77))
  {
    vretproc(a1);
    result = 94;
  }

  else
  {
    fence_15(a1);
    if (*(a1 + 3450) == 1)
    {
      print_spr();
    }

    vretproc(a1);
    result = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t init_delta(uint64_t a1)
{
  v55 = *MEMORY[0x277D85DE8];
  v50[0] = 0;
  v50[1] = 0;
  v49[0] = 0;
  v49[1] = 0;
  OUTLINED_FUNCTION_7_13();
  bzero(v48, v2);
  OUTLINED_FUNCTION_6_13();
  bzero(v54, v3);
  if (!setjmp(v54) && !ventproc(a1, v48, v53, v52, v51, v54))
  {
    v6 = OUTLINED_FUNCTION_8_13();
    push_ptr_init(v6, v7);
    v8 = OUTLINED_FUNCTION_9_13();
    push_ptr_init(v8, v9);
    v10 = OUTLINED_FUNCTION_17_10();
    resetStreamArrayC(v10);
    while (2)
    {
      v11 = OUTLINED_FUNCTION_15_11();
      if (!lpta_loadp_setscan_r(v11, v12))
      {
        *(a1 + 136) = 1;
        *(a1 + 112) = *(a1 + 368);
        *(a1 + 128) = 0;
        if (!test_ptr(a1) && !lpta_loadp_setscan_r(a1, a1 + 1256))
        {
          *(a1 + 136) = 1;
          if (!OUTLINED_FUNCTION_13_13())
          {
            initdelta(a1, 9u, byte_2806BB0CB);
            init_vars(a1);
LABEL_45:
            vretproc(a1);
            result = 0;
            goto LABEL_4;
          }
        }
      }

LABEL_10:
      OUTLINED_FUNCTION_14_11();
      if (v13)
      {
        if (!lpta_loadp_setscan_l(a1, a1 + 1256) && !OUTLINED_FUNCTION_19_8())
        {
          advance_tok(a1);
        }

LABEL_15:
        *(a1 + 1906) = 0;
        copyvar(a1, (a1 + 2408), (a1 + 1904));
      }

LABEL_16:
      starttest(a1, 6);
      OUTLINED_FUNCTION_14_11();
      if (v13)
      {
LABEL_18:
        OUTLINED_FUNCTION_3_14();
        v14 = OUTLINED_FUNCTION_5_13();
        if (delete_2pt(v14, 2))
        {
          goto LABEL_40;
        }

        OUTLINED_FUNCTION_3_14();
        v15 = OUTLINED_FUNCTION_5_13();
        if (delete_2pt(v15, 3))
        {
          goto LABEL_40;
        }

        OUTLINED_FUNCTION_3_14();
        v16 = OUTLINED_FUNCTION_5_13();
        if (delete_2pt(v16, 5))
        {
          goto LABEL_40;
        }

        OUTLINED_FUNCTION_3_14();
        v17 = OUTLINED_FUNCTION_5_13();
        if (delete_2pt(v17, 6))
        {
          goto LABEL_40;
        }

        OUTLINED_FUNCTION_3_14();
        v18 = OUTLINED_FUNCTION_5_13();
        if (delete_2pt(v18, 7))
        {
          goto LABEL_40;
        }

        OUTLINED_FUNCTION_3_14();
        v19 = OUTLINED_FUNCTION_5_13();
        if (delete_2pt(v19, 8))
        {
          goto LABEL_40;
        }

        OUTLINED_FUNCTION_18_9();
        v20 = OUTLINED_FUNCTION_10_13();
        if (delete_2pt(v20, v21))
        {
          goto LABEL_40;
        }

        OUTLINED_FUNCTION_3_14();
        v22 = OUTLINED_FUNCTION_5_13();
        if (delete_2pt(v22, 4))
        {
          goto LABEL_40;
        }
      }

      else
      {
        v23 = OUTLINED_FUNCTION_11_13();
        starttest_l(v23, v24);
        delete_2_more(a1);
      }

LABEL_26:
      OUTLINED_FUNCTION_18_9();
      v25 = OUTLINED_FUNCTION_5_13();
      if (!delete_2pt(v25, 1))
      {
        *(a1 + 2304) = *(a1 + 3352);
        *(a1 + 2402) = 0;
        startloop(a1, 9);
        lpta_loadpn(a1, a1 + 1256);
        lpta_mover();
        v26 = OUTLINED_FUNCTION_8_13();
        lpta_storep(v26, v27);
LABEL_28:
        bspush_ca(a1);
        v28 = OUTLINED_FUNCTION_5_13();
        if (!lpta_loadp_setscan_r(v28, v50) && !advance_tok(a1))
        {
LABEL_30:
          savescptr(a1, 12, v49);
          if (!OUTLINED_FUNCTION_19_8())
          {
LABEL_31:
            starttest(a1, 13);
            v29 = OUTLINED_FUNCTION_5_13();
            if (!lpta_loadp_setscan_r(v29, v50) && !advance_tok(a1))
            {
              OUTLINED_FUNCTION_19_8();
            }

LABEL_34:
            c_assvar(a1, (a1 + 2400));
            *(a1 + 2402) = *(a1 + 1920) - *(a1 + 2410);
            v30 = OUTLINED_FUNCTION_8_13();
            lpta_rpta_loadp(v30, v31, v49);
            insert_2ptv();
            if (!v32)
            {
LABEL_35:
              v33 = OUTLINED_FUNCTION_11_13();
              if (!forall_adv_upto_r(v33, v34, 10, 14, v35, v50))
              {
LABEL_36:
                *(a1 + 2410) = 0;
                starttest(a1, 15);
                v36 = OUTLINED_FUNCTION_15_11();
                if (lpta_loadp_setscan_r(v36, v37))
                {
                  goto LABEL_45;
                }

LABEL_39:
                while (!test_string_s())
                {
                  bspush_ca_scan(a1, 16);
                }
              }
            }
          }
        }
      }

LABEL_40:
      v38 = *(a1 + 104);
      if (v38)
      {
        v39 = OUTLINED_FUNCTION_12_13(v38);
      }

      else
      {
        v40 = OUTLINED_FUNCTION_10_13();
        v39 = vback(v40, v41);
      }

      switch(v39)
      {
        case 1:
          continue;
        case 2:
          goto LABEL_10;
        case 3:
        case 15:
          goto LABEL_45;
        case 4:
          goto LABEL_16;
        case 5:
          goto LABEL_15;
        case 6:
          goto LABEL_18;
        case 7:
        case 8:
          goto LABEL_26;
        case 9:
          goto LABEL_36;
        case 10:
          goto LABEL_31;
        case 11:
          goto LABEL_35;
        case 12:
          goto LABEL_30;
        case 13:
          goto LABEL_34;
        case 14:
          goto LABEL_28;
        case 16:
          v42 = OUTLINED_FUNCTION_16_11();
          savescptr(v42, v43, v44);
          v45 = OUTLINED_FUNCTION_15_11();
          lpta_rpta_loadp(v45, v46, v50);
          v47 = OUTLINED_FUNCTION_5_13();
          if (!delete_2pt(v47, 1))
          {
            goto LABEL_45;
          }

          goto LABEL_40;
        case 17:
          goto LABEL_39;
        default:
          goto LABEL_3;
      }
    }
  }

LABEL_3:
  vretproc(a1);
  result = 94;
LABEL_4:
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t get_indices(uint64_t a1, __int16 *a2, __int16 *a3, __int16 *a4, __int16 *a5, uint64_t a6)
{
  v30 = *MEMORY[0x277D85DE8];
  v25[0] = 0;
  v25[1] = 0;
  v23 = 0;
  v24 = 0;
  v22 = 65532;
  OUTLINED_FUNCTION_7_13();
  bzero(v21, v12);
  OUTLINED_FUNCTION_6_13();
  bzero(v29, v13);
  if (setjmp(v29) || ventproc(a1, v21, v28, v27, v26, v29))
  {
    v14 = 94;
  }

  else
  {
    get_parm(a1, v25, a2, -6);
    get_parm(a1, &v24 + 4, a3, -4);
    get_parm(a1, &v24, a4, -4);
    get_parm(a1, &v23 + 4, a5, -4);
    v17 = OUTLINED_FUNCTION_16_11();
    get_parm(v17, v18, v19, -4);
    fence_15(a1);
    v20 = OUTLINED_FUNCTION_5_13();
    if (!lpta_loadp_setscan_l(v20, v25) && !OUTLINED_FUNCTION_19_8() && !advance_tok(a1))
    {
      *(a1 + 1906) = 0;
      copyvar(a1, &v22, (a1 + 1904));
      HIWORD(v24) = HIWORD(v22) - WORD1(v24);
      WORD1(v24) = HIWORD(v22);
    }

    a3[1] = HIWORD(v24);
    a4[1] = WORD1(v24);
    a5[1] = HIWORD(v23);
    *(a6 + 2) = WORD1(v23);
    v14 = 0;
  }

  vretproc(a1);
  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t delete_2_more(uint64_t *a1)
{
  OUTLINED_FUNCTION_2_14(*MEMORY[0x277D85DE8], v32);
  OUTLINED_FUNCTION_1_14(v3, v4, v5, v6, v7, v8, v9, v10, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_0_15(v11, v12, v13, v14, v15, v16, v17, v18, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, *v80, v80[4], *v82, *&v82[4], v82[6], v84, SWORD2(v84), SBYTE6(v84), SHIBYTE(v84), v86, v88))
  {
    goto LABEL_14;
  }

  fence_15(a1);
  OUTLINED_FUNCTION_3_14();
  v19 = OUTLINED_FUNCTION_5_13();
  if (delete_2pt(v19, 2))
  {
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_3_14();
  v20 = OUTLINED_FUNCTION_5_13();
  if (delete_2pt(v20, 3))
  {
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_3_14();
  v21 = OUTLINED_FUNCTION_5_13();
  if (delete_2pt(v21, 4))
  {
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_3_14();
  v22 = OUTLINED_FUNCTION_5_13();
  if (delete_2pt(v22, 5))
  {
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_3_14();
  v23 = OUTLINED_FUNCTION_5_13();
  if (delete_2pt(v23, 6) || (OUTLINED_FUNCTION_3_14(), v24 = OUTLINED_FUNCTION_5_13(), delete_2pt(v24, 7)) || (OUTLINED_FUNCTION_18_9(), v25 = OUTLINED_FUNCTION_10_13(), delete_2pt(v25, v26)) || (OUTLINED_FUNCTION_3_14(), v27 = 0, delete_2pt(a1, 8)))
  {
LABEL_18:
    if (a1[13])
    {
      a1[13] = 0;
    }

    else
    {
      v28 = OUTLINED_FUNCTION_10_13();
      vback(v28, v29);
    }

LABEL_14:
    v27 = 94;
  }

  vretproc(a1);
  v30 = *MEMORY[0x277D85DE8];
  return v27;
}

uint64_t DeltaProc_end(uint64_t a1)
{
  OUTLINED_FUNCTION_2_14(*MEMORY[0x277D85DE8], v23);
  OUTLINED_FUNCTION_1_14(v3, v4, v5, v6, v7, v8, v9, v10, v24, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_0_15(v11, v12, v13, v14, v15, v16, v17, v18, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, *v71, v71[4], *v73, *&v73[4], v73[6], v75, SWORD2(v75), SBYTE6(v75), SHIBYTE(v75), v77, v79))
  {
    v19 = 94;
  }

  else
  {
    v22 = OUTLINED_FUNCTION_17_10();
    close_platform(v22);
    v19 = 0;
  }

  vretproc(a1);
  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

uint64_t DeltaProc_getInputCharCount(uint64_t a1)
{
  OUTLINED_FUNCTION_2_14(*MEMORY[0x277D85DE8], v22);
  OUTLINED_FUNCTION_1_14(v3, v4, v5, v6, v7, v8, v9, v10, v23, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_0_15(v11, v12, v13, v14, v15, v16, v17, v18, v24, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, *v70, v70[4], *v72, *&v72[4], v72[6], v74, SWORD2(v74), SBYTE6(v74), SHIBYTE(v74), v76, v78))
  {
    v19 = 94;
  }

  else
  {
    fence_15(a1);
    v19 = 0;
  }

  vretproc(a1);
  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

uint64_t OUTLINED_FUNCTION_0_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, char a33, int a34, __int16 a35, char a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, char a42)
{

  return ventproc(v42, &a9, &a40, &a36, &a33, &a42);
}

void OUTLINED_FUNCTION_1_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{

  bzero(&a36, 0xC0uLL);
}

void OUTLINED_FUNCTION_2_14(uint64_t a1@<X8>, uint64_t a2)
{
  *(v2 - 40) = a1;

  bzero(&a2, 0xB8uLL);
}

uint64_t OUTLINED_FUNCTION_3_14()
{

  return lpta_rpta_loadp(v0, v0 + 344, v0 + 1384);
}

void OUTLINED_FUNCTION_4_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  bzero(&a9, 0xB8uLL);
}

uint64_t OUTLINED_FUNCTION_13_13()
{
  v0[14] = v0[174];
  v0[16] = 0;

  return test_ptr(v0);
}

uint64_t OUTLINED_FUNCTION_18_9()
{

  return lpta_rpta_loadp(v0, v0 + 344, v0 + 1256);
}

uint64_t OUTLINED_FUNCTION_19_8()
{

  return savetok(v0, (v0 + 1904));
}

void *fence_16(uint64_t a1, int a2, uint64_t a3)
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

void normalize_text()
{
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_11_14();
  v116 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_78_1();
  OUTLINED_FUNCTION_16_12(v1, v2, v3, v4, v5, v6, v7, v8, v70, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100);
  OUTLINED_FUNCTION_57_1();
  bzero(v115, v9);
  v10 = setjmp(v115);
  if (v10 || OUTLINED_FUNCTION_92_0(v10, &v72, v11, v12, v13, v14, v15, v16, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103[0], v103[1], v104[0], v104[1], v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115[0]))
  {
    goto LABEL_3;
  }

  v18 = OUTLINED_FUNCTION_72_1();
  get_parm(v18, v19, v20, -6);
  OUTLINED_FUNCTION_62_1(v21, v103);
  v22 = OUTLINED_FUNCTION_107();
  push_ptr_init(v22, v23);
  v24 = OUTLINED_FUNCTION_87_1();
  push_ptr_init(v24, v25);
  v26 = OUTLINED_FUNCTION_86_1();
  push_ptr_init(v26, v27);
  v28 = OUTLINED_FUNCTION_104();
  push_ptr_init(v28, v29);
  fence_16(v0, 0, &_MergedGlobals_1_0);
  v102 = *(v0 + 3352);
  v100 = v102;
  if (*(v0 + 2386) == 1 && !lpta_loadp_setscan_r(v0, v104))
  {
    *(v0 + 136) = 1;
    v30 = OUTLINED_FUNCTION_12_14();
    if (!test_ptr(v30))
    {
      goto LABEL_56;
    }
  }

  OUTLINED_FUNCTION_153();
LABEL_8:
  *(v0 + 2430) = 0;
  count_input(v0, v0 + 2424);
LABEL_9:
  v31 = OUTLINED_FUNCTION_55_1();
  startloop(v31, v32);
  lpta_loadpn(v0, v104);
  OUTLINED_FUNCTION_96_0();
  lpta_mover();
  v33 = OUTLINED_FUNCTION_64_1();
  lpta_storep(v33, v34);
  v35 = OUTLINED_FUNCTION_140();
  lpta_loadpn(v35, v36);
  OUTLINED_FUNCTION_96_0();
  lpta_mover();
  v37 = OUTLINED_FUNCTION_74_1();
  lpta_storep(v37, v38);
  while (1)
  {
    while (1)
    {
LABEL_10:
      v39 = OUTLINED_FUNCTION_64_1();
      if (forall_to_test(v39, v40, &v97))
      {
LABEL_13:
        while (2)
        {
          v44 = *(v0 + 104);
          if (v44)
          {
            v45 = OUTLINED_FUNCTION_65_1(v44);
          }

          else
          {
            v46 = OUTLINED_FUNCTION_130();
            v45 = vback(v46, v47);
          }

          switch(v45)
          {
            case 1:
              goto LABEL_8;
            case 3:
              goto LABEL_9;
            case 5:
              goto LABEL_19;
            case 6:
              OUTLINED_FUNCTION_115();
              if (forto_adv_upto_r(v0, v48, 5, 41, 1, &v101))
              {
                continue;
              }

              break;
            case 7:
              goto LABEL_20;
            case 8:
              goto LABEL_21;
            case 9:
              goto LABEL_22;
            case 10:
              goto LABEL_41;
            case 11:
              goto LABEL_23;
            case 12:
              goto LABEL_24;
            case 13:
              goto LABEL_25;
            case 14:
              goto LABEL_10;
            case 15:
              goto LABEL_26;
            case 16:
              goto LABEL_27;
            case 17:
              goto LABEL_28;
            case 18:
              goto LABEL_29;
            case 19:
              goto LABEL_30;
            case 20:
              goto LABEL_31;
            case 21:
              goto LABEL_32;
            case 22:
              goto LABEL_33;
            case 23:
              goto LABEL_34;
            case 24:
              goto LABEL_35;
            case 25:
              goto LABEL_36;
            case 26:
              goto LABEL_37;
            case 27:
              goto LABEL_38;
            case 28:
              goto LABEL_39;
            case 29:
              goto LABEL_40;
            case 30:
              goto LABEL_42;
            case 31:
              goto LABEL_44;
            case 32:
              goto LABEL_47;
            case 33:
              goto LABEL_48;
            case 34:
              goto LABEL_50;
            case 35:
              goto LABEL_51;
            case 36:
              goto LABEL_55;
            case 40:
              goto LABEL_52;
            case 41:
              goto LABEL_11;
            default:
              goto LABEL_3;
          }

          goto LABEL_3;
        }
      }

LABEL_11:
      v41 = OUTLINED_FUNCTION_112();
      bspush_ca(v41);
      v42 = OUTLINED_FUNCTION_64_1();
      if (lpta_loadp_setscan_r(v42, v43) || advance_tok(v0))
      {
        goto LABEL_13;
      }

LABEL_19:
      OUTLINED_FUNCTION_64_1();
      reset_token_vars();
LABEL_20:
      OUTLINED_FUNCTION_64_1();
      merge_adjacent_spaces();
LABEL_21:
      v49 = OUTLINED_FUNCTION_17_11();
      if (!space(v51, v49, v50))
      {
        break;
      }

LABEL_22:
      OUTLINED_FUNCTION_17_11();
      process_annotation();
      if (!v52)
      {
        break;
      }

LABEL_23:
      OUTLINED_FUNCTION_17_11();
      ellipsis();
      if (!v53)
      {
        break;
      }

LABEL_24:
      OUTLINED_FUNCTION_64_1();
      three_letter_extension();
      if (v54)
      {
LABEL_25:
        OUTLINED_FUNCTION_17_11();
        interpret_single_char_modes();
        if (!v55)
        {
          break;
        }

LABEL_26:
        OUTLINED_FUNCTION_64_1();
        tok_lookup();
        if (v56)
        {
LABEL_27:
          OUTLINED_FUNCTION_17_11();
          if (!punctuation())
          {
            break;
          }

LABEL_28:
          OUTLINED_FUNCTION_17_11();
          if (!parenthesis())
          {
            break;
          }

LABEL_29:
          OUTLINED_FUNCTION_17_11();
          apostrophe();
          if (!v57)
          {
            break;
          }

LABEL_30:
          OUTLINED_FUNCTION_64_1();
          if (email_address())
          {
LABEL_31:
            OUTLINED_FUNCTION_64_1();
            URL();
            if (v58)
            {
LABEL_32:
              OUTLINED_FUNCTION_64_1();
              if (is_pathname())
              {
LABEL_33:
                OUTLINED_FUNCTION_17_11();
                if (letter_sequence())
                {
LABEL_34:
                  OUTLINED_FUNCTION_17_11();
                  if (convert_digits_to_words())
                  {
LABEL_35:
                    OUTLINED_FUNCTION_17_11();
                    hyphen();
                    if (v59)
                    {
LABEL_36:
                      OUTLINED_FUNCTION_17_11();
                      slash();
                      if (v60)
                      {
LABEL_37:
                        OUTLINED_FUNCTION_17_11();
                        quote_mark();
                        if (v61)
                        {
LABEL_38:
                          OUTLINED_FUNCTION_17_11();
                          if (span_inverted_punct())
                          {
LABEL_39:
                            OUTLINED_FUNCTION_17_11();
                            if (bracket())
                            {
LABEL_40:
                              OUTLINED_FUNCTION_17_11();
                              misc_chars();
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
          }
        }
      }

      forall_cont_from(v0);
    }

LABEL_41:
    OUTLINED_FUNCTION_17_11();
    init_ptr_End_reproc_string();
LABEL_42:
    if (*(v0 + 2614) - 10 >= 0xFFFFFFF7)
    {
      OUTLINED_FUNCTION_17_11();
      build_words();
    }

LABEL_44:
    *(v0 + 2456) = v100;
    v62 = OUTLINED_FUNCTION_91_0();
    lpta_loadpn(v62, v63);
    rpta_loadpn(v0, v0 + 1384);
    if (!compare_ptas(v0) && !testeq(v0))
    {
      *(v0 + 2430) = 1;
    }

LABEL_47:
    v64 = OUTLINED_FUNCTION_91_0();
    if (!forced_synthesis(v64, v65))
    {
      goto LABEL_3;
    }

LABEL_48:
    if (*(v0 + 2538))
    {
      OUTLINED_FUNCTION_17_11();
      build_phrases();
    }

LABEL_50:
    if (*(v0 + 2430) == 1)
    {
      break;
    }

LABEL_51:
    if (*(v0 + 2390) == 1)
    {
      goto LABEL_3;
    }

LABEL_52:
    v66 = OUTLINED_FUNCTION_91_0();
    lpta_loadpn(v66, v67);
    OUTLINED_FUNCTION_96_0();
    lpta_mover();
    v68 = OUTLINED_FUNCTION_81_1();
    lpta_storep(v68, v69);
    forall_cont_from(v0);
  }

  if (!*(v0 + 2386))
  {
    create_final_sync();
    goto LABEL_3;
  }

LABEL_55:
  if (*(v0 + 2390))
  {
    goto LABEL_3;
  }

LABEL_56:
  handle_end_of_delta();
LABEL_3:
  vretproc(v0);
  v17 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_113();
}

uint64_t handle_end_of_delta()
{
  OUTLINED_FUNCTION_76_1();
  v156 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_20_8(v2, v3, v4, v5, v6, v7, v8, v9, v47, v51, v55, v59, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143);
  OUTLINED_FUNCTION_57_1();
  OUTLINED_FUNCTION_158(v10, v11, v12, v13, v14, v15, v16, v17, v48, v52, v56, v60, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144, v146, v148, v150, v152, v154);
  v18 = setjmp(v1);
  if (v18)
  {
    goto LABEL_3;
  }

  v26 = OUTLINED_FUNCTION_25_8(v18, v19, v20, v21, v22, v23, v24, v25, v49, v53, v57, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, *v147, v147[4], *v149, *&v149[4], v149[6], v151, SWORD2(v151), SBYTE6(v151), SHIBYTE(v151), v153, v155);
  if (v26)
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_19_9(v26, v27, v28, v29, v30, v31, v32, v33, v50, v54, v58, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142);
  v36 = OUTLINED_FUNCTION_73_1();
  fence_16(v36, v37, v38);
  v39 = OUTLINED_FUNCTION_42_1();
  starttest(v39, v40);
  bspush_ca_boa();
  v41 = OUTLINED_FUNCTION_55_1();
  if (!lpta_loadp_setscan_l(v41, v42))
  {
    advance_tok(v0);
  }

  v43 = *(v0 + 104);
  if (v43)
  {
    v44 = OUTLINED_FUNCTION_65_1(v43);
  }

  else
  {
    v45 = OUTLINED_FUNCTION_130();
    v44 = vback(v45, v46);
  }

  switch(v44)
  {
    case 3:
LABEL_15:
      vretproc(v0);
      result = 0;
      goto LABEL_4;
    case 2:
      bspop_boa(v0);
      *(v0 + 2446) = 1;
      goto LABEL_15;
    case 1:
      OUTLINED_FUNCTION_66_1();
      create_sentence();
      goto LABEL_15;
  }

LABEL_3:
  vretproc(v0);
  result = 94;
LABEL_4:
  v35 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t reset_token_vars()
{
  OUTLINED_FUNCTION_76_1();
  v149 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_20_8(v2, v3, v4, v5, v6, v7, v8, v9, v40, v44, v48, v52, v56, v60, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136);
  OUTLINED_FUNCTION_57_1();
  OUTLINED_FUNCTION_158(v10, v11, v12, v13, v14, v15, v16, v17, v41, v45, v49, v53, v57, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v139, v141, v143, v145, v147);
  v18 = setjmp(v1);
  if (v18 || (v26 = OUTLINED_FUNCTION_25_8(v18, v19, v20, v21, v22, v23, v24, v25, v42, v46, v50, v54, v58, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, *v140, v140[4], *v142, *&v142[4], v142[6], v144, SWORD2(v144), SBYTE6(v144), SHIBYTE(v144), v146, v148), v26))
  {
    vretproc(v0);
    result = 94;
  }

  else
  {
    OUTLINED_FUNCTION_43_1(v26, v27, v28, v29, v30, v31, v32, v33, v43, v47, v51, v55, v59, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135);
    v36 = OUTLINED_FUNCTION_73_1();
    fence_16(v36, v37, v38);
    v0[1453] = 0;
    v39 = v0[1455];
    if (v39 != 1)
    {
      LOWORD(v39) = v0[1457] == 1 && !v0[1307];
    }

    v0[1457] = v39;
    v0[1455] = 0;
    if (v0[1307])
    {
      v0[1305] = v0[1307];
    }

    v0[1307] = 0;
    v0[1335] = 0;
    v0[1349] = 0;
    v0[1449] = 0;
    v0[1411] = 0;
    v0[1269] = 0;
    v0[1395] = 0;
    v0[1309] = 0;
    v0[1257] = 0;
    v0[1403] = 0;
    vretproc(v0);
    result = 0;
  }

  v35 = *MEMORY[0x277D85DE8];
  return result;
}

void merge_adjacent_spaces()
{
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_76_1();
  v88 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_16_12(v1, v2, v3, v4, v5, v6, v7, v8, v46, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76);
  OUTLINED_FUNCTION_57_1();
  bzero(v87, v9);
  v10 = setjmp(v87);
  if (!v10 && !OUTLINED_FUNCTION_34_3(v10, &v48, v11, v12, v13, v14, v15, v16, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87[0]))
  {
    OUTLINED_FUNCTION_21_8();
    v18 = OUTLINED_FUNCTION_86_1();
    push_ptr_init(v18, v19);
    v20 = OUTLINED_FUNCTION_104();
    push_ptr_init(v20, v21);
    v22 = OUTLINED_FUNCTION_73_1();
    fence_16(v22, v23, v24);
    OUTLINED_FUNCTION_103();
    v25 = OUTLINED_FUNCTION_55_1();
    if (!lpta_loadp_setscan_l(v25, v26))
    {
      OUTLINED_FUNCTION_4_14();
      if (!test_string_s())
      {
        v27 = 0;
        OUTLINED_FUNCTION_143();
        while (2)
        {
          v28 = OUTLINED_FUNCTION_55_1();
          savescptr(v28, v29, v30);
          OUTLINED_FUNCTION_47_1();
          v31 = test_string_s();
          v32 = v27;
          if (!v31)
          {
LABEL_8:
            v33 = OUTLINED_FUNCTION_112();
            savescptr(v33, v34, &v73);
            v35 = OUTLINED_FUNCTION_142();
            starttest_l(v35, v36);
            OUTLINED_FUNCTION_84_1();
            bspush_ca_boa();
            if (lpta_loadp_setscan_l(v0, &v71))
            {
              v32 = v27;
            }

            else
            {
              v32 = 1;
            }
          }

          v27 = v32;
LABEL_12:
          v37 = v0[13];
          if (v37)
          {
            OUTLINED_FUNCTION_65_1(v37);
          }

          else
          {
            vback(v0, v27);
            v27 = 0;
          }

          OUTLINED_FUNCTION_152();
          if (!(!v40 & v39))
          {
            switch(v38)
            {
              case 1:
                continue;
              case 2:
                goto LABEL_8;
              case 3:
                bspop_boa(v0);
                v41 = OUTLINED_FUNCTION_74_1();
                lpta_rpta_loadp(v41, v42, &v75);
                v43 = OUTLINED_FUNCTION_47_1();
                if (insert_2pt_s(v43, v44, v45, &_MergedGlobals_10, 0))
                {
                  goto LABEL_12;
                }

                break;
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
  v17 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_113();
}

std::__fs::filesystem::space_info *__cdecl space(std::__fs::filesystem::space_info *__return_ptr retstr, const std::__fs::filesystem::path *__p, std::error_code *__ec)
{
  OUTLINED_FUNCTION_11_14();
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_14(v6, v7, v8, v9, v10, v11, v12, v13, v56, v61, v66, v71, v76, v81, v86, v91, v96, v101, v106, v111, v116, v121, v126, v131, v136, v141, v146, v151, v156, v161, v166, v171, v176, v180, v183);
  OUTLINED_FUNCTION_26_8(v14, v15, v16, v17, v18, v19, v20, v21, v57, v62, v67, v72, v77, v82, v87, v92, v97, v102, v107, v112, v117, v122, v127, v132, v137, v142, v147, v152, v157, v162, v167, v172, v177, v181, v184, v186, v188, v190, v192, v194);
  if (!setjmp(v4))
  {
    OUTLINED_FUNCTION_0_16();
    if (!OUTLINED_FUNCTION_132(v22, v23, v24, v25, v26, v27, v28, v29, v58, v63, v68, v73, v78, v83, v88, v93, v98, v103, v108, v113, v118, v123, v128, v133, v138, v143, v148, v153, v158, v163, v168, v173, v178, v182, v185, v187, v189, v191, v193, v195))
    {
      v30 = OUTLINED_FUNCTION_13_14();
      get_parm(v30, v31, v32, -6);
      OUTLINED_FUNCTION_43_1(v33, v34, v35, v36, v37, v38, v39, v40, v59, v64, v69, v74, v79, v84, v89, v94, v99, v104, v109, v114, v119, v124, v129, v134, v139, v144, v149, v154, v159, v164, v169, v174);
      fence_16(v3, 0, &_MergedGlobals_1_0);
      v41 = OUTLINED_FUNCTION_29_5();
      if (!lpta_loadp_setscan_r(v41, v42))
      {
        OUTLINED_FUNCTION_4_14();
        if (!test_string_s())
        {
          OUTLINED_FUNCTION_75_1();
          v45 = OUTLINED_FUNCTION_83_1();
          savescptr(v45, v46, v47);
          OUTLINED_FUNCTION_61_1(v48, v49, v50, v51, v52, v53, v54, v55, v60, v65, v70, v75, v80, v85, v90, v95, v100, v105, v110, v115, v120, v125, v130, v135, v140, v145, v150, v155, v160, v165, v170, v175, v179);
        }
      }
    }
  }

  vretproc(v3);
  v43 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_105();
}

void ellipsis()
{
  OUTLINED_FUNCTION_114();
  v48 = v1;
  OUTLINED_FUNCTION_76_1();
  v66 = *MEMORY[0x277D85DE8];
  v53 = 0;
  v54 = 0;
  v51 = 0;
  v52 = 0;
  OUTLINED_FUNCTION_58_1();
  bzero(v50, v2);
  OUTLINED_FUNCTION_57_1();
  bzero(v65, v3);
  v4 = setjmp(v65);
  if (v4)
  {
    goto LABEL_4;
  }

  v11 = OUTLINED_FUNCTION_69_1(v4, v50, v5, v6, v7, v8, v9, v10, v44, v45, v46, v47, v48, v50[0], v50[1], v50[2], v50[3], v50[4], v50[5], v50[6], v50[7], v50[8], v50[9], v50[10], v50[11], v50[12], v50[13], v50[14], v50[15], v50[16], v50[17], v50[18], v50[19], v50[20], v50[21], v50[22], v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65[0]);
  if (v11)
  {
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_62_1(v11, &v53);
  v12 = OUTLINED_FUNCTION_87_1();
  get_parm(v12, v13, v49, -6);
  fence_16(v0, 0, &_MergedGlobals_1_0);
  if (*(v0 + 2754) == *(v0 + 2742))
  {
    goto LABEL_4;
  }

  while (2)
  {
    v15 = OUTLINED_FUNCTION_134();
    starttest(v15, v16);
    v17 = OUTLINED_FUNCTION_141();
    if (lpta_loadp_setscan_r(v17, v18))
    {
LABEL_4:
      vretproc(v0);
      goto LABEL_5;
    }

    v19 = OUTLINED_FUNCTION_111();
    bspush_ca_scan(v19, v20);
    OUTLINED_FUNCTION_108();
    if (!test_string_s())
    {
LABEL_28:
      while (1)
      {
        OUTLINED_FUNCTION_47_1();
        if (test_string_s())
        {
          break;
        }

        v39 = OUTLINED_FUNCTION_70_1();
        bspush_ca_scan(v39, v40);
      }
    }

LABEL_8:
    v21 = *(v0 + 104);
    if (v21)
    {
      v22 = OUTLINED_FUNCTION_65_1(v21);
    }

    else
    {
      v22 = OUTLINED_FUNCTION_133();
    }

    switch(v22)
    {
      case 1:
        continue;
      case 2:
      case 12:
      case 13:
      case 16:
        goto LABEL_32;
      case 4:
        v35 = OUTLINED_FUNCTION_106();
        bspush_ca_scan(v35, v36);
        OUTLINED_FUNCTION_108();
        if (test_string_s())
        {
          goto LABEL_8;
        }

        goto LABEL_25;
      case 5:
      case 7:
      case 9:
        v23 = OUTLINED_FUNCTION_112();
        savescptr(v23, v24, &v51);
        *(v0 + 2614) = *(v0 + 2658);
        *(v0 + 136) = 1;
        OUTLINED_FUNCTION_12_14();
        if (lpta_tstctxtl())
        {
          goto LABEL_14;
        }

        v25 = OUTLINED_FUNCTION_135();
        setscan_l(v25);
        if (v26)
        {
          goto LABEL_14;
        }

        OUTLINED_FUNCTION_87_1();
        skip_punct_and_delimiters();
        goto LABEL_32;
      case 6:
        goto LABEL_28;
      case 8:
        while (1)
        {
          OUTLINED_FUNCTION_47_1();
          if (test_string_s())
          {
            break;
          }

          bspush_ca_scan(v0, 7);
        }

        goto LABEL_8;
      case 10:
LABEL_25:
        while (1)
        {
          OUTLINED_FUNCTION_108();
          if (test_string_s())
          {
            break;
          }

          v37 = OUTLINED_FUNCTION_84_1();
          bspush_ca_scan(v37, v38);
        }

        goto LABEL_8;
      case 11:
LABEL_14:
        OUTLINED_FUNCTION_81_1();
        skip_delimiters();
        goto LABEL_15;
      case 14:
LABEL_15:
        v27 = OUTLINED_FUNCTION_71_1();
        starttest(v27, v28);
        v29 = OUTLINED_FUNCTION_81_1();
        if (lpta_loadp_setscan_r(v29, v30))
        {
          goto LABEL_30;
        }

        OUTLINED_FUNCTION_108();
        OUTLINED_FUNCTION_116();
        if (testFldeq(v31, v32, v33, v34) || advance_tok(v0))
        {
          goto LABEL_8;
        }

        v41 = OUTLINED_FUNCTION_53_1();
        if (!lpta_loadp_setscan_r(v41, v42))
        {
          OUTLINED_FUNCTION_4_14();
          if (!test_string_s())
          {
            *(v0 + 2766) = *(v0 + 2770);
            OUTLINED_FUNCTION_87_1();
            punctuation();
          }
        }

        break;
      case 15:
LABEL_30:
        OUTLINED_FUNCTION_87_1();
        build_phrase_final_structure();
        goto LABEL_31;
      case 17:
LABEL_31:
        *(v0 + 2766) = *(v0 + 2770);
        break;
      default:
        goto LABEL_4;
    }

    break;
  }

LABEL_32:
  *(v49 + 8) = v52;
  vretproc(v0);
LABEL_5:
  v14 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_113();
}

void three_letter_extension()
{
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_76_1();
  v69 = *MEMORY[0x277D85DE8];
  v64[0] = 0;
  v64[1] = 0;
  v63[0] = 0;
  v63[1] = 0;
  OUTLINED_FUNCTION_78_1();
  OUTLINED_FUNCTION_58_1();
  bzero(v58, v1);
  OUTLINED_FUNCTION_57_1();
  bzero(v68, v2);
  if (!setjmp(v68))
  {
    v3 = ventproc(v0, v58, v67, v66, v65, v68);
    if (!v3)
    {
      OUTLINED_FUNCTION_62_1(v3, v64);
      push_ptr_init(v0, v63);
      v4 = OUTLINED_FUNCTION_128();
      push_ptr_init(v4, v5);
      push_ptr_init(v0, v61);
      v6 = OUTLINED_FUNCTION_107();
      push_ptr_init(v6, v7);
      fence_16(v0, 0, &_MergedGlobals_1_0);
      if (*(v0 + 2746) == *(v0 + 2742))
      {
        v8 = 0;
        OUTLINED_FUNCTION_166();
        v57 = v9;
        while (2)
        {
          starttest(v0, v9);
          v10 = OUTLINED_FUNCTION_74_1();
          bspush_ca(v10);
          v11 = OUTLINED_FUNCTION_70_1();
          v13 = lpta_loadp_setscan_l(v11, v12);
          v14 = v8;
          if (!v13)
          {
LABEL_6:
            v8 = v14;
            v15 = OUTLINED_FUNCTION_74_1();
            if (!lpta_loadp_setscan_r(v15, v16))
            {
              OUTLINED_FUNCTION_4_14();
              v17 = test_string_s();
              v18 = v8;
              if (!v17)
              {
LABEL_8:
                v8 = v18;
                v19 = OUTLINED_FUNCTION_134();
                savescptr(v19, v20, v63);
                v21 = OUTLINED_FUNCTION_111();
                bspush_ca_scan(v21, v22);
                v23 = OUTLINED_FUNCTION_106();
                bspush_ca_scan(v23, v24);
                v25 = OUTLINED_FUNCTION_51_1();
                v27 = testFldeq(v25, v26, 3, 1);
                v28 = v8;
                if (!v27)
                {
LABEL_9:
                  v8 = v28;
                  bspush_ca_scan_boa();
                  v29 = OUTLINED_FUNCTION_51_1();
                  if (!testFldeq(v29, v30, 0, 73))
                  {
                    v8 = 1;
                  }
                }
              }
            }
          }

          v31 = v8;
LABEL_12:
          v32 = *(v0 + 104);
          if (v32)
          {
            v33 = OUTLINED_FUNCTION_65_1(v32);
            v8 = v34;
          }

          else
          {
            v33 = vback(v0, v31);
            v8 = 0;
          }

          v14 = v8;
          switch(v33)
          {
            case 1:
              v9 = v57;
              continue;
            case 2:
              *(v0 + 2504) = v60;
              *(v0 + 2726) = *(v0 + 2730);
              vretproc(v0);
              goto LABEL_34;
            case 4:
              v35 = OUTLINED_FUNCTION_74_1();
              v37 = lpta_loadp_setscan_l(v35, v36);
              v31 = v8;
              if (!v37)
              {
                OUTLINED_FUNCTION_4_14();
                v38 = test_string_s();
                v14 = v8;
                v31 = v8;
                if (!v38)
                {
                  goto LABEL_6;
                }
              }

              goto LABEL_12;
            case 5:
              goto LABEL_6;
            case 6:
              v18 = v8;
              goto LABEL_8;
            case 7:
              OUTLINED_FUNCTION_4_14();
              v43 = test_string_s();
              v31 = v8;
              if (v43)
              {
                goto LABEL_12;
              }

              goto LABEL_23;
            case 8:
              goto LABEL_29;
            case 9:
              bspop_boa(v0);
              v50 = advance_tok(v0);
              v31 = v8;
              if (v50)
              {
                goto LABEL_12;
              }

              goto LABEL_28;
            case 10:
LABEL_28:
              v51 = OUTLINED_FUNCTION_54_1();
              savescptr(v51, v52, v62);
LABEL_29:
              v53 = OUTLINED_FUNCTION_51_1();
              v55 = testFldeq(v53, v54, 3, 1);
              v31 = v8;
              if (!v55)
              {
                goto LABEL_30;
              }

              goto LABEL_12;
            case 11:
              bspop_boa(v0);
              v39 = advance_tok(v0);
              v31 = v8;
              if (v39)
              {
                goto LABEL_12;
              }

              v40 = OUTLINED_FUNCTION_51_1();
              v42 = testFldeq(v40, v41, 3, 1);
              v31 = v8;
              if (v42)
              {
                goto LABEL_12;
              }

LABEL_30:
              v28 = v8;
              goto LABEL_9;
            case 12:
              bspop_boa(v0);
              v46 = advance_tok(v0);
              v31 = v8;
              if (v46)
              {
                goto LABEL_12;
              }

              goto LABEL_25;
            case 13:
              goto LABEL_25;
            case 14:
LABEL_23:
              v44 = OUTLINED_FUNCTION_81_1();
              savescptr(v44, v45, v61);
LABEL_25:
              v47 = OUTLINED_FUNCTION_91_0();
              savescptr(v47, v48, v59);
              OUTLINED_FUNCTION_84_1();
              v49 = end_of_word();
              v31 = v8;
              if (!v49)
              {
                goto LABEL_33;
              }

              goto LABEL_12;
            default:
              goto LABEL_33;
          }
        }
      }
    }
  }

LABEL_33:
  vretproc(v0);
LABEL_34:
  v56 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_113();
}

void interpret_single_char_modes()
{
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_11_14();
  v90 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_18_10(v2, v3, v4, v5, v6, v7, v8, v9, v55, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84);
  OUTLINED_FUNCTION_57_1();
  OUTLINED_FUNCTION_177(v10, v11, v12, v13, v14, v15, v16, v17, v56, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89);
  v18 = setjmp(v1);
  if (v18)
  {
    goto LABEL_4;
  }

  if (OUTLINED_FUNCTION_44_1(v18, &v58, v19, v20, v21, v22, v23, v24, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, SBYTE4(v85), v86, SWORD2(v86), SBYTE6(v86), v87, SWORD2(v87), SBYTE6(v87), SHIBYTE(v87), v88, v89))
  {
    goto LABEL_4;
  }

  v25 = OUTLINED_FUNCTION_72_1();
  get_parm(v25, v26, v27, -6);
  OUTLINED_FUNCTION_62_1(v28, &v81);
  fence_16(v0, 0, &_MergedGlobals_1_0);
  v29 = *(v0 + 2742);
  if (*(v0 + 2746) == v29)
  {
    goto LABEL_4;
  }

  while (2)
  {
    if (*(v0 + 2754) == v29)
    {
      OUTLINED_FUNCTION_124();
      single_chars_token();
      goto LABEL_24;
    }

LABEL_6:
    v31 = OUTLINED_FUNCTION_55_1();
    starttest(v31, v32);
    v33 = OUTLINED_FUNCTION_156();
    if (lpta_loadp_setscan_r(v33, v34))
    {
LABEL_21:
      v51 = OUTLINED_FUNCTION_86_1();
      lpta_loadpn(v51, v52);
      v53 = OUTLINED_FUNCTION_104();
      rpta_loadpn(v53, v54);
      if (!compare_ptas(v0) && !testeq(v0))
      {
        break;
      }

LABEL_23:
      OUTLINED_FUNCTION_124();
      single_chars();
LABEL_24:
      OUTLINED_FUNCTION_95_0(v82);
      break;
    }

LABEL_7:
    v35 = OUTLINED_FUNCTION_64_1();
    bspush_ca_scan(v35, v36);
LABEL_8:
    v37 = OUTLINED_FUNCTION_81_1();
    savescptr(v37, v38, &v81);
    v39 = OUTLINED_FUNCTION_84_1();
    bspush_ca_scan(v39, v40);
    OUTLINED_FUNCTION_39_1();
    if (!test_string_s())
    {
      goto LABEL_21;
    }

LABEL_9:
    v41 = *(v0 + 104);
    if (v41)
    {
      v42 = OUTLINED_FUNCTION_65_1(v41);
    }

    else
    {
      v42 = OUTLINED_FUNCTION_133();
    }

    switch(v42)
    {
      case 1:
        v29 = *(v0 + 2742);
        continue;
      case 2:
      case 4:
        goto LABEL_24;
      case 3:
        goto LABEL_6;
      case 5:
        goto LABEL_21;
      case 6:
        goto LABEL_7;
      case 7:
        if (!advance_tok(v0))
        {
          goto LABEL_7;
        }

        goto LABEL_9;
      case 8:
        goto LABEL_8;
      case 9:
        v43 = OUTLINED_FUNCTION_91_0();
        bspush_ca_scan(v43, v44);
        OUTLINED_FUNCTION_96_0();
        OUTLINED_FUNCTION_116();
        if (!testFldeq(v45, v46, v47, v48) && !advance_tok(v0))
        {
          goto LABEL_21;
        }

        goto LABEL_9;
      case 10:
        *(v0 + 136) = 1;
        v49 = *(v0 + 1392);
        v50 = OUTLINED_FUNCTION_12_14();
        if (!test_ptr(v50))
        {
          goto LABEL_21;
        }

        goto LABEL_9;
      case 11:
        goto LABEL_23;
      default:
        goto LABEL_4;
    }
  }

LABEL_4:
  vretproc(v0);
  v30 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_154();
  OUTLINED_FUNCTION_113();
}

void tok_lookup()
{
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_76_1();
  v199 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_10_14(v2, v3, v4, v5, v6, v7, v8, v9, v121, v124, v127, v130, v133, v136, v139, v142, v145, v148, v151, v154, v157, v160, v163, v166, v169, v172, v175, v178, v181, v184, v187, v190, v191, v192, v193);
  OUTLINED_FUNCTION_57_1();
  OUTLINED_FUNCTION_164(v10, v11, v12, v13, v14, v15, v16, v17, v122, v125, v128, v131, v134, v137, v140, v143, v146, v149, v152, v155, v158, v161, v164, v167, v170, v173, v176, v179, v182, v185, v188, v190, v191, v192, v193, v194, v195, v196, v197, v198);
  if (!setjmp(v1))
  {
    OUTLINED_FUNCTION_0_16();
    v26 = OUTLINED_FUNCTION_132(v18, v19, v20, v21, v22, v23, v24, v25, v123, v126, v129, v132, v135, v138, v141, v144, v147, v150, v153, v156, v159, v162, v165, v168, v171, v174, v177, v180, v183, v186, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198);
    if (!v26)
    {
      OUTLINED_FUNCTION_62_1(v26, &v192);
      v28 = OUTLINED_FUNCTION_66_1();
      push_ptr_init(v28, v29);
      fence_16(v0, 0, &_MergedGlobals_1_0);
      v30 = *(v0 + 5110);
      OUTLINED_FUNCTION_88_1();
      if (v31 || (OUTLINED_FUNCTION_180(), OUTLINED_FUNCTION_150(), compare_ptas(v0)) || testneq(v0))
      {
        v32 = 0;
        OUTLINED_FUNCTION_143();
        OUTLINED_FUNCTION_145();
        while (2)
        {
          v33 = OUTLINED_FUNCTION_55_1();
          starttest(v33, v34);
          v35 = OUTLINED_FUNCTION_29_5();
          if (!lpta_loadp_setscan_r(v35, v36))
          {
LABEL_9:
            v37 = OUTLINED_FUNCTION_70_1();
            bspush_ca_scan(v37, v38);
            OUTLINED_FUNCTION_64_1();
            bspush_ca_scan_boa();
            v39 = OUTLINED_FUNCTION_51_1();
            if (testFldeq(v39, v40, 0, 72))
            {
              v41 = v32;
            }

            else
            {
              v41 = 1;
            }

LABEL_12:
            v42 = *(v0 + 104);
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

            v32 = v45;
            switch(v43)
            {
              case 1:
                v32 = v45;
                continue;
              case 3:
                OUTLINED_FUNCTION_36_2();
                bspush_ca_scan_boa();
                v46 = OUTLINED_FUNCTION_9_14();
                v49 = 4;
                goto LABEL_53;
              case 4:
                bspop_boa(v0);
                v56 = advance_tok(v0);
                v32 = v45;
                v41 = v45;
                if (!v56)
                {
                  goto LABEL_9;
                }

                goto LABEL_12;
              case 5:
                goto LABEL_9;
              case 6:
                bspop_boa(v0);
                OUTLINED_FUNCTION_27_6();
                bspush_ca_scan_boa();
                v46 = OUTLINED_FUNCTION_6_14();
                v49 = 72;
                goto LABEL_53;
              case 7:
                bspop_boa(v0);
                v59 = advance_tok(v0);
                v41 = v45;
                if (v59)
                {
                  goto LABEL_12;
                }

                goto LABEL_27;
              case 8:
LABEL_27:
                v60 = OUTLINED_FUNCTION_83_1();
                savescptr(v60, v61, v62);
                goto LABEL_28;
              case 9:
LABEL_28:
                v63 = OUTLINED_FUNCTION_45_1();
                starttest(v63, v64);
                v65 = OUTLINED_FUNCTION_31_4();
                if (lpta_loadp_setscan_l(v65, v66))
                {
                  goto LABEL_29;
                }

                goto LABEL_30;
              case 10:
LABEL_29:
                v67 = OUTLINED_FUNCTION_52_1();
                startloop(v67, v68);
                goto LABEL_42;
              case 11:
                v54 = OUTLINED_FUNCTION_32_3();
                bspush_ca_scan(v54, v55);
                goto LABEL_36;
              case 12:
                goto LABEL_37;
              case 13:
                v74 = OUTLINED_FUNCTION_33_3();
                bspush_ca_scan(v74, v75);
                goto LABEL_36;
              case 14:
                v76 = OUTLINED_FUNCTION_46_1();
                bspush_ca_scan(v76, v77);
                goto LABEL_36;
              case 15:
                v57 = OUTLINED_FUNCTION_41_1();
                bspush_ca_scan(v57, v58);
                goto LABEL_36;
              case 16:
                goto LABEL_36;
              case 17:
LABEL_30:
                v69 = OUTLINED_FUNCTION_40_1();
                bspush_ca_scan(v69, v70);
LABEL_36:
                OUTLINED_FUNCTION_4_14();
                v78 = test_string_s();
                v41 = v45;
                if (v78)
                {
                  goto LABEL_12;
                }

LABEL_37:
                v79 = OUTLINED_FUNCTION_52_1();
                bspush_ca_scan(v79, v80);
                OUTLINED_FUNCTION_98_0();
                v81 = OUTLINED_FUNCTION_12_14();
                v82 = test_ptr(v81);
                v41 = v45;
                if (!v82)
                {
                  goto LABEL_3;
                }

                goto LABEL_12;
              case 19:
              case 31:
                goto LABEL_42;
              case 20:
                goto LABEL_44;
              case 21:
                goto LABEL_48;
              case 22:
                goto LABEL_45;
              case 23:
                OUTLINED_FUNCTION_50_1();
                if (!tok_dict_entry())
                {
                  goto LABEL_3;
                }

                goto LABEL_48;
              case 24:
                bspop_boa(v0);
                goto LABEL_48;
              case 25:
                goto LABEL_49;
              case 26:
                v71 = OUTLINED_FUNCTION_83_1();
                savescptr(v71, v72, v73);
                goto LABEL_49;
              case 27:
                v83 = OUTLINED_FUNCTION_3_15();
                v87 = testFldeq(v83, v84, v85, v86);
                v41 = v45;
                if (v87)
                {
                  goto LABEL_12;
                }

                goto LABEL_40;
              case 28:
                bspop_boa(v0);
                goto LABEL_40;
              case 29:
LABEL_40:
                v88 = advance_tok(v0);
                v41 = v45;
                if (!v88)
                {
                  goto LABEL_51;
                }

                goto LABEL_12;
              case 30:
                goto LABEL_51;
              case 32:
                bspop_boa(v0);
                v50 = advance_tok(v0);
                v41 = v45;
                if (v50)
                {
                  goto LABEL_12;
                }

                goto LABEL_18;
              case 33:
LABEL_18:
                v51 = OUTLINED_FUNCTION_83_1();
                savescptr(v51, v52, v53);
                break;
              default:
                goto LABEL_3;
            }

            while (1)
            {
LABEL_42:
              v89 = OUTLINED_FUNCTION_66_1();
              lpta_loadpn(v89, v90);
              v91 = OUTLINED_FUNCTION_67_1();
              rpta_loadpn(v91, v92);
              if (!compare_ptas(v0) && !testeq(v0))
              {
                goto LABEL_3;
              }

LABEL_44:
              v93 = OUTLINED_FUNCTION_52_1();
              starttest(v93, v94);
              v95 = OUTLINED_FUNCTION_31_4();
              if (lpta_loadp_setscan_l(v95, v96))
              {
                break;
              }

              v100 = OUTLINED_FUNCTION_9_14();
              v103 = testFldeq(v100, v101, v102, 4);
              v41 = v45;
              if (v103)
              {
                goto LABEL_12;
              }

              v104 = advance_tok(v0);
              v41 = v45;
              if (v104)
              {
                goto LABEL_12;
              }

LABEL_48:
              v105 = OUTLINED_FUNCTION_52_1();
              starttest(v105, v106);
              v107 = OUTLINED_FUNCTION_31_4();
              if (!lpta_loadp_setscan_l(v107, v108))
              {
LABEL_51:
                v112 = OUTLINED_FUNCTION_49_1();
                bspush_ca_scan(v112, v113);
                v114 = OUTLINED_FUNCTION_52_1();
                bspush_ca_scan(v114, v115);
                v116 = OUTLINED_FUNCTION_1_15();
                v120 = testFldeq(v116, v117, v118, v119);
                v41 = v45;
                if (v120)
                {
                  goto LABEL_12;
                }

                OUTLINED_FUNCTION_52_1();
                bspush_ca_scan_boa();
                v46 = OUTLINED_FUNCTION_6_14();
                v49 = 73;
LABEL_53:
                v99 = testFldeq(v46, v47, v48, v49);
                goto LABEL_54;
              }

LABEL_49:
              v109 = OUTLINED_FUNCTION_52_1();
              starttest(v109, v110);
              if (!lpta_loadp_setscan_l(v0, &v190))
              {
                OUTLINED_FUNCTION_52_1();
                bspush_ca_scan_boa();
                *(v0 + 136) = 1;
                v111 = OUTLINED_FUNCTION_12_14();
                v99 = test_ptr(v111);
LABEL_54:
                if (v99)
                {
                  v41 = v45;
                }

                else
                {
                  v41 = 1;
                }

                goto LABEL_12;
              }
            }

LABEL_45:
            v97 = OUTLINED_FUNCTION_52_1();
            starttest(v97, v98);
            OUTLINED_FUNCTION_52_1();
            bspush_ca_boa();
            OUTLINED_FUNCTION_66_1();
            v99 = end_of_word();
            goto LABEL_54;
          }

          break;
        }
      }
    }
  }

LABEL_3:
  vretproc(v0);
  v27 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_113();
}

uint64_t punctuation()
{
  OUTLINED_FUNCTION_11_14();
  v161 = *MEMORY[0x277D85DE8];
  v158 = 0;
  v159 = 0;
  OUTLINED_FUNCTION_10_14(v1, v2, v3, v4, v5, v6, v7, v8, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142, v144, v146, v148, v150, v152, v154, v156, v157);
  OUTLINED_FUNCTION_57_1();
  bzero(v160, v9);
  if (!setjmp(v160))
  {
    OUTLINED_FUNCTION_119();
    if (!ventproc(v0, v10, v11, v12, v13, v160))
    {
      v14 = OUTLINED_FUNCTION_13_14();
      get_parm(v14, v15, v16, -6);
      OUTLINED_FUNCTION_62_1(v17, &v156);
      v18 = OUTLINED_FUNCTION_66_1();
      push_ptr_init(v18, v19);
      fence_16(v0, 0, &_MergedGlobals_1_0);
      v20 = OUTLINED_FUNCTION_110();
      starttest(v20, v21);
      v22 = OUTLINED_FUNCTION_54_1();
      if (!lpta_loadp_setscan_r(v22, v23))
      {
        v26 = OUTLINED_FUNCTION_9_14();
        if (testFldeq(v26, v27, v28, 4))
        {
          v29 = 0;
          goto LABEL_60;
        }

        v29 = 0;
        v30 = 0;
        if (advance_tok(v0))
        {
          goto LABEL_60;
        }

        while (2)
        {
          OUTLINED_FUNCTION_75_1();
          v31 = OUTLINED_FUNCTION_72_1();
          savescptr(v31, v32, v33);
          *(v0 + 2614) = *(v0 + 2650);
          OUTLINED_FUNCTION_56_1();
          read_punct_by_name();
          if (!v34)
          {
LABEL_53:
            OUTLINED_FUNCTION_131(v34, v35, v36, v37, v38, v39, v40, v41, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, v141, v143, v145, v147, v149, v151, v153, v155, v156, v157);
            result = 0;
            goto LABEL_5;
          }

LABEL_10:
          v42 = OUTLINED_FUNCTION_7_14();
          if (lpta_loadp_setscan_r(v42, v43) || (OUTLINED_FUNCTION_4_14(), test_string_s()))
          {
LABEL_12:
            v44 = OUTLINED_FUNCTION_7_14();
            if (lpta_loadp_setscan_r(v44, v45) || (OUTLINED_FUNCTION_4_14(), test_string_s()))
            {
LABEL_14:
              v46 = OUTLINED_FUNCTION_7_14();
              if (!lpta_loadp_setscan_r(v46, v47))
              {
                OUTLINED_FUNCTION_4_14();
                if (!test_string_s())
                {
                  *(v0 + 2538) = *(v0 + 2574);
                  v64 = OUTLINED_FUNCTION_38_2();
                  starttest_l(v64, v65);
                  v66 = OUTLINED_FUNCTION_14_12();
                  v68 = lpta_loadp_setscan_r(v66, v67);
                  v59 = 13;
                  v69 = v30;
                  if (!v68)
                  {
                    while (1)
                    {
                      v29 = v69;
                      v71 = OUTLINED_FUNCTION_37_2();
                      bspush_ca_scan(v71, v72);
                      OUTLINED_FUNCTION_4_14();
                      v73 = test_string_s();
                      v35 = v29;
                      if (v73)
                      {
                        break;
                      }

LABEL_27:
                      v30 = v35;
                      v74 = OUTLINED_FUNCTION_40_1();
                      bspush_ca_scan(v74, v75);
LABEL_25:
                      v69 = v30;
                    }

LABEL_60:
                    v30 = v29;
LABEL_61:
                    v98 = *(v0 + 104);
                    if (v98)
                    {
                      v34 = OUTLINED_FUNCTION_60_1(v98);
                    }

                    else
                    {
                      v34 = vback(v0, v30);
                      v30 = 0;
                    }

                    v35 = v30;
                    v62 = v30;
                    switch(v34)
                    {
                      case 2:
                        continue;
                      case 3:
                        goto LABEL_10;
                      case 4:
                        goto LABEL_12;
                      case 5:
                      case 13:
                      case 24:
                        goto LABEL_41;
                      case 6:
                        goto LABEL_14;
                      case 7:
                        goto LABEL_16;
                      case 8:
                        goto LABEL_55;
                      case 9:
                        OUTLINED_FUNCTION_4_14();
                        v99 = test_string_s();
                        v35 = v30;
                        if (!v99)
                        {
                          goto LABEL_27;
                        }

                        goto LABEL_61;
                      case 10:
                        goto LABEL_27;
                      case 11:
                        OUTLINED_FUNCTION_109();
                        v94 = OUTLINED_FUNCTION_59_1();
                        savescptr(v94, v95, v96);
                        *(v0 + 2538) = *(v0 + 2578);
LABEL_55:
                        v97 = 13;
                        goto LABEL_56;
                      case 12:
                        goto LABEL_25;
                      case 14:
                        bspop_boa(v0);
                        goto LABEL_75;
                      case 15:
                        goto LABEL_34;
                      case 16:
                        goto LABEL_19;
                      case 17:
                        OUTLINED_FUNCTION_118();
                        v100 = OUTLINED_FUNCTION_59_1();
                        savescptr(v100, v101, v102);
                        *(v0 + 2538) = *(v0 + 2594);
                        goto LABEL_19;
                      case 18:
                        v29 = v30;
                        goto LABEL_31;
                      case 19:
                        goto LABEL_73;
                      case 20:
                        v103 = OUTLINED_FUNCTION_59_1();
                        savescptr(v103, v104, v105);
                        *(v0 + 2538) = *(v0 + 2578);
LABEL_73:
                        OUTLINED_FUNCTION_148();
LABEL_56:
                        v59 = v97;
                        goto LABEL_57;
                      case 21:
                        OUTLINED_FUNCTION_4_14();
                        v62 = v30;
                        if (!test_string_s())
                        {
                          goto LABEL_28;
                        }

                        goto LABEL_61;
                      case 22:
                      case 23:
                        goto LABEL_28;
                      case 25:
                        bspop_boa(v0);
                        if (*(v0 + 2578) != *(v0 + 2538))
                        {
                          goto LABEL_33;
                        }

LABEL_75:
                        v70 = *(v0 + 2582);
                        break;
                      case 26:
LABEL_33:
                        v70 = *(v0 + 2598);
                        break;
                      case 27:
                        goto LABEL_36;
                      case 28:
                        goto LABEL_42;
                      case 29:
                        goto LABEL_43;
                      case 30:
                        goto LABEL_48;
                      case 31:
                        goto LABEL_46;
                      case 32:
                        goto LABEL_47;
                      case 33:
                      case 34:
                        goto LABEL_53;
                      default:
                        goto LABEL_4;
                    }

                    goto LABEL_40;
                  }

LABEL_57:
                  starttest(v0, v59);
                  OUTLINED_FUNCTION_55_1();
                  bspush_ca_boa();
                  OUTLINED_FUNCTION_56_1();
                  if (end_of_sentence())
                  {
                    v29 = v30;
                  }

                  else
                  {
                    v29 = 1;
                  }

                  goto LABEL_60;
                }
              }

LABEL_16:
              v48 = OUTLINED_FUNCTION_7_14();
              if (!lpta_loadp_setscan_r(v48, v49))
              {
                OUTLINED_FUNCTION_4_14();
                if (!test_string_s())
                {
                  *(v0 + 2538) = *(v0 + 2590);
                  v50 = OUTLINED_FUNCTION_41_1();
                  starttest_l(v50, v51);
                  v52 = OUTLINED_FUNCTION_14_12();
                  v29 = v30;
                  if (!lpta_loadp_setscan_r(v52, v53))
                  {
LABEL_31:
                    while (1)
                    {
                      OUTLINED_FUNCTION_4_14();
                      if (test_string_s())
                      {
                        break;
                      }

                      v80 = OUTLINED_FUNCTION_54_1();
                      bspush_ca_scan(v80, v81);
                    }

                    goto LABEL_60;
                  }

LABEL_19:
                  v54 = OUTLINED_FUNCTION_52_1();
                  starttest(v54, v55);
                  v56 = OUTLINED_FUNCTION_14_12();
                  lpta_loadp_setscan_r(v56, v57);
                  OUTLINED_FUNCTION_148();
                  v59 = v58;
                  if (!v60)
                  {
                    OUTLINED_FUNCTION_4_14();
                    test_string_s();
                    OUTLINED_FUNCTION_148();
                    v59 = v61;
                    v62 = v30;
                    if (!v63)
                    {
                      do
                      {
LABEL_28:
                        v76 = OUTLINED_FUNCTION_55_1();
                        bspush_ca_scan(v76, v77);
                        v78 = OUTLINED_FUNCTION_54_1();
                        bspush_ca_scan(v78, v79);
                        OUTLINED_FUNCTION_4_14();
                      }

                      while (!test_string_s());
                      v29 = v62;
                      goto LABEL_60;
                    }
                  }

                  goto LABEL_57;
                }
              }

LABEL_34:
              v82 = OUTLINED_FUNCTION_7_14();
              if (lpta_loadp_setscan_r(v82, v83) || (OUTLINED_FUNCTION_4_14(), test_string_s()))
              {
LABEL_36:
                v84 = OUTLINED_FUNCTION_7_14();
                if (lpta_loadp_setscan_r(v84, v85) || (OUTLINED_FUNCTION_4_14(), test_string_s()))
                {
LABEL_41:
                  OUTLINED_FUNCTION_67_1();
                  skip_punct_and_delimiters();
LABEL_42:
                  OUTLINED_FUNCTION_67_1();
                  v34 = build_phrase_final_structure();
LABEL_43:
                  if (*(v0 + 2546) == *(v0 + 2538))
                  {
                    v86 = OUTLINED_FUNCTION_67_1();
                    lpta_loadpn(v86, v87);
                    rpta_loadpn(v0, v0 + 1384);
                    v34 = compare_ptas(v0);
                    if (v34 || (v34 = testeq(v0), v34))
                    {
LABEL_46:
                      if (!*(v0 + 2766))
                      {
LABEL_47:
                        *(v0 + 2538) = 0;
                        v88 = OUTLINED_FUNCTION_56_1();
                        lpta_loadpn(v88, v89);
                        OUTLINED_FUNCTION_94_0();
                        lpta_ctxtl();
                        v90 = OUTLINED_FUNCTION_66_1();
                        lpta_storep(v90, v91);
                        OUTLINED_FUNCTION_98_0();
                        OUTLINED_FUNCTION_12_14();
                        v34 = proj_def();
                      }
                    }
                  }

LABEL_48:
                  if (*(v0 + 2570) == *(v0 + 2538))
                  {
                    v92 = OUTLINED_FUNCTION_7_14();
                    v34 = lpta_loadp_setscan_r(v92, v93);
                    if (!v34)
                    {
                      v34 = advance_tok(v0);
                      if (!v34)
                      {
                        OUTLINED_FUNCTION_4_14();
                        v34 = test_string_s();
                        if (!v34)
                        {
                          OUTLINED_FUNCTION_172();
                        }
                      }
                    }
                  }

                  goto LABEL_53;
                }

                v70 = *(v0 + 2546);
              }

              else
              {
                v70 = *(v0 + 2586);
              }

LABEL_40:
              *(v0 + 2538) = v70;
              goto LABEL_41;
            }
          }

          break;
        }

        v70 = *(v0 + 2570);
        goto LABEL_40;
      }
    }
  }

LABEL_4:
  vretproc(v0);
  result = 94;
LABEL_5:
  v25 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t parenthesis()
{
  OUTLINED_FUNCTION_11_14();
  v146 = *MEMORY[0x277D85DE8];
  v144 = 0;
  v145 = 0;
  v142 = 0;
  v143 = 0;
  OUTLINED_FUNCTION_10_14(v2, v3, v4, v5, v6, v7, v8, v9, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141);
  OUTLINED_FUNCTION_57_1();
  OUTLINED_FUNCTION_161(v10, v11);
  if (setjmp(v1))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_82_1();
  if (OUTLINED_FUNCTION_160(v12, v13, v14, v15, v16))
  {
    goto LABEL_3;
  }

  v19 = OUTLINED_FUNCTION_13_14();
  get_parm(v19, v20, v21, -6);
  OUTLINED_FUNCTION_62_1(v22, &v142);
  v23 = OUTLINED_FUNCTION_56_1();
  push_ptr_init(v23, v24);
  v25 = OUTLINED_FUNCTION_67_1();
  push_ptr_init(v25, v26);
  v27 = OUTLINED_FUNCTION_66_1();
  push_ptr_init(v27, v28);
  v29 = OUTLINED_FUNCTION_73_1();
  fence_16(v29, v30, v31);
  v32 = OUTLINED_FUNCTION_139();
  starttest(v32, v33);
  v34 = OUTLINED_FUNCTION_54_1();
  v36 = 0;
  v37 = 0;
  if (lpta_loadp_setscan_r(v34, v35))
  {
LABEL_6:
    v38 = OUTLINED_FUNCTION_53_1();
    if (lpta_loadp_setscan_r(v38, v39) || (OUTLINED_FUNCTION_4_14(), v40 = v37, test_string_s()))
    {
LABEL_3:
      vretproc(v0);
      result = 94;
      goto LABEL_4;
    }

LABEL_8:
    v41 = OUTLINED_FUNCTION_72_1();
    savescptr(v41, v42, v43);
    v44 = OUTLINED_FUNCTION_52_1();
    starttest(v44, v45);
    OUTLINED_FUNCTION_72_1();
    if (in_quotes())
    {
LABEL_9:
      v46 = OUTLINED_FUNCTION_49_1();
      starttest(v46, v47);
      OUTLINED_FUNCTION_52_1();
      bspush_ca_boa();
      OUTLINED_FUNCTION_85_1();
      v48 = end_of_word();
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_52_1();
    bspush_ca_boa();
    v49 = OUTLINED_FUNCTION_53_1();
    if (lpta_loadp_setscan_l(v49, v50))
    {
      v36 = v40;
    }

    else
    {
      v51 = OUTLINED_FUNCTION_52_1();
      bspush_ca_scan(v51, v52);
      OUTLINED_FUNCTION_4_14();
      v53 = test_string_s();
      v54 = v40;
      v36 = v40;
      if (!v53)
      {
LABEL_16:
        v40 = v54;
        OUTLINED_FUNCTION_125();
        v55 = OUTLINED_FUNCTION_72_1();
        savescptr(v55, v56, v57);
        OUTLINED_FUNCTION_52_1();
        bspush_ca_boa();
        OUTLINED_FUNCTION_55_1();
        beg_of_word();
LABEL_10:
        if (v48)
        {
          v36 = v40;
        }

        else
        {
          v36 = 1;
        }
      }
    }
  }

  else
  {
LABEL_18:
    OUTLINED_FUNCTION_175();
    while (1)
    {
      OUTLINED_FUNCTION_4_14();
      if (test_string_s())
      {
        break;
      }

      v58 = OUTLINED_FUNCTION_54_1();
      bspush_ca_scan(v58, v59);
    }
  }

  v60 = v36;
  while (2)
  {
    v61 = *(v0 + 104);
    if (v61)
    {
      v62 = OUTLINED_FUNCTION_65_1(v61);
      v40 = v63;
    }

    else
    {
      v62 = vback(v0, v60);
      v40 = 0;
    }

    v54 = v40;
    switch(v62)
    {
      case 1:
        v37 = v40;
        goto LABEL_6;
      case 2:
        OUTLINED_FUNCTION_75_1();
        v75 = OUTLINED_FUNCTION_123();
        savescptr(v75, v76, v77);
        v78 = OUTLINED_FUNCTION_52_1();
        starttest(v78, v79);
        v80 = OUTLINED_FUNCTION_53_1();
        if (lpta_loadp_setscan_l(v80, v81))
        {
          goto LABEL_32;
        }

        goto LABEL_35;
      case 3:
        v36 = v40;
        goto LABEL_18;
      case 4:
LABEL_32:
        v82 = OUTLINED_FUNCTION_37_2();
        starttest(v82, v83);
        OUTLINED_FUNCTION_123();
        if (in_quotes())
        {
          goto LABEL_55;
        }

        OUTLINED_FUNCTION_45_1();
        bspush_ca_boa();
        v84 = OUTLINED_FUNCTION_28_5();
        v86 = lpta_loadp_setscan_r(v84, v85);
        v60 = v40;
        if (v86)
        {
          continue;
        }

        v87 = OUTLINED_FUNCTION_40_1();
        bspush_ca_scan(v87, v88);
        goto LABEL_40;
      case 5:
LABEL_35:
        OUTLINED_FUNCTION_93_0();
        v89 = OUTLINED_FUNCTION_90_1();
        savescptr(v89, v90, v91);
        goto LABEL_36;
      case 6:
LABEL_36:
        v92 = OUTLINED_FUNCTION_36_2();
        v95 = test_synch(v92, v93, 1u, v94);
        v60 = v40;
        if (!v95)
        {
          v96 = OUTLINED_FUNCTION_7_14();
          v98 = lpta_loadp_setscan_r(v96, v97);
          v60 = v40;
          if (!v98)
          {
            OUTLINED_FUNCTION_51_1();
            v99 = test_string_s();
            v60 = v40;
            if (!v99)
            {
              goto LABEL_58;
            }
          }
        }

        continue;
      case 7:
LABEL_58:
        v112 = OUTLINED_FUNCTION_123();
        savescptr(v112, v113, v114);
        goto LABEL_59;
      case 8:
      case 14:
      case 16:
      case 24:
      case 25:
      case 28:
      case 32:
        goto LABEL_59;
      case 9:
LABEL_55:
        OUTLINED_FUNCTION_98_0();
        OUTLINED_FUNCTION_12_14();
        if (lpta_tstctxtl())
        {
          goto LABEL_57;
        }

        v110 = OUTLINED_FUNCTION_135();
        setscan_l(v110);
        if (v111)
        {
          goto LABEL_57;
        }

        goto LABEL_59;
      case 10:
      case 20:
      case 27:
        bspop_boa(v0);
        OUTLINED_FUNCTION_123();
        single_chars();
        goto LABEL_59;
      case 11:
LABEL_40:
        OUTLINED_FUNCTION_4_14();
        v100 = test_string_s();
        v60 = v40;
        if (!v100)
        {
          goto LABEL_41;
        }

        continue;
      case 12:
LABEL_41:
        v101 = OUTLINED_FUNCTION_72_1();
        savescptr(v101, v102, v103);
        OUTLINED_FUNCTION_32_3();
        bspush_ca_boa();
        OUTLINED_FUNCTION_55_1();
        if (end_of_word())
        {
          v60 = v40;
        }

        else
        {
          v60 = 1;
        }

        continue;
      case 13:
      case 23:
        bspop_boa(v0);
        v60 = 1;
        continue;
      case 15:
LABEL_57:
        OUTLINED_FUNCTION_85_1();
        build_phrase_final_structure();
        goto LABEL_59;
      case 18:
        goto LABEL_8;
      case 19:
        goto LABEL_9;
      case 21:
        OUTLINED_FUNCTION_4_14();
        v104 = test_string_s();
        v54 = v40;
        v60 = v40;
        if (!v104)
        {
          goto LABEL_16;
        }

        continue;
      case 22:
        goto LABEL_16;
      case 26:
        OUTLINED_FUNCTION_85_1();
        skip_delimiters();
        goto LABEL_28;
      case 29:
LABEL_28:
        v64 = OUTLINED_FUNCTION_52_1();
        starttest(v64, v65);
        v66 = OUTLINED_FUNCTION_28_5();
        if (lpta_loadp_setscan_r(v66, v67))
        {
          goto LABEL_50;
        }

        v68 = OUTLINED_FUNCTION_52_1();
        bspush_ca_scan(v68, v69);
        v70 = OUTLINED_FUNCTION_9_14();
        v73 = testFldeq(v70, v71, v72, 4);
        v60 = v40;
        if (v73)
        {
          continue;
        }

        v74 = advance_tok(v0);
LABEL_47:
        v60 = v40;
        if (!v74)
        {
          goto LABEL_59;
        }

        continue;
      case 30:
LABEL_50:
        OUTLINED_FUNCTION_85_1();
        if (end_of_sentence())
        {
          goto LABEL_51;
        }

        goto LABEL_59;
      case 31:
        OUTLINED_FUNCTION_98_0();
        v105 = *(v0 + 1392);
        v106 = OUTLINED_FUNCTION_12_14();
        v74 = test_ptr(v106);
        goto LABEL_47;
      case 33:
LABEL_51:
        v107 = *(v0 + 5098);
        OUTLINED_FUNCTION_170();
        if (!v109 && *(v0 + 5114) != v108 && *(v0 + 5102) != v108)
        {
          OUTLINED_FUNCTION_172();
        }

LABEL_59:
        OUTLINED_FUNCTION_137(v143);
        result = 0;
        break;
      default:
        goto LABEL_3;
    }

    break;
  }

LABEL_4:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

void apostrophe()
{
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_11_14();
  v90 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_16_12(v1, v2, v3, v4, v5, v6, v7, v8, v48, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78);
  OUTLINED_FUNCTION_57_1();
  bzero(v89, v9);
  v10 = setjmp(v89);
  if (v10)
  {
    goto LABEL_5;
  }

  if (OUTLINED_FUNCTION_34_3(v10, &v50, v11, v12, v13, v14, v15, v16, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89[0]))
  {
    goto LABEL_5;
  }

  v17 = OUTLINED_FUNCTION_13_14();
  get_parm(v17, v18, v19, -6);
  OUTLINED_FUNCTION_62_1(v20, &v75);
  v21 = OUTLINED_FUNCTION_104();
  push_ptr_init(v21, v22);
  fence_16(v0, 0, &_MergedGlobals_1_0);
  v23 = OUTLINED_FUNCTION_29_5();
  if (lpta_loadp_setscan_r(v23, v24))
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_24_8();
  if (test_string_s())
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_175();
  while (2)
  {
    v26 = OUTLINED_FUNCTION_54_1();
    savescptr(v26, v27, &v75);
    v28 = OUTLINED_FUNCTION_81_1();
    starttest(v28, v29);
    v30 = OUTLINED_FUNCTION_74_1();
    if (lpta_loadp_setscan_l(v30, v31))
    {
LABEL_8:
      v32 = OUTLINED_FUNCTION_74_1();
      lpta_rpta_loadp(v32, v33, &v75);
      OUTLINED_FUNCTION_80_1();
      if (!mark_s())
      {
        goto LABEL_23;
      }
    }

    else
    {
LABEL_10:
      v34 = OUTLINED_FUNCTION_84_1();
      savescptr(v34, v35, &v73);
      v36 = OUTLINED_FUNCTION_64_1();
      bspush_ca_scan(v36, v37);
      OUTLINED_FUNCTION_24_8();
      if (!test_string_s())
      {
LABEL_11:
        v38 = OUTLINED_FUNCTION_91_0();
        if (!lpta_loadp_setscan_r(v38, v39) && !advance_tok(v0))
        {
          v46 = OUTLINED_FUNCTION_112();
          bspush_ca_scan(v46, v47);
          OUTLINED_FUNCTION_24_8();
          if (!test_string_s())
          {
LABEL_22:
            OUTLINED_FUNCTION_138();
            single_chars();
LABEL_23:
            OUTLINED_FUNCTION_95_0(v76);
            break;
          }
        }
      }
    }

LABEL_12:
    v40 = *(v0 + 104);
    if (v40)
    {
      v41 = OUTLINED_FUNCTION_65_1(v40);
    }

    else
    {
      v41 = OUTLINED_FUNCTION_133();
    }

    switch(v41)
    {
      case 2:
        continue;
      case 3:
        goto LABEL_8;
      case 4:
        goto LABEL_10;
      case 5:
        *(v0 + 136) = 1;
        v42 = *(v0 + 1408);
        v43 = OUTLINED_FUNCTION_12_14();
        if (!test_ptr(v43))
        {
          goto LABEL_11;
        }

        goto LABEL_12;
      case 6:
        goto LABEL_11;
      case 7:
        *(v0 + 136) = 1;
        v44 = *(v0 + 1392);
        v45 = OUTLINED_FUNCTION_12_14();
        if (!test_ptr(v45))
        {
          goto LABEL_22;
        }

        goto LABEL_12;
      case 8:
        goto LABEL_22;
      case 9:
      case 10:
        goto LABEL_23;
      default:
        goto LABEL_5;
    }
  }

LABEL_5:
  vretproc(v0);
  v25 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_173();
  OUTLINED_FUNCTION_113();
}

uint64_t email_address()
{
  OUTLINED_FUNCTION_76_1();
  v236 = *MEMORY[0x277D85DE8];
  v231[0] = 0;
  v231[1] = 0;
  v230[0] = 0;
  v230[1] = 0;
  v229[0] = 0;
  v229[1] = 0;
  memset(v228, 0, sizeof(v228));
  OUTLINED_FUNCTION_10_14(v1, v2, v3, v4, v5, v6, v7, v8, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227);
  OUTLINED_FUNCTION_57_1();
  bzero(v235, v9);
  if (setjmp(v235))
  {
    goto LABEL_5;
  }

  v10 = ventproc(v0, &v201, v234, v233, v232, v235);
  if (v10)
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_62_1(v10, v231);
  v11 = OUTLINED_FUNCTION_151();
  push_ptr_init(v11, v12);
  push_ptr_init(v0, v229);
  v13 = OUTLINED_FUNCTION_85_1();
  push_ptr_init(v13, v14);
  v15 = OUTLINED_FUNCTION_56_1();
  push_ptr_init(v15, v16);
  v17 = OUTLINED_FUNCTION_67_1();
  push_ptr_init(v17, v18);
  v19 = OUTLINED_FUNCTION_66_1();
  push_ptr_init(v19, v20);
  fence_16(v0, 0, &_MergedGlobals_1_0);
  OUTLINED_FUNCTION_99_0();
  if (v21)
  {
    goto LABEL_5;
  }

  v24 = 0;
  while (2)
  {
    v25 = OUTLINED_FUNCTION_71_1();
    starttest(v25, v26);
    v27 = OUTLINED_FUNCTION_55_1();
    v29 = v24;
    if (lpta_loadp_setscan_r(v27, v28))
    {
LABEL_5:
      vretproc(v0);
      result = 94;
      goto LABEL_6;
    }

LABEL_8:
    while (1)
    {
      bspush_ca_scan(v0, 3);
      v30 = OUTLINED_FUNCTION_51_1();
      v32 = testFldeq(v30, v31, 3, 1);
      v33 = v29;
      if (v32)
      {
        break;
      }

LABEL_9:
      v29 = v33;
      if (advance_tok(v0))
      {
        break;
      }

      v197 = OUTLINED_FUNCTION_70_1();
      bspush_ca_scan(v197, v198);
    }

    v34 = v29;
LABEL_11:
    v35 = v0[13];
    if (v35)
    {
      v36 = OUTLINED_FUNCTION_65_1(v35);
      v24 = v37;
    }

    else
    {
      v36 = vback(v0, v34);
      v24 = 0;
    }

    v33 = v24;
    switch(v36)
    {
      case 1:
        continue;
      case 3:
        v109 = OUTLINED_FUNCTION_22_8();
        bspush_ca_scan(v109, v110);
        v111 = OUTLINED_FUNCTION_3_15();
        goto LABEL_47;
      case 4:
        goto LABEL_9;
      case 5:
        v115 = OUTLINED_FUNCTION_36_2();
        bspush_ca_scan(v115, v116);
        v111 = OUTLINED_FUNCTION_6_14();
        v114 = 75;
        goto LABEL_47;
      case 6:
        v111 = OUTLINED_FUNCTION_6_14();
        v114 = 63;
LABEL_47:
        v117 = testFldeq(v111, v112, v113, v114);
        v33 = v24;
        v34 = v24;
        if (!v117)
        {
          goto LABEL_9;
        }

        goto LABEL_11;
      case 7:
      case 14:
        v43 = OUTLINED_FUNCTION_37_2();
        bspush_ca_scan(v43, v44);
        OUTLINED_FUNCTION_4_14();
        v45 = test_string_s();
        v34 = v24;
        if (v45)
        {
          goto LABEL_11;
        }

        goto LABEL_90;
      case 8:
        v29 = v24;
        goto LABEL_8;
      case 9:
        savescptr(v0, 9, v230);
        OUTLINED_FUNCTION_4_14();
        v120 = test_string_s();
        v34 = v24;
        if (v120)
        {
          goto LABEL_11;
        }

        goto LABEL_51;
      case 10:
        v76 = OUTLINED_FUNCTION_35_2();
        bspush_ca_scan(v76, v77);
        v72 = OUTLINED_FUNCTION_3_15();
        goto LABEL_91;
      case 11:
        goto LABEL_92;
      case 12:
        v70 = OUTLINED_FUNCTION_32_3();
        bspush_ca_scan(v70, v71);
        v72 = OUTLINED_FUNCTION_6_14();
        v75 = 75;
        goto LABEL_91;
      case 13:
        v72 = OUTLINED_FUNCTION_6_14();
        v75 = 63;
        goto LABEL_91;
      case 15:
LABEL_90:
        while (2)
        {
          v191 = OUTLINED_FUNCTION_45_1();
          bspush_ca_scan(v191, v192);
          v72 = OUTLINED_FUNCTION_1_15();
LABEL_91:
          v193 = testFldeq(v72, v73, v74, v75);
          v34 = v24;
          if (!v193)
          {
LABEL_92:
            v194 = advance_tok(v0);
            v34 = v24;
            if (!v194)
            {
              v195 = OUTLINED_FUNCTION_33_3();
              bspush_ca_scan(v195, v196);
              continue;
            }
          }

          break;
        }

        goto LABEL_11;
      case 16:
LABEL_51:
        savescptr(v0, 16, v229);
        goto LABEL_86;
      case 17:
        v78 = OUTLINED_FUNCTION_52_1();
        bspush_ca_scan(v78, v79);
        v80 = OUTLINED_FUNCTION_3_15();
        goto LABEL_87;
      case 18:
        goto LABEL_88;
      case 19:
        v118 = OUTLINED_FUNCTION_52_1();
        bspush_ca_scan(v118, v119);
        v80 = OUTLINED_FUNCTION_6_14();
        v83 = 75;
        goto LABEL_87;
      case 20:
        v80 = OUTLINED_FUNCTION_6_14();
        v83 = 63;
        goto LABEL_87;
      case 21:
        OUTLINED_FUNCTION_4_14();
        v121 = test_string_s();
        v34 = v24;
        if (v121)
        {
          goto LABEL_11;
        }

        goto LABEL_89;
      case 22:
LABEL_86:
        while (2)
        {
          v185 = OUTLINED_FUNCTION_52_1();
          bspush_ca_scan(v185, v186);
          v80 = OUTLINED_FUNCTION_1_15();
LABEL_87:
          v187 = testFldeq(v80, v81, v82, v83);
          v34 = v24;
          if (!v187)
          {
LABEL_88:
            v188 = advance_tok(v0);
            v34 = v24;
            if (!v188)
            {
LABEL_89:
              v189 = OUTLINED_FUNCTION_52_1();
              bspush_ca_scan(v189, v190);
              continue;
            }
          }

          break;
        }

        goto LABEL_11;
      case 23:
        v84 = OUTLINED_FUNCTION_1_15();
        v88 = testFldeq(v84, v85, v86, v87);
        v34 = v24;
        if (v88)
        {
          goto LABEL_11;
        }

        v89 = advance_tok(v0);
        v34 = v24;
        if (v89)
        {
          goto LABEL_11;
        }

        v90 = OUTLINED_FUNCTION_1_15();
        v94 = testFldeq(v90, v91, v92, v93);
        v34 = v24;
        if (v94)
        {
          goto LABEL_11;
        }

        v95 = advance_tok(v0);
        v34 = v24;
        if (v95)
        {
          goto LABEL_11;
        }

        v96 = OUTLINED_FUNCTION_52_1();
        bspush_ca_scan(v96, v97);
        v98 = OUTLINED_FUNCTION_1_15();
        v102 = testFldeq(v98, v99, v100, v101);
        v34 = v24;
        if (v102)
        {
          goto LABEL_11;
        }

        v103 = advance_tok(v0);
        v34 = v24;
        if (v103)
        {
          goto LABEL_11;
        }

        goto LABEL_40;
      case 24:
LABEL_40:
        v104 = OUTLINED_FUNCTION_123();
        savescptr(v104, v105, v106);
        goto LABEL_41;
      case 25:
LABEL_41:
        v107 = OUTLINED_FUNCTION_49_1();
        starttest(v107, v108);
        OUTLINED_FUNCTION_52_1();
        bspush_ca_boa();
        OUTLINED_FUNCTION_85_1();
        if (end_of_word())
        {
          v34 = v24;
        }

        else
        {
          v34 = 1;
        }

        goto LABEL_11;
      case 26:
        v130 = OUTLINED_FUNCTION_52_1();
        starttest(v130, v131);
        v132 = OUTLINED_FUNCTION_28_5();
        if (!lpta_loadp_setscan_r(v132, v133))
        {
          OUTLINED_FUNCTION_4_14();
          if (!test_string_s())
          {
            goto LABEL_60;
          }
        }

        goto LABEL_61;
      case 27:
        bspop_boa(v0);
        goto LABEL_5;
      case 28:
        goto LABEL_61;
      case 29:
LABEL_60:
        savescptr(v0, 29, v228);
        v134 = OUTLINED_FUNCTION_85_1();
        lpta_rpta_loadp(v134, v135, v228);
        OUTLINED_FUNCTION_9_14();
        v136 = mark_s();
        v34 = v24;
        if (v136)
        {
          goto LABEL_11;
        }

LABEL_61:
        v137 = OUTLINED_FUNCTION_52_1();
        startloop(v137, v138);
        copyvar(v0, v228, v231);
        copyvar(v0, &v224, v230);
        break;
      case 30:
        goto LABEL_96;
      case 31:
        goto LABEL_67;
      case 32:
        OUTLINED_FUNCTION_171();
        v46 = OUTLINED_FUNCTION_122();
        v51 = forto_adv_r(v46, v47, v48, v49, 1, v50);
        v34 = v24;
        if (v51)
        {
          goto LABEL_11;
        }

        goto LABEL_96;
      case 33:
        goto LABEL_66;
      case 34:
        goto LABEL_68;
      case 35:
        goto LABEL_74;
      case 36:
        v122 = OUTLINED_FUNCTION_59_1();
        savescptr(v122, v123, v124);
        v125 = OUTLINED_FUNCTION_4_14();
        v128 = testFldeq(v125, v126, v127, 2);
        v34 = v24;
        if (v128)
        {
          goto LABEL_11;
        }

        v129 = advance_tok(v0);
        v34 = v24;
        if (v129)
        {
          goto LABEL_11;
        }

        goto LABEL_20;
      case 37:
        goto LABEL_81;
      case 38:
        goto LABEL_20;
      case 39:
        v52 = OUTLINED_FUNCTION_59_1();
        savescptr(v52, v53, v54);
        goto LABEL_20;
      case 40:
        goto LABEL_77;
      case 41:
        goto LABEL_24;
      case 42:
      case 43:
      case 45:
      case 46:
        goto LABEL_69;
      case 44:
        goto LABEL_28;
      case 47:
        goto LABEL_70;
      case 48:
        goto LABEL_63;
      case 49:
        goto LABEL_64;
      case 50:
        goto LABEL_97;
      case 51:
        goto LABEL_98;
      default:
        goto LABEL_5;
    }

    break;
  }

  while (1)
  {
LABEL_63:
    v139 = OUTLINED_FUNCTION_83_1();
    v142 = forall_to_test(v139, v140, v141);
    v34 = v24;
    if (v142)
    {
      goto LABEL_11;
    }

LABEL_64:
    v143 = OUTLINED_FUNCTION_52_1();
    bspush_ca(v143);
    v144 = OUTLINED_FUNCTION_7_14();
    v146 = lpta_loadp_setscan_r(v144, v145);
    v34 = v24;
    if (v146)
    {
      goto LABEL_11;
    }

    v147 = advance_tok(v0);
    v34 = v24;
    if (v147)
    {
      goto LABEL_11;
    }

LABEL_66:
    v148 = OUTLINED_FUNCTION_59_1();
    savescptr(v148, v149, v150);
LABEL_67:
    v151 = OUTLINED_FUNCTION_52_1();
    starttest(v151, v152);
    v153 = OUTLINED_FUNCTION_7_14();
    if (lpta_loadp_setscan_r(v153, v154))
    {
LABEL_68:
      OUTLINED_FUNCTION_8_14();
      char_name();
      goto LABEL_69;
    }

    v160 = OUTLINED_FUNCTION_1_15();
    v164 = testFldeq(v160, v161, v162, v163);
    v34 = v24;
    if (v164)
    {
      goto LABEL_11;
    }

    v165 = advance_tok(v0);
    v34 = v24;
    if (v165)
    {
      goto LABEL_11;
    }

    v166 = OUTLINED_FUNCTION_52_1();
    starttest(v166, v167);
    v168 = OUTLINED_FUNCTION_14_12();
    if (!lpta_loadp_setscan_r(v168, v169))
    {
LABEL_81:
      while (1)
      {
        v182 = OUTLINED_FUNCTION_4_14();
        if (testFldeq(v182, v183, v184, 1) || advance_tok(v0))
        {
          break;
        }

        v180 = OUTLINED_FUNCTION_52_1();
        bspush_ca_scan(v180, v181);
      }

      goto LABEL_83;
    }

LABEL_74:
    v170 = OUTLINED_FUNCTION_52_1();
    starttest(v170, v171);
    v172 = OUTLINED_FUNCTION_14_12();
    if (!lpta_loadp_setscan_r(v172, v173))
    {
LABEL_77:
      while (1)
      {
        v176 = OUTLINED_FUNCTION_1_15();
        if (testFldeq(v176, v177, v178, v179) || advance_tok(v0))
        {
          break;
        }

        v174 = OUTLINED_FUNCTION_52_1();
        bspush_ca_scan(v174, v175);
      }

LABEL_83:
      v34 = v24;
      goto LABEL_11;
    }

LABEL_20:
    v55 = OUTLINED_FUNCTION_67_1();
    lpta_loadpn(v55, v56);
    v57 = OUTLINED_FUNCTION_151();
    rpta_loadpn(v57, v58);
    if (!compare_ptas(v0) && !testeq(v0))
    {
      v59 = OUTLINED_FUNCTION_56_1();
      lpta_loadpn(v59, v60);
      rpta_loadpn(v0, v231);
      if (!compare_ptas(v0) && !testeq(v0))
      {
        goto LABEL_29;
      }
    }

LABEL_24:
    v61 = OUTLINED_FUNCTION_52_1();
    starttest(v61, v62);
    v63 = OUTLINED_FUNCTION_7_14();
    if (!lpta_loadp_setscan_r(v63, v64) && !advance_tok(v0) && !advance_tok(v0))
    {
      v65 = OUTLINED_FUNCTION_52_1();
      bspush_ca_scan(v65, v66);
      v67 = advance_tok(v0);
      v34 = v24;
      if (v67)
      {
        goto LABEL_11;
      }

LABEL_28:
      OUTLINED_FUNCTION_98_0();
      v68 = OUTLINED_FUNCTION_12_14();
      v69 = test_ptr(v68);
      v34 = v24;
      if (v69)
      {
        goto LABEL_11;
      }

LABEL_29:
      spell_out_sequence();
    }

LABEL_69:
    v155 = OUTLINED_FUNCTION_67_1();
    lpta_loadpn(v155, v156);
    v157 = OUTLINED_FUNCTION_151();
    rpta_loadpn(v157, v158);
    v36 = compare_ptas(v0);
    if (!v36)
    {
      v36 = testeq(v0);
      if (!v36)
      {
        break;
      }
    }

LABEL_70:
    OUTLINED_FUNCTION_102(v36, v37, v33, v38, v39, v40, v41, v42, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227);
    v159 = OUTLINED_FUNCTION_129();
    insert_l(v159);
    OUTLINED_FUNCTION_171();
    forall_cont_from(v0);
  }

LABEL_96:
  OUTLINED_FUNCTION_136();
  OUTLINED_FUNCTION_117();
  v199 = OUTLINED_FUNCTION_129();
  insert_l(v199);
  char_name();
LABEL_97:
  OUTLINED_FUNCTION_136();
  OUTLINED_FUNCTION_117();
  v200 = OUTLINED_FUNCTION_129();
  insert_l(v200);
  OUTLINED_FUNCTION_123();
  process_hostname();
LABEL_98:
  vretproc(v0);
  result = 0;
LABEL_6:
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

void URL()
{
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_76_1();
  v142 = *MEMORY[0x277D85DE8];
  v129 = 0;
  v130 = 0;
  OUTLINED_FUNCTION_16_12(v1, v2, v3, v4, v5, v6, v7, v8, v98, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128);
  OUTLINED_FUNCTION_57_1();
  bzero(v141, v9);
  v10 = setjmp(v141);
  if (!v10)
  {
    v17 = OUTLINED_FUNCTION_69_1(v10, &v100, v11, v12, v13, v14, v15, v16, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141[0]);
    if (!v17)
    {
      OUTLINED_FUNCTION_62_1(v17, &v129);
      v18 = OUTLINED_FUNCTION_87_1();
      push_ptr_init(v18, v19);
      v20 = OUTLINED_FUNCTION_86_1();
      push_ptr_init(v20, v21);
      v22 = OUTLINED_FUNCTION_104();
      push_ptr_init(v22, v23);
      fence_16(v0, 0, &_MergedGlobals_1_0);
      OUTLINED_FUNCTION_99_0();
      if (!v24)
      {
        OUTLINED_FUNCTION_168();
LABEL_6:
        v26 = OUTLINED_FUNCTION_55_1();
        starttest(v26, v27);
        v28 = OUTLINED_FUNCTION_141();
        if (!lpta_loadp_setscan_r(v28, v29))
        {
          v30 = OUTLINED_FUNCTION_64_1();
          bspush_ca_scan(v30, v31);
          v32 = OUTLINED_FUNCTION_81_1();
          bspush_ca_scan(v32, v33);
          OUTLINED_FUNCTION_51_1();
LABEL_8:
          if (!test_string_s())
          {
LABEL_9:
            OUTLINED_FUNCTION_51_1();
            if (!test_string_s())
            {
LABEL_10:
              v34 = OUTLINED_FUNCTION_91_0();
              savescptr(v34, v35, &v127);
              OUTLINED_FUNCTION_51_1();
              if (!test_string_s())
              {
LABEL_11:
                v36 = OUTLINED_FUNCTION_112();
                savescptr(v36, v37, &v129);
LABEL_12:
                while (1)
                {
                  v38 = OUTLINED_FUNCTION_74_1();
                  bspush_ca_scan(v38, v39);
                  v40 = OUTLINED_FUNCTION_51_1();
                  v42 = 3;
                  v43 = 1;
LABEL_13:
                  if (testFldeq(v40, v41, v42, v43))
                  {
                    break;
                  }

LABEL_51:
                  if (advance_tok(v0))
                  {
                    goto LABEL_14;
                  }

                  v93 = OUTLINED_FUNCTION_54_1();
LABEL_53:
                  bspush_ca_scan(v93, v94);
                }
              }
            }
          }

          while (1)
          {
LABEL_14:
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
                goto LABEL_6;
              case 3:
                OUTLINED_FUNCTION_51_1();
                if (!test_string_s())
                {
                  goto LABEL_12;
                }

                continue;
              case 4:
                OUTLINED_FUNCTION_4_14();
                goto LABEL_8;
              case 5:
                goto LABEL_9;
              case 6:
                goto LABEL_10;
              case 7:
                goto LABEL_11;
              case 8:
                goto LABEL_12;
              case 9:
                v89 = OUTLINED_FUNCTION_40_1();
                bspush_ca_scan(v89, v90);
                v40 = OUTLINED_FUNCTION_3_15();
                goto LABEL_13;
              case 10:
                goto LABEL_51;
              case 11:
                v91 = OUTLINED_FUNCTION_35_2();
                bspush_ca_scan(v91, v92);
                v40 = OUTLINED_FUNCTION_6_14();
                v43 = 75;
                goto LABEL_13;
              case 12:
                v40 = OUTLINED_FUNCTION_6_14();
                v43 = 63;
                goto LABEL_13;
              case 13:
                OUTLINED_FUNCTION_4_14();
                if (test_string_s())
                {
                  continue;
                }

                v93 = OUTLINED_FUNCTION_33_3();
                goto LABEL_53;
              case 14:
                goto LABEL_43;
              case 15:
                v54 = OUTLINED_FUNCTION_3_15();
                goto LABEL_44;
              case 16:
                do
                {
                  if (advance_tok(v0))
                  {
                    break;
                  }

                  v87 = OUTLINED_FUNCTION_52_1();
                  bspush_ca_scan(v87, v88);
LABEL_43:
                  v85 = OUTLINED_FUNCTION_46_1();
                  bspush_ca_scan(v85, v86);
                  v54 = OUTLINED_FUNCTION_1_15();
LABEL_44:
                  ;
                }

                while (!testFldeq(v54, v55, v56, v57));
                continue;
              case 17:
                OUTLINED_FUNCTION_118();
                savescptr(v0, v58, &v125);
                OUTLINED_FUNCTION_84_1();
                if (end_of_word())
                {
                  continue;
                }

                goto LABEL_28;
              case 18:
LABEL_28:
                v59 = OUTLINED_FUNCTION_87_1();
                lpta_loadpn(v59, v60);
                OUTLINED_FUNCTION_150();
                if (!compare_ptas(v0) && !testneq(v0))
                {
                  v61 = OUTLINED_FUNCTION_147();
                  lpta_rpta_loadp(v61, v62, v63);
                  v64 = OUTLINED_FUNCTION_6_14();
                  if (!delete_2pt(v64, v65))
                  {
                    v66 = OUTLINED_FUNCTION_147();
                    lpta_rpta_loadp(v66, v67, v68);
                    v69 = OUTLINED_FUNCTION_51_1();
                    insert_2pt_s(v69, v70, 5, v71, v72);
                  }
                }

                goto LABEL_32;
              case 19:
LABEL_32:
                OUTLINED_FUNCTION_138();
                process_hostname();
                goto LABEL_33;
              case 20:
LABEL_33:
                v73 = OUTLINED_FUNCTION_52_1();
                starttest(v73, v74);
                v75 = OUTLINED_FUNCTION_53_1();
                if (!lpta_loadp_setscan_r(v75, v76))
                {
                  OUTLINED_FUNCTION_4_14();
                  if (!test_string_s())
                  {
                    break;
                  }
                }

                goto LABEL_5;
              case 22:
                OUTLINED_FUNCTION_125();
                v95 = OUTLINED_FUNCTION_68_1();
                savescptr(v95, v96, v97);
                OUTLINED_FUNCTION_68_1();
                process_pathname();
                goto LABEL_5;
              case 23:
                v77 = OUTLINED_FUNCTION_52_1();
                bspush_ca_scan(v77, v78);
                v48 = OUTLINED_FUNCTION_3_15();
                goto LABEL_40;
              case 24:
                goto LABEL_41;
              case 25:
                v79 = OUTLINED_FUNCTION_49_1();
                bspush_ca_scan(v79, v80);
                v48 = OUTLINED_FUNCTION_6_14();
                v51 = 75;
                goto LABEL_40;
              case 26:
                v52 = OUTLINED_FUNCTION_52_1();
                bspush_ca_scan(v52, v53);
                v48 = OUTLINED_FUNCTION_6_14();
                v51 = 63;
                goto LABEL_40;
              case 27:
                v48 = OUTLINED_FUNCTION_6_14();
                v51 = 65;
                goto LABEL_40;
              case 28:
                v46 = OUTLINED_FUNCTION_52_1();
                bspush_ca_scan(v46, v47);
                OUTLINED_FUNCTION_4_14();
                if (test_string_s())
                {
                  continue;
                }

                break;
              case 29:
                goto LABEL_39;
              case 30:
              case 31:
                break;
              default:
                goto LABEL_5;
            }

            while (1)
            {
              v81 = OUTLINED_FUNCTION_52_1();
              bspush_ca_scan(v81, v82);
LABEL_39:
              v83 = OUTLINED_FUNCTION_52_1();
              bspush_ca_scan(v83, v84);
              v48 = OUTLINED_FUNCTION_1_15();
LABEL_40:
              if (testFldeq(v48, v49, v50, v51))
              {
                break;
              }

LABEL_41:
              if (advance_tok(v0))
              {
                goto LABEL_14;
              }
            }
          }
        }
      }
    }
  }

LABEL_5:
  vretproc(v0);
  v25 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_113();
}

uint64_t is_pathname()
{
  OUTLINED_FUNCTION_76_1();
  v124 = *MEMORY[0x277D85DE8];
  v119[0] = 0;
  v119[1] = 0;
  v117[0] = 0;
  v117[1] = 0;
  v118 = 0;
  v116[0] = 0;
  v116[1] = 0;
  v115[0] = 0;
  v115[1] = 0;
  OUTLINED_FUNCTION_48_1();
  v110 = 0;
  v111 = 0;
  v112 = 0;
  OUTLINED_FUNCTION_58_1();
  bzero(v109, v1);
  OUTLINED_FUNCTION_57_1();
  bzero(v123, v2);
  if (!setjmp(v123))
  {
    v3 = ventproc(v0, v109, v122, v121, v120, v123);
    if (!v3)
    {
      OUTLINED_FUNCTION_62_1(v3, v119);
      WORD2(v118) = 0;
      LODWORD(v118) = 0;
      LODWORD(v117[0]) = -65535;
      v4 = OUTLINED_FUNCTION_128();
      push_ptr_init(v4, v5);
      push_ptr_init(v0, v115);
      v6 = OUTLINED_FUNCTION_107();
      push_ptr_init(v6, v7);
      v8 = OUTLINED_FUNCTION_87_1();
      push_ptr_init(v8, v9);
      v10 = OUTLINED_FUNCTION_86_1();
      push_ptr_init(v10, v11);
      WORD2(v112) = 0;
      LODWORD(v112) = 0;
      LODWORD(v110) = -65535;
      v12 = OUTLINED_FUNCTION_73_1();
      fence_16(v12, v13, v14);
      OUTLINED_FUNCTION_99_0();
      if (!v15)
      {
        v18 = 0;
LABEL_7:
        v19 = OUTLINED_FUNCTION_71_1();
        starttest(v19, v20);
        v21 = OUTLINED_FUNCTION_55_1();
        if (!lpta_loadp_setscan_l(v21, v22))
        {
LABEL_8:
          savescptr(v0, 3, v113);
          OUTLINED_FUNCTION_64_1();
          bspush_ca_scan_boa();
          v23 = OUTLINED_FUNCTION_51_1();
          if (!testFldeq(v23, v24, 3, 1) && !advance_tok(v0))
          {
            v18 = 1;
          }

          v25 = v18;
          while (1)
          {
LABEL_12:
            v26 = *(v0 + 104);
            if (v26)
            {
              v27 = OUTLINED_FUNCTION_65_1(v26);
              v18 = v28;
            }

            else
            {
              v27 = vback(v0, v25);
              v18 = 0;
            }

            switch(v27)
            {
              case 1:
                goto LABEL_7;
              case 3:
                goto LABEL_8;
              case 4:
                bspop_boa(v0);
                v29 = OUTLINED_FUNCTION_53_1();
                v31 = lpta_loadp_setscan_r(v29, v30);
                v25 = v18;
                if (v31)
                {
                  continue;
                }

                v32 = OUTLINED_FUNCTION_22_8();
                bspush_ca_scan(v32, v33);
                v34 = OUTLINED_FUNCTION_36_2();
                bspush_ca_scan(v34, v35);
                goto LABEL_29;
              case 5:
                goto LABEL_30;
              case 6:
LABEL_29:
                OUTLINED_FUNCTION_4_14();
                v64 = test_string_s();
                v25 = v18;
                if (v64)
                {
                  continue;
                }

LABEL_30:
                v65 = OUTLINED_FUNCTION_27_6();
                bspush_ca_scan(v65, v66);
                v67 = OUTLINED_FUNCTION_1_15();
                v71 = testFldeq(v67, v68, v69, v70);
                v25 = v18;
                if (v71)
                {
                  continue;
                }

                v72 = advance_tok(v0);
                v25 = v18;
                if (v72)
                {
                  continue;
                }

LABEL_32:
                savescptr(v0, 8, v116);
                OUTLINED_FUNCTION_4_14();
                v73 = test_string_s();
                v25 = v18;
                if (v73)
                {
                  continue;
                }

LABEL_33:
                savescptr(v0, 7, v115);
                v74 = OUTLINED_FUNCTION_37_2();
                bspush_ca_scan(v74, v75);
LABEL_34:
                OUTLINED_FUNCTION_4_14();
                v76 = test_string_s();
                v25 = v18;
                if (v76)
                {
                  continue;
                }

LABEL_35:
                v77 = savetok(v0, v117);
                v25 = v18;
                if (v77)
                {
                  continue;
                }

LABEL_46:
                while (1)
                {
                  v96 = OUTLINED_FUNCTION_40_1();
                  bspush_ca_scan(v96, v97);
                  v44 = OUTLINED_FUNCTION_1_15();
LABEL_47:
                  v98 = testFldeq(v44, v45, v46, v47);
                  v25 = v18;
                  if (v98)
                  {
                    goto LABEL_12;
                  }

LABEL_48:
                  v99 = advance_tok(v0);
                  v25 = v18;
                  if (v99)
                  {
                    goto LABEL_12;
                  }

                  v100 = OUTLINED_FUNCTION_41_1();
                  bspush_ca_scan(v100, v101);
                }

              case 7:
                goto LABEL_33;
              case 8:
                goto LABEL_32;
              case 9:
                goto LABEL_34;
              case 10:
                goto LABEL_35;
              case 11:
                v50 = OUTLINED_FUNCTION_32_3();
                bspush_ca_scan(v50, v51);
                v44 = OUTLINED_FUNCTION_3_15();
                goto LABEL_47;
              case 12:
                goto LABEL_48;
              case 13:
                v78 = OUTLINED_FUNCTION_33_3();
                bspush_ca_scan(v78, v79);
                v44 = OUTLINED_FUNCTION_6_14();
                v47 = 75;
                goto LABEL_47;
              case 14:
                v42 = OUTLINED_FUNCTION_46_1();
                bspush_ca_scan(v42, v43);
                v44 = OUTLINED_FUNCTION_6_14();
                v47 = 63;
                goto LABEL_47;
              case 15:
                v44 = OUTLINED_FUNCTION_6_14();
                v47 = 65;
                goto LABEL_47;
              case 16:
                v80 = OUTLINED_FUNCTION_52_1();
                bspush_ca_scan(v80, v81);
                v82 = advance_tok(v0);
                v25 = v18;
                if (v82)
                {
                  continue;
                }

                v83 = OUTLINED_FUNCTION_66_1();
                v85 = savetok(v83, v84);
                v25 = v18;
                if (v85)
                {
                  continue;
                }

                v86 = OUTLINED_FUNCTION_83_1();
                v89 = testeq_tvars(v86, v87, v88);
                v25 = v18;
                if (v89)
                {
                  continue;
                }

                goto LABEL_41;
              case 17:
                goto LABEL_46;
              case 18:
                goto LABEL_42;
              case 19:
LABEL_41:
                savescptr(v0, 19, v114);
                goto LABEL_42;
              case 20:
                v48 = OUTLINED_FUNCTION_52_1();
                bspush_ca_scan(v48, v49);
                v38 = OUTLINED_FUNCTION_3_15();
                goto LABEL_43;
              case 21:
                goto LABEL_44;
              case 22:
                v36 = OUTLINED_FUNCTION_52_1();
                bspush_ca_scan(v36, v37);
                v38 = OUTLINED_FUNCTION_6_14();
                v41 = 75;
                goto LABEL_43;
              case 23:
                v62 = OUTLINED_FUNCTION_52_1();
                bspush_ca_scan(v62, v63);
                v38 = OUTLINED_FUNCTION_6_14();
                v41 = 63;
                goto LABEL_43;
              case 24:
                v38 = OUTLINED_FUNCTION_6_14();
                v41 = 65;
                goto LABEL_43;
              case 25:
                v52 = OUTLINED_FUNCTION_49_1();
                bspush_ca_scan(v52, v53);
                v54 = advance_tok(v0);
                v25 = v18;
                if (v54)
                {
                  continue;
                }

                v55 = OUTLINED_FUNCTION_66_1();
                v57 = savetok(v55, v56);
                v25 = v18;
                if (v57)
                {
                  continue;
                }

                v58 = OUTLINED_FUNCTION_83_1();
                v61 = testeq_tvars(v58, v59, v60);
                v25 = v18;
                if (v61)
                {
                  continue;
                }

                break;
              case 26:
                break;
              case 27:
                v102 = OUTLINED_FUNCTION_120();
                savescptr(v102, v103, v104);
                v105 = OUTLINED_FUNCTION_128();
                lpta_loadpn(v105, v106);
                OUTLINED_FUNCTION_150();
                if (compare_ptas(v0) || testneq(v0))
                {
                  goto LABEL_52;
                }

                OUTLINED_FUNCTION_155();
                char_name();
                goto LABEL_56;
              case 28:
LABEL_52:
                v107 = OUTLINED_FUNCTION_107();
                lpta_loadpn(v107, v108);
                OUTLINED_FUNCTION_150();
                if (!compare_ptas(v0) && !testneq(v0))
                {
                  goto LABEL_56;
                }

                goto LABEL_5;
              case 29:
              case 30:
              case 32:
LABEL_56:
                *(v0 + 2726) = *(v0 + 2730);
                OUTLINED_FUNCTION_120();
                process_pathname();
                goto LABEL_57;
              case 33:
LABEL_57:
                vretproc(v0);
                result = 0;
                goto LABEL_6;
              default:
                goto LABEL_5;
            }

            while (1)
            {
              v94 = OUTLINED_FUNCTION_52_1();
              bspush_ca_scan(v94, v95);
LABEL_42:
              v90 = OUTLINED_FUNCTION_52_1();
              bspush_ca_scan(v90, v91);
              v38 = OUTLINED_FUNCTION_1_15();
LABEL_43:
              v92 = testFldeq(v38, v39, v40, v41);
              v25 = v18;
              if (v92)
              {
                break;
              }

LABEL_44:
              v93 = advance_tok(v0);
              v25 = v18;
              if (v93)
              {
                goto LABEL_12;
              }
            }
          }
        }
      }
    }
  }

LABEL_5:
  vretproc(v0);
  result = 94;
LABEL_6:
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t letter_sequence()
{
  OUTLINED_FUNCTION_11_14();
  v144 = *MEMORY[0x277D85DE8];
  v131 = 0;
  v132 = 0;
  v129 = 0;
  v130 = 0;
  OUTLINED_FUNCTION_10_14(v2, v3, v4, v5, v6, v7, v8, v9, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128);
  OUTLINED_FUNCTION_57_1();
  bzero(v143, v10);
  v11 = setjmp(v143);
  if (v11)
  {
    goto LABEL_6;
  }

  if (OUTLINED_FUNCTION_89_1(v11, &v102, v12, v13, v14, v15, v16, v17, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143[0]))
  {
    goto LABEL_6;
  }

  v18 = OUTLINED_FUNCTION_72_1();
  get_parm(v18, v19, v20, -6);
  v21 = OUTLINED_FUNCTION_56_1();
  OUTLINED_FUNCTION_126(v21, v22);
  v23 = OUTLINED_FUNCTION_67_1();
  push_ptr_init(v23, v24);
  v25 = OUTLINED_FUNCTION_66_1();
  push_ptr_init(v25, v26);
  fence_16(v0, 0, &_MergedGlobals_1_0);
  v128 = *(v0 + 3352);
  v27 = OUTLINED_FUNCTION_42_1();
  starttest(v27, v28);
  v29 = *(v0 + 5114);
  OUTLINED_FUNCTION_170();
  if (v31 || *(v0 + 5118) == v30 || (v32 = OUTLINED_FUNCTION_28_5(), lpta_loadp_setscan_r(v32, v33)))
  {
LABEL_6:
    vretproc(v0);
    result = 94;
  }

  else
  {
    OUTLINED_FUNCTION_175();
    v36 = 0;
    while (2)
    {
      while (1)
      {
        v37 = OUTLINED_FUNCTION_1_15();
        if (testFldeq(v37, v38, v39, v40) || advance_tok(v0))
        {
          break;
        }

        v41 = OUTLINED_FUNCTION_54_1();
        bspush_ca_scan(v41, v42);
      }

      v43 = v36;
LABEL_13:
      v44 = *(v0 + 104);
      if (v44)
      {
        v45 = OUTLINED_FUNCTION_65_1(v44);
        v47 = v46;
      }

      else
      {
        v45 = vback(v0, v43);
        v47 = 0;
      }

      v48 = 1;
      switch(v45)
      {
        case 2:
          OUTLINED_FUNCTION_75_1();
          v49 = OUTLINED_FUNCTION_90_1();
          savescptr(v49, v50, v51);
          goto LABEL_18;
        case 3:
          v36 = v47;
          continue;
        case 4:
LABEL_18:
          *(v0 + 2614) = *(v0 + 2634);
          OUTLINED_FUNCTION_56_1();
          process_final_parenthetical();
          goto LABEL_19;
        case 5:
LABEL_19:
          OUTLINED_FUNCTION_23_8();
          process_final_apostrophe();
          goto LABEL_20;
        case 6:
LABEL_20:
          v52 = OUTLINED_FUNCTION_27_6();
          starttest(v52, v53);
          v54 = OUTLINED_FUNCTION_38_2();
          bspush_ca(v54);
          v55 = *(v0 + 5094);
          goto LABEL_37;
        case 7:
          v76 = OUTLINED_FUNCTION_41_1();
          starttest(v76, v77);
          v78 = OUTLINED_FUNCTION_28_5();
          if (lpta_loadp_setscan_r(v78, v79))
          {
            goto LABEL_41;
          }

          bspush_boa(v0);
          goto LABEL_62;
        case 8:
          v72 = OUTLINED_FUNCTION_45_1();
          bspush_ca(v72);
          v55 = *(v0 + 5130);
          goto LABEL_37;
        case 9:
          goto LABEL_38;
        case 10:
          v74 = OUTLINED_FUNCTION_40_1();
          bspush_ca(v74);
          v55 = *(v0 + 5102);
          goto LABEL_37;
        case 11:
          v73 = OUTLINED_FUNCTION_35_2();
          bspush_ca(v73);
          v55 = *(v0 + 5106);
          goto LABEL_37;
        case 12:
          v69 = OUTLINED_FUNCTION_32_3();
          bspush_ca(v69);
          v55 = *(v0 + 5110);
          goto LABEL_37;
        case 13:
          v67 = OUTLINED_FUNCTION_33_3();
          bspush_ca(v67);
          v55 = *(v0 + 5122);
          goto LABEL_37;
        case 14:
          v55 = *(v0 + 5098);
LABEL_37:
          v43 = v47;
          if (v55 != *(v0 + 5090))
          {
            goto LABEL_13;
          }

LABEL_38:
          OUTLINED_FUNCTION_23_8();
          v75 = monetary_exp();
          v43 = v47;
          if (!v75)
          {
            goto LABEL_69;
          }

          goto LABEL_13;
        case 15:
        case 19:
          goto LABEL_69;
        case 16:
LABEL_41:
          v80 = *(v0 + 5118);
          OUTLINED_FUNCTION_88_1();
          if (v31)
          {
            goto LABEL_43;
          }

          abbreviation();
          if (v81)
          {
            goto LABEL_43;
          }

          goto LABEL_69;
        case 17:
          bspush_nboa(v0);
          v56 = OUTLINED_FUNCTION_3_15();
          v60 = testFldeq(v56, v57, v58, v59);
          v43 = v47;
          if (v60)
          {
            goto LABEL_13;
          }

          v61 = advance_tok(v0);
          v43 = v47;
          if (v61)
          {
            goto LABEL_13;
          }

          OUTLINED_FUNCTION_23_8();
          spell_out_alphanum();
          goto LABEL_69;
        case 18:
LABEL_62:
          while (1)
          {
            v97 = OUTLINED_FUNCTION_4_14();
            if (testFldeq(v97, v98, v99, 2) || advance_tok(v0))
            {
              break;
            }

            v100 = OUTLINED_FUNCTION_52_1();
            bspush_ca_scan(v100, v101);
          }

          v43 = v47;
          goto LABEL_13;
        case 20:
LABEL_43:
          v82 = *(v0 + 5118);
          OUTLINED_FUNCTION_88_1();
          if (v31)
          {
            goto LABEL_47;
          }

          if (*(v0 + 2618) == 1)
          {
            reset_endptr();
          }

LABEL_46:
          OUTLINED_FUNCTION_23_8();
          convert_to_lowercase();
LABEL_47:
          v83 = OUTLINED_FUNCTION_52_1();
          starttest(v83, v84);
          v85 = OUTLINED_FUNCTION_52_1();
          bspush_ca(v85);
          v66 = *(v0 + 5102);
LABEL_48:
          v43 = v47;
          if (v66 != *(v0 + 5090))
          {
            goto LABEL_13;
          }

LABEL_49:
          OUTLINED_FUNCTION_23_8();
          v86 = convert_roman_num();
          v43 = v47;
          if (!v86)
          {
            goto LABEL_68;
          }

          goto LABEL_13;
        case 21:
          goto LABEL_47;
        case 22:
          goto LABEL_46;
        case 23:
          v87 = *(v0 + 5118);
          OUTLINED_FUNCTION_88_1();
          if (v31)
          {
            goto LABEL_54;
          }

          OUTLINED_FUNCTION_23_8();
          acronym();
          if (v88)
          {
            goto LABEL_54;
          }

          goto LABEL_68;
        case 24:
          v65 = OUTLINED_FUNCTION_49_1();
          bspush_ca(v65);
          v66 = *(v0 + 5110);
          goto LABEL_48;
        case 25:
          goto LABEL_49;
        case 26:
          v68 = OUTLINED_FUNCTION_52_1();
          bspush_ca(v68);
          v66 = *(v0 + 5122);
          goto LABEL_48;
        case 27:
          v66 = *(v0 + 5098);
          goto LABEL_48;
        case 28:
        case 36:
          goto LABEL_68;
        case 29:
LABEL_54:
          OUTLINED_FUNCTION_23_8();
          if (single_letter())
          {
            goto LABEL_55;
          }

          goto LABEL_68;
        case 30:
LABEL_55:
          v89 = OUTLINED_FUNCTION_52_1();
          starttest(v89, v90);
          v91 = *(v0 + 5114);
          OUTLINED_FUNCTION_170();
          if (!v31 && *(v0 + 5118) != v92)
          {
            v93 = OUTLINED_FUNCTION_85_1();
            if (!lpta_loadp_setscan_r(v93, v94))
            {
              goto LABEL_58;
            }
          }

          goto LABEL_67;
        case 31:
LABEL_67:
          *(v0 + 2670) = *(v0 + 2694);
          goto LABEL_68;
        case 32:
          bspop_boa(v0);
          v48 = 3;
          goto LABEL_58;
        case 33:
          bspop_boa(v0);
          v62 = advance_tok(v0);
          v43 = v47;
          if (v62)
          {
            goto LABEL_13;
          }

          v63 = OUTLINED_FUNCTION_52_1();
          bspush_ca_scan(v63, v64);
          goto LABEL_58;
        case 34:
          OUTLINED_FUNCTION_98_0();
          v70 = OUTLINED_FUNCTION_12_14();
          v71 = test_ptr(v70);
          v43 = v47;
          if (v71)
          {
            goto LABEL_13;
          }

          OUTLINED_FUNCTION_23_8();
          spell_out_sequence();
LABEL_68:
          OUTLINED_FUNCTION_23_8();
          normalize_letters();
LABEL_69:
          OUTLINED_FUNCTION_56_1();
          separate_tokens();
          goto LABEL_70;
        case 35:
LABEL_58:
          bspush_ca_scan_boa();
          v95 = OUTLINED_FUNCTION_51_1();
          if (testFldeq(v95, v96, 4, v48))
          {
            v43 = v47;
          }

          else
          {
            v43 = 1;
          }

          goto LABEL_13;
        case 37:
LABEL_70:
          *(v1 + 8) = v132;
          OUTLINED_FUNCTION_137(v130);
          result = 0;
          break;
        default:
          goto LABEL_6;
      }

      break;
    }
  }

  v35 = *MEMORY[0x277D85DE8];
  return result;
}

void hyphen()
{
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_11_14();
  v77 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_48_1();
  OUTLINED_FUNCTION_58_1();
  bzero(v60, v1);
  OUTLINED_FUNCTION_57_1();
  bzero(v76, v2);
  v3 = setjmp(v76);
  if (v3)
  {
    goto LABEL_4;
  }

  if (OUTLINED_FUNCTION_69_1(v3, v60, v4, v5, v6, v7, v8, v9, v57, v58, v59, v60[0], v60[1], v60[2], v60[3], v60[4], v60[5], v60[6], v60[7], v60[8], v60[9], v60[10], v60[11], v60[12], v60[13], v60[14], v60[15], v60[16], v60[17], v60[18], v60[19], v60[20], v60[21], v60[22], v61[0], v61[1], v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76[0]))
  {
    goto LABEL_4;
  }

  v10 = OUTLINED_FUNCTION_13_14();
  get_parm(v10, v11, v12, -6);
  OUTLINED_FUNCTION_62_1(v13, &v62);
  v14 = OUTLINED_FUNCTION_86_1();
  push_ptr_init(v14, v15);
  fence_16(v0, 0, &_MergedGlobals_1_0);
  v16 = OUTLINED_FUNCTION_110();
  starttest(v16, v17);
  v18 = OUTLINED_FUNCTION_54_1();
  if (lpta_loadp_setscan_r(v18, v19))
  {
LABEL_4:
    vretproc(v0);
  }

  else
  {
    v21 = 0;
    OUTLINED_FUNCTION_75_1();
    while (1)
    {
      v23 = v22;
      bspush_ca_scan(v0, v22);
      OUTLINED_FUNCTION_24_8();
      v24 = test_string_s();
      v25 = v21;
      v26 = v21;
      if (v24)
      {
        break;
      }

LABEL_26:
      v21 = v25;
      v49 = OUTLINED_FUNCTION_111();
      bspush_ca_scan(v49, v50);
LABEL_27:
      v22 = v23;
    }

    while (2)
    {
      v27 = *(v0 + 104);
      if (v27)
      {
        v28 = OUTLINED_FUNCTION_65_1(v27);
        v21 = v29;
      }

      else
      {
        v28 = vback(v0, v26);
        v21 = 0;
      }

      v25 = v21;
      switch(v28)
      {
        case 2:
          v30 = OUTLINED_FUNCTION_106();
          bspush_ca_scan(v30, v31);
          OUTLINED_FUNCTION_24_8();
          v32 = test_string_s();
          v26 = v21;
          if (v32)
          {
            continue;
          }

          goto LABEL_25;
        case 3:
          goto LABEL_26;
        case 4:
          v44 = OUTLINED_FUNCTION_84_1();
          bspush_ca_scan(v44, v45);
          OUTLINED_FUNCTION_24_8();
          goto LABEL_23;
        case 5:
LABEL_25:
          v47 = OUTLINED_FUNCTION_112();
          savescptr(v47, v48, v61);
          v25 = v21;
          goto LABEL_26;
        case 6:
          OUTLINED_FUNCTION_24_8();
LABEL_23:
          v46 = test_string_s();
          v25 = v21;
          v26 = v21;
          if (!v46)
          {
            goto LABEL_26;
          }

          continue;
        case 7:
          v33 = OUTLINED_FUNCTION_27_6();
          savescptr(v33, v34, &v62);
          v35 = OUTLINED_FUNCTION_156();
          lpta_loadpn(v35, v36);
          OUTLINED_FUNCTION_150();
          if (compare_ptas(v0) || testneq(v0))
          {
            goto LABEL_17;
          }

          goto LABEL_29;
        case 8:
          goto LABEL_27;
        case 9:
LABEL_17:
          v37 = OUTLINED_FUNCTION_70_1();
          starttest(v37, v38);
          OUTLINED_FUNCTION_74_1();
          bspush_ca_boa();
          v39 = OUTLINED_FUNCTION_54_1();
          v41 = lpta_loadp_setscan_r(v39, v40);
          v26 = v21;
          if (!v41)
          {
            v42 = advance_tok(v0);
            v26 = v21;
            if (!v42)
            {
              *(v0 + 136) = 1;
              v43 = OUTLINED_FUNCTION_12_14();
              if (test_ptr(v43))
              {
                v26 = v21;
              }

              else
              {
                v26 = 1;
              }
            }
          }

          continue;
        case 10:
        case 11:
        case 14:
        case 17:
        case 18:
          goto LABEL_37;
        case 12:
          OUTLINED_FUNCTION_79_1();
          if (!v51)
          {
            goto LABEL_34;
          }

          v52 = OUTLINED_FUNCTION_53_1();
          if (lpta_loadp_setscan_r(v52, v53))
          {
            goto LABEL_34;
          }

          OUTLINED_FUNCTION_4_14();
          if (test_string_s())
          {
            goto LABEL_34;
          }

          goto LABEL_35;
        case 13:
          bspop_boa(v0);
LABEL_29:
          OUTLINED_FUNCTION_101();
          goto LABEL_36;
        case 15:
LABEL_34:
          OUTLINED_FUNCTION_101();
          shortdash();
          break;
        case 16:
LABEL_35:
          v54 = OUTLINED_FUNCTION_72_1();
          savescptr(v54, v55, v56);
          OUTLINED_FUNCTION_72_1();
LABEL_36:
          longdash();
          break;
        default:
          goto LABEL_4;
      }

      break;
    }

LABEL_37:
    OUTLINED_FUNCTION_137(v63);
  }

  v20 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_113();
}

void slash()
{
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_11_14();
  v93 = *MEMORY[0x277D85DE8];
  v80 = 0;
  v81 = 0;
  v78 = 0;
  v79 = 0;
  OUTLINED_FUNCTION_10_14(v1, v2, v3, v4, v5, v6, v7, v8, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77);
  OUTLINED_FUNCTION_57_1();
  bzero(v92, v9);
  v10 = setjmp(v92);
  if (v10)
  {
    goto LABEL_5;
  }

  if (OUTLINED_FUNCTION_89_1(v10, &v51, v11, v12, v13, v14, v15, v16, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92[0]))
  {
    goto LABEL_5;
  }

  v17 = OUTLINED_FUNCTION_13_14();
  get_parm(v17, v18, v19, -6);
  v20 = OUTLINED_FUNCTION_56_1();
  OUTLINED_FUNCTION_126(v20, v21);
  v22 = OUTLINED_FUNCTION_67_1();
  push_ptr_init(v22, v23);
  v24 = OUTLINED_FUNCTION_66_1();
  push_ptr_init(v24, v25);
  fence_16(v0, 0, &_MergedGlobals_1_0);
  v26 = OUTLINED_FUNCTION_29_5();
  if (lpta_loadp_setscan_r(v26, v27) || (OUTLINED_FUNCTION_4_14(), test_string_s()))
  {
LABEL_5:
    vretproc(v0);
  }

  else
  {
    OUTLINED_FUNCTION_143();
    while (2)
    {
      v29 = OUTLINED_FUNCTION_55_1();
      savescptr(v29, v30, &v78);
      OUTLINED_FUNCTION_99_0();
      if (!v31)
      {
LABEL_9:
        v32 = OUTLINED_FUNCTION_70_1();
        starttest(v32, v33);
        v34 = OUTLINED_FUNCTION_29_5();
        if (!lpta_loadp_setscan_r(v34, v35))
        {
LABEL_10:
          while (1)
          {
            v36 = OUTLINED_FUNCTION_1_15();
            if (testFldeq(v36, v37, v38, v39) || advance_tok(v0))
            {
              break;
            }

            v42 = OUTLINED_FUNCTION_64_1();
            bspush_ca_scan(v42, v43);
          }

LABEL_12:
          v40 = *(v0 + 104);
          if (v40)
          {
            v41 = OUTLINED_FUNCTION_65_1(v40);
          }

          else
          {
            v41 = OUTLINED_FUNCTION_133();
          }

          switch(v41)
          {
            case 2:
              continue;
            case 3:
              goto LABEL_9;
            case 4:
            case 8:
              goto LABEL_21;
            case 5:
              savescptr(v0, 5, &v76);
              OUTLINED_FUNCTION_81_1();
              if (end_of_word())
              {
                goto LABEL_12;
              }

              OUTLINED_FUNCTION_8_14();
              if (slash_before_measure())
              {
                goto LABEL_20;
              }

              goto LABEL_21;
            case 6:
              goto LABEL_10;
            case 7:
LABEL_20:
              *(v0 + 136) = 1;
              *(v0 + 112) = v79;
              *(v0 + 128) = 0;
              v45 = OUTLINED_FUNCTION_129();
              insert_r(v45);
              break;
            case 9:
              goto LABEL_22;
            case 10:
              goto LABEL_23;
            case 11:
            case 13:
              goto LABEL_27;
            case 12:
              goto LABEL_25;
            default:
              goto LABEL_5;
          }
        }
      }

      break;
    }

LABEL_21:
    OUTLINED_FUNCTION_23_8();
    char_name();
LABEL_22:
    OUTLINED_FUNCTION_56_1();
    separate_tokens();
LABEL_23:
    *(v0 + 2614) = *(v0 + 2646);
    v46 = OUTLINED_FUNCTION_85_1();
    if (!lpta_loadp_setscan_l(v46, v47) && !advance_tok(v0))
    {
LABEL_25:
      v48 = OUTLINED_FUNCTION_72_1();
      savescptr(v48, v49, v50);
      OUTLINED_FUNCTION_55_1();
      if (!mark_word_stress())
      {
        OUTLINED_FUNCTION_123();
        mark_word_str_annot();
      }
    }

LABEL_27:
    OUTLINED_FUNCTION_137(v79);
  }

  v28 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_113();
}

void quote_mark()
{
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_11_14();
  v84 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_18_10(v2, v3, v4, v5, v6, v7, v8, v9, v48, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78);
  OUTLINED_FUNCTION_57_1();
  OUTLINED_FUNCTION_177(v10, v11, v12, v13, v14, v15, v16, v17, v49, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83);
  v18 = setjmp(v1);
  if (!v18 && !OUTLINED_FUNCTION_44_1(v18, &v52, v19, v20, v21, v22, v23, v24, v50, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, SBYTE4(v79), v80, SWORD2(v80), SBYTE6(v80), v81, SWORD2(v81), SBYTE6(v81), SHIBYTE(v81), v82, v83))
  {
    v25 = OUTLINED_FUNCTION_13_14();
    get_parm(v25, v26, v27, -6);
    OUTLINED_FUNCTION_62_1(v28, &v75);
    fence_16(v0, 0, &_MergedGlobals_1_0);
    v29 = OUTLINED_FUNCTION_110();
    starttest(v29, v30);
    v31 = OUTLINED_FUNCTION_54_1();
    if (!lpta_loadp_setscan_r(v31, v32))
    {
      v34 = OUTLINED_FUNCTION_15_12();
      bspush_ca_scan(v34, v35);
      OUTLINED_FUNCTION_4_14();
      if (test_string_s())
      {
        while (2)
        {
          v36 = *(v0 + 104);
          if (v36)
          {
            v37 = OUTLINED_FUNCTION_65_1(v36);
          }

          else
          {
            v37 = OUTLINED_FUNCTION_133();
          }

          switch(v37)
          {
            case 2:
              v38 = OUTLINED_FUNCTION_55_1();
              bspush_ca_scan(v38, v39);
              OUTLINED_FUNCTION_4_14();
              goto LABEL_16;
            case 3:
              break;
            case 4:
              v44 = OUTLINED_FUNCTION_64_1();
              bspush_ca_scan(v44, v45);
              OUTLINED_FUNCTION_4_14();
              goto LABEL_16;
            case 5:
              v46 = OUTLINED_FUNCTION_81_1();
              bspush_ca_scan(v46, v47);
              OUTLINED_FUNCTION_4_14();
              goto LABEL_16;
            case 6:
              v40 = OUTLINED_FUNCTION_91_0();
              bspush_ca_scan(v40, v41);
              OUTLINED_FUNCTION_4_14();
              goto LABEL_16;
            case 7:
              v42 = OUTLINED_FUNCTION_54_1();
              bspush_ca_scan(v42, v43);
              OUTLINED_FUNCTION_4_14();
              goto LABEL_16;
            case 8:
              OUTLINED_FUNCTION_4_14();
LABEL_16:
              if (!test_string_s())
              {
                break;
              }

              continue;
            case 9:
              goto LABEL_18;
            default:
              goto LABEL_4;
          }

          break;
        }
      }

      OUTLINED_FUNCTION_162(3, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75);
LABEL_18:
      OUTLINED_FUNCTION_95_0(v76);
    }
  }

LABEL_4:
  vretproc(v0);
  v33 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_154();
  OUTLINED_FUNCTION_113();
}

uint64_t span_inverted_punct()
{
  OUTLINED_FUNCTION_11_14();
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_14(v3, v4, v5, v6, v7, v8, v9, v10, v53, v57, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, v149, v153, v156);
  OUTLINED_FUNCTION_26_8(v11, v12, v13, v14, v15, v16, v17, v18, v54, v58, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142, v146, v150, v154, v157, v159, v161, v163, v165, v167);
  if (setjmp(v1))
  {
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_0_16();
  if (OUTLINED_FUNCTION_132(v19, v20, v21, v22, v23, v24, v25, v26, v55, v59, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v147, v151, v155, v158, v160, v162, v164, v166, v168))
  {
    goto LABEL_4;
  }

  v27 = OUTLINED_FUNCTION_13_14();
  get_parm(v27, v28, v29, -6);
  OUTLINED_FUNCTION_43_1(v30, v31, v32, v33, v34, v35, v36, v37, v56, v60, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144, v148);
  fence_16(v0, 0, &_MergedGlobals_1_0);
  v38 = OUTLINED_FUNCTION_110();
  starttest(v38, v39);
  v40 = OUTLINED_FUNCTION_54_1();
  if (lpta_loadp_setscan_r(v40, v41))
  {
    goto LABEL_4;
  }

  v44 = OUTLINED_FUNCTION_15_12();
  bspush_ca_scan(v44, v45);
  OUTLINED_FUNCTION_4_14();
  if (!test_string_s())
  {
    goto LABEL_15;
  }

  while (1)
  {
    v46 = *(v0 + 104);
    v47 = v46 ? OUTLINED_FUNCTION_65_1(v46) : OUTLINED_FUNCTION_133();
    if (v47 != 2)
    {
      break;
    }

    OUTLINED_FUNCTION_4_14();
    if (!test_string_s())
    {
      goto LABEL_15;
    }
  }

  if ((v47 - 4) < 3)
  {
    goto LABEL_17;
  }

  if (v47 == 3)
  {
LABEL_15:
    v48 = OUTLINED_FUNCTION_83_1();
    savescptr(v48, v49, v50);
    v51 = *(v0 + 5098);
    OUTLINED_FUNCTION_88_1();
    if (!v52)
    {
      OUTLINED_FUNCTION_50_1();
      single_chars();
    }

LABEL_17:
    OUTLINED_FUNCTION_137(v152);
    result = 0;
    goto LABEL_5;
  }

LABEL_4:
  vretproc(v0);
  result = 94;
LABEL_5:
  v43 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t bracket()
{
  OUTLINED_FUNCTION_11_14();
  v148 = *MEMORY[0x277D85DE8];
  v144[0] = 0;
  v144[1] = 0;
  v142 = 0;
  v143 = 0;
  OUTLINED_FUNCTION_10_14(v2, v3, v4, v5, v6, v7, v8, v9, v141[0], v141[1], v141[2], v141[3], v141[4], v141[5], v141[6], v141[7], v141[8], v141[9], v141[10], v141[11], v141[12], v141[13], v141[14], v141[15], v141[16], v141[17], v141[18], v141[19], v141[20], v141[21], v141[22], v141[23], v141[24], v141[25], v141[26]);
  OUTLINED_FUNCTION_57_1();
  OUTLINED_FUNCTION_161(v10, v11);
  v12 = setjmp(v1);
  if (!v12 && !OUTLINED_FUNCTION_160(v12, v141, v147, v146, v145))
  {
    v15 = OUTLINED_FUNCTION_13_14();
    get_parm(v15, v16, v17, -6);
    v18 = OUTLINED_FUNCTION_56_1();
    OUTLINED_FUNCTION_126(v18, v19);
    v20 = OUTLINED_FUNCTION_67_1();
    push_ptr_init(v20, v21);
    v22 = OUTLINED_FUNCTION_66_1();
    push_ptr_init(v22, v23);
    v24 = 0;
    v25 = OUTLINED_FUNCTION_73_1();
    fence_16(v25, v26, v27);
    v28 = OUTLINED_FUNCTION_29_5();
    if (lpta_loadp_setscan_r(v28, v29) || (OUTLINED_FUNCTION_4_14(), v24 = 0, v30 = 0, test_string_s()))
    {
      while (2)
      {
        v31 = OUTLINED_FUNCTION_27_6();
        starttest(v31, v32);
        v33 = OUTLINED_FUNCTION_28_5();
        if (lpta_loadp_setscan_r(v33, v34))
        {
LABEL_7:
          v35 = OUTLINED_FUNCTION_28_5();
          if (lpta_loadp_setscan_r(v35, v36) || (OUTLINED_FUNCTION_4_14(), v37 = test_string_s(), v38 = v24, v37))
          {
LABEL_9:
            v39 = OUTLINED_FUNCTION_28_5();
            if (lpta_loadp_setscan_r(v39, v40))
            {
              goto LABEL_3;
            }

            OUTLINED_FUNCTION_4_14();
            if (test_string_s())
            {
              goto LABEL_3;
            }

LABEL_11:
            v41 = v24;
            v42 = OUTLINED_FUNCTION_72_1();
            savescptr(v42, v43, v44);
            v45 = OUTLINED_FUNCTION_52_1();
            starttest(v45, v46);
            v47 = OUTLINED_FUNCTION_55_1();
            if (!lpta_loadp_setscan_r(v47, v48))
            {
LABEL_12:
              v24 = &unk_2806BB0F7;
              while (1)
              {
                OUTLINED_FUNCTION_4_14();
                if (test_string_s())
                {
                  break;
                }

                v49 = OUTLINED_FUNCTION_54_1();
                bspush_ca_scan(v49, v50);
              }

              goto LABEL_42;
            }

            goto LABEL_70;
          }

LABEL_27:
          v24 = v38;
          v77 = OUTLINED_FUNCTION_90_1();
          savescptr(v77, v78, v79);
          v80 = OUTLINED_FUNCTION_32_3();
          starttest(v80, v81);
          if (*(v0 + 2642) == *(v0 + 2610))
          {
            v82 = OUTLINED_FUNCTION_7_14();
            if (!lpta_loadp_setscan_r(v82, v83))
            {
              v106 = OUTLINED_FUNCTION_3_15();
              if (!testFldeq(v106, v107, v108, v109))
              {
                LODWORD(v30) = v24;
                if (advance_tok(v0))
                {
                  goto LABEL_43;
                }

LABEL_70:
                OUTLINED_FUNCTION_23_8();
                single_chars();
                goto LABEL_71;
              }

LABEL_32:
              LODWORD(v30) = v24;
              goto LABEL_43;
            }
          }

LABEL_29:
          v84 = OUTLINED_FUNCTION_41_1();
          starttest(v84, v85);
          v86 = OUTLINED_FUNCTION_7_14();
          v41 = v24;
          if (!lpta_loadp_setscan_r(v86, v87))
          {
LABEL_39:
            v24 = &unk_2806BB0F6;
            while (1)
            {
              OUTLINED_FUNCTION_4_14();
              if (test_string_s())
              {
                break;
              }

              v110 = OUTLINED_FUNCTION_54_1();
              bspush_ca_scan(v110, v111);
            }

LABEL_42:
            LODWORD(v30) = v41;
            goto LABEL_43;
          }

LABEL_30:
          v88 = OUTLINED_FUNCTION_52_1();
          starttest(v88, v89);
          v90 = OUTLINED_FUNCTION_7_14();
          lpta_loadp_setscan_r(v90, v91);
          OUTLINED_FUNCTION_174();
          if (v94)
          {
LABEL_31:
            v95 = OUTLINED_FUNCTION_46_1();
            starttest(v95, v96);
            OUTLINED_FUNCTION_52_1();
            bspush_ca_boa();
            v97 = OUTLINED_FUNCTION_7_14();
            if (lpta_loadp_setscan_r(v97, v98))
            {
              goto LABEL_32;
            }

            v99 = OUTLINED_FUNCTION_49_1();
            bspush_ca_scan(v99, v100);
            v101 = OUTLINED_FUNCTION_1_15();
            v105 = testFldeq(v101, v102, v103, v104);
            v92 = 73;
            v93 = v24;
            LODWORD(v30) = v24;
            if (v105)
            {
              goto LABEL_43;
            }
          }

LABEL_67:
          LODWORD(v30) = v93;
          v24 = v92;
          bspush_ca_scan_boa();
          v138 = OUTLINED_FUNCTION_6_14();
          if (!testFldeq(v138, v139, v140, v24))
          {
            LODWORD(v30) = 1;
          }

LABEL_43:
          v112 = v30;
LABEL_44:
          v113 = *(v0 + 104);
          if (v113)
          {
            v114 = OUTLINED_FUNCTION_60_1(v113);
          }

          else
          {
            v114 = vback(v0, v112);
            v24 = 0;
          }

          switch(v114)
          {
            case 1:
              continue;
            case 2:
              v30 = v24;
              goto LABEL_18;
            case 3:
            case 6:
            case 14:
            case 15:
            case 24:
            case 29:
            case 35:
            case 36:
              goto LABEL_71;
            case 4:
              goto LABEL_21;
            case 5:
              goto LABEL_22;
            case 7:
              goto LABEL_7;
            case 8:
              v115 = OUTLINED_FUNCTION_45_1();
              bspush_ca_scan(v115, v116);
              goto LABEL_49;
            case 9:
            case 17:
              goto LABEL_16;
            case 10:
LABEL_49:
              OUTLINED_FUNCTION_4_14();
              v117 = test_string_s();
              v112 = v24;
              if (!v117)
              {
                goto LABEL_16;
              }

              goto LABEL_44;
            case 11:
              goto LABEL_9;
            case 12:
              v38 = v24;
              goto LABEL_27;
            case 13:
              goto LABEL_29;
            case 16:
              goto LABEL_30;
            case 18:
              v41 = v24;
              goto LABEL_39;
            case 19:
              goto LABEL_31;
            case 20:
              bspop_boa(v0);
              v118 = advance_tok(v0);
              v112 = v24;
              if (v118)
              {
                goto LABEL_44;
              }

              v119 = OUTLINED_FUNCTION_52_1();
              bspush_ca_scan(v119, v120);
              goto LABEL_53;
            case 21:
              OUTLINED_FUNCTION_174();
              goto LABEL_67;
            case 22:
LABEL_53:
              OUTLINED_FUNCTION_125();
              v121 = OUTLINED_FUNCTION_59_1();
              savescptr(v121, v122, v123);
              OUTLINED_FUNCTION_4_14();
              v124 = test_string_s();
              v112 = v24;
              if (!v124)
              {
                goto LABEL_61;
              }

              goto LABEL_44;
            case 23:
LABEL_61:
              v130 = OUTLINED_FUNCTION_72_1();
              savescptr(v130, v131, v132);
              OUTLINED_FUNCTION_63_1();
              goto LABEL_25;
            case 25:
              bspop_boa(v0);
              goto LABEL_70;
            case 26:
              v125 = OUTLINED_FUNCTION_3_15();
              v129 = testFldeq(v125, v126, v127, v128);
              v112 = v24;
              if (v129)
              {
                goto LABEL_44;
              }

              goto LABEL_58;
            case 27:
              bspop_boa(v0);
              goto LABEL_58;
            case 28:
LABEL_58:
              if (advance_tok(v0))
              {
                v112 = v24;
              }

              else
              {
                v112 = 1;
              }

              goto LABEL_44;
            case 31:
              goto LABEL_11;
            case 32:
              goto LABEL_70;
            case 33:
              v133 = OUTLINED_FUNCTION_90_1();
              savescptr(v133, v134, v135);
              if (!lpta_loadp_setscan_l(v0, v144))
              {
                *(v0 + 136) = 1;
                v136 = *(v0 + 1408);
                v137 = OUTLINED_FUNCTION_12_14();
                if (!test_ptr(v137))
                {
                  goto LABEL_70;
                }
              }

              goto LABEL_71;
            case 34:
              v41 = v24;
              goto LABEL_12;
            default:
              goto LABEL_3;
          }
        }

        break;
      }

      v51 = OUTLINED_FUNCTION_38_2();
      bspush_ca_scan(v51, v52);
      OUTLINED_FUNCTION_4_14();
      LODWORD(v30) = v24;
      if (test_string_s())
      {
        goto LABEL_43;
      }

LABEL_16:
      v53 = OUTLINED_FUNCTION_90_1();
      savescptr(v53, v54, v55);
    }

    else
    {
LABEL_18:
      OUTLINED_FUNCTION_75_1();
      v24 = &v142;
      v56 = OUTLINED_FUNCTION_72_1();
      savescptr(v56, v57, v58);
      v59 = OUTLINED_FUNCTION_52_1();
      starttest_l(v59, v60);
      v61 = OUTLINED_FUNCTION_55_1();
      if (!lpta_loadp_setscan_r(v61, v62))
      {
        v63 = OUTLINED_FUNCTION_1_15();
        if (!testFldeq(v63, v64, v65, v66))
        {
          v24 = v30;
          if (!advance_tok(v0))
          {
LABEL_21:
            LODWORD(v30) = v24;
            OUTLINED_FUNCTION_115();
            v67 = OUTLINED_FUNCTION_59_1();
            savescptr(v67, v68, v69);
            OUTLINED_FUNCTION_4_14();
            if (test_string_s())
            {
              goto LABEL_43;
            }

LABEL_22:
            LODWORD(v30) = v24;
            OUTLINED_FUNCTION_93_0();
            v70 = OUTLINED_FUNCTION_83_1();
            savescptr(v70, v71, v72);
            v73 = OUTLINED_FUNCTION_1_15();
            if (!testFldeq(v73, v74, v75, v76) && !advance_tok(v0))
            {
              OUTLINED_FUNCTION_50_1();
LABEL_25:
              delete_inp_from_left();
              goto LABEL_71;
            }
          }
        }

        goto LABEL_43;
      }
    }

LABEL_71:
    OUTLINED_FUNCTION_95_0(v143);
  }

LABEL_3:
  vretproc(v0);
  v13 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_173();
}

void misc_chars()
{
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_11_14();
  v77 = *MEMORY[0x277D85DE8];
  v64 = 0;
  v65 = 0;
  v62 = 0;
  v63 = 0;
  HIDWORD(v61) = 0;
  OUTLINED_FUNCTION_58_1();
  bzero(v60, v1);
  OUTLINED_FUNCTION_57_1();
  bzero(v76, v2);
  v3 = setjmp(v76);
  if (v3 || OUTLINED_FUNCTION_34_3(v3, v60, v4, v5, v6, v7, v8, v9, v58, v59, v60[0], v60[1], v60[2], v60[3], v60[4], v60[5], v60[6], v60[7], v60[8], v60[9], v60[10], v60[11], v60[12], v60[13], v60[14], v60[15], v60[16], v60[17], v60[18], v60[19], v60[20], v60[21], v60[22], v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76[0]))
  {
    goto LABEL_3;
  }

  v11 = OUTLINED_FUNCTION_13_14();
  get_parm(v11, v12, v13, -6);
  OUTLINED_FUNCTION_62_1(v14, &v62);
  HIDWORD(v61) = 65532;
  fence_16(v0, 0, &_MergedGlobals_1_0);
  v15 = OUTLINED_FUNCTION_29_5();
  if (!lpta_loadp_setscan_r(v15, v16))
  {
    OUTLINED_FUNCTION_4_14();
    if (!test_string_s())
    {
LABEL_27:
      OUTLINED_FUNCTION_75_1();
      v55 = OUTLINED_FUNCTION_138();
      savescptr(v55, v56, v57);
      goto LABEL_28;
    }
  }

  OUTLINED_FUNCTION_153();
  while (2)
  {
    v17 = OUTLINED_FUNCTION_55_1();
    if (!lpta_loadp_setscan_r(v17, v18))
    {
      OUTLINED_FUNCTION_4_14();
      if (!test_string_s())
      {
LABEL_9:
        v19 = OUTLINED_FUNCTION_106();
        savescptr(v19, v20, &v62);
        v21 = OUTLINED_FUNCTION_112();
        starttest(v21, v22);
        v23 = OUTLINED_FUNCTION_74_1();
        move_i(v23, v24, v25);
        goto LABEL_10;
      }
    }

LABEL_15:
    v29 = OUTLINED_FUNCTION_55_1();
    if (lpta_loadp_setscan_r(v29, v30) || (OUTLINED_FUNCTION_4_14(), test_string_s()))
    {
LABEL_17:
      v31 = OUTLINED_FUNCTION_55_1();
      if (lpta_loadp_setscan_r(v31, v32) || (OUTLINED_FUNCTION_4_14(), test_string_s()))
      {
LABEL_23:
        v50 = OUTLINED_FUNCTION_53_1();
        if (!lpta_loadp_setscan_r(v50, v51) && !advance_tok(v0))
        {
LABEL_25:
          OUTLINED_FUNCTION_118();
          v52 = OUTLINED_FUNCTION_138();
          savescptr(v52, v53, v54);
        }
      }

      else
      {
LABEL_19:
        v33 = OUTLINED_FUNCTION_84_1();
        savescptr(v33, v34, &v62);
        v35 = OUTLINED_FUNCTION_70_1();
        starttest(v35, v36);
        v37 = *(v0 + 5130);
        OUTLINED_FUNCTION_170();
        if (!v39 && *(v0 + 5110) != v38)
        {
          v40 = OUTLINED_FUNCTION_74_1();
          move_i(v40, v41, v42);
          goto LABEL_10;
        }
      }

LABEL_26:
      OUTLINED_FUNCTION_138();
      single_chars();
      goto LABEL_28;
    }

LABEL_22:
    v43 = OUTLINED_FUNCTION_91_0();
    savescptr(v43, v44, &v62);
    v45 = OUTLINED_FUNCTION_54_1();
    starttest(v45, v46);
    v47 = OUTLINED_FUNCTION_74_1();
    move_i(v47, v48, v49);
LABEL_10:
    OUTLINED_FUNCTION_64_1();
    convert_monetary_exp();
    if (!v26)
    {
LABEL_28:
      OUTLINED_FUNCTION_95_0(v63);
      break;
    }

    v27 = *(v0 + 104);
    if (v27)
    {
      v28 = OUTLINED_FUNCTION_65_1(v27);
    }

    else
    {
      v28 = OUTLINED_FUNCTION_133();
    }

    switch(v28)
    {
      case 1:
        continue;
      case 2:
        goto LABEL_27;
      case 3:
      case 7:
      case 11:
      case 15:
        goto LABEL_28;
      case 4:
        goto LABEL_15;
      case 5:
        goto LABEL_9;
      case 6:
      case 10:
      case 14:
      case 16:
        goto LABEL_26;
      case 8:
        goto LABEL_17;
      case 9:
        goto LABEL_22;
      case 12:
        goto LABEL_23;
      case 13:
        goto LABEL_19;
      case 17:
        goto LABEL_25;
      default:
        goto LABEL_3;
    }
  }

LABEL_3:
  vretproc(v0);
  v10 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_173();
  OUTLINED_FUNCTION_113();
}

uint64_t init_ptr_End_reproc_string()
{
  OUTLINED_FUNCTION_11_14();
  v170 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_10_14(v2, v3, v4, v5, v6, v7, v8, v9, v54, v58, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142, v146, v150, v153, v156);
  OUTLINED_FUNCTION_26_8(v10, v11, v12, v13, v14, v15, v16, v17, v55, v59, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v147, v151, v154, v157, v160, v162, v164, v166, v168);
  if (!setjmp(v1))
  {
    OUTLINED_FUNCTION_0_16();
    if (!OUTLINED_FUNCTION_132(v18, v19, v20, v21, v22, v23, v24, v25, v56, v60, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144, v148, v152, v155, v158, v161, v163, v165, v167, v169))
    {
      v28 = OUTLINED_FUNCTION_63_1();
      get_parm(v28, v29, v30, -6);
      OUTLINED_FUNCTION_43_1(v31, v32, v33, v34, v35, v36, v37, v38, v57, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, v149);
      fence_16(v0, 0, &_MergedGlobals_1_0);
      v39 = OUTLINED_FUNCTION_130();
      fence_16(v39, v40, v41);
      OUTLINED_FUNCTION_180();
      OUTLINED_FUNCTION_150();
      if (compare_ptas(v0) || testeq(v0))
      {
        OUTLINED_FUNCTION_143();
LABEL_8:
        *(v0 + 136) = 1;
        *(v0 + 112) = v159;
        *(v0 + 128) = 0;
        v42 = OUTLINED_FUNCTION_135();
        addfence(v42, v43);
        v44 = OUTLINED_FUNCTION_55_1();
        starttest_l(v44, v45);
        v46 = OUTLINED_FUNCTION_54_1();
        if (!lpta_loadp_setscan_l(v46, v47))
        {
          while (2)
          {
            v48 = OUTLINED_FUNCTION_70_1();
            bspush_ca_scan(v48, v49);
            *(v0 + 136) = 1;
            *(v0 + 112) = *(v0 + 2504);
            *(v0 + 128) = 0;
            if (test_ptr(v0))
            {
LABEL_10:
              if (*(v0 + 104))
              {
                *(v0 + 104) = 0;
              }

              else
              {
                OUTLINED_FUNCTION_133();
              }

              OUTLINED_FUNCTION_152();
              if (!(!v52 & v51))
              {
                switch(v50)
                {
                  case 1:
                    goto LABEL_19;
                  case 2:
                    continue;
                  case 3:
                    if (!advance_tok(v0))
                    {
                      continue;
                    }

                    goto LABEL_10;
                  default:
                    goto LABEL_8;
                }
              }

              goto LABEL_3;
            }

            break;
          }

          *(v0 + 2504) = *(v0 + 3352);
          *(v0 + 2726) = 0;
          if (*(v0 + 2670) == 1)
          {
            *(v0 + 2670) = 0;
          }
        }

LABEL_19:
        OUTLINED_FUNCTION_98_0();
        v53 = OUTLINED_FUNCTION_12_14();
        remfence(v53, 5);
        vretproc(v0);
        result = 0;
        goto LABEL_4;
      }
    }
  }

LABEL_3:
  vretproc(v0);
  result = 94;
LABEL_4:
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t create_final_sync()
{
  OUTLINED_FUNCTION_76_1();
  v144 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_10_14(v2, v3, v4, v5, v6, v7, v8, v9, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118, v121, v124, v127, v130);
  OUTLINED_FUNCTION_26_8(v10, v11, v12, v13, v14, v15, v16, v17, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v119, v122, v125, v128, v131, v134, v136, v138, v140, v142);
  if (!setjmp(v1))
  {
    OUTLINED_FUNCTION_0_16();
    if (!OUTLINED_FUNCTION_132(v18, v19, v20, v21, v22, v23, v24, v25, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117, v120, v123, v126, v129, v132, v135, v137, v139, v141, v143))
    {
      v28 = OUTLINED_FUNCTION_54_1();
      OUTLINED_FUNCTION_126(v28, v29);
      v30 = OUTLINED_FUNCTION_70_1();
      OUTLINED_FUNCTION_127(v30, v31);
      v32 = OUTLINED_FUNCTION_73_1();
      fence_16(v32, v33, v34);
      *(v0 + 168) = 1;
      OUTLINED_FUNCTION_117();
      v35 = OUTLINED_FUNCTION_47_1();
      insert_l(v35);
      v36 = OUTLINED_FUNCTION_54_1();
      lpta_storep(v36, v37);
      v38 = OUTLINED_FUNCTION_142();
      starttest(v38, v39);
      v40 = OUTLINED_FUNCTION_70_1();
      v42 = 0;
      if (lpta_loadp_setscan_l(v40, v41))
      {
LABEL_6:
        v45 = OUTLINED_FUNCTION_110();
        starttest(v45, v46);
        v47 = OUTLINED_FUNCTION_66_1();
        if (lpta_loadp_setscan_l(v47, v48))
        {
LABEL_16:
          OUTLINED_FUNCTION_95_0(v133);
          goto LABEL_3;
        }

        OUTLINED_FUNCTION_22_8();
        bspush_ca_scan_boa();
        v43 = advanc(v0);
        if (v43)
        {
          v44 = v42;
        }

        else
        {
          v44 = 1;
        }
      }

      else
      {
        OUTLINED_FUNCTION_15_12();
        bspush_ca_scan_boa();
        v43 = advanc(v0);
        v44 = !v43;
      }

      if (*(v0 + 104))
      {
        v49 = OUTLINED_FUNCTION_144(v43, v44);
      }

      else
      {
        v50 = vback(v0, v44);
        v49 = 0;
      }

      v42 = v49;
      switch(v50)
      {
        case 1:
          goto LABEL_6;
        case 2:
          bspop_boa(v0);
          OUTLINED_FUNCTION_50_1();
          project_word_boundary_sync();
          goto LABEL_16;
        case 3:
        case 4:
          goto LABEL_16;
        case 5:
          bspop_boa(v0);
          *(v0 + 168) = 1;
          *(v0 + 144) = v133;
          *(v0 + 136) = 1;
          v51 = OUTLINED_FUNCTION_12_14();
          proj_l(v51);
          goto LABEL_16;
        default:
          break;
      }
    }
  }

LABEL_3:
  vretproc(v0);
  v26 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_105();
}

uint64_t single_chars_token()
{
  OUTLINED_FUNCTION_11_14();
  v202 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_10_14(v2, v3, v4, v5, v6, v7, v8, v9, v62, v67, v72, v77, v82, v87, v92, v97, v102, v107, v112, v117, v122, v127, v132, v137, v142, v147, v152, v157, v162, v167, v172, v177, v182, v186, v189);
  OUTLINED_FUNCTION_26_8(v10, v11, v12, v13, v14, v15, v16, v17, v63, v68, v73, v78, v83, v88, v93, v98, v103, v108, v113, v118, v123, v128, v133, v138, v143, v148, v153, v158, v163, v168, v173, v178, v183, v187, v190, v192, v194, v196, v198, v200);
  if (!setjmp(v1))
  {
    OUTLINED_FUNCTION_0_16();
    if (!OUTLINED_FUNCTION_132(v18, v19, v20, v21, v22, v23, v24, v25, v64, v69, v74, v79, v84, v89, v94, v99, v104, v109, v114, v119, v124, v129, v134, v139, v144, v149, v154, v159, v164, v169, v174, v179, v184, v188, v191, v193, v195, v197, v199, v201))
    {
      v28 = OUTLINED_FUNCTION_13_14();
      get_parm(v28, v29, v30, -6);
      OUTLINED_FUNCTION_43_1(v31, v32, v33, v34, v35, v36, v37, v38, v65, v70, v75, v80, v85, v90, v95, v100, v105, v110, v115, v120, v125, v130, v135, v140, v145, v150, v155, v160, v165, v170, v175, v180);
      fence_16(v0, 0, &_MergedGlobals_1_0);
      v39 = OUTLINED_FUNCTION_110();
      starttest(v39, v40);
      v41 = OUTLINED_FUNCTION_54_1();
      if (lpta_loadp_setscan_r(v41, v42))
      {
LABEL_5:
        OUTLINED_FUNCTION_50_1();
        single_chars();
LABEL_6:
        OUTLINED_FUNCTION_61_1(v43, v44, v45, v46, v47, v48, v49, v50, v66, v71, v76, v81, v86, v91, v96, v101, v106, v111, v116, v121, v126, v131, v136, v141, v146, v151, v156, v161, v166, v171, v176, v181, v185);
      }

      else
      {
        v51 = 0;
        while (2)
        {
          v52 = v51;
          v53 = OUTLINED_FUNCTION_54_1();
          bspush_ca_scan(v53, v54);
          OUTLINED_FUNCTION_70_1();
          bspush_ca_scan_boa();
          v55 = OUTLINED_FUNCTION_51_1();
          if (!testFldeq(v55, v56, 0, 72))
          {
            v52 = 1;
          }

LABEL_10:
          v57 = v0[13];
          if (v57)
          {
            v43 = OUTLINED_FUNCTION_65_1(v57);
            v52 = v44;
          }

          else
          {
            v43 = vback(v0, v52);
            v52 = 0;
          }

          v51 = v52;
          switch(v43)
          {
            case 1:
              goto LABEL_5;
            case 2:
              OUTLINED_FUNCTION_75_1();
              v59 = OUTLINED_FUNCTION_83_1();
              savescptr(v59, v60, v61);
              goto LABEL_5;
            case 3:
              bspop_boa(v0);
              v58 = advance_tok(v0);
              v51 = v52;
              if (!v58)
              {
                continue;
              }

              goto LABEL_10;
            case 4:
              continue;
            case 5:
              goto LABEL_6;
            default:
              goto LABEL_3;
          }
        }
      }
    }
  }

LABEL_3:
  vretproc(v0);
  v26 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_105();
}

void single_chars()
{
  OUTLINED_FUNCTION_114();
  v74 = v1;
  OUTLINED_FUNCTION_76_1();
  v88 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_169();
  v76[1] = 0;
  *v77 = 0;
  v76[0] = 0;
  OUTLINED_FUNCTION_58_1();
  bzero(v75, v2);
  OUTLINED_FUNCTION_57_1();
  bzero(v87, v3);
  if (setjmp(v87) || ventproc(v0, v75, v86, v85, v84, v87))
  {
LABEL_3:
    vretproc(v0);
  }

  else
  {
    v5 = OUTLINED_FUNCTION_74_1();
    OUTLINED_FUNCTION_126(v5, v6);
    v7 = OUTLINED_FUNCTION_84_1();
    get_parm(v7, v8, v74, -6);
    v81[0] = -4;
    v79 = -4;
    v9 = OUTLINED_FUNCTION_70_1();
    push_ptr_init(v9, v10);
    v11 = OUTLINED_FUNCTION_151();
    push_ptr_init(v11, v12);
    v13 = OUTLINED_FUNCTION_54_1();
    push_ptr_init(v13, v14);
    v15 = 0;
    v16 = OUTLINED_FUNCTION_73_1();
    fence_16(v16, v17, v18);
    v81[1] = 0;
    v80 = 0;
    OUTLINED_FUNCTION_74_1();
    single_chars_count_inp();
    OUTLINED_FUNCTION_75_1();
    v73 = v19;
    while (2)
    {
      startloop(v0, v19);
      v20 = OUTLINED_FUNCTION_74_1();
      lpta_loadpn(v20, v21);
      OUTLINED_FUNCTION_80_1();
      lpta_mover();
      v22 = OUTLINED_FUNCTION_70_1();
      lpta_storep(v22, v23);
      v24 = OUTLINED_FUNCTION_84_1();
      lpta_loadpn(v24, v25);
      OUTLINED_FUNCTION_80_1();
      lpta_mover();
      v26 = OUTLINED_FUNCTION_54_1();
      lpta_storep(v26, v27);
      while (1)
      {
LABEL_7:
        v28 = OUTLINED_FUNCTION_70_1();
        v30 = forall_to_test(v28, v29, v76);
        v31 = v15;
        if (v30)
        {
          goto LABEL_19;
        }

LABEL_8:
        v15 = v31;
        bspush_ca(v0);
        v32 = OUTLINED_FUNCTION_70_1();
        if (lpta_loadp_setscan_r(v32, v33))
        {
          goto LABEL_19;
        }

        v34 = advance_tok(v0);
        v35 = v15;
        if (v34)
        {
          goto LABEL_19;
        }

LABEL_10:
        v15 = v35;
        v36 = OUTLINED_FUNCTION_157();
        savescptr(v36, v37, v77);
LABEL_11:
        OUTLINED_FUNCTION_70_1();
        char_name();
LABEL_12:
        --v80;
        v38 = OUTLINED_FUNCTION_70_1();
        single_chars_forced_syn(v38, v39, v77, v82, v81, &v79);
LABEL_13:
        v40 = v15;
        v41 = 1;
        if (*(v0 + 2422) == 1)
        {
          break;
        }

LABEL_41:
        v15 = v40;
        OUTLINED_FUNCTION_75_1();
        forall_cont_from(v0);
      }

LABEL_14:
      if (v41 != 1 && *(v0 + 2642) != *(v0 + 2614))
      {
        v42 = OUTLINED_FUNCTION_134();
        starttest(v42, v43);
        OUTLINED_FUNCTION_111();
        bspush_ca_boa();
        v44 = OUTLINED_FUNCTION_54_1();
        if (!lpta_loadp_setscan_r(v44, v45))
        {
          v46 = OUTLINED_FUNCTION_106();
          bspush_ca_scan(v46, v47);
          OUTLINED_FUNCTION_24_8();
          if (!test_string_s())
          {
LABEL_18:
            LODWORD(v15) = 1;
          }
        }

LABEL_19:
        v48 = v15;
LABEL_20:
        v49 = *(v0 + 104);
        if (v49)
        {
          v50 = OUTLINED_FUNCTION_65_1(v49);
          v15 = v51;
        }

        else
        {
          v50 = vback(v0, v48);
          v15 = 0;
        }

        switch(v50)
        {
          case 1:
            v19 = v73;
            continue;
          case 2:
            goto LABEL_37;
          case 3:
            goto LABEL_11;
          case 4:
            v52 = OUTLINED_FUNCTION_15_12();
            v54 = forto_adv_upto_r(v52, v53, 3, 10, 1, v78);
            v48 = v15;
            if (v54)
            {
              goto LABEL_20;
            }

LABEL_37:
            v41 = *(v0 + 2422);
            goto LABEL_14;
          case 5:
            v35 = v15;
            goto LABEL_10;
          case 6:
            goto LABEL_12;
          case 7:
            goto LABEL_13;
          case 8:
            v40 = v15;
            goto LABEL_41;
          case 9:
            goto LABEL_7;
          case 10:
            v31 = v15;
            goto LABEL_8;
          case 11:
            goto LABEL_44;
          case 12:
            bspop_boa(v0);
            v60 = OUTLINED_FUNCTION_40_1();
            starttest_l(v60, v61);
            OUTLINED_FUNCTION_71_1();
            bspush_ca_boa();
            v48 = v15;
            if (*(v0 + 2634) == *(v0 + 2614))
            {
              v62 = OUTLINED_FUNCTION_54_1();
              v64 = lpta_loadp_setscan_r(v62, v63);
              v48 = v15;
              if (!v64)
              {
                v65 = OUTLINED_FUNCTION_80_1();
                v67 = testFldeq(v65, v66, 3, 1);
                v48 = v15;
                if (!v67)
                {
                  if (advance_tok(v0))
                  {
                    v48 = v15;
                  }

                  else
                  {
                    v48 = 1;
                  }
                }
              }
            }

            goto LABEL_20;
          case 13:
            v55 = OUTLINED_FUNCTION_64_1();
            bspush_ca_scan(v55, v56);
            *(v0 + 136) = 1;
            v57 = *(v0 + 1392);
            v58 = OUTLINED_FUNCTION_12_14();
            v59 = test_ptr(v58);
            goto LABEL_35;
          case 14:
            goto LABEL_18;
          case 15:
            OUTLINED_FUNCTION_80_1();
            OUTLINED_FUNCTION_116();
            v72 = testFldeq(v68, v69, v70, v71);
            v48 = v15;
            if (v72)
            {
              goto LABEL_20;
            }

            v59 = advance_tok(v0);
LABEL_35:
            v48 = v15;
            if (!v59)
            {
              goto LABEL_18;
            }

            goto LABEL_20;
          case 16:
            bspop_boa(v0);
            separate_tokens();
            goto LABEL_44;
          default:
            goto LABEL_3;
        }
      }

      break;
    }

LABEL_44:
    *(v0 + 2614) = *(v0 + 2638);
    *(v74 + 8) = v83;
    vretproc(v0);
  }

  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_113();
}

uint64_t end_of_word()
{
  OUTLINED_FUNCTION_76_1();
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_14(v3, v4, v5, v6, v7, v8, v9, v10, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117, v120, v123, v124, v125, v126);
  OUTLINED_FUNCTION_57_1();
  OUTLINED_FUNCTION_164(v11, v12, v13, v14, v15, v16, v17, v18, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118, v121, v123, v124, v125, v126, v127, v128, v129, v130, v131);
  if (!setjmp(v1))
  {
    OUTLINED_FUNCTION_0_16();
    if (!OUTLINED_FUNCTION_132(v19, v20, v21, v22, v23, v24, v25, v26, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v119, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131))
    {
      OUTLINED_FUNCTION_21_8();
      v29 = OUTLINED_FUNCTION_66_1();
      push_ptr_init(v29, v30);
      fence_16(v0, 0, &_MergedGlobals_1_0);
      v31 = OUTLINED_FUNCTION_100();
      starttest(v31, v32);
      v33 = OUTLINED_FUNCTION_55_1();
      if (lpta_loadp_setscan_r(v33, v34))
      {
LABEL_5:
        v35 = OUTLINED_FUNCTION_27_6();
        starttest(v35, v36);
        v37 = OUTLINED_FUNCTION_14_12();
        if (lpta_loadp_setscan_r(v37, v38))
        {
          goto LABEL_3;
        }

LABEL_6:
        while (1)
        {
          OUTLINED_FUNCTION_4_14();
          if (test_string_s())
          {
            break;
          }

          v39 = OUTLINED_FUNCTION_55_1();
          bspush_ca_scan(v39, v40);
        }
      }

      else
      {
        v41 = OUTLINED_FUNCTION_15_12();
        bspush_ca_scan(v41, v42);
        bspush_ca_scan(v0, 3);
        v43 = OUTLINED_FUNCTION_51_1();
        if (!testFldeq(v43, v44, 3, 4))
        {
LABEL_9:
          if (!advance_tok(v0))
          {
            goto LABEL_3;
          }
        }
      }

      while (2)
      {
        v45 = *(v0 + 104);
        if (v45)
        {
          v46 = OUTLINED_FUNCTION_65_1(v45);
        }

        else
        {
          v46 = OUTLINED_FUNCTION_133();
        }

        switch(v46)
        {
          case 1:
            goto LABEL_5;
          case 2:
            *(v0 + 136) = 1;
            v47 = *(v0 + 1392);
            v48 = OUTLINED_FUNCTION_12_14();
            if (test_ptr(v48))
            {
              continue;
            }

            break;
          case 3:
            v49 = OUTLINED_FUNCTION_130();
            if (!testFldeq(v49, v50, 3, 5))
            {
              goto LABEL_9;
            }

            continue;
          case 4:
            goto LABEL_9;
          case 8:
            v51 = OUTLINED_FUNCTION_55_1();
            savescptr(v51, v52, &v123);
            v53 = OUTLINED_FUNCTION_54_1();
            if (end_of_word(v53))
            {
              continue;
            }

            break;
          case 9:
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
  v27 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_105();
}

uint64_t tok_dict_entry()
{
  OUTLINED_FUNCTION_11_14();
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_14(v3, v4, v5, v6, v7, v8, v9, v10, v40, v44, v48, v52, v56, v60, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v133, v134, v135);
  OUTLINED_FUNCTION_26_8(v11, v12, v13, v14, v15, v16, v17, v18, v41, v45, v49, v53, v57, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v132, v133, v134, v135, v136, v137, v138, v139, v140);
  if (setjmp(v1) || (OUTLINED_FUNCTION_0_16(), OUTLINED_FUNCTION_132(v19, v20, v21, v22, v23, v24, v25, v26, v42, v46, v50, v54, v58, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v132, v133, v134, v135, v136, v137, v138, v139, v140)) || ((v27 = OUTLINED_FUNCTION_63_1(), get_parm(v27, v28, v29, -6), OUTLINED_FUNCTION_43_1(v30, v31, v32, v33, v34, v35, v36, v37, v43, v47, v51, v55, v59, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v132), fence_16(v0, 0, &_MergedGlobals_1_0), *(v0 + 5398) != 1) || callUserDictLookup(v0, v0 + 4032, &v134, &v132)) && (OUTLINED_FUNCTION_50_1(), tok_dict()))
  {
    vretproc(v0);
    result = 94;
  }

  else
  {
    *(v0 + 2504) = v133;
    *(v0 + 2726) = *(v0 + 2734);
    vretproc(v0);
    result = 0;
  }

  v39 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t spell_out_sequence()
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
      single_chars();
      OUTLINED_FUNCTION_167();
      OUTLINED_FUNCTION_61_1(v43, v44, v45, v46, v47, v48, v49, v50, v55, v60, v65, v70, v75, v80, v85, v90, v95, v100, v105, v110, v115, v120, v125, v130, v135, v140, v145, v150, v155, v160, v165, v170, v174);
    }
  }

  vretproc(v0);
  v27 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_105();
}

void process_hostname()
{
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_11_14();
  v108 = *MEMORY[0x277D85DE8];
  v103[0] = 0;
  v103[1] = 0;
  v101 = 0;
  v102 = 0;
  v100[0] = 0;
  v100[1] = 0;
  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_58_1();
  bzero(v94, v1);
  OUTLINED_FUNCTION_57_1();
  bzero(v107, v2);
  if (!setjmp(v107) && !ventproc(v0, v94, v106, v105, v104, v107))
  {
    v4 = OUTLINED_FUNCTION_70_1();
    OUTLINED_FUNCTION_127(v4, v5);
    v6 = OUTLINED_FUNCTION_64_1();
    OUTLINED_FUNCTION_126(v6, v7);
    v8 = OUTLINED_FUNCTION_55_1();
    push_ptr_init(v8, v9);
    v10 = OUTLINED_FUNCTION_54_1();
    push_ptr_init(v10, v11);
    v12 = OUTLINED_FUNCTION_71_1();
    push_ptr_init(v12, v13);
    push_ptr_init(v0, v97);
    v14 = OUTLINED_FUNCTION_128();
    push_ptr_init(v14, v15);
    v16 = OUTLINED_FUNCTION_73_1();
    fence_16(v16, v17, v18);
    *(v0 + 2504) = v102;
    *(v0 + 2726) = *(v0 + 2730);
    startloop(v0, 1);
    v19 = OUTLINED_FUNCTION_55_1();
    copyvar(v19, v20, v103);
    v21 = OUTLINED_FUNCTION_71_1();
    copyvar(v21, v22, &v101);
LABEL_5:
    while (1)
    {
      v23 = OUTLINED_FUNCTION_55_1();
      if (forall_to_test(v23, v24, v98))
      {
        break;
      }

LABEL_6:
      bspush_ca(v0);
      v25 = OUTLINED_FUNCTION_55_1();
      if (lpta_loadp_setscan_r(v25, v26) || advance_tok(v0))
      {
        break;
      }

LABEL_8:
      savescptr(v0, 4, v99);
LABEL_9:
      v27 = OUTLINED_FUNCTION_81_1();
      starttest(v27, v28);
      v29 = OUTLINED_FUNCTION_55_1();
      if (lpta_loadp_setscan_r(v29, v30))
      {
LABEL_10:
        starttest(v0, 21);
        v31 = OUTLINED_FUNCTION_55_1();
        if (!lpta_loadp_setscan_r(v31, v32))
        {
LABEL_37:
          while (1)
          {
            v60 = OUTLINED_FUNCTION_77_1();
            if (testFldeq(v60, v61, v62, 2) || advance_tok(v0))
            {
              break;
            }

            v58 = OUTLINED_FUNCTION_71_1();
            bspush_ca_scan(v58, v59);
          }

          break;
        }

LABEL_11:
        v33 = OUTLINED_FUNCTION_55_1();
        if (!lpta_loadp_setscan_r(v33, v34))
        {
          OUTLINED_FUNCTION_97_0();
          if (!test_string_s())
          {
            *(v0 + 168) = 1;
            OUTLINED_FUNCTION_117();
            v35 = OUTLINED_FUNCTION_97_0();
            insert_l(v35);
          }
        }

LABEL_14:
        OUTLINED_FUNCTION_55_1();
        char_name();
LABEL_15:
        *(v0 + 168) = 1;
        OUTLINED_FUNCTION_117();
        v36 = OUTLINED_FUNCTION_97_0();
        insert_l(v36);
      }

      else
      {
        v37 = OUTLINED_FUNCTION_77_1();
        if (testFldeq(v37, v38, v39, 1) || advance_tok(v0))
        {
          break;
        }

        starttest(v0, 6);
        v40 = OUTLINED_FUNCTION_55_1();
        if (!lpta_loadp_setscan_r(v40, v41))
        {
LABEL_22:
          while (1)
          {
            v46 = OUTLINED_FUNCTION_97_0();
            if (testFldeq(v46, v47, 1, 1) || advance_tok(v0))
            {
              break;
            }

            v44 = OUTLINED_FUNCTION_64_1();
            bspush_ca_scan(v44, v45);
          }

          break;
        }

LABEL_19:
        starttest(v0, 9);
        v42 = OUTLINED_FUNCTION_55_1();
        if (!lpta_loadp_setscan_r(v42, v43))
        {
LABEL_46:
          while (1)
          {
            v66 = OUTLINED_FUNCTION_77_1();
            if (testFldeq(v66, v67, v68, 1) || advance_tok(v0))
            {
              break;
            }

            bspush_ca_scan(v0, 10);
          }

          break;
        }

LABEL_50:
        v69 = OUTLINED_FUNCTION_157();
        starttest(v69, v70);
        v71 = OUTLINED_FUNCTION_55_1();
        if (!lpta_loadp_setscan_r(v71, v72))
        {
          v73 = OUTLINED_FUNCTION_77_1();
          if (testFldeq(v73, v74, v75, 1) || advance_tok(v0))
          {
            break;
          }

LABEL_53:
          v76 = OUTLINED_FUNCTION_134();
          savescptr(v76, v77, v97);
          v78 = OUTLINED_FUNCTION_77_1();
          if (testFldeq(v78, v79, v80, 1))
          {
            break;
          }

          if (advance_tok(v0))
          {
            break;
          }

          v81 = OUTLINED_FUNCTION_111();
          bspush_ca_scan(v81, v82);
          v83 = OUTLINED_FUNCTION_77_1();
          if (testFldeq(v83, v84, v85, 1) || advance_tok(v0))
          {
            break;
          }

LABEL_57:
          v86 = OUTLINED_FUNCTION_106();
          savescptr(v86, v87, v95);
LABEL_58:
          *(v0 + 136) = 1;
          v88 = OUTLINED_FUNCTION_12_14();
          if (test_ptr(v88))
          {
            break;
          }

          v89 = OUTLINED_FUNCTION_112();
          bspush_ca(v89);
          v90 = *(v0 + 5094);
LABEL_41:
          OUTLINED_FUNCTION_88_1();
          if (!v65)
          {
            break;
          }

LABEL_43:
          OUTLINED_FUNCTION_55_1();
          spell_out_sequence();
LABEL_44:
          v96 = *(v0 + 3352);
        }
      }

LABEL_61:
      v92 = OUTLINED_FUNCTION_54_1();
      lpta_loadpn(v92, v93);
      rpta_loadpn(v0, &v101);
      if (!compare_ptas(v0) && !testeq(v0))
      {
        goto LABEL_3;
      }

LABEL_63:
      forall_cont_from(v0);
    }

    while (2)
    {
      v48 = *(v0 + 104);
      if (v48)
      {
        v49 = OUTLINED_FUNCTION_65_1(v48);
      }

      else
      {
        v49 = vback(v0, 0);
      }

      switch(v49)
      {
        case 2:
          goto LABEL_9;
        case 3:
          OUTLINED_FUNCTION_121();
          if (forto_adv_r(v0, v50, v51, 28, v52, v100))
          {
            continue;
          }

          break;
        case 4:
          goto LABEL_8;
        case 5:
          goto LABEL_10;
        case 6:
          goto LABEL_19;
        case 7:
          savescptr(v0, 7, v99);
          v55 = OUTLINED_FUNCTION_4_14();
          if (!testFldeq(v55, v56, v57, 2) && !advance_tok(v0))
          {
            goto LABEL_50;
          }

          continue;
        case 8:
          goto LABEL_22;
        case 9:
          goto LABEL_50;
        case 10:
          savescptr(v0, 10, v99);
          goto LABEL_50;
        case 11:
          goto LABEL_46;
        case 12:
        case 20:
          goto LABEL_61;
        case 13:
          goto LABEL_53;
        case 14:
          goto LABEL_58;
        case 15:
          goto LABEL_57;
        case 16:
          v63 = OUTLINED_FUNCTION_52_1();
          bspush_ca(v63);
          v64 = *(v0 + 5106);
          goto LABEL_41;
        case 17:
          goto LABEL_43;
        case 18:
          v53 = OUTLINED_FUNCTION_128();
          lpta_loadpn(v53, v54);
          OUTLINED_FUNCTION_150();
          if (!compare_ptas(v0) && !testeq(v0))
          {
            goto LABEL_43;
          }

          continue;
        case 19:
          goto LABEL_44;
        case 21:
          goto LABEL_11;
        case 22:
          OUTLINED_FUNCTION_125();
          savescptr(v0, v91, v99);
          goto LABEL_61;
        case 23:
          goto LABEL_37;
        case 24:
          goto LABEL_14;
        case 25:
          goto LABEL_15;
        case 26:
          goto LABEL_63;
        case 27:
          goto LABEL_5;
        case 28:
          goto LABEL_6;
        default:
          goto LABEL_3;
      }

      break;
    }
  }

LABEL_3:
  vretproc(v0);
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_113();
}

uint64_t process_pathname()
{
  OUTLINED_FUNCTION_11_14();
  v123[30] = *MEMORY[0x277D85DE8];
  v123[0] = 0;
  v123[1] = 0;
  v121 = 0;
  v122 = 0;
  v119 = 0;
  v120 = 0;
  OUTLINED_FUNCTION_10_14(v2, v3, v4, v5, v6, v7, v8, v9, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v116, v117, v118);
  OUTLINED_FUNCTION_57_1();
  OUTLINED_FUNCTION_161(v10, v11);
  if (!setjmp(v1))
  {
    OUTLINED_FUNCTION_82_1();
    if (!OUTLINED_FUNCTION_160(v12, v13, v14, v15, v16))
    {
      v19 = OUTLINED_FUNCTION_13_14();
      get_parm(v19, v20, v21, -6);
      OUTLINED_FUNCTION_21_8();
      v22 = OUTLINED_FUNCTION_71_1();
      push_ptr_init(v22, v23);
      v24 = OUTLINED_FUNCTION_67_1();
      push_ptr_init(v24, v25);
      v26 = OUTLINED_FUNCTION_70_1();
      push_ptr_init(v26, v27);
      fence_16(v0, 0, &_MergedGlobals_1_0);
      v28 = OUTLINED_FUNCTION_42_1();
      startloop(v28, v29);
      v30 = OUTLINED_FUNCTION_71_1();
      copyvar(v30, v31, v123);
      v32 = OUTLINED_FUNCTION_70_1();
      copyvar(v32, v33, &v121);
      v34 = OUTLINED_FUNCTION_71_1();
      if (!forall_to_test(v34, v35, &v115))
      {
LABEL_6:
        v36 = OUTLINED_FUNCTION_52_1();
        bspush_ca(v36);
        v37 = OUTLINED_FUNCTION_7_14();
        if (!lpta_loadp_setscan_r(v37, v38))
        {
          OUTLINED_FUNCTION_4_14();
          if (!test_string_s())
          {
LABEL_8:
            OUTLINED_FUNCTION_115();
            v39 = OUTLINED_FUNCTION_59_1();
            savescptr(v39, v40, v41);
LABEL_9:
            v42 = OUTLINED_FUNCTION_22_8();
            starttest(v42, v43);
            OUTLINED_FUNCTION_8_14();
            v44 = char_name();
LABEL_10:
            OUTLINED_FUNCTION_102(v44, v45, v46, v47, v48, v49, v50, v51, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v115, v116, v117, v118);
            v52 = OUTLINED_FUNCTION_129();
            insert_l(v52);
LABEL_11:
            OUTLINED_FUNCTION_121();
            v53 = OUTLINED_FUNCTION_122();
            if (forto_adv_r(v53, v54, v55, v56, v57, v58))
            {
              goto LABEL_15;
            }

LABEL_12:
            v59 = OUTLINED_FUNCTION_27_6();
            starttest(v59, v60);
            v61 = OUTLINED_FUNCTION_28_5();
            if (!lpta_loadp_setscan_l(v61, v62))
            {
              v63 = OUTLINED_FUNCTION_38_2();
              bspush_ca_scan(v63, v64);
LABEL_14:
              OUTLINED_FUNCTION_4_14();
              if (test_string_s())
              {
                goto LABEL_15;
              }

LABEL_19:
              v66 = OUTLINED_FUNCTION_68_1();
              savescptr(v66, v67, v68);
              OUTLINED_FUNCTION_71_1();
              delete_inp_from_left();
            }

LABEL_20:
            *(v0 + 2504) = v122;
            vretproc(v0);
            result = 0;
            goto LABEL_4;
          }
        }
      }

LABEL_15:
      v65 = *(v0 + 104);
      if (v65)
      {
        v44 = OUTLINED_FUNCTION_65_1(v65);
      }

      else
      {
        v44 = OUTLINED_FUNCTION_133();
      }

      switch(v44)
      {
        case 1:
          goto LABEL_12;
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
        case 7:
          goto LABEL_20;
        case 8:
          goto LABEL_14;
        case 9:
          goto LABEL_19;
        default:
          break;
      }
    }
  }

  vretproc(v0);
  result = 94;
LABEL_4:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

void process_final_parenthetical()
{
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_11_14();
  v77 = *MEMORY[0x277D85DE8];
  v74 = 0;
  v75 = 0;
  v72 = 0;
  v73 = 0;
  v71[0] = 0;
  v71[1] = 0;
  OUTLINED_FUNCTION_10_14(v1, v2, v3, v4, v5, v6, v7, v8, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v70[0], v70[1]);
  OUTLINED_FUNCTION_57_1();
  bzero(v76, v9);
  if (setjmp(v76))
  {
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_82_1();
  if (ventproc(v0, v10, v11, v12, v13, v76))
  {
    goto LABEL_7;
  }

  v14 = OUTLINED_FUNCTION_72_1();
  get_parm(v14, v15, v16, -6);
  OUTLINED_FUNCTION_62_1(v17, &v72);
  v18 = OUTLINED_FUNCTION_56_1();
  push_ptr_init(v18, v19);
  v20 = OUTLINED_FUNCTION_67_1();
  push_ptr_init(v20, v21);
  v22 = OUTLINED_FUNCTION_66_1();
  push_ptr_init(v22, v23);
  fence_16(v0, 0, &_MergedGlobals_1_0);
  OUTLINED_FUNCTION_79_1();
  if (!v24)
  {
    goto LABEL_7;
  }

  v25 = OUTLINED_FUNCTION_15_12();
  starttest(v25, v26);
  v27 = OUTLINED_FUNCTION_28_5();
  if (lpta_loadp_setscan_r(v27, v28))
  {
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_4_14();
  if (test_string_s())
  {
    goto LABEL_7;
  }

  while (2)
  {
    v30 = OUTLINED_FUNCTION_55_1();
    savescptr(v30, v31, v71);
    OUTLINED_FUNCTION_4_14();
    if (test_string_s())
    {
      goto LABEL_10;
    }

LABEL_9:
    v32 = OUTLINED_FUNCTION_64_1();
    savescptr(v32, v33, v70);
    OUTLINED_FUNCTION_4_14();
    if (test_string_s())
    {
LABEL_10:
      v34 = *(v0 + 104);
      if (v34)
      {
        v35 = OUTLINED_FUNCTION_65_1(v34);
      }

      else
      {
        v35 = OUTLINED_FUNCTION_133();
      }

      switch(v35)
      {
        case 3:
          continue;
        case 4:
          goto LABEL_9;
        case 5:
          goto LABEL_14;
        case 6:
        case 7:
          goto LABEL_15;
        case 8:
          goto LABEL_21;
        case 9:
          goto LABEL_17;
        case 10:
          goto LABEL_18;
        case 11:
          goto LABEL_20;
        default:
          goto LABEL_7;
      }

      goto LABEL_7;
    }

    break;
  }

LABEL_14:
  OUTLINED_FUNCTION_93_0();
  v36 = OUTLINED_FUNCTION_83_1();
  savescptr(v36, v37, v38);
LABEL_15:
  OUTLINED_FUNCTION_66_1();
  if (!end_of_word())
  {
    OUTLINED_FUNCTION_23_8();
    delete_inp_from_right();
LABEL_17:
    OUTLINED_FUNCTION_50_1();
    delete_inp_from_left();
LABEL_18:
    v73 = v69;
    v39 = OUTLINED_FUNCTION_28_5();
    if (!lpta_loadp_setscan_r(v39, v40))
    {
      OUTLINED_FUNCTION_4_14();
      if (!test_string_s())
      {
LABEL_20:
        OUTLINED_FUNCTION_109();
        v41 = OUTLINED_FUNCTION_123();
        savescptr(v41, v42, v43);
      }
    }
  }

LABEL_21:
  OUTLINED_FUNCTION_95_0(v73);
LABEL_7:
  vretproc(v0);
  v29 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_113();
}

void process_final_apostrophe()
{
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_11_14();
  v86 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_16_12(v1, v2, v3, v4, v5, v6, v7, v8, v44, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74);
  OUTLINED_FUNCTION_57_1();
  bzero(v85, v9);
  v10 = setjmp(v85);
  if (v10 || OUTLINED_FUNCTION_34_3(v10, &v46, v11, v12, v13, v14, v15, v16, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85[0]))
  {
    goto LABEL_3;
  }

  v18 = OUTLINED_FUNCTION_72_1();
  get_parm(v18, v19, v20, -6);
  OUTLINED_FUNCTION_21_8();
  v21 = OUTLINED_FUNCTION_54_1();
  push_ptr_init(v21, v22);
  v23 = OUTLINED_FUNCTION_73_1();
  fence_16(v23, v24, v25);
  v26 = OUTLINED_FUNCTION_142();
  startloop(v26, v27);
  while (2)
  {
    while (1)
    {
      v28 = OUTLINED_FUNCTION_142();
      bspush_ca(v28);
      v29 = OUTLINED_FUNCTION_55_1();
      if (lpta_loadp_setscan_l(v29, v30))
      {
        break;
      }

      OUTLINED_FUNCTION_47_1();
      if (test_string_s())
      {
        break;
      }

LABEL_8:
      v31 = OUTLINED_FUNCTION_84_1();
      savescptr(v31, v32, &v69);
LABEL_9:
      v33 = OUTLINED_FUNCTION_13_14();
      lpta_rpta_loadp(v33, v34, v35);
      OUTLINED_FUNCTION_108();
      if (mark_s())
      {
        break;
      }

      v72 = v70;
      v42 = OUTLINED_FUNCTION_142();
      while_iterate(v42, v43, 2);
    }

    v36 = *(v0 + 104);
    if (v36)
    {
      OUTLINED_FUNCTION_65_1(v36);
    }

    else
    {
      v37 = OUTLINED_FUNCTION_96_0();
      vback(v37, v38);
    }

    OUTLINED_FUNCTION_152();
    if (!v41 & v40)
    {
LABEL_3:
      vretproc(v0);
    }

    else
    {
      switch(v39)
      {
        case 1:
          goto LABEL_9;
        case 2:
          goto LABEL_8;
        case 3:
          continue;
        default:
          OUTLINED_FUNCTION_137(v72);
          break;
      }
    }

    break;
  }

  v17 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_113();
}

uint64_t spell_out_alphanum()
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
      *(v0 + 2742) = *(v0 + 2750);
      OUTLINED_FUNCTION_13_14();
      single_chars();
      OUTLINED_FUNCTION_167();
      OUTLINED_FUNCTION_61_1(v43, v44, v45, v46, v47, v48, v49, v50, v55, v60, v65, v70, v75, v80, v85, v90, v95, v100, v105, v110, v115, v120, v125, v130, v135, v140, v145, v150, v155, v160, v165, v170, v174);
    }
  }

  vretproc(v0);
  v27 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_105();
}

void abbreviation()
{
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_146();
  v91 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_78_1();
  v73 = 0;
  v74 = 0;
  OUTLINED_FUNCTION_58_1();
  bzero(v72, v2);
  OUTLINED_FUNCTION_57_1();
  bzero(v90, v3);
  v4 = setjmp(v90);
  if (!v4 && !OUTLINED_FUNCTION_92_0(v4, v72, v5, v6, v7, v8, v9, v10, v67, v68, v69, v70, v71, v72[0], v72[1], v72[2], v72[3], v72[4], v72[5], v72[6], v72[7], v72[8], v72[9], v72[10], v72[11], v72[12], v72[13], v72[14], v72[15], v72[16], v72[17], v72[18], v72[19], v72[20], v72[21], v72[22], v73, v74, v75, v76, v77, v78, v79[0], v79[1], v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90[0]))
  {
    v11 = OUTLINED_FUNCTION_128();
    OUTLINED_FUNCTION_159(v11, v12);
    v13 = OUTLINED_FUNCTION_72_1();
    get_parm(v13, v14, v15, -6);
    OUTLINED_FUNCTION_62_1(v16, &v75);
    v17 = OUTLINED_FUNCTION_87_1();
    push_ptr_init(v17, v18);
    fence_16(v0, 0, &_MergedGlobals_1_0);
    if (*(v0 + 2282) != *(v0 + 5390))
    {
      v19 = 0;
      OUTLINED_FUNCTION_166();
      OUTLINED_FUNCTION_165();
      while (2)
      {
        OUTLINED_FUNCTION_99_0();
        if (!v20)
        {
LABEL_6:
          OUTLINED_FUNCTION_155();
          count_chars();
LABEL_7:
          v21 = OUTLINED_FUNCTION_157();
          starttest(v21, v22);
          v23 = OUTLINED_FUNCTION_134();
          bspush_ca(v23);
          v24 = v19;
          if (*(v0 + 5110) == *(v0 + 5090))
          {
LABEL_8:
            v19 = v24;
            v25 = OUTLINED_FUNCTION_111();
            starttest(v25, v26);
            v27 = lpta_loadp_setscan_r(v0, v79);
            v28 = v19;
            if (v27)
            {
LABEL_30:
              v54 = OUTLINED_FUNCTION_84_1();
              starttest(v54, v55);
              OUTLINED_FUNCTION_64_1();
              bspush_ca_boa();
              if (!end_of_word())
              {
                v19 = 1;
              }
            }

            else
            {
LABEL_9:
              v19 = v28;
              for (i = OUTLINED_FUNCTION_106(); ; i = OUTLINED_FUNCTION_91_0())
              {
                bspush_ca_scan(i, v30);
LABEL_11:
                v31 = OUTLINED_FUNCTION_1_15();
                if (testFldeq(v31, v32, v33, v34) || advance_tok(v0))
                {
                  break;
                }
              }
            }
          }

LABEL_14:
          v35 = v19;
LABEL_15:
          v36 = *(v0 + 104);
          if (v36)
          {
            v37 = OUTLINED_FUNCTION_65_1(v36);
            v19 = v38;
          }

          else
          {
            v37 = vback(v0, v35);
            v19 = 0;
          }

          v39 = v37 - 1;
          v24 = v19;
          v28 = v19;
          switch(v39)
          {
            case 0:
              continue;
            case 1:
              goto LABEL_6;
            case 2:
              goto LABEL_7;
            case 3:
            case 6:
              goto LABEL_30;
            case 4:
              v24 = v19;
              v35 = v19;
              if (*(v0 + 5122) == *(v0 + 5090))
              {
                goto LABEL_8;
              }

              goto LABEL_15;
            case 5:
              goto LABEL_8;
            case 7:
              while (1)
              {
                v48 = OUTLINED_FUNCTION_1_15();
                if (testFldeq(v48, v49, v50, v51) || advance_tok(v0))
                {
                  break;
                }

                v46 = OUTLINED_FUNCTION_54_1();
                bspush_ca_scan(v46, v47);
              }

              goto LABEL_14;
            case 8:
              OUTLINED_FUNCTION_4_14();
              v40 = test_string_s();
              v28 = v19;
              v35 = v19;
              if (!v40)
              {
                goto LABEL_9;
              }

              goto LABEL_15;
            case 9:
              goto LABEL_11;
            case 10:
              goto LABEL_9;
            case 11:
              v41 = OUTLINED_FUNCTION_35_2();
              savescptr(v41, v42, &v77);
              v43 = OUTLINED_FUNCTION_74_1();
              bspush_ca_scan(v43, v44);
              OUTLINED_FUNCTION_4_14();
              v45 = test_string_s();
              v35 = v19;
              if (v45)
              {
                goto LABEL_15;
              }

              goto LABEL_29;
            case 12:
LABEL_29:
              v52 = OUTLINED_FUNCTION_32_3();
              savescptr(v52, v53, &v73);
              goto LABEL_30;
            case 13:
              OUTLINED_FUNCTION_155();
              if (user_abbr_dict())
              {
                goto LABEL_33;
              }

              goto LABEL_41;
            case 14:
              bspop_boa(v0);
              goto LABEL_44;
            case 15:
LABEL_33:
              lpta_loadpn(v0, &v77);
              v56 = OUTLINED_FUNCTION_87_1();
              rpta_loadpn(v56, v57);
              if (compare_ptas(v0) || testneq(v0))
              {
                goto LABEL_40;
              }

              OUTLINED_FUNCTION_120();
              if (!user_abbr_dict())
              {
                v78 = v74;
LABEL_41:
                OUTLINED_FUNCTION_155();
                process_trailing_period();
LABEL_42:
                *(v0 + 2670) = *(v0 + 2678);
                *(v1 + 8) = v78;
                OUTLINED_FUNCTION_137(v76);
                goto LABEL_45;
              }

LABEL_36:
              if (*(v0 + 2618) == 1)
              {
                v58 = OUTLINED_FUNCTION_53_1();
                if (!lpta_loadp_setscan_l(v58, v59) && !advance_tok(v0))
                {
LABEL_39:
                  savescptr(v0, 21, &v77);
                }
              }

LABEL_40:
              OUTLINED_FUNCTION_155();
              if (!abbr(v0, v60, v61, &v73, v62, v63, v64, v65))
              {
                goto LABEL_41;
              }

              break;
            case 16:
              goto LABEL_41;
            case 17:
            case 19:
              goto LABEL_40;
            case 18:
              goto LABEL_36;
            case 20:
              goto LABEL_39;
            case 22:
              goto LABEL_42;
            default:
              goto LABEL_44;
          }
        }

        break;
      }
    }
  }

LABEL_44:
  vretproc(v0);
LABEL_45:
  v66 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_113();
}

uint64_t convert_to_lowercase()
{
  OUTLINED_FUNCTION_11_14();
  v482[30] = *MEMORY[0x277D85DE8];
  v482[0] = 0;
  v482[1] = 0;
  v481[0] = 0;
  v481[1] = 0;
  v480[4] = 0;
  v480[5] = 0;
  OUTLINED_FUNCTION_10_14(v2, v3, v4, v5, v6, v7, v8, v9, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476, v477, v478, v479, v480[0], v480[1], v480[2], v480[3]);
  OUTLINED_FUNCTION_57_1();
  OUTLINED_FUNCTION_161(v10, v11);
  if (setjmp(v1) || (OUTLINED_FUNCTION_82_1(), OUTLINED_FUNCTION_160(v12, v13, v14, v15, v16)))
  {
LABEL_3:
    v17 = 94;
  }

  else
  {
    v20 = OUTLINED_FUNCTION_13_14();
    get_parm(v20, v21, v22, -6);
    OUTLINED_FUNCTION_21_8();
    v23 = OUTLINED_FUNCTION_71_1();
    push_ptr_init(v23, v24);
    v25 = OUTLINED_FUNCTION_67_1();
    push_ptr_init(v25, v26);
    v27 = OUTLINED_FUNCTION_70_1();
    push_ptr_init(v27, v28);
    fence_16(v0, 0, &_MergedGlobals_1_0);
    v29 = OUTLINED_FUNCTION_42_1();
    startloop(v29, v30);
    v31 = OUTLINED_FUNCTION_71_1();
    copyvar(v31, v32, v482);
    v33 = OUTLINED_FUNCTION_70_1();
    copyvar(v33, v34, v481);
    v35 = OUTLINED_FUNCTION_71_1();
    if (!forall_to_test(v35, v36, v480))
    {
LABEL_6:
      v37 = OUTLINED_FUNCTION_52_1();
      bspush_ca(v37);
      v38 = OUTLINED_FUNCTION_7_14();
      if (!lpta_loadp_setscan_r(v38, v39))
      {
        v40 = OUTLINED_FUNCTION_1_15();
        if (!testFldeq(v40, v41, v42, v43))
        {
          v44 = OUTLINED_FUNCTION_4_14();
          if (!testFldeq(v44, v45, v46, 2) && !advance_tok(v0))
          {
LABEL_10:
            OUTLINED_FUNCTION_115();
            v47 = OUTLINED_FUNCTION_59_1();
            savescptr(v47, v48, v49);
LABEL_11:
            v50 = OUTLINED_FUNCTION_22_8();
            starttest(v50, v51);
            v52 = OUTLINED_FUNCTION_7_14();
            if (lpta_loadp_setscan_r(v52, v53) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v54 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v54, v55, v56), OUTLINED_FUNCTION_6_14(), mark_s()))
            {
LABEL_14:
              v57 = OUTLINED_FUNCTION_36_2();
              starttest(v57, v58);
              v59 = OUTLINED_FUNCTION_7_14();
              if (lpta_loadp_setscan_r(v59, v60) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v61 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v61, v62, v63), OUTLINED_FUNCTION_6_14(), mark_s()))
              {
LABEL_17:
                v64 = OUTLINED_FUNCTION_27_6();
                starttest(v64, v65);
                v66 = OUTLINED_FUNCTION_7_14();
                if (lpta_loadp_setscan_r(v66, v67) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v68 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v68, v69, v70), OUTLINED_FUNCTION_6_14(), mark_s()))
                {
LABEL_20:
                  v71 = OUTLINED_FUNCTION_38_2();
                  starttest(v71, v72);
                  v73 = OUTLINED_FUNCTION_7_14();
                  if (lpta_loadp_setscan_r(v73, v74) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v75 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v75, v76, v77), OUTLINED_FUNCTION_6_14(), mark_s()))
                  {
LABEL_23:
                    v78 = OUTLINED_FUNCTION_37_2();
                    starttest(v78, v79);
                    v80 = OUTLINED_FUNCTION_7_14();
                    if (lpta_loadp_setscan_r(v80, v81) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v82 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v82, v83, v84), OUTLINED_FUNCTION_6_14(), mark_s()))
                    {
LABEL_26:
                      v85 = OUTLINED_FUNCTION_45_1();
                      starttest(v85, v86);
                      v87 = OUTLINED_FUNCTION_7_14();
                      if (lpta_loadp_setscan_r(v87, v88) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v89 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v89, v90, v91), OUTLINED_FUNCTION_6_14(), mark_s()))
                      {
LABEL_29:
                        v92 = OUTLINED_FUNCTION_40_1();
                        starttest(v92, v93);
                        v94 = OUTLINED_FUNCTION_7_14();
                        if (lpta_loadp_setscan_r(v94, v95) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v96 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v96, v97, v98), OUTLINED_FUNCTION_6_14(), mark_s()))
                        {
LABEL_32:
                          v99 = OUTLINED_FUNCTION_35_2();
                          starttest(v99, v100);
                          v101 = OUTLINED_FUNCTION_7_14();
                          if (lpta_loadp_setscan_r(v101, v102) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v103 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v103, v104, v105), OUTLINED_FUNCTION_6_14(), mark_s()))
                          {
LABEL_35:
                            v106 = OUTLINED_FUNCTION_32_3();
                            starttest(v106, v107);
                            v108 = OUTLINED_FUNCTION_7_14();
                            if (lpta_loadp_setscan_r(v108, v109) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v110 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v110, v111, v112), OUTLINED_FUNCTION_6_14(), mark_s()))
                            {
LABEL_38:
                              v113 = OUTLINED_FUNCTION_33_3();
                              starttest(v113, v114);
                              v115 = OUTLINED_FUNCTION_7_14();
                              if (lpta_loadp_setscan_r(v115, v116) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v117 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v117, v118, v119), OUTLINED_FUNCTION_6_14(), mark_s()))
                              {
LABEL_41:
                                v120 = OUTLINED_FUNCTION_46_1();
                                starttest(v120, v121);
                                v122 = OUTLINED_FUNCTION_7_14();
                                if (lpta_loadp_setscan_r(v122, v123) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v124 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v124, v125, v126), OUTLINED_FUNCTION_6_14(), mark_s()))
                                {
LABEL_44:
                                  v127 = OUTLINED_FUNCTION_41_1();
                                  starttest(v127, v128);
                                  v129 = OUTLINED_FUNCTION_7_14();
                                  if (lpta_loadp_setscan_r(v129, v130) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v131 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v131, v132, v133), OUTLINED_FUNCTION_6_14(), mark_s()))
                                  {
LABEL_47:
                                    v134 = OUTLINED_FUNCTION_52_1();
                                    starttest(v134, v135);
                                    v136 = OUTLINED_FUNCTION_7_14();
                                    if (lpta_loadp_setscan_r(v136, v137) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v138 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v138, v139, v140), OUTLINED_FUNCTION_6_14(), mark_s()))
                                    {
LABEL_50:
                                      v141 = OUTLINED_FUNCTION_52_1();
                                      starttest(v141, v142);
                                      v143 = OUTLINED_FUNCTION_7_14();
                                      if (lpta_loadp_setscan_r(v143, v144) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v145 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v145, v146, v147), OUTLINED_FUNCTION_6_14(), mark_s()))
                                      {
LABEL_53:
                                        v148 = OUTLINED_FUNCTION_52_1();
                                        starttest(v148, v149);
                                        v150 = OUTLINED_FUNCTION_7_14();
                                        if (lpta_loadp_setscan_r(v150, v151) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v152 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v152, v153, v154), OUTLINED_FUNCTION_6_14(), mark_s()))
                                        {
LABEL_56:
                                          v155 = OUTLINED_FUNCTION_52_1();
                                          starttest(v155, v156);
                                          v157 = OUTLINED_FUNCTION_7_14();
                                          if (lpta_loadp_setscan_r(v157, v158) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v159 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v159, v160, v161), OUTLINED_FUNCTION_6_14(), mark_s()))
                                          {
LABEL_59:
                                            v162 = OUTLINED_FUNCTION_52_1();
                                            starttest(v162, v163);
                                            v164 = OUTLINED_FUNCTION_7_14();
                                            if (lpta_loadp_setscan_r(v164, v165) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v166 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v166, v167, v168), OUTLINED_FUNCTION_6_14(), mark_s()))
                                            {
LABEL_62:
                                              v169 = OUTLINED_FUNCTION_52_1();
                                              starttest(v169, v170);
                                              v171 = OUTLINED_FUNCTION_7_14();
                                              if (lpta_loadp_setscan_r(v171, v172) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v173 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v173, v174, v175), OUTLINED_FUNCTION_6_14(), mark_s()))
                                              {
LABEL_65:
                                                v176 = OUTLINED_FUNCTION_52_1();
                                                starttest(v176, v177);
                                                v178 = OUTLINED_FUNCTION_7_14();
                                                if (lpta_loadp_setscan_r(v178, v179) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v180 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v180, v181, v182), OUTLINED_FUNCTION_6_14(), mark_s()))
                                                {
LABEL_68:
                                                  v183 = OUTLINED_FUNCTION_52_1();
                                                  starttest(v183, v184);
                                                  v185 = OUTLINED_FUNCTION_7_14();
                                                  if (lpta_loadp_setscan_r(v185, v186) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v187 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v187, v188, v189), OUTLINED_FUNCTION_6_14(), mark_s()))
                                                  {
LABEL_71:
                                                    v190 = OUTLINED_FUNCTION_52_1();
                                                    starttest(v190, v191);
                                                    v192 = OUTLINED_FUNCTION_7_14();
                                                    if (lpta_loadp_setscan_r(v192, v193) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v194 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v194, v195, v196), OUTLINED_FUNCTION_6_14(), mark_s()))
                                                    {
LABEL_74:
                                                      v197 = OUTLINED_FUNCTION_49_1();
                                                      starttest(v197, v198);
                                                      v199 = OUTLINED_FUNCTION_7_14();
                                                      if (lpta_loadp_setscan_r(v199, v200) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v201 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v201, v202, v203), OUTLINED_FUNCTION_6_14(), mark_s()))
                                                      {
LABEL_77:
                                                        v204 = OUTLINED_FUNCTION_52_1();
                                                        starttest(v204, v205);
                                                        v206 = OUTLINED_FUNCTION_7_14();
                                                        if (lpta_loadp_setscan_r(v206, v207) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v208 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v208, v209, v210), OUTLINED_FUNCTION_6_14(), mark_s()))
                                                        {
LABEL_80:
                                                          v211 = OUTLINED_FUNCTION_52_1();
                                                          starttest(v211, v212);
                                                          v213 = OUTLINED_FUNCTION_7_14();
                                                          if (lpta_loadp_setscan_r(v213, v214) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v215 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v215, v216, v217), OUTLINED_FUNCTION_6_14(), mark_s()))
                                                          {
LABEL_83:
                                                            v218 = OUTLINED_FUNCTION_52_1();
                                                            starttest(v218, v219);
                                                            v220 = OUTLINED_FUNCTION_7_14();
                                                            if (lpta_loadp_setscan_r(v220, v221) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v222 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v222, v223, v224), OUTLINED_FUNCTION_6_14(), mark_s()))
                                                            {
LABEL_86:
                                                              v225 = OUTLINED_FUNCTION_52_1();
                                                              starttest(v225, v226);
                                                              v227 = OUTLINED_FUNCTION_7_14();
                                                              if (lpta_loadp_setscan_r(v227, v228) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v229 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v229, v230, v231), OUTLINED_FUNCTION_6_14(), mark_s()))
                                                              {
LABEL_89:
                                                                v232 = OUTLINED_FUNCTION_52_1();
                                                                starttest(v232, v233);
                                                                v234 = OUTLINED_FUNCTION_7_14();
                                                                if (lpta_loadp_setscan_r(v234, v235) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v236 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v236, v237, v238), OUTLINED_FUNCTION_6_14(), mark_s()))
                                                                {
LABEL_92:
                                                                  v239 = OUTLINED_FUNCTION_52_1();
                                                                  starttest(v239, v240);
                                                                  v241 = OUTLINED_FUNCTION_7_14();
                                                                  if (lpta_loadp_setscan_r(v241, v242) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v243 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v243, v244, v245), OUTLINED_FUNCTION_6_14(), mark_s()))
                                                                  {
LABEL_95:
                                                                    v246 = OUTLINED_FUNCTION_52_1();
                                                                    starttest(v246, v247);
                                                                    v248 = OUTLINED_FUNCTION_7_14();
                                                                    if (lpta_loadp_setscan_r(v248, v249) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v250 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v250, v251, v252), OUTLINED_FUNCTION_6_14(), mark_s()))
                                                                    {
LABEL_98:
                                                                      v253 = OUTLINED_FUNCTION_52_1();
                                                                      starttest(v253, v254);
                                                                      v255 = OUTLINED_FUNCTION_7_14();
                                                                      if (lpta_loadp_setscan_r(v255, v256) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v257 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v257, v258, v259), OUTLINED_FUNCTION_6_14(), mark_s()))
                                                                      {
LABEL_101:
                                                                        v260 = OUTLINED_FUNCTION_52_1();
                                                                        starttest(v260, v261);
                                                                        v262 = OUTLINED_FUNCTION_7_14();
                                                                        if (lpta_loadp_setscan_r(v262, v263) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v264 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v264, v265, v266), OUTLINED_FUNCTION_6_14(), mark_s()))
                                                                        {
LABEL_104:
                                                                          v267 = OUTLINED_FUNCTION_52_1();
                                                                          starttest(v267, v268);
                                                                          v269 = OUTLINED_FUNCTION_7_14();
                                                                          if (lpta_loadp_setscan_r(v269, v270) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v271 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v271, v272, v273), OUTLINED_FUNCTION_6_14(), mark_s()))
                                                                          {
LABEL_107:
                                                                            v274 = OUTLINED_FUNCTION_52_1();
                                                                            starttest(v274, v275);
                                                                            v276 = OUTLINED_FUNCTION_7_14();
                                                                            if (lpta_loadp_setscan_r(v276, v277) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v278 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v278, v279, v280), OUTLINED_FUNCTION_6_14(), mark_s()))
                                                                            {
LABEL_110:
                                                                              v281 = OUTLINED_FUNCTION_52_1();
                                                                              starttest(v281, v282);
                                                                              v283 = OUTLINED_FUNCTION_7_14();
                                                                              if (lpta_loadp_setscan_r(v283, v284) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v285 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v285, v286, v287), OUTLINED_FUNCTION_6_14(), mark_s()))
                                                                              {
LABEL_113:
                                                                                v288 = OUTLINED_FUNCTION_52_1();
                                                                                starttest(v288, v289);
                                                                                v290 = OUTLINED_FUNCTION_7_14();
                                                                                if (lpta_loadp_setscan_r(v290, v291) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v292 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v292, v293, v294), OUTLINED_FUNCTION_6_14(), mark_s()))
                                                                                {
LABEL_116:
                                                                                  v295 = OUTLINED_FUNCTION_52_1();
                                                                                  starttest(v295, v296);
                                                                                  v297 = OUTLINED_FUNCTION_7_14();
                                                                                  if (lpta_loadp_setscan_r(v297, v298) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v299 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v299, v300, v301), OUTLINED_FUNCTION_6_14(), mark_s()))
                                                                                  {
LABEL_119:
                                                                                    v302 = OUTLINED_FUNCTION_52_1();
                                                                                    starttest(v302, v303);
                                                                                    v304 = OUTLINED_FUNCTION_7_14();
                                                                                    if (lpta_loadp_setscan_r(v304, v305) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v306 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v306, v307, v308), OUTLINED_FUNCTION_6_14(), mark_s()))
                                                                                    {
LABEL_122:
                                                                                      v309 = OUTLINED_FUNCTION_52_1();
                                                                                      starttest(v309, v310);
                                                                                      v311 = OUTLINED_FUNCTION_7_14();
                                                                                      if (lpta_loadp_setscan_r(v311, v312) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v313 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v313, v314, v315), OUTLINED_FUNCTION_6_14(), mark_s()))
                                                                                      {
LABEL_125:
                                                                                        v316 = OUTLINED_FUNCTION_52_1();
                                                                                        starttest(v316, v317);
                                                                                        v318 = OUTLINED_FUNCTION_7_14();
                                                                                        if (lpta_loadp_setscan_r(v318, v319) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v320 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v320, v321, v322), OUTLINED_FUNCTION_6_14(), mark_s()))
                                                                                        {
LABEL_128:
                                                                                          v323 = OUTLINED_FUNCTION_52_1();
                                                                                          starttest(v323, v324);
                                                                                          v325 = OUTLINED_FUNCTION_7_14();
                                                                                          if (lpta_loadp_setscan_r(v325, v326) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v327 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v327, v328, v329), OUTLINED_FUNCTION_6_14(), mark_s()))
                                                                                          {
LABEL_131:
                                                                                            v330 = OUTLINED_FUNCTION_52_1();
                                                                                            starttest(v330, v331);
                                                                                            v332 = OUTLINED_FUNCTION_7_14();
                                                                                            if (lpta_loadp_setscan_r(v332, v333) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v334 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v334, v335, v336), OUTLINED_FUNCTION_6_14(), mark_s()))
                                                                                            {
LABEL_134:
                                                                                              v337 = OUTLINED_FUNCTION_52_1();
                                                                                              starttest(v337, v338);
                                                                                              v339 = OUTLINED_FUNCTION_7_14();
                                                                                              if (lpta_loadp_setscan_r(v339, v340) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v341 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v341, v342, v343), OUTLINED_FUNCTION_6_14(), mark_s()))
                                                                                              {
LABEL_137:
                                                                                                v344 = OUTLINED_FUNCTION_52_1();
                                                                                                starttest(v344, v345);
                                                                                                v346 = OUTLINED_FUNCTION_7_14();
                                                                                                if (lpta_loadp_setscan_r(v346, v347) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v348 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v348, v349, v350), OUTLINED_FUNCTION_6_14(), mark_s()))
                                                                                                {
LABEL_140:
                                                                                                  v351 = OUTLINED_FUNCTION_52_1();
                                                                                                  starttest(v351, v352);
                                                                                                  v353 = OUTLINED_FUNCTION_7_14();
                                                                                                  if (lpta_loadp_setscan_r(v353, v354) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v355 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v355, v356, v357), OUTLINED_FUNCTION_6_14(), mark_s()))
                                                                                                  {
LABEL_143:
                                                                                                    v358 = OUTLINED_FUNCTION_52_1();
                                                                                                    starttest(v358, v359);
                                                                                                    v360 = OUTLINED_FUNCTION_7_14();
                                                                                                    if (lpta_loadp_setscan_r(v360, v361) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v362 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v362, v363, v364), OUTLINED_FUNCTION_6_14(), mark_s()))
                                                                                                    {
LABEL_146:
                                                                                                      v365 = OUTLINED_FUNCTION_52_1();
                                                                                                      starttest(v365, v366);
                                                                                                      v367 = OUTLINED_FUNCTION_7_14();
                                                                                                      if (lpta_loadp_setscan_r(v367, v368) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v369 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v369, v370, v371), OUTLINED_FUNCTION_6_14(), mark_s()))
                                                                                                      {
LABEL_149:
                                                                                                        v372 = OUTLINED_FUNCTION_52_1();
                                                                                                        starttest(v372, v373);
                                                                                                        v374 = OUTLINED_FUNCTION_7_14();
                                                                                                        if (lpta_loadp_setscan_r(v374, v375) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v376 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v376, v377, v378), OUTLINED_FUNCTION_6_14(), mark_s()))
                                                                                                        {
LABEL_152:
                                                                                                          v379 = OUTLINED_FUNCTION_52_1();
                                                                                                          starttest(v379, v380);
                                                                                                          v381 = OUTLINED_FUNCTION_7_14();
                                                                                                          if (lpta_loadp_setscan_r(v381, v382) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v383 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v383, v384, v385), OUTLINED_FUNCTION_6_14(), mark_s()))
                                                                                                          {
LABEL_155:
                                                                                                            v386 = OUTLINED_FUNCTION_52_1();
                                                                                                            starttest(v386, v387);
                                                                                                            v388 = OUTLINED_FUNCTION_7_14();
                                                                                                            if (lpta_loadp_setscan_r(v388, v389) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v390 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v390, v391, v392), OUTLINED_FUNCTION_6_14(), mark_s()))
                                                                                                            {
LABEL_158:
                                                                                                              v393 = OUTLINED_FUNCTION_52_1();
                                                                                                              starttest(v393, v394);
                                                                                                              v395 = OUTLINED_FUNCTION_7_14();
                                                                                                              if (lpta_loadp_setscan_r(v395, v396) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v397 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v397, v398, v399), OUTLINED_FUNCTION_6_14(), mark_s()))
                                                                                                              {
LABEL_161:
                                                                                                                v400 = OUTLINED_FUNCTION_52_1();
                                                                                                                starttest(v400, v401);
                                                                                                                v402 = OUTLINED_FUNCTION_7_14();
                                                                                                                if (lpta_loadp_setscan_r(v402, v403) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v404 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v404, v405, v406), OUTLINED_FUNCTION_6_14(), mark_s()))
                                                                                                                {
LABEL_164:
                                                                                                                  v407 = OUTLINED_FUNCTION_52_1();
                                                                                                                  starttest(v407, v408);
                                                                                                                  v409 = OUTLINED_FUNCTION_7_14();
                                                                                                                  if (lpta_loadp_setscan_r(v409, v410) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v411 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v411, v412, v413), OUTLINED_FUNCTION_6_14(), mark_s()))
                                                                                                                  {
LABEL_167:
                                                                                                                    v414 = OUTLINED_FUNCTION_52_1();
                                                                                                                    starttest(v414, v415);
                                                                                                                    v416 = OUTLINED_FUNCTION_7_14();
                                                                                                                    if (lpta_loadp_setscan_r(v416, v417) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v418 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v418, v419, v420), OUTLINED_FUNCTION_6_14(), mark_s()))
                                                                                                                    {
LABEL_170:
                                                                                                                      v421 = OUTLINED_FUNCTION_52_1();
                                                                                                                      starttest(v421, v422);
                                                                                                                      v423 = OUTLINED_FUNCTION_7_14();
                                                                                                                      if (lpta_loadp_setscan_r(v423, v424) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v425 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v425, v426, v427), OUTLINED_FUNCTION_6_14(), mark_s()))
                                                                                                                      {
LABEL_173:
                                                                                                                        v428 = OUTLINED_FUNCTION_52_1();
                                                                                                                        starttest(v428, v429);
                                                                                                                        v430 = OUTLINED_FUNCTION_7_14();
                                                                                                                        if (lpta_loadp_setscan_r(v430, v431) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v432 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v432, v433, v434), OUTLINED_FUNCTION_6_14(), mark_s()))
                                                                                                                        {
LABEL_176:
                                                                                                                          v435 = OUTLINED_FUNCTION_52_1();
                                                                                                                          starttest(v435, v436);
                                                                                                                          v437 = OUTLINED_FUNCTION_7_14();
                                                                                                                          if (lpta_loadp_setscan_r(v437, v438) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v439 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v439, v440, v441), OUTLINED_FUNCTION_6_14(), mark_s()))
                                                                                                                          {
LABEL_179:
                                                                                                                            v442 = OUTLINED_FUNCTION_52_1();
                                                                                                                            starttest(v442, v443);
                                                                                                                            v444 = OUTLINED_FUNCTION_7_14();
                                                                                                                            if (!lpta_loadp_setscan_r(v444, v445))
                                                                                                                            {
                                                                                                                              OUTLINED_FUNCTION_4_14();
                                                                                                                              if (!test_string_s())
                                                                                                                              {
                                                                                                                                v446 = OUTLINED_FUNCTION_8_14();
                                                                                                                                lpta_rpta_loadp(v446, v447, v448);
                                                                                                                                OUTLINED_FUNCTION_6_14();
                                                                                                                                mark_s();
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

LABEL_182:
            OUTLINED_FUNCTION_121();
            v449 = OUTLINED_FUNCTION_122();
            if (!forto_adv_r(v449, v450, v451, v452, v453, v454))
            {
              v17 = 0;
              goto LABEL_4;
            }
          }
        }
      }
    }

    v455 = *(v0 + 104);
    if (v455)
    {
      v456 = OUTLINED_FUNCTION_65_1(v455);
    }

    else
    {
      v456 = OUTLINED_FUNCTION_133();
    }

    v17 = 0;
    switch(v456)
    {
      case 1:
        break;
      case 2:
        goto LABEL_11;
      case 3:
        goto LABEL_182;
      case 4:
        goto LABEL_10;
      case 5:
        goto LABEL_14;
      case 6:
        goto LABEL_17;
      case 7:
        goto LABEL_20;
      case 8:
        goto LABEL_23;
      case 9:
        goto LABEL_26;
      case 10:
        goto LABEL_29;
      case 11:
        goto LABEL_32;
      case 12:
        goto LABEL_35;
      case 13:
        goto LABEL_38;
      case 14:
        goto LABEL_41;
      case 15:
        goto LABEL_44;
      case 16:
        goto LABEL_47;
      case 17:
        goto LABEL_50;
      case 18:
        goto LABEL_53;
      case 19:
        goto LABEL_56;
      case 20:
        goto LABEL_59;
      case 21:
        goto LABEL_62;
      case 22:
        goto LABEL_65;
      case 23:
        goto LABEL_68;
      case 24:
        goto LABEL_71;
      case 25:
        goto LABEL_74;
      case 26:
        goto LABEL_77;
      case 27:
        goto LABEL_80;
      case 28:
        goto LABEL_83;
      case 29:
        goto LABEL_86;
      case 30:
        goto LABEL_89;
      case 31:
        goto LABEL_92;
      case 32:
        goto LABEL_95;
      case 33:
        goto LABEL_98;
      case 34:
        goto LABEL_101;
      case 35:
        goto LABEL_104;
      case 36:
        goto LABEL_107;
      case 37:
        goto LABEL_110;
      case 38:
        goto LABEL_113;
      case 39:
        goto LABEL_116;
      case 40:
        goto LABEL_119;
      case 41:
        goto LABEL_122;
      case 42:
        goto LABEL_125;
      case 43:
        goto LABEL_128;
      case 44:
        goto LABEL_131;
      case 45:
        goto LABEL_134;
      case 46:
        goto LABEL_137;
      case 47:
        goto LABEL_140;
      case 48:
        goto LABEL_143;
      case 49:
        goto LABEL_146;
      case 50:
        goto LABEL_149;
      case 51:
        goto LABEL_152;
      case 52:
        goto LABEL_155;
      case 53:
        goto LABEL_158;
      case 54:
        goto LABEL_161;
      case 55:
        goto LABEL_164;
      case 56:
        goto LABEL_167;
      case 57:
        goto LABEL_170;
      case 58:
        goto LABEL_173;
      case 59:
        goto LABEL_176;
      case 60:
        goto LABEL_179;
      case 61:
        goto LABEL_6;
      default:
        goto LABEL_3;
    }
  }

LABEL_4:
  vretproc(v0);
  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

void acronym()
{
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_11_14();
  v90 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_18_10(v2, v3, v4, v5, v6, v7, v8, v9, v55, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84);
  OUTLINED_FUNCTION_57_1();
  OUTLINED_FUNCTION_177(v10, v11, v12, v13, v14, v15, v16, v17, v56, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89);
  v18 = setjmp(v1);
  if (v18)
  {
    goto LABEL_4;
  }

  if (OUTLINED_FUNCTION_44_1(v18, &v58, v19, v20, v21, v22, v23, v24, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, SBYTE4(v85), v86, SWORD2(v86), SBYTE6(v86), v87, SWORD2(v87), SBYTE6(v87), SHIBYTE(v87), v88, v89))
  {
    goto LABEL_4;
  }

  v25 = OUTLINED_FUNCTION_72_1();
  get_parm(v25, v26, v27, -6);
  OUTLINED_FUNCTION_62_1(v28, &v81);
  fence_16(v0, 0, &_MergedGlobals_1_0);
  if (*(v0 + 2282) == *(v0 + 5394))
  {
    goto LABEL_4;
  }

  v30 = 0;
  while (2)
  {
    v31 = *(v0 + 5118);
    OUTLINED_FUNCTION_88_1();
    if (v32)
    {
      goto LABEL_4;
    }

LABEL_8:
    v33 = OUTLINED_FUNCTION_55_1();
    starttest(v33, v34);
    v35 = *(v0 + 5094);
    OUTLINED_FUNCTION_88_1();
    if (v32 || (v36 = OUTLINED_FUNCTION_54_1(), lpta_loadp_setscan_l(v36, v37)))
    {
LABEL_4:
      vretproc(v0);
      goto LABEL_5;
    }

    v38 = OUTLINED_FUNCTION_39_1();
    if (!testFldeq(v38, v39, v40, 2))
    {
      v49 = advance_tok(v0);
      v41 = v30;
      if (v49)
      {
        goto LABEL_12;
      }

LABEL_23:
      while (1)
      {
        v52 = OUTLINED_FUNCTION_39_1();
        if (testFldeq(v52, v53, v54, 2) || advance_tok(v0))
        {
          break;
        }

        v50 = OUTLINED_FUNCTION_64_1();
        bspush_ca_scan(v50, v51);
      }
    }

    v41 = v30;
LABEL_12:
    v42 = *(v0 + 104);
    if (v42)
    {
      v43 = OUTLINED_FUNCTION_65_1(v42);
      v30 = v44;
    }

    else
    {
      v43 = vback(v0, v41);
      v30 = 0;
    }

    switch(v43)
    {
      case 1:
        continue;
      case 2:
        goto LABEL_17;
      case 3:
        goto LABEL_8;
      case 5:
        *(v0 + 136) = 1;
        v45 = OUTLINED_FUNCTION_12_14();
        v46 = test_ptr(v45);
        v41 = v30;
        if (v46)
        {
          goto LABEL_12;
        }

LABEL_17:
        v47 = OUTLINED_FUNCTION_81_1();
        starttest(v47, v48);
        OUTLINED_FUNCTION_74_1();
        bspush_ca_boa();
        OUTLINED_FUNCTION_84_1();
        if (acrotest())
        {
          v41 = v30;
        }

        else
        {
          v41 = 1;
        }

        goto LABEL_12;
      case 6:
        goto LABEL_23;
      case 7:
        *(v0 + 2670) = *(v0 + 2682);
        OUTLINED_FUNCTION_124();
        spell_out_sequence();
        goto LABEL_27;
      case 8:
        bspop_boa(v0);
        goto LABEL_4;
      case 9:
LABEL_27:
        set_letter_name_wordcats(v0);
        break;
      case 10:
        goto LABEL_28;
      default:
        goto LABEL_4;
    }

    break;
  }

LABEL_28:
  OUTLINED_FUNCTION_137(v82);
LABEL_5:
  v29 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_113();
}

uint64_t single_letter()
{
  OUTLINED_FUNCTION_11_14();
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_14(v3, v4, v5, v6, v7, v8, v9, v10, v43, v47, v51, v55, v59, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v146);
  OUTLINED_FUNCTION_26_8(v11, v12, v13, v14, v15, v16, v17, v18, v44, v48, v52, v56, v60, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144, v147, v149, v151, v153, v155, v157);
  if (setjmp(v1))
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_0_16();
  if (OUTLINED_FUNCTION_132(v19, v20, v21, v22, v23, v24, v25, v26, v45, v49, v53, v57, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, v148, v150, v152, v154, v156, v158) || (v27 = OUTLINED_FUNCTION_13_14(), get_parm(v27, v28, v29, -6), OUTLINED_FUNCTION_43_1(v30, v31, v32, v33, v34, v35, v36, v37, v46, v50, v54, v58, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138), fence_16(v0, 0, &_MergedGlobals_1_0), v38 = OUTLINED_FUNCTION_29_5(), lpta_loadp_setscan_r(v38, v39)) || advance_tok(v0) || (OUTLINED_FUNCTION_98_0(), v40 = OUTLINED_FUNCTION_12_14(), test_ptr(v40)))
  {
LABEL_6:
    vretproc(v0);
    result = 94;
  }

  else
  {
    *(v0 + 2670) = *(v0 + 2690);
    OUTLINED_FUNCTION_55_1();
    single_chars();
    OUTLINED_FUNCTION_55_1();
    process_trailing_period();
    OUTLINED_FUNCTION_137(v142);
    result = 0;
  }

  v42 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t separate_tokens()
{
  OUTLINED_FUNCTION_76_1();
  v146 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_20_8(v2, v3, v4, v5, v6, v7, v8, v9, v37, v41, v45, v49, v53, v57, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133);
  OUTLINED_FUNCTION_57_1();
  OUTLINED_FUNCTION_158(v10, v11, v12, v13, v14, v15, v16, v17, v38, v42, v46, v50, v54, v58, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v136, v138, v140, v142, v144);
  v18 = setjmp(v1);
  if (v18 || (v26 = OUTLINED_FUNCTION_25_8(v18, v19, v20, v21, v22, v23, v24, v25, v39, v43, v47, v51, v55, v59, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, *v137, v137[4], *v139, *&v139[4], v139[6], v141, SWORD2(v141), SBYTE6(v141), SHIBYTE(v141), v143, v145), v26) || (OUTLINED_FUNCTION_19_9(v26, v27, v28, v29, v30, v31, v32, v33, v40, v44, v48, v52, v56, v60, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132), fence_16(v0, 0, &_MergedGlobals_1_0), OUTLINED_FUNCTION_55_1(), !end_of_word()))
  {
    v34 = 94;
  }

  else
  {
    OUTLINED_FUNCTION_136();
    OUTLINED_FUNCTION_117();
    v34 = 0;
    insert_l(v0);
  }

  vretproc(v0);
  v35 = *MEMORY[0x277D85DE8];
  return v34;
}

void process_trailing_period()
{
  OUTLINED_FUNCTION_114();
  v1 = v0;
  v84 = *MEMORY[0x277D85DE8];
  v71 = 0;
  v72 = 0;
  OUTLINED_FUNCTION_16_12(v0, v2, v3, v4, v5, v6, v7, v8, v40, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70);
  OUTLINED_FUNCTION_57_1();
  bzero(v83, v9);
  v10 = setjmp(v83);
  if (!v10 && !OUTLINED_FUNCTION_69_1(v10, &v42, v11, v12, v13, v14, v15, v16, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83[0]))
  {
    v17 = OUTLINED_FUNCTION_107();
    OUTLINED_FUNCTION_159(v17, v18);
    v19 = OUTLINED_FUNCTION_54_1();
    OUTLINED_FUNCTION_126(v19, v20);
    v21 = OUTLINED_FUNCTION_72_1();
    get_parm(v21, v22, v23, -6);
    v24 = OUTLINED_FUNCTION_104();
    push_ptr_init(v24, v25);
    fence_16(v1, 0, &_MergedGlobals_1_0);
    v26 = OUTLINED_FUNCTION_29_5();
    if (!lpta_loadp_setscan_r(v26, v27))
    {
      OUTLINED_FUNCTION_4_14();
      if (!test_string_s())
      {
        OUTLINED_FUNCTION_168();
        v29 = 0;
        while (2)
        {
          v30 = OUTLINED_FUNCTION_54_1();
          savescptr(v30, v31, &v65);
          v32 = OUTLINED_FUNCTION_70_1();
          if (lpta_loadp_setscan_r(v32, v33) || (OUTLINED_FUNCTION_51_1(), test_string_s()))
          {
LABEL_9:
            v34 = OUTLINED_FUNCTION_81_1();
            starttest(v34, v35);
            OUTLINED_FUNCTION_74_1();
            bspush_ca_boa();
            OUTLINED_FUNCTION_84_1();
            v36 = end_of_sentence();
            if (v36)
            {
              v37 = v29;
            }

            else
            {
              v37 = 1;
            }

            if (v1[13])
            {
              v38 = OUTLINED_FUNCTION_144(v36, v37);
            }

            else
            {
              v39 = vback(v1, v37);
              v38 = 0;
            }

            v29 = v38;
            switch(v39)
            {
              case 2:
                v29 = v38;
                continue;
              case 3:
                goto LABEL_9;
              case 4:
              case 6:
                goto LABEL_18;
              case 5:
                bspop_boa(v1);
                v70 = v66;
                goto LABEL_18;
              default:
                goto LABEL_5;
            }
          }

          else
          {
LABEL_18:
            OUTLINED_FUNCTION_95_0(v70);
          }

          break;
        }
      }
    }
  }

LABEL_5:
  vretproc(v1);
  v28 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_113();
}

uint64_t set_letter_name_wordcats(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_58_1();
  bzero(v8, v2);
  OUTLINED_FUNCTION_57_1();
  bzero(v12, v3);
  if (setjmp(v12) || ventproc(a1, v8, v11, v10, v9, v12))
  {
    vretproc(a1);
    result = 94;
  }

  else
  {
    fence_16(a1, 0, &_MergedGlobals_1_0);
    OUTLINED_FUNCTION_79_1();
    if (v6)
    {
      v7 = OUTLINED_FUNCTION_94_0();
      npush_s(v7);
      *(a1 + 3602) = 1;
      npop(a1, (a1 + 3600));
      npush_s(a1);
      *(a1 + 3602) = 3;
      npop(a1, (a1 + 3600));
    }

    vretproc(a1);
    result = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void read_punct_by_name()
{
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_11_14();
  v96 = *MEMORY[0x277D85DE8];
  v83 = 0;
  v84 = 0;
  v81 = 0;
  v82 = 0;
  OUTLINED_FUNCTION_58_1();
  bzero(v80, v1);
  OUTLINED_FUNCTION_57_1();
  bzero(v95, v2);
  v3 = setjmp(v95);
  if (v3 || OUTLINED_FUNCTION_69_1(v3, v80, v4, v5, v6, v7, v8, v9, v75, v76, v77, v78, v79, v80[0], v80[1], v80[2], v80[3], v80[4], v80[5], v80[6], v80[7], v80[8], v80[9], v80[10], v80[11], v80[12], v80[13], v80[14], v80[15], v80[16], v80[17], v80[18], v80[19], v80[20], v80[21], v80[22], v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95[0]))
  {
LABEL_3:
    vretproc(v0);
  }

  else
  {
    v11 = OUTLINED_FUNCTION_72_1();
    get_parm(v11, v12, v13, -6);
    OUTLINED_FUNCTION_21_8();
    v14 = OUTLINED_FUNCTION_73_1();
    fence_16(v14, v15, v16);
    v17 = OUTLINED_FUNCTION_139();
    starttest(v17, v18);
    v19 = OUTLINED_FUNCTION_55_1();
    if (lpta_loadp_setscan_r(v19, v20))
    {
LABEL_6:
      v21 = OUTLINED_FUNCTION_52_1();
      starttest(v21, v22);
      OUTLINED_FUNCTION_22_8();
      bspush_ca_boa();
      OUTLINED_FUNCTION_87_1();
      end_of_word();
    }

    else
    {
LABEL_46:
      OUTLINED_FUNCTION_143();
      while (1)
      {
        v70 = OUTLINED_FUNCTION_9_14();
        if (testFldeq(v70, v71, v72, 4) || advance_tok(v0))
        {
          break;
        }

        v73 = OUTLINED_FUNCTION_55_1();
        bspush_ca_scan(v73, v74);
      }
    }

    OUTLINED_FUNCTION_165();
    while (2)
    {
      v24 = *(v0 + 104);
      if (v24)
      {
        v25 = OUTLINED_FUNCTION_60_1(v24);
      }

      else
      {
        v25 = vback(v0, v23);
      }

      switch(v25)
      {
        case 1:
          goto LABEL_6;
        case 2:
          OUTLINED_FUNCTION_75_1();
          v64 = OUTLINED_FUNCTION_120();
          savescptr(v64, v65, v66);
          goto LABEL_6;
        case 3:
          goto LABEL_46;
        case 4:
          v67 = OUTLINED_FUNCTION_53_1();
          if (lpta_loadp_setscan_r(v67, v68))
          {
            goto LABEL_43;
          }

          if (advance_tok(v0))
          {
            goto LABEL_43;
          }

          OUTLINED_FUNCTION_98_0();
          v69 = OUTLINED_FUNCTION_12_14();
          if (test_ptr(v69))
          {
            goto LABEL_43;
          }

          OUTLINED_FUNCTION_101();
          if (in_quotes())
          {
            goto LABEL_43;
          }

          goto LABEL_44;
        case 5:
          bspop_boa(v0);
          v26 = OUTLINED_FUNCTION_157();
          starttest(v26, v27);
          v28 = OUTLINED_FUNCTION_54_1();
          if (lpta_loadp_setscan_l(v28, v29))
          {
            goto LABEL_13;
          }

          OUTLINED_FUNCTION_134();
          bspush_ca_scan_boa();
          v60 = OUTLINED_FUNCTION_111();
          goto LABEL_33;
        case 6:
LABEL_13:
          v30 = OUTLINED_FUNCTION_84_1();
          starttest(v30, v31);
          v32 = OUTLINED_FUNCTION_54_1();
          if (lpta_loadp_setscan_r(v32, v33))
          {
            goto LABEL_44;
          }

          v34 = OUTLINED_FUNCTION_91_0();
          bspush_ca_scan(v34, v35);
          OUTLINED_FUNCTION_39_1();
          goto LABEL_20;
        case 7:
          bspop_boa(v0);
          v50 = OUTLINED_FUNCTION_81_1();
          starttest(v50, v51);
          OUTLINED_FUNCTION_64_1();
          bspush_ca_boa();
          v52 = OUTLINED_FUNCTION_54_1();
          v54 = lpta_loadp_setscan_r(v52, v53);
          v23 = 0;
          if (v54)
          {
            continue;
          }

          OUTLINED_FUNCTION_39_1();
          v55 = test_string_s();
          v23 = 0;
          if (v55)
          {
            continue;
          }

          v56 = OUTLINED_FUNCTION_106();
          bspush_ca_scan(v56, v57);
          v36 = OUTLINED_FUNCTION_39_1();
          goto LABEL_16;
        case 8:
          v36 = OUTLINED_FUNCTION_96_0();
          v38 = 3;
LABEL_16:
          v39 = 1;
          goto LABEL_17;
        case 9:
          v58 = OUTLINED_FUNCTION_37_2();
          v41 = test_synch(v58, v59, 1u, &unk_2806BB0E8);
          goto LABEL_30;
        case 10:
          while (1)
          {
            v62 = OUTLINED_FUNCTION_96_0();
            if (testFldeq(v62, v63, 3, 2) || advance_tok(v0))
            {
              break;
            }

            v60 = OUTLINED_FUNCTION_74_1();
LABEL_33:
            bspush_ca_scan(v60, v61);
          }

          v23 = 0;
          continue;
        case 11:
        case 15:
          goto LABEL_31;
        case 12:
        case 16:
        case 19:
          goto LABEL_44;
        case 13:
          bspop_boa(v0);
          goto LABEL_3;
        case 14:
          v45 = OUTLINED_FUNCTION_39_1();
          v48 = testFldeq(v45, v46, v47, 2);
          v23 = 0;
          if (v48)
          {
            continue;
          }

          v49 = advance_tok(v0);
          v23 = 0;
          if (v49)
          {
            continue;
          }

          v36 = OUTLINED_FUNCTION_39_1();
          v39 = 2;
LABEL_17:
          v40 = testFldeq(v36, v37, v38, v39);
          v23 = 0;
          if (!v40)
          {
            v41 = advance_tok(v0);
LABEL_30:
            v23 = 0;
            if (!v41)
            {
LABEL_31:
              v23 = 1;
            }
          }

          continue;
        case 17:
          OUTLINED_FUNCTION_39_1();
LABEL_20:
          v42 = test_string_s();
          v23 = 0;
          if (!v42)
          {
            goto LABEL_21;
          }

          continue;
        case 18:
LABEL_21:
          *(v0 + 136) = 1;
          v43 = OUTLINED_FUNCTION_12_14();
          v44 = test_ptr(v43);
          v23 = 0;
          if (!v44)
          {
            goto LABEL_3;
          }

          continue;
        case 20:
LABEL_43:
          OUTLINED_FUNCTION_101();
          if (in_brackets())
          {
            goto LABEL_3;
          }

LABEL_44:
          OUTLINED_FUNCTION_101();
          single_chars();
LABEL_45:
          OUTLINED_FUNCTION_137(v82);
          break;
        case 22:
          goto LABEL_45;
        default:
          goto LABEL_3;
      }

      break;
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_113();
}

uint64_t end_of_sentence()
{
  OUTLINED_FUNCTION_76_1();
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_14(v3, v4, v5, v6, v7, v8, v9, v10, v200, v203, v206, v209, v212, v215, v218, v221, v224, v227, v230, v233, v236, v239, v242, v245, v248, v251, v254, v257, v260, v263, v266, v269, v272, v275, v276);
  OUTLINED_FUNCTION_57_1();
  OUTLINED_FUNCTION_164(v11, v12, v13, v14, v15, v16, v17, v18, v201, v204, v207, v210, v213, v216, v219, v222, v225, v228, v231, v234, v237, v240, v243, v246, v249, v252, v255, v258, v261, v264, v267, v270, v273, v275, v276, v277, v278, v279, v280, v281);
  if (setjmp(v1))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_0_16();
  v27 = OUTLINED_FUNCTION_132(v19, v20, v21, v22, v23, v24, v25, v26, v202, v205, v208, v211, v214, v217, v220, v223, v226, v229, v232, v235, v238, v241, v244, v247, v250, v253, v256, v259, v262, v265, v268, v271, v274, v275, v276, v277, v278, v279, v280, v281);
  if (v27)
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_62_1(v27, &v275);
  v30 = OUTLINED_FUNCTION_66_1();
  push_ptr_init(v30, v31);
  v32 = 0;
  v33 = OUTLINED_FUNCTION_73_1();
  fence_16(v33, v34, v35);
  v36 = OUTLINED_FUNCTION_42_1();
  starttest(v36, v37);
  v38 = OUTLINED_FUNCTION_15_12();
  bspush_ca(v38);
  v39 = 0;
  if (*(v0 + 5102) != *(v0 + 5090))
  {
LABEL_107:
    v61 = v39;
    while (2)
    {
      v50 = *(v0 + 104);
      if (v50)
      {
        v51 = OUTLINED_FUNCTION_60_1(v50);
      }

      else
      {
        v51 = vback(v0, v61);
        v1 = 0;
      }

      v32 = v1;
      v47 = v1;
      v39 = v1;
      v52 = v1;
      v53 = v1;
      v54 = v1;
      switch(v51)
      {
        case 1:
        case 24:
        case 25:
        case 26:
        case 60:
        case 87:
        case 88:
          goto LABEL_83;
        case 2:
          v70 = OUTLINED_FUNCTION_52_1();
          bspush_ca(v70);
          v71 = *(v0 + 5110);
          goto LABEL_22;
        case 3:
          break;
        case 4:
          v74 = OUTLINED_FUNCTION_22_8();
          bspush_ca(v74);
          v71 = *(v0 + 5122);
          goto LABEL_22;
        case 5:
          v71 = *(v0 + 5098);
LABEL_22:
          v32 = v1;
          v61 = v1;
          if (v71 == *(v0 + 5090))
          {
            break;
          }

          continue;
        case 6:
          LODWORD(v32) = v1;
          goto LABEL_87;
        case 7:
          OUTLINED_FUNCTION_4_14();
          v75 = test_string_s();
          v47 = v1;
          v61 = v1;
          if (!v75)
          {
            goto LABEL_8;
          }

          continue;
        case 8:
          goto LABEL_8;
        case 9:
        case 13:
          goto LABEL_34;
        case 10:
          goto LABEL_7;
        case 11:
        case 22:
          goto LABEL_40;
        case 12:
          v89 = OUTLINED_FUNCTION_33_3();
          bspush_ca_scan(v89, v90);
          goto LABEL_33;
        case 14:
          v68 = OUTLINED_FUNCTION_46_1();
          bspush_ca_scan(v68, v69);
          goto LABEL_33;
        case 15:
          v72 = OUTLINED_FUNCTION_41_1();
          bspush_ca_scan(v72, v73);
          goto LABEL_33;
        case 16:
LABEL_33:
          OUTLINED_FUNCTION_4_14();
          v91 = test_string_s();
          v61 = v1;
          if (v91)
          {
            continue;
          }

          do
          {
LABEL_34:
            v92 = OUTLINED_FUNCTION_40_1();
            bspush_ca_scan(v92, v93);
            v94 = OUTLINED_FUNCTION_35_2();
            bspush_ca_scan(v94, v95);
            OUTLINED_FUNCTION_4_14();
          }

          while (!test_string_s());
          goto LABEL_46;
        case 17:
          OUTLINED_FUNCTION_118();
          v77 = OUTLINED_FUNCTION_68_1();
          savescptr(v77, v78, v79);
          v80 = OUTLINED_FUNCTION_52_1();
          starttest(v80, v81);
          v82 = OUTLINED_FUNCTION_71_1();
          if (lpta_loadp_setscan_r(v82, v83))
          {
            goto LABEL_83;
          }

          v84 = OUTLINED_FUNCTION_4_14();
          v87 = testFldeq(v84, v85, v86, 1);
          v61 = v1;
          if (!v87)
          {
            v88 = advance_tok(v0);
            v61 = v1;
            if (!v88)
            {
              goto LABEL_3;
            }
          }

          continue;
        case 18:
        case 20:
        case 21:
          v99 = OUTLINED_FUNCTION_52_1();
          bspush_ca_scan(v99, v100);
LABEL_40:
          OUTLINED_FUNCTION_4_14();
          v101 = test_string_s();
          v61 = v1;
          if (!v101)
          {
            goto LABEL_41;
          }

          continue;
        case 19:
        case 23:
          do
          {
LABEL_41:
            v102 = OUTLINED_FUNCTION_52_1();
            bspush_ca_scan(v102, v103);
            v104 = OUTLINED_FUNCTION_52_1();
            bspush_ca_scan(v104, v105);
            OUTLINED_FUNCTION_4_14();
          }

          while (!test_string_s());
          goto LABEL_46;
        case 27:
          LODWORD(v32) = v1;
          goto LABEL_88;
        case 28:
          goto LABEL_79;
        case 29:
          OUTLINED_FUNCTION_4_14();
          v76 = test_string_s();
          v39 = v1;
          v61 = v1;
          if (!v76)
          {
            goto LABEL_99;
          }

          continue;
        case 30:
        case 31:
          goto LABEL_99;
        case 32:
          goto LABEL_80;
        case 33:
          do
          {
            v156 = OUTLINED_FUNCTION_52_1();
            bspush_ca_scan(v156, v157);
LABEL_79:
            v153 = OUTLINED_FUNCTION_52_1();
            bspush_ca_scan(v153, v154);
LABEL_80:
            OUTLINED_FUNCTION_4_14();
            v155 = test_string_s();
            v61 = v1;
          }

          while (!v155);
          continue;
        case 34:
        case 35:
        case 37:
        case 38:
          goto LABEL_76;
        case 36:
          goto LABEL_78;
        case 39:
          while (1)
          {
            OUTLINED_FUNCTION_4_14();
            v150 = test_string_s();
            v61 = v1;
            if (v150)
            {
              break;
            }

LABEL_78:
            v151 = OUTLINED_FUNCTION_52_1();
            bspush_ca_scan(v151, v152);
LABEL_76:
            v148 = OUTLINED_FUNCTION_52_1();
            bspush_ca_scan(v148, v149);
          }

          continue;
        case 40:
        case 78:
          goto LABEL_60;
        case 41:
          LODWORD(v32) = v1;
          goto LABEL_89;
        case 42:
        case 48:
          v118 = OUTLINED_FUNCTION_52_1();
          bspush_ca_scan(v118, v119);
          goto LABEL_52;
        case 43:
          OUTLINED_FUNCTION_4_14();
          v117 = test_string_s();
          v52 = v1;
          v61 = v1;
          if (!v117)
          {
            goto LABEL_102;
          }

          continue;
        case 44:
        case 45:
          goto LABEL_102;
        case 46:
        case 50:
          goto LABEL_69;
        case 47:
        case 51:
        case 54:
        case 56:
          goto LABEL_73;
        case 49:
          goto LABEL_71;
        case 52:
          while (1)
          {
            v140 = OUTLINED_FUNCTION_52_1();
            bspush_ca_scan(v140, v141);
LABEL_71:
            OUTLINED_FUNCTION_4_14();
            v142 = test_string_s();
            v61 = v1;
            if (v142)
            {
              break;
            }

LABEL_69:
            v138 = OUTLINED_FUNCTION_52_1();
            bspush_ca_scan(v138, v139);
          }

          continue;
        case 53:
LABEL_52:
          OUTLINED_FUNCTION_4_14();
          v120 = test_string_s();
          v61 = v1;
          if (!v120)
          {
            goto LABEL_73;
          }

          continue;
        case 55:
          goto LABEL_75;
        case 57:
          while (1)
          {
            OUTLINED_FUNCTION_4_14();
            v145 = test_string_s();
            v61 = v1;
            if (v145)
            {
              break;
            }

LABEL_75:
            v146 = OUTLINED_FUNCTION_52_1();
            bspush_ca_scan(v146, v147);
LABEL_73:
            v143 = OUTLINED_FUNCTION_52_1();
            bspush_ca_scan(v143, v144);
          }

          continue;
        case 58:
          v130 = OUTLINED_FUNCTION_52_1();
          bspush_ca_scan(v130, v131);
LABEL_60:
          OUTLINED_FUNCTION_4_14();
          v57 = test_string_s();
          goto LABEL_61;
        case 59:
        case 77:
          OUTLINED_FUNCTION_98_0();
          v55 = *(v0 + 1392);
          v56 = OUTLINED_FUNCTION_12_14();
          v57 = test_ptr(v56);
          goto LABEL_61;
        case 61:
          LODWORD(v32) = v1;
          goto LABEL_90;
        case 62:
        case 68:
          v106 = OUTLINED_FUNCTION_52_1();
          bspush_ca_scan(v106, v107);
          goto LABEL_44;
        case 63:
          OUTLINED_FUNCTION_4_14();
          v132 = test_string_s();
          v53 = v1;
          v61 = v1;
          if (!v132)
          {
            goto LABEL_105;
          }

          continue;
        case 64:
        case 65:
          goto LABEL_105;
        case 66:
        case 70:
          goto LABEL_65;
        case 67:
        case 71:
        case 76:
          goto LABEL_45;
        case 69:
          goto LABEL_67;
        case 72:
          while (1)
          {
            v135 = OUTLINED_FUNCTION_52_1();
            bspush_ca_scan(v135, v136);
LABEL_67:
            OUTLINED_FUNCTION_4_14();
            v137 = test_string_s();
            v61 = v1;
            if (v137)
            {
              break;
            }

LABEL_65:
            v133 = OUTLINED_FUNCTION_52_1();
            bspush_ca_scan(v133, v134);
          }

          continue;
        case 73:
        case 75:
LABEL_44:
          OUTLINED_FUNCTION_4_14();
          v108 = test_string_s();
          v61 = v1;
          if (!v108)
          {
            do
            {
LABEL_45:
              v109 = OUTLINED_FUNCTION_52_1();
              bspush_ca_scan(v109, v110);
              v111 = OUTLINED_FUNCTION_52_1();
              bspush_ca_scan(v111, v112);
              OUTLINED_FUNCTION_4_14();
            }

            while (!test_string_s());
LABEL_46:
            v61 = v1;
          }

          continue;
        case 74:
          v58 = OUTLINED_FUNCTION_52_1();
          bspush_ca_scan(v58, v59);
          OUTLINED_FUNCTION_51_1();
          v60 = test_string_s();
          v61 = v1;
          if (v60)
          {
            continue;
          }

          v62 = OUTLINED_FUNCTION_52_1();
          bspush_ca_scan(v62, v63);
          v64 = OUTLINED_FUNCTION_52_1();
          bspush_ca_scan(v64, v65);
          v66 = OUTLINED_FUNCTION_52_1();
          bspush_ca_scan(v66, v67);
          goto LABEL_55;
        case 79:
          goto LABEL_56;
        case 80:
        case 81:
        case 82:
          v121 = OUTLINED_FUNCTION_52_1();
          bspush_ca_scan(v121, v122);
          goto LABEL_55;
        case 83:
LABEL_55:
          OUTLINED_FUNCTION_4_14();
          v123 = test_string_s();
          v61 = v1;
          if (!v123)
          {
LABEL_56:
            v124 = OUTLINED_FUNCTION_52_1();
            bspush_ca_scan(v124, v125);
            OUTLINED_FUNCTION_52_1();
            bspush_ca_scan_boa();
            v126 = OUTLINED_FUNCTION_1_15();
            if (testFldeq(v126, v127, v128, v129))
            {
              v61 = v1;
            }

            else
            {
              v61 = 1;
            }
          }

          continue;
        case 84:
          v113 = OUTLINED_FUNCTION_4_14();
          v116 = testFldeq(v113, v114, v115, 2);
          v61 = v1;
          if (v116)
          {
            continue;
          }

          goto LABEL_48;
        case 85:
          bspop_boa(v0);
          goto LABEL_48;
        case 86:
LABEL_48:
          v57 = advance_tok(v0);
LABEL_61:
          v61 = v1;
          if (!v57)
          {
            goto LABEL_83;
          }

          continue;
        case 90:
          goto LABEL_95;
        case 91:
        case 92:
        case 93:
          v96 = OUTLINED_FUNCTION_52_1();
          bspush_ca_scan(v96, v97);
          goto LABEL_37;
        case 94:
LABEL_37:
          OUTLINED_FUNCTION_4_14();
          v98 = test_string_s();
          v54 = v1;
          v61 = v1;
          if (!v98)
          {
            goto LABEL_95;
          }

          continue;
        case 95:
          bspop_boa(v0);
LABEL_83:
          vretproc(v0);
          result = 0;
          goto LABEL_4;
        default:
          goto LABEL_3;
      }

      break;
    }
  }

  v40 = OUTLINED_FUNCTION_36_2();
  starttest(v40, v41);
  v42 = OUTLINED_FUNCTION_14_12();
  v1 = v32;
  if (!lpta_loadp_setscan_r(v42, v43))
  {
LABEL_7:
    while (1)
    {
      v44 = OUTLINED_FUNCTION_27_6();
      bspush_ca_scan(v44, v45);
      OUTLINED_FUNCTION_4_14();
      v46 = test_string_s();
      v47 = v1;
      v39 = v1;
      if (v46)
      {
        break;
      }

LABEL_8:
      v1 = v47;
      v48 = OUTLINED_FUNCTION_37_2();
      bspush_ca_scan(v48, v49);
    }

    goto LABEL_107;
  }

LABEL_87:
  v158 = OUTLINED_FUNCTION_52_1();
  starttest(v158, v159);
  v160 = OUTLINED_FUNCTION_14_12();
  v39 = v32;
  if (!lpta_loadp_setscan_r(v160, v161))
  {
LABEL_99:
    v1 = 29;
    do
    {
      v188 = OUTLINED_FUNCTION_71_1();
      bspush_ca_scan(v188, v189);
      v190 = OUTLINED_FUNCTION_55_1();
      bspush_ca_scan(v190, v191);
      OUTLINED_FUNCTION_4_14();
    }

    while (!test_string_s());
    goto LABEL_107;
  }

LABEL_88:
  v162 = OUTLINED_FUNCTION_52_1();
  starttest(v162, v163);
  v164 = OUTLINED_FUNCTION_14_12();
  v166 = lpta_loadp_setscan_r(v164, v165);
  v52 = v32;
  if (!v166)
  {
LABEL_102:
    v39 = v52;
    v1 = 43;
    do
    {
      v192 = OUTLINED_FUNCTION_71_1();
      bspush_ca_scan(v192, v193);
      v194 = OUTLINED_FUNCTION_55_1();
      bspush_ca_scan(v194, v195);
      OUTLINED_FUNCTION_4_14();
    }

    while (!test_string_s());
    goto LABEL_107;
  }

LABEL_89:
  v167 = OUTLINED_FUNCTION_52_1();
  starttest(v167, v168);
  v169 = OUTLINED_FUNCTION_14_12();
  v171 = lpta_loadp_setscan_r(v169, v170);
  v53 = v32;
  if (!v171)
  {
LABEL_105:
    v39 = v53;
    v1 = 63;
    do
    {
      v196 = OUTLINED_FUNCTION_71_1();
      bspush_ca_scan(v196, v197);
      v198 = OUTLINED_FUNCTION_55_1();
      bspush_ca_scan(v198, v199);
      OUTLINED_FUNCTION_4_14();
    }

    while (!test_string_s());
    goto LABEL_107;
  }

LABEL_90:
  v172 = OUTLINED_FUNCTION_52_1();
  starttest(v172, v173);
  if (*(v0 + 2638) != *(v0 + 2614) && *(v0 + 2710) != *(v0 + 2698))
  {
    v174 = OUTLINED_FUNCTION_14_12();
    if (!lpta_loadp_setscan_r(v174, v175))
    {
      OUTLINED_FUNCTION_51_1();
      if (!test_string_s())
      {
        v176 = OUTLINED_FUNCTION_52_1();
        bspush_ca_scan(v176, v177);
        v178 = OUTLINED_FUNCTION_52_1();
        bspush_ca_scan(v178, v179);
        OUTLINED_FUNCTION_4_14();
        v180 = test_string_s();
        v54 = v32;
        v39 = v32;
        if (!v180)
        {
LABEL_95:
          v181 = v54;
          v182 = OUTLINED_FUNCTION_4_14();
          if (testFldeq(v182, v183, v184, 2) || advance_tok(v0) || (OUTLINED_FUNCTION_52_1(), bspush_ca_scan_boa(), v185 = OUTLINED_FUNCTION_4_14(), testFldeq(v185, v186, v187, 2)))
          {
            v39 = v181;
          }

          else if (advance_tok(v0))
          {
            v39 = v181;
          }

          else
          {
            v39 = 1;
          }
        }

        goto LABEL_107;
      }
    }
  }

LABEL_3:
  vretproc(v0);
  result = 94;
LABEL_4:
  v29 = *MEMORY[0x277D85DE8];
  return result;
}