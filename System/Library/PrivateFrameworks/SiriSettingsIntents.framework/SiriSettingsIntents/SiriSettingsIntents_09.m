uint64_t sub_268DE580C@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  result = sub_268DE526C();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_268DE5840(uint64_t a1)
{
  v2[6] = v1;
  v2[5] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[3] = a1;
  v2[4] = v1;
  v3 = v2[2];
  return MEMORY[0x2822009F8](sub_268DE588C, 0);
}

uint64_t sub_268DE588C()
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
    v14[5] = sub_268F9A994();
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

uint64_t sub_268DE5AA8(uint64_t a1)
{
  v10 = *v2;
  v3 = *(*v2 + 72);
  v10[2] = *v2;
  v11 = v10 + 2;
  v10[10] = v1;

  if (v1)
  {
    v7 = *v11;

    return MEMORY[0x2822009F8](sub_268DE5C68, 0);
  }

  else
  {
    v4 = v10[8];
    v8 = v10[7];

    v5 = *(*v11 + 8);

    return v5(a1);
  }
}

uint64_t sub_268DE5C68()
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

BOOL sub_268DE5D1C()
{
  sub_268F9B734();
  *v0 = "dialog1";
  *(v0 + 8) = 7;
  *(v0 + 16) = 2;
  sub_268CD0F7C();
  v2 = sub_268F9B5C4();

  return v2 != 0;
}

unint64_t sub_268DE5E74()
{
  v2 = qword_2802DCD70;
  if (!qword_2802DCD70)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCD70);
    return WitnessTable;
  }

  return v2;
}

BOOL sub_268DE5FC0@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = sub_268DE5D1C();
  *a2 = result;
  return result;
}

uint64_t sub_268DE6000@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268DE5DF4();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t sub_268DE6030(uint64_t a1)
{
  v2[6] = v1;
  v2[5] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[3] = a1;
  v2[4] = v1;
  v3 = v2[2];
  return MEMORY[0x2822009F8](sub_268DE607C, 0);
}

uint64_t sub_268DE607C()
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
    v15[5] = sub_268F9A994();
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
  v6 = sub_268DE5E74();
  *v5 = v12[2];
  v5[1] = sub_268DE5AA8;
  v7 = v12[6];

  return v10(v13, v14, v9, &unk_28798FD88, v6);
}

uint64_t sub_268DE62B0()
{
  v1[4] = v0;
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = v0;
  v2 = v1[2];
  return MEMORY[0x2822009F8](sub_268DE62EC, 0);
}

uint64_t sub_268DE62EC()
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

unint64_t sub_268DE648C()
{
  v2 = qword_2802DCD78;
  if (!qword_2802DCD78)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCD78);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268DE65D8()
{
  v1[4] = v0;
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = v0;
  v2 = v1[2];
  return MEMORY[0x2822009F8](sub_268DE6614, 0);
}

uint64_t sub_268DE6614()
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
  v4 = sub_268DE648C();
  *v3 = v8[2];
  v3[1] = sub_268D71B74;
  v5 = v8[4];

  return v11(v12, v9, v10, &unk_28798FE18, v4);
}

uint64_t sub_268DE6780(uint64_t a1, char a2)
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
  return MEMORY[0x2822009F8](sub_268DE67F0, 0);
}

uint64_t sub_268DE67F0()
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

uint64_t sub_268DE6A6C()
{
  sub_268F9B734();
  *v0 = "first1#random1#dialog1";
  *(v0 + 8) = 22;
  *(v0 + 16) = 2;
  *(v0 + 24) = "random1#dialog1";
  *(v0 + 32) = 15;
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

unint64_t sub_268DE6C78()
{
  v2 = qword_2802DCD80;
  if (!qword_2802DCD80)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCD80);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268DE6DC4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = sub_268DE6A6C();
  *a2 = result;
  return result;
}

uint64_t sub_268DE6DFC@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  result = sub_268DE6BA0();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_268DE6E34(uint64_t a1, char a2)
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
  return MEMORY[0x2822009F8](sub_268DE6EA4, 0);
}

uint64_t sub_268DE6EA4()
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
  v7 = sub_268DE6C78();
  *v6 = *(v14 + 16);
  v6[1] = sub_268D7BB14;
  v8 = *(v14 + 48);

  return v12(v15, v16, v11, &unk_28798FEA8, v7);
}

uint64_t sub_268DE7138()
{
  v1[4] = v0;
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = v0;
  v2 = v1[2];
  return MEMORY[0x2822009F8](sub_268DE7174, 0);
}

uint64_t sub_268DE7174()
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

unint64_t sub_268DE7314()
{
  v2 = qword_2802DCD88;
  if (!qword_2802DCD88)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCD88);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268DE7460()
{
  v1[4] = v0;
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = v0;
  v2 = v1[2];
  return MEMORY[0x2822009F8](sub_268DE749C, 0);
}

uint64_t sub_268DE749C()
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
  v4 = sub_268DE7314();
  *v3 = v8[2];
  v3[1] = sub_268D71B74;
  v5 = v8[4];

  return v11(v12, v9, v10, &unk_28798FF38, v4);
}

uint64_t sub_268DE7608(uint64_t a1)
{
  v2[6] = v1;
  v2[5] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[3] = a1;
  v2[4] = v1;
  v3 = v2[2];
  return MEMORY[0x2822009F8](sub_268DE7654, 0);
}

uint64_t sub_268DE7654()
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

unint64_t sub_268DE78BC()
{
  v2 = qword_2802DCD90;
  if (!qword_2802DCD90)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCD90);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268DE7A08(uint64_t a1)
{
  v2[6] = v1;
  v2[5] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[3] = a1;
  v2[4] = v1;
  v3 = v2[2];
  return MEMORY[0x2822009F8](sub_268DE7A54, 0);
}

uint64_t sub_268DE7A54()
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
  v6 = sub_268DE78BC();
  *v5 = v12[2];
  v5[1] = sub_268DE5AA8;
  v7 = v12[6];

  return v10(v13, v14, v9, &unk_28798FFC8, v6);
}

uint64_t sub_268DE7C88(uint64_t a1, char a2, char a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v8 + 96) = v7;
  *(v8 + 88) = a7;
  *(v8 + 147) = a6 & 1;
  *(v8 + 80) = a5;
  *(v8 + 72) = a4;
  *(v8 + 146) = a3 & 1;
  *(v8 + 145) = a2 & 1;
  *(v8 + 64) = a1;
  *(v8 + 16) = v8;
  *(v8 + 24) = 0;
  *(v8 + 144) = 0;
  *(v8 + 152) = 0;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  *(v8 + 160) = 0;
  *(v8 + 48) = 0;
  *(v8 + 56) = 0;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15;
  *(v8 + 104) = swift_task_alloc();
  *(v8 + 24) = a1;
  *(v8 + 144) = a2 & 1;
  *(v8 + 152) = a3 & 1;
  *(v8 + 32) = a4;
  *(v8 + 40) = a5;
  *(v8 + 160) = a6 & 1;
  *(v8 + 48) = a7;
  *(v8 + 56) = v7;
  v10 = *(v8 + 16);

  return MEMORY[0x2822009F8](sub_268DE7E6C, 0);
}

uint64_t sub_268DE7E6C()
{
  v35 = v0[8];
  v0[2] = v0;
  v32 = sub_268DE526C();
  v33 = v1;
  v0[14] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v34 = v2;
  *v2 = sub_268F9AEF4();
  v34[1] = v3;

  if (v35)
  {
    v30 = *(v31 + 64);
    v34[5] = type metadata accessor for SettingsBinarySetting();
    v34[2] = v30;
  }

  else
  {
    v34[2] = 0;
    v34[3] = 0;
    v34[4] = 0;
    v34[5] = 0;
  }

  v29 = *(v31 + 72);
  v28 = *(v31 + 146);
  v26 = *(v31 + 145);
  v34[6] = sub_268F9AEF4();
  v34[7] = v4;
  v27 = MEMORY[0x277D839B0];
  v34[11] = MEMORY[0x277D839B0];
  *(v34 + 64) = v26;
  v34[12] = sub_268F9AEF4();
  v34[13] = v5;
  v34[17] = v27;
  *(v34 + 112) = v28;
  v34[18] = sub_268F9AEF4();
  v34[19] = v6;

  if (v29)
  {
    v25 = *(v31 + 72);
    v34[23] = sub_268F9AA44();
    v34[20] = v25;
  }

  else
  {
    v34[20] = 0;
    v34[21] = 0;
    v34[22] = 0;
    v34[23] = 0;
  }

  v22 = *(v31 + 104);
  v21 = *(v31 + 80);
  v34[24] = sub_268F9AEF4();
  v34[25] = v7;
  sub_268D2A1F0(v21, v22);
  v23 = sub_268F9A9C4();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v22, 1) == 1)
  {
    sub_268D28588(*(v31 + 104));
    v34[26] = 0;
    v34[27] = 0;
    v34[28] = 0;
    v34[29] = 0;
  }

  else
  {
    v20 = *(v31 + 104);
    v34[29] = v23;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v34 + 26);
    (*(v24 + 32))(boxed_opaque_existential_1, v20, v23);
  }

  v19 = *(v31 + 88);
  v18 = *(v31 + 147);
  v34[30] = sub_268F9AEF4();
  v34[31] = v9;
  v34[35] = MEMORY[0x277D839B0];
  *(v34 + 256) = v18;
  v34[36] = sub_268F9AEF4();
  v34[37] = v10;

  if (v19)
  {
    v17 = *(v31 + 88);
    v34[41] = sub_268F9A994();
    v34[38] = v17;
  }

  else
  {
    v34[38] = 0;
    v34[39] = 0;
    v34[40] = 0;
    v34[41] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v15 = sub_268F9B4F4();
  *(v31 + 120) = v15;
  v16 = (MEMORY[0x277D55C70] + *MEMORY[0x277D55C70]);
  v11 = *(MEMORY[0x277D55C70] + 4);
  v12 = swift_task_alloc();
  *(v31 + 128) = v12;
  *v12 = *(v31 + 16);
  v12[1] = sub_268DE8530;
  v13 = *(v31 + 96);

  return v16(v32, v33, v15);
}

uint64_t sub_268DE8530(uint64_t a1)
{
  v11 = *v2;
  v3 = *(*v2 + 128);
  v11[2] = *v2;
  v12 = v11 + 2;
  v11[17] = v1;

  if (v1)
  {
    v7 = *v12;

    return MEMORY[0x2822009F8](sub_268DE874C, 0);
  }

  else
  {
    v4 = v11[15];
    v8 = v11[14];
    v9 = v11[13];

    v5 = *(*v12 + 8);

    return v5(a1);
  }
}

uint64_t sub_268DE874C()
{
  v1 = v0[15];
  v7 = v0[14];
  v8 = v0[13];
  v0[2] = v0;

  v2 = v0;
  v3 = *(v0[2] + 8);
  v4 = v0[2];
  v5 = v2[17];

  return v3();
}

uint64_t sub_268DE8828()
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
  *(v0 + 72) = "first1#first1#dialog1";
  *(v0 + 80) = 21;
  *(v0 + 88) = 2;
  *(v0 + 96) = "first1#first1#dialog2";
  *(v0 + 104) = 21;
  *(v0 + 112) = 2;
  *(v0 + 120) = "first2#dialog1";
  *(v0 + 128) = 14;
  *(v0 + 136) = 2;
  *(v0 + 144) = "first2#dialog2";
  *(v0 + 152) = 14;
  *(v0 + 160) = 2;
  *(v0 + 168) = "first3#dialog1";
  *(v0 + 176) = 14;
  *(v0 + 184) = 2;
  *(v0 + 192) = "first3#dialog2";
  *(v0 + 200) = 14;
  *(v0 + 208) = 2;
  *(v0 + 216) = "first4#dialog1";
  *(v0 + 224) = 14;
  *(v0 + 232) = 2;
  *(v0 + 240) = "first4#dialog2";
  *(v0 + 248) = 14;
  *(v0 + 256) = 2;
  *(v0 + 264) = "first5#dialog1";
  *(v0 + 272) = 14;
  *(v0 + 280) = 2;
  *(v0 + 288) = "first5#dialog10";
  *(v0 + 296) = 15;
  *(v0 + 304) = 2;
  *(v0 + 312) = "first5#dialog11";
  *(v0 + 320) = 15;
  *(v0 + 328) = 2;
  *(v0 + 336) = "first5#dialog12";
  *(v0 + 344) = 15;
  *(v0 + 352) = 2;
  *(v0 + 360) = "first5#dialog2";
  *(v0 + 368) = 14;
  *(v0 + 376) = 2;
  *(v0 + 384) = "first5#dialog3";
  *(v0 + 392) = 14;
  *(v0 + 400) = 2;
  *(v0 + 408) = "first5#dialog4";
  *(v0 + 416) = 14;
  *(v0 + 424) = 2;
  *(v0 + 432) = "first5#dialog5";
  *(v0 + 440) = 14;
  *(v0 + 448) = 2;
  *(v0 + 456) = "first5#dialog6";
  *(v0 + 464) = 14;
  *(v0 + 472) = 2;
  *(v0 + 480) = "first5#dialog7";
  *(v0 + 488) = 14;
  *(v0 + 496) = 2;
  *(v0 + 504) = "first5#dialog8";
  *(v0 + 512) = 14;
  *(v0 + 520) = 2;
  *(v0 + 528) = "first5#dialog9";
  *(v0 + 536) = 14;
  *(v0 + 544) = 2;
  *(v0 + 552) = "first6#dialog1";
  *(v0 + 560) = 14;
  *(v0 + 568) = 2;
  *(v0 + 576) = "first6#random1#dialog1";
  *(v0 + 584) = 22;
  *(v0 + 592) = 2;
  *(v0 + 600) = "first6#random1#dialog2";
  *(v0 + 608) = 22;
  *(v0 + 616) = 2;
  *(v0 + 624) = "random1#dialog1";
  *(v0 + 632) = 15;
  *(v0 + 640) = 2;
  *(v0 + 648) = "random1#dialog2";
  *(v0 + 656) = 15;
  *(v0 + 664) = 2;
  sub_268CD0F7C();
  v4 = sub_268F9B5C4();

  switch(v4)
  {
    case 0:
      v3 = 0;
LABEL_58:

      return v3;
    case 1:
      v3 = 1;
      goto LABEL_58;
    case 2:
      v3 = 2;
      goto LABEL_58;
    case 3:
      v3 = 3;
      goto LABEL_58;
    case 4:
      v3 = 4;
      goto LABEL_58;
    case 5:
      v3 = 5;
      goto LABEL_58;
    case 6:
      v3 = 6;
      goto LABEL_58;
    case 7:
      v3 = 7;
      goto LABEL_58;
    case 8:
      v3 = 8;
      goto LABEL_58;
    case 9:
      v3 = 9;
      goto LABEL_58;
    case 10:
      v3 = 10;
      goto LABEL_58;
    case 11:
      v3 = 11;
      goto LABEL_58;
    case 12:
      v3 = 12;
      goto LABEL_58;
    case 13:
      v3 = 13;
      goto LABEL_58;
    case 14:
      v3 = 14;
      goto LABEL_58;
    case 15:
      v3 = 15;
      goto LABEL_58;
    case 16:
      v3 = 16;
      goto LABEL_58;
    case 17:
      v3 = 17;
      goto LABEL_58;
    case 18:
      v3 = 18;
      goto LABEL_58;
    case 19:
      v3 = 19;
      goto LABEL_58;
    case 20:
      v3 = 20;
      goto LABEL_58;
    case 21:
      v3 = 21;
      goto LABEL_58;
    case 22:
      v3 = 22;
      goto LABEL_58;
    case 23:
      v3 = 23;
      goto LABEL_58;
    case 24:
      v3 = 24;
      goto LABEL_58;
    case 25:
      v3 = 25;
      goto LABEL_58;
    case 26:
      v3 = 26;
      goto LABEL_58;
    case 27:
      v3 = 27;
      goto LABEL_58;
  }

  return 28;
}

unint64_t sub_268DE9560()
{
  v2 = qword_2802DCD98;
  if (!qword_2802DCD98)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCD98);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268DE96AC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = sub_268DE8828();
  *a2 = result;
  return result;
}

uint64_t sub_268DE96E4@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  result = sub_268DE9054();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_268DE9718(uint64_t a1, char a2, char a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v8 + 96) = v7;
  *(v8 + 88) = a7;
  *(v8 + 147) = a6 & 1;
  *(v8 + 80) = a5;
  *(v8 + 72) = a4;
  *(v8 + 146) = a3 & 1;
  *(v8 + 145) = a2 & 1;
  *(v8 + 64) = a1;
  *(v8 + 16) = v8;
  *(v8 + 24) = 0;
  *(v8 + 144) = 0;
  *(v8 + 152) = 0;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  *(v8 + 160) = 0;
  *(v8 + 48) = 0;
  *(v8 + 56) = 0;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15;
  *(v8 + 104) = swift_task_alloc();
  *(v8 + 24) = a1;
  *(v8 + 144) = a2 & 1;
  *(v8 + 152) = a3 & 1;
  *(v8 + 32) = a4;
  *(v8 + 40) = a5;
  *(v8 + 160) = a6 & 1;
  *(v8 + 48) = a7;
  *(v8 + 56) = v7;
  v10 = *(v8 + 16);

  return MEMORY[0x2822009F8](sub_268DE98FC, 0);
}

uint64_t sub_268DE98FC()
{
  v36 = v0[8];
  v0[2] = v0;
  v33 = sub_268DE526C();
  v34 = v1;
  v0[14] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v35 = v2;
  *v2 = sub_268F9AEF4();
  v35[1] = v3;

  if (v36)
  {
    v31 = *(v32 + 64);
    v35[5] = type metadata accessor for SettingsBinarySetting();
    v35[2] = v31;
  }

  else
  {
    v35[2] = 0;
    v35[3] = 0;
    v35[4] = 0;
    v35[5] = 0;
  }

  v30 = *(v32 + 72);
  v29 = *(v32 + 146);
  v27 = *(v32 + 145);
  v35[6] = sub_268F9AEF4();
  v35[7] = v4;
  v28 = MEMORY[0x277D839B0];
  v35[11] = MEMORY[0x277D839B0];
  *(v35 + 64) = v27;
  v35[12] = sub_268F9AEF4();
  v35[13] = v5;
  v35[17] = v28;
  *(v35 + 112) = v29;
  v35[18] = sub_268F9AEF4();
  v35[19] = v6;

  if (v30)
  {
    v26 = *(v32 + 72);
    v35[23] = sub_268F9AA44();
    v35[20] = v26;
  }

  else
  {
    v35[20] = 0;
    v35[21] = 0;
    v35[22] = 0;
    v35[23] = 0;
  }

  v23 = *(v32 + 104);
  v22 = *(v32 + 80);
  v35[24] = sub_268F9AEF4();
  v35[25] = v7;
  sub_268D2A1F0(v22, v23);
  v24 = sub_268F9A9C4();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v23, 1) == 1)
  {
    sub_268D28588(*(v32 + 104));
    v35[26] = 0;
    v35[27] = 0;
    v35[28] = 0;
    v35[29] = 0;
  }

  else
  {
    v21 = *(v32 + 104);
    v35[29] = v24;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v35 + 26);
    (*(v25 + 32))(boxed_opaque_existential_1, v21, v24);
  }

  v20 = *(v32 + 88);
  v19 = *(v32 + 147);
  v35[30] = sub_268F9AEF4();
  v35[31] = v9;
  v35[35] = MEMORY[0x277D839B0];
  *(v35 + 256) = v19;
  v35[36] = sub_268F9AEF4();
  v35[37] = v10;

  if (v20)
  {
    v18 = *(v32 + 88);
    v35[41] = sub_268F9A994();
    v35[38] = v18;
  }

  else
  {
    v35[38] = 0;
    v35[39] = 0;
    v35[40] = 0;
    v35[41] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v16 = sub_268F9B4F4();
  *(v32 + 120) = v16;
  v17 = (MEMORY[0x277D55C68] + *MEMORY[0x277D55C68]);
  v11 = *(MEMORY[0x277D55C68] + 4);
  v12 = swift_task_alloc();
  *(v32 + 128) = v12;
  v13 = sub_268DE9560();
  *v12 = *(v32 + 16);
  v12[1] = sub_268DE8530;
  v14 = *(v32 + 96);

  return v17(v33, v34, v16, &unk_287990058, v13);
}

uint64_t sub_268DE9FD8(uint64_t a1, char a2, char a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v8 + 96) = v7;
  *(v8 + 88) = a7;
  *(v8 + 147) = a6 & 1;
  *(v8 + 80) = a5;
  *(v8 + 72) = a4;
  *(v8 + 146) = a3 & 1;
  *(v8 + 145) = a2 & 1;
  *(v8 + 64) = a1;
  *(v8 + 16) = v8;
  *(v8 + 24) = 0;
  *(v8 + 144) = 0;
  *(v8 + 152) = 0;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  *(v8 + 160) = 0;
  *(v8 + 48) = 0;
  *(v8 + 56) = 0;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15;
  *(v8 + 104) = swift_task_alloc();
  *(v8 + 24) = a1;
  *(v8 + 144) = a2 & 1;
  *(v8 + 152) = a3 & 1;
  *(v8 + 32) = a4;
  *(v8 + 40) = a5;
  *(v8 + 160) = a6 & 1;
  *(v8 + 48) = a7;
  *(v8 + 56) = v7;
  v10 = *(v8 + 16);

  return MEMORY[0x2822009F8](sub_268DEA1BC, 0);
}

