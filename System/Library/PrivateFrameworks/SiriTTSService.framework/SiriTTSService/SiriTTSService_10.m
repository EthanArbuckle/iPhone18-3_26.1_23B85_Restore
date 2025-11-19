uint64_t sub_1B1B56704()
{
  OUTLINED_FUNCTION_21_8();
  OUTLINED_FUNCTION_0();
  v2 = v0[142];
  if (v1 == 2)
  {
    if (v2)
    {
      v3 = v0[143];
      v4 = v0[144];
      v5 = sub_1B1C2CB28();
      OUTLINED_FUNCTION_38_4(v5, sel_removeObjectForKey_);
LABEL_6:
    }
  }

  else if (v2)
  {
    OUTLINED_FUNCTION_20_8();
    sub_1B1C2D7F8();
    v6 = v0[143];
    v7 = v0[144];
    v5 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_11_11(v5, sel_setObject_forKey_);
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  return swift_endAccess();
}

uint64_t sub_1B1B567B8()
{
  v2 = OUTLINED_FUNCTION_18_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_21(v3);
  OUTLINED_FUNCTION_13_15();
  v4 = *(v0 + 1136);
  *(v1 + 32) = v4;
  v5 = *(v0 + 1144);
  *(v1 + 40) = v5;
  v6 = *(v0 + 1152);
  *(v1 + 48) = v6;
  *(v1 + 56) = sub_1B1A8DCB4(v4, v5, v6, *(v0 + 1160));
  return OUTLINED_FUNCTION_15_11();
}

void sub_1B1B56830(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_3_17(a1);
  if (v4)
  {
    v5 = v1[3] + 1136;
    sub_1B1B51164(v3);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_19_6();
  if (v7)
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    v8 = v1[5];
    v9 = v1[6];
    v10 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_37_4(v10, sel_removeObjectForKey_);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_2_22(v6);
    sub_1B1C2D7F8();
    OUTLINED_FUNCTION_7_13();
    v10 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_10_16(v10, sel_setObject_forKey_);
    swift_unknownObjectRelease();
  }

LABEL_10:
  swift_endAccess();

  free(v1);
}

_OWORD *sub_1B1B5692C()
{
  v1 = OUTLINED_FUNCTION_65();
  v2 = *(v0 + 1184);
  v27[0] = *(v0 + 1168);
  v27[1] = v2;
  v28 = *(v0 + 1200);
  OUTLINED_FUNCTION_6_15(v1, v3, v4, v5, v6, v7, v8, v9, v19, v20, v21, v22, v23, v24, v25, v26, v27[0]);
  v10 = sub_1B1B509C8();
  OUTLINED_FUNCTION_5_17(v10, v11, v12, v13, v14, v15, v16, v17);
  return v27;
}

uint64_t sub_1B1B569A0(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_0();
  v4 = v2[146];
  if (a2)
  {
    if (v4)
    {
      v5 = v2[147];
      v6 = v2[148];
      v7 = sub_1B1C2CB28();
      OUTLINED_FUNCTION_38_4(v7, sel_removeObjectForKey_);
LABEL_6:
    }
  }

  else if (v4)
  {
    sub_1B1C2D7F8();
    v8 = v2[147];
    v9 = v2[148];
    v7 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_11_11(v7, sel_setObject_forKey_);
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  return swift_endAccess();
}

uint64_t sub_1B1B56A54(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  v3[11] = v1;
  OUTLINED_FUNCTION_67();
  v4 = *(v1 + 1168);
  v5 = *(v1 + 1184);
  *(v3 + 32) = *(v1 + 1200);
  *v3 = v4;
  *(v3 + 1) = v5;
  v3[8] = sub_1B1B509C8();
  *(v3 + 72) = v6 & 1;
  return OUTLINED_FUNCTION_15_11();
}

void sub_1B1B56AE0(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2[11] + 1168;
    sub_1B1B514E8(v2[8], *(v2 + 72));
    goto LABEL_9;
  }

  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  if (v2[9])
  {
    if (!v4)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_51();
    v7 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_37_4(v7, sel_removeObjectForKey_);
  }

  else
  {
    if (!v4)
    {
      goto LABEL_9;
    }

    v2[10] = v2[8];
    sub_1B1C2D7F8();
    OUTLINED_FUNCTION_51();
    v7 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_10_16(v7, sel_setObject_forKey_);
    swift_unknownObjectRelease();
  }

LABEL_9:
  swift_endAccess();

  free(v2);
}

void sub_1B1B56BBC()
{
  OUTLINED_FUNCTION_11_7();
  OUTLINED_FUNCTION_17_1();
  v2 = *(v0 + 1208);
  v3 = *(v0 + 1216);
  v4 = *(v0 + 1224);
  v5 = *(v0 + 1232);
  v6 = v2;
  OUTLINED_FUNCTION_7_13();

  v7 = OUTLINED_FUNCTION_0_21();
  sub_1B1A8DCB4(v7, v8, v9, v5);
  OUTLINED_FUNCTION_41_1();

  OUTLINED_FUNCTION_15_10();
}

uint64_t sub_1B1B56C24()
{
  OUTLINED_FUNCTION_21_8();
  OUTLINED_FUNCTION_0();
  v2 = v0[151];
  if (v1 == 2)
  {
    if (v2)
    {
      v3 = v0[152];
      v4 = v0[153];
      v5 = sub_1B1C2CB28();
      OUTLINED_FUNCTION_38_4(v5, sel_removeObjectForKey_);
LABEL_6:
    }
  }

  else if (v2)
  {
    OUTLINED_FUNCTION_20_8();
    sub_1B1C2D7F8();
    v6 = v0[152];
    v7 = v0[153];
    v5 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_11_11(v5, sel_setObject_forKey_);
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  return swift_endAccess();
}

uint64_t sub_1B1B56CD8()
{
  v2 = OUTLINED_FUNCTION_18_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_21(v3);
  OUTLINED_FUNCTION_13_15();
  v4 = *(v0 + 1208);
  *(v1 + 32) = v4;
  v5 = *(v0 + 1216);
  *(v1 + 40) = v5;
  v6 = *(v0 + 1224);
  *(v1 + 48) = v6;
  *(v1 + 56) = sub_1B1A8DCB4(v4, v5, v6, *(v0 + 1232));
  return OUTLINED_FUNCTION_15_11();
}

void sub_1B1B56D50(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_3_17(a1);
  if (v4)
  {
    v5 = v1[3] + 1208;
    sub_1B1B51164(v3);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_19_6();
  if (v7)
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    v8 = v1[5];
    v9 = v1[6];
    v10 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_37_4(v10, sel_removeObjectForKey_);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_2_22(v6);
    sub_1B1C2D7F8();
    OUTLINED_FUNCTION_7_13();
    v10 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_10_16(v10, sel_setObject_forKey_);
    swift_unknownObjectRelease();
  }

LABEL_10:
  swift_endAccess();

  free(v1);
}

uint64_t sub_1B1B56E18()
{
  OUTLINED_FUNCTION_33_4();
  OUTLINED_FUNCTION_58_4();
  v27 = *(v0 + 1272);
  OUTLINED_FUNCTION_6_15(v1, v2, v3, v4, v5, v6, v7, v8, v18, v19, v20, v21, v22, v23, v24, v25, v26);
  v9 = sub_1B1AC09EC();
  OUTLINED_FUNCTION_5_17(v9, v10, v11, v12, v13, v14, v15, v16);
  return OUTLINED_FUNCTION_42_1();
}

uint64_t sub_1B1B56E7C()
{
  OUTLINED_FUNCTION_45_5();
  v2 = v1 + 155;
  OUTLINED_FUNCTION_26_5();
  if (v0)
  {
    if (!*v2)
    {

      return swift_endAccess();
    }

    OUTLINED_FUNCTION_53_3();
    sub_1B1C2D7F8();
    v3 = v1[156];
    v4 = v1[157];
    v5 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_29_4(v5, sel_setObject_forKey_);

    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  if (*v2)
  {
    v6 = v1[156];
    v7 = v1[157];
    v5 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_38_4(v5, sel_removeObjectForKey_);
LABEL_6:
  }

  return swift_endAccess();
}

uint64_t sub_1B1B56F44()
{
  v2 = OUTLINED_FUNCTION_43_5();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_8_16(v3);
  OUTLINED_FUNCTION_34_4();
  *(v1 + 64) = OUTLINED_FUNCTION_32_6(*(v0 + 1272), *(v0 + 1240), *(v0 + 1256));
  *(v1 + 72) = v4;
  return OUTLINED_FUNCTION_15_11();
}

void sub_1B1B56FA8(void **a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    OUTLINED_FUNCTION_31_4();
    v5 = OUTLINED_FUNCTION_51();
    sub_1B1B5123C(v5, v6);
    v7 = v4[9];
LABEL_6:

    goto LABEL_7;
  }

  OUTLINED_FUNCTION_9_15();
  if (v3)
  {
    if (v2)
    {
      OUTLINED_FUNCTION_30_6();
      sub_1B1C2D7F8();
      OUTLINED_FUNCTION_126();
      v8 = sub_1B1C2CB28();
      OUTLINED_FUNCTION_28_3(v8, sel_setObject_forKey_);

      swift_unknownObjectRelease();
    }

    goto LABEL_6;
  }

  if (v2)
  {
    OUTLINED_FUNCTION_126();
    v9 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_37_4(v9, sel_removeObjectForKey_);
  }

LABEL_7:
  swift_endAccess();

  free(v4);
}

uint64_t sub_1B1B57084()
{
  v1 = OUTLINED_FUNCTION_65();
  v26 = *(v0 + 1296);
  v27 = *(v0 + 1312);
  OUTLINED_FUNCTION_6_15(v1, v2, v3, v4, v5, v6, v7, v8, v18, v19, v20, v21, v22, v23, v24, v25, *(v0 + 1280));
  v9 = sub_1B1AC09EC();
  OUTLINED_FUNCTION_5_17(v9, v10, v11, v12, v13, v14, v15, v16);
  return OUTLINED_FUNCTION_42_1();
}

uint64_t sub_1B1B570F4()
{
  OUTLINED_FUNCTION_45_5();
  v2 = v1 + 160;
  OUTLINED_FUNCTION_26_5();
  if (v0)
  {
    if (!*v2)
    {

      return swift_endAccess();
    }

    OUTLINED_FUNCTION_53_3();
    sub_1B1C2D7F8();
    v3 = v1[161];
    v4 = v1[162];
    v5 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_29_4(v5, sel_setObject_forKey_);

    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  if (*v2)
  {
    v6 = v1[161];
    v7 = v1[162];
    v5 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_38_4(v5, sel_removeObjectForKey_);
LABEL_6:
  }

  return swift_endAccess();
}

uint64_t sub_1B1B571BC()
{
  v2 = OUTLINED_FUNCTION_43_5();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_8_16(v3);
  OUTLINED_FUNCTION_67();
  *(v1 + 64) = OUTLINED_FUNCTION_32_6(v0[82].n128_u64[0], v0[80], v0[81]);
  *(v1 + 72) = v4;
  return OUTLINED_FUNCTION_15_11();
}

void sub_1B1B57228(void **a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    OUTLINED_FUNCTION_31_4();
    v5 = OUTLINED_FUNCTION_51();
    sub_1B1B5123C(v5, v6);
    v7 = v4[9];
LABEL_6:

    goto LABEL_7;
  }

  OUTLINED_FUNCTION_9_15();
  if (v3)
  {
    if (v2)
    {
      OUTLINED_FUNCTION_30_6();
      sub_1B1C2D7F8();
      OUTLINED_FUNCTION_126();
      v8 = sub_1B1C2CB28();
      OUTLINED_FUNCTION_28_3(v8, sel_setObject_forKey_);

      swift_unknownObjectRelease();
    }

    goto LABEL_6;
  }

  if (v2)
  {
    OUTLINED_FUNCTION_126();
    v9 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_37_4(v9, sel_removeObjectForKey_);
  }

LABEL_7:
  swift_endAccess();

  free(v4);
}

uint64_t sub_1B1B57304()
{
  OUTLINED_FUNCTION_33_4();
  OUTLINED_FUNCTION_58_4();
  v27 = *(v0 + 1352);
  OUTLINED_FUNCTION_6_15(v1, v2, v3, v4, v5, v6, v7, v8, v18, v19, v20, v21, v22, v23, v24, v25, v26);
  v9 = sub_1B1AC09EC();
  OUTLINED_FUNCTION_5_17(v9, v10, v11, v12, v13, v14, v15, v16);
  return OUTLINED_FUNCTION_42_1();
}

uint64_t sub_1B1B57368()
{
  OUTLINED_FUNCTION_45_5();
  v2 = v1 + 165;
  OUTLINED_FUNCTION_26_5();
  if (v0)
  {
    if (!*v2)
    {

      return swift_endAccess();
    }

    OUTLINED_FUNCTION_53_3();
    sub_1B1C2D7F8();
    v3 = v1[166];
    v4 = v1[167];
    v5 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_29_4(v5, sel_setObject_forKey_);

    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  if (*v2)
  {
    v6 = v1[166];
    v7 = v1[167];
    v5 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_38_4(v5, sel_removeObjectForKey_);
LABEL_6:
  }

  return swift_endAccess();
}

uint64_t sub_1B1B57430()
{
  v2 = OUTLINED_FUNCTION_43_5();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_8_16(v3);
  OUTLINED_FUNCTION_34_4();
  *(v1 + 64) = OUTLINED_FUNCTION_32_6(*(v0 + 1352), *(v0 + 1320), *(v0 + 1336));
  *(v1 + 72) = v4;
  return OUTLINED_FUNCTION_15_11();
}

void sub_1B1B57494(void **a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    OUTLINED_FUNCTION_31_4();
    v5 = OUTLINED_FUNCTION_51();
    sub_1B1B5123C(v5, v6);
    v7 = v4[9];
LABEL_6:

    goto LABEL_7;
  }

  OUTLINED_FUNCTION_9_15();
  if (v3)
  {
    if (v2)
    {
      OUTLINED_FUNCTION_30_6();
      sub_1B1C2D7F8();
      OUTLINED_FUNCTION_126();
      v8 = sub_1B1C2CB28();
      OUTLINED_FUNCTION_28_3(v8, sel_setObject_forKey_);

      swift_unknownObjectRelease();
    }

    goto LABEL_6;
  }

  if (v2)
  {
    OUTLINED_FUNCTION_126();
    v9 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_37_4(v9, sel_removeObjectForKey_);
  }

LABEL_7:
  swift_endAccess();

  free(v4);
}

void sub_1B1B57570()
{
  OUTLINED_FUNCTION_11_7();
  OUTLINED_FUNCTION_17_1();
  v2 = *(v0 + 1360);
  v3 = *(v0 + 1368);
  v4 = *(v0 + 1376);
  v5 = *(v0 + 1384);
  v6 = v2;
  OUTLINED_FUNCTION_7_13();

  v7 = OUTLINED_FUNCTION_0_21();
  sub_1B1A8DCB4(v7, v8, v9, v5);
  OUTLINED_FUNCTION_41_1();

  OUTLINED_FUNCTION_15_10();
}

uint64_t sub_1B1B575D8()
{
  OUTLINED_FUNCTION_21_8();
  OUTLINED_FUNCTION_0();
  v2 = v0[170];
  if (v1 == 2)
  {
    if (v2)
    {
      v3 = v0[171];
      v4 = v0[172];
      v5 = sub_1B1C2CB28();
      OUTLINED_FUNCTION_38_4(v5, sel_removeObjectForKey_);
LABEL_6:
    }
  }

  else if (v2)
  {
    OUTLINED_FUNCTION_20_8();
    sub_1B1C2D7F8();
    v6 = v0[171];
    v7 = v0[172];
    v5 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_11_11(v5, sel_setObject_forKey_);
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  return swift_endAccess();
}

uint64_t sub_1B1B5768C()
{
  v2 = OUTLINED_FUNCTION_18_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_21(v3);
  OUTLINED_FUNCTION_13_15();
  v4 = *(v0 + 1360);
  *(v1 + 32) = v4;
  v5 = *(v0 + 1368);
  *(v1 + 40) = v5;
  v6 = *(v0 + 1376);
  *(v1 + 48) = v6;
  *(v1 + 56) = sub_1B1A8DCB4(v4, v5, v6, *(v0 + 1384));
  return OUTLINED_FUNCTION_15_11();
}

void sub_1B1B57704(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_3_17(a1);
  if (v4)
  {
    v5 = v1[3] + 1360;
    sub_1B1B51164(v3);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_19_6();
  if (v7)
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    v8 = v1[5];
    v9 = v1[6];
    v10 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_37_4(v10, sel_removeObjectForKey_);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_2_22(v6);
    sub_1B1C2D7F8();
    OUTLINED_FUNCTION_7_13();
    v10 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_10_16(v10, sel_setObject_forKey_);
    swift_unknownObjectRelease();
  }

LABEL_10:
  swift_endAccess();

  free(v1);
}

uint64_t sub_1B1B577CC(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;

  return a5(v7, v6);
}

uint64_t sub_1B1B57814()
{
  v1 = OUTLINED_FUNCTION_65();
  v26 = *(v0 + 1408);
  v27 = *(v0 + 1424);
  OUTLINED_FUNCTION_6_15(v1, v2, v3, v4, v5, v6, v7, v8, v18, v19, v20, v21, v22, v23, v24, v25, *(v0 + 1392));
  v9 = sub_1B1AC09EC();
  OUTLINED_FUNCTION_5_17(v9, v10, v11, v12, v13, v14, v15, v16);
  return OUTLINED_FUNCTION_42_1();
}

uint64_t sub_1B1B57884()
{
  OUTLINED_FUNCTION_45_5();
  v2 = v1 + 174;
  OUTLINED_FUNCTION_26_5();
  if (v0)
  {
    if (!*v2)
    {

      return swift_endAccess();
    }

    OUTLINED_FUNCTION_53_3();
    sub_1B1C2D7F8();
    v3 = v1[175];
    v4 = v1[176];
    v5 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_29_4(v5, sel_setObject_forKey_);

    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  if (*v2)
  {
    v6 = v1[175];
    v7 = v1[176];
    v5 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_38_4(v5, sel_removeObjectForKey_);
LABEL_6:
  }

  return swift_endAccess();
}

uint64_t sub_1B1B5794C()
{
  v2 = OUTLINED_FUNCTION_43_5();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_8_16(v3);
  OUTLINED_FUNCTION_67();
  *(v1 + 64) = OUTLINED_FUNCTION_32_6(v0[89].n128_u64[0], v0[87], v0[88]);
  *(v1 + 72) = v4;
  return OUTLINED_FUNCTION_15_11();
}

void sub_1B1B579B8(void **a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    OUTLINED_FUNCTION_31_4();
    v5 = OUTLINED_FUNCTION_51();
    sub_1B1B5123C(v5, v6);
    v7 = v4[9];
LABEL_6:

    goto LABEL_7;
  }

  OUTLINED_FUNCTION_9_15();
  if (v3)
  {
    if (v2)
    {
      OUTLINED_FUNCTION_30_6();
      sub_1B1C2D7F8();
      OUTLINED_FUNCTION_126();
      v8 = sub_1B1C2CB28();
      OUTLINED_FUNCTION_28_3(v8, sel_setObject_forKey_);

      swift_unknownObjectRelease();
    }

    goto LABEL_6;
  }

  if (v2)
  {
    OUTLINED_FUNCTION_126();
    v9 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_37_4(v9, sel_removeObjectForKey_);
  }

LABEL_7:
  swift_endAccess();

  free(v4);
}

void sub_1B1B57A94()
{
  OUTLINED_FUNCTION_11_7();
  OUTLINED_FUNCTION_17_1();
  v2 = *(v0 + 1432);
  v3 = *(v0 + 1440);
  v4 = *(v0 + 1448);
  v5 = *(v0 + 1456);
  v6 = v2;
  OUTLINED_FUNCTION_7_13();

  v7 = OUTLINED_FUNCTION_0_21();
  sub_1B1A8DCB4(v7, v8, v9, v5);
  OUTLINED_FUNCTION_41_1();

  OUTLINED_FUNCTION_15_10();
}

uint64_t sub_1B1B57AFC()
{
  OUTLINED_FUNCTION_21_8();
  OUTLINED_FUNCTION_0();
  v2 = v0[179];
  if (v1 == 2)
  {
    if (v2)
    {
      v3 = v0[180];
      v4 = v0[181];
      v5 = sub_1B1C2CB28();
      OUTLINED_FUNCTION_38_4(v5, sel_removeObjectForKey_);
LABEL_6:
    }
  }

  else if (v2)
  {
    OUTLINED_FUNCTION_20_8();
    sub_1B1C2D7F8();
    v6 = v0[180];
    v7 = v0[181];
    v5 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_11_11(v5, sel_setObject_forKey_);
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  return swift_endAccess();
}

uint64_t sub_1B1B57BB0()
{
  v2 = OUTLINED_FUNCTION_18_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_21(v3);
  OUTLINED_FUNCTION_13_15();
  v4 = *(v0 + 1432);
  *(v1 + 32) = v4;
  v5 = *(v0 + 1440);
  *(v1 + 40) = v5;
  v6 = *(v0 + 1448);
  *(v1 + 48) = v6;
  *(v1 + 56) = sub_1B1A8DCB4(v4, v5, v6, *(v0 + 1456));
  return OUTLINED_FUNCTION_15_11();
}

void sub_1B1B57C28(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_3_17(a1);
  if (v4)
  {
    v5 = v1[3] + 1432;
    sub_1B1B51164(v3);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_19_6();
  if (v7)
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    v8 = v1[5];
    v9 = v1[6];
    v10 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_37_4(v10, sel_removeObjectForKey_);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_2_22(v6);
    sub_1B1C2D7F8();
    OUTLINED_FUNCTION_7_13();
    v10 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_10_16(v10, sel_setObject_forKey_);
    swift_unknownObjectRelease();
  }

LABEL_10:
  swift_endAccess();

  free(v1);
}

void *InternalSettings.deinit()
{
  v1 = v0[2];
  v2 = v0[4];

  v3 = v0[6];
  v4 = v0[8];

  v5 = v0[10];
  v6 = v0[12];

  v7 = v0[14];
  v8 = v0[16];

  v9 = v0[18];
  v10 = v0[20];
  v11 = v0[22];

  v12 = v0[23];
  v13 = v0[25];

  v14 = v0[27];
  v15 = v0[29];

  v16 = v0[31];
  v17 = v0[33];

  v18 = v0[35];
  v19 = v0[37];

  v20 = v0[39];
  v21 = v0[41];
  v22 = v0[43];

  v23 = v0[44];
  v24 = v0[46];

  v25 = v0[48];
  v26 = v0[50];

  v27 = v0[52];
  v28 = v0[54];

  v29 = v0[56];
  v30 = v0[58];

  v31 = v0[60];
  v32 = v0[62];

  v33 = v0[64];
  v34 = v0[66];

  v35 = v0[68];
  v36 = v0[70];

  v37 = v0[72];
  v38 = v0[74];

  v39 = v0[76];
  v40 = v0[78];

  v41 = v0[80];
  v42 = v0[82];

  v43 = v0[84];
  v44 = v0[86];

  v45 = v0[88];
  v46 = v0[90];

  v47 = v0[92];
  v48 = v0[94];

  v49 = v0[97];
  v50 = v0[99];

  v51 = v0[101];
  v52 = v0[103];
  v53 = v0[105];

  v54 = v0[106];
  v55 = v0[108];

  v56 = v0[110];
  v57 = v0[112];

  v58 = v0[114];
  v59 = v0[116];

  v60 = v0[118];
  v61 = v0[120];

  v62 = v0[122];
  v63 = v0[124];

  v64 = v0[126];
  v65 = v0[128];

  v66 = v0[130];
  v67 = v0[132];

  v68 = v0[134];
  v69 = v0[136];

  v70 = v0[138];
  v71 = v0[140];

  v72 = v0[142];
  v73 = v0[144];

  v74 = v0[146];
  v75 = v0[148];

  v76 = v0[151];
  v77 = v0[153];

  v78 = v0[155];
  v79 = v0[157];
  v80 = v0[159];

  v81 = v0[160];
  v82 = v0[162];
  v83 = v0[164];

  v84 = v0[165];
  v85 = v0[167];
  v86 = v0[169];

  v87 = v0[170];
  v88 = v0[172];

  v89 = v0[174];
  v90 = v0[176];
  v91 = v0[178];

  v92 = v0[179];
  v93 = v0[181];

  return v0;
}

uint64_t InternalSettings.__deallocating_deinit()
{
  InternalSettings.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 1457, 7);
}

uint64_t keypath_get_83Tm(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_23_3(a1);
  result = v3(v2);
  *v1 = result;
  *(v1 + 8) = v5 & 1;
  return result;
}

uint64_t dispatch thunk of InternalSettings.defaultVolume.setter(unint64_t a1)
{
  v2 = *(*v1 + 680);
  v3 = OUTLINED_FUNCTION_52_2(a1);
  return v4(v3);
}

uint64_t dispatch thunk of InternalSettings.defaultPitch.setter(unint64_t a1)
{
  v2 = *(*v1 + 704);
  v3 = OUTLINED_FUNCTION_52_2(a1);
  return v4(v3);
}

uint64_t dispatch thunk of InternalSettings.defaultRate.setter(unint64_t a1)
{
  v2 = *(*v1 + 728);
  v3 = OUTLINED_FUNCTION_52_2(a1);
  return v4(v3);
}

uint64_t dispatch thunk of InternalSettings.serverTTSTimeout.setter(unint64_t a1)
{
  v2 = *(*v1 + 800);
  v3 = OUTLINED_FUNCTION_52_2(a1);
  return v4(v3);
}

uint64_t dispatch thunk of InternalSettings.deviceTTSWaitTime.setter(unint64_t a1)
{
  v2 = *(*v1 + 824);
  v3 = OUTLINED_FUNCTION_52_2(a1);
  return v4(v3);
}

void sub_1B1B59768(uint64_t a1)
{
  sub_1B1B59CC4();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    sub_1B1C2D2B8();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B1B597F8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(v5 + 80);
  v10 = *(*(v4 - 8) + 64);
  if (!v6)
  {
    ++v10;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_28;
  }

  v12 = v10 + ((v9 + 24) & ~v9);
  v13 = 8 * v12;
  if (v12 <= 3)
  {
    v16 = ((v11 + ~(-1 << v13)) >> v13) + 1;
    if (HIWORD(v16))
    {
      v14 = *(a1 + v12);
      if (!v14)
      {
        goto LABEL_28;
      }

      goto LABEL_20;
    }

    if (v16 > 0xFF)
    {
      v14 = *(a1 + v12);
      if (!*(a1 + v12))
      {
        goto LABEL_28;
      }

      goto LABEL_20;
    }

    if (v16 < 2)
    {
LABEL_28:
      v18 = (a1 + 15) & 0xFFFFFFFFFFFFFFF8;
      if ((v7 & 0x80000000) != 0)
      {
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload((v18 + v9 + 16) & ~v9, v6, v4);
        if (EnumTagSinglePayload >= 2)
        {
          return EnumTagSinglePayload - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v19 = *(v18 + 8);
        if (v19 >= 0xFFFFFFFF)
        {
          LODWORD(v19) = -1;
        }

        return (v19 + 1);
      }
    }
  }

  v14 = *(a1 + v12);
  if (!*(a1 + v12))
  {
    goto LABEL_28;
  }

LABEL_20:
  v17 = (v14 - 1) << v13;
  if (v12 > 3)
  {
    v17 = 0;
  }

  if (v12)
  {
    if (v12 > 3)
    {
      LODWORD(v12) = 4;
    }

    switch(v12)
    {
      case 2:
        LODWORD(v12) = *a1;
        break;
      case 3:
        LODWORD(v12) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v12) = *a1;
        break;
      default:
        LODWORD(v12) = *a1;
        break;
    }
  }

  return v8 + (v12 | v17) + 1;
}

void sub_1B1B599B4(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = v9 - 1;
  if (!v9)
  {
    v10 = 0;
  }

  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v8 + 80);
  v13 = (v12 + 24) & ~v12;
  v14 = *(*(v7 - 8) + 64);
  if (!v9)
  {
    ++v14;
  }

  v15 = v13 + v14;
  v16 = 8 * (v13 + v14);
  v17 = a3 >= v11;
  v18 = a3 - v11;
  if (v18 != 0 && v17)
  {
    if (v15 <= 3)
    {
      v19 = ((v18 + ~(-1 << v16)) >> v16) + 1;
      if (HIWORD(v19))
      {
        v6 = 4;
      }

      else
      {
        if (v19 < 0x100)
        {
          v20 = 1;
        }

        else
        {
          v20 = 2;
        }

        if (v19 >= 2)
        {
          v6 = v20;
        }

        else
        {
          v6 = 0;
        }
      }
    }

    else
    {
      v6 = 1;
    }
  }

  if (v11 >= a2)
  {
    switch(v6)
    {
      case 1:
        a1[v15] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v15] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_61:
        __break(1u);
        break;
      case 4:
        *&a1[v15] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          v24 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
          if ((v10 & 0x80000000) != 0)
          {
            v25 = ((v24 + v12 + 16) & ~v12);
            if (v10 >= a2)
            {
              v29 = a2 + 1;

              __swift_storeEnumTagSinglePayload((v24 + v12 + 16) & ~v12, v29, v9, v7);
            }

            else
            {
              if (v14 <= 3)
              {
                v26 = ~(-1 << (8 * v14));
              }

              else
              {
                v26 = -1;
              }

              if (v14)
              {
                v27 = v26 & (~v10 + a2);
                if (v14 <= 3)
                {
                  v28 = v14;
                }

                else
                {
                  v28 = 4;
                }

                bzero(v25, v14);
                switch(v28)
                {
                  case 2:
                    *v25 = v27;
                    break;
                  case 3:
                    *v25 = v27;
                    v25[2] = BYTE2(v27);
                    break;
                  case 4:
                    *v25 = v27;
                    break;
                  default:
                    *v25 = v27;
                    break;
                }
              }
            }
          }

          else if ((a2 & 0x80000000) != 0)
          {
            *v24 = a2 & 0x7FFFFFFF;
            v24[1] = 0;
          }

          else
          {
            v24[1] = a2 - 1;
          }
        }

        break;
    }
  }

  else
  {
    v21 = ~v11 + a2;
    if (v15 < 4)
    {
      v22 = (v21 >> v16) + 1;
      if (v15)
      {
        v23 = v21 & ~(-1 << v16);
        bzero(a1, v15);
        if (v15 == 3)
        {
          *a1 = v23;
          a1[2] = BYTE2(v23);
        }

        else if (v15 == 2)
        {
          *a1 = v23;
        }

        else
        {
          *a1 = v21;
        }
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v21;
      v22 = 1;
    }

    switch(v6)
    {
      case 1:
        a1[v15] = v22;
        break;
      case 2:
        *&a1[v15] = v22;
        break;
      case 3:
        goto LABEL_61;
      case 4:
        *&a1[v15] = v22;
        break;
      default:
        return;
    }
  }
}

void sub_1B1B59CC4()
{
  if (!qword_1EB761038)
  {
    sub_1B1B59D1C();
    v0 = sub_1B1C2D2B8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB761038);
    }
  }
}

