uint64_t sub_22020C2CC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_220230578();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_20:

    return v11(v12, a2, a2, v10);
  }

  sub_220230718();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_19:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_20;
  }

  sub_220266184(0, &qword_281266728, sub_2202020B8, sub_220202110);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_19;
  }

  sub_220266184(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_19;
  }

  sub_220266184(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_19;
  }

  sub_220266184(0, &qword_281266858, sub_220236A30, sub_220236A84);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_19;
  }

  sub_220266184(0, &qword_281266718, sub_220236C88, sub_220236CDC);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_19;
  }

  sub_220266184(0, &qword_281266788, sub_220265CD4, sub_220265D28);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[11];
    goto LABEL_19;
  }

  sub_220266184(0, &qword_281266820, sub_220265F2C, sub_220265F80);
  if (*(*(v22 - 8) + 84) == a3)
  {
    v10 = v22;
    v14 = *(v22 - 8);
    v15 = a4[12];
    goto LABEL_19;
  }

  sub_220266184(0, &qword_281266848, sub_220266200, sub_220266254);
  v25 = v24;
  v26 = *(*(v24 - 8) + 56);
  v27 = a1 + a4[13];

  return v26(v27, a2, a2, v25);
}

uint64_t sub_22020C7D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22036F388();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_22036F3C8();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_22020C8E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22036F388();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_22036F3C8();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_22020C9EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_220230578();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    sub_22026A514();
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = a1 + *(a3 + 20);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_22020CADC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_220230578();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    sub_22026A514();
    v13 = v12;
    v14 = *(*(v12 - 8) + 56);
    v15 = a1 + *(a4 + 20);

    return v14(v15, a2, a2, v13);
  }
}

uint64_t sub_22020CBD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22036F388();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 16);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_22020CC98(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22036F388();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 16) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22020CD54(uint64_t a1, uint64_t a2, int *a3)
{
  sub_220230578();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_18:

    return v9(v10, a2, v8);
  }

  sub_22026D490(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_17:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_18;
  }

  sub_22026D490(0, &qword_281266AE8, sub_22023B7A0, sub_22023B7F4);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_17;
  }

  sub_22026D490(0, &qword_281266718, sub_220236C88, sub_220236CDC);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_17;
  }

  sub_22026D490(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_17;
  }

  sub_22026D490(0, &qword_281266728, sub_2202020B8, sub_220202110);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_17;
  }

  sub_22026D490(0, &qword_281266760, sub_22025E8C4, sub_22025E918);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_17;
  }

  sub_22026D490(0, &qword_281266710, sub_2202376F0, sub_220237744);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[11];
    goto LABEL_17;
  }

  sub_22026D490(0, &qword_281266858, sub_220236A30, sub_220236A84);
  v22 = v21;
  v23 = *(*(v21 - 8) + 48);
  v24 = a1 + a3[12];

  return v23(v24, a2, v22);
}

uint64_t sub_22020D204(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_220230578();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_18:

    return v11(v12, a2, a2, v10);
  }

  sub_22026D490(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_17:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_18;
  }

  sub_22026D490(0, &qword_281266AE8, sub_22023B7A0, sub_22023B7F4);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_17;
  }

  sub_22026D490(0, &qword_281266718, sub_220236C88, sub_220236CDC);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_17;
  }

  sub_22026D490(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_17;
  }

  sub_22026D490(0, &qword_281266728, sub_2202020B8, sub_220202110);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_17;
  }

  sub_22026D490(0, &qword_281266760, sub_22025E8C4, sub_22025E918);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_17;
  }

  sub_22026D490(0, &qword_281266710, sub_2202376F0, sub_220237744);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[11];
    goto LABEL_17;
  }

  sub_22026D490(0, &qword_281266858, sub_220236A30, sub_220236A84);
  v24 = v23;
  v25 = *(*(v23 - 8) + 56);
  v26 = a1 + a4[12];

  return v25(v26, a2, a2, v24);
}

uint64_t sub_22020D6C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22036F388();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_22020D780(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22036F388();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22020D874(uint64_t a1, uint64_t a2, int *a3)
{
  sub_220230578();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_28:

    return v9(v10, a2, v8);
  }

  sub_220230718();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_27:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_28;
  }

  sub_220271E10(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_27;
  }

  sub_220271E10(0, &qword_281266858, sub_220236A30, sub_220236A84);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_27;
  }

  sub_220271E10(0, &qword_281266718, sub_220236C88, sub_220236CDC);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_27;
  }

  sub_220271E10(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_27;
  }

  sub_220271E10(0, &qword_27CF25F28, sub_220237090, sub_2202370E4);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_27;
  }

  sub_220271E10(0, &qword_27CF25F40, sub_220237498, sub_2202374EC);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[11];
    goto LABEL_27;
  }

  sub_220271E10(0, &qword_281266728, sub_2202020B8, sub_220202110);
  if (*(*(v20 - 8) + 84) == a2)
  {
    v8 = v20;
    v12 = *(v20 - 8);
    v13 = a3[12];
    goto LABEL_27;
  }

  sub_220271E10(0, &qword_2812667A0, sub_22025E66C, sub_22025E6C0);
  if (*(*(v21 - 8) + 84) == a2)
  {
    v8 = v21;
    v12 = *(v21 - 8);
    v13 = a3[13];
    goto LABEL_27;
  }

  sub_220271E10(0, &qword_281266710, sub_2202376F0, sub_220237744);
  if (*(*(v22 - 8) + 84) == a2)
  {
    v8 = v22;
    v12 = *(v22 - 8);
    v13 = a3[14];
    goto LABEL_27;
  }

  sub_220271E10(0, &qword_27CF25F58, sub_220237948, sub_22023799C);
  if (*(*(v23 - 8) + 84) == a2)
  {
    v8 = v23;
    v12 = *(v23 - 8);
    v13 = a3[15];
    goto LABEL_27;
  }

  sub_220271E10(0, &qword_27CF26AF0, sub_220271BB8, sub_220271C0C);
  if (*(*(v24 - 8) + 84) == a2)
  {
    v8 = v24;
    v12 = *(v24 - 8);
    v13 = a3[16];
    goto LABEL_27;
  }

  sub_220271E10(0, &qword_281266810, sub_220237C1C, sub_220237C70);
  v27 = v26;
  v28 = *(*(v26 - 8) + 48);
  v29 = a1 + a3[17];

  return v28(v29, a2, v27);
}

uint64_t sub_22020DF6C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_220230578();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_28:

    return v11(v12, a2, a2, v10);
  }

  sub_220230718();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_27:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_28;
  }

  sub_220271E10(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_27;
  }

  sub_220271E10(0, &qword_281266858, sub_220236A30, sub_220236A84);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_27;
  }

  sub_220271E10(0, &qword_281266718, sub_220236C88, sub_220236CDC);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_27;
  }

  sub_220271E10(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_27;
  }

  sub_220271E10(0, &qword_27CF25F28, sub_220237090, sub_2202370E4);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_27;
  }

  sub_220271E10(0, &qword_27CF25F40, sub_220237498, sub_2202374EC);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[11];
    goto LABEL_27;
  }

  sub_220271E10(0, &qword_281266728, sub_2202020B8, sub_220202110);
  if (*(*(v22 - 8) + 84) == a3)
  {
    v10 = v22;
    v14 = *(v22 - 8);
    v15 = a4[12];
    goto LABEL_27;
  }

  sub_220271E10(0, &qword_2812667A0, sub_22025E66C, sub_22025E6C0);
  if (*(*(v23 - 8) + 84) == a3)
  {
    v10 = v23;
    v14 = *(v23 - 8);
    v15 = a4[13];
    goto LABEL_27;
  }

  sub_220271E10(0, &qword_281266710, sub_2202376F0, sub_220237744);
  if (*(*(v24 - 8) + 84) == a3)
  {
    v10 = v24;
    v14 = *(v24 - 8);
    v15 = a4[14];
    goto LABEL_27;
  }

  sub_220271E10(0, &qword_27CF25F58, sub_220237948, sub_22023799C);
  if (*(*(v25 - 8) + 84) == a3)
  {
    v10 = v25;
    v14 = *(v25 - 8);
    v15 = a4[15];
    goto LABEL_27;
  }

  sub_220271E10(0, &qword_27CF26AF0, sub_220271BB8, sub_220271C0C);
  if (*(*(v26 - 8) + 84) == a3)
  {
    v10 = v26;
    v14 = *(v26 - 8);
    v15 = a4[16];
    goto LABEL_27;
  }

  sub_220271E10(0, &qword_281266810, sub_220237C1C, sub_220237C70);
  v29 = v28;
  v30 = *(*(v28 - 8) + 56);
  v31 = a1 + a4[17];

  return v30(v31, a2, a2, v29);
}

uint64_t sub_22020E670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22036F388();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_22036F3C8();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_22020E780(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22036F388();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_22036F3C8();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_22020E88C(uint64_t a1, uint64_t a2, int *a3)
{
  sub_220230578();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_20:

    return v9(v10, a2, v8);
  }

  sub_220230718();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_19:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_20;
  }

  sub_220276BF4(0, &qword_27CF26BA0, sub_22026C224, sub_22026C27C);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_19;
  }

  sub_220276BF4(0, &qword_2812667C0, sub_220276084, sub_2202760D8);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_19;
  }

  sub_220276BF4(0, &qword_281266798, sub_2202762DC, sub_220276330);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_19;
  }

  sub_220276BF4(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_19;
  }

  sub_220276BF4(0, &qword_281266718, sub_220236C88, sub_220236CDC);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_19;
  }

  sub_220276BF4(0, &qword_281266728, sub_2202020B8, sub_220202110);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[11];
    goto LABEL_19;
  }

  sub_220276BF4(0, &qword_281266840, sub_220231080, sub_2202310D4);
  if (*(*(v20 - 8) + 84) == a2)
  {
    v8 = v20;
    v12 = *(v20 - 8);
    v13 = a3[12];
    goto LABEL_19;
  }

  sub_220276BF4(0, &qword_281266810, sub_220237C1C, sub_220237C70);
  v23 = v22;
  v24 = *(*(v22 - 8) + 48);
  v25 = a1 + a3[13];

  return v24(v25, a2, v23);
}

uint64_t sub_22020ED84(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_220230578();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_20:

    return v11(v12, a2, a2, v10);
  }

  sub_220230718();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_19:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_20;
  }

  sub_220276BF4(0, &qword_27CF26BA0, sub_22026C224, sub_22026C27C);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_19;
  }

  sub_220276BF4(0, &qword_2812667C0, sub_220276084, sub_2202760D8);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_19;
  }

  sub_220276BF4(0, &qword_281266798, sub_2202762DC, sub_220276330);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_19;
  }

  sub_220276BF4(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_19;
  }

  sub_220276BF4(0, &qword_281266718, sub_220236C88, sub_220236CDC);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_19;
  }

  sub_220276BF4(0, &qword_281266728, sub_2202020B8, sub_220202110);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[11];
    goto LABEL_19;
  }

  sub_220276BF4(0, &qword_281266840, sub_220231080, sub_2202310D4);
  if (*(*(v22 - 8) + 84) == a3)
  {
    v10 = v22;
    v14 = *(v22 - 8);
    v15 = a4[12];
    goto LABEL_19;
  }

  sub_220276BF4(0, &qword_281266810, sub_220237C1C, sub_220237C70);
  v25 = v24;
  v26 = *(*(v24 - 8) + 56);
  v27 = a1 + a4[13];

  return v26(v27, a2, a2, v25);
}

uint64_t sub_22020F288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22036F388();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_22036F3C8();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_22020F398(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22036F388();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_22036F3C8();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_22020F4A8(uint64_t a1, uint64_t a2, int *a3)
{
  sub_220230578();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_24:

    return v9(v10, a2, v8);
  }

  sub_220230718();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_23:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_24;
  }

  sub_22027BCC8(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_23;
  }

  sub_22027BCC8(0, &qword_281266718, sub_220236C88, sub_220236CDC);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_23;
  }

  sub_22027BCC8(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_23;
  }

  sub_22027BCC8(0, &qword_281266708, sub_22027B158, sub_22027B1AC);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_23;
  }

  sub_22027BCC8(0, &qword_281266790, sub_22027B3B0, sub_22027B404);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_23;
  }

  sub_22027BCC8(0, &qword_281266728, sub_2202020B8, sub_220202110);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[11];
    goto LABEL_23;
  }

  sub_22027BCC8(0, &qword_2812667C8, sub_22024ED64, sub_22024EDBC);
  if (*(*(v20 - 8) + 84) == a2)
  {
    v8 = v20;
    v12 = *(v20 - 8);
    v13 = a3[12];
    goto LABEL_23;
  }

  sub_22027BCC8(0, &qword_281266710, sub_2202376F0, sub_220237744);
  if (*(*(v21 - 8) + 84) == a2)
  {
    v8 = v21;
    v12 = *(v21 - 8);
    v13 = a3[13];
    goto LABEL_23;
  }

  sub_22027BCC8(0, &qword_281266858, sub_220236A30, sub_220236A84);
  if (*(*(v22 - 8) + 84) == a2)
  {
    v8 = v22;
    v12 = *(v22 - 8);
    v13 = a3[14];
    goto LABEL_23;
  }

  sub_22027BCC8(0, &qword_281266810, sub_220237C1C, sub_220237C70);
  v25 = v24;
  v26 = *(*(v24 - 8) + 48);
  v27 = a1 + a3[15];

  return v26(v27, a2, v25);
}

