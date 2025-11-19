char *sub_268EA0C50(char *a1)
{
  v1 = *a1;

  v2 = *(a1 + 1);

  v3 = *(a1 + 3);

  v5 = *(type metadata accessor for GetSettingIntentDescribeNumericSettingStateParameters() + 40);
  v7 = sub_268F9A9C4();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(&a1[v5], 1))
  {
    (*(v8 + 8))(&a1[v5], v7);
  }

  return a1;
}

uint64_t sub_268EA0D40()
{
  v1[4] = v0;
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = v0;
  v2 = v1[2];
  return MEMORY[0x2822009F8](sub_268EA0D7C, 0);
}

uint64_t sub_268EA0D7C()
{
  v6 = MEMORY[0x277D55BE8];
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

uint64_t sub_268EA0ED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  return sub_268EA0F2C(a1, a2, a3);
}

uint64_t sub_268EA0F2C(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_268EA1110(uint64_t a1, uint64_t a2)
{
  v7 = v3;
  *(v3 + 16) = v3;
  v4 = *v2;
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_268D7F90C;

  return sub_268E9BDD8(a1, a2);
}

uint64_t sub_268EA11D0(char a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 16) = v5;
  v6 = *v4;
  v7 = swift_task_alloc();
  *(v5 + 24) = v7;
  *v7 = *(v5 + 16);
  v7[1] = sub_268D7F90C;

  return sub_268E9C3E8(a1 & 1, a2 & 1, a3, a4);
}

uint64_t sub_268EA12A8(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 16) = v4;
  v5 = *v3;
  v6 = swift_task_alloc();
  *(v4 + 24) = v6;
  *v6 = *(v4 + 16);
  v6[1] = sub_268D7F90C;

  return sub_268E9DAA4(a1 & 1, a2, a3);
}

uint64_t sub_268EA1374(char a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 16) = v5;
  v6 = *v4;
  v7 = swift_task_alloc();
  *(v5 + 24) = v7;
  *v7 = *(v5 + 16);
  v7[1] = sub_268D7F90C;

  return sub_268E9E3F8(a1 & 1, a2 & 1, a3, a4);
}

uint64_t sub_268EA144C(uint64_t a1, uint64_t a2)
{
  v7 = v3;
  *(v3 + 16) = v3;
  v4 = *v2;
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_268D7F90C;

  return sub_268E9FADC(a1, a2);
}

uint64_t sub_268EA150C(char a1, char a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 16) = v6;
  v7 = *v5;
  v8 = swift_task_alloc();
  *(v6 + 24) = v8;
  *v8 = *(v6 + 16);
  v8[1] = sub_268D7F90C;

  return sub_268EA0328(a1 & 1, a2 & 1, a3 & 1, a4, a5);
}

uint64_t sub_268EA15F0()
{
  v5 = v1;
  *(v1 + 16) = v1;
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_268D7F90C;

  return sub_268EA0D40();
}

uint64_t sub_268EA16A0(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xF9)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 6) >> 8) + 1;
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
      v5 = (*a1 | ((v6 - 1) << 8)) + 249;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 7;
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

_BYTE *sub_268EA1808(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xF9)
  {
    v5 = ((a3 + 6) >> 8) + 1;
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

  if (a2 > 0xF9)
  {
    v4 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
      *result = a2 + 6;
    }
  }

  return result;
}

