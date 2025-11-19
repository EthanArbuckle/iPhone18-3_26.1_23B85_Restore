uint64_t sub_1420()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  return v2;
}

BOOL sub_1490(uint64_t a1)
{
  v4 = sub_1474();

  v2 = a1 < v4 || a1 >= sub_1458();

  return v2;
}

uint64_t sub_1538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[9] = v4;
  v5[8] = a2;
  v5[2] = v5;
  v5[3] = 0;
  v5[4] = 0;
  v5[5] = 0;
  v5[6] = 0;
  v5[7] = 0;
  v6 = sub_9140();
  v5[10] = v6;
  v11 = *(v6 - 8);
  v5[11] = v11;
  v12 = *(v11 + 64);
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v7 = sub_1D04(&qword_102B8, &qword_9618);
  v5[14] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v5[15] = swift_task_alloc();
  v13 = *(*(sub_1D04(&qword_102C0, &unk_9620) - 8) + 64);
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v5[3] = a1;
  v5[4] = a2;
  v5[5] = a3;
  v5[6] = a4;
  v5[7] = v4;
  v9 = v5[2];

  return _swift_task_switch(sub_1768, 0);
}

uint64_t sub_1768()
{
  v33 = v0[18];
  v35 = v0[17];
  v38 = v0[15];
  v32 = v0[14];
  v36 = v0[11];
  v37 = v0[10];
  v1 = v0[8];
  v0[2] = v0;
  v31 = v1[4];
  sub_1D70(v1, v1[3]);
  sub_9150();
  (*(v36 + 104))(v35, enum case for DeliveryVehicle.siriAutoComplete(_:), v37);
  (*(v36 + 56))(v35, 0);
  v34 = *(v32 + 48);
  sub_1DDC(v33, v38);
  sub_1DDC(v35, &v38[v34]);
  v39 = *(v36 + 48);
  if (v39(v38, 1, v37) == 1)
  {
    if (v39(&v38[v34], 1, *(v30 + 80)) == 1)
    {
      sub_2030(*(v30 + 120));
      v28 = 1;
      goto LABEL_7;
    }
  }

  else
  {
    v29 = *(v30 + 80);
    sub_1DDC(*(v30 + 120), *(v30 + 128));
    if (v39(&v38[v34], 1, v29) != 1)
    {
      v2 = *(v30 + 128);
      v26 = *(v30 + 120);
      v23 = *(v30 + 104);
      v22 = *(v30 + 96);
      v24 = *(v30 + 80);
      v21 = *(v30 + 88);
      v20 = *(v21 + 32);
      v20();
      (v20)(v22, &v38[v34], v24);
      sub_2328();
      v27 = sub_9320();
      v25 = *(v21 + 8);
      v25(v22, v24);
      v25(v23, v24);
      sub_2030(v26);
      v28 = v27;
      goto LABEL_7;
    }

    (*(*(v30 + 88) + 8))(*(v30 + 128), *(v30 + 80));
  }

  sub_1F04(*(v30 + 120));
  v28 = 0;
LABEL_7:
  v19 = *(v30 + 144);
  sub_2030(*(v30 + 136));
  sub_2030(v19);
  if (v28)
  {
    v17 = sub_94A0();
    v16 = v3;
    v4 = sub_20D8(1);
    v16[3] = &type metadata for String;
    *v16 = v4;
    v16[1] = v5;
    sub_2164();
    v18 = v17;
  }

  else
  {
    v6 = *(v30 + 72);
    v18 = sub_21A8();
  }

  v7 = *(v30 + 144);
  v11 = *(v30 + 136);
  v12 = *(v30 + 128);
  v13 = *(v30 + 120);
  v14 = *(v30 + 104);
  v15 = *(v30 + 96);

  v8 = *(*(v30 + 16) + 8);
  v9 = *(v30 + 16);

  return v8(v18);
}

uint64_t sub_1D04(uint64_t *a1, uint64_t *a2)
{
  v6 = *a1;
  if (!*a1)
  {
    v3 = *a2;
    TypeByMangledNameInContext2 = swift_getTypeByMangledNameInContext2();
    *a1 = TypeByMangledNameInContext2;
    return TypeByMangledNameInContext2;
  }

  return v6;
}

void *sub_1D70(void *result, uint64_t a2)
{
  v2 = *(*(a2 - 8) + 80);
  if ((v2 & 0x20000) != 0)
  {
    return (*result + ((v2 + 16) & ~v2));
  }

  return result;
}

void *sub_1DDC(const void *a1, void *a2)
{
  v6 = sub_9140();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_1D04(&qword_102C0, &unk_9620);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_1F04(uint64_t a1)
{
  v4 = sub_9140();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  if (!(v6)(a1, 1))
  {
    (*(v5 + 8))(a1, v4);
  }

  v2 = a1 + *(sub_1D04(&qword_102B8, &qword_9618) + 48);
  if (!v6())
  {
    (*(v5 + 8))(v2, v4);
  }

  return a1;
}

uint64_t sub_2030(uint64_t a1)
{
  v3 = sub_9140();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_20D8(char a1)
{
  if (a1)
  {
    return sub_9340("other", 5uLL, 1);
  }

  else
  {
    return sub_9340("bedtime", 7uLL, 1);
  }
}

uint64_t sub_21A8()
{
  v15 = 0;
  v14 = 0;
  v2 = 0;
  v7 = sub_90D0();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v3 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v8 = &v2 - v3;
  v12 = sub_9070();
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v4 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v12);
  v11 = &v2 - v4;
  v15 = &v2 - v4;
  v14 = v0;
  sub_9060();
  sub_23A8(v8);
  v13 = sub_2498(v11, v8);
  (*(v5 + 8))(v8, v7);
  (*(v9 + 8))(v11, v12);
  return v13;
}

unint64_t sub_2328()
{
  v2 = qword_102C8;
  if (!qword_102C8)
  {
    sub_9140();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_102C8);
    return WitnessTable;
  }

  return v2;
}

void sub_23A8(uint64_t a1@<X8>)
{
  v5 = a1;
  v7 = sub_90D0();
  v3 = *(v7 - 8);
  v4 = v7 - 8;
  v2 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v6 = &v1 - v2;
  v8 = [objc_opt_self() currentCalendar];
  sub_90A0();
  (*(v3 + 32))(v5, v6, v7);
}

