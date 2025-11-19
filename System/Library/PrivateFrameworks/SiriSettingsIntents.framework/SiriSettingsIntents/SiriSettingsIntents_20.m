uint64_t sub_268F47F9C(unsigned __int8 *a1)
{
  v6 = *a1;
  if (v6 == 65)
  {
    return 2;
  }

  else
  {
    switch(v6)
    {
      case 1u:
        v7 = *sub_268F47E04();
        if (sub_268F47E98(v7))
        {
          v3 = sub_268F47E04();
        }

        else
        {
          v3 = sub_268F47D28();
        }

        return *v3 & 1 | ((*(v3 + 1) & 1) << 8);
      case 2u:
        v2 = sub_268F47D04(0, 0);
        return v2 & 1 | ((HIBYTE(v2) & 1) << 8);
      case 3u:
        v1 = sub_268F47D04(1, 1);
        return v1 & 1 | ((HIBYTE(v1) & 1) << 8);
      default:
        return 2;
    }
  }
}

BOOL sub_268F48124()
{
  v6 = v0;
  v5 = 1;
  v4 = sub_268F47F9C(&v5);
  if (v4 == 2)
  {
    v3 = 2;
  }

  else
  {
    v3 = v4 & 1;
  }

  return v3 != 2 && sub_268D2CBA4(v3 & 1, 0);
}

uint64_t AppearanceUtils.deinit()
{
  v1 = *(v0 + 16);

  return v3;
}

uint64_t sub_268F48344(unsigned __int16 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFE)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 65281) >> 16) + 1;
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
      v6 = *(a1 + 2);
    }

    else
    {
      v6 = v8 == 2 ? a1[1] : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 16)) + 254;
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

uint64_t sub_268F484B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFE)
  {
    v5 = ((a3 + 65281) >> 16) + 1;
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
    v4 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v7)
    {
      if (v7 == 1)
      {
        *(result + 2) = v4;
      }

      else if (v7 == 2)
      {
        *(result + 2) = v4;
      }

      else
      {
        *(result + 2) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        *(result + 2) = 0;
      }

      else if (v7 == 2)
      {
        *(result + 2) = 0;
      }

      else
      {
        *(result + 2) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_268F486C0()
{
  type metadata accessor for SetNightShiftHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_2802F1768 = result;
  return result;
}

uint64_t *sub_268F48728()
{
  if (qword_2802DB8A8 != -1)
  {
    swift_once();
  }

  return &qword_2802F1768;
}

uint64_t sub_268F48788()
{
  v1 = *sub_268F48728();

  return v1;
}

uint64_t sub_268F487B8(void *a1, void (*a2)(void), uint64_t a3)
{
  v26 = sub_268CD7620();
  SettingIntent.deviceCategory.getter(v26, &protocol witness table for INSetBinarySettingIntent);
  if (v3)
  {
    v21 = 0;
  }

  else
  {
    type metadata accessor for INDeviceCategory();
    sub_268CD7818();
    v21 = sub_268F9AE04();
  }

  if (v21)
  {
    goto LABEL_14;
  }

  SettingIntent.deviceCategory.getter(v26, &protocol witness table for INSetBinarySettingIntent);
  if (v4)
  {
    v20 = 0;
  }

  else
  {
    type metadata accessor for INDeviceCategory();
    sub_268CD7818();
    v20 = sub_268F9AE04();
  }

  if (v20 & 1) != 0 || ((SettingIntent.deviceCategory.getter(v26, &protocol witness table for INSetBinarySettingIntent), (v5) ? (v19 = 0) : (type metadata accessor for INDeviceCategory(), sub_268CD7818(), v19 = sub_268F9AE04()), (v19))
  {
LABEL_14:
    sub_268F9B284();
    v8 = sub_268DC7AE8();
    v10 = *v8;
    MEMORY[0x277D82BE0](*v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v10);
    v11 = *(v25 + 16);

    v12 = sub_268D363F0();

    v9 = sub_268DBE2D4();
    v13 = *v9;
    v14 = v9[1];
    v15 = *(v9 + 16);
    v16 = *(v25 + 24);

    sub_268DAAB84(v12 & 1, a1, v13, v14, v15, v16 & 1, a2, a3, sub_268F48E14, v25, 0, 1, 0, 0);
    return sub_268CD9A28(sub_268F48E14);
  }

  else
  {
    sub_268F9B284();
    v6 = sub_268DC7AE8();
    v17 = *v6;
    MEMORY[0x277D82BE0](*v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v17);

    sub_268E948B8();
    v18 = sub_268DAB158();

    (a2)(v18);
    MEMORY[0x277D82BD8](v18);
  }
}

uint64_t sub_268F48DA4(char a1, uint64_t a2)
{
  v4 = *(a2 + 16);

  sub_268D36314(a1 & 1);
}

uint64_t sub_268F48E60()
{
  sub_268F9B734();
  *v0 = "GetSettingIntent#DescribeBinarySettingState";
  *(v0 + 8) = 43;
  *(v0 + 16) = 2;
  *(v0 + 24) = "GetSettingIntent#DescribeMultiSettingState";
  *(v0 + 32) = 42;
  *(v0 + 40) = 2;
  *(v0 + 48) = "GetSettingIntent#DescribeNumericSettingState";
  *(v0 + 56) = 44;
  *(v0 + 64) = 2;
  *(v0 + 72) = "GetSettingIntent#DescribeNumericSettingStateSpokenOnly";
  *(v0 + 80) = 54;
  *(v0 + 88) = 2;
  *(v0 + 96) = "GetSettingIntent#HotspotDiscoverabilityPrompt";
  *(v0 + 104) = 45;
  *(v0 + 112) = 2;
  *(v0 + 120) = "GetSettingIntent#SiriCannotChangeSetting";
  *(v0 + 128) = 40;
  *(v0 + 136) = 2;
  *(v0 + 144) = "GetSettingIntent#TargetDeviceNotFoundReadBattery";
  *(v0 + 152) = 48;
  *(v0 + 160) = 2;
  sub_268CD0F7C();
  v4 = sub_268F9B5C4();

  switch(v4)
  {
    case 0:
      v3 = 0;
LABEL_16:

      return v3;
    case 1:
      v3 = 1;
      goto LABEL_16;
    case 2:
      v3 = 2;
      goto LABEL_16;
    case 3:
      v3 = 3;
      goto LABEL_16;
    case 4:
      v3 = 4;
      goto LABEL_16;
    case 5:
      v3 = 5;
      goto LABEL_16;
    case 6:
      v3 = 6;
      goto LABEL_16;
  }

  return 7;
}

unint64_t sub_268F49308()
{
  v2 = qword_2802DE558;
  if (!qword_2802DE558)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE558);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268F49454@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = sub_268F48E60();
  *a2 = result;
  return result;
}

uint64_t sub_268F4948C@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  result = sub_268F49100();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_268F494C0(uint64_t a1, char a2, char a3, uint64_t a4)
{
  *(v5 + 64) = v4;
  *(v5 + 56) = a4;
  *(v5 + 106) = a3 & 1;
  *(v5 + 105) = a2;
  *(v5 + 48) = a1;
  *(v5 + 16) = v5;
  *(v5 + 24) = 0;
  *(v5 + 104) = 0;
  *(v5 + 112) = 0;
  *(v5 + 32) = 0;
  *(v5 + 40) = 0;
  *(v5 + 24) = a1;
  *(v5 + 104) = a2;
  *(v5 + 112) = a3 & 1;
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  v6 = *(v5 + 16);
  return MEMORY[0x2822009F8](sub_268F49550, 0);
}

uint64_t sub_268F49550()
{
  v23 = v0[6];
  v0[2] = v0;
  v20 = sub_268F9AEF4();
  v21 = v1;
  v0[9] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v22 = v2;
  *v2 = sub_268F9AEF4();
  v22[1] = v3;

  if (v23)
  {
    v18 = *(v19 + 48);
    v22[5] = type metadata accessor for SettingsBinarySetting();
    v22[2] = v18;
  }

  else
  {
    v22[2] = 0;
    v22[3] = 0;
    v22[4] = 0;
    v22[5] = 0;
  }

  v17 = *(v19 + 105);
  v22[6] = sub_268F9AEF4();
  v22[7] = v4;
  if (v17 == 2)
  {
    v22[8] = 0;
    v22[9] = 0;
    v22[10] = 0;
    v22[11] = 0;
  }

  else
  {
    v5 = *(v19 + 105);
    v22[11] = MEMORY[0x277D839B0];
    *(v22 + 64) = v5 & 1;
  }

  v16 = *(v19 + 56);
  v15 = *(v19 + 106);
  v22[12] = sub_268F9AEF4();
  v22[13] = v6;
  v22[17] = MEMORY[0x277D839B0];
  *(v22 + 112) = v15;
  v22[18] = sub_268F9AEF4();
  v22[19] = v7;

  if (v16)
  {
    v14 = *(v19 + 56);
    v22[23] = sub_268F9AA44();
    v22[20] = v14;
  }

  else
  {
    v22[20] = 0;
    v22[21] = 0;
    v22[22] = 0;
    v22[23] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v12 = sub_268F9B4F4();
  *(v19 + 80) = v12;
  v13 = (MEMORY[0x277D55C70] + *MEMORY[0x277D55C70]);
  v8 = *(MEMORY[0x277D55C70] + 4);
  v9 = swift_task_alloc();
  *(v19 + 88) = v9;
  *v9 = *(v19 + 16);
  v9[1] = sub_268F49984;
  v10 = *(v19 + 64);

  return v13(v20, v21, v12);
}

uint64_t sub_268F49984(uint64_t a1)
{
  v10 = *v2;
  v3 = *(*v2 + 88);
  v10[2] = *v2;
  v11 = v10 + 2;
  v10[12] = v1;

  if (v1)
  {
    v7 = *v11;

    return MEMORY[0x2822009F8](sub_268F49B6C, 0);
  }

  else
  {
    v4 = v10[10];
    v8 = v10[9];

    v5 = *(*v11 + 8);

    return v5(a1);
  }
}

uint64_t sub_268F49B6C()
{
  v1 = v0[10];
  v7 = v0[9];
  v0[2] = v0;

  v2 = v0;
  v3 = *(v0[2] + 8);
  v4 = v0[2];
  v5 = v2[12];

  return v3();
}

uint64_t sub_268F49C2C()
{
  sub_268F9B734();
  *v0 = "first1#first1#dialog1";
  *(v0 + 8) = 21;
  *(v0 + 16) = 2;
  *(v0 + 24) = "first1#first1#dialog2";
  *(v0 + 32) = 21;
  *(v0 + 40) = 2;
  *(v0 + 48) = "first1#first2#dialog1";
  *(v0 + 56) = 21;
  *(v0 + 64) = 2;
  *(v0 + 72) = "first1#first2#dialog2";
  *(v0 + 80) = 21;
  *(v0 + 88) = 2;
  *(v0 + 96) = "first1#first3#dialog1";
  *(v0 + 104) = 21;
  *(v0 + 112) = 2;
  *(v0 + 120) = "first1#first3#dialog2";
  *(v0 + 128) = 21;
  *(v0 + 136) = 2;
  *(v0 + 144) = "first2#dialog1";
  *(v0 + 152) = 14;
  *(v0 + 160) = 2;
  *(v0 + 168) = "first2#dialog2";
  *(v0 + 176) = 14;
  *(v0 + 184) = 2;
  *(v0 + 192) = "first3#dialog1";
  *(v0 + 200) = 14;
  *(v0 + 208) = 2;
  *(v0 + 216) = "first3#dialog2";
  *(v0 + 224) = 14;
  *(v0 + 232) = 2;
  *(v0 + 240) = "first4#dialog1";
  *(v0 + 248) = 14;
  *(v0 + 256) = 2;
  *(v0 + 264) = "first4#dialog2";
  *(v0 + 272) = 14;
  *(v0 + 280) = 2;
  *(v0 + 288) = "first5#all1#dialog1";
  *(v0 + 296) = 19;
  *(v0 + 304) = 2;
  *(v0 + 312) = "first5#all1#dialog2";
  *(v0 + 320) = 19;
  *(v0 + 328) = 2;
  *(v0 + 336) = "first5#all2#dialog1";
  *(v0 + 344) = 19;
  *(v0 + 352) = 2;
  *(v0 + 360) = "first5#all2#dialog2";
  *(v0 + 368) = 19;
  *(v0 + 376) = 2;
  *(v0 + 384) = "first6#dialog1";
  *(v0 + 392) = 14;
  *(v0 + 400) = 2;
  *(v0 + 408) = "first6#dialog2";
  *(v0 + 416) = 14;
  *(v0 + 424) = 2;
  sub_268CD0F7C();
  v4 = sub_268F9B5C4();

  switch(v4)
  {
    case 0:
      v3 = 0;
LABEL_38:

      return v3;
    case 1:
      v3 = 1;
      goto LABEL_38;
    case 2:
      v3 = 2;
      goto LABEL_38;
    case 3:
      v3 = 3;
      goto LABEL_38;
    case 4:
      v3 = 4;
      goto LABEL_38;
    case 5:
      v3 = 5;
      goto LABEL_38;
    case 6:
      v3 = 6;
      goto LABEL_38;
    case 7:
      v3 = 7;
      goto LABEL_38;
    case 8:
      v3 = 8;
      goto LABEL_38;
    case 9:
      v3 = 9;
      goto LABEL_38;
    case 10:
      v3 = 10;
      goto LABEL_38;
    case 11:
      v3 = 11;
      goto LABEL_38;
    case 12:
      v3 = 12;
      goto LABEL_38;
    case 13:
      v3 = 13;
      goto LABEL_38;
    case 14:
      v3 = 14;
      goto LABEL_38;
    case 15:
      v3 = 15;
      goto LABEL_38;
    case 16:
      v3 = 16;
      goto LABEL_38;
    case 17:
      v3 = 17;
      goto LABEL_38;
  }

  return 18;
}

unint64_t sub_268F4A528()
{
  v2 = qword_2802DE560;
  if (!qword_2802DE560)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE560);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268F4A674@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = sub_268F49C2C();
  *a2 = result;
  return result;
}

uint64_t sub_268F4A6AC@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  result = sub_268F4A1AC();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_268F4A6E0(uint64_t a1, char a2, char a3, uint64_t a4)
{
  *(v5 + 64) = v4;
  *(v5 + 56) = a4;
  *(v5 + 106) = a3 & 1;
  *(v5 + 105) = a2;
  *(v5 + 48) = a1;
  *(v5 + 16) = v5;
  *(v5 + 24) = 0;
  *(v5 + 104) = 0;
  *(v5 + 112) = 0;
  *(v5 + 32) = 0;
  *(v5 + 40) = 0;
  *(v5 + 24) = a1;
  *(v5 + 104) = a2;
  *(v5 + 112) = a3 & 1;
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  v6 = *(v5 + 16);
  return MEMORY[0x2822009F8](sub_268F4A770, 0);
}

uint64_t sub_268F4A770()
{
  v24 = v0[6];
  v0[2] = v0;
  v21 = sub_268F9AEF4();
  v22 = v1;
  v0[9] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v23 = v2;
  *v2 = sub_268F9AEF4();
  v23[1] = v3;

  if (v24)
  {
    v19 = *(v20 + 48);
    v23[5] = type metadata accessor for SettingsBinarySetting();
    v23[2] = v19;
  }

  else
  {
    v23[2] = 0;
    v23[3] = 0;
    v23[4] = 0;
    v23[5] = 0;
  }

  v18 = *(v20 + 105);
  v23[6] = sub_268F9AEF4();
  v23[7] = v4;
  if (v18 == 2)
  {
    v23[8] = 0;
    v23[9] = 0;
    v23[10] = 0;
    v23[11] = 0;
  }

  else
  {
    v5 = *(v20 + 105);
    v23[11] = MEMORY[0x277D839B0];
    *(v23 + 64) = v5 & 1;
  }

  v17 = *(v20 + 56);
  v16 = *(v20 + 106);
  v23[12] = sub_268F9AEF4();
  v23[13] = v6;
  v23[17] = MEMORY[0x277D839B0];
  *(v23 + 112) = v16;
  v23[18] = sub_268F9AEF4();
  v23[19] = v7;

  if (v17)
  {
    v15 = *(v20 + 56);
    v23[23] = sub_268F9AA44();
    v23[20] = v15;
  }

  else
  {
    v23[20] = 0;
    v23[21] = 0;
    v23[22] = 0;
    v23[23] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v13 = sub_268F9B4F4();
  *(v20 + 80) = v13;
  v14 = (MEMORY[0x277D55C68] + *MEMORY[0x277D55C68]);
  v8 = *(MEMORY[0x277D55C68] + 4);
  v9 = swift_task_alloc();
  *(v20 + 88) = v9;
  v10 = sub_268F4A528();
  *v9 = *(v20 + 16);
  v9[1] = sub_268F49984;
  v11 = *(v20 + 64);

  return v14(v21, v22, v13, &unk_287996BE8, v10);
}

uint64_t sub_268F4ABBC(uint64_t a1, char a2, char a3, uint64_t a4)
{
  *(v5 + 64) = v4;
  *(v5 + 56) = a4;
  *(v5 + 106) = a3 & 1;
  *(v5 + 105) = a2;
  *(v5 + 48) = a1;
  *(v5 + 16) = v5;
  *(v5 + 24) = 0;
  *(v5 + 104) = 0;
  *(v5 + 112) = 0;
  *(v5 + 32) = 0;
  *(v5 + 40) = 0;
  *(v5 + 24) = a1;
  *(v5 + 104) = a2;
  *(v5 + 112) = a3 & 1;
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  v6 = *(v5 + 16);
  return MEMORY[0x2822009F8](sub_268F4AC4C, 0);
}

uint64_t sub_268F4AC4C()
{
  v23 = v0[6];
  v0[2] = v0;
  v20 = sub_268F9AEF4();
  v21 = v1;
  v0[9] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v22 = v2;
  *v2 = sub_268F9AEF4();
  v22[1] = v3;

  if (v23)
  {
    v18 = *(v19 + 48);
    v22[5] = type metadata accessor for SettingsMultiSetting();
    v22[2] = v18;
  }

  else
  {
    v22[2] = 0;
    v22[3] = 0;
    v22[4] = 0;
    v22[5] = 0;
  }

  v17 = *(v19 + 105);
  v22[6] = sub_268F9AEF4();
  v22[7] = v4;
  if (v17 == 2)
  {
    v22[8] = 0;
    v22[9] = 0;
    v22[10] = 0;
    v22[11] = 0;
  }

  else
  {
    v5 = *(v19 + 105);
    v22[11] = MEMORY[0x277D839B0];
    *(v22 + 64) = v5 & 1;
  }

  v16 = *(v19 + 56);
  v15 = *(v19 + 106);
  v22[12] = sub_268F9AEF4();
  v22[13] = v6;
  v22[17] = MEMORY[0x277D839B0];
  *(v22 + 112) = v15;
  v22[18] = sub_268F9AEF4();
  v22[19] = v7;

  if (v16)
  {
    v14 = *(v19 + 56);
    v22[23] = sub_268F9AA44();
    v22[20] = v14;
  }

  else
  {
    v22[20] = 0;
    v22[21] = 0;
    v22[22] = 0;
    v22[23] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v12 = sub_268F9B4F4();
  *(v19 + 80) = v12;
  v13 = (MEMORY[0x277D55C70] + *MEMORY[0x277D55C70]);
  v8 = *(MEMORY[0x277D55C70] + 4);
  v9 = swift_task_alloc();
  *(v19 + 88) = v9;
  *v9 = *(v19 + 16);
  v9[1] = sub_268F49984;
  v10 = *(v19 + 64);

  return v13(v20, v21, v12);
}

uint64_t sub_268F4B080()
{
  sub_268F9B734();
  *v0 = "first1#dialog1";
  *(v0 + 8) = 14;
  *(v0 + 16) = 2;
  *(v0 + 24) = "first1#dialog2";
  *(v0 + 32) = 14;
  *(v0 + 40) = 2;
  *(v0 + 48) = "first2#dialog1";
  *(v0 + 56) = 14;
  *(v0 + 64) = 2;
  *(v0 + 72) = "first2#dialog2";
  *(v0 + 80) = 14;
  *(v0 + 88) = 2;
  *(v0 + 96) = "first3#all1#dialog1";
  *(v0 + 104) = 19;
  *(v0 + 112) = 2;
  *(v0 + 120) = "first3#all1#dialog2";
  *(v0 + 128) = 19;
  *(v0 + 136) = 2;
  *(v0 + 144) = "first3#all2#dialog1";
  *(v0 + 152) = 19;
  *(v0 + 160) = 2;
  *(v0 + 168) = "first3#all2#dialog2";
  *(v0 + 176) = 19;
  *(v0 + 184) = 2;
  *(v0 + 192) = "first4#dialog1";
  *(v0 + 200) = 14;
  *(v0 + 208) = 2;
  *(v0 + 216) = "first4#dialog2";
  *(v0 + 224) = 14;
  *(v0 + 232) = 2;
  sub_268CD0F7C();
  v4 = sub_268F9B5C4();

  switch(v4)
  {
    case 0:
      v3 = 0;
LABEL_22:

      return v3;
    case 1:
      v3 = 1;
      goto LABEL_22;
    case 2:
      v3 = 2;
      goto LABEL_22;
    case 3:
      v3 = 3;
      goto LABEL_22;
    case 4:
      v3 = 4;
      goto LABEL_22;
    case 5:
      v3 = 5;
      goto LABEL_22;
    case 6:
      v3 = 6;
      goto LABEL_22;
    case 7:
      v3 = 7;
      goto LABEL_22;
    case 8:
      v3 = 8;
      goto LABEL_22;
    case 9:
      v3 = 9;
      goto LABEL_22;
  }

  return 10;
}

unint64_t sub_268F4B69C()
{
  v2 = qword_2802DE568;
  if (!qword_2802DE568)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE568);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268F4B7E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = sub_268F4B080();
  *a2 = result;
  return result;
}

uint64_t sub_268F4B820@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  result = sub_268F4B3E0();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_268F4B854(uint64_t a1, char a2, char a3, uint64_t a4)
{
  *(v5 + 64) = v4;
  *(v5 + 56) = a4;
  *(v5 + 106) = a3 & 1;
  *(v5 + 105) = a2;
  *(v5 + 48) = a1;
  *(v5 + 16) = v5;
  *(v5 + 24) = 0;
  *(v5 + 104) = 0;
  *(v5 + 112) = 0;
  *(v5 + 32) = 0;
  *(v5 + 40) = 0;
  *(v5 + 24) = a1;
  *(v5 + 104) = a2;
  *(v5 + 112) = a3 & 1;
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  v6 = *(v5 + 16);
  return MEMORY[0x2822009F8](sub_268F4B8E4, 0);
}

uint64_t sub_268F4B8E4()
{
  v24 = v0[6];
  v0[2] = v0;
  v21 = sub_268F9AEF4();
  v22 = v1;
  v0[9] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v23 = v2;
  *v2 = sub_268F9AEF4();
  v23[1] = v3;

  if (v24)
  {
    v19 = *(v20 + 48);
    v23[5] = type metadata accessor for SettingsMultiSetting();
    v23[2] = v19;
  }

  else
  {
    v23[2] = 0;
    v23[3] = 0;
    v23[4] = 0;
    v23[5] = 0;
  }

  v18 = *(v20 + 105);
  v23[6] = sub_268F9AEF4();
  v23[7] = v4;
  if (v18 == 2)
  {
    v23[8] = 0;
    v23[9] = 0;
    v23[10] = 0;
    v23[11] = 0;
  }

  else
  {
    v5 = *(v20 + 105);
    v23[11] = MEMORY[0x277D839B0];
    *(v23 + 64) = v5 & 1;
  }

  v17 = *(v20 + 56);
  v16 = *(v20 + 106);
  v23[12] = sub_268F9AEF4();
  v23[13] = v6;
  v23[17] = MEMORY[0x277D839B0];
  *(v23 + 112) = v16;
  v23[18] = sub_268F9AEF4();
  v23[19] = v7;

  if (v17)
  {
    v15 = *(v20 + 56);
    v23[23] = sub_268F9AA44();
    v23[20] = v15;
  }

  else
  {
    v23[20] = 0;
    v23[21] = 0;
    v23[22] = 0;
    v23[23] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v13 = sub_268F9B4F4();
  *(v20 + 80) = v13;
  v14 = (MEMORY[0x277D55C68] + *MEMORY[0x277D55C68]);
  v8 = *(MEMORY[0x277D55C68] + 4);
  v9 = swift_task_alloc();
  *(v20 + 88) = v9;
  v10 = sub_268F4B69C();
  *v9 = *(v20 + 16);
  v9[1] = sub_268F49984;
  v11 = *(v20 + 64);

  return v14(v21, v22, v13, &unk_287996C78, v10);
}

uint64_t sub_268F4BD30(uint64_t a1, uint64_t a2, char a3, char a4, char a5)
{
  *(v6 + 64) = v5;
  *(v6 + 107) = a5 & 1;
  *(v6 + 106) = a4 & 1;
  *(v6 + 105) = a3 & 1;
  *(v6 + 56) = a2;
  *(v6 + 48) = a1;
  *(v6 + 16) = v6;
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  *(v6 + 104) = 0;
  *(v6 + 112) = 0;
  *(v6 + 120) = 0;
  *(v6 + 40) = 0;
  *(v6 + 24) = a1;
  *(v6 + 32) = a2;
  *(v6 + 104) = a3 & 1;
  *(v6 + 112) = a4 & 1;
  *(v6 + 120) = a5 & 1;
  *(v6 + 40) = v5;
  v7 = *(v6 + 16);
  return MEMORY[0x2822009F8](sub_268F4BDF0, 0);
}

uint64_t sub_268F4BDF0()
{
  v25 = v0[6];
  v0[2] = v0;
  v22 = sub_268F9AEF4();
  v23 = v1;
  v0[9] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v24 = v2;
  *v2 = sub_268F9AEF4();
  v24[1] = v3;

  if (v25)
  {
    v20 = *(v21 + 48);
    v24[5] = type metadata accessor for SettingsNumericSetting();
    v24[2] = v20;
  }

  else
  {
    v24[2] = 0;
    v24[3] = 0;
    v24[4] = 0;
    v24[5] = 0;
  }

  v19 = *(v21 + 56);
  v24[6] = sub_268F9AEF4();
  v24[7] = v4;

  if (v19)
  {
    v18 = *(v21 + 56);
    v24[11] = sub_268F9AA44();
    v24[8] = v18;
  }

  else
  {
    v24[8] = 0;
    v24[9] = 0;
    v24[10] = 0;
    v24[11] = 0;
  }

  v15 = *(v21 + 107);
  v13 = *(v21 + 106);
  v12 = *(v21 + 105);
  v24[12] = sub_268F9AEF4();
  v24[13] = v5;
  v14 = MEMORY[0x277D839B0];
  v24[17] = MEMORY[0x277D839B0];
  *(v24 + 112) = v12;
  v24[18] = sub_268F9AEF4();
  v24[19] = v6;
  v24[23] = v14;
  *(v24 + 160) = v13;
  v24[24] = sub_268F9AEF4();
  v24[25] = v7;
  v24[29] = v14;
  *(v24 + 208) = v15;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v16 = sub_268F9B4F4();
  *(v21 + 80) = v16;
  v17 = (MEMORY[0x277D55C70] + *MEMORY[0x277D55C70]);
  v8 = *(MEMORY[0x277D55C70] + 4);
  v9 = swift_task_alloc();
  *(v21 + 88) = v9;
  *v9 = *(v21 + 16);
  v9[1] = sub_268F4C204;
  v10 = *(v21 + 64);

  return v17(v22, v23, v16);
}

uint64_t sub_268F4C204(uint64_t a1)
{
  v10 = *v2;
  v3 = *(*v2 + 88);
  v10[2] = *v2;
  v11 = v10 + 2;
  v10[12] = v1;

  if (v1)
  {
    v7 = *v11;

    return MEMORY[0x2822009F8](sub_268F4C3F8, 0);
  }

  else
  {
    v4 = v10[10];
    v8 = v10[9];

    v5 = *(*v11 + 8);

    return v5(a1);
  }
}

uint64_t sub_268F4C3F8()
{
  v1 = v0[10];
  v7 = v0[9];
  v0[2] = v0;

  v2 = v0;
  v3 = *(v0[2] + 8);
  v4 = v0[2];
  v5 = v2[12];

  return v3();
}

uint64_t sub_268F4C4BC()
{
  sub_268F9B734();
  *v0 = "dialog1";
  *(v0 + 8) = 7;
  *(v0 + 16) = 2;
  *(v0 + 24) = "dialog2";
  *(v0 + 32) = 7;
  *(v0 + 40) = 2;
  *(v0 + 48) = "dialog3";
  *(v0 + 56) = 7;
  *(v0 + 64) = 2;
  *(v0 + 72) = "dialog4";
  *(v0 + 80) = 7;
  *(v0 + 88) = 2;
  *(v0 + 96) = "dialog5";
  *(v0 + 104) = 7;
  *(v0 + 112) = 2;
  *(v0 + 120) = "dialog6";
  *(v0 + 128) = 7;
  *(v0 + 136) = 2;
  *(v0 + 144) = "dialog7";
  *(v0 + 152) = 7;
  *(v0 + 160) = 2;
  sub_268CD0F7C();
  v4 = sub_268F9B5C4();

  switch(v4)
  {
    case 0:
      v3 = 0;
LABEL_16:

      return v3;
    case 1:
      v3 = 1;
      goto LABEL_16;
    case 2:
      v3 = 2;
      goto LABEL_16;
    case 3:
      v3 = 3;
      goto LABEL_16;
    case 4:
      v3 = 4;
      goto LABEL_16;
    case 5:
      v3 = 5;
      goto LABEL_16;
    case 6:
      v3 = 6;
      goto LABEL_16;
  }

  return 7;
}

unint64_t sub_268F4C950()
{
  v2 = qword_2802DE570;
  if (!qword_2802DE570)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE570);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268F4CA9C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = sub_268F4C4BC();
  *a2 = result;
  return result;
}

uint64_t sub_268F4CAD4@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  result = sub_268F4C748();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_268F4CB08(uint64_t a1, uint64_t a2, char a3, char a4, char a5)
{
  *(v6 + 64) = v5;
  *(v6 + 107) = a5 & 1;
  *(v6 + 106) = a4 & 1;
  *(v6 + 105) = a3 & 1;
  *(v6 + 56) = a2;
  *(v6 + 48) = a1;
  *(v6 + 16) = v6;
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  *(v6 + 104) = 0;
  *(v6 + 112) = 0;
  *(v6 + 120) = 0;
  *(v6 + 40) = 0;
  *(v6 + 24) = a1;
  *(v6 + 32) = a2;
  *(v6 + 104) = a3 & 1;
  *(v6 + 112) = a4 & 1;
  *(v6 + 120) = a5 & 1;
  *(v6 + 40) = v5;
  v7 = *(v6 + 16);
  return MEMORY[0x2822009F8](sub_268F4CBC8, 0);
}

uint64_t sub_268F4CBC8()
{
  v26 = v0[6];
  v0[2] = v0;
  v23 = sub_268F9AEF4();
  v24 = v1;
  v0[9] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v25 = v2;
  *v2 = sub_268F9AEF4();
  v25[1] = v3;

  if (v26)
  {
    v21 = *(v22 + 48);
    v25[5] = type metadata accessor for SettingsNumericSetting();
    v25[2] = v21;
  }

  else
  {
    v25[2] = 0;
    v25[3] = 0;
    v25[4] = 0;
    v25[5] = 0;
  }

  v20 = *(v22 + 56);
  v25[6] = sub_268F9AEF4();
  v25[7] = v4;

  if (v20)
  {
    v19 = *(v22 + 56);
    v25[11] = sub_268F9AA44();
    v25[8] = v19;
  }

  else
  {
    v25[8] = 0;
    v25[9] = 0;
    v25[10] = 0;
    v25[11] = 0;
  }

  v16 = *(v22 + 107);
  v14 = *(v22 + 106);
  v13 = *(v22 + 105);
  v25[12] = sub_268F9AEF4();
  v25[13] = v5;
  v15 = MEMORY[0x277D839B0];
  v25[17] = MEMORY[0x277D839B0];
  *(v25 + 112) = v13;
  v25[18] = sub_268F9AEF4();
  v25[19] = v6;
  v25[23] = v15;
  *(v25 + 160) = v14;
  v25[24] = sub_268F9AEF4();
  v25[25] = v7;
  v25[29] = v15;
  *(v25 + 208) = v16;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v17 = sub_268F9B4F4();
  *(v22 + 80) = v17;
  v18 = (MEMORY[0x277D55C68] + *MEMORY[0x277D55C68]);
  v8 = *(MEMORY[0x277D55C68] + 4);
  v9 = swift_task_alloc();
  *(v22 + 88) = v9;
  v10 = sub_268F4C950();
  *v9 = *(v22 + 16);
  v9[1] = sub_268F4C204;
  v11 = *(v22 + 64);

  return v18(v23, v24, v17, &unk_287996D08, v10);
}

uint64_t sub_268F4CFF4(uint64_t a1, uint64_t a2)
{
  v3[8] = v2;
  v3[7] = a2;
  v3[6] = a1;
  v3[2] = v3;
  v3[3] = 0;
  v3[4] = 0;
  v3[5] = 0;
  v3[3] = a1;
  v3[4] = a2;
  v3[5] = v2;
  v4 = v3[2];
  return MEMORY[0x2822009F8](sub_268F4D050, 0);
}

uint64_t sub_268F4D050()
{
  v18 = v0[6];
  v0[2] = v0;
  v15 = sub_268F9AEF4();
  v16 = v1;
  v0[9] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v17 = v2;
  *v2 = sub_268F9AEF4();
  v17[1] = v3;

  if (v18)
  {
    v13 = v14[6];
    v17[5] = type metadata accessor for SettingsNumericSetting();
    v17[2] = v13;
  }

  else
  {
    v17[2] = 0;
    v17[3] = 0;
    v17[4] = 0;
    v17[5] = 0;
  }

  v12 = v14[7];
  v17[6] = sub_268F9AEF4();
  v17[7] = v4;

  if (v12)
  {
    v11 = v14[7];
    v17[11] = sub_268F9AA44();
    v17[8] = v11;
  }

  else
  {
    v17[8] = 0;
    v17[9] = 0;
    v17[10] = 0;
    v17[11] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v9 = sub_268F9B4F4();
  v14[10] = v9;
  v10 = (MEMORY[0x277D55C70] + *MEMORY[0x277D55C70]);
  v5 = *(MEMORY[0x277D55C70] + 4);
  v6 = swift_task_alloc();
  v14[11] = v6;
  *v6 = v14[2];
  v6[1] = sub_268DF5A04;
  v7 = v14[8];

  return v10(v15, v16, v9);
}

unint64_t sub_268F4D384()
{
  v2 = qword_2802DE578;
  if (!qword_2802DE578)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE578);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268F4D4D0(uint64_t a1, uint64_t a2)
{
  v3[8] = v2;
  v3[7] = a2;
  v3[6] = a1;
  v3[2] = v3;
  v3[3] = 0;
  v3[4] = 0;
  v3[5] = 0;
  v3[3] = a1;
  v3[4] = a2;
  v3[5] = v2;
  v4 = v3[2];
  return MEMORY[0x2822009F8](sub_268F4D52C, 0);
}

uint64_t sub_268F4D52C()
{
  v19 = v0[6];
  v0[2] = v0;
  v16 = sub_268F9AEF4();
  v17 = v1;
  v0[9] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v18 = v2;
  *v2 = sub_268F9AEF4();
  v18[1] = v3;

  if (v19)
  {
    v14 = v15[6];
    v18[5] = type metadata accessor for SettingsNumericSetting();
    v18[2] = v14;
  }

  else
  {
    v18[2] = 0;
    v18[3] = 0;
    v18[4] = 0;
    v18[5] = 0;
  }

  v13 = v15[7];
  v18[6] = sub_268F9AEF4();
  v18[7] = v4;

  if (v13)
  {
    v12 = v15[7];
    v18[11] = sub_268F9AA44();
    v18[8] = v12;
  }

  else
  {
    v18[8] = 0;
    v18[9] = 0;
    v18[10] = 0;
    v18[11] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v10 = sub_268F9B4F4();
  v15[10] = v10;
  v11 = (MEMORY[0x277D55C68] + *MEMORY[0x277D55C68]);
  v5 = *(MEMORY[0x277D55C68] + 4);
  v6 = swift_task_alloc();
  v15[11] = v6;
  v7 = sub_268F4D384();
  *v6 = v15[2];
  v6[1] = sub_268DF5A04;
  v8 = v15[8];

  return v11(v16, v17, v10, &unk_287996D98, v7);
}

uint64_t sub_268F4D82C()
{
  v1[4] = v0;
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = v0;
  v2 = v1[2];
  return MEMORY[0x2822009F8](sub_268F4D868, 0);
}

uint64_t sub_268F4D868()
{
  v6 = MEMORY[0x277D55C70];
  v0[2] = v0;
  v11 = sub_268F9AEF4();
  v8 = v1;
  v0[5] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v9 = sub_268F9B4F4();
  v0[6] = v9;
  v10 = (v6 + *v6);
  v2 = v6[1];
  v3 = swift_task_alloc();
  v7[7] = v3;
  *v3 = v7[2];
  v3[1] = sub_268D71B74;
  v4 = v7[4];

  return v10(v11, v8, v9);
}

unint64_t sub_268F4DA08()
{
  v2 = qword_2802DE580;
  if (!qword_2802DE580)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE580);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268F4DB54()
{
  v1[4] = v0;
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = v0;
  v2 = v1[2];
  return MEMORY[0x2822009F8](sub_268F4DB90, 0);
}

uint64_t sub_268F4DB90()
{
  v7 = MEMORY[0x277D55C68];
  v0[2] = v0;
  v12 = sub_268F9AEF4();
  v9 = v1;
  v0[5] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v10 = sub_268F9B4F4();
  v0[6] = v10;
  v11 = (v7 + *v7);
  v2 = v7[1];
  v3 = swift_task_alloc();
  v8[7] = v3;
  v4 = sub_268F4DA08();
  *v3 = v8[2];
  v3[1] = sub_268D71B74;
  v5 = v8[4];

  return v11(v12, v9, v10, &unk_287996E28, v4);
}

uint64_t sub_268F4DCFC(uint64_t a1, char a2, char a3)
{
  *(v4 + 48) = v3;
  *(v4 + 90) = a3 & 1;
  *(v4 + 89) = a2 & 1;
  *(v4 + 40) = a1;
  *(v4 + 16) = v4;
  *(v4 + 24) = 0;
  *(v4 + 88) = 0;
  *(v4 + 96) = 0;
  *(v4 + 32) = 0;
  *(v4 + 24) = a1;
  *(v4 + 88) = a2 & 1;
  *(v4 + 96) = a3 & 1;
  *(v4 + 32) = v3;
  v5 = *(v4 + 16);
  return MEMORY[0x2822009F8](sub_268F4DD8C, 0);
}

uint64_t sub_268F4DD8C()
{
  v20 = v0[5];
  v0[2] = v0;
  v17 = sub_268F9AEF4();
  v18 = v1;
  v0[7] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v19 = v2;
  *v2 = sub_268F9AEF4();
  v19[1] = v3;

  if (v20)
  {
    v15 = *(v16 + 40);
    v19[5] = type metadata accessor for SettingsBinarySetting();
    v19[2] = v15;
  }

  else
  {
    v19[2] = 0;
    v19[3] = 0;
    v19[4] = 0;
    v19[5] = 0;
  }

  v12 = *(v16 + 90);
  v10 = *(v16 + 89);
  v19[6] = sub_268F9AEF4();
  v19[7] = v4;
  v11 = MEMORY[0x277D839B0];
  v19[11] = MEMORY[0x277D839B0];
  *(v19 + 64) = v10;
  v19[12] = sub_268F9AEF4();
  v19[13] = v5;
  v19[17] = v11;
  *(v19 + 112) = v12;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v13 = sub_268F9B4F4();
  *(v16 + 64) = v13;
  v14 = (MEMORY[0x277D55C70] + *MEMORY[0x277D55C70]);
  v6 = *(MEMORY[0x277D55C70] + 4);
  v7 = swift_task_alloc();
  *(v16 + 72) = v7;
  *v7 = *(v16 + 16);
  v7[1] = sub_268F4E060;
  v8 = *(v16 + 48);

  return v14(v17, v18, v13);
}

uint64_t sub_268F4E060(uint64_t a1)
{
  v10 = *v2;
  v3 = *(*v2 + 72);
  v10[2] = *v2;
  v11 = v10 + 2;
  v10[10] = v1;

  if (v1)
  {
    v7 = *v11;

    return MEMORY[0x2822009F8](sub_268F4E23C, 0);
  }

  else
  {
    v4 = v10[8];
    v8 = v10[7];

    v5 = *(*v11 + 8);

    return v5(a1);
  }
}

uint64_t sub_268F4E23C()
{
  v1 = v0[8];
  v7 = v0[7];
  v0[2] = v0;

  v2 = v0;
  v3 = *(v0[2] + 8);
  v4 = v0[2];
  v5 = v2[10];

  return v3();
}

unint64_t sub_268F4E344()
{
  v2 = qword_2802DE588;
  if (!qword_2802DE588)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE588);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268F4E490(uint64_t a1, char a2, char a3)
{
  *(v4 + 48) = v3;
  *(v4 + 90) = a3 & 1;
  *(v4 + 89) = a2 & 1;
  *(v4 + 40) = a1;
  *(v4 + 16) = v4;
  *(v4 + 24) = 0;
  *(v4 + 88) = 0;
  *(v4 + 96) = 0;
  *(v4 + 32) = 0;
  *(v4 + 24) = a1;
  *(v4 + 88) = a2 & 1;
  *(v4 + 96) = a3 & 1;
  *(v4 + 32) = v3;
  v5 = *(v4 + 16);
  return MEMORY[0x2822009F8](sub_268F4E520, 0);
}

uint64_t sub_268F4E520()
{
  v21 = v0[5];
  v0[2] = v0;
  v18 = sub_268F9AEF4();
  v19 = v1;
  v0[7] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v20 = v2;
  *v2 = sub_268F9AEF4();
  v20[1] = v3;

  if (v21)
  {
    v16 = *(v17 + 40);
    v20[5] = type metadata accessor for SettingsBinarySetting();
    v20[2] = v16;
  }

  else
  {
    v20[2] = 0;
    v20[3] = 0;
    v20[4] = 0;
    v20[5] = 0;
  }

  v13 = *(v17 + 90);
  v11 = *(v17 + 89);
  v20[6] = sub_268F9AEF4();
  v20[7] = v4;
  v12 = MEMORY[0x277D839B0];
  v20[11] = MEMORY[0x277D839B0];
  *(v20 + 64) = v11;
  v20[12] = sub_268F9AEF4();
  v20[13] = v5;
  v20[17] = v12;
  *(v20 + 112) = v13;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v14 = sub_268F9B4F4();
  *(v17 + 64) = v14;
  v15 = (MEMORY[0x277D55C68] + *MEMORY[0x277D55C68]);
  v6 = *(MEMORY[0x277D55C68] + 4);
  v7 = swift_task_alloc();
  *(v17 + 72) = v7;
  v8 = sub_268F4E344();
  *v7 = *(v17 + 16);
  v7[1] = sub_268F4E060;
  v9 = *(v17 + 48);

  return v15(v18, v19, v14, &unk_287996EB8, v8);
}

uint64_t sub_268F4E80C(uint64_t a1)
{
  v2[6] = v1;
  v2[5] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[3] = a1;
  v2[4] = v1;
  v4 = v2[2];

  return MEMORY[0x2822009F8](sub_268F4E8F4, 0);
}

uint64_t sub_268F4E8F4()
{
  v17 = v0[7];
  v16 = v0[5];
  v0[2] = v0;
  v13 = sub_268F9AEF4();
  v14 = v1;
  v0[8] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v15 = v2;
  *v2 = sub_268F9AEF4();
  v15[1] = v3;
  sub_268D2A1F0(v16, v17);
  v18 = sub_268F9A9C4();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v17, 1) == 1)
  {
    sub_268D28588(v12[7]);
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = 0;
    v15[5] = 0;
  }

  else
  {
    v11 = v12[7];
    v15[5] = v18;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15 + 2);
    (*(v19 + 32))(boxed_opaque_existential_1, v11, v18);
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v9 = sub_268F9B4F4();
  v12[9] = v9;
  v10 = (MEMORY[0x277D55C70] + *MEMORY[0x277D55C70]);
  v5 = *(MEMORY[0x277D55C70] + 4);
  v6 = swift_task_alloc();
  v12[10] = v6;
  *v6 = v12[2];
  v6[1] = sub_268DF3218;
  v7 = v12[6];

  return v10(v13, v14, v9);
}

unint64_t sub_268F4EBEC()
{
  v2 = qword_2802DE590;
  if (!qword_2802DE590)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE590);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268F4ED38(uint64_t a1)
{
  v2[6] = v1;
  v2[5] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[3] = a1;
  v2[4] = v1;
  v4 = v2[2];

  return MEMORY[0x2822009F8](sub_268F4EE20, 0);
}

uint64_t sub_268F4EE20()
{
  v18 = v0[7];
  v17 = v0[5];
  v0[2] = v0;
  v14 = sub_268F9AEF4();
  v15 = v1;
  v0[8] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v16 = v2;
  *v2 = sub_268F9AEF4();
  v16[1] = v3;
  sub_268D2A1F0(v17, v18);
  v19 = sub_268F9A9C4();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v18, 1) == 1)
  {
    sub_268D28588(v13[7]);
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = 0;
    v16[5] = 0;
  }

  else
  {
    v12 = v13[7];
    v16[5] = v19;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v16 + 2);
    (*(v20 + 32))(boxed_opaque_existential_1, v12, v19);
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v10 = sub_268F9B4F4();
  v13[9] = v10;
  v11 = (MEMORY[0x277D55C68] + *MEMORY[0x277D55C68]);
  v5 = *(MEMORY[0x277D55C68] + 4);
  v6 = swift_task_alloc();
  v13[10] = v6;
  v7 = sub_268F4EBEC();
  *v6 = v13[2];
  v6[1] = sub_268DF3218;
  v8 = v13[6];

  return v11(v14, v15, v10, &unk_287996F48, v7);
}

uint64_t type metadata accessor for GetSettingIntentCATsSimple()
{
  v1 = qword_280FE3908;
  if (!qword_280FE3908)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_268F4F158()
{
  inited = swift_initClassMetadata2();
  if (!inited)
  {
    return 0;
  }

  return inited;
}

uint64_t sub_268F4F1C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  return sub_268F4F224(a1, a2, a3);
}

uint64_t sub_268F4F224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a1;
  v17 = a2;
  v14 = a3;
  v24 = 0;
  v23 = 0;
  v22 = 0;
  v21 = 0;
  v18 = sub_268F9AB24();
  v15 = *(v18 - 8);
  v16 = v18 - 8;
  v10 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v18);
  v12 = &v9 - v10;
  v11 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE3F0, &qword_268F9D7A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v19);
  v13 = &v9 - v11;
  v23 = v4;
  v22 = v5;
  v21 = v6;
  v24 = v3;
  sub_268CDC358(v4, &v9 - v11);
  (*(v15 + 16))(v12, v17, v18);
  MEMORY[0x277D82BE0](v14);
  v20 = sub_268F9A9D4();

  v24 = v20;
  v7 = MEMORY[0x277D82BD8](v14);
  (*(v15 + 8))(v17, v18, v7);
  sub_268CDC480(v19);

  return v20;
}