uint64_t sub_268EA1A68()
{
  v2 = sub_268D810E4();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t sub_268EA1B50()
{
  v5 = sub_268D81048();
  if (v0 <= 0x3F)
  {
    v5 = sub_268D810E4();
    if (v1 <= 0x3F)
    {
      v5 = sub_268D81EC8();
      if (v2 <= 0x3F)
      {
        v5 = sub_268D8154C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v5;
}

uint64_t sub_268EA1D98()
{
  v5 = sub_268D81048();
  if (v0 <= 0x3F)
  {
    v5 = sub_268D810E4();
    if (v1 <= 0x3F)
    {
      v5 = sub_268D81180();
      if (v2 <= 0x3F)
      {
        v5 = sub_268D8154C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v5;
}

uint64_t sub_268EA1F9C()
{
  v5 = sub_268EA20D4();
  if (v0 <= 0x3F)
  {
    v5 = sub_268D81048();
    if (v1 <= 0x3F)
    {
      v5 = sub_268E3B890();
      if (v2 <= 0x3F)
      {
        v5 = sub_268D810E4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v5;
}

uint64_t sub_268EA20D4()
{
  v4 = qword_2802DDC88;
  if (!qword_2802DDC88)
  {
    type metadata accessor for SettingsNumericSettingAction();
    v3 = sub_268F9B3B4();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_2802DDC88);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_268EA21C0()
{
  v5 = sub_268EA20D4();
  if (v0 <= 0x3F)
  {
    v5 = sub_268D81048();
    if (v1 <= 0x3F)
    {
      v5 = sub_268E3B890();
      if (v2 <= 0x3F)
      {
        v5 = sub_268D810E4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v5;
}

uint64_t sub_268EA2324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4;
  *(v4 + 16) = v4;
  v12 = (*(a4 + 8) + **(a4 + 8));
  v5 = *(*(a4 + 8) + 4);
  v6 = swift_task_alloc();
  *(v8 + 24) = v6;
  *v6 = *(v8 + 16);
  v6[1] = sub_268D82A48;

  return v12(a1, a2, a3, a4);
}

uint64_t sub_268EA2468(char a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = v6;
  v15 = (*(a6 + 16) + **(a6 + 16));
  v7 = *(*(a6 + 16) + 4);
  v8 = swift_task_alloc();
  *(v6 + 24) = v8;
  *v8 = *(v6 + 16);
  v8[1] = sub_268D82A48;

  return v15(a1 & 1, a2 & 1, a3, a4, a5, a6);
}

uint64_t sub_268EA25C4(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = v5;
  v13 = (*(a5 + 24) + **(a5 + 24));
  v6 = *(*(a5 + 24) + 4);
  v7 = swift_task_alloc();
  *(v5 + 24) = v7;
  *v7 = *(v5 + 16);
  v7[1] = sub_268D82A48;

  return v13(a1 & 1, a2, a3, a4, a5);
}

uint64_t sub_268EA2714(char a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = v6;
  v15 = (*(a6 + 32) + **(a6 + 32));
  v7 = *(*(a6 + 32) + 4);
  v8 = swift_task_alloc();
  *(v6 + 24) = v8;
  *v8 = *(v6 + 16);
  v8[1] = sub_268D82A48;

  return v15(a1 & 1, a2 & 1, a3, a4, a5, a6);
}

uint64_t sub_268EA2870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4;
  *(v4 + 16) = v4;
  v12 = (*(a4 + 40) + **(a4 + 40));
  v5 = *(*(a4 + 40) + 4);
  v6 = swift_task_alloc();
  *(v8 + 24) = v6;
  *v6 = *(v8 + 16);
  v6[1] = sub_268D82A48;

  return v12(a1, a2, a3, a4);
}

uint64_t sub_268EA29B4(char a1, char a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 16) = v7;
  v17 = (*(a7 + 48) + **(a7 + 48));
  v8 = *(*(a7 + 48) + 4);
  v9 = swift_task_alloc();
  *(v7 + 24) = v9;
  *v9 = *(v7 + 16);
  v9[1] = sub_268D82A48;

  return v17(a1 & 1, a2 & 1, a3 & 1, a4, a5, a6, a7);
}

uint64_t sub_268EA2B1C(uint64_t a1, uint64_t a2)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v8 = (*(a2 + 56) + **(a2 + 56));
  v3 = *(*(a2 + 56) + 4);
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_268D82A48;

  return v8(a1, a2);
}

uint64_t type metadata accessor for GetSettingIntentCATPatternsExecutor()
{
  v1 = qword_280FE29C8;
  if (!qword_280FE29C8)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_268EA2CC4()
{
  inited = swift_initClassMetadata2();
  if (!inited)
  {
    return 0;
  }

  return inited;
}

unint64_t sub_268EA2D68()
{
  v2 = qword_2802DDCA0;
  if (!qword_2802DDCA0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDCA0);
    return WitnessTable;
  }

  return v2;
}

char *sub_268EA2DE4(char *a1, char *a2)
{
  *a2 = *a1;
  *(a2 + 1) = *(a1 + 1);
  *(a2 + 2) = *(a1 + 2);
  v5 = *(type metadata accessor for GetSettingIntentDescribeNumericSettingStateSpokenOnlyParameters() + 28);
  v7 = sub_268F9A9C4();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(&a1[v5], 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(&a2[v5], &a1[v5], *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 32))();
    (*(v8 + 56))(&a2[v5], 0, 1, v7);
  }

  return a2;
}

uint64_t sub_268EA2F6C()
{
  sub_268F9B734();
  *v0 = "SetNumericSettingIntent#ChangedNumericValueTo";
  *(v0 + 8) = 45;
  *(v0 + 16) = 2;
  *(v0 + 24) = "SetNumericSettingIntent#ChangedNumericValueToSpokenOnly";
  *(v0 + 32) = 55;
  *(v0 + 40) = 2;
  *(v0 + 48) = "SetNumericSettingIntent#ConfirmDisableSmartVolume";
  *(v0 + 56) = 49;
  *(v0 + 64) = 2;
  *(v0 + 72) = "SetNumericSettingIntent#ConfirmMaximumVolume";
  *(v0 + 80) = 44;
  *(v0 + 88) = 2;
  *(v0 + 96) = "SetNumericSettingIntent#NoNeedToChangeNumericValueTo";
  *(v0 + 104) = 52;
  *(v0 + 112) = 2;
  *(v0 + 120) = "SetNumericSettingIntent#NumericValueWasUndone";
  *(v0 + 128) = 45;
  *(v0 + 136) = 2;
  *(v0 + 144) = "SetNumericSettingIntent#RetainingCurrentNumericValue";
  *(v0 + 152) = 52;
  *(v0 + 160) = 2;
  *(v0 + 168) = "SetNumericSettingIntent#UnspecifiedActionForSupportedNumericSetting";
  *(v0 + 176) = 67;
  *(v0 + 184) = 2;
  sub_268CD0F7C();
  v4 = sub_268F9B5C4();

  switch(v4)
  {
    case 0:
      v3 = 0;
LABEL_18:

      return v3;
    case 1:
      v3 = 1;
      goto LABEL_18;
    case 2:
      v3 = 2;
      goto LABEL_18;
    case 3:
      v3 = 3;
      goto LABEL_18;
    case 4:
      v3 = 4;
      goto LABEL_18;
    case 5:
      v3 = 5;
      goto LABEL_18;
    case 6:
      v3 = 6;
      goto LABEL_18;
    case 7:
      v3 = 7;
      goto LABEL_18;
  }

  return 8;
}

unint64_t sub_268EA3498()
{
  v2 = qword_2802DDCA8;
  if (!qword_2802DDCA8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDCA8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268EA35E4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = sub_268EA2F6C();
  *a2 = result;
  return result;
}

uint64_t sub_268EA361C@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  result = sub_268EA3254();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_268EA3650(char a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7)
{
  *(v8 + 80) = v7;
  *(v8 + 124) = a7 & 1;
  *(v8 + 123) = a6 & 1;
  *(v8 + 72) = a5;
  *(v8 + 64) = a4;
  *(v8 + 56) = a3;
  *(v8 + 122) = a2 & 1;
  *(v8 + 121) = a1 & 1;
  *(v8 + 16) = v8;
  *(v8 + 120) = 0;
  *(v8 + 128) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  *(v8 + 136) = 0;
  *(v8 + 144) = 0;
  *(v8 + 48) = 0;
  *(v8 + 120) = a1 & 1;
  *(v8 + 128) = a2 & 1;
  *(v8 + 24) = a3;
  *(v8 + 32) = a4;
  *(v8 + 40) = a5;
  *(v8 + 136) = a6 & 1;
  *(v8 + 144) = a7 & 1;
  *(v8 + 48) = v7;
  v9 = *(v8 + 16);
  return MEMORY[0x2822009F8](sub_268EA3740, 0);
}

uint64_t sub_268EA3740()
{
  v31 = *(v0 + 56);
  v29 = *(v0 + 122);
  v27 = *(v0 + 121);
  *(v0 + 16) = v0;
  v25 = sub_268F9AEF4();
  v26 = v1;
  *(v0 + 88) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v30 = v2;
  *v2 = sub_268F9AEF4();
  v30[1] = v3;
  v28 = MEMORY[0x277D839B0];
  v30[5] = MEMORY[0x277D839B0];
  *(v30 + 16) = v27;
  v30[6] = sub_268F9AEF4();
  v30[7] = v4;
  v30[11] = v28;
  *(v30 + 64) = v29;
  v30[12] = sub_268F9AEF4();
  v30[13] = v5;

  if (v31)
  {
    v23 = *(v24 + 56);
    v30[17] = type metadata accessor for SettingsNumericSetting();
    v30[14] = v23;
  }

  else
  {
    v30[14] = 0;
    v30[15] = 0;
    v30[16] = 0;
    v30[17] = 0;
  }

  v22 = *(v24 + 64);
  v30[18] = sub_268F9AEF4();
  v30[19] = v6;

  if (v22)
  {
    v21 = *(v24 + 64);
    v30[23] = type metadata accessor for SettingsNumericSettingAction();
    v30[20] = v21;
  }

  else
  {
    v30[20] = 0;
    v30[21] = 0;
    v30[22] = 0;
    v30[23] = 0;
  }

  v20 = *(v24 + 72);
  v30[24] = sub_268F9AEF4();
  v30[25] = v7;

  if (v20)
  {
    v19 = *(v24 + 72);
    v30[29] = sub_268F9AA44();
    v30[26] = v19;
  }

  else
  {
    v30[26] = 0;
    v30[27] = 0;
    v30[28] = 0;
    v30[29] = 0;
  }

  v16 = *(v24 + 124);
  v14 = *(v24 + 123);
  v30[30] = sub_268F9AEF4();
  v30[31] = v8;
  v15 = MEMORY[0x277D839B0];
  v30[35] = MEMORY[0x277D839B0];
  *(v30 + 256) = v14;
  v30[36] = sub_268F9AEF4();
  v30[37] = v9;
  v30[41] = v15;
  *(v30 + 304) = v16;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v17 = sub_268F9B4F4();
  *(v24 + 96) = v17;
  v18 = (MEMORY[0x277D55C70] + *MEMORY[0x277D55C70]);
  v10 = *(MEMORY[0x277D55C70] + 4);
  v11 = swift_task_alloc();
  *(v24 + 104) = v11;
  *v11 = *(v24 + 16);
  v11[1] = sub_268EA3CD4;
  v12 = *(v24 + 80);

  return v18(v25, v26, v17);
}

uint64_t sub_268EA3CD4(uint64_t a1)
{
  v10 = *v2;
  v3 = *(*v2 + 104);
  v10[2] = *v2;
  v11 = v10 + 2;
  v10[14] = v1;

  if (v1)
  {
    v7 = *v11;

    return MEMORY[0x2822009F8](sub_268EA3EE0, 0);
  }

  else
  {
    v4 = v10[12];
    v8 = v10[11];

    v5 = *(*v11 + 8);

    return v5(a1);
  }
}

uint64_t sub_268EA3EE0()
{
  v1 = v0[12];
  v7 = v0[11];
  v0[2] = v0;

  v2 = v0;
  v3 = *(v0[2] + 8);
  v4 = v0[2];
  v5 = v2[14];

  return v3();
}

uint64_t sub_268EA3FAC()
{
  sub_268F9B734();
  *v0 = "first1#all1#first1#dialog1";
  *(v0 + 8) = 26;
  *(v0 + 16) = 2;
  *(v0 + 24) = "first1#all1#first1#dialog2";
  *(v0 + 32) = 26;
  *(v0 + 40) = 2;
  *(v0 + 48) = "first1#all1#first1#dialog3";
  *(v0 + 56) = 26;
  *(v0 + 64) = 2;
  *(v0 + 72) = "first1#all1#first1#dialog4";
  *(v0 + 80) = 26;
  *(v0 + 88) = 2;
  *(v0 + 96) = "first1#all1#first1#dialog5";
  *(v0 + 104) = 26;
  *(v0 + 112) = 2;
  *(v0 + 120) = "first1#all1#first1#random1#dialog1";
  *(v0 + 128) = 34;
  *(v0 + 136) = 2;
  *(v0 + 144) = "first1#all1#first1#random1#dialog2";
  *(v0 + 152) = 34;
  *(v0 + 160) = 2;
  *(v0 + 168) = "first1#all1#first1#random2#dialog1";
  *(v0 + 176) = 34;
  *(v0 + 184) = 2;
  *(v0 + 192) = "first1#all1#first1#random2#dialog2";
  *(v0 + 200) = 34;
  *(v0 + 208) = 2;
  *(v0 + 216) = "first1#first1#dialog1";
  *(v0 + 224) = 21;
  *(v0 + 232) = 2;
  *(v0 + 240) = "first1#first1#dialog2";
  *(v0 + 248) = 21;
  *(v0 + 256) = 2;
  *(v0 + 264) = "first1#first1#dialog3";
  *(v0 + 272) = 21;
  *(v0 + 280) = 2;
  *(v0 + 288) = "first1#first1#dialog4";
  *(v0 + 296) = 21;
  *(v0 + 304) = 2;
  *(v0 + 312) = "first1#first2#dialog1";
  *(v0 + 320) = 21;
  *(v0 + 328) = 2;
  *(v0 + 336) = "first1#first2#dialog2";
  *(v0 + 344) = 21;
  *(v0 + 352) = 2;
  *(v0 + 360) = "first1#first2#dialog3";
  *(v0 + 368) = 21;
  *(v0 + 376) = 2;
  *(v0 + 384) = "first1#first2#dialog4";
  *(v0 + 392) = 21;
  *(v0 + 400) = 2;
  *(v0 + 408) = "first1#first2#first1#dialog1";
  *(v0 + 416) = 28;
  *(v0 + 424) = 2;
  *(v0 + 432) = "first1#first2#first1#dialog2";
  *(v0 + 440) = 28;
  *(v0 + 448) = 2;
  *(v0 + 456) = "first1#first2#first1#dialog3";
  *(v0 + 464) = 28;
  *(v0 + 472) = 2;
  sub_268CD0F7C();
  v4 = sub_268F9B5C4();

  switch(v4)
  {
    case 0:
      v3 = 0;
LABEL_42:

      return v3;
    case 1:
      v3 = 1;
      goto LABEL_42;
    case 2:
      v3 = 2;
      goto LABEL_42;
    case 3:
      v3 = 3;
      goto LABEL_42;
    case 4:
      v3 = 4;
      goto LABEL_42;
    case 5:
      v3 = 5;
      goto LABEL_42;
    case 6:
      v3 = 6;
      goto LABEL_42;
    case 7:
      v3 = 7;
      goto LABEL_42;
    case 8:
      v3 = 8;
      goto LABEL_42;
    case 9:
      v3 = 9;
      goto LABEL_42;
    case 10:
      v3 = 10;
      goto LABEL_42;
    case 11:
      v3 = 11;
      goto LABEL_42;
    case 12:
      v3 = 12;
      goto LABEL_42;
    case 13:
      v3 = 13;
      goto LABEL_42;
    case 14:
      v3 = 14;
      goto LABEL_42;
    case 15:
      v3 = 15;
      goto LABEL_42;
    case 16:
      v3 = 16;
      goto LABEL_42;
    case 17:
      v3 = 17;
      goto LABEL_42;
    case 18:
      v3 = 18;
      goto LABEL_42;
    case 19:
      v3 = 19;
      goto LABEL_42;
  }

  return 20;
}

unint64_t sub_268EA4984()
{
  v2 = qword_2802DDCB0;
  if (!qword_2802DDCB0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDCB0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268EA4AD0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = sub_268EA3FAC();
  *a2 = result;
  return result;
}

uint64_t sub_268EA4B08@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  result = sub_268EA45B8();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_268EA4B3C(char a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7)
{
  *(v8 + 80) = v7;
  *(v8 + 124) = a7 & 1;
  *(v8 + 123) = a6 & 1;
  *(v8 + 72) = a5;
  *(v8 + 64) = a4;
  *(v8 + 56) = a3;
  *(v8 + 122) = a2 & 1;
  *(v8 + 121) = a1 & 1;
  *(v8 + 16) = v8;
  *(v8 + 120) = 0;
  *(v8 + 128) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  *(v8 + 136) = 0;
  *(v8 + 144) = 0;
  *(v8 + 48) = 0;
  *(v8 + 120) = a1 & 1;
  *(v8 + 128) = a2 & 1;
  *(v8 + 24) = a3;
  *(v8 + 32) = a4;
  *(v8 + 40) = a5;
  *(v8 + 136) = a6 & 1;
  *(v8 + 144) = a7 & 1;
  *(v8 + 48) = v7;
  v9 = *(v8 + 16);
  return MEMORY[0x2822009F8](sub_268EA4C2C, 0);
}

uint64_t sub_268EA4C2C()
{
  v32 = *(v0 + 56);
  v30 = *(v0 + 122);
  v28 = *(v0 + 121);
  *(v0 + 16) = v0;
  v26 = sub_268F9AEF4();
  v27 = v1;
  *(v0 + 88) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v31 = v2;
  *v2 = sub_268F9AEF4();
  v31[1] = v3;
  v29 = MEMORY[0x277D839B0];
  v31[5] = MEMORY[0x277D839B0];
  *(v31 + 16) = v28;
  v31[6] = sub_268F9AEF4();
  v31[7] = v4;
  v31[11] = v29;
  *(v31 + 64) = v30;
  v31[12] = sub_268F9AEF4();
  v31[13] = v5;

  if (v32)
  {
    v24 = *(v25 + 56);
    v31[17] = type metadata accessor for SettingsNumericSetting();
    v31[14] = v24;
  }

  else
  {
    v31[14] = 0;
    v31[15] = 0;
    v31[16] = 0;
    v31[17] = 0;
  }

  v23 = *(v25 + 64);
  v31[18] = sub_268F9AEF4();
  v31[19] = v6;

  if (v23)
  {
    v22 = *(v25 + 64);
    v31[23] = type metadata accessor for SettingsNumericSettingAction();
    v31[20] = v22;
  }

  else
  {
    v31[20] = 0;
    v31[21] = 0;
    v31[22] = 0;
    v31[23] = 0;
  }

  v21 = *(v25 + 72);
  v31[24] = sub_268F9AEF4();
  v31[25] = v7;

  if (v21)
  {
    v20 = *(v25 + 72);
    v31[29] = sub_268F9AA44();
    v31[26] = v20;
  }

  else
  {
    v31[26] = 0;
    v31[27] = 0;
    v31[28] = 0;
    v31[29] = 0;
  }

  v17 = *(v25 + 124);
  v15 = *(v25 + 123);
  v31[30] = sub_268F9AEF4();
  v31[31] = v8;
  v16 = MEMORY[0x277D839B0];
  v31[35] = MEMORY[0x277D839B0];
  *(v31 + 256) = v15;
  v31[36] = sub_268F9AEF4();
  v31[37] = v9;
  v31[41] = v16;
  *(v31 + 304) = v17;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v18 = sub_268F9B4F4();
  *(v25 + 96) = v18;
  v19 = (MEMORY[0x277D55C68] + *MEMORY[0x277D55C68]);
  v10 = *(MEMORY[0x277D55C68] + 4);
  v11 = swift_task_alloc();
  *(v25 + 104) = v11;
  v12 = sub_268EA4984();
  *v11 = *(v25 + 16);
  v11[1] = sub_268EA3CD4;
  v13 = *(v25 + 80);

  return v19(v26, v27, v18, &unk_2879941D8, v12);
}

uint64_t sub_268EA51D8(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 80) = v4;
  *(v5 + 72) = a4;
  *(v5 + 64) = a3;
  *(v5 + 56) = a2;
  *(v5 + 121) = a1 & 1;
  *(v5 + 16) = v5;
  *(v5 + 120) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 40) = 0;
  *(v5 + 48) = 0;
  *(v5 + 120) = a1 & 1;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 48) = v4;
  v6 = *(v5 + 16);
  return MEMORY[0x2822009F8](sub_268EA5268, 0);
}

uint64_t sub_268EA5268()
{
  v23 = *(v0 + 56);
  v21 = *(v0 + 121);
  *(v0 + 16) = v0;
  v19 = sub_268F9AEF4();
  v20 = v1;
  *(v0 + 88) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v22 = v2;
  *v2 = sub_268F9AEF4();
  v22[1] = v3;
  v22[5] = MEMORY[0x277D839B0];
  *(v22 + 16) = v21;
  v22[6] = sub_268F9AEF4();
  v22[7] = v4;

  if (v23)
  {
    v17 = v18[7];
    v22[11] = type metadata accessor for SettingsNumericSetting();
    v22[8] = v17;
  }

  else
  {
    v22[8] = 0;
    v22[9] = 0;
    v22[10] = 0;
    v22[11] = 0;
  }

  v16 = v18[8];
  v22[12] = sub_268F9AEF4();
  v22[13] = v5;

  if (v16)
  {
    v15 = v18[8];
    v22[17] = type metadata accessor for SettingsNumericSettingAction();
    v22[14] = v15;
  }

  else
  {
    v22[14] = 0;
    v22[15] = 0;
    v22[16] = 0;
    v22[17] = 0;
  }

  v14 = v18[9];
  v22[18] = sub_268F9AEF4();
  v22[19] = v6;

  if (v14)
  {
    v13 = v18[9];
    v22[23] = sub_268F9AA44();
    v22[20] = v13;
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
  v11 = sub_268F9B4F4();
  v18[12] = v11;
  v12 = (MEMORY[0x277D55C70] + *MEMORY[0x277D55C70]);
  v7 = *(MEMORY[0x277D55C70] + 4);
  v8 = swift_task_alloc();
  v18[13] = v8;
  *v8 = v18[2];
  v8[1] = sub_268EA56AC;
  v9 = v18[10];

  return v12(v19, v20, v11);
}

uint64_t sub_268EA56AC(uint64_t a1)
{
  v10 = *v2;
  v3 = *(*v2 + 104);
  v10[2] = *v2;
  v11 = v10 + 2;
  v10[14] = v1;

  if (v1)
  {
    v7 = *v11;

    return MEMORY[0x2822009F8](sub_268EA5894, 0);
  }

  else
  {
    v4 = v10[12];
    v8 = v10[11];

    v5 = *(*v11 + 8);

    return v5(a1);
  }
}

uint64_t sub_268EA5894()
{
  v1 = v0[12];
  v7 = v0[11];
  v0[2] = v0;

  v2 = v0;
  v3 = *(v0[2] + 8);
  v4 = v0[2];
  v5 = v2[14];

  return v3();
}

uint64_t sub_268EA5954()
{
  sub_268F9B734();
  *v0 = "first1#dialog1";
  *(v0 + 8) = 14;
  *(v0 + 16) = 2;
  *(v0 + 24) = "first1#dialog2";
  *(v0 + 32) = 14;
  *(v0 + 40) = 2;
  *(v0 + 48) = "first1#dialog3";
  *(v0 + 56) = 14;
  *(v0 + 64) = 2;
  *(v0 + 72) = "first1#dialog4";
  *(v0 + 80) = 14;
  *(v0 + 88) = 2;
  *(v0 + 96) = "first2#dialog1";
  *(v0 + 104) = 14;
  *(v0 + 112) = 2;
  *(v0 + 120) = "first2#dialog2";
  *(v0 + 128) = 14;
  *(v0 + 136) = 2;
  *(v0 + 144) = "first2#random1#dialog1";
  *(v0 + 152) = 22;
  *(v0 + 160) = 2;
  *(v0 + 168) = "first2#random1#dialog2";
  *(v0 + 176) = 22;
  *(v0 + 184) = 2;
  *(v0 + 192) = "first2#random2#dialog1";
  *(v0 + 200) = 22;
  *(v0 + 208) = 2;
  *(v0 + 216) = "first2#random2#dialog2";
  *(v0 + 224) = 22;
  *(v0 + 232) = 2;
  *(v0 + 240) = "first3#dialog1";
  *(v0 + 248) = 14;
  *(v0 + 256) = 2;
  *(v0 + 264) = "first3#dialog2";
  *(v0 + 272) = 14;
  *(v0 + 280) = 2;
  *(v0 + 288) = "first3#dialog3";
  *(v0 + 296) = 14;
  *(v0 + 304) = 2;
  *(v0 + 312) = "first3#dialog4";
  *(v0 + 320) = 14;
  *(v0 + 328) = 2;
  *(v0 + 336) = "first3#first1#dialog1";
  *(v0 + 344) = 21;
  *(v0 + 352) = 2;
  *(v0 + 360) = "first3#first1#dialog2";
  *(v0 + 368) = 21;
  *(v0 + 376) = 2;
  *(v0 + 384) = "first3#first1#dialog3";
  *(v0 + 392) = 21;
  *(v0 + 400) = 2;
  sub_268CD0F7C();
  v4 = sub_268F9B5C4();

  switch(v4)
  {
    case 0:
      v3 = 0;
LABEL_36:

      return v3;
    case 1:
      v3 = 1;
      goto LABEL_36;
    case 2:
      v3 = 2;
      goto LABEL_36;
    case 3:
      v3 = 3;
      goto LABEL_36;
    case 4:
      v3 = 4;
      goto LABEL_36;
    case 5:
      v3 = 5;
      goto LABEL_36;
    case 6:
      v3 = 6;
      goto LABEL_36;
    case 7:
      v3 = 7;
      goto LABEL_36;
    case 8:
      v3 = 8;
      goto LABEL_36;
    case 9:
      v3 = 9;
      goto LABEL_36;
    case 10:
      v3 = 10;
      goto LABEL_36;
    case 11:
      v3 = 11;
      goto LABEL_36;
    case 12:
      v3 = 12;
      goto LABEL_36;
    case 13:
      v3 = 13;
      goto LABEL_36;
    case 14:
      v3 = 14;
      goto LABEL_36;
    case 15:
      v3 = 15;
      goto LABEL_36;
    case 16:
      v3 = 16;
      goto LABEL_36;
  }

  return 17;
}

unint64_t sub_268EA61E4()
{
  v2 = qword_2802DDCB8;
  if (!qword_2802DDCB8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDCB8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268EA6330@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = sub_268EA5954();
  *a2 = result;
  return result;
}

uint64_t sub_268EA6368@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  result = sub_268EA5E90();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_268EA639C(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 80) = v4;
  *(v5 + 72) = a4;
  *(v5 + 64) = a3;
  *(v5 + 56) = a2;
  *(v5 + 121) = a1 & 1;
  *(v5 + 16) = v5;
  *(v5 + 120) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 40) = 0;
  *(v5 + 48) = 0;
  *(v5 + 120) = a1 & 1;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 48) = v4;
  v6 = *(v5 + 16);
  return MEMORY[0x2822009F8](sub_268EA642C, 0);
}

uint64_t sub_268EA642C()
{
  v24 = *(v0 + 56);
  v22 = *(v0 + 121);
  *(v0 + 16) = v0;
  v20 = sub_268F9AEF4();
  v21 = v1;
  *(v0 + 88) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v23 = v2;
  *v2 = sub_268F9AEF4();
  v23[1] = v3;
  v23[5] = MEMORY[0x277D839B0];
  *(v23 + 16) = v22;
  v23[6] = sub_268F9AEF4();
  v23[7] = v4;

  if (v24)
  {
    v18 = v19[7];
    v23[11] = type metadata accessor for SettingsNumericSetting();
    v23[8] = v18;
  }

  else
  {
    v23[8] = 0;
    v23[9] = 0;
    v23[10] = 0;
    v23[11] = 0;
  }

  v17 = v19[8];
  v23[12] = sub_268F9AEF4();
  v23[13] = v5;

  if (v17)
  {
    v16 = v19[8];
    v23[17] = type metadata accessor for SettingsNumericSettingAction();
    v23[14] = v16;
  }

  else
  {
    v23[14] = 0;
    v23[15] = 0;
    v23[16] = 0;
    v23[17] = 0;
  }

  v15 = v19[9];
  v23[18] = sub_268F9AEF4();
  v23[19] = v6;

  if (v15)
  {
    v14 = v19[9];
    v23[23] = sub_268F9AA44();
    v23[20] = v14;
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
  v12 = sub_268F9B4F4();
  v19[12] = v12;
  v13 = (MEMORY[0x277D55C68] + *MEMORY[0x277D55C68]);
  v7 = *(MEMORY[0x277D55C68] + 4);
  v8 = swift_task_alloc();
  v19[13] = v8;
  v9 = sub_268EA61E4();
  *v8 = v19[2];
  v8[1] = sub_268EA56AC;
  v10 = v19[10];

  return v13(v20, v21, v12, &unk_287994268, v9);
}

uint64_t sub_268EA6888(char a1, char a2, uint64_t a3)
{
  *(v4 + 48) = v3;
  *(v4 + 40) = a3;
  *(v4 + 90) = a2 & 1;
  *(v4 + 89) = a1 & 1;
  *(v4 + 16) = v4;
  *(v4 + 88) = 0;
  *(v4 + 96) = 0;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  *(v4 + 88) = a1 & 1;
  *(v4 + 96) = a2 & 1;
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  v5 = *(v4 + 16);
  return MEMORY[0x2822009F8](sub_268EA6918, 0);
}

uint64_t sub_268EA6918()
{
  v20 = *(v0 + 40);
  v18 = *(v0 + 90);
  v16 = *(v0 + 89);
  *(v0 + 16) = v0;
  v14 = sub_268F9AEF4();
  v15 = v1;
  *(v0 + 56) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v19 = v2;
  *v2 = sub_268F9AEF4();
  v19[1] = v3;
  v17 = MEMORY[0x277D839B0];
  v19[5] = MEMORY[0x277D839B0];
  *(v19 + 16) = v16;
  v19[6] = sub_268F9AEF4();
  v19[7] = v4;
  v19[11] = v17;
  *(v19 + 64) = v18;
  v19[12] = sub_268F9AEF4();
  v19[13] = v5;

  if (v20)
  {
    v12 = v13[5];
    v19[17] = type metadata accessor for SettingsNumericSettingAction();
    v19[14] = v12;
  }

  else
  {
    v19[14] = 0;
    v19[15] = 0;
    v19[16] = 0;
    v19[17] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v10 = sub_268F9B4F4();
  v13[8] = v10;
  v11 = (MEMORY[0x277D55C70] + *MEMORY[0x277D55C70]);
  v6 = *(MEMORY[0x277D55C70] + 4);
  v7 = swift_task_alloc();
  v13[9] = v7;
  *v7 = v13[2];
  v7[1] = sub_268EA6BE4;
  v8 = v13[6];

  return v11(v14, v15, v10);
}

uint64_t sub_268EA6BE4(uint64_t a1)
{
  v10 = *v2;
  v3 = *(*v2 + 72);
  v10[2] = *v2;
  v11 = v10 + 2;
  v10[10] = v1;

  if (v1)
  {
    v7 = *v11;

    return MEMORY[0x2822009F8](sub_268EA6DC0, 0);
  }

  else
  {
    v4 = v10[8];
    v8 = v10[7];

    v5 = *(*v11 + 8);

    return v5(a1);
  }
}

uint64_t sub_268EA6DC0()
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

uint64_t sub_268EA6E7C()
{
  sub_268F9B734();
  *v0 = "dialog1";
  *(v0 + 8) = 7;
  *(v0 + 16) = 2;
  *(v0 + 24) = "first1#dialog1";
  *(v0 + 32) = 14;
  *(v0 + 40) = 2;
  *(v0 + 48) = "first1#dialog2";
  *(v0 + 56) = 14;
  *(v0 + 64) = 2;
  *(v0 + 72) = "first1#dialog3";
  *(v0 + 80) = 14;
  *(v0 + 88) = 2;
  *(v0 + 96) = "first1#dialog4";
  *(v0 + 104) = 14;
  *(v0 + 112) = 2;
  *(v0 + 120) = "first1#dialog5";
  *(v0 + 128) = 14;
  *(v0 + 136) = 2;
  *(v0 + 144) = "first1#random1#dialog1";
  *(v0 + 152) = 22;
  *(v0 + 160) = 2;
  *(v0 + 168) = "first1#random1#dialog2";
  *(v0 + 176) = 22;
  *(v0 + 184) = 2;
  *(v0 + 192) = "first1#random2#dialog1";
  *(v0 + 200) = 22;
  *(v0 + 208) = 2;
  *(v0 + 216) = "first1#random2#dialog2";
  *(v0 + 224) = 22;
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

unint64_t sub_268EA7498()
{
  v2 = qword_2802DDCC0;
  if (!qword_2802DDCC0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDCC0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268EA75E4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = sub_268EA6E7C();
  *a2 = result;
  return result;
}

uint64_t sub_268EA761C@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  result = sub_268EA71DC();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_268EA7650(char a1, char a2, uint64_t a3)
{
  *(v4 + 48) = v3;
  *(v4 + 40) = a3;
  *(v4 + 90) = a2 & 1;
  *(v4 + 89) = a1 & 1;
  *(v4 + 16) = v4;
  *(v4 + 88) = 0;
  *(v4 + 96) = 0;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  *(v4 + 88) = a1 & 1;
  *(v4 + 96) = a2 & 1;
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  v5 = *(v4 + 16);
  return MEMORY[0x2822009F8](sub_268EA76E0, 0);
}

uint64_t sub_268EA76E0()
{
  v21 = *(v0 + 40);
  v19 = *(v0 + 90);
  v17 = *(v0 + 89);
  *(v0 + 16) = v0;
  v15 = sub_268F9AEF4();
  v16 = v1;
  *(v0 + 56) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v20 = v2;
  *v2 = sub_268F9AEF4();
  v20[1] = v3;
  v18 = MEMORY[0x277D839B0];
  v20[5] = MEMORY[0x277D839B0];
  *(v20 + 16) = v17;
  v20[6] = sub_268F9AEF4();
  v20[7] = v4;
  v20[11] = v18;
  *(v20 + 64) = v19;
  v20[12] = sub_268F9AEF4();
  v20[13] = v5;

  if (v21)
  {
    v13 = v14[5];
    v20[17] = type metadata accessor for SettingsNumericSettingAction();
    v20[14] = v13;
  }

  else
  {
    v20[14] = 0;
    v20[15] = 0;
    v20[16] = 0;
    v20[17] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v11 = sub_268F9B4F4();
  v14[8] = v11;
  v12 = (MEMORY[0x277D55C68] + *MEMORY[0x277D55C68]);
  v6 = *(MEMORY[0x277D55C68] + 4);
  v7 = swift_task_alloc();
  v14[9] = v7;
  v8 = sub_268EA7498();
  *v7 = v14[2];
  v7[1] = sub_268EA6BE4;
  v9 = v14[6];

  return v12(v15, v16, v11, &unk_2879942F8, v8);
}

uint64_t sub_268EA79C4(uint64_t a1)
{
  v2[6] = v1;
  v2[5] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[3] = a1;
  v2[4] = v1;
  v3 = v2[2];
  return MEMORY[0x2822009F8](sub_268EA7A10, 0);
}

uint64_t sub_268EA7A10()
{
  v15 = v0[5];
  v0[2] = v0;
  v12 = sub_268F9AEF4();
  v13 = v1;
  v0[7] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v14 = v2;
  *v2 = sub_268F9AEF4();
  v14[1] = v3;

  if (v15)
  {
    v10 = v11[5];
    v14[5] = sub_268F9AA44();
    v14[2] = v10;
  }

  else
  {
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = 0;
    v14[5] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v8 = sub_268F9B4F4();
  v11[8] = v8;
  v9 = (MEMORY[0x277D55C70] + *MEMORY[0x277D55C70]);
  v4 = *(MEMORY[0x277D55C70] + 4);
  v5 = swift_task_alloc();
  v11[9] = v5;
  *v5 = v11[2];
  v5[1] = sub_268DE5AA8;
  v6 = v11[6];

  return v9(v12, v13, v8);
}

unint64_t sub_268EA7C78()
{
  v2 = qword_2802DDCC8;
  if (!qword_2802DDCC8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDCC8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268EA7DC4(uint64_t a1)
{
  v2[6] = v1;
  v2[5] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[3] = a1;
  v2[4] = v1;
  v3 = v2[2];
  return MEMORY[0x2822009F8](sub_268EA7E10, 0);
}

uint64_t sub_268EA7E10()
{
  v16 = v0[5];
  v0[2] = v0;
  v13 = sub_268F9AEF4();
  v14 = v1;
  v0[7] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v15 = v2;
  *v2 = sub_268F9AEF4();
  v15[1] = v3;

  if (v16)
  {
    v11 = v12[5];
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
  v12[8] = v9;
  v10 = (MEMORY[0x277D55C68] + *MEMORY[0x277D55C68]);
  v4 = *(MEMORY[0x277D55C68] + 4);
  v5 = swift_task_alloc();
  v12[9] = v5;
  v6 = sub_268EA7C78();
  *v5 = v12[2];
  v5[1] = sub_268DE5AA8;
  v7 = v12[6];

  return v10(v13, v14, v9, &unk_287994388, v6);
}

uint64_t sub_268EA8044(char a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 80) = v5;
  *(v6 + 72) = a5;
  *(v6 + 64) = a4;
  *(v6 + 56) = a3;
  *(v6 + 122) = a2 & 1;
  *(v6 + 121) = a1 & 1;
  *(v6 + 16) = v6;
  *(v6 + 120) = 0;
  *(v6 + 128) = 0;
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  *(v6 + 40) = 0;
  *(v6 + 48) = 0;
  *(v6 + 120) = a1 & 1;
  *(v6 + 128) = a2 & 1;
  *(v6 + 24) = a3;
  *(v6 + 32) = a4;
  *(v6 + 40) = a5;
  *(v6 + 48) = v5;
  v7 = *(v6 + 16);
  return MEMORY[0x2822009F8](sub_268EA80F4, 0);
}

uint64_t sub_268EA80F4()
{
  v26 = *(v0 + 56);
  v24 = *(v0 + 122);
  v22 = *(v0 + 121);
  *(v0 + 16) = v0;
  v20 = sub_268F9AEF4();
  v21 = v1;
  *(v0 + 88) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v25 = v2;
  *v2 = sub_268F9AEF4();
  v25[1] = v3;
  v23 = MEMORY[0x277D839B0];
  v25[5] = MEMORY[0x277D839B0];
  *(v25 + 16) = v22;
  v25[6] = sub_268F9AEF4();
  v25[7] = v4;
  v25[11] = v23;
  *(v25 + 64) = v24;
  v25[12] = sub_268F9AEF4();
  v25[13] = v5;

  if (v26)
  {
    v18 = v19[7];
    v25[17] = type metadata accessor for SettingsNumericSetting();
    v25[14] = v18;
  }

  else
  {
    v25[14] = 0;
    v25[15] = 0;
    v25[16] = 0;
    v25[17] = 0;
  }

  v17 = v19[8];
  v25[18] = sub_268F9AEF4();
  v25[19] = v6;

  if (v17)
  {
    v16 = v19[8];
    v25[23] = type metadata accessor for SettingsNumericSettingAction();
    v25[20] = v16;
  }

  else
  {
    v25[20] = 0;
    v25[21] = 0;
    v25[22] = 0;
    v25[23] = 0;
  }

  v15 = v19[9];
  v25[24] = sub_268F9AEF4();
  v25[25] = v7;

  if (v15)
  {
    v14 = v19[9];
    v25[29] = sub_268F9AA44();
    v25[26] = v14;
  }

  else
  {
    v25[26] = 0;
    v25[27] = 0;
    v25[28] = 0;
    v25[29] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v12 = sub_268F9B4F4();
  v19[12] = v12;
  v13 = (MEMORY[0x277D55C70] + *MEMORY[0x277D55C70]);
  v8 = *(MEMORY[0x277D55C70] + 4);
  v9 = swift_task_alloc();
  v19[13] = v9;
  *v9 = v19[2];
  v9[1] = sub_268EA85A0;
  v10 = v19[10];

  return v13(v20, v21, v12);
}

uint64_t sub_268EA85A0(uint64_t a1)
{
  v10 = *v2;
  v3 = *(*v2 + 104);
  v10[2] = *v2;
  v11 = v10 + 2;
  v10[14] = v1;

  if (v1)
  {
    v7 = *v11;

    return MEMORY[0x2822009F8](sub_268EA8794, 0);
  }

  else
  {
    v4 = v10[12];
    v8 = v10[11];

    v5 = *(*v11 + 8);

    return v5(a1);
  }
}

uint64_t sub_268EA8794()
{
  v1 = v0[12];
  v7 = v0[11];
  v0[2] = v0;

  v2 = v0;
  v3 = *(v0[2] + 8);
  v4 = v0[2];
  v5 = v2[14];

  return v3();
}

uint64_t sub_268EA8858()
{
  sub_268F9B734();
  *v0 = "all1#first1#dialog1";
  *(v0 + 8) = 19;
  *(v0 + 16) = 2;
  *(v0 + 24) = "all1#first1#dialog2";
  *(v0 + 32) = 19;
  *(v0 + 40) = 2;
  *(v0 + 48) = "all1#first1#dialog3";
  *(v0 + 56) = 19;
  *(v0 + 64) = 2;
  *(v0 + 72) = "all1#first1#dialog4";
  *(v0 + 80) = 19;
  *(v0 + 88) = 2;
  *(v0 + 96) = "all1#first1#dialog5";
  *(v0 + 104) = 19;
  *(v0 + 112) = 2;
  *(v0 + 120) = "all1#first1#dialog6";
  *(v0 + 128) = 19;
  *(v0 + 136) = 2;
  *(v0 + 144) = "first1#dialog1";
  *(v0 + 152) = 14;
  *(v0 + 160) = 2;
  *(v0 + 168) = "first1#dialog2";
  *(v0 + 176) = 14;
  *(v0 + 184) = 2;
  *(v0 + 192) = "first1#dialog3";
  *(v0 + 200) = 14;
  *(v0 + 208) = 2;
  *(v0 + 216) = "first1#dialog4";
  *(v0 + 224) = 14;
  *(v0 + 232) = 2;
  *(v0 + 240) = "first1#dialog5";
  *(v0 + 248) = 14;
  *(v0 + 256) = 2;
  *(v0 + 264) = "first2#dialog1";
  *(v0 + 272) = 14;
  *(v0 + 280) = 2;
  *(v0 + 288) = "first2#dialog2";
  *(v0 + 296) = 14;
  *(v0 + 304) = 2;
  *(v0 + 312) = "first2#dialog3";
  *(v0 + 320) = 14;
  *(v0 + 328) = 2;
  *(v0 + 336) = "first2#dialog4";
  *(v0 + 344) = 14;
  *(v0 + 352) = 2;
  *(v0 + 360) = "first2#dialog5";
  *(v0 + 368) = 14;
  *(v0 + 376) = 2;
  sub_268CD0F7C();
  v4 = sub_268F9B5C4();

  switch(v4)
  {
    case 0:
      v3 = 0;
LABEL_34:

      return v3;
    case 1:
      v3 = 1;
      goto LABEL_34;
    case 2:
      v3 = 2;
      goto LABEL_34;
    case 3:
      v3 = 3;
      goto LABEL_34;
    case 4:
      v3 = 4;
      goto LABEL_34;
    case 5:
      v3 = 5;
      goto LABEL_34;
    case 6:
      v3 = 6;
      goto LABEL_34;
    case 7:
      v3 = 7;
      goto LABEL_34;
    case 8:
      v3 = 8;
      goto LABEL_34;
    case 9:
      v3 = 9;
      goto LABEL_34;
    case 10:
      v3 = 10;
      goto LABEL_34;
    case 11:
      v3 = 11;
      goto LABEL_34;
    case 12:
      v3 = 12;
      goto LABEL_34;
    case 13:
      v3 = 13;
      goto LABEL_34;
    case 14:
      v3 = 14;
      goto LABEL_34;
    case 15:
      v3 = 15;
      goto LABEL_34;
  }

  return 16;
}

unint64_t sub_268EA9080()
{
  v2 = qword_2802DDCD0;
  if (!qword_2802DDCD0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDCD0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268EA91CC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = sub_268EA8858();
  *a2 = result;
  return result;
}

uint64_t sub_268EA9204@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  result = sub_268EA8D54();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_268EA9238(char a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 80) = v5;
  *(v6 + 72) = a5;
  *(v6 + 64) = a4;
  *(v6 + 56) = a3;
  *(v6 + 122) = a2 & 1;
  *(v6 + 121) = a1 & 1;
  *(v6 + 16) = v6;
  *(v6 + 120) = 0;
  *(v6 + 128) = 0;
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  *(v6 + 40) = 0;
  *(v6 + 48) = 0;
  *(v6 + 120) = a1 & 1;
  *(v6 + 128) = a2 & 1;
  *(v6 + 24) = a3;
  *(v6 + 32) = a4;
  *(v6 + 40) = a5;
  *(v6 + 48) = v5;
  v7 = *(v6 + 16);
  return MEMORY[0x2822009F8](sub_268EA92E8, 0);
}

uint64_t sub_268EA92E8()
{
  v27 = *(v0 + 56);
  v25 = *(v0 + 122);
  v23 = *(v0 + 121);
  *(v0 + 16) = v0;
  v21 = sub_268F9AEF4();
  v22 = v1;
  *(v0 + 88) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v26 = v2;
  *v2 = sub_268F9AEF4();
  v26[1] = v3;
  v24 = MEMORY[0x277D839B0];
  v26[5] = MEMORY[0x277D839B0];
  *(v26 + 16) = v23;
  v26[6] = sub_268F9AEF4();
  v26[7] = v4;
  v26[11] = v24;
  *(v26 + 64) = v25;
  v26[12] = sub_268F9AEF4();
  v26[13] = v5;

  if (v27)
  {
    v19 = v20[7];
    v26[17] = type metadata accessor for SettingsNumericSetting();
    v26[14] = v19;
  }

  else
  {
    v26[14] = 0;
    v26[15] = 0;
    v26[16] = 0;
    v26[17] = 0;
  }

  v18 = v20[8];
  v26[18] = sub_268F9AEF4();
  v26[19] = v6;

  if (v18)
  {
    v17 = v20[8];
    v26[23] = type metadata accessor for SettingsNumericSettingAction();
    v26[20] = v17;
  }

  else
  {
    v26[20] = 0;
    v26[21] = 0;
    v26[22] = 0;
    v26[23] = 0;
  }

  v16 = v20[9];
  v26[24] = sub_268F9AEF4();
  v26[25] = v7;

  if (v16)
  {
    v15 = v20[9];
    v26[29] = sub_268F9AA44();
    v26[26] = v15;
  }

  else
  {
    v26[26] = 0;
    v26[27] = 0;
    v26[28] = 0;
    v26[29] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v13 = sub_268F9B4F4();
  v20[12] = v13;
  v14 = (MEMORY[0x277D55C68] + *MEMORY[0x277D55C68]);
  v8 = *(MEMORY[0x277D55C68] + 4);
  v9 = swift_task_alloc();
  v20[13] = v9;
  v10 = sub_268EA9080();
  *v9 = v20[2];
  v9[1] = sub_268EA85A0;
  v11 = v20[10];

  return v14(v21, v22, v13, &unk_287994418, v10);
}

uint64_t sub_268EA97AC(uint64_t a1, uint64_t a2)
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
  return MEMORY[0x2822009F8](sub_268EA9808, 0);
}

uint64_t sub_268EA9808()
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
    v17[11] = type metadata accessor for SettingsNumericSettingAction();
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

uint64_t sub_268EA9AF0()
{
  sub_268F9B734();
  *v0 = "first1#all1#first1#random1#dialog1";
  *(v0 + 8) = 34;
  *(v0 + 16) = 2;
  *(v0 + 24) = "first1#all1#first1#random1#dialog2";
  *(v0 + 32) = 34;
  *(v0 + 40) = 2;
  *(v0 + 48) = "first1#all1#first1#random2#dialog1";
  *(v0 + 56) = 34;
  *(v0 + 64) = 2;
  *(v0 + 72) = "first1#all1#first1#random2#dialog2";
  *(v0 + 80) = 34;
  *(v0 + 88) = 2;
  *(v0 + 96) = "first1#first1#dialog1";
  *(v0 + 104) = 21;
  *(v0 + 112) = 2;
  *(v0 + 120) = "first1#first1#dialog2";
  *(v0 + 128) = 21;
  *(v0 + 136) = 2;
  *(v0 + 144) = "first1#first2#dialog1";
  *(v0 + 152) = 21;
  *(v0 + 160) = 2;
  *(v0 + 168) = "first1#first2#dialog2";
  *(v0 + 176) = 21;
  *(v0 + 184) = 2;
  *(v0 + 192) = "first1#first2#first1#dialog1";
  *(v0 + 200) = 28;
  *(v0 + 208) = 2;
  *(v0 + 216) = "first1#first2#first1#dialog2";
  *(v0 + 224) = 28;
  *(v0 + 232) = 2;
  *(v0 + 240) = "first1#first2#first1#dialog3";
  *(v0 + 248) = 28;
  *(v0 + 256) = 2;
  sub_268CD0F7C();
  v4 = sub_268F9B5C4();

  switch(v4)
  {
    case 0:
      v3 = 0;
LABEL_24:

      return v3;
    case 1:
      v3 = 1;
      goto LABEL_24;
    case 2:
      v3 = 2;
      goto LABEL_24;
    case 3:
      v3 = 3;
      goto LABEL_24;
    case 4:
      v3 = 4;
      goto LABEL_24;
    case 5:
      v3 = 5;
      goto LABEL_24;
    case 6:
      v3 = 6;
      goto LABEL_24;
    case 7:
      v3 = 7;
      goto LABEL_24;
    case 8:
      v3 = 8;
      goto LABEL_24;
    case 9:
      v3 = 9;
      goto LABEL_24;
    case 10:
      v3 = 10;
      goto LABEL_24;
  }

  return 11;
}

unint64_t sub_268EAA190()
{
  v2 = qword_2802DDCD8;
  if (!qword_2802DDCD8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDCD8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268EAA2DC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = sub_268EA9AF0();
  *a2 = result;
  return result;
}

uint64_t sub_268EAA314@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  result = sub_268EA9E98();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_268EAA348(uint64_t a1, uint64_t a2)
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
  return MEMORY[0x2822009F8](sub_268EAA3A4, 0);
}

uint64_t sub_268EAA3A4()
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
    v18[11] = type metadata accessor for SettingsNumericSettingAction();
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
  v7 = sub_268EAA190();
  *v6 = v15[2];
  v6[1] = sub_268DF5A04;
  v8 = v15[8];

  return v11(v16, v17, v10, &unk_2879944A8, v7);
}

uint64_t sub_268EAA6A4(uint64_t a1)
{
  v2[6] = v1;
  v2[5] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[3] = a1;
  v2[4] = v1;
  v3 = v2[2];
  return MEMORY[0x2822009F8](sub_268EAA6F0, 0);
}

uint64_t sub_268EAA6F0()
{
  v15 = v0[5];
  v0[2] = v0;
  v12 = sub_268F9AEF4();
  v13 = v1;
  v0[7] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v14 = v2;
  *v2 = sub_268F9AEF4();
  v14[1] = v3;

  if (v15)
  {
    v10 = v11[5];
    v14[5] = sub_268F9AA44();
    v14[2] = v10;
  }

  else
  {
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = 0;
    v14[5] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v8 = sub_268F9B4F4();
  v11[8] = v8;
  v9 = (MEMORY[0x277D55C70] + *MEMORY[0x277D55C70]);
  v4 = *(MEMORY[0x277D55C70] + 4);
  v5 = swift_task_alloc();
  v11[9] = v5;
  *v5 = v11[2];
  v5[1] = sub_268DE5AA8;
  v6 = v11[6];

  return v9(v12, v13, v8);
}

unint64_t sub_268EAA958()
{
  v2 = qword_2802DDCE0;
  if (!qword_2802DDCE0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDCE0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268EAAAA4(uint64_t a1)
{
  v2[6] = v1;
  v2[5] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[3] = a1;
  v2[4] = v1;
  v3 = v2[2];
  return MEMORY[0x2822009F8](sub_268EAAAF0, 0);
}

uint64_t sub_268EAAAF0()
{
  v16 = v0[5];
  v0[2] = v0;
  v13 = sub_268F9AEF4();
  v14 = v1;
  v0[7] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v15 = v2;
  *v2 = sub_268F9AEF4();
  v15[1] = v3;

  if (v16)
  {
    v11 = v12[5];
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
  v12[8] = v9;
  v10 = (MEMORY[0x277D55C68] + *MEMORY[0x277D55C68]);
  v4 = *(MEMORY[0x277D55C68] + 4);
  v5 = swift_task_alloc();
  v12[9] = v5;
  v6 = sub_268EAA958();
  *v5 = v12[2];
  v5[1] = sub_268DE5AA8;
  v7 = v12[6];

  return v10(v13, v14, v9, &unk_287994538, v6);
}

uint64_t sub_268EAAD24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = v3;
  v4[9] = a3;
  v4[8] = a2;
  v4[7] = a1;
  v4[2] = v4;
  v4[3] = 0;
  v4[4] = 0;
  v4[5] = 0;
  v4[6] = 0;
  v4[3] = a1;
  v4[4] = a2;
  v4[5] = a3;
  v4[6] = v3;
  v5 = v4[2];
  return MEMORY[0x2822009F8](sub_268EAAD90, 0);
}

uint64_t sub_268EAAD90()
{
  v21 = v0[7];
  v0[2] = v0;
  v18 = sub_268F9AEF4();
  v19 = v1;
  v0[11] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v20 = v2;
  *v2 = sub_268F9AEF4();
  v20[1] = v3;

  if (v21)
  {
    v16 = v17[7];
    v20[5] = type metadata accessor for SettingsNumericSetting();
    v20[2] = v16;
  }

  else
  {
    v20[2] = 0;
    v20[3] = 0;
    v20[4] = 0;
    v20[5] = 0;
  }

  v15 = v17[8];
  v20[6] = sub_268F9AEF4();
  v20[7] = v4;

  if (v15)
  {
    v14 = v17[8];
    v20[11] = type metadata accessor for SettingsNumericSettingAction();
    v20[8] = v14;
  }

  else
  {
    v20[8] = 0;
    v20[9] = 0;
    v20[10] = 0;
    v20[11] = 0;
  }

  v13 = v17[9];
  v20[12] = sub_268F9AEF4();
  v20[13] = v5;

  if (v13)
  {
    v12 = v17[9];
    v20[17] = sub_268F9AA44();
    v20[14] = v12;
  }

  else
  {
    v20[14] = 0;
    v20[15] = 0;
    v20[16] = 0;
    v20[17] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v10 = sub_268F9B4F4();
  v17[12] = v10;
  v11 = (MEMORY[0x277D55C70] + *MEMORY[0x277D55C70]);
  v6 = *(MEMORY[0x277D55C70] + 4);
  v7 = swift_task_alloc();
  v17[13] = v7;
  *v7 = v17[2];
  v7[1] = sub_268DF69EC;
  v8 = v17[10];

  return v11(v18, v19, v10);
}

uint64_t sub_268EAB15C()
{
  sub_268F9B734();
  *v0 = "dialog1";
  *(v0 + 8) = 7;
  *(v0 + 16) = 2;
  *(v0 + 24) = "dialog2";
  *(v0 + 32) = 7;
  *(v0 + 40) = 2;
  sub_268CD0F7C();
  v4 = sub_268F9B5C4();

  if (!v4)
  {
    v3 = 0;
LABEL_6:

    return v3;
  }

  if (v4 == 1)
  {
    v3 = 1;
    goto LABEL_6;
  }

  return 2;
}

unint64_t sub_268EAB368()
{
  v2 = qword_2802DDCE8;
  if (!qword_2802DDCE8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDCE8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268EAB4B4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = sub_268EAB15C();
  *a2 = result;
  return result;
}

uint64_t sub_268EAB4EC@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  result = sub_268EAB290();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_268EAB524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = v3;
  v4[9] = a3;
  v4[8] = a2;
  v4[7] = a1;
  v4[2] = v4;
  v4[3] = 0;
  v4[4] = 0;
  v4[5] = 0;
  v4[6] = 0;
  v4[3] = a1;
  v4[4] = a2;
  v4[5] = a3;
  v4[6] = v3;
  v5 = v4[2];
  return MEMORY[0x2822009F8](sub_268EAB590, 0);
}

uint64_t sub_268EAB590()
{
  v22 = v0[7];
  v0[2] = v0;
  v19 = sub_268F9AEF4();
  v20 = v1;
  v0[11] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v21 = v2;
  *v2 = sub_268F9AEF4();
  v21[1] = v3;

  if (v22)
  {
    v17 = v18[7];
    v21[5] = type metadata accessor for SettingsNumericSetting();
    v21[2] = v17;
  }

  else
  {
    v21[2] = 0;
    v21[3] = 0;
    v21[4] = 0;
    v21[5] = 0;
  }

  v16 = v18[8];
  v21[6] = sub_268F9AEF4();
  v21[7] = v4;

  if (v16)
  {
    v15 = v18[8];
    v21[11] = type metadata accessor for SettingsNumericSettingAction();
    v21[8] = v15;
  }

  else
  {
    v21[8] = 0;
    v21[9] = 0;
    v21[10] = 0;
    v21[11] = 0;
  }

  v14 = v18[9];
  v21[12] = sub_268F9AEF4();
  v21[13] = v5;

  if (v14)
  {
    v13 = v18[9];
    v21[17] = sub_268F9AA44();
    v21[14] = v13;
  }

  else
  {
    v21[14] = 0;
    v21[15] = 0;
    v21[16] = 0;
    v21[17] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v11 = sub_268F9B4F4();
  v18[12] = v11;
  v12 = (MEMORY[0x277D55C68] + *MEMORY[0x277D55C68]);
  v6 = *(MEMORY[0x277D55C68] + 4);
  v7 = swift_task_alloc();
  v18[13] = v7;
  v8 = sub_268EAB368();
  *v7 = v18[2];
  v7[1] = sub_268DF69EC;
  v9 = v18[10];

  return v12(v19, v20, v11, &unk_2879945C8, v8);
}

uint64_t type metadata accessor for SetNumericSettingIntentCATsSimple()
{
  v1 = qword_2802DDCF0;
  if (!qword_2802DDCF0)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_268EAB9E8()
{
  inited = swift_initClassMetadata2();
  if (!inited)
  {
    return 0;
  }

  return inited;
}

uint64_t sub_268EABA58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  return sub_268EABAB4(a1, a2, a3);
}

uint64_t sub_268EABAB4(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_268EABC98(char a1, uint64_t a2)
{
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  return sub_268EABCF0(a1 & 1, a2);
}

uint64_t sub_268EABCF0(int a1, uint64_t a2)
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

uint64_t sub_268EABE60(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xEC)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 19) >> 8) + 1;
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
      v5 = (*a1 | ((v6 - 1) << 8)) + 236;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 20;
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

_BYTE *sub_268EABFC8(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xEC)
  {
    v5 = ((a3 + 19) >> 8) + 1;
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

  if (a2 > 0xEC)
  {
    v4 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
      *result = a2 + 19;
    }
  }

  return result;
}

unint64_t sub_268EAC27C()
{
  v2 = qword_2802DDD00;
  if (!qword_2802DDD00)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDD00);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268EAC310()
{
  v2 = qword_2802DDD08;
  if (!qword_2802DDD08)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDD08);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268EAC3A4()
{
  v2 = qword_2802DDD10;
  if (!qword_2802DDD10)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDD10);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268EAC438()
{
  v2 = qword_2802DDD18;
  if (!qword_2802DDD18)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDD18);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268EAC4CC()
{
  v2 = qword_2802DDD20;
  if (!qword_2802DDD20)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDD20);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268EAC560()
{
  v2 = qword_2802DDD28;
  if (!qword_2802DDD28)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDD28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268EAC5F4()
{
  v2 = qword_2802DDD30;
  if (!qword_2802DDD30)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDD30);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268EAC688()
{
  v2 = qword_2802DDD38;
  if (!qword_2802DDD38)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDD38);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268EAC71C()
{
  v2 = qword_2802DDD40;
  if (!qword_2802DDD40)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDD40);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_268EAC798()
{
  if (qword_280FE6688 != -1)
  {
    swift_once();
  }

  return &qword_280FE8390;
}

uint64_t sub_268EAC810()
{
  type metadata accessor for GetSiriVolumeHandler();
  v2 = sub_268CDC590();
  v0 = sub_268EAC890();
  result = sub_268EAC8C0(v2, v0, 1);
  qword_280FE8390 = result;
  return result;
}

uint64_t sub_268EAC890()
{
  v1 = *sub_268E8F370();

  return v1;
}

uint64_t sub_268EAC920()
{
  v1 = *sub_268EAC798();

  return v1;
}

uint64_t sub_268EAC950(uint64_t a1, uint64_t a2, char a3)
{

  *(v3 + 16) = a1;

  *(v3 + 24) = a2;
  *(v3 + 32) = a3;

  return v8;
}

double sub_268EAC9E4(uint64_t a1, uint64_t a2, uint64_t a3)
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
  v5 = sub_268DBBA14();
  v9 = *v5;
  v13 = v5[1];
  v14 = *(v5 + 16);
  v6 = sub_268DC7AE8();
  v15 = *v6;
  MEMORY[0x277D82BE0](*v6);
  v16 = *(v3 + 32);

  MEMORY[0x277D82BE0](a1);

  v18 = v3;
  v19 = a1;
  v20 = a2;
  v21 = a3;
  sub_268DB944C(v9, v13, v14, v15, v16 & 1, sub_268EACC94, v17, MEMORY[0x277D84F78] + 8, v3);

  MEMORY[0x277D82BD8](a1);

  *&result = MEMORY[0x277D82BD8](v15).n128_u64[0];
  return result;
}

uint64_t sub_268EACBFC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v4 = *(a1 + 16);

  v6 = sub_268D3BC60();

  return sub_268EADD7C(a2, a3, v6);
}

uint64_t sub_268EACCC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_268F9B284();
  v4 = sub_268DC7AE8();
  v6 = *v4;
  MEMORY[0x277D82BE0](*v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v6);
  v12 = *(v3 + 16);

  MEMORY[0x277D82BE0](a1);
  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = v9;
  v11[5] = a1;
  sub_268D46844(sub_268EAD19C, v11);
}

uint64_t sub_268EACE58(void *a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  MEMORY[0x277D82BE0](a1);
  if (a1)
  {
    [a1 floatValue];
    v17 = v5;
    MEMORY[0x277D82BD8](a1);
    v18 = v17;
    v19 = 0;
  }

  else
  {
    v18 = 0.0;
    v19 = 1;
  }

  if (v19)
  {
    sub_268F9B294();
    v10 = sub_268DC7AE8();
    v11 = *v10;
    MEMORY[0x277D82BE0](*v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v11);

    sub_268E948B8();
    v12 = sub_268E41B70();

    (a2)(v12);
    MEMORY[0x277D82BD8](v12);
  }

  else
  {
    sub_268F9B284();
    v6 = sub_268DC7AE8();
    v16 = *v6;
    MEMORY[0x277D82BE0](*v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v15 = v7;
    MEMORY[0x277D82BE0](a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC410, &qword_268F9E2B0);
    v13 = sub_268F9AE64();
    v14 = v8;
    v15[3] = MEMORY[0x277D837D0];
    v15[4] = sub_268CDD224();
    *v15 = v13;
    v15[1] = v14;
    sub_268CD0F7C();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v16);
    return sub_268EADD7C(a5, a2, v18);
  }
}

uint64_t sub_268EAD1B0(uint64_t a1)
{
  *(v2 + 64) = v1;
  *(v2 + 56) = a1;
  *(v2 + 16) = v2;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 104) = 0;
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  v3 = *(v2 + 16);
  return MEMORY[0x2822009F8](sub_268EAD208, 0);
}

uint64_t sub_268EAD208()
{
  v5 = v0[8];
  v0[2] = v0;
  sub_268F9B284();
  v1 = sub_268DC7AE8();
  v4 = *v1;
  MEMORY[0x277D82BE0](*v1);
  v0[9] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v4);
  v0[10] = *(v5 + 16);

  v2 = swift_task_alloc();
  *(v6 + 88) = v2;
  *v2 = *(v6 + 16);
  v2[1] = sub_268EAD368;

  return sub_268D46DDC();
}

uint64_t sub_268EAD368(uint64_t a1)
{
  v7 = *v1;
  v3 = *(*v1 + 88);
  v6 = *(*v1 + 80);
  *(v7 + 16) = *v1;
  *(v7 + 96) = a1;

  v4 = *(v7 + 16);

  return MEMORY[0x2822009F8](sub_268EAD4A4, 0);
}

uint64_t sub_268EAD4A4()
{
  v29 = v0[12];
  v0[2] = v0;
  v0[5] = v29;
  MEMORY[0x277D82BE0](v29);
  if (v29)
  {
    v24 = *(v28 + 96);
    [v24 floatValue];
    v25 = v1;
    MEMORY[0x277D82BD8](v24);
    v26 = v25;
    v27 = 0;
  }

  else
  {
    v26 = 0.0;
    v27 = 1;
  }

  if (v27)
  {
    v13 = *(v28 + 96);
    v11 = *(v28 + 72);
    sub_268F9B294();
    v7 = sub_268DC7AE8();
    v12 = *v7;
    MEMORY[0x277D82BE0](*v7);
    sub_268F9B734();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v12);
    sub_268E948B8();
    v14 = sub_268E41B70();

    v6 = MEMORY[0x277D82BD8](v13);
    v23 = v14;
  }

  else
  {
    v21 = *(v28 + 96);
    v18 = *(v28 + 72);
    v2 = *(v28 + 64);
    v20 = *(v28 + 56);
    *(v28 + 104) = v26;
    sub_268F9B284();
    v3 = sub_268DC7AE8();
    v19 = *v3;
    MEMORY[0x277D82BE0](*v3);
    sub_268F9B734();
    v17 = v4;
    MEMORY[0x277D82BE0](v21);
    *(v28 + 48) = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC410, &qword_268F9E2B0);
    v15 = sub_268F9AE64();
    v16 = v5;
    v17[3] = MEMORY[0x277D837D0];
    v17[4] = sub_268CDD224();
    *v17 = v15;
    v17[1] = v16;
    sub_268CD0F7C();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v19);
    v22 = sub_268EADE24(v20, v26);
    v6 = MEMORY[0x277D82BD8](v21);
    v23 = v22;
  }

  v8 = *(*(v28 + 16) + 8);
  v9 = *(v28 + 16);

  return v8(v23, v6);
}

float sub_268EAD884(float a1)
{
  v5[1] = a1;
  v19 = 0;
  v18 = 0;
  v13 = sub_268F9B6F4();
  v11 = *(v13 - 8);
  v12 = v13 - 8;
  v7 = *(v11 + 64);
  v6 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v13);
  v14 = v5 - v6;
  v8 = v6;
  v2 = MEMORY[0x28223BE20](v5 - v6);
  v10 = v5 - v8;
  v19 = LODWORD(v2);
  v18 = v1;
  v9 = *&v2 / 0.05;
  v15 = MEMORY[0x277D84678];
  v3 = *MEMORY[0x277D84678];
  (*(v11 + 104))();
  v17 = v9;
  (*(v11 + 16))(v14, v10, v13);
  v16 = (*(v11 + 88))(v14, v13);
  if (v16 == *v15)
  {
    v17 = roundf(v9);
    goto LABEL_15;
  }

  if (v16 == *MEMORY[0x277D84670])
  {
    v17 = rintf(v9);
    goto LABEL_15;
  }

  if (v16 == *MEMORY[0x277D84680])
  {
LABEL_12:
    v17 = ceilf(v9);
    goto LABEL_15;
  }

  if (v16 == *MEMORY[0x277D84688])
  {
LABEL_14:
    v17 = floorf(v9);
    goto LABEL_15;
  }

  if (v16 == *MEMORY[0x277D84660])
  {
    v17 = truncf(v9);
    goto LABEL_15;
  }

  if (v16 == *MEMORY[0x277D84668])
  {
    if ((sub_268F9B154() & 1) != 1)
    {
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  sub_268F9B144();
  (*(v11 + 8))(v14, v13);
LABEL_15:
  v5[0] = v17;
  (*(v11 + 8))(v10, v13);
  return v5[0] * 0.05;
}

BOOL sub_268EADBD0()
{
  v17 = 0;
  v9 = sub_268F99214();
  v10 = *(v9 - 8);
  v11 = v9 - 8;
  v12 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v9);
  v13 = &v2 - v12;
  v17 = v0;
  v14 = *(v0 + 16);

  v16 = sub_268D44174();

  if (v16)
  {
    v6 = *(v15 + 16);

    v7 = sub_268D443B4();

    v8 = v7;
  }

  else
  {
    v8 = 1;
  }

  v5 = v8;

  if (v5)
  {
    return 0;
  }

  else
  {
    v2 = *(v15 + 24);

    sub_268EAC7F8();
    v3 = sub_268E90658(v13);
    (*(v10 + 8))(v13, v9);

    return v3;
  }
}

uint64_t sub_268EADD7C(uint64_t a1, void (*a2)(void), float a3)
{

  v7 = sub_268EADE24(a1, a3);
  a2();
  MEMORY[0x277D82BD8](v7);
}

id sub_268EADE24(uint64_t a1, float a2)
{
  v35 = a1;
  v41 = a2;
  v34 = "Sending back response %@";
  v56 = 0;
  v55 = 0;
  v54 = 0;
  v52 = 0;
  v39 = 0;
  v47 = sub_268F9B6F4();
  v45 = *(v47 - 8);
  v46 = v47 - 8;
  v36 = (*(v45 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v35);
  v48 = v18 - v36;
  v37 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v4);
  v44 = v18 - v37;
  v56 = v6;
  v55 = LODWORD(v5);
  v54 = v2;
  v38 = [v6 settingMetadata];
  v40 = sub_268DD26C8();
  v42 = sub_268D34FD4();
  v43 = sub_268E5587C(v41);
  v49 = MEMORY[0x277D84678];
  (*(v45 + 104))(v44, *MEMORY[0x277D84678], v47);
  v53 = v43;
  (*(v45 + 16))(v48, v44, v47);
  v50 = (*(v45 + 88))(v48, v47);
  if (v50 == *v49)
  {
    v53 = roundf(v43);
    goto LABEL_15;
  }

  if (v50 == *MEMORY[0x277D84670])
  {
    v53 = rintf(v43);
    goto LABEL_15;
  }

  if (v50 == *MEMORY[0x277D84680])
  {
LABEL_12:
    v53 = ceilf(v43);
    goto LABEL_15;
  }

  if (v50 == *MEMORY[0x277D84688])
  {
LABEL_14:
    v53 = floorf(v43);
    goto LABEL_15;
  }

  if (v50 == *MEMORY[0x277D84660])
  {
    v53 = truncf(v43);
    goto LABEL_15;
  }

  if (v50 == *MEMORY[0x277D84668])
  {
    if ((sub_268F9B154() & 1) != 1)
    {
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  sub_268F9B144();
  (*(v45 + 8))(v48, v47);
LABEL_15:
  *&v18[3] = v53;
  (*(v45 + 8))(v44, v47);
  v7 = sub_268EAE3A8();
  v21 = 1;
  v20 = sub_268E3E3F0(v7);
  v19 = sub_268D4AA1C();
  v8 = sub_268D4AA1C();
  v22 = 0;
  v33 = sub_268E41A08(v38, v20, v19, v8, 0, 0);
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](v38);
  v52 = v33;
  v30 = sub_268F9B284();
  v32 = *sub_268DC7AE8();
  MEMORY[0x277D82BE0](v32);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v29 = sub_268F9B734();
  v27 = v9;
  MEMORY[0x277D82BE0](v33);
  v24 = &v51;
  v51 = v33;
  v23 = sub_268CDD0DC();
  sub_268CDD1A4();
  v25 = sub_268F9AE74();
  v26 = v10;
  v27[3] = MEMORY[0x277D837D0];
  v11 = sub_268CDD224();
  v12 = v25;
  v13 = v26;
  v14 = v27;
  v15 = v11;
  v16 = v29;
  v27[4] = v15;
  *v14 = v12;
  v14[1] = v13;
  sub_268CD0F7C();
  v31 = v16;
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v32);
  return v33;
}

uint64_t sub_268EAE3E8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v4;
}

uint64_t *sub_268EAE4B0()
{
  if (qword_2802DB780 != -1)
  {
    swift_once();
  }

  return &qword_2802F1600;
}

uint64_t sub_268EAE510()
{
  type metadata accessor for SetBinarySettingNLContextProvider();
  result = sub_268D592B0();
  qword_2802F1600 = result;
  return result;
}

uint64_t type metadata accessor for SetBinarySettingNLContextProvider()
{
  v1 = qword_2802DDD48;
  if (!qword_2802DDD48)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_268EAE5B8()
{
  v1 = *sub_268EAE4B0();

  return v1;
}

uint64_t sub_268EAE5E8(void *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v13 = a1;
  v14 = a2;
  v15 = a3;
  v17 = a4;
  v22 = 0;
  v21 = 0;
  v19 = 0;
  v20 = 0;
  v18 = 0;
  v12 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2B0, &unk_268F9E0C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v17);
  v16 = &v11 - v12;
  v22 = v5;
  v21 = v6;
  v19 = v7;
  v20 = v8;
  v18 = v4;

  sub_268EAE738(v13, v14, v16);
  v9 = sub_268F999A4();
  (*(*(v9 - 8) + 56))(v16, 0, 1);
  v15(v16);
  sub_268D34AC0(v16);
}

uint64_t sub_268EAE738@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v59 = a3;
  v89 = a1;
  v69 = a2;
  v60 = "Forming NL Context update for confirmation. Intent: %@, Update: %@";
  v97 = 0;
  v96 = 0;
  v95 = 0;
  v94 = 0;
  v93 = 0;
  v91 = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC5C8, &qword_268F9F530);
  v61 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v62 = v45 - v61;
  v63 = 0;
  v64 = sub_268F9ACE4();
  v65 = *(v64 - 8);
  v66 = v64 - 8;
  v67 = (*(v65 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v63);
  v68 = v45 - v67;
  v97 = v45 - v67;
  v70 = sub_268F999A4();
  v71 = *(v70 - 8);
  v72 = v70 - 8;
  v74 = *(v71 + 64);
  v73 = (v74 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v89);
  v75 = v45 - v73;
  v76 = (v74 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v4);
  v88 = v45 - v76;
  v96 = v45 - v76;
  v95 = v5;
  v94 = v6;
  v93 = v7;
  sub_268F99994();
  v82 = 1;
  sub_268F9AEF4();
  sub_268F99964();
  sub_268F99944();
  v79 = 1;
  v87 = MEMORY[0x277D837D0];
  v78 = sub_268F9B734();
  v77 = v8;
  v83 = "com.apple.siri.nl.SettingConfirmation.Value.CANCEL";
  v84 = 50;
  v9 = sub_268F9AEF4();
  v10 = v77;
  *v77 = v9;
  v10[1] = v11;
  sub_268CD0F7C();
  sub_268F99954();
  v81 = sub_268F9B734();
  v80 = v12;
  v13 = sub_268F9AEF4();
  v14 = v80;
  *v80 = v13;
  v14[1] = v15;
  sub_268CD0F7C();
  sub_268F99984();
  v86 = sub_268F9B734();
  v85 = v16;
  v17 = sub_268F9AEF4();
  v18 = v85;
  *v85 = v17;
  v18[1] = v19;
  v20 = sub_268F9AEF4();
  v21 = v85;
  v85[2] = v20;
  v21[3] = v22;
  v23 = sub_268F9AEF4();
  v24 = v85;
  v85[4] = v23;
  v24[5] = v25;
  sub_268CD0F7C();
  sub_268F99974();
  sub_268F27D28();
  sub_268F99924();
  v90 = [v89 settingMetadata];
  if (v90)
  {
    v58 = v90;
    v57 = v90;
    v91 = v90;
    sub_268E5B124(v62);
    if ((*(v65 + 48))(v62, 1, v64) == 1)
    {
      sub_268D59D2C(v62);
    }

    else
    {
      (*(v65 + 32))(v68, v62, v64);
      v56 = sub_268F9B734();
      (*(v65 + 16))(v26, v68, v64);
      sub_268CD0F7C();
      sub_268F99914();
      (*(v65 + 8))(v68, v64);
    }

    MEMORY[0x277D82BD8](v57);
  }

  v53 = sub_268F9B284();
  v55 = *sub_268DC7DE8();
  MEMORY[0x277D82BE0](v55);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v51 = sub_268F9B734();
  v50 = v27;
  MEMORY[0x277D82BE0](v89);
  v45[2] = &v92;
  v92 = v89;
  v45[1] = sub_268CD7620();
  sub_268D28940();
  v46 = sub_268F9AE74();
  v47 = v28;
  v48 = MEMORY[0x277D837D0];
  v50[3] = MEMORY[0x277D837D0];
  v29 = sub_268CDD224();
  v30 = v46;
  v31 = v47;
  v32 = v50;
  v33 = v71;
  v34 = v88;
  v35 = v70;
  v36 = v29;
  v37 = v75;
  v49 = v36;
  v50[4] = v36;
  *v32 = v30;
  v32[1] = v31;
  (*(v33 + 16))(v37, v34, v35);
  v38 = sub_268F9AE64();
  v39 = v49;
  v40 = v50;
  v41 = v38;
  v42 = v51;
  v50[8] = v48;
  v40[9] = v39;
  v40[5] = v41;
  v40[6] = v43;
  sub_268CD0F7C();
  v54 = v42;
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v55);
  return (*(v71 + 32))(v59, v88, v70);
}

uint64_t sub_268EAEF28(void *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v39 = a1;
  v33 = a2;
  v31 = a3;
  v32 = a4;
  v20 = "There was no setting ID to donate in makeContextForHandleIntent.";
  v48 = 0;
  v47 = 0;
  v46 = 0;
  v45 = 0;
  v43 = 0;
  v44 = 0;
  v42 = 0;
  v41 = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2B0, &unk_268F9E0C0);
  v21 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v22 = v14 - v21;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC5C8, &qword_268F9F530);
  v23 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v24 = v14 - v23;
  v25 = 0;
  v26 = sub_268F9ACE4();
  v27 = *(v26 - 8);
  v28 = v26 - 8;
  v29 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v25);
  v30 = v14 - v29;
  v48 = v14 - v29;
  v34 = sub_268F999A4();
  v35 = *(v34 - 8);
  v36 = v34 - 8;
  v37 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v39);
  v38 = v14 - v37;
  v47 = v14 - v37;
  v46 = v7;
  v45 = v8;
  v43 = v9;
  v44 = v10;
  v42 = v4;
  sub_268F99994();
  v40 = [v39 settingMetadata];
  if (v40)
  {
    v19 = v40;
    v18 = v40;
    v41 = v40;
    sub_268E5B124(v24);
    if ((*(v27 + 48))(v24, 1, v26) != 1)
    {
      (*(v27 + 32))(v30, v24, v26);
      v17 = sub_268F9B734();
      (*(v27 + 16))(v11, v30, v26);
      sub_268CD0F7C();
      sub_268F99914();

      (*(v35 + 16))(v22, v38, v34);
      (*(v35 + 56))(v22, 0, 1, v34);
      v31(v22);
      sub_268D34AC0(v22);

      (*(v27 + 8))(v30, v26);
      v12 = MEMORY[0x277D82BD8](v18);
      return (*(v35 + 8))(v38, v34, v12);
    }

    sub_268D59D2C(v24);
    MEMORY[0x277D82BD8](v18);
  }

  v14[3] = sub_268F9B284();
  v16 = *sub_268DC7DE8();
  MEMORY[0x277D82BE0](v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v15 = sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v16);

  (*(v35 + 56))(v22, 1, 1, v34);
  v31(v22);
  sub_268D34AC0(v22);

  return (*(v35 + 8))(v38, v34);
}

uint64_t sub_268EAF4D8()
{
  inited = swift_initClassMetadata2();
  if (!inited)
  {
    return 0;
  }

  return inited;
}

id sub_268EAF564(uint64_t a1, uint64_t *a2)
{
  v21 = a1;
  v20 = a2;
  sub_268E42694(&v18);
  if (v18 == 65)
  {
    v13 = 0uLL;
  }

  else
  {
    *&v13 = BinarySettingIdentifier.rawValue.getter();
    *(&v13 + 1) = v2;
  }

  v17 = v13;
  if (*(&v13 + 1))
  {
    v19 = v17;
  }

  else
  {
    sub_268E4262C();
    if (v16 == 13)
    {
      v19 = 0uLL;
    }

    else
    {
      *&v19 = NumericSettingIdentifier.rawValue.getter();
      *(&v19 + 1) = v3;
    }
  }

  v12 = v19;
  if (sub_268E49138() == 16)
  {
    v10 = 0;
    v11 = 0;
  }

  else
  {
    v10 = sub_268E42B68();
    v11 = v4;
  }

  v8 = sub_268F2B6D8(v10, v11);

  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = sub_268F284EC(v12, *(&v12 + 1), a2, 0, v8);
  sub_268D2E630();
  v9 = [v6 initWithSettingMetadata:v7 confirmationValue:sub_268EAF80C()];
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BE0](v9);
  v22 = v9;
  MEMORY[0x277D82BD8](v8);

  sub_268D28414(a2);
  sub_268D87800(a1);
  MEMORY[0x277D82BD8](v22);
  return v9;
}

uint64_t sub_268EAF80C()
{
  v2 = sub_268E48F04();
  if (v2 == 2)
  {
    return 0;
  }

  if (v2)
  {
    return 2;
  }

  return 1;
}

SiriSettingsIntents::NumericSettingIdentifier_optional __swiftcall NumericSettingIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v4 = v1;
  sub_268F9B734();
  *v2 = "battery";
  *(v2 + 8) = 7;
  *(v2 + 16) = 2;
  *(v2 + 24) = "brightness";
  *(v2 + 32) = 10;
  *(v2 + 40) = 2;
  *(v2 + 48) = "displayBrightness";
  *(v2 + 56) = 17;
  *(v2 + 64) = 2;
  *(v2 + 72) = "mediaType";
  *(v2 + 80) = 9;
  *(v2 + 88) = 2;
  *(v2 + 96) = "mute";
  *(v2 + 104) = 4;
  *(v2 + 112) = 2;
  *(v2 + 120) = "none";
  *(v2 + 128) = 4;
  *(v2 + 136) = 2;
  *(v2 + 144) = "unmute";
  *(v2 + 152) = 6;
  *(v2 + 160) = 2;
  *(v2 + 168) = "voice";
  *(v2 + 176) = 5;
  *(v2 + 184) = 2;
  *(v2 + 192) = "persistentVoiceVolume";
  *(v2 + 200) = 21;
  *(v2 + 208) = 2;
  *(v2 + 216) = "volume";
  *(v2 + 224) = 6;
  *(v2 + 232) = 2;
  *(v2 + 240) = "bass";
  *(v2 + 248) = 4;
  *(v2 + 256) = 2;
  *(v2 + 264) = "immersion";
  *(v2 + 272) = 9;
  *(v2 + 280) = 2;
  *(v2 + 288) = "textSize";
  *(v2 + 296) = 8;
  *(v2 + 304) = 2;
  sub_268CD0F7C();
  v5 = sub_268F9B5C4();

  if (v5)
  {
    switch(v5)
    {
      case 1:
        v6 = 1;
        break;
      case 2:
        v6 = 2;
        break;
      case 3:
        v6 = 3;
        break;
      case 4:
        v6 = 4;
        break;
      case 5:
        v6 = 5;
        break;
      case 6:
        v6 = 6;
        break;
      case 7:
        v6 = 7;
        break;
      case 8:
        v6 = 8;
        break;
      case 9:
        v6 = 9;
        break;
      case 10:
        v6 = 10;
        break;
      case 11:
        v6 = 11;
        break;
      case 12:
        v6 = 12;
        break;
      default:

        *v4 = 13;
        return result;
    }
  }

  else
  {
    v6 = 0;
  }

  *v4 = v6;
}

uint64_t static NumericSettingIdentifier.allCases.getter()
{
  result = sub_268F9B734();
  *v1 = 0;
  v1[1] = 1;
  v1[2] = 2;
  v1[3] = 3;
  v1[4] = 4;
  v1[5] = 5;
  v1[6] = 6;
  v1[7] = 7;
  v1[8] = 8;
  v1[9] = 9;
  v1[10] = 10;
  v1[11] = 11;
  v1[12] = 12;
  sub_268CD0F7C();
  return result;
}

uint64_t sub_268EB0030()
{
  v11 = *v0;
  if (*v0)
  {
    switch(v11)
    {
      case 1:
        v8 = *sub_268D35434();

        v9 = sub_268D36508();

        return v9;
      case 2:
        v6 = *sub_268D35434();

        v7 = sub_268D36508();

        return v7;
      case 7:
        return sub_268F9AEF4();
      case 12:
        v2 = *sub_268D35434();

        v3 = sub_268D3A0B4();

        return v3;
      default:
        return 0;
    }
  }

  else
  {
    v4 = *sub_268D35434();

    v5 = sub_268D39948();

    return v5;
  }
}

uint64_t sub_268EB0234@<X0>(uint64_t a1@<X8>)
{
  v16 = 0;
  v16 = *v1;
  v14 = 0;
  v15 = 0;
  if (v16 == 1)
  {
    v10 = sub_268F9AEF4();
    v11 = v2;

    v14 = v10;
    v15 = v11;

    v12 = v11;
  }

  else
  {
    if (v16 != 2)
    {
      v4 = sub_268F9A9C4();
      (*(*(v4 - 8) + 56))(a1, 1);
      return sub_268CD9D30(&v14);
    }

    v8 = sub_268F9AEF4();
    v9 = v3;

    v14 = v8;
    v15 = v9;

    v12 = v9;
  }

  if (v12)
  {
    sub_268F9A9A4();
    v6 = sub_268F9A9C4();
    (*(*(v6 - 8) + 56))(a1, 0, 1);
  }

  else
  {
    v7 = sub_268F9A9C4();
    (*(*(v7 - 8) + 56))(a1, 1);
  }

  return sub_268CD9D30(&v14);
}

uint64_t sub_268EB0474@<X0>(uint64_t a1@<X8>)
{
  v16 = 0;
  v16 = *v1;
  v14 = 0;
  v15 = 0;
  if (v16 == 1)
  {
    v10 = sub_268F9AEF4();
    v11 = v2;

    v14 = v10;
    v15 = v11;

    v12 = v11;
  }

  else
  {
    if (v16 != 2)
    {
      v4 = sub_268F9A9C4();
      (*(*(v4 - 8) + 56))(a1, 1);
      return sub_268CD9D30(&v14);
    }

    v8 = sub_268F9AEF4();
    v9 = v3;

    v14 = v8;
    v15 = v9;

    v12 = v9;
  }

  if (v12)
  {
    sub_268F9A9A4();
    v6 = sub_268F9A9C4();
    (*(*(v6 - 8) + 56))(a1, 0, 1);
  }

  else
  {
    v7 = sub_268F9A9C4();
    (*(*(v7 - 8) + 56))(a1, 1);
  }

  return sub_268CD9D30(&v14);
}

uint64_t sub_268EB06B4()
{
  v6 = 0;
  v6 = *v0;
  v1 = sub_268F9B734();
  *v2 = 7;
  v2[1] = 9;
  v2[2] = 8;
  sub_268CD0F7C();
  v5 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC910, "ā");
  sub_268DB7A80();
  sub_268D91118();
  v4 = sub_268F9AFC4();
  sub_268CD7930(&v5);
  return v4 & 1;
}

uint64_t sub_268EB0794()
{
  if (*v0 == 11)
  {
    sub_268E53518();
    SettingsFeatureFlagsImpl.isImmersionEnabled()();
  }

  return sub_268F9AEF4();
}

uint64_t sub_268EB0934()
{
  if (*v0)
  {
    *v0;
  }

  return sub_268F9AEF4();
}

unint64_t sub_268EB0AEC()
{
  v2 = qword_280FE3F38;
  if (!qword_280FE3F38)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280FE3F38);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268EB0C5C@<X0>(uint64_t *a1@<X8>)
{
  result = NumericSettingIdentifier.rawValue.getter();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t sub_268EB0C8C@<X0>(uint64_t *a1@<X8>)
{
  result = static NumericSettingIdentifier.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_268EB0D00()
{
  sub_268EB0D58();
  sub_268EB0DD4();
  sub_268EB0AEC();
  return sub_268F9A4A4();
}

unint64_t sub_268EB0D58()
{
  v2 = qword_2802DDD58;
  if (!qword_2802DDD58)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDD58);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268EB0DD4()
{
  v2 = qword_2802DDD60;
  if (!qword_2802DDD60)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDD60);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268EB0E98()
{
  v2 = qword_2802DDD68;
  if (!qword_2802DDD68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DC910, "ā");
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDD68);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268EB0FC0()
{
  v0 = sub_268E95AE0();
  v2 = *v0;
  result = MEMORY[0x277D82BE0](*v0);
  qword_2802F1618 = v2;
  return result;
}

uint64_t *sub_268EB1000()
{
  if (qword_2802DB788 != -1)
  {
    swift_once();
  }

  return &qword_2802F1618;
}

uint64_t sub_268EB1060()
{
  v0 = sub_268EB1000();
  v2 = *v0;
  MEMORY[0x277D82BE0](*v0);
  return v2;
}

uint64_t sub_268EB1098()
{
  v2 = *(v0 + 120);

  return v2;
}

uint64_t sub_268EB10C4(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a1;
  v22 = a2;
  v21 = a3;
  v20 = a4;
  v19 = a5;
  v18 = a6;
  v17 = v6;

  v6[12] = a3;
  sub_268CDE730(a1, v16);
  sub_268CDF978(v16, v6 + 2);
  sub_268CDE730(a2, v15);
  sub_268CDF978(v15, v6 + 7);

  v6[13] = a4;

  v6[14] = a5;

  v6[15] = a6;

  __swift_destroy_boxed_opaque_existential_0(a2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v14;
}

uint64_t sub_268EB11EC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_268F9B284();
  v2 = sub_268DC9AA0();
  v6 = *v2;
  MEMORY[0x277D82BE0](*v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v6);

  v3 = sub_268EB1000();
  MEMORY[0x277D82BE0](*v3);
  MEMORY[0x277D82BE0](a1);
  sub_268DC0720();
  sub_268F99694();
  v4 = sub_268F996A4();
  return (*(*(v4 - 8) + 56))(a2, 0, 1);
}

uint64_t sub_268EB1354(uint64_t a1, uint64_t a2)
{
  v3[23] = v2;
  v3[22] = a2;
  v3[21] = a1;
  v3[17] = v3;
  v3[18] = 0;
  v3[19] = 0;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2B0, &unk_268F9E0C0) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990);
  v3[25] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v3[26] = swift_task_alloc();
  v7 = sub_268F999F4();
  v3[27] = v7;
  v11 = *(v7 - 8);
  v3[28] = v11;
  v8 = *(v11 + 64) + 15;
  v3[29] = swift_task_alloc();
  v3[18] = a2;
  v3[19] = v2;
  v9 = v3[17];

  return MEMORY[0x2822009F8](sub_268EB14EC, 0);
}

uint64_t sub_268EB14EC()
{
  v22 = v0[29];
  v18 = v0[26];
  v23 = v0[25];
  v16 = v0[23];
  v17 = v0[22];
  v0[17] = v0;
  sub_268F9B284();
  v1 = sub_268DC9AA0();
  v15 = *v1;
  MEMORY[0x277D82BE0](*v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v15);
  v21 = *(v16 + 96);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DDD70, &qword_268FA7DF0);
  sub_268F99B34();
  v20 = sub_268F99B44();
  v19 = sub_268F99B24();
  sub_268E8A910(v18);
  MEMORY[0x277D82BD8](v19);
  MEMORY[0x277D82BD8](v20);

  sub_268D2DFAC(v23, (v0 + 20), v22);
  v11 = v14[29];
  v10 = v14[27];
  v12 = v14[26];
  v13 = v14[24];
  v6 = v14[23];
  v8 = v14[21];
  v9 = v14[28];
  sub_268CDE730(v6 + 16, (v14 + 2));
  sub_268CDE730(v6 + 16, (v14 + 7));
  v7 = v14[11];
  __swift_project_boxed_opaque_existential_1(v14 + 7, v14[10]);
  sub_268F997C4();
  sub_268D34954();
  sub_268F9B734();
  v2 = sub_268F999A4();
  (*(*(v2 - 8) + 56))(v13, 1);
  v14[12] = 0;
  v14[13] = 0;
  v14[14] = 0;
  v14[15] = 0;
  v14[16] = 0;
  sub_268CDD6D4();
  _swift_stdlib_has_malloc_size();
  sub_268D31B10();
  v8[3] = sub_268F99C74();
  v8[4] = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_1(v8);
  sub_268F998D4();

  sub_268D28414(v14 + 12);
  sub_268D34AC0(v13);

  __swift_destroy_boxed_opaque_existential_0(v14 + 7);
  __swift_destroy_boxed_opaque_existential_0(v14 + 2);
  (*(v9 + 8))(v11, v10);

  v3 = *(v14[17] + 8);
  v4 = v14[17];

  return v3();
}