uint64_t sub_268DEA1BC()
{
  v35 = v0[8];
  v0[2] = v0;
  v32 = sub_268F9AEF4();
  v33 = v1;
  v0[14] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v34 = v2;
  *v2 = sub_268F9AEF4();
  v34[1] = v3;

  if (v35)
  {
    v30 = *(v31 + 64);
    v34[5] = type metadata accessor for SettingsBinarySetting();
    v34[2] = v30;
  }

  else
  {
    v34[2] = 0;
    v34[3] = 0;
    v34[4] = 0;
    v34[5] = 0;
  }

  v29 = *(v31 + 72);
  v28 = *(v31 + 146);
  v26 = *(v31 + 145);
  v34[6] = sub_268F9AEF4();
  v34[7] = v4;
  v27 = MEMORY[0x277D839B0];
  v34[11] = MEMORY[0x277D839B0];
  *(v34 + 64) = v26;
  v34[12] = sub_268F9AEF4();
  v34[13] = v5;
  v34[17] = v27;
  *(v34 + 112) = v28;
  v34[18] = sub_268F9AEF4();
  v34[19] = v6;

  if (v29)
  {
    v25 = *(v31 + 72);
    v34[23] = sub_268F9AA44();
    v34[20] = v25;
  }

  else
  {
    v34[20] = 0;
    v34[21] = 0;
    v34[22] = 0;
    v34[23] = 0;
  }

  v22 = *(v31 + 104);
  v21 = *(v31 + 80);
  v34[24] = sub_268F9AEF4();
  v34[25] = v7;
  sub_268D2A1F0(v21, v22);
  v23 = sub_268F9A9C4();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v22, 1) == 1)
  {
    sub_268D28588(*(v31 + 104));
    v34[26] = 0;
    v34[27] = 0;
    v34[28] = 0;
    v34[29] = 0;
  }

  else
  {
    v20 = *(v31 + 104);
    v34[29] = v23;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v34 + 26);
    (*(v24 + 32))(boxed_opaque_existential_1, v20, v23);
  }

  v19 = *(v31 + 88);
  v18 = *(v31 + 147);
  v34[30] = sub_268F9AEF4();
  v34[31] = v9;
  v34[35] = MEMORY[0x277D839B0];
  *(v34 + 256) = v18;
  v34[36] = sub_268F9AEF4();
  v34[37] = v10;

  if (v19)
  {
    v17 = *(v31 + 88);
    v34[41] = sub_268F9A994();
    v34[38] = v17;
  }

  else
  {
    v34[38] = 0;
    v34[39] = 0;
    v34[40] = 0;
    v34[41] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v15 = sub_268F9B4F4();
  *(v31 + 120) = v15;
  v16 = (MEMORY[0x277D55C70] + *MEMORY[0x277D55C70]);
  v11 = *(MEMORY[0x277D55C70] + 4);
  v12 = swift_task_alloc();
  *(v31 + 128) = v12;
  *v12 = *(v31 + 16);
  v12[1] = sub_268DE8530;
  v13 = *(v31 + 96);

  return v16(v32, v33, v15);
}

uint64_t sub_268DEA898()
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
  *(v0 + 72) = "first1#first1#dialog1";
  *(v0 + 80) = 21;
  *(v0 + 88) = 2;
  *(v0 + 96) = "first1#first1#dialog2";
  *(v0 + 104) = 21;
  *(v0 + 112) = 2;
  *(v0 + 120) = "first2#dialog1";
  *(v0 + 128) = 14;
  *(v0 + 136) = 2;
  *(v0 + 144) = "first2#dialog2";
  *(v0 + 152) = 14;
  *(v0 + 160) = 2;
  *(v0 + 168) = "first3#dialog1";
  *(v0 + 176) = 14;
  *(v0 + 184) = 2;
  *(v0 + 192) = "first3#dialog10";
  *(v0 + 200) = 15;
  *(v0 + 208) = 2;
  *(v0 + 216) = "first3#dialog11";
  *(v0 + 224) = 15;
  *(v0 + 232) = 2;
  *(v0 + 240) = "first3#dialog12";
  *(v0 + 248) = 15;
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
  *(v0 + 336) = "first3#dialog5";
  *(v0 + 344) = 14;
  *(v0 + 352) = 2;
  *(v0 + 360) = "first3#dialog6";
  *(v0 + 368) = 14;
  *(v0 + 376) = 2;
  *(v0 + 384) = "first3#dialog7";
  *(v0 + 392) = 14;
  *(v0 + 400) = 2;
  *(v0 + 408) = "first3#dialog8";
  *(v0 + 416) = 14;
  *(v0 + 424) = 2;
  *(v0 + 432) = "first3#dialog9";
  *(v0 + 440) = 14;
  *(v0 + 448) = 2;
  *(v0 + 456) = "first4#dialog1";
  *(v0 + 464) = 14;
  *(v0 + 472) = 2;
  *(v0 + 480) = "first4#random1#dialog1";
  *(v0 + 488) = 22;
  *(v0 + 496) = 2;
  *(v0 + 504) = "first4#random1#dialog2";
  *(v0 + 512) = 22;
  *(v0 + 520) = 2;
  *(v0 + 528) = "random1#dialog1";
  *(v0 + 536) = 15;
  *(v0 + 544) = 2;
  *(v0 + 552) = "random1#dialog2";
  *(v0 + 560) = 15;
  *(v0 + 568) = 2;
  *(v0 + 576) = "switchingToOppositeDisplayMode";
  *(v0 + 584) = 30;
  *(v0 + 592) = 2;
  sub_268CD0F7C();
  v4 = sub_268F9B5C4();

  switch(v4)
  {
    case 0:
      v3 = 0;
LABEL_52:

      return v3;
    case 1:
      v3 = 1;
      goto LABEL_52;
    case 2:
      v3 = 2;
      goto LABEL_52;
    case 3:
      v3 = 3;
      goto LABEL_52;
    case 4:
      v3 = 4;
      goto LABEL_52;
    case 5:
      v3 = 5;
      goto LABEL_52;
    case 6:
      v3 = 6;
      goto LABEL_52;
    case 7:
      v3 = 7;
      goto LABEL_52;
    case 8:
      v3 = 8;
      goto LABEL_52;
    case 9:
      v3 = 9;
      goto LABEL_52;
    case 10:
      v3 = 10;
      goto LABEL_52;
    case 11:
      v3 = 11;
      goto LABEL_52;
    case 12:
      v3 = 12;
      goto LABEL_52;
    case 13:
      v3 = 13;
      goto LABEL_52;
    case 14:
      v3 = 14;
      goto LABEL_52;
    case 15:
      v3 = 15;
      goto LABEL_52;
    case 16:
      v3 = 16;
      goto LABEL_52;
    case 17:
      v3 = 17;
      goto LABEL_52;
    case 18:
      v3 = 18;
      goto LABEL_52;
    case 19:
      v3 = 19;
      goto LABEL_52;
    case 20:
      v3 = 20;
      goto LABEL_52;
    case 21:
      v3 = 21;
      goto LABEL_52;
    case 22:
      v3 = 22;
      goto LABEL_52;
    case 23:
      v3 = 23;
      goto LABEL_52;
    case 24:
      v3 = 24;
      goto LABEL_52;
  }

  return 25;
}

unint64_t sub_268DEB470()
{
  v2 = qword_2802DCDA0;
  if (!qword_2802DCDA0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCDA0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268DEB5BC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = sub_268DEA898();
  *a2 = result;
  return result;
}

uint64_t sub_268DEB5F4@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  result = sub_268DEAFDC();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_268DEB628(uint64_t a1, char a2, char a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v8 + 96) = v7;
  *(v8 + 88) = a7;
  *(v8 + 147) = a6 & 1;
  *(v8 + 80) = a5;
  *(v8 + 72) = a4;
  *(v8 + 146) = a3 & 1;
  *(v8 + 145) = a2 & 1;
  *(v8 + 64) = a1;
  *(v8 + 16) = v8;
  *(v8 + 24) = 0;
  *(v8 + 144) = 0;
  *(v8 + 152) = 0;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  *(v8 + 160) = 0;
  *(v8 + 48) = 0;
  *(v8 + 56) = 0;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15;
  *(v8 + 104) = swift_task_alloc();
  *(v8 + 24) = a1;
  *(v8 + 144) = a2 & 1;
  *(v8 + 152) = a3 & 1;
  *(v8 + 32) = a4;
  *(v8 + 40) = a5;
  *(v8 + 160) = a6 & 1;
  *(v8 + 48) = a7;
  *(v8 + 56) = v7;
  v10 = *(v8 + 16);

  return MEMORY[0x2822009F8](sub_268DEB80C, 0);
}

uint64_t sub_268DEB80C()
{
  v36 = v0[8];
  v0[2] = v0;
  v33 = sub_268F9AEF4();
  v34 = v1;
  v0[14] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v35 = v2;
  *v2 = sub_268F9AEF4();
  v35[1] = v3;

  if (v36)
  {
    v31 = *(v32 + 64);
    v35[5] = type metadata accessor for SettingsBinarySetting();
    v35[2] = v31;
  }

  else
  {
    v35[2] = 0;
    v35[3] = 0;
    v35[4] = 0;
    v35[5] = 0;
  }

  v30 = *(v32 + 72);
  v29 = *(v32 + 146);
  v27 = *(v32 + 145);
  v35[6] = sub_268F9AEF4();
  v35[7] = v4;
  v28 = MEMORY[0x277D839B0];
  v35[11] = MEMORY[0x277D839B0];
  *(v35 + 64) = v27;
  v35[12] = sub_268F9AEF4();
  v35[13] = v5;
  v35[17] = v28;
  *(v35 + 112) = v29;
  v35[18] = sub_268F9AEF4();
  v35[19] = v6;

  if (v30)
  {
    v26 = *(v32 + 72);
    v35[23] = sub_268F9AA44();
    v35[20] = v26;
  }

  else
  {
    v35[20] = 0;
    v35[21] = 0;
    v35[22] = 0;
    v35[23] = 0;
  }

  v23 = *(v32 + 104);
  v22 = *(v32 + 80);
  v35[24] = sub_268F9AEF4();
  v35[25] = v7;
  sub_268D2A1F0(v22, v23);
  v24 = sub_268F9A9C4();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v23, 1) == 1)
  {
    sub_268D28588(*(v32 + 104));
    v35[26] = 0;
    v35[27] = 0;
    v35[28] = 0;
    v35[29] = 0;
  }

  else
  {
    v21 = *(v32 + 104);
    v35[29] = v24;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v35 + 26);
    (*(v25 + 32))(boxed_opaque_existential_1, v21, v24);
  }

  v20 = *(v32 + 88);
  v19 = *(v32 + 147);
  v35[30] = sub_268F9AEF4();
  v35[31] = v9;
  v35[35] = MEMORY[0x277D839B0];
  *(v35 + 256) = v19;
  v35[36] = sub_268F9AEF4();
  v35[37] = v10;

  if (v20)
  {
    v18 = *(v32 + 88);
    v35[41] = sub_268F9A994();
    v35[38] = v18;
  }

  else
  {
    v35[38] = 0;
    v35[39] = 0;
    v35[40] = 0;
    v35[41] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v16 = sub_268F9B4F4();
  *(v32 + 120) = v16;
  v17 = (MEMORY[0x277D55C68] + *MEMORY[0x277D55C68]);
  v11 = *(MEMORY[0x277D55C68] + 4);
  v12 = swift_task_alloc();
  *(v32 + 128) = v12;
  v13 = sub_268DEB470();
  *v12 = *(v32 + 16);
  v12[1] = sub_268DE8530;
  v14 = *(v32 + 96);

  return v17(v33, v34, v16, &unk_2879900E8, v13);
}

uint64_t sub_268DEBF00(uint64_t a1, char a2, char a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, char a8)
{
  *(v9 + 96) = v8;
  *(v9 + 148) = a8 & 1;
  *(v9 + 88) = a7;
  *(v9 + 147) = a6 & 1;
  *(v9 + 80) = a5;
  *(v9 + 72) = a4;
  *(v9 + 146) = a3 & 1;
  *(v9 + 145) = a2 & 1;
  *(v9 + 64) = a1;
  *(v9 + 16) = v9;
  *(v9 + 24) = 0;
  *(v9 + 144) = 0;
  *(v9 + 152) = 0;
  *(v9 + 32) = 0;
  *(v9 + 40) = 0;
  *(v9 + 160) = 0;
  *(v9 + 48) = 0;
  *(v9 + 168) = 0;
  *(v9 + 56) = 0;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15;
  *(v9 + 104) = swift_task_alloc();
  *(v9 + 24) = a1;
  *(v9 + 144) = a2 & 1;
  *(v9 + 152) = a3 & 1;
  *(v9 + 32) = a4;
  *(v9 + 40) = a5;
  *(v9 + 160) = a6 & 1;
  *(v9 + 48) = a7;
  *(v9 + 168) = a8 & 1;
  *(v9 + 56) = v8;
  v11 = *(v9 + 16);

  return MEMORY[0x2822009F8](sub_268DEC11C, 0);
}

uint64_t sub_268DEC11C()
{
  v37 = v0[8];
  v0[2] = v0;
  v34 = sub_268F9AEF4();
  v35 = v1;
  v0[14] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v36 = v2;
  *v2 = sub_268F9AEF4();
  v36[1] = v3;

  if (v37)
  {
    v32 = *(v33 + 64);
    v36[5] = type metadata accessor for SettingsMultiSetting();
    v36[2] = v32;
  }

  else
  {
    v36[2] = 0;
    v36[3] = 0;
    v36[4] = 0;
    v36[5] = 0;
  }

  v31 = *(v33 + 72);
  v30 = *(v33 + 146);
  v28 = *(v33 + 145);
  v36[6] = sub_268F9AEF4();
  v36[7] = v4;
  v29 = MEMORY[0x277D839B0];
  v36[11] = MEMORY[0x277D839B0];
  *(v36 + 64) = v28;
  v36[12] = sub_268F9AEF4();
  v36[13] = v5;
  v36[17] = v29;
  *(v36 + 112) = v30;
  v36[18] = sub_268F9AEF4();
  v36[19] = v6;

  if (v31)
  {
    v27 = *(v33 + 72);
    v36[23] = sub_268F9AA44();
    v36[20] = v27;
  }

  else
  {
    v36[20] = 0;
    v36[21] = 0;
    v36[22] = 0;
    v36[23] = 0;
  }

  v24 = *(v33 + 104);
  v23 = *(v33 + 80);
  v36[24] = sub_268F9AEF4();
  v36[25] = v7;
  sub_268D2A1F0(v23, v24);
  v25 = sub_268F9A9C4();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v24, 1) == 1)
  {
    sub_268D28588(*(v33 + 104));
    v36[26] = 0;
    v36[27] = 0;
    v36[28] = 0;
    v36[29] = 0;
  }

  else
  {
    v22 = *(v33 + 104);
    v36[29] = v25;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v36 + 26);
    (*(v26 + 32))(boxed_opaque_existential_1, v22, v25);
  }

  v21 = *(v33 + 88);
  v20 = *(v33 + 147);
  v36[30] = sub_268F9AEF4();
  v36[31] = v9;
  v36[35] = MEMORY[0x277D839B0];
  *(v36 + 256) = v20;
  v36[36] = sub_268F9AEF4();
  v36[37] = v10;

  if (v21)
  {
    v19 = *(v33 + 88);
    v36[41] = sub_268F9A994();
    v36[38] = v19;
  }

  else
  {
    v36[38] = 0;
    v36[39] = 0;
    v36[40] = 0;
    v36[41] = 0;
  }

  v16 = *(v33 + 148);
  v36[42] = sub_268F9AEF4();
  v36[43] = v11;
  v36[47] = MEMORY[0x277D839B0];
  *(v36 + 352) = v16;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v17 = sub_268F9B4F4();
  *(v33 + 120) = v17;
  v18 = (MEMORY[0x277D55C70] + *MEMORY[0x277D55C70]);
  v12 = *(MEMORY[0x277D55C70] + 4);
  v13 = swift_task_alloc();
  *(v33 + 128) = v13;
  *v13 = *(v33 + 16);
  v13[1] = sub_268DEC878;
  v14 = *(v33 + 96);

  return v18(v34, v35, v17);
}

uint64_t sub_268DEC878(uint64_t a1)
{
  v11 = *v2;
  v3 = *(*v2 + 128);
  v11[2] = *v2;
  v12 = v11 + 2;
  v11[17] = v1;

  if (v1)
  {
    v7 = *v12;

    return MEMORY[0x2822009F8](sub_268DECAA0, 0);
  }

  else
  {
    v4 = v11[15];
    v8 = v11[14];
    v9 = v11[13];

    v5 = *(*v12 + 8);

    return v5(a1);
  }
}

uint64_t sub_268DECAA0()
{
  v1 = v0[15];
  v7 = v0[14];
  v8 = v0[13];
  v0[2] = v0;

  v2 = v0;
  v3 = *(v0[2] + 8);
  v4 = v0[2];
  v5 = v2[17];

  return v3();
}

uint64_t sub_268DECB80()
{
  sub_268F9B734();
  *v0 = "dialog1";
  *(v0 + 8) = 7;
  *(v0 + 16) = 2;
  *(v0 + 24) = "dialog2";
  *(v0 + 32) = 7;
  *(v0 + 40) = 2;
  *(v0 + 48) = "first1#dialog1";
  *(v0 + 56) = 14;
  *(v0 + 64) = 2;
  *(v0 + 72) = "first1#dialog2";
  *(v0 + 80) = 14;
  *(v0 + 88) = 2;
  *(v0 + 96) = "first1#first1#dialog1";
  *(v0 + 104) = 21;
  *(v0 + 112) = 2;
  *(v0 + 120) = "first1#first1#dialog2";
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
  *(v0 + 216) = "first3#dialog10";
  *(v0 + 224) = 15;
  *(v0 + 232) = 2;
  *(v0 + 240) = "first3#dialog11";
  *(v0 + 248) = 15;
  *(v0 + 256) = 2;
  *(v0 + 264) = "first3#dialog12";
  *(v0 + 272) = 15;
  *(v0 + 280) = 2;
  *(v0 + 288) = "first3#dialog2";
  *(v0 + 296) = 14;
  *(v0 + 304) = 2;
  *(v0 + 312) = "first3#dialog3";
  *(v0 + 320) = 14;
  *(v0 + 328) = 2;
  *(v0 + 336) = "first3#dialog4";
  *(v0 + 344) = 14;
  *(v0 + 352) = 2;
  *(v0 + 360) = "first3#dialog5";
  *(v0 + 368) = 14;
  *(v0 + 376) = 2;
  *(v0 + 384) = "first3#dialog6";
  *(v0 + 392) = 14;
  *(v0 + 400) = 2;
  *(v0 + 408) = "first3#dialog7";
  *(v0 + 416) = 14;
  *(v0 + 424) = 2;
  *(v0 + 432) = "first3#dialog8";
  *(v0 + 440) = 14;
  *(v0 + 448) = 2;
  *(v0 + 456) = "first3#dialog9";
  *(v0 + 464) = 14;
  *(v0 + 472) = 2;
  *(v0 + 480) = "first4#dialog1";
  *(v0 + 488) = 14;
  *(v0 + 496) = 2;
  *(v0 + 504) = "first4#dialog2";
  *(v0 + 512) = 14;
  *(v0 + 520) = 2;
  *(v0 + 528) = "first4#dialog3";
  *(v0 + 536) = 14;
  *(v0 + 544) = 2;
  *(v0 + 552) = "first4#random1#dialog1";
  *(v0 + 560) = 22;
  *(v0 + 568) = 2;
  *(v0 + 576) = "first4#random1#dialog2";
  *(v0 + 584) = 22;
  *(v0 + 592) = 2;
  *(v0 + 600) = "random1#dialog1";
  *(v0 + 608) = 15;
  *(v0 + 616) = 2;
  *(v0 + 624) = "random1#dialog2";
  *(v0 + 632) = 15;
  *(v0 + 640) = 2;
  sub_268CD0F7C();
  v4 = sub_268F9B5C4();

  switch(v4)
  {
    case 0:
      v3 = 0;
LABEL_56:

      return v3;
    case 1:
      v3 = 1;
      goto LABEL_56;
    case 2:
      v3 = 2;
      goto LABEL_56;
    case 3:
      v3 = 3;
      goto LABEL_56;
    case 4:
      v3 = 4;
      goto LABEL_56;
    case 5:
      v3 = 5;
      goto LABEL_56;
    case 6:
      v3 = 6;
      goto LABEL_56;
    case 7:
      v3 = 7;
      goto LABEL_56;
    case 8:
      v3 = 8;
      goto LABEL_56;
    case 9:
      v3 = 9;
      goto LABEL_56;
    case 10:
      v3 = 10;
      goto LABEL_56;
    case 11:
      v3 = 11;
      goto LABEL_56;
    case 12:
      v3 = 12;
      goto LABEL_56;
    case 13:
      v3 = 13;
      goto LABEL_56;
    case 14:
      v3 = 14;
      goto LABEL_56;
    case 15:
      v3 = 15;
      goto LABEL_56;
    case 16:
      v3 = 16;
      goto LABEL_56;
    case 17:
      v3 = 17;
      goto LABEL_56;
    case 18:
      v3 = 18;
      goto LABEL_56;
    case 19:
      v3 = 19;
      goto LABEL_56;
    case 20:
      v3 = 20;
      goto LABEL_56;
    case 21:
      v3 = 21;
      goto LABEL_56;
    case 22:
      v3 = 22;
      goto LABEL_56;
    case 23:
      v3 = 23;
      goto LABEL_56;
    case 24:
      v3 = 24;
      goto LABEL_56;
    case 25:
      v3 = 25;
      goto LABEL_56;
    case 26:
      v3 = 26;
      goto LABEL_56;
  }

  return 27;
}