uint64_t sub_268F4F408(char a1, uint64_t a2)
{
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  return sub_268F4F460(a1 & 1, a2);
}

uint64_t sub_268F4F460(int a1, uint64_t a2)
{
  v9 = a1;
  v10 = a2;
  v17 = 0;
  v16 = 0;
  v15 = 0;
  v13 = sub_268F9AB24();
  v11 = *(v13 - 8);
  v12 = v13 - 8;
  v7 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](v13);
  v8 = &v6 - v7;
  v16 = v9 & 1;
  v15 = v4;
  v17 = v2;
  (*(v11 + 16))(v3);
  v14 = sub_268F9A9E4();

  v17 = v14;
  (*(v11 + 8))(v10, v13);

  return v14;
}

uint64_t sub_268F4F5D0(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xEE)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 17) >> 8) + 1;
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
      v5 = (*a1 | ((v6 - 1) << 8)) + 238;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 18;
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

_BYTE *sub_268F4F738(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xEE)
  {
    v5 = ((a3 + 17) >> 8) + 1;
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

  if (a2 > 0xEE)
  {
    v4 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
      *result = a2 + 17;
    }
  }

  return result;
}

unint64_t sub_268F4F9D8()
{
  v2 = qword_2802DE598;
  if (!qword_2802DE598)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE598);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F4FA6C()
{
  v2 = qword_2802DE5A0;
  if (!qword_2802DE5A0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE5A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F4FB00()
{
  v2 = qword_2802DE5A8;
  if (!qword_2802DE5A8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE5A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F4FB94()
{
  v2 = qword_2802DE5B0;
  if (!qword_2802DE5B0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE5B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F4FC28()
{
  v2 = qword_2802DE5B8;
  if (!qword_2802DE5B8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE5B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F4FCBC()
{
  v2 = qword_2802DE5C0;
  if (!qword_2802DE5C0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE5C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F4FD50()
{
  v2 = qword_2802DE5C8;
  if (!qword_2802DE5C8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE5C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F4FDE4()
{
  v2 = qword_2802DE5D0;
  if (!qword_2802DE5D0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE5D0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268F4FE60()
{
  type metadata accessor for SetAXMotionCuesHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_2802F1770 = result;
  return result;
}

uint64_t *sub_268F4FEC8()
{
  if (qword_2802DB8B0 != -1)
  {
    swift_once();
  }

  return &qword_2802F1770;
}

uint64_t sub_268F4FF28()
{
  v1 = *sub_268F4FEC8();

  return v1;
}

double sub_268F4FF58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a1;
  v23 = a2;
  v24 = a3;
  v22 = v3;
  sub_268F9B284();
  v4 = sub_268DC7AE8();
  v8 = *v4;
  MEMORY[0x277D82BE0](*v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v8);
  v5 = sub_268DBD904();
  v9 = *v5;
  v13 = v5[1];
  v14 = *(v5 + 16);
  v6 = sub_268DC7AE8();
  v15 = *v6;
  MEMORY[0x277D82BE0](*v6);
  v16 = *(v3 + 24);

  MEMORY[0x277D82BE0](a1);

  v18 = v3;
  v19 = a1;
  v20 = a2;
  v21 = a3;
  sub_268DB944C(v9, v13, v14, v15, v16 & 1, sub_268F5029C, v17, MEMORY[0x277D84F78] + 8, v3);

  MEMORY[0x277D82BD8](a1);

  *&result = MEMORY[0x277D82BD8](v15).n128_u64[0];
  return result;
}

uint64_t sub_268F50170(uint64_t a1, void *a2, void (*a3)(void), uint64_t a4)
{
  v6 = *(a1 + 16);

  v7 = sub_268D3EDF4();

  v4 = sub_268DBD904();
  v10 = *v4;
  v11 = v4[1];
  v12 = *(v4 + 16);
  v13 = *(a1 + 24);

  sub_268DAAB84(v7 & 1, a2, v10, v11, v12, v13 & 1, a3, a4, sub_268F50364, a1, 0, 1, 0, 0);
  return sub_268CD9A28(sub_268F50364);
}

uint64_t sub_268F502D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);

  sub_268D3EE68();
}

uint64_t sub_268F5038C(uint64_t a1)
{
  v10 = a1;
  v13 = 0;
  v12 = 0;
  v9 = sub_268F9A9C4();
  v7 = *(v9 - 8);
  v8 = v9 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v9);
  v6 = &v4 - v5;
  v13 = v2;
  v12 = v1;
  (*(v7 + 16))();
  (*(v7 + 32))(v1 + OBJC_IVAR____TtCC19SiriSettingsIntents15SettingsSetting7Builder_identifier, v6, v9);
  (*(v7 + 8))(v10, v9);
  return v11;
}

uint64_t sub_268F504C0()
{
  v3 = OBJC_IVAR____TtCC19SiriSettingsIntents15SettingsSetting7Builder_identifier;
  v1 = sub_268F9A9C4();
  (*(*(v1 - 8) + 8))(v0 + v3);
  return v4;
}

uint64_t sub_268F50534@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtCC19SiriSettingsIntents15SettingsSetting7Builder_identifier;
  swift_beginAccess();
  v2 = sub_268F9A9C4();
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t sub_268F505C0(uint64_t a1)
{
  v11 = a1;
  v12 = sub_268F9A9C4();
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v12);
  v7 = &v4 - v5;
  (*(v9 + 16))(v2);
  v6 = v1 + OBJC_IVAR____TtCC19SiriSettingsIntents15SettingsSetting7Builder_identifier;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t sub_268F50764(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v10 = sub_268F9A9C4();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v4 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v11);
  v9 = &v4 - v4;
  v15 = v2;
  v14 = v1;
  *(v1 + 16) = 0;
  v5 = v2 + OBJC_IVAR____TtCC19SiriSettingsIntents15SettingsSetting7Builder_identifier;
  v6 = &v13;
  swift_beginAccess();
  (*(v7 + 16))(v9, v5, v10);
  swift_endAccess();
  (*(v7 + 32))(v1 + OBJC_IVAR____TtC19SiriSettingsIntents15SettingsSetting_identifier, v9, v10);

  return v12;
}

uint64_t sub_268F508B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v13[2] = 0;
  v13[3] = a1;
  v13[4] = a2;

  v13[0] = sub_268F9AEF4();
  v13[1] = v3;
  v12 = MEMORY[0x26D62DB50](v13[0], v3, a1, a2);
  sub_268CD9D30(v13);
  if (v12)
  {

    v6 = v9 + OBJC_IVAR____TtC19SiriSettingsIntents15SettingsSetting_identifier;
    v7 = sub_268F9A9C4();
    a3[3] = v7;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
    return (*(*(v7 - 8) + 16))(boxed_opaque_existential_1, v6);
  }

  else
  {

    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    a3[3] = 0;
  }

  return result;
}

uint64_t SettingsSetting.init(from:)(uint64_t *a1)
{
  v23 = a1;
  v35 = 0;
  v34 = 0;
  v18 = sub_268F9A9C4();
  v19 = *(v18 - 8);
  v20 = v18 - 8;
  v21 = (*(v19 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v18);
  v22 = &v8 - v21;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE5D8, &qword_268FAC0E0);
  v25 = *(v24 - 8);
  v26 = v24 - 8;
  v27 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v23);
  v28 = &v8 - v27;
  v35 = v2;
  v34 = v1;
  *(v1 + 16) = 0;
  v30 = v2[3];
  v31 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v30);
  sub_268F50D1C();
  v3 = v29;
  sub_268F9B834();
  v32 = v3;
  v33 = v3;
  if (v3)
  {
    v12 = v33;
    v13 = v17;
  }

  else
  {
    sub_268DD91D4();
    v4 = v32;
    sub_268F9B654();
    v15 = v4;
    v16 = v4;
    if (!v4)
    {
      (*(v19 + 32))(v17 + OBJC_IVAR____TtC19SiriSettingsIntents15SettingsSetting_identifier, v22, v18);
      (*(v25 + 8))(v28, v24);
      __swift_destroy_boxed_opaque_existential_0(v23);
      return v17;
    }

    v11 = v16;
    (*(v25 + 8))(v28, v24);
    v12 = v11;
    v13 = v17;
  }

  v9 = v13;
  v10 = v12;
  sub_268D35038((v13 + 16));
  type metadata accessor for SettingsSetting();
  v6 = *(*v9 + 48);
  v7 = *(*v9 + 52);
  swift_deallocPartialClassInstance();
  __swift_destroy_boxed_opaque_existential_0(v23);
  return v14;
}

unint64_t sub_268F50D1C()
{
  v2 = qword_280FE5E70;
  if (!qword_280FE5E70)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280FE5E70);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for SettingsSetting()
{
  v1 = qword_280FE5D70;
  if (!qword_280FE5D70)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_268F50E0C(uint64_t a1)
{
  v7 = a1;
  v24 = 0;
  v23 = 0;
  v18 = sub_268F9A9C4();
  v14 = *(v18 - 8);
  v15 = v18 - 8;
  v6 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v18);
  v20 = v5 - v6;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE5E0, &qword_268FAC0E8);
  v8 = *(v17 - 8);
  v9 = v17 - 8;
  v10 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7);
  v13 = v5 - v10;
  v24 = v2;
  v23 = v1;
  v11 = v2[3];
  v12 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v11);
  sub_268F50D1C();
  sub_268F9B844();
  (*(v14 + 16))(v20, v16 + OBJC_IVAR____TtC19SiriSettingsIntents15SettingsSetting_identifier, v18);
  sub_268DD95FC();
  v3 = v19;
  sub_268F9B6E4();
  v21 = v3;
  v22 = v3;
  if (v3)
  {
    v5[1] = v22;
  }

  (*(v14 + 8))(v20, v18);
  return (*(v8 + 8))(v13, v17);
}

uint64_t SettingsSetting.deinit()
{
  sub_268D35038((v0 + 16));
  v3 = OBJC_IVAR____TtC19SiriSettingsIntents15SettingsSetting_identifier;
  v1 = sub_268F9A9C4();
  (*(*(v1 - 8) + 8))(v0 + v3);
  return v4;
}

uint64_t sub_268F5113C()
{
  swift_beginAccess();
  v2 = *(v0 + 16);
  MEMORY[0x277D82BE0]();
  swift_endAccess();
  return v2;
}

uint64_t sub_268F511A0(uint64_t a1)
{
  MEMORY[0x277D82BE0]();
  swift_beginAccess();
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  return MEMORY[0x277D82BD8](a1);
}

uint64_t sub_268F51290(uint64_t a1)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  return sub_268F5038C(a1);
}

uint64_t sub_268F512DC()
{
  type metadata accessor for SettingsSetting();

  return sub_268F51328(v1);
}

uint64_t sub_268F51328(uint64_t a1)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  return sub_268F50764(a1);
}

uint64_t sub_268F51374()
{
  v0 = *sub_268F504C0();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  return swift_deallocClassInstance();
}

uint64_t sub_268F51418@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;

  *a2 = sub_268F5113C();
}