uint64_t sub_268EB1998(uint64_t a1, uint64_t a2)
{
  v3[25] = v2;
  v3[24] = a2;
  v3[23] = a1;
  v3[17] = v3;
  v3[18] = 0;
  v3[19] = 0;
  v3[21] = 0;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2B0, &unk_268F9E0C0) - 8) + 64) + 15;
  v3[26] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990);
  v3[27] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v3[28] = swift_task_alloc();
  v7 = sub_268F999F4();
  v3[29] = v7;
  v11 = *(v7 - 8);
  v3[30] = v11;
  v8 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[18] = a2;
  v3[19] = v2;
  v9 = v3[17];

  return MEMORY[0x2822009F8](sub_268EB1B34, 0);
}

uint64_t sub_268EB1B34()
{
  v24 = v0[31];
  v19 = v0[28];
  v25 = v0[27];
  v17 = v0[25];
  v18 = v0[24];
  v0[17] = v0;
  sub_268F9B284();
  v1 = sub_268DC9AA0();
  v16 = *v1;
  MEMORY[0x277D82BE0](*v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v16);
  v23 = *(v17 + 96);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DDD70, &qword_268FA7DF0);
  v22 = sub_268F99B34();
  v21 = sub_268F99B44();
  v20 = sub_268F99B24();
  sub_268E8AA78(v22, v21, v20, v19);
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](v21);

  sub_268D2DFAC(v25, (v0 + 20), v24);
  v12 = v15[25];
  sub_268D34954();
  v14 = sub_268F9B734();
  v15[21] = v14;
  sub_268CDE730(v12 + 16, (v15 + 2));
  sub_268CDE730(v12 + 16, (v15 + 7));
  v13 = v15[11];
  __swift_project_boxed_opaque_existential_1(v15 + 7, v15[10]);
  sub_268F997C4();
  v15[22] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2C0, &qword_268F9FFF0);
  sub_268D349B8();
  sub_268F9AF84();
  v9 = v15[31];
  v8 = v15[29];
  v10 = v15[28];
  v11 = v15[26];
  v6 = v15[23];
  v7 = v15[30];
  v2 = sub_268F999A4();
  (*(*(v2 - 8) + 56))(v11, 1);
  v15[12] = 0;
  v15[13] = 0;
  v15[14] = 0;
  v15[15] = 0;
  v15[16] = 0;
  sub_268CDD6D4();
  _swift_stdlib_has_malloc_size();
  sub_268D31B10();
  v6[3] = sub_268F99C74();
  v6[4] = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_1(v6);
  sub_268F998D4();

  sub_268D28414(v15 + 12);
  sub_268D34AC0(v11);

  __swift_destroy_boxed_opaque_existential_0(v15 + 7);
  __swift_destroy_boxed_opaque_existential_0(v15 + 2);

  (*(v7 + 8))(v9, v8);

  v3 = *(v15[17] + 8);
  v4 = v15[17];

  return v3();
}

