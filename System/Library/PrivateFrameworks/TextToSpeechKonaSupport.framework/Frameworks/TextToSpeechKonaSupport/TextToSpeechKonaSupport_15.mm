void setscan_nof_l(uint64_t a1)
{
  if (!OUTLINED_FUNCTION_6_43(a1))
  {
    v2 = *(v1 + 112);
    if (v2)
    {
      v3 = *(v1 + 192);
      OUTLINED_FUNCTION_2_50(v2);
      if (v5)
      {
        OUTLINED_FUNCTION_0_58(v4);
        *v6 = 0;
      }
    }
  }
}

uint64_t setscan_nof_r(uint64_t a1)
{
  if (OUTLINED_FUNCTION_6_43(a1))
  {
    return 1;
  }

  v3 = *(v1 + 112);
  if (!v3)
  {
    return 1;
  }

  v4 = *(v1 + 192);
  OUTLINED_FUNCTION_2_50(v3);
  result = 1;
  if (v6)
  {
    OUTLINED_FUNCTION_0_58(v5);
    *v8 = v7;
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_46(uint64_t a1, uint64_t a2)
{
  *(a1 + 112) = *(a2 + 8);
  *(a1 + 136) = 1;
  *(a1 + 128) = 0;

  return vtstsnc_tv(a1, a1 + 112);
}

uint64_t OUTLINED_FUNCTION_5_44(uint64_t a1, uint64_t a2)
{
  *(a1 + 168) = 1;
  *(a1 + 144) = *(a2 + 8);
  *(a1 + 128) = 0;

  return vtstsnc_tv(a1, a1 + 112);
}

uint64_t OUTLINED_FUNCTION_6_43(uint64_t a1)
{

  return vtstsnc_tv(a1, a1 + 112);
}

void *OUTLINED_FUNCTION_9_41()
{

  return save_var(v1, v0);
}

uint64_t chstream(void *a1, uint64_t a2, unsigned int a3)
{
  while (1)
  {
    v6 = a1[24];
    if (*(*(v6 + 8080) + 8 * (*(v6 + 9084) + a3)))
    {
      break;
    }

    v7 = 1;
    if (!vscanadv(a1, 0, 1))
    {
      return v7;
    }
  }

  v7 = 0;
  v8 = a1[25];
  v9 = *(v8 + 288);
  v10 = *(v8 + 1720) - v9;
  *v10 = 3;
  v11 = *(v8 + 1728);
  *(v10 + 8) = a2;
  v12 = *(v8 + 284);
  v13 = v10 - v12;
  *(v8 + 1720) = v13;
  *(v8 + 1728) = v11 - (v9 + v12);
  *v13 = 1;
  *(v13 + 8) = *(v6 + 8080);
  *(a1[35] + *(a1[33] + a3)) = 1;
  *(a1[24] + 8088) = a3;
  return v7;
}

BOOL conj_merge(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = visleft(a1, *(*(a1 + 192) + 8080), v4);
  v6 = *(a1 + 192);
  v7 = *(v6 + 8080);
  if (v5)
  {
    v8 = v6 + 4096;
    while (v4 != v7)
    {
      if (!v4 || (*v4 & 2) == 0)
      {
        return 1;
      }

      v4 = (*&v4[8 * *(v8 + 3992) + 24] & 0xFFFFFFFFFFFFFFFCLL);
    }

    if (*(v8 + 3993))
    {
      return 0;
    }

    goto LABEL_17;
  }

  v9 = visright(a1, v7, v4);
  v10 = *(a1 + 192);
  v7 = *(v10 + 8080);
  if (v9)
  {
    while (v4 != v7)
    {
      if (!v4 || (*v4 & 2) == 0)
      {
        return 1;
      }

      v4 = (*&v4[8 * *(v10 + 9084) + 8 * *(v10 + 8088)] & 0xFFFFFFFFFFFFFFFCLL);
    }

    if (*(v10 + 8089) != 1)
    {
      return 0;
    }

LABEL_17:
    *(a2 + 8) = v7;
    return 0;
  }

  return v7 != v4;
}

uint64_t proj_def_mult(uint64_t result, unsigned int a2, unsigned __int8 *a3, uint64_t a4)
{
  v6 = result;
  v7 = a2;
  if (a2)
  {
    do
    {
      *(v6 + 136) = 1;
      *(v6 + 112) = *(a4 + 8);
      *(v6 + 128) = 0;
      v8 = *a3++;
      result = proj_def();
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t proj_def()
{
  OUTLINED_FUNCTION_5_45();
  if (!vsync_tv(v2, v3) || (result = vdef_proj(v0, *(v0 + 112), v1), !result))
  {

    forceErrorBacktrack(v0);
  }

  return result;
}

uint64_t proj_l(uint64_t a1)
{
  if (!vsync_tv(a1, a1 + 144) || (v2 = OUTLINED_FUNCTION_19_31(), result = vproj_l(v2, v3, v4, v5), !result))
  {

    forceErrorBacktrack(a1);
  }

  return result;
}

uint64_t proj_r()
{
  OUTLINED_FUNCTION_5_45();
  if (!vsync_tv(v1, v2) || (v3 = OUTLINED_FUNCTION_19_31(), result = vproj_r(v3, v4, v5, v6), !result))
  {

    forceErrorBacktrack(v0);
  }

  return result;
}

uint64_t merge(uint64_t a1)
{
  if (!vsync_tv(a1, a1 + 112) || !vsync_tv(a1, a1 + 144))
  {
    forceErrorBacktrack(a1);
  }

  if (!vmergable(a1, *(a1 + 112), *(a1 + 144)))
  {
    forceErrorBacktrack(a1);
  }

  v2 = *(a1 + 112);
  v3 = *(a1 + 144);

  return vmerge(a1, v2, v3);
}

uint64_t initdelta(uint64_t a1, unsigned int a2, char *a3)
{
  if (a2)
  {
    if (*(a1 + 288) == a2)
    {
      freeDeltaHeapTo(a1, *(*(a1 + 200) + 8), 0);
      deltaReinit(a1, 1);
    }

    else
    {
      v7 = a2;
      do
      {
        if (!vinit_stm(a1, *a3))
        {
          forceErrorBacktrack(a1);
        }

        --v7;
        ++a3;
      }

      while (v7);
    }
  }

  else
  {
    for (i = 0; i < *(a1 + 288); ++i)
    {
      if (!vinit_stm(a1, i))
      {
        forceErrorBacktrack(a1);
      }
    }
  }

  return vscaninit(a1);
}

uint64_t delete_1pt()
{
  OUTLINED_FUNCTION_5_45();
  if (!vsync_tv(v2, v3) || (result = vdel_1pt(v0, v1, *(v0 + 112)), !result))
  {

    forceErrorBacktrack(v0);
  }

  return result;
}

uint64_t delete_2pt(uint64_t *a1, char a2)
{
  OUTLINED_FUNCTION_1_54();
  if (vrange_2pt(v4, v5, v6, v7, v8))
  {
    return 1;
  }

  OUTLINED_FUNCTION_8_42();
  vdel_2pt(a1, a2, v10, v11);
  return 0;
}

uint64_t mark_v(uint64_t a1, unsigned int a2, int a3, __int16 *a4)
{
  OUTLINED_FUNCTION_1_54();
  if (vrange_2pt(v8, v9, v10, v11, v12))
  {
    v13 = 1;
    result = 1;
    if (*a4 < 0)
    {
      return result;
    }

    goto LABEL_3;
  }

  v31 = 0;
  v32 = 0;
  vinitloc_new(a1, &v31, a4);
  if (v32 == *&vstmtbl[12 * a2 + 1][40 * a3 + 30])
  {
    v23 = OUTLINED_FUNCTION_12_39(v15, v16, v17, v18, v19, v20, v21, v22, v31);
    if (v32 >= 0xFFFAu)
    {
      OUTLINED_FUNCTION_12_39(v23, v24, v25, v26, v27, v28, v29, v30, v31);
    }
  }

  v13 = 0;
  result = 0;
  if ((*a4 & 0x80000000) == 0)
  {
LABEL_3:
    a4[1] = -1;
    return v13;
  }

  return result;
}

uint64_t mark_s()
{
  OUTLINED_FUNCTION_4_45();
  v13 = v0;
  OUTLINED_FUNCTION_1_54();
  if (vrange_2pt(v1, v2, v3, v4, v5))
  {
    return 1;
  }

  OUTLINED_FUNCTION_0_59(vstmtbl);
  if (v7 == -1)
  {
    OUTLINED_FUNCTION_14_37();
    OUTLINED_FUNCTION_7_43(v8, v9, v10, v11, v12, &v13);
  }

  return 0;
}

uint64_t mark_l()
{
  OUTLINED_FUNCTION_4_45();
  v13 = v0;
  OUTLINED_FUNCTION_1_54();
  if (vrange_2pt(v1, v2, v3, v4, v5))
  {
    return 1;
  }

  OUTLINED_FUNCTION_0_59(vstmtbl);
  if (v7 == -2)
  {
    OUTLINED_FUNCTION_14_37();
    OUTLINED_FUNCTION_7_43(v8, v9, v10, v11, v12, &v13);
  }

  return 0;
}

uint64_t mark_lng()
{
  OUTLINED_FUNCTION_4_45();
  v13 = v0;
  OUTLINED_FUNCTION_1_54();
  if (vrange_2pt(v1, v2, v3, v4, v5))
  {
    return 1;
  }

  OUTLINED_FUNCTION_0_59(vstmtbl);
  if (v7 == -3)
  {
    OUTLINED_FUNCTION_14_37();
    OUTLINED_FUNCTION_7_43(v8, v9, v10, v11, v12, &v13);
  }

  return 0;
}

uint64_t mark_i()
{
  OUTLINED_FUNCTION_4_45();
  v13 = v0;
  OUTLINED_FUNCTION_1_54();
  if (vrange_2pt(v1, v2, v3, v4, v5))
  {
    return 1;
  }

  OUTLINED_FUNCTION_0_59(vstmtbl);
  if (v7 == -4)
  {
    OUTLINED_FUNCTION_14_37();
    OUTLINED_FUNCTION_7_43(v8, v9, v10, v11, v12, &v13);
  }

  return 0;
}

uint64_t mark_f()
{
  OUTLINED_FUNCTION_4_45();
  v13 = v0;
  OUTLINED_FUNCTION_1_54();
  if (vrange_2pt(v1, v2, v3, v4, v5))
  {
    return 1;
  }

  OUTLINED_FUNCTION_0_59(vstmtbl);
  if (v7 == -5)
  {
    OUTLINED_FUNCTION_14_37();
    OUTLINED_FUNCTION_7_43(v8, v9, v10, v11, v12, &v13);
  }

  return 0;
}

uint64_t insert_2pt(uint64_t *a1, unsigned int a2, int a3, _BYTE *a4)
{
  OUTLINED_FUNCTION_1_54();
  if (vrange_2pt(v8, v9, v10, v11, v12))
  {
    return 1;
  }

  visnonseq(a1, a2, a1[14], a1[18]);
  if (ins_tokens(a1, a2, a4, a3))
  {
    return 0;
  }

  else
  {
    return 245;
  }
}

void insert_2ptv()
{
  OUTLINED_FUNCTION_3_47();
  if (vrange_2pt(v5, v5 + 14, (v5 + 18), v3, v6))
  {
    if ((*v0 & 0x80000000) == 0)
    {
      OUTLINED_FUNCTION_9_42();
    }
  }

  else
  {
    OUTLINED_FUNCTION_11_40();
    if (v4 < 0 && (v7 = STMTYP(v3), v4 != v7))
    {
      STMTYP(v3);
      OUTLINED_FUNCTION_10_42();
      switch(v18)
      {
        case 0:
          v19 = v1[24];
          v20 = 8256;
          goto LABEL_18;
        case 1:
        case 3:
          v19 = v1[24];
          v20 = 8242;
          goto LABEL_18;
        case 2:
          v19 = v1[24];
          v20 = 8200;
          goto LABEL_18;
        case 4:
          v19 = v1[24];
          v20 = 8194;
LABEL_18:
          v31 = (v19 + v20);
          break;
        default:
          break;
      }

      OUTLINED_FUNCTION_2_51(vstmtbl, v29, v30, v31, v32, v33);
      OUTLINED_FUNCTION_16_35(v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31);
      OUTLINED_FUNCTION_8_42();
      v17 = &v31;
    }

    else
    {
      OUTLINED_FUNCTION_6_44(v7, v8, v9, v10, v11, v12, v13, v14, v29);
      OUTLINED_FUNCTION_8_42();
      v17 = &v29;
    }

    if (!vins_tok(v1, v2, v15, v16, v17))
    {
      forceErrorBacktrack(v1);
    }

    if ((*v0 & 0x80000000) == 0)
    {
      OUTLINED_FUNCTION_9_42();
    }
  }
}

uint64_t insert_l(uint64_t a1)
{
  if (!vrange_l() || (result = OUTLINED_FUNCTION_15_37(), !result))
  {

    forceErrorBacktrack(a1);
  }

  return result;
}

uint64_t insert_r(uint64_t a1)
{
  OUTLINED_FUNCTION_1_54();
  if (!vrange_r() || (result = OUTLINED_FUNCTION_15_37(), !result))
  {

    forceErrorBacktrack(a1);
  }

  return result;
}

void insert_lv()
{
  OUTLINED_FUNCTION_3_47();
  if (!vrange_l())
  {
    forceErrorBacktrack(v1);
  }

  OUTLINED_FUNCTION_11_40();
  if (v4 < 0 && (v5 = STMTYP(v3), v4 != v5))
  {
    STMTYP(v3);
    OUTLINED_FUNCTION_10_42();
    switch(v16)
    {
      case 0:
        v17 = v1[24];
        v18 = 8256;
        goto LABEL_16;
      case 1:
      case 3:
        v17 = v1[24];
        v18 = 8242;
        goto LABEL_16;
      case 2:
        v17 = v1[24];
        v18 = 8200;
        goto LABEL_16;
      case 4:
        v17 = v1[24];
        v18 = 8194;
LABEL_16:
        v29 = (v17 + v18);
        break;
      default:
        break;
    }

    OUTLINED_FUNCTION_2_51(vstmtbl, v27, v28, v29, v30, v31);
    OUTLINED_FUNCTION_16_35(v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29);
    OUTLINED_FUNCTION_8_42();
    v15 = &v29;
  }

  else
  {
    OUTLINED_FUNCTION_6_44(v5, v6, v7, v8, v9, v10, v11, v12, v27);
    OUTLINED_FUNCTION_8_42();
    v15 = &v27;
  }

  if (!vins_tok(v1, v2, v13, v14, v15))
  {
    forceErrorBacktrack(v1);
  }

  if ((*v0 & 0x80000000) == 0)
  {
    OUTLINED_FUNCTION_9_42();
  }
}

void insert_rv()
{
  OUTLINED_FUNCTION_3_47();
  if (!vrange_r())
  {
    forceErrorBacktrack(v1);
  }

  OUTLINED_FUNCTION_11_40();
  if (v4 < 0 && (v5 = STMTYP(v3), v4 != v5))
  {
    STMTYP(v3);
    OUTLINED_FUNCTION_10_42();
    switch(v16)
    {
      case 0:
        v17 = v1[24];
        v18 = 8256;
        break;
      case 1:
      case 3:
        v17 = v1[24];
        v18 = 8242;
        break;
      case 2:
        v17 = v1[24];
        v18 = 8200;
        break;
      case 4:
        v17 = v1[24];
        v18 = 8194;
        break;
      default:
        forceErrorBacktrack(v1);
    }

    OUTLINED_FUNCTION_2_51(vstmtbl, v27, v28, v17 + v18, v30, v31);
    OUTLINED_FUNCTION_16_35(v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29);
    OUTLINED_FUNCTION_8_42();
    v15 = &v29;
  }

  else
  {
    OUTLINED_FUNCTION_6_44(v5, v6, v7, v8, v9, v10, v11, v12, v27);
    OUTLINED_FUNCTION_8_42();
    v15 = &v27;
  }

  if (!vins_tok(v1, v2, v13, v14, v15))
  {
    forceErrorBacktrack(v1);
  }

  if ((*v0 & 0x80000000) == 0)
  {
    OUTLINED_FUNCTION_9_42();
  }
}

uint64_t generate()
{
  OUTLINED_FUNCTION_5_45();
  if (!vprt_range(v2, v3, v2 + 144) || (result = vgen(v0, v0 + 112, (v0 + 144), *(v0 + 192) + 8160, v1), !result))
  {

    forceErrorBacktrack(v0);
  }

  return result;
}

void gendef_framedur(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_18_33(a1);
  OUTLINED_FUNCTION_13_39(v2, v3, v4);
  vassign(v1, &v6, &v7);
  OUTLINED_FUNCTION_20_29(8152);
  if ((v5 & 0x80000000) == 0)
  {
    OUTLINED_FUNCTION_9_42();
  }
}

uint64_t gendef_timestm(uint64_t result, char a2)
{
  v2 = *(result + 192) + 4096;
  *(v2 + 4040) = a2;
  *(v2 + 4056) |= 2u;
  return result;
}

uint64_t gendef_params(uint64_t a1)
{
  OUTLINED_FUNCTION_17_34(a1);
  *(v3 + 4041) = v5;
  if ((*(v3 + 4056) & 4) != 0)
  {
    v6 = *(v4 + 8144);
  }

  else
  {
    v6 = dynaBufNew(v2);
    *(v4 + 8144) = v6;
  }

  for (result = dynaBufReset(v6); v2; --v2)
  {
    v8 = *v1++;
    result = dynaBufAddChar(*(v4 + 8144), v8, 0);
  }

  *(v3 + 4056) |= 4u;
  return result;
}

void gencur_framedur(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_18_33(a1);
  OUTLINED_FUNCTION_13_39(v2, v3, v4);
  vassign(v1, &v6, &v7);
  OUTLINED_FUNCTION_20_29(8184);
  if ((v5 & 0x80000000) == 0)
  {
    OUTLINED_FUNCTION_9_42();
  }
}

uint64_t gencur_timestm(uint64_t result, char a2)
{
  v2 = *(result + 192) + 4096;
  *(v2 + 4072) = a2;
  *(v2 + 4088) |= 2u;
  return result;
}

uint64_t gencur_params(uint64_t a1)
{
  OUTLINED_FUNCTION_17_34(a1);
  *(v3 + 4073) = v5;
  if ((*(v3 + 4088) & 4) != 0)
  {
    v6 = *(v4 + 8176);
  }

  else
  {
    v6 = dynaBufNew(v2);
    *(v4 + 8176) = v6;
  }

  for (result = dynaBufReset(v6); v2; --v2)
  {
    v8 = *v1++;
    result = dynaBufAddChar(*(v4 + 8176), v8, 0);
  }

  *(v3 + 4088) |= 4u;
  return result;
}

void OUTLINED_FUNCTION_2_51(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, char a6)
{
  a6 = *(*(a1 + 96 * v8 + 8) + 32);

  vinitloc_new(v7, &a2, v6);
}

void OUTLINED_FUNCTION_6_44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  vinitloc_new(v10, &a9, v9);
}

uint64_t OUTLINED_FUNCTION_7_43(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{

  return vmark(v8, v7, v6, a4, a5, a6);
}

uint64_t OUTLINED_FUNCTION_12_39(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = v11[14];
  v14 = v11[18];

  return vmark(v11, v10, v9, v13, v14, a9);
}

void OUTLINED_FUNCTION_13_39(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  vinitloc_new(a1, va, v3);
}

uint64_t OUTLINED_FUNCTION_15_37()
{

  return ins_tokens(v0, v3, v1, v2);
}

void OUTLINED_FUNCTION_16_35(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, uint64_t a10, void *a11)
{

  vassign(v11, &a11, &a9);
}

uint64_t OUTLINED_FUNCTION_19_31()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 112);
  return v0;
}

uint64_t ccode_new(uint64_t a1)
{
  v2 = malloc_type_malloc(0x2460uLL, 0x10F004041F5ADEFuLL);
  *(a1 + 192) = v2;
  bzero(v2, 0x2460uLL);

  return ccode_misc_new(a1);
}

void ccode_delete(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 192);
    if (v2)
    {
      bzero(v2, 0x2460uLL);
      free(*(a1 + 192));
      *(a1 + 192) = 0;
    }
  }
}

void forceErrorBacktrack(uint64_t a1)
{
  v1 = *(a1 + 192);
  *(v1 + 8012) = 1;
  longjmp(*(v1 + 8016), 1);
}

void get_parm(uint64_t a1, uint64_t a2, __int16 *a3, __int16 a4)
{
  v18[0] = 0;
  v18[1] = 0;
  *a2 = a4;
  switch(a4)
  {
    case -6:
      *(a2 + 8) = *(a3 + 1);
      v6 = *(a1 + 192);
      v7 = *v6;
      if (v7 <= 998)
      {
        *v6 = v7 + 1;
        *&v6[2 * v7 + 2] = a2;
      }

      return;
    case -5:
      OUTLINED_FUNCTION_2_52();
      if (v10)
      {
        v16 = OUTLINED_FUNCTION_3_48();
        goto LABEL_28;
      }

      if (v15 == 65532)
      {
        v16 = a3[1];
        goto LABEL_28;
      }

      if (v15 == 65533)
      {
        v16 = COERCE__INT64(OUTLINED_FUNCTION_3_48());
LABEL_28:
        *(a2 + 8) = v16;
        return;
      }

      if ((v15 & 0x80000000) == 0)
      {
        vinitloc_new(v14, v18, a3);
        *(a2 + 8) = *v18[0];
        goto LABEL_31;
      }

      return;
    case -4:
      OUTLINED_FUNCTION_2_52();
      if (v10)
      {
        v17 = OUTLINED_FUNCTION_3_48();
      }

      else
      {
        if (v9 != 65532)
        {
          if (v9 == 65533)
          {
            *(a2 + 2) = *(a3 + 1);
          }

          else if ((v9 & 0x80000000) == 0)
          {
            vinitloc_new(v8, v18, a3);
            *(a2 + 2) = *v18[0];
            goto LABEL_31;
          }

          return;
        }

        LOWORD(v17) = a3[1];
      }

      *(a2 + 2) = v17;
      return;
    case -3:
      OUTLINED_FUNCTION_2_52();
      if (v10)
      {
        v13 = OUTLINED_FUNCTION_3_48();
        goto LABEL_24;
      }

      if (v12 == 65532)
      {
        v13 = a3[1];
        goto LABEL_24;
      }

      if (v12 == 65533)
      {
        v13 = *(a3 + 1);
LABEL_24:
        *(a2 + 8) = v13;
        return;
      }

      if ((v12 & 0x80000000) == 0)
      {
        vinitloc_new(v11, v18, a3);
        *(a2 + 8) = *v18[0];
LABEL_31:
        if ((*a3 & 0x80000000) == 0)
        {
          a3[1] = -1;
        }
      }

      return;
    default:
      return;
  }
}

void vinitloc_new(uint64_t a1, uint64_t a2, __int16 *a3)
{
  v5 = *a3;
  if (v5 < 0)
  {
    *(a2 + 8) = v5;
    v9 = v5 + 6;
    if (v9 > 3u)
    {
      v8 = 0;
      goto LABEL_9;
    }

    v8 = 0;
    v10 = (a3 + *&asc_26E780248[8 * v9]);
    goto LABEL_7;
  }

  v6 = a3[1];
  if (v6 == -1)
  {
    v8 = 0;
    *(a2 + 8) = v5;
    v10 = a3 + 8;
LABEL_7:
    *a2 = v10;
    goto LABEL_9;
  }

  *a2 = (*&vstmtbl[12 * *a3 + 2][8 * v6])(a3 + 8);
  v7 = &vstmtbl[12 * *a3 + 1][40 * v6];
  *(a2 + 8) = *(v7 + 15);
  v8 = v7[32];
LABEL_9:
  *(a2 + 10) = v8;
}

uint64_t push_ptr_init(uint64_t a1, uint64_t a2)
{
  *(a2 + 8) = 0;
  *a2 = -6;
  v2 = *(a1 + 192);
  v3 = *v2;
  if (v3 > 998)
  {
    return 0;
  }

  *v2 = v3 + 1;
  *&v2[2 * v3 + 2] = a2;
  return 1;
}

uint64_t set_saved_ptrs(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v4 = 8 * (*(result + 16) & ~(*(result + 16) >> 31));
  while (v4 != v3)
  {
    v5 = *(*(result + 24) + v3);
    if (*v5 == a2)
    {
      *v5 = a3;
    }

    v3 += 8;
  }

  v6 = *(result + 192);
  v7 = v6[2002];
  v10 = *v6;
  v8 = v6 + 2;
  v9 = v10;
  while (v9 >= 1)
  {
    for (i = v7; i < v9; ++i)
    {
      v12 = *&v8[2 * i];
      if (*(v12 + 8) == a2)
      {
        *(v12 + 8) = a3;
      }
    }

    v9 = v7 - 2;
    v7 = v8[2 * v7 - 2];
  }

  return result;
}

uint64_t for_loop_preamble(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = *(a1 + 192);
  v6 = v5 + 4096;
  *(v5 + 8056) = a3;
  *(v5 + 8064) = a2;
  *(v5 + 8096) = 0;
  *(a1 + 136) = 1;
  v7 = *(a5 + 8);
  *(a1 + 112) = v7;
  if (!v7 || (*(v7 + 8 * (*(v5 + 9084) + a4)) & 1) == 0)
  {
    return 0;
  }

  *(v5 + 8080) = v7;
  *(v5 + 8088) = a4;
  v8 = 1;
  *(v6 + 3994) = 1;
  *(*(a1 + 280) + *(*(a1 + 264) + a4)) = 1;
  return v8;
}

uint64_t vback(void *a1, int a2)
{
  if (*(a1[24] + 8012))
  {
    return -1;
  }

  while (2)
  {
    v5 = a1[25];
    v6 = *(v5 + 1720);
    switch(*v6)
    {
      case 0:
        v7 = *(v5 + 288);
        OUTLINED_FUNCTION_0_60(v5);
        if (a2)
        {
          continue;
        }

        break;
      case 1:
        v13 = *(v5 + 284);
        OUTLINED_FUNCTION_0_60(v5);
        *(a1[24] + 8080) = *(v6 + 8);
        continue;
      case 2:
        v9 = *(v5 + 280);
        v10 = *(v6 + 16);
        v11 = v9 + ((v10 - 1) | 3) + 1;
        *(v5 + 1728) += v11;
        *(v5 + 1720) = v6 + v11;
        memcpy(*(v6 + 8), (v6 + v9), v10);
        continue;
      case 3:
        v12 = *(v5 + 288);
        OUTLINED_FUNCTION_0_60(v5);
        if (a2 || !vscanadv(a1, 0, 1))
        {
          continue;
        }

        break;
      case 4:
        v8 = *(v5 + 296);
        OUTLINED_FUNCTION_0_60(v5);
        a2 -= a2 > 0;
        continue;
      case 5:
        v14 = *(v5 + 292);
        OUTLINED_FUNCTION_0_60(v5);
        *(v15 + 1760) = *(v6 + 8);
        continue;
      case 6:
        v16 = *(v5 + 296);
        OUTLINED_FUNCTION_0_60(v5);
        ++a2;
        continue;
      default:
        return -1;
    }

    break;
  }

  return *(v6 + 8);
}

uint64_t vinitrun(int *a1)
{
  v2 = 0;
  *(*(a1 + 24) + 8121) = 0;
  while (1)
  {
    v3 = *(a1 + 288);
    if (v2 >= v3)
    {
      break;
    }

    *(*(a1 + 31) + v2) = 0;
    *(*(a1 + 33) + v2) = *(a1 + 288);
    *(*(a1 + 35) + v2++) = 0;
  }

  *(*(a1 + 35) + v3) = 0;
  v5 = *(a1 + 24);
  v4 = *(a1 + 25);
  v7 = *v4;
  v6 = v4[1];
  v8 = *(a1 + 12);
  *(*(a1 + 11) + 8) = v7;
  *(v8 + 8) = v6;
  *(v5 + 8152) = 0;
  *(v5 + 8184) = 0;
  *(v5 + 9296) = 0;
  v9 = *(v5 + 8024);
  if (v9 == 255 || v9 == 249)
  {
    result = vdltinit(a1, 1);
    if (!result)
    {
      return result;
    }

    v11 = *(a1 + 25);
    v13 = *v11;
    v12 = v11[1];
    v14 = *(a1 + 12);
    *(*(a1 + 11) + 8) = v13;
    *(v14 + 8) = v12;
  }

  v15 = 0;
  v16 = 0;
  *(*(a1 + 23) + 452) = 0;
  while (v16 < *a1)
  {
    OUTLINED_FUNCTION_1_55();
    ++v16;
    v15 += 16;
  }

  return 1;
}

void *save_var(uint64_t a1, __int16 *a2)
{
  v4[0] = 0;
  v4[1] = 0;
  vinitloc_new(a1, v4, a2);
  return vpush_var(a1, v4);
}

uint64_t ventproc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(a1 + 104) = 0;
  if (!a2)
  {
    return 1;
  }

  v7 = *(a1 + 192);
  v8 = *v7;
  if (v8 > 998)
  {
    return 1;
  }

  result = 0;
  v10 = v7[2002];
  *v7 = v8 + 1;
  *&v7[2 * v8 + 2] = v10;
  v11 = *(a1 + 192);
  *(v11 + 8008) = *v11;
  *a2 = *(v11 + 8104);
  *(a2 + 32) = *(v11 + 8056);
  v12 = *(a1 + 192);
  v13 = *(a1 + 200);
  *(a2 + 48) = *(v12 + 8096);
  v14 = *(v13 + 1720);
  *(a2 + 56) = *(v12 + 8112);
  *(a2 + 64) = v14;
  *(a2 + 72) = *(v13 + 1760);
  *(a2 + 80) = *(v12 + 8121);
  *(a2 + 88) = *(v12 + 8016);
  *(a2 + 96) = *(v12 + 8080);
  v15 = *(a1 + 128);
  *(a2 + 112) = *(a1 + 112);
  *(a2 + 128) = v15;
  v16 = *(a1 + 160);
  *(a2 + 144) = *(a1 + 144);
  *(a2 + 160) = v16;
  v17 = *(a1 + 192);
  v18 = *(a1 + 200);
  *(a2 + 176) = *(v17 + 8120);
  *(a2 + 177) = *(v18 + 272);
  v19 = *(v18 + 276);
  v20 = *(v18 + 1720) - v19;
  LODWORD(v14) = *(v18 + 1728);
  *(v18 + 1720) = v20;
  *(v18 + 1728) = v14 - v19;
  *v20 = 7;
  v21 = *(a1 + 248);
  *(a1 + 248) = a4;
  v22 = *(a1 + 264);
  *(v20 + 8) = a2;
  *(v20 + 16) = v22;
  *(a1 + 264) = a3;
  v23 = *(a1 + 280);
  *(v20 + 24) = v21;
  *(v20 + 32) = v23;
  *(a1 + 280) = a5;
  *(v17 + 8112) = v20;
  *(v17 + 8016) = a6;
  return result;
}