uint64_t sub_22020FAA0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_220230578();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_24:

    return v11(v12, a2, a2, v10);
  }

  sub_220230718();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_23:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_24;
  }

  sub_22027BCC8(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_23;
  }

  sub_22027BCC8(0, &qword_281266718, sub_220236C88, sub_220236CDC);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_23;
  }

  sub_22027BCC8(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_23;
  }

  sub_22027BCC8(0, &qword_281266708, sub_22027B158, sub_22027B1AC);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_23;
  }

  sub_22027BCC8(0, &qword_281266790, sub_22027B3B0, sub_22027B404);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_23;
  }

  sub_22027BCC8(0, &qword_281266728, sub_2202020B8, sub_220202110);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[11];
    goto LABEL_23;
  }

  sub_22027BCC8(0, &qword_2812667C8, sub_22024ED64, sub_22024EDBC);
  if (*(*(v22 - 8) + 84) == a3)
  {
    v10 = v22;
    v14 = *(v22 - 8);
    v15 = a4[12];
    goto LABEL_23;
  }

  sub_22027BCC8(0, &qword_281266710, sub_2202376F0, sub_220237744);
  if (*(*(v23 - 8) + 84) == a3)
  {
    v10 = v23;
    v14 = *(v23 - 8);
    v15 = a4[13];
    goto LABEL_23;
  }

  sub_22027BCC8(0, &qword_281266858, sub_220236A30, sub_220236A84);
  if (*(*(v24 - 8) + 84) == a3)
  {
    v10 = v24;
    v14 = *(v24 - 8);
    v15 = a4[14];
    goto LABEL_23;
  }

  sub_22027BCC8(0, &qword_281266810, sub_220237C1C, sub_220237C70);
  v27 = v26;
  v28 = *(*(v26 - 8) + 56);
  v29 = a1 + a4[15];

  return v28(v29, a2, a2, v27);
}

uint64_t sub_2202100A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22036F388();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_22036F3C8();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_2202101B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22036F388();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_22036F3C8();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_2202102C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_220230578();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    sub_22028098C();
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = a1 + *(a3 + 20);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_2202103B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_220230578();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    sub_22028098C();
    v13 = v12;
    v14 = *(*(v12 - 8) + 56);
    v15 = a1 + *(a4 + 20);

    return v14(v15, a2, a2, v13);
  }
}

uint64_t sub_2202104AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22036F388();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 3)
    {
      return v10 - 2;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_220210564(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22036F388();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
  }

  return result;
}

uint64_t sub_22021061C(uint64_t a1, uint64_t a2, int *a3)
{
  sub_220230578();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  sub_220230718();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  sub_220281F50(0, &qword_27CF26E30, sub_220281CF8, sub_220281D4C);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  sub_220281F50(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  v17 = v16;
  v18 = *(*(v16 - 8) + 48);
  v19 = a1 + a3[7];

  return v18(v19, a2, v17);
}

uint64_t sub_220210814(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_220230578();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  sub_220230718();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  sub_220281F50(0, &qword_27CF26E30, sub_220281CF8, sub_220281D4C);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  sub_220281F50(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  v19 = v18;
  v20 = *(*(v18 - 8) + 56);
  v21 = a1 + a4[7];

  return v20(v21, a2, a2, v19);
}

uint64_t sub_220210A18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22036F388();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_22036F3C8();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_220210B28(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22036F388();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_22036F3C8();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_220210C34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_220230578();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    sub_220288C98();
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = a1 + *(a3 + 20);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_220210D24(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_220230578();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    sub_220288C98();
    v13 = v12;
    v14 = *(*(v12 - 8) + 56);
    v15 = a1 + *(a4 + 20);

    return v14(v15, a2, a2, v13);
  }
}

uint64_t sub_220210E20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22036F388();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_220210EDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22036F388();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_220210FF4(uint64_t a1, uint64_t a2, int *a3)
{
  sub_220230578();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_20:

    return v9(v10, a2, v8);
  }

  sub_22028D568(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_19:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_20;
  }

  sub_22028D568(0, &qword_281266AE8, sub_22023B7A0, sub_22023B7F4);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_19;
  }

  sub_22028D568(0, &qword_281266718, sub_220236C88, sub_220236CDC);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_19;
  }

  sub_22028D568(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_19;
  }

  sub_22028D568(0, &qword_281266728, sub_2202020B8, sub_220202110);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_19;
  }

  sub_22028D568(0, &qword_281266760, sub_22025E8C4, sub_22025E918);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_19;
  }

  sub_22028D568(0, &qword_281266EE8, sub_22028D160, sub_22028D1B4);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[11];
    goto LABEL_19;
  }

  sub_22028D568(0, &qword_281266710, sub_2202376F0, sub_220237744);
  if (*(*(v20 - 8) + 84) == a2)
  {
    v8 = v20;
    v12 = *(v20 - 8);
    v13 = a3[12];
    goto LABEL_19;
  }

  sub_22028D568(0, &qword_281266858, sub_220236A30, sub_220236A84);
  v23 = v22;
  v24 = *(*(v22 - 8) + 48);
  v25 = a1 + a3[13];

  return v24(v25, a2, v23);
}

uint64_t sub_220211524(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_220230578();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_20:

    return v11(v12, a2, a2, v10);
  }

  sub_22028D568(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_19:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_20;
  }

  sub_22028D568(0, &qword_281266AE8, sub_22023B7A0, sub_22023B7F4);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_19;
  }

  sub_22028D568(0, &qword_281266718, sub_220236C88, sub_220236CDC);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_19;
  }

  sub_22028D568(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_19;
  }

  sub_22028D568(0, &qword_281266728, sub_2202020B8, sub_220202110);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_19;
  }

  sub_22028D568(0, &qword_281266760, sub_22025E8C4, sub_22025E918);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_19;
  }

  sub_22028D568(0, &qword_281266EE8, sub_22028D160, sub_22028D1B4);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[11];
    goto LABEL_19;
  }

  sub_22028D568(0, &qword_281266710, sub_2202376F0, sub_220237744);
  if (*(*(v22 - 8) + 84) == a3)
  {
    v10 = v22;
    v14 = *(v22 - 8);
    v15 = a4[12];
    goto LABEL_19;
  }

  sub_22028D568(0, &qword_281266858, sub_220236A30, sub_220236A84);
  v25 = v24;
  v26 = *(*(v24 - 8) + 56);
  v27 = a1 + a4[13];

  return v26(v27, a2, a2, v25);
}

uint64_t sub_220211A60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22036F388();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_220211B20(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22036F388();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_220211BDC(uint64_t a1, uint64_t a2, int *a3)
{
  sub_220230578();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_16:

    return v9(v10, a2, v8);
  }

  sub_220230718();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_15:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_16;
  }

  sub_220292FE0(0, &qword_27CF26BA0, sub_22026C224, sub_22026C27C);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_15;
  }

  sub_220292FE0(0, &qword_2812667C0, sub_220276084, sub_2202760D8);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_15;
  }

  sub_220292FE0(0, &qword_281266798, sub_2202762DC, sub_220276330);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_15;
  }

  sub_220292FE0(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_15;
  }

  sub_220292FE0(0, &qword_281266718, sub_220236C88, sub_220236CDC);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_15;
  }

  sub_220292FE0(0, &qword_281266810, sub_220237C1C, sub_220237C70);
  v21 = v20;
  v22 = *(*(v20 - 8) + 48);
  v23 = a1 + a3[11];

  return v22(v23, a2, v21);
}

uint64_t sub_220211FD4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_220230578();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_16:

    return v11(v12, a2, a2, v10);
  }

  sub_220230718();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_15:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_16;
  }

  sub_220292FE0(0, &qword_27CF26BA0, sub_22026C224, sub_22026C27C);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_15;
  }

  sub_220292FE0(0, &qword_2812667C0, sub_220276084, sub_2202760D8);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_15;
  }

  sub_220292FE0(0, &qword_281266798, sub_2202762DC, sub_220276330);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_15;
  }

  sub_220292FE0(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_15;
  }

  sub_220292FE0(0, &qword_281266718, sub_220236C88, sub_220236CDC);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_15;
  }

  sub_220292FE0(0, &qword_281266810, sub_220237C1C, sub_220237C70);
  v23 = v22;
  v24 = *(*(v22 - 8) + 56);
  v25 = a1 + a4[11];

  return v24(v25, a2, a2, v23);
}

uint64_t sub_2202123D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22036F388();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_22036F3C8();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_2202124E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22036F388();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_22036F3C8();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_2202125F4(uint64_t a1, uint64_t a2, int *a3)
{
  sub_220230578();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_24:

    return v9(v10, a2, v8);
  }

  sub_2202980F0(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_23:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_24;
  }

  sub_2202980F0(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_23;
  }

  sub_2202980F0(0, &qword_281266858, sub_220236A30, sub_220236A84);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_23;
  }

  sub_2202980F0(0, &qword_281266728, sub_2202020B8, sub_220202110);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_23;
  }

  sub_2202980F0(0, &qword_281266718, sub_220236C88, sub_220236CDC);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_23;
  }

  sub_2202980F0(0, &qword_281266788, sub_220265CD4, sub_220265D28);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_23;
  }

  sub_2202980F0(0, &qword_281266848, sub_220266200, sub_220266254);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[11];
    goto LABEL_23;
  }

  sub_2202980F0(0, &qword_27CF27348, sub_220297B38, sub_220297B8C);
  if (*(*(v20 - 8) + 84) == a2)
  {
    v8 = v20;
    v12 = *(v20 - 8);
    v13 = a3[12];
    goto LABEL_23;
  }

  sub_2202980F0(0, &qword_27CF27360, sub_22027FD2C, sub_22027FD84);
  if (*(*(v21 - 8) + 84) == a2)
  {
    v8 = v21;
    v12 = *(v21 - 8);
    v13 = a3[13];
    goto LABEL_23;
  }

  sub_2202980F0(0, &qword_27CF27368, sub_2202841D0, sub_220284228);
  if (*(*(v22 - 8) + 84) == a2)
  {
    v8 = v22;
    v12 = *(v22 - 8);
    v13 = a3[14];
    goto LABEL_23;
  }

  sub_2202980F0(0, &qword_281266830, sub_22029816C, sub_2202981C0);
  v25 = v24;
  v26 = *(*(v24 - 8) + 48);
  v27 = a1 + a3[15];

  return v26(v27, a2, v25);
}

uint64_t sub_220212C24(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_220230578();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_24:

    return v11(v12, a2, a2, v10);
  }

  sub_2202980F0(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_23:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_24;
  }

  sub_2202980F0(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_23;
  }

  sub_2202980F0(0, &qword_281266858, sub_220236A30, sub_220236A84);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_23;
  }

  sub_2202980F0(0, &qword_281266728, sub_2202020B8, sub_220202110);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_23;
  }

  sub_2202980F0(0, &qword_281266718, sub_220236C88, sub_220236CDC);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_23;
  }

  sub_2202980F0(0, &qword_281266788, sub_220265CD4, sub_220265D28);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_23;
  }

  sub_2202980F0(0, &qword_281266848, sub_220266200, sub_220266254);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[11];
    goto LABEL_23;
  }

  sub_2202980F0(0, &qword_27CF27348, sub_220297B38, sub_220297B8C);
  if (*(*(v22 - 8) + 84) == a3)
  {
    v10 = v22;
    v14 = *(v22 - 8);
    v15 = a4[12];
    goto LABEL_23;
  }

  sub_2202980F0(0, &qword_27CF27360, sub_22027FD2C, sub_22027FD84);
  if (*(*(v23 - 8) + 84) == a3)
  {
    v10 = v23;
    v14 = *(v23 - 8);
    v15 = a4[13];
    goto LABEL_23;
  }

  sub_2202980F0(0, &qword_27CF27368, sub_2202841D0, sub_220284228);
  if (*(*(v24 - 8) + 84) == a3)
  {
    v10 = v24;
    v14 = *(v24 - 8);
    v15 = a4[14];
    goto LABEL_23;
  }

  sub_2202980F0(0, &qword_281266830, sub_22029816C, sub_2202981C0);
  v27 = v26;
  v28 = *(*(v26 - 8) + 56);
  v29 = a1 + a4[15];

  return v28(v29, a2, a2, v27);
}