uint64_t sub_268F51474(uint64_t *a1, uint64_t *a2)
{
  sub_268F52588(a1, &v6);
  v4 = v6;
  v5 = *a2;

  sub_268F511A0(v4);
}

uint64_t sub_268F514DC@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC19SiriSettingsIntents15SettingsSetting_identifier;
  v2 = sub_268F9A9C4();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_268F51550(uint64_t a1)
{
  v12 = a1;
  v16 = 0;
  v15 = 0;
  v5[1] = 0;
  v13 = sub_268F9A9C4();
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v6 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v7 = v5 - v6;
  v16 = v1;
  type metadata accessor for SettingsSetting.Builder();
  (*(v10 + 16))(v7, v12, v13);
  v2 = sub_268F51290(v7);
  v3 = v8;
  v9 = v2;
  v15 = v2;

  v14 = (*(v3 + 136))(v9);

  v17 = v14;

  (*(v10 + 8))(v12, v13);

  return v14;
}

uint64_t type metadata accessor for SettingsSetting.Builder()
{
  v1 = qword_280FE5E50;
  if (!qword_280FE5E50)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

BOOL sub_268F51730()
{
  sub_268F9B734();
  *v0 = "identifier";
  *(v0 + 8) = 10;
  *(v0 + 16) = 2;
  sub_268CD0F7C();
  v2 = sub_268F9B5C4();

  return v2 != 0;
}

uint64_t sub_268F51808()
{

  if (sub_268F51730())
  {

    v1 = 1;
  }

  else
  {

    v1 = 0;
  }

  return v1 & 1;
}

unint64_t sub_268F51928()
{
  v2 = qword_2802DE5E8;
  if (!qword_2802DE5E8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE5E8);
    return WitnessTable;
  }

  return v2;
}

BOOL sub_268F51A74@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = sub_268F51730();
  *a2 = result;
  return result;
}

uint64_t sub_268F51AB4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268F51890();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t sub_268F51AFC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_268F51808();
  *a1 = result & 1;
  return result;
}

uint64_t SettingsSetting.__deallocating_deinit()
{
  v0 = *SettingsSetting.deinit();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  return swift_deallocClassInstance();
}

uint64_t SettingsSetting.__allocating_init(from:)(uint64_t *a1)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v8 = SettingsSetting.init(from:)(a1);
  if (v6)
  {
    return v5;
  }

  else
  {
    return v8;
  }
}

void (*sub_268F51D1C(void *a1))(void **a1, char a2)
{
  v4 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v4;
  v2 = *v1;
  v4[4] = sub_268F5122C();
  return sub_268E93B70;
}

unint64_t sub_268F51DF8()
{
  v2 = qword_280FE5D80;
  if (!qword_280FE5D80)
  {
    type metadata accessor for SettingsSetting();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280FE5D80);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F51E90()
{
  v2 = qword_280FE5D88[0];
  if (!qword_280FE5D88[0])
  {
    type metadata accessor for SettingsSetting();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_280FE5D88);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268F51F10@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 160))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_268F52014()
{
  v2 = sub_268F9A9C4();
  updated = v2;
  if (v0 <= 0x3F)
  {
    v4 = *(v2 - 8) + 64;
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

uint64_t sub_268F522E4()
{
  v2 = sub_268F9A9C4();
  updated = v2;
  if (v0 <= 0x3F)
  {
    v4 = *(v2 - 8) + 64;
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

unint64_t sub_268F523E4()
{
  v2 = qword_2802DE5F0;
  if (!qword_2802DE5F0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE5F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F52478()
{
  v2 = qword_280FE5E60;
  if (!qword_280FE5E60)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280FE5E60);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F5250C()
{
  v2 = qword_280FE5E68;
  if (!qword_280FE5E68)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280FE5E68);
    return WitnessTable;
  }

  return v2;
}

void *sub_268F52588(uint64_t *a1, void *a2)
{
  v3 = *a1;
  MEMORY[0x277D82BE0]();
  result = a2;
  *a2 = v3;
  return result;
}

uint64_t *sub_268F525C8()
{
  if (qword_280FE2BA8 != -1)
  {
    swift_once();
  }

  return &qword_280FE7FD0;
}

uint64_t sub_268F52628()
{
  type metadata accessor for GetAXColorFiltersBlueYellowHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_280FE7FD0 = result;
  return result;
}

uint64_t sub_268F52690()
{
  v1 = *sub_268F525C8();

  return v1;
}

double sub_268F526C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a1;
  v23 = a2;
  v24 = a3;
  v22 = v3;
  sub_268F9B284();
  v4 = sub_268DC7AE8();
  v8 = *v4;
  MEMORY[0x277D82BE0](*v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v8);
  v5 = sub_268DBAB64();
  v9 = *v5;
  v13 = v5[1];
  v14 = *(v5 + 16);
  v6 = sub_268DC7AE8();
  v15 = *v6;
  MEMORY[0x277D82BE0](*v6);
  v16 = *(v3 + 24);
  MEMORY[0x277D82BE0](a1);

  v18 = a1;
  v19 = v3;
  v20 = a2;
  v21 = a3;
  sub_268DB944C(v9, v13, v14, v15, v16 & 1, sub_268F52B44, v17, MEMORY[0x277D84F78] + 8, v3);
  MEMORY[0x277D82BD8](a1);

  *&result = MEMORY[0x277D82BD8](v15).n128_u64[0];
  return result;
}

double sub_268F528DC(void *a1, uint64_t a2, void (*a3)(id))
{
  v15 = [a1 settingMetadata];
  v16 = *(a2 + 16);

  v17 = sub_268D3ECD4();

  if (v17)
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

  v11 = sub_268E41A08(v15, 0, 0, v12, 0, 0);
  MEMORY[0x277D82BD8](v15);
  sub_268F9B284();
  v3 = sub_268DC7AE8();
  v10 = *v3;
  MEMORY[0x277D82BE0](*v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v9 = v4;
  MEMORY[0x277D82BE0](v11);
  sub_268CDD0DC();
  sub_268CDD1A4();
  v7 = sub_268F9AE74();
  v8 = v5;
  v9[3] = MEMORY[0x277D837D0];
  v9[4] = sub_268CDD224();
  *v9 = v7;
  v9[1] = v8;
  sub_268CD0F7C();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v10);

  a3(v11);

  *&result = MEMORY[0x277D82BD8](v11).n128_u64[0];
  return result;
}

uint64_t sub_268F52B9C()
{
  type metadata accessor for SetAXAutoBrightnessHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_2802F1778 = result;
  return result;
}

uint64_t *sub_268F52C04()
{
  if (qword_2802DB8C0 != -1)
  {
    swift_once();
  }

  return &qword_2802F1778;
}

uint64_t sub_268F52C64()
{
  v1 = *sub_268F52C04();

  return v1;
}

uint64_t sub_268F52C94(void *a1, void (*a2)(void), uint64_t a3)
{
  sub_268F9B284();
  v4 = sub_268DC7AE8();
  v7 = *v4;
  MEMORY[0x277D82BE0](*v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v7);
  v9 = *(v3 + 16);

  v10 = sub_268D41E74();

  v5 = sub_268DBCFA4();
  v12 = *v5;
  v13 = v5[1];
  v14 = *(v5 + 16);
  v15 = *(v8 + 24);

  sub_268DAAB84(v10, a1, v12, v13, v14, v15 & 1, a2, a3, sub_268F52EB8, v8, 0, 1, 0, 0);
  return sub_268CD9A28(sub_268F52EB8);
}

uint64_t sub_268F52E48(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);

  sub_268D39F28();
}

uint64_t *sub_268F52F04()
{
  if (qword_280FE63E8 != -1)
  {
    swift_once();
  }

  return &qword_280FE8350;
}

uint64_t sub_268F52F64()
{
  type metadata accessor for GetSmartSiriVolumeHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_280FE8350 = result;
  return result;
}

uint64_t sub_268F52FCC()
{
  v1 = *sub_268F52F04();

  return v1;
}

double sub_268F52FFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a1;
  v23 = a2;
  v24 = a3;
  v22 = v3;
  sub_268F9B284();
  v4 = sub_268DC7AE8();
  v8 = *v4;
  MEMORY[0x277D82BE0](*v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v8);
  v5 = sub_268DBBD54();
  v9 = *v5;
  v13 = v5[1];
  v14 = *(v5 + 16);
  v6 = sub_268DC7AE8();
  v15 = *v6;
  MEMORY[0x277D82BE0](*v6);
  v16 = *(v3 + 24);

  MEMORY[0x277D82BE0](a1);

  v18 = v3;
  v19 = a1;
  v20 = a2;
  v21 = a3;
  sub_268DB944C(v9, v13, v14, v15, v16 & 1, sub_268F53518, v17, MEMORY[0x277D84F78] + 8, v3);

  MEMORY[0x277D82BD8](a1);

  *&result = MEMORY[0x277D82BD8](v15).n128_u64[0];
  return result;
}

double sub_268F53214(uint64_t a1, void *a2, void (*a3)(id))
{
  v15 = *(a1 + 16);

  v19 = sub_268D44174();

  sub_268CDD0DC();
  v16 = sub_268CD42AC(3, 0);
  sub_268CDD140();
  sub_268F9B734();
  v18 = v3;
  v20 = [a2 settingMetadata];
  if (v19)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  *v18 = sub_268E41954(v20, 0, 0, v13, 0, 0);
  sub_268CD0F7C();
  v8 = sub_268F9B004();

  [v16 setSettingResponseDatas_];
  MEMORY[0x277D82BD8](v8);
  sub_268F9B284();
  v4 = sub_268DC7AE8();
  v12 = *v4;
  MEMORY[0x277D82BE0](*v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v11 = v5;
  MEMORY[0x277D82BE0](v16);
  sub_268CDD1A4();
  v9 = sub_268F9AE74();
  v10 = v6;
  v11[3] = MEMORY[0x277D837D0];
  v11[4] = sub_268CDD224();
  *v11 = v9;
  v11[1] = v10;
  sub_268CD0F7C();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v12);

  a3(v16);

  *&result = MEMORY[0x277D82BD8](v16).n128_u64[0];
  return result;
}

uint64_t sub_268F53570()
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8E4();
}

uint64_t sub_268F5364C(uint64_t a1)
{
  v2[5] = v1;
  v2[4] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[3] = v1;
  v3 = v2[2];
  return MEMORY[0x2822009F8](sub_268F5368C, 0);
}

uint64_t sub_268F5368C()
{
  v7 = MEMORY[0x277D55BF0];
  v0[2] = v0;
  v9 = sub_268F9AEF4();
  v10 = v1;
  v0[6] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v11 = sub_268F9B4F4();
  v0[7] = v11;
  v12 = (v7 + *v7);
  v2 = v7[1];
  v3 = swift_task_alloc();
  v8[8] = v3;
  *v3 = v8[2];
  v3[1] = sub_268DB4E74;
  v4 = v8[5];
  v5 = v8[4];

  return v12(v5, v9, v10, v11);
}

uint64_t sub_268F537E4()
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8F4();
}

uint64_t sub_268F538A8(uint64_t a1, uint64_t a2, char a3)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v10 = v3;
  *v3 = sub_268F9AEF4();
  v10[1] = v4;

  if (a1)
  {
    v10[5] = type metadata accessor for SettingsBinarySetting();
    v10[2] = a1;
  }

  else
  {
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = 0;
    v10[5] = 0;
  }

  v10[6] = sub_268F9AEF4();
  v10[7] = v5;

  if (a2)
  {
    v10[11] = sub_268F9AA44();
    v10[8] = a2;
  }

  else
  {
    v10[8] = 0;
    v10[9] = 0;
    v10[10] = 0;
    v10[11] = 0;
  }

  v10[12] = sub_268F9AEF4();
  v10[13] = v6;
  if (a3 == 2)
  {
    v10[14] = 0;
    v10[15] = 0;
    v10[16] = 0;
    v10[17] = 0;
  }

  else
  {
    v10[17] = MEMORY[0x277D839B0];
    *(v10 + 112) = a3 & 1;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8E4();
}

uint64_t sub_268F53B64(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 72) = v4;
  *(v5 + 113) = a4;
  *(v5 + 64) = a3;
  *(v5 + 56) = a2;
  *(v5 + 48) = a1;
  *(v5 + 16) = v5;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 112) = 0;
  *(v5 + 40) = 0;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 112) = a4;
  *(v5 + 40) = v4;
  v6 = *(v5 + 16);
  return MEMORY[0x2822009F8](sub_268F53BD4, 0);
}

uint64_t sub_268F53BD4()
{
  v22 = v0[7];
  v0[2] = v0;
  v19 = sub_268F9AEF4();
  v20 = v1;
  v0[10] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v21 = v2;
  *v2 = sub_268F9AEF4();
  v21[1] = v3;

  if (v22)
  {
    v17 = *(v18 + 56);
    v21[5] = type metadata accessor for SettingsBinarySetting();
    v21[2] = v17;
  }

  else
  {
    v21[2] = 0;
    v21[3] = 0;
    v21[4] = 0;
    v21[5] = 0;
  }

  v16 = *(v18 + 64);
  v21[6] = sub_268F9AEF4();
  v21[7] = v4;

  if (v16)
  {
    v15 = *(v18 + 64);
    v21[11] = sub_268F9AA44();
    v21[8] = v15;
  }

  else
  {
    v21[8] = 0;
    v21[9] = 0;
    v21[10] = 0;
    v21[11] = 0;
  }

  v14 = *(v18 + 113);
  v21[12] = sub_268F9AEF4();
  v21[13] = v5;
  if (v14 == 2)
  {
    v21[14] = 0;
    v21[15] = 0;
    v21[16] = 0;
    v21[17] = 0;
  }

  else
  {
    v6 = *(v18 + 113);
    v21[17] = MEMORY[0x277D839B0];
    *(v21 + 112) = v6 & 1;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v12 = sub_268F9B4F4();
  *(v18 + 88) = v12;
  v13 = (MEMORY[0x277D55BF0] + *MEMORY[0x277D55BF0]);
  v7 = *(MEMORY[0x277D55BF0] + 4);
  v8 = swift_task_alloc();
  *(v18 + 96) = v8;
  *v8 = *(v18 + 16);
  v8[1] = sub_268F53F94;
  v9 = *(v18 + 72);
  v10 = *(v18 + 48);

  return v13(v10, v19, v20, v12);
}

uint64_t sub_268F53F94()
{
  v8 = *v1;
  v2 = *(*v1 + 96);
  v8[2] = *v1;
  v9 = v8 + 2;
  v8[13] = v0;

  if (v0)
  {
    v6 = *v9;

    return MEMORY[0x2822009F8](sub_268F54168, 0);
  }

  else
  {
    v3 = v8[11];
    v7 = v8[10];

    v4 = *(*v9 + 8);

    return v4();
  }
}

uint64_t sub_268F54168()
{
  v1 = v0[11];
  v7 = v0[10];
  v0[2] = v0;

  v2 = v0;
  v3 = *(v0[2] + 8);
  v4 = v0[2];
  v5 = v2[13];

  return v3();
}

uint64_t sub_268F54220(uint64_t a1, uint64_t a2, char a3)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v10 = v3;
  *v3 = sub_268F9AEF4();
  v10[1] = v4;

  if (a1)
  {
    v10[5] = type metadata accessor for SettingsBinarySetting();
    v10[2] = a1;
  }

  else
  {
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = 0;
    v10[5] = 0;
  }

  v10[6] = sub_268F9AEF4();
  v10[7] = v5;

  if (a2)
  {
    v10[11] = sub_268F9AA44();
    v10[8] = a2;
  }

  else
  {
    v10[8] = 0;
    v10[9] = 0;
    v10[10] = 0;
    v10[11] = 0;
  }

  v10[12] = sub_268F9AEF4();
  v10[13] = v6;
  if (a3 == 2)
  {
    v10[14] = 0;
    v10[15] = 0;
    v10[16] = 0;
    v10[17] = 0;
  }

  else
  {
    v10[17] = MEMORY[0x277D839B0];
    *(v10 + 112) = a3 & 1;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8F4();
}

uint64_t sub_268F544C4(uint64_t a1)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v4 = v1;
  *v1 = sub_268F9AEF4();
  v4[1] = v2;

  if (a1)
  {
    v4[5] = sub_268F9AA44();
    v4[2] = a1;
  }

  else
  {
    v4[2] = 0;
    v4[3] = 0;
    v4[4] = 0;
    v4[5] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8E4();
}

uint64_t sub_268F54660(uint64_t a1, uint64_t a2)
{
  v3[7] = v2;
  v3[6] = a2;
  v3[5] = a1;
  v3[2] = v3;
  v3[3] = 0;
  v3[4] = 0;
  v3[3] = a2;
  v3[4] = v2;
  v4 = v3[2];
  return MEMORY[0x2822009F8](sub_268F546B0, 0);
}

uint64_t sub_268F546B0()
{
  v16 = v0[6];
  v0[2] = v0;
  v13 = sub_268F9AEF4();
  v14 = v1;
  v0[8] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v15 = v2;
  *v2 = sub_268F9AEF4();
  v15[1] = v3;

  if (v16)
  {
    v11 = v12[6];
    v15[5] = sub_268F9AA44();
    v15[2] = v11;
  }

  else
  {
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = 0;
    v15[5] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v9 = sub_268F9B4F4();
  v12[9] = v9;
  v10 = (MEMORY[0x277D55BF0] + *MEMORY[0x277D55BF0]);
  v4 = *(MEMORY[0x277D55BF0] + 4);
  v5 = swift_task_alloc();
  v12[10] = v5;
  *v5 = v12[2];
  v5[1] = sub_268DB5558;
  v6 = v12[7];
  v7 = v12[5];

  return v10(v7, v13, v14, v9);
}

uint64_t sub_268F548D0(uint64_t a1)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v4 = v1;
  *v1 = sub_268F9AEF4();
  v4[1] = v2;

  if (a1)
  {
    v4[5] = sub_268F9AA44();
    v4[2] = a1;
  }

  else
  {
    v4[2] = 0;
    v4[3] = 0;
    v4[4] = 0;
    v4[5] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8F4();
}

uint64_t sub_268F54A54()
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8E4();
}

uint64_t sub_268F54B30(uint64_t a1)
{
  v2[5] = v1;
  v2[4] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[3] = v1;
  v3 = v2[2];
  return MEMORY[0x2822009F8](sub_268F54B70, 0);
}

uint64_t sub_268F54B70()
{
  v7 = MEMORY[0x277D55BF0];
  v0[2] = v0;
  v9 = sub_268F9AEF4();
  v10 = v1;
  v0[6] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v11 = sub_268F9B4F4();
  v0[7] = v11;
  v12 = (v7 + *v7);
  v2 = v7[1];
  v3 = swift_task_alloc();
  v8[8] = v3;
  *v3 = v8[2];
  v3[1] = sub_268DB4E74;
  v4 = v8[5];
  v5 = v8[4];

  return v12(v5, v9, v10, v11);
}

uint64_t sub_268F54CC8()
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8F4();
}

