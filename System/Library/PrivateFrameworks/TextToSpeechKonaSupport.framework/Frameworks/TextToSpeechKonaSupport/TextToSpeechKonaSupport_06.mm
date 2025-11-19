uint64_t por_tok_dict()
{
  OUTLINED_FUNCTION_12_21();
  v68 = *MEMORY[0x277D85DE8];
  v62 = 0;
  v63 = 0;
  v60 = 0;
  v61 = 0;
  bzero(&v37, 0xB8uLL);
  bzero(v67, 0xC0uLL);
  if (!setjmp(v67) && !ventproc(v0, &v37, v66, v65, v64, v67))
  {
    v1 = OUTLINED_FUNCTION_5_22();
    get_parm(v1, v2, v3, -6);
    OUTLINED_FUNCTION_11_21();
    fence_22(v0);
    v4 = OUTLINED_FUNCTION_6_22();
    starttest(v4, v5);
    v6 = OUTLINED_FUNCTION_5_22();
    lpta_rpta_loadp(v6, v7, v8);
    if (!actd_lookup(v0, 5, 0, 0))
    {
      while (2)
      {
        actd_goto(v0);
LABEL_7:
        v19 = *(v0 + 104);
        if (v19)
        {
          *(v0 + 104) = 0;
          inserted = v19;
        }

        else
        {
          inserted = vback(v0, 0);
        }

        v9 = 0;
        v21 = &unk_2806BB7F5;
        v22 = 8;
        switch(inserted)
        {
          case 1:
            OUTLINED_FUNCTION_8_22(inserted, v12, v13, v14, v15, v16, v17, v18, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62);
            v9 = 0;
            v23 = OUTLINED_FUNCTION_3_23();
            v26 = 7;
            goto LABEL_61;
          case 2:
            goto LABEL_60;
          case 3:
            v21 = &unk_2806BB626;
            goto LABEL_53;
          case 4:
            v21 = &unk_2806BB8DC;
            goto LABEL_43;
          case 5:
            v21 = &unk_2806BB62B;
            goto LABEL_53;
          case 6:
            v21 = &unk_2806BB7FD;
            goto LABEL_60;
          case 7:
            v21 = &unk_2806BB543;
            goto LABEL_46;
          case 8:
            v21 = &unk_2806BBAC0;
            goto LABEL_50;
          case 9:
            v21 = &unk_2806BB630;
            goto LABEL_53;
          case 10:
            v21 = &unk_2806BB546;
LABEL_46:
            v22 = 3;
            goto LABEL_60;
          case 11:
            v21 = &unk_2806BBBF6;
            goto LABEL_55;
          case 12:
            v21 = &unk_2806BBA96;
            goto LABEL_50;
          case 13:
            v21 = &unk_2806BBBD8;
            goto LABEL_55;
          case 14:
            v21 = &unk_2806BBAA4;
            goto LABEL_50;
          case 15:
            v21 = &unk_2806BBBE7;
            goto LABEL_55;
          case 16:
            v21 = &unk_2806BB635;
            goto LABEL_53;
          case 17:
            v21 = &unk_2806BBC05;
LABEL_55:
            v22 = 15;
            goto LABEL_60;
          case 18:
            v21 = &unk_2806BB6BD;
            goto LABEL_41;
          case 19:
            v21 = &unk_2806BB805;
            goto LABEL_60;
          case 20:
            v32 = OUTLINED_FUNCTION_6_22();
            starttest(v32, v33);
            if (*(v0 + 2290) != *(v0 + 2914))
            {
              goto LABEL_24;
            }

            OUTLINED_FUNCTION_8_22(inserted, v12, v13, v14, v15, v16, v17, v18, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62);
            v9 = 0;
            v34 = OUTLINED_FUNCTION_3_23();
            inserted = insert_2pt_s(v34, v35, 16, v36, 0);
            if (inserted)
            {
              goto LABEL_24;
            }

            goto LABEL_5;
          case 21:
            v27 = OUTLINED_FUNCTION_6_22();
            starttest(v27, v28);
            if (*(v0 + 2290) != *(v0 + 2914))
            {
              goto LABEL_19;
            }

            OUTLINED_FUNCTION_8_22(inserted, v12, v13, v14, v15, v16, v17, v18, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62);
            v9 = 0;
            v29 = OUTLINED_FUNCTION_3_23();
            inserted = insert_2pt_s(v29, v30, 14, v31, 0);
            if (inserted)
            {
              goto LABEL_19;
            }

            goto LABEL_5;
          case 22:
            v21 = &unk_2806BB657;
LABEL_41:
            v22 = 6;
            goto LABEL_60;
          case 23:
            v21 = &unk_2806BB5A1;
            goto LABEL_30;
          case 24:
            v21 = &unk_2806BB748;
            goto LABEL_58;
          case 25:
            v21 = &unk_2806BB63A;
LABEL_53:
            v22 = 5;
            goto LABEL_60;
          case 26:
            v21 = &unk_2806BB5A5;
LABEL_30:
            v22 = 4;
            goto LABEL_60;
          case 27:
            v21 = &unk_2806BB99E;
            goto LABEL_26;
          case 28:
            v21 = &unk_2806BB9A9;
LABEL_26:
            v22 = 11;
            goto LABEL_60;
          case 29:
            v21 = &unk_2806BBAEA;
            goto LABEL_50;
          case 30:
            v21 = &unk_2806BBD12;
            v22 = 19;
            goto LABEL_60;
          case 31:
            v21 = &unk_2806BB74F;
            goto LABEL_58;
          case 32:
            v21 = &unk_2806BB756;
LABEL_58:
            v22 = 7;
            goto LABEL_60;
          case 33:
            v21 = &unk_2806BBCC9;
            v22 = 17;
            goto LABEL_60;
          case 34:
            v21 = &unk_2806BB947;
            v22 = 10;
            goto LABEL_60;
          case 35:
            v21 = &unk_2806BBAF8;
LABEL_50:
            v22 = 14;
            goto LABEL_60;
          case 36:
            v21 = &unk_2806BB8E5;
            goto LABEL_43;
          case 37:
            v21 = &unk_2806BB8EE;
LABEL_43:
            v22 = 9;
LABEL_60:
            OUTLINED_FUNCTION_8_22(inserted, v12, v13, v14, v15, v16, v17, v18, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62);
            v9 = 0;
            v23 = OUTLINED_FUNCTION_3_23();
            v26 = v22;
            v25 = v21;
            goto LABEL_61;
          case 39:
            continue;
          case 40:
          case 41:
          case 43:
          case 45:
            goto LABEL_5;
          case 42:
LABEL_24:
            OUTLINED_FUNCTION_8_22(inserted, v12, v13, v14, v15, v16, v17, v18, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62);
            v9 = 0;
            v23 = OUTLINED_FUNCTION_3_23();
            v26 = 14;
            goto LABEL_61;
          case 44:
LABEL_19:
            OUTLINED_FUNCTION_8_22(inserted, v12, v13, v14, v15, v16, v17, v18, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62);
            v9 = 0;
            v23 = OUTLINED_FUNCTION_3_23();
            v26 = 12;
LABEL_61:
            if (!insert_2pt_s(v23, v24, v26, v25, 0))
            {
              goto LABEL_5;
            }

            goto LABEL_7;
          default:
            goto LABEL_4;
        }
      }
    }
  }

LABEL_4:
  v9 = 94;
LABEL_5:
  vretproc(v0);
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t OUTLINED_FUNCTION_8_22(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, char a34)
{

  return lpta_rpta_loadp(v34, &a34, &a32);
}

void OUTLINED_FUNCTION_10_22(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, int a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  *(v41 - 88) = v40;
  a39 = 0;
  a40 = 0;
  a37 = 0;
  a38 = 0;
  a36 = 0;
  a33 = 0;
  a34 = 0;

  bzero(&a10, 0xB8uLL);
}

void OUTLINED_FUNCTION_11_21()
{

  get_parm(v0, v2, v1, -6);
}

uint64_t OUTLINED_FUNCTION_13_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, int a40, char a41, int a42, __int16 a43, char a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, char a50)
{

  return ventproc(v50, &a10, &a48, &a44, &a41, &a50);
}

void OUTLINED_FUNCTION_14_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{

  bzero(&a44, 0xC0uLL);
}

uint64_t OUTLINED_FUNCTION_15_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, int a35, int a36)
{
  a36 = 65532;

  return push_ptr_init(v36, &a33);
}