BOOL vretproc(uint64_t a1)
{
  v2 = *(a1 + 192);
  if (*v2 < 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 0;
    v4 = *(v2 + 8008) - 1;
    *v2 = v4;
    *(v2 + 8008) = *(v2 + 8 * v4 + 8);
  }

  v5 = *(v2 + 8112);
  v6 = *(v5 + *(*(a1 + 200) + 276));
  freeDeltaStackTo(a1, v5);
  v7 = *(a1 + 192);
  v8 = *(*(a1 + 200) + 1720);
  v9 = v8[2];
  *(a1 + 248) = v8[3];
  v10 = *(v5 + 8);
  *(a1 + 264) = v9;
  *(a1 + 280) = v8[4];
  *(v7 + 8104) = *v10;
  *(v7 + 8056) = *(v10 + 32);
  v11 = *(a1 + 192);
  *(v11 + 8096) = *(v10 + 48);
  v12 = *(v10 + 64);
  *(v11 + 8112) = *(v10 + 56);
  freeDeltaStackTo(a1, v12);
  v13 = *(a1 + 192);
  *(*(a1 + 200) + 1760) = *(v10 + 72);
  *(v13 + 8121) = *(v10 + 80);
  *(v13 + 8016) = *(v10 + 88);
  *(v13 + 8080) = *(v10 + 96);
  v14 = *(v10 + 128);
  *(a1 + 112) = *(v10 + 112);
  *(a1 + 128) = v14;
  v15 = *(v10 + 160);
  *(a1 + 144) = *(v10 + 144);
  *(a1 + 160) = v15;
  v16 = *(a1 + 192);
  v17 = *(a1 + 200);
  *(v16 + 8120) = *(v10 + 176);
  *(v17 + 272) = *(v10 + 177);
  *(v16 + 9296) = 0;
  if (v6 == 8)
  {
    *(*(a1 + 184) + 432) = 234;
    return *(v16 + 8012) != 0;
  }

  else if (*(v16 + 8012))
  {
    forceErrorBacktrack(a1);
  }

  return v3;
}

uint64_t freeDeltaStackTo(uint64_t result, uint64_t a2)
{
  v2 = *(result + 200);
  v3 = *(v2 + 1744);
  if (v3)
  {
    *(v2 + 1720) = a2;
    *(v2 + 1728) = *(v2 + 1780) + a2 - *(v3 + 32);
  }

  return result;
}

uint64_t vprt_var(uint64_t result, int a2, __int16 *a3)
{
  v4 = result;
  v15 = *MEMORY[0x277D85DE8];
  switch(*a3)
  {
    case -6:
      v5 = *(a3 + 1);
      if (v5 == 1)
      {
        v12 = *MEMORY[0x277D85DE8];
        v7 = "dangling";
      }

      else
      {
        if (v5)
        {
          absoluteSyncNum(result, v5);
          goto LABEL_16;
        }

        v6 = *MEMORY[0x277D85DE8];
        v7 = "NULL";
      }

      return vf_puts(result, a2, v7, 1);
    case -5:
      v10 = *(a3 + 1);
      __sprintf_chk(__s1, 0, 0x50uLL, "%f");
      goto LABEL_17;
    case -4:
      v8 = a3[1];
LABEL_16:
      __sprintf_chk(__s1, 0, 0x50uLL, "%d");
      goto LABEL_17;
    case -3:
      v9 = *(a3 + 1);
      __sprintf_chk(__s1, 0, 0x50uLL, "%ld");
      goto LABEL_17;
    default:
      v11 = a3[1];
      if (v11 == 255)
      {
        goto LABEL_18;
      }

      disptok(result, a3 + 16, *a3, v11, __s1);
      if (__s1[0] == 92)
      {
        cleanLiteral(__s1, 0, 0);
      }

LABEL_17:
      result = vf_puts(v4, a2, __s1, 1);
LABEL_18:
      v13 = *MEMORY[0x277D85DE8];
      return result;
  }
}

void initGlobalVars(int *a1)
{
  v2 = 0;
  v3 = a1[4];
  while (v2 < v3)
  {
    **(*(a1 + 3) + 8 * v2++) = 0;
  }

  v4 = 0;
  for (i = 0; i < *a1; ++i)
  {
    OUTLINED_FUNCTION_1_55();
    v4 += 16;
  }

  v6 = 0;
  v7 = 8 * (a1[1] & ~(a1[1] >> 31));
  while (v7 != v6)
  {
    **(*(a1 + 5) + v6) = 0;
    v6 += 8;
  }

  v8 = 0;
  v9 = 8 * (a1[2] & ~(a1[2] >> 31));
  while (v9 != v8)
  {
    **(*(a1 + 6) + v8) = 0;
    v8 += 8;
  }

  v10 = 0;
  v11 = 8 * (a1[3] & ~(a1[3] >> 31));
  while (v11 != v10)
  {
    **(*(a1 + 7) + v10) = 0;
    v10 += 8;
  }
}

uint64_t runtime_new(uint64_t result)
{
  if (result)
  {
    v1 = result;
    init_new(result);
    ccode_new(v1);
    delta_lib_new(v1);
    dlang_new(v1);
  }

  return result;
}

double runtime_delete(uint64_t a1)
{
  if (a1)
  {
    init_delete(a1);
    ccode_delete(a1);
    delta_lib_delete(a1);
    dlang_delete(a1);
    logio_delete(a1);
    eloqc_delete(a1);
    result = 0.0;
    *(a1 + 216) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
  }

  return result;
}

void OUTLINED_FUNCTION_1_55()
{
  v4 = *(v0 + 32) + v1;
  v5 = *v4;
  v6 = *(v4 + 12);
  *v5 = *(v4 + 8);
  v5[1] = v2;

  bzero(v5 + 8, v6);
}

uint64_t startloop(uint64_t a1, uint64_t a2)
{
  *(*(a1 + 192) + 8064) = a2;
  result = clearDeltaStackBack(a1);
  *(*(a1 + 192) + 8096) = 0;
  return result;
}

uint64_t clearDeltaStackBack(uint64_t a1)
{
  v1 = *(*(a1 + 200) + 1760);
  if (*v1 == 8)
  {
    v1 = *(*(a1 + 192) + 8112);
  }

  return freeDeltaStackTo_0(a1, v1);
}

uint64_t forall_adv_l(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  if (!OUTLINED_FUNCTION_3_49(a1, a2, a3, a4, a5, a6))
  {
    return 1;
  }

  OUTLINED_FUNCTION_8_43();
  result = OUTLINED_FUNCTION_11_41();
  if (result)
  {
    OUTLINED_FUNCTION_1_56();
    *(v8 + v7) = 1;
    return OUTLINED_FUNCTION_2_53();
  }

  return result;
}

uint64_t forall_adv_upto_l(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  if (!OUTLINED_FUNCTION_3_49(a1, a2, a3, a4, a5, a6))
  {
    return 1;
  }

  OUTLINED_FUNCTION_8_43();
  OUTLINED_FUNCTION_20_30();
  OUTLINED_FUNCTION_6_45();
  if (v8 || (*v7 & 2) != 0)
  {
    return 0;
  }

  result = OUTLINED_FUNCTION_11_41();
  if (!result)
  {
    return result;
  }

  OUTLINED_FUNCTION_20_30();
  OUTLINED_FUNCTION_6_45();
  if (v8 || (*v10 & 2) != 0)
  {
    return 0;
  }

  clearDeltaStackBack(v6);
  return OUTLINED_FUNCTION_0_61();
}

uint64_t forall_adv_over_l(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  if (!OUTLINED_FUNCTION_3_49(a1, a2, a3, a4, a5, a6))
  {
    return 1;
  }

  OUTLINED_FUNCTION_8_43();
  OUTLINED_FUNCTION_20_30();
  OUTLINED_FUNCTION_6_45();
  if (v7 || (*v6 & 2) != 0)
  {
    return 0;
  }

  result = OUTLINED_FUNCTION_11_41();
  if (result)
  {
    OUTLINED_FUNCTION_1_56();
    *(v10 + v9) = 1;
    return OUTLINED_FUNCTION_2_53();
  }

  return result;
}

uint64_t forall_adv_r(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  OUTLINED_FUNCTION_3_49(a1, a2, a3, a4, a5, a6);
  result = OUTLINED_FUNCTION_14_38();
  if (v8)
  {
    OUTLINED_FUNCTION_9_43(result);
    result = OUTLINED_FUNCTION_11_41();
    if (result)
    {
      clearDeltaStackBack(v6);
      return OUTLINED_FUNCTION_0_61();
    }
  }

  return result;
}

uint64_t forall_adv_upto_r(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  OUTLINED_FUNCTION_3_49(a1, a2, a3, a4, a5, a6);
  result = OUTLINED_FUNCTION_14_38();
  if (v8)
  {
    OUTLINED_FUNCTION_9_43(result);
    OUTLINED_FUNCTION_20_30();
    OUTLINED_FUNCTION_5_46();
    if (v10 || (*v9 & 2) != 0)
    {
      return 0;
    }

    result = OUTLINED_FUNCTION_11_41();
    if (!result)
    {
      return result;
    }

    OUTLINED_FUNCTION_20_30();
    OUTLINED_FUNCTION_5_46();
    if (v10 || (*v11 & 2) != 0)
    {
      return 0;
    }

    else
    {
      clearDeltaStackBack(v6);
      return OUTLINED_FUNCTION_0_61();
    }
  }

  return result;
}

uint64_t forall_adv_over_r(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  OUTLINED_FUNCTION_3_49(a1, a2, a3, a4, a5, a6);
  result = OUTLINED_FUNCTION_14_38();
  if (v7)
  {
    OUTLINED_FUNCTION_9_43(result);
    OUTLINED_FUNCTION_20_30();
    OUTLINED_FUNCTION_5_46();
    if (v9 || (*v8 & 2) != 0)
    {
      return 0;
    }

    else
    {
      result = OUTLINED_FUNCTION_11_41();
      if (result)
      {
        OUTLINED_FUNCTION_1_56();
        *(v11 + v10) = 1;
        return OUTLINED_FUNCTION_2_53();
      }
    }
  }

  return result;
}

uint64_t forto_adv_l(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  if (!OUTLINED_FUNCTION_3_49(a1, a2, a3, a4, a5, a6))
  {
    return 1;
  }

  OUTLINED_FUNCTION_8_43();
  result = OUTLINED_FUNCTION_11_41();
  if (result)
  {
    OUTLINED_FUNCTION_10_43();
    if (v8)
    {
      return 0;
    }

    else
    {
      clearDeltaStackBack(v6);
      return OUTLINED_FUNCTION_0_61();
    }
  }

  return result;
}

uint64_t forto_adv_upto_l(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  if (!OUTLINED_FUNCTION_3_49(a1, a2, a3, a4, a5, a6))
  {
    return 1;
  }

  OUTLINED_FUNCTION_8_43();
  OUTLINED_FUNCTION_15_38();
  OUTLINED_FUNCTION_4_46();
  if (v8)
  {
    return 0;
  }

  OUTLINED_FUNCTION_12_40(v7);
  if (v8 || (*v9 & 2) != 0)
  {
    return 0;
  }

  result = OUTLINED_FUNCTION_11_41();
  if (!result)
  {
    return result;
  }

  OUTLINED_FUNCTION_21_29();
  if (v8)
  {
    return 0;
  }

  vscanadvUptoTokenOrMarker(v6);
  OUTLINED_FUNCTION_4_46();
  if (v8)
  {
    return 0;
  }

  OUTLINED_FUNCTION_12_40(v11);
  if (v8 || (*v12 & 2) != 0)
  {
    return 0;
  }

  clearDeltaStackBack(v6);
  return OUTLINED_FUNCTION_0_61();
}

uint64_t forto_adv_over_l(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  if (!OUTLINED_FUNCTION_3_49(a1, a2, a3, a4, a5, a6))
  {
    return 1;
  }

  OUTLINED_FUNCTION_8_43();
  OUTLINED_FUNCTION_15_38();
  OUTLINED_FUNCTION_4_46();
  if (v8)
  {
    return 0;
  }

  OUTLINED_FUNCTION_12_40(v7);
  if (v8 || (*v9 & 2) != 0)
  {
    return 0;
  }

  result = OUTLINED_FUNCTION_11_41();
  if (!result)
  {
    return result;
  }

  OUTLINED_FUNCTION_10_43();
  if (v8)
  {
    return 0;
  }

  clearDeltaStackBack(v6);
  return OUTLINED_FUNCTION_0_61();
}

uint64_t forto_adv_r(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  OUTLINED_FUNCTION_3_49(a1, a2, a3, a4, a5, a6);
  result = OUTLINED_FUNCTION_14_38();
  if (v8)
  {
    OUTLINED_FUNCTION_9_43(result);
    result = OUTLINED_FUNCTION_11_41();
    if (result)
    {
      OUTLINED_FUNCTION_10_43();
      if (v9)
      {
        return 0;
      }

      else
      {
        clearDeltaStackBack(v6);
        return OUTLINED_FUNCTION_0_61();
      }
    }
  }

  return result;
}

uint64_t forto_adv_upto_r(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  OUTLINED_FUNCTION_3_49(a1, a2, a3, a4, a5, a6);
  result = OUTLINED_FUNCTION_14_38();
  if (v8)
  {
    OUTLINED_FUNCTION_9_43(result);
    OUTLINED_FUNCTION_15_38();
    OUTLINED_FUNCTION_4_46();
    if (v10)
    {
      return 0;
    }

    OUTLINED_FUNCTION_7_44(v9);
    if (v10 || (*v11 & 2) != 0)
    {
      return 0;
    }

    result = OUTLINED_FUNCTION_11_41();
    if (!result)
    {
      return result;
    }

    OUTLINED_FUNCTION_21_29();
    if (v10)
    {
      return 0;
    }

    vscanadvUptoTokenOrMarker(v6);
    OUTLINED_FUNCTION_4_46();
    if (v10)
    {
      return 0;
    }

    OUTLINED_FUNCTION_7_44(v12);
    if (v10 || (*v13 & 2) != 0)
    {
      return 0;
    }

    else
    {
      clearDeltaStackBack(v6);
      return OUTLINED_FUNCTION_0_61();
    }
  }

  return result;
}

uint64_t forto_adv_over_r(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  OUTLINED_FUNCTION_3_49(a1, a2, a3, a4, a5, a6);
  result = OUTLINED_FUNCTION_14_38();
  if (v8)
  {
    OUTLINED_FUNCTION_9_43(result);
    OUTLINED_FUNCTION_15_38();
    OUTLINED_FUNCTION_4_46();
    if (v10)
    {
      return 0;
    }

    OUTLINED_FUNCTION_7_44(v9);
    if (v10 || (*v11 & 2) != 0)
    {
      return 0;
    }

    result = OUTLINED_FUNCTION_11_41();
    if (!result)
    {
      return result;
    }

    OUTLINED_FUNCTION_10_43();
    if (v10)
    {
      return 0;
    }

    else
    {
      clearDeltaStackBack(v6);
      return OUTLINED_FUNCTION_0_61();
    }
  }

  return result;
}

uint64_t forall_to_test(uint64_t a1, __int16 *a2, __int16 *a3)
{
  OUTLINED_FUNCTION_16_36();
  vinitloc_new(v6, v7, a2);
  v8 = OUTLINED_FUNCTION_17_35();
  vinitloc_new(v8, v9, a3);
  vcompare(a1, &v13, &v12);
  if ((*a2 & 0x80000000) == 0)
  {
    a2[1] = -1;
  }

  if ((*a3 & 0x80000000) == 0)
  {
    OUTLINED_FUNCTION_19_32();
  }

  v10 = *(a1 + 192);
  if (*(v10 + 8120))
  {
    return 0;
  }

  *(a1 + 104) = *(v10 + 8064);
  return 2;
}

void forall_cont_from(uint64_t a1)
{
  OUTLINED_FUNCTION_13_40(a1);
  if (v4)
  {
    save_var(v3, v2);
  }

  OUTLINED_FUNCTION_16_36();
  vinitloc_new(v3, v5, v2);
  vinitloc_new(v3, v7, v1);
  vassign(v3, &v8, v7);
  OUTLINED_FUNCTION_22_28();
  if ((v6 & 0x80000000) == 0)
  {
    OUTLINED_FUNCTION_19_32();
  }

  if ((*v1 & 0x80000000) == 0)
  {
    v1[1] = -1;
  }
}

uint64_t for_adv(uint64_t a1, uint64_t a2, uint64_t a3, __int16 *a4, __int16 *a5, __int16 *a6)
{
  v10 = OUTLINED_FUNCTION_18_34(a1);
  *(v12 + 8056) = v11;
  *(v12 + 8064) = v13;
  *(v12 + 8096) = 0;
  vinitloc_new(v10, v24, v14);
  v15 = OUTLINED_FUNCTION_17_35();
  vinitloc_new(v15, v16, a6);
  vinitloc_new(v6, v23, a5);
  vadd(v6, v24, &v22);
  vcompare(v6, v24, v23);
  if ((*a4 & 0x80000000) == 0)
  {
    a4[1] = -1;
  }

  if ((*a5 & 0x80000000) == 0)
  {
    a5[1] = -1;
  }

  if ((*a6 & 0x80000000) == 0)
  {
    OUTLINED_FUNCTION_19_32();
  }

  v17 = OUTLINED_FUNCTION_17_35();
  v19 = vnegative(v17, v18);
  v20 = *(*(v6 + 192) + 8120);
  if (v19)
  {
    if (v20 == 255)
    {
      return 0;
    }
  }

  else if (v20 == 1)
  {
    return 0;
  }

  return 2;
}

uint64_t for_test(uint64_t a1, __int16 *a2, __int16 *a3, __int16 *a4)
{
  v8 = OUTLINED_FUNCTION_18_34(a1);
  *(v9 + 8096) = 0;
  vinitloc_new(v8, v19, a2);
  vinitloc_new(v4, v18, a3);
  v10 = OUTLINED_FUNCTION_17_35();
  vinitloc_new(v10, v11, a4);
  vcompare(v4, v19, v18);
  if ((*a2 & 0x80000000) == 0)
  {
    a2[1] = -1;
  }

  if ((*a3 & 0x80000000) == 0)
  {
    a3[1] = -1;
  }

  if ((*a4 & 0x80000000) == 0)
  {
    OUTLINED_FUNCTION_19_32();
  }

  v12 = OUTLINED_FUNCTION_17_35();
  v14 = vnegative(v12, v13);
  v15 = *(v4 + 192);
  v16 = *(v15 + 8120);
  if (v14)
  {
    if (v16 == 255)
    {
LABEL_9:
      *(v4 + 104) = *(v15 + 8064);
      return 2;
    }
  }

  else if (v16 == 1)
  {
    goto LABEL_9;
  }

  return 0;
}

void for_cont_from(uint64_t a1)
{
  OUTLINED_FUNCTION_13_40(a1);
  if (v4)
  {
    save_var(v3, v2);
  }

  OUTLINED_FUNCTION_16_36();
  vinitloc_new(v3, v5, v2);
  vinitloc_new(v3, v7, v1);
  vassign(v3, &v8, v7);
  OUTLINED_FUNCTION_22_28();
  if ((v6 & 0x80000000) == 0)
  {
    OUTLINED_FUNCTION_19_32();
  }

  if ((*v1 & 0x80000000) == 0)
  {
    v1[1] = -1;
  }
}

uint64_t while_iterate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 192);
  *(v4 + 8056) = a3;
  *(v4 + 8064) = a2;
  result = clearDeltaStackBack(a1);
  *(*(a1 + 200) + 256) = 0;
  return result;
}