uint64_t sub_2498(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v12[2] = a2;
  v3 = v2;
  v14 = v3;
  v25 = 0;
  v24 = 0;
  v23 = 0;
  v22 = 0;
  v17 = sub_90B0();
  v15 = *(v17 - 8);
  v16 = v17 - 8;
  v5 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v18 = v12 - v6;
  v25 = v13;
  v24 = a2;
  v23 = v14;
  (*(v15 + 104))();
  v19 = sub_90C0();
  (*(v15 + 8))(v18, v17);
  v22 = v19;
  v20 = sub_94A0();
  v21 = v7;
  if (sub_1490(v19))
  {
    v12[0] = sub_20D8(0);
  }

  else
  {
    v12[0] = sub_20D8(1);
  }

  v12[1] = v8;
  result = v20;
  v10 = v21;
  v11 = v12[0];
  v21[3] = &type metadata for String;
  *v10 = v11;
  v10[1] = v8;
  sub_2164();
  return result;
}

uint64_t sub_2718()
{
  v0 = sub_9340("typeOfTimeOfDay", 0xFuLL, 1);
  result = v3;
  *(v3 + 16) = v0;
  *(v3 + 24) = v2;
  return result;
}

uint64_t sub_27B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v5;
  *(v5 + 16) = v5;
  v6 = *v4;
  v7 = swift_task_alloc();
  *(v9 + 24) = v7;
  *v7 = *(v9 + 16);
  v7[1] = sub_2884;

  return sub_1538(a1, a2, a3, a4);
}

uint64_t sub_2884(uint64_t a1)
{
  v5 = *v1;
  v2 = *(*v1 + 24);
  *(v5 + 16) = *v1;

  v3 = *(*(v5 + 16) + 8);

  return v3(a1);
}

uint64_t sub_29CC(uint64_t a1, void *a2)
{
  v7._countAndFlagsBits = a1;
  v7._object = a2;
  v2._rawValue = sub_94A0();
  *v3 = "bedtime";
  *(v3 + 8) = 7;
  *(v3 + 16) = 2;
  *(v3 + 24) = "other";
  *(v3 + 32) = 5;
  *(v3 + 40) = 2;
  sub_2164();
  v8 = sub_9460(v2, v7);

  if (!v8)
  {
    v6 = 0;
LABEL_6:

    return v6;
  }

  if (v8 == 1)
  {
    v6 = 1;
    goto LABEL_6;
  }

  return 2;
}