unint64_t sub_268DED840()
{
  v2 = qword_2802DCDA8;
  if (!qword_2802DCDA8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCDA8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268DED98C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = sub_268DECB80();
  *a2 = result;
  return result;
}

uint64_t sub_268DED9C4@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  result = sub_268DED35C();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_268DED9F8(uint64_t a1, char a2, char a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, char a8)
{
  *(v9 + 96) = v8;
  *(v9 + 148) = a8 & 1;
  *(v9 + 88) = a7;
  *(v9 + 147) = a6 & 1;
  *(v9 + 80) = a5;
  *(v9 + 72) = a4;
  *(v9 + 146) = a3 & 1;
  *(v9 + 145) = a2 & 1;
  *(v9 + 64) = a1;
  *(v9 + 16) = v9;
  *(v9 + 24) = 0;
  *(v9 + 144) = 0;
  *(v9 + 152) = 0;
  *(v9 + 32) = 0;
  *(v9 + 40) = 0;
  *(v9 + 160) = 0;
  *(v9 + 48) = 0;
  *(v9 + 168) = 0;
  *(v9 + 56) = 0;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15;
  *(v9 + 104) = swift_task_alloc();
  *(v9 + 24) = a1;
  *(v9 + 144) = a2 & 1;
  *(v9 + 152) = a3 & 1;
  *(v9 + 32) = a4;
  *(v9 + 40) = a5;
  *(v9 + 160) = a6 & 1;
  *(v9 + 48) = a7;
  *(v9 + 168) = a8 & 1;
  *(v9 + 56) = v8;
  v11 = *(v9 + 16);

  return MEMORY[0x2822009F8](sub_268DEDC14, 0);
}

uint64_t sub_268DEDC14()
{
  v38 = v0[8];
  v0[2] = v0;
  v35 = sub_268F9AEF4();
  v36 = v1;
  v0[14] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v37 = v2;
  *v2 = sub_268F9AEF4();
  v37[1] = v3;

  if (v38)
  {
    v33 = *(v34 + 64);
    v37[5] = type metadata accessor for SettingsMultiSetting();
    v37[2] = v33;
  }

  else
  {
    v37[2] = 0;
    v37[3] = 0;
    v37[4] = 0;
    v37[5] = 0;
  }

  v32 = *(v34 + 72);
  v31 = *(v34 + 146);
  v29 = *(v34 + 145);
  v37[6] = sub_268F9AEF4();
  v37[7] = v4;
  v30 = MEMORY[0x277D839B0];
  v37[11] = MEMORY[0x277D839B0];
  *(v37 + 64) = v29;
  v37[12] = sub_268F9AEF4();
  v37[13] = v5;
  v37[17] = v30;
  *(v37 + 112) = v31;
  v37[18] = sub_268F9AEF4();
  v37[19] = v6;

  if (v32)
  {
    v28 = *(v34 + 72);
    v37[23] = sub_268F9AA44();
    v37[20] = v28;
  }

  else
  {
    v37[20] = 0;
    v37[21] = 0;
    v37[22] = 0;
    v37[23] = 0;
  }

  v25 = *(v34 + 104);
  v24 = *(v34 + 80);
  v37[24] = sub_268F9AEF4();
  v37[25] = v7;
  sub_268D2A1F0(v24, v25);
  v26 = sub_268F9A9C4();
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v25, 1) == 1)
  {
    sub_268D28588(*(v34 + 104));
    v37[26] = 0;
    v37[27] = 0;
    v37[28] = 0;
    v37[29] = 0;
  }

  else
  {
    v23 = *(v34 + 104);
    v37[29] = v26;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v37 + 26);
    (*(v27 + 32))(boxed_opaque_existential_1, v23, v26);
  }

  v22 = *(v34 + 88);
  v21 = *(v34 + 147);
  v37[30] = sub_268F9AEF4();
  v37[31] = v9;
  v37[35] = MEMORY[0x277D839B0];
  *(v37 + 256) = v21;
  v37[36] = sub_268F9AEF4();
  v37[37] = v10;

  if (v22)
  {
    v20 = *(v34 + 88);
    v37[41] = sub_268F9A994();
    v37[38] = v20;
  }

  else
  {
    v37[38] = 0;
    v37[39] = 0;
    v37[40] = 0;
    v37[41] = 0;
  }

  v17 = *(v34 + 148);
  v37[42] = sub_268F9AEF4();
  v37[43] = v11;
  v37[47] = MEMORY[0x277D839B0];
  *(v37 + 352) = v17;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v18 = sub_268F9B4F4();
  *(v34 + 120) = v18;
  v19 = (MEMORY[0x277D55C68] + *MEMORY[0x277D55C68]);
  v12 = *(MEMORY[0x277D55C68] + 4);
  v13 = swift_task_alloc();
  *(v34 + 128) = v13;
  v14 = sub_268DED840();
  *v13 = *(v34 + 16);
  v13[1] = sub_268DEC878;
  v15 = *(v34 + 96);

  return v19(v35, v36, v18, &unk_287990178, v14);
}

uint64_t sub_268DEE388(uint64_t a1, char a2, char a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, char a8)
{
  *(v9 + 96) = v8;
  *(v9 + 148) = a8 & 1;
  *(v9 + 88) = a7;
  *(v9 + 147) = a6 & 1;
  *(v9 + 80) = a5;
  *(v9 + 72) = a4;
  *(v9 + 146) = a3 & 1;
  *(v9 + 145) = a2 & 1;
  *(v9 + 64) = a1;
  *(v9 + 16) = v9;
  *(v9 + 24) = 0;
  *(v9 + 144) = 0;
  *(v9 + 152) = 0;
  *(v9 + 32) = 0;
  *(v9 + 40) = 0;
  *(v9 + 160) = 0;
  *(v9 + 48) = 0;
  *(v9 + 168) = 0;
  *(v9 + 56) = 0;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15;
  *(v9 + 104) = swift_task_alloc();
  *(v9 + 24) = a1;
  *(v9 + 144) = a2 & 1;
  *(v9 + 152) = a3 & 1;
  *(v9 + 32) = a4;
  *(v9 + 40) = a5;
  *(v9 + 160) = a6 & 1;
  *(v9 + 48) = a7;
  *(v9 + 168) = a8 & 1;
  *(v9 + 56) = v8;
  v11 = *(v9 + 16);

  return MEMORY[0x2822009F8](sub_268DEE5A4, 0);
}

uint64_t sub_268DEE5A4()
{
  v37 = v0[8];
  v0[2] = v0;
  v34 = sub_268F9AEF4();
  v35 = v1;
  v0[14] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v36 = v2;
  *v2 = sub_268F9AEF4();
  v36[1] = v3;

  if (v37)
  {
    v32 = *(v33 + 64);
    v36[5] = type metadata accessor for SettingsMultiSetting();
    v36[2] = v32;
  }

  else
  {
    v36[2] = 0;
    v36[3] = 0;
    v36[4] = 0;
    v36[5] = 0;
  }

  v31 = *(v33 + 72);
  v30 = *(v33 + 146);
  v28 = *(v33 + 145);
  v36[6] = sub_268F9AEF4();
  v36[7] = v4;
  v29 = MEMORY[0x277D839B0];
  v36[11] = MEMORY[0x277D839B0];
  *(v36 + 64) = v28;
  v36[12] = sub_268F9AEF4();
  v36[13] = v5;
  v36[17] = v29;
  *(v36 + 112) = v30;
  v36[18] = sub_268F9AEF4();
  v36[19] = v6;

  if (v31)
  {
    v27 = *(v33 + 72);
    v36[23] = sub_268F9AA44();
    v36[20] = v27;
  }

  else
  {
    v36[20] = 0;
    v36[21] = 0;
    v36[22] = 0;
    v36[23] = 0;
  }

  v24 = *(v33 + 104);
  v23 = *(v33 + 80);
  v36[24] = sub_268F9AEF4();
  v36[25] = v7;
  sub_268D2A1F0(v23, v24);
  v25 = sub_268F9A9C4();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v24, 1) == 1)
  {
    sub_268D28588(*(v33 + 104));
    v36[26] = 0;
    v36[27] = 0;
    v36[28] = 0;
    v36[29] = 0;
  }

  else
  {
    v22 = *(v33 + 104);
    v36[29] = v25;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v36 + 26);
    (*(v26 + 32))(boxed_opaque_existential_1, v22, v25);
  }

  v21 = *(v33 + 88);
  v20 = *(v33 + 147);
  v36[30] = sub_268F9AEF4();
  v36[31] = v9;
  v36[35] = MEMORY[0x277D839B0];
  *(v36 + 256) = v20;
  v36[36] = sub_268F9AEF4();
  v36[37] = v10;

  if (v21)
  {
    v19 = *(v33 + 88);
    v36[41] = sub_268F9A994();
    v36[38] = v19;
  }

  else
  {
    v36[38] = 0;
    v36[39] = 0;
    v36[40] = 0;
    v36[41] = 0;
  }

  v16 = *(v33 + 148);
  v36[42] = sub_268F9AEF4();
  v36[43] = v11;
  v36[47] = MEMORY[0x277D839B0];
  *(v36 + 352) = v16;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v17 = sub_268F9B4F4();
  *(v33 + 120) = v17;
  v18 = (MEMORY[0x277D55C70] + *MEMORY[0x277D55C70]);
  v12 = *(MEMORY[0x277D55C70] + 4);
  v13 = swift_task_alloc();
  *(v33 + 128) = v13;
  *v13 = *(v33 + 16);
  v13[1] = sub_268DEC878;
  v14 = *(v33 + 96);

  return v18(v34, v35, v17);
}

unint64_t sub_268DEF1E4()
{
  v2 = qword_2802DCDB0;
  if (!qword_2802DCDB0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCDB0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268DEF330@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  result = sub_268DEED00();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_268DEF364(uint64_t a1, char a2, char a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, char a8)
{
  *(v9 + 96) = v8;
  *(v9 + 148) = a8 & 1;
  *(v9 + 88) = a7;
  *(v9 + 147) = a6 & 1;
  *(v9 + 80) = a5;
  *(v9 + 72) = a4;
  *(v9 + 146) = a3 & 1;
  *(v9 + 145) = a2 & 1;
  *(v9 + 64) = a1;
  *(v9 + 16) = v9;
  *(v9 + 24) = 0;
  *(v9 + 144) = 0;
  *(v9 + 152) = 0;
  *(v9 + 32) = 0;
  *(v9 + 40) = 0;
  *(v9 + 160) = 0;
  *(v9 + 48) = 0;
  *(v9 + 168) = 0;
  *(v9 + 56) = 0;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15;
  *(v9 + 104) = swift_task_alloc();
  *(v9 + 24) = a1;
  *(v9 + 144) = a2 & 1;
  *(v9 + 152) = a3 & 1;
  *(v9 + 32) = a4;
  *(v9 + 40) = a5;
  *(v9 + 160) = a6 & 1;
  *(v9 + 48) = a7;
  *(v9 + 168) = a8 & 1;
  *(v9 + 56) = v8;
  v11 = *(v9 + 16);

  return MEMORY[0x2822009F8](sub_268DEF580, 0);
}

uint64_t sub_268DEF580()
{
  v38 = v0[8];
  v0[2] = v0;
  v35 = sub_268F9AEF4();
  v36 = v1;
  v0[14] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v37 = v2;
  *v2 = sub_268F9AEF4();
  v37[1] = v3;

  if (v38)
  {
    v33 = *(v34 + 64);
    v37[5] = type metadata accessor for SettingsMultiSetting();
    v37[2] = v33;
  }

  else
  {
    v37[2] = 0;
    v37[3] = 0;
    v37[4] = 0;
    v37[5] = 0;
  }

  v32 = *(v34 + 72);
  v31 = *(v34 + 146);
  v29 = *(v34 + 145);
  v37[6] = sub_268F9AEF4();
  v37[7] = v4;
  v30 = MEMORY[0x277D839B0];
  v37[11] = MEMORY[0x277D839B0];
  *(v37 + 64) = v29;
  v37[12] = sub_268F9AEF4();
  v37[13] = v5;
  v37[17] = v30;
  *(v37 + 112) = v31;
  v37[18] = sub_268F9AEF4();
  v37[19] = v6;

  if (v32)
  {
    v28 = *(v34 + 72);
    v37[23] = sub_268F9AA44();
    v37[20] = v28;
  }

  else
  {
    v37[20] = 0;
    v37[21] = 0;
    v37[22] = 0;
    v37[23] = 0;
  }

  v25 = *(v34 + 104);
  v24 = *(v34 + 80);
  v37[24] = sub_268F9AEF4();
  v37[25] = v7;
  sub_268D2A1F0(v24, v25);
  v26 = sub_268F9A9C4();
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v25, 1) == 1)
  {
    sub_268D28588(*(v34 + 104));
    v37[26] = 0;
    v37[27] = 0;
    v37[28] = 0;
    v37[29] = 0;
  }

  else
  {
    v23 = *(v34 + 104);
    v37[29] = v26;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v37 + 26);
    (*(v27 + 32))(boxed_opaque_existential_1, v23, v26);
  }

  v22 = *(v34 + 88);
  v21 = *(v34 + 147);
  v37[30] = sub_268F9AEF4();
  v37[31] = v9;
  v37[35] = MEMORY[0x277D839B0];
  *(v37 + 256) = v21;
  v37[36] = sub_268F9AEF4();
  v37[37] = v10;

  if (v22)
  {
    v20 = *(v34 + 88);
    v37[41] = sub_268F9A994();
    v37[38] = v20;
  }

  else
  {
    v37[38] = 0;
    v37[39] = 0;
    v37[40] = 0;
    v37[41] = 0;
  }

  v17 = *(v34 + 148);
  v37[42] = sub_268F9AEF4();
  v37[43] = v11;
  v37[47] = MEMORY[0x277D839B0];
  *(v37 + 352) = v17;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v18 = sub_268F9B4F4();
  *(v34 + 120) = v18;
  v19 = (MEMORY[0x277D55C68] + *MEMORY[0x277D55C68]);
  v12 = *(MEMORY[0x277D55C68] + 4);
  v13 = swift_task_alloc();
  *(v34 + 128) = v13;
  v14 = sub_268DEF1E4();
  *v13 = *(v34 + 16);
  v13[1] = sub_268DEC878;
  v15 = *(v34 + 96);

  return v19(v35, v36, v18, &unk_287990208, v14);
}

uint64_t sub_268DEFCF4(uint64_t a1, char a2, uint64_t a3, char a4)
{
  *(v5 + 64) = v4;
  *(v5 + 106) = a4 & 1;
  *(v5 + 56) = a3;
  *(v5 + 105) = a2 & 1;
  *(v5 + 48) = a1;
  *(v5 + 16) = v5;
  *(v5 + 24) = 0;
  *(v5 + 104) = 0;
  *(v5 + 32) = 0;
  *(v5 + 112) = 0;
  *(v5 + 40) = 0;
  *(v5 + 24) = a1;
  *(v5 + 104) = a2 & 1;
  *(v5 + 32) = a3;
  *(v5 + 112) = a4 & 1;
  *(v5 + 40) = v4;
  v6 = *(v5 + 16);
  return MEMORY[0x2822009F8](sub_268DEFD94, 0);
}

uint64_t sub_268DEFD94()
{
  v22 = v0[6];
  v0[2] = v0;
  v19 = sub_268F9AEF4();
  v20 = v1;
  v0[9] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v21 = v2;
  *v2 = sub_268F9AEF4();
  v21[1] = v3;

  if (v22)
  {
    v17 = *(v18 + 48);
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

  v16 = *(v18 + 56);
  v15 = *(v18 + 105);
  v21[6] = sub_268F9AEF4();
  v21[7] = v4;
  v21[11] = MEMORY[0x277D839B0];
  *(v21 + 64) = v15;
  v21[12] = sub_268F9AEF4();
  v21[13] = v5;

  if (v16)
  {
    v14 = *(v18 + 56);
    v21[17] = sub_268F9AA44();
    v21[14] = v14;
  }

  else
  {
    v21[14] = 0;
    v21[15] = 0;
    v21[16] = 0;
    v21[17] = 0;
  }

  v11 = *(v18 + 106);
  v21[18] = sub_268F9AEF4();
  v21[19] = v6;
  v21[23] = MEMORY[0x277D839B0];
  *(v21 + 160) = v11;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v12 = sub_268F9B4F4();
  *(v18 + 80) = v12;
  v13 = (MEMORY[0x277D55C70] + *MEMORY[0x277D55C70]);
  v7 = *(MEMORY[0x277D55C70] + 4);
  v8 = swift_task_alloc();
  *(v18 + 88) = v8;
  *v8 = *(v18 + 16);
  v8[1] = sub_268DF0154;
  v9 = *(v18 + 64);

  return v13(v19, v20, v12);
}

uint64_t sub_268DF0154(uint64_t a1)
{
  v10 = *v2;
  v3 = *(*v2 + 88);
  v10[2] = *v2;
  v11 = v10 + 2;
  v10[12] = v1;

  if (v1)
  {
    v7 = *v11;

    return MEMORY[0x2822009F8](sub_268DF033C, 0);
  }

  else
  {
    v4 = v10[10];
    v8 = v10[9];

    v5 = *(*v11 + 8);

    return v5(a1);
  }
}

uint64_t sub_268DF033C()
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

uint64_t sub_268DF03FC()
{
  sub_268F9B734();
  *v0 = "all1#dialog1";
  *(v0 + 8) = 12;
  *(v0 + 16) = 2;
  *(v0 + 24) = "all1#dialog2";
  *(v0 + 32) = 12;
  *(v0 + 40) = 2;
  *(v0 + 48) = "all2#dialog1";
  *(v0 + 56) = 12;
  *(v0 + 64) = 2;
  *(v0 + 72) = "all2#dialog2";
  *(v0 + 80) = 12;
  *(v0 + 88) = 2;
  *(v0 + 96) = "first1#dialog1";
  *(v0 + 104) = 14;
  *(v0 + 112) = 2;
  *(v0 + 120) = "first1#dialog2";
  *(v0 + 128) = 14;
  *(v0 + 136) = 2;
  sub_268CD0F7C();
  v4 = sub_268F9B5C4();

  switch(v4)
  {
    case 0:
      v3 = 0;
LABEL_14:

      return v3;
    case 1:
      v3 = 1;
      goto LABEL_14;
    case 2:
      v3 = 2;
      goto LABEL_14;
    case 3:
      v3 = 3;
      goto LABEL_14;
    case 4:
      v3 = 4;
      goto LABEL_14;
    case 5:
      v3 = 5;
      goto LABEL_14;
  }

  return 6;
}

unint64_t sub_268DF0814()
{
  v2 = qword_2802DCDB8;
  if (!qword_2802DCDB8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCDB8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268DF0960@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = sub_268DF03FC();
  *a2 = result;
  return result;
}

uint64_t sub_268DF0998@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  result = sub_268DF0648();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_268DF09CC(uint64_t a1, char a2, uint64_t a3, char a4)
{
  *(v5 + 64) = v4;
  *(v5 + 106) = a4 & 1;
  *(v5 + 56) = a3;
  *(v5 + 105) = a2 & 1;
  *(v5 + 48) = a1;
  *(v5 + 16) = v5;
  *(v5 + 24) = 0;
  *(v5 + 104) = 0;
  *(v5 + 32) = 0;
  *(v5 + 112) = 0;
  *(v5 + 40) = 0;
  *(v5 + 24) = a1;
  *(v5 + 104) = a2 & 1;
  *(v5 + 32) = a3;
  *(v5 + 112) = a4 & 1;
  *(v5 + 40) = v4;
  v6 = *(v5 + 16);
  return MEMORY[0x2822009F8](sub_268DF0A6C, 0);
}

uint64_t sub_268DF0A6C()
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
  v16 = *(v19 + 105);
  v22[6] = sub_268F9AEF4();
  v22[7] = v4;
  v22[11] = MEMORY[0x277D839B0];
  *(v22 + 64) = v16;
  v22[12] = sub_268F9AEF4();
  v22[13] = v5;

  if (v17)
  {
    v15 = *(v19 + 56);
    v22[17] = sub_268F9AA44();
    v22[14] = v15;
  }

  else
  {
    v22[14] = 0;
    v22[15] = 0;
    v22[16] = 0;
    v22[17] = 0;
  }

  v12 = *(v19 + 106);
  v22[18] = sub_268F9AEF4();
  v22[19] = v6;
  v22[23] = MEMORY[0x277D839B0];
  *(v22 + 160) = v12;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v13 = sub_268F9B4F4();
  *(v19 + 80) = v13;
  v14 = (MEMORY[0x277D55C68] + *MEMORY[0x277D55C68]);
  v7 = *(MEMORY[0x277D55C68] + 4);
  v8 = swift_task_alloc();
  *(v19 + 88) = v8;
  v9 = sub_268DF0814();
  *v8 = *(v19 + 16);
  v8[1] = sub_268DF0154;
  v10 = *(v19 + 64);

  return v14(v20, v21, v13, &unk_287990298, v9);
}

uint64_t sub_268DF0E44(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 96) = v5;
  *(v6 + 88) = a5;
  *(v6 + 80) = a4;
  *(v6 + 72) = a3;
  *(v6 + 145) = a2 & 1;
  *(v6 + 64) = a1;
  *(v6 + 16) = v6;
  *(v6 + 24) = 0;
  *(v6 + 144) = 0;
  *(v6 + 32) = 0;
  *(v6 + 40) = 0;
  *(v6 + 48) = 0;
  *(v6 + 56) = 0;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15;
  *(v6 + 104) = swift_task_alloc();
  *(v6 + 24) = a1;
  *(v6 + 144) = a2 & 1;
  *(v6 + 32) = a3;
  *(v6 + 40) = a4;
  *(v6 + 48) = a5;
  *(v6 + 56) = v5;
  v8 = *(v6 + 16);

  return MEMORY[0x2822009F8](sub_268DF0FC8, 0);
}