uint64_t sub_220213260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22036F388();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 16);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_220213320(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22036F388();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 16) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2202133DC(uint64_t a1, uint64_t a2, int *a3)
{
  sub_220230578();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  sub_22023F868(0, &qword_281266870, sub_220230BFC, sub_220230C50);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  sub_22023F868(0, &qword_281266770, sub_22023D918, sub_22023D96C);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  sub_22023F868(0, &qword_281266810, sub_220237C1C, sub_220237C70);
  v17 = v16;
  v18 = *(*(v16 - 8) + 48);
  v19 = a1 + a3[7];

  return v18(v19, a2, v17);
}

uint64_t sub_22021360C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_220230578();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  sub_22023F868(0, &qword_281266870, sub_220230BFC, sub_220230C50);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  sub_22023F868(0, &qword_281266770, sub_22023D918, sub_22023D96C);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  sub_22023F868(0, &qword_281266810, sub_220237C1C, sub_220237C70);
  v19 = v18;
  v20 = *(*(v18 - 8) + 56);
  v21 = a1 + a4[7];

  return v20(v21, a2, a2, v19);
}

uint64_t sub_220213848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22036F388();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_220213908(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22036F388();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2202139C8(uint64_t a1, uint64_t a2, int *a3)
{
  sub_220230578();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  sub_2202A7DFC(0, &qword_281266728, sub_2202020B8, sub_220202110);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  sub_2202A7DFC(0, &qword_27CF26BA0, sub_22026C224, sub_22026C27C);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  sub_2202A7DFC(0, &qword_2812667D8, sub_2201F8808, sub_2201F8860);
  v17 = v16;
  v18 = *(*(v16 - 8) + 48);
  v19 = a1 + a3[7];

  return v18(v19, a2, v17);
}

uint64_t sub_220213BF8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_220230578();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  sub_2202A7DFC(0, &qword_281266728, sub_2202020B8, sub_220202110);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  sub_2202A7DFC(0, &qword_27CF26BA0, sub_22026C224, sub_22026C27C);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  sub_2202A7DFC(0, &qword_2812667D8, sub_2201F8808, sub_2201F8860);
  v19 = v18;
  v20 = *(*(v18 - 8) + 56);
  v21 = a1 + a4[7];

  return v20(v21, a2, a2, v19);
}

uint64_t sub_220213E34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22036F388();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_220213EF4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22036F388();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_220213FB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_220230578();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    sub_2202A979C();
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = a1 + *(a3 + 20);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_2202140A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_220230578();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    sub_2202A979C();
    v13 = v12;
    v14 = *(*(v12 - 8) + 56);
    v15 = a1 + *(a4 + 20);

    return v14(v15, a2, a2, v13);
  }
}

uint64_t sub_22021419C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22036F388();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_22021425C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22036F388();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_220214318(uint64_t a1, uint64_t a2, int *a3)
{
  sub_220230578();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  sub_220230718();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_11:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_12;
  }

  sub_2202AE2EC(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_11;
  }

  sub_2202AE2EC(0, &qword_281266728, sub_2202020B8, sub_220202110);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_11;
  }

  sub_2202AE2EC(0, &qword_281266870, sub_220230BFC, sub_220230C50);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_11;
  }

  sub_2202AE2EC(0, &qword_281266738, sub_2202AE368, sub_2202AE3BC);
  v19 = v18;
  v20 = *(*(v18 - 8) + 48);
  v21 = a1 + a3[9];

  return v20(v21, a2, v19);
}

uint64_t sub_220214610(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_220230578();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_12:

    return v11(v12, a2, a2, v10);
  }

  sub_220230718();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_11:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_12;
  }

  sub_2202AE2EC(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_11;
  }

  sub_2202AE2EC(0, &qword_281266728, sub_2202020B8, sub_220202110);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_11;
  }

  sub_2202AE2EC(0, &qword_281266870, sub_220230BFC, sub_220230C50);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_11;
  }

  sub_2202AE2EC(0, &qword_281266738, sub_2202AE368, sub_2202AE3BC);
  v21 = v20;
  v22 = *(*(v20 - 8) + 56);
  v23 = a1 + a4[9];

  return v22(v23, a2, a2, v21);
}

uint64_t sub_220214914(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22036F388();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_22036F3C8();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_220214A24(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22036F388();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_22036F3C8();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_220214B30(uint64_t a1, uint64_t a2, int *a3)
{
  sub_220230578();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  sub_2202B0BEC(0, &qword_27CF26BA0, sub_22026C224, sub_22026C27C);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_11:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_12;
  }

  sub_2202B0BEC(0, &qword_2812667C0, sub_220276084, sub_2202760D8);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_11;
  }

  sub_2202B0BEC(0, &qword_281266798, sub_2202762DC, sub_220276330);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_11;
  }

  sub_2202B0BEC(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_11;
  }

  sub_2202B0BEC(0, &qword_281266718, sub_220236C88, sub_220236CDC);
  v19 = v18;
  v20 = *(*(v18 - 8) + 48);
  v21 = a1 + a3[9];

  return v20(v21, a2, v19);
}

uint64_t sub_220214E60(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_220230578();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_12:

    return v11(v12, a2, a2, v10);
  }

  sub_2202B0BEC(0, &qword_27CF26BA0, sub_22026C224, sub_22026C27C);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_11:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_12;
  }

  sub_2202B0BEC(0, &qword_2812667C0, sub_220276084, sub_2202760D8);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_11;
  }

  sub_2202B0BEC(0, &qword_281266798, sub_2202762DC, sub_220276330);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_11;
  }

  sub_2202B0BEC(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_11;
  }

  sub_2202B0BEC(0, &qword_281266718, sub_220236C88, sub_220236CDC);
  v21 = v20;
  v22 = *(*(v20 - 8) + 56);
  v23 = a1 + a4[9];

  return v22(v23, a2, a2, v21);
}

uint64_t sub_22021519C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22036F388();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_22021525C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22036F388();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_220215318(uint64_t a1, uint64_t a2, int *a3)
{
  sub_220230578();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  sub_220230718();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  sub_2202B305C(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  sub_2202B305C(0, &qword_2812667C8, sub_22024ED64, sub_22024EDBC);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  sub_2202B305C(0, &qword_281266858, sub_220236A30, sub_220236A84);
  v18 = v17;
  v19 = *(*(v17 - 8) + 48);
  v20 = a1 + a3[8];

  return v19(v20, a2, v18);
}

uint64_t sub_220215590(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_220230578();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  sub_220230718();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  sub_2202B305C(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_9;
  }

  sub_2202B305C(0, &qword_2812667C8, sub_22024ED64, sub_22024EDBC);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_9;
  }

  sub_2202B305C(0, &qword_281266858, sub_220236A30, sub_220236A84);
  v20 = v19;
  v21 = *(*(v19 - 8) + 56);
  v22 = a1 + a4[8];

  return v21(v22, a2, a2, v20);
}

uint64_t sub_220215814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22036F388();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_22036F3C8();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_220215924(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22036F388();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_22036F3C8();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_220215B40(uint64_t a1, uint64_t a2, int *a3)
{
  sub_220230578();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_14:

    return v9(v10, a2, v8);
  }

  sub_2202B8E80(0, &qword_281266880, sub_2201F93C8, sub_2201F9420);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_13:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_14;
  }

  sub_2202B8E80(0, &qword_281266858, sub_220236A30, sub_220236A84);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_13;
  }

  sub_2202B8E80(0, &qword_27CF27A60, sub_2202B73F4, sub_2202B744C);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_13;
  }

  sub_2202B8E80(0, &qword_2812667F0, sub_220242CD4, sub_220242D28);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_13;
  }

  sub_2202B8E80(0, &qword_281266890, sub_220202B10, sub_220202B7C);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_13;
  }

  sub_2202B8E80(0, &qword_281266868, sub_220243860, sub_2202438B4);
  v20 = v19;
  v21 = *(*(v19 - 8) + 48);
  v22 = a1 + a3[10];

  return v21(v22, a2, v20);
}

uint64_t sub_220215EF0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_220230578();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_14:

    return v11(v12, a2, a2, v10);
  }

  sub_2202B8E80(0, &qword_281266880, sub_2201F93C8, sub_2201F9420);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_13:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_14;
  }

  sub_2202B8E80(0, &qword_281266858, sub_220236A30, sub_220236A84);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_13;
  }

  sub_2202B8E80(0, &qword_27CF27A60, sub_2202B73F4, sub_2202B744C);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_13;
  }

  sub_2202B8E80(0, &qword_2812667F0, sub_220242CD4, sub_220242D28);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_13;
  }

  sub_2202B8E80(0, &qword_281266890, sub_220202B10, sub_220202B7C);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_13;
  }

  sub_2202B8E80(0, &qword_281266868, sub_220243860, sub_2202438B4);
  v22 = v21;
  v23 = *(*(v21 - 8) + 56);
  v24 = a1 + a4[10];

  return v23(v24, a2, a2, v22);
}

uint64_t sub_2202162AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22036F388();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_22021636C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22036F388();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_220216428(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_220230578();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  sub_2202BCFA0(0, &qword_281266878, sub_220247C08, sub_220247C5C);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  sub_2202BCFA0(0, &qword_2812667B0, sub_220248134, sub_220248188);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + *(a3 + 24);

  return v16(v17, a2, v15);
}

uint64_t sub_2202165D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_220230578();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  sub_2202BCFA0(0, &qword_281266878, sub_220247C08, sub_220247C5C);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  sub_2202BCFA0(0, &qword_2812667B0, sub_220248134, sub_220248188);
  v17 = v16;
  v18 = *(*(v16 - 8) + 56);
  v19 = a1 + *(a4 + 24);

  return v18(v19, a2, a2, v17);
}

uint64_t sub_220216794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22036F388();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_220216854(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22036F388();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_220216910(uint64_t a1, uint64_t a2, int *a3)
{
  sub_220230578();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_18:

    return v9(v10, a2, v8);
  }

  sub_220230718();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_17:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_18;
  }

  sub_2202BFA70(0, &qword_281266728, sub_2202020B8, sub_220202110);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_17;
  }

  sub_2202BFA70(0, &qword_27CF27B80, sub_2202BF158, sub_2202BF1AC);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_17;
  }

  sub_2202BFA70(0, &qword_2812667C0, sub_220276084, sub_2202760D8);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_17;
  }

  sub_2202BFA70(0, &qword_281266798, sub_2202762DC, sub_220276330);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_17;
  }

  sub_2202BFA70(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_17;
  }

  sub_2202BFA70(0, &qword_281266718, sub_220236C88, sub_220236CDC);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[11];
    goto LABEL_17;
  }

  sub_2202BFA70(0, &qword_281266818, sub_220253D04, sub_220253D5C);
  v22 = v21;
  v23 = *(*(v21 - 8) + 48);
  v24 = a1 + a3[12];

  return v23(v24, a2, v22);
}

uint64_t sub_220216D88(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_220230578();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_18:

    return v11(v12, a2, a2, v10);
  }

  sub_220230718();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_17:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_18;
  }

  sub_2202BFA70(0, &qword_281266728, sub_2202020B8, sub_220202110);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_17;
  }

  sub_2202BFA70(0, &qword_27CF27B80, sub_2202BF158, sub_2202BF1AC);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_17;
  }

  sub_2202BFA70(0, &qword_2812667C0, sub_220276084, sub_2202760D8);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_17;
  }

  sub_2202BFA70(0, &qword_281266798, sub_2202762DC, sub_220276330);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_17;
  }

  sub_2202BFA70(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_17;
  }

  sub_2202BFA70(0, &qword_281266718, sub_220236C88, sub_220236CDC);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[11];
    goto LABEL_17;
  }

  sub_2202BFA70(0, &qword_281266818, sub_220253D04, sub_220253D5C);
  v24 = v23;
  v25 = *(*(v23 - 8) + 56);
  v26 = a1 + a4[12];

  return v25(v26, a2, a2, v24);
}