uint64_t sub_268F54D8C()
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8F4();
}

uint64_t sub_268F54E50(uint64_t a1)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v4 = v1;
  *v1 = sub_268F9AEF4();
  v4[1] = v2;

  if (a1)
  {
    v4[5] = type metadata accessor for SettingsBinarySetting();
    v4[2] = a1;
  }

  else
  {
    v4[2] = 0;
    v4[3] = 0;
    v4[4] = 0;
    v4[5] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8E4();
}

uint64_t sub_268F54FEC(uint64_t a1, uint64_t a2)
{
  v3[7] = v2;
  v3[6] = a2;
  v3[5] = a1;
  v3[2] = v3;
  v3[3] = 0;
  v3[4] = 0;
  v3[3] = a2;
  v3[4] = v2;
  v4 = v3[2];
  return MEMORY[0x2822009F8](sub_268F5503C, 0);
}

uint64_t sub_268F5503C()
{
  v16 = v0[6];
  v0[2] = v0;
  v13 = sub_268F9AEF4();
  v14 = v1;
  v0[8] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v15 = v2;
  *v2 = sub_268F9AEF4();
  v15[1] = v3;

  if (v16)
  {
    v11 = v12[6];
    v15[5] = type metadata accessor for SettingsBinarySetting();
    v15[2] = v11;
  }

  else
  {
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = 0;
    v15[5] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v9 = sub_268F9B4F4();
  v12[9] = v9;
  v10 = (MEMORY[0x277D55BF0] + *MEMORY[0x277D55BF0]);
  v4 = *(MEMORY[0x277D55BF0] + 4);
  v5 = swift_task_alloc();
  v12[10] = v5;
  *v5 = v12[2];
  v5[1] = sub_268DB5558;
  v6 = v12[7];
  v7 = v12[5];

  return v10(v7, v13, v14, v9);
}

uint64_t sub_268F5525C(uint64_t a1)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v4 = v1;
  *v1 = sub_268F9AEF4();
  v4[1] = v2;

  if (a1)
  {
    v4[5] = type metadata accessor for SettingsBinarySetting();
    v4[2] = a1;
  }

  else
  {
    v4[2] = 0;
    v4[3] = 0;
    v4[4] = 0;
    v4[5] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8F4();
}

uint64_t sub_268F553E0()
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8E4();
}

uint64_t sub_268F554BC(uint64_t a1)
{
  v2[5] = v1;
  v2[4] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[3] = v1;
  v3 = v2[2];
  return MEMORY[0x2822009F8](sub_268F554FC, 0);
}

uint64_t sub_268F554FC()
{
  v7 = MEMORY[0x277D55BF0];
  v0[2] = v0;
  v9 = sub_268F9AEF4();
  v10 = v1;
  v0[6] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v11 = sub_268F9B4F4();
  v0[7] = v11;
  v12 = (v7 + *v7);
  v2 = v7[1];
  v3 = swift_task_alloc();
  v8[8] = v3;
  *v3 = v8[2];
  v3[1] = sub_268DB4E74;
  v4 = v8[5];
  v5 = v8[4];

  return v12(v5, v9, v10, v11);
}

uint64_t sub_268F55654()
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8F4();
}

uint64_t sub_268F55718(uint64_t a1, char a2)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v7 = v2;
  *v2 = sub_268F9AEF4();
  v7[1] = v3;

  if (a1)
  {
    v7[5] = type metadata accessor for SettingsNumericSetting();
    v7[2] = a1;
  }

  else
  {
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = 0;
    v7[5] = 0;
  }

  v7[6] = sub_268F9AEF4();
  v7[7] = v4;
  if (a2 == 2)
  {
    v7[8] = 0;
    v7[9] = 0;
    v7[10] = 0;
    v7[11] = 0;
  }

  else
  {
    v7[11] = MEMORY[0x277D839B0];
    *(v7 + 64) = a2 & 1;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8E4();
}

uint64_t sub_268F55940(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 56) = v3;
  *(v4 + 97) = a3;
  *(v4 + 48) = a2;
  *(v4 + 40) = a1;
  *(v4 + 16) = v4;
  *(v4 + 24) = 0;
  *(v4 + 96) = 0;
  *(v4 + 32) = 0;
  *(v4 + 24) = a2;
  *(v4 + 96) = a3;
  *(v4 + 32) = v3;
  v5 = *(v4 + 16);
  return MEMORY[0x2822009F8](sub_268F559A0, 0);
}

uint64_t sub_268F559A0()
{
  v19 = v0[6];
  v0[2] = v0;
  v16 = sub_268F9AEF4();
  v17 = v1;
  v0[8] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v18 = v2;
  *v2 = sub_268F9AEF4();
  v18[1] = v3;

  if (v19)
  {
    v14 = *(v15 + 48);
    v18[5] = type metadata accessor for SettingsNumericSetting();
    v18[2] = v14;
  }

  else
  {
    v18[2] = 0;
    v18[3] = 0;
    v18[4] = 0;
    v18[5] = 0;
  }

  v13 = *(v15 + 97);
  v18[6] = sub_268F9AEF4();
  v18[7] = v4;
  if (v13 == 2)
  {
    v18[8] = 0;
    v18[9] = 0;
    v18[10] = 0;
    v18[11] = 0;
  }

  else
  {
    v5 = *(v15 + 97);
    v18[11] = MEMORY[0x277D839B0];
    *(v18 + 64) = v5 & 1;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v11 = sub_268F9B4F4();
  *(v15 + 72) = v11;
  v12 = (MEMORY[0x277D55BF0] + *MEMORY[0x277D55BF0]);
  v6 = *(MEMORY[0x277D55BF0] + 4);
  v7 = swift_task_alloc();
  *(v15 + 80) = v7;
  *v7 = *(v15 + 16);
  v7[1] = sub_268F55C7C;
  v8 = *(v15 + 56);
  v9 = *(v15 + 40);

  return v12(v9, v16, v17, v11);
}

uint64_t sub_268F55C7C()
{
  v8 = *v1;
  v2 = *(*v1 + 80);
  v8[2] = *v1;
  v9 = v8 + 2;
  v8[11] = v0;

  if (v0)
  {
    v6 = *v9;

    return MEMORY[0x2822009F8](sub_268F55E40, 0);
  }

  else
  {
    v3 = v8[9];
    v7 = v8[8];

    v4 = *(*v9 + 8);

    return v4();
  }
}

uint64_t sub_268F55E40()
{
  v1 = v0[9];
  v7 = v0[8];
  v0[2] = v0;

  v2 = v0;
  v3 = *(v0[2] + 8);
  v4 = v0[2];
  v5 = v2[11];

  return v3();
}

uint64_t sub_268F55EF4(uint64_t a1, char a2)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v7 = v2;
  *v2 = sub_268F9AEF4();
  v7[1] = v3;

  if (a1)
  {
    v7[5] = type metadata accessor for SettingsNumericSetting();
    v7[2] = a1;
  }

  else
  {
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = 0;
    v7[5] = 0;
  }

  v7[6] = sub_268F9AEF4();
  v7[7] = v4;
  if (a2 == 2)
  {
    v7[8] = 0;
    v7[9] = 0;
    v7[10] = 0;
    v7[11] = 0;
  }

  else
  {
    v7[11] = MEMORY[0x277D839B0];
    *(v7 + 64) = a2 & 1;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8F4();
}

uint64_t sub_268F56104(uint64_t a1, uint64_t a2, char a3)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v10 = v3;
  *v3 = sub_268F9AEF4();
  v10[1] = v4;

  if (a1)
  {
    v10[5] = type metadata accessor for SettingsBinarySetting();
    v10[2] = a1;
  }

  else
  {
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = 0;
    v10[5] = 0;
  }

  v10[6] = sub_268F9AEF4();
  v10[7] = v5;

  if (a2)
  {
    v10[11] = type metadata accessor for SettingsMultiSetting();
    v10[8] = a2;
  }

  else
  {
    v10[8] = 0;
    v10[9] = 0;
    v10[10] = 0;
    v10[11] = 0;
  }

  v10[12] = sub_268F9AEF4();
  v10[13] = v6;
  v10[17] = MEMORY[0x277D839B0];
  *(v10 + 112) = a3;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8E4();
}

uint64_t sub_268F5638C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 72) = v4;
  *(v5 + 113) = a4 & 1;
  *(v5 + 64) = a3;
  *(v5 + 56) = a2;
  *(v5 + 48) = a1;
  *(v5 + 16) = v5;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 112) = 0;
  *(v5 + 40) = 0;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 112) = a4 & 1;
  *(v5 + 40) = v4;
  v6 = *(v5 + 16);
  return MEMORY[0x2822009F8](sub_268F56410, 0);
}

uint64_t sub_268F56410()
{
  v21 = v0[7];
  v0[2] = v0;
  v18 = sub_268F9AEF4();
  v19 = v1;
  v0[10] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v20 = v2;
  *v2 = sub_268F9AEF4();
  v20[1] = v3;

  if (v21)
  {
    v16 = *(v17 + 56);
    v20[5] = type metadata accessor for SettingsBinarySetting();
    v20[2] = v16;
  }

  else
  {
    v20[2] = 0;
    v20[3] = 0;
    v20[4] = 0;
    v20[5] = 0;
  }

  v15 = *(v17 + 64);
  v20[6] = sub_268F9AEF4();
  v20[7] = v4;

  if (v15)
  {
    v14 = *(v17 + 64);
    v20[11] = type metadata accessor for SettingsMultiSetting();
    v20[8] = v14;
  }

  else
  {
    v20[8] = 0;
    v20[9] = 0;
    v20[10] = 0;
    v20[11] = 0;
  }

  v11 = *(v17 + 113);
  v20[12] = sub_268F9AEF4();
  v20[13] = v5;
  v20[17] = MEMORY[0x277D839B0];
  *(v20 + 112) = v11;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v12 = sub_268F9B4F4();
  *(v17 + 88) = v12;
  v13 = (MEMORY[0x277D55BF0] + *MEMORY[0x277D55BF0]);
  v6 = *(MEMORY[0x277D55BF0] + 4);
  v7 = swift_task_alloc();
  *(v17 + 96) = v7;
  *v7 = *(v17 + 16);
  v7[1] = sub_268F53F94;
  v8 = *(v17 + 72);
  v9 = *(v17 + 48);

  return v13(v9, v18, v19, v12);
}

uint64_t sub_268F56768(uint64_t a1, uint64_t a2, char a3)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v10 = v3;
  *v3 = sub_268F9AEF4();
  v10[1] = v4;

  if (a1)
  {
    v10[5] = type metadata accessor for SettingsBinarySetting();
    v10[2] = a1;
  }

  else
  {
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = 0;
    v10[5] = 0;
  }

  v10[6] = sub_268F9AEF4();
  v10[7] = v5;

  if (a2)
  {
    v10[11] = type metadata accessor for SettingsMultiSetting();
    v10[8] = a2;
  }

  else
  {
    v10[8] = 0;
    v10[9] = 0;
    v10[10] = 0;
    v10[11] = 0;
  }

  v10[12] = sub_268F9AEF4();
  v10[13] = v6;
  v10[17] = MEMORY[0x277D839B0];
  *(v10 + 112) = a3;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8F4();
}

uint64_t sub_268F569D8()
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8E4();
}

uint64_t sub_268F56AB4(uint64_t a1)
{
  v2[5] = v1;
  v2[4] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[3] = v1;
  v3 = v2[2];
  return MEMORY[0x2822009F8](sub_268F56AF4, 0);
}

uint64_t sub_268F56AF4()
{
  v7 = MEMORY[0x277D55BF0];
  v0[2] = v0;
  v9 = sub_268F9AEF4();
  v10 = v1;
  v0[6] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v11 = sub_268F9B4F4();
  v0[7] = v11;
  v12 = (v7 + *v7);
  v2 = v7[1];
  v3 = swift_task_alloc();
  v8[8] = v3;
  *v3 = v8[2];
  v3[1] = sub_268DB4E74;
  v4 = v8[5];
  v5 = v8[4];

  return v12(v5, v9, v10, v11);
}

uint64_t sub_268F56C4C()
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8F4();
}

uint64_t sub_268F56D10(char a1, char a2, char a3)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v11 = v3;
  *v3 = sub_268F9AEF4();
  v11[1] = v4;
  v10 = MEMORY[0x277D839B0];
  v11[5] = MEMORY[0x277D839B0];
  *(v11 + 16) = a1;
  v11[6] = sub_268F9AEF4();
  v11[7] = v5;
  v11[11] = v10;
  *(v11 + 64) = a2;
  v11[12] = sub_268F9AEF4();
  v11[13] = v6;
  v11[17] = v10;
  *(v11 + 112) = a3;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8E4();
}

uint64_t sub_268F56F0C(uint64_t a1, char a2, char a3, char a4)
{
  *(v5 + 40) = v4;
  *(v5 + 83) = a4 & 1;
  *(v5 + 82) = a3 & 1;
  *(v5 + 81) = a2 & 1;
  *(v5 + 32) = a1;
  *(v5 + 16) = v5;
  *(v5 + 80) = 0;
  *(v5 + 88) = 0;
  *(v5 + 96) = 0;
  *(v5 + 24) = 0;
  *(v5 + 80) = a2 & 1;
  *(v5 + 88) = a3 & 1;
  *(v5 + 96) = a4 & 1;
  *(v5 + 24) = v4;
  v6 = *(v5 + 16);
  return MEMORY[0x2822009F8](sub_268F56FB0, 0);
}

uint64_t sub_268F56FB0()
{
  v16 = MEMORY[0x277D55BF0];
  v15 = *(v0 + 83);
  v12 = *(v0 + 82);
  v11 = *(v0 + 81);
  *(v0 + 16) = v0;
  v18 = sub_268F9AEF4();
  v19 = v1;
  *(v0 + 48) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v14 = v2;
  *v2 = sub_268F9AEF4();
  v14[1] = v3;
  v13 = MEMORY[0x277D839B0];
  v14[5] = MEMORY[0x277D839B0];
  *(v14 + 16) = v11;
  v14[6] = sub_268F9AEF4();
  v14[7] = v4;
  v14[11] = v13;
  *(v14 + 64) = v12;
  v14[12] = sub_268F9AEF4();
  v14[13] = v5;
  v14[17] = v13;
  *(v14 + 112) = v15;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v20 = sub_268F9B4F4();
  *(v0 + 56) = v20;
  v21 = (v16 + *v16);
  v6 = v16[1];
  v7 = swift_task_alloc();
  v17[8] = v7;
  *v7 = v17[2];
  v7[1] = sub_268F5720C;
  v8 = v17[5];
  v9 = v17[4];

  return v21(v9, v18, v19, v20);
}

uint64_t sub_268F5720C()
{
  v8 = *v1;
  v2 = *(*v1 + 64);
  v8[2] = *v1;
  v9 = v8 + 2;
  v8[9] = v0;

  if (v0)
  {
    v6 = *v9;

    return MEMORY[0x2822009F8](sub_268F573E0, 0);
  }

  else
  {
    v3 = v8[7];
    v7 = v8[6];

    v4 = *(*v9 + 8);

    return v4();
  }
}

uint64_t sub_268F573E0()
{
  v1 = v0[7];
  v7 = v0[6];
  v0[2] = v0;

  v2 = v0;
  v3 = *(v0[2] + 8);
  v4 = v0[2];
  v5 = v2[9];

  return v3();
}

uint64_t sub_268F57498(char a1, char a2, char a3)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v11 = v3;
  *v3 = sub_268F9AEF4();
  v11[1] = v4;
  v10 = MEMORY[0x277D839B0];
  v11[5] = MEMORY[0x277D839B0];
  *(v11 + 16) = a1;
  v11[6] = sub_268F9AEF4();
  v11[7] = v5;
  v11[11] = v10;
  *(v11 + 64) = a2;
  v11[12] = sub_268F9AEF4();
  v11[13] = v6;
  v11[17] = v10;
  *(v11 + 112) = a3;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8F4();
}

uint64_t sub_268F5767C(char a1, char a2)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v8 = v2;
  *v2 = sub_268F9AEF4();
  v8[1] = v3;
  v7 = MEMORY[0x277D839B0];
  v8[5] = MEMORY[0x277D839B0];
  *(v8 + 16) = a1;
  v8[6] = sub_268F9AEF4();
  v8[7] = v4;
  v8[11] = v7;
  *(v8 + 64) = a2;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8F4();
}

uint64_t type metadata accessor for SettingIntentCATs()
{
  v1 = qword_280FE5418;
  if (!qword_280FE5418)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_268F57884()
{
  inited = swift_initClassMetadata2();
  if (!inited)
  {
    return 0;
  }

  return inited;
}

uint64_t sub_268F578F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  return sub_268F57950(a1, a2, a3);
}

uint64_t sub_268F57950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a1;
  v17 = a2;
  v14 = a3;
  v24 = 0;
  v23 = 0;
  v22 = 0;
  v21 = 0;
  v18 = sub_268F9AB24();
  v15 = *(v18 - 8);
  v16 = v18 - 8;
  v10 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v18);
  v12 = &v9 - v10;
  v11 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE3F0, &qword_268F9D7A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v19);
  v13 = &v9 - v11;
  v23 = v4;
  v22 = v5;
  v21 = v6;
  v24 = v3;
  sub_268CDC358(v4, &v9 - v11);
  (*(v15 + 16))(v12, v17, v18);
  MEMORY[0x277D82BE0](v14);
  v20 = sub_268F9A8D4();

  v24 = v20;
  v7 = MEMORY[0x277D82BD8](v14);
  (*(v15 + 8))(v17, v18, v7);
  sub_268CDC480(v19);

  return v20;
}

BOOL sub_268F57B50()
{
  sub_268F9B734();
  *v0 = "ClarityUIIntent#CannotDo";
  *(v0 + 8) = 24;
  *(v0 + 16) = 2;
  sub_268CD0F7C();
  v2 = sub_268F9B5C4();

  return v2 != 0;
}

unint64_t sub_268F57CA8()
{
  v2 = qword_2802DE5F8;
  if (!qword_2802DE5F8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE5F8);
    return WitnessTable;
  }

  return v2;
}

BOOL sub_268F57DF4@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = sub_268F57B50();
  *a2 = result;
  return result;
}

uint64_t sub_268F57E34@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268F57C28();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t sub_268F57E64()
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8E4();
}

uint64_t sub_268F57F40(uint64_t a1)
{
  v2[5] = v1;
  v2[4] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[3] = v1;
  v3 = v2[2];
  return MEMORY[0x2822009F8](sub_268F57F80, 0);
}

uint64_t sub_268F57F80()
{
  v7 = MEMORY[0x277D55BF0];
  v0[2] = v0;
  v9 = sub_268F9AEF4();
  v10 = v1;
  v0[6] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v11 = sub_268F9B4F4();
  v0[7] = v11;
  v12 = (v7 + *v7);
  v2 = v7[1];
  v3 = swift_task_alloc();
  v8[8] = v3;
  *v3 = v8[2];
  v3[1] = sub_268DB4E74;
  v4 = v8[5];
  v5 = v8[4];

  return v12(v5, v9, v10, v11);
}

uint64_t sub_268F580D8()
{
  v1[4] = v0;
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = v0;
  v2 = v1[2];
  return MEMORY[0x2822009F8](sub_268F58114, 0);
}

uint64_t sub_268F58114()
{
  v6 = MEMORY[0x277D55BE0];
  v0[2] = v0;
  v11 = sub_268F9AEF4();
  v8 = v1;
  v0[5] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v9 = sub_268F9B4F4();
  v0[6] = v9;
  v10 = (v6 + *v6);
  v2 = v6[1];
  v3 = swift_task_alloc();
  v7[7] = v3;
  *v3 = v7[2];
  v3[1] = sub_268D71B74;
  v4 = v7[4];

  return v10(v11, v8, v9);
}

uint64_t sub_268F58268()
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8F4();
}

uint64_t type metadata accessor for ClarityUIIntentCATs()
{
  v1 = qword_2802DE600;
  if (!qword_2802DE600)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_268F583A0()
{
  inited = swift_initClassMetadata2();
  if (!inited)
  {
    return 0;
  }

  return inited;
}

uint64_t sub_268F58410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  return sub_268F5846C(a1, a2, a3);
}

uint64_t sub_268F5846C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a1;
  v17 = a2;
  v14 = a3;
  v24 = 0;
  v23 = 0;
  v22 = 0;
  v21 = 0;
  v18 = sub_268F9AB24();
  v15 = *(v18 - 8);
  v16 = v18 - 8;
  v10 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v18);
  v12 = &v9 - v10;
  v11 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE3F0, &qword_268F9D7A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v19);
  v13 = &v9 - v11;
  v23 = v4;
  v22 = v5;
  v21 = v6;
  v24 = v3;
  sub_268CDC358(v4, &v9 - v11);
  (*(v15 + 16))(v12, v17, v18);
  MEMORY[0x277D82BE0](v14);
  v20 = sub_268F9A8D4();

  v24 = v20;
  v7 = MEMORY[0x277D82BD8](v14);
  (*(v15 + 8))(v17, v18, v7);
  sub_268CDC480(v19);

  return v20;
}

unint64_t sub_268F58698()
{
  v2 = qword_2802DE610;
  if (!qword_2802DE610)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE610);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_268F58714()
{
  if (qword_280FE4520 != -1)
  {
    swift_once();
  }

  return &qword_280FE8150;
}

uint64_t sub_268F58774()
{
  type metadata accessor for GetAXOnOffLabelsHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_280FE8150 = result;
  return result;
}

uint64_t sub_268F587DC()
{
  v1 = *sub_268F58714();

  return v1;
}