uint64_t sub_268DF0FC8()
{
  v30 = v0[8];
  v0[2] = v0;
  v27 = sub_268F9AEF4();
  v28 = v1;
  v0[14] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v29 = v2;
  *v2 = sub_268F9AEF4();
  v29[1] = v3;

  if (v30)
  {
    v25 = *(v26 + 64);
    v29[5] = type metadata accessor for SettingsBinarySetting();
    v29[2] = v25;
  }

  else
  {
    v29[2] = 0;
    v29[3] = 0;
    v29[4] = 0;
    v29[5] = 0;
  }

  v24 = *(v26 + 72);
  v23 = *(v26 + 145);
  v29[6] = sub_268F9AEF4();
  v29[7] = v4;
  v29[11] = MEMORY[0x277D839B0];
  *(v29 + 64) = v23;
  v29[12] = sub_268F9AEF4();
  v29[13] = v5;

  if (v24)
  {
    v22 = *(v26 + 72);
    v29[17] = sub_268F9AA44();
    v29[14] = v22;
  }

  else
  {
    v29[14] = 0;
    v29[15] = 0;
    v29[16] = 0;
    v29[17] = 0;
  }

  v19 = *(v26 + 104);
  v18 = *(v26 + 80);
  v29[18] = sub_268F9AEF4();
  v29[19] = v6;
  sub_268D2A1F0(v18, v19);
  v20 = sub_268F9A9C4();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v19, 1) == 1)
  {
    sub_268D28588(*(v26 + 104));
    v29[20] = 0;
    v29[21] = 0;
    v29[22] = 0;
    v29[23] = 0;
  }

  else
  {
    v17 = *(v26 + 104);
    v29[23] = v20;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v29 + 20);
    (*(v21 + 32))(boxed_opaque_existential_1, v17, v20);
  }

  v16 = *(v26 + 88);
  v29[24] = sub_268F9AEF4();
  v29[25] = v8;

  if (v16)
  {
    v15 = *(v26 + 88);
    v29[29] = sub_268F9A994();
    v29[26] = v15;
  }

  else
  {
    v29[26] = 0;
    v29[27] = 0;
    v29[28] = 0;
    v29[29] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v13 = sub_268F9B4F4();
  *(v26 + 120) = v13;
  v14 = (MEMORY[0x277D55C70] + *MEMORY[0x277D55C70]);
  v9 = *(MEMORY[0x277D55C70] + 4);
  v10 = swift_task_alloc();
  *(v26 + 128) = v10;
  *v10 = *(v26 + 16);
  v10[1] = sub_268DF15AC;
  v11 = *(v26 + 96);

  return v14(v27, v28, v13);
}

uint64_t sub_268DF15AC(uint64_t a1)
{
  v11 = *v2;
  v3 = *(*v2 + 128);
  v11[2] = *v2;
  v12 = v11 + 2;
  v11[17] = v1;

  if (v1)
  {
    v7 = *v12;

    return MEMORY[0x2822009F8](sub_268DF17B0, 0);
  }

  else
  {
    v4 = v11[15];
    v8 = v11[14];
    v9 = v11[13];

    v5 = *(*v12 + 8);

    return v5(a1);
  }
}

uint64_t sub_268DF17B0()
{
  v1 = v0[15];
  v7 = v0[14];
  v8 = v0[13];
  v0[2] = v0;

  v2 = v0;
  v3 = *(v0[2] + 8);
  v4 = v0[2];
  v5 = v2[17];

  return v3();
}

uint64_t sub_268DF1884()
{
  sub_268F9B734();
  *v0 = "first1#dialog1";
  *(v0 + 8) = 14;
  *(v0 + 16) = 2;
  *(v0 + 24) = "first2#dialog1";
  *(v0 + 32) = 14;
  *(v0 + 40) = 2;
  *(v0 + 48) = "first3#dialog1";
  *(v0 + 56) = 14;
  *(v0 + 64) = 2;
  *(v0 + 72) = "first4#dialog1";
  *(v0 + 80) = 14;
  *(v0 + 88) = 2;
  *(v0 + 96) = "first5#dialog1";
  *(v0 + 104) = 14;
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

unint64_t sub_268DF1C18()
{
  v2 = qword_2802DCDC0;
  if (!qword_2802DCDC0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCDC0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268DF1D64@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = sub_268DF1884();
  *a2 = result;
  return result;
}

uint64_t sub_268DF1D9C@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  result = sub_268DF1A88();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_268DF1DD0(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 96) = v5;
  *(v6 + 88) = a5;
  *(v6 + 80) = a4;
  *(v6 + 72) = a3;
  *(v6 + 145) = a2 & 1;
  *(v6 + 64) = a1;
  *(v6 + 16) = v6;
  *(v6 + 24) = 0;
  *(v6 + 144) = 0;
  *(v6 + 32) = 0;
  *(v6 + 40) = 0;
  *(v6 + 48) = 0;
  *(v6 + 56) = 0;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15;
  *(v6 + 104) = swift_task_alloc();
  *(v6 + 24) = a1;
  *(v6 + 144) = a2 & 1;
  *(v6 + 32) = a3;
  *(v6 + 40) = a4;
  *(v6 + 48) = a5;
  *(v6 + 56) = v5;
  v8 = *(v6 + 16);

  return MEMORY[0x2822009F8](sub_268DF1F54, 0);
}

uint64_t sub_268DF1F54()
{
  v31 = v0[8];
  v0[2] = v0;
  v28 = sub_268F9AEF4();
  v29 = v1;
  v0[14] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v30 = v2;
  *v2 = sub_268F9AEF4();
  v30[1] = v3;

  if (v31)
  {
    v26 = *(v27 + 64);
    v30[5] = type metadata accessor for SettingsBinarySetting();
    v30[2] = v26;
  }

  else
  {
    v30[2] = 0;
    v30[3] = 0;
    v30[4] = 0;
    v30[5] = 0;
  }

  v25 = *(v27 + 72);
  v24 = *(v27 + 145);
  v30[6] = sub_268F9AEF4();
  v30[7] = v4;
  v30[11] = MEMORY[0x277D839B0];
  *(v30 + 64) = v24;
  v30[12] = sub_268F9AEF4();
  v30[13] = v5;

  if (v25)
  {
    v23 = *(v27 + 72);
    v30[17] = sub_268F9AA44();
    v30[14] = v23;
  }

  else
  {
    v30[14] = 0;
    v30[15] = 0;
    v30[16] = 0;
    v30[17] = 0;
  }

  v20 = *(v27 + 104);
  v19 = *(v27 + 80);
  v30[18] = sub_268F9AEF4();
  v30[19] = v6;
  sub_268D2A1F0(v19, v20);
  v21 = sub_268F9A9C4();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v20, 1) == 1)
  {
    sub_268D28588(*(v27 + 104));
    v30[20] = 0;
    v30[21] = 0;
    v30[22] = 0;
    v30[23] = 0;
  }

  else
  {
    v18 = *(v27 + 104);
    v30[23] = v21;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v30 + 20);
    (*(v22 + 32))(boxed_opaque_existential_1, v18, v21);
  }

  v17 = *(v27 + 88);
  v30[24] = sub_268F9AEF4();
  v30[25] = v8;

  if (v17)
  {
    v16 = *(v27 + 88);
    v30[29] = sub_268F9A994();
    v30[26] = v16;
  }

  else
  {
    v30[26] = 0;
    v30[27] = 0;
    v30[28] = 0;
    v30[29] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v14 = sub_268F9B4F4();
  *(v27 + 120) = v14;
  v15 = (MEMORY[0x277D55C68] + *MEMORY[0x277D55C68]);
  v9 = *(MEMORY[0x277D55C68] + 4);
  v10 = swift_task_alloc();
  *(v27 + 128) = v10;
  v11 = sub_268DF1C18();
  *v10 = *(v27 + 16);
  v10[1] = sub_268DF15AC;
  v12 = *(v27 + 96);

  return v15(v28, v29, v14, &unk_287990328, v11);
}

uint64_t sub_268DF2550(uint64_t a1)
{
  v2[6] = v1;
  v2[5] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[3] = a1;
  v2[4] = v1;
  v3 = v2[2];
  return MEMORY[0x2822009F8](sub_268DF259C, 0);
}

uint64_t sub_268DF259C()
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

uint64_t sub_268DF27B8()
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

unint64_t sub_268DF2A4C()
{
  v2 = qword_2802DCDC8;
  if (!qword_2802DCDC8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCDC8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268DF2B98@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = sub_268DF27B8();
  *a2 = result;
  return result;
}

uint64_t sub_268DF2BD0@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  result = sub_268DF2934();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_268DF2C04(uint64_t a1)
{
  v2[6] = v1;
  v2[5] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[3] = a1;
  v2[4] = v1;
  v3 = v2[2];
  return MEMORY[0x2822009F8](sub_268DF2C50, 0);
}

uint64_t sub_268DF2C50()
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
  v6 = sub_268DF2A4C();
  *v5 = v12[2];
  v5[1] = sub_268DE5AA8;
  v7 = v12[6];

  return v10(v13, v14, v9, &unk_2879903B8, v6);
}

uint64_t sub_268DF2E84(uint64_t a1)
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

  return MEMORY[0x2822009F8](sub_268DF2F6C, 0);
}

uint64_t sub_268DF2F6C()
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

uint64_t sub_268DF3218(uint64_t a1)
{
  v11 = *v2;
  v3 = *(*v2 + 80);
  v11[2] = *v2;
  v12 = v11 + 2;
  v11[11] = v1;

  if (v1)
  {
    v7 = *v12;

    return MEMORY[0x2822009F8](sub_268DF33E8, 0);
  }

  else
  {
    v4 = v11[9];
    v8 = v11[8];
    v9 = v11[7];

    v5 = *(*v12 + 8);

    return v5(a1);
  }
}

uint64_t sub_268DF33E8()
{
  v1 = v0[9];
  v7 = v0[8];
  v8 = v0[7];
  v0[2] = v0;

  v2 = v0;
  v3 = *(v0[2] + 8);
  v4 = v0[2];
  v5 = v2[11];

  return v3();
}

uint64_t sub_268DF34AC()
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
  sub_268CD0F7C();
  v4 = sub_268F9B5C4();

  switch(v4)
  {
    case 0:
      v3 = 0;
LABEL_14:

      return v3;
    case 1:
      v3 = 1;
      goto LABEL_14;
    case 2:
      v3 = 2;
      goto LABEL_14;
    case 3:
      v3 = 3;
      goto LABEL_14;
    case 4:
      v3 = 4;
      goto LABEL_14;
    case 5:
      v3 = 5;
      goto LABEL_14;
  }

  return 6;
}

unint64_t sub_268DF38C0()
{
  v2 = qword_2802DCDD0;
  if (!qword_2802DCDD0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCDD0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268DF3A0C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = sub_268DF34AC();
  *a2 = result;
  return result;
}

uint64_t sub_268DF3A44@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  result = sub_268DF36F4();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_268DF3A78(uint64_t a1)
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

  return MEMORY[0x2822009F8](sub_268DF3B60, 0);
}

uint64_t sub_268DF3B60()
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
  v7 = sub_268DF38C0();
  *v6 = v13[2];
  v6[1] = sub_268DF3218;
  v8 = v13[6];

  return v11(v14, v15, v10, &unk_287990448, v7);
}

uint64_t sub_268DF3E24(uint64_t a1, char a2, char a3)
{
  *(v4 + 48) = v3;
  *(v4 + 98) = a3 & 1;
  *(v4 + 97) = a2 & 1;
  *(v4 + 40) = a1;
  *(v4 + 16) = v4;
  *(v4 + 24) = 0;
  *(v4 + 96) = 0;
  *(v4 + 104) = 0;
  *(v4 + 32) = 0;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15;
  *(v4 + 56) = swift_task_alloc();
  *(v4 + 24) = a1;
  *(v4 + 96) = a2 & 1;
  *(v4 + 104) = a3 & 1;
  *(v4 + 32) = v3;
  v6 = *(v4 + 16);

  return MEMORY[0x2822009F8](sub_268DF3F78, 0);
}

uint64_t sub_268DF3F78()
{
  v22 = v0[7];
  v21 = v0[5];
  v0[2] = v0;
  v18 = sub_268F9AEF4();
  v19 = v1;
  v0[8] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v20 = v2;
  *v2 = sub_268F9AEF4();
  v20[1] = v3;
  sub_268D2A1F0(v21, v22);
  v23 = sub_268F9A9C4();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v22, 1) == 1)
  {
    sub_268D28588(*(v17 + 56));
    v20[2] = 0;
    v20[3] = 0;
    v20[4] = 0;
    v20[5] = 0;
  }

  else
  {
    v16 = *(v17 + 56);
    v20[5] = v23;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v20 + 2);
    (*(v24 + 32))(boxed_opaque_existential_1, v16, v23);
  }

  v13 = *(v17 + 98);
  v11 = *(v17 + 97);
  v20[6] = sub_268F9AEF4();
  v20[7] = v5;
  v12 = MEMORY[0x277D839B0];
  v20[11] = MEMORY[0x277D839B0];
  *(v20 + 64) = v11;
  v20[12] = sub_268F9AEF4();
  v20[13] = v6;
  v20[17] = v12;
  *(v20 + 112) = v13;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v14 = sub_268F9B4F4();
  *(v17 + 72) = v14;
  v15 = (MEMORY[0x277D55C70] + *MEMORY[0x277D55C70]);
  v7 = *(MEMORY[0x277D55C70] + 4);
  v8 = swift_task_alloc();
  *(v17 + 80) = v8;
  *v8 = *(v17 + 16);
  v8[1] = sub_268DF42E0;
  v9 = *(v17 + 48);

  return v15(v18, v19, v14);
}

uint64_t sub_268DF42E0(uint64_t a1)
{
  v11 = *v2;
  v3 = *(*v2 + 80);
  v11[2] = *v2;
  v12 = v11 + 2;
  v11[11] = v1;

  if (v1)
  {
    v7 = *v12;

    return MEMORY[0x2822009F8](sub_268DF44CC, 0);
  }

  else
  {
    v4 = v11[9];
    v8 = v11[8];
    v9 = v11[7];

    v5 = *(*v12 + 8);

    return v5(a1);
  }
}

uint64_t sub_268DF44CC()
{
  v1 = v0[9];
  v7 = v0[8];
  v8 = v0[7];
  v0[2] = v0;

  v2 = v0;
  v3 = *(v0[2] + 8);
  v4 = v0[2];
  v5 = v2[11];

  return v3();
}

uint64_t sub_268DF4598()
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

unint64_t sub_268DF48AC()
{
  v2 = qword_2802DCDD8;
  if (!qword_2802DCDD8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCDD8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268DF49F8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = sub_268DF4598();
  *a2 = result;
  return result;
}

uint64_t sub_268DF4A30@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  result = sub_268DF4758();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_268DF4A64(uint64_t a1, char a2, char a3)
{
  *(v4 + 48) = v3;
  *(v4 + 98) = a3 & 1;
  *(v4 + 97) = a2 & 1;
  *(v4 + 40) = a1;
  *(v4 + 16) = v4;
  *(v4 + 24) = 0;
  *(v4 + 96) = 0;
  *(v4 + 104) = 0;
  *(v4 + 32) = 0;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15;
  *(v4 + 56) = swift_task_alloc();
  *(v4 + 24) = a1;
  *(v4 + 96) = a2 & 1;
  *(v4 + 104) = a3 & 1;
  *(v4 + 32) = v3;
  v6 = *(v4 + 16);

  return MEMORY[0x2822009F8](sub_268DF4BB8, 0);
}

uint64_t sub_268DF4BB8()
{
  v23 = v0[7];
  v22 = v0[5];
  v0[2] = v0;
  v19 = sub_268F9AEF4();
  v20 = v1;
  v0[8] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v21 = v2;
  *v2 = sub_268F9AEF4();
  v21[1] = v3;
  sub_268D2A1F0(v22, v23);
  v24 = sub_268F9A9C4();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v23, 1) == 1)
  {
    sub_268D28588(*(v18 + 56));
    v21[2] = 0;
    v21[3] = 0;
    v21[4] = 0;
    v21[5] = 0;
  }

  else
  {
    v17 = *(v18 + 56);
    v21[5] = v24;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21 + 2);
    (*(v25 + 32))(boxed_opaque_existential_1, v17, v24);
  }

  v14 = *(v18 + 98);
  v12 = *(v18 + 97);
  v21[6] = sub_268F9AEF4();
  v21[7] = v5;
  v13 = MEMORY[0x277D839B0];
  v21[11] = MEMORY[0x277D839B0];
  *(v21 + 64) = v12;
  v21[12] = sub_268F9AEF4();
  v21[13] = v6;
  v21[17] = v13;
  *(v21 + 112) = v14;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v15 = sub_268F9B4F4();
  *(v18 + 72) = v15;
  v16 = (MEMORY[0x277D55C68] + *MEMORY[0x277D55C68]);
  v7 = *(MEMORY[0x277D55C68] + 4);
  v8 = swift_task_alloc();
  *(v18 + 80) = v8;
  v9 = sub_268DF48AC();
  *v8 = *(v18 + 16);
  v8[1] = sub_268DF42E0;
  v10 = *(v18 + 48);

  return v16(v19, v20, v15, &unk_2879904D8, v9);
}

uint64_t sub_268DF4F38(uint64_t a1, char a2)
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
  return MEMORY[0x2822009F8](sub_268DF4FA8, 0);
}

uint64_t sub_268DF4FA8()
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

unint64_t sub_268DF5270()
{
  v2 = qword_2802DCDE0;
  if (!qword_2802DCDE0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCDE0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268DF53BC(uint64_t a1, char a2)
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
  return MEMORY[0x2822009F8](sub_268DF542C, 0);
}

uint64_t sub_268DF542C()
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
  v7 = sub_268DF5270();
  *v6 = *(v14 + 16);
  v6[1] = sub_268D7BB14;
  v8 = *(v14 + 48);

  return v12(v15, v16, v11, &unk_287990568, v7);
}

uint64_t sub_268DF56C0(uint64_t a1, uint64_t a2)
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
  return MEMORY[0x2822009F8](sub_268DF571C, 0);
}

uint64_t sub_268DF571C()
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

uint64_t sub_268DF5A04(uint64_t a1)
{
  v10 = *v2;
  v3 = *(*v2 + 88);
  v10[2] = *v2;
  v11 = v10 + 2;
  v10[12] = v1;

  if (v1)
  {
    v7 = *v11;

    return MEMORY[0x2822009F8](sub_268DF5BD0, 0);
  }

  else
  {
    v4 = v10[10];
    v8 = v10[9];

    v5 = *(*v11 + 8);

    return v5(a1);
  }
}

uint64_t sub_268DF5BD0()
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

uint64_t sub_268DF5C88()
{
  sub_268F9B734();
  *v0 = "dialog1";
  *(v0 + 8) = 7;
  *(v0 + 16) = 2;
  *(v0 + 24) = "dialog2";
  *(v0 + 32) = 7;
  *(v0 + 40) = 2;
  *(v0 + 48) = "first1#dialog1";
  *(v0 + 56) = 14;
  *(v0 + 64) = 2;
  *(v0 + 72) = "first1#dialog2";
  *(v0 + 80) = 14;
  *(v0 + 88) = 2;
  *(v0 + 96) = "first2#dialog1";
  *(v0 + 104) = 14;
  *(v0 + 112) = 2;
  *(v0 + 120) = "first2#dialog2";
  *(v0 + 128) = 14;
  *(v0 + 136) = 2;
  sub_268CD0F7C();
  v4 = sub_268F9B5C4();

  switch(v4)
  {
    case 0:
      v3 = 0;
LABEL_14:

      return v3;
    case 1:
      v3 = 1;
      goto LABEL_14;
    case 2:
      v3 = 2;
      goto LABEL_14;
    case 3:
      v3 = 3;
      goto LABEL_14;
    case 4:
      v3 = 4;
      goto LABEL_14;
    case 5:
      v3 = 5;
      goto LABEL_14;
  }

  return 6;
}