uint64_t sub_22021720C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22036F388();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_22036F3C8();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_22021731C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22036F388();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_22036F3C8();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_220217428(uint64_t a1, uint64_t a2, int *a3)
{
  sub_220230578();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  sub_2202C32B8(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  sub_2202C32B8(0, &qword_281266760, sub_22025E8C4, sub_22025E918);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  sub_2202C32B8(0, &qword_281266858, sub_220236A30, sub_220236A84);
  v17 = v16;
  v18 = *(*(v16 - 8) + 48);
  v19 = a1 + a3[7];

  return v18(v19, a2, v17);
}

uint64_t sub_220217658(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_220230578();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  sub_2202C32B8(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  sub_2202C32B8(0, &qword_281266760, sub_22025E8C4, sub_22025E918);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  sub_2202C32B8(0, &qword_281266858, sub_220236A30, sub_220236A84);
  v19 = v18;
  v20 = *(*(v18 - 8) + 56);
  v21 = a1 + a4[7];

  return v20(v21, a2, a2, v19);
}

uint64_t sub_220217894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22036F388();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_220217954(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22036F388();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_220217A20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22036E508();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 88);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_220217AE0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22036E508();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 88) = (a2 - 1);
  }

  return result;
}

uint64_t sub_220217B9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_220230578();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    sub_2202CB964();
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = a1 + *(a3 + 20);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_220217C8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_220230578();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    sub_2202CB964();
    v13 = v12;
    v14 = *(*(v12 - 8) + 56);
    v15 = a1 + *(a4 + 20);

    return v14(v15, a2, a2, v13);
  }
}

uint64_t sub_220217D88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22036F388();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_220217E44(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22036F388();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_220217EFC(uint64_t a1, uint64_t a2, int *a3)
{
  sub_220230578();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  sub_2202CD114(0, &qword_27CF27D80, sub_2202ACC18, sub_2202ACC70);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  sub_2202CD114(0, &qword_27CF27348, sub_220297B38, sub_220297B8C);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  sub_2202CD114(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  sub_2202CD114(0, &qword_281266858, sub_220236A30, sub_220236A84);
  v18 = v17;
  v19 = *(*(v17 - 8) + 48);
  v20 = a1 + a3[8];

  return v19(v20, a2, v18);
}

uint64_t sub_2202181AC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_220230578();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  sub_2202CD114(0, &qword_27CF27D80, sub_2202ACC18, sub_2202ACC70);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  sub_2202CD114(0, &qword_27CF27348, sub_220297B38, sub_220297B8C);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_9;
  }

  sub_2202CD114(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_9;
  }

  sub_2202CD114(0, &qword_281266858, sub_220236A30, sub_220236A84);
  v20 = v19;
  v21 = *(*(v19 - 8) + 56);
  v22 = a1 + a4[8];

  return v21(v22, a2, a2, v20);
}

uint64_t sub_220218468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22036F388();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 16);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_220218528(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22036F388();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 16) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2202185E4(uint64_t a1, uint64_t a2, int *a3)
{
  sub_220230578();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  sub_2202CF598(0, &qword_281266728, sub_2202020B8, sub_220202110);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  sub_2202CF598(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  sub_2202CF598(0, &qword_2812667D8, sub_2201F8808, sub_2201F8860);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  sub_2202CF598(0, &qword_281266858, sub_220236A30, sub_220236A84);
  v18 = v17;
  v19 = *(*(v17 - 8) + 48);
  v20 = a1 + a3[8];

  return v19(v20, a2, v18);
}

uint64_t sub_220218894(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_220230578();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  sub_2202CF598(0, &qword_281266728, sub_2202020B8, sub_220202110);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  sub_2202CF598(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_9;
  }

  sub_2202CF598(0, &qword_2812667D8, sub_2201F8808, sub_2201F8860);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_9;
  }

  sub_2202CF598(0, &qword_281266858, sub_220236A30, sub_220236A84);
  v20 = v19;
  v21 = *(*(v19 - 8) + 56);
  v22 = a1 + a4[8];

  return v21(v22, a2, a2, v20);
}

uint64_t sub_220218B50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22036F388();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_220218C10(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22036F388();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_220218CCC(uint64_t a1, uint64_t a2, int *a3)
{
  sub_220230578();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_24:

    return v9(v10, a2, v8);
  }

  sub_220230718();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_23:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_24;
  }

  sub_2202D2314(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_23;
  }

  sub_2202D2314(0, &qword_281266718, sub_220236C88, sub_220236CDC);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_23;
  }

  sub_2202D2314(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_23;
  }

  sub_2202D2314(0, &qword_281266708, sub_22027B158, sub_22027B1AC);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_23;
  }

  sub_2202D2314(0, &qword_281266728, sub_2202020B8, sub_220202110);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_23;
  }

  sub_2202D2314(0, &qword_2812667C8, sub_22024ED64, sub_22024EDBC);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[11];
    goto LABEL_23;
  }

  sub_2202D2314(0, &qword_281266850, sub_220254714, sub_22025476C);
  if (*(*(v20 - 8) + 84) == a2)
  {
    v8 = v20;
    v12 = *(v20 - 8);
    v13 = a3[12];
    goto LABEL_23;
  }

  sub_2202D2314(0, &qword_281266710, sub_2202376F0, sub_220237744);
  if (*(*(v21 - 8) + 84) == a2)
  {
    v8 = v21;
    v12 = *(v21 - 8);
    v13 = a3[13];
    goto LABEL_23;
  }

  sub_2202D2314(0, &qword_281266858, sub_220236A30, sub_220236A84);
  if (*(*(v22 - 8) + 84) == a2)
  {
    v8 = v22;
    v12 = *(v22 - 8);
    v13 = a3[14];
    goto LABEL_23;
  }

  sub_2202D2314(0, &qword_281266810, sub_220237C1C, sub_220237C70);
  v25 = v24;
  v26 = *(*(v24 - 8) + 48);
  v27 = a1 + a3[15];

  return v26(v27, a2, v25);
}

uint64_t sub_2202192C4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_220230578();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_24:

    return v11(v12, a2, a2, v10);
  }

  sub_220230718();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_23:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_24;
  }

  sub_2202D2314(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_23;
  }

  sub_2202D2314(0, &qword_281266718, sub_220236C88, sub_220236CDC);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_23;
  }

  sub_2202D2314(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_23;
  }

  sub_2202D2314(0, &qword_281266708, sub_22027B158, sub_22027B1AC);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_23;
  }

  sub_2202D2314(0, &qword_281266728, sub_2202020B8, sub_220202110);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_23;
  }

  sub_2202D2314(0, &qword_2812667C8, sub_22024ED64, sub_22024EDBC);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[11];
    goto LABEL_23;
  }

  sub_2202D2314(0, &qword_281266850, sub_220254714, sub_22025476C);
  if (*(*(v22 - 8) + 84) == a3)
  {
    v10 = v22;
    v14 = *(v22 - 8);
    v15 = a4[12];
    goto LABEL_23;
  }

  sub_2202D2314(0, &qword_281266710, sub_2202376F0, sub_220237744);
  if (*(*(v23 - 8) + 84) == a3)
  {
    v10 = v23;
    v14 = *(v23 - 8);
    v15 = a4[13];
    goto LABEL_23;
  }

  sub_2202D2314(0, &qword_281266858, sub_220236A30, sub_220236A84);
  if (*(*(v24 - 8) + 84) == a3)
  {
    v10 = v24;
    v14 = *(v24 - 8);
    v15 = a4[14];
    goto LABEL_23;
  }

  sub_2202D2314(0, &qword_281266810, sub_220237C1C, sub_220237C70);
  v27 = v26;
  v28 = *(*(v26 - 8) + 56);
  v29 = a1 + a4[15];

  return v28(v29, a2, a2, v27);
}

uint64_t sub_2202198C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22036F388();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_22036F3C8();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_2202199D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22036F388();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_22036F3C8();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_220219AE4(uint64_t a1, uint64_t a2, int *a3)
{
  sub_220230578();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  sub_2202CF598(0, &qword_281266728, sub_2202020B8, sub_220202110);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  sub_2202CF598(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  sub_2202CF598(0, &qword_2812667D8, sub_2201F8808, sub_2201F8860);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  sub_2202CF598(0, &qword_281266858, sub_220236A30, sub_220236A84);
  v18 = v17;
  v19 = *(*(v17 - 8) + 48);
  v20 = a1 + a3[8];

  return v19(v20, a2, v18);
}

uint64_t sub_220219D94(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_220230578();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  sub_2202CF598(0, &qword_281266728, sub_2202020B8, sub_220202110);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  sub_2202CF598(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_9;
  }

  sub_2202CF598(0, &qword_2812667D8, sub_2201F8808, sub_2201F8860);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_9;
  }

  sub_2202CF598(0, &qword_281266858, sub_220236A30, sub_220236A84);
  v20 = v19;
  v21 = *(*(v19 - 8) + 56);
  v22 = a1 + a4[8];

  return v21(v22, a2, a2, v20);
}

uint64_t sub_22021A050(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22036F388();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_22021A110(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22036F388();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22021A1CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_220230578();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  sub_220230718();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  sub_22028098C();
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + *(a3 + 24);

  return v16(v17, a2, v15);
}

uint64_t sub_22021A30C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_220230578();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  sub_220230718();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  sub_22028098C();
  v17 = v16;
  v18 = *(*(v16 - 8) + 56);
  v19 = a1 + *(a4 + 24);

  return v18(v19, a2, a2, v17);
}

uint64_t sub_22021A458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22036F388();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_22036F3C8();
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24));
      if (v14 >= 3)
      {
        return v14 - 2;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_22021A560(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22036F388();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_22036F3C8();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_22021A668(uint64_t a1, uint64_t a2, int *a3)
{
  sub_220230578();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  sub_2202DD81C(0, &qword_27CF26E30, sub_220281CF8, sub_220281D4C);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  sub_2202DD81C(0, &qword_27CF27FF0, sub_2202DD5C4, sub_2202DD618);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  sub_2202DD81C(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  v17 = v16;
  v18 = *(*(v16 - 8) + 48);
  v19 = a1 + a3[7];

  return v18(v19, a2, v17);
}

uint64_t sub_22021A898(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_220230578();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  sub_2202DD81C(0, &qword_27CF26E30, sub_220281CF8, sub_220281D4C);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  sub_2202DD81C(0, &qword_27CF27FF0, sub_2202DD5C4, sub_2202DD618);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  sub_2202DD81C(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  v19 = v18;
  v20 = *(*(v18 - 8) + 56);
  v21 = a1 + a4[7];

  return v20(v21, a2, a2, v19);
}

uint64_t sub_22021AAD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22036F388();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_22021AB94(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22036F388();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22021AC50(uint64_t a1, uint64_t a2, int *a3)
{
  sub_220230578();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_20:

    return v9(v10, a2, v8);
  }

  sub_2202E00AC(0, &qword_281266880, sub_2201F93C8, sub_2201F9420);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_19:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_20;
  }

  sub_2202E00AC(0, &qword_281266858, sub_220236A30, sub_220236A84);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_19;
  }

  sub_2202E00AC(0, &qword_281266808, sub_22028BAC0, sub_22028BB18);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_19;
  }

  sub_2202E00AC(0, &qword_2812667F0, sub_220242CD4, sub_220242D28);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_19;
  }

  sub_2202E00AC(0, &qword_2812667A8, sub_2202DF944, sub_2202DF998);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_19;
  }

  sub_2202E00AC(0, &qword_281266888, sub_220242F2C, sub_220242F80);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_19;
  }

  sub_2202E00AC(0, &qword_281266800, sub_220243184, sub_2202431D8);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[11];
    goto LABEL_19;
  }

  sub_2202E00AC(0, &qword_281266890, sub_220202B10, sub_220202B7C);
  if (*(*(v20 - 8) + 84) == a2)
  {
    v8 = v20;
    v12 = *(v20 - 8);
    v13 = a3[12];
    goto LABEL_19;
  }

  sub_2202E00AC(0, &qword_281266868, sub_220243860, sub_2202438B4);
  v23 = v22;
  v24 = *(*(v22 - 8) + 48);
  v25 = a1 + a3[13];

  return v24(v25, a2, v23);
}