unint64_t sub_1B1B59D1C()
{
  result = qword_1EB761040;
  if (!qword_1EB761040)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB761040);
  }

  return result;
}

void sub_1B1B59D60(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_7_14();
  if (!v2)
  {
    __break(1u);
    goto LABEL_19;
  }

  v3 = v2;
  v4 = [v2 sampleRate];

  if (!v4)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  [v4 doubleValue];
  v6 = v5;

  v7 = OUTLINED_FUNCTION_7_14();
  if (!v7)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v8 = v7;
  v9 = [v7 formatID];

  if (!v9)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v10 = [v9 unsignedIntValue];

  v11 = OUTLINED_FUNCTION_7_14();
  if (!v11)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v12 = v11;
  v13 = [v11 formatFlags];

  if (!v13)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v14 = [v13 unsignedIntValue];

  v15 = OUTLINED_FUNCTION_7_14();
  if (!v15)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v16 = v15;
  v17 = [v15 bytesPerPacket];

  if (!v17)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v18 = [v17 unsignedIntValue];

  v19 = OUTLINED_FUNCTION_7_14();
  if (!v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v20 = v19;
  v21 = [v19 framesPerPacket];

  if (!v21)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v37 = v18;
  v22 = [v21 unsignedIntValue];

  v23 = OUTLINED_FUNCTION_7_14();
  if (!v23)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v24 = v23;
  v25 = v14;
  v26 = [v23 bytesPerFrame];

  if (!v26)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v27 = v10;
  v28 = [v26 unsignedIntValue];

  v29 = OUTLINED_FUNCTION_7_14();
  if (!v29)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v30 = v29;
  v31 = [v29 channelsPerFrame];

  if (!v31)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v32 = [v31 unsignedIntValue];

  v33 = OUTLINED_FUNCTION_7_14();
  if (!v33)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v34 = v33;
  v35 = [v33 bitsPerChannel];

  if (v35)
  {
    v36 = [v35 unsignedIntValue];

    *a1 = v6;
    *(a1 + 8) = v27;
    *(a1 + 12) = v25;
    *(a1 + 16) = v37;
    *(a1 + 20) = v22;
    *(a1 + 24) = v28;
    *(a1 + 28) = v32;
    *(a1 + 32) = v36;
    *(a1 + 36) = 0;
    return;
  }

LABEL_33:
  __break(1u);
}

uint64_t sub_1B1B5A060()
{
  v1 = v0;
  v2 = [v0 speechSynthesisVoice];
  if (v2)
  {
    sub_1B1AEA2D8(v2, &selRef_languageCode);
    if (v3)
    {
      v44 = sub_1B1A8EDAC();
      v45 = v44;
      v42 = MEMORY[0x1E69E6158];
      v43 = v44;
      OUTLINED_FUNCTION_11_0();
      sub_1B1C2D398();
    }
  }

  v4 = [v0 speechSynthesisVoice];
  if (!v4 || (sub_1B1AEA2D8(v4, &selRef_name), !v5))
  {
  }

  v6 = objc_allocWithZone(type metadata accessor for SynthesisVoice());
  v7 = SynthesisVoice.init(language:name:)();
  v8 = sub_1B1B5A4B8(v0);
  v9 = OBJC_IVAR___SiriTTSSynthesisVoice_type;
  OUTLINED_FUNCTION_15_0();
  swift_beginAccess();
  *&v7[v9] = v8;
  v10 = sub_1B1B5A60C(v1);
  v11 = OBJC_IVAR___SiriTTSSynthesisVoice_footprint[0];
  OUTLINED_FUNCTION_15_0();
  swift_beginAccess();
  *&v7[v11] = v10;
  v12 = sub_1B1B5A760(v1);
  v13 = OBJC_IVAR___SiriTTSSynthesisVoice_gender;
  OUTLINED_FUNCTION_15_0();
  swift_beginAccess();
  *&v7[v13] = v12;
  v14 = [v1 speechSynthesisVoice];
  if (v14 && (result = sub_1B1AEA2D8(v14, &selRef_contentVersion), v16))
  {
    v17 = v16;
  }

  else
  {

    result = 0;
    v17 = 0xE000000000000000;
  }

  v18 = HIBYTE(v17) & 0xF;
  v19 = result & 0xFFFFFFFFFFFFLL;
  if ((v17 & 0x2000000000000000) != 0)
  {
    v20 = HIBYTE(v17) & 0xF;
  }

  else
  {
    v20 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v20)
  {

    goto LABEL_83;
  }

  if ((v17 & 0x1000000000000000) != 0)
  {
    sub_1B1B2EFF0(result, v17, 10);
    v22 = v40;
    v38 = v41;
LABEL_82:

    if ((v38 & 1) == 0)
    {
LABEL_84:
      v39 = OBJC_IVAR___SiriTTSSynthesisVoice_version;
      OUTLINED_FUNCTION_15_0();
      swift_beginAccess();
      *(v39 + v7) = v22;
      return v7;
    }

LABEL_83:
    v22 = 0;
    goto LABEL_84;
  }

  if ((v17 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (v17 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_1B1C2D578();
    }

    v21 = *result;
    if (v21 == 43)
    {
      if (v19 >= 1)
      {
        if (v19 != 1)
        {
          v22 = 0;
          if (result)
          {
            OUTLINED_FUNCTION_72_1();
            while (1)
            {
              OUTLINED_FUNCTION_6_0();
              if (!v24 & v23)
              {
                goto LABEL_80;
              }

              OUTLINED_FUNCTION_2_23();
              if (!v24)
              {
                goto LABEL_80;
              }

              v22 = v31 + v30;
              if (__OFADD__(v31, v30))
              {
                goto LABEL_80;
              }

              OUTLINED_FUNCTION_16_2();
              if (v24)
              {
                goto LABEL_81;
              }
            }
          }

          goto LABEL_71;
        }

        goto LABEL_80;
      }

      goto LABEL_90;
    }

    if (v21 != 45)
    {
      if (v19)
      {
        v22 = 0;
        if (result)
        {
          while (1)
          {
            v34 = *result - 48;
            if (v34 > 9)
            {
              goto LABEL_80;
            }

            v35 = 10 * v22;
            if ((v22 * 10) >> 64 != (10 * v22) >> 63)
            {
              goto LABEL_80;
            }

            v22 = v35 + v34;
            if (__OFADD__(v35, v34))
            {
              goto LABEL_80;
            }

            ++result;
            if (!--v19)
            {
              goto LABEL_71;
            }
          }
        }

        goto LABEL_71;
      }

LABEL_80:
      v22 = 0;
      v27 = 1;
      goto LABEL_81;
    }

    if (v19 >= 1)
    {
      if (v19 != 1)
      {
        v22 = 0;
        if (result)
        {
          OUTLINED_FUNCTION_72_1();
          while (1)
          {
            OUTLINED_FUNCTION_6_0();
            if (!v24 & v23)
            {
              goto LABEL_80;
            }

            OUTLINED_FUNCTION_2_23();
            if (!v24)
            {
              goto LABEL_80;
            }

            v22 = v26 - v25;
            if (__OFSUB__(v26, v25))
            {
              goto LABEL_80;
            }

            OUTLINED_FUNCTION_16_2();
            if (v24)
            {
              goto LABEL_81;
            }
          }
        }

LABEL_71:
        v27 = 0;
LABEL_81:
        v38 = v27;
        goto LABEL_82;
      }

      goto LABEL_80;
    }

    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  if (result != 43)
  {
    if (result != 45)
    {
      if (v18)
      {
        while (1)
        {
          OUTLINED_FUNCTION_6_0();
          if (!v24 & v23)
          {
            break;
          }

          OUTLINED_FUNCTION_2_23();
          if (!v24)
          {
            break;
          }

          v22 = v37 + v36;
          if (__OFADD__(v37, v36))
          {
            break;
          }

          OUTLINED_FUNCTION_16_2();
          if (v24)
          {
            goto LABEL_81;
          }
        }
      }

      goto LABEL_80;
    }

    if (v18)
    {
      if (v18 != 1)
      {
        OUTLINED_FUNCTION_14_12();
        while (1)
        {
          OUTLINED_FUNCTION_6_0();
          if (!v24 & v23)
          {
            break;
          }

          OUTLINED_FUNCTION_2_23();
          if (!v24)
          {
            break;
          }

          v22 = v29 - v28;
          if (__OFSUB__(v29, v28))
          {
            break;
          }

          OUTLINED_FUNCTION_16_2();
          if (v24)
          {
            goto LABEL_81;
          }
        }
      }

      goto LABEL_80;
    }

    goto LABEL_89;
  }

  if (v18)
  {
    if (v18 != 1)
    {
      OUTLINED_FUNCTION_14_12();
      while (1)
      {
        OUTLINED_FUNCTION_6_0();
        if (!v24 & v23)
        {
          break;
        }

        OUTLINED_FUNCTION_2_23();
        if (!v24)
        {
          break;
        }

        v22 = v33 + v32;
        if (__OFADD__(v33, v32))
        {
          break;
        }

        OUTLINED_FUNCTION_16_2();
        if (v24)
        {
          goto LABEL_81;
        }
      }
    }

    goto LABEL_80;
  }

LABEL_91:
  __break(1u);
  return result;
}

uint64_t sub_1B1B5A4B8(void *a1)
{
  v1 = [a1 speechSynthesisVoice];
  if (!v1)
  {
    return 0;
  }

  sub_1B1AEA2D8(v1, &selRef_type);
  if (!v2)
  {
    return 0;
  }

  v3 = sub_1B1C2CBE8();
  v5 = v4;

  v6 = v3 == 0x6E6F6870797267 && v5 == 0xE700000000000000;
  if (v6 || (sub_1B1C2D7A8() & 1) != 0)
  {

    return 3;
  }

  v8 = v3 == 0x6C617275656ELL && v5 == 0xE600000000000000;
  if (v8 || (sub_1B1C2D7A8() & 1) != 0)
  {

    return 4;
  }

  if (v3 == 0x657A696C61636F76 && v5 == 0xE900000000000072)
  {
  }

  else
  {
    v10 = sub_1B1C2D7A8();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1B1B5A60C(void *a1)
{
  v1 = [a1 speechSynthesisVoice];
  if (!v1)
  {
    return 0;
  }

  sub_1B1AEA2D8(v1, &selRef_quality);
  if (!v2)
  {
    return 0;
  }

  v3 = sub_1B1C2CBE8();
  v5 = v4;

  v6 = v3 == 0x746361706D6F63 && v5 == 0xE700000000000000;
  if (v6 || (sub_1B1C2D7A8() & 1) != 0)
  {

    return 1;
  }

  v8 = v3 == 0x6D75696D657270 && v5 == 0xE700000000000000;
  if (v8 || (sub_1B1C2D7A8() & 1) != 0)
  {

    return 2;
  }

  if (v3 == 0x686D75696D657270 && v5 == 0xEB00000000686769)
  {
  }

  else
  {
    v10 = sub_1B1C2D7A8();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  return 3;
}

uint64_t sub_1B1B5A760(void *a1)
{
  v1 = [a1 speechSynthesisVoice];
  if (!v1)
  {
    return 0;
  }

  sub_1B1AEA2D8(v1, &selRef_gender);
  if (!v2)
  {
    return 0;
  }

  v3 = sub_1B1C2CBE8();
  v5 = v4;

  v6 = v3 == 1701601645 && v5 == 0xE400000000000000;
  if (v6 || (sub_1B1C2D7A8() & 1) != 0)
  {

    return 1;
  }

  v8 = v3 == 0x656C616D6566 && v5 == 0xE600000000000000;
  if (v8 || (sub_1B1C2D7A8() & 1) != 0)
  {

    return 2;
  }

  if (v3 == 0x6C61727475656ELL && v5 == 0xE700000000000000)
  {
  }

  else
  {
    v10 = sub_1B1C2D7A8();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  return 3;
}

uint64_t sub_1B1B5A8A8()
{
  v1 = v0;
  v2 = [v0 speechSynthesisResource];
  if (v2 && (v3 = sub_1B1AEA2D8(v2, &selRef_languageCode), v4))
  {
    v5 = v3;
    v6 = v4;
  }

  else
  {

    v6 = 0xE700000000000000;
    v5 = 0x6E776F6E6B6E75;
  }

  v7 = [v1 speechSynthesisResource];
  if (v7 && (result = sub_1B1AEA2D8(v7, &selRef_resourceVersion), v9))
  {
    v10 = v9;
  }

  else
  {

    result = 0;
    v10 = 0xE000000000000000;
  }

  v11 = HIBYTE(v10) & 0xF;
  v12 = result & 0xFFFFFFFFFFFFLL;
  if ((v10 & 0x2000000000000000) != 0)
  {
    v13 = HIBYTE(v10) & 0xF;
  }

  else
  {
    v13 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v13)
  {

    goto LABEL_81;
  }

  if ((v10 & 0x1000000000000000) != 0)
  {
    sub_1B1B2EFF0(result, v10, 10);
    v15 = v35;
    v31 = v36;
LABEL_80:

    if ((v31 & 1) == 0)
    {
LABEL_82:
      v32 = objc_allocWithZone(type metadata accessor for SynthesisResource());
      v33 = SynthesisResource.init(language:)(v5, v6);
      v34 = OBJC_IVAR___SiriTTSSynthesisResource_version;
      OUTLINED_FUNCTION_15_0();
      swift_beginAccess();
      *&v33[v34] = v15;
      return v33;
    }

LABEL_81:
    v15 = 0;
    goto LABEL_82;
  }

  if ((v10 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (v10 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_1B1C2D578();
    }

    v14 = *result;
    if (v14 == 43)
    {
      if (v12 >= 1)
      {
        if (v12 != 1)
        {
          v15 = 0;
          if (result)
          {
            OUTLINED_FUNCTION_72_1();
            while (1)
            {
              OUTLINED_FUNCTION_6_0();
              if (!v17 & v16)
              {
                goto LABEL_78;
              }

              OUTLINED_FUNCTION_1_22();
              if (!v17)
              {
                goto LABEL_78;
              }

              v15 = v24 + v23;
              if (__OFADD__(v24, v23))
              {
                goto LABEL_78;
              }

              OUTLINED_FUNCTION_16_2();
              if (v17)
              {
                goto LABEL_79;
              }
            }
          }

          goto LABEL_69;
        }

        goto LABEL_78;
      }

      goto LABEL_88;
    }

    if (v14 != 45)
    {
      if (v12)
      {
        v15 = 0;
        if (result)
        {
          while (1)
          {
            v27 = *result - 48;
            if (v27 > 9)
            {
              goto LABEL_78;
            }

            v28 = 10 * v15;
            if ((v15 * 10) >> 64 != (10 * v15) >> 63)
            {
              goto LABEL_78;
            }

            v15 = v28 + v27;
            if (__OFADD__(v28, v27))
            {
              goto LABEL_78;
            }

            ++result;
            if (!--v12)
            {
              goto LABEL_69;
            }
          }
        }

        goto LABEL_69;
      }

LABEL_78:
      v15 = 0;
      v20 = 1;
      goto LABEL_79;
    }

    if (v12 >= 1)
    {
      if (v12 != 1)
      {
        v15 = 0;
        if (result)
        {
          OUTLINED_FUNCTION_72_1();
          while (1)
          {
            OUTLINED_FUNCTION_6_0();
            if (!v17 & v16)
            {
              goto LABEL_78;
            }

            OUTLINED_FUNCTION_1_22();
            if (!v17)
            {
              goto LABEL_78;
            }

            v15 = v19 - v18;
            if (__OFSUB__(v19, v18))
            {
              goto LABEL_78;
            }

            OUTLINED_FUNCTION_16_2();
            if (v17)
            {
              goto LABEL_79;
            }
          }
        }

LABEL_69:
        v20 = 0;
LABEL_79:
        v31 = v20;
        goto LABEL_80;
      }

      goto LABEL_78;
    }

    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  if (result != 43)
  {
    if (result != 45)
    {
      if (v11)
      {
        while (1)
        {
          OUTLINED_FUNCTION_6_0();
          if (!v17 & v16)
          {
            break;
          }

          OUTLINED_FUNCTION_1_22();
          if (!v17)
          {
            break;
          }

          v15 = v30 + v29;
          if (__OFADD__(v30, v29))
          {
            break;
          }

          OUTLINED_FUNCTION_16_2();
          if (v17)
          {
            goto LABEL_79;
          }
        }
      }

      goto LABEL_78;
    }

    if (v11)
    {
      if (v11 != 1)
      {
        OUTLINED_FUNCTION_9_16();
        while (1)
        {
          OUTLINED_FUNCTION_6_0();
          if (!v17 & v16)
          {
            break;
          }

          OUTLINED_FUNCTION_1_22();
          if (!v17)
          {
            break;
          }

          v15 = v22 - v21;
          if (__OFSUB__(v22, v21))
          {
            break;
          }

          OUTLINED_FUNCTION_16_2();
          if (v17)
          {
            goto LABEL_79;
          }
        }
      }

      goto LABEL_78;
    }

    goto LABEL_87;
  }

  if (v11)
  {
    if (v11 != 1)
    {
      OUTLINED_FUNCTION_9_16();
      while (1)
      {
        OUTLINED_FUNCTION_6_0();
        if (!v17 & v16)
        {
          break;
        }

        OUTLINED_FUNCTION_1_22();
        if (!v17)
        {
          break;
        }

        v15 = v26 + v25;
        if (__OFADD__(v26, v25))
        {
          break;
        }

        OUTLINED_FUNCTION_16_2();
        if (v17)
        {
          goto LABEL_79;
        }
      }
    }

    goto LABEL_78;
  }

LABEL_89:
  __break(1u);
  return result;
}

uint64_t sub_1B1B5ABE0(uint64_t a1)
{
  v4 = *(a1 + 8);
  if (v4 == 1819304813)
  {
    v4 = [objc_allocWithZone(type metadata accessor for AudioData()) init];
    v9 = v4 + OBJC_IVAR___SiriTTSAudioData_asbd;
    OUTLINED_FUNCTION_15_0();
    swift_beginAccess();
    v10 = *(a1 + 16);
    *v9 = *a1;
    *(v9 + 16) = v10;
    *(v9 + 32) = *(a1 + 32);
    result = sub_1B1B5CC54(v1);
    if (v11 >> 60 == 15)
    {
      goto LABEL_11;
    }

    v12 = result;
    v13 = v11;
    v14 = (v4 + OBJC_IVAR___SiriTTSAudioData_audioData);
    OUTLINED_FUNCTION_15_0();
    swift_beginAccess();
    v15 = *v14;
    v16 = v14[1];
    *v14 = v12;
    v14[1] = v13;
    sub_1B1A94524(v15, v16);
    return v4;
  }

  if (v4 != 1869641075)
  {
    sub_1B1C2D538();
    MEMORY[0x1B27381B0](0xD000000000000041, 0x80000001B1C4EA90);
    v17 = sub_1B1C2D778();
    MEMORY[0x1B27381B0](v17);

    sub_1B1A9EC9C();
    v18 = OUTLINED_FUNCTION_34();
    OUTLINED_FUNCTION_59(v18, v19);
    *(v20 + 8) = 0;
    *(v20 + 16) = 0xE000000000000000;
    swift_willThrow();
    return v4;
  }

  result = sub_1B1B5CC54(v1);
  if (v6 >> 60 != 15)
  {
    v7 = result;
    v4 = v6;
    type metadata accessor for AudioData();
    v8 = AudioData.__allocating_init(serverOpusBytes:asbd:)(v7, v4, a1);
    if (!v2)
    {
      return v8;
    }

    return v4;
  }

  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1B1B5ADD0()
{
  v1 = [v0 audioInfo];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = sub_1B1B5CCB8(v1);
  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v4 = v2;
  v12 = MEMORY[0x1E69E7CC0];
  result = sub_1B1A9547C(v2);
  if (!result)
  {
LABEL_14:

    return v3;
  }

  v6 = result;
  if (result >= 1)
  {
    v7 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1B2738A20](v7, v4);
      }

      else
      {
        v8 = *(v4 + 8 * v7 + 32);
      }

      v9 = v8;
      [v8 timestamp];
      [v9 offset];
      [v9 length];
      v10 = objc_allocWithZone(type metadata accessor for WordTimingInfo());
      v11 = WordTimingInfo.init(startTiming:textRange:)();
      MEMORY[0x1B2738320]();
      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1B1C2CE98();
      }

      ++v7;
      sub_1B1C2CEC8();
    }

    while (v6 != v7);
    v3 = v12;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1B5AF84(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1B1B5AFB0(v4);
}

uint64_t sub_1B1B5AFB0(uint64_t a1)
{
  OUTLINED_FUNCTION_15_0();
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

uint64_t (*sub_1B1B5AFF4())()
{
  OUTLINED_FUNCTION_15_1();
  swift_beginAccess();
  return j__swift_endAccess;
}

double sub_1B1B5B040()
{
  v1 = 1.0;
  if (*(v0 + 64))
  {
    sub_1B1B53CC0();
    if ((v2 & 0x100000000) == 0)
    {
      v3 = *&v2;
      if (qword_1ED9A9288 != -1)
      {
        OUTLINED_FUNCTION_0_0();
        swift_once();
      }

      v4 = v3;
      v5 = sub_1B1C2C8A8();
      __swift_project_value_buffer(v5, qword_1ED9A9120);
      v6 = sub_1B1C2C888();
      v7 = sub_1B1C2D098();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 134217984;
        v1 = v4;
        *(v8 + 4) = v1;
        _os_log_impl(&dword_1B1A8A000, v6, v7, "Internal setting specifies timeout: %f", v8, 0xCu);
        MEMORY[0x1B2739FD0](v8, -1, -1);
      }

      else
      {

        return v4;
      }
    }
  }

  return v1;
}

uint64_t InlineStreamingAction.init(pool:)()
{
  type metadata accessor for AsynchronousContext();
  swift_allocObject();
  *(v0 + 32) = sub_1B1ADA774();
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 56) = MEMORY[0x1E69E7CC0];
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0;
  *(v0 + 112) = 1;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  *(v0 + 152) = v1;
  sub_1B1B191C4();
  *(v0 + 40) = v2;
  *(v0 + 48) = sub_1B1AA1E5C();
  sub_1B1AA1C5C();
  *(v0 + 64) = v3;
  v4 = type metadata accessor for Timeout();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  *(v0 + 160) = sub_1B1BC78CC();
  v7 = _s14SiriTTSService17PassThroughActionCACycfc_0();

  return v7;
}

uint64_t sub_1B1B5B2E0()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  v5 = *(v0 + 152);

  v6 = *(v0 + 160);
}

uint64_t InlineStreamingAction.deinit()
{
  sub_1B1ADA1CC();
  v0 = Buffer.deinit();
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  v5 = *(v0 + 152);

  v6 = *(v0 + 160);

  return v0;
}

uint64_t InlineStreamingAction.__deallocating_deinit()
{
  v0 = InlineStreamingAction.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 168, 7);
}

void sub_1B1B5B3EC()
{
  v1 = v0;
  v2 = sub_1B1C2C428();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B1AA61C0(&v34);
  if (!v35)
  {
    sub_1B1A90C78(&v34, &qword_1EB761DE0, &qword_1B1C352C0);
    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762318, &qword_1B1C38FA0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    sub_1B1A9EC9C();
    v26 = OUTLINED_FUNCTION_34();
    OUTLINED_FUNCTION_59(v26, v27);
    *(v28 + 8) = 0xD00000000000002ALL;
    *(v28 + 16) = 0x80000001B1C4E880;
    swift_willThrow();
    return;
  }

  v33[0] = v3;
  v7 = v36;
  v8 = v0[16];
  v1[16] = v36;
  v9 = v7;

  v10 = v1[5];
  swift_getObjectType();
  v11 = SynthesizingRequestProtocol.text.getter();
  v13 = v12;
  v14 = *(v10 + 40);

  v33[1] = v10;
  v15 = sub_1B1B20E18(v14, v10, v11, v13);

  if (v15)
  {
    v16 = v1[15];
    v1[15] = v15;
    v17 = v15;

    sub_1B1B3456C(1);
    v18 = v1[6];
    v19 = v33[0];
    if (v18)
    {
      if (qword_1ED9A4DF8 != -1)
      {
        swift_once();
      }

      sub_1B1AEAD14();
      if (qword_1ED9A4DE0 != -1)
      {
        swift_once();
      }

      [v18 postNotificationName:qword_1ED9A4DE8 object:0];
    }

    v20 = v1[20];
    sub_1B1B5B040();
    sub_1B1C2C3A8();
    v21 = OBJC_IVAR____TtC14SiriTTSService7Timeout_timeoutDate;
    OUTLINED_FUNCTION_15_1();
    swift_beginAccess();
    (*(v19 + 40))(v20 + v21, v6, v2);
    swift_endAccess();
    if (qword_1ED9A4D38 != -1)
    {
      swift_once();
    }

    v22 = qword_1ED9A4D40;
    OUTLINED_FUNCTION_17();
    v23 = swift_allocObject();
    swift_weakInit();

    sub_1B1B34568(v22, sub_1B1B5CB28, v23);

    v24 = swift_allocObject();
    *(v24 + 16) = v1;
    *(v24 + 24) = v17;
    v25 = v17;

    sub_1B1BC7124(sub_1B1B5CB30, v24);

    sub_1B1B21958(v25);
  }

  else
  {
    *&v34 = 0;
    *(&v34 + 1) = 0xE000000000000000;
    sub_1B1C2D538();
    MEMORY[0x1B27381B0](0xD000000000000038, 0x80000001B1C4E8B0);
    v36 = v9;
    swift_getWitnessTable();
    sub_1B1C2D788();
    v29 = v34;
    sub_1B1A9EC9C();
    v30 = OUTLINED_FUNCTION_34();
    OUTLINED_FUNCTION_59(v30, v31);
    *(v32 + 8) = v29;
    swift_willThrow();
  }
}

uint64_t sub_1B1B5B8BC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 160);

    sub_1B1BC7598();
  }

  return result;
}

void sub_1B1B5B928(char a1, uint64_t a2)
{
  v4 = sub_1B1B70FE4();
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v7 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v7, qword_1ED9A9120);
    v8 = v5;
    v9 = sub_1B1C2C888();
    v10 = sub_1B1C2D0B8();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      v13 = v5;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v14;
      *v12 = v14;
      _os_log_impl(&dword_1B1A8A000, v9, v10, "Encountered internal inline streaming error: %@", v11, 0xCu);
      sub_1B1A90C78(v12, &qword_1EB7625C0, &qword_1B1C37990);
      MEMORY[0x1B2739FD0](v12, -1, -1);
      MEMORY[0x1B2739FD0](v11, -1, -1);
    }

    else
    {
    }
  }

  v15 = 0xD00000000000001ALL;
  if (*(a2 + 136) > 0.0)
  {
    v16 = "Inline streaming timed out";
    v15 = 0xD00000000000001ELL;
    v17 = 21;
    if (v5)
    {
      goto LABEL_12;
    }

LABEL_11:
    if (a1)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v16 = "ing audio format ";
  v17 = 22;
  if (!v5)
  {
    goto LABEL_11;
  }

LABEL_12:
  v18 = v16 | 0x8000000000000000;
  sub_1B1A9EC9C();
  v19 = swift_allocError();
  *v20 = v17;
  *(v20 + 8) = v15;
  *(v20 + 16) = v18;
  sub_1B1BD2F28(v19);
LABEL_13:
  v21 = *(a2 + 40);
  sub_1B1B22120();
  sub_1B1B21004();
  sub_1B1B3456C(0);
}