uint64_t por_words(uint64_t a1, __int16 *a2, __int16 *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v26[0] = 0;
  v26[1] = 0;
  v25[0] = 0;
  v25[1] = 0;
  bzero(v24, 0xB8uLL);
  bzero(v30, 0xC0uLL);
  if (setjmp(v30) || ventproc(a1, v24, v29, v28, v27, v30) || (get_parm(a1, v26, a2, -6), get_parm(a1, v25, a3, -6), *(*(a1 + 192) + 8121) = 0, memset(*(a1 + 264), *(a1 + 288), *(a1 + 288)), lpta_rpta_loadp(a1, v26, v25), actd_lookup(a1, 6, 0, 0)))
  {
LABEL_4:
    vretproc(a1);
    result = 94;
  }

  else
  {
LABEL_6:
    starttest(a1, 22);
    OUTLINED_FUNCTION_0_26();
    if (user_rootdict())
    {
LABEL_7:
      actd_goto(a1);
      while (2)
      {
        v8 = *(a1 + 104);
        if (v8)
        {
          *(a1 + 104) = 0;
          v9 = v8;
        }

        else
        {
          v9 = vback(a1, 0);
        }

        v10 = &unk_2806BBEB2;
        v11 = 10;
        switch(v9)
        {
          case 1:
            v12 = OUTLINED_FUNCTION_0_26();
            lpta_rpta_loadp(v12, v13, v14);
            if (insert_2pt_s(a1, 4u, 0, &null_str_6, 0))
            {
              continue;
            }

            lpta_storep(a1, a1 + 5976);
            v15 = a1;
            v16 = 3;
            v17 = &unk_2806BBE58;
            goto LABEL_36;
          case 2:
            goto LABEL_35;
          case 3:
            v10 = &unk_2806BBE56;
            v11 = 2;
            goto LABEL_35;
          case 4:
            v10 = &unk_2806BBE80;
            goto LABEL_24;
          case 5:
            v10 = &unk_2806BBE5B;
            goto LABEL_28;
          case 6:
            v10 = &unk_2806BBE67;
            goto LABEL_32;
          case 7:
            v10 = &unk_2806BBE5F;
            goto LABEL_28;
          case 8:
            v10 = &unk_2806BBE6C;
            goto LABEL_32;
          case 9:
            v10 = &unk_2806BBE71;
            goto LABEL_32;
          case 10:
            v10 = &unk_2806BBE86;
            goto LABEL_24;
          case 11:
            v10 = &unk_2806BBE92;
            goto LABEL_34;
          case 12:
            v10 = &unk_2806BBE63;
LABEL_28:
            v11 = 4;
            goto LABEL_35;
          case 13:
            v10 = &unk_2806BBE99;
LABEL_34:
            v11 = 7;
            goto LABEL_35;
          case 14:
            v10 = &unk_2806BBEA0;
            goto LABEL_30;
          case 15:
            v10 = &unk_2806BBEA9;
LABEL_30:
            v11 = 9;
            goto LABEL_35;
          case 16:
            v10 = &unk_2806BBE8C;
LABEL_24:
            v11 = 6;
            goto LABEL_35;
          case 17:
            v10 = &unk_2806BBE76;
            goto LABEL_32;
          case 18:
            v10 = &unk_2806BBE7B;
LABEL_32:
            v11 = 5;
LABEL_35:
            v18 = OUTLINED_FUNCTION_0_26();
            lpta_rpta_loadp(v18, v19, v20);
            v15 = a1;
            v16 = v11;
            v17 = v10;
LABEL_36:
            if (!insert_2pt_s(v15, 4u, v16, v17, 0))
            {
              goto LABEL_37;
            }

            continue;
          case 20:
            goto LABEL_6;
          case 21:
          case 23:
LABEL_37:
            v21 = OUTLINED_FUNCTION_0_26();
            lpta_rpta_loadp(v21, v22, v23);
            if (insert_2pt_s(a1, 3u, 1, &_MergedGlobals_19, 0))
            {
              continue;
            }

            *(a1 + 3886) = 1;
            break;
          case 22:
            goto LABEL_7;
          default:
            goto LABEL_4;
        }

        break;
      }
    }

    vretproc(a1);
    result = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t por_cons_durs(uint64_t a1, __int16 *a2, __int16 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v173 = *MEMORY[0x277D85DE8];
  memset(v168, 0, sizeof(v168));
  OUTLINED_FUNCTION_22_15(a1, a2, a3, a4, a5, a6, a7, a8, v167[0]);
  OUTLINED_FUNCTION_23_15();
  bzero(v172, v11);
  if (setjmp(v172) || ventproc(a1, v167, v171, v170, v169, v172))
  {
LABEL_3:
    v12 = 94;
    goto LABEL_4;
  }

  v15 = OUTLINED_FUNCTION_34_8();
  get_parm(v15, v16, a2, -6);
  v17 = OUTLINED_FUNCTION_28_11();
  get_parm(v17, v18, a3, -6);
  v19 = OUTLINED_FUNCTION_31_10();
  push_ptr_init(v19, v20);
  v21 = OUTLINED_FUNCTION_0_27();
  startloop(v21, v22);
  v23 = OUTLINED_FUNCTION_34_8();
  lpta_loadpn(v23, v24);
  OUTLINED_FUNCTION_16_19();
  lpta_mover();
  v25 = OUTLINED_FUNCTION_19_16();
  lpta_storep(v25, v26);
  v27 = OUTLINED_FUNCTION_28_11();
  lpta_loadpn(v27, v28);
  OUTLINED_FUNCTION_16_19();
  lpta_mover();
  v29 = OUTLINED_FUNCTION_31_10();
  lpta_storep(v29, v30);
  v31 = OUTLINED_FUNCTION_19_16();
  if (!forall_to_test(v31, v32, v168))
  {
LABEL_6:
    v33 = OUTLINED_FUNCTION_14_20();
    bspush_ca(v33);
    v34 = OUTLINED_FUNCTION_3_24();
    if (!lpta_loadp_setscan_r(v34, v35) && !advance_tok(a1))
    {
LABEL_8:
      savescptr(a1, 4, a1 + 1592);
LABEL_9:
      *(a1 + 4682) = 0;
      v36 = OUTLINED_FUNCTION_3_24();
      if (!lpta_loadp_setscan_r(v36, v37))
      {
        OUTLINED_FUNCTION_2_25();
        if (!test_string_s())
        {
          por_ph_p_dur(a1);
          goto LABEL_72;
        }
      }

LABEL_11:
      v38 = OUTLINED_FUNCTION_3_24();
      if (!lpta_loadp_setscan_r(v38, v39))
      {
        OUTLINED_FUNCTION_2_25();
        if (!test_string_s())
        {
          por_ph_t_dur(a1);
          goto LABEL_72;
        }
      }

LABEL_13:
      v40 = OUTLINED_FUNCTION_3_24();
      if (!lpta_loadp_setscan_r(v40, v41))
      {
        OUTLINED_FUNCTION_2_25();
        if (!test_string_s())
        {
          por_ph_k_dur(a1, v42, v43, v44, v45, v46, v47, v48);
          goto LABEL_72;
        }
      }

LABEL_15:
      v49 = OUTLINED_FUNCTION_3_24();
      if (!lpta_loadp_setscan_r(v49, v50))
      {
        OUTLINED_FUNCTION_2_25();
        if (!test_string_s())
        {
          por_ph_b_dur(a1);
          goto LABEL_72;
        }
      }

LABEL_17:
      v51 = OUTLINED_FUNCTION_3_24();
      if (!lpta_loadp_setscan_r(v51, v52))
      {
        OUTLINED_FUNCTION_2_25();
        if (!test_string_s())
        {
          por_ph_d_dur(a1);
          goto LABEL_72;
        }
      }

LABEL_19:
      v53 = OUTLINED_FUNCTION_3_24();
      if (!lpta_loadp_setscan_r(v53, v54))
      {
        OUTLINED_FUNCTION_2_25();
        if (!test_string_s())
        {
          por_ph_g_dur(a1, v55, v56, v57, v58, v59, v60, v61);
          goto LABEL_72;
        }
      }

LABEL_21:
      v62 = OUTLINED_FUNCTION_3_24();
      if (!lpta_loadp_setscan_r(v62, v63))
      {
        OUTLINED_FUNCTION_2_25();
        if (!test_string_s())
        {
          por_ph_w_dur(a1);
          goto LABEL_72;
        }
      }

LABEL_23:
      v64 = OUTLINED_FUNCTION_3_24();
      if (lpta_loadp_setscan_r(v64, v65) || (OUTLINED_FUNCTION_2_25(), test_string_s()))
      {
LABEL_25:
        v73 = OUTLINED_FUNCTION_3_24();
        if (!lpta_loadp_setscan_r(v73, v74))
        {
          OUTLINED_FUNCTION_2_25();
          if (!test_string_s())
          {
            por_ph_l_dur(a1);
            goto LABEL_72;
          }
        }

LABEL_27:
        v75 = OUTLINED_FUNCTION_3_24();
        if (!lpta_loadp_setscan_r(v75, v76))
        {
          OUTLINED_FUNCTION_2_25();
          if (!test_string_s())
          {
            por_ph_ly_dur(a1, v77, v78, v79, v80, v81, v82, v83);
            goto LABEL_72;
          }
        }

LABEL_29:
        v84 = OUTLINED_FUNCTION_3_24();
        if (!lpta_loadp_setscan_r(v84, v85))
        {
          OUTLINED_FUNCTION_2_25();
          if (!test_string_s())
          {
            por_ph_r_dur(a1);
LABEL_72:
            cons_syll_phone_adjust(a1, v86, v87, v88, v89, v90, v91, v92);
LABEL_73:
            insert_dur(a1, (a1 + 3392), (a1 + 1576), (a1 + 1592), (a1 + 1024));
LABEL_74:
            v159 = OUTLINED_FUNCTION_14_20();
            starttest(v159, v160);
            if (*(a1 + 4682))
            {
              v161 = OUTLINED_FUNCTION_14_20();
              starttest_e(v161, v162);
              insert_burst_dur(a1);
            }

LABEL_76:
            if (!forto_adv_upto_r(a1, 1, 2, 52, 4, a1 + 1576))
            {
              v12 = 0;
              goto LABEL_4;
            }

            goto LABEL_77;
          }
        }

LABEL_41:
        v93 = OUTLINED_FUNCTION_3_24();
        if (!lpta_loadp_setscan_r(v93, v94))
        {
          OUTLINED_FUNCTION_2_25();
          if (!test_string_s())
          {
            por_ph_R_dur(a1, v95, v96, v97, v98, v99, v100, v101);
            goto LABEL_72;
          }
        }

LABEL_44:
        v102 = OUTLINED_FUNCTION_3_24();
        if (!lpta_loadp_setscan_r(v102, v103))
        {
          OUTLINED_FUNCTION_2_25();
          if (!test_string_s())
          {
            por_ph_f_dur(a1, v104, v105, v106, v107, v108, v109, v110);
            goto LABEL_72;
          }
        }

LABEL_47:
        v111 = OUTLINED_FUNCTION_3_24();
        if (!lpta_loadp_setscan_r(v111, v112))
        {
          OUTLINED_FUNCTION_2_25();
          if (!test_string_s())
          {
LABEL_49:
            por_ph_sS_dur(a1, v113, v114, v115, v116, v117, v118, v119);
            goto LABEL_72;
          }
        }

LABEL_50:
        v120 = OUTLINED_FUNCTION_3_24();
        if (!lpta_loadp_setscan_r(v120, v121))
        {
          OUTLINED_FUNCTION_2_25();
          if (!test_string_s())
          {
            goto LABEL_49;
          }
        }

LABEL_52:
        v122 = OUTLINED_FUNCTION_3_24();
        if (!lpta_loadp_setscan_r(v122, v123))
        {
          OUTLINED_FUNCTION_2_25();
          if (!test_string_s())
          {
            por_ph_v_dur(a1, v124, v125, v126, v127, v128, v129, v130);
            goto LABEL_72;
          }
        }

LABEL_55:
        v131 = OUTLINED_FUNCTION_3_24();
        if (!lpta_loadp_setscan_r(v131, v132))
        {
          OUTLINED_FUNCTION_2_25();
          if (!test_string_s())
          {
            por_ph_z_dur(a1);
            goto LABEL_72;
          }
        }

LABEL_58:
        v133 = OUTLINED_FUNCTION_3_24();
        if (!lpta_loadp_setscan_r(v133, v134))
        {
          OUTLINED_FUNCTION_2_25();
          if (!test_string_s())
          {
            por_ph_Z_dur(a1);
            goto LABEL_72;
          }
        }

LABEL_61:
        v135 = OUTLINED_FUNCTION_3_24();
        if (!lpta_loadp_setscan_r(v135, v136))
        {
          OUTLINED_FUNCTION_2_25();
          if (!test_string_s())
          {
LABEL_63:
            por_nasal_dur(a1, v137, v138, v139, v140, v141, v142, v143);
            goto LABEL_72;
          }
        }

LABEL_64:
        v144 = OUTLINED_FUNCTION_3_24();
        if (!lpta_loadp_setscan_r(v144, v145))
        {
          OUTLINED_FUNCTION_2_25();
          if (!test_string_s())
          {
            goto LABEL_63;
          }
        }

LABEL_66:
        v146 = OUTLINED_FUNCTION_3_24();
        if (!lpta_loadp_setscan_r(v146, v147))
        {
          OUTLINED_FUNCTION_2_25();
          if (!test_string_s())
          {
            por_ph_N_dur(a1, v148, v149, v150, v151, v152, v153, v154);
            goto LABEL_72;
          }
        }

LABEL_69:
        v155 = OUTLINED_FUNCTION_18_17();
        starttest(v155, v156);
        v157 = OUTLINED_FUNCTION_3_24();
        if (lpta_loadp_setscan_r(v157, v158))
        {
          goto LABEL_76;
        }

        OUTLINED_FUNCTION_2_25();
        if (test_string_s())
        {
          goto LABEL_76;
        }
      }

      por_ph_y_dur(a1, v66, v67, v68, v69, v70, v71, v72);
      goto LABEL_72;
    }
  }

LABEL_77:
  v163 = *(a1 + 104);
  if (v163)
  {
    v164 = OUTLINED_FUNCTION_24_15(v163);
  }

  else
  {
    v165 = OUTLINED_FUNCTION_25_14();
    v164 = vback(v165, v166);
  }

  v12 = 0;
  switch(v164)
  {
    case 1:
      break;
    case 2:
      goto LABEL_9;
    case 3:
    case 48:
      goto LABEL_76;
    case 4:
      goto LABEL_8;
    case 5:
      goto LABEL_11;
    case 6:
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
      goto LABEL_72;
    case 8:
      goto LABEL_13;
    case 10:
      goto LABEL_15;
    case 12:
      goto LABEL_17;
    case 14:
      goto LABEL_19;
    case 16:
      goto LABEL_21;
    case 18:
      goto LABEL_23;
    case 20:
      goto LABEL_25;
    case 22:
      goto LABEL_27;
    case 24:
      goto LABEL_29;
    case 26:
      goto LABEL_41;
    case 28:
      goto LABEL_44;
    case 30:
      goto LABEL_47;
    case 32:
      goto LABEL_50;
    case 34:
      goto LABEL_52;
    case 36:
      goto LABEL_55;
    case 38:
      goto LABEL_58;
    case 40:
      goto LABEL_61;
    case 42:
      goto LABEL_64;
    case 44:
      goto LABEL_66;
    case 46:
      goto LABEL_69;
    case 50:
      goto LABEL_73;
    case 51:
      goto LABEL_74;
    case 52:
      goto LABEL_6;
    default:
      goto LABEL_3;
  }

LABEL_4:
  vretproc(a1);
  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t por_ph_p_dur(uint64_t a1)
{
  OUTLINED_FUNCTION_15_20(*MEMORY[0x277D85DE8], v30);
  OUTLINED_FUNCTION_10_23(v3, v4, v5, v6, v7, v8, v9, v10, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_1_25(v11, v12, v13, v14, v15, v16, v17, v18, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, *v78, v78[4], *v80, *&v80[4], v80[6], v82, SWORD2(v82), SBYTE6(v82), SHIBYTE(v82), v84, v86))
  {
    v19 = 94;
  }

  else
  {
    v22 = OUTLINED_FUNCTION_37_7();
    voiceless_stop_dur(v22, v23, v24, v25, v26, v27, v28, v29);
    v19 = 0;
    *(a1 + 4682) = 10;
  }

  vretproc(a1);
  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

uint64_t por_ph_t_dur(uint64_t a1)
{
  OUTLINED_FUNCTION_15_20(*MEMORY[0x277D85DE8], v45);
  OUTLINED_FUNCTION_10_23(v3, v4, v5, v6, v7, v8, v9, v10, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_1_25(v11, v12, v13, v14, v15, v16, v17, v18, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, *v93, v93[4], *v95, *&v95[4], v95[6], v97, SWORD2(v97), SBYTE6(v97), SHIBYTE(v97), v99, v101))
  {
LABEL_3:
    vretproc(a1);
    result = 94;
  }

  else
  {
    fence_23(a1);
    *(a1 + 4682) = 10;
    v21 = OUTLINED_FUNCTION_4_23();
    if (lpta_loadp_setscan_r(v21, v22) || (OUTLINED_FUNCTION_2_25(), test_string_s()))
    {
LABEL_7:
      voiceless_stop_dur(a1, v23, v24, v25, v26, v27, v28, v29);
    }

    else
    {
      *(a1 + 4682) = 5;
      v30 = OUTLINED_FUNCTION_9_23();
      starttest(v30, v31);
      v32 = OUTLINED_FUNCTION_3_24();
      if (lpta_loadp_setscan_l(v32, v33))
      {
LABEL_10:
        v34 = 0x4041800000000000;
      }

      else
      {
        v35 = OUTLINED_FUNCTION_2_25();
        if (testFldeq(v35, v36, v37, 1))
        {
          v38 = 0;
        }

        else
        {
          bspush_ca_scan_boa();
          v39 = OUTLINED_FUNCTION_7_23();
          v38 = !testFldeq(v39, v40, 3, v41);
        }

        v42 = v38;
        while (2)
        {
          v43 = *(a1 + 104);
          if (v43)
          {
            v44 = OUTLINED_FUNCTION_24_15(v43);
            v42 = v23;
          }

          else
          {
            v44 = vback(a1, v42);
            v42 = 0;
          }

          switch(v44)
          {
            case 1:
              goto LABEL_7;
            case 2:
              goto LABEL_10;
            case 3:
              bspop_boa(a1);
              if (advance_tok(a1))
              {
                continue;
              }

              v34 = 0x4034000000000000;
              break;
            case 4:
            case 5:
              goto LABEL_8;
            default:
              goto LABEL_3;
          }

          break;
        }
      }

      *(a1 + 3400) = v34;
    }

LABEL_8:
    vretproc(a1);
    result = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t por_ph_k_dur(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v124 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_22_15(a1, a2, a3, a4, a5, a6, a7, a8, v71);
  OUTLINED_FUNCTION_23_15();
  OUTLINED_FUNCTION_38_6(v10, v11, v12, v13, v14, v15, v16, v17, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, 0, 0, v119, v120, v121, v122, v123);
  v18 = setjmp(v8);
  if (!v18 && !OUTLINED_FUNCTION_13_22(v18, v19, v20, v21, v22, v23, v24, v25, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v118[0], v118[1], v119, SBYTE4(v119), v120, SWORD2(v120), SBYTE6(v120), v121, SWORD2(v121), SBYTE6(v121), SHIBYTE(v121), v122, v123))
  {
    v29 = OUTLINED_FUNCTION_31_10();
    push_ptr_init(v29, v30);
    v31 = OUTLINED_FUNCTION_37_7();
    voiceless_stop_dur(v31, v32, v33, v34, v35, v36, v37, v38);
    while (2)
    {
      v39 = OUTLINED_FUNCTION_34_8();
      starttest(v39, v40);
      v41 = OUTLINED_FUNCTION_4_23();
      if (lpta_loadp_setscan_r(v41, v42))
      {
LABEL_7:
        starttest(a1, 6);
        v43 = OUTLINED_FUNCTION_4_23();
        if (lpta_loadp_setscan_l(v43, v44))
        {
LABEL_27:
          v70 = 20;
          goto LABEL_28;
        }

LABEL_17:
        v53 = OUTLINED_FUNCTION_39_5();
        savescptr(v53, v54, v118);
        v55 = OUTLINED_FUNCTION_16_19();
        if (!npush_fld(v55, v56, 8))
        {
          OUTLINED_FUNCTION_33_9();
          if (!if_testeq(a1, v57, v58, v59, v60, v61, v62, v63) && !advance_tok(a1))
          {
            v64 = OUTLINED_FUNCTION_31_10();
            if (!lpta_loadp_setscan_r(v64, v65))
            {
              bspush_ca_scan(a1, 8);
              v66 = OUTLINED_FUNCTION_11_22();
              v69 = 28;
LABEL_24:
              if (!testFldeq(v66, v67, v68, v69))
              {
LABEL_25:
                if (!advance_tok(a1))
                {
                  v70 = 25;
LABEL_28:
                  v26 = 0;
                  *(a1 + 4682) = v70;
                  goto LABEL_4;
                }
              }
            }
          }
        }
      }

      else
      {
        bspush_ca_scan(a1, 3);
        v45 = OUTLINED_FUNCTION_8_23();
        v48 = 1;
LABEL_10:
        if (!testFldeq(v45, v46, v47, v48))
        {
LABEL_11:
          if (!advance_tok(a1))
          {
LABEL_29:
            v26 = 0;
            goto LABEL_4;
          }
        }
      }

      v49 = *(a1 + 104);
      if (v49)
      {
        v50 = OUTLINED_FUNCTION_24_15(v49);
      }

      else
      {
        v51 = OUTLINED_FUNCTION_25_14();
        v50 = vback(v51, v52);
      }

      switch(v50)
      {
        case 1:
          continue;
        case 2:
          goto LABEL_7;
        case 3:
          v45 = OUTLINED_FUNCTION_8_23();
          v48 = 2;
          goto LABEL_10;
        case 4:
          goto LABEL_11;
        case 5:
          goto LABEL_29;
        case 6:
          goto LABEL_27;
        case 7:
          goto LABEL_17;
        case 8:
          bspush_ca_scan(a1, 10);
          v66 = OUTLINED_FUNCTION_11_22();
          v69 = 23;
          goto LABEL_24;
        case 9:
          goto LABEL_25;
        case 10:
          v66 = OUTLINED_FUNCTION_11_22();
          v69 = 25;
          goto LABEL_24;
        default:
          goto LABEL_3;
      }
    }
  }

LABEL_3:
  v26 = 94;
LABEL_4:
  vretproc(a1);
  v27 = *MEMORY[0x277D85DE8];
  return v26;
}

uint64_t por_ph_b_dur(uint64_t a1)
{
  OUTLINED_FUNCTION_15_20(*MEMORY[0x277D85DE8], v23);
  OUTLINED_FUNCTION_10_23(v3, v4, v5, v6, v7, v8, v9, v10, v24, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_1_25(v11, v12, v13, v14, v15, v16, v17, v18, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, *v71, v71[4], *v73, *&v73[4], v73[6], v75, SWORD2(v75), SBYTE6(v75), SHIBYTE(v75), v77, v79))
  {
    v19 = 94;
  }

  else
  {
    v22 = OUTLINED_FUNCTION_37_7();
    voiced_stop_dur(v22);
    v19 = 0;
    *(a1 + 4682) = 5;
  }

  vretproc(a1);
  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

uint64_t por_ph_d_dur(uint64_t a1)
{
  OUTLINED_FUNCTION_15_20(*MEMORY[0x277D85DE8], v34);
  OUTLINED_FUNCTION_10_23(v3, v4, v5, v6, v7, v8, v9, v10, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_1_25(v11, v12, v13, v14, v15, v16, v17, v18, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, *v82, v82[4], *v84, *&v84[4], v84[6], v86, SWORD2(v86), SBYTE6(v86), SHIBYTE(v86), v88, v90))
  {
LABEL_3:
    v19 = 94;
    goto LABEL_4;
  }

  v23 = OUTLINED_FUNCTION_37_7();
  voiced_stop_dur(v23);
  while (2)
  {
    v24 = OUTLINED_FUNCTION_20_15();
    if (!lpta_loadp_setscan_r(v24, v25) && !test_string_s())
    {
      v33 = 13;
      goto LABEL_16;
    }

LABEL_8:
    starttest(a1, 4);
    v26 = OUTLINED_FUNCTION_20_15();
    if (lpta_loadp_setscan_r(v26, v27))
    {
      v33 = 10;
LABEL_16:
      v19 = 0;
      *(a1 + 4682) = v33;
      break;
    }

    if (testFldeq(a1, 4u, 0, 4) || (v19 = advance_tok(a1), v19))
    {
      v28 = *(a1 + 104);
      if (v28)
      {
        v29 = OUTLINED_FUNCTION_24_15(v28);
      }

      else
      {
        v30 = OUTLINED_FUNCTION_25_14();
        v29 = vback(v30, v31);
      }

      v32 = v29 - 1;
      v19 = 0;
      v33 = 10;
      switch(v32)
      {
        case 0:
          continue;
        case 1:
          goto LABEL_8;
        case 2:
          goto LABEL_4;
        case 3:
          goto LABEL_16;
        default:
          goto LABEL_3;
      }
    }

    break;
  }

LABEL_4:
  v20 = v19;
  vretproc(a1);
  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

uint64_t por_ph_g_dur(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v97 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_22_15(a1, a2, a3, a4, a5, a6, a7, a8, v40);
  OUTLINED_FUNCTION_10_23(v10, v11, v12, v13, v14, v15, v16, v17, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95);
  v18 = setjmp(v8);
  if (v18 || OUTLINED_FUNCTION_1_25(v18, v19, v20, v21, v22, v23, v24, v25, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, *v88, v88[4], *v90, *&v90[4], v90[6], v92, SWORD2(v92), SBYTE6(v92), SHIBYTE(v92), v94, v96))
  {
LABEL_3:
    vretproc(a1);
    result = 94;
    goto LABEL_4;
  }

  v28 = OUTLINED_FUNCTION_37_7();
  voiced_stop_dur(v28);
  while (2)
  {
    v29 = OUTLINED_FUNCTION_28_11();
    starttest(v29, v30);
    v31 = OUTLINED_FUNCTION_20_15();
    if (lpta_loadp_setscan_r(v31, v32))
    {
LABEL_14:
      starttest(a1, 4);
      v38 = OUTLINED_FUNCTION_20_15();
      if (lpta_loadp_setscan_r(v38, v39))
      {
        v37 = 15;
      }

      else
      {
        if (OUTLINED_FUNCTION_32_9(a1, 4u) || advance_tok(a1))
        {
LABEL_10:
          v33 = *(a1 + 104);
          if (v33)
          {
            v34 = OUTLINED_FUNCTION_24_15(v33);
          }

          else
          {
            v35 = OUTLINED_FUNCTION_25_14();
            v34 = vback(v35, v36);
          }

          v37 = 15;
          switch(v34)
          {
            case 1:
              continue;
            case 2:
              goto LABEL_14;
            case 3:
              goto LABEL_20;
            case 4:
              goto LABEL_19;
            default:
              goto LABEL_3;
          }
        }

        v37 = 10;
      }
    }

    else
    {
      if (testFldeq(a1, 4u, 1, 2) || testFldeq(a1, 4u, 5, 5) || advance_tok(a1))
      {
        goto LABEL_10;
      }

      v37 = 20;
    }

    break;
  }

LABEL_19:
  *(a1 + 4682) = v37;
LABEL_20:
  vretproc(a1);
  result = 0;
LABEL_4:
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t por_ph_w_dur(double *a1)
{
  OUTLINED_FUNCTION_15_20(*MEMORY[0x277D85DE8], v69);
  OUTLINED_FUNCTION_10_23(v3, v4, v5, v6, v7, v8, v9, v10, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124);
  v11 = setjmp(v1);
  if (!v11 && !OUTLINED_FUNCTION_1_25(v11, v12, v13, v14, v15, v16, v17, v18, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, *v117, v117[4], *v119, *&v119[4], v119[6], v121, SWORD2(v121), SBYTE6(v121), SHIBYTE(v121), v123, v125))
  {
    fence_23(a1);
    a1[425] = 30.0;
    v21 = OUTLINED_FUNCTION_5_23();
    starttest(v21, v22);
    v23 = OUTLINED_FUNCTION_4_23();
    v25 = lpta_loadp_setscan_r(v23, v24);
    v26 = 0;
    v27 = 0;
    if (v25)
    {
LABEL_6:
      OUTLINED_FUNCTION_27_12();
      v28 = OUTLINED_FUNCTION_19_16();
      v30 = v27;
      if (lpta_loadp_setscan_l(v28, v29))
      {
LABEL_16:
        v39 = OUTLINED_FUNCTION_18_17();
        starttest(v39, v40);
        v41 = OUTLINED_FUNCTION_3_24();
        if (lpta_loadp_setscan_l(v41, v42))
        {
LABEL_17:
          v43 = OUTLINED_FUNCTION_18_17();
          starttest(v43, v44);
          v45 = OUTLINED_FUNCTION_3_24();
          if (lpta_loadp_setscan_l(v45, v46))
          {
LABEL_24:
            v53 = OUTLINED_FUNCTION_14_20();
            starttest(v53, v54);
            v55 = OUTLINED_FUNCTION_4_23();
            if (lpta_loadp_setscan_r(v55, v56))
            {
              goto LABEL_14;
            }

            v57 = OUTLINED_FUNCTION_2_25();
            v60 = testFldeq(v57, v58, v59, 1);
            v50 = v30;
            if (v60)
            {
              goto LABEL_28;
            }
          }

          else
          {
            v47 = OUTLINED_FUNCTION_2_25();
            if (testFldeq(v47, v48, v49, 1))
            {
              goto LABEL_28;
            }

            v50 = v30;
          }

          v30 = v50;
          bspush_ca_scan_boa();
          v61 = OUTLINED_FUNCTION_6_23();
          if (!testFldeq(v61, v62, v63, v64))
          {
            v30 = 1;
          }
        }

        else
        {
          v51 = OUTLINED_FUNCTION_18_17();
          bspush_ca_scan(v51, v52);
          OUTLINED_FUNCTION_2_25();
          if (!test_string_s())
          {
            goto LABEL_8;
          }
        }
      }

      else
      {
LABEL_7:
        v31 = OUTLINED_FUNCTION_12_22();
        v30 = v27;
        if (!test_synch(v31, v32, 1u, v33))
        {
LABEL_8:
          v34 = 0x4049000000000000;
LABEL_12:
          v38 = *&v34;
LABEL_13:
          a1[425] = v38;
LABEL_14:
          vretproc(a1);
          result = 0;
          goto LABEL_4;
        }
      }
    }

    else
    {
LABEL_10:
      v30 = v26;
      v35 = OUTLINED_FUNCTION_9_23();
      if (!test_synch(v35, v36, 1u, v37))
      {
        v34 = 0x404E000000000000;
        goto LABEL_12;
      }
    }

LABEL_28:
    v27 = v30;
    while (2)
    {
      v65 = *(a1 + 13);
      if (v65)
      {
        v66 = OUTLINED_FUNCTION_24_15(v65);
        v27 = v67;
      }

      else
      {
        v66 = vback(a1, v27);
        v27 = 0;
      }

      if ((v66 - 1) > 0xA)
      {
        break;
      }

      v38 = OUTLINED_FUNCTION_35_7();
      switch(v68)
      {
        case 1:
          v26 = v27;
          goto LABEL_10;
        case 2:
          goto LABEL_14;
        case 3:
          v30 = v27;
          goto LABEL_16;
        case 4:
          goto LABEL_7;
        case 5:
          v30 = v27;
          goto LABEL_17;
        case 6:
          OUTLINED_FUNCTION_2_25();
          if (!test_string_s())
          {
            goto LABEL_8;
          }

          continue;
        case 7:
          goto LABEL_13;
        case 8:
          v30 = v27;
          goto LABEL_24;
        case 9:
          bspop_boa(a1);
          if (advance_tok(a1))
          {
            continue;
          }

          v38 = 15.0;
          break;
        case 10:
          bspop_boa(a1);
          if (advance_tok(a1))
          {
            continue;
          }

          v38 = 5.0;
          break;
        default:
          goto LABEL_6;
      }

      goto LABEL_13;
    }
  }

  vretproc(a1);
  result = 94;
LABEL_4:
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t por_ph_y_dur(double *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v133 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_22_15(a1, a2, a3, a4, a5, a6, a7, a8, v76);
  OUTLINED_FUNCTION_10_23(v10, v11, v12, v13, v14, v15, v16, v17, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131);
  v18 = setjmp(v8);
  if (v18 || OUTLINED_FUNCTION_1_25(v18, v19, v20, v21, v22, v23, v24, v25, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, *v124, v124[4], *v126, *&v126[4], v126[6], v128, SWORD2(v128), SBYTE6(v128), SHIBYTE(v128), v130, v132))
  {
LABEL_3:
    vretproc(a1);
    result = 94;
    goto LABEL_4;
  }

  v28 = OUTLINED_FUNCTION_0_27();
  starttest(v28, v29);
  v30 = OUTLINED_FUNCTION_4_23();
  if (lpta_loadp_setscan_r(v30, v31))
  {
    goto LABEL_6;
  }

  v33 = OUTLINED_FUNCTION_2_25();
  if (testFldeq(v33, v34, v35, 2) || advance_tok(a1))
  {
    goto LABEL_11;
  }

  v37 = OUTLINED_FUNCTION_9_23();
  starttest(v37, v38);
  v39 = OUTLINED_FUNCTION_3_24();
  if (lpta_loadp_setscan_l(v39, v40))
  {
    v41 = 0;
    while (2)
    {
      v42 = OUTLINED_FUNCTION_19_16();
      v44 = v41;
      if (lpta_loadp_setscan_l(v42, v43))
      {
LABEL_20:
        v48 = OUTLINED_FUNCTION_12_22();
        starttest(v48, v49);
        v50 = OUTLINED_FUNCTION_3_24();
        if (lpta_loadp_setscan_l(v50, v51))
        {
LABEL_6:
          v32 = 20.0;
          goto LABEL_7;
        }

        OUTLINED_FUNCTION_18_17();
        bspush_ca_scan_boa();
LABEL_22:
        v52 = OUTLINED_FUNCTION_18_17();
        if (test_synch(v52, v53, 1u, v54))
        {
          v36 = v44;
        }

        else
        {
          v36 = 1;
        }

LABEL_25:
        v55 = v36;
LABEL_26:
        v56 = *(a1 + 13);
        if (v56)
        {
          v57 = OUTLINED_FUNCTION_24_15(v56);
          v41 = v58;
        }

        else
        {
          v57 = vback(a1, v55);
          v41 = 0;
        }

        v32 = 10.0;
        switch(v57)
        {
          case 1:
          case 5:
            goto LABEL_6;
          case 2:
            continue;
          case 3:
          case 12:
          case 13:
            goto LABEL_8;
          case 4:
            v44 = v41;
            goto LABEL_20;
          case 6:
            bspop_boa(a1);
            v59 = OUTLINED_FUNCTION_2_25();
            v62 = testFldeq(v59, v60, v61, 1);
            v55 = v41;
            if (v62)
            {
              goto LABEL_26;
            }

            OUTLINED_FUNCTION_31_10();
            bspush_ca_scan_boa();
            v63 = OUTLINED_FUNCTION_6_23();
            goto LABEL_34;
          case 7:
            v44 = v41;
            goto LABEL_22;
          case 8:
            bspop_boa(a1);
            OUTLINED_FUNCTION_28_11();
            bspush_ca_scan_boa();
            v63 = OUTLINED_FUNCTION_11_22();
            v66 = 18;
            goto LABEL_34;
          case 9:
            bspop_boa(a1);
            OUTLINED_FUNCTION_34_8();
            bspush_ca_scan_boa();
            v63 = OUTLINED_FUNCTION_11_22();
            v66 = 19;
LABEL_34:
            if (testFldeq(v63, v64, v65, v66))
            {
              v55 = v41;
            }

            else
            {
              v55 = 1;
            }

            goto LABEL_26;
          case 10:
            bspop_boa(a1);
            v67 = advance_tok(a1);
            v55 = v41;
            if (v67)
            {
              goto LABEL_26;
            }

            starttest(a1, 11);
            v68 = OUTLINED_FUNCTION_3_24();
            v70 = lpta_loadp_setscan_l(v68, v69);
            v32 = 10.0;
            if (v70)
            {
              goto LABEL_7;
            }

            v71 = OUTLINED_FUNCTION_7_23();
            v74 = testFldeq(v71, v72, 2, v73);
            v55 = v41;
            if (v74)
            {
              goto LABEL_26;
            }

            v75 = advance_tok(a1);
            v55 = v41;
            if (v75)
            {
              goto LABEL_26;
            }

            v32 = 5.0;
            break;
          case 11:
            goto LABEL_7;
          default:
            goto LABEL_3;
        }

        goto LABEL_7;
      }

      break;
    }
  }

  else
  {
    v45 = OUTLINED_FUNCTION_2_25();
    if (testFldeq(v45, v46, v47, 2) || advance_tok(a1))
    {
LABEL_11:
      v36 = 0;
      goto LABEL_25;
    }
  }

  v32 = 40.0;
LABEL_7:
  a1[425] = v32;
LABEL_8:
  vretproc(a1);
  result = 0;
LABEL_4:
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t por_ph_l_dur(uint64_t a1)
{
  OUTLINED_FUNCTION_15_20(*MEMORY[0x277D85DE8], v45);
  OUTLINED_FUNCTION_10_23(v3, v4, v5, v6, v7, v8, v9, v10, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_1_25(v11, v12, v13, v14, v15, v16, v17, v18, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, *v93, v93[4], *v95, *&v95[4], v95[6], v97, SWORD2(v97), SBYTE6(v97), SHIBYTE(v97), v99, v101))
  {
LABEL_3:
    vretproc(a1);
    result = 94;
    goto LABEL_4;
  }

  v21 = OUTLINED_FUNCTION_0_27();
  starttest(v21, v22);
  v23 = OUTLINED_FUNCTION_4_23();
  if (!lpta_loadp_setscan_r(v23, v24))
  {
    while (2)
    {
      v25 = OUTLINED_FUNCTION_9_23();
      if (!test_synch(v25, v26, 1u, v27))
      {
        v28 = 15.0;
        goto LABEL_18;
      }

LABEL_12:
      v40 = *(a1 + 104);
      if (v40)
      {
        v41 = OUTLINED_FUNCTION_24_15(v40);
      }

      else
      {
        v42 = OUTLINED_FUNCTION_25_14();
        v41 = vback(v42, v43);
      }

      if ((v41 - 1) <= 3)
      {
        v28 = OUTLINED_FUNCTION_35_7();
        switch(v44)
        {
          case 1:
            continue;
          case 2:
            goto LABEL_19;
          case 3:
            goto LABEL_18;
          default:
            goto LABEL_8;
        }
      }

      goto LABEL_3;
    }
  }

LABEL_8:
  OUTLINED_FUNCTION_27_12();
  v29 = OUTLINED_FUNCTION_19_16();
  if (lpta_loadp_setscan_r(v29, v30))
  {
    v28 = 50.0;
  }

  else
  {
    v31 = OUTLINED_FUNCTION_16_19();
    if (npush_fld(v31, v32, 8))
    {
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_33_9();
    if (if_testneq(a1, v33, v34, v35, v36, v37, v38, v39) || advance_tok(a1))
    {
      goto LABEL_12;
    }

    v28 = 30.0;
  }

LABEL_18:
  *(a1 + 3400) = v28;
LABEL_19:
  vretproc(a1);
  result = 0;
LABEL_4:
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t por_ph_ly_dur(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v96 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_22_15(a1, a2, a3, a4, a5, a6, a7, a8, v39);
  OUTLINED_FUNCTION_10_23(v10, v11, v12, v13, v14, v15, v16, v17, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94);
  v18 = setjmp(v8);
  if (!v18 && !OUTLINED_FUNCTION_1_25(v18, v19, v20, v21, v22, v23, v24, v25, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, *v87, v87[4], *v89, *&v89[4], v89[6], v91, SWORD2(v91), SBYTE6(v91), SHIBYTE(v91), v93, v95))
  {
    v28 = OUTLINED_FUNCTION_0_27();
    starttest(v28, v29);
    v30 = OUTLINED_FUNCTION_4_23();
    v32 = 75.0;
    if (lpta_loadp_setscan_r(v30, v31))
    {
LABEL_6:
      *(a1 + 3400) = v32;
    }

    else
    {
      do
      {
        v33 = OUTLINED_FUNCTION_28_11();
        if (!test_synch(v33, v34, 1u, &unk_2806BBEBF))
        {
          v32 = 15.0;
          goto LABEL_6;
        }

        v35 = *(a1 + 104);
        if (v35)
        {
          v36 = OUTLINED_FUNCTION_24_15(v35);
        }

        else
        {
          v37 = OUTLINED_FUNCTION_25_14();
          v36 = vback(v37, v38);
        }
      }

      while (v36 == 2);
      if (v36 == 1)
      {
        goto LABEL_6;
      }

      if (v36 != 3)
      {
        goto LABEL_3;
      }
    }

    vretproc(a1);
    result = 0;
    goto LABEL_4;
  }

LABEL_3:
  vretproc(a1);
  result = 94;
LABEL_4:
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t por_ph_r_dur(uint64_t a1)
{
  v77 = *MEMORY[0x277D85DE8];
  v72[0] = 0;
  v72[1] = 0;
  bzero(v71, 0xB8uLL);
  OUTLINED_FUNCTION_23_15();
  bzero(v76, v2);
  if (setjmp(v76) || ventproc(a1, v71, v75, v74, v73, v76))
  {
LABEL_3:
    vretproc(a1);
    result = 94;
    goto LABEL_4;
  }

  push_ptr_init(a1, v72);
  fence_23(a1);
  v5 = OUTLINED_FUNCTION_4_23();
  if (!lpta_loadp_setscan_r(v5, v6))
  {
    OUTLINED_FUNCTION_2_25();
    if (!test_string_s())
    {
      *&v70 = 80.0;
LABEL_54:
      v26 = *&v70;
      goto LABEL_56;
    }
  }

  v7 = 0;
LABEL_8:
  v8 = OUTLINED_FUNCTION_34_8();
  starttest(v8, v9);
  v10 = OUTLINED_FUNCTION_19_16();
  if (!lpta_loadp_setscan_l(v10, v11))
  {
    v17 = OUTLINED_FUNCTION_29_11();
    if (testFldeq(v17, v18, 4, 1))
    {
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  while (2)
  {
    v12 = v7;
    starttest(a1, 6);
    v13 = OUTLINED_FUNCTION_19_16();
    if (!lpta_loadp_setscan_l(v13, v14))
    {
LABEL_10:
      v12 = v7;
      savescptr(a1, 7, v72);
      v15 = OUTLINED_FUNCTION_29_11();
      if (testFldeq(v15, v16, 4, 1))
      {
        goto LABEL_17;
      }

      goto LABEL_14;
    }

LABEL_43:
    v58 = OUTLINED_FUNCTION_28_11();
    starttest(v58, v59);
    v60 = OUTLINED_FUNCTION_19_16();
    if (!lpta_loadp_setscan_l(v60, v61))
    {
      v68 = OUTLINED_FUNCTION_29_11();
      if (OUTLINED_FUNCTION_32_9(v68, v69))
      {
        v7 = v12;
        goto LABEL_17;
      }

      goto LABEL_14;
    }

    v7 = v12;
LABEL_45:
    v62 = OUTLINED_FUNCTION_20_15();
    if (!lpta_loadp_setscan_r(v62, v63))
    {
      OUTLINED_FUNCTION_29_11();
      if (!test_string_s())
      {
        v26 = 30.0;
        break;
      }
    }

LABEL_47:
    starttest(a1, 13);
    bspush_ca_scan(a1, 14);
    v64 = OUTLINED_FUNCTION_19_16();
    if (!lpta_loadp_setscan_l(v64, v65))
    {
      v66 = OUTLINED_FUNCTION_29_11();
      if (!OUTLINED_FUNCTION_32_9(v66, v67))
      {
LABEL_13:
        v12 = v7;
LABEL_14:
        bspush_ca_scan_boa();
        v19 = OUTLINED_FUNCTION_29_11();
        if (testFldeq(v19, v20, v21, 0))
        {
          v7 = v12;
        }

        else
        {
          v7 = 1;
        }
      }
    }

LABEL_17:
    v22 = v7;
LABEL_18:
    v23 = *(a1 + 104);
    if (v23)
    {
      v24 = OUTLINED_FUNCTION_24_15(v23);
      v7 = v25;
    }

    else
    {
      v24 = vback(a1, v22);
      v7 = 0;
    }

    if ((v24 - 1) > 0x10)
    {
      goto LABEL_3;
    }

    v26 = OUTLINED_FUNCTION_35_7();
    switch(v28)
    {
      case 1:
        goto LABEL_57;
      case 2:
        continue;
      case 3:
        bspop_boa(a1);
        v48 = advance_tok(a1);
        v22 = v7;
        if (v48)
        {
          goto LABEL_18;
        }

        goto LABEL_35;
      case 4:
LABEL_35:
        v49 = test_synch(a1, 5, 1u, &unk_2806BBEBF);
        v22 = v7;
        if (v49)
        {
          goto LABEL_18;
        }

        v27 = 40.0;
        goto LABEL_55;
      case 5:
        v12 = v7;
        goto LABEL_43;
      case 6:
        goto LABEL_10;
      case 7:
        bspop_boa(a1);
        v31 = advance_tok(a1);
        v22 = v7;
        if (v31)
        {
          goto LABEL_18;
        }

        goto LABEL_28;
      case 8:
LABEL_28:
        v32 = OUTLINED_FUNCTION_39_5();
        v34 = test_synch(v32, v33, 1u, &unk_2806BBEBF);
        v22 = v7;
        if (v34)
        {
          goto LABEL_18;
        }

        v35 = lpta_loadp_setscan_r(a1, v72);
        v22 = v7;
        if (v35)
        {
          goto LABEL_18;
        }

        v36 = OUTLINED_FUNCTION_29_11();
        v38 = npush_fld(v36, v37, 8);
        v22 = v7;
        if (v38)
        {
          goto LABEL_18;
        }

        OUTLINED_FUNCTION_33_9();
        v46 = if_testeq(a1, v39, v40, v41, v42, v43, v44, v45);
        v22 = v7;
        if (v46)
        {
          goto LABEL_18;
        }

        v47 = advance_tok(a1);
        v22 = v7;
        if (v47)
        {
          goto LABEL_18;
        }

        v27 = 35.0;
LABEL_55:
        v26 = v27;
        break;
      case 9:
        goto LABEL_45;
      case 10:
        bspop_boa(a1);
        v30 = advance_tok(a1);
        v22 = v7;
        if (v30)
        {
          goto LABEL_18;
        }

        v27 = 30.0;
        goto LABEL_55;
      case 11:
        goto LABEL_47;
      case 12:
        goto LABEL_55;
      case 13:
        v50 = OUTLINED_FUNCTION_20_15();
        v52 = lpta_loadp_setscan_r(v50, v51);
        v22 = v7;
        if (!v52)
        {
          v53 = OUTLINED_FUNCTION_29_11();
          v55 = OUTLINED_FUNCTION_32_9(v53, v54);
          v22 = v7;
          if (!v55)
          {
            bspush_ca_scan_boa();
            v56 = OUTLINED_FUNCTION_29_11();
            if (testFldeq(v56, v57, 3, 0))
            {
              v22 = v7;
            }

            else
            {
              v22 = 1;
            }
          }
        }

        goto LABEL_18;
      case 14:
      case 16:
        bspop_boa(a1);
        v29 = advance_tok(a1);
        v22 = v7;
        if (v29)
        {
          goto LABEL_18;
        }

        *&v70 = 40.0;
        goto LABEL_54;
      case 15:
        goto LABEL_56;
      default:
        goto LABEL_8;
    }

    break;
  }

LABEL_56:
  *(a1 + 3400) = v26;
LABEL_57:
  vretproc(a1);
  result = 0;
LABEL_4:
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t por_ph_R_dur(double *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v120 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_22_15(a1, a2, a3, a4, a5, a6, a7, a8, v63);
  OUTLINED_FUNCTION_10_23(v10, v11, v12, v13, v14, v15, v16, v17, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118);
  v18 = setjmp(v8);
  if (!v18 && !OUTLINED_FUNCTION_1_25(v18, v19, v20, v21, v22, v23, v24, v25, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, *v111, v111[4], *v113, *&v113[4], v113[6], v115, SWORD2(v115), SBYTE6(v115), SHIBYTE(v115), v117, v119))
  {
    fence_23(a1);
    a1[425] = 80.0;
    v28 = OUTLINED_FUNCTION_5_23();
    starttest(v28, v29);
    v30 = OUTLINED_FUNCTION_4_23();
    v32 = 0;
    v33 = 0;
    if (lpta_loadp_setscan_r(v30, v31))
    {
LABEL_9:
      OUTLINED_FUNCTION_27_12();
      v38 = OUTLINED_FUNCTION_19_16();
      if (lpta_loadp_setscan_r(v38, v39))
      {
        v33 = v32;
LABEL_11:
        v40 = OUTLINED_FUNCTION_14_20();
        starttest(v40, v41);
        v42 = OUTLINED_FUNCTION_3_24();
        if (lpta_loadp_setscan_l(v42, v43))
        {
          goto LABEL_25;
        }

        v44 = OUTLINED_FUNCTION_2_25();
        if (!testFldeq(v44, v45, v46, 1))
        {
          OUTLINED_FUNCTION_12_22();
          bspush_ca_scan_boa();
          v47 = OUTLINED_FUNCTION_6_23();
          if (!testFldeq(v47, v48, v49, v50))
          {
            v33 = 1;
          }
        }
      }

      else
      {
        v51 = OUTLINED_FUNCTION_16_19();
        if (npush_fld(v51, v52, 8) || (OUTLINED_FUNCTION_33_9(), if_testneq(a1, v53, v54, v55, v56, v57, v58, v59)))
        {
          v33 = v32;
        }

        else
        {
          v33 = v32;
          if (!advance_tok(a1))
          {
            v37 = 50.0;
            goto LABEL_24;
          }
        }
      }
    }

    else
    {
LABEL_6:
      v34 = OUTLINED_FUNCTION_9_23();
      if (!test_synch(v34, v35, 1u, v36))
      {
        v37 = 15.0;
LABEL_24:
        a1[425] = v37;
LABEL_25:
        vretproc(a1);
        result = 0;
        goto LABEL_4;
      }
    }

    v37 = 70.0;
    while (2)
    {
      v60 = *(a1 + 13);
      if (v60)
      {
        v61 = OUTLINED_FUNCTION_24_15(v60);
        v33 = v62;
      }

      else
      {
        v61 = vback(a1, v33);
        v33 = 0;
      }

      switch(v61)
      {
        case 1:
          v32 = v33;
          goto LABEL_9;
        case 2:
          goto LABEL_6;
        case 3:
          goto LABEL_25;
        case 4:
          goto LABEL_11;
        case 5:
          bspop_boa(a1);
          if (!advance_tok(a1))
          {
            goto LABEL_24;
          }

          continue;
        default:
          goto LABEL_3;
      }
    }
  }

LABEL_3:
  vretproc(a1);
  result = 94;
LABEL_4:
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t por_ph_f_dur(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v141 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_22_15(a1, a2, a3, a4, a5, a6, a7, a8, v84);
  OUTLINED_FUNCTION_10_23(v10, v11, v12, v13, v14, v15, v16, v17, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139);
  v18 = setjmp(v8);
  if (v18 || OUTLINED_FUNCTION_1_25(v18, v19, v20, v21, v22, v23, v24, v25, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, *v132, v132[4], *v134, *&v134[4], v134[6], v136, SWORD2(v136), SBYTE6(v136), SHIBYTE(v136), v138, v140))
  {
LABEL_3:
    vretproc(a1);
    result = 94;
  }

  else
  {
    v28 = OUTLINED_FUNCTION_0_27();
    starttest(v28, v29);
    v30 = OUTLINED_FUNCTION_4_23();
    v32 = 0;
    v33 = 0;
    if (lpta_loadp_setscan_r(v30, v31))
    {
LABEL_6:
      OUTLINED_FUNCTION_27_12();
      v34 = OUTLINED_FUNCTION_20_15();
      v36 = lpta_loadp_setscan_r(v34, v35);
      v37 = v32;
      if (v36)
      {
LABEL_12:
        v33 = v37;
        v42 = OUTLINED_FUNCTION_18_17();
        starttest(v42, v43);
        v44 = OUTLINED_FUNCTION_3_24();
        v32 = v33;
        if (lpta_loadp_setscan_l(v44, v45))
        {
LABEL_13:
          v46 = OUTLINED_FUNCTION_18_17();
          starttest(v46, v47);
          v48 = OUTLINED_FUNCTION_3_24();
          if (lpta_loadp_setscan_r(v48, v49))
          {
LABEL_14:
            v50 = OUTLINED_FUNCTION_18_17();
            starttest(v50, v51);
            v52 = OUTLINED_FUNCTION_4_23();
            if (lpta_loadp_setscan_r(v52, v53))
            {
              v41 = 0x405B800000000000;
              goto LABEL_39;
            }
          }

          v54 = OUTLINED_FUNCTION_16_19();
          if (!npush_fld(v54, v55, 8))
          {
            OUTLINED_FUNCTION_33_9();
            if (!if_testneq(a1, v56, v57, v58, v59, v60, v61, v62) && !advance_tok(a1))
            {
              v41 = 0x4054000000000000;
              goto LABEL_39;
            }
          }

          goto LABEL_24;
        }
      }

LABEL_20:
      v63 = OUTLINED_FUNCTION_2_25();
      v33 = v32;
      if (!testFldeq(v63, v64, v65, 1))
      {
        bspush_ca_scan_boa();
        v66 = OUTLINED_FUNCTION_6_23();
        if (testFldeq(v66, v67, v68, v69))
        {
          v33 = v32;
        }

        else
        {
          v33 = 1;
        }
      }
    }

    else
    {
LABEL_9:
      v38 = OUTLINED_FUNCTION_9_23();
      if (!test_synch(v38, v39, 1u, v40))
      {
        v41 = 0x4041800000000000;
        goto LABEL_39;
      }
    }

LABEL_24:
    while (1)
    {
      v70 = v33;
      while (2)
      {
        v71 = a1[13];
        if (v71)
        {
          v72 = OUTLINED_FUNCTION_24_15(v71);
          v32 = v73;
        }

        else
        {
          v72 = vback(a1, v70);
          v32 = 0;
        }

        switch(v72)
        {
          case 1:
            goto LABEL_6;
          case 2:
            v33 = v32;
            goto LABEL_9;
          case 3:
            v33 = v32;
            goto LABEL_40;
          case 4:
            v37 = v32;
            goto LABEL_12;
          case 5:
            bspop_boa(a1);
            v74 = advance_tok(a1);
            v70 = v32;
            if (v74)
            {
              continue;
            }

            v76 = 6;
            goto LABEL_37;
          case 6:
          case 9:
            goto LABEL_20;
          case 7:
            v33 = v32;
            goto LABEL_13;
          case 8:
            bspop_boa(a1);
            v75 = advance_tok(a1);
            v70 = v32;
            if (v75)
            {
              continue;
            }

            v76 = 9;
LABEL_37:
            bspush_ca_scan(a1, v76);
            v41 = 0x4051800000000000;
            break;
          case 10:
            v33 = v32;
            goto LABEL_14;
          case 11:
            v41 = 0x405B800000000000;
            break;
          case 12:
            goto LABEL_44;
          default:
            goto LABEL_3;
        }

        break;
      }

      v33 = v32;
LABEL_39:
      a1[425] = v41;
LABEL_40:
      v77 = OUTLINED_FUNCTION_18_17();
      starttest(v77, v78);
      v79 = OUTLINED_FUNCTION_4_23();
      if (lpta_loadp_setscan_r(v79, v80))
      {
        break;
      }

      v81 = OUTLINED_FUNCTION_11_22();
      if (!testFldeq(v81, v82, v83, 40) && !advance_tok(a1))
      {
        OUTLINED_FUNCTION_40_4();
        break;
      }
    }

LABEL_44:
    vretproc(a1);
    result = 0;
  }

  v27 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t por_ph_sS_dur(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v233 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_22_15(a1, a2, a3, a4, a5, a6, a7, a8, v150);
  OUTLINED_FUNCTION_23_15();
  OUTLINED_FUNCTION_38_6(v10, v11, v12, v13, v14, v15, v16, v17, v151, v154, v157, v160, v163, v166, v169, v172, v175, v178, v181, v184, v187, v190, v193, v196, v199, v202, v205, v208, v211, v214, v217, 0, 0, v223, v225, v227, v229, v231);
  v18 = setjmp(v8);
  if (v18 || OUTLINED_FUNCTION_13_22(v18, v19, v20, v21, v22, v23, v24, v25, v152, v155, v158, v161, v164, v167, v170, v173, v176, v179, v182, v185, v188, v191, v194, v197, v200, v203, v206, v209, v212, v215, v218, v220, v222, *v224, v224[4], *v226, *&v226[4], v226[6], v228, SWORD2(v228), SBYTE6(v228), SHIBYTE(v228), v230, v232))
  {
LABEL_3:
    vretproc(a1);
    result = 94;
    goto LABEL_4;
  }

  v28 = OUTLINED_FUNCTION_26_14();
  push_ptr_init(v28, v29);
  v30 = OUTLINED_FUNCTION_0_27();
  starttest(v30, v31);
  v32 = OUTLINED_FUNCTION_3_24();
  if (!lpta_loadp_setscan_l(v32, v33))
  {
    v96 = OUTLINED_FUNCTION_16_19();
    if (testFldeq(v96, v97, 10, 1))
    {
      v34 = 0;
      goto LABEL_38;
    }

    v34 = 0;
    if (advance_tok(a1))
    {
      goto LABEL_38;
    }

    goto LABEL_33;
  }

  v34 = 0;
LABEL_7:
  v35 = OUTLINED_FUNCTION_14_20();
  starttest(v35, v36);
  OUTLINED_FUNCTION_36_7();
  if (v37 == v38 || (v39 = OUTLINED_FUNCTION_4_23(), v41 = lpta_loadp_setscan_r(v39, v40), v42 = v34, v41))
  {
LABEL_10:
    v43 = OUTLINED_FUNCTION_12_22();
    starttest(v43, v44);
    v45 = OUTLINED_FUNCTION_4_23();
    v47 = lpta_loadp_setscan_r(v45, v46);
    v48 = v34;
    if (v47)
    {
LABEL_11:
      v34 = v48;
      v49 = OUTLINED_FUNCTION_18_17();
      starttest(v49, v50);
      v51 = OUTLINED_FUNCTION_4_23();
      if (lpta_loadp_setscan_r(v51, v52))
      {
LABEL_12:
        v53 = OUTLINED_FUNCTION_18_17();
        starttest(v53, v54);
        v55 = OUTLINED_FUNCTION_3_24();
        if (lpta_loadp_setscan_l(v55, v56))
        {
LABEL_13:
          v57 = OUTLINED_FUNCTION_18_17();
          starttest(v57, v58);
          v59 = OUTLINED_FUNCTION_4_23();
          v61 = lpta_loadp_setscan_l(v59, v60);
          v62 = v34;
          if (v61)
          {
LABEL_47:
            v34 = v62;
            v111 = OUTLINED_FUNCTION_18_17();
            starttest(v111, v112);
            v113 = OUTLINED_FUNCTION_4_23();
            if (lpta_loadp_setscan_r(v113, v114))
            {
LABEL_48:
              v115 = OUTLINED_FUNCTION_18_17();
              starttest(v115, v116);
              v117 = OUTLINED_FUNCTION_3_24();
              if (lpta_loadp_setscan_l(v117, v118))
              {
                v119 = 0x4064000000000000;
              }

              else
              {
LABEL_58:
                OUTLINED_FUNCTION_30_10(15, v153, v156, v159, v162, v165, v168, v171, v174, v177, v180, v183, v186, v189, v192, v195, v198, v201, v204, v207, v210, v213, v216, v219, v221);
                v127 = OUTLINED_FUNCTION_16_19();
                if (npush_fld(v127, v128, 8))
                {
                  goto LABEL_38;
                }

                OUTLINED_FUNCTION_33_9();
                if (if_testneq(a1, v129, v130, v131, v132, v133, v134, v135))
                {
                  goto LABEL_38;
                }

                if (advance_tok(a1))
                {
                  goto LABEL_38;
                }

                v136 = OUTLINED_FUNCTION_17_18();
                if (lpta_loadp_setscan_r(v136, v137))
                {
                  goto LABEL_38;
                }

                if (advance_tok(a1))
                {
                  goto LABEL_38;
                }

                v138 = OUTLINED_FUNCTION_11_22();
                if (testFldeq(v138, v139, v140, 40) || advance_tok(a1))
                {
                  goto LABEL_38;
                }

                v119 = 0x4059000000000000;
              }
            }

            else
            {
              v141 = OUTLINED_FUNCTION_16_19();
              if (npush_fld(v141, v142, 8))
              {
                goto LABEL_38;
              }

              OUTLINED_FUNCTION_33_9();
              if (if_testneq(a1, v143, v144, v145, v146, v147, v148, v149) || advance_tok(a1))
              {
                goto LABEL_38;
              }

              v119 = 0x405E000000000000;
            }

            v83 = *&v119;
          }

          else
          {
LABEL_14:
            OUTLINED_FUNCTION_30_10(12, v153, v156, v159, v162, v165, v168, v171, v174, v177, v180, v183, v186, v189, v192, v195, v198, v201, v204, v207, v210, v213, v216, v219, v221);
            if (advance_tok(a1))
            {
              goto LABEL_38;
            }

            v63 = OUTLINED_FUNCTION_16_19();
            if (npush_fld(v63, v64, 8))
            {
              goto LABEL_38;
            }

            OUTLINED_FUNCTION_33_9();
            if (if_testneq(a1, v65, v66, v67, v68, v69, v70, v71))
            {
              goto LABEL_38;
            }

            if (advance_tok(a1))
            {
              goto LABEL_38;
            }

            v72 = OUTLINED_FUNCTION_17_18();
            if (lpta_loadp_setscan_r(v72, v73))
            {
              goto LABEL_38;
            }

            v74 = OUTLINED_FUNCTION_16_19();
            if (npush_fld(v74, v75, 8))
            {
              goto LABEL_38;
            }

            OUTLINED_FUNCTION_33_9();
            if (if_testneq(a1, v76, v77, v78, v79, v80, v81, v82) || advance_tok(a1))
            {
              goto LABEL_38;
            }

            v83 = 90.0;
          }

          goto LABEL_51;
        }

        v88 = OUTLINED_FUNCTION_2_25();
        v91 = testFldeq(v88, v89, v90, 1);
        v87 = v34;
        if (v91)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v84 = OUTLINED_FUNCTION_2_25();
        if (testFldeq(v84, v85, v86, 1))
        {
          goto LABEL_38;
        }

        v87 = v34;
      }

      v34 = v87;
      bspush_ca_scan_boa();
      v92 = OUTLINED_FUNCTION_6_23();
      if (!testFldeq(v92, v93, v94, v95))
      {
        v34 = 1;
      }

      goto LABEL_38;
    }

LABEL_32:
    v98 = OUTLINED_FUNCTION_18_17();
    if (test_synch(v98, v99, 1u, v100))
    {
      goto LABEL_38;
    }

LABEL_33:
    v83 = 75.0;
    goto LABEL_51;
  }

LABEL_35:
  v34 = v42;
  v101 = OUTLINED_FUNCTION_18_17();
  if (test_synch(v101, v102, 1u, v103))
  {
    goto LABEL_38;
  }

  v83 = 65.0;
LABEL_51:
  while (1)
  {
    v108 = v34;
LABEL_52:
    *(a1 + 3400) = v83;
    v34 = v108;
LABEL_53:
    v120 = OUTLINED_FUNCTION_18_17();
    starttest(v120, v121);
    v122 = OUTLINED_FUNCTION_4_23();
    if (lpta_loadp_setscan_r(v122, v123))
    {
      break;
    }

    v124 = OUTLINED_FUNCTION_11_22();
    if (!testFldeq(v124, v125, v126, 40) && !advance_tok(a1))
    {
      OUTLINED_FUNCTION_40_4();
      break;
    }

LABEL_38:
    v104 = v34;
    while (2)
    {
      v105 = *(a1 + 104);
      if (v105)
      {
        v106 = OUTLINED_FUNCTION_24_15(v105);
        v34 = v107;
      }

      else
      {
        v106 = vback(a1, v104);
        v34 = 0;
      }

      if ((v106 - 1) > 0xF)
      {
        goto LABEL_3;
      }

      v83 = OUTLINED_FUNCTION_35_7();
      v108 = v34;
      switch(v109)
      {
        case 1:
          goto LABEL_53;
        case 2:
          goto LABEL_10;
        case 3:
          v42 = v34;
          goto LABEL_35;
        case 4:
          v48 = v34;
          goto LABEL_11;
        case 5:
          goto LABEL_32;
        case 6:
          goto LABEL_12;
        case 7:
        case 9:
          bspop_boa(a1);
          v110 = advance_tok(a1);
          v104 = v34;
          if (v110)
          {
            continue;
          }

          v83 = 90.0;
          break;
        case 8:
          goto LABEL_13;
        case 10:
          v62 = v34;
          goto LABEL_47;
        case 11:
          goto LABEL_14;
        case 12:
          goto LABEL_48;
        case 13:
          goto LABEL_52;
        case 14:
          goto LABEL_58;
        case 15:
          goto LABEL_57;
        default:
          goto LABEL_7;
      }

      break;
    }
  }

LABEL_57:
  vretproc(a1);
  result = 0;
LABEL_4:
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t por_ph_v_dur(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v163 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_22_15(a1, a2, a3, a4, a5, a6, a7, a8, v80);
  OUTLINED_FUNCTION_23_15();
  OUTLINED_FUNCTION_38_6(v10, v11, v12, v13, v14, v15, v16, v17, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117, v120, v123, v126, v129, v132, v135, v138, v141, v144, v147, 0, 0, v153, v155, v157, v159, v161);
  v18 = setjmp(v8);
  if (!v18 && !OUTLINED_FUNCTION_13_22(v18, v19, v20, v21, v22, v23, v24, v25, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118, v121, v124, v127, v130, v133, v136, v139, v142, v145, v148, v150, v152, *v154, v154[4], *v156, *&v156[4], v156[6], v158, SWORD2(v158), SBYTE6(v158), SHIBYTE(v158), v160, v162))
  {
    v28 = OUTLINED_FUNCTION_26_14();
    push_ptr_init(v28, v29);
    fence_23(a1);
    *(a1 + 3400) = 0x4056800000000000;
    v30 = OUTLINED_FUNCTION_5_23();
    starttest(v30, v31);
    v32 = OUTLINED_FUNCTION_4_23();
    if (!lpta_loadp_setscan_r(v32, v33))
    {
      while (2)
      {
        v34 = OUTLINED_FUNCTION_9_23();
        if (!test_synch(v34, v35, 1u, v36))
        {
          v37 = 15.0;
LABEL_11:
          *(a1 + 3400) = v37;
LABEL_29:
          vretproc(a1);
          result = 0;
          goto LABEL_4;
        }

LABEL_25:
        v76 = *(a1 + 104);
        if (v76)
        {
          v77 = OUTLINED_FUNCTION_24_15(v76);
        }

        else
        {
          v78 = OUTLINED_FUNCTION_25_14();
          v77 = vback(v78, v79);
        }

        switch(v77)
        {
          case 1:
            break;
          case 2:
            continue;
          case 3:
            goto LABEL_29;
          case 4:
            goto LABEL_12;
          case 5:
            goto LABEL_13;
          case 6:
            goto LABEL_22;
          case 7:
            goto LABEL_14;
          default:
            goto LABEL_3;
        }

        break;
      }
    }

    OUTLINED_FUNCTION_36_7();
    if (v38 != v39)
    {
      v37 = 70.0;
      goto LABEL_11;
    }

LABEL_12:
    v40 = OUTLINED_FUNCTION_12_22();
    starttest(v40, v41);
    v42 = OUTLINED_FUNCTION_3_24();
    if (lpta_loadp_setscan_l(v42, v43))
    {
LABEL_13:
      v44 = OUTLINED_FUNCTION_14_20();
      starttest(v44, v45);
      v46 = OUTLINED_FUNCTION_3_24();
      if (lpta_loadp_setscan_l(v46, v47))
      {
        goto LABEL_29;
      }

LABEL_14:
      OUTLINED_FUNCTION_30_10(7, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v119, v122, v125, v128, v131, v134, v137, v140, v143, v146, v149, v151);
      v48 = OUTLINED_FUNCTION_16_19();
      if (npush_fld(v48, v49, 8))
      {
        goto LABEL_25;
      }

      v50 = OUTLINED_FUNCTION_25_14();
      npush_i(v50);
      if (if_testneq(a1, v51, v52, v53, v54, v55, v56, v57))
      {
        goto LABEL_25;
      }

      if (advance_tok(a1))
      {
        goto LABEL_25;
      }

      v58 = OUTLINED_FUNCTION_17_18();
      if (lpta_loadp_setscan_r(v58, v59))
      {
        goto LABEL_25;
      }

      v60 = OUTLINED_FUNCTION_16_19();
      if (npush_fld(v60, v61, 8))
      {
        goto LABEL_25;
      }

      OUTLINED_FUNCTION_33_9();
      if (if_testneq(a1, v62, v63, v64, v65, v66, v67, v68) || advance_tok(a1))
      {
        goto LABEL_25;
      }

      v69 = 0x4054000000000000;
    }

    else
    {
LABEL_22:
      v70 = OUTLINED_FUNCTION_18_17();
      if (test_synch(v70, v71, 1u, v72))
      {
        goto LABEL_25;
      }

      v73 = OUTLINED_FUNCTION_2_25();
      if (testFldeq(v73, v74, v75, 2) || advance_tok(a1))
      {
        goto LABEL_25;
      }

      v69 = 0x4059000000000000;
    }

    v37 = *&v69;
    goto LABEL_11;
  }

LABEL_3:
  vretproc(a1);
  result = 94;
LABEL_4:
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t por_ph_z_dur(uint64_t a1)
{
  OUTLINED_FUNCTION_15_20(*MEMORY[0x277D85DE8], v22);
  OUTLINED_FUNCTION_10_23(v3, v4, v5, v6, v7, v8, v9, v10, v23, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_1_25(v11, v12, v13, v14, v15, v16, v17, v18, v24, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, *v70, v70[4], *v72, *&v72[4], v72[6], v74, SWORD2(v74), SBYTE6(v74), SHIBYTE(v74), v76, v78))
  {
    v19 = 94;
  }

  else
  {
    fence_23(a1);
    v19 = 0;
    *(a1 + 3400) = 0x4052C00000000000;
  }

  vretproc(a1);
  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

uint64_t por_ph_Z_dur(uint64_t a1)
{
  OUTLINED_FUNCTION_15_20(*MEMORY[0x277D85DE8], v51);
  OUTLINED_FUNCTION_10_23(v3, v4, v5, v6, v7, v8, v9, v10, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_1_25(v11, v12, v13, v14, v15, v16, v17, v18, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, *v99, v99[4], *v101, *&v101[4], v101[6], v103, SWORD2(v103), SBYTE6(v103), SHIBYTE(v103), v105, v107))
  {
LABEL_3:
    vretproc(a1);
    result = 94;
    goto LABEL_4;
  }

  v21 = OUTLINED_FUNCTION_0_27();
  starttest(v21, v22);
  v23 = OUTLINED_FUNCTION_4_23();
  if (!lpta_loadp_setscan_r(v23, v24))
  {
    while (2)
    {
      v25 = OUTLINED_FUNCTION_9_23();
      if (!test_synch(v25, v26, 1u, v27))
      {
        v28 = 25.0;
        goto LABEL_23;
      }

LABEL_15:
      v45 = *(a1 + 104);
      if (v45)
      {
        v46 = OUTLINED_FUNCTION_24_15(v45);
      }

      else
      {
        v47 = OUTLINED_FUNCTION_25_14();
        v46 = vback(v47, v48);
      }

      switch(v46)
      {
        case 1:
          break;
        case 2:
          continue;
        case 3:
          goto LABEL_24;
        case 4:
          goto LABEL_13;
        case 5:
          goto LABEL_11;
        case 6:
          goto LABEL_19;
        case 7:
          goto LABEL_14;
        case 8:
          goto LABEL_21;
        default:
          goto LABEL_3;
      }

      break;
    }
  }

  v29 = OUTLINED_FUNCTION_18_17();
  starttest(v29, v30);
  OUTLINED_FUNCTION_36_7();
  if (v31 == v32 || (v33 = OUTLINED_FUNCTION_4_23(), lpta_loadp_setscan_r(v33, v34)))
  {
LABEL_13:
    v38 = OUTLINED_FUNCTION_18_17();
    starttest(v38, v39);
    v40 = OUTLINED_FUNCTION_4_23();
    if (lpta_loadp_setscan_r(v40, v41))
    {
LABEL_19:
      v49 = OUTLINED_FUNCTION_3_24();
      if (lpta_loadp_setscan_l(v49, v50) || (OUTLINED_FUNCTION_2_25(), test_string_s()))
      {
LABEL_21:
        v28 = 85.0;
        goto LABEL_23;
      }
    }

    else
    {
LABEL_14:
      v42 = OUTLINED_FUNCTION_18_17();
      if (test_synch(v42, v43, 1u, v44))
      {
        goto LABEL_15;
      }
    }

    v28 = 75.0;
  }

  else
  {
LABEL_11:
    v35 = OUTLINED_FUNCTION_12_22();
    if (test_synch(v35, v36, 1u, v37))
    {
      goto LABEL_15;
    }

    v28 = 55.0;
  }

LABEL_23:
  *(a1 + 3400) = v28;
LABEL_24:
  vretproc(a1);
  result = 0;
LABEL_4:
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t por_nasal_dur(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v214 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_22_15(a1, a2, a3, a4, a5, a6, a7, a8, v131);
  OUTLINED_FUNCTION_23_15();
  OUTLINED_FUNCTION_38_6(v10, v11, v12, v13, v14, v15, v16, v17, v132, v135, v138, v141, v144, v147, v150, v153, v156, v159, v162, v165, v168, v171, v174, v177, v180, v183, v186, v189, v192, v195, v198, 0, 0, v204, v206, v208, v210, v212);
  v18 = setjmp(v8);
  if (v18 || OUTLINED_FUNCTION_13_22(v18, v19, v20, v21, v22, v23, v24, v25, v133, v136, v139, v142, v145, v148, v151, v154, v157, v160, v163, v166, v169, v172, v175, v178, v181, v184, v187, v190, v193, v196, v199, v201, v203, *v205, v205[4], *v207, *&v207[4], v207[6], v209, SWORD2(v209), SBYTE6(v209), SHIBYTE(v209), v211, v213))
  {
LABEL_3:
    vretproc(a1);
    result = 94;
    goto LABEL_4;
  }

  v28 = OUTLINED_FUNCTION_26_14();
  push_ptr_init(v28, v29);
  v30 = OUTLINED_FUNCTION_0_27();
  starttest(v30, v31);
  v32 = OUTLINED_FUNCTION_4_23();
  v34 = lpta_loadp_setscan_r(v32, v33);
  v35 = 0;
  v36 = 0;
  if (!v34)
  {
LABEL_9:
    v39 = v35;
    v41 = OUTLINED_FUNCTION_9_23();
    if (!test_synch(v41, v42, 1u, v43))
    {
      v44 = 25.0;
      goto LABEL_54;
    }

    goto LABEL_26;
  }

LABEL_6:
  v37 = OUTLINED_FUNCTION_19_16();
  v39 = v36;
  if (!lpta_loadp_setscan_l(v37, v38))
  {
LABEL_7:
    v40 = 0x4049000000000000;
LABEL_53:
    v44 = *&v40;
    goto LABEL_54;
  }

  while (2)
  {
    v45 = OUTLINED_FUNCTION_12_22();
    starttest(v45, v46);
    v47 = OUTLINED_FUNCTION_4_23();
    if (!lpta_loadp_setscan_r(v47, v48))
    {
      OUTLINED_FUNCTION_18_17();
      bspush_ca_scan_boa();
      v78 = 7;
      goto LABEL_23;
    }

LABEL_13:
    v49 = OUTLINED_FUNCTION_18_17();
    starttest(v49, v50);
    v51 = OUTLINED_FUNCTION_3_24();
    if (!lpta_loadp_setscan_l(v51, v52))
    {
      OUTLINED_FUNCTION_18_17();
      bspush_ca_scan_boa();
      v78 = 12;
LABEL_23:
      v79 = v78;
LABEL_24:
      if (!test_synch(a1, v79, 1u, &unk_2806BBEBF))
      {
        v39 = 1;
      }

      goto LABEL_26;
    }

LABEL_14:
    v53 = OUTLINED_FUNCTION_18_17();
    starttest(v53, v54);
    v55 = OUTLINED_FUNCTION_3_24();
    if (lpta_loadp_setscan_r(v55, v56))
    {
LABEL_52:
      v40 = 0x404E000000000000;
      goto LABEL_53;
    }

    v57 = OUTLINED_FUNCTION_16_19();
    if (!npush_fld(v57, v58, 8))
    {
      OUTLINED_FUNCTION_33_9();
      if (!if_testneq(a1, v59, v60, v61, v62, v63, v64, v65) && !advance_tok(a1))
      {
        v66 = OUTLINED_FUNCTION_18_17();
        starttest(v66, v67);
        v68 = OUTLINED_FUNCTION_3_24();
        v36 = v39;
        if (lpta_loadp_setscan_l(v68, v69))
        {
LABEL_51:
          v44 = 45.0;
          break;
        }

LABEL_19:
        OUTLINED_FUNCTION_30_10(17, v134, v137, v140, v143, v146, v149, v152, v155, v158, v161, v164, v167, v170, v173, v176, v179, v182, v185, v188, v191, v194, v197, v200, v202);
        v70 = OUTLINED_FUNCTION_18_17();
        bspush_ca_scan(v70, v71);
        v72 = OUTLINED_FUNCTION_6_23();
        v76 = testFldeq(v72, v73, v74, v75);
        v39 = v36;
        v77 = v36;
        if (!v76)
        {
LABEL_47:
          v39 = v77;
          if (!advance_tok(a1))
          {
            v128 = OUTLINED_FUNCTION_17_18();
            if (!lpta_loadp_setscan_r(v128, v129))
            {
              OUTLINED_FUNCTION_2_25();
              if (!test_string_s())
              {
LABEL_50:
                v40 = 0x4044000000000000;
                goto LABEL_53;
              }
            }
          }
        }
      }
    }

LABEL_26:
    v80 = v39;
LABEL_27:
    v81 = *(a1 + 104);
    if (v81)
    {
      v82 = OUTLINED_FUNCTION_24_15(v81);
      v36 = v83;
    }

    else
    {
      v82 = vback(a1, v80);
      v36 = 0;
    }

    if ((v82 - 1) > 0x13)
    {
      goto LABEL_3;
    }

    v44 = OUTLINED_FUNCTION_35_7();
    v77 = v36;
    switch(v84)
    {
      case 1:
        v35 = v36;
        goto LABEL_9;
      case 2:
      case 8:
      case 13:
      case 19:
        goto LABEL_55;
      case 3:
        v39 = v36;
        continue;
      case 4:
        v39 = v36;
        goto LABEL_13;
      case 5:
        bspop_boa(a1);
        v85 = OUTLINED_FUNCTION_2_25();
        v88 = testFldeq(v85, v86, v87, 1);
        v80 = v36;
        if (v88)
        {
          goto LABEL_27;
        }

        v89 = advance_tok(a1);
        v80 = v36;
        if (v89)
        {
          goto LABEL_27;
        }

        v90 = OUTLINED_FUNCTION_28_11();
        starttest(v90, v91);
        v92 = OUTLINED_FUNCTION_4_23();
        if (lpta_loadp_setscan_r(v92, v93))
        {
          goto LABEL_7;
        }

        v94 = OUTLINED_FUNCTION_8_23();
        v97 = testFldeq(v94, v95, v96, 1);
        v80 = v36;
        if (v97)
        {
          goto LABEL_27;
        }

        v98 = OUTLINED_FUNCTION_7_23();
        v101 = testFldeq(v98, v99, 2, v100);
        v80 = v36;
        if (v101)
        {
          goto LABEL_27;
        }

        v102 = advance_tok(a1);
        v80 = v36;
        if (v102)
        {
          goto LABEL_27;
        }

        v44 = 70.0;
        break;
      case 6:
        v130 = 7;
        goto LABEL_59;
      case 7:
        goto LABEL_54;
      case 9:
        v39 = v36;
        goto LABEL_14;
      case 10:
        bspop_boa(a1);
        v103 = OUTLINED_FUNCTION_8_23();
        v106 = testFldeq(v103, v104, v105, 4);
        v80 = v36;
        if (v106)
        {
          goto LABEL_27;
        }

        v107 = advance_tok(a1);
        v80 = v36;
        if (v107)
        {
          goto LABEL_27;
        }

        v108 = OUTLINED_FUNCTION_34_8();
        starttest(v108, v109);
        v110 = OUTLINED_FUNCTION_4_23();
        if (lpta_loadp_setscan_r(v110, v111))
        {
          goto LABEL_51;
        }

        v112 = OUTLINED_FUNCTION_16_19();
        v114 = npush_fld(v112, v113, 8);
        v80 = v36;
        if (!v114)
        {
          OUTLINED_FUNCTION_33_9();
          v122 = if_testneq(a1, v115, v116, v117, v118, v119, v120, v121);
          v80 = v36;
          if (!v122)
          {
            v123 = advance_tok(a1);
            v80 = v36;
            if (!v123)
            {
              goto LABEL_50;
            }
          }
        }

        goto LABEL_27;
      case 11:
        v130 = 12;
LABEL_59:
        v79 = v130;
        v39 = v36;
        goto LABEL_24;
      case 12:
      case 15:
        goto LABEL_51;
      case 14:
        goto LABEL_52;
      case 16:
        goto LABEL_19;
      case 17:
        v124 = OUTLINED_FUNCTION_11_22();
        v127 = testFldeq(v124, v125, v126, 18);
        v77 = v36;
        v80 = v36;
        if (!v127)
        {
          goto LABEL_47;
        }

        goto LABEL_27;
      case 18:
        goto LABEL_47;
      default:
        goto LABEL_6;
    }

    break;
  }

LABEL_54:
  *(a1 + 3400) = v44;
LABEL_55:
  vretproc(a1);
  result = 0;
LABEL_4:
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t por_ph_N_dur(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v96 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_22_15(a1, a2, a3, a4, a5, a6, a7, a8, v39);
  OUTLINED_FUNCTION_10_23(v10, v11, v12, v13, v14, v15, v16, v17, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94);
  v18 = setjmp(v8);
  if (!v18 && !OUTLINED_FUNCTION_1_25(v18, v19, v20, v21, v22, v23, v24, v25, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, *v87, v87[4], *v89, *&v89[4], v89[6], v91, SWORD2(v91), SBYTE6(v91), SHIBYTE(v91), v93, v95))
  {
    v28 = OUTLINED_FUNCTION_0_27();
    starttest(v28, v29);
    v30 = OUTLINED_FUNCTION_4_23();
    v32 = 90.0;
    if (lpta_loadp_setscan_r(v30, v31))
    {
LABEL_6:
      *(a1 + 3400) = v32;
    }

    else
    {
      do
      {
        v33 = OUTLINED_FUNCTION_28_11();
        if (!test_synch(v33, v34, 1u, &unk_2806BBEBF))
        {
          v32 = 25.0;
          goto LABEL_6;
        }

        v35 = *(a1 + 104);
        if (v35)
        {
          v36 = OUTLINED_FUNCTION_24_15(v35);
        }

        else
        {
          v37 = OUTLINED_FUNCTION_25_14();
          v36 = vback(v37, v38);
        }
      }

      while (v36 == 2);
      if (v36 == 1)
      {
        goto LABEL_6;
      }

      if (v36 != 3)
      {
        goto LABEL_3;
      }
    }

    vretproc(a1);
    result = 0;
    goto LABEL_4;
  }

LABEL_3:
  vretproc(a1);
  result = 94;
LABEL_4:
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t cons_syll_phone_adjust(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v72 = *MEMORY[0x277D85DE8];
  v67[0] = 0;
  v67[1] = 0;
  v65 = 0;
  v66 = 0;
  v64 = 0;
  OUTLINED_FUNCTION_22_15(a1, a2, a3, a4, a5, a6, a7, a8, v63[0]);
  OUTLINED_FUNCTION_23_15();
  bzero(v71, v9);
  if (setjmp(v71) || ventproc(a1, v63, v70, v69, v68, v71))
  {
LABEL_3:
    v10 = 94;
    goto LABEL_4;
  }

  push_ptr_init(a1, v67);
  v66 = 0;
  LOWORD(v65) = -5;
  v64 = 65532;
  v14 = OUTLINED_FUNCTION_0_27();
  starttest(v14, v15);
  v16 = OUTLINED_FUNCTION_3_24();
  v18 = 0;
  v19 = 0;
  if (!lpta_loadp_setscan_l(v16, v17))
  {
LABEL_6:
    savescptr(a1, 2, v67);
    OUTLINED_FUNCTION_14_20();
    bspush_ca_scan_boa();
LABEL_7:
    v20 = OUTLINED_FUNCTION_18_17();
    if (!test_synch(v20, v21, 1u, v22))
    {
      v18 = 1;
    }

    goto LABEL_9;
  }

  while (2)
  {
    v48 = OUTLINED_FUNCTION_17_18();
    if (lpta_loadp_setscan_r(v48, v49) || advance_tok(a1) || (v10 = OUTLINED_FUNCTION_21_15(), v10))
    {
LABEL_36:
      v50 = OUTLINED_FUNCTION_17_18();
      if (lpta_loadp_setscan_r(v50, v51) || advance_tok(a1) || advance_tok(a1))
      {
        v18 = v19;
      }

      else
      {
        v10 = OUTLINED_FUNCTION_21_15();
        v18 = v19;
        if (!v10)
        {
          break;
        }
      }

LABEL_40:
      v52 = OUTLINED_FUNCTION_17_18();
      if (lpta_loadp_setscan_r(v52, v53) || advance_tok(a1) || advance_tok(a1) || advance_tok(a1) || OUTLINED_FUNCTION_21_15())
      {
LABEL_45:
        v54 = OUTLINED_FUNCTION_17_18();
        if (lpta_loadp_setscan_r(v54, v55) || advance_tok(a1) || advance_tok(a1) || advance_tok(a1) || advance_tok(a1) || OUTLINED_FUNCTION_21_15())
        {
LABEL_51:
          v56 = OUTLINED_FUNCTION_18_17();
          starttest(v56, v57);
          goto LABEL_52;
        }
      }

      v61 = OUTLINED_FUNCTION_18_17();
      starttest_e(v61, v62);
LABEL_52:
      OUTLINED_FUNCTION_31_10();
      move_f(v58);
      v59 = OUTLINED_FUNCTION_28_11();
      move_i(v59, v60, 20);
      OUTLINED_FUNCTION_31_10();
      v10 = setdur();
      if (!v10)
      {
        break;
      }

LABEL_9:
      v23 = v18;
LABEL_10:
      v24 = a1[13];
      if (v24)
      {
        v25 = OUTLINED_FUNCTION_24_15(v24);
        v18 = v26;
      }

      else
      {
        v25 = vback(a1, v23);
        v18 = 0;
      }

      v27 = v25 - 1;
      v10 = 0;
      switch(v27)
      {
        case 0:
          v19 = v18;
          continue;
        case 1:
          goto LABEL_6;
        case 2:
          bspop_boa(a1);
          v28 = OUTLINED_FUNCTION_2_25();
          v31 = testFldeq(v28, v29, v30, 1);
          v23 = v18;
          if (v31)
          {
            goto LABEL_10;
          }

          OUTLINED_FUNCTION_31_10();
          goto LABEL_20;
        case 3:
          goto LABEL_7;
        case 4:
          bspop_boa(a1);
          v41 = advance_tok(a1);
          v23 = v18;
          if (v41)
          {
            goto LABEL_10;
          }

          v42 = lpta_loadp_setscan_r(a1, v67);
          v23 = v18;
          if (v42)
          {
            goto LABEL_10;
          }

          v43 = OUTLINED_FUNCTION_2_25();
          v46 = testFldeq(v43, v44, v45, 1);
          v23 = v18;
          if (v46)
          {
            goto LABEL_10;
          }

          v47 = advance_tok(a1);
          v23 = v18;
          if (v47)
          {
            goto LABEL_10;
          }

          bspush_ca_scan_boa();
          goto LABEL_26;
        case 5:
          bspop_boa(a1);
          v33 = OUTLINED_FUNCTION_2_25();
          v36 = testFldeq(v33, v34, v35, 1);
          v23 = v18;
          if (v36)
          {
            goto LABEL_10;
          }

LABEL_20:
          bspush_ca_scan_boa();
          v37 = OUTLINED_FUNCTION_8_23();
          v40 = testFldeq(v37, v38, v39, 6);
          goto LABEL_27;
        case 6:
LABEL_26:
          v40 = test_synch(a1, 7, 1u, &unk_2806BBEC8);
LABEL_27:
          if (v40)
          {
            v23 = v18;
          }

          else
          {
            v23 = 1;
          }

          goto LABEL_10;
        case 7:
          bspop_boa(a1);
          v32 = advance_tok(a1);
          v23 = v18;
          if (v32)
          {
            goto LABEL_10;
          }

          starttest_l(a1, 9);
          OUTLINED_FUNCTION_39_5();
          move_f(0.2);
          move_i(a1, &v64, 10);
          OUTLINED_FUNCTION_39_5();
          v10 = setdur();
          v23 = v18;
          if (v10)
          {
            goto LABEL_10;
          }

          goto LABEL_4;
        case 8:
        case 9:
        case 13:
        case 15:
          goto LABEL_4;
        case 10:
          v19 = v18;
          goto LABEL_36;
        case 11:
          goto LABEL_40;
        case 12:
          goto LABEL_45;
        case 14:
          goto LABEL_51;
        default:
          goto LABEL_3;
      }
    }

    break;
  }

LABEL_4:
  v11 = v10;
  vretproc(a1);
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t voiceless_stop_dur(double *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v236 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_22_15(a1, a2, a3, a4, a5, a6, a7, a8, v153);
  OUTLINED_FUNCTION_23_15();
  OUTLINED_FUNCTION_38_6(v10, v11, v12, v13, v14, v15, v16, v17, v154, v157, v160, v163, v166, v169, v172, v175, v178, v181, v184, v187, v190, v193, v196, v199, v202, v205, v208, v211, v214, v217, v220, 0, 0, v226, v228, v230, v232, v234);
  v18 = setjmp(v8);
  if (v18 || OUTLINED_FUNCTION_13_22(v18, v19, v20, v21, v22, v23, v24, v25, v155, v158, v161, v164, v167, v170, v173, v176, v179, v182, v185, v188, v191, v194, v197, v200, v203, v206, v209, v212, v215, v218, v221, v223, v225, *v227, v227[4], *v229, *&v229[4], v229[6], v231, SWORD2(v231), SBYTE6(v231), SHIBYTE(v231), v233, v235))
  {
LABEL_3:
    vretproc(a1);
    result = 94;
    goto LABEL_4;
  }

  v28 = OUTLINED_FUNCTION_26_14();
  push_ptr_init(v28, v29);
  v30 = OUTLINED_FUNCTION_0_27();
  starttest(v30, v31);
  v32 = OUTLINED_FUNCTION_3_24();
  v34 = lpta_loadp_setscan_l(v32, v33);
  v35 = 0;
  v36 = 0;
  if (!v34)
  {
LABEL_10:
    v36 = v35;
    v45 = OUTLINED_FUNCTION_9_23();
    if (test_synch(v45, v46, 1u, v47))
    {
      goto LABEL_52;
    }

    v44 = 5.0;
    goto LABEL_12;
  }

  while (2)
  {
    OUTLINED_FUNCTION_27_12();
    v37 = OUTLINED_FUNCTION_20_15();
    v39 = lpta_loadp_setscan_r(v37, v38);
    v40 = v36;
    if (!v39)
    {
LABEL_7:
      v41 = OUTLINED_FUNCTION_12_22();
      if (!test_synch(v41, v42, 1u, v43))
      {
        v44 = 15.0;
        goto LABEL_12;
      }

LABEL_52:
      v135 = *(a1 + 13);
      if (v135)
      {
        v136 = OUTLINED_FUNCTION_24_15(v135);
        v36 = v137;
      }

      else
      {
        v136 = vback(a1, v36);
        v36 = 0;
      }

      v44 = 95.0;
      switch(v136)
      {
        case 1:
          continue;
        case 2:
          v35 = v36;
          goto LABEL_10;
        case 3:
          goto LABEL_13;
        case 4:
          v40 = v36;
          goto LABEL_18;
        case 5:
          goto LABEL_7;
        case 6:
          goto LABEL_19;
        case 7:
          bspop_boa(a1);
          if (advance_tok(a1))
          {
            goto LABEL_52;
          }

          v44 = 35.0;
          goto LABEL_12;
        case 8:
          goto LABEL_20;
        case 9:
          bspop_boa(a1);
          if (advance_tok(a1))
          {
            goto LABEL_52;
          }

          v106 = 0x4049000000000000;
          goto LABEL_70;
        case 10:
          v63 = v36;
          goto LABEL_21;
        case 11:
          goto LABEL_31;
        case 12:
          v70 = v36;
          goto LABEL_41;
        case 13:
          goto LABEL_22;
        case 14:
          goto LABEL_42;
        case 15:
          bspop_boa(a1);
          if (!advance_tok(a1))
          {
            goto LABEL_61;
          }

          goto LABEL_52;
        case 16:
          goto LABEL_43;
        case 17:
          goto LABEL_44;
        case 18:
          goto LABEL_12;
        case 19:
          goto LABEL_16;
        default:
          goto LABEL_3;
      }
    }

    break;
  }

LABEL_18:
  v36 = v40;
  v50 = OUTLINED_FUNCTION_18_17();
  starttest(v50, v51);
  v52 = OUTLINED_FUNCTION_4_23();
  if (!lpta_loadp_setscan_r(v52, v53))
  {
    v76 = OUTLINED_FUNCTION_8_23();
    if (testFldeq(v76, v77, v78, 1))
    {
      goto LABEL_52;
    }

    OUTLINED_FUNCTION_18_17();
    bspush_ca_scan_boa();
    v79 = OUTLINED_FUNCTION_8_23();
    v82 = 4;
LABEL_50:
    if (!testFldeq(v79, v80, v81, v82))
    {
      v36 = 1;
    }

    goto LABEL_52;
  }

LABEL_19:
  v54 = OUTLINED_FUNCTION_18_17();
  starttest(v54, v55);
  v56 = OUTLINED_FUNCTION_3_24();
  if (!lpta_loadp_setscan_l(v56, v57))
  {
    v83 = OUTLINED_FUNCTION_8_23();
    if (testFldeq(v83, v84, v85, 4))
    {
      goto LABEL_52;
    }

LABEL_49:
    OUTLINED_FUNCTION_18_17();
    bspush_ca_scan_boa();
    v79 = OUTLINED_FUNCTION_6_23();
    goto LABEL_50;
  }

LABEL_20:
  v58 = OUTLINED_FUNCTION_18_17();
  starttest(v58, v59);
  v60 = OUTLINED_FUNCTION_3_24();
  v62 = lpta_loadp_setscan_l(v60, v61);
  v63 = v36;
  if (!v62)
  {
LABEL_31:
    OUTLINED_FUNCTION_30_10(11, v156, v159, v162, v165, v168, v171, v174, v177, v180, v183, v186, v189, v192, v195, v198, v201, v204, v207, v210, v213, v216, v219, v222, v224);
    v86 = OUTLINED_FUNCTION_16_19();
    if (npush_fld(v86, v87, 8))
    {
      goto LABEL_52;
    }

    OUTLINED_FUNCTION_33_9();
    if (if_testneq(a1, v88, v89, v90, v91, v92, v93, v94))
    {
      goto LABEL_52;
    }

    if (advance_tok(a1))
    {
      goto LABEL_52;
    }

    v95 = OUTLINED_FUNCTION_17_18();
    if (lpta_loadp_setscan_r(v95, v96))
    {
      goto LABEL_52;
    }

    v97 = OUTLINED_FUNCTION_16_19();
    if (npush_fld(v97, v98, 8))
    {
      goto LABEL_52;
    }

    OUTLINED_FUNCTION_33_9();
    if (if_testneq(a1, v99, v100, v101, v102, v103, v104, v105) || advance_tok(a1))
    {
      goto LABEL_52;
    }

    v106 = 0x404E000000000000;
    goto LABEL_70;
  }

LABEL_21:
  v64 = v63;
  v65 = OUTLINED_FUNCTION_18_17();
  starttest(v65, v66);
  v67 = OUTLINED_FUNCTION_3_24();
  v69 = lpta_loadp_setscan_l(v67, v68);
  v36 = v64;
  v70 = v64;
  if (v69)
  {
LABEL_41:
    v36 = v70;
    v107 = OUTLINED_FUNCTION_18_17();
    starttest(v107, v108);
    v109 = OUTLINED_FUNCTION_3_24();
    if (lpta_loadp_setscan_l(v109, v110))
    {
LABEL_42:
      v111 = OUTLINED_FUNCTION_18_17();
      starttest(v111, v112);
      v113 = OUTLINED_FUNCTION_4_23();
      if (lpta_loadp_setscan_r(v113, v114))
      {
LABEL_43:
        v115 = OUTLINED_FUNCTION_18_17();
        starttest(v115, v116);
        v117 = OUTLINED_FUNCTION_4_23();
        if (!lpta_loadp_setscan_r(v117, v118))
        {
          v141 = OUTLINED_FUNCTION_2_25();
          if (testFldeq(v141, v142, v143, 2))
          {
            goto LABEL_52;
          }

          v144 = OUTLINED_FUNCTION_16_19();
          if (npush_fld(v144, v145, 8))
          {
            goto LABEL_52;
          }

          OUTLINED_FUNCTION_33_9();
          if (if_testeq(a1, v146, v147, v148, v149, v150, v151, v152) || advance_tok(a1))
          {
            goto LABEL_52;
          }

          v106 = 0x4059000000000000;
          goto LABEL_70;
        }

LABEL_44:
        v119 = OUTLINED_FUNCTION_18_17();
        starttest(v119, v120);
        v121 = OUTLINED_FUNCTION_4_23();
        if (lpta_loadp_setscan_r(v121, v122))
        {
          v44 = 95.0;
          goto LABEL_12;
        }

        v123 = OUTLINED_FUNCTION_16_19();
        if (npush_fld(v123, v124, 8))
        {
          goto LABEL_52;
        }

        OUTLINED_FUNCTION_33_9();
        if (if_testneq(a1, v125, v126, v127, v128, v129, v130, v131))
        {
          goto LABEL_52;
        }
      }

      else
      {
        v138 = OUTLINED_FUNCTION_2_25();
        if (testFldeq(v138, v139, v140, 1))
        {
          goto LABEL_52;
        }
      }

      if (advance_tok(a1))
      {
        goto LABEL_52;
      }

LABEL_61:
      v106 = 0x4054000000000000;
LABEL_70:
      v44 = *&v106;
      goto LABEL_12;
    }

    v132 = OUTLINED_FUNCTION_2_25();
    if (testFldeq(v132, v133, v134, 1))
    {
      goto LABEL_52;
    }

    goto LABEL_49;
  }

LABEL_22:
  OUTLINED_FUNCTION_30_10(13, v156, v159, v162, v165, v168, v171, v174, v177, v180, v183, v186, v189, v192, v195, v198, v201, v204, v207, v210, v213, v216, v219, v222, v224);
  v71 = OUTLINED_FUNCTION_8_23();
  if (testFldeq(v71, v72, v73, 2))
  {
    goto LABEL_52;
  }

  if (advance_tok(a1))
  {
    goto LABEL_52;
  }

  v74 = OUTLINED_FUNCTION_17_18();
  if (lpta_loadp_setscan_r(v74, v75))
  {
    goto LABEL_52;
  }

  OUTLINED_FUNCTION_2_25();
  if (test_string_s())
  {
    goto LABEL_52;
  }

  v44 = 70.0;
LABEL_12:
  a1[425] = v44;
LABEL_13:
  v48 = OUTLINED_FUNCTION_20_15();
  lpta_loadpn(v48, v49);
  lpta_ctxtr();
  rpta_loadpn(a1, a1 + 183);
  if (!compare_ptas(a1) && !testeq(a1))
  {
    a1[425] = a1[425] * 12.0 / 10.0;
  }

LABEL_16:
  vretproc(a1);
  result = 0;
LABEL_4:
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t voiced_stop_dur(uint64_t a1)
{
  OUTLINED_FUNCTION_15_20(*MEMORY[0x277D85DE8], v64);
  OUTLINED_FUNCTION_10_23(v3, v4, v5, v6, v7, v8, v9, v10, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_1_25(v11, v12, v13, v14, v15, v16, v17, v18, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, *v112, v112[4], *v114, *&v114[4], v114[6], v116, SWORD2(v116), SBYTE6(v116), SHIBYTE(v116), v118, v120))
  {
LABEL_3:
    vretproc(a1);
    result = 94;
    goto LABEL_4;
  }

  v21 = OUTLINED_FUNCTION_0_27();
  starttest(v21, v22);
  v23 = OUTLINED_FUNCTION_4_23();
  if (!lpta_loadp_setscan_r(v23, v24))
  {
    while (2)
    {
      v25 = OUTLINED_FUNCTION_9_23();
      if (!test_synch(v25, v26, 1u, v27))
      {
LABEL_7:
        v28 = 10.0;
        goto LABEL_29;
      }

LABEL_11:
      v34 = *(a1 + 104);
      if (v34)
      {
        v35 = OUTLINED_FUNCTION_24_15(v34);
      }

      else
      {
        v36 = OUTLINED_FUNCTION_25_14();
        v35 = vback(v36, v37);
      }

      if ((v35 - 1) <= 7)
      {
        v28 = OUTLINED_FUNCTION_35_7();
        switch(v38)
        {
          case 1:
            continue;
          case 2:
          case 7:
            goto LABEL_30;
          case 3:
            goto LABEL_16;
          case 4:
            goto LABEL_17;
          case 5:
          case 6:
            goto LABEL_29;
          default:
            goto LABEL_8;
        }
      }

      goto LABEL_3;
    }
  }

LABEL_8:
  OUTLINED_FUNCTION_27_12();
  v29 = OUTLINED_FUNCTION_19_16();
  if (!lpta_loadp_setscan_l(v29, v30))
  {
    v31 = OUTLINED_FUNCTION_8_23();
    if (!testFldeq(v31, v32, v33, 4) && !advance_tok(a1))
    {
      goto LABEL_7;
    }

    goto LABEL_11;
  }

LABEL_16:
  v39 = OUTLINED_FUNCTION_12_22();
  starttest(v39, v40);
  v41 = OUTLINED_FUNCTION_3_24();
  if (lpta_loadp_setscan_l(v41, v42))
  {
LABEL_17:
    v43 = OUTLINED_FUNCTION_4_23();
    if (lpta_loadp_setscan_r(v43, v44) || (OUTLINED_FUNCTION_2_25(), test_string_s()) || (v45 = OUTLINED_FUNCTION_18_17(), starttest(v45, v46), v47 = OUTLINED_FUNCTION_3_24(), lpta_loadp_setscan_r(v47, v48)))
    {
      v28 = 40.0;
    }

    else
    {
      v49 = OUTLINED_FUNCTION_16_19();
      if (npush_fld(v49, v50, 8))
      {
        goto LABEL_11;
      }

      OUTLINED_FUNCTION_33_9();
      if (if_testneq(a1, v51, v52, v53, v54, v55, v56, v57) || advance_tok(a1))
      {
        goto LABEL_11;
      }

      v28 = 30.0;
    }
  }

  else
  {
    v58 = OUTLINED_FUNCTION_7_23();
    if (testFldeq(v58, v59, 2, v60))
    {
      goto LABEL_11;
    }

    v61 = OUTLINED_FUNCTION_8_23();
    if (testFldeq(v61, v62, v63, 1) || advance_tok(a1))
    {
      goto LABEL_11;
    }

    v28 = 20.0;
  }

LABEL_29:
  *(a1 + 3400) = v28;
LABEL_30:
  vretproc(a1);
  result = 0;
LABEL_4:
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t OUTLINED_FUNCTION_1_25(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, char a33, int a34, __int16 a35, char a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, char a42)
{

  return ventproc(v42, &a9, &a40, &a36, &a33, &a42);
}

void OUTLINED_FUNCTION_10_23(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{

  bzero(&a36, 0xC0uLL);
}

uint64_t OUTLINED_FUNCTION_13_22(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, char a35, int a36, __int16 a37, char a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, char a44)
{

  return ventproc(v44, &a9, &a42, &a38, &a35, &a44);
}

void OUTLINED_FUNCTION_15_20(uint64_t a1@<X8>, uint64_t a2)
{
  *(v2 - 40) = a1;

  bzero(&a2, 0xB8uLL);
}

uint64_t OUTLINED_FUNCTION_21_15()
{
  *(v0 + 136) = 1;
  *(v0 + 112) = *(v0 + 792);
  *(v0 + 128) = 0;

  return test_ptr(v0);
}

void OUTLINED_FUNCTION_22_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  bzero(&a9, 0xB8uLL);
}

void OUTLINED_FUNCTION_27_12()
{

  starttest(v0, 4);
}

double OUTLINED_FUNCTION_30_10@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{

  *&result = savescptr(v25, a1, &a25).n128_u64[0];
  return result;
}

BOOL OUTLINED_FUNCTION_32_9(uint64_t a1, unsigned int a2)
{

  return testFldeq(a1, a2, 1, 1);
}

uint64_t OUTLINED_FUNCTION_33_9()
{

  return npush_i(v0);
}

void OUTLINED_FUNCTION_38_6(uint64_t a1, size_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{

  bzero(&a38, a2);
}

double OUTLINED_FUNCTION_40_4()
{
  result = *(v0 + 3400) + 20.0;
  *(v0 + 3400) = result;
  return result;
}

uint64_t por_con_vals(uint64_t a1)
{
  OUTLINED_FUNCTION_36_8(*MEMORY[0x277D85DE8], v107);
  OUTLINED_FUNCTION_31_11(v3, v4, v5, v6, v7, v8, v9, v10, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142, v144, v146, v148, v150, v152, v154, v156, v158, v160, v162);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_10_24(v11, v12, v13, v14, v15, v16, v17, v18, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, v141, v143, v145, v147, v149, v151, v153, *v155, v155[4], *v157, *&v157[4], v157[6], v159, SWORD2(v159), SBYTE6(v159), SHIBYTE(v159), v161, v163))
  {
LABEL_3:
    vretproc(a1);
    result = 94;
  }

  else
  {
    fence_24(a1);
    v21 = OUTLINED_FUNCTION_15_21();
    if (lpta_loadp_setscan_r(v21, v22) || (OUTLINED_FUNCTION_17_19(), test_string_s()))
    {
LABEL_7:
      v30 = OUTLINED_FUNCTION_15_21();
      if (lpta_loadp_setscan_r(v30, v31) || (OUTLINED_FUNCTION_17_19(), test_string_s()))
      {
LABEL_9:
        v39 = OUTLINED_FUNCTION_15_21();
        if (lpta_loadp_setscan_r(v39, v40) || (OUTLINED_FUNCTION_17_19(), test_string_s()))
        {
LABEL_11:
          v41 = OUTLINED_FUNCTION_15_21();
          if (lpta_loadp_setscan_r(v41, v42) || (OUTLINED_FUNCTION_17_19(), test_string_s()))
          {
LABEL_13:
            v43 = OUTLINED_FUNCTION_15_21();
            if (lpta_loadp_setscan_r(v43, v44) || (OUTLINED_FUNCTION_17_19(), test_string_s()))
            {
LABEL_15:
              v45 = OUTLINED_FUNCTION_15_21();
              if (lpta_loadp_setscan_r(v45, v46) || (OUTLINED_FUNCTION_17_19(), test_string_s()))
              {
LABEL_17:
                v47 = OUTLINED_FUNCTION_15_21();
                if (lpta_loadp_setscan_r(v47, v48) || (OUTLINED_FUNCTION_17_19(), test_string_s()))
                {
LABEL_19:
                  v49 = OUTLINED_FUNCTION_15_21();
                  if (lpta_loadp_setscan_r(v49, v50) || (OUTLINED_FUNCTION_17_19(), test_string_s()))
                  {
LABEL_21:
                    v58 = OUTLINED_FUNCTION_15_21();
                    if (lpta_loadp_setscan_r(v58, v59) || (OUTLINED_FUNCTION_17_19(), test_string_s()))
                    {
LABEL_23:
                      v67 = OUTLINED_FUNCTION_15_21();
                      if (lpta_loadp_setscan_r(v67, v68) || (OUTLINED_FUNCTION_17_19(), test_string_s()))
                      {
LABEL_25:
                        v69 = OUTLINED_FUNCTION_15_21();
                        if (lpta_loadp_setscan_r(v69, v70) || (OUTLINED_FUNCTION_17_19(), test_string_s()))
                        {
LABEL_27:
                          v71 = OUTLINED_FUNCTION_15_21();
                          if (lpta_loadp_setscan_r(v71, v72) || (OUTLINED_FUNCTION_17_19(), test_string_s()))
                          {
LABEL_29:
                            v73 = OUTLINED_FUNCTION_15_21();
                            if (lpta_loadp_setscan_r(v73, v74) || (OUTLINED_FUNCTION_17_19(), test_string_s()))
                            {
LABEL_31:
                              v75 = OUTLINED_FUNCTION_15_21();
                              if (lpta_loadp_setscan_r(v75, v76) || (OUTLINED_FUNCTION_17_19(), test_string_s()))
                              {
LABEL_33:
                                v77 = OUTLINED_FUNCTION_15_21();
                                if (lpta_loadp_setscan_r(v77, v78) || (OUTLINED_FUNCTION_17_19(), test_string_s()))
                                {
LABEL_35:
                                  v79 = OUTLINED_FUNCTION_15_21();
                                  if (lpta_loadp_setscan_r(v79, v80) || (OUTLINED_FUNCTION_17_19(), test_string_s()))
                                  {
LABEL_37:
                                    v81 = OUTLINED_FUNCTION_15_21();
                                    if (lpta_loadp_setscan_r(v81, v82) || (OUTLINED_FUNCTION_17_19(), test_string_s()))
                                    {
LABEL_39:
                                      v83 = OUTLINED_FUNCTION_15_21();
                                      if (lpta_loadp_setscan_r(v83, v84) || (OUTLINED_FUNCTION_17_19(), test_string_s()))
                                      {
LABEL_41:
                                        v85 = OUTLINED_FUNCTION_15_21();
                                        if (lpta_loadp_setscan_r(v85, v86) || (OUTLINED_FUNCTION_17_19(), test_string_s()))
                                        {
LABEL_43:
                                          v87 = OUTLINED_FUNCTION_15_21();
                                          if (lpta_loadp_setscan_r(v87, v88) || (OUTLINED_FUNCTION_17_19(), test_string_s()))
                                          {
LABEL_45:
                                            v89 = OUTLINED_FUNCTION_15_21();
                                            if (!lpta_loadp_setscan_r(v89, v90))
                                            {
                                              OUTLINED_FUNCTION_17_19();
                                              if (!test_string_s())
                                              {
                                                por_ph_N(a1, v91, v92, v93, v94, v95, v96, v97);
                                              }
                                            }
                                          }

                                          else
                                          {
                                            por_ph_m(a1);
                                          }
                                        }

                                        else
                                        {
                                          por_ph_n(a1);
                                        }
                                      }

                                      else
                                      {
                                        por_ph_Z(a1);
                                      }
                                    }

                                    else
                                    {
                                      por_ph_S(a1);
                                    }
                                  }

                                  else
                                  {
                                    por_ph_z(a1);
                                  }
                                }

                                else
                                {
                                  por_ph_s(a1);
                                }
                              }

                              else
                              {
                                por_ph_v(a1);
                              }
                            }

                            else
                            {
                              por_ph_f(a1);
                            }
                          }

                          else
                          {
                            por_ph_R(a1);
                          }
                        }

                        else
                        {
                          por_ph_r(a1);
                        }
                      }

                      else
                      {
                        por_ph_l(a1);
                      }
                    }

                    else
                    {
                      por_ph_pal_l(a1, v60, v61, v62, v63, v64, v65, v66);
                    }
                  }

                  else
                  {
                    por_ph_y(a1, v51, v52, v53, v54, v55, v56, v57);
                  }
                }

                else
                {
                  por_ph_w(a1);
                }
              }

              else
              {
                por_ph_g(a1);
              }
            }

            else
            {
              por_ph_d(a1);
            }
          }

          else
          {
            por_ph_b(a1);
          }
        }

        else
        {
          por_ph_k(a1);
        }
      }

      else
      {
        por_ph_t(a1, v32, v33, v34, v35, v36, v37, v38);
      }
    }

    else
    {
      por_ph_p(a1, v23, v24, v25, v26, v27, v28, v29);
    }

    while (2)
    {
      v98 = OUTLINED_FUNCTION_65_3();
      starttest(v98, v99);
      OUTLINED_FUNCTION_118_0();
      if (v100 == v101)
      {
        v102 = OUTLINED_FUNCTION_107_0();
        bspush_ca(v102);
        if (*(a1 + 4402) <= 0)
        {
LABEL_70:
          v103 = *(a1 + 104);
          if (v103)
          {
            v104 = OUTLINED_FUNCTION_74_3(v103);
          }

          else
          {
            v105 = OUTLINED_FUNCTION_84_2();
            v104 = vback(v105, v106);
          }

          switch(v104)
          {
            case 1:
              goto LABEL_7;
            case 2:
            case 3:
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
            case 27:
            case 29:
            case 31:
            case 33:
            case 35:
            case 37:
            case 39:
            case 41:
            case 42:
              continue;
            case 4:
              goto LABEL_9;
            case 6:
              goto LABEL_11;
            case 8:
              goto LABEL_13;
            case 10:
              goto LABEL_15;
            case 12:
              goto LABEL_17;
            case 14:
              goto LABEL_19;
            case 16:
              goto LABEL_21;
            case 18:
              goto LABEL_23;
            case 20:
              goto LABEL_25;
            case 22:
              goto LABEL_27;
            case 24:
              goto LABEL_29;
            case 26:
              goto LABEL_31;
            case 28:
              goto LABEL_33;
            case 30:
              goto LABEL_35;
            case 32:
              goto LABEL_37;
            case 34:
              goto LABEL_39;
            case 36:
              goto LABEL_41;
            case 38:
              goto LABEL_43;
            case 40:
              goto LABEL_45;
            case 43:
              goto LABEL_76;
            case 44:
              if (*(a1 + 4466) >= 1)
              {
                break;
              }

              goto LABEL_70;
            case 45:
              break;
            case 46:
              goto LABEL_77;
            default:
              goto LABEL_3;
          }
        }

        adjust_AH_AF_for_TLv_w(a1);
      }

      break;
    }

LABEL_76:
    insert_acoustic_vals(a1);
LABEL_77:
    vretproc(a1);
    result = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t por_ph_p(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v10 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_47_4(a1, a2, a3, a4, a5, a6, a7, a8, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118, v121, v122);
  OUTLINED_FUNCTION_69_3();
  OUTLINED_FUNCTION_110_0(v11, v12, v13, v14, v15, v16, v17, v18, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v119, v121, v122, v123, v124, v125, v126, v127);
  v19 = setjmp(v8);
  if (v19 || OUTLINED_FUNCTION_30_11(v19, v20, v21, v22, v23, v24, v25, v26, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117, v120, v121, v122, v123, SBYTE4(v123), v124, SWORD2(v124), SBYTE6(v124), v125, SWORD2(v125), SBYTE6(v125), SHIBYTE(v125), v126, v127))
  {
LABEL_3:
    vretproc(a1);
    result = 94;
  }

  else
  {
    v29 = OUTLINED_FUNCTION_76_3();
    push_ptr_init(v29, v30);
    fence_24(a1);
    *(a1 + 4578) = 225;
    *(a1 + 4582) = 275;
    v31 = OUTLINED_FUNCTION_22_16();
    starttest(v31, v32);
    v33 = OUTLINED_FUNCTION_15_21();
    if (lpta_loadp_setscan_l(v33, v34))
    {
      v35 = 57;
    }

    else
    {
      while (2)
      {
        savescptr(a1, 2, &v121);
        v38 = OUTLINED_FUNCTION_17_19();
        if (testFldeq(v38, v39, v40, 2) || advance_tok(a1) || (v41 = OUTLINED_FUNCTION_107_0(), lpta_loadp_setscan_r(v41, v42)) || advance_tok(a1) || (v43 = OUTLINED_FUNCTION_17_19(), testFldeq(v43, v44, v45, 2)) || advance_tok(a1))
        {
          v46 = *(a1 + 104);
          if (v46)
          {
            v47 = OUTLINED_FUNCTION_74_3(v46);
          }

          else
          {
            v48 = OUTLINED_FUNCTION_84_2();
            v47 = vback(v48, v49);
          }

          v35 = 57;
          switch(v47)
          {
            case 1:
              goto LABEL_7;
            case 2:
              continue;
            case 3:
              goto LABEL_8;
            case 4:
              goto LABEL_9;
            case 5:
              goto LABEL_22;
            case 6:
              goto LABEL_25;
            default:
              goto LABEL_3;
          }
        }

        break;
      }

      v35 = 62;
    }

LABEL_7:
    *(a1 + 4506) = v35;
LABEL_8:
    *(a1 + 4554) = 60;
    por_labial_Fv(a1);
LABEL_9:
    v36 = OUTLINED_FUNCTION_16_20();
    if (!lpta_loadp_setscan_r(v36, v37))
    {
      OUTLINED_FUNCTION_17_19();
      if (!test_string_s())
      {
        *(a1 + 4466) = 45;
      }
    }

LABEL_22:
    OUTLINED_FUNCTION_81_3();
    if (v50 != v51)
    {
      *(a1 + 4554) -= 10;
      OUTLINED_FUNCTION_80_3();
    }

LABEL_25:
    vretproc(a1);
    result = 0;
  }

  v28 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t por_ph_t(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v10 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_47_4(a1, a2, a3, a4, a5, a6, a7, a8, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v147, v151, v155, v159, v163);
  OUTLINED_FUNCTION_69_3();
  OUTLINED_FUNCTION_110_0(v11, v12, v13, v14, v15, v16, v17, v18, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144, v148, v152, v156, v160, v164, v166, v168, v170, v172, v174);
  v19 = setjmp(v8);
  if (v19 || OUTLINED_FUNCTION_30_11(v19, v20, v21, v22, v23, v24, v25, v26, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, v149, v153, v157, v161, v165, *v167, v167[4], *v169, *&v169[4], v169[6], v171, SWORD2(v171), SBYTE6(v171), SHIBYTE(v171), v173, v175))
  {
LABEL_3:
    v27 = 94;
    goto LABEL_4;
  }

  v30 = OUTLINED_FUNCTION_76_3();
  push_ptr_init(v30, v31);
  OUTLINED_FUNCTION_24_16();
  *(a1 + 4582) = v32;
  v33 = OUTLINED_FUNCTION_22_16();
  starttest(v33, v34);
  v35 = OUTLINED_FUNCTION_15_21();
  v37 = lpta_loadp_setscan_l(v35, v36);
  if (v37)
  {
    v45 = 54;
  }

  else
  {
LABEL_7:
    OUTLINED_FUNCTION_109_0(v37, v38, v39, v40, v41, v42, v43, v44, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142, v146, v150, v154, v158, v162);
    v46 = OUTLINED_FUNCTION_17_19();
    if (testFldeq(v46, v47, v48, 2))
    {
      goto LABEL_21;
    }

    if (advance_tok(a1))
    {
      goto LABEL_21;
    }

    v49 = OUTLINED_FUNCTION_61_3();
    if (lpta_loadp_setscan_r(v49, v50))
    {
      goto LABEL_21;
    }

    if (advance_tok(a1))
    {
      goto LABEL_21;
    }

    v51 = OUTLINED_FUNCTION_17_19();
    if (testFldeq(v51, v52, v53, 2) || advance_tok(a1))
    {
      goto LABEL_21;
    }

    v45 = 57;
  }

  while (2)
  {
    *(a1 + 4506) = v45;
LABEL_15:
    OUTLINED_FUNCTION_81_3();
    if (v54 != v55)
    {
      OUTLINED_FUNCTION_80_3();
    }

LABEL_18:
    v56 = OUTLINED_FUNCTION_29_12();
    starttest(v56, v57);
    v58 = OUTLINED_FUNCTION_15_21();
    if (lpta_loadp_setscan_r(v58, v59))
    {
LABEL_25:
      por_dental_Fv(a1, v38, v39, v40, v41, v42, v43, v44);
LABEL_26:
      v65 = OUTLINED_FUNCTION_16_20();
      if (lpta_loadp_setscan_r(v65, v66) || (OUTLINED_FUNCTION_17_19(), test_string_s()))
      {
        v27 = 0;
      }

      else
      {
        v27 = 0;
        *(a1 + 4466) = 45;
      }

      break;
    }

    v60 = OUTLINED_FUNCTION_59_3();
    if (!testFldeq(v60, v61, 10, 1) && !advance_tok(a1))
    {
      por_pal_Fv(a1);
      goto LABEL_26;
    }

LABEL_21:
    v62 = *(a1 + 104);
    if (v62)
    {
      v37 = OUTLINED_FUNCTION_74_3(v62);
    }

    else
    {
      v63 = OUTLINED_FUNCTION_84_2();
      v37 = vback(v63, v64);
    }

    v27 = 0;
    v45 = 54;
    switch(v37)
    {
      case 1:
        continue;
      case 2:
        goto LABEL_7;
      case 3:
        goto LABEL_15;
      case 4:
        goto LABEL_18;
      case 5:
        goto LABEL_25;
      case 6:
      case 7:
        goto LABEL_26;
      case 8:
        goto LABEL_4;
      default:
        goto LABEL_3;
    }
  }

LABEL_4:
  vretproc(a1);
  v28 = *MEMORY[0x277D85DE8];
  return v27;
}

uint64_t por_ph_k(uint64_t a1)
{
  OUTLINED_FUNCTION_36_8(*MEMORY[0x277D85DE8], v67);
  OUTLINED_FUNCTION_31_11(v3, v4, v5, v6, v7, v8, v9, v10, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_10_24(v11, v12, v13, v14, v15, v16, v17, v18, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, *v115, v115[4], *v117, *&v117[4], v117[6], v119, SWORD2(v119), SBYTE6(v119), SHIBYTE(v119), v121, v123))
  {
LABEL_3:
    vretproc(a1);
    result = 94;
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_24_16();
  *(a1 + 4582) = v21;
  *(a1 + 4506) = 60;
  v22 = OUTLINED_FUNCTION_22_16();
  starttest(v22, v23);
  v24 = OUTLINED_FUNCTION_16_20();
  if (!lpta_loadp_setscan_r(v24, v25))
  {
    v39 = OUTLINED_FUNCTION_28_12();
    bspush_ca_scan(v39, v40);
LABEL_12:
    OUTLINED_FUNCTION_59_3();
LABEL_13:
    if (!test_string_s())
    {
LABEL_14:
      *(a1 + 4542) = 65;
      *(a1 + 4546) = 15;
      v38 = 20;
      v41 = 4550;
      goto LABEL_25;
    }

    goto LABEL_18;
  }

  while (2)
  {
    v26 = OUTLINED_FUNCTION_41_4();
    starttest(v26, v27);
    v28 = OUTLINED_FUNCTION_16_20();
    if (lpta_loadp_setscan_r(v28, v29))
    {
LABEL_15:
      v42 = OUTLINED_FUNCTION_39_6();
      starttest(v42, v43);
      v44 = OUTLINED_FUNCTION_16_20();
      if (lpta_loadp_setscan_r(v44, v45))
      {
LABEL_23:
        v38 = 68;
        goto LABEL_24;
      }

      v46 = OUTLINED_FUNCTION_0_28();
      if (!testFldeq(v46, v47, v48, v49) && !advance_tok(a1))
      {
        v38 = 73;
        goto LABEL_24;
      }

LABEL_18:
      v50 = *(a1 + 104);
      if (v50)
      {
        v51 = OUTLINED_FUNCTION_74_3(v50);
      }

      else
      {
        v59 = OUTLINED_FUNCTION_84_2();
        v51 = vback(v59, v60);
      }

      switch(v51)
      {
        case 1:
          continue;
        case 2:
          v61 = OUTLINED_FUNCTION_26_15();
          bspush_ca_scan(v61, v62);
          OUTLINED_FUNCTION_93_1();
          goto LABEL_13;
        case 3:
          goto LABEL_14;
        case 4:
          goto LABEL_12;
        case 5:
          goto LABEL_26;
        case 6:
          goto LABEL_15;
        case 7:
          goto LABEL_23;
        case 8:
          goto LABEL_29;
        case 9:
          goto LABEL_32;
        case 10:
          goto LABEL_33;
        default:
          goto LABEL_3;
      }
    }

    break;
  }

  v30 = OUTLINED_FUNCTION_0_28();
  if (testFldeq(v30, v31, v32, v33))
  {
    goto LABEL_18;
  }

  v34 = OUTLINED_FUNCTION_1_26();
  if (testFldeq(v34, v35, v36, v37) || advance_tok(a1))
  {
    goto LABEL_18;
  }

  v38 = 75;
LABEL_24:
  v41 = 4538;
LABEL_25:
  *(a1 + v41) = v38;
LABEL_26:
  OUTLINED_FUNCTION_81_3();
  if (v63 != v64)
  {
    OUTLINED_FUNCTION_80_3();
  }

LABEL_29:
  v65 = OUTLINED_FUNCTION_16_20();
  if (!lpta_loadp_setscan_r(v65, v66))
  {
    OUTLINED_FUNCTION_17_19();
    if (!test_string_s())
    {
      *(a1 + 4466) = 45;
    }
  }

LABEL_32:
  por_velar_Fv(a1, v52, v53, v54, v55, v56, v57, v58);
LABEL_33:
  vretproc(a1);
  result = 0;
LABEL_4:
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t por_ph_b(uint64_t a1)
{
  OUTLINED_FUNCTION_36_8(*MEMORY[0x277D85DE8], v48);
  OUTLINED_FUNCTION_31_11(v3, v4, v5, v6, v7, v8, v9, v10, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_10_24(v11, v12, v13, v14, v15, v16, v17, v18, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, *v96, v96[4], *v98, *&v98[4], v98[6], v100, SWORD2(v100), SBYTE6(v100), SHIBYTE(v100), v102, v104))
  {
LABEL_3:
    vretproc(a1);
    result = 94;
    goto LABEL_4;
  }

  fence_24(a1);
  OUTLINED_FUNCTION_87_2(200);
  *(a1 + 4554) = 60;
  *(a1 + 4394) = 35;
  v21 = OUTLINED_FUNCTION_22_16();
  starttest(v21, v22);
  v23 = OUTLINED_FUNCTION_15_21();
  v25 = lpta_loadp_setscan_l(v23, v24);
  v26 = 35;
  if (!v25)
  {
    v27 = OUTLINED_FUNCTION_59_3();
    if (testFldeq(v27, v28, 7, 1) || advance_tok(a1))
    {
      goto LABEL_15;
    }

    v26 = 70;
  }

  while (2)
  {
    *(a1 + 4406) = v26;
LABEL_11:
    v29 = OUTLINED_FUNCTION_37_8();
    starttest(v29, v30);
    v31 = OUTLINED_FUNCTION_16_20();
    if (!lpta_loadp_setscan_r(v31, v32))
    {
      v33 = OUTLINED_FUNCTION_26_15();
      bspush_ca_scan(v33, v34);
      v35 = OUTLINED_FUNCTION_93_1();
      if (testFldeq(v35, v36, 6, 3))
      {
        goto LABEL_15;
      }

      v37 = OUTLINED_FUNCTION_1_26();
LABEL_14:
      if (testFldeq(v37, v38, v39, v40))
      {
        goto LABEL_15;
      }

LABEL_20:
      if (!advance_tok(a1))
      {
        v45 = 45;
        goto LABEL_23;
      }

LABEL_15:
      v41 = *(a1 + 104);
      if (v41)
      {
        v42 = OUTLINED_FUNCTION_74_3(v41);
      }

      else
      {
        v43 = OUTLINED_FUNCTION_84_2();
        v42 = vback(v43, v44);
      }

      switch(v42)
      {
        case 1:
          v26 = 35;
          continue;
        case 2:
          goto LABEL_11;
        case 3:
          goto LABEL_22;
        case 4:
          v37 = OUTLINED_FUNCTION_2_26();
          goto LABEL_14;
        case 5:
          goto LABEL_20;
        case 6:
          goto LABEL_24;
        case 7:
          goto LABEL_27;
        case 8:
          goto LABEL_28;
        default:
          goto LABEL_3;
      }
    }

    break;
  }

LABEL_22:
  v45 = 40;
LABEL_23:
  *(a1 + 4506) = v45;
LABEL_24:
  OUTLINED_FUNCTION_81_3();
  if (v46 != v47)
  {
    *(a1 + 4554) -= 10;
    OUTLINED_FUNCTION_80_3();
  }

LABEL_27:
  por_labial_Fv(a1);
LABEL_28:
  vretproc(a1);
  result = 0;
LABEL_4:
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t por_ph_d(uint64_t a1)
{
  OUTLINED_FUNCTION_36_8(*MEMORY[0x277D85DE8], v88);
  OUTLINED_FUNCTION_31_11(v3, v4, v5, v6, v7, v8, v9, v10, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, v141, v143);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_10_24(v11, v12, v13, v14, v15, v16, v17, v18, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, *v136, v136[4], *v138, *&v138[4], v138[6], v140, SWORD2(v140), SBYTE6(v140), SHIBYTE(v140), v142, v144))
  {
LABEL_3:
    vretproc(a1);
    result = 94;
  }

  else
  {
    fence_24(a1);
    OUTLINED_FUNCTION_87_2(200);
    *(a1 + 4506) = 35;
    *(a1 + 4394) = 35;
    *(a1 + 4406) = 35;
    v21 = OUTLINED_FUNCTION_22_16();
    starttest(v21, v22);
    v23 = OUTLINED_FUNCTION_16_20();
    if (lpta_loadp_setscan_r(v23, v24))
    {
      v25 = 0;
LABEL_13:
      v38 = OUTLINED_FUNCTION_26_15();
      starttest(v38, v39);
      v40 = OUTLINED_FUNCTION_64_3();
      if (lpta_loadp_setscan_r(v40, v41))
      {
        goto LABEL_33;
      }

      v42 = OUTLINED_FUNCTION_29_12();
      bspush_ca_scan(v42, v43);
      v44 = OUTLINED_FUNCTION_17_19();
      if (testFldeq(v44, v45, v46, 1))
      {
        v32 = v25;
      }

      else
      {
        OUTLINED_FUNCTION_41_4();
        bspush_ca_scan_boa();
        v47 = OUTLINED_FUNCTION_5_24();
        if (testFldeq(v47, v48, v49, v50))
        {
          v32 = v25;
        }

        else
        {
          v32 = 1;
        }
      }
    }

    else
    {
      v26 = OUTLINED_FUNCTION_28_12();
      bspush_ca_scan(v26, v27);
      v28 = OUTLINED_FUNCTION_0_28();
      if (testFldeq(v28, v29, v30, v31))
      {
        v32 = 0;
      }

      else
      {
        v33 = OUTLINED_FUNCTION_1_26();
        v32 = 0;
        if (!testFldeq(v33, v34, v35, v36))
        {
LABEL_10:
          if (!OUTLINED_FUNCTION_108_0())
          {
            v37 = 45;
            goto LABEL_32;
          }
        }
      }
    }

    while (1)
    {
      v51 = v32;
      do
      {
        while (2)
        {
          v52 = *(a1 + 104);
          if (v52)
          {
            v53 = OUTLINED_FUNCTION_49_3(v52);
          }

          else
          {
            v53 = vback(a1, v51);
            v32 = 0;
          }

          v60 = v32;
          switch(v53)
          {
            case 1:
              v25 = v32;
              goto LABEL_13;
            case 2:
              v61 = OUTLINED_FUNCTION_2_26();
              testFldeq(v61, v62, v63, v64);
              OUTLINED_FUNCTION_90_2();
              if (!v65)
              {
                goto LABEL_10;
              }

              continue;
            case 3:
              goto LABEL_10;
            case 4:
              goto LABEL_33;
            case 5:
              v67 = OUTLINED_FUNCTION_59_3();
              v69 = npush_fld(v67, v68, 8);
              v51 = v32;
              if (v69)
              {
                continue;
              }

              v70 = OUTLINED_FUNCTION_84_2();
              npush_i(v70);
              v78 = if_testeq(a1, v71, v72, v73, v74, v75, v76, v77);
              v51 = v32;
              if (v78)
              {
                continue;
              }

              break;
            case 6:
              bspop_boa(a1);
              break;
            case 7:
              goto LABEL_27;
            case 8:
              goto LABEL_37;
            case 9:
              goto LABEL_41;
            case 10:
            case 11:
              goto LABEL_42;
            default:
              goto LABEL_3;
          }

          break;
        }

LABEL_27:
        v66 = advance_tok(a1);
        v51 = v32;
      }

      while (v66);
      v37 = 30;
LABEL_32:
      *(a1 + 4506) = v37;
LABEL_33:
      OUTLINED_FUNCTION_81_3();
      if (v80 != v81)
      {
        OUTLINED_FUNCTION_80_3();
      }

      v32 = v79;
LABEL_37:
      v82 = OUTLINED_FUNCTION_32_10();
      starttest(v82, v83);
      v84 = OUTLINED_FUNCTION_16_20();
      if (lpta_loadp_setscan_r(v84, v85))
      {
        break;
      }

      v86 = OUTLINED_FUNCTION_59_3();
      if (!testFldeq(v86, v87, 10, 2) && !advance_tok(a1))
      {
        por_pal_Fv(a1);
        goto LABEL_42;
      }
    }

LABEL_41:
    por_dental_Fv(a1, v54, v60, v55, v56, v57, v58, v59);
LABEL_42:
    vretproc(a1);
    result = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t por_ph_g(uint64_t a1)
{
  v167 = *MEMORY[0x277D85DE8];
  v154 = 0;
  v155 = 0;
  v153 = 0;
  OUTLINED_FUNCTION_70_3();
  bzero(&v130, v2);
  OUTLINED_FUNCTION_69_3();
  bzero(v166, v3);
  v4 = setjmp(v166);
  if (v4 || OUTLINED_FUNCTION_104_0(v4, v5, v6, v7, v8, v9, v10, v11, v128, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166[0]))
  {
LABEL_3:
    vretproc(a1);
    result = 94;
  }

  else
  {
    push_ptr_init(a1, &v154);
    v153 = 0xFFFC0000FFFCLL;
    fence_24(a1);
    OUTLINED_FUNCTION_87_2(200);
    if (*(a1 + 982) <= *(a1 + 958))
    {
      v15 = 35;
    }

    else
    {
LABEL_6:
      v15 = 55;
    }

    *(a1 + 4506) = v15;
    v16 = v14;
    while (2)
    {
      v17 = OUTLINED_FUNCTION_107_0();
      starttest(v17, v18);
      bspush_ca_scan(a1, 4);
      v19 = OUTLINED_FUNCTION_63_3();
      if (!lpta_loadp_setscan_l(v19, v20))
      {
        v21 = OUTLINED_FUNCTION_83_2();
        if (!testFldeq(v21, v22, 1, 1))
        {
          bspush_ca_scan_boa();
          v23 = OUTLINED_FUNCTION_68_3();
          if (!testFldeq(v23, 4u, 3, v24))
          {
            v16 = 1;
          }
        }
      }

      LODWORD(v25) = v16;
LABEL_14:
      v26 = *(a1 + 104);
      if (v26)
      {
        v27 = OUTLINED_FUNCTION_74_3(v26);
        v34 = v25;
      }

      else
      {
        v27 = vback(a1, v25);
        v34 = 0;
      }

      switch(v27)
      {
        case 1:
          v14 = v34;
          goto LABEL_6;
        case 2:
          v16 = v34;
          continue;
        case 3:
          v67 = OUTLINED_FUNCTION_43_4();
          starttest(v67, v68);
          v69 = OUTLINED_FUNCTION_16_20();
          if (lpta_loadp_setscan_l(v69, v70))
          {
            goto LABEL_31;
          }

          goto LABEL_32;
        case 4:
          v60 = OUTLINED_FUNCTION_16_20();
          v62 = lpta_loadp_setscan_r(v60, v61);
          LODWORD(v25) = v34;
          if (v62)
          {
            goto LABEL_14;
          }

          v63 = OUTLINED_FUNCTION_17_19();
          v66 = testFldeq(v63, v64, v65, 1);
          LODWORD(v25) = v34;
          if (v66)
          {
            goto LABEL_14;
          }

          OUTLINED_FUNCTION_39_6();
          bspush_ca_scan_boa();
          v49 = OUTLINED_FUNCTION_5_24();
          goto LABEL_25;
        case 5:
        case 8:
          bspop_boa(a1);
          v35 = advance_tok(a1);
          LODWORD(v25) = v34;
          if (v35)
          {
            goto LABEL_14;
          }

          goto LABEL_19;
        case 6:
LABEL_19:
          *(a1 + 4394) = 20;
          *(a1 + 4398) = 12;
          goto LABEL_47;
        case 7:
          bspop_boa(a1);
          OUTLINED_FUNCTION_25_15();
          bspush_ca_scan_boa();
          v49 = OUTLINED_FUNCTION_13_23();
          v52 = 18;
LABEL_25:
          v53 = testFldeq(v49, v50, v51, v52);
          goto LABEL_50;
        case 9:
          goto LABEL_47;
        case 10:
LABEL_31:
          *(a1 + 4406) = 35;
          v71 = 40;
          goto LABEL_46;
        case 11:
LABEL_32:
          OUTLINED_FUNCTION_86_2(11, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154);
          v72 = advance_tok(a1);
          LODWORD(v25) = v34;
          if (v72)
          {
            goto LABEL_14;
          }

          v73 = OUTLINED_FUNCTION_58_3();
          bspush_ca_scan(v73, v74);
          v75 = OUTLINED_FUNCTION_0_28();
          v79 = testFldeq(v75, v76, v77, v78);
          LODWORD(v25) = v34;
          if (v79)
          {
            goto LABEL_14;
          }

          v56 = OUTLINED_FUNCTION_1_26();
LABEL_37:
          v84 = testFldeq(v56, v57, v58, v59);
          LODWORD(v25) = v34;
          if (v84)
          {
            goto LABEL_14;
          }

LABEL_38:
          v85 = advance_tok(a1);
          LODWORD(v25) = v34;
          if (v85)
          {
            goto LABEL_14;
          }

          v86 = OUTLINED_FUNCTION_61_3();
          v88 = lpta_loadp_setscan_r(v86, v87);
          LODWORD(v25) = v34;
          if (v88)
          {
            goto LABEL_14;
          }

          v89 = OUTLINED_FUNCTION_40_5();
          bspush_ca_scan(v89, v90);
          v91 = OUTLINED_FUNCTION_0_28();
          v95 = testFldeq(v91, v92, v93, v94);
          LODWORD(v25) = v34;
          if (v95)
          {
            goto LABEL_14;
          }

          v80 = OUTLINED_FUNCTION_1_26();
LABEL_43:
          v98 = testFldeq(v80, v81, v82, v83);
          LODWORD(v25) = v34;
          if (v98)
          {
            goto LABEL_14;
          }

LABEL_44:
          v99 = advance_tok(a1);
          LODWORD(v25) = v34;
          if (v99)
          {
            goto LABEL_14;
          }

          *(a1 + 4406) = 35;
          v71 = 30;
LABEL_46:
          *(a1 + 4394) = v71;
LABEL_47:
          v100 = OUTLINED_FUNCTION_54_3();
          starttest(v100, v101);
          v102 = OUTLINED_FUNCTION_16_20();
          if (lpta_loadp_setscan_r(v102, v103))
          {
            goto LABEL_64;
          }

          OUTLINED_FUNCTION_53_3();
          bspush_ca_scan_boa();
LABEL_49:
          v104 = OUTLINED_FUNCTION_60_3();
          v53 = test_synch(v104, v105, 1u, v106);
LABEL_50:
          if (v53)
          {
            LODWORD(v25) = v34;
          }

          else
          {
            LODWORD(v25) = 1;
          }

          goto LABEL_14;
        case 12:
          v54 = OUTLINED_FUNCTION_34_9();
          bspush_ca_scan(v54, v55);
          v56 = OUTLINED_FUNCTION_2_26();
          goto LABEL_37;
        case 13:
          goto LABEL_38;
        case 14:
          v56 = OUTLINED_FUNCTION_6_24();
          goto LABEL_37;
        case 15:
          v96 = OUTLINED_FUNCTION_60_3();
          bspush_ca_scan(v96, v97);
          v80 = OUTLINED_FUNCTION_2_26();
          goto LABEL_43;
        case 16:
          goto LABEL_44;
        case 17:
          v80 = OUTLINED_FUNCTION_6_24();
          goto LABEL_43;
        case 18:
          goto LABEL_64;
        case 19:
          bspop_boa(a1);
          v36 = OUTLINED_FUNCTION_57_3();
          starttest(v36, v37);
          v38 = OUTLINED_FUNCTION_16_20();
          if (lpta_loadp_setscan_r(v38, v39))
          {
            goto LABEL_21;
          }

          v118 = OUTLINED_FUNCTION_60_3();
          bspush_ca_scan(v118, v119);
          goto LABEL_62;
        case 20:
          goto LABEL_49;
        case 21:
LABEL_21:
          v40 = OUTLINED_FUNCTION_56_3();
          starttest(v40, v41);
          v42 = OUTLINED_FUNCTION_16_20();
          if (lpta_loadp_setscan_r(v42, v43))
          {
            goto LABEL_22;
          }

          v115 = OUTLINED_FUNCTION_60_3();
          bspush_ca_scan(v115, v116);
          goto LABEL_58;
        case 22:
          v107 = OUTLINED_FUNCTION_52_3();
          bspush_ca_scan(v107, v108);
          goto LABEL_62;
        case 23:
          goto LABEL_63;
        case 24:
LABEL_62:
          OUTLINED_FUNCTION_17_19();
          v120 = test_string_s();
          LODWORD(v25) = v34;
          if (v120)
          {
            goto LABEL_14;
          }

LABEL_63:
          *(a1 + 4542) = 65;
          goto LABEL_64;
        case 25:
LABEL_22:
          v44 = OUTLINED_FUNCTION_60_3();
          starttest(v44, v45);
          v46 = OUTLINED_FUNCTION_16_20();
          if (lpta_loadp_setscan_r(v46, v47))
          {
            goto LABEL_23;
          }

          v109 = OUTLINED_FUNCTION_0_28();
          v113 = testFldeq(v109, v110, v111, v112);
          LODWORD(v25) = v34;
          if (v113)
          {
            goto LABEL_14;
          }

          v114 = advance_tok(a1);
          LODWORD(v25) = v34;
          if (v114)
          {
            goto LABEL_14;
          }

          v48 = 72;
          goto LABEL_60;
        case 26:
LABEL_58:
          OUTLINED_FUNCTION_17_19();
          v117 = test_string_s();
          LODWORD(v25) = v34;
          if (!v117)
          {
            goto LABEL_59;
          }

          goto LABEL_14;
        case 27:
LABEL_59:
          v48 = 74;
          goto LABEL_60;
        case 28:
LABEL_23:
          v48 = 70;
LABEL_60:
          *(a1 + 4538) = v48;
LABEL_64:
          v121 = OUTLINED_FUNCTION_61_3();
          if (lpta_loadp_setscan_r(v121, v122))
          {
            goto LABEL_66;
          }

          OUTLINED_FUNCTION_17_19();
          if (test_string_s())
          {
            goto LABEL_66;
          }

          v125 = OUTLINED_FUNCTION_60_3();
          starttest_e(v125, v126);
          move_i(a1, &v153 + 4, 40);
          move_i(a1, &v153, 45);
          v127 = final_voiced_release(a1, &v153 + 2);
          v25 = v34;
          if (!v127)
          {
            goto LABEL_66;
          }

          goto LABEL_14;
        case 29:
LABEL_66:
          por_velar_Fv(a1, v25, v28, v29, v30, v31, v32, v33);
          goto LABEL_67;
        case 30:
LABEL_67:
          v123 = OUTLINED_FUNCTION_51_3();
          starttest(v123, v124);
          c_assvar(a1, &v153);
          WORD1(v153) = *(a1 + 4586) - *(a1 + 4590);
          LODWORD(v25) = v34;
          if (SWORD1(v153) < 601)
          {
            goto LABEL_14;
          }

          *(a1 + 4394) = 20;
LABEL_72:
          vretproc(a1);
          result = 0;
          break;
        case 31:
          goto LABEL_72;
        default:
          goto LABEL_3;
      }

      break;
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t por_ph_w(uint64_t a1)
{
  OUTLINED_FUNCTION_36_8(*MEMORY[0x277D85DE8], v67);
  OUTLINED_FUNCTION_31_11(v3, v4, v5, v6, v7, v8, v9, v10, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122);
  v11 = setjmp(v1);
  if (!v11 && !OUTLINED_FUNCTION_10_24(v11, v12, v13, v14, v15, v16, v17, v18, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, *v115, v115[4], *v117, *&v117[4], v117[6], v119, SWORD2(v119), SBYTE6(v119), SHIBYTE(v119), v121, v123))
  {
    fence_24(a1);
    v21 = OUTLINED_FUNCTION_22_16();
    starttest(v21, v22);
    v23 = OUTLINED_FUNCTION_15_21();
    if (!lpta_loadp_setscan_l(v23, v24))
    {
      v25 = OUTLINED_FUNCTION_17_19();
      if (!testFldeq(v25, v26, v27, 2) && !advance_tok(a1))
      {
        *(a1 + 4578) = 350;
        por_ph_u(a1, v28, v29, v30, v31, v32, v33, v34);
LABEL_28:
        OUTLINED_FUNCTION_48_4((8 * *(a1 + 4286)), 10.0);
        OUTLINED_FUNCTION_33_10(6 * v64, v65);
        *(a1 + 4382) = v66;
        *(a1 + 4394) = 50;
        vretproc(a1);
        result = 0;
        goto LABEL_4;
      }

LABEL_23:
      v60 = *(a1 + 104);
      if (v60)
      {
        v61 = OUTLINED_FUNCTION_74_3(v60);
      }

      else
      {
        v62 = OUTLINED_FUNCTION_84_2();
        v61 = vback(v62, v63);
      }

      v39 = 300;
      switch(v61)
      {
        case 1:
          break;
        case 2:
        case 3:
          goto LABEL_28;
        case 4:
          goto LABEL_14;
        case 5:
          goto LABEL_15;
        case 6:
          goto LABEL_16;
        case 7:
          goto LABEL_17;
        case 8:
          goto LABEL_27;
        default:
          goto LABEL_3;
      }
    }

    v35 = OUTLINED_FUNCTION_26_15();
    starttest(v35, v36);
    v37 = OUTLINED_FUNCTION_64_3();
    if (lpta_loadp_setscan_r(v37, v38))
    {
      v39 = 300;
    }

    else
    {
      v40 = OUTLINED_FUNCTION_1_26();
      if (testFldeq(v40, v41, v42, v43) || advance_tok(a1))
      {
        goto LABEL_23;
      }

      v39 = 250;
    }

LABEL_14:
    *(a1 + 4578) = v39;
LABEL_15:
    por_labial_Fv(a1);
LABEL_16:
    v44 = OUTLINED_FUNCTION_39_6();
    starttest(v44, v45);
    v46 = OUTLINED_FUNCTION_16_20();
    if (!lpta_loadp_setscan_r(v46, v47))
    {
      v56 = OUTLINED_FUNCTION_1_26();
      if (testFldeq(v56, v57, v58, v59) || advance_tok(a1))
      {
        goto LABEL_23;
      }

      *(a1 + 4590) -= 300;
    }

LABEL_17:
    v48 = OUTLINED_FUNCTION_25_15();
    starttest(v48, v49);
    v50 = OUTLINED_FUNCTION_15_21();
    if (!lpta_loadp_setscan_l(v50, v51))
    {
      v52 = OUTLINED_FUNCTION_1_26();
      if (testFldeq(v52, v53, v54, v55) || advance_tok(a1))
      {
        goto LABEL_23;
      }

      *(a1 + 4586) -= 300;
    }

LABEL_27:
    OUTLINED_FUNCTION_89_2(2200);
    goto LABEL_28;
  }

LABEL_3:
  vretproc(a1);
  result = 94;
LABEL_4:
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t por_ph_y(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v10 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_47_4(a1, a2, a3, a4, a5, a6, a7, a8, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, v149, v153, v157, v161);
  OUTLINED_FUNCTION_69_3();
  OUTLINED_FUNCTION_110_0(v11, v12, v13, v14, v15, v16, v17, v18, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142, v146, v150, v154, v158, v162, v164, v166, v168, v170, v172);
  v19 = setjmp(v8);
  if (!v19 && !OUTLINED_FUNCTION_30_11(v19, v20, v21, v22, v23, v24, v25, v26, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v147, v151, v155, v159, v163, *v165, v165[4], *v167, *&v167[4], v167[6], v169, SWORD2(v169), SBYTE6(v169), SHIBYTE(v169), v171, v173))
  {
    v29 = OUTLINED_FUNCTION_76_3();
    push_ptr_init(v29, v30);
    OUTLINED_FUNCTION_24_16();
    v31 = OUTLINED_FUNCTION_22_16();
    starttest_l(v31, v32);
    v33 = OUTLINED_FUNCTION_16_20();
    if (!lpta_loadp_setscan_r(v33, v34))
    {
      v35 = OUTLINED_FUNCTION_28_12();
      bspush_ca_scan(v35, v36);
      v37 = OUTLINED_FUNCTION_1_26();
LABEL_7:
      if (testFldeq(v37, v38, v39, v40))
      {
        goto LABEL_8;
      }

LABEL_17:
      if (advance_tok(a1))
      {
        goto LABEL_8;
      }

      *(a1 + 4578) = 250;
    }

    while (2)
    {
      *(a1 + 4394) = 52;
      *(a1 + 4378) = OUTLINED_FUNCTION_73_3(25 * *(a1 + 4286));
      *(a1 + 4382) = 3 * *(a1 + 4290);
      por_high_pal_Fv(a1);
LABEL_20:
      v49 = OUTLINED_FUNCTION_39_6();
      starttest(v49, v50);
      v51 = OUTLINED_FUNCTION_16_20();
      if (lpta_loadp_setscan_l(v51, v52))
      {
        goto LABEL_36;
      }

LABEL_21:
      OUTLINED_FUNCTION_85_2(8, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144, v148, v152, v156, v160);
      if (!advance_tok(a1))
      {
        v53 = OUTLINED_FUNCTION_17_19();
        if (!testFldeq(v53, v54, v55, 2) && !advance_tok(a1))
        {
          v56 = OUTLINED_FUNCTION_61_3();
          if (!lpta_loadp_setscan_r(v56, v57))
          {
            v58 = OUTLINED_FUNCTION_32_10();
            bspush_ca_scan(v58, v59);
LABEL_26:
            v60 = OUTLINED_FUNCTION_17_19();
            if (!testFldeq(v60, v61, v62, 2) && !advance_tok(a1))
            {
              if (*(a1 + 4586) >= 2101)
              {
                *(a1 + 4586) = 2100;
              }

LABEL_30:
              if (*(a1 + 4590) >= 2101)
              {
                *(a1 + 4590) = 2100;
              }

LABEL_32:
              if (*(a1 + 4598) >= 1)
              {
                v63 = OUTLINED_FUNCTION_16_20();
                if (!lpta_loadp_setscan_r(v63, v64))
                {
                  OUTLINED_FUNCTION_17_19();
                  if (!test_string_s())
                  {
                    *(a1 + 4598) -= 200;
                  }
                }
              }

LABEL_36:
              vretproc(a1);
              result = 0;
              goto LABEL_4;
            }
          }
        }
      }

LABEL_8:
      v41 = *(a1 + 104);
      if (v41)
      {
        v42 = OUTLINED_FUNCTION_74_3(v41);
      }

      else
      {
        v43 = OUTLINED_FUNCTION_84_2();
        v42 = vback(v43, v44);
      }

      switch(v42)
      {
        case 1:
          continue;
        case 2:
          v47 = OUTLINED_FUNCTION_26_15();
          bspush_ca_scan(v47, v48);
          v37 = OUTLINED_FUNCTION_62_3();
          v38 = v8;
          v40 = 29;
          goto LABEL_7;
        case 3:
          goto LABEL_17;
        case 4:
          v45 = OUTLINED_FUNCTION_29_12();
          bspush_ca_scan(v45, v46);
          v37 = OUTLINED_FUNCTION_13_23();
          v40 = 33;
          goto LABEL_7;
        case 5:
          v37 = OUTLINED_FUNCTION_13_23();
          v40 = 36;
          goto LABEL_7;
        case 6:
          goto LABEL_20;
        case 7:
          goto LABEL_36;
        case 8:
          goto LABEL_21;
        case 9:
          OUTLINED_FUNCTION_17_19();
          if (!test_string_s())
          {
            goto LABEL_26;
          }

          goto LABEL_8;
        case 10:
          goto LABEL_26;
        case 11:
          goto LABEL_30;
        case 12:
          goto LABEL_32;
        default:
          goto LABEL_3;
      }
    }
  }

LABEL_3:
  vretproc(a1);
  result = 94;
LABEL_4:
  v28 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t por_ph_pal_l(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v121 = *MEMORY[0x277D85DE8];
  v115 = 0;
  v116 = 0.0;
  v113 = 0;
  v114 = 0.0;
  v111 = 0;
  v112 = 0.0;
  v109 = 0;
  v110 = 0.0;
  v108 = 0;
  v107 = 0;
  v106[0] = 0;
  v106[1] = 0;
  v105[0] = 0;
  v105[1] = 0;
  v104[0] = 0;
  v104[1] = 0;
  v103[23] = 0;
  v103[24] = 0;
  OUTLINED_FUNCTION_67_3(a1, a2, a3, a4, a5, a6, a7, a8, v103[0]);
  OUTLINED_FUNCTION_69_3();
  bzero(v120, v9);
  if (setjmp(v120) || ventproc(a1, v103, v119, v118, v117, v120))
  {
LABEL_3:
    vretproc(a1);
    result = 94;
    goto LABEL_4;
  }

  v116 = 0.0;
  LOWORD(v115) = -5;
  v114 = 0.0;
  LOWORD(v113) = -5;
  v112 = 0.0;
  LOWORD(v111) = -5;
  v110 = 0.0;
  LOWORD(v109) = -5;
  WORD2(v108) = -4;
  LOWORD(v108) = -4;
  LOWORD(v107) = -4;
  push_ptr_init(a1, v106);
  push_ptr_init(a1, v105);
  push_ptr_init(a1, v104);
  v12 = OUTLINED_FUNCTION_76_3();
  push_ptr_init(v12, v13);
  OUTLINED_FUNCTION_24_16();
  *(a1 + 4582) = 200;
  *(a1 + 4586) = 1700;
  *(a1 + 4590) = 1900;
  *(a1 + 4594) = 2500;
  *(a1 + 4598) = 2700;
  OUTLINED_FUNCTION_97_1(4000);
  HIWORD(v108) = 44;
  WORD1(v108) = 47;
  HIWORD(v107) = 40;
  v14 = OUTLINED_FUNCTION_22_16();
  starttest(v14, v15);
  if (*(a1 + 982) <= *(a1 + 958))
  {
    v16 = OUTLINED_FUNCTION_15_21();
    if (!lpta_loadp_setscan_l(v16, v17))
    {
      OUTLINED_FUNCTION_28_12();
      bspush_ca_scan_boa();
      v70 = OUTLINED_FUNCTION_37_8();
      bspush_ca_scan(v70, v71);
      v72 = OUTLINED_FUNCTION_3_25();
      if (testFldeq(v72, v73, v74, v75))
      {
        v18 = 0;
      }

      else
      {
LABEL_57:
        v18 = 1;
      }

      goto LABEL_58;
    }
  }

  v18 = 0;
  while (1)
  {
    v19 = OUTLINED_FUNCTION_29_12();
    starttest(v19, v20);
    v21 = OUTLINED_FUNCTION_16_20();
    if (!lpta_loadp_setscan_r(v21, v22))
    {
      v44 = OUTLINED_FUNCTION_13_23();
      if (!testFldeq(v44, v45, v46, 28) && !advance_tok(a1))
      {
        v43 = 100;
        v41 = 200;
        v42 = 400;
        goto LABEL_24;
      }

      goto LABEL_58;
    }

LABEL_9:
    v23 = OUTLINED_FUNCTION_39_6();
    starttest(v23, v24);
    v25 = OUTLINED_FUNCTION_16_20();
    if (!lpta_loadp_setscan_r(v25, v26))
    {
      v47 = OUTLINED_FUNCTION_13_23();
      if (!testFldeq(v47, v48, v49, 30) && !advance_tok(a1))
      {
        v50 = -100;
        v51 = -200;
        goto LABEL_25;
      }

      goto LABEL_58;
    }

LABEL_10:
    v27 = OUTLINED_FUNCTION_25_15();
    starttest(v27, v28);
    v29 = OUTLINED_FUNCTION_16_20();
    if (lpta_loadp_setscan_r(v29, v30))
    {
LABEL_11:
      v31 = OUTLINED_FUNCTION_41_4();
      starttest(v31, v32);
      v33 = OUTLINED_FUNCTION_16_20();
      if (lpta_loadp_setscan_r(v33, v34))
      {
        goto LABEL_26;
      }

      v35 = OUTLINED_FUNCTION_42_4();
      bspush_ca_scan(v35, v36);
      v37 = OUTLINED_FUNCTION_0_28();
      if (!testFldeq(v37, v38, v39, v40))
      {
LABEL_13:
        if (!OUTLINED_FUNCTION_112_0())
        {
          v41 = -100;
          v42 = -300;
          v43 = -100;
          goto LABEL_24;
        }
      }

      goto LABEL_58;
    }

    v52 = OUTLINED_FUNCTION_32_10();
    bspush_ca_scan(v52, v53);
    v54 = OUTLINED_FUNCTION_3_25();
    if (testFldeq(v54, v55, v56, v57))
    {
      goto LABEL_58;
    }

LABEL_22:
    if (!OUTLINED_FUNCTION_108_0())
    {
      break;
    }

LABEL_58:
    v89 = v18;
LABEL_46:
    v86 = *(a1 + 104);
    if (v86)
    {
      v87 = OUTLINED_FUNCTION_49_3(v86);
    }

    else
    {
      v87 = vback(a1, v89);
      v18 = 0;
    }

    switch(v87)
    {
      case 1:
        continue;
      case 2:
        bspop_boa(a1);
        v88 = advance_tok(a1);
        v89 = v18;
        if (v88)
        {
          goto LABEL_46;
        }

        OUTLINED_FUNCTION_95_1();
        break;
      case 3:
        v99 = OUTLINED_FUNCTION_18_18();
        v102 = testFldeq(v99, v100, v101, 3);
        v89 = v18;
        if (!v102)
        {
          goto LABEL_57;
        }

        goto LABEL_46;
      case 4:
        goto LABEL_57;
      case 5:
        goto LABEL_9;
      case 6:
        goto LABEL_26;
      case 7:
        goto LABEL_10;
      case 8:
        goto LABEL_11;
      case 9:
        v90 = OUTLINED_FUNCTION_18_18();
        testFldeq(v90, v91, v92, 3);
        OUTLINED_FUNCTION_90_2();
        if (!v93)
        {
          goto LABEL_22;
        }

        goto LABEL_46;
      case 10:
        goto LABEL_22;
      case 11:
        v94 = OUTLINED_FUNCTION_14_21();
        testFldeq(v94, v95, v96, v97);
        OUTLINED_FUNCTION_94_1();
        if (!v98)
        {
          goto LABEL_13;
        }

        goto LABEL_46;
      case 12:
        goto LABEL_13;
      case 13:
        goto LABEL_29;
      case 14:
        goto LABEL_32;
      case 15:
        v63 = *(a1 + 3400);
        goto LABEL_37;
      case 16:
        v68 = 0.0;
        goto LABEL_39;
      case 17:
        goto LABEL_42;
      case 18:
        goto LABEL_43;
      case 19:
        goto LABEL_44;
      case 20:
        goto LABEL_45;
      default:
        goto LABEL_3;
    }
  }

  v42 = 100;
  v41 = 100;
  v43 = 100;
LABEL_24:
  *(a1 + 4590) += v42;
  v51 = v41;
  v50 = v43;
LABEL_25:
  *(a1 + 4598) += v51;
  *(a1 + 4606) += v50;
LABEL_26:
  OUTLINED_FUNCTION_96_1();
  if (v58 == v59)
  {
    OUTLINED_FUNCTION_105_0();
    if (v58 == v59)
    {
      OUTLINED_FUNCTION_21_16(v60);
    }
  }

LABEL_29:
  v61 = *(a1 + 4602);
  if (v61 >= 1 && *(a1 + 4606) >= 1)
  {
    OUTLINED_FUNCTION_38_7(v61);
    *(a1 + 4602) = v62;
    *(a1 + 4606) = -1;
  }

LABEL_32:
  v63 = *(a1 + 3400);
  if (v63 <= 9.0)
  {
LABEL_37:
    v68 = v63 * 333.0 / 1000.0;
LABEL_39:
    v69 = v68;
  }

  else
  {
    OUTLINED_FUNCTION_114_0();
    v66 = v64 * 15.0 / v65;
    v68 = v67;
    v69 = v66;
  }

  v116 = v68 + *(a1 + 2136);
  v114 = v116 + 1.0;
  v112 = v69 + v116 + 1.0;
  v110 = v112 + 1.0;
  if (*(a1 + 962) == 1)
  {
    HIWORD(v108) -= 2;
    WORD1(v108) -= 2;
    HIWORD(v107) -= 2;
  }

LABEL_42:
  v76 = (67 * *(a1 + 4282));
  *(a1 + 4394) = 48;
  OUTLINED_FUNCTION_72_3(v76);
  OUTLINED_FUNCTION_23_16(v77, v78);
  OUTLINED_FUNCTION_98_1(v79);
  OUTLINED_FUNCTION_33_10(v80 * v81, v82);
  *(a1 + 4382) = v83;
  OUTLINED_FUNCTION_23_16(*(a1 + 4294), v84);
  *(a1 + 4386) = v85;
  *(a1 + 4390) = 2 * *(a1 + 4298);
  doAV();
LABEL_43:
  doAV();
LABEL_44:
  doAV();
LABEL_45:
  *(a1 + 4514) = 1;
  vretproc(a1);
  result = 0;
LABEL_4:
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t por_ph_l(uint64_t a1)
{
  OUTLINED_FUNCTION_36_8(*MEMORY[0x277D85DE8], v191);
  OUTLINED_FUNCTION_31_11(v3, v4, v5, v6, v7, v8, v9, v10, v192, v194, v196, v198, v200, v202, v204, v206, v208, v210, v212, v214, v216, v218, v220, v222, v224, v226, v228, v230, v232, v234, v236, v238, v240, v242, v244, v246);
  v11 = setjmp(v1);
  if (!v11 && !OUTLINED_FUNCTION_10_24(v11, v12, v13, v14, v15, v16, v17, v18, v193, v195, v197, v199, v201, v203, v205, v207, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235, v237, *v239, v239[4], *v241, *&v241[4], v241[6], v243, SWORD2(v243), SBYTE6(v243), SHIBYTE(v243), v245, v247))
  {
    OUTLINED_FUNCTION_24_16();
    *(a1 + 4582) = v21;
    OUTLINED_FUNCTION_91_1(1200);
    OUTLINED_FUNCTION_89_2(3000);
    OUTLINED_FUNCTION_97_1(3500);
    v22 = OUTLINED_FUNCTION_15_21();
    if (!lpta_loadp_setscan_l(v22, v23))
    {
      OUTLINED_FUNCTION_17_19();
      if (!test_string_s())
      {
        OUTLINED_FUNCTION_95_1();
        *(a1 + 4594) = v156;
        goto LABEL_25;
      }
    }

    while (2)
    {
      v24 = OUTLINED_FUNCTION_15_21();
      if (lpta_loadp_setscan_l(v24, v25) || (OUTLINED_FUNCTION_17_19(), test_string_s()))
      {
LABEL_9:
        v26 = OUTLINED_FUNCTION_26_15();
        starttest(v26, v27);
        v28 = OUTLINED_FUNCTION_63_3();
        if (!lpta_loadp_setscan_l(v28, v29))
        {
          v48 = OUTLINED_FUNCTION_29_12();
          bspush_ca_scan(v48, v49);
          v50 = OUTLINED_FUNCTION_13_23();
          v53 = 28;
LABEL_15:
          if (testFldeq(v50, v51, v52, v53))
          {
            goto LABEL_77;
          }

LABEL_16:
          if (advance_tok(a1))
          {
            goto LABEL_77;
          }

          *(a1 + 4586) += 200;
          v54 = *(a1 + 4602) + 200;
          goto LABEL_24;
        }

LABEL_10:
        v30 = OUTLINED_FUNCTION_42_4();
        starttest(v30, v31);
        v32 = OUTLINED_FUNCTION_15_21();
        if (!lpta_loadp_setscan_l(v32, v33))
        {
          v55 = OUTLINED_FUNCTION_58_3();
          bspush_ca_scan(v55, v56);
          v57 = OUTLINED_FUNCTION_3_25();
LABEL_19:
          if (testFldeq(v57, v58, v59, v60))
          {
            goto LABEL_77;
          }

LABEL_20:
          if (advance_tok(a1))
          {
            goto LABEL_77;
          }

          OUTLINED_FUNCTION_79_3(*(a1 + 4586) + 130);
          *(a1 + 4594) = v61 + 100;
          v54 = *(a1 + 4602) + 100;
          goto LABEL_24;
        }

LABEL_11:
        v34 = OUTLINED_FUNCTION_34_9();
        starttest(v34, v35);
        v36 = OUTLINED_FUNCTION_15_21();
        if (lpta_loadp_setscan_l(v36, v37))
        {
LABEL_12:
          v38 = OUTLINED_FUNCTION_28_12();
          starttest(v38, v39);
          v40 = OUTLINED_FUNCTION_15_21();
          if (lpta_loadp_setscan_l(v40, v41))
          {
LABEL_25:
            v64 = OUTLINED_FUNCTION_16_20();
            if (lpta_loadp_setscan_r(v64, v65) || (OUTLINED_FUNCTION_17_19(), test_string_s()))
            {
LABEL_27:
              v66 = OUTLINED_FUNCTION_16_20();
              if (!lpta_loadp_setscan_r(v66, v67))
              {
                OUTLINED_FUNCTION_17_19();
                if (!test_string_s())
                {
                  OUTLINED_FUNCTION_75_3();
                  v116 = v115 - 400;
LABEL_43:
                  *(a1 + 4598) = v116;
                  v97 = *(a1 + 4606) - 300;
LABEL_44:
                  *(a1 + 4606) = v97;
                  goto LABEL_45;
                }
              }

LABEL_29:
              v68 = OUTLINED_FUNCTION_52_3();
              starttest(v68, v69);
              v70 = OUTLINED_FUNCTION_16_20();
              if (!lpta_loadp_setscan_r(v70, v71))
              {
                v90 = OUTLINED_FUNCTION_56_3();
                bspush_ca_scan(v90, v91);
                v92 = OUTLINED_FUNCTION_13_23();
                v95 = 28;
LABEL_35:
                if (testFldeq(v92, v93, v94, v95))
                {
                  goto LABEL_77;
                }

LABEL_36:
                if (advance_tok(a1))
                {
                  goto LABEL_77;
                }

                OUTLINED_FUNCTION_117_0();
                *(a1 + 4590) = v96;
                v97 = *(a1 + 4606) + 100;
                goto LABEL_44;
              }

LABEL_30:
              v72 = OUTLINED_FUNCTION_51_3();
              starttest(v72, v73);
              v74 = OUTLINED_FUNCTION_16_20();
              if (!lpta_loadp_setscan_r(v74, v75))
              {
                v98 = OUTLINED_FUNCTION_55_3();
                bspush_ca_scan(v98, v99);
                v100 = OUTLINED_FUNCTION_3_25();
LABEL_70:
                if (testFldeq(v100, v101, v102, v103))
                {
                  goto LABEL_77;
                }

LABEL_71:
                if (advance_tok(a1))
                {
                  goto LABEL_77;
                }

                OUTLINED_FUNCTION_78_3(*(a1 + 4590) + 250);
                *(a1 + 4598) = v159 + 100;
                v97 = *(a1 + 4606) + 200;
                goto LABEL_44;
              }

LABEL_31:
              v76 = OUTLINED_FUNCTION_60_3();
              starttest(v76, v77);
              v78 = OUTLINED_FUNCTION_16_20();
              if (!lpta_loadp_setscan_r(v78, v79))
              {
                v146 = OUTLINED_FUNCTION_60_3();
                bspush_ca_scan(v146, v147);
                v148 = OUTLINED_FUNCTION_0_28();
                if (testFldeq(v148, v149, v150, v151))
                {
                  goto LABEL_77;
                }

                v152 = OUTLINED_FUNCTION_1_26();
LABEL_73:
                if (testFldeq(v152, v153, v154, v155))
                {
                  goto LABEL_77;
                }

LABEL_74:
                if (advance_tok(a1))
                {
                  goto LABEL_77;
                }

                *(a1 + 4582) = 230;
                *(a1 + 4590) = 1350;
                *(a1 + 4598) = 2250;
                v97 = 3700;
                goto LABEL_44;
              }

LABEL_32:
              v80 = OUTLINED_FUNCTION_60_3();
              starttest(v80, v81);
              v82 = OUTLINED_FUNCTION_16_20();
              if (!lpta_loadp_setscan_r(v82, v83))
              {
                v84 = OUTLINED_FUNCTION_60_3();
                bspush_ca_scan(v84, v85);
                v86 = OUTLINED_FUNCTION_0_28();
LABEL_76:
                if (testFldeq(v86, v87, v88, v89))
                {
                  goto LABEL_77;
                }

LABEL_103:
                if (advance_tok(a1))
                {
                  goto LABEL_77;
                }

                OUTLINED_FUNCTION_75_3();
                v116 = v190 - 420;
                goto LABEL_43;
              }
            }

            else
            {
              OUTLINED_FUNCTION_99_1();
              *(a1 + 4598) = v104;
            }

LABEL_45:
            OUTLINED_FUNCTION_106_0();
            if (v118 == v119 && *(a1 + 4590) >= 1)
            {
              OUTLINED_FUNCTION_38_7(v117);
              OUTLINED_FUNCTION_102_0(v120);
            }

LABEL_48:
            OUTLINED_FUNCTION_96_1();
            if (v118 == v119)
            {
              OUTLINED_FUNCTION_105_0();
              if (v118 == v119)
              {
                OUTLINED_FUNCTION_21_16(v121);
              }
            }

LABEL_51:
            v122 = *(a1 + 4602);
            if (v122 >= 1 && *(a1 + 4606) >= 1)
            {
              OUTLINED_FUNCTION_38_7(v122);
              *(a1 + 4602) = v123;
              *(a1 + 4606) = -1;
            }

LABEL_54:
            *(a1 + 4394) = 50;
            OUTLINED_FUNCTION_72_3((67 * *(a1 + 4282)));
            OUTLINED_FUNCTION_33_10(150 * v124, v125);
            OUTLINED_FUNCTION_98_1(v126);
            OUTLINED_FUNCTION_23_16(v127, v128);
            *(a1 + 4382) = v129;
            OUTLINED_FUNCTION_23_16(*(a1 + 4294), v130);
            *(a1 + 4386) = v131;
            v132 = OUTLINED_FUNCTION_60_3();
            starttest(v132, v133);
            v134 = OUTLINED_FUNCTION_16_20();
            if (lpta_loadp_setscan_r(v134, v135))
            {
              goto LABEL_60;
            }

            v136 = OUTLINED_FUNCTION_60_3();
            bspush_ca_scan(v136, v137);
            v138 = OUTLINED_FUNCTION_0_28();
            if (!testFldeq(v138, v139, v140, v141))
            {
              v142 = OUTLINED_FUNCTION_1_26();
LABEL_57:
              if (!testFldeq(v142, v143, v144, v145))
              {
LABEL_58:
                if (!advance_tok(a1))
                {
                  *(a1 + 4378) = 3 * *(a1 + 4286);
                  *(a1 + 4406) = (OUTLINED_FUNCTION_73_3(9 * *(a1 + 4562)) + 20.0);
                  *(a1 + 4530) = 1;
LABEL_60:
                  vretproc(a1);
                  result = 0;
                  goto LABEL_4;
                }
              }
            }

LABEL_77:
            v160 = *(a1 + 104);
            if (v160)
            {
              v161 = OUTLINED_FUNCTION_74_3(v160);
            }

            else
            {
              v162 = OUTLINED_FUNCTION_84_2();
              v161 = vback(v162, v163);
            }

            switch(v161)
            {
              case 1:
                continue;
              case 2:
                goto LABEL_25;
              case 3:
                goto LABEL_9;
              case 4:
                goto LABEL_10;
              case 5:
                v164 = OUTLINED_FUNCTION_39_6();
                bspush_ca_scan(v164, v165);
                v50 = OUTLINED_FUNCTION_7_24();
                goto LABEL_15;
              case 6:
                goto LABEL_16;
              case 7:
                v184 = OUTLINED_FUNCTION_25_15();
                bspush_ca_scan(v184, v185);
                v50 = OUTLINED_FUNCTION_13_23();
                v53 = 35;
                goto LABEL_15;
              case 8:
                v182 = OUTLINED_FUNCTION_32_10();
                bspush_ca_scan(v182, v183);
                v50 = OUTLINED_FUNCTION_12_23();
                goto LABEL_15;
              case 9:
                v180 = OUTLINED_FUNCTION_43_4();
                bspush_ca_scan(v180, v181);
                v50 = OUTLINED_FUNCTION_11_23();
                goto LABEL_15;
              case 10:
                v50 = OUTLINED_FUNCTION_13_23();
                v53 = 24;
                goto LABEL_15;
              case 11:
                goto LABEL_11;
              case 12:
                v57 = OUTLINED_FUNCTION_18_18();
                v60 = 3;
                goto LABEL_19;
              case 13:
                goto LABEL_20;
              case 14:
                goto LABEL_12;
              case 15:
                v178 = OUTLINED_FUNCTION_60_3();
                bspush_ca_scan(v178, v179);
                v111 = OUTLINED_FUNCTION_8_24();
                goto LABEL_64;
              case 16:
                goto LABEL_65;
              case 17:
                v176 = OUTLINED_FUNCTION_54_3();
                bspush_ca_scan(v176, v177);
                v111 = OUTLINED_FUNCTION_2_26();
                goto LABEL_64;
              case 18:
                v111 = OUTLINED_FUNCTION_6_24();
                goto LABEL_64;
              case 19:
                v44 = OUTLINED_FUNCTION_14_21();
                goto LABEL_67;
              case 20:
                goto LABEL_68;
              case 21:
                goto LABEL_27;
              case 22:
                goto LABEL_45;
              case 23:
                goto LABEL_29;
              case 24:
                goto LABEL_30;
              case 25:
                v172 = OUTLINED_FUNCTION_60_3();
                bspush_ca_scan(v172, v173);
                v92 = OUTLINED_FUNCTION_7_24();
                goto LABEL_35;
              case 26:
                goto LABEL_36;
              case 27:
                v186 = OUTLINED_FUNCTION_60_3();
                bspush_ca_scan(v186, v187);
                v92 = OUTLINED_FUNCTION_13_23();
                v95 = 35;
                goto LABEL_35;
              case 28:
                v170 = OUTLINED_FUNCTION_60_3();
                bspush_ca_scan(v170, v171);
                v92 = OUTLINED_FUNCTION_12_23();
                goto LABEL_35;
              case 29:
                v168 = OUTLINED_FUNCTION_60_3();
                bspush_ca_scan(v168, v169);
                v92 = OUTLINED_FUNCTION_11_23();
                goto LABEL_35;
              case 30:
                v92 = OUTLINED_FUNCTION_13_23();
                v95 = 24;
                goto LABEL_35;
              case 31:
                goto LABEL_31;
              case 32:
                v100 = OUTLINED_FUNCTION_18_18();
                v103 = 3;
                goto LABEL_70;
              case 33:
                goto LABEL_71;
              case 34:
                goto LABEL_32;
              case 35:
                v166 = OUTLINED_FUNCTION_60_3();
                bspush_ca_scan(v166, v167);
                v152 = OUTLINED_FUNCTION_8_24();
                goto LABEL_73;
              case 36:
                goto LABEL_74;
              case 37:
                v188 = OUTLINED_FUNCTION_60_3();
                bspush_ca_scan(v188, v189);
                v152 = OUTLINED_FUNCTION_2_26();
                goto LABEL_73;
              case 38:
                v152 = OUTLINED_FUNCTION_6_24();
                goto LABEL_73;
              case 39:
                v86 = OUTLINED_FUNCTION_14_21();
                goto LABEL_76;
              case 40:
                goto LABEL_103;
              case 41:
                goto LABEL_48;
              case 42:
                goto LABEL_51;
              case 43:
                goto LABEL_54;
              case 44:
                goto LABEL_60;
              case 45:
                v174 = OUTLINED_FUNCTION_60_3();
                bspush_ca_scan(v174, v175);
                v142 = OUTLINED_FUNCTION_2_26();
                goto LABEL_57;
              case 46:
                goto LABEL_58;
              case 47:
                v142 = OUTLINED_FUNCTION_6_24();
                goto LABEL_57;
              default:
                goto LABEL_3;
            }
          }

          v42 = OUTLINED_FUNCTION_53_3();
          bspush_ca_scan(v42, v43);
          v44 = OUTLINED_FUNCTION_0_28();
LABEL_67:
          if (testFldeq(v44, v45, v46, v47))
          {
            goto LABEL_77;
          }

LABEL_68:
          if (advance_tok(a1))
          {
            goto LABEL_77;
          }

          OUTLINED_FUNCTION_79_3(*(a1 + 4586) - 200);
          v63 = v158 - 420;
        }

        else
        {
          v105 = OUTLINED_FUNCTION_40_5();
          bspush_ca_scan(v105, v106);
          v107 = OUTLINED_FUNCTION_0_28();
          if (testFldeq(v107, v108, v109, v110))
          {
            goto LABEL_77;
          }

          v111 = OUTLINED_FUNCTION_1_26();
LABEL_64:
          if (testFldeq(v111, v112, v113, v114))
          {
            goto LABEL_77;
          }

LABEL_65:
          if (advance_tok(a1))
          {
            goto LABEL_77;
          }

          OUTLINED_FUNCTION_79_3(*(a1 + 4586) - 200);
          v63 = v157 - 350;
        }
      }

      else
      {
        OUTLINED_FUNCTION_79_3(*(a1 + 4586) - 200);
        v63 = v62 - 400;
      }

      break;
    }

    *(a1 + 4594) = v63;
    v54 = *(a1 + 4602) - 300;
LABEL_24:
    *(a1 + 4602) = v54;
    goto LABEL_25;
  }

LABEL_3:
  vretproc(a1);
  result = 94;
LABEL_4:
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t por_ph_r(uint64_t a1)
{
  v479 = *MEMORY[0x277D85DE8];
  v473 = 0;
  v474 = 0.0;
  v471 = 0;
  v472 = 0.0;
  v469 = 0;
  v470 = 0.0;
  v467 = 0;
  v468 = 0.0;
  v466 = 0;
  v465[0] = 0;
  v465[1] = 0;
  v463 = 0;
  v464 = 0;
  HIDWORD(v462) = 0;
  v460 = 0;
  v461 = 0;
  v458 = 0;
  v459 = 0;
  v456 = 0;
  v457 = 0;
  OUTLINED_FUNCTION_70_3();
  bzero(&v433, v2);
  OUTLINED_FUNCTION_69_3();
  bzero(v478, v3);
  if (setjmp(v478) || ventproc(a1, &v433, v477, v476, v475, v478))
  {
LABEL_3:
    vretproc(a1);
    result = 94;
    goto LABEL_4;
  }

  v474 = 0.0;
  LOWORD(v473) = -5;
  v472 = 0.0;
  LOWORD(v471) = -5;
  v470 = 0.0;
  LOWORD(v469) = -5;
  v468 = 0.0;
  LOWORD(v467) = -5;
  v466 = 65532;
  push_ptr_init(a1, v465);
  push_ptr_init(a1, &v463);
  HIDWORD(v462) = 65532;
  push_ptr_init(a1, &v460);
  push_ptr_init(a1, &v458);
  push_ptr_init(a1, &v456);
  fence_24(a1);
  v6 = OUTLINED_FUNCTION_73_3(5 * *(a1 + 4562));
  v7 = OUTLINED_FUNCTION_22_16();
  starttest(v7, v8);
  v9 = OUTLINED_FUNCTION_15_21();
  v11 = lpta_loadp_setscan_l(v9, v10);
  v12 = 0;
  if (!v11)
  {
LABEL_23:
    LODWORD(v20) = v12;
    OUTLINED_FUNCTION_111_0(2, v430, v431, v432, v433, v434, v435, v436, v437, v438, v439, v440, v441, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465[0]);
    v45 = OUTLINED_FUNCTION_5_24();
    if (testFldeq(v45, v46, v47, v48))
    {
      goto LABEL_26;
    }

    OUTLINED_FUNCTION_37_8();
    bspush_ca_scan_boa();
    v49 = OUTLINED_FUNCTION_59_3();
    v51 = 4;
    v52 = 4;
LABEL_25:
    testFldeq(v49, v50, v51, v52);
    OUTLINED_FUNCTION_113_0();
    goto LABEL_27;
  }

  v13 = 4386;
  v14 = 0;
LABEL_7:
  *(a1 + v13) = 100;
  v15 = v14;
LABEL_8:
  v16 = OUTLINED_FUNCTION_41_4();
  starttest(v16, v17);
  v18 = OUTLINED_FUNCTION_15_21();
  v20 = v15;
  if (lpta_loadp_setscan_l(v18, v19))
  {
LABEL_9:
    v20 = v15;
    v21 = OUTLINED_FUNCTION_32_10();
    starttest(v21, v22);
    v23 = OUTLINED_FUNCTION_15_21();
    if (lpta_loadp_setscan_l(v23, v24))
    {
      v25 = 3600;
      v26 = 2900;
    }

    else
    {
LABEL_134:
      OUTLINED_FUNCTION_111_0(10, v430, v431, v432, v433, v434, v435, v436, v437, v438, v439, v440, v441, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465[0]);
      v377 = OUTLINED_FUNCTION_18_18();
      if (testFldeq(v377, v378, v379, 2))
      {
        goto LABEL_26;
      }

      if (advance_tok(a1))
      {
        goto LABEL_26;
      }

      v380 = OUTLINED_FUNCTION_61_3();
      if (lpta_loadp_setscan_r(v380, v381))
      {
        goto LABEL_26;
      }

      if (advance_tok(a1))
      {
        goto LABEL_26;
      }

      v382 = OUTLINED_FUNCTION_18_18();
      if (testFldeq(v382, v383, v384, 6))
      {
        goto LABEL_26;
      }

      v385 = OUTLINED_FUNCTION_3_25();
      if (testFldeq(v385, v386, v387, v388) || advance_tok(a1))
      {
        goto LABEL_26;
      }

      v25 = 3700;
      v26 = 3000;
    }
  }

  else
  {
LABEL_101:
    OUTLINED_FUNCTION_111_0(7, v430, v431, v432, v433, v434, v435, v436, v437, v438, v439, v440, v441, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465[0]);
    v294 = OUTLINED_FUNCTION_18_18();
    if (testFldeq(v294, v295, v296, 2))
    {
      goto LABEL_26;
    }

    if (advance_tok(a1))
    {
      goto LABEL_26;
    }

    v297 = OUTLINED_FUNCTION_61_3();
    if (lpta_loadp_setscan_r(v297, v298))
    {
      goto LABEL_26;
    }

    if (advance_tok(a1))
    {
      goto LABEL_26;
    }

    v299 = OUTLINED_FUNCTION_1_26();
    if (testFldeq(v299, v300, v301, v302))
    {
      goto LABEL_26;
    }

    v303 = OUTLINED_FUNCTION_3_25();
    if (testFldeq(v303, v304, v305, v306) || advance_tok(a1))
    {
      goto LABEL_26;
    }

    v25 = 3800;
    v26 = 3100;
  }

LABEL_11:
  *(a1 + 4602) = v26;
  *(a1 + 4610) = v25;
LABEL_12:
  v27 = OUTLINED_FUNCTION_15_21();
  if (lpta_loadp_setscan_l(v27, v28) || (OUTLINED_FUNCTION_17_19(), test_string_s()))
  {
LABEL_14:
    v15 = v20;
    v29 = OUTLINED_FUNCTION_58_3();
    starttest(v29, v30);
    v31 = OUTLINED_FUNCTION_15_21();
    if (lpta_loadp_setscan_l(v31, v32))
    {
      goto LABEL_19;
    }

LABEL_15:
    v33 = OUTLINED_FUNCTION_60_3();
    if (test_synch(v33, v34, 1u, v35))
    {
      goto LABEL_26;
    }

    *(a1 + 4578) = 450;
    v36 = 2100;
    v37 = 1250;
  }

  else
  {
    v36 = 2450;
    v37 = 1700;
  }

  *(a1 + 4586) = v37;
  *(a1 + 4594) = v36;
  v15 = v20;
LABEL_19:
  v20 = v15;
  v38 = OUTLINED_FUNCTION_34_9();
  starttest(v38, v39);
  v40 = OUTLINED_FUNCTION_16_20();
  if (!lpta_loadp_setscan_r(v40, v41))
  {
LABEL_20:
    v20 = v15;
    v42 = OUTLINED_FUNCTION_40_5();
    if (test_synch(v42, v43, 1u, v44))
    {
      goto LABEL_26;
    }

    *(a1 + 4582) = 450;
    *(a1 + 4590) = 1500;
    *(a1 + 4598) = 2200;
  }

LABEL_114:
  v307 = OUTLINED_FUNCTION_46_4();
  starttest(v307, v308);
  v309 = OUTLINED_FUNCTION_15_21();
  if (!lpta_loadp_setscan_l(v309, v310))
  {
    v369 = OUTLINED_FUNCTION_17_19();
    if (testFldeq(v369, v370, v371, 1))
    {
      goto LABEL_26;
    }

    OUTLINED_FUNCTION_60_3();
    bspush_ca_scan_boa();
    v49 = OUTLINED_FUNCTION_5_24();
    goto LABEL_25;
  }

LABEL_115:
  v311 = OUTLINED_FUNCTION_51_3();
  starttest(v311, v312);
  v313 = OUTLINED_FUNCTION_16_20();
  if (!lpta_loadp_setscan_r(v313, v314))
  {
    v372 = OUTLINED_FUNCTION_55_3();
    bspush_ca_scan(v372, v373);
    v374 = OUTLINED_FUNCTION_17_19();
    if (testFldeq(v374, v375, v376, 1))
    {
      goto LABEL_26;
    }

    OUTLINED_FUNCTION_60_3();
    bspush_ca_scan_boa();
    v49 = OUTLINED_FUNCTION_59_3();
    v51 = 4;
    v52 = 6;
    goto LABEL_25;
  }

LABEL_116:
  v315 = OUTLINED_FUNCTION_60_3();
  starttest(v315, v316);
  v317 = OUTLINED_FUNCTION_16_20();
  if (lpta_loadp_setscan_r(v317, v318) || (OUTLINED_FUNCTION_17_19(), test_string_s()) || (v319 = OUTLINED_FUNCTION_16_20(), LODWORD(v15) = v20, lpta_loadp_setscan_r(v319, v320)))
  {
LABEL_144:
    v389 = OUTLINED_FUNCTION_60_3();
    starttest(v389, v390);
    v391 = OUTLINED_FUNCTION_16_20();
    if (lpta_loadp_setscan_r(v391, v392))
    {
LABEL_145:
      v393 = OUTLINED_FUNCTION_60_3();
      starttest(v393, v394);
      v395 = OUTLINED_FUNCTION_16_20();
      if (lpta_loadp_setscan_r(v395, v396))
      {
        v69 = 20;
        v65 = 30;
      }

      else
      {
LABEL_148:
        v397 = OUTLINED_FUNCTION_60_3();
        if (test_synch(v397, v398, 1u, v399) || advance_tok(a1))
        {
          goto LABEL_26;
        }

        v69 = 30;
        v65 = 25;
      }

      v66 = 4398;
      v68 = 4394;
      goto LABEL_164;
    }

    v400 = OUTLINED_FUNCTION_60_3();
    bspush_ca_scan(v400, v401);
    v402 = OUTLINED_FUNCTION_3_25();
    v406 = testFldeq(v402, v403, v404, v405);
    LODWORD(v53) = v20;
    LODWORD(v67) = v20;
    if (v406)
    {
      goto LABEL_27;
    }

LABEL_152:
    LODWORD(v15) = v67;
    if (!advance_tok(a1))
    {
      OUTLINED_FUNCTION_71_3(*(a1 + 3400), 5.0);
      v407 = OUTLINED_FUNCTION_60_3();
      starttest(v407, v408);
      v409 = OUTLINED_FUNCTION_19_17();
      move_i(v409, v410, 30);
      OUTLINED_FUNCTION_65_3();
      if (!doAV())
      {
        v54 = 20 - v6;
LABEL_155:
        v411 = OUTLINED_FUNCTION_60_3();
        starttest(v411, v412);
        v413 = OUTLINED_FUNCTION_19_17();
        c_assvar(v413, v414);
        HIWORD(v462) = v54;
        v367 = &v473;
        v365 = a1 + 2008;
        v364 = a1;
        v366 = v20;
        v368 = &v473;
LABEL_156:
        if (!addStreamArraySsVal(v364, v365, v366, v367, v368))
        {
          goto LABEL_161;
        }
      }
    }

LABEL_157:
    LODWORD(v53) = v15;
    goto LABEL_27;
  }

LABEL_119:
  v321 = OUTLINED_FUNCTION_60_3();
  if (test_synch(v321, v322, 1u, v323))
  {
    goto LABEL_157;
  }

  v324 = OUTLINED_FUNCTION_17_19();
  if (testFldeq(v324, v325, v326, 2) || advance_tok(a1))
  {
    goto LABEL_157;
  }

  v327 = *(a1 + 3400);
  OUTLINED_FUNCTION_114_0();
  v474 = *(a1 + 2136) + v330;
  v472 = v474 + 1.0;
  v470 = v328 * 13.0 / v329 + v474 + 1.0;
  v468 = v328 * 625.0 / 1000.0 + v470;
  v331 = OUTLINED_FUNCTION_60_3();
  starttest(v331, v332);
  v333 = OUTLINED_FUNCTION_19_17();
  move_i(v333, v334, 20);
  OUTLINED_FUNCTION_4_24();
  v335 = doAV();
  LODWORD(v53) = v15;
  if (v335)
  {
    goto LABEL_27;
  }

LABEL_123:
  v336 = OUTLINED_FUNCTION_60_3();
  starttest(v336, v337);
  v338 = OUTLINED_FUNCTION_19_17();
  c_assvar(v338, v339);
  HIWORD(v462) = 25 - v6;
  v340 = OUTLINED_FUNCTION_35_8();
  v344 = addStreamArraySsVal(v340, v341, v20, v342, v343);
  LODWORD(v53) = v15;
  if (v344)
  {
    goto LABEL_27;
  }

LABEL_124:
  v345 = OUTLINED_FUNCTION_60_3();
  starttest(v345, v346);
  v347 = OUTLINED_FUNCTION_19_17();
  move_i(v347, v348, 35);
  OUTLINED_FUNCTION_65_3();
  v349 = doAV();
  LODWORD(v53) = v15;
  if (v349)
  {
    goto LABEL_27;
  }

LABEL_125:
  v350 = OUTLINED_FUNCTION_60_3();
  starttest(v350, v351);
  v352 = OUTLINED_FUNCTION_19_17();
  c_assvar(v352, v353);
  HIWORD(v462) = 45 - v6;
  v354 = addStreamArraySsVal(a1, a1 + 2008, v20, &v471, &v469);
  LODWORD(v53) = v15;
  if (!v354)
  {
LABEL_126:
    v355 = OUTLINED_FUNCTION_60_3();
    starttest(v355, v356);
    v357 = OUTLINED_FUNCTION_19_17();
    move_i(v357, v358, 5);
    OUTLINED_FUNCTION_65_3();
    v359 = doAV();
    LODWORD(v53) = v15;
    if (v359)
    {
      goto LABEL_27;
    }

LABEL_127:
    v360 = OUTLINED_FUNCTION_60_3();
    starttest(v360, v361);
    v362 = OUTLINED_FUNCTION_19_17();
    c_assvar(v362, v363);
    HIWORD(v462) = 35 - v6;
    v364 = OUTLINED_FUNCTION_66_3();
    goto LABEL_156;
  }

LABEL_27:
  while (1)
  {
    HIDWORD(v431) = 50 - v6;
    LODWORD(v431) = 40 - v6;
    v432 = 4720;
    v54 = 20 - v6;
    while (2)
    {
      v55 = *(a1 + 104);
      if (v55)
      {
        v56 = OUTLINED_FUNCTION_74_3(v55);
        v15 = v62;
      }

      else
      {
        v56 = vback(a1, v53);
        v15 = 0;
      }

      v63 = v56 - 1;
      v64 = 0;
      v65 = 1;
      v66 = 4518;
      v53 = 4514;
      v13 = 4386;
      v14 = v15;
      v67 = v15;
      v68 = 4514;
      v69 = 1;
      v20 = v15;
      switch(v63)
      {
        case 0:
          goto LABEL_7;
        case 1:
          v12 = v15;
          goto LABEL_23;
        case 2:
          bspop_boa(a1);
          v70 = advance_tok(a1);
          LODWORD(v53) = v15;
          if (v70)
          {
            continue;
          }

          v71 = OUTLINED_FUNCTION_61_3();
          v73 = lpta_loadp_setscan_r(v71, v72);
          LODWORD(v53) = v15;
          if (v73)
          {
            continue;
          }

          v74 = advance_tok(a1);
          LODWORD(v53) = v15;
          if (v74)
          {
            continue;
          }

          v75 = OUTLINED_FUNCTION_5_24();
          v79 = testFldeq(v75, v76, v77, v78);
          LODWORD(v53) = v15;
          if (v79)
          {
            continue;
          }

          OUTLINED_FUNCTION_26_15();
          bspush_ca_scan_boa();
          v80 = OUTLINED_FUNCTION_93_1();
          v82 = v15;
          v83 = v15;
          goto LABEL_82;
        case 3:
          bspop_boa(a1);
          v114 = advance_tok(a1);
          LODWORD(v53) = v15;
          if (v114)
          {
            continue;
          }

          v13 = 4382;
          v14 = v15;
          goto LABEL_7;
        case 4:
          goto LABEL_8;
        case 5:
          goto LABEL_9;
        case 6:
          v20 = v15;
          goto LABEL_101;
        case 7:
          v20 = v15;
          goto LABEL_12;
        case 8:
          v25 = 3600;
          v26 = 2900;
          v20 = v15;
          goto LABEL_11;
        case 9:
          v20 = v15;
          goto LABEL_134;
        case 10:
          v20 = v15;
          goto LABEL_14;
        case 11:
          goto LABEL_19;
        case 12:
          v20 = v15;
          goto LABEL_15;
        case 13:
          v20 = v15;
          goto LABEL_114;
        case 14:
          goto LABEL_20;
        case 15:
          v20 = v15;
          goto LABEL_115;
        case 16:
          bspop_boa(a1);
          v115 = advance_tok(a1);
          LODWORD(v53) = v15;
          if (v115)
          {
            continue;
          }

          v472 = OUTLINED_FUNCTION_71_3(*(a1 + 3400), 6.0) + 1.0;
          v116 = OUTLINED_FUNCTION_54_3();
          starttest(v116, v117);
          v118 = OUTLINED_FUNCTION_15_21();
          if (lpta_loadp_setscan_l(v118, v119))
          {
            goto LABEL_49;
          }

          goto LABEL_81;
        case 17:
LABEL_49:
          v120 = OUTLINED_FUNCTION_56_3();
          starttest(v120, v121);
          v122 = OUTLINED_FUNCTION_19_17();
          move_i(v122, v123, 50);
          OUTLINED_FUNCTION_4_24();
          v14 = doAV();
          v53 = v15;
          if (!v14)
          {
            goto LABEL_50;
          }

          continue;
        case 18:
          bspop_boa(a1);
          v89 = advance_tok(a1);
          LODWORD(v53) = v15;
          if (v89)
          {
            continue;
          }

          v90 = OUTLINED_FUNCTION_60_3();
          starttest(v90, v91);
          v92 = OUTLINED_FUNCTION_19_17();
          move_i(v92, v93, 45);
          OUTLINED_FUNCTION_4_24();
          v94 = doAV();
          LODWORD(v53) = v15;
          if (v94)
          {
            continue;
          }

          goto LABEL_41;
        case 19:
LABEL_41:
          v95 = OUTLINED_FUNCTION_57_3();
          starttest(v95, v96);
          v97 = OUTLINED_FUNCTION_19_17();
          c_assvar(v97, v98);
          HIWORD(v462) = WORD2(v431);
          v99 = OUTLINED_FUNCTION_35_8();
          v103 = addStreamArraySsVal(v99, v100, v15, v101, v102);
          LODWORD(v53) = v15;
          if (!v103)
          {
            goto LABEL_42;
          }

          continue;
        case 20:
LABEL_42:
          v104 = OUTLINED_FUNCTION_60_3();
          starttest(v104, v105);
          v106 = OUTLINED_FUNCTION_19_17();
          move_i(v106, v107, 30);
          OUTLINED_FUNCTION_9_24();
          v108 = doAV();
          LODWORD(v53) = v15;
          if (!v108)
          {
            goto LABEL_43;
          }

          continue;
        case 21:
LABEL_43:
          v109 = OUTLINED_FUNCTION_60_3();
          starttest(v109, v110);
          v111 = OUTLINED_FUNCTION_19_17();
          c_assvar(v111, v112);
          HIWORD(v462) = v431;
          goto LABEL_90;
        case 22:
        case 23:
        case 44:
        case 68:
        case 73:
          goto LABEL_164;
        case 24:
LABEL_50:
          if (OUTLINED_FUNCTION_103_0(v14, v53, v67, v57, v58, v59, v60, v61, v430, v431, v432))
          {
            v64 = 0;
          }

          else
          {
            v64 = *(a1 + 4558);
          }

          goto LABEL_86;
        case 25:
LABEL_86:
          HIWORD(v466) = v64;
          goto LABEL_87;
        case 26:
LABEL_87:
          v272 = OUTLINED_FUNCTION_35_8();
          addStreamArraySsVal(v272, v273, v274, v275, v276);
          goto LABEL_88;
        case 27:
LABEL_88:
          v277 = OUTLINED_FUNCTION_60_3();
          starttest(v277, v278);
          v279 = OUTLINED_FUNCTION_19_17();
          move_i(v279, v280, 30);
          OUTLINED_FUNCTION_9_24();
          v281 = doAV();
          LODWORD(v53) = v15;
          if (!v281)
          {
            goto LABEL_89;
          }

          continue;
        case 28:
LABEL_89:
          v282 = OUTLINED_FUNCTION_52_3();
          starttest(v282, v283);
          v284 = OUTLINED_FUNCTION_19_17();
          c_assvar(v284, v285);
          HIWORD(v462) = 20 - v6;
LABEL_90:
          v286 = OUTLINED_FUNCTION_66_3();
          v291 = addStreamArraySsVal(v286, v287, v288, v289, v290);
          LODWORD(v53) = v15;
          if (!v291)
          {
            goto LABEL_161;
          }

          continue;
        case 29:
          LODWORD(v20) = v15;
          goto LABEL_165;
        case 30:
          v20 = v15;
          goto LABEL_116;
        case 31:
          v181 = OUTLINED_FUNCTION_55_3();
          v113 = test_synch(v181, v182, 1u, v183);
          goto LABEL_63;
        case 32:
          bspop_boa(a1);
          v113 = advance_tok(a1);
LABEL_63:
          LODWORD(v53) = v15;
          if (!v113)
          {
            goto LABEL_64;
          }

          continue;
        case 33:
LABEL_64:
          v472 = OUTLINED_FUNCTION_71_3(*(a1 + 3400), 4.0) + 1.0;
          v184 = OUTLINED_FUNCTION_60_3();
          starttest(v184, v185);
          v186 = OUTLINED_FUNCTION_16_20();
          if (lpta_loadp_setscan_r(v186, v187))
          {
            goto LABEL_65;
          }

          goto LABEL_70;
        case 34:
LABEL_65:
          v188 = OUTLINED_FUNCTION_60_3();
          starttest(v188, v189);
          v190 = OUTLINED_FUNCTION_16_20();
          if (lpta_loadp_setscan_r(v190, v191))
          {
            goto LABEL_66;
          }

LABEL_81:
          OUTLINED_FUNCTION_60_3();
          bspush_ca_scan_boa();
          v80 = OUTLINED_FUNCTION_20_16();
          v82 = 2;
          goto LABEL_82;
        case 35:
LABEL_70:
          v210 = OUTLINED_FUNCTION_60_3();
          v213 = test_synch(v210, v211, 1u, v212);
          LODWORD(v53) = v15;
          if (!v213)
          {
            v214 = OUTLINED_FUNCTION_60_3();
            starttest(v214, v215);
            v216 = OUTLINED_FUNCTION_19_17();
            move_i(v216, v217, 15);
            OUTLINED_FUNCTION_4_24();
            v218 = doAV();
            LODWORD(v53) = v15;
            if (!v218)
            {
              goto LABEL_72;
            }
          }

          continue;
        case 36:
LABEL_72:
          v219 = OUTLINED_FUNCTION_60_3();
          starttest(v219, v220);
          v221 = OUTLINED_FUNCTION_19_17();
          move_i(v221, v222, 15);
          v223 = OUTLINED_FUNCTION_35_8();
          v227 = addStreamArraySsVal(v223, v224, v15, v225, v226);
          LODWORD(v53) = v15;
          if (!v227)
          {
            goto LABEL_73;
          }

          continue;
        case 37:
LABEL_73:
          v228 = OUTLINED_FUNCTION_60_3();
          starttest(v228, v229);
          v230 = OUTLINED_FUNCTION_19_17();
          move_i(v230, v231, v232);
          OUTLINED_FUNCTION_4_24();
          v233 = doAF();
          LODWORD(v53) = v15;
          if (!v233)
          {
            goto LABEL_74;
          }

          continue;
        case 38:
LABEL_74:
          v234 = OUTLINED_FUNCTION_60_3();
          starttest(v234, v235);
          v236 = OUTLINED_FUNCTION_19_17();
          move_i(v236, v237, 25);
          OUTLINED_FUNCTION_9_24();
          v238 = doAV();
          LODWORD(v53) = v15;
          if (!v238)
          {
            goto LABEL_75;
          }

          continue;
        case 39:
LABEL_75:
          v239 = OUTLINED_FUNCTION_60_3();
          starttest(v239, v240);
          v241 = OUTLINED_FUNCTION_19_17();
          c_assvar(v241, v242);
          HIWORD(v462) = 55 - v6;
          OUTLINED_FUNCTION_9_24();
          v243 = doAF();
          LODWORD(v53) = v15;
          if (!v243)
          {
            goto LABEL_76;
          }

          continue;
        case 40:
LABEL_76:
          v244 = OUTLINED_FUNCTION_60_3();
          starttest(v244, v245);
          v246 = OUTLINED_FUNCTION_19_17();
          move_i(v246, v247, 65);
          v248 = OUTLINED_FUNCTION_66_3();
          v253 = addStreamArraySsVal(v248, v249, v250, v251, v252);
          LODWORD(v53) = v15;
          if (!v253)
          {
            goto LABEL_77;
          }

          continue;
        case 41:
LABEL_77:
          v254 = OUTLINED_FUNCTION_60_3();
          starttest(v254, v255);
          v256 = OUTLINED_FUNCTION_19_17();
          move_i(v256, v257, 45);
          v258 = OUTLINED_FUNCTION_66_3();
          v263 = addStreamArraySsVal(v258, v259, v260, v261, v262);
          LODWORD(v53) = v15;
          if (!v263)
          {
            goto LABEL_78;
          }

          continue;
        case 42:
LABEL_78:
          v264 = OUTLINED_FUNCTION_60_3();
          starttest(v264, v265);
          v178 = OUTLINED_FUNCTION_19_17();
          v180 = 20;
          goto LABEL_79;
        case 43:
        case 55:
          goto LABEL_93;
        case 45:
LABEL_66:
          v192 = OUTLINED_FUNCTION_60_3();
          starttest(v192, v193);
          v194 = OUTLINED_FUNCTION_19_17();
          move_i(v194, v195, 40);
          OUTLINED_FUNCTION_4_24();
          v196 = doAV();
          LODWORD(v53) = v15;
          if (!v196)
          {
            goto LABEL_67;
          }

          continue;
        case 46:
          bspop_boa(a1);
          OUTLINED_FUNCTION_60_3();
          bspush_ca_scan_boa();
          v80 = OUTLINED_FUNCTION_7_24();
LABEL_82:
          if (testFldeq(v80, v81, v82, v83))
          {
            LODWORD(v53) = v15;
          }

          else
          {
            LODWORD(v53) = 1;
          }

          continue;
        case 47:
          bspop_boa(a1);
          v124 = advance_tok(a1);
          LODWORD(v53) = v15;
          if (v124)
          {
            continue;
          }

          v125 = OUTLINED_FUNCTION_60_3();
          starttest(v125, v126);
          v127 = OUTLINED_FUNCTION_19_17();
          move_i(v127, v128, 20);
          OUTLINED_FUNCTION_4_24();
          v129 = doAV();
          LODWORD(v53) = v15;
          if (v129)
          {
            continue;
          }

          goto LABEL_54;
        case 48:
LABEL_54:
          v130 = OUTLINED_FUNCTION_60_3();
          starttest(v130, v131);
          v132 = OUTLINED_FUNCTION_19_17();
          move_i(v132, v133, v134);
          v135 = OUTLINED_FUNCTION_35_8();
          v139 = addStreamArraySsVal(v135, v136, v15, v137, v138);
          LODWORD(v53) = v15;
          if (!v139)
          {
            goto LABEL_55;
          }

          continue;
        case 49:
LABEL_55:
          v140 = OUTLINED_FUNCTION_60_3();
          starttest(v140, v141);
          v142 = OUTLINED_FUNCTION_19_17();
          move_i(v142, v143, v144);
          OUTLINED_FUNCTION_4_24();
          v145 = doAF();
          LODWORD(v53) = v15;
          if (!v145)
          {
            goto LABEL_56;
          }

          continue;
        case 50:
LABEL_56:
          v146 = OUTLINED_FUNCTION_60_3();
          starttest(v146, v147);
          v148 = OUTLINED_FUNCTION_19_17();
          move_i(v148, v149, 40);
          OUTLINED_FUNCTION_9_24();
          v150 = doAV();
          LODWORD(v53) = v15;
          if (!v150)
          {
            goto LABEL_57;
          }

          continue;
        case 51:
LABEL_57:
          v151 = OUTLINED_FUNCTION_60_3();
          starttest(v151, v152);
          v153 = OUTLINED_FUNCTION_19_17();
          c_assvar(v153, v154);
          HIWORD(v462) = 55 - v6;
          OUTLINED_FUNCTION_9_24();
          v155 = doAF();
          LODWORD(v53) = v15;
          if (!v155)
          {
            goto LABEL_58;
          }

          continue;
        case 52:
LABEL_58:
          v156 = OUTLINED_FUNCTION_60_3();
          starttest(v156, v157);
          v158 = OUTLINED_FUNCTION_19_17();
          move_i(v158, v159, 65);
          v160 = OUTLINED_FUNCTION_66_3();
          v165 = addStreamArraySsVal(v160, v161, v162, v163, v164);
          LODWORD(v53) = v15;
          if (!v165)
          {
            goto LABEL_59;
          }

          continue;
        case 53:
LABEL_59:
          v166 = OUTLINED_FUNCTION_60_3();
          starttest(v166, v167);
          v168 = OUTLINED_FUNCTION_19_17();
          move_i(v168, v169, 45);
          v170 = OUTLINED_FUNCTION_66_3();
          v175 = addStreamArraySsVal(v170, v171, v172, v173, v174);
          LODWORD(v53) = v15;
          if (!v175)
          {
            goto LABEL_60;
          }

          continue;
        case 54:
LABEL_60:
          v176 = OUTLINED_FUNCTION_60_3();
          starttest(v176, v177);
          v178 = OUTLINED_FUNCTION_19_17();
LABEL_79:
          move_i(v178, v179, v180);
          v266 = OUTLINED_FUNCTION_66_3();
          v271 = addStreamArraySsVal(v266, v267, v268, v269, v270);
          LODWORD(v53) = v15;
          if (v271)
          {
            continue;
          }

LABEL_93:
          *(a1 + 4522) = 1;
          v65 = 1;
          goto LABEL_162;
        case 56:
LABEL_67:
          v197 = OUTLINED_FUNCTION_60_3();
          starttest(v197, v198);
          v199 = OUTLINED_FUNCTION_19_17();
          c_assvar(v199, v200);
          HIWORD(v462) = 30 - v6;
          v201 = OUTLINED_FUNCTION_35_8();
          v205 = addStreamArraySsVal(v201, v202, v15, v203, v204);
          LODWORD(v53) = v15;
          if (!v205)
          {
            goto LABEL_68;
          }

          continue;
        case 57:
LABEL_68:
          v206 = OUTLINED_FUNCTION_60_3();
          starttest(v206, v207);
          v208 = OUTLINED_FUNCTION_19_17();
          move_i(v208, v209, 50);
          OUTLINED_FUNCTION_9_24();
          v14 = doAV();
          v53 = v15;
          if (!v14)
          {
            goto LABEL_94;
          }

          continue;
        case 58:
LABEL_94:
          v292 = OUTLINED_FUNCTION_103_0(v14, v53, v67, v57, v58, v59, v60, v61, v430, v431, v432);
          v293 = 0;
          if (!v292)
          {
            v293 = *(a1 + 4558);
          }

          goto LABEL_159;
        case 59:
          v293 = 0;
LABEL_159:
          HIWORD(v466) = v293;
          break;
        case 60:
          goto LABEL_160;
        case 61:
          v20 = v15;
          goto LABEL_144;
        case 62:
          goto LABEL_119;
        case 63:
          goto LABEL_123;
        case 64:
          goto LABEL_124;
        case 65:
          goto LABEL_125;
        case 66:
          goto LABEL_126;
        case 67:
          goto LABEL_127;
        case 69:
          LODWORD(v20) = v15;
          goto LABEL_145;
        case 70:
          v84 = OUTLINED_FUNCTION_7_24();
          v88 = testFldeq(v84, v85, v86, v87);
          LODWORD(v67) = v15;
          LODWORD(v53) = v15;
          if (!v88)
          {
            goto LABEL_152;
          }

          continue;
        case 71:
          goto LABEL_152;
        case 72:
          goto LABEL_155;
        case 74:
          v69 = 20;
          v65 = 30;
          v66 = 4398;
          v68 = 4394;
          goto LABEL_163;
        case 75:
          LODWORD(v20) = v15;
          goto LABEL_148;
        case 76:
          goto LABEL_169;
        case 77:
          goto LABEL_170;
        default:
          goto LABEL_3;
      }

      break;
    }

LABEL_160:
    addStreamArraySsVal(a1, a1 + 2008, &v466, &v471, (a1 + 2144));
LABEL_161:
    v65 = 1;
LABEL_162:
    v66 = 4518;
    v68 = 4514;
    v69 = 1;
LABEL_163:
    LODWORD(v20) = v15;
LABEL_164:
    *(a1 + v68) = v65;
    *(a1 + v66) = v69;
LABEL_165:
    v415 = OUTLINED_FUNCTION_60_3();
    starttest(v415, v416);
    v417 = OUTLINED_FUNCTION_15_21();
    if (lpta_loadp_setscan_l(v417, v418))
    {
      break;
    }

    v419 = OUTLINED_FUNCTION_59_3();
    if (testFldeq(v419, v420, 7, 1))
    {
LABEL_26:
      LODWORD(v53) = v20;
    }

    else
    {
      v421 = advance_tok(a1);
      LODWORD(v53) = v20;
      if (!v421)
      {
        OUTLINED_FUNCTION_72_3((167 * *(a1 + 4282)));
        OUTLINED_FUNCTION_23_16(v422, v423);
        OUTLINED_FUNCTION_98_1(v424);
        OUTLINED_FUNCTION_23_16(v425, v426);
        *(a1 + 4382) = v427;
        OUTLINED_FUNCTION_23_16(*(a1 + 4294), v428);
        *(a1 + 4386) = v429;
        break;
      }
    }
  }

LABEL_169:
  add_TL_to_trill(a1, v53, v67, v57, v58, v59, v60, v61);
LABEL_170:
  vretproc(a1);
  result = 0;
LABEL_4:
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t por_ph_R(uint64_t a1)
{
  OUTLINED_FUNCTION_36_8(*MEMORY[0x277D85DE8], v142);
  OUTLINED_FUNCTION_31_11(v3, v4, v5, v6, v7, v8, v9, v10, v143, v145, v147, v149, v151, v153, v155, v157, v159, v161, v163, v165, v167, v169, v171, v173, v175, v177, v179, v181, v183, v185, v187, v189, v191, v193, v195, v197);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_10_24(v11, v12, v13, v14, v15, v16, v17, v18, v144, v146, v148, v150, v152, v154, v156, v158, v160, v162, v164, v166, v168, v170, v172, v174, v176, v178, v180, v182, v184, v186, v188, *v190, v190[4], *v192, *&v192[4], v192[6], v194, SWORD2(v194), SBYTE6(v194), SHIBYTE(v194), v196, v198))
  {
LABEL_3:
    vretproc(a1);
    result = 94;
    goto LABEL_4;
  }

  fence_24(a1);
  v21 = OUTLINED_FUNCTION_22_16();
  starttest(v21, v22);
  v23 = OUTLINED_FUNCTION_15_21();
  v25 = lpta_loadp_setscan_l(v23, v24);
  v26 = 0;
  v27 = 0;
  if (v25)
  {
LABEL_6:
    v28 = OUTLINED_FUNCTION_34_9();
    starttest(v28, v29);
    v30 = OUTLINED_FUNCTION_15_21();
    if (!lpta_loadp_setscan_l(v30, v31))
    {
      v71 = OUTLINED_FUNCTION_17_19();
      if (!testFldeq(v71, v72, v73, 1))
      {
        OUTLINED_FUNCTION_40_5();
        bspush_ca_scan_boa();
        v74 = OUTLINED_FUNCTION_5_24();
        if (testFldeq(v74, v75, v76, v77))
        {
          v27 = v27;
        }

        else
        {
          v27 = 1;
        }
      }

      goto LABEL_32;
    }

LABEL_7:
    *(a1 + 4578) = 300;
    v32 = 2700;
    v33 = 300;
    v34 = 4582;
  }

  else
  {
    while (2)
    {
      v27 = v26;
      v89 = OUTLINED_FUNCTION_28_12();
      if (test_synch(v89, v90, 1u, v91))
      {
        goto LABEL_32;
      }

      *(a1 + 4582) = -2;
      *(a1 + 4590) = -2;
      *(a1 + 4598) = -2;
      *(a1 + 4606) = -2;
      *(a1 + 4578) = 500;
      *(a1 + 4602) = 3500;
      v92 = OUTLINED_FUNCTION_37_8();
      starttest(v92, v93);
      v94 = OUTLINED_FUNCTION_16_20();
      if (lpta_loadp_setscan_r(v94, v95))
      {
LABEL_47:
        v96 = OUTLINED_FUNCTION_29_12();
        starttest(v96, v97);
        v98 = OUTLINED_FUNCTION_16_20();
        if (lpta_loadp_setscan_r(v98, v99))
        {
LABEL_48:
          v100 = OUTLINED_FUNCTION_41_4();
          starttest(v100, v101);
          v102 = OUTLINED_FUNCTION_16_20();
          if (lpta_loadp_setscan_r(v102, v103))
          {
LABEL_49:
            v104 = OUTLINED_FUNCTION_39_6();
            starttest(v104, v105);
            v106 = OUTLINED_FUNCTION_16_20();
            if (lpta_loadp_setscan_r(v106, v107))
            {
LABEL_50:
              v108 = OUTLINED_FUNCTION_25_15();
              starttest(v108, v109);
              v110 = OUTLINED_FUNCTION_16_20();
              if (lpta_loadp_setscan_r(v110, v111))
              {
LABEL_51:
                v112 = OUTLINED_FUNCTION_32_10();
                starttest(v112, v113);
                v114 = OUTLINED_FUNCTION_16_20();
                if (lpta_loadp_setscan_r(v114, v115))
                {
LABEL_52:
                  v116 = OUTLINED_FUNCTION_43_4();
                  starttest(v116, v117);
                  v118 = OUTLINED_FUNCTION_16_20();
                  if (lpta_loadp_setscan_r(v118, v119))
                  {
LABEL_53:
                    v32 = 2500;
                    v33 = 1500;
                  }

                  else
                  {
                    v140 = OUTLINED_FUNCTION_42_4();
                    bspush_ca_scan(v140, v141);
                    v81 = OUTLINED_FUNCTION_13_23();
                    v84 = 30;
LABEL_39:
                    v85 = testFldeq(v81, v82, v83, v84);
                    v54 = v27;
                    if (v85)
                    {
                      goto LABEL_32;
                    }

LABEL_40:
                    v27 = v54;
                    if (advance_tok(a1))
                    {
LABEL_32:
                      v78 = *(a1 + 104);
                      if (v78)
                      {
                        v79 = OUTLINED_FUNCTION_49_3(v78);
                      }

                      else
                      {
                        v79 = vback(a1, v27);
                        v27 = 0;
                      }

                      v54 = v27;
                      v35 = v27;
                      switch(v79)
                      {
                        case 1:
                          goto LABEL_6;
                        case 2:
                          v26 = v27;
                          continue;
                        case 3:
                          goto LABEL_47;
                        case 4:
                        case 13:
                          goto LABEL_9;
                        case 5:
                          goto LABEL_48;
                        case 6:
                          goto LABEL_49;
                        case 7:
                          goto LABEL_50;
                        case 8:
                          goto LABEL_51;
                        case 9:
                          goto LABEL_52;
                        case 10:
                          goto LABEL_53;
                        case 11:
                          v81 = OUTLINED_FUNCTION_13_23();
                          v84 = 37;
                          goto LABEL_39;
                        case 12:
                          goto LABEL_40;
                        case 14:
                          goto LABEL_7;
                        case 15:
                          bspop_boa(a1);
                          v80 = advance_tok(a1);
                          v35 = v27;
                          if (!v80)
                          {
                            goto LABEL_9;
                          }

                          goto LABEL_32;
                        case 16:
                          goto LABEL_10;
                        case 17:
                          goto LABEL_14;
                        case 18:
                          goto LABEL_11;
                        case 19:
                          goto LABEL_42;
                        case 20:
                          goto LABEL_15;
                        case 21:
                          goto LABEL_26;
                        case 22:
                          goto LABEL_27;
                        default:
                          goto LABEL_3;
                      }
                    }

                    v32 = 2300;
                    v33 = 1100;
                  }
                }

                else
                {
                  v137 = OUTLINED_FUNCTION_13_23();
                  if (testFldeq(v137, v138, v139, 38) || advance_tok(a1))
                  {
                    goto LABEL_32;
                  }

                  v32 = 2800;
                  v33 = 850;
                }
              }

              else
              {
                v133 = OUTLINED_FUNCTION_8_24();
                if (testFldeq(v133, v134, v135, v136) || advance_tok(a1))
                {
                  goto LABEL_32;
                }

                v32 = 2500;
                v33 = 900;
              }
            }

            else
            {
              v130 = OUTLINED_FUNCTION_13_23();
              if (testFldeq(v130, v131, v132, 34) || advance_tok(a1))
              {
                goto LABEL_32;
              }

              v32 = 2400;
              v33 = 1000;
            }
          }

          else
          {
            v127 = OUTLINED_FUNCTION_13_23();
            if (testFldeq(v127, v128, v129, 39) || advance_tok(a1))
            {
              goto LABEL_32;
            }

            v32 = 2400;
            v33 = 1400;
          }
        }

        else
        {
          v124 = OUTLINED_FUNCTION_13_23();
          if (testFldeq(v124, v125, v126, 32) || advance_tok(a1))
          {
            goto LABEL_32;
          }

          v32 = 2350;
          v33 = 1250;
        }
      }

      else
      {
        v120 = OUTLINED_FUNCTION_3_25();
        if (testFldeq(v120, v121, v122, v123) || advance_tok(a1))
        {
          goto LABEL_32;
        }

        v32 = 2450;
        v33 = 1750;
      }

      break;
    }

    v34 = 4586;
  }

  *(a1 + v34) = v33;
  *(a1 + 4594) = v32;
  v35 = v27;
LABEL_9:
  v27 = v35;
  *(a1 + 4386) = 100;
  *(a1 + 4430) = 40;
  *(a1 + 4422) = 60;
  v36 = OUTLINED_FUNCTION_46_4();
  starttest(v36, v37);
  v38 = OUTLINED_FUNCTION_15_21();
  if (lpta_loadp_setscan_l(v38, v39))
  {
LABEL_10:
    v40 = OUTLINED_FUNCTION_54_3();
    starttest(v40, v41);
    v42 = OUTLINED_FUNCTION_15_21();
    if (lpta_loadp_setscan_l(v42, v43))
    {
LABEL_11:
      v44 = 5;
    }

    else
    {
LABEL_42:
      v86 = OUTLINED_FUNCTION_53_3();
      if (test_synch(v86, v87, 1u, v88))
      {
        goto LABEL_32;
      }

      v44 = 10;
    }

    v45 = 50;
  }

  else
  {
    v65 = OUTLINED_FUNCTION_20_16();
    if (testFldeq(v65, v66, 2, v67) || advance_tok(a1))
    {
      goto LABEL_32;
    }

    v44 = 30;
    v45 = 60;
  }

  *(a1 + 4402) = v45;
  *(a1 + 4394) = v44;
LABEL_14:
  v46 = OUTLINED_FUNCTION_60_3();
  starttest(v46, v47);
  v48 = OUTLINED_FUNCTION_16_20();
  if (!lpta_loadp_setscan_r(v48, v49))
  {
    v68 = OUTLINED_FUNCTION_13_23();
    if (!testFldeq(v68, v69, v70, 33) && !advance_tok(a1))
    {
      v64 = 40;
      goto LABEL_25;
    }

    goto LABEL_32;
  }

LABEL_15:
  v50 = OUTLINED_FUNCTION_57_3();
  starttest(v50, v51);
  v52 = OUTLINED_FUNCTION_16_20();
  if (lpta_loadp_setscan_r(v52, v53))
  {
    goto LABEL_26;
  }

  v60 = OUTLINED_FUNCTION_3_25();
  if (testFldeq(v60, v61, v62, v63) || advance_tok(a1))
  {
    goto LABEL_32;
  }

  v64 = 60;
LABEL_25:
  *(a1 + 4426) = v64;
LABEL_26:
  add_TL_to_trill(a1, v54, v35, v55, v56, v57, v58, v59);
LABEL_27:
  vretproc(a1);
  result = 0;
LABEL_4:
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t por_ph_f(_WORD *a1)
{
  OUTLINED_FUNCTION_36_8(*MEMORY[0x277D85DE8], v23);
  OUTLINED_FUNCTION_31_11(v3, v4, v5, v6, v7, v8, v9, v10, v24, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_10_24(v11, v12, v13, v14, v15, v16, v17, v18, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, *v71, v71[4], *v73, *&v73[4], v73[6], v75, SWORD2(v75), SBYTE6(v75), SHIBYTE(v75), v77, v79))
  {
    v19 = 94;
  }

  else
  {
    OUTLINED_FUNCTION_24_16();
    a1[2291] = v22;
    a1[2201] = 60;
    a1[2219] = 60;
    por_labial_Fv(a1);
    v19 = 0;
  }

  vretproc(a1);
  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

uint64_t por_ph_v(_WORD *a1)
{
  OUTLINED_FUNCTION_36_8(*MEMORY[0x277D85DE8], v21);
  OUTLINED_FUNCTION_31_11(v3, v4, v5, v6, v7, v8, v9, v10, v22, v24, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_10_24(v11, v12, v13, v14, v15, v16, v17, v18, v23, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, *v69, v69[4], *v71, *&v71[4], v71[6], v73, SWORD2(v73), SBYTE6(v73), SHIBYTE(v73), v75, v77))
  {
    vretproc(a1);
    result = 94;
  }

  else
  {
    fence_24(a1);
    OUTLINED_FUNCTION_87_2(250);
    a1[2201] = 55;
    a1[2219] = 60;
    a1[2197] = 35;
    if (!OUTLINED_FUNCTION_50_3())
    {
      OUTLINED_FUNCTION_59_3();
      if (!test_string_s())
      {
        a1[2185] = 1;
      }
    }

    por_labial_Fv(a1);
    vretproc(a1);
    result = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t por_ph_s(_WORD *a1)
{
  OUTLINED_FUNCTION_36_8(*MEMORY[0x277D85DE8], v50);
  OUTLINED_FUNCTION_31_11(v3, v4, v5, v6, v7, v8, v9, v10, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_10_24(v11, v12, v13, v14, v15, v16, v17, v18, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, *v98, v98[4], *v100, *&v100[4], v100[6], v102, SWORD2(v102), SBYTE6(v102), SHIBYTE(v102), v104, v106))
  {
    vretproc(a1);
    result = 94;
  }

  else
  {
    OUTLINED_FUNCTION_24_16();
    a1[2291] = v21;
    a1[2201] = 60;
    a1[2217] = 50;
    a1[2213] = 20;
    a1[2211] = 10;
    por_dental_Fv(a1, v22, v23, v24, v25, v26, v27, v28);
    v29 = OUTLINED_FUNCTION_27_13(3);
    if (!if_testeq_v_i(v29, v30, 11025, v31, v32, v33, v34, v35))
    {
      v36 = OUTLINED_FUNCTION_27_13(4);
      if (!if_testeq_v_i(v36, v37, 1, v38, v39, v40, v41, v42))
      {
        v43 = OUTLINED_FUNCTION_27_13(5);
        if (!if_testgt_v_i(v43, v44, 30, v45, v46, v47, v48, v49))
        {
          a1[2213] = a1[2215];
          a1[2215] = 65;
        }
      }
    }

    modulate_noise(a1);
    vretproc(a1);
    result = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t por_ph_z(_WORD *a1)
{
  OUTLINED_FUNCTION_36_8(*MEMORY[0x277D85DE8], v49);
  OUTLINED_FUNCTION_31_11(v3, v4, v5, v6, v7, v8, v9, v10, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_10_24(v11, v12, v13, v14, v15, v16, v17, v18, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, *v97, v97[4], *v99, *&v99[4], v99[6], v101, SWORD2(v101), SBYTE6(v101), SHIBYTE(v101), v103, v105))
  {
    vretproc(a1);
    result = 94;
  }

  else
  {
    fence_24(a1);
    OUTLINED_FUNCTION_87_2(250);
    a1[2201] = 55;
    a1[2197] = 35;
    a1[2217] = 40;
    a1[2213] = 15;
    a1[2211] = 10;
    if (!OUTLINED_FUNCTION_50_3())
    {
      OUTLINED_FUNCTION_59_3();
      if (!test_string_s())
      {
        a1[2185] = 1;
      }
    }

    por_dental_Fv(a1, v21, v22, v23, v24, v25, v26, v27);
    v28 = OUTLINED_FUNCTION_27_13(3);
    if (!if_testeq_v_i(v28, v29, 11025, v30, v31, v32, v33, v34))
    {
      v35 = OUTLINED_FUNCTION_27_13(4);
      if (!if_testeq_v_i(v35, v36, 1, v37, v38, v39, v40, v41))
      {
        v42 = OUTLINED_FUNCTION_27_13(5);
        if (!if_testgt_v_i(v42, v43, 30, v44, v45, v46, v47, v48))
        {
          a1[2213] = a1[2215];
          a1[2215] = 55;
        }
      }
    }

    vretproc(a1);
    result = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t por_ph_S(_WORD *a1)
{
  OUTLINED_FUNCTION_36_8(*MEMORY[0x277D85DE8], v42);
  OUTLINED_FUNCTION_31_11(v3, v4, v5, v6, v7, v8, v9, v10, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_10_24(v11, v12, v13, v14, v15, v16, v17, v18, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, *v90, v90[4], *v92, *&v92[4], v92[6], v94, SWORD2(v94), SBYTE6(v94), SHIBYTE(v94), v96, v98))
  {
    vretproc(a1);
    result = 94;
  }

  else
  {
    OUTLINED_FUNCTION_24_16();
    a1[2201] = 60;
    a1[2213] = 62;
    a1[2215] = 59;
    por_pal_Fv(a1);
    v21 = OUTLINED_FUNCTION_27_13(3);
    if (!if_testeq_v_i(v21, v22, 11025, v23, v24, v25, v26, v27))
    {
      v28 = OUTLINED_FUNCTION_27_13(4);
      if (!if_testeq_v_i(v28, v29, 1, v30, v31, v32, v33, v34))
      {
        v35 = OUTLINED_FUNCTION_27_13(5);
        if (!if_testgt_v_i(v35, v36, 30, v37, v38, v39, v40, v41))
        {
          a1[2211] = a1[2213];
        }
      }
    }

    modulate_noise(a1);
    vretproc(a1);
    result = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t por_ph_Z(uint64_t a1)
{
  OUTLINED_FUNCTION_36_8(*MEMORY[0x277D85DE8], v68);
  OUTLINED_FUNCTION_31_11(v3, v4, v5, v6, v7, v8, v9, v10, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_10_24(v11, v12, v13, v14, v15, v16, v17, v18, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, *v116, v116[4], *v118, *&v118[4], v118[6], v120, SWORD2(v120), SBYTE6(v120), SHIBYTE(v120), v122, v124))
  {
LABEL_3:
    vretproc(a1);
    result = 94;
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_24_16();
  v21 = OUTLINED_FUNCTION_22_16();
  starttest_l(v21, v22);
  v23 = OUTLINED_FUNCTION_16_20();
  if (!lpta_loadp_setscan_r(v23, v24))
  {
    v39 = OUTLINED_FUNCTION_1_26();
    if (testFldeq(v39, v40, v41, v42) || advance_tok(a1))
    {
LABEL_9:
      while (2)
      {
        v34 = *(a1 + 104);
        if (v34)
        {
          v35 = OUTLINED_FUNCTION_74_3(v34);
        }

        else
        {
          v36 = OUTLINED_FUNCTION_84_2();
          v35 = vback(v36, v37);
        }

        v38 = 50;
        switch(v35)
        {
          case 1:
            goto LABEL_6;
          case 2:
            goto LABEL_18;
          case 3:
            OUTLINED_FUNCTION_17_19();
            if (!test_string_s())
            {
              goto LABEL_14;
            }

            continue;
          case 4:
            goto LABEL_8;
          case 5:
            goto LABEL_19;
          case 6:
            goto LABEL_20;
          case 7:
            goto LABEL_22;
          case 8:
            goto LABEL_24;
          case 9:
            goto LABEL_27;
          case 10:
            goto LABEL_28;
          case 11:
            goto LABEL_32;
          case 12:
            goto LABEL_33;
          default:
            goto LABEL_3;
        }
      }
    }

    *(a1 + 4578) = 250;
  }

LABEL_6:
  OUTLINED_FUNCTION_91_1(1750);
  OUTLINED_FUNCTION_89_2(2900);
  OUTLINED_FUNCTION_97_1(3500);
  *(a1 + 4610) = 4300;
  v25 = OUTLINED_FUNCTION_28_12();
  starttest(v25, v26);
  v27 = OUTLINED_FUNCTION_15_21();
  if (lpta_loadp_setscan_l(v27, v28))
  {
LABEL_18:
    v38 = 60;
  }

  else
  {
    v29 = OUTLINED_FUNCTION_37_8();
    bspush_ca_scan(v29, v30);
LABEL_8:
    v31 = OUTLINED_FUNCTION_60_3();
    if (test_synch(v31, v32, 1u, v33))
    {
      goto LABEL_9;
    }

LABEL_14:
    v38 = 50;
  }

LABEL_19:
  *(a1 + 4402) = v38;
LABEL_20:
  *(a1 + 4426) = 65;
  *(a1 + 4430) = 60;
  v43 = OUTLINED_FUNCTION_15_21();
  if (lpta_loadp_setscan_l(v43, v44) || (OUTLINED_FUNCTION_17_19(), test_string_s()))
  {
LABEL_22:
    v45 = 30;
    v46 = 4394;
  }

  else
  {
    *(a1 + 4394) = 40;
    v45 = 50;
    v46 = 4402;
  }

  *(a1 + v46) = v45;
LABEL_24:
  if (!OUTLINED_FUNCTION_50_3())
  {
    OUTLINED_FUNCTION_59_3();
    if (!test_string_s())
    {
      *(a1 + 4370) = 1;
    }
  }

LABEL_27:
  por_pal_Fv(a1);
LABEL_28:
  v47 = OUTLINED_FUNCTION_27_13(3);
  if (!if_testeq_v_i(v47, v48, 11025, v49, v50, v51, v52, v53))
  {
    v54 = OUTLINED_FUNCTION_27_13(4);
    if (!if_testeq_v_i(v54, v55, 1, v56, v57, v58, v59, v60))
    {
      v61 = OUTLINED_FUNCTION_27_13(5);
      if (!if_testgt_v_i(v61, v62, 30, v63, v64, v65, v66, v67))
      {
        *(a1 + 4422) = *(a1 + 4426);
      }
    }
  }

LABEL_32:
  modulate_noise(a1);
LABEL_33:
  vretproc(a1);
  result = 0;
LABEL_4:
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t por_ph_n(uint64_t a1)
{
  v179 = *MEMORY[0x277D85DE8];
  v174[0] = 0;
  v174[1] = 0;
  v173 = 0;
  OUTLINED_FUNCTION_70_3();
  bzero(v172, v2);
  OUTLINED_FUNCTION_69_3();
  bzero(v178, v3);
  if (setjmp(v178) || ventproc(a1, v172, v177, v176, v175, v178))
  {
LABEL_3:
    vretproc(a1);
    result = 94;
    goto LABEL_4;
  }

  v6 = OUTLINED_FUNCTION_65_3();
  push_ptr_init(v6, v7);
  v173 = 0xFFFC0000FFFCLL;
  OUTLINED_FUNCTION_24_16();
  por_dental_Fv(a1, v8, v9, v10, v11, v12, v13, v14);
  v15 = 0;
LABEL_6:
  *(a1 + 4602) = 3800;
  *(a1 + 4606) = 3800;
  starttest(a1, 2);
  v16 = OUTLINED_FUNCTION_63_3();
  v18 = lpta_loadp_setscan_l(v16, v17);
  v19 = v15;
  if (!v18)
  {
LABEL_15:
    v15 = v19;
    savescptr(a1, 3, v174);
    v34 = OUTLINED_FUNCTION_44_4();
    if (!testFldeq(v34, v35, v36, 0) && !advance_tok(a1))
    {
      v37 = OUTLINED_FUNCTION_65_3();
      if (!lpta_loadp_setscan_r(v37, v38) && !advance_tok(a1))
      {
        v39 = OUTLINED_FUNCTION_77_3();
        if (!testFldeq(v39, v40, 0, 40) && !advance_tok(a1))
        {
          v41 = 42;
          goto LABEL_114;
        }
      }
    }

    goto LABEL_112;
  }

LABEL_7:
  v20 = v15;
  v21 = OUTLINED_FUNCTION_29_12();
  starttest(v21, v22);
  v23 = OUTLINED_FUNCTION_63_3();
  if (lpta_loadp_setscan_l(v23, v24))
  {
LABEL_82:
    v134 = OUTLINED_FUNCTION_25_15();
    starttest(v134, v135);
    OUTLINED_FUNCTION_100_0();
    if (!v136)
    {
      v137 = OUTLINED_FUNCTION_63_3();
      v139 = lpta_loadp_setscan_l(v137, v138);
      v140 = v20;
      if (!v139)
      {
LABEL_106:
        v15 = v140;
        savescptr(a1, 9, v174);
        v161 = OUTLINED_FUNCTION_44_4();
        if (!testFldeq(v161, v162, v163, v164) && !advance_tok(a1))
        {
          v165 = OUTLINED_FUNCTION_65_3();
          if (!lpta_loadp_setscan_r(v165, v166) && !advance_tok(a1))
          {
            v167 = OUTLINED_FUNCTION_44_4();
            if (!testFldeq(v167, v168, v169, v170) && !advance_tok(a1))
            {
              v41 = 47;
              goto LABEL_114;
            }
          }
        }

        goto LABEL_112;
      }
    }

LABEL_84:
    starttest(a1, 10);
    v141 = OUTLINED_FUNCTION_64_3();
    v15 = v20;
    if (lpta_loadp_setscan_l(v141, v142))
    {
LABEL_85:
      starttest(a1, 14);
      v143 = OUTLINED_FUNCTION_64_3();
      v15 = v20;
      if (lpta_loadp_setscan_l(v143, v144))
      {
LABEL_86:
        *(a1 + 4394) = 48;
        v15 = v20;
        goto LABEL_22;
      }

LABEL_93:
      savescptr(a1, 15, v174);
      if (advance_tok(a1))
      {
        goto LABEL_112;
      }

      bspush_ca_scan(a1, 16);
      v107 = v15;
LABEL_95:
      v15 = v107;
      v151 = OUTLINED_FUNCTION_44_4();
      if (testFldeq(v151, v152, v153, v154))
      {
        goto LABEL_112;
      }

      if (advance_tok(a1))
      {
        goto LABEL_112;
      }

      v155 = OUTLINED_FUNCTION_65_3();
      if (lpta_loadp_setscan_r(v155, v156))
      {
        goto LABEL_112;
      }

      bspush_ca_scan(a1, 18);
      v108 = v15;
LABEL_99:
      v15 = v108;
    }

    else
    {
LABEL_87:
      savescptr(a1, 11, v174);
      if (advance_tok(a1))
      {
        goto LABEL_112;
      }

      v145 = OUTLINED_FUNCTION_44_4();
      if (testFldeq(v145, v146, v147, v148))
      {
        goto LABEL_112;
      }

      if (advance_tok(a1))
      {
        goto LABEL_112;
      }

      v149 = OUTLINED_FUNCTION_65_3();
      if (lpta_loadp_setscan_r(v149, v150))
      {
        goto LABEL_112;
      }

      bspush_ca_scan(a1, 12);
      v106 = v15;
LABEL_92:
      v15 = v106;
    }

    v157 = OUTLINED_FUNCTION_44_4();
    if (testFldeq(v157, v158, v159, v160) || advance_tok(a1))
    {
      goto LABEL_112;
    }

    *(a1 + 4514) = 1;
    goto LABEL_22;
  }

LABEL_8:
  savescptr(a1, 6, v174);
  v25 = OUTLINED_FUNCTION_44_4();
  if (testFldeq(v25, v26, v27, v28))
  {
    goto LABEL_112;
  }

  if (advance_tok(a1))
  {
    goto LABEL_112;
  }

  v29 = OUTLINED_FUNCTION_65_3();
  if (lpta_loadp_setscan_r(v29, v30) || advance_tok(a1))
  {
    goto LABEL_112;
  }

  bspush_ca_scan_boa();
  v31 = OUTLINED_FUNCTION_68_3();
  if (testFldeq(v31, 4u, 2, v32))
  {
    v33 = v15;
  }

  else
  {
    v33 = 1;
  }

  do
  {
    while (1)
    {
      do
      {
        while (2)
        {
          v103 = *(a1 + 104);
          if (v103)
          {
            v104 = OUTLINED_FUNCTION_74_3(v103);
            v15 = v105;
          }

          else
          {
            v104 = vback(a1, v33);
            v15 = 0;
          }

          v106 = v15;
          v107 = v15;
          v108 = v15;
          v56 = v15;
          switch(v104)
          {
            case 1:
              goto LABEL_6;
            case 2:
              goto LABEL_7;
            case 3:
              v19 = v15;
              goto LABEL_15;
            case 4:
              goto LABEL_22;
            case 5:
              v20 = v15;
              goto LABEL_82;
            case 6:
              goto LABEL_8;
            case 7:
              bspop_boa(a1);
              v109 = advance_tok(a1);
              v33 = v15;
              if (v109)
              {
                continue;
              }

              v41 = 45;
              break;
            case 8:
              v20 = v15;
              goto LABEL_84;
            case 9:
              v140 = v15;
              goto LABEL_106;
            case 10:
              v20 = v15;
              goto LABEL_85;
            case 11:
              goto LABEL_87;
            case 12:
              v110 = OUTLINED_FUNCTION_20_16();
              v113 = testFldeq(v110, v111, 2, v112);
              v33 = v15;
              if (!v113)
              {
                OUTLINED_FUNCTION_59_3();
                OUTLINED_FUNCTION_119_0();
                v118 = testFldeq(v114, v115, v116, v117);
                v33 = v15;
                if (!v118)
                {
                  v119 = advance_tok(a1);
                  v106 = v15;
                  v33 = v15;
                  if (!v119)
                  {
                    goto LABEL_92;
                  }
                }
              }

              continue;
            case 13:
              goto LABEL_92;
            case 14:
              v20 = v15;
              goto LABEL_86;
            case 15:
              goto LABEL_93;
            case 16:
              v120 = OUTLINED_FUNCTION_13_23();
              v123 = testFldeq(v120, v121, v122, 16);
              v33 = v15;
              if (!v123)
              {
                v124 = advance_tok(a1);
                v107 = v15;
                v33 = v15;
                if (!v124)
                {
                  goto LABEL_95;
                }
              }

              continue;
            case 17:
              goto LABEL_95;
            case 18:
              v125 = OUTLINED_FUNCTION_13_23();
              v128 = testFldeq(v125, v126, v127, 16);
              v33 = v15;
              if (!v128)
              {
                v129 = advance_tok(a1);
                v108 = v15;
                v33 = v15;
                if (!v129)
                {
                  goto LABEL_99;
                }
              }

              continue;
            case 19:
              goto LABEL_99;
            case 20:
              goto LABEL_29;
            case 21:
              v130 = OUTLINED_FUNCTION_13_23();
              v133 = testFldeq(v130, v131, v132, 40);
              v56 = v15;
              v33 = v15;
              if (!v133)
              {
                goto LABEL_27;
              }

              continue;
            case 22:
              goto LABEL_27;
            case 23:
              goto LABEL_41;
            case 24:
              goto LABEL_31;
            case 25:
              goto LABEL_38;
            case 26:
              goto LABEL_42;
            case 27:
              v83 = v15;
              goto LABEL_48;
            case 28:
              v87 = v15;
              goto LABEL_43;
            case 29:
              goto LABEL_54;
            case 30:
            case 31:
            case 32:
              goto LABEL_116;
            case 33:
              goto LABEL_119;
            default:
              goto LABEL_3;
          }

          break;
        }

LABEL_114:
        *(a1 + 4394) = v41;
LABEL_22:
        starttest(a1, 20);
        v42 = OUTLINED_FUNCTION_63_3();
        if (lpta_loadp_setscan_r(v42, v43))
        {
          goto LABEL_29;
        }

        v44 = OUTLINED_FUNCTION_77_3();
        if (npush_fld(v44, v45, 8))
        {
          goto LABEL_112;
        }

        npush_i(a1);
        if (if_testeq(a1, v46, v47, v48, v49, v50, v51, v52) || advance_tok(a1))
        {
          goto LABEL_112;
        }

        bspush_ca_scan(a1, 21);
        v53 = OUTLINED_FUNCTION_77_3();
        v55 = testFldeq(v53, v54, 1, 1);
        v33 = v15;
        v56 = v15;
      }

      while (v55);
LABEL_27:
      v15 = v56;
      if (advance_tok(a1))
      {
        goto LABEL_112;
      }

      *(a1 + 4394) -= 2;
LABEL_29:
      *(a1 + 4414) = *(a1 + 4410) + 150;
      OUTLINED_FUNCTION_98_1(3 * *(a1 + 4286));
      OUTLINED_FUNCTION_101_0(6 * v57);
      *(a1 + 4382) = v58;
      *(a1 + 4722) = 4;
      if (if_testeq_v_i(a1, (a1 + 4720), 1, v59, v60, v61, v62, v63))
      {
        goto LABEL_41;
      }

      *(a1 + 4722) = 5;
      if (!if_testgt_v_i(a1, (a1 + 4720), 30, v64, v65, v66, v67, v68))
      {
        v75 = *(a1 + 4410);
LABEL_37:
        *(a1 + 4414) = v75;
        goto LABEL_38;
      }

LABEL_31:
      starttest(a1, 25);
      v69 = OUTLINED_FUNCTION_63_3();
      if (!lpta_loadp_setscan_l(v69, v70))
      {
        v71 = OUTLINED_FUNCTION_77_3();
        if (testFldeq(v71, v72, 6, 1))
        {
          goto LABEL_112;
        }

        v73 = OUTLINED_FUNCTION_77_3();
        if (testFldeq(v73, v74, 5, 5) || advance_tok(a1))
        {
          goto LABEL_112;
        }

        OUTLINED_FUNCTION_115_0();
        goto LABEL_37;
      }

LABEL_38:
      OUTLINED_FUNCTION_118_0();
      if (v78 == v79)
      {
        *(a1 + 4406) = v77;
      }

      v15 = v76;
LABEL_41:
      starttest(a1, 26);
      v80 = OUTLINED_FUNCTION_63_3();
      v82 = lpta_loadp_setscan_l(v80, v81);
      v83 = v15;
      if (!v82)
      {
LABEL_48:
        v15 = v83;
        savescptr(a1, 27, v174);
        v91 = OUTLINED_FUNCTION_44_4();
        if (testFldeq(v91, v92, v93, 0))
        {
          goto LABEL_112;
        }

        if (advance_tok(a1))
        {
          goto LABEL_112;
        }

        v94 = OUTLINED_FUNCTION_65_3();
        if (lpta_loadp_setscan_r(v94, v95))
        {
          goto LABEL_112;
        }

        if (advance_tok(a1))
        {
          goto LABEL_112;
        }

        OUTLINED_FUNCTION_77_3();
        if (test_string_s())
        {
          goto LABEL_112;
        }

        modulate_nas_AV(a1);
      }

LABEL_42:
      starttest(a1, 28);
      v84 = OUTLINED_FUNCTION_63_3();
      v86 = lpta_loadp_setscan_l(v84, v85);
      v87 = v15;
      if (v86)
      {
        break;
      }

LABEL_54:
      savescptr(a1, 29, v174);
      v96 = OUTLINED_FUNCTION_44_4();
      if (!testFldeq(v96, v97, v98, 0) && !advance_tok(a1))
      {
        v99 = OUTLINED_FUNCTION_65_3();
        if (!lpta_loadp_setscan_r(v99, v100) && !advance_tok(a1))
        {
          OUTLINED_FUNCTION_77_3();
          if (!test_string_s())
          {
            v101 = OUTLINED_FUNCTION_60_3();
            starttest_e(v101, v102);
            c_assvar(a1, &v173 + 2);
            HIWORD(v173) = *(a1 + 4394) - 2;
            c_assvar(a1, &v173);
            WORD1(v173) = *(a1 + 4394) - 4;
            v88 = a1;
            v89 = &v173 + 2;
            goto LABEL_46;
          }
        }
      }

LABEL_112:
      v33 = v15;
    }

LABEL_43:
    v15 = v87;
    if (lpta_loadp_setscan_r(a1, a1 + 1624))
    {
      break;
    }

    OUTLINED_FUNCTION_77_3();
    if (test_string_s())
    {
      break;
    }

    starttest_e(a1, 32);
    move_i(a1, &v173, 45);
    move_i(a1, &v173 + 4, 45);
    v88 = a1;
    v89 = &v173;
LABEL_46:
    v90 = final_voiced_release(v88, v89);
    v33 = v15;
  }

  while (v90);
LABEL_116:
  OUTLINED_FUNCTION_96_1();
  if (v78 == v79)
  {
    OUTLINED_FUNCTION_105_0();
    if (v78 == v79)
    {
      OUTLINED_FUNCTION_21_16(v171);
    }
  }

LABEL_119:
  vretproc(a1);
  result = 0;
LABEL_4:
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t por_ph_m(uint64_t a1)
{
  v288 = *MEMORY[0x277D85DE8];
  v275 = 0;
  v276 = 0;
  v274 = 0;
  OUTLINED_FUNCTION_70_3();
  bzero(&v251, v2);
  OUTLINED_FUNCTION_69_3();
  v3 = v287;
  bzero(v287, v4);
  v5 = setjmp(v287);
  if (v5 || OUTLINED_FUNCTION_104_0(v5, v6, v7, v8, v9, v10, v11, v12, v249, v251, v252, v253, v254, v255, v256, v257, v258, v259, v260, v261, v262, v263, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287[0]))
  {
LABEL_3:
    vretproc(a1);
    result = 94;
    goto LABEL_4;
  }

  push_ptr_init(a1, &v275);
  v274 = 0xFFFC0000FFFCLL;
  fence_24(a1);
  v15 = OUTLINED_FUNCTION_22_16();
  starttest(v15, v16);
  v17 = OUTLINED_FUNCTION_16_20();
  if (!lpta_loadp_setscan_r(v17, v18))
  {
    v20 = OUTLINED_FUNCTION_1_26();
    if (testFldeq(v20, v21, v22, v23))
    {
      v24 = 0;
    }

    else
    {
      v25 = advance_tok(a1);
      v24 = 0;
      if (!v25)
      {
        v19 = 200;
        v3 = 0;
        goto LABEL_31;
      }
    }

LABEL_11:
    while (2)
    {
      v26 = *(a1 + 104);
      if (v26)
      {
        v27 = OUTLINED_FUNCTION_49_3(v26);
      }

      else
      {
        v27 = vback(a1, v24);
        v3 = 0;
      }

      v28 = v27 - 1;
      v29 = 49;
      v30 = v3;
      v31 = v3;
      v32 = 4394;
      v33 = v3;
      switch(v28)
      {
        case 0:
          v19 = 250;
          goto LABEL_31;
        case 1:
          goto LABEL_32;
        case 2:
          goto LABEL_33;
        case 3:
          goto LABEL_35;
        case 4:
          goto LABEL_44;
        case 5:
          goto LABEL_37;
        case 6:
          v73 = v3;
          goto LABEL_45;
        case 7:
          goto LABEL_58;
        case 8:
          goto LABEL_67;
        case 9:
          v52 = v3;
          goto LABEL_46;
        case 10:
          goto LABEL_61;
        case 11:
          goto LABEL_48;
        case 12:
          v86 = v3;
          goto LABEL_118;
        case 13:
          v92 = v3;
          goto LABEL_49;
        case 14:
          goto LABEL_81;
        case 15:
          v34 = OUTLINED_FUNCTION_13_23();
          v37 = testFldeq(v34, v35, v36, 15);
          v24 = v3;
          if (!v37)
          {
            advance_tok(a1);
            OUTLINED_FUNCTION_90_2();
            if (!v38)
            {
              goto LABEL_83;
            }
          }

          continue;
        case 16:
          goto LABEL_83;
        case 17:
          v40 = OUTLINED_FUNCTION_13_23();
          v43 = testFldeq(v40, v41, v42, 15);
          v24 = v3;
          if (!v43)
          {
            advance_tok(a1);
            OUTLINED_FUNCTION_94_1();
            if (!v44)
            {
              goto LABEL_87;
            }
          }

          continue;
        case 18:
          goto LABEL_87;
        case 19:
          v51 = v3;
          goto LABEL_50;
        case 20:
          goto LABEL_108;
        case 21:
          bspop_boa(a1);
          OUTLINED_FUNCTION_60_3();
          bspush_ca_scan_boa();
          v46 = OUTLINED_FUNCTION_13_23();
          testFldeq(v46, v47, v48, 40);
          OUTLINED_FUNCTION_113_0();
          continue;
        case 22:
          bspop_boa(a1);
          v39 = advance_tok(a1);
          v24 = v3;
          if (!v39)
          {
            goto LABEL_60;
          }

          continue;
        case 23:
          goto LABEL_66;
        case 24:
          goto LABEL_51;
        case 25:
          goto LABEL_68;
        case 26:
          v49 = v3;
          goto LABEL_75;
        case 27:
          goto LABEL_94;
        case 28:
          goto LABEL_70;
        case 29:
          goto LABEL_92;
        case 30:
          goto LABEL_95;
        case 31:
          v50 = v3;
          goto LABEL_102;
        case 32:
          goto LABEL_96;
        case 33:
          v185 = v3;
          goto LABEL_127;
        case 34:
        case 35:
        case 36:
          goto LABEL_98;
        case 37:
          goto LABEL_136;
        case 38:
          bspop_boa(a1);
          v45 = advance_tok(a1);
          v24 = v3;
          if (v45)
          {
            continue;
          }

          OUTLINED_FUNCTION_106_0();
          if (v238 == v239 && *(a1 + 4590) >= 1)
          {
            OUTLINED_FUNCTION_38_7(v240);
            OUTLINED_FUNCTION_102_0(v241);
          }

          break;
        case 39:
          goto LABEL_139;
        default:
          goto LABEL_3;
      }

      goto LABEL_136;
    }
  }

  v19 = 250;
  v3 = 0;
LABEL_31:
  *(a1 + 4578) = v19;
LABEL_32:
  por_labial_Fv(a1);
LABEL_33:
  v53 = OUTLINED_FUNCTION_16_20();
  if (!lpta_loadp_setscan_r(v53, v54))
  {
    OUTLINED_FUNCTION_17_19();
    if (!test_string_s())
    {
      v63 = 3300;
      *(a1 + 4578) = 175;
      v60 = 2600;
      *(a1 + 4582) = 175;
      v64 = 4606;
      v61 = 4602;
      v62 = 4598;
      v59 = 4594;
      v65 = 2600;
LABEL_42:
      v66 = v3;
LABEL_43:
      *(a1 + v59) = v60;
      *(a1 + v62) = v65;
      *(a1 + v61) = v63;
      *(a1 + v64) = v63;
      v3 = v66;
      goto LABEL_44;
    }
  }

LABEL_35:
  v55 = OUTLINED_FUNCTION_16_20();
  if (!lpta_loadp_setscan_r(v55, v56))
  {
    OUTLINED_FUNCTION_17_19();
    if (!test_string_s())
    {
      OUTLINED_FUNCTION_92_1();
      goto LABEL_42;
    }
  }

LABEL_37:
  v57 = OUTLINED_FUNCTION_16_20();
  if (!lpta_loadp_setscan_r(v57, v58))
  {
    OUTLINED_FUNCTION_17_19();
    test_string_s();
    OUTLINED_FUNCTION_92_1();
    v65 = v60;
    v66 = v3;
    if (!v67)
    {
      goto LABEL_43;
    }
  }

LABEL_44:
  v68 = OUTLINED_FUNCTION_39_6();
  starttest(v68, v69);
  v70 = OUTLINED_FUNCTION_15_21();
  v72 = lpta_loadp_setscan_r(v70, v71);
  v73 = v3;
  if (!v72)
  {
LABEL_58:
    v113 = OUTLINED_FUNCTION_25_15();
    if (test_synch(v113, v114, 1u, v115))
    {
      goto LABEL_124;
    }

    OUTLINED_FUNCTION_59_3();
    if (test_string_s())
    {
      goto LABEL_124;
    }

    goto LABEL_60;
  }

LABEL_45:
  v74 = v73;
  v75 = OUTLINED_FUNCTION_43_4();
  starttest(v75, v76);
  v77 = OUTLINED_FUNCTION_15_21();
  v79 = lpta_loadp_setscan_r(v77, v78);
  v3 = v74;
  v52 = v74;
  if (!v79)
  {
LABEL_61:
    v116 = OUTLINED_FUNCTION_42_4();
    if (test_synch(v116, v117, 1u, v118))
    {
      goto LABEL_124;
    }

    OUTLINED_FUNCTION_17_19();
    if (test_string_s())
    {
      goto LABEL_124;
    }

    goto LABEL_63;
  }

LABEL_46:
  v3 = v52;
  v80 = OUTLINED_FUNCTION_58_3();
  starttest(v80, v81);
  OUTLINED_FUNCTION_100_0();
  if (!v82)
  {
    v83 = OUTLINED_FUNCTION_15_21();
    v85 = lpta_loadp_setscan_l(v83, v84);
    v86 = v3;
    if (!v85)
    {
LABEL_118:
      v3 = v86;
      OUTLINED_FUNCTION_86_2(13, v250, v251, v252, v253, v254, v255, v256, v257, v258, v259, v260, v261, v262, v263, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275);
      v222 = OUTLINED_FUNCTION_5_24();
      if (testFldeq(v222, v223, v224, v225))
      {
        goto LABEL_124;
      }

      if (advance_tok(a1))
      {
        goto LABEL_124;
      }

      v226 = OUTLINED_FUNCTION_61_3();
      if (lpta_loadp_setscan_r(v226, v227))
      {
        goto LABEL_124;
      }

      if (advance_tok(a1))
      {
        goto LABEL_124;
      }

      v228 = OUTLINED_FUNCTION_5_24();
      if (testFldeq(v228, v229, v230, v231) || advance_tok(a1))
      {
        goto LABEL_124;
      }

      goto LABEL_63;
    }
  }

LABEL_48:
  v87 = OUTLINED_FUNCTION_34_9();
  starttest(v87, v88);
  v89 = OUTLINED_FUNCTION_16_20();
  v91 = lpta_loadp_setscan_l(v89, v90);
  v92 = v3;
  if (v91)
  {
LABEL_49:
    v93 = v92;
    v94 = OUTLINED_FUNCTION_60_3();
    starttest(v94, v95);
    v96 = OUTLINED_FUNCTION_15_21();
    v98 = lpta_loadp_setscan_l(v96, v97);
    v3 = v93;
    v51 = v93;
    if (!v98)
    {
LABEL_108:
      OUTLINED_FUNCTION_86_2(21, v250, v251, v252, v253, v254, v255, v256, v257, v258, v259, v260, v261, v262, v263, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275);
      v206 = OUTLINED_FUNCTION_5_24();
      if (!testFldeq(v206, v207, v208, v209) && !advance_tok(a1))
      {
        v210 = OUTLINED_FUNCTION_61_3();
        if (!lpta_loadp_setscan_r(v210, v211))
        {
          v212 = advance_tok(a1);
          v195 = v3;
          v24 = v3;
          if (v212)
          {
            goto LABEL_11;
          }

          goto LABEL_101;
        }
      }

LABEL_124:
      v24 = v3;
      goto LABEL_11;
    }

LABEL_50:
    v3 = v51;
    v99 = OUTLINED_FUNCTION_52_3();
    starttest(v99, v100);
    v101 = OUTLINED_FUNCTION_15_21();
    if (!lpta_loadp_setscan_l(v101, v102))
    {
LABEL_51:
      OUTLINED_FUNCTION_86_2(25, v250, v251, v252, v253, v254, v255, v256, v257, v258, v259, v260, v261, v262, v263, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275);
      v103 = OUTLINED_FUNCTION_5_24();
      if (testFldeq(v103, v104, v105, v106))
      {
        goto LABEL_124;
      }

      if (advance_tok(a1))
      {
        goto LABEL_124;
      }

      v107 = OUTLINED_FUNCTION_61_3();
      if (lpta_loadp_setscan_r(v107, v108))
      {
        goto LABEL_124;
      }

      if (advance_tok(a1))
      {
        goto LABEL_124;
      }

      OUTLINED_FUNCTION_59_3();
      OUTLINED_FUNCTION_119_0();
      if (testFldeq(v109, v110, v111, v112) || advance_tok(a1))
      {
        goto LABEL_124;
      }

LABEL_60:
      v29 = 47;
LABEL_64:
      v32 = 4394;
      goto LABEL_65;
    }

LABEL_63:
    v29 = 49;
    goto LABEL_64;
  }

LABEL_81:
  OUTLINED_FUNCTION_86_2(15, v250, v251, v252, v253, v254, v255, v256, v257, v258, v259, v260, v261, v262, v263, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275);
  if (advance_tok(a1))
  {
    goto LABEL_124;
  }

  v160 = OUTLINED_FUNCTION_46_4();
  bspush_ca_scan(v160, v161);
  v30 = v3;
LABEL_83:
  v3 = v30;
  v162 = OUTLINED_FUNCTION_5_24();
  if (testFldeq(v162, v163, v164, v165))
  {
    goto LABEL_124;
  }

  if (advance_tok(a1))
  {
    goto LABEL_124;
  }

  v166 = OUTLINED_FUNCTION_61_3();
  if (lpta_loadp_setscan_r(v166, v167))
  {
    goto LABEL_124;
  }

  v168 = OUTLINED_FUNCTION_54_3();
  bspush_ca_scan(v168, v169);
  v31 = v3;
LABEL_87:
  v3 = v31;
  v170 = OUTLINED_FUNCTION_5_24();
  if (testFldeq(v170, v171, v172, v173) || advance_tok(a1))
  {
    goto LABEL_124;
  }

  v29 = 1;
  v32 = 4514;
LABEL_65:
  v33 = v3;
LABEL_66:
  *(a1 + v32) = v29;
  v3 = v33;
LABEL_67:
  v119 = OUTLINED_FUNCTION_60_3();
  starttest(v119, v120);
  v121 = OUTLINED_FUNCTION_15_21();
  v123 = lpta_loadp_setscan_l(v121, v122);
  v49 = v3;
  if (!v123)
  {
LABEL_75:
    v3 = v49;
    OUTLINED_FUNCTION_86_2(27, v250, v251, v252, v253, v254, v255, v256, v257, v258, v259, v260, v261, v262, v263, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275);
    v155 = OUTLINED_FUNCTION_18_18();
    if (testFldeq(v155, v156, v157, 7))
    {
      goto LABEL_124;
    }

    if (advance_tok(a1))
    {
      goto LABEL_124;
    }

    v158 = OUTLINED_FUNCTION_61_3();
    if (lpta_loadp_setscan_r(v158, v159))
    {
      goto LABEL_124;
    }

    if (advance_tok(a1))
    {
      goto LABEL_124;
    }

    OUTLINED_FUNCTION_17_19();
    if (test_string_s())
    {
      goto LABEL_124;
    }

    *(a1 + 4394) -= 3;
  }

LABEL_68:
  v124 = (15 * *(a1 + 4286));
  *(a1 + 4414) = *(a1 + 4410) + 150;
  OUTLINED_FUNCTION_48_4(v124, 10.0);
  OUTLINED_FUNCTION_33_10(7 * v125, v126);
  *(a1 + 4382) = v127;
  v128 = OUTLINED_FUNCTION_88_2(4);
  if (!if_testeq_v_i(v128, v129, 1, v130, v131, v132, v133, v134))
  {
    v135 = OUTLINED_FUNCTION_88_2(5);
    if (if_testgt_v_i(v135, v136, 30, v137, v138, v139, v140, v141))
    {
LABEL_70:
      v142 = OUTLINED_FUNCTION_60_3();
      starttest(v142, v143);
      v144 = OUTLINED_FUNCTION_15_21();
      if (lpta_loadp_setscan_l(v144, v145))
      {
        goto LABEL_92;
      }

      v146 = OUTLINED_FUNCTION_3_25();
      if (testFldeq(v146, v147, v148, v149))
      {
        goto LABEL_124;
      }

      v150 = OUTLINED_FUNCTION_1_26();
      if (testFldeq(v150, v151, v152, v153) || advance_tok(a1))
      {
        goto LABEL_124;
      }

      OUTLINED_FUNCTION_115_0();
    }

    else
    {
      v154 = *(a1 + 4410);
    }

    *(a1 + 4414) = v154;
LABEL_92:
    v174 = *(a1 + 4562);
    v239 = __OFSUB__(v174, 5);
    v175 = v174 - 5;
    if (v175 < 0 == v239)
    {
      *(a1 + 4406) = v175;
    }
  }

LABEL_94:
  v176 = OUTLINED_FUNCTION_51_3();
  starttest(v176, v177);
  v178 = OUTLINED_FUNCTION_15_21();
  v180 = lpta_loadp_setscan_l(v178, v179);
  v50 = v3;
  if (!v180)
  {
LABEL_102:
    v3 = v50;
    OUTLINED_FUNCTION_86_2(32, v250, v251, v252, v253, v254, v255, v256, v257, v258, v259, v260, v261, v262, v263, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275);
    v200 = OUTLINED_FUNCTION_5_24();
    if (testFldeq(v200, v201, v202, v203))
    {
      goto LABEL_124;
    }

    if (advance_tok(a1))
    {
      goto LABEL_124;
    }

    v204 = OUTLINED_FUNCTION_61_3();
    if (lpta_loadp_setscan_r(v204, v205))
    {
      goto LABEL_124;
    }

    if (advance_tok(a1))
    {
      goto LABEL_124;
    }

    OUTLINED_FUNCTION_17_19();
    if (test_string_s())
    {
      goto LABEL_124;
    }

    modulate_nas_AV(a1);
  }

LABEL_95:
  v181 = OUTLINED_FUNCTION_60_3();
  starttest(v181, v182);
  v183 = OUTLINED_FUNCTION_15_21();
  v185 = v3;
  if (lpta_loadp_setscan_l(v183, v184))
  {
LABEL_96:
    v185 = v3;
    v186 = OUTLINED_FUNCTION_61_3();
    if (lpta_loadp_setscan_r(v186, v187))
    {
      goto LABEL_98;
    }

    OUTLINED_FUNCTION_17_19();
    if (test_string_s())
    {
      goto LABEL_98;
    }

    v213 = OUTLINED_FUNCTION_60_3();
    starttest_e(v213, v214);
    v215 = OUTLINED_FUNCTION_65_3();
    move_i(v215, v216, 45);
    v217 = OUTLINED_FUNCTION_107_0();
    move_i(v217, v218, 45);
  }

  else
  {
LABEL_127:
    OUTLINED_FUNCTION_86_2(34, v250, v251, v252, v253, v254, v255, v256, v257, v258, v259, v260, v261, v262, v263, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275);
    v232 = OUTLINED_FUNCTION_5_24();
    if (testFldeq(v232, v233, v234, v235) || advance_tok(a1) || (v236 = OUTLINED_FUNCTION_61_3(), lpta_loadp_setscan_r(v236, v237)) || advance_tok(a1) || (OUTLINED_FUNCTION_17_19(), test_string_s()))
    {
      v24 = v185;
      goto LABEL_11;
    }

    v243 = OUTLINED_FUNCTION_60_3();
    starttest_e(v243, v244);
    v245 = OUTLINED_FUNCTION_65_3();
    c_assvar(v245, v246);
    HIWORD(v274) = *(a1 + 4394) - 2;
    v247 = OUTLINED_FUNCTION_107_0();
    c_assvar(v247, v248);
    WORD1(v274) = *(a1 + 4394) + 2;
  }

  v219 = OUTLINED_FUNCTION_65_3();
  v221 = final_voiced_release(v219, v220);
  v3 = v185;
  v24 = v185;
  if (v221)
  {
    goto LABEL_11;
  }

LABEL_98:
  v188 = OUTLINED_FUNCTION_60_3();
  starttest(v188, v189);
  v190 = OUTLINED_FUNCTION_16_20();
  if (!lpta_loadp_setscan_r(v190, v191))
  {
    v192 = OUTLINED_FUNCTION_17_19();
    if (!testFldeq(v192, v193, v194, 1))
    {
      v195 = v3;
LABEL_101:
      v3 = v195;
      bspush_ca_scan_boa();
      v196 = OUTLINED_FUNCTION_59_3();
      testFldeq(v196, v197, v198, v199);
      OUTLINED_FUNCTION_113_0();
      goto LABEL_11;
    }

    goto LABEL_124;
  }

LABEL_136:
  OUTLINED_FUNCTION_96_1();
  if (v238 == v239)
  {
    OUTLINED_FUNCTION_105_0();
    if (v238 == v239)
    {
      OUTLINED_FUNCTION_21_16(v242);
    }
  }

LABEL_139:
  vretproc(a1);
  result = 0;
LABEL_4:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}