uint64_t sub_22021B180(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_220230578();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_20:

    return v11(v12, a2, a2, v10);
  }

  sub_2202E00AC(0, &qword_281266880, sub_2201F93C8, sub_2201F9420);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_19:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_20;
  }

  sub_2202E00AC(0, &qword_281266858, sub_220236A30, sub_220236A84);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_19;
  }

  sub_2202E00AC(0, &qword_281266808, sub_22028BAC0, sub_22028BB18);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_19;
  }

  sub_2202E00AC(0, &qword_2812667F0, sub_220242CD4, sub_220242D28);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_19;
  }

  sub_2202E00AC(0, &qword_2812667A8, sub_2202DF944, sub_2202DF998);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_19;
  }

  sub_2202E00AC(0, &qword_281266888, sub_220242F2C, sub_220242F80);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_19;
  }

  sub_2202E00AC(0, &qword_281266800, sub_220243184, sub_2202431D8);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[11];
    goto LABEL_19;
  }

  sub_2202E00AC(0, &qword_281266890, sub_220202B10, sub_220202B7C);
  if (*(*(v22 - 8) + 84) == a3)
  {
    v10 = v22;
    v14 = *(v22 - 8);
    v15 = a4[12];
    goto LABEL_19;
  }

  sub_2202E00AC(0, &qword_281266868, sub_220243860, sub_2202438B4);
  v25 = v24;
  v26 = *(*(v24 - 8) + 56);
  v27 = a1 + a4[13];

  return v26(v27, a2, a2, v25);
}

uint64_t sub_22021B6BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22036F388();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_22021B77C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22036F388();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22021B838(uint64_t a1, uint64_t a2, int *a3)
{
  sub_220230578();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  sub_220230718();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_11:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_12;
  }

  sub_2202E316C(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_11;
  }

  sub_2202E316C(0, &qword_281266728, sub_2202020B8, sub_220202110);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_11;
  }

  sub_2202E316C(0, &qword_281266870, sub_220230BFC, sub_220230C50);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_11;
  }

  sub_2202E316C(0, &qword_281266828, sub_2202E31E8, sub_2202E323C);
  v19 = v18;
  v20 = *(*(v18 - 8) + 48);
  v21 = a1 + a3[9];

  return v20(v21, a2, v19);
}

uint64_t sub_22021BB30(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_220230578();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_12:

    return v11(v12, a2, a2, v10);
  }

  sub_220230718();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_11:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_12;
  }

  sub_2202E316C(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_11;
  }

  sub_2202E316C(0, &qword_281266728, sub_2202020B8, sub_220202110);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_11;
  }

  sub_2202E316C(0, &qword_281266870, sub_220230BFC, sub_220230C50);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_11;
  }

  sub_2202E316C(0, &qword_281266828, sub_2202E31E8, sub_2202E323C);
  v21 = v20;
  v22 = *(*(v20 - 8) + 56);
  v23 = a1 + a4[9];

  return v22(v23, a2, a2, v21);
}

uint64_t sub_22021BE34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22036F388();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_22036F3C8();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 16);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_22021BF44(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22036F388();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_22036F3C8();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 16) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_22021C050(uint64_t a1, uint64_t a2, int *a3)
{
  sub_220230578();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_16:

    return v9(v10, a2, v8);
  }

  sub_220230718();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_15:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_16;
  }

  sub_2202E619C(0, &qword_281266880, sub_2201F93C8, sub_2201F9420);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_15;
  }

  sub_2202E619C(0, &qword_281266858, sub_220236A30, sub_220236A84);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_15;
  }

  sub_2202E619C(0, &qword_2812667F0, sub_220242CD4, sub_220242D28);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_15;
  }

  sub_2202E619C(0, &qword_281266800, sub_220243184, sub_2202431D8);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_15;
  }

  sub_2202E619C(0, &qword_281266890, sub_220202B10, sub_220202B7C);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_15;
  }

  sub_2202E619C(0, &qword_281266868, sub_220243860, sub_2202438B4);
  v21 = v20;
  v22 = *(*(v20 - 8) + 48);
  v23 = a1 + a3[11];

  return v22(v23, a2, v21);
}

uint64_t sub_22021C448(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_220230578();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_16:

    return v11(v12, a2, a2, v10);
  }

  sub_220230718();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_15:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_16;
  }

  sub_2202E619C(0, &qword_281266880, sub_2201F93C8, sub_2201F9420);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_15;
  }

  sub_2202E619C(0, &qword_281266858, sub_220236A30, sub_220236A84);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_15;
  }

  sub_2202E619C(0, &qword_2812667F0, sub_220242CD4, sub_220242D28);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_15;
  }

  sub_2202E619C(0, &qword_281266800, sub_220243184, sub_2202431D8);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_15;
  }

  sub_2202E619C(0, &qword_281266890, sub_220202B10, sub_220202B7C);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_15;
  }

  sub_2202E619C(0, &qword_281266868, sub_220243860, sub_2202438B4);
  v23 = v22;
  v24 = *(*(v22 - 8) + 56);
  v25 = a1 + a4[11];

  return v24(v25, a2, a2, v23);
}

uint64_t sub_22021C84C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22036F388();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_22036F3C8();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_22021C95C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22036F388();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_22036F3C8();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_22021CA68(uint64_t a1, uint64_t a2, int *a3)
{
  sub_220230578();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_20:

    return v9(v10, a2, v8);
  }

  sub_2202EA7BC(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_19:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_20;
  }

  sub_2202EA7BC(0, &qword_2812667C0, sub_220276084, sub_2202760D8);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_19;
  }

  sub_2202EA7BC(0, &qword_281266798, sub_2202762DC, sub_220276330);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_19;
  }

  sub_2202EA7BC(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_19;
  }

  sub_2202EA7BC(0, &qword_281266718, sub_220236C88, sub_220236CDC);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_19;
  }

  sub_2202EA7BC(0, &qword_281266728, sub_2202020B8, sub_220202110);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_19;
  }

  sub_2202EA7BC(0, &qword_2812667A0, sub_22025E66C, sub_22025E6C0);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[11];
    goto LABEL_19;
  }

  sub_2202EA7BC(0, &qword_281266760, sub_22025E8C4, sub_22025E918);
  if (*(*(v20 - 8) + 84) == a2)
  {
    v8 = v20;
    v12 = *(v20 - 8);
    v13 = a3[12];
    goto LABEL_19;
  }

  sub_2202EA7BC(0, &qword_281266858, sub_220236A30, sub_220236A84);
  v23 = v22;
  v24 = *(*(v22 - 8) + 48);
  v25 = a1 + a3[13];

  return v24(v25, a2, v23);
}

uint64_t sub_22021CF98(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_220230578();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_20:

    return v11(v12, a2, a2, v10);
  }

  sub_2202EA7BC(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_19:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_20;
  }

  sub_2202EA7BC(0, &qword_2812667C0, sub_220276084, sub_2202760D8);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_19;
  }

  sub_2202EA7BC(0, &qword_281266798, sub_2202762DC, sub_220276330);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_19;
  }

  sub_2202EA7BC(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_19;
  }

  sub_2202EA7BC(0, &qword_281266718, sub_220236C88, sub_220236CDC);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_19;
  }

  sub_2202EA7BC(0, &qword_281266728, sub_2202020B8, sub_220202110);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_19;
  }

  sub_2202EA7BC(0, &qword_2812667A0, sub_22025E66C, sub_22025E6C0);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[11];
    goto LABEL_19;
  }

  sub_2202EA7BC(0, &qword_281266760, sub_22025E8C4, sub_22025E918);
  if (*(*(v22 - 8) + 84) == a3)
  {
    v10 = v22;
    v14 = *(v22 - 8);
    v15 = a4[12];
    goto LABEL_19;
  }

  sub_2202EA7BC(0, &qword_281266858, sub_220236A30, sub_220236A84);
  v25 = v24;
  v26 = *(*(v24 - 8) + 56);
  v27 = a1 + a4[13];

  return v26(v27, a2, a2, v25);
}

uint64_t sub_22021D4D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22036F388();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_22021D594(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22036F388();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22021D668()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22021D6A8(uint64_t a1, uint64_t a2, int *a3)
{
  sub_220230578();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  sub_220230718();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_11:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_12;
  }

  sub_2202F0210(0, &qword_2812667C0, sub_220276084, sub_2202760D8);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_11;
  }

  sub_2202F0210(0, &qword_281266870, sub_220230BFC, sub_220230C50);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_11;
  }

  sub_2202F0210(0, &qword_281266810, sub_220237C1C, sub_220237C70);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_11;
  }

  sub_2202F0210(0, &qword_2812667D0, sub_2202F028C, sub_2202F02E0);
  v19 = v18;
  v20 = *(*(v18 - 8) + 48);
  v21 = a1 + a3[9];

  return v20(v21, a2, v19);
}

uint64_t sub_22021D9A0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_220230578();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_12:

    return v11(v12, a2, a2, v10);
  }

  sub_220230718();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_11:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_12;
  }

  sub_2202F0210(0, &qword_2812667C0, sub_220276084, sub_2202760D8);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_11;
  }

  sub_2202F0210(0, &qword_281266870, sub_220230BFC, sub_220230C50);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_11;
  }

  sub_2202F0210(0, &qword_281266810, sub_220237C1C, sub_220237C70);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_11;
  }

  sub_2202F0210(0, &qword_2812667D0, sub_2202F028C, sub_2202F02E0);
  v21 = v20;
  v22 = *(*(v20 - 8) + 56);
  v23 = a1 + a4[9];

  return v22(v23, a2, a2, v21);
}

uint64_t sub_22021DCA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22036F388();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_22036F3C8();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_22021DDB4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22036F388();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_22036F3C8();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_22021DEC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_220230578();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    sub_2202F2250();
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = a1 + *(a3 + 20);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_22021DFB0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_220230578();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    sub_2202F2250();
    v13 = v12;
    v14 = *(*(v12 - 8) + 56);
    v15 = a1 + *(a4 + 20);

    return v14(v15, a2, a2, v13);
  }
}

uint64_t sub_22021E0AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22036F388();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 4)
    {
      return v10 - 3;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_22021E164(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22036F388();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 3;
  }

  return result;
}

uint64_t sub_22021E21C(uint64_t a1, uint64_t a2, int *a3)
{
  sub_220230578();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  sub_220230718();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  sub_2202F4D64(0, &qword_281266718, sub_220236C88, sub_220236CDC);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  sub_2202F4D64(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  sub_2202F4D64(0, &qword_281266728, sub_2202020B8, sub_220202110);
  v18 = v17;
  v19 = *(*(v17 - 8) + 48);
  v20 = a1 + a3[8];

  return v19(v20, a2, v18);
}

uint64_t sub_22021E494(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_220230578();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  sub_220230718();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  sub_2202F4D64(0, &qword_281266718, sub_220236C88, sub_220236CDC);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_9;
  }

  sub_2202F4D64(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_9;
  }

  sub_2202F4D64(0, &qword_281266728, sub_2202020B8, sub_220202110);
  v20 = v19;
  v21 = *(*(v19 - 8) + 56);
  v22 = a1 + a4[8];

  return v21(v22, a2, a2, v20);
}

uint64_t sub_22021E718(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22036F388();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_22036F3C8();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 16);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_22021E828(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22036F388();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_22036F3C8();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 16) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_22021E968(uint64_t a1, uint64_t a2, int *a3)
{
  sub_220230578();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_26:

    return v9(v10, a2, v8);
  }

  sub_220271E10(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_25:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_26;
  }

  sub_220271E10(0, &qword_281266858, sub_220236A30, sub_220236A84);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_25;
  }

  sub_220271E10(0, &qword_281266718, sub_220236C88, sub_220236CDC);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_25;
  }

  sub_220271E10(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_25;
  }

  sub_220271E10(0, &qword_27CF25F28, sub_220237090, sub_2202370E4);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_25;
  }

  sub_220271E10(0, &qword_27CF25F40, sub_220237498, sub_2202374EC);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_25;
  }

  sub_220271E10(0, &qword_281266728, sub_2202020B8, sub_220202110);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[11];
    goto LABEL_25;
  }

  sub_220271E10(0, &qword_2812667A0, sub_22025E66C, sub_22025E6C0);
  if (*(*(v20 - 8) + 84) == a2)
  {
    v8 = v20;
    v12 = *(v20 - 8);
    v13 = a3[12];
    goto LABEL_25;
  }

  sub_220271E10(0, &qword_281266710, sub_2202376F0, sub_220237744);
  if (*(*(v21 - 8) + 84) == a2)
  {
    v8 = v21;
    v12 = *(v21 - 8);
    v13 = a3[13];
    goto LABEL_25;
  }

  sub_220271E10(0, &qword_27CF25F58, sub_220237948, sub_22023799C);
  if (*(*(v22 - 8) + 84) == a2)
  {
    v8 = v22;
    v12 = *(v22 - 8);
    v13 = a3[14];
    goto LABEL_25;
  }

  sub_220271E10(0, &qword_27CF26AF0, sub_220271BB8, sub_220271C0C);
  if (*(*(v23 - 8) + 84) == a2)
  {
    v8 = v23;
    v12 = *(v23 - 8);
    v13 = a3[15];
    goto LABEL_25;
  }

  sub_220271E10(0, &qword_281266810, sub_220237C1C, sub_220237C70);
  v26 = v25;
  v27 = *(*(v25 - 8) + 48);
  v28 = a1 + a3[16];

  return v27(v28, a2, v26);
}

