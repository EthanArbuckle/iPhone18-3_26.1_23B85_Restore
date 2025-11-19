void year_mode_anno()
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

  OUTLINED_FUNCTION_3_9();
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

    *(v0 + 2818) = v32;
LABEL_11:
    v33 = OUTLINED_FUNCTION_71();
    starttest(v33, v34);
    v35 = OUTLINED_FUNCTION_62();
    move_i(v35, v36, 1);
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
        goto LABEL_11;
      case 5:
        goto LABEL_19;
      case 6:
      case 7:
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

void OUTLINED_FUNCTION_1_9(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  a38 = 0;
  a39 = 0;
  a36 = 0;
  a37 = 0;
  a34 = 0;
  a35 = 0;
  a32 = 0;
  a33 = 0;

  bzero(&a9, 0xB8uLL);
}

void OUTLINED_FUNCTION_5_8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  a34 = 0;
  a35 = 0;
  a32 = 0;
  a33 = 0;

  bzero(&a9, 0xB8uLL);
}

uint64_t OUTLINED_FUNCTION_6_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, char a35, int a36, __int16 a37, char a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, char a44)
{

  return ventproc(v44, &a10, &a42, &a38, &a35, &a44);
}

void OUTLINED_FUNCTION_8_8()
{
  fence_10(v0);

  starttest(v0, 1);
}

void OUTLINED_FUNCTION_11_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{

  get_parm(v34, &a34, v35, -4);
}

void OUTLINED_FUNCTION_13_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, int a34, int a35)
{
  *(v36 - 40) = v35;
  a34 = 0;
  a35 = 0;

  bzero(&a10, 0xB8uLL);
}

uint64_t OUTLINED_FUNCTION_15_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  *(v44 + 136) = v45;
  *(v44 + 112) = a44;
  *(v44 + 128) = 0;

  return test_ptr(v44);
}

void OUTLINED_FUNCTION_16_7()
{

  bzero((v0 - 248), 0xC0uLL);
}

void OUTLINED_FUNCTION_19_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{

  get_parm(v38, &a38, v39, -6);
}

void OUTLINED_FUNCTION_20_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{

  bzero(&a38, 0xC0uLL);
}

void OUTLINED_FUNCTION_23_5(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, int a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  *(v42 - 96) = v41;
  a40 = 0;
  a41 = 0;
  a38 = 0;
  a39 = 0;
  a36 = 0;
  a37 = 0;
  a34 = 0;
  a35 = 0;
  a33 = 0;

  bzero(&a9, 0xB8uLL);
}

uint64_t OUTLINED_FUNCTION_25_5()
{
  *(v1 + 112) = v0;
  *(v1 + 128) = 0;

  return test_ptr(v1);
}

void OUTLINED_FUNCTION_28_3(uint64_t a1, uint64_t a2)
{

  get_parm(v2, a2, v3, -6);
}

void OUTLINED_FUNCTION_31_2(uint64_t a1, uint64_t a2)
{

  get_parm(v2, a2, v3, -6);
}

double OUTLINED_FUNCTION_35_0@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{

  *&result = savescptr(v25, a1, &a25).n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_38_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41, char a42, int a43, __int16 a44, char a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, char a51)
{

  return ventproc(v51, a2, &a49, &a45, &a42, &a51);
}

void OUTLINED_FUNCTION_41()
{
  fence_10(v0);

  starttest(v0, 1);
}

void OUTLINED_FUNCTION_43(__int16 a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, __int16 a27)
{
  *(v27 + 3634) = a1;

  copyvar(v27, (v27 + 3632), &a27);
}

uint64_t OUTLINED_FUNCTION_48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{

  return lpta_loadp_setscan_r(v40, &a40);
}

uint64_t OUTLINED_FUNCTION_51(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, int a44, char a45, int a46, __int16 a47, char a48, int a49, __int16 a50, char a51, char a52)
{

  return ventproc(v52, a2, &a52, &a48, &a45, v53 - 248);
}

uint64_t OUTLINED_FUNCTION_73(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return ventproc(v5, a2, a3, a4, a5, v6 - 248);
}

uint64_t OUTLINED_FUNCTION_77@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 144) = a1;
  *(v1 + 128) = 0;
  return v1;
}

uint64_t OUTLINED_FUNCTION_78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  *(v51 + 136) = v52;
  *(v51 + 112) = a51;
  *(v51 + 128) = v53;
  return v51;
}

uint64_t OUTLINED_FUNCTION_82()
{

  return handle_invalid_anno();
}

void OUTLINED_FUNCTION_83()
{
  *(v0 + 3602) = 6;

  npop(v0, (v0 + 3600));
}

uint64_t OUTLINED_FUNCTION_84()
{

  return rpta_loadpn(v0, v0 + 3344);
}

void OUTLINED_FUNCTION_89()
{

  starttest(v0, 1);
}

BOOL OUTLINED_FUNCTION_90@<W0>(uint64_t a1@<X8>)
{
  *(v2 + 8) = a1;

  return vretproc(v1);
}

void *fence_11(uint64_t a1, int a2, uint64_t a3)
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