void sub_1B1B5BB5C(void *a1, uint64_t a2)
{
  v4 = sub_1B1B70FE4();
  if (v4)
  {
  }

  else
  {
    v5 = *(a2 + 160);
    sub_1B1BC760C();
    sub_1B1B5BC54(a1);
  }
}

void sub_1B1B5BC54(void *a1)
{
  v3 = v1;
  if (*(v1 + 64))
  {
    sub_1B1B55438();
    if (v5 != 2 && (v5 & 1) != 0 && *(v1 + 136) > 0.8)
    {
      if (qword_1ED9A9288 != -1)
      {
        OUTLINED_FUNCTION_0_0();
        swift_once();
      }

      v6 = sub_1B1C2C8A8();
      __swift_project_value_buffer(v6, qword_1ED9A9120);
      v7 = sub_1B1C2C888();
      v8 = sub_1B1C2D098();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_1B1A8A000, v7, v8, "Simulate network stall is on, ignore inline streaming objects", v9, 2u);
        MEMORY[0x1B2739FD0](v9, -1, -1);
      }

      return;
    }
  }

  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (v10)
  {
    [v10 streamingPlaybackBufferSize];
    *(v1 + 144) = v11;
    sub_1B1B59D60(v129);
    v12 = v130;
    *(v1 + 72) = v129[0];
    *(v1 + 88) = v129[1];
    *(v1 + 104) = v12;
    *(v1 + 112) = 0;
    v13 = sub_1B1B5A060();
    v14 = v13;
    v15 = *(v1 + 128);
    if (!v15)
    {
LABEL_66:
      v79 = *(v3 + 48);
      if (v79)
      {
        if (qword_1ED9A4EB8 != -1)
        {
          swift_once();
        }

        [v79 postNotificationName:qword_1ED9A4EC0 object:v14];
      }

      v80 = sub_1B1B5A8A8();
      if (v79)
      {
        if (qword_1ED9A4D20 != -1)
        {
          swift_once();
        }

        [v79 postNotificationName:qword_1ED9A4D28 object:v80];
      }

      v81 = [objc_allocWithZone(type metadata accessor for AudioData()) init];
      sub_1B1B59D60(v131);
      v82 = &v81[OBJC_IVAR___SiriTTSAudioData_asbd];
      OUTLINED_FUNCTION_15_0();
      swift_beginAccess();
      v83 = v131[1];
      *v82 = v131[0];
      *(v82 + 1) = v83;
      *(v82 + 4) = v132;
      type metadata accessor for DataContainer();
      OUTLINED_FUNCTION_17();
      v84 = swift_allocObject();
      *(v84 + 16) = sub_1B1C2CAB8();
      v85 = v81;
      sub_1B1ACC2E4(v81);
      v86 = *(v3 + 128);
      v87 = v86;
      sub_1B1AD7464(v86);
      sub_1B1AA81A8();

      return;
    }

    v121 = v13;
    ObjectType = swift_getObjectType();
    v17 = v15;
    v18 = SynthesizingRequestProtocol.voice.getter(ObjectType);
    v19 = &v18[OBJC_IVAR___SiriTTSSynthesisVoice_name];
    OUTLINED_FUNCTION_11_0();
    swift_beginAccess();
    v21 = *v19;
    v20 = *(v19 + 1);

    if (v20)
    {
      v118 = v17;
      v14 = v121;
      v22 = &v121[OBJC_IVAR___SiriTTSSynthesisVoice_name];
      OUTLINED_FUNCTION_11_0();
      swift_beginAccess();
      v23 = *v22;
      if (v22[1])
      {
        v24 = *v22;
        v23 = sub_1B1C2CBE8();
        v26 = v25;
      }

      else
      {
        v26 = 0;
      }

      v58 = sub_1B1C2CBE8();
      v60 = v59;

      if (!v26)
      {

        goto LABEL_63;
      }

      if (v23 == v58 && v26 == v60)
      {
      }

      else
      {
        v62 = sub_1B1C2D7A8();

        if ((v62 & 1) == 0)
        {
          goto LABEL_63;
        }
      }

      v63 = &v121[OBJC_IVAR___SiriTTSSynthesisVoice_language];
      OUTLINED_FUNCTION_11_0();
      swift_beginAccess();
      v65 = *v63;
      v64 = *(v63 + 1);

      v66 = SynthesizingRequestProtocol.voice.getter(ObjectType);
      v67 = &v66[OBJC_IVAR___SiriTTSSynthesisVoice_language];
      OUTLINED_FUNCTION_11_0();
      swift_beginAccess();
      v69 = *v67;
      v68 = *(v67 + 1);

      if (v65 != v69 || v64 != v68)
      {
        v71 = sub_1B1C2D7A8();

        v14 = v121;
        if (v71)
        {

          goto LABEL_66;
        }

LABEL_63:
        sub_1B1C2D538();

        OUTLINED_FUNCTION_12_10();
        v125 = v73;
        v127 = v72;
        v74 = [v14 description];
        v75 = sub_1B1C2CB58();
        v77 = v76;

        MEMORY[0x1B27381B0](v75, v77);

        MEMORY[0x1B27381B0](32, 0xE100000000000000);
        sub_1B1A9EC9C();
        OUTLINED_FUNCTION_34();
        *v78 = 23;
        *(v78 + 8) = v125;
        *(v78 + 16) = v127;
        swift_willThrow();

        return;
      }
    }

    else
    {
    }

    v14 = v121;
    goto LABEL_66;
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    objc_opt_self();
    v28 = swift_dynamicCastObjCClass();
    if (v28)
    {
      v29 = v28;
      if (*(v1 + 48))
      {
        if (qword_1ED9A4E88 != -1)
        {
          swift_once();
        }

        v30 = *(v1 + 136);
        sub_1B1ADED40();
      }

      OUTLINED_FUNCTION_11_0();
      swift_beginAccess();
      if (sub_1B1A9547C(*(v1 + 152)))
      {
        v31 = *(v1 + 152);
        v32 = sub_1B1A9547C(v31);
        if (v32)
        {
          v33 = v32;
          if (v32 < 1)
          {
            __break(1u);
            goto LABEL_112;
          }

          for (i = 0; i != v33; i = i + 1)
          {
            if ((v31 & 0xC000000000000001) != 0)
            {
              MEMORY[0x1B2738A20](i, v31);
            }

            else
            {
              v35 = *(v31 + 8 * i + 32);
            }

            sub_1B1AA81A8();
          }
        }
      }

      if (![v29 errorCode] || objc_msgSend(v29, sel_errorCode) == 200)
      {
        v36 = *(v1 + 160);
        sub_1B1BC7598();
        return;
      }

      sub_1B1C2D538();
      MEMORY[0x1B27381B0](0xD000000000000036, 0x80000001B1C4E9E0);
      [v29 errorCode];
      v96 = sub_1B1C2D778();
      MEMORY[0x1B27381B0](v96);

      MEMORY[0x1B27381B0](8236, 0xE200000000000000);
      v97 = sub_1B1B5CD20(v29);
      if (!v98)
      {
        goto LABEL_115;
      }

      MEMORY[0x1B27381B0](v97);

      v94 = 0;
      v95 = 0xE000000000000000;
    }

    else
    {
      sub_1B1C2D538();

      OUTLINED_FUNCTION_12_10();
      v126 = v89 + 18;
      v128 = v88;
      v90 = [a1 description];
      v91 = sub_1B1C2CB58();
      v93 = v92;

      MEMORY[0x1B27381B0](v91, v93);

      v94 = v126;
      v95 = v128;
    }

    sub_1B1A9EC9C();
    v99 = OUTLINED_FUNCTION_34();
    OUTLINED_FUNCTION_59(v99, v100);
    *(v101 + 8) = v94;
    *(v101 + 16) = v95;
    goto LABEL_79;
  }

  if (*(v1 + 112))
  {
    sub_1B1A9EC9C();
    OUTLINED_FUNCTION_34();
    *v27 = 20;
    *(v27 + 8) = 0xD000000000000045;
    *(v27 + 16) = 0x80000001B1C4EA20;
LABEL_79:
    swift_willThrow();
    return;
  }

  v38 = *(v1 + 96);
  v37 = *(v1 + 104);
  v40 = *(v1 + 80);
  v39 = *(v1 + 88);
  v133[0] = *(v1 + 72);
  v133[1] = v40;
  v133[2] = v39;
  v133[3] = v38;
  v133[4] = v37;
  v41 = sub_1B1B5ABE0(v133);
  if (v2)
  {
    return;
  }

  v31 = v41;
  v42 = sub_1B1B5ADD0();
  v43 = sub_1B1A9547C(v42);
  if (!v43)
  {

    goto LABEL_82;
  }

  v33 = v43;
  v117 = v31;
  v124 = MEMORY[0x1E69E7CC0];
  sub_1B1C2D5B8();
  if (v33 < 0)
  {
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  v44 = 0;
  v122 = v42 & 0xC000000000000001;
  v119 = v42;
  v120 = v1;
  do
  {
    if (v122)
    {
      v45 = MEMORY[0x1B2738A20](v44, v42);
    }

    else
    {
      v45 = *(v42 + 8 * v44 + 32);
    }

    v46 = v45;
    v47 = *(v3 + 128);
    if (v47)
    {
      v48 = OBJC_IVAR___SiriTTSWordTimingInfo_startTime;
      OUTLINED_FUNCTION_11_0();
      swift_beginAccess();
      v49 = *&v46[v48];
      type metadata accessor for NSRangeUtil();
      v50 = &v46[OBJC_IVAR___SiriTTSWordTimingInfo_textRange];
      OUTLINED_FUNCTION_11_0();
      swift_beginAccess();
      v52 = *v50;
      v51 = v50[1];
      swift_getObjectType();
      v53 = v47;
      v54 = SynthesizingRequestProtocol.text.getter();
      static NSRangeUtil.mapUtf8RangeToUtf16(_:inText:)(v52, v51, v54, v55);

      v56 = objc_allocWithZone(type metadata accessor for WordTimingInfo());
      v42 = v119;
      v3 = v120;
      WordTimingInfo.init(startTiming:textRange:)();
    }

    v44 = v44 + 1;
    sub_1B1C2D588();
    v57 = *(v124 + 16);
    sub_1B1C2D5C8();
    sub_1B1C2D5D8();
    sub_1B1C2D598();
  }

  while (v33 != v44);

  v31 = v117;
LABEL_82:
  if (*(v3 + 136) == 0.0)
  {
    v102 = *(v3 + 48);
    if (v102)
    {
      if (qword_1ED9A4CD8 != -1)
      {
        swift_once();
      }

      [v102 postNotificationName:qword_1ED9A4CE0 object:{0, v117}];
    }
  }

  v33 = *(v3 + 48);
  if (v33)
  {
    if (qword_1ED9A4CF0 == -1)
    {
LABEL_89:
      [v33 postNotificationName:qword_1ED9A4CF8 object:{0, v117}];
      goto LABEL_90;
    }

LABEL_113:
    swift_once();
    goto LABEL_89;
  }

LABEL_90:
  AudioData.duration.getter();
  *(v3 + 136) = v103 + *(v3 + 136);
  v104 = *(v3 + 160);
  AudioData.duration.getter();
  OUTLINED_FUNCTION_15_1();
  swift_beginAccess();
  sub_1B1C2C3C8();
  swift_endAccess();
  type metadata accessor for DataContainer();
  OUTLINED_FUNCTION_17();
  v105 = swift_allocObject();
  *(v105 + 16) = sub_1B1C2CAB8();
  v106 = v31;
  sub_1B1ACC2E4(v31);

  sub_1B1ACC308(v107);
  v108 = *(v3 + 128);
  v109 = v108;
  sub_1B1AD7464(v108);
  if (*(v3 + 136) >= *(v3 + 144))
  {
    OUTLINED_FUNCTION_15_0();
    swift_beginAccess();
    if (!sub_1B1A9547C(*(v3 + 152)))
    {
LABEL_102:
      sub_1B1AA81A8();
      goto LABEL_103;
    }

    v123 = v106;
    v111 = *(v3 + 152);
    v112 = sub_1B1A9547C(v111);
    if (!v112)
    {
LABEL_101:
      v116 = *(v3 + 152);
      *(v3 + 152) = MEMORY[0x1E69E7CC0];

      v106 = v123;
      goto LABEL_102;
    }

    v113 = v112;
    if (v112 >= 1)
    {

      for (j = 0; j != v113; ++j)
      {
        if ((v111 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1B2738A20](j, v111);
        }

        else
        {
          v115 = *(v111 + 8 * j + 32);
        }

        sub_1B1AA81A8();
      }

      goto LABEL_101;
    }

    __break(1u);
LABEL_115:
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_15_1();
  swift_beginAccess();

  MEMORY[0x1B2738320](v110);
  sub_1B1B3E0D4(*((*(v3 + 152) & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_1B1C2CEC8();
  swift_endAccess();
LABEL_103:
  if (v33)
  {
    if (qword_1ED9A4EA8 != -1)
    {
      swift_once();
    }

    [v33 postNotificationName:qword_1ED9A4EB0 object:{v106, v117}];
    if (qword_1ED9A4DA0 != -1)
    {
      swift_once();
    }

    sub_1B1AC4DD4();
  }

  else
  {
  }
}

uint64_t sub_1B1B5CADC@<X0>(uint64_t *a1@<X8>)
{
  result = InlineStreamingAction.__allocating_init(pool:)();
  *a1 = result;
  return result;
}

uint64_t sub_1B1B5CC54(void *a1)
{
  v1 = [a1 audioData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1B1C2C2B8();

  return v3;
}

uint64_t sub_1B1B5CCB8(void *a1)
{
  v2 = [a1 wordTimingInfoList];

  if (!v2)
  {
    return 0;
  }

  sub_1B1B5CD84();
  v3 = sub_1B1C2CE78();

  return v3;
}

uint64_t sub_1B1B5CD20(void *a1)
{
  v1 = [a1 errorMessage];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1B1C2CB58();

  return v3;
}

unint64_t sub_1B1B5CD84()
{
  result = qword_1EB762800;
  if (!qword_1EB762800)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB762800);
  }

  return result;
}

void __swiftcall TTSError.nsError()(NSError *__return_ptr retstr)
{
  v2 = *v1;
  v4 = *(v1 + 1);
  v3 = *(v1 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB762470, &qword_1B1C35D80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B1C361C0;
  v6 = *MEMORY[0x1E696A578];
  v7 = sub_1B1C2CB58();
  v8 = MEMORY[0x1E69E6158];
  *(inited + 32) = v7;
  *(inited + 40) = v9;
  *(inited + 72) = v8;
  if (v3)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0;
  }

  v11 = 0xE000000000000000;
  if (v3)
  {
    v11 = v3;
  }

  *(inited + 48) = v10;
  *(inited + 56) = v11;
  v12 = qword_1B1C39280[v2];

  v13 = sub_1B1C2CAB8();
  v14 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  sub_1B1B1AE5C(0x726F727245535454, 0xE800000000000000, v12, v13);
}

SiriTTSService::TTSError::TTSErrorCode_optional __swiftcall TTSError.TTSErrorCode.init(rawValue:)(Swift::Int rawValue)
{
  if (!v2 & v1)
  {
    switch(rawValue)
    {
      case 400:
        v4 = 20;
        break;
      case 401:
        v4 = 21;
        break;
      case 402:
        v4 = 22;
        break;
      case 403:
        v4 = 23;
        break;
      default:
        if (rawValue == 200)
        {
          v4 = 14;
        }

        else if (rawValue == 500)
        {
          v4 = 24;
        }

        else
        {
          v4 = 25;
        }

        break;
    }
  }

  else
  {
    v4 = 7;
    switch(rawValue)
    {
      case 'd':
        v4 = 5;
        break;
      case 'e':
        v4 = 6;
        break;
      case 'f':
        break;
      case 'g':
        v4 = 8;
        break;
      case 'h':
        v4 = 9;
        break;
      case 'i':
        v4 = 10;
        break;
      case 'j':
        v4 = 11;
        break;
      case 'k':
        v4 = 12;
        break;
      case 'l':
        v4 = 13;
        break;
      default:
        JUMPOUT(0);
    }
  }

  *v3 = v4;
  return rawValue;
}

uint64_t sub_1B1B5D094@<X0>(uint64_t *a1@<X8>)
{
  result = TTSError.TTSErrorCode.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t TTSError.description.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t static TTSError.daemonConnectionError(with:)@<X0>(uint64_t a1@<X8>)
{
  sub_1B1C2D538();

  swift_getErrorValue();
  v2 = sub_1B1C2D828();
  MEMORY[0x1B27381B0](v2);

  *a1 = 3;
  *(a1 + 8) = 0xD00000000000001BLL;
  *(a1 + 16) = 0x80000001B1C4EB20;
  return result;
}

uint64_t TTSError.errorDescription.getter()
{
  v1 = *v0;
  v3 = *(v0 + 1);
  v2 = *(v0 + 2);

  MEMORY[0x1B27381B0](40, 0xE100000000000000);
  sub_1B1C2D618();
  MEMORY[0x1B27381B0](32, 0xE100000000000000);
  v7 = qword_1B1C39280[v1];
  v4 = sub_1B1C2D778();
  MEMORY[0x1B27381B0](v4);

  MEMORY[0x1B27381B0](8250, 0xE200000000000000);
  if (v2)
  {
    v5 = v3;
  }

  else
  {
    v5 = 1819047278;
  }

  if (!v2)
  {
    v2 = 0xE400000000000000;
  }

  MEMORY[0x1B27381B0](v5, v2);

  MEMORY[0x1B27381B0](41, 0xE100000000000000);
  return 0;
}

uint64_t static TTSError.== infix(_:_:)(char *a1, char *a2)
{
  if (qword_1B1C39280[*a1] == qword_1B1C39280[*a2])
  {
    v2 = *(a1 + 2);
    v3 = *(a2 + 2);
    if (v2)
    {
      if (v3)
      {
        v4 = *(a1 + 1) == *(a2 + 1) && v2 == v3;
        if (v4 || (sub_1B1C2D7A8() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v3)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_1B1B5D350()
{
  result = qword_1EB762808;
  if (!qword_1EB762808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB762808);
  }

  return result;
}

uint64_t sub_1B1B5D3A8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B1B5D3FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TTSError.TTSErrorCode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE8)
  {
    if (a2 + 24 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 24) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 25;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x19;
  v5 = v6 - 25;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for TTSError.TTSErrorCode(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 24 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 24) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE7)
  {
    v6 = ((a2 - 232) >> 8) + 1;
    *result = a2 + 24;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 24;
        }

        break;
    }
  }

  return result;
}

uint64_t SynthesisRouter.Route.hashValue.getter()
{
  v1 = *v0;
  sub_1B1C2D888();
  MEMORY[0x1B2738D60](v1);
  return sub_1B1C2D8E8();
}

unint64_t sub_1B1B5D65C()
{
  result = qword_1EB762810;
  if (!qword_1EB762810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB762810);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SynthesisRouter(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SynthesisRouter.Route(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SynthesisRouter.Route(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t DirectedAcyclicGraph.traverse(startNode:nextNode:)(void (**a1)(char *, uint64_t), void (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v129 = a3;
  v128 = a2;
  v150 = a1;
  v136 = a4;
  v5 = *(a4 + 16);
  OUTLINED_FUNCTION_35_1();
  v149 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B1C2D2B8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_35_1();
  v147 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_132();
  OUTLINED_FUNCTION_2_24();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_2_24();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v119 - v19;
  OUTLINED_FUNCTION_35_1();
  v155 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_132();
  OUTLINED_FUNCTION_2_24();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_2_24();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_2_24();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_2_24();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_2_24();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_2_24();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_7_1();
  v148 = v31;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_7_1();
  v138 = v33;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_7_1();
  v144 = v35;
  OUTLINED_FUNCTION_16_0();
  v37 = MEMORY[0x1EEE9AC00](v36);
  v39 = &v119 - v38;
  v40 = MEMORY[0x1EEE9AC00](v37);
  v42 = &v119 - v41;
  MEMORY[0x1EEE9AC00](v40);
  v151 = &v119 - v43;
  v44 = *v4;
  v145 = v4[1];
  v158 = v44;
  OUTLINED_FUNCTION_17_13();
  v45 = sub_1B1C2CEF8();
  OUTLINED_FUNCTION_1_23();
  WitnessTable = swift_getWitnessTable();
  result = sub_1B1C2CFD8();
  if (result)
  {
    return result;
  }

  v153 = *(v155 + 2);
  v154 = (v155 + 16);
  (v153)(v42, v150, v12);
  OUTLINED_FUNCTION_0_22(v42);
  if (v64)
  {
    v158 = v44;
    sub_1B1C2CFC8();
    OUTLINED_FUNCTION_0_22(v42);
    v48 = v155;
    if (!v64)
    {
      (*(v155 + 1))(v42, v12);
    }
  }

  else
  {
    v47 = v151;
    (*(v149 + 4))(v151, v42, v5);
    __swift_storeEnumTagSinglePayload(v47, 0, 1, v5);
    v48 = v155;
  }

  OUTLINED_FUNCTION_17_13();
  v49 = sub_1B1C2CEA8();
  v150 = (v48 + 8);
  v158 = v49;
  v142 = v145 + 32;
  v135 = (v149 + 32);
  v140 = (v147 + 8);
  v141 = (v149 + 8);
  v125 = (v48 + 32);
  v139 = v20;
  v50 = v148;
  v126 = v39;
  v143 = v45;
  v146 = v44;
  v132 = v12;
  while (2)
  {
    v51 = v126;
    v153();
    if (__swift_getEnumTagSinglePayload(v51, 1, v5) == 1)
    {
      v115 = *v150;
      (*v150)(v151, v12);
      v116 = OUTLINED_FUNCTION_10_17();
      (v115)(v116);
    }

    v52 = OUTLINED_FUNCTION_10_17();
    v149 = v53;
    v53(v52);
    OUTLINED_FUNCTION_17_13();
    result = sub_1B1C2CEA8();
    v54 = 0;
    v157 = result;
    v147 = *(v145 + 16);
LABEL_9:
    v55 = v144;
    v56 = TupleTypeMetadata2;
    while (v54 != v147)
    {
      if (v54 >= *(v145 + 16))
      {
        __break(1u);
        goto LABEL_63;
      }

      v57 = *(v142 + 8 * v54);
      v155 = (v54 + 1);

      sub_1B1C2CF08();
      __swift_storeEnumTagSinglePayload(v55, 0, 1, v5);
      v58 = *(v56 + 48);
      v59 = v12;
      v60 = v12;
      v61 = v153;
      v12 = v154;
      (v153)(v20, v55, v59);
      (v61)(&v20[v58], v151, v60);
      OUTLINED_FUNCTION_0_22(v20);
      if (v64)
      {
        v62 = v149;
        (v149)(v55, v60);
        OUTLINED_FUNCTION_0_22(&v20[v58]);
        if (v64)
        {
          v62(v20, v60);
          v12 = v60;
          goto LABEL_22;
        }

        v12 = v60;
LABEL_20:
        v56 = TupleTypeMetadata2;
        result = (*v140)(v20, TupleTypeMetadata2);
        v54 = v155;
        v50 = v148;
      }

      else
      {
        v63 = v138;
        (v61)(v138, v20, v60);
        OUTLINED_FUNCTION_0_22(&v20[v58]);
        if (v64)
        {

          v65 = v144;
          OUTLINED_FUNCTION_14_13();
          v66();
          v67 = v63;
          v55 = v65;
          (*v141)(v67, v5);
          OUTLINED_FUNCTION_13_16();
          goto LABEL_20;
        }

        v68 = OUTLINED_FUNCTION_9_17();
        v69(v68);
        OUTLINED_FUNCTION_11_12();
        v137 = OUTLINED_FUNCTION_15_12();
        v12 = v141;
        v70 = *v141;
        (*v141)(v11, v5);
        v71 = v149;
        (v149)(v144, v60);
        (v70)(v63, v5);
        v20 = v139;
        v71(v139, v60);
        OUTLINED_FUNCTION_13_16();
        if ((v137 & 1) == 0)
        {

          v54 = v155;
          v50 = v148;
          goto LABEL_9;
        }

LABEL_22:
        v72 = v12;
        v73 = *(v57 + 16);
        if (v73)
        {
          v74 = 32;
          do
          {
            v75 = *(v57 + v74);
            sub_1B1C2CF08();
            sub_1B1C2CEE8();
            v74 += 8;
            --v73;
          }

          while (v73);

          v54 = v155;
          v12 = v72;
          v56 = TupleTypeMetadata2;
          v20 = v139;
        }

        else
        {

          v54 = v155;
          v12 = v72;
          v56 = TupleTypeMetadata2;
        }

        v50 = v148;
        v55 = v144;
      }
    }

    v76 = v158;
    v156 = v158;
    if (sub_1B1C2CFD8())
    {
      __swift_storeEnumTagSinglePayload(v50, 1, 1, v5);
    }

    else
    {
      v156 = v76;
      OUTLINED_FUNCTION_6_16();
      swift_getWitnessTable();
      sub_1B1C2CAF8();
    }

    v77 = v130;
    v78 = v76;
    (v153)(v130, v151, v12);
    result = OUTLINED_FUNCTION_0_22(v77);
    if (v64)
    {
LABEL_63:
      __break(1u);
      break;
    }

    v79 = v77;
    v80 = v148;
    v155 = v157;
    v81 = v133;
    v128(v77, v148);
    v133 = v81;
    if (v81)
    {
      v117 = v149;
      (v149)(v80, v12);
      v118 = OUTLINED_FUNCTION_10_17();
      v117(v118);

      return (*v141)(v79, v5);
    }

    v147 = *v141;
    (v147)(v77, v5);
    v82 = v153;
    v83 = *(TupleTypeMetadata2 + 48);
    v84 = v127;
    OUTLINED_FUNCTION_18_5();
    v82();
    (v82)(v84 + v83, v80, v78);
    OUTLINED_FUNCTION_0_22(v84);
    if (v64)
    {
      OUTLINED_FUNCTION_0_22(v84 + v83);
      if (v64)
      {
        v12 = v78;
        OUTLINED_FUNCTION_14_13();
        v85();
        goto LABEL_55;
      }

      goto LABEL_42;
    }

    v86 = v122;
    (v82)(v122, v84, v78);
    OUTLINED_FUNCTION_0_22(v84 + v83);
    if (v87)
    {
      (v147)(v86, v5);
LABEL_42:
      (*v140)(v84, TupleTypeMetadata2);
      goto LABEL_43;
    }

    (*v135)(v11, v84 + v83, v5);
    OUTLINED_FUNCTION_11_12();
    v98 = OUTLINED_FUNCTION_15_12();
    v99 = v147;
    (v147)(v11, v5);
    v99(v86, v5);
    OUTLINED_FUNCTION_14_13();
    v100();
    v12 = v78;
    if (v98)
    {
LABEL_55:

      OUTLINED_FUNCTION_6_16();
      v101 = v143;
      v50 = swift_getWitnessTable();
      v102 = swift_getWitnessTable();
      v103 = v121;
      MEMORY[0x1B27384E0](v101, v50, v102);
      v104 = v103;
      v105 = v149;
      (v149)(v104, v12);
      v106 = OUTLINED_FUNCTION_12_11();
      v105(v106);
      v95 = v151;
      v107 = OUTLINED_FUNCTION_10_17();
      v105(v107);
      v20 = v139;
      goto LABEL_58;
    }

LABEL_43:
    v88 = v153;
    v89 = *(TupleTypeMetadata2 + 48);
    v90 = v124;
    OUTLINED_FUNCTION_18_5();
    v88();
    (v88)(v90 + v89, v151, v78);
    OUTLINED_FUNCTION_0_22(v90);
    if (v64)
    {
      OUTLINED_FUNCTION_0_22(v90 + v89);
      v50 = v123;
      if (v64)
      {
        OUTLINED_FUNCTION_14_13();
        v91();
        v20 = v139;
LABEL_57:
        v113 = OUTLINED_FUNCTION_12_11();
        v114 = v149;
        v149(v113);
        v95 = v151;
        v114(v151, v132);
        v12 = v132;

        goto LABEL_58;
      }

      goto LABEL_51;
    }

    v92 = v120;
    (v88)(v120, v90, v78);
    OUTLINED_FUNCTION_0_22(v90 + v89);
    v94 = v92;
    v50 = v123;
    if (v93)
    {
      (v147)(v94, v5);
LABEL_51:
      (*v140)(v90, TupleTypeMetadata2);
      v20 = v139;
      v111 = v78;
      goto LABEL_52;
    }

    v108 = OUTLINED_FUNCTION_9_17();
    v109(v108);
    OUTLINED_FUNCTION_11_12();
    v110 = OUTLINED_FUNCTION_15_12();
    v111 = v147;
    (v147)(v11, v5);
    v111(v94, v5);
    OUTLINED_FUNCTION_14_13();
    v112();
    v20 = v139;
    OUTLINED_FUNCTION_13_16();
    if (v110)
    {
      goto LABEL_57;
    }

LABEL_52:
    v95 = v151;
    (v153)(v50, v151, v111);
    result = OUTLINED_FUNCTION_0_22(v50);
    if (!v64)
    {

      sub_1B1C2CEE8();
      v96 = OUTLINED_FUNCTION_12_11();
      v97 = v149;
      v149(v96);
      v97(v95, v132);
      v12 = v132;
LABEL_58:
      (*v125)(v95, v134, v12);
      continue;
    }

    break;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1B5E698()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1B1B5E6F8(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_1B1C2CE08();
  }

  __break(1u);
  return result;
}

void sub_1B1B5E780(unint64_t a1, unint64_t a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762320, &unk_1B1C39760);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v143 = &v133 - v8;
  if (sub_1B1C2CDA8())
  {

    return;
  }

  v136 = v2;
  OUTLINED_FUNCTION_1_24();
  v150 = 0x3E6B616570733CLL;
  v151 = 0xE700000000000000;
  v9 = HIBYTE(a2) & 0xF;
  v144 = a2;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v152 = a1;
  v10 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v10 = 11;
  }

  v139 = v10 | (v9 << 16);
  v140 = 4 * v9;
  v135 = 0x80000001B1C4EC20;
  v138 = "Unbalanced phoneme tag";
  v11 = &unk_1F28BB6F8;
  v12 = 15;
  while (1)
  {
    v13 = v12 >> 14;
    if (v12 >> 14 >= v140)
    {
      OUTLINED_FUNCTION_11_13();
      goto LABEL_85;
    }

    v14 = v11;
    a2 = v152;
    v3 = v144;
    v145[0] = v152;
    v145[1] = v144;
    v148 = 27;
    v149 = 0xE100000000000000;
    v15 = sub_1B1C2C4D8();
    v16 = v143;
    v141 = v15;
    __swift_storeEnumTagSinglePayload(v143, 1, 1, v15);
    v142 = sub_1B1A8EDAC();
    v17 = v139;
    v18 = sub_1B1C2D3C8();
    v20 = v19;
    sub_1B1A90C78(v16, &qword_1EB762320, &unk_1B1C39760);
    if (v20)
    {
      v21 = v17;
    }

    else
    {
      v21 = v18;
    }

    if (v13 > v21 >> 14)
    {
      goto LABEL_102;
    }

    v22 = v18;
    v23 = sub_1B1C2CE08();
    MEMORY[0x1B2738180](v23);

    v11 = v14;
    if (v20)
    {
      break;
    }

    v3 = sub_1B1B5E6F8(v18, a2, v3);
    v25 = v24;
    v27 = v26;
    v29 = v28;
    OUTLINED_FUNCTION_3_18();
    if (sub_1B1B5FF00(v30, v31, v32, v33))
    {

      MEMORY[0x1B27381B0](0xD00000000000001CLL, v138 | 0x8000000000000000);
      sub_1B1C2CC68();
      v12 = sub_1B1C2CCA8();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_25_5();
        v11 = v111;
      }

      OUTLINED_FUNCTION_1_24();
      v34 = v11[2];
      if (v34 >= v11[3] >> 1)
      {
        OUTLINED_FUNCTION_23_9();
        v11 = v112;
      }

      v11[2] = v34 + 1;
      v35 = &v11[2 * v34];
      *(v35 + 4) = v3;
      *(v35 + 5) = 0xE700000000000000;
    }

    else
    {
      OUTLINED_FUNCTION_10_18();
      OUTLINED_FUNCTION_3_18();
      if (sub_1B1B5FF00(v36, v37, v38, v39))
      {

        v41 = (v14 + 16);
        v40 = *(v14 + 16);
        OUTLINED_FUNCTION_1_24();
        if (!v42 || ((v43 = &v41[2 * v42], *v43 == v3) ? (v44 = v43[1] == 0xE700000000000000) : (v44 = 0), !v44 && (sub_1B1C2D7A8() & 1) == 0))
        {
          v125 = v151;

          OUTLINED_FUNCTION_29_5();
          v127 = v126 + 16;
LABEL_100:
          sub_1B1A9EC9C();
          swift_allocError();
          *v132 = 1;
          *(v132 + 8) = v127;
          *(v132 + 16) = v125;
          swift_willThrow();
          return;
        }

        MEMORY[0x1B27381B0](0x6E6F68702F3C3E22, 0xEC0000003E656D65);
        OUTLINED_FUNCTION_10_18();
        sub_1B1C2CC68();
        v45 = sub_1B1C2CCA8();
        if (!*v41)
        {
          goto LABEL_103;
        }

        v12 = v45;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1B1C00CB4(v14);
          v11 = v113;
        }

        v46 = v11[2];
        if (!v46)
        {
          goto LABEL_104;
        }

        OUTLINED_FUNCTION_14_14(v46);
      }

      else
      {
        OUTLINED_FUNCTION_9_18();
        OUTLINED_FUNCTION_3_18();
        if (sub_1B1B5FF00(v47, v48, v49, v50))
        {

          sub_1B1B77ADC(v14);
          OUTLINED_FUNCTION_1_24();
          a2 = v144;
          if (!v51)
          {
            goto LABEL_98;
          }

          OUTLINED_FUNCTION_34_5();
          if (v44 && v52 == 0xE600000000000000)
          {
          }

          else
          {
            v54 = sub_1B1C2D7A8();

            if ((v54 & 1) == 0)
            {
LABEL_98:
              v125 = v151;

              OUTLINED_FUNCTION_29_5();
              v127 = v128 + 15;
              goto LABEL_100;
            }
          }

          OUTLINED_FUNCTION_15_13();
          if (!*(v14 + 16))
          {
            goto LABEL_105;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1B1C00CB4(v14);
            v11 = v114;
          }

          v87 = v11[2];
          if (!v87)
          {
            goto LABEL_106;
          }

          OUTLINED_FUNCTION_14_14(v87);
          OUTLINED_FUNCTION_9_18();
          sub_1B1C2CC68();
          v12 = sub_1B1C2CCA8();
        }

        else
        {
          OUTLINED_FUNCTION_28_4();
          OUTLINED_FUNCTION_6_17();
          v59 = sub_1B1B5FF00(v55, v56, v57, v58);
          v137 = v27;
          if (v59)
          {
            sub_1B1B77ADC(v14);
            if (!v60)
            {
              goto LABEL_47;
            }

            OUTLINED_FUNCTION_34_5();
            if (v44 && v61 == 0xE600000000000000)
            {
            }

            else
            {
              v63 = sub_1B1C2D7A8();

              if ((v63 & 1) == 0)
              {
LABEL_47:
                v64 = v137;
                goto LABEL_69;
              }
            }

            OUTLINED_FUNCTION_15_13();
            if (!*(v14 + 16))
            {
              goto LABEL_111;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1B1C00CB4(v14);
              v11 = v117;
            }

            v64 = v137;
            v92 = v11[2];
            if (!v92)
            {
              goto LABEL_112;
            }

            OUTLINED_FUNCTION_14_14(v92);
LABEL_69:
            OUTLINED_FUNCTION_28_4();
            sub_1B1C2CC68();
            OUTLINED_FUNCTION_3_18();
            sub_1B1C2D2F8();
            v145[0] = v3;
            v145[1] = v25;
            v146 = v64;
            v147 = v29;
            OUTLINED_FUNCTION_16_15();
            if (!v44 & v71)
            {
              goto LABEL_107;
            }

            v95 = v93;
            v134 = v94;
            a2 = v143;
            v96 = OUTLINED_FUNCTION_19_7();
            __swift_storeEnumTagSinglePayload(v96, v97, v98, v141);
            sub_1B1B600C4();
            OUTLINED_FUNCTION_7_15();
            v99 = sub_1B1C2D3C8();
            v101 = OUTLINED_FUNCTION_21_9(v99, v100);
            sub_1B1A90C78(v101, &qword_1EB762320, &unk_1B1C39760);
            if (v95)
            {

              if (qword_1ED9A9288 != -1)
              {
                OUTLINED_FUNCTION_0_0();
                swift_once();
              }

              v102 = sub_1B1C2C8A8();
              OUTLINED_FUNCTION_12_1(v102, qword_1ED9A9120);
              v80 = sub_1B1C2C888();
              v103 = sub_1B1C2D0D8();
              os_log_type_enabled(v80, v103);
              OUTLINED_FUNCTION_1_24();
              if (v104)
              {
                v83 = swift_slowAlloc();
                *v83 = 0;
                v84 = v103;
                v85 = v80;
                v86 = "Error in tn override tag, ignore";
                goto LABEL_75;
              }

              goto LABEL_76;
            }

            if (v134 > v64 >> 14)
            {
              goto LABEL_109;
            }

            a2 = v22;
            OUTLINED_FUNCTION_6_17();
            OUTLINED_FUNCTION_31_5();
            v105 = sub_1B1C2D348();
            v145[0] = 0xD000000000000016;
            v145[1] = v135;
            v106 = MEMORY[0x1B27380D0](v105);
            v108 = v107;

            MEMORY[0x1B27381B0](v106, v108);

            MEMORY[0x1B27381B0](15906, 0xE200000000000000);
            MEMORY[0x1B27381B0](v145[0], v145[1]);

            OUTLINED_FUNCTION_6_17();
            OUTLINED_FUNCTION_31_5();
            sub_1B1C2D318();

            v12 = OUTLINED_FUNCTION_36_6();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_25_5();
              v11 = v115;
            }

            OUTLINED_FUNCTION_1_24();
            v109 = v11[2];
            if (v109 >= v11[3] >> 1)
            {
              OUTLINED_FUNCTION_23_9();
              v11 = v116;
            }

            v11[2] = v109 + 1;
            v110 = &v11[2 * v109];
            *(v110 + 4) = 0x73612D796173;
            *(v110 + 5) = 0xE600000000000000;
          }

          else
          {
            OUTLINED_FUNCTION_6_17();
            if ((sub_1B1B5FF00(v65, v66, v67, v68) & 1) == 0)
            {

              v145[0] = 0xD000000000000021;
              v145[1] = 0x80000001B1C4EBF0;
              v129 = MEMORY[0x1B27380D0](v3, v25, v27, v29);
              v131 = v130;

              MEMORY[0x1B27381B0](v129, v131);

              v127 = v145[0];
              v125 = v145[1];
              goto LABEL_100;
            }

            sub_1B1C2CC68();
            OUTLINED_FUNCTION_6_17();
            sub_1B1C2D2F8();
            v145[0] = v3;
            v145[1] = v25;
            v146 = v27;
            v147 = v29;
            OUTLINED_FUNCTION_16_15();
            if (!v44 & v71)
            {
              goto LABEL_108;
            }

            v72 = v69;
            v134 = v70;
            a2 = v143;
            v73 = OUTLINED_FUNCTION_19_7();
            __swift_storeEnumTagSinglePayload(v73, v74, v75, v141);
            sub_1B1B600C4();
            OUTLINED_FUNCTION_7_15();
            v76 = sub_1B1C2D3C8();
            v78 = OUTLINED_FUNCTION_21_9(v76, v77);
            sub_1B1A90C78(v78, &qword_1EB762320, &unk_1B1C39760);
            if (v72)
            {

              if (qword_1ED9A9288 != -1)
              {
                OUTLINED_FUNCTION_0_0();
                swift_once();
              }

              v79 = sub_1B1C2C8A8();
              OUTLINED_FUNCTION_12_1(v79, qword_1ED9A9120);
              v80 = sub_1B1C2C888();
              v81 = sub_1B1C2D0D8();
              os_log_type_enabled(v80, v81);
              OUTLINED_FUNCTION_1_24();
              if (v82)
              {
                v83 = swift_slowAlloc();
                *v83 = 0;
                v84 = v81;
                v85 = v80;
                v86 = "Error in pause tag, ignore";
LABEL_75:
                _os_log_impl(&dword_1B1A8A000, v85, v84, v86, v83, 2u);
                OUTLINED_FUNCTION_14();
                MEMORY[0x1B2739FD0]();
              }

LABEL_76:

              v12 = v22;
            }

            else
            {
              if (v134 > 0xF595CDD585C1)
              {
                goto LABEL_110;
              }

              a2 = v22;
              OUTLINED_FUNCTION_6_17();
              OUTLINED_FUNCTION_31_5();
              v88 = sub_1B1C2D348();
              strcpy(v145, "<break time=");
              HIWORD(v145[1]) = -4864;
              v89 = MEMORY[0x1B27380D0](v88);
              v91 = v90;

              MEMORY[0x1B27381B0](v89, v91);

              MEMORY[0x1B27381B0](0x3E2F22736DLL, 0xE500000000000000);
              MEMORY[0x1B27381B0](v145[0], v145[1]);

              OUTLINED_FUNCTION_6_17();
              OUTLINED_FUNCTION_31_5();
              sub_1B1C2D318();

              v12 = OUTLINED_FUNCTION_36_6();
              OUTLINED_FUNCTION_1_24();
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_11_13();
  OUTLINED_FUNCTION_1_24();
  while (1)
  {
LABEL_85:
    if (!v11[2])
    {

      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1B1C00CB4(v11);
      v11 = v124;
    }

    v118 = v11[2];
    if (!v118)
    {
      break;
    }

    v119 = v118 - 1;
    v120 = &v11[2 * v119];
    v122 = *(v120 + 4);
    v121 = *(v120 + 5);
    v11[2] = v119;
    v123 = v122 == v3 && v121 == 0xE700000000000000;
    if (v123 || (sub_1B1C2D7A8() & 1) != 0)
    {

      MEMORY[0x1B27381B0](v13, a2);
    }

    else
    {
      v145[0] = 12092;
      v145[1] = 0xE200000000000000;
      MEMORY[0x1B27381B0](v122, v121);

      MEMORY[0x1B27381B0](62, 0xE100000000000000);
      MEMORY[0x1B27381B0](v145[0], v145[1]);
    }
  }

  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
}

uint64_t sub_1B1B5F378()
{
  sub_1B1C2D318();
  sub_1B1C2CC68();
  MEMORY[0x1B27380D0](15, 7, 0, 0xE000000000000000);
  sub_1B1C2CCC8();
  v0 = sub_1B1C2D338();
  MEMORY[0x1B27380D0](v0);

  sub_1B1B3B7CC();
  sub_1B1C2CCC8();
  return sub_1B1C2D338();
}

uint64_t RequestPreprocessAction.deinit()
{
  v0 = Buffer.deinit();
  v1 = *(v0 + 32);

  return v0;
}

uint64_t sub_1B1B5F494@<X0>(uint64_t *a1@<X8>)
{
  result = RequestPreprocessAction.__allocating_init(pool:)();
  *a1 = result;
  return result;
}

uint64_t sub_1B1B5F4BC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
        {
          break;
        }

        result = sub_1B1C2D7A8();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1B1B5F584(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v92 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = sub_1B1C2D7A8();
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          if (*(v16 - 1) == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ sub_1B1C2D7A8()))
          {
            break;
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = v9 + a4;
          }

          if (v27 < v9)
          {
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
            return;
          }

          if (v10 != v27)
          {
            v87 = v5;
            v89 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = v9 - v10;
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              v33 = *v32;
              v34 = v32[1];
              v35 = v30;
              v36 = v29;
              do
              {
                v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
                if (v37 || (sub_1B1C2D7A8() & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                v33 = *v36;
                v34 = v36[1];
                *v36 = *(v36 - 1);
                *(v36 - 1) = v34;
                *(v36 - 2) = v33;
                v36 -= 2;
              }

              while (!__CFADD__(v35++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while (v31 + 1 != v27);
            v10 = v27;
            v5 = v87;
            v9 = v89;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v88 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v82 = v8[2];
        sub_1B1B04838();
        v8 = v83;
      }

      v39 = v8[2];
      v40 = v39 + 1;
      if (v39 >= v8[3] >> 1)
      {
        sub_1B1B04838();
        v8 = v84;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v9;
      v42[1] = v88;
      v90 = *a1;
      if (!*a1)
      {
        goto LABEL_127;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v8[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v8[4];
            v47 = v8[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_69:
            if (v49)
            {
              goto LABEL_109;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_112;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_117;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v40 < 2)
          {
            goto LABEL_111;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_84:
          if (v64)
          {
            goto LABEL_114;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_116;
          }

          if (v71 < v63)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v43 - 1 >= v40)
          {
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          sub_1B1B5FBB8((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v90);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v78 < v76)
          {
            goto LABEL_104;
          }

          v79 = v8;
          v80 = v8[2];
          if (v43 > v80)
          {
            goto LABEL_105;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_106;
          }

          v40 = v80 - 1;
          memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          if (!v81)
          {
            goto LABEL_98;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_107;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_108;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_110;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_113;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_118;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v88;
      if (v88 >= v6)
      {
        v92 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_128;
  }

  sub_1B1B5FA8C(&v92, *a1, a3);
LABEL_102:
}

uint64_t sub_1B1B5FA8C(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1B1BDD728(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_1B1B5FBB8((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_1B1B5FBB8(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_1B1AC9DF0(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_1B1C2D7A8() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 16;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 16;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 16;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    *v7 = *v13;
    goto LABEL_17;
  }

  sub_1B1AC9DF0(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_19:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    v16 = *(v10 - 2) == *(v6 - 2) && *(v10 - 1) == *(v6 - 1);
    if (!v16 && (sub_1B1C2D7A8() & 1) != 0)
    {
      v12 = v5 + 16 == v6;
      v6 -= 16;
      if (!v12)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_19;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_36:
  v17 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v17])
  {
    memmove(v6, v4, 16 * v17);
  }

  return 1;
}

uint64_t sub_1B1B5FD5C(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v5 = a1;
  }

  v6 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v6 = 11;
  }

  v7 = v6 | (v5 << 16);
  while (1)
  {
    v9 = ((a4 ^ a3) & 0xFFFFFFFFFFFFC000) != 0;
    if ((a4 ^ a3) < 0x4000)
    {
      break;
    }

    a4 = sub_1B1C2D2D8();
    v10 = sub_1B1C2D328();
    v12 = v11;
    if (v7 < 0x4000)
    {
      goto LABEL_18;
    }

    v13 = v10;
    v7 = sub_1B1C2CC88();
    if (v13 == sub_1B1C2CDD8() && v12 == v14)
    {
    }

    else
    {
      v16 = sub_1B1C2D7A8();

      if ((v16 & 1) == 0)
      {
        return 0;
      }
    }
  }

  if (v7 >= 0x4000)
  {
    sub_1B1C2CC88();
    sub_1B1C2CDD8();
LABEL_18:

    return v9;
  }

  return 1;
}

uint64_t sub_1B1B5FF00(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{

  v6 = a3;
  while ((v6 ^ a4) >= 0x4000)
  {
    v7 = sub_1B1C2D328();
    v9 = v8;
    v6 = sub_1B1C2D2C8();
    v10 = sub_1B1C2CD08();
    if (!v11)
    {

      return 1;
    }

    if (v7 == v10 && v11 == v9)
    {
    }

    else
    {
      v13 = sub_1B1C2D7A8();

      if ((v13 & 1) == 0)
      {
        goto LABEL_15;
      }
    }
  }

  sub_1B1C2CD08();
  v15 = v14;

  if (!v15)
  {
    return 1;
  }

LABEL_15:

  return 0;
}

unint64_t sub_1B1B600C4()
{
  result = qword_1EB762820;
  if (!qword_1EB762820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB762820);
  }

  return result;
}

id sub_1B1B6011C(uint64_t a1)
{
  v2 = v1;
  v33 = sub_1B1C2C0A8();
  v4 = OUTLINED_FUNCTION_7(v33);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_16();
  v11 = v10 - v9;
  v12 = sub_1B1C2C1C8();
  v13 = OUTLINED_FUNCTION_7(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_16();
  v20 = v19 - v18;
  v21 = &v1[OBJC_IVAR____TtC14SiriTTSService19TTSAssetStaticVoice_lazyAssetType];
  *v21 = 0;
  *(v21 + 1) = 0;
  v22 = (v21 + 8);
  sub_1B1A8E474(0, &qword_1ED9A9810, 0x1E696AAE8);
  (*(v15 + 16))(v20, a1, v12);
  v23 = sub_1B1AB30DC(v20);
  if (v23)
  {
    v24 = v23;
    v32 = v15;
    v25 = v2;
    *&v2[OBJC_IVAR____TtC14SiriTTSService19TTSAssetStaticVoice_root] = v23;
    OUTLINED_FUNCTION_37_5();
    *&v36 = v26;
    *(&v36 + 1) = 0xE900000000000061;
    (*(v6 + 104))(v11, *MEMORY[0x1E6968F58], v33);
    sub_1B1A8EDAC();
    v27 = v24;
    sub_1B1C2C1B8();
    (*(v6 + 8))(v11, v33);
    v28 = sub_1B1AB30DC(v20);
    if (!v28)
    {
      v28 = v27;
    }

    *&v25[OBJC_IVAR____TtC14SiriTTSService19TTSAssetStaticVoice_asset] = v28;
    if (sub_1B1AB5B4C(v27))
    {
      OUTLINED_FUNCTION_29_6("MobileAssetProperties");

      if (*(&v37 + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761C30, &unk_1B1C38180);
        if (swift_dynamicCast())
        {
          v29 = v34;
LABEL_12:

          *&v25[OBJC_IVAR____TtC14SiriTTSService19TTSAssetStaticVoice_attr] = v29;
          v35.receiver = v25;
          v35.super_class = type metadata accessor for TTSAssetStaticVoice();
          v30 = objc_msgSendSuper2(&v35, sel_init);
          (*(v32 + 8))(a1, v12);
          return v30;
        }

LABEL_11:
        v29 = sub_1B1C2CAB8();
        goto LABEL_12;
      }
    }

    else
    {
      v36 = 0u;
      v37 = 0u;
    }

    sub_1B1A90C78(&v36, &qword_1EB761DE0, &qword_1B1C352C0);
    goto LABEL_11;
  }

  (*(v15 + 8))(a1, v12);
  sub_1B1A90C78(v22, &qword_1EB762860, &qword_1B1C39548);
  type metadata accessor for TTSAssetStaticVoice();
  swift_deallocPartialClassInstance();
  return 0;
}

id sub_1B1B604E8@<X0>(void **a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  if (!*a1)
  {
    v7 = [*(a2 + OBJC_IVAR____TtC14SiriTTSService19TTSAssetStaticVoice_asset) bundleIdentifier];
    if (v7)
    {
      v8 = v7;
      sub_1B1C2CB58();

LABEL_10:
      sub_1B1A8E474(0, &qword_1ED9A99D0, off_1E7AF1A98);
      v12 = sub_1B1AAFB2C();
      *a1 = v12;
      *a3 = v12;
      v13 = v12;
      v4 = 0;
      return v4;
    }

    v9 = [*(a2 + OBJC_IVAR____TtC14SiriTTSService19TTSAssetStaticVoice_root) infoDictionary];
    if (v9)
    {
      v10 = v9;
      v11 = sub_1B1C2CA98();

      sub_1B1A93AEC(0xD000000000000012, 0x80000001B1C4EF80, v11);

      if (*(&v16 + 1))
      {
        swift_dynamicCast();
        goto LABEL_10;
      }
    }

    else
    {
      v15 = 0u;
      v16 = 0u;
    }

    sub_1B1A90C78(&v15, &qword_1EB761DE0, &qword_1B1C352C0);
    goto LABEL_10;
  }

  *a3 = v4;
  return v4;
}

uint64_t sub_1B1B607B4()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriTTSService19TTSAssetStaticVoice_attr);
  sub_1B1A93AEC(0x64496563696F56, 0xE700000000000000, v1);
  if (v94)
  {
    v2 = MEMORY[0x1E69E6158];
    if (swift_dynamicCast())
    {
      v3 = sub_1B1AECD40();
      if (qword_1ED9A98B8 != -1)
      {
        OUTLINED_FUNCTION_13_14();
      }

      v4 = qword_1ED9A98C0;
      sub_1B1A8E474(0, &qword_1ED9A99D0, off_1E7AF1A98);
      v5 = v4;
      v6 = sub_1B1C2D248();

      if ((v6 & 1) == 0)
      {
        strcpy(v91, "speech.voice");
        v32 = sub_1B1A8EDAC();
        OUTLINED_FUNCTION_15_5(v32, v33, v34, v35, v36, v37, v38, v39, v89, v90, v32, v32, 0xD000000000000016, 0x80000001B1C4DDF0, v91[0]);
        OUTLINED_FUNCTION_4();
        v40 = sub_1B1C2D398();
        v42 = v41;

        v92 = v40;
        v93 = v42;
        v91[1] = 0xE900000000000065;
        OUTLINED_FUNCTION_15_5(v43, v44, v45, v46, v47, v48, v49, v50, v2, v32, v32, v32, 0xD000000000000016, 0x80000001B1C4DDF0, 116);
        OUTLINED_FUNCTION_4();
        sub_1B1C2D398();

        return OUTLINED_FUNCTION_43_0();
      }
    }
  }

  else
  {
    sub_1B1A90C78(&v92, &qword_1EB761DE0, &qword_1B1C352C0);
  }

  v7 = sub_1B1AECD40();
  v8 = qword_1ED9A9978;
  v9 = v7;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = qword_1ED9A9980;
  sub_1B1A8E474(0, &qword_1ED9A99D0, off_1E7AF1A98);
  v11 = v10;
  v12 = sub_1B1C2D248();

  if (v12)
  {
    goto LABEL_14;
  }

  v13 = qword_1ED9A98D0;
  v14 = v9;
  if (v13 != -1)
  {
    OUTLINED_FUNCTION_23_0();
  }

  v12 = qword_1ED9A98D8;
  v15 = sub_1B1C2D248();

  if (v15)
  {
LABEL_14:

    v16 = 0x80000001B1C4B5A0;
    type metadata accessor for TTSAsset();
    sub_1B1AED674();
    v17 = sub_1B1C2CBE8();
    v19 = v18;

    sub_1B1B19BF8(v17);
    OUTLINED_FUNCTION_36_7();

    sub_1B1A8E474(0, &qword_1ED9A97D0, off_1E7AF1A78);
    v20 = sub_1B1AEEC94();
    if (qword_1ED9A97D8 != -1)
    {
      OUTLINED_FUNCTION_0_4();
    }

    v21 = qword_1ED9A9830;
    v22 = OUTLINED_FUNCTION_42_6();

    if (v22)
    {
      v23 = 0x746361706D6F632ELL;
    }

    else
    {
      v23 = 0x6D75696D6572702ELL;
    }

    v24 = 0xD00000000000002DLL;
  }

  else
  {
    v27 = qword_1ED9A98A8;
    v28 = v14;
    if (v27 != -1)
    {
      OUTLINED_FUNCTION_21();
    }

    v17 = qword_1ED9A98B0;
    v12 = sub_1B1C2D248();

    if (v12)
    {

      v16 = 0x80000001B1C4B570;
      sub_1B1AED674();
      OUTLINED_FUNCTION_36_7();
      sub_1B1A8E474(0, &qword_1ED9A97D0, off_1E7AF1A78);
      v29 = sub_1B1AEEC94();
      if (qword_1ED9A97D8 != -1)
      {
        OUTLINED_FUNCTION_0_4();
      }

      v24 = 0xD000000000000021;
      v30 = qword_1ED9A9830;
      v31 = OUTLINED_FUNCTION_42_6();

      if (v31)
      {
        v23 = 0x746361706D6F632ELL;
      }

      else
      {
        v23 = 0;
      }

      if (v31)
      {
        v25 = 0xE800000000000000;
      }

      else
      {
        v25 = 0xE000000000000000;
      }

      goto LABEL_21;
    }

    v51 = qword_1ED9A9850;
    v52 = v28;
    if (v51 != -1)
    {
      swift_once();
    }

    v17 = MEMORY[0x1E69E6158];
    v12 = qword_1ED9A97E0;
    v53 = sub_1B1C2D248();

    if (v53)
    {
    }

    else
    {
      if (qword_1ED9A98B8 != -1)
      {
        OUTLINED_FUNCTION_13_14();
      }

      v12 = qword_1ED9A98C0;
      v54 = sub_1B1C2D248();

      if ((v54 & 1) == 0)
      {
        v73 = sub_1B1AECD40();
        v74 = [v73 string];

        v75 = sub_1B1C2CB58();
        v12 = v76;

        v92 = v75;
        v93 = v12;

        MEMORY[0x1B27381B0](46, 0xE100000000000000);

        v24 = v92;
        v16 = v93;
        v92 = sub_1B1AED674();
        v93 = v77;
        v91[1] = 0xE100000000000000;
        v78 = sub_1B1A8EDAC();
        OUTLINED_FUNCTION_15_5(v78, v79, v80, v81, v82, v83, v84, v85, v89, v90, v78, v78, 0, 0xE000000000000000, 45);
        OUTLINED_FUNCTION_4();
        sub_1B1C2D398();
        OUTLINED_FUNCTION_36_7();

        v86 = OUTLINED_FUNCTION_40_4();
        sub_1B1A93AEC(v86, v87 + 15, v1);
        if (v94)
        {
          if (swift_dynamicCast())
          {
            v92 = 46;
            v93 = 0xE100000000000000;
            MEMORY[0x1B27381B0](v91[0], v91[1]);

            v23 = v92;
            v25 = v93;
            goto LABEL_21;
          }
        }

        else
        {
          sub_1B1A90C78(&v92, &qword_1EB761DE0, &qword_1B1C352C0);
        }

        v23 = 0;
        v25 = 0xE000000000000000;
        goto LABEL_21;
      }
    }

    v16 = 0x80000001B1C4B570;
    v92 = sub_1B1AED674();
    v93 = v55;
    v91[1] = 0xE100000000000000;
    v56 = sub_1B1A8EDAC();
    OUTLINED_FUNCTION_15_5(v56, v57, v58, v59, v60, v61, v62, v63, v89, v90, v56, v56, 0, 0xE000000000000000, 45);
    OUTLINED_FUNCTION_4();
    sub_1B1C2D398();

    sub_1B1C2CBE8();
    OUTLINED_FUNCTION_36_7();

    v64 = sub_1B1AEEC94();
    v65 = qword_1ED9A97D8;
    v66 = v64;
    if (v65 != -1)
    {
      OUTLINED_FUNCTION_0_4();
    }

    v24 = 0xD000000000000021;
    v67 = qword_1ED9A9830;
    sub_1B1A8E474(0, &qword_1ED9A97D0, off_1E7AF1A78);
    v68 = v67;
    v69 = sub_1B1C2D248();

    if (v69)
    {
      v23 = 0x746361706D6F632ELL;
    }

    else
    {
      v70 = qword_1ED9A9100;
      v66 = v66;
      if (v70 != -1)
      {
        OUTLINED_FUNCTION_2_0();
      }

      v23 = 0x6D75696D6572702ELL;
      v71 = qword_1ED9A90A8;
      v72 = sub_1B1C2D248();

      if ((v72 & 1) == 0)
      {
        if (qword_1ED9A9628 != -1)
        {
          OUTLINED_FUNCTION_14_0();
        }

        v88 = qword_1ED9A9598;
        sub_1B1C2D248();

        goto LABEL_20;
      }
    }
  }

LABEL_20:
  v25 = 0xE800000000000000;
LABEL_21:
  v92 = v24;
  v93 = v16;

  MEMORY[0x1B27381B0](v12, v17);

  MEMORY[0x1B27381B0](v23, v25);

  return OUTLINED_FUNCTION_43_0();
}

uint64_t sub_1B1B610B4(uint64_t a1, uint64_t a2)
{
  sub_1B1A93AEC(a1, a2, *&v2[OBJC_IVAR____TtC14SiriTTSService19TTSAssetStaticVoice_attr]);
  v13 = OUTLINED_FUNCTION_35_0(v5, v6, v7, v8, v9, v10, v11, v12, v90, v94, v97, v98, v99, v100, v101[0]);
  v15 = sub_1B1A9D80C(v13, v14);
  if (v100)
  {
    v23 = MEMORY[0x1E69E6530];
    OUTLINED_FUNCTION_17_15(v15, v16, v17, v18, v19, v20, v21, v22, v91);
    v24 = swift_dynamicCast();
    if (v24)
    {
      v32 = v91;
      if (v91 <= 19999)
      {
        sub_1B1A90C78(v101, &qword_1EB761DE0, &qword_1B1C352C0);
        return v32;
      }

      sub_1B1C2D0C8();
      if (qword_1ED9A99C0 != -1)
      {
        OUTLINED_FUNCTION_0_13();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762430, &qword_1B1C37B70);
      v60 = swift_allocObject();
      *(v60 + 16) = xmmword_1B1C364D0;
      v61 = MEMORY[0x1E69E65A8];
      *(v60 + 56) = v23;
      *(v60 + 64) = v61;
      *(v60 + 32) = v91;
      v62 = MEMORY[0x1E69E6158];
      *(v60 + 96) = MEMORY[0x1E69E6158];
      v63 = sub_1B1AC9204();
      *(v60 + 104) = v63;
      *(v60 + 72) = a1;
      *(v60 + 80) = a2;

      v64 = [v2 description];
      v65 = sub_1B1C2CB58();
      v67 = v66;

      *(v60 + 136) = v62;
      *(v60 + 144) = v63;
      *(v60 + 112) = v65;
      *(v60 + 120) = v67;
      sub_1B1C2C7C8();
      goto LABEL_90;
    }
  }

  else
  {
    v24 = sub_1B1A90C78(&v97, &qword_1EB761DE0, &qword_1B1C352C0);
  }

  v33 = OUTLINED_FUNCTION_35_0(v24, v25, v26, v27, v28, v29, v30, v31, v91, v95, v97, v98, v99, v100, v101[0]);
  v35 = sub_1B1A9D80C(v33, v34);
  if (!v100)
  {
    OUTLINED_FUNCTION_30();
    sub_1B1A90C78(v54, v55, v56);
    OUTLINED_FUNCTION_30();
LABEL_92:
    sub_1B1A90C78(v57, v58, v59);
    return 0;
  }

  v43 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_17_15(v35, v36, v37, v38, v39, v40, v41, v42, v92);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_91:
    v58 = &qword_1EB761DE0;
    v59 = &qword_1B1C352C0;
    v57 = v101;
    goto LABEL_92;
  }

  v45 = HIBYTE(v96) & 0xF;
  v46 = v93 & 0xFFFFFFFFFFFFLL;
  if ((v96 & 0x2000000000000000) != 0)
  {
    v47 = HIBYTE(v96) & 0xF;
  }

  else
  {
    v47 = v93 & 0xFFFFFFFFFFFFLL;
  }

  if (!v47)
  {
LABEL_90:

    goto LABEL_91;
  }

  if ((v96 & 0x1000000000000000) != 0)
  {

    sub_1B1B2EFF0(v93, v96, 10);
    v32 = v81;
    v83 = v82;

    if (v83)
    {
      goto LABEL_90;
    }

    goto LABEL_85;
  }

  if ((v96 & 0x2000000000000000) == 0)
  {
    if ((v93 & 0x1000000000000000) != 0)
    {
      result = (v96 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_1B1C2D578();
    }

    v48 = *result;
    if (v48 == 43)
    {
      if (v46 >= 1)
      {
        if (v46 != 1)
        {
          v32 = 0;
          if (result)
          {
            OUTLINED_FUNCTION_72_1();
            while (1)
            {
              OUTLINED_FUNCTION_6_0();
              if (!v50 & v49)
              {
                goto LABEL_81;
              }

              OUTLINED_FUNCTION_1_20();
              if (!v50)
              {
                goto LABEL_81;
              }

              v32 = v71 + v70;
              if (__OFADD__(v71, v70))
              {
                goto LABEL_81;
              }

              OUTLINED_FUNCTION_16_2();
              if (v50)
              {
                goto LABEL_82;
              }
            }
          }

          goto LABEL_72;
        }

        goto LABEL_81;
      }

      goto LABEL_97;
    }

    if (v48 != 45)
    {
      if (v46)
      {
        v32 = 0;
        if (result)
        {
          while (1)
          {
            v74 = OUTLINED_FUNCTION_28_5(result);
            if (!v50 & v49)
            {
              goto LABEL_81;
            }

            v78 = 10 * v32;
            if ((v32 * v76) >> 64 != (10 * v32) >> 63)
            {
              goto LABEL_81;
            }

            v32 = v78 + v77;
            if (__OFADD__(v78, v77))
            {
              goto LABEL_81;
            }

            result = (v74 + 1);
            if (v75 == 1)
            {
              goto LABEL_72;
            }
          }
        }

        goto LABEL_72;
      }

LABEL_81:
      v32 = 0;
      v53 = 1;
LABEL_82:
      if (v53)
      {
        goto LABEL_90;
      }

LABEL_85:
      if (v32 <= 19999)
      {
        sub_1B1A90C78(v101, &qword_1EB761DE0, &qword_1B1C352C0);

        return v32;
      }

      sub_1B1C2D0C8();
      if (qword_1ED9A99C0 != -1)
      {
        OUTLINED_FUNCTION_0_13();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762430, &qword_1B1C37B70);
      v84 = swift_allocObject();
      *(v84 + 16) = xmmword_1B1C364D0;
      *(v84 + 56) = v43;
      v85 = sub_1B1AC9204();
      *(v84 + 32) = v93;
      *(v84 + 40) = v96;
      *(v84 + 96) = v43;
      *(v84 + 104) = v85;
      *(v84 + 64) = v85;
      *(v84 + 72) = a1;
      *(v84 + 80) = a2;

      v86 = [v2 description];
      v87 = sub_1B1C2CB58();
      v89 = v88;

      *(v84 + 136) = v43;
      *(v84 + 144) = v85;
      *(v84 + 112) = v87;
      *(v84 + 120) = v89;
      sub_1B1C2C7C8();
      goto LABEL_90;
    }

    if (v46 >= 1)
    {
      if (v46 != 1)
      {
        v32 = 0;
        if (result)
        {
          OUTLINED_FUNCTION_72_1();
          while (1)
          {
            OUTLINED_FUNCTION_6_0();
            if (!v50 & v49)
            {
              goto LABEL_81;
            }

            OUTLINED_FUNCTION_1_20();
            if (!v50)
            {
              goto LABEL_81;
            }

            v32 = v52 - v51;
            if (__OFSUB__(v52, v51))
            {
              goto LABEL_81;
            }

            OUTLINED_FUNCTION_16_2();
            if (v50)
            {
              goto LABEL_82;
            }
          }
        }

LABEL_72:
        v53 = 0;
        goto LABEL_82;
      }

      goto LABEL_81;
    }

    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  v97 = v93;
  v98 = v96 & 0xFFFFFFFFFFFFFFLL;
  if (v93 != 43)
  {
    if (v93 != 45)
    {
      if (v45)
      {
        while (1)
        {
          OUTLINED_FUNCTION_6_0();
          if (!v50 & v49)
          {
            break;
          }

          OUTLINED_FUNCTION_1_20();
          if (!v50)
          {
            break;
          }

          v32 = v80 + v79;
          if (__OFADD__(v80, v79))
          {
            break;
          }

          OUTLINED_FUNCTION_16_2();
          if (v50)
          {
            goto LABEL_82;
          }
        }
      }

      goto LABEL_81;
    }

    if (v45)
    {
      if (v45 != 1)
      {
        OUTLINED_FUNCTION_7_16();
        while (1)
        {
          OUTLINED_FUNCTION_6_0();
          if (!v50 & v49)
          {
            break;
          }

          OUTLINED_FUNCTION_1_20();
          if (!v50)
          {
            break;
          }

          v32 = v69 - v68;
          if (__OFSUB__(v69, v68))
          {
            break;
          }

          OUTLINED_FUNCTION_16_2();
          if (v50)
          {
            goto LABEL_82;
          }
        }
      }

      goto LABEL_81;
    }

    goto LABEL_96;
  }

  if (v45)
  {
    if (v45 != 1)
    {
      OUTLINED_FUNCTION_7_16();
      while (1)
      {
        OUTLINED_FUNCTION_6_0();
        if (!v50 & v49)
        {
          break;
        }

        OUTLINED_FUNCTION_1_20();
        if (!v50)
        {
          break;
        }

        v32 = v73 + v72;
        if (__OFADD__(v73, v72))
        {
          break;
        }

        OUTLINED_FUNCTION_16_2();
        if (v50)
        {
          goto LABEL_82;
        }
      }
    }

    goto LABEL_81;
  }

LABEL_98:
  __break(1u);
  return result;
}

uint64_t sub_1B1B6167C()
{
  v0 = OUTLINED_FUNCTION_22_9();
  result = sub_1B1B610B4(v0, v1);
  v3 = 100000 * result;
  if ((result * 100000) >> 64 != (100000 * result) >> 63)
  {
    __break(1u);
    goto LABEL_5;
  }

  v4 = sub_1B1B610B4(0xD000000000000010, 0x80000001B1C4EF00);
  v5 = __OFADD__(v3, v4);
  result = v3 + v4;
  if (v5)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B1B616FC()
{
  OUTLINED_FUNCTION_27_8(OBJC_IVAR____TtC14SiriTTSService19TTSAssetStaticVoice_attr);
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_16_16();
  v1 = sub_1B1A8EB10();
  if ((v2 & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_23_10(v1, v2, v3);
  if ((OUTLINED_FUNCTION_8_18() & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761C70, &qword_1B1C36250);
  result = swift_allocObject();
  *(result + 16) = xmmword_1B1C361C0;
  *(result + 32) = v5;
  *(result + 40) = v6;
  return result;
}

uint64_t sub_1B1B617E8()
{
  OUTLINED_FUNCTION_27_8(OBJC_IVAR____TtC14SiriTTSService19TTSAssetStaticVoice_attr);
  if (!v0)
  {
    return 0;
  }

  v1 = sub_1B1A8EB10();
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_23_10(v1, v2, v3);
  if (!OUTLINED_FUNCTION_8_18())
  {
    return 0;
  }

  v4 = v9 == 1701601645 && v10 == 0xE400000000000000;
  if (v4 || (OUTLINED_FUNCTION_3() & 1) != 0)
  {

    return 1;
  }

  v6 = v9 == 0x656C616D6566 && v10 == 0xE600000000000000;
  if (v6 || (OUTLINED_FUNCTION_3() & 1) != 0)
  {

    return 2;
  }

  if (v9 == 0x6C61727475656ELL && v10 == 0xE700000000000000)
  {
  }

  else
  {
    v8 = OUTLINED_FUNCTION_3();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  return 3;
}

uint64_t sub_1B1B61958()
{
  OUTLINED_FUNCTION_27_8(OBJC_IVAR____TtC14SiriTTSService19TTSAssetStaticVoice_attr);
  if (!v0)
  {
    return 0;
  }

  v1 = sub_1B1A8EB10();
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_23_10(v1, v2, v3);
  sub_1B1A8E474(0, &qword_1ED9A94B0, 0x1E696AD98);
  if (swift_dynamicCast())
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

id sub_1B1B61A5C()
{
  v0 = TTSAsset.effectiveDiskSize.getter();
  if (v1)
  {
    return 0;
  }

  else
  {
    return [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  }
}

void *sub_1B1B61ADC()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriTTSService19TTSAssetStaticVoice_asset);
  v2 = v1;
  return v1;
}

uint64_t sub_1B1B61B4C()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriTTSService19TTSAssetStaticVoice_attr);

  return sub_1B1A90C78(v0 + OBJC_IVAR____TtC14SiriTTSService19TTSAssetStaticVoice_lazyAssetType + 8, &qword_1EB762860, &qword_1B1C39548);
}

id sub_1B1B61D0C(uint64_t a1)
{
  v2 = sub_1B1C2C1C8();
  v3 = OUTLINED_FUNCTION_7(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_16();
  v10 = v9 - v8;
  v11 = *(v5 + 16);
  OUTLINED_FUNCTION_34_6();
  v12();
  v13 = sub_1B1B6011C(v10);
  v14 = *(v5 + 8);
  v15 = v13;
  v14(a1, v2);
  if (v13)
  {
  }

  return v13;
}

char *sub_1B1B61E34(char *a1, uint64_t a2, uint64_t a3)
{
  v66 = a3;
  v62 = a2;
  v4 = sub_1B1C2C0A8();
  v5 = OUTLINED_FUNCTION_7(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_16();
  v12 = v11 - v10;
  v13 = sub_1B1C2C1C8();
  v14 = OUTLINED_FUNCTION_7(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v14);
  v65 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v61 - v21;
  sub_1B1A8E474(0, &qword_1ED9A9810, 0x1E696AAE8);
  v63 = *(v16 + 16);
  v64 = (v16 + 16);
  v63(v22, a1, v13);
  v23 = sub_1B1AB30DC(v22);
  if (!v23)
  {
    (*(v16 + 8))(a1, v13);

    type metadata accessor for TTSAssetStaticResource();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v24 = v23;
  v61 = v13;
  OUTLINED_FUNCTION_37_5();
  *&v71 = v25;
  *(&v71 + 1) = v26;
  (*(v7 + 104))(v12, *MEMORY[0x1E6968F58], v4);
  sub_1B1A8EDAC();
  v27 = a1;
  sub_1B1C2C1B8();
  (*(v7 + 8))(v12, v4);
  v28 = sub_1B1AB30DC(v22);
  v29 = v24;
  if (!v28)
  {
    v28 = v24;
  }

  v31 = v66;
  v30 = v67;
  *&v67[OBJC_IVAR____TtC14SiriTTSService22TTSAssetStaticResource_asset] = v28;
  v32 = sub_1B1AB5B4C(v24);
  v33 = v16;
  if (!v32)
  {
    v71 = 0u;
    v72 = 0u;
    v34 = v61;
    v35 = v65;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_29_6("MobileAssetProperties");

  v34 = v61;
  v35 = v65;
  if (!*(&v72 + 1))
  {
LABEL_10:
    sub_1B1A90C78(&v71, &qword_1EB761DE0, &qword_1B1C352C0);
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761C30, &unk_1B1C38180);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v36 = sub_1B1C2CAB8();
    goto LABEL_12;
  }

  v36 = v70;
LABEL_12:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761C70, &qword_1B1C36250);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1B1C361C0;
  *(v38 + 32) = v62;
  *(v38 + 40) = v31;
  *(&v72 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F10, &unk_1B1C37DA0);
  *&v71 = v38;
  sub_1B1A9EEE0(&v71, &v70);
  swift_isUniquelyReferenced_nonNull_native();
  v69 = v36;
  sub_1B1A9EEF0();
  *&v30[OBJC_IVAR____TtC14SiriTTSService22TTSAssetStaticResource_assetAttr] = v69;
  v39 = type metadata accessor for TTSAssetStaticResource();
  v68.receiver = v30;
  v68.super_class = v39;
  v37 = objc_msgSendSuper2(&v68, sel_init);
  v40 = sub_1B1C2D0A8();
  if (qword_1ED9A99B8 != -1)
  {
    swift_once();
  }

  v41 = qword_1ED9AA668;
  v42 = OUTLINED_FUNCTION_126();
  (v63)(v42);
  if (os_log_type_enabled(v41, v40))
  {
    v43 = swift_slowAlloc();
    v67 = v29;
    v44 = v43;
    v66 = swift_slowAlloc();
    *&v71 = v66;
    *v44 = 136315650;
    v45 = sub_1B1B62620();
    v47 = v35;
    v48 = sub_1B1A930E4(v45, v46, &v71);

    *(v44 + 4) = v48;
    v65 = v27;
    *(v44 + 12) = 2080;
    sub_1B1B317AC();
    v49 = sub_1B1C2D778();
    v51 = v50;
    v64 = *(v33 + 8);
    v64(v47, v34);
    v52 = sub_1B1A930E4(v49, v51, &v71);

    *(v44 + 14) = v52;
    *(v44 + 22) = 2080;
    v53 = *&v37[OBJC_IVAR____TtC14SiriTTSService22TTSAssetStaticResource_assetAttr];

    sub_1B1C2CAA8();

    v54 = OUTLINED_FUNCTION_126();
    v57 = sub_1B1A930E4(v54, v55, v56);

    *(v44 + 24) = v57;
    _os_log_impl(&dword_1B1A8A000, v41, v40, "Resource Asset %s path %s attributes %s", v44, 0x20u);
    v58 = v66;
    swift_arrayDestroy();
    MEMORY[0x1B2739FD0](v58, -1, -1);
    MEMORY[0x1B2739FD0](v44, -1, -1);

    v64(v65, v34);
  }

  else
  {

    v59 = *(v33 + 8);
    v59(v27, v34);
    v59(v35, v34);
  }

  return v37;
}

uint64_t sub_1B1B62620()
{
  v1 = v0;
  if (qword_1ED9A9960 != -1)
  {
    swift_once();
  }

  v2 = [qword_1ED9A9968 string];
  v3 = sub_1B1C2CB58();

  MEMORY[0x1B27381B0](46, 0xE100000000000000);

  v4 = [v1 primaryLanguage];
  sub_1B1C2CB58();

  v5 = OUTLINED_FUNCTION_126();
  MEMORY[0x1B27381B0](v5);

  return v3;
}

void sub_1B1B62738(uint64_t a1, uint64_t a2)
{
  sub_1B1A93AEC(a1, a2, *(v2 + OBJC_IVAR____TtC14SiriTTSService22TTSAssetStaticResource_assetAttr));
  v11 = OUTLINED_FUNCTION_35_0(v3, v4, v5, v6, v7, v8, v9, v10, v77, v81, v83, v84, v85, v86, v87[0]);
  v13 = sub_1B1A9D80C(v11, v12);
  v20 = MEMORY[0x1E69E7CA0];
  if (v86)
  {
    OUTLINED_FUNCTION_17_15(v13, v14, v15, MEMORY[0x1E69E6530], v16, v17, v18, v19, v78);
    v21 = swift_dynamicCast();
    if (v21)
    {
      sub_1B1A90C78(v87, &qword_1EB761DE0, &qword_1B1C352C0);
      return;
    }
  }

  else
  {
    v21 = sub_1B1A90C78(&v83, &qword_1EB761DE0, &qword_1B1C352C0);
  }

  v29 = OUTLINED_FUNCTION_35_0(v21, v22, v23, v24, v25, v26, v27, v28, v78, v82, v83, v84, v85, v86, v87[0]);
  v31 = sub_1B1A9D80C(v29, v30);
  if (!v86)
  {
    OUTLINED_FUNCTION_30();
    sub_1B1A90C78(v55, v56, v57);
    OUTLINED_FUNCTION_30();
LABEL_27:
    sub_1B1A90C78(v58, v59, v60);
    return;
  }

  OUTLINED_FUNCTION_17_15(v31, v32, v33, MEMORY[0x1E69E6158], v34, v35, v36, v37, v79);
  v38 = swift_dynamicCast();
  if ((v38 & 1) == 0)
  {
    v59 = &qword_1EB761DE0;
    v60 = &qword_1B1C352C0;
    v58 = v87;
    goto LABEL_27;
  }

  v46 = OUTLINED_FUNCTION_44_0(v38, v39, v40, v41, v42, v43, v44, v45, v80);
  if (!v48)
  {
LABEL_75:
    sub_1B1A90C78(v87, &qword_1EB761DE0, &qword_1B1C352C0);

    return;
  }

  if ((v20 & 0x1000000000000000) != 0)
  {
    sub_1B1B2EFF0(v46, v20, 10);
    goto LABEL_75;
  }

  if ((v20 & 0x2000000000000000) == 0)
  {
    if ((v46 & 0x1000000000000000) != 0)
    {
      v49 = ((v20 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v49 = sub_1B1C2D578();
    }

    v50 = *v49;
    if (v50 == 43)
    {
      if (v47 >= 1)
      {
        if (v47 != 1 && v49)
        {
          OUTLINED_FUNCTION_72_1();
          do
          {
            OUTLINED_FUNCTION_6_0();
            if (!v52 & v51)
            {
              break;
            }

            OUTLINED_FUNCTION_3_0();
            if (!v52)
            {
              break;
            }

            if (__OFADD__(v66, v65))
            {
              break;
            }

            OUTLINED_FUNCTION_16_2();
          }

          while (!v52);
        }

        goto LABEL_75;
      }

      goto LABEL_80;
    }

    if (v50 != 45)
    {
      if (v47)
      {
        v69 = 0;
        if (v49)
        {
          do
          {
            v70 = OUTLINED_FUNCTION_28_5(v49);
            if (!v52 & v51)
            {
              break;
            }

            v74 = 10 * v69;
            if ((v69 * v72) >> 64 != (10 * v69) >> 63)
            {
              break;
            }

            v69 = v74 + v73;
            if (__OFADD__(v74, v73))
            {
              break;
            }

            v49 = v70 + 1;
          }

          while (v71 != 1);
        }
      }

      goto LABEL_75;
    }

    if (v47 >= 1)
    {
      if (v47 != 1 && v49)
      {
        OUTLINED_FUNCTION_72_1();
        do
        {
          OUTLINED_FUNCTION_6_0();
          if (!v52 & v51)
          {
            break;
          }

          OUTLINED_FUNCTION_3_0();
          if (!v52)
          {
            break;
          }

          if (__OFSUB__(v54, v53))
          {
            break;
          }

          OUTLINED_FUNCTION_16_2();
        }

        while (!v52);
      }

      goto LABEL_75;
    }

    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  OUTLINED_FUNCTION_68_1();
  if (!v52)
  {
    if (v62 != 45)
    {
      if (v61)
      {
        do
        {
          OUTLINED_FUNCTION_6_0();
          if (!v52 & v51)
          {
            break;
          }

          OUTLINED_FUNCTION_3_0();
          if (!v52)
          {
            break;
          }

          if (__OFADD__(v76, v75))
          {
            break;
          }

          OUTLINED_FUNCTION_16_2();
        }

        while (!v52);
      }

      goto LABEL_75;
    }

    if (v61)
    {
      if (v61 != 1)
      {
        OUTLINED_FUNCTION_7_16();
        do
        {
          OUTLINED_FUNCTION_6_0();
          if (!v52 & v51)
          {
            break;
          }

          OUTLINED_FUNCTION_3_0();
          if (!v52)
          {
            break;
          }

          if (__OFSUB__(v64, v63))
          {
            break;
          }

          OUTLINED_FUNCTION_16_2();
        }

        while (!v52);
      }

      goto LABEL_75;
    }

    goto LABEL_79;
  }

  if (v61)
  {
    if (v61 != 1)
    {
      OUTLINED_FUNCTION_7_16();
      do
      {
        OUTLINED_FUNCTION_6_0();
        if (!v52 & v51)
        {
          break;
        }

        OUTLINED_FUNCTION_3_0();
        if (!v52)
        {
          break;
        }

        if (__OFADD__(v68, v67))
        {
          break;
        }

        OUTLINED_FUNCTION_16_2();
      }

      while (!v52);
    }

    goto LABEL_75;
  }

LABEL_81:
  __break(1u);
}

void sub_1B1B62AC8()
{
  sub_1B1A93AEC(0xD000000000000011, 0x80000001B1C494A0, *(v0 + OBJC_IVAR____TtC14SiriTTSService22TTSAssetStaticResource_assetAttr));
  v1 = v4[3];
  sub_1B1A90C78(v4, &qword_1EB761DE0, &qword_1B1C352C0);
  if (v1)
  {
    v2 = 0x80000001B1C494A0;
    v3 = 0xD000000000000011;
  }

  else
  {
    v3 = OUTLINED_FUNCTION_64();
    v2 = 0xE700000000000000;
  }

  sub_1B1B62738(v3, v2);
}

id sub_1B1B62B74(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_1B1C2CB28();

  return v5;
}

uint64_t sub_1B1B62BE4()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriTTSService22TTSAssetStaticResource_assetAttr);
  sub_1B1A93AEC(0xD000000000000011, 0x80000001B1C494A0, v1);
  if (v5 || (sub_1B1A90C78(&v4, &qword_1EB761DE0, &qword_1B1C352C0), v2 = OUTLINED_FUNCTION_64(), sub_1B1A93AEC(v2, 0xE700000000000000, v1), v5))
  {
    sub_1B1A9EEE0(&v4, v6);
    OUTLINED_FUNCTION_30_8();
    sub_1B1C2D618();
    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  else
  {
    sub_1B1A90C78(&v4, &qword_1EB761DE0, &qword_1B1C352C0);
    OUTLINED_FUNCTION_25_6();
  }

  return OUTLINED_FUNCTION_43_0();
}

id sub_1B1B62CF4(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_1B1C2CE68();

  return v5;
}

uint64_t sub_1B1B62D5C()
{
  OUTLINED_FUNCTION_27_8(OBJC_IVAR____TtC14SiriTTSService22TTSAssetStaticResource_assetAttr);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_16_16();
  v2 = sub_1B1A8EB10();
  if ((v3 & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1B1A93378(*(v0 + 56) + 32 * v2, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F10, &unk_1B1C37DA0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v4 = *(v14 + 16);
  if (!v4)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v15 = MEMORY[0x1E69E7CC0];
  sub_1B1AC9FA8();
  v5 = v15;
  sub_1B1A8EDAC();
  v6 = (v14 + 40);
  do
  {
    v7 = *v6;
    v16[0] = *(v6 - 1);
    v16[1] = v7;
    OUTLINED_FUNCTION_4();
    v8 = sub_1B1C2D398();
    v10 = v9;
    v11 = *(v15 + 16);
    if (v11 >= *(v15 + 24) >> 1)
    {
      sub_1B1AC9FA8();
    }

    *(v15 + 16) = v11 + 1;
    v12 = v15 + 16 * v11;
    *(v12 + 32) = v8;
    *(v12 + 40) = v10;
    v6 += 2;
    --v4;
  }

  while (v4);

  return v5;
}

id sub_1B1B62F28(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_1B1C2CA78();

  return v5;
}

uint64_t sub_1B1B62FA4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB762470, &qword_1B1C35D80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B1C36280;
  *(inited + 32) = 0xD000000000000015;
  *(inited + 40) = 0x80000001B1C41EA0;
  v2 = [v0 primaryLanguage];
  v3 = sub_1B1C2CB58();
  v5 = v4;

  v6 = MEMORY[0x1E69E6158];
  *(inited + 48) = v3;
  *(inited + 56) = v5;
  *(inited + 72) = v6;
  strcpy((inited + 80), "VoiceVersion");
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  sub_1B1B62AC8();
  *(inited + 120) = MEMORY[0x1E69E6530];
  *(inited + 96) = v7;
  return sub_1B1C2CAB8();
}

void sub_1B1B630F4()
{
  sub_1B1A93AEC(0x7A69537465737361, 0xE900000000000065, *(v1 + OBJC_IVAR____TtC14SiriTTSService22TTSAssetStaticResource_assetAttr));
  if (!v43)
  {
    sub_1B1A90C78(v42, &qword_1EB761DE0, &qword_1B1C352C0);
    goto LABEL_73;
  }

  v2 = OUTLINED_FUNCTION_8_18();
  if ((v2 & 1) == 0)
  {
LABEL_73:
    v37 = TTSAsset.effectiveDiskSize.getter();
    if (v38)
    {
      return;
    }

    v15 = v37;
    goto LABEL_75;
  }

  v10 = OUTLINED_FUNCTION_44_0(v2, v3, v4, v5, v6, v7, v8, v9, v41);
  if (!v12)
  {

    goto LABEL_73;
  }

  if ((v0 & 0x1000000000000000) != 0)
  {
    sub_1B1B2EFF0(v10, v0, 10);
    v15 = v39;
    v36 = v40;
LABEL_72:

    if ((v36 & 1) == 0)
    {
LABEL_75:
      [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      return;
    }

    goto LABEL_73;
  }

  if ((v0 & 0x2000000000000000) == 0)
  {
    if ((v10 & 0x1000000000000000) != 0)
    {
      v13 = ((v0 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v13 = sub_1B1C2D578();
    }

    v14 = *v13;
    if (v14 == 43)
    {
      if (v11 >= 1)
      {
        if (v11 != 1)
        {
          v15 = 0;
          if (v13)
          {
            OUTLINED_FUNCTION_72_1();
            while (1)
            {
              OUTLINED_FUNCTION_6_0();
              if (!v17 & v16)
              {
                goto LABEL_70;
              }

              OUTLINED_FUNCTION_2_23();
              if (!v17)
              {
                goto LABEL_70;
              }

              v15 = v26 + v25;
              if (__OFADD__(v26, v25))
              {
                goto LABEL_70;
              }

              OUTLINED_FUNCTION_16_2();
              if (v17)
              {
                goto LABEL_71;
              }
            }
          }

          goto LABEL_61;
        }

        goto LABEL_70;
      }

      goto LABEL_81;
    }

    if (v14 != 45)
    {
      if (v11)
      {
        v15 = 0;
        if (v13)
        {
          while (1)
          {
            v29 = OUTLINED_FUNCTION_28_5(v13);
            if (!v17 & v16)
            {
              goto LABEL_70;
            }

            v33 = 10 * v15;
            if ((v15 * v31) >> 64 != (10 * v15) >> 63)
            {
              goto LABEL_70;
            }

            v15 = v33 + v32;
            if (__OFADD__(v33, v32))
            {
              goto LABEL_70;
            }

            v13 = v29 + 1;
            if (v30 == 1)
            {
              goto LABEL_61;
            }
          }
        }

        goto LABEL_61;
      }

LABEL_70:
      v15 = 0;
      v20 = 1;
      goto LABEL_71;
    }

    if (v11 >= 1)
    {
      if (v11 != 1)
      {
        v15 = 0;
        if (v13)
        {
          OUTLINED_FUNCTION_72_1();
          while (1)
          {
            OUTLINED_FUNCTION_6_0();
            if (!v17 & v16)
            {
              goto LABEL_70;
            }

            OUTLINED_FUNCTION_2_23();
            if (!v17)
            {
              goto LABEL_70;
            }

            v15 = v19 - v18;
            if (__OFSUB__(v19, v18))
            {
              goto LABEL_70;
            }

            OUTLINED_FUNCTION_16_2();
            if (v17)
            {
              goto LABEL_71;
            }
          }
        }

LABEL_61:
        v20 = 0;
LABEL_71:
        v36 = v20;
        goto LABEL_72;
      }

      goto LABEL_70;
    }

    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  OUTLINED_FUNCTION_68_1();
  if (!v17)
  {
    if (v22 != 45)
    {
      if (v21)
      {
        while (1)
        {
          OUTLINED_FUNCTION_6_0();
          if (!v17 & v16)
          {
            break;
          }

          OUTLINED_FUNCTION_2_23();
          if (!v17)
          {
            break;
          }

          v15 = v35 + v34;
          if (__OFADD__(v35, v34))
          {
            break;
          }

          OUTLINED_FUNCTION_16_2();
          if (v17)
          {
            goto LABEL_71;
          }
        }
      }

      goto LABEL_70;
    }

    if (v21)
    {
      if (v21 != 1)
      {
        OUTLINED_FUNCTION_7_16();
        while (1)
        {
          OUTLINED_FUNCTION_6_0();
          if (!v17 & v16)
          {
            break;
          }

          OUTLINED_FUNCTION_2_23();
          if (!v17)
          {
            break;
          }

          v15 = v24 - v23;
          if (__OFSUB__(v24, v23))
          {
            break;
          }

          OUTLINED_FUNCTION_16_2();
          if (v17)
          {
            goto LABEL_71;
          }
        }
      }

      goto LABEL_70;
    }

    goto LABEL_80;
  }

  if (v21)
  {
    if (v21 != 1)
    {
      OUTLINED_FUNCTION_7_16();
      while (1)
      {
        OUTLINED_FUNCTION_6_0();
        if (!v17 & v16)
        {
          break;
        }

        OUTLINED_FUNCTION_2_23();
        if (!v17)
        {
          break;
        }

        v15 = v28 + v27;
        if (__OFADD__(v28, v27))
        {
          break;
        }

        OUTLINED_FUNCTION_16_2();
        if (v17)
        {
          goto LABEL_71;
        }
      }
    }

    goto LABEL_70;
  }

LABEL_82:
  __break(1u);
}

void *sub_1B1B633F4()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriTTSService22TTSAssetStaticResource_asset);
  v2 = v1;
  return v1;
}

id sub_1B1B63458()
{
  v1 = [objc_opt_self() defaultManager];
  v2 = [*(v0 + OBJC_IVAR____TtC14SiriTTSService22TTSAssetStaticResource_asset) bundlePath];
  if (!v2)
  {
    sub_1B1C2CB58();
    v2 = sub_1B1C2CB28();
  }

  v3 = [v1 isDeletableFileAtPath_];

  return v3;
}

uint64_t sub_1B1B63544()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriTTSService22TTSAssetStaticResource_assetAttr);
}

char *sub_1B1B6360C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B1C2C1C8();
  v7 = OUTLINED_FUNCTION_7(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_16();
  v14 = (v13 - v12);
  (*(v9 + 16))(v13 - v12, a1, v6);
  v15 = sub_1B1B61E34(v14, a2, a3);
  v16 = *(v9 + 8);
  v17 = v15;
  v18 = OUTLINED_FUNCTION_126();
  v16(v18);
  if (v15)
  {
  }

  return v15;
}

id sub_1B1B63728(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void *sub_1B1B63794(uint64_t a1, unint64_t a2)
{
  v4 = sub_1B1B64120();
  v5 = v4;
  v6 = "SIRITTSSERVICE_NETWORK_STALL_2";
  if (v4)
  {
    if (v4 == 1)
    {
      v7 = "SIRITTSSERVICE_NETWORK_STALL_3";
    }

    else
    {
      v7 = "vice12Localization";
    }
  }

  else
  {
    v7 = "SIRITTSSERVICE_NETWORK_STALL_2";
  }

  v8 = sub_1B1B63D9C(0xD00000000000001ELL, v7 | 0x8000000000000000, a1, a2, 0x6974737265746E49, 0xED0000736C616974);
  v10 = v9;

  if (!v10)
  {
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v11 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v11, qword_1ED9A9120);

    v12 = sub_1B1C2C888();
    v13 = sub_1B1C2D0B8();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v18 = v15;
      *v14 = 136315394;
      if (v5)
      {
        if (v5 == 1)
        {
          v6 = "SIRITTSSERVICE_NETWORK_STALL_3";
        }

        else
        {
          v6 = "vice12Localization";
        }
      }

      v16 = sub_1B1A930E4(0xD00000000000001ELL, v6 | 0x8000000000000000, &v18);

      *(v14 + 4) = v16;
      *(v14 + 12) = 2080;
      *(v14 + 14) = sub_1B1A930E4(a1, a2, &v18);
      _os_log_impl(&dword_1B1A8A000, v12, v13, "Unable to find retry phrase '%s', %s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B2739FD0](v15, -1, -1);
      MEMORY[0x1B2739FD0](v14, -1, -1);
    }

    return 0;
  }

  return v8;
}

id sub_1B1B639E0()
{
  result = sub_1B1B63A00();
  qword_1EB762868 = result;
  return result;
}

id sub_1B1B63A00()
{
  v0 = sub_1B1C2C0A8();
  v31 = *(v0 - 8);
  v32 = v0;
  v1 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F00, &qword_1B1C36480);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v31 - v9;
  v11 = sub_1B1C2C1C8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v31 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v31 - v20;
  type metadata accessor for Localization();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v23 = [objc_opt_self() bundleForClass_];
  v24 = [v23 resourceURL];

  if (v24)
  {
    sub_1B1C2C168();

    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  __swift_storeEnumTagSinglePayload(v8, v25, 1, v11);
  sub_1B1B480BC(v8, v10);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    sub_1B1B29E6C(v10);
    return 0;
  }

  else
  {
    v33 = 0xD000000000000010;
    v34 = 0x80000001B1C4F060;
    v28 = v31;
    v27 = v32;
    (*(v31 + 104))(v3, *MEMORY[0x1E6968F58], v32);
    sub_1B1A8EDAC();
    sub_1B1C2C1B8();
    (*(v28 + 8))(v3, v27);
    v29 = *(v12 + 8);
    v29(v10, v11);
    (*(v12 + 32))(v21, v19, v11);
    sub_1B1B268F0();
    (*(v12 + 16))(v16, v21, v11);
    v26 = sub_1B1AB30DC(v16);
    v29(v21, v11);
  }

  return v26;
}

void *sub_1B1B63D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v34[4] = *MEMORY[0x1E69E9840];
  v12 = sub_1B1C2C1C8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = v33 - v18;
  if (qword_1EB761628 != -1)
  {
    swift_once();
  }

  if (qword_1EB762868)
  {
    v33[0] = a2;
    v20 = qword_1EB762868;
    v21 = sub_1B1B64204(a3, a4, 0x73676E69727473, 0xE700000000000000, a5, a6, v20);
    if (!v21)
    {

      goto LABEL_8;
    }

    sub_1B1C2C168();

    (*(v13 + 32))(v19, v17, v12);
    v24 = sub_1B1C2C208();
    v26 = v25;
    v27 = objc_opt_self();
    v28 = sub_1B1C2C298();
    v34[0] = 0;
    v29 = [v27 propertyListWithData:v28 options:0 format:0 error:v34];

    if (v29)
    {
      v30 = v34[0];
      sub_1B1C2D3F8();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761EE0, &unk_1B1C38950);
      if (swift_dynamicCast())
      {
        v21 = sub_1B1A945F4(a1, v33[0], v33[1]);

        sub_1B1A94524(v24, v26);

        (*(v13 + 8))(v19, v12);
        goto LABEL_8;
      }

      (*(v13 + 8))(v19, v12);

      sub_1B1A94524(v24, v26);
    }

    else
    {
      v31 = v34[0];
      v32 = sub_1B1C2C058();

      swift_willThrow();
      sub_1B1A94524(v24, v26);

      (*(v13 + 8))(v19, v12);
    }
  }

  v21 = 0;
LABEL_8:
  v22 = *MEMORY[0x1E69E9840];
  return v21;
}

uint64_t sub_1B1B64120()
{
  v0 = sub_1B1B64178(3uLL);
  if (v0 == 2)
  {
    return 2;
  }

  else
  {
    return v0 == 1;
  }
}

unint64_t sub_1B1B64178(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x1B2739FF0](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x1B2739FF0](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1B1B64204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v8 = sub_1B1C2CB28();
  v9 = sub_1B1C2CB28();

  v10 = sub_1B1C2CB28();
  v11 = [a7 URLForResource:v8 withExtension:v9 subdirectory:v10];

  return v11;
}

void *DelegateHandler.__allocating_init(notificationCenter:delegate:request:)()
{
  swift_allocObject();
  swift_getObjectType();
  v0 = OUTLINED_FUNCTION_1_25();

  return sub_1B1ADB5F4(v0, v1, v2, v3);
}

uint64_t static BNNSModelCache.sharedCacheURL.getter()
{
  v0 = sub_1B1C2C0A8();
  v1 = OUTLINED_FUNCTION_7(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_16();
  v8 = v7 - v6;
  v9 = sub_1B1C2C1C8();
  v10 = OUTLINED_FUNCTION_7(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_16();
  v17 = v16 - v15;
  sub_1B1C2C0B8();
  (*(v3 + 104))(v8, *MEMORY[0x1E6968F58], v0);
  sub_1B1A8EDAC();
  sub_1B1C2C1A8();
  (*(v3 + 8))(v8, v0);
  return (*(v12 + 8))(v17, v9);
}

uint64_t sub_1B1B644C4()
{
  v0 = sub_1B1C2C1C8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for BNNSModelCache();
  static BNNSModelCache.sharedCacheURL.getter();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  result = (*(v1 + 32))(v8 + OBJC_IVAR____TtC14SiriTTSService14BNNSModelCache_cacheURL, v4, v0);
  qword_1EB762870 = v8;
  return result;
}

uint64_t BNNSModelCache.__allocating_init(_:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  v6 = OBJC_IVAR____TtC14SiriTTSService14BNNSModelCache_cacheURL;
  v7 = sub_1B1C2C1C8();
  OUTLINED_FUNCTION_45(v7);
  (*(v8 + 32))(v5 + v6, a1);
  return v5;
}

uint64_t static BNNSModelCache.sharedInstance.getter()
{
  if (qword_1EB761630 != -1)
  {
    swift_once();
  }
}

uint64_t BNNSModelCache.init(_:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14SiriTTSService14BNNSModelCache_cacheURL;
  v4 = sub_1B1C2C1C8();
  OUTLINED_FUNCTION_45(v4);
  (*(v5 + 32))(v1 + v3, a1);
  return v1;
}

uint64_t sub_1B1B646F8()
{
  v70[2] = *MEMORY[0x1E69E9840];
  v0 = sub_1B1C2C0A8();
  v1 = OUTLINED_FUNCTION_7(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_16();
  v8 = v7 - v6;
  v9 = sub_1B1C2C1C8();
  v10 = OUTLINED_FUNCTION_7(v9);
  v64 = v11;
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v10);
  v16 = v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v67 = v61 - v17;
  if (qword_1ED9A9288 != -1)
  {
    swift_once();
  }

  v18 = sub_1B1C2C8A8();
  v66 = __swift_project_value_buffer(v18, qword_1ED9A9120);
  v19 = sub_1B1C2C888();
  v20 = sub_1B1C2D0D8();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_1B1A8A000, v19, v20, "Cleaning stale BNNS cache contents...", v21, 2u);
    OUTLINED_FUNCTION_11();
  }

  if (qword_1EB761590 != -1)
  {
    swift_once();
  }

  v70[0] = qword_1EB762338;
  v70[1] = unk_1EB762340;
  (*(v3 + 104))(v8, *MEMORY[0x1E6968F58], v0);
  sub_1B1A8EDAC();
  sub_1B1C2C1B8();
  (*(v3 + 8))(v8, v0);
  v22 = [objc_opt_self() defaultManager];
  v23 = sub_1B1C2C118();
  v70[0] = 0;
  v24 = [v22 contentsOfDirectoryAtURL:v23 includingPropertiesForKeys:0 options:0 error:v70];

  v25 = v70[0];
  if (!v24)
  {
    v49 = v70[0];
    v50 = sub_1B1C2C058();

    swift_willThrow();
    v51 = v50;
    v52 = sub_1B1C2C888();
    v53 = sub_1B1C2D0B8();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = v9;
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *v55 = 138412290;
      v57 = v50;
      v58 = _swift_stdlib_bridgeErrorToNSError();
      *(v55 + 4) = v58;
      *v56 = v58;
      _os_log_impl(&dword_1B1A8A000, v52, v53, "Error listing BNNS cache contents: %@", v55, 0xCu);
      sub_1B1B1AF0C(v56);
      OUTLINED_FUNCTION_11();
      v9 = v54;
      OUTLINED_FUNCTION_11();
    }

    else
    {
    }

    goto LABEL_25;
  }

  v26 = sub_1B1C2CE78();
  v27 = v25;

  v29 = *(v26 + 16);
  if (!v29)
  {

LABEL_25:
    v35 = v67;
    goto LABEL_26;
  }

  v30 = *(v64 + 16);
  v31 = *(v64 + 80);
  v61[1] = v26;
  v32 = v26 + ((v31 + 32) & ~v31);
  v33 = *(v64 + 72);
  v34 = (v64 + 8);
  *&v28 = 138412290;
  v62 = v28;
  v35 = v67;
  v63 = v9;
  v65 = v22;
  v68 = v33;
  v69 = v64 + 16;
  do
  {
    v30(v16, v32, v9);
    if (sub_1B1C2C158())
    {
      (*v34)(v16, v9);
    }

    else
    {
      v36 = sub_1B1C2C118();
      v70[0] = 0;
      v37 = [v22 removeItemAtURL:v36 error:v70];

      if (v37)
      {
        v38 = *v34;
        v39 = v70[0];
        v38(v16, v9);
      }

      else
      {
        v40 = v70[0];
        v41 = sub_1B1C2C058();

        swift_willThrow();
        v42 = v41;
        v43 = sub_1B1C2C888();
        v44 = sub_1B1C2D0B8();

        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          *v45 = v62;
          v47 = v41;
          v48 = _swift_stdlib_bridgeErrorToNSError();
          *(v45 + 4) = v48;
          *v46 = v48;
          _os_log_impl(&dword_1B1A8A000, v43, v44, "Error removing stale BNNS cache contents: %@", v45, 0xCu);
          sub_1B1B1AF0C(v46);
          v9 = v63;
          OUTLINED_FUNCTION_11();
          v35 = v67;
          OUTLINED_FUNCTION_11();
        }

        else
        {
        }

        (*v34)(v16, v9);
        v22 = v65;
      }

      v33 = v68;
    }

    v32 += v33;
    --v29;
  }

  while (v29);

LABEL_26:
  result = (*(v64 + 8))(v35, v9);
  v60 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t BNNSModelCache.deinit()
{
  v1 = OBJC_IVAR____TtC14SiriTTSService14BNNSModelCache_cacheURL;
  v2 = sub_1B1C2C1C8();
  OUTLINED_FUNCTION_45(v2);
  (*(v3 + 8))(v0 + v1);
  return v0;
}

uint64_t BNNSModelCache.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC14SiriTTSService14BNNSModelCache_cacheURL;
  v2 = sub_1B1C2C1C8();
  OUTLINED_FUNCTION_45(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v4, v5);
}

uint64_t type metadata accessor for BNNSModelCache()
{
  result = qword_1EB762878;
  if (!qword_1EB762878)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B1B64EC4()
{
  result = sub_1B1C2C1C8();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t AudioFile.__allocating_init(outputURL:format:)()
{
  v0 = swift_allocObject();
  v1 = OUTLINED_FUNCTION_15();
  AudioFile.init(outputURL:format:)(v1, v2);
  return v0;
}

uint64_t sub_1B1B65000()
{
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t sub_1B1B65034(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_1B1B650BC(v2, v3);
}

uint64_t sub_1B1B65074()
{
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t sub_1B1B650BC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 72);
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
}

uint64_t AudioDumpAction.__allocating_init(pool:)()
{
  v0 = swift_allocObject();
  AudioDumpAction.init(pool:)();
  return v0;
}

uint64_t sub_1B1B651C4@<X0>(uint64_t *a1@<X8>)
{
  result = AudioDumpAction.__allocating_init(pool:)();
  *a1 = result;
  return result;
}

uint64_t dispatch thunk of AudioFile.__allocating_init(outputURL:format:)(uint64_t a1, uint64_t *a2)
{
  v3 = *(v2 + 144);
  v6 = *a2;
  v4 = *(a2 + 3);
  v7 = *(a2 + 1);
  v8 = v4;
  return v3(a1, &v6);
}

uint64_t sub_1B1B65420(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762320, &unk_1B1C39760);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v17 - v6;
  v19 = a1;
  v20 = a2;
  v17 = 45;
  v18 = 0xE100000000000000;
  sub_1B1C2C4D8();
  OUTLINED_FUNCTION_5_20();
  sub_1B1A8EDAC();
  OUTLINED_FUNCTION_11_0();
  sub_1B1C2D3C8();
  v9 = v8;
  v11 = v10;
  result = sub_1B1A90C78(v7, &qword_1EB762320, &unk_1B1C39760);
  if (v11)
  {
    goto LABEL_6;
  }

  v19 = a1;
  v20 = a2;
  v17 = 45;
  v18 = 0xE100000000000000;
  v13 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v13 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v13 >= v9 >> 14)
  {
    OUTLINED_FUNCTION_5_20();
    sub_1B1C2D3C8();
    v15 = v14;
    sub_1B1A90C78(v7, &qword_1EB762320, &unk_1B1C39760);
    if ((v15 & 1) == 0)
    {
      v16 = sub_1B1C2CE08();
      MEMORY[0x1B27380D0](v16);

      return OUTLINED_FUNCTION_72();
    }

LABEL_6:

    return OUTLINED_FUNCTION_72();
  }

  __break(1u);
  return result;
}

id sub_1B1B65618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *&v7[OBJC_IVAR___TTSAssistantAsset_supportedLanguages] = a1;
  v8 = &v7[OBJC_IVAR___TTSAssistantAsset_name];
  *v8 = a2;
  *(v8 + 1) = a3;
  v9 = &v7[OBJC_IVAR___TTSAssistantAsset_identifier];
  *v9 = a4;
  *(v9 + 1) = a5;
  *&v7[OBJC_IVAR___TTSAssistantAsset_assistantOrder] = a6;
  *&v7[OBJC_IVAR___TTSAssistantAsset_assistantGender] = a7;
  v11.receiver = v7;
  v11.super_class = type metadata accessor for AssistantAsset();
  return objc_msgSendSuper2(&v11, sel_init);
}

uint64_t AssistantAsset.name.getter()
{
  v1 = *(v0 + OBJC_IVAR___TTSAssistantAsset_name);
  v2 = *(v0 + OBJC_IVAR___TTSAssistantAsset_name + 8);

  return v1;
}

uint64_t AssistantAsset.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___TTSAssistantAsset_identifier);
  v2 = *(v0 + OBJC_IVAR___TTSAssistantAsset_identifier + 8);

  return v1;
}

id sub_1B1B657FC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  v3 = sub_1B1C2CB28();

  return v3;
}

uint64_t sub_1B1B6584C()
{
  v1 = *(v0 + OBJC_IVAR___TTSAssistantAsset_supportedLanguages);
  if (!v1[2])
  {
    return 0;
  }

  v2 = v1[4];
  v3 = v1[5];

  return v2;
}

uint64_t sub_1B1B65904()
{
  v3 = *(v0 + OBJC_IVAR___TTSAssistantAsset_name);
  v4 = *(v0 + OBJC_IVAR___TTSAssistantAsset_name + 8);

  MEMORY[0x1B27381B0](58, 0xE100000000000000);
  v1 = sub_1B1B6584C();
  MEMORY[0x1B27381B0](v1);

  return v3;
}

uint64_t sub_1B1B65974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((sub_1B1C2CDA8() & 1) == 0)
  {
    return 0;
  }

  if (a3 == a1 && a4 == a2)
  {
    return 1;
  }

  OUTLINED_FUNCTION_72();
  if (sub_1B1C2D7A8())
  {
    return 1;
  }

  MEMORY[0x1B27381B0](45, 0xE100000000000000);
  v10 = sub_1B1C2CDA8();

  return v10 & 1;
}

uint64_t sub_1B1B65A2C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v4 = sub_1B1B65420(a1, a2);
  v6 = v5;
  v97 = type metadata accessor for TTSAsset();
  v7 = [v97 assistantVoiceMaps];
  v8 = *&v7[OBJC_IVAR___TTSAssistantVoiceMaps_voicesForLanguageMap];

  if (*(v8 + 16))
  {
    sub_1B1A8EB10();
    v10 = v9;

    if (v10)
    {

      goto LABEL_6;
    }
  }

  else
  {
  }

  type metadata accessor for Languages();
  v4 = sub_1B1BE3B3C(v4, v6);
  v6 = v11;
LABEL_6:
  v12 = [v97 assistantVoiceMaps];
  v13 = *&v12[OBJC_IVAR___TTSAssistantVoiceMaps_voicesForLanguageMap];

  v14 = 0;
  v15 = 1 << *(v13 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v13 + 64);
  v18 = (v15 + 63) >> 6;
  v19 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v20 = v14;
    if (!v17)
    {
      break;
    }

LABEL_13:
    v21 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v22 = (*(v13 + 48) + ((v14 << 10) | (16 * v21)));
    v24 = *v22;
    v23 = v22[1];

    if (sub_1B1B65974(v4, v6, v24, v23))
    {
      v101 = v19;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = *(v19 + 16);
        sub_1B1AC9FA8();
        v19 = v101;
      }

      v26 = *(v19 + 16);
      v27 = v26 + 1;
      if (v26 >= *(v19 + 24) >> 1)
      {
        v98 = v26 + 1;
        v94 = *(v19 + 16);
        sub_1B1AC9FA8();
        v27 = v98;
        v19 = v101;
        v26 = v94;
      }

      *(v19 + 16) = v27;
      v28 = v19 + 16 * v26;
      *(v28 + 32) = v24;
      *(v28 + 40) = v23;
    }

    else
    {
    }
  }

  while (1)
  {
    v14 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v14 >= v18)
    {

      v29 = 0;
      v91 = v19 + 32;
      v92 = *(v19 + 16);
      v30 = MEMORY[0x1E69E7CC0];
      v90 = v19;
      while (1)
      {
        if (v29 == v92)
        {

          v100 = sub_1B1A9547C(v30);
          if (v100)
          {
            v59 = [v97 assistantVoiceMaps];
            v60 = *&v59[OBJC_IVAR___TTSAssistantVoiceMaps_relativePitchOrderForVoicesMap];

            v61 = sub_1B1B6584C();
            v62 = *(v88 + OBJC_IVAR___TTSAssistantAsset_name);
            v63 = *(v88 + OBJC_IVAR___TTSAssistantAsset_name + 8);
            v101 = v61;
            v102 = v64;

            MEMORY[0x1B27381B0](v62, v63);

            v65 = sub_1B1B2A14C(v101, v102, v60);
            LOBYTE(v62) = v66;

            v96 = v30;
            if (v62)
            {
              v68 = *(v88 + OBJC_IVAR___TTSAssistantAsset_assistantGender);
              v67.n128_u64[0] = 0;
              v69 = 2.5;
              if (v68 == 2)
              {
                v69 = 5.0;
              }

              if (v68 == 1)
              {
                v70 = 0.0;
              }

              else
              {
                v70 = v69;
              }
            }

            else
            {
              v70 = v65;
            }

            v93 = 0;
            v72 = 0;
            v73 = 3.4028e38;
            while (v100 != v72)
            {
              if ((v96 & 0xC000000000000001) != 0)
              {
                v74 = MEMORY[0x1B2738A20](v72, v96, v67);
              }

              else
              {
                if (v72 >= *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_88;
                }

                v74 = *(v96 + 8 * v72 + 32);
              }

              v75 = v74;
              if (__OFADD__(v72, 1))
              {
                goto LABEL_87;
              }

              v76 = [v97 assistantVoiceMaps];
              v77 = *&v76[OBJC_IVAR___TTSAssistantVoiceMaps_relativePitchOrderForVoicesMap];

              v78 = sub_1B1B6584C();
              v79 = *&v75[OBJC_IVAR___TTSAssistantAsset_name];
              v80 = *&v75[OBJC_IVAR___TTSAssistantAsset_name + 8];
              v101 = v78;
              v102 = v81;

              MEMORY[0x1B27381B0](v79, v80);

              if (!*(v77 + 16))
              {
                goto LABEL_93;
              }

              v82 = sub_1B1A8EB10();
              v84 = v83;

              if ((v84 & 1) == 0)
              {
                goto LABEL_94;
              }

              v85 = *(*(v77 + 56) + 8 * v82);

              v86 = vabds_f32(v85, v70);
              if (v86 < v73)
              {

                v73 = v86;
                v93 = v75;
              }

              else
              {
              }

              ++v72;
            }

            v71 = v93;
          }

          else
          {
            v71 = 0;
          }

          return v71;
        }

        if (v29 >= *(v19 + 16))
        {
          goto LABEL_84;
        }

        v31 = (v91 + 16 * v29);
        v32 = *v31;
        v33 = v31[1];

        v34 = [v97 assistantVoiceMaps];
        v35 = *&v34[OBJC_IVAR___TTSAssistantVoiceMaps_voicesForLanguageMap];

        if (*(v35 + 16) && (v36 = sub_1B1A8EB10(), (v37 & 1) != 0))
        {
          v38 = *(*(v35 + 56) + 8 * v36);
        }

        else
        {
          v38 = MEMORY[0x1E69E7CC0];
        }

        if (v38 >> 62)
        {
          v39 = sub_1B1C2D468();
        }

        else
        {
          v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v40 = v30 >> 62;
        if (v30 >> 62)
        {
          v41 = sub_1B1C2D468();
        }

        else
        {
          v41 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v42 = v41 + v39;
        if (__OFADD__(v41, v39))
        {
          goto LABEL_85;
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
        {
          break;
        }

        if (v40)
        {
          goto LABEL_39;
        }

        v43 = v30 & 0xFFFFFFFFFFFFFF8;
        if (v42 > *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_38;
        }

LABEL_41:
        v99 = v29 + 1;
        v45 = *(v43 + 16);
        v46 = (*(v43 + 24) >> 1) - v45;
        v47 = v43 + 8 * v45;
        if (v38 >> 62)
        {
          v49 = sub_1B1C2D468();
          if (!v49)
          {
            goto LABEL_55;
          }

          v50 = v49;
          v89 = sub_1B1C2D468();
          if (v46 < v89)
          {
            goto LABEL_91;
          }

          if (v50 < 1)
          {
            goto LABEL_92;
          }

          v95 = v30;
          v51 = v47 + 32;
          sub_1B1B67998();
          for (i = 0; i != v50; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7628B8, &unk_1B1C396C0);
            v53 = sub_1B1B37C24(&v101, i, v38);
            v55 = *v54;
            v53(&v101, 0);
            *(v51 + 8 * i) = v55;
          }

          v30 = v95;
          v48 = v89;
LABEL_51:

          v19 = v90;
          v29 = v99;
          if (v48 < v39)
          {
            goto LABEL_86;
          }

          if (v48 > 0)
          {
            v56 = *(v43 + 16);
            v57 = __OFADD__(v56, v48);
            v58 = v56 + v48;
            if (v57)
            {
              goto LABEL_89;
            }

            *(v43 + 16) = v58;
          }
        }

        else
        {
          v48 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v48)
          {
            if (v46 < v48)
            {
              goto LABEL_90;
            }

            type metadata accessor for AssistantAsset();
            swift_arrayInitWithCopy();
            goto LABEL_51;
          }

LABEL_55:

          v19 = v90;
          v29 = v99;
          if (v39 > 0)
          {
            goto LABEL_86;
          }
        }
      }

      if (v40)
      {
LABEL_39:
        sub_1B1C2D468();
      }

      else
      {
        v43 = v30 & 0xFFFFFFFFFFFFFF8;
LABEL_38:
        v44 = *(v43 + 16);
      }

      v30 = sub_1B1C2D568();
      v43 = v30 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_41;
    }

    v17 = *(v13 + 64 + 8 * v14);
    ++v20;
    if (v17)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:

LABEL_94:

  __break(1u);
  return result;
}

id AssistantAsset.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_1B1B66388(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  v3 = OUTLINED_FUNCTION_72();
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  v5 = sub_1B1C2CA78();

  return v5;
}

id sub_1B1B6648C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  v3 = sub_1B1C2CA78();

  return v3;
}

id sub_1B1B66500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = OBJC_IVAR___TTSAssistantVoiceMaps_deprecatedVoicesMap;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762738, &unk_1B1C39850);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B1C361C0;
  *(inited + 32) = 0x504A2D616ALL;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = sub_1B1C2CAB8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761EE0, &unk_1B1C38950);
  *&v4[v9] = sub_1B1C2CAB8();
  *&v4[OBJC_IVAR___TTSAssistantVoiceMaps_voicesForLanguageMap] = a1;
  *&v4[OBJC_IVAR___TTSAssistantVoiceMaps_relativePitchOrderForVoicesMap] = a2;
  *&v4[OBJC_IVAR___TTSAssistantVoiceMaps_relativeOrderForVoicesMap] = a3;
  *&v4[OBJC_IVAR___TTSAssistantVoiceMaps_identifiersForVoicesMap] = a4;
  v12.receiver = v4;
  v12.super_class = type metadata accessor for TTSAsset.AssistantVoiceMaps();
  return objc_msgSendSuper2(&v12, sel_init);
}

id sub_1B1B66694(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_1B1B6675C@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v81[4] = *MEMORY[0x1E69E9840];
  v8 = sub_1B1C2C1C8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = *a1;
  if (*a1)
  {
    *a3 = v15;
    result = v15;
    v17 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v69 = a2;
    v67 = &v60 - v14;
    if (qword_1ED9A9588 != -1)
    {
      goto LABEL_39;
    }

    while (1)
    {
      v18 = sub_1B1BE34F8(0xD000000000000011, 0x80000001B1C4F4E0, 0x7473696C70, 0xE500000000000000, qword_1ED9AA640);
      if (!v18)
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
        goto LABEL_45;
      }

      v19 = v18;
      sub_1B1C2C168();

      (*(v9 + 32))(v67, v13, v8);
      v20 = sub_1B1C2C208();
      v70 = v4;
      if (v4)
      {
        goto LABEL_45;
      }

      v22 = v20;
      v23 = v21;
      v24 = objc_opt_self();
      v65 = v22;
      v25 = sub_1B1C2C298();
      v81[0] = 0;
      v26 = [v24 propertyListWithData:v25 options:0 format:0 error:v81];

      v27 = v81[0];
      if (!v26)
      {
        break;
      }

      sub_1B1C2D3F8();
      swift_unknownObjectRelease();
      sub_1B1A93378(v81, v80);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761C30, &unk_1B1C38180);
      v4 = MEMORY[0x1E69E7CA0];
      swift_dynamicCast();
      v76 = MEMORY[0x1E69E7CC8];
      v77 = MEMORY[0x1E69E7CC8];
      v75 = MEMORY[0x1E69E7CC8];
      v72 = v78;
      sub_1B1A93AEC(0xD00000000000001ALL, 0x80000001B1C4F530, v78);
      if (!v79)
      {
        goto LABEL_41;
      }

      v61 = v9;
      v62 = v8;
      v63 = a1;
      v64 = a3;
      sub_1B1A9EEE0(&v78, v80);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7628E8, &qword_1B1C39748);
      swift_dynamicCast();
      v28 = v74;
      v29 = *(v74 + 16);
      v9 = MEMORY[0x1E69E7CC0];
      v73 = v23;
      if (v29)
      {
        *&v80[0] = MEMORY[0x1E69E7CC0];
        sub_1B1AC9FA8();
        v9 = *&v80[0];
        v71 = v28;
        v8 = v28 + 32;
        a3 = 0x696669746E656469;
        while (1)
        {
          v13 = *v8;
          if (!*(*v8 + 16))
          {
            break;
          }

          v30 = *v8;

          v31 = sub_1B1A8EB10();
          if ((v32 & 1) == 0)
          {
            goto LABEL_38;
          }

          v33 = (*(v13 + 56) + 16 * v31);
          v4 = *v33;
          v34 = v33[1];

          *&v80[0] = v9;
          v35 = *(v9 + 16);
          a1 = (v35 + 1);
          if (v35 >= *(v9 + 24) >> 1)
          {
            sub_1B1AC9FA8();
            v9 = *&v80[0];
          }

          *(v9 + 16) = a1;
          v36 = v9 + 16 * v35;
          *(v36 + 32) = v4;
          *(v36 + 40) = v34;
          v8 += 8;
          --v29;
          v23 = v73;
          if (!v29)
          {
            goto LABEL_15;
          }
        }
      }

      else
      {
LABEL_15:
        sub_1B1A93AEC(0x736563696F56, 0xE600000000000000, v72);
        if (!v79)
        {
          goto LABEL_42;
        }

        v13 = 0x54502D7470;

        sub_1B1A9EEE0(&v78, v80);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7628F0, &unk_1B1C39750);
        swift_dynamicCast();
        v37 = v74 + 64;
        v38 = 1 << *(v74 + 32);
        v39 = -1;
        if (v38 < 64)
        {
          v39 = ~(-1 << v38);
        }

        v8 = v39 & *(v74 + 64);
        a1 = ((v38 + 63) >> 6);
        v68 = v74;

        v4 = 0;
        v66 = MEMORY[0x1E69E7CC8];
        while (1)
        {
          v40 = v4;
          if (!v8)
          {
            break;
          }

LABEL_23:
          v41 = __clz(__rbit64(v8)) | (v4 << 6);
          v42 = *(v68 + 56);
          v43 = (*(v68 + 48) + 16 * v41);
          v44 = v43[1];
          v71 = *v43;
          a3 = *(v42 + 8 * v41);
          v45 = qword_1EB7614A0;

          v72 = a3;

          if (v45 != -1)
          {
            swift_once();
          }

          v8 &= v8 - 1;
          if (byte_1ED9AA5A8 & 1) == 0 && (v71 == 0x54502D7470 ? (v46 = v44 == 0xE500000000000000) : (v46 = 0), v46 || (sub_1B1C2D7A8()))
          {
          }

          else
          {
            *&v80[0] = MEMORY[0x1E69E7CC0];
            v47 = *(v72 + 16);

            for (i = 32; v47; --v47)
            {
              *&v78 = *(v72 + i);

              v49 = v70;
              sub_1B1B66FE8(&v78, v69, v71, v44, v80, &v76, v9, &v77, &v75);
              v70 = v49;

              i += 8;
            }

            a3 = *&v80[0];

            v50 = v66;
            swift_isUniquelyReferenced_nonNull_native();
            *&v78 = v50;
            sub_1B1B377B0();

            v66 = v78;
            v23 = v73;
            v13 = 0x54502D7470;
          }
        }

        while (1)
        {
          v4 = v40 + 1;
          if (__OFADD__(v40, 1))
          {
            break;
          }

          if (v4 >= a1)
          {

            v51 = v76;
            v52 = v77;
            v53 = v66;
            v54 = v75;
            v55 = objc_allocWithZone(type metadata accessor for TTSAsset.AssistantVoiceMaps());

            v56 = sub_1B1B66500(v53, v51, v52, v54);
            sub_1B1A94524(v65, v23);
            __swift_destroy_boxed_opaque_existential_0(v81);
            (*(v61 + 8))(v67, v62);
            v57 = v56;

            *v63 = v57;
            *v64 = v57;
            v58 = *MEMORY[0x1E69E9840];
            return result;
          }

          v8 = *(v37 + 8 * v4);
          ++v40;
          if (v8)
          {
            goto LABEL_23;
          }
        }

        __break(1u);
      }

      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      swift_once();
    }

    v59 = v27;
    sub_1B1C2C058();

    swift_willThrow();
LABEL_45:
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}