unint64_t sub_268DF60A0()
{
  v2 = qword_2802DCDE8;
  if (!qword_2802DCDE8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCDE8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268DF61EC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = sub_268DF5C88();
  *a2 = result;
  return result;
}

uint64_t sub_268DF6224@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  result = sub_268DF5ED4();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_268DF6258(uint64_t a1, uint64_t a2)
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
  return MEMORY[0x2822009F8](sub_268DF62B4, 0);
}

uint64_t sub_268DF62B4()
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
    v18[5] = type metadata accessor for SettingsBinarySetting();
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
  v7 = sub_268DF60A0();
  *v6 = v15[2];
  v6[1] = sub_268DF5A04;
  v8 = v15[8];

  return v11(v16, v17, v10, &unk_2879905F8, v7);
}

uint64_t sub_268DF65B4(uint64_t a1, uint64_t a2, uint64_t a3)
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
  return MEMORY[0x2822009F8](sub_268DF6620, 0);
}

uint64_t sub_268DF6620()
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
    v20[5] = type metadata accessor for SettingsMultiSetting();
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
    v20[11] = sub_268F9AA44();
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
    v20[17] = sub_268F9A994();
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

uint64_t sub_268DF69EC(uint64_t a1)
{
  v10 = *v2;
  v3 = *(*v2 + 104);
  v10[2] = *v2;
  v11 = v10 + 2;
  v10[14] = v1;

  if (v1)
  {
    v7 = *v11;

    return MEMORY[0x2822009F8](sub_268DF6BC8, 0);
  }

  else
  {
    v4 = v10[12];
    v8 = v10[11];

    v5 = *(*v11 + 8);

    return v5(a1);
  }
}

uint64_t sub_268DF6BC8()
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

uint64_t sub_268DF6C84()
{
  sub_268F9B734();
  *v0 = "dialog1";
  *(v0 + 8) = 7;
  *(v0 + 16) = 2;
  *(v0 + 24) = "dialog2";
  *(v0 + 32) = 7;
  *(v0 + 40) = 2;
  *(v0 + 48) = "first1#dialog1";
  *(v0 + 56) = 14;
  *(v0 + 64) = 2;
  *(v0 + 72) = "first1#dialog2";
  *(v0 + 80) = 14;
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

unint64_t sub_268DF6F9C()
{
  v2 = qword_2802DCDF0;
  if (!qword_2802DCDF0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCDF0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268DF70E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = sub_268DF6C84();
  *a2 = result;
  return result;
}

uint64_t sub_268DF7120@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  result = sub_268DF6E48();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_268DF7154(uint64_t a1, uint64_t a2, uint64_t a3)
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
  return MEMORY[0x2822009F8](sub_268DF71C0, 0);
}

uint64_t sub_268DF71C0()
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
    v21[5] = type metadata accessor for SettingsMultiSetting();
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

  v14 = v18[9];
  v21[12] = sub_268F9AEF4();
  v21[13] = v5;

  if (v14)
  {
    v13 = v18[9];
    v21[17] = sub_268F9A994();
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
  v8 = sub_268DF6F9C();
  *v7 = v18[2];
  v7[1] = sub_268DF69EC;
  v9 = v18[10];

  return v12(v19, v20, v11, &unk_287990688, v8);
}

uint64_t sub_268DF75A4(uint64_t a1, uint64_t a2)
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
  return MEMORY[0x2822009F8](sub_268DF7600, 0);
}

uint64_t sub_268DF7600()
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

unint64_t sub_268DF7934()
{
  v2 = qword_2802DCDF8;
  if (!qword_2802DCDF8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCDF8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268DF7A80(uint64_t a1, uint64_t a2)
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
  return MEMORY[0x2822009F8](sub_268DF7ADC, 0);
}

uint64_t sub_268DF7ADC()
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
    v18[5] = type metadata accessor for SettingsBinarySetting();
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
  v7 = sub_268DF7934();
  *v6 = v15[2];
  v6[1] = sub_268DF5A04;
  v8 = v15[8];

  return v11(v16, v17, v10, &unk_287990718, v7);
}

uint64_t sub_268DF7DDC()
{
  v1[4] = v0;
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = v0;
  v2 = v1[2];
  return MEMORY[0x2822009F8](sub_268DF7E18, 0);
}

uint64_t sub_268DF7E18()
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

unint64_t sub_268DF7FB8()
{
  v2 = qword_2802DCE00;
  if (!qword_2802DCE00)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCE00);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268DF8104()
{
  v1[4] = v0;
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = v0;
  v2 = v1[2];
  return MEMORY[0x2822009F8](sub_268DF8140, 0);
}

uint64_t sub_268DF8140()
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
  v4 = sub_268DF7FB8();
  *v3 = v8[2];
  v3[1] = sub_268D71B74;
  v5 = v8[4];

  return v11(v12, v9, v10, &unk_2879907A8, v4);
}

uint64_t sub_268DF82AC()
{
  v1[4] = v0;
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = v0;
  v2 = v1[2];
  return MEMORY[0x2822009F8](sub_268DF82E8, 0);
}

uint64_t sub_268DF82E8()
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

unint64_t sub_268DF8488()
{
  v2 = qword_2802DCE08;
  if (!qword_2802DCE08)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCE08);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268DF85D4()
{
  v1[4] = v0;
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = v0;
  v2 = v1[2];
  return MEMORY[0x2822009F8](sub_268DF8610, 0);
}

uint64_t sub_268DF8610()
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
  v4 = sub_268DF8488();
  *v3 = v8[2];
  v3[1] = sub_268D71B74;
  v5 = v8[4];

  return v11(v12, v9, v10, &unk_287990838, v4);
}

uint64_t sub_268DF877C(uint64_t a1, uint64_t a2)
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
  return MEMORY[0x2822009F8](sub_268DF87D8, 0);
}

uint64_t sub_268DF87D8()
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

uint64_t sub_268DF8AC0()
{
  sub_268F9B734();
  *v0 = "all1#dialog1";
  *(v0 + 8) = 12;
  *(v0 + 16) = 2;
  *(v0 + 24) = "all1#first1#dialog1";
  *(v0 + 32) = 19;
  *(v0 + 40) = 2;
  *(v0 + 48) = "all1#first1#dialog2";
  *(v0 + 56) = 19;
  *(v0 + 64) = 2;
  *(v0 + 72) = "all2#dialog1";
  *(v0 + 80) = 12;
  *(v0 + 88) = 2;
  *(v0 + 96) = "all2#first1#dialog1";
  *(v0 + 104) = 19;
  *(v0 + 112) = 2;
  *(v0 + 120) = "all2#first1#dialog2";
  *(v0 + 128) = 19;
  *(v0 + 136) = 2;
  sub_268CD0F7C();
  v4 = sub_268F9B5C4();

  switch(v4)
  {
    case 0:
      v3 = 0;
LABEL_14:

      return v3;
    case 1:
      v3 = 1;
      goto LABEL_14;
    case 2:
      v3 = 2;
      goto LABEL_14;
    case 3:
      v3 = 3;
      goto LABEL_14;
    case 4:
      v3 = 4;
      goto LABEL_14;
    case 5:
      v3 = 5;
      goto LABEL_14;
  }

  return 6;
}

unint64_t sub_268DF8ED8()
{
  v2 = qword_2802DCE10;
  if (!qword_2802DCE10)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCE10);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268DF9024@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = sub_268DF8AC0();
  *a2 = result;
  return result;
}

uint64_t sub_268DF905C@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  result = sub_268DF8D0C();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_268DF9090(uint64_t a1, uint64_t a2)
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
  return MEMORY[0x2822009F8](sub_268DF90EC, 0);
}

uint64_t sub_268DF90EC()
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
    v18[5] = type metadata accessor for SettingsBinarySetting();
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
  v7 = sub_268DF8ED8();
  *v6 = v15[2];
  v6[1] = sub_268DF5A04;
  v8 = v15[8];

  return v11(v16, v17, v10, &unk_2879908C8, v7);
}

uint64_t sub_268DF93EC(uint64_t a1, uint64_t a2)
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
  return MEMORY[0x2822009F8](sub_268DF9448, 0);
}

uint64_t sub_268DF9448()
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
    v17[5] = type metadata accessor for SettingsMultiSetting();
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

uint64_t sub_268DF9730()
{
  sub_268F9B734();
  *v0 = "all1#dialog1";
  *(v0 + 8) = 12;
  *(v0 + 16) = 2;
  *(v0 + 24) = "all1#dialog2";
  *(v0 + 32) = 12;
  *(v0 + 40) = 2;
  *(v0 + 48) = "all2#dialog1";
  *(v0 + 56) = 12;
  *(v0 + 64) = 2;
  *(v0 + 72) = "all2#dialog2";
  *(v0 + 80) = 12;
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

unint64_t sub_268DF9A44()
{
  v2 = qword_2802DCE18;
  if (!qword_2802DCE18)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCE18);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268DF9B90@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = sub_268DF9730();
  *a2 = result;
  return result;
}

uint64_t sub_268DF9BC8@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  result = sub_268DF98F0();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_268DF9BFC(uint64_t a1, uint64_t a2)
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
  return MEMORY[0x2822009F8](sub_268DF9C58, 0);
}

uint64_t sub_268DF9C58()
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
    v18[5] = type metadata accessor for SettingsMultiSetting();
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
  v7 = sub_268DF9A44();
  *v6 = v15[2];
  v6[1] = sub_268DF5A04;
  v8 = v15[8];

  return v11(v16, v17, v10, &unk_287990958, v7);
}

uint64_t type metadata accessor for SetBinarySettingIntentCATsSimple()
{
  v1 = qword_280FE2DD0;
  if (!qword_280FE2DD0)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_268DF9FCC()
{
  inited = swift_initClassMetadata2();
  if (!inited)
  {
    return 0;
  }

  return inited;
}

uint64_t sub_268DFA03C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  return sub_268DFA098(a1, a2, a3);
}

uint64_t sub_268DFA098(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_268DFA27C(char a1, uint64_t a2)
{
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  return sub_268DFA2D4(a1 & 1, a2);
}

uint64_t sub_268DFA2D4(int a1, uint64_t a2)
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

uint64_t sub_268DFA49C(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xEA)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 21) >> 8) + 1;
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
      v5 = (*a1 | ((v6 - 1) << 8)) + 234;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 22;
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

_BYTE *sub_268DFA604(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xEA)
  {
    v5 = ((a3 + 21) >> 8) + 1;
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

  if (a2 > 0xEA)
  {
    v4 = ((a2 - 235) >> 8) + 1;
    *result = a2 + 21;
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
      *result = a2 + 21;
    }
  }

  return result;
}

uint64_t sub_268DFA878(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xE4)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 27) >> 8) + 1;
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
      v5 = (*a1 | ((v6 - 1) << 8)) + 228;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 28;
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

_BYTE *sub_268DFA9E0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xE4)
  {
    v5 = ((a3 + 27) >> 8) + 1;
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

  if (a2 > 0xE4)
  {
    v4 = ((a2 - 229) >> 8) + 1;
    *result = a2 + 27;
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
      *result = a2 + 27;
    }
  }

  return result;
}

uint64_t sub_268DFABF0(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xE7)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 24) >> 8) + 1;
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
      v5 = (*a1 | ((v6 - 1) << 8)) + 231;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 25;
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

_BYTE *sub_268DFAD58(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xE7)
  {
    v5 = ((a3 + 24) >> 8) + 1;
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

  if (a2 > 0xE7)
  {
    v4 = ((a2 - 232) >> 8) + 1;
    *result = a2 + 24;
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
      *result = a2 + 24;
    }
  }

  return result;
}

uint64_t sub_268DFAF68(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xE5)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 26) >> 8) + 1;
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
      v5 = (*a1 | ((v6 - 1) << 8)) + 229;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 27;
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

_BYTE *sub_268DFB0D0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xE5)
  {
    v5 = ((a3 + 26) >> 8) + 1;
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

  if (a2 > 0xE5)
  {
    v4 = ((a2 - 230) >> 8) + 1;
    *result = a2 + 26;
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
      *result = a2 + 26;
    }
  }

  return result;
}

uint64_t sub_268DFB2F4(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFA)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 5) >> 8) + 1;
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
      v5 = (*a1 | ((v6 - 1) << 8)) + 250;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 6;
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

_BYTE *sub_268DFB45C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFA)
  {
    v5 = ((a3 + 5) >> 8) + 1;
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

  if (a2 > 0xFA)
  {
    v4 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
      *result = a2 + 5;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ReadBatteryDeviceCategory(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFC)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 3) >> 8) + 1;
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
      v5 = (*a1 | ((v6 - 1) << 8)) + 252;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 4;
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

_BYTE *storeEnumTagSinglePayload for ReadBatteryDeviceCategory(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFC)
  {
    v5 = ((a3 + 3) >> 8) + 1;
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

  if (a2 > 0xFC)
  {
    v4 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
      *result = a2 + 3;
    }
  }

  return result;
}