double sub_268F5880C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a1;
  v23 = a2;
  v24 = a3;
  v22 = v3;
  sub_268F9B284();
  v4 = sub_268DC7AE8();
  v8 = *v4;
  MEMORY[0x277D82BE0](*v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v8);
  v5 = sub_268DBAF74();
  v9 = *v5;
  v13 = v5[1];
  v14 = *(v5 + 16);
  v6 = sub_268DC7AE8();
  v15 = *v6;
  MEMORY[0x277D82BE0](*v6);
  v16 = *(v3 + 24);
  MEMORY[0x277D82BE0](a1);

  v18 = a1;
  v19 = v3;
  v20 = a2;
  v21 = a3;
  sub_268DB944C(v9, v13, v14, v15, v16 & 1, sub_268F58C90, v17, MEMORY[0x277D84F78] + 8, v3);
  MEMORY[0x277D82BD8](a1);

  *&result = MEMORY[0x277D82BD8](v15).n128_u64[0];
  return result;
}

double sub_268F58A28(void *a1, uint64_t a2, void (*a3)(id))
{
  v15 = [a1 settingMetadata];
  v16 = *(a2 + 16);

  v17 = sub_268D3E684();

  if (v17)
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

  v11 = sub_268E41A08(v15, 0, 0, v12, 0, 0);
  MEMORY[0x277D82BD8](v15);
  sub_268F9B284();
  v3 = sub_268DC7AE8();
  v10 = *v3;
  MEMORY[0x277D82BE0](*v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v9 = v4;
  MEMORY[0x277D82BE0](v11);
  sub_268CDD0DC();
  sub_268CDD1A4();
  v7 = sub_268F9AE74();
  v8 = v5;
  v9[3] = MEMORY[0x277D837D0];
  v9[4] = sub_268CDD224();
  *v9 = v7;
  v9[1] = v8;
  sub_268CD0F7C();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v10);

  a3(v11);

  *&result = MEMORY[0x277D82BD8](v11).n128_u64[0];
  return result;
}

uint64_t sub_268F58CE8()
{
  type metadata accessor for SetAXButtonShapesHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_2802F1790 = result;
  return result;
}

uint64_t *sub_268F58D50()
{
  if (qword_2802DB8C8 != -1)
  {
    swift_once();
  }

  return &qword_2802F1790;
}

uint64_t sub_268F58DB0()
{
  v1 = *sub_268F58D50();

  return v1;
}

uint64_t sub_268F58DE0(void *a1, void (*a2)(void), uint64_t a3)
{
  sub_268F9B284();
  v4 = sub_268DC7AE8();
  v7 = *v4;
  MEMORY[0x277D82BE0](*v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v7);
  v9 = *(v3 + 16);

  v10 = sub_268D3E5B4();

  v5 = sub_268DBD144();
  v12 = *v5;
  v13 = v5[1];
  v14 = *(v5 + 16);
  v15 = *(v8 + 24);

  sub_268DAAB84(v10, a1, v12, v13, v14, v15 & 1, a2, a3, sub_268F59004, v8, 0, 1, 0, 0);
  return sub_268CD9A28(sub_268F59004);
}

uint64_t sub_268F58F94(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);

  sub_268D3E5E4();
}

uint64_t *sub_268F59050()
{
  if (qword_280FE4180 != -1)
  {
    swift_once();
  }

  return &qword_280FE8128;
}

uint64_t sub_268F590B0()
{
  type metadata accessor for GetAXInvertColorsHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_280FE8128 = result;
  return result;
}

uint64_t sub_268F59118()
{
  v1 = *sub_268F59050();

  return v1;
}

double sub_268F59148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a1;
  v23 = a2;
  v24 = a3;
  v22 = v3;
  sub_268F9B284();
  v4 = sub_268DC7AE8();
  v8 = *v4;
  MEMORY[0x277D82BE0](*v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v8);
  v5 = sub_268DBAEA4();
  v9 = *v5;
  v13 = v5[1];
  v14 = *(v5 + 16);
  v6 = sub_268DC7AE8();
  v15 = *v6;
  MEMORY[0x277D82BE0](*v6);
  v16 = *(v3 + 24);

  MEMORY[0x277D82BE0](a1);

  v18 = v3;
  v19 = a1;
  v20 = a2;
  v21 = a3;
  sub_268DB944C(v9, v13, v14, v15, v16 & 1, sub_268F59664, v17, MEMORY[0x277D84F78] + 8, v3);

  MEMORY[0x277D82BD8](a1);

  *&result = MEMORY[0x277D82BD8](v15).n128_u64[0];
  return result;
}

double sub_268F59360(uint64_t a1, void *a2, void (*a3)(id))
{
  v15 = *(a1 + 16);

  v19 = sub_268D3E984();

  sub_268CDD0DC();
  v16 = sub_268CD42AC(3, 0);
  sub_268CDD140();
  sub_268F9B734();
  v18 = v3;
  v20 = [a2 settingMetadata];
  if (v19)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  *v18 = sub_268E41954(v20, 0, 0, v13, 0, 0);
  sub_268CD0F7C();
  v8 = sub_268F9B004();

  [v16 setSettingResponseDatas_];
  MEMORY[0x277D82BD8](v8);
  sub_268F9B284();
  v4 = sub_268DC7AE8();
  v12 = *v4;
  MEMORY[0x277D82BE0](*v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v11 = v5;
  MEMORY[0x277D82BE0](v16);
  sub_268CDD1A4();
  v9 = sub_268F9AE74();
  v10 = v6;
  v11[3] = MEMORY[0x277D837D0];
  v11[4] = sub_268CDD224();
  *v11 = v9;
  v11[1] = v10;
  sub_268CD0F7C();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v12);

  a3(v16);

  *&result = MEMORY[0x277D82BD8](v16).n128_u64[0];
  return result;
}

uint64_t sub_268F596BC(uint64_t a1)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v4 = v1;
  *v1 = sub_268F9AEF4();
  v4[1] = v2;

  if (a1)
  {
    v4[5] = sub_268F9A994();
    v4[2] = a1;
  }

  else
  {
    v4[2] = 0;
    v4[3] = 0;
    v4[4] = 0;
    v4[5] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8E4();
}

uint64_t sub_268F59858(uint64_t a1)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v4 = v1;
  *v1 = sub_268F9AEF4();
  v4[1] = v2;

  if (a1)
  {
    v4[5] = sub_268F9A994();
    v4[2] = a1;
  }

  else
  {
    v4[2] = 0;
    v4[3] = 0;
    v4[4] = 0;
    v4[5] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8F4();
}

uint64_t sub_268F599DC()
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8E4();
}

uint64_t sub_268F59AB8()
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8F4();
}

uint64_t sub_268F59B7C(uint64_t a1, char a2)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v7 = v2;
  *v2 = sub_268F9AEF4();
  v7[1] = v3;

  if (a1)
  {
    v7[5] = type metadata accessor for SettingsBinarySetting();
    v7[2] = a1;
  }

  else
  {
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = 0;
    v7[5] = 0;
  }

  v7[6] = sub_268F9AEF4();
  v7[7] = v4;
  v7[11] = MEMORY[0x277D839B0];
  *(v7 + 64) = a2;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8E4();
}

uint64_t sub_268F59D70(uint64_t a1, char a2)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v7 = v2;
  *v2 = sub_268F9AEF4();
  v7[1] = v3;

  if (a1)
  {
    v7[5] = type metadata accessor for SettingsBinarySetting();
    v7[2] = a1;
  }

  else
  {
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = 0;
    v7[5] = 0;
  }

  v7[6] = sub_268F9AEF4();
  v7[7] = v4;
  v7[11] = MEMORY[0x277D839B0];
  *(v7 + 64) = a2;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8F4();
}

uint64_t sub_268F59F4C()
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8E4();
}

uint64_t sub_268F5A028()
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8F4();
}

uint64_t sub_268F5A0EC(uint64_t a1)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v4 = v1;
  *v1 = sub_268F9AEF4();
  v4[1] = v2;

  if (a1)
  {
    v4[5] = type metadata accessor for SettingsMultiSetting();
    v4[2] = a1;
  }

  else
  {
    v4[2] = 0;
    v4[3] = 0;
    v4[4] = 0;
    v4[5] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8E4();
}

uint64_t sub_268F5A288(uint64_t a1)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v4 = v1;
  *v1 = sub_268F9AEF4();
  v4[1] = v2;

  if (a1)
  {
    v4[5] = type metadata accessor for SettingsMultiSetting();
    v4[2] = a1;
  }

  else
  {
    v4[2] = 0;
    v4[3] = 0;
    v4[4] = 0;
    v4[5] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8F4();
}

uint64_t sub_268F5A40C(uint64_t a1, int a2, int a3, uint64_t a4, const void *a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v99 = a1;
  v82 = a2;
  v83 = a3;
  v84 = a4;
  v85 = a5;
  v86 = a6;
  v87 = a7;
  v88 = a8;
  v89 = a9;
  v109 = 0;
  v108 = 0;
  v107 = 0;
  v106 = 0;
  v105 = 0;
  v104 = 0;
  v103 = 0;
  v101 = 0;
  v102 = 0;
  v100 = 0;
  v90 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v99);
  v91 = v67 - v90;
  v109 = v10;
  v95 = 1;
  v108 = v11 & 1;
  v107 = v12 & 1;
  v106 = v13;
  v105 = v14;
  v104 = v15 & 1;
  v103 = v16;
  v101 = v17;
  v102 = v18;
  v100 = v9;
  v92 = sub_268D5E71C();
  v93 = v19;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  v97 = 7;
  v96 = sub_268F9B734();
  v98 = v20;
  v21 = sub_268F9AEF4();
  v22 = v98;
  *v98 = v21;
  v22[1] = v23;

  if (v99)
  {
    v81 = v99;
    v80 = v99;
    v24 = type metadata accessor for SettingsBinarySetting();
    v25 = v98;
    v26 = v80;
    v98[5] = v24;
    v25[2] = v26;
  }

  else
  {
    v66 = v98;
    v98[2] = 0;
    v66[3] = 0;
    v66[4] = 0;
    v66[5] = 0;
  }

  v79 = 1;
  v27 = sub_268F9AEF4();
  v28 = v82;
  v29 = v98;
  v98[6] = v27;
  v29[7] = v30;
  v78 = MEMORY[0x277D839B0];
  v29[11] = MEMORY[0x277D839B0];
  *(v29 + 64) = v28;
  v31 = sub_268F9AEF4();
  v32 = v78;
  v33 = v83;
  v34 = v98;
  v98[12] = v31;
  v34[13] = v35;
  v34[17] = v32;
  *(v34 + 112) = v33;
  v36 = sub_268F9AEF4();
  v37 = v98;
  v98[18] = v36;
  v37[19] = v38;

  if (v84)
  {
    v77 = v84;
    v76 = v84;
    v39 = sub_268F9AA44();
    v40 = v98;
    v41 = v76;
    v98[23] = v39;
    v40[20] = v41;
  }

  else
  {
    v65 = v98;
    v98[20] = 0;
    v65[21] = 0;
    v65[22] = 0;
    v65[23] = 0;
  }

  v71 = v98 + 26;
  v72 = 1;
  v42 = sub_268F9AEF4();
  v43 = v98;
  v44 = v42;
  v45 = v85;
  v47 = v46;
  v48 = v91;
  v98[24] = v44;
  v43[25] = v47;
  sub_268D2A1F0(v45, v48);
  v73 = sub_268F9A9C4();
  v74 = *(v73 - 8);
  v75 = v73 - 8;
  if ((*(v74 + 48))(v91, v72) == 1)
  {
    sub_268D28588(v91);
    v64 = v98;
    v98[26] = 0;
    v64[27] = 0;
    v64[28] = 0;
    v64[29] = 0;
  }

  else
  {
    v49 = v71;
    v98[29] = v73;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v49);
    (*(v74 + 32))(boxed_opaque_existential_1, v91, v73);
  }

  v70 = 1;
  v51 = sub_268F9AEF4();
  v52 = v86;
  v53 = v98;
  v98[30] = v51;
  v53[31] = v54;
  v53[35] = MEMORY[0x277D839B0];
  *(v53 + 256) = v52;
  v55 = sub_268F9AEF4();
  v56 = v98;
  v98[36] = v55;
  v56[37] = v57;

  if (v87)
  {
    v69 = v87;
    v68 = v87;
    v58 = sub_268F9A994();
    v59 = v98;
    v60 = v68;
    v98[41] = v58;
    v59[38] = v60;
  }

  else
  {
    v63 = v98;
    v98[38] = 0;
    v63[39] = 0;
    v63[40] = 0;
    v63[41] = 0;
  }

  v61 = v96;
  sub_268CD0F7C();
  v67[0] = v61;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v67[1] = sub_268F9B4F4();
  sub_268F9A8E4();
}

uint64_t sub_268F5A9D4@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, const void *a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v78 = a8;
  v94 = a1;
  v79 = a2;
  v80 = a3;
  v81 = a4;
  v82 = a5;
  v83 = a6;
  v84 = a7;
  v102 = 0;
  v101 = 0;
  v100 = 0;
  v99 = 0;
  v98 = 0;
  v97 = 0;
  v96 = 0;
  v95 = 0;
  v85 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v86 = v63 - v85;
  v102 = MEMORY[0x28223BE20](v94);
  v90 = 1;
  v101 = v9 & 1;
  v100 = v10 & 1;
  v99 = v11;
  v98 = v12;
  v97 = v13 & 1;
  v96 = v14;
  v95 = v8;
  v87 = sub_268D5E71C();
  v88 = v15;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  v92 = 7;
  v91 = sub_268F9B734();
  v93 = v16;
  v17 = sub_268F9AEF4();
  v18 = v93;
  *v93 = v17;
  v18[1] = v19;

  if (v94)
  {
    v77 = v94;
    v76 = v94;
    v20 = type metadata accessor for SettingsBinarySetting();
    v21 = v93;
    v22 = v76;
    v93[5] = v20;
    v21[2] = v22;
  }

  else
  {
    v62 = v93;
    v93[2] = 0;
    v62[3] = 0;
    v62[4] = 0;
    v62[5] = 0;
  }

  v75 = 1;
  v23 = sub_268F9AEF4();
  v24 = v79;
  v25 = v93;
  v93[6] = v23;
  v25[7] = v26;
  v74 = MEMORY[0x277D839B0];
  v25[11] = MEMORY[0x277D839B0];
  *(v25 + 64) = v24;
  v27 = sub_268F9AEF4();
  v28 = v74;
  v29 = v80;
  v30 = v93;
  v93[12] = v27;
  v30[13] = v31;
  v30[17] = v28;
  *(v30 + 112) = v29;
  v32 = sub_268F9AEF4();
  v33 = v93;
  v93[18] = v32;
  v33[19] = v34;

  if (v81)
  {
    v73 = v81;
    v72 = v81;
    v35 = sub_268F9AA44();
    v36 = v93;
    v37 = v72;
    v93[23] = v35;
    v36[20] = v37;
  }

  else
  {
    v61 = v93;
    v93[20] = 0;
    v61[21] = 0;
    v61[22] = 0;
    v61[23] = 0;
  }

  v67 = v93 + 26;
  v68 = 1;
  v38 = sub_268F9AEF4();
  v39 = v93;
  v40 = v38;
  v41 = v82;
  v43 = v42;
  v44 = v86;
  v93[24] = v40;
  v39[25] = v43;
  sub_268D2A1F0(v41, v44);
  v69 = sub_268F9A9C4();
  v70 = *(v69 - 8);
  v71 = v69 - 8;
  if ((*(v70 + 48))(v86, v68) == 1)
  {
    sub_268D28588(v86);
    v60 = v93;
    v93[26] = 0;
    v60[27] = 0;
    v60[28] = 0;
    v60[29] = 0;
  }

  else
  {
    v45 = v67;
    v93[29] = v69;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v45);
    (*(v70 + 32))(boxed_opaque_existential_1, v86, v69);
  }

  v66 = 1;
  v47 = sub_268F9AEF4();
  v48 = v83;
  v49 = v93;
  v93[30] = v47;
  v49[31] = v50;
  v49[35] = MEMORY[0x277D839B0];
  *(v49 + 256) = v48;
  v51 = sub_268F9AEF4();
  v52 = v93;
  v93[36] = v51;
  v52[37] = v53;

  if (v84)
  {
    v65 = v84;
    v64 = v84;
    v54 = sub_268F9A994();
    v55 = v93;
    v56 = v64;
    v93[41] = v54;
    v55[38] = v56;
  }

  else
  {
    v59 = v93;
    v93[38] = 0;
    v59[39] = 0;
    v59[40] = 0;
    v59[41] = 0;
  }

  v57 = v91;
  sub_268CD0F7C();
  v63[1] = v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v63[2] = sub_268F9B4F4();
  sub_268F9A8F4();
}

uint64_t sub_268F5AF5C(uint64_t a1, int a2, int a3, uint64_t a4, const void *a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v98 = a1;
  v81 = a2;
  v82 = a3;
  v83 = a4;
  v84 = a5;
  v85 = a6;
  v86 = a7;
  v87 = a8;
  v89 = a9;
  v108 = 0;
  v107 = 0;
  v106 = 0;
  v105 = 0;
  v104 = 0;
  v103 = 0;
  v102 = 0;
  v100 = 0;
  v101 = 0;
  v99 = 0;
  v88 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v98);
  v90 = v66 - v88;
  v108 = v10;
  v94 = 1;
  v107 = v11 & 1;
  v106 = v12 & 1;
  v105 = v13;
  v104 = v14;
  v103 = v15 & 1;
  v102 = v16;
  v100 = v17;
  v101 = a9;
  v99 = v9;
  v91 = sub_268F9AEF4();
  v92 = v18;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  v96 = 7;
  v95 = sub_268F9B734();
  v97 = v19;
  v20 = sub_268F9AEF4();
  v21 = v97;
  *v97 = v20;
  v21[1] = v22;

  if (v98)
  {
    v80 = v98;
    v79 = v98;
    v23 = type metadata accessor for SettingsBinarySetting();
    v24 = v97;
    v25 = v79;
    v97[5] = v23;
    v24[2] = v25;
  }

  else
  {
    v65 = v97;
    v97[2] = 0;
    v65[3] = 0;
    v65[4] = 0;
    v65[5] = 0;
  }

  v78 = 1;
  v26 = sub_268F9AEF4();
  v27 = v81;
  v28 = v97;
  v97[6] = v26;
  v28[7] = v29;
  v77 = MEMORY[0x277D839B0];
  v28[11] = MEMORY[0x277D839B0];
  *(v28 + 64) = v27;
  v30 = sub_268F9AEF4();
  v31 = v77;
  v32 = v82;
  v33 = v97;
  v97[12] = v30;
  v33[13] = v34;
  v33[17] = v31;
  *(v33 + 112) = v32;
  v35 = sub_268F9AEF4();
  v36 = v97;
  v97[18] = v35;
  v36[19] = v37;

  if (v83)
  {
    v76 = v83;
    v75 = v83;
    v38 = sub_268F9AA44();
    v39 = v97;
    v40 = v75;
    v97[23] = v38;
    v39[20] = v40;
  }

  else
  {
    v64 = v97;
    v97[20] = 0;
    v64[21] = 0;
    v64[22] = 0;
    v64[23] = 0;
  }

  v70 = v97 + 26;
  v71 = 1;
  v41 = sub_268F9AEF4();
  v42 = v97;
  v43 = v41;
  v44 = v84;
  v46 = v45;
  v47 = v90;
  v97[24] = v43;
  v42[25] = v46;
  sub_268D2A1F0(v44, v47);
  v72 = sub_268F9A9C4();
  v73 = *(v72 - 8);
  v74 = v72 - 8;
  if ((*(v73 + 48))(v90, v71) == 1)
  {
    sub_268D28588(v90);
    v63 = v97;
    v97[26] = 0;
    v63[27] = 0;
    v63[28] = 0;
    v63[29] = 0;
  }

  else
  {
    v48 = v70;
    v97[29] = v72;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v48);
    (*(v73 + 32))(boxed_opaque_existential_1, v90, v72);
  }

  v69 = 1;
  v50 = sub_268F9AEF4();
  v51 = v85;
  v52 = v97;
  v97[30] = v50;
  v52[31] = v53;
  v52[35] = MEMORY[0x277D839B0];
  *(v52 + 256) = v51;
  v54 = sub_268F9AEF4();
  v55 = v97;
  v97[36] = v54;
  v55[37] = v56;

  if (v86)
  {
    v68 = v86;
    v67 = v86;
    v57 = sub_268F9A994();
    v58 = v97;
    v59 = v67;
    v97[41] = v57;
    v58[38] = v59;
  }

  else
  {
    v62 = v97;
    v97[38] = 0;
    v62[39] = 0;
    v62[40] = 0;
    v62[41] = 0;
  }

  v60 = v95;
  sub_268CD0F7C();
  v66[0] = v60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v66[1] = sub_268F9B4F4();
  sub_268F9A8E4();
}

uint64_t sub_268F5B534@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, const void *a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v78 = a8;
  v94 = a1;
  v79 = a2;
  v80 = a3;
  v81 = a4;
  v82 = a5;
  v83 = a6;
  v84 = a7;
  v102 = 0;
  v101 = 0;
  v100 = 0;
  v99 = 0;
  v98 = 0;
  v97 = 0;
  v96 = 0;
  v95 = 0;
  v85 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v86 = v63 - v85;
  v102 = MEMORY[0x28223BE20](v94);
  v90 = 1;
  v101 = v9 & 1;
  v100 = v10 & 1;
  v99 = v11;
  v98 = v12;
  v97 = v13 & 1;
  v96 = v14;
  v95 = v8;
  v87 = sub_268F9AEF4();
  v88 = v15;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  v92 = 7;
  v91 = sub_268F9B734();
  v93 = v16;
  v17 = sub_268F9AEF4();
  v18 = v93;
  *v93 = v17;
  v18[1] = v19;

  if (v94)
  {
    v77 = v94;
    v76 = v94;
    v20 = type metadata accessor for SettingsBinarySetting();
    v21 = v93;
    v22 = v76;
    v93[5] = v20;
    v21[2] = v22;
  }

  else
  {
    v62 = v93;
    v93[2] = 0;
    v62[3] = 0;
    v62[4] = 0;
    v62[5] = 0;
  }

  v75 = 1;
  v23 = sub_268F9AEF4();
  v24 = v79;
  v25 = v93;
  v93[6] = v23;
  v25[7] = v26;
  v74 = MEMORY[0x277D839B0];
  v25[11] = MEMORY[0x277D839B0];
  *(v25 + 64) = v24;
  v27 = sub_268F9AEF4();
  v28 = v74;
  v29 = v80;
  v30 = v93;
  v93[12] = v27;
  v30[13] = v31;
  v30[17] = v28;
  *(v30 + 112) = v29;
  v32 = sub_268F9AEF4();
  v33 = v93;
  v93[18] = v32;
  v33[19] = v34;

  if (v81)
  {
    v73 = v81;
    v72 = v81;
    v35 = sub_268F9AA44();
    v36 = v93;
    v37 = v72;
    v93[23] = v35;
    v36[20] = v37;
  }

  else
  {
    v61 = v93;
    v93[20] = 0;
    v61[21] = 0;
    v61[22] = 0;
    v61[23] = 0;
  }

  v67 = v93 + 26;
  v68 = 1;
  v38 = sub_268F9AEF4();
  v39 = v93;
  v40 = v38;
  v41 = v82;
  v43 = v42;
  v44 = v86;
  v93[24] = v40;
  v39[25] = v43;
  sub_268D2A1F0(v41, v44);
  v69 = sub_268F9A9C4();
  v70 = *(v69 - 8);
  v71 = v69 - 8;
  if ((*(v70 + 48))(v86, v68) == 1)
  {
    sub_268D28588(v86);
    v60 = v93;
    v93[26] = 0;
    v60[27] = 0;
    v60[28] = 0;
    v60[29] = 0;
  }

  else
  {
    v45 = v67;
    v93[29] = v69;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v45);
    (*(v70 + 32))(boxed_opaque_existential_1, v86, v69);
  }

  v66 = 1;
  v47 = sub_268F9AEF4();
  v48 = v83;
  v49 = v93;
  v93[30] = v47;
  v49[31] = v50;
  v49[35] = MEMORY[0x277D839B0];
  *(v49 + 256) = v48;
  v51 = sub_268F9AEF4();
  v52 = v93;
  v93[36] = v51;
  v52[37] = v53;

  if (v84)
  {
    v65 = v84;
    v64 = v84;
    v54 = sub_268F9A994();
    v55 = v93;
    v56 = v64;
    v93[41] = v54;
    v55[38] = v56;
  }

  else
  {
    v59 = v93;
    v93[38] = 0;
    v59[39] = 0;
    v59[40] = 0;
    v59[41] = 0;
  }

  v57 = v91;
  sub_268CD0F7C();
  v63[1] = v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v63[2] = sub_268F9B4F4();
  sub_268F9A8F4();
}