uint64_t sub_22021F018(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_220230578();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_26:

    return v11(v12, a2, a2, v10);
  }

  sub_220271E10(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_25:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_26;
  }

  sub_220271E10(0, &qword_281266858, sub_220236A30, sub_220236A84);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_25;
  }

  sub_220271E10(0, &qword_281266718, sub_220236C88, sub_220236CDC);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_25;
  }

  sub_220271E10(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_25;
  }

  sub_220271E10(0, &qword_27CF25F28, sub_220237090, sub_2202370E4);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_25;
  }

  sub_220271E10(0, &qword_27CF25F40, sub_220237498, sub_2202374EC);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_25;
  }

  sub_220271E10(0, &qword_281266728, sub_2202020B8, sub_220202110);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[11];
    goto LABEL_25;
  }

  sub_220271E10(0, &qword_2812667A0, sub_22025E66C, sub_22025E6C0);
  if (*(*(v22 - 8) + 84) == a3)
  {
    v10 = v22;
    v14 = *(v22 - 8);
    v15 = a4[12];
    goto LABEL_25;
  }

  sub_220271E10(0, &qword_281266710, sub_2202376F0, sub_220237744);
  if (*(*(v23 - 8) + 84) == a3)
  {
    v10 = v23;
    v14 = *(v23 - 8);
    v15 = a4[13];
    goto LABEL_25;
  }

  sub_220271E10(0, &qword_27CF25F58, sub_220237948, sub_22023799C);
  if (*(*(v24 - 8) + 84) == a3)
  {
    v10 = v24;
    v14 = *(v24 - 8);
    v15 = a4[14];
    goto LABEL_25;
  }

  sub_220271E10(0, &qword_27CF26AF0, sub_220271BB8, sub_220271C0C);
  if (*(*(v25 - 8) + 84) == a3)
  {
    v10 = v25;
    v14 = *(v25 - 8);
    v15 = a4[15];
    goto LABEL_25;
  }

  sub_220271E10(0, &qword_281266810, sub_220237C1C, sub_220237C70);
  v28 = v27;
  v29 = *(*(v27 - 8) + 56);
  v30 = a1 + a4[16];

  return v29(v30, a2, a2, v28);
}

uint64_t sub_22021F6D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22036F388();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_22021F794(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22036F388();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22021F88C(uint64_t a1, uint64_t a2, int *a3)
{
  sub_220230578();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_30:

    return v9(v10, a2, v8);
  }

  sub_220230718();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_29:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_30;
  }

  sub_2202FDC94(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_29;
  }

  sub_2202FDC94(0, &qword_2812667C0, sub_220276084, sub_2202760D8);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_29;
  }

  sub_2202FDC94(0, &qword_281266798, sub_2202762DC, sub_220276330);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_29;
  }

  sub_2202FDC94(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_29;
  }

  sub_2202FDC94(0, &qword_281266718, sub_220236C88, sub_220236CDC);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_29;
  }

  sub_2202FDC94(0, &qword_2812667A0, sub_22025E66C, sub_22025E6C0);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[11];
    goto LABEL_29;
  }

  sub_2202FDC94(0, &qword_281266760, sub_22025E8C4, sub_22025E918);
  if (*(*(v20 - 8) + 84) == a2)
  {
    v8 = v20;
    v12 = *(v20 - 8);
    v13 = a3[12];
    goto LABEL_29;
  }

  sub_2202FDC94(0, &qword_281266710, sub_2202376F0, sub_220237744);
  if (*(*(v21 - 8) + 84) == a2)
  {
    v8 = v21;
    v12 = *(v21 - 8);
    v13 = a3[13];
    goto LABEL_29;
  }

  sub_2202FDC94(0, &qword_281266720, sub_2202FD52C, sub_2202FD580);
  if (*(*(v22 - 8) + 84) == a2)
  {
    v8 = v22;
    v12 = *(v22 - 8);
    v13 = a3[14];
    goto LABEL_29;
  }

  sub_2202FDC94(0, &qword_281266858, sub_220236A30, sub_220236A84);
  if (*(*(v23 - 8) + 84) == a2)
  {
    v8 = v23;
    v12 = *(v23 - 8);
    v13 = a3[15];
    goto LABEL_29;
  }

  sub_2202FDC94(0, &qword_2812667E8, sub_220250F44, sub_220250F98);
  if (*(*(v24 - 8) + 84) == a2)
  {
    v8 = v24;
    v12 = *(v24 - 8);
    v13 = a3[16];
    goto LABEL_29;
  }

  sub_2202FDC94(0, &qword_281266810, sub_220237C1C, sub_220237C70);
  if (*(*(v25 - 8) + 84) == a2)
  {
    v8 = v25;
    v12 = *(v25 - 8);
    v13 = a3[17];
    goto LABEL_29;
  }

  sub_2202FDC94(0, &qword_281266818, sub_220253D04, sub_220253D5C);
  v28 = v27;
  v29 = *(*(v27 - 8) + 48);
  v30 = a1 + a3[18];

  return v29(v30, a2, v28);
}

uint64_t sub_220220004(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_220230578();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_30:

    return v11(v12, a2, a2, v10);
  }

  sub_220230718();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_29:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_30;
  }

  sub_2202FDC94(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_29;
  }

  sub_2202FDC94(0, &qword_2812667C0, sub_220276084, sub_2202760D8);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_29;
  }

  sub_2202FDC94(0, &qword_281266798, sub_2202762DC, sub_220276330);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_29;
  }

  sub_2202FDC94(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_29;
  }

  sub_2202FDC94(0, &qword_281266718, sub_220236C88, sub_220236CDC);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_29;
  }

  sub_2202FDC94(0, &qword_2812667A0, sub_22025E66C, sub_22025E6C0);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[11];
    goto LABEL_29;
  }

  sub_2202FDC94(0, &qword_281266760, sub_22025E8C4, sub_22025E918);
  if (*(*(v22 - 8) + 84) == a3)
  {
    v10 = v22;
    v14 = *(v22 - 8);
    v15 = a4[12];
    goto LABEL_29;
  }

  sub_2202FDC94(0, &qword_281266710, sub_2202376F0, sub_220237744);
  if (*(*(v23 - 8) + 84) == a3)
  {
    v10 = v23;
    v14 = *(v23 - 8);
    v15 = a4[13];
    goto LABEL_29;
  }

  sub_2202FDC94(0, &qword_281266720, sub_2202FD52C, sub_2202FD580);
  if (*(*(v24 - 8) + 84) == a3)
  {
    v10 = v24;
    v14 = *(v24 - 8);
    v15 = a4[14];
    goto LABEL_29;
  }

  sub_2202FDC94(0, &qword_281266858, sub_220236A30, sub_220236A84);
  if (*(*(v25 - 8) + 84) == a3)
  {
    v10 = v25;
    v14 = *(v25 - 8);
    v15 = a4[15];
    goto LABEL_29;
  }

  sub_2202FDC94(0, &qword_2812667E8, sub_220250F44, sub_220250F98);
  if (*(*(v26 - 8) + 84) == a3)
  {
    v10 = v26;
    v14 = *(v26 - 8);
    v15 = a4[16];
    goto LABEL_29;
  }

  sub_2202FDC94(0, &qword_281266810, sub_220237C1C, sub_220237C70);
  if (*(*(v27 - 8) + 84) == a3)
  {
    v10 = v27;
    v14 = *(v27 - 8);
    v15 = a4[17];
    goto LABEL_29;
  }

  sub_2202FDC94(0, &qword_281266818, sub_220253D04, sub_220253D5C);
  v30 = v29;
  v31 = *(*(v29 - 8) + 56);
  v32 = a1 + a4[18];

  return v31(v32, a2, a2, v30);
}

uint64_t sub_220220788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22036F388();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_22036F3C8();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_220220898(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22036F388();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_22036F3C8();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_2202209A4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = sub_22036ED58();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 32) & ~v5;
  v7 = *(v4 + 64);
  sub_220305094(0, qword_2812655D0, type metadata accessor for ExternalURLData, MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 80);
  v10 = (v6 + v7 + v9) & ~v9;
  v11 = *(*(v8 - 8) + 64);
  (*(v4 + 8))(v0 + v6, v3);
  v12 = type metadata accessor for ExternalURLData();
  if (!(*(*(v12 - 8) + 48))(v0 + v10, 1, v12))
  {
    v13 = sub_22036E508();
    (*(*(v13 - 8) + 8))(v0 + v10, v13);
    v14 = (v0 + v10 + *(v12 + 20));
    if (v14[1])
    {

      v15 = v14[3];
    }

    v16 = v14[11];

    v17 = v14[13];
  }

  return MEMORY[0x2821FE8E8](v0, v10 + v11, v5 | v9 | 7);
}

uint64_t sub_220220BA4(uint64_t a1, uint64_t a2, int *a3)
{
  sub_220230578();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  sub_220305A78(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_11:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_12;
  }

  sub_220305A78(0, &qword_281266870, sub_220230BFC, sub_220230C50);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_11;
  }

  sub_220305A78(0, &qword_281266728, sub_2202020B8, sub_220202110);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_11;
  }

  sub_220305A78(0, &qword_27CF28530, sub_2202EEE64, sub_2202EEEBC);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_11;
  }

  sub_220305A78(0, &qword_27CF28538, sub_2202921BC, sub_220292214);
  v19 = v18;
  v20 = *(*(v18 - 8) + 48);
  v21 = a1 + a3[9];

  return v20(v21, a2, v19);
}

uint64_t sub_220220ED4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_220230578();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_12:

    return v11(v12, a2, a2, v10);
  }

  sub_220305A78(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_11:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_12;
  }

  sub_220305A78(0, &qword_281266870, sub_220230BFC, sub_220230C50);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_11;
  }

  sub_220305A78(0, &qword_281266728, sub_2202020B8, sub_220202110);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_11;
  }

  sub_220305A78(0, &qword_27CF28530, sub_2202EEE64, sub_2202EEEBC);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_11;
  }

  sub_220305A78(0, &qword_27CF28538, sub_2202921BC, sub_220292214);
  v21 = v20;
  v22 = *(*(v20 - 8) + 56);
  v23 = a1 + a4[9];

  return v22(v23, a2, a2, v21);
}

uint64_t sub_220221210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22036F388();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 16);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2202212D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22036F388();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 16) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2202213EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_220230578();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    sub_22030C0F8();
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = a1 + *(a3 + 20);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_2202214DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_220230578();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    sub_22030C0F8();
    v13 = v12;
    v14 = *(*(v12 - 8) + 56);
    v15 = a1 + *(a4 + 20);

    return v14(v15, a2, a2, v13);
  }
}

uint64_t sub_2202215D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22036F388();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 1);
    if (v10 >= 5)
    {
      return v10 - 4;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_220221694(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22036F388();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 1) = a2 + 4;
  }

  return result;
}

uint64_t sub_220221750(uint64_t a1, uint64_t a2, int *a3)
{
  sub_220230578();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  sub_2202A7DFC(0, &qword_281266728, sub_2202020B8, sub_220202110);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  sub_2202A7DFC(0, &qword_27CF26BA0, sub_22026C224, sub_22026C27C);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  sub_2202A7DFC(0, &qword_2812667D8, sub_2201F8808, sub_2201F8860);
  v17 = v16;
  v18 = *(*(v16 - 8) + 48);
  v19 = a1 + a3[7];

  return v18(v19, a2, v17);
}

uint64_t sub_220221980(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_220230578();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  sub_2202A7DFC(0, &qword_281266728, sub_2202020B8, sub_220202110);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  sub_2202A7DFC(0, &qword_27CF26BA0, sub_22026C224, sub_22026C27C);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  sub_2202A7DFC(0, &qword_2812667D8, sub_2201F8808, sub_2201F8860);
  v19 = v18;
  v20 = *(*(v18 - 8) + 56);
  v21 = a1 + a4[7];

  return v20(v21, a2, a2, v19);
}