uint64_t user_rootdict()
{
  OUTLINED_FUNCTION_1_10();
  v54 = *MEMORY[0x277D85DE8];
  v52[0] = 0;
  v52[1] = 0;
  OUTLINED_FUNCTION_2_10(v1, v2, v3, v4, v5, v6, v7, v8, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50[0], v50[1], v51[0], v51[1]);
  OUTLINED_FUNCTION_9_9();
  bzero(v53, v9);
  if (!setjmp(v53))
  {
    OUTLINED_FUNCTION_12_9();
    v14 = ventproc(v0, v10, v11, v12, v13, v53);
    if (!v14)
    {
      OUTLINED_FUNCTION_4_9(v14, v52);
      OUTLINED_FUNCTION_5_9(v18, v51);
      push_ptr_init(v0, v50);
      fence_11(v0, 0, &null_str_2);
      if (*(v0 + 5398))
      {
        v19 = 0;
        while (2)
        {
          if (*(v0 + 3890) != 1)
          {
LABEL_8:
            v20 = OUTLINED_FUNCTION_16_8();
            starttest(v20, v21);
            OUTLINED_FUNCTION_3_10();
            bspush_ca_boa();
            v22 = callUserDictLookup(v0, v0 + 4036, v52, v51);
LABEL_9:
            if (v22)
            {
              v23 = v19;
            }

            else
            {
              v23 = 1;
            }

            v24 = *(v0 + 104);
            if (v24)
            {
              v25 = OUTLINED_FUNCTION_13_9(v24);
              v19 = v26;
            }

            else
            {
              v25 = vback(v0, v23);
              v19 = 0;
            }

            switch(v25)
            {
              case 1:
                continue;
              case 2:
                goto LABEL_8;
              case 3:
                OUTLINED_FUNCTION_14_8();
                if (is_spr())
                {
                  goto LABEL_18;
                }

                starttest_l(v0, 6);
                OUTLINED_FUNCTION_7_9();
                bspush_ca_boa();
                OUTLINED_FUNCTION_14_8();
                handle_SPR();
                goto LABEL_9;
              case 4:
                bspop_boa(v0);
                goto LABEL_3;
              case 5:
LABEL_18:
                OUTLINED_FUNCTION_11_9();
                if (isLegalWord())
                {
                  goto LABEL_23;
                }

                OUTLINED_FUNCTION_11_9();
                insert_userdict_root();
LABEL_20:
                v15 = 0;
                *(v0 + 3890) = 1;
                goto LABEL_4;
              case 6:
              case 9:
              case 11:
                goto LABEL_20;
              case 7:
                bspop_boa(v0);
                goto LABEL_23;
              case 10:
LABEL_23:
                user_dict_error(v0, v52, v51, (v0 + 4036));
                goto LABEL_3;
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
  v15 = 94;
LABEL_4:
  vretproc(v0);
  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t user_dict_error(uint64_t a1, __int16 *a2, __int16 *a3, __int16 *a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v24[0] = 0;
  v24[1] = 0;
  v23[0] = 0;
  v23[1] = 0;
  v22 = 0;
  bzero(v21, 0xB8uLL);
  OUTLINED_FUNCTION_9_9();
  bzero(v25, v8);
  if (setjmp(v25) || (OUTLINED_FUNCTION_12_9(), ventproc(a1, v9, v10, v11, v12, v25)))
  {
    vretproc(a1);
    result = 94;
  }

  else
  {
    get_parm(a1, v24, a2, -6);
    v15 = OUTLINED_FUNCTION_14_8();
    get_parm(v15, v16, a3, -6);
    v17 = OUTLINED_FUNCTION_3_10();
    get_parm(v17, v18, a4, -4);
    fence_11(a1, 0, &null_str_2);
    v19 = OUTLINED_FUNCTION_3_10();
    callInsertLastDictString(v19, v20, v24, v23);
    if (*(a1 + 4042) == HIWORD(v22))
    {
      *(a1 + 2618) = 1;
    }

    vretproc(a1);
    result = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t isLegalWord()
{
  OUTLINED_FUNCTION_1_10();
  v88 = *MEMORY[0x277D85DE8];
  v83[0] = 0;
  v83[1] = 0;
  v81 = 0;
  v82 = 0;
  bzero(&v58, 0xB8uLL);
  OUTLINED_FUNCTION_9_9();
  bzero(v87, v1);
  if (!setjmp(v87))
  {
    v2 = ventproc(v0, &v58, v86, v85, v84, v87);
    if (!v2)
    {
      OUTLINED_FUNCTION_4_9(v2, v83);
      OUTLINED_FUNCTION_5_9(v3, &v81);
      fence_11(v0, 0, &null_str_2);
      if (*(v0 + 5110) != *(v0 + 5090))
      {
        v4 = OUTLINED_FUNCTION_6_9();
        starttest_l(v4, v5);
        if (!lpta_loadp_setscan_r(v0, v83))
        {
          v8 = 0;
          v57 = 5;
          v56 = 10;
          while (2)
          {
            v9 = v8;
            v10 = OUTLINED_FUNCTION_6_9();
            bspush_ca_scan(v10, v11);
            bspush_ca_scan(v0, v57);
            v12 = OUTLINED_FUNCTION_8_9();
            v14 = testFldeq(v12, v13, 4, 1);
            v15 = v9;
            if (!v14)
            {
LABEL_9:
              v9 = v15;
              v16 = advance_tok(v0);
              v17 = v9;
              if (!v16)
              {
LABEL_10:
                v9 = v17;
                bspush_ca_scan(v0, 9);
                if (!OUTLINED_FUNCTION_15_8(v18, v19, v20, v21, v22, v23, v24, v25, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82))
                {
                  bspush_ca_boa();
                  if (!lpta_loadp_setscan_r(v0, v83))
                  {
                    bspush_boa(v0);
                    v26 = v9;
LABEL_13:
                    v9 = v26;
                    do
                    {
                      bspush_ca_scan(v0, 11);
                      bspush_ca_scan(v0, 12);
                      OUTLINED_FUNCTION_8_9();
                    }

                    while (!test_string_s());
                  }
                }
              }
            }

            v27 = v9;
LABEL_16:
            v28 = *(v0 + 104);
            if (v28)
            {
              v29 = OUTLINED_FUNCTION_13_9(v28);
              v31 = v30;
            }

            else
            {
              v29 = vback(v0, v27);
              v31 = 0;
            }

            v8 = v31;
            v15 = v31;
            v17 = v31;
            v26 = v31;
            switch(v29)
            {
              case 3:
                continue;
              case 4:
                v32 = OUTLINED_FUNCTION_8_9();
                v34 = testFldeq(v32, v33, 3, 1);
                v27 = v31;
                if (!v34)
                {
                  v35 = advance_tok(v0);
                  v8 = v31;
                  v27 = v31;
                  if (!v35)
                  {
                    continue;
                  }
                }

                goto LABEL_16;
              case 5:
                v51 = OUTLINED_FUNCTION_14_8();
                bspush_ca_scan(v51, v52);
                v44 = OUTLINED_FUNCTION_8_9();
                v46 = 30;
                goto LABEL_31;
              case 6:
                goto LABEL_9;
              case 7:
                v44 = OUTLINED_FUNCTION_8_9();
                v46 = 51;
LABEL_31:
                v53 = testFldeq(v44, v45, 0, v46);
                v15 = v31;
                v27 = v31;
                if (!v53)
                {
                  goto LABEL_9;
                }

                goto LABEL_16;
              case 8:
                goto LABEL_10;
              case 9:
                v47 = OUTLINED_FUNCTION_8_9();
                v49 = testFldeq(v47, v48, 3, 1);
                v27 = v31;
                if (!v49)
                {
                  v50 = advance_tok(v0);
                  v17 = v31;
                  v27 = v31;
                  if (!v50)
                  {
                    goto LABEL_10;
                  }
                }

                goto LABEL_16;
              case 10:
                bspop_boa(v0);
                vretproc(v0);
                result = 0;
                goto LABEL_6;
              case 11:
                bspush_nboa(v0);
                if (OUTLINED_FUNCTION_15_8(v36, v37, v38, v39, v40, v41, v42, v43, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82))
                {
                  v27 = v31;
                }

                else
                {
                  v27 = 1;
                }

                goto LABEL_16;
              case 12:
                OUTLINED_FUNCTION_8_9();
                v54 = test_string_s();
                v26 = v31;
                v27 = v31;
                if (!v54)
                {
                  goto LABEL_13;
                }

                goto LABEL_16;
              case 13:
              case 14:
                goto LABEL_13;
              default:
                goto LABEL_5;
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
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t insert_userdict_root()
{
  OUTLINED_FUNCTION_1_10();
  v28 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_10(v1, v2, v3, v4, v5, v6, v7, v8, v21[0], v21[1], v21[2], v21[3], v21[4], v21[5], v21[6], v21[7], v21[8], v21[9], v21[10], v21[11], v21[12], v21[13], v21[14], v21[15], v21[16], v21[17], v21[18], v21[19], v21[20], v21[21], v21[22], v22[0], v22[1], v23[0], v23[1]);
  OUTLINED_FUNCTION_9_9();
  bzero(v27, v9);
  if (setjmp(v27) || (v10 = ventproc(v0, v21, v26, v25, v24, v27), v10))
  {
    v11 = 94;
  }

  else
  {
    OUTLINED_FUNCTION_4_9(v10, v23);
    OUTLINED_FUNCTION_5_9(v14, v22);
    fence_11(v0, 0, &null_str_2);
    *(v0 + 3890) = 1;
    if (*(v0 + 5118) != *(v0 + 5090))
    {
      convert_to_lowercase();
    }

    while (2)
    {
      v15 = OUTLINED_FUNCTION_16_8();
      starttest(v15, v16);
      OUTLINED_FUNCTION_3_10();
      if (internal_dict_lookup())
      {
        do
        {
          v17 = OUTLINED_FUNCTION_3_10();
          lpta_rpta_loadp(v17, v18, v22);
          if (!insert_2pt_s(v0, 3u, 1, &_MergedGlobals_5, 0))
          {
            v11 = 0;
            goto LABEL_4;
          }

          v19 = *(v0 + 104);
          if (v19)
          {
            v20 = OUTLINED_FUNCTION_13_9(v19);
          }

          else
          {
            v20 = vback(v0, 0);
          }
        }

        while (v20 == 2);
        if (v20 == 1)
        {
          continue;
        }

        if (v20 == 3)
        {
          v11 = 0;
        }

        else
        {
          v11 = 94;
        }
      }

      else
      {
        v11 = 0;
      }

      break;
    }
  }

LABEL_4:
  vretproc(v0);
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t internal_dict_lookup()
{
  OUTLINED_FUNCTION_1_10();
  v60 = *MEMORY[0x277D85DE8];
  v58[0] = 0;
  v58[1] = 0;
  OUTLINED_FUNCTION_2_10(v1, v2, v3, v4, v5, v6, v7, v8, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56[0], v56[1], v57[0], v57[1]);
  OUTLINED_FUNCTION_9_9();
  bzero(v59, v9);
  if (setjmp(v59) || (OUTLINED_FUNCTION_12_9(), v14 = ventproc(v0, v10, v11, v12, v13, v59), v14) || (OUTLINED_FUNCTION_4_9(v14, v58), OUTLINED_FUNCTION_5_9(v15, v57), push_ptr_init(v0, v56), fence_11(v0, 0, &null_str_2), *(v0 + 5122) != *(v0 + 5090)))
  {
    v29 = 94;
  }

  else
  {
    v16 = OUTLINED_FUNCTION_6_9();
    starttest_l(v16, v17);
    v18 = OUTLINED_FUNCTION_6_9();
    bspush_ca(v18);
    v19 = OUTLINED_FUNCTION_11_9();
    if (por_words(v19))
    {
      while (1)
      {
        v20 = *(v0 + 104);
        v21 = v20 ? OUTLINED_FUNCTION_13_9(v20) : vback(v0, 0);
        if (v21 != 3)
        {
          break;
        }

        v22 = OUTLINED_FUNCTION_16_8();
        lpta_loadpn(v22, v23);
        lpta_ctxtr();
        v24 = OUTLINED_FUNCTION_3_10();
        lpta_storep(v24, v25);
        v26 = OUTLINED_FUNCTION_14_8();
        v28 = por_roots(v26, v27, v57, v56);
        v29 = 0;
        if (!v28)
        {
          goto LABEL_12;
        }
      }

      if (v21 == 4)
      {
        v29 = 0;
      }

      else
      {
        v29 = 94;
      }
    }

    else
    {
      v29 = 0;
    }
  }

LABEL_12:
  v30 = v29;
  vretproc(v0);
  v31 = *MEMORY[0x277D85DE8];
  return v30;
}

uint64_t user_abbr_dict()
{
  OUTLINED_FUNCTION_1_10();
  v111 = *MEMORY[0x277D85DE8];
  v106[0] = 0;
  v106[1] = 0;
  v104 = 0;
  v105 = 0;
  v102 = 0;
  v103 = 0;
  v100 = 0;
  v101 = 0;
  v98 = 0;
  v99 = 0;
  bzero(&v75, 0xB8uLL);
  OUTLINED_FUNCTION_9_9();
  bzero(v110, v1);
  if (setjmp(v110))
  {
    goto LABEL_3;
  }

  v2 = ventproc(v0, &v75, v109, v108, v107, v110);
  if (v2)
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_4_9(v2, v106);
  OUTLINED_FUNCTION_5_9(v5, &v104);
  push_ptr_init(v0, &v102);
  push_ptr_init(v0, &v100);
  push_ptr_init(v0, &v98);
  fence_11(v0, 0, &null_str_2);
  if (!*(v0 + 5398))
  {
    goto LABEL_3;
  }

  v6 = 0;
  v7 = 2;
  v72 = 4;
  v71 = 6;
  v70 = 7;
  v69 = 13;
  v68 = 16;
  v67 = 5;
  v66 = 22;
  v65 = 10;
  v64 = 11;
  v73 = 3;
  v74 = 2;
  while (2)
  {
    starttest(v0, v7);
    OUTLINED_FUNCTION_3_10();
    bspush_ca_boa();
    v8 = callUserDictLookup(v0, v0 + 4040, v106, &v104);
LABEL_8:
    if (v8)
    {
      v9 = v6;
    }

    else
    {
      v9 = 1;
    }

LABEL_11:
    v10 = *(v0 + 104);
    if (v10)
    {
      v11 = OUTLINED_FUNCTION_13_9(v10);
      v6 = v12;
    }

    else
    {
      v11 = vback(v0, v9);
      v6 = 0;
    }

    switch(v11)
    {
      case 1:
        v7 = v74;
        continue;
      case 2:
        v19 = OUTLINED_FUNCTION_10_9();
        v21 = fence_11(v19, v20, &_MergedGlobals_5);
        *(v0 + 136) = 1;
        v29 = OUTLINED_FUNCTION_0_11(v21, v22, v23, v24, v25, v26, v27, v28, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105);
        addfence(v29, v30);
        startloop(v0, v72);
        lpta_loadpn(v0, v106);
        OUTLINED_FUNCTION_10_9();
        lpta_mover();
        v31 = OUTLINED_FUNCTION_7_9();
        lpta_storep(v31, v32);
        v33 = OUTLINED_FUNCTION_3_10();
        lpta_loadpn(v33, v34);
        OUTLINED_FUNCTION_10_9();
        lpta_mover();
        lpta_storep(v0, &v100);
        goto LABEL_23;
      case 3:
        bspop_boa(v0);
        goto LABEL_3;
      case 4:
        goto LABEL_38;
      case 5:
        goto LABEL_26;
      case 6:
        v35 = OUTLINED_FUNCTION_6_9();
        v37 = forto_adv_upto_r(v35, v36, v67, v66, 1, &v102);
        v9 = v6;
        if (v37)
        {
          goto LABEL_11;
        }

        goto LABEL_38;
      case 7:
        goto LABEL_27;
      case 8:
        v58 = OUTLINED_FUNCTION_6_9();
        savescptr(v58, v59, &v98);
        starttest_e(v0, v65);
        bspush_ca_boa();
        OUTLINED_FUNCTION_7_9();
        v8 = isLegalWord();
        goto LABEL_8;
      case 9:
        goto LABEL_30;
      case 10:
      case 12:
      case 18:
        goto LABEL_20;
      case 11:
        v11 = bspop_boa(v0);
        goto LABEL_42;
      case 13:
        goto LABEL_42;
      case 14:
        OUTLINED_FUNCTION_10_9();
        goto LABEL_34;
      case 15:
        goto LABEL_35;
      case 16:
        v38 = OUTLINED_FUNCTION_6_9();
        savescptr(v38, v39, &v98);
LABEL_20:
        lpta_loadpn(v0, &v98);
        v40 = OUTLINED_FUNCTION_3_10();
        rpta_loadpn(v40, v41);
        if (compare_ptas(v0) || testeq(v0))
        {
          goto LABEL_22;
        }

LABEL_38:
        v11 = convert_to_lowercase();
        goto LABEL_39;
      case 17:
        goto LABEL_33;
      case 20:
LABEL_22:
        forall_cont_from(v0);
        goto LABEL_23;
      case 21:
LABEL_23:
        v42 = OUTLINED_FUNCTION_7_9();
        v44 = forall_to_test(v42, v43, &v100);
        v9 = v6;
        if (!v44)
        {
          goto LABEL_24;
        }

        goto LABEL_11;
      case 22:
LABEL_24:
        bspush_ca(v0);
        v45 = OUTLINED_FUNCTION_7_9();
        v47 = lpta_loadp_setscan_r(v45, v46);
        v9 = v6;
        if (v47)
        {
          goto LABEL_11;
        }

        v48 = advance_tok(v0);
        v9 = v6;
        if (v48)
        {
          goto LABEL_11;
        }

LABEL_26:
        starttest(v0, v70);
        v49 = OUTLINED_FUNCTION_7_9();
        if (!lpta_loadp_setscan_r(v49, v50))
        {
LABEL_30:
          while (1)
          {
            v53 = OUTLINED_FUNCTION_10_9();
            if (testFldeq(v53, v54, 3, 1) || advance_tok(v0))
            {
              break;
            }

            bspush_ca_scan(v0, 8);
          }

          v9 = v6;
          goto LABEL_11;
        }

LABEL_27:
        starttest(v0, v69);
        v51 = OUTLINED_FUNCTION_7_9();
        v11 = lpta_loadp_setscan_r(v51, v52);
        if (!v11)
        {
LABEL_33:
          while (1)
          {
            v55 = OUTLINED_FUNCTION_16_8();
            bspush_ca_scan(v55, v56);
            OUTLINED_FUNCTION_10_9();
LABEL_34:
            v57 = test_string_s();
            v9 = v6;
            if (v57)
            {
              break;
            }

LABEL_35:
            bspush_ca_scan(v0, v68);
          }

          goto LABEL_11;
        }

LABEL_42:
        *(v0 + 136) = 1;
        v62 = OUTLINED_FUNCTION_0_11(v11, v12, v13, v14, v15, v16, v17, v18, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105);
        remfence(v62, v63);
        user_dict_error(v0, v106, &v104, (v0 + 4040));
LABEL_3:
        vretproc(v0);
        result = 94;
LABEL_4:
        v4 = *MEMORY[0x277D85DE8];
        return result;
      case 23:
LABEL_39:
        *(v0 + 136) = 1;
        v60 = OUTLINED_FUNCTION_0_11(v11, v12, v13, v14, v15, v16, v17, v18, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105);
        remfence(v60, v61);
        vretproc(v0);
        result = 0;
        goto LABEL_4;
      default:
        goto LABEL_3;
    }
  }
}

uint64_t OUTLINED_FUNCTION_0_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  *(v50 + 112) = a50;
  *(v50 + 128) = 0;
  return v50;
}

void OUTLINED_FUNCTION_2_10(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  a34 = 0;
  a35 = 0;
  a32 = 0;
  a33 = 0;

  bzero(&a9, 0xB8uLL);
}

void OUTLINED_FUNCTION_4_9(uint64_t a1, uint64_t a2)
{

  get_parm(v2, a2, v3, -6);
}

void OUTLINED_FUNCTION_5_9(uint64_t a1, uint64_t a2)
{

  get_parm(v2, a2, v3, -6);
}

uint64_t OUTLINED_FUNCTION_15_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  *(v36 + 136) = v37;
  *(v36 + 112) = a36;
  *(v36 + 128) = 0;

  return test_ptr(v36);
}

uint64_t mark_word_categories(uint64_t a1)
{
  v99 = *MEMORY[0x277D85DE8];
  v93 = 0;
  v94 = 0;
  v91 = 0;
  v92 = 0;
  v90[0] = 0;
  v90[1] = 0;
  v89[0] = 0;
  v89[1] = 0;
  v87 = 0;
  v88 = 0;
  v85 = 0;
  v86 = 0;
  v84 = 0;
  bzero(v83, 0xB8uLL);
  bzero(v98, 0xC0uLL);
  if (setjmp(v98) || ventproc(a1, v83, v97, v96, v95, v98))
  {
LABEL_3:
    v2 = 94;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_2_11();
    push_ptr_init(v5, v6);
    push_ptr_init(a1, &v91);
    v7 = OUTLINED_FUNCTION_8_10();
    push_ptr_init(v7, v8);
    push_ptr_init(a1, v89);
    push_ptr_init(a1, &v87);
    push_ptr_init(a1, &v85);
    v84 = 0xFFFC0000FFFCLL;
    fence_12(a1);
    phrase_level_printouts(a1);
    v9 = 0;
LABEL_6:
    init_gcat_vars(a1);
LABEL_7:
    startloop(a1, 3);
    lpta_loadpn(a1, a1 + 1416);
    OUTLINED_FUNCTION_5_10();
    lpta_mover();
    v10 = OUTLINED_FUNCTION_2_11();
    lpta_storep(v10, v11);
    lpta_loadpn(a1, a1 + 1432);
    OUTLINED_FUNCTION_5_10();
    lpta_mover();
    v12 = OUTLINED_FUNCTION_8_10();
    lpta_storep(v12, v13);
    v14 = OUTLINED_FUNCTION_2_11();
    v16 = forall_to_test(v14, v15, v90);
    v17 = v9;
    if (!v16)
    {
LABEL_8:
      v9 = v17;
      bspush_ca(a1);
      v18 = OUTLINED_FUNCTION_2_11();
      if (!lpta_loadp_setscan_r(v18, v19))
      {
        v20 = advance_tok(a1);
        v21 = v9;
        if (!v20)
        {
LABEL_10:
          v9 = v21;
          savescptr(a1, 6, &v91);
LABEL_11:
          starttest(a1, 7);
          OUTLINED_FUNCTION_2_11();
          v22 = is_spr();
          v23 = v9;
          if (!v22)
          {
            goto LABEL_17;
          }

LABEL_12:
          v9 = v23;
          v88 = v94;
          v86 = v92;
          starttest(a1, 8);
          bspush_ca_boa();
          v24 = OUTLINED_FUNCTION_2_11();
          if (!lpta_loadp_setscan_r(v24, v25))
          {
            v26 = OUTLINED_FUNCTION_5_10();
            if (!testFldeq(v26, v27, 1, 0))
            {
              if (advance_tok(a1))
              {
                v9 = v9;
              }

              else
              {
                v9 = 1;
              }
            }
          }
        }
      }
    }

    do
    {
      while (1)
      {
        do
        {
LABEL_25:
          v33 = v9;
          while (2)
          {
            v34 = *(a1 + 104);
            if (v34)
            {
              *(a1 + 104) = 0;
              v35 = v34;
              v9 = v33;
            }

            else
            {
              v35 = vback(a1, v33);
              v9 = 0;
            }

            switch(v35)
            {
              case 1:
                goto LABEL_6;
              case 2:
                goto LABEL_7;
              case 3:
                v31 = v9;
                goto LABEL_18;
              case 4:
                goto LABEL_11;
              case 5:
                break;
              case 6:
                v21 = v9;
                goto LABEL_10;
              case 7:
                v23 = v9;
                goto LABEL_12;
              case 8:
                v36 = OUTLINED_FUNCTION_0_12();
                starttest(v36, v37);
                v38 = OUTLINED_FUNCTION_0_12();
                bspush_ca(v38);
                v39 = *(a1 + 5094);
                goto LABEL_37;
              case 9:
                bspop_boa(a1);
                goto LABEL_48;
              case 10:
                goto LABEL_48;
              case 11:
                v44 = OUTLINED_FUNCTION_0_12();
                starttest(v44, v45);
                OUTLINED_FUNCTION_3_11();
                mark_function_word();
                if (v46)
                {
                  goto LABEL_45;
                }

                goto LABEL_48;
              case 12:
                v42 = OUTLINED_FUNCTION_0_12();
                bspush_ca(v42);
                v39 = *(a1 + 5106);
                goto LABEL_37;
              case 13:
                goto LABEL_38;
              case 14:
                v40 = OUTLINED_FUNCTION_0_12();
                bspush_ca(v40);
                v39 = *(a1 + 5122);
                goto LABEL_37;
              case 15:
                v41 = OUTLINED_FUNCTION_0_12();
                bspush_ca(v41);
                v39 = *(a1 + 5130);
                goto LABEL_37;
              case 16:
                v39 = *(a1 + 5102);
LABEL_37:
                v33 = v9;
                if (v39 != *(a1 + 5090))
                {
                  continue;
                }

LABEL_38:
                OUTLINED_FUNCTION_3_11();
                gramm_cat_dict_lookup();
                v33 = v9;
                if (v43)
                {
                  continue;
                }

LABEL_48:
                move_i(a1, a1 + 3840, 0);
                break;
              case 17:
LABEL_45:
                v47 = OUTLINED_FUNCTION_0_12();
                starttest(v47, v48);
                OUTLINED_FUNCTION_3_11();
                mark_content_word();
                goto LABEL_48;
              case 18:
                v17 = v9;
                goto LABEL_8;
              case 19:
                goto LABEL_19;
              case 20:
                goto LABEL_22;
              case 21:
              case 24:
                goto LABEL_73;
              case 22:
                v33 = v9;
                if (*(a1 + 5102) == *(a1 + 5090))
                {
                  goto LABEL_72;
                }

                continue;
              case 23:
                goto LABEL_72;
              case 25:
                v32 = v9;
                goto LABEL_53;
              case 26:
                v32 = v9;
                goto LABEL_67;
              case 27:
                goto LABEL_58;
              case 28:
                v32 = v9;
                goto LABEL_66;
              case 29:
                v32 = v9;
                goto LABEL_57;
              case 30:
                goto LABEL_59;
              case 31:
              case 32:
                goto LABEL_64;
              case 33:
                goto LABEL_65;
              case 34:
                v32 = v9;
                goto LABEL_54;
              default:
                goto LABEL_3;
            }

            break;
          }

LABEL_17:
          v28 = OUTLINED_FUNCTION_0_12();
          v30 = forto_adv_upto_r(v28, v29, 4, 18, 2, &v93);
          v31 = v9;
        }

        while (v30);
LABEL_18:
        v9 = v31;
        reset_gcat_vars(a1);
LABEL_19:
        if (!lpta_loadp_setscan_r(a1, a1 + 1416) && !advance_tok(a1))
        {
          *(a1 + 136) = 1;
          *(a1 + 112) = *(a1 + 1440);
          *(a1 + 128) = 0;
          if (!test_ptr(a1))
          {
            break;
          }
        }

LABEL_22:
        v32 = v9;
        startloop(a1, 24);
        move_i(a1, a1 + 3072, 1);
        move_i(a1, &v84 + 4, 1);
        copyvar(a1, &v84, (a1 + 3076));
        if (!for_test(a1, (a1 + 3072), &v84, &v84 + 2))
        {
LABEL_53:
          while (1)
          {
            startloop(a1, 26);
            lpta_loadpn(a1, a1 + 1416);
            OUTLINED_FUNCTION_5_10();
            lpta_mover();
            v49 = OUTLINED_FUNCTION_2_11();
            lpta_storep(v49, v50);
            lpta_loadpn(a1, a1 + 1432);
            OUTLINED_FUNCTION_5_10();
            lpta_mover();
            v51 = OUTLINED_FUNCTION_8_10();
            lpta_storep(v51, v52);
            v53 = OUTLINED_FUNCTION_2_11();
            v9 = v32;
            if (forall_to_test(v53, v54, v90))
            {
              break;
            }

LABEL_54:
            bspush_ca(a1);
            v55 = OUTLINED_FUNCTION_2_11();
            if (lpta_loadp_setscan_r(v55, v56))
            {
              v9 = v32;
              goto LABEL_25;
            }

            v9 = v32;
            if (advance_tok(a1))
            {
              goto LABEL_25;
            }

LABEL_57:
            savescptr(a1, 29, &v91);
            v9 = v32;
LABEL_58:
            starttest(a1, 30);
            v57 = OUTLINED_FUNCTION_2_11();
            if (lpta_loadp_setscan_r(v57, v58))
            {
LABEL_59:
              OUTLINED_FUNCTION_2_11();
              disambiguate_content_word();
            }

            else
            {
              v59 = OUTLINED_FUNCTION_5_10();
              if (npush_fld(v59, v60, 5))
              {
                goto LABEL_25;
              }

              npush_v(a1, (a1 + 3044), v61, v62, v63, v64, v65, v66);
              if (if_testgt(a1, v67, v68, v69, v70, v71, v72, v73) || advance_tok(a1))
              {
                goto LABEL_25;
              }

              starttest_l(a1, 31);
              v74 = OUTLINED_FUNCTION_2_11();
              if (!lpta_loadp_setscan_r(v74, v75))
              {
                v80 = OUTLINED_FUNCTION_5_10();
                if (testFldeq(v80, v81, 1, v82) || advance_tok(a1))
                {
                  goto LABEL_25;
                }

                OUTLINED_FUNCTION_2_11();
                disambiguate_functword();
              }
            }

LABEL_64:
            OUTLINED_FUNCTION_2_11();
            mark_subcategory();
LABEL_65:
            v32 = v9;
            v76 = OUTLINED_FUNCTION_0_12();
            starttest(v76, v77);
            init_word_ptrs(a1);
LABEL_66:
            v78 = OUTLINED_FUNCTION_0_12();
            v9 = v32;
            if (forto_adv_upto_r(v78, v79, 27, 34, 2, &v93))
            {
              goto LABEL_25;
            }

LABEL_67:
            if (!for_adv(a1, 24, 25, (a1 + 3072), &v84, &v84 + 2))
            {
              goto LABEL_73;
            }
          }
        }
      }

      starttest(a1, 21);
      bspush_ca(a1);
    }

    while (*(a1 + 5122) != *(a1 + 5090));
LABEL_72:
    disambiguate_single_word();
LABEL_73:
    v2 = 0;
  }

  vretproc(a1);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t phrase_level_printouts(uint64_t a1)
{
  OUTLINED_FUNCTION_10_10(*MEMORY[0x277D85DE8], v22);
  OUTLINED_FUNCTION_9_10(v3, v4, v5, v6, v7, v8, v9, v10, v23, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_4_10(v11, v12, v13, v14, v15, v16, v17, v18, v24, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, *v70, v70[4], *v72, *&v72[4], v72[6], v74, SWORD2(v74), SBYTE6(v74), SHIBYTE(v74), v76, v78))
  {
    v19 = 94;
  }

  else
  {
    fence_12(a1);
    v19 = 0;
  }

  vretproc(a1);
  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

uint64_t init_gcat_vars(uint64_t a1)
{
  OUTLINED_FUNCTION_10_10(*MEMORY[0x277D85DE8], v22);
  OUTLINED_FUNCTION_9_10(v3, v4, v5, v6, v7, v8, v9, v10, v23, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_4_10(v11, v12, v13, v14, v15, v16, v17, v18, v24, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, *v70, v70[4], *v72, *&v72[4], v72[6], v74, SWORD2(v74), SBYTE6(v74), SHIBYTE(v74), v76, v78))
  {
    v19 = 94;
  }

  else
  {
    fence_12(a1);
    v19 = 0;
    *(a1 + 3074) = 0;
  }

  vretproc(a1);
  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

uint64_t reset_gcat_vars(uint64_t a1)
{
  OUTLINED_FUNCTION_10_10(*MEMORY[0x277D85DE8], v22);
  OUTLINED_FUNCTION_9_10(v3, v4, v5, v6, v7, v8, v9, v10, v23, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_4_10(v11, v12, v13, v14, v15, v16, v17, v18, v24, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, *v70, v70[4], *v72, *&v72[4], v72[6], v74, SWORD2(v74), SBYTE6(v74), SHIBYTE(v74), v76, v78))
  {
    v19 = 94;
  }

  else
  {
    fence_12(a1);
    v19 = 0;
  }

  vretproc(a1);
  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

uint64_t print_normalized_inp(uint64_t a1, __int16 *a2, __int16 *a3)
{
  v73 = *MEMORY[0x277D85DE8];
  memset(v68, 0, sizeof(v68));
  v67[0] = 0;
  v67[1] = 0;
  v66[0] = 0;
  v66[1] = 0;
  v65[0] = 0;
  v65[1] = 0;
  v64[0] = 0;
  v64[1] = 0;
  bzero(v63, 0xB8uLL);
  bzero(v72, 0xC0uLL);
  if (!setjmp(v72) && !ventproc(a1, v63, v71, v70, v69, v72))
  {
    v9 = OUTLINED_FUNCTION_8_10();
    get_parm(v9, v10, a2, -6);
    v11 = OUTLINED_FUNCTION_11_10();
    get_parm(v11, v12, a3, -6);
    v13 = OUTLINED_FUNCTION_2_11();
    push_ptr_init(v13, v14);
    push_ptr_init(a1, v66);
    v15 = OUTLINED_FUNCTION_13_10();
    push_ptr_init(v15, v16);
    push_ptr_init(a1, v64);
    fence_12(a1);
    v17 = OUTLINED_FUNCTION_0_12();
    startloop(v17, v18);
    v19 = OUTLINED_FUNCTION_8_10();
    lpta_loadpn(v19, v20);
    OUTLINED_FUNCTION_5_10();
    lpta_mover();
    v21 = OUTLINED_FUNCTION_2_11();
    lpta_storep(v21, v22);
    v23 = OUTLINED_FUNCTION_11_10();
    lpta_loadpn(v23, v24);
    OUTLINED_FUNCTION_5_10();
    lpta_mover();
    v25 = OUTLINED_FUNCTION_13_10();
    lpta_storep(v25, v26);
    v27 = OUTLINED_FUNCTION_2_11();
    v29 = 0;
    v30 = 0;
    if (!forall_to_test(v27, v28, v65))
    {
LABEL_6:
      v29 = v30;
      v31 = OUTLINED_FUNCTION_0_12();
      bspush_ca(v31);
      if (!lpta_loadp_setscan_r(a1, v67) && !advance_tok(a1))
      {
LABEL_8:
        savescptr(a1, 4, v66);
LABEL_9:
        v32 = OUTLINED_FUNCTION_0_12();
        starttest(v32, v33);
        v34 = OUTLINED_FUNCTION_2_11();
        lpta_loadpn(v34, v35);
        OUTLINED_FUNCTION_5_10();
        lpta_movel();
        v36 = OUTLINED_FUNCTION_11_10();
        lpta_storep(v36, v37);
        v38 = OUTLINED_FUNCTION_11_10();
        v29 = v30;
        if (!print_interword_chars(v38, v39, v67))
        {
LABEL_10:
          lpta_rpta_loadp(a1, v67, v66);
          v40 = OUTLINED_FUNCTION_12_10();
          print_stream(v40, v41, 1, v42, v43);
LABEL_11:
          v29 = v30;
          if (!forto_adv_upto_r(a1, 1, 2, 6, 2, v67))
          {
LABEL_12:
            v29 = v30;
            lpta_loadpn(a1, v68);
            rpta_loadpn(a1, a1 + 1240);
            if (compare_ptas(a1) || testeq(a1))
            {
LABEL_33:
              v6 = 0;
              goto LABEL_4;
            }

            print_interword_chars(a1, (a1 + 1240), (a1 + 1256));
LABEL_15:
            v44 = OUTLINED_FUNCTION_0_12();
            starttest(v44, v45);
            OUTLINED_FUNCTION_0_12();
            bspush_ca_boa();
            v46 = OUTLINED_FUNCTION_7_10();
            v48 = lpta_loadp_setscan_r(v46, v47);
            v49 = v29;
            if (!v48)
            {
LABEL_16:
              LODWORD(v29) = v49;
              v50 = OUTLINED_FUNCTION_0_12();
              bspush_ca_scan(v50, v51);
              OUTLINED_FUNCTION_0_12();
              bspush_ca_scan_boa();
              v52 = OUTLINED_FUNCTION_1_11();
              if (testFldeq(v52, v53, v54, 4))
              {
                v29 = v29;
              }

              else
              {
                v29 = 1;
              }
            }
          }
        }
      }
    }

    v30 = v29;
    while (1)
    {
      v55 = *(a1 + 104);
      if (v55)
      {
        *(a1 + 104) = 0;
        v56 = v55;
      }

      else
      {
        v56 = vback(a1, v30);
        v30 = 0;
      }

      v49 = v30;
      switch(v56)
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
          goto LABEL_33;
        case 8:
          v29 = v30;
          goto LABEL_15;
        case 9:
          goto LABEL_32;
        case 10:
          bspop_boa(a1);
LABEL_32:
          v60 = OUTLINED_FUNCTION_12_10();
          print_lit(v60, v61, v62);
          goto LABEL_33;
        case 11:
          v57 = OUTLINED_FUNCTION_2_11();
          bspush_ca_scan(v57, v58);
          OUTLINED_FUNCTION_6_10();
          goto LABEL_28;
        case 12:
          bspop_boa(a1);
          v59 = advance_tok(a1);
          v49 = v30;
          if (!v59)
          {
            goto LABEL_16;
          }

          continue;
        case 13:
          goto LABEL_16;
        case 14:
          OUTLINED_FUNCTION_6_10();
LABEL_28:
          if (!test_string_s())
          {
            goto LABEL_29;
          }

          continue;
        case 15:
LABEL_29:
          v30 = 1;
          break;
        default:
          goto LABEL_3;
      }
    }
  }

LABEL_3:
  v6 = 94;
LABEL_4:
  vretproc(a1);
  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t print_interword_chars(uint64_t a1, __int16 *a2, __int16 *a3)
{
  v107 = *MEMORY[0x277D85DE8];
  memset(v102, 0, sizeof(v102));
  v101 = 0;
  v99 = 0;
  v100 = 0;
  v98[0] = 0;
  v98[1] = 0;
  v97[0] = 0;
  v97[1] = 0;
  bzero(v96, 0xB8uLL);
  bzero(v106, 0xC0uLL);
  if (setjmp(v106) || ventproc(a1, v96, v105, v104, v103, v106))
  {
LABEL_3:
    vretproc(a1);
    result = 94;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_8_10();
    get_parm(v8, v9, a2, -6);
    v10 = OUTLINED_FUNCTION_11_10();
    get_parm(v10, v11, a3, -6);
    LOWORD(v101) = -4;
    v12 = OUTLINED_FUNCTION_2_11();
    push_ptr_init(v12, v13);
    push_ptr_init(a1, v98);
    v14 = OUTLINED_FUNCTION_13_10();
    push_ptr_init(v14, v15);
    fence_12(a1);
    HIWORD(v101) = 0;
    startloop(a1, 1);
    v16 = OUTLINED_FUNCTION_8_10();
    lpta_loadpn(v16, v17);
    lpta_mover();
    v18 = OUTLINED_FUNCTION_2_11();
    lpta_storep(v18, v19);
    v20 = OUTLINED_FUNCTION_11_10();
    lpta_loadpn(v20, v21);
    lpta_mover();
    v22 = OUTLINED_FUNCTION_13_10();
    lpta_storep(v22, v23);
    v24 = OUTLINED_FUNCTION_2_11();
    v26 = forall_to_test(v24, v25, v97);
    v27 = 0;
    v28 = 0;
    if (!v26)
    {
LABEL_8:
      v27 = v28;
      v29 = OUTLINED_FUNCTION_0_12();
      bspush_ca(v29);
      v30 = OUTLINED_FUNCTION_7_10();
      if (!lpta_loadp_setscan_r(v30, v31))
      {
        OUTLINED_FUNCTION_0_12();
        bspush_ca_scan_boa();
        v32 = OUTLINED_FUNCTION_1_11();
        if (testFldeq(v32, v33, v34, 1))
        {
          v27 = v27;
        }

        else
        {
          v27 = 1;
        }
      }
    }

    v35 = v27;
    while (2)
    {
      v36 = *(a1 + 104);
      if (v36)
      {
        *(a1 + 104) = 0;
        v37 = v36;
        v38 = v35;
      }

      else
      {
        v37 = vback(a1, v35);
        v38 = 0;
      }

      switch(v37)
      {
        case 1:
          goto LABEL_49;
        case 2:
          goto LABEL_27;
        case 3:
          goto LABEL_21;
        case 4:
          bspop_boa(a1);
          OUTLINED_FUNCTION_0_12();
          bspush_ca_scan_boa();
          v59 = OUTLINED_FUNCTION_1_11();
          v62 = 2;
          goto LABEL_31;
        case 5:
          bspop_boa(a1);
          v63 = advance_tok(a1);
          v35 = v38;
          if (v63)
          {
            continue;
          }

          goto LABEL_26;
        case 6:
LABEL_26:
          savescptr(a1, 6, v98);
LABEL_27:
          v64 = OUTLINED_FUNCTION_0_12();
          starttest(v64, v65);
          v66 = OUTLINED_FUNCTION_7_10();
          if (lpta_loadp_setscan_r(v66, v67))
          {
            goto LABEL_28;
          }

          v78 = OUTLINED_FUNCTION_1_11();
          v81 = testFldeq(v78, v79, v80, 4);
          v35 = v38;
          if (v81)
          {
            continue;
          }

          v82 = advance_tok(a1);
          v35 = v38;
          if (v82)
          {
            continue;
          }

          v83 = OUTLINED_FUNCTION_0_12();
          starttest(v83, v84);
          OUTLINED_FUNCTION_0_12();
          bspush_ca_boa();
          *(a1 + 136) = 1;
          *(a1 + 112) = v100;
          *(a1 + 128) = 0;
          OUTLINED_FUNCTION_5_10();
          v85 = lpta_tstctxtl();
          v35 = v38;
          if (v85)
          {
            continue;
          }

          setscan_l(a1);
          goto LABEL_44;
        case 7:
LABEL_28:
          v68 = OUTLINED_FUNCTION_0_12();
          starttest(v68, v69);
          OUTLINED_FUNCTION_0_12();
          bspush_ca_boa();
          v70 = OUTLINED_FUNCTION_7_10();
          v72 = lpta_loadp_setscan_r(v70, v71);
          v35 = v38;
          if (!v72)
          {
            goto LABEL_35;
          }

          continue;
        case 8:
          v39 = OUTLINED_FUNCTION_0_12();
          starttest(v39, v40);
          v41 = OUTLINED_FUNCTION_7_10();
          if (lpta_loadp_setscan_r(v41, v42))
          {
            goto LABEL_19;
          }

          v89 = OUTLINED_FUNCTION_1_11();
          v92 = testFldeq(v89, v90, v91, 2);
          v35 = v38;
          if (!v92)
          {
            goto LABEL_33;
          }

          continue;
        case 9:
        case 16:
          bspop_boa(a1);
          goto LABEL_21;
        case 10:
LABEL_19:
          v43 = OUTLINED_FUNCTION_0_12();
          starttest(v43, v44);
          v45 = OUTLINED_FUNCTION_7_10();
          if (lpta_loadp_setscan_r(v45, v46))
          {
            goto LABEL_20;
          }

          OUTLINED_FUNCTION_0_12();
          bspush_ca_scan_boa();
          goto LABEL_43;
        case 11:
        case 15:
LABEL_20:
          lpta_rpta_loadp(a1, &v99, v98);
          v47 = OUTLINED_FUNCTION_12_10();
          print_stream(v47, v48, 1, v49, v50);
          v51 = OUTLINED_FUNCTION_7_10();
          move_i(v51, v52, v53);
          goto LABEL_21;
        case 12:
          bspop_boa(a1);
          v55 = OUTLINED_FUNCTION_1_11();
          v58 = testFldeq(v55, v56, v57, 1);
          v35 = v38;
          if (v58)
          {
            continue;
          }

          OUTLINED_FUNCTION_0_12();
          bspush_ca_scan_boa();
          v59 = OUTLINED_FUNCTION_6_10();
          v62 = 73;
LABEL_31:
          v73 = testFldeq(v59, v60, v61, v62);
          goto LABEL_44;
        case 13:
LABEL_43:
          v86 = OUTLINED_FUNCTION_0_12();
          v73 = test_synch(v86, v87, 1u, v88);
LABEL_44:
          if (v73)
          {
            v35 = v38;
          }

          else
          {
            v35 = 1;
          }

          continue;
        case 14:
          bspop_boa(a1);
LABEL_33:
          v74 = advance_tok(a1);
          v35 = v38;
          if (v74)
          {
            continue;
          }

LABEL_21:
          v54 = forto_adv_upto_r(a1, 1, 2, 29, 1, &v99);
          v35 = v38;
          if (v54)
          {
            continue;
          }

LABEL_49:
          if (!HIWORD(v101))
          {
            lpta_loadpn(a1, v102);
            rpta_loadpn(a1, a1 + 1224);
            if (!compare_ptas(a1) && !testneq(a1))
            {
              v93 = OUTLINED_FUNCTION_12_10();
              print_lit(v93, v94, v95);
            }
          }

LABEL_53:
          vretproc(a1);
          result = 0;
          break;
        case 17:
        case 19:
        case 20:
        case 21:
        case 22:
        case 23:
        case 24:
        case 25:
        case 26:
        case 27:
LABEL_35:
          v75 = OUTLINED_FUNCTION_0_12();
          bspush_ca_scan(v75, v76);
          goto LABEL_36;
        case 18:
          goto LABEL_37;
        case 28:
LABEL_36:
          OUTLINED_FUNCTION_6_10();
          v77 = test_string_s();
          v35 = v38;
          if (!v77)
          {
LABEL_37:
            v35 = 1;
          }

          continue;
        case 29:
          v28 = v38;
          goto LABEL_8;
        case 30:
          goto LABEL_53;
        default:
          goto LABEL_3;
      }

      break;
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t OUTLINED_FUNCTION_4_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, char a33, int a34, __int16 a35, char a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, char a42)
{

  return ventproc(v42, &a9, &a40, &a36, &a33, &a42);
}

void OUTLINED_FUNCTION_9_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{

  bzero(&a36, 0xC0uLL);
}

void OUTLINED_FUNCTION_10_10(uint64_t a1@<X8>, uint64_t a2)
{
  *(v2 - 40) = a1;

  bzero(&a2, 0xB8uLL);
}

uint64_t count_input(uint64_t a1, uint64_t a2)
{
  v31 = *MEMORY[0x277D85DE8];
  HIDWORD(v19) = 65532;
  v20 = 0;
  OUTLINED_FUNCTION_10_11();
  bzero(v18, v4);
  OUTLINED_FUNCTION_9_11();
  bzero(v30, v5);
  v6 = setjmp(v30);
  if (v6 || (v13 = OUTLINED_FUNCTION_22_6(v6, v18, v7, v8, v9, v10, v11, v12, v17, v18[0], v18[1], v18[2], v18[3], v18[4], v18[5], v18[6], v18[7], v18[8], v18[9], v18[10], v18[11], v18[12], v18[13], v18[14], v18[15], v18[16], v18[17], v18[18], v18[19], v18[20], v18[21], v18[22], v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30[0]), v13))
  {
    v14 = 94;
  }

  else
  {
    OUTLINED_FUNCTION_21_6(v13, &v20);
    fence_13(a1);
    count_normalized_inp(a1);
    count_unnormalized_inp(a1, (a1 + 2464), &v19 + 4);
    HIWORD(v20) = HIWORD(v19) + *(a1 + 2414);
    *(a2 + 2) = HIWORD(v20);
    v14 = 0;
  }

  vretproc(a1);
  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t count_normalized_inp(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_10_11();
  bzero(v15, v2);
  OUTLINED_FUNCTION_9_11();
  bzero(v26, v3);
  v4 = setjmp(v26);
  if (v4 || OUTLINED_FUNCTION_7_11(v4, v5, v6, v7, v8, v9, v10, v11, v15[0], v15[1], v15[2], v15[3], v15[4], v15[5], v15[6], v15[7], v15[8], v15[9], v15[10], v15[11], v15[12], v15[13], v15[14], v15[15], v15[16], v15[17], v15[18], v15[19], v15[20], v15[21], v15[22], v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26[0]))
  {
    v12 = 94;
  }

  else
  {
    fence_13(a1);
    count_cumulative_chars();
    v12 = 0;
    *(a1 + 2472) = *(a1 + 2456);
  }

  vretproc(a1);
  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t count_unnormalized_inp(uint64_t a1, __int16 *a2, uint64_t a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v27 = 0;
  v28 = 0;
  v26 = 0;
  v24[0] = 0;
  v24[1] = 0;
  v25 = 0;
  OUTLINED_FUNCTION_10_11();
  bzero(v23, v6);
  OUTLINED_FUNCTION_9_11();
  bzero(v32, v7);
  if (setjmp(v32) || ventproc(a1, v23, v31, v30, v29, v32))
  {
    vretproc(a1);
    result = 94;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_23_6();
    get_parm(v10, v11, a2, -6);
    OUTLINED_FUNCTION_21_6(v12, &v26);
    LOWORD(v25) = 0;
    LODWORD(v24[0]) = -65536;
    fence_13(a1);
    v13 = OUTLINED_FUNCTION_23_6();
    if (lpta_loadp_setscan_r(v13, v14) || (*(a1 + 136) = 1, v15 = *(a1 + 1392), v16 = OUTLINED_FUNCTION_1_12(), test_ptr(v16)))
    {
      v17 = *(a1 + 2414);
      *(a1 + 136) = 1;
      *(a1 + 112) = v28;
      *(a1 + 128) = 0;
      if (v17)
      {
        OUTLINED_FUNCTION_14_9();
        if (!lpta_tstctxtr())
        {
          v18 = OUTLINED_FUNCTION_14_9();
          setscan_l(v18);
          if (!v19 && !savetok(a1, v24))
          {
            advance_tok(a1);
          }
        }

        v20 = *(a1 + 2402) - v25 + HIWORD(v26);
      }

      else if (lpta_tstmover() || (v21 = OUTLINED_FUNCTION_14_9(), setscan_l(v21), v22) || savetok(a1, v24) || advance_tok(a1))
      {
        v20 = *(a1 + 2402);
      }

      else
      {
        v20 = *(a1 + 2402) - v25;
      }

      HIWORD(v26) = v20;
    }

    else
    {
      v20 = HIWORD(v26);
    }

    *(a3 + 2) = v20;
    vretproc(a1);
    result = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t forced_synthesis(uint64_t a1, __int16 *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v25[0] = 0;
  v25[1] = 0;
  OUTLINED_FUNCTION_10_11();
  bzero(v24, v4);
  OUTLINED_FUNCTION_9_11();
  bzero(v29, v5);
  if (setjmp(v29) || ventproc(a1, v24, v28, v27, v26, v29))
  {
LABEL_3:
    vretproc(a1);
    result = 94;
    goto LABEL_4;
  }

  get_parm(a1, v25, a2, -6);
  fence_13(a1);
  if (*(a1 + 2422) != 1)
  {
    v8 = 0;
LABEL_9:
    if (*(a1 + 2606) > *(a1 + 2538))
    {
LABEL_10:
      if (*(a1 + 2430) != 1 || (OUTLINED_FUNCTION_24_6(), !v9))
      {
LABEL_12:
        starttest(a1, 5);
        OUTLINED_FUNCTION_23_6();
        bspush_ca_boa();
        v10 = OUTLINED_FUNCTION_4_11();
        if (lpta_loadp_setscan_l(v10, v11))
        {
          v12 = v8;
        }

        else
        {
          v12 = 1;
        }

        while (1)
        {
          v13 = *(a1 + 104);
          if (v13)
          {
            v14 = OUTLINED_FUNCTION_19_6(v13);
            v8 = v15;
          }

          else
          {
            v14 = vback(a1, v12);
            v8 = 0;
          }

          switch(v14)
          {
            case 1:
              goto LABEL_9;
            case 2:
              goto LABEL_6;
            case 3:
              goto LABEL_10;
            case 4:
              goto LABEL_12;
            case 5:
              v16 = OUTLINED_FUNCTION_17_8();
              starttest(v16, v17);
              v18 = OUTLINED_FUNCTION_4_11();
              if (lpta_loadp_setscan_r(v18, v19))
              {
                goto LABEL_20;
              }

              v22 = testFldeq(a1, 1u, 3, 4);
              v12 = v8;
              if (!v22)
              {
                v23 = advance_tok(a1);
                v12 = v8;
                if (!v23)
                {
                  goto LABEL_3;
                }
              }

              continue;
            case 6:
              bspop_boa(a1);
              goto LABEL_3;
            case 7:
LABEL_20:
              v20 = OUTLINED_FUNCTION_13_11();
              starttest(v20, v21);
              OUTLINED_FUNCTION_18_7();
              bspush_ca_boa();
              bspush_ca(a1);
              v12 = v8;
              if (*(a1 + 2694) == *(a1 + 2670))
              {
                goto LABEL_25;
              }

              continue;
            case 8:
              goto LABEL_31;
            case 9:
              bspop_boa(a1);
              count_input(a1, a1 + 2424);
LABEL_31:
              if (*(a1 + 2434) <= *(a1 + 2426))
              {
                goto LABEL_6;
              }

              goto LABEL_3;
            case 10:
              bspush_ca(a1);
              v12 = v8;
              if (*(a1 + 2614) > 0)
              {
                continue;
              }

              goto LABEL_25;
            case 11:
              goto LABEL_25;
            case 12:
              v12 = v8;
              if (*(a1 + 2614) < 10)
              {
                continue;
              }

LABEL_25:
              v12 = 1;
              break;
            case 13:
              goto LABEL_7;
            default:
              goto LABEL_3;
          }
        }
      }
    }

    goto LABEL_3;
  }

LABEL_6:
  create_sentence();
LABEL_7:
  vretproc(a1);
  result = 0;
LABEL_4:
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t single_chars_forced_syn(uint64_t a1, __int16 *a2, __int16 *a3, uint64_t a4, __int16 *a5, __int16 *a6)
{
  v36 = *MEMORY[0x277D85DE8];
  v30 = 0;
  v31 = 0;
  v28 = 0;
  v29 = 0;
  v26 = 0;
  v27 = 0;
  v25 = 0;
  OUTLINED_FUNCTION_10_11();
  bzero(v24, v12);
  OUTLINED_FUNCTION_9_11();
  bzero(v35, v13);
  if (setjmp(v35) || ventproc(a1, v24, v34, v33, v32, v35))
  {
    vretproc(a1);
    result = 94;
  }

  else
  {
    v16 = OUTLINED_FUNCTION_13_11();
    get_parm(v16, v17, a2, -6);
    v18 = OUTLINED_FUNCTION_17_8();
    get_parm(v18, v19, a3, -6);
    get_parm(a1, &v26, a4, -6);
    v20 = OUTLINED_FUNCTION_4_11();
    get_parm(v20, v21, a5, -4);
    get_parm(a1, &v25, a6, -4);
    fence_13(a1);
    OUTLINED_FUNCTION_13_11();
    count_cumulative_chars();
    v22 = HIWORD(v25);
    if (*(a1 + 2434) <= (WORD1(v25) + HIWORD(v25)))
    {
      *(a1 + 2422) = 1;
      v23 = v29;
      v27 = v29;
    }

    else
    {
      v23 = v27;
    }

    *(a4 + 8) = v23;
    a5[1] = v22;
    vretproc(a1);
    result = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t get_input(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v23 = 65532;
  OUTLINED_FUNCTION_10_11();
  bzero(v22, v2);
  OUTLINED_FUNCTION_9_11();
  bzero(v33, v3);
  v4 = setjmp(v33);
  if (v4 || OUTLINED_FUNCTION_7_11(v4, v5, v6, v7, v8, v9, v10, v11, v22[0], v22[1], v22[2], v22[3], v22[4], v22[5], v22[6], v22[7], v22[8], v22[9], v22[10], v22[11], v22[12], v22[13], v22[14], v22[15], v22[16], v22[17], v22[18], v22[19], v22[20], v22[21], v22[22], v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33[0]))
  {
    vretproc(a1);
    result = 94;
  }

  else
  {
    fence_13(a1);
    v14 = *(a1 + 2402);
    count_input(a1, &v23);
    if (no_readin(a1))
    {
      v15 = OUTLINED_FUNCTION_3_12();
      startloop(v15, v16);
      v17 = v14;
      while (1)
      {
        v18 = v17;
        get_tok(a1);
        v19 = *(a1 + 2402);
        HIWORD(v23) += v19 - v18;
        OUTLINED_FUNCTION_24_6();
        if (v20)
        {
          *(a1 + 2336) = *(a1 + 1392);
          goto LABEL_16;
        }

        lpta_loadpn(a1, a1 + 2480);
        rpta_loadpn(a1, a1 + 3344);
        if (!compare_ptas(a1) && !testneq(a1))
        {
          break;
        }

        if (*(a1 + 2438) <= SHIWORD(v23))
        {
          *(a1 + 2488) = *(a1 + 2336);
          goto LABEL_16;
        }

        potential_sent_end();
        v17 = v19;
        if (!v21)
        {
          goto LABEL_16;
        }
      }

      get_tok(a1);
    }

LABEL_16:
    vretproc(a1);
    result = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t no_readin(uint64_t a1)
{
  v43 = *MEMORY[0x277D85DE8];
  v32 = 0;
  OUTLINED_FUNCTION_10_11();
  bzero(v31, v2);
  OUTLINED_FUNCTION_9_11();
  bzero(v42, v3);
  v4 = setjmp(v42);
  if (v4)
  {
    goto LABEL_4;
  }

  v12 = OUTLINED_FUNCTION_7_11(v4, v5, v6, v7, v8, v9, v10, v11, v31[0], v31[1], v31[2], v31[3], v31[4], v31[5], v31[6], v31[7], v31[8], v31[9], v31[10], v31[11], v31[12], v31[13], v31[14], v31[15], v31[16], v31[17], v31[18], v31[19], v31[20], v31[21], v31[22], v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42[0]);
  if (v12)
  {
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_21_6(v12, &v32);
  fence_13(a1);
  if (*(a1 + 2438) > SHIWORD(v32))
  {
    goto LABEL_4;
  }

  while (2)
  {
    v15 = OUTLINED_FUNCTION_16_9();
    if (!lpta_loadp_setscan_r(v15, v16))
    {
      *(a1 + 136) = 1;
      v17 = *(a1 + 1392);
      v18 = OUTLINED_FUNCTION_1_12();
      if (!test_ptr(v18))
      {
        goto LABEL_4;
      }
    }

LABEL_8:
    if (*(a1 + 2418) != 1)
    {
LABEL_16:
      if (!lpta_loadp_setscan_r(a1, a1 + 2448) && !advance_tok(a1) && !advance_tok(a1) && !advance_tok(a1) && !advance_tok(a1) && !advance_tok(a1))
      {
        goto LABEL_9;
      }

LABEL_4:
      vretproc(a1);
      result = 94;
      goto LABEL_5;
    }

LABEL_9:
    starttest(a1, 6);
    v19 = OUTLINED_FUNCTION_16_9();
    if (!lpta_loadp_setscan_l(v19, v20))
    {
LABEL_10:
      while (1)
      {
        OUTLINED_FUNCTION_12_11();
        if (test_string_s())
        {
          break;
        }

        v23 = OUTLINED_FUNCTION_4_11();
        bspush_ca_scan(v23, v24);
      }

      v21 = *(a1 + 104);
      if (v21)
      {
        v22 = OUTLINED_FUNCTION_19_6(v21);
      }

      else
      {
        v25 = OUTLINED_FUNCTION_14_9();
        v22 = vback(v25, v26);
      }

      switch(v22)
      {
        case 1:
          continue;
        case 2:
          goto LABEL_9;
        case 3:
          goto LABEL_8;
        case 4:
          goto LABEL_16;
        case 6:
          goto LABEL_24;
        case 7:
          savescptr(a1, 7, a1 + 2328);
          goto LABEL_24;
        case 8:
          goto LABEL_10;
        case 9:
          goto LABEL_27;
        default:
          goto LABEL_4;
      }
    }

    break;
  }

LABEL_24:
  v27 = OUTLINED_FUNCTION_16_9();
  if (!lpta_loadp_setscan_r(v27, v28))
  {
    *(a1 + 136) = 1;
    v29 = *(a1 + 2336);
    v30 = OUTLINED_FUNCTION_1_12();
    if (!test_ptr(v30))
    {
      *(a1 + 2336) = *(a1 + 2320);
    }
  }

LABEL_27:
  *(a1 + 2488) = *(a1 + 2336);
  vretproc(a1);
  result = 0;
LABEL_5:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t get_tok(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_10_11();
  bzero(v24, v2);
  OUTLINED_FUNCTION_9_11();
  bzero(v28, v3);
  if (!setjmp(v28) && !ventproc(a1, v24, v27, v26, v25, v28))
  {
    fence_13(a1);
    OUTLINED_FUNCTION_24_6();
    if (!v4)
    {
      v7 = 0;
LABEL_7:
      starttest(a1, 2);
      while (1)
      {
        bspush_ca_boa();
        v8 = gettok(a1);
        while (2)
        {
          if (v8)
          {
            v9 = v7;
          }

          else
          {
            v9 = 1;
          }

LABEL_12:
          v10 = *(a1 + 104);
          if (v10)
          {
            v11 = OUTLINED_FUNCTION_19_6(v10);
            v7 = v12;
          }

          else
          {
            v11 = vback(a1, v9);
            v7 = 0;
          }

          switch(v11)
          {
            case 1:
              goto LABEL_7;
            case 2:
              insert_char_count(a1);
              goto LABEL_17;
            case 3:
            case 10:
              bspop_boa(a1);
              goto LABEL_5;
            case 4:
LABEL_17:
              if (*(a1 + 5926) != 1)
              {
                goto LABEL_24;
              }

              OUTLINED_FUNCTION_24_6();
              if (v4)
              {
                if (*(a1 + 2350))
                {
                  goto LABEL_5;
                }

                v13 = OUTLINED_FUNCTION_23_6();
                starttest(v13, v14);
                OUTLINED_FUNCTION_4_11();
                bspush_ca_boa();
                v15 = OUTLINED_FUNCTION_26_6();
                v17 = lpta_loadp_setscan_r(v15, v16);
                v9 = v7;
                if (!v17)
                {
                  v8 = advance_tok(a1);
                  continue;
                }

                goto LABEL_12;
              }

LABEL_29:
              v22 = OUTLINED_FUNCTION_17_8();
              starttest(v22, v23);
              OUTLINED_FUNCTION_13_11();
              break;
            case 5:
              goto LABEL_24;
            case 6:
              goto LABEL_29;
            case 8:
              bspop_boa(a1);
              text_index(a1, (a1 + 2312));
              goto LABEL_5;
            case 9:
              insert_char_count(a1);
LABEL_24:
              v18 = OUTLINED_FUNCTION_18_7();
              starttest(v18, v19);
              v20 = OUTLINED_FUNCTION_20_6();
              if (lpta_loadp_setscan_l(v20, v21))
              {
                goto LABEL_33;
              }

              goto LABEL_27;
            case 11:
              goto LABEL_33;
            case 12:
              savescptr(a1, 12, a1 + 2328);
LABEL_33:
              vretproc(a1);
              result = 0;
              goto LABEL_6;
            case 13:
LABEL_27:
              while (!test_string_s())
              {
                bspush_ca_scan(a1, 12);
              }

              v9 = v7;
              goto LABEL_12;
            default:
              goto LABEL_5;
          }

          break;
        }
      }
    }
  }

LABEL_5:
  vretproc(a1);
  result = 94;
LABEL_6:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t gettok(uint64_t a1)
{
  v179 = *MEMORY[0x277D85DE8];
  v173[0] = 0;
  v173[1] = 0;
  v174 = 0;
  v171[0] = 0;
  v171[1] = 0;
  v172 = 0;
  v169 = 0;
  v170 = 0;
  OUTLINED_FUNCTION_10_11();
  bzero(v168, v2);
  OUTLINED_FUNCTION_9_11();
  bzero(v178, v3);
  if (setjmp(v178) || ventproc(a1, v168, v177, v176, v175, v178))
  {
LABEL_3:
    vretproc(a1);
    result = 94;
  }

  else
  {
    WORD2(v174) = 0;
    LODWORD(v174) = 0;
    LODWORD(v173[0]) = -65535;
    WORD2(v172) = 0;
    LODWORD(v172) = 0;
    LODWORD(v171[0]) = -65535;
    push_ptr_init(a1, &v169);
    fence_13(a1);
    v167 = *(a1 + 2402);
    *(a1 + 2418) = 0;
    *(a1 + 5926) = 0;
    *(a1 + 2320) = *(a1 + 1392);
    v6 = OUTLINED_FUNCTION_16_9();
    if (!lpta_loadp_setscan_r(v6, v7))
    {
      *(a1 + 136) = 1;
      v8 = *(a1 + 368);
      v9 = OUTLINED_FUNCTION_1_12();
      if (!test_ptr(v9))
      {
        print_prompt(a1);
      }
    }

    v10 = 0;
    v11 = 1;
    v12 = 0;
    v13 = 0;
LABEL_9:
    startloop(a1, 2);
LABEL_10:
    v14 = v13;
    do
    {
      do
      {
        v15 = v14;
        v16 = OUTLINED_FUNCTION_8_11();
        copyvar(v16, v173, v17);
        if (*(a1 + 2354) != 1)
        {
          v23 = OUTLINED_FUNCTION_3_12();
          starttest_l(v23, v24);
          bspush_ca_boa();
          v25 = OUTLINED_FUNCTION_8_11();
          tvar = read_tvar(v25, 6, v26, v27, v28, v29, v30, v31);
LABEL_28:
          if (tvar)
          {
            v22 = v15;
          }

          else
          {
            v22 = 1;
          }

LABEL_36:
          v21 = v12;
          goto LABEL_37;
        }

LABEL_12:
        v13 = v15;
        v18 = v12;
        ++*(a1 + 2402);
        *(a1 + 2354) = 0;
        starttest(a1, 6);
        settvar_s();
        v19 = OUTLINED_FUNCTION_8_11();
        if (testeq_tvars(v19, v171, v20))
        {
          v21 = v12;
          goto LABEL_14;
        }

        v33 = v10;
        v10 = 1;
        v34 = 1;
        v14 = v13;
        v35 = v11;
        v36 = v13;
      }

      while (v33 != 1);
LABEL_17:
      v37 = v36;
      v12 = v18;
      v10 = v34;
      *(a1 + 2346) = 0;
      if (v35 == 1)
      {
        starttest_e(a1, 30);
        v38 = OUTLINED_FUNCTION_15_9();
        if (!lpta_loadp_setscan_l(v38, v39))
        {
          bspush_ca_scan_boa();
          v11 = 1;
          if (testFldeq(a1, 1u, 0, 72))
          {
            v22 = v37;
          }

          else
          {
            v22 = 1;
          }

          goto LABEL_36;
        }

        v11 = 1;
      }

      else
      {
        v11 = v35;
      }

      v15 = v37;
LABEL_22:
      starttest(a1, 32);
      v40 = OUTLINED_FUNCTION_15_9();
      if (!lpta_loadp_setscan_l(v40, v41))
      {
        bspush_ca_scan_boa();
        tvar = advanc(a1);
        goto LABEL_28;
      }

      v42 = v11;
      v13 = v15;
LABEL_24:
      *(a1 + 168) = 1;
      v43 = v10;
      *(a1 + 144) = *(a1 + 1392);
      *(a1 + 128) = 0;
      v44 = OUTLINED_FUNCTION_12_11();
      insert_l(v44);
      lpta_storep(a1, &v169);
      OUTLINED_FUNCTION_8_11();
      insert_2ptv();
      v11 = v42;
      v21 = v12;
      v22 = v13;
      v45 = v42;
      if (v46)
      {
        goto LABEL_37;
      }

LABEL_25:
      v21 = v12;
      starttest(a1, 35);
      settvar_s();
      v47 = OUTLINED_FUNCTION_8_11();
      if (testeq_tvars(v47, v171, v48))
      {
        v10 = v43;
        v11 = v45;
LABEL_14:
        v22 = v13;
LABEL_37:
        v54 = v21;
        while (2)
        {
          v12 = v54;
          v55 = *(a1 + 104);
          if (v55)
          {
            v56 = OUTLINED_FUNCTION_19_6(v55);
            v13 = v57;
          }

          else
          {
            v56 = vback(a1, v22);
            v13 = 0;
          }

          v58 = v56 - 1;
          v59 = v12;
          v34 = v10;
          v35 = v11;
          v18 = v12;
          v36 = v13;
          v43 = v10;
          v52 = v11;
          v53 = v13;
          switch(v58)
          {
            case 0:
              goto LABEL_9;
            case 1:
            case 12:
            case 23:
              goto LABEL_118;
            case 2:
            case 45:
              goto LABEL_10;
            case 3:
              goto LABEL_89;
            case 4:
              bspop_boa(a1);
              OUTLINED_FUNCTION_25_6();
              settvar_s();
LABEL_89:
              v15 = v13;
              goto LABEL_12;
            case 5:
              v60 = OUTLINED_FUNCTION_3_12();
              starttest(v60, v61);
              OUTLINED_FUNCTION_0_13();
              settvar_s();
              v62 = OUTLINED_FUNCTION_4_11();
              testeq_tvars(v62, v63, v64);
              OUTLINED_FUNCTION_6_11();
              if (v65)
              {
                continue;
              }

              if (v10 != 1)
              {
                goto LABEL_44;
              }

              v34 = 1;
              goto LABEL_108;
            case 6:
              v10 = 1;
              goto LABEL_10;
            case 7:
            case 8:
            case 11:
            case 17:
              goto LABEL_17;
            case 9:
              v76 = OUTLINED_FUNCTION_3_12();
              starttest(v76, v77);
              OUTLINED_FUNCTION_0_13();
              settvar_s();
              v78 = OUTLINED_FUNCTION_4_11();
              testeq_tvars(v78, v79, v80);
              OUTLINED_FUNCTION_6_11();
              if (v81)
              {
                continue;
              }

              if (v11)
              {
                goto LABEL_50;
              }

              *(a1 + 2354) = 1;
              --*(a1 + 2402);
              goto LABEL_118;
            case 10:
LABEL_44:
              *(a1 + 2386) = 1;
              ++*(a1 + 2346);
              --*(a1 + 2402);
              if (*(a1 + 2350))
              {
                goto LABEL_118;
              }

              v66 = OUTLINED_FUNCTION_3_12();
              starttest(v66, v67);
              OUTLINED_FUNCTION_3_12();
              bspush_ca_boa();
              v68 = OUTLINED_FUNCTION_26_6();
              goto LABEL_68;
            case 13:
              goto LABEL_113;
            case 14:
              bspop_boa(a1);
              v164 = OUTLINED_FUNCTION_15_9();
              text_index(v164, v165);
LABEL_113:
              *(a1 + 2406) = 0;
              goto LABEL_3;
            case 15:
              v95 = OUTLINED_FUNCTION_3_12();
              starttest(v95, v96);
              OUTLINED_FUNCTION_0_13();
              settvar_s();
              v97 = OUTLINED_FUNCTION_4_11();
              testeq_tvars(v97, v98, v99);
              OUTLINED_FUNCTION_6_11();
              if (v100)
              {
                continue;
              }

              OUTLINED_FUNCTION_25_6();
              settvar_s();
              npush_s(a1);
              *(a1 + 2362) = 4;
              v153 = OUTLINED_FUNCTION_25_6();
              npop(v153, v154);
              v34 = v10;
LABEL_108:
              v35 = v11;
              v18 = v12;
              v36 = v13;
              goto LABEL_17;
            case 16:
LABEL_50:
              v82 = OUTLINED_FUNCTION_3_12();
              startloop(v82, v83);
              v59 = 1;
              goto LABEL_51;
            case 18:
            case 27:
              goto LABEL_51;
            case 19:
              v70 = OUTLINED_FUNCTION_3_12();
              starttest(v70, v71);
              OUTLINED_FUNCTION_0_13();
              settvar_s();
              v72 = OUTLINED_FUNCTION_4_11();
              testeq_tvars(v72, v73, v74);
              OUTLINED_FUNCTION_6_11();
              if (v75)
              {
                continue;
              }

              v59 = (v12 + 1);
              ++*(a1 + 2402);
LABEL_51:
              v84 = v59;
              v85 = OUTLINED_FUNCTION_3_12();
              starttest(v85, v86);
              OUTLINED_FUNCTION_3_12();
              bspush_ca_boa();
              v87 = OUTLINED_FUNCTION_8_11();
              if (read_tvar(v87, 6, v88, v89, v90, v91, v92, v93))
              {
                v22 = v13;
              }

              else
              {
                v22 = 1;
              }

              v54 = v84;
              continue;
            case 20:
              bspop_boa(a1);
              OUTLINED_FUNCTION_25_6();
              settvar_s();
              goto LABEL_66;
            case 21:
LABEL_66:
              v114 = OUTLINED_FUNCTION_3_12();
              starttest(v114, v115);
              OUTLINED_FUNCTION_17_8();
              settvar_s();
              v116 = OUTLINED_FUNCTION_8_11();
              testeq_tvars(v116, v171, v117);
              OUTLINED_FUNCTION_6_11();
              if (!v118)
              {
                *(a1 + 2386) = 1;
                *(a1 + 5926) = 1;
                ++*(a1 + 2346);
                *(a1 + 2354) = 0;
                v119 = OUTLINED_FUNCTION_3_12();
                starttest(v119, v120);
                OUTLINED_FUNCTION_3_12();
                bspush_ca_boa();
                v68 = OUTLINED_FUNCTION_26_6();
LABEL_68:
                lpta_loadp_setscan_r(v68, v69);
                OUTLINED_FUNCTION_6_11();
                if (!v121)
                {
                  if (advance_tok(a1))
                  {
                    v22 = v13;
                  }

                  else
                  {
                    v22 = 1;
                  }

                  v54 = v12;
                }
              }

              continue;
            case 22:
              *(a1 + 2354) = 1;
              v101 = OUTLINED_FUNCTION_3_12();
              starttest(v101, v102);
              v103 = OUTLINED_FUNCTION_26_6();
              if (lpta_loadp_setscan_r(v103, v104) || advance_tok(a1))
              {
                goto LABEL_60;
              }

              *(a1 + 168) = 1;
              OUTLINED_FUNCTION_5_11();
              v134 = OUTLINED_FUNCTION_11_11();
              insert_l(v134);
              v135 = OUTLINED_FUNCTION_20_6();
              lpta_storep(v135, v136);
              v137 = OUTLINED_FUNCTION_11_11();
              insert_2pt_s(v137, v138, v139, &_MergedGlobals_7, 0);
              OUTLINED_FUNCTION_6_11();
              if (v140)
              {
                continue;
              }

              *(a1 + 168) = 1;
              *(a1 + 144) = *(a1 + 2304);
              *(a1 + 136) = 1;
              OUTLINED_FUNCTION_2_12();
              v166 = OUTLINED_FUNCTION_14_9();
              proj_l(v166);
LABEL_115:
              if (v12 >= 2)
              {
                *(a1 + 168) = 1;
                OUTLINED_FUNCTION_5_11();
                insert_l(a1);
              }

LABEL_117:
              *(a1 + 5926) = 1;
              goto LABEL_118;
            case 24:
              bspop_boa(a1);
              *(a1 + 2304) = *(a1 + 1408);
              *(a1 + 2406) = 0;
              goto LABEL_118;
            case 25:
LABEL_60:
              *(a1 + 168) = 1;
              OUTLINED_FUNCTION_5_11();
              insert_l(a1);
              v105 = OUTLINED_FUNCTION_20_6();
              lpta_storep(v105, v106);
              insert_2pt_s(a1, 1u, 1, &_MergedGlobals_7, 0);
              OUTLINED_FUNCTION_6_11();
              if (!v107)
              {
                goto LABEL_115;
              }

              continue;
            case 26:
            case 28:
              goto LABEL_117;
            case 29:
              goto LABEL_106;
            case 30:
              bspop_boa(a1);
              advance_tok(a1);
              OUTLINED_FUNCTION_6_11();
              if (v108)
              {
                continue;
              }

              *(a1 + 168) = 1;
              OUTLINED_FUNCTION_5_11();
              v109 = OUTLINED_FUNCTION_11_11();
              insert_l(v109);
              lpta_storep(a1, &v169);
              v110 = OUTLINED_FUNCTION_11_11();
              insert_2pt_s(v110, v111, v112, &_MergedGlobals_7, 0);
              OUTLINED_FUNCTION_6_11();
              if (v113)
              {
                continue;
              }

              *(a1 + 168) = 1;
              *(a1 + 144) = v170;
              *(a1 + 136) = 1;
              OUTLINED_FUNCTION_2_12();
              v161 = OUTLINED_FUNCTION_14_9();
              proj_l(v161);
LABEL_106:
              v15 = v13;
              goto LABEL_22;
            case 31:
              v42 = v11;
              goto LABEL_24;
            case 32:
              bspop_boa(a1);
              advance_tok(a1);
              OUTLINED_FUNCTION_6_11();
              if (v126)
              {
                continue;
              }

              *(a1 + 168) = 1;
              OUTLINED_FUNCTION_5_11();
              insert_l(a1);
              v127 = OUTLINED_FUNCTION_13_11();
              lpta_storep(v127, v128);
              v129 = OUTLINED_FUNCTION_13_11();
              lpta_rpta_loadp(v129, v130, v131);
              OUTLINED_FUNCTION_8_11();
              insert_2ptv();
              OUTLINED_FUNCTION_6_11();
              if (v132)
              {
                continue;
              }

              *(a1 + 168) = 1;
              *(a1 + 144) = v170;
              *(a1 + 136) = 1;
              v162 = *(a1 + 1392);
              v163 = OUTLINED_FUNCTION_1_12();
              proj_l(v163);
              goto LABEL_109;
            case 33:
LABEL_109:
              v43 = v10;
              v45 = v11;
              goto LABEL_25;
            case 34:
              v141 = v10;
              goto LABEL_84;
            case 35:
            case 37:
              v94 = OUTLINED_FUNCTION_3_12();
              bspush_ca(v94);
              OUTLINED_FUNCTION_0_13();
              goto LABEL_74;
            case 36:
              goto LABEL_83;
            case 38:
              OUTLINED_FUNCTION_0_13();
LABEL_74:
              settvar_s();
              v122 = OUTLINED_FUNCTION_4_11();
              testeq_tvars(v122, v123, v124);
              OUTLINED_FUNCTION_6_11();
              if (v125)
              {
                continue;
              }

              v43 = v10;
              v52 = v11;
              v53 = v13;
              goto LABEL_83;
            case 39:
              v141 = v10;
              goto LABEL_91;
            case 40:
              v145 = v10;
              v146 = v11;
              v144 = v12;
              goto LABEL_97;
            case 41:
              goto LABEL_95;
            case 42:
              bspop_boa(a1);
              advance_tok(a1);
              OUTLINED_FUNCTION_6_11();
              if (v133)
              {
                continue;
              }

              v155 = OUTLINED_FUNCTION_3_12();
              bspush_ca_scan(v155, v156);
              goto LABEL_102;
            case 43:
              savescptr(a1, 44, a1 + 1416);
LABEL_95:
              v145 = v10;
              v146 = v11;
              v144 = v12;
              goto LABEL_100;
            case 44:
LABEL_102:
              v152 = v13;
              goto LABEL_103;
            default:
              goto LABEL_3;
          }
        }
      }

      bspush_ca(a1);
      OUTLINED_FUNCTION_18_7();
      settvar_s();
      v49 = OUTLINED_FUNCTION_18_7();
      v51 = testeq_tvars(v49, v50, v173);
      v10 = v43;
      v11 = v45;
      v22 = v13;
      v52 = v45;
      v53 = v13;
      if (v51)
      {
        goto LABEL_37;
      }

LABEL_83:
      v13 = v53;
      LODWORD(v11) = v52;
      *(a1 + 2488) = v170;
      v141 = v43;
LABEL_84:
      if (v11 == 1)
      {
        v142 = v170;
        *(a1 + 2304) = v170;
        *(a1 + 168) = 1;
        *(a1 + 144) = v142;
        *(a1 + 136) = 1;
        OUTLINED_FUNCTION_2_12();
        v143 = OUTLINED_FUNCTION_14_9();
        proj_l(v143);
      }

LABEL_91:
      *(a1 + 2354) = 0;
      if (v141 == 1)
      {
        lpta_rpta_loadp(a1, &v169, a1 + 1384);
        v144 = 0;
        OUTLINED_FUNCTION_12_11();
        v145 = mark_s() != 0;
        v146 = 0;
      }

      else
      {
        v145 = v141;
        v146 = 0;
        v144 = 0;
      }

LABEL_97:
      *(a1 + 2350) = 1;
      lpta_loadpn(a1, a1 + 1416);
      v147 = OUTLINED_FUNCTION_15_9();
      rpta_loadpn(v147, v148);
      if (!compare_ptas(a1) && !testeq(a1))
      {
        starttest_e(a1, 42);
        v149 = OUTLINED_FUNCTION_15_9();
        v151 = lpta_loadp_setscan_l(v149, v150);
        v10 = v145;
        v11 = v146;
        v12 = v144;
        v152 = v13;
        if (!v151)
        {
LABEL_103:
          v157 = v152;
          bspush_ca_scan_boa();
          v158 = OUTLINED_FUNCTION_12_11();
          if (testFldeq(v158, v159, v160, 72))
          {
            v22 = v157;
          }

          else
          {
            v22 = 1;
          }

          goto LABEL_36;
        }
      }

LABEL_100:
      v12 = v144;
      v11 = v146;
      v10 = v145;
      *(a1 + 2274) = 0;
      v14 = v13;
    }

    while (*(a1 + 2442) > (*(a1 + 2402) - v167));
    *(a1 + 2418) = 1;
LABEL_118:
    vretproc(a1);
    result = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t insert_char_count(uint64_t a1)
{
  v43 = *MEMORY[0x277D85DE8];
  v30 = 0;
  v31 = 0;
  OUTLINED_FUNCTION_10_11();
  bzero(v29, v2);
  OUTLINED_FUNCTION_9_11();
  bzero(v42, v3);
  v4 = setjmp(v42);
  if (v4 || OUTLINED_FUNCTION_22_6(v4, v29, v5, v6, v7, v8, v9, v10, v29[0], v29[1], v29[2], v29[3], v29[4], v29[5], v29[6], v29[7], v29[8], v29[9], v29[10], v29[11], v29[12], v29[13], v29[14], v29[15], v29[16], v29[17], v29[18], v29[19], v29[20], v29[21], v29[22], v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42[0]))
  {
LABEL_3:
    vretproc(a1);
    result = 94;
    goto LABEL_4;
  }

  push_ptr_init(a1, &v30);
  fence_13(a1);
  v31 = *(a1 + 3352);
  v13 = OUTLINED_FUNCTION_20_6();
  lpta_loadpn(v13, v14);
  rpta_loadpn(a1, a1 + 3344);
  if (compare_ptas(a1) || testeq(a1))
  {
LABEL_11:
    v18 = OUTLINED_FUNCTION_3_12();
    starttest(v18, v19);
    v20 = OUTLINED_FUNCTION_15_9();
    if (lpta_loadp_setscan_l(v20, v21) || (*(a1 + 136) = 1, v22 = *(a1 + 2456), v23 = OUTLINED_FUNCTION_1_12(), test_ptr(v23)) || lpta_loadp_setscan_l(a1, a1 + 2312) || advance_tok(a1))
    {
LABEL_16:
      copyvar(a1, &v30, (a1 + 2296));
      goto LABEL_17;
    }

LABEL_15:
    v17 = 6;
  }

  else
  {
    v15 = OUTLINED_FUNCTION_3_12();
    starttest_e(v15, v16);
    if (lpta_loadp_setscan_l(a1, a1 + 2312) || advance_tok(a1))
    {
      goto LABEL_17;
    }

LABEL_9:
    v17 = 3;
  }

  savescptr(a1, v17, &v30);
LABEL_17:
  while (2)
  {
    lpta_rpta_loadp(a1, &v30, a1 + 2312);
    OUTLINED_FUNCTION_12_11();
    insert_2ptv();
    if (v24)
    {
      v25 = *(a1 + 104);
      if (v25)
      {
        v26 = OUTLINED_FUNCTION_19_6(v25);
      }

      else
      {
        v27 = OUTLINED_FUNCTION_12_11();
        v26 = vback(v27, v28);
      }

      switch(v26)
      {
        case 1:
          goto LABEL_11;
        case 2:
        case 4:
          continue;
        case 3:
          goto LABEL_9;
        case 5:
          goto LABEL_16;
        case 6:
          goto LABEL_15;
        default:
          goto LABEL_3;
      }
    }

    break;
  }

  vretproc(a1);
  result = 0;
LABEL_4:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t OUTLINED_FUNCTION_1_12()
{
  *(v1 + 112) = v0;
  *(v1 + 128) = 0;
  return v1;
}

uint64_t OUTLINED_FUNCTION_7_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, char a33, int a34, __int16 a35, char a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, char a42)
{

  return ventproc(v42, &a9, &a40, &a36, &a33, &a42);
}

void OUTLINED_FUNCTION_21_6(uint64_t a1, uint64_t a2)
{

  get_parm(v2, a2, v3, -4);
}

uint64_t OUTLINED_FUNCTION_22_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, char a35, int a36, __int16 a37, char a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, char a44)
{

  return ventproc(v44, a2, &a42, &a38, &a35, &a44);
}

void *fence_14(uint64_t a1, int a2, uint64_t a3)
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

void build_phrases()
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_3_13();
  v1 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_77_0();
  v66 = 0;
  v67 = 0;
  OUTLINED_FUNCTION_23_7();
  bzero(v65, v2);
  OUTLINED_FUNCTION_22_7();
  bzero(v81, v3);
  v4 = setjmp(v81);
  if (!v4 && !OUTLINED_FUNCTION_80_0(v4, v65, v5, v6, v7, v8, v9, v10, v58, v59, v60, v61, v62, v63, v64, v65[0], v65[1], v65[2], v65[3], v65[4], v65[5], v65[6], v65[7], v65[8], v65[9], v65[10], v65[11], v65[12], v65[13], v65[14], v65[15], v65[16], v65[17], v65[18], v65[19], v65[20], v65[21], v65[22], v66, v67, v68[0], v68[1], v69[0], v69[1], v69[2], v69[3], v69[4], v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81[0]))
  {
    v12 = OUTLINED_FUNCTION_11_12();
    get_parm(v12, v13, v14, -6);
    v15 = OUTLINED_FUNCTION_28_4();
    get_parm(v15, v16, v17, -6);
    push_ptr_init(v0, v69);
    push_ptr_init(v0, v68);
    push_ptr_init(v0, &v66);
    fence_14(v0, 0, &null_str_3);
    lpta_loadpn(v0, v0 + 1400);
    v18 = OUTLINED_FUNCTION_24_7();
    rpta_loadpn(v18, v19);
    OUTLINED_FUNCTION_21_7();
    rpta_ctxtl();
    if (compare_ptas(v0) || testeq(v0))
    {
      v20 = 0;
LABEL_7:
      starttest(v0, 2);
      OUTLINED_FUNCTION_42_0();
      bspush_ca_boa();
      *(v0 + 136) = 1;
      *(v0 + 112) = v70;
      *(v0 + 128) = 0;
      OUTLINED_FUNCTION_26_7();
      if (!lpta_tstctxtl())
      {
        OUTLINED_FUNCTION_26_7();
        if (!lpta_tstmovel())
        {
          v21 = OUTLINED_FUNCTION_21_7();
          setscan_r(v21);
          if (!v22)
          {
            if (advance_tok(v0))
            {
              v20 = v20;
            }

            else
            {
              v20 = 1;
            }
          }
        }
      }

      while (1)
      {
        v23 = v20;
        while (2)
        {
          v24 = *(v0 + 104);
          if (v24)
          {
            *(v0 + 104) = 0;
            v25 = v24;
            v20 = v23;
          }

          else
          {
            v25 = vback(v0, v23);
            v20 = 0;
          }

          switch(v25)
          {
            case 1:
              goto LABEL_7;
            case 2:
              if (*(v0 + 2606) <= *(v0 + 2538))
              {
                OUTLINED_FUNCTION_42_0();
                delimit_sentence();
              }

              goto LABEL_20;
            case 3:
              bspop_boa(v0);
              goto LABEL_3;
            case 4:
LABEL_20:
              OUTLINED_FUNCTION_42_0();
              delimit_major_phrase();
              goto LABEL_21;
            case 5:
LABEL_21:
              mark_word_categories(v0);
              goto LABEL_22;
            case 6:
LABEL_22:
              apply_comma_phr_rules();
              goto LABEL_23;
            case 7:
LABEL_23:
              OUTLINED_FUNCTION_42_0();
              insert_major_phrase();
              goto LABEL_24;
            case 8:
LABEL_24:
              v26 = *(v0 + 5114);
              OUTLINED_FUNCTION_91();
              if (v28 || *(v0 + 5126) == v27)
              {
                goto LABEL_32;
              }

              v29 = OUTLINED_FUNCTION_88_0();
              startloop(v29, v30);
              v31 = OUTLINED_FUNCTION_64_0();
              lpta_loadpn(v31, v32);
              OUTLINED_FUNCTION_26_7();
              lpta_mover();
              v33 = OUTLINED_FUNCTION_59_0();
              lpta_storep(v33, v34);
              v35 = OUTLINED_FUNCTION_76_0();
              lpta_loadpn(v35, v36);
              OUTLINED_FUNCTION_26_7();
              lpta_mover();
              lpta_storep(v0, &v66);
              v37 = OUTLINED_FUNCTION_63_0();
              v39 = forall_to_test(v37, v38, &v66);
              v23 = v20;
              if (v39)
              {
                continue;
              }

LABEL_27:
              v40 = OUTLINED_FUNCTION_75_0();
              bspush_ca(v40);
              v41 = OUTLINED_FUNCTION_59_0();
              v43 = lpta_loadp_setscan_r(v41, v42);
              v23 = v20;
              if (v43)
              {
                continue;
              }

              v44 = advance_tok(v0);
              v23 = v20;
              if (v44)
              {
                continue;
              }

LABEL_29:
              v45 = OUTLINED_FUNCTION_74_0();
              savescptr(v45, v46, v68);
LABEL_30:
              v47 = OUTLINED_FUNCTION_19_7();
              starttest(v47, v48);
              OUTLINED_FUNCTION_59_0();
              adjust_words_in_phrase();
LABEL_31:
              v49 = OUTLINED_FUNCTION_19_7();
              v51 = forto_adv_upto_r(v49, v50, 10, 13, 5, v69);
              v23 = v20;
              if (v51)
              {
                continue;
              }

LABEL_32:
              v52 = OUTLINED_FUNCTION_25_7();
              starttest(v52, v53);
              v54 = OUTLINED_FUNCTION_63_0();
              if (lpta_loadp_setscan_r(v54, v55))
              {
                goto LABEL_3;
              }

              do
              {
LABEL_33:
                v56 = OUTLINED_FUNCTION_27_5();
                bspush_ca_scan(v56, v57);
                OUTLINED_FUNCTION_86_0();
              }

              while (!test_string_s());
              break;
            case 9:
              goto LABEL_32;
            case 10:
              goto LABEL_30;
            case 11:
              goto LABEL_31;
            case 12:
              goto LABEL_29;
            case 13:
              goto LABEL_27;
            case 15:
              savescptr(v0, 15, v0 + 1416);
              goto LABEL_3;
            case 16:
              goto LABEL_33;
            default:
              goto LABEL_3;
          }

          break;
        }
      }
    }
  }

LABEL_3:
  vretproc(v0);
  v11 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_60_0();
}

uint64_t delimit_sentence()
{
  OUTLINED_FUNCTION_3_13();
  v69 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_13(v2, v3, v4, v5, v6, v7, v8, v9, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67);
  OUTLINED_FUNCTION_22_7();
  OUTLINED_FUNCTION_96(v10, v11);
  if (setjmp(v1))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_52_0();
  if (ventproc(v0, v12, v13, v14, v15, v68))
  {
    goto LABEL_3;
  }

  v18 = OUTLINED_FUNCTION_11_12();
  get_parm(v18, v19, v20, -6);
  v21 = OUTLINED_FUNCTION_28_4();
  get_parm(v21, v22, v23, -6);
  v24 = OUTLINED_FUNCTION_30_3();
  push_ptr_init(v24, v25);
  v26 = OUTLINED_FUNCTION_29_4();
  push_ptr_init(v26, v27);
  v28 = OUTLINED_FUNCTION_33_2();
  fence_14(v28, v29, v30);
  *(v0 + 2390) = 1;
  v31 = OUTLINED_FUNCTION_24_7();
  lpta_loadpn(v31, v32);
  OUTLINED_FUNCTION_44_0();
  lpta_ctxtl();
  OUTLINED_FUNCTION_44_0();
  lpta_movel();
  lpta_storep(v0, v0 + 1240);
  v33 = OUTLINED_FUNCTION_93();
  lpta_loadpn(v33, v34);
  OUTLINED_FUNCTION_44_0();
  lpta_mover();
  v35 = OUTLINED_FUNCTION_93();
  lpta_storep(v35, v36);
  *(v0 + 136) = 1;
  OUTLINED_FUNCTION_66_0(*(v0 + 1232));
  OUTLINED_FUNCTION_26_7();
  proj_def();
  *(v0 + 136) = 1;
  OUTLINED_FUNCTION_66_0(*(v0 + 1248));
  OUTLINED_FUNCTION_26_7();
  proj_def();
  *(v0 + 1264) = 0;
  *(v0 + 136) = 1;
  OUTLINED_FUNCTION_66_0(0);
  proj_def_mult(v0, 8u, delimit_sentence_proj_str, v0 + 1256);
  starttest(v0, 1);
  OUTLINED_FUNCTION_81_0();
  bspush_ca_boa();
  v37 = lpta_loadp_setscan_l(v0, v0 + 1256);
  v38 = *(v0 + 104);
  if (v38)
  {
    v39 = OUTLINED_FUNCTION_31_3(v38);
  }

  else
  {
    v39 = vback(v0, v37 == 0);
  }

  if (v39 == 1)
  {
LABEL_11:
    v40 = *(v0 + 3352);
    *(v0 + 1328) = v40;
    *(v0 + 1344) = v40;
    vretproc(v0);
    result = 0;
    goto LABEL_4;
  }

  if (v39 == 2)
  {
    bspop_boa(v0);
    divide_char_count_token();
    goto LABEL_11;
  }

LABEL_3:
  vretproc(v0);
  result = 94;
LABEL_4:
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t delimit_major_phrase()
{
  OUTLINED_FUNCTION_65_0();
  v69 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8_12(v1, v2, v3, v4, v5, v6, v7, v8, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57);
  OUTLINED_FUNCTION_22_7();
  bzero(v68, v9);
  v10 = setjmp(v68);
  if (v10 || OUTLINED_FUNCTION_56_0(v10, &v33, v11, v12, v13, v14, v15, v16, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68[0]))
  {
    v17 = 94;
  }

  else
  {
    v20 = OUTLINED_FUNCTION_27_5();
    OUTLINED_FUNCTION_62_0(v20, v21);
    v17 = 0;
    v22 = OUTLINED_FUNCTION_33_2();
    fence_14(v22, v23, v24);
    v25 = OUTLINED_FUNCTION_64_0();
    lpta_loadpn(v25, v26);
    OUTLINED_FUNCTION_21_7();
    lpta_ctxtr();
    OUTLINED_FUNCTION_21_7();
    lpta_mover();
    v27 = OUTLINED_FUNCTION_64_0();
    lpta_storep(v27, v28);
    v29 = OUTLINED_FUNCTION_27_5();
    lpta_loadpn(v29, v30);
    OUTLINED_FUNCTION_21_7();
    lpta_ctxtl();
    OUTLINED_FUNCTION_21_7();
    lpta_movel();
    v31 = OUTLINED_FUNCTION_76_0();
    lpta_storep(v31, v32);
    *(v0 + 136) = 1;
    OUTLINED_FUNCTION_66_0(*(v0 + 1424));
    OUTLINED_FUNCTION_26_7();
    proj_def();
    *(v0 + 136) = 1;
    OUTLINED_FUNCTION_66_0(*(v0 + 1440));
    OUTLINED_FUNCTION_26_7();
    proj_def();
  }

  vretproc(v0);
  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

void apply_comma_phr_rules()
{
  OUTLINED_FUNCTION_61_0();
  v1 = v0;
  v60 = *MEMORY[0x277D85DE8];
  v55[0] = 0;
  v55[1] = 0;
  v54[0] = 0;
  v54[1] = 0;
  OUTLINED_FUNCTION_90_0();
  v52 = 0;
  OUTLINED_FUNCTION_23_7();
  bzero(v51, v2);
  OUTLINED_FUNCTION_22_7();
  bzero(v59, v3);
  if (setjmp(v59) || ventproc(v1, v51, v58, v57, v56, v59))
  {
    goto LABEL_3;
  }

  v5 = OUTLINED_FUNCTION_25_7();
  push_ptr_init(v5, v6);
  v7 = OUTLINED_FUNCTION_27_5();
  push_ptr_init(v7, v8);
  v9 = OUTLINED_FUNCTION_24_7();
  push_ptr_init(v9, v10);
  v11 = OUTLINED_FUNCTION_48_0();
  push_ptr_init(v11, v12);
  v52 = 65532;
  v13 = OUTLINED_FUNCTION_33_2();
  fence_14(v13, v14, v15);
  handle_non_phrasal_commas();
  while (2)
  {
    v16 = OUTLINED_FUNCTION_75_0();
    startloop(v16, v17);
    v18 = OUTLINED_FUNCTION_25_7();
    copyvar(v18, v19, v20);
    v21 = OUTLINED_FUNCTION_24_7();
    copyvar(v21, v22, v23);
LABEL_6:
    while (1)
    {
      v24 = OUTLINED_FUNCTION_25_7();
      if (forall_to_test(v24, v25, v53))
      {
        break;
      }

LABEL_7:
      v26 = OUTLINED_FUNCTION_74_0();
      bspush_ca(v26);
      v27 = OUTLINED_FUNCTION_25_7();
      if (lpta_loadp_setscan_r(v27, v28) || advanc(v1))
      {
        break;
      }

LABEL_9:
      v29 = OUTLINED_FUNCTION_19_7();
      savescptr(v29, v30, v54);
LABEL_10:
      OUTLINED_FUNCTION_6_12();
      post_comma_phrase();
      if (!v31)
      {
        v36 = OUTLINED_FUNCTION_27_5();
        lpta_loadpn(v36, v37);
        v38 = OUTLINED_FUNCTION_76_0();
        rpta_loadpn(v38, v39);
        if (!compare_ptas(v1) && !testeq(v1))
        {
          goto LABEL_21;
        }

LABEL_19:
        OUTLINED_FUNCTION_6_12();
        insert_comma_phrase();
        goto LABEL_20;
      }

LABEL_11:
      OUTLINED_FUNCTION_6_12();
      find_unpuncted_phrases();
LABEL_12:
      v32 = OUTLINED_FUNCTION_27_5();
      lpta_loadpn(v32, v33);
      v34 = OUTLINED_FUNCTION_76_0();
      rpta_loadpn(v34, v35);
      if (!compare_ptas(v1) && !testeq(v1))
      {
LABEL_21:
        v45 = OUTLINED_FUNCTION_73_0();
        starttest(v45, v46);
        move_i(v1, &v52, 0);
        OUTLINED_FUNCTION_48_0();
        if (!set_phrase_defaults())
        {
          goto LABEL_3;
        }

        break;
      }

LABEL_14:
      OUTLINED_FUNCTION_6_12();
      if (comma_at_end_quote())
      {
LABEL_15:
        OUTLINED_FUNCTION_6_12();
        if (apply_lang_comma_rules())
        {
          goto LABEL_19;
        }
      }

LABEL_20:
      v40 = OUTLINED_FUNCTION_27_5();
      lpta_loadpn(v40, v41);
      lpta_mover();
      v42 = OUTLINED_FUNCTION_48_0();
      lpta_storep(v42, v43);
      v44 = OUTLINED_FUNCTION_84_0();
      forall_cont_from(v44);
    }

LABEL_22:
    v47 = v1[13];
    if (v47)
    {
      v48 = OUTLINED_FUNCTION_31_3(v47);
    }

    else
    {
      v49 = OUTLINED_FUNCTION_87_0();
      v48 = vback(v49, v50);
    }

    switch(v48)
    {
      case 1:
        continue;
      case 2:
        goto LABEL_21;
      case 3:
        goto LABEL_10;
      case 4:
        if (!forto_adv_r(v1, 2, 3, 15, 5, v55))
        {
          goto LABEL_21;
        }

        goto LABEL_22;
      case 5:
        goto LABEL_9;
      case 6:
        goto LABEL_11;
      case 7:
      case 14:
        goto LABEL_19;
      case 8:
      case 13:
        goto LABEL_20;
      case 9:
        goto LABEL_6;
      case 10:
        goto LABEL_12;
      case 11:
        goto LABEL_14;
      case 12:
        goto LABEL_15;
      case 15:
        goto LABEL_7;
      default:
        goto LABEL_3;
    }
  }

LABEL_3:
  vretproc(v1);
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_60_0();
}

uint64_t insert_major_phrase()
{
  OUTLINED_FUNCTION_3_13();
  v71 = *MEMORY[0x277D85DE8];
  v60 = 0;
  v61 = 0;
  OUTLINED_FUNCTION_2_13(v2, v3, v4, v5, v6, v7, v8, v9, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59);
  OUTLINED_FUNCTION_22_7();
  OUTLINED_FUNCTION_96(v10, v11);
  v12 = setjmp(v1);
  if (v12 || (v19 = OUTLINED_FUNCTION_34_2(v12, &v33, v13, v14, v15, v16, v17, v18, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70), v19))
  {
    v20 = 94;
  }

  else
  {
    OUTLINED_FUNCTION_32_2(v19, &v60);
    v23 = OUTLINED_FUNCTION_28_4();
    get_parm(v23, v24, v25, -6);
    v26 = OUTLINED_FUNCTION_29_4();
    push_ptr_init(v26, v27);
    fence_14(v0, 0, &null_str_3);
    v28 = OUTLINED_FUNCTION_45_0();
    if (!lpta_loadp_setscan_l(v28, v29) && !advanc(v0))
    {
      v30 = OUTLINED_FUNCTION_37_1();
      savescptr(v30, v31, v32);
    }

    OUTLINED_FUNCTION_25_7();
    assign_major_phr_features();
    OUTLINED_FUNCTION_25_7();
    insert_phrase();
    v20 = 0;
  }

  vretproc(v0);
  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

void adjust_words_in_phrase()
{
  OUTLINED_FUNCTION_61_0();
  v1 = v0;
  v57 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_90_0();
  v42 = 0;
  v43 = 0;
  v40 = 0;
  v41 = 0;
  OUTLINED_FUNCTION_23_7();
  bzero(v39, v2);
  OUTLINED_FUNCTION_22_7();
  bzero(v56, v3);
  v4 = setjmp(v56);
  if (!v4 && !OUTLINED_FUNCTION_58_0(v4, v39, v5, v6, v7, v8, v9, v10, v38, v39[0], v39[1], v39[2], v39[3], v39[4], v39[5], v39[6], v39[7], v39[8], v39[9], v39[10], v39[11], v39[12], v39[13], v39[14], v39[15], v39[16], v39[17], v39[18], v39[19], v39[20], v39[21], v39[22], v40, v41, v42, v43, v44[0], v44[1], v45[0], v45[1], v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56[0]))
  {
    v12 = OUTLINED_FUNCTION_6_12();
    get_parm(v12, v13, v14, -6);
    v15 = OUTLINED_FUNCTION_27_5();
    OUTLINED_FUNCTION_70_0(v15, v16);
    v17 = OUTLINED_FUNCTION_24_7();
    push_ptr_init(v17, v18);
    v19 = OUTLINED_FUNCTION_48_0();
    push_ptr_init(v19, v20);
    v21 = OUTLINED_FUNCTION_33_2();
    fence_14(v21, v22, v23);
    v43 = *(v1 + 3352);
    v41 = v43;
    OUTLINED_FUNCTION_6_12();
    adjust_word_stress();
    while (2)
    {
      OUTLINED_FUNCTION_6_12();
      get_nuclear_accent();
LABEL_6:
      OUTLINED_FUNCTION_6_12();
      adjust_accents();
LABEL_7:
      v24 = OUTLINED_FUNCTION_63_0();
      starttest(v24, v25);
      v26 = OUTLINED_FUNCTION_39_0();
      bspush_ca(v26);
      v27 = *(v1 + 5106);
LABEL_8:
      OUTLINED_FUNCTION_40_0();
      if (v28)
      {
LABEL_16:
        adjust_numbers();
LABEL_17:
        if (*(v1 + 3454) == 3)
        {
          print_normalized_inp(v1, v45, v44);
        }
      }

      else
      {
        v29 = *(v1 + 104);
        if (v29)
        {
          v30 = OUTLINED_FUNCTION_31_3(v29);
        }

        else
        {
          v31 = OUTLINED_FUNCTION_87_0();
          v30 = vback(v31, v32);
        }

        switch(v30)
        {
          case 1:
            continue;
          case 2:
            goto LABEL_6;
          case 3:
            goto LABEL_7;
          case 5:
            v33 = OUTLINED_FUNCTION_59_0();
            bspush_ca(v33);
            v34 = *(v1 + 5110);
            goto LABEL_8;
          case 6:
            goto LABEL_16;
          case 7:
            v35 = OUTLINED_FUNCTION_85_0();
            bspush_ca(v35);
            v36 = *(v1 + 5122);
            goto LABEL_8;
          case 8:
            v37 = *(v1 + 5098);
            goto LABEL_8;
          case 9:
            goto LABEL_17;
          default:
            goto LABEL_3;
        }
      }

      break;
    }
  }

LABEL_3:
  vretproc(v1);
  v11 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_60_0();
}

void handle_non_phrasal_commas()
{
  OUTLINED_FUNCTION_61_0();
  v1 = v0;
  v65 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_90_0();
  v50 = 0;
  v51 = 0;
  OUTLINED_FUNCTION_23_7();
  bzero(v49, v2);
  OUTLINED_FUNCTION_22_7();
  bzero(v64, v3);
  v4 = setjmp(v64);
  if (v4)
  {
    goto LABEL_4;
  }

  if (OUTLINED_FUNCTION_58_0(v4, v49, v5, v6, v7, v8, v9, v10, v46, v47, v48, v49[0], v49[1], v49[2], v49[3], v49[4], v49[5], v49[6], v49[7], v49[8], v49[9], v49[10], v49[11], v49[12], v49[13], v49[14], v49[15], v49[16], v49[17], v49[18], v49[19], v49[20], v49[21], v49[22], v50, v51, v52[0], v52[1], v53[0], v53[1], v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64[0]))
  {
    goto LABEL_4;
  }

  push_ptr_init(v1, v53);
  push_ptr_init(v1, v52);
  push_ptr_init(v1, &v50);
  fence_14(v1, 0, &null_str_3);
  if (*(v1 + 2282) == *(v1 + 3238))
  {
    goto LABEL_4;
  }

  v12 = 0;
  while (2)
  {
    startloop(v1, 2);
    v13 = OUTLINED_FUNCTION_27_5();
    copyvar(v13, v14, v15);
    v16 = OUTLINED_FUNCTION_24_7();
    copyvar(v16, v17, v18);
LABEL_7:
    v19 = v12;
LABEL_8:
    v12 = v19;
    v20 = OUTLINED_FUNCTION_27_5();
    v22 = forall_to_test(v20, v21, v52);
    v23 = v12;
    if (!v22)
    {
LABEL_9:
      v12 = v23;
      v24 = OUTLINED_FUNCTION_73_0();
      bspush_ca(v24);
      v25 = OUTLINED_FUNCTION_27_5();
      v27 = lpta_loadp_setscan_l(v25, v26);
      v28 = v12;
      if (!v27)
      {
LABEL_10:
        v29 = v28;
        starttest(v1, 5);
        v30 = OUTLINED_FUNCTION_27_5();
        lpta_loadpn(v30, v31);
        v32 = OUTLINED_FUNCTION_64_0();
        rpta_loadpn(v32, v33);
        if (compare_ptas(v1))
        {
          v34 = v29;
        }

        else
        {
          v35 = testeq(v1);
          v34 = v29;
          v36 = v29;
          if (!v35)
          {
            goto LABEL_13;
          }
        }

LABEL_18:
        v12 = v34;
        starttest(v1, 4);
        OUTLINED_FUNCTION_27_5();
        if (lang_non_phrasal_comma())
        {
          v36 = v12;
LABEL_13:
          v12 = v36;
          if (!forto_adv_r(v1, 2, 3, 9, 5, v53))
          {
            break;
          }

          goto LABEL_14;
        }

        v39 = OUTLINED_FUNCTION_25_7();
        starttest(v39, v40);
        OUTLINED_FUNCTION_89_0();
        bspush_ca_boa();
        v41 = OUTLINED_FUNCTION_27_5();
        if (lpta_loadp_setscan_l(v41, v42))
        {
          v12 = v12;
        }

        else
        {
          v12 = 1;
        }
      }
    }

LABEL_14:
    v37 = *(v1 + 104);
    if (v37)
    {
      v38 = OUTLINED_FUNCTION_31_3(v37);
    }

    else
    {
      v38 = vback(v1, v12);
      v12 = 0;
    }

    v19 = v12;
    v23 = v12;
    v28 = v12;
    v34 = v12;
    v36 = v12;
    switch(v38)
    {
      case 1:
        continue;
      case 3:
        goto LABEL_10;
      case 4:
      case 6:
        goto LABEL_13;
      case 5:
        goto LABEL_18;
      case 7:
        bspop_boa(v1);
        v43 = OUTLINED_FUNCTION_27_5();
        lpta_loadpn(v43, v44);
        OUTLINED_FUNCTION_87_0();
        lpta_ctxtr();
        lpta_storep(v1, &v50);
        v45 = OUTLINED_FUNCTION_84_0();
        forall_cont_from(v45);
        goto LABEL_7;
      case 8:
        goto LABEL_8;
      case 9:
        goto LABEL_9;
      default:
        goto LABEL_4;
    }
  }

LABEL_4:
  vretproc(v1);
  v11 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_60_0();
}

void post_comma_phrase()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_3_13();
  v164 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_13(v2, v3, v4, v5, v6, v7, v8, v9, v47, v51, v55, v59, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v147, v151);
  OUTLINED_FUNCTION_22_7();
  OUTLINED_FUNCTION_78_0(v10, v11, v12, v13, v14, v15, v16, v17, v48, v52, v56, v60, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144, v148, v152, v154, v156, v158, v160, v162);
  v18 = setjmp(v1);
  if (!v18)
  {
    v26 = OUTLINED_FUNCTION_7_12(v18, v19, v20, v21, v22, v23, v24, v25, v49, v53, v57, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, v149, v153, *v155, v155[4], *v157, *&v157[4], v157[6], v159, SWORD2(v159), SBYTE6(v159), SHIBYTE(v159), v161, v163);
    if (!v26)
    {
      OUTLINED_FUNCTION_20_7(v26, v27, v28, v29, v30, v31, v32, v33, v50, v54, v58, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142, v146, v150);
      v35 = OUTLINED_FUNCTION_13_12();
      get_parm(v35, v36, v37, -6);
      fence_14(v0, 0, &null_str_3);
      if (*(v0 + 3082))
      {
        v38 = 0;
        while (1)
        {
          v39 = *(v0 + 5122);
          OUTLINED_FUNCTION_40_0();
          if (!v40)
          {
            break;
          }

          v41 = OUTLINED_FUNCTION_25_7();
          starttest_l(v41, v42);
          OUTLINED_FUNCTION_27_5();
          bspush_ca_boa();
          OUTLINED_FUNCTION_24_7();
          if (por_post_comma_phrase())
          {
            v43 = v38;
          }

          else
          {
            v43 = 1;
          }

          v44 = *(v0 + 104);
          if (v44)
          {
            v45 = OUTLINED_FUNCTION_31_3(v44);
          }

          else
          {
            v45 = vback(v0, v43);
            v46 = 0;
          }

          v38 = v46;
          if (v45 != 1)
          {
            if ((v45 - 2) >= 2 && v45 == 4)
            {
              bspop_boa(v0);
            }

            break;
          }
        }
      }
    }
  }

  vretproc(v0);
  v34 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_98();
}

void insert_comma_phrase()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_3_13();
  v108 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_2_13(v1, v2, v3, v4, v5, v6, v7, v8, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105);
  OUTLINED_FUNCTION_22_7();
  bzero(v107, v9);
  if (setjmp(v107))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_50_0();
  v14 = ventproc(v0, v10, v11, v12, v13, v107);
  if (v14)
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_32_2(v14, v106);
  v16 = OUTLINED_FUNCTION_27_5();
  OUTLINED_FUNCTION_62_0(v16, v17);
  v18 = OUTLINED_FUNCTION_25_7();
  push_ptr_init(v18, v19);
  v20 = OUTLINED_FUNCTION_30_3();
  push_ptr_init(v20, v21);
  v22 = OUTLINED_FUNCTION_29_4();
  push_ptr_init(v22, v23);
  fence_14(v0, 0, &null_str_3);
  v24 = OUTLINED_FUNCTION_54_0();
  fence_14(v24, v25, v26);
  v27 = OUTLINED_FUNCTION_27_5();
  lpta_loadpn(v27, v28);
  OUTLINED_FUNCTION_21_7();
  lpta_mover();
  v29 = OUTLINED_FUNCTION_25_7();
  lpta_storep(v29, v30);
  *(v0 + 136) = 1;
  OUTLINED_FUNCTION_16_10();
  proj_def();
  v31 = OUTLINED_FUNCTION_69_0();
  starttest(v31, v32);
  v33 = OUTLINED_FUNCTION_25_7();
  if (lpta_loadp_setscan_l(v33, v34))
  {
    goto LABEL_5;
  }

  while (2)
  {
    v35 = OUTLINED_FUNCTION_25_7();
    bspush_ca_scan(v35, v36);
    v37 = OUTLINED_FUNCTION_27_5();
    bspush_ca_scan(v37, v38);
    if (!advanc(v0))
    {
LABEL_8:
      v39 = OUTLINED_FUNCTION_47_0();
      savescptr(v39, v40, v41);
      OUTLINED_FUNCTION_35_1();
      v42 = test_string_s();
      if (!v42)
      {
LABEL_15:
        OUTLINED_FUNCTION_94(v42, v43, v44, v45, v46, v47, v48, v49, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104);
LABEL_5:
        OUTLINED_FUNCTION_49_0();
        assign_currPhr_vals();
LABEL_6:
        insert_phrase();
        break;
      }
    }

LABEL_9:
    v50 = *(v0 + 104);
    if (v50)
    {
      v42 = OUTLINED_FUNCTION_31_3(v50);
    }

    else
    {
      v51 = OUTLINED_FUNCTION_41_0();
      v42 = vback(v51, v52);
    }

    switch(v42)
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
        goto LABEL_8;
      case 5:
        goto LABEL_15;
      case 6:
        goto LABEL_6;
      default:
        goto LABEL_3;
    }
  }

LABEL_3:
  vretproc(v0);
  v15 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_98();
}

uint64_t find_unpuncted_phrases()
{
  OUTLINED_FUNCTION_65_0();
  v66 = *MEMORY[0x277D85DE8];
  v55 = 0;
  v56 = 0;
  v53 = 0;
  v54 = 0;
  HIDWORD(v52) = 65532;
  OUTLINED_FUNCTION_23_7();
  bzero(&v29, v3);
  OUTLINED_FUNCTION_22_7();
  OUTLINED_FUNCTION_96(v4, v5);
  v6 = setjmp(v2);
  if (v6 || OUTLINED_FUNCTION_34_2(v6, &v29, v7, v8, v9, v10, v11, v12, v27, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65) || (v13 = OUTLINED_FUNCTION_28_4(), get_parm(v13, v14, v15, -6), OUTLINED_FUNCTION_20_7(v16, v17, v18, v19, v20, v21, v22, v23, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53), fence_14(v0, 0, &null_str_3), *(v0 + 2282) == *(v0 + 3238)))
  {
    vretproc(v0);
    result = 94;
  }

  else
  {
    OUTLINED_FUNCTION_51_0();
    mark_potential_phrase_breaks();
    if (!v26)
    {
      OUTLINED_FUNCTION_51_0();
      insert_unpuncted_phrases();
    }

    init_word_ptrs(v0);
    *(v1 + 8) = v56;
    vretproc(v0);
    result = 0;
  }

  v25 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t comma_at_end_quote()
{
  OUTLINED_FUNCTION_3_13();
  v182 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_13(v2, v3, v4, v5, v6, v7, v8, v9, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, v149, v153, v157, v161, v165, v169);
  OUTLINED_FUNCTION_22_7();
  OUTLINED_FUNCTION_78_0(v10, v11, v12, v13, v14, v15, v16, v17, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142, v146, v150, v154, v158, v162, v166, v170, v172, v174, v176, v178, v180);
  v18 = setjmp(v1);
  if (v18 || (v26 = OUTLINED_FUNCTION_7_12(v18, v19, v20, v21, v22, v23, v24, v25, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v147, v151, v155, v159, v163, v167, v171, *v173, v173[4], *v175, *&v175[4], v175[6], v177, SWORD2(v177), SBYTE6(v177), SHIBYTE(v177), v179, v181), v26))
  {
LABEL_3:
    vretproc(v0);
    result = 94;
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_20_7(v26, v27, v28, v29, v30, v31, v32, v33, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144, v148, v152, v156, v160, v164, v168);
  v36 = OUTLINED_FUNCTION_13_12();
  get_parm(v36, v37, v38, -6);
  fence_14(v0, 0, &null_str_3);
  v39 = OUTLINED_FUNCTION_19_7();
  starttest(v39, v40);
  v41 = OUTLINED_FUNCTION_19_7();
  bspush_ca(v41);
  v42 = *(v0 + 5106);
  while (2)
  {
    OUTLINED_FUNCTION_40_0();
    if (!v43)
    {
LABEL_7:
      v44 = *(v0 + 104);
      if (v44)
      {
        v45 = OUTLINED_FUNCTION_31_3(v44);
      }

      else
      {
        v46 = OUTLINED_FUNCTION_41_0();
        v45 = vback(v46, v47);
      }

      switch(v45)
      {
        case 2:
          v48 = OUTLINED_FUNCTION_14_10();
          bspush_ca(v48);
          v49 = *(v0 + 5110);
          continue;
        case 3:
          goto LABEL_14;
        case 4:
          v50 = OUTLINED_FUNCTION_19_7();
          bspush_ca(v50);
          v51 = *(v0 + 5098);
          continue;
        case 5:
          v52 = *(v0 + 5122);
          continue;
        case 6:
          goto LABEL_15;
        case 7:
          goto LABEL_18;
        case 8:
          goto LABEL_20;
        case 9:
          goto LABEL_21;
        default:
          goto LABEL_3;
      }
    }

    break;
  }

LABEL_14:
  OUTLINED_FUNCTION_29_4();
  follows_end_quote();
  if (v53)
  {
    goto LABEL_7;
  }

LABEL_15:
  v54 = *(v0 + 5122);
  OUTLINED_FUNCTION_40_0();
  if (v43)
  {
    v55 = OUTLINED_FUNCTION_26_7();
    npush_s(v55);
    v56 = OUTLINED_FUNCTION_1_13(2);
    npop(v56, v57);
    v58 = OUTLINED_FUNCTION_33_2();
    npush_s(v58);
    v59 = OUTLINED_FUNCTION_1_13(3);
    npop(v59, v60);
    v61 = OUTLINED_FUNCTION_33_2();
    npush_s(v61);
    v62 = OUTLINED_FUNCTION_1_13(4);
    npop(v62, v63);
  }

LABEL_18:
  v64 = *(v0 + 5102);
  OUTLINED_FUNCTION_40_0();
  if (!v43)
  {
    *(v0 + 3186) = *(v0 + 3194);
  }

LABEL_20:
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_37_1();
  insert_comma_phrase();
LABEL_21:
  vretproc(v0);
  result = 0;
LABEL_4:
  v35 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t set_phrase_defaults()
{
  OUTLINED_FUNCTION_65_0();
  v32 = *MEMORY[0x277D85DE8];
  v21 = 0;
  OUTLINED_FUNCTION_23_7();
  bzero(v20, v1);
  OUTLINED_FUNCTION_22_7();
  bzero(v31, v2);
  v3 = setjmp(v31);
  if (v3 || OUTLINED_FUNCTION_0_14(v3, v4, v5, v6, v7, v8, v9, v10, v20[0], v20[1], v20[2], v20[3], v20[4], v20[5], v20[6], v20[7], v20[8], v20[9], v20[10], v20[11], v20[12], v20[13], v20[14], v20[15], v20[16], v20[17], v20[18], v20[19], v20[20], v20[21], v20[22], v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31[0]))
  {
    vretproc(v0);
    result = 94;
  }

  else
  {
    v13 = OUTLINED_FUNCTION_13_12();
    get_parm(v13, v14, v15, -4);
    v16 = OUTLINED_FUNCTION_33_2();
    fence_14(v16, v17, v18);
    v0[1781] = v0[1627];
    v19 = 1560;
    if (v0[1273] == HIWORD(v21))
    {
      v19 = 1576;
    }

    copyvar(v0, v0 + 1544, &v0[v19]);
    vretproc(v0);
    result = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void said_phrase()
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_55_0();
  v70 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_90_0();
  HIDWORD(v57) = 0;
  OUTLINED_FUNCTION_23_7();
  bzero(v56, v1);
  OUTLINED_FUNCTION_22_7();
  bzero(v69, v2);
  v3 = setjmp(v69);
  if (v3)
  {
    goto LABEL_4;
  }

  if (OUTLINED_FUNCTION_58_0(v3, v56, v4, v5, v6, v7, v8, v9, v52, v53, v54, v55, v56[0], v56[1], v56[2], v56[3], v56[4], v56[5], v56[6], v56[7], v56[8], v56[9], v56[10], v56[11], v56[12], v56[13], v56[14], v56[15], v56[16], v56[17], v56[18], v56[19], v56[20], v56[21], v56[22], v57, v58[0], v58[1], v58[2], v58[3], v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69[0]))
  {
    goto LABEL_4;
  }

  v10 = OUTLINED_FUNCTION_47_0();
  get_parm(v10, v11, v12, -6);
  OUTLINED_FUNCTION_32_2(v13, v58);
  v14 = OUTLINED_FUNCTION_28_4();
  get_parm(v14, v15, v16, -4);
  fence_14(v0, 0, &null_str_3);
  if (*(v0 + 3190))
  {
    goto LABEL_4;
  }

  v18 = 0;
  while (2)
  {
    v19 = v18;
    if (HIWORD(v57))
    {
      goto LABEL_12;
    }

LABEL_7:
    v18 = v19;
    v20 = OUTLINED_FUNCTION_89_0();
    starttest(v20, v21);
    v22 = OUTLINED_FUNCTION_27_5();
    if (lpta_loadp_setscan_l(v22, v23))
    {
LABEL_22:
      v41 = OUTLINED_FUNCTION_69_0();
      starttest(v41, v42);
      v43 = OUTLINED_FUNCTION_27_5();
      if (lpta_loadp_setscan_l(v43, v44))
      {
LABEL_23:
        starttest(v0, 8);
        v45 = OUTLINED_FUNCTION_27_5();
        if (lpta_loadp_setscan_l(v45, v46))
        {
          break;
        }

        v47 = OUTLINED_FUNCTION_54_0();
        if (testFldeq(v47, v48, 1, 5))
        {
          goto LABEL_17;
        }

        v26 = advance_tok(v0);
        v27 = (v0 + 2590);
      }

      else
      {
        v49 = OUTLINED_FUNCTION_85_0();
        bspush_ca_scan(v49, v50);
        v38 = OUTLINED_FUNCTION_54_0();
        v40 = 9;
LABEL_27:
        v51 = testFldeq(v38, v39, 1, v40);
        v37 = v18;
        if (v51)
        {
          goto LABEL_17;
        }

LABEL_28:
        v18 = v37;
        v26 = advance_tok(v0);
        v27 = (v0 + 3210);
      }
    }

    else
    {
      v24 = OUTLINED_FUNCTION_54_0();
      if (testFldeq(v24, v25, 1, 3))
      {
        goto LABEL_17;
      }

      v26 = advance_tok(v0);
      v27 = (v0 + 2574);
    }

    if (!v26)
    {
      HIWORD(v57) = *v27;
LABEL_12:
      v28 = *(v0 + 5122);
      OUTLINED_FUNCTION_40_0();
      if (!v29)
      {
LABEL_30:
        set_said_phr_vals();
        break;
      }

      v30 = OUTLINED_FUNCTION_48_0();
      starttest_l(v30, v31);
      OUTLINED_FUNCTION_42_0();
      bspush_ca_boa();
      OUTLINED_FUNCTION_27_5();
      por_said_phrase();
      if (v32)
      {
        v18 = v18;
      }

      else
      {
        v18 = 1;
      }
    }

LABEL_17:
    v33 = *(v0 + 104);
    if (v33)
    {
      v34 = OUTLINED_FUNCTION_31_3(v33);
    }

    else
    {
      v35 = OUTLINED_FUNCTION_43_0();
      v34 = vback(v35, v36);
      v18 = 0;
    }

    v37 = v18;
    switch(v34)
    {
      case 1:
        continue;
      case 2:
        goto LABEL_12;
      case 3:
        v19 = v18;
        goto LABEL_7;
      case 4:
        goto LABEL_22;
      case 5:
        goto LABEL_23;
      case 6:
        v38 = OUTLINED_FUNCTION_54_0();
        v40 = 8;
        goto LABEL_27;
      case 7:
        goto LABEL_28;
      case 9:
      case 10:
        goto LABEL_30;
      case 11:
        bspop_boa(v0);
        break;
      default:
        goto LABEL_4;
    }

    break;
  }

LABEL_4:
  vretproc(v0);
  v17 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_60_0();
}

uint64_t set_said_phr_vals()
{
  OUTLINED_FUNCTION_3_13();
  v32 = *MEMORY[0x277D85DE8];
  v26 = 0;
  v27 = 0;
  HIDWORD(v25) = 0;
  OUTLINED_FUNCTION_23_7();
  bzero(v24, v2);
  OUTLINED_FUNCTION_22_7();
  OUTLINED_FUNCTION_78_0(v3, v4, v5, v6, v7, v8, v9, v10, v23, v24[0], v24[1], v24[2], v24[3], v24[4], v24[5], v24[6], v24[7], v24[8], v24[9], v24[10], v24[11], v24[12], v24[13], v24[14], v24[15], v24[16], v24[17], v24[18], v24[19], v24[20], v24[21], v24[22], v25, v26, v27, v28, v29, v30[0], v30[1], v31[0]);
  if (setjmp(v1) || ventproc(v0, v24, v30 + 7, &v29 + 6, &v28 + 4, v31))
  {
    vretproc(v0);
    result = 94;
  }

  else
  {
    v13 = OUTLINED_FUNCTION_11_12();
    get_parm(v13, v14, v15, -6);
    v16 = OUTLINED_FUNCTION_28_4();
    get_parm(v16, v17, v18, -4);
    v19 = OUTLINED_FUNCTION_33_2();
    fence_14(v19, v20, v21);
    OUTLINED_FUNCTION_24_7();
    adjust_prev_phr_pause();
    v22 = 3194;
    if (*(v0 + 2574) == HIWORD(v25))
    {
      v22 = 3206;
    }

    *(v0 + 3190) = *(v0 + v22);
    vretproc(v0);
    result = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void adjust_prev_phr_pause()
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_3_13();
  v59 = *MEMORY[0x277D85DE8];
  v53 = 0;
  v54 = 0;
  v52 = 0;
  OUTLINED_FUNCTION_2_13(v1, v2, v3, v4, v5, v6, v7, v8, v49[0], v49[1], v49[2], v49[3], v49[4], v49[5], v49[6], v49[7], v49[8], v49[9], v49[10], v49[11], v49[12], v49[13], v49[14], v49[15], v49[16], v49[17], v49[18], v49[19], v49[20], v49[21], v49[22], v50[0], v50[1], v51[0], v51[1]);
  OUTLINED_FUNCTION_22_7();
  bzero(v58, v9);
  if (!setjmp(v58) && !ventproc(v0, v49, v57, v56, v55, v58))
  {
    v11 = OUTLINED_FUNCTION_11_12();
    get_parm(v11, v12, v13, -6);
    v14 = OUTLINED_FUNCTION_28_4();
    get_parm(v14, v15, v16, -4);
    v17 = OUTLINED_FUNCTION_30_3();
    push_ptr_init(v17, v18);
    v19 = OUTLINED_FUNCTION_29_4();
    push_ptr_init(v19, v20);
    v21 = OUTLINED_FUNCTION_33_2();
    fence_14(v21, v22, v23);
    v24 = OUTLINED_FUNCTION_44_0();
    fence_14(v24, v25, v26);
    v27 = OUTLINED_FUNCTION_81_0();
    starttest(v27, v28);
    v29 = OUTLINED_FUNCTION_24_7();
    if (!lpta_loadp_setscan_l(v29, v30) && !advanc(v0))
    {
      v31 = 0;
      while (2)
      {
        v32 = OUTLINED_FUNCTION_27_5();
        savescptr(v32, v33, v50);
        v34 = OUTLINED_FUNCTION_86_0();
        if (!testFldeq(v34, v35, 0, 40))
        {
          OUTLINED_FUNCTION_42_0();
          bspush_ca_scan_boa();
          v36 = OUTLINED_FUNCTION_86_0();
          if (!testFldeq(v36, v37, 4, 7))
          {
            v31 = 1;
          }
        }

        v38 = v31;
LABEL_11:
        v39 = v0[13];
        if (v39)
        {
          v40 = OUTLINED_FUNCTION_31_3(v39);
          v42 = v41;
        }

        else
        {
          v40 = vback(v0, v38);
          v42 = 0;
        }

        switch(v40)
        {
          case 2:
            v31 = v42;
            continue;
          case 3:
            bspop_boa(v0);
            v43 = advance_tok(v0);
            v38 = v42;
            if (v43)
            {
              goto LABEL_11;
            }

            goto LABEL_16;
          case 4:
LABEL_16:
            savescptr(v0, 4, v51);
            v44 = OUTLINED_FUNCTION_63_0();
            lpta_rpta_loadp(v44, v45, v50);
            v46 = OUTLINED_FUNCTION_86_0();
            v48 = mark_v(v46, v47, 11, &v52);
            v38 = v42;
            if (!v48)
            {
              goto LABEL_3;
            }

            goto LABEL_11;
          default:
            goto LABEL_3;
        }
      }
    }
  }

LABEL_3:
  vretproc(v0);
  v10 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_60_0();
}

void mark_potential_phrase_breaks()
{
  OUTLINED_FUNCTION_61_0();
  v2 = v1;
  OUTLINED_FUNCTION_3_13();
  v69 = *MEMORY[0x277D85DE8];
  v64[0] = 0;
  v64[1] = 0;
  v63[0] = 0;
  v63[1] = 0;
  v61 = 0;
  v62 = 0;
  v60 = 0;
  v59[0] = 0;
  v59[1] = 0;
  v58[0] = 0;
  v58[1] = 0;
  v57[0] = 0;
  v57[1] = 0;
  v55 = 0;
  v56 = 0;
  OUTLINED_FUNCTION_23_7();
  bzero(v54, v3);
  OUTLINED_FUNCTION_22_7();
  bzero(v68, v4);
  if (setjmp(v68))
  {
    goto LABEL_3;
  }

  if (ventproc(v0, v54, v67, v66, v65, v68))
  {
    goto LABEL_3;
  }

  v6 = OUTLINED_FUNCTION_11_12();
  get_parm(v6, v7, v8, -6);
  v9 = OUTLINED_FUNCTION_28_4();
  get_parm(v9, v10, v11, -6);
  get_parm(v0, &v62 + 4, v2, -4);
  LODWORD(v62) = 65532;
  v61 = 0xFFFC0000FFFCLL;
  v60 = 65532;
  push_ptr_init(v0, v59);
  push_ptr_init(v0, v58);
  push_ptr_init(v0, v57);
  v12 = OUTLINED_FUNCTION_49_0();
  push_ptr_init(v12, v13);
  fence_14(v0, 0, &null_str_3);
  v14 = OUTLINED_FUNCTION_44_0();
  fence_14(v14, v15, v16);
  v17 = OUTLINED_FUNCTION_24_7();
  if (!lpta_loadp_setscan_r(v17, v18) && !advance_tok(v0))
  {
    *(v0 + 136) = 1;
    v19 = OUTLINED_FUNCTION_16_10();
    if (!test_ptr(v19))
    {
      goto LABEL_3;
    }
  }

  while (2)
  {
    num_words_in_range();
LABEL_8:
    startloop(v0, 3);
    lpta_loadpn(v0, v64);
    OUTLINED_FUNCTION_21_7();
    lpta_mover();
    v20 = OUTLINED_FUNCTION_39_0();
    lpta_storep(v20, v21);
    lpta_loadpn(v0, v63);
    OUTLINED_FUNCTION_21_7();
    lpta_mover();
    v22 = OUTLINED_FUNCTION_59_0();
    lpta_storep(v22, v23);
    while (1)
    {
LABEL_9:
      v24 = OUTLINED_FUNCTION_39_0();
      if (forall_to_test(v24, v25, v57))
      {
        goto LABEL_21;
      }

LABEL_10:
      bspush_ca(v0);
      v26 = OUTLINED_FUNCTION_39_0();
      if (lpta_loadp_setscan_r(v26, v27) || advance_tok(v0))
      {
        goto LABEL_21;
      }

LABEL_12:
      v28 = OUTLINED_FUNCTION_88_0();
      savescptr(v28, v29, v58);
LABEL_13:
      v30 = OUTLINED_FUNCTION_63_0();
      starttest(v30, v31);
      *(v0 + 136) = 1;
      v32 = OUTLINED_FUNCTION_16_10();
      setscan_nof_l(v32);
      if (!v33)
      {
        break;
      }

LABEL_14:
      v34 = OUTLINED_FUNCTION_74_0();
      starttest(v34, v35);
      OUTLINED_FUNCTION_39_0();
      if (!inside_orig_inp_token())
      {
        goto LABEL_20;
      }

LABEL_15:
      OUTLINED_FUNCTION_39_0();
      if (find_lang_obligatory_phrase())
      {
LABEL_16:
        v36 = OUTLINED_FUNCTION_73_0();
        starttest(v36, v37);
        if (*(v0 + 3222) > SWORD1(v61))
        {
          goto LABEL_20;
        }

LABEL_25:
        v42 = OUTLINED_FUNCTION_89_0();
        starttest(v42, v43);
        OUTLINED_FUNCTION_39_0();
        if (!num_words_in_range() && *(v0 + 3234) > SHIWORD(v60))
        {
          goto LABEL_20;
        }

LABEL_27:
        OUTLINED_FUNCTION_39_0();
        find_lang_potential_phrase();
      }

LABEL_28:
      if (WORD1(v62))
      {
        v44 = OUTLINED_FUNCTION_39_0();
        lpta_rpta_loadp(v44, v45, v58);
        v46 = OUTLINED_FUNCTION_21_7();
        if (!mark_v(v46, v47, 9, &v62))
        {
          absval();
LABEL_31:
          if (SHIWORD(v62) < SHIWORD(v61))
          {
            HIWORD(v62) = HIWORD(v61);
          }

LABEL_33:
          WORD1(v62) = 0;
        }
      }

LABEL_34:
      v48 = OUTLINED_FUNCTION_24_7();
      lpta_loadpn(v48, v49);
      OUTLINED_FUNCTION_21_7();
      lpta_mover();
      v50 = OUTLINED_FUNCTION_48_0();
      lpta_storep(v50, v51);
      v52 = OUTLINED_FUNCTION_84_0();
      forall_cont_from(v52);
    }

    OUTLINED_FUNCTION_75_0();
    bspush_ca_scan_boa();
    OUTLINED_FUNCTION_44_0();
    if (test_string_s())
    {
LABEL_21:
      v38 = *(v0 + 104);
      if (v38)
      {
        v39 = OUTLINED_FUNCTION_31_3(v38);
      }

      else
      {
        v40 = OUTLINED_FUNCTION_41_0();
        v39 = vback(v40, v41);
      }

      switch(v39)
      {
        case 1:
          continue;
        case 2:
          goto LABEL_8;
        case 3:
          goto LABEL_35;
        case 4:
          goto LABEL_13;
        case 5:
          goto LABEL_20;
        case 6:
          goto LABEL_12;
        case 7:
          goto LABEL_14;
        case 8:
          goto LABEL_19;
        case 9:
          goto LABEL_28;
        case 10:
          goto LABEL_15;
        case 11:
          goto LABEL_16;
        case 12:
          goto LABEL_25;
        case 13:
          goto LABEL_27;
        case 14:
          goto LABEL_34;
        case 15:
          goto LABEL_31;
        case 16:
          goto LABEL_33;
        case 17:
          goto LABEL_9;
        case 18:
          goto LABEL_10;
        case 19:
          v53 = HIWORD(v62);
          goto LABEL_36;
        default:
          goto LABEL_3;
      }

      goto LABEL_3;
    }

    break;
  }

LABEL_19:
  bspush_nboa(v0);
  OUTLINED_FUNCTION_44_0();
  if (test_string_s())
  {
    goto LABEL_21;
  }

LABEL_20:
  if (forto_adv_upto_r(v0, 3, 4, 18, 2, v59))
  {
    goto LABEL_21;
  }

LABEL_35:
  v53 = HIWORD(v62);
  if (HIWORD(v62))
  {
LABEL_36:
    v2[1] = v53;
  }

LABEL_3:
  vretproc(v0);
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_60_0();
}

void insert_unpuncted_phrases()
{
  OUTLINED_FUNCTION_61_0();
  v1 = v0;
  v87 = v2;
  v4 = v3;
  v109 = *MEMORY[0x277D85DE8];
  v103 = 0;
  v104 = 0;
  v102[0] = 0;
  v102[1] = 0;
  v100 = 0;
  v101 = 0;
  v98 = 0;
  v99 = 0;
  v96 = 0u;
  v97 = 0u;
  v94[1] = 0;
  v95 = 0;
  v93[1] = 0;
  v94[0] = 0;
  v92[1] = 0;
  v93[0] = 0;
  v91 = 0;
  v92[0] = 0;
  v89[1] = 0;
  v90 = 0;
  v89[0] = 0;
  OUTLINED_FUNCTION_23_7();
  bzero(v88, v5);
  OUTLINED_FUNCTION_22_7();
  bzero(v108, v6);
  if (setjmp(v108) || ventproc(v4, v88, v107, v106, v105, v108))
  {
LABEL_3:
    vretproc(v4);
  }

  else
  {
    get_parm(v4, &v103, v87, -6);
    v8 = OUTLINED_FUNCTION_47_0();
    get_parm(v8, v9, v10, -6);
    get_parm(v4, &v101 + 4, v1, -4);
    LODWORD(v101) = 65532;
    v100 = 0xFFFC0000FFFCLL;
    HIDWORD(v99) = 65532;
    LOWORD(v99) = -4;
    v98 = 0xFFFC0000FFFCLL;
    v97 = 0uLL;
    LODWORD(v96) = -65534;
    v95 = 0xFFFC0000FFFCLL;
    push_ptr_init(v4, v94);
    push_ptr_init(v4, v93);
    push_ptr_init(v4, v92);
    push_ptr_init(v4, &v90);
    push_ptr_init(v4, v89);
    v11 = OUTLINED_FUNCTION_33_2();
    fence_14(v11, v12, v13);
    WORD1(v99) = 0;
    if (*(v4 + 3218) < SHIWORD(v101))
    {
      HIWORD(v101) = *(v4 + 3218);
    }

    while (2)
    {
      startloop(v4, 2);
      move_i(v4, &v101, 1);
      v14 = OUTLINED_FUNCTION_27_5();
      move_i(v14, v15, 1);
      v16 = OUTLINED_FUNCTION_85_0();
      copyvar(v16, v17, &v101 + 2);
      v18 = OUTLINED_FUNCTION_59_0();
      if (!for_test(v18, v19, &v95, &v95 + 2))
      {
LABEL_8:
        while (1)
        {
          set_min_token_vals();
LABEL_9:
          startloop(v4, 5);
          lpta_loadpn(v4, &v103);
          OUTLINED_FUNCTION_44_0();
          lpta_mover();
          v20 = OUTLINED_FUNCTION_71_0();
          lpta_storep(v20, v21);
          lpta_loadpn(v4, v102);
          OUTLINED_FUNCTION_44_0();
          lpta_mover();
          v22 = OUTLINED_FUNCTION_39_0();
          lpta_storep(v22, v23);
          if (forall_to_test(v4, &v95, v93))
          {
            break;
          }

LABEL_10:
          bspush_ca(v4);
          v24 = OUTLINED_FUNCTION_25_7();
          if (lpta_loadp_setscan_r(v24, v25))
          {
            break;
          }

          v26 = OUTLINED_FUNCTION_44_0();
          if (npush_fld(v26, v27, 9))
          {
            break;
          }

          v28 = OUTLINED_FUNCTION_41_0();
          npush_i(v28);
          if (if_testneq(v4, v29, v30, v31, v32, v33, v34, v35) || advance_tok(v4) || savetok(v4, &v96))
          {
            break;
          }

LABEL_15:
          OUTLINED_FUNCTION_83_0();
          absval();
LABEL_16:
          v36 = OUTLINED_FUNCTION_19_7();
          starttest(v36, v37);
          if (WORD1(v101) == HIWORD(v98))
          {
LABEL_17:
            starttest(v4, 11);
            v38 = OUTLINED_FUNCTION_25_7();
            if (lpta_loadp_setscan_l(v38, v39) || savetok(v4, &v96))
            {
              goto LABEL_24;
            }

            v40 = OUTLINED_FUNCTION_44_0();
            if (npush_fld(v40, v41, 9))
            {
              break;
            }

            v42 = OUTLINED_FUNCTION_41_0();
            npush_i(v42);
            if (if_testneq(v4, v43, v44, v45, v46, v47, v48, v49) || advance_tok(v4))
            {
              break;
            }

            OUTLINED_FUNCTION_83_0();
            absval();
LABEL_23:
            v50 = OUTLINED_FUNCTION_19_7();
            starttest(v50, v51);
            if (SWORD1(v101) < SWORD1(v98))
            {
LABEL_24:
              starttest(v4, 13);
              v52 = OUTLINED_FUNCTION_71_0();
              lpta_loadpn(v52, v53);
              OUTLINED_FUNCTION_26_7();
              lpta_ctxtl();
              lpta_storep(v4, v92);
              OUTLINED_FUNCTION_25_7();
              if (num_tokens_in_range())
              {
                break;
              }

LABEL_25:
              starttest(v4, 14);
              if (SWORD1(v100) <= SHIWORD(v100))
              {
LABEL_26:
                v54 = OUTLINED_FUNCTION_73_0();
                starttest(v54, v55);
                if (!HIWORD(v99))
                {
                  goto LABEL_29;
                }

                v56 = OUTLINED_FUNCTION_88_0();
                starttest(v56, v57);
                v58 = OUTLINED_FUNCTION_71_0();
                lpta_loadpn(v58, v59);
                OUTLINED_FUNCTION_26_7();
                lpta_ctxtr();
                lpta_storep(v4, v92);
                if (num_tokens_in_range())
                {
                  break;
                }

LABEL_28:
                v60 = OUTLINED_FUNCTION_19_7();
                starttest(v60, v61);
                if (SHIWORD(v99) <= SHIWORD(v100))
                {
LABEL_29:
                  *(v4 + 136) = 1;
                  OUTLINED_FUNCTION_16_10();
                  proj_def();
                  c_assvar(v4, &v99);
                  ++WORD1(v99);
                }
              }
            }
          }

LABEL_30:
          v62 = OUTLINED_FUNCTION_19_7();
          if (forto_adv_upto_r(v62, v63, 6, 17, 2, v94))
          {
            break;
          }

LABEL_31:
          v64 = OUTLINED_FUNCTION_81_0();
          if (!for_adv(v64, v65, 3, &v101, &v95, &v95 + 2))
          {
LABEL_32:
            v66 = OUTLINED_FUNCTION_74_0();
            startloop(v66, v67);
            v68 = OUTLINED_FUNCTION_42_0();
            copyvar(v68, v69, &v103);
            v70 = OUTLINED_FUNCTION_39_0();
            copyvar(v70, v71, v102);
LABEL_33:
            while (1)
            {
              v72 = OUTLINED_FUNCTION_42_0();
              if (forall_to_test(v72, v73, v93))
              {
                goto LABEL_37;
              }

LABEL_34:
              v74 = OUTLINED_FUNCTION_69_0();
              bspush_ca(v74);
              if (SWORD1(v99) < 1)
              {
                goto LABEL_37;
              }

              bsclear(v4);
              bspush_ca(v4);
              v75 = OUTLINED_FUNCTION_42_0();
              if (lpta_loadp_setscan_r(v75, v76) || advanc(v4))
              {
                goto LABEL_37;
              }

LABEL_43:
              v83 = OUTLINED_FUNCTION_75_0();
              savescptr(v83, v84, v89);
LABEL_44:
              v85 = OUTLINED_FUNCTION_42_0();
              insert_unpuncted_phrase(v85);
LABEL_45:
              --WORD1(v99);
              v86 = OUTLINED_FUNCTION_84_0();
              forall_cont_from(v86);
            }
          }
        }
      }

LABEL_37:
      v77 = *(v4 + 104);
      if (v77)
      {
        v78 = OUTLINED_FUNCTION_31_3(v77);
      }

      else
      {
        v79 = OUTLINED_FUNCTION_41_0();
        v78 = vback(v79, v80);
      }

      switch(v78)
      {
        case 1:
          continue;
        case 2:
          goto LABEL_32;
        case 3:
          goto LABEL_8;
        case 4:
          goto LABEL_9;
        case 5:
          goto LABEL_31;
        case 6:
          goto LABEL_15;
        case 7:
        case 9:
          goto LABEL_30;
        case 8:
          goto LABEL_16;
        case 10:
          goto LABEL_17;
        case 11:
          goto LABEL_24;
        case 12:
          goto LABEL_23;
        case 13:
          goto LABEL_25;
        case 14:
          goto LABEL_26;
        case 15:
          goto LABEL_29;
        case 16:
          goto LABEL_28;
        case 17:
          goto LABEL_10;
        case 18:
          goto LABEL_46;
        case 19:
          goto LABEL_44;
        case 20:
          v81 = OUTLINED_FUNCTION_69_0();
          if (forto_adv_r(v81, v82, 19, 24, 5, &v90))
          {
            goto LABEL_37;
          }

          break;
        case 21:
          goto LABEL_43;
        case 22:
          goto LABEL_45;
        case 23:
          goto LABEL_33;
        case 24:
          goto LABEL_34;
        default:
          goto LABEL_3;
      }

      break;
    }

LABEL_46:
    v104 = v91;
    *(v87 + 8) = v91;
    vretproc(v4);
  }

  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_60_0();
}

uint64_t num_tokens_in_range()
{
  OUTLINED_FUNCTION_55_0();
  v68 = *MEMORY[0x277D85DE8];
  v56 = 0;
  v57 = 0;
  v54 = 0;
  v55 = 0;
  HIDWORD(v53) = 0;
  OUTLINED_FUNCTION_23_7();
  bzero(&v30, v2);
  OUTLINED_FUNCTION_22_7();
  bzero(v67, v3);
  v4 = setjmp(v67);
  if (v4 || OUTLINED_FUNCTION_34_2(v4, &v30, v5, v6, v7, v8, v9, v10, v28, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66))
  {
    vretproc(v0);
    result = 94;
  }

  else
  {
    v13 = OUTLINED_FUNCTION_38_1();
    OUTLINED_FUNCTION_70_0(v13, v14);
    OUTLINED_FUNCTION_20_7(v15, v16, v17, v18, v19, v20, v21, v22, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54);
    v23 = OUTLINED_FUNCTION_28_4();
    get_parm(v23, v24, v25, -4);
    fence_14(v0, 0, &null_str_3);
    v26 = *(v0 + 5114);
    OUTLINED_FUNCTION_40_0();
    if (!v27)
    {
      OUTLINED_FUNCTION_51_0();
      num_words_in_range();
    }

    *(v1 + 2) = HIWORD(v53);
    vretproc(v0);
    result = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t set_min_token_vals()
{
  OUTLINED_FUNCTION_55_0();
  v36 = *MEMORY[0x277D85DE8];
  v25 = 0;
  v24 = 0;
  OUTLINED_FUNCTION_23_7();
  bzero(v23, v4);
  OUTLINED_FUNCTION_22_7();
  bzero(v35, v5);
  v6 = setjmp(v35);
  if (!v6 && !OUTLINED_FUNCTION_56_0(v6, v23, v7, v8, v9, v10, v11, v12, v22, v23[0], v23[1], v23[2], v23[3], v23[4], v23[5], v23[6], v23[7], v23[8], v23[9], v23[10], v23[11], v23[12], v23[13], v23[14], v23[15], v23[16], v23[17], v23[18], v23[19], v23[20], v23[21], v23[22], v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35[0]))
  {
    v16 = OUTLINED_FUNCTION_30_3();
    get_parm(v16, v17, v3, -4);
    get_parm(v0, &v24 + 4, v2, -4);
    v18 = OUTLINED_FUNCTION_28_4();
    get_parm(v18, v19, v20, -4);
    fence_14(v0, 0, &null_str_3);
    if (HIWORD(v25) == 1)
    {
      HIWORD(v24) = 1;
      v21 = 0;
    }

    else
    {
      if (v0[2549] == v0[2545])
      {
        goto LABEL_9;
      }

      switch(HIWORD(v25))
      {
        case 4u:
          v21 = 6;
          HIWORD(v24) = 6;
          break;
        case 3u:
          HIWORD(v24) = 4;
          v21 = 5;
          break;
        case 2u:
          HIWORD(v24) = v0[1613];
          v21 = v0[1615];
          break;
        default:
          goto LABEL_9;
      }
    }

    WORD1(v24) = v21;
LABEL_9:
    v2[1] = HIWORD(v24);
    *(v1 + 2) = WORD1(v24);
    v13 = 0;
    goto LABEL_4;
  }

  v13 = 94;
LABEL_4:
  vretproc(v0);
  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t insert_unpuncted_phrase(uint64_t a1)
{
  v68 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_2_13(v2, v3, v4, v5, v6, v7, v8, v9, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64);
  OUTLINED_FUNCTION_22_7();
  bzero(v67, v10);
  if (setjmp(v67) || (OUTLINED_FUNCTION_50_0(), ventproc(a1, v11, v12, v13, v14, v67)))
  {
    vretproc(a1);
    result = 94;
  }

  else
  {
    v17 = OUTLINED_FUNCTION_6_12();
    get_parm(v17, v18, v19, -6);
    v20 = OUTLINED_FUNCTION_27_5();
    OUTLINED_FUNCTION_70_0(v20, v21);
    v22 = OUTLINED_FUNCTION_24_7();
    push_ptr_init(v22, v23);
    v24 = OUTLINED_FUNCTION_30_3();
    push_ptr_init(v24, v25);
    v26 = OUTLINED_FUNCTION_29_4();
    push_ptr_init(v26, v27);
    fence_14(a1, 0, &null_str_3);
    v28 = OUTLINED_FUNCTION_27_5();
    lpta_loadpn(v28, v29);
    OUTLINED_FUNCTION_21_7();
    lpta_movel();
    v30 = OUTLINED_FUNCTION_24_7();
    lpta_storep(v30, v31);
    *(a1 + 136) = 1;
    OUTLINED_FUNCTION_66_0(0);
    OUTLINED_FUNCTION_26_7();
    proj_def();
    *(a1 + 136) = 1;
    OUTLINED_FUNCTION_66_0(v66);
    OUTLINED_FUNCTION_26_7();
    proj_def();
    OUTLINED_FUNCTION_6_12();
    assign_unpuncted_phr_vals();
    if (*(a1 + 3562) >= 1)
    {
      *(a1 + 168) = 1;
      *(a1 + 144) = v66;
      *(a1 + 128) = 0;
      v32 = OUTLINED_FUNCTION_54_0();
      insert_l(v32);
      v33 = OUTLINED_FUNCTION_30_3();
      lpta_storep(v33, v34);
      *(a1 + 168) = 1;
      *(a1 + 144) = v65;
      *(a1 + 128) = 0;
      v35 = OUTLINED_FUNCTION_54_0();
      insert_l(v35);
      v36 = OUTLINED_FUNCTION_29_4();
      lpta_storep(v36, v37);
    }

    insert_phrase();
    vretproc(a1);
    result = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t assign_major_phr_features()
{
  OUTLINED_FUNCTION_3_13();
  v125 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_13(v2, v3, v4, v5, v6, v7, v8, v9, v34, v37, v40, v43, v46, v49, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112);
  OUTLINED_FUNCTION_22_7();
  OUTLINED_FUNCTION_78_0(v10, v11, v12, v13, v14, v15, v16, v17, v35, v38, v41, v44, v47, v50, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v115, v117, v119, v121, v123);
  v18 = setjmp(v1);
  if (v18 || OUTLINED_FUNCTION_7_12(v18, v19, v20, v21, v22, v23, v24, v25, v36, v39, v42, v45, v48, v51, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, *v116, v116[4], *v118, *&v118[4], v118[6], v120, SWORD2(v120), SBYTE6(v120), SHIBYTE(v120), v122, v124))
  {
    v26 = 94;
  }

  else
  {
    v29 = OUTLINED_FUNCTION_11_12();
    get_parm(v29, v30, v31, -6);
    v32 = OUTLINED_FUNCTION_27_5();
    OUTLINED_FUNCTION_62_0(v32, v33);
    fence_14(v0, 0, &null_str_3);
    OUTLINED_FUNCTION_11_12();
    if (period_phrase())
    {
      if (comma_phrase(v0))
      {
        OUTLINED_FUNCTION_37_1();
        if (question_phrase())
        {
          OUTLINED_FUNCTION_29_4();
          if (exclam_phrase())
          {
            semicolon_phrase(v0);
          }
        }
      }
    }

    assign_sent_final_features(v0);
    OUTLINED_FUNCTION_30_3();
    assign_currPhr_vals();
    assign_phr_final_anno_features(v0);
    v26 = 0;
    v0[1269] = 0;
  }

  vretproc(v0);
  v27 = *MEMORY[0x277D85DE8];
  return v26;
}

void insert_phrase()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_15_10();
  v95 = *MEMORY[0x277D85DE8];
  memset(v93, 0, 32);
  OUTLINED_FUNCTION_2_13(v1, v2, v3, v4, v5, v6, v7, v8, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92);
  OUTLINED_FUNCTION_22_7();
  bzero(v94, v9);
  if (setjmp(v94))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_52_0();
  if (ventproc(v0, v10, v11, v12, v13, v94))
  {
    goto LABEL_3;
  }

  v15 = OUTLINED_FUNCTION_42_0();
  OUTLINED_FUNCTION_95(v15, v16);
  v17 = OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_70_0(v17, v18);
  OUTLINED_FUNCTION_20_7(v19, v20, v21, v22, v23, v24, v25, v26, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91);
  v27 = OUTLINED_FUNCTION_13_12();
  get_parm(v27, v28, v29, -6);
  v30 = OUTLINED_FUNCTION_33_2();
  fence_14(v30, v31, v32);
  *(v0 + 3090) = 0;
  c_assvar(v0, (v0 + 3088));
  *(v0 + 3104) = *(v0 + 3082) + 1;
  v33 = OUTLINED_FUNCTION_42_0();
  lpta_rpta_loadp(v33, v34, v93);
  OUTLINED_FUNCTION_26_7();
  insert_2ptv();
  if (!v35)
  {
    OUTLINED_FUNCTION_37_1();
    insert_phrase_pause();
LABEL_10:
    reset_phrase_vars(v0);
    goto LABEL_3;
  }

  v36 = *(v0 + 104);
  if (v36)
  {
    v37 = OUTLINED_FUNCTION_31_3(v36);
  }

  else
  {
    v38 = OUTLINED_FUNCTION_41_0();
    v37 = vback(v38, v39);
  }

  if (v37 == 1)
  {
    goto LABEL_10;
  }

LABEL_3:
  vretproc(v0);
  v14 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_98();
}

uint64_t period_phrase()
{
  OUTLINED_FUNCTION_3_13();
  v158 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_13(v2, v3, v4, v5, v6, v7, v8, v9, v41, v45, v49, v53, v57, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145);
  OUTLINED_FUNCTION_22_7();
  OUTLINED_FUNCTION_78_0(v10, v11, v12, v13, v14, v15, v16, v17, v42, v46, v50, v54, v58, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142, v146, v148, v150, v152, v154, v156);
  v18 = setjmp(v1);
  if (v18 || (v26 = OUTLINED_FUNCTION_7_12(v18, v19, v20, v21, v22, v23, v24, v25, v43, v47, v51, v55, v59, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v147, *v149, v149[4], *v151, *&v151[4], v151[6], v153, SWORD2(v153), SBYTE6(v153), SHIBYTE(v153), v155, v157), v26) || (OUTLINED_FUNCTION_20_7(v26, v27, v28, v29, v30, v31, v32, v33, v44, v48, v52, v56, v60, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144), v34 = OUTLINED_FUNCTION_13_12(), get_parm(v34, v35, v36, -6), fence_14(v0, 0, &null_str_3), v37 = *(v0 + 2570), OUTLINED_FUNCTION_46_0(), !v38))
  {
    vretproc(v0);
    result = 94;
  }

  else
  {
    vretproc(v0);
    result = 0;
  }

  v40 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t comma_phrase(uint64_t a1)
{
  OUTLINED_FUNCTION_18_8(*MEMORY[0x277D85DE8], v23);
  OUTLINED_FUNCTION_17_9(v3, v4, v5, v6, v7, v8, v9, v10, v24, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_0_14(v11, v12, v13, v14, v15, v16, v17, v18, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, *v71, v71[4], *v73, *&v73[4], v73[6], v75, SWORD2(v75), SBYTE6(v75), SHIBYTE(v75), v77, v79) || (fence_14(a1, 0, &null_str_3), v19 = *(a1 + 2546), OUTLINED_FUNCTION_46_0(), !v20))
  {
    vretproc(a1);
    result = 94;
  }

  else
  {
    set_phrase_defaults();
    vretproc(a1);
    result = 0;
  }

  v22 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t question_phrase()
{
  OUTLINED_FUNCTION_3_13();
  v179 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_13(v2, v3, v4, v5, v6, v7, v8, v9, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142, v146, v150, v154, v158, v162, v166);
  OUTLINED_FUNCTION_22_7();
  OUTLINED_FUNCTION_78_0(v10, v11, v12, v13, v14, v15, v16, v17, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v147, v151, v155, v159, v163, v167, v169, v171, v173, v175, v177);
  v18 = setjmp(v1);
  if (v18 || (v26 = OUTLINED_FUNCTION_7_12(v18, v19, v20, v21, v22, v23, v24, v25, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144, v148, v152, v156, v160, v164, v168, *v170, v170[4], *v172, *&v172[4], v172[6], v174, SWORD2(v174), SBYTE6(v174), SHIBYTE(v174), v176, v178), v26))
  {
LABEL_3:
    vretproc(v0);
    result = 94;
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_20_7(v26, v27, v28, v29, v30, v31, v32, v33, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, v149, v153, v157, v161, v165);
  v36 = OUTLINED_FUNCTION_13_12();
  get_parm(v36, v37, v38, -6);
  fence_14(v0, 0, &null_str_3);
  v39 = OUTLINED_FUNCTION_19_7();
  starttest(v39, v40);
  v41 = OUTLINED_FUNCTION_19_7();
  bspush_ca(v41);
  v42 = *(v0 + 2574);
  OUTLINED_FUNCTION_46_0();
  while (!v43)
  {
    v50 = *(v0 + 104);
    if (v50)
    {
      v51 = OUTLINED_FUNCTION_31_3(v50);
    }

    else
    {
      v52 = OUTLINED_FUNCTION_41_0();
      v51 = vback(v52, v53);
    }

    switch(v51)
    {
      case 2:
        v54 = OUTLINED_FUNCTION_25_7();
        bspush_ca(v54);
        v55 = *(v0 + 2582);
        break;
      case 3:
        goto LABEL_7;
      case 4:
        v56 = *(v0 + 2578);
        break;
      case 5:
        goto LABEL_8;
      case 6:
      case 10:
        goto LABEL_14;
      case 7:
        goto LABEL_9;
      case 8:
        goto LABEL_10;
      case 9:
        goto LABEL_13;
      case 11:
        v58 = 0;
        goto LABEL_31;
      case 12:
      case 13:
      case 15:
        LOWORD(v58) = 0;
        goto LABEL_35;
      case 14:
        LOWORD(v58) = 0;
        goto LABEL_34;
      case 16:
      case 19:
        goto LABEL_43;
      case 17:
        goto LABEL_40;
      case 18:
        goto LABEL_42;
      default:
        goto LABEL_3;
    }

    OUTLINED_FUNCTION_46_0();
  }

LABEL_7:
  v44 = *(v0 + 5114);
  OUTLINED_FUNCTION_40_0();
  if (v43)
  {
    goto LABEL_14;
  }

LABEL_8:
  OUTLINED_FUNCTION_37_1();
  if (!isitWH())
  {
    goto LABEL_24;
  }

LABEL_9:
  OUTLINED_FUNCTION_37_1();
  if (!isitAlt())
  {
LABEL_25:
    v57 = 3214;
    goto LABEL_26;
  }

LABEL_10:
  v45 = OUTLINED_FUNCTION_64_0();
  lpta_loadpn(v45, v46);
  v47 = OUTLINED_FUNCTION_30_3();
  rpta_loadpn(v47, v48);
  if (compare_ptas(v0) || testneq(v0))
  {
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_64_0();
  if (!isitWH())
  {
LABEL_24:
    v57 = 3210;
LABEL_26:
    v49 = *(v0 + v57);
    goto LABEL_27;
  }

LABEL_13:
  OUTLINED_FUNCTION_64_0();
  if (!isitAlt())
  {
    goto LABEL_25;
  }

LABEL_14:
  v49 = 0;
LABEL_27:
  v58 = v49;
  if (*(v0 + 3210) == v49)
  {
    assign_wh_quest_features(v0);
  }

  else
  {
LABEL_31:
    if (*(v0 + 3214) == v58)
    {
      assign_alt_quest_features(v0);
    }

    else
    {
LABEL_34:
      assign_default_quest_features(v0);
    }
  }

LABEL_35:
  v59 = *(v0 + 2582);
  OUTLINED_FUNCTION_46_0();
  if (v43)
  {
    OUTLINED_FUNCTION_29_4();
    precedes_end_quote();
    if (!v60)
    {
      if (v58 <= 0)
      {
LABEL_40:
        v61 = 3206;
      }

      else
      {
        v61 = 3194;
      }

      *(v0 + 3186) = *(v0 + v61);
LABEL_42:
      OUTLINED_FUNCTION_92();
    }
  }

LABEL_43:
  vretproc(v0);
  result = 0;
LABEL_4:
  v35 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t exclam_phrase()
{
  OUTLINED_FUNCTION_65_0();
  v77 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8_12(v1, v2, v3, v4, v5, v6, v7, v8, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65);
  OUTLINED_FUNCTION_22_7();
  bzero(v76, v9);
  v10 = setjmp(v76);
  if (v10 || OUTLINED_FUNCTION_56_0(v10, &v41, v11, v12, v13, v14, v15, v16, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76[0]))
  {
LABEL_3:
    vretproc(v0);
    result = 94;
  }

  else
  {
    v19 = OUTLINED_FUNCTION_13_12();
    get_parm(v19, v20, v21, -6);
    fence_14(v0, 0, &null_str_3);
    v22 = OUTLINED_FUNCTION_67_0();
    starttest(v22, v23);
    v24 = OUTLINED_FUNCTION_19_7();
    bspush_ca(v24);
    v25 = *(v0 + 2590);
    OUTLINED_FUNCTION_46_0();
    if (!v26)
    {
      while (2)
      {
        v35 = *(v0 + 104);
        if (v35)
        {
          v36 = OUTLINED_FUNCTION_31_3(v35);
        }

        else
        {
          v37 = OUTLINED_FUNCTION_41_0();
          v36 = vback(v37, v38);
        }

        switch(v36)
        {
          case 1:
            v40 = *(v0 + 2594);
            OUTLINED_FUNCTION_46_0();
            if (!v26)
            {
              goto LABEL_3;
            }

            break;
          case 2:
            v39 = *(v0 + 2598);
            OUTLINED_FUNCTION_46_0();
            if (!v26)
            {
              continue;
            }

            goto LABEL_7;
          case 3:
            goto LABEL_7;
          case 4:
            goto LABEL_8;
          case 6:
            goto LABEL_11;
          case 7:
            goto LABEL_12;
          case 8:
            goto LABEL_16;
          default:
            goto LABEL_3;
        }

        break;
      }
    }

LABEL_7:
    npush_s(v0);
    v27 = OUTLINED_FUNCTION_10_12();
    npop(v27, v28);
LABEL_8:
    v29 = *(v0 + 5118);
    OUTLINED_FUNCTION_91();
    if (!v26 && *(v0 + 5102) != v30)
    {
      npush_s(v0);
      v31 = OUTLINED_FUNCTION_1_13(2);
      npop(v31, v32);
    }

LABEL_11:
    set_window_size(v0);
LABEL_12:
    v33 = *(v0 + 2598);
    OUTLINED_FUNCTION_46_0();
    if (v26)
    {
      OUTLINED_FUNCTION_29_4();
      precedes_end_quote();
      if (!v34)
      {
        *(v0 + 3186) = *(v0 + 3194);
        OUTLINED_FUNCTION_92();
      }
    }

LABEL_16:
    vretproc(v0);
    result = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t semicolon_phrase(unsigned __int16 *a1)
{
  OUTLINED_FUNCTION_18_8(*MEMORY[0x277D85DE8], v26);
  OUTLINED_FUNCTION_17_9(v3, v4, v5, v6, v7, v8, v9, v10, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_0_14(v11, v12, v13, v14, v15, v16, v17, v18, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, *v74, v74[4], *v76, *&v76[4], v76[6], v78, SWORD2(v78), SBYTE6(v78), SHIBYTE(v78), v80, v82) || (fence_14(a1, 0, &null_str_3), v19 = a1[1293], OUTLINED_FUNCTION_46_0(), !v20))
  {
    vretproc(a1);
    result = 94;
  }

  else
  {
    v21 = OUTLINED_FUNCTION_21_7();
    npush_s(v21);
    v22 = OUTLINED_FUNCTION_1_13(1);
    npop(v22, v23);
    a1[1781] = a1[1625];
    vretproc(a1);
    result = 0;
  }

  v25 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t assign_sent_final_features(_WORD *a1)
{
  OUTLINED_FUNCTION_18_8(*MEMORY[0x277D85DE8], v23);
  OUTLINED_FUNCTION_17_9(v3, v4, v5, v6, v7, v8, v9, v10, v24, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_0_14(v11, v12, v13, v14, v15, v16, v17, v18, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, *v71, v71[4], *v73, *&v73[4], v73[6], v75, SWORD2(v75), SBYTE6(v75), SHIBYTE(v75), v77, v79))
  {
    vretproc(a1);
    result = 94;
  }

  else
  {
    fence_14(a1, 0, &null_str_3);
    if (a1[1195] == 1 && a1[1285] <= a1[1269])
    {
      a1[1781] = a1[1623];
      v21 = OUTLINED_FUNCTION_1_13(5);
      move_i(v21, v22, 2);
    }

    vretproc(a1);
    result = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return result;
}

void assign_currPhr_vals()
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_65_0();
  v47 = *MEMORY[0x277D85DE8];
  v42[0] = 0;
  v42[1] = 0;
  OUTLINED_FUNCTION_23_7();
  bzero(v41, v1);
  OUTLINED_FUNCTION_22_7();
  bzero(v46, v2);
  if (!setjmp(v46) && !ventproc(v0, v41, v45, v44, v43, v46))
  {
    v4 = OUTLINED_FUNCTION_28_4();
    get_parm(v4, v5, v6, -6);
    fence_14(v0, 0, &null_str_3);
    v7 = OUTLINED_FUNCTION_35_1();
    fence_14(v7, v8, v9);
    v10 = *(v0 + 3190);
    if (*(v0 + 3190))
    {
      v11 = 0;
      while (2)
      {
        if (*(v0 + 3194) != v10)
        {
LABEL_8:
          if (*(v0 + 3198) == v10)
          {
            npush_s(v0);
            v12 = OUTLINED_FUNCTION_10_12();
            npop(v12, v13);
            v14 = OUTLINED_FUNCTION_27_5();
            starttest(v14, v15);
            v16 = OUTLINED_FUNCTION_48_0();
            bspush_ca(v16);
            v17 = *(v0 + 5102);
LABEL_10:
            OUTLINED_FUNCTION_40_0();
            if (!v18)
            {
              goto LABEL_11;
            }
          }

          else
          {
LABEL_19:
            if (*(v0 + 3206) == v10)
            {
              v26 = OUTLINED_FUNCTION_54_0();
              npush_s(v26);
              v27 = OUTLINED_FUNCTION_10_12();
              npop(v27, v28);
              v29 = OUTLINED_FUNCTION_39_0();
              starttest(v29, v30);
              OUTLINED_FUNCTION_59_0();
              bspush_ca_boa();
              if (!lpta_loadp_setscan_r(v0, v42) && !advance_tok(v0) && !advance_tok(v0) && !advance_tok(v0) && !advance_tok(v0) && !advance_tok(v0) && !advance_tok(v0) && !advance_tok(v0))
              {
                v11 = 1;
              }

LABEL_11:
              v19 = *(v0 + 104);
              if (v19)
              {
                v20 = OUTLINED_FUNCTION_31_3(v19);
              }

              else
              {
                v20 = vback(v0, v11);
                v11 = 0;
              }

              switch(v20)
              {
                case 1:
                  v10 = *(v0 + 3190);
                  continue;
                case 2:
                case 5:
                case 11:
                  goto LABEL_39;
                case 3:
                  v10 = *(v0 + 3190);
                  goto LABEL_8;
                case 4:
                  v10 = *(v0 + 3190);
                  goto LABEL_19;
                case 6:
                  v21 = OUTLINED_FUNCTION_42_0();
                  bspush_ca(v21);
                  v22 = *(v0 + 5110);
                  goto LABEL_10;
                case 7:
                  goto LABEL_38;
                case 8:
                  v24 = OUTLINED_FUNCTION_63_0();
                  bspush_ca(v24);
                  v25 = *(v0 + 5098);
                  goto LABEL_10;
                case 9:
                  v23 = *(v0 + 5122);
                  goto LABEL_10;
                case 10:
                  break;
                case 12:
                  bspop_boa(v0);
                  npush_s(v0);
                  v33 = OUTLINED_FUNCTION_1_13(2);
                  npop(v33, v34);
                  goto LABEL_37;
                default:
                  goto LABEL_3;
              }
            }

            v31 = *(v0 + 5114);
            OUTLINED_FUNCTION_91();
            if (v18 || *(v0 + 5102) == v32 || *(v0 + 3202) != *(v0 + 3190))
            {
              goto LABEL_39;
            }

LABEL_37:
            v35 = OUTLINED_FUNCTION_82_0();
            npush_s(v35);
            v36 = OUTLINED_FUNCTION_10_12();
            npop(v36, v37);
          }
        }

        break;
      }

LABEL_38:
      v38 = OUTLINED_FUNCTION_82_0();
      npush_s(v38);
      v39 = OUTLINED_FUNCTION_10_12();
      npop(v39, v40);
LABEL_39:
      *(v0 + 3190) = 0;
      vretproc(v0);
      goto LABEL_4;
    }
  }

LABEL_3:
  vretproc(v0);
LABEL_4:
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_60_0();
}

uint64_t assign_phr_final_anno_features(unsigned __int16 *a1)
{
  OUTLINED_FUNCTION_18_8(*MEMORY[0x277D85DE8], v36);
  OUTLINED_FUNCTION_17_9(v3, v4, v5, v6, v7, v8, v9, v10, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_0_14(v11, v12, v13, v14, v15, v16, v17, v18, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, *v84, v84[4], *v86, *&v86[4], v86[6], v88, SWORD2(v88), SBYTE6(v88), SHIBYTE(v88), v90, v92))
  {
    goto LABEL_3;
  }

  fence_14(a1, 0, &null_str_3);
  v21 = a1[1383];
  if (!a1[1383])
  {
LABEL_13:
    vretproc(a1);
    result = 0;
    goto LABEL_4;
  }

  if (a1[1385] == v21)
  {
    v22 = OUTLINED_FUNCTION_41_0();
    npush_s(v22);
    v23 = OUTLINED_FUNCTION_1_13(3);
    npop(v23, v24);
    v25 = OUTLINED_FUNCTION_35_1();
    npush_s(v25);
    v26 = OUTLINED_FUNCTION_1_13(4);
    npop(v26, v27);
LABEL_12:
    a1[1383] = 0;
    goto LABEL_13;
  }

  if (a1[1393] == v21)
  {
    v28 = OUTLINED_FUNCTION_41_0();
    npush_s(v28);
    v29 = OUTLINED_FUNCTION_1_13(3);
    npop(v29, v30);
    v31 = OUTLINED_FUNCTION_35_1();
    npush_s(v31);
    v32 = OUTLINED_FUNCTION_1_13(4);
    npop(v32, v33);
    OUTLINED_FUNCTION_92();
    goto LABEL_12;
  }

  if (a1[1391] == v21)
  {
    a1[1781] = a1[1621];
    v34 = OUTLINED_FUNCTION_1_13(5);
    move_i(v34, v35, 3);
    goto LABEL_12;
  }

LABEL_3:
  vretproc(a1);
  result = 94;
LABEL_4:
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t assign_wh_quest_features(uint64_t a1)
{
  OUTLINED_FUNCTION_18_8(*MEMORY[0x277D85DE8], v34);
  OUTLINED_FUNCTION_17_9(v3, v4, v5, v6, v7, v8, v9, v10, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_0_14(v11, v12, v13, v14, v15, v16, v17, v18, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, *v82, v82[4], *v84, *&v84[4], v84[6], v86, SWORD2(v86), SBYTE6(v86), SHIBYTE(v86), v88, v90))
  {
    vretproc(a1);
    result = 94;
  }

  else
  {
    fence_14(a1, 0, &null_str_3);
    npush_s(a1);
    v21 = OUTLINED_FUNCTION_1_13(1);
    npop(v21, v22);
    v23 = *(a1 + 5122);
    OUTLINED_FUNCTION_40_0();
    if (v24)
    {
      v25 = OUTLINED_FUNCTION_35_1();
      npush_s(v25);
      v26 = OUTLINED_FUNCTION_1_13(2);
      npop(v26, v27);
      v28 = OUTLINED_FUNCTION_35_1();
      npush_s(v28);
      v29 = OUTLINED_FUNCTION_1_13(3);
      npop(v29, v30);
      v31 = OUTLINED_FUNCTION_35_1();
      npush_s(v31);
      v32 = OUTLINED_FUNCTION_1_13(4);
      npop(v32, v33);
    }

    vretproc(a1);
    result = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t assign_alt_quest_features(uint64_t a1)
{
  OUTLINED_FUNCTION_18_8(*MEMORY[0x277D85DE8], v42);
  OUTLINED_FUNCTION_17_9(v3, v4, v5, v6, v7, v8, v9, v10, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_0_14(v11, v12, v13, v14, v15, v16, v17, v18, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, *v90, v90[4], *v92, *&v92[4], v92[6], v94, SWORD2(v94), SBYTE6(v94), SHIBYTE(v94), v96, v98))
  {
LABEL_3:
    vretproc(a1);
    result = 94;
  }

  else
  {
    fence_14(a1, 0, &null_str_3);
    npush_s(a1);
    v21 = OUTLINED_FUNCTION_10_12();
    npop(v21, v22);
    v23 = OUTLINED_FUNCTION_67_0();
    starttest(v23, v24);
    v25 = OUTLINED_FUNCTION_67_0();
    bspush_ca(v25);
    v26 = *(a1 + 5122);
    while (1)
    {
      OUTLINED_FUNCTION_40_0();
      if (v27)
      {
        break;
      }

      v28 = *(a1 + 104);
      if (v28)
      {
        v29 = OUTLINED_FUNCTION_31_3(v28);
      }

      else
      {
        v30 = OUTLINED_FUNCTION_41_0();
        v29 = vback(v30, v31);
      }

      if (v29 != 2)
      {
        if (v29 == 1)
        {
          goto LABEL_15;
        }

        if (v29 != 3)
        {
          goto LABEL_3;
        }

        break;
      }

      v32 = *(a1 + 5102);
    }

    v33 = OUTLINED_FUNCTION_26_7();
    npush_s(v33);
    v34 = OUTLINED_FUNCTION_10_12();
    npop(v34, v35);
    v36 = OUTLINED_FUNCTION_33_2();
    npush_s(v36);
    v37 = OUTLINED_FUNCTION_1_13(3);
    npop(v37, v38);
    v39 = OUTLINED_FUNCTION_33_2();
    npush_s(v39);
    v40 = OUTLINED_FUNCTION_1_13(4);
    npop(v40, v41);
LABEL_15:
    vretproc(a1);
    result = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t assign_default_quest_features(unsigned __int16 *a1)
{
  OUTLINED_FUNCTION_18_8(*MEMORY[0x277D85DE8], v36);
  OUTLINED_FUNCTION_17_9(v3, v4, v5, v6, v7, v8, v9, v10, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_0_14(v11, v12, v13, v14, v15, v16, v17, v18, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, *v84, v84[4], *v86, *&v86[4], v86[6], v88, SWORD2(v88), SBYTE6(v88), SHIBYTE(v88), v90, v92))
  {
    vretproc(a1);
    result = 94;
  }

  else
  {
    fence_14(a1, 0, &null_str_3);
    v21 = a1[1289];
    OUTLINED_FUNCTION_46_0();
    npush_s(a1);
    v22 = OUTLINED_FUNCTION_1_13(1);
    npop(v22, v23);
    v24 = a1[2555];
    OUTLINED_FUNCTION_91();
    if (!v26 && a1[2559] != v25)
    {
      v27 = OUTLINED_FUNCTION_35_1();
      npush_s(v27);
      v28 = OUTLINED_FUNCTION_1_13(2);
      npop(v28, v29);
    }

    v30 = OUTLINED_FUNCTION_35_1();
    npush_s(v30);
    v31 = OUTLINED_FUNCTION_1_13(4);
    npop(v31, v32);
    v33 = OUTLINED_FUNCTION_35_1();
    npush_s(v33);
    v34 = OUTLINED_FUNCTION_10_12();
    npop(v34, v35);
    set_window_size(a1);
    vretproc(a1);
    result = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return result;
}

void precedes_end_quote()
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_65_0();
  v1 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_23_7();
  bzero(v95, v2);
  OUTLINED_FUNCTION_22_7();
  bzero(v109, v3);
  v4 = setjmp(v109);
  if (!v4 && !OUTLINED_FUNCTION_80_0(v4, v95, v5, v6, v7, v8, v9, v10, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95[0], v95[1], v95[2], v95[3], v95[4], v95[5], v95[6], v95[7], v95[8], v95[9], v95[10], v95[11], v95[12], v95[13], v95[14], v95[15], v95[16], v95[17], v95[18], v95[19], v95[20], v95[21], v95[22], v96[0], v96[1], v97[0], v97[1], v98[0], v98[1], v98[2], v98[3], v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109[0]))
  {
    v12 = OUTLINED_FUNCTION_24_7();
    OUTLINED_FUNCTION_62_0(v12, v13);
    push_ptr_init(v0, v98);
    push_ptr_init(v0, v97);
    push_ptr_init(v0, v96);
    v14 = OUTLINED_FUNCTION_33_2();
    fence_14(v14, v15, v16);
    v17 = OUTLINED_FUNCTION_67_0();
    starttest(v17, v18);
    OUTLINED_FUNCTION_19_7();
    bspush_ca_boa();
    v19 = OUTLINED_FUNCTION_24_7();
    if (lpta_loadp_setscan_r(v19, v20))
    {
      v21 = 0;
    }

    else
    {
      v22 = OUTLINED_FUNCTION_19_7();
      bspush_ca_scan(v22, v23);
      OUTLINED_FUNCTION_35_1();
      if (test_string_s())
      {
        v21 = 0;
      }

      else
      {
LABEL_8:
        v21 = 1;
      }
    }

    v24 = v21;
    while (2)
    {
      v25 = *(v0 + 104);
      if (v25)
      {
        v26 = OUTLINED_FUNCTION_31_3(v25);
        v28 = v27;
      }

      else
      {
        v26 = vback(v0, v24);
        v28 = 0;
      }

      switch(v26)
      {
        case 1:
          v29 = OUTLINED_FUNCTION_93();
          lpta_loadpn(v29, v30);
          OUTLINED_FUNCTION_21_7();
          lpta_mover();
          lpta_storep(v0, v98);
          v31 = OUTLINED_FUNCTION_24_7();
          if (lpta_loadp_setscan_r(v31, v32))
          {
            goto LABEL_17;
          }

          if (advance_tok(v0))
          {
            goto LABEL_17;
          }

          OUTLINED_FUNCTION_12_12();
          if (test_string_s())
          {
            goto LABEL_17;
          }

          starttest(v0, 7);
          v80 = OUTLINED_FUNCTION_53_0();
          if (!lpta_loadp_setscan_l(v80, v81))
          {
            goto LABEL_51;
          }

          break;
        case 2:
        case 21:
          bspop_boa(v0);
          break;
        case 3:
          v73 = OUTLINED_FUNCTION_74_0();
          bspush_ca_scan(v73, v74);
          OUTLINED_FUNCTION_12_12();
          goto LABEL_44;
        case 4:
          goto LABEL_8;
        case 5:
          OUTLINED_FUNCTION_12_12();
LABEL_44:
          v75 = test_string_s();
          v24 = v28;
          if (!v75)
          {
            goto LABEL_8;
          }

          continue;
        case 6:
LABEL_17:
          v33 = OUTLINED_FUNCTION_24_7();
          if (lpta_loadp_setscan_r(v33, v34))
          {
            goto LABEL_20;
          }

          if (advance_tok(v0))
          {
            goto LABEL_20;
          }

          OUTLINED_FUNCTION_12_12();
          if (test_string_s())
          {
            goto LABEL_20;
          }

          v76 = OUTLINED_FUNCTION_53_0();
          if (lpta_loadp_setscan_l(v76, v77))
          {
            goto LABEL_3;
          }

          OUTLINED_FUNCTION_12_12();
          if (test_string_s())
          {
            goto LABEL_3;
          }

          starttest_l(v0, 15);
          v78 = OUTLINED_FUNCTION_53_0();
          if (lpta_loadp_setscan_r(v78, v79))
          {
            goto LABEL_3;
          }

          goto LABEL_37;
        case 8:
LABEL_51:
          savescptr(v0, 8, v97);
          OUTLINED_FUNCTION_12_12();
          v82 = test_string_s();
          v24 = v28;
          if (!v82)
          {
            v83 = OUTLINED_FUNCTION_39_0();
            v85 = lpta_loadp_setscan_r(v83, v84);
            v24 = v28;
            if (!v85)
            {
              goto LABEL_53;
            }
          }

          continue;
        case 9:
          bspop_boa(v0);
          v51 = advance_tok(v0);
          v24 = v28;
          if (v51)
          {
            continue;
          }

          v52 = OUTLINED_FUNCTION_73_0();
          goto LABEL_32;
        case 10:
LABEL_53:
          bspush_ca_scan_boa();
          v47 = OUTLINED_FUNCTION_43_0();
          v50 = 96;
          goto LABEL_54;
        case 13:
LABEL_20:
          v35 = OUTLINED_FUNCTION_24_7();
          if (!lpta_loadp_setscan_r(v35, v36) && !advance_tok(v0))
          {
            OUTLINED_FUNCTION_12_12();
            if (!test_string_s())
            {
              v37 = OUTLINED_FUNCTION_59_0();
              starttest(v37, v38);
              v39 = OUTLINED_FUNCTION_53_0();
              if (!lpta_loadp_setscan_l(v39, v40))
              {
                goto LABEL_24;
              }
            }
          }

          goto LABEL_3;
        case 16:
          goto LABEL_37;
        case 17:
          v58 = advance_tok(v0);
          v24 = v28;
          if (v58)
          {
            continue;
          }

LABEL_37:
          v59 = OUTLINED_FUNCTION_88_0();
          bspush_ca_scan(v59, v60);
          OUTLINED_FUNCTION_12_12();
          v61 = test_string_s();
          v24 = v28;
          if (!v61)
          {
            goto LABEL_38;
          }

          continue;
        case 18:
LABEL_38:
          v62 = OUTLINED_FUNCTION_48_0();
          savescptr(v62, v63, v96);
          goto LABEL_39;
        case 19:
          goto LABEL_39;
        case 20:
          v57 = advance_tok(v0);
          v24 = v28;
          if (v57)
          {
            continue;
          }

LABEL_39:
          v64 = OUTLINED_FUNCTION_85_0();
          bspush_ca_scan(v64, v65);
          *(v0 + 136) = 1;
          v66 = OUTLINED_FUNCTION_16_10();
          v67 = test_ptr(v66);
          v24 = v28;
          if (v67)
          {
            continue;
          }

          OUTLINED_FUNCTION_75_0();
          bspush_ca_boa();
          v68 = lpta_loadp_setscan_r(v0, v96);
          v24 = v28;
          if (v68)
          {
            continue;
          }

          v69 = OUTLINED_FUNCTION_43_0();
          v71 = testFldeq(v69, v70, 3, 1);
          v24 = v28;
          if (v71)
          {
            continue;
          }

          v72 = advance_tok(v0);
          goto LABEL_55;
        case 25:
LABEL_24:
          v41 = OUTLINED_FUNCTION_63_0();
          savescptr(v41, v42, v97);
          OUTLINED_FUNCTION_12_12();
          v43 = test_string_s();
          v24 = v28;
          if (!v43)
          {
            v44 = OUTLINED_FUNCTION_39_0();
            v46 = lpta_loadp_setscan_r(v44, v45);
            v24 = v28;
            if (!v46)
            {
              goto LABEL_26;
            }
          }

          continue;
        case 26:
          bspop_boa(v0);
          v54 = advance_tok(v0);
          v24 = v28;
          if (v54)
          {
            continue;
          }

          v52 = OUTLINED_FUNCTION_89_0();
LABEL_32:
          bspush_ca_scan(v52, v53);
          *(v0 + 136) = 1;
          v55 = OUTLINED_FUNCTION_16_10();
          v56 = test_ptr(v55);
          v24 = v28;
          if (!v56)
          {
            goto LABEL_3;
          }

          continue;
        case 27:
LABEL_26:
          OUTLINED_FUNCTION_27_5();
          bspush_ca_scan_boa();
          v47 = OUTLINED_FUNCTION_43_0();
          v50 = 168;
LABEL_54:
          v72 = testFldeq(v47, v48, v49, v50);
LABEL_55:
          if (v72)
          {
            v24 = v28;
          }

          else
          {
            v24 = 1;
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
  v11 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_60_0();
}

uint64_t set_window_size(uint64_t a1)
{
  OUTLINED_FUNCTION_18_8(*MEMORY[0x277D85DE8], v62);
  OUTLINED_FUNCTION_17_9(v3, v4, v5, v6, v7, v8, v9, v10, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_0_14(v11, v12, v13, v14, v15, v16, v17, v18, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, *v110, v110[4], *v112, *&v112[4], v112[6], v114, SWORD2(v114), SBYTE6(v114), SHIBYTE(v114), v116, v118))
  {
    vretproc(a1);
    result = 94;
  }

  else
  {
    v21 = OUTLINED_FUNCTION_33_2();
    fence_14(v21, v22, v23);
    v24 = OUTLINED_FUNCTION_1_13(6);
    if (!if_testeq_v_i(v24, v25, 0, v26, v27, v28, v29, v30))
    {
      v31 = OUTLINED_FUNCTION_10_12();
      npush_v(v31, v32, v33, v34, v35, v36, v37, v38);
      v39 = OUTLINED_FUNCTION_68_0();
      ncompare_s(v39, v40);
      if (!testeq(a1) || (v41 = OUTLINED_FUNCTION_10_12(), npush_v(v41, v42, v43, v44, v45, v46, v47, v48), v49 = OUTLINED_FUNCTION_26_7(), ncompare_s(v49, v50), !testeq(a1)) || (v51 = OUTLINED_FUNCTION_1_13(1), npush_v(v51, v52, v53, v54, v55, v56, v57, v58), ncompare_s(a1, 6u), !testeq(a1)))
      {
        v59 = OUTLINED_FUNCTION_1_13(6);
        move_i(v59, v60, v61);
      }
    }

    vretproc(a1);
    result = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t adjust_word_stress()
{
  OUTLINED_FUNCTION_3_13();
  v154 = *MEMORY[0x277D85DE8];
  v143 = 0;
  v144 = 0;
  OUTLINED_FUNCTION_2_13(v2, v3, v4, v5, v6, v7, v8, v9, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142);
  OUTLINED_FUNCTION_22_7();
  OUTLINED_FUNCTION_96(v10, v11);
  v12 = setjmp(v1);
  if (v12 || OUTLINED_FUNCTION_34_2(v12, &v116, v13, v14, v15, v16, v17, v18, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153))
  {
LABEL_3:
    v19 = 94;
    goto LABEL_4;
  }

  v22 = OUTLINED_FUNCTION_11_12();
  get_parm(v22, v23, v24, -6);
  v25 = OUTLINED_FUNCTION_28_4();
  get_parm(v25, v26, v27, -6);
  v28 = OUTLINED_FUNCTION_29_4();
  push_ptr_init(v28, v29);
  fence_14(v0, 0, &null_str_3);
  v30 = OUTLINED_FUNCTION_24_7();
  if (lpta_loadp_setscan_r(v30, v31) || advance_tok(v0) || (*(v0 + 136) = 1, v32 = OUTLINED_FUNCTION_16_10(), test_ptr(v32)))
  {
LABEL_24:
    v73 = OUTLINED_FUNCTION_19_7();
    starttest(v73, v74);
    v75 = OUTLINED_FUNCTION_38_1();
    if (lpta_loadp_setscan_r(v75, v76))
    {
LABEL_36:
      v114 = *(v0 + 5122);
      OUTLINED_FUNCTION_40_0();
      if (v115)
      {
        adjust_por_word_stress();
      }

      goto LABEL_15;
    }

    v77 = OUTLINED_FUNCTION_5_12();
    if (!testFldeq(v77, v78, v79, 7) && !advance_tok(v0))
    {
      v80 = OUTLINED_FUNCTION_19_7();
      startloop(v80, v81);
      v82 = OUTLINED_FUNCTION_38_1();
      lpta_loadpn(v82, v83);
      OUTLINED_FUNCTION_21_7();
      lpta_mover();
      lpta_storep(v0, v0 + 1320);
      v84 = OUTLINED_FUNCTION_30_3();
      lpta_loadpn(v84, v85);
      OUTLINED_FUNCTION_21_7();
      lpta_mover();
      v86 = OUTLINED_FUNCTION_25_7();
      lpta_storep(v86, v87);
      v88 = OUTLINED_FUNCTION_28_4();
      if (!forall_to_test(v88, v89, v90))
      {
LABEL_28:
        v91 = OUTLINED_FUNCTION_19_7();
        bspush_ca(v91);
        v92 = OUTLINED_FUNCTION_36_1();
        if (!lpta_loadp_setscan_r(v92, v93))
        {
          v94 = OUTLINED_FUNCTION_4_12();
          v97 = npush_fld(v94, v95, v96);
          if (!v97)
          {
            OUTLINED_FUNCTION_79_0(v97, v98, v99, v100, v101, v102, v103, v104);
            if (!if_testlt(v0, v105, v106, v107, v108, v109, v110, v111) && !advance_tok(v0))
            {
LABEL_32:
              savescptr(v0, 11, v0 + 1336);
LABEL_33:
              v112 = OUTLINED_FUNCTION_19_7();
              starttest(v112, v113);
              demote_word();
LABEL_34:
              if (!forto_adv_upto_r(v0, 8, 9, 12, 2, v0 + 1320))
              {
                goto LABEL_15;
              }
            }
          }
        }
      }
    }

    goto LABEL_20;
  }

  v33 = OUTLINED_FUNCTION_19_7();
  starttest(v33, v34);
  v35 = OUTLINED_FUNCTION_38_1();
  if (lpta_loadp_setscan_r(v35, v36))
  {
LABEL_18:
    v62 = OUTLINED_FUNCTION_14_10();
    starttest(v62, v63);
    v64 = OUTLINED_FUNCTION_38_1();
    if (lpta_loadp_setscan_r(v64, v65))
    {
      goto LABEL_15;
    }

    v66 = OUTLINED_FUNCTION_5_12();
    if (testFldeq(v66, v67, v68, 7))
    {
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  v37 = OUTLINED_FUNCTION_5_12();
  if (!testFldeq(v37, v38, v39, 6) && !advance_tok(v0))
  {
    v40 = OUTLINED_FUNCTION_19_7();
    starttest_l(v40, v41);
    v42 = OUTLINED_FUNCTION_36_1();
    if (lpta_loadp_setscan_r(v42, v43))
    {
LABEL_15:
      v19 = 0;
      goto LABEL_4;
    }

    v44 = OUTLINED_FUNCTION_4_12();
    v47 = npush_fld(v44, v45, v46);
    if (!v47)
    {
      OUTLINED_FUNCTION_79_0(v47, v48, v49, v50, v51, v52, v53, v54);
      if (!if_testgt(v0, v55, v56, v57, v58, v59, v60, v61))
      {
LABEL_16:
        if (!advance_tok(v0))
        {
          mark_word_stress();
          goto LABEL_15;
        }
      }
    }
  }

LABEL_20:
  v69 = *(v0 + 104);
  if (v69)
  {
    v70 = OUTLINED_FUNCTION_31_3(v69);
  }

  else
  {
    v71 = OUTLINED_FUNCTION_41_0();
    v70 = vback(v71, v72);
  }

  v19 = 0;
  switch(v70)
  {
    case 1:
      goto LABEL_24;
    case 2:
      goto LABEL_18;
    case 3:
    case 4:
    case 5:
    case 6:
    case 8:
    case 13:
      break;
    case 7:
      goto LABEL_36;
    case 9:
      goto LABEL_33;
    case 10:
      goto LABEL_34;
    case 11:
      goto LABEL_32;
    case 12:
      goto LABEL_28;
    default:
      goto LABEL_3;
  }

LABEL_4:
  vretproc(v0);
  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

void get_nuclear_accent()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_15_10();
  v90 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_72_0();
  v86 = 0;
  v87 = 0;
  OUTLINED_FUNCTION_2_13(v3, v4, v5, v6, v7, v8, v9, v10, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84);
  OUTLINED_FUNCTION_22_7();
  bzero(v89, v11);
  if (setjmp(v89))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_50_0();
  if (ventproc(v0, v12, v13, v14, v15, v89))
  {
    goto LABEL_3;
  }

  v17 = OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_95(v17, v18);
  v19 = OUTLINED_FUNCTION_47_0();
  get_parm(v19, v20, v21, -6);
  OUTLINED_FUNCTION_32_2(v22, &v86);
  v23 = OUTLINED_FUNCTION_28_4();
  get_parm(v23, v24, v25, -6);
  v26 = OUTLINED_FUNCTION_29_4();
  push_ptr_init(v26, v27);
  fence_14(v0, 0, &null_str_3);
  v28 = OUTLINED_FUNCTION_54_0();
  fence_14(v28, v29, v30);
  v31 = OUTLINED_FUNCTION_69_0();
  starttest(v31, v32);
  v33 = *(v0 + 5102);
  OUTLINED_FUNCTION_40_0();
  if (!v34)
  {
    v35 = OUTLINED_FUNCTION_45_0();
    if (!lpta_loadp_setscan_r(v35, v36))
    {
      v48 = OUTLINED_FUNCTION_69_0();
      bspush_ca_scan(v48, v49);
      v50 = OUTLINED_FUNCTION_26_7();
      v52 = 2;
      v53 = 6;
      while (2)
      {
        if (!testFldeq(v50, v51, v52, v53))
        {
LABEL_24:
          if (!advance_tok(v0))
          {
LABEL_3:
            vretproc(v0);
            goto LABEL_4;
          }
        }

        v54 = *(v0 + 104);
        if (v54)
        {
          v55 = OUTLINED_FUNCTION_31_3(v54);
        }

        else
        {
          v56 = OUTLINED_FUNCTION_41_0();
          v55 = vback(v56, v57);
        }

        switch(v55)
        {
          case 1:
            break;
          case 2:
            v50 = OUTLINED_FUNCTION_5_12();
            v53 = 7;
            continue;
          case 3:
            goto LABEL_24;
          case 4:
            goto LABEL_10;
          case 5:
            goto LABEL_9;
          case 6:
            goto LABEL_15;
          case 7:
            goto LABEL_14;
          case 8:
            goto LABEL_16;
          default:
            goto LABEL_3;
        }

        break;
      }
    }
  }

  v85 = v88;
  v37 = OUTLINED_FUNCTION_30_3();
  if (!lpta_loadp_setscan_l(v37, v38) && !advance_tok(v0))
  {
LABEL_9:
    savescptr(v0, 5, &v86);
  }

LABEL_10:
  v39 = OUTLINED_FUNCTION_38_1();
  lpta_loadpn(v39, v40);
  v41 = OUTLINED_FUNCTION_49_0();
  rpta_loadpn(v41, v42);
  if (!compare_ptas(v0) && !testneq(v0))
  {
    v43 = OUTLINED_FUNCTION_36_1();
    if (!lpta_loadp_setscan_l(v43, v44) && !advance_tok(v0))
    {
LABEL_14:
      v45 = OUTLINED_FUNCTION_37_1();
      savescptr(v45, v46, v47);
    }
  }

LABEL_15:
  mark_nuclear_accent();
LABEL_16:
  *(v2 + 8) = v87;
  *(v1 + 8) = v85;
  vretproc(v0);
LABEL_4:
  v16 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_98();
}

void adjust_accents()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_15_10();
  v401 = *MEMORY[0x277D85DE8];
  v396[0] = 0;
  v396[1] = 0;
  v395[0] = 0;
  v395[1] = 0;
  v394[0] = 0;
  v394[1] = 0;
  v392 = 0;
  v393 = 0;
  v390 = 0;
  v391 = 0;
  v388 = 0;
  v389 = 0;
  OUTLINED_FUNCTION_72_0();
  v382 = 0;
  v383 = 0;
  v380 = 0;
  v381 = 0;
  HIDWORD(v379) = 0;
  OUTLINED_FUNCTION_23_7();
  bzero(&v356, v1);
  OUTLINED_FUNCTION_22_7();
  bzero(v400, v2);
  if (setjmp(v400) || ventproc(v0, &v356, v399, v398, v397, v400))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_95(v0, v396);
  v4 = OUTLINED_FUNCTION_47_0();
  get_parm(v4, v5, v6, -6);
  OUTLINED_FUNCTION_32_2(v7, v394);
  v8 = OUTLINED_FUNCTION_28_4();
  get_parm(v8, v9, v10, -6);
  push_ptr_init(v0, &v390);
  push_ptr_init(v0, &v388);
  v11 = OUTLINED_FUNCTION_49_0();
  push_ptr_init(v11, v12);
  push_ptr_init(v0, &v384);
  v13 = OUTLINED_FUNCTION_38_1();
  push_ptr_init(v13, v14);
  v15 = OUTLINED_FUNCTION_30_3();
  push_ptr_init(v15, v16);
  HIDWORD(v379) = 65532;
  LODWORD(v17) = 0;
  v18 = OUTLINED_FUNCTION_33_2();
  fence_14(v18, v19, v20);
  v21 = OUTLINED_FUNCTION_44_0();
  fence_14(v21, v22, v23);
  v24 = OUTLINED_FUNCTION_81_0();
  starttest(v24, v25);
  v26 = *(v0 + 5102);
  OUTLINED_FUNCTION_40_0();
  if (!v27)
  {
    v28 = OUTLINED_FUNCTION_45_0();
    if (!lpta_loadp_setscan_r(v28, v29))
    {
      LODWORD(v17) = 2;
      v30 = OUTLINED_FUNCTION_67_0();
      bspush_ca_scan(v30, v31);
      v32 = OUTLINED_FUNCTION_26_7();
      v34 = testFldeq(v32, v33, 2, 6);
      v35 = 0;
      v36 = 0;
      if (!v34)
      {
LABEL_8:
        v35 = v36;
        if (!advance_tok(v0))
        {
          goto LABEL_3;
        }
      }

      goto LABEL_125;
    }

    LODWORD(v17) = 0;
  }

  while (2)
  {
    v35 = v17;
    v37 = OUTLINED_FUNCTION_14_10();
    starttest(v37, v38);
    v39 = OUTLINED_FUNCTION_36_1();
    if (!lpta_loadp_setscan_r(v39, v40))
    {
      v41 = OUTLINED_FUNCTION_4_12();
      v44 = npush_fld(v41, v42, v43);
      if (v44)
      {
        goto LABEL_125;
      }

      OUTLINED_FUNCTION_97(v44, v45, v46, v47, v48, v49, v50, v51);
      if (if_testlt(v0, v52, v53, v54, v55, v56, v57, v58) || advance_tok(v0))
      {
        goto LABEL_125;
      }

      v59 = OUTLINED_FUNCTION_14_10();
      starttest_l(v59, v60);
      v61 = OUTLINED_FUNCTION_36_1();
      if (!lpta_loadp_setscan_l(v61, v62))
      {
        LODWORD(v17) = 5;
        v63 = OUTLINED_FUNCTION_67_0();
        bspush_ca_scan(v63, v64);
        v65 = OUTLINED_FUNCTION_21_7();
        v67 = npush_fld(v65, v66, 5);
        if (v67)
        {
          goto LABEL_125;
        }

        OUTLINED_FUNCTION_79_0(v67, v68, v69, v70, v71, v72, v73, v74);
        if (if_testge(v0, v75, v76, v77, v78, v79, v80, v81))
        {
          goto LABEL_125;
        }

        LODWORD(v82) = v35;
        if (advance_tok(v0))
        {
          goto LABEL_125;
        }

LABEL_19:
        v35 = v82;
        if (advanc(v0))
        {
          goto LABEL_125;
        }

LABEL_20:
        v35 = v82;
        savescptr(v0, 6, &v388);
        v83 = OUTLINED_FUNCTION_4_12();
        v86 = npush_fld(v83, v84, v85);
        if (v86)
        {
          goto LABEL_125;
        }

        OUTLINED_FUNCTION_97(v86, v87, v88, v89, v90, v91, v92, v93);
        if (if_testgt(v0, v94, v95, v96, v97, v98, v99, v100) || advance_tok(v0))
        {
          goto LABEL_125;
        }

LABEL_23:
        v17 = &v390;
        v101 = OUTLINED_FUNCTION_28_4();
        savescptr(v101, v102, v103);
        OUTLINED_FUNCTION_25_7();
        mark_word_stress();
LABEL_24:
        v35 = v82;
        v104 = OUTLINED_FUNCTION_14_10();
        starttest(v104, v105);
        v106 = OUTLINED_FUNCTION_36_1();
        if (!lpta_loadp_setscan_r(v106, v107))
        {
          v149 = OUTLINED_FUNCTION_4_12();
          if (npush_fld(v149, v150, v151))
          {
            goto LABEL_125;
          }

          npush_v(v0, (v0 + 3056), v152, v153, v154, v155, v156, v157);
          if (if_testlt(v0, v158, v159, v160, v161, v162, v163, v164) || advance_tok(v0))
          {
            goto LABEL_125;
          }

          v165 = OUTLINED_FUNCTION_14_10();
          starttest(v165, v166);
          v167 = OUTLINED_FUNCTION_36_1();
          if (!lpta_loadp_setscan_l(v167, v168))
          {
LABEL_48:
            v35 = v82;
            LODWORD(v17) = 9;
            while (1)
            {
              v178 = OUTLINED_FUNCTION_4_12();
              v181 = npush_fld(v178, v179, v180);
              if (v181)
              {
                break;
              }

              OUTLINED_FUNCTION_97(v181, v182, v183, v184, v185, v186, v187, v188);
              if (if_testgt(v0, v169, v170, v171, v172, v173, v174, v175) || advance_tok(v0))
              {
                break;
              }

              v176 = OUTLINED_FUNCTION_25_7();
              bspush_ca_scan(v176, v177);
            }

            goto LABEL_125;
          }
        }
      }
    }

LABEL_25:
    v108 = *(v0 + 5130);
    OUTLINED_FUNCTION_40_0();
    if (!v27)
    {
      v109 = OUTLINED_FUNCTION_19_7();
      starttest_l(v109, v110);
      v111 = OUTLINED_FUNCTION_45_0();
      if (!lpta_loadp_setscan_r(v111, v112))
      {
        v189 = OUTLINED_FUNCTION_19_7();
        bspush_ca_scan(v189, v190);
        v191 = OUTLINED_FUNCTION_26_7();
        v193 = testFldeq(v191, v192, 1, 3);
        v194 = v35;
        if (v193)
        {
          goto LABEL_125;
        }

LABEL_55:
        v35 = v194;
        if (advance_tok(v0))
        {
          goto LABEL_125;
        }

        v195 = OUTLINED_FUNCTION_19_7();
        starttest_l(v195, v196);
        v197 = OUTLINED_FUNCTION_36_1();
        if (!lpta_loadp_setscan_l(v197, v198))
        {
          LODWORD(v82) = v35;
          if (!advanc(v0))
          {
LABEL_58:
            v35 = v82;
            savescptr(v0, 18, &v388);
            v199 = OUTLINED_FUNCTION_4_12();
            v202 = npush_fld(v199, v200, v201);
            if (v202)
            {
              goto LABEL_125;
            }

            OUTLINED_FUNCTION_79_0(v202, v203, v204, v205, v206, v207, v208, v209);
            if (if_testlt(v0, v210, v211, v212, v213, v214, v215, v216) || advance_tok(v0))
            {
              goto LABEL_125;
            }

LABEL_61:
            v17 = &v390;
            v217 = OUTLINED_FUNCTION_28_4();
            savescptr(v217, v218, v219);
            OUTLINED_FUNCTION_25_7();
            mark_word_stress();
LABEL_62:
            v35 = v82;
          }
        }
      }
    }

    v113 = *(v0 + 5110);
    OUTLINED_FUNCTION_40_0();
    if (v27)
    {
      LODWORD(v82) = v35;
      goto LABEL_30;
    }

    v127 = OUTLINED_FUNCTION_19_7();
    startloop(v127, v128);
    lpta_loadpn(v0, &v392);
    OUTLINED_FUNCTION_21_7();
    lpta_mover();
    lpta_storep(v0, v0 + 1320);
    lpta_loadpn(v0, v395);
    OUTLINED_FUNCTION_21_7();
    lpta_mover();
    v17 = &v380;
    v129 = OUTLINED_FUNCTION_25_7();
    lpta_storep(v129, v130);
    v131 = OUTLINED_FUNCTION_28_4();
    v134 = forall_to_test(v131, v132, v133);
    LODWORD(v82) = v35;
    if (v134)
    {
      goto LABEL_125;
    }

LABEL_38:
    v35 = v82;
    v135 = OUTLINED_FUNCTION_19_7();
    bspush_ca(v135);
    v136 = OUTLINED_FUNCTION_36_1();
    if (lpta_loadp_setscan_r(v136, v137) || advance_tok(v0))
    {
      goto LABEL_125;
    }

LABEL_40:
    savescptr(v0, 23, v0 + 1336);
LABEL_41:
    v35 = v82;
    v138 = OUTLINED_FUNCTION_19_7();
    starttest(v138, v139);
    v140 = OUTLINED_FUNCTION_36_1();
    if (lpta_loadp_setscan_r(v140, v141))
    {
LABEL_121:
      lpta_rpta_loadp(v0, v0 + 1320, v0 + 1336);
      v351 = OUTLINED_FUNCTION_4_12();
      if (mark_v(v351, v352, v353, v354))
      {
        goto LABEL_125;
      }

      OUTLINED_FUNCTION_9_12();
      v148 = mark_s();
    }

    else
    {
      v142 = OUTLINED_FUNCTION_19_7();
      bspush_ca_scan(v142, v143);
      v144 = OUTLINED_FUNCTION_21_7();
      v146 = testFldeq(v144, v145, 8, 1);
      v147 = v82;
      if (v146)
      {
        goto LABEL_125;
      }

LABEL_43:
      v35 = v147;
      v148 = advance_tok(v0);
    }

    LODWORD(v82) = v35;
    if (v148)
    {
LABEL_125:
      v228 = v35;
LABEL_63:
      v220 = *(v0 + 104);
      if (v220)
      {
        v221 = OUTLINED_FUNCTION_31_3(v220);
        v82 = v222;
      }

      else
      {
        v221 = vback(v0, v228);
        v82 = 0;
      }

      v223 = v221 - 1;
      v36 = v82;
      v35 = v82;
      v194 = v82;
      v147 = v82;
      v117 = v82;
      switch(v223)
      {
        case 0:
          LODWORD(v17) = v82;
          continue;
        case 1:
          v224 = OUTLINED_FUNCTION_5_12();
          v227 = testFldeq(v224, v225, v226, 7);
          v36 = v82;
          v228 = v82;
          if (!v227)
          {
            goto LABEL_8;
          }

          goto LABEL_63;
        case 2:
          goto LABEL_8;
        case 3:
          goto LABEL_25;
        case 4:
          goto LABEL_19;
        case 5:
          goto LABEL_20;
        case 6:
          goto LABEL_23;
        case 7:
          goto LABEL_24;
        case 8:
          savescptr(v0, 9, &v386);
          v257 = advance_tok(v0);
          v228 = v82;
          if (v257)
          {
            goto LABEL_63;
          }

          v258 = OUTLINED_FUNCTION_14_10();
          startloop(v258, v259);
          v260 = OUTLINED_FUNCTION_49_0();
          lpta_loadpn(v260, v261);
          OUTLINED_FUNCTION_21_7();
          lpta_mover();
          v17 = &v384;
          v262 = OUTLINED_FUNCTION_25_7();
          lpta_storep(v262, v263);
          lpta_loadpn(v0, &v390);
          OUTLINED_FUNCTION_21_7();
          lpta_mover();
          v264 = OUTLINED_FUNCTION_27_5();
          lpta_storep(v264, v265);
          v266 = OUTLINED_FUNCTION_6_12();
          v269 = forall_to_test(v266, v267, v268);
          v228 = v82;
          if (v269)
          {
            goto LABEL_63;
          }

          goto LABEL_80;
        case 9:
          goto LABEL_48;
        case 10:
          goto LABEL_83;
        case 11:
          goto LABEL_84;
        case 12:
          goto LABEL_82;
        case 13:
LABEL_80:
          v270 = OUTLINED_FUNCTION_19_7();
          bspush_ca(v270);
          v271 = OUTLINED_FUNCTION_36_1();
          v273 = lpta_loadp_setscan_r(v271, v272);
          v228 = v82;
          if (v273)
          {
            goto LABEL_63;
          }

          v274 = advance_tok(v0);
          v228 = v82;
          if (v274)
          {
            goto LABEL_63;
          }

LABEL_82:
          savescptr(v0, 13, &v382);
LABEL_83:
          v275 = OUTLINED_FUNCTION_19_7();
          starttest(v275, v276);
          v17 = (&v379 + 4);
          v277 = OUTLINED_FUNCTION_25_7();
          move_i(v277, v278, v279);
          OUTLINED_FUNCTION_28_4();
          v280 = demote_word();
          v228 = v82;
          if (v280)
          {
            goto LABEL_63;
          }

LABEL_84:
          v281 = forto_adv_upto_r(v0, 4, 11, 14, 2, &v384);
          v35 = v82;
          v228 = v82;
          if (!v281)
          {
            goto LABEL_25;
          }

          goto LABEL_63;
        case 14:
          goto LABEL_62;
        case 15:
          v231 = OUTLINED_FUNCTION_26_7();
          v233 = testFldeq(v231, v232, 1, 4);
          v194 = v82;
          v228 = v82;
          if (!v233)
          {
            goto LABEL_55;
          }

          goto LABEL_63;
        case 16:
          goto LABEL_55;
        case 17:
          goto LABEL_58;
        case 18:
          goto LABEL_61;
        case 19:
          goto LABEL_30;
        case 20:
          goto LABEL_41;
        case 21:
          goto LABEL_124;
        case 22:
          goto LABEL_40;
        case 23:
          v35 = v82;
          goto LABEL_121;
        case 24:
          v234 = OUTLINED_FUNCTION_19_7();
          bspush_ca_scan(v234, v235);
          v236 = OUTLINED_FUNCTION_21_7();
          v238 = testFldeq(v236, v237, 8, 4);
          goto LABEL_75;
        case 25:
          goto LABEL_43;
        case 26:
          v239 = OUTLINED_FUNCTION_4_12();
          v242 = npush_fld(v239, v240, v241);
          v228 = v82;
          if (v242)
          {
            goto LABEL_63;
          }

          OUTLINED_FUNCTION_79_0(v242, v82, v243, v244, v245, v246, v247, v248);
          v238 = if_testge(v0, v249, v250, v251, v252, v253, v254, v255);
LABEL_75:
          v147 = v82;
          v228 = v82;
          if (!v238)
          {
            goto LABEL_43;
          }

          goto LABEL_63;
        case 27:
          goto LABEL_38;
        case 28:
          v35 = v82;
          goto LABEL_32;
        case 29:
          v285 = OUTLINED_FUNCTION_19_7();
          bspush_ca(v285);
          v230 = *(v0 + 5102);
          goto LABEL_100;
        case 30:
          goto LABEL_31;
        case 31:
          v256 = OUTLINED_FUNCTION_19_7();
          bspush_ca(v256);
          v230 = *(v0 + 5110);
          goto LABEL_100;
        case 32:
          v321 = OUTLINED_FUNCTION_19_7();
          bspush_ca(v321);
          v230 = *(v0 + 5098);
          goto LABEL_100;
        case 33:
          v229 = OUTLINED_FUNCTION_19_7();
          bspush_ca(v229);
          v230 = *(v0 + 5122);
          goto LABEL_100;
        case 34:
          v230 = *(v0 + 5130);
LABEL_100:
          v117 = v82;
          v228 = v82;
          if (v230 == *(v0 + 5090))
          {
            goto LABEL_31;
          }

          goto LABEL_63;
        case 36:
          bspop_boa(v0);
          v286 = OUTLINED_FUNCTION_19_7();
          starttest(v286, v287);
          v288 = OUTLINED_FUNCTION_45_0();
          if (lpta_loadp_setscan_r(v288, v289))
          {
            goto LABEL_90;
          }

          v338 = OUTLINED_FUNCTION_5_12();
          v342 = testFldeq(v338, v339, v340, v341);
          v228 = v82;
          if (v342)
          {
            goto LABEL_63;
          }

          v343 = advance_tok(v0);
          v228 = v82;
          if (v343)
          {
            goto LABEL_63;
          }

          OUTLINED_FUNCTION_57_0(v343, v82, v344, v345, v346, v347, v348, v349, v355, v356, v357, v358, v359, v360, v361, v362, v363, v364, v365, v366, v367, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394[0]);
          OUTLINED_FUNCTION_21_7();
          goto LABEL_117;
        case 37:
          v282 = OUTLINED_FUNCTION_21_7();
          v284 = testFldeq(v282, v283, 8, 4);
          v228 = v82;
          if (!v284)
          {
            goto LABEL_34;
          }

          goto LABEL_63;
        case 38:
          goto LABEL_34;
        case 39:
LABEL_90:
          v290 = OUTLINED_FUNCTION_19_7();
          starttest(v290, v291);
          v292 = OUTLINED_FUNCTION_45_0();
          if (lpta_loadp_setscan_r(v292, v293))
          {
            goto LABEL_91;
          }

          v334 = OUTLINED_FUNCTION_5_12();
          v337 = testFldeq(v334, v335, v336, 1);
          v228 = v82;
          if (!v337)
          {
            v314 = advance_tok(v0);
            v228 = v82;
            if (!v314)
            {
              goto LABEL_113;
            }
          }

          goto LABEL_63;
        case 40:
LABEL_91:
          v294 = OUTLINED_FUNCTION_19_7();
          starttest(v294, v295);
          v296 = OUTLINED_FUNCTION_45_0();
          if (lpta_loadp_setscan_r(v296, v297))
          {
            goto LABEL_92;
          }

          v330 = OUTLINED_FUNCTION_5_12();
          v333 = testFldeq(v330, v331, v332, 2);
          v228 = v82;
          if (!v333)
          {
            v314 = advance_tok(v0);
            v228 = v82;
            if (!v314)
            {
              goto LABEL_113;
            }
          }

          goto LABEL_63;
        case 41:
LABEL_92:
          v298 = OUTLINED_FUNCTION_19_7();
          starttest(v298, v299);
          v300 = OUTLINED_FUNCTION_45_0();
          if (lpta_loadp_setscan_r(v300, v301))
          {
            goto LABEL_93;
          }

          v326 = OUTLINED_FUNCTION_5_12();
          v329 = testFldeq(v326, v327, v328, 3);
          v228 = v82;
          if (!v329)
          {
            v314 = advance_tok(v0);
            v228 = v82;
            if (!v314)
            {
              goto LABEL_113;
            }
          }

          goto LABEL_63;
        case 42:
LABEL_93:
          v302 = OUTLINED_FUNCTION_19_7();
          starttest(v302, v303);
          v304 = OUTLINED_FUNCTION_45_0();
          if (lpta_loadp_setscan_r(v304, v305))
          {
            goto LABEL_94;
          }

          v322 = OUTLINED_FUNCTION_5_12();
          v325 = testFldeq(v322, v323, v324, 4);
          v228 = v82;
          if (!v325)
          {
            v314 = advance_tok(v0);
            v228 = v82;
            if (!v314)
            {
              goto LABEL_113;
            }
          }

          goto LABEL_63;
        case 43:
LABEL_94:
          v306 = OUTLINED_FUNCTION_19_7();
          starttest(v306, v307);
          v308 = OUTLINED_FUNCTION_45_0();
          if (lpta_loadp_setscan_r(v308, v309))
          {
            goto LABEL_3;
          }

          v310 = OUTLINED_FUNCTION_5_12();
          v313 = testFldeq(v310, v311, v312, 5);
          v228 = v82;
          if (v313)
          {
            goto LABEL_63;
          }

          v314 = advance_tok(v0);
          v228 = v82;
          if (v314)
          {
            goto LABEL_63;
          }

LABEL_113:
          OUTLINED_FUNCTION_57_0(v314, v82, v315, v316, v317, v318, v319, v320, v355, v356, v357, v358, v359, v360, v361, v362, v363, v364, v365, v366, v367, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394[0]);
          OUTLINED_FUNCTION_9_12();
LABEL_117:
          v350 = mark_s();
          v228 = v82;
          if (!v350)
          {
            goto LABEL_3;
          }

          goto LABEL_63;
        default:
          goto LABEL_3;
      }
    }

    break;
  }

LABEL_124:
  v35 = v82;
  if (forto_adv_upto_r(v0, 20, 21, 28, 2, v0 + 1320))
  {
    goto LABEL_125;
  }

LABEL_30:
  v114 = OUTLINED_FUNCTION_19_7();
  starttest(v114, v115);
  v116 = OUTLINED_FUNCTION_19_7();
  bspush_ca(v116);
  v117 = v82;
  v35 = v82;
  if (*(v0 + 5094) != *(v0 + 5090))
  {
    goto LABEL_125;
  }

LABEL_31:
  v35 = v117;
  adjust_lg_specific_accents();
LABEL_32:
  v118 = OUTLINED_FUNCTION_19_7();
  starttest(v118, v119);
  v120 = OUTLINED_FUNCTION_36_1();
  if (!lpta_loadp_setscan_r(v120, v121))
  {
    OUTLINED_FUNCTION_19_7();
    bspush_ca_scan_boa();
    v122 = OUTLINED_FUNCTION_19_7();
    bspush_ca_scan(v122, v123);
    v124 = OUTLINED_FUNCTION_21_7();
    if (!testFldeq(v124, v125, 8, 2))
    {
LABEL_34:
      v126 = OUTLINED_FUNCTION_82_0();
      if (advance_tok(v126))
      {
        v35 = v17;
      }

      else
      {
        v35 = 1;
      }
    }

    goto LABEL_125;
  }

LABEL_3:
  vretproc(v0);
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_98();
}

void mark_nuclear_accent()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_15_10();
  v263 = *MEMORY[0x277D85DE8];
  v261[0] = 0;
  v261[1] = 0;
  v260[0] = 0;
  v260[1] = 0;
  OUTLINED_FUNCTION_2_13(v3, v4, v5, v6, v7, v8, v9, v10, v180, v183, v186, v189, v192, v195, v198, v201, v204, v207, v210, v213, v216, v219, v222, v225, v228, v231, v234, v237, v240, v243, v246, v249, v252, v255, v258);
  OUTLINED_FUNCTION_22_7();
  bzero(v262, v11);
  if (!setjmp(v262))
  {
    OUTLINED_FUNCTION_52_0();
    if (!ventproc(v0, v12, v13, v14, v15, v262))
    {
      OUTLINED_FUNCTION_95(v0, v261);
      v17 = OUTLINED_FUNCTION_38_1();
      OUTLINED_FUNCTION_70_0(v17, v18);
      OUTLINED_FUNCTION_20_7(v19, v20, v21, v22, v23, v24, v25, v26, v181, v184, v187, v190, v193, v196, v199, v202, v205, v208, v211, v214, v217, v220, v223, v226, v229, v232, v235, v238, v241, v244, v247, v250, v253, v256);
      v27 = OUTLINED_FUNCTION_24_7();
      OUTLINED_FUNCTION_62_0(v27, v28);
      v29 = OUTLINED_FUNCTION_33_2();
      fence_14(v29, v30, v31);
      v32 = OUTLINED_FUNCTION_87_0();
      fence_14(v32, v33, v34);
      starttest(v0, 1);
      v35 = OUTLINED_FUNCTION_24_7();
      v37 = lpta_loadp_setscan_l(v35, v36);
      LODWORD(v38) = 0;
      LODWORD(v39) = 0;
      if (v37)
      {
LABEL_5:
        v40 = OUTLINED_FUNCTION_19_7();
        starttest(v40, v41);
        v42 = OUTLINED_FUNCTION_29_4();
        v44 = lpta_loadp_setscan_l(v42, v43);
        LODWORD(v45) = v38;
        if (!v44)
        {
LABEL_16:
          v58 = v45;
          v88 = OUTLINED_FUNCTION_19_7();
          bspush_ca_scan(v88, v89);
          v90 = OUTLINED_FUNCTION_19_7();
          bspush_ca_scan(v90, v91);
          LODWORD(v38) = v58;
          if (!advanc(v0))
          {
LABEL_17:
            v58 = v38;
            v92 = OUTLINED_FUNCTION_37_1();
            savescptr(v92, v93, v94);
            v95 = OUTLINED_FUNCTION_4_12();
            v98 = npush_fld(v95, v96, v97);
            if (!v98)
            {
              OUTLINED_FUNCTION_79_0(v98, v99, v100, v101, v102, v103, v104, v105);
              if (!if_testlt(v0, v106, v107, v108, v109, v110, v111, v112) && !advance_tok(v0))
              {
LABEL_20:
                v113 = OUTLINED_FUNCTION_47_0();
                savescptr(v113, v114, v115);
                v116 = OUTLINED_FUNCTION_24_7();
                lpta_rpta_loadp(v116, v117, v118);
                v119 = OUTLINED_FUNCTION_4_12();
                v58 = v38;
                if (!mark_v(v119, v120, v121, v122))
                {
                  goto LABEL_15;
                }
              }
            }
          }

          goto LABEL_49;
        }

LABEL_6:
        v46 = OUTLINED_FUNCTION_19_7();
        starttest(v46, v47);
        v48 = OUTLINED_FUNCTION_29_4();
        v50 = lpta_loadp_setscan_l(v48, v49);
        LODWORD(v51) = v38;
        if (v50)
        {
LABEL_7:
          v52 = OUTLINED_FUNCTION_19_7();
          starttest(v52, v53);
          v54 = OUTLINED_FUNCTION_29_4();
          v56 = lpta_loadp_setscan_l(v54, v55);
          LODWORD(v57) = v38;
          if (v56)
          {
LABEL_8:
            v58 = v38;
            lpta_rpta_loadp(v0, v261, v260);
            OUTLINED_FUNCTION_5_12();
            if (!mark_s())
            {
              goto LABEL_15;
            }

            goto LABEL_49;
          }

LABEL_45:
          v58 = v57;
          v171 = OUTLINED_FUNCTION_19_7();
          bspush_ca_scan(v171, v172);
          v173 = OUTLINED_FUNCTION_19_7();
          bspush_ca_scan(v173, v174);
          LODWORD(v38) = v58;
          if (advanc(v0))
          {
            goto LABEL_49;
          }

LABEL_46:
          v175 = OUTLINED_FUNCTION_37_1();
          savescptr(v175, v176, v177);
          v149 = v38;
LABEL_47:
          v58 = v149;
          bspush_ca_scan_boa();
          v178 = OUTLINED_FUNCTION_21_7();
          if (!testFldeq(v178, v179, 8, 1))
          {
            v58 = 1;
          }

          goto LABEL_49;
        }

LABEL_22:
        v58 = v51;
        v123 = OUTLINED_FUNCTION_19_7();
        bspush_ca_scan(v123, v124);
        v125 = OUTLINED_FUNCTION_19_7();
        bspush_ca_scan(v125, v126);
        LODWORD(v38) = v58;
        if (advanc(v0))
        {
          goto LABEL_49;
        }

LABEL_23:
        v58 = v38;
        v127 = OUTLINED_FUNCTION_37_1();
        savescptr(v127, v128, v129);
        v130 = OUTLINED_FUNCTION_4_12();
        v133 = npush_fld(v130, v131, v132);
        if (!v133)
        {
          OUTLINED_FUNCTION_79_0(v133, v134, v135, v136, v137, v138, v139, v140);
          v148 = if_testle(v0, v141, v142, v143, v144, v145, v146, v147);
          v149 = v38;
          if (!v148)
          {
            goto LABEL_47;
          }
        }
      }

      else
      {
LABEL_10:
        v58 = v39;
        v59 = OUTLINED_FUNCTION_19_7();
        bspush_ca_scan(v59, v60);
        v61 = OUTLINED_FUNCTION_14_10();
        bspush_ca_scan(v61, v62);
        LODWORD(v38) = v58;
        if (!advanc(v0))
        {
LABEL_11:
          v58 = v38;
          v63 = OUTLINED_FUNCTION_37_1();
          savescptr(v63, v64, v65);
          v66 = OUTLINED_FUNCTION_4_12();
          v69 = npush_fld(v66, v67, v68);
          if (!v69)
          {
            OUTLINED_FUNCTION_97(v69, v70, v71, v72, v73, v74, v75, v76);
            if (!if_testle(v0, v77, v78, v79, v80, v81, v82, v83))
            {
              v84 = advance_tok(v0);
              if (!v84)
              {
LABEL_14:
                OUTLINED_FUNCTION_94(v84, v85, v39, v45, v51, v57, v86, v87, v182, v185, v188, v191, v194, v197, v200, v203, v206, v209, v212, v215, v218, v221, v224, v227, v230, v233, v236, v239, v242, v245, v248, v251, v254, v257);
LABEL_15:
                *(v2 + 8) = v259;
                *(v1 + 8) = v254;
                goto LABEL_3;
              }
            }
          }
        }
      }

LABEL_49:
      v152 = v58;
      while (2)
      {
        v150 = v0[13];
        if (v150)
        {
          v84 = OUTLINED_FUNCTION_31_3(v150);
          v38 = v85;
        }

        else
        {
          v84 = vback(v0, v152);
          v38 = 0;
        }

        v39 = v38;
        v45 = v38;
        v51 = v38;
        v57 = v38;
        switch(v84)
        {
          case 1:
            goto LABEL_5;
          case 2:
            goto LABEL_10;
          case 3:
            v151 = advance_tok(v0);
            LODWORD(v39) = v38;
            v152 = v38;
            if (!v151)
            {
              goto LABEL_10;
            }

            continue;
          case 4:
            goto LABEL_11;
          case 5:
            goto LABEL_14;
          case 6:
            goto LABEL_15;
          case 7:
            goto LABEL_6;
          case 8:
            goto LABEL_16;
          case 9:
            v169 = advance_tok(v0);
            LODWORD(v45) = v38;
            v152 = v38;
            if (!v169)
            {
              goto LABEL_16;
            }

            continue;
          case 10:
            goto LABEL_17;
          case 11:
            goto LABEL_20;
          case 12:
            goto LABEL_7;
          case 13:
            goto LABEL_22;
          case 14:
            v168 = advance_tok(v0);
            LODWORD(v51) = v38;
            v152 = v38;
            if (!v168)
            {
              goto LABEL_22;
            }

            continue;
          case 15:
            goto LABEL_23;
          case 16:
          case 23:
            bspop_boa(v0);
            OUTLINED_FUNCTION_24_7();
            bspush_ca_scan_boa();
            v153 = OUTLINED_FUNCTION_21_7();
            if (testFldeq(v153, v154, 8, 4))
            {
              v152 = v38;
            }

            else
            {
              v152 = 1;
            }

            continue;
          case 17:
            bspop_boa(v0);
            v156 = advance_tok(v0);
            v152 = v38;
            if (v156)
            {
              continue;
            }

            goto LABEL_38;
          case 18:
          case 25:
            goto LABEL_38;
          case 19:
            goto LABEL_8;
          case 20:
            goto LABEL_45;
          case 21:
            v170 = advance_tok(v0);
            LODWORD(v57) = v38;
            v152 = v38;
            if (!v170)
            {
              goto LABEL_45;
            }

            continue;
          case 22:
            goto LABEL_46;
          case 24:
            bspop_boa(v0);
            v155 = advance_tok(v0);
            v152 = v38;
            if (v155)
            {
              continue;
            }

LABEL_38:
            v157 = OUTLINED_FUNCTION_47_0();
            savescptr(v157, v158, v159);
            v160 = OUTLINED_FUNCTION_24_7();
            lpta_rpta_loadp(v160, v161, v162);
            v163 = OUTLINED_FUNCTION_4_12();
            v167 = mark_v(v163, v164, v165, v166);
            v152 = v38;
            if (!v167)
            {
              goto LABEL_15;
            }

            continue;
          default:
            goto LABEL_3;
        }
      }
    }
  }

LABEL_3:
  vretproc(v0);
  v16 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_98();
}

void insert_phrase_pause()
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_3_13();
  v37 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_72_0();
  v31 = 0u;
  v32 = 0u;
  OUTLINED_FUNCTION_23_7();
  bzero(v30, v1);
  OUTLINED_FUNCTION_22_7();
  bzero(v36, v2);
  if (!setjmp(v36))
  {
    OUTLINED_FUNCTION_50_0();
    v7 = ventproc(v0, v3, v4, v5, v6, v36);
    if (!v7)
    {
      OUTLINED_FUNCTION_32_2(v7, v35);
      v9 = OUTLINED_FUNCTION_28_4();
      get_parm(v9, v10, v11, -6);
      *&v32 = 0;
      *(&v32 + 6) = 0;
      LODWORD(v31) = -65532;
      fence_14(v0, 0, &null_str_3);
      fence_14(v0, 1, &unk_2806BB0BC);
      if (*(v0 + 3562))
      {
        while (2)
        {
          v12 = OUTLINED_FUNCTION_24_7();
          starttest(v12, v13);
          OUTLINED_FUNCTION_48_0();
          bspush_ca_boa();
          *(v0 + 136) = 1;
          *(v0 + 112) = v34;
          *(v0 + 128) = 0;
          OUTLINED_FUNCTION_68_0();
          if (!lpta_tstctxtl())
          {
            v14 = OUTLINED_FUNCTION_68_0();
            setscan_l(v14);
            if (!v15)
            {
              v16 = OUTLINED_FUNCTION_68_0();
              if (!testFldeq(v16, v17, 0, 40))
              {
                v18 = OUTLINED_FUNCTION_68_0();
                if (!testFldeq(v18, v19, 4, 7))
                {
                  advance_tok(v0);
                }
              }
            }
          }

          while (1)
          {
            v20 = *(v0 + 104);
            if (v20)
            {
              *(v0 + 104) = 0;
              v21 = v20;
            }

            else
            {
              v22 = OUTLINED_FUNCTION_43_0();
              v21 = vback(v22, v23);
            }

            if (v21 != 3)
            {
              break;
            }

            bspop_boa(v0);
            v24 = OUTLINED_FUNCTION_42_0();
            lpta_rpta_loadp(v24, v25, v33);
            OUTLINED_FUNCTION_39_0();
            settvar_s();
            WORD1(v31) = 11;
            v26 = OUTLINED_FUNCTION_39_0();
            copyvar(v26, v27, v28);
            OUTLINED_FUNCTION_68_0();
            insert_2ptv();
            if (!v29)
            {
              goto LABEL_18;
            }
          }

          if (v21 == 1)
          {
            continue;
          }

          break;
        }

        if (v21 == 2)
        {
LABEL_18:
          *(v0 + 3562) = *(v0 + 3254);
        }
      }
    }
  }

  vretproc(v0);
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_60_0();
}

uint64_t reset_phrase_vars(__int16 *a1)
{
  OUTLINED_FUNCTION_18_8(*MEMORY[0x277D85DE8], v25);
  OUTLINED_FUNCTION_17_9(v3, v4, v5, v6, v7, v8, v9, v10, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_0_14(v11, v12, v13, v14, v15, v16, v17, v18, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, *v73, v73[4], *v75, *&v75[4], v75[6], v77, SWORD2(v77), SBYTE6(v77), SHIBYTE(v77), v79, v81))
  {
    v19 = 94;
  }

  else
  {
    v19 = 0;
    v22 = OUTLINED_FUNCTION_33_2();
    fence_14(v22, v23, v24);
    a1[1545] = 0;
    copyvar(a1, a1 + 1540, a1 + 1544);
    a1[1595] = a1[1593];
    a1[1593] = 0;
    set_phrase_defaults();
  }

  vretproc(a1);
  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

uint64_t assign_unpuncted_phr_vals()
{
  OUTLINED_FUNCTION_3_13();
  v129 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_13(v2, v3, v4, v5, v6, v7, v8, v9, v38, v41, v44, v47, v50, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116);
  OUTLINED_FUNCTION_22_7();
  OUTLINED_FUNCTION_78_0(v10, v11, v12, v13, v14, v15, v16, v17, v39, v42, v45, v48, v51, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117, v119, v121, v123, v125, v127);
  v18 = setjmp(v1);
  if (v18 || OUTLINED_FUNCTION_7_12(v18, v19, v20, v21, v22, v23, v24, v25, v40, v43, v46, v49, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118, *v120, v120[4], *v122, *&v122[4], v122[6], v124, SWORD2(v124), SBYTE6(v124), SHIBYTE(v124), v126, v128))
  {
    v26 = 94;
  }

  else
  {
    v29 = OUTLINED_FUNCTION_11_12();
    get_parm(v29, v30, v31, -6);
    v32 = OUTLINED_FUNCTION_13_12();
    get_parm(v32, v33, v34, -6);
    v26 = 0;
    v35 = OUTLINED_FUNCTION_33_2();
    fence_14(v35, v36, v37);
    OUTLINED_FUNCTION_24_7();
    assign_currPhr_vals();
  }

  vretproc(v0);
  v27 = *MEMORY[0x277D85DE8];
  return v26;
}

void follows_end_quote()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_65_0();
  v77 = *MEMORY[0x277D85DE8];
  v72[27] = 0;
  v72[28] = 0;
  OUTLINED_FUNCTION_2_13(v1, v2, v3, v4, v5, v6, v7, v8, v72[0], v72[1], v72[2], v72[3], v72[4], v72[5], v72[6], v72[7], v72[8], v72[9], v72[10], v72[11], v72[12], v72[13], v72[14], v72[15], v72[16], v72[17], v72[18], v72[19], v72[20], v72[21], v72[22], v72[23], v72[24], v72[25], v72[26]);
  OUTLINED_FUNCTION_22_7();
  bzero(v76, v9);
  if (!setjmp(v76) && !ventproc(v0, v72, v75, v74, v73, v76))
  {
    v11 = OUTLINED_FUNCTION_27_5();
    OUTLINED_FUNCTION_62_0(v11, v12);
    v13 = OUTLINED_FUNCTION_24_7();
    push_ptr_init(v13, v14);
    v15 = OUTLINED_FUNCTION_29_4();
    push_ptr_init(v15, v16);
    v17 = 0;
    v18 = OUTLINED_FUNCTION_33_2();
    fence_14(v18, v19, v20);
    v21 = OUTLINED_FUNCTION_93();
    lpta_loadpn(v21, v22);
    OUTLINED_FUNCTION_21_7();
    lpta_mover();
    v23 = OUTLINED_FUNCTION_24_7();
    lpta_storep(v23, v24);
    v25 = OUTLINED_FUNCTION_27_5();
    if (!lpta_loadp_setscan_r(v25, v26))
    {
      OUTLINED_FUNCTION_35_1();
      if (!test_string_s())
      {
        v27 = OUTLINED_FUNCTION_19_7();
        starttest(v27, v28);
        v29 = OUTLINED_FUNCTION_30_3();
        if (lpta_loadp_setscan_l(v29, v30))
        {
          goto LABEL_3;
        }

        v17 = 0;
        while (2)
        {
          v31 = OUTLINED_FUNCTION_37_1();
          savescptr(v31, v32, v33);
          OUTLINED_FUNCTION_35_1();
          if (!test_string_s())
          {
LABEL_11:
            v34 = OUTLINED_FUNCTION_29_4();
            v36 = v17;
            if (lpta_loadp_setscan_r(v34, v35))
            {
              goto LABEL_32;
            }

            goto LABEL_29;
          }

LABEL_32:
          v61 = v17;
LABEL_33:
          v62 = *(v0 + 104);
          if (v62)
          {
            v63 = OUTLINED_FUNCTION_31_3(v62);
            v36 = v64;
          }

          else
          {
            v63 = vback(v0, v61);
            v36 = 0;
          }

          switch(v63)
          {
            case 1:
              v17 = v36;
              goto LABEL_14;
            case 3:
              v17 = v36;
              continue;
            case 4:
              bspop_boa(v0);
              v65 = advance_tok(v0);
              v61 = v36;
              if (v65)
              {
                goto LABEL_33;
              }

              v66 = OUTLINED_FUNCTION_25_7();
              goto LABEL_43;
            case 5:
            case 12:
            case 18:
              goto LABEL_29;
            case 8:
              v17 = v36;
              goto LABEL_22;
            case 10:
              v17 = v36;
              goto LABEL_19;
            case 11:
              bspop_boa(v0);
              v68 = advance_tok(v0);
              v61 = v36;
              if (v68)
              {
                goto LABEL_33;
              }

              v66 = OUTLINED_FUNCTION_27_5();
              goto LABEL_43;
            case 16:
              v17 = v36;
              goto LABEL_25;
            case 17:
              bspop_boa(v0);
              v69 = advance_tok(v0);
              v61 = v36;
              if (v69)
              {
                goto LABEL_33;
              }

              v66 = OUTLINED_FUNCTION_24_7();
LABEL_43:
              bspush_ca_scan(v66, v67);
              *(v0 + 136) = 1;
              v70 = OUTLINED_FUNCTION_16_10();
              v71 = test_ptr(v70);
              v61 = v36;
              if (!v71)
              {
                goto LABEL_3;
              }

              goto LABEL_33;
            default:
              goto LABEL_3;
          }
        }
      }

      v17 = 0;
    }

LABEL_14:
    v37 = OUTLINED_FUNCTION_38_1();
    if (lpta_loadp_setscan_r(v37, v38) || (OUTLINED_FUNCTION_35_1(), test_string_s()))
    {
LABEL_22:
      v46 = OUTLINED_FUNCTION_38_1();
      if (lpta_loadp_setscan_r(v46, v47))
      {
        goto LABEL_3;
      }

      OUTLINED_FUNCTION_35_1();
      if (test_string_s())
      {
        goto LABEL_3;
      }

      v48 = OUTLINED_FUNCTION_19_7();
      starttest(v48, v49);
      v50 = OUTLINED_FUNCTION_30_3();
      if (lpta_loadp_setscan_l(v50, v51))
      {
        goto LABEL_3;
      }

LABEL_25:
      v52 = OUTLINED_FUNCTION_37_1();
      savescptr(v52, v53, v54);
      OUTLINED_FUNCTION_35_1();
      if (!test_string_s())
      {
        v55 = OUTLINED_FUNCTION_29_4();
        if (!lpta_loadp_setscan_r(v55, v56))
        {
          v36 = v17;
LABEL_29:
          OUTLINED_FUNCTION_82_0();
          bspush_ca_scan_boa();
          v57 = OUTLINED_FUNCTION_35_1();
          if (testFldeq(v57, v58, v59, v60))
          {
            v17 = v36;
          }

          else
          {
            v17 = 1;
          }

          goto LABEL_32;
        }
      }
    }

    else
    {
      v39 = OUTLINED_FUNCTION_19_7();
      starttest(v39, v40);
      v41 = OUTLINED_FUNCTION_30_3();
      if (lpta_loadp_setscan_l(v41, v42))
      {
        goto LABEL_3;
      }

LABEL_19:
      v43 = OUTLINED_FUNCTION_37_1();
      savescptr(v43, v44, v45);
      OUTLINED_FUNCTION_35_1();
      if (!test_string_s())
      {
        goto LABEL_11;
      }
    }

    goto LABEL_32;
  }

LABEL_3:
  vretproc(v0);
  v10 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_98();
}

uint64_t OUTLINED_FUNCTION_0_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, char a33, int a34, __int16 a35, char a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, char a42)
{

  return ventproc(v42, &a9, &a40, &a36, &a33, &a42);
}

void OUTLINED_FUNCTION_2_13(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  a34 = 0;
  a35 = 0;
  a32 = 0;
  a33 = 0;

  bzero(&a9, 0xB8uLL);
}

uint64_t OUTLINED_FUNCTION_7_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, char a37, int a38, __int16 a39, char a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, char a46)
{

  return ventproc(v46, &a9, &a44, &a40, &a37, &a46);
}

void OUTLINED_FUNCTION_8_12(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  a32 = 0;
  a33 = 0;

  bzero(&a9, 0xB8uLL);
}

uint64_t OUTLINED_FUNCTION_16_10()
{
  *(v1 + 112) = v0;
  *(v1 + 128) = 0;
  return v1;
}

void OUTLINED_FUNCTION_17_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{

  bzero(&a36, 0xC0uLL);
}

void OUTLINED_FUNCTION_18_8(uint64_t a1@<X8>, uint64_t a2)
{
  *(v2 - 40) = a1;

  bzero(&a2, 0xB8uLL);
}

void OUTLINED_FUNCTION_20_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{

  get_parm(v34, &a34, v35, -6);
}

void OUTLINED_FUNCTION_32_2(uint64_t a1, uint64_t a2)
{

  get_parm(v2, a2, v3, -6);
}

uint64_t OUTLINED_FUNCTION_34_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, int a38, char a39, int a40, __int16 a41, char a42, int a43, __int16 a44, char a45, char a46)
{

  return ventproc(v46, a2, &a46, &a42, &a39, v47 - 248);
}

uint64_t OUTLINED_FUNCTION_56_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, char a35, int a36, __int16 a37, char a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, char a44)
{

  return ventproc(v44, a2, &a42, &a38, &a35, &a44);
}

uint64_t OUTLINED_FUNCTION_57_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, char a48)
{

  return lpta_rpta_loadp(v48, &a48, &a46);
}

uint64_t OUTLINED_FUNCTION_58_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41, char a42, int a43, __int16 a44, char a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, char a51)
{

  return ventproc(v51, a2, &a49, &a45, &a42, &a51);
}

void OUTLINED_FUNCTION_62_0(uint64_t a1, uint64_t a2)
{

  get_parm(a1, a2, v2, -6);
}

void OUTLINED_FUNCTION_70_0(uint64_t a1, uint64_t a2)
{

  get_parm(a1, a2, v2, -6);
}

void OUTLINED_FUNCTION_78_0(uint64_t a1, size_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{

  bzero(&a40, a2);
}

uint64_t OUTLINED_FUNCTION_79_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  return npush_v(v8, (v8 + 3044), a3, a4, a5, a6, a7, a8);
}

uint64_t OUTLINED_FUNCTION_80_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, int a49, char a50, int a51, __int16 a52, char a53, int a54, __int16 a55, char a56, char a57, uint64_t a58, char a59)
{

  return ventproc(v59, a2, &a57, &a53, &a50, &a59);
}

double OUTLINED_FUNCTION_94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{

  *&result = savescptr(v34, 5, &a34).n128_u64[0];
  return result;
}

void OUTLINED_FUNCTION_95(uint64_t a1, uint64_t a2)
{

  get_parm(a1, a2, v2, -6);
}

void OUTLINED_FUNCTION_96(uint64_t a1, size_t a2)
{

  bzero((v2 - 248), a2);
}

uint64_t OUTLINED_FUNCTION_97(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  return npush_v(v8, (v8 + 3032), a3, a4, a5, a6, a7, a8);
}

uint64_t DeltaProc_main(uint64_t a1)
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

uint64_t DeltaProc_start(uint64_t a1)
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
    init_platform(v22);
    set_global_constants(a1);
    init_vars(a1);
    init_user_dicts(a1, a1 + 4032, a1 + 4036, a1 + 4040);
    initStreamArrays(a1);
    resetStreamArrayC(a1);
    v19 = 0;
  }

  vretproc(a1);
  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

uint64_t DeltaProc_process_remaining(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v102 = *MEMORY[0x277D85DE8];
  LODWORD(v92) = 0;
  OUTLINED_FUNCTION_4_13(a1, a2, a3, a4, a5, a6, a7, a8, v45);
  OUTLINED_FUNCTION_1_14(v10, v11, v12, v13, v14, v15, v16, v17, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100);
  v18 = setjmp(v8);
  if (!v18 && !OUTLINED_FUNCTION_0_15(v18, v19, v20, v21, v22, v23, v24, v25, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, *v93, v93[4], *v95, *&v95[4], v95[6], v97, SWORD2(v97), SBYTE6(v97), SHIBYTE(v97), v99, v101))
  {
    fence_15(a1);
    v29 = OUTLINED_FUNCTION_11_13();
    starttest(v29, v30);
    v26 = 0;
    v31 = OUTLINED_FUNCTION_9_13();
    move_i(v31, v32, 0);
    v33 = OUTLINED_FUNCTION_9_13();
    if (!process_input(v33, v34, v35, v36, v37, v38, v39, v40))
    {
      goto LABEL_4;
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

    if (v42 == 1)
    {
      v26 = 0;
      goto LABEL_4;
    }
  }

  v26 = 94;
LABEL_4:
  vretproc(a1);
  v27 = *MEMORY[0x277D85DE8];
  return v26;
}

uint64_t process_input(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v72 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_13(a1, a2, a3, a4, a5, a6, a7, a8, v42);
  OUTLINED_FUNCTION_6_13();
  bzero(v71, v9);
  v10 = setjmp(v71);
  if (v10 || OUTLINED_FUNCTION_0_15(v10, v11, v12, v13, v14, v15, v16, v17, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, 0, v67, *v68, *&v68[4], v68[6], v69, SWORD2(v69), SBYTE6(v69), SHIBYTE(v69), v70, v71[0]))
  {
LABEL_3:
    v18 = 94;
  }

  else
  {
    v21 = OUTLINED_FUNCTION_16_11();
    get_parm(v21, v22, v23, -4);
    fence_15(a1);
    *(a1 + 2386) = 0;
    v24 = OUTLINED_FUNCTION_15_11();
    if (!lpta_loadp_setscan_r(v24, v25))
    {
      *(a1 + 136) = 1;
      if (!OUTLINED_FUNCTION_13_13())
      {
        reset_sent_vars(a1);
        v28 = 0;
        while (2)
        {
          v29 = v28;
          v30 = OUTLINED_FUNCTION_8_13();
          starttest(v30, v31);
          OUTLINED_FUNCTION_9_13();
          bspush_ca_boa();
          if (get_tok(a1))
          {
            v37 = v29;
          }

          else
          {
            v37 = 1;
          }

          v38 = *(a1 + 104);
          if (v38)
          {
            *(a1 + 104) = 0;
            v39 = v38;
            v28 = v37;
          }

          else
          {
            v39 = vback(a1, v37);
            v28 = 0;
          }

          switch(v39)
          {
            case 1:
              break;
            case 2:
              continue;
            case 3:
              if (v66 == 3 && *(a1 + 2346) == 1)
              {
                goto LABEL_32;
              }

              goto LABEL_7;
            case 4:
              bspop_boa(a1);
              goto LABEL_32;
            case 5:
              goto LABEL_32;
            case 6:
            case 14:
              goto LABEL_20;
            case 7:
              goto LABEL_21;
            case 8:
              goto LABEL_24;
            case 9:
              goto LABEL_25;
            case 10:
              goto LABEL_26;
            case 11:
              goto LABEL_27;
            case 12:
              goto LABEL_28;
            case 13:
              goto LABEL_30;
            default:
              goto LABEL_3;
          }

          break;
        }
      }
    }

LABEL_7:
    *(a1 + 2346) = 0;
    v26 = OUTLINED_FUNCTION_11_13();
    startloop(v26, v27);
LABEL_20:
    while (1)
    {
      get_input(a1);
LABEL_21:
      if (v66 == 3)
      {
        lpta_loadpn(a1, a1 + 2480);
        rpta_loadpn(a1, a1 + 3344);
        if (!compare_ptas(a1) && !testeq(a1))
        {
          break;
        }
      }

LABEL_24:
      normalize_text();
LABEL_25:
      if (!no_words_in_delta(a1, v37, v39, v32, v33, v34, v35, v36))
      {
        break;
      }

LABEL_26:
      if (*(a1 + 2390))
      {
LABEL_27:
        apply_rules(a1, v37, v39, v32, v33, v34, v35, v36);
LABEL_28:
        v40 = OUTLINED_FUNCTION_15_11();
        if (!lpta_loadp_setscan_r(v40, v41))
        {
          *(a1 + 136) = 1;
          if (!OUTLINED_FUNCTION_13_13())
          {
            break;
          }
        }

LABEL_30:
        reset_sent_vars(a1);
      }

      else
      {
        *(a1 + 2488) = *(a1 + 3352);
      }
    }

LABEL_32:
    v18 = 0;
  }

  vretproc(a1);
  v19 = *MEMORY[0x277D85DE8];
  return v18;
}