uint64_t sub_268EB20B0(void *a1, void *a2)
{
  v54[1] = 0;
  v51 = 0;
  v54[3] = a1;
  v54[2] = a2;
  sub_268D34954();
  v54[0] = sub_268F9B734();
  v42 = [a2 errorDetail];
  if (v42)
  {
    v35 = sub_268F9AE24();
    v36 = v2;
    MEMORY[0x277D82BD8](v42);
    v37 = v35;
    v38 = v36;
  }

  else
  {
    v37 = 0;
    v38 = 0;
  }

  v33 = sub_268E948B8();
  v34 = v3;

  v52[0] = v37;
  v52[1] = v38;
  *&v53 = v33;
  *(&v53 + 1) = v34;
  if (v38)
  {
    sub_268D28874(v52, &v45);
    if (*(&v53 + 1))
    {
      v44 = v45;
      v43 = v53;
      v31 = MEMORY[0x26D62DB50](v45, *(&v45 + 1), v53, *(&v53 + 1));
      sub_268CD9D30(&v43);
      sub_268CD9D30(&v44);
      sub_268CD9D30(v52);
      v32 = v31;
      goto LABEL_10;
    }

    sub_268CD9D30(&v45);
    goto LABEL_12;
  }

  if (*(&v53 + 1))
  {
LABEL_12:
    sub_268D28550(v52);
    v32 = 0;
    goto LABEL_10;
  }

  sub_268CD9D30(v52);
  v32 = 1;
LABEL_10:

  if (v32)
  {
    v28 = *(v40 + 104);

    v29 = *(v40 + 112);

    v30 = [a1 settingMetadata];
    if (v30)
    {
      v23 = [v30 settingId];
      v24 = sub_268F9AE24();
      v25 = v4;
      MEMORY[0x277D82BD8](v30);
      MEMORY[0x277D82BD8](v23);
      v26 = v24;
      v27 = v25;
    }

    else
    {
      v26 = 0;
      v27 = 0;
    }

    v22 = sub_268F36E44(v29, v26, v27);

    if (v22)
    {
      v51 = v22;
      v21 = sub_268F9B284();
      v5 = sub_268DC7CC8();
      oslog = *v5;
      MEMORY[0x277D82BE0](*v5);
      MEMORY[0x277D82BE0](v22);
      v14 = swift_allocObject();
      *(v14 + 16) = v22;
      v16 = swift_allocObject();
      *(v16 + 16) = 32;
      v17 = swift_allocObject();
      *(v17 + 16) = 8;
      v15 = swift_allocObject();
      *(v15 + 16) = sub_268D350F4;
      *(v15 + 24) = v14;
      v18 = swift_allocObject();
      *(v18 + 16) = sub_268CD7608;
      *(v18 + 24) = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC960, &unk_268F9FB90);
      sub_268F9B734();
      v19 = v6;

      *v19 = sub_268CD7600;
      v19[1] = v16;

      v19[2] = sub_268CD7600;
      v19[3] = v17;

      v19[4] = sub_268CD7614;
      v19[5] = v18;
      sub_268CD0F7C();

      if (os_log_type_enabled(oslog, v21))
      {
        buf = sub_268F9B3A4();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
        v12 = sub_268CD5448(0);
        v13 = sub_268CD5448(1);
        v50[0] = buf;
        v49 = v12;
        v48 = v13;
        sub_268CD549C(2, v50);
        sub_268CD549C(1, v50);
        v46 = sub_268CD7600;
        v47 = v16;
        sub_268CD54B0(&v46, v50, &v49, &v48);
        v46 = sub_268CD7600;
        v47 = v17;
        sub_268CD54B0(&v46, v50, &v49, &v48);
        v46 = sub_268CD7614;
        v47 = v18;
        sub_268CD54B0(&v46, v50, &v49, &v48);
        _os_log_impl(&dword_268CBE000, oslog, v21, "HandleLabeledSettingFlowStrategy: rendered punchout button: %s", buf, 0xCu);
        sub_268CD54FC(v12);
        sub_268CD54FC(v13);
        sub_268F9B384();
      }

      MEMORY[0x277D82BD8](oslog);
      MEMORY[0x277D82BE0](v22);
      v50[1] = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2C0, &qword_268F9FFF0);
      sub_268F9B064();
      MEMORY[0x277D82BD8](v22);
    }

    else
    {
      sub_268F9B284();
      v7 = sub_268DC7CC8();
      v10 = *v7;
      MEMORY[0x277D82BE0](*v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      sub_268F9B734();
      sub_268F9AC14();

      MEMORY[0x277D82BD8](v10);
    }
  }

  v9 = v54[0];

  sub_268CD7930(v54);
  return v9;
}