uint64_t sub_268F5BACC(uint64_t a1, int a2, int a3, uint64_t a4, const void *a5, int a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10)
{
  v104 = a1;
  v87 = a2;
  v88 = a3;
  v89 = a4;
  v90 = a5;
  v91 = a6;
  v92 = a7;
  v93 = a8;
  v95 = a9;
  v96 = a10;
  v115 = 0;
  v114 = 0;
  v113 = 0;
  v112 = 0;
  v111 = 0;
  v110 = 0;
  v109 = 0;
  v108 = 0;
  v106 = 0;
  v107 = 0;
  v105 = 0;
  v94 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v104);
  v97 = v72 - v94;
  v115 = v11;
  v101 = 1;
  v114 = v12 & 1;
  v113 = v13 & 1;
  v112 = v14;
  v111 = v15;
  v110 = v16 & 1;
  v109 = v17;
  v108 = v18 & 1;
  v106 = a9;
  v107 = a10;
  v105 = v10;
  v98 = sub_268F9AEF4();
  v99 = v19;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  v102 = sub_268F9B734();
  v103 = v20;
  v21 = sub_268F9AEF4();
  v22 = v103;
  *v103 = v21;
  v22[1] = v23;

  if (v104)
  {
    v86 = v104;
    v85 = v104;
    v24 = type metadata accessor for SettingsMultiSetting();
    v25 = v103;
    v26 = v85;
    v103[5] = v24;
    v25[2] = v26;
  }

  else
  {
    v71 = v103;
    v103[2] = 0;
    v71[3] = 0;
    v71[4] = 0;
    v71[5] = 0;
  }

  v84 = 1;
  v27 = sub_268F9AEF4();
  v28 = v87;
  v29 = v103;
  v103[6] = v27;
  v29[7] = v30;
  v83 = MEMORY[0x277D839B0];
  v29[11] = MEMORY[0x277D839B0];
  *(v29 + 64) = v28;
  v31 = sub_268F9AEF4();
  v32 = v83;
  v33 = v88;
  v34 = v103;
  v103[12] = v31;
  v34[13] = v35;
  v34[17] = v32;
  *(v34 + 112) = v33;
  v36 = sub_268F9AEF4();
  v37 = v103;
  v103[18] = v36;
  v37[19] = v38;

  if (v89)
  {
    v82 = v89;
    v81 = v89;
    v39 = sub_268F9AA44();
    v40 = v103;
    v41 = v81;
    v103[23] = v39;
    v40[20] = v41;
  }

  else
  {
    v70 = v103;
    v103[20] = 0;
    v70[21] = 0;
    v70[22] = 0;
    v70[23] = 0;
  }

  v76 = v103 + 26;
  v77 = 1;
  v42 = sub_268F9AEF4();
  v43 = v103;
  v44 = v42;
  v45 = v90;
  v47 = v46;
  v48 = v97;
  v103[24] = v44;
  v43[25] = v47;
  sub_268D2A1F0(v45, v48);
  v78 = sub_268F9A9C4();
  v79 = *(v78 - 8);
  v80 = v78 - 8;
  if ((*(v79 + 48))(v97, v77) == 1)
  {
    sub_268D28588(v97);
    v69 = v103;
    v103[26] = 0;
    v69[27] = 0;
    v69[28] = 0;
    v69[29] = 0;
  }

  else
  {
    v49 = v76;
    v103[29] = v78;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v49);
    (*(v79 + 32))(boxed_opaque_existential_1, v97, v78);
  }

  v75 = 1;
  v51 = sub_268F9AEF4();
  v52 = v91;
  v53 = v103;
  v103[30] = v51;
  v53[31] = v54;
  v53[35] = MEMORY[0x277D839B0];
  *(v53 + 256) = v52;
  v55 = sub_268F9AEF4();
  v56 = v103;
  v103[36] = v55;
  v56[37] = v57;

  if (v92)
  {
    v74 = v92;
    v73 = v92;
    v58 = sub_268F9A994();
    v59 = v103;
    v60 = v73;
    v103[41] = v58;
    v59[38] = v60;
  }

  else
  {
    v68 = v103;
    v103[38] = 0;
    v68[39] = 0;
    v68[40] = 0;
    v68[41] = 0;
  }

  v61 = sub_268F9AEF4();
  v62 = v103;
  v63 = v93;
  v64 = v61;
  v65 = v102;
  v103[42] = v64;
  v62[43] = v66;
  v62[47] = MEMORY[0x277D839B0];
  *(v62 + 352) = v63;
  sub_268CD0F7C();
  v72[1] = v65;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v72[2] = sub_268F9B4F4();
  sub_268F9A8E4();
}

uint64_t sub_268F5C108@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, const void *a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>)
{
  v85 = a9;
  v101 = a1;
  v86 = a2;
  v87 = a3;
  v88 = a4;
  v89 = a5;
  v90 = a6;
  v91 = a7;
  v92 = a8;
  v110 = 0;
  v109 = 0;
  v108 = 0;
  v107 = 0;
  v106 = 0;
  v105 = 0;
  v104 = 0;
  v103 = 0;
  v102 = 0;
  v93 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v94 = v70 - v93;
  v110 = MEMORY[0x28223BE20](v101);
  v98 = 1;
  v109 = v10 & 1;
  v108 = v11 & 1;
  v107 = v12;
  v106 = v13;
  v105 = v14 & 1;
  v104 = v15;
  v103 = v16 & 1;
  v102 = v9;
  v95 = sub_268F9AEF4();
  v96 = v17;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  v99 = sub_268F9B734();
  v100 = v18;
  v19 = sub_268F9AEF4();
  v20 = v100;
  *v100 = v19;
  v20[1] = v21;

  if (v101)
  {
    v84 = v101;
    v83 = v101;
    v22 = type metadata accessor for SettingsMultiSetting();
    v23 = v100;
    v24 = v83;
    v100[5] = v22;
    v23[2] = v24;
  }

  else
  {
    v69 = v100;
    v100[2] = 0;
    v69[3] = 0;
    v69[4] = 0;
    v69[5] = 0;
  }

  v82 = 1;
  v25 = sub_268F9AEF4();
  v26 = v86;
  v27 = v100;
  v100[6] = v25;
  v27[7] = v28;
  v81 = MEMORY[0x277D839B0];
  v27[11] = MEMORY[0x277D839B0];
  *(v27 + 64) = v26;
  v29 = sub_268F9AEF4();
  v30 = v81;
  v31 = v87;
  v32 = v100;
  v100[12] = v29;
  v32[13] = v33;
  v32[17] = v30;
  *(v32 + 112) = v31;
  v34 = sub_268F9AEF4();
  v35 = v100;
  v100[18] = v34;
  v35[19] = v36;

  if (v88)
  {
    v80 = v88;
    v79 = v88;
    v37 = sub_268F9AA44();
    v38 = v100;
    v39 = v79;
    v100[23] = v37;
    v38[20] = v39;
  }

  else
  {
    v68 = v100;
    v100[20] = 0;
    v68[21] = 0;
    v68[22] = 0;
    v68[23] = 0;
  }

  v74 = v100 + 26;
  v75 = 1;
  v40 = sub_268F9AEF4();
  v41 = v100;
  v42 = v40;
  v43 = v89;
  v45 = v44;
  v46 = v94;
  v100[24] = v42;
  v41[25] = v45;
  sub_268D2A1F0(v43, v46);
  v76 = sub_268F9A9C4();
  v77 = *(v76 - 8);
  v78 = v76 - 8;
  if ((*(v77 + 48))(v94, v75) == 1)
  {
    sub_268D28588(v94);
    v67 = v100;
    v100[26] = 0;
    v67[27] = 0;
    v67[28] = 0;
    v67[29] = 0;
  }

  else
  {
    v47 = v74;
    v100[29] = v76;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v47);
    (*(v77 + 32))(boxed_opaque_existential_1, v94, v76);
  }

  v73 = 1;
  v49 = sub_268F9AEF4();
  v50 = v90;
  v51 = v100;
  v100[30] = v49;
  v51[31] = v52;
  v51[35] = MEMORY[0x277D839B0];
  *(v51 + 256) = v50;
  v53 = sub_268F9AEF4();
  v54 = v100;
  v100[36] = v53;
  v54[37] = v55;

  if (v91)
  {
    v72 = v91;
    v71 = v91;
    v56 = sub_268F9A994();
    v57 = v100;
    v58 = v71;
    v100[41] = v56;
    v57[38] = v58;
  }

  else
  {
    v66 = v100;
    v100[38] = 0;
    v66[39] = 0;
    v66[40] = 0;
    v66[41] = 0;
  }

  v59 = sub_268F9AEF4();
  v60 = v100;
  v61 = v92;
  v62 = v59;
  v63 = v99;
  v100[42] = v62;
  v60[43] = v64;
  v60[47] = MEMORY[0x277D839B0];
  *(v60 + 352) = v61;
  sub_268CD0F7C();
  v70[0] = v63;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v70[1] = sub_268F9B4F4();
  sub_268F9A8F4();
}

uint64_t sub_268F5C700(uint64_t a1, int a2, int a3, uint64_t a4, const void *a5, int a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10)
{
  v104 = a1;
  v87 = a2;
  v88 = a3;
  v89 = a4;
  v90 = a5;
  v91 = a6;
  v92 = a7;
  v93 = a8;
  v95 = a9;
  v96 = a10;
  v115 = 0;
  v114 = 0;
  v113 = 0;
  v112 = 0;
  v111 = 0;
  v110 = 0;
  v109 = 0;
  v108 = 0;
  v106 = 0;
  v107 = 0;
  v105 = 0;
  v94 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v104);
  v97 = v72 - v94;
  v115 = v11;
  v101 = 1;
  v114 = v12 & 1;
  v113 = v13 & 1;
  v112 = v14;
  v111 = v15;
  v110 = v16 & 1;
  v109 = v17;
  v108 = v18 & 1;
  v106 = a9;
  v107 = a10;
  v105 = v10;
  v98 = sub_268F9AEF4();
  v99 = v19;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  v102 = sub_268F9B734();
  v103 = v20;
  v21 = sub_268F9AEF4();
  v22 = v103;
  *v103 = v21;
  v22[1] = v23;

  if (v104)
  {
    v86 = v104;
    v85 = v104;
    v24 = type metadata accessor for SettingsMultiSetting();
    v25 = v103;
    v26 = v85;
    v103[5] = v24;
    v25[2] = v26;
  }

  else
  {
    v71 = v103;
    v103[2] = 0;
    v71[3] = 0;
    v71[4] = 0;
    v71[5] = 0;
  }

  v84 = 1;
  v27 = sub_268F9AEF4();
  v28 = v87;
  v29 = v103;
  v103[6] = v27;
  v29[7] = v30;
  v83 = MEMORY[0x277D839B0];
  v29[11] = MEMORY[0x277D839B0];
  *(v29 + 64) = v28;
  v31 = sub_268F9AEF4();
  v32 = v83;
  v33 = v88;
  v34 = v103;
  v103[12] = v31;
  v34[13] = v35;
  v34[17] = v32;
  *(v34 + 112) = v33;
  v36 = sub_268F9AEF4();
  v37 = v103;
  v103[18] = v36;
  v37[19] = v38;

  if (v89)
  {
    v82 = v89;
    v81 = v89;
    v39 = sub_268F9AA44();
    v40 = v103;
    v41 = v81;
    v103[23] = v39;
    v40[20] = v41;
  }

  else
  {
    v70 = v103;
    v103[20] = 0;
    v70[21] = 0;
    v70[22] = 0;
    v70[23] = 0;
  }

  v76 = v103 + 26;
  v77 = 1;
  v42 = sub_268F9AEF4();
  v43 = v103;
  v44 = v42;
  v45 = v90;
  v47 = v46;
  v48 = v97;
  v103[24] = v44;
  v43[25] = v47;
  sub_268D2A1F0(v45, v48);
  v78 = sub_268F9A9C4();
  v79 = *(v78 - 8);
  v80 = v78 - 8;
  if ((*(v79 + 48))(v97, v77) == 1)
  {
    sub_268D28588(v97);
    v69 = v103;
    v103[26] = 0;
    v69[27] = 0;
    v69[28] = 0;
    v69[29] = 0;
  }

  else
  {
    v49 = v76;
    v103[29] = v78;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v49);
    (*(v79 + 32))(boxed_opaque_existential_1, v97, v78);
  }

  v75 = 1;
  v51 = sub_268F9AEF4();
  v52 = v91;
  v53 = v103;
  v103[30] = v51;
  v53[31] = v54;
  v53[35] = MEMORY[0x277D839B0];
  *(v53 + 256) = v52;
  v55 = sub_268F9AEF4();
  v56 = v103;
  v103[36] = v55;
  v56[37] = v57;

  if (v92)
  {
    v74 = v92;
    v73 = v92;
    v58 = sub_268F9A994();
    v59 = v103;
    v60 = v73;
    v103[41] = v58;
    v59[38] = v60;
  }

  else
  {
    v68 = v103;
    v103[38] = 0;
    v68[39] = 0;
    v68[40] = 0;
    v68[41] = 0;
  }

  v61 = sub_268F9AEF4();
  v62 = v103;
  v63 = v93;
  v64 = v61;
  v65 = v102;
  v103[42] = v64;
  v62[43] = v66;
  v62[47] = MEMORY[0x277D839B0];
  *(v62 + 352) = v63;
  sub_268CD0F7C();
  v72[1] = v65;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v72[2] = sub_268F9B4F4();
  sub_268F9A8E4();
}

uint64_t sub_268F5CD3C@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, const void *a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>)
{
  v85 = a9;
  v101 = a1;
  v86 = a2;
  v87 = a3;
  v88 = a4;
  v89 = a5;
  v90 = a6;
  v91 = a7;
  v92 = a8;
  v110 = 0;
  v109 = 0;
  v108 = 0;
  v107 = 0;
  v106 = 0;
  v105 = 0;
  v104 = 0;
  v103 = 0;
  v102 = 0;
  v93 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v94 = v70 - v93;
  v110 = MEMORY[0x28223BE20](v101);
  v98 = 1;
  v109 = v10 & 1;
  v108 = v11 & 1;
  v107 = v12;
  v106 = v13;
  v105 = v14 & 1;
  v104 = v15;
  v103 = v16 & 1;
  v102 = v9;
  v95 = sub_268F9AEF4();
  v96 = v17;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  v99 = sub_268F9B734();
  v100 = v18;
  v19 = sub_268F9AEF4();
  v20 = v100;
  *v100 = v19;
  v20[1] = v21;

  if (v101)
  {
    v84 = v101;
    v83 = v101;
    v22 = type metadata accessor for SettingsMultiSetting();
    v23 = v100;
    v24 = v83;
    v100[5] = v22;
    v23[2] = v24;
  }

  else
  {
    v69 = v100;
    v100[2] = 0;
    v69[3] = 0;
    v69[4] = 0;
    v69[5] = 0;
  }

  v82 = 1;
  v25 = sub_268F9AEF4();
  v26 = v86;
  v27 = v100;
  v100[6] = v25;
  v27[7] = v28;
  v81 = MEMORY[0x277D839B0];
  v27[11] = MEMORY[0x277D839B0];
  *(v27 + 64) = v26;
  v29 = sub_268F9AEF4();
  v30 = v81;
  v31 = v87;
  v32 = v100;
  v100[12] = v29;
  v32[13] = v33;
  v32[17] = v30;
  *(v32 + 112) = v31;
  v34 = sub_268F9AEF4();
  v35 = v100;
  v100[18] = v34;
  v35[19] = v36;

  if (v88)
  {
    v80 = v88;
    v79 = v88;
    v37 = sub_268F9AA44();
    v38 = v100;
    v39 = v79;
    v100[23] = v37;
    v38[20] = v39;
  }

  else
  {
    v68 = v100;
    v100[20] = 0;
    v68[21] = 0;
    v68[22] = 0;
    v68[23] = 0;
  }

  v74 = v100 + 26;
  v75 = 1;
  v40 = sub_268F9AEF4();
  v41 = v100;
  v42 = v40;
  v43 = v89;
  v45 = v44;
  v46 = v94;
  v100[24] = v42;
  v41[25] = v45;
  sub_268D2A1F0(v43, v46);
  v76 = sub_268F9A9C4();
  v77 = *(v76 - 8);
  v78 = v76 - 8;
  if ((*(v77 + 48))(v94, v75) == 1)
  {
    sub_268D28588(v94);
    v67 = v100;
    v100[26] = 0;
    v67[27] = 0;
    v67[28] = 0;
    v67[29] = 0;
  }

  else
  {
    v47 = v74;
    v100[29] = v76;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v47);
    (*(v77 + 32))(boxed_opaque_existential_1, v94, v76);
  }

  v73 = 1;
  v49 = sub_268F9AEF4();
  v50 = v90;
  v51 = v100;
  v100[30] = v49;
  v51[31] = v52;
  v51[35] = MEMORY[0x277D839B0];
  *(v51 + 256) = v50;
  v53 = sub_268F9AEF4();
  v54 = v100;
  v100[36] = v53;
  v54[37] = v55;

  if (v91)
  {
    v72 = v91;
    v71 = v91;
    v56 = sub_268F9A994();
    v57 = v100;
    v58 = v71;
    v100[41] = v56;
    v57[38] = v58;
  }

  else
  {
    v66 = v100;
    v100[38] = 0;
    v66[39] = 0;
    v66[40] = 0;
    v66[41] = 0;
  }

  v59 = sub_268F9AEF4();
  v60 = v100;
  v61 = v92;
  v62 = v59;
  v63 = v99;
  v100[42] = v62;
  v60[43] = v64;
  v60[47] = MEMORY[0x277D839B0];
  *(v60 + 352) = v61;
  sub_268CD0F7C();
  v70[0] = v63;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v70[1] = sub_268F9B4F4();
  sub_268F9A8F4();
}

uint64_t sub_268F5D334(uint64_t a1, char a2, uint64_t a3, char a4)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v13 = v4;
  *v4 = sub_268F9AEF4();
  v13[1] = v5;

  if (a1)
  {
    v13[5] = type metadata accessor for SettingsBinarySetting();
    v13[2] = a1;
  }

  else
  {
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = 0;
    v13[5] = 0;
  }

  v13[6] = sub_268F9AEF4();
  v13[7] = v6;
  v13[11] = MEMORY[0x277D839B0];
  *(v13 + 64) = a2;
  v13[12] = sub_268F9AEF4();
  v13[13] = v7;

  if (a3)
  {
    v13[17] = sub_268F9AA44();
    v13[14] = a3;
  }

  else
  {
    v13[14] = 0;
    v13[15] = 0;
    v13[16] = 0;
    v13[17] = 0;
  }

  v13[18] = sub_268F9AEF4();
  v13[19] = v8;
  v13[23] = MEMORY[0x277D839B0];
  *(v13 + 160) = a4;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8E4();
}

uint64_t sub_268F5D610(uint64_t a1, char a2, uint64_t a3, char a4)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v13 = v4;
  *v4 = sub_268F9AEF4();
  v13[1] = v5;

  if (a1)
  {
    v13[5] = type metadata accessor for SettingsBinarySetting();
    v13[2] = a1;
  }

  else
  {
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = 0;
    v13[5] = 0;
  }

  v13[6] = sub_268F9AEF4();
  v13[7] = v6;
  v13[11] = MEMORY[0x277D839B0];
  *(v13 + 64) = a2;
  v13[12] = sub_268F9AEF4();
  v13[13] = v7;

  if (a3)
  {
    v13[17] = sub_268F9AA44();
    v13[14] = a3;
  }

  else
  {
    v13[14] = 0;
    v13[15] = 0;
    v13[16] = 0;
    v13[17] = 0;
  }

  v13[18] = sub_268F9AEF4();
  v13[19] = v8;
  v13[23] = MEMORY[0x277D839B0];
  *(v13 + 160) = a4;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8F4();
}

uint64_t sub_268F5D8D4(uint64_t a1, int a2, uint64_t a3, const void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v80 = a1;
  v66 = a2;
  v67 = a3;
  v68 = a4;
  v69 = a5;
  v70 = a6;
  v71 = a7;
  v88 = 0;
  v87 = 0;
  v86 = 0;
  v85 = 0;
  v84 = 0;
  v82 = 0;
  v83 = 0;
  v81 = 0;
  v72 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v73 = v53 - v72;
  v88 = MEMORY[0x28223BE20](v80);
  v77 = 1;
  v87 = v8 & 1;
  v86 = v9;
  v85 = v10;
  v84 = v11;
  v82 = v12;
  v83 = v13;
  v81 = v7;
  v74 = sub_268F9AEF4();
  v75 = v14;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  v78 = sub_268F9B734();
  v79 = v15;
  v16 = sub_268F9AEF4();
  v17 = v79;
  *v79 = v16;
  v17[1] = v18;

  if (v80)
  {
    v65 = v80;
    v64 = v80;
    v19 = type metadata accessor for SettingsBinarySetting();
    v20 = v79;
    v21 = v64;
    v79[5] = v19;
    v20[2] = v21;
  }

  else
  {
    v52 = v79;
    v79[2] = 0;
    v52[3] = 0;
    v52[4] = 0;
    v52[5] = 0;
  }

  v63 = 1;
  v22 = sub_268F9AEF4();
  v23 = v66;
  v24 = v79;
  v79[6] = v22;
  v24[7] = v25;
  v24[11] = MEMORY[0x277D839B0];
  *(v24 + 64) = v23;
  v26 = sub_268F9AEF4();
  v27 = v79;
  v79[12] = v26;
  v27[13] = v28;

  if (v67)
  {
    v62 = v67;
    v61 = v67;
    v29 = sub_268F9AA44();
    v30 = v79;
    v31 = v61;
    v79[17] = v29;
    v30[14] = v31;
  }

  else
  {
    v51 = v79;
    v79[14] = 0;
    v51[15] = 0;
    v51[16] = 0;
    v51[17] = 0;
  }

  v56 = v79 + 20;
  v57 = 1;
  v32 = sub_268F9AEF4();
  v33 = v79;
  v34 = v32;
  v35 = v68;
  v37 = v36;
  v38 = v73;
  v79[18] = v34;
  v33[19] = v37;
  sub_268D2A1F0(v35, v38);
  v58 = sub_268F9A9C4();
  v59 = *(v58 - 8);
  v60 = v58 - 8;
  if ((*(v59 + 48))(v73, v57) == 1)
  {
    sub_268D28588(v73);
    v50 = v79;
    v79[20] = 0;
    v50[21] = 0;
    v50[22] = 0;
    v50[23] = 0;
  }

  else
  {
    v39 = v56;
    v79[23] = v58;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v39);
    (*(v59 + 32))(boxed_opaque_existential_1, v73, v58);
  }

  v41 = sub_268F9AEF4();
  v42 = v79;
  v79[24] = v41;
  v42[25] = v43;

  if (v69)
  {
    v55 = v69;
    v54 = v69;
    v44 = sub_268F9A994();
    v45 = v79;
    v46 = v54;
    v79[29] = v44;
    v45[26] = v46;
  }

  else
  {
    v49 = v79;
    v79[26] = 0;
    v49[27] = 0;
    v49[28] = 0;
    v49[29] = 0;
  }

  v47 = v78;
  sub_268CD0F7C();
  v53[0] = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v53[1] = sub_268F9B4F4();
  sub_268F9A8E4();
}

uint64_t sub_268F5DDC4@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, const void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v64 = a6;
  v77 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  v68 = a5;
  v83 = 0;
  v82 = 0;
  v81 = 0;
  v80 = 0;
  v79 = 0;
  v78 = 0;
  v69 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v77);
  v70 = v51 - v69;
  v83 = v7;
  v74 = 1;
  v82 = v8 & 1;
  v81 = v9;
  v80 = v10;
  v79 = v11;
  v78 = v6;
  v71 = sub_268F9AEF4();
  v72 = v12;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  v75 = sub_268F9B734();
  v76 = v13;
  v14 = sub_268F9AEF4();
  v15 = v76;
  *v76 = v14;
  v15[1] = v16;

  if (v77)
  {
    v63 = v77;
    v62 = v77;
    v17 = type metadata accessor for SettingsBinarySetting();
    v18 = v76;
    v19 = v62;
    v76[5] = v17;
    v18[2] = v19;
  }

  else
  {
    v50 = v76;
    v76[2] = 0;
    v50[3] = 0;
    v50[4] = 0;
    v50[5] = 0;
  }

  v61 = 1;
  v20 = sub_268F9AEF4();
  v21 = v65;
  v22 = v76;
  v76[6] = v20;
  v22[7] = v23;
  v22[11] = MEMORY[0x277D839B0];
  *(v22 + 64) = v21;
  v24 = sub_268F9AEF4();
  v25 = v76;
  v76[12] = v24;
  v25[13] = v26;

  if (v66)
  {
    v60 = v66;
    v59 = v66;
    v27 = sub_268F9AA44();
    v28 = v76;
    v29 = v59;
    v76[17] = v27;
    v28[14] = v29;
  }

  else
  {
    v49 = v76;
    v76[14] = 0;
    v49[15] = 0;
    v49[16] = 0;
    v49[17] = 0;
  }

  v54 = v76 + 20;
  v55 = 1;
  v30 = sub_268F9AEF4();
  v31 = v76;
  v32 = v30;
  v33 = v67;
  v35 = v34;
  v36 = v70;
  v76[18] = v32;
  v31[19] = v35;
  sub_268D2A1F0(v33, v36);
  v56 = sub_268F9A9C4();
  v57 = *(v56 - 8);
  v58 = v56 - 8;
  if ((*(v57 + 48))(v70, v55) == 1)
  {
    sub_268D28588(v70);
    v48 = v76;
    v76[20] = 0;
    v48[21] = 0;
    v48[22] = 0;
    v48[23] = 0;
  }

  else
  {
    v37 = v54;
    v76[23] = v56;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v37);
    (*(v57 + 32))(boxed_opaque_existential_1, v70, v56);
  }

  v39 = sub_268F9AEF4();
  v40 = v76;
  v76[24] = v39;
  v40[25] = v41;

  if (v68)
  {
    v53 = v68;
    v52 = v68;
    v42 = sub_268F9A994();
    v43 = v76;
    v44 = v52;
    v76[29] = v42;
    v43[26] = v44;
  }

  else
  {
    v47 = v76;
    v76[26] = 0;
    v47[27] = 0;
    v47[28] = 0;
    v47[29] = 0;
  }

  v45 = v75;
  sub_268CD0F7C();
  v51[1] = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v51[2] = sub_268F9B4F4();
  sub_268F9A8F4();
}