unint64_t sub_268DFBAD8()
{
  v2 = qword_2802DCE20;
  if (!qword_2802DCE20)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCE20);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268DFBB6C()
{
  v2 = qword_2802DCE28;
  if (!qword_2802DCE28)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCE28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268DFBC00()
{
  v2 = qword_2802DCE30;
  if (!qword_2802DCE30)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCE30);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268DFBC94()
{
  v2 = qword_2802DCE38;
  if (!qword_2802DCE38)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCE38);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268DFBD28()
{
  v2 = qword_2802DCE40;
  if (!qword_2802DCE40)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCE40);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268DFBDBC()
{
  v2 = qword_2802DCE48;
  if (!qword_2802DCE48)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCE48);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268DFBE50()
{
  v2 = qword_2802DCE50;
  if (!qword_2802DCE50)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCE50);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268DFBEE4()
{
  v2 = qword_2802DCE58;
  if (!qword_2802DCE58)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCE58);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268DFBF78()
{
  v2 = qword_2802DCE60;
  if (!qword_2802DCE60)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCE60);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268DFC00C()
{
  v2 = qword_2802DCE68;
  if (!qword_2802DCE68)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCE68);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268DFC0A0()
{
  v2 = qword_2802DCE70;
  if (!qword_2802DCE70)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCE70);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268DFC134()
{
  v2 = qword_2802DCE78;
  if (!qword_2802DCE78)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCE78);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268DFC1C8()
{
  v2 = qword_2802DCE80;
  if (!qword_2802DCE80)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCE80);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268DFC25C()
{
  v2 = qword_2802DCE88;
  if (!qword_2802DCE88)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCE88);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268DFC2F0()
{
  v2 = qword_2802DCE90;
  if (!qword_2802DCE90)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCE90);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268DFC384()
{
  v2 = qword_2802DCE98;
  if (!qword_2802DCE98)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCE98);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268DFC418()
{
  v2 = qword_2802DCEA0;
  if (!qword_2802DCEA0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCEA0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268DFC4AC()
{
  v2 = qword_2802DCEA8;
  if (!qword_2802DCEA8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCEA8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268DFC540()
{
  v2 = qword_2802DCEB0;
  if (!qword_2802DCEB0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCEB0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268DFC5D4()
{
  v2 = qword_2802DCEB8;
  if (!qword_2802DCEB8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCEB8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268DFC668()
{
  v2 = qword_2802DCEC0;
  if (!qword_2802DCEC0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCEC0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268DFC6FC()
{
  v2 = qword_2802DCEC8;
  if (!qword_2802DCEC8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCEC8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268DFC790()
{
  v2 = qword_2802DCED0;
  if (!qword_2802DCED0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCED0);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_268DFC80C()
{
  if (qword_2802DB550 != -1)
  {
    swift_once();
  }

  return &qword_2802F1408;
}

uint64_t sub_268DFC974()
{
  type metadata accessor for SetAnnounceNotificationsHandler();
  v2 = sub_268CDC590();
  v0 = sub_268DFC9F4();
  result = sub_268DFCA24(v2, 1, v0);
  qword_2802F1408 = result;
  return result;
}

uint64_t sub_268DFC9F4()
{
  v1 = *sub_268F888C8();

  return v1;
}

uint64_t sub_268DFCA84()
{
  v1 = *sub_268DFC80C();

  return v1;
}

uint64_t sub_268DFCAB4()
{
  result = sub_268F9AEF4();
  qword_2802F1410 = result;
  qword_2802F1418 = v1;
  return result;
}

uint64_t *sub_268DFCAF8()
{
  if (qword_2802DB558 != -1)
  {
    swift_once();
  }

  return &qword_2802F1410;
}

uint64_t sub_268DFCB58()
{
  v0 = sub_268DFCAF8();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_268DFCB94()
{
  result = sub_268F9AEF4();
  qword_2802F1420 = result;
  qword_2802F1428 = v1;
  return result;
}

uint64_t *sub_268DFCBD8()
{
  if (qword_2802DB560 != -1)
  {
    swift_once();
  }

  return &qword_2802F1420;
}

uint64_t sub_268DFCC38()
{
  v0 = sub_268DFCBD8();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_268DFCC74()
{
  result = sub_268F9AEF4();
  qword_2802F1430 = result;
  qword_2802F1438 = v1;
  return result;
}

uint64_t *sub_268DFCCB8()
{
  if (qword_2802DB568 != -1)
  {
    swift_once();
  }

  return &qword_2802F1430;
}

uint64_t sub_268DFCD18()
{
  v0 = sub_268DFCCB8();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_268DFCD54(uint64_t a1, char a2, uint64_t a3)
{

  *(v3 + 32) = a3;

  *(v3 + 16) = a1;
  *(v3 + 24) = a2;

  return v8;
}

uint64_t sub_268DFCDF0(void *a1, void (*a2)(id), uint64_t a3)
{
  v15[3] = 0;
  v15[6] = a1;
  v15[4] = a2;
  v15[5] = a3;
  sub_268F9B284();
  v3 = sub_268DC7AE8();
  v12 = *v3;
  MEMORY[0x277D82BE0](*v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14();

  v15[2] = [a1 binaryValue];
  v15[1] = 1;
  type metadata accessor for INBinarySettingValue();
  sub_268CD925C();
  v14 = sub_268F9B754();
  MEMORY[0x277D82BE0](a1);
  if (v14)
  {
    v15[0] = [a1 temporalEventTrigger];
    v8 = v15[0] != 0;
    sub_268D35038(v15);
    v7 = v8;
  }

  else
  {
    v7 = 0;
  }

  MEMORY[0x277D82BD8](a1);

  if (v7)
  {
    sub_268E948B8();
    v6 = sub_268DAB158();

    a2(v6);
    MEMORY[0x277D82BD8](v6);
  }

  else
  {

    MEMORY[0x277D82BE0](a1);
    v5 = swift_allocObject();
    v5[2] = a2;
    v5[3] = a3;
    v5[4] = v11;
    v5[5] = a1;
    sub_268E01C88(sub_268DFD208, v5);
  }
}

uint64_t sub_268DFD0E4(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, void *a5)
{
  sub_268E03388();
  if ((sub_268F9B754() & 1) == 0)
  {
    return sub_268DFD21C(a5, a2, a3);
  }

  sub_268E948B8();
  v6 = sub_268DAB158();

  (a2)(v6);
  MEMORY[0x277D82BD8](v6);
}

uint64_t sub_268DFD21C(void *a1, void (*a2)(void), uint64_t a3)
{
  v113 = a1;
  v112 = a2;
  v111 = a3;
  v100 = "SetAnnounceNotificationsHandler handling app based intent";
  v101 = sub_268E01DE8;
  v102 = "SetAnnounceNotificationsHandler marking notifications user default for temporary announce disablement";
  v103 = "SetAnnounceNotificationsHandler handling temporary global feature disable.";
  v104 = sub_268E02E80;
  v105 = "SetAnnounceNotificationsHandler handling headphones session.";
  v106 = "SetAnnounceNotificationsHandler handling carplay session.";
  v131 = 0;
  v130 = 0;
  v128 = 0;
  v129 = 0;
  v127 = 0;
  v123 = 0;
  v124 = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC390, &qword_268FA32F0);
  v107 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v108 = v35 - v107;
  v109 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v35 - v107);
  v110 = v35 - v109;
  v114 = sub_268F99214();
  v116 = *(v114 - 8);
  v115 = v114 - 8;
  v117 = v116;
  v118 = *(v116 + 64);
  v119 = (v118 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v113);
  v120 = v35 - v119;
  v121 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7);
  v122 = v35 - v121;
  v131 = v35 - v121;
  v130 = v8;
  v128 = v9;
  v129 = v10;
  v127 = v3;
  if (sub_268E00334(v8))
  {
    v96 = sub_268F9B284();
    v98 = *sub_268DC7AE8();
    MEMORY[0x277D82BE0](v98);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v97 = sub_268F9B734();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v98);
    return sub_268DFE8BC(v113, v112, v111);
  }

  else
  {
    v95 = [v113 settingMetadata];
    if (v95 && (v94 = v95, v92 = v95, v93 = [v95 targetApp], *&v12 = MEMORY[0x277D82BD8](v92).n128_u64[0], v93))
    {
      v91 = v93;
      v89 = v93;
      v13 = [v93 bundleIdentifier];
      v90 = v13;
      if (v13)
      {
        v88 = v90;
        v83 = v90;
        v84 = sub_268F9AE24();
        v85 = v14;
        MEMORY[0x277D82BD8](v83);
        v86 = v84;
        v87 = v85;
      }

      else
      {
        v86 = 0;
        v87 = 0;
      }

      v80 = v87;
      v79 = v86;
      MEMORY[0x277D82BD8](v89);
      v81 = v79;
      v82 = v80;
    }

    else
    {
      v81 = 0;
      v82 = 0;
    }

    v77 = v82;
    v78 = v81;
    if (v82)
    {
      v75 = v78;
      v76 = v77;
      v74 = v77;
      v73 = v78;
      v123 = v78;
      v124 = v77;
      v70 = sub_268F9B284();
      v72 = *sub_268DC7AE8();
      MEMORY[0x277D82BE0](v72);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      v71 = sub_268F9B734();
      sub_268F9AC14();

      MEMORY[0x277D82BD8](v72);
      sub_268E00728(v113, v73, v74, v112, v111);
    }

    else if (sub_268DFFF40(v113))
    {
      v67 = sub_268F9B284();
      v69 = *sub_268DC7AE8();
      MEMORY[0x277D82BE0](v69);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      v68 = sub_268F9B734();
      sub_268F9AC14();

      MEMORY[0x277D82BD8](v69);
      return sub_268DFFD18(v113, v112, v111);
    }

    else
    {
      v15 = [v113 binaryValue];
      v66 = &v126;
      v126 = v15;
      v64 = &v125;
      v125 = 2;
      v65 = type metadata accessor for INBinarySettingValue();
      sub_268CD925C();
      if (sub_268F9B754())
      {
        v62 = *(v99 + 32);

        v63 = sub_268F23C10();

        if (v63)
        {
          v61 = v63;
          v60 = v63;
          v16 = sub_268F88928();
          v57 = *v16;
          v58 = v16[1];

          v59 = sub_268F9AE14();

          [v60 setBool:1 forKey:v59];
          MEMORY[0x277D82BD8](v59);
          MEMORY[0x277D82BD8](v60);
        }

        v53 = sub_268F9B284();
        v55 = *sub_268DC7AE8();
        MEMORY[0x277D82BE0](v55);
        v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
        v54 = sub_268F9B734();
        sub_268F9AC14();

        *&v17 = MEMORY[0x277D82BD8](v55).n128_u64[0];
        v56 = [v113 temporalEventTrigger];
        if (v56)
        {
          v51 = v56;
          v48 = v56;
          v49 = [v56 dateComponentsRange];
          *&v18 = MEMORY[0x277D82BD8](v48).n128_u64[0];
          v50 = [v49 endDate];
          if (v50)
          {
            v47 = v50;
            v46 = v50;
            sub_268F991E4();
            (*(v116 + 32))(v108, v120, v114);
            (*(v116 + 56))(v108, 0, 1, v114);
            MEMORY[0x277D82BD8](v46);
          }

          else
          {
            (*(v116 + 56))(v108, 1, 1, v114);
          }

          sub_268E02F0C(v108, v110);
          v19 = MEMORY[0x277D82BD8](v49);
        }

        else
        {
          (*(v116 + 56))(v110, 1, 1, v114);
        }

        if ((*(v116 + 48))(v110, 1, v114, v19) == 1)
        {
          sub_268D54CB4(v110);

          v35[2] = sub_268E948B8();
          v35[3] = v28;
          v36 = sub_268DAB158();

          v112(v36);
          MEMORY[0x277D82BD8](v36);
        }

        else
        {
          v40 = v117;
          v43 = *(v116 + 32);
          v42 = v116 + 32;
          v43(v122, v110, v114);
          v37 = sub_268F9B284();
          v39 = *sub_268DC7AE8();
          MEMORY[0x277D82BE0](v39);
          v38 = sub_268F9B734();
          sub_268F9AC14();

          MEMORY[0x277D82BD8](v39);
          v45 = *(v99 + 16);

          MEMORY[0x277D82BE0](v113);

          (*(v116 + 16))(v120, v122, v114);
          v41 = (*(v40 + 80) + 48) & ~*(v40 + 80);
          v20 = swift_allocObject();
          v21 = v99;
          v22 = v112;
          v23 = v111;
          v24 = v41;
          v25 = v120;
          v26 = v43;
          v27 = v114;
          v44 = v20;
          v20[2] = v113;
          v20[3] = v21;
          v20[4] = v22;
          v20[5] = v23;
          v26(v20 + v24, v25, v27);
          sub_268D413E4(v104, v44);

          return (*(v116 + 8))(v122, v114);
        }
      }

      else
      {
        v35[1] = *(v99 + 16);

        MEMORY[0x277D82BE0](v113);

        v29 = swift_allocObject();
        v30 = v113;
        v31 = v112;
        v32 = v111;
        v33 = v29;
        v34 = v101;
        v35[0] = v33;
        v33[2] = v99;
        v33[3] = v30;
        v33[4] = v31;
        v33[5] = v32;
        sub_268D413E4(v34, v33);
      }
    }
  }
}

uint64_t sub_268DFE138(unsigned int a1, void *a2, uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6)
{
  v39 = a1;
  v32 = a2;
  v24 = a3;
  v37 = a4;
  v38 = a5;
  v21 = a6;
  v40 = sub_268E036A4;
  v47 = 0;
  v46 = 0;
  v45 = 0;
  v43 = 0;
  v44 = 0;
  v42 = 0;
  v29 = sub_268F99214();
  v25 = *(v29 - 8);
  v26 = v29 - 8;
  v22 = v25;
  v23 = *(v25 + 64);
  v20 = (v23 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v39);
  v28 = &v19 - v20;
  v31 = 1;
  v47 = v6 & 1;
  v46 = v7;
  v45 = v8;
  v43 = v9;
  v44 = v10;
  v42 = v11;
  v12 = sub_268DBE6F4();
  v33 = *v12;
  v34 = v12[1];
  v35 = *(v12 + 16);
  v36 = *(v24 + 24);

  (*(v25 + 16))(v28, v21, v29);
  v27 = (*(v22 + 80) + 24) & ~*(v22 + 80);
  v13 = swift_allocObject();
  v14 = v25;
  v15 = v27;
  v16 = v28;
  v17 = v29;
  v30 = v13;
  *(v13 + 16) = v24;
  (*(v14 + 32))(v13 + v15, v16, v17);
  v41 = v30;
  sub_268DAAB84(v39 & 1, v32, v33, v34, v35, v36 & 1, v37, v38, v40, v30, 0, v31, 0, 0);
  return sub_268CD9A28(v40);
}

uint64_t sub_268DFE3B8(unsigned int a1, uint64_t a2, uint64_t a3)
{
  v8 = a1;
  v7 = a2;
  v10 = a3;
  v19 = 0;
  v18 = 0;
  v17 = 0;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC390, &qword_268FA32F0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v15 = &v7 - v9;
  v13 = 1;
  v19 = v3 & 1;
  v18 = v4;
  v17 = v5;
  v16 = *(v4 + 16);

  v14 = sub_268F99214();
  v11 = *(v14 - 8);
  v12 = v14 - 8;
  (*(v11 + 16))(v15, v10);
  (*(v11 + 56))(v15, 0, v13, v14);
  sub_268D40A3C(v15);
  sub_268D54CB4(v15);
}

uint64_t sub_268DFE534(char a1, uint64_t a2, void *a3, void (*a4)(void), uint64_t a5)
{
  v17 = *(a2 + 16);

  v18 = sub_268D415B8();

  if (v18)
  {
    v11 = a1;
  }

  else
  {
    v11 = 0;
  }

  v5 = sub_268DBE6F4();
  v7 = *v5;
  v8 = v5[1];
  v9 = *(v5 + 16);
  v10 = *(a2 + 24);

  sub_268DAAB84(v11 & 1, a3, v7, v8, v9, v10 & 1, a4, a5, sub_268E03730, a2, 0, 1, 0, 0);
  return sub_268CD9A28(sub_268E03730);
}

uint64_t sub_268DFE698(char a1, uint64_t a2)
{
  v11 = *(a2 + 16);

  v12 = sub_268D415B8();

  if (v12)
  {
    v8 = a1;
  }

  else
  {
    v8 = 0;
  }

  sub_268F9B284();
  v2 = sub_268DC7AE8();
  if (v8)
  {
    v6 = *v2;
    MEMORY[0x277D82BE0](*v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v6);
    v7 = *(a2 + 16);

    sub_268D40BF4(1u);
  }

  else
  {
    v4 = *v2;
    MEMORY[0x277D82BE0](*v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v4);
    v5 = *(a2 + 16);

    sub_268D416A4(a1 & 1);
  }
}

uint64_t sub_268DFE8BC(void *a1, void (*a2)(id), uint64_t a3)
{
  v50 = [a1 settingMetadata];
  if (v50 && (v45 = [v50 targetApp], *&v3 = MEMORY[0x277D82BD8](v50).n128_u64[0], v45))
  {
    v4 = [v45 bundleIdentifier];
    v44 = v4;
    if (v4)
    {
      v40 = sub_268F9AE24();
      v41 = v5;
      MEMORY[0x277D82BD8](v44);
      v42 = v40;
      v43 = v41;
    }

    else
    {
      v42 = 0;
      v43 = 0;
    }

    MEMORY[0x277D82BD8](v45);
    v38 = v42;
    v39 = v43;
  }

  else
  {
    v38 = 0;
    v39 = 0;
  }

  if (v39)
  {
    v6 = sub_268DFFEC0(v38, v39);
    if ((v6 & 1) == 0)
    {
      sub_268F9B284();
      v7 = sub_268DC7AE8();
      v36 = *v7;
      MEMORY[0x277D82BE0](*v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      sub_268F9B734();
      sub_268F9AC14();

      MEMORY[0x277D82BD8](v36);

      sub_268E948B8();
      v37 = sub_268DAB158();

      a2(v37);
      MEMORY[0x277D82BD8](v37);
    }
  }

  sub_268F9B284();
  v9 = sub_268DC7AE8();
  v33 = *v9;
  MEMORY[0x277D82BE0](*v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v34 = v10;
  v35 = [a1 settingMetadata];
  if (v35)
  {
    v32 = [v35 targetApp];
    *&v11 = MEMORY[0x277D82BD8](v35).n128_u64[0];
    if (v32)
    {
      v12 = [v32 bundleIdentifier];
      v31 = v12;
      if (v12)
      {
        sub_268F9AE24();
        MEMORY[0x277D82BD8](v31);
      }

      MEMORY[0x277D82BD8](v32);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC8F0, qword_268F9F830);
  v29 = sub_268F9AE64();
  v30 = v13;
  v34[3] = MEMORY[0x277D837D0];
  v34[4] = sub_268CDD224();
  *v34 = v29;
  v34[1] = v30;
  sub_268CD0F7C();
  sub_268F9AC14();

  [a1 binaryValue];
  type metadata accessor for INBinarySettingValue();
  sub_268CD925C();
  if (sub_268F9B754())
  {
    sub_268F9B284();
    v14 = sub_268DC7AE8();
    v26 = *v14;
    MEMORY[0x277D82BE0](*v14);
    sub_268F9B734();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v26);
    v27 = *(v49 + 16);

    v28 = sub_268D415B8();

    if ((v28 & 1) == 0)
    {
      sub_268F9B284();
      v15 = sub_268DC7AE8();
      v24 = *v15;
      MEMORY[0x277D82BE0](*v15);
      sub_268F9B734();
      sub_268F9AC14();

      MEMORY[0x277D82BD8](v24);
      v25 = *(v49 + 16);

      sub_268D416A4(1);
    }

    v22 = *(v49 + 16);

    v23 = sub_268D41900(0);

    if ((v23 & 1) == 0)
    {
      sub_268F9B284();
      v16 = sub_268DC7AE8();
      v19 = *v16;
      MEMORY[0x277D82BE0](*v16);
      sub_268F9B734();
      sub_268F9AC14();

      MEMORY[0x277D82BD8](v19);
      v20 = *(v49 + 16);

      sub_268D41B68(1, 0);

      v21 = *(v49 + 16);

      sub_268D409D0();
    }
  }

  v18 = *(v49 + 16);

  MEMORY[0x277D82BE0](a1);

  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = v49;
  v17[4] = a2;
  v17[5] = a3;
  sub_268D40874(sub_268E03034, v17);
}

uint64_t sub_268DFF1CC(int a1, _BYTE *a2, _BYTE *a3, _BYTE *a4, _BYTE *a5)
{
  v36 = a1 & 1;
  v35[4] = a2;
  v35[3] = a3;
  v35[1] = a4;
  v35[2] = a5;
  v30 = sub_268F9B284();
  v5 = sub_268DC7AE8();
  v29 = *v5;
  MEMORY[0x277D82BE0](*v5);
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  v26 = swift_allocObject();
  *(v26 + 16) = 4;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_268CD9ADC;
  *(v22 + 24) = v21;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_268CD9AE8;
  *(v23 + 24) = v22;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_268CD9AF4;
  *(v24 + 24) = v23;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_268CD9B00;
  *(v27 + 24) = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC960, &unk_268F9FB90);
  sub_268F9B734();
  v28 = v6;

  *v28 = sub_268CD7600;
  v28[1] = v25;

  v28[2] = sub_268CD7600;
  v28[3] = v26;

  v28[4] = sub_268CD9B0C;
  v28[5] = v27;
  sub_268CD0F7C();

  if (os_log_type_enabled(v29, v30))
  {
    buf = sub_268F9B3A4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
    v14 = sub_268CD5448(0);
    v15 = sub_268CD5448(0);
    v35[0] = buf;
    v34 = v14;
    v33 = v15;
    sub_268CD549C(0, v35);
    sub_268CD549C(1, v35);
    v31 = sub_268CD7600;
    v32 = v25;
    sub_268CD54B0(&v31, v35, &v34, &v33);
    v31 = sub_268CD7600;
    v32 = v26;
    sub_268CD54B0(&v31, v35, &v34, &v33);
    v31 = sub_268CD9B0C;
    v32 = v27;
    sub_268CD54B0(&v31, v35, &v34, &v33);
    _os_log_impl(&dword_268CBE000, v29, v30, "SetAnnounceNotificationsHandler | CarPlay temporary disabled: %{BOOL}d.", buf, 8u);
    sub_268CD54FC(v14);
    sub_268CD54FC(v15);
    sub_268F9B384();
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v29);
  v7 = sub_268DBE6F4();
  v9 = *v7;
  v10 = v7[1];
  v11 = *(v7 + 16);
  v12 = a3[24];

  sub_268DAAB84((a1 ^ 1) & 1, a2, v9, v10, v11, v12 & 1, a4, a5, sub_268E03670, a3, 0, 1, 0, 0);
  return sub_268CD9A28(sub_268E03670);
}

uint64_t sub_268DFF7B8(char a1, uint64_t a2)
{
  v27 = a1 & 1;
  v26[1] = a2;
  v21 = sub_268F9B284();
  v2 = sub_268DC7AE8();
  v20 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  v17 = swift_allocObject();
  *(v17 + 16) = 4;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_268E03698;
  *(v13 + 24) = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_268CD9AE8;
  *(v14 + 24) = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_268CD9AF4;
  *(v15 + 24) = v14;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_268CD9B00;
  *(v18 + 24) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC960, &unk_268F9FB90);
  sub_268F9B734();
  v19 = v3;

  *v19 = sub_268CD7600;
  v19[1] = v16;

  v19[2] = sub_268CD7600;
  v19[3] = v17;

  v19[4] = sub_268CD9B0C;
  v19[5] = v18;
  sub_268CD0F7C();

  if (os_log_type_enabled(v20, v21))
  {
    buf = sub_268F9B3A4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
    v7 = sub_268CD5448(0);
    v8 = sub_268CD5448(0);
    v26[0] = buf;
    v25 = v7;
    v24 = v8;
    sub_268CD549C(0, v26);
    sub_268CD549C(1, v26);
    v22 = sub_268CD7600;
    v23 = v16;
    sub_268CD54B0(&v22, v26, &v25, &v24);
    if (v10)
    {

      __break(1u);
    }

    else
    {
      v22 = sub_268CD7600;
      v23 = v17;
      sub_268CD54B0(&v22, v26, &v25, &v24);
      v22 = sub_268CD9B0C;
      v23 = v18;
      sub_268CD54B0(&v22, v26, &v25, &v24);
      _os_log_impl(&dword_268CBE000, v20, v21, "SetAnnounceNotificationsHandler | CarPlay calling temporarily disabled with %{BOOL}d.", buf, 8u);
      sub_268CD54FC(v7);
      sub_268CD54FC(v8);
      sub_268F9B384();
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v20);
  v5 = *(a2 + 16);

  sub_268D407F4((a1 ^ 1) & 1);
}

uint64_t sub_268DFFD18(void *a1, void (*a2)(void), uint64_t a3)
{
  v7 = *(v3 + 16);

  v8 = sub_268D41900(1);

  v4 = sub_268DBE6F4();
  v10 = *v4;
  v11 = v4[1];
  v12 = *(v4 + 16);
  v13 = *(v6 + 24);

  sub_268DAAB84(v8 & 1, a1, v10, v11, v12, v13 & 1, a2, a3, sub_268E0304C, v6, 0, 1, 0, 0);
  return sub_268CD9A28(sub_268E0304C);
}

uint64_t sub_268DFFE44(char a1, uint64_t a2)
{
  v4 = *(a2 + 16);

  sub_268D41B68(a1 & 1, 1);
}

uint64_t sub_268DFFEC0(uint64_t a1, uint64_t a2)
{
  v2 = sub_268DFCAF8();
  v4 = *v2;
  v7 = v2[1];

  v8 = MEMORY[0x26D62DB50](v4, v7, a1, a2);

  return v8 & 1;
}

uint64_t sub_268DFFF40(void *a1)
{
  v31 = 0;
  v28 = 0;
  v32 = a1;
  v1 = sub_268DFCCB8();
  v20 = *v1;
  v21 = v1[1];

  v23 = [a1 settingMetadata];
  if (v23 && (v19 = [v23 targetDevice], *&v2 = MEMORY[0x277D82BD8](v23).n128_u64[0], v19))
  {
    v3 = [v19 deviceName];
    v18 = v3;
    if (v3)
    {
      *&v16 = sub_268F9AE24();
      *(&v16 + 1) = v4;
      MEMORY[0x277D82BD8](v18);
      v17 = v16;
    }

    else
    {
      v17 = 0uLL;
    }

    MEMORY[0x277D82BD8](v19);
    v15 = v17;
  }

  else
  {
    v15 = 0uLL;
  }

  v29[0] = v20;
  v29[1] = v21;
  v30 = v15;
  if (!v21)
  {
    if (!*(&v30 + 1))
    {
      sub_268CD9D30(v29);
      v14 = 1;
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  sub_268D28874(v29, &v26);
  if (!*(&v30 + 1))
  {
    sub_268CD9D30(&v26);
LABEL_17:
    sub_268D28550(v29);
    v14 = 0;
    goto LABEL_19;
  }

  v25 = v26;
  v24 = v30;
  v13 = MEMORY[0x26D62DB50](v26, *(&v26 + 1), v30, *(&v30 + 1));
  sub_268CD9D30(&v24);
  sub_268CD9D30(&v25);
  sub_268CD9D30(v29);
  v14 = v13;
LABEL_19:

  v28 = v14 & 1;
  sub_268F9B284();
  v5 = sub_268DC7AE8();
  v12 = *v5;
  MEMORY[0x277D82BE0](*v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v11 = v6;
  v27 = v14 & 1;
  v9 = sub_268F9AE74();
  v10 = v7;
  v11[3] = MEMORY[0x277D837D0];
  v11[4] = sub_268CDD224();
  *v11 = v9;
  v11[1] = v10;
  sub_268CD0F7C();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v12);
  return v14 & 1;
}

uint64_t sub_268E00334(void *a1)
{
  v31 = 0;
  v28 = 0;
  v32 = a1;
  v1 = sub_268DFCBD8();
  v20 = *v1;
  v21 = v1[1];

  v23 = [a1 settingMetadata];
  if (v23 && (v19 = [v23 targetDevice], *&v2 = MEMORY[0x277D82BD8](v23).n128_u64[0], v19))
  {
    v3 = [v19 deviceName];
    v18 = v3;
    if (v3)
    {
      *&v16 = sub_268F9AE24();
      *(&v16 + 1) = v4;
      MEMORY[0x277D82BD8](v18);
      v17 = v16;
    }

    else
    {
      v17 = 0uLL;
    }

    MEMORY[0x277D82BD8](v19);
    v15 = v17;
  }

  else
  {
    v15 = 0uLL;
  }

  v29[0] = v20;
  v29[1] = v21;
  v30 = v15;
  if (!v21)
  {
    if (!*(&v30 + 1))
    {
      sub_268CD9D30(v29);
      v14 = 1;
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  sub_268D28874(v29, &v26);
  if (!*(&v30 + 1))
  {
    sub_268CD9D30(&v26);
LABEL_17:
    sub_268D28550(v29);
    v14 = 0;
    goto LABEL_19;
  }

  v25 = v26;
  v24 = v30;
  v13 = MEMORY[0x26D62DB50](v26, *(&v26 + 1), v30, *(&v30 + 1));
  sub_268CD9D30(&v24);
  sub_268CD9D30(&v25);
  sub_268CD9D30(v29);
  v14 = v13;
LABEL_19:

  v28 = v14 & 1;
  sub_268F9B284();
  v5 = sub_268DC7AE8();
  v12 = *v5;
  MEMORY[0x277D82BE0](*v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v11 = v6;
  v27 = v14 & 1;
  v9 = sub_268F9AE74();
  v10 = v7;
  v11[3] = MEMORY[0x277D837D0];
  v11[4] = sub_268CDD224();
  *v11 = v9;
  v11[1] = v10;
  sub_268CD0F7C();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v12);
  return v14 & 1;
}

uint64_t sub_268E00728(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v115 = a1;
  v131 = a2;
  v132 = a3;
  v116 = a4;
  v117 = a5;
  v106 = "SetAnnounceNotificationsHandler marking notifications user default for application disablement";
  v107 = "SetAnnounceNotificationsHandler handling mutation of app based feature for date %@";
  v108 = sub_268E03074;
  v148 = 0;
  v147 = 0;
  v145 = 0;
  v146 = 0;
  v143 = 0;
  v144 = 0;
  v142 = 0;
  v141 = 0;
  v136 = 0;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC390, &qword_268FA32F0);
  v109 = (*(*(v118 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v118);
  v110 = &v52 - v109;
  v111 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v52 - v109);
  v112 = &v52 - v111;
  v113 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v52 - v111);
  v114 = &v52 - v113;
  v126 = sub_268F99214();
  v124 = *(v126 - 8);
  v125 = v126 - 8;
  v120 = *(v124 + 64);
  v119 = (v120 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v118);
  v121 = &v52 - v119;
  v122 = (v120 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v123 = &v52 - v122;
  v148 = &v52 - v122;
  v147 = v9;
  v145 = v10;
  v146 = v11;
  v143 = v12;
  v144 = v13;
  v142 = v5;
  v127 = swift_allocBox();
  v128 = v14;
  v141 = v14;
  v129 = *(v124 + 56);
  v130 = v124 + 56;
  v129(v14, 1, 1, v126);
  v133 = *(v5 + 16);

  v134 = sub_268D48AD4(v131, v132);

  if ((v134 & 1) == 0)
  {

    v102 = sub_268E948B8();
    v103 = v15;
    v104 = sub_268DAB158();

    (v116)(v104);
    MEMORY[0x277D82BD8](v104);
  }

  v17 = [v115 binaryValue];
  v99 = &v140;
  v140 = v17;
  v97 = &v139;
  v139 = 2;
  v98 = type metadata accessor for INBinarySettingValue();
  v100 = sub_268CD925C();
  v101 = sub_268F9B754();
  MEMORY[0x277D82BE0](v115);
  if (v101)
  {
    v135 = [v115 temporalEventTrigger];
    v96 = v135 != 0;
    v94 = v96;
    sub_268D35038(&v135);
    v95 = v94;
  }

  else
  {
    v95 = 0;
  }

  v93 = v95;
  *&v18 = MEMORY[0x277D82BD8](v115).n128_u64[0];
  if (v93)
  {
    v92 = [v115 temporalEventTrigger];
    if (v92)
    {
      v91 = v92;
      v88 = v92;
      v89 = [v92 dateComponentsRange];
      *&v19 = MEMORY[0x277D82BD8](v88).n128_u64[0];
      v90 = [v89 endDate];
      if (v90)
      {
        v87 = v90;
        v86 = v90;
        sub_268F991E4();
        (*(v124 + 32))(v112, v121, v126);
        v129(v112, 0, 1, v126);
        MEMORY[0x277D82BD8](v86);
      }

      else
      {
        v129(v112, 1, 1, v126);
      }

      sub_268E02F0C(v112, v114);
      v20 = MEMORY[0x277D82BD8](v89);
    }

    else
    {
      v129(v114, 1, 1, v126);
    }

    if ((*(v124 + 48))(v114, 1, v126, v20) == 1)
    {
      sub_268D54CB4(v114);

      v83 = sub_268E948B8();
      v84 = v21;
      v85 = sub_268DAB158();

      (v116)(v85);
      MEMORY[0x277D82BD8](v85);
    }

    (*(v124 + 32))(v123, v114, v126);
    (*(v124 + 16))(v110, v123, v126);
    v129(v110, 0, 1, v126);
    sub_268E030AC(v110, v128);
    (*(v124 + 8))(v123, v126);
  }

  v138 = [v115 binaryValue];
  v137 = 2;
  if (sub_268F9B754())
  {
    v78 = sub_268F9B284();
    v80 = *sub_268DC7AE8();
    MEMORY[0x277D82BE0](v80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v79 = sub_268F9B734();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v80);
    v81 = *(v105 + 32);

    v82 = sub_268F23C10();

    if (v82)
    {
      v77 = v82;
      v76 = v82;
      v22 = sub_268F88988();
      v73 = *v22;
      v74 = v22[1];

      v75 = sub_268F9AE14();

      [v76 setBool:1 forKey:v75];
      MEMORY[0x277D82BD8](v75);
      MEMORY[0x277D82BD8](v76);
    }
  }

  v68 = sub_268F9B284();
  v70 = *sub_268DC7AE8();
  MEMORY[0x277D82BE0](v70);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v66 = sub_268F9B734();
  v64 = v23;
  sub_268D54B8C(v128, v110);
  v62 = sub_268F9AE64();
  v63 = v24;
  v64[3] = MEMORY[0x277D837D0];
  v25 = sub_268CDD224();
  v26 = v62;
  v27 = v63;
  v28 = v64;
  v29 = v25;
  v30 = v66;
  v67 = v29;
  v64[4] = v29;
  *v28 = v26;
  v28[1] = v27;
  sub_268CD0F7C();
  v69 = v30;
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v70);
  v71 = *(v105 + 16);

  v72 = sub_268D415B8();

  v136 = v72 & 1;
  if (v72)
  {
    v59 = sub_268F9B284();
    v61 = *sub_268DC7AE8();
    MEMORY[0x277D82BE0](v61);
    v58 = sub_268F9B734();
    v57 = v31;
    sub_268D54B8C(v128, v110);
    v32 = sub_268F9AE64();
    v33 = v67;
    v34 = v57;
    v35 = v32;
    v36 = v58;
    v57[3] = MEMORY[0x277D837D0];
    v34[4] = v33;
    *v34 = v35;
    v34[1] = v37;
    sub_268CD0F7C();
    v60 = v36;
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v61);
    sub_268D54B8C(v128, v110);
    sub_268E017D0(v115, v131, v132, v110, v116, v117);
    sub_268D54CB4(v110);
  }

  else
  {
    v38 = sub_268DBE6F4();
    v52 = *v38;
    v53 = v38[1];
    v54 = *(v38 + 16);
    v55 = *(v105 + 24);

    v39 = swift_allocObject();
    v40 = v131;
    v41 = v132;
    v42 = v72;
    v43 = v115;
    v44 = v52;
    v45 = v53;
    v46 = v54;
    v47 = v55;
    v48 = v116;
    v49 = v117;
    v50 = v108;
    v51 = v127;
    v39[2] = v105;
    v39[3] = v40;
    v39[4] = v41;
    v39[5] = v51;
    v56 = v39;
    sub_268DAAB84(v42 & 1, v43, v44, v45, v46, v47 & 1, v48, v49, v50, v39, 0, 1, 0, 0);
    sub_268CD9A28(v108);
  }
}

uint64_t sub_268E0164C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = a1;
  v13 = a2;
  v16 = a3;
  v17 = a4;
  v10 = a5;
  v26 = 0;
  v25 = 0;
  v23 = 0;
  v24 = 0;
  v22 = 0;
  v11 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC390, &qword_268FA32F0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10);
  v19 = &v10 - v11;
  v26 = v5 & 1;
  v25 = v6;
  v23 = v7;
  v24 = v8;
  v14 = swift_projectBox();
  v22 = v14;
  v12 = *(v13 + 16);

  sub_268D416A4(v18 & 1);

  v20 = *(v13 + 16);

  v15 = &v21;
  swift_beginAccess();
  sub_268D54B8C(v14, v19);
  swift_endAccess();
  sub_268D3F344(v16, v17, v18 & 1, v19);
  sub_268D54CB4(v19);
}

uint64_t sub_268E017D0(void *a1, uint64_t a2, uint64_t a3, const void *a4, void (*a5)(void), uint64_t a6)
{
  v55 = a1;
  v49 = a2;
  v50 = a3;
  v46 = a4;
  v60 = a5;
  v61 = a6;
  v42 = "SetAnnounceNotificationsHandler announce messages for app status: %@";
  v63 = sub_268E032D4;
  v73 = 0;
  v71 = 0;
  v72 = 0;
  v70 = 0;
  v68 = 0;
  v69 = 0;
  v67 = 0;
  v66 = 0;
  v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC390, &qword_268FA32F0) - 8);
  v47 = v32;
  v48 = *(v32 + 64);
  v33 = (v48 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v55);
  v52 = &v31 - v33;
  v73 = v7;
  v71 = v8;
  v72 = v9;
  v70 = v10;
  v68 = v11;
  v69 = v12;
  v67 = v6;
  v35 = *(v6 + 16);

  v13 = sub_268D40380(v49, v50);
  v14 = v34;
  v62 = v13;

  v54 = 1;
  v36 = 1;
  v66 = v62 & 1;
  v43 = sub_268F9B284();
  v45 = *sub_268DC7AE8();
  MEMORY[0x277D82BE0](v45);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v41 = sub_268F9B734();
  v39 = v15;
  v65 = v62 & v36;
  v37 = sub_268F9AE74();
  v38 = v16;
  v39[3] = MEMORY[0x277D837D0];
  v17 = sub_268CDD224();
  v18 = v37;
  v19 = v38;
  v20 = v39;
  v21 = v17;
  v22 = v41;
  v39[4] = v21;
  *v20 = v18;
  v20[1] = v19;
  sub_268CD0F7C();
  v44 = v22;
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v45);
  v23 = sub_268DBE6F4();
  v56 = *v23;
  v57 = v23[1];
  v58 = *(v23 + 16);
  v59 = *(v14 + 24);

  sub_268D54B8C(v46, v52);
  v51 = (*(v47 + 80) + 40) & ~*(v47 + 80);
  v24 = swift_allocObject();
  v25 = v49;
  v26 = v50;
  v27 = v51;
  v28 = v24;
  v29 = v52;
  v53 = v28;
  v28[2] = v14;
  v28[3] = v25;
  v28[4] = v26;
  sub_268E02F0C(v29, v28 + v27);
  v64 = v53;
  sub_268DAAB84(v62 & 1, v55, v56, v57, v58, v59 & 1, v60, v61, v63, v53, 0, v54, 0, 0);
  return sub_268CD9A28(v63);
}

uint64_t sub_268E01BE8(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a2 + 16);

  sub_268D3F344(a3, a4, a1 & 1, a5);
}

uint64_t sub_268E01C88(uint64_t a1, uint64_t a2)
{
  v3 = sub_268DC7AE8();
  v5 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268F9B284();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v5);
  v9 = *(v2 + 16);

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_268D40DFC(sub_268E03374, v8);
}

uint64_t sub_268E01E00(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v27[0] = 0;
  v27[1] = 0;
  v31 = a1;
  v29 = a2;
  v30 = a3;
  v28 = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC560, qword_268FA0000);
  sub_268E03530();
  sub_268F9B254();
  for (i = 0; ; i = v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DCEF8, &unk_268FA2918);
    sub_268F9B564();
    if (!v26)
    {
      break;
    }

    v3 = sub_268F9AEF4();
    v22 = MEMORY[0x26D62DB50](v25, v26, v3);

    if (v22)
    {
      sub_268E03388();
      if (sub_268F9B754())
      {
        v21 = 1;
      }

      else
      {
        if (sub_268F9B754())
        {
          v20 = 1;
        }

        else
        {
          v20 = sub_268F9B754();
        }

        if (v20)
        {
          v19 = 3;
        }

        else
        {
          v19 = 1;
        }

        v21 = v19;
      }

      v28 = v21;
      v18 = v21;
    }

    else
    {
      v18 = i;
    }

    v4 = sub_268F9AEF4();
    v17 = MEMORY[0x26D62DB50](v25, v26, v4);

    if (v17)
    {
      sub_268E03388();
      if (sub_268F9B754())
      {
        v16 = 2;
      }

      else
      {
        if (sub_268F9B754())
        {
          v15 = 1;
        }

        else
        {
          v15 = sub_268F9B754();
        }

        if (v15)
        {
          v14 = 3;
        }

        else
        {
          v14 = 2;
        }

        v16 = v14;
      }

      v28 = v16;
      v13 = v16;
    }

    else
    {
      v13 = v18;
    }
  }

  sub_268CD7930(v27);
  v5 = sub_268DC7AE8();
  v12 = *v5;
  MEMORY[0x277D82BE0](*v5);
  sub_268F9B284();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v11 = v6;
  v9 = sub_268DFC86C();
  v10 = v7;
  v11[3] = MEMORY[0x277D837D0];
  v11[4] = sub_268CDD224();
  *v11 = v9;
  v11[1] = v10;
  sub_268CD0F7C();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v12);

  a2(i);
}

uint64_t sub_268E02374()
{
  v1[4] = v0;
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = v0;
  v2 = v1[2];
  return MEMORY[0x2822009F8](sub_268E023B0, 0);
}

uint64_t sub_268E023B0()
{
  v8 = v0[4];
  v0[2] = v0;
  v1 = sub_268DC7AE8();
  v7 = *v1;
  MEMORY[0x277D82BE0](*v1);
  sub_268F9B284();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v7);
  v10 = sub_268F9AEF4();
  v11 = v2;
  v0[5] = v2;

  v3 = *(MEMORY[0x277D85A40] + 4);
  v4 = swift_task_alloc();
  v9[6] = v4;
  *v4 = v9[2];
  v4[1] = sub_268E02574;
  v5 = v9[4];

  return MEMORY[0x2822008A0](v9 + 8, 0, 0, v10, v11, sub_268E03380, v5, &unk_287990B00);
}

uint64_t sub_268E02574()
{
  v9 = *v1;
  v2 = *(*v1 + 48);
  v9[2] = *v1;
  v10 = v9 + 2;
  v9[7] = v0;

  if (v0)
  {
    v6 = *v10;
    v5 = sub_268E02748;
  }

  else
  {
    v8 = v9[5];
    v3 = v9[4];

    v4 = *v10;
    v5 = sub_268E02700;
  }

  return MEMORY[0x2822009F8](v5, 0);
}

uint64_t sub_268E02700()
{
  *(v0 + 16) = v0;
  v1 = *(v0 + 64);
  v2 = *(*(v0 + 16) + 8);
  v3 = *(v0 + 16);
  return v2(v1);
}

uint64_t sub_268E02748()
{
  v8 = v0[5];
  v1 = v0[4];
  v0[2] = v0;

  v3 = v0;
  v4 = *(v0[2] + 8);
  v5 = v0[2];
  v6 = v3[7];

  return v4(v2);
}

uint64_t sub_268E027F4(uint64_t a1, uint64_t a2)
{
  v5[1] = a1;
  v14 = sub_268E034AC;
  v17 = 0;
  v16 = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DCEE8, &unk_268FA2908);
  v9 = *(v13 - 8);
  v10 = v13 - 8;
  v7 = v9;
  v8 = *(v9 + 64);
  v6 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v13);
  v12 = v5 - v6;
  v17 = v3;
  v16 = a2;
  (*(v9 + 16))();
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v15 = swift_allocObject();
  (*(v9 + 32))(v15 + v11, v12, v13);
  sub_268E01C88(v14, v15);
}

uint64_t sub_268E0299C()
{
  v0 = sub_268DC7AE8();
  v7 = *v0;
  MEMORY[0x277D82BE0](*v0);
  sub_268F9B284();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v6 = v1;
  v4 = sub_268DFC86C();
  v5 = v2;
  v6[3] = MEMORY[0x277D837D0];
  v6[4] = sub_268CDD224();
  *v6 = v4;
  v6[1] = v5;
  sub_268CD0F7C();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DCEE8, &unk_268FA2908);
  return sub_268F9B0C4();
}

uint64_t sub_268E02B0C()
{
  sub_268F9B734();
  *v0 = "defaultMode";
  *(v0 + 8) = 11;
  *(v0 + 16) = 2;
  *(v0 + 24) = "headphonesConnected";
  *(v0 + 32) = 19;
  *(v0 + 40) = 2;
  *(v0 + 48) = "carplayConnected";
  *(v0 + 56) = 16;
  *(v0 + 64) = 2;
  *(v0 + 72) = "carplayAndHeadphonesConnected";
  *(v0 + 80) = 29;
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

uint64_t sub_268E02DF0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = sub_268E02B0C();
  *a2 = result;
  return result;
}

uint64_t sub_268E02E28@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  result = sub_268DFC86C();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_268E02E80(char a1)
{
  v2 = sub_268F99214();
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1 + ((*(*(v2 - 8) + 80) + 48) & ~*(*(v2 - 8) + 80));

  return sub_268DFE138(a1 & 1, v3, v4, v5, v6, v7);
}

void *sub_268E02F0C(const void *a1, void *a2)
{
  v6 = sub_268F99214();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC390, &qword_268FA32F0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

void *sub_268E030AC(const void *a1, void *a2)
{
  v7 = sub_268F99214();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if ((v9)(a2, 1))
  {
    if (v9(a1, 1, v7))
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC390, &qword_268FA32F0);
      memcpy(a2, a1, *(*(v3 - 8) + 64));
    }

    else
    {
      (*(v8 + 32))(a2, a1, v7);
      (*(v8 + 56))(a2, 0, 1, v7);
    }
  }

  else if (v9(a1, 1, v7))
  {
    (*(v8 + 8))(a2, v7);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC390, &qword_268FA32F0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 40))(a2, a1, v7);
  }

  return a2;
}