uint64_t sub_268EB296C()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v1 = v0[12];

  v2 = v0[13];

  v3 = v0[14];

  v4 = v0[15];

  return v6;
}

uint64_t sub_268EB2A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4;
  *(v4 + 16) = v4;
  v5 = *(MEMORY[0x277D5B3C8] + 4);
  v6 = swift_task_alloc();
  *(v9 + 24) = v6;
  v7 = type metadata accessor for SetLabeledSettingHandleIntentFlowStrategy();
  *v6 = *(v9 + 16);
  v6[1] = sub_268D34238;

  return MEMORY[0x2821B9C68](a1, a2, v7, a4);
}

uint64_t sub_268EB2AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4;
  *(v4 + 16) = v4;
  v5 = *(MEMORY[0x277D5B3D0] + 4);
  v6 = swift_task_alloc();
  *(v9 + 24) = v6;
  v7 = type metadata accessor for SetLabeledSettingHandleIntentFlowStrategy();
  *v6 = *(v9 + 16);
  v6[1] = sub_268D34238;

  return MEMORY[0x2821B9C70](a1, a2, v7, a4);
}

uint64_t sub_268EB2BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4;
  *(v4 + 16) = v4;
  v5 = *(MEMORY[0x277D5B3B0] + 4);
  v6 = swift_task_alloc();
  *(v9 + 24) = v6;
  v7 = type metadata accessor for SetLabeledSettingHandleIntentFlowStrategy();
  *v6 = *(v9 + 16);
  v6[1] = sub_268D34238;

  return MEMORY[0x2821B9C48](a1, a2, v7, a4);
}

uint64_t sub_268EB2C88(uint64_t a1, uint64_t a2)
{
  v7 = v3;
  *(v3 + 16) = v3;
  v4 = *v2;
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_268D34238;

  return sub_268EB1354(a1, a2);
}

uint64_t sub_268EB2D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4;
  *(v4 + 16) = v4;
  v5 = *(MEMORY[0x277D5B3C0] + 4);
  v6 = swift_task_alloc();
  *(v9 + 24) = v6;
  v7 = type metadata accessor for SetLabeledSettingHandleIntentFlowStrategy();
  *v6 = *(v9 + 16);
  v6[1] = sub_268D34238;

  return MEMORY[0x2821B9C60](a1, a2, v7, a4);
}

uint64_t sub_268EB2E1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4;
  *(v4 + 16) = v4;
  v5 = *(MEMORY[0x277D5B3B8] + 4);
  v6 = swift_task_alloc();
  *(v9 + 24) = v6;
  v7 = type metadata accessor for SetLabeledSettingHandleIntentFlowStrategy();
  *v6 = *(v9 + 16);
  v6[1] = sub_268D34238;

  return MEMORY[0x2821B9C58](a1, a2, v7, a4);
}

uint64_t sub_268EB2EF0(uint64_t a1, uint64_t a2)
{
  v7 = v3;
  *(v3 + 16) = v3;
  v4 = *v2;
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_268D34238;

  return sub_268EB1998(a1, a2);
}

uint64_t sub_268EB2FC8(uint64_t a1, uint64_t a2)
{
  v7 = type metadata accessor for SetLabeledSettingHandleIntentFlowStrategy();
  v2 = sub_268EB3098();
  v3 = sub_268E04070(a1, a2, v7, v2);
  v4 = *(v9 + 8);

  return v4(v3);
}

unint64_t sub_268EB3098()
{
  v2 = qword_2802DDD78;
  if (!qword_2802DDD78)
  {
    type metadata accessor for SetLabeledSettingHandleIntentFlowStrategy();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDD78);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268EB3118(uint64_t a1)
{
  result = sub_268EB3144();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268EB3144()
{
  v2 = qword_2802DDD80;
  if (!qword_2802DDD80)
  {
    type metadata accessor for SetLabeledSettingHandleIntentFlowStrategy();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDD80);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268EB31DC()
{
  v0 = sub_268E95AE0();
  v2 = *v0;
  result = MEMORY[0x277D82BE0](*v0);
  qword_2802F1620 = v2;
  return result;
}

uint64_t *sub_268EB321C()
{
  if (qword_2802DB790 != -1)
  {
    swift_once();
  }

  return &qword_2802F1620;
}

uint64_t sub_268EB327C()
{
  v0 = sub_268EB321C();
  v2 = *v0;
  MEMORY[0x277D82BE0](*v0);
  return v2;
}

uint64_t sub_268EB32B4()
{
  v6 = 0;
  v4 = type metadata accessor for SetLabeledSettingFlowStrategy.IntentConversionError();
  v3 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2[1]);
  v5 = v2 - v3;
  v6 = v0;
  sub_268EB33CC(v0, v2 - v3);
  return sub_268F9AE64();
}

uint64_t type metadata accessor for SetLabeledSettingFlowStrategy.IntentConversionError()
{
  v1 = qword_2802DDDA0;
  if (!qword_2802DDDA0)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

void *sub_268EB33CC(const void *a1, void *a2)
{
  v6 = type metadata accessor for SetLabeledSettingFlowStrategy.IntentConversionError();
  if (swift_getEnumCaseMultiPayload() < 2)
  {
    v2 = sub_268F99C34();
    (*(*(v2 - 8) + 16))(a2, a1);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a2, a1, *(*(v6 - 8) + 64));
  }

  return a2;
}

uint64_t sub_268EB34F4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC258, &unk_268FA7F90);
  sub_268F9B734();
  v5 = v0;
  v6 = *MEMORY[0x277CCA450];
  MEMORY[0x277D82BE0](*MEMORY[0x277CCA450]);
  *v5 = sub_268F9AE24();
  v5[1] = v1;
  v2 = sub_268EB32B4();
  v5[5] = MEMORY[0x277D837D0];
  v5[2] = v2;
  v5[3] = v3;
  sub_268CD0F7C();
  MEMORY[0x277D82BD8](v6);
  return sub_268F9ADA4();
}

unint64_t sub_268EB3618()
{
  v2 = qword_2802DDD88;
  if (!qword_2802DDD88)
  {
    type metadata accessor for SetLabeledSettingFlowStrategy.IntentConversionError();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDD88);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268EB3710@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v78 = a1;
  v3 = v2;
  v99 = v3;
  v103 = "SetLabeledSettingFlowStrategy: actionForInput.";
  v79 = "SetLabeledSettingFlowStrategy: not a compatible type of parse. Ignoring.";
  v80 = "SetLabeledSettingFlowStrategy: %@ handling NLX intent.";
  v81 = "SetLabeledSettingFlowStrategy: Error parsing uso parse.";
  v82 = "SetLabeledSettingFlowStrategy: %@ handling NLV3Intent.";
  v122 = 0;
  v121 = 0;
  v124 = 0;
  v83 = 0;
  v118 = 0;
  v117 = 0;
  v116 = 0;
  v123 = 0;
  v113 = 0;
  v112 = 0;
  v101 = 0;
  v84 = sub_268F99CB4();
  v85 = *(v84 - 8);
  v86 = v84 - 8;
  v87 = (*(v85 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v88 = v32 - v87;
  v89 = sub_268F99C64();
  v90 = *(v89 - 8);
  v91 = v89 - 8;
  v92 = (*(v90 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v101);
  v93 = v32 - v92;
  v124 = v32 - v92;
  v94 = sub_268F9A704();
  v95 = *(v94 - 8);
  v96 = v94 - 8;
  v97 = (*(v95 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v101);
  v98 = v32 - v97;
  v123 = v32 - v97;
  v110 = sub_268F99C34();
  v107 = *(v110 - 8);
  v108 = v110 - 8;
  v100 = (*(v107 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v110);
  v109 = v32 - v100;
  v122 = a1;
  v121 = v5;
  v104 = sub_268F9B284();
  v106 = *sub_268DC97D0();
  MEMORY[0x277D82BE0](v106);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v105 = sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v106);
  sub_268F99BE4();
  v111 = (*(v107 + 88))(v109, v110);
  if (v111 == *MEMORY[0x277D5C128])
  {
    (*(v107 + 96))(v109, v110);
    (*(v95 + 32))(v98, v109, v94);
    v123 = v98;
    v75 = v115;
    memset(v115, 0, sizeof(v115));
    v74 = &v114;
    sub_268D8E52C(&v114);
    v76 = sub_268DA7690(v98, v75, v74);
    sub_268D28414(v74);
    sub_268D28414(v75);
    v113 = v76;
    MEMORY[0x277D82BE0](v76);
    if (v76)
    {
      v73 = v76;
      v71 = v76;
      objc_opt_self();
      v72 = swift_dynamicCastObjCClass();
      if (v72)
      {
        v70 = v72;
      }

      else
      {
        MEMORY[0x277D82BD8](v71);
        v70 = 0;
      }

      v69 = v70;
    }

    else
    {
      v69 = 0;
    }

    v66 = v69 != 0;
    v112 = v69 != 0;
    MEMORY[0x277D82BD8](v69);
    v64 = sub_268F9B284();
    v65 = *sub_268DC99B0();
    MEMORY[0x277D82BE0](v65);
    v67 = sub_268F9B734();
    v68 = v6;
    if (v66)
    {
      v63 = sub_268F9AEF4();
      v62 = v7;
      v68[3] = MEMORY[0x277D837D0];
      v8 = sub_268CDD224();
      v9 = v62;
      v10 = v68;
      v11 = v8;
      v12 = v63;
    }

    else
    {
      v61 = sub_268F9AEF4();
      v60 = v13;
      v68[3] = MEMORY[0x277D837D0];
      v14 = sub_268CDD224();
      v9 = v60;
      v10 = v68;
      v11 = v14;
      v12 = v61;
    }

    v68[4] = v11;
    *v10 = v12;
    v10[1] = v9;
    v15 = v67;
    sub_268CD0F7C();
    v59 = v15;
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v65);
    if (v66)
    {
      sub_268F99894();
    }

    else
    {
      sub_268F998A4();
    }

    v16 = MEMORY[0x277D82BD8](v76);
    return (*(v95 + 8))(v98, v94, v16);
  }

  else if (v111 == *MEMORY[0x277D5C160])
  {
    v17 = v83;
    v18 = v93;
    (*(v107 + 96))(v109, v110);
    (*(v90 + 32))(v18, v109, v89);
    v124 = v18;
    sub_268F99C54();
    v55 = &v120;
    sub_268CDE730(v99 + 16, &v120);
    v56 = &v119;
    sub_268D8E52C(&v119);
    v57 = sub_268E17680(v88, v55, v56);
    v58 = v17;
    if (v17)
    {
      v38 = v58;
      sub_268D28414(&v119);
      sub_268D28414(&v120);
      (*(v85 + 8))(v88, v84);
      v30 = v38;
      v118 = v38;
      v35 = sub_268F9B294();
      v37 = *sub_268DC99B0();
      MEMORY[0x277D82BE0](v37);
      v36 = sub_268F9B734();
      sub_268F9AC14();

      MEMORY[0x277D82BD8](v37);

      sub_268F998A4();
      return (*(v90 + 8))(v93, v89);
    }

    else
    {
      v54 = v57;
      sub_268D28414(&v119);
      sub_268D28414(&v120);
      (*(v85 + 8))(v88, v84);
      v117 = v54;
      MEMORY[0x277D82BE0](v54);
      if (v54)
      {
        v53 = v54;
        v51 = v54;
        objc_opt_self();
        v52 = swift_dynamicCastObjCClass();
        if (v52)
        {
          v50 = v52;
        }

        else
        {
          MEMORY[0x277D82BD8](v51);
          v50 = 0;
        }

        v49 = v50;
      }

      else
      {
        v49 = 0;
      }

      v46 = v49 != 0;
      v116 = v49 != 0;
      MEMORY[0x277D82BD8](v49);
      v44 = sub_268F9B284();
      v45 = *sub_268DC99B0();
      MEMORY[0x277D82BE0](v45);
      v47 = sub_268F9B734();
      v48 = v19;
      if (v46)
      {
        v43 = sub_268F9AEF4();
        v42 = v20;
        v48[3] = MEMORY[0x277D837D0];
        v21 = sub_268CDD224();
        v22 = v42;
        v23 = v48;
        v24 = v21;
        v25 = v43;
      }

      else
      {
        v41 = sub_268F9AEF4();
        v40 = v26;
        v48[3] = MEMORY[0x277D837D0];
        v27 = sub_268CDD224();
        v22 = v40;
        v23 = v48;
        v24 = v27;
        v25 = v41;
      }

      v48[4] = v24;
      *v23 = v25;
      v23[1] = v22;
      v28 = v47;
      sub_268CD0F7C();
      v39 = v28;
      sub_268F9AC14();

      MEMORY[0x277D82BD8](v45);
      if (v46)
      {
        sub_268F99894();
      }

      else
      {
        sub_268F998A4();
      }

      v29 = MEMORY[0x277D82BD8](v54);
      return (*(v90 + 8))(v93, v89, v29);
    }
  }

  else
  {
    v32[1] = sub_268F9B284();
    v34 = *sub_268DC99B0();
    MEMORY[0x277D82BE0](v34);
    v33 = sub_268F9B734();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v34);
    sub_268F998A4();
    return (*(v107 + 8))(v109, v110);
  }
}

uint64_t sub_268EB4694(uint64_t a1, uint64_t a2)
{
  v3[33] = v2;
  v3[32] = a1;
  v3[22] = v3;
  v3[23] = 0;
  v3[24] = 0;
  v3[25] = 0;
  v3[26] = 0;
  v3[27] = 0;
  v3[29] = 0;
  v3[30] = 0;
  v3[31] = 0;
  v4 = sub_268F99CB4();
  v3[34] = v4;
  v12 = *(v4 - 8);
  v3[35] = v12;
  v5 = *(v12 + 64) + 15;
  v3[36] = swift_task_alloc();
  v6 = sub_268F99C64();
  v3[37] = v6;
  v13 = *(v6 - 8);
  v3[38] = v13;
  v7 = *(v13 + 64) + 15;
  v3[39] = swift_task_alloc();
  v8 = sub_268F9A704();
  v3[40] = v8;
  v14 = *(v8 - 8);
  v3[41] = v14;
  v15 = *(v14 + 64);
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v9 = sub_268F99C34();
  v3[44] = v9;
  v16 = *(v9 - 8);
  v3[45] = v16;
  v17 = *(v16 + 64);
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  v3[23] = a1;
  v3[24] = a2;
  v3[25] = v2;
  v10 = v3[22];

  return MEMORY[0x2822009F8](sub_268EB4950, 0);
}

uint64_t sub_268EB4950()
{
  v99 = v0[47];
  v97 = v0[45];
  v98 = v0[44];
  v95 = v0[32];
  v0[22] = v0;
  sub_268F9B284();
  v1 = sub_268DC99B0();
  v94 = *v1;
  MEMORY[0x277D82BE0](*v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14();

  v2 = MEMORY[0x277D82BD8](v94);
  v96 = *(v97 + 16);
  (v96)(v99, v95, v98, v2);
  v100 = (*(v97 + 88))(v99, v98);
  if (v100 == *MEMORY[0x277D5C128])
  {
    v89 = v93[47];
    v3 = v93[44];
    v91 = v93[43];
    v90 = v93[40];
    v88 = v93[41];
    (*(v93[45] + 96))();
    (*(v88 + 32))(v91, v89, v90);
    v93[30] = v91;
    v93[12] = 0;
    v93[13] = 0;
    v93[14] = 0;
    v93[15] = 0;
    v93[16] = 0;
    sub_268D8E52C(v93 + 17);
    v92 = sub_268DA7690(v91, v93 + 12, v93 + 17);
    sub_268D28414(v93 + 17);
    sub_268D28414(v93 + 12);
    if (v92)
    {
      objc_opt_self();
      v87 = swift_dynamicCastObjCClass();
      if (v87)
      {
        v86 = v87;
      }

      else
      {
        MEMORY[0x277D82BD8](v92);
        v86 = 0;
      }

      v85 = v86;
    }

    else
    {
      v85 = 0;
    }

    if (v85)
    {
      v4 = v93[43];
      v5 = v93[41];
      v6 = v93[40];
      v93[31] = v85;
      (*(v5 + 8))(v4, v6);
      v84 = v85;
      goto LABEL_22;
    }

    v80 = v93[44];
    v82 = v93[43];
    v75 = v93[42];
    v83 = v93[40];
    v81 = v93[32];
    v74 = v93[41];
    v7 = sub_268DC99B0();
    v79 = *v7;
    MEMORY[0x277D82BE0](*v7);
    sub_268F9B294();
    sub_268F9B734();
    v78 = v8;
    (*(v74 + 16))(v75, v82, v83);
    sub_268DA7B0C();
    v76 = sub_268F9AE74();
    v77 = v9;
    v78[3] = MEMORY[0x277D837D0];
    v78[4] = sub_268CDD224();
    *v78 = v76;
    v78[1] = v77;
    sub_268CD0F7C();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v79);
    type metadata accessor for SetLabeledSettingFlowStrategy.IntentConversionError();
    sub_268EB5870();
    swift_allocError();
    v96();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v74 + 8))(v82, v83);
LABEL_25:
    v27 = v93[47];
    v30 = v93[46];
    v31 = v93[43];
    v32 = v93[42];
    v33 = v93[39];
    v34 = v93[36];

    v19 = v73;
    v20 = *(v93[22] + 8);
    v28 = v93[22];

    return v20(v19);
  }

  if (v100 != *MEMORY[0x277D5C160])
  {
    v56 = v93[47];
    v49 = v93[46];
    v57 = v93[44];
    v54 = v93[32];
    v55 = v93[45];
    v15 = sub_268DC99B0();
    v53 = *v15;
    MEMORY[0x277D82BE0](*v15);
    sub_268F9B294();
    sub_268F9B734();
    v52 = v16;
    (v96)(v49, v54, v57);
    v50 = sub_268F9AE64();
    v51 = v17;
    v52[3] = MEMORY[0x277D837D0];
    v52[4] = sub_268CDD224();
    *v52 = v50;
    v52[1] = v51;
    sub_268CD0F7C();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v53);
    type metadata accessor for SetLabeledSettingFlowStrategy.IntentConversionError();
    sub_268EB5870();
    swift_allocError();
    v96();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v55 + 8))(v56, v57);
    goto LABEL_25;
  }

  v68 = v93[47];
  v10 = v93[44];
  v11 = v93[39];
  v69 = v93[37];
  v71 = v93[36];
  v70 = v93[33];
  v67 = v93[38];
  (*(v93[45] + 96))();
  (*(v67 + 32))(v11, v68, v69);
  v93[26] = v11;
  sub_268F99C54();
  sub_268CDE730(v70 + 16, (v93 + 2));
  sub_268D8E52C(v93 + 7);
  v72 = sub_268E17680(v71, v93 + 2, v93 + 7);
  v66 = v93[36];
  v65 = v93[34];
  v64 = v93[35];
  sub_268D28414(v93 + 7);
  sub_268D28414(v93 + 2);
  (*(v64 + 8))(v66, v65);
  if (v72)
  {
    objc_opt_self();
    v63 = swift_dynamicCastObjCClass();
    if (v63)
    {
      v62 = v63;
    }

    else
    {
      MEMORY[0x277D82BD8](v72);
      v62 = 0;
    }

    v61 = v62;
  }

  else
  {
    v61 = 0;
  }

  if (!v61)
  {
    v58 = v93[44];
    v59 = v93[32];
    type metadata accessor for SetLabeledSettingFlowStrategy.IntentConversionError();
    sub_268EB5870();
    v60 = swift_allocError();
    v96();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v39 = v93[44];
    v42 = v93[39];
    v43 = v93[37];
    v40 = v93[32];
    v41 = v93[38];
    v22 = v60;
    v93[27] = v60;
    v23 = sub_268DC99B0();
    v38 = *v23;
    MEMORY[0x277D82BE0](*v23);
    sub_268F9B294();
    sub_268F9B734();
    v37 = v24;
    v25 = v60;
    v93[28] = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
    v35 = sub_268F9AE64();
    v36 = v26;
    v37[3] = MEMORY[0x277D837D0];
    v37[4] = sub_268CDD224();
    *v37 = v35;
    v37[1] = v36;
    sub_268CD0F7C();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v38);
    type metadata accessor for SetLabeledSettingFlowStrategy.IntentConversionError();
    sub_268EB5870();
    swift_allocError();
    v96();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    (*(v41 + 8))(v42, v43);
    goto LABEL_25;
  }

  v12 = v93[39];
  v13 = v93[38];
  v14 = v93[37];
  v93[29] = v61;
  (*(v13 + 8))(v12, v14);
  v84 = v61;