uint64_t sub_268F5E278(uint64_t a1)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v4 = v1;
  *v1 = sub_268F9AEF4();
  v4[1] = v2;

  if (a1)
  {
    v4[5] = sub_268F9AA44();
    v4[2] = a1;
  }

  else
  {
    v4[2] = 0;
    v4[3] = 0;
    v4[4] = 0;
    v4[5] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8E4();
}

uint64_t sub_268F5E414(uint64_t a1)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v4 = v1;
  *v1 = sub_268F9AEF4();
  v4[1] = v2;

  if (a1)
  {
    v4[5] = sub_268F9AA44();
    v4[2] = a1;
  }

  else
  {
    v4[2] = 0;
    v4[3] = 0;
    v4[4] = 0;
    v4[5] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8F4();
}

uint64_t sub_268F5E598(uint64_t a1, uint64_t a2, char a3, char a4)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v13 = v4;
  *v4 = sub_268F9AEF4();
  v13[1] = v5;

  v13[5] = MEMORY[0x277D837D0];
  v13[2] = a1;
  v13[3] = a2;
  v13[6] = sub_268F9AEF4();
  v13[7] = v6;
  v12 = MEMORY[0x277D839B0];
  v13[11] = MEMORY[0x277D839B0];
  *(v13 + 64) = a3;
  v13[12] = sub_268F9AEF4();
  v13[13] = v7;
  v13[17] = v12;
  *(v13 + 112) = a4;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8E4();
}

uint64_t sub_268F5E7AC(uint64_t a1, uint64_t a2, char a3, char a4)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v13 = v4;
  *v4 = sub_268F9AEF4();
  v13[1] = v5;

  v13[5] = MEMORY[0x277D837D0];
  v13[2] = a1;
  v13[3] = a2;
  v13[6] = sub_268F9AEF4();
  v13[7] = v6;
  v12 = MEMORY[0x277D839B0];
  v13[11] = MEMORY[0x277D839B0];
  *(v13 + 64) = a3;
  v13[12] = sub_268F9AEF4();
  v13[13] = v7;
  v13[17] = v12;
  *(v13 + 112) = a4;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8F4();
}

uint64_t sub_268F5E9A8(uint64_t a1, char a2)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v7 = v2;
  *v2 = sub_268F9AEF4();
  v7[1] = v3;

  if (a1)
  {
    v7[5] = sub_268F9AA44();
    v7[2] = a1;
  }

  else
  {
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = 0;
    v7[5] = 0;
  }

  v7[6] = sub_268F9AEF4();
  v7[7] = v4;
  if (a2 == 2)
  {
    v7[8] = 0;
    v7[9] = 0;
    v7[10] = 0;
    v7[11] = 0;
  }

  else
  {
    v7[11] = MEMORY[0x277D839B0];
    *(v7 + 64) = a2 & 1;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8F4();
}

uint64_t sub_268F5EBB8(uint64_t a1, uint64_t a2)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v7 = v2;
  *v2 = sub_268F9AEF4();
  v7[1] = v3;

  v7[5] = MEMORY[0x277D837D0];
  v7[2] = a1;
  v7[3] = a2;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8E4();
}

uint64_t sub_268F5ED20(uint64_t a1, uint64_t a2)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v7 = v2;
  *v2 = sub_268F9AEF4();
  v7[1] = v3;

  v7[5] = MEMORY[0x277D837D0];
  v7[2] = a1;
  v7[3] = a2;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8F4();
}

uint64_t sub_268F5EE70(uint64_t a1, uint64_t a2)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v7 = v2;
  *v2 = sub_268F9AEF4();
  v7[1] = v3;

  if (a1)
  {
    v7[5] = type metadata accessor for SettingsBinarySetting();
    v7[2] = a1;
  }

  else
  {
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = 0;
    v7[5] = 0;
  }

  v7[6] = sub_268F9AEF4();
  v7[7] = v4;

  if (a2)
  {
    v7[11] = sub_268F9AA44();
    v7[8] = a2;
  }

  else
  {
    v7[8] = 0;
    v7[9] = 0;
    v7[10] = 0;
    v7[11] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8E4();
}

uint64_t sub_268F5F0A0(uint64_t a1, uint64_t a2)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v7 = v2;
  *v2 = sub_268F9AEF4();
  v7[1] = v3;

  if (a1)
  {
    v7[5] = type metadata accessor for SettingsBinarySetting();
    v7[2] = a1;
  }

  else
  {
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = 0;
    v7[5] = 0;
  }

  v7[6] = sub_268F9AEF4();
  v7[7] = v4;

  if (a2)
  {
    v7[11] = sub_268F9AA44();
    v7[8] = a2;
  }

  else
  {
    v7[8] = 0;
    v7[9] = 0;
    v7[10] = 0;
    v7[11] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8F4();
}

uint64_t sub_268F5F2B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v10 = v3;
  *v3 = sub_268F9AEF4();
  v10[1] = v4;

  if (a1)
  {
    v10[5] = type metadata accessor for SettingsMultiSetting();
    v10[2] = a1;
  }

  else
  {
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = 0;
    v10[5] = 0;
  }

  v10[6] = sub_268F9AEF4();
  v10[7] = v5;

  if (a2)
  {
    v10[11] = sub_268F9AA44();
    v10[8] = a2;
  }

  else
  {
    v10[8] = 0;
    v10[9] = 0;
    v10[10] = 0;
    v10[11] = 0;
  }

  v10[12] = sub_268F9AEF4();
  v10[13] = v6;

  if (a3)
  {
    v10[17] = sub_268F9A994();
    v10[14] = a3;
  }

  else
  {
    v10[14] = 0;
    v10[15] = 0;
    v10[16] = 0;
    v10[17] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8E4();
}

uint64_t sub_268F5F57C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v10 = v3;
  *v3 = sub_268F9AEF4();
  v10[1] = v4;

  if (a1)
  {
    v10[5] = type metadata accessor for SettingsMultiSetting();
    v10[2] = a1;
  }

  else
  {
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = 0;
    v10[5] = 0;
  }

  v10[6] = sub_268F9AEF4();
  v10[7] = v5;

  if (a2)
  {
    v10[11] = sub_268F9AA44();
    v10[8] = a2;
  }

  else
  {
    v10[8] = 0;
    v10[9] = 0;
    v10[10] = 0;
    v10[11] = 0;
  }

  v10[12] = sub_268F9AEF4();
  v10[13] = v6;

  if (a3)
  {
    v10[17] = sub_268F9A994();
    v10[14] = a3;
  }

  else
  {
    v10[14] = 0;
    v10[15] = 0;
    v10[16] = 0;
    v10[17] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8F4();
}

uint64_t sub_268F5F828(uint64_t a1, uint64_t a2)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v7 = v2;
  *v2 = sub_268F9AEF4();
  v7[1] = v3;

  if (a1)
  {
    v7[5] = type metadata accessor for SettingsBinarySetting();
    v7[2] = a1;
  }

  else
  {
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = 0;
    v7[5] = 0;
  }

  v7[6] = sub_268F9AEF4();
  v7[7] = v4;

  if (a2)
  {
    v7[11] = sub_268F9AA44();
    v7[8] = a2;
  }

  else
  {
    v7[8] = 0;
    v7[9] = 0;
    v7[10] = 0;
    v7[11] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8E4();
}

uint64_t sub_268F5FA58(uint64_t a1, uint64_t a2)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v7 = v2;
  *v2 = sub_268F9AEF4();
  v7[1] = v3;

  if (a1)
  {
    v7[5] = type metadata accessor for SettingsBinarySetting();
    v7[2] = a1;
  }

  else
  {
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = 0;
    v7[5] = 0;
  }

  v7[6] = sub_268F9AEF4();
  v7[7] = v4;

  if (a2)
  {
    v7[11] = sub_268F9AA44();
    v7[8] = a2;
  }

  else
  {
    v7[8] = 0;
    v7[9] = 0;
    v7[10] = 0;
    v7[11] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8F4();
}

uint64_t sub_268F5FC70()
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8E4();
}

uint64_t sub_268F5FD4C()
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8F4();
}

uint64_t sub_268F5FE10()
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8E4();
}

uint64_t sub_268F5FEEC()
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8F4();
}

uint64_t sub_268F5FFB0(uint64_t a1, uint64_t a2)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v7 = v2;
  *v2 = sub_268F9AEF4();
  v7[1] = v3;

  if (a1)
  {
    v7[5] = type metadata accessor for SettingsBinarySetting();
    v7[2] = a1;
  }

  else
  {
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = 0;
    v7[5] = 0;
  }

  v7[6] = sub_268F9AEF4();
  v7[7] = v4;

  if (a2)
  {
    v7[11] = sub_268F9AA44();
    v7[8] = a2;
  }

  else
  {
    v7[8] = 0;
    v7[9] = 0;
    v7[10] = 0;
    v7[11] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8E4();
}

uint64_t sub_268F601E0(uint64_t a1, uint64_t a2)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v7 = v2;
  *v2 = sub_268F9AEF4();
  v7[1] = v3;

  if (a1)
  {
    v7[5] = type metadata accessor for SettingsBinarySetting();
    v7[2] = a1;
  }

  else
  {
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = 0;
    v7[5] = 0;
  }

  v7[6] = sub_268F9AEF4();
  v7[7] = v4;

  if (a2)
  {
    v7[11] = sub_268F9AA44();
    v7[8] = a2;
  }

  else
  {
    v7[8] = 0;
    v7[9] = 0;
    v7[10] = 0;
    v7[11] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8F4();
}

uint64_t sub_268F603F8(uint64_t a1, uint64_t a2)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v7 = v2;
  *v2 = sub_268F9AEF4();
  v7[1] = v3;

  if (a1)
  {
    v7[5] = type metadata accessor for SettingsMultiSetting();
    v7[2] = a1;
  }

  else
  {
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = 0;
    v7[5] = 0;
  }

  v7[6] = sub_268F9AEF4();
  v7[7] = v4;

  if (a2)
  {
    v7[11] = sub_268F9AA44();
    v7[8] = a2;
  }

  else
  {
    v7[8] = 0;
    v7[9] = 0;
    v7[10] = 0;
    v7[11] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8E4();
}

uint64_t sub_268F60628(uint64_t a1, uint64_t a2)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v7 = v2;
  *v2 = sub_268F9AEF4();
  v7[1] = v3;

  if (a1)
  {
    v7[5] = type metadata accessor for SettingsMultiSetting();
    v7[2] = a1;
  }

  else
  {
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = 0;
    v7[5] = 0;
  }

  v7[6] = sub_268F9AEF4();
  v7[7] = v4;

  if (a2)
  {
    v7[11] = sub_268F9AA44();
    v7[8] = a2;
  }

  else
  {
    v7[8] = 0;
    v7[9] = 0;
    v7[10] = 0;
    v7[11] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8F4();
}

uint64_t type metadata accessor for SetBinarySettingIntentCATs()
{
  v1 = qword_2802DE618;
  if (!qword_2802DE618)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_268F608B4()
{
  inited = swift_initClassMetadata2();
  if (!inited)
  {
    return 0;
  }

  return inited;
}

uint64_t sub_268F60924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  return sub_268F60980(a1, a2, a3);
}

uint64_t sub_268F60980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a1;
  v17 = a2;
  v14 = a3;
  v24 = 0;
  v23 = 0;
  v22 = 0;
  v21 = 0;
  v18 = sub_268F9AB24();
  v15 = *(v18 - 8);
  v16 = v18 - 8;
  v10 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v18);
  v12 = &v9 - v10;
  v11 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE3F0, &qword_268F9D7A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v19);
  v13 = &v9 - v11;
  v23 = v4;
  v22 = v5;
  v21 = v6;
  v24 = v3;
  sub_268CDC358(v4, &v9 - v11);
  (*(v15 + 16))(v12, v17, v18);
  MEMORY[0x277D82BE0](v14);
  v20 = sub_268F9A8D4();

  v24 = v20;
  v7 = MEMORY[0x277D82BD8](v14);
  (*(v15 + 8))(v17, v18, v7);
  sub_268CDC480(v19);

  return v20;
}

void __swiftcall BinarySettingModel.init(settingId:graphicIcon:label:secondLabel:oldValue:updatedValue:url:directInvocationId:deviceCategoryInt:)(SiriSettingsIntents::BinarySettingModel *__return_ptr retstr, Swift::String settingId, Swift::String graphicIcon, Swift::String label, Swift::String secondLabel, Swift::Bool oldValue, Swift::Bool updatedValue, Swift::String_optional url, Swift::String_optional directInvocationId, Swift::Int deviceCategoryInt)
{
  countAndFlagsBits = settingId._countAndFlagsBits;
  object = settingId._object;
  v11 = graphicIcon._countAndFlagsBits;
  v17 = graphicIcon._object;
  v12 = label._countAndFlagsBits;
  v16 = label._object;
  v13 = secondLabel._countAndFlagsBits;
  v15 = secondLabel._object;
  memset(__b, 0, sizeof(__b));

  __b[0] = countAndFlagsBits;
  __b[1] = object;

  __b[2] = v11;
  __b[3] = v17;

  __b[4] = v12;
  __b[5] = v16;

  __b[6] = v13;
  __b[7] = v15;
  LOBYTE(__b[8]) = oldValue;
  BYTE1(__b[8]) = updatedValue;

  *&__b[9] = url;

  *&__b[11] = directInvocationId;
  __b[13] = deviceCategoryInt;
  sub_268D28EFC(__b, retstr);

  sub_268D29010(__b);
}

void __swiftcall NumericSettingModel.init(settingId:graphicIcon:leftIconName:rightIconName:label:oldValue:updatedValue:minValue:maxValue:step:url:deviceCategoryInt:)(SiriSettingsIntents::NumericSettingModel *__return_ptr retstr, Swift::String settingId, Swift::String graphicIcon, Swift::String leftIconName, Swift::String rightIconName, Swift::String label, Swift::Double oldValue, Swift::Double updatedValue, Swift::Double minValue, Swift::Double maxValue, Swift::Double step, Swift::String_optional url, Swift::Int deviceCategoryInt)
{
  countAndFlagsBits = settingId._countAndFlagsBits;
  object = settingId._object;
  v14 = graphicIcon._countAndFlagsBits;
  v23 = graphicIcon._object;
  v15 = leftIconName._countAndFlagsBits;
  v22 = leftIconName._object;
  v16 = rightIconName._countAndFlagsBits;
  v21 = rightIconName._object;
  *&v17._countAndFlagsBits = oldValue;
  *&v17._object = updatedValue;
  *&v18._countAndFlagsBits = minValue;
  *&v18._object = maxValue;
  memset(__b, 0, sizeof(__b));

  __b[0]._countAndFlagsBits = countAndFlagsBits;
  __b[0]._object = object;

  __b[1]._countAndFlagsBits = v14;
  __b[1]._object = v23;

  __b[2]._countAndFlagsBits = v15;
  __b[2]._object = v22;

  __b[3]._countAndFlagsBits = v16;
  __b[3]._object = v21;

  __b[4] = label;
  __b[5] = v17;
  __b[6] = v18;
  *&__b[7]._countAndFlagsBits = step;

  *&__b[7]._object = url;
  __b[8]._object = deviceCategoryInt;
  sub_268D34CD8(__b, retstr);

  sub_268D34F58(__b);
}

uint64_t sub_268F61044()
{
  result = sub_268F9AEF4();
  qword_2802DE628 = result;
  qword_2802DE630 = v1;
  return result;
}

uint64_t *sub_268F61088()
{
  if (qword_2802DB8D8 != -1)
  {
    swift_once();
  }

  return &qword_2802DE628;
}

uint64_t static SnippetModels.bundleName.getter()
{
  v0 = sub_268F61088();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

BOOL sub_268F61124(uint64_t a1, uint64_t a2)
{
  v7[2] = a1;
  v7[3] = a2;

  v7[0] = sub_268F9AEF4();
  v7[1] = v2;
  v6 = MEMORY[0x26D62DB50](v7[0], v2, a1, a2);
  sub_268CD9D30(v7);

  return (v6 & 1) == 0;
}

unint64_t sub_268F61254()
{
  v2 = qword_2802DE638;
  if (!qword_2802DE638)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE638);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268F61304(uint64_t a1, uint64_t a2)
{
  v12[2] = a1;
  v12[3] = a2;

  v12[0] = sub_268F9AEF4();
  v12[1] = v2;
  v11[2] = a1;
  v11[3] = a2;
  v10 = MEMORY[0x26D62DB50](v12[0], v2, a1, a2);
  sub_268CD9D30(v12);
  if (v10)
  {

    v13 = 0;
    v7 = 0;
LABEL_6:

    return v7;
  }

  v11[0] = sub_268F9AEF4();
  v11[1] = v3;
  v6 = MEMORY[0x26D62DB50](v11[0], v3, a1, a2);
  sub_268CD9D30(v11);
  if (v6)
  {

    v13 = 1;
    v7 = 1;
    goto LABEL_6;
  }

  return 2;
}

BOOL sub_268F614D8@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268F61124(a1, a2);
  *a3 = result;
  return result;
}

unint64_t sub_268F6153C()
{
  v2 = qword_2802DE640;
  if (!qword_2802DE640)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE640);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F61644()
{
  v2 = qword_2802DE648;
  if (!qword_2802DE648)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE648);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268F6178C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268F61304(a1, a2);
  *a3 = result;
  return result;
}

unint64_t sub_268F617E8()
{
  v2 = qword_2802DE650;
  if (!qword_2802DE650)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE650);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F618CC()
{
  v2 = qword_2802DE658;
  if (!qword_2802DE658)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE658);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F61990()
{
  v2 = qword_2802DE660;
  if (!qword_2802DE660)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE660);
    return WitnessTable;
  }

  return v2;
}

uint64_t SnippetModels.encode(to:)(void *a1)
{
  v36 = a1;
  v50 = 0;
  v49 = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE668, &qword_268FAC800);
  v23 = *(v22 - 8);
  v24 = v22 - 8;
  v25 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v22);
  v26 = &v6 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE670, &qword_268FAC808);
  v28 = *(v27 - 8);
  v29 = v27 - 8;
  v30 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v27);
  v31 = &v6 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE678, &qword_268FAC810);
  v33 = *(v32 - 8);
  v34 = v32 - 8;
  v35 = (*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v36);
  v37 = &v6 - v35;
  v50 = v2;
  v40 = v51;
  v41 = 145;
  memcpy(v51, v1, 0x91uLL);
  v49 = v1;
  v38 = v36[3];
  v39 = v36[4];
  __swift_project_boxed_opaque_existential_1(v36, v38);
  sub_268F617E8();
  sub_268F9B844();
  v42 = __dst;
  memcpy(__dst, v40, v41);
  if (sub_268F61F78(v42) == 1)
  {
    v11 = nullsub_1(__dst);
    sub_268D34CD8(v11, v48);
    v10 = &v47;
    v47 = 1;
    sub_268F61990();
    sub_268F9B674();
    v12 = v46;
    memcpy(v46, v11, 0x90uLL);
    sub_268F61F84();
    v4 = v21;
    sub_268F9B6E4();
    v13 = v4;
    v14 = v4;
    if (!v4)
    {
      (*(v23 + 8))(v26, v22);
      sub_268D34F58(v11);
      v15 = v13;
      goto LABEL_6;
    }

    v6 = v14;
    (*(v23 + 8))(v26, v22);
    sub_268D34F58(v11);
    return (*(v33 + 8))(v37, v32);
  }

  else
  {
    v17 = nullsub_1(__dst);
    sub_268D28EFC(v17, &v45);
    v16 = &v44;
    v44 = 0;
    sub_268F6153C();
    sub_268F9B674();
    v18 = v43;
    memcpy(v43, v17, 0x70uLL);
    sub_268F62000();
    v3 = v21;
    sub_268F9B6E4();
    v19 = v3;
    v20 = v3;
    if (!v3)
    {
      (*(v28 + 8))(v31, v27);
      sub_268D29010(v17);
      v15 = v19;
LABEL_6:
      v9 = v15;
      return (*(v33 + 8))(v37, v32);
    }

    v7 = v20;
    (*(v28 + 8))(v31, v27);
    sub_268D29010(v17);
    result = (*(v33 + 8))(v37, v32);
    v8 = v7;
  }

  return result;
}

unint64_t sub_268F61F84()
{
  v2 = qword_2802DE680;
  if (!qword_2802DE680)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE680);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F62000()
{
  v2 = qword_2802DE688;
  if (!qword_2802DE688)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE688);
    return WitnessTable;
  }

  return v2;
}

uint64_t *SnippetModels.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v71 = a1;
  v100 = 0;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE690, &qword_268FAC818);
  v62 = *(v61 - 8);
  v63 = v61 - 8;
  v64 = (*(v62 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v61);
  v65 = v15 - v64;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE698, &qword_268FAC820);
  v67 = *(v66 - 8);
  v68 = v66 - 8;
  v69 = (*(v67 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v66);
  v70 = v15 - v69;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE6A0, &qword_268FAC828);
  v73 = *(v72 - 8);
  v74 = v72 - 8;
  v75 = (*(v73 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v71);
  v76 = v15 - v75;
  v100 = v2;
  v78 = v2[3];
  v79 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v78);
  sub_268F617E8();
  v3 = v77;
  sub_268F9B834();
  v80 = v3;
  v81 = v3;
  if (v3)
  {
    v28 = v81;
  }

  else
  {
    v4 = sub_268F9B664();
    v56 = &v95;
    v95 = v4;
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE6A8, &qword_268FAC830);
    sub_268F62964();
    v96 = sub_268F9B414();
    v97 = v5;
    v98 = v6;
    v99 = v7;
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE6B8, &qword_268FAC838);
    v58 = sub_268F629EC();
    sub_268F9B224();
    v59 = v94;
    if (v94 == 2)
    {
      goto LABEL_14;
    }

    v54 = v59;
    v48 = v59;
    v52 = v96;
    v49 = v97;
    v50 = v98;
    v51 = v99;
    swift_unknownObjectRetain();
    v90 = v52;
    v91 = v49;
    v92 = v50;
    v93 = v51;
    v53 = sub_268F9B244();
    swift_unknownObjectRelease();
    if ((v53 & 1) == 0)
    {
LABEL_14:
      v22 = 0;
      v26 = sub_268F9B4E4();
      v20 = 1;
      v27 = swift_allocError();
      v25 = v13;
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE6C8, &qword_268FAC840);
      v21 = v25 + *(v14 + 48);
      *v25 = &type metadata for SnippetModels;
      v23 = sub_268F9B5E4();
      v24 = sub_268F9AEF4();
      sub_268F9B4D4();
      (*(*(v26 - 8) + 104))(v25, *MEMORY[0x277D84160]);
      swift_willThrow();
      sub_268F62A74(&v96);
      (*(v73 + 8))(v76, v72);
      v28 = v27;
    }

    else if (v48)
    {
      v36 = &v89;
      v89 = v48 & 1;
      sub_268F61990();
      v10 = v80;
      sub_268F9B5D4();
      v37 = v10;
      v38 = v10;
      if (v10)
      {
        v17 = v38;
        sub_268F62A74(&v96);
        (*(v73 + 8))(v76, v72);
        v28 = v17;
      }

      else
      {
        sub_268F62AA0();
        v11 = v37;
        sub_268F9B654();
        v34 = v11;
        v35 = v11;
        if (!v11)
        {
          v31 = v86;
          v32 = 144;
          memcpy(v86, v88, sizeof(v86));
          v33 = v87;
          memcpy(v87, v86, 0x90uLL);
          sub_268D34E04(v87);
          memcpy(__dst, v33, 0x91uLL);
          (*(v62 + 8))(v65, v61);
          v42 = v34;
          goto LABEL_13;
        }

        v16 = v35;
        (*(v62 + 8))(v65, v61);
        sub_268F62A74(&v96);
        (*(v73 + 8))(v76, v72);
        v28 = v16;
      }
    }

    else
    {
      v45 = &v85;
      v85 = v48 & 1;
      sub_268F6153C();
      v8 = v80;
      sub_268F9B5D4();
      v46 = v8;
      v47 = v8;
      if (v8)
      {
        v19 = v47;
        sub_268F62A74(&v96);
        (*(v73 + 8))(v76, v72);
        v28 = v19;
      }

      else
      {
        sub_268F62E30();
        v9 = v46;
        sub_268F9B654();
        v43 = v9;
        v44 = v9;
        if (!v9)
        {
          v39 = v82;
          v40 = 112;
          memcpy(v82, v84, sizeof(v82));
          v41 = v83;
          memcpy(v83, v82, 0x70uLL);
          sub_268D34FC0(v83);
          memcpy(__dst, v41, 0x91uLL);
          (*(v67 + 8))(v70, v66);
          v42 = v43;
LABEL_13:
          v30 = v42;
          sub_268F62A74(&v96);
          (*(v73 + 8))(v76, v72);
          v29 = __dst;
          sub_268F62B1C(__dst, v60);
          __swift_destroy_boxed_opaque_existential_0(v71);
          return sub_268F62D80(v29);
        }

        v18 = v44;
        (*(v67 + 8))(v70, v66);
        sub_268F62A74(&v96);
        (*(v73 + 8))(v76, v72);
        v28 = v18;
      }
    }
  }

  v15[1] = v28;
  return __swift_destroy_boxed_opaque_existential_0(v71);
}