uint64_t sub_220221BBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22036F388();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_220221C7C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22036F388();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_220221E60(uint64_t a1, uint64_t a2, int *a3)
{
  sub_220230578();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_24:

    return v9(v10, a2, v8);
  }

  sub_2203163CC(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_23:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_24;
  }

  sub_2203163CC(0, &qword_281266858, sub_220236A30, sub_220236A84);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_23;
  }

  sub_2203163CC(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_23;
  }

  sub_2203163CC(0, &qword_281266718, sub_220236C88, sub_220236CDC);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_23;
  }

  sub_2203163CC(0, &qword_281266788, sub_220265CD4, sub_220265D28);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_23;
  }

  sub_2203163CC(0, &qword_281266820, sub_220265F2C, sub_220265F80);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_23;
  }

  sub_2203163CC(0, &qword_281266848, sub_220266200, sub_220266254);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[11];
    goto LABEL_23;
  }

  sub_2203163CC(0, &qword_27CF28990, sub_22029F5C4, sub_22029F61C);
  if (*(*(v20 - 8) + 84) == a2)
  {
    v8 = v20;
    v12 = *(v20 - 8);
    v13 = a3[12];
    goto LABEL_23;
  }

  sub_2203163CC(0, &qword_27CF27360, sub_22027FD2C, sub_22027FD84);
  if (*(*(v21 - 8) + 84) == a2)
  {
    v8 = v21;
    v12 = *(v21 - 8);
    v13 = a3[13];
    goto LABEL_23;
  }

  sub_2203163CC(0, &qword_27CF27368, sub_2202841D0, sub_220284228);
  if (*(*(v22 - 8) + 84) == a2)
  {
    v8 = v22;
    v12 = *(v22 - 8);
    v13 = a3[14];
    goto LABEL_23;
  }

  sub_2203163CC(0, &qword_281266830, sub_22029816C, sub_2202981C0);
  v25 = v24;
  v26 = *(*(v24 - 8) + 48);
  v27 = a1 + a3[15];

  return v26(v27, a2, v25);
}

uint64_t sub_220222490(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_220230578();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_24:

    return v11(v12, a2, a2, v10);
  }

  sub_2203163CC(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_23:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_24;
  }

  sub_2203163CC(0, &qword_281266858, sub_220236A30, sub_220236A84);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_23;
  }

  sub_2203163CC(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_23;
  }

  sub_2203163CC(0, &qword_281266718, sub_220236C88, sub_220236CDC);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_23;
  }

  sub_2203163CC(0, &qword_281266788, sub_220265CD4, sub_220265D28);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_23;
  }

  sub_2203163CC(0, &qword_281266820, sub_220265F2C, sub_220265F80);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_23;
  }

  sub_2203163CC(0, &qword_281266848, sub_220266200, sub_220266254);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[11];
    goto LABEL_23;
  }

  sub_2203163CC(0, &qword_27CF28990, sub_22029F5C4, sub_22029F61C);
  if (*(*(v22 - 8) + 84) == a3)
  {
    v10 = v22;
    v14 = *(v22 - 8);
    v15 = a4[12];
    goto LABEL_23;
  }

  sub_2203163CC(0, &qword_27CF27360, sub_22027FD2C, sub_22027FD84);
  if (*(*(v23 - 8) + 84) == a3)
  {
    v10 = v23;
    v14 = *(v23 - 8);
    v15 = a4[13];
    goto LABEL_23;
  }

  sub_2203163CC(0, &qword_27CF27368, sub_2202841D0, sub_220284228);
  if (*(*(v24 - 8) + 84) == a3)
  {
    v10 = v24;
    v14 = *(v24 - 8);
    v15 = a4[14];
    goto LABEL_23;
  }

  sub_2203163CC(0, &qword_281266830, sub_22029816C, sub_2202981C0);
  v27 = v26;
  v28 = *(*(v26 - 8) + 56);
  v29 = a1 + a4[15];

  return v28(v29, a2, a2, v27);
}

uint64_t sub_220222ACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22036F388();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_220222B8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22036F388();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_220222C48()
{
  v1 = sub_22036E778();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64) + v4;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 1, v3 | 7);
}

uint64_t sub_220222CD4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_220222D6C(uint64_t a1, uint64_t a2, int *a3)
{
  sub_220230578();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_14:

    return v9(v10, a2, v8);
  }

  sub_220230718();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_13:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_14;
  }

  sub_220320CA4(0, &qword_281266770, sub_22023D918, sub_22023D96C);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_13;
  }

  sub_220320CA4(0, &qword_2812667D8, sub_2201F8808, sub_2201F8860);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_13;
  }

  sub_220320CA4(0, &qword_281266840, sub_220231080, sub_2202310D4);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_13;
  }

  sub_220320CA4(0, &qword_281266778, sub_2202AAD64, sub_2202AADBC);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_13;
  }

  sub_220320CA4(0, &qword_2812668A0, sub_220309F5C, sub_220309FB4);
  v20 = v19;
  v21 = *(*(v19 - 8) + 48);
  v22 = a1 + a3[10];

  return v21(v22, a2, v20);
}

uint64_t sub_2202230E4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_220230578();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_14:

    return v11(v12, a2, a2, v10);
  }

  sub_220230718();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_13:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_14;
  }

  sub_220320CA4(0, &qword_281266770, sub_22023D918, sub_22023D96C);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_13;
  }

  sub_220320CA4(0, &qword_2812667D8, sub_2201F8808, sub_2201F8860);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_13;
  }

  sub_220320CA4(0, &qword_281266840, sub_220231080, sub_2202310D4);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_13;
  }

  sub_220320CA4(0, &qword_281266778, sub_2202AAD64, sub_2202AADBC);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_13;
  }

  sub_220320CA4(0, &qword_2812668A0, sub_220309F5C, sub_220309FB4);
  v22 = v21;
  v23 = *(*(v21 - 8) + 56);
  v24 = a1 + a4[10];

  return v23(v24, a2, a2, v22);
}

uint64_t sub_220223468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22036F388();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_22036F3C8();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_220223574(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22036F388();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_22036F3C8();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_22022367C(uint64_t a1, uint64_t a2, int *a3)
{
  sub_220230578();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_16:

    return v9(v10, a2, v8);
  }

  sub_220230718();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_15:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_16;
  }

  sub_2203242A8(0, &qword_281266728, sub_2202020B8, sub_220202110);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_15;
  }

  sub_2203242A8(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_15;
  }

  sub_2203242A8(0, &qword_2812667D8, sub_2201F8808, sub_2201F8860);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_15;
  }

  sub_2203242A8(0, &qword_2812667E8, sub_220250F44, sub_220250F98);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_15;
  }

  sub_2203242A8(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_15;
  }

  sub_2203242A8(0, &qword_281266858, sub_220236A30, sub_220236A84);
  v21 = v20;
  v22 = *(*(v20 - 8) + 48);
  v23 = a1 + a3[11];

  return v22(v23, a2, v21);
}

uint64_t sub_220223A74(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_220230578();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_16:

    return v11(v12, a2, a2, v10);
  }

  sub_220230718();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_15:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_16;
  }

  sub_2203242A8(0, &qword_281266728, sub_2202020B8, sub_220202110);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_15;
  }

  sub_2203242A8(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_15;
  }

  sub_2203242A8(0, &qword_2812667D8, sub_2201F8808, sub_2201F8860);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_15;
  }

  sub_2203242A8(0, &qword_2812667E8, sub_220250F44, sub_220250F98);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_15;
  }

  sub_2203242A8(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_15;
  }

  sub_2203242A8(0, &qword_281266858, sub_220236A30, sub_220236A84);
  v23 = v22;
  v24 = *(*(v22 - 8) + 56);
  v25 = a1 + a4[11];

  return v24(v25, a2, a2, v23);
}

uint64_t sub_220223E78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22036F388();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_22036F3C8();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_220223F88(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22036F388();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_22036F3C8();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_220224094()
{
  MEMORY[0x223D7A5C0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2202240CC()
{
  swift_unknownObjectUnownedDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_220224108@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_22022418C(uint64_t a1, uint64_t a2, int *a3)
{
  sub_220230578();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  sub_220230718();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  sub_22032AA84(0, &qword_281266880, sub_2201F93C8, sub_2201F9420);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  sub_22032AA84(0, &qword_2812667F0, sub_220242CD4, sub_220242D28);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  sub_22032AA84(0, &qword_281266890, sub_220202B10, sub_220202B7C);
  v18 = v17;
  v19 = *(*(v17 - 8) + 48);
  v20 = a1 + a3[8];

  return v19(v20, a2, v18);
}

uint64_t sub_220224404(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_220230578();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  sub_220230718();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  sub_22032AA84(0, &qword_281266880, sub_2201F93C8, sub_2201F9420);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_9;
  }

  sub_22032AA84(0, &qword_2812667F0, sub_220242CD4, sub_220242D28);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_9;
  }

  sub_22032AA84(0, &qword_281266890, sub_220202B10, sub_220202B7C);
  v20 = v19;
  v21 = *(*(v19 - 8) + 56);
  v22 = a1 + a4[8];

  return v21(v22, a2, a2, v20);
}

uint64_t sub_220224688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22036F388();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_22036F3C8();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_220224798(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22036F388();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_22036F3C8();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_2202248B4()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2202248FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22036E5A8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2202249A8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_22036E5A8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_220224A4C(uint64_t a1, uint64_t a2, int *a3)
{
  sub_220230578();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_18:

    return v9(v10, a2, v8);
  }

  sub_22032F7F4(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_17:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_18;
  }

  sub_22032F7F4(0, &qword_281266858, sub_220236A30, sub_220236A84);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_17;
  }

  sub_22032F7F4(0, &qword_281266718, sub_220236C88, sub_220236CDC);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_17;
  }

  sub_22032F7F4(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_17;
  }

  sub_22032F7F4(0, &qword_27CF25F28, sub_220237090, sub_2202370E4);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_17;
  }

  sub_22032F7F4(0, &qword_27CF28D60, sub_220314E28, sub_220314E80);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_17;
  }

  sub_22032F7F4(0, &qword_281266728, sub_2202020B8, sub_220202110);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[11];
    goto LABEL_17;
  }

  sub_22032F7F4(0, &qword_2812667A0, sub_22025E66C, sub_22025E6C0);
  v22 = v21;
  v23 = *(*(v21 - 8) + 48);
  v24 = a1 + a3[12];

  return v23(v24, a2, v22);
}

uint64_t sub_220224EFC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_220230578();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_18:

    return v11(v12, a2, a2, v10);
  }

  sub_22032F7F4(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_17:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_18;
  }

  sub_22032F7F4(0, &qword_281266858, sub_220236A30, sub_220236A84);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_17;
  }

  sub_22032F7F4(0, &qword_281266718, sub_220236C88, sub_220236CDC);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_17;
  }

  sub_22032F7F4(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_17;
  }

  sub_22032F7F4(0, &qword_27CF25F28, sub_220237090, sub_2202370E4);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_17;
  }

  sub_22032F7F4(0, &qword_27CF28D60, sub_220314E28, sub_220314E80);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_17;
  }

  sub_22032F7F4(0, &qword_281266728, sub_2202020B8, sub_220202110);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[11];
    goto LABEL_17;
  }

  sub_22032F7F4(0, &qword_2812667A0, sub_22025E66C, sub_22025E6C0);
  v24 = v23;
  v25 = *(*(v23 - 8) + 56);
  v26 = a1 + a4[12];

  return v25(v26, a2, a2, v24);
}

uint64_t sub_2202253B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22036F388();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_220225478(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22036F388();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2202255E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_220230578();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  sub_220333EB0(0, &qword_281266758, sub_220264EA8, sub_220264F00);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  sub_220333EB0(0, &qword_281266870, sub_220230BFC, sub_220230C50);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + *(a3 + 24);

  return v16(v17, a2, v15);
}

uint64_t sub_220225794(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_220230578();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  sub_220333EB0(0, &qword_281266758, sub_220264EA8, sub_220264F00);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  sub_220333EB0(0, &qword_281266870, sub_220230BFC, sub_220230C50);
  v17 = v16;
  v18 = *(*(v16 - 8) + 56);
  v19 = a1 + *(a4 + 24);

  return v18(v19, a2, a2, v17);
}