LABEL_22:
  v18 = v93[47];
  v44 = v93[46];
  v45 = v93[43];
  v46 = v93[42];
  v47 = v93[39];
  v48 = v93[36];

  v19 = v84;
  v20 = *(v93[22] + 8);
  v21 = v93[22];

  return v20(v19);
}

unint64_t sub_268EB5870()
{
  v2 = qword_2802DDD90;
  if (!qword_2802DDD90)
  {
    type metadata accessor for SetLabeledSettingFlowStrategy.IntentConversionError();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDD90);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268EB5914(uint64_t a1, uint64_t a2)
{
  v7 = v3;
  *(v3 + 16) = v3;
  v4 = *v2;
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_268D7F90C;

  return sub_268EB4694(a1, a2);
}

uint64_t sub_268EB5A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = v5;
  *(v5 + 16) = v5;
  v6 = *(MEMORY[0x277D5B498] + 4);
  v7 = swift_task_alloc();
  *(v10 + 24) = v7;
  v8 = type metadata accessor for SetLabeledSettingFlowStrategy();
  *v7 = *(v10 + 16);
  v7[1] = sub_268D34238;

  return MEMORY[0x2821B9D90](a1, a2, a3, v8, a5);
}

uint64_t sub_268EB5B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = v5;
  *(v5 + 16) = v5;
  v6 = *(MEMORY[0x277D5B490] + 4);
  v7 = swift_task_alloc();
  *(v10 + 24) = v7;
  v8 = type metadata accessor for SetLabeledSettingFlowStrategy();
  *v7 = *(v10 + 16);
  v7[1] = sub_268D34238;

  return MEMORY[0x2821B9D88](a1, a2, a3, v8, a5);
}

uint64_t sub_268EB5C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = v5;
  *(v5 + 16) = v5;
  v6 = *(MEMORY[0x277D5B488] + 4);
  v7 = swift_task_alloc();
  *(v10 + 24) = v7;
  v8 = type metadata accessor for SetLabeledSettingFlowStrategy();
  *v7 = *(v10 + 16);
  v7[1] = sub_268D34238;

  return MEMORY[0x2821B9D80](a1, a2, a3, v8, a5);
}

uint64_t sub_268EB5CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = v6;
  *(v6 + 16) = v6;
  v7 = *(MEMORY[0x277D5B480] + 4);
  v8 = swift_task_alloc();
  *(v11 + 24) = v8;
  v9 = type metadata accessor for SetLabeledSettingFlowStrategy();
  *v8 = *(v11 + 16);
  v8[1] = sub_268D34238;

  return MEMORY[0x2821B9D78](a1, a2, a3, a4, v9, a6);
}

uint64_t sub_268EB5DC8(uint64_t a1, uint64_t a2)
{
  v7 = type metadata accessor for SetLabeledSettingFlowStrategy();
  v2 = sub_268EB5E70();
  v3 = sub_268E04070(a1, a2, v7, v2);
  v4 = *(v9 + 8);

  return v4(v3);
}

unint64_t sub_268EB5E70()
{
  v2 = qword_2802DDD98;
  if (!qword_2802DDD98)
  {
    type metadata accessor for SetLabeledSettingFlowStrategy();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDD98);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268EB5EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = v6;
  *(v6 + 16) = v6;
  v7 = *(MEMORY[0x277D5B6D8] + 4);
  v8 = swift_task_alloc();
  *(v11 + 24) = v8;
  v9 = type metadata accessor for SetLabeledSettingFlowStrategy();
  *v8 = *(v11 + 16);
  v8[1] = sub_268D34238;

  return MEMORY[0x2821BA0D8](a1, a2, a3, a4, v9, a6);
}

uint64_t sub_268EB604C()
{
  v2 = sub_268F99C34();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return v2;
}