unint64_t sub_268F62964()
{
  v2 = qword_2802DE6B0;
  if (!qword_2802DE6B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DE6A8, &qword_268FAC830);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE6B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F629EC()
{
  v2 = qword_2802DE6C0;
  if (!qword_2802DE6C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DE6B8, &qword_268FAC838);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE6C0);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_268F62A74(uint64_t *a1)
{
  v1 = *a1;
  swift_unknownObjectRelease();
  return a1;
}

unint64_t sub_268F62AA0()
{
  v2 = qword_2802DE6D0;
  if (!qword_2802DE6D0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE6D0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268F62B1C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  v10 = a1[7];
  v11 = a1[8];
  v12 = a1[9];
  v13 = a1[10];
  v14 = a1[11];
  v15 = a1[12];
  v16 = a1[13];
  v17 = a1[14];
  v18 = a1[15];
  v19 = a1[16];
  v20 = a1[17];
  v21 = *(a1 + 144);
  sub_268F62CB8();
  result = a2;
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
  *(a2 + 48) = v9;
  *(a2 + 56) = v10;
  *(a2 + 64) = v11;
  *(a2 + 72) = v12;
  *(a2 + 80) = v13;
  *(a2 + 88) = v14;
  *(a2 + 96) = v15;
  *(a2 + 104) = v16;
  *(a2 + 112) = v17;
  *(a2 + 120) = v18;
  *(a2 + 128) = v19;
  *(a2 + 136) = v20;
  *(a2 + 144) = v21 & 1;
  return result;
}

uint64_t sub_268F62CB8()
{
}

uint64_t *sub_268F62D80(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v9 = a1[7];
  v11 = a1[8];
  v12 = a1[9];
  v13 = a1[10];
  v14 = a1[11];
  v15 = a1[12];
  v16 = a1[13];
  v17 = a1[14];
  v18 = a1[15];
  v19 = a1[16];
  v20 = a1[17];
  v21 = *(a1 + 144);
  sub_268D34E90();
  return a1;
}

unint64_t sub_268F62E30()
{
  v2 = qword_2802DE6D8;
  if (!qword_2802DE6D8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE6D8);
    return WitnessTable;
  }

  return v2;
}

uint64_t BinarySettingModel.settingId.getter()
{
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t BinarySettingModel.graphicIcon.getter()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  return v2;
}

uint64_t BinarySettingModel.label.getter()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);

  return v2;
}

uint64_t BinarySettingModel.secondLabel.getter()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);

  return v2;
}

uint64_t BinarySettingModel.url.getter()
{
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);

  return v2;
}

uint64_t BinarySettingModel.directInvocationId.getter()
{
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);

  return v2;
}

uint64_t sub_268F6314C(uint64_t a1, uint64_t a2)
{
  v33[2] = a1;
  v33[3] = a2;

  v33[0] = sub_268F9AEF4();
  v33[1] = v2;
  v32[2] = a1;
  v32[3] = a2;
  v24 = MEMORY[0x26D62DB50](v33[0], v2, a1, a2);
  sub_268CD9D30(v33);
  if (v24)
  {

    v34 = 0;
    v21 = 0;
LABEL_20:

    return v21;
  }

  v32[0] = sub_268F9AEF4();
  v32[1] = v3;
  v31[2] = a1;
  v31[3] = a2;
  v20 = MEMORY[0x26D62DB50](v32[0], v3, a1, a2);
  sub_268CD9D30(v32);
  if (v20)
  {

    v34 = 1;
    v21 = 1;
    goto LABEL_20;
  }

  v31[0] = sub_268F9AEF4();
  v31[1] = v4;
  v30[2] = a1;
  v30[3] = a2;
  v19 = MEMORY[0x26D62DB50](v31[0], v4, a1, a2);
  sub_268CD9D30(v31);
  if (v19)
  {

    v34 = 2;
    v21 = 2;
    goto LABEL_20;
  }

  v30[0] = sub_268F9AEF4();
  v30[1] = v5;
  v29[2] = a1;
  v29[3] = a2;
  v18 = MEMORY[0x26D62DB50](v30[0], v5, a1, a2);
  sub_268CD9D30(v30);
  if (v18)
  {

    v34 = 3;
    v21 = 3;
    goto LABEL_20;
  }

  v29[0] = sub_268F9AEF4();
  v29[1] = v6;
  v28[2] = a1;
  v28[3] = a2;
  v17 = MEMORY[0x26D62DB50](v29[0], v6, a1, a2);
  sub_268CD9D30(v29);
  if (v17)
  {

    v34 = 4;
    v21 = 4;
    goto LABEL_20;
  }

  v28[0] = sub_268F9AEF4();
  v28[1] = v7;
  v27[2] = a1;
  v27[3] = a2;
  v16 = MEMORY[0x26D62DB50](v28[0], v7, a1, a2);
  sub_268CD9D30(v28);
  if (v16)
  {

    v34 = 5;
    v21 = 5;
    goto LABEL_20;
  }

  v27[0] = sub_268F9AEF4();
  v27[1] = v8;
  v26[2] = a1;
  v26[3] = a2;
  v15 = MEMORY[0x26D62DB50](v27[0], v8, a1, a2);
  sub_268CD9D30(v27);
  if (v15)
  {

    v34 = 6;
    v21 = 6;
    goto LABEL_20;
  }

  v26[0] = sub_268F9AEF4();
  v26[1] = v9;
  v25[2] = a1;
  v25[3] = a2;
  v14 = MEMORY[0x26D62DB50](v26[0], v9, a1, a2);
  sub_268CD9D30(v26);
  if (v14)
  {

    v34 = 7;
    v21 = 7;
    goto LABEL_20;
  }

  v25[0] = sub_268F9AEF4();
  v25[1] = v10;
  v13 = MEMORY[0x26D62DB50](v25[0], v10, a1, a2);
  sub_268CD9D30(v25);
  if (v13)
  {

    v34 = 8;
    v21 = 8;
    goto LABEL_20;
  }

  return 9;
}

BOOL sub_268F63738(char a1, char a2)
{
  if (a1)
  {
    switch(a1)
    {
      case 1:
        v4 = 1;
        break;
      case 2:
        v4 = 2;
        break;
      case 3:
        v4 = 3;
        break;
      case 4:
        v4 = 4;
        break;
      case 5:
        v4 = 5;
        break;
      case 6:
        v4 = 6;
        break;
      case 7:
        v4 = 7;
        break;
      default:
        v4 = 8;
        break;
    }
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    switch(a2)
    {
      case 1:
        v3 = 1;
        break;
      case 2:
        v3 = 2;
        break;
      case 3:
        v3 = 3;
        break;
      case 4:
        v3 = 4;
        break;
      case 5:
        v3 = 5;
        break;
      case 6:
        v3 = 6;
        break;
      case 7:
        v3 = 7;
        break;
      default:
        v3 = 8;
        break;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

unint64_t sub_268F63BA8()
{
  v2 = qword_2802DE6E0;
  if (!qword_2802DE6E0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE6E0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268F63ED0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268F6314C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_268F63EFC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_268F63720();
  *a1 = result;
  return result;
}

unint64_t sub_268F63F58()
{
  v2 = qword_2802DE6E8;
  if (!qword_2802DE6E8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE6E8);
    return WitnessTable;
  }

  return v2;
}

uint64_t BinarySettingModel.encode(to:)(uint64_t a1)
{
  v34 = a1;
  v70 = 0;
  v69 = 0;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE6F0, &qword_268FAC848);
  v35 = *(v57 - 8);
  v36 = v57 - 8;
  v37 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v34);
  v53 = v11 - v37;
  v70 = v2;
  v55 = *v1;
  v56 = v1[1];
  v38 = v1[2];
  v39 = v1[3];
  v40 = v1[4];
  v41 = v1[5];
  v42 = v1[6];
  v43 = v1[7];
  v44 = *(v1 + 64);
  v45 = *(v1 + 65);
  v46 = v1[9];
  v47 = v1[10];
  v48 = v1[11];
  v49 = v1[12];
  v50 = v1[13];
  v69 = v1;
  v51 = v2[3];
  v52 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v51);
  sub_268F63F58();
  sub_268F9B844();
  v3 = v54;

  v68 = 0;
  sub_268F9B6A4();
  v58 = v3;
  v59 = v3;
  if (v3)
  {
    v16 = v59;

    result = (*(v35 + 8))(v53, v57);
    v17 = v16;
  }

  else
  {

    v4 = v58;

    v67 = 1;
    sub_268F9B6A4();
    v32 = v4;
    v33 = v4;
    if (v4)
    {
      v15 = v33;

      result = (*(v35 + 8))(v53, v57);
      v17 = v15;
    }

    else
    {

      v5 = v32;

      v66 = 2;
      sub_268F9B6A4();
      v30 = v5;
      v31 = v5;
      if (v5)
      {
        v14 = v31;

        result = (*(v35 + 8))(v53, v57);
        v17 = v14;
      }

      else
      {

        v6 = v30;

        v65 = 3;
        sub_268F9B6A4();
        v28 = v6;
        v29 = v6;
        if (v6)
        {
          v13 = v29;

          result = (*(v35 + 8))(v53, v57);
          v17 = v13;
        }

        else
        {

          v7 = v28;
          v64 = 4;
          sub_268F9B6B4();
          v26 = v7;
          v27 = v7;
          if (v7)
          {
            v12 = v27;
            result = (*(v35 + 8))(v53, v57);
            v17 = v12;
          }

          else
          {
            v63 = 5;
            sub_268F9B6B4();
            v24 = 0;
            v25 = 0;

            v62 = 6;
            sub_268F9B684();
            v22 = 0;
            v23 = 0;

            v8 = v22;

            v61 = 7;
            sub_268F9B684();
            v20 = v8;
            v21 = v8;
            if (v8)
            {
              v11[1] = v21;

              return (*(v35 + 8))(v53, v57);
            }

            else
            {

              v9 = v20;
              v60 = 8;
              sub_268F9B6D4();
              v18 = v9;
              v19 = v9;
              if (v9)
              {
                v11[0] = v19;
              }

              return (*(v35 + 8))(v53, v57);
            }
          }
        }
      }
    }
  }

  return result;
}

void *BinarySettingModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v60 = a1;
  v59 = 15;
  v80 = 0;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE6F8, &qword_268FAC850);
  v62 = *(v61 - 8);
  v63 = v61 - 8;
  v64 = (*(v62 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v60);
  v65 = v20 - v64;
  v80 = v2;
  v67 = v2[3];
  v68 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v67);
  sub_268F63F58();
  v3 = v66;
  sub_268F9B834();
  v69 = v3;
  v70 = v3;
  if (v3)
  {
    v22 = v70;
    v23 = 0;
    v21 = 0;
    v20[1] = v70;
    result = __swift_destroy_boxed_opaque_existential_0(v60);
    if (v21)
    {
      result = sub_268CD9D30(v81);
    }

    if ((v21 & 2) != 0)
    {
      result = sub_268CD9D30(v82);
    }

    if ((v21 & 4) != 0)
    {
      result = sub_268CD9D30(v83);
    }

    if ((v21 & 8) != 0)
    {
      result = sub_268CD9D30(v84);
    }

    if ((v21 & 0x40) != 0)
    {
      result = sub_268CD9D30(v87);
    }

    if ((v21 & 0x80) != 0)
    {
      return sub_268CD9D30(v88);
    }
  }

  else
  {
    v79 = 0;
    v4 = sub_268F9B614();
    v54 = 0;
    v55 = v4;
    v56 = v5;
    v57 = 0;
    v81[0] = v4;
    v81[1] = v5;
    v78 = 1;
    v6 = sub_268F9B614();
    v50 = 0;
    v51 = v6;
    v52 = v7;
    v53 = 0;
    v82[0] = v6;
    v82[1] = v7;
    v77 = 2;
    v8 = sub_268F9B614();
    v46 = 0;
    v47 = v8;
    v48 = v9;
    v49 = 0;
    v83[0] = v8;
    v83[1] = v9;
    v76 = 3;
    v10 = sub_268F9B614();
    v42 = 0;
    v43 = v10;
    v44 = v11;
    v45 = 0;
    v84[0] = v10;
    v84[1] = v11;
    v75 = 4;
    v12 = sub_268F9B624();
    v39 = 0;
    v40 = v12;
    v41 = 0;
    v85 = v12 & 1;
    v74 = 5;
    v13 = sub_268F9B624();
    v36 = 0;
    v37 = v13;
    v38 = 0;
    v86 = v13 & 1;
    v73 = 6;
    v14 = sub_268F9B5F4();
    v32 = 0;
    v33 = v14;
    v34 = v15;
    v35 = 0;
    v87[0] = v14;
    v87[1] = v15;
    v72 = 7;
    v16 = sub_268F9B5F4();
    v28 = 0;
    v29 = v16;
    v30 = v17;
    v31 = 0;
    v88[0] = v16;
    v88[1] = v17;
    v71 = 8;
    v18 = sub_268F9B644();
    v25 = 0;
    v26 = v18;
    v27 = 0;
    v24 = v81;
    v88[2] = v18;
    (*(v62 + 8))(v65, v61);
    sub_268D28EFC(v24, v58);
    __swift_destroy_boxed_opaque_existential_0(v60);
    return sub_268D29010(v24);
  }

  return result;
}

uint64_t NumericSettingModel.settingId.getter()
{
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t NumericSettingModel.graphicIcon.getter()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  return v2;
}

uint64_t NumericSettingModel.leftIconName.getter()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);

  return v2;
}

uint64_t NumericSettingModel.rightIconName.getter()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);

  return v2;
}

uint64_t NumericSettingModel.label.getter()
{
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);

  return v2;
}

uint64_t NumericSettingModel.url.getter()
{
  v2 = *(v0 + 120);
  v3 = *(v0 + 128);

  return v2;
}

uint64_t sub_268F6541C(uint64_t a1, uint64_t a2)
{
  v42[2] = a1;
  v42[3] = a2;

  v42[0] = sub_268F9AEF4();
  v42[1] = v2;
  v41[2] = a1;
  v41[3] = a2;
  v30 = MEMORY[0x26D62DB50](v42[0], v2, a1, a2);
  sub_268CD9D30(v42);
  if (v30)
  {

    v43 = 0;
    v27 = 0;
LABEL_26:

    return v27;
  }

  v41[0] = sub_268F9AEF4();
  v41[1] = v3;
  v40[2] = a1;
  v40[3] = a2;
  v26 = MEMORY[0x26D62DB50](v41[0], v3, a1, a2);
  sub_268CD9D30(v41);
  if (v26)
  {

    v43 = 1;
    v27 = 1;
    goto LABEL_26;
  }

  v40[0] = sub_268F9AEF4();
  v40[1] = v4;
  v39[2] = a1;
  v39[3] = a2;
  v25 = MEMORY[0x26D62DB50](v40[0], v4, a1, a2);
  sub_268CD9D30(v40);
  if (v25)
  {

    v43 = 2;
    v27 = 2;
    goto LABEL_26;
  }

  v39[0] = sub_268F9AEF4();
  v39[1] = v5;
  v38[2] = a1;
  v38[3] = a2;
  v24 = MEMORY[0x26D62DB50](v39[0], v5, a1, a2);
  sub_268CD9D30(v39);
  if (v24)
  {

    v43 = 3;
    v27 = 3;
    goto LABEL_26;
  }

  v38[0] = sub_268F9AEF4();
  v38[1] = v6;
  v37[2] = a1;
  v37[3] = a2;
  v23 = MEMORY[0x26D62DB50](v38[0], v6, a1, a2);
  sub_268CD9D30(v38);
  if (v23)
  {

    v43 = 4;
    v27 = 4;
    goto LABEL_26;
  }

  v37[0] = sub_268F9AEF4();
  v37[1] = v7;
  v36[2] = a1;
  v36[3] = a2;
  v22 = MEMORY[0x26D62DB50](v37[0], v7, a1, a2);
  sub_268CD9D30(v37);
  if (v22)
  {

    v43 = 5;
    v27 = 5;
    goto LABEL_26;
  }

  v36[0] = sub_268F9AEF4();
  v36[1] = v8;
  v35[2] = a1;
  v35[3] = a2;
  v21 = MEMORY[0x26D62DB50](v36[0], v8, a1, a2);
  sub_268CD9D30(v36);
  if (v21)
  {

    v43 = 6;
    v27 = 6;
    goto LABEL_26;
  }

  v35[0] = sub_268F9AEF4();
  v35[1] = v9;
  v34[2] = a1;
  v34[3] = a2;
  v20 = MEMORY[0x26D62DB50](v35[0], v9, a1, a2);
  sub_268CD9D30(v35);
  if (v20)
  {

    v43 = 7;
    v27 = 7;
    goto LABEL_26;
  }

  v34[0] = sub_268F9AEF4();
  v34[1] = v10;
  v33[2] = a1;
  v33[3] = a2;
  v19 = MEMORY[0x26D62DB50](v34[0], v10, a1, a2);
  sub_268CD9D30(v34);
  if (v19)
  {

    v43 = 8;
    v27 = 8;
    goto LABEL_26;
  }

  v33[0] = sub_268F9AEF4();
  v33[1] = v11;
  v32[2] = a1;
  v32[3] = a2;
  v18 = MEMORY[0x26D62DB50](v33[0], v11, a1, a2);
  sub_268CD9D30(v33);
  if (v18)
  {

    v43 = 9;
    v27 = 9;
    goto LABEL_26;
  }

  v32[0] = sub_268F9AEF4();
  v32[1] = v12;
  v31[2] = a1;
  v31[3] = a2;
  v17 = MEMORY[0x26D62DB50](v32[0], v12, a1, a2);
  sub_268CD9D30(v32);
  if (v17)
  {

    v43 = 10;
    v27 = 10;
    goto LABEL_26;
  }

  v31[0] = sub_268F9AEF4();
  v31[1] = v13;
  v16 = MEMORY[0x26D62DB50](v31[0], v13, a1, a2);
  sub_268CD9D30(v31);
  if (v16)
  {

    v43 = 11;
    v27 = 11;
    goto LABEL_26;
  }

  return 12;
}

BOOL sub_268F65BD0(char a1, char a2)
{
  if (a1)
  {
    switch(a1)
    {
      case 1:
        v4 = 1;
        break;
      case 2:
        v4 = 2;
        break;
      case 3:
        v4 = 3;
        break;
      case 4:
        v4 = 4;
        break;
      case 5:
        v4 = 5;
        break;
      case 6:
        v4 = 6;
        break;
      case 7:
        v4 = 7;
        break;
      case 8:
        v4 = 8;
        break;
      case 9:
        v4 = 9;
        break;
      case 10:
        v4 = 10;
        break;
      default:
        v4 = 11;
        break;
    }
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    switch(a2)
    {
      case 1:
        v3 = 1;
        break;
      case 2:
        v3 = 2;
        break;
      case 3:
        v3 = 3;
        break;
      case 4:
        v3 = 4;
        break;
      case 5:
        v3 = 5;
        break;
      case 6:
        v3 = 6;
        break;
      case 7:
        v3 = 7;
        break;
      case 8:
        v3 = 8;
        break;
      case 9:
        v3 = 9;
        break;
      case 10:
        v3 = 10;
        break;
      default:
        v3 = 11;
        break;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

unint64_t sub_268F66184()
{
  v2 = qword_2802DE700;
  if (!qword_2802DE700)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE700);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268F66560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268F6541C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_268F6658C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_268F65BB8();
  *a1 = result;
  return result;
}

unint64_t sub_268F665E8()
{
  v2 = qword_2802DE708;
  if (!qword_2802DE708)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE708);
    return WitnessTable;
  }

  return v2;
}

uint64_t NumericSettingModel.encode(to:)(uint64_t a1)
{
  v40 = a1;
  v82 = 0;
  v81 = 0;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE710, &qword_268FAC858);
  v41 = *(v66 - 8);
  v42 = v66 - 8;
  v43 = (*(v41 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v40);
  v62 = v11 - v43;
  v82 = v2;
  v64 = *v1;
  v65 = v1[1];
  v44 = v1[2];
  v45 = v1[3];
  v46 = v1[4];
  v47 = v1[5];
  v48 = v1[6];
  v49 = v1[7];
  v50 = v1[8];
  v51 = v1[9];
  v52 = v1[10];
  v53 = v1[11];
  v54 = v1[12];
  v55 = v1[13];
  v56 = v1[14];
  v57 = v1[15];
  v58 = v1[16];
  v59 = v1[17];
  v81 = v1;
  v60 = v2[3];
  v61 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v60);
  sub_268F665E8();
  sub_268F9B844();
  v3 = v63;

  v80 = 0;
  sub_268F9B6A4();
  v67 = v3;
  v68 = v3;
  if (v3)
  {
    v16 = v68;

    result = (*(v41 + 8))(v62, v66);
    v17 = v16;
  }

  else
  {

    v4 = v67;

    v79 = 1;
    sub_268F9B6A4();
    v38 = v4;
    v39 = v4;
    if (v4)
    {
      v15 = v39;

      result = (*(v41 + 8))(v62, v66);
      v17 = v15;
    }

    else
    {

      v5 = v38;

      v78 = 2;
      sub_268F9B6A4();
      v36 = v5;
      v37 = v5;
      if (v5)
      {
        v14 = v37;

        result = (*(v41 + 8))(v62, v66);
        v17 = v14;
      }

      else
      {

        v6 = v36;

        v77 = 3;
        sub_268F9B6A4();
        v34 = v6;
        v35 = v6;
        if (v6)
        {
          v13 = v35;

          result = (*(v41 + 8))(v62, v66);
          v17 = v13;
        }

        else
        {

          v7 = v34;

          v76 = 4;
          sub_268F9B6A4();
          v32 = v7;
          v33 = v7;
          if (v7)
          {
            v12 = v33;

            result = (*(v41 + 8))(v62, v66);
            v17 = v12;
          }

          else
          {

            v8 = v32;
            v75 = 5;
            sub_268F9B6C4();
            v30 = v8;
            v31 = v8;
            if (v8)
            {
              v11[7] = v31;
              return (*(v41 + 8))(v62, v66);
            }

            else
            {
              v74 = 6;
              sub_268F9B6C4();
              v28 = 0;
              v29 = 0;
              v73 = 7;
              sub_268F9B6C4();
              v26 = 0;
              v27 = 0;
              v72 = 8;
              sub_268F9B6C4();
              v24 = 0;
              v25 = 0;
              v71 = 9;
              sub_268F9B6C4();
              v22 = 0;
              v23 = 0;

              v70 = 10;
              sub_268F9B684();
              v20 = 0;
              v21 = 0;

              v9 = v20;
              v69 = 11;
              sub_268F9B6D4();
              v18 = v9;
              v19 = v9;
              if (v9)
              {
                v11[1] = v19;
              }

              return (*(v41 + 8))(v62, v66);
            }
          }
        }
      }
    }
  }

  return result;
}