unint64_t sub_2B4C()
{
  v2 = qword_102D0;
  if (!qword_102D0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_102D0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_2C98@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_29CC(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_2CD0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_20D8(*v1 & 1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2D40(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFE)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 1) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 254;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 2;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_2EA8(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFE)
  {
    v5 = ((a3 + 1) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFE)
  {
    v4 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_30F0()
{
  v2 = qword_10378;
  if (!qword_10378)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10378);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_3184()
{
  v2 = qword_10380;
  if (!qword_10380)
  {
    type metadata accessor for TimeOfDayResolver();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10380);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_321C()
{
  v2 = qword_10388;
  if (!qword_10388)
  {
    type metadata accessor for TimeOfDayResolver();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10388);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_329C(uint64_t a1)
{
  v1 = *(a1 + 8);

  return a1;
}

uint64_t sub_32D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[33] = a3;
  v4[32] = a1;
  v4[27] = v4;
  v4[28] = 0;
  v4[29] = 0;
  v4[30] = 0;
  v4[31] = 0;
  v4[17] = 0;
  v4[18] = 0;
  v4[19] = 0;
  v4[20] = 0;
  v4[25] = 0;
  v4[26] = 0;
  v5 = sub_92C0();
  v4[34] = v5;
  v9 = *(v5 - 8);
  v4[35] = v9;
  v6 = *(v9 + 64) + 15;
  v4[36] = swift_task_alloc();
  v4[28] = a1;
  v4[29] = a2;
  v4[30] = a3;
  v4[31] = v3;
  v7 = v4[27];

  return _swift_task_switch(sub_3438, 0);
}

uint64_t sub_3438()
{
  v1 = v0[32];
  v0[27] = v0;
  v24 = v1[4];
  sub_1D70(v1, v1[3]);
  v2 = sub_9130();
  v25 = sub_8840(v2);
  v26 = v3;
  v0[17] = v25;
  v0[18] = v3;

  if (v26)
  {

    v21 = v25;
    v22 = v26;
  }

  else
  {
    v21 = 0;
    v22 = 0;
  }

  if (v22)
  {
    v19 = v21;
    v20 = v22;
  }

  else
  {
    v19 = 0;
    v20 = 0;
  }

  if (v20)
  {
    v23[19] = v19;
    v23[20] = v20;
    v17 = *sub_3A5C();

    v23[23] = v19;
    v23[24] = v20;
    sub_9300();
    sub_329C((v23 + 23));
    v18 = v23[22];
    if (v18)
    {
      v15 = v23[36];
      v16 = v23[34];
      v12 = v23[33];
      v13 = v23[35];
      v23[25] = v23[21];
      v23[26] = v18;

      v14 = v12[4];
      sub_1D70(v12, v12[3]);
      sub_1D04(&qword_10398, &unk_9860);
      sub_94A0();
      sub_92F0();
      (*(v13 + 104))(v15, enum case for Objective.discoverability(_:), v16);
      sub_9220();
      (*(v13 + 8))(v15, v16);

      sub_3ABC(v23 + 2, v23 + 12);
      if (v23[15])
      {
        sub_3C2C(v23 + 12, v23 + 7);
        sub_1D04(&qword_10390, &qword_9858);
        v10 = sub_94A0();
        sub_3C68((v23 + 7), v4);
        sub_2164();
        sub_3B8C(v23 + 7);
        sub_3B50(v23 + 2);

        v11 = v10;
        goto LABEL_17;
      }

      sub_3B50(v23 + 12);
      sub_3B50(v23 + 2);
    }

    else
    {
    }
  }

  sub_1D04(&qword_10390, &qword_9858);
  v9 = sub_94A0();

  v11 = v9;
LABEL_17:
  v5 = v23[36];

  v6 = *(v23[27] + 8);
  v7 = v23[27];

  return v6(v11);
}

uint64_t *sub_3A5C()
{
  if (qword_10270 != -1)
  {
    swift_once();
  }

  return &qword_10DB0;
}

void *sub_3ABC(void *a1, void *a2)
{
  if (a1[3])
  {
    v2 = a1[3];
    a2[3] = v2;
    a2[4] = a1[4];
    (**(v2 - 8))();
  }

  else
  {
    memcpy(a2, a1, 0x28uLL);
  }

  return a2;
}

uint64_t *sub_3B50(uint64_t *a1)
{
  if (a1[3])
  {
    sub_3B8C(a1);
  }

  return a1;
}

uint64_t sub_3B8C(uint64_t *a1)
{
  v3 = a1[3];
  if ((*(*(v3 - 8) + 80) & 0x20000) == 0)
  {
    return (*(*(v3 - 8) + 8))(a1);
  }

  v2 = *a1;
}

uint64_t sub_3C68(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  *(a2 + 32) = *(a1 + 32);
  (**(v2 - 8))(a2);
  return a2;
}

uint64_t sub_3D74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v4;
  *(v4 + 16) = v4;
  v5 = *v3;
  v6 = swift_task_alloc();
  *(v8 + 24) = v6;
  *v6 = *(v8 + 16);
  v6[1] = sub_2884;

  return sub_32D4(a1, a2, a3);
}

uint64_t sub_3E3C()
{
  sub_1D04(&qword_103A0, qword_9870);
  sub_94A0();
  v4 = v0;
  *v0 = sub_9340("dalWhoIsSiri", 0xCuLL, 1);
  v4[1] = v1;
  v4[2] = sub_9340("suggestHelp", 0xBuLL, 1);
  v4[3] = v2;
  sub_2164();
  result = sub_92F0();
  qword_10DB0 = result;
  return result;
}

uint64_t sub_3F10()
{
  v1 = *sub_3A5C();

  return v1;
}

unint64_t sub_3F94()
{
  v2 = qword_10440;
  if (!qword_10440)
  {
    type metadata accessor for SocialHintsGenerator();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10440);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_402C()
{
  v2 = qword_10448;
  if (!qword_10448)
  {
    type metadata accessor for SocialHintsGenerator();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10448);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_40AC()
{
  v18 = sub_94A0();
  v17 = v0;
  *v0 = sub_9340("en-US", 5uLL, 1);
  v17[1] = v1;
  v17[2] = sub_9340("en-GB", 5uLL, 1);
  v17[3] = v2;
  v17[4] = sub_9340("en-IN", 5uLL, 1);
  v17[5] = v3;
  v17[6] = sub_9340("en-AU", 5uLL, 1);
  v17[7] = v4;
  v17[8] = sub_9340("en-CA", 5uLL, 1);
  v17[9] = v5;
  v17[10] = sub_9340("es-ES", 5uLL, 1);
  v17[11] = v6;
  v17[12] = sub_9340("es-MX", 5uLL, 1);
  v17[13] = v7;
  v17[14] = sub_9340("es-US", 5uLL, 1);
  v17[15] = v8;
  v17[16] = sub_9340("zh-CN", 5uLL, 1);
  v17[17] = v9;
  v17[18] = sub_9340("zh-HK", 5uLL, 1);
  v17[19] = v10;
  v17[20] = sub_9340("de-DE", 5uLL, 1);
  v17[21] = v11;
  v17[22] = sub_9340("fr-FR", 5uLL, 1);
  v17[23] = v12;
  v17[24] = sub_9340("ja-JP", 5uLL, 1);
  v17[25] = v13;
  sub_2164();
  v22 = v18;
  v19 = sub_1D04(&qword_10470, &qword_9980);
  v20 = sub_9090();
  v14 = sub_4D00();
  v16 = sub_441C(sub_43C0, 0, v19, v20, &type metadata for Never, v14, &protocol witness table for Never, v21);
  result = sub_4DFC(&v22);
  qword_10DB8 = v16;
  return result;
}

uint64_t sub_43C0(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  return sub_9080();
}

uint64_t sub_441C(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v37 = a1;
  v38 = a2;
  v62 = a3;
  v52 = a4;
  v39 = a5;
  v61 = a6;
  v41 = a8;
  v42 = "Fatal error";
  v43 = "Range requires lowerBound <= upperBound";
  v44 = "Swift/Range.swift";
  v45 = "Index out of range";
  v46 = "invalid Collection: count differed in successive traversals";
  v47 = "Swift/ArrayShared.swift";
  v72[3] = a3;
  v72[2] = a4;
  v72[1] = a5;
  v48 = *(a5 - 8);
  v49 = a5 - 8;
  v50 = (*(v48 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(a1);
  v51 = &v18 - v50;
  v9 = *(v8 + 8);
  v53 = 0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v55 = *(AssociatedTypeWitness - 8);
  v56 = AssociatedTypeWitness - 8;
  v57 = (*(v55 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = __chkstk_darwin(v53);
  v58 = &v18 - v57;
  v59 = (*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10);
  v60 = &v18 - v59;
  v63 = swift_getAssociatedTypeWitness();
  v64 = *(v63 - 8);
  v65 = v63 - 8;
  v66 = (*(v64 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = __chkstk_darwin(v62);
  v67 = &v18 - v66;
  v68 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v12);
  v69 = &v18 - v68;
  v70 = sub_93C0();
  if (!v70)
  {
    goto LABEL_24;
  }

  v72[0] = sub_9420();
  v36 = sub_9430();
  sub_9400(v70);
  result = sub_93B0();
  if (v70 < 0)
  {
    sub_9440();
    __break(1u);
LABEL_24:
    v20 = sub_9390();
    v21 = v40;
    return v20;
  }

  if (!v70)
  {
LABEL_19:
    v26 = v40;
LABEL_20:
    v22 = v26;
    sub_93D0();
    v17 = *(swift_getAssociatedConformanceWitness() + 8);
    v25 = sub_9320();
    v23 = *(v64 + 8);
    v24 = v64 + 8;
    v23(v67, v63);
    if ((v25 & 1) == 0)
    {
      sub_9450();
      __break(1u);
    }

    v23(v69, v63);
    v19 = v72[0];

    v20 = v19;
    v21 = v22;
    return v20;
  }

  v34 = 0;
  for (i = v40; ; i = v30)
  {
    v32 = i;
    v33 = v34;
    if (v34 < 0 || v33 >= v70)
    {
      goto LABEL_18;
    }

    if (v70 < 0)
    {
      sub_9440();
      __break(1u);
LABEL_18:
      sub_9450();
      __break(1u);
      goto LABEL_19;
    }

    v31 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    v29 = &v71;
    v28 = sub_93F0();
    (*(v55 + 16))(v58);
    v28();
    v16 = v32;
    v37(v58, v51);
    v30 = v16;
    if (v16)
    {
      (*(v55 + 8))(v58, AssociatedTypeWitness);
      (*(v64 + 8))(v69, v63);
      sub_8814(v72);
      (*(v48 + 32))(v41, v51, v39);
      return v27;
    }

    (*(v55 + 8))(v58, AssociatedTypeWitness);
    sub_9410();
    sub_93E0();
    if (v31 == v70)
    {
      v26 = v30;
      goto LABEL_20;
    }

    result = v30;
    v34 = v31;
  }

  __break(1u);
  return result;
}

unint64_t sub_4D00()
{
  v2 = qword_10478;
  if (!qword_10478)
  {
    sub_4D88(&qword_10470, &qword_9980);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10478);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_4D88(uint64_t *a1, uint64_t *a2)
{
  v6 = *a1;
  if (!*a1)
  {
    v3 = *a2;
    TypeByMangledNameInContextInMetadataState2 = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = TypeByMangledNameInContextInMetadataState2;
    return TypeByMangledNameInContextInMetadataState2;
  }

  return v6;
}

uint64_t *sub_4DFC(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

uint64_t *sub_4E28()
{
  if (qword_10278 != -1)
  {
    swift_once();
  }

  return &qword_10DB8;
}

uint64_t sub_4E88()
{
  v1 = *sub_4E28();

  return v1;
}

uint64_t *sub_4EB8()
{
  v31 = sub_94A0();
  v30 = v0;
  *v0 = sub_9340("en-US", 5uLL, 1);
  v30[1] = v1;
  v30[2] = sub_9340("en-GB", 5uLL, 1);
  v30[3] = v2;
  v30[4] = sub_9340("en-IN", 5uLL, 1);
  v30[5] = v3;
  v30[6] = sub_9340("en-AU", 5uLL, 1);
  v30[7] = v4;
  v30[8] = sub_9340("en-CA", 5uLL, 1);
  v30[9] = v5;
  v30[10] = sub_9340("en-SG", 5uLL, 1);
  v30[11] = v6;
  v30[12] = sub_9340("en-IE", 5uLL, 1);
  v30[13] = v7;
  v30[14] = sub_9340("en-NZ", 5uLL, 1);
  v30[15] = v8;
  v30[16] = sub_9340("en-ZA", 5uLL, 1);
  v30[17] = v9;
  v30[18] = sub_9340("es-ES", 5uLL, 1);
  v30[19] = v10;
  v30[20] = sub_9340("es-MX", 5uLL, 1);
  v30[21] = v11;
  v30[22] = sub_9340("es-US", 5uLL, 1);
  v30[23] = v12;
  v30[24] = sub_9340("es-CL", 5uLL, 1);
  v30[25] = v13;
  v30[26] = sub_9340("de-DE", 5uLL, 1);
  v30[27] = v14;
  v30[28] = sub_9340("de-AT", 5uLL, 1);
  v30[29] = v15;
  v30[30] = sub_9340("de-CH", 5uLL, 1);
  v30[31] = v16;
  v30[32] = sub_9340("fr-FR", 5uLL, 1);
  v30[33] = v17;
  v30[34] = sub_9340("fr-CA", 5uLL, 1);
  v30[35] = v18;
  v30[36] = sub_9340("fr-BE", 5uLL, 1);
  v30[37] = v19;
  v30[38] = sub_9340("fr-CH", 5uLL, 1);
  v30[39] = v20;
  v30[40] = sub_9340("it-IT", 5uLL, 1);
  v30[41] = v21;
  v30[42] = sub_9340("it-CH", 5uLL, 1);
  v30[43] = v22;
  v30[44] = sub_9340("ja-JP", 5uLL, 1);
  v30[45] = v23;
  v30[46] = sub_9340("ko-KR", 5uLL, 1);
  v30[47] = v24;
  v30[48] = sub_9340("pt-BR", 5uLL, 1);
  v30[49] = v25;
  v30[50] = sub_9340("zh-CN", 5uLL, 1);
  v30[51] = v26;
  sub_2164();
  v35 = v31;
  v32 = sub_1D04(&qword_10470, &qword_9980);
  v33 = sub_9090();
  v27 = sub_4D00();
  v29 = sub_441C(sub_43C0, 0, v32, v33, &type metadata for Never, v27, &protocol witness table for Never, v34);
  result = sub_4DFC(&v35);
  qword_10DC0 = v29;
  return result;
}

uint64_t *sub_53D4()
{
  if (qword_10280 != -1)
  {
    swift_once();
  }

  return &qword_10DC0;
}

uint64_t sub_5434()
{
  v1 = *sub_53D4();

  return v1;
}

uint64_t sub_5464()
{
  result = sub_9340("/System/Library/Assistant/FlowDelegatePlugins/SocialConversationFlowDelegatePlugin.bundle/Templates/", 0x64uLL, 1);
  qword_10DC8 = result;
  qword_10DD0 = v1;
  return result;
}

uint64_t *sub_54A8()
{
  if (qword_10288 != -1)
  {
    swift_once();
  }

  return &qword_10DC8;
}

uint64_t sub_5508()
{
  v0 = sub_54A8();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_5544(uint64_t a1, uint64_t a2)
{
  v3[25] = v2;
  v3[24] = a2;
  v3[23] = a1;
  v3[19] = v3;
  v3[17] = 0;
  v3[18] = 0;
  v3[20] = 0;
  v3[21] = 0;
  v3[17] = a1;
  v3[18] = a2;
  v3[20] = v2;
  v4 = v3[19];
  return _swift_task_switch(sub_55A8, 0);
}

uint64_t sub_55A8()
{
  v6 = v0[23];
  v0[19] = v0;
  v5 = *sub_8A48();

  v0[5] = sub_9110();
  v0[6] = sub_5AA8();
  v9 = v0 + 2;
  v0[2] = v5;
  v8 = (v6 + *v6);
  v1 = v6[1];
  v2 = swift_task_alloc();
  v7[26] = v2;
  *v2 = v7[19];
  v2[1] = sub_56EC;
  v3 = v7[24];

  return v8(v9);
}

uint64_t sub_56EC(uint64_t a1)
{
  v7 = *v1;
  v6 = (*v1 + 16);
  v3 = *(*v1 + 208);
  *(v7 + 152) = *v1;
  *(v7 + 216) = a1;

  sub_3B8C(v6);
  v4 = *(v7 + 152);

  return _swift_task_switch(sub_581C, 0);
}

uint64_t sub_581C()
{
  v10 = v0[27];
  v11 = v0[25];
  v0[19] = v0;
  v0[21] = v10;
  v0[22] = sub_5B28();

  v12 = swift_task_alloc();
  *(v12 + 16) = v10;
  *(v12 + 24) = v11;
  sub_1D04(&qword_10488, &qword_9990);
  sub_5C88();
  sub_9350();
  v8 = v9[27];

  sub_4DFC(v9 + 22);
  v5 = type metadata accessor for SocialHintsGenerator();
  v6 = sub_3D38();
  v9[10] = v5;
  v9[11] = sub_5D10();
  v9[7] = v6;
  sub_9230();
  sub_3B8C(v9 + 7);

  sub_9250();
  sub_1D04(&qword_104A0, &unk_9998);
  v7 = sub_94A0();
  sub_3C68((v9 + 12), v1);
  sub_2164();
  sub_3B8C(v9 + 12);

  v2 = *(v9[19] + 8);
  v3 = v9[19];

  return v2(v7);
}

unint64_t sub_5AA8()
{
  v2 = qword_10480;
  if (!qword_10480)
  {
    sub_9110();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10480);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_5B28()
{
  result = sub_94A0();
  *v1 = 0;
  v1[1] = 1;
  v1[2] = 2;
  v1[3] = 3;
  v1[4] = 4;
  sub_2164();
  return result;
}

uint64_t sub_5B90(char *a1)
{
  v2 = *a1;
  sub_5D90(*a1);
  sub_5ED4(v2);
  sub_9240();
}

uint64_t sub_5C5C(char *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_5B90(a1);
}

unint64_t sub_5C88()
{
  v2 = qword_10490;
  if (!qword_10490)
  {
    sub_4D88(&qword_10488, &qword_9990);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10490);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_5D10()
{
  v2 = qword_10498;
  if (!qword_10498)
  {
    type metadata accessor for SocialHintsGenerator();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10498);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_5D90(char a1)
{
  switch(a1)
  {
    case 0:
      return sub_9340("flipACoin", 9uLL, 1);
    case 1:
      return sub_9340("readMeAPoem", 0xBuLL, 1);
    case 2:
      return sub_9340("tellMeAJoke", 0xBuLL, 1);
    case 3:
      return sub_9340("tellMeAStory", 0xCuLL, 1);
  }

  return sub_9340("whatAreYouDoingToday", 0x14uLL, 1);
}

uint64_t sub_5ED4(char a1)
{
  v7 = a1;
  v6[0] = sub_9490();
  v6[1] = v1;
  v8._countAndFlagsBits = sub_9340("SocialSuggestions#", 0x12uLL, 1);
  sub_9480(v8);

  v5[0] = sub_5D90(a1);
  v5[1] = v2;
  sub_9470();
  sub_329C(v5);
  v9._countAndFlagsBits = sub_9340("", 0, 1);
  sub_9480(v9);

  sub_329C(v6);
  return sub_9330();
}

uint64_t sub_5FF4(void *a1, int a2)
{
  v124 = a1;
  v179 = a2;
  v244 = 0;
  v243 = 0;
  v163 = 0;
  v119 = sub_9190();
  v120 = *(v119 - 8);
  v121 = v119 - 8;
  v122 = (*(v120 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v123 = (&v40 - v122);
  v162 = sub_90F0();
  v159 = *(v162 - 8);
  v160 = v162 - 8;
  v125 = (*(v159 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v124);
  v161 = (&v40 - v125);
  v244 = v2;
  v243 = v3;
  v178 = v239;
  sub_8620(v2, v239);
  v127 = v240;
  v126 = v241;
  v128 = v242;
  sub_1D70(v178, v240);
  v4 = sub_54A8();
  v129 = *v4;
  v130 = v4[1];

  v177 = v235;
  v236 = v127;
  v237 = v126;
  v238 = v128;
  sub_8694(v235);
  sub_91B0();

  v132 = v236;
  v131 = v237;
  v133 = v238;
  sub_1D70(v177, v236);
  v134 = sub_6F9C(v179);
  v176 = v231;
  v232 = v132;
  v233 = v131;
  v234 = v133;
  sub_8694(v231);
  sub_91E0();

  v144 = v232;
  v143 = v233;
  v145 = v234;
  sub_1D70(v176, v232);
  v142 = sub_9100();
  v141 = sub_94A0();
  v138 = v5;
  v135 = *(v142 - 8);
  v136 = v142 - 8;
  v140 = *(v135 + 104);
  v139 = v135 + 104;
  v140();
  v137 = *(v135 + 72);
  (v140)(v138 + v137, enum case for DeviceType.iPad(_:), v142);
  (v140)(v138 + 2 * v137, enum case for DeviceType.mac(_:), v142);
  v6 = v141;
  sub_2164();
  v146 = v6;
  v175 = v227;
  v228 = v144;
  v229 = v143;
  v230 = v145;
  sub_8694(v227);
  sub_91D0();

  v148 = v228;
  v147 = v229;
  v149 = v230;
  sub_1D70(v175, v228);
  v150 = sub_705C(v179);
  v174 = v223;
  v224 = v148;
  v225 = v147;
  v226 = v149;
  sub_8694(v223);
  sub_9200();

  v152 = v224;
  v151 = v225;
  v153 = v226;
  sub_1D70(v174, v224);
  v154 = sub_5D90(v179);
  v155 = v7;
  v173 = v219;
  v220 = v152;
  v221 = v151;
  v222 = v153;
  sub_8694(v219);
  sub_91F0();

  v157 = v220;
  v156 = v221;
  v158 = v222;
  sub_1D70(v173, v220);
  v8 = sub_5D90(v179);
  v9 = v159;
  v10 = v8;
  v11 = v161;
  *v161 = v10;
  v11[1] = v12;
  (*(v9 + 104))();
  v172 = v215;
  v216 = v157;
  v217 = v156;
  v218 = v158;
  sub_8694(v215);
  sub_91A0();
  (*(v159 + 8))(v161, v162);
  v168 = v216;
  v166 = v217;
  v169 = v218;
  v164 = sub_1D70(v172, v216);
  v165 = type metadata accessor for SocialSuggestionsAssetProvider();
  v167 = sub_3D38();
  v170 = v213;
  v213[3] = v165;
  v213[4] = sub_8714();
  v213[0] = v167;
  v171 = v214;
  v214[3] = v168;
  v214[4] = v166;
  v214[5] = v169;
  sub_8694(v214);
  sub_91C0();
  sub_3B8C(v170);
  sub_3B8C(v171);
  sub_3B8C(v172);
  sub_3B8C(v173);
  sub_3B8C(v174);
  sub_3B8C(v175);
  sub_3B8C(v176);
  sub_3B8C(v177);
  sub_3B8C(v178);
  v181 = &v212;
  v212 = v179;
  v180 = &v211;
  v211 = 0;
  v182 = sub_79E4();
  if (sub_94B0())
  {
    v118 = 1;
  }

  else
  {
    v210 = v179;
    v209 = 2;
    v118 = sub_94B0();
  }

  if (v118)
  {
    v79 = v194;
    sub_8620(v124, v194);
    v75 = v195;
    v76 = v196;
    v74 = v197;
    sub_1D70(v79, v195);
    v69 = 0;
    v96 = sub_92B0();
    v100 = 1;
    v66 = sub_94A0();
    v67 = v13;
    v68 = *sub_7330();

    v14 = v66;
    *v67 = v68;
    sub_2164();
    v77 = v14;
    v106 = sub_9140();
    v83 = 3;
    v73 = sub_94A0();
    v72 = v15;
    v84 = &enum case for DeliveryVehicle.assistantSuggestions(_:);
    v70 = *(v106 - 8);
    v71 = v106 - 8;
    v104 = *(v70 + 104);
    v103 = v70 + 104;
    v104();
    v99 = *(v70 + 72);
    v98 = &enum case for DeliveryVehicle.siriHelp(_:);
    (v104)(v72 + v100 * v99, enum case for DeliveryVehicle.siriHelp(_:), v106);
    v97 = 2;
    v102 = &enum case for DeliveryVehicle.siriAutoComplete(_:);
    (v104)(v72 + 2 * v99, enum case for DeliveryVehicle.siriAutoComplete(_:), v106);
    v16 = v73;
    sub_2164();
    v17 = v120;
    *v123 = v16;
    v107 = &enum case for SignalContextProperties.deliveryVehicle(_:);
    v109 = *(v17 + 104);
    v108 = v17 + 104;
    v109();
    v78 = v193;
    v193[3] = v75;
    v193[4] = v76;
    v193[5] = v74;
    sub_8694(v193);
    sub_90E0();
    v114 = *(v120 + 8);
    v113 = v120 + 8;
    v114(v123, v119);

    sub_3B8C(v78);
    sub_3B8C(v79);
    v92 = v189;
    sub_8620(v124, v189);
    v88 = v190;
    v89 = v191;
    v87 = v192;
    sub_1D70(v92, v190);
    v80 = sub_94A0();
    v81 = v18;
    v82 = *sub_7390();

    v19 = v80;
    *v81 = v82;
    sub_2164();
    v90 = v19;
    v86 = sub_94A0();
    v85 = v20;
    v21 = *v84;
    v104();
    (v104)(v85 + v100 * v99, *v98, v106);
    (v104)(v85 + v97 * v99, *v102, v106);
    v22 = v86;
    sub_2164();
    v23 = v107;
    v24 = v109;
    *v123 = v22;
    v25 = *v23;
    v24();
    v91 = v188;
    v188[3] = v88;
    v188[4] = v89;
    v188[5] = v87;
    sub_8694(v188);
    sub_90E0();
    v114(v123, v119);

    sub_3B8C(v91);
    sub_3B8C(v92);
    v117 = v184;
    sub_8620(v124, v184);
    v111 = v185;
    v112 = v186;
    v110 = v187;
    sub_1D70(v117, v185);
    v93 = sub_94A0();
    v94 = v26;
    v95 = *sub_73F0();

    v27 = v93;
    *v94 = v95;
    sub_2164();
    v115 = v27;
    v105 = sub_94A0();
    v101 = v28;
    v29 = *v98;
    v104();
    (v104)(v101 + v100 * v99, *v102, v106);
    v30 = v105;
    sub_2164();
    v31 = v107;
    v32 = v109;
    *v123 = v30;
    v33 = *v31;
    v32();
    v116 = v183;
    v183[3] = v111;
    v183[4] = v112;
    v183[5] = v110;
    sub_8694(v183);
    sub_90E0();
    v114(v123, v119);

    sub_3B8C(v116);
    result = sub_3B8C(v117);
  }

  else
  {
    v65 = v205;
    sub_8620(v124, v205);
    v61 = v206;
    v62 = v207;
    v60 = v208;
    sub_1D70(v65, v206);
    v59 = sub_92B0();
    v56 = sub_94A0();
    v57 = v35;
    v54 = *sub_7330();

    *v57 = v54;
    v55 = *sub_7390();

    v57[1] = v55;
    v58 = *sub_73F0();

    v36 = v56;
    v57[2] = v58;
    sub_2164();
    v63 = v36;
    v37 = sub_705C(v179);
    v38 = v120;
    *v123 = v37;
    (*(v38 + 104))();
    v64 = v204;
    v204[3] = v61;
    v204[4] = v62;
    v204[5] = v60;
    sub_8694(v204);
    sub_90E0();
    (*(v120 + 8))(v123, v119);

    sub_3B8C(v64);
    result = sub_3B8C(v65);
  }

  if (v179 == 3)
  {
    v53 = v200;
    sub_8620(v124, v200);
    v46 = v201;
    v45 = v202;
    v47 = v203;
    v44 = sub_1D70(v53, v201);
    v43 = 1;
    v48 = sub_9340("timeOfDay", 9uLL, 1);
    v51 = v39;
    v42 = 0;
    v40 = type metadata accessor for TimeOfDayResolver();
    v41 = sub_26DC();
    v50 = v198;
    v198[3] = v40;
    v198[4] = sub_8794();
    v198[0] = v41;
    sub_9170();
    sub_9340("typeOfTimeOfDay", 0xFuLL, v43 & 1);
    v49 = sub_9160();
    v52 = v199;
    v199[3] = v46;
    v199[4] = v45;
    v199[5] = v47;
    sub_8694(v199);
    sub_9210();

    sub_3B50(v50);

    sub_3B8C(v52);
    return sub_3B8C(v53);
  }

  return result;
}

uint64_t sub_6F9C(char a1)
{
  if (!a1 || a1 == 1 || a1 == 2 || a1 == 3)
  {
    v3 = *sub_53D4();

    return v3;
  }

  else
  {
    v2 = *sub_4E28();

    return v2;
  }
}

uint64_t sub_705C(char a1)
{
  switch(a1)
  {
    case 0:
      goto LABEL_6;
    case 1:
LABEL_7:
      v11 = sub_9140();
      v10 = sub_94A0();
      v8 = v2;
      v7 = *(v11 - 8);
      v9 = *(v7 + 104);
      v9();
      (v9)(v8 + *(v7 + 72), enum case for DeliveryVehicle.siriAutoComplete(_:), v11);
      sub_2164();
      return v10;
    case 2:
LABEL_6:
      v17 = sub_9140();
      v16 = sub_94A0();
      v14 = v1;
      v12 = *(v17 - 8);
      v15 = *(v12 + 104);
      v15();
      v13 = *(v12 + 72);
      (v15)(v14 + v13, enum case for DeliveryVehicle.siriAutoComplete(_:), v17);
      (v15)(v14 + 2 * v13, enum case for DeliveryVehicle.assistantSuggestions(_:), v17);
      sub_2164();
      return v16;
    case 3:
      goto LABEL_7;
  }

  v6 = sub_9140();
  v5 = sub_94A0();
  (*(*(v6 - 8) + 104))(v3, enum case for DeliveryVehicle.siriHelp(_:));
  sub_2164();
  return v5;
}

uint64_t *sub_7330()
{
  if (qword_10298 != -1)
  {
    swift_once();
  }

  return &qword_10458;
}

uint64_t *sub_7390()
{
  if (qword_102A0 != -1)
  {
    swift_once();
  }

  return &qword_10460;
}

uint64_t *sub_73F0()
{
  if (qword_10290 != -1)
  {
    swift_once();
  }

  return &qword_10450;
}

uint64_t sub_746C(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_2884;

  return sub_5544(a1, a2);
}

uint64_t sub_7528(uint64_t a1, void *a2)
{
  v7._countAndFlagsBits = a1;
  v7._object = a2;
  v2._rawValue = sub_94A0();
  *v3 = "flipACoin";
  *(v3 + 8) = 9;
  *(v3 + 16) = 2;
  *(v3 + 24) = "readMeAPoem";
  *(v3 + 32) = 11;
  *(v3 + 40) = 2;
  *(v3 + 48) = "tellMeAJoke";
  *(v3 + 56) = 11;
  *(v3 + 64) = 2;
  *(v3 + 72) = "tellMeAStory";
  *(v3 + 80) = 12;
  *(v3 + 88) = 2;
  *(v3 + 96) = "whatAreYouDoingToday";
  *(v3 + 104) = 20;
  *(v3 + 112) = 2;
  sub_2164();
  v8 = sub_9460(v2, v7);

  switch(v8)
  {
    case 0:
      v6 = 0;
LABEL_12:

      return v6;
    case 1:
      v6 = 1;
      goto LABEL_12;
    case 2:
      v6 = 2;
      goto LABEL_12;
    case 3:
      v6 = 3;
      goto LABEL_12;
    case 4:
      v6 = 4;
      goto LABEL_12;
  }

  return 5;
}

uint64_t sub_7780@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_7528(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_77B8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_5D90(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_77EC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_5B28();
  *a1 = result;
  return result;
}

uint64_t sub_78E8()
{
  sub_92B0();
  result = sub_92A0();
  qword_10450 = result;
  return result;
}

uint64_t sub_791C()
{
  v1 = *sub_73F0();

  return v1;
}

uint64_t sub_794C()
{
  sub_92B0();
  result = sub_9280();
  qword_10458 = result;
  return result;
}

uint64_t sub_7980()
{
  v1 = *sub_7330();

  return v1;
}

uint64_t sub_79B0()
{
  sub_92B0();
  result = sub_9290();
  qword_10460 = result;
  return result;
}

unint64_t sub_79E4()
{
  v2 = qword_104A8;
  if (!qword_104A8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_104A8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_7A60()
{
  v1 = *sub_7390();

  return v1;
}

uint64_t sub_7A90()
{
  sub_1D04(&qword_104B0, &qword_99A8);
  sub_94A0();
  v32 = v0;
  *v0 = 0;
  sub_92B0();
  v9 = sub_94A0();
  v10 = v1;
  v7 = *sub_73F0();

  *v10 = v7;
  v8 = *sub_7330();

  v10[1] = v8;
  v11 = *sub_7390();

  v10[2] = v11;
  sub_2164();
  *(v32 + 1) = v9;
  v32[16] = 1;
  v14 = sub_94A0();
  v15 = v2;
  v12 = *sub_73F0();

  *v15 = v12;
  v13 = *sub_7330();

  v15[1] = v13;
  v16 = *sub_7390();

  v15[2] = v16;
  sub_2164();
  *(v32 + 3) = v14;
  v32[32] = 2;
  v19 = sub_94A0();
  v20 = v3;
  v17 = *sub_73F0();

  *v20 = v17;
  v18 = *sub_7330();

  v20[1] = v18;
  v21 = *sub_7390();

  v20[2] = v21;
  sub_2164();
  *(v32 + 5) = v19;
  v32[48] = 3;
  v24 = sub_94A0();
  v25 = v4;
  v22 = *sub_73F0();

  *v25 = v22;
  v23 = *sub_7330();

  v25[1] = v23;
  v26 = *sub_7390();

  v25[2] = v26;
  sub_2164();
  *(v32 + 7) = v24;
  v32[64] = 4;
  v29 = sub_94A0();
  v30 = v5;
  v27 = *sub_73F0();

  *v30 = v27;
  v28 = *sub_7330();

  v30[1] = v28;
  v31 = *sub_7390();

  v30[2] = v31;
  sub_2164();
  *(v32 + 9) = v29;
  sub_2164();
  sub_1D04(&qword_104B8, &qword_99B0);
  sub_7DEC();
  result = sub_92F0();
  qword_10468 = result;
  return result;
}

unint64_t sub_7DEC()
{
  v2 = qword_104C0;
  if (!qword_104C0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_104C0);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_7E68()
{
  if (qword_102A8 != -1)
  {
    swift_once();
  }

  return &qword_10468;
}

uint64_t sub_7EC8()
{
  v1 = *sub_7E68();

  return v1;
}

uint64_t sub_7EF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a3;
  v13 = a1;
  v12[1] = a2;
  v28 = 0;
  v27 = 0;
  v26 = 0;
  v14 = (*(*(sub_1D04(&qword_104C8, qword_99B8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v13);
  v25 = v12 - v14;
  v15 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(v4);
  v24 = (v12 - v15);
  v28 = v6;
  v27 = v7;
  v26 = v3;
  v19 = 1;
  v8 = sub_9340("com.apple.siri", 0xEuLL, 1);
  v9 = v24;
  *v24 = v8;
  v9[1] = v10;
  v16 = enum case for Image.appIcon(_:);
  v20 = sub_9260();
  v17 = *(v20 - 8);
  v18 = v20 - 8;
  (*(v17 + 104))(v24, v16);
  v22 = *(v17 + 56);
  v21 = v17 + 56;
  v22(v24, 0, v19, v20);
  v22(v25, v19, v19, v20);
  return sub_9270();
}

uint64_t sub_811C(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFB)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 4) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 251;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 5;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_8284(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFB)
  {
    v5 = ((a3 + 4) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFB)
  {
    v4 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

unint64_t sub_84F8()
{
  v2 = qword_10600;
  if (!qword_10600)
  {
    sub_4D88(&qword_10488, &qword_9990);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10600);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_8598()
{
  v2 = qword_10608;
  if (!qword_10608)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10608);
    return WitnessTable;
  }

  return v2;
}

void *sub_8620(void *a1, void *a2)
{
  v2 = a1[3];
  a2[3] = v2;
  v3 = a1[5];
  a2[4] = a1[4];
  a2[5] = v3;
  (**(v2 - 8))(a2);
  return a2;
}

uint64_t *sub_8694(uint64_t *result)
{
  v3 = result;
  if ((*(*(result[3] - 8) + 80) & 0x20000) != 0)
  {
    v1 = swift_allocBox();
    result = v2;
    *v3 = v1;
  }

  return result;
}

unint64_t sub_8714()
{
  v2 = qword_10610;
  if (!qword_10610)
  {
    type metadata accessor for SocialSuggestionsAssetProvider();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10610);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_8794()
{
  v2 = qword_10618;
  if (!qword_10618)
  {
    type metadata accessor for TimeOfDayResolver();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10618);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_8814(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

uint64_t sub_8840(uint64_t a1)
{
  v15 = 0;
  v16 = 0;
  v14[6] = a1;
  v13[0] = sub_9340("socialConversationDialogID", 0x1AuLL, 1);
  v13[1] = v1;
  sub_1D04(&qword_10620, &qword_9C20);
  sub_9300();
  sub_329C(v13);
  if (v14[3])
  {
    if (swift_dynamicCast())
    {
      v7 = v11;
      v8 = v12;
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }

    v9 = v7;
    v10 = v8;
  }

  else
  {
    sub_3B50(v14);
    v9 = 0;
    v10 = 0;
  }

  if (v10)
  {

    v5 = sub_8ADC(v9, v10);
    v4 = v2;

    v15 = v5;
    v16 = v4;

    sub_329C(&v15);
    return v5;
  }

  else
  {

    return 0;
  }
}

uint64_t *sub_8A48()
{
  if (qword_102B0 != -1)
  {
    swift_once();
  }

  return &qword_10DD8;
}

uint64_t sub_8ADC(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  v6 = 0;

  v5 = a1;
  v6 = a2;

  sub_329C(&v5);
  return a1;
}

uint64_t sub_8B60(uint64_t a1, uint64_t a2)
{
  v4[0] = 0;
  v4[1] = a1;
  v4[2] = a2;
  sub_1D04(&qword_10620, &qword_9C20);
  v4[0] = sub_92E0();
  sub_9340("socialConversationDialogID", 0x1AuLL, 1);

  sub_1D04(&qword_10628, &qword_9C28);
  sub_9310();
  v3 = v4[0];

  sub_4DFC(v4);
  return v3;
}

uint64_t sub_8C98()
{
  sub_9110();
  sub_9340("SocialConversation", 0x12uLL, 1);
  result = sub_9120();
  qword_10DD8 = result;
  return result;
}

uint64_t sub_8CE8()
{
  v1 = *sub_8A48();

  return v1;
}

__n128 sub_8D18(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_8D24(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 16))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*(a1 + 8) < 0x100000000uLL)
      {
        v3 = *(a1 + 8);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_8E68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 - 1;
    }
  }

  return result;
}