uint64_t set_num_formants(_WORD *a1)
{
  v69 = *MEMORY[0x277D85DE8];
  bzero(v64, 0xB8uLL);
  bzero(v68, 0xC0uLL);
  if (setjmp(v68) || ventproc(a1, v64, v67, v66, v65, v68))
  {
    vretproc(a1);
    result = 94;
    goto LABEL_4;
  }

  fence_5(a1);
  v9 = a1[2117];
  if (v9)
  {
    goto LABEL_6;
  }

  a1[2361] = 3;
  v12 = OUTLINED_FUNCTION_2_5();
  v19 = if_testeq_v_i(v12, v13, 16000, v14, v15, v16, v17, v18);
  a1[2361] = 4;
  v20 = OUTLINED_FUNCTION_2_5();
  v28 = if_testeq_v_i(v20, v21, v22, v23, v24, v25, v26, v27);
  if (!v19)
  {
    if (!v28)
    {
      v9 = 7;
      goto LABEL_6;
    }

    a1[2361] = 4;
    v50 = OUTLINED_FUNCTION_2_5();
    if (if_testeq_v_i(v50, v51, 1, v52, v53, v54, v55, v56))
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

  if (!v28)
  {
LABEL_21:
    a1[2361] = 5;
    v57 = OUTLINED_FUNCTION_2_5();
    if (if_testge_v_i(v57, v58, 30, v59, v60, v61, v62, v63))
    {
      a1[2025] = 5;
      goto LABEL_7;
    }

LABEL_23:
    v9 = 4;
    goto LABEL_6;
  }

  a1[2361] = 4;
  v29 = OUTLINED_FUNCTION_2_5();
  if (if_testeq_v_i(v29, v30, 1, v31, v32, v33, v34, v35))
  {
    goto LABEL_7;
  }

  a1[2361] = 5;
  v36 = OUTLINED_FUNCTION_2_5();
  if (!if_testge_v_i(v36, v37, 30, v38, v39, v40, v41, v42))
  {
    goto LABEL_23;
  }

  a1[2361] = 5;
  v43 = OUTLINED_FUNCTION_2_5();
  if (!if_testge_v_i(v43, v44, 40, v45, v46, v47, v48, v49))
  {
    goto LABEL_23;
  }

  v9 = 5;
LABEL_6:
  a1[2025] = v9;
LABEL_7:
  a1[2361] = 3;
  if (!if_testeq_v_i(a1, a1 + 2360, 8000, v4, v5, v6, v7, v8))
  {
    v10 = a1[2025];
    if (v10 >= 3)
    {
      v11 = v10 - 1;
    }

    else
    {
      v11 = 3;
    }

    a1[2025] = v11;
  }

  vretproc(a1);
  result = 0;
LABEL_4:
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void OUTLINED_FUNCTION_1_5()
{
  v0[512] = 0x4075E00000000000;
  v0[514] = v1;
  v0[516] = v1;
  v0[508] = 0;
  v0[510] = 0x4056800000000000;
}

void *fence_6(uint64_t a1, int a2, uint64_t a3)
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

uint64_t generate_intonation(uint64_t a1)
{
  OUTLINED_FUNCTION_3_6(*MEMORY[0x277D85DE8], v45);
  OUTLINED_FUNCTION_2_6(v3, v4, v5, v6, v7, v8, v9, v10, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_0_6(v11, v12, v13, v14, v15, v16, v17, v18, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, *v93, v93[4], *v95, *&v95[4], v95[6], v97, SWORD2(v97), SBYTE6(v97), SHIBYTE(v97), v99, v101))
  {
LABEL_3:
    vretproc(a1);
    result = 94;
  }

  else
  {
    fence_6(a1, 0, &null_str_0);
    if (*(a1 + 942) == 1)
    {
      add_f0_for_new_voice(a1);
    }

    while (2)
    {
      if (*(a1 + 946) == 1)
      {
        init_phrase_inton_vars(a1, v21, v22, v23, v24, v25, v26, v27);
      }

LABEL_9:
      if (*(a1 + 942) == 1)
      {
        init_word_inton_vars(a1);
      }

LABEL_11:
      init_syll_inton_vars(a1);
LABEL_12:
      if (*(a1 + 946) == 1)
      {
        phr_initial_F0(a1);
      }

LABEL_14:
      if (!is_target_syll(a1))
      {
        v28 = *(a1 + 978);
        OUTLINED_FUNCTION_15_4();
        if (v36)
        {
          nucl_f0(a1, v29, v30, v31, v32, v33, v34, v35);
        }

        else
        {
LABEL_16:
          v37 = OUTLINED_FUNCTION_13_5();
          starttest(v37, v38);
          v39 = OUTLINED_FUNCTION_11_5();
          bspush_ca(v39);
          v40 = *(a1 + 982);
          v41 = *(a1 + 954);
LABEL_17:
          if (v40 == v41)
          {
LABEL_26:
            postnucl_f0(a1);
          }

          else
          {
            v42 = *(a1 + 104);
            if (v42)
            {
              v43 = OUTLINED_FUNCTION_12_5(v42);
            }

            else
            {
              v43 = OUTLINED_FUNCTION_19_3();
            }

            switch(v43)
            {
              case 1:
                continue;
              case 2:
                goto LABEL_9;
              case 3:
                goto LABEL_11;
              case 4:
                goto LABEL_12;
              case 5:
                goto LABEL_14;
              case 6:
              case 8:
              case 12:
              case 14:
                goto LABEL_27;
              case 7:
                goto LABEL_16;
              case 9:
                v44 = *(a1 + 970);
                OUTLINED_FUNCTION_15_4();
                if (!v36)
                {
                  goto LABEL_26;
                }

                prenucl_f0(a1);
                break;
              case 10:
                v40 = *(a1 + 2542);
                v41 = *(a1 + 3274);
                goto LABEL_17;
              case 11:
              case 13:
                goto LABEL_26;
              case 15:
                goto LABEL_28;
              case 16:
                goto LABEL_29;
              case 17:
                goto LABEL_30;
              case 18:
                goto LABEL_32;
              default:
                goto LABEL_3;
            }
          }
        }
      }

      break;
    }

LABEL_27:
    first_postnucl_accent(a1);
LABEL_28:
    insert_target_t3(a1);
LABEL_29:
    insert_phrase_final_tones(a1);
LABEL_30:
    if (*(a1 + 2286) == *(a1 + 930))
    {
      add_f0_for_next_voice(a1, v21, v22, v23, v24, v25, v26, v27);
    }

LABEL_32:
    vretproc(a1);
    result = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t add_f0_for_new_voice(uint64_t a1)
{
  v113 = *MEMORY[0x277D85DE8];
  v100 = 0;
  v101 = 0;
  v99 = 0;
  OUTLINED_FUNCTION_8_5();
  bzero(v76, v2);
  OUTLINED_FUNCTION_7_5();
  bzero(v112, v3);
  v4 = setjmp(v112);
  if (!v4 && !OUTLINED_FUNCTION_21_3(v4, v5, v6, v7, v8, v9, v10, v11, v75, v76[0], v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112[0]))
  {
    v15 = push_ptr_init(a1, &v100);
    v99 = 0xFFFC0000FFFCLL;
    v12 = 0;
    OUTLINED_FUNCTION_23_3(v15, v16, &null_str_0);
    v17 = OUTLINED_FUNCTION_9_5();
    if (lpta_loadp_setscan_l(v17, v18))
    {
      goto LABEL_4;
    }

    if (advance_tok(a1))
    {
      goto LABEL_7;
    }

    v19 = OUTLINED_FUNCTION_4_5();
    starttest_l(v19, v20);
    v21 = OUTLINED_FUNCTION_5_5();
    bspush_ca(v21);
    *(a1 + 4722) = 9;
    npush_v(a1, (a1 + 4720), v22, v23, v24, v25, v26, v27);
    *(a1 + 4786) = 9;
    npush_v(a1, (a1 + 4784), v28, v29, v30, v31, v32, v33);
    if (!if_testneq(a1, v34, v35, v36, v37, v38, v39, v40))
    {
LABEL_9:
      init_voice_vars(a1);
LABEL_10:
      v41 = OUTLINED_FUNCTION_17_4();
      if (lpta_loadp_setscan_l(v41, v42) || test_string_s())
      {
        goto LABEL_7;
      }

LABEL_12:
      v43 = OUTLINED_FUNCTION_14_4();
      savescptr(v43, v44, v45);
      v46 = OUTLINED_FUNCTION_4_5();
      starttest_l(v46, v47);
      v48 = OUTLINED_FUNCTION_11_5();
      move_i(v48, v49, 95);
      v50 = OUTLINED_FUNCTION_16_4();
      move_i(v50, v51, 50);
      v52 = OUTLINED_FUNCTION_13_5();
      if (!insert_f0(v52, v53, &v99 + 2))
      {
LABEL_7:
        v12 = 0;
        goto LABEL_4;
      }
    }

    while (2)
    {
      v54 = *(a1 + 104);
      if (v54)
      {
        v55 = OUTLINED_FUNCTION_12_5(v54);
      }

      else
      {
        v55 = OUTLINED_FUNCTION_19_3();
      }

      switch(v55)
      {
        case 1:
          goto LABEL_7;
        case 2:
          *(a1 + 4722) = 10;
          npush_v(a1, (a1 + 4720), v56, v57, v58, v59, v60, v61);
          *(a1 + 4786) = 10;
          npush_v(a1, (a1 + 4784), v62, v63, v64, v65, v66, v67);
          if (!if_testneq(a1, v68, v69, v70, v71, v72, v73, v74))
          {
            goto LABEL_9;
          }

          continue;
        case 3:
          goto LABEL_9;
        case 4:
          goto LABEL_10;
        case 5:
          goto LABEL_12;
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

uint64_t init_phrase_inton_vars(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v27 = *MEMORY[0x277D85DE8];
  v21[23] = 0;
  v22 = 0;
  OUTLINED_FUNCTION_6_5(a1, a2, a3, a4, a5, a6, a7, a8, v21[0]);
  OUTLINED_FUNCTION_7_5();
  bzero(v26, v9);
  if (setjmp(v26) || ventproc(a1, v21, v25, v24, v23, v26))
  {
    vretproc(a1);
    result = 94;
  }

  else
  {
    v12 = OUTLINED_FUNCTION_13_5();
    v14 = push_ptr_init(v12, v13);
    OUTLINED_FUNCTION_23_3(v14, v15, &null_str_0);
    *(a1 + 1218) = *(a1 + 2290);
    v16 = *(a1 + 970);
    *(a1 + 738) = v16;
    *(a1 + 954) = v16;
    *(a1 + 5066) = 0;
    *(a1 + 4914) = -1;
    *(a1 + 5042) = 1;
    *(a1 + 4918) = 25;
    v22 = *(a1 + 1472);
    v17 = OUTLINED_FUNCTION_14_4();
    estimate_nsylls(v17, v18, v19, v20);
    init_voice_vars(a1);
    init_nuclwrd_vars(a1);
    if (*(a1 + 2542) == *(a1 + 3274))
    {
      num_words_in_range();
    }

    vretproc(a1);
    result = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t init_word_inton_vars(unsigned __int16 *a1)
{
  OUTLINED_FUNCTION_3_6(*MEMORY[0x277D85DE8], v23);
  OUTLINED_FUNCTION_2_6(v3, v4, v5, v6, v7, v8, v9, v10, v24, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78);
  v11 = setjmp(v1);
  if (!v11 && !OUTLINED_FUNCTION_0_6(v11, v12, v13, v14, v15, v16, v17, v18, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, *v71, v71[4], *v73, *&v73[4], v73[6], v75, SWORD2(v75), SBYTE6(v75), SHIBYTE(v75), v77, v79))
  {
    fence_6(a1, 0, &null_str_0);
    v21 = a1[369];
    v22 = a1[493];
    if (a1[489] != v21)
    {
      if (a1[493] == v21)
      {
        goto LABEL_10;
      }

      lpta_loadpn(a1, a1 + 320);
      rpta_loadpn(a1, a1 + 868);
      if (compare_ptas(a1) || testeq(a1))
      {
        goto LABEL_10;
      }

      v22 = a1[489];
    }

    a1[369] = v22;
LABEL_10:
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

uint64_t init_syll_inton_vars(uint64_t a1)
{
  OUTLINED_FUNCTION_3_6(*MEMORY[0x277D85DE8], v25);
  OUTLINED_FUNCTION_2_6(v3, v4, v5, v6, v7, v8, v9, v10, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80);
  v11 = setjmp(v1);
  if (!v11 && !OUTLINED_FUNCTION_0_6(v11, v12, v13, v14, v15, v16, v17, v18, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, *v73, v73[4], *v75, *&v75[4], v75[6], v77, SWORD2(v77), SBYTE6(v77), SHIBYTE(v77), v79, v81))
  {
    fence_6(a1, 0, &null_str_0);
    v21 = *(a1 + 3352);
    *(a1 + 1144) = v21;
    *(a1 + 1160) = v21;
    v22 = *(a1 + 978);
    v23 = *(a1 + 954);
    v24 = *(a1 + 982);
    if (v22 != v23)
    {
      if (*(a1 + 982) == v23)
      {
        v24 = *(a1 + 986);
      }

      else
      {
        if (v22 != *(a1 + 738))
        {
          goto LABEL_9;
        }

        v24 = *(a1 + 978);
        if (v22 != *(a1 + 958))
        {
          goto LABEL_9;
        }
      }
    }

    *(a1 + 954) = v24;
LABEL_9:
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

uint64_t is_target_syll(uint64_t a1)
{
  OUTLINED_FUNCTION_3_6(*MEMORY[0x277D85DE8], v21);
  OUTLINED_FUNCTION_2_6(v3, v4, v5, v6, v7, v8, v9, v10, v22, v24, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_0_6(v11, v12, v13, v14, v15, v16, v17, v18, v23, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, *v69, v69[4], *v71, *&v71[4], v71[6], v73, SWORD2(v73), SBYTE6(v73), SHIBYTE(v73), v75, v77) || (fence_6(a1, 0, &null_str_0), *(a1 + 950) != 1))
  {
    vretproc(a1);
    result = 94;
  }

  else
  {
    vretproc(a1);
    result = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t nucl_f0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v107 = *MEMORY[0x277D85DE8];
  LODWORD(v97) = 0;
  OUTLINED_FUNCTION_6_5(a1, a2, a3, a4, a5, a6, a7, a8, v50);
  OUTLINED_FUNCTION_2_6(v10, v11, v12, v13, v14, v15, v16, v17, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105);
  v18 = setjmp(v8);
  if (v18 || OUTLINED_FUNCTION_0_6(v18, v19, v20, v21, v22, v23, v24, v25, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, *v98, v98[4], *v100, *&v100[4], v100[6], v102, SWORD2(v102), SBYTE6(v102), SHIBYTE(v102), v104, v106) || (fence_6(a1, 0, &null_str_0), v26 = *(a1 + 978), OUTLINED_FUNCTION_15_4(), !v27))
  {
LABEL_31:
    v47 = 94;
  }

  else
  {
    while (2)
    {
      position_t_ptrs(a1);
LABEL_6:
      v28 = *(a1 + 3274);
      if (*(a1 + 3310) == v28)
      {
        nucl_high_tone(a1);
      }

      else
      {
LABEL_17:
        if (*(a1 + 3314) == v28)
        {
          nucl_low_tone(a1);
        }

        else
        {
LABEL_20:
          if (*(a1 + 3322) == v28)
          {
            nucl_low_high_star_tone(a1);
          }

          else
          {
LABEL_23:
            if (*(a1 + 3318) == v28)
            {
              nucl_low_star_high_tone(a1);
            }

            else
            {
LABEL_26:
              if (*(a1 + 3330) == v28)
              {
                nucl_high_low_star_tone(a1);
              }

              else
              {
LABEL_29:
                if (*(a1 + 3326) == v28)
                {
                  nucl_high_star_low_tone(a1);
                }
              }
            }
          }
        }
      }

LABEL_8:
      v29 = OUTLINED_FUNCTION_13_5();
      starttest(v29, v30);
      v31 = OUTLINED_FUNCTION_9_5();
      if (!lpta_loadp_setscan_r(v31, v32))
      {
        v33 = OUTLINED_FUNCTION_10_5();
        if (testFldeq(v33, v34, 7, 1) || advance_tok(a1) || (starttest_l(a1, 15), v35 = OUTLINED_FUNCTION_11_5(), move_i(v35, v36, 3), v37 = OUTLINED_FUNCTION_11_5(), modulate_pwind(v37, v38, v39, v40, v41, v42, v43, v44)))
        {
          v45 = *(a1 + 104);
          if (v45)
          {
            v46 = OUTLINED_FUNCTION_12_5(v45);
          }

          else
          {
            v46 = OUTLINED_FUNCTION_19_3();
          }

          switch(v46)
          {
            case 1:
              continue;
            case 2:
              goto LABEL_6;
            case 3:
              v28 = *(a1 + 3274);
              goto LABEL_17;
            case 4:
            case 5:
            case 7:
            case 9:
            case 11:
            case 13:
            case 14:
              goto LABEL_8;
            case 6:
              v28 = *(a1 + 3274);
              goto LABEL_20;
            case 8:
              v28 = *(a1 + 3274);
              goto LABEL_23;
            case 10:
              v28 = *(a1 + 3274);
              goto LABEL_26;
            case 12:
              v28 = *(a1 + 3274);
              goto LABEL_29;
            case 15:
              goto LABEL_33;
            default:
              goto LABEL_31;
          }
        }
      }

      break;
    }

LABEL_33:
    v47 = 0;
    *(a1 + 920) = *(a1 + 792);
  }

  vretproc(a1);
  v48 = *MEMORY[0x277D85DE8];
  return v47;
}

uint64_t first_postnucl_accent(unsigned __int16 *a1)
{
  OUTLINED_FUNCTION_3_6(*MEMORY[0x277D85DE8], v23);
  OUTLINED_FUNCTION_2_6(v3, v4, v5, v6, v7, v8, v9, v10, v24, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_0_6(v11, v12, v13, v14, v15, v16, v17, v18, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, *v71, v71[4], *v73, *&v73[4], v73[6], v75, SWORD2(v75), SBYTE6(v75), SHIBYTE(v75), v77, v79) || (fence_6(a1, 0, &null_str_0), v19 = a1[491], OUTLINED_FUNCTION_15_4(), !v20) || (OUTLINED_FUNCTION_20_3(), v20))
  {
    vretproc(a1);
    result = 94;
  }

  else
  {
    if (a1[2561] == a1[2545])
    {
      por_first_postnucl_accent(a1);
    }

    vretproc(a1);
    result = 0;
  }

  v22 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t insert_target_t3(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v29[0] = 0;
  v29[1] = 0;
  OUTLINED_FUNCTION_8_5();
  bzero(v28, v2);
  OUTLINED_FUNCTION_7_5();
  bzero(v33, v3);
  if (setjmp(v33) || ventproc(a1, v28, v32, v31, v30, v33))
  {
LABEL_3:
    vretproc(a1);
    result = 94;
  }

  else
  {
    push_ptr_init(a1, v29);
    fence_6(a1, 0, &null_str_0);
    lpta_loadpn(a1, a1 + 1168);
    rpta_loadpn(a1, a1 + 3344);
    if (compare_ptas(a1) || testeq(a1))
    {
      v6 = 0;
      while (2)
      {
        starttest(a1, 3);
        OUTLINED_FUNCTION_16_4();
        bspush_ca_boa();
        if (in_syllable())
        {
          v7 = v6;
        }

        else
        {
          v7 = 1;
        }

LABEL_11:
        v8 = *(a1 + 104);
        if (v8)
        {
          v9 = OUTLINED_FUNCTION_12_5(v8);
          v6 = v10;
        }

        else
        {
          v9 = vback(a1, v7);
          v6 = 0;
        }

        switch(v9)
        {
          case 1:
            continue;
          case 2:
          case 10:
            goto LABEL_40;
          case 3:
            OUTLINED_FUNCTION_20_3();
            if (v11)
            {
              goto LABEL_40;
            }

            goto LABEL_16;
          case 4:
            bspop_boa(a1);
            v16 = OUTLINED_FUNCTION_17_4();
            if (!lpta_loadp_setscan_l(v16, v17) && !advance_tok(a1))
            {
              goto LABEL_26;
            }

            goto LABEL_27;
          case 5:
            goto LABEL_27;
          case 6:
LABEL_26:
            v18 = OUTLINED_FUNCTION_16_4();
            savescptr(v18, v19, v29);
LABEL_27:
            starttest(a1, 7);
            v20 = OUTLINED_FUNCTION_17_4();
            if (!lpta_loadp_setscan_l(v20, v21) && !advance_tok(a1))
            {
              *(a1 + 136) = 1;
              v22 = *(a1 + 1176);
              if (!OUTLINED_FUNCTION_18_3())
              {
                goto LABEL_30;
              }
            }

            goto LABEL_41;
          case 7:
            goto LABEL_41;
          case 8:
            goto LABEL_30;
          case 9:
            v26 = advance_tok(a1);
            v7 = v6;
            if (v26)
            {
              goto LABEL_11;
            }

LABEL_30:
            v23 = OUTLINED_FUNCTION_13_5();
            bspush_ca_scan(v23, v24);
            *(a1 + 136) = 1;
            v25 = OUTLINED_FUNCTION_18_3();
            v7 = v6;
            if (!v25)
            {
              goto LABEL_40;
            }

            goto LABEL_11;
          case 11:
LABEL_16:
            v12 = *(a1 + 982);
            OUTLINED_FUNCTION_15_4();
            if (!v11)
            {
              goto LABEL_17;
            }

            goto LABEL_40;
          case 12:
LABEL_17:
            v13 = OUTLINED_FUNCTION_25_3();
            starttest(v13, v14);
            if (lpta_loadp_setscan_r(a1, a1 + 1168))
            {
              goto LABEL_35;
            }

            bspush_ca_scan_boa();
LABEL_19:
            if (test_synch(a1, 15, 1u, &string_17))
            {
              v7 = v6;
            }

            else
            {
              v7 = 1;
            }

            goto LABEL_11;
          case 13:
            goto LABEL_35;
          case 14:
            bspop_boa(a1);
            v15 = advanc(a1);
            v7 = v6;
            if (v15)
            {
              goto LABEL_11;
            }

            goto LABEL_34;
          case 15:
            goto LABEL_19;
          case 16:
LABEL_34:
            savescptr(a1, 16, a1 + 1168);
LABEL_35:
            v27 = *(a1 + 986);
            OUTLINED_FUNCTION_15_4();
            if (v11)
            {
              *(a1 + 1190) = *(a1 + 4914);
            }

            goto LABEL_38;
          case 17:
LABEL_38:
            insert_f0(a1, (a1 + 1168), (a1 + 1184));
            break;
          case 18:
            goto LABEL_39;
          default:
            goto LABEL_3;
        }

        break;
      }

LABEL_39:
      *(a1 + 1218) = *(a1 + 2286);
    }

LABEL_40:
    *(a1 + 1176) = *(a1 + 3352);
    *(a1 + 1186) = 0;
    *(a1 + 1190) = 0;
LABEL_41:
    vretproc(a1);
    result = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t insert_phrase_final_tones(uint64_t a1)
{
  OUTLINED_FUNCTION_3_6(*MEMORY[0x277D85DE8], v29);
  OUTLINED_FUNCTION_2_6(v3, v4, v5, v6, v7, v8, v9, v10, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_0_6(v11, v12, v13, v14, v15, v16, v17, v18, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, *v77, v77[4], *v79, *&v79[4], v79[6], v81, SWORD2(v81), SBYTE6(v81), SHIBYTE(v81), v83, v85))
  {
    vretproc(a1);
    result = 94;
  }

  else
  {
    fence_6(a1, 0, &null_str_0);
    if (*(a1 + 2286) == *(a1 + 734))
    {
      phrase_tone(a1);
      insert_preset_phrase_tone(a1, v21, v22, v23, v24, v25, v26, v27);
      OUTLINED_FUNCTION_20_3();
      if (v28)
      {
        boundary_tone(a1);
      }
    }

    vretproc(a1);
    result = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t add_f0_for_next_voice(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v136 = *MEMORY[0x277D85DE8];
  LODWORD(v126) = 0;
  OUTLINED_FUNCTION_6_5(a1, a2, a3, a4, a5, a6, a7, a8, v79);
  OUTLINED_FUNCTION_2_6(v10, v11, v12, v13, v14, v15, v16, v17, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134);
  v18 = setjmp(v8);
  if (v18 || OUTLINED_FUNCTION_0_6(v18, v19, v20, v21, v22, v23, v24, v25, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, *v127, v127[4], *v129, *&v129[4], v129[6], v131, SWORD2(v131), SBYTE6(v131), SHIBYTE(v131), v133, v135))
  {
LABEL_5:
    v48 = 94;
  }

  else
  {
    fence_6(a1, 0, &null_str_0);
    v26 = OUTLINED_FUNCTION_4_5();
    starttest(v26, v27);
    v28 = OUTLINED_FUNCTION_5_5();
    bspush_ca(v28);
    *(a1 + 4722) = 9;
    npush_v(a1, (a1 + 4720), v29, v30, v31, v32, v33, v34);
    *(a1 + 4850) = 9;
    npush_v(a1, (a1 + 4848), v35, v36, v37, v38, v39, v40);
    if (if_testneq(a1, v41, v42, v43, v44, v45, v46, v47))
    {
      goto LABEL_8;
    }

LABEL_7:
    while (1)
    {
      v51 = OUTLINED_FUNCTION_4_5();
      starttest(v51, v52);
      v53 = OUTLINED_FUNCTION_13_5();
      move_i(v53, v54, 5);
      v55 = OUTLINED_FUNCTION_14_4();
      if (!insert_f0(v55, v56, v57))
      {
        break;
      }

LABEL_8:
      while (1)
      {
        v58 = *(a1 + 104);
        v59 = v58 ? OUTLINED_FUNCTION_12_5(v58) : OUTLINED_FUNCTION_19_3();
        if (v59 != 2)
        {
          break;
        }

        *(a1 + 4722) = 10;
        npush_v(a1, (a1 + 4720), v60, v61, v62, v63, v64, v65);
        *(a1 + 4850) = 10;
        npush_v(a1, (a1 + 4848), v66, v67, v68, v69, v70, v71);
        if (!if_testneq(a1, v72, v73, v74, v75, v76, v77, v78))
        {
          goto LABEL_7;
        }
      }

      if (v59 == 1)
      {
        break;
      }

      if (v59 != 3)
      {
        goto LABEL_5;
      }
    }

    v48 = 0;
  }

  vretproc(a1);
  v49 = *MEMORY[0x277D85DE8];
  return v48;
}

uint64_t insert_preset_phrase_tone(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v95 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6_5(a1, a2, a3, a4, a5, a6, a7, a8, v38);
  OUTLINED_FUNCTION_2_6(v10, v11, v12, v13, v14, v15, v16, v17, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93);
  v18 = setjmp(v8);
  if (v18 || OUTLINED_FUNCTION_0_6(v18, v19, v20, v21, v22, v23, v24, v25, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, *v86, v86[4], *v88, *&v88[4], v88[6], v90, SWORD2(v90), SBYTE6(v90), SHIBYTE(v90), v92, v94) || (fence_6(a1, 0, &null_str_0), lpta_loadpn(a1, a1 + 1192), rpta_loadpn(a1, a1 + 3344), !compare_ptas(a1)) && !testeq(a1))
  {
LABEL_3:
    vretproc(a1);
    result = 94;
  }

  else
  {
    v28 = 0;
    while (2)
    {
      v29 = v28;
      v30 = OUTLINED_FUNCTION_13_5();
      starttest(v30, v31);
      OUTLINED_FUNCTION_11_5();
      bspush_ca_boa();
      v32 = OUTLINED_FUNCTION_17_4();
      if (lpta_loadp_setscan_l(v32, v33))
      {
        v34 = v29;
      }

      else
      {
        *(a1 + 136) = 1;
        v35 = *(a1 + 1200);
        if (OUTLINED_FUNCTION_18_3())
        {
          v34 = v29;
        }

        else
        {
          v34 = 1;
        }
      }

      v36 = *(a1 + 104);
      if (v36)
      {
        *(a1 + 104) = 0;
        v37 = v36;
        v28 = v34;
      }

      else
      {
        v37 = vback(a1, v34);
        v28 = 0;
      }

      switch(v37)
      {
        case 1:
          continue;
        case 2:
          *(a1 + 1200) = *(a1 + 808);
          insert_f0(a1, (a1 + 1192), (a1 + 1208));
          break;
        case 3:
          bspop_boa(a1);
          goto LABEL_3;
        case 4:
          goto LABEL_18;
        default:
          goto LABEL_3;
      }

      break;
    }

LABEL_18:
    *(a1 + 1200) = *(a1 + 3352);
    *(a1 + 1210) = 0;
    *(a1 + 1214) = 0;
    vretproc(a1);
    result = 0;
  }

  v27 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t init_voice_vars(uint64_t a1)
{
  v121 = *MEMORY[0x277D85DE8];
  v116 = 0;
  OUTLINED_FUNCTION_8_5();
  bzero(v115, v2);
  OUTLINED_FUNCTION_7_5();
  bzero(v120, v3);
  if (setjmp(v120) || (v4 = ventproc(a1, v115, v119, v118, v117, v120), v4))
  {
LABEL_3:
    vretproc(a1);
    result = 94;
  }

  else
  {
    v116 = 65532;
    OUTLINED_FUNCTION_23_3(v4, v5, &null_str_0);
    set_f0_wind_and_base(a1);
    while (2)
    {
      *(a1 + 4970) = (*(a1 + 4760) * 5.0 / 10.0);
      starttest(a1, 2);
      *(a1 + 4722) = 11;
      OUTLINED_FUNCTION_27_2(v8, v9, v10, v11, v12, v13, v14, v15);
      v16 = OUTLINED_FUNCTION_11_5();
      c_assvar(v16, v17);
      HIWORD(v116) = -9999;
      v18 = OUTLINED_FUNCTION_11_5();
      npush_v(v18, v19, v20, v21, v22, v23, v24, v25);
      v33 = if_testneq(a1, v26, v27, v28, v29, v30, v31, v32);
      if (v33)
      {
        goto LABEL_15;
      }

      *(a1 + 4722) = 11;
      OUTLINED_FUNCTION_26_3(v33, (a1 + 3292));
LABEL_8:
      starttest(a1, 4);
      *(a1 + 4722) = 12;
      OUTLINED_FUNCTION_27_2(v34, v35, v36, v37, v38, v39, v40, v41);
      v42 = OUTLINED_FUNCTION_11_5();
      c_assvar(v42, v43);
      HIWORD(v116) = -9999;
      v44 = OUTLINED_FUNCTION_11_5();
      npush_v(v44, v45, v46, v47, v48, v49, v50, v51);
      v59 = if_testneq(a1, v52, v53, v54, v55, v56, v57, v58);
      if (v59)
      {
        goto LABEL_15;
      }

      *(a1 + 4722) = 12;
      OUTLINED_FUNCTION_26_3(v59, (a1 + 3296));
LABEL_10:
      v60 = *(a1 + 4970);
      if (v60 < *(a1 + 3298))
      {
        *(a1 + 3298) = v60;
      }

LABEL_12:
      starttest(a1, 7);
      *(a1 + 4722) = 13;
      OUTLINED_FUNCTION_27_2(v61, v62, v63, v64, v65, v66, v67, v68);
      v69 = OUTLINED_FUNCTION_11_5();
      c_assvar(v69, v70);
      HIWORD(v116) = -9999;
      v71 = OUTLINED_FUNCTION_11_5();
      npush_v(v71, v72, v73, v74, v75, v76, v77, v78);
      v86 = if_testneq(a1, v79, v80, v81, v82, v83, v84, v85);
      if (v86)
      {
        goto LABEL_15;
      }

      *(a1 + 4722) = 13;
      OUTLINED_FUNCTION_26_3(v86, (a1 + 3300));
LABEL_14:
      starttest(a1, 9);
      *(a1 + 4722) = 14;
      OUTLINED_FUNCTION_27_2(v87, v88, v89, v90, v91, v92, v93, v94);
      v95 = OUTLINED_FUNCTION_11_5();
      c_assvar(v95, v96);
      HIWORD(v116) = -9999;
      v97 = OUTLINED_FUNCTION_11_5();
      npush_v(v97, v98, v99, v100, v101, v102, v103, v104);
      v112 = if_testneq(a1, v105, v106, v107, v108, v109, v110, v111);
      if (v112)
      {
LABEL_15:
        v113 = *(a1 + 104);
        if (v113)
        {
          v114 = OUTLINED_FUNCTION_12_5(v113);
        }

        else
        {
          v114 = vback(a1, 0);
        }

        switch(v114)
        {
          case 1:
            continue;
          case 2:
            *(a1 + 3294) = -1;
            goto LABEL_8;
          case 3:
            goto LABEL_8;
          case 4:
            *(a1 + 3298) = 3 * *(a1 + 5378);
            goto LABEL_10;
          case 5:
            goto LABEL_10;
          case 6:
            goto LABEL_12;
          case 7:
            *(a1 + 3302) = 0;
            goto LABEL_14;
          case 8:
            goto LABEL_14;
          case 9:
            *(a1 + 3306) = 10;
            goto LABEL_23;
          case 10:
            goto LABEL_23;
          case 11:
            goto LABEL_26;
          case 12:
            goto LABEL_25;
          default:
            goto LABEL_3;
        }
      }

      break;
    }

    *(a1 + 4722) = 14;
    OUTLINED_FUNCTION_26_3(v112, (a1 + 3304));
LABEL_23:
    if (*(a1 + 5352) != 0.0)
    {
      f0_step(a1, (a1 + 5376), (a1 + 5328), (a1 + 3292), (a1 + 3296), a1 + 1752);
LABEL_25:
      f0_step(a1, (a1 + 5376), (a1 + 5344), (a1 + 3300), (a1 + 3304), a1 + 1768);
    }

LABEL_26:
    vretproc(a1);
    result = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t init_nuclwrd_vars(uint64_t a1)
{
  OUTLINED_FUNCTION_3_6(*MEMORY[0x277D85DE8], v112);
  OUTLINED_FUNCTION_2_6(v3, v4, v5, v6, v7, v8, v9, v10, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, v141, v143, v145, v147, v149, v151, v153, v155, v157, v159, v161, v163, v165, v167);
  v11 = setjmp(v1);
  if (!v11 && !OUTLINED_FUNCTION_0_6(v11, v12, v13, v14, v15, v16, v17, v18, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142, v144, v146, v148, v150, v152, v154, v156, v158, *v160, v160[4], *v162, *&v162[4], v162[6], v164, SWORD2(v164), SBYTE6(v164), SHIBYTE(v164), v166, v168))
  {
    fence_6(a1, 0, &null_str_0);
    fence_6(a1, 1, &string_7_0);
    *(a1 + 1744) = *(a1 + 3352);
    starttest(a1, 1);
    if (!lpta_loadp_setscan_r(a1, a1 + 1448))
    {
      bspush_ca_scan(a1, 2);
      v25 = a1;
      v26 = 6;
LABEL_9:
      if (!testFldeq(v25, 5u, 2, v26))
      {
LABEL_10:
        if (!advance_tok(a1))
        {
          v27 = *(a1 + 2542);
          *(a1 + 3274) = v27;
          *(a1 + 3290) = v27;
          v28 = *(a1 + 986);
          *(a1 + 954) = v28;
          *(a1 + 738) = v28;
          *(a1 + 1744) = *(a1 + 1456);
LABEL_54:
          vretproc(a1);
          result = 0;
          goto LABEL_4;
        }
      }

      goto LABEL_45;
    }

    while (2)
    {
      v21 = OUTLINED_FUNCTION_5_5();
      starttest(v21, v22);
      v23 = OUTLINED_FUNCTION_9_5();
      if (!lpta_loadp_setscan_l(v23, v24))
      {
LABEL_12:
        v29 = OUTLINED_FUNCTION_5_5();
        bspush_ca_scan(v29, v30);
        v31 = OUTLINED_FUNCTION_10_5();
        if (npush_fld(v31, v32, 5))
        {
          goto LABEL_45;
        }

        npush_v(a1, (a1 + 3032), v33, v34, v35, v36, v37, v38);
        if (if_testle(a1, v39, v40, v41, v42, v43, v44, v45) || advance_tok(a1))
        {
          goto LABEL_45;
        }

LABEL_15:
        savescptr(a1, 7, a1 + 1736);
      }

LABEL_16:
      v46 = OUTLINED_FUNCTION_5_5();
      starttest(v46, v47);
      v48 = OUTLINED_FUNCTION_9_5();
      if (lpta_loadp_setscan_r(v48, v49))
      {
LABEL_17:
        v50 = OUTLINED_FUNCTION_5_5();
        starttest(v50, v51);
        v52 = OUTLINED_FUNCTION_9_5();
        if (!lpta_loadp_setscan_r(v52, v53))
        {
          v98 = OUTLINED_FUNCTION_1_6();
          if (testFldeq(v98, v99, v100, 1) || advance_tok(a1))
          {
            goto LABEL_45;
          }

          v73 = 3314;
          goto LABEL_28;
        }

LABEL_18:
        v54 = OUTLINED_FUNCTION_5_5();
        starttest(v54, v55);
        v56 = OUTLINED_FUNCTION_9_5();
        if (!lpta_loadp_setscan_r(v56, v57))
        {
          v101 = OUTLINED_FUNCTION_1_6();
          if (testFldeq(v101, v102, v103, 2) || advance_tok(a1))
          {
            goto LABEL_45;
          }

          v73 = 3318;
          goto LABEL_28;
        }

LABEL_19:
        v58 = OUTLINED_FUNCTION_5_5();
        starttest(v58, v59);
        v60 = OUTLINED_FUNCTION_9_5();
        if (!lpta_loadp_setscan_r(v60, v61))
        {
          v104 = OUTLINED_FUNCTION_1_6();
          if (testFldeq(v104, v105, v106, 3) || advance_tok(a1))
          {
            goto LABEL_45;
          }

          v73 = 3322;
          goto LABEL_28;
        }

LABEL_20:
        v62 = OUTLINED_FUNCTION_5_5();
        starttest(v62, v63);
        v64 = OUTLINED_FUNCTION_9_5();
        if (!lpta_loadp_setscan_r(v64, v65))
        {
          v107 = OUTLINED_FUNCTION_1_6();
          if (testFldeq(v107, v108, v109, 4) || advance_tok(a1))
          {
            goto LABEL_45;
          }

          v73 = 3326;
          goto LABEL_28;
        }

LABEL_21:
        v66 = OUTLINED_FUNCTION_5_5();
        starttest(v66, v67);
        v68 = OUTLINED_FUNCTION_9_5();
        if (!lpta_loadp_setscan_r(v68, v69))
        {
          v70 = OUTLINED_FUNCTION_1_6();
          if (testFldeq(v70, v71, v72, 5) || advance_tok(a1))
          {
            goto LABEL_45;
          }

          v73 = 3330;
          goto LABEL_28;
        }
      }

      else
      {
        v74 = OUTLINED_FUNCTION_1_6();
        if (testFldeq(v74, v75, v76, v77) || advance_tok(a1))
        {
          goto LABEL_45;
        }
      }

LABEL_27:
      v73 = 3310;
LABEL_28:
      *(a1 + 3274) = *(a1 + v73);
LABEL_29:
      v78 = OUTLINED_FUNCTION_5_5();
      starttest(v78, v79);
      v80 = OUTLINED_FUNCTION_9_5();
      if (lpta_loadp_setscan_r(v80, v81))
      {
LABEL_52:
        v97 = *(a1 + 2542);
        goto LABEL_53;
      }

      v82 = OUTLINED_FUNCTION_10_5();
      if (!npush_fld(v82, v83, 5))
      {
        npush_v(a1, (a1 + 3032), v84, v85, v86, v87, v88, v89);
        if (!if_testlt(a1, v90, v91, v92, v93, v94, v95, v96) && !advance_tok(a1))
        {
          v97 = *(a1 + 3334);
LABEL_53:
          *(a1 + 3290) = v97;
          goto LABEL_54;
        }
      }

LABEL_45:
      v110 = *(a1 + 104);
      if (v110)
      {
        v111 = OUTLINED_FUNCTION_12_5(v110);
      }

      else
      {
        v111 = OUTLINED_FUNCTION_19_3();
      }

      switch(v111)
      {
        case 1:
          continue;
        case 2:
          v25 = a1;
          v26 = 7;
          goto LABEL_9;
        case 3:
          goto LABEL_10;
        case 4:
          goto LABEL_16;
        case 5:
          goto LABEL_12;
        case 6:
          if (!advance_tok(a1))
          {
            goto LABEL_12;
          }

          goto LABEL_45;
        case 7:
          goto LABEL_15;
        case 8:
          goto LABEL_17;
        case 9:
          goto LABEL_29;
        case 10:
          goto LABEL_18;
        case 11:
          goto LABEL_19;
        case 12:
          goto LABEL_20;
        case 13:
          goto LABEL_21;
        case 14:
          goto LABEL_27;
        case 15:
          goto LABEL_52;
        case 16:
          goto LABEL_54;
        default:
          goto LABEL_3;
      }
    }
  }

LABEL_3:
  vretproc(a1);
  result = 94;
LABEL_4:
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t set_f0_wind_and_base(uint64_t a1)
{
  OUTLINED_FUNCTION_3_6(*MEMORY[0x277D85DE8], v28);
  OUTLINED_FUNCTION_2_6(v3, v4, v5, v6, v7, v8, v9, v10, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83);
  v11 = setjmp(v1);
  if (v11 || (v19 = OUTLINED_FUNCTION_0_6(v11, v12, v13, v14, v15, v16, v17, v18, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, *v76, v76[4], *v78, *&v78[4], v78[6], v80, SWORD2(v80), SBYTE6(v80), SHIBYTE(v80), v82, v84), v19))
  {
    v21 = 94;
  }

  else
  {
    v21 = 0;
    OUTLINED_FUNCTION_23_3(v19, v20, &null_str_0);
    v24 = *(a1 + 4760);
    v25 = *(a1 + 4768);
    OUTLINED_FUNCTION_22_3();
    *(a1 + 5352) = v26;
    *(a1 + 5336) = v27 + v26 * -9.0 / 10.0;
  }

  vretproc(a1);
  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

uint64_t f0_step(uint64_t a1, __int16 *a2, __int16 *a3, __int16 *a4, __int16 *a5, uint64_t a6)
{
  v41 = *MEMORY[0x277D85DE8];
  v36 = 0;
  v35 = 0;
  v34 = 0;
  v32 = 0;
  v33 = 0.0;
  v31 = 0;
  OUTLINED_FUNCTION_8_5();
  bzero(v30, v12);
  OUTLINED_FUNCTION_7_5();
  bzero(v40, v13);
  if (setjmp(v40))
  {
    goto LABEL_3;
  }

  if (ventproc(a1, v30, v39, v38, v37, v40))
  {
    goto LABEL_3;
  }

  get_parm(a1, &v36, a2, -4);
  get_parm(a1, &v35 + 4, a3, -4);
  get_parm(a1, &v35, a4, -4);
  get_parm(a1, &v34, a5, -4);
  v17 = OUTLINED_FUNCTION_14_4();
  get_parm(v17, v18, v19, -5);
  v31 = 65532;
  fence_6(a1, 0, &null_str_0);
  if (!HIWORD(v35))
  {
LABEL_3:
    v14 = 94;
  }

  else
  {
    while (2)
    {
      v20 = OUTLINED_FUNCTION_11_5();
      starttest(v20, v21);
      v22 = OUTLINED_FUNCTION_16_4();
      c_assvar(v22, v23);
      HIWORD(v31) = HIWORD(v35) + HIWORD(v34) * WORD1(v35);
      if (SHIWORD(v31) > 10)
      {
        v24 = *(a1 + 104);
        if (v24)
        {
          v25 = OUTLINED_FUNCTION_12_5(v24);
        }

        else
        {
          v25 = OUTLINED_FUNCTION_19_3();
        }

        switch(v25)
        {
          case 1:
            continue;
          case 2:
            v26 = v33;
            goto LABEL_17;
          case 3:
            v27 = SHIWORD(v34) * SWORD1(v35);
            goto LABEL_15;
          case 4:
            v28 = 0.0;
            goto LABEL_16;
          default:
            goto LABEL_3;
        }
      }

      break;
    }

    v27 = 10 - SHIWORD(v35);
LABEL_15:
    v28 = v27;
LABEL_16:
    v29 = log(SHIWORD(v35) / (v28 + SHIWORD(v35)));
    v26 = v29 / SHIWORD(v36);
    v33 = v26;
LABEL_17:
    *(a6 + 8) = v26;
    v14 = 0;
  }

  vretproc(a1);
  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t realize_prenucl_tone(uint64_t a1)
{
  OUTLINED_FUNCTION_3_6(*MEMORY[0x277D85DE8], v67);
  OUTLINED_FUNCTION_2_6(v3, v4, v5, v6, v7, v8, v9, v10, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_0_6(v11, v12, v13, v14, v15, v16, v17, v18, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, *v115, v115[4], *v117, *&v117[4], v117[6], v119, SWORD2(v119), SBYTE6(v119), SHIBYTE(v119), v121, v123))
  {
LABEL_3:
    v19 = 94;
    goto LABEL_4;
  }

  fence_6(a1, 0, &null_str_0);
  v22 = OUTLINED_FUNCTION_4_5();
  starttest(v22, v23);
  v24 = OUTLINED_FUNCTION_9_5();
  if (lpta_loadp_setscan_r(v24, v25))
  {
LABEL_9:
    v30 = OUTLINED_FUNCTION_5_5();
    starttest(v30, v31);
    v32 = OUTLINED_FUNCTION_9_5();
    if (lpta_loadp_setscan_r(v32, v33))
    {
LABEL_13:
      v37 = OUTLINED_FUNCTION_5_5();
      starttest(v37, v38);
      v39 = OUTLINED_FUNCTION_9_5();
      if (lpta_loadp_setscan_r(v39, v40))
      {
LABEL_17:
        v44 = OUTLINED_FUNCTION_5_5();
        starttest(v44, v45);
        v46 = OUTLINED_FUNCTION_9_5();
        if (lpta_loadp_setscan_r(v46, v47))
        {
LABEL_21:
          v51 = OUTLINED_FUNCTION_5_5();
          starttest(v51, v52);
          v53 = OUTLINED_FUNCTION_9_5();
          if (lpta_loadp_setscan_r(v53, v54))
          {
LABEL_25:
            v58 = OUTLINED_FUNCTION_5_5();
            starttest(v58, v59);
            v60 = OUTLINED_FUNCTION_9_5();
            if (lpta_loadp_setscan_r(v60, v61))
            {
              goto LABEL_33;
            }

            v62 = OUTLINED_FUNCTION_1_6();
            if (!testFldeq(v62, v63, v64, 4) && !advance_tok(a1))
            {
              high_star_low_tone(a1);
              goto LABEL_33;
            }
          }

          else
          {
            v55 = OUTLINED_FUNCTION_1_6();
            if (!testFldeq(v55, v56, v57, 5) && !advance_tok(a1))
            {
              high_low_star_tone(a1);
              goto LABEL_33;
            }
          }
        }

        else
        {
          v48 = OUTLINED_FUNCTION_1_6();
          if (!testFldeq(v48, v49, v50, 2) && !advance_tok(a1))
          {
            low_star_high_tone(a1);
            goto LABEL_33;
          }
        }
      }

      else
      {
        v41 = OUTLINED_FUNCTION_1_6();
        if (!testFldeq(v41, v42, v43, 3) && !advance_tok(a1))
        {
          low_high_star_tone(a1);
          goto LABEL_33;
        }
      }
    }

    else
    {
      v34 = OUTLINED_FUNCTION_1_6();
      if (!testFldeq(v34, v35, v36, 1) && !advance_tok(a1))
      {
        low_tone(a1);
        goto LABEL_33;
      }
    }
  }

  else
  {
    v26 = OUTLINED_FUNCTION_1_6();
    if (!testFldeq(v26, v27, v28, v29) && !advance_tok(a1))
    {
      high_tone(a1);
LABEL_33:
      v19 = 0;
      goto LABEL_4;
    }
  }

  v65 = *(a1 + 104);
  if (v65)
  {
    v66 = OUTLINED_FUNCTION_12_5(v65);
  }

  else
  {
    v66 = OUTLINED_FUNCTION_19_3();
  }

  v19 = 0;
  switch(v66)
  {
    case 1:
      goto LABEL_9;
    case 2:
    case 3:
    case 5:
    case 7:
    case 9:
    case 11:
    case 12:
      break;
    case 4:
      goto LABEL_13;
    case 6:
      goto LABEL_17;
    case 8:
      goto LABEL_21;
    case 10:
      goto LABEL_25;
    default:
      goto LABEL_3;
  }

LABEL_4:
  vretproc(a1);
  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

uint64_t modulate_pwind(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v54 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6_5(a1, a2, a3, a4, a5, a6, a7, a8, v24);
  OUTLINED_FUNCTION_7_5();
  bzero(v53, v9);
  v10 = setjmp(v53);
  if (v10 || OUTLINED_FUNCTION_0_6(v10, v11, v12, v13, v14, v15, v16, v17, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, 0, v49, *v50, *&v50[4], v50[6], v51, SWORD2(v51), SBYTE6(v51), SHIBYTE(v51), v52, v53[0]))
  {
    vretproc(a1);
    result = 94;
  }

  else
  {
    v20 = OUTLINED_FUNCTION_14_4();
    get_parm(v20, v21, v22, -4);
    fence_6(a1, 0, &null_str_0);
    if (*(a1 + 5352) != 0.0)
    {
      *(a1 + 4960) = *(a1 + 4960) * (1.0 / pow(0.86, v48) * 0.5);
      v23 = v48 * -0.01 + 1.05;
      if (v48 < 5)
      {
        v23 = v48 * 0.01 + 0.95;
      }

      *(a1 + 4944) = v23 * *(a1 + 4944);
    }

    vretproc(a1);
    result = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t insert_f0(uint64_t a1, __int16 *a2, __int16 *a3)
{
  v55 = *MEMORY[0x277D85DE8];
  v50[0] = 0;
  v50[1] = 0;
  v48 = 0;
  v49 = 0;
  v46 = 0;
  v47 = 0;
  v45 = 0;
  v43 = 65532;
  v44 = 0;
  v41 = 65532;
  v42 = 0;
  v40[0] = 0;
  v40[1] = 0;
  OUTLINED_FUNCTION_8_5();
  bzero(v39, v6);
  OUTLINED_FUNCTION_7_5();
  bzero(v54, v7);
  if (setjmp(v54) || ventproc(a1, v39, v53, v52, v51, v54))
  {
LABEL_3:
    vretproc(a1);
    result = 94;
  }

  else
  {
    get_parm(a1, v50, a2, -6);
    get_parm(a1, &v49 + 4, a3, -4);
    v10 = OUTLINED_FUNCTION_14_4();
    get_parm(v10, v11, v12, -4);
    push_ptr_init(a1, &v47);
    push_ptr_init(a1, &v45);
    LOWORD(v44) = -4;
    LOWORD(v42) = -4;
    v13 = push_ptr_init(a1, v40);
    OUTLINED_FUNCTION_23_3(v13, v14, &null_str_0);
    v48 = *(a1 + 3352);
    v46 = v48;
    HIWORD(v44) = 0;
    HIWORD(v43) = 0;
    *(a1 + 4974) = WORD1(v49);
    HIWORD(v42) = *(a1 + 946) - 1;
    v15 = HIWORD(v49);
    if (SHIWORD(v49) <= 0)
    {
      HIWORD(v49) = 3;
      v15 = 3;
    }

    v16 = v15;
    v17 = 0;
    while (2)
    {
      if (v16 >= 100)
      {
        HIWORD(v49) = 97;
      }

      v18 = v17;
LABEL_11:
      v19 = v18;
      v20 = OUTLINED_FUNCTION_13_5();
      starttest(v20, v21);
      OUTLINED_FUNCTION_11_5();
      bspush_ca_boa();
      v22 = OUTLINED_FUNCTION_16_4();
      if (set_f0_range_ptrs(v22, v23, &v47, &v45, &v42))
      {
        v24 = v19;
      }

      else
      {
        v24 = 1;
      }

      v25 = *(a1 + 104);
      if (v25)
      {
        *(a1 + 104) = 0;
        v26 = v25;
        v17 = v24;
      }

      else
      {
        v26 = vback(a1, v24);
        v17 = 0;
      }

      v18 = v17;
      switch(v26)
      {
        case 1:
          v16 = HIWORD(v49);
          continue;
        case 2:
          goto LABEL_11;
        case 3:
          if (*(a1 + 5352) != 0.0)
          {
            goto LABEL_22;
          }

          v32 = *(a1 + 5336);
          goto LABEL_24;
        case 4:
          bspop_boa(a1);
          goto LABEL_3;
        case 5:
          v27 = *(a1 + 5352);
LABEL_22:
          v28 = *(a1 + 5336);
          v29 = SHIWORD(v42);
          v30 = v28 / exp(*(a1 + 1760) * v29);
          *(a1 + 4944) = v30;
          exp(*(a1 + 1776) * v29);
          OUTLINED_FUNCTION_22_3();
          v32 = (v30 + v31);
          *(a1 + 4960) = v33;
          if (*(a1 + 4970) > v32)
          {
            LOWORD(v32) = *(a1 + 4970);
          }

LABEL_24:
          HIWORD(v43) = v32;
          goto LABEL_25;
        case 6:
LABEL_25:
          v34 = OUTLINED_FUNCTION_13_5();
          lpta_rpta_loadp(v34, v35, v36);
          dur_expr(a1, 8u, &v41);
          HIWORD(v44) = ((SHIWORD(v41) * SHIWORD(v49)) / 100.0);
          v37 = OUTLINED_FUNCTION_13_5();
          if (valid_f0_posn(v37, v38))
          {
            goto LABEL_28;
          }

          addStreamArrayPtVal();
LABEL_27:
          *(a1 + 4640) = *(a1 + 5056);
          *(a1 + 4656) = SHIWORD(v43);
LABEL_28:
          vretproc(a1);
          result = 0;
          break;
        case 7:
          goto LABEL_28;
        case 8:
          goto LABEL_27;
        default:
          goto LABEL_3;
      }

      break;
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t set_f0_range_ptrs(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4, __int16 *a5)
{
  v75 = *MEMORY[0x277D85DE8];
  v69 = 0;
  v70 = 0;
  v67 = 0;
  v68 = 0;
  v65 = 0;
  v66 = 0;
  v64 = 0;
  v63[0] = 0;
  v63[1] = 0;
  OUTLINED_FUNCTION_8_5();
  bzero(v62, v7);
  OUTLINED_FUNCTION_7_5();
  bzero(v74, v8);
  if (!setjmp(v74) && !ventproc(a1, v62, v73, v72, v71, v74))
  {
    v11 = OUTLINED_FUNCTION_25_3();
    get_parm(v11, v12, a2, -6);
    get_parm(a1, &v67, a3, -6);
    get_parm(a1, &v65, a4, -6);
    get_parm(a1, &v64, a5, -4);
    v13 = push_ptr_init(a1, v63);
    OUTLINED_FUNCTION_23_3(v13, v14, &null_str_0);
    v15 = *(a1 + 978);
    v16 = OUTLINED_FUNCTION_25_3();
    lpta_loadpn(v16, v17);
    rpta_loadpn(a1, a1 + 1136);
    if (compare_ptas(a1))
    {
      v18 = v15;
      v19 = 0;
    }

    else
    {
      if (!testeq(a1))
      {
        v20 = OUTLINED_FUNCTION_4_5();
        starttest(v20, v21);
        OUTLINED_FUNCTION_5_5();
        bspush_ca_boa();
        v22 = in_syllable() == 0;
        v18 = v15;
        goto LABEL_24;
      }

      v18 = v15;
      v19 = 0;
    }

LABEL_11:
    v23 = OUTLINED_FUNCTION_5_5();
    starttest(v23, v24);
    v25 = OUTLINED_FUNCTION_24_3();
    if (!lpta_loadp_setscan_r(v25, v26))
    {
      OUTLINED_FUNCTION_5_5();
      bspush_ca_scan_boa();
      v22 = !advanc(a1) || v19;
      goto LABEL_24;
    }

    v27 = v18;
    v28 = v19;
LABEL_13:
    v29 = v27;
    v30 = OUTLINED_FUNCTION_24_3();
    lpta_loadpn(v30, v31);
    rpta_loadpn(a1, a1 + 784);
    if (compare_ptas(a1) || testeq(a1))
    {
      v32 = v28;
LABEL_16:
      v33 = OUTLINED_FUNCTION_5_5();
      starttest(v33, v34);
      v35 = OUTLINED_FUNCTION_24_3();
      v37 = lpta_loadp_setscan_r(v35, v36);
      v38 = v29;
      if (!v37)
      {
LABEL_17:
        v18 = v38;
        savescptr(a1, 17, &v67);
        v39 = advance_tok(a1);
        v22 = v32;
        if (!v39)
        {
LABEL_18:
          v40 = 18;
          goto LABEL_48;
        }

        goto LABEL_24;
      }
    }

    else
    {
      v41 = OUTLINED_FUNCTION_5_5();
      starttest_l(v41, v42);
      v43 = OUTLINED_FUNCTION_24_3();
      if (!lpta_loadp_setscan_r(v43, v44))
      {
LABEL_46:
        v57 = v28;
        v18 = v29;
        savescptr(a1, 15, &v67);
        v58 = advance_tok(a1);
        v22 = v57;
        if (!v58)
        {
LABEL_47:
          v40 = 16;
LABEL_48:
          v48 = v40;
LABEL_49:
          savescptr(a1, v48, &v65);
          goto LABEL_50;
        }

        while (1)
        {
LABEL_24:
          v45 = *(a1 + 104);
          if (v45)
          {
            v46 = OUTLINED_FUNCTION_12_5(v45);
            v32 = v47;
          }

          else
          {
            v46 = vback(a1, v22);
            v32 = 0;
          }

          v48 = 11;
          switch(v46)
          {
            case 1:
              goto LABEL_10;
            case 2:
              bspop_boa(a1);
              --HIWORD(v64);
              v18 = *(a1 + 1006);
LABEL_10:
              v19 = v32;
              goto LABEL_11;
            case 3:
              v27 = v18;
              v28 = v32;
              goto LABEL_13;
            case 4:
              bspop_boa(a1);
              v49 = testFldeq(a1, 4u, 1, 2);
              v22 = v32;
              if (v49)
              {
                continue;
              }

              v50 = advance_tok(a1);
              v22 = v32;
              if (v50)
              {
                continue;
              }

              goto LABEL_30;
            case 5:
LABEL_30:
              v51 = OUTLINED_FUNCTION_25_3();
              savescptr(v51, v52, v63);
              v54 = (a1 + 856);
              v53 = (a1 + 840);
              if (*(a1 + 978) != v18)
              {
                goto LABEL_31;
              }

              goto LABEL_32;
            case 6:
LABEL_31:
              v53 = (a1 + 872);
              v54 = (a1 + 888);
LABEL_32:
              v68 = *v53;
              v66 = *v54;
              goto LABEL_33;
            case 7:
LABEL_33:
              starttest(a1, 8);
              if (lpta_loadp_setscan_r(a1, &v65))
              {
                goto LABEL_50;
              }

              bspush_ca_scan_boa();
LABEL_35:
              if (test_synch(a1, 10, 1u, &string_17))
              {
                v22 = v32;
              }

              else
              {
                v22 = 1;
              }

              break;
            case 8:
            case 12:
            case 14:
              goto LABEL_50;
            case 9:
              bspop_boa(a1);
              v55 = testFldeq(a1, 4u, 4, 4);
              v22 = v32;
              if (v55)
              {
                continue;
              }

              v56 = advance_tok(a1);
              v22 = v32;
              if (v56)
              {
                continue;
              }

              v48 = 11;
              goto LABEL_49;
            case 10:
              goto LABEL_35;
            case 11:
              goto LABEL_49;
            case 13:
              v29 = v18;
              goto LABEL_16;
            case 15:
              v29 = v18;
              v28 = v32;
              goto LABEL_46;
            case 16:
              goto LABEL_47;
            case 17:
              v38 = v18;
              goto LABEL_17;
            case 18:
              goto LABEL_18;
            default:
              goto LABEL_3;
          }
        }
      }
    }

LABEL_50:
    *(a3 + 8) = v68;
    *(a4 + 8) = v66;
    a5[1] = HIWORD(v64);
    vretproc(a1);
    result = 0;
    goto LABEL_4;
  }

LABEL_3:
  vretproc(a1);
  result = 94;
LABEL_4:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t valid_f0_posn(double *a1, __int16 *a2)
{
  v63 = *MEMORY[0x277D85DE8];
  v50 = 0;
  v51 = 0;
  v49 = 0;
  OUTLINED_FUNCTION_8_5();
  bzero(v26, v4);
  OUTLINED_FUNCTION_7_5();
  bzero(v62, v5);
  v6 = setjmp(v62);
  if (v6)
  {
    goto LABEL_3;
  }

  if (OUTLINED_FUNCTION_21_3(v6, v7, v8, v9, v10, v11, v12, v13, v25, v26[0], v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62[0]))
  {
    goto LABEL_3;
  }

  v16 = OUTLINED_FUNCTION_16_4();
  get_parm(v16, v17, a2, -6);
  v18 = OUTLINED_FUNCTION_14_4();
  get_parm(v18, v19, v20, -4);
  LODWORD(v49) = 65532;
  fence_6(a1, 0, &null_str_0);
  v21 = OUTLINED_FUNCTION_17_4();
  lpta_rpta_loadp(v21, v22, &v50);
  dur_expr(a1, 8u, &v49);
  v23 = a1[273] + SWORD1(v49) + SHIWORD(v49);
  a1[632] = v23;
  v24 = a1[580];
  if (v24 < v23)
  {
    goto LABEL_8;
  }

  if (v24 != 0.0 || v23 != 0.0)
  {
LABEL_3:
    vretproc(a1);
    result = 94;
  }

  else
  {
LABEL_8:
    vretproc(a1);
    result = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t shift_tone(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v82 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6_5(a1, a2, a3, a4, a5, a6, a7, a8, v52);
  OUTLINED_FUNCTION_7_5();
  bzero(v81, v10);
  v11 = setjmp(v81);
  if (!v11 && !OUTLINED_FUNCTION_0_6(v11, v12, v13, v14, v15, v16, v17, v18, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, 0, v77, *v78, *&v78[4], v78[6], v79, SWORD2(v79), SBYTE6(v79), SHIBYTE(v79), v80, v81[0]))
  {
    v22 = OUTLINED_FUNCTION_14_4();
    get_parm(v22, v23, v24, -4);
    fence_6(a1, 0, &null_str_0);
    v25 = OUTLINED_FUNCTION_4_5();
    starttest(v25, v26);
    v27 = OUTLINED_FUNCTION_9_5();
    if (lpta_loadp_setscan_r(v27, v28))
    {
      goto LABEL_19;
    }

    v29 = OUTLINED_FUNCTION_10_5();
    if (npush_fld(v29, v30, 5))
    {
      goto LABEL_13;
    }

    npush_v(a1, (a1 + 3032), v31, v32, v33, v34, v35, v36);
    if (if_testlt(a1, v37, v38, v39, v40, v41, v42, v43))
    {
      goto LABEL_13;
    }

    while (2)
    {
      if (!advance_tok(a1))
      {
LABEL_9:
        v44 = OUTLINED_FUNCTION_5_5();
        bspush_ca_scan(v44, v45);
        *(a1 + 136) = 1;
        v46 = *(a1 + 1744);
        if (!OUTLINED_FUNCTION_18_3())
        {
          v47 = OUTLINED_FUNCTION_5_5();
          starttest(v47, v48);
          if (lpta_loadp_setscan_r(a1, a1 + 1448))
          {
LABEL_17:
            v51 = 20;
          }

          else
          {
            if (testFldeq(a1, 5u, 1, 3) || advance_tok(a1))
            {
              goto LABEL_13;
            }

            v51 = -20;
          }

          v76 += v51;
LABEL_19:
          *(a2 + 2) = v76;
          v19 = 0;
          goto LABEL_4;
        }
      }

LABEL_13:
      v49 = *(a1 + 104);
      if (v49)
      {
        v50 = OUTLINED_FUNCTION_12_5(v49);
      }

      else
      {
        v50 = OUTLINED_FUNCTION_19_3();
      }

      switch(v50)
      {
        case 1:
          goto LABEL_19;
        case 2:
          goto LABEL_9;
        case 3:
          continue;
        case 4:
          goto LABEL_17;
        default:
          goto LABEL_3;
      }
    }
  }

LABEL_3:
  v19 = 94;
LABEL_4:
  vretproc(a1);
  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

uint64_t find_most_stressed_syll(void *a1)
{
  OUTLINED_FUNCTION_3_6(*MEMORY[0x277D85DE8], v26);
  OUTLINED_FUNCTION_2_6(v3, v4, v5, v6, v7, v8, v9, v10, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_0_6(v11, v12, v13, v14, v15, v16, v17, v18, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, *v74, v74[4], *v76, *&v76[4], v76[6], v78, SWORD2(v78), SBYTE6(v78), SHIBYTE(v78), v80, v82))
  {
LABEL_3:
    v19 = 94;
  }

  else
  {
    fence_6(a1, 0, &null_str_0);
    fence_6(a1, 1, &_MergedGlobals_2);
    starttest(a1, 1);
    if (lpta_loadp_setscan_l(a1, (a1 + 86)))
    {
LABEL_6:
      v19 = 0;
      a1[89] = a1[85];
    }

    else
    {
      while (2)
      {
        v22 = OUTLINED_FUNCTION_13_5();
        bspush_ca_scan(v22, v23);
        if (test_string_i())
        {
LABEL_8:
          v24 = a1[13];
          if (v24)
          {
            v25 = OUTLINED_FUNCTION_12_5(v24);
          }

          else
          {
            v25 = OUTLINED_FUNCTION_19_3();
          }

          switch(v25)
          {
            case 1:
              goto LABEL_6;
            case 2:
              continue;
            case 3:
              if (!advance_tok(a1))
              {
                continue;
              }

              goto LABEL_8;
            case 4:
              goto LABEL_14;
            case 5:
              goto LABEL_15;
            default:
              goto LABEL_3;
          }
        }

        break;
      }

LABEL_14:
      savescptr(a1, 4, (a1 + 88));
LABEL_15:
      v19 = 0;
    }
  }

  vretproc(a1);
  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

uint64_t OUTLINED_FUNCTION_0_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, char a33, int a34, __int16 a35, char a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, char a42)
{

  return ventproc(v42, &a9, &a40, &a36, &a33, &a42);
}

void OUTLINED_FUNCTION_2_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{

  bzero(&a36, 0xC0uLL);
}

void OUTLINED_FUNCTION_3_6(uint64_t a1@<X8>, uint64_t a2)
{
  *(v2 - 40) = a1;

  bzero(&a2, 0xB8uLL);
}

void OUTLINED_FUNCTION_6_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  bzero(&a9, 0xB8uLL);
}

uint64_t OUTLINED_FUNCTION_18_3()
{
  *(v1 + 112) = v0;
  *(v1 + 128) = 0;

  return test_ptr(v1);
}

uint64_t OUTLINED_FUNCTION_19_3()
{

  return vback(v0, 0);
}

uint64_t OUTLINED_FUNCTION_21_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, char a37, int a38, __int16 a39, char a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, char a46)
{

  return ventproc(v46, &a10, &a44, &a40, &a37, &a46);
}

void *OUTLINED_FUNCTION_23_3(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return fence_6(v3, 0, a3);
}

void OUTLINED_FUNCTION_26_3(uint64_t a1, __int16 *a2)
{

  copyvar(v2, a2, (v2 + v3));
}

uint64_t OUTLINED_FUNCTION_27_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  return npush_v(v8, (v8 + v9), a3, a4, a5, a6, a7, a8);
}

uint64_t doF(uint64_t a1, __int16 *a2, __int16 *a3)
{
  v45 = *MEMORY[0x277D85DE8];
  v34 = 0;
  v33 = 0;
  HIDWORD(v32) = 0;
  OUTLINED_FUNCTION_11_6();
  bzero(v31, v6);
  OUTLINED_FUNCTION_10_6();
  bzero(v44, v7);
  v8 = setjmp(v44);
  if (v8 || OUTLINED_FUNCTION_26_4(v8, v31, v9, v10, v11, v12, v13, v14, v31[0], v31[1], v31[2], v31[3], v31[4], v31[5], v31[6], v31[7], v31[8], v31[9], v31[10], v31[11], v31[12], v31[13], v31[14], v31[15], v31[16], v31[17], v31[18], v31[19], v31[20], v31[21], v31[22], v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44[0]))
  {
LABEL_3:
    v15 = 94;
    goto LABEL_4;
  }

  get_parm(a1, &v34, a2, -4);
  get_parm(a1, &v33 + 4, a3, -4);
  v18 = OUTLINED_FUNCTION_20_4();
  get_parm(v18, v19, v20, -4);
  HIDWORD(v32) = 65532;
  fence_7(a1);
  if (SHIWORD(v33) >= 1)
  {
    if (*(a1 + 3400) < 16.0 && SWORD1(v33) >= 1)
    {
      HIWORD(v33) = vcvtd_n_f64_u32(SWORD1(v33) + SHIWORD(v33), 1uLL);
      WORD1(v33) = -1;
    }

LABEL_11:
    add_filtered_val(a1, &v34, &v33 + 4, a1 + 2128, (a1 + 2128), a1 + 1576, (a1 + 1560));
LABEL_12:
    v22 = OUTLINED_FUNCTION_4_6();
    starttest(v22, v23);
    c_assvar(a1, &v32 + 2);
    HIWORD(v32) = -1;
    if (SWORD1(v33) != -1)
    {
      goto LABEL_16;
    }

    add_filtered_val(a1, &v34, &v33 + 4, a1 + 2144, (a1 + 2144), a1 + 1544, (a1 + 1592));
  }

  while (2)
  {
    if (SWORD1(v33) < 1)
    {
LABEL_23:
      v15 = 0;
      break;
    }

    v24 = OUTLINED_FUNCTION_4_6();
    starttest(v24, v25);
    c_assvar(a1, &v32 + 2);
    HIWORD(v32) = -1;
    if (SHIWORD(v33) == -1)
    {
      v28 = a1 + 2128;
      v29 = (a1 + 2144);
      v30 = a1 + 1576;
LABEL_22:
      add_filtered_val(a1, &v34, &v33, v28, v29, v30, (a1 + 1592));
      goto LABEL_23;
    }

LABEL_16:
    v26 = *(a1 + 104);
    if (v26)
    {
      v27 = OUTLINED_FUNCTION_21_4(v26);
    }

    else
    {
      v27 = vback(a1, 0);
    }

    v15 = 0;
    switch(v27)
    {
      case 1:
        continue;
      case 2:
        goto LABEL_11;
      case 3:
        goto LABEL_12;
      case 4:
      case 6:
        goto LABEL_4;
      case 5:
        v28 = a1 + 2144;
        v29 = (a1 + 2144);
        v30 = a1 + 1544;
        goto LABEL_22;
      default:
        goto LABEL_3;
    }
  }

LABEL_4:
  vretproc(a1);
  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

void do_son_amps()
{
  OUTLINED_FUNCTION_32_0();
  v1 = v0;
  v243 = *MEMORY[0x277D85DE8];
  v237 = 0;
  v238 = 0.0;
  v235 = 0;
  v236 = 0.0;
  v233 = 0;
  v234 = 0.0;
  v232 = 0;
  v230 = 0;
  v231 = 0;
  v228 = 0;
  v229 = 0;
  v226 = 0;
  v227 = 0;
  v225[0] = 0;
  v225[1] = 0;
  v224[0] = 0;
  v224[1] = 0;
  v222 = 0;
  v223 = 0;
  v221 = 0;
  OUTLINED_FUNCTION_11_6();
  bzero(v220, v2);
  OUTLINED_FUNCTION_10_6();
  bzero(v242, v3);
  if (setjmp(v242) || ventproc(v1, v220, v241, v240, v239, v242))
  {
    goto LABEL_3;
  }

  v238 = 0.0;
  LOWORD(v237) = -5;
  v236 = 0.0;
  LOWORD(v235) = -5;
  v234 = 0.0;
  LOWORD(v233) = -5;
  v232 = 65532;
  push_ptr_init(v1, &v230);
  push_ptr_init(v1, &v228);
  push_ptr_init(v1, &v226);
  push_ptr_init(v1, v225);
  push_ptr_init(v1, v224);
  v223 = 0xFFFC0000FFFCLL;
  v222 = 0xFFFC0000FFFCLL;
  v221 = 0xFFFC0000FFFCLL;
  fence_7(v1);
  v238 = 0.0;
  v236 = 0.0;
  v234 = 0.0;
  if (*(v1 + 994) != *(v1 + 966))
  {
    v6 = OUTLINED_FUNCTION_4_6();
    starttest(v6, v7);
    v8 = OUTLINED_FUNCTION_4_6();
    bspush_ca(v8);
    v9 = 0;
    v10 = 0;
    if (*(v1 + 5110) != *(v1 + 5090))
    {
      goto LABEL_102;
    }

LABEL_7:
    v9 = v10;
    v11 = OUTLINED_FUNCTION_0_7();
    if (lpta_loadp_setscan_l(v11, v12))
    {
      goto LABEL_102;
    }

    v13 = OUTLINED_FUNCTION_1_7();
    if (testFldeq(v13, v14, v15, 1))
    {
      goto LABEL_102;
    }

    OUTLINED_FUNCTION_4_6();
    bspush_ca_scan_boa();
    v16 = OUTLINED_FUNCTION_6_6();
    v18 = 9;
    v19 = 1;
    goto LABEL_85;
  }

  v5 = 0;
LABEL_69:
  lpta_loadpn(v1, v1 + 1576);
  rpta_loadpn(v1, v1 + 800);
  if (compare_ptas(v1) || testeq(v1))
  {
    v9 = v5;
    goto LABEL_101;
  }

  if (*(v1 + 4362))
  {
    get_nuc_AV(v1);
  }

LABEL_79:
  lpta_loadpn(v1, v1 + 880);
  rpta_loadpn(v1, v1 + 832);
  if (compare_ptas(v1) || testeq(v1))
  {
LABEL_81:
    v127 = OUTLINED_FUNCTION_4_6();
    starttest(v127, v128);
    v129 = OUTLINED_FUNCTION_4_6();
    bspush_ca(v129);
    v24 = v5;
    v9 = v5;
    if (*(v1 + 5110) != *(v1 + 5090))
    {
      goto LABEL_102;
    }

LABEL_82:
    v9 = v24;
    v130 = OUTLINED_FUNCTION_0_7();
    if (lpta_loadp_setscan_l(v130, v131))
    {
      goto LABEL_102;
    }

    v132 = OUTLINED_FUNCTION_1_7();
    if (testFldeq(v132, v133, v134, 1))
    {
      goto LABEL_102;
    }

    OUTLINED_FUNCTION_4_6();
    bspush_ca_scan_boa();
    v16 = OUTLINED_FUNCTION_6_6();
    v18 = 2;
LABEL_85:
    if (!testFldeq(v16, v17, v18, v19))
    {
      v9 = 1;
    }

    goto LABEL_102;
  }

  v229 = *(v1 + 808);
  lpta_rpta_loadp(v1, v1 + 800, v1 + 1576);
  v135 = OUTLINED_FUNCTION_8_6();
  dur_expr(v135, v136, v137);
  v138 = (v1 + 2136);
  v218 = 1.0;
LABEL_88:
  v238 = *v138 - SHIWORD(v232) + v218;
  v23 = v5;
LABEL_89:
  v139 = OUTLINED_FUNCTION_4_6();
  starttest(v139, v140);
  v141 = OUTLINED_FUNCTION_7_6();
  if (lpta_loadp_setscan_r(v141, v142))
  {
LABEL_90:
    v143 = v1 + 848;
    v144 = 856;
  }

  else
  {
    v197 = OUTLINED_FUNCTION_3_7();
    if (testFldeq(v197, v198, v199, 2))
    {
      v9 = v23;
      goto LABEL_102;
    }

    v200 = advance_tok(v1);
    v144 = 824;
    v9 = v23;
    v143 = v1 + 816;
    if (v200)
    {
      goto LABEL_102;
    }
  }

  v227 = *(v1 + v144);
  lpta_rpta_loadp(v1, &v228, v143);
  v145 = OUTLINED_FUNCTION_8_6();
  dur_expr(v145, v146, v147);
  v236 = v238 + SHIWORD(v232) + -1.0;
LABEL_92:
  v126 = v23;
  *(v1 + 4722) = 6;
  v148 = OUTLINED_FUNCTION_13_6();
  if (!if_testneq_v_i(v148, v149, 100, v150, v151, v152, v153, v154))
  {
    OUTLINED_FUNCTION_12_6();
    doAV();
LABEL_94:
    OUTLINED_FUNCTION_12_6();
    doAV();
  }

LABEL_95:
  v155 = OUTLINED_FUNCTION_4_6();
  starttest(v155, v156);
  v157 = OUTLINED_FUNCTION_4_6();
  bspush_ca(v157);
  *(v1 + 4722) = 4;
  v158 = OUTLINED_FUNCTION_13_6();
  v166 = if_testeq_v_i(v158, v159, v160, v161, v162, v163, v164, v165);
  v9 = v126;
  v25 = v126;
  if (v166)
  {
    goto LABEL_102;
  }

LABEL_96:
  v9 = v25;
  if (*(v1 + 4530) != 1)
  {
    goto LABEL_102;
  }

  OUTLINED_FUNCTION_28_2();
  addStreamArraySsVal(v1, v1 + 1988, (v1 + v167), v168, v169);
LABEL_98:
  v170 = OUTLINED_FUNCTION_4_6();
  starttest(v170, v171);
  v172 = OUTLINED_FUNCTION_4_6();
  bspush_ca(v172);
  *(v1 + 4722) = 4;
  v173 = OUTLINED_FUNCTION_13_6();
  v181 = if_testeq_v_i(v173, v174, v175, v176, v177, v178, v179, v180);
  v26 = v9;
  if (v181)
  {
    goto LABEL_102;
  }

LABEL_99:
  v9 = v26;
  if (*(v1 + 4518) != 1)
  {
    goto LABEL_102;
  }

  OUTLINED_FUNCTION_28_2();
  OUTLINED_FUNCTION_15_5();
  addStreamArraySsVal(v1, v182, v183, v184, v185);
LABEL_101:
  while (1)
  {
    v186 = OUTLINED_FUNCTION_4_6();
    starttest(v186, v187);
    v188 = OUTLINED_FUNCTION_7_6();
    move_i(v188, v189, 0);
    v190 = OUTLINED_FUNCTION_9_6();
    move_i(v190, v191, 0);
    v192 = OUTLINED_FUNCTION_30_1();
    move_i(v192, v193, 0);
    move_i(v1, &v222 + 4, 0);
    move_i(v1, &v222, 0);
    move_i(v1, &v221 + 4, 0);
    move_i(v1, &v221, 0);
    v194 = OUTLINED_FUNCTION_7_6();
    do_fric_amps(v194, v195, &v223 + 4, &v223, &v222 + 4, &v222, &v221 + 4, &v221, v1 + 2128, v1 + 2144, v1 + 1576, v1 + 1592, v219, v220[0], v220[1], v220[2], v220[3], v220[4], v220[5], v220[6], v220[7], v220[8], v220[9], v220[10]);
    if (!v196)
    {
      break;
    }

LABEL_102:
    v138 = (v1 + 2136);
    v44 = v9;
    while (2)
    {
      v20 = *(v1 + 104);
      if (v20)
      {
        v21 = OUTLINED_FUNCTION_21_4(v20);
        v23 = v22;
      }

      else
      {
        v21 = vback(v1, v44);
        v23 = 0;
      }

      v10 = v23;
      v24 = v23;
      v25 = v23;
      v26 = v23;
      switch(v21)
      {
        case 1:
          v5 = v23;
          goto LABEL_69;
        case 2:
          v27 = OUTLINED_FUNCTION_4_6();
          starttest(v27, v28);
          v29 = OUTLINED_FUNCTION_0_7();
          if (lpta_loadp_setscan_l(v29, v30))
          {
            goto LABEL_15;
          }

          v110 = OUTLINED_FUNCTION_3_7();
          v113 = testFldeq(v110, v111, v112, 1);
          v44 = v23;
          if (v113)
          {
            continue;
          }

          v114 = OUTLINED_FUNCTION_6_6();
          v116 = testFldeq(v114, v115, 9, 2);
          v44 = v23;
          if (v116)
          {
            continue;
          }

          v117 = advance_tok(v1);
          v44 = v23;
          if (v117)
          {
            continue;
          }

          lpta_loadpn(v1, v1 + 4664);
          rpta_loadpn(v1, v1 + 816);
          v118 = compare_ptas(v1);
          v44 = v23;
          if (v118)
          {
            continue;
          }

          v119 = testneq(v1);
          v44 = v23;
          if (v119)
          {
            continue;
          }

          lpta_loadpn(v1, v1 + 4664);
          rpta_loadpn(v1, v1 + 896);
          v120 = compare_ptas(v1);
          v44 = v23;
          if (v120)
          {
            continue;
          }

          v121 = testneq(v1);
          v44 = v23;
          if (v121)
          {
            continue;
          }

          v234 = *(v1 + 2120);
          v31 = *(v1 + 4672);
LABEL_16:
          v231 = v31;
LABEL_17:
          if (!*(v1 + 4514))
          {
            doAV();
          }

LABEL_19:
          v32 = OUTLINED_FUNCTION_4_6();
          starttest(v32, v33);
          v34 = OUTLINED_FUNCTION_4_6();
          bspush_ca(v34);
          v35 = OUTLINED_FUNCTION_22_4();
LABEL_44:
          v104 = if_testeq_v_i(v35, v36, v37, v38, v39, v40, v41, v42);
          v44 = v23;
          if (v104)
          {
            continue;
          }

LABEL_45:
          v86 = (v1 + 4404);
          v44 = v23;
          if (*(v1 + 4530) != 1)
          {
            continue;
          }

LABEL_46:
          addStreamArraySsVal(v1, v1 + 1988, v86, &v233, (v1 + 2144));
LABEL_47:
          v105 = OUTLINED_FUNCTION_4_6();
          starttest(v105, v106);
          v107 = OUTLINED_FUNCTION_4_6();
          bspush_ca(v107);
          v87 = OUTLINED_FUNCTION_22_4();
LABEL_48:
          v108 = if_testeq_v_i(v87, v88, v89, v90, v91, v92, v93, v94);
          v44 = v23;
          if (v108)
          {
            continue;
          }

LABEL_49:
          v44 = v23;
          if (*(v1 + 4518) != 1)
          {
            continue;
          }

LABEL_66:
          OUTLINED_FUNCTION_15_5();
          v125 = (v1 + 2144);
LABEL_76:
          addStreamArraySsVal(v1, v122, v123, v124, v125);
LABEL_77:
          v9 = v23;
          break;
        case 3:
          v80 = OUTLINED_FUNCTION_4_6();
          bspush_ca(v80);
          v79 = *(v1 + 5098);
          goto LABEL_36;
        case 4:
          goto LABEL_7;
        case 5:
          v85 = OUTLINED_FUNCTION_4_6();
          bspush_ca(v85);
          v79 = *(v1 + 5102);
          goto LABEL_36;
        case 6:
          v79 = *(v1 + 5122);
LABEL_36:
          v10 = v23;
          v44 = v23;
          if (v79 == *(v1 + 5090))
          {
            goto LABEL_7;
          }

          continue;
        case 7:
          bspop_boa(v1);
          OUTLINED_FUNCTION_4_6();
          bspush_ca_scan_boa();
          v81 = OUTLINED_FUNCTION_6_6();
          v84 = 2;
          goto LABEL_52;
        case 8:
          bspop_boa(v1);
          v57 = advance_tok(v1);
          v44 = v23;
          if (v57)
          {
            continue;
          }

          lpta_rpta_loadp(v1, v1 + 4664, v1 + 1576);
          v58 = OUTLINED_FUNCTION_8_6();
          dur_expr(v58, v59, v60);
          v44 = v23;
          if (SHIWORD(v232) < 6)
          {
            continue;
          }

          c_assvar(v1, &v233);
          v234 = *(v1 + 2120) + 5.0;
          OUTLINED_FUNCTION_29_2();
          v61 = *(v1 + 4672);
          OUTLINED_FUNCTION_18_4();
          v62 = OUTLINED_FUNCTION_8_6();
          lpta_loadi(v62, v63, 5);
          v64 = OUTLINED_FUNCTION_8_6();
          inserted = insert_2pt_i(v64, v65, v66, v67, 205);
          v44 = v23;
          if (inserted)
          {
            continue;
          }

          rpta_storep(v1, &v230);
          goto LABEL_17;
        case 9:
          goto LABEL_17;
        case 10:
LABEL_15:
          v234 = *(v1 + 2136);
          v31 = *(v1 + 1584);
          goto LABEL_16;
        case 11:
          goto LABEL_19;
        case 12:
          v86 = (v1 + 4560);
          if (!*(v1 + 4530))
          {
            goto LABEL_46;
          }

          goto LABEL_47;
        case 13:
          v35 = OUTLINED_FUNCTION_2_7();
          goto LABEL_44;
        case 14:
          goto LABEL_45;
        case 15:
        case 16:
          goto LABEL_47;
        case 17:
          if (!*(v1 + 4518))
          {
            goto LABEL_66;
          }

          goto LABEL_77;
        case 18:
          v87 = OUTLINED_FUNCTION_2_7();
          goto LABEL_48;
        case 19:
          goto LABEL_49;
        case 20:
        case 21:
        case 22:
        case 45:
        case 46:
          goto LABEL_77;
        case 23:
          v5 = v23;
          goto LABEL_79;
        case 24:
          v5 = v23;
          goto LABEL_81;
        case 25:
          goto LABEL_89;
        case 26:
          v229 = *(v1 + 840);
          OUTLINED_FUNCTION_27_3();
          v207 = OUTLINED_FUNCTION_8_6();
          dur_expr(v207, v208, v209);
          v218 = 1.0;
          goto LABEL_110;
        case 27:
          v109 = OUTLINED_FUNCTION_4_6();
          bspush_ca(v109);
          v56 = *(v1 + 5098);
          goto LABEL_56;
        case 28:
          goto LABEL_82;
        case 29:
          v69 = OUTLINED_FUNCTION_4_6();
          bspush_ca(v69);
          v56 = *(v1 + 5102);
          goto LABEL_56;
        case 30:
          v56 = *(v1 + 5122);
LABEL_56:
          v24 = v23;
          v44 = v23;
          if (v56 == *(v1 + 5090))
          {
            goto LABEL_82;
          }

          continue;
        case 31:
          bspop_boa(v1);
          OUTLINED_FUNCTION_4_6();
          bspush_ca_scan_boa();
          v81 = OUTLINED_FUNCTION_6_6();
          v84 = 9;
          v83 = 1;
LABEL_52:
          if (testFldeq(v81, v82, v84, v83))
          {
            v44 = v23;
          }

          else
          {
            v44 = 1;
          }

          continue;
        case 32:
          bspop_boa(v1);
          v43 = advance_tok(v1);
          v44 = v23;
          if (v43)
          {
            continue;
          }

          OUTLINED_FUNCTION_27_3();
          v45 = OUTLINED_FUNCTION_8_6();
          dur_expr(v45, v46, v47);
          v44 = v23;
          if (SHIWORD(v232) < 6)
          {
            continue;
          }

          OUTLINED_FUNCTION_29_2();
          v48 = *(v1 + 840);
          OUTLINED_FUNCTION_18_4();
          v49 = OUTLINED_FUNCTION_8_6();
          lpta_loadi(v49, v50, 5);
          v51 = OUTLINED_FUNCTION_8_6();
          v55 = insert_2pt_i(v51, v52, v53, v54, 205);
          v44 = v23;
          if (v55)
          {
            continue;
          }

          rpta_storep(v1, &v228);
          OUTLINED_FUNCTION_27_3();
          v215 = OUTLINED_FUNCTION_8_6();
          dur_expr(v215, v216, v217);
          v218 = 6.0;
LABEL_110:
          v5 = v23;
          goto LABEL_88;
        case 33:
          goto LABEL_90;
        case 34:
          goto LABEL_92;
        case 35:
          v126 = v23;
          goto LABEL_95;
        case 36:
          v126 = v23;
          goto LABEL_94;
        case 37:
          OUTLINED_FUNCTION_28_2();
          v210 = OUTLINED_FUNCTION_20_4();
          addStreamArraySsVal(v210, v211, v212, v213, v214);
          goto LABEL_115;
        case 38:
          v70 = OUTLINED_FUNCTION_2_7();
          v78 = if_testeq_v_i(v70, v71, v72, v73, v74, v75, v76, v77);
          v25 = v23;
          v44 = v23;
          if (!v78)
          {
            goto LABEL_96;
          }

          continue;
        case 39:
          goto LABEL_96;
        case 40:
        case 41:
LABEL_115:
          v9 = v23;
          goto LABEL_98;
        case 42:
          OUTLINED_FUNCTION_28_2();
          OUTLINED_FUNCTION_15_5();
          goto LABEL_76;
        case 43:
          v95 = OUTLINED_FUNCTION_2_7();
          v103 = if_testeq_v_i(v95, v96, v97, v98, v99, v100, v101, v102);
          v26 = v23;
          v44 = v23;
          if (!v103)
          {
            goto LABEL_99;
          }

          continue;
        case 44:
          goto LABEL_99;
        case 47:
          goto LABEL_107;
        case 48:
          goto LABEL_108;
        default:
          goto LABEL_3;
      }

      break;
    }
  }

LABEL_107:
  *(v1 + 4722) = 7;
  OUTLINED_FUNCTION_14_5();
  addStreamArraySsVal(v1, v201, v202, v203, (v1 + 2144));
LABEL_108:
  OUTLINED_FUNCTION_14_5();
  addStreamArraySsVal(v1, v204, v205, v206, (v1 + 2144));
LABEL_3:
  vretproc(v1);
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_33_0();
}

void do_fric_amps(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int16 *a21, __int16 *a22, __int16 *a23, __int16 *a24)
{
  OUTLINED_FUNCTION_32_0();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v62 = *MEMORY[0x277D85DE8];
  v57 = 0;
  v55 = 0;
  v56 = 0;
  v54 = 0;
  memset(v53, 0, sizeof(v53));
  OUTLINED_FUNCTION_11_6();
  bzero(v52, v38);
  OUTLINED_FUNCTION_10_6();
  bzero(v61, v39);
  if (!setjmp(v61) && !ventproc(v37, v52, v60, v59, v58, v61))
  {
    get_parm(v37, &v57, v35, -4);
    get_parm(v37, &v56 + 4, v33, -4);
    get_parm(v37, &v56, v31, -4);
    get_parm(v37, &v55 + 4, v29, -4);
    v41 = OUTLINED_FUNCTION_30_1();
    get_parm(v41, v42, v27, -4);
    get_parm(v37, &v54 + 4, v25, -4);
    v43 = OUTLINED_FUNCTION_20_4();
    get_parm(v43, v44, v45, -4);
    v46 = OUTLINED_FUNCTION_7_6();
    get_parm(v46, v47, a21, -5);
    v48 = OUTLINED_FUNCTION_9_6();
    get_parm(v48, v49, a22, -5);
    v50 = OUTLINED_FUNCTION_19_4();
    get_parm(v50, v51, a23, -6);
    get_parm(v37, v53, a24, -6);
    fence_7(v37);
    OUTLINED_FUNCTION_25_4(v37, (v37 + 252), &v57);
    OUTLINED_FUNCTION_25_4(v37, v37 + 2020, &v56 + 2);
    OUTLINED_FUNCTION_25_4(v37, (v37 + 253), &v56);
    OUTLINED_FUNCTION_25_4(v37, v37 + 2028, &v55 + 2);
    OUTLINED_FUNCTION_25_4(v37, (v37 + 254), &v55);
    OUTLINED_FUNCTION_25_4(v37, v37 + 2036, &v54 + 2);
    doAF();
  }

  vretproc(v37);
  v40 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_33_0();
}

uint64_t set_seg_default_acoustic_vals(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_11_6();
  bzero(v7, v2);
  OUTLINED_FUNCTION_10_6();
  bzero(v11, v3);
  if (setjmp(v11) || ventproc(a1, v7, v10, v9, v8, v11))
  {
    v4 = 94;
  }

  else
  {
    fence_7(a1);
    v4 = 0;
    *(a1 + 1360) = *(a1 + 3352);
    *(a1 + 4370) = 0;
    *(a1 + 2216) = 0;
    *(a1 + 3400) = *(a1 + 2152) - *(a1 + 2136);
    *(a1 + 1568) = *(a1 + 1584);
    *(a1 + 1552) = *(a1 + 1600);
    *(a1 + 4514) = 0;
    *(a1 + 4518) = 0;
    *(a1 + 4522) = 0;
    *(a1 + 4530) = 0;
    *(a1 + 4578) = -1;
    *(a1 + 4582) = -1;
    *(a1 + 4586) = -1;
    *(a1 + 4590) = -1;
    *(a1 + 4594) = -1;
    *(a1 + 4598) = -1;
    *(a1 + 4602) = *(a1 + 4350);
    *(a1 + 4606) = -1;
    *(a1 + 4610) = *(a1 + 4354);
    *(a1 + 4614) = -1;
    *(a1 + 4374) = *(a1 + 4282);
    *(a1 + 4378) = *(a1 + 4286);
    *(a1 + 4382) = *(a1 + 4290);
    *(a1 + 4386) = *(a1 + 4294);
    *(a1 + 4390) = *(a1 + 4298);
    *(a1 + 4394) = 0;
    *(a1 + 4362) = -1;
    *(a1 + 4402) = 0;
    *(a1 + 4398) = 0;
    *(a1 + 4406) = 0;
    *(a1 + 4410) = 200;
    *(a1 + 4414) = 200;
    *(a1 + 4418) = 0;
    *(a1 + 4422) = 0;
    *(a1 + 4426) = 0;
    *(a1 + 4430) = 0;
    *(a1 + 4434) = 0;
    *(a1 + 4438) = 0;
    *(a1 + 4534) = 0;
    *(a1 + 4538) = 0;
    *(a1 + 4542) = 0;
    *(a1 + 4546) = 0;
    *(a1 + 4550) = 0;
    *(a1 + 4554) = 0;
    *(a1 + 4466) = 0;
    *(a1 + 4470) = 0;
    *(a1 + 4506) = 0;
    *(a1 + 4502) = 0;
    *(a1 + 4482) = 0;
    *(a1 + 4486) = 0;
    *(a1 + 4490) = 0;
    *(a1 + 4494) = 0;
    *(a1 + 4498) = 0;
    *(a1 + 4474) = -1;
    *(a1 + 4478) = -1;
    *(a1 + 4462) = -1;
    *(a1 + 4450) = -1;
  }

  vretproc(a1);
  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t final_voiced_release(uint64_t a1, __int16 *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  HIDWORD(v23) = 0;
  v24 = 0;
  OUTLINED_FUNCTION_11_6();
  bzero(v22, v4);
  OUTLINED_FUNCTION_10_6();
  bzero(v34, v5);
  v6 = setjmp(v34);
  if (v6 || OUTLINED_FUNCTION_26_4(v6, v22, v7, v8, v9, v10, v11, v12, v21, v22[0], v22[1], v22[2], v22[3], v22[4], v22[5], v22[6], v22[7], v22[8], v22[9], v22[10], v22[11], v22[12], v22[13], v22[14], v22[15], v22[16], v22[17], v22[18], v22[19], v22[20], v22[21], v22[22], v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34[0]))
  {
    vretproc(a1);
    result = 94;
  }

  else
  {
    get_parm(a1, &v24, a2, -4);
    v15 = OUTLINED_FUNCTION_20_4();
    get_parm(v15, v16, v17, -4);
    fence_7(a1);
    v18 = *(a1 + 2152);
    v19 = (*(a1 + 2168) - v18);
    v20 = 30.0;
    if (v19 <= 30)
    {
      v20 = (5 * v19) / 10.0;
    }

    *(a1 + 2216) = v18 + v20;
    *(a1 + 4470) = HIWORD(v24);
    *(a1 + 4466) = HIWORD(v23);
    vretproc(a1);
    result = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

void do_FTZ_FTP()
{
  OUTLINED_FUNCTION_32_0();
  v1 = v0;
  v65 = *MEMORY[0x277D85DE8];
  v51 = 0;
  v52 = 0;
  v49 = 0;
  v50 = 0;
  v48 = 0;
  OUTLINED_FUNCTION_11_6();
  bzero(v47, v2);
  OUTLINED_FUNCTION_10_6();
  bzero(v64, v3);
  v4 = setjmp(v64);
  if (v4 || OUTLINED_FUNCTION_23_4(v4, v47, v5, v6, v7, v8, v9, v10, v47[0], v47[1], v47[2], v47[3], v47[4], v47[5], v47[6], v47[7], v47[8], v47[9], v47[10], v47[11], v47[12], v47[13], v47[14], v47[15], v47[16], v47[17], v47[18], v47[19], v47[20], v47[21], v47[22], v48, v49, v50, v51, v52, *&v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64[0]))
  {
    goto LABEL_3;
  }

  LOWORD(v52) = -5;
  v12 = OUTLINED_FUNCTION_7_6();
  push_ptr_init(v12, v13);
  push_ptr_init(v1, &v48);
  fence_7(v1);
  v53 = 0.0;
  OUTLINED_FUNCTION_16_5();
  doFNP();
  v14 = 0;
  while (2)
  {
    v15 = OUTLINED_FUNCTION_9_6();
    starttest(v15, v16);
    v17 = OUTLINED_FUNCTION_30_1();
    bspush_ca(v17);
    v18 = OUTLINED_FUNCTION_0_7();
    if (lpta_loadp_setscan_r(v18, v19) || (v20 = OUTLINED_FUNCTION_1_7(), testFldeq(v20, v21, v22, 4)) || (v23 = OUTLINED_FUNCTION_3_7(), testFldeq(v23, v24, v25, 1)))
    {
      v26 = v14;
      goto LABEL_10;
    }

LABEL_9:
    v27 = advance_tok(v1);
    v26 = v14;
    if (v27)
    {
LABEL_10:
      v28 = *(v1 + 104);
      if (v28)
      {
        *(v1 + 104) = 0;
        v29 = v28;
        v14 = v26;
      }

      else
      {
        v29 = vback(v1, v26);
        v14 = 0;
      }

      switch(v29)
      {
        case 1:
          continue;
        case 2:
          OUTLINED_FUNCTION_16_5();
          goto LABEL_26;
        case 3:
          v26 = v14;
          if (*(v1 + 5122) != *(v1 + 5090))
          {
            goto LABEL_10;
          }

          v30 = OUTLINED_FUNCTION_0_7();
          v32 = lpta_loadp_setscan_l(v30, v31);
          v26 = v14;
          if (v32)
          {
            goto LABEL_10;
          }

          goto LABEL_16;
        case 4:
          goto LABEL_24;
        case 5:
LABEL_16:
          savescptr(v1, 5, &v50);
          v33 = OUTLINED_FUNCTION_6_6();
          v35 = testFldeq(v33, v34, 7, 1);
          v26 = v14;
          if (!v35)
          {
            v36 = OUTLINED_FUNCTION_1_7();
            v39 = testFldeq(v36, v37, v38, 6);
            v26 = v14;
            if (!v39)
            {
              v40 = advance_tok(v1);
              v26 = v14;
              if (!v40)
              {
                v41 = OUTLINED_FUNCTION_7_6();
                v43 = lpta_loadp_setscan_r(v41, v42);
                v26 = v14;
                if (!v43)
                {
                  bspush_ca_scan_boa();
                  v44 = OUTLINED_FUNCTION_3_7();
                  if (testFldeq(v44, v45, v46, 2))
                  {
                    v26 = v14;
                  }

                  else
                  {
                    v26 = 1;
                  }
                }
              }
            }
          }

          goto LABEL_10;
        case 6:
          bspop_boa(v1);
          goto LABEL_9;
        default:
          goto LABEL_3;
      }
    }

    break;
  }

LABEL_24:
  v53 = *(v1 + 2136) + *(v1 + 3400) * 5.0 / 10.0;
  OUTLINED_FUNCTION_12_6();
LABEL_26:
  doFNZ();
LABEL_3:
  vretproc(v1);
  v11 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_33_0();
}

uint64_t do_non_son_amps(uint64_t a1)
{
  v170 = *MEMORY[0x277D85DE8];
  v164 = 0;
  v165 = 0.0;
  v163 = 0;
  v161 = 0u;
  v162 = 0u;
  v159 = 0;
  v160 = 0;
  v158 = 0;
  OUTLINED_FUNCTION_11_6();
  bzero(&v134, v2);
  OUTLINED_FUNCTION_10_6();
  bzero(v169, v3);
  if (setjmp(v169) || ventproc(a1, &v134, v168, v167, v166, v169))
  {
LABEL_3:
    vretproc(a1);
    result = 94;
  }

  else
  {
    v165 = 0.0;
    LOWORD(v164) = -5;
    v163 = 65532;
    *&v162 = 0;
    *(&v162 + 6) = 0;
    LODWORD(v161) = -65532;
    push_ptr_init(a1, &v159);
    v158 = 65532;
    fence_7(a1);
    HIWORD(v163) = 0;
    v165 = *(a1 + 2152);
    v160 = *(a1 + 1600);
    if (*(a1 + 4506))
    {
      v6 = OUTLINED_FUNCTION_4_6();
      starttest(v6, v7);
      v8 = OUTLINED_FUNCTION_0_7();
      if (lpta_loadp_setscan_r(v8, v9))
      {
        v10 = 0;
LABEL_8:
        *(a1 + 4506) = 0;
      }

      else
      {
        v91 = OUTLINED_FUNCTION_6_6();
        if (npush_fld(v91, v92, 11))
        {
          goto LABEL_37;
        }

        v10 = 0;
        npush_i(a1);
        if (if_testneq(a1, v93, v94, v95, v96, v97, v98, v99))
        {
          goto LABEL_42;
        }

        if (advance_tok(a1) || savetok(a1, &v161))
        {
LABEL_37:
          v10 = 0;
          goto LABEL_42;
        }

        WORD1(v161) = 11;
        copyvar(a1, &v163, &v161);
        v10 = 0;
        v165 = *(a1 + 2136) + *(a1 + 3400) - SHIWORD(v163);
      }
    }

    else
    {
      v10 = 0;
    }

LABEL_10:
    v11 = OUTLINED_FUNCTION_4_6();
    starttest(v11, v12);
    OUTLINED_FUNCTION_34_0(v13, v14, v15, v16, v17, v18, v19, v20, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158);
    OUTLINED_FUNCTION_31_1();
    if (*(a1 + 4478) == -1)
    {
      goto LABEL_42;
    }

    OUTLINED_FUNCTION_5_6();
    do_fric_amps(a1, v22, v23, v24, v25, v26, v27, a1 + v21, a1 + 2112, a1 + 2128, a1 + 4664, a1 + 1576, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145);
LABEL_12:
    if (*(a1 + 4522) != 1)
    {
      OUTLINED_FUNCTION_5_6();
      do_fric_amps(a1, v29, v30, v31, v32, v33, v34, a1 + v28, a1 + 2128, &v164, a1 + 1576, &v159, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145);
    }

LABEL_14:
    if (!*(a1 + 4514))
    {
      if (*(a1 + 2232) == 0.0)
      {
LABEL_16:
        doAV();
      }

      else
      {
        do_pt_voicing(a1);
      }
    }

LABEL_18:
    if (!*(a1 + 4518))
    {
      OUTLINED_FUNCTION_14_5();
      addStreamArraySsVal(a1, v35, v36, v37, v38);
    }

LABEL_20:
    if (!*(a1 + 4530))
    {
      OUTLINED_FUNCTION_14_5();
      addStreamArraySsVal(a1, v39, v40, v41, v42);
    }

LABEL_22:
    v43 = OUTLINED_FUNCTION_4_6();
    starttest(v43, v44);
    OUTLINED_FUNCTION_34_0(v45, v46, v47, v48, v49, v50, v51, v52, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158);
    OUTLINED_FUNCTION_31_1();
    if (*(a1 + 4450) != -1)
    {
      goto LABEL_42;
    }

LABEL_23:
    OUTLINED_FUNCTION_14_5();
    addStreamArraySsVal(a1, v53, v54, v55, v56);
LABEL_24:
    v57 = OUTLINED_FUNCTION_4_6();
    starttest(v57, v58);
    OUTLINED_FUNCTION_34_0(v59, v60, v61, v62, v63, v64, v65, v66, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158);
    OUTLINED_FUNCTION_31_1();
    if (*(a1 + 4462) != -1)
    {
      goto LABEL_42;
    }

    *(a1 + 4722) = 7;
LABEL_26:
    OUTLINED_FUNCTION_14_5();
    addStreamArraySsVal(a1, v67, v68, v69, v70);
LABEL_27:
    if (!*(a1 + 4506))
    {
      goto LABEL_49;
    }

    v71 = OUTLINED_FUNCTION_4_6();
    starttest(v71, v72);
    if (SHIWORD(v163) >= 16)
    {
      v73 = OUTLINED_FUNCTION_0_7();
      if (!lpta_loadp_setscan_r(v73, v74))
      {
        OUTLINED_FUNCTION_4_6();
        bspush_ca_scan_boa();
        v89 = OUTLINED_FUNCTION_6_6();
        if (!testFldeq(v89, v90, 9, 1))
        {
          v10 = 1;
        }

        goto LABEL_42;
      }
    }

LABEL_30:
    v75 = v10;
    if (*(a1 + 4522) != 1)
    {
LABEL_31:
      OUTLINED_FUNCTION_5_6();
      do_fric_amps(a1, v76, v77, v78, v79, v80, v81, a1 + 4504, &v164, a1 + 2144, a1 + 1352, a1 + 1592, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145);
LABEL_32:
      v82 = OUTLINED_FUNCTION_4_6();
      starttest(v82, v83);
      v84 = OUTLINED_FUNCTION_9_6();
      move_i(v84, v85, v86);
      OUTLINED_FUNCTION_9_6();
      v87 = doAV();
      v88 = v10;
      if (v87)
      {
        goto LABEL_42;
      }

LABEL_55:
      v116 = v88;
      v117 = OUTLINED_FUNCTION_4_6();
      starttest(v117, v118);
      v119 = OUTLINED_FUNCTION_9_6();
      move_i(v119, v120, v121);
      v122 = addStreamArraySsVal(a1, a1 + 2008, &v158, &v164, (a1 + 2144));
      v10 = v116;
      v115 = v116;
      if (v122)
      {
        goto LABEL_42;
      }

LABEL_56:
      v123 = v115;
      v124 = OUTLINED_FUNCTION_4_6();
      starttest(v124, v125);
      v126 = OUTLINED_FUNCTION_9_6();
      move_i(v126, v127, v128);
      v129 = addStreamArraySsVal(a1, a1 + 1988, &v158, &v164, (a1 + 2144));
      v10 = v123;
      v75 = v123;
      if (v129)
      {
        goto LABEL_42;
      }
    }

    while (1)
    {
      v10 = v75;
      v105 = OUTLINED_FUNCTION_4_6();
      starttest(v105, v106);
      OUTLINED_FUNCTION_34_0(v107, v108, v109, v110, v111, v112, v113, v114, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158);
      OUTLINED_FUNCTION_31_1();
      if (*(a1 + 4474) != -1)
      {
        break;
      }

LABEL_42:
      v100 = v10;
      while (2)
      {
        v101 = *(a1 + 104);
        if (v101)
        {
          v102 = OUTLINED_FUNCTION_21_4(v101);
          v10 = v103;
        }

        else
        {
          v102 = vback(a1, v100);
          v10 = 0;
        }

        switch(v102)
        {
          case 1:
            goto LABEL_10;
          case 2:
            goto LABEL_8;
          case 3:
            goto LABEL_12;
          case 4:
            goto LABEL_14;
          case 5:
          case 7:
            goto LABEL_18;
          case 6:
            goto LABEL_16;
          case 8:
            goto LABEL_20;
          case 9:
            goto LABEL_22;
          case 10:
            goto LABEL_23;
          case 11:
          case 12:
            goto LABEL_24;
          case 13:
            goto LABEL_26;
          case 14:
          case 15:
            goto LABEL_27;
          case 16:
          case 19:
            break;
          case 17:
            goto LABEL_30;
          case 18:
            bspop_boa(a1);
            v104 = advance_tok(a1);
            v100 = v10;
            if (v104)
            {
              continue;
            }

            modulate_burst(a1, &v164);
            break;
          case 20:
            goto LABEL_31;
          case 21:
            goto LABEL_32;
          case 22:
            v88 = v10;
            goto LABEL_55;
          case 23:
            v115 = v10;
            goto LABEL_56;
          case 24:
            goto LABEL_52;
          default:
            goto LABEL_3;
        }

        break;
      }

LABEL_49:
      v75 = v10;
    }

    do_fric_amps(a1, a1 + 4480, a1 + 4484, a1 + 4488, a1 + 4492, a1 + 4496, a1 + 4500, a1 + 4472, a1 + 2144, a1 + 2144, a1 + 1592, a1 + 1624, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145);
LABEL_52:
    vretproc(a1);
    result = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t do_pt_voicing(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v27 = 0;
  v28 = 0;
  v25 = 0;
  v26 = 0;
  HIDWORD(v24) = 0;
  OUTLINED_FUNCTION_11_6();
  bzero(v23, v2);
  OUTLINED_FUNCTION_10_6();
  bzero(v39, v3);
  v4 = setjmp(v39);
  if (v4 || OUTLINED_FUNCTION_23_4(v4, v23, v5, v6, v7, v8, v9, v10, v22, v23[0], v23[1], v23[2], v23[3], v23[4], v23[5], v23[6], v23[7], v23[8], v23[9], v23[10], v23[11], v23[12], v23[13], v23[14], v23[15], v23[16], v23[17], v23[18], v23[19], v23[20], v23[21], v23[22], v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39[0]))
  {
LABEL_3:
    vretproc(a1);
    result = 94;
  }

  else
  {
    LOWORD(v27) = -5;
    v13 = OUTLINED_FUNCTION_7_6();
    push_ptr_init(v13, v14);
    HIDWORD(v24) = 65532;
    fence_7(a1);
    doAV();
    while (1)
    {
      v28 = *(a1 + 2232);
      *(a1 + 2232) = 0;
      if (*(a1 + 4370) != 1)
      {
        break;
      }

      v15 = OUTLINED_FUNCTION_19_4();
      starttest_e(v15, v16);
      v17 = OUTLINED_FUNCTION_9_6();
      move_i(v17, v18, v19);
      OUTLINED_FUNCTION_9_6();
      if (!doAV())
      {
        break;
      }

      v20 = *(a1 + 104);
      if (v20)
      {
        *(a1 + 104) = 0;
        v21 = v20;
      }

      else
      {
        v21 = vback(a1, 0);
      }

      if (v21 != 1)
      {
        if (v21 != 2)
        {
          goto LABEL_3;
        }

        break;
      }
    }

    vretproc(a1);
    result = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t do_release(uint64_t a1)
{
  v88 = *MEMORY[0x277D85DE8];
  v82 = 0;
  v83 = 0;
  v81[0] = 0;
  v81[1] = 0;
  OUTLINED_FUNCTION_11_6();
  bzero(v80, v2);
  OUTLINED_FUNCTION_10_6();
  bzero(v87, v3);
  if (!setjmp(v87) && !ventproc(a1, v80, v86, v85, v84, v87))
  {
    v82 = 65532;
    v83 = 65532;
    push_ptr_init(a1, v81);
    fence_7(a1);
    starttest(a1, 1);
    if (OUTLINED_FUNCTION_24_4() || (*(a1 + 136) = 1, v6 = *(a1 + 824), OUTLINED_FUNCTION_18_4(), test_ptr(a1)) || (OUTLINED_FUNCTION_29_2(), v7 = *(a1 + 1248), OUTLINED_FUNCTION_18_4(), test_ptr(a1)) || advanc(a1))
    {
LABEL_9:
      if (*(a1 + 4466))
      {
        if (!OUTLINED_FUNCTION_24_4() && !advanc(a1))
        {
LABEL_12:
          savescptr(a1, 17, a1 + 1624);
        }

LABEL_13:
        if (*(a1 + 2216) == 0.0)
        {
          doAV();
        }

LABEL_15:
        OUTLINED_FUNCTION_15_5();
        v8 = OUTLINED_FUNCTION_17_5();
        addStreamArraySsVal(v8, v9, v10, v11, v12);
      }

LABEL_16:
      v13 = *(a1 + 2216);
      if (v13 == 0.0)
      {
        goto LABEL_43;
      }

      v14 = (v13 - *(a1 + 2152));
      HIWORD(v82) = v14;
      if (v14 < 1)
      {
        goto LABEL_43;
      }

      OUTLINED_FUNCTION_29_2();
      v15 = *(a1 + 1600);
      OUTLINED_FUNCTION_18_4();
      v16 = OUTLINED_FUNCTION_8_6();
      lpta_loadv(v16, v17, v18);
      v19 = OUTLINED_FUNCTION_8_6();
      if (insert_2pt_i(v19, v20, v21, v22, 205))
      {
        goto LABEL_43;
      }

      v23 = OUTLINED_FUNCTION_7_6();
      rpta_storep(v23, v24);
      doAV();
LABEL_20:
      addStreamArraySsVal(a1, a1 + 1988, (a1 + 4560), a1 + 2144, (a1 + 2208));
LABEL_21:
      v25 = OUTLINED_FUNCTION_4_6();
      starttest(v25, v26);
      v27 = OUTLINED_FUNCTION_7_6();
      move_i(v27, v28, v29);
      OUTLINED_FUNCTION_7_6();
      if (doAV())
      {
        goto LABEL_28;
      }

LABEL_22:
      v30 = OUTLINED_FUNCTION_4_6();
      starttest(v30, v31);
      v32 = OUTLINED_FUNCTION_7_6();
      move_i(v32, v33, v34);
    }

    else
    {
LABEL_23:
      savescptr(a1, 2, a1 + 1624);
      OUTLINED_FUNCTION_3_7();
      if (test_string_s() || (v35 = OUTLINED_FUNCTION_4_6(), starttest(v35, v36), v37 = OUTLINED_FUNCTION_4_6(), bspush_ca(v37), *(a1 + 4722) = 6, v38 = OUTLINED_FUNCTION_13_6(), if_testeq_v_i(v38, v39, v40, v41, v42, v43, v44, v45)))
      {
        do
        {
LABEL_28:
          while (2)
          {
            v55 = *(a1 + 104);
            if (v55)
            {
              v56 = OUTLINED_FUNCTION_21_4(v55);
            }

            else
            {
              v56 = vback(a1, 0);
            }

            switch(v56)
            {
              case 1:
                goto LABEL_9;
              case 2:
                goto LABEL_23;
              case 3:
                *(a1 + 4722) = 4;
                if (if_testeq_v_i(a1, (a1 + 4720), 1, v57, v58, v59, v60, v61) || *(a1 + 4518) != 1)
                {
                  goto LABEL_36;
                }

                if (*(a1 + 4466))
                {
                  goto LABEL_43;
                }

                v62 = OUTLINED_FUNCTION_7_6();
                starttest(v62, v63);
                v64 = OUTLINED_FUNCTION_19_4();
                c_assvar(v64, v65);
                v66 = *(a1 + 4398);
                break;
              case 4:
                if (*(a1 + 4702) == 1)
                {
                  goto LABEL_25;
                }

                continue;
              case 5:
                goto LABEL_25;
              case 6:
              case 12:
                goto LABEL_42;
              case 7:
              case 8:
              case 9:
              case 11:
              case 13:
              case 14:
                goto LABEL_43;
              case 10:
LABEL_36:
                if (*(a1 + 4466))
                {
                  goto LABEL_42;
                }

                v67 = OUTLINED_FUNCTION_9_6();
                starttest(v67, v68);
                v69 = OUTLINED_FUNCTION_19_4();
                c_assvar(v69, v70);
                v66 = *(a1 + 4558);
                break;
              case 15:
                goto LABEL_16;
              case 16:
                goto LABEL_13;
              case 17:
                goto LABEL_12;
              case 18:
                goto LABEL_15;
              case 19:
                goto LABEL_20;
              case 20:
                goto LABEL_21;
              case 21:
                goto LABEL_22;
              default:
                goto LABEL_3;
            }

            break;
          }

          HIWORD(v83) = (v66 / 10.0 + 30.0);
          v71 = OUTLINED_FUNCTION_17_5();
        }

        while (addStreamArraySsVal(v71, v72, &v83, v73, v74));
        goto LABEL_43;
      }

LABEL_25:
      if (*(a1 + 4466))
      {
LABEL_42:
        OUTLINED_FUNCTION_15_5();
        v75 = OUTLINED_FUNCTION_17_5();
        addStreamArraySsVal(v75, v76, v77, v78, v79);
        goto LABEL_43;
      }

      v46 = OUTLINED_FUNCTION_4_6();
      starttest(v46, v47);
      v48 = OUTLINED_FUNCTION_7_6();
      move_i(v48, v49, 35);
    }

    v50 = OUTLINED_FUNCTION_20_4();
    if (addStreamArraySsVal(v50, v51, v52, v53, v54))
    {
      goto LABEL_28;
    }

LABEL_43:
    vretproc(a1);
    result = 0;
    goto LABEL_4;
  }

LABEL_3:
  vretproc(a1);
  result = 94;
LABEL_4:
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void do_voice_bar()
{
  OUTLINED_FUNCTION_32_0();
  v1 = v0;
  v56 = *MEMORY[0x277D85DE8];
  v51[0] = 0;
  v51[1] = 0;
  OUTLINED_FUNCTION_11_6();
  bzero(v50, v2);
  OUTLINED_FUNCTION_10_6();
  bzero(v55, v3);
  if (!setjmp(v55) && !ventproc(v1, v50, v54, v53, v52, v55))
  {
    push_ptr_init(v1, v51);
    fence_7(v1);
    v5 = OUTLINED_FUNCTION_4_6();
    starttest(v5, v6);
    v7 = OUTLINED_FUNCTION_0_7();
    if (!lpta_loadp_setscan_l(v7, v8))
    {
      bspush_ca_scan_boa();
      v9 = OUTLINED_FUNCTION_4_6();
      bspush_ca_scan(v9, v10);
      v11 = OUTLINED_FUNCTION_1_7();
      if (testFldeq(v11, v12, v13, 2) || advance_tok(v1))
      {
        v14 = 0;
      }

      else
      {
LABEL_33:
        v14 = 1;
      }

      v15 = v14;
      while (2)
      {
        v16 = *(v1 + 104);
        if (v16)
        {
          v17 = OUTLINED_FUNCTION_21_4(v16);
          v19 = v18;
        }

        else
        {
          v17 = vback(v1, v15);
          v19 = 0;
        }

        v20 = 35;
        switch(v17)
        {
          case 2:
            bspop_boa(v1);
            OUTLINED_FUNCTION_7_6();
            bspush_ca_boa();
            v21 = OUTLINED_FUNCTION_24_4();
            v15 = v19;
            if (v21)
            {
              continue;
            }

            v22 = OUTLINED_FUNCTION_1_7();
            v25 = testFldeq(v22, v23, v24, 2);
            v15 = v19;
            if (v25)
            {
              continue;
            }

            v26 = advance_tok(v1);
            goto LABEL_20;
          case 3:
            OUTLINED_FUNCTION_19_4();
            bspush_ca_scan_boa();
            v32 = OUTLINED_FUNCTION_6_6();
            v26 = testFldeq(v32, v33, 2, v34);
            goto LABEL_20;
          case 4:
            goto LABEL_33;
          case 5:
            bspop_boa(v1);
            v27 = OUTLINED_FUNCTION_1_7();
            v30 = testFldeq(v27, v28, v29, 1);
            v15 = v19;
            if (!v30)
            {
              v31 = advance_tok(v1);
              v15 = v19;
              if (!v31)
              {
                goto LABEL_33;
              }
            }

            continue;
          case 6:
            bspop_boa(v1);
            OUTLINED_FUNCTION_9_6();
            bspush_ca_boa();
            v35 = OUTLINED_FUNCTION_0_7();
            v37 = lpta_loadp_setscan_l(v35, v36);
            v15 = v19;
            if (v37)
            {
              continue;
            }

            goto LABEL_26;
          case 7:
            bspop_boa(v1);
            *(v1 + 4406) = 35;
            starttest(v1, 9);
            bspush_ca(v1);
            v15 = v19;
            if (*(v1 + 4050) != 3)
            {
              continue;
            }

            v20 = 35;
            goto LABEL_35;
          case 8:
LABEL_26:
            v38 = OUTLINED_FUNCTION_30_1();
            savescptr(v38, v39, v51);
            OUTLINED_FUNCTION_3_7();
            v40 = test_string_s();
            v15 = v19;
            if (!v40)
            {
              v41 = lpta_loadp_setscan_r(v1, v51);
              v15 = v19;
              if (!v41)
              {
                OUTLINED_FUNCTION_3_7();
                v26 = test_string_s();
LABEL_20:
                if (v26)
                {
                  v15 = v19;
                }

                else
                {
                  v15 = 1;
                }
              }
            }

            continue;
          case 9:
            v20 = 20;
            goto LABEL_35;
          case 10:
            v42 = OUTLINED_FUNCTION_0_7();
            v44 = lpta_loadp_setscan_l(v42, v43);
            v15 = v19;
            if (v44)
            {
              continue;
            }

            v45 = OUTLINED_FUNCTION_1_7();
            v48 = testFldeq(v45, v46, v47, 4);
            v15 = v19;
            if (v48)
            {
              continue;
            }

            v49 = advance_tok(v1);
            v15 = v19;
            if (v49)
            {
              continue;
            }

            v20 = 35;
            goto LABEL_35;
          case 11:
LABEL_35:
            *(v1 + 4394) = v20;
            break;
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
  OUTLINED_FUNCTION_33_0();
}

uint64_t OUTLINED_FUNCTION_23_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, int a38, char a39, int a40, __int16 a41, char a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, char a48)
{

  return ventproc(v48, a2, &a46, &a42, &a39, &a48);
}

uint64_t OUTLINED_FUNCTION_24_4()
{

  return lpta_loadp_setscan_r(v0, v0 + 1592);
}

uint64_t OUTLINED_FUNCTION_25_4(void *a1, uint64_t a2, __int16 *a3)
{

  return addStreamArraySsVal(a1, a2, a3, v3, v4);
}

uint64_t OUTLINED_FUNCTION_26_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, char a35, int a36, __int16 a37, char a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, char a44)
{

  return ventproc(v44, a2, &a42, &a38, &a35, &a44);
}

uint64_t OUTLINED_FUNCTION_27_3()
{

  return lpta_rpta_loadp(v0, v0 + 832, v0 + 1576);
}

void OUTLINED_FUNCTION_34_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, __int16 a37)
{

  c_assvar(v37, &a37);
}

void *fence_8(uint64_t a1, int a2, uint64_t a3)
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

uint64_t generate_acoustic_vals(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v62 = *MEMORY[0x277D85DE8];
  v57[0] = 0;
  v57[1] = 0;
  v56[0] = 0;
  v56[1] = 0;
  OUTLINED_FUNCTION_9_7(a1, a2, a3, a4, a5, a6, a7, a8, v55[0]);
  bzero(v61, 0xC0uLL);
  if (setjmp(v61) || ventproc(a1, v55, v60, v59, v58, v61))
  {
LABEL_3:
    v9 = 94;
    goto LABEL_4;
  }

  push_ptr_init(a1, v57);
  push_ptr_init(a1, v56);
  fence_8(a1, 0, &_MergedGlobals_40);
  if (*(a1 + 942) != 1)
  {
    goto LABEL_12;
  }

  set_klattparms(a1);
  while (2)
  {
    set_word_default_acoustic_vals(a1);
LABEL_8:
    lpta_loadpn(a1, a1 + 768);
    rpta_loadpn(a1, a1 + 1224);
    if (compare_ptas(a1) || testeq(a1))
    {
      goto LABEL_12;
    }

    starttest(a1, 4);
    lpta_loadpn(a1, a1 + 1400);
    lpta_mover();
    OUTLINED_FUNCTION_15_6();
    lpta_ctxtl();
    v19 = OUTLINED_FUNCTION_3_8();
    lpta_storep(v19, v20);
    v21 = OUTLINED_FUNCTION_3_8();
    if (!text_index(v21, v22))
    {
LABEL_11:
      handle_pause(a1, (a1 + 1400), v13, v14, v15, v16, v17, v18);
LABEL_12:
      init_syll_acoustic_vars(a1, v12, v13, v14, v15, v16, v17, v18);
LABEL_13:
      insert_syll_level_vals(a1, v12, v13, v14, v15, v16, v17, v18);
LABEL_14:
      v23 = OUTLINED_FUNCTION_2_8();
      startloop(v23, v24);
      lpta_loadpn(a1, a1 + 768);
      OUTLINED_FUNCTION_7_7();
      lpta_mover();
      v25 = OUTLINED_FUNCTION_8_7();
      lpta_storep(v25, v26);
      lpta_loadpn(a1, a1 + 784);
      OUTLINED_FUNCTION_7_7();
      lpta_mover();
      v27 = OUTLINED_FUNCTION_3_8();
      lpta_storep(v27, v28);
      v29 = OUTLINED_FUNCTION_4_7();
      if (!forall_to_test(v29, v30, v31))
      {
LABEL_15:
        v32 = OUTLINED_FUNCTION_2_8();
        bspush_ca(v32);
        v33 = OUTLINED_FUNCTION_8_7();
        if (!lpta_loadp_setscan_r(v33, v34) && !advance_tok(a1))
        {
LABEL_17:
          v35 = OUTLINED_FUNCTION_16_6();
          savescptr(v35, v36, v37);
LABEL_18:
          set_phone_offset_vals(a1, v12, v13, v14, v15, v16, v17, v18);
LABEL_19:
          assign_acoustic_vals(a1, v12, v13, v14, v15, v16, v17, v18);
LABEL_20:
          v38 = OUTLINED_FUNCTION_2_8();
          starttest(v38, v39);
          v40 = OUTLINED_FUNCTION_8_7();
          lpta_loadpn(v40, v41);
          OUTLINED_FUNCTION_7_7();
          lpta_movel();
          v42 = OUTLINED_FUNCTION_3_8();
          lpta_storep(v42, v43);
          v44 = OUTLINED_FUNCTION_4_7();
          if (!synthesizeRange(v44, v45, v46, v47, v48, v49, v50))
          {
LABEL_21:
            if (!forto_adv_upto_r(a1, 7, 8, 13, 4, a1 + 1576))
            {
              v9 = 0;
              break;
            }
          }
        }
      }
    }

    v51 = *(a1 + 104);
    if (v51)
    {
      v52 = OUTLINED_FUNCTION_17_6(v51);
    }

    else
    {
      v53 = OUTLINED_FUNCTION_15_6();
      v52 = vback(v53, v54);
    }

    v9 = 0;
    switch(v52)
    {
      case 1:
        goto LABEL_12;
      case 2:
        continue;
      case 3:
        goto LABEL_8;
      case 4:
        goto LABEL_11;
      case 5:
        goto LABEL_13;
      case 6:
        goto LABEL_14;
      case 7:
        goto LABEL_4;
      case 8:
        goto LABEL_18;
      case 9:
        goto LABEL_21;
      case 10:
        goto LABEL_17;
      case 11:
        goto LABEL_19;
      case 12:
        goto LABEL_20;
      case 13:
        goto LABEL_15;
      default:
        goto LABEL_3;
    }
  }

LABEL_4:
  vretproc(a1);
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t handle_pause(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v106 = *MEMORY[0x277D85DE8];
  v101[0] = 0;
  v101[1] = 0;
  OUTLINED_FUNCTION_11_7(a1, a2, a3, a4, a5, a6, a7, a8, v69, v70[0], v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95[0], v95[1], v96[0], v96[1], v97, v98, v99, *&v100);
  bzero(v105, 0xC0uLL);
  if (!setjmp(v105) && !ventproc(a1, v70, v104, v103, v102, v105))
  {
    v10 = OUTLINED_FUNCTION_10_7();
    get_parm(v10, v11, a2, -6);
    v100 = 0.0;
    LOWORD(v99) = -5;
    v98 = 0;
    LOWORD(v97) = -5;
    push_ptr_init(a1, v96);
    push_ptr_init(a1, v95);
    v94 = 65532;
    fence_8(a1, 0, &_MergedGlobals_40);
    v100 = 0.0;
    v98 = 0;
    v12 = OUTLINED_FUNCTION_2_8();
    starttest(v12, v13);
    v14 = OUTLINED_FUNCTION_10_7();
    if (!lpta_loadp_setscan_r(v14, v15))
    {
      v18 = OUTLINED_FUNCTION_2_8();
      bspush_ca_scan(v18, v19);
      if (!advanc(a1))
      {
LABEL_7:
        savescptr(a1, 3, v101);
LABEL_8:
        OUTLINED_FUNCTION_7_7();
        if (!test_string_s())
        {
LABEL_9:
          fence_8(a1, 1, &unk_2806C467C);
          v20 = OUTLINED_FUNCTION_10_7();
          lpta_loadpn(v20, v21);
          lpta_ctxtr();
          lpta_storep(a1, v96);
          *(a1 + 3338) = 1;
          v22 = OUTLINED_FUNCTION_2_8();
          startloop(v22, v23);
          v24 = OUTLINED_FUNCTION_10_7();
          lpta_loadpn(v24, v25);
          OUTLINED_FUNCTION_7_7();
          lpta_mover();
          v26 = OUTLINED_FUNCTION_8_7();
          lpta_storep(v26, v27);
          lpta_loadpn(a1, v96);
          OUTLINED_FUNCTION_7_7();
          lpta_mover();
          lpta_storep(a1, v95);
LABEL_10:
          v28 = OUTLINED_FUNCTION_8_7();
          if (!forall_to_test(v28, v29, v30))
          {
LABEL_11:
            v31 = OUTLINED_FUNCTION_2_8();
            bspush_ca(v31);
            v32 = OUTLINED_FUNCTION_8_7();
            if (!lpta_loadp_setscan_r(v32, v33))
            {
LABEL_14:
              while (1)
              {
                OUTLINED_FUNCTION_7_7();
                if (test_string_s())
                {
                  break;
                }

                v34 = OUTLINED_FUNCTION_10_7();
                bspush_ca_scan(v34, v35);
              }
            }
          }
        }
      }

      while (2)
      {
        v36 = *(a1 + 104);
        if (v36)
        {
          v37 = OUTLINED_FUNCTION_17_6(v36);
        }

        else
        {
          v38 = OUTLINED_FUNCTION_15_6();
          v37 = vback(v38, v39);
        }

        switch(v37)
        {
          case 2:
            goto LABEL_8;
          case 3:
            goto LABEL_7;
          case 4:
            goto LABEL_9;
          case 5:
            goto LABEL_20;
          case 6:
            goto LABEL_22;
          case 7:
            v40 = OUTLINED_FUNCTION_3_8();
            if (forto_adv_upto_r(v40, v41, 6, 22, 4, v42))
            {
              continue;
            }

            goto LABEL_20;
          case 8:
            v43 = OUTLINED_FUNCTION_16_6();
            savescptr(v43, v44, v45);
LABEL_22:
            OUTLINED_FUNCTION_12_7();
            set_end_of_pause_trans();
            goto LABEL_23;
          case 9:
            goto LABEL_14;
          case 10:
LABEL_23:
            v46 = OUTLINED_FUNCTION_16_6();
            lpta_rpta_loadp(v46, v47, v48);
            v49 = OUTLINED_FUNCTION_14_6();
            dur_expr(v49, v50, v51);
            *(a1 + 2120) = *(a1 + 2152);
            v52 = *(a1 + 2168);
            *(a1 + 2136) = v52;
            *(a1 + 2152) = v52 + v100;
            v53 = OUTLINED_FUNCTION_12_7();
            lpta_rpta_loadp(v53, v54, v55);
            v56 = OUTLINED_FUNCTION_14_6();
            dur_expr(v56, v57, v58);
            *(a1 + 2168) = *(a1 + 2152) + SHIWORD(v94);
            if (*(a1 + 2446) != 1)
            {
              goto LABEL_26;
            }

            define_all_params_for_silence(a1, (a1 + 1576), (a1 + 1592), (a1 + 2128), (a1 + 2144), v59, v60, v61);
            goto LABEL_25;
          case 11:
LABEL_26:
            set_seg_default_acoustic_vals(a1);
            goto LABEL_27;
          case 12:
LABEL_25:
            set_klattparms(a1);
            goto LABEL_28;
          case 13:
          case 14:
            goto LABEL_28;
          case 15:
LABEL_27:
            insert_acoustic_vals(a1);
LABEL_28:
            v62 = OUTLINED_FUNCTION_18_5();
            lpta_loadpn(v62, v63);
            rpta_loadpn(a1, a1 + 1256);
            v64 = 0;
            if (!compare_ptas(a1) && !testneq(a1))
            {
              v64 = *(a1 + 4024);
            }

            goto LABEL_32;
          case 16:
            v64 = 0;
LABEL_32:
            v98 = v64;
            goto LABEL_33;
          case 17:
LABEL_33:
            synthesizeRange(a1, (a1 + 4008), (a1 + 1576), (a1 + 1624), (a1 + 2112), (a1 + 2144), &v97);
            goto LABEL_34;
          case 18:
LABEL_34:
            *(a1 + 4672) = *(a1 + 1600);
            v65 = OUTLINED_FUNCTION_18_5();
            text_index(v65, v66);
            goto LABEL_35;
          case 19:
LABEL_35:
            v67 = OUTLINED_FUNCTION_18_5();
            lpta_loadpn(v67, v68);
            rpta_loadpn(a1, v96);
            if (compare_ptas(a1) || testeq(a1))
            {
              goto LABEL_37;
            }

LABEL_20:
            *(a1 + 3338) = 0;
            vretproc(a1);
            result = 0;
            goto LABEL_5;
          case 20:
LABEL_37:
            forall_cont_from(a1);
            goto LABEL_10;
          case 21:
            goto LABEL_10;
          case 22:
            goto LABEL_11;
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
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t init_syll_acoustic_vars(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v86 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9_7(a1, a2, a3, a4, a5, a6, a7, a8, v29);
  OUTLINED_FUNCTION_6_7(v10, v11, v12, v13, v14, v15, v16, v17, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84);
  v18 = setjmp(v8);
  if (v18 || OUTLINED_FUNCTION_1_8(v18, v19, v20, v21, v22, v23, v24, v25, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, *v77, v77[4], *v79, *&v79[4], v79[6], v81, SWORD2(v81), SBYTE6(v81), SHIBYTE(v81), v83, v85))
  {
    v26 = 94;
  }

  else
  {
    v26 = 0;
    fence_8(a1, 0, &_MergedGlobals_40);
    *(a1 + 966) = *(a1 + 990);
  }

  vretproc(a1);
  v27 = *MEMORY[0x277D85DE8];
  return v26;
}

uint64_t insert_syll_level_vals(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v123 = *MEMORY[0x277D85DE8];
  LODWORD(v113) = 0;
  OUTLINED_FUNCTION_9_7(a1, a2, a3, a4, a5, a6, a7, a8, v66);
  OUTLINED_FUNCTION_6_7(v10, v11, v12, v13, v14, v15, v16, v17, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121);
  v18 = setjmp(v8);
  if (v18 || OUTLINED_FUNCTION_1_8(v18, v19, v20, v21, v22, v23, v24, v25, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, *v114, v114[4], *v116, *&v116[4], v116[6], v118, SWORD2(v118), SBYTE6(v118), SHIBYTE(v118), v120, v122))
  {
LABEL_3:
    v26 = 94;
  }

  else
  {
    fence_8(a1, 0, &_MergedGlobals_40);
    *(a1 + 4722) = 6;
    if (if_testeq_v_i(a1, (a1 + 4720), 100, v29, v30, v31, v32, v33) || (v34 = OUTLINED_FUNCTION_2_8(), starttest(v34, v35), v36 = OUTLINED_FUNCTION_3_8(), move_i(v36, v37, v38), v39 = OUTLINED_FUNCTION_4_7(), !addStreamArraySsVal(v39, v40, v41, v42, v43)))
    {
LABEL_7:
      addStreamArraySsVal(a1, a1 + 1996, (a1 + 3408), a1 + 2176, (a1 + 2192));
LABEL_8:
      v44 = OUTLINED_FUNCTION_2_8();
      starttest(v44, v45);
      v46 = OUTLINED_FUNCTION_3_8();
      move_i(v46, v47, 250);
      v48 = OUTLINED_FUNCTION_4_7();
      if (!addStreamArraySsVal(v48, v49, v50, v51, v52))
      {
LABEL_9:
        v53 = OUTLINED_FUNCTION_2_8();
        starttest(v53, v54);
        v55 = OUTLINED_FUNCTION_3_8();
        move_i(v55, v56, 250);
        v57 = OUTLINED_FUNCTION_4_7();
        if (!addStreamArraySsVal(v57, v58, v59, v60, v61))
        {
          v26 = 0;
          goto LABEL_4;
        }
      }
    }

    v62 = *(a1 + 104);
    if (v62)
    {
      v63 = OUTLINED_FUNCTION_17_6(v62);
    }

    else
    {
      v64 = OUTLINED_FUNCTION_15_6();
      v63 = vback(v64, v65);
    }

    v26 = 0;
    switch(v63)
    {
      case 1:
        goto LABEL_7;
      case 2:
        goto LABEL_8;
      case 3:
        goto LABEL_9;
      case 4:
        break;
      default:
        goto LABEL_3;
    }
  }

LABEL_4:
  vretproc(a1);
  v27 = *MEMORY[0x277D85DE8];
  return v26;
}

uint64_t set_phone_offset_vals(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v188 = *MEMORY[0x277D85DE8];
  LODWORD(v183) = 65532;
  OUTLINED_FUNCTION_9_7(a1, a2, a3, a4, a5, a6, a7, a8, v67);
  OUTLINED_FUNCTION_6_7(v10, v11, v12, v13, v14, v15, v16, v17, v68, v73, v78, v83, v88, v93, v98, v103, v108, v113, v118, v123, v128, v133, v138, v143, v148, v153, v158, v163, v168, v173, v178, v183, v184, v185, v186, v187);
  v18 = setjmp(v8);
  if (v18 || OUTLINED_FUNCTION_1_8(v18, v19, v20, v21, v22, v23, v24, v25, v69, v74, v79, v84, v89, v94, v99, v104, v109, v114, v119, v124, v129, v134, v139, v144, v149, v154, v159, v164, v169, v174, v179, v183, SBYTE4(v183), v184, SWORD2(v184), SBYTE6(v184), v185, SWORD2(v185), SBYTE6(v185), SHIBYTE(v185), v186, v187))
  {
    v26 = 94;
  }

  else
  {
    v26 = 0;
    fence_8(a1, 0, &_MergedGlobals_40);
    *(a1 + 2120) = *(a1 + 2152);
    lpta_rpta_loadp(a1, a1 + 4664, a1 + 1576);
    v29 = OUTLINED_FUNCTION_14_6();
    dur_expr(v29, v30, &v183);
    *(a1 + 2136) = OUTLINED_FUNCTION_13_7(*(a1 + 2152), v31, v32, v33, v34, v35, v36, v37, v38, v70, v75, v80, v85, v90, v95, v100, v105, v110, v115, v120, v125, v130, v135, v140, v145, v150, v155, v160, v165, v170, v175, v180, v183, SWORD1(v183));
    v39 = OUTLINED_FUNCTION_16_6();
    lpta_rpta_loadp(v39, v40, v41);
    v42 = OUTLINED_FUNCTION_14_6();
    dur_expr(v42, v43, &v183);
    *(a1 + 2152) = OUTLINED_FUNCTION_13_7(*(a1 + 2136), v44, v45, v46, v47, v48, v49, v50, v51, v71, v76, v81, v86, v91, v96, v101, v106, v111, v116, v121, v126, v131, v136, v141, v146, v151, v156, v161, v166, v171, v176, v181, v183, SWORD1(v183));
    lpta_loadpn(a1, a1 + 1592);
    OUTLINED_FUNCTION_7_7();
    lpta_mover();
    v52 = OUTLINED_FUNCTION_18_5();
    lpta_storep(v52, v53);
    v54 = OUTLINED_FUNCTION_12_7();
    lpta_rpta_loadp(v54, v55, v56);
    v57 = OUTLINED_FUNCTION_14_6();
    dur_expr(v57, v58, &v183);
    *(a1 + 2168) = OUTLINED_FUNCTION_13_7(*(a1 + 2152), v59, v60, v61, v62, v63, v64, v65, v66, v72, v77, v82, v87, v92, v97, v102, v107, v112, v117, v122, v127, v132, v137, v142, v147, v152, v157, v162, v167, v172, v177, v182, v183, SWORD1(v183));
  }

  vretproc(a1);
  v27 = *MEMORY[0x277D85DE8];
  return v26;
}

uint64_t assign_acoustic_vals(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v87 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9_7(a1, a2, a3, a4, a5, a6, a7, a8, v30);
  OUTLINED_FUNCTION_6_7(v10, v11, v12, v13, v14, v15, v16, v17, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85);
  v18 = setjmp(v8);
  if (v18 || OUTLINED_FUNCTION_1_8(v18, v19, v20, v21, v22, v23, v24, v25, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, *v78, v78[4], *v80, *&v80[4], v80[6], v82, SWORD2(v82), SBYTE6(v82), SHIBYTE(v82), v84, v86))
  {
    vretproc(a1);
    result = 94;
  }

  else
  {
    fence_8(a1, 0, &_MergedGlobals_40);
    if (*(a1 + 990) == *(a1 + 966))
    {
      v28 = OUTLINED_FUNCTION_8_7();
      lpta_loadpn(v28, v29);
      rpta_loadpn(a1, a1 + 800);
      if (!compare_ptas(a1) && !testeq(a1))
      {
        *(a1 + 966) = *(a1 + 994);
      }
    }

    set_seg_default_acoustic_vals(a1);
    if (*(a1 + 994) == *(a1 + 966))
    {
      nucleus_vals(a1);
    }

    else
    {
      con_vals(a1);
    }

    if (*(a1 + 994) == *(a1 + 966))
    {
      lpta_loadpn(a1, a1 + 1592);
      rpta_loadpn(a1, a1 + 816);
      if (!compare_ptas(a1) && !testeq(a1))
      {
        *(a1 + 966) = *(a1 + 998);
      }
    }

    *(a1 + 4672) = *(a1 + 1600);
    vretproc(a1);
    result = 0;
  }

  v27 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t define_all_params_for_silence(uint64_t a1, __int16 *a2, __int16 *a3, __int16 *a4, __int16 *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v314 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_11_7(a1, a2, a3, a4, a5, a6, a7, a8, v280, v281[0], v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306[0], v306[1], v307[0], v307[1], v308[0], v308[1], v309[0], v309[1]);
  bzero(v313, 0xC0uLL);
  if (setjmp(v313) || ventproc(a1, v281, v312, v311, v310, v313))
  {
LABEL_3:
    v13 = 94;
  }

  else
  {
    get_parm(a1, v309, a2, -6);
    get_parm(a1, v308, a3, -6);
    get_parm(a1, v307, a4, -5);
    v16 = OUTLINED_FUNCTION_10_7();
    get_parm(v16, v17, a5, -5);
    v305 = 65532;
    fence_8(a1, 0, &_MergedGlobals_40);
    *(a1 + 4722) = 3;
    *(a1 + 3634) = 3;
    copyvar(a1, (a1 + 4720), (a1 + 3632));
    v18 = OUTLINED_FUNCTION_2_8();
    starttest(v18, v19);
    v20 = OUTLINED_FUNCTION_0_8();
    move_i(v20, v21, 1000);
    v22 = OUTLINED_FUNCTION_4_7();
    if (!addStreamArraySsVal(v22, v23, v24, v307, v306))
    {
LABEL_6:
      v25 = OUTLINED_FUNCTION_2_8();
      starttest(v25, v26);
      v27 = OUTLINED_FUNCTION_0_8();
      move_i(v27, v28, 500);
      OUTLINED_FUNCTION_5_7();
      v29 = OUTLINED_FUNCTION_4_7();
      if (!addStreamArraySsVal(v29, v30, v31, v32, v33))
      {
LABEL_7:
        v34 = OUTLINED_FUNCTION_2_8();
        starttest(v34, v35);
        v36 = OUTLINED_FUNCTION_0_8();
        move_i(v36, v37, 1000);
        OUTLINED_FUNCTION_5_7();
        v38 = OUTLINED_FUNCTION_4_7();
        if (!addStreamArraySsVal(v38, v39, v40, v41, v42))
        {
LABEL_8:
          v43 = OUTLINED_FUNCTION_2_8();
          starttest(v43, v44);
          v45 = OUTLINED_FUNCTION_0_8();
          move_i(v45, v46, 1500);
          OUTLINED_FUNCTION_5_7();
          v47 = OUTLINED_FUNCTION_4_7();
          if (!addStreamArraySsVal(v47, v48, v49, v50, v51))
          {
LABEL_9:
            v52 = OUTLINED_FUNCTION_2_8();
            starttest(v52, v53);
            v54 = OUTLINED_FUNCTION_0_8();
            move_i(v54, v55, 4000);
            OUTLINED_FUNCTION_5_7();
            v56 = OUTLINED_FUNCTION_4_7();
            if (!addStreamArraySsVal(v56, v57, v58, v59, v60))
            {
LABEL_10:
              v61 = OUTLINED_FUNCTION_2_8();
              starttest(v61, v62);
              v63 = OUTLINED_FUNCTION_0_8();
              move_i(v63, v64, 4500);
              OUTLINED_FUNCTION_5_7();
              v65 = OUTLINED_FUNCTION_4_7();
              if (!addStreamArraySsVal(v65, v66, v67, v68, v69))
              {
LABEL_11:
                v70 = OUTLINED_FUNCTION_2_8();
                starttest(v70, v71);
                v72 = OUTLINED_FUNCTION_0_8();
                move_i(v72, v73, 100);
                OUTLINED_FUNCTION_5_7();
                v74 = OUTLINED_FUNCTION_4_7();
                if (!addStreamArraySsVal(v74, v75, v76, v77, v78))
                {
LABEL_12:
                  v79 = OUTLINED_FUNCTION_2_8();
                  starttest(v79, v80);
                  v81 = OUTLINED_FUNCTION_0_8();
                  move_i(v81, v82, 100);
                  OUTLINED_FUNCTION_5_7();
                  v83 = OUTLINED_FUNCTION_4_7();
                  if (!addStreamArraySsVal(v83, v84, v85, v86, v87))
                  {
LABEL_13:
                    v88 = OUTLINED_FUNCTION_2_8();
                    starttest(v88, v89);
                    v90 = OUTLINED_FUNCTION_0_8();
                    move_i(v90, v91, 100);
                    OUTLINED_FUNCTION_5_7();
                    v92 = OUTLINED_FUNCTION_4_7();
                    if (!addStreamArraySsVal(v92, v93, v94, v95, v96))
                    {
LABEL_14:
                      v97 = OUTLINED_FUNCTION_2_8();
                      starttest(v97, v98);
                      v99 = OUTLINED_FUNCTION_0_8();
                      move_i(v99, v100, 100);
                      OUTLINED_FUNCTION_5_7();
                      v101 = OUTLINED_FUNCTION_4_7();
                      if (!addStreamArraySsVal(v101, v102, v103, v104, v105))
                      {
LABEL_15:
                        v106 = OUTLINED_FUNCTION_2_8();
                        starttest(v106, v107);
                        v108 = OUTLINED_FUNCTION_0_8();
                        move_i(v108, v109, 100);
                        OUTLINED_FUNCTION_5_7();
                        v110 = OUTLINED_FUNCTION_4_7();
                        if (!addStreamArraySsVal(v110, v111, v112, v113, v114))
                        {
LABEL_16:
                          v115 = OUTLINED_FUNCTION_2_8();
                          starttest(v115, v116);
                          v117 = OUTLINED_FUNCTION_0_8();
                          move_i(v117, v118, 270);
                          OUTLINED_FUNCTION_5_7();
                          v119 = OUTLINED_FUNCTION_4_7();
                          if (!addStreamArraySsVal(v119, v120, v121, v122, v123))
                          {
LABEL_17:
                            v124 = OUTLINED_FUNCTION_2_8();
                            starttest(v124, v125);
                            v126 = OUTLINED_FUNCTION_0_8();
                            move_i(v126, v127, 270);
                            OUTLINED_FUNCTION_5_7();
                            v128 = OUTLINED_FUNCTION_4_7();
                            if (!addStreamArraySsVal(v128, v129, v130, v131, v132))
                            {
LABEL_18:
                              v133 = OUTLINED_FUNCTION_2_8();
                              starttest(v133, v134);
                              v135 = OUTLINED_FUNCTION_0_8();
                              move_i(v135, v136, 500);
                              OUTLINED_FUNCTION_5_7();
                              v137 = OUTLINED_FUNCTION_4_7();
                              if (!addStreamArraySsVal(v137, v138, v139, v140, v141))
                              {
LABEL_19:
                                v142 = OUTLINED_FUNCTION_2_8();
                                starttest(v142, v143);
                                v144 = OUTLINED_FUNCTION_0_8();
                                move_i(v144, v145, 500);
                                OUTLINED_FUNCTION_5_7();
                                v146 = OUTLINED_FUNCTION_4_7();
                                if (!addStreamArraySsVal(v146, v147, v148, v149, v150))
                                {
LABEL_20:
                                  v151 = OUTLINED_FUNCTION_2_8();
                                  starttest(v151, v152);
                                  v153 = OUTLINED_FUNCTION_0_8();
                                  move_i(v153, v154, v155);
                                  OUTLINED_FUNCTION_5_7();
                                  v156 = OUTLINED_FUNCTION_4_7();
                                  if (!addStreamArraySsVal(v156, v157, v158, v159, v160))
                                  {
LABEL_21:
                                    v161 = OUTLINED_FUNCTION_2_8();
                                    starttest(v161, v162);
                                    v163 = OUTLINED_FUNCTION_0_8();
                                    move_i(v163, v164, 50);
                                    OUTLINED_FUNCTION_5_7();
                                    v165 = OUTLINED_FUNCTION_4_7();
                                    if (!addStreamArraySsVal(v165, v166, v167, v168, v169))
                                    {
LABEL_22:
                                      v170 = OUTLINED_FUNCTION_2_8();
                                      starttest(v170, v171);
                                      v172 = OUTLINED_FUNCTION_0_8();
                                      move_i(v172, v173, v174);
                                      OUTLINED_FUNCTION_5_7();
                                      v175 = OUTLINED_FUNCTION_4_7();
                                      if (!addStreamArraySsVal(v175, v176, v177, v178, v179))
                                      {
LABEL_23:
                                        v180 = OUTLINED_FUNCTION_2_8();
                                        starttest(v180, v181);
                                        v182 = OUTLINED_FUNCTION_0_8();
                                        move_i(v182, v183, v184);
                                        OUTLINED_FUNCTION_5_7();
                                        v185 = OUTLINED_FUNCTION_4_7();
                                        if (!addStreamArraySsVal(v185, v186, v187, v188, v189))
                                        {
LABEL_24:
                                          v190 = OUTLINED_FUNCTION_2_8();
                                          starttest(v190, v191);
                                          v192 = OUTLINED_FUNCTION_0_8();
                                          move_i(v192, v193, v194);
                                          OUTLINED_FUNCTION_5_7();
                                          v195 = OUTLINED_FUNCTION_4_7();
                                          if (!addStreamArraySsVal(v195, v196, v197, v198, v199))
                                          {
LABEL_25:
                                            v200 = OUTLINED_FUNCTION_2_8();
                                            starttest(v200, v201);
                                            v202 = OUTLINED_FUNCTION_0_8();
                                            move_i(v202, v203, v204);
                                            OUTLINED_FUNCTION_5_7();
                                            v205 = OUTLINED_FUNCTION_4_7();
                                            if (!addStreamArraySsVal(v205, v206, v207, v208, v209))
                                            {
LABEL_26:
                                              v210 = OUTLINED_FUNCTION_2_8();
                                              starttest(v210, v211);
                                              v212 = OUTLINED_FUNCTION_0_8();
                                              move_i(v212, v213, v214);
                                              OUTLINED_FUNCTION_5_7();
                                              v215 = OUTLINED_FUNCTION_4_7();
                                              if (!addStreamArraySsVal(v215, v216, v217, v218, v219))
                                              {
LABEL_27:
                                                v220 = OUTLINED_FUNCTION_2_8();
                                                starttest(v220, v221);
                                                v222 = OUTLINED_FUNCTION_0_8();
                                                move_i(v222, v223, v224);
                                                OUTLINED_FUNCTION_5_7();
                                                v225 = OUTLINED_FUNCTION_4_7();
                                                if (!addStreamArraySsVal(v225, v226, v227, v228, v229))
                                                {
LABEL_28:
                                                  v230 = OUTLINED_FUNCTION_2_8();
                                                  starttest(v230, v231);
                                                  v232 = OUTLINED_FUNCTION_0_8();
                                                  move_i(v232, v233, v234);
                                                  OUTLINED_FUNCTION_5_7();
                                                  v235 = OUTLINED_FUNCTION_4_7();
                                                  if (!addStreamArraySsVal(v235, v236, v237, v238, v239))
                                                  {
LABEL_29:
                                                    v240 = OUTLINED_FUNCTION_2_8();
                                                    starttest(v240, v241);
                                                    v242 = OUTLINED_FUNCTION_0_8();
                                                    move_i(v242, v243, v244);
                                                    OUTLINED_FUNCTION_5_7();
                                                    v245 = OUTLINED_FUNCTION_4_7();
                                                    if (!addStreamArraySsVal(v245, v246, v247, v248, v249))
                                                    {
LABEL_30:
                                                      v250 = OUTLINED_FUNCTION_2_8();
                                                      starttest(v250, v251);
                                                      v252 = OUTLINED_FUNCTION_0_8();
                                                      move_i(v252, v253, v254);
                                                      OUTLINED_FUNCTION_5_7();
                                                      v255 = OUTLINED_FUNCTION_4_7();
                                                      if (!addStreamArraySsVal(v255, v256, v257, v258, v259))
                                                      {
LABEL_31:
                                                        v260 = OUTLINED_FUNCTION_2_8();
                                                        starttest(v260, v261);
                                                        v262 = OUTLINED_FUNCTION_0_8();
                                                        move_i(v262, v263, v264);
                                                        OUTLINED_FUNCTION_5_7();
                                                        v265 = OUTLINED_FUNCTION_4_7();
                                                        if (!addStreamArraySsVal(v265, v266, v267, v268, v269))
                                                        {
LABEL_32:
                                                          v270 = OUTLINED_FUNCTION_2_8();
                                                          starttest(v270, v271);
                                                          v13 = 0;
                                                          v272 = OUTLINED_FUNCTION_10_7();
                                                          move_i(v272, v273, 0);
                                                          OUTLINED_FUNCTION_5_7();
                                                          if (!addStreamArraySsVal(a1, a1 + 2036, &v305, v274, v275))
                                                          {
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

    v276 = *(a1 + 104);
    if (v276)
    {
      v277 = OUTLINED_FUNCTION_17_6(v276);
    }

    else
    {
      v278 = OUTLINED_FUNCTION_15_6();
      v277 = vback(v278, v279);
    }

    v13 = 0;
    switch(v277)
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
        break;
      default:
        goto LABEL_3;
    }
  }

LABEL_4:
  vretproc(a1);
  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t OUTLINED_FUNCTION_1_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, char a33, int a34, __int16 a35, char a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, char a42)
{

  return ventproc(v42, &a9, &a40, &a36, &a33, &a42);
}

void OUTLINED_FUNCTION_6_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{

  bzero(&a36, 0xC0uLL);
}

void OUTLINED_FUNCTION_9_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  bzero(&a9, 0xB8uLL);
}

void OUTLINED_FUNCTION_11_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, int a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  a41 = 0;
  a42 = 0;
  a39 = 0;
  a40 = 0;
  a37 = 0;
  a38 = 0;
  a35 = 0;
  a36 = 0;
  a34 = 0;

  bzero(&a10, 0xB8uLL);
}

uint64_t print_F_trans(uint64_t a1, __int16 *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v16 = 0;
  bzero(v15, 0xB8uLL);
  bzero(v26, 0xC0uLL);
  v4 = setjmp(v26);
  if (v4 || OUTLINED_FUNCTION_0_9(v4, v5, v6, v7, v8, v9, v10, v11, v15[0], v15[1], v15[2], v15[3], v15[4], v15[5], v15[6], v15[7], v15[8], v15[9], v15[10], v15[11], v15[12], v15[13], v15[14], v15[15], v15[16], v15[17], v15[18], v15[19], v15[20], v15[21], v15[22], v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26[0]))
  {
    v12 = 94;
  }

  else
  {
    get_parm(a1, &v16, a2, -4);
    fence_9(a1);
    v12 = 0;
  }

  vretproc(a1);
  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t callInternalSynthesizer(uint64_t a1, __int16 *a2, __int16 *a3, __int16 *a4, __int16 *a5, __int16 *a6, __int16 *a7)
{
  v33 = *MEMORY[0x277D85DE8];
  v28 = 0;
  v27[1] = 0;
  v26[1] = 0;
  v27[0] = 0;
  v25 = 0.0;
  v26[0] = 0;
  v23 = 0.0;
  v24 = 0;
  v21[1] = 0;
  v22 = 0;
  v20 = 0;
  v21[0] = 0;
  v18 = 0;
  v19 = 0;
  bzero(v17, 0xB8uLL);
  bzero(v32, 0xC0uLL);
  if (setjmp(v32) || ventproc(a1, v17, v31, v30, v29, v32))
  {
    v14 = 94;
  }

  else
  {
    get_parm(a1, &v28, a2, -4);
    get_parm(a1, v27, a3, -6);
    get_parm(a1, v26, a4, -6);
    get_parm(a1, &v24, a5, -5);
    get_parm(a1, &v22, a6, -5);
    get_parm(a1, v21, a7, -5);
    v20 = 0xFFFC0000FFFCLL;
    v19 = 0xFFFC0000FFFCLL;
    v18 = 0xFFFC0000FFFCLL;
    fence_9(a1);
    if (v23 != v25)
    {
      starttest(a1, 2);
      bspush_ca_boa();
      move_i(a1, &v20 + 4, 12);
      move_i(a1, &v20, 35);
      move_i(a1, &v19 + 4, 47);
      move_i(a1, &v19, 48);
      move_i(a1, &v18 + 4, 49);
      move_i(a1, &v18, 0);
      callSynthesizeArray();
    }

    v14 = 0;
  }

  vretproc(a1);
  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t print_streamarrays_from_delta(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  bzero(v13, 0xB8uLL);
  bzero(v24, 0xC0uLL);
  v2 = setjmp(v24);
  if (v2 || OUTLINED_FUNCTION_0_9(v2, v3, v4, v5, v6, v7, v8, v9, v13[0], v13[1], v13[2], v13[3], v13[4], v13[5], v13[6], v13[7], v13[8], v13[9], v13[10], v13[11], v13[12], v13[13], v13[14], v13[15], v13[16], v13[17], v13[18], v13[19], v13[20], v13[21], v13[22], v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24[0]))
  {
    v10 = 94;
  }

  else
  {
    fence_9(a1);
    v10 = 0;
  }

  vretproc(a1);
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t OUTLINED_FUNCTION_0_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, char a33, int a34, __int16 a35, char a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, char a42)
{

  return ventproc(v42, &a9, &a40, &a36, &a33, &a42);
}

void process_annotation()
{
  OUTLINED_FUNCTION_70();
  v1 = v0;
  v3 = v2;
  v92 = *MEMORY[0x277D85DE8];
  v79 = 0;
  v80 = 0;
  v77 = 0;
  v78 = 0;
  v75 = 0;
  v76 = 0;
  OUTLINED_FUNCTION_27_4();
  bzero(v74, v4);
  OUTLINED_FUNCTION_26_5();
  bzero(v91, v5);
  v6 = setjmp(v91);
  if (v6 || OUTLINED_FUNCTION_38_0(v6, v74, v7, v8, v9, v10, v11, v12, v70, v71, v72, v74[0], v74[1], v74[2], v74[3], v74[4], v74[5], v74[6], v74[7], v74[8], v74[9], v74[10], v74[11], v74[12], v74[13], v74[14], v74[15], v74[16], v74[17], v74[18], v74[19], v74[20], v74[21], v74[22], v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91[0]))
  {
    goto LABEL_3;
  }

  v14 = OUTLINED_FUNCTION_2_9();
  get_parm(v14, v15, v16, -6);
  v17 = OUTLINED_FUNCTION_79();
  get_parm(v17, v18, v1, -6);
  v19 = OUTLINED_FUNCTION_67();
  push_ptr_init(v19, v20);
  v21 = OUTLINED_FUNCTION_4_8();
  if (lpta_loadp_setscan_r(v21, v22))
  {
    v23 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_22_5();
    if (!test_string_s())
    {
      v73 = v1;
      OUTLINED_FUNCTION_40();
      v23 = v24;
      goto LABEL_12;
    }

    v23 = 0;
  }

  while (2)
  {
    v73 = v1;
    v25 = OUTLINED_FUNCTION_50();
    if (lpta_loadp_setscan_r(v25, v26))
    {
      break;
    }

    OUTLINED_FUNCTION_22_5();
    if (test_string_s())
    {
      break;
    }

LABEL_12:
    v27 = OUTLINED_FUNCTION_42();
    savescptr(v27, v28, v29);
LABEL_13:
    OUTLINED_FUNCTION_21_5();
    if (!is_afterslash_char())
    {
      goto LABEL_53;
    }

LABEL_14:
    OUTLINED_FUNCTION_2_9();
    if (!SPR_anno())
    {
LABEL_53:
      *(v73 + 1) = v78;
      break;
    }

LABEL_15:
    OUTLINED_FUNCTION_29_3();
    if (!emphasis_anno())
    {
      goto LABEL_53;
    }

LABEL_16:
    OUTLINED_FUNCTION_2_9();
    if (!phr_final_anno())
    {
      goto LABEL_53;
    }

LABEL_17:
    v30 = OUTLINED_FUNCTION_87();
    starttest(v30, v31);
    v32 = OUTLINED_FUNCTION_29_3();
    v34 = lpta_loadp_setscan_r(v32, v33);
    v35 = v23;
    if (v34)
    {
LABEL_18:
      v36 = OUTLINED_FUNCTION_46();
      lpta_loadpn(v36, v37);
      v38 = OUTLINED_FUNCTION_29_3();
      rpta_loadpn(v38, v39);
      if (compare_ptas(v3) || testeq(v3))
      {
LABEL_20:
        OUTLINED_FUNCTION_2_9();
        phr_prediction_anno();
        v40 = v23;
        if (v41)
        {
LABEL_21:
          LODWORD(v23) = v40;
          OUTLINED_FUNCTION_2_9();
          pause_anno();
          v42 = v23;
          if (v43)
          {
LABEL_22:
            LODWORD(v23) = v42;
            OUTLINED_FUNCTION_2_9();
            v44 = textnorm_anno();
            v45 = v23;
            if (v44)
            {
LABEL_23:
              LODWORD(v23) = v45;
              OUTLINED_FUNCTION_2_9();
              environment_anno();
              v46 = v23;
              if (v47)
              {
LABEL_24:
                LODWORD(v23) = v46;
                OUTLINED_FUNCTION_2_9();
                v48 = voice_anno();
                v49 = v23;
                if (v48)
                {
LABEL_46:
                  LODWORD(v23) = v49;
                  OUTLINED_FUNCTION_2_9();
                  v66 = word_accent_anno();
                  v63 = v23;
                  if (v66)
                  {
LABEL_47:
                    LODWORD(v23) = v63;
                    OUTLINED_FUNCTION_2_9();
                    v67 = dict_anno();
                    v62 = v23;
                    if (v67)
                    {
LABEL_48:
                      LODWORD(v23) = v62;
                      OUTLINED_FUNCTION_21_5();
                      handle_invalid_anno();
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
        OUTLINED_FUNCTION_21_5();
        single_chars();
      }

LABEL_49:
      v68 = OUTLINED_FUNCTION_72();
      starttest(v68, v69);
      OUTLINED_FUNCTION_63();
      bspush_ca_boa();
      OUTLINED_FUNCTION_46();
      if (legal_end_of_anno())
      {
        v23 = v23;
      }

      else
      {
        v23 = 1;
      }
    }

    else
    {
LABEL_27:
      v23 = v35;
      do
      {
        v50 = OUTLINED_FUNCTION_71();
        bspush_ca_scan(v50, v51);
        v52 = OUTLINED_FUNCTION_10_8();
      }

      while (!testFldeq(v52, v53, v54, 1) && !advance_tok(v3));
    }

LABEL_30:
    v55 = *(v3 + 104);
    if (v55)
    {
      v56 = OUTLINED_FUNCTION_33_1(v55);
    }

    else
    {
      v56 = vback(v3, v23);
      v23 = 0;
    }

    switch(v56)
    {
      case 1:
        v1 = v73;
        continue;
      case 2:
      case 5:
        goto LABEL_12;
      case 3:
        goto LABEL_13;
      case 6:
        goto LABEL_14;
      case 7:
        goto LABEL_53;
      case 8:
        goto LABEL_15;
      case 9:
        goto LABEL_16;
      case 10:
        goto LABEL_17;
      case 11:
        goto LABEL_18;
      case 12:
        do
        {
          v57 = OUTLINED_FUNCTION_53();
          bspush_ca_scan(v57, v58);
          v59 = OUTLINED_FUNCTION_10_8();
        }

        while (!testFldeq(v59, v60, v61, 2) && !advance_tok(v3));
        goto LABEL_30;
      case 13:
        v35 = v23;
        goto LABEL_27;
      case 14:
        v64 = OUTLINED_FUNCTION_24_5();
        savescptr(v64, v65, &v77);
        goto LABEL_18;
      case 15:
        goto LABEL_20;
      case 16:
      case 17:
        goto LABEL_49;
      case 18:
        v40 = v23;
        goto LABEL_21;
      case 19:
        v42 = v23;
        goto LABEL_22;
      case 20:
        v45 = v23;
        goto LABEL_23;
      case 21:
        v46 = v23;
        goto LABEL_24;
      case 22:
        v49 = v23;
        goto LABEL_46;
      case 23:
        v63 = v23;
        goto LABEL_47;
      case 24:
        v62 = v23;
        goto LABEL_48;
      case 25:
        bspop_boa(v3);
        *(v3 + 136) = 1;
        *(v3 + 112) = v78;
        *(v3 + 128) = 0;
        insert_r(v3);
        goto LABEL_53;
      default:
        goto LABEL_3;
    }
  }

LABEL_3:
  vretproc(v3);
  v13 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_69();
}

uint64_t is_afterslash_char()
{
  OUTLINED_FUNCTION_54();
  v57 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_8(v2, v3, v4, v5, v6, v7, v8, v9, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55);
  OUTLINED_FUNCTION_26_5();
  bzero(v56, v10);
  if (!setjmp(v56))
  {
    OUTLINED_FUNCTION_76();
    if (!ventproc(v0, v11, v12, v13, v14, v56))
    {
      v15 = OUTLINED_FUNCTION_2_9();
      get_parm(v15, v16, v17, -6);
      OUTLINED_FUNCTION_28_3(v18, &v52);
      OUTLINED_FUNCTION_41();
      v19 = OUTLINED_FUNCTION_21_5();
      if (!lpta_loadp_setscan_r(v19, v20))
      {
        v21 = OUTLINED_FUNCTION_22_5();
        if (testFldeq(v21, v22, 2, v23) || advance_tok(v0))
        {
          v24 = *(v0 + 104);
          if (v24)
          {
            *(v0 + 104) = 0;
          }

          else
          {
            v25 = OUTLINED_FUNCTION_34_1();
            LODWORD(v24) = vback(v25, v26);
          }

          if ((v24 & 0xFFFFFFFE) != 2)
          {
            goto LABEL_10;
          }
        }

        else
        {
          single_chars_to_punct();
        }

        OUTLINED_FUNCTION_44(v53);
        goto LABEL_11;
      }
    }
  }

LABEL_10:
  v1 = 94;
LABEL_11:
  vretproc(v0);
  v27 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t SPR_anno()
{
  OUTLINED_FUNCTION_0_10();
  v155 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_9(v2, v3, v4, v5, v6, v7, v8, v9, v43, v47, v51, v55, v59, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v142, v145, v148, v150, v152, v154);
  OUTLINED_FUNCTION_16_7();
  if (!setjmp(v1))
  {
    OUTLINED_FUNCTION_7_8();
    v15 = OUTLINED_FUNCTION_73(v10, v11, v12, v13, v14);
    if (!v15)
    {
      OUTLINED_FUNCTION_19_5(v15, v16, v17, v18, v19, v20, v21, v22, v44, v48, v52, v56, v60, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v143, v146, v149, v151, v153);
      v23 = OUTLINED_FUNCTION_2_9();
      get_parm(v23, v24, v25, -6);
      v26 = OUTLINED_FUNCTION_9_8();
      get_parm(v26, v27, v28, -6);
      v29 = OUTLINED_FUNCTION_37_0();
      push_ptr_init(v29, v30);
      v31 = OUTLINED_FUNCTION_4_8();
      if (!lpta_loadp_setscan_r(v31, v32))
      {
        OUTLINED_FUNCTION_22_5();
        if (!test_string_s())
        {
          OUTLINED_FUNCTION_35_0(2, v45, v49, v53, v57, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137);
          OUTLINED_FUNCTION_42();
          handle_SPR();
          if (v35)
          {
            OUTLINED_FUNCTION_14_7();
            v35 = handle_invalid_anno();
          }

          else
          {
            *(v0 + 2614) = *(v0 + 2634);
          }

          OUTLINED_FUNCTION_17_7(v35, v36, v37, v38, v39, v40, v41, v42, v46, v50, v54, v58, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v141, v144, v147);
        }
      }
    }
  }

  vretproc(v0);
  v33 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_68();
}

uint64_t emphasis_anno()
{
  OUTLINED_FUNCTION_54();
  v89 = *MEMORY[0x277D85DE8];
  v83 = 0;
  v84 = 0;
  v81 = 0;
  v82 = 0;
  v80 = 0;
  OUTLINED_FUNCTION_27_4();
  bzero(v79, v1);
  OUTLINED_FUNCTION_26_5();
  bzero(v88, v2);
  v3 = setjmp(v88);
  if (v3 || OUTLINED_FUNCTION_73(v3, v79, v87, v86, v85))
  {
    goto LABEL_3;
  }

  v6 = OUTLINED_FUNCTION_2_9();
  get_parm(v6, v7, v8, -6);
  v9 = OUTLINED_FUNCTION_9_8();
  get_parm(v9, v10, v11, -6);
  v80 = 65532;
  fence_10(v0);
  OUTLINED_FUNCTION_89();
  v12 = OUTLINED_FUNCTION_21_5();
  if (!lpta_loadp_setscan_r(v12, v13))
  {
    v21 = OUTLINED_FUNCTION_10_8();
    if (testFldeq(v21, v22, v23, 2) || advance_tok(v0) || savetok(v0, (v0 + 1784)))
    {
      goto LABEL_28;
    }

    while (2)
    {
      OUTLINED_FUNCTION_40();
      v24 = OUTLINED_FUNCTION_45();
      savescptr(v24, v25, v26);
      OUTLINED_FUNCTION_22_5();
      if (test_string_s())
      {
LABEL_28:
        v53 = *(v0 + 104);
        if (v53)
        {
          v54 = OUTLINED_FUNCTION_33_1(v53);
        }

        else
        {
          v55 = OUTLINED_FUNCTION_34_1();
          v54 = vback(v55, v56);
        }

        switch(v54)
        {
          case 1:
            goto LABEL_6;
          case 2:
            continue;
          case 3:
            goto LABEL_15;
          case 4:
            v33 = HIWORD(v80);
            goto LABEL_16;
          case 5:
            goto LABEL_21;
          case 6:
            v33 = HIWORD(v80);
            goto LABEL_17;
          case 7:
            v33 = HIWORD(v80);
            goto LABEL_18;
          case 8:
            v33 = HIWORD(v80);
            goto LABEL_19;
          case 9:
          case 12:
            goto LABEL_33;
          case 10:
            v52 = *(v0 + 5122);
            goto LABEL_27;
          case 11:
            goto LABEL_36;
          case 14:
            goto LABEL_8;
          case 15:
            goto LABEL_34;
          case 16:
            goto LABEL_38;
          default:
            goto LABEL_3;
        }
      }

      break;
    }

    token_to_number();
LABEL_15:
    v33 = HIWORD(v80);
    v34 = 3044;
    if (HIWORD(v80))
    {
LABEL_16:
      v34 = 3036;
      if (v33 != 1)
      {
LABEL_17:
        v34 = 3032;
        if (v33 != 2)
        {
LABEL_18:
          v34 = 3056;
          if (v33 != 3)
          {
LABEL_19:
            v34 = 3060;
            if (v33 != 4)
            {
LABEL_21:
              *(v0 + 3602) = 5;
              npush_v(v0, (v0 + 3600), v27, v28, v29, v30, v31, v32);
              npush_v(v0, (v0 + 3032), v35, v36, v37, v38, v39, v40);
              if (if_testlt(v0, v41, v42, v43, v44, v45, v46, v47))
              {
LABEL_33:
                *(v0 + 3602) = 8;
                v57 = OUTLINED_FUNCTION_29_3();
                npush_v(v57, v58, v59, v60, v61, v62, v63, v64);
                v65 = OUTLINED_FUNCTION_34_1();
                ncompare_s(v65, v66);
                if (testeq(v0))
                {
LABEL_34:
                  *(v0 + 3602) = 8;
                  v67 = OUTLINED_FUNCTION_29_3();
                  npush_v(v67, v68, v69, v70, v71, v72, v73, v74);
                  v75 = OUTLINED_FUNCTION_86();
                  ncompare_s(v75, v76);
                  if (testeq(v0))
                  {
LABEL_38:
                    OUTLINED_FUNCTION_90(v82);
                    result = 0;
                    goto LABEL_4;
                  }
                }

LABEL_37:
                npush_s(v0);
                *(v0 + 3602) = 8;
                v77 = OUTLINED_FUNCTION_29_3();
                npop(v77, v78);
                goto LABEL_38;
              }

              v48 = OUTLINED_FUNCTION_22_5();
              npush_s(v48);
              *(v0 + 3602) = 7;
              npop(v0, (v0 + 3600));
              v49 = OUTLINED_FUNCTION_24_5();
              starttest(v49, v50);
              v51 = OUTLINED_FUNCTION_24_5();
              bspush_ca(v51);
              v52 = *(v0 + 5102);
LABEL_27:
              if (v52 == *(v0 + 5090))
              {
LABEL_36:
                npush_s(v0);
                OUTLINED_FUNCTION_83();
                goto LABEL_37;
              }

              goto LABEL_28;
            }
          }
        }
      }
    }

    *(v0 + 3602) = 5;
    copyvar(v0, (v0 + 3600), (v0 + v34));
    goto LABEL_21;
  }

LABEL_6:
  v14 = OUTLINED_FUNCTION_24_5();
  starttest(v14, v15);
  v16 = OUTLINED_FUNCTION_65();
  if (!lpta_loadp_setscan_r(v16, v17))
  {
    OUTLINED_FUNCTION_22_5();
    if (!test_string_s())
    {
LABEL_8:
      v18 = OUTLINED_FUNCTION_45();
      savescptr(v18, v19, v20);
      OUTLINED_FUNCTION_22_5();
      if (!test_string_s())
      {
        *(v0 + 3602) = 5;
        copyvar(v0, (v0 + 3600), (v0 + 3052));
        goto LABEL_33;
      }

      goto LABEL_28;
    }
  }

LABEL_3:
  vretproc(v0);
  result = 94;
LABEL_4:
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t phr_final_anno()
{
  OUTLINED_FUNCTION_0_10();
  v56 = *MEMORY[0x277D85DE8];
  v52[0] = 0;
  v52[1] = 0;
  OUTLINED_FUNCTION_1_9(v3, v4, v5, v6, v7, v8, v9, v10, v47[0], v47[1], v47[2], v47[3], v47[4], v47[5], v47[6], v47[7], v47[8], v47[9], v47[10], v47[11], v47[12], v47[13], v47[14], v47[15], v47[16], v47[17], v47[18], v47[19], v47[20], v47[21], v47[22], v48[0], v48[1], v48[2], v48[3], v49, v50, v51[0], v51[1]);
  OUTLINED_FUNCTION_16_7();
  v11 = setjmp(v2);
  if (v11)
  {
    goto LABEL_3;
  }

  v12 = OUTLINED_FUNCTION_73(v11, v47, v55, v54, v53);
  if (v12)
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_31_2(v12, v52);
  v15 = OUTLINED_FUNCTION_2_9();
  get_parm(v15, v16, v17, -6);
  OUTLINED_FUNCTION_28_3(v18, &v49);
  v19 = OUTLINED_FUNCTION_36_0();
  push_ptr_init(v19, v20);
  v21 = OUTLINED_FUNCTION_37_0();
  push_ptr_init(v21, v22);
  OUTLINED_FUNCTION_41();
  v23 = OUTLINED_FUNCTION_21_5();
  if (lpta_loadp_setscan_r(v23, v24) || (OUTLINED_FUNCTION_22_5(), test_string_s()))
  {
LABEL_10:
    if (lpta_loadp_setscan_r(v0, v51))
    {
      goto LABEL_3;
    }

    OUTLINED_FUNCTION_22_5();
    if (test_string_s())
    {
      goto LABEL_3;
    }

LABEL_12:
    v33 = OUTLINED_FUNCTION_42();
    savescptr(v33, v34, v35);
    v36 = OUTLINED_FUNCTION_24_5();
    starttest_l(v36, v37);
    v38 = OUTLINED_FUNCTION_29_3();
    if (!lpta_loadp_setscan_r(v38, v39))
    {
      v40 = OUTLINED_FUNCTION_10_8();
      if (testFldeq(v40, v41, v42, 4) || advance_tok(v0))
      {
        goto LABEL_15;
      }

      *(v0 + 2766) = *(v0 + 2782);
    }

LABEL_20:
    *(v1 + 8) = v50;
    goto LABEL_3;
  }

  v25 = OUTLINED_FUNCTION_18_6();
  bspush_ca_scan(v25, v26);
  OUTLINED_FUNCTION_22_5();
  if (!test_string_s())
  {
LABEL_7:
    v27 = OUTLINED_FUNCTION_45();
    savescptr(v27, v28, v29);
    v30 = OUTLINED_FUNCTION_18_6();
    bspush_ca_scan(v30, v31);
    OUTLINED_FUNCTION_22_5();
    if (!test_string_s())
    {
LABEL_8:
      savescptr(v0, 4, v48);
LABEL_9:
      OUTLINED_FUNCTION_40();
      savescptr(v0, v32, &v49);
      goto LABEL_20;
    }
  }

LABEL_15:
  v43 = *(v0 + 104);
  if (v43)
  {
    v44 = OUTLINED_FUNCTION_33_1(v43);
  }

  else
  {
    v45 = OUTLINED_FUNCTION_34_1();
    v44 = vback(v45, v46);
  }

  switch(v44)
  {
    case 1:
      goto LABEL_10;
    case 2:
      goto LABEL_9;
    case 3:
      goto LABEL_7;
    case 4:
      goto LABEL_8;
    case 5:
    case 6:
    case 9:
      goto LABEL_20;
    case 8:
      goto LABEL_12;
    default:
      break;
  }

LABEL_3:
  vretproc(v0);
  v13 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_80();
}

void phr_prediction_anno()
{
  OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_0_10();
  v1 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_23_5(v2, v3, v4, v5, v6, v7, v8, v9, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, SHIDWORD(v70), v71, v72, v73, v74, v75, v76, v77, v78);
  OUTLINED_FUNCTION_26_5();
  bzero(v89, v10);
  v11 = setjmp(v89);
  if (v11)
  {
    goto LABEL_5;
  }

  v18 = OUTLINED_FUNCTION_38_0(v11, &v47, v12, v13, v14, v15, v16, v17, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89[0]);
  if (v18)
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_31_2(v18, &v77);
  v19 = OUTLINED_FUNCTION_2_9();
  get_parm(v19, v20, v21, -6);
  OUTLINED_FUNCTION_28_3(v22, &v73);
  v23 = OUTLINED_FUNCTION_85();
  push_ptr_init(v23, v24);
  HIDWORD(v70) = 65532;
  v25 = OUTLINED_FUNCTION_4_8();
  if (lpta_loadp_setscan_r(v25, v26))
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_30_2();
  if (test_string_s())
  {
    goto LABEL_5;
  }

  while (2)
  {
    v28 = OUTLINED_FUNCTION_21_5();
    savescptr(v28, v29, &v71);
    v30 = OUTLINED_FUNCTION_46();
    if (lpta_loadp_setscan_r(v30, v31) || (OUTLINED_FUNCTION_3_9(), test_string_s()) || (*(v0 + 136) = 1, OUTLINED_FUNCTION_25_5()))
    {
LABEL_16:
      v44 = OUTLINED_FUNCTION_46();
      if (lpta_loadp_setscan_r(v44, v45) || (OUTLINED_FUNCTION_3_9(), test_string_s()) || (*(v0 + 136) = 1, v46 = OUTLINED_FUNCTION_25_5(), v32 = 1, v46))
      {
LABEL_19:
        OUTLINED_FUNCTION_82();
LABEL_20:
        OUTLINED_FUNCTION_44(v74);
        break;
      }
    }

    else
    {
      v32 = 0;
    }

    *(v0 + 3238) = v32;
LABEL_11:
    v33 = OUTLINED_FUNCTION_71();
    starttest(v33, v34);
    v35 = OUTLINED_FUNCTION_62();
    move_i(v35, v36, 13);
    v37 = OUTLINED_FUNCTION_62();
    if (!annoCallback(v37, v38, v39))
    {
      goto LABEL_20;
    }

    v40 = *(v0 + 104);
    if (v40)
    {
      v41 = OUTLINED_FUNCTION_33_1(v40);
    }

    else
    {
      v42 = OUTLINED_FUNCTION_34_1();
      v41 = vback(v42, v43);
    }

    switch(v41)
    {
      case 2:
        continue;
      case 3:
        goto LABEL_16;
      case 4:
      case 7:
        goto LABEL_11;
      case 5:
        goto LABEL_19;
      case 6:
      case 8:
        goto LABEL_20;
      default:
        goto LABEL_5;
    }
  }

LABEL_5:
  vretproc(v0);
  v27 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_69();
}

void pause_anno()
{
  OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_0_10();
  v110 = *MEMORY[0x277D85DE8];
  v104 = 0;
  v105 = 0;
  v102 = 0;
  v103 = 0;
  v100 = 0;
  v101 = 0;
  v98 = 0;
  v99 = 0;
  v97 = 0;
  v96[0] = 0;
  v96[1] = 0;
  v94 = 0;
  v95 = 0;
  v92 = 0u;
  v93 = 0u;
  v90 = 0;
  v91 = 0;
  OUTLINED_FUNCTION_27_4();
  bzero(v89, v2);
  OUTLINED_FUNCTION_26_5();
  bzero(v109, v3);
  if (!setjmp(v109))
  {
    v4 = ventproc(v0, v89, v108, v107, v106, v109);
    if (!v4)
    {
      OUTLINED_FUNCTION_31_2(v4, &v104);
      v5 = OUTLINED_FUNCTION_2_9();
      get_parm(v5, v6, v7, -6);
      OUTLINED_FUNCTION_28_3(v8, &v100);
      LOWORD(v98) = -3;
      LOWORD(v97) = -4;
      push_ptr_init(v0, v96);
      push_ptr_init(v0, &v94);
      *&v93 = 0;
      *(&v93 + 6) = 0;
      LODWORD(v92) = -65532;
      push_ptr_init(v0, &v90);
      fence_10(v0);
      v99 = 0;
      HIWORD(v97) = 0;
      v9 = OUTLINED_FUNCTION_21_5();
      if (!lpta_loadp_setscan_r(v9, v10))
      {
        OUTLINED_FUNCTION_3_9();
        if (!test_string_s())
        {
          v12 = 0;
          while (2)
          {
            savescptr(v0, 2, v96);
LABEL_8:
            starttest(v0, 4);
            bspush_ca_boa();
            v13 = OUTLINED_FUNCTION_46();
            v15 = lpta_loadp_setscan_r(v13, v14);
            v16 = v12;
            if (!v15)
            {
LABEL_9:
              v12 = v16;
              while (1)
              {
                v19 = OUTLINED_FUNCTION_30_2();
                if (testFldeq(v19, v20, 3, 2) || advance_tok(v0))
                {
                  break;
                }

                v17 = OUTLINED_FUNCTION_46();
                bspush_ca_scan(v17, v18);
              }
            }

            v21 = v12;
LABEL_14:
            v22 = *(v0 + 104);
            if (v22)
            {
              v23 = OUTLINED_FUNCTION_33_1(v22);
              v12 = v24;
            }

            else
            {
              v23 = vback(v0, v21);
              v12 = 0;
            }

            switch(v23)
            {
              case 2:
                continue;
              case 3:
                goto LABEL_8;
              case 4:
                string_to_number();
                goto LABEL_19;
              case 5:
                bspop_boa(v0);
                handle_invalid_anno();
                goto LABEL_40;
              case 6:
                *(v0 + 136) = 1;
                if (OUTLINED_FUNCTION_25_5())
                {
                  v21 = v12;
                }

                else
                {
                  v21 = 1;
                }

                goto LABEL_14;
              case 7:
                v16 = v12;
                goto LABEL_9;
              case 8:
              case 13:
              case 18:
                goto LABEL_40;
              case 9:
LABEL_19:
                if (v99 >= 1)
                {
                  goto LABEL_20;
                }

                goto LABEL_40;
              case 10:
LABEL_20:
                v25 = OUTLINED_FUNCTION_29_3();
                npush_v(v25, v26, v27, v28, v29, v30, v31, v32);
                npush_lng(v0);
                if (!if_testlt(v0, v33, v34, v35, v36, v37, v38, v39))
                {
                  v99 = 327670;
                }

                goto LABEL_22;
              case 11:
LABEL_22:
                v40 = *(v0 + 3736);
                if (v40 != 100.0)
                {
                  v99 = (v40 * v99 / 100.0);
                }

                goto LABEL_24;
              case 12:
LABEL_24:
                v95 = v105;
                startloop(v0, 13);
                goto LABEL_28;
              case 14:
                goto LABEL_28;
              case 15:
                goto LABEL_29;
              case 16:
                goto LABEL_33;
              case 17:
                goto LABEL_31;
              default:
                goto LABEL_5;
            }
          }

LABEL_31:
          v59 = v0;
          v58 = &v98;
LABEL_32:
          copyvar(v59, &v97, v58);
          while (1)
          {
LABEL_33:
            v60 = OUTLINED_FUNCTION_63();
            lpta_rpta_loadp(v60, v61, &v100);
            OUTLINED_FUNCTION_72();
            settvar_s();
            npush_s(v0);
            WORD1(v92) = 4;
            v62 = OUTLINED_FUNCTION_72();
            npop(v62, v63);
            insert_2ptv();
            v21 = v12;
            if (v64)
            {
              goto LABEL_14;
            }

            v65 = OUTLINED_FUNCTION_63();
            lpta_rpta_loadp(v65, v66, &v100);
            OUTLINED_FUNCTION_88();
            insert_2ptv();
            v21 = v12;
            if (v67)
            {
              goto LABEL_14;
            }

            v99 -= SHIWORD(v97);
            v68 = OUTLINED_FUNCTION_29_3();
            npush_v(v68, v69, v70, v71, v72, v73, v74, v75);
            npush_lng(v0);
            if (if_testlt(v0, v76, v77, v78, v79, v80, v81, v82))
            {
              break;
            }

            *(v0 + 168) = 1;
            v83 = OUTLINED_FUNCTION_77(v101);
            insert_l(v83);
            v84 = OUTLINED_FUNCTION_63();
            lpta_storep(v84, v85);
            *(v0 + 168) = 1;
            v86 = OUTLINED_FUNCTION_77(v95);
            insert_l(v86);
            lpta_storep(v0, &v90);
            *(v0 + 168) = 1;
            *(v0 + 144) = v95;
            *(v0 + 136) = 1;
            *(v0 + 112) = v101;
            *(v0 + 128) = 0;
            v87 = OUTLINED_FUNCTION_88();
            proj_l(v87);
            *(v0 + 168) = 1;
            *(v0 + 144) = v91;
            *(v0 + 136) = 1;
            *(v0 + 112) = v95;
            *(v0 + 128) = 0;
            v88 = OUTLINED_FUNCTION_88();
            proj_l(v88);
LABEL_28:
            starttest(v0, 15);
            v41 = OUTLINED_FUNCTION_29_3();
            npush_v(v41, v42, v43, v44, v45, v46, v47, v48);
            npush_lng(v0);
            if (if_testlt(v0, v49, v50, v51, v52, v53, v54, v55))
            {
LABEL_29:
              v56 = OUTLINED_FUNCTION_87();
              starttest(v56, v57);
              if (*(v0 + 3592) <= v99)
              {
                goto LABEL_31;
              }

              v58 = (v0 + 3572);
              v59 = v0;
              goto LABEL_32;
            }

            move_i(v0, &v97, 0x7FFF);
          }

LABEL_40:
          *(v1 + 8) = v101;
        }
      }
    }
  }

LABEL_5:
  vretproc(v0);
  v11 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_69();
}

uint64_t textnorm_anno()
{
  OUTLINED_FUNCTION_0_10();
  v155 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_9(v2, v3, v4, v5, v6, v7, v8, v9, v43, v47, v51, v55, v59, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v142, v145, v148, v150, v152, v154);
  OUTLINED_FUNCTION_16_7();
  if (!setjmp(v1))
  {
    OUTLINED_FUNCTION_7_8();
    v15 = OUTLINED_FUNCTION_73(v10, v11, v12, v13, v14);
    if (!v15)
    {
      OUTLINED_FUNCTION_19_5(v15, v16, v17, v18, v19, v20, v21, v22, v44, v48, v52, v56, v60, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v143, v146, v149, v151, v153);
      v23 = OUTLINED_FUNCTION_2_9();
      get_parm(v23, v24, v25, -6);
      v26 = OUTLINED_FUNCTION_9_8();
      get_parm(v26, v27, v28, -6);
      v29 = OUTLINED_FUNCTION_37_0();
      push_ptr_init(v29, v30);
      v31 = OUTLINED_FUNCTION_4_8();
      if (!lpta_loadp_setscan_r(v31, v32))
      {
        OUTLINED_FUNCTION_22_5();
        if (!test_string_s())
        {
          OUTLINED_FUNCTION_35_0(2, v45, v49, v53, v57, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137);
          OUTLINED_FUNCTION_42();
          spellout_mode_anno();
          if (v35)
          {
            OUTLINED_FUNCTION_32_1();
            year_mode_anno();
            if (v35)
            {
              OUTLINED_FUNCTION_14_7();
              v35 = handle_invalid_anno();
            }
          }

          OUTLINED_FUNCTION_17_7(v35, v36, v37, v38, v39, v40, v41, v42, v46, v50, v54, v58, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v141, v144, v147);
        }
      }
    }
  }

  vretproc(v0);
  v33 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_68();
}

void environment_anno()
{
  OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_0_10();
  v152 = *MEMORY[0x277D85DE8];
  v147[0] = 0;
  v147[1] = 0;
  v145 = 0;
  v146 = 0;
  v143 = 0;
  v144 = 0;
  v141 = 0;
  v142 = 0;
  v139 = 0;
  v140 = 0;
  v137 = 0;
  v138 = 0;
  v135 = 0;
  v136 = 0;
  OUTLINED_FUNCTION_27_4();
  bzero(&v112, v1);
  OUTLINED_FUNCTION_26_5();
  bzero(v151, v2);
  if (!setjmp(v151))
  {
    v3 = ventproc(v0, &v112, v150, v149, v148, v151);
    if (!v3)
    {
      OUTLINED_FUNCTION_31_2(v3, v147);
      v4 = OUTLINED_FUNCTION_2_9();
      get_parm(v4, v5, v6, -6);
      OUTLINED_FUNCTION_28_3(v7, &v143);
      push_ptr_init(v0, &v141);
      v8 = OUTLINED_FUNCTION_50();
      push_ptr_init(v8, v9);
      v10 = OUTLINED_FUNCTION_79();
      push_ptr_init(v10, v11);
      v12 = OUTLINED_FUNCTION_67();
      push_ptr_init(v12, v13);
      v14 = OUTLINED_FUNCTION_4_8();
      if (!lpta_loadp_setscan_r(v14, v15))
      {
        OUTLINED_FUNCTION_3_9();
        if (!test_string_s())
        {
          v111 = 9;
          v110 = 12;
          while (2)
          {
            v17 = OUTLINED_FUNCTION_46();
            savescptr(v17, v18, &v141);
            if (!spr_output_anno())
            {
              goto LABEL_45;
            }

LABEL_8:
            v19 = OUTLINED_FUNCTION_63();
            if (lpta_loadp_setscan_r(v19, v20) || (OUTLINED_FUNCTION_30_2(), test_string_s()))
            {
LABEL_24:
              if (!lpta_loadp_setscan_r(v0, &v141))
              {
                OUTLINED_FUNCTION_22_5();
                if (!test_string_s())
                {
LABEL_35:
                  v68 = OUTLINED_FUNCTION_42();
                  savescptr(v68, v69, v70);
                  v71 = OUTLINED_FUNCTION_29_3();
                  if (lpta_loadp_setscan_r(v71, v72) || (OUTLINED_FUNCTION_3_9(), v73 = test_string_s(), v73) || OUTLINED_FUNCTION_15_7(v73, v74, v75, v76, v77, v78, v79, v80, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144))
                  {
LABEL_38:
                    v81 = OUTLINED_FUNCTION_50();
                    if (lpta_loadp_setscan_r(v81, v82) || (OUTLINED_FUNCTION_3_9(), v83 = test_string_s(), v83) || OUTLINED_FUNCTION_15_7(v83, v84, v85, v86, v87, v88, v89, v90, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144))
                    {
LABEL_41:
                      v91 = OUTLINED_FUNCTION_50();
                      if (lpta_loadp_setscan_r(v91, v92))
                      {
                        break;
                      }

                      OUTLINED_FUNCTION_3_9();
                      v93 = test_string_s();
                      if (v93 || OUTLINED_FUNCTION_15_7(v93, v94, v95, v96, v97, v98, v99, v100, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144))
                      {
                        break;
                      }

                      *(v0 + 3634) = 3;
                      v106 = OUTLINED_FUNCTION_47();
                      v108 = 8000;
                    }

                    else
                    {
                      *(v0 + 3634) = 3;
                      v106 = OUTLINED_FUNCTION_47();
                      v108 = 11025;
                    }
                  }

                  else
                  {
                    *(v0 + 3634) = 3;
                    v106 = OUTLINED_FUNCTION_47();
                    v108 = 16000;
                  }

                  move_i(v106, v107, v108);
                  goto LABEL_45;
                }
              }

LABEL_26:
              if (!lpta_loadp_setscan_r(v0, &v141))
              {
                OUTLINED_FUNCTION_10_8();
                if (!test_string_s())
                {
LABEL_28:
                  v45 = OUTLINED_FUNCTION_42();
                  savescptr(v45, v46, v47);
                  v48 = OUTLINED_FUNCTION_29_3();
                  if (!lpta_loadp_setscan_r(v48, v49))
                  {
                    OUTLINED_FUNCTION_3_9();
                    v50 = test_string_s();
                    if (!v50 && !OUTLINED_FUNCTION_15_7(v50, v51, v52, v53, v54, v55, v56, v57, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144))
                    {
                      goto LABEL_45;
                    }
                  }

LABEL_31:
                  v58 = OUTLINED_FUNCTION_50();
                  if (!lpta_loadp_setscan_r(v58, v59))
                  {
                    OUTLINED_FUNCTION_3_9();
                    v60 = test_string_s();
                    if (!v60 && !OUTLINED_FUNCTION_15_7(v60, v61, v62, v63, v64, v65, v66, v67, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144))
                    {
LABEL_45:
                      OUTLINED_FUNCTION_44(v144);
                      goto LABEL_5;
                    }
                  }
                }
              }
            }

            else
            {
LABEL_10:
              v21 = OUTLINED_FUNCTION_72();
              savescptr(v21, v22, &v139);
              v23 = OUTLINED_FUNCTION_71();
              starttest(v23, v24);
              v25 = OUTLINED_FUNCTION_53();
              if (!lpta_loadp_setscan_r(v25, v26))
              {
                v27 = OUTLINED_FUNCTION_62();
                bspush_ca_scan(v27, v28);
                OUTLINED_FUNCTION_3_9();
                if (test_string_s())
                {
LABEL_15:
                  v40 = *(v0 + 104);
                  if (v40)
                  {
                    v32 = OUTLINED_FUNCTION_33_1(v40);
                  }

                  else
                  {
                    v41 = OUTLINED_FUNCTION_34_1();
                    v32 = vback(v41, v42);
                  }

                  switch(v32)
                  {
                    case 2:
                      continue;
                    case 3:
                      goto LABEL_8;
                    case 4:
                    case 14:
                    case 16:
                    case 20:
                    case 26:
                    case 28:
                      goto LABEL_45;
                    case 5:
                      goto LABEL_24;
                    case 6:
                      goto LABEL_10;
                    case 7:
                    case 22:
                    case 23:
                    case 27:
                      goto LABEL_44;
                    case 8:
                      v43 = OUTLINED_FUNCTION_21_5();
                      bspush_ca_scan(v43, v44);
                      OUTLINED_FUNCTION_3_9();
                      if (test_string_s())
                      {
                        goto LABEL_15;
                      }

                      goto LABEL_23;
                    case 9:
                      break;
                    case 10:
                      goto LABEL_14;
                    case 11:
                      OUTLINED_FUNCTION_3_9();
                      v32 = test_string_s();
                      if (!v32)
                      {
                        goto LABEL_14;
                      }

                      goto LABEL_15;
                    case 12:
LABEL_23:
                      v29 = OUTLINED_FUNCTION_87();
                      v31 = &v135;
                      goto LABEL_13;
                    case 13:
                      goto LABEL_47;
                    case 15:
                      goto LABEL_49;
                    case 17:
                      goto LABEL_26;
                    case 18:
                      goto LABEL_35;
                    case 19:
                      goto LABEL_38;
                    case 21:
                      goto LABEL_41;
                    case 24:
                      goto LABEL_28;
                    case 25:
                      goto LABEL_31;
                    default:
                      goto LABEL_5;
                  }
                }

                v29 = v0;
                v30 = v111;
                v31 = &v137;
LABEL_13:
                savescptr(v29, v30, v31);
LABEL_14:
                if (OUTLINED_FUNCTION_15_7(v32, v33, v34, v35, v36, v37, v38, v39, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144))
                {
                  goto LABEL_15;
                }

                if (*(v0 + 3616) == 1)
                {
LABEL_47:
                  v101 = OUTLINED_FUNCTION_67();
                  lpta_loadpn(v101, v102);
                  OUTLINED_FUNCTION_84();
                  if (compare_ptas(v0) || testneq(v0))
                  {
LABEL_49:
                    v103 = OUTLINED_FUNCTION_79();
                    lpta_loadpn(v103, v104);
                    OUTLINED_FUNCTION_84();
                    if (compare_ptas(v0) || testneq(v0))
                    {
                      goto LABEL_45;
                    }

                    v105 = *(v0 + 2282);
                  }

                  else
                  {
                    v105 = *(v0 + 3438);
                  }

                  *(v0 + 3434) = v105;
                }

                goto LABEL_45;
              }
            }

            break;
          }

LABEL_44:
          handle_invalid_anno();
          goto LABEL_45;
        }
      }
    }
  }

LABEL_5:
  vretproc(v0);
  v16 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_69();
}

uint64_t voice_anno()
{
  OUTLINED_FUNCTION_0_10();
  v155 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_9(v2, v3, v4, v5, v6, v7, v8, v9, v43, v47, v51, v55, v59, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v142, v145, v148, v150, v152, v154);
  OUTLINED_FUNCTION_16_7();
  if (!setjmp(v1))
  {
    OUTLINED_FUNCTION_7_8();
    v15 = OUTLINED_FUNCTION_73(v10, v11, v12, v13, v14);
    if (!v15)
    {
      OUTLINED_FUNCTION_19_5(v15, v16, v17, v18, v19, v20, v21, v22, v44, v48, v52, v56, v60, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v143, v146, v149, v151, v153);
      v23 = OUTLINED_FUNCTION_2_9();
      get_parm(v23, v24, v25, -6);
      v26 = OUTLINED_FUNCTION_9_8();
      get_parm(v26, v27, v28, -6);
      v29 = OUTLINED_FUNCTION_37_0();
      push_ptr_init(v29, v30);
      v31 = OUTLINED_FUNCTION_4_8();
      if (!lpta_loadp_setscan_r(v31, v32))
      {
        OUTLINED_FUNCTION_22_5();
        if (!test_string_s())
        {
          OUTLINED_FUNCTION_35_0(2, v45, v49, v53, v57, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137);
          OUTLINED_FUNCTION_42();
          v35 = prestored_voice_anno();
          if (v35)
          {
            OUTLINED_FUNCTION_32_1();
            vocal_tract_anno();
            if (v35)
            {
              OUTLINED_FUNCTION_32_1();
              v35 = voice_feature_anno();
              if (v35)
              {
                OUTLINED_FUNCTION_32_1();
                wpm_anno();
                if (v35)
                {
                  OUTLINED_FUNCTION_14_7();
                  v35 = handle_invalid_anno();
                }
              }
            }
          }

          OUTLINED_FUNCTION_17_7(v35, v36, v37, v38, v39, v40, v41, v42, v46, v50, v54, v58, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v141, v144, v147);
        }
      }
    }
  }

  vretproc(v0);
  v33 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_68();
}

uint64_t word_accent_anno()
{
  OUTLINED_FUNCTION_0_10();
  v212 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_9(v3, v4, v5, v6, v7, v8, v9, v10, v124, v127, v130, v133, v136, v139, v142, v145, v148, v151, v154, v157, v160, v163, v166, v169, v172, v175, v178, v181, v184, v187, v190, v193, v196, v199, v202, v205, v207, v209, v211);
  OUTLINED_FUNCTION_16_7();
  if (setjmp(v2))
  {
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_7_8();
  v16 = OUTLINED_FUNCTION_73(v11, v12, v13, v14, v15);
  if (v16)
  {
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_19_5(v16, v17, v18, v19, v20, v21, v22, v23, v125, v128, v131, v134, v137, v140, v143, v146, v149, v152, v155, v158, v161, v164, v167, v170, v173, v176, v179, v182, v185, v188, v191, v194, v197, v200, v203, v206, v208, v210);
  v24 = OUTLINED_FUNCTION_2_9();
  get_parm(v24, v25, v26, -6);
  v27 = OUTLINED_FUNCTION_9_8();
  get_parm(v27, v28, v29, -6);
  v30 = OUTLINED_FUNCTION_37_0();
  push_ptr_init(v30, v31);
  OUTLINED_FUNCTION_41();
  v32 = OUTLINED_FUNCTION_21_5();
  if (lpta_loadp_setscan_r(v32, v33))
  {
    goto LABEL_4;
  }

  v36 = OUTLINED_FUNCTION_18_6();
  bspush_ca_scan(v36, v37);
  while (2)
  {
    OUTLINED_FUNCTION_22_5();
    if (test_string_s())
    {
      goto LABEL_24;
    }

LABEL_7:
    OUTLINED_FUNCTION_35_0(3, v126, v129, v132, v135, v138, v141, v144, v147, v150, v153, v156, v159, v162, v165, v168, v171, v174, v177, v180, v183, v186, v189, v192, v195);
    v38 = OUTLINED_FUNCTION_24_5();
    starttest(v38, v39);
    v40 = OUTLINED_FUNCTION_29_3();
    if (lpta_loadp_setscan_r(v40, v41))
    {
LABEL_38:
      OUTLINED_FUNCTION_14_7();
      v85 = handle_invalid_anno();
      goto LABEL_53;
    }

    v42 = OUTLINED_FUNCTION_10_8();
    if (testFldeq(v42, v43, v44, 1) || advance_tok(v0))
    {
      goto LABEL_24;
    }

LABEL_10:
    v45 = OUTLINED_FUNCTION_45();
    savescptr(v45, v46, v47);
    OUTLINED_FUNCTION_22_5();
    if (test_string_s())
    {
      goto LABEL_24;
    }

    v48 = OUTLINED_FUNCTION_24_5();
    starttest(v48, v49);
    v50 = OUTLINED_FUNCTION_37_0();
    if (!lpta_loadp_setscan_r(v50, v51))
    {
      v74 = OUTLINED_FUNCTION_24_5();
      bspush_ca_scan(v74, v75);
LABEL_23:
      OUTLINED_FUNCTION_22_5();
      if (test_string_s())
      {
        goto LABEL_24;
      }

LABEL_39:
      v96 = OUTLINED_FUNCTION_22_5();
LABEL_41:
      npush_s(v96);
      v97 = (v0 + 3600);
      v98 = 6;
LABEL_42:
      *(v0 + 3602) = v98;
      goto LABEL_47;
    }

LABEL_12:
    v52 = OUTLINED_FUNCTION_24_5();
    starttest(v52, v53);
    v54 = OUTLINED_FUNCTION_37_0();
    if (!lpta_loadp_setscan_r(v54, v55))
    {
      v76 = OUTLINED_FUNCTION_24_5();
      bspush_ca_scan(v76, v77);
LABEL_34:
      OUTLINED_FUNCTION_22_5();
      if (test_string_s())
      {
        goto LABEL_24;
      }

LABEL_40:
      v96 = OUTLINED_FUNCTION_34_1();
      goto LABEL_41;
    }

LABEL_13:
    v56 = OUTLINED_FUNCTION_24_5();
    starttest(v56, v57);
    v58 = OUTLINED_FUNCTION_37_0();
    if (!lpta_loadp_setscan_r(v58, v59))
    {
      v78 = OUTLINED_FUNCTION_24_5();
      bspush_ca_scan(v78, v79);
LABEL_32:
      OUTLINED_FUNCTION_22_5();
      if (test_string_s())
      {
        goto LABEL_24;
      }

LABEL_43:
      v95 = OUTLINED_FUNCTION_86();
LABEL_46:
      npush_s(v95);
      OUTLINED_FUNCTION_83();
      v100 = OUTLINED_FUNCTION_22_5();
      npush_s(v100);
      *(v0 + 3602) = 7;
      v97 = v1;
LABEL_47:
      npop(v0, v97);
LABEL_48:
      v101 = OUTLINED_FUNCTION_75();
      npush_v(v101, v102, v103, v104, v105, v106, v107, v108);
      v109 = OUTLINED_FUNCTION_34_1();
      ncompare_s(v109, v110);
      if (!testeq(v0))
      {
        v121 = OUTLINED_FUNCTION_86();
        goto LABEL_52;
      }

LABEL_49:
      v111 = OUTLINED_FUNCTION_75();
      npush_v(v111, v112, v113, v114, v115, v116, v117, v118);
      v119 = OUTLINED_FUNCTION_22_5();
      ncompare_s(v119, v120);
      v85 = testeq(v0);
      if (!v85)
      {
        v121 = v0;
LABEL_52:
        npush_s(v121);
        v122 = OUTLINED_FUNCTION_75();
        npop(v122, v123);
      }

LABEL_53:
      OUTLINED_FUNCTION_17_7(v85, v86, v87, v88, v89, v90, v91, v92, v126, v129, v132, v135, v138, v141, v144, v147, v150, v153, v156, v159, v162, v165, v168, v171, v174, v177, v180, v183, v186, v189, v192, v195, v198, v201, v204);
      break;
    }

LABEL_14:
    v60 = OUTLINED_FUNCTION_24_5();
    starttest(v60, v61);
    v62 = OUTLINED_FUNCTION_37_0();
    if (!lpta_loadp_setscan_r(v62, v63))
    {
      v80 = OUTLINED_FUNCTION_24_5();
      bspush_ca_scan(v80, v81);
LABEL_30:
      OUTLINED_FUNCTION_22_5();
      if (test_string_s())
      {
        goto LABEL_24;
      }

LABEL_45:
      v95 = v0;
      goto LABEL_46;
    }

LABEL_15:
    v64 = OUTLINED_FUNCTION_24_5();
    starttest(v64, v65);
    v66 = OUTLINED_FUNCTION_37_0();
    if (!lpta_loadp_setscan_r(v66, v67))
    {
      v82 = OUTLINED_FUNCTION_24_5();
      bspush_ca_scan(v82, v83);
LABEL_36:
      OUTLINED_FUNCTION_22_5();
      if (test_string_s())
      {
        goto LABEL_24;
      }

LABEL_37:
      v95 = v0;
      goto LABEL_46;
    }

LABEL_16:
    v68 = OUTLINED_FUNCTION_24_5();
    starttest(v68, v69);
    v70 = OUTLINED_FUNCTION_37_0();
    if (lpta_loadp_setscan_r(v70, v71))
    {
      goto LABEL_38;
    }

    v72 = OUTLINED_FUNCTION_24_5();
    bspush_ca_scan(v72, v73);
LABEL_28:
    OUTLINED_FUNCTION_22_5();
    if (!test_string_s())
    {
LABEL_44:
      v99 = OUTLINED_FUNCTION_22_5();
      npush_s(v99);
      v97 = (v0 + 3600);
      v98 = 7;
      goto LABEL_42;
    }

LABEL_24:
    v84 = *(v0 + 104);
    if (v84)
    {
      v85 = OUTLINED_FUNCTION_33_1(v84);
    }

    else
    {
      v93 = OUTLINED_FUNCTION_34_1();
      v85 = vback(v93, v94);
    }

    switch(v85)
    {
      case 2:
        continue;
      case 3:
        goto LABEL_7;
      case 4:
      case 22:
        goto LABEL_38;
      case 5:
        goto LABEL_10;
      case 6:
        goto LABEL_12;
      case 7:
        goto LABEL_23;
      case 8:
        goto LABEL_39;
      case 9:
        goto LABEL_48;
      case 10:
        goto LABEL_13;
      case 11:
        goto LABEL_34;
      case 12:
        goto LABEL_40;
      case 13:
        goto LABEL_14;
      case 14:
        goto LABEL_32;
      case 15:
        goto LABEL_43;
      case 16:
        goto LABEL_15;
      case 17:
        goto LABEL_30;
      case 18:
        goto LABEL_45;
      case 19:
        goto LABEL_16;
      case 20:
        goto LABEL_36;
      case 21:
        goto LABEL_37;
      case 23:
        goto LABEL_28;
      case 24:
        goto LABEL_44;
      case 25:
      case 27:
      case 28:
      case 29:
        goto LABEL_53;
      case 26:
        goto LABEL_49;
      default:
        goto LABEL_4;
    }
  }

LABEL_4:
  vretproc(v0);
  v34 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_68();
}

uint64_t dict_anno()
{
  OUTLINED_FUNCTION_0_10();
  v80 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_52();
  v63 = 0;
  v64 = 0;
  HIDWORD(v62) = 0;
  OUTLINED_FUNCTION_27_4();
  bzero(v61, v3);
  OUTLINED_FUNCTION_16_7();
  v4 = setjmp(v2);
  if (!v4)
  {
    v11 = OUTLINED_FUNCTION_51(v4, v61, v5, v6, v7, v8, v9, v10, v60, v61[0], v61[1], v61[2], v61[3], v61[4], v61[5], v61[6], v61[7], v61[8], v61[9], v61[10], v61[11], v61[12], v61[13], v61[14], v61[15], v61[16], v61[17], v61[18], v61[19], v61[20], v61[21], v61[22], v62, v63, v64, v65[0], v65[1], v66, v67, v68, v69, v70[0], v70[1], v71, v72, v73, v74, v75, v76, v77, v78, v79);
    if (!v11)
    {
      OUTLINED_FUNCTION_31_2(v11, v70);
      v12 = OUTLINED_FUNCTION_2_9();
      get_parm(v12, v13, v14, -6);
      OUTLINED_FUNCTION_28_3(v15, &v66);
      v16 = OUTLINED_FUNCTION_65();
      push_ptr_init(v16, v17);
      v18 = OUTLINED_FUNCTION_36_0();
      push_ptr_init(v18, v19);
      HIDWORD(v62) = 65532;
      OUTLINED_FUNCTION_41();
      v20 = OUTLINED_FUNCTION_21_5();
      if (!lpta_loadp_setscan_r(v20, v21))
      {
        OUTLINED_FUNCTION_22_5();
        if (!test_string_s())
        {
          v24 = OUTLINED_FUNCTION_18_6();
          bspush_ca_scan(v24, v25);
          OUTLINED_FUNCTION_22_5();
          if (test_string_s())
          {
            goto LABEL_29;
          }

LABEL_8:
          savescptr(v0, 3, v65);
          while (2)
          {
            v26 = OUTLINED_FUNCTION_45();
            savescptr(v26, v27, v28);
LABEL_10:
            v29 = OUTLINED_FUNCTION_65();
            lpta_loadpn(v29, v30);
            OUTLINED_FUNCTION_84();
            if (compare_ptas(v0) || testneq(v0))
            {
LABEL_12:
              v31 = OUTLINED_FUNCTION_36_0();
              if (!lpta_loadp_setscan_r(v31, v32))
              {
                OUTLINED_FUNCTION_3_9();
                if (!test_string_s())
                {
                  *(v0 + 136) = 1;
                  v33 = OUTLINED_FUNCTION_25_5();
                  v34 = 2282;
                  if (!v33)
                  {
LABEL_18:
                    *(v0 + 5398) = *(v0 + v34);
LABEL_19:
                    v38 = OUTLINED_FUNCTION_24_5();
                    starttest(v38, v39);
                    v40 = OUTLINED_FUNCTION_29_3();
                    move_i(v40, v41, 19);
                    goto LABEL_28;
                  }
                }
              }

LABEL_15:
              v35 = OUTLINED_FUNCTION_36_0();
              if (!lpta_loadp_setscan_r(v35, v36))
              {
                OUTLINED_FUNCTION_3_9();
                if (!test_string_s())
                {
                  *(v0 + 136) = 1;
                  v37 = OUTLINED_FUNCTION_25_5();
                  v34 = 2278;
                  if (!v37)
                  {
                    goto LABEL_18;
                  }
                }
              }

LABEL_35:
              OUTLINED_FUNCTION_74();
              handle_invalid_anno();
              break;
            }

            v42 = OUTLINED_FUNCTION_36_0();
            if (lpta_loadp_setscan_r(v42, v43) || (OUTLINED_FUNCTION_3_9(), test_string_s()) || (*(v0 + 136) = 1, v44 = OUTLINED_FUNCTION_25_5(), v45 = 2282, v44))
            {
LABEL_23:
              v46 = OUTLINED_FUNCTION_36_0();
              if (lpta_loadp_setscan_r(v46, v47))
              {
                goto LABEL_35;
              }

              OUTLINED_FUNCTION_3_9();
              if (test_string_s())
              {
                goto LABEL_35;
              }

              *(v0 + 136) = 1;
              v48 = OUTLINED_FUNCTION_25_5();
              v45 = 2278;
              if (v48)
              {
                goto LABEL_35;
              }
            }

            *(v0 + 5390) = *(v0 + v45);
LABEL_27:
            v49 = OUTLINED_FUNCTION_24_5();
            starttest(v49, v50);
            v51 = OUTLINED_FUNCTION_29_3();
            move_i(v51, v52, 3);
LABEL_28:
            v53 = OUTLINED_FUNCTION_29_3();
            if (annoCallback(v53, v54, v55))
            {
LABEL_29:
              v56 = *(v0 + 104);
              if (v56)
              {
                v57 = OUTLINED_FUNCTION_33_1(v56);
              }

              else
              {
                v58 = OUTLINED_FUNCTION_34_1();
                v57 = vback(v58, v59);
              }

              switch(v57)
              {
                case 2:
                  OUTLINED_FUNCTION_22_5();
                  if (!test_string_s())
                  {
                    continue;
                  }

                  goto LABEL_29;
                case 3:
                  goto LABEL_8;
                case 4:
                  continue;
                case 5:
                  goto LABEL_10;
                case 6:
                  goto LABEL_12;
                case 7:
                  goto LABEL_23;
                case 8:
                  goto LABEL_27;
                case 9:
                case 15:
                  goto LABEL_35;
                case 10:
                case 11:
                case 12:
                case 16:
                  goto LABEL_36;
                case 13:
                  goto LABEL_15;
                case 14:
                  goto LABEL_19;
                default:
                  goto LABEL_5;
              }
            }

            break;
          }

LABEL_36:
          OUTLINED_FUNCTION_44(v67);
          goto LABEL_6;
        }
      }
    }
  }

LABEL_5:
  v1 = 94;
LABEL_6:
  vretproc(v0);
  v22 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t handle_invalid_anno()
{
  OUTLINED_FUNCTION_54();
  v49 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_8(v2, v3, v4, v5, v6, v7, v8, v9, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47);
  OUTLINED_FUNCTION_26_5();
  bzero(v48, v10);
  if (setjmp(v48) || (OUTLINED_FUNCTION_76(), ventproc(v0, v11, v12, v13, v14, v48)))
  {
    vretproc(v0);
    result = 94;
  }

  else
  {
    v17 = OUTLINED_FUNCTION_36_0();
    get_parm(v17, v18, v1, -6);
    OUTLINED_FUNCTION_28_3(v19, &v44);
    fence_10(v0);
    v20 = *(v0 + 2742);
    if (!v20)
    {
      *(v0 + 2742) = *(v0 + 2754);
    }

    single_chars_token();
    *(v0 + 2742) = v20;
    OUTLINED_FUNCTION_90(v45);
    result = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t legal_end_of_anno()
{
  OUTLINED_FUNCTION_49();
  v38 = *MEMORY[0x277D85DE8];
  v32 = 0;
  v33 = 0;
  OUTLINED_FUNCTION_27_4();
  bzero(v31, v3);
  OUTLINED_FUNCTION_20_5(v4, v5, v6, v7, v8, v9, v10, v11, v31[0], v31[1], v31[2], v31[3], v31[4], v31[5], v31[6], v31[7], v31[8], v31[9], v31[10], v31[11], v31[12], v31[13], v31[14], v31[15], v31[16], v31[17], v31[18], v31[19], v31[20], v31[21], v31[22], v32, v33, v34, v35, v36[0], v36[1], v37[0]);
  if (!setjmp(v2) && !ventproc(v0, v31, v36 + 7, &v35 + 6, &v34 + 4, v37))
  {
    v14 = OUTLINED_FUNCTION_29_3();
    get_parm(v14, v15, v1, -6);
    fence_10(v0);
    starttest(v0, 1);
    OUTLINED_FUNCTION_18_6();
    bspush_ca_boa();
    v16 = OUTLINED_FUNCTION_29_3();
    if (lpta_loadp_setscan_r(v16, v17) || (v18 = OUTLINED_FUNCTION_24_5(), bspush_ca_scan(v18, v19), OUTLINED_FUNCTION_22_5(), test_string_s()))
    {
      v20 = 0;
    }

    else
    {
LABEL_16:
      v20 = 1;
    }

    v28 = v20;
    while (2)
    {
      v21 = *(v0 + 104);
      if (v21)
      {
        v22 = OUTLINED_FUNCTION_33_1(v21);
        v24 = v23;
      }

      else
      {
        v22 = vback(v0, v28);
        v24 = 0;
      }

      switch(v22)
      {
        case 1:
          vretproc(v0);
          result = 0;
          goto LABEL_4;
        case 2:
          bspop_boa(v0);
          break;
        case 3:
          v25 = OUTLINED_FUNCTION_29_3();
          bspush_ca_scan(v25, v26);
          v27 = testFldeq(v0, 1u, 3, 4);
          v28 = v24;
          if (v27)
          {
            continue;
          }

          v29 = advance_tok(v0);
          goto LABEL_15;
        case 4:
          goto LABEL_16;
        case 5:
          *(v0 + 136) = 1;
          v30 = *(v0 + 1392);
          v29 = OUTLINED_FUNCTION_25_5();
LABEL_15:
          v28 = v24;
          if (!v29)
          {
            goto LABEL_16;
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
  result = 94;
LABEL_4:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t prestored_voice_anno()
{
  OUTLINED_FUNCTION_0_10();
  v43 = *MEMORY[0x277D85DE8];
  v38 = 0;
  v39 = 0;
  v36 = 0;
  v37 = 0;
  v34 = 0;
  v35 = 0;
  HIDWORD(v33) = 0;
  OUTLINED_FUNCTION_27_4();
  bzero(v32, v2);
  OUTLINED_FUNCTION_16_7();
  v3 = setjmp(v1);
  if (v3)
  {
    goto LABEL_4;
  }

  v4 = OUTLINED_FUNCTION_73(v3, v32, v42, v41, v40);
  if (v4)
  {
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_19_5(v4, v5, v6, v7, v8, v9, v10, v11, v31, v32[0], v32[1], v32[2], v32[3], v32[4], v32[5], v32[6], v32[7], v32[8], v32[9], v32[10], v32[11], v32[12], v32[13], v32[14], v32[15], v32[16], v32[17], v32[18], v32[19], v32[20], v32[21], v32[22], v33, v34, v35, v36, v37, v38);
  v12 = OUTLINED_FUNCTION_2_9();
  get_parm(v12, v13, v14, -6);
  v15 = OUTLINED_FUNCTION_9_8();
  get_parm(v15, v16, v17, -6);
  WORD2(v33) = -4;
  fence_10(v0);
  OUTLINED_FUNCTION_89();
  v18 = OUTLINED_FUNCTION_21_5();
  if (lpta_loadp_setscan_r(v18, v19))
  {
LABEL_4:
    vretproc(v0);
    result = 94;
  }

  else
  {
    v22 = OUTLINED_FUNCTION_10_8();
    v28 = !testFldeq(v22, v23, v24, 2) && !advance_tok(v0) && !savetok(v0, (v0 + 1832)) && (bspush_ca_scan_boa(), v25 = OUTLINED_FUNCTION_10_8(), !testFldeq(v25, v26, v27, 2)) && !advance_tok(v0);
    v29 = *(v0 + 104);
    if (v29)
    {
      v30 = OUTLINED_FUNCTION_33_1(v29);
    }

    else
    {
      v30 = vback(v0, v28);
    }

    switch(v30)
    {
      case 2:
        bspop_boa(v0);
        goto LABEL_16;
      case 3:
LABEL_16:
        token_to_number();
        goto LABEL_17;
      case 4:
LABEL_17:
        assign_prestored_voice_vals(v0);
        break;
      case 5:
        break;
      default:
        goto LABEL_4;
    }

    OUTLINED_FUNCTION_90(v35);
    result = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
  return result;
}

void vocal_tract_anno()
{
  OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_0_10();
  v140 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_9(v3, v4, v5, v6, v7, v8, v9, v10, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117, v120, v123, v126, v129, v132, v135, v136, v137, v138);
  OUTLINED_FUNCTION_26_5();
  bzero(v139, v11);
  if (setjmp(v139))
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_7_8();
  v16 = ventproc(v0, v12, v13, v14, v15, v139);
  if (v16)
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_19_5(v16, v17, v18, v19, v20, v21, v22, v23, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118, v121, v124, v127, v130, v133, v135, v136, v137);
  v24 = OUTLINED_FUNCTION_2_9();
  get_parm(v24, v25, v26, -6);
  v27 = OUTLINED_FUNCTION_9_8();
  get_parm(v27, v28, v29, -6);
  v30 = OUTLINED_FUNCTION_37_0();
  push_ptr_init(v30, v31);
  v32 = OUTLINED_FUNCTION_4_8();
  if (lpta_loadp_setscan_r(v32, v33))
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_3_9();
  if (test_string_s())
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_81();
  while (2)
  {
    v35 = OUTLINED_FUNCTION_46();
    savescptr(v35, v36, v1);
    v37 = OUTLINED_FUNCTION_62();
    starttest(v37, v38);
    v39 = OUTLINED_FUNCTION_63();
    if (lpta_loadp_setscan_r(v39, v40))
    {
      goto LABEL_18;
    }

    v41 = OUTLINED_FUNCTION_30_2();
    if (!testFldeq(v41, v42, v2, &v135) && !advance_tok(v0))
    {
      *(v0 + 136) = 1;
      if (!OUTLINED_FUNCTION_25_5())
      {
        token_to_digit();
LABEL_15:
        if (*(v0 + 3778) < 2)
        {
LABEL_16:
          v44 = apply_vocal_tract_val();
          if (v44)
          {
LABEL_17:
            OUTLINED_FUNCTION_14_7();
            insert_voice_change_pause();
          }

          goto LABEL_19;
        }

LABEL_18:
        OUTLINED_FUNCTION_14_7();
        v44 = handle_invalid_anno();
LABEL_19:
        OUTLINED_FUNCTION_17_7(v44, v45, v46, v47, v48, v49, v50, v51, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v119, v122, v125, v128, v131, v134);
        break;
      }
    }

    v43 = *(v0 + 104);
    if (v43)
    {
      v44 = OUTLINED_FUNCTION_33_1(v43);
    }

    else
    {
      v52 = OUTLINED_FUNCTION_34_1();
      v44 = vback(v52, v53);
    }

    switch(v44)
    {
      case 2:
        continue;
      case 3:
        goto LABEL_18;
      case 4:
        goto LABEL_15;
      case 5:
        goto LABEL_16;
      case 6:
      case 7:
      case 9:
      case 10:
        goto LABEL_19;
      case 8:
        goto LABEL_17;
      default:
        goto LABEL_5;
    }
  }

LABEL_5:
  vretproc(v0);
  v34 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_69();
}

uint64_t voice_feature_anno()
{
  OUTLINED_FUNCTION_0_10();
  v137 = *MEMORY[0x277D85DE8];
  v126 = 0;
  v127 = 0;
  v124 = 0;
  v125 = 0;
  OUTLINED_FUNCTION_1_9(v3, v4, v5, v6, v7, v8, v9, v10, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123);
  OUTLINED_FUNCTION_16_7();
  v11 = setjmp(v2);
  if (!v11)
  {
    v18 = OUTLINED_FUNCTION_51(v11, &v93, v12, v13, v14, v15, v16, v17, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136);
    if (!v18)
    {
      OUTLINED_FUNCTION_31_2(v18, &v126);
      v19 = OUTLINED_FUNCTION_2_9();
      get_parm(v19, v20, v21, -6);
      OUTLINED_FUNCTION_28_3(v22, &v122);
      v23 = OUTLINED_FUNCTION_65();
      push_ptr_init(v23, v24);
      v25 = OUTLINED_FUNCTION_36_0();
      push_ptr_init(v25, v26);
      v27 = OUTLINED_FUNCTION_37_0();
      push_ptr_init(v27, v28);
      OUTLINED_FUNCTION_41();
      v29 = OUTLINED_FUNCTION_21_5();
      if (!lpta_loadp_setscan_r(v29, v30))
      {
        v33 = OUTLINED_FUNCTION_18_6();
        bspush_ca_scan(v33, v34);
        v35 = OUTLINED_FUNCTION_24_5();
        bspush_ca_scan(v35, v36);
LABEL_7:
        OUTLINED_FUNCTION_22_5();
        if (!test_string_s())
        {
LABEL_19:
          v50 = 4;
          v51 = &v120;
LABEL_20:
          savescptr(v0, v50, v51);
LABEL_21:
          OUTLINED_FUNCTION_35_0(6, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116);
          v54 = OUTLINED_FUNCTION_24_5();
          starttest(v54, v55);
          v56 = OUTLINED_FUNCTION_29_3();
          if (lpta_loadp_setscan_r(v56, v57))
          {
LABEL_25:
            OUTLINED_FUNCTION_74();
            handle_invalid_anno();
LABEL_56:
            OUTLINED_FUNCTION_44(v123);
            goto LABEL_5;
          }

LABEL_22:
          while (1)
          {
            v58 = OUTLINED_FUNCTION_10_8();
            if (testFldeq(v58, v59, v60, 2) || advance_tok(v0))
            {
              break;
            }

            v61 = OUTLINED_FUNCTION_29_3();
            bspush_ca_scan(v61, v62);
          }
        }

        while (2)
        {
          v37 = *(v0 + 104);
          if (v37)
          {
            v38 = OUTLINED_FUNCTION_33_1(v37);
          }

          else
          {
            v46 = OUTLINED_FUNCTION_34_1();
            v38 = vback(v46, v47);
          }

          switch(v38)
          {
            case 2:
            case 7:
            case 8:
              v48 = OUTLINED_FUNCTION_24_5();
              bspush_ca_scan(v48, v49);
              OUTLINED_FUNCTION_22_5();
              if (!test_string_s())
              {
                goto LABEL_21;
              }

              continue;
            case 3:
              v52 = OUTLINED_FUNCTION_24_5();
              bspush_ca_scan(v52, v53);
              goto LABEL_7;
            case 4:
              goto LABEL_19;
            case 5:
              goto LABEL_7;
            case 6:
              goto LABEL_21;
            case 9:
              OUTLINED_FUNCTION_22_5();
              if (test_string_s())
              {
                continue;
              }

              goto LABEL_17;
            case 10:
LABEL_17:
              v50 = 10;
              v51 = &v118;
              goto LABEL_20;
            case 11:
              goto LABEL_25;
            case 12:
              *(v0 + 136) = 1;
              if (OUTLINED_FUNCTION_25_5())
              {
                continue;
              }

              string_to_number();
              goto LABEL_26;
            case 13:
              goto LABEL_22;
            case 14:
LABEL_26:
              if ((*(v0 + 3792) & 0x8000000000000000) == 0)
              {
                goto LABEL_27;
              }

              goto LABEL_56;
            case 15:
LABEL_27:
              v63 = OUTLINED_FUNCTION_36_0();
              lpta_loadpn(v63, v64);
              OUTLINED_FUNCTION_84();
              if (compare_ptas(v0) || testneq(v0))
              {
                goto LABEL_29;
              }

              v85 = OUTLINED_FUNCTION_55();
              npush_v(v85, v86, v87, v88, v89, v90, v91, v92);
              v73 = 250;
              goto LABEL_30;
            case 16:
            case 18:
              goto LABEL_32;
            case 17:
LABEL_29:
              v65 = OUTLINED_FUNCTION_55();
              npush_v(v65, v66, v67, v68, v69, v70, v71, v72);
              v73 = 100;
LABEL_30:
              v74 = v73;
              v75 = OUTLINED_FUNCTION_29_3();
              npush_lng(v75);
              v38 = if_testlt(v0, v76, v77, v78, v79, v80, v81, v82);
              if (!v38)
              {
                *(v0 + 3792) = v74;
              }

LABEL_32:
              v38 = OUTLINED_FUNCTION_48(v38, v39, v40, v41, v42, v43, v44, v45, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124);
              if (v38)
              {
                goto LABEL_34;
              }

              OUTLINED_FUNCTION_22_5();
              v38 = test_string_s();
              if (v38)
              {
                goto LABEL_34;
              }

              OUTLINED_FUNCTION_55();
              apply_head_size_val();
              goto LABEL_53;
            case 19:
LABEL_34:
              v38 = OUTLINED_FUNCTION_48(v38, v39, v40, v41, v42, v43, v44, v45, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124);
              if (v38)
              {
                goto LABEL_36;
              }

              OUTLINED_FUNCTION_22_5();
              v38 = test_string_s();
              if (v38)
              {
                goto LABEL_36;
              }

              OUTLINED_FUNCTION_55();
              apply_pitch_baseline_val();
              goto LABEL_53;
            case 20:
            case 21:
            case 23:
            case 25:
            case 27:
            case 29:
            case 31:
            case 32:
              goto LABEL_53;
            case 22:
LABEL_36:
              v38 = OUTLINED_FUNCTION_48(v38, v39, v40, v41, v42, v43, v44, v45, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124);
              if (v38)
              {
                goto LABEL_38;
              }

              OUTLINED_FUNCTION_22_5();
              v38 = test_string_s();
              if (v38)
              {
                goto LABEL_38;
              }

              OUTLINED_FUNCTION_55();
              apply_pitch_fluct_val();
              goto LABEL_53;
            case 24:
LABEL_38:
              v38 = OUTLINED_FUNCTION_48(v38, v39, v40, v41, v42, v43, v44, v45, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124);
              if (v38)
              {
                goto LABEL_40;
              }

              OUTLINED_FUNCTION_22_5();
              v38 = test_string_s();
              if (v38)
              {
                goto LABEL_40;
              }

              OUTLINED_FUNCTION_55();
              apply_roughness_val();
              goto LABEL_53;
            case 26:
LABEL_40:
              v38 = OUTLINED_FUNCTION_48(v38, v39, v40, v41, v42, v43, v44, v45, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124);
              if (v38)
              {
                goto LABEL_42;
              }

              OUTLINED_FUNCTION_22_5();
              v38 = test_string_s();
              if (v38)
              {
                goto LABEL_42;
              }

              OUTLINED_FUNCTION_55();
              apply_breathiness_val();
              goto LABEL_53;
            case 28:
LABEL_42:
              v38 = OUTLINED_FUNCTION_48(v38, v39, v40, v41, v42, v43, v44, v45, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124);
              if (v38)
              {
                goto LABEL_44;
              }

              OUTLINED_FUNCTION_22_5();
              v38 = test_string_s();
              if (v38)
              {
                goto LABEL_44;
              }

              OUTLINED_FUNCTION_55();
              apply_volume_val();
              break;
            case 30:
LABEL_44:
              if (!OUTLINED_FUNCTION_48(v38, v39, v40, v41, v42, v43, v44, v45, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124))
              {
                OUTLINED_FUNCTION_22_5();
                if (!test_string_s())
                {
                  OUTLINED_FUNCTION_55();
                  apply_speed_val();
                }
              }

              break;
            case 33:
            case 34:
            case 35:
              goto LABEL_56;
            default:
              goto LABEL_4;
          }

          break;
        }

LABEL_53:
        v83 = OUTLINED_FUNCTION_65();
        lpta_loadpn(v83, v84);
        OUTLINED_FUNCTION_84();
        if (!compare_ptas(v0) && !testneq(v0))
        {
          OUTLINED_FUNCTION_74();
          insert_voice_change_pause();
        }

        goto LABEL_56;
      }
    }
  }

LABEL_4:
  v1 = 94;
LABEL_5:
  vretproc(v0);
  v31 = *MEMORY[0x277D85DE8];
  return v1;
}

void wpm_anno()
{
  OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_0_10();
  v143 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_9(v3, v4, v5, v6, v7, v8, v9, v10, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117, v120, v123, v126, v129, v132, v135, v138, v139, v140, v141);
  OUTLINED_FUNCTION_26_5();
  bzero(v142, v11);
  if (!setjmp(v142))
  {
    OUTLINED_FUNCTION_7_8();
    v16 = ventproc(v0, v12, v13, v14, v15, v142);
    if (!v16)
    {
      OUTLINED_FUNCTION_19_5(v16, v17, v18, v19, v20, v21, v22, v23, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118, v121, v124, v127, v130, v133, v136, v138, v139, v140);
      v24 = OUTLINED_FUNCTION_2_9();
      get_parm(v24, v25, v26, -6);
      v27 = OUTLINED_FUNCTION_9_8();
      get_parm(v27, v28, v29, -6);
      v30 = OUTLINED_FUNCTION_37_0();
      push_ptr_init(v30, v31);
      v32 = OUTLINED_FUNCTION_4_8();
      if (!lpta_loadp_setscan_r(v32, v33))
      {
        OUTLINED_FUNCTION_30_2();
        if (!test_string_s())
        {
          OUTLINED_FUNCTION_81();
          while (2)
          {
            v35 = OUTLINED_FUNCTION_46();
            savescptr(v35, v36, v1);
            v37 = OUTLINED_FUNCTION_62();
            starttest(v37, v38);
            v39 = OUTLINED_FUNCTION_63();
            if (!lpta_loadp_setscan_r(v39, v40))
            {
LABEL_8:
              while (1)
              {
                v41 = OUTLINED_FUNCTION_30_2();
                if (testFldeq(v41, v42, v2, &v138) || advance_tok(v0))
                {
                  break;
                }

                v54 = OUTLINED_FUNCTION_53();
                bspush_ca_scan(v54, v55);
              }

LABEL_10:
              v43 = *(v0 + 104);
              if (v43)
              {
                v44 = OUTLINED_FUNCTION_33_1(v43);
              }

              else
              {
                v52 = OUTLINED_FUNCTION_34_1();
                v44 = vback(v52, v53);
              }

              switch(v44)
              {
                case 2:
                  continue;
                case 3:
                  goto LABEL_17;
                case 4:
                  *(v0 + 136) = 1;
                  if (OUTLINED_FUNCTION_25_5())
                  {
                    goto LABEL_10;
                  }

                  string_to_number();
                  goto LABEL_18;
                case 5:
                  goto LABEL_8;
                case 6:
LABEL_18:
                  *(v0 + 3736) = (100 * *(v0 + 5382)) / *(v0 + 3792);
                  OUTLINED_FUNCTION_64(2);
                  copyvar(v0, v56, (v0 + 3728));
                  goto LABEL_19;
                case 7:
                case 8:
                  goto LABEL_19;
                default:
                  goto LABEL_5;
              }
            }

            break;
          }

LABEL_17:
          OUTLINED_FUNCTION_14_7();
          v44 = handle_invalid_anno();
LABEL_19:
          OUTLINED_FUNCTION_17_7(v44, v45, v46, v47, v48, v49, v50, v51, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v119, v122, v125, v128, v131, v134, v137);
        }
      }
    }
  }

LABEL_5:
  vretproc(v0);
  v34 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_69();
}

uint64_t assign_prestored_voice_vals(void *a1)
{
  v75 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_52();
  HIDWORD(v58) = 0;
  OUTLINED_FUNCTION_27_4();
  bzero(&v35, v3);
  OUTLINED_FUNCTION_16_7();
  v4 = setjmp(v1);
  if (v4 || (v11 = OUTLINED_FUNCTION_51(v4, &v35, v5, v6, v7, v8, v9, v10, v31, v32, v33, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65[0], v65[1], v66, v67, v68, v69, v70, v71, v72, v73, v74), v11))
  {
LABEL_3:
    vretproc(a1);
    result = 94;
  }

  else
  {
    OUTLINED_FUNCTION_31_2(v11, v65);
    OUTLINED_FUNCTION_28_3(v14, &v63);
    v15 = OUTLINED_FUNCTION_2_9();
    get_parm(v15, v16, v17, -4);
    LODWORD(v62) = 65532;
    v61 = 0xFFFC0000FFFCLL;
    v60 = 0xFFFC0000FFFCLL;
    HIDWORD(v58) = 65532;
    v59 = 0xFFFC0000FFFCLL;
    fence_10(a1);
    v18 = OUTLINED_FUNCTION_24_5();
    starttest(v18, v19);
    OUTLINED_FUNCTION_18_6();
    bspush_ca_boa();
    v20 = OUTLINED_FUNCTION_21_5();
    get_formant_voice_vals(v20, v21, v22, v23, v24, v25, v26, v27, &v59, &v58 + 4, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45);
    v29 = a1[13];
    if (v29)
    {
      v30 = OUTLINED_FUNCTION_33_1(v29);
    }

    else
    {
      v30 = vback(a1, v28 == 0);
    }

    switch(v30)
    {
      case 1:
        OUTLINED_FUNCTION_50();
        apply_vocal_tract_val();
        goto LABEL_10;
      case 2:
        bspop_boa(a1);
        handle_invalid_anno();
        goto LABEL_18;
      case 3:
      case 12:
        goto LABEL_18;
      case 4:
LABEL_10:
        apply_head_size_val();
        goto LABEL_11;
      case 5:
LABEL_11:
        apply_pitch_baseline_val();
        goto LABEL_12;
      case 6:
LABEL_12:
        apply_pitch_fluct_val();
        goto LABEL_13;
      case 7:
LABEL_13:
        apply_roughness_val();
        goto LABEL_14;
      case 8:
LABEL_14:
        OUTLINED_FUNCTION_79();
        apply_breathiness_val();
        goto LABEL_15;
      case 9:
LABEL_15:
        OUTLINED_FUNCTION_65();
        apply_volume_val();
        goto LABEL_16;
      case 10:
LABEL_16:
        apply_speed_val();
        break;
      case 11:
        break;
      default:
        goto LABEL_3;
    }

    insert_voice_change_pause();
LABEL_18:
    OUTLINED_FUNCTION_90(v64);
    result = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void get_formant_voice_vals(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int16 *a21, __int16 *a22)
{
  OUTLINED_FUNCTION_70();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v129 = *MEMORY[0x277D85DE8];
  v124 = 0;
  v122 = 0;
  v123 = 0;
  v120 = 0;
  v121 = 0;
  OUTLINED_FUNCTION_27_4();
  bzero(v119, v38);
  OUTLINED_FUNCTION_26_5();
  bzero(v128, v39);
  if (!setjmp(v128) && !ventproc(v37, v119, v127, v126, v125, v128))
  {
    v41 = OUTLINED_FUNCTION_79();
    get_parm(v41, v42, v35, -4);
    get_parm(v37, &v123 + 4, v33, -4);
    v43 = OUTLINED_FUNCTION_65();
    get_parm(v43, v44, v31, -4);
    get_parm(v37, &v122 + 4, v29, -4);
    v45 = OUTLINED_FUNCTION_67();
    get_parm(v45, v46, v27, -4);
    v47 = OUTLINED_FUNCTION_42();
    get_parm(v47, v48, v49, -4);
    v50 = OUTLINED_FUNCTION_9_8();
    get_parm(v50, v51, v52, -4);
    get_parm(v37, &v120 + 4, a21, -4);
    v53 = OUTLINED_FUNCTION_85();
    get_parm(v53, v54, a22, -4);
    fence_10(v37);
    switch(HIWORD(v124))
    {
      case 1:
        v55 = v37[2711];
        OUTLINED_FUNCTION_61();
        v56 = v37[2719];
        OUTLINED_FUNCTION_60();
        v57 = v37[2713];
        OUTLINED_FUNCTION_59();
        v58 = v37[2721];
        OUTLINED_FUNCTION_58();
        v59 = v37[2725];
        OUTLINED_FUNCTION_57();
        v60 = v37[2723];
        OUTLINED_FUNCTION_56();
        v61 = v37[2717];
        OUTLINED_FUNCTION_66();
        v69 = v37[2715];
        goto LABEL_14;
      case 2:
        v98 = v37[2743];
        OUTLINED_FUNCTION_61();
        v99 = v37[2751];
        OUTLINED_FUNCTION_60();
        v100 = v37[2745];
        OUTLINED_FUNCTION_59();
        v101 = v37[2753];
        OUTLINED_FUNCTION_58();
        v102 = v37[2757];
        OUTLINED_FUNCTION_57();
        v103 = v37[2755];
        OUTLINED_FUNCTION_56();
        v104 = v37[2749];
        OUTLINED_FUNCTION_66();
        v69 = v37[2747];
        goto LABEL_14;
      case 3:
        v77 = v37[2759];
        OUTLINED_FUNCTION_61();
        v78 = v37[2767];
        OUTLINED_FUNCTION_60();
        v79 = v37[2761];
        OUTLINED_FUNCTION_59();
        v80 = v37[2769];
        OUTLINED_FUNCTION_58();
        v81 = v37[2773];
        OUTLINED_FUNCTION_57();
        v82 = v37[2771];
        OUTLINED_FUNCTION_56();
        v83 = v37[2765];
        OUTLINED_FUNCTION_66();
        v69 = v37[2763];
        goto LABEL_14;
      case 4:
        v84 = v37[2807];
        OUTLINED_FUNCTION_61();
        v85 = v37[2815];
        OUTLINED_FUNCTION_60();
        v86 = v37[2809];
        OUTLINED_FUNCTION_59();
        v87 = v37[2817];
        OUTLINED_FUNCTION_58();
        v88 = v37[2821];
        OUTLINED_FUNCTION_57();
        v89 = v37[2819];
        OUTLINED_FUNCTION_56();
        v90 = v37[2813];
        OUTLINED_FUNCTION_66();
        v69 = v37[2811];
        goto LABEL_14;
      case 5:
        v70 = v37[2823];
        OUTLINED_FUNCTION_61();
        v71 = v37[2831];
        OUTLINED_FUNCTION_60();
        v72 = v37[2825];
        OUTLINED_FUNCTION_59();
        v73 = v37[2833];
        OUTLINED_FUNCTION_58();
        v74 = v37[2837];
        OUTLINED_FUNCTION_57();
        v75 = v37[2835];
        OUTLINED_FUNCTION_56();
        v76 = v37[2829];
        OUTLINED_FUNCTION_66();
        v69 = v37[2827];
        goto LABEL_14;
      case 6:
        v105 = v37[2839];
        OUTLINED_FUNCTION_61();
        v106 = v37[2847];
        OUTLINED_FUNCTION_60();
        v107 = v37[2841];
        OUTLINED_FUNCTION_59();
        v108 = v37[2849];
        OUTLINED_FUNCTION_58();
        v109 = v37[2853];
        OUTLINED_FUNCTION_57();
        v110 = v37[2851];
        OUTLINED_FUNCTION_56();
        v111 = v37[2845];
        OUTLINED_FUNCTION_66();
        v69 = v37[2843];
        goto LABEL_14;
      case 7:
        v112 = v37[2791];
        OUTLINED_FUNCTION_61();
        v113 = v37[2799];
        OUTLINED_FUNCTION_60();
        v114 = v37[2793];
        OUTLINED_FUNCTION_59();
        v115 = v37[2801];
        OUTLINED_FUNCTION_58();
        v116 = v37[2805];
        OUTLINED_FUNCTION_57();
        v117 = v37[2803];
        OUTLINED_FUNCTION_56();
        v118 = v37[2797];
        OUTLINED_FUNCTION_66();
        v69 = v37[2795];
        goto LABEL_14;
      case 8:
        v91 = v37[2775];
        OUTLINED_FUNCTION_61();
        v92 = v37[2783];
        OUTLINED_FUNCTION_60();
        v93 = v37[2777];
        OUTLINED_FUNCTION_59();
        v94 = v37[2785];
        OUTLINED_FUNCTION_58();
        v95 = v37[2789];
        OUTLINED_FUNCTION_57();
        v96 = v37[2787];
        OUTLINED_FUNCTION_56();
        v97 = v37[2781];
        OUTLINED_FUNCTION_66();
        v69 = v37[2779];
        goto LABEL_14;
      case 9:
        HIWORD(v123) = 0;
        HIWORD(v122) = 69;
        v66 = 69;
        WORD1(v122) = 34;
        HIWORD(v121) = 0;
        WORD1(v121) = 0;
        v63 = 0;
        HIWORD(v120) = 92;
        WORD1(v123) = 50;
        v67 = 50;
        v69 = 50;
        v62 = 92;
        v64 = 0;
        v68 = 0;
        v65 = 34;
LABEL_14:
        v33[1] = v68;
        WORD1(v120) = v69;
        v31[1] = v67;
        v29[1] = v66;
        v27[1] = v65;
        *(v25 + 2) = v64;
        *(v23 + 2) = v63;
        a21[1] = v62;
        a22[1] = v69;
        break;
      default:
        break;
    }
  }

  vretproc(v37);
  v40 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_69();
}

uint64_t apply_vocal_tract_val()
{
  OUTLINED_FUNCTION_49();
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_13_8(v3, v4, v5, v6, v7, v8, v9, v10, v46, v51, v56, v61, v66, v71, v76, v81, v86, v91, v96, v101, v106, v111, v116, v121, v126, v131, v136, v141, v146, v151, v156, v161, v166, SHIDWORD(v166), v171);
  OUTLINED_FUNCTION_20_5(v11, v12, v13, v14, v15, v16, v17, v18, v47, v52, v57, v62, v67, v72, v77, v82, v87, v92, v97, v102, v107, v112, v117, v122, v127, v132, v137, v142, v147, v152, v157, v162, v167, v172, v176, v178, v180, v182);
  v19 = setjmp(v1);
  if (v19)
  {
    goto LABEL_3;
  }

  v27 = OUTLINED_FUNCTION_6_8(v19, v20, v21, v22, v23, v24, v25, v26, v48, v53, v58, v63, v68, v73, v78, v83, v88, v93, v98, v103, v108, v113, v118, v123, v128, v133, v138, v143, v148, v153, v158, v163, v168, *v173, v173[4], *v177, *&v177[4], v177[6], v179, SWORD2(v179), SBYTE6(v179), SHIBYTE(v179), v181, v183);
  if (v27)
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_11_8(v27, v28, v29, v30, v31, v32, v33, v34, v49, v54, v59, v64, v69, v74, v79, v84, v89, v94, v99, v104, v109, v114, v119, v124, v129, v134, v139, v144, v149, v154, v159, v164, v169, v174);
  OUTLINED_FUNCTION_8_8();
  v38 = OUTLINED_FUNCTION_12_8();
  move_i(v38, v39, 5);
  v40 = OUTLINED_FUNCTION_39();
  if (!annoCallback(v40, v41, v1))
  {
    goto LABEL_10;
  }

  v42 = *(v0 + 104);
  if (v42)
  {
    v43 = OUTLINED_FUNCTION_33_1(v42);
  }

  else
  {
    v44 = OUTLINED_FUNCTION_34_1();
    v43 = vback(v44, v45);
  }

  if (v43 != 1)
  {
LABEL_3:
    v35 = 94;
  }

  else
  {
LABEL_10:
    OUTLINED_FUNCTION_43(4, v50, v55, v60, v65, v70, v75, v80, v85, v90, v95, v100, v105, v110, v115, v120, v125, v130, v135, v140, v145, v150, v155, v160, v165, v170, v175);
    v35 = 0;
  }

  vretproc(v0);
  v36 = *MEMORY[0x277D85DE8];
  return v35;
}

uint64_t apply_head_size_val()
{
  OUTLINED_FUNCTION_49();
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_13_8(v3, v4, v5, v6, v7, v8, v9, v10, v46, v51, v56, v61, v66, v71, v76, v81, v86, v91, v96, v101, v106, v111, v116, v121, v126, v131, v136, v141, v146, v151, v156, v161, v166, SHIDWORD(v166), v171);
  OUTLINED_FUNCTION_20_5(v11, v12, v13, v14, v15, v16, v17, v18, v47, v52, v57, v62, v67, v72, v77, v82, v87, v92, v97, v102, v107, v112, v117, v122, v127, v132, v137, v142, v147, v152, v157, v162, v167, v172, v176, v178, v180, v182);
  v19 = setjmp(v1);
  if (v19)
  {
    goto LABEL_3;
  }

  v27 = OUTLINED_FUNCTION_6_8(v19, v20, v21, v22, v23, v24, v25, v26, v48, v53, v58, v63, v68, v73, v78, v83, v88, v93, v98, v103, v108, v113, v118, v123, v128, v133, v138, v143, v148, v153, v158, v163, v168, *v173, v173[4], *v177, *&v177[4], v177[6], v179, SWORD2(v179), SBYTE6(v179), SHIBYTE(v179), v181, v183);
  if (v27)
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_11_8(v27, v28, v29, v30, v31, v32, v33, v34, v49, v54, v59, v64, v69, v74, v79, v84, v89, v94, v99, v104, v109, v114, v119, v124, v129, v134, v139, v144, v149, v154, v159, v164, v169, v174);
  OUTLINED_FUNCTION_8_8();
  v38 = OUTLINED_FUNCTION_12_8();
  move_i(v38, v39, 6);
  v40 = OUTLINED_FUNCTION_39();
  if (!annoCallback(v40, v41, v1))
  {
    goto LABEL_10;
  }

  v42 = *(v0 + 104);
  if (v42)
  {
    v43 = OUTLINED_FUNCTION_33_1(v42);
  }

  else
  {
    v44 = OUTLINED_FUNCTION_34_1();
    v43 = vback(v44, v45);
  }

  if (v43 != 1)
  {
LABEL_3:
    v35 = 94;
  }

  else
  {
LABEL_10:
    OUTLINED_FUNCTION_43(5, v50, v55, v60, v65, v70, v75, v80, v85, v90, v95, v100, v105, v110, v115, v120, v125, v130, v135, v140, v145, v150, v155, v160, v165, v170, v175);
    v35 = 0;
  }

  vretproc(v0);
  v36 = *MEMORY[0x277D85DE8];
  return v35;
}

uint64_t apply_pitch_baseline_val()
{
  OUTLINED_FUNCTION_49();
  v73 = *MEMORY[0x277D85DE8];
  HIDWORD(v67) = 0;
  LODWORD(v68) = 0;
  OUTLINED_FUNCTION_27_4();
  bzero(&v44, v2);
  OUTLINED_FUNCTION_20_5(v3, v4, v5, v6, v7, v8, v9, v10, v41, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72);
  v11 = setjmp(v1);
  if (v11)
  {
    goto LABEL_3;
  }

  v19 = OUTLINED_FUNCTION_6_8(v11, v12, v13, v14, v15, v16, v17, v18, v42, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, SBYTE4(v68), v69, SWORD2(v69), SBYTE6(v69), v70, SWORD2(v70), SBYTE6(v70), SHIBYTE(v70), v71, v72);
  if (v19)
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_11_8(v19, v20, v21, v22, v23, v24, v25, v26, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68);
  OUTLINED_FUNCTION_8_8();
  v30 = OUTLINED_FUNCTION_12_8();
  move_i(v30, v31, 7);
  v32 = OUTLINED_FUNCTION_39();
  if (!annoCallback(v32, v33, v1))
  {
    goto LABEL_10;
  }

  v34 = *(v0 + 104);
  if (v34)
  {
    v35 = OUTLINED_FUNCTION_33_1(v34);
  }

  else
  {
    v36 = OUTLINED_FUNCTION_34_1();
    v35 = vback(v36, v37);
  }

  if (v35 != 1)
  {
LABEL_3:
    v27 = 94;
  }

  else
  {
LABEL_10:
    v38 = *(v0 + 1056);
    v39 = *(v0 + 1088);
    *(v0 + 1040) = v38 + v39 * exp2(*(v0 + 1072) * SWORD1(v68));
    OUTLINED_FUNCTION_64(9);
    copyvar(v0, v40, (v0 + 1032));
    v27 = 0;
  }

  vretproc(v0);
  v28 = *MEMORY[0x277D85DE8];
  return v27;
}

uint64_t apply_pitch_fluct_val()
{
  OUTLINED_FUNCTION_49();
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_13_8(v3, v4, v5, v6, v7, v8, v9, v10, v46, v51, v56, v61, v66, v71, v76, v81, v86, v91, v96, v101, v106, v111, v116, v121, v126, v131, v136, v141, v146, v151, v156, v161, v166, SHIDWORD(v166), v171);
  OUTLINED_FUNCTION_20_5(v11, v12, v13, v14, v15, v16, v17, v18, v47, v52, v57, v62, v67, v72, v77, v82, v87, v92, v97, v102, v107, v112, v117, v122, v127, v132, v137, v142, v147, v152, v157, v162, v167, v172, v176, v178, v180, v182);
  v19 = setjmp(v1);
  if (v19)
  {
    goto LABEL_3;
  }

  v27 = OUTLINED_FUNCTION_6_8(v19, v20, v21, v22, v23, v24, v25, v26, v48, v53, v58, v63, v68, v73, v78, v83, v88, v93, v98, v103, v108, v113, v118, v123, v128, v133, v138, v143, v148, v153, v158, v163, v168, *v173, v173[4], *v177, *&v177[4], v177[6], v179, SWORD2(v179), SBYTE6(v179), SHIBYTE(v179), v181, v183);
  if (v27)
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_11_8(v27, v28, v29, v30, v31, v32, v33, v34, v49, v54, v59, v64, v69, v74, v79, v84, v89, v94, v99, v104, v109, v114, v119, v124, v129, v134, v139, v144, v149, v154, v159, v164, v169, v174);
  OUTLINED_FUNCTION_8_8();
  v38 = OUTLINED_FUNCTION_12_8();
  move_i(v38, v39, 8);
  v40 = OUTLINED_FUNCTION_39();
  if (!annoCallback(v40, v41, v1))
  {
    goto LABEL_10;
  }

  v42 = *(v0 + 104);
  if (v42)
  {
    v43 = OUTLINED_FUNCTION_33_1(v42);
  }

  else
  {
    v44 = OUTLINED_FUNCTION_34_1();
    v43 = vback(v44, v45);
  }

  if (v43 != 1)
  {
LABEL_3:
    v35 = 94;
  }

  else
  {
LABEL_10:
    OUTLINED_FUNCTION_43(10, v50, v55, v60, v65, v70, v75, v80, v85, v90, v95, v100, v105, v110, v115, v120, v125, v130, v135, v140, v145, v150, v155, v160, v165, v170, v175);
    v35 = 0;
  }

  vretproc(v0);
  v36 = *MEMORY[0x277D85DE8];
  return v35;
}

uint64_t apply_roughness_val()
{
  OUTLINED_FUNCTION_49();
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_13_8(v3, v4, v5, v6, v7, v8, v9, v10, v46, v50, v54, v58, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142, SHIDWORD(v142), v146);
  OUTLINED_FUNCTION_20_5(v11, v12, v13, v14, v15, v16, v17, v18, v47, v51, v55, v59, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v147, v151, v153, v155, v157);
  v19 = setjmp(v1);
  if (v19)
  {
    goto LABEL_3;
  }

  v27 = OUTLINED_FUNCTION_6_8(v19, v20, v21, v22, v23, v24, v25, v26, v48, v52, v56, v60, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144, *v148, v148[4], *v152, *&v152[4], v152[6], v154, SWORD2(v154), SBYTE6(v154), SHIBYTE(v154), v156, v158);
  if (v27)
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_11_8(v27, v28, v29, v30, v31, v32, v33, v34, v49, v53, v57, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, v149);
  OUTLINED_FUNCTION_8_8();
  v38 = OUTLINED_FUNCTION_12_8();
  move_i(v38, v39, 9);
  v40 = OUTLINED_FUNCTION_39();
  if (!annoCallback(v40, v41, v1))
  {
    goto LABEL_10;
  }

  v42 = *(v0 + 104);
  if (v42)
  {
    v43 = OUTLINED_FUNCTION_33_1(v42);
  }

  else
  {
    v44 = OUTLINED_FUNCTION_34_1();
    v43 = vback(v44, v45);
  }

  if (v43 != 1)
  {
LABEL_3:
    v35 = 94;
  }

  else
  {
LABEL_10:
    v35 = 0;
    *(v0 + 3662) = ((4 * v150) / 10.0);
  }

  vretproc(v0);
  v36 = *MEMORY[0x277D85DE8];
  return v35;
}

uint64_t apply_breathiness_val()
{
  OUTLINED_FUNCTION_49();
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_13_8(v3, v4, v5, v6, v7, v8, v9, v10, v46, v51, v56, v61, v66, v71, v76, v81, v86, v91, v96, v101, v106, v111, v116, v121, v126, v131, v136, v141, v146, v151, v156, v161, v166, SHIDWORD(v166), v171);
  OUTLINED_FUNCTION_20_5(v11, v12, v13, v14, v15, v16, v17, v18, v47, v52, v57, v62, v67, v72, v77, v82, v87, v92, v97, v102, v107, v112, v117, v122, v127, v132, v137, v142, v147, v152, v157, v162, v167, v172, v176, v178, v180, v182);
  v19 = setjmp(v1);
  if (v19)
  {
    goto LABEL_3;
  }

  v27 = OUTLINED_FUNCTION_6_8(v19, v20, v21, v22, v23, v24, v25, v26, v48, v53, v58, v63, v68, v73, v78, v83, v88, v93, v98, v103, v108, v113, v118, v123, v128, v133, v138, v143, v148, v153, v158, v163, v168, *v173, v173[4], *v177, *&v177[4], v177[6], v179, SWORD2(v179), SBYTE6(v179), SHIBYTE(v179), v181, v183);
  if (v27)
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_11_8(v27, v28, v29, v30, v31, v32, v33, v34, v49, v54, v59, v64, v69, v74, v79, v84, v89, v94, v99, v104, v109, v114, v119, v124, v129, v134, v139, v144, v149, v154, v159, v164, v169, v174);
  OUTLINED_FUNCTION_8_8();
  v38 = OUTLINED_FUNCTION_12_8();
  move_i(v38, v39, 10);
  v40 = OUTLINED_FUNCTION_39();
  if (!annoCallback(v40, v41, v1))
  {
    goto LABEL_10;
  }

  v42 = *(v0 + 104);
  if (v42)
  {
    v43 = OUTLINED_FUNCTION_33_1(v42);
  }

  else
  {
    v44 = OUTLINED_FUNCTION_34_1();
    v43 = vback(v44, v45);
  }

  if (v43 != 1)
  {
LABEL_3:
    v35 = 94;
  }

  else
  {
LABEL_10:
    OUTLINED_FUNCTION_43(6, v50, v55, v60, v65, v70, v75, v80, v85, v90, v95, v100, v105, v110, v115, v120, v125, v130, v135, v140, v145, v150, v155, v160, v165, v170, v175);
    v35 = 0;
  }

  vretproc(v0);
  v36 = *MEMORY[0x277D85DE8];
  return v35;
}

uint64_t apply_volume_val()
{
  OUTLINED_FUNCTION_49();
  v32 = *MEMORY[0x277D85DE8];
  v30 = 0;
  v28 = 0;
  HIDWORD(v27) = 0;
  OUTLINED_FUNCTION_27_4();
  bzero(v26, v2);
  OUTLINED_FUNCTION_26_5();
  bzero(v31, v3);
  if (setjmp(v31))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_76();
  if (ventproc(v0, v4, v5, v6, v7, v31))
  {
    goto LABEL_3;
  }

  v10 = OUTLINED_FUNCTION_29_3();
  get_parm(v10, v11, v1, -4);
  LOWORD(v28) = -5;
  HIDWORD(v27) = 65532;
  fence_10(v0);
  v29 = 0.0;
  v12 = OUTLINED_FUNCTION_24_5();
  starttest(v12, v13);
  v14 = OUTLINED_FUNCTION_12_8();
  move_i(v14, v15, 12);
  v16 = OUTLINED_FUNCTION_39();
  if (!annoCallback(v16, v17, &v30) || ((v18 = *(v0 + 104)) == 0 ? (v20 = OUTLINED_FUNCTION_34_1(), v19 = vback(v20, v21)) : (v19 = OUTLINED_FUNCTION_33_1(v18)), v19 == 1))
  {
    v22 = HIWORD(v30);
    if (SHIWORD(v30) >= 81)
    {
      v29 = (*(v0 + 5408) + -1.0) * (SHIWORD(v30) - 80) / 20.0 + 1.0;
      LOWORD(v23) = 100;
      goto LABEL_16;
    }

LABEL_14:
    v29 = 1.0;
    v23 = vcvtd_n_f64_s32(10 * v22, 3uLL);
LABEL_16:
    *(v0 + 3746) = v23;
    goto LABEL_17;
  }

  if (v19 == 3)
  {
LABEL_17:
    OUTLINED_FUNCTION_64(1);
    copyvar(v0, v24, (v0 + 3744));
    OUTLINED_FUNCTION_43(8, v25, v26[0], v26[1], v26[2], v26[3], v26[4], v26[5], v26[6], v26[7], v26[8], v26[9], v26[10], v26[11], v26[12], v26[13], v26[14], v26[15], v26[16], v26[17], v26[18], v26[19], v26[20], v26[21], v26[22], v27, v28);
    vretproc(v0);
    result = 0;
    goto LABEL_4;
  }

  if (v19 == 2)
  {
    v22 = HIWORD(v30);
    goto LABEL_14;
  }

LABEL_3:
  vretproc(v0);
  result = 94;
LABEL_4:
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t apply_speed_val()
{
  OUTLINED_FUNCTION_49();
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_13_8(v3, v4, v5, v6, v7, v8, v9, v10, v47, v51, v55, v59, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, SHIDWORD(v143), v147);
  OUTLINED_FUNCTION_20_5(v11, v12, v13, v14, v15, v16, v17, v18, v48, v52, v56, v60, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144, v148, v152, v154, v156, v158);
  v19 = setjmp(v1);
  if (v19)
  {
    goto LABEL_3;
  }

  v27 = OUTLINED_FUNCTION_6_8(v19, v20, v21, v22, v23, v24, v25, v26, v49, v53, v57, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, *v149, v149[4], *v153, *&v153[4], v153[6], v155, SWORD2(v155), SBYTE6(v155), SHIBYTE(v155), v157, v159);
  if (v27)
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_11_8(v27, v28, v29, v30, v31, v32, v33, v34, v50, v54, v58, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142, v146, v150);
  OUTLINED_FUNCTION_8_8();
  v38 = OUTLINED_FUNCTION_12_8();
  move_i(v38, v39, 11);
  v40 = OUTLINED_FUNCTION_39();
  if (!annoCallback(v40, v41, v1))
  {
    goto LABEL_10;
  }

  v42 = *(v0 + 104);
  if (v42)
  {
    v43 = OUTLINED_FUNCTION_33_1(v42);
  }

  else
  {
    v44 = OUTLINED_FUNCTION_34_1();
    v43 = vback(v44, v45);
  }

  if (v43 != 1)
  {
LABEL_3:
    v35 = 94;
  }

  else
  {
LABEL_10:
    *(v0 + 3736) = exp((vcvtd_n_f64_s32(v151 - 50, 1uLL) + 50.0) * -2.0 / 50.0) / 0.135335283 * 100.0 + 0.5;
    OUTLINED_FUNCTION_64(2);
    copyvar(v0, v46, (v0 + 3728));
    v35 = 0;
  }

  vretproc(v0);
  v36 = *MEMORY[0x277D85DE8];
  return v35;
}

void insert_voice_change_pause()
{
  OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_54();
  v171 = *MEMORY[0x277D85DE8];
  v165 = 0;
  v166 = 0;
  v163 = 0;
  v164 = 0;
  v160 = 0u;
  v161 = 0u;
  v158 = 0u;
  v159 = 0u;
  v156 = 0u;
  v157 = 0u;
  OUTLINED_FUNCTION_27_4();
  bzero(&v133, v1);
  OUTLINED_FUNCTION_26_5();
  bzero(v170, v2);
  if (setjmp(v170))
  {
    goto LABEL_3;
  }

  if (ventproc(v0, &v133, v169, v168, v167, v170))
  {
    goto LABEL_3;
  }

  v4 = OUTLINED_FUNCTION_2_9();
  get_parm(v4, v5, v6, -6);
  OUTLINED_FUNCTION_28_3(v7, &v163);
  v159 = 0u;
  v160 = 0u;
  v161 = 0u;
  LODWORD(v158) = -65530;
  *&v157 = 0;
  *(&v157 + 6) = 0;
  LODWORD(v156) = -65532;
  v8 = OUTLINED_FUNCTION_4_8();
  lpta_loadpn(v8, v9);
  OUTLINED_FUNCTION_86();
  lpta_ctxtl();
  rpta_loadpn(v0, v0 + 1400);
  if (!compare_ptas(v0) && !testeq(v0))
  {
    goto LABEL_3;
  }

  v10 = 0;
  OUTLINED_FUNCTION_40();
  v131 = 3;
  v132 = v11;
  while (2)
  {
    starttest(v0, v11);
    OUTLINED_FUNCTION_78(v12, v13, v14, v15, v16, v17, v18, v19, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, *(&v156 + 1), v157, *(&v157 + 1), v158, *(&v158 + 1), v159, *(&v159 + 1), v160, *(&v160 + 1), v161, *(&v161 + 1), v162, v163, v164, v165, v166);
    v20 = lpta_tstctxtl();
    if (!v20)
    {
      setscan_l(v0);
      if (!v20)
      {
        OUTLINED_FUNCTION_87();
        bspush_ca_scan_boa();
LABEL_27:
        if (test_synch(v0, 4, 1u, &unk_2806BB077))
        {
          v21 = v10;
        }

        else
        {
          v21 = 1;
        }

LABEL_18:
        v10 = v21;
LABEL_19:
        v129 = *(v0 + 104);
        if (v129)
        {
          *(v0 + 104) = 0;
          v20 = v129;
        }

        else
        {
          v20 = vback(v0, v10);
          v10 = 0;
        }

        switch(v20)
        {
          case 1:
            v11 = v132;
            continue;
          case 2:
            goto LABEL_9;
          case 3:
            bspop_boa(v0);
            if (test_string_s())
            {
              goto LABEL_19;
            }

            break;
          case 4:
            goto LABEL_27;
          case 5:
            goto LABEL_13;
          case 6:
            goto LABEL_17;
          default:
            goto LABEL_3;
        }

        goto LABEL_3;
      }
    }

    break;
  }

LABEL_9:
  OUTLINED_FUNCTION_78(v20, v21, v22, v23, v24, v25, v26, v27, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, *(&v156 + 1), v157, *(&v157 + 1), v158, *(&v158 + 1), v159, *(&v159 + 1), v160, *(&v160 + 1), v161, *(&v161 + 1), v162, v163, v164, v165, v166);
  if (!lpta_tstctxtl())
  {
    setscan_l(v0);
    if (!v28)
    {
      v29 = OUTLINED_FUNCTION_53();
      if (!savetok(v29, v30))
      {
        advance_tok(v0);
      }
    }
  }

LABEL_13:
  v31 = OUTLINED_FUNCTION_24_5();
  starttest(v31, v32);
  *(v0 + 3634) = 5;
  v33 = OUTLINED_FUNCTION_47();
  npush_v(v33, v34, v35, v36, v37, v38, v39, v40);
  WORD1(v158) = 5;
  v41 = OUTLINED_FUNCTION_53();
  npush_v(v41, v42, v43, v44, v45, v46, v47, v48);
  if (if_testeq(v0, v49, v50, v51, v52, v53, v54, v55))
  {
    goto LABEL_17;
  }

  *(v0 + 3634) = 4;
  v56 = OUTLINED_FUNCTION_47();
  npush_v(v56, v57, v58, v59, v60, v61, v62, v63);
  WORD1(v158) = 4;
  v64 = OUTLINED_FUNCTION_53();
  npush_v(v64, v65, v66, v67, v68, v69, v70, v71);
  if (if_testeq(v0, v72, v73, v74, v75, v76, v77, v78))
  {
    goto LABEL_17;
  }

  *(v0 + 3634) = 9;
  v79 = OUTLINED_FUNCTION_47();
  npush_v(v79, v80, v81, v82, v83, v84, v85, v86);
  WORD1(v158) = 9;
  v87 = OUTLINED_FUNCTION_53();
  npush_v(v87, v88, v89, v90, v91, v92, v93, v94);
  if (if_testeq(v0, v95, v96, v97, v98, v99, v100, v101) || (*(v0 + 3634) = 10, v102 = OUTLINED_FUNCTION_47(), npush_v(v102, v103, v104, v105, v106, v107, v108, v109), WORD1(v158) = 10, v110 = OUTLINED_FUNCTION_53(), npush_v(v110, v111, v112, v113, v114, v115, v116, v117), if_testeq(v0, v118, v119, v120, v121, v122, v123, v124)))
  {
LABEL_17:
    lpta_rpta_loadp(v0, &v165, &v163);
    OUTLINED_FUNCTION_71();
    settvar_s();
    v125 = OUTLINED_FUNCTION_88();
    npush_s(v125);
    WORD1(v156) = 4;
    v126 = OUTLINED_FUNCTION_71();
    npop(v126, v127);
    insert_2ptv();
    v21 = v10;
    if (!v128)
    {
      goto LABEL_3;
    }

    goto LABEL_18;
  }

LABEL_3:
  vretproc(v0);
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_69();
}

uint64_t spr_output_anno()
{
  OUTLINED_FUNCTION_0_10();
  v159 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_9(v2, v3, v4, v5, v6, v7, v8, v9, v47, v51, v55, v59, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v146, v149, v152, v154, v156, v158);
  OUTLINED_FUNCTION_16_7();
  if (!setjmp(v1))
  {
    OUTLINED_FUNCTION_7_8();
    v15 = OUTLINED_FUNCTION_73(v10, v11, v12, v13, v14);
    if (!v15)
    {
      OUTLINED_FUNCTION_19_5(v15, v16, v17, v18, v19, v20, v21, v22, v48, v52, v56, v60, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144, v147, v150, v153, v155, v157);
      v23 = OUTLINED_FUNCTION_2_9();
      get_parm(v23, v24, v25, -6);
      v26 = OUTLINED_FUNCTION_9_8();
      get_parm(v26, v27, v28, -6);
      v29 = OUTLINED_FUNCTION_37_0();
      push_ptr_init(v29, v30);
      v31 = OUTLINED_FUNCTION_4_8();
      if (!lpta_loadp_setscan_r(v31, v32))
      {
        OUTLINED_FUNCTION_10_8();
        if (!test_string_s())
        {
          OUTLINED_FUNCTION_35_0(2, v49, v53, v57, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141);
          v35 = OUTLINED_FUNCTION_29_3();
          if (lpta_loadp_setscan_r(v35, v36) || (OUTLINED_FUNCTION_3_9(), test_string_s()) || (*(v0 + 136) = 1, v37 = OUTLINED_FUNCTION_25_5(), v37))
          {
            v45 = OUTLINED_FUNCTION_37_0();
            if (lpta_loadp_setscan_r(v45, v46) || (OUTLINED_FUNCTION_3_9(), test_string_s()) || (*(v0 + 136) = 1, v37 = OUTLINED_FUNCTION_25_5(), v37))
            {
              OUTLINED_FUNCTION_14_7();
              v37 = handle_invalid_anno();
            }

            else
            {
              *(v0 + 3450) = 1;
            }
          }

          else
          {
            *(v0 + 3450) = 0;
          }

          OUTLINED_FUNCTION_17_7(v37, v38, v39, v40, v41, v42, v43, v44, v50, v54, v58, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142, v145, v148, v151);
        }
      }
    }
  }

  vretproc(v0);
  v33 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_68();
}

void spellout_mode_anno()
{
  OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_0_10();
  v1 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_23_5(v2, v3, v4, v5, v6, v7, v8, v9, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, SHIDWORD(v73), v74, v75, v76, v77, v78, v79, v80, v81);
  OUTLINED_FUNCTION_26_5();
  bzero(v92, v10);
  v11 = setjmp(v92);
  if (v11)
  {
    goto LABEL_5;
  }

  v18 = OUTLINED_FUNCTION_38_0(v11, &v50, v12, v13, v14, v15, v16, v17, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92[0]);
  if (v18)
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_31_2(v18, &v80);
  v19 = OUTLINED_FUNCTION_2_9();
  get_parm(v19, v20, v21, -6);
  OUTLINED_FUNCTION_28_3(v22, &v76);
  v23 = OUTLINED_FUNCTION_85();
  push_ptr_init(v23, v24);
  HIDWORD(v73) = 65532;
  v25 = OUTLINED_FUNCTION_4_8();
  if (lpta_loadp_setscan_r(v25, v26))
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_3_9();
  if (test_string_s())
  {
    goto LABEL_5;
  }

  while (2)
  {
    v28 = OUTLINED_FUNCTION_46();
    savescptr(v28, v29, &v74);
    v30 = OUTLINED_FUNCTION_62();
    starttest(v30, v31);
    v32 = OUTLINED_FUNCTION_63();
    if (lpta_loadp_setscan_r(v32, v33))
    {
      goto LABEL_24;
    }

    v34 = OUTLINED_FUNCTION_30_2();
    if (!testFldeq(v34, v35, 3, 2) && !advance_tok(v0) && !savetok(v0, (v0 + 1784)))
    {
      *(v0 + 136) = 1;
      if (!OUTLINED_FUNCTION_25_5())
      {
        token_to_number();
LABEL_12:
        v36 = *(v0 + 3778);
        if (*(v0 + 3778) < 4)
        {
LABEL_13:
          if (*(v0 + 5094) == *(v0 + 5090) || v36 != 3)
          {
LABEL_17:
            *(v0 + 2742) = v36;
            v38 = OUTLINED_FUNCTION_53();
            starttest(v38, v39);
            v40 = OUTLINED_FUNCTION_72();
            move_i(v40, v41, v42);
            v43 = OUTLINED_FUNCTION_72();
            if (annoCallback(v43, v44, v45))
            {
              goto LABEL_18;
            }
          }

LABEL_25:
          OUTLINED_FUNCTION_44(v77);
          break;
        }

LABEL_24:
        OUTLINED_FUNCTION_82();
        goto LABEL_25;
      }
    }

LABEL_18:
    v46 = *(v0 + 104);
    if (v46)
    {
      v47 = OUTLINED_FUNCTION_33_1(v46);
    }

    else
    {
      v48 = OUTLINED_FUNCTION_34_1();
      v47 = vback(v48, v49);
    }

    switch(v47)
    {
      case 2:
        continue;
      case 3:
        goto LABEL_24;
      case 4:
        goto LABEL_12;
      case 5:
        v36 = *(v0 + 3778);
        goto LABEL_13;
      case 6:
      case 7:
      case 9:
      case 10:
        goto LABEL_25;
      case 8:
        LOWORD(v36) = *(v0 + 3778);
        goto LABEL_17;
      default:
        goto LABEL_5;
    }
  }

LABEL_5:
  vretproc(v0);
  v27 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_69();
}