unint64_t sub_268E03388()
{
  v2 = qword_2802DCED8;
  if (!qword_2802DCED8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCED8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E03430()
{
  v2 = qword_2802DCEE0;
  if (!qword_2802DCEE0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCEE0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268E034AC()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DCEE8, &unk_268FA2908) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_268E0299C();
}

unint64_t sub_268E03530()
{
  v2 = qword_2802DCEF0;
  if (!qword_2802DCEF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DC560, qword_268FA0000);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCEF0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268E03634@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_268E03758()
{
  type metadata accessor for SetHeySiriHandler();
  v2 = sub_268CDC590();
  v0 = sub_268CDD6D4();
  result = sub_268CDC5C0(v2, v0 & 1);
  qword_2802F1440 = result;
  return result;
}

uint64_t *sub_268E037D4()
{
  if (qword_2802DB570 != -1)
  {
    swift_once();
  }

  return &qword_2802F1440;
}

uint64_t sub_268E03834()
{
  v1 = *sub_268E037D4();

  return v1;
}

uint64_t sub_268E03864(void *a1, void (*a2)(id), uint64_t a3)
{
  sub_268F9B284();
  v3 = sub_268DC7AE8();
  v17 = *v3;
  MEMORY[0x277D82BE0](*v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14();

  v19 = [a1 settingMetadata];
  if (v19 && (v13 = [v19 targetDevice], *&v4 = MEMORY[0x277D82BD8](v19).n128_u64[0], v13))
  {
    [v13 deviceCategory];
    MEMORY[0x277D82BD8](v13);
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    v11 = 0;
  }

  else
  {
    type metadata accessor for INDeviceCategory();
    sub_268CD7818();
    v11 = sub_268F9AE04();
  }

  if (v11)
  {
    v8 = *(v16 + 16);

    MEMORY[0x277D82BE0](a1);

    v7 = swift_allocObject();
    v7[2] = a2;
    v7[3] = a3;
    v7[4] = a1;
    v7[5] = v16;
    sub_268D3618C(sub_268E03F5C);
  }

  else
  {
    sub_268F9B284();
    v5 = sub_268DC7AE8();
    v9 = *v5;
    MEMORY[0x277D82BE0](*v5);
    sub_268F9B734();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v9);

    sub_268E948B8();
    v10 = sub_268DAB158();

    a2(v10);
    MEMORY[0x277D82BD8](v10);
  }
}

uint64_t sub_268E03CA8(char a1, void (*a2)(void), uint64_t a3, void *a4, uint64_t a5)
{
  sub_268F9B284();
  v5 = sub_268DC7AE8();
  v22 = *v5;
  MEMORY[0x277D82BE0](*v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v21 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DCF00, qword_268FA2988);
  v19 = sub_268F9AE64();
  v20 = v7;
  v21[3] = MEMORY[0x277D837D0];
  v21[4] = sub_268CDD224();
  *v21 = v19;
  v21[1] = v20;
  sub_268CD0F7C();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v22);
  if (a1 == 2)
  {

    v14 = sub_268DA9A7C(7, 0);
    a2();
    MEMORY[0x277D82BD8](v14);
  }

  else
  {
    v8 = sub_268DBE624();
    v10 = *v8;
    v11 = v8[1];
    v12 = *(v8 + 16);
    v13 = *(a5 + 24);

    sub_268DAAB84(a1 & 1, a4, v10, v11, v12, v13 & 1, a2, a3, sub_268E04004, a5, 0, 1, 0, 0);
    return sub_268CD9A28(sub_268E04004);
  }
}

uint64_t sub_268E03F70(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);

  sub_268D361FC();
}

uint64_t sub_268E04070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = a1;
  v14 = a2;
  v10[2] = a3;
  v11 = a4;
  v24 = 0;
  v23 = 0;
  v22 = 0;
  v25 = a3;
  v10[1] = 0;
  v19 = sub_268F996A4();
  v17 = *(v19 - 8);
  v18 = v19 - 8;
  v10[0] = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v20 = v10 - v10[0];
  v24 = v5;
  v23 = v6;
  v8 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v22 = v4;
  v12 = sub_268F996E4();

  v13 = (*(v11 + 24))();
  MEMORY[0x277D82BE0](v14);
  sub_268F99694();
  v21 = sub_268F996D4();
  (*(v17 + 8))(v20, v19);
  return v21;
}