uint64_t freeDeltaStackTo_0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 200);
  v3 = *(v2 + 1744);
  if (v3)
  {
    *(v2 + 1720) = a2;
    *(v2 + 1728) = *(v2 + 1780) + a2 - *(v3 + 32);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_61()
{
  v3 = v2[24];
  *(v2[25] + 256) = 0;
  *(v3 + 8096) = 1;
  v2[13] = v1;
  *(v0 + 8) = *(v3 + 8080);
  return 2;
}

uint64_t OUTLINED_FUNCTION_1_56()
{
  result = clearDeltaStackBack(v0);
  v2 = *(v0 + 192);
  *(*(v0 + 200) + 256) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_53()
{
  *(v3 + 104) = v2;
  *(v1 + 8) = *(v0 + 8080);
  return 2;
}

uint64_t OUTLINED_FUNCTION_3_49(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{

  return for_loop_preamble(a1, a2, a3, a5, a6);
}

uint64_t OUTLINED_FUNCTION_11_41()
{

  return vscanadv(v0, 1, 0);
}

uint64_t OUTLINED_FUNCTION_15_38()
{
  v3 = *(v1 + 8);

  return vscanadvUptoTokenOrMarker(v0);
}

uint64_t OUTLINED_FUNCTION_20_30()
{

  return vscanadvUptoToken(v0);
}

uint64_t OUTLINED_FUNCTION_22_28()
{
  v4 = *(v1 + 192);
  *(v4 + 8056) = v3;
  *(v4 + 8064) = v2;
  result = clearDeltaStackBack(v1);
  *(*(v1 + 200) + 256) = 0;
  v6 = *v0;
  return result;
}

uint64_t read_2pt(uint64_t a1, char a2, unsigned int a3)
{
  if (OUTLINED_FUNCTION_1_57(a1, a2, a3))
  {
    return 1;
  }

  v3 = OUTLINED_FUNCTION_2_54();
  if (vrange_2pt(v3, v4, v5, v6, v7))
  {
    return 1;
  }

  v9 = OUTLINED_FUNCTION_0_62();
  visnonseq(v9, v10, v11, v12);
  v13 = OUTLINED_FUNCTION_0_62();
  ins_rdtoks(v13, v14, v15, v16);
  return 0;
}

uint64_t read_l(uint64_t a1, char a2, unsigned int a3)
{
  if (OUTLINED_FUNCTION_1_57(a1, a2, a3))
  {
    return 1;
  }

  if (!vrange_l())
  {
    forceErrorBacktrack(v3);
  }

  v5 = OUTLINED_FUNCTION_0_62();
  visnonseq(v5, v6, v7, v8);
  v9 = OUTLINED_FUNCTION_0_62();
  ins_rdtoks(v9, v10, v11, v12);
  return 0;
}

uint64_t read_r(uint64_t a1, char a2, unsigned int a3)
{
  if (OUTLINED_FUNCTION_1_57(a1, a2, a3))
  {
    return 1;
  }

  OUTLINED_FUNCTION_2_54();
  if (!vrange_r())
  {
    forceErrorBacktrack(v3);
  }

  v5 = OUTLINED_FUNCTION_0_62();
  visnonseq(v5, v6, v7, v8);
  v9 = OUTLINED_FUNCTION_0_62();
  ins_rdtoks(v9, v10, v11, v12);
  return 0;
}

uint64_t read_nvar(uint64_t a1, uint64_t a2, __int16 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_3_50(a1, a2, a3, a4, a5, a6, a7, a8, v10, v11);
  result = vrd_nvar();
  if ((*v8 & 0x80000000) == 0)
  {
    v8[1] = -1;
  }

  return result;
}

BOOL read_tvar(uint64_t a1, uint64_t a2, __int16 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_3_50(a1, a2, a3, a4, a5, a6, a7, a8, v13[0], v13[1]);
  v11 = vrd_tvar(v10, v9, v13);
  if ((*v8 & 0x80000000) == 0)
  {
    v8[1] = -1;
  }

  return v11 != 0;
}

uint64_t open_input(uint64_t a1, char a2)
{
  v3 = logicalFileName(a1, a2);
  result = logicalFileOpen(a1, v3, 0);
  if (!result)
  {

    forceErrorBacktrack(a1);
  }

  return result;
}

uint64_t open_output(uint64_t a1, char a2)
{
  v3 = logicalFileName(a1, a2);
  result = logicalFileOpen(a1, v3, 1);
  if (!result)
  {

    forceErrorBacktrack(a1);
  }

  return result;
}

uint64_t open_append(uint64_t a1, char a2)
{
  v3 = logicalFileName(a1, a2);
  result = logicalFileOpen(a1, v3, 2);
  if (!result)
  {

    forceErrorBacktrack(a1);
  }

  return result;
}

void print_delta1(uint64_t a1, char a2, uint64_t a3, _BYTE *a4, unsigned int a5, char *a6, unsigned int a7)
{
  *&v18[126] = *MEMORY[0x277D85DE8];
  if (!vprt_range(a1, a1 + 112, a1 + 144))
  {
    forceErrorBacktrack(a1);
  }

  v17[0] = a5;
  v13 = a5;
  v17[1] = 0;
  v14 = v18;
  if (a5)
  {
    do
    {
      v15 = *a6++;
      *v14++ = v15;
      --v13;
    }

    while (v13);
  }

  lf_print_delta(a1, a2, *(a1 + 112), *(a1 + 144), a4, (a7 >> 1) & 1, 0, v17, 0, 0, 0, 80);
  v16 = *MEMORY[0x277D85DE8];
}

uint64_t print_stream(uint64_t a1, uint64_t a2, int a3, int a4, const char *a5)
{
  if (!vprt_range(a1, a1 + 112, a1 + 144))
  {
    forceErrorBacktrack(a1);
  }

  v10 = *(a1 + 112);
  v11 = *(a1 + 144);

  return vprt_strm(a1, a2, v10, v11, a3, a4, a5);
}

uint64_t print_var(uint64_t a1, char a2, __int16 *a3)
{
  result = vprt_var(a1, a2, a3);
  if ((*a3 & 0x80000000) == 0)
  {
    a3[1] = -1;
  }

  return result;
}

uint64_t print_tvar(uint64_t a1, char a2, __int16 *a3, uint64_t a4, uint64_t a5)
{
  result = prt_tvar(a2, a3 + 1, a5);
  if ((*a3 & 0x80000000) == 0)
  {
    a3[1] = -1;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_62()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 144);
  return v0;
}

uint64_t OUTLINED_FUNCTION_1_57(uint64_t a1, char a2, unsigned int a3)
{
  v4 = a2;

  return vrd_delta(a1, v4, a3);
}

void OUTLINED_FUNCTION_3_50(uint64_t a1, uint64_t a2, __int16 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  a9 = 0;
  a10 = 0;

  vinitloc_new(a1, &a9, a3);
}

uint64_t etiwinMain(uint64_t a1, int a2, uint64_t *a3)
{
  v5 = *a3;
  v4 = a3 + 1;
  v7 = *(a1 + 184);
  v6 = *(a1 + 192);
  *(v6 + 9304) = v5;
  v8 = __OFSUB__(a2, 1);
  v9 = a2 - 1;
  *(v7 + 480) = v9;
  if ((v9 < 0) ^ v8 | (v9 == 0))
  {
    v4 = 0;
  }

  *(v7 + 488) = v4;
  *(v6 + 8872) = 0;
  if (vcmdinit(a1) && vinitrun(a1))
  {
    DeltaProc_main(a1);
    vcmdend(a1, 0);
  }

  return 1;
}

uint64_t etiwinMainDLL(uint64_t a1, int a2, uint64_t a3)
{
  v4 = *(a1 + 184);
  *(v4 + 480) = a2 - 1;
  if (a2 < 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(a3 + 8);
  }

  *(v4 + 488) = v5;
  *(*(a1 + 192) + 8872) = 0;
  result = vcmdinit(a1);
  if (result)
  {
    return vinitrun(a1) != 0;
  }

  return result;
}

void dur_expr(uint64_t a1, unsigned int a2, __int16 *a3)
{
  if (!vtimept_tv(a1, a1 + 112) || !vtimept_tv(a1, a1 + 144))
  {
    forceErrorBacktrack(a1);
  }

  v10[1] = 0;
  v9[0] = 0;
  v9[1] = 0;
  vinitloc_new(a1, v9, a3);
  v6 = vdur(a1, a1 + 112, a1 + 144, a2);
  if (v6 == -2147483647)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  v8 = v7;
  OUTLINED_FUNCTION_0_63(vstmtbl[12 * a2 + 1]);
  v10[0] = &v8;
  vassign(a1, v9, v10);
  if ((*a3 & 0x80000000) == 0)
  {
    a3[1] = -1;
  }
}

void val_expr1(uint64_t a1, __int16 *a2, unsigned int a3, int a4)
{
  if (val_expr(a1, a1 + 112, a3, a4, 0) == -2147483647)
  {
    if ((*a2 & 0x80000000) == 0)
    {
      a2[1] = -1;
    }

    forceErrorBacktrack(a1);
  }

  v10[0] = 0;
  v10[1] = 0;
  v8 = &vstmtbl[12 * a3 + 1][40 * a4];
  v11[1] = 0;
  OUTLINED_FUNCTION_0_63(v8);
  v11[0] = v9;
  vinitloc_new(a1, v10, a2);
  vassign(a1, v10, v11);
  if ((*a2 & 0x80000000) == 0)
  {
    a2[1] = -1;
  }
}

uint64_t actd_lookup(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  if (!vprt_range(a1, (a1 + 14), (a1 + 18)))
  {
    forceErrorBacktrack(a1);
  }

  v8 = a1[9] + (a2 << 6);
  v9 = actdlookup(a1, a1[14], a1[18], v8);
  if (v9)
  {
    v10 = 0;
    *(a1[24] + 9300) = *(v9 + 1);
    while (1)
    {
      if (v10 == 2)
      {
        return 0;
      }

      v12 = *v9++;
      v11 = v12;
      if (v12 != 255)
      {
        v13 = 0;
        v14 = a1[14];
        while (v13 < v11)
        {
          if (v14 && (*v14 & 2) != 0)
          {
            v15 = &v14[8 * *(a1[24] + 9084) + 8 * *(v8 + 16)];
          }

          else
          {
            v15 = v14 + 8;
            ++v13;
          }

          v14 = (*v15 & 0xFFFFFFFFFFFFFFFCLL);
        }

        if (v10)
        {
          v16 = a4;
          if (!a4)
          {
            goto LABEL_17;
          }

LABEL_16:
          *(v16 + 8) = v14;
          goto LABEL_17;
        }

        v16 = a3;
        if (a3)
        {
          goto LABEL_16;
        }
      }

LABEL_17:
      ++v10;
    }
  }

  return 1;
}

BOOL setd_lookup(void *a1, unsigned __int8 a2, int a3)
{
  if (!a1[14] || !a1[18])
  {
    return 1;
  }

  if (!vprt_range(a1, (a1 + 14), (a1 + 18)))
  {
    forceErrorBacktrack(a1);
  }

  return setdlookup(a1, a1[14], a1[18], a1[8] + (a3 << 6), a2) == 0;
}

BOOL if_testeq_v_lng(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_23_27(a1, a2, a3, a4, a5, a6, a7, a8);
  v9 = OUTLINED_FUNCTION_14_39();
  npush_lng(v9);

  return if_testeq(v8, v10, v11, v12, v13, v14, v15, v16);
}

BOOL if_testeq(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_9_44(a1, a2, a3, a4, a5, a6, a7, a8, v21, v23, v24, v25);
  OUTLINED_FUNCTION_20_31(v9, v10, v11, v12, v13, v14, v15, v16, v22);
  OUTLINED_FUNCTION_13_41();
  vcompare(v8, v17, v18);
  OUTLINED_FUNCTION_7_45();
  return v19 != 0;
}

BOOL if_testle_v_lng(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_23_27(a1, a2, a3, a4, a5, a6, a7, a8);
  v9 = OUTLINED_FUNCTION_14_39();
  npush_lng(v9);

  return if_testle(v8, v10, v11, v12, v13, v14, v15, v16);
}

BOOL if_testle(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_9_44(a1, a2, a3, a4, a5, a6, a7, a8, v21, v23, v24, v25);
  OUTLINED_FUNCTION_20_31(v9, v10, v11, v12, v13, v14, v15, v16, v22);
  OUTLINED_FUNCTION_13_41();
  vcompare(v8, v17, v18);
  OUTLINED_FUNCTION_7_45();
  return v19 == 1;
}

BOOL if_testge_v_lng(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_23_27(a1, a2, a3, a4, a5, a6, a7, a8);
  v9 = OUTLINED_FUNCTION_14_39();
  npush_lng(v9);

  return if_testge(v8, v10, v11, v12, v13, v14, v15, v16);
}

BOOL if_testge(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_9_44(a1, a2, a3, a4, a5, a6, a7, a8, v21, v23, v24, v25);
  OUTLINED_FUNCTION_20_31(v9, v10, v11, v12, v13, v14, v15, v16, v22);
  OUTLINED_FUNCTION_13_41();
  vcompare(v8, v17, v18);
  OUTLINED_FUNCTION_7_45();
  return v19 == 255;
}

BOOL if_testgt_v_lng(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_23_27(a1, a2, a3, a4, a5, a6, a7, a8);
  v9 = OUTLINED_FUNCTION_14_39();
  npush_lng(v9);

  return if_testgt(v8, v10, v11, v12, v13, v14, v15, v16);
}

BOOL if_testgt(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_9_44(a1, a2, a3, a4, a5, a6, a7, a8, v21, v23, v24, v25);
  OUTLINED_FUNCTION_20_31(v9, v10, v11, v12, v13, v14, v15, v16, v22);
  OUTLINED_FUNCTION_13_41();
  vcompare(v8, v17, v18);
  OUTLINED_FUNCTION_7_45();
  return v19 != 1;
}

BOOL if_testlt_v_lng(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_23_27(a1, a2, a3, a4, a5, a6, a7, a8);
  v9 = OUTLINED_FUNCTION_14_39();
  npush_lng(v9);

  return if_testlt(v8, v10, v11, v12, v13, v14, v15, v16);
}

BOOL if_testlt(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_9_44(a1, a2, a3, a4, a5, a6, a7, a8, v21, v23, v24, v25);
  OUTLINED_FUNCTION_20_31(v9, v10, v11, v12, v13, v14, v15, v16, v22);
  OUTLINED_FUNCTION_13_41();
  vcompare(v8, v17, v18);
  OUTLINED_FUNCTION_7_45();
  return v19 != 255;
}

BOOL if_testneq_v_lng(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_23_27(a1, a2, a3, a4, a5, a6, a7, a8);
  v9 = OUTLINED_FUNCTION_14_39();
  npush_lng(v9);

  return if_testneq(v8, v10, v11, v12, v13, v14, v15, v16);
}

BOOL if_testneq(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_9_44(a1, a2, a3, a4, a5, a6, a7, a8, v21, v23, v24, v25);
  OUTLINED_FUNCTION_20_31(v9, v10, v11, v12, v13, v14, v15, v16, v22);
  OUTLINED_FUNCTION_13_41();
  vcompare(v8, v17, v18);
  OUTLINED_FUNCTION_7_45();
  return v19 == 0;
}

BOOL if_testeq_v_i(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_21_30(a1, a2, a3, a4, a5, a6, a7, a8);
  v9 = OUTLINED_FUNCTION_8_44();
  npush_i(v9);

  return if_testeq(v8, v10, v11, v12, v13, v14, v15, v16);
}

BOOL if_testle_v_i(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_21_30(a1, a2, a3, a4, a5, a6, a7, a8);
  v9 = OUTLINED_FUNCTION_8_44();
  npush_i(v9);

  return if_testle(v8, v10, v11, v12, v13, v14, v15, v16);
}

BOOL if_testge_v_i(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_21_30(a1, a2, a3, a4, a5, a6, a7, a8);
  v9 = OUTLINED_FUNCTION_8_44();
  npush_i(v9);

  return if_testge(v8, v10, v11, v12, v13, v14, v15, v16);
}

BOOL if_testgt_v_i(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_21_30(a1, a2, a3, a4, a5, a6, a7, a8);
  v9 = OUTLINED_FUNCTION_8_44();
  npush_i(v9);

  return if_testgt(v8, v10, v11, v12, v13, v14, v15, v16);
}

BOOL if_testlt_v_i(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_21_30(a1, a2, a3, a4, a5, a6, a7, a8);
  v9 = OUTLINED_FUNCTION_8_44();
  npush_i(v9);

  return if_testlt(v8, v10, v11, v12, v13, v14, v15, v16);
}

BOOL if_testneq_v_i(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_21_30(a1, a2, a3, a4, a5, a6, a7, a8);
  v9 = OUTLINED_FUNCTION_8_44();
  npush_i(v9);

  return if_testneq(v8, v10, v11, v12, v13, v14, v15, v16);
}

BOOL testeq_tvars(uint64_t a1, __int16 *a2, __int16 *a3)
{
  compare_tvars(a1, a2, a3);

  return testeq(a1);
}

BOOL testneq_tvars(uint64_t a1, __int16 *a2, __int16 *a3)
{
  compare_tvars(a1, a2, a3);

  return testneq(a1);
}

BOOL testFldeq(uint64_t a1, unsigned int a2, int a3, int a4)
{
  v4 = *(a1 + 192);
  v5 = *(v4 + 8080);
  while (1)
  {
    v6 = *(v4 + 8089) ? *(v4 + 9084) + *(v4 + 8088) : *(v4 + 8088) + 3;
    v5 = (*&v5[8 * v6] & 0xFFFFFFFFFFFFFFFCLL);
    if (!v5)
    {
      break;
    }

    if ((*v5 & 2) == 0)
    {
      return *(*&vstmtbl[12 * a2 + 2][8 * a3])(v5 + 16) != a4;
    }
  }

  return 1;
}

void move_lng(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_18_35();
  OUTLINED_FUNCTION_16_37(v6);
  if (v7)
  {
    v8 = OUTLINED_FUNCTION_14_39();
    save_var(v8, v9);
  }

  OUTLINED_FUNCTION_15_39();
  switch(v11)
  {
    case 0:
    case 3:
      *(v3 + 1) = a3;
      break;
    case 1:
      *(v3 + 1) = a3;
      break;
    case 2:
      v3[1] = a3;
      break;
    default:
      if (v10 < 0)
      {

        forceErrorBacktrack(v4);
      }

      OUTLINED_FUNCTION_12_41(0xFFFDu, v13, 0, 0, v14, v15);
      OUTLINED_FUNCTION_22_29(v12);
      if ((*v3 & 0x80000000) == 0)
      {
        v3[1] = -1;
      }

      break;
  }
}

void move_i(uint64_t a1, uint64_t a2, int a3)
{
  OUTLINED_FUNCTION_18_35();
  OUTLINED_FUNCTION_16_37(v6);
  if (v7)
  {
    v8 = OUTLINED_FUNCTION_14_39();
    save_var(v8, v9);
  }

  OUTLINED_FUNCTION_15_39();
  switch(v11)
  {
    case 0:
    case 3:
      *(v3 + 1) = a3;
      break;
    case 1:
      *(v3 + 1) = a3;
      break;
    case 2:
      v3[1] = a3;
      break;
    default:
      if (v10 < 0)
      {

        forceErrorBacktrack(v4);
      }

      OUTLINED_FUNCTION_12_41(0xFFFCu, v13, 0, 0, v14, v15);
      OUTLINED_FUNCTION_22_29(v12);
      if ((*v3 & 0x80000000) == 0)
      {
        v3[1] = -1;
      }

      break;
  }
}

void move_f(double a1)
{
  OUTLINED_FUNCTION_18_35();
  OUTLINED_FUNCTION_16_37(v4);
  if (v5)
  {
    v6 = OUTLINED_FUNCTION_14_39();
    save_var(v6, v7);
  }

  OUTLINED_FUNCTION_15_39();
  switch(v9)
  {
    case 0:
      goto LABEL_12;
    case 1:
      v1[1] = a1;
      return;
    case 2:
      v10 = a1;
      goto LABEL_10;
    case 3:
      *(v1 + 1) = a1;
      return;
    default:
      if (v8 < 0)
      {
LABEL_12:

        forceErrorBacktrack(v2);
      }

      OUTLINED_FUNCTION_12_41(0xFFFBu, v12, 0, 0, v13, v14);
      OUTLINED_FUNCTION_22_29(v11);
      if ((*v1 & 0x80000000) == 0)
      {
        LOWORD(v10) = -1;
LABEL_10:
        *(v1 + 1) = v10;
      }

      return;
  }
}

void bspush_ca_boa()
{
  OUTLINED_FUNCTION_18_35();
  bspush_boa(v0);
  v1 = OUTLINED_FUNCTION_14_39();

  bspush_ca(v1);
}

double bspush_ca_scan_boa()
{
  OUTLINED_FUNCTION_18_35();
  bspush_boa(v0);
  v1 = OUTLINED_FUNCTION_14_39();

  *&result = bspush_ca_scan(v1, v2).n128_u64[0];
  return result;
}

uint64_t lpta_rpta_loadp(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 168) = 1;
  *(result + 136) = 1;
  *(result + 112) = *(a2 + 8);
  *(result + 144) = *(a3 + 8);
  *(result + 160) = 0;
  *(result + 128) = 0;
  return result;
}

void ins_tokens_s()
{
  OUTLINED_FUNCTION_26_26();
  OUTLINED_FUNCTION_19_33();
  if (v3)
  {
    OUTLINED_FUNCTION_4_47();
    OUTLINED_FUNCTION_3_51(vstmtbl);
    OUTLINED_FUNCTION_24_27();
    switch(v4)
    {
      case 0:
      case 1:
      case 2:
      case 3:
      case 4:
        OUTLINED_FUNCTION_17_36();
        OUTLINED_FUNCTION_11_42();
        while (v1 < v2)
        {
          v5 = *v1++;
          OUTLINED_FUNCTION_10_44();
          if (!v8)
          {
            OUTLINED_FUNCTION_13_41();
            vassign(v0, v9, v10);
          }

          if (!OUTLINED_FUNCTION_5_47(v6, v7))
          {
            break;
          }

          if (v1 < v2)
          {
            v11 = OUTLINED_FUNCTION_2_55();
            *(v0 + 112) = v11;
            if (!v11)
            {
              break;
            }
          }
        }

        break;
      default:
        break;
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_46();
  }

  OUTLINED_FUNCTION_25_26();
}

void ins_tokens_l()
{
  OUTLINED_FUNCTION_26_26();
  OUTLINED_FUNCTION_19_33();
  if (v3)
  {
    OUTLINED_FUNCTION_4_47();
    OUTLINED_FUNCTION_3_51(vstmtbl);
    OUTLINED_FUNCTION_24_27();
    switch(v4)
    {
      case 0:
      case 1:
      case 2:
      case 3:
      case 4:
        OUTLINED_FUNCTION_17_36();
        OUTLINED_FUNCTION_11_42();
        OUTLINED_FUNCTION_6_46();
        while (v1 < v2)
        {
          v5 = v1[1] | ((*v1 & 0x7F) << 8);
          OUTLINED_FUNCTION_10_44();
          if (!v8)
          {
            OUTLINED_FUNCTION_13_41();
            vassign(v0, v9, v10);
          }

          if (!OUTLINED_FUNCTION_5_47(v6, v7))
          {
            break;
          }

          v1 += 2;
          if (v1 < v2)
          {
            v11 = OUTLINED_FUNCTION_2_55();
            *(v0 + 112) = v11;
            if (!v11)
            {
              break;
            }
          }
        }

        break;
      default:
        break;
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_46();
  }

  OUTLINED_FUNCTION_25_26();
}

void ins_tokens_lng()
{
  OUTLINED_FUNCTION_26_26();
  OUTLINED_FUNCTION_19_33();
  if (v3)
  {
    OUTLINED_FUNCTION_4_47();
    OUTLINED_FUNCTION_3_51(vstmtbl);
    OUTLINED_FUNCTION_24_27();
    switch(v4)
    {
      case 0:
      case 1:
      case 2:
      case 3:
      case 4:
        OUTLINED_FUNCTION_17_36();
        OUTLINED_FUNCTION_11_42();
        while (v1 < v2)
        {
          if (*v1 < 0)
          {
            v5 = -((v1[1] << 16) & 0xFFFFFFFF80FFFFFFLL | ((*v1 & 0x7F) << 24) | (v1[2] << 8) | v1[3]);
          }

          OUTLINED_FUNCTION_10_44();
          if (!v8)
          {
            OUTLINED_FUNCTION_13_41();
            vassign(v0, v9, v10);
          }

          if (!OUTLINED_FUNCTION_5_47(v6, v7))
          {
            break;
          }

          v1 += 4;
          if (v1 < v2)
          {
            v11 = OUTLINED_FUNCTION_2_55();
            *(v0 + 112) = v11;
            if (!v11)
            {
              break;
            }
          }
        }

        break;
      default:
        break;
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_46();
  }

  OUTLINED_FUNCTION_25_26();
}

void ins_tokens_i()
{
  OUTLINED_FUNCTION_26_26();
  OUTLINED_FUNCTION_19_33();
  if (v3)
  {
    OUTLINED_FUNCTION_4_47();
    OUTLINED_FUNCTION_3_51(vstmtbl);
    OUTLINED_FUNCTION_24_27();
    switch(v4)
    {
      case 0:
      case 1:
      case 2:
      case 3:
      case 4:
        v5 = &v1[v2];
        OUTLINED_FUNCTION_11_42();
        while (v1 < v5)
        {
          v6 = v1[1] | ((*v1 & 0x7F) << 8);
          OUTLINED_FUNCTION_10_44();
          if (!v9)
          {
            OUTLINED_FUNCTION_13_41();
            vassign(v0, v10, v11);
          }

          if (!OUTLINED_FUNCTION_5_47(v7, v8))
          {
            break;
          }

          v1 += 2;
          if (v1 < v5)
          {
            v12 = OUTLINED_FUNCTION_2_55();
            *(v0 + 112) = v12;
            if (!v12)
            {
              break;
            }
          }
        }

        break;
      default:
        break;
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_46();
  }

  OUTLINED_FUNCTION_25_26();
}

uint64_t ins_tokens_f()
{
  OUTLINED_FUNCTION_19_33();
  if (v3)
  {
    OUTLINED_FUNCTION_4_47();
    v4 = OUTLINED_FUNCTION_3_51(vstmtbl);
    result = 0;
    switch(v4)
    {
      case -5:
      case -4:
      case -2:
      case -1:
        v6 = &v1[v2];
        OUTLINED_FUNCTION_11_42();
        OUTLINED_FUNCTION_6_46();
        while (1)
        {
          if (v1 >= v6)
          {
            return 1;
          }

          v9 = *v1;
          v7 = v1 + 1;
          v8 = v9;
          atof(v7);
          OUTLINED_FUNCTION_10_44();
          if (!v12)
          {
            OUTLINED_FUNCTION_13_41();
            vassign(v0, v13, v14);
          }

          result = OUTLINED_FUNCTION_5_47(v10, v11);
          if (!result)
          {
            break;
          }

          v1 = &v7[v8];
          if (v1 < v6)
          {
            result = OUTLINED_FUNCTION_2_55();
            *(v0 + 112) = result;
            if (!result)
            {
              break;
            }
          }
        }

        break;
      default:
        return result;
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_46();
    return 1;
  }

  return result;
}

uint64_t insert_2pt_s(uint64_t *a1, unsigned __int8 a2, uint64_t a3, uint64_t a4, int a5)
{
  if (OUTLINED_FUNCTION_1_58(a1, a2, a3, a4, a5))
  {
    return 1;
  }

  OUTLINED_FUNCTION_0_64();
  ins_tokens_s();
  return 0;
}

uint64_t insert_2pt_l(uint64_t *a1, unsigned __int8 a2, uint64_t a3, uint64_t a4, int a5)
{
  if (OUTLINED_FUNCTION_1_58(a1, a2, a3, a4, a5))
  {
    return 1;
  }

  OUTLINED_FUNCTION_0_64();
  ins_tokens_l();
  return 0;
}

uint64_t insert_2pt_lng(uint64_t *a1, unsigned __int8 a2, uint64_t a3, uint64_t a4, int a5)
{
  if (OUTLINED_FUNCTION_1_58(a1, a2, a3, a4, a5))
  {
    return 1;
  }

  OUTLINED_FUNCTION_0_64();
  ins_tokens_lng();
  return 0;
}

uint64_t insert_2pt_i(uint64_t *a1, unsigned __int8 a2, uint64_t a3, uint64_t a4, int a5)
{
  if (OUTLINED_FUNCTION_1_58(a1, a2, a3, a4, a5))
  {
    return 1;
  }

  OUTLINED_FUNCTION_0_64();
  ins_tokens_i();
  return 0;
}

uint64_t insert_2pt_f(uint64_t *a1, unsigned __int8 a2, uint64_t a3, uint64_t a4, int a5)
{
  if (OUTLINED_FUNCTION_1_58(a1, a2, a3, a4, a5))
  {
    return 1;
  }

  OUTLINED_FUNCTION_0_64();
  ins_tokens_f();
  return 0;
}

uint64_t OUTLINED_FUNCTION_1_58(uint64_t *a1, unsigned __int8 a2, uint64_t a3, uint64_t a4, int a5)
{

  return vrange_2pt(a1, a1 + 14, (a1 + 18), a2, a5);
}

uint64_t OUTLINED_FUNCTION_2_55()
{
  v4 = *(v1 + 144);
  v5 = *(v4 + 8 * v2 + 24) & 0xFFFFFFFFFFFFFFFCLL;

  return vins_sync(v1, v0, v5, v4);
}

uint64_t OUTLINED_FUNCTION_3_51@<X0>(uint64_t a1@<X8>)
{
  v4 = *(*(a1 + 96 * v1 + 8) + 32);

  return STMTYP(v2);
}

uint64_t OUTLINED_FUNCTION_4_47()
{

  return STMTYP(v0);
}

uint64_t OUTLINED_FUNCTION_5_47(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v5 = v3[14];
  v6 = v3[18];

  return vins_tok(v3, v2, v5, v6, va);
}

uint64_t OUTLINED_FUNCTION_6_46()
{
  v3 = v1[14];
  v4 = v1[18];

  return vdel_2pt(v1, v0, v3, v4);
}

uint64_t OUTLINED_FUNCTION_9_44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  a11 = 0;
  a12 = 0;

  return vnspop(a1, &a11);
}

void OUTLINED_FUNCTION_12_41(unsigned __int16 a1@<W8>, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  a5 = v6;
  a6 = a1;
  BYTE2(a6) = 0;

  vinitloc_new(v8, &a3, v7);
}

uint64_t OUTLINED_FUNCTION_20_31(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return vnspop(v9, &a9);
}

uint64_t OUTLINED_FUNCTION_21_30(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  return npush_v(a1, a2, a3, a4, a5, a6, a7, a8);
}

void OUTLINED_FUNCTION_22_29(uint64_t a1, ...)
{
  va_start(va1, a1);
  va_start(va, a1);
  v3 = va_arg(va1, void *);
  v5 = va_arg(va1, void);

  vassign(v1, va, va1);
}

uint64_t OUTLINED_FUNCTION_23_27(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  return npush_v(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t lpta_loadv(uint64_t a1, char a2, unsigned __int16 *a3)
{
  *(a1 + 136) = 2;
  *(a1 + 120) = a2;
  v3 = *a3;
  switch(v3)
  {
    case 65531:
      v4 = *(a3 + 1);
      break;
    case 65532:
      v4 = a3[1];
      break;
    case 65533:
      v4 = *(a3 + 1);
      break;
    default:
      forceErrorBacktrack(a1);
  }

  *(a1 + 128) = v4;
  return a1;
}

uint64_t rpta_loadv(uint64_t a1, char a2, unsigned __int16 *a3)
{
  *(a1 + 168) = 2;
  *(a1 + 152) = a2;
  v3 = *a3;
  switch(v3)
  {
    case 65531:
      v4 = *(a3 + 1);
      break;
    case 65532:
      v4 = a3[1];
      break;
    case 65533:
      v4 = *(a3 + 1);
      break;
    default:
      forceErrorBacktrack(a1);
  }

  *(a1 + 160) = v4;
  return a1;
}

uint64_t lpta_loadlng(uint64_t a1, char a2, uint64_t a3)
{
  result = OUTLINED_FUNCTION_7_46(a1, a2);
  if (result - 65532 >= 2)
  {
    if (result != 65531)
    {
      return result;
    }

    a3 = a3;
  }

  *(a1 + 128) = a3;
  return result;
}

uint64_t rpta_loadl(uint64_t a1, char a2, uint64_t a3)
{
  result = OUTLINED_FUNCTION_8_45(a1, a2);
  if (result - 65532 >= 2)
  {
    if (result != 65531)
    {
      return result;
    }

    a3 = a3;
  }

  *(a1 + 160) = a3;
  return result;
}

void lpta_loadi(uint64_t a1, char a2, int a3)
{
  OUTLINED_FUNCTION_7_46(a1, a2);
  OUTLINED_FUNCTION_13_42();
  if (!(!v6 & v5))
  {
    *(a1 + 128) = a3;
  }
}

void rpta_loadi(uint64_t a1, char a2, int a3)
{
  OUTLINED_FUNCTION_8_45(a1, a2);
  OUTLINED_FUNCTION_13_42();
  if (!(!v6 & v5))
  {
    *(a1 + 160) = a3;
  }
}

void lpta_loadf(uint64_t a1, char a2, double a3)
{
  OUTLINED_FUNCTION_7_46(a1, a2);
  OUTLINED_FUNCTION_13_42();
  if (!(!v6 & v5))
  {
    *(a1 + 128) = a3;
  }
}

void rpta_loadf(uint64_t a1, char a2, double a3)
{
  OUTLINED_FUNCTION_8_45(a1, a2);
  OUTLINED_FUNCTION_13_42();
  if (!(!v6 & v5))
  {
    *(a1 + 160) = a3;
  }
}

void lpta_ctxtl()
{
  OUTLINED_FUNCTION_1_59();
  v3 = vctxt_tv(v1, v2);
  if (!v3)
  {
    forceErrorBacktrack(v0);
  }

  OUTLINED_FUNCTION_0_65(v3, v4, v5, *(v0 + 112));
  if ((v10 & 1) == 0)
  {
    *(v0 + 112) = OUTLINED_FUNCTION_3_52(v6, v7, v8, v9);
  }
}

void rpta_ctxtl()
{
  OUTLINED_FUNCTION_2_56();
  v2 = vctxt_tv(v1, v1 + 144);
  if (!v2)
  {
    forceErrorBacktrack(v0);
  }

  OUTLINED_FUNCTION_0_65(v2, v3, v4, *(v0 + 144));
  if ((v9 & 1) == 0)
  {
    *(v0 + 144) = OUTLINED_FUNCTION_3_52(v5, v6, v7, v8);
  }
}

void lpta_ctxtr()
{
  OUTLINED_FUNCTION_1_59();
  v3 = vctxt_tv(v1, v2);
  if (!v3)
  {
    forceErrorBacktrack(v0);
  }

  OUTLINED_FUNCTION_0_65(v3, v4, v5, *(v0 + 112));
  if ((v10 & 1) == 0)
  {
    *(v0 + 112) = OUTLINED_FUNCTION_4_48(v6, v7, v8, v9);
  }
}

void rpta_ctxtr()
{
  OUTLINED_FUNCTION_2_56();
  v2 = vctxt_tv(v1, v1 + 144);
  if (!v2)
  {
    forceErrorBacktrack(v0);
  }

  OUTLINED_FUNCTION_0_65(v2, v3, v4, *(v0 + 144));
  if ((v9 & 1) == 0)
  {
    *(v0 + 144) = OUTLINED_FUNCTION_4_48(v5, v6, v7, v8);
  }
}

_BYTE *lpta_movel()
{
  OUTLINED_FUNCTION_1_59();
  if (!vmove_tv(v2, v3))
  {
    forceErrorBacktrack(v0);
  }

  result = vmovel(*(v0 + 112), v1);
  *(v0 + 112) = result;
  return result;
}

_BYTE *rpta_movel()
{
  OUTLINED_FUNCTION_2_56();
  if (!vmove_tv(v2, v2 + 144))
  {
    forceErrorBacktrack(v0);
  }

  result = vmovel(*(v0 + 144), v1);
  *(v0 + 144) = result;
  return result;
}

_BYTE *lpta_mover()
{
  OUTLINED_FUNCTION_1_59();
  v3 = vmove_tv(v1, v2);
  if (!v3)
  {
    forceErrorBacktrack(v0);
  }

  result = OUTLINED_FUNCTION_14_40(v3, *(v0 + 112));
  *(v0 + 112) = result;
  return result;
}

_BYTE *rpta_mover()
{
  OUTLINED_FUNCTION_2_56();
  v2 = vmove_tv(v1, v1 + 144);
  if (!v2)
  {
    forceErrorBacktrack(v0);
  }

  result = OUTLINED_FUNCTION_14_40(v2, *(v0 + 144));
  *(v0 + 144) = result;
  return result;
}

uint64_t lpta_tstctxtl()
{
  OUTLINED_FUNCTION_1_59();
  vtstctx_tv(v1, v2);
  if (v3)
  {
    return 1;
  }

  OUTLINED_FUNCTION_0_65(v3, v4, v5, *(v0 + 112));
  if (v11)
  {
    return 0;
  }

  OUTLINED_FUNCTION_3_52(v7, v8, v9, v10);
  result = OUTLINED_FUNCTION_12_42();
  *(v0 + 112) = v12;
  return result;
}

uint64_t rpta_tstctxtl()
{
  OUTLINED_FUNCTION_2_56();
  vtstctx_tv(v1, v1 + 144);
  if (v2)
  {
    return 1;
  }

  OUTLINED_FUNCTION_0_65(v2, v3, v4, *(v0 + 144));
  if (v10)
  {
    return 0;
  }

  OUTLINED_FUNCTION_3_52(v6, v7, v8, v9);
  result = OUTLINED_FUNCTION_12_42();
  *(v0 + 144) = v11;
  return result;
}

uint64_t lpta_tstctxtr()
{
  OUTLINED_FUNCTION_2_56();
  v1 = 1;
  vtstctx_tv(v2, v2 + 112);
  if (!v3)
  {
    OUTLINED_FUNCTION_0_65(v3, v4, v5, *(v0 + 112));
    v1 = 0;
    if ((v10 & 1) == 0)
    {
      *(v0 + 112) = OUTLINED_FUNCTION_4_48(v6, v7, v8, v9);
    }
  }

  return v1;
}

uint64_t rpta_tstctxtr()
{
  OUTLINED_FUNCTION_2_56();
  OUTLINED_FUNCTION_9_45();
  vtstctx_tv(v2, v3);
  if (!v4)
  {
    OUTLINED_FUNCTION_0_65(v4, v5, v6, *(v0 + 144));
    v1 = 0;
    if ((v11 & 1) == 0)
    {
      *(v0 + 144) = OUTLINED_FUNCTION_4_48(v7, v8, v9, v10);
    }
  }

  return v1;
}

uint64_t lpta_tstmovel()
{
  OUTLINED_FUNCTION_1_59();
  vtsttmark_tv(v2, v3);
  if (v4)
  {
    return 1;
  }

  vmovel(*(v0 + 112), v1);
  result = OUTLINED_FUNCTION_12_42();
  *(v0 + 112) = v6;
  return result;
}

uint64_t rpta_tstmovel()
{
  OUTLINED_FUNCTION_2_56();
  OUTLINED_FUNCTION_9_45();
  vtsttmark_tv(v3, v4);
  if (!v5)
  {
    v2 = 0;
    *(v0 + 144) = vmovel(*(v0 + 144), v1);
  }

  return v2;
}

uint64_t lpta_tstmover()
{
  OUTLINED_FUNCTION_1_59();
  vtsttmark_tv(v1, v2);
  if (v3)
  {
    return 1;
  }

  OUTLINED_FUNCTION_14_40(v3, *(v0 + 112));
  result = OUTLINED_FUNCTION_12_42();
  *(v0 + 112) = v5;
  return result;
}

uint64_t rpta_tstmover()
{
  OUTLINED_FUNCTION_2_56();
  OUTLINED_FUNCTION_9_45();
  vtsttmark_tv(v2, v3);
  if (!v4)
  {
    v1 = 0;
    *(v0 + 144) = OUTLINED_FUNCTION_14_40(v4, *(v0 + 144));
  }

  return v1;
}

uint64_t lpta_storep(uint64_t a1, uint64_t a2)
{
  result = vsync_tv(a1, a1 + 112);
  if (!result)
  {
    forceErrorBacktrack(a1);
  }

  if (*(*(a1 + 192) + 8096))
  {
    result = save_var(a1, a2);
  }

  *(a2 + 8) = *(a1 + 112);
  return result;
}

uint64_t rpta_storep(uint64_t a1, uint64_t a2)
{
  result = vsync_tv(a1, a1 + 144);
  if (!result)
  {
    forceErrorBacktrack(a1);
  }

  if (*(*(a1 + 192) + 8096))
  {
    result = save_var(a1, a2);
  }

  *(a2 + 8) = *(a1 + 144);
  return result;
}

unint64_t OUTLINED_FUNCTION_3_52(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return vgetsc(v4, 1, 1, a4, v5);
}

unint64_t OUTLINED_FUNCTION_4_48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return vgetsc(v4, 0, 1, a4, v5);
}

uint64_t OUTLINED_FUNCTION_5_48(uint64_t result, uint64_t a2)
{
  *(result + 136) = 1;
  *(result + 112) = *(a2 + 8);
  *(result + 128) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_6_47(uint64_t result, uint64_t a2)
{
  *(result + 168) = 1;
  *(result + 144) = *(a2 + 8);
  *(result + 128) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_7_46(uint64_t a1, char a2)
{
  *(a1 + 136) = 2;
  *(a1 + 120) = a2;

  return STMTYP(a2);
}

uint64_t OUTLINED_FUNCTION_8_45(char *a1, char a2)
{
  a1[168] = 2;
  a1[152] = a2;
  v3 = a1[120];

  return STMTYP(v3);
}

uint64_t OUTLINED_FUNCTION_10_45@<X0>(uint64_t result@<X0>, char a2@<W1>, char a3@<W8>)
{
  *(result + 168) = a3;
  *(result + 152) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_11_43@<X0>(uint64_t result@<X0>, char a2@<W1>, char a3@<W8>)
{
  *(result + 136) = a3;
  *(result + 120) = a2;
  return result;
}

_BYTE *OUTLINED_FUNCTION_14_40(uint64_t a1, _BYTE *a2)
{

  return vmover(v2, a2, v3);
}

uint64_t npush_v(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_2_57(a1, a2, a3, a4, a5, a6, a7, a8, v11[0], v11[1]);
  result = vnspush(v9, v11);
  if ((*v8 & 0x80000000) == 0)
  {
    v8[1] = -1;
  }

  return result;
}

uint64_t npush_vf(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_2_57(a1, a2, a3, a4, a5, a6, a7, a8, v11[0], v11[1]);
  result = vnspush(v9, v11);
  if ((*v8 & 0x80000000) == 0)
  {
    v8[1] = -1;
  }

  return result;
}

uint64_t npush_fld(uint64_t a1, unsigned int a2, int a3)
{
  v14 = 0;
  v4 = &vstmtbl[12 * a2];
  v5 = &v4[1][40 * a3];
  LOWORD(v14) = *(v5 + 30);
  BYTE2(v14) = *(v5 + 32);
  v6 = *(a1 + 192);
  v7 = *(v6 + 8080);
  if (*(v6 + 8089))
  {
    LODWORD(v8) = *(v6 + 8088);
    v9 = (v7 + 8 * (*(v6 + 9084) + v8));
  }

  else
  {
    v8 = *(v6 + 8088);
    v9 = (v7 + 8 * v8 + 24);
  }

  v10 = (*v9 & 0xFFFFFFFFFFFFFFFCLL);
  if (!v10)
  {
    return 1;
  }

  while ((*v10 & 2) != 0)
  {
    v11 = v8 + 3;
    if (*(v6 + 8089))
    {
      v11 = *(v6 + 9084) + v8;
    }

    v10 = (*&v10[8 * v11] & 0xFFFFFFFFFFFFFFFCLL);
    if (!v10)
    {
      return 1;
    }
  }

  v13 = (*&v4[2][8 * a3])(v10 + 16);
  vnspush(a1, &v13);
  return 0;
}

void npop(uint64_t a1, __int16 *a2)
{
  v5[0] = 0;
  v5[1] = 0;
  v4[0] = 0;
  v4[1] = 0;
  vnspop(a1, v5);
  if (*(*(a1 + 192) + 8096))
  {
    save_var(a1, a2);
  }

  vinitloc_new(a1, v4, a2);
  vassign(a1, v4, v5);
  if ((*a2 & 0x80000000) == 0)
  {
    a2[1] = -1;
  }
}

void ncompare(uint64_t a1)
{
  v3[0] = 0;
  v3[1] = 0;
  v2[0] = 0;
  v2[1] = 0;
  vnspop(a1, v3);
  vnspop(a1, v2);
  vcompare(a1, v3, v2);
}

void ncompare_s(uint64_t a1, unsigned int a2)
{
  v10 = a2;
  v9 = 0;
  v6 = 0;
  v7 = 0;
  vnspop(a1, &v6);
  if (v7 == -1)
  {
    v4 = *v6;
    if (v4 == a2)
    {
      *(*(a1 + 192) + 8120) = 0;
    }

    else
    {
      if (v4 <= a2)
      {
        v5 = -1;
      }

      else
      {
        v5 = 1;
      }

      *(*(a1 + 192) + 8120) = v5;
    }
  }

  else
  {
    LOWORD(v9) = -1;
    v8 = &v10;
    BYTE2(v9) = 0;
    vcompare(a1, &v8, &v6);
  }
}

uint64_t clearDeltaStackBack_0(uint64_t a1)
{
  v1 = *(*(a1 + 200) + 1760);
  if (*v1 == 8)
  {
    v1 = *(*(a1 + 192) + 8112);
  }

  return freeDeltaStackTo_1(a1, v1);
}

void bsclr_pushca(uint64_t a1, uint64_t a2)
{
  clearDeltaStackBack_0(a1);
  v4 = *(a1 + 200);
  v5 = *(v4 + 288);
  OUTLINED_FUNCTION_0_66(v4);
  *v6 = 0;
  *(v6 + 8) = a2;
}

void bspush_ca(uint64_t a1)
{
  v1 = *(a1 + 200);
  v2 = *(v1 + 288);
  OUTLINED_FUNCTION_0_66(v1);
  *v3 = 0;
  *(v3 + 8) = v4;
}

__n128 bspush_ca_scan(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 192);
  v2 = *(a1 + 200);
  v4 = *(v2 + 288);
  v5 = *(v2 + 1720) - v4;
  v6 = *(v2 + 1728);
  *v5 = 0;
  *(v5 + 8) = a2;
  v7 = *(v2 + 284);
  v8 = v5 - v7;
  *(v2 + 1720) = v8;
  *(v2 + 1728) = v6 - (v4 + v7);
  *v8 = 1;
  result = v3[505];
  *(v8 + 8) = result;
  return result;
}

void bspush_boa(uint64_t a1)
{
  v1 = *(a1 + 200);
  v2 = *(v1 + 296);
  OUTLINED_FUNCTION_0_66(v1);
  *v3 = 4;
}

void bspush_nboa(uint64_t a1)
{
  v1 = *(a1 + 200);
  v2 = *(v1 + 296);
  OUTLINED_FUNCTION_0_66(v1);
  *v3 = 6;
}

void bspush_vbot(uint64_t a1)
{
  v1 = *(a1 + 200);
  v2 = *(v1 + 292);
  OUTLINED_FUNCTION_0_66(v1);
  *v3 = 5;
  *(v3 + 8) = *(v4 + 1760);
  *(v4 + 1760) = v3;
}

uint64_t freeDeltaStackTo_1(uint64_t result, uint64_t a2)
{
  v2 = *(result + 200);
  v3 = *(v2 + 1744);
  if (v3)
  {
    *(v2 + 1720) = a2;
    *(v2 + 1728) = *(v2 + 1780) + a2 - *(v3 + 32);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_60@<X0>(uint64_t a1@<X0>, unsigned __int16 a2@<W8>, uint64_t a3, _WORD *a4, uint64_t a5)
{
  a4 = v5;
  a5 = a2;

  return vnspush(a1, &a4);
}

void OUTLINED_FUNCTION_2_57(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  a9 = 0;
  a10 = 0;

  vinitloc_new(a1, &a9, a2);
}

void starttest_l(uint64_t a1, uint64_t a2)
{
  *(*(a1 + 192) + 8064) = a2;
  clearDeltaStackBack_1(a1);
  OUTLINED_FUNCTION_0_67();
}

uint64_t clearDeltaStackBack_1(uint64_t a1)
{
  v1 = *(*(a1 + 200) + 1760);
  if (*v1 == 8)
  {
    v1 = *(*(a1 + 192) + 8112);
  }

  return freeDeltaStackTo_2(a1, v1);
}

void starttest_e(uint64_t a1, uint64_t a2)
{
  *(*(a1 + 192) + 8064) = a2;
  clearDeltaStackBack_1(a1);
  OUTLINED_FUNCTION_0_67();
}

void starttest(uint64_t a1, uint64_t a2)
{
  *(*(a1 + 192) + 8064) = a2;
  clearDeltaStackBack_1(a1);
  OUTLINED_FUNCTION_0_67();
}

void compare_tvars(uint64_t a1, __int16 *a2, __int16 *a3)
{
  v7[0] = 0;
  v7[1] = 0;
  v6[0] = 0;
  v6[1] = 0;
  vinitloc_new(a1, v7, a2);
  vinitloc_new(a1, v6, a3);
  vcompare(a1, v7, v6);
  if ((*a2 & 0x80000000) == 0)
  {
    a2[1] = -1;
  }

  if ((*a3 & 0x80000000) == 0)
  {
    a3[1] = -1;
  }
}

BOOL test_string(void *a1, unsigned int a2, int a3, unsigned __int8 *a4)
{
  if (!a3)
  {
    return vscanadvOverToken(a1) == 0;
  }

  v5 = (a4 + 1);
  v6 = *a4 - 199;
  v8 = &a4[a3];
  v9 = &vstmtbl[12 * a2];
  OUTLINED_FUNCTION_2_58(v9[1]);
  while (v5 < v8)
  {
    v10 = a1[24];
    v11 = *(v10 + 8080);
    if (*(v10 + 8089))
    {
      OUTLINED_FUNCTION_1_61(v11);
    }

    else
    {
      OUTLINED_FUNCTION_4_49(v11);
    }

    v13 = (*v12 & 0xFFFFFFFFFFFFFFFCLL);
    if (!v13)
    {
      return 1;
    }

    if ((*v13 & 2) == 0)
    {
      switch(v6)
      {
        case 0:
          ++v5;
          break;
        case 1:
        case 2:
          v19 = (*(v5 + 1) << 16) & 0xFFFFFFFF80FFFFFFLL | ((*v5 & 0x7F) << 24) | (*(v5 + 2) << 8) | *(v5 + 3);
          if (*v5 < 0)
          {
            v20 = -((*(v5 + 1) << 16) & 0xFFFFFFFF80FFFFFFLL | ((*v5 & 0x7F) << 24) | (*(v5 + 2) << 8) | *(v5 + 3));
          }

          v5 += 4;
          break;
        case 3:
          v17 = *(v5 + 1) | ((*v5 & 0x7F) << 8);
          if (*v5 < 0)
          {
            v18 = -(*(v5 + 1) | ((*v5 & 0x7F) << 8));
          }

          v5 += 2;
          break;
        case 4:
          atof(v5);
          break;
        default:
          break;
      }

      (*v9[2])(v13 + 16);
      OUTLINED_FUNCTION_7_47();
      vcompare(a1, v14, v15);
      if (*(a1[24] + 8120))
      {
        return 1;
      }
    }

    v7 = 1;
    if (!vscanadv(a1, 1, 1))
    {
      return v7;
    }
  }

  return 0;
}

uint64_t test_string_s()
{
  OUTLINED_FUNCTION_13_43();
  v26 = 0;
  v27 = 0;
  v24 = 0;
  v25 = 0;
  v6 = v5 + v4;
  OUTLINED_FUNCTION_15_40();
  v7 = *(v3 + 8);
  v8 = *(v7 + 30);
  if (v8 == 0xFFFF)
  {
    while (v0 < v6)
    {
      OUTLINED_FUNCTION_3_53();
      if (v18)
      {
        OUTLINED_FUNCTION_1_61(v17);
      }

      else
      {
        OUTLINED_FUNCTION_4_49(v17);
      }

      OUTLINED_FUNCTION_12_43(v19);
      if (v13)
      {
        return 1;
      }

      if ((*v20 & 2) == 0)
      {
        v21 = OUTLINED_FUNCTION_6_48(v20);
        if (*v22(v21) != *v0)
        {
          return 1;
        }

        v0 = (v0 + 1);
      }

      if (!OUTLINED_FUNCTION_5_49())
      {
        return v2;
      }
    }
  }

  else
  {
    LOWORD(v27) = -1;
    BYTE2(v27) = *(v7 + 32);
    BYTE2(v25) = BYTE2(v27);
    LOWORD(v25) = v8;
    while (v0 < v6)
    {
      OUTLINED_FUNCTION_3_53();
      if (v10)
      {
        OUTLINED_FUNCTION_1_61(v9);
      }

      else
      {
        OUTLINED_FUNCTION_4_49(v9);
      }

      OUTLINED_FUNCTION_12_43(v11);
      if (v13)
      {
        return 1;
      }

      if ((*v12 & 2) == 0)
      {
        v26 = v0;
        v14 = OUTLINED_FUNCTION_6_48(v12);
        v24 = v15(v14);
        vcompare(v1, &v26, &v24);
        OUTLINED_FUNCTION_14_41();
        if (v16)
        {
          return 1;
        }

        v0 = (v0 + 1);
      }

      if (!OUTLINED_FUNCTION_5_49())
      {
        return v2;
      }
    }
  }

  return 0;
}

uint64_t test_string_l()
{
  OUTLINED_FUNCTION_13_43();
  v6 = v5 + v4;
  OUTLINED_FUNCTION_15_40();
  OUTLINED_FUNCTION_2_58(*(v3 + 8));
  while (v0 < v6)
  {
    OUTLINED_FUNCTION_3_53();
    if (v8)
    {
      OUTLINED_FUNCTION_1_61(v7);
    }

    else
    {
      OUTLINED_FUNCTION_4_49(v7);
    }

    OUTLINED_FUNCTION_12_43(v9);
    if (v11)
    {
      return 1;
    }

    if ((*v10 & 2) == 0)
    {
      OUTLINED_FUNCTION_11_44();
      v13 = OUTLINED_FUNCTION_6_48(v12);
      v14(v13);
      OUTLINED_FUNCTION_7_47();
      vcompare(v1, v15, v16);
      OUTLINED_FUNCTION_14_41();
      if (v17)
      {
        return 1;
      }

      v0 += 2;
    }

    if (!OUTLINED_FUNCTION_5_49())
    {
      return v2;
    }
  }

  return 0;
}

uint64_t test_string_lng()
{
  OUTLINED_FUNCTION_13_43();
  v6 = v5 + v4;
  OUTLINED_FUNCTION_15_40();
  OUTLINED_FUNCTION_2_58(*(v3 + 8));
  while (v0 < v6)
  {
    OUTLINED_FUNCTION_3_53();
    if (v8)
    {
      OUTLINED_FUNCTION_1_61(v7);
    }

    else
    {
      OUTLINED_FUNCTION_4_49(v7);
    }

    OUTLINED_FUNCTION_12_43(v9);
    if (v11)
    {
      return 1;
    }

    if ((*v10 & 2) == 0)
    {
      v18 = (v0[1] << 16) & 0xFFFFFFFF80FFFFFFLL | ((*v0 & 0x7F) << 24) | (v0[2] << 8) | v0[3];
      if (*v0 < 0)
      {
        v19 = -((v0[1] << 16) & 0xFFFFFFFF80FFFFFFLL | ((*v0 & 0x7F) << 24) | (v0[2] << 8) | v0[3]);
      }

      v12 = OUTLINED_FUNCTION_6_48(v10);
      v13(v12);
      OUTLINED_FUNCTION_7_47();
      vcompare(v1, v14, v15);
      OUTLINED_FUNCTION_14_41();
      if (v16)
      {
        return 1;
      }

      v0 += 4;
    }

    if (!OUTLINED_FUNCTION_5_49())
    {
      return v2;
    }
  }

  return 0;
}

uint64_t test_string_i()
{
  OUTLINED_FUNCTION_13_43();
  v6 = v5 + v4;
  OUTLINED_FUNCTION_15_40();
  OUTLINED_FUNCTION_2_58(*(v3 + 8));
  while (v0 < v6)
  {
    OUTLINED_FUNCTION_3_53();
    if (v8)
    {
      OUTLINED_FUNCTION_1_61(v7);
    }

    else
    {
      OUTLINED_FUNCTION_4_49(v7);
    }

    OUTLINED_FUNCTION_12_43(v9);
    if (v11)
    {
      return 1;
    }

    if ((*v10 & 2) == 0)
    {
      OUTLINED_FUNCTION_11_44();
      v13 = OUTLINED_FUNCTION_6_48(v12);
      v14(v13);
      OUTLINED_FUNCTION_7_47();
      vcompare(v1, v15, v16);
      OUTLINED_FUNCTION_14_41();
      if (v17)
      {
        return 1;
      }

      v0 += 2;
    }

    if (!OUTLINED_FUNCTION_5_49())
    {
      return v2;
    }
  }

  return 0;
}

uint64_t test_string_f(uint64_t a1, unsigned int a2)
{
  v4 = &vstmtbl[12 * a2];
  OUTLINED_FUNCTION_2_58(v4[1]);
  if (!v5)
  {
    return 0;
  }

  OUTLINED_FUNCTION_13_43();
  while (1)
  {
    OUTLINED_FUNCTION_3_53();
    if (v7)
    {
      OUTLINED_FUNCTION_1_61(v6);
    }

    else
    {
      OUTLINED_FUNCTION_4_49(v6);
    }

    v9 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
    if (!v9)
    {
      break;
    }

    if ((*v9 & 2) == 0)
    {
      atof(v2);
      (*v4[2])(v9 + 16);
      OUTLINED_FUNCTION_7_47();
      vcompare(v3, v10, v11);
      if (*(*(v3 + 192) + 8120))
      {
        break;
      }
    }

    if (!OUTLINED_FUNCTION_5_49())
    {
      return v9;
    }
  }

  return 1;
}

uint64_t test_ptr(uint64_t a1)
{
  if (!*(a1 + 112))
  {
    return 1;
  }

  if ((*(a1 + 136) & 2) != 0)
  {
    vnormalize(a1, a1 + 112);
  }

  while (*(*(a1 + 192) + 8080) != *(a1 + 112))
  {
    v2 = 1;
    if (!OUTLINED_FUNCTION_9_46())
    {
      return v2;
    }
  }

  return 0;
}

uint64_t test_time(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 128);
  v18[0] = *(a1 + 112);
  v18[1] = v4;
  vtsttmark_tv(a1, v18);
  v5 = 1;
  if (!v6)
  {
    *(a1 + 144) = *(*(a1 + 192) + 8080);
    *(a1 + 168) = 1;
    if (!vcomp_pta(a1, a1 + 112, a1 + 144))
    {
      while (*(*(a1 + 192) + 8120))
      {
        v5 = 1;
        if (OUTLINED_FUNCTION_9_46())
        {
          *(a1 + 144) = *(*(a1 + 192) + 8080);
          if (!vcomp_pta(a1, a1 + 112, a1 + 144))
          {
            continue;
          }
        }

        return v5;
      }

      v5 = 0;
      v8 = *(a1 + 200);
      v9 = *(v8 + 288);
      v10 = *(v8 + 1720);
      OUTLINED_FUNCTION_10_46();
      v12 = *(v11 + 1728);
      *(v13 + 8) = a2;
      v14 = *(v11 + 284);
      v15 = v13 - v14;
      *(v11 + 1720) = v15;
      *(v11 + 1728) = v12 - (v16 + v14);
      *v15 = 1;
      *(v15 + 8) = *(v17 + 8080);
      *(*(a1 + 280) + *(*(a1 + 264) + *(a1 + 120))) = 1;
    }
  }

  return v5;
}

uint64_t test_synch(void *a1, uint64_t a2, unsigned int a3, unsigned __int8 *a4)
{
  v7 = 0;
  v8 = a3;
  while (!v7)
  {
    v9 = 0;
    v7 = 1;
    while (v9 < v8 && v7)
    {
      if (*(*(a1[24] + 8080) + 8 * (*(a1[24] + 9084) + a4[v9])))
      {
        v7 = 1;
      }

      else
      {
        v10 = 1;
        v11 = vscanadv(a1, 0, 1);
        v7 = 0;
        if (!v11)
        {
          return v10;
        }
      }

      ++v9;
    }
  }

  v13 = a1[24];
  v12 = a1[25];
  v14 = *(v12 + 288);
  v15 = *(v12 + 1720);
  OUTLINED_FUNCTION_10_46();
  v17 = *(v16 + 1728);
  *(v18 + 8) = a2;
  *(v16 + 1720) = v18 - *(v16 + 284);
  OUTLINED_FUNCTION_8_46(v16);
  for (; v8; --v8)
  {
    v20 = *a4++;
    *(a1[35] + *(a1[33] + v20)) = v19;
  }

  return 0;
}

uint64_t test_fence(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a3)
  {
    v8 = 0;
    while (!v8)
    {
      v9 = 0;
      v8 = 1;
      while (a3 > v9 && v8)
      {
        v10 = *(a4 + v9);
        if (*(*(a1 + 264) + v10) == *(a1 + 288) && !FENCED(a1, *(*(a1 + 192) + 8080), v10))
        {
          v11 = 1;
          v12 = OUTLINED_FUNCTION_9_46();
          v8 = 0;
          if (!v12)
          {
            return v11;
          }
        }

        else
        {
          v8 = 1;
        }

        ++v9;
      }
    }

    v19 = 0;
    v21 = *(a1 + 192);
    v20 = *(a1 + 200);
    v22 = *(v20 + 288);
    v23 = *(v20 + 1720) - v22;
    *v23 = 3;
    *(v23 + 8) = a2;
    v24 = *(v20 + 284);
    v25 = v23 - v24;
    LODWORD(v22) = v22 + v24;
    LODWORD(v24) = *(v20 + 1728);
    *(v20 + 1720) = v25;
    *(v20 + 1728) = v24 - v22;
    *v25 = 1;
    *(v25 + 8) = *(v21 + 8080);
    while (a3 > v19)
    {
      *(*(a1 + 280) + *(*(a1 + 264) + *(a4 + v19++))) = 1;
    }

    return 0;
  }

  else
  {
    v13 = 0;
    while (!v13)
    {
      v14 = 0;
      v13 = 1;
      while (1)
      {
        v15 = v14;
        v16 = *(a1 + 288);
        if (!v13 || v15 >= v16)
        {
          break;
        }

        v17 = *(a1 + 192);
        if (v15 == *(v17 + 8088) || *(*(a1 + 264) + v15) != v16 || FENCED(a1, *(v17 + 8080), v15))
        {
          v13 = 1;
        }

        else
        {
          v11 = 1;
          v18 = OUTLINED_FUNCTION_9_46();
          v13 = 0;
          if (!v18)
          {
            return v11;
          }
        }

        v14 = v15 + 1;
      }
    }

    v11 = 0;
    v27 = *(a1 + 192);
    v26 = *(a1 + 200);
    v28 = *(v26 + 288);
    v29 = *(v26 + 1720);
    OUTLINED_FUNCTION_10_46();
    *(v30 + 8) = a2;
    v32 = *(v31 + 1728);
    *(v31 + 1720) = v30 - *(v31 + 284);
    OUTLINED_FUNCTION_8_46(v31);
    *(*(a1 + 192) + 8090) = v33;
  }

  return v11;
}

uint64_t test_hasval(uint64_t a1)
{
  v1 = *(a1 + 184);
  *(v1 + 436) = 0;
  *(v1 + 32) = 0;
  return 1;
}

uint64_t freeDeltaStackTo_2(uint64_t result, uint64_t a2)
{
  v2 = *(result + 200);
  v3 = *(v2 + 1744);
  if (v3)
  {
    *(v2 + 1720) = a2;
    *(v2 + 1728) = *(v2 + 1780) + a2 - *(v3 + 32);
  }

  return result;
}

void OUTLINED_FUNCTION_0_67()
{
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  v3 = *(v1 + 288);
  v4 = *(v1 + 1720) - v3;
  *(v1 + 1720) = v4;
  *(v1 + 1728) -= v3;
  *v4 = 0;
  *(v4 + 8) = *(v2 + 8064);
  *(v2 + 8096) = 1;
}

void OUTLINED_FUNCTION_3_53()
{
  v1 = *(v0 + 192);
  v2 = *(v1 + 8089);
  v3 = *(v1 + 8080);
}

uint64_t OUTLINED_FUNCTION_5_49()
{

  return vscanadv(v0, 1, 1);
}

__n128 OUTLINED_FUNCTION_8_46@<Q0>(uint64_t a1@<X8>)
{
  *(a1 + 1728) = v4 - v2;
  *v3 = 1;
  result = v1[505];
  *(v3 + 8) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_9_46()
{

  return vscanadv(v0, 0, 1);
}

uint64_t num_fields(uint64_t a1)
{
  result = 0;
  v3 = *a1 & ~(*a1 >> 31);
  v4 = 4;
  if ((*a1 & ~(*a1 >> 31)) != 0)
  {
    do
    {
      result = (*(*(a1 + 8) + v4) + result);
      --v3;
      v4 += 16;
    }

    while (v3);
  }

  return result;
}

uint64_t first_field(uint64_t a1, uint64_t a2, _BYTE *a3, _DWORD *a4)
{
  *(*(a1 + 200) + 300) = 0;
  if (*a2 < 1)
  {
    return 0;
  }

  v4 = *(a2 + 8);
  if (*(v4 + 4) < 1)
  {
    return 0;
  }

  else
  {
    return OUTLINED_FUNCTION_0_68(a1, a2, a3, a4, *v4);
  }
}

uint64_t next_field(uint64_t a1, uint64_t a2, _BYTE *a3, _DWORD *a4)
{
  v4 = *(a1 + 200);
  v5 = *(v4 + 304) + 1;
  *(v4 + 304) = v5;
  v6 = *(a2 + 8);
  v7 = *(v4 + 300);
  if (v5 < *(v6 + 16 * v7 + 4))
  {
    return OUTLINED_FUNCTION_0_68(a1, a2, a3, a4, *(v6 + 16 * v7));
  }

  LODWORD(v7) = v7 + 1;
  *(v4 + 300) = v7;
  if (v7 < *a2)
  {
    *(v4 + 304) = 0;
    v7 = v7;
    return OUTLINED_FUNCTION_0_68(a1, a2, a3, a4, *(v6 + 16 * v7));
  }

  return 0;
}

uint64_t is_token_prev(int a1, uint64_t a2)
{
  if ((*(a2 + 8 * a1 + 24) & 0xFFFFFFFFFFFFFFFCLL) != 0 && (*(*(a2 + 8 * a1 + 24) & 0xFFFFFFFFFFFFFFFCLL) & 2) != 0)
  {
    return 0;
  }

  else
  {
    return OUTLINED_FUNCTION_4_50();
  }
}

uint64_t is_token_next(uint64_t a1, int a2, uint64_t a3)
{
  if ((*(a3 + 8 * (*(*(a1 + 192) + 9084) + a2)) & 0xFFFFFFFFFFFFFFFCLL) != 0 && (*(*(a3 + 8 * (*(*(a1 + 192) + 9084) + a2)) & 0xFFFFFFFFFFFFFFFCLL) & 2) != 0)
  {
    return 0;
  }

  else
  {
    return OUTLINED_FUNCTION_4_50();
  }
}

void *left_context(uint64_t a1, int a2, uint64_t a3)
{
  if ((*(a3 + 8 * (*(*(a1 + 192) + 9084) + a2)) & 1) == 0)
  {
    return VLSYNC(a3, a2);
  }

  return a3;
}

unint64_t right_context(uint64_t a1, int a2, uint64_t a3)
{
  if ((*(a3 + 8 * (*(*(a1 + 192) + 9084) + a2)) & 1) == 0)
  {
    return VRSYNC(a1, a3, a2);
  }

  return a3;
}

void valid_prefix(uint64_t a1, int a2)
{
  OUTLINED_FUNCTION_8_47(a1, a2, vstmtbl);
  v9 = v8;
  switch(v10)
  {
    case 0xFFFB:
      OUTLINED_FUNCTION_15_41();

      legal_double();
      break;
    case 0xFFFC:
      OUTLINED_FUNCTION_15_41();

      legal_int();
      break;
    case 0xFFFD:
      OUTLINED_FUNCTION_15_41();

      legal_long();
      break;
    case 0xFFFE:
    case 0xFFFF:
      v11 = v7;
      if (allchrs(v8))
      {
        OUTLINED_FUNCTION_6_49();
        do
        {
          if (v6 == v4)
          {
            break;
          }

          v12 = strcmp(*(*(v5 + 16) + v4), "undefined");
          v4 += 8;
        }

        while (v12);
      }

      else
      {
        OUTLINED_FUNCTION_14_42();
      }

      v16 = 0;
      v17 = v2 + 40 * v11;
      do
      {
        if (8 * v3 == v16)
        {
          break;
        }

        v18 = strprefix(*(*(v17 + 16) + v16), v9);
        v16 += 8;
      }

      while (!v18);
      goto LABEL_20;
    default:
LABEL_20:
      OUTLINED_FUNCTION_15_41();
      break;
  }
}

BOOL allchrs(unsigned __int8 *a1)
{
  while (1)
  {
    v1 = *a1;
    if (v1 != 45)
    {
      break;
    }

    ++a1;
  }

  return v1 == 0;
}

uint64_t strprefix(unsigned __int8 *a1, unsigned __int8 *a2)
{
  while (1)
  {
    v3 = *a2++;
    v2 = v3;
    if (!v3)
    {
      break;
    }

    v4 = *a1++;
    if (v4 != v2)
    {
      return 0;
    }
  }

  return OUTLINED_FUNCTION_4_50();
}

uint64_t legal_long()
{
  v1 = OUTLINED_FUNCTION_12_44();
  v2 = OUTLINED_FUNCTION_5_50(v1);
  v4 = strtol(v2, v3, 0);
  if (*v7)
  {
    return 0;
  }

  v5 = v4;
  if (*__error() == 34)
  {
    return 0;
  }

  if (v0)
  {
    *v0 = v5;
  }

  return 1;
}

uint64_t legal_int()
{
  v1 = OUTLINED_FUNCTION_12_44();
  v2 = OUTLINED_FUNCTION_5_50(v1);
  v4 = strtol(v2, v3, 0);
  if (*v8)
  {
    return 0;
  }

  v5 = v4;
  if (*__error() == 34 || (v5 - 0x80000000) < 0xFFFFFFFF00000000)
  {
    return 0;
  }

  if (v0)
  {
    *v0 = v5;
  }

  return 1;
}

uint64_t legal_double()
{
  v1 = OUTLINED_FUNCTION_12_44();
  v2 = OUTLINED_FUNCTION_5_50(v1);
  v4 = strtod(v2, v3);
  if (*v7)
  {
    return 0;
  }

  v5 = v4;
  if (*__error() == 34)
  {
    return 0;
  }

  if (v0)
  {
    *v0 = v5;
  }

  return 1;
}

void valid_prefix_char(uint64_t a1, int a2, int a3)
{
  OUTLINED_FUNCTION_8_47(a1, a2, vstmtbl);
  if ((v10 - 65532) >= 2 && (v10 - 65534) < 2)
  {
    v11 = v9;
    if (a3 == 45)
    {
      OUTLINED_FUNCTION_6_49();
      while (v7 != v5)
      {
        v12 = strcmp(*(*(v6 + 16) + v5), "undefined");
        v5 += 8;
        if (!v12)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_14_42();
    }

    v13 = 0;
    do
    {
      if (8 * v4 == v13)
      {
        break;
      }

      v14 = **(*(v3 + 40 * v11 + 16) + v13);
      v13 += 8;
    }

    while (v14 != a3);
  }

LABEL_14:
  OUTLINED_FUNCTION_15_41();
}

uint64_t unique_value(uint64_t a1, int a2, int a3, unsigned __int8 *a4, void *a5, void *a6, uint64_t a7, _WORD *a8, _WORD *a9, _WORD *a10, _WORD *a11)
{
  if (!*a4)
  {
    return 0;
  }

  v11 = vstmtbl[12 * a2 + 1];
  v14 = a4;
  switch(*&v11[40 * a3 + 30])
  {
    case 0xFFFB:
      v15 = a11;
      OUTLINED_FUNCTION_7_48();
      result = legal_double();
      if (result)
      {
        goto LABEL_28;
      }

      break;
    case 0xFFFC:
      v15 = a10;
      OUTLINED_FUNCTION_7_48();
      result = legal_int();
      if (result)
      {
        goto LABEL_28;
      }

      break;
    case 0xFFFD:
      v15 = a9;
      OUTLINED_FUNCTION_7_48();
      result = legal_long();
      if (result)
      {
        goto LABEL_28;
      }

      break;
    case 0xFFFE:
    case 0xFFFF:
      v15 = a8;
      *a8 = -1;
      if (allchrs(a4))
      {
        v27 = a6;
        v18 = 0;
        v19 = &v11[40 * a3];
        v20 = -1;
        while (v18 < *(v19 + 14))
        {
          if (!strcmp(*(*(v19 + 2) + 8 * v18), "undefined"))
          {
            if (v20 != -1)
            {
              goto LABEL_30;
            }

            *v15 = v18;
            v20 = v18;
          }

          ++v18;
        }

        a6 = v27;
      }

      else
      {
        v20 = -1;
      }

      v22 = 0;
      OUTLINED_FUNCTION_13_44();
      v25 = &v11[v24 * v23];
      while (v22 < *(v25 + 14))
      {
        if (strprefix(*(*(v25 + 2) + 8 * v22), v14))
        {
          if (v20 != -1)
          {
            goto LABEL_30;
          }

          *v15 = v22;
          v20 = v22;
        }

        ++v22;
      }

      if (v20 == -1)
      {
        goto LABEL_30;
      }

      v26 = *(*(v25 + 2) + 8 * v20);
      *a5 = v26;
      if (!strcmp(v26, "undefined"))
      {
        v14 = *(*(a1 + 200) + 336);
LABEL_28:
        *a5 = v14;
      }

      *a6 = v15;
      result = 1;
      break;
    default:
LABEL_30:
      result = 0;
      break;
  }

  return result;
}

uint64_t non_unique_value(uint64_t a1, int a2, int a3, unsigned __int8 *a4, void *a5, void *a6, uint64_t a7, _WORD *a8, _WORD *a9, _WORD *a10, _WORD *a11)
{
  if (!*a4)
  {
    return 0;
  }

  v11 = vstmtbl[12 * a2 + 1];
  v14 = a4;
  switch(*&v11[40 * a3 + 30])
  {
    case 0xFFFB:
      v15 = a11;
      OUTLINED_FUNCTION_7_48();
      result = legal_double();
      if (result)
      {
        goto LABEL_26;
      }

      break;
    case 0xFFFC:
      v15 = a10;
      OUTLINED_FUNCTION_7_48();
      result = legal_int();
      if (result)
      {
        goto LABEL_26;
      }

      break;
    case 0xFFFD:
      v15 = a9;
      OUTLINED_FUNCTION_7_48();
      result = legal_long();
      if (result)
      {
        goto LABEL_26;
      }

      break;
    case 0xFFFE:
    case 0xFFFF:
      v15 = a8;
      *a8 = -1;
      if (allchrs(a4))
      {
        v17 = 0;
        OUTLINED_FUNCTION_13_44();
        v20 = &v11[v19 * v18];
        v21 = *(v20 + 14) & ~(*(v20 + 14) >> 31);
        while (v21 != v17)
        {
          if (!strcmp(*(*(v20 + 2) + 8 * v17), "undefined"))
          {
            *v15 = v17;
            LOWORD(v23) = v17;
            goto LABEL_24;
          }

          ++v17;
        }
      }

      v23 = 0;
      OUTLINED_FUNCTION_13_44();
      v26 = &v11[v25 * v24];
      v27 = *(v26 + 14) & ~(*(v26 + 14) >> 31);
      while (1)
      {
        if (v27 == v23)
        {
          LOWORD(v23) = -1;
          goto LABEL_21;
        }

        if (strprefix(*(*(v26 + 2) + 8 * v23), v14))
        {
          break;
        }

        ++v23;
      }

      *v15 = v23;
LABEL_21:
      if (v23 == 0xFFFF)
      {
        goto LABEL_22;
      }

LABEL_24:
      OUTLINED_FUNCTION_13_44();
      v30 = *(*&v11[v29 * v28 + 16] + 8 * v23);
      *a5 = v30;
      if (!strcmp(v30, "undefined"))
      {
        v14 = *(*(a1 + 200) + 336);
LABEL_26:
        *a5 = v14;
      }

      *a6 = v15;
      result = 1;
      break;
    default:
LABEL_22:
      result = 0;
      break;
  }

  return result;
}

char *field_value(uint64_t a1, uint64_t a2, int a3, char *a4)
{
  v5 = &vstmtbl[12 * a1];
  v6 = &v5[1][40 * a3];
  switch(*(v6 + 30))
  {
    case 0xFFFB:
      v8 = OUTLINED_FUNCTION_3_54(a1, a2);
      v10 = v9(v8);
      v11 = *v10;
      v12 = &v5[1][40 * a3];
      if (*(v12 + 32))
      {
        v13 = v11 == 2.22507386e-308;
      }

      else
      {
        v13 = 0;
      }

      if (v13)
      {
        goto LABEL_26;
      }

      sprintf(a4, *(v12 + 8), v11, *v10);
      return a4;
    case 0xFFFC:
      v29 = OUTLINED_FUNCTION_3_54(a1, a2);
      v31 = *v30(v29);
      OUTLINED_FUNCTION_11_45();
      if (!v13 && v32 == 32769)
      {
        goto LABEL_26;
      }

      v21 = v32;
      goto LABEL_24;
    case 0xFFFD:
      v18 = OUTLINED_FUNCTION_3_54(a1, a2);
      v20 = *v19(v18);
      OUTLINED_FUNCTION_11_45();
      if (v13 || v21 != -2147483647)
      {
LABEL_24:
        sprintf(a4, *(v22 + 8), v23, v21);
        return a4;
      }

LABEL_26:
      v28 = 5259591;
      goto LABEL_29;
    case 0xFFFE:
      v14 = *(v6 + 16);
      v25 = OUTLINED_FUNCTION_3_54(a1, a2);
      v17 = *v26(v25);
      goto LABEL_15;
    case 0xFFFF:
      v14 = *(v6 + 16);
      v15 = OUTLINED_FUNCTION_3_54(a1, a2);
      v17 = *v16(v15);
LABEL_15:
      v27 = strcpy(a4, *(v14 + 8 * v17));
      if (!strcmp(v27, "undefined"))
      {
        v28 = 2960685;
        goto LABEL_29;
      }

      if (*a4 == 32 && !a4[1])
      {
        v28 = 2564135;
LABEL_29:
        *a4 = v28;
      }

      return a4;
    default:
      v28 = 4144959;
      goto LABEL_29;
  }
}

uint64_t time_field_value(int a1, uint64_t a2)
{
  v2 = &vstmtbl[12 * a1];
  if (!*(v2 + 86))
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(v2[1] + 15);
  if (v3 == 65532)
  {
    return *(*v2[2])(a2 + 16);
  }

  if (v3 == 65533)
  {
    return *(*v2[2])(a2 + 16);
  }

  return 0xFFFFFFFFLL;
}

void first_fieldval(uint64_t a1, char a2, int a3, unsigned __int8 *a4)
{
  v5 = *(a1 + 200);
  *(v5 + 308) = a2;
  *(v5 + 312) = a3;
  *(v5 + 320) = a4;
  *(v5 + 328) = -1;
  if (a4)
  {
    v6 = allchrs(a4);
  }

  else
  {
    v6 = 0;
  }

  *(v5 + 332) = v6;

  next_fieldval(a1);
}

void next_fieldval(uint64_t a1)
{
  v1 = *(a1 + 200);
  v2 = *(v1 + 328);
  v3 = v2 + 1;
  *(v1 + 328) = v2 + 1;
  v4 = vstmtbl[12 * *(v1 + 308) + 1];
  v5 = *(v1 + 312);
  if (v2 + 1 >= *&v4[40 * v5 + 28] || (v6 = *(v1 + 320)) != 0 && *v6)
  {
    v7 = *&v4[40 * v5 + 28];
    v8 = &v4[40 * v5];
    for (i = v2 + 2; v3 < v7; ++i)
    {
      v10 = *(*(v8 + 2) + 8 * v3);
      if (strprefix(v10, *(v1 + 320)) || *(v1 + 332) && !strcmp(v10, "undefined"))
      {
        break;
      }

      ++v3;
      *(v1 + 328) = i;
    }
  }

  else
  {
    v11 = *(*&v4[40 * v5 + 16] + 8 * v3);
  }

  OUTLINED_FUNCTION_15_41();
}

uint64_t can_del_sync(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 200);
  if (*v3 == a3 || v3[1] == a3)
  {
    goto LABEL_22;
  }

  if (is_token_next(a1, a2, a3))
  {
    v7 = (*(a3 + 8 * a2 + 24) & 0xFFFFFFFFFFFFFFFCLL);
    if (!v7 || (*v7 & 2) == 0)
    {
      v8 = *(a3 + 8 * (*(*(a1 + 192) + 9084) + a2)) & 0xFFFFFFFFFFFFFFFCLL;
      v9 = &vstmtbl[12 * a2];
      if (!*(v9 + 86))
      {
        field_value(a2, v7, 0, v38);
        if (*v38 != 5259591 || (field_value(a2, v8, 0, v37), *v37 != 5259591))
        {
LABEL_22:
          result = 0;
          goto LABEL_23;
        }
      }

      v10 = 1;
      while (v10 < *(v9 + 16))
      {
        switch(*(v9[1] + 15))
        {
          case 0xFFFB:
            v11 = OUTLINED_FUNCTION_2_59();
            v13 = *v12(v11);
            v14 = OUTLINED_FUNCTION_1_62();
            if (v13 != *v15(v14))
            {
              goto LABEL_22;
            }

            goto LABEL_18;
          case 0xFFFC:
            v31 = OUTLINED_FUNCTION_2_59();
            v18 = *v32(v31);
            v33 = OUTLINED_FUNCTION_1_62();
            v21 = *v34(v33);
            goto LABEL_17;
          case 0xFFFD:
            v22 = OUTLINED_FUNCTION_2_59();
            v24 = *v23(v22);
            v25 = OUTLINED_FUNCTION_1_62();
            if (v24 != *v26(v25))
            {
              goto LABEL_22;
            }

            goto LABEL_18;
          case 0xFFFE:
            v27 = OUTLINED_FUNCTION_2_59();
            v18 = *v28(v27);
            v29 = OUTLINED_FUNCTION_1_62();
            v21 = *v30(v29);
            goto LABEL_17;
          case 0xFFFF:
            v16 = OUTLINED_FUNCTION_2_59();
            v18 = *v17(v16);
            v19 = OUTLINED_FUNCTION_1_62();
            v21 = *v20(v19);
LABEL_17:
            if (v18 != v21)
            {
              goto LABEL_22;
            }

LABEL_18:
            ++v10;
            break;
          default:
            goto LABEL_22;
        }
      }
    }
  }

  result = 1;
LABEL_23:
  v36 = *MEMORY[0x277D85DE8];
  return result;
}

unsigned __int16 *pvlist_size(unsigned __int16 *result)
{
  if (result)
  {
    return (bswap32(*result) >> 17);
  }

  return result;
}

void *pvlist_name(uint64_t a1, uint64_t a2, int a3)
{
  OUTLINED_FUNCTION_10_47(a1, a2, a3);
  v7 = vardesc(v3, v4, v5, v6);
  if (v7)
  {
    return *v7;
  }

  else
  {
    return &unk_26E7817DA;
  }
}

uint64_t allow_left_ctxt(uint64_t a1, _BYTE *a2, int a3, _BYTE *a4)
{
  if (a2 != a4)
  {
    v4 = *(*(a1 + 192) + 9084) + a3;
    if (*&a2[8 * v4])
    {
      while (a2 != a4)
      {
        a2 = (*&a2[8 * v4] & 0xFFFFFFFFFFFFFFFCLL);
        if (!a2 || (*a2 & 2) == 0)
        {
          return 0;
        }
      }
    }
  }

  return OUTLINED_FUNCTION_4_50();
}

uint64_t allow_right_ctxt(uint64_t a1, _BYTE *a2, int a3, _BYTE *a4)
{
  if (a2 != a4)
  {
    v4 = *(*(a1 + 192) + 9084) + a3;
    if (*&a2[8 * v4])
    {
      while (a2 != a4)
      {
        a2 = (*&a2[8 * v4] & 0xFFFFFFFFFFFFFFFCLL);
        if (!a2 || (*a2 & 2) == 0)
        {
          return 0;
        }
      }
    }
  }

  return OUTLINED_FUNCTION_4_50();
}

char *extract_string(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char *a5, int a6)
{
  v9 = a3;
  v19 = *MEMORY[0x277D85DE8];
  if (visleft(a1, a3, a4))
  {
    v12 = a6 - 1;
    v13 = a5;
    while (v9 != a4 && v12)
    {
      if (is_token_next(a1, a2, v9))
      {
        v14 = v18;
        field_value(a2, *(v9 + 8 * (*(*(a1 + 192) + 9084) + a2)) & 0xFFFFFFFFFFFFFFFCLL, 0, v18);
        while (1)
        {
          v15 = *v14;
          if (!*v14 || !v12)
          {
            break;
          }

          ++v14;
          *v13++ = v15;
          --v12;
        }
      }

      v9 = VRSYNC(a1, v9, a2);
    }

    *v13 = 0;
  }

  else
  {
    a5 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return a5;
}

BOOL ins_tok_named(uint64_t *a1, int a2, uint64_t a3, char *__s1, uint64_t a5)
{
  v11 = 0;
  v10 = a3;
  LOWORD(v11) = *(vstmtbl[12 * a2 + 1] + 15);
  *(&v11 + 2) = strcmp(__s1, "GAP") == 0;
  v8 = VLSYNC(a5, a2);
  return vins_tok(a1, a2, v8, a5, &v10) != 0;
}

uint64_t set_fld_value(uint64_t *a1, int a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a2;
  v11 = VLSYNC(a6, a2);
  vmark(a1, v9, a3, v11, a6, a4);
  return 1;
}

void *ins_sync(uint64_t a1, int a2, unint64_t a3, int a4)
{
  if (a4)
  {
    vins_sync(a1, a2, *(a3 + 8 * a2 + 24) & 0xFFFFFFFFFFFFFFFCLL, a3);
    return VLSYNC(a3, a2);
  }

  else
  {
    vins_sync(a1, a2, a3, *(a3 + 8 * (*(*(a1 + 192) + 9084) + a2)) & 0xFFFFFFFFFFFFFFFCLL);
    return VRSYNC(a1, a3, a2);
  }
}

uint64_t project_sync(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, int a5)
{
  v5 = 0;
  if (a2 && a4)
  {
    if (a5)
    {
      if (vproj_l(a1, a2, a4, a3))
      {
        return 1;
      }
    }

    else if (vproj_r(a1, a2, a4, a3))
    {
      return 1;
    }

    return 0;
  }

  return v5;
}

void merge_sync(uint64_t a1, unint64_t a2, int a3, unint64_t a4)
{
  if ((*(a4 + 8 * (*(*(a1 + 192) + 9084) + a3)) & 1) != 0 && project_sync(a1, a2, a3, a4, 0))
  {
    if (a2 == a4)
    {
LABEL_5:
      vmerge(a1, a4, a2);
      goto LABEL_6;
    }

    v7 = *(a1 + 200);
    v8 = *v7;
    v9 = v7[1];
    if ((v8 != a2 || v9 != a4) && (v8 != a4 || v9 != a2))
    {
      for (i = 0; ; ++i)
      {
        if (i >= *(a1 + 288))
        {
          goto LABEL_5;
        }

        v13 = i + *(*(a1 + 192) + 9084);
        v14 = *(a2 + 8 * v13);
        v15 = *(a4 + 8 * v13);
        v16 = a2 + 8 * i;
        v17 = a4 + 8 * i;
        if (v14)
        {
          if (v15)
          {
            if ((v14 & 0xFFFFFFFFFFFFFFFCLL) != a4 && (*(v16 + 24) & 0xFFFFFFFFFFFFFFFCLL) != a4)
            {
              break;
            }
          }

          else
          {
            v18 = *(v17 + 24) & 0xFFFFFFFFFFFFFFFCLL;
            if (v18 != a2 && !visleft(a1, v18, a2))
            {
              break;
            }

            v19 = v15 & 0xFFFFFFFFFFFFFFFCLL;
            if ((v15 & 0xFFFFFFFFFFFFFFFCLL) != a2)
            {
              v20 = a1;
              v21 = a2;
              goto LABEL_31;
            }
          }
        }

        else if (v15)
        {
          v22 = *(v16 + 24) & 0xFFFFFFFFFFFFFFFCLL;
          if (v22 != a4 && !visleft(a1, v22, a4))
          {
            break;
          }

          v19 = v14 & 0xFFFFFFFFFFFFFFFCLL;
          if ((v14 & 0xFFFFFFFFFFFFFFFCLL) != a4)
          {
            v20 = a1;
            v21 = a4;
LABEL_31:
            if (!visright(v20, v19, v21))
            {
              break;
            }

            continue;
          }
        }

        else if (visleft(a1, v14 & 0xFFFFFFFFFFFFFFFCLL, *(v17 + 24) & 0xFFFFFFFFFFFFFFFCLL) || visright(a1, *(v16 + 24) & 0xFFFFFFFFFFFFFFFCLL, *(a4 + 8 * (i + *(*(a1 + 192) + 9084))) & 0xFFFFFFFFFFFFFFFCLL))
        {
          break;
        }
      }
    }
  }

LABEL_6:
  OUTLINED_FUNCTION_15_41();
}

void fill_stream_list(uint64_t a1, int *a2, _BYTE *a3)
{
  if (*a3)
  {
    v5 = OUTLINED_FUNCTION_9_47(*a3);
    *(a2 + 1) = v5;
    if (!v5)
    {
      goto LABEL_29;
    }

    v6 = 0;
    v7 = 1;
    while (1)
    {
      v8 = *a2;
      if (v6 >= v8)
      {
        break;
      }

      v9 = &a3[v7];
      v10 = *(a2 + 1);
      *(v10 + 16 * v6) = *v9;
      v11 = v9[1];
      v12 = v9 + 2;
      v13 = 1;
      for (i = v11; i; --i)
      {
        if (*v12++)
        {
          ++v13;
        }
      }

      *(v10 + 16 * v6 + 4) = v13;
      v16 = malloc_type_calloc(v13, 4uLL, 0x100004052888210uLL);
      *(*(a2 + 1) + 16 * v6 + 8) = v16;
      if (v16)
      {
        *v16 = 0;
        v17 = &a3[v7 + 2];
        v7 += v11 + 2;
        v18 = 1;
        while (1)
        {
          v19 = __OFSUB__(v11, 1);
          LODWORD(v11) = v11 - 1;
          if (v11 < 0 != v19)
          {
            break;
          }

          if (*v17)
          {
            *(*(*(a2 + 1) + 16 * v6 + 8) + v18++) = *v17;
          }

          ++v17;
        }
      }

      else
      {
        v7 += 2;
      }

      ++v6;
    }

    v20 = *(a2 + 1) + 16 * v8;
  }

  else
  {
    v21 = OUTLINED_FUNCTION_9_47(*(a1 + 288));
    *(a2 + 1) = v21;
    if (!v21)
    {
      goto LABEL_29;
    }

    for (j = 0; ; ++j)
    {
      v23 = *a2;
      if (j >= v23)
      {
        break;
      }

      v24 = &v21[2 * j];
      *v24 = j;
      v25 = SLODWORD(vstmtbl[12 * j + 8]);
      *(v24 + 1) = v25;
      v26 = malloc_type_calloc(v25, 4uLL, 0x100004052888210uLL);
      v21 = *(a2 + 1);
      v21[2 * j + 1] = v26;
      if (v26)
      {
        for (k = 0; ; ++k)
        {
          v28 = &v21[2 * j];
          if (k >= *(v28 + 1))
          {
            break;
          }

          *(*(v28 + 1) + k) = k;
          v21 = *(a2 + 1);
        }
      }
    }

    v20 = &v21[2 * v23];
  }

  if (!*(v20 - 8))
  {
    free_stream_list(a2);
  }

LABEL_29:
  OUTLINED_FUNCTION_15_41();
}

void free_stream_list(int *a1)
{
  v2 = 0;
  for (i = 8; ; i += 16)
  {
    v4 = *(a1 + 1);
    if (v2 >= *a1)
    {
      break;
    }

    free(*&v4[i]);
    ++v2;
  }

  free(v4);
  *(a1 + 1) = 0;
}

BOOL insert_string(uint64_t *a1, int a2, unint64_t a3, char *a4)
{
  *__s2 = 0;
  v4 = &vstmtbl[12 * a2];
  v6 = v4[1];
  v5 = v4 + 1;
  if (*(v6 + 15) >= 0xFFFEu && LOBYTE(vstmtbl[12 * a2 + 10]))
  {
    if ((*(a3 + 8 * a2 + 24) & 0xFFFFFFFFFFFFFFFCLL) == 0 || (*(*(a3 + 8 * a2 + 24) & 0xFFFFFFFFFFFFFFFCLL) & 2) == 0)
    {
LABEL_8:
      ins_sync(a1, a2, a3, 1);
    }

LABEL_9:
    if (!*a4)
    {
      result = 1;
      *(a1[23] + 452) = 1;
      return result;
    }

    v12 = 0;
    __s2[0] = *a4;
    v13 = *v5;
    v14 = *(*v5 + 14) & ~(*(*v5 + 14) >> 31);
    while (v14 != v12)
    {
      if (!strcmp(*(*(v13 + 2) + 8 * v12), __s2))
      {
        if (*(v13 + 15) == -1)
        {
          v18 = v12;
          v15 = &v18;
        }

        else
        {
          v17 = v12;
          v15 = &v17;
        }

        result = ins_tok_named(a1, a2, v15, __s2, a3);
        if (!result)
        {
          return result;
        }

        if (*++a4)
        {
          goto LABEL_8;
        }

        goto LABEL_9;
      }

      ++v12;
    }
  }

  return 0;
}

uint64_t OUTLINED_FUNCTION_0_68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X2>, _DWORD *a4@<X3>, char a5@<W8>)
{
  *a3 = a5;
  *a4 = *(*(*(a2 + 8) + 16 * *(*(a1 + 200) + 300) + 8) + *(*(a1 + 200) + 304));
  return 1;
}

void *OUTLINED_FUNCTION_9_47(size_t a1)
{
  *v1 = a1;

  return malloc_type_calloc(a1, 0x10uLL, 0x1010040449DF08BuLL);
}

void OUTLINED_FUNCTION_10_47(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2 + 2 * a3;
  v4 = *(v3 + 2);
  v5 = *(v3 + 3);
}

int *OUTLINED_FUNCTION_12_44()
{

  return __error();
}

uint64_t vproj_r(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if ((*(a2 + 8 * (*(*(a1 + 192) + 9084) + a4)) & 1) == 0)
  {
    OUTLINED_FUNCTION_7_49();
    if (*(v9 + 8864))
    {
      OUTLINED_FUNCTION_2_60(v5, 1);
      OUTLINED_FUNCTION_2_60(v5, 0);
      v8 = *(*(v5 + 192) + 9084) + v6;
    }

    v10 = *(v7 + 8 * v8) & 0xFFFFFFFFFFFFFFFCLL;
    if (!v10 || (v11 = *(v7 + 8 * v8) & 0xFFFFFFFFFFFFFFFCLL, (*v10 & 2) == 0))
    {
      v11 = *(v10 + 8) & 0xFFFFFFFFFFFFFFFCLL;
    }

    v12 = OUTLINED_FUNCTION_3_55();
    project_rl(v12, v13, v7, v14, v6);
    if (NONSEQ(v4) && *(*(v5 + 192) + 8868))
    {
      v15 = OUTLINED_FUNCTION_3_55();
      DELSPINE(v15, v16);
      v17 = OUTLINED_FUNCTION_3_55();
      INSSPINEL(v17, v18, v11);
    }
  }

  return 1;
}

unint64_t vgetsc(uint64_t a1, int a2, int a3, uint64_t a4, unsigned int a5)
{
  v6 = a4;
  if (a3)
  {
    if (*(*(a1 + 192) + 8868))
    {
      if (!NONSEQ(a4))
      {
        v9 = *(a1 + 192);
        if (!*(*(v9 + 9072) + a5))
        {
          if (!a2)
          {
            for (i = *(v9 + 9084); ; v6 = *(v6 + 8 * i - 16) & 0xFFFFFFFFFFFFFFFCLL)
            {
              if (*(v6 + 8 * (i + a5)))
              {
                if (!NONSEQ(v6))
                {
                  return v6;
                }

                OUTLINED_FUNCTION_9_48();
              }
            }
          }

          while (1)
          {
            if (*(v6 + 8 * (*(v9 + 9084) + a5)))
            {
              if (!NONSEQ(v6))
              {
                return v6;
              }

              v9 = *(a1 + 192);
            }

            v6 = *(v6 + 8) & 0xFFFFFFFFFFFFFFFCLL;
          }
        }
      }
    }

    v10 = 0;
    v11 = 1;
    v12 = v6;
    v13 = v6;
LABEL_6:
    if (v11 >= 1 && v6)
    {
      while (1)
      {
        v14 = v6;
        OUTLINED_FUNCTION_9_48();
        if ((*(v6 + 8 * (v15 + a5)) & 1) == 0)
        {
          break;
        }

        v6 = *(v6 + 8 * v15 - 8) & 0xFFFFFFFFFFFFFFFCLL;
        v10 = v14;
        if (!v6)
        {
          goto LABEL_29;
        }
      }

      for (j = 0; ; ++j)
      {
        v17 = *(a1 + 288);
        OUTLINED_FUNCTION_9_48();
        if (j >= v19)
        {
          v24 = v14 + 8 * v18;
          v25 = *(v24 - 8);
          v6 = v25 & 0xFFFFFFFFFFFFFFFCLL;
          *(v24 - 8) = v25 & 3;
          if (v10)
          {
            OUTLINED_FUNCTION_5_51();
            *(v10 + 8 * v26 - 8) = *(v10 + 8 * v26 - 8) & 3 | v6;
          }

          else
          {
            v13 = v25 & 0xFFFFFFFFFFFFFFFCLL;
          }

          --v11;
          goto LABEL_6;
        }

        if ((*(v14 + 8 * (j + v18)) & 1) == 0)
        {
          goto LABEL_23;
        }

        if (a2)
        {
          if (!VLSYNC(v14, j))
          {
            goto LABEL_23;
          }
        }

        else if (!VRSYNC(a1, v14, j))
        {
          goto LABEL_23;
        }

        OUTLINED_FUNCTION_5_51();
        v22 = v21 - 1;
        if (*(v20 + 8 * v22) <= 3uLL && v20 != v12)
        {
          *(v12 + 8 * v22) = *(v12 + 8 * v22) & 3 | v20;
          ++v11;
          goto LABEL_24;
        }

LABEL_23:
        v20 = v12;
LABEL_24:
        v12 = v20;
      }
    }

LABEL_29:
    v6 = 0;
    v27 = *(*(a1 + 200) + 8 * (a2 != 0));
LABEL_30:
    while (1)
    {
      v28 = v13;
      if (v11 < 2)
      {
        break;
      }

      while (v28)
      {
        v29 = v28;
        OUTLINED_FUNCTION_5_51();
        v28 = *(v28 + 8 * v30 - 8) & 0xFFFFFFFFFFFFFFFCLL;
        v31 = *(v29 + 16);
        if ((v31 & 1) == 0)
        {
          v32 = v31 & 0xFFFFFFFFFFFFFFFCLL;
          if (v32)
          {
            v33 = v32;
          }

          else
          {
            v33 = v29;
          }

          if (a2)
          {
            v34 = VRSYNC(a1, v33, a5);
          }

          else
          {
            v34 = VLSYNC(v33, a5);
          }

          if (v34 == v27)
          {
            v11 = 1;
            v6 = v29;
            goto LABEL_30;
          }

          OUTLINED_FUNCTION_5_51();
          if (*(v35 + 8 * v36 - 8) > 3uLL || v35 == v12)
          {
            *(v29 + 16) |= 1uLL;
            --v11;
          }

          else
          {
            *(v29 + 16) = *(v29 + 16) & 3 | v35;
          }
        }
      }
    }

    while (v13)
    {
      if (!v6)
      {
        if (*(v13 + 16))
        {
          v6 = 0;
        }

        else
        {
          v6 = v13;
        }
      }

      OUTLINED_FUNCTION_5_51();
      *(v13 + 8 * v38 - 8) &= 3uLL;
      *(v13 + 16) &= 2uLL;
      OUTLINED_FUNCTION_5_51();
      v40 = v13 + 8 * v39;
      v13 = v41 & 0xFFFFFFFFFFFFFFFCLL;
      *(v40 - 8) &= ~1uLL;
    }
  }

  else
  {
    if (a2)
    {
      v42 = (a4 + 8 * a5 + 24);
    }

    else
    {
      OUTLINED_FUNCTION_9_48();
      v42 = (v6 + 8 * (v43 + a5));
    }

    return *v42 & 0xFFFFFFFFFFFFFFFCLL;
  }

  return v6;
}

void project_rl(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, unsigned int a5)
{
  v10 = *(*(a1 + 192) + 9084) + a5;
  *(a2 + 8 * v10) |= 1uLL;
  CLRONESTM(a2);
  if (ALLNSQ(a2) && !*(*(*(a1 + 192) + 9072) + a5))
  {
    CLRALLNSQ(a2);
  }

  if (a3 != a4)
  {
    *(a2 + 8 * (a5 + 3)) = *(a2 + 8 * (a5 + 3)) & 3 | a3;
    v11 = *(*(a1 + 192) + 9084) + a5;
    *(a2 + 8 * v11) = *(a2 + 8 * v11) & 3 | a4;
    if (a3 && (*a3 & 2) != 0)
    {
      v12 = *(*(a1 + 192) + 9084) + a5;
      *(a3 + 8 * v12) = *(a3 + 8 * v12) & 3 | a2;
      if (!a4)
      {
LABEL_11:
        *a4 = a2;
        return;
      }
    }

    else
    {
      *(a3 + 8) = a2;
      if (!a4)
      {
        goto LABEL_11;
      }
    }

    if ((*a4 & 2) == 0)
    {
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_8_48(a5 + 3);
  }
}

uint64_t vproj_l(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (*(a2 + 8 * (*(*(a1 + 192) + 9084) + a4)))
  {
    return 1;
  }

  OUTLINED_FUNCTION_7_49();
  if (*(v8 + 8864))
  {
    OUTLINED_FUNCTION_2_60(v5, 1);
    if ((*(v4 + 8 * (*(*(v5 + 192) + 9084) + v6)) & 1) == 0)
    {
      OUTLINED_FUNCTION_2_60(v5, 0);
    }
  }

  v9 = (v7[v6 + 3] & 0xFFFFFFFFFFFFFFFCLL);
  if (v9)
  {
    v10 = *v9;
    v11 = v7[v6 + 3] & 0xFFFFFFFFFFFFFFFCLL;
    if ((*v9 & 2) != 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v10 = MEMORY[0];
  }

  v11 = v10 & 0xFFFFFFFFFFFFFFFCLL;
LABEL_10:
  v12 = OUTLINED_FUNCTION_3_55();
  project_rl(v12, v13, v14, v7, v6);
  if (NONSEQ(v4) && *(*(v5 + 192) + 8868))
  {
    v15 = OUTLINED_FUNCTION_3_55();
    DELSPINE(v15, v16);
    v17 = OUTLINED_FUNCTION_3_55();
    INSSPINER(v17, v18, v11);
  }

  return 1;
}

uint64_t vctxtinit(uint64_t a1)
{
  if (*(a1 + 288))
  {
    *(*(a1 + 200) + 352) = malloc_type_malloc(8 * *(a1 + 288), 0x80040B8603338uLL);
    *(*(a1 + 200) + 360) = OUTLINED_FUNCTION_6_50();
    *(*(a1 + 200) + 368) = OUTLINED_FUNCTION_6_50();
    *(*(a1 + 200) + 376) = OUTLINED_FUNCTION_6_50();
    *(*(a1 + 200) + 384) = malloc_type_malloc(*(a1 + 288), 0x100004077774924uLL);
    v2 = malloc_type_malloc(*(a1 + 288), 0x100004077774924uLL);
    v3 = *(a1 + 200);
    v3[49] = v2;
  }

  else
  {
    v3 = *(a1 + 200);
  }

  v4 = v3[44];
  if (v4 && v3[45] && v3[46] && v3[47] && v3[48] && v3[49])
  {
    return 1;
  }

  free(v4);
  free(*(*(a1 + 200) + 360));
  free(*(*(a1 + 200) + 368));
  free(*(*(a1 + 200) + 376));
  free(*(*(a1 + 200) + 384));
  free(*(*(a1 + 200) + 392));
  return 0;
}

uint64_t vproject(uint64_t a1, uint64_t a2, unint64_t a3, _BYTE *a4, unsigned int a5)
{
  v5 = *(*(a1 + 192) + 9084) + a5;
  if ((*(a2 + 8 * v5) & 1) == 0)
  {
    if (a3 && a4 && (*a3 & 2) != 0)
    {
      if ((*a4 & 2) != 0)
      {
        v11 = a5 + 3;
        OUTLINED_FUNCTION_1_63(v5);
        v12 = ALLNSQ(a2);
        v13 = *(a1 + 192);
        if (v12 && !*(*(v13 + 9072) + a5))
        {
          CLRALLNSQ(a2);
          v13 = *(a1 + 192);
        }

        OUTLINED_FUNCTION_4_51(v13);
        *&a4[8 * v11] = *&a4[8 * v11] & 3 | a2;
        OUTLINED_FUNCTION_0_69(*(a1 + 192));
        v14 = (a2 + 8 * v11);
LABEL_24:
        *v14 = *v14 & 3 | a3;
        if (NONSEQ(a2))
        {
          if (*(*(a1 + 192) + 8868))
          {
            DELSPINE(a1, a2);
            INSSPINEL(a1, a2, a4);
          }
        }

        return 1;
      }
    }

    else
    {
      if (a4 && (*a4 & 2) != 0)
      {
        OUTLINED_FUNCTION_1_63(v5);
        v19 = ALLNSQ(a2);
        v20 = *(a1 + 192);
        if (v19 && !*(*(v20 + 9072) + a5))
        {
          CLRALLNSQ(a2);
          v20 = *(a1 + 192);
        }

        *(a3 + 8) = a2;
        OUTLINED_FUNCTION_0_69(v20);
        OUTLINED_FUNCTION_8_48(a5 + 3);
        v14 = (a2 + 8 * v21);
        goto LABEL_24;
      }

      if (!a3)
      {
        return 0;
      }
    }

    if ((*a3 & 2) != 0)
    {
      OUTLINED_FUNCTION_1_63(v5);
      v16 = ALLNSQ(a2);
      v17 = *(a1 + 192);
      if (v16)
      {
        v18 = a5;
        if (!*(*(v17 + 9072) + a5))
        {
          CLRALLNSQ(a2);
          v17 = *(a1 + 192);
        }
      }

      else
      {
        v18 = a5;
      }

      OUTLINED_FUNCTION_4_51(v17);
      OUTLINED_FUNCTION_0_69(*(a1 + 192));
      *a4 = a2;
      v14 = (a2 + 8 * v18 + 24);
      goto LABEL_24;
    }

    return 0;
  }

  return 1;
}

uint64_t vdef_proj(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (*(a2 + 8 * (*(*(a1 + 192) + 9084) + a3)))
  {
    return 1;
  }

  v6 = vgetsc(a1, 1, 1, a2, a3);
  if (*(*(a1 + 192) + 8864))
  {
    v7 = vgetsc(a1, 0, 1, a2, a3);
  }

  else
  {
    v7 = VRSYNC(a1, v6, a3);
  }

  return vproject(a1, a2, v6, v7, a3);
}

uint64_t vsetsc(uint64_t result, int a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  if (a2)
  {
    v6 = (a4 + 8 * a5 + 24);
  }

  else
  {
    v6 = (a4 + 8 * (*(*(result + 192) + 9084) + a5));
  }

  *v6 = *v6 & 3 | a6;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_63@<X0>(uint64_t a1@<X8>)
{
  *(*(v3 + 184) + 452) = 1;
  *(v2 + 8 * a1) = v1 | 1;

  return CLRONESTM(v2);
}

unint64_t OUTLINED_FUNCTION_2_60(uint64_t a1, int a2)
{

  return vgetsc(a1, a2, 1, v2, v3);
}

void *OUTLINED_FUNCTION_6_50()
{
  v3 = 8 * *(v0 + 288);

  return malloc_type_malloc(v3, v1);
}

double delta_lib_new(uint64_t a1)
{
  v2 = malloc_type_malloc(0x930uLL, 0x10B00402BA2B37CuLL);
  *(a1 + 200) = v2;
  bzero(v2, 0x930uLL);
  v3 = *(a1 + 200);
  *(v3 + 336) = "---";
  *(v3 + 344) = 1;
  result = NAN;
  *(v3 + 656) = -1;
  *(v3 + 2232) = 0;
  return result;
}

void delta_lib_delete(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 200);
    if (v2)
    {
      bzero(v2, 0x930uLL);
      free(*(a1 + 200));
      *(a1 + 200) = 0;
    }
  }
}

uint64_t absoluteSyncNumPtr(uint64_t a1)
{
  if (a1)
  {
    return a1 & 0xFFFFFFFC;
  }

  else
  {
    return -1;
  }
}

uint64_t absoluteSyncNum(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return getDeltaHeapSegNumber(a1, a2, *(*(a1 + 200) + 248));
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void *VLSYNC(uint64_t a1, int a2)
{
  result = (*(a1 + 8 * a2 + 24) & 0xFFFFFFFFFFFFFFFCLL);
  if (result)
  {
    if ((*result & 2) == 0)
    {
      return (*result & 0xFFFFFFFFFFFFFFFCLL);
    }
  }

  return result;
}

unint64_t VRSYNC(uint64_t a1, uint64_t a2, int a3)
{
  result = *(a2 + 8 * (*(*(a1 + 192) + 9084) + a3)) & 0xFFFFFFFFFFFFFFFCLL;
  if (result)
  {
    if ((*result & 2) == 0)
    {
      return *(result + 8) & 0xFFFFFFFFFFFFFFFCLL;
    }
  }

  return result;
}

uint64_t SETFENCE(uint64_t result, uint64_t a2, int a3)
{
  v3 = *(*(result + 192) + 9084) + a3;
  *(a2 + 8 * v3) |= 2uLL;
  return result;
}

uint64_t UNSETFENCE(uint64_t result, uint64_t a2, int a3)
{
  v3 = *(*(result + 192) + 9084) + a3;
  *(a2 + 8 * v3) &= ~2uLL;
  return result;
}

uint64_t SETSPINER(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a2 + 8 * *(*(result + 192) + 9084);
  *(v3 - 16) = *(v3 - 16) & 3 | a3;
  return result;
}

void INSSPINER(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 8 * *(*(a1 + 192) + 9084) - 16;
  v4 = *(a3 + v3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a2 + v3) = v4 | *(a2 + v3) & 3;
  *(v4 + 8) = *(v4 + 8) & 3 | a2;
  v5 = a3 + 8 * *(*(a1 + 192) + 9084);
  *(v5 - 16) = *(v5 - 16) & 3 | a2;
  *(a2 + 8) = *(a2 + 8) & 3 | a3;
  OUTLINED_FUNCTION_0_70(&spine_changed);
}

void INSSPINEL(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 8) & 0xFFFFFFFFFFFFFFFCLL;
  *(a2 + 8) = v3 | *(a2 + 8) & 3;
  v4 = v3 + 8 * *(*(a1 + 192) + 9084);
  *(v4 - 16) = *(v4 - 16) & 3 | a2;
  *(a3 + 8) = *(a3 + 8) & 3 | a2;
  v5 = a2 + 8 * *(*(a1 + 192) + 9084);
  *(v5 - 16) = *(v5 - 16) & 3 | a3;
  OUTLINED_FUNCTION_0_70(&spine_changed);
}

void DELSPINE(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = 8 * *(*(a1 + 192) + 9084) - 16;
  v4 = *(a2 + v3) & 0xFFFFFFFFFFFFFFFCLL;
  *((v2 & 0xFFFFFFFFFFFFFFFCLL) + v3) = v4 | *((v2 & 0xFFFFFFFFFFFFFFFCLL) + v3) & 3;
  *(v4 + 8) = v2 & 0xFFFFFFFFFFFFFFFCLL | *(v4 + 8) & 3;
  OUTLINED_FUNCTION_0_70(&spine_changed);
}

uint64_t vinit_stm(uint64_t a1, int a2)
{
  v2 = a2;
  v4 = &vstmtbl[12 * a2];
  vdel_2pt(a1, a2, **(a1 + 200), *(*(a1 + 200) + 8));
  if (!*(v4 + 48))
  {
    return 1;
  }

  v9 = 0;
  v5 = v4[1];
  v6 = v4[2];
  LOWORD(v9) = *(v5 + 15);
  BYTE2(v9) = v5[32];
  v8 = (*v6)(v4[5]);
  result = vins_tok(a1, v2, **(a1 + 200), *(*(a1 + 200) + 8), &v8);
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t vdel_2pt(uint64_t *a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = a1[25];
  *(v8 + 136) = a2;
  *(v8 + 120) = a3;
  *(v8 + 128) = a4;
  v9 = a2;
  v10 = VRSYNC(a1, a3, a2);
  *(v8 + 104) = v10;
  *(v8 + 112) = VLSYNC(a4, v9);
  OUTLINED_FUNCTION_8_49(a1[23]);
  if (v10 == a4)
  {
    v11 = (*(a3 + 8 * (*(a1[24] + 9084) + a2)) & 0xFFFFFFFFFFFFFFFCLL);
    if (!v11 || (*v11 & 2) == 0)
    {
      fdeldel(a1, v11, v11);
    }
  }

  else
  {
    fdel(a1, 0);
  }

  return 1;
}

uint64_t vins_tok(uint64_t *a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a1[24];
  *(a1[23] + 452) = 1;
  v12 = a4 + 8 * a2;
  if ((*(a3 + 8 * (*(v10 + 9084) + a2)) & 0xFFFFFFFFFFFFFFFCLL) != a4 || (*(v12 + 24) & 0xFFFFFFFFFFFFFFFCLL) != a3)
  {
    vdel_2pt(a1, a2, a3, a4);
  }

  v13 = &vstmtbl[12 * a2];
  result = alloc_tok(a1, v13);
  if (result)
  {
    v15 = *(a1[24] + 9084) + a2;
    *(a3 + 8 * v15) = *(a3 + 8 * v15) & 3 | result;
    *(v12 + 24) = *(v12 + 24) & 3 | result;
    *result = a3;
    *(result + 8) = a4;
    if (*(a5 + 8) < 0)
    {
      vinitflds(result, a2, (result + 16), *a5);
    }

    else
    {
      memcpy((result + 16), *a5, *(v13 + 17));
    }

    result = 1;
    v16 = a1[24];
    *(a1[23] + 452) = 1;
    *(v16 + 9080) = 0;
  }

  return result;
}

uint64_t vmergable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 1;
  if (a2 != a3 && *(*(a1 + 192) + 8864))
  {
    v5 = *(a1 + 200);
    v6 = *v5;
    v7 = v5[1];
    if (v6 == a2 && v7 == a3)
    {
      return OUTLINED_FUNCTION_2_61();
    }

    else
    {
      return v6 != a3 || v7 != a2;
    }
  }

  return result;
}

uint64_t vmerge(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 1;
  if (a2 != a3)
  {
    v5 = a3;
    *(*(a1 + 184) + 452) = 1;
    v6 = *(a1 + 200);
    if (*v6 == a3 || v6[1] == a3 || *(*(a1 + 192) + 8868) && (*(a2 + 16) & 2) != 0)
    {
      v7 = a3;
      v5 = a2;
    }

    else
    {
      v7 = a2;
    }

    v8 = 0;
    v9 = *(a1 + 288);
    while (1)
    {
      if (v8 >= v9)
      {
        v11 = 0;
        goto LABEL_15;
      }

      v10 = *(*(a1 + 192) + 9084) + v8;
      if (*(v7 + 8 * v10) & 1) != 0 && (*(v5 + 8 * v10))
      {
        break;
      }

      ++v8;
    }

    v11 = v7 == (*(v5 + 8 * v8 + 24) & 0xFFFFFFFFFFFFFFFCLL);
LABEL_15:
    for (i = 0; ; i = v13 + 1)
    {
      v13 = i;
      if (i >= v9)
      {
        break;
      }

      v14 = *(*(a1 + 192) + 9084) + i;
      if (*(v5 + 8 * v14))
      {
        if ((*(v7 + 8 * v14) & 1) == 0 && v11)
        {
          v15 = OUTLINED_FUNCTION_7_50();
          result = vproj_l(v15, v16, v17, v18);
          if (!result)
          {
            return result;
          }

          v19 = OUTLINED_FUNCTION_7_50();
          result = vproj_r(v19, v20, v21, v22);
          if (!result)
          {
            return result;
          }
        }

        vdel_1pt(a1, v13, v5);
        v9 = *(a1 + 288);
      }
    }

    return 1;
  }

  return result;
}

uint64_t vdel_1pt(uint64_t a1, unsigned int a2, uint64_t a3)
{
  OUTLINED_FUNCTION_8_49(*(a1 + 184));
  v7 = *(v6 + 200);
  *(v7 + 136) = v8;
  *(v7 + 104) = v9;
  *(v7 + 112) = v9;
  v10 = v8;
  *(v7 + 120) = VLSYNC(v9, v8);
  *(v7 + 128) = VRSYNC(a1, a3, v10);
  v11 = *(a3 + 8 * (*(*(a1 + 192) + 9084) + a2));
  if (v11)
  {
    v23 = 0;
    v21 = 0;
    v12 = (*(a3 + 8 * (a2 + 3)) & 0xFFFFFFFFFFFFFFFCLL);
    if (!v12 || (*v12 & 2) == 0)
    {
      v13 = v11 & 0xFFFFFFFFFFFFFFFCLL;
      if ((v11 & 0xFFFFFFFFFFFFFFFCLL) == 0 || (*v13 & 2) == 0)
      {
        v14 = &vstmtbl[12 * a2];
        LOWORD(v21) = *(vstmtbl[12 * a2 + 1] + 15);
        LOWORD(v23) = v21;
        v15 = v14[2];
        BYTE2(v21) = v14[1][32];
        BYTE2(v23) = BYTE2(v21);
        __dst = (*v15)((v12 + 16));
        v20 = (*v14[2])(v13 + 16);
        if (*(v14 + 86))
        {
          vadd(a1, &v20, &__dst);
          vinitflds(v16, a2, __dst, v20);
          v17 = *(a1 + 192);
          *(*(a1 + 184) + 452) = 1;
          v18 = *(v13 + 8) & 0xFFFFFFFFFFFFFFFCLL;
          *(a3 + 8 * (*(v17 + 9084) + a2)) = v18 | *(a3 + 8 * (*(v17 + 9084) + a2)) & 3;
          *(v18 + 8 * (a2 + 3)) = *(v18 + 8 * (a2 + 3)) & 3 | a3;
          cacheDeletedDeltaObject(a1, v13);
        }
      }
    }

    fdel(a1, 1);
  }

  return 1;
}

uint64_t vscanadv(void *a1, int a2, int a3)
{
  i = 0;
  v4 = a1[24];
  v5 = *(v4 + 8080);
  v6 = *(v4 + 8088);
  if (a3)
  {
    v7 = *(v4 + 8121);
    if (*(v4 + 8121))
    {
      if (*(v4 + 8090))
      {
        i = 0;
      }

      else
      {
        for (i = 0; i < v7; ++i)
        {
          v11 = *(v4 + 9084);
          v12 = *(a1[31] + i);
          if (*(v5 + 8 * (v11 + v12)))
          {
            return OUTLINED_FUNCTION_2_61();
          }

          v13 = *(v5 + 8 * (v11 + v12));
          v14 = a1[35];
          if ((v13 & 2) != 0 && v6 != v12 && !*(v14 + i))
          {
            return OUTLINED_FUNCTION_2_61();
          }

          *(v14 + i) = 0;
          v4 = a1[24];
          v7 = *(v4 + 8121);
        }
      }
    }
  }

  if (!v5)
  {
    return OUTLINED_FUNCTION_2_61();
  }

  v8 = (*(v4 + 8089) ? v5 + 8 * (*(v4 + 9084) + v6) : v5 + 8 * v6 + 24);
  v9 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
  if (!v9)
  {
    return OUTLINED_FUNCTION_2_61();
  }

  if ((*v9 & 2) != 0)
  {
    goto LABEL_13;
  }

  if (!a2)
  {
    return OUTLINED_FUNCTION_2_61();
  }

  v9 = (*&v9[8 * (*(v4 + 8089) != 0)] & 0xFFFFFFFFFFFFFFFCLL);
LABEL_13:
  *(v4 + 8080) = v9;
  *(v4 + 8090) = 0;
  while (i < *(v4 + 8121))
  {
    *(a1[35] + i++) = 0;
    v4 = a1[24];
  }

  return OUTLINED_FUNCTION_4_52();
}

uint64_t vscanadvUptoTokenOrMarker(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_10_48(a1);
  do
  {
    if (v4)
    {
      i = 0;
      if (v3)
      {
        v10 = *(v8 + 8121);
        if (v10)
        {
          if (*(v8 + 8090))
          {
            i = 0;
          }

          else
          {
            for (i = 0; i < v10; ++i)
            {
              v12 = *(v8 + 9084);
              v13 = *(v1[31] + i);
              if (*&v4[8 * v12 + 8 * v13])
              {
                return OUTLINED_FUNCTION_2_61();
              }

              v14 = *&v4[8 * v12 + 8 * v13];
              v15 = v1[35];
              if ((v14 & 2) != 0 && v5 != v13 && !*(v15 + i))
              {
                return OUTLINED_FUNCTION_2_61();
              }

              *(v15 + i) = 0;
              v8 = v1[24];
              v10 = *(v8 + v7);
            }
          }
        }
      }

      v11 = v6;
      if (*(v8 + 8089))
      {
        v11 = *(v8 + 9084) + v5;
      }

      v4 = (*&v4[8 * v11] & 0xFFFFFFFFFFFFFFFCLL);
      if (v4)
      {
        goto LABEL_10;
      }
    }

    return OUTLINED_FUNCTION_2_61();
LABEL_10:
    if ((*v4 & 2) == 0)
    {
      break;
    }

    *(v8 + 8080) = v4;
    *(v8 + 8090) = 0;
    while (i < *(v8 + v7))
    {
      *(v1[35] + i++) = 0;
      v8 = v1[24];
    }
  }

  while (v4 != v2);
  return OUTLINED_FUNCTION_4_52();
}

uint64_t vscanadvUptoToken(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_10_48(a1);
  while (1)
  {
    if (!v3)
    {
      return OUTLINED_FUNCTION_2_61();
    }

    i = 0;
    if (v2)
    {
      v9 = *(v7 + 8121);
      if (v9)
      {
        if (*(v7 + 8090))
        {
          i = 0;
        }

        else
        {
          for (i = 0; i < v9; ++i)
          {
            v11 = *(v7 + 9084);
            v12 = *(v1[31] + i);
            if (*&v3[8 * v11 + 8 * v12])
            {
              return OUTLINED_FUNCTION_2_61();
            }

            v13 = *&v3[8 * v11 + 8 * v12];
            v14 = v1[35];
            if ((v13 & 2) != 0 && v4 != v12 && !*(v14 + i))
            {
              return OUTLINED_FUNCTION_2_61();
            }

            *(v14 + i) = 0;
            v7 = v1[24];
            v9 = *(v7 + v6);
          }
        }
      }
    }

    v10 = v5;
    if (*(v7 + 8089))
    {
      v10 = *(v7 + 9084) + v4;
    }

    v3 = (*&v3[8 * v10] & 0xFFFFFFFFFFFFFFFCLL);
    if (!v3)
    {
      return OUTLINED_FUNCTION_2_61();
    }

    if ((*v3 & 2) == 0)
    {
      break;
    }

    *(v7 + 8080) = v3;
    *(v7 + 8090) = 0;
    while (i < *(v7 + v6))
    {
      *(v1[35] + i++) = 0;
      v7 = v1[24];
    }
  }

  return OUTLINED_FUNCTION_4_52();
}

uint64_t vscanadvOverToken(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_10_48(a1);
  while (v3)
  {
    i = 0;
    if (v2)
    {
      v9 = *(v7 + 8121);
      if (v9)
      {
        if (*(v7 + 8090))
        {
          i = 0;
        }

        else
        {
          for (i = 0; i < v9; ++i)
          {
            v11 = *(v7 + 9084);
            v12 = *(v1[31] + i);
            if (*&v3[8 * v11 + 8 * v12])
            {
              return OUTLINED_FUNCTION_2_61();
            }

            v13 = *&v3[8 * v11 + 8 * v12];
            v14 = v1[35];
            if ((v13 & 2) != 0 && v4 != v12 && !*(v14 + i))
            {
              return OUTLINED_FUNCTION_2_61();
            }

            *(v14 + i) = 0;
            v7 = v1[24];
            v9 = *(v7 + v6);
          }
        }
      }
    }

    v10 = v5;
    if (*(v7 + 8089))
    {
      v10 = *(v7 + 9084) + v4;
    }

    v3 = (*&v3[8 * v10] & 0xFFFFFFFFFFFFFFFCLL);
    if (!v3)
    {
      break;
    }

    *(v7 + 8080) = v3;
    *(v7 + 8090) = 0;
    while (i < *(v7 + 8121))
    {
      *(v1[35] + i++) = 0;
      v7 = v1[24];
    }

    if ((*v3 & 2) == 0)
    {
      *(v7 + 8080) = *&v3[8 * (*(v7 + 8089) != 0)] & 0xFFFFFFFFFFFFFFFCLL;
      return OUTLINED_FUNCTION_4_52();
    }
  }

  return OUTLINED_FUNCTION_2_61();
}

_BYTE *vmovel(_BYTE *a1, int a2)
{
  do
  {
    v2 = a1;
    a1 = (*&a1[8 * a2 + 24] & 0xFFFFFFFFFFFFFFFCLL);
  }

  while (a1 && (*a1 & 2) != 0);
  return v2;
}

_BYTE *vmover(uint64_t a1, _BYTE *a2, int a3)
{
  v3 = *(*(a1 + 192) + 9084) + a3;
  do
  {
    result = a2;
    a2 = (*&a2[8 * v3] & 0xFFFFFFFFFFFFFFFCLL);
  }

  while (a2 && (*a2 & 2) != 0);
  return result;
}

uint64_t vmark(uint64_t *a1, unsigned int a2, unsigned __int8 a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = a3;
  v11 = a1[25];
  *(v11 + 96) = -1;
  *(v11 + 88) = &v16;
  *(v11 + 98) = 0;
  v12 = &vstmtbl[12 * a2];
LABEL_2:
  v13 = *(v11 + 8);
  while (a4 != a5 && a4 != v13)
  {
    a4 = *(a4 + 8 * (*(a1[24] + 9084) + a2)) & 0xFFFFFFFFFFFFFFFCLL;
    if (!a4 || (*a4 & 2) == 0)
    {
      (*&v12[3][8 * v16])(a4 + 16, a6);
      a4 = *(a4 + 8) & 0xFFFFFFFFFFFFFFFCLL;
      v11 = a1[25];
      goto LABEL_2;
    }
  }

  OUTLINED_FUNCTION_8_49(a1[23]);
  return 1;
}

uint64_t vsplit_time(uint64_t *a1, unsigned int a2, unint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v28 = 0;
  v29 = 0;
  if ((a4 & 0x8000000000000000) == 0)
  {
    v8 = (*(a3 + 8 * (*(a1[24] + 9084) + a2)) & 0xFFFFFFFFFFFFFFFCLL);
    if (v8 && (*v8 & 2) != 0)
    {
      v9 = 0;
    }

    else
    {
      v9 = *(a3 + 8 * (*(a1[24] + 9084) + a2)) & 0xFFFFFFFFFFFFFFFCLL;
    }

    v11 = vins_sync(a1, a2, a3, v8);
    v12 = v5;
    v5 = v11;
    if (v11)
    {
      goto LABEL_10;
    }

    return 0;
  }

  v10 = (*(a3 + 8 * a2 + 24) & 0xFFFFFFFFFFFFFFFCLL);
  if (v10 && (*v10 & 2) != 0)
  {
    v9 = 0;
  }

  else
  {
    v9 = v10;
  }

  v11 = vins_sync(a1, a2, v10, v5);
  v12 = v11;
  if (!v11)
  {
    return 0;
  }

LABEL_10:
  v27 = 0;
  v25 = 0;
  v26 = 0;
  if (!v9)
  {
    goto LABEL_16;
  }

  v13 = &vstmtbl[12 * a2];
  v14 = *(v13[1] + 15);
  if (v14 == 65532)
  {
    v19 = *(*v13[2])(v9 + 16);
    OUTLINED_FUNCTION_9_49();
    v27 = v20;
    v17 = (v9 + 16);
    v18 = &v27;
  }

  else
  {
    if (v14 != 65533)
    {
      goto LABEL_16;
    }

    v15 = *(*v13[2])(v9 + 16);
    OUTLINED_FUNCTION_9_49();
    v17 = (v9 + 16);
    v18 = &v29;
  }

  vinitflds(v16, a2, v17, v18);
LABEL_16:
  if (v4 >= 0)
  {
    v21 = v4;
  }

  else
  {
    v21 = -v4;
  }

  v28 = v21;
  v22 = *(vstmtbl[12 * a2 + 1] + 15);
  if (v22 == 65532)
  {
    LOWORD(v26) = -4;
    v27 = v21;
    v23 = &v27;
  }

  else
  {
    if (v22 != 65533)
    {
      goto LABEL_24;
    }

    LOWORD(v26) = -3;
    v23 = &v28;
  }

  v25 = v23;
  BYTE2(v26) = 0;
LABEL_24:
  if (vins_tok(a1, a2, v12, v5, &v25))
  {
    return v11;
  }

  else
  {
    return 0;
  }
}

uint64_t vins_sync(uint64_t a1, unsigned int a2, unint64_t a3, unint64_t a4)
{
  v8 = alloc_sync(a1);
  if (v8)
  {
    OUTLINED_FUNCTION_5_52();
    *(v8 + 8 * v9) |= 1uLL;
    if (*(*(*(a1 + 192) + 9072) + a2))
    {
      *(v8 + 8) |= 2uLL;
    }

    OUTLINED_FUNCTION_8_49(*(a1 + 184));
    if (a3 && (v10 = *a3, (*a3 & 2) != 0))
    {
      OUTLINED_FUNCTION_5_52();
      *(a3 + 8 * v11) = *(a3 + 8 * v11) & 3 | v8;
      v12 = a3;
    }

    else
    {
      v12 = v10 & 0xFFFFFFFFFFFFFFFCLL;
      *(a3 + 8) = v8;
    }

    *(v8 + 8 * (a2 + 3)) = *(v8 + 8 * (a2 + 3)) & 3 | a3;
    if (a4 && (*a4 & 2) != 0)
    {
      *(a4 + 8 * (a2 + 3)) = *(a4 + 8 * (a2 + 3)) & 3 | v8;
      v13 = a4;
    }

    else
    {
      v13 = *(a4 + 8) & 0xFFFFFFFFFFFFFFFCLL;
      *a4 = v8;
    }

    OUTLINED_FUNCTION_5_52();
    *(v8 + 8 * v14) = *(v8 + 8 * v14) & 3 | a4;
    v15 = *(a1 + 192);
    if (*(v15 + 8868))
    {
      v16 = *(v15 + 9084) - 2;
      v17 = *(v12 + 8 * v16);
      v18 = v17 & 0xFFFFFFFFFFFFFFFCLL;
      if (v13 != (v17 & 0xFFFFFFFFFFFFFFFCLL))
      {
        if (*(*(v15 + 9072) + a2))
        {
LABEL_15:
          *(v8 + 16) |= 2uLL;
          if (*(*(a1 + 192) + 8864) && (*(v8 + 8) & 1) == 0 && !vchkseqbad(a1, v8))
          {
            return 0;
          }
        }

        else
        {
          while (v18 != v13)
          {
            if ((*(v18 + 8) & 3) == 0)
            {
              goto LABEL_15;
            }

            v18 = *(v18 + 8 * v16) & 0xFFFFFFFFFFFFFFFCLL;
          }

          while (1)
          {
            v20 = v17 & 0xFFFFFFFFFFFFFFFCLL;
            if (v13 == (v17 & 0xFFFFFFFFFFFFFFFCLL))
            {
              break;
            }

            *(v20 + 16) |= 2uLL;
            v21 = *(a1 + 192);
            if (*(v21 + 8864) && (*(v20 + 8) & 1) == 0)
            {
              if (!vchkseqbad(a1, v20))
              {
                return 0;
              }

              v21 = *(a1 + 192);
            }

            v17 = *(v20 + 8 * *(v21 + 9084) - 16);
          }
        }
      }

      INSSPINER(a1, v8, v12);
      v15 = *(a1 + 192);
    }

    *(v15 + 9080) = 0;
  }

  return v8;
}

void *vinitflds(int a1, unsigned int a2, void *__dst, unsigned __int8 *a4)
{
  v6 = &vstmtbl[12 * a2];
  memmove(__dst, v6[5], *(v6 + 17));
  result = (*v6[3])(__dst, a4);
  v8 = v6[4];
  if (v8)
  {
    v9 = *(v6[1] + 15);
    if (v9 == 0xFFFF)
    {
      v10 = *a4;
    }

    else
    {
      if (v9 != 65534)
      {
        return result;
      }

      v10 = *a4;
    }

    v11 = *(v6 + 19);
    v12 = &v8[*(v6 + 18) * v10];

    return memmove(__dst, v12, v11);
  }

  return result;
}

uint64_t vchkseqbad(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 8) & 3) != 0)
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    while (*(a1 + 288) != v2)
    {
      v5 = *(a1 + 192);
      if (*(a2 + 8 * (v2 + *(v5 + 9084))))
      {
        ++v3;
        if (*(*(v5 + 9072) + v2))
        {
          ++v4;
        }
      }

      ++v2;
    }

    if (v3 < 2 || v4 >= v3)
    {
      return 1;
    }
  }

  vseqbad();
  return 0;
}

uint64_t vnsqflags(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = 0;
  v4 = *(*(result + 200) + 160);
  while (1)
  {
    v6 = *v4++;
    v5 = v6;
    if (v6 < 0)
    {
      break;
    }

    v7 = *(a2 + 8 * (*(*(result + 192) + 9084) + v5)) & 1;
    v2 += v7;
    if (v7)
    {
      v3 = 1;
    }
  }

  v8 = *(result + 288);
LABEL_6:
  v9 = v8;
  while (1)
  {
    v8 = v9 - 1;
    if (v9 < 1)
    {
      break;
    }

    v10 = *(result + 192);
    v11 = *(a2 - 8 + 8 * *(v10 + 9084) + 8 * v9--);
    if (v11)
    {
      if (!*(*(v10 + 9072) + v8))
      {
        ++v2;
        v3 = 0;
      }

      if (v2 >= 2 && v3 == 0)
      {
        v3 = 0;
        goto LABEL_19;
      }

      goto LABEL_6;
    }
  }

  if (v2 == 1)
  {
    v13 = *(a2 + 8) | 1;
    goto LABEL_20;
  }

LABEL_19:
  v13 = *(a2 + 8) & 0xFFFFFFFFFFFFFFFELL;
LABEL_20:
  *(a2 + 8) = v13 & 0xFFFFFFFFFFFFFFFDLL | (2 * (v3 != 0));
  return result;
}

uint64_t visnonseq(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v8 = *(a1 + 288);
  while (1)
  {
    if (v7 >= v8)
    {
      return 0;
    }

    if (a2 != v7)
    {
      v10 = v7 + *(*(a1 + 192) + 9084);
      if ((*(a3 + 8 * v10) & 1) != 0 && (*(a4 + 8 * v10) & 1) != 0 && VRSYNC(a1, a3, v7) != a4)
      {
        break;
      }
    }

    ++v7;
  }

  return 1;
}

uint64_t fdeldel(uint64_t result, uint64_t *a2, uint64_t a3)
{
  v4 = a2;
  v5 = result;
  *(*(result + 184) + 452) = 1;
  if (a2)
  {
    v6 = *a2;
    if ((*a2 & 2) != 0)
    {
      v6 = a2[*(*(result + 200) + 136) + 3];
    }

    v7 = v6 & 0xFFFFFFFFFFFFFFFCLL;
  }

  else
  {
    v7 = 0;
  }

  do
  {
    if (!v4)
    {
      return result;
    }

    if ((*v4 & 2) == 0)
    {
      v8 = *(v4 + 8);
LABEL_35:
      result = cacheDeletedDeltaObject(v5, v4);
      goto LABEL_36;
    }

    v9 = *(*(v5 + 192) + 9084) + *(*(v5 + 200) + 136);
    v8 = *(v4 + 8 * v9);
    v10 = *(v4 + 8);
    *(v4 + 8 * v9) = v8 & 0xFFFFFFFFFFFFFFFELL;
    v11 = v4 + 8 * *(*(v5 + 200) + 136);
    *(v11 + 24) &= 3uLL;
    LODWORD(v11) = *(*(v5 + 192) + 9084) + *(*(v5 + 200) + 136);
    *(v4 + 8 * v11) &= 3uLL;
    if (v10)
    {
      if (*(*(v5 + 192) + 8868))
      {
        DELSPINE(v5, v4);
      }

      goto LABEL_35;
    }

    result = vnsqflags(v5, v4);
    v12 = *(v5 + 192);
    if (!*(v12 + 8868))
    {
      goto LABEL_36;
    }

    v13 = *(v5 + 200);
    v14 = v4;
    do
    {
      v14 = *(v14 + 8) & 0xFFFFFFFFFFFFFFFCLL;
    }

    while ((*(v14 + 16) & 2) != 0);
    v15 = *(v12 + 9084);
    v16 = v4;
    do
    {
      v16 = *(v16 + 8 * v15 - 16) & 0xFFFFFFFFFFFFFFFCLL;
    }

    while ((*(v16 + 16) & 2) != 0);
    LODWORD(v17) = 0;
    v18 = 0;
    v19 = 0;
    v20 = *(v5 + 288);
    v21 = v16 + 8 * v15 - 8;
    v22 = v14 + 8 * v15 - 8;
LABEL_16:
    v23 = v17;
    for (i = v20; i > *(v13 + 136); --i)
    {
      if ((*(v4 + 8 * v15 - 8 + 8 * i) & 1) == 0)
      {
        v20 = i - 1;
        LODWORD(v17) = 1;
        if (!v23)
        {
          LODWORD(v17) = 0;
          if (*(v22 + 8 * i))
          {
            v17 = *(v21 + 8 * i) & 1;
          }
        }

        goto LABEL_16;
      }

      if (*(v22 + 8 * i))
      {
        if (v19 || (*(v21 + 8 * i) & 1) != 0)
        {
          goto LABEL_36;
        }

        v19 = 0;
        ++v18;
      }

      else
      {
        if (v19)
        {
          goto LABEL_21;
        }

        if (*(v21 + 8 * i))
        {
          if (v18)
          {
            goto LABEL_36;
          }

LABEL_21:
          v19 = 1;
          continue;
        }

        v19 = 0;
      }
    }

    v26 = 8 * v15;
    v27 = *(v13 + 136);
    if (*(v13 + 136))
    {
      do
      {
        if (*(v4 + v26))
        {
          if (*(v14 + v26))
          {
            if (v19 || (*(v16 + v26) & 1) != 0)
            {
              goto LABEL_36;
            }

            v19 = 0;
            ++v18;
          }

          else if (v19)
          {
            v19 = 1;
          }

          else
          {
            if (v18)
            {
              goto LABEL_36;
            }

            v19 = *(v16 + v26) & 1;
          }
        }

        else if (v23)
        {
          v23 = 1;
        }

        else if (*(v14 + v26))
        {
          v23 = *(v16 + v26) & 1;
        }

        else
        {
          v23 = 0;
        }

        v26 += 8;
        --v27;
      }

      while (v27);
    }

    if (!v19 || !v18)
    {
      if (v23)
      {
        *(v13 + 16) = 0;
        *(v13 + 24) = v4;
        *(v13 + 32) = v4;
        v28 = (*(v4 + 8) & 2) == 0 && (*(v4 + 8) & 1) == 0;
        *(v13 + 20) = v28;
        if (v19 | v18)
        {
          if (v19)
          {
            v29 = -1;
          }

          else
          {
            v29 = 1;
          }

          if (v19)
          {
            v30 = v14;
          }

          else
          {
            v30 = v16;
          }

          *(v13 + 48) = v30;
        }

        else
        {
          v29 = 2;
        }

        *(v13 + 40) = v29;
        goto LABEL_82;
      }

      if (v19 | v18)
      {
        v31 = v19 == 0;
        if (v19)
        {
          v32 = -1;
        }

        else
        {
          v32 = 1;
        }

        if (v19)
        {
          v33 = v14;
        }

        else
        {
          v33 = v16;
        }

        *(v13 + 16) = v32;
        v34 = v13 + 16;
        *(v34 + 8) = v33;
        if (v31)
        {
          v35 = -1;
        }

        else
        {
          v35 = 1;
        }

        *(v34 + 32) = v4;
        *(v34 + 24) = v35;
        result = seqscan(v5, v34);
        v13 = *(v5 + 200);
        v29 = *(v13 + 40);
LABEL_82:
        switch(v29)
        {
          case 0xFFu:
LABEL_85:
            result = seqscan(v5, (v13 + 40));
            v13 = *(v5 + 200);
            break;
          case 2u:
            if (*(v13 + 24) == v14 && *(v13 + 16) == 255)
            {
              *(v13 + 64) = -1;
              v44 = *(v13 + 32);
              *(v13 + 72) = v14;
              *(v13 + 80) = v44;
              *(v13 + 68) = *(v13 + 20);
            }

            else
            {
              *(v13 + 64) = -1;
              v36 = v13 + 64;
              *(v36 + 8) = v14;
              seqscan(v5, v36);
              v13 = *(v5 + 200);
            }

            *(v13 + 40) = 1;
            v37 = v13 + 40;
            *(v37 + 8) = v16;
            result = seqscan(v5, v37);
            v13 = *(v5 + 200);
            *(v13 + 48) = *(v13 + 80);
            *(v13 + 44) |= *(v13 + 68);
            break;
          case 1u:
            goto LABEL_85;
        }

        v38 = v13 + 24 * (*(v13 + 20) != 0);
        v41 = *(v38 + 16);
        v39 = v38 + 16;
        v40 = v41;
        for (j = *(v39 + 8); ; j = *v43 & 0xFFFFFFFFFFFFFFFCLL)
        {
          *(j + 16) |= 2uLL;
          if (*(*(v5 + 192) + 8864))
          {
            if ((*(j + 8) & 1) == 0)
            {
              result = vchkseqbad(v5, j);
              if (!result)
              {
                break;
              }
            }
          }

          if (j == *(v39 + 16))
          {
            break;
          }

          if (v40 < 0)
          {
            v43 = (j + 8);
          }

          else
          {
            v43 = (j + 8 * *(*(v5 + 192) + 9084) - 16);
          }
        }
      }
    }

LABEL_36:
    v25 = v8 & 0xFFFFFFFFFFFFFFFCLL;
    v31 = v4 == a3;
    v4 = v8 & 0xFFFFFFFFFFFFFFFCLL;
  }

  while (!v31);
  if (v7 && (*v7 & 2) != 0)
  {
    v45 = *(*(v5 + 192) + 9084) + *(*(v5 + 200) + 136);
    *(v7 + 8 * v45) = *(v7 + 8 * v45) & 3 | v25;
    if (v25 && (*v25 & 2) != 0)
    {
LABEL_109:
      v46 = v25 + 8 * *(*(v5 + 200) + 136);
      *(v46 + 24) = *(v46 + 24) & 3 | v7;
    }

    else
    {
      *v25 = v7;
    }
  }

  else if (v25 && (*v25 & 2) != 0)
  {
    *(v7 + 8) = v25;
    goto LABEL_109;
  }

  return result;
}

uint64_t fdel(uint64_t a1, int a2)
{
  v2 = *(a1 + 200);
  if (a2)
  {
    v3 = *(v2 + 104);
    v4 = *(v2 + 112);
  }

  else
  {
    v5 = *(v2 + 136);
    v3 = (*(*(v2 + 120) + 8 * (*(*(a1 + 192) + 9084) + v5)) & 0xFFFFFFFFFFFFFFFCLL);
    v4 = *(*(v2 + 128) + 8 * v5 + 24) & 0xFFFFFFFFFFFFFFFCLL;
  }

  return fdeldel(a1, v3, v4);
}

uint64_t vdelinit(uint64_t a1)
{
  *(*(a1 + 192) + 9072) = malloc_type_malloc(*(a1 + 288), 0x100004077774924uLL);
  v2 = malloc_type_malloc(*(a1 + 288), 0x100004077774924uLL);
  result = 0;
  v4 = *(a1 + 192);
  *(*(a1 + 200) + 160) = v2;
  if (*(v4 + 9072) && v2)
  {
    for (i = 0; i < *(a1 + 288); ++i)
    {
      *(*(*(a1 + 192) + 9072) + i) = 0;
    }

    **(*(a1 + 200) + 160) = -1;
    return 1;
  }

  return result;
}

void vdelCleanup(uint64_t a1)
{
  v2 = *(*(a1 + 200) + 160);
  if (v2)
  {
    free(v2);
    *(*(a1 + 200) + 160) = 0;
  }

  v3 = *(*(a1 + 192) + 9072);
  if (v3)
  {
    free(v3);
    *(*(a1 + 192) + 9072) = 0;
  }
}

uint64_t setnonseqIndex(uint64_t result, int a2)
{
  v2 = 0;
  v3 = *(*(result + 200) + 160);
  while (1)
  {
    v4 = *(v3 + v2);
    if (v4 == -1)
    {
      break;
    }

    ++v2;
    if (v4 == a2)
    {
      return result;
    }
  }

  *(v3 + v2) = a2;
  *(*(*(result + 200) + 160) + v2 + 1) = -1;
  return result;
}

uint64_t mapsyncs(uint64_t a1, uint64_t a2)
{
  result = absoluteSyncNum(a1, a2);
  v5 = 0;
  v6 = a2 + 8 * *(*(a1 + 192) + 9084);
  *(v6 - 24) |= 2uLL;
  v7 = *(a1 + 200);
  v8 = *(v7 + 200);
  *(v7 + 200) = v8 + 1;
  *(*(v7 + 192) + 2 * result) = v8;
  while (1)
  {
    v9 = v5;
    if (v5 >= *(a1 + 288))
    {
      break;
    }

    v10 = *(*(a1 + 192) + 9084);
    if (*(a2 + 8 * (v10 + v5)))
    {
      result = VRSYNC(a1, a2, v5);
      if (result)
      {
        if ((*(result + 8 * v10 - 24) & 2) == 0)
        {
          result = mapsyncs(a1, result);
        }
      }
    }

    v5 = v9 + 1;
  }

  return result;
}

uint64_t vredoctxt(uint64_t a1, int a2)
{
  v4 = 0;
  v5 = *(a1 + 200);
  v5[86] = 0;
  v5[56] = a2;
  v5[57] = 0;
  while (*(a1 + 288) > v4)
  {
    for (i = *(*(a1 + 200) + 8); i; i = VLSYNC(i, v4))
    {
      v7 = *(a1 + 192);
      if (*(*(a1 + 200) + 224))
      {
        v8 = i[*(v7 + 9084) - 3];
        if ((v8 & 2) != 0 || (!v8 ? (v9 = *i > 3uLL) : (v9 = 1), !v9 ? (v10 = ((*i | v8) & 1) == 0, *i) : (v10 = 0), !v10))
        {
          v11 = checkInterrupt(a1);
          v12 = *(a1 + 200);
          if (v11)
          {
            *(v12 + 224) = 0;
          }

          else if (*(v12 + 224))
          {
            *(v12 + 228) = 1;
            goto LABEL_20;
          }

          v7 = *(a1 + 192);
        }
      }

      OUTLINED_FUNCTION_6_51(v7);
      *(v14 - 24) = v13 & 0xFFFFFFFFFFFFFFFDLL;
      *i &= ~1uLL;
      OUTLINED_FUNCTION_6_51(*(a1 + 192));
      *(v16 - 24) = v15 & 0xFFFFFFFFFFFFFFFELL;
      *i &= 3uLL;
      OUTLINED_FUNCTION_6_51(*(a1 + 192));
      *(v18 - 24) = v17 & 3;
    }

    ++v4;
  }

LABEL_20:
  vclrctxt(a1);
  v23 = *(a1 + 200);
  if (a2 && !*(v23 + 228))
  {
    vf_printf(a1, *(*(a1 + 216) + 4), 1, "The delta is correct.\n", v19, v20, v21, v22, v25);
    v23 = *(a1 + 200);
  }

  *(v23 + 344) = 1;
  return 1;
}

uint64_t vclrctxt(uint64_t a1)
{
  v2 = 0;
  v3 = *(a1 + 288);
  while (v3 > v2)
  {
    for (i = *(*(a1 + 200) + 8); i; i = VLSYNC(i, v2))
    {
      for (j = 0; v3 != j; ++j)
      {
        if ((i[j + *(*(a1 + 192) + 9084)] & 1) == 0)
        {
          i[j + 3] &= 3uLL;
          v6 = j + *(*(a1 + 192) + 9084);
          i[v6] &= 3uLL;
          *(*(a1 + 200) + 228) = 1;
        }
      }
    }

    ++v2;
  }

  return 1;
}

uint64_t seqscan(uint64_t result, unsigned __int8 *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a2 + 1);
  *(a2 + 2) = v3;
  if (v2 == 1)
  {
    v4 = (v3 + 8);
  }

  else
  {
    v4 = (v3 + 8 * *(*(result + 192) + 9084) - 16);
  }

  v5 = 0;
  v6 = 0;
  v7 = *v4 & 0xFFFFFFFFFFFFFFFCLL;
  v8 = *(result + 288);
  while (v8 != v5)
  {
    if (*(v7 + 8 * (v5 + *(*(result + 192) + 9084))))
    {
      v13[v6++] = v5;
    }

    ++v5;
  }

LABEL_9:
  v9 = 0;
  do
  {
    if (v6 <= v9)
    {
      v11 = (v3 + 8);
      if ((~*(v3 + 8) & 3) != 0)
      {
        *(a2 + 1) = 1;
      }

      *(a2 + 2) = v3;
      if (v2 == 1)
      {
        v11 = (v3 + 8 * *(*(result + 192) + 9084) - 16);
      }

      v3 = *v11 & 0xFFFFFFFFFFFFFFFCLL;
      goto LABEL_9;
    }

    v10 = *(v3 + 8 * (*(*(result + 192) + 9084) + v13[v9++]));
  }

  while ((v10 & 1) == 0);
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t OUTLINED_FUNCTION_10_48(uint64_t result)
{
  v1 = *(result + 192);
  v2 = *(v1 + 8080);
  v3 = *(v1 + 8088) + 3;
  return result;
}

uint64_t varloc(uint64_t a1, __int16 a2, unsigned __int16 a3, uint64_t a4)
{
  v4 = a3 | (a2 << 8);
  if ((a2 & 0x80) != 0)
  {
    v7 = *(a1 + 192) + 8 * ((a3 | (a2 << 8)) & 0x3FFF) + 9288;
    return *v7;
  }

  v5 = *(a1 + 192);
  if (!a4 || *(v5 + 8104) == a4)
  {
    result = *(*(v5 + 8112) + 8);
    if (!result)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = vonstack(a1, a4);
  if (result)
  {
LABEL_7:
    v7 = *(result + 16) + 8 * (v4 & 0x3FFF);
    return *v7;
  }

  return result;
}

uint64_t vrd_nvar()
{
  OUTLINED_FUNCTION_14_43();
  v2 = 0;
  v3 = 0;
  v28 = *MEMORY[0x277D85DE8];
LABEL_2:
  while ((v3 & 1) == 0)
  {
    v4 = 1;
    v5 = v27;
    while (1)
    {
      v6 = v4;
      v7 = OUTLINED_FUNCTION_8_50();
      v9 = vf_getc(v7, v8);
      if (v9 == 10)
      {
        break;
      }

      if ((v9 + 1) < 2)
      {
        *v5 = 0;
        v10 = 1;
        vf_puts(v0, *(*(v0 + 216) + 5), *(v0 + 184) + 32, 1);
        *(*(v0 + 184) + 32) = 0;
        *(*(v0 + 184) + 436) = 0;
        OUTLINED_FUNCTION_8_50();
        v11 = var_rderr();
        v2 = 0;
        v3 = 0;
        if (!v11)
        {
          goto LABEL_2;
        }

        goto LABEL_27;
      }

      if (v9 == 32)
      {
        v4 = 1;
        if ((v6 & 1) == 0)
        {
          v2 = 32;
          goto LABEL_13;
        }
      }

      else
      {
        v4 = 0;
        *v5++ = v9;
      }
    }

    v2 = 10;
LABEL_13:
    *v5 = 0;
    v12 = *(v1 + 8);
    if (v12 == 65532)
    {
      if (chk_itok(v27))
      {
        **v1 = atoi(v27);
        v3 = 1;
        continue;
      }

      v13 = OUTLINED_FUNCTION_8_50();
      v20 = "%s is not an integer";
    }

    else
    {
      v3 = 1;
      if (v12 != 65533)
      {
        continue;
      }

      if (chk_itok(v27))
      {
        **v1 = atol(v27);
        v3 = 1;
        continue;
      }

      v13 = OUTLINED_FUNCTION_8_50();
      v20 = "%s is not an long integer (longint)";
    }

    readErrorReport(v13, v14, v15, v20, v16, v17, v18, v19, v27);
    OUTLINED_FUNCTION_8_50();
    v21 = var_rderr();
    v3 = 1;
    if (v21)
    {
      v10 = 1;
      goto LABEL_27;
    }
  }

  if (v2 != 10)
  {
    v22 = OUTLINED_FUNCTION_8_50();
    if (vf_getc(v22, v23) != 10)
    {
      v24 = OUTLINED_FUNCTION_8_50();
      vf_ungetc(v24);
    }
  }

  v10 = 0;
LABEL_27:
  v25 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t var_rderr()
{
  OUTLINED_FUNCTION_14_43();
  if (OUTLINED_FUNCTION_26_27(v1, v2, "cmdwin") || (v3 = 1, v4 = OUTLINED_FUNCTION_8_50(), OUTLINED_FUNCTION_26_27(v4, v5, v6)))
  {
    v7 = OUTLINED_FUNCTION_8_50();
    v9 = logicalFileInputBuffer(v7, v8);
    v10 = dynaBufMoveRel(v9, 0);
    v11 = dynaBufLength(v9);
    dynaBufMoveAbs(v9, v11 - 1);
    dynaBufDeleteChars(v9, 1uLL);
    dynaBufMoveAbs(v9, v10);
    LOBYTE(v9) = dynaBufContents(v9);
    v22 = v9 + v10 - strlen(v0);
    v12 = OUTLINED_FUNCTION_8_50();
    vf_printf(v12, v13, 1, v14, v15, v16, v17, v18, v22);
    v19 = OUTLINED_FUNCTION_8_50();
    vf_clrbuf(v19, v20);
    return 0;
  }

  return v3;
}

uint64_t chk_itok(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 != 43 && v1 != 45 && (v1 - 48) > 9)
  {
    return 0;
  }

  v2 = (a1 + 1);
  while (1)
  {
    v4 = *v2++;
    v3 = v4;
    if (!v4)
    {
      break;
    }

    if ((v3 - 48) >= 0xA)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t readErrorReport(uint64_t a1, unsigned __int8 a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *(a1 + 216);
  v12 = 4;
  if (*(v11 + 1) != a2)
  {
    v12 = 5;
  }

  v13 = *(v11 + v12);
  vf_printf(a1, v13, 0, "Error: %s: ", a5, a6, a7, a8, "DELTIO");
  return vf_printf(a1, v13, 1, a4, v14, v15, v16, v17, &a9);
}

size_t lithex(size_t result, char *a2, int a3)
{
  v4 = result;
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3 - 8;
  v6 = a2;
  while (1)
  {
    v7 = *v4;
    if (!*v4 || v6 - a2 >= v5)
    {
      break;
    }

    if ((v7 - 127) >= 0xA1u)
    {
      *v6++ = v7;
    }

    else
    {
      if ((v7 - 7) > 6)
      {
        OUTLINED_FUNCTION_25_27();
        __sprintf_chk(v13, v14, v15, "'\\x%2x'");
      }

      else
      {
        v9 = (&off_279DA81F8)[(v7 - 7)];
        OUTLINED_FUNCTION_25_27();
        __sprintf_chk(v10, v11, v12, "'\\%s'");
      }

      strcpy(v6, __src);
      result = strlen(__src);
      v6 += result;
    }

    ++v4;
  }

  *v6 = 0;
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t vrd_tvar(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  LOBYTE(v6) = 0;
  v7 = 0;
  v64 = *MEMORY[0x277D85DE8];
  v62 = 0;
  v61 = 0;
  v60 = 0;
  v59 = 0;
  v58 = 0.0;
  v8 = *(a3 + 8);
  v9 = &vstmtbl[12 * *(a3 + 8)];
  v10 = v8;
  while (1)
  {
    v11 = v5;
    if (v7)
    {
      vinitflds(a1, v8, *a3, v5);
      if (v6 != 10)
      {
        v52 = OUTLINED_FUNCTION_6_52();
        if (vf_getc(v52, v53) != 10)
        {
          v54 = OUTLINED_FUNCTION_6_52();
          vf_ungetc(v54);
        }
      }

      result = 0;
      goto LABEL_38;
    }

    v12 = gettok_0(a1, v8, a2, __s1);
    if (!v12)
    {
      break;
    }

    v6 = v12;
    if (checkInterrupt(a1))
    {
      break;
    }

    v7 = 0;
    v5 = v11;
    if (v6 != 10)
    {
      v13 = STMTYP(v10);
      v7 = 1;
      v5 = v11;
      switch(v13)
      {
        case -5:
          v19 = chk_ftok(__s1);
          if (v19)
          {
            v58 = atof(__s1);
            v7 = 1;
            v5 = &v58;
          }

          else
          {
            v49 = OUTLINED_FUNCTION_10_49(v19, v20, v21, v22, v23, v24);
            v7 = 0;
            v5 = &v58;
            if (v49)
            {
              goto LABEL_33;
            }
          }

          continue;
        case -4:
          v42 = chk_itok(__s1);
          if (v42)
          {
            v59 = atoi(__s1);
            v7 = 1;
            v5 = &v59;
          }

          else
          {
            v50 = OUTLINED_FUNCTION_10_49(v42, v43, v44, v45, v46, v47);
            v7 = 0;
            v5 = &v59;
            if (v50)
            {
              goto LABEL_33;
            }
          }

          break;
        case -3:
          v30 = chk_itok(__s1);
          if (v30)
          {
            v60 = atol(__s1);
            v7 = 1;
            v5 = &v60;
          }

          else
          {
            v48 = OUTLINED_FUNCTION_10_49(v30, v31, v32, v33, v34, v35);
            v7 = 0;
            v5 = &v60;
            if (v48)
            {
              goto LABEL_33;
            }
          }

          continue;
        case -2:
          v57 = v10;
          v36 = 0;
          v37 = v9;
          v38 = v9[1];
          v39 = *(v38 + 14);
          v40 = v39 & ~(v39 >> 31);
          while (1)
          {
            v61 = v36;
            if (v40 == v36)
            {
              break;
            }

            v13 = strcmp(__s1, *(*(v38 + 2) + 8 * v36++));
            if (!v13)
            {
              LODWORD(v40) = v36 - 1;
              break;
            }
          }

          v7 = 1;
          v5 = &v61;
          v29 = v40 == v39;
          v9 = v37;
          v10 = v57;
LABEL_20:
          if (v29)
          {
            v41 = OUTLINED_FUNCTION_10_49(v13, v14, v15, v16, v17, v18);
            v7 = 0;
            v5 = v11;
            if (v41)
            {
              goto LABEL_33;
            }
          }

          continue;
        case -1:
          v25 = 0;
          v26 = v9[1];
          v27 = *(v26 + 14);
          do
          {
            v62 = v25;
            v28 = v25;
            if (v25 >= v27)
            {
              break;
            }

            v13 = strcmp(__s1, *(*(v26 + 2) + 8 * v25));
            v25 = v28 + 1;
          }

          while (v13);
          v7 = 1;
          v5 = &v62;
          v29 = v28 == v27;
          goto LABEL_20;
        default:
          continue;
      }
    }
  }

  OUTLINED_FUNCTION_24_28();
LABEL_33:
  result = 1;
LABEL_38:
  v55 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t gettok_0(uint64_t a1, unsigned int a2, uint64_t a3, _BYTE *a4)
{
  v4 = &vstmtbl[12 * a2];
  v5 = *(v4 + 20);
  v6 = a2;
  if (STMTYP(a2) == -4 || STMTYP(v6) == -3)
  {
    v7 = 0;
  }

  else
  {
    v8 = STMTYP(v6) != -5 && v5 == 1;
    v7 = v8;
  }

  v9 = 0;
  v10 = 0;
  while (1)
  {
    v11 = OUTLINED_FUNCTION_12_45();
    v13 = vf_getc(v11, v12);
    v14 = v13;
    if (v13 == 92)
    {
      v15 = OUTLINED_FUNCTION_12_45();
      v17 = vf_getc(v15, v16);
      v18 = v17;
      if ((v17 & 0xFFFFFFF8) == 0x30)
      {
        v19 = 0;
        while ((v18 & 0xFFFFFFF8) == 0x30)
        {
          v19 = v18 + 8 * v19 - 48;
          v20 = OUTLINED_FUNCTION_12_45();
          v18 = vf_getc(v20, v21);
        }

        v26 = OUTLINED_FUNCTION_12_45();
        vf_ungetc(v26);
        LOBYTE(v18) = v19;
      }

      else
      {
        if ((v17 & 0xFFFFFFDF) == 0x58)
        {
          for (LOBYTE(v18) = 0; ; LOBYTE(v18) = v24 + 16 * v18 + v25)
          {
            v22 = OUTLINED_FUNCTION_12_45();
            v24 = vf_getc(v22, v23);
            if ((v24 - 48) >= 0xA)
            {
              if ((v24 - 97) >= 6)
              {
                if ((v24 - 65) > 5)
                {
                  v27 = OUTLINED_FUNCTION_12_45();
                  vf_ungetc(v27);
                  goto LABEL_27;
                }

                v25 = -55;
              }

              else
              {
                v25 = -87;
              }
            }

            else
            {
              v25 = -48;
            }
          }
        }

        switch(v17)
        {
          case 'n':
            LOBYTE(v18) = 10;
            break;
          case 'o':
          case 'p':
          case 'q':
          case 's':
          case 'u':
            break;
          case 'r':
            LOBYTE(v18) = 13;
            break;
          case 't':
            LOBYTE(v18) = 9;
            break;
          case 'v':
            LOBYTE(v18) = 11;
            break;
          default:
            switch(v17)
            {
              case 'a':
                LOBYTE(v18) = 7;
                break;
              case 'f':
                LOBYTE(v18) = 12;
                break;
              case 'b':
                LOBYTE(v18) = 8;
                break;
            }

            break;
        }
      }

LABEL_27:
      v14 = v18;
    }

    if (v13 != 92 && v14 == 10)
    {
      break;
    }

    if (v13 != 92 && (v14 + 1) <= 1)
    {
      LOBYTE(v14) = 0;
LABEL_71:
      *a4 = 0;
      return v14;
    }

    if (v13 == 92)
    {
      goto LABEL_48;
    }

    if (v14 == *(v4 + 84))
    {
      v8 = v9 == 0;
      v9 = 1;
      if (!v8)
      {
        if (v14 == *(v4 + 85))
        {
          goto LABEL_78;
        }

        goto LABEL_73;
      }
    }

    else
    {
      if (v14 == *(v4 + 85))
      {
        if (v9)
        {
LABEL_78:
          *a4 = 0;
          LOBYTE(v14) = *(a4 - 1);
          return v14;
        }

LABEL_73:
        LOBYTE(v14) = 0;
        return v14;
      }

LABEL_48:
      if (v13 == 92 || (v14 == 32 ? (v30 = v5 == 1) : (v30 = 1), v30 || v9))
      {
        *a4++ = v14;
        v31 = v7 ^ 1;
        if (v9)
        {
          v31 = 1;
        }

        if (v7)
        {
          v9 = 1;
        }

        else
        {
          v10 = 1;
        }

        if ((v31 & 1) == 0)
        {
          goto LABEL_71;
        }
      }

      else
      {
        v9 = 0;
        v8 = v10 == 0;
        v10 = 0;
        if (!v8)
        {
          *a4 = 0;
          LOBYTE(v14) = 32;
          return v14;
        }
      }
    }
  }

  if (v9)
  {
    if (v5 == 1)
    {
      LOBYTE(v14) = *(v4 + 84);
      *a4 = v14;
      return v14;
    }

    goto LABEL_73;
  }

  *a4 = 0;
  if (v10)
  {
    v32 = OUTLINED_FUNCTION_12_45();
    vf_ungetc(v32);
    LOBYTE(v14) = *(a4 - 1);
  }

  else
  {
    LOBYTE(v14) = 10;
  }

  return v14;
}

uint64_t rdtokverr(uint64_t a1, unsigned __int8 a2, unsigned int a3, size_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  lithex(a4, v15, 75);
  v14 = vstmtbl[12 * a3];
  readErrorReport(a1, a2, v7, "%s is not a token name in stream %s", v8, v9, v10, v11, v15);
  result = var_rderr();
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t chk_ftok(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 > 0x2E || ((1 << v1) & 0x680000000000) == 0;
  if (v2 && (v1 - 48) > 9)
  {
    return 0;
  }

  v3 = 0;
  for (i = a1 + 1; ; ++i)
  {
    if (v1 == 46)
    {
      if (v3)
      {
        return 0;
      }

      v1 = *i;
      if (!*i)
      {
        return 0;
      }

      v3 = 1;
    }

    else
    {
      v1 = *i;
    }

    if (v1 != 46)
    {
      break;
    }

LABEL_14:
    ;
  }

  if (v1)
  {
    if ((v1 - 48) >= 0xA)
    {
      return 0;
    }

    goto LABEL_14;
  }

  return 1;
}

uint64_t vrd_delta(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v52 = *MEMORY[0x277D85DE8];
  v50 = 0;
  v49 = 0;
  v48 = 0;
  v47 = 0;
  v46 = 0.0;
  v44 = 0;
  v6 = a3;
  v45 = STMTYP(a3);
  v7 = &vstmtbl[12 * a3];
  v9 = v7[1];
  v8 = v7 + 1;
  BYTE2(v45) = v9[32];
  v10 = *(a1 + 200);
  v11 = *(v10 + 292);
  v12 = *(v10 + 1720) - v11;
  *(v10 + 1720) = v12;
  *(v10 + 1728) -= v11;
  *v12 = 5;
  *(v12 + 8) = *(v10 + 1760);
  *(v10 + 1760) = v12;
  while (1)
  {
    v13 = OUTLINED_FUNCTION_6_52();
    v16 = gettok_0(v13, v14, a2, v15);
    if (v16 == 10)
    {
      result = 0;
      goto LABEL_29;
    }

    v17 = v16;
    if (checkInterrupt(a1))
    {
      break;
    }

    if (!v17)
    {
      OUTLINED_FUNCTION_24_28();
      break;
    }

    switch(STMTYP(v6))
    {
      case 0xFFFBu:
        v44 = &v46;
        if (!chk_ftok(__s1))
        {
          goto LABEL_23;
        }

        v46 = atof(__s1);
        goto LABEL_25;
      case 0xFFFCu:
        v44 = &v47;
        if (!chk_itok(__s1))
        {
          goto LABEL_23;
        }

        v47 = atoi(__s1);
        goto LABEL_25;
      case 0xFFFDu:
        v44 = &v48;
        if (!chk_itok(__s1))
        {
          goto LABEL_23;
        }

        v48 = atol(__s1);
        goto LABEL_25;
      case 0xFFFEu:
        v23 = 0;
        v44 = &v49;
        v24 = *v8;
        v25 = *(*v8 + 14);
        v26 = v25 & ~(v25 >> 31);
        break;
      case 0xFFFFu:
        v18 = 0;
        v44 = &v50;
        v19 = *v8;
        v20 = *(*v8 + 14);
        do
        {
          v50 = v18;
          v21 = v18;
          if (v18 >= v20)
          {
            break;
          }

          v22 = strcmp(__s1, *(*(v19 + 2) + 8 * v18));
          v18 = v21 + 1;
        }

        while (v22);
        if (v21 != v20)
        {
          goto LABEL_25;
        }

LABEL_23:
        v35 = OUTLINED_FUNCTION_17_37();
        readErrorReport(v35, v36, v37, "%s is not a token name", v38, v39, v40, v41, __s1);
        goto LABEL_24;
      default:
        goto LABEL_25;
    }

    while (1)
    {
      v49 = v23;
      if (v26 == v23)
      {
        break;
      }

      if (!strcmp(__s1, *(*(v24 + 2) + 8 * v23++)))
      {
        LODWORD(v26) = v23 - 1;
        break;
      }
    }

    if (v26 == v25)
    {
      v28 = OUTLINED_FUNCTION_17_37();
      readErrorReport(v28, v29, v30, "%s is not a token name", v31, v32, v33, v34, __s1);
      v44 = 0;
LABEL_24:
      OUTLINED_FUNCTION_17_37();
      if (dlt_rderr())
      {
        break;
      }
    }

LABEL_25:
    vpush_var(a1, &v44);
  }

  result = 1;
LABEL_29:
  v43 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t dlt_rderr()
{
  OUTLINED_FUNCTION_14_43();
  if (OUTLINED_FUNCTION_26_27(v2, v3, "cmdwin") || (v4 = 1, v5 = OUTLINED_FUNCTION_8_50(), OUTLINED_FUNCTION_26_27(v5, v6, v7)))
  {
    v8 = OUTLINED_FUNCTION_8_50();
    v10 = logicalFileInputBuffer(v8, v9);
    v11 = dynaBufMoveRel(v10, 0);
    v12 = dynaBufLength(v10);
    dynaBufMoveAbs(v10, v12 - 1);
    dynaBufDeleteChars(v10, 1uLL);
    dynaBufMoveAbs(v10, v11);
    LOBYTE(v10) = dynaBufContents(v10);
    v26 = v10 + v11 - strlen(v1);
    v13 = OUTLINED_FUNCTION_8_50();
    vf_printf(v13, v14, 1, v15, v16, v17, v18, v19, v26);
    v20 = *(v0 + 200);
    v21 = *(v20 + 1744);
    if (v21)
    {
      v22 = *(v20 + 1760);
      *(v20 + 1720) = v22;
      *(v20 + 1728) = *(v20 + 1780) + v22 - *(v21 + 32);
    }

    v23 = OUTLINED_FUNCTION_8_50();
    vf_clrbuf(v23, v24);
    return 0;
  }

  return v4;
}

uint64_t vprt_strm(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, int a5, int a6, const char *a7)
{
  v29 = *MEMORY[0x277D85DE8];
  while (1)
  {
    OUTLINED_FUNCTION_23_28();
    if (a3 == a4 || a3 == v14)
    {
      break;
    }

    a3 = *(a3 + 8 * (*(*(a1 + 192) + 9084) + a5)) & 0xFFFFFFFFFFFFFFFCLL;
    if (!a3 || (*a3 & 2) == 0)
    {
      disptok(v13, a3 + 16, a5, a6, __s1);
      if (__s1[0] == 92)
      {
        cleanLiteral(__s1, 0, 0);
      }

      __strcat_chk();
      v16 = OUTLINED_FUNCTION_6_52();
      vf_puts(v16, v17, v18, 0);
      a3 = *(a3 + 8) & 0xFFFFFFFFFFFFFFFCLL;
    }
  }

  v19 = strlen(a7);
  __memset_chk();
  __s1[v19] = 0;
  v20 = OUTLINED_FUNCTION_6_52();
  vf_puts(v20, v21, v22, 0);
  __memset_chk();
  v23 = OUTLINED_FUNCTION_6_52();
  result = vf_puts(v23, v24, v25, 1);
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t disptok(int a1, int a2, int a3, int a4, char *__s1)
{
  v6 = &vstmtbl[12 * a3];
  v7 = &v6[1][40 * a4];
  switch(*(v7 + 30))
  {
    case 0xFFFB:
      v8 = OUTLINED_FUNCTION_7_51();
      v9(v8);
      v10 = OUTLINED_FUNCTION_3_57();
      v28 = *v11(v10);
      sprintf(__s1, v6, v28);
      break;
    case 0xFFFC:
      v23 = OUTLINED_FUNCTION_7_51();
      v24(v23);
      v25 = OUTLINED_FUNCTION_3_57();
      v20 = *v26(v25);
      goto LABEL_8;
    case 0xFFFD:
      v16 = OUTLINED_FUNCTION_7_51();
      v17(v16);
      v18 = OUTLINED_FUNCTION_3_57();
      v20 = *v19(v18);
LABEL_8:
      sprintf(__s1, v6, v20);
      break;
    case 0xFFFE:
      v12 = *(v7 + 16);
      v21 = OUTLINED_FUNCTION_7_51();
      v15 = *v22(v21);
      goto LABEL_6;
    case 0xFFFF:
      v12 = *(v7 + 16);
      v13 = OUTLINED_FUNCTION_7_51();
      v15 = *v14(v13);
LABEL_6:
      strcpy(__s1, *(v12 + 8 * v15));
      break;
    default:
      break;
  }

  result = strcmp(__s1, "undefined");
  if (!result)
  {
    *__s1 = 2960685;
  }

  return result;
}

uint64_t vsvdelta(uint64_t a1, char a2)
{
  v2 = *(a1 + 200);
  if (!*(v2 + 248))
  {
    return 0;
  }

  *(v2 + 478) = a2;
  if (!*(v2 + 400))
  {
    v4 = malloc_type_malloc(8 * *(a1 + 288), 0x80040B8603338uLL);
    *(*(a1 + 200) + 400) = v4;
    if (!v4)
    {
      return 0;
    }
  }

  v5 = 0;
  v6 = 8 * *(a1 + 288);
  while (1)
  {
    v7 = *(a1 + 200);
    if (v6 == v5)
    {
      break;
    }

    *(*(v7 + 400) + v5) = *v7;
    v5 += 8;
  }

  v8 = *(v7 + 478);
  v9 = OUTLINED_FUNCTION_5_53();
  vf_puts(v9, v10, v11, v12);
  v13 = 0;
  v14 = vstmtbl;
  while (1)
  {
    v15 = *(a1 + 200);
    if (v13 >= *(a1 + 288))
    {
      break;
    }

    v77 = *v14;
    v16 = OUTLINED_FUNCTION_2_62(v15);
    __sprintf_chk(v16, v17, v18, "\nset ^_%s = ^left", v77);
    v19 = OUTLINED_FUNCTION_0_71();
    vf_puts(v19, v20, v21, v22);
    v23 = *v14;
    v14 += 12;
    v24 = OUTLINED_FUNCTION_2_62(*(a1 + 200));
    __sprintf_chk(v24, v25, v26, "\ndelta delete %s ^left...^right", v23);
    v27 = OUTLINED_FUNCTION_0_71();
    vf_puts(v27, v28, v29, v30);
    ++v13;
  }

  v31 = *(v15 + 478);
  v32 = OUTLINED_FUNCTION_5_53();
  vf_puts(v32, v33, v34, v35);
  v36 = *(a1 + 288);
  while (1)
  {
    v37 = __OFSUB__(v36--, 1);
    if (v36 < 0 != v37)
    {
      break;
    }

    OUTLINED_FUNCTION_4_53();
    vf_puts(a1, v38, "\nprint . to cmdout", 1);
    v39 = *(*(a1 + 200) + 8);
    v40 = OUTLINED_FUNCTION_6_52();
    reach(v40, v41, v42, 0xFFFFFFFF);
  }

  OUTLINED_FUNCTION_4_53();
  v43 = OUTLINED_FUNCTION_5_53();
  vf_puts(v43, v44, v45, v46);
  v47 = 0;
  v48 = vstmtbl;
  while (v47 < *(a1 + 288))
  {
    v49 = *v48;
    v48 += 12;
    v50 = OUTLINED_FUNCTION_2_62(*(a1 + 200));
    __sprintf_chk(v50, v51, v52, "\ndelta delete %s ^_%s", v49, v49);
    v53 = OUTLINED_FUNCTION_0_71();
    vf_puts(v53, v54, v55, v56);
    ++v47;
  }

  v57 = 1162;
  v58 = 9186;
  while (v57 - 1161 < *(a1 + 16))
  {
    v59 = *(a1 + 192);
    v60 = v59 + v58;
    if (*(v59 + v58 - 2) == -6 && (*(v59 + v58) & 0x20) == 0)
    {
      v61 = **(v59 + 8 * v57);
      v62 = *(a1 + 200);
      if (v61 == *v62 || v61 == v62[1])
      {
        v78 = *(v60 - 18);
        v63 = OUTLINED_FUNCTION_13_45();
        __sprintf_chk(v63, v64, v65, v66, v78);
        v67 = OUTLINED_FUNCTION_0_71();
        vf_puts(v67, v68, v69, v70);
      }
    }

    ++v57;
    v58 += 24;
  }

  OUTLINED_FUNCTION_4_53();
  v71 = 1;
  v72 = OUTLINED_FUNCTION_5_53();
  vf_puts(v72, v73, v74, v75);
  return v71;
}

void reach(uint64_t a1, int a2, _BYTE *a3, unsigned int a4)
{
  v5 = *(*(*(a1 + 200) + 400) + 8 * a2);
  if (v5 != a3)
  {
    for (i = VRSYNC(a1, v5, a2); i != a3; i = VRSYNC(a1, i, a2))
    {
      v8 = 0;
      v9 = 0;
      for (j = vstmtbl; ; j += 12)
      {
        OUTLINED_FUNCTION_18_36();
        if (v11)
        {
          break;
        }

        if (a2 != v8)
        {
          OUTLINED_FUNCTION_9_50();
          if (*&i[8 * v12])
          {
            v13 = ",";
            if (!v9)
            {
              OUTLINED_FUNCTION_21_31();
              prstuff(a1, a2, *(v14 + 8 * a2), i, 0xFFFFFFFFLL);
              OUTLINED_FUNCTION_21_31();
              *(v15 + 8 * a2) = i;
              OUTLINED_FUNCTION_4_53();
              vf_puts(a1, v16, "\ndelta project ", 1);
              v13 = &unk_26E7817DA;
            }

            v17 = *(a1 + 200);
            v37 = v13;
            v39 = *j;
            v18 = OUTLINED_FUNCTION_13_45();
            __sprintf_chk(v18, v19, v20, "%s%s", v37, v39);
            OUTLINED_FUNCTION_4_53();
            v9 = 1;
            v21 = OUTLINED_FUNCTION_5_53();
            vf_puts(v21, v22, v23, v24);
          }
        }

        ++v8;
      }

      if (v9)
      {
        v38 = vstmtbl[12 * a2];
        v25 = OUTLINED_FUNCTION_2_62(*(a1 + 200));
        __sprintf_chk(v25, v26, v27, " (.1) ^_%s", v38);
        v28 = OUTLINED_FUNCTION_0_71();
        vf_puts(v28, v29, v30, v31);
        for (k = 0; k < *(a1 + 288); ++k)
        {
          if (a2 != k)
          {
            OUTLINED_FUNCTION_9_50();
            if (*&i[8 * v33])
            {
              v34 = OUTLINED_FUNCTION_6_52();
              reach(v34);
            }
          }
        }
      }
    }

    OUTLINED_FUNCTION_21_31();
    prstuff(a1, a2, *(v35 + 8 * a2), a3, a4);
    OUTLINED_FUNCTION_21_31();
    *(v36 + 8 * a2) = i;
  }
}

uint64_t svgetl(uint64_t a1)
{
  OUTLINED_FUNCTION_11_46(a1);
  fread(&__ptr, 1uLL, 4uLL, v1);
  return bswap32(__ptr);
}

uint64_t svgeti(uint64_t a1)
{
  OUTLINED_FUNCTION_11_46(a1);
  fread(__ptr, 1uLL, 2uLL, v1);
  return (__ptr[0] << 8) | __ptr[1];
}

uint64_t svgetc(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_1_65(a1);
  fread(v1, v2, v3, v4);
  return 0;
}

uint64_t svgetu(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_1_65(a1);
  fread(v1, v2, v3, v4);
  return 0;
}