unint64_t sub_268EB60F4()
{
  v2 = qword_2802DDDB0;
  if (!qword_2802DDDB0)
  {
    type metadata accessor for SetLabeledSettingFlowStrategy();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDDB0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268EB618C()
{
  v2 = qword_2802DDDB8;
  if (!qword_2802DDDB8)
  {
    type metadata accessor for SetLabeledSettingFlowStrategy();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDDB8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268EB620C(uint64_t a1)
{
  result = sub_268EB60F4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268EB6268()
{
  v2 = qword_2802DDDC0;
  if (!qword_2802DDDC0)
  {
    type metadata accessor for SetLabeledSettingFlowStrategy();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDDC0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268EB62E8()
{
  sub_268F9B734();
  *v0 = "SettingIntent#BinarySettingButtonText";
  *(v0 + 8) = 37;
  *(v0 + 16) = 2;
  *(v0 + 24) = "SettingIntent#BinarySettingName";
  *(v0 + 32) = 31;
  *(v0 + 40) = 2;
  *(v0 + 48) = "SettingIntent#BinarySettingPageName";
  *(v0 + 56) = 35;
  *(v0 + 64) = 2;
  *(v0 + 72) = "SettingIntent#CannotDo";
  *(v0 + 80) = 22;
  *(v0 + 88) = 2;
  *(v0 + 96) = "SettingIntent#DeviceDoesNotSupportBinarySetting";
  *(v0 + 104) = 47;
  *(v0 + 112) = 2;
  *(v0 + 120) = "SettingIntent#DeviceDoesNotSupportNumericSetting";
  *(v0 + 128) = 48;
  *(v0 + 136) = 2;
  *(v0 + 144) = "SettingIntent#DisplaySettingsDisabledForCurrentMode";
  *(v0 + 152) = 51;
  *(v0 + 160) = 2;
  *(v0 + 168) = "SettingIntent#FlashlightOverheated";
  *(v0 + 176) = 34;
  *(v0 + 184) = 2;
  *(v0 + 192) = "SettingIntent#FlashlightUnavailable";
  *(v0 + 200) = 35;
  *(v0 + 208) = 2;
  *(v0 + 216) = "SettingIntent#FocusNotConfigured";
  *(v0 + 224) = 32;
  *(v0 + 232) = 2;
  *(v0 + 240) = "SettingIntent#MultiSettingButtonText";
  *(v0 + 248) = 36;
  *(v0 + 256) = 2;
  *(v0 + 264) = "SettingIntent#MultiSettingName";
  *(v0 + 272) = 30;
  *(v0 + 280) = 2;
  *(v0 + 288) = "SettingIntent#MultiSettingNavigationButtonText";
  *(v0 + 296) = 46;
  *(v0 + 304) = 2;
  *(v0 + 312) = "SettingIntent#NotPermittedToDo";
  *(v0 + 320) = 30;
  *(v0 + 328) = 2;
  *(v0 + 336) = "SettingIntent#NumericSettingButtonText";
  *(v0 + 344) = 38;
  *(v0 + 352) = 2;
  *(v0 + 360) = "SettingIntent#NumericSettingName";
  *(v0 + 368) = 32;
  *(v0 + 376) = 2;
  *(v0 + 384) = "SettingIntent#ResourceNotDownloaded_Dialog";
  *(v0 + 392) = 42;
  *(v0 + 400) = 2;
  *(v0 + 408) = "SettingIntent#SettingNavigationButtonText";
  *(v0 + 416) = 41;
  *(v0 + 424) = 2;
  *(v0 + 432) = "SettingIntent#SettingsStaticLabel";
  *(v0 + 440) = 33;
  *(v0 + 448) = 2;
  *(v0 + 456) = "SettingIntent#SiriCannotChangeMultiSetting";
  *(v0 + 464) = 42;
  *(v0 + 472) = 2;
  *(v0 + 480) = "SettingIntent#SiriCannotChangeNumericSetting";
  *(v0 + 488) = 44;
  *(v0 + 496) = 2;
  *(v0 + 504) = "SettingIntent#SiriCannotChangeSetting";
  *(v0 + 512) = 37;
  *(v0 + 520) = 2;
  *(v0 + 528) = "SettingIntent#StandBy";
  *(v0 + 536) = 21;
  *(v0 + 544) = 2;
  sub_268CD0F7C();
  v4 = sub_268F9B5C4();

  switch(v4)
  {
    case 0:
      v3 = 0;
LABEL_48:

      return v3;
    case 1:
      v3 = 1;
      goto LABEL_48;
    case 2:
      v3 = 2;
      goto LABEL_48;
    case 3:
      v3 = 3;
      goto LABEL_48;
    case 4:
      v3 = 4;
      goto LABEL_48;
    case 5:
      v3 = 5;
      goto LABEL_48;
    case 6:
      v3 = 6;
      goto LABEL_48;
    case 7:
      v3 = 7;
      goto LABEL_48;
    case 8:
      v3 = 8;
      goto LABEL_48;
    case 9:
      v3 = 9;
      goto LABEL_48;
    case 10:
      v3 = 10;
      goto LABEL_48;
    case 11:
      v3 = 11;
      goto LABEL_48;
    case 12:
      v3 = 12;
      goto LABEL_48;
    case 13:
      v3 = 13;
      goto LABEL_48;
    case 14:
      v3 = 14;
      goto LABEL_48;
    case 15:
      v3 = 15;
      goto LABEL_48;
    case 16:
      v3 = 16;
      goto LABEL_48;
    case 17:
      v3 = 17;
      goto LABEL_48;
    case 18:
      v3 = 18;
      goto LABEL_48;
    case 19:
      v3 = 19;
      goto LABEL_48;
    case 20:
      v3 = 20;
      goto LABEL_48;
    case 21:
      v3 = 21;
      goto LABEL_48;
    case 22:
      v3 = 22;
      goto LABEL_48;
  }

  return 23;
}

unint64_t sub_268EB6E20()
{
  v2 = qword_2802DDDC8;
  if (!qword_2802DDDC8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDDC8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268EB6F6C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = sub_268EB62E8();
  *a2 = result;
  return result;
}

uint64_t sub_268EB6FA4@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  result = sub_268EB69DC();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_268EB6FD8(uint64_t a1, char a2)
{
  *(v3 + 48) = v2;
  *(v3 + 89) = a2 & 1;
  *(v3 + 40) = a1;
  *(v3 + 16) = v3;
  *(v3 + 24) = 0;
  *(v3 + 88) = 0;
  *(v3 + 32) = 0;
  *(v3 + 24) = a1;
  *(v3 + 88) = a2 & 1;
  *(v3 + 32) = v2;
  v4 = *(v3 + 16);
  return MEMORY[0x2822009F8](sub_268EB7048, 0);
}

uint64_t sub_268EB7048()
{
  v17 = v0[5];
  v0[2] = v0;
  v14 = sub_268F9AEF4();
  v15 = v1;
  v0[7] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v16 = v2;
  *v2 = sub_268F9AEF4();
  v16[1] = v3;

  if (v17)
  {
    v12 = *(v13 + 40);
    v16[5] = type metadata accessor for SettingsBinarySetting();
    v16[2] = v12;
  }

  else
  {
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = 0;
    v16[5] = 0;
  }

  v9 = *(v13 + 89);
  v16[6] = sub_268F9AEF4();
  v16[7] = v4;
  v16[11] = MEMORY[0x277D839B0];
  *(v16 + 64) = v9;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v10 = sub_268F9B4F4();
  *(v13 + 64) = v10;
  v11 = (MEMORY[0x277D55C70] + *MEMORY[0x277D55C70]);
  v5 = *(MEMORY[0x277D55C70] + 4);
  v6 = swift_task_alloc();
  *(v13 + 72) = v6;
  *v6 = *(v13 + 16);
  v6[1] = sub_268D7BB14;
  v7 = *(v13 + 48);

  return v11(v14, v15, v10);
}

uint64_t sub_268EB72C4()
{
  sub_268F9B734();
  *v0 = "dialog1";
  *(v0 + 8) = 7;
  *(v0 + 16) = 2;
  *(v0 + 24) = "localizedNameWithWordSettings";
  *(v0 + 32) = 29;
  *(v0 + 40) = 2;
  sub_268CD0F7C();
  v4 = sub_268F9B5C4();

  if (!v4)
  {
    v3 = 0;
LABEL_6:

    return v3;
  }

  if (v4 == 1)
  {
    v3 = 1;
    goto LABEL_6;
  }

  return 2;
}

unint64_t sub_268EB74D0()
{
  v2 = qword_2802DDDD0;
  if (!qword_2802DDDD0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDDD0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268EB761C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = sub_268EB72C4();
  *a2 = result;
  return result;
}

uint64_t sub_268EB7654@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  result = sub_268EB73F8();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_268EB768C(uint64_t a1, char a2)
{
  *(v3 + 48) = v2;
  *(v3 + 89) = a2 & 1;
  *(v3 + 40) = a1;
  *(v3 + 16) = v3;
  *(v3 + 24) = 0;
  *(v3 + 88) = 0;
  *(v3 + 32) = 0;
  *(v3 + 24) = a1;
  *(v3 + 88) = a2 & 1;
  *(v3 + 32) = v2;
  v4 = *(v3 + 16);
  return MEMORY[0x2822009F8](sub_268EB76FC, 0);
}

uint64_t sub_268EB76FC()
{
  v18 = v0[5];
  v0[2] = v0;
  v15 = sub_268F9AEF4();
  v16 = v1;
  v0[7] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v17 = v2;
  *v2 = sub_268F9AEF4();
  v17[1] = v3;

  if (v18)
  {
    v13 = *(v14 + 40);
    v17[5] = type metadata accessor for SettingsBinarySetting();
    v17[2] = v13;
  }

  else
  {
    v17[2] = 0;
    v17[3] = 0;
    v17[4] = 0;
    v17[5] = 0;
  }

  v10 = *(v14 + 89);
  v17[6] = sub_268F9AEF4();
  v17[7] = v4;
  v17[11] = MEMORY[0x277D839B0];
  *(v17 + 64) = v10;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v11 = sub_268F9B4F4();
  *(v14 + 64) = v11;
  v12 = (MEMORY[0x277D55C68] + *MEMORY[0x277D55C68]);
  v5 = *(MEMORY[0x277D55C68] + 4);
  v6 = swift_task_alloc();
  *(v14 + 72) = v6;
  v7 = sub_268EB74D0();
  *v6 = *(v14 + 16);
  v6[1] = sub_268D7BB14;
  v8 = *(v14 + 48);

  return v12(v15, v16, v11, &unk_2879948B0, v7);
}

uint64_t sub_268EB7990(uint64_t a1)
{
  v2[6] = v1;
  v2[5] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[3] = a1;
  v2[4] = v1;
  v3 = v2[2];
  return MEMORY[0x2822009F8](sub_268EB79DC, 0);
}

uint64_t sub_268EB79DC()
{
  v15 = v0[5];
  v0[2] = v0;
  v12 = sub_268F9AEF4();
  v13 = v1;
  v0[7] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v14 = v2;
  *v2 = sub_268F9AEF4();
  v14[1] = v3;

  if (v15)
  {
    v10 = v11[5];
    v14[5] = type metadata accessor for SettingsBinarySetting();
    v14[2] = v10;
  }

  else
  {
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = 0;
    v14[5] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v8 = sub_268F9B4F4();
  v11[8] = v8;
  v9 = (MEMORY[0x277D55C70] + *MEMORY[0x277D55C70]);
  v4 = *(MEMORY[0x277D55C70] + 4);
  v5 = swift_task_alloc();
  v11[9] = v5;
  *v5 = v11[2];
  v5[1] = sub_268DE5AA8;
  v6 = v11[6];

  return v9(v12, v13, v8);
}

BOOL sub_268EB7BF8()
{
  sub_268F9B734();
  *v0 = "settingName";
  *(v0 + 8) = 11;
  *(v0 + 16) = 2;
  sub_268CD0F7C();
  v2 = sub_268F9B5C4();

  return v2 != 0;
}

unint64_t sub_268EB7D50()
{
  v2 = qword_2802DDDD8;
  if (!qword_2802DDDD8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDDD8);
    return WitnessTable;
  }

  return v2;
}

BOOL sub_268EB7E9C@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = sub_268EB7BF8();
  *a2 = result;
  return result;
}

uint64_t sub_268EB7EDC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268EB7CD0();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t sub_268EB7F0C(uint64_t a1)
{
  v2[6] = v1;
  v2[5] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[3] = a1;
  v2[4] = v1;
  v3 = v2[2];
  return MEMORY[0x2822009F8](sub_268EB7F58, 0);
}

uint64_t sub_268EB7F58()
{
  v16 = v0[5];
  v0[2] = v0;
  v13 = sub_268F9AEF4();
  v14 = v1;
  v0[7] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v15 = v2;
  *v2 = sub_268F9AEF4();
  v15[1] = v3;

  if (v16)
  {
    v11 = v12[5];
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
  v12[8] = v9;
  v10 = (MEMORY[0x277D55C68] + *MEMORY[0x277D55C68]);
  v4 = *(MEMORY[0x277D55C68] + 4);
  v5 = swift_task_alloc();
  v12[9] = v5;
  v6 = sub_268EB7D50();
  *v5 = v12[2];
  v5[1] = sub_268DE5AA8;
  v7 = v12[6];

  return v10(v13, v14, v9, &unk_287994940, v6);
}

uint64_t sub_268EB818C(uint64_t a1)
{
  v2[6] = v1;
  v2[5] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[3] = a1;
  v2[4] = v1;
  v3 = v2[2];
  return MEMORY[0x2822009F8](sub_268EB81D8, 0);
}

uint64_t sub_268EB81D8()
{
  v15 = v0[5];
  v0[2] = v0;
  v12 = sub_268F9AEF4();
  v13 = v1;
  v0[7] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v14 = v2;
  *v2 = sub_268F9AEF4();
  v14[1] = v3;

  if (v15)
  {
    v10 = v11[5];
    v14[5] = type metadata accessor for SettingsBinarySetting();
    v14[2] = v10;
  }

  else
  {
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = 0;
    v14[5] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v8 = sub_268F9B4F4();
  v11[8] = v8;
  v9 = (MEMORY[0x277D55C70] + *MEMORY[0x277D55C70]);
  v4 = *(MEMORY[0x277D55C70] + 4);
  v5 = swift_task_alloc();
  v11[9] = v5;
  *v5 = v11[2];
  v5[1] = sub_268DE5AA8;
  v6 = v11[6];

  return v9(v12, v13, v8);
}

unint64_t sub_268EB8440()
{
  v2 = qword_2802DDDE0;
  if (!qword_2802DDDE0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDDE0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268EB858C(uint64_t a1)
{
  v2[6] = v1;
  v2[5] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[3] = a1;
  v2[4] = v1;
  v3 = v2[2];
  return MEMORY[0x2822009F8](sub_268EB85D8, 0);
}

uint64_t sub_268EB85D8()
{
  v16 = v0[5];
  v0[2] = v0;
  v13 = sub_268F9AEF4();
  v14 = v1;
  v0[7] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v15 = v2;
  *v2 = sub_268F9AEF4();
  v15[1] = v3;

  if (v16)
  {
    v11 = v12[5];
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
  v12[8] = v9;
  v10 = (MEMORY[0x277D55C68] + *MEMORY[0x277D55C68]);
  v4 = *(MEMORY[0x277D55C68] + 4);
  v5 = swift_task_alloc();
  v12[9] = v5;
  v6 = sub_268EB8440();
  *v5 = v12[2];
  v5[1] = sub_268DE5AA8;
  v7 = v12[6];

  return v10(v13, v14, v9, &unk_2879949D0, v6);
}

uint64_t sub_268EB880C()
{
  v1[4] = v0;
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = v0;
  v2 = v1[2];
  return MEMORY[0x2822009F8](sub_268EB8848, 0);
}

uint64_t sub_268EB8848()
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

uint64_t sub_268EB899C()
{
  sub_268F9B734();
  *v0 = "random1#dialog1";
  *(v0 + 8) = 15;
  *(v0 + 16) = 2;
  *(v0 + 24) = "random1#dialog2";
  *(v0 + 32) = 15;
  *(v0 + 40) = 2;
  *(v0 + 48) = "random1#dialog3";
  *(v0 + 56) = 15;
  *(v0 + 64) = 2;
  sub_268CD0F7C();
  v4 = sub_268F9B5C4();

  switch(v4)
  {
    case 0:
      v3 = 0;
LABEL_8:

      return v3;
    case 1:
      v3 = 1;
      goto LABEL_8;
    case 2:
      v3 = 2;
      goto LABEL_8;
  }

  return 3;
}

unint64_t sub_268EB8C30()
{
  v2 = qword_2802DDDE8;
  if (!qword_2802DDDE8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDDE8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268EB8D7C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = sub_268EB899C();
  *a2 = result;
  return result;
}

uint64_t sub_268EB8DB4@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  result = sub_268EB8B18();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_268EB8DE8()
{
  v1[4] = v0;
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = v0;
  v2 = v1[2];
  return MEMORY[0x2822009F8](sub_268EB8E24, 0);
}

uint64_t sub_268EB8E24()
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
  v4 = sub_268EB8C30();
  *v3 = v8[2];
  v3[1] = sub_268D71B74;
  v5 = v8[4];

  return v11(v12, v9, v10, &unk_287994A60, v4);
}

uint64_t sub_268EB8F90(uint64_t a1, uint64_t a2, char a3, char a4)
{
  *(v5 + 64) = v4;
  *(v5 + 106) = a4 & 1;
  *(v5 + 105) = a3;
  *(v5 + 56) = a2;
  *(v5 + 48) = a1;
  *(v5 + 16) = v5;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 104) = 0;
  *(v5 + 112) = 0;
  *(v5 + 40) = 0;
  *(v5 + 24) = a1;
  *(v5 + 32) = a2;
  *(v5 + 104) = a3;
  *(v5 + 112) = a4 & 1;
  *(v5 + 40) = v4;
  v6 = *(v5 + 16);
  return MEMORY[0x2822009F8](sub_268EB9020, 0);
}

uint64_t sub_268EB9020()
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

  v17 = *(v19 + 56);
  v22[6] = sub_268F9AEF4();
  v22[7] = v4;

  if (v17)
  {
    v16 = *(v19 + 56);
    v22[11] = sub_268F9AA44();
    v22[8] = v16;
  }

  else
  {
    v22[8] = 0;
    v22[9] = 0;
    v22[10] = 0;
    v22[11] = 0;
  }

  v15 = *(v19 + 105);
  v22[12] = sub_268F9AEF4();
  v22[13] = v5;
  if (v15 == 2)
  {
    v22[14] = 0;
    v22[15] = 0;
    v22[16] = 0;
    v22[17] = 0;
  }

  else
  {
    v6 = *(v19 + 105);
    v22[17] = MEMORY[0x277D839B0];
    *(v22 + 112) = v6 & 1;
  }

  v12 = *(v19 + 106);
  v22[18] = sub_268F9AEF4();
  v22[19] = v7;
  v22[23] = MEMORY[0x277D839B0];
  *(v22 + 160) = v12;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v13 = sub_268F9B4F4();
  *(v19 + 80) = v13;
  v14 = (MEMORY[0x277D55C70] + *MEMORY[0x277D55C70]);
  v8 = *(MEMORY[0x277D55C70] + 4);
  v9 = swift_task_alloc();
  *(v19 + 88) = v9;
  *v9 = *(v19 + 16);
  v9[1] = sub_268EB945C;
  v10 = *(v19 + 64);

  return v14(v20, v21, v13);
}

uint64_t sub_268EB945C(uint64_t a1)
{
  v10 = *v2;
  v3 = *(*v2 + 88);
  v10[2] = *v2;
  v11 = v10 + 2;
  v10[12] = v1;

  if (v1)
  {
    v7 = *v11;

    return MEMORY[0x2822009F8](sub_268EB9644, 0);
  }

  else
  {
    v4 = v10[10];
    v8 = v10[9];

    v5 = *(*v11 + 8);

    return v5(a1);
  }
}

uint64_t sub_268EB9644()
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

uint64_t sub_268EB9704()
{
  sub_268F9B734();
  *v0 = "dialog1";
  *(v0 + 8) = 7;
  *(v0 + 16) = 2;
  *(v0 + 24) = "dialog10";
  *(v0 + 32) = 8;
  *(v0 + 40) = 2;
  *(v0 + 48) = "dialog11";
  *(v0 + 56) = 8;
  *(v0 + 64) = 2;
  *(v0 + 72) = "dialog12";
  *(v0 + 80) = 8;
  *(v0 + 88) = 2;
  *(v0 + 96) = "dialog13";
  *(v0 + 104) = 8;
  *(v0 + 112) = 2;
  *(v0 + 120) = "dialog14";
  *(v0 + 128) = 8;
  *(v0 + 136) = 2;
  *(v0 + 144) = "dialog2";
  *(v0 + 152) = 7;
  *(v0 + 160) = 2;
  *(v0 + 168) = "dialog3";
  *(v0 + 176) = 7;
  *(v0 + 184) = 2;
  *(v0 + 192) = "dialog4";
  *(v0 + 200) = 7;
  *(v0 + 208) = 2;
  *(v0 + 216) = "dialog5";
  *(v0 + 224) = 7;
  *(v0 + 232) = 2;
  *(v0 + 240) = "dialog6";
  *(v0 + 248) = 7;
  *(v0 + 256) = 2;
  *(v0 + 264) = "dialog7";
  *(v0 + 272) = 7;
  *(v0 + 280) = 2;
  *(v0 + 288) = "dialog8";
  *(v0 + 296) = 7;
  *(v0 + 304) = 2;
  *(v0 + 312) = "dialog9";
  *(v0 + 320) = 7;
  *(v0 + 328) = 2;
  sub_268CD0F7C();
  v4 = sub_268F9B5C4();

  switch(v4)
  {
    case 0:
      v3 = 0;
LABEL_30:

      return v3;
    case 1:
      v3 = 1;
      goto LABEL_30;
    case 2:
      v3 = 2;
      goto LABEL_30;
    case 3:
      v3 = 3;
      goto LABEL_30;
    case 4:
      v3 = 4;
      goto LABEL_30;
    case 5:
      v3 = 5;
      goto LABEL_30;
    case 6:
      v3 = 6;
      goto LABEL_30;
    case 7:
      v3 = 7;
      goto LABEL_30;
    case 8:
      v3 = 8;
      goto LABEL_30;
    case 9:
      v3 = 9;
      goto LABEL_30;
    case 10:
      v3 = 10;
      goto LABEL_30;
    case 11:
      v3 = 11;
      goto LABEL_30;
    case 12:
      v3 = 12;
      goto LABEL_30;
    case 13:
      v3 = 13;
      goto LABEL_30;
  }

  return 14;
}

unint64_t sub_268EB9E54()
{
  v2 = qword_2802DDDF0;
  if (!qword_2802DDDF0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDDF0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268EB9FA0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = sub_268EB9704();
  *a2 = result;
  return result;
}

uint64_t sub_268EB9FD8@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  result = sub_268EB9B78();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_268EBA00C(uint64_t a1, uint64_t a2, char a3, char a4)
{
  *(v5 + 64) = v4;
  *(v5 + 106) = a4 & 1;
  *(v5 + 105) = a3 & 1;
  *(v5 + 56) = a2;
  *(v5 + 48) = a1;
  *(v5 + 16) = v5;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 104) = 0;
  *(v5 + 112) = 0;
  *(v5 + 40) = 0;
  *(v5 + 24) = a1;
  *(v5 + 32) = a2;
  *(v5 + 104) = a3 & 1;
  *(v5 + 112) = a4 & 1;
  *(v5 + 40) = v4;
  v6 = *(v5 + 16);
  return MEMORY[0x2822009F8](sub_268EBA0AC, 0);
}

uint64_t sub_268EBA0AC()
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

  v18 = *(v20 + 56);
  v23[6] = sub_268F9AEF4();
  v23[7] = v4;

  if (v18)
  {
    v17 = *(v20 + 56);
    v23[11] = sub_268F9AA44();
    v23[8] = v17;
  }

  else
  {
    v23[8] = 0;
    v23[9] = 0;
    v23[10] = 0;
    v23[11] = 0;
  }

  v14 = *(v20 + 106);
  v12 = *(v20 + 105);
  v23[12] = sub_268F9AEF4();
  v23[13] = v5;
  v13 = MEMORY[0x277D839B0];
  v23[17] = MEMORY[0x277D839B0];
  *(v23 + 112) = v12;
  v23[18] = sub_268F9AEF4();
  v23[19] = v6;
  v23[23] = v13;
  *(v23 + 160) = v14;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v15 = sub_268F9B4F4();
  *(v20 + 80) = v15;
  v16 = (MEMORY[0x277D55C68] + *MEMORY[0x277D55C68]);
  v7 = *(MEMORY[0x277D55C68] + 4);
  v8 = swift_task_alloc();
  *(v20 + 88) = v8;
  v9 = sub_268EB9E54();
  *v8 = *(v20 + 16);
  v8[1] = sub_268EB945C;
  v10 = *(v20 + 64);

  return v16(v21, v22, v15, &unk_287994AF0, v9);
}

uint64_t sub_268EBA484(uint64_t a1, char a2)
{
  *(v3 + 48) = v2;
  *(v3 + 89) = a2 & 1;
  *(v3 + 40) = a1;
  *(v3 + 16) = v3;
  *(v3 + 24) = 0;
  *(v3 + 88) = 0;
  *(v3 + 32) = 0;
  *(v3 + 24) = a1;
  *(v3 + 88) = a2 & 1;
  *(v3 + 32) = v2;
  v4 = *(v3 + 16);
  return MEMORY[0x2822009F8](sub_268EBA4F4, 0);
}

uint64_t sub_268EBA4F4()
{
  v17 = v0[5];
  v0[2] = v0;
  v14 = sub_268F9AEF4();
  v15 = v1;
  v0[7] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v16 = v2;
  *v2 = sub_268F9AEF4();
  v16[1] = v3;

  if (v17)
  {
    v12 = *(v13 + 40);
    v16[5] = sub_268F9AA44();
    v16[2] = v12;
  }

  else
  {
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = 0;
    v16[5] = 0;
  }

  v9 = *(v13 + 89);
  v16[6] = sub_268F9AEF4();
  v16[7] = v4;
  v16[11] = MEMORY[0x277D839B0];
  *(v16 + 64) = v9;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v10 = sub_268F9B4F4();
  *(v13 + 64) = v10;
  v11 = (MEMORY[0x277D55C70] + *MEMORY[0x277D55C70]);
  v5 = *(MEMORY[0x277D55C70] + 4);
  v6 = swift_task_alloc();
  *(v13 + 72) = v6;
  *v6 = *(v13 + 16);
  v6[1] = sub_268D7BB14;
  v7 = *(v13 + 48);

  return v11(v14, v15, v10);
}

uint64_t sub_268EBA770()
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
  *(v0 + 168) = "dialog8";
  *(v0 + 176) = 7;
  *(v0 + 184) = 2;
  sub_268CD0F7C();
  v4 = sub_268F9B5C4();

  switch(v4)
  {
    case 0:
      v3 = 0;
LABEL_18:

      return v3;
    case 1:
      v3 = 1;
      goto LABEL_18;
    case 2:
      v3 = 2;
      goto LABEL_18;
    case 3:
      v3 = 3;
      goto LABEL_18;
    case 4:
      v3 = 4;
      goto LABEL_18;
    case 5:
      v3 = 5;
      goto LABEL_18;
    case 6:
      v3 = 6;
      goto LABEL_18;
    case 7:
      v3 = 7;
      goto LABEL_18;
  }

  return 8;
}

unint64_t sub_268EBAC8C()
{
  v2 = qword_2802DDDF8;
  if (!qword_2802DDDF8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDDF8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268EBADD8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = sub_268EBA770();
  *a2 = result;
  return result;
}

uint64_t sub_268EBAE10@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  result = sub_268EBAA48();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_268EBAE44(uint64_t a1, char a2)
{
  *(v3 + 48) = v2;
  *(v3 + 89) = a2 & 1;
  *(v3 + 40) = a1;
  *(v3 + 16) = v3;
  *(v3 + 24) = 0;
  *(v3 + 88) = 0;
  *(v3 + 32) = 0;
  *(v3 + 24) = a1;
  *(v3 + 88) = a2 & 1;
  *(v3 + 32) = v2;
  v4 = *(v3 + 16);
  return MEMORY[0x2822009F8](sub_268EBAEB4, 0);
}

uint64_t sub_268EBAEB4()
{
  v18 = v0[5];
  v0[2] = v0;
  v15 = sub_268F9AEF4();
  v16 = v1;
  v0[7] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v17 = v2;
  *v2 = sub_268F9AEF4();
  v17[1] = v3;

  if (v18)
  {
    v13 = *(v14 + 40);
    v17[5] = sub_268F9AA44();
    v17[2] = v13;
  }

  else
  {
    v17[2] = 0;
    v17[3] = 0;
    v17[4] = 0;
    v17[5] = 0;
  }

  v10 = *(v14 + 89);
  v17[6] = sub_268F9AEF4();
  v17[7] = v4;
  v17[11] = MEMORY[0x277D839B0];
  *(v17 + 64) = v10;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v11 = sub_268F9B4F4();
  *(v14 + 64) = v11;
  v12 = (MEMORY[0x277D55C68] + *MEMORY[0x277D55C68]);
  v5 = *(MEMORY[0x277D55C68] + 4);
  v6 = swift_task_alloc();
  *(v14 + 72) = v6;
  v7 = sub_268EBAC8C();
  *v6 = *(v14 + 16);
  v6[1] = sub_268D7BB14;
  v8 = *(v14 + 48);

  return v12(v15, v16, v11, &unk_287994B80, v7);
}

uint64_t sub_268EBB148()
{
  v1[4] = v0;
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = v0;
  v2 = v1[2];
  return MEMORY[0x2822009F8](sub_268EBB184, 0);
}

uint64_t sub_268EBB184()
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

unint64_t sub_268EBB324()
{
  v2 = qword_2802DDE00;
  if (!qword_2802DDE00)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDE00);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268EBB470()
{
  v1[4] = v0;
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = v0;
  v2 = v1[2];
  return MEMORY[0x2822009F8](sub_268EBB4AC, 0);
}

uint64_t sub_268EBB4AC()
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
  v4 = sub_268EBB324();
  *v3 = v8[2];
  v3[1] = sub_268D71B74;
  v5 = v8[4];

  return v11(v12, v9, v10, &unk_287994C10, v4);
}

uint64_t sub_268EBB618()
{
  v1[4] = v0;
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = v0;
  v2 = v1[2];
  return MEMORY[0x2822009F8](sub_268EBB654, 0);
}

uint64_t sub_268EBB654()
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

unint64_t sub_268EBB7F4()
{
  v2 = qword_2802DDE08;
  if (!qword_2802DDE08)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDE08);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268EBB940()
{
  v1[4] = v0;
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = v0;
  v2 = v1[2];
  return MEMORY[0x2822009F8](sub_268EBB97C, 0);
}

uint64_t sub_268EBB97C()
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
  v4 = sub_268EBB7F4();
  *v3 = v8[2];
  v3[1] = sub_268D71B74;
  v5 = v8[4];

  return v11(v12, v9, v10, &unk_287994CA0, v4);
}

uint64_t sub_268EBBAE8()
{
  v1[4] = v0;
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = v0;
  v2 = v1[2];
  return MEMORY[0x2822009F8](sub_268EBBB24, 0);
}

uint64_t sub_268EBBB24()
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

unint64_t sub_268EBBCC4()
{
  v2 = qword_2802DDE10;
  if (!qword_2802DDE10)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDE10);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268EBBE10()
{
  v1[4] = v0;
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = v0;
  v2 = v1[2];
  return MEMORY[0x2822009F8](sub_268EBBE4C, 0);
}

uint64_t sub_268EBBE4C()
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
  v4 = sub_268EBBCC4();
  *v3 = v8[2];
  v3[1] = sub_268D71B74;
  v5 = v8[4];

  return v11(v12, v9, v10, &unk_287994D30, v4);
}

uint64_t sub_268EBBFB8(uint64_t a1)
{
  v2[6] = v1;
  v2[5] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[3] = a1;
  v2[4] = v1;
  v3 = v2[2];
  return MEMORY[0x2822009F8](sub_268EBC004, 0);
}

uint64_t sub_268EBC004()
{
  v15 = v0[5];
  v0[2] = v0;
  v12 = sub_268F9AEF4();
  v13 = v1;
  v0[7] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v14 = v2;
  *v2 = sub_268F9AEF4();
  v14[1] = v3;

  if (v15)
  {
    v10 = v11[5];
    v14[5] = type metadata accessor for SettingsBinarySetting();
    v14[2] = v10;
  }

  else
  {
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = 0;
    v14[5] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v8 = sub_268F9B4F4();
  v11[8] = v8;
  v9 = (MEMORY[0x277D55C70] + *MEMORY[0x277D55C70]);
  v4 = *(MEMORY[0x277D55C70] + 4);
  v5 = swift_task_alloc();
  v11[9] = v5;
  *v5 = v11[2];
  v5[1] = sub_268DE5AA8;
  v6 = v11[6];

  return v9(v12, v13, v8);
}

unint64_t sub_268EBC26C()
{
  v2 = qword_2802DDE18;
  if (!qword_2802DDE18)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDE18);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268EBC3B8(uint64_t a1)
{
  v2[6] = v1;
  v2[5] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[3] = a1;
  v2[4] = v1;
  v3 = v2[2];
  return MEMORY[0x2822009F8](sub_268EBC404, 0);
}

uint64_t sub_268EBC404()
{
  v16 = v0[5];
  v0[2] = v0;
  v13 = sub_268F9AEF4();
  v14 = v1;
  v0[7] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v15 = v2;
  *v2 = sub_268F9AEF4();
  v15[1] = v3;

  if (v16)
  {
    v11 = v12[5];
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
  v12[8] = v9;
  v10 = (MEMORY[0x277D55C68] + *MEMORY[0x277D55C68]);
  v4 = *(MEMORY[0x277D55C68] + 4);
  v5 = swift_task_alloc();
  v12[9] = v5;
  v6 = sub_268EBC26C();
  *v5 = v12[2];
  v5[1] = sub_268DE5AA8;
  v7 = v12[6];

  return v10(v13, v14, v9, &unk_287994DC0, v6);
}

uint64_t sub_268EBC638(uint64_t a1)
{
  v2[6] = v1;
  v2[5] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[3] = a1;
  v2[4] = v1;
  v3 = v2[2];
  return MEMORY[0x2822009F8](sub_268EBC684, 0);
}

uint64_t sub_268EBC684()
{
  v15 = v0[5];
  v0[2] = v0;
  v12 = sub_268F9AEF4();
  v13 = v1;
  v0[7] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v14 = v2;
  *v2 = sub_268F9AEF4();
  v14[1] = v3;

  if (v15)
  {
    v10 = v11[5];
    v14[5] = type metadata accessor for SettingsMultiSetting();
    v14[2] = v10;
  }

  else
  {
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = 0;
    v14[5] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v8 = sub_268F9B4F4();
  v11[8] = v8;
  v9 = (MEMORY[0x277D55C70] + *MEMORY[0x277D55C70]);
  v4 = *(MEMORY[0x277D55C70] + 4);
  v5 = swift_task_alloc();
  v11[9] = v5;
  *v5 = v11[2];
  v5[1] = sub_268DE5AA8;
  v6 = v11[6];

  return v9(v12, v13, v8);
}

BOOL sub_268EBC8A0()
{
  sub_268F9B734();
  *v0 = "localizedNameWithWordSettings";
  *(v0 + 8) = 29;
  *(v0 + 16) = 2;
  sub_268CD0F7C();
  v2 = sub_268F9B5C4();

  return v2 != 0;
}

unint64_t sub_268EBC9F8()
{
  v2 = qword_2802DDE20;
  if (!qword_2802DDE20)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDE20);
    return WitnessTable;
  }

  return v2;
}

BOOL sub_268EBCB44@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = sub_268EBC8A0();
  *a2 = result;
  return result;
}

uint64_t sub_268EBCB84@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268EBC978();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t sub_268EBCBB4(uint64_t a1)
{
  v2[6] = v1;
  v2[5] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[3] = a1;
  v2[4] = v1;
  v3 = v2[2];
  return MEMORY[0x2822009F8](sub_268EBCC00, 0);
}

uint64_t sub_268EBCC00()
{
  v16 = v0[5];
  v0[2] = v0;
  v13 = sub_268F9AEF4();
  v14 = v1;
  v0[7] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v15 = v2;
  *v2 = sub_268F9AEF4();
  v15[1] = v3;

  if (v16)
  {
    v11 = v12[5];
    v15[5] = type metadata accessor for SettingsMultiSetting();
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
  v12[8] = v9;
  v10 = (MEMORY[0x277D55C68] + *MEMORY[0x277D55C68]);
  v4 = *(MEMORY[0x277D55C68] + 4);
  v5 = swift_task_alloc();
  v12[9] = v5;
  v6 = sub_268EBC9F8();
  *v5 = v12[2];
  v5[1] = sub_268DE5AA8;
  v7 = v12[6];

  return v10(v13, v14, v9, &unk_287994E50, v6);
}

uint64_t sub_268EBCE34(uint64_t a1)
{
  v2[6] = v1;
  v2[5] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[3] = a1;
  v2[4] = v1;
  v3 = v2[2];
  return MEMORY[0x2822009F8](sub_268EBCE80, 0);
}

uint64_t sub_268EBCE80()
{
  v15 = v0[5];
  v0[2] = v0;
  v12 = sub_268F9AEF4();
  v13 = v1;
  v0[7] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v14 = v2;
  *v2 = sub_268F9AEF4();
  v14[1] = v3;

  if (v15)
  {
    v10 = v11[5];
    v14[5] = type metadata accessor for SettingsMultiSetting();
    v14[2] = v10;
  }

  else
  {
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = 0;
    v14[5] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v8 = sub_268F9B4F4();
  v11[8] = v8;
  v9 = (MEMORY[0x277D55C70] + *MEMORY[0x277D55C70]);
  v4 = *(MEMORY[0x277D55C70] + 4);
  v5 = swift_task_alloc();
  v11[9] = v5;
  *v5 = v11[2];
  v5[1] = sub_268DE5AA8;
  v6 = v11[6];

  return v9(v12, v13, v8);
}

unint64_t sub_268EBD0E8()
{
  v2 = qword_2802DDE28;
  if (!qword_2802DDE28)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDE28);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268EBD234(uint64_t a1)
{
  v2[6] = v1;
  v2[5] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[3] = a1;
  v2[4] = v1;
  v3 = v2[2];
  return MEMORY[0x2822009F8](sub_268EBD280, 0);
}

uint64_t sub_268EBD280()
{
  v16 = v0[5];
  v0[2] = v0;
  v13 = sub_268F9AEF4();
  v14 = v1;
  v0[7] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v15 = v2;
  *v2 = sub_268F9AEF4();
  v15[1] = v3;

  if (v16)
  {
    v11 = v12[5];
    v15[5] = type metadata accessor for SettingsMultiSetting();
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
  v12[8] = v9;
  v10 = (MEMORY[0x277D55C68] + *MEMORY[0x277D55C68]);
  v4 = *(MEMORY[0x277D55C68] + 4);
  v5 = swift_task_alloc();
  v12[9] = v5;
  v6 = sub_268EBD0E8();
  *v5 = v12[2];
  v5[1] = sub_268DE5AA8;
  v7 = v12[6];

  return v10(v13, v14, v9, &unk_287994EE0, v6);
}

uint64_t sub_268EBD4B4(uint64_t a1)
{
  v2[6] = v1;
  v2[5] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[3] = a1;
  v2[4] = v1;
  v3 = v2[2];
  return MEMORY[0x2822009F8](sub_268EBD500, 0);
}

uint64_t sub_268EBD500()
{
  v15 = v0[5];
  v0[2] = v0;
  v12 = sub_268F9AEF4();
  v13 = v1;
  v0[7] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v14 = v2;
  *v2 = sub_268F9AEF4();
  v14[1] = v3;

  if (v15)
  {
    v10 = v11[5];
    v14[5] = type metadata accessor for SettingsMultiSetting();
    v14[2] = v10;
  }

  else
  {
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = 0;
    v14[5] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v8 = sub_268F9B4F4();
  v11[8] = v8;
  v9 = (MEMORY[0x277D55C70] + *MEMORY[0x277D55C70]);
  v4 = *(MEMORY[0x277D55C70] + 4);
  v5 = swift_task_alloc();
  v11[9] = v5;
  *v5 = v11[2];
  v5[1] = sub_268DE5AA8;
  v6 = v11[6];

  return v9(v12, v13, v8);
}

BOOL sub_268EBD71C()
{
  sub_268F9B734();
  *v0 = "localizedMultipleSettingsName";
  *(v0 + 8) = 29;
  *(v0 + 16) = 2;
  sub_268CD0F7C();
  v2 = sub_268F9B5C4();

  return v2 != 0;
}

unint64_t sub_268EBD874()
{
  v2 = qword_2802DDE30;
  if (!qword_2802DDE30)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDE30);
    return WitnessTable;
  }

  return v2;
}

BOOL sub_268EBD9C0@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = sub_268EBD71C();
  *a2 = result;
  return result;
}

uint64_t sub_268EBDA00@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268EBD7F4();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t sub_268EBDA30(uint64_t a1)
{
  v2[6] = v1;
  v2[5] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[3] = a1;
  v2[4] = v1;
  v3 = v2[2];
  return MEMORY[0x2822009F8](sub_268EBDA7C, 0);
}

uint64_t sub_268EBDA7C()
{
  v16 = v0[5];
  v0[2] = v0;
  v13 = sub_268F9AEF4();
  v14 = v1;
  v0[7] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v15 = v2;
  *v2 = sub_268F9AEF4();
  v15[1] = v3;

  if (v16)
  {
    v11 = v12[5];
    v15[5] = type metadata accessor for SettingsMultiSetting();
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
  v12[8] = v9;
  v10 = (MEMORY[0x277D55C68] + *MEMORY[0x277D55C68]);
  v4 = *(MEMORY[0x277D55C68] + 4);
  v5 = swift_task_alloc();
  v12[9] = v5;
  v6 = sub_268EBD874();
  *v5 = v12[2];
  v5[1] = sub_268DE5AA8;
  v7 = v12[6];

  return v10(v13, v14, v9, &unk_287994F70, v6);
}

uint64_t sub_268EBDCB0()
{
  v1[4] = v0;
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = v0;
  v2 = v1[2];
  return MEMORY[0x2822009F8](sub_268EBDCEC, 0);
}

uint64_t sub_268EBDCEC()
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

unint64_t sub_268EBDE8C()
{
  v2 = qword_2802DDE38;
  if (!qword_2802DDE38)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDE38);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268EBDFD8()
{
  v1[4] = v0;
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = v0;
  v2 = v1[2];
  return MEMORY[0x2822009F8](sub_268EBE014, 0);
}

uint64_t sub_268EBE014()
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
  v4 = sub_268EBDE8C();
  *v3 = v8[2];
  v3[1] = sub_268D71B74;
  v5 = v8[4];

  return v11(v12, v9, v10, &unk_287995000, v4);
}

uint64_t sub_268EBE180(uint64_t a1, char a2)
{
  *(v3 + 48) = v2;
  *(v3 + 89) = a2 & 1;
  *(v3 + 40) = a1;
  *(v3 + 16) = v3;
  *(v3 + 24) = 0;
  *(v3 + 88) = 0;
  *(v3 + 32) = 0;
  *(v3 + 24) = a1;
  *(v3 + 88) = a2 & 1;
  *(v3 + 32) = v2;
  v4 = *(v3 + 16);
  return MEMORY[0x2822009F8](sub_268EBE1F0, 0);
}

uint64_t sub_268EBE1F0()
{
  v17 = v0[5];
  v0[2] = v0;
  v14 = sub_268F9AEF4();
  v15 = v1;
  v0[7] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v16 = v2;
  *v2 = sub_268F9AEF4();
  v16[1] = v3;

  if (v17)
  {
    v12 = *(v13 + 40);
    v16[5] = type metadata accessor for SettingsNumericSetting();
    v16[2] = v12;
  }

  else
  {
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = 0;
    v16[5] = 0;
  }

  v9 = *(v13 + 89);
  v16[6] = sub_268F9AEF4();
  v16[7] = v4;
  v16[11] = MEMORY[0x277D839B0];
  *(v16 + 64) = v9;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v10 = sub_268F9B4F4();
  *(v13 + 64) = v10;
  v11 = (MEMORY[0x277D55C70] + *MEMORY[0x277D55C70]);
  v5 = *(MEMORY[0x277D55C70] + 4);
  v6 = swift_task_alloc();
  *(v13 + 72) = v6;
  *v6 = *(v13 + 16);
  v6[1] = sub_268D7BB14;
  v7 = *(v13 + 48);

  return v11(v14, v15, v10);
}

uint64_t sub_268EBE46C()
{
  sub_268F9B734();
  *v0 = "dialog1";
  *(v0 + 8) = 7;
  *(v0 + 16) = 2;
  *(v0 + 24) = "titleTextNumericSettings";
  *(v0 + 32) = 24;
  *(v0 + 40) = 2;
  *(v0 + 48) = "titleTextNumericSettingsNameOnly";
  *(v0 + 56) = 32;
  *(v0 + 64) = 2;
  sub_268CD0F7C();
  v4 = sub_268F9B5C4();

  switch(v4)
  {
    case 0:
      v3 = 0;
LABEL_8:

      return v3;
    case 1:
      v3 = 1;
      goto LABEL_8;
    case 2:
      v3 = 2;
      goto LABEL_8;
  }

  return 3;
}

unint64_t sub_268EBE704()
{
  v2 = qword_2802DDE40;
  if (!qword_2802DDE40)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDE40);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268EBE850@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = sub_268EBE46C();
  *a2 = result;
  return result;
}

uint64_t sub_268EBE888@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  result = sub_268EBE5EC();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_268EBE8BC(uint64_t a1, char a2)
{
  *(v3 + 48) = v2;
  *(v3 + 89) = a2 & 1;
  *(v3 + 40) = a1;
  *(v3 + 16) = v3;
  *(v3 + 24) = 0;
  *(v3 + 88) = 0;
  *(v3 + 32) = 0;
  *(v3 + 24) = a1;
  *(v3 + 88) = a2 & 1;
  *(v3 + 32) = v2;
  v4 = *(v3 + 16);
  return MEMORY[0x2822009F8](sub_268EBE92C, 0);
}

uint64_t sub_268EBE92C()
{
  v18 = v0[5];
  v0[2] = v0;
  v15 = sub_268F9AEF4();
  v16 = v1;
  v0[7] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v17 = v2;
  *v2 = sub_268F9AEF4();
  v17[1] = v3;

  if (v18)
  {
    v13 = *(v14 + 40);
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

  v10 = *(v14 + 89);
  v17[6] = sub_268F9AEF4();
  v17[7] = v4;
  v17[11] = MEMORY[0x277D839B0];
  *(v17 + 64) = v10;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v11 = sub_268F9B4F4();
  *(v14 + 64) = v11;
  v12 = (MEMORY[0x277D55C68] + *MEMORY[0x277D55C68]);
  v5 = *(MEMORY[0x277D55C68] + 4);
  v6 = swift_task_alloc();
  *(v14 + 72) = v6;
  v7 = sub_268EBE704();
  *v6 = *(v14 + 16);
  v6[1] = sub_268D7BB14;
  v8 = *(v14 + 48);

  return v12(v15, v16, v11, &unk_287995090, v7);
}

uint64_t sub_268EBEBC0(uint64_t a1)
{
  v2[6] = v1;
  v2[5] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[3] = a1;
  v2[4] = v1;
  v3 = v2[2];
  return MEMORY[0x2822009F8](sub_268EBEC0C, 0);
}

uint64_t sub_268EBEC0C()
{
  v15 = v0[5];
  v0[2] = v0;
  v12 = sub_268F9AEF4();
  v13 = v1;
  v0[7] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v14 = v2;
  *v2 = sub_268F9AEF4();
  v14[1] = v3;

  if (v15)
  {
    v10 = v11[5];
    v14[5] = type metadata accessor for SettingsNumericSetting();
    v14[2] = v10;
  }

  else
  {
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = 0;
    v14[5] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v8 = sub_268F9B4F4();
  v11[8] = v8;
  v9 = (MEMORY[0x277D55C70] + *MEMORY[0x277D55C70]);
  v4 = *(MEMORY[0x277D55C70] + 4);
  v5 = swift_task_alloc();
  v11[9] = v5;
  *v5 = v11[2];
  v5[1] = sub_268DE5AA8;
  v6 = v11[6];

  return v9(v12, v13, v8);
}

unint64_t sub_268EBEE74()
{
  v2 = qword_2802DDE48;
  if (!qword_2802DDE48)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDE48);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268EBEFC0(uint64_t a1)
{
  v2[6] = v1;
  v2[5] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[3] = a1;
  v2[4] = v1;
  v3 = v2[2];
  return MEMORY[0x2822009F8](sub_268EBF00C, 0);
}

uint64_t sub_268EBF00C()
{
  v16 = v0[5];
  v0[2] = v0;
  v13 = sub_268F9AEF4();
  v14 = v1;
  v0[7] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v15 = v2;
  *v2 = sub_268F9AEF4();
  v15[1] = v3;

  if (v16)
  {
    v11 = v12[5];
    v15[5] = type metadata accessor for SettingsNumericSetting();
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
  v12[8] = v9;
  v10 = (MEMORY[0x277D55C68] + *MEMORY[0x277D55C68]);
  v4 = *(MEMORY[0x277D55C68] + 4);
  v5 = swift_task_alloc();
  v12[9] = v5;
  v6 = sub_268EBEE74();
  *v5 = v12[2];
  v5[1] = sub_268DE5AA8;
  v7 = v12[6];

  return v10(v13, v14, v9, &unk_287995120, v6);
}

uint64_t sub_268EBF240()
{
  v1[4] = v0;
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = v0;
  v2 = v1[2];
  return MEMORY[0x2822009F8](sub_268EBF27C, 0);
}

uint64_t sub_268EBF27C()
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

BOOL sub_268EBF3D0()
{
  sub_268F9B734();
  *v0 = "Status";
  *(v0 + 8) = 6;
  *(v0 + 16) = 2;
  sub_268CD0F7C();
  v2 = sub_268F9B5C4();

  return v2 != 0;
}

unint64_t sub_268EBF528()
{
  v2 = qword_2802DDE50;
  if (!qword_2802DDE50)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDE50);
    return WitnessTable;
  }

  return v2;
}

BOOL sub_268EBF674@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = sub_268EBF3D0();
  *a2 = result;
  return result;
}

uint64_t sub_268EBF6B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268EBF4A8();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t sub_268EBF6E4()
{
  v1[4] = v0;
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = v0;
  v2 = v1[2];
  return MEMORY[0x2822009F8](sub_268EBF720, 0);
}

uint64_t sub_268EBF720()
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
  v4 = sub_268EBF528();
  *v3 = v8[2];
  v3[1] = sub_268D71B74;
  v5 = v8[4];

  return v11(v12, v9, v10, &unk_2879951B0, v4);
}

uint64_t sub_268EBF88C(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 64) = v3;
  *(v4 + 105) = a3 & 1;
  *(v4 + 56) = a2;
  *(v4 + 48) = a1;
  *(v4 + 16) = v4;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  *(v4 + 104) = 0;
  *(v4 + 40) = 0;
  *(v4 + 24) = a1;
  *(v4 + 32) = a2;
  *(v4 + 104) = a3 & 1;
  *(v4 + 40) = v3;
  v5 = *(v4 + 16);
  return MEMORY[0x2822009F8](sub_268EBF90C, 0);
}

uint64_t sub_268EBF90C()
{
  v20 = v0[6];
  v0[2] = v0;
  v17 = sub_268F9AEF4();
  v18 = v1;
  v0[9] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v19 = v2;
  *v2 = sub_268F9AEF4();
  v19[1] = v3;

  if (v20)
  {
    v15 = *(v16 + 48);
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

  v14 = *(v16 + 56);
  v19[6] = sub_268F9AEF4();
  v19[7] = v4;

  if (v14)
  {
    v13 = *(v16 + 56);
    v19[11] = type metadata accessor for SettingsMultiSetting();
    v19[8] = v13;
  }

  else
  {
    v19[8] = 0;
    v19[9] = 0;
    v19[10] = 0;
    v19[11] = 0;
  }

  v10 = *(v16 + 105);
  v19[12] = sub_268F9AEF4();
  v19[13] = v5;
  v19[17] = MEMORY[0x277D839B0];
  *(v19 + 112) = v10;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v11 = sub_268F9B4F4();
  *(v16 + 80) = v11;
  v12 = (MEMORY[0x277D55C70] + *MEMORY[0x277D55C70]);
  v6 = *(MEMORY[0x277D55C70] + 4);
  v7 = swift_task_alloc();
  *(v16 + 88) = v7;
  *v7 = *(v16 + 16);
  v7[1] = sub_268EBFC60;
  v8 = *(v16 + 64);

  return v12(v17, v18, v11);
}

uint64_t sub_268EBFC60(uint64_t a1)
{
  v10 = *v2;
  v3 = *(*v2 + 88);
  v10[2] = *v2;
  v11 = v10 + 2;
  v10[12] = v1;

  if (v1)
  {
    v7 = *v11;

    return MEMORY[0x2822009F8](sub_268EBFE3C, 0);
  }

  else
  {
    v4 = v10[10];
    v8 = v10[9];

    v5 = *(*v11 + 8);

    return v5(a1);
  }
}

uint64_t sub_268EBFE3C()
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

uint64_t sub_268EBFEF8()
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
  *(v0 + 72) = "localizedSettingsName";
  *(v0 + 80) = 21;
  *(v0 + 88) = 2;
  sub_268CD0F7C();
  v4 = sub_268F9B5C4();

  switch(v4)
  {
    case 0:
      v3 = 0;
LABEL_10:

      return v3;
    case 1:
      v3 = 1;
      goto LABEL_10;
    case 2:
      v3 = 2;
      goto LABEL_10;
    case 3:
      v3 = 3;
      goto LABEL_10;
  }

  return 4;
}

unint64_t sub_268EC0210()
{
  v2 = qword_2802DDE58;
  if (!qword_2802DDE58)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDE58);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268EC035C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = sub_268EBFEF8();
  *a2 = result;
  return result;
}

uint64_t sub_268EC0394@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  result = sub_268EC00BC();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_268EC03C8(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 64) = v3;
  *(v4 + 105) = a3 & 1;
  *(v4 + 56) = a2;
  *(v4 + 48) = a1;
  *(v4 + 16) = v4;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  *(v4 + 104) = 0;
  *(v4 + 40) = 0;
  *(v4 + 24) = a1;
  *(v4 + 32) = a2;
  *(v4 + 104) = a3 & 1;
  *(v4 + 40) = v3;
  v5 = *(v4 + 16);
  return MEMORY[0x2822009F8](sub_268EC0448, 0);
}

uint64_t sub_268EC0448()
{
  v21 = v0[6];
  v0[2] = v0;
  v18 = sub_268F9AEF4();
  v19 = v1;
  v0[9] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v20 = v2;
  *v2 = sub_268F9AEF4();
  v20[1] = v3;

  if (v21)
  {
    v16 = *(v17 + 48);
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

  v15 = *(v17 + 56);
  v20[6] = sub_268F9AEF4();
  v20[7] = v4;

  if (v15)
  {
    v14 = *(v17 + 56);
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

  v11 = *(v17 + 105);
  v20[12] = sub_268F9AEF4();
  v20[13] = v5;
  v20[17] = MEMORY[0x277D839B0];
  *(v20 + 112) = v11;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v12 = sub_268F9B4F4();
  *(v17 + 80) = v12;
  v13 = (MEMORY[0x277D55C68] + *MEMORY[0x277D55C68]);
  v6 = *(MEMORY[0x277D55C68] + 4);
  v7 = swift_task_alloc();
  *(v17 + 88) = v7;
  v8 = sub_268EC0210();
  *v7 = *(v17 + 16);
  v7[1] = sub_268EBFC60;
  v9 = *(v17 + 64);

  return v13(v18, v19, v12, &unk_287995240, v8);
}

uint64_t sub_268EC07B4()
{
  v1[4] = v0;
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = v0;
  v2 = v1[2];
  return MEMORY[0x2822009F8](sub_268EC07F0, 0);
}

uint64_t sub_268EC07F0()
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

BOOL sub_268EC0944()
{
  sub_268F9B734();
  *v0 = "Settings";
  *(v0 + 8) = 8;
  *(v0 + 16) = 2;
  sub_268CD0F7C();
  v2 = sub_268F9B5C4();

  return v2 != 0;
}

unint64_t sub_268EC0A9C()
{
  v2 = qword_2802DDE60;
  if (!qword_2802DDE60)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDE60);
    return WitnessTable;
  }

  return v2;
}

BOOL sub_268EC0BE8@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = sub_268EC0944();
  *a2 = result;
  return result;
}

uint64_t sub_268EC0C28@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268EC0A1C();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t sub_268EC0C58()
{
  v1[4] = v0;
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = v0;
  v2 = v1[2];
  return MEMORY[0x2822009F8](sub_268EC0C94, 0);
}

uint64_t sub_268EC0C94()
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
  v4 = sub_268EC0A9C();
  *v3 = v8[2];
  v3[1] = sub_268D71B74;
  v5 = v8[4];

  return v11(v12, v9, v10, &unk_2879952D0, v4);
}

uint64_t sub_268EC0E00(char a1, uint64_t a2)
{
  *(v3 + 48) = v2;
  *(v3 + 40) = a2;
  *(v3 + 89) = a1 & 1;
  *(v3 + 16) = v3;
  *(v3 + 88) = 0;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 88) = a1 & 1;
  *(v3 + 24) = a2;
  *(v3 + 32) = v2;
  v4 = *(v3 + 16);
  return MEMORY[0x2822009F8](sub_268EC0E70, 0);
}

uint64_t sub_268EC0E70()
{
  v17 = *(v0 + 40);
  v15 = *(v0 + 89);
  *(v0 + 16) = v0;
  v13 = sub_268F9AEF4();
  v14 = v1;
  *(v0 + 56) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v16 = v2;
  *v2 = sub_268F9AEF4();
  v16[1] = v3;
  v16[5] = MEMORY[0x277D839B0];
  *(v16 + 16) = v15;
  v16[6] = sub_268F9AEF4();
  v16[7] = v4;

  if (v17)
  {
    v11 = v12[5];
    v16[11] = type metadata accessor for SettingsMultiSetting();
    v16[8] = v11;
  }

  else
  {
    v16[8] = 0;
    v16[9] = 0;
    v16[10] = 0;
    v16[11] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v9 = sub_268F9B4F4();
  v12[8] = v9;
  v10 = (MEMORY[0x277D55C70] + *MEMORY[0x277D55C70]);
  v5 = *(MEMORY[0x277D55C70] + 4);
  v6 = swift_task_alloc();
  v12[9] = v6;
  *v6 = v12[2];
  v6[1] = sub_268EC10E4;
  v7 = v12[6];

  return v10(v13, v14, v9);
}

uint64_t sub_268EC10E4(uint64_t a1)
{
  v10 = *v2;
  v3 = *(*v2 + 72);
  v10[2] = *v2;
  v11 = v10 + 2;
  v10[10] = v1;

  if (v1)
  {
    v7 = *v11;

    return MEMORY[0x2822009F8](sub_268EC12B0, 0);
  }

  else
  {
    v4 = v10[8];
    v8 = v10[7];

    v5 = *(*v11 + 8);

    return v5(a1);
  }
}

uint64_t sub_268EC12B0()
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

unint64_t sub_268EC13B4()
{
  v2 = qword_2802DDE68;
  if (!qword_2802DDE68)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDE68);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268EC1500(char a1, uint64_t a2)
{
  *(v3 + 48) = v2;
  *(v3 + 40) = a2;
  *(v3 + 89) = a1 & 1;
  *(v3 + 16) = v3;
  *(v3 + 88) = 0;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 88) = a1 & 1;
  *(v3 + 24) = a2;
  *(v3 + 32) = v2;
  v4 = *(v3 + 16);
  return MEMORY[0x2822009F8](sub_268EC1570, 0);
}

uint64_t sub_268EC1570()
{
  v18 = *(v0 + 40);
  v16 = *(v0 + 89);
  *(v0 + 16) = v0;
  v14 = sub_268F9AEF4();
  v15 = v1;
  *(v0 + 56) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v17 = v2;
  *v2 = sub_268F9AEF4();
  v17[1] = v3;
  v17[5] = MEMORY[0x277D839B0];
  *(v17 + 16) = v16;
  v17[6] = sub_268F9AEF4();
  v17[7] = v4;

  if (v18)
  {
    v12 = v13[5];
    v17[11] = type metadata accessor for SettingsMultiSetting();
    v17[8] = v12;
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
  v10 = sub_268F9B4F4();
  v13[8] = v10;
  v11 = (MEMORY[0x277D55C68] + *MEMORY[0x277D55C68]);
  v5 = *(MEMORY[0x277D55C68] + 4);
  v6 = swift_task_alloc();
  v13[9] = v6;
  v7 = sub_268EC13B4();
  *v6 = v13[2];
  v6[1] = sub_268EC10E4;
  v8 = v13[6];

  return v11(v14, v15, v10, &unk_287995360, v7);
}

uint64_t sub_268EC17FC(char a1, uint64_t a2)
{
  *(v3 + 48) = v2;
  *(v3 + 40) = a2;
  *(v3 + 89) = a1 & 1;
  *(v3 + 16) = v3;
  *(v3 + 88) = 0;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 88) = a1 & 1;
  *(v3 + 24) = a2;
  *(v3 + 32) = v2;
  v4 = *(v3 + 16);
  return MEMORY[0x2822009F8](sub_268EC186C, 0);
}

uint64_t sub_268EC186C()
{
  v17 = *(v0 + 40);
  v15 = *(v0 + 89);
  *(v0 + 16) = v0;
  v13 = sub_268F9AEF4();
  v14 = v1;
  *(v0 + 56) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v16 = v2;
  *v2 = sub_268F9AEF4();
  v16[1] = v3;
  v16[5] = MEMORY[0x277D839B0];
  *(v16 + 16) = v15;
  v16[6] = sub_268F9AEF4();
  v16[7] = v4;

  if (v17)
  {
    v11 = v12[5];
    v16[11] = type metadata accessor for SettingsNumericSetting();
    v16[8] = v11;
  }

  else
  {
    v16[8] = 0;
    v16[9] = 0;
    v16[10] = 0;
    v16[11] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v9 = sub_268F9B4F4();
  v12[8] = v9;
  v10 = (MEMORY[0x277D55C70] + *MEMORY[0x277D55C70]);
  v5 = *(MEMORY[0x277D55C70] + 4);
  v6 = swift_task_alloc();
  v12[9] = v6;
  *v6 = v12[2];
  v6[1] = sub_268EC10E4;
  v7 = v12[6];

  return v10(v13, v14, v9);
}

unint64_t sub_268EC1B2C()
{
  v2 = qword_2802DDE70;
  if (!qword_2802DDE70)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDE70);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268EC1C78(char a1, uint64_t a2)
{
  *(v3 + 48) = v2;
  *(v3 + 40) = a2;
  *(v3 + 89) = a1 & 1;
  *(v3 + 16) = v3;
  *(v3 + 88) = 0;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 88) = a1 & 1;
  *(v3 + 24) = a2;
  *(v3 + 32) = v2;
  v4 = *(v3 + 16);
  return MEMORY[0x2822009F8](sub_268EC1CE8, 0);
}

uint64_t sub_268EC1CE8()
{
  v18 = *(v0 + 40);
  v16 = *(v0 + 89);
  *(v0 + 16) = v0;
  v14 = sub_268F9AEF4();
  v15 = v1;
  *(v0 + 56) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v17 = v2;
  *v2 = sub_268F9AEF4();
  v17[1] = v3;
  v17[5] = MEMORY[0x277D839B0];
  *(v17 + 16) = v16;
  v17[6] = sub_268F9AEF4();
  v17[7] = v4;

  if (v18)
  {
    v12 = v13[5];
    v17[11] = type metadata accessor for SettingsNumericSetting();
    v17[8] = v12;
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
  v10 = sub_268F9B4F4();
  v13[8] = v10;
  v11 = (MEMORY[0x277D55C68] + *MEMORY[0x277D55C68]);
  v5 = *(MEMORY[0x277D55C68] + 4);
  v6 = swift_task_alloc();
  v13[9] = v6;
  v7 = sub_268EC1B2C();
  *v6 = v13[2];
  v6[1] = sub_268EC10E4;
  v8 = v13[6];

  return v11(v14, v15, v10, &unk_2879953F0, v7);
}

uint64_t sub_268EC1F74(char a1, char a2, char a3, uint64_t a4)
{
  *(v5 + 48) = v4;
  *(v5 + 40) = a4;
  *(v5 + 91) = a3 & 1;
  *(v5 + 90) = a2 & 1;
  *(v5 + 89) = a1 & 1;
  *(v5 + 16) = v5;
  *(v5 + 88) = 0;
  *(v5 + 96) = 0;
  *(v5 + 104) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 88) = a1 & 1;
  *(v5 + 96) = a2 & 1;
  *(v5 + 104) = a3 & 1;
  *(v5 + 24) = a4;
  *(v5 + 32) = v4;
  v6 = *(v5 + 16);
  return MEMORY[0x2822009F8](sub_268EC2024, 0);
}

uint64_t sub_268EC2024()
{
  v22 = *(v0 + 40);
  v20 = *(v0 + 91);
  v18 = *(v0 + 90);
  v17 = *(v0 + 89);
  *(v0 + 16) = v0;
  v15 = sub_268F9AEF4();
  v16 = v1;
  *(v0 + 56) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v21 = v2;
  *v2 = sub_268F9AEF4();
  v21[1] = v3;
  v19 = MEMORY[0x277D839B0];
  v21[5] = MEMORY[0x277D839B0];
  *(v21 + 16) = v17;
  v21[6] = sub_268F9AEF4();
  v21[7] = v4;
  v21[11] = v19;
  *(v21 + 64) = v18;
  v21[12] = sub_268F9AEF4();
  v21[13] = v5;
  v21[17] = v19;
  *(v21 + 112) = v20;
  v21[18] = sub_268F9AEF4();
  v21[19] = v6;

  if (v22)
  {
    v13 = v14[5];
    v21[23] = type metadata accessor for SettingsBinarySetting();
    v21[20] = v13;
  }

  else
  {
    v21[20] = 0;
    v21[21] = 0;
    v21[22] = 0;
    v21[23] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v11 = sub_268F9B4F4();
  v14[8] = v11;
  v12 = (MEMORY[0x277D55C70] + *MEMORY[0x277D55C70]);
  v7 = *(MEMORY[0x277D55C70] + 4);
  v8 = swift_task_alloc();
  v14[9] = v8;
  *v8 = v14[2];
  v8[1] = sub_268EC234C;
  v9 = v14[6];

  return v12(v15, v16, v11);
}

uint64_t sub_268EC234C(uint64_t a1)
{
  v10 = *v2;
  v3 = *(*v2 + 72);
  v10[2] = *v2;
  v11 = v10 + 2;
  v10[10] = v1;

  if (v1)
  {
    v7 = *v11;

    return MEMORY[0x2822009F8](sub_268EC2534, 0);
  }

  else
  {
    v4 = v10[8];
    v8 = v10[7];

    v5 = *(*v11 + 8);

    return v5(a1);
  }
}

uint64_t sub_268EC2534()
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

uint64_t sub_268EC25F4()
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
  sub_268CD0F7C();
  v4 = sub_268F9B5C4();

  switch(v4)
  {
    case 0:
      v3 = 0;
LABEL_12:

      return v3;
    case 1:
      v3 = 1;
      goto LABEL_12;
    case 2:
      v3 = 2;
      goto LABEL_12;
    case 3:
      v3 = 3;
      goto LABEL_12;
    case 4:
      v3 = 4;
      goto LABEL_12;
  }

  return 5;
}

unint64_t sub_268EC2988()
{
  v2 = qword_2802DDE78;
  if (!qword_2802DDE78)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDE78);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268EC2AD4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = sub_268EC25F4();
  *a2 = result;
  return result;
}

uint64_t sub_268EC2B0C@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  result = sub_268EC27F8();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_268EC2B40(char a1, char a2, char a3, uint64_t a4)
{
  *(v5 + 48) = v4;
  *(v5 + 40) = a4;
  *(v5 + 91) = a3 & 1;
  *(v5 + 90) = a2 & 1;
  *(v5 + 89) = a1 & 1;
  *(v5 + 16) = v5;
  *(v5 + 88) = 0;
  *(v5 + 96) = 0;
  *(v5 + 104) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 88) = a1 & 1;
  *(v5 + 96) = a2 & 1;
  *(v5 + 104) = a3 & 1;
  *(v5 + 24) = a4;
  *(v5 + 32) = v4;
  v6 = *(v5 + 16);
  return MEMORY[0x2822009F8](sub_268EC2BF0, 0);
}

uint64_t sub_268EC2BF0()
{
  v23 = *(v0 + 40);
  v21 = *(v0 + 91);
  v19 = *(v0 + 90);
  v18 = *(v0 + 89);
  *(v0 + 16) = v0;
  v16 = sub_268F9AEF4();
  v17 = v1;
  *(v0 + 56) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v22 = v2;
  *v2 = sub_268F9AEF4();
  v22[1] = v3;
  v20 = MEMORY[0x277D839B0];
  v22[5] = MEMORY[0x277D839B0];
  *(v22 + 16) = v18;
  v22[6] = sub_268F9AEF4();
  v22[7] = v4;
  v22[11] = v20;
  *(v22 + 64) = v19;
  v22[12] = sub_268F9AEF4();
  v22[13] = v5;
  v22[17] = v20;
  *(v22 + 112) = v21;
  v22[18] = sub_268F9AEF4();
  v22[19] = v6;

  if (v23)
  {
    v14 = v15[5];
    v22[23] = type metadata accessor for SettingsBinarySetting();
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
  v15[8] = v12;
  v13 = (MEMORY[0x277D55C68] + *MEMORY[0x277D55C68]);
  v7 = *(MEMORY[0x277D55C68] + 4);
  v8 = swift_task_alloc();
  v15[9] = v8;
  v9 = sub_268EC2988();
  *v8 = v15[2];
  v8[1] = sub_268EC234C;
  v10 = v15[6];

  return v13(v16, v17, v12, &unk_287995480, v9);
}

uint64_t sub_268EC2F30(char a1, char a2)
{
  *(v3 + 32) = v2;
  *(v3 + 74) = a2 & 1;
  *(v3 + 73) = a1 & 1;
  *(v3 + 16) = v3;
  *(v3 + 72) = 0;
  *(v3 + 80) = 0;
  *(v3 + 24) = 0;
  *(v3 + 72) = a1 & 1;
  *(v3 + 80) = a2 & 1;
  *(v3 + 24) = v2;
  v4 = *(v3 + 16);
  return MEMORY[0x2822009F8](sub_268EC2FB0, 0);
}