uint64_t sub_268E044C0()
{
  type metadata accessor for SetNumericSettingNLContextProvider();
  result = sub_268D592B0();
  qword_2802F1448 = result;
  return result;
}

uint64_t type metadata accessor for SetNumericSettingNLContextProvider()
{
  v1 = qword_2802DCF08;
  if (!qword_2802DCF08)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t *sub_268E04568()
{
  if (qword_2802DB578 != -1)
  {
    swift_once();
  }

  return &qword_2802F1448;
}

uint64_t sub_268E045C8()
{
  v1 = *sub_268E04568();

  return v1;
}

uint64_t sub_268E045F8(void *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
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

  sub_268E04748(v13, v14, v16);
  v9 = sub_268F999A4();
  (*(*(v9 - 8) + 56))(v16, 0, 1);
  v15(v16);
  sub_268D34AC0(v16);
}

uint64_t sub_268E04748@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v42 = a3;
  v61 = a1;
  v52 = a2;
  v43 = "Forming NL Context update for confirmation. Intent: %@, Update: %@";
  v69 = 0;
  v68 = 0;
  v67 = 0;
  v66 = 0;
  v65 = 0;
  v63 = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC5C8, &qword_268F9F530);
  v44 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v45 = v28 - v44;
  v46 = 0;
  v47 = sub_268F9ACE4();
  v48 = *(v47 - 8);
  v49 = v47 - 8;
  v50 = (*(v48 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v46);
  v51 = v28 - v50;
  v69 = v28 - v50;
  v53 = sub_268F999A4();
  v54 = *(v53 - 8);
  v55 = v53 - 8;
  v57 = *(v54 + 64);
  v56 = (v57 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v61);
  v58 = v28 - v56;
  v59 = (v57 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v60 = v28 - v59;
  v68 = v28 - v59;
  v67 = v5;
  v66 = v6;
  v65 = v7;
  sub_268F99994();
  sub_268F289C0();
  sub_268F99924();
  v62 = [v61 settingMetadata];
  if (v62)
  {
    v41 = v62;
    v40 = v62;
    v63 = v62;
    sub_268E5B124(v45);
    if ((*(v48 + 48))(v45, 1, v47) == 1)
    {
      sub_268D59D2C(v45);
    }

    else
    {
      (*(v48 + 32))(v51, v45, v47);
      v39 = sub_268F9B734();
      (*(v48 + 16))(v8, v51, v47);
      sub_268CD0F7C();
      sub_268F99914();
      (*(v48 + 8))(v51, v47);
    }

    MEMORY[0x277D82BD8](v40);
  }

  v36 = sub_268F9B284();
  v38 = *sub_268DC7DE8();
  MEMORY[0x277D82BE0](v38);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v34 = sub_268F9B734();
  v33 = v9;
  MEMORY[0x277D82BE0](v61);
  v28[1] = &v64;
  v64 = v61;
  v28[0] = sub_268D588E0();
  sub_268DCA900();
  v29 = sub_268F9AE74();
  v30 = v10;
  v31 = MEMORY[0x277D837D0];
  v33[3] = MEMORY[0x277D837D0];
  v11 = sub_268CDD224();
  v12 = v29;
  v13 = v30;
  v14 = v33;
  v15 = v54;
  v16 = v60;
  v17 = v53;
  v18 = v11;
  v19 = v58;
  v32 = v18;
  v33[4] = v18;
  *v14 = v12;
  v14[1] = v13;
  (*(v15 + 16))(v19, v16, v17);
  v20 = sub_268F9AE64();
  v21 = v32;
  v22 = v33;
  v23 = v20;
  v24 = v34;
  v33[8] = v31;
  v22[9] = v21;
  v22[5] = v23;
  v22[6] = v25;
  sub_268CD0F7C();
  v37 = v24;
  sub_268F9AC14();

  v26 = MEMORY[0x277D82BD8](v38);
  return (*(v54 + 32))(v42, v60, v53, v26);
}

uint64_t sub_268E04CF8(void *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v35 = a1;
  v29 = a2;
  v27 = a3;
  v28 = a4;
  v44 = 0;
  v43 = 0;
  v42 = 0;
  v41 = 0;
  v39 = 0;
  v40 = 0;
  v38 = 0;
  v37 = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2B0, &unk_268F9E0C0);
  v17 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v18 = v14 - v17;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC5C8, &qword_268F9F530);
  v19 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v20 = v14 - v19;
  v21 = 0;
  v22 = sub_268F9ACE4();
  v23 = *(v22 - 8);
  v24 = v22 - 8;
  v25 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v21);
  v26 = v14 - v25;
  v44 = v14 - v25;
  v30 = sub_268F999A4();
  v31 = *(v30 - 8);
  v32 = v30 - 8;
  v33 = (*(v31 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v35);
  v34 = v14 - v33;
  v43 = v14 - v33;
  v42 = v7;
  v41 = v8;
  v39 = v9;
  v40 = v10;
  v38 = v4;
  sub_268F99994();
  v36 = [v35 settingMetadata];
  if (v36)
  {
    v16 = v36;
    v15 = v36;
    v37 = v36;
    sub_268E5B124(v20);
    if ((*(v23 + 48))(v20, 1, v22) != 1)
    {
      (*(v23 + 32))(v26, v20, v22);
      v14[1] = sub_268F9B734();
      (*(v23 + 16))(v11, v26, v22);
      sub_268CD0F7C();
      sub_268F99914();

      (*(v31 + 16))(v18, v34, v30);
      (*(v31 + 56))(v18, 0, 1, v30);
      v27(v18);
      sub_268D34AC0(v18);

      (*(v23 + 8))(v26, v22);
      v12 = MEMORY[0x277D82BD8](v15);
      return (*(v31 + 8))(v34, v30, v12);
    }

    sub_268D59D2C(v20);
    MEMORY[0x277D82BD8](v15);
  }

  (*(v31 + 56))(v18, 1, 1, v30);
  v27(v18);
  sub_268D34AC0(v18);

  return (*(v31 + 8))(v34, v30);
}

uint64_t sub_268E051EC()
{
  inited = swift_initClassMetadata2();
  if (!inited)
  {
    return 0;
  }

  return inited;
}

uint64_t *sub_268E05278()
{
  if (qword_280FE47A0 != -1)
  {
    swift_once();
  }

  return &qword_280FE8168;
}

uint64_t sub_268E052D8()
{
  type metadata accessor for GetCellularDataHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_280FE8168 = result;
  return result;
}

uint64_t sub_268E05340()
{
  v1 = *sub_268E05278();

  return v1;
}

uint64_t sub_268E05370(void *a1, void (*a2)(void), uint64_t a3)
{
  v33 = a3;
  v34 = a2;
  v35 = a1;
  v37 = 0;
  v44 = 0;
  v36 = 0;
  v47 = a1;
  v45 = a2;
  v46 = a3;
  v39 = sub_268F9B284();
  v41 = *sub_268DC7AE8();
  v4 = v41;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v40 = sub_268F9B734();
  sub_268F9AC14();

  v42 = *(v3 + 16);

  v43 = sub_268D38D28();

  if (v43)
  {
    v5 = v36;
    v6 = sub_268DBB454();
    v25 = *v6;
    v26 = v6[1];
    v27 = *(v6 + 16);
    v28 = *sub_268DC7AE8();
    v24 = v28;
    v7 = v28;
    v29 = *(v32 + 24);

    v8 = v35;

    v30 = v19;
    MEMORY[0x28223BE20](v25);
    v18[2] = v9;
    v18[3] = v35;
    v18[4] = v34;
    v18[5] = v10;
    sub_268DB944C(v11, v12, v13, v14, v15, sub_268E059B0, v18, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78]);
    v31 = v5;

    return v31;
  }

  else
  {
    v19[3] = sub_268F9B294();
    v21 = *sub_268DC7AE8();
    v16 = v21;
    v20 = sub_268F9B734();
    sub_268F9AC14();

    sub_268CDD0DC();
    v22 = sub_268CD42AC(6, 0);
    v34();

    return v36;
  }
}

double sub_268E056AC(uint64_t a1, void *a2, void (*a3)(id))
{
  v15 = *(a1 + 16);

  v19 = sub_268D38D64();

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

uint64_t *sub_268E05A08()
{
  if (qword_280FE64A8 != -1)
  {
    swift_once();
  }

  return &qword_280FE8358;
}

uint64_t sub_268E05A68()
{
  type metadata accessor for GetHeySiriHandler();
  v2 = sub_268CDC590();
  v0 = sub_268CDD6D4();
  result = sub_268CDC5C0(v2, v0 & 1);
  qword_280FE8358 = result;
  return result;
}

uint64_t sub_268E05AE4()
{
  v1 = *sub_268E05A08();

  return v1;
}

void sub_268E05B14(void *a1, void (*a2)(id), uint64_t a3)
{
  v46 = a3;
  v47 = a2;
  v54 = a1;
  v49 = 0;
  v63 = 0;
  v48 = 0;
  v66 = a1;
  v64 = a2;
  v65 = a3;
  v51 = sub_268F9B284();
  v53 = *sub_268DC7AE8();
  v3 = v53;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v52 = sub_268F9B734();
  sub_268F9AC14();

  v55 = [v54 settingMetadata];
  if (v55 && (v44 = v55, v41 = v55, v43 = [v55 targetDevice], v42 = v43, v55, v43))
  {
    v40 = v42;
    v36 = v42;
    v37 = [v42 deviceCategory];

    v38 = v37;
    v39 = 0;
  }

  else
  {
    v38 = 0;
    v39 = 1;
  }

  v33 = v39;
  v34 = v38;
  v35 = &v61;
  v59 = v38;
  v60 = v39 & 1;
  v61 = 6;
  v62 = 0;
  if ((v39 & 1) == 0)
  {
    v57 = v34;
    v58 = v33 & 1;
    if ((v35[1] & 1) == 0)
    {
      v56 = *v35;
      v31 = type metadata accessor for INDeviceCategory();
      sub_268CD7818();
      v32 = sub_268F9AE04();
      goto LABEL_13;
    }

    goto LABEL_15;
  }

  if ((v35[1] & 1) == 0)
  {
LABEL_15:
    v32 = 0;
    goto LABEL_13;
  }

  v32 = 1;
LABEL_13:
  if (v32)
  {
    v6 = v48;
    v7 = sub_268DBBBB4();
    v22 = *v7;
    v18[1] = v7[1];
    v19 = *(v7 + 16);
    v20 = *sub_268DC7AE8();
    v18[0] = v20;
    v8 = v20;
    v21 = *(v45 + 24);

    v9 = v54;
    v23 = v18;
    MEMORY[0x28223BE20](v22);
    v17[2] = v10;
    v17[3] = v47;
    v17[4] = v46;
    v17[5] = v11;
    sub_268DB944C(v12, v13, v14, v15, v16, sub_268E0617C, v17, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78]);
    v24 = v6;

    v30 = v24;
  }

  else
  {
    v25 = sub_268F9B284();
    v27 = *sub_268DC7AE8();
    v4 = v27;
    v26 = sub_268F9B734();
    sub_268F9AC14();

    sub_268E948B8();
    v28 = v5;
    v29 = sub_268E41B70();

    v47(v29);

    v30 = v48;
  }
}

uint64_t sub_268E0608C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a1 + 16);

  MEMORY[0x277D82BE0](a4);
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  sub_268D3618C(sub_268E0660C);
}

double sub_268E061B0(char a1, void (*a2)(void), uint64_t a3, void *a4)
{
  sub_268F9B284();
  v4 = sub_268DC7AE8();
  v27 = *v4;
  MEMORY[0x277D82BE0](*v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v25 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DCF00, qword_268FA2988);
  v23 = sub_268F9AE64();
  v24 = v6;
  v25[3] = MEMORY[0x277D837D0];
  v26 = sub_268CDD224();
  v25[4] = v26;
  *v25 = v23;
  v25[1] = v24;
  sub_268CD0F7C();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v27);
  if (a1 == 2)
  {

    v20 = sub_268E419BC(6);
    a2();
    MEMORY[0x277D82BD8](v20);
  }

  else
  {
    sub_268CDD0DC();
    v18 = sub_268CD42AC(3, 0);
    sub_268CDD140();
    sub_268F9B734();
    v19 = v8;
    v9 = [a4 settingMetadata];
    if (a1)
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }

    *v19 = sub_268E41954(v9, 0, 0, v17, 0, 0);
    sub_268CD0F7C();
    v14 = sub_268F9B004();

    [v18 setSettingResponseDatas_];
    MEMORY[0x277D82BD8](v14);
    sub_268F9B284();
    v10 = sub_268DC7AE8();
    v16 = *v10;
    MEMORY[0x277D82BE0](*v10);
    sub_268F9B734();
    v15 = v11;
    MEMORY[0x277D82BE0](v18);
    sub_268CDD1A4();
    v12 = sub_268F9AE74();
    v15[3] = MEMORY[0x277D837D0];
    v15[4] = v26;
    *v15 = v12;
    v15[1] = v13;
    sub_268CD0F7C();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v16);

    (a2)(v18);

    *&result = MEMORY[0x277D82BD8](v18).n128_u64[0];
  }

  return result;
}

uint64_t SettingsBinarySetting.__allocating_init(settingId:value:)(uint64_t a1, uint64_t a2, int a3)
{
  v11 = a1;
  v12 = a2;
  v16 = a3;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  v20 = 0;
  v13 = 0;
  v9 = *(*(sub_268F9A9C4() - 8) + 64);
  v8 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](0);
  v15 = &v8 - v8;
  v10 = v8;
  MEMORY[0x28223BE20](v3);
  v14 = &v8 - v10;
  v22 = v4;
  v23 = v5;
  v21 = v6 & 1;
  type metadata accessor for SettingsBinarySetting.Builder();

  sub_268F9A9A4();
  sub_268F9A9A4();
  v17 = sub_268F77EB0(v14, v15);
  v18 = sub_268F786D4(v16 & 1);

  v20 = v18;

  v19 = sub_268F787B4(v18);

  v24 = v19;

  return v19;
}

uint64_t sub_268E067CC(uint64_t a1, uint64_t a2, int a3)
{
  v11 = a1;
  v12 = a2;
  v16 = a3;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  v20 = 0;
  v13 = 0;
  v9 = *(*(sub_268F9A9C4() - 8) + 64);
  v8 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](0);
  v15 = &v8 - v8;
  v10 = v8;
  MEMORY[0x28223BE20](v3);
  v14 = &v8 - v10;
  v22 = v4;
  v23 = v5;
  v21 = v6 & 1;
  type metadata accessor for SettingsMultiSetting.Builder();

  sub_268F9A9A4();
  sub_268F9A9A4();
  v17 = sub_268DD78B0(v14, v15);
  v18 = sub_268DD7ADC(v16 & 1);

  v20 = v18;

  v19 = sub_268DD7C30(v18);

  v24 = v19;

  return v19;
}

uint64_t sub_268E0697C@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = *MEMORY[0x277D85DE8];
  v29 = 0;
  v26 = 0;
  v27 = 0;
  v25 = 0;
  v24 = 0;
  v29 = *a1;
  v28 = v29;
  v21 = sub_268E7B768();
  v22 = v2;
  if (v2)
  {
    v26 = v21;
    v27 = v2;
    sub_268E0FA80();
    v18 = sub_268E0AA60(v21, v22);
    v25 = v18;
    v19 = [v18 dictionary];
    if (v19)
    {
      v24 = v19;
      v30 = 0;
      v15 = objc_opt_self();
      MEMORY[0x277D82BE0](v19);
      v23 = 0;
      v17 = [v15 dataWithPropertyList:v19 format:200 options:0 error:&v23];
      v16 = v23;
      MEMORY[0x277D82BE0](v23);
      v3 = v30;
      v30 = v16;
      MEMORY[0x277D82BD8](v3);
      swift_unknownObjectRelease();
      if (v17)
      {
        v13 = sub_268F99184();
        v14 = v4;
        sub_268E0AE14();
        sub_268F99174();
        sub_268D55C74(v13, v14);
        MEMORY[0x277D82BD8](v17);

        sub_268F9A9A4();
        v5 = sub_268F9A9C4();
        (*(*(v5 - 8) + 56))(a2, 0, 1);
      }

      else
      {
        v11 = v30;
        v12 = sub_268F990F4();
        MEMORY[0x277D82BD8](v11);
        swift_willThrow();
        v9 = v12;
        v10 = sub_268F9A9C4();
        (*(*(v10 - 8) + 56))(a2, 1);
      }

      MEMORY[0x277D82BD8](v19);
      MEMORY[0x277D82BD8](v18);
    }

    else
    {
      v7 = sub_268F9A9C4();
      (*(*(v7 - 8) + 56))(a2, 1);
      MEMORY[0x277D82BD8](v18);
    }
  }

  else
  {
    v8 = sub_268F9A9C4();
    result = (*(*(v8 - 8) + 56))(a2, 1);
  }

  *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_268E06D9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  countAndFlagsBits = 0;
  v14 = 0;
  v11 = 0;
  v16 = a1;
  v15 = a1;
  v8 = sub_268CD7620();
  v9._countAndFlagsBits = SettingIntent.settingIdentifier.getter(v8, &protocol witness table for INSetBinarySettingIntent);
  v9._object = v2;
  if (!v2)
  {
    goto LABEL_11;
  }

  countAndFlagsBits = v9._countAndFlagsBits;
  v14 = v2;

  BinarySettingIdentifier.init(rawValue:)(v9);
  if (v12 == 65)
  {

LABEL_11:
    v6 = sub_268F9A9C4();
    return (*(*(v6 - 8) + 56))(a2, 1);
  }

  v11 = v12;
  v10 = v12;
  SettingIntent.deviceCategory.getter(v8, &protocol witness table for INSetBinarySettingIntent);
  if (v3)
  {
    sub_268E06FB0(&v10, 0, 1, a2);
  }

  else
  {
    sub_268CD4334();
    sub_268E06FB0(&v10, v4, 0, a2);
  }
}

uint64_t sub_268E06F58@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = 0;
  v5 = *a1;
  sub_268E0FAE4();
  v4 = v5;
  return sub_268E0C410(&v4, a2);
}

uint64_t sub_268E06FB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v21 = a4;
  v24 = a1;
  v22 = a2;
  v23 = a3;
  v32 = "attempting to generate a Direct Invocation Object from BinarySettingIdentifier: %@.";
  v43 = 0;
  v41 = 0;
  v42 = 0;
  v25 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v26 = &v15 - v25;
  v36 = *MEMORY[0x28223BE20](v24);
  v43 = v36;
  v41 = v4;
  v42 = v5 & 1;
  v33 = sub_268F9B284();
  v35 = *sub_268DC9D70();
  MEMORY[0x277D82BE0](v35);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v31 = sub_268F9B734();
  v29 = v6;
  v40[1] = v36;
  v27 = sub_268F9AE64();
  v28 = v7;
  v29[3] = MEMORY[0x277D837D0];
  v8 = sub_268CDD224();
  v9 = v27;
  v10 = v28;
  v11 = v29;
  v12 = v8;
  v13 = v31;
  v29[4] = v12;
  *v11 = v9;
  v11[1] = v10;
  sub_268CD0F7C();
  v34 = v13;
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v35);
  v37 = (v36 - 1);
  switch(v36)
  {
    case 1:
    case 2:
    case 3:
    case 5:
    case 6:
    case 7:
    case 12:
    case 17:
    case 19:
    case 20:
    case 28:
    case 31:
    case 32:
    case 37:
    case 38:
    case 45:
    case 51:
    case 52:
    case 53:
      v38 = v36;
      result = sub_268E0BFA8(&v38, v22, v23 & 1, v21);
      break;
    default:
      v17 = 0;
      sub_268E0FAE4();
      v40[0] = v36;
      sub_268E0C410(v40, v26);
      v18 = sub_268F9A9C4();
      v19 = *(v18 - 8);
      v20 = v18 - 8;
      v16 = (*(v19 + 48))(v26, 1) == 1;
      v15 = v16;
      sub_268D28588(v26);
      if (v15)
      {
        v39 = v36;
        result = sub_268E0BFA8(&v39, v22, v23 & 1, v21);
      }

      else
      {
        result = (*(v19 + 56))(v21, 1, 1, v18);
      }

      break;
  }

  return result;
}