uint64_t sub_220225950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22036F388();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_220225A10(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22036F388();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_220225ACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for SessionData();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_220225B78(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for SessionData();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_220225C1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_220230578();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    sub_220337E34();
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = a1 + *(a3 + 20);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_220225D0C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_220230578();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    sub_220337E34();
    v13 = v12;
    v14 = *(*(v12 - 8) + 56);
    v15 = a1 + *(a4 + 20);

    return v14(v15, a2, a2, v13);
  }
}

uint64_t sub_220225E08(uint64_t a1, uint64_t a2)
{
  v4 = sub_22036F388();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_220225E74(uint64_t a1, uint64_t a2)
{
  v4 = sub_22036F388();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_220225EE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_220230578();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  sub_220230718();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  sub_220339E74();
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + *(a3 + 24);

  return v16(v17, a2, v15);
}

uint64_t sub_220226024(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_220230578();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  sub_220230718();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  sub_220339E74();
  v17 = v16;
  v18 = *(*(v16 - 8) + 56);
  v19 = a1 + *(a4 + 24);

  return v18(v19, a2, a2, v17);
}

uint64_t sub_220226170(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22036F388();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_22036F3C8();
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24));
      if (v14 >= 3)
      {
        return v14 - 2;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_220226278(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22036F388();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_22036F3C8();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_220226380(uint64_t a1, uint64_t a2, int *a3)
{
  sub_220230578();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_22:

    return v9(v10, a2, v8);
  }

  sub_22033C920(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_21:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_22;
  }

  sub_22033C920(0, &qword_281266718, sub_220236C88, sub_220236CDC);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_21;
  }

  sub_22033C920(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_21;
  }

  sub_22033C920(0, &qword_281266708, sub_22027B158, sub_22027B1AC);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_21;
  }

  sub_22033C920(0, &qword_281266728, sub_2202020B8, sub_220202110);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_21;
  }

  sub_22033C920(0, &qword_2812667C8, sub_22024ED64, sub_22024EDBC);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_21;
  }

  sub_22033C920(0, &qword_281266750, sub_2202A063C, sub_2202A0694);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[11];
    goto LABEL_21;
  }

  sub_22033C920(0, &qword_281266710, sub_2202376F0, sub_220237744);
  if (*(*(v20 - 8) + 84) == a2)
  {
    v8 = v20;
    v12 = *(v20 - 8);
    v13 = a3[12];
    goto LABEL_21;
  }

  sub_22033C920(0, &qword_281266858, sub_220236A30, sub_220236A84);
  if (*(*(v21 - 8) + 84) == a2)
  {
    v8 = v21;
    v12 = *(v21 - 8);
    v13 = a3[13];
    goto LABEL_21;
  }

  sub_22033C920(0, &qword_281266810, sub_220237C1C, sub_220237C70);
  v24 = v23;
  v25 = *(*(v23 - 8) + 48);
  v26 = a1 + a3[14];

  return v25(v26, a2, v24);
}

uint64_t sub_220226930(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_220230578();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_22:

    return v11(v12, a2, a2, v10);
  }

  sub_22033C920(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_21:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_22;
  }

  sub_22033C920(0, &qword_281266718, sub_220236C88, sub_220236CDC);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_21;
  }

  sub_22033C920(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_21;
  }

  sub_22033C920(0, &qword_281266708, sub_22027B158, sub_22027B1AC);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_21;
  }

  sub_22033C920(0, &qword_281266728, sub_2202020B8, sub_220202110);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_21;
  }

  sub_22033C920(0, &qword_2812667C8, sub_22024ED64, sub_22024EDBC);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_21;
  }

  sub_22033C920(0, &qword_281266750, sub_2202A063C, sub_2202A0694);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[11];
    goto LABEL_21;
  }

  sub_22033C920(0, &qword_281266710, sub_2202376F0, sub_220237744);
  if (*(*(v22 - 8) + 84) == a3)
  {
    v10 = v22;
    v14 = *(v22 - 8);
    v15 = a4[12];
    goto LABEL_21;
  }

  sub_22033C920(0, &qword_281266858, sub_220236A30, sub_220236A84);
  if (*(*(v23 - 8) + 84) == a3)
  {
    v10 = v23;
    v14 = *(v23 - 8);
    v15 = a4[13];
    goto LABEL_21;
  }

  sub_22033C920(0, &qword_281266810, sub_220237C1C, sub_220237C70);
  v26 = v25;
  v27 = *(*(v25 - 8) + 56);
  v28 = a1 + a4[14];

  return v27(v28, a2, a2, v26);
}

uint64_t sub_220226EEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22036F388();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_220226FAC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22036F388();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_220227068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_220230578();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    sub_220341238();
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = a1 + *(a3 + 20);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_220227158(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_220230578();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    sub_220341238();
    v13 = v12;
    v14 = *(*(v12 - 8) + 56);
    v15 = a1 + *(a4 + 20);

    return v14(v15, a2, a2, v13);
  }
}

uint64_t sub_220227254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22036F388();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_220227320(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22036F388();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_2202273D8(uint64_t a1, uint64_t a2, int *a3)
{
  sub_220345A80(0, &qword_281266880, sub_2201F93C8, sub_2201F9420);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_18:

    return v9(v10, a2, v8);
  }

  sub_220230578();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_17:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_18;
  }

  sub_220345A80(0, &qword_27CF29278, sub_2201F80D0, sub_2201F8128);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_17;
  }

  sub_220345A80(0, &qword_281266858, sub_220236A30, sub_220236A84);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_17;
  }

  sub_220345A80(0, &qword_27CF27A60, sub_2202B73F4, sub_2202B744C);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_17;
  }

  sub_220345A80(0, &qword_2812667F0, sub_220242CD4, sub_220242D28);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_17;
  }

  sub_220345A80(0, &qword_281266890, sub_220202B10, sub_220202B7C);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_17;
  }

  sub_220345A80(0, &qword_281266868, sub_220243860, sub_2202438B4);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[11];
    goto LABEL_17;
  }

  sub_220345A80(0, &qword_27CF29280, sub_22029FEAC, sub_22029FF04);
  v22 = v21;
  v23 = *(*(v21 - 8) + 48);
  v24 = a1 + a3[12];

  return v23(v24, a2, v22);
}

uint64_t sub_220227888(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_220345A80(0, &qword_281266880, sub_2201F93C8, sub_2201F9420);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_18:

    return v11(v12, a2, a2, v10);
  }

  sub_220230578();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_17:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_18;
  }

  sub_220345A80(0, &qword_27CF29278, sub_2201F80D0, sub_2201F8128);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_17;
  }

  sub_220345A80(0, &qword_281266858, sub_220236A30, sub_220236A84);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_17;
  }

  sub_220345A80(0, &qword_27CF27A60, sub_2202B73F4, sub_2202B744C);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_17;
  }

  sub_220345A80(0, &qword_2812667F0, sub_220242CD4, sub_220242D28);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_17;
  }

  sub_220345A80(0, &qword_281266890, sub_220202B10, sub_220202B7C);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_17;
  }

  sub_220345A80(0, &qword_281266868, sub_220243860, sub_2202438B4);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[11];
    goto LABEL_17;
  }

  sub_220345A80(0, &qword_27CF29280, sub_22029FEAC, sub_22029FF04);
  v24 = v23;
  v25 = *(*(v23 - 8) + 56);
  v26 = a1 + a4[12];

  return v25(v26, a2, a2, v24);
}

uint64_t sub_220227D44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22036F388();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_220227DF0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_22036F388();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_220227F54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_220230578();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    sub_22034B7F0();
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = a1 + *(a3 + 20);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_220228044(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_220230578();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    sub_22034B7F0();
    v13 = v12;
    v14 = *(*(v12 - 8) + 56);
    v15 = a1 + *(a4 + 20);

    return v14(v15, a2, a2, v13);
  }
}

uint64_t sub_220228140(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22036F388();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_2202281F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22036F388();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_2202282B0(uint64_t a1, uint64_t a2, int *a3)
{
  sub_220230578();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_24:

    return v9(v10, a2, v8);
  }

  sub_220230718();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_23:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_24;
  }

  sub_2202D2314(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_23;
  }

  sub_2202D2314(0, &qword_281266718, sub_220236C88, sub_220236CDC);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_23;
  }

  sub_2202D2314(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_23;
  }

  sub_2202D2314(0, &qword_281266708, sub_22027B158, sub_22027B1AC);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_23;
  }

  sub_2202D2314(0, &qword_281266728, sub_2202020B8, sub_220202110);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_23;
  }

  sub_2202D2314(0, &qword_2812667C8, sub_22024ED64, sub_22024EDBC);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[11];
    goto LABEL_23;
  }

  sub_2202D2314(0, &qword_281266850, sub_220254714, sub_22025476C);
  if (*(*(v20 - 8) + 84) == a2)
  {
    v8 = v20;
    v12 = *(v20 - 8);
    v13 = a3[12];
    goto LABEL_23;
  }

  sub_2202D2314(0, &qword_281266710, sub_2202376F0, sub_220237744);
  if (*(*(v21 - 8) + 84) == a2)
  {
    v8 = v21;
    v12 = *(v21 - 8);
    v13 = a3[13];
    goto LABEL_23;
  }

  sub_2202D2314(0, &qword_281266858, sub_220236A30, sub_220236A84);
  if (*(*(v22 - 8) + 84) == a2)
  {
    v8 = v22;
    v12 = *(v22 - 8);
    v13 = a3[14];
    goto LABEL_23;
  }

  sub_2202D2314(0, &qword_281266810, sub_220237C1C, sub_220237C70);
  v25 = v24;
  v26 = *(*(v24 - 8) + 48);
  v27 = a1 + a3[15];

  return v26(v27, a2, v25);
}

uint64_t sub_2202288A8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_220230578();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_24:

    return v11(v12, a2, a2, v10);
  }

  sub_220230718();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_23:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_24;
  }

  sub_2202D2314(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_23;
  }

  sub_2202D2314(0, &qword_281266718, sub_220236C88, sub_220236CDC);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_23;
  }

  sub_2202D2314(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_23;
  }

  sub_2202D2314(0, &qword_281266708, sub_22027B158, sub_22027B1AC);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_23;
  }

  sub_2202D2314(0, &qword_281266728, sub_2202020B8, sub_220202110);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_23;
  }

  sub_2202D2314(0, &qword_2812667C8, sub_22024ED64, sub_22024EDBC);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[11];
    goto LABEL_23;
  }

  sub_2202D2314(0, &qword_281266850, sub_220254714, sub_22025476C);
  if (*(*(v22 - 8) + 84) == a3)
  {
    v10 = v22;
    v14 = *(v22 - 8);
    v15 = a4[12];
    goto LABEL_23;
  }

  sub_2202D2314(0, &qword_281266710, sub_2202376F0, sub_220237744);
  if (*(*(v23 - 8) + 84) == a3)
  {
    v10 = v23;
    v14 = *(v23 - 8);
    v15 = a4[13];
    goto LABEL_23;
  }

  sub_2202D2314(0, &qword_281266858, sub_220236A30, sub_220236A84);
  if (*(*(v24 - 8) + 84) == a3)
  {
    v10 = v24;
    v14 = *(v24 - 8);
    v15 = a4[14];
    goto LABEL_23;
  }

  sub_2202D2314(0, &qword_281266810, sub_220237C1C, sub_220237C70);
  v27 = v26;
  v28 = *(*(v26 - 8) + 56);
  v29 = a1 + a4[15];

  return v28(v29, a2, a2, v27);
}

uint64_t sub_220228EAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22036F388();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_22036F3C8();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_220228FBC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22036F388();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_22036F3C8();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_2202290C8(uint64_t a1, uint64_t a2, int *a3)
{
  sub_220230578();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  sub_2203527C8(0, &qword_281266770, sub_22023D918, sub_22023D96C);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  sub_2203527C8(0, &qword_2812667D8, sub_2201F8808, sub_2201F8860);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  sub_2203527C8(0, &qword_281266778, sub_2202AAD64, sub_2202AADBC);
  v17 = v16;
  v18 = *(*(v16 - 8) + 48);
  v19 = a1 + a3[7];

  return v18(v19, a2, v17);
}

uint64_t sub_2202292F8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_220230578();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  sub_2203527C8(0, &qword_281266770, sub_22023D918, sub_22023D96C);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  sub_2203527C8(0, &qword_2812667D8, sub_2201F8808, sub_2201F8860);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  sub_2203527C8(0, &qword_281266778, sub_2202AAD64, sub_2202AADBC);
  v19 = v18;
  v20 = *(*(v18 - 8) + 56);
  v21 = a1 + a4[7];

  return v20(v21, a2, a2, v19);
}

uint64_t sub_220229534